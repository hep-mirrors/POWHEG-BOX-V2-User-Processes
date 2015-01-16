      program main_pythia8
      implicit none
      include 'LesHouches.h'
      include 'hepevt.h'
      character * 6 WHCPRG
      common/cWHCPRG/WHCPRG
      integer j,k,l,m,iret
      integer maxev
      common/mcmaxev/maxev
      real * 8 vetoscale
      integer no_ew,py8trial,py8trialmax
      integer py8veto
      common/resonancevetos/vetoscale,py8veto
      integer py8tune,nohad
      common/cpy8tune/py8tune,nohad
      real * 8 powheginput
      external powheginput
      real * 8 ptrel
      logical lh_gamma,lepveto
      integer ios
      WHCPRG='PYTHIA'

      call init_hist

      call getmaxev(maxev)

      call lhefreadhdr(97)

      call pythia_init

c number of retry for pythia8, to generate photon events
c that pass the veto.
      py8trialmax = 20

      nevhep=0
      no_ew = powheginput("#no_ew")
      if(no_ew .eq. 1) then
         py8veto = 0
      else
c If absent we veto, not pythia8; will check for py8veto==1
         py8veto = powheginput("#py8veto")
      endif

      do l=1,maxev
         py8trial = 0
         call lhefreadev(97)
         if(nup.eq.6.and.idup(nup).eq.22) then
            lh_gamma = .true.
         else
            lh_gamma = .false.
         endif

c     set the starting scale for QED shower from leptons to SCALUP
c     (the default would be the resonance mass)
         vetoscale = scalup

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
c            if(nevhep.lt.20) then
c               call printhepblock
c            endif
c            if(lh_gamma) then
c               write(*,*)'  j,    is     id    m1   m2    d1  d2 '
c               do j=1,nhep
c                  write(*,100)j,isthep(j),idhep(j),jmohep(1,j),
c     1           jmohep(2,j),jdahep(1,j),jdahep(2,j), (phep(k,j),k=1,5)
c               enddo
c            endif

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
            if(nevhep.gt.0.and.mod(nevhep,1000).eq.0) then
               write(*,*)'# of events processed=',nevhep
               write(*,*)'# of events generated=',nevhep
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

      subroutine getmaxev(maxev)
      integer maxev
C--- Opens input file and counts number of events, setting MAXEV;
      call opencount(maxev)
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

