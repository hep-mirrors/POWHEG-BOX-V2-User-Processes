      program main_pythia8
      implicit none
      include 'LesHouches.h'
      include 'hepevt.h'
      character * 6 WHCPRG
      common/cWHCPRG/WHCPRG
      integer j,k,l,m,iret
      integer maxev
      common/mcmaxev/maxev
      logical use_photos
      common/optionphotos/use_photos
      real * 8 vetoscale
      integer no_ew,py8trial,py8trialmax
      integer photostrial,photostrialmax
      integer py8veto
      common/resonancevetos/vetoscale,py8veto
      logical ok
      real *8 kt2minqed
      common/showerqed/kt2minqed
      integer py8tune,nohad
      common/cpy8tune/py8tune,nohad
      integer evtnumber
      common/evtprint/evtnumber
      real * 8 powheginput
      external powheginput
      real * 8 ptrel
      logical lepveto
      integer ios
      logical vetopt1
      common/vetochoice/vetopt1
      logical noQEDqopt
      common/noqedfromq/noQEDqopt
      logical mustveto_gamma,not_finite_kin_lh
      integer ilh,nup0

      integer iun97
      common/c_unit_new/iun97



      WHCPRG='PYTHIA'

      if(powheginput("#veto1").eq.1) then
         vetopt1=.true.
      else
         vetopt1=.false.
      endif

      if(powheginput("#noQEDq").eq.1) then
         noQEDqopt=.true.
      else
         noQEDqopt=.false.
      endif

      py8tune=powheginput("#py8tune")
      nohad=powheginput("#nohad")
      no_ew = powheginput("#no_ew")
      if(no_ew .eq. 1) then
         py8veto = 0
      else
c If absent we veto, not pythia8; will check for py8veto==1
         py8veto = powheginput("#py8veto")
      endif
c
      use_photos = powheginput("#use_photos").eq.1
      mustveto_gamma = powheginput("#no_ew").ne.1  !to be used with photos
      if(use_photos) py8veto = 0  !if photos is used, photons are vetoed with pass_veto
c This is needed by Photos seteps routine
      kt2minqed = powheginput("#kt2minqed")
      if (kt2minqed.le.0d0) kt2minqed  = 0.0001d0**2
c
      call init_hist

      call getmaxev(maxev)

      call lhefreadhdr(iun97)

      call pythia_init

      if(use_photos) then
         call photos_init
         photostrialmax = 20
      endif

c number of retry for pythia8, to generate photon events
c that pass the veto.
      py8trialmax = 20

      nevhep=0

      do l=1,maxev
         py8trial = 0
 1       call lhefreadev(iun97)
         if(not_finite_kin_lh()) goto 1
c     set the starting scale for QED shower from leptons to SCALUP
c     (the default would be the resonance mass)
         evtnumber= l
         vetoscale = scalup
         if(use_photos)  then
c Set infrared cutoff
            call seteps
            photostrial=0
c Run PHOTOS until event ok.
c Photos overwrites the ph_hepevt common block (fills it with photons).
c Must restore it at each loop
 15         continue

            call lhuptophhepevt(l)
c$$$c DEBUG STARTS *******************************************
c$$$            write(*,*) '  '
c$$$            write(*,*) ' Incoming Les Houches block for photos ***'
c$$$            call  printleshouches
c$$$            write(*,*) ' End incoming Les Houches block for photos *'
c$$$            write(*,*) '  '
c$$$c DEBUG STARTS *******************************************
            call photos_process
c Copy event from photos hepevt block to the LH block
            if(mustveto_gamma) then
c check if Photo's photons violate scalup veto
               call pass_veto(ok)
               if (.not.ok) then
                  photostrial=photostrial+1
                  if(photostrial.le.photostrialmax) then
                     goto 15
                  else
                     write(*,*) 'rejected event that can not pass the veto'
                     continue
                  endif
               endif
            endif
c Copy event from photos hepevt block to the LH block
            call phhepevttolhef
c$$$c DEBUG STARTS *******************************************
c$$$            call checkresmomphhep
c$$$            write(*,*) '  '
c$$$            write(*,*) ' added photons = ',nup-nup0
c$$$            write(*,*) ' Outgoing Les Houches event *******'
c$$$            call printleshouches
c$$$            write(*,*) ' End outgoing Les Houches event  ***'
c$$$            write(*,*) '  '
c$$$c DEBUG ENDS ********************************************
         endif

 888     continue
         do m=1,5
c Insist to shower this event;
            call pythia_next(iret)
            
            if(iret.ne.1) then
               write(*,*) ' return code ',iret
               if(m.eq.1) then
                  write(*,*) ' Pythia could not shower this event'
                  call printleshouches
               endif
               write(*,*) ' retry'
            else
               exit
            endif
         enddo

         if(iret.eq.1) then
            call pythia_to_hepevt(nmxhep,nhep,isthep,idhep,jmohep,
     1           jdahep,phep,vhep)

