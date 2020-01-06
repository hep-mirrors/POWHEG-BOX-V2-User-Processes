c#######################################################################
c#######################################################################
!     This function returns value of the Sudakov form factor, evaluater
!     according to conventions of 1412.2126.
!     Input parameters:
!     >> y3 <==> three-jet resolution
!     >> xv <==> resummation scale variation

      function sudakov(y3,xv)
      implicit none

      include 'pwhg_math.h'
      include 'pwhg_st.h'
      include 'math_const.f'
      include 'PhysPars.h'

      real*8 sudakov,y3,xv

      real*8 pwhg_alphas,powheginput
      external pwhg_alphas,powheginput

      real*8 as
      real*8 g1,g2,g3,dg1,dg2,ddg1
      real*8 LL,lRENsq,theExponent

      real*8 beta0,beta1,beta2
      real*8 A1,A2,A3,B1,B2,kCMW
      common/qcdbeta/beta0,beta1,beta2
      common/qcdcoef/A1,A2,A3,B1,B2,kCMW

      logical sudscalevar
      common/sudscalevar/sudscalevar

      real*8 xx,xsq,omx,lomx,lxv2,Qsq
      common/xvalues/lxv2

      real*8 gg1,gg2,gg3,dgg1,dgg2,ddgg1

      logical ini
      data ini/.true./
      save ini

      logical xdebugging
      parameter (xdebugging=.false.)

c-----------------------------------------------------------------------
      if( ini )then
        call qcd_resummation_init()
        ini=.false.
      endif

c-----------------------------------------------------------------------
!     !>> physical parameters
      Qsq=ph_hmass**2
      as= pwhg_alphas(st_muren2, st_lambda5MSB, st_nlight)

!     !>> compute lambda eq(B.2); irrespectable for "sudscalevar":
      xx= -as*beta0*log( y3/xv )

!     !>> check if we are safe from hitting the Landau pole
      if( xx.ge.1 )then
        sudakov=0d0
        return
      endif

!     !>> if lower-scale > hard-scale, then sudakov=1
      if( xx.le.0 )then
        sudakov=1d0
        return
      endif

c-----------------------------------------------------------------------
!     !>> practical variables
      omx = 1d0 - xx
      xsq = xx**2
      lomx= log(omx)
      lxv2=log(xv**2)

c-----------------------------------------------------------------------
!     !>> Sudakov radiator:
      g1= gg1(xx)
      g2= gg2(xx)
      g3= gg3(xx)

      LL=log(xv/y3)
      theExponent = LL*g1 + g2 + (as/pi)*g3

!>> rough cut-off
      if( theExponent.lt.-10d0 )then
        sudakov= 0d0
        return
      endif

c-----------------------------------------------------------------------
!     !>> For actual scale dependence look into "qcd_resummation_init"
!     !>> and variation of A1,A2,B1,B2 coeffiicents (as it is done in
!     !>> Appendix B of 1212.4504).
!     !>> renormalisation scale dependence
      if( sudscalevar )then
        dg1=  dgg1(xx)
        dg2=  dgg2(xx)
        ddg1= ddgg1(xx)

!     !>> log( mur^2 / Q^2 ) = log( st_renfact^2*mh^2 / (mh)^2 )
        lRENsq=log(st_renfact**2)
        g1 = g1
        g2 = g2 + (xsq/4d0)*dg1*lRENsq
        g3 = g3
     $       + pi*beta0*(xx/2d0) *dg2*lRENsq
     $       + pi*beta1/beta0*(xsq/4d0)*dg1*lRENsq
     $       + pi*beta0*(xsq/4d0)*dg1*lRENsq**2
     $       + pi*beta0*half*(xsq/4d0)*(xx/2d0)*ddg1*lRENsq**2
      endif

c-----------------------------------------------------------------------
!     !>> cosntruct the exponent for a single quark leg
      LL=log(xv/y3)
      theExponent = LL*g1 + g2 + (as/pi)*g3

c-----------------------------------------------------------------------
!     !>> Sudakov form factor (two for two legs, but 1/2 because we
!     !>> square the Sudakov):
      sudakov=exp( +1d0 * theExponent )

      return
      end



