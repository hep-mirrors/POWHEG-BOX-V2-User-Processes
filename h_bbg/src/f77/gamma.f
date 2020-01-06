c#######################################################################
c#######################################################################
      function GammaHbb0(mur)
      implicit none

      include 'pwhg_math.h'
      include 'pwhg_st.h'
      include 'PhysPars.h'

      real*8 GammaHbb0
      real*8 mh,mu,mb_msbar
      real*8 mur
      real*8 pwhg_alphas
      external pwhg_alphas

      integer j
      mh = ph_hmass

!     !>> eq.(3.3) of 1501.07226
      GammaHbb0 = ( ph_yb2 * mh * Nc )/(8d0*pi)

      if( ph_running_mass )then
         mu= mur !>> input parameter
         GammaHbb0 = GammaHbb0 * ( mb_msbar( mu ) / ph_bmass )**2
      endif

      return
      end


c#######################################################################
c#######################################################################
      function GammaHbb1(mur)
      implicit none

      include 'pwhg_math.h'
      include 'pwhg_st.h'
      include 'PhysPars.h'

      real*8 GammaHbb0,GammaHbb1
      real*8 as,ason2pi,LOGX,correction
      real*8 mh,mur
      real*8 pwhg_alphas
      external pwhg_alphas

      mh = ph_hmass
      as = pwhg_alphas(mur**2, st_lambda5MSB, st_nlight)
      ason2pi = as / (2d0*pi)
      LOGX = log( mur**2 / mh**2 )

      if( .not.ph_running_mass ) LOGX=0d0

!     !>> eq.(4.19) of 1501.07226
      correction = ason2pi * CF * ( 17d0/2d0 + 3d0*LOGX )
      GammaHbb1 = GammaHbb0(mur) * ( 1d0 + correction )

      return
      end


c#######################################################################
c#######################################################################
      function GammaHbb2(mur)
      implicit none

      include 'pwhg_math.h'
      include 'pwhg_st.h'
      include 'PhysPars.h'
      include 'math_const.f'

      real*8 GammaHbb0,GammaHbb1,GammaHbb2
      real*8 as,LOGX,api
      real*8 correction1,correction2,fullcorrection
      real*8 mh,mur
      real*8 gam0m,gam1m
      real*8 s1,s2,beta0
      real*8 pwhg_alphas
      external pwhg_alphas

      real*8 Nf

      Nf=dble(st_nlight)

      as = pwhg_alphas(mur**2, st_lambda5MSB, st_nlight)
      api = as / (pi)      !!>>  line after eq.(3) of hep-ph/9608318

      mh = ph_hmass
      LOGX= log(mur**2/mh**2)

      if( .not.ph_running_mass ) LOGX=0d0

!     !>> bits and pieces: eq.(18-20) of hep-ph/9608318
      gam0m= (3d0*CF)/4d0
      gam1m= (3d0/2d0*CF**2 + 97d0/6d0*CF*CA - 10d0/3d0*CF*TF*Nf )/16d0

      s1= (17d0/4d0)*CF
      s2= ( 691d0/64d0 - 3d0/8d0*pi2 - 9d0/4d0*zeta3 )*CF**2
     $     + ( 893d0/64d0 - 11d0/48d0*pi2 - 31d0/8d0*zeta3 )*CF*CA
     $     + ( -65d0/16d0 + pi2/12d0 + zeta3 )*CF*TF*Nf

      beta0 = ( 11d0/3d0*CA - 4d0/3d0*TF*Nf )/4d0
      
!     !>> eq.(17) of hep-ph/9608318
      correction1= ( s1 + 2d0*gam0m*LOGX )
      
      correction2= (
     $     s2
     $     + LOGX    *( s1*beta0 + 2*s1*gam0m + 2*gam1m )
     $     + LOGX**2 *( beta0*gam0m + 2*(gam0m)**2 )
     $     )
      
      fullcorrection = 1d0
     $     + api   * correction1
     $     + api**2* correction2

      GammaHbb2 = GammaHbb0(mur) * fullcorrection
      
      return
      end
      

c#######################################################################
!>>   conversion pole mass -> MSbar mass
!>>   according to two loop running from RunDec.m: mOS2mMS[...]      
      function mb_msbar(mu)
      implicit none

      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      
      real*8 mb_msbar
      real*8 mu,api

      real*8 pwhg_alphas,delta
      external pwhg_alphas,delta

      real*8 coeff1,coeff2,lmM,conversion
      real*8 ln2,zeta2,zeta3
      parameter ( ln2   = 0.6931471805599453094172321214581765680d0 )
      parameter ( zeta2 = 1.6449340668482264364724151666460251892d0 )
      parameter ( zeta3 = 1.2020569031595942853997381615114499908d0 )

      real*8 mbOS,mcOS,nlight
      parameter ( mcOS = 1.6d0 )
      parameter ( nlight = 4d0 ) ! number of light quark flavours

      ! strong coupling
      api = pwhg_alphas( mu**2, st_lambda5MSB, st_nlight) / pi

      ! scale
      mbOS= ph_bmass
      lmM= log( mu**2 / mbOS**2 )

      ! coefficients
      coeff1= -CF - (3*CF*lmM)/4
      coeff2= ((-1111*CA*CF)/384 + (7*CF**2)/128 - 
     $     (185*CA*CF*lmM)/96 + (21*CF**2*lmM)/32 - (11*CA*CF*lmM**2)/32 + 
     $     (9*CF**2*lmM**2)/32 + (143*CF*TF)/96 + (13*CF*lmM*TF)/24 + (CF*lmM**2*TF)/8 + 
     $     (71*CF*nlight*TF)/96 + (13*CF*lmM*nlight*TF)/24 + (CF*lmM**2*nlight*TF)/8 + 
     $     (CA*CF*zeta2)/2 - (15*CF**2*zeta2)/8 - (3*CA*CF*ln2*zeta2)/2 + 3*CF**2*ln2*zeta2 - 
     $     CF*TF*zeta2 + (CF*nlight*TF*zeta2)/2 + (3*CA*CF*zeta3)/8 - (3*CF**2*zeta3)/4)

      ! conversion factor
      conversion= 1d0
      ! 1loop
      conversion= conversion + api*coeff1
      ! 2loop
      conversion= conversion + api**2*coeff2
      ! 2loop, heavy-flavour
      conversion= conversion + api**2*( -4d0/3d0*delta(mbOS,mbOS) -4d0/3d0*delta(mbOS,mcOS) )

      ! result
      mb_msbar = mbOS * conversion

      return
      end


c#######################################################################
!>>   function for mass corrections to on-shell -> MS-bar mass relation
!>>   according to two loop running from RunDec.m: mOS2mMS[...]
      function delta(m1,m2)
      implicit none
      include 'pwhg_math.h'
      real*8 delta
      real*8 m1,m2
      real*8 x

      x= m2/m1
      
      if( x.gt.1d0  )then
         write(*,*) "delta (mass convertion): x > 1"
         stop
      elseif( x.lt.0d0 )then
         write(*,*) "delta (mass convertion): x < 0"
         stop
      endif
      
      delta= pi**2/8d0*x - (0.597d0)*x**2 + (0.230d0)*x**3
      
      return
      end function delta
