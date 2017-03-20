      program main_photos_interf
      implicit none
      include 'LesHouches.h'
      include 'pwhg_rwl.h'
      character * 100 inputfilename
      logical ok
      integer j,k,l,m,iret
      integer maxev,iun,oun,maxshowerevents
      integer photostrial,photostrialmax
      character * 1000 photos_init_info
      common/si_data/photos_init_info
      real * 8 xphcut
      integer evtnumber,evtphotos
      common/si_event_info/xphcut,evtnumber
      real *8 kt2minqed,vetoscale_qed
      common/showerqed/kt2minqed,vetoscale_qed
      logical not_finite_kin_lh
      logical vetoqed,no_tworadevents,no_ew
      real*8 mc_isr_scale,mc_fsr_scale
      common/mc_scale_lhe/mc_isr_scale,mc_fsr_scale
      real * 8 powheginput
      external powheginput

c Read options from powheg.input 

c Number of events to shower (also open powheg.input file)
      maxshowerevents = powheginput("#SI_maxshowerevents")
      write(*,*) 'SI: maxshowerevents: ', maxshowerevents

c Input file
      call powheginputstring_local('SI_inputfile',inputfilename,'pwgevents.lhe')
      write (*,*) 'SI: inputfilename: ', inputfilename      

c PHOTOS lower cut off parameter
      kt2minqed = powheginput("#SI_kt2minqed")
      if (kt2minqed.le.0d0) kt2minqed  = 0.001d0**2
      write(*,*) 'SI kt2minqed: ', kt2minqed

c Veto QED emissions (to be used if events contain NLO EW corrections)
      no_ew = powheginput("#no_ew").eq.1
      write(*,*) 'SI no_ew: ', no_ew
      if(.not.no_ew) then
         vetoqed=.true.
      else
         vetoqed=.false.
      endif

c Set off the reading of two scales (read traditional events)
      no_tworadevents = powheginput("#SI_no_tworadevents").eq.1
      write(*,*) 'SI no_tworadevents: ', no_tworadevents

c Open file, set number of events to be read (maxev)
c The variable iun is assigned by the opencount_local function
      call opencount_local(inputfilename,maxev,iun)
      if(maxshowerevents.gt.0) maxev=maxshowerevents
      write (*,*) '*** SI: Number of events to be showered: ', maxev

c Open new file to write to
      write (*,*) '*** SI: Opening output file pwgevents_photos.lhe'
      call newunit(oun)
      open(unit=oun,status='replace',file='pwgevents_photos.lhe')

c Read header (fill in general process variables)
      call lhefreadhdr(iun)

c Go back to beginning of file, print header to output file (powheg information, comments)
      call pwhg_io_rewind(iun)
      call readandwrite(iun,oun,'-->')

c Initialize Photos, return initialization information
      photos_init_info = ' '
      call photos_init
      photostrialmax = 20

c Write Photos initialization information in output file
      write(oun,*) '*** SI: Photos initialization information:'
      write(oun,'(a)') trim(photos_init_info)

c Write other remaining header info in output file (up to first event)
      call readandwrite(iun,oun,'<event>')


      if (vetoqed) then 
        write(*,*) '*** SI: Applying independent fortran based veto on PHOTOS'
      else
        write(*,*) '*** SI: No veto will be done on QED emissions'
      endif

      if (no_tworadevents) then 
        write (*,*) '*** SI: Reading only scalup from LHE events'
      endif

c Loop on events 

      write(*,*) '*** SI: Processing events...'
      evtphotos=0
      do l=1,maxev

         mc_isr_scale = 0d0
         mc_fsr_scale = 0d0
         xphcut = 0d0;

c Read event from LHE input file
1       call lhefreadev(iun)

        if(not_finite_kin_lh()) goto 1

        evtnumber=l

c If we are reading "two-rad" events, the scale used for the QED veto must be mc_fsr_scale
        vetoscale_qed = mc_fsr_scale
c If we are reading only one scale from LHE events (scalup), set the scale for the qed veto
c to scalup
         if (no_tworadevents) then
           vetoscale_qed = scalup
         endif         
