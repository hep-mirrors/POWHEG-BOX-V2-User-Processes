      subroutine init_couplings
      implicit none
      include "coupl.inc"
      include 'PhysPars.h'
      include "pwhg_physpar.h"

      real(kind(1d0)), external :: powheginput
      logical, save :: firstcall = .true.
      integer :: ii

      if( .NOT.firstcall ) return
      firstcall = .false.
*********************************************************
***********         MADGRAPH                 ************
*********************************************************
c     Parameters are read from the MadGraph param_card.dat,
c     except the strong coupling constant, which is defined
c     somewhere else
      call setpara("param_card.dat",.true.)
      call madtophys

c     Set here lepton and quark masses for momentum reshuffle in the LHE event file
c     Leptons
      physpar_ml(1) = powheginput('#lhfm/emass')
      if( physpar_ml(1) < 0d0 ) physpar_ml(1) = 0.51099891d-3 
      physpar_ml(2) = powheginput('#lhfm/mumass')
      if( physpar_ml(2) < 0d0 ) physpar_ml(2) = 0.1056583668d0 
      physpar_ml(3) = powheginput('#lhfm/taumass')
      if( physpar_ml(3) < 0d0 ) physpar_ml(3) = 1.77684d0

c     Quarks
      physpar_mq(1) = powheginput('#lhfm/dmass')
      if( physpar_mq(1) < 0d0 )  physpar_mq(1) = 0.33d0 
      physpar_mq(2) = powheginput('#lhfm/umass')
      if( physpar_mq(2) < 0d0 )  physpar_mq(2) = 0.33d0 
      physpar_mq(3) = powheginput('#lhfm/smass')
      if( physpar_mq(3) < 0d0 )  physpar_mq(3) = 0.50d0 
      physpar_mq(4) = powheginput('#lhfm/cmass')
      if( physpar_mq(4) < 0d0 ) physpar_mq(4) = powheginput('#charmthr')
      if( physpar_mq(4) < 0d0 ) physpar_mq(4) = 1.50d0 
      physpar_mq(5) = powheginput('#lhfm/bmass')
      if( physpar_mq(5) < 0d0 ) physpar_mq(5) = powheginput('#bottomthr')
      if( physpar_mq(5) < 0d0 ) physpar_mq(5) = 4.50d0 

      ! Initialize NLOX
      call generate_NLOX_paramfile() 
      call NLOX_init()
      end

c------------------------------------------------------------------------------
c     Initialize NLOX parameters
c     NOTE: Avoid parameters in the c++ Wrapper functions!
c------------------------------------------------------------------------------
      SUBROUTINE NLOX_init()
      implicit none
      include 'PhysPars.h'
      include 'nlox_fortran_interface.f90'
      character(len=15) :: fname
      integer :: ierr
      character(len=2) :: par_GF = "GF"
      character(len=2) :: par_mb = "mb", par_wb = "wb"
      character(len=2) :: par_mt = "mt"
      character(len=2) :: par_wt = "wt"
      character(len=2) :: par_mW = "mW", par_wW = "wW"
      character(len=2) :: par_mZ = "mZ", par_wZ = "wZ"
      character(len=2) :: par_mH = "mH", par_wH = "wH"
      integer :: lpar = 2
      real(kind(1d0)) :: Zero = 0d0

      call NLOX_OLP_Start(fname, ierr)
      call NLOX_OLP_SetParameter(par_mt, lpar, ph_tmass, Zero, ierr)
      call NLOX_OLP_SetParameter(par_wt, lpar, Zero, Zero, ierr)
      call NLOX_OLP_SetParameter(par_mb, lpar, Zero, Zero, ierr)
      call NLOX_OLP_SetParameter(par_wb, lpar, Zero, Zero, ierr)
      call NLOX_OLP_SetParameter(par_mW, lpar, ph_Wmass, Zero, ierr)
      call NLOX_OLP_SetParameter(par_wW, lpar, Zero, Zero, ierr)
      call NLOX_OLP_SetParameter(par_mZ, lpar, ph_Zmass, Zero, ierr)
      call NLOX_OLP_SetParameter(par_wZ, lpar, Zero, Zero, ierr)
      call NLOX_OLP_SetParameter(par_mH, lpar, ph_Hmass, Zero, ierr)
      call NLOX_OLP_SetParameter(par_wH, lpar, Zero, Zero, ierr)
      call NLOX_OLP_SetParameter(par_GF, lpar, ph_gfermi, Zero, ierr)
      END SUBROUTINE