c#######################################################################
c#######################################################################
!     This function provides first order expansion of the Sudakov form
!     factor

      function expsudakov(y3,xv)
      implicit none

      include 'pwhg_math.h'
      include 'pwhg_st.h'
      include 'math_const.f'
      include 'PhysPars.h'

      real*8 expsudakov,y3,xv,den

      real*8 pwhg_alphas,powheginput
      external pwhg_alphas,powheginput

      real*8 as,xx
      real*8 omx,lomx,xsq
      real*8 g1,g2,g3,dg1,dg2,ddg1,hh
      real*8 LL,lRENsq,lxv2

      real*8 beta0,beta1,beta2
      real*8 A1,A2,A3,B1,B2,kCMW
      common/qcdbeta/beta0,beta1,beta2
      common/qcdcoef/A1,A2,A3,B1,B2,kCMW

      logical sudscalevar
      common/sudscalevar/sudscalevar

      real*8 gg1,gg2,gg3,dgg1,dgg2,ddgg1,gg3zero,Qsq

      logical ini
      data ini/.true./
      save ini

c-----------------------------------------------------------------------
      if( ini )then
        call qcd_resummation_init()
        ini=.false.
      endif

c-----------------------------------------------------------------------

!     !>> physical parameters
      Qsq=ph_hmass**2
      as= pwhg_alphas(st_muren2, st_lambda5MSB, st_nlight)

!     !>> compute lambda eq(B.2):
      xx= -as*beta0*log(y3/xv)

!     !>> check if we are safe from hitting the Landau pole
      if( xx.ge.1 )then
        expsudakov=0d0
        return
      endif

!     !>> if lower-scale > hard-scale, then sudakov=1
      if( xx.le.0 )then
        expsudakov=0d0
        return
      endif

c-----------------------------------------------------------------------
!     !>> practical variables
      omx = 1d0 - xx
      xsq = xx**2
      lomx= log(omx)
      lxv2=log(xv**2)

c-----------------------------------------------------------------------
!     !>> expsudakov for single quark leg:
      LL=log(xv/y3)

      expsudakov=
     $     - 8*B1*beta0*LL
     $     - 4*A1*beta0*LL**2
     $     + 4*B1*beta0*lxv2
     $     + 4*A1*beta0*LL*lxv2
     $     - A1*beta0*lxv2**2
!     !this bit is removed from MiNLO formula:
!     $     + 32*beta0*hh(0d0)

      den= 32 * beta0 * pi

      expsudakov= expsudakov / den

c-----------------------------------------------------------------------
!     !>> Sudakov form factor (two for two legs, but 1/2 because we
!     !>> square the Sudakov):
      expsudakov =  +1d0 * expsudakov

      return
      end




c#######################################################################
      subroutine sudakov_exponent(mu2,q1sq,q2sq,exponent,test1,ii,test2)
      implicit none

      real*8 mu2,q1sq,q2sq,exponent,test1,test2,ii
!     !>> DUMMY ROUTINE
!     !>> CHECK THIS!!!
      write(*,*)'ERROR: this routine has not been implemented...'
      write(*,*)'check if everything is ok...'
      stop
      return
      end



c#######################################################################
c#######################################################################
      subroutine qcd_resummation_init()
      implicit none

      include 'math_const.f'
      include 'pwhg_math.h'
      include 'pwhg_st.h'

      real*8 beta0,beta1,beta2
      real*8 A1,A2,A3,B1,B2,kCMW
      common/qcdbeta/beta0,beta1,beta2
      common/qcdcoef/A1,A2,A3,B1,B2,kCMW
      real*8 B2old

      logical sudscalevar
      common/sudscalevar/sudscalevar

      real*8 const1,const2,powheginput
      common/const_hack/const1,const2

      real*8 lREN
      
      write(*,*)'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'

!     !>> sudscalevar
      if(powheginput('#sudscalevar').eq.0) then
        write(*,*)'>> sufscalevar = 0'
        sudscalevar = .false.
        lREN=0d0
      else
        write(*,*)'>> sufscalevar = 1'
        sudscalevar = .true.
        lREN=log(st_renfact)
      endif