c keep the values of variables mc_isr_scale and mc_fsr_scale, in order to write them in the output file

c Set infrared cutoff (using kt2minqed variable)
        xphcut = 2d0*sqrt( kt2minqed )/pup(5,3)

c        write(*,*) '*********** SI: event info: ', l, xphcut, scalup, mc_isr_scale, mc_fsr_scale, vetoscale_qed

        photostrial=0

c Run PHOTOS until event ok.
c Photos overwrites the ph_hepevt common block (fills it with photons).
c Must restore it at each loop

15      continue

        call lhuptophhepevt(l)
c$$$c DEBUG STARTS *******************************************
c$$$     write(*,*) '  '
!        write(*,*) ' Incoming Les Houches block for photos ***'
!        call  printleshouches
!        write(*,*) ' End incoming Les Houches block for photos *'
c$$$     write(*,*) '  '
c$$$c DEBUG STARTS *******************************************

c Process by Photos
        call photos_process

c Check if Photo's photons violate scalup veto (only for Powheg events with NLO EW corrections)
        if(vetoqed) then
          call pass_veto(ok)
            if (.not.ok) then
              photostrial=photostrial+1
              if(photostrial.le.photostrialmax) then
                  goto 15
              else
                  write(*,*) '*** SI: rejected event that can not pass the veto'
                  continue
              endif
            endif
        endif

c Copy event from photos hepevt block to the LH block
        call phhepevttolhef
        evtphotos=evtphotos+1
c$$$c DEBUG STARTS *******************************************
c$$$        call checkresmomphhep
c$$$        write(*,*) '  '
c$$$        write(*,*) ' added photons = ',nup-nup0
!             write(*,*) ' Outgoing Les Houches event *******'
!             call printleshouches
!             write(*,*) ' End outgoing Les Houches event  ***'
c$$$        write(*,*) '  '
c$$$c DEBUG ENDS ********************************************

c Print event (particle information) to output file
        call lhefwritev(oun)

c Print extra info into output file
c Reweighting info
        if (rwl_type/=0) then
c          write (*,*) 'SI: found reweighting information, writing into output'
          if (rwl_type==1) then
            write(oun,*)'#rwgt ',rwl_type, rwl_index,rwl_weight,rwl_seed,rwl_n1,rwl_n2
          endif
        endif       
c If we are reading events with two scales, print them at the end of the event into output file
        if (no_tworadevents.eqv..false.) then
          write(oun,230)'#', mc_isr_scale,mc_fsr_scale   !sqrt(mc_tmaxfsr)
 230      format(A1,e16.9,e16.9)
        endif

c Write 'end of event' statement
        write(oun,'(a)') '</event>'

c Write 'end of file' statement
        if (l.eq.maxev) write(oun,'(a)') '</LesHouchesEvents>'

      enddo

      write(*,*) '*** SI: Number of input events: ', maxev
      write(*,*) '*** SI: Number of event processed: ', evtphotos
      write(*,*) '*** SI: Success'

      end


      logical function not_finite_kin_lh()
      implicit none
      include 'LesHouches.h'
      logical pwhg_isfinite
      integer j,mu
      do j=1,nup
         do mu=1,5
            if(.not.pwhg_isfinite(pup(mu,j))) goto 998
         enddo
      enddo
      if(.not.pwhg_isfinite(scalup)) goto 998
      not_finite_kin_lh = .false.
      return
 998  not_finite_kin_lh = .true.
      end


c Copy a LH event to the photos hep common block
      subroutine lhuptophhepevt(n)
      implicit none
      include 'LesHouches.h'
      include 'PhotosHep.h'
      integer n,j,i,nphotons,photon_index(2)
      integer idtmp,mothtmp(2),coltmp(2)
      real*8 ptmp(5)

c     Copying all variables ('up' from LHE block to 'hep' of Photos HEPEVT block)
c     After this the block HEPEVT contains the particles in the same order as the original LHE
c     The daughters are assigned to 0 in the HEP block

