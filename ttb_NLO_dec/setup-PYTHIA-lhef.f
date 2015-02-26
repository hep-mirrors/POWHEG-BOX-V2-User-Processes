      subroutine setup_PYTHIA_tune
      implicit none
      integer pythiatune
      real * 8 powheginput

C   100       A : Rick Field's CDF Tune A                     (Oct 2002)
C   103      DW : Rick Field's CDF Tune DW                    (Apr 2006)
C   320 Perugia 0 : "Perugia" update of S0-Pro                (Feb 2009)
C   129 ProQ20 : Professor Q2 ordered

      pythiatune = powheginput("#pythiatune")
      if(pythiatune.gt.0) then
         call PYTUNE(pythiatune)
      else
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
      parameter (mult_inter=.true.)
      integer maxev
      common/mcmaxev/maxev
      real * 8 powheginput
      external powheginput
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
c     multiple interactions
c     (MI can increase a lot the execution time)
c      if(.not.mult_inter) then
c         mstp(81)=20   !No Multiple interactions. Force a call to PYEVNW 
c      else
c         mstp(81)=21   ! MPI on in the PYEVNW MPI scenario
c      endif
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
c     photon radiation off quarks and leptons
c       mstj(41)=12              
c     No photon radiation off quarks and leptons
c      mstj(41)=11              
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

c      mstp(61)=0                !No IS shower
c      mstp(71)=0                !No FS shower
c      mstp(91)=0                !No Primordial kt
c      mstp(131)=0               !No Pile Up
c      mstp(111)=0               !No hadronization

c      mstp(64) =3               !use Lambda_MC for IS shower > 6.4.19
c      mstp(64) =1 !use Lambda_MSbar (default)

c     number of warnings printed on the shell
      mstu(26)=20
c     call PYLIST(12) to see the PYTHIA decay table
ccccccccccccccccccccccccccccccccccccccccccccccccccc

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
c     tolerate 2% of killed events
c      mstu(22)=maxev/50
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
      if(powheginput("#nohad").gt.0) then
         write(*,*)' ****** switching hadronization off ****'
c Hadronization off
         mstp(111)=0
c primordial kt off
         mstp(91)=0
c No multiple parton interactions
         if(mstp(81).eq.1) then
c Q2 ordered shower
            mstp(81)=0
         elseif(mstp(81).eq.21) then
c p_t^2 ordered shower
            mstp(81)=20
         endif
      endif
      end

      subroutine getmaxev(maxev)
      integer maxev
C--- Opens input file and counts number of events, setting MAXEV;
      call opencount(maxev)
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
      integer hdecaymode,i      
      integer maxev
      common/mcmaxev/maxev
      real * 8 powheginput
      external powheginput
      include 'pwhg_physpar.h'

      nevhep=0
c read the header first, so lprup is set
      call lhefreadhdr(97)

c     Make PI0 stable as in herwig default
      mdcy(pycomp(111),1)=0
c     set stable lighter b-flavoured states: needed to analize single-top
c     events in a reasonable simple way (see the analize subroutine), but,
c     strictly speaking, not necessary for the program.

c Make b-mesons and baryons stable

      mdcy(pycomp( 521  ) ,1)=0
      mdcy(pycomp( -521 ) ,1)=0
      mdcy(pycomp( 511  ) ,1)=0
      mdcy(pycomp( -511 ) ,1)=0
      mdcy(pycomp( 531  ) ,1)=0
      mdcy(pycomp( -531 ) ,1)=0
      mdcy(pycomp( 5222 ) ,1)=0
      mdcy(pycomp( 5112 ) ,1)=0
      mdcy(pycomp( 5232 ) ,1)=0
      mdcy(pycomp( -5132) ,1)=0
      mdcy(pycomp( 5132 ) ,1)=0
      mdcy(pycomp( 541  ) ,1)=0
      mdcy(pycomp( -541 ) ,1)=0
      mdcy(pycomp( 553  ) ,1)=0
      mdcy(pycomp( -5112) ,1)=0
      mdcy(pycomp( -5222) ,1)=0
      mdcy(pycomp( -5122) ,1)=0
      mdcy(pycomp( 5332 ) ,1)=0
      mdcy(pycomp( -5232) ,1)=0
      mdcy(pycomp( -5332) ,1)=0
      mdcy(pycomp( 5122 ) ,1)=0

      end

      subroutine UPEVNT
      implicit none
      call lhefreadev(97)
      end
 

      subroutine upveto
c pythia routine to abort event
      end

      subroutine pyabeg
      call init_hist
      end

      subroutine pyaend
      character * 20 pwgprefix
      integer lprefix
      common/cpwgprefix/pwgprefix,lprefix
      include 'pwhg_rnd.h'

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
      include 'LesHouches.h'
      include 'hepevt.h'
      integer MDCY,MDME,KFDP
      double precision brat
      COMMON/PYDAT3/MDCY(500,3),MDME(8000,2),BRAT(8000),KFDP(8000,5)
      integer pycomp
      external pycomp
      double precision bratio
      integer hdecaymode
      integer mint
      double precision vint
      COMMON/PYINT1/MINT(400),VINT(400)
c     check parameters
      logical verbose
      parameter (verbose=.false.)
      real * 8 powheginput
      external powheginput
      
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

