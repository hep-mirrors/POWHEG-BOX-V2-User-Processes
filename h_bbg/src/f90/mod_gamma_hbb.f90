module mod_gamma_hbb
  use mod_types
  use mod_alphas
  implicit none

  private
  public:: gamma_hbb_lo
  public:: gamma_hbb_nlo
  public:: gamma_hbb_nnlo
  public:: mbConversion

  ! Fermi's constant
  real(xprec),parameter:: GFermi= 1.1663787e-05_xprec
  ! colour factors
  real(xprec),parameter:: CF = four/three
  real(xprec),parameter:: CA = three
  real(xprec),parameter:: TF = half
  ! flavours
  real(xprec),parameter:: nflav = five   ! number of active flavours
  real(xprec),parameter:: nlight = four  ! number of light flavours
  

contains
  !>> returns LO width in MSbar scheme
  function gamma_hbb_lo(mh,mb,xren) result(res)
    implicit none
    real(xprec):: res
    real(xprec),intent(in):: mh,mb,xren
    real(xprec):: mbMSbar,mur

    mur= mh * xren
    mbMSbar= mbConversion(mb,mur) ! change mbpole -> mbMSbar(mur)

    res= sqrt2 * GFermi * mbMSbar**2 * mh * three / (eight*pi)

    return
  end function gamma_hbb_lo

  !>> returns NLO width in MSbar scheme
  function gamma_hbb_nlo(mh,mb,xren) result(res)
    implicit none
    real(xprec):: res
    real(xprec),intent(in):: mh,mb,xren
    real(xprec):: mur
    real(xprec):: as,asOn2pi,logx
    real(xprec):: correction
    integer,parameter:: nloop = 2

    mur= mh * xren
    as= alphas_running(mur**2,nloop)
    asOn2pi= as/two/pi

    LOGX = log( mur**2 / mh**2 )
    correction = ason2pi * CF * ( 17d0/2d0 + 3d0*LOGX )

    res= gamma_hbb_lo(mh,mb,xren) * ( one + correction )

    return
  end function gamma_hbb_nlo
  
  !>> returns NNLO width in MSbar scheme
  function gamma_hbb_nnlo(mh,mb,xren) result(res)
    implicit none
    real(xprec):: res
    real(xprec),intent(in):: mh,mb,xren
    real(xprec):: mur
    real(xprec):: as,api,logx
    ! colour factors
    real(xprec):: gam0m,gam1m,s1,s2,beta0
    real(xprec):: correction1,correction2,fullcorrection
    integer,parameter:: nloop = 2

    mur= mh * xren
    as= alphas_running(mur**2,nloop)
    api= as/pi

    LOGX= log(mur**2/mh**2)

    gam0m= (3d0*CF)/4d0
    gam1m= (3d0/2d0*CF**2 + 97d0/6d0*CF*CA - 10d0/3d0*CF*TF*nflav )/16d0

    s1= (17d0/4d0)*CF
    s2= ( 691d0/64d0 - 3d0/8d0*pisq - 9d0/4d0*zeta3 )*CF**2 &
        &     + ( 893d0/64d0 - 11d0/48d0*pisq - 31d0/8d0*zeta3 )*CF*CA &
        &     + ( -65d0/16d0 + pisq/12d0 + zeta3 )*CF*TF*nflav

    beta0 = ( 11d0/3d0*CA - 4d0/3d0*TF*nflav )/4d0

    correction1= ( s1 + 2d0*gam0m*LOGX )

    correction2= ( &
        &     s2 &
        &     + LOGX    *( s1*beta0 + 2*s1*gam0m + 2*gam1m ) &
        &     + LOGX**2 *( beta0*gam0m + 2*(gam0m)**2 ) &
        &     )

    fullcorrection = one + api   * correction1 + api**2* correction2

    res= gamma_hbb_lo(mh,mb,xren) * fullcorrection

    return
  end function gamma_hbb_nnlo

  !>> conversion pole mass -> MSbar mass
  !>> according to two loop running from RunDec.m: mOS2mMS[...]
  function mbConversion(mb,mur) result(res)
    implicit none
    real(xprec):: res
    real(xprec),intent(in):: mb,mur
    real(xprec):: api
    integer,parameter:: nloop = 2
    real(xprec),parameter :: mcOS = 1.6_xprec  ! charm mass
    real(xprec):: mbOS
    real(xprec):: conversion,coeff1,coeff2,lmM

    ! strong coupling
    api= alphas_running(mur**2,nloop) / pi

    ! bmass
    mbOS= mb

    ! scale
    lmM= log( mur**2 / mbOS**2 )

    ! coefficients
    coeff1= -CF - (3*CF*lmM)/4
    coeff2= ((-1111*CA*CF)/384 + (7*CF**2)/128 - &
        &   (185*CA*CF*lmM)/96 + (21*CF**2*lmM)/32 - (11*CA*CF*lmM**2)/32 + &
        &   (9*CF**2*lmM**2)/32 + (143*CF*TF)/96 + (13*CF*lmM*TF)/24 + (CF*lmM**2*TF)/8 + &
        &   (71*CF*nlight*TF)/96 + (13*CF*lmM*nlight*TF)/24 + (CF*lmM**2*nlight*TF)/8 + &
        &   (CA*CF*zeta2)/2 - (15*CF**2*zeta2)/8 - (3*CA*CF*ln2*zeta2)/2 + 3*CF**2*ln2*zeta2 - &
        &   CF*TF*zeta2 + (CF*nlight*TF*zeta2)/2 + (3*CA*CF*zeta3)/8 - (3*CF**2*zeta3)/4)

    ! conversion factor
    conversion= one
    ! 1loop
    conversion= conversion + api*coeff1
    ! 2loop
    conversion= conversion + api**2*coeff2
    ! 2loop, heavy-flavour
    conversion= conversion + api**2*( -four/three*delta(mbOS,mbOS) -four/three*delta(mbOS,mcOS) )

    ! result
    res= mbOS * conversion

    return
  end function mbConversion

  !> function for mass corrections to on-shell -> MS-bar mass relation
  !>> according to two loop running from RunDec.m: mOS2mMS[...]
  function delta(m1,m2) result(res)
    implicit none
    real(xprec):: res
    real(xprec),intent(in):: m1,m2
    real(xpreC):: x

    x= m2/m1

    if( x.gt.one  ) call error("delta (mass convertion): x > 1")
    if( x.lt.zero ) call error("delta (mass convertion): x < 0")

    res= pisq/eight*x - (0.597_xprec)*x**2 + (0.230_xprec)*x**3

    return
  end function delta

end module mod_gamma_hbb