c Block with 'PhotosHep' variables 
      nhep=nup
      nevhep=n
      isthep(1:nhep)=istup(1:nup)
      idhep(1:nhep)=idup(1:nup)
      jmohep(1:2,1:nhep)=mothup(1:2,1:nup)
      jdahep(1:2,1:nhep)=0
      phep(1:5,1:nhep)=pup(1:5,1:nup)
c      qedrad(1:nhep)=.true.

c Assign daughters of the resonance

c New code, deals with more than 6 particles in LHE block
c First daughter of particle (3) (resonance, V boson) is the 4th particle (first decay product)
      jdahep(1,3)=4
c If there are "radiated" particles
      if(nup.gt.5) then
        nphotons=0
        photon_index(1)=0
        photon_index(2)=0
c Look for photons daughters of resonance
        do i=6,nup
          if (idhep(i).eq.22.and.jmohep(1,i).eq.3) then
            nphotons=nphotons+1
            photon_index(nphotons)=i
          end if
        enddo
        if (nphotons.eq.0) then
c No photons found: Last daughter of resonance if the second decay product
           jdahep(2,3)=5
c Shift the two decay products to the end of the block
           call shiftatend(4,2)
        elseif (nphotons.eq.1) then
c One photon found
           if (photon_index(1).eq.6) then
c If the photon is located right after the decay products
c Last daughter of resoance is the photon
             jdahep(2,3)=6
c Shift the 3 daughters to the end of the block
             call shiftatend(4,3)
           elseif (photon_index(1).eq.7) then
c If the photon is located after ISR particle (photon or parton)
c Shift last two particles and proceed as in the previous case
             call shiftparticles(6,7)
             jdahep(2,3)=6
             call shiftatend(4,3)
           endif
        elseif (nphotons.eq.2) then
c Two photons found
c Last daughter of resonance is the last photon
          jdahep(2,3)=7
        endif
      else 
c Last daughter of resonance if the 5th particle (second decay product)
         jdahep(2,3)=5
      endif


      end


c     shift the particles j,..,j+n-1 (n=2 or 3) at the end of the list
c     j: first particle to be shifted
c     n: number of particles to be shifted
      subroutine shiftatend(j,n)
      implicit none
      include 'PhotosHep.h'
      integer j,n
      integer k
      integer idtmp(3),isttmp(3),mothtmp(2,3)
      real*8 ptmp(5,3)


c Block with 'PhotosHep' variables
c Assign block to be shifted to temporal variables
      idtmp(1:n)       = idhep(j:j+n-1)
      isttmp(1:n)      = isthep(j:j+n-1)
      mothtmp(1:2,1:n) = jmohep(1:2,j:j+n-1)
      ptmp(1:5,1:n)    = phep(1:5,j:j+n-1)

c Move the particle information at the end of the block (positions j+n to nhep(last particle) ) back to a new position starting from j
      do k=j,nhep-n
         idhep(k)    = idhep(k+n)
         isthep(k)   = isthep(k+n)
         jmohep(:,k) = jmohep(:,k+n)
         phep(:,k)   = phep(:,k+n)
      enddo

c Put the block in the temporal variable at the end of the original block (start at position nhep-n+1 up to nhep)
      idhep(nhep-n+1:nhep)      = idtmp(1:n) 
      isthep(nhep-n+1:nhep)     = isttmp(1:n)  
      jmohep(1:2,nhep-n+1:nhep) = mothtmp(1:2,1:n)
      phep(1:5,nhep-n+1:nhep)   = ptmp(1:5,1:n)  

c Assign daughters of particle 3 (V boson) to last block of particles (the shifted one)
      jdahep(:,3)=(/nhep-n+1,nhep/)


      end


c     shift the particles i and j in the HEP block
      subroutine shiftparticles(i,j)
      implicit none
      include 'PhotosHep.h'

      integer i,j
      integer idtmp,isttmp,mothtmp(2)
      real*8 ptmp(5)

