      subroutine init_couplings
      implicit none
      include "coupl.inc"
      include 'PhysPars.h'
      include "pwhg_physpar.h"

      real * 8 powheginput
      external powheginput
c Avoid multiple calls to this subroutine. The parameter file is opened
c but never closed ...
      logical called
      data called/.false./
      save called
      if(called) then
         return
      else
         called=.true.
      endif

*********************************************************
***********         MADGRAPH                 ************
*********************************************************
c Parameters are read from the MadGraph param_card.dat,
c except the strong coupling constant, which is defined
c somewhere else
      call setpara("param_card.dat",.true.)
      call madtophys

c     Set here lepton and quark masses for momentum reshuffle in the LHE event file
      physpar_ml(1) = 0.51099891d-3
      physpar_ml(2) = 0.1056583668d0
      physpar_ml(3) = 1.77684d0
      physpar_mq(1) = 0.33d0     ! down
      physpar_mq(2) = 0.33d0     ! up
      physpar_mq(3) = 0.50d0     ! strange
      physpar_mq(4) = 1.50d0     ! charm
      physpar_mq(5) = 4.5d0      ! bottom

      end


      subroutine lh_readin(param_name)
c overrides the lh_readin subroutine in MODEL/couplings.f;
c to make it work, rename or delete
c the lh_readin routine in MODEL/couplings.f
      implicit none
      character*(*) param_name
      include 'coupl.inc'
      include 'PhysPars.h'
      double precision  Two, Four, Rt2, Pi
      parameter( Two = 2.0d0, Four = 4.0d0 )
      parameter( Rt2   = 1.414213562d0 )
      parameter( Pi = 3.14159265358979323846d0 )
 
c     Common to lh_readin and printout
      double precision  alpha, gfermi, alfas
      double precision  mtMS,mbMS,mcMS,mtaMS!MSbar masses
      double precision  Vud,Vus,Vub,Vcd,Vcs,Vcb,Vtd,Vts,Vtb !CKM matrix elements
      common/values/    alpha,gfermi,alfas,   
     &                  mtMS,mbMS,mcMS,mtaMS,
     &                  Vud,Vus,Vub,Vcd,Vcs,Vcb,Vtd,Vts,Vtb


      real*8 sthw,cthw,g2
c
      real * 8 powheginput
      external powheginput
c the only parameters relevant for this process are set
c via powheginput. All others are needed for the
c madgraph routines not to blow.
      alfas = 0.119d0
      tmass = 172.5d0
      lmass = 0d0
      mcMS = 0d0
      mbMS = 0d0
      mtMS = 172.5d0
      mtaMS = 1.777d0
      cmass = 0d0
      bmass = 0d0
      lmass = 0d0

      zwidth=2.441d0
      wwidth=2.0476d0

      zmass = 91.187d0
      wmass = 80.385d0
      gfermi = 0.1166390d-4

      ph_Wmass = wmass
      ph_Zmass = zmass
      
      ph_sthw2 = 1d0 - (ph_Wmass/ph_Zmass)**2
      sthw = SQRT(ph_sthw2)
      cthw = SQRT(1.d0 -ph_sthw2 )
      G2 = SQRT(8.d0*GFERMI/SQRT(2.d0))*ph_Zmass*cthw
      alpha = g2**2*ph_sthw2/(4.d0*PI)
c
c default: set top width to zero 
c (this value is used in matrix elements)
      twidth = 0d0

      hmass = powheginput('hmass')
      hwidth = powheginput('hwidth')


cccccccccccccccccccccccccccccccccccccccccccccccc
c check if chosen value of hmass can be handled:
      if ((hmass.lt.100d0.or.hmass.gt.200).or.
     &    (hwidth.gt.2d0)) then
         print*,' ################################################'
         print*,' this code is applicable only for ttH production '
         print*,' with a Higgs mass in the range 100 < mH < 200 GeV, '
         print*,' and decay width Gamma_H < 2 GeV, '
         print*,' where Higgs decays can be treated '
         print*,' using a narrow-width approximation '
         print*,' and off-shell effects are small'
         print*,''
         print*,' you entered a Higgs mass (in GeV) of ',hmass
         print*,' and Higgs width (in GeV) of ', hwidth
         print*,' please change your settings'
         print*,' ################################################'
         stop
      endif
ccccccccccccccccccccccccccccccccccccccccccccccccc


c in current code version CKM elements have no effect
c
c     POWHEG CKM matrix
c
c        d     s     b
c    u
c    c
c    t

      Vud=0.97428d0 
      Vus=0.2253d0  
      Vub=0.00347d0 
      Vcd=0.2252d0  
      Vcs=0.97345d0 
      Vcb=0.0410d0  
      Vtd=0.00862d0 
      Vts=0.0403d0  
      Vtb=0.999152d0

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
      real*8 masswindow
c
c     Common to lh_readin and printout
c
      double precision  alpha, gfermi, alfas
      double precision  mtMS,mbMS,mcMS,mtaMS!MSbar masses
      double precision  Vud,Vus,Vub,Vcd,Vcs,Vcb,Vtd,Vts,Vtb !CKM matrix elements
      common/values/    alpha,gfermi,alfas,   
     &                  mtMS,mbMS,mcMS,mtaMS,
     &                  Vud,Vus,Vub,Vcd,Vcs,Vcb,Vtd,Vts,Vtb
    
      e_em=gal(1)
      ph_unit_e=e_em
      ph_alphaem=alpha
      ph_sthw=sqrt(ph_sthw2)
      g_weak=e_em/ph_sthw
      ph_gfermi=gfermi

      ph_Hmass = hmass
      ph_Zwidth = zwidth
      ph_Wwidth = wwidth
      ph_Hwidth = hwidth

      ph_tmass  = tmass
      ph_twidth = 1.5083d0 ! this value is used for decays

      ph_WmWw = ph_Wmass * ph_Wwidth
      ph_ZmZw = ph_Zmass * ph_Zwidth
      ph_HmHw = ph_Hmass * ph_Hwidth
      ph_Wmass2 = ph_Wmass**2
      ph_Zmass2 = ph_Zmass**2
      ph_Hmass2 = ph_Hmass**2

c     set mass windows around the resonance peak 
c     It is used in the generation of the Born phase space
      masswindow = 1000
      ph_Hmass2low=max(0d0,ph_Hmass-masswindow*ph_Hwidth)
      ph_Hmass2low=ph_Hmass2low**2
      ph_Hmass2high=(ph_Hmass+masswindow*ph_Hwidth)**2

c     CKM from PDG 2010 (eq. 11.27)
      ph_CKM(1,1)=Vud
      ph_CKM(1,2)=Vus
      ph_CKM(1,3)=Vub
      ph_CKM(2,1)=Vcd
      ph_CKM(2,2)=Vcs
      ph_CKM(2,3)=Vcb
      ph_CKM(3,1)=Vtd
      ph_CKM(3,2)=Vts
      ph_CKM(3,3)=Vtb

      end


