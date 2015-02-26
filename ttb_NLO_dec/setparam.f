      subroutine set_madgraph_parameters
c***********************************************************************
c     !: This subroutine sets the variables in MG5 common blocks 
c     using POWHEG parameters
c***********************************************************************
      implicit none
      DOUBLE PRECISION PI
      PARAMETER  (PI=3.141592653589793D0)
      include 'PhysPars.h'

c     MG5: constants and parameters relevant for 
c     the process at hand.
      include 'madgraph/coupl.inc'
      include 'madgraph/input.inc'

ccccccccccccccccccccccccccccccccc
c     MG5: 'GLOBAL VARIABLES'
      INTEGER IMIRROR
      COMMON/TO_mirror_GL/ IMIRROR

      REAL*8 POL(2)
      COMMON/TO_polarization_GL/ POL

      INTEGER          ISUM_HEL
      LOGICAL                    MULTI_CHANNEL
      COMMON/TO_matrix_GL/ISUM_HEL, MULTI_CHANNEL

c     set them, once and for all
C     isum_hel       ===> Exact helicity sum (0 yes, n = number/event)
C     multi_channel  ===> Suppress amplitude (0 no, 1 yes)

      data IMIRROR/1/
      data POL/1d0,1d0/
      data ISUM_HEL/0/
      data MULTI_CHANNEL/.false./

ccccccccccccccccccccccccccccccc

      double precision www,gwsq,powheginput
      include 'complexmass.inc'
  
      write(*,*) 'POWHEG: set_madgraph_parameters called'

c     this sets strong coupling and related quantities
c     using st_alpha in pwhg_st.h. We call it to
c     initialize also the madgraph strong coupling.
      call set_ebe_couplings

c     now set all the other parameters (ew sector, including masses and widths).
c     We need to be careful, since MW in Madgraph is defined by this
c     relation:
c$$$c             MW = SQRT(MZ__EXP__2/2.000000D+00+SQRT(MZ__EXP__4/4.000000D
c$$$c     $   +00-(AEW*PI*MZ__EXP__2)/(GF*SQRT__2)))

c     !: scheme where MZ, AEM, SW2 are inputs 
c$$$      MZ=ph_Zmass
c$$$      AEWM1=1d0/ph_alphaem
c     reverse-eingeneering Madgraph GF, needed by MG5 
c     to compute MW (see comment above)
c$$$      www=MZ*sqrt(1-ph_sthw2)
c$$$      GF=pi*MZ**2*ph_alphaem/sqrt(2.)
c$$$      GF=GF/(MZ**2*www**2 - www**4)

c     !: scheme where GF, MZ, MW are inputs
      MZ=ph_Zmass
      GF=ph_Gfermi
      ph_sthw2=1-(ph_wmass/ph_zmass)**2
c     reverse-eingeneering Madgraph AEWM1 (1/alphaqed), needed by MG5 
c     to compute MW (see coment above)
      gwsq=8d0*ph_wmass**2*ph_Gfermi/sqrt(2d0)
      AEWM1=gwsq*ph_sthw2/4/pi
      AEWM1=1./AEWM1

c     masses
      MB=ph_bmass
      MT=ph_tmass

c     Yukawa (numerators)
      YMB=MB * 0d0 !: Denner neglects diagrams with Higgs
      YMT=MT * 0d0 !: Denner neglects diagrams with Higgs

c     widths
      WW=ph_Wwidth
      WT=ph_twidth
      WZ=ph_Zwidth

c     other masses and widths
      YMTAU=1.77d0 !: probably never used
      MH=126d0     !: error-prone
      WH=0.04d0    !: error-prone

      if(powheginput('#complexmass').eq.1) then
         CWcomplex=sqrt(
     $        (ph_wmass**2 - (0.000000D+00,1.000000D+00)*ph_wmass*ph_wwidth) 
     $        /(ph_zmass**2 - (0.000000D+00,1.000000D+00) *ph_zmass*ph_zwidth) 
     $        )
         write(*,*) 'Born ME evaluated using complex mass scheme'
      else
         CWcomplex=ph_wmass/ph_zmass
      endif
      SWcomplex=sqrt(1d0-CWcomplex**2)
      CWcomplex__EXP__2=CWcomplex**2
      SWcomplex__EXP__2=SWcomplex**2
      write(*,*) 'MG5 sinthetaw  = ',SWcomplex
      write(*,*) 'MG5 sin2thetaw = ',SWcomplex__EXP__2


c     this madgraph routine [written by the UFO converter]
c     sets all couplings that need to be set, using the
c     parameters assigned above.

      call coup()

      write(*,*) 'MW_mad, MW_pow ',MW,ph_wmass

      end

      subroutine set_ebe_couplings
c***********************************************************************
c     !: This subroutine sets the MG5 variables that are
c     related to the strong coupling. They will change
c     on an event-by-event basis.
c***********************************************************************
      implicit none
      DOUBLE PRECISION PI
      PARAMETER  (PI=3.141592653589793D0)
      include 'pwhg_st.h'
      include 'madgraph/coupl.inc'
      include 'madgraph/input.inc'
      G = dsqrt(4*pi*st_alpha)
      AS = G**2/4/PI
      SQRT__AS = SQRT(AS)
      G__EXP__2 = G**2
c     this madgraph routine [written by the UFO converter]
c     sets all the couplings related to the strong coupling.
      call coup2()
      end


c======================================================

