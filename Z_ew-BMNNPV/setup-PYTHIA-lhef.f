      subroutine setup_PYTHIA_tune
      implicit none
C   100       A : Rick Field's CDF Tune A                     (Oct 2002)
C   103      DW : Rick Field's CDF Tune DW                    (Apr 2006)
C   320 Perugia 0 : "Perugia" update of S0-Pro                (Feb 2009)
C   
      real * 8 powheginput
      integer ntune
      ntune = powheginput("#pythiatune")
      if(ntune.gt.0) then
         call PYTUNE(ntune)
      endif
      end

      subroutine setup_PYTHIA_parameters
      implicit none
      include 'hepevt.h'
      include 'LesHouches.h'
      double precision parp,pari
      integer mstp,msti
      common/pypars/mstp(200),parp(200),msti(200),pari(200)
      integer MSTU,MSTJ
      double precision PARU,PARJ
      COMMON/PYDAT1/MSTU(200),PARU(200),MSTJ(200),PARJ(200)
      integer MDCY,MDME,KFDP
      double precision brat
      COMMON/PYDAT3/MDCY(500,3),MDME(8000,2),BRAT(8000),KFDP(8000,5)
      integer pycomp
      external pycomp
c     multiple interactions
      logical mult_inter
      parameter (mult_inter=.false.)
      integer maxev
      common/mcmaxev/maxev
      logical use_photos
      common/optionphotos/use_photos
      logical mustveto_gamma
      common/optionpwhggamma/mustveto_gamma
      real * 8 powheginput
      external powheginput
c modified fulvio: original version
***********************************************************
c      if(.not.mult_inter) then
c         mstp(81)=20   !No Multiple interactions. Force a call to PYEVNW 
c      else
c         mstp(81)=21   ! MPI on in the PYEVNW MPI scenario
c      endif
***********************************************************
c     multiple interactions
c     (MI can increase a lot the execution time)
c     No multiple parton interactions  
      if(.not.mult_inter) then
c     old model (PYEVNT is called, unless PYEVNW is called directly)
         if(mstp(81).eq.1) then
            mstp(81)=0
c     new model (force a call to PYEVNW)
         elseif(mstp(81).eq.21) then
            mstp(81)=20     !No Multiple interactions. Force a call to PYEVNW 
         endif
      endif
c PHOTONS can be handled with PYTHIA shower or with PHOTOS
c if PowHeg events have EWK corrections, PYTHIA shower or PHOTOS 
c must be vetoed, otherwise no veto has to be applied
c

c Unless no_ew is specified, gamma must be vetoed
      mustveto_gamma = powheginput("#no_ew").ne.1

      use_photos     = powheginput("#use_photos") .eq. 1

c     default: photon radiation off quarks and leptons
c     if PYEVNW is called: 
       if(use_photos) then
c     No photon radiation from quarks and leptons
          if(mstj(41).gt.10) then
             mstj(41)=11
          else
             mstj(41)=1
          endif
       else
c     photon radiation from quarks and leptons  
          if(mstj(41).gt.10) then
             mstj(41)=12
          else
             mstj(41)=2
          endif
       endif
cc     if PYEVNT is called:         
cc     photon radiation from quarks and leptons        
c      mstj(41)=2
cc     photon radiation from quarks only    
cc      mstj(41)=3         
cc     No photon radiation from quarks and leptons     
cc      mstj(41)=1          
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

c      mstp(61)=0                !No IS shower
c      mstp(71)=0                !No FS shower
c      mstp(91)=0                !No Primordial kt
c      mstp(131)=0               !No Pile Up
c      mstp(111)=0               !No hadronization

      mstp(64) =3 !use Lambda_MC for IS shower > 6.4.19
c      mstp(64) =1 !use Lambda_MSbar (default)

c     number of warnings printed on the shell
      mstu(26)=20
c     call PYLIST(12) to see the PYTHIA decay table
ccccccccccccccccccccccccccccccccccccccccccccccccccc

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
c     tolerate 2% of killed events
      mstu(22)=maxev/50
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!    
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



      subroutine UPINIT
      implicit none
      include 'hepevt.h'
      include 'LesHouches.h'
      double precision parp,pari
      integer mstp,msti
      common/pypars/mstp(200),parp(200),msti(200),pari(200)
      integer MSTU,MSTJ
      double precision PARU,PARJ
      COMMON/PYDAT1/MSTU(200),PARU(200),MSTJ(200),PARJ(200)
      integer MDCY,MDME,KFDP
      double precision brat
      COMMON/PYDAT3/MDCY(500,3),MDME(8000,2),BRAT(8000),KFDP(8000,5)
      integer pycomp
      external pycomp
      integer maxev
      common/mcmaxev/maxev
      integer photoscount
      common/photoscount/photoscount

      integer iun97
      common/c_unit_new/iun97


      photoscount=0
      nevhep=0
