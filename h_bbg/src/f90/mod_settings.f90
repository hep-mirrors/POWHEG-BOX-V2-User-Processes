module mod_settings
  use mod_types
  implicit none

  !>> hdec program modes
  integer,parameter :: imode_histprep  = 10001
  integer,parameter :: imode_histmerge = 10002
  integer,parameter :: imode_minnlo    = 10003
  integer,parameter :: imode_interface = 10004

  !>> default values
  real(xprec),save :: y3ref_value = exp( -four )
  integer,save :: y3pow_value = 2

  !>> default branching ratio
  real(xprec),save :: BrHbb_value = 0.5824_xprec

  !>> default b-quark mass (used for Yukawa calculation if dealing with massless b-quarks in event file)
  real(xprec),save :: mbOS_value= 4.92_xprec

end module mod_settings
