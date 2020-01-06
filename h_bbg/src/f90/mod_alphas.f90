module mod_alphas
  use mod_types
  use mod_error
  implicit none

  ! default values
  real(xprec),save :: asmz_value = 0.1181_xprec
  real(xprec),save :: zmass_value = 91.1876_xprec

  !>> colour factors
  real(xprec), parameter:: qcd_Nc= three
  real(xprec), parameter:: qcd_CF= four/three
  real(xprec), parameter:: qcd_CA= three
  real(xprec), parameter:: qcd_TF= half
  real(xprec), parameter:: qcd_nf= five

  !>> running of the coupling (QCD-beta-function)
  real(xprec), parameter:: qcd_beta0= (11*qcd_CA - 2*qcd_nf)/(12*pi)
  real(xprec), parameter:: qcd_beta1= (17*qcd_CA**2 - 5*qcd_CA*qcd_nf - 3*qcd_CF*qcd_nf)/(24*pisq)

contains
  function alphas_running(Qsq,nloop) result(res)
    implicit none
    real(xprec):: res
    real(xprec),intent(in):: Qsq
    integer,intent(in):: nloop
    real(xprec):: XRUN,LXRUN
    real(xprec):: beta0,beta1,beta2
    real(xprec):: coeff1,coeff2,coeff3
    real(xprec):: mzsq

    if( nloop.lt.1 ) call error("alphas_running: nloop < 1, cannot run!")
    if( nloop.gt.2 ) call error("alphas_running: nloop > nloopmax, cannot run!")

    !
    mzsq= zmass_value**2

    !>> QCD-beta-function
    beta0= qcd_beta0
    beta1= qcd_beta1

    XRUN= one + beta0*(asmz_value)*log(Qsq/mzsq)
    LXRUN= log(XRUN)

    coeff1= +one/XRUN
    coeff2= -beta1/beta0*LXRUN/XRUN**2

    res= (asmz_value) * coeff1
    if( nloop.eq.1 ) return

    res= res + (asmz_value)**2 * coeff2
    if( nloop.eq.2 ) return

    return
  end function alphas_running
end module mod_alphas