c If there are EW corrections in POWHEG, and PY8 is not vetoing photons,
c then we veto by hand.
            if(no_ew .ne. 1 .and. py8veto .ne. 1) then
c examine_res_photons checks if the photons from the resonance violate scalup.
               call examine_res_photons(lepveto,ptrel)
               if(lepveto) then
                  py8trial = py8trial + 1
                  if(py8trial .gt. py8trialmax) then
                     write(*,*) ' cannot generate photons that passes scalup veto'
                     iret = -1
                  else
                     goto 888
                  endif
               endif
            endif

            call pyanal
            if(nevhep.gt.0.and.mod(nevhep,20000).eq.0) then
               write(*,*)'# of events processed=',nevhep
               write(*,*)'# of events generated=',nevhep
               call pyaend
            endif 
         endif
         if(iret.ne.1) then
            call pwhgaccumup
         endif
      enddo

      write(*,*) 'At the end NEVHEP is ',nevhep
!:      write(*,*) 'At the end: #warnings= ',mstu(27),' #errors= ',mstu(23)
c---user's terminal calculations
      call pyaend
 100  format(i4,2x,i5,2x,i5,2x,i4,1x,i4,2x,i4,1x,i4,2x,5(d10.4,1x))
      end


      subroutine pyanal
      implicit none
      include 'LesHouches.h'
      include 'hepevt.h'
c     check parameters
      logical verbose
      parameter (verbose=.false.)
      nevhep=nevhep+1
      if(abs(idwtup).eq.3) xwgtup=xwgtup*xsecup(1)
      call analysis(xwgtup)
      call pwhgaccumup 
      end

c$$$      subroutine getmaxev(maxev)
c$$$      integer maxev
c$$$C--- Opens input file and counts number of events, setting MAXEV;
c$$$      call opencount(maxev)
c$$$      end

      subroutine getmaxev(maxev)
      integer maxev
      integer nev,j,iun,iret
      common/copencount/iun
      integer iun97
      common/c_unit_new/iun97
      save /c_unit_new/
C--- Opens input file and counts number of events, setting MAXEV;
      call opencount(maxev)
      iun97=iun
      end



      subroutine pyaend
      character * 20 pwgprefix
      integer lprefix
      common/cpwgprefix/pwgprefix,lprefix
      include 'pwhg_rnd.h'

c--- if using bookhist-multi
c      if(rnd_cwhichseed.ne.'none') then
c         open(unit=99,file=pwgprefix(1:lprefix)//
c     1        'POWHEG+PYTHIA8_output-'//rnd_cwhichseed//'.top'
c     2     ,status='unknown')
c      else
c         open(unit=99,file=pwgprefix(1:lprefix)//
c     1        'POWHEG+PYTHIA8_output.top',status='unknown')
c      endif
c      call pwhgsetout
c      call pwhgtopout
c      close(99)
      call pwhgsetout
      if(rnd_cwhichseed.eq.'none') then
         call pwhgtopout(pwgprefix(1:lprefix)//
     >                   'POWHEG+PYTHIA8_output')
      else
         call pwhgtopout(pwgprefix(1:lprefix)//
     >                   '-'//rnd_cwhichseed //'-'//
     >                   'POWHEG+PYTHIA8_output')
      endif

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

      integer n,j
      logical qedrad
      common/ph_phoqed/qedrad(nmxhep)
      integer idtmp,mothtmp(2),coltmp(2)
      real*8 ptmp(5)

      nhep=nup
      nevhep=n
      isthep(1:nhep)=istup(1:nup)
      idhep(1:nhep)=idup(1:nup)
      jmohep(1:2,1:nhep)=mothup(1:2,1:nup)
      jdahep(1:2,1:nhep)=0
      phep(1:5,1:nhep)=pup(1:5,1:nup)
      qedrad(1:nhep)=.true.

      jdahep(1,3)=4
      if(nup.eq.6.and.idhep(6).eq.22.and.jmohep(1,6).eq.3) then
c     W/Zgamma(+j) events, if the photon comes from the resonance
         jdahep(2,3)=6
      elseif(nup.gt.6) then
         write(*,*) 'not valid nup for DY!! nup= ',nup
         call exit(-1)
      else
         jdahep(2,3)=5
      endif
c     rearrange the hep particle list for PHOTOS: 
c     W and partons first, W's daughters after
c     (e.g.:  q q -> W v l g  into  q q -> W g l v)
      if((jdahep(2,3)-jdahep(1,3)).lt.0.or.
     +   (jdahep(2,3)-jdahep(1,3)).gt.2) then
         write(*,*) ' invalid daughter assignement '
         call exit(-1)
      endif
      call shiftatend(jdahep(1,3),(jdahep(2,3)-jdahep(1,3)+1))
      end