c Block for 'PhotosHep'
c Assign 'particle i' variables to temporal variables
      idtmp            = idhep(i)
      isttmp           = isthep(i)
      mothtmp(1:2)     = jmohep(1:2,i)
      ptmp(1:5)        = phep(1:5,i)

c Move the particle information of position j to position i
         idhep(i)    = idhep(j)
         isthep(i)   = isthep(j)
         jmohep(:,i) = jmohep(:,j)
         phep(:,i)   = phep(:,j)

c Copy temporal variables to position j
         idhep(j)    = idtmp
         isthep(j)   = isttmp
         jmohep(:,j) = mothtmp(:)
         phep(:,j)   = ptmp(:)

      end


c Use the phhep common block to add the photos generated particles
c to the LH common block
      subroutine phhepevttolhef
      implicit none
      include 'LesHouches.h'
      include 'PhotosHep.h'
c Code for 'PhotosHep' block
      integer i,j,mu,nold
      integer idtmp(nhep),icoltmp(2,nhep)
      real*8 ptmp(5,nhep)
      integer index(nhep)
      

c in case no photons were generated by photos:
      if(nhep.eq.nup) return

c photos returns the daughters of the resonance with jmohep(2,x)=0 (last mother)
c we correct it to be equal to jmohep(1,x)
      do j=1,nhep
c if the mother of the current particle is the V boson
         if(jmohep(1,j).eq.3) then
            if(jmohep(2,j).eq.0) jmohep(2,j)= jmohep(1,j)
         endif
      enddo

c Original number of particles in LHE block (before Photos)
      nold=nup
c the new value of nup
      nup=nhep

c auxiliary variables (save the original LHE block)
      idtmp(1:nold)=idup(1:nold)
      ptmp(:,1:nold)=pup(:,1:nold)
      icoltmp(:,1:nold)=icolup(:,1:nold)

c colour index from the resonance onwards set to 0 (to be corrected at the end for partons)
      do i=3,nup
         icolup(:,i)=0
      enddo

c      do i=nold+1,nup
c         icoltmp(:,i)=(/0,0/)
cc colour index for new positions set to 0 (to be corrected at the end for partons)
c         icolup(:,i)=(/0,0/)
c      enddo


c xxup variables are copied from the respective xxhep, except for colour
c Assign status
      istup(1:nup)=isthep(1:nup)
c initial state particles (isthep=2 in photos)
      istup(1)=-1
      istup(2)=-1
c Assign particle ID, mothers and 4-momenta
      idup(1:nup)=idhep(1:nup)
      mothup(1:2,1:nup)=jmohep(1:2,1:nup)
      pup(1:5,1:nup)=phep(1:5,1:nup)

      vtimup(1:nup)=0d0
      spinup(1:nup)=9d0

c color assignement: 
c particles 1 and 2 have not been changed
c particle 3 is the colorless resonance
c we look for the position of the outgoing parton
      do i=4,nup
c Look for a gluon or a quark in the new LHE block
         if ((idup(i).eq.21.or.abs(idup(i)).le.5)) then
C Look in the original LHE block, to find the original index of the parton i
            do j=4,nold
               if(idup(i).eq.idtmp(j).and.
     &            abs(pup(1,i)-ptmp(1,j)).lt.1.d-6) then 
c parton at position i in the new up list was at position j in the original up list before photos call
                  index(i)=j
               endif
            enddo
c Assign color to the parton i in the new block as it was in the original block
            icolup(1:2,i)=icoltmp(1:2,index(i))
         endif
      enddo

      end


      subroutine pass_veto(ok)
c returns true if all photos generated photons have relative pt 
c (with respect to the emitting lepton) less than scalup
      implicit none
      include "LesHouches.h"
      include "PhotosHep.h"
      logical ok
      real *8 kt2minqed, vetoscale_qed
      common/showerqed/kt2minqed, vetoscale_qed
      real * 8 beta
      real*8 vec(3)
      data vec/0d0,0d0,1d0/
      save vec
      real*8 plep(0:3),ppho(0:3),p_lep_ph(0:3,1:2)
      integer i,jlep,iph,first_photos
      logical lhe_da_photon
      real*8 pt,ptmin
      logical ini
      data ini/.true./
      save ini
      integer vdecaytemp,iv
      save vdecaytemp
      real*8 mc_isr_scale,mc_fsr_scale
      common/mc_scale_lhe/mc_isr_scale,mc_fsr_scale