c------------------------------------------------------------------------------
c     Writes a NLOX input file with universal parameters
c------------------------------------------------------------------------------
      SUBROUTINE generate_NLOX_paramfile()
      implicit none
      include 'PhysPars.h'
      integer, parameter :: nunit = 666
      logical :: file_exists

      ! If file exist do not overwrite      
      inquire(file = 'nlox_parameters.par', exist=file_exists)
      if( file_exists ) return

      open(unit = nunit, file = 'nlox_parameters.par', action='write',status = 'new')
      write(nunit,"(a)") "#"
      write(nunit,"(a)") "# DO NOT MODIFY THIS FILE!"
      write(nunit,"(a)") "#"
      write(nunit,"(a)") "# Based on standard_cm.par"
      write(nunit,"(a)") ""
      write(nunit,"(a)") "# QCD and EW couplings"
      write(nunit,"(a)") "# If GmuScheme = true, then alpha_e and, from it, e, are re-calculated."
      write(nunit,"(a)") "alpha_s = 1."
      write(nunit,"(a)") "alpha_e = 1."
      write(nunit,"(a)") ""
      write(nunit,"(a)") "# Numbers of light and heavy quark flavors from closed quark loops in gluon wf"
      write(nunit,"(a)") "# and g_s renormalization"
      write(nunit,"(a)") "nlf = 5.0"
      write(nunit,"(a)") "nhf = 1.0"
      write(nunit,"(a)") ""
      write(nunit,"(a)") "# Switching on or off the CM renormalization scheme and the Gmu EW input scheme."
      write(nunit,"(a)") "# The proper subtraction of \Delta{}r from dZe in the renormalization is carried"
      write(nunit,"(a)") "# out if GmuScheme = true."
      write(nunit,"(a)") "cmScheme = false"
      write(nunit,"(a)") "GmuScheme = true"
      write(nunit,"(a)") ""
      write(nunit,"(a)") "# Renormalization scale"
      write(nunit,"(a)") "# It is not needed to set mu explicitly for the new olp mode, which sets mu dy-"
      write(nunit,"(a)") "# namically for now and uses computeEWRenorm2(). However, to have the old func-"
      write(nunit,"(a)") "# tionality not complaining, which uses computeEWRenorm() inside the construct-"
      write(nunit,"(a)") "# or of ProcessConst, we set an initial value of mu here."
      write(nunit,"(a)") "mu = 1000"
      close(nunit)
      END SUBROUTINE

      subroutine lh_readin(param_name)
c overrides the lh_readin subroutine in MODEL/couplings.f;
c to make it work, rename or delete
c the lh_readin routine in MODEL/couplings.f
      implicit none
      character*(*) param_name
      include 'coupl.inc'
      include 'PhysPars.h'
      real(kind(1d0)), parameter :: Pi = 3.14159265358979323846d0 
      real(kind(1d0)), external :: powheginput
 
C     Common to lh_readin and printout
      double precision  alpha, gfermi, alfas
      double precision  mtMS,mbMS,mcMS,mtaMS!MSbar masses
      double precision  Vud,Vus,Vub,Vcd,Vcs,Vcb,Vtd,Vts,Vtb !CKM matrix elements
      common/values/    alpha,gfermi,alfas,   
     &                  mtMS,mbMS,mcMS,mtaMS,
     &                  Vud,Vus,Vub,Vcd,Vcs,Vcb,Vtd,Vts,Vtb


      real*8 sthw,cthw,g2
c the only parameters relevant for this process are set
c via powheginput. All others are needed for the
c madgraph routines not to blow.
      alfas = 0.119d0
      lmass = 0d0
      mcMS = 0d0
      mbMS = 0d0
      mtMS = 172.5d0
      mtaMS = 1.777d0
      cmass = 0d0
      bmass = 0d0
      lmass = 0d0

      tmass = powheginput("tmass")
      wmass = powheginput("wmass")
      zmass = powheginput("zmass")

c
c default: set all widths to zero 
c (this value is used in matrix elements)
      twidth = 0d0
      zwidth = 0d0
      wwidth = 0d0

      gfermi = powheginput("gfermi")

      ph_Wmass = wmass
      ph_Zmass = zmass
      
      ph_sthw2 = 1d0 - (ph_Wmass/ph_Zmass)**2
      sthw = SQRT(ph_sthw2)
      cthw = SQRT(1.d0 -ph_sthw2 )
      G2 = SQRT(8.d0*GFERMI/SQRT(2.d0))*ph_Zmass*cthw
      alpha = g2**2*ph_sthw2/(4.d0*PI)

c in current code version CKM elements have only an effect
c in the decay modelling. We only support mixing between
c the first two generations
c
c     POWHEG CKM matrix
c
c        d     s     b
c    u
c    c
c    t

      Vud = powheginput("#CKM_Vud")
      if( Vud .le. 0d0 ) Vud = 0.974276d0
      Vus = powheginput("#CKM_Vus")
      if( Vus .le. 0d0 ) Vus = 0.225358d0  
      Vub = 0d0
      Vcd = powheginput("#CKM_Vcd")
      if( Vcd .le. 0d0 ) Vcd = 0.225358d0  
      Vcs = powheginput("#CKM_Vcs")
      if( Vcs .le. 0d0 ) Vcs = 0.974276d0 
      Vcb = 0d0
      Vtd = 0d0
      Vts = 0d0
      Vtb = 1d0

      end
 
      subroutine set_ebe_couplings
      implicit none
      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include "coupl.inc"