c     shift the particles j,..,j+n-1 (n=2 or 3) at the end of the list
      subroutine shiftatend(j,n)
      implicit none
      include 'PhotosHep.h'
      integer j,n
      integer k
      integer idtmp(3),isttmp(3),mothtmp(2,3)
      real*8 ptmp(5,3)

      idtmp(1:n)       = idhep(j:j+n-1)
      isttmp(1:n)      = isthep(j:j+n-1)
      mothtmp(1:2,1:n) = jmohep(1:2,j:j+n-1)
      ptmp(1:5,1:n)    = phep(1:5,j:j+n-1)

      do k=j,nhep-n
         idhep(k)    = idhep(k+n)
         isthep(k)   = isthep(k+n)
         jmohep(:,k) = jmohep(:,k+n)
         phep(:,k)   = phep(:,k+n)
      enddo

      idhep(nhep-n+1:nhep)      = idtmp(1:n) 
      isthep(nhep-n+1:nhep)     = isttmp(1:n)  
      jmohep(1:2,nhep-n+1:nhep) = mothtmp(1:2,1:n)
      phep(1:5,nhep-n+1:nhep)   = ptmp(1:5,1:n)  

      jdahep(:,3)=(/nhep-n+1,nhep/)

      end

c Use the ph_hep common block to add the photos generated particles
c to the LH common block
      subroutine phhepevttolhef
      implicit none
      include 'LesHouches.h'
      include 'PhotosHep.h'

      integer i,j,mu,nold
      integer idtmp(nhep),icoltmp(2,nhep)
      real*8 ptmp(5,nhep)
      integer index(nhep)

c photos returns the daughters of the resonance with jmohep(2,x)=0. 
c we correct it to be equal to jmohep(1,x)
      do j=1,nhep
         if(jmohep(1,j).eq.3) then
            if(jmohep(2,j).eq.0) jmohep(2,j)= jmohep(1,j)
         endif
      enddo
c in case no photons were generated by photos
      if(nhep.eq.nup) return

      nold=nup
c the new value of nup
      nup=nhep
c auxiliary variables
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
      istup(1:nup)=isthep(1:nup)
c initial state particles (isthep=2 in otos)
      istup(1)=-1
      istup(2)=-1
c 
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
         if ((idup(i).eq.21.or.abs(idup(i)).le.5)) then
            do j=4,nold
               if(idup(i).eq.idtmp(j).and.
     &            abs(pup(1,i)-ptmp(1,j)).lt.1.d-6) then 
c parton at position i in the new up list was at position j in the original up list before photos call
                  index(i)=j
               endif
            enddo
            icolup(1:2,i)=icoltmp(1:2,index(i))
         endif
      enddo

      end


      subroutine seteps
c set the photos cutoff parameter for radiation
      implicit none
      include "LesHouches.h"
      real * 8 kt2minqed
      common/showerqed/kt2minqed
      real * 8 xphcut
      common/photoscutoff/xphcut

      xphcut = 2d0*sqrt( kt2minqed )/pup(5,3)

      end

      subroutine pass_veto(ok)
c returns true if all photos generated photons have relative pt 
c (with respect to the emitting lepton) less than scalup
      implicit none
      include "LesHouches.h"
      include 'PhotosHep.h'
      logical ok
      real *8 kt2minqed
      common/showerqed/kt2minqed
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

c The last photos photon is phjdahep(2,iv)
      do iph=first_photos,jdahep(2,iv)
c the leptons are jdahep(1,iv) and jdahep(1,iv)+1
         ptmin = -1
         do jlep=jdahep(1,iv),jdahep(1,iv)+1
            if((idhep(jlep)/2)*2.eq.idhep(jlep)) then
c It is a neutrino, skip
               cycle
            endif

            beta=(phep(4,1)-phep(4,2))/(phep(4,1)+phep(4,2))
c Boost photon and its mother lepton to the partonic CM
            p_lep_ph(0,1) = phep(4,iph)
            p_lep_ph(0,2) = phep(4,jlep)
               
            p_lep_ph(1:3,1) = phep(1:3,iph)
            p_lep_ph(1:3,2) = phep(1:3,jlep)
               
            call mboost(2,vec,-beta,p_lep_ph(0,1),p_lep_ph(0,1))
            
            ppho(:) = p_lep_ph(:,1)
            plep(:) = p_lep_ph(:,2)
            
            call get_ptrelFSR(ppho,plep,pt)

            if(ptmin.lt.0) then
               ptmin = pt
            else
               ptmin = min(pt,ptmin)
            endif
         enddo
          
c         if (ptmin**2.lt.kt2minqed) return

         if (ptmin.gt.scalup) return
 
      enddo
       
      ok = .true.

      end

      subroutine printleshouches
c useful for debugging
      call lhefwritev(6)
      end

c...lhefeader(nlf)
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
      write(nlf,'(a)')'</event>'      
 210  format(1p,2(1x,i8),4(1x,e12.5))
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
