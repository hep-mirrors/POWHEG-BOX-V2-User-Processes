      program main_pythia8
      implicit none
      include 'LesHouches.h'
      include 'hepevt.h'
      character * 6 WHCPRG
      common/cWHCPRG/WHCPRG
      integer j,k,l,m,iret
      integer maxev
      common/mcmaxev/maxev
c     photos
      logical use_photos
      common/optionphotos/use_photos
      real * 8 vetoscale
      integer py8trial,py8trialmax
      integer photostrial,photostrialmax
      integer py8veto
      common/resonancevetos/vetoscale,py8veto
      logical ok
      real * 8 ptrel
      real *8 kt2minqed
      common/showerqed/kt2minqed
      logical me_corr,double_brem
      common/photon_corr/me_corr,double_brem
      integer py8tune,nohad
      common/cpy8tune/py8tune,nohad
c     powheg-nc/c-lo
      logical powheg_nc,powheg_c_lo
      common/wgammode/powheg_nc,powheg_c_lo
      real * 8 powheginput
      external powheginput
      integer ios

      integer iun97
      common/ciun97/iun97


      
      WHCPRG='PYTHIA'

      use_photos = powheginput("#use_photos") .eq. 1

c     matrix element corrections
      me_corr = powheginput("#me_corr") .eq. 1

c     double bremsstrahlung generation
      double_brem = powheginput("#double_brem") .eq. 1


      
      powheg_nc = powheginput("#powheg-nc") .eq. 1
      if(powheg_nc) use_photos = .false.

c This is needed by Photos seteps routine
      kt2minqed = powheginput("#kt2minqed")
      if (kt2minqed.le.0d0) kt2minqed  = 1d0  !dressed lepton

c tune (default:5)
      py8tune=powheginput("#py8tune")

c hadronization off
      nohad=powheginput("#nohad")

c veto photon emission from leptons above scalup
c default: veto using scalupveto routines
c py8veto=1: pythia8 routines (setResonanceScale)
      py8veto = powheginput("#py8veto")

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

         call lhefreadev(iun97)

c     set the starting scale for QED shower from leptons to SCALUP
c     (the default would be the resonance mass)
         vetoscale = scalup

         if(use_photos)  then
c Set infrared cutoff
            call seteps
            photostrial=0
c Run PHOTOS until event ok.
c Photos overwrites the phhepevt common block (fills it with photons).
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
c Copy event from photos hepevt block to the LH block
            call phhepevttolhef
c$$$c DEBUG STARTS *******************************************
c$$$            write(*,*) '  '
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

c default: veto using scalupveto routines
            if(.not.use_photos.and.py8veto.ne.1) then
c examine_res_photons checks if the photons from the resonance violate scalup.
               call examine_res_photons(ptrel)
               if(ptrel.gt.scalup) then
                  py8trial = py8trial + 1
                  if(py8trial .gt. py8trialmax) then
                     write(*,*) ' cannot generate photons that' 
                     write(*,*) ' passes scalup veto'
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
c            if(nevhep.gt.0.and.mod(nevhep,1000).eq.0) then
c               write(*,*)'# of events processed=',nevhep
c               write(*,*)'# of events generated=',nevhep
c            endif 
         endif
         if(iret.ne.1) then
            call pwhgaccumup
         endif
      enddo

      write(*,*) 'At the end NEVHEP is ',nevhep

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

      subroutine getmaxev(maxev)
      integer maxev
      integer iun97
      common/ciun97/iun97
      save /ciun97/
C--- Opens input file and counts number of events, setting MAXEV;
      call opencountunit(maxev,iun97)
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
      if(idhep(6).eq.22.and.jmohep(1,6).eq.3) then
c     W/Zgamma(+j) events, if the photon comes from the resonance
         jdahep(2,3)=6
      elseif(nup.eq.7.and.idhep(7).eq.22.and.jmohep(1,7).eq.3) then
c     W/Zj+gamma events, if the photon comes from the resonance
c     exchange j <-> gamma in the hep list
         idtmp=idhep(6)
         idhep(6)=idhep(7)
         idhep(7)=idtmp
         mothtmp(:)=jmohep(:,6)
         jmohep(:,6)=jmohep(:,7)
         jmohep(:,7)=mothtmp(:)
         ptmp(:)=phep(:,6)
         phep(:,6)=phep(:,7)
         phep(:,7)=ptmp(:)
c     last daughter is the photon (now number 6) 
         jdahep(2,3)=6
      else
         jdahep(2,3)=5
      endif
c     rearrange the hep particle list for PHOTOS: 
c     W and partons first, W's daughters after
c     (e.g.:  q q -> W v l g  into  q q -> W g l v)
      if((jdahep(2,3)-jdahep(1,3)).lt.1.or.
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

c Use the phhep common block to add the photos generated particles
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

      istup(1:nup)=isthep(1:nup)
c initial state particles (isthep=2 in photos)
      istup(1)=-1
      istup(2)=-1

      idup(1:nup)=idhep(1:nup)
      mothup(:,1:nup)=jmohep(:,1:nup)
      pup(:,1:nup)=phep(:,1:nup)

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

**

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

**

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
      real*8 get_ptrelFSR
      external get_ptrelFSR
      logical ini
      data ini/.true./
      save ini
      integer vdecaytemp,iv
      save vdecaytemp

c.....mauro:randomize leptons/b
      integer lepid
      common/clepid/lepid
c      save /clepid/
c     not constant if gen_emutau > 1
c$$$      if (ini) then
c$$$          ini=.false.
c$$$          vdecaytemp=lprup(1)-10000
c$$$      endif
      vdecaytemp=lepid
c.....mauro:randomize leptons/e      
      ok = .false.
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

c The last photos photon is jdahep(2,iv)
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
            
            pt = get_ptrelFSR(ppho,plep)

            if(ptmin.lt.0) then
               ptmin = pt
            else
               ptmin = min(pt,ptmin)
            endif
         enddo
          
         if (ptmin**2.lt.kt2minqed) return

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