c      write(*,*) "SI: In pass_veto with vetoscale_qed:", vetoscale_qed

      ok = .false.

      if (ini) then
          ini=.false.
          vdecaytemp=lprup(1)-10000
      endif
c W/Z is at 3
      iv = 3
c Photos puts its photon right after the last particle belonging to
c the resonance in the hep common block (at the end of the list) 
      lhe_da_photon = .false.

c Check if there is a photon in the original LHE block (before the PHOTOS processing)
      do i=1,nup
         if(idup(i).eq.22.and.mothup(1,i).eq.3) lhe_da_photon = .true.
      enddo



      if(lhe_da_photon) then
c     first PHOTOS photons after leptons and lhe daughter photon 
         first_photos = jdahep(1,iv)+3
      else
c     first photons after leptons
         first_photos = jdahep(1,iv)+2
      endif

c Loop on the PHOTOS photons
c The last photos photon is phjdahep(2,iv)
      do iph=first_photos,jdahep(2,iv)
c the leptons are phjdahep(1,iv) and phjdahep(1,iv)+1
         ptmin = -1
c Loop on the leptons from the resonance
         do jlep=jdahep(1,iv),jdahep(1,iv)+1
            if((idhep(jlep)/2)*2.eq.idhep(jlep)) then
c It is a neutrino, skip. (the ID is an even number)
               cycle
            endif

c The beta parameter for the boost is computed using the energies 
c (or pz) of the partons entering the hard process
            beta=(phep(4,1)-phep(4,2))/(phep(4,1)+phep(4,2))
c Boost photon and its mother lepton to the partonic CM
c iph: index of PHOTOS photon. jlep: index of lepton
c Copy from the PHOTOS output block to new 4-vector objects


            p_lep_ph(0,1) = phep(4,iph)
            p_lep_ph(0,2) = phep(4,jlep)
               
            p_lep_ph(1:3,1) = phep(1:3,iph)
            p_lep_ph(1:3,2) = phep(1:3,jlep)
            
c The routine is called with the first components of the vector p_lep_ph,
c but it can access all the info in p_lep_ph

            call mboost(2,vec,-beta,p_lep_ph(0,1),p_lep_ph(0,1))
            
            ppho(:) = p_lep_ph(:,1)
            plep(:) = p_lep_ph(:,2)
            
c Call subroutine, not function!
            call get_ptrelFSR(ppho,plep,pt)

            if(ptmin.lt.0) then
               ptmin = pt
            else
               ptmin = min(pt,ptmin)
            endif
         enddo

c The ptmin should be the relative pt between the photon and the lepton that radiated it
c (this is done for cases where there are two leptons, like the Z)

c The following is the important veto:
c The routine vetoes the photons added by Photos if the relative pt is greater than mc_fsr_scale
        if (ptmin.gt.vetoscale_qed) return 
 
      enddo
       
      ok = .true.

      end


      subroutine printleshouches
c useful for debugging
      call lhefwritev(6)
      end


c...writes event information to a les houches events file on unit nlf. 
      subroutine lhefwritev(nlf)
      implicit none
      integer nlf
      include 'LesHouches.h'
      include 'pwhg_flg.h'
      integer i,j
      write(nlf,'(a)')'<event>'
      write(nlf,210) nup,idprup,xwgtup,scalup,aqedup,aqcdup
      do 200 i=1,nup
         write(nlf,220) idup(i),istup(i),mothup(1,i),
     & mothup(2,i),icolup(1,i),icolup(2,i),(pup(j,i),j=1,5),
     & vtimup(i),spinup(i)
 200  continue
