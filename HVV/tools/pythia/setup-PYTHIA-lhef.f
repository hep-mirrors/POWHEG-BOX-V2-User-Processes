c     print some pythia configuration
      subroutine pythia_print_some_params
      implicit real *8(a-h, o-z)
      implicit integer(i-n)
      parameter (ksusy1=1000000,ksusy2=2000000,ktechn=3000000,
     &           kexcit=4000000,kdimen=5000000)
      common/pydat1/mstu(200),paru(200),mstj(200),parj(200)
      common/pydat2/kchg(500,4),pmas(500,4),parf(2000),vckm(4,4)
      common/pymssm/imss(0:99),rmss(0:99)
      common/pyssmt/zmix(4,4),umix(2,2),vmix(2,2),smz(4),smw(2),
     &              sfmix(16,4),zmixi(4,4),umixi(2,2),vmixi(2,2)
      print*, "===================================================="
      print*, " pythia sm parameters"
      print*, "===================================================="
      print*, "1/alphem(0)   = ", (1d0/pyalem(0d0))
      print*, "1/alphem(mz2) = ", (1d0/pyalem(pmas(23,1)**2))
      print*, "mw = ", pmas(24,1)
      print*, "mz = ", pmas(23,1)
      print*, "s2w = ", paru(102)
      print*, "gfermi = ",paru(105)
      print*, "===================================================="
      end


      subroutine setup_pythia_tune
      implicit none
      integer tuneid
      ! 100       a : rick field's cdf tune a                     (oct 2002)
      ! 103      dw : rick field's cdf tune dw                    (apr 2006)
      ! 320 perugia 0 : "perugia" update of s0-pro                (feb 2009)
      !tuneid = 320
      tuneid = -1 ! no tune setting
      if (tuneid.ge.0) then
        print*, "setting pythia tune ", tuneid
        call pytune(tuneid)
      else
        print*, "no pythia tune is set"
      endif
      end


c     sets several options in pythia
c     hands over sm parameters from init_couplings to pythia
      subroutine setup_pythia_parameters
      implicit none
      include 'coupl.inc'
      include 'hepevt.h'
      include 'LesHouches.h'
      real *8 parp,pari
      integer mstp,msti
      common/pypars/mstp(200),parp(200),msti(200),pari(200)
      integer mstu,mstj
      real *8 paru,parj
      common/pydat1/mstu(200),paru(200),mstj(200),parj(200)
      integer kchg
      real *8 pmas, parf, vckm
      common/pydat2/kchg(500,4),pmas(500,4),parf(2000),vckm(4,4)
      integer mdcy,mdme,kfdp
      real *8 brat
      common/pydat3/mdcy(500,3),mdme(8000,2),brat(8000),kfdp(8000,5)
      integer pycomp
      external pycomp
      ! multiple interactions (mostly untested)
      logical mult_inter
      parameter (mult_inter=.false.)
      integer maxev
      common/mcmaxev/maxev
      logical update_pythia_parameters
      parameter (update_pythia_parameters=.true.)
      ! further madgraph common block
      double precision  sw, sw2, cw, tw, s2w, c2w, e, gx, gz,
     &                  qe, qu, qd, t3e, t3v, t3u, t3d, rt2, ppi,
     &                  r_lc(2,2), r_bc(2,2), r_tc(2,2)
      common /ewparam/  sw, sw2, cw, tw, s2w, c2w, e, gx, gz,
     &                  qe, qu, qd, t3e, t3v, t3u, t3d, rt2, ppi,
     &                  r_lc, r_bc, r_tc
      ! update also sm parameters consistently
      if (update_pythia_parameters) then
        call init_couplings
        mstu(101) = 0         ! running alpha_em off
        paru(101) = alpha     ! fixed value for alpha_em
        paru(102) = sw2
        paru(105) = gfermi
        ! special parameters (might not be used at all)
        parj(123) = pmas(23,1)  ! set z mass for e+e- routines
        parj(124) = pmas(23,2)  ! set z witdh for e+e- routines
        call pythia_print_some_params
      endif
      ! multiple interactions
      ! (mi can increase a lot the execution time)
      if(.not.mult_inter) then
         print*, "deselecting mpi in pythia"
         mstp(81) = 20   ! no multiple interactions. force a call to pyevnw
      else
         print*, "selecting mpi in pythia"
         mstp(81) = 21   ! mpi on in the pyevnw mpi scenario
      endif
      print*, "other pythia settings:"
      !mstj(41) = 12 ! photon radiation off quarks and leptons
      mstj(41) = 11 ! no photon radiation off quarks and leptons
      print*, "control of photon radiation mstj(41): ", mstj(41)
      !mstp(61) = 0                ! no initial state shower
      mstp(61) = 1                ! initial state shower just qcd in hadronic events
      !mstp(61) = 2                ! QCD and QED radiation
      print*, "initial state shower control mstp(61):", mstp(61)
      !mstp(71) = 0                ! no fs shower
      print*, "final state shower control mstp(71):  ", mstp(71)
      !mstp(91) = 0                ! no primordial kt
      print*, "primordial kt control mstp(91):       ", mstp(91)
      mstp(131) = 0               ! no pile up
      !mstp(131) = 1               ! with pile up
      print*, "pile-up control mstp(131):            ", mstp(131)
      mstp(111) = 0               ! no hadronization
      !mstp(111) = 1               ! with hadronization
      print*, "hadronisation control mstp(111):      ", mstp(111)
      ! decays without hadronization need a patched pythia code
      !mstp(41) = 0               ! prevent all resonance decays
      mstp(41) = 1               ! force all resonance decays
      !mstp(41) = 2               ! on or off depending on their individual MDCY values
      print*, "resonance decays:                     ", mstp(41)
      !mstp(64) = 3   ! use lambda_mc for is shower > 6.4.19
      mstp(64) = 1   ! use lambda_msbar (default)
      ! number of warnings printed on the shell
      mstu(26) = 20
      !call pylist(12)  ! to see the pythia decay table
      ! tolerate 2% of killed events
      mstu(22) = maxev/50
      end


