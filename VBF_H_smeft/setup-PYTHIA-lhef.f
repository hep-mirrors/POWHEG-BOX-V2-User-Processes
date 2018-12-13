      subroutine setup_PYTHIA_tune
C   100       A : Rick Field's CDF Tune A                     (Oct 2002)
C   103      DW : Rick Field's CDF Tune DW                    (Apr 2006)
C   320 Perugia 0 : "Perugia" update of S0-Pro                (Feb 2009)
C   
      call PYTUNE(320)
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
      integer i
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
c       mstj(41)=11              
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

c      mstp(61)=0                !No IS shower
c      mstp(71)=0                !No FS shower
c      mstp(91)=0                !No Primordial kt
c      mstp(131)=0               !No Pile Up
c      mstp(111)=0               !No hadronization

c      mstp(64) =3 !use Lambda_MC for IS shower > 6.4.19
c      mstp(64) =1 !use Lambda_MSbar (default)

c     number of warnings printed on the shell
      mstu(26)=20
c     call PYLIST(12) to see the PYTHIA decay table
ccccccccccccccccccccccccccccccccccccccccccccccccccc

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
c     tolerate 2% of killed events
      mstu(22)=maxev/50
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! 

c     set stable lighter b-flavoured states: needed to analize single-top
c     events in a reasonable simple way (see the analize subroutine), but,
c     strictly speaking, not necessary for the program.
      mdcy(pycomp(  521 ) ,1)=0
      mdcy(pycomp( -521 ) ,1)=0
      mdcy(pycomp(  511 ) ,1)=0
      mdcy(pycomp( -511 ) ,1)=0
      mdcy(pycomp(  531 ) ,1)=0
      mdcy(pycomp( -531 ) ,1)=0
      mdcy(pycomp(  541 ) ,1)=0
      mdcy(pycomp( -541 ) ,1)=0
      mdcy(pycomp(  553 ) ,1)=0
      mdcy(pycomp(  5212) ,1)=0
      mdcy(pycomp(  5222) ,1)=0
      mdcy(pycomp( -5222) ,1)=0
      mdcy(pycomp(  5112) ,1)=0
      mdcy(pycomp( -5112) ,1)=0
      mdcy(pycomp(  5232) ,1)=0
      mdcy(pycomp( -5232) ,1)=0
      mdcy(pycomp(  5132) ,1)=0
      mdcy(pycomp( -5132) ,1)=0
      mdcy(pycomp(  5122) ,1)=0
      mdcy(pycomp( -5122) ,1)=0
      mdcy(pycomp(  5332) ,1)=0
      mdcy(pycomp( -5332) ,1)=0

      do i=-600, -500
         mdcy(pycomp(i) ,1)=0
      enddo
      do i=5000, 6000
         mdcy(pycomp(i) ,1)=0
      enddo
      do i=-6000, -5000
         mdcy(pycomp(i) ,1)=0
      enddo
      do i=500, 600
         mdcy(pycomp(i) ,1)=0
      enddo


      end

c      subroutine getmaxev(maxev)
c      integer maxev
C--- Opens input file and counts number of events, setting MAXEV;
c      call opencount(maxev)
c      end

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
      integer iun
      common/c_unit/iun
      
      nevhep=0

c read the header first, so lprup is set
      call lhefreadhdr(iun)

c     Make PI0 stable as in herwig default
      mdcy(pycomp(111),1)=0

C---Decay; 
      hdecaymode=lprup(1)-10000
      if ((hdecaymode.lt.-1).or.(hdecaymode.gt.12)) then
         write(*,*) "Higgs decay mode not allowed"
         stop
      endif   

c     choose Higgs decay channel
      if (hdecaymode.eq.-1) then
         mdcy(pycomp(25),1)=0
      else   
         mdcy(pycomp(25),1)=1
         if (hdecaymode.gt.0) then
            do i=210,288
               if (mdme(i,1).ne.-1) mdme(i,1)=0
            enddo
            if (hdecaymode.eq.12) then
               mdme(223,1)=1
            elseif(hdecaymode.eq.11) then
               mdme(225,1)=1
            elseif(hdecaymode.eq.10) then
               mdme(226,1)=1
            elseif(hdecaymode.eq.7) then
               mdme(218,1)=1
            elseif(hdecaymode.eq.8) then
               mdme(219,1)=1
            elseif(hdecaymode.eq.9) then
               mdme(220,1)=1   
            else
               mdme(209+hdecaymode,1)=1
            endif
         endif      
      endif
      end

      subroutine UPEVNT
      implicit none
      integer iun
      common/c_unit/iun
      call lhefreadev(iun)
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
      character * 100 filename
      common/cpwgprefix/pwgprefix,lprefix
       include 'pwhg_rnd.h'
      if(rnd_cwhichseed.ne.'none') then
         filename=pwgprefix(1:lprefix)//'POWHEG+PYTHIA-output-'
     1        //rnd_cwhichseed
      else
         filename=pwgprefix(1:lprefix)//'POWHEG+PYTHIA-output'
      endif
      call pwhgsetout
      call pwhgtopout(filename)
      close(99)
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
      hdecaymode=lprup(1)-10000
      if ((hdecaymode.eq.0).or.(hdecaymode.eq.-1)) then
         bratio=1d0
      elseif (hdecaymode.eq.12) then
         bratio=brat(223)
      elseif(hdecaymode.eq.11) then
         bratio=brat(225)
      elseif(hdecaymode.eq.10) then
         bratio=brat(226)
      elseif(hdecaymode.eq.7) then
         bratio=brat(218)
      elseif(hdecaymode.eq.8) then
         bratio=brat(219)
      elseif(hdecaymode.eq.9) then
         bratio=brat(220)   
      else
         bratio=brat(209+hdecaymode)
      endif
      if(abs(idwtup).eq.3) xwgtup=xwgtup*xsecup(1)
      xwgtup=xwgtup*bratio
      call analysis(xwgtup)
      call pwhgaccumup 
      end