c      write(nlf,'(a)')'</event>'      
 210  format(1p,2(1x,i6),4(1x,e12.5))
 220  format(1p,i8,5(1x,i5),5(1x,e16.9),1x,e12.5,1x,e10.3)
      end



      subroutine checkresmomphhep
      implicit none
      include 'PhotosHep.h'
      real * 8 ptot(1:5)
      integer j
      ptot = phep(:,3)
      do j=1,nhep
         if(isthep(j).eq.1.and.jmohep(1,j).eq.3) then
            ptot = ptot - phep(:,j)
         endif
      enddo
      if(sum(abs(ptot(1:4)))/sum(abs(phep(1:4,3))).gt.1d-8) then
         write(*,*) ' checkresmomph_hep:',sum(abs(ptot(1:4)))
      endif
      end


      subroutine readandwrite(iun,oun,endstring)
c Read input file and write into output, up to "endstring"
      implicit none
      integer iun,oun,iret
      character(len=*) endstring
      character * 100 readstring

1     continue
      call pwhg_io_read(iun,readstring,iret)
      if(trim(readstring) /= endstring) then
        write(unit=oun,fmt='(a)') trim(readstring)
        goto 1
      endif
      call pwhg_io_backspace(iun)  

      end


c Local version of opencount, based on the box version
c adding flexibility (choose the input file name)
      subroutine opencount_local(inputfilename,maxev,iun)
      implicit none
      integer maxev
      character * 100 inputfilename
      integer ios
      character * 7 string
      integer nev,j,iun,iret
      maxev=0
c      write(*,*) 'SI: Trying to open file: ', trim(inputfilename)
      call pwhg_io_open_read(trim(inputfilename),iun,ios)
c      write (*,*) 'SI: iun, ios', iun, ios
      if(ios.ne.0) then
         write(*,*)' file not found:',inputfilename
         write(*,*)' enter name of event file'
         read(*,'(a)') inputfilename
         call pwhg_io_open_read(trim(inputfilename),iun,ios)
         if(ios.ne.0) then
            write(*,*) 'cannot open; aborting ...'
            call exit(-1)
         endif
      endif
      write(*,*) ' Opened event file ',inputfilename
      write(*,*) ' Counting events in ', inputfilename
      write(*,*) ' This may take some time...'
 1    continue
      call pwhg_io_read(iun,string,iret)
      if(iret /= 0) goto 2
      if(string.eq.'</event') then
         maxev=maxev+1
         goto 1
      endif
      goto 1
 2    continue
      write(*,*) ' Found ',maxev,' events in file ',inputfilename
      if (maxev.eq.0) then
         write(*,*) ' NO EVENTS!! Program exits'
         call exit(3)
      endif

      call pwhg_io_rewind(iun)
      end


c Local version
      subroutine powheginputstring_local(stringa,stringout,default_value)
      implicit none
      character * (*) stringa,stringout,default_value
      include 'pwhg_pwin.h'
      character * (maxkey) string
      integer j,imode,iret

c     Using input mode 1
      imode = 1

      call assignstring(stringa(2-imode:),string,iret)
      if(iret.lt.0) then
         write(*,*) '*** SI: powheginputstring: keyword too long'
         call exit(-1)
      endif

      do j=1,pwin_numvalues
         if(string.eq.pwin_keywords(j)) then
            if(pwin_stringptr(j) == 0) then
               write(*,*) '*** SI: powheginputstring: error, keyword ',
     1              trim(pwin_keywords(j)),
     2              ' is not associated to a string, exiting ...'
               call exit(-1)
            endif
            
            call assignstring(pwin_strings(pwin_stringptr(j)),
     1           stringout,iret)
            if(iret.lt.0) then
               write(*,*) '*** SI: output string too short'
               call exit(-1)
            endif
            pwin_used(j)=.true.
            write(*,*) '*** SI: powheginput keyword ',string,
     1                    ' set to ','"'//trim(stringout)//'"'
            goto 999
         endif
      enddo

      write(*,*) '*** SI: Keyword ', trim(string), ' not found, ', 
     1      'setting it to: ', default_value
      stringout = default_value

 999  continue

      end

