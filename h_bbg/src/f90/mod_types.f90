module mod_types
  implicit none
  integer,parameter :: xprec = kind(1d0)
  integer,parameter :: xdble = kind(1d0)
  !
  real(xprec), parameter:: zero  =  0.0_xprec
  real(xprec), parameter:: one   =  1.0_xprec
  real(xprec), parameter:: two   =  2.0_xprec
  real(xprec), parameter:: three =  3.0_xprec
  real(xprec), parameter:: four  =  4.0_xprec
  real(xprec), parameter:: five  =  5.0_xprec
  real(xprec), parameter:: six   =  6.0_xprec
  real(xprec), parameter:: eight =  8.0_xprec
  real(xprec), parameter:: nine  =  9.0_xprec
  real(xprec), parameter:: ten   = 10.0_xprec
  !
  real(xprec), parameter:: half  = one/two
  real(xprec), parameter:: sqrt2 = sqrt(two)
  !
  real(xprec), parameter:: pi    = 3.141592653589793238462643383279502884197169399375105820974944592_xprec
  real(xprec), parameter:: pisq  = pi**2
  !
  real(xprec), parameter:: zeta2 = 1.644934066848226436472415166646025189218949901206798437735558229_xprec
  real(xprec), parameter:: zeta3 = 1.202056903159594285399738161511449990764986292340498881792271555_xprec
  real(xprec), parameter:: ln2   = 0.693147180559945309417232121458176568075500134360255254120680009_xprec
  !
  real(xprec), parameter:: xinfinity= HUGE(zero)
  real(xprec), parameter:: xtiny= (10.0_xprec)**(-20)
end module mod_types