!     !>> QCD-beta function coefficients
      beta0= (11*CA - 2*st_nlight)/(12*pi)
      beta1= (17*CA**2 - 5*CA*st_nlight - 3*CF*st_nlight)/(24*pi2)
      beta2= ( 2857*CA**3
     $     +   (54*CF**2-615*CF*CA-1415*CA**2)*st_nlight
     $     +   (66*CF+79*CA)*st_nlight**2
     $     )/(3456*pi**3)

!     !>> QCD-resummation coefficients
!     !>> as given in Appendix B of 1412.2126
      kCMW= ( CA*(67d0/9d0-pi2/3d0) - 10d0/9d0*st_nlight )

      A1= 2d0*CF

      B1= -3d0*CF

      A2= CF*kCMW

!     !>> according to (B.19) and (B.20) of 1412.2126
      B2= -2*(
     $     (-pi2/2 + 3d0/8 + 6*zeta3)*CF**2
     $     + (11*pi2/18 + 17d0/24 - 3*zeta3 )*CF*CA
     $     + (-1d0/6 - 2*pi2/9)*CF*half*st_nlight
     $     )
     $     + 2*pi*beta0*(pi2/6)*CF

      write(*,*)''
      write(*,*)'>> B2 = ',B2,'  (pure)'

!>>   shift B2 to include Hbb virtual corrections
      B2= B2
     $     + 2*pi*beta0*(pi2 - 2d0 + pi2/6d0)*CF !>> add Virt(Hbb)
      write(*,*)'>> B2 = ',B2,'  (with Hbb virtual corrections)'

!>>   add multiple-emissions corrections (from NNLL formula)
      B2old= B2
      call NNLL_corrections(B2old,B2)
      write(*,*)'>> B2 = ',B2,'  (with y3 NNLL corrections)'
      write(*,*)'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'

      A3= 0d0                   !!>> this does not matter for MiNLO' purposes

      return
      end



c#######################################################################
c#######################################################################
      function hh(xx)
      implicit none

      include 'pwhg_math.h'
      include 'math_const.f'

      real*8 hh

      real*8 beta0,beta1,beta2
      real*8 A1,A2,A3,B1,B2,kCMW
      common/qcdbeta/beta0,beta1,beta2
      common/qcdcoef/A1,A2,A3,B1,B2,kCMW

      logical sudscalevar
      common/sudscalevar/sudscalevar

      real*8 xx,xsq,omx,lomx,lxv2
      common/xvalues/lxv2

      real*8 B2plus

!     !>> practical variables
      omx = 1d0 - xx
      xsq = xx**2
      lomx= log(omx)

!     !>> according to (B.15) with change: lambda --> lambda/2
      hh=
     $     - A3*(xsq/4)/(8*pi2*beta0**2*omx**2)
     $     - B2*(xx/2)/(4*pi*beta0*omx)

      return
      end

c#######################################################################
      function gg1(xx)
      implicit none

      include 'pwhg_math.h'

      real*8 gg1,den1

      real*8 beta0,beta1,beta2
      real*8 A1,A2,A3,B1,B2,kCMW
      common/qcdbeta/beta0,beta1,beta2
      common/qcdcoef/A1,A2,A3,B1,B2,kCMW

      logical sudscalevar
      common/sudscalevar/sudscalevar

      real*8 xx,xsq,omx,lomx,lxv2
      common/xvalues/lxv2

!     !>> practical variables
      omx = 1d0 - xx
      xsq = xx**2
      lomx= log(omx)

      gg1= A1*lomx + A1*xx
      den1= 4 * beta0 * pi * xx

      gg1= gg1 / den1

      return
      end

c#######################################################################
      function gg2(xx)
      implicit none

      include 'pwhg_math.h'

      real*8 gg2,den2

      real*8 beta0,beta1,beta2
      real*8 A1,A2,A3,B1,B2,kCMW
      common/qcdbeta/beta0,beta1,beta2
      common/qcdcoef/A1,A2,A3,B1,B2,kCMW

      logical sudscalevar
      common/sudscalevar/sudscalevar

      real*8 xx,xsq,omx,lomx,lxv2
      common/xvalues/lxv2