c     opens input file and counts number of events, setting maxev
      subroutine getmaxev(maxev)
      implicit none
      integer maxev
      call opencount(maxev)
      end



c     initialize pythia
      subroutine upinit
      implicit none
      include 'hepevt.h'
      include 'LesHouches.h'
      real *8 parp,pari
      integer mstp,msti
      common/pypars/mstp(200),parp(200),msti(200),pari(200)
      integer mstu,mstj
      real *8 paru,parj
      common/pydat1/mstu(200),paru(200),mstj(200),parj(200)
      integer mdcy,mdme,kfdp
      real *8 brat
      common/pydat3/mdcy(500,3),mdme(8000,2),brat(8000),kfdp(8000,5)
      integer pycomp
      external pycomp
      integer iun
      common/copencount/iun
      integer maxev
      common/mcmaxev/maxev
      integer idc
      nevhep=0
      ! read the header first, so lprup is set
      call lhefreadhdr(iun)
      ! make pi0 stable as in herwig default: 
      ! mdcy(pycomp(PDG_IDnumber),1) = 1 -> not stable
      ! mdcy(pycomp(PDG_IDnumber),1) = 0 -> stable
      mdcy(pycomp(111),1)=0

      ! W should decay always in (mu,v_mu)
      !do idc=190,209
      !  mdme(idc,1)=0
      !enddo
      !mdme(207,1)=1

      ! Z should decay always in (e+,e-)
      !do idc=174,189
      !  mdme(idc,1)=0
      !enddo
      !mdme(182,1)=1

      end


c     generate an event
      subroutine upevnt
      implicit none
      integer iun
      common/copencount/iun
      call lhefreadev(iun)
      end



c     PYTHIA routine to abort event
      subroutine upveto
      implicit none
      end


c     subroutine to begin the analysis
      subroutine pyabeg
      implicit none
      call init_hist
      end



c     writes PYTHIA analysis output into .top file
      subroutine pyaend
      implicit none
      character *20 pwgprefix
      character *100 filename
      integer lprefix
      common/cpwgprefix/pwgprefix,lprefix
      filename=pwgprefix(1:lprefix)//'POWHEG+PYTHIA-output'
      call pwhgsetout
      call pwhgtopout(filename)
      close(99)
      end



c     jumps to next event and calls analysis
      subroutine pyanal
      implicit none
      include 'hepevt.h'
      include 'LesHouches.h'
      integer mint
      real *8 vint
      COMMON/PYINT1/MINT(400),VINT(400)
      ! check parameters
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