c read the header first, so lprup is set
      call lhefreadhdr(iun97)

c cut-off for photon emission
      parp(68)=2.d0* 0.8944d0 !to comply with powheg !1d-3  !ISR off quarks (default=0.001)
      parj(90)=2.d0* 1d-3  !FSR off leptons (default=0.0001) 2.d0 is to comply with PYTHIA8 and photos
c     Make PI0 stable as in herwig default
      mdcy(pycomp(111),1)=0
c     Make other hadrons stable
      mdcy(pycomp(211),1)=0 !pi+
      mdcy(pycomp(221),1)=0 !eta
      mdcy(pycomp(223),1)=0 !omega
      mdcy(pycomp(331),1)=0 !eta'
      mdcy(pycomp(333),1)=0 !Phi
      mdcy(pycomp(3212),1)=0 !Sigma0
      mdcy(pycomp(2114),1)=0 !Delta0
      mdcy(pycomp(423),1)=0 !D*0
      mdcy(pycomp(413),1)=0 !D*+
      mdcy(pycomp(433),1)=0 !D*+_s
      mdcy(pycomp(313),1)=0 !K*0

      if (lprup(1).eq.10015)  mdcy(pycomp(15),1)=0
      if (lprup(1).eq.9985)  mdcy(pycomp(15),1)=0
      end

      subroutine UPEVNT
      implicit none
      include 'hepevt.h'
c     veto QED shower from leptons above the SCALUP value
c     (in pythia6 the default Q_max is the resonance mass)
      logical lepveto
      common/showerlepveto/lepveto
      logical use_photos
      common/optionphotos/use_photos
      integer oldnevhep
      save oldnevhep
      data oldnevhep/-1/
      integer photoscount
      common/photoscount/photoscount

      integer iun97
      common/c_unit_new/iun97


      if(use_photos) then
c check dor events killed by PYTHIA QCD shower 
c for QED radiation with PHOTOS
         if(nevhep.ne.photoscount) then 
            call lhefreadev(iun97)
            photoscount=nevhep
         endif
         photoscount=photoscount+1
c      call lhefreadev(97)
ccc modified fulvio begin
      endif
c      else
cc   QED shower with PYTHIA
c         if(.not.lepveto) then
c            if(nevhep.eq.oldnevhep) then
c               call pwhgaccumup
c            endif
c            call lhefreadev(97)
c         endif
c      endif
ccc modified fulvio end
      end


      subroutine upveto
c pythia routine to abort event
      end

      subroutine pyabeg
      call init_hist
      end

c      subroutine pyaend
c      character * 20 pwgprefix
c      integer lprefix
c      common/cpwgprefix/pwgprefix,lprefix
c      open(unit=99,file=pwgprefix(1:lprefix)//'POWHEG+PYTHIA-output.top'
c     #     ,status='unknown')
c      call pwhgsetout
c      call pwhgtopout
c      close(99)
c      end

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
     >                   'POWHEG+PYTHIA_output')
      else
         call pwhgtopout(pwgprefix(1:lprefix)//
     >                   '-'//rnd_cwhichseed //'-'//
     >                   'POWHEG+PYTHIA_output')
      endif

      end



      subroutine pyanal
      implicit none
      include 'hepevt.h'
      include 'LesHouches.h'
      integer mint
      double precision vint
      COMMON/PYINT1/MINT(400),VINT(400)
c     check parameters
      logical verbose
      parameter (verbose=.false.)
      
      if(mint(51).ne.0) then
         if(verbose) then
            write(*,*) 'Killed event'
            write(*,*) 'Scalup= ',scalup
            call pylist(7)      !hepeup
            call pylist(2)      !all the event
         endif
         return
      endif
      nevhep=nevhep+1
      if(abs(idwtup).eq.3) xwgtup=xwgtup*xsecup(1)
      call analysis(xwgtup)
      call pwhgaccumup 
      end

      function dotp(p1,p2)
      implicit none
      real * 8 dotp,p1(0:3),p2(0:3)
      dotp = (p1(0)*p2(0) - p1(3)*p2(3)) - p1(1)*p2(1) - p1(2)*p2(2)
      end