!     !>> practical variables
      omx = 1d0 - xx
      xsq = xx**2
      lomx= log(omx)

      gg2=
     $     -(A2*beta0*lomx) + 2*B1*beta0**2*lomx*Pi
     $     + 2*A1*beta1*lomx*Pi + A1*beta1*lomx**2*Pi
     $     - A2*beta0*xx + A2*beta0*lomx*xx
     $     + 2*A1*beta1*Pi*xx - 2*B1*beta0**2*lomx*Pi*xx
     $     - A1*beta1*lomx**2*Pi*xx + A1*beta0**2*lxv2*Pi*xx

      den2= 8 * beta0**3 * pi2 * omx

      gg2= gg2 / den2

      return
      end

c#######################################################################
      function gg3(xx)
      implicit none

      include 'pwhg_math.h'

      real*8 gg3,hh,den3,hvalue

      real*8 beta0,beta1,beta2
      real*8 A1,A2,A3,B1,B2,kCMW
      common/qcdbeta/beta0,beta1,beta2
      common/qcdcoef/A1,A2,A3,B1,B2,kCMW

      logical sudscalevar
      common/sudscalevar/sudscalevar

      real*8 xx,xsq,omx,lomx,lxv2
      common/xvalues/lxv2

!     !>> practical variables
      omx = 1d0 - xx
      xsq = xx**2
      lomx= log(omx)
      hvalue=hh(xx)

      gg3=
     $     -4*A2*beta0*beta1*lomx
     $     + 8*B1*beta0**2*beta1*lomx*Pi + 8*A1*beta0*beta2*lomx*Pi
     $     + 4*A1*beta1**2*lomx**2*Pi + 4*B1*beta0**4*lxv2*Pi
     $     - A1*beta0**4*lxv2**2*Pi - 4*A2*beta0*beta1*xx
     $     + 8*A2*beta0*beta1*lomx*xx + 2*A2*beta0**3*lxv2*xx
     $     + 8*B1*beta0**2*beta1*Pi*xx + 8*A1*beta0*beta2*Pi*xx
     $     - 8*B1*beta0**2*beta1*lomx*Pi*xx
     $     + 8*A1*beta1**2*lomx*Pi*xx - 16*A1*beta0*beta2*lomx*Pi*xx
     $     - 8*A1*beta1**2*lomx**2*Pi*xx - 4*B1*beta0**4*lxv2*Pi*xx
     $     - 4*A1*beta0**2*beta1*lomx*lxv2*Pi*xx
     $     + 6*A2*beta0*beta1*xx**2 - 8*B1*beta0**2*beta1*Pi*xx**2
     $     + 4*A1*beta1**2*Pi*xx**2 - 12*A1*beta0*beta2*Pi*xx**2
     $     - 8*A1*beta1**2*lomx*Pi*xx**2
     $     + 8*A1*beta0*beta2*lomx*Pi*xx**2
     $     + 32*beta0**4*Pi*hvalue*omx**2

      den3= 32 * beta0**4 * pi * omx**2

      gg3= gg3 / den3

      return
      end

c#######################################################################
      function dgg1(xx)
      implicit none

      include 'pwhg_math.h'

      real*8 dgg1

      real*8 beta0,beta1,beta2
      real*8 A1,A2,A3,B1,B2,kCMW
      common/qcdbeta/beta0,beta1,beta2
      common/qcdcoef/A1,A2,A3,B1,B2,kCMW

      logical sudscalevar
      common/sudscalevar/sudscalevar

      real*8 xx,xsq,omx,lomx,lxv2
      common/xvalues/lxv2

!     !>> practical variables
      omx = 1d0 - xx
      xsq = xx**2
      lomx= log(omx)

      dgg1=
     $     -A1*(xx+lomx*omx)/(4*beta0*Pi*omx*xsq)

      return
      end

