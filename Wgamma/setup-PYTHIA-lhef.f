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
      else
c     default Perugia tune 320
         call PYTUNE(320)
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
      logical powheg_nc,powheg_c_lo
      common/wgammode/powheg_nc,powheg_c_lo

c cut-off for photon emission (2*pT_min new model, m_min old model)
      parj(83)=2d0*0.8944d0     !FS photon emission from quarks (0.8944 GeV to comply with POWHEG)
      parj(90)=2d0*1d0          !FS photon emission from leptons (1 GeV to mimic a dressed lepton)

c cut-off for parton and photon emission:
c      parj(82)  ->  FS parton shower, parton emissions (default=1)
c      parj(83)  ->  FS photon emission from quarks (default=1)
c      parj(90)  ->  FS photon emission from leptons (default=0.0001)
c      parp(62)  ->  IS parton showers, parton and photon emissions (default=1)
c      parp(68)  ->  IS qed shower from leptons (default=0.001)

c     Old model: virtuality ordered shower (PYEVNT called)
c     New model: p_t ordered shower (PYEVNW called)

c     multiple interactions
c     (MPI can increase a lot the execution time)
c     No multiple parton interactions
      if(.not.mult_inter) then
c     old model (PYEVNT is called, unless PYEVNW is called directly)
         if(mstp(81).eq.1) then
            mstp(81)=0
c     new model (force a call to PYEVNW)
         elseif(mstp(81).eq.21) then
            mstp(81)=20
         endif
      endif

c     default: photon radiation off quarks and leptons
c     switch off photon radiation from leptons if photos is used
       if(use_photos) then
c     No photon FSR from leptons; low cutoff set high
          parj(90)=1d12
       endif

       if(powheg_nc) then
          if(mstj(41).gt.10) then 
c     No photon FSR from quarks and leptons
             mstj(41)=11        !New model
c  We take care of vetoing isr photons in main-PYTHIA.f
          else                
             mstj(41)=1         !Old model
             mstp(61)=1
          endif
       endif

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

c     number of errors printed on the shell
c     tolerate 2% of killed events
      mstu(22)=maxev/50

      end

      subroutine getmaxev(maxev)
      integer maxev
      integer iun97
      common/ciun97/iun97
      save /ciun97/
C--- Opens input file and counts number of events, setting MAXEV;
      call opencountunit(maxev,iun97)
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
      common/ciun97/iun97

c.....mauro:randomize leptons/b
      real*8 gen_emutau
      common/cgen_emutau/gen_emutau
c.....mauro:randomize leptons/e      
      
      photoscount=0
      nevhep=0
c read the header first, so lprup is set
      call lhefreadhdr(iun97)

c     Reduce background from non-prompt photons
c     Make PI0 stable as in herwig default
      mdcy(pycomp(111),1)=0
c     Make other hadrons stable
c      mdcy(pycomp(211),1)=0 !pi+
      mdcy(pycomp(221),1)=0 !eta
      mdcy(pycomp(223),1)=0 !omega
      mdcy(pycomp(331),1)=0 !eta'
c      mdcy(pycomp(333),1)=0 !Phi
c      mdcy(pycomp(3212),1)=0 !Sigma0
c      mdcy(pycomp(2114),1)=0 !Delta0
c      mdcy(pycomp(423),1)=0 !D*0
c      mdcy(pycomp(413),1)=0 !D*+
c      mdcy(pycomp(433),1)=0 !D*+_s
c      mdcy(pycomp(313),1)=0 !K*0

c     tau stable
      if (lprup(1).eq.10015)  mdcy(pycomp(15),1)=0
      if (lprup(1).eq.9985)  mdcy(pycomp(15),1)=0

c.....mauro:randomize leptons/b
      if(gen_emutau.eq.3) then
c     tau stable
         mdcy(pycomp(15),1)=0
         mdcy(pycomp(15),1)=0
      endif
c.....mauro:randomize leptons/e      
      end

      subroutine UPEVNT
      implicit none
      include 'LesHouches.h'
      include 'hepevt.h'
      integer mstp,msti
      double precision parp,pari
      common/pypars/mstp(200),parp(200),msti(200),pari(200)
      integer MSTU,MSTJ
      double precision PARU,PARJ
      COMMON/PYDAT1/MSTU(200),PARU(200),MSTJ(200),PARJ(200)
      logical use_photos
      common/optionphotos/use_photos
      integer photoscount
      common/photoscount/photoscount

      integer iun97
      common/ciun97/iun97
      
      if(use_photos) then
c check for events killed by PYTHIA QCD shower 
c for QED radiation with PHOTOS
         if(nevhep.ne.photoscount) then 
            call lhefreadev(iun97)
            photoscount=nevhep
         endif
         photoscount=photoscount+1
      endif

      end


      subroutine upveto
c     pythia routine to abort event
      end

      subroutine pyabeg
      call init_hist
      end

      subroutine pyaend
      implicit none
      include 'pwhg_rnd.h'
      character * 20 pwgprefix
      integer lprefix
      common/cpwgprefix/pwgprefix,lprefix

      call pwhgsetout
      if(rnd_cwhichseed.eq.'none') then
         call pwhgtopout(pwgprefix(1:lprefix)//
     >                   'POWHEG+PYTHIA-output')
      else
         call pwhgtopout(pwgprefix(1:lprefix)//
     >                   '-'//rnd_cwhichseed //'-'//
     >                   'POWHEG+PYTHIA-output')
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
      real * 8 weight

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
      if(abs(idwtup).eq.3) then
         weight=xwgtup*xsecup(1)
      else
         weight=xwgtup
      endif

      call analysis(weight)

      call pwhgaccumup 

      end