c QCD coupling constant
      G=sqrt(st_alpha*4d0*pi)
      GG(1)=-G
      GG(2)=-G

      twidth = 0d0

c HEFT coupling
      gh(1) = cmplx( g**2/4d0/PI/(3d0*PI*V), 0d0)
      gh(2) = cmplx( 0d0                   , 0d0)
      ga(1) = cmplx( 0d0                   , 0d0)
      ga(2) = cmplx( g**2/4d0/PI/(2d0*PI*V), 0d0)
      gh4(1) = G*gh(1)
      gh4(2) = G*gh(2)
      ga4(1) = G*ga(1)
      ga4(2) = G*ga(2)

      return
      end

      subroutine set_ebe_couplings_width
      implicit none
      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include "coupl.inc"
      include 'PhysPars.h'
c QCD coupling constant
      G=sqrt(st_alpha*4d0*pi)
      GG(1)=-G
      GG(2)=-G

      twidth = ph_twidth

c HEFT coupling
      gh(1) = cmplx( g**2/4d0/PI/(3d0*PI*V), 0d0)
      gh(2) = cmplx( 0d0                   , 0d0)
      ga(1) = cmplx( 0d0                   , 0d0)
      ga(2) = cmplx( g**2/4d0/PI/(2d0*PI*V), 0d0)
      gh4(1) = G*gh(1)
      gh4(2) = G*gh(2)
      ga4(1) = G*ga(1)
      ga4(2) = G*ga(2)

      return
      end

      subroutine madtophys
      implicit none
      include 'coupl.inc'
      include 'PhysPars.h'
      include 'pwhg_math.h'
      real * 8 e_em,g_weak
c
c     Common to lh_readin and printout
c
      double precision  alpha, gfermi, alfas
      double precision  mtMS,mbMS,mcMS,mtaMS!MSbar masses
      double precision  Vud,Vus,Vub,Vcd,Vcs,Vcb,Vtd,Vts,Vtb !CKM matrix elements
      common/values/    alpha,gfermi,alfas,   
     &                  mtMS,mbMS,mcMS,mtaMS,
     &                  Vud,Vus,Vub,Vcd,Vcs,Vcb,Vtd,Vts,Vtb
      logical :: zerowidth 
      real(kind(1d0)), external :: powheginput
    
      e_em = gal(1)
      ph_unit_e = e_em
      ph_alphaem = alpha
      ph_sthw = sqrt(ph_sthw2)
      g_weak = e_em/ph_sthw
      ph_gfermi = gfermi

      ! The W,Z and top width is read again since it is used in the decay part
      zerowidth = powheginput('#zerowidth') .eq. 1

      ph_Wwidth = powheginput("#wwidth")
      if( ph_Wwidth .le. 0d0 ) ph_Wwidth = 2.09767d0

      ph_Zwidth = powheginput("#zwidth")
      if( ph_Zwidth .le. 0d0 ) ph_Zwidth = 2.50775d0

      ph_twidth = powheginput("#twidth")
      if( ph_twidth .le. 0d0 .AND. zerowidth ) ph_twidth = 1.35355d0 ! NLO NWA width
      if( ph_twidth .le. 0d0 .AND. .NOT.zerowidth ) ph_twidth = 1.33247d0 ! NLO off-shell width

      ph_hwidth = powheginput("#hwidth")
      if( ph_hwidth .le. 0d0 ) ph_hwidth = 0.00948d0

      ph_tmass = tmass
      ph_Wmass = wmass
      ph_Zmass = zmass
      ph_Hmass = powheginput("#hmass")
      if( ph_Hmass .le. 0d0 ) ph_Hmass = 125d0

      ph_WmWw = ph_Wmass * ph_Wwidth
      ph_ZmZw = ph_Zmass * ph_Zwidth
      ph_HmHw = ph_Hmass * ph_Hwidth
      ph_Wmass2 = ph_Wmass**2
      ph_Zmass2 = ph_Zmass**2
      ph_Hmass2 = ph_Hmass**2

c     CKM from PDG 2010 (eq. 11.27)
      ph_CKM(1,1) = Vud
      ph_CKM(1,2) = Vus
      ph_CKM(1,3) = Vub
      ph_CKM(2,1) = Vcd
      ph_CKM(2,2) = Vcs
      ph_CKM(2,3) = Vcb
      ph_CKM(3,1) = Vtd
      ph_CKM(3,2) = Vts
      ph_CKM(3,3) = Vtb

      end