c#######################################################################
      function dgg2(xx)
      implicit none

      include 'pwhg_math.h'

      real*8 dgg2

      real*8 beta0,beta1,beta2
      real*8 A1,A2,A3,B1,B2,kCMW
      common/qcdbeta/beta0,beta1,beta2
      common/qcdcoef/A1,A2,A3,B1,B2,kCMW

      logical sudscalevar
      common/sudscalevar/sudscalevar

      real*8 xx,xsq,omx,lomx,lxv2
      common/xvalues/lxv2

!     !>> practical variables
      omx = 1d0 - xx
      xsq = xx**2
      lomx= log(omx)

      dgg2=
     $     (
     $     2*A1*beta1*lomx*Pi*xx
     $     +beta0*(A1*beta0*lxv2*Pi - 2*B1*beta0*Pi*omx - A2*xx)
     $     )/(8*beta0**3*Pi**2*omx**2)

      return
      end

c#######################################################################
      function ddgg1(xx)
      implicit none

      include 'pwhg_math.h'

      real*8 ddgg1

      real*8 beta0,beta1,beta2
      real*8 A1,A2,A3,B1,B2,kCMW
      common/qcdbeta/beta0,beta1,beta2
      common/qcdcoef/A1,A2,A3,B1,B2,kCMW

      logical sudscalevar
      common/sudscalevar/sudscalevar

      real*8 xx,xsq,omx,lomx,lxv2
      common/xvalues/lxv2

!     !>> practical variables
      omx = 1d0 - xx
      xsq = xx**2
      lomx= log(omx)

      ddgg1=
     $     ( A1*(2*lomx*omx**2 + (3*omx-1)*xx) )
     $     /(4*beta0*Pi*omx**2*xx**3)

      return
      end





c#######################################################################
      subroutine NNLL_corrections(B2in,B2out)
      implicit none
!     !>> in this subroutine we include corrections to the B2
!     !>> coefficient that arise from NNLL acurate y3-resummation
!     !>> For details: see comments below...

      include 'math_const.f'
      include 'pwhg_math.h'
      include 'pwhg_st.h'

      real*8 B2in,B2out,xRad2
      real*8 dF_clust,dF_correl,dF_sc,dF_hc,dF_rec,dF_wa
      real*8 int1,int2,deltaF

      real*8 beta0,beta1,beta2
      real*8 A1,A2,A3,B1,B2,kCMW
      common/qcdbeta/beta0,beta1,beta2
      common/qcdcoef/A1,A2,A3,B1,B2,kCMW

      int1= -0.493943d0
      int2= 2.1011d0*CA - 0.01496d0*st_nlight

      dF_clust= CF**2/pi * int1
      dF_correl= CF/(2d0*pi) * int2
      dF_sc= 0d0
      dF_hc= 0d0
!>>   these corrections do not enter MiNLO Sudakov
c$$$  dF_rec= CF*beta0*( 3d0/2d0 - pi**2/6d0 - 3d0*log(2d0)/2d0 )
c$$$  dF_wa= -CF*pi**2/24d0 * beta0


      xRad2= CF/2d0/pi * beta0  !>> we strip alfa and LOG
      dF_clust= 2d0*CF/beta0 * int1 * xRad2
      dF_correl= xRad2/beta0 * int2

      deltaF=
     $     dF_clust
     $     + dF_correl
     $     + dF_sc
     $     + dF_hc
!>>   these corrections do not enter MiNLO Sudakov
c$$$  $     + dF_rec
c$$$  $     + dF_wa

      deltaF= deltaF/pi

      deltaF = deltaF * 2d0

      B2out= B2in - (2d0*pi)**2*deltaF

      return
      end

!     !>> COMMENTS based on 1607.03111:
!     !>> eq(4)
!     !---> Sigma(y3) = exp(-RNNLL) * ( F[NLL] + (as/pi)*dF[NNLL] )
!     !---> F[NLL] = 1
!     !---> dF[NNLL] =
!     !--->          dF[clust]   (clustering corrections)
!     !--->        + dF[correl]  (correlated correction)
!     !--->        + dF[sc]      (soft-collinear correction)
!     !--->        + dF[hc]      (hard-collinear correction)
!     !--->        + dF[rec]     (recoil correction)
!     !--->        + dF[wa]      (soft-wide-anvle correction)
!     !>>
!     !>>
