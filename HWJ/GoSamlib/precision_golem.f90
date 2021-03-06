! 
!****h* src/module/precision_golem
! NAME
!
!  Module precision_golem
!
! USAGE
!
!  use precision_golem
!
! DESCRIPTION
!
!  This module defines the parameter ki which gives the representation 
!  of the real and complex numbers in golem
!
! OUTPUT
!
!  The integer parameter ki
!  The integer parameter ki_avh, which is the real kind used in avh_olo
!  The integer parameter ki_lt, which is the real kind used in LoopTools
!
! USES
!
!  No uses
!
!*****
module precision_golem
    !
    integer, parameter :: ki=kind(1.0d0)
!AC!integer, parameter :: ki_lt=kind(1.0d0)
    integer, parameter :: ki_avh=kind(1.0d0)
    !
end module precision_golem

