module     p5_usbar_epnebbbarg_samuraih3
   ! This file has been generated for samurai version 2.1.1
   ! Please, not the interface changes:
   ! 2.0 -> 2.1   : mu2 has changed from real to complex.
   ! 2.1 -> 2.1.1 : samurai_cm and samurai_rm have been made public
   !                we call them directly instead of the generic routine
   !                in order to avoid problems with some older versions of
   !                gfortran.
   !              + passing of invariants has been added.
   use precision, only: ki_sam => ki
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_scalar_cache
   implicit none
   private
   public :: reduce_group0
   public :: reduce_group1
   public :: reduce_group2
   public :: reduce_group3
   public :: reduce_group4
   public :: reduce_group5
   public :: reduce_group6
   public :: reduce_group7
   public :: reduce_group8
   public :: reduce_group9
   public :: reduce_group10
   public :: reduce_group11
   public :: reduce_group12
   public :: reduce_group13
   public :: reduce_group14
   public :: reduce_group15
   public :: reduce_group16
   public :: reduce_group17
   public :: reduce_group18
   public :: reduce_group19
   public :: reduce_group20
contains
!---#[ grouped numerators for samurai:
!-----#[ function numeval_group0:
function     numeval_group0(icut, Q, mu2) result(num)
   use p5_usbar_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7
   use p5_usbar_epnebbbarg_model
   use p5_usbar_epnebbbarg_d322h3l1, only: numerator_d322 => numerator_samurai
   implicit none
   integer, intent(in) :: icut
   complex(ki_sam), dimension(4), intent(in) :: Q
   complex(ki_sam), intent(in) :: mu2
   complex(ki_sam) :: num

   logical, dimension(0:1-1) :: nonzero
   real(ki_sam), dimension(0:3) :: R
   complex(ki_sam) :: Q2
   complex(ki_sam) ::denom1,denom2,denom3,denom4

   nonzero(:) = .true.
   Q2 = Q(4)*Q(4) - Q(1)*Q(1) - Q(2)*Q(2) - Q(3)*Q(3) - mu2

   select case(icut)
   case default
      R = real(k7+k6, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(k7, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = Q2
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 322:
   if(nonzero(0)) then
      num = num + numerator_d322(icut, Q, mu2)
   end if
   !-------#] Diagram 322:
end function numeval_group0
!-----#] function numeval_group0:
!-----#[ function numeval_group1:
function     numeval_group1(icut, Q, mu2) result(num)
   use p5_usbar_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7
   use p5_usbar_epnebbbarg_model
   use p5_usbar_epnebbbarg_d176h3l1, only: numerator_d176 => numerator_samurai
   use p5_usbar_epnebbbarg_d318h3l1, only: numerator_d318 => numerator_samurai
   implicit none
   integer, intent(in) :: icut
   complex(ki_sam), dimension(4), intent(in) :: Q
   complex(ki_sam), intent(in) :: mu2
   complex(ki_sam) :: num

   logical, dimension(0:2-1) :: nonzero
   real(ki_sam), dimension(0:3) :: R
   complex(ki_sam) :: Q2
   complex(ki_sam) ::denom1,denom2,denom3,denom4

   nonzero(:) = .true.
   Q2 = Q(4)*Q(4) - Q(1)*Q(1) - Q(2)*Q(2) - Q(3)*Q(3) - mu2

   select case(icut)
   case(1)
      nonzero(0) = .false.
      R = real(-k7-k5, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom2 = 0.0_ki
      denom3 = Q2
      R = real(k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
   case(10)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = Q2
      R = real(k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
   case(21)
      nonzero(0) = .false.
      R = real(-k7-k5, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
   case(210)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
   case(31)
      nonzero(0) = .false.
      R = real(-k7-k5, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom2 = 0.0_ki
      denom3 = Q2
      denom4 = 0.0_ki
   case(310)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = Q2
      denom4 = 0.0_ki
   case(321)
      nonzero(0) = .false.
      R = real(-k7-k5, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
   case(3210)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
   case default
      R = real(-k7-k5, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom3 = Q2
      R = real(k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 176:
   if(nonzero(0)) then
      num = num + numerator_d176(icut, Q, mu2) * denom2
   end if
   !-------#] Diagram 176:
   !-------#[ Diagram 318:
   if(nonzero(1)) then
      num = num + numerator_d318(icut, Q, mu2)
   end if
   !-------#] Diagram 318:
end function numeval_group1
!-----#] function numeval_group1:
!-----#[ function numeval_group2:
function     numeval_group2(icut, Q, mu2) result(num)
   use p5_usbar_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7
   use p5_usbar_epnebbbarg_model
   use p5_usbar_epnebbbarg_d28h3l1, only: numerator_d28 => numerator_samurai
   use p5_usbar_epnebbbarg_d87h3l1, only: numerator_d87 => numerator_samurai
   use p5_usbar_epnebbbarg_d153h3l1, only: numerator_d153 => numerator_samurai
   use p5_usbar_epnebbbarg_d180h3l1, only: numerator_d180 => numerator_samurai
   use p5_usbar_epnebbbarg_d244h3l1, only: numerator_d244 => numerator_samurai
   use p5_usbar_epnebbbarg_d320h3l1, only: numerator_d320 => numerator_samurai
   implicit none
   integer, intent(in) :: icut
   complex(ki_sam), dimension(4), intent(in) :: Q
   complex(ki_sam), intent(in) :: mu2
   complex(ki_sam) :: num

   logical, dimension(0:6-1) :: nonzero
   real(ki_sam), dimension(0:3) :: R
   complex(ki_sam) :: Q2
   complex(ki_sam) ::denom1,denom2,denom3,denom4

   nonzero(:) = .true.
   Q2 = Q(4)*Q(4) - Q(1)*Q(1) - Q(2)*Q(2) - Q(3)*Q(3) - mu2

   select case(icut)
   case(0)
      nonzero(0) = .false.
      nonzero(1) = .false.
      denom1 = 0.0_ki
      R = real(k6, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom3 = Q2
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
   case(1)
      nonzero(3) = .false.
      nonzero(4) = .false.
      R = real(k7+k6, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom2 = 0.0_ki
      denom3 = Q2
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
   case(10)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = Q2
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
   case(2)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      R = real(k7+k6, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(k6, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom3 = 0.0_ki
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
   case(20)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      denom1 = 0.0_ki
      R = real(k6, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom3 = 0.0_ki
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
   case(21)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      R = real(k7+k6, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
   case(210)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
   case(30)
      nonzero(0) = .false.
      nonzero(1) = .false.
      denom1 = 0.0_ki
      R = real(k6, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom3 = Q2
      denom4 = 0.0_ki
   case(31)
      nonzero(3) = .false.
      nonzero(4) = .false.
      R = real(k7+k6, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom2 = 0.0_ki
      denom3 = Q2
      denom4 = 0.0_ki
   case(310)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = Q2
      denom4 = 0.0_ki
   case(32)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      R = real(k7+k6, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(k6, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom3 = 0.0_ki
      denom4 = 0.0_ki
   case(320)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      denom1 = 0.0_ki
      R = real(k6, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom3 = 0.0_ki
      denom4 = 0.0_ki
   case(321)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      R = real(k7+k6, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
   case(3210)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
   case default
      R = real(k7+k6, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(k6, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom3 = Q2
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 28:
   if(nonzero(0)) then
      num = num + numerator_d28(icut, Q, mu2) * denom1 * denom3
   end if
   !-------#] Diagram 28:
   !-------#[ Diagram 87:
   if(nonzero(1)) then
      num = num + numerator_d87(icut, Q, mu2) * denom1
   end if
   !-------#] Diagram 87:
   !-------#[ Diagram 153:
   if(nonzero(2)) then
      num = num + numerator_d153(icut, Q, mu2) * denom3
   end if
   !-------#] Diagram 153:
   !-------#[ Diagram 180:
   if(nonzero(3)) then
      num = num + numerator_d180(icut, Q, mu2) * denom2
   end if
   !-------#] Diagram 180:
   !-------#[ Diagram 244:
   if(nonzero(4)) then
      num = num + numerator_d244(icut, Q, mu2) * denom2 * denom3
   end if
   !-------#] Diagram 244:
   !-------#[ Diagram 320:
   if(nonzero(5)) then
      num = num + numerator_d320(icut, Q, mu2)
   end if
   !-------#] Diagram 320:
end function numeval_group2
!-----#] function numeval_group2:
!-----#[ function numeval_group3:
function     numeval_group3(icut, Q, mu2) result(num)
   use p5_usbar_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7
   use p5_usbar_epnebbbarg_model
   use p5_usbar_epnebbbarg_d13h3l1, only: numerator_d13 => numerator_samurai
   use p5_usbar_epnebbbarg_d84h3l1, only: numerator_d84 => numerator_samurai
   implicit none
   integer, intent(in) :: icut
   complex(ki_sam), dimension(4), intent(in) :: Q
   complex(ki_sam), intent(in) :: mu2
   complex(ki_sam) :: num

   logical, dimension(0:2-1) :: nonzero
   real(ki_sam), dimension(0:3) :: R
   complex(ki_sam) :: Q2
   complex(ki_sam) ::denom1,denom2,denom3,denom4,denom5

   nonzero(:) = .true.
   Q2 = Q(4)*Q(4) - Q(1)*Q(1) - Q(2)*Q(2) - Q(3)*Q(3) - mu2

   select case(icut)
   case(3)
      nonzero(0) = .false.
      R = real(-k2+k6+k5, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k2, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = Q2
      denom4 = 0.0_ki
      R = real(k3-k2+k6+k5+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(30)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      R = real(-k2, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = Q2
      denom4 = 0.0_ki
      R = real(k3-k2+k6+k5+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(31)
      nonzero(0) = .false.
      R = real(-k2+k6+k5, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = Q2
      denom4 = 0.0_ki
      R = real(k3-k2+k6+k5+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(310)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = Q2
      denom4 = 0.0_ki
      R = real(k3-k2+k6+k5+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(32)
      nonzero(0) = .false.
      R = real(-k2+k6+k5, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k2, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(k3-k2+k6+k5+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(320)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      R = real(-k2, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(k3-k2+k6+k5+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(321)
      nonzero(0) = .false.
      R = real(-k2+k6+k5, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(k3-k2+k6+k5+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(3210)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(k3-k2+k6+k5+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(43)
      nonzero(0) = .false.
      R = real(-k2+k6+k5, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k2, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = Q2
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(430)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      R = real(-k2, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = Q2
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(431)
      nonzero(0) = .false.
      R = real(-k2+k6+k5, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = Q2
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(4310)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = Q2
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(432)
      nonzero(0) = .false.
      R = real(-k2+k6+k5, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k2, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(4320)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      R = real(-k2, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(4321)
      nonzero(0) = .false.
      R = real(-k2+k6+k5, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case default
      R = real(-k2+k6+k5, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k2, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = Q2
      R = real(-k7, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k6+k5+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 13:
   if(nonzero(0)) then
      num = num + numerator_d13(icut, Q, mu2) * denom4
   end if
   !-------#] Diagram 13:
   !-------#[ Diagram 84:
   if(nonzero(1)) then
      num = num + numerator_d84(icut, Q, mu2)
   end if
   !-------#] Diagram 84:
end function numeval_group3
!-----#] function numeval_group3:
!-----#[ function numeval_group4:
function     numeval_group4(icut, Q, mu2) result(num)
   use p5_usbar_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7
   use p5_usbar_epnebbbarg_model
   use p5_usbar_epnebbbarg_d12h3l1, only: numerator_d12 => numerator_samurai
   use p5_usbar_epnebbbarg_d85h3l1, only: numerator_d85 => numerator_samurai
   implicit none
   integer, intent(in) :: icut
   complex(ki_sam), dimension(4), intent(in) :: Q
   complex(ki_sam), intent(in) :: mu2
   complex(ki_sam) :: num

   logical, dimension(0:2-1) :: nonzero
   real(ki_sam), dimension(0:3) :: R
   complex(ki_sam) :: Q2
   complex(ki_sam) ::denom1,denom2,denom3,denom4,denom5

   nonzero(:) = .true.
   Q2 = Q(4)*Q(4) - Q(1)*Q(1) - Q(2)*Q(2) - Q(3)*Q(3) - mu2

   select case(icut)
   case(2)
      nonzero(0) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k6+k5+k4, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = Q2
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(20)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      R = real(k3-k2+k6+k5+k4, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = Q2
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(21)
      nonzero(0) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = Q2
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(210)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = Q2
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(32)
      nonzero(0) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k6+k5+k4, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(320)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      R = real(k3-k2+k6+k5+k4, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(321)
      nonzero(0) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(3210)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(42)
      nonzero(0) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k6+k5+k4, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = Q2
      denom5 = 0.0_ki
   case(420)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      R = real(k3-k2+k6+k5+k4, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = Q2
      denom5 = 0.0_ki
   case(421)
      nonzero(0) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = Q2
      denom5 = 0.0_ki
   case(4210)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = Q2
      denom5 = 0.0_ki
   case(432)
      nonzero(0) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k6+k5+k4, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(4320)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      R = real(k3-k2+k6+k5+k4, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(4321)
      nonzero(0) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case default
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k6+k5+k4, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = Q2
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 12:
   if(nonzero(0)) then
      num = num + numerator_d12(icut, Q, mu2) * denom3
   end if
   !-------#] Diagram 12:
   !-------#[ Diagram 85:
   if(nonzero(1)) then
      num = num + numerator_d85(icut, Q, mu2)
   end if
   !-------#] Diagram 85:
end function numeval_group4
!-----#] function numeval_group4:
!-----#[ function numeval_group5:
function     numeval_group5(icut, Q, mu2) result(num)
   use p5_usbar_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7
   use p5_usbar_epnebbbarg_model
   use p5_usbar_epnebbbarg_d15h3l1, only: numerator_d15 => numerator_samurai
   use p5_usbar_epnebbbarg_d83h3l1, only: numerator_d83 => numerator_samurai
   implicit none
   integer, intent(in) :: icut
   complex(ki_sam), dimension(4), intent(in) :: Q
   complex(ki_sam), intent(in) :: mu2
   complex(ki_sam) :: num

   logical, dimension(0:2-1) :: nonzero
   real(ki_sam), dimension(0:3) :: R
   complex(ki_sam) :: Q2
   complex(ki_sam) ::denom1,denom2,denom3,denom4,denom5

   nonzero(:) = .true.
   Q2 = Q(4)*Q(4) - Q(1)*Q(1) - Q(2)*Q(2) - Q(3)*Q(3) - mu2

   select case(icut)
   case(3)
      nonzero(0) = .false.
      R = real(-k3-k7-k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k3-k7-k6-k5-k4, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k2, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      R = real(-k7, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(30)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      R = real(-k3-k7-k6-k5-k4, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k2, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      R = real(-k7, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(31)
      nonzero(0) = .false.
      R = real(-k3-k7-k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k2, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      R = real(-k7, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(310)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k2, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      R = real(-k7, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(32)
      nonzero(0) = .false.
      R = real(-k3-k7-k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k3-k7-k6-k5-k4, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k7, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(320)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      R = real(-k3-k7-k6-k5-k4, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k7, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(321)
      nonzero(0) = .false.
      R = real(-k3-k7-k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k7, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(3210)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k7, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(43)
      nonzero(0) = .false.
      R = real(-k3-k7-k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k3-k7-k6-k5-k4, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k2, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(430)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      R = real(-k3-k7-k6-k5-k4, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k2, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(431)
      nonzero(0) = .false.
      R = real(-k3-k7-k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k2, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(4310)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k2, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(432)
      nonzero(0) = .false.
      R = real(-k3-k7-k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k3-k7-k6-k5-k4, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(4320)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      R = real(-k3-k7-k6-k5-k4, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(4321)
      nonzero(0) = .false.
      R = real(-k3-k7-k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case default
      R = real(-k3-k7-k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k3-k7-k6-k5-k4, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k2, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = Q2
      R = real(-k7, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 15:
   if(nonzero(0)) then
      num = num + numerator_d15(icut, Q, mu2) * denom4
   end if
   !-------#] Diagram 15:
   !-------#[ Diagram 83:
   if(nonzero(1)) then
      num = num + numerator_d83(icut, Q, mu2)
   end if
   !-------#] Diagram 83:
end function numeval_group5
!-----#] function numeval_group5:
!-----#[ function numeval_group6:
function     numeval_group6(icut, Q, mu2) result(num)
   use p5_usbar_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7
   use p5_usbar_epnebbbarg_model
   use p5_usbar_epnebbbarg_d14h3l1, only: numerator_d14 => numerator_samurai
   use p5_usbar_epnebbbarg_d82h3l1, only: numerator_d82 => numerator_samurai
   implicit none
   integer, intent(in) :: icut
   complex(ki_sam), dimension(4), intent(in) :: Q
   complex(ki_sam), intent(in) :: mu2
   complex(ki_sam) :: num

   logical, dimension(0:2-1) :: nonzero
   real(ki_sam), dimension(0:3) :: R
   complex(ki_sam) :: Q2
   complex(ki_sam) ::denom1,denom2,denom3,denom4,denom5

   nonzero(:) = .true.
   Q2 = Q(4)*Q(4) - Q(1)*Q(1) - Q(2)*Q(2) - Q(3)*Q(3) - mu2

   select case(icut)
   case(2)
      nonzero(0) = .false.
      R = real(-k7-k6-k5, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k2, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k3-k7-k6-k5-k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(20)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      R = real(-k7, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k2, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k3-k7-k6-k5-k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(21)
      nonzero(0) = .false.
      R = real(-k7-k6-k5, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k2, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k3-k7-k6-k5-k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(210)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k2, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k3-k7-k6-k5-k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(32)
      nonzero(0) = .false.
      R = real(-k7-k6-k5, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k3-k7-k6-k5-k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(320)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      R = real(-k7, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k3-k7-k6-k5-k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(321)
      nonzero(0) = .false.
      R = real(-k7-k6-k5, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k3-k7-k6-k5-k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(3210)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k3-k7-k6-k5-k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(42)
      nonzero(0) = .false.
      R = real(-k7-k6-k5, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k2, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom5 = 0.0_ki
   case(420)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      R = real(-k7, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k2, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom5 = 0.0_ki
   case(421)
      nonzero(0) = .false.
      R = real(-k7-k6-k5, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k2, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom5 = 0.0_ki
   case(4210)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k2, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom5 = 0.0_ki
   case(432)
      nonzero(0) = .false.
      R = real(-k7-k6-k5, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(4320)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      R = real(-k7, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(4321)
      nonzero(0) = .false.
      R = real(-k7-k6-k5, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case default
      R = real(-k7-k6-k5, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = Q2
      R = real(-k2, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k3-k7-k6-k5-k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 14:
   if(nonzero(0)) then
      num = num + numerator_d14(icut, Q, mu2) * denom3
   end if
   !-------#] Diagram 14:
   !-------#[ Diagram 82:
   if(nonzero(1)) then
      num = num + numerator_d82(icut, Q, mu2)
   end if
   !-------#] Diagram 82:
end function numeval_group6
!-----#] function numeval_group6:
!-----#[ function numeval_group7:
function     numeval_group7(icut, Q, mu2) result(num)
   use p5_usbar_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7
   use p5_usbar_epnebbbarg_model
   use p5_usbar_epnebbbarg_d68h3l1, only: numerator_d68 => numerator_samurai
   implicit none
   integer, intent(in) :: icut
   complex(ki_sam), dimension(4), intent(in) :: Q
   complex(ki_sam), intent(in) :: mu2
   complex(ki_sam) :: num

   logical, dimension(0:1-1) :: nonzero
   real(ki_sam), dimension(0:3) :: R
   complex(ki_sam) :: Q2
   complex(ki_sam) ::denom1,denom2,denom3,denom4,denom5

   nonzero(:) = .true.
   Q2 = Q(4)*Q(4) - Q(1)*Q(1) - Q(2)*Q(2) - Q(3)*Q(3) - mu2

   select case(icut)
   case default
      R = real(-k3-k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k3-k7-k4, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k3-k7-k6-k5-k4, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k2, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom5 = Q2
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 68:
   if(nonzero(0)) then
      num = num + numerator_d68(icut, Q, mu2)
   end if
   !-------#] Diagram 68:
end function numeval_group7
!-----#] function numeval_group7:
!-----#[ function numeval_group8:
function     numeval_group8(icut, Q, mu2) result(num)
   use p5_usbar_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7
   use p5_usbar_epnebbbarg_model
   use p5_usbar_epnebbbarg_d80h3l1, only: numerator_d80 => numerator_samurai
   use p5_usbar_epnebbbarg_d128h3l1, only: numerator_d128 => numerator_samurai
   implicit none
   integer, intent(in) :: icut
   complex(ki_sam), dimension(4), intent(in) :: Q
   complex(ki_sam), intent(in) :: mu2
   complex(ki_sam) :: num

   logical, dimension(0:2-1) :: nonzero
   real(ki_sam), dimension(0:3) :: R
   complex(ki_sam) :: Q2
   complex(ki_sam) ::denom1,denom2,denom3,denom4,denom5

   nonzero(:) = .true.
   Q2 = Q(4)*Q(4) - Q(1)*Q(1) - Q(2)*Q(2) - Q(3)*Q(3) - mu2

   select case(icut)
   case(1)
      nonzero(1) = .false.
      R = real(-k3-k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k3-k7-k6-k5-k4, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k2, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom5 = Q2
   case(10)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k3-k7-k6-k5-k4, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k2, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom5 = Q2
   case(21)
      nonzero(1) = .false.
      R = real(-k3-k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k2, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom5 = Q2
   case(210)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k2, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom5 = Q2
   case(31)
      nonzero(1) = .false.
      R = real(-k3-k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k3-k7-k6-k5-k4, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = Q2
   case(310)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k3-k7-k6-k5-k4, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = Q2
   case(321)
      nonzero(1) = .false.
      R = real(-k3-k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = Q2
   case(3210)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = Q2
   case(41)
      nonzero(1) = .false.
      R = real(-k3-k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k3-k7-k6-k5-k4, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k2, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom5 = 0.0_ki
   case(410)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k3-k7-k6-k5-k4, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k2, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom5 = 0.0_ki
   case(421)
      nonzero(1) = .false.
      R = real(-k3-k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k2, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom5 = 0.0_ki
   case(4210)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k2, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom5 = 0.0_ki
   case(431)
      nonzero(1) = .false.
      R = real(-k3-k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k3-k7-k6-k5-k4, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(4310)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k3-k7-k6-k5-k4, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(4321)
      nonzero(1) = .false.
      R = real(-k3-k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case default
      R = real(-k3-k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k3-k6-k5-k4, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k3-k7-k6-k5-k4, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k2, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom5 = Q2
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 80:
   if(nonzero(0)) then
      num = num + numerator_d80(icut, Q, mu2)
   end if
   !-------#] Diagram 80:
   !-------#[ Diagram 128:
   if(nonzero(1)) then
      num = num + numerator_d128(icut, Q, mu2) * denom2
   end if
   !-------#] Diagram 128:
end function numeval_group8
!-----#] function numeval_group8:
!-----#[ function numeval_group9:
function     numeval_group9(icut, Q, mu2) result(num)
   use p5_usbar_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7
   use p5_usbar_epnebbbarg_model
   use p5_usbar_epnebbbarg_d66h3l1, only: numerator_d66 => numerator_samurai
   use p5_usbar_epnebbbarg_d127h3l1, only: numerator_d127 => numerator_samurai
   implicit none
   integer, intent(in) :: icut
   complex(ki_sam), dimension(4), intent(in) :: Q
   complex(ki_sam), intent(in) :: mu2
   complex(ki_sam) :: num

   logical, dimension(0:2-1) :: nonzero
   real(ki_sam), dimension(0:3) :: R
   complex(ki_sam) :: Q2
   complex(ki_sam) ::denom1,denom2,denom3,denom4,denom5

   nonzero(:) = .true.
   Q2 = Q(4)*Q(4) - Q(1)*Q(1) - Q(2)*Q(2) - Q(3)*Q(3) - mu2

   select case(icut)
   case(1)
      nonzero(1) = .false.
      R = real(-k7-k6-k5, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = Q2
      R = real(-k2, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k3-k7-k6-k5-k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(10)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = Q2
      R = real(-k2, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k3-k7-k6-k5-k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(21)
      nonzero(1) = .false.
      R = real(-k7-k6-k5, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k2, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k3-k7-k6-k5-k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(210)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k2, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k3-k7-k6-k5-k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(31)
      nonzero(1) = .false.
      R = real(-k7-k6-k5, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = Q2
      denom4 = 0.0_ki
      R = real(-k3-k7-k6-k5-k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(310)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = Q2
      denom4 = 0.0_ki
      R = real(-k3-k7-k6-k5-k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(321)
      nonzero(1) = .false.
      R = real(-k7-k6-k5, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k3-k7-k6-k5-k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(3210)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k3-k7-k6-k5-k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(41)
      nonzero(1) = .false.
      R = real(-k7-k6-k5, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = Q2
      R = real(-k2, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom5 = 0.0_ki
   case(410)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = Q2
      R = real(-k2, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom5 = 0.0_ki
   case(421)
      nonzero(1) = .false.
      R = real(-k7-k6-k5, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k2, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom5 = 0.0_ki
   case(4210)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k2, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom5 = 0.0_ki
   case(431)
      nonzero(1) = .false.
      R = real(-k7-k6-k5, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = Q2
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(4310)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = Q2
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(4321)
      nonzero(1) = .false.
      R = real(-k7-k6-k5, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case default
      R = real(-k7-k6-k5, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = Q2
      R = real(-k2, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k3-k7-k6-k5-k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 66:
   if(nonzero(0)) then
      num = num + numerator_d66(icut, Q, mu2)
   end if
   !-------#] Diagram 66:
   !-------#[ Diagram 127:
   if(nonzero(1)) then
      num = num + numerator_d127(icut, Q, mu2) * denom2
   end if
   !-------#] Diagram 127:
end function numeval_group9
!-----#] function numeval_group9:
!-----#[ function numeval_group10:
function     numeval_group10(icut, Q, mu2) result(num)
   use p5_usbar_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7
   use p5_usbar_epnebbbarg_model
   use p5_usbar_epnebbbarg_d81h3l1, only: numerator_d81 => numerator_samurai
   implicit none
   integer, intent(in) :: icut
   complex(ki_sam), dimension(4), intent(in) :: Q
   complex(ki_sam), intent(in) :: mu2
   complex(ki_sam) :: num

   logical, dimension(0:1-1) :: nonzero
   real(ki_sam), dimension(0:3) :: R
   complex(ki_sam) :: Q2
   complex(ki_sam) ::denom1,denom2,denom3,denom4,denom5

   nonzero(:) = .true.
   Q2 = Q(4)*Q(4) - Q(1)*Q(1) - Q(2)*Q(2) - Q(3)*Q(3) - mu2

   select case(icut)
   case default
      R = real(-k6-k5, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k2, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k3-k7-k6-k5-k4, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k3-k6-k5-k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 81:
   if(nonzero(0)) then
      num = num + numerator_d81(icut, Q, mu2)
   end if
   !-------#] Diagram 81:
end function numeval_group10
!-----#] function numeval_group10:
!-----#[ function numeval_group11:
function     numeval_group11(icut, Q, mu2) result(num)
   use p5_usbar_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7
   use p5_usbar_epnebbbarg_model
   use p5_usbar_epnebbbarg_d79h3l1, only: numerator_d79 => numerator_samurai
   use p5_usbar_epnebbbarg_d109h3l1, only: numerator_d109 => numerator_samurai
   use p5_usbar_epnebbbarg_d292h3l1, only: numerator_d292 => numerator_samurai
   use p5_usbar_epnebbbarg_d301h3l1, only: numerator_d301 => numerator_samurai
   implicit none
   integer, intent(in) :: icut
   complex(ki_sam), dimension(4), intent(in) :: Q
   complex(ki_sam), intent(in) :: mu2
   complex(ki_sam) :: num

   logical, dimension(0:4-1) :: nonzero
   real(ki_sam), dimension(0:3) :: R
   complex(ki_sam) :: Q2
   complex(ki_sam) ::denom1,denom2,denom3,denom4,denom5,denom6

   nonzero(:) = .true.
   Q2 = Q(4)*Q(4) - Q(1)*Q(1) - Q(2)*Q(2) - Q(3)*Q(3) - mu2

   select case(icut)
   case(0)
      nonzero(1) = .false.
      nonzero(3) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = Q2
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(10)
      nonzero(1) = .false.
      nonzero(3) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = Q2
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(20)
      nonzero(1) = .false.
      nonzero(3) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = Q2
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(210)
      nonzero(1) = .false.
      nonzero(3) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = Q2
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(30)
      nonzero(1) = .false.
      nonzero(3) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(310)
      nonzero(1) = .false.
      nonzero(3) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(320)
      nonzero(1) = .false.
      nonzero(3) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(3210)
      nonzero(1) = .false.
      nonzero(3) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(4)
      nonzero(0) = .false.
      nonzero(1) = .false.
      R = real(k3-k2+k7+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = Q2
      denom5 = 0.0_ki
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(40)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(3) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = Q2
      denom5 = 0.0_ki
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(41)
      nonzero(0) = .false.
      nonzero(1) = .false.
      R = real(k3-k2+k7+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = Q2
      denom5 = 0.0_ki
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(410)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(3) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = Q2
      denom5 = 0.0_ki
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(42)
      nonzero(0) = .false.
      nonzero(1) = .false.
      R = real(k3-k2+k7+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = Q2
      denom5 = 0.0_ki
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(420)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(3) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = Q2
      denom5 = 0.0_ki
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(421)
      nonzero(0) = .false.
      nonzero(1) = .false.
      R = real(k3-k2+k7+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = Q2
      denom5 = 0.0_ki
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(4210)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(3) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = Q2
      denom5 = 0.0_ki
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(43)
      nonzero(0) = .false.
      nonzero(1) = .false.
      R = real(k3-k2+k7+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(430)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(3) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(431)
      nonzero(0) = .false.
      nonzero(1) = .false.
      R = real(k3-k2+k7+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(4310)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(3) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(432)
      nonzero(0) = .false.
      nonzero(1) = .false.
      R = real(k3-k2+k7+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(4320)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(3) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(4321)
      nonzero(0) = .false.
      nonzero(1) = .false.
      R = real(k3-k2+k7+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(50)
      nonzero(1) = .false.
      nonzero(3) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = Q2
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(510)
      nonzero(1) = .false.
      nonzero(3) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = Q2
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(520)
      nonzero(1) = .false.
      nonzero(3) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = Q2
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(5210)
      nonzero(1) = .false.
      nonzero(3) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = Q2
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(530)
      nonzero(1) = .false.
      nonzero(3) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(5310)
      nonzero(1) = .false.
      nonzero(3) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(5320)
      nonzero(1) = .false.
      nonzero(3) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(54)
      nonzero(0) = .false.
      nonzero(1) = .false.
      R = real(k3-k2+k7+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = Q2
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(540)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(3) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = Q2
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(541)
      nonzero(0) = .false.
      nonzero(1) = .false.
      R = real(k3-k2+k7+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = Q2
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5410)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(3) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = Q2
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(542)
      nonzero(0) = .false.
      nonzero(1) = .false.
      R = real(k3-k2+k7+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = Q2
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5420)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(3) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = Q2
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5421)
      nonzero(0) = .false.
      nonzero(1) = .false.
      R = real(k3-k2+k7+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = Q2
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(543)
      nonzero(0) = .false.
      nonzero(1) = .false.
      R = real(k3-k2+k7+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5430)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(3) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5431)
      nonzero(0) = .false.
      nonzero(1) = .false.
      R = real(k3-k2+k7+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5432)
      nonzero(0) = .false.
      nonzero(1) = .false.
      R = real(k3-k2+k7+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case default
      R = real(k3-k2+k7+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = Q2
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 79:
   if(nonzero(0)) then
      num = num + numerator_d79(icut, Q, mu2) * denom5
   end if
   !-------#] Diagram 79:
   !-------#[ Diagram 109:
   if(nonzero(1)) then
      num = num + numerator_d109(icut, Q, mu2) * denom1 * denom5
   end if
   !-------#] Diagram 109:
   !-------#[ Diagram 292:
   if(nonzero(2)) then
      num = num + numerator_d292(icut, Q, mu2)
   end if
   !-------#] Diagram 292:
   !-------#[ Diagram 301:
   if(nonzero(3)) then
      num = num + numerator_d301(icut, Q, mu2) * denom1
   end if
   !-------#] Diagram 301:
end function numeval_group11
!-----#] function numeval_group11:
!-----#[ function numeval_group12:
function     numeval_group12(icut, Q, mu2) result(num)
   use p5_usbar_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7
   use p5_usbar_epnebbbarg_model
   use p5_usbar_epnebbbarg_d298h3l1, only: numerator_d298 => numerator_samurai
   use p5_usbar_epnebbbarg_d303h3l1, only: numerator_d303 => numerator_samurai
   use p5_usbar_epnebbbarg_d316h3l1, only: numerator_d316 => numerator_samurai
   implicit none
   integer, intent(in) :: icut
   complex(ki_sam), dimension(4), intent(in) :: Q
   complex(ki_sam), intent(in) :: mu2
   complex(ki_sam) :: num

   logical, dimension(0:3-1) :: nonzero
   real(ki_sam), dimension(0:3) :: R
   complex(ki_sam) :: Q2
   complex(ki_sam) ::denom1,denom2,denom3,denom4,denom5,denom6

   nonzero(:) = .true.
   Q2 = Q(4)*Q(4) - Q(1)*Q(1) - Q(2)*Q(2) - Q(3)*Q(3) - mu2

   select case(icut)
   case(0)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(10)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(20)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(210)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(30)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = Q2
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(310)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = Q2
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(320)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = Q2
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(3210)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = Q2
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(40)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(410)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(420)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(4210)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(430)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(4310)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(4320)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(5)
      nonzero(2) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      denom6 = 0.0_ki
   case(50)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      denom6 = 0.0_ki
   case(51)
      nonzero(2) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      denom6 = 0.0_ki
   case(510)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      denom6 = 0.0_ki
   case(52)
      nonzero(2) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      denom6 = 0.0_ki
   case(520)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      denom6 = 0.0_ki
   case(521)
      nonzero(2) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      denom6 = 0.0_ki
   case(5210)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      denom6 = 0.0_ki
   case(53)
      nonzero(2) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = Q2
      denom6 = 0.0_ki
   case(530)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = Q2
      denom6 = 0.0_ki
   case(531)
      nonzero(2) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = Q2
      denom6 = 0.0_ki
   case(5310)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = Q2
      denom6 = 0.0_ki
   case(532)
      nonzero(2) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = Q2
      denom6 = 0.0_ki
   case(5320)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = Q2
      denom6 = 0.0_ki
   case(5321)
      nonzero(2) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = Q2
      denom6 = 0.0_ki
   case(54)
      nonzero(2) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(540)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(541)
      nonzero(2) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5410)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(542)
      nonzero(2) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5420)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5421)
      nonzero(2) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(543)
      nonzero(2) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5430)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5431)
      nonzero(2) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5432)
      nonzero(2) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case default
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 298:
   if(nonzero(0)) then
      num = num + numerator_d298(icut, Q, mu2)
   end if
   !-------#] Diagram 298:
   !-------#[ Diagram 303:
   if(nonzero(1)) then
      num = num + numerator_d303(icut, Q, mu2) * denom1
   end if
   !-------#] Diagram 303:
   !-------#[ Diagram 316:
   if(nonzero(2)) then
      num = num + numerator_d316(icut, Q, mu2) * denom6
   end if
   !-------#] Diagram 316:
end function numeval_group12
!-----#] function numeval_group12:
!-----#[ function numeval_group13:
function     numeval_group13(icut, Q, mu2) result(num)
   use p5_usbar_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7
   use p5_usbar_epnebbbarg_model
   use p5_usbar_epnebbbarg_d16h3l1, only: numerator_d16 => numerator_samurai
   use p5_usbar_epnebbbarg_d38h3l1, only: numerator_d38 => numerator_samurai
   use p5_usbar_epnebbbarg_d42h3l1, only: numerator_d42 => numerator_samurai
   use p5_usbar_epnebbbarg_d58h3l1, only: numerator_d58 => numerator_samurai
   use p5_usbar_epnebbbarg_d70h3l1, only: numerator_d70 => numerator_samurai
   use p5_usbar_epnebbbarg_d76h3l1, only: numerator_d76 => numerator_samurai
   use p5_usbar_epnebbbarg_d90h3l1, only: numerator_d90 => numerator_samurai
   use p5_usbar_epnebbbarg_d93h3l1, only: numerator_d93 => numerator_samurai
   use p5_usbar_epnebbbarg_d102h3l1, only: numerator_d102 => numerator_samurai
   use p5_usbar_epnebbbarg_d108h3l1, only: numerator_d108 => numerator_samurai
   use p5_usbar_epnebbbarg_d115h3l1, only: numerator_d115 => numerator_samurai
   use p5_usbar_epnebbbarg_d126h3l1, only: numerator_d126 => numerator_samurai
   use p5_usbar_epnebbbarg_d139h3l1, only: numerator_d139 => numerator_samurai
   use p5_usbar_epnebbbarg_d227h3l1, only: numerator_d227 => numerator_samurai
   use p5_usbar_epnebbbarg_d295h3l1, only: numerator_d295 => numerator_samurai
   use p5_usbar_epnebbbarg_d310h3l1, only: numerator_d310 => numerator_samurai
   implicit none
   integer, intent(in) :: icut
   complex(ki_sam), dimension(4), intent(in) :: Q
   complex(ki_sam), intent(in) :: mu2
   complex(ki_sam) :: num

   logical, dimension(0:16-1) :: nonzero
   real(ki_sam), dimension(0:3) :: R
   complex(ki_sam) :: Q2
   complex(ki_sam) ::denom1,denom2,denom3,denom4,denom5,denom6

   nonzero(:) = .true.
   Q2 = Q(4)*Q(4) - Q(1)*Q(1) - Q(2)*Q(2) - Q(3)*Q(3) - mu2

   select case(icut)
   case(0)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k6-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k7+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(1)
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k6-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k7+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(10)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k6-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k7+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(2)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k7+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(20)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k7+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(21)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k7+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(210)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k7+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(3)
      nonzero(8) = .false.
      nonzero(13) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(k3-k2+k7+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(30)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(k3-k2+k7+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(31)
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(8) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(k3-k2+k7+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(310)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(k3-k2+k7+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(32)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(k3-k2+k7+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(320)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(k3-k2+k7+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(321)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(k3-k2+k7+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(3210)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(k3-k2+k7+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(4)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(9) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k6-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(40)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k6-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(41)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(9) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k6-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(410)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k6-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(42)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(420)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(421)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(4210)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(43)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(13) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(430)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(431)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(4310)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(432)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(4320)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(4321)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(5)
      nonzero(6) = .false.
      nonzero(7) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k6-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k7+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(50)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k6-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k7+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(51)
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k6-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k7+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(510)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k6-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k7+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(52)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k7+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(520)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k7+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(521)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k7+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(5210)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k7+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(53)
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(13) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(k3-k2+k7+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(530)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(k3-k2+k7+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(531)
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(k3-k2+k7+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(5310)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(k3-k2+k7+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(532)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(k3-k2+k7+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(5320)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(k3-k2+k7+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(5321)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(k3-k2+k7+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(54)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k6-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(540)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k6-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(541)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k6-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5410)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k6-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(542)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5420)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5421)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(543)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(13) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5430)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5431)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5432)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case default
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k6-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k7+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 16:
   if(nonzero(0)) then
      num = num + numerator_d16(icut, Q, mu2) * denom3 * denom5
   end if
   !-------#] Diagram 16:
   !-------#[ Diagram 38:
   if(nonzero(1)) then
      num = num + numerator_d38(icut, Q, mu2) * denom1 * denom3 * denom5
   end if
   !-------#] Diagram 38:
   !-------#[ Diagram 42:
   if(nonzero(2)) then
      num = num + numerator_d42(icut, Q, mu2) * denom2 * denom3 * denom5
   end if
   !-------#] Diagram 42:
   !-------#[ Diagram 58:
   if(nonzero(3)) then
      num = num + numerator_d58(icut, Q, mu2) * denom1 * denom2 * denom3 * denom5
   end if
   !-------#] Diagram 58:
   !-------#[ Diagram 70:
   if(nonzero(4)) then
      num = num + numerator_d70(icut, Q, mu2) * denom3
   end if
   !-------#] Diagram 70:
   !-------#[ Diagram 76:
   if(nonzero(5)) then
      num = num + numerator_d76(icut, Q, mu2) * denom5
   end if
   !-------#] Diagram 76:
   !-------#[ Diagram 90:
   if(nonzero(6)) then
      num = num + numerator_d90(icut, Q, mu2) * denom5 * denom6
   end if
   !-------#] Diagram 90:
   !-------#[ Diagram 93:
   if(nonzero(7)) then
      num = num + numerator_d93(icut, Q, mu2) * denom1 * denom6
   end if
   !-------#] Diagram 93:
   !-------#[ Diagram 102:
   if(nonzero(8)) then
      num = num + numerator_d102(icut, Q, mu2) * denom3 * denom4
   end if
   !-------#] Diagram 102:
   !-------#[ Diagram 108:
   if(nonzero(9)) then
      num = num + numerator_d108(icut, Q, mu2) * denom1 * denom5
   end if
   !-------#] Diagram 108:
   !-------#[ Diagram 115:
   if(nonzero(10)) then
      num = num + numerator_d115(icut, Q, mu2) * denom1 * denom3
   end if
   !-------#] Diagram 115:
   !-------#[ Diagram 126:
   if(nonzero(11)) then
      num = num + numerator_d126(icut, Q, mu2) * denom2 * denom3
   end if
   !-------#] Diagram 126:
   !-------#[ Diagram 139:
   if(nonzero(12)) then
      num = num + numerator_d139(icut, Q, mu2) * denom1 * denom2 * denom3
   end if
   !-------#] Diagram 139:
   !-------#[ Diagram 227:
   if(nonzero(13)) then
      num = num + numerator_d227(icut, Q, mu2) * denom1 * denom3 * denom4
   end if
   !-------#] Diagram 227:
   !-------#[ Diagram 295:
   if(nonzero(14)) then
      num = num + numerator_d295(icut, Q, mu2)
   end if
   !-------#] Diagram 295:
   !-------#[ Diagram 310:
   if(nonzero(15)) then
      num = num + numerator_d310(icut, Q, mu2) * denom1
   end if
   !-------#] Diagram 310:
end function numeval_group13
!-----#] function numeval_group13:
!-----#[ function numeval_group14:
function     numeval_group14(icut, Q, mu2) result(num)
   use p5_usbar_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7
   use p5_usbar_epnebbbarg_model
   use p5_usbar_epnebbbarg_d72h3l1, only: numerator_d72 => numerator_samurai
   use p5_usbar_epnebbbarg_d75h3l1, only: numerator_d75 => numerator_samurai
   use p5_usbar_epnebbbarg_d98h3l1, only: numerator_d98 => numerator_samurai
   use p5_usbar_epnebbbarg_d101h3l1, only: numerator_d101 => numerator_samurai
   use p5_usbar_epnebbbarg_d120h3l1, only: numerator_d120 => numerator_samurai
   use p5_usbar_epnebbbarg_d121h3l1, only: numerator_d121 => numerator_samurai
   use p5_usbar_epnebbbarg_d300h3l1, only: numerator_d300 => numerator_samurai
   use p5_usbar_epnebbbarg_d305h3l1, only: numerator_d305 => numerator_samurai
   use p5_usbar_epnebbbarg_d315h3l1, only: numerator_d315 => numerator_samurai
   implicit none
   integer, intent(in) :: icut
   complex(ki_sam), dimension(4), intent(in) :: Q
   complex(ki_sam), intent(in) :: mu2
   complex(ki_sam) :: num

   logical, dimension(0:9-1) :: nonzero
   real(ki_sam), dimension(0:3) :: R
   complex(ki_sam) :: Q2
   complex(ki_sam) ::denom1,denom2,denom3,denom4,denom5,denom6

   nonzero(:) = .true.
   Q2 = Q(4)*Q(4) - Q(1)*Q(1) - Q(2)*Q(2) - Q(3)*Q(3) - mu2

   select case(icut)
   case(0)
      nonzero(2) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(10)
      nonzero(2) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k7-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(2)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(20)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(21)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(210)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(3)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = Q2
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(30)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = Q2
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(31)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k7-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = Q2
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(310)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k7-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = Q2
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(32)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = Q2
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(320)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = Q2
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(321)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = Q2
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(3210)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = Q2
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(40)
      nonzero(2) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(410)
      nonzero(2) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k7-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(42)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(420)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(421)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(4210)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(43)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(430)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(431)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k7-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(4310)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k7-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(432)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(4320)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(4321)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(5)
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(8) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      denom6 = 0.0_ki
   case(50)
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      denom6 = 0.0_ki
   case(51)
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(8) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k7-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      denom6 = 0.0_ki
   case(510)
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k7-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      denom6 = 0.0_ki
   case(52)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(8) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      denom6 = 0.0_ki
   case(520)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      denom6 = 0.0_ki
   case(521)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(8) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      denom6 = 0.0_ki
   case(5210)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      denom6 = 0.0_ki
   case(53)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(8) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = Q2
      denom6 = 0.0_ki
   case(530)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = Q2
      denom6 = 0.0_ki
   case(531)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(8) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k7-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = Q2
      denom6 = 0.0_ki
   case(5310)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k7-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = Q2
      denom6 = 0.0_ki
   case(532)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(8) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = Q2
      denom6 = 0.0_ki
   case(5320)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = Q2
      denom6 = 0.0_ki
   case(5321)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(8) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = Q2
      denom6 = 0.0_ki
   case(54)
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(8) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(540)
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(541)
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(8) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k7-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5410)
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k7-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(542)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(8) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5420)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5421)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(8) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(543)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(8) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5430)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5431)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(8) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k7-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5432)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(8) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case default
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 72:
   if(nonzero(0)) then
      num = num + numerator_d72(icut, Q, mu2) * denom4
   end if
   !-------#] Diagram 72:
   !-------#[ Diagram 75:
   if(nonzero(1)) then
      num = num + numerator_d75(icut, Q, mu2) * denom3
   end if
   !-------#] Diagram 75:
   !-------#[ Diagram 98:
   if(nonzero(2)) then
      num = num + numerator_d98(icut, Q, mu2) * denom1 * denom4
   end if
   !-------#] Diagram 98:
   !-------#[ Diagram 101:
   if(nonzero(3)) then
      num = num + numerator_d101(icut, Q, mu2) * denom3 * denom6
   end if
   !-------#] Diagram 101:
   !-------#[ Diagram 120:
   if(nonzero(4)) then
      num = num + numerator_d120(icut, Q, mu2) * denom4 * denom6
   end if
   !-------#] Diagram 120:
   !-------#[ Diagram 121:
   if(nonzero(5)) then
      num = num + numerator_d121(icut, Q, mu2) * denom1 * denom3
   end if
   !-------#] Diagram 121:
   !-------#[ Diagram 300:
   if(nonzero(6)) then
      num = num + numerator_d300(icut, Q, mu2)
   end if
   !-------#] Diagram 300:
   !-------#[ Diagram 305:
   if(nonzero(7)) then
      num = num + numerator_d305(icut, Q, mu2) * denom1
   end if
   !-------#] Diagram 305:
   !-------#[ Diagram 315:
   if(nonzero(8)) then
      num = num + numerator_d315(icut, Q, mu2) * denom6
   end if
   !-------#] Diagram 315:
end function numeval_group14
!-----#] function numeval_group14:
!-----#[ function numeval_group15:
function     numeval_group15(icut, Q, mu2) result(num)
   use p5_usbar_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7
   use p5_usbar_epnebbbarg_model
   use p5_usbar_epnebbbarg_d6h3l1, only: numerator_d6 => numerator_samurai
   use p5_usbar_epnebbbarg_d8h3l1, only: numerator_d8 => numerator_samurai
   use p5_usbar_epnebbbarg_d10h3l1, only: numerator_d10 => numerator_samurai
   use p5_usbar_epnebbbarg_d17h3l1, only: numerator_d17 => numerator_samurai
   use p5_usbar_epnebbbarg_d18h3l1, only: numerator_d18 => numerator_samurai
   use p5_usbar_epnebbbarg_d21h3l1, only: numerator_d21 => numerator_samurai
   use p5_usbar_epnebbbarg_d24h3l1, only: numerator_d24 => numerator_samurai
   use p5_usbar_epnebbbarg_d40h3l1, only: numerator_d40 => numerator_samurai
   use p5_usbar_epnebbbarg_d43h3l1, only: numerator_d43 => numerator_samurai
   use p5_usbar_epnebbbarg_d59h3l1, only: numerator_d59 => numerator_samurai
   use p5_usbar_epnebbbarg_d64h3l1, only: numerator_d64 => numerator_samurai
   use p5_usbar_epnebbbarg_d65h3l1, only: numerator_d65 => numerator_samurai
   use p5_usbar_epnebbbarg_d71h3l1, only: numerator_d71 => numerator_samurai
   use p5_usbar_epnebbbarg_d78h3l1, only: numerator_d78 => numerator_samurai
   use p5_usbar_epnebbbarg_d86h3l1, only: numerator_d86 => numerator_samurai
   use p5_usbar_epnebbbarg_d91h3l1, only: numerator_d91 => numerator_samurai
   use p5_usbar_epnebbbarg_d92h3l1, only: numerator_d92 => numerator_samurai
   use p5_usbar_epnebbbarg_d103h3l1, only: numerator_d103 => numerator_samurai
   use p5_usbar_epnebbbarg_d110h3l1, only: numerator_d110 => numerator_samurai
   use p5_usbar_epnebbbarg_d111h3l1, only: numerator_d111 => numerator_samurai
   use p5_usbar_epnebbbarg_d124h3l1, only: numerator_d124 => numerator_samurai
   use p5_usbar_epnebbbarg_d137h3l1, only: numerator_d137 => numerator_samurai
   use p5_usbar_epnebbbarg_d223h3l1, only: numerator_d223 => numerator_samurai
   use p5_usbar_epnebbbarg_d296h3l1, only: numerator_d296 => numerator_samurai
   use p5_usbar_epnebbbarg_d302h3l1, only: numerator_d302 => numerator_samurai
   implicit none
   integer, intent(in) :: icut
   complex(ki_sam), dimension(4), intent(in) :: Q
   complex(ki_sam), intent(in) :: mu2
   complex(ki_sam) :: num

   logical, dimension(0:25-1) :: nonzero
   real(ki_sam), dimension(0:3) :: R
   complex(ki_sam) :: Q2
   complex(ki_sam) ::denom1,denom2,denom3,denom4,denom5,denom6

   nonzero(:) = .true.
   Q2 = Q(4)*Q(4) - Q(1)*Q(1) - Q(2)*Q(2) - Q(3)*Q(3) - mu2

   select case(icut)
   case(0)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = Q2
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(1)
      nonzero(2) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(11) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      R = real(k3-k2+k7+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = Q2
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(10)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = Q2
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(2)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(17) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      R = real(k3-k2+k7+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = Q2
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(20)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = Q2
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(21)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(17) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      R = real(k3-k2+k7+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = Q2
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(210)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = Q2
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(3)
      nonzero(2) = .false.
      nonzero(10) = .false.
      nonzero(17) = .false.
      nonzero(22) = .false.
      R = real(k3-k2+k7+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(30)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(31)
      nonzero(2) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(17) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      R = real(k3-k2+k7+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(310)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(32)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(17) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      R = real(k3-k2+k7+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(320)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(321)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(17) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      R = real(k3-k2+k7+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(3210)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(4)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(11) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(16) = .false.
      nonzero(18) = .false.
      R = real(k3-k2+k7+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = Q2
      denom5 = 0.0_ki
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(40)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = Q2
      denom5 = 0.0_ki
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(41)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(11) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(16) = .false.
      nonzero(18) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      R = real(k3-k2+k7+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = Q2
      denom5 = 0.0_ki
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(410)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = Q2
      denom5 = 0.0_ki
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(42)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      R = real(k3-k2+k7+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = Q2
      denom5 = 0.0_ki
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(420)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = Q2
      denom5 = 0.0_ki
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(421)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      R = real(k3-k2+k7+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = Q2
      denom5 = 0.0_ki
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(4210)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = Q2
      denom5 = 0.0_ki
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(43)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(22) = .false.
      R = real(k3-k2+k7+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(430)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(431)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      R = real(k3-k2+k7+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(4310)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(432)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      R = real(k3-k2+k7+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(4320)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(4321)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      R = real(k3-k2+k7+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(5)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      R = real(k3-k2+k7+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = Q2
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(50)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = Q2
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(51)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      R = real(k3-k2+k7+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = Q2
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(510)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = Q2
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(52)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      R = real(k3-k2+k7+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = Q2
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(520)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = Q2
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(521)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      R = real(k3-k2+k7+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = Q2
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(5210)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = Q2
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(53)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(22) = .false.
      R = real(k3-k2+k7+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(530)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(531)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      R = real(k3-k2+k7+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(5310)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(532)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      R = real(k3-k2+k7+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(5320)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(5321)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      R = real(k3-k2+k7+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(54)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(18) = .false.
      R = real(k3-k2+k7+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = Q2
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(540)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = Q2
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(541)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(18) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      R = real(k3-k2+k7+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = Q2
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5410)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = Q2
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(542)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      R = real(k3-k2+k7+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = Q2
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5420)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = Q2
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5421)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      R = real(k3-k2+k7+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = Q2
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(543)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(22) = .false.
      R = real(k3-k2+k7+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5430)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5431)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      R = real(k3-k2+k7+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5432)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      R = real(k3-k2+k7+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case default
      R = real(k3-k2+k7+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = Q2
      R = real(-k2, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k2+k7, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 6:
   if(nonzero(0)) then
      num = num + numerator_d6(icut, Q, mu2) * denom1 * denom3 * denom5 * denom6
   end if
   !-------#] Diagram 6:
   !-------#[ Diagram 8:
   if(nonzero(1)) then
      num = num + numerator_d8(icut, Q, mu2) * denom1 * denom5 * denom6
   end if
   !-------#] Diagram 8:
   !-------#[ Diagram 10:
   if(nonzero(2)) then
      num = num + numerator_d10(icut, Q, mu2) * denom1 * denom2 * denom3 * denom4
   end if
   !-------#] Diagram 10:
   !-------#[ Diagram 17:
   if(nonzero(3)) then
      num = num + numerator_d17(icut, Q, mu2) * denom3 * denom5
   end if
   !-------#] Diagram 17:
   !-------#[ Diagram 18:
   if(nonzero(4)) then
      num = num + numerator_d18(icut, Q, mu2) * denom1 * denom3 * denom6
   end if
   !-------#] Diagram 18:
   !-------#[ Diagram 21:
   if(nonzero(5)) then
      num = num + numerator_d21(icut, Q, mu2) * denom3 * denom5 * denom6
   end if
   !-------#] Diagram 21:
   !-------#[ Diagram 24:
   if(nonzero(6)) then
      num = num + numerator_d24(icut, Q, mu2) * denom1 * denom3 * denom5 * denom6
   end if
   !-------#] Diagram 24:
   !-------#[ Diagram 40:
   if(nonzero(7)) then
      num = num + numerator_d40(icut, Q, mu2) * denom1 * denom3 * denom5
   end if
   !-------#] Diagram 40:
   !-------#[ Diagram 43:
   if(nonzero(8)) then
      num = num + numerator_d43(icut, Q, mu2) * denom2 * denom3 * denom5
   end if
   !-------#] Diagram 43:
   !-------#[ Diagram 59:
   if(nonzero(9)) then
      num = num + numerator_d59(icut, Q, mu2) * denom1 * denom2 * denom3 * denom5
   end if
   !-------#] Diagram 59:
   !-------#[ Diagram 64:
   if(nonzero(10)) then
      num = num + numerator_d64(icut, Q, mu2) * denom1 * denom3 * denom4 * denom6
   end if
   !-------#] Diagram 64:
   !-------#[ Diagram 65:
   if(nonzero(11)) then
      num = num + numerator_d65(icut, Q, mu2) * denom2 * denom3 * denom5 * denom6
   end if
   !-------#] Diagram 65:
   !-------#[ Diagram 71:
   if(nonzero(12)) then
      num = num + numerator_d71(icut, Q, mu2) * denom3
   end if
   !-------#] Diagram 71:
   !-------#[ Diagram 78:
   if(nonzero(13)) then
      num = num + numerator_d78(icut, Q, mu2) * denom5
   end if
   !-------#] Diagram 78:
   !-------#[ Diagram 86:
   if(nonzero(14)) then
      num = num + numerator_d86(icut, Q, mu2) * denom1 * denom5 * denom6
   end if
   !-------#] Diagram 86:
   !-------#[ Diagram 91:
   if(nonzero(15)) then
      num = num + numerator_d91(icut, Q, mu2) * denom1 * denom6
   end if
   !-------#] Diagram 91:
   !-------#[ Diagram 92:
   if(nonzero(16)) then
      num = num + numerator_d92(icut, Q, mu2) * denom5 * denom6
   end if
   !-------#] Diagram 92:
   !-------#[ Diagram 103:
   if(nonzero(17)) then
      num = num + numerator_d103(icut, Q, mu2) * denom3 * denom4
   end if
   !-------#] Diagram 103:
   !-------#[ Diagram 110:
   if(nonzero(18)) then
      num = num + numerator_d110(icut, Q, mu2) * denom1 * denom5
   end if
   !-------#] Diagram 110:
   !-------#[ Diagram 111:
   if(nonzero(19)) then
      num = num + numerator_d111(icut, Q, mu2) * denom1 * denom3
   end if
   !-------#] Diagram 111:
   !-------#[ Diagram 124:
   if(nonzero(20)) then
      num = num + numerator_d124(icut, Q, mu2) * denom2 * denom3
   end if
   !-------#] Diagram 124:
   !-------#[ Diagram 137:
   if(nonzero(21)) then
      num = num + numerator_d137(icut, Q, mu2) * denom1 * denom2 * denom3
   end if
   !-------#] Diagram 137:
   !-------#[ Diagram 223:
   if(nonzero(22)) then
      num = num + numerator_d223(icut, Q, mu2) * denom1 * denom3 * denom4
   end if
   !-------#] Diagram 223:
   !-------#[ Diagram 296:
   if(nonzero(23)) then
      num = num + numerator_d296(icut, Q, mu2)
   end if
   !-------#] Diagram 296:
   !-------#[ Diagram 302:
   if(nonzero(24)) then
      num = num + numerator_d302(icut, Q, mu2) * denom1
   end if
   !-------#] Diagram 302:
end function numeval_group15
!-----#] function numeval_group15:
!-----#[ function numeval_group16:
function     numeval_group16(icut, Q, mu2) result(num)
   use p5_usbar_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7
   use p5_usbar_epnebbbarg_model
   use p5_usbar_epnebbbarg_d67h3l1, only: numerator_d67 => numerator_samurai
   use p5_usbar_epnebbbarg_d77h3l1, only: numerator_d77 => numerator_samurai
   use p5_usbar_epnebbbarg_d94h3l1, only: numerator_d94 => numerator_samurai
   use p5_usbar_epnebbbarg_d107h3l1, only: numerator_d107 => numerator_samurai
   use p5_usbar_epnebbbarg_d117h3l1, only: numerator_d117 => numerator_samurai
   use p5_usbar_epnebbbarg_d125h3l1, only: numerator_d125 => numerator_samurai
   use p5_usbar_epnebbbarg_d145h3l1, only: numerator_d145 => numerator_samurai
   use p5_usbar_epnebbbarg_d294h3l1, only: numerator_d294 => numerator_samurai
   use p5_usbar_epnebbbarg_d304h3l1, only: numerator_d304 => numerator_samurai
   use p5_usbar_epnebbbarg_d314h3l1, only: numerator_d314 => numerator_samurai
   use p5_usbar_epnebbbarg_d317h3l1, only: numerator_d317 => numerator_samurai
   use p5_usbar_epnebbbarg_d336h3l1, only: numerator_d336 => numerator_samurai
   implicit none
   integer, intent(in) :: icut
   complex(ki_sam), dimension(4), intent(in) :: Q
   complex(ki_sam), intent(in) :: mu2
   complex(ki_sam) :: num

   logical, dimension(0:12-1) :: nonzero
   real(ki_sam), dimension(0:3) :: R
   complex(ki_sam) :: Q2
   complex(ki_sam) ::denom1,denom2,denom3,denom4,denom5,denom6

   nonzero(:) = .true.
   Q2 = Q(4)*Q(4) - Q(1)*Q(1) - Q(2)*Q(2) - Q(3)*Q(3) - mu2

   select case(icut)
   case(0)
      nonzero(2) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(1)
      nonzero(1) = .false.
      nonzero(3) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(10)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(20)
      nonzero(2) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(21)
      nonzero(1) = .false.
      nonzero(3) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(210)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(3)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = Q2
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(30)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = Q2
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(31)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = Q2
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(310)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = Q2
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(32)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = Q2
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(320)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = Q2
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(321)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = Q2
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(3210)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = Q2
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(4)
      nonzero(5) = .false.
      nonzero(11) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(40)
      nonzero(2) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(41)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(11) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(410)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(42)
      nonzero(5) = .false.
      nonzero(11) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(420)
      nonzero(2) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(421)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(11) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(4210)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(43)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(11) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(430)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(431)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(11) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(4310)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(432)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(11) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(4320)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(4321)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(11) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(5)
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(6) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      denom6 = 0.0_ki
   case(50)
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      denom6 = 0.0_ki
   case(51)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(6) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      denom6 = 0.0_ki
   case(510)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      denom6 = 0.0_ki
   case(52)
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(6) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      denom6 = 0.0_ki
   case(520)
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      denom6 = 0.0_ki
   case(521)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(6) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      denom6 = 0.0_ki
   case(5210)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      denom6 = 0.0_ki
   case(53)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = Q2
      denom6 = 0.0_ki
   case(530)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = Q2
      denom6 = 0.0_ki
   case(531)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = Q2
      denom6 = 0.0_ki
   case(5310)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = Q2
      denom6 = 0.0_ki
   case(532)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = Q2
      denom6 = 0.0_ki
   case(5320)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = Q2
      denom6 = 0.0_ki
   case(5321)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = Q2
      denom6 = 0.0_ki
   case(54)
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(540)
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(541)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5410)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(542)
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5420)
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5421)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(543)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5430)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5431)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5432)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case default
      R = real(k3-k2+k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6-k5, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      R = real(-k2, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 67:
   if(nonzero(0)) then
      num = num + numerator_d67(icut, Q, mu2) * denom4
   end if
   !-------#] Diagram 67:
   !-------#[ Diagram 77:
   if(nonzero(1)) then
      num = num + numerator_d77(icut, Q, mu2) * denom2
   end if
   !-------#] Diagram 77:
   !-------#[ Diagram 94:
   if(nonzero(2)) then
      num = num + numerator_d94(icut, Q, mu2) * denom1 * denom4
   end if
   !-------#] Diagram 94:
   !-------#[ Diagram 107:
   if(nonzero(3)) then
      num = num + numerator_d107(icut, Q, mu2) * denom2 * denom6
   end if
   !-------#] Diagram 107:
   !-------#[ Diagram 117:
   if(nonzero(4)) then
      num = num + numerator_d117(icut, Q, mu2) * denom4 * denom6
   end if
   !-------#] Diagram 117:
   !-------#[ Diagram 125:
   if(nonzero(5)) then
      num = num + numerator_d125(icut, Q, mu2) * denom4 * denom5
   end if
   !-------#] Diagram 125:
   !-------#[ Diagram 145:
   if(nonzero(6)) then
      num = num + numerator_d145(icut, Q, mu2) * denom1 * denom4 * denom6
   end if
   !-------#] Diagram 145:
   !-------#[ Diagram 294:
   if(nonzero(7)) then
      num = num + numerator_d294(icut, Q, mu2)
   end if
   !-------#] Diagram 294:
   !-------#[ Diagram 304:
   if(nonzero(8)) then
      num = num + numerator_d304(icut, Q, mu2) * denom1
   end if
   !-------#] Diagram 304:
   !-------#[ Diagram 314:
   if(nonzero(9)) then
      num = num + numerator_d314(icut, Q, mu2) * denom6
   end if
   !-------#] Diagram 314:
   !-------#[ Diagram 317:
   if(nonzero(10)) then
      num = num + numerator_d317(icut, Q, mu2) * denom1 * denom6
   end if
   !-------#] Diagram 317:
   !-------#[ Diagram 336:
   if(nonzero(11)) then
      num = num + numerator_d336(icut, Q, mu2) * denom1 * denom5 * denom6
   end if
   !-------#] Diagram 336:
end function numeval_group16
!-----#] function numeval_group16:
!-----#[ function numeval_group17:
function     numeval_group17(icut, Q, mu2) result(num)
   use p5_usbar_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7
   use p5_usbar_epnebbbarg_model
   use p5_usbar_epnebbbarg_d291h3l1, only: numerator_d291 => numerator_samurai
   use p5_usbar_epnebbbarg_d309h3l1, only: numerator_d309 => numerator_samurai
   implicit none
   integer, intent(in) :: icut
   complex(ki_sam), dimension(4), intent(in) :: Q
   complex(ki_sam), intent(in) :: mu2
   complex(ki_sam) :: num

   logical, dimension(0:2-1) :: nonzero
   real(ki_sam), dimension(0:3) :: R
   complex(ki_sam) :: Q2
   complex(ki_sam) ::denom1,denom2,denom3,denom4,denom5,denom6

   nonzero(:) = .true.
   Q2 = Q(4)*Q(4) - Q(1)*Q(1) - Q(2)*Q(2) - Q(3)*Q(3) - mu2

   select case(icut)
   case(0)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k6-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k7+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(10)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k6-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k7+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(20)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k7+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(210)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k7+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(30)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(k3-k2+k7+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(310)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(k3-k2+k7+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(320)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(k3-k2+k7+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(3210)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(k3-k2+k7+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(40)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k6-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(410)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k6-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(420)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(4210)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(430)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(4310)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(4320)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(50)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k6-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k7+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(510)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k6-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k7+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(520)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k7+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(5210)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k7+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(530)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(k3-k2+k7+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(5310)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(k3-k2+k7+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(5320)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(k3-k2+k7+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(540)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k6-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5410)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k6-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5420)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k6-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5430)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case default
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k6-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k7+k4, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 291:
   if(nonzero(0)) then
      num = num + numerator_d291(icut, Q, mu2)
   end if
   !-------#] Diagram 291:
   !-------#[ Diagram 309:
   if(nonzero(1)) then
      num = num + numerator_d309(icut, Q, mu2) * denom1
   end if
   !-------#] Diagram 309:
end function numeval_group17
!-----#] function numeval_group17:
!-----#[ function numeval_group18:
function     numeval_group18(icut, Q, mu2) result(num)
   use p5_usbar_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7
   use p5_usbar_epnebbbarg_model
   use p5_usbar_epnebbbarg_d1h3l1, only: numerator_d1 => numerator_samurai
   use p5_usbar_epnebbbarg_d2h3l1, only: numerator_d2 => numerator_samurai
   use p5_usbar_epnebbbarg_d3h3l1, only: numerator_d3 => numerator_samurai
   use p5_usbar_epnebbbarg_d4h3l1, only: numerator_d4 => numerator_samurai
   use p5_usbar_epnebbbarg_d20h3l1, only: numerator_d20 => numerator_samurai
   use p5_usbar_epnebbbarg_d23h3l1, only: numerator_d23 => numerator_samurai
   use p5_usbar_epnebbbarg_d62h3l1, only: numerator_d62 => numerator_samurai
   use p5_usbar_epnebbbarg_d63h3l1, only: numerator_d63 => numerator_samurai
   use p5_usbar_epnebbbarg_d73h3l1, only: numerator_d73 => numerator_samurai
   use p5_usbar_epnebbbarg_d74h3l1, only: numerator_d74 => numerator_samurai
   use p5_usbar_epnebbbarg_d99h3l1, only: numerator_d99 => numerator_samurai
   use p5_usbar_epnebbbarg_d100h3l1, only: numerator_d100 => numerator_samurai
   use p5_usbar_epnebbbarg_d104h3l1, only: numerator_d104 => numerator_samurai
   use p5_usbar_epnebbbarg_d119h3l1, only: numerator_d119 => numerator_samurai
   use p5_usbar_epnebbbarg_d122h3l1, only: numerator_d122 => numerator_samurai
   use p5_usbar_epnebbbarg_d175h3l1, only: numerator_d175 => numerator_samurai
   use p5_usbar_epnebbbarg_d179h3l1, only: numerator_d179 => numerator_samurai
   use p5_usbar_epnebbbarg_d219h3l1, only: numerator_d219 => numerator_samurai
   use p5_usbar_epnebbbarg_d221h3l1, only: numerator_d221 => numerator_samurai
   use p5_usbar_epnebbbarg_d225h3l1, only: numerator_d225 => numerator_samurai
   use p5_usbar_epnebbbarg_d229h3l1, only: numerator_d229 => numerator_samurai
   use p5_usbar_epnebbbarg_d240h3l1, only: numerator_d240 => numerator_samurai
   use p5_usbar_epnebbbarg_d299h3l1, only: numerator_d299 => numerator_samurai
   use p5_usbar_epnebbbarg_d307h3l1, only: numerator_d307 => numerator_samurai
   use p5_usbar_epnebbbarg_d313h3l1, only: numerator_d313 => numerator_samurai
   use p5_usbar_epnebbbarg_d321h3l1, only: numerator_d321 => numerator_samurai
   use p5_usbar_epnebbbarg_d333h3l1, only: numerator_d333 => numerator_samurai
   use p5_usbar_epnebbbarg_d335h3l1, only: numerator_d335 => numerator_samurai
   implicit none
   integer, intent(in) :: icut
   complex(ki_sam), dimension(4), intent(in) :: Q
   complex(ki_sam), intent(in) :: mu2
   complex(ki_sam) :: num

   logical, dimension(0:28-1) :: nonzero
   real(ki_sam), dimension(0:3) :: R
   complex(ki_sam) :: Q2
   complex(ki_sam) ::denom1,denom2,denom3,denom4,denom5,denom6

   nonzero(:) = .true.
   Q2 = Q(4)*Q(4) - Q(1)*Q(1) - Q(2)*Q(2) - Q(3)*Q(3) - mu2

   select case(icut)
   case(0)
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(6) = .false.
      nonzero(10) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(1)
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(17) = .false.
      nonzero(27) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(10)
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(10) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(2)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(14) = .false.
      nonzero(16) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(20)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(21)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(14) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(27) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(210)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(3)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      nonzero(17) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(30)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(31)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      nonzero(17) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(27) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(310)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(32)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(320)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(321)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(27) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(3210)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(4)
      nonzero(4) = .false.
      nonzero(6) = .false.
      nonzero(18) = .false.
      nonzero(26) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(40)
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(6) = .false.
      nonzero(10) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(41)
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(410)
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(10) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(42)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(14) = .false.
      nonzero(16) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(26) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(420)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(421)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(14) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(4210)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(43)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(26) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(430)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(431)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(4310)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(432)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(26) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(4320)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(4321)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(5)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(7) = .false.
      nonzero(11) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(50)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(51)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(11) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(510)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(52)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(520)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(521)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(5210)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(53)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(530)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(531)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(5310)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(532)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(5320)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(5321)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(54)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(11) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(540)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(541)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(11) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5410)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(542)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5420)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5421)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(543)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5430)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5431)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5432)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case default
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k6, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 1:
   if(nonzero(0)) then
      num = num + numerator_d1(icut, Q, mu2) * denom3 * denom4
   end if
   !-------#] Diagram 1:
   !-------#[ Diagram 2:
   if(nonzero(1)) then
      num = num + numerator_d2(icut, Q, mu2) * denom3 * denom4 * denom6
   end if
   !-------#] Diagram 2:
   !-------#[ Diagram 3:
   if(nonzero(2)) then
      num = num + numerator_d3(icut, Q, mu2) * denom1 * denom3 * denom4
   end if
   !-------#] Diagram 3:
   !-------#[ Diagram 4:
   if(nonzero(3)) then
      num = num + numerator_d4(icut, Q, mu2) * denom1 * denom3 * denom4 * denom6
   end if
   !-------#] Diagram 4:
   !-------#[ Diagram 20:
   if(nonzero(4)) then
      num = num + numerator_d20(icut, Q, mu2) * denom3 * denom4 * denom5
   end if
   !-------#] Diagram 20:
   !-------#[ Diagram 23:
   if(nonzero(5)) then
      num = num + numerator_d23(icut, Q, mu2) * denom2 * denom3 * denom4
   end if
   !-------#] Diagram 23:
   !-------#[ Diagram 62:
   if(nonzero(6)) then
      num = num + numerator_d62(icut, Q, mu2) * denom1 * denom3 * denom4 * denom5
   end if
   !-------#] Diagram 62:
   !-------#[ Diagram 63:
   if(nonzero(7)) then
      num = num + numerator_d63(icut, Q, mu2) * denom2 * denom3 * denom4 * denom6
   end if
   !-------#] Diagram 63:
   !-------#[ Diagram 73:
   if(nonzero(8)) then
      num = num + numerator_d73(icut, Q, mu2) * denom4
   end if
   !-------#] Diagram 73:
   !-------#[ Diagram 74:
   if(nonzero(9)) then
      num = num + numerator_d74(icut, Q, mu2) * denom3
   end if
   !-------#] Diagram 74:
   !-------#[ Diagram 99:
   if(nonzero(10)) then
      num = num + numerator_d99(icut, Q, mu2) * denom1 * denom4
   end if
   !-------#] Diagram 99:
   !-------#[ Diagram 100:
   if(nonzero(11)) then
      num = num + numerator_d100(icut, Q, mu2) * denom3 * denom6
   end if
   !-------#] Diagram 100:
   !-------#[ Diagram 104:
   if(nonzero(12)) then
      num = num + numerator_d104(icut, Q, mu2) * denom3 * denom4
   end if
   !-------#] Diagram 104:
   !-------#[ Diagram 119:
   if(nonzero(13)) then
      num = num + numerator_d119(icut, Q, mu2) * denom4 * denom6
   end if
   !-------#] Diagram 119:
   !-------#[ Diagram 122:
   if(nonzero(14)) then
      num = num + numerator_d122(icut, Q, mu2) * denom1 * denom3
   end if
   !-------#] Diagram 122:
   !-------#[ Diagram 175:
   if(nonzero(15)) then
      num = num + numerator_d175(icut, Q, mu2) * denom1 * denom4 * denom6
   end if
   !-------#] Diagram 175:
   !-------#[ Diagram 179:
   if(nonzero(16)) then
      num = num + numerator_d179(icut, Q, mu2) * denom1 * denom3 * denom6
   end if
   !-------#] Diagram 179:
   !-------#[ Diagram 219:
   if(nonzero(17)) then
      num = num + numerator_d219(icut, Q, mu2) * denom1 * denom2 * denom4 * den&
      &om6
   end if
   !-------#] Diagram 219:
   !-------#[ Diagram 221:
   if(nonzero(18)) then
      num = num + numerator_d221(icut, Q, mu2) * denom1 * denom3 * denom5 * den&
      &om6
   end if
   !-------#] Diagram 221:
   !-------#[ Diagram 225:
   if(nonzero(19)) then
      num = num + numerator_d225(icut, Q, mu2) * denom3 * denom4 * denom6
   end if
   !-------#] Diagram 225:
   !-------#[ Diagram 229:
   if(nonzero(20)) then
      num = num + numerator_d229(icut, Q, mu2) * denom1 * denom3 * denom4
   end if
   !-------#] Diagram 229:
   !-------#[ Diagram 240:
   if(nonzero(21)) then
      num = num + numerator_d240(icut, Q, mu2) * denom1 * denom3 * denom4 * den&
      &om6
   end if
   !-------#] Diagram 240:
   !-------#[ Diagram 299:
   if(nonzero(22)) then
      num = num + numerator_d299(icut, Q, mu2)
   end if
   !-------#] Diagram 299:
   !-------#[ Diagram 307:
   if(nonzero(23)) then
      num = num + numerator_d307(icut, Q, mu2) * denom6
   end if
   !-------#] Diagram 307:
   !-------#[ Diagram 313:
   if(nonzero(24)) then
      num = num + numerator_d313(icut, Q, mu2) * denom1
   end if
   !-------#] Diagram 313:
   !-------#[ Diagram 321:
   if(nonzero(25)) then
      num = num + numerator_d321(icut, Q, mu2) * denom1 * denom6
   end if
   !-------#] Diagram 321:
   !-------#[ Diagram 333:
   if(nonzero(26)) then
      num = num + numerator_d333(icut, Q, mu2) * denom1 * denom5 * denom6
   end if
   !-------#] Diagram 333:
   !-------#[ Diagram 335:
   if(nonzero(27)) then
      num = num + numerator_d335(icut, Q, mu2) * denom1 * denom2 * denom6
   end if
   !-------#] Diagram 335:
end function numeval_group18
!-----#] function numeval_group18:
!-----#[ function numeval_group19:
function     numeval_group19(icut, Q, mu2) result(num)
   use p5_usbar_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7
   use p5_usbar_epnebbbarg_model
   use p5_usbar_epnebbbarg_d293h3l1, only: numerator_d293 => numerator_samurai
   use p5_usbar_epnebbbarg_d306h3l1, only: numerator_d306 => numerator_samurai
   use p5_usbar_epnebbbarg_d312h3l1, only: numerator_d312 => numerator_samurai
   implicit none
   integer, intent(in) :: icut
   complex(ki_sam), dimension(4), intent(in) :: Q
   complex(ki_sam), intent(in) :: mu2
   complex(ki_sam) :: num

   logical, dimension(0:3-1) :: nonzero
   real(ki_sam), dimension(0:3) :: R
   complex(ki_sam) :: Q2
   complex(ki_sam) ::denom1,denom2,denom3,denom4,denom5,denom6

   nonzero(:) = .true.
   Q2 = Q(4)*Q(4) - Q(1)*Q(1) - Q(2)*Q(2) - Q(3)*Q(3) - mu2

   select case(icut)
   case(0)
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(10)
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(20)
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k7-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(210)
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k7-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(30)
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(310)
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(320)
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(3210)
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(40)
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(410)
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(420)
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k7-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(4210)
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k7-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(430)
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(4310)
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(4320)
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(5)
      nonzero(1) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(50)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(51)
      nonzero(1) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(510)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(52)
      nonzero(1) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k7-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(520)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k7-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(521)
      nonzero(1) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k7-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(5210)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k7-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(53)
      nonzero(1) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(530)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(531)
      nonzero(1) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(5310)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(532)
      nonzero(1) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(5320)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(5321)
      nonzero(1) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(54)
      nonzero(1) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(540)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(541)
      nonzero(1) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5410)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(542)
      nonzero(1) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k7-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5420)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k7-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5421)
      nonzero(1) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k7-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(543)
      nonzero(1) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5430)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5431)
      nonzero(1) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5432)
      nonzero(1) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case default
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k5, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 293:
   if(nonzero(0)) then
      num = num + numerator_d293(icut, Q, mu2)
   end if
   !-------#] Diagram 293:
   !-------#[ Diagram 306:
   if(nonzero(1)) then
      num = num + numerator_d306(icut, Q, mu2) * denom6
   end if
   !-------#] Diagram 306:
   !-------#[ Diagram 312:
   if(nonzero(2)) then
      num = num + numerator_d312(icut, Q, mu2) * denom1
   end if
   !-------#] Diagram 312:
end function numeval_group19
!-----#] function numeval_group19:
!-----#[ function numeval_group20:
function     numeval_group20(icut, Q, mu2) result(num)
   use p5_usbar_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7
   use p5_usbar_epnebbbarg_model
   use p5_usbar_epnebbbarg_d69h3l1, only: numerator_d69 => numerator_samurai
   use p5_usbar_epnebbbarg_d96h3l1, only: numerator_d96 => numerator_samurai
   use p5_usbar_epnebbbarg_d113h3l1, only: numerator_d113 => numerator_samurai
   use p5_usbar_epnebbbarg_d123h3l1, only: numerator_d123 => numerator_samurai
   use p5_usbar_epnebbbarg_d297h3l1, only: numerator_d297 => numerator_samurai
   use p5_usbar_epnebbbarg_d308h3l1, only: numerator_d308 => numerator_samurai
   use p5_usbar_epnebbbarg_d311h3l1, only: numerator_d311 => numerator_samurai
   use p5_usbar_epnebbbarg_d319h3l1, only: numerator_d319 => numerator_samurai
   use p5_usbar_epnebbbarg_d334h3l1, only: numerator_d334 => numerator_samurai
   implicit none
   integer, intent(in) :: icut
   complex(ki_sam), dimension(4), intent(in) :: Q
   complex(ki_sam), intent(in) :: mu2
   complex(ki_sam) :: num

   logical, dimension(0:9-1) :: nonzero
   real(ki_sam), dimension(0:3) :: R
   complex(ki_sam) :: Q2
   complex(ki_sam) ::denom1,denom2,denom3,denom4,denom5,denom6

   nonzero(:) = .true.
   Q2 = Q(4)*Q(4) - Q(1)*Q(1) - Q(2)*Q(2) - Q(3)*Q(3) - mu2

   select case(icut)
   case(0)
      nonzero(1) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(10)
      nonzero(1) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(20)
      nonzero(1) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(210)
      nonzero(1) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(3)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(30)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(31)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(310)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(32)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(320)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(321)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(3210)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(4)
      nonzero(3) = .false.
      nonzero(8) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(40)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(41)
      nonzero(3) = .false.
      nonzero(8) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(410)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(42)
      nonzero(3) = .false.
      nonzero(8) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(420)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(421)
      nonzero(3) = .false.
      nonzero(8) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(4210)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(43)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(8) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(430)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(431)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(8) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(4310)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(432)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(8) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(4320)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(4321)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(8) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   case(5)
      nonzero(2) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(50)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(51)
      nonzero(2) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(510)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(52)
      nonzero(2) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(520)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(521)
      nonzero(2) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(5210)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(53)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(530)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(531)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(5310)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(532)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(5320)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(5321)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(54)
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(540)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(541)
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5410)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(542)
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5420)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5421)
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(543)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5430)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5431)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5432)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case default
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k7, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(-k7-k6, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_sam)
      denom5 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_sam)
      denom6 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 69:
   if(nonzero(0)) then
      num = num + numerator_d69(icut, Q, mu2) * denom4
   end if
   !-------#] Diagram 69:
   !-------#[ Diagram 96:
   if(nonzero(1)) then
      num = num + numerator_d96(icut, Q, mu2) * denom1 * denom4
   end if
   !-------#] Diagram 96:
   !-------#[ Diagram 113:
   if(nonzero(2)) then
      num = num + numerator_d113(icut, Q, mu2) * denom4 * denom6
   end if
   !-------#] Diagram 113:
   !-------#[ Diagram 123:
   if(nonzero(3)) then
      num = num + numerator_d123(icut, Q, mu2) * denom4 * denom5
   end if
   !-------#] Diagram 123:
   !-------#[ Diagram 297:
   if(nonzero(4)) then
      num = num + numerator_d297(icut, Q, mu2)
   end if
   !-------#] Diagram 297:
   !-------#[ Diagram 308:
   if(nonzero(5)) then
      num = num + numerator_d308(icut, Q, mu2) * denom6
   end if
   !-------#] Diagram 308:
   !-------#[ Diagram 311:
   if(nonzero(6)) then
      num = num + numerator_d311(icut, Q, mu2) * denom1
   end if
   !-------#] Diagram 311:
   !-------#[ Diagram 319:
   if(nonzero(7)) then
      num = num + numerator_d319(icut, Q, mu2) * denom1 * denom6
   end if
   !-------#] Diagram 319:
   !-------#[ Diagram 334:
   if(nonzero(8)) then
      num = num + numerator_d334(icut, Q, mu2) * denom1 * denom5 * denom6
   end if
   !-------#] Diagram 334:
end function numeval_group20
!-----#] function numeval_group20:
!---#] grouped numerators for samurai:
!---#[ reduce groups with samurai:
!-----#[ subroutine reduce_group0:
subroutine     reduce_group0(scale2,tot,totr,ok)
   use msamurai, only: samurai, samurai_rm, samurai_cm
   use options, only: samurai_out => iout
   use madds, only: s_mat
   use p5_usbar_epnebbbarg_config, only: samurai_group_numerators, &
      & samurai_verbosity, samurai_istop, samurai_test, &
      & debug_nlo_diagrams, logfile
   use p5_usbar_epnebbbarg_kinematics
   use p5_usbar_epnebbbarg_model
   use p5_usbar_epnebbbarg_d322h3l1, only: numerator_diagram322 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_globalsl1, only: epspow

   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   complex(ki_sam), dimension(-2:0) :: acc
   complex(ki_sam) :: accr
   logical :: acc_ok

   integer :: istopm, istop0

   integer, parameter :: effective_group_rank = 3
   !-----------#[ invariants for samurai:
   complex(ki_sam), dimension(4, 4) :: g_mat
   !-----------#] initialize invariants:
   real(ki_sam), dimension(4) :: msq
   real(ki_sam), dimension(4,4) :: Vi

   if(samurai_test.eq.1 .or. samurai_test.eq.3) then
      istopm = 1
      istop0 = 1
   else
      istopm = samurai_istop
      istop0 = max(2,samurai_istop)
   end if
   msq(1) = real(mB*mB, ki_sam)
   Vi(1,:) = real(k7((/2,3,4,1/))+k6((/2,3,4,1/)), ki_sam)
   msq(2) = 0.0_ki_sam
   Vi(2,:) = real(k7((/2,3,4,1/)), ki_sam)
   msq(3) = 0.0_ki_sam
   Vi(3,:) = real(0, ki_sam)
   msq(4) = real(mB*mB, ki_sam)
   Vi(4,:) = real(-k5((/2,3,4,1/)), ki_sam)
   !-----------#[ initialize invariants:
   g_mat(1, 1) = real(-2.0_ki*mB**2, ki_sam)
   g_mat(1, 2) = real(0.0_ki, ki_sam)
   g_mat(2, 1) = g_mat(1, 2)
   g_mat(1, 3) = real(-mB**2+es67, ki_sam)
   g_mat(3, 1) = g_mat(1, 3)
   g_mat(1, 4) = real(-2.0_ki*mB**2+es567, ki_sam)
   g_mat(4, 1) = g_mat(1, 4)
   g_mat(2, 2) = real(0.0_ki, ki_sam)
   g_mat(2, 3) = real(0.0_ki, ki_sam)
   g_mat(3, 2) = g_mat(2, 3)
   g_mat(2, 4) = real(mB**2-es56-es67+es567, ki_sam)
   g_mat(4, 2) = g_mat(2, 4)
   g_mat(3, 3) = real(0.0_ki, ki_sam)
   g_mat(3, 4) = real(0.0_ki, ki_sam)
   g_mat(4, 3) = g_mat(3, 4)
   g_mat(4, 4) = real(-2.0_ki*mB**2, ki_sam)
   !-----------#] initialize invariants:

   if(samurai_group_numerators) then
      !------#[ reduce numerator numeval_group0:
      if(samurai_verbosity > 0) then
         write(samurai_out,*) "[golem-2.0] numeval_group0"
         write(samurai_out,*) "[golem-2.0] epspow=", epspow
      end if
      !-----------#[ initialize invariants:
      allocate(s_mat(4, 4))
      s_mat(:,:) = g_mat(:,:)
      !-----------#] initialize invariants:
      call samurai_rm(numeval_group0, tot, totr, Vi, msq, 4, &
         & effective_group_rank, istopm, scale2, ok, &
         & samurai_cache_flag_g0, samurai_cache_g0)
      !-----------#[ deallocate invariants:
      deallocate(s_mat)
      !-----------#] deallocate invariants:

      !------#] reduce numerator numeval_group0:
   else
      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='322'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram322"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/1,2,3,4/), (/1,2,3,4/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram322, acc, accr, &
            & Vi((/1,2,3,4/),:), msq((/1,2,3,4/)), 4, &
            & 3, istopm, scale2, ok, &
            & samurai_cache_flag_d322, samurai_cache_d322)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot =  + acc
         totr =  + accr
      !------#] sum over reduction of single diagrams:
   end if
end subroutine reduce_group0
!-----#] subroutine reduce_group0:
!-----#[ subroutine reduce_group1:
subroutine     reduce_group1(scale2,tot,totr,ok)
   use msamurai, only: samurai, samurai_rm, samurai_cm
   use options, only: samurai_out => iout
   use madds, only: s_mat
   use p5_usbar_epnebbbarg_config, only: samurai_group_numerators, &
      & samurai_verbosity, samurai_istop, samurai_test, &
      & debug_nlo_diagrams, logfile
   use p5_usbar_epnebbbarg_kinematics
   use p5_usbar_epnebbbarg_model
   use p5_usbar_epnebbbarg_d176h3l1, only: numerator_diagram176 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d318h3l1, only: numerator_diagram318 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_globalsl1, only: epspow

   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   complex(ki_sam), dimension(-2:0) :: acc
   complex(ki_sam) :: accr
   logical :: acc_ok

   integer :: istopm, istop0

   integer, parameter :: effective_group_rank = 3
   !-----------#[ invariants for samurai:
   complex(ki_sam), dimension(4, 4) :: g_mat
   !-----------#] initialize invariants:
   real(ki_sam), dimension(4) :: msq
   real(ki_sam), dimension(4,4) :: Vi

   if(samurai_test.eq.1 .or. samurai_test.eq.3) then
      istopm = 1
      istop0 = 1
   else
      istopm = samurai_istop
      istop0 = max(2,samurai_istop)
   end if
   msq(1) = real(mB*mB, ki_sam)
   Vi(1,:) = real(-k7((/2,3,4,1/))-k5((/2,3,4,1/)), ki_sam)
   msq(2) = real(mB*mB, ki_sam)
   Vi(2,:) = real(-k5((/2,3,4,1/)), ki_sam)
   msq(3) = 0.0_ki_sam
   Vi(3,:) = real(0, ki_sam)
   msq(4) = real(mB*mB, ki_sam)
   Vi(4,:) = real(k6((/2,3,4,1/)), ki_sam)
   !-----------#[ initialize invariants:
   g_mat(1, 1) = real(-2.0_ki*mB**2, ki_sam)
   g_mat(1, 2) = real(-2.0_ki*mB**2, ki_sam)
   g_mat(2, 1) = g_mat(1, 2)
   g_mat(1, 3) = real(mB**2-es56-es67+es567, ki_sam)
   g_mat(3, 1) = g_mat(1, 3)
   g_mat(1, 4) = real(-2.0_ki*mB**2+es567, ki_sam)
   g_mat(4, 1) = g_mat(1, 4)
   g_mat(2, 2) = real(-2.0_ki*mB**2, ki_sam)
   g_mat(2, 3) = real(0.0_ki, ki_sam)
   g_mat(3, 2) = g_mat(2, 3)
   g_mat(2, 4) = real(-2.0_ki*mB**2+es56, ki_sam)
   g_mat(4, 2) = g_mat(2, 4)
   g_mat(3, 3) = real(0.0_ki, ki_sam)
   g_mat(3, 4) = real(0.0_ki, ki_sam)
   g_mat(4, 3) = g_mat(3, 4)
   g_mat(4, 4) = real(-2.0_ki*mB**2, ki_sam)
   !-----------#] initialize invariants:

   if(samurai_group_numerators) then
      !------#[ reduce numerator numeval_group1:
      if(samurai_verbosity > 0) then
         write(samurai_out,*) "[golem-2.0] numeval_group1"
         write(samurai_out,*) "[golem-2.0] epspow=", epspow
      end if
      !-----------#[ initialize invariants:
      allocate(s_mat(4, 4))
      s_mat(:,:) = g_mat(:,:)
      !-----------#] initialize invariants:
      call samurai_rm(numeval_group1, tot, totr, Vi, msq, 4, &
         & effective_group_rank, istopm, scale2, ok, &
         & samurai_cache_flag_g1, samurai_cache_g1)
      !-----------#[ deallocate invariants:
      deallocate(s_mat)
      !-----------#] deallocate invariants:

      !------#] reduce numerator numeval_group1:
   else
      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='176'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram176"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(3, 3))
         s_mat(:,:) = g_mat( (/1,3,4/), (/1,3,4/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram176, acc, accr, &
            & Vi((/1,3,4/),:), msq((/1,3,4/)), 3, &
            & 2, istopm, scale2, ok, &
            & samurai_cache_flag_d176, samurai_cache_d176)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot =  + acc
         totr =  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='318'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram318"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/1,2,3,4/), (/1,2,3,4/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram318, acc, accr, &
            & Vi((/1,2,3,4/),:), msq((/1,2,3,4/)), 4, &
            & 3, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d318, samurai_cache_d318)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
      !------#] sum over reduction of single diagrams:
   end if
end subroutine reduce_group1
!-----#] subroutine reduce_group1:
!-----#[ subroutine reduce_group2:
subroutine     reduce_group2(scale2,tot,totr,ok)
   use msamurai, only: samurai, samurai_rm, samurai_cm
   use options, only: samurai_out => iout
   use madds, only: s_mat
   use p5_usbar_epnebbbarg_config, only: samurai_group_numerators, &
      & samurai_verbosity, samurai_istop, samurai_test, &
      & debug_nlo_diagrams, logfile
   use p5_usbar_epnebbbarg_kinematics
   use p5_usbar_epnebbbarg_model
   use p5_usbar_epnebbbarg_d28h3l1, only: numerator_diagram28 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_d87h3l1, only: numerator_diagram87 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_d153h3l1, only: numerator_diagram153 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d180h3l1, only: numerator_diagram180 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d244h3l1, only: numerator_diagram244 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d320h3l1, only: numerator_diagram320 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_globalsl1, only: epspow

   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   complex(ki_sam), dimension(-2:0) :: acc
   complex(ki_sam) :: accr
   logical :: acc_ok

   integer :: istopm, istop0

   integer, parameter :: effective_group_rank = 4
   !-----------#[ invariants for samurai:
   complex(ki_sam), dimension(4, 4) :: g_mat
   !-----------#] initialize invariants:
   real(ki_sam), dimension(4) :: msq
   real(ki_sam), dimension(4,4) :: Vi

   if(samurai_test.eq.1 .or. samurai_test.eq.3) then
      istopm = 1
      istop0 = 1
   else
      istopm = samurai_istop
      istop0 = max(2,samurai_istop)
   end if
   msq(1) = real(mB*mB, ki_sam)
   Vi(1,:) = real(k7((/2,3,4,1/))+k6((/2,3,4,1/)), ki_sam)
   msq(2) = real(mB*mB, ki_sam)
   Vi(2,:) = real(k6((/2,3,4,1/)), ki_sam)
   msq(3) = 0.0_ki_sam
   Vi(3,:) = real(0, ki_sam)
   msq(4) = real(mB*mB, ki_sam)
   Vi(4,:) = real(-k5((/2,3,4,1/)), ki_sam)
   !-----------#[ initialize invariants:
   g_mat(1, 1) = real(-2.0_ki*mB**2, ki_sam)
   g_mat(1, 2) = real(-2.0_ki*mB**2, ki_sam)
   g_mat(2, 1) = g_mat(1, 2)
   g_mat(1, 3) = real(-mB**2+es67, ki_sam)
   g_mat(3, 1) = g_mat(1, 3)
   g_mat(1, 4) = real(-2.0_ki*mB**2+es567, ki_sam)
   g_mat(4, 1) = g_mat(1, 4)
   g_mat(2, 2) = real(-2.0_ki*mB**2, ki_sam)
   g_mat(2, 3) = real(0.0_ki, ki_sam)
   g_mat(3, 2) = g_mat(2, 3)
   g_mat(2, 4) = real(-2.0_ki*mB**2+es56, ki_sam)
   g_mat(4, 2) = g_mat(2, 4)
   g_mat(3, 3) = real(0.0_ki, ki_sam)
   g_mat(3, 4) = real(0.0_ki, ki_sam)
   g_mat(4, 3) = g_mat(3, 4)
   g_mat(4, 4) = real(-2.0_ki*mB**2, ki_sam)
   !-----------#] initialize invariants:

   if(samurai_group_numerators) then
      !------#[ reduce numerator numeval_group2:
      if(samurai_verbosity > 0) then
         write(samurai_out,*) "[golem-2.0] numeval_group2"
         write(samurai_out,*) "[golem-2.0] epspow=", epspow
      end if
      !-----------#[ initialize invariants:
      allocate(s_mat(4, 4))
      s_mat(:,:) = g_mat(:,:)
      !-----------#] initialize invariants:
      call samurai_rm(numeval_group2, tot, totr, Vi, msq, 4, &
         & effective_group_rank, istopm, scale2, ok, &
         & samurai_cache_flag_g2, samurai_cache_g2)
      !-----------#[ deallocate invariants:
      deallocate(s_mat)
      !-----------#] deallocate invariants:

      !------#] reduce numerator numeval_group2:
   else
      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='28'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram28"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(2, 2))
         s_mat(:,:) = g_mat( (/2,4/), (/2,4/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram28, acc, accr, &
            & Vi((/2,4/),:), msq((/2,4/)), 2, &
            & 2, istopm, scale2, ok, &
            & samurai_cache_flag_d28, samurai_cache_d28)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", -real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", -real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", -real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", -real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot =  + acc
         totr =  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='87'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram87"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(3, 3))
         s_mat(:,:) = g_mat( (/2,3,4/), (/2,3,4/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram87, acc, accr, &
            & Vi((/2,3,4/),:), msq((/2,3,4/)), 3, &
            & 2, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d87, samurai_cache_d87)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='153'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram153"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(3, 3))
         s_mat(:,:) = g_mat( (/1,2,4/), (/1,2,4/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram153, acc, accr, &
            & Vi((/1,2,4/),:), msq((/1,2,4/)), 3, &
            & 3, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d153, samurai_cache_d153)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", -real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", -real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", -real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", -real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='180'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram180"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(3, 3))
         s_mat(:,:) = g_mat( (/1,3,4/), (/1,3,4/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram180, acc, accr, &
            & Vi((/1,3,4/),:), msq((/1,3,4/)), 3, &
            & 2, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d180, samurai_cache_d180)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='244'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram244"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(2, 2))
         s_mat(:,:) = g_mat( (/1,4/), (/1,4/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram244, acc, accr, &
            & Vi((/1,4/),:), msq((/1,4/)), 2, &
            & 2, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d244, samurai_cache_d244)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", -real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", -real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", -real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", -real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='320'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram320"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/1,2,3,4/), (/1,2,3,4/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram320, acc, accr, &
            & Vi((/1,2,3,4/),:), msq((/1,2,3,4/)), 4, &
            & 3, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d320, samurai_cache_d320)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
      !------#] sum over reduction of single diagrams:
   end if
end subroutine reduce_group2
!-----#] subroutine reduce_group2:
!-----#[ subroutine reduce_group3:
subroutine     reduce_group3(scale2,tot,totr,ok)
   use msamurai, only: samurai, samurai_rm, samurai_cm
   use options, only: samurai_out => iout
   use madds, only: s_mat
   use p5_usbar_epnebbbarg_config, only: samurai_group_numerators, &
      & samurai_verbosity, samurai_istop, samurai_test, &
      & debug_nlo_diagrams, logfile
   use p5_usbar_epnebbbarg_kinematics
   use p5_usbar_epnebbbarg_model
   use p5_usbar_epnebbbarg_d13h3l1, only: numerator_diagram13 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_d84h3l1, only: numerator_diagram84 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_globalsl1, only: epspow

   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   complex(ki_sam), dimension(-2:0) :: acc
   complex(ki_sam) :: accr
   logical :: acc_ok

   integer :: istopm, istop0

   integer, parameter :: effective_group_rank = 4
   !-----------#[ invariants for samurai:
   complex(ki_sam), dimension(5, 5) :: g_mat
   !-----------#] initialize invariants:
   real(ki_sam), dimension(5) :: msq
   real(ki_sam), dimension(5,4) :: Vi

   if(samurai_test.eq.1 .or. samurai_test.eq.3) then
      istopm = 1
      istop0 = 1
   else
      istopm = samurai_istop
      istop0 = max(2,samurai_istop)
   end if
   msq(1) = 0.0_ki_sam
   Vi(1,:) = real(-k2((/2,3,4,1/))+k6((/2,3,4,1/))+k5((/2,3,4,1/)), ki_sam)
   msq(2) = 0.0_ki_sam
   Vi(2,:) = real(-k2((/2,3,4,1/)), ki_sam)
   msq(3) = 0.0_ki_sam
   Vi(3,:) = real(0, ki_sam)
   msq(4) = 0.0_ki_sam
   Vi(4,:) = real(-k7((/2,3,4,1/)), ki_sam)
   msq(5) = 0.0_ki_sam
   Vi(5,:) = real(k3((/2,3,4,1/))-k2((/2,3,4,1/))+k6((/2,3,4,1/))+k5((/2,3,4,1/&
   &))+k4((/2,3,4,1/)), ki_sam)
   !-----------#[ initialize invariants:
   g_mat(1, 1) = real(0.0_ki, ki_sam)
   g_mat(1, 2) = real(es56, ki_sam)
   g_mat(2, 1) = g_mat(1, 2)
   g_mat(1, 3) = real(es34+es56-es234+es71-es712, ki_sam)
   g_mat(3, 1) = g_mat(1, 3)
   g_mat(1, 4) = real(es34+es567-es234-es12, ki_sam)
   g_mat(4, 1) = g_mat(1, 4)
   g_mat(1, 5) = real(es34, ki_sam)
   g_mat(5, 1) = g_mat(1, 5)
   g_mat(2, 2) = real(0.0_ki, ki_sam)
   g_mat(2, 3) = real(0.0_ki, ki_sam)
   g_mat(3, 2) = g_mat(2, 3)
   g_mat(2, 4) = real(-es12-es71+es712, ki_sam)
   g_mat(4, 2) = g_mat(2, 4)
   g_mat(2, 5) = real(es712, ki_sam)
   g_mat(5, 2) = g_mat(2, 5)
   g_mat(3, 3) = real(0.0_ki, ki_sam)
   g_mat(3, 4) = real(0.0_ki, ki_sam)
   g_mat(4, 3) = g_mat(3, 4)
   g_mat(3, 5) = real(es71, ki_sam)
   g_mat(5, 3) = g_mat(3, 5)
   g_mat(4, 4) = real(0.0_ki, ki_sam)
   g_mat(4, 5) = real(0.0_ki, ki_sam)
   g_mat(5, 4) = g_mat(4, 5)
   g_mat(5, 5) = real(0.0_ki, ki_sam)
   !-----------#] initialize invariants:

   if(samurai_group_numerators) then
      !------#[ reduce numerator numeval_group3:
      if(samurai_verbosity > 0) then
         write(samurai_out,*) "[golem-2.0] numeval_group3"
         write(samurai_out,*) "[golem-2.0] epspow=", epspow
      end if
      !-----------#[ initialize invariants:
      allocate(s_mat(5, 5))
      s_mat(:,:) = g_mat(:,:)
      !-----------#] initialize invariants:
      call samurai_rm(numeval_group3, tot, totr, Vi, msq, 5, &
         & effective_group_rank, istop0, scale2, ok, &
         & samurai_cache_flag_g3, samurai_cache_g3)
      !-----------#[ deallocate invariants:
      deallocate(s_mat)
      !-----------#] deallocate invariants:

      !------#] reduce numerator numeval_group3:
   else
      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='13'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram13"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/1,2,3,5/), (/1,2,3,5/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram13, acc, accr, &
            & Vi((/1,2,3,5/),:), msq((/1,2,3,5/)), 4, &
            & 3, istop0, scale2, ok, &
            & samurai_cache_flag_d13, samurai_cache_d13)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot =  + acc
         totr =  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='84'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram84"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(5, 5))
         s_mat(:,:) = g_mat( (/1,2,3,4,5/), (/1,2,3,4,5/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram84, acc, accr, &
            & Vi((/1,2,3,4,5/),:), msq((/1,2,3,4,5/)), 5, &
            & 4, istop0, scale2, acc_ok, &
            & samurai_cache_flag_d84, samurai_cache_d84)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
      !------#] sum over reduction of single diagrams:
   end if
end subroutine reduce_group3
!-----#] subroutine reduce_group3:
!-----#[ subroutine reduce_group4:
subroutine     reduce_group4(scale2,tot,totr,ok)
   use msamurai, only: samurai, samurai_rm, samurai_cm
   use options, only: samurai_out => iout
   use madds, only: s_mat
   use p5_usbar_epnebbbarg_config, only: samurai_group_numerators, &
      & samurai_verbosity, samurai_istop, samurai_test, &
      & debug_nlo_diagrams, logfile
   use p5_usbar_epnebbbarg_kinematics
   use p5_usbar_epnebbbarg_model
   use p5_usbar_epnebbbarg_d12h3l1, only: numerator_diagram12 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_d85h3l1, only: numerator_diagram85 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_globalsl1, only: epspow

   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   complex(ki_sam), dimension(-2:0) :: acc
   complex(ki_sam) :: accr
   logical :: acc_ok

   integer :: istopm, istop0

   integer, parameter :: effective_group_rank = 4
   !-----------#[ invariants for samurai:
   complex(ki_sam), dimension(5, 5) :: g_mat
   !-----------#] initialize invariants:
   real(ki_sam), dimension(5) :: msq
   real(ki_sam), dimension(5,4) :: Vi

   if(samurai_test.eq.1 .or. samurai_test.eq.3) then
      istopm = 1
      istop0 = 1
   else
      istopm = samurai_istop
      istop0 = max(2,samurai_istop)
   end if
   msq(1) = 0.0_ki_sam
   Vi(1,:) = real(k3((/2,3,4,1/))-k2((/2,3,4,1/))+k4((/2,3,4,1/)), ki_sam)
   msq(2) = 0.0_ki_sam
   Vi(2,:) = real(k3((/2,3,4,1/))-k2((/2,3,4,1/))+k6((/2,3,4,1/))+k5((/2,3,4,1/&
   &))+k4((/2,3,4,1/)), ki_sam)
   msq(3) = 0.0_ki_sam
   Vi(3,:) = real(-k7((/2,3,4,1/)), ki_sam)
   msq(4) = 0.0_ki_sam
   Vi(4,:) = real(0, ki_sam)
   msq(5) = 0.0_ki_sam
   Vi(5,:) = real(-k2((/2,3,4,1/)), ki_sam)
   !-----------#[ initialize invariants:
   g_mat(1, 1) = real(0.0_ki, ki_sam)
   g_mat(1, 2) = real(es56, ki_sam)
   g_mat(2, 1) = g_mat(1, 2)
   g_mat(1, 3) = real(-es567+es56+es234-es71, ki_sam)
   g_mat(3, 1) = g_mat(1, 3)
   g_mat(1, 4) = real(es234, ki_sam)
   g_mat(4, 1) = g_mat(1, 4)
   g_mat(1, 5) = real(es34, ki_sam)
   g_mat(5, 1) = g_mat(1, 5)
   g_mat(2, 2) = real(0.0_ki, ki_sam)
   g_mat(2, 3) = real(0.0_ki, ki_sam)
   g_mat(3, 2) = g_mat(2, 3)
   g_mat(2, 4) = real(es71, ki_sam)
   g_mat(4, 2) = g_mat(2, 4)
   g_mat(2, 5) = real(es712, ki_sam)
   g_mat(5, 2) = g_mat(2, 5)
   g_mat(3, 3) = real(0.0_ki, ki_sam)
   g_mat(3, 4) = real(0.0_ki, ki_sam)
   g_mat(4, 3) = g_mat(3, 4)
   g_mat(3, 5) = real(-es12-es71+es712, ki_sam)
   g_mat(5, 3) = g_mat(3, 5)
   g_mat(4, 4) = real(0.0_ki, ki_sam)
   g_mat(4, 5) = real(0.0_ki, ki_sam)
   g_mat(5, 4) = g_mat(4, 5)
   g_mat(5, 5) = real(0.0_ki, ki_sam)
   !-----------#] initialize invariants:

   if(samurai_group_numerators) then
      !------#[ reduce numerator numeval_group4:
      if(samurai_verbosity > 0) then
         write(samurai_out,*) "[golem-2.0] numeval_group4"
         write(samurai_out,*) "[golem-2.0] epspow=", epspow
      end if
      !-----------#[ initialize invariants:
      allocate(s_mat(5, 5))
      s_mat(:,:) = g_mat(:,:)
      !-----------#] initialize invariants:
      call samurai_rm(numeval_group4, tot, totr, Vi, msq, 5, &
         & effective_group_rank, istop0, scale2, ok, &
         & samurai_cache_flag_g4, samurai_cache_g4)
      !-----------#[ deallocate invariants:
      deallocate(s_mat)
      !-----------#] deallocate invariants:

      !------#] reduce numerator numeval_group4:
   else
      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='12'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram12"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/1,2,4,5/), (/1,2,4,5/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram12, acc, accr, &
            & Vi((/1,2,4,5/),:), msq((/1,2,4,5/)), 4, &
            & 3, istop0, scale2, ok, &
            & samurai_cache_flag_d12, samurai_cache_d12)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot =  + acc
         totr =  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='85'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram85"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(5, 5))
         s_mat(:,:) = g_mat( (/1,2,3,4,5/), (/1,2,3,4,5/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram85, acc, accr, &
            & Vi((/1,2,3,4,5/),:), msq((/1,2,3,4,5/)), 5, &
            & 4, istop0, scale2, acc_ok, &
            & samurai_cache_flag_d85, samurai_cache_d85)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
      !------#] sum over reduction of single diagrams:
   end if
end subroutine reduce_group4
!-----#] subroutine reduce_group4:
!-----#[ subroutine reduce_group5:
subroutine     reduce_group5(scale2,tot,totr,ok)
   use msamurai, only: samurai, samurai_rm, samurai_cm
   use options, only: samurai_out => iout
   use madds, only: s_mat
   use p5_usbar_epnebbbarg_config, only: samurai_group_numerators, &
      & samurai_verbosity, samurai_istop, samurai_test, &
      & debug_nlo_diagrams, logfile
   use p5_usbar_epnebbbarg_kinematics
   use p5_usbar_epnebbbarg_model
   use p5_usbar_epnebbbarg_d15h3l1, only: numerator_diagram15 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_d83h3l1, only: numerator_diagram83 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_globalsl1, only: epspow

   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   complex(ki_sam), dimension(-2:0) :: acc
   complex(ki_sam) :: accr
   logical :: acc_ok

   integer :: istopm, istop0

   integer, parameter :: effective_group_rank = 4
   !-----------#[ invariants for samurai:
   complex(ki_sam), dimension(5, 5) :: g_mat
   !-----------#] initialize invariants:
   real(ki_sam), dimension(5) :: msq
   real(ki_sam), dimension(5,4) :: Vi

   if(samurai_test.eq.1 .or. samurai_test.eq.3) then
      istopm = 1
      istop0 = 1
   else
      istopm = samurai_istop
      istop0 = max(2,samurai_istop)
   end if
   msq(1) = 0.0_ki_sam
   Vi(1,:) = real(-k3((/2,3,4,1/))-k7((/2,3,4,1/))-k4((/2,3,4,1/)), ki_sam)
   msq(2) = 0.0_ki_sam
   Vi(2,:) = real(-k3((/2,3,4,1/))-k7((/2,3,4,1/))-k6((/2,3,4,1/))-k5((/2,3,4,1&
   &/))-k4((/2,3,4,1/)), ki_sam)
   msq(3) = 0.0_ki_sam
   Vi(3,:) = real(-k2((/2,3,4,1/)), ki_sam)
   msq(4) = 0.0_ki_sam
   Vi(4,:) = real(0, ki_sam)
   msq(5) = 0.0_ki_sam
   Vi(5,:) = real(-k7((/2,3,4,1/)), ki_sam)
   !-----------#[ initialize invariants:
   g_mat(1, 1) = real(0.0_ki, ki_sam)
   g_mat(1, 2) = real(es56, ki_sam)
   g_mat(2, 1) = g_mat(1, 2)
   g_mat(1, 3) = real(-es567+es56+es234-es71, ki_sam)
   g_mat(3, 1) = g_mat(1, 3)
   g_mat(1, 4) = real(es34-es567+es56+es12-es712, ki_sam)
   g_mat(4, 1) = g_mat(1, 4)
   g_mat(1, 5) = real(es34, ki_sam)
   g_mat(5, 1) = g_mat(1, 5)
   g_mat(2, 2) = real(0.0_ki, ki_sam)
   g_mat(2, 3) = real(0.0_ki, ki_sam)
   g_mat(3, 2) = g_mat(2, 3)
   g_mat(2, 4) = real(es12, ki_sam)
   g_mat(4, 2) = g_mat(2, 4)
   g_mat(2, 5) = real(es712, ki_sam)
   g_mat(5, 2) = g_mat(2, 5)
   g_mat(3, 3) = real(0.0_ki, ki_sam)
   g_mat(3, 4) = real(0.0_ki, ki_sam)
   g_mat(4, 3) = g_mat(3, 4)
   g_mat(3, 5) = real(-es12-es71+es712, ki_sam)
   g_mat(5, 3) = g_mat(3, 5)
   g_mat(4, 4) = real(0.0_ki, ki_sam)
   g_mat(4, 5) = real(0.0_ki, ki_sam)
   g_mat(5, 4) = g_mat(4, 5)
   g_mat(5, 5) = real(0.0_ki, ki_sam)
   !-----------#] initialize invariants:

   if(samurai_group_numerators) then
      !------#[ reduce numerator numeval_group5:
      if(samurai_verbosity > 0) then
         write(samurai_out,*) "[golem-2.0] numeval_group5"
         write(samurai_out,*) "[golem-2.0] epspow=", epspow
      end if
      !-----------#[ initialize invariants:
      allocate(s_mat(5, 5))
      s_mat(:,:) = g_mat(:,:)
      !-----------#] initialize invariants:
      call samurai_rm(numeval_group5, tot, totr, Vi, msq, 5, &
         & effective_group_rank, istop0, scale2, ok, &
         & samurai_cache_flag_g5, samurai_cache_g5)
      !-----------#[ deallocate invariants:
      deallocate(s_mat)
      !-----------#] deallocate invariants:

      !------#] reduce numerator numeval_group5:
   else
      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='15'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram15"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/1,2,3,5/), (/1,2,3,5/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram15, acc, accr, &
            & Vi((/1,2,3,5/),:), msq((/1,2,3,5/)), 4, &
            & 3, istop0, scale2, ok, &
            & samurai_cache_flag_d15, samurai_cache_d15)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot =  + acc
         totr =  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='83'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram83"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(5, 5))
         s_mat(:,:) = g_mat( (/1,2,3,4,5/), (/1,2,3,4,5/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram83, acc, accr, &
            & Vi((/1,2,3,4,5/),:), msq((/1,2,3,4,5/)), 5, &
            & 4, istop0, scale2, acc_ok, &
            & samurai_cache_flag_d83, samurai_cache_d83)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
      !------#] sum over reduction of single diagrams:
   end if
end subroutine reduce_group5
!-----#] subroutine reduce_group5:
!-----#[ subroutine reduce_group6:
subroutine     reduce_group6(scale2,tot,totr,ok)
   use msamurai, only: samurai, samurai_rm, samurai_cm
   use options, only: samurai_out => iout
   use madds, only: s_mat
   use p5_usbar_epnebbbarg_config, only: samurai_group_numerators, &
      & samurai_verbosity, samurai_istop, samurai_test, &
      & debug_nlo_diagrams, logfile
   use p5_usbar_epnebbbarg_kinematics
   use p5_usbar_epnebbbarg_model
   use p5_usbar_epnebbbarg_d14h3l1, only: numerator_diagram14 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_d82h3l1, only: numerator_diagram82 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_globalsl1, only: epspow

   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   complex(ki_sam), dimension(-2:0) :: acc
   complex(ki_sam) :: accr
   logical :: acc_ok

   integer :: istopm, istop0

   integer, parameter :: effective_group_rank = 4
   !-----------#[ invariants for samurai:
   complex(ki_sam), dimension(5, 5) :: g_mat
   !-----------#] initialize invariants:
   real(ki_sam), dimension(5) :: msq
   real(ki_sam), dimension(5,4) :: Vi

   if(samurai_test.eq.1 .or. samurai_test.eq.3) then
      istopm = 1
      istop0 = 1
   else
      istopm = samurai_istop
      istop0 = max(2,samurai_istop)
   end if
   msq(1) = 0.0_ki_sam
   Vi(1,:) = real(-k7((/2,3,4,1/))-k6((/2,3,4,1/))-k5((/2,3,4,1/)), ki_sam)
   msq(2) = 0.0_ki_sam
   Vi(2,:) = real(-k7((/2,3,4,1/)), ki_sam)
   msq(3) = 0.0_ki_sam
   Vi(3,:) = real(0, ki_sam)
   msq(4) = 0.0_ki_sam
   Vi(4,:) = real(-k2((/2,3,4,1/)), ki_sam)
   msq(5) = 0.0_ki_sam
   Vi(5,:) = real(-k3((/2,3,4,1/))-k7((/2,3,4,1/))-k6((/2,3,4,1/))-k5((/2,3,4,1&
   &/))-k4((/2,3,4,1/)), ki_sam)
   !-----------#[ initialize invariants:
   g_mat(1, 1) = real(0.0_ki, ki_sam)
   g_mat(1, 2) = real(es56, ki_sam)
   g_mat(2, 1) = g_mat(1, 2)
   g_mat(1, 3) = real(es567, ki_sam)
   g_mat(3, 1) = g_mat(1, 3)
   g_mat(1, 4) = real(es34+es567-es234-es12, ki_sam)
   g_mat(4, 1) = g_mat(1, 4)
   g_mat(1, 5) = real(es34, ki_sam)
   g_mat(5, 1) = g_mat(1, 5)
   g_mat(2, 2) = real(0.0_ki, ki_sam)
   g_mat(2, 3) = real(0.0_ki, ki_sam)
   g_mat(3, 2) = g_mat(2, 3)
   g_mat(2, 4) = real(-es12-es71+es712, ki_sam)
   g_mat(4, 2) = g_mat(2, 4)
   g_mat(2, 5) = real(es712, ki_sam)
   g_mat(5, 2) = g_mat(2, 5)
   g_mat(3, 3) = real(0.0_ki, ki_sam)
   g_mat(3, 4) = real(0.0_ki, ki_sam)
   g_mat(4, 3) = g_mat(3, 4)
   g_mat(3, 5) = real(es12, ki_sam)
   g_mat(5, 3) = g_mat(3, 5)
   g_mat(4, 4) = real(0.0_ki, ki_sam)
   g_mat(4, 5) = real(0.0_ki, ki_sam)
   g_mat(5, 4) = g_mat(4, 5)
   g_mat(5, 5) = real(0.0_ki, ki_sam)
   !-----------#] initialize invariants:

   if(samurai_group_numerators) then
      !------#[ reduce numerator numeval_group6:
      if(samurai_verbosity > 0) then
         write(samurai_out,*) "[golem-2.0] numeval_group6"
         write(samurai_out,*) "[golem-2.0] epspow=", epspow
      end if
      !-----------#[ initialize invariants:
      allocate(s_mat(5, 5))
      s_mat(:,:) = g_mat(:,:)
      !-----------#] initialize invariants:
      call samurai_rm(numeval_group6, tot, totr, Vi, msq, 5, &
         & effective_group_rank, istop0, scale2, ok, &
         & samurai_cache_flag_g6, samurai_cache_g6)
      !-----------#[ deallocate invariants:
      deallocate(s_mat)
      !-----------#] deallocate invariants:

      !------#] reduce numerator numeval_group6:
   else
      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='14'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram14"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/1,2,4,5/), (/1,2,4,5/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram14, acc, accr, &
            & Vi((/1,2,4,5/),:), msq((/1,2,4,5/)), 4, &
            & 3, istop0, scale2, ok, &
            & samurai_cache_flag_d14, samurai_cache_d14)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot =  + acc
         totr =  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='82'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram82"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(5, 5))
         s_mat(:,:) = g_mat( (/1,2,3,4,5/), (/1,2,3,4,5/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram82, acc, accr, &
            & Vi((/1,2,3,4,5/),:), msq((/1,2,3,4,5/)), 5, &
            & 4, istop0, scale2, acc_ok, &
            & samurai_cache_flag_d82, samurai_cache_d82)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
      !------#] sum over reduction of single diagrams:
   end if
end subroutine reduce_group6
!-----#] subroutine reduce_group6:
!-----#[ subroutine reduce_group7:
subroutine     reduce_group7(scale2,tot,totr,ok)
   use msamurai, only: samurai, samurai_rm, samurai_cm
   use options, only: samurai_out => iout
   use madds, only: s_mat
   use p5_usbar_epnebbbarg_config, only: samurai_group_numerators, &
      & samurai_verbosity, samurai_istop, samurai_test, &
      & debug_nlo_diagrams, logfile
   use p5_usbar_epnebbbarg_kinematics
   use p5_usbar_epnebbbarg_model
   use p5_usbar_epnebbbarg_d68h3l1, only: numerator_diagram68 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_globalsl1, only: epspow

   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   complex(ki_sam), dimension(-2:0) :: acc
   complex(ki_sam) :: accr
   logical :: acc_ok

   integer :: istopm, istop0

   integer, parameter :: effective_group_rank = 4
   !-----------#[ invariants for samurai:
   complex(ki_sam), dimension(5, 5) :: g_mat
   !-----------#] initialize invariants:
   real(ki_sam), dimension(5) :: msq
   real(ki_sam), dimension(5,4) :: Vi

   if(samurai_test.eq.1 .or. samurai_test.eq.3) then
      istopm = 1
      istop0 = 1
   else
      istopm = samurai_istop
      istop0 = max(2,samurai_istop)
   end if
   msq(1) = 0.0_ki_sam
   Vi(1,:) = real(-k3((/2,3,4,1/))-k4((/2,3,4,1/)), ki_sam)
   msq(2) = 0.0_ki_sam
   Vi(2,:) = real(-k3((/2,3,4,1/))-k7((/2,3,4,1/))-k4((/2,3,4,1/)), ki_sam)
   msq(3) = 0.0_ki_sam
   Vi(3,:) = real(-k3((/2,3,4,1/))-k7((/2,3,4,1/))-k6((/2,3,4,1/))-k5((/2,3,4,1&
   &/))-k4((/2,3,4,1/)), ki_sam)
   msq(4) = 0.0_ki_sam
   Vi(4,:) = real(-k2((/2,3,4,1/)), ki_sam)
   msq(5) = 0.0_ki_sam
   Vi(5,:) = real(0, ki_sam)
   !-----------#[ initialize invariants:
   g_mat(1, 1) = real(0.0_ki, ki_sam)
   g_mat(1, 2) = real(0.0_ki, ki_sam)
   g_mat(2, 1) = g_mat(1, 2)
   g_mat(1, 3) = real(es567, ki_sam)
   g_mat(3, 1) = g_mat(1, 3)
   g_mat(1, 4) = real(es234, ki_sam)
   g_mat(4, 1) = g_mat(1, 4)
   g_mat(1, 5) = real(es34, ki_sam)
   g_mat(5, 1) = g_mat(1, 5)
   g_mat(2, 2) = real(0.0_ki, ki_sam)
   g_mat(2, 3) = real(es56, ki_sam)
   g_mat(3, 2) = g_mat(2, 3)
   g_mat(2, 4) = real(-es567+es56+es234-es71, ki_sam)
   g_mat(4, 2) = g_mat(2, 4)
   g_mat(2, 5) = real(es34-es567+es56+es12-es712, ki_sam)
   g_mat(5, 2) = g_mat(2, 5)
   g_mat(3, 3) = real(0.0_ki, ki_sam)
   g_mat(3, 4) = real(0.0_ki, ki_sam)
   g_mat(4, 3) = g_mat(3, 4)
   g_mat(3, 5) = real(es12, ki_sam)
   g_mat(5, 3) = g_mat(3, 5)
   g_mat(4, 4) = real(0.0_ki, ki_sam)
   g_mat(4, 5) = real(0.0_ki, ki_sam)
   g_mat(5, 4) = g_mat(4, 5)
   g_mat(5, 5) = real(0.0_ki, ki_sam)
   !-----------#] initialize invariants:

   if(samurai_group_numerators) then
      !------#[ reduce numerator numeval_group7:
      if(samurai_verbosity > 0) then
         write(samurai_out,*) "[golem-2.0] numeval_group7"
         write(samurai_out,*) "[golem-2.0] epspow=", epspow
      end if
      !-----------#[ initialize invariants:
      allocate(s_mat(5, 5))
      s_mat(:,:) = g_mat(:,:)
      !-----------#] initialize invariants:
      call samurai_rm(numeval_group7, tot, totr, Vi, msq, 5, &
         & effective_group_rank, istop0, scale2, ok, &
         & samurai_cache_flag_g7, samurai_cache_g7)
      !-----------#[ deallocate invariants:
      deallocate(s_mat)
      !-----------#] deallocate invariants:

      !------#] reduce numerator numeval_group7:
   else
      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='68'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram68"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(5, 5))
         s_mat(:,:) = g_mat( (/1,2,3,4,5/), (/1,2,3,4,5/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram68, acc, accr, &
            & Vi((/1,2,3,4,5/),:), msq((/1,2,3,4,5/)), 5, &
            & 4, istop0, scale2, ok, &
            & samurai_cache_flag_d68, samurai_cache_d68)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot =  + acc
         totr =  + accr
      !------#] sum over reduction of single diagrams:
   end if
end subroutine reduce_group7
!-----#] subroutine reduce_group7:
!-----#[ subroutine reduce_group8:
subroutine     reduce_group8(scale2,tot,totr,ok)
   use msamurai, only: samurai, samurai_rm, samurai_cm
   use options, only: samurai_out => iout
   use madds, only: s_mat
   use p5_usbar_epnebbbarg_config, only: samurai_group_numerators, &
      & samurai_verbosity, samurai_istop, samurai_test, &
      & debug_nlo_diagrams, logfile
   use p5_usbar_epnebbbarg_kinematics
   use p5_usbar_epnebbbarg_model
   use p5_usbar_epnebbbarg_d80h3l1, only: numerator_diagram80 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_d128h3l1, only: numerator_diagram128 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_globalsl1, only: epspow

   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   complex(ki_sam), dimension(-2:0) :: acc
   complex(ki_sam) :: accr
   logical :: acc_ok

   integer :: istopm, istop0

   integer, parameter :: effective_group_rank = 4
   !-----------#[ invariants for samurai:
   complex(ki_sam), dimension(5, 5) :: g_mat
   !-----------#] initialize invariants:
   real(ki_sam), dimension(5) :: msq
   real(ki_sam), dimension(5,4) :: Vi

   if(samurai_test.eq.1 .or. samurai_test.eq.3) then
      istopm = 1
      istop0 = 1
   else
      istopm = samurai_istop
      istop0 = max(2,samurai_istop)
   end if
   msq(1) = 0.0_ki_sam
   Vi(1,:) = real(-k3((/2,3,4,1/))-k4((/2,3,4,1/)), ki_sam)
   msq(2) = 0.0_ki_sam
   Vi(2,:) = real(-k3((/2,3,4,1/))-k6((/2,3,4,1/))-k5((/2,3,4,1/))-k4((/2,3,4,1&
   &/)), ki_sam)
   msq(3) = 0.0_ki_sam
   Vi(3,:) = real(-k3((/2,3,4,1/))-k7((/2,3,4,1/))-k6((/2,3,4,1/))-k5((/2,3,4,1&
   &/))-k4((/2,3,4,1/)), ki_sam)
   msq(4) = 0.0_ki_sam
   Vi(4,:) = real(-k2((/2,3,4,1/)), ki_sam)
   msq(5) = 0.0_ki_sam
   Vi(5,:) = real(0, ki_sam)
   !-----------#[ initialize invariants:
   g_mat(1, 1) = real(0.0_ki, ki_sam)
   g_mat(1, 2) = real(es56, ki_sam)
   g_mat(2, 1) = g_mat(1, 2)
   g_mat(1, 3) = real(es567, ki_sam)
   g_mat(3, 1) = g_mat(1, 3)
   g_mat(1, 4) = real(es234, ki_sam)
   g_mat(4, 1) = g_mat(1, 4)
   g_mat(1, 5) = real(es34, ki_sam)
   g_mat(5, 1) = g_mat(1, 5)
   g_mat(2, 2) = real(0.0_ki, ki_sam)
   g_mat(2, 3) = real(0.0_ki, ki_sam)
   g_mat(3, 2) = g_mat(2, 3)
   g_mat(2, 4) = real(es71, ki_sam)
   g_mat(4, 2) = g_mat(2, 4)
   g_mat(2, 5) = real(es712, ki_sam)
   g_mat(5, 2) = g_mat(2, 5)
   g_mat(3, 3) = real(0.0_ki, ki_sam)
   g_mat(3, 4) = real(0.0_ki, ki_sam)
   g_mat(4, 3) = g_mat(3, 4)
   g_mat(3, 5) = real(es12, ki_sam)
   g_mat(5, 3) = g_mat(3, 5)
   g_mat(4, 4) = real(0.0_ki, ki_sam)
   g_mat(4, 5) = real(0.0_ki, ki_sam)
   g_mat(5, 4) = g_mat(4, 5)
   g_mat(5, 5) = real(0.0_ki, ki_sam)
   !-----------#] initialize invariants:

   if(samurai_group_numerators) then
      !------#[ reduce numerator numeval_group8:
      if(samurai_verbosity > 0) then
         write(samurai_out,*) "[golem-2.0] numeval_group8"
         write(samurai_out,*) "[golem-2.0] epspow=", epspow
      end if
      !-----------#[ initialize invariants:
      allocate(s_mat(5, 5))
      s_mat(:,:) = g_mat(:,:)
      !-----------#] initialize invariants:
      call samurai_rm(numeval_group8, tot, totr, Vi, msq, 5, &
         & effective_group_rank, istop0, scale2, ok, &
         & samurai_cache_flag_g8, samurai_cache_g8)
      !-----------#[ deallocate invariants:
      deallocate(s_mat)
      !-----------#] deallocate invariants:

      !------#] reduce numerator numeval_group8:
   else
      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='80'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram80"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(5, 5))
         s_mat(:,:) = g_mat( (/1,2,3,4,5/), (/1,2,3,4,5/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram80, acc, accr, &
            & Vi((/1,2,3,4,5/),:), msq((/1,2,3,4,5/)), 5, &
            & 4, istop0, scale2, ok, &
            & samurai_cache_flag_d80, samurai_cache_d80)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot =  + acc
         totr =  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='128'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram128"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/1,3,4,5/), (/1,3,4,5/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram128, acc, accr, &
            & Vi((/1,3,4,5/),:), msq((/1,3,4,5/)), 4, &
            & 3, istop0, scale2, acc_ok, &
            & samurai_cache_flag_d128, samurai_cache_d128)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
      !------#] sum over reduction of single diagrams:
   end if
end subroutine reduce_group8
!-----#] subroutine reduce_group8:
!-----#[ subroutine reduce_group9:
subroutine     reduce_group9(scale2,tot,totr,ok)
   use msamurai, only: samurai, samurai_rm, samurai_cm
   use options, only: samurai_out => iout
   use madds, only: s_mat
   use p5_usbar_epnebbbarg_config, only: samurai_group_numerators, &
      & samurai_verbosity, samurai_istop, samurai_test, &
      & debug_nlo_diagrams, logfile
   use p5_usbar_epnebbbarg_kinematics
   use p5_usbar_epnebbbarg_model
   use p5_usbar_epnebbbarg_d66h3l1, only: numerator_diagram66 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_d127h3l1, only: numerator_diagram127 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_globalsl1, only: epspow

   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   complex(ki_sam), dimension(-2:0) :: acc
   complex(ki_sam) :: accr
   logical :: acc_ok

   integer :: istopm, istop0

   integer, parameter :: effective_group_rank = 4
   !-----------#[ invariants for samurai:
   complex(ki_sam), dimension(5, 5) :: g_mat
   !-----------#] initialize invariants:
   real(ki_sam), dimension(5) :: msq
   real(ki_sam), dimension(5,4) :: Vi

   if(samurai_test.eq.1 .or. samurai_test.eq.3) then
      istopm = 1
      istop0 = 1
   else
      istopm = samurai_istop
      istop0 = max(2,samurai_istop)
   end if
   msq(1) = 0.0_ki_sam
   Vi(1,:) = real(-k7((/2,3,4,1/))-k6((/2,3,4,1/))-k5((/2,3,4,1/)), ki_sam)
   msq(2) = 0.0_ki_sam
   Vi(2,:) = real(-k6((/2,3,4,1/))-k5((/2,3,4,1/)), ki_sam)
   msq(3) = 0.0_ki_sam
   Vi(3,:) = real(0, ki_sam)
   msq(4) = 0.0_ki_sam
   Vi(4,:) = real(-k2((/2,3,4,1/)), ki_sam)
   msq(5) = 0.0_ki_sam
   Vi(5,:) = real(-k3((/2,3,4,1/))-k7((/2,3,4,1/))-k6((/2,3,4,1/))-k5((/2,3,4,1&
   &/))-k4((/2,3,4,1/)), ki_sam)
   !-----------#[ initialize invariants:
   g_mat(1, 1) = real(0.0_ki, ki_sam)
   g_mat(1, 2) = real(0.0_ki, ki_sam)
   g_mat(2, 1) = g_mat(1, 2)
   g_mat(1, 3) = real(es567, ki_sam)
   g_mat(3, 1) = g_mat(1, 3)
   g_mat(1, 4) = real(es34+es567-es234-es12, ki_sam)
   g_mat(4, 1) = g_mat(1, 4)
   g_mat(1, 5) = real(es34, ki_sam)
   g_mat(5, 1) = g_mat(1, 5)
   g_mat(2, 2) = real(0.0_ki, ki_sam)
   g_mat(2, 3) = real(es56, ki_sam)
   g_mat(3, 2) = g_mat(2, 3)
   g_mat(2, 4) = real(es34+es56-es234+es71-es712, ki_sam)
   g_mat(4, 2) = g_mat(2, 4)
   g_mat(2, 5) = real(es34-es567+es56+es12-es712, ki_sam)
   g_mat(5, 2) = g_mat(2, 5)
   g_mat(3, 3) = real(0.0_ki, ki_sam)
   g_mat(3, 4) = real(0.0_ki, ki_sam)
   g_mat(4, 3) = g_mat(3, 4)
   g_mat(3, 5) = real(es12, ki_sam)
   g_mat(5, 3) = g_mat(3, 5)
   g_mat(4, 4) = real(0.0_ki, ki_sam)
   g_mat(4, 5) = real(0.0_ki, ki_sam)
   g_mat(5, 4) = g_mat(4, 5)
   g_mat(5, 5) = real(0.0_ki, ki_sam)
   !-----------#] initialize invariants:

   if(samurai_group_numerators) then
      !------#[ reduce numerator numeval_group9:
      if(samurai_verbosity > 0) then
         write(samurai_out,*) "[golem-2.0] numeval_group9"
         write(samurai_out,*) "[golem-2.0] epspow=", epspow
      end if
      !-----------#[ initialize invariants:
      allocate(s_mat(5, 5))
      s_mat(:,:) = g_mat(:,:)
      !-----------#] initialize invariants:
      call samurai_rm(numeval_group9, tot, totr, Vi, msq, 5, &
         & effective_group_rank, istop0, scale2, ok, &
         & samurai_cache_flag_g9, samurai_cache_g9)
      !-----------#[ deallocate invariants:
      deallocate(s_mat)
      !-----------#] deallocate invariants:

      !------#] reduce numerator numeval_group9:
   else
      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='66'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram66"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(5, 5))
         s_mat(:,:) = g_mat( (/1,2,3,4,5/), (/1,2,3,4,5/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram66, acc, accr, &
            & Vi((/1,2,3,4,5/),:), msq((/1,2,3,4,5/)), 5, &
            & 4, istop0, scale2, ok, &
            & samurai_cache_flag_d66, samurai_cache_d66)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot =  + acc
         totr =  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='127'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram127"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/1,3,4,5/), (/1,3,4,5/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram127, acc, accr, &
            & Vi((/1,3,4,5/),:), msq((/1,3,4,5/)), 4, &
            & 3, istop0, scale2, acc_ok, &
            & samurai_cache_flag_d127, samurai_cache_d127)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
      !------#] sum over reduction of single diagrams:
   end if
end subroutine reduce_group9
!-----#] subroutine reduce_group9:
!-----#[ subroutine reduce_group10:
subroutine     reduce_group10(scale2,tot,totr,ok)
   use msamurai, only: samurai, samurai_rm, samurai_cm
   use options, only: samurai_out => iout
   use madds, only: s_mat
   use p5_usbar_epnebbbarg_config, only: samurai_group_numerators, &
      & samurai_verbosity, samurai_istop, samurai_test, &
      & debug_nlo_diagrams, logfile
   use p5_usbar_epnebbbarg_kinematics
   use p5_usbar_epnebbbarg_model
   use p5_usbar_epnebbbarg_d81h3l1, only: numerator_diagram81 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_globalsl1, only: epspow

   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   complex(ki_sam), dimension(-2:0) :: acc
   complex(ki_sam) :: accr
   logical :: acc_ok

   integer :: istopm, istop0

   integer, parameter :: effective_group_rank = 4
   !-----------#[ invariants for samurai:
   complex(ki_sam), dimension(5, 5) :: g_mat
   !-----------#] initialize invariants:
   real(ki_sam), dimension(5) :: msq
   real(ki_sam), dimension(5,4) :: Vi

   if(samurai_test.eq.1 .or. samurai_test.eq.3) then
      istopm = 1
      istop0 = 1
   else
      istopm = samurai_istop
      istop0 = max(2,samurai_istop)
   end if
   msq(1) = 0.0_ki_sam
   Vi(1,:) = real(-k6((/2,3,4,1/))-k5((/2,3,4,1/)), ki_sam)
   msq(2) = 0.0_ki_sam
   Vi(2,:) = real(0, ki_sam)
   msq(3) = 0.0_ki_sam
   Vi(3,:) = real(-k2((/2,3,4,1/)), ki_sam)
   msq(4) = 0.0_ki_sam
   Vi(4,:) = real(-k3((/2,3,4,1/))-k7((/2,3,4,1/))-k6((/2,3,4,1/))-k5((/2,3,4,1&
   &/))-k4((/2,3,4,1/)), ki_sam)
   msq(5) = 0.0_ki_sam
   Vi(5,:) = real(-k3((/2,3,4,1/))-k6((/2,3,4,1/))-k5((/2,3,4,1/))-k4((/2,3,4,1&
   &/)), ki_sam)
   !-----------#[ initialize invariants:
   g_mat(1, 1) = real(0.0_ki, ki_sam)
   g_mat(1, 2) = real(es56, ki_sam)
   g_mat(2, 1) = g_mat(1, 2)
   g_mat(1, 3) = real(es34+es56-es234+es71-es712, ki_sam)
   g_mat(3, 1) = g_mat(1, 3)
   g_mat(1, 4) = real(es34-es567+es56+es12-es712, ki_sam)
   g_mat(4, 1) = g_mat(1, 4)
   g_mat(1, 5) = real(es34, ki_sam)
   g_mat(5, 1) = g_mat(1, 5)
   g_mat(2, 2) = real(0.0_ki, ki_sam)
   g_mat(2, 3) = real(0.0_ki, ki_sam)
   g_mat(3, 2) = g_mat(2, 3)
   g_mat(2, 4) = real(es12, ki_sam)
   g_mat(4, 2) = g_mat(2, 4)
   g_mat(2, 5) = real(es712, ki_sam)
   g_mat(5, 2) = g_mat(2, 5)
   g_mat(3, 3) = real(0.0_ki, ki_sam)
   g_mat(3, 4) = real(0.0_ki, ki_sam)
   g_mat(4, 3) = g_mat(3, 4)
   g_mat(3, 5) = real(es71, ki_sam)
   g_mat(5, 3) = g_mat(3, 5)
   g_mat(4, 4) = real(0.0_ki, ki_sam)
   g_mat(4, 5) = real(0.0_ki, ki_sam)
   g_mat(5, 4) = g_mat(4, 5)
   g_mat(5, 5) = real(0.0_ki, ki_sam)
   !-----------#] initialize invariants:

   if(samurai_group_numerators) then
      !------#[ reduce numerator numeval_group10:
      if(samurai_verbosity > 0) then
         write(samurai_out,*) "[golem-2.0] numeval_group10"
         write(samurai_out,*) "[golem-2.0] epspow=", epspow
      end if
      !-----------#[ initialize invariants:
      allocate(s_mat(5, 5))
      s_mat(:,:) = g_mat(:,:)
      !-----------#] initialize invariants:
      call samurai_rm(numeval_group10, tot, totr, Vi, msq, 5, &
         & effective_group_rank, istop0, scale2, ok, &
         & samurai_cache_flag_g10, samurai_cache_g10)
      !-----------#[ deallocate invariants:
      deallocate(s_mat)
      !-----------#] deallocate invariants:

      !------#] reduce numerator numeval_group10:
   else
      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='81'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram81"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(5, 5))
         s_mat(:,:) = g_mat( (/1,2,3,4,5/), (/1,2,3,4,5/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram81, acc, accr, &
            & Vi((/1,2,3,4,5/),:), msq((/1,2,3,4,5/)), 5, &
            & 4, istop0, scale2, ok, &
            & samurai_cache_flag_d81, samurai_cache_d81)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot =  + acc
         totr =  + accr
      !------#] sum over reduction of single diagrams:
   end if
end subroutine reduce_group10
!-----#] subroutine reduce_group10:
!-----#[ subroutine reduce_group11:
subroutine     reduce_group11(scale2,tot,totr,ok)
   use msamurai, only: samurai, samurai_rm, samurai_cm
   use options, only: samurai_out => iout
   use madds, only: s_mat
   use p5_usbar_epnebbbarg_config, only: samurai_group_numerators, &
      & samurai_verbosity, samurai_istop, samurai_test, &
      & debug_nlo_diagrams, logfile
   use p5_usbar_epnebbbarg_kinematics
   use p5_usbar_epnebbbarg_model
   use p5_usbar_epnebbbarg_d79h3l1, only: numerator_diagram79 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_d109h3l1, only: numerator_diagram109 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d292h3l1, only: numerator_diagram292 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d301h3l1, only: numerator_diagram301 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_globalsl1, only: epspow

   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   complex(ki_sam), dimension(-2:0) :: acc
   complex(ki_sam) :: accr
   logical :: acc_ok

   integer :: istopm, istop0

   integer, parameter :: effective_group_rank = 4
   !-----------#[ invariants for samurai:
   complex(ki_sam), dimension(6, 6) :: g_mat
   !-----------#] initialize invariants:
   real(ki_sam), dimension(6) :: msq
   real(ki_sam), dimension(6,4) :: Vi

   if(samurai_test.eq.1 .or. samurai_test.eq.3) then
      istopm = 1
      istop0 = 1
   else
      istopm = samurai_istop
      istop0 = max(2,samurai_istop)
   end if
   msq(1) = 0.0_ki_sam
   Vi(1,:) = real(k3((/2,3,4,1/))-k2((/2,3,4,1/))+k7((/2,3,4,1/))+k4((/2,3,4,1/&
   &)), ki_sam)
   msq(2) = 0.0_ki_sam
   Vi(2,:) = real(-k6((/2,3,4,1/))-k5((/2,3,4,1/)), ki_sam)
   msq(3) = real(mB*mB, ki_sam)
   Vi(3,:) = real(-k5((/2,3,4,1/)), ki_sam)
   msq(4) = 0.0_ki_sam
   Vi(4,:) = real(0, ki_sam)
   msq(5) = 0.0_ki_sam
   Vi(5,:) = real(-k2((/2,3,4,1/)), ki_sam)
   msq(6) = 0.0_ki_sam
   Vi(6,:) = real(-k2((/2,3,4,1/))+k7((/2,3,4,1/)), ki_sam)
   !-----------#[ initialize invariants:
   g_mat(1, 1) = real(0.0_ki, ki_sam)
   g_mat(1, 2) = real(0.0_ki, ki_sam)
   g_mat(2, 1) = g_mat(1, 2)
   g_mat(1, 3) = real(es671-es67-es71, ki_sam)
   g_mat(3, 1) = g_mat(1, 3)
   g_mat(1, 4) = real(-es567+es56+es234-es71, ki_sam)
   g_mat(4, 1) = g_mat(1, 4)
   g_mat(1, 5) = real(es34-es567+es56+es12-es712, ki_sam)
   g_mat(5, 1) = g_mat(1, 5)
   g_mat(1, 6) = real(es34, ki_sam)
   g_mat(6, 1) = g_mat(1, 6)
   g_mat(2, 2) = real(0.0_ki, ki_sam)
   g_mat(2, 3) = real(0.0_ki, ki_sam)
   g_mat(3, 2) = g_mat(2, 3)
   g_mat(2, 4) = real(es56, ki_sam)
   g_mat(4, 2) = g_mat(2, 4)
   g_mat(2, 5) = real(es34+es56-es234+es71-es712, ki_sam)
   g_mat(5, 2) = g_mat(2, 5)
   g_mat(2, 6) = real(es34+es567-es234-es12, ki_sam)
   g_mat(6, 2) = g_mat(2, 6)
   g_mat(3, 3) = real(-2.0_ki*mB**2, ki_sam)
   g_mat(3, 4) = real(0.0_ki, ki_sam)
   g_mat(4, 3) = g_mat(3, 4)
   g_mat(3, 5) = real(-es234-es345+es34+es671, ki_sam)
   g_mat(5, 3) = g_mat(3, 5)
   g_mat(3, 6) = real(es34+es671+es567-es56-es234-es345-es67+mB**2-es12-es71+es&
   &712, ki_sam)
   g_mat(6, 3) = g_mat(3, 6)
   g_mat(4, 4) = real(0.0_ki, ki_sam)
   g_mat(4, 5) = real(0.0_ki, ki_sam)
   g_mat(5, 4) = g_mat(4, 5)
   g_mat(4, 6) = real(-es12-es71+es712, ki_sam)
   g_mat(6, 4) = g_mat(4, 6)
   g_mat(5, 5) = real(0.0_ki, ki_sam)
   g_mat(5, 6) = real(0.0_ki, ki_sam)
   g_mat(6, 5) = g_mat(5, 6)
   g_mat(6, 6) = real(0.0_ki, ki_sam)
   !-----------#] initialize invariants:

   if(samurai_group_numerators) then
      !------#[ reduce numerator numeval_group11:
      if(samurai_verbosity > 0) then
         write(samurai_out,*) "[golem-2.0] numeval_group11"
         write(samurai_out,*) "[golem-2.0] epspow=", epspow
      end if
      !-----------#[ initialize invariants:
      allocate(s_mat(6, 6))
      s_mat(:,:) = g_mat(:,:)
      !-----------#] initialize invariants:
      call samurai_rm(numeval_group11, tot, totr, Vi, msq, 6, &
         & effective_group_rank, istopm, scale2, ok, &
         & samurai_cache_flag_g11, samurai_cache_g11)
      !-----------#[ deallocate invariants:
      deallocate(s_mat)
      !-----------#] deallocate invariants:

      !------#] reduce numerator numeval_group11:
   else
      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='79'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram79"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(5, 5))
         s_mat(:,:) = g_mat( (/1,2,3,4,6/), (/1,2,3,4,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram79, acc, accr, &
            & Vi((/1,2,3,4,6/),:), msq((/1,2,3,4,6/)), 5, &
            & 3, istopm, scale2, ok, &
            & samurai_cache_flag_d79, samurai_cache_d79)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot =  + acc
         totr =  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='109'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram109"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/2,3,4,6/), (/2,3,4,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram109, acc, accr, &
            & Vi((/2,3,4,6/),:), msq((/2,3,4,6/)), 4, &
            & 2, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d109, samurai_cache_d109)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='292'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram292"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(6, 6))
         s_mat(:,:) = g_mat( (/1,2,3,4,5,6/), (/1,2,3,4,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram292, acc, accr, &
            & Vi((/1,2,3,4,5,6/),:), msq((/1,2,3,4,5,6/)), 6, &
            & 4, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d292, samurai_cache_d292)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='301'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram301"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(5, 5))
         s_mat(:,:) = g_mat( (/2,3,4,5,6/), (/2,3,4,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram301, acc, accr, &
            & Vi((/2,3,4,5,6/),:), msq((/2,3,4,5,6/)), 5, &
            & 3, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d301, samurai_cache_d301)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
      !------#] sum over reduction of single diagrams:
   end if
end subroutine reduce_group11
!-----#] subroutine reduce_group11:
!-----#[ subroutine reduce_group12:
subroutine     reduce_group12(scale2,tot,totr,ok)
   use msamurai, only: samurai, samurai_rm, samurai_cm
   use options, only: samurai_out => iout
   use madds, only: s_mat
   use p5_usbar_epnebbbarg_config, only: samurai_group_numerators, &
      & samurai_verbosity, samurai_istop, samurai_test, &
      & debug_nlo_diagrams, logfile
   use p5_usbar_epnebbbarg_kinematics
   use p5_usbar_epnebbbarg_model
   use p5_usbar_epnebbbarg_d298h3l1, only: numerator_diagram298 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d303h3l1, only: numerator_diagram303 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d316h3l1, only: numerator_diagram316 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_globalsl1, only: epspow

   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   complex(ki_sam), dimension(-2:0) :: acc
   complex(ki_sam) :: accr
   logical :: acc_ok

   integer :: istopm, istop0

   integer, parameter :: effective_group_rank = 4
   !-----------#[ invariants for samurai:
   complex(ki_sam), dimension(6, 6) :: g_mat
   !-----------#] initialize invariants:
   real(ki_sam), dimension(6) :: msq
   real(ki_sam), dimension(6,4) :: Vi

   if(samurai_test.eq.1 .or. samurai_test.eq.3) then
      istopm = 1
      istop0 = 1
   else
      istopm = samurai_istop
      istop0 = max(2,samurai_istop)
   end if
   msq(1) = 0.0_ki_sam
   Vi(1,:) = real(k3((/2,3,4,1/))-k2((/2,3,4,1/))+k4((/2,3,4,1/)), ki_sam)
   msq(2) = 0.0_ki_sam
   Vi(2,:) = real(-k7((/2,3,4,1/))-k6((/2,3,4,1/))-k5((/2,3,4,1/)), ki_sam)
   msq(3) = 0.0_ki_sam
   Vi(3,:) = real(-k6((/2,3,4,1/))-k5((/2,3,4,1/)), ki_sam)
   msq(4) = real(mB*mB, ki_sam)
   Vi(4,:) = real(-k5((/2,3,4,1/)), ki_sam)
   msq(5) = 0.0_ki_sam
   Vi(5,:) = real(0, ki_sam)
   msq(6) = 0.0_ki_sam
   Vi(6,:) = real(-k2((/2,3,4,1/)), ki_sam)
   !-----------#[ initialize invariants:
   g_mat(1, 1) = real(0.0_ki, ki_sam)
   g_mat(1, 2) = real(0.0_ki, ki_sam)
   g_mat(2, 1) = g_mat(1, 2)
   g_mat(1, 3) = real(es71, ki_sam)
   g_mat(3, 1) = g_mat(1, 3)
   g_mat(1, 4) = real(es671-mB**2, ki_sam)
   g_mat(4, 1) = g_mat(1, 4)
   g_mat(1, 5) = real(es234, ki_sam)
   g_mat(5, 1) = g_mat(1, 5)
   g_mat(1, 6) = real(es34, ki_sam)
   g_mat(6, 1) = g_mat(1, 6)
   g_mat(2, 2) = real(0.0_ki, ki_sam)
   g_mat(2, 3) = real(0.0_ki, ki_sam)
   g_mat(3, 2) = g_mat(2, 3)
   g_mat(2, 4) = real(-mB**2+es67, ki_sam)
   g_mat(4, 2) = g_mat(2, 4)
   g_mat(2, 5) = real(es567, ki_sam)
   g_mat(5, 2) = g_mat(2, 5)
   g_mat(2, 6) = real(es34+es567-es234-es12, ki_sam)
   g_mat(6, 2) = g_mat(2, 6)
   g_mat(3, 3) = real(0.0_ki, ki_sam)
   g_mat(3, 4) = real(0.0_ki, ki_sam)
   g_mat(4, 3) = g_mat(3, 4)
   g_mat(3, 5) = real(es56, ki_sam)
   g_mat(5, 3) = g_mat(3, 5)
   g_mat(3, 6) = real(es34+es56-es234+es71-es712, ki_sam)
   g_mat(6, 3) = g_mat(3, 6)
   g_mat(4, 4) = real(-2.0_ki*mB**2, ki_sam)
   g_mat(4, 5) = real(0.0_ki, ki_sam)
   g_mat(5, 4) = g_mat(4, 5)
   g_mat(4, 6) = real(-es234-es345+es34+es671, ki_sam)
   g_mat(6, 4) = g_mat(4, 6)
   g_mat(5, 5) = real(0.0_ki, ki_sam)
   g_mat(5, 6) = real(0.0_ki, ki_sam)
   g_mat(6, 5) = g_mat(5, 6)
   g_mat(6, 6) = real(0.0_ki, ki_sam)
   !-----------#] initialize invariants:

   if(samurai_group_numerators) then
      !------#[ reduce numerator numeval_group12:
      if(samurai_verbosity > 0) then
         write(samurai_out,*) "[golem-2.0] numeval_group12"
         write(samurai_out,*) "[golem-2.0] epspow=", epspow
      end if
      !-----------#[ initialize invariants:
      allocate(s_mat(6, 6))
      s_mat(:,:) = g_mat(:,:)
      !-----------#] initialize invariants:
      call samurai_rm(numeval_group12, tot, totr, Vi, msq, 6, &
         & effective_group_rank, istopm, scale2, ok, &
         & samurai_cache_flag_g12, samurai_cache_g12)
      !-----------#[ deallocate invariants:
      deallocate(s_mat)
      !-----------#] deallocate invariants:

      !------#] reduce numerator numeval_group12:
   else
      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='298'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram298"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(6, 6))
         s_mat(:,:) = g_mat( (/1,2,3,4,5,6/), (/1,2,3,4,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram298, acc, accr, &
            & Vi((/1,2,3,4,5,6/),:), msq((/1,2,3,4,5,6/)), 6, &
            & 4, istopm, scale2, ok, &
            & samurai_cache_flag_d298, samurai_cache_d298)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot =  + acc
         totr =  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='303'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram303"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(5, 5))
         s_mat(:,:) = g_mat( (/2,3,4,5,6/), (/2,3,4,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram303, acc, accr, &
            & Vi((/2,3,4,5,6/),:), msq((/2,3,4,5,6/)), 5, &
            & 3, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d303, samurai_cache_d303)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='316'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram316"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(5, 5))
         s_mat(:,:) = g_mat( (/1,2,3,4,5/), (/1,2,3,4,5/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram316, acc, accr, &
            & Vi((/1,2,3,4,5/),:), msq((/1,2,3,4,5/)), 5, &
            & 3, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d316, samurai_cache_d316)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
      !------#] sum over reduction of single diagrams:
   end if
end subroutine reduce_group12
!-----#] subroutine reduce_group12:
!-----#[ subroutine reduce_group13:
subroutine     reduce_group13(scale2,tot,totr,ok)
   use msamurai, only: samurai, samurai_rm, samurai_cm
   use options, only: samurai_out => iout
   use madds, only: s_mat
   use p5_usbar_epnebbbarg_config, only: samurai_group_numerators, &
      & samurai_verbosity, samurai_istop, samurai_test, &
      & debug_nlo_diagrams, logfile
   use p5_usbar_epnebbbarg_kinematics
   use p5_usbar_epnebbbarg_model
   use p5_usbar_epnebbbarg_d16h3l1, only: numerator_diagram16 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_d38h3l1, only: numerator_diagram38 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_d42h3l1, only: numerator_diagram42 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_d58h3l1, only: numerator_diagram58 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_d70h3l1, only: numerator_diagram70 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_d76h3l1, only: numerator_diagram76 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_d90h3l1, only: numerator_diagram90 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_d93h3l1, only: numerator_diagram93 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_d102h3l1, only: numerator_diagram102 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d108h3l1, only: numerator_diagram108 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d115h3l1, only: numerator_diagram115 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d126h3l1, only: numerator_diagram126 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d139h3l1, only: numerator_diagram139 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d227h3l1, only: numerator_diagram227 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d295h3l1, only: numerator_diagram295 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d310h3l1, only: numerator_diagram310 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_globalsl1, only: epspow

   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   complex(ki_sam), dimension(-2:0) :: acc
   complex(ki_sam) :: accr
   logical :: acc_ok

   integer :: istopm, istop0

   integer, parameter :: effective_group_rank = 5
   !-----------#[ invariants for samurai:
   complex(ki_sam), dimension(6, 6) :: g_mat
   !-----------#] initialize invariants:
   real(ki_sam), dimension(6) :: msq
   real(ki_sam), dimension(6,4) :: Vi

   if(samurai_test.eq.1 .or. samurai_test.eq.3) then
      istopm = 1
      istop0 = 1
   else
      istopm = samurai_istop
      istop0 = max(2,samurai_istop)
   end if
   msq(1) = 0.0_ki_sam
   Vi(1,:) = real(-k2((/2,3,4,1/)), ki_sam)
   msq(2) = 0.0_ki_sam
   Vi(2,:) = real(0, ki_sam)
   msq(3) = real(mB*mB, ki_sam)
   Vi(3,:) = real(-k5((/2,3,4,1/)), ki_sam)
   msq(4) = 0.0_ki_sam
   Vi(4,:) = real(-k6((/2,3,4,1/))-k5((/2,3,4,1/)), ki_sam)
   msq(5) = 0.0_ki_sam
   Vi(5,:) = real(k3((/2,3,4,1/))-k2((/2,3,4,1/))+k7((/2,3,4,1/))+k4((/2,3,4,1/&
   &)), ki_sam)
   msq(6) = 0.0_ki_sam
   Vi(6,:) = real(k3((/2,3,4,1/))-k2((/2,3,4,1/))+k4((/2,3,4,1/)), ki_sam)
   !-----------#[ initialize invariants:
   g_mat(1, 1) = real(0.0_ki, ki_sam)
   g_mat(1, 2) = real(0.0_ki, ki_sam)
   g_mat(2, 1) = g_mat(1, 2)
   g_mat(1, 3) = real(-es234-es345+es34+es671, ki_sam)
   g_mat(3, 1) = g_mat(1, 3)
   g_mat(1, 4) = real(es34+es56-es234+es71-es712, ki_sam)
   g_mat(4, 1) = g_mat(1, 4)
   g_mat(1, 5) = real(es34-es567+es56+es12-es712, ki_sam)
   g_mat(5, 1) = g_mat(1, 5)
   g_mat(1, 6) = real(es34, ki_sam)
   g_mat(6, 1) = g_mat(1, 6)
   g_mat(2, 2) = real(0.0_ki, ki_sam)
   g_mat(2, 3) = real(0.0_ki, ki_sam)
   g_mat(3, 2) = g_mat(2, 3)
   g_mat(2, 4) = real(es56, ki_sam)
   g_mat(4, 2) = g_mat(2, 4)
   g_mat(2, 5) = real(-es567+es56+es234-es71, ki_sam)
   g_mat(5, 2) = g_mat(2, 5)
   g_mat(2, 6) = real(es234, ki_sam)
   g_mat(6, 2) = g_mat(2, 6)
   g_mat(3, 3) = real(-2.0_ki*mB**2, ki_sam)
   g_mat(3, 4) = real(0.0_ki, ki_sam)
   g_mat(4, 3) = g_mat(3, 4)
   g_mat(3, 5) = real(es671-es67-es71, ki_sam)
   g_mat(5, 3) = g_mat(3, 5)
   g_mat(3, 6) = real(es671-mB**2, ki_sam)
   g_mat(6, 3) = g_mat(3, 6)
   g_mat(4, 4) = real(0.0_ki, ki_sam)
   g_mat(4, 5) = real(0.0_ki, ki_sam)
   g_mat(5, 4) = g_mat(4, 5)
   g_mat(4, 6) = real(es71, ki_sam)
   g_mat(6, 4) = g_mat(4, 6)
   g_mat(5, 5) = real(0.0_ki, ki_sam)
   g_mat(5, 6) = real(0.0_ki, ki_sam)
   g_mat(6, 5) = g_mat(5, 6)
   g_mat(6, 6) = real(0.0_ki, ki_sam)
   !-----------#] initialize invariants:

   if(samurai_group_numerators) then
      !------#[ reduce numerator numeval_group13:
      if(samurai_verbosity > 0) then
         write(samurai_out,*) "[golem-2.0] numeval_group13"
         write(samurai_out,*) "[golem-2.0] epspow=", epspow
      end if
      !-----------#[ initialize invariants:
      allocate(s_mat(6, 6))
      s_mat(:,:) = g_mat(:,:)
      !-----------#] initialize invariants:
      call samurai_rm(numeval_group13, tot, totr, Vi, msq, 6, &
         & effective_group_rank, istopm, scale2, ok, &
         & samurai_cache_flag_g13, samurai_cache_g13)
      !-----------#[ deallocate invariants:
      deallocate(s_mat)
      !-----------#] deallocate invariants:

      !------#] reduce numerator numeval_group13:
   else
      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='16'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram16"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/1,2,4,6/), (/1,2,4,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram16, acc, accr, &
            & Vi((/1,2,4,6/),:), msq((/1,2,4,6/)), 4, &
            & 3, istop0, scale2, ok, &
            & samurai_cache_flag_d16, samurai_cache_d16)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot =  + acc
         totr =  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='38'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram38"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(3, 3))
         s_mat(:,:) = g_mat( (/2,4,6/), (/2,4,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram38, acc, accr, &
            & Vi((/2,4,6/),:), msq((/2,4,6/)), 3, &
            & 2, istop0, scale2, acc_ok, &
            & samurai_cache_flag_d38, samurai_cache_d38)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='42'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram42"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(3, 3))
         s_mat(:,:) = g_mat( (/1,4,6/), (/1,4,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram42, acc, accr, &
            & Vi((/1,4,6/),:), msq((/1,4,6/)), 3, &
            & 2, istop0, scale2, acc_ok, &
            & samurai_cache_flag_d42, samurai_cache_d42)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='58'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram58"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(2, 2))
         s_mat(:,:) = g_mat( (/4,6/), (/4,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram58, acc, accr, &
            & Vi((/4,6/),:), msq((/4,6/)), 2, &
            & 1, istop0, scale2, acc_ok, &
            & samurai_cache_flag_d58, samurai_cache_d58)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='70'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram70"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(5, 5))
         s_mat(:,:) = g_mat( (/1,2,4,5,6/), (/1,2,4,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram70, acc, accr, &
            & Vi((/1,2,4,5,6/),:), msq((/1,2,4,5,6/)), 5, &
            & 4, istop0, scale2, acc_ok, &
            & samurai_cache_flag_d70, samurai_cache_d70)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='76'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram76"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(5, 5))
         s_mat(:,:) = g_mat( (/1,2,3,4,6/), (/1,2,3,4,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram76, acc, accr, &
            & Vi((/1,2,3,4,6/),:), msq((/1,2,3,4,6/)), 5, &
            & 3, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d76, samurai_cache_d76)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='90'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram90"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/1,2,3,4/), (/1,2,3,4/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram90, acc, accr, &
            & Vi((/1,2,3,4/),:), msq((/1,2,3,4/)), 4, &
            & 2, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d90, samurai_cache_d90)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='93'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram93"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/2,3,4,5/), (/2,3,4,5/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram93, acc, accr, &
            & Vi((/2,3,4,5/),:), msq((/2,3,4,5/)), 4, &
            & 2, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d93, samurai_cache_d93)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='102'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram102"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/1,2,5,6/), (/1,2,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram102, acc, accr, &
            & Vi((/1,2,5,6/),:), msq((/1,2,5,6/)), 4, &
            & 3, istop0, scale2, acc_ok, &
            & samurai_cache_flag_d102, samurai_cache_d102)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='108'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram108"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/2,3,4,6/), (/2,3,4,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram108, acc, accr, &
            & Vi((/2,3,4,6/),:), msq((/2,3,4,6/)), 4, &
            & 2, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d108, samurai_cache_d108)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='115'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram115"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/2,4,5,6/), (/2,4,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram115, acc, accr, &
            & Vi((/2,4,5,6/),:), msq((/2,4,5,6/)), 4, &
            & 3, istop0, scale2, acc_ok, &
            & samurai_cache_flag_d115, samurai_cache_d115)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='126'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram126"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/1,4,5,6/), (/1,4,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram126, acc, accr, &
            & Vi((/1,4,5,6/),:), msq((/1,4,5,6/)), 4, &
            & 3, istop0, scale2, acc_ok, &
            & samurai_cache_flag_d126, samurai_cache_d126)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='139'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram139"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(3, 3))
         s_mat(:,:) = g_mat( (/4,5,6/), (/4,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram139, acc, accr, &
            & Vi((/4,5,6/),:), msq((/4,5,6/)), 3, &
            & 2, istop0, scale2, acc_ok, &
            & samurai_cache_flag_d139, samurai_cache_d139)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='227'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram227"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(3, 3))
         s_mat(:,:) = g_mat( (/2,5,6/), (/2,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram227, acc, accr, &
            & Vi((/2,5,6/),:), msq((/2,5,6/)), 3, &
            & 2, istop0, scale2, acc_ok, &
            & samurai_cache_flag_d227, samurai_cache_d227)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='295'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram295"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(6, 6))
         s_mat(:,:) = g_mat( (/1,2,3,4,5,6/), (/1,2,3,4,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram295, acc, accr, &
            & Vi((/1,2,3,4,5,6/),:), msq((/1,2,3,4,5,6/)), 6, &
            & 4, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d295, samurai_cache_d295)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='310'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram310"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(5, 5))
         s_mat(:,:) = g_mat( (/2,3,4,5,6/), (/2,3,4,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram310, acc, accr, &
            & Vi((/2,3,4,5,6/),:), msq((/2,3,4,5,6/)), 5, &
            & 3, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d310, samurai_cache_d310)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
      !------#] sum over reduction of single diagrams:
   end if
end subroutine reduce_group13
!-----#] subroutine reduce_group13:
!-----#[ subroutine reduce_group14:
subroutine     reduce_group14(scale2,tot,totr,ok)
   use msamurai, only: samurai, samurai_rm, samurai_cm
   use options, only: samurai_out => iout
   use madds, only: s_mat
   use p5_usbar_epnebbbarg_config, only: samurai_group_numerators, &
      & samurai_verbosity, samurai_istop, samurai_test, &
      & debug_nlo_diagrams, logfile
   use p5_usbar_epnebbbarg_kinematics
   use p5_usbar_epnebbbarg_model
   use p5_usbar_epnebbbarg_d72h3l1, only: numerator_diagram72 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_d75h3l1, only: numerator_diagram75 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_d98h3l1, only: numerator_diagram98 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_d101h3l1, only: numerator_diagram101 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d120h3l1, only: numerator_diagram120 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d121h3l1, only: numerator_diagram121 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d300h3l1, only: numerator_diagram300 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d305h3l1, only: numerator_diagram305 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d315h3l1, only: numerator_diagram315 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_globalsl1, only: epspow

   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   complex(ki_sam), dimension(-2:0) :: acc
   complex(ki_sam) :: accr
   logical :: acc_ok

   integer :: istopm, istop0

   integer, parameter :: effective_group_rank = 4
   !-----------#[ invariants for samurai:
   complex(ki_sam), dimension(6, 6) :: g_mat
   !-----------#] initialize invariants:
   real(ki_sam), dimension(6) :: msq
   real(ki_sam), dimension(6,4) :: Vi

   if(samurai_test.eq.1 .or. samurai_test.eq.3) then
      istopm = 1
      istop0 = 1
   else
      istopm = samurai_istop
      istop0 = max(2,samurai_istop)
   end if
   msq(1) = 0.0_ki_sam
   Vi(1,:) = real(k3((/2,3,4,1/))-k2((/2,3,4,1/))+k4((/2,3,4,1/)), ki_sam)
   msq(2) = 0.0_ki_sam
   Vi(2,:) = real(-k7((/2,3,4,1/))-k6((/2,3,4,1/))-k5((/2,3,4,1/)), ki_sam)
   msq(3) = real(mB*mB, ki_sam)
   Vi(3,:) = real(-k7((/2,3,4,1/))-k5((/2,3,4,1/)), ki_sam)
   msq(4) = real(mB*mB, ki_sam)
   Vi(4,:) = real(-k5((/2,3,4,1/)), ki_sam)
   msq(5) = 0.0_ki_sam
   Vi(5,:) = real(0, ki_sam)
   msq(6) = 0.0_ki_sam
   Vi(6,:) = real(-k2((/2,3,4,1/)), ki_sam)
   !-----------#[ initialize invariants:
   g_mat(1, 1) = real(0.0_ki, ki_sam)
   g_mat(1, 2) = real(0.0_ki, ki_sam)
   g_mat(2, 1) = g_mat(1, 2)
   g_mat(1, 3) = real(es671-es67-es71, ki_sam)
   g_mat(3, 1) = g_mat(1, 3)
   g_mat(1, 4) = real(es671-mB**2, ki_sam)
   g_mat(4, 1) = g_mat(1, 4)
   g_mat(1, 5) = real(es234, ki_sam)
   g_mat(5, 1) = g_mat(1, 5)
   g_mat(1, 6) = real(es34, ki_sam)
   g_mat(6, 1) = g_mat(1, 6)
   g_mat(2, 2) = real(0.0_ki, ki_sam)
   g_mat(2, 3) = real(0.0_ki, ki_sam)
   g_mat(3, 2) = g_mat(2, 3)
   g_mat(2, 4) = real(-mB**2+es67, ki_sam)
   g_mat(4, 2) = g_mat(2, 4)
   g_mat(2, 5) = real(es567, ki_sam)
   g_mat(5, 2) = g_mat(2, 5)
   g_mat(2, 6) = real(es34+es567-es234-es12, ki_sam)
   g_mat(6, 2) = g_mat(2, 6)
   g_mat(3, 3) = real(-2.0_ki*mB**2, ki_sam)
   g_mat(3, 4) = real(-2.0_ki*mB**2, ki_sam)
   g_mat(4, 3) = g_mat(3, 4)
   g_mat(3, 5) = real(mB**2-es56-es67+es567, ki_sam)
   g_mat(5, 3) = g_mat(3, 5)
   g_mat(3, 6) = real(es34+es671+es567-es56-es234-es345-es67+mB**2-es12-es71+es&
   &712, ki_sam)
   g_mat(6, 3) = g_mat(3, 6)
   g_mat(4, 4) = real(-2.0_ki*mB**2, ki_sam)
   g_mat(4, 5) = real(0.0_ki, ki_sam)
   g_mat(5, 4) = g_mat(4, 5)
   g_mat(4, 6) = real(-es234-es345+es34+es671, ki_sam)
   g_mat(6, 4) = g_mat(4, 6)
   g_mat(5, 5) = real(0.0_ki, ki_sam)
   g_mat(5, 6) = real(0.0_ki, ki_sam)
   g_mat(6, 5) = g_mat(5, 6)
   g_mat(6, 6) = real(0.0_ki, ki_sam)
   !-----------#] initialize invariants:

   if(samurai_group_numerators) then
      !------#[ reduce numerator numeval_group14:
      if(samurai_verbosity > 0) then
         write(samurai_out,*) "[golem-2.0] numeval_group14"
         write(samurai_out,*) "[golem-2.0] epspow=", epspow
      end if
      !-----------#[ initialize invariants:
      allocate(s_mat(6, 6))
      s_mat(:,:) = g_mat(:,:)
      !-----------#] initialize invariants:
      call samurai_rm(numeval_group14, tot, totr, Vi, msq, 6, &
         & effective_group_rank, istopm, scale2, ok, &
         & samurai_cache_flag_g14, samurai_cache_g14)
      !-----------#[ deallocate invariants:
      deallocate(s_mat)
      !-----------#] deallocate invariants:

      !------#] reduce numerator numeval_group14:
   else
      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='72'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram72"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(5, 5))
         s_mat(:,:) = g_mat( (/1,2,3,5,6/), (/1,2,3,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram72, acc, accr, &
            & Vi((/1,2,3,5,6/),:), msq((/1,2,3,5,6/)), 5, &
            & 3, istopm, scale2, ok, &
            & samurai_cache_flag_d72, samurai_cache_d72)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot =  + acc
         totr =  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='75'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram75"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(5, 5))
         s_mat(:,:) = g_mat( (/1,2,4,5,6/), (/1,2,4,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram75, acc, accr, &
            & Vi((/1,2,4,5,6/),:), msq((/1,2,4,5,6/)), 5, &
            & 3, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d75, samurai_cache_d75)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='98'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram98"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/2,3,5,6/), (/2,3,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram98, acc, accr, &
            & Vi((/2,3,5,6/),:), msq((/2,3,5,6/)), 4, &
            & 2, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d98, samurai_cache_d98)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='101'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram101"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/1,2,4,5/), (/1,2,4,5/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram101, acc, accr, &
            & Vi((/1,2,4,5/),:), msq((/1,2,4,5/)), 4, &
            & 2, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d101, samurai_cache_d101)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='120'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram120"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/1,2,3,5/), (/1,2,3,5/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram120, acc, accr, &
            & Vi((/1,2,3,5/),:), msq((/1,2,3,5/)), 4, &
            & 2, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d120, samurai_cache_d120)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='121'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram121"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/2,4,5,6/), (/2,4,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram121, acc, accr, &
            & Vi((/2,4,5,6/),:), msq((/2,4,5,6/)), 4, &
            & 2, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d121, samurai_cache_d121)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='300'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram300"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(6, 6))
         s_mat(:,:) = g_mat( (/1,2,3,4,5,6/), (/1,2,3,4,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram300, acc, accr, &
            & Vi((/1,2,3,4,5,6/),:), msq((/1,2,3,4,5,6/)), 6, &
            & 4, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d300, samurai_cache_d300)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='305'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram305"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(5, 5))
         s_mat(:,:) = g_mat( (/2,3,4,5,6/), (/2,3,4,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram305, acc, accr, &
            & Vi((/2,3,4,5,6/),:), msq((/2,3,4,5,6/)), 5, &
            & 3, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d305, samurai_cache_d305)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='315'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram315"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(5, 5))
         s_mat(:,:) = g_mat( (/1,2,3,4,5/), (/1,2,3,4,5/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram315, acc, accr, &
            & Vi((/1,2,3,4,5/),:), msq((/1,2,3,4,5/)), 5, &
            & 3, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d315, samurai_cache_d315)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
      !------#] sum over reduction of single diagrams:
   end if
end subroutine reduce_group14
!-----#] subroutine reduce_group14:
!-----#[ subroutine reduce_group15:
subroutine     reduce_group15(scale2,tot,totr,ok)
   use msamurai, only: samurai, samurai_rm, samurai_cm
   use options, only: samurai_out => iout
   use madds, only: s_mat
   use p5_usbar_epnebbbarg_config, only: samurai_group_numerators, &
      & samurai_verbosity, samurai_istop, samurai_test, &
      & debug_nlo_diagrams, logfile
   use p5_usbar_epnebbbarg_kinematics
   use p5_usbar_epnebbbarg_model
   use p5_usbar_epnebbbarg_d6h3l1, only: numerator_diagram6 => numerator_samurai
   use p5_usbar_epnebbbarg_d8h3l1, only: numerator_diagram8 => numerator_samurai
   use p5_usbar_epnebbbarg_d10h3l1, only: numerator_diagram10 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_d17h3l1, only: numerator_diagram17 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_d18h3l1, only: numerator_diagram18 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_d21h3l1, only: numerator_diagram21 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_d24h3l1, only: numerator_diagram24 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_d40h3l1, only: numerator_diagram40 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_d43h3l1, only: numerator_diagram43 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_d59h3l1, only: numerator_diagram59 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_d64h3l1, only: numerator_diagram64 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_d65h3l1, only: numerator_diagram65 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_d71h3l1, only: numerator_diagram71 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_d78h3l1, only: numerator_diagram78 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_d86h3l1, only: numerator_diagram86 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_d91h3l1, only: numerator_diagram91 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_d92h3l1, only: numerator_diagram92 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_d103h3l1, only: numerator_diagram103 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d110h3l1, only: numerator_diagram110 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d111h3l1, only: numerator_diagram111 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d124h3l1, only: numerator_diagram124 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d137h3l1, only: numerator_diagram137 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d223h3l1, only: numerator_diagram223 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d296h3l1, only: numerator_diagram296 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d302h3l1, only: numerator_diagram302 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_globalsl1, only: epspow

   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   complex(ki_sam), dimension(-2:0) :: acc
   complex(ki_sam) :: accr
   logical :: acc_ok

   integer :: istopm, istop0

   integer, parameter :: effective_group_rank = 6
   !-----------#[ invariants for samurai:
   complex(ki_sam), dimension(6, 6) :: g_mat
   !-----------#] initialize invariants:
   real(ki_sam), dimension(6) :: msq
   real(ki_sam), dimension(6,4) :: Vi

   if(samurai_test.eq.1 .or. samurai_test.eq.3) then
      istopm = 1
      istop0 = 1
   else
      istopm = samurai_istop
      istop0 = max(2,samurai_istop)
   end if
   msq(1) = 0.0_ki_sam
   Vi(1,:) = real(k3((/2,3,4,1/))-k2((/2,3,4,1/))+k7((/2,3,4,1/))+k4((/2,3,4,1/&
   &)), ki_sam)
   msq(2) = 0.0_ki_sam
   Vi(2,:) = real(-k6((/2,3,4,1/))-k5((/2,3,4,1/)), ki_sam)
   msq(3) = real(mB*mB, ki_sam)
   Vi(3,:) = real(-k6((/2,3,4,1/)), ki_sam)
   msq(4) = 0.0_ki_sam
   Vi(4,:) = real(0, ki_sam)
   msq(5) = 0.0_ki_sam
   Vi(5,:) = real(-k2((/2,3,4,1/)), ki_sam)
   msq(6) = 0.0_ki_sam
   Vi(6,:) = real(-k2((/2,3,4,1/))+k7((/2,3,4,1/)), ki_sam)
   !-----------#[ initialize invariants:
   g_mat(1, 1) = real(0.0_ki, ki_sam)
   g_mat(1, 2) = real(0.0_ki, ki_sam)
   g_mat(2, 1) = g_mat(1, 2)
   g_mat(1, 3) = real(-es671-es567+es234+es67, ki_sam)
   g_mat(3, 1) = g_mat(1, 3)
   g_mat(1, 4) = real(-es567+es56+es234-es71, ki_sam)
   g_mat(4, 1) = g_mat(1, 4)
   g_mat(1, 5) = real(es34-es567+es56+es12-es712, ki_sam)
   g_mat(5, 1) = g_mat(1, 5)
   g_mat(1, 6) = real(es34, ki_sam)
   g_mat(6, 1) = g_mat(1, 6)
   g_mat(2, 2) = real(0.0_ki, ki_sam)
   g_mat(2, 3) = real(0.0_ki, ki_sam)
   g_mat(3, 2) = g_mat(2, 3)
   g_mat(2, 4) = real(es56, ki_sam)
   g_mat(4, 2) = g_mat(2, 4)
   g_mat(2, 5) = real(es34+es56-es234+es71-es712, ki_sam)
   g_mat(5, 2) = g_mat(2, 5)
   g_mat(2, 6) = real(es34+es567-es234-es12, ki_sam)
   g_mat(6, 2) = g_mat(2, 6)
   g_mat(3, 3) = real(-2.0_ki*mB**2, ki_sam)
   g_mat(3, 4) = real(0.0_ki, ki_sam)
   g_mat(4, 3) = g_mat(3, 4)
   g_mat(3, 5) = real(-es671+es345+es71-es712, ki_sam)
   g_mat(5, 3) = g_mat(3, 5)
   g_mat(3, 6) = real(-es671+es345+es67-mB**2-es12, ki_sam)
   g_mat(6, 3) = g_mat(3, 6)
   g_mat(4, 4) = real(0.0_ki, ki_sam)
   g_mat(4, 5) = real(0.0_ki, ki_sam)
   g_mat(5, 4) = g_mat(4, 5)
   g_mat(4, 6) = real(-es12-es71+es712, ki_sam)
   g_mat(6, 4) = g_mat(4, 6)
   g_mat(5, 5) = real(0.0_ki, ki_sam)
   g_mat(5, 6) = real(0.0_ki, ki_sam)
   g_mat(6, 5) = g_mat(5, 6)
   g_mat(6, 6) = real(0.0_ki, ki_sam)
   !-----------#] initialize invariants:

   if(samurai_group_numerators) then
      !------#[ reduce numerator numeval_group15:
      if(samurai_verbosity > 0) then
         write(samurai_out,*) "[golem-2.0] numeval_group15"
         write(samurai_out,*) "[golem-2.0] epspow=", epspow
      end if
      !-----------#[ initialize invariants:
      allocate(s_mat(6, 6))
      s_mat(:,:) = g_mat(:,:)
      !-----------#] initialize invariants:
      call samurai_rm(numeval_group15, tot, totr, Vi, msq, 6, &
         & effective_group_rank, istopm, scale2, ok, &
         & samurai_cache_flag_g15, samurai_cache_g15)
      !-----------#[ deallocate invariants:
      deallocate(s_mat)
      !-----------#] deallocate invariants:

      !------#] reduce numerator numeval_group15:
   else
      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='6'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram6"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(2, 2))
         s_mat(:,:) = g_mat( (/2,4/), (/2,4/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram6, acc, accr, &
            & Vi((/2,4/),:), msq((/2,4/)), 2, &
            & 1, istop0, scale2, ok, &
            & samurai_cache_flag_d6, samurai_cache_d6)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot =  + acc
         totr =  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='8'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram8"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(3, 3))
         s_mat(:,:) = g_mat( (/2,3,4/), (/2,3,4/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram8, acc, accr, &
            & Vi((/2,3,4/),:), msq((/2,3,4/)), 3, &
            & 1, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d8, samurai_cache_d8)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='10'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram10"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(2, 2))
         s_mat(:,:) = g_mat( (/5,6/), (/5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram10, acc, accr, &
            & Vi((/5,6/),:), msq((/5,6/)), 2, &
            & 1, istop0, scale2, acc_ok, &
            & samurai_cache_flag_d10, samurai_cache_d10)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='17'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram17"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/1,2,4,6/), (/1,2,4,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram17, acc, accr, &
            & Vi((/1,2,4,6/),:), msq((/1,2,4,6/)), 4, &
            & 3, istop0, scale2, acc_ok, &
            & samurai_cache_flag_d17, samurai_cache_d17)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='18'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram18"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(3, 3))
         s_mat(:,:) = g_mat( (/2,4,5/), (/2,4,5/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram18, acc, accr, &
            & Vi((/2,4,5/),:), msq((/2,4,5/)), 3, &
            & 2, istop0, scale2, acc_ok, &
            & samurai_cache_flag_d18, samurai_cache_d18)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='21'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram21"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(3, 3))
         s_mat(:,:) = g_mat( (/1,2,4/), (/1,2,4/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram21, acc, accr, &
            & Vi((/1,2,4/),:), msq((/1,2,4/)), 3, &
            & 2, istop0, scale2, acc_ok, &
            & samurai_cache_flag_d21, samurai_cache_d21)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='24'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram24"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(2, 2))
         s_mat(:,:) = g_mat( (/2,4/), (/2,4/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram24, acc, accr, &
            & Vi((/2,4/),:), msq((/2,4/)), 2, &
            & 2, istop0, scale2, acc_ok, &
            & samurai_cache_flag_d24, samurai_cache_d24)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", -real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", -real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", -real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", -real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  +  acc
         totr = totr  +  accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='40'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram40"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(3, 3))
         s_mat(:,:) = g_mat( (/2,4,6/), (/2,4,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram40, acc, accr, &
            & Vi((/2,4,6/),:), msq((/2,4,6/)), 3, &
            & 2, istop0, scale2, acc_ok, &
            & samurai_cache_flag_d40, samurai_cache_d40)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='43'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram43"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(3, 3))
         s_mat(:,:) = g_mat( (/1,4,6/), (/1,4,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram43, acc, accr, &
            & Vi((/1,4,6/),:), msq((/1,4,6/)), 3, &
            & 2, istop0, scale2, acc_ok, &
            & samurai_cache_flag_d43, samurai_cache_d43)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='59'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram59"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(2, 2))
         s_mat(:,:) = g_mat( (/4,6/), (/4,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram59, acc, accr, &
            & Vi((/4,6/),:), msq((/4,6/)), 2, &
            & 1, istop0, scale2, acc_ok, &
            & samurai_cache_flag_d59, samurai_cache_d59)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='64'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram64"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(2, 2))
         s_mat(:,:) = g_mat( (/2,5/), (/2,5/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram64, acc, accr, &
            & Vi((/2,5/),:), msq((/2,5/)), 2, &
            & 1, istop0, scale2, acc_ok, &
            & samurai_cache_flag_d64, samurai_cache_d64)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='65'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram65"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(2, 2))
         s_mat(:,:) = g_mat( (/1,4/), (/1,4/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram65, acc, accr, &
            & Vi((/1,4/),:), msq((/1,4/)), 2, &
            & 1, istop0, scale2, acc_ok, &
            & samurai_cache_flag_d65, samurai_cache_d65)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='71'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram71"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(5, 5))
         s_mat(:,:) = g_mat( (/1,2,4,5,6/), (/1,2,4,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram71, acc, accr, &
            & Vi((/1,2,4,5,6/),:), msq((/1,2,4,5,6/)), 5, &
            & 4, istop0, scale2, acc_ok, &
            & samurai_cache_flag_d71, samurai_cache_d71)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='78'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram78"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(5, 5))
         s_mat(:,:) = g_mat( (/1,2,3,4,6/), (/1,2,3,4,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram78, acc, accr, &
            & Vi((/1,2,3,4,6/),:), msq((/1,2,3,4,6/)), 5, &
            & 3, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d78, samurai_cache_d78)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='86'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram86"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(3, 3))
         s_mat(:,:) = g_mat( (/2,3,4/), (/2,3,4/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram86, acc, accr, &
            & Vi((/2,3,4/),:), msq((/2,3,4/)), 3, &
            & 2, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d86, samurai_cache_d86)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='91'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram91"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/2,3,4,5/), (/2,3,4,5/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram91, acc, accr, &
            & Vi((/2,3,4,5/),:), msq((/2,3,4,5/)), 4, &
            & 2, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d91, samurai_cache_d91)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='92'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram92"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/1,2,3,4/), (/1,2,3,4/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram92, acc, accr, &
            & Vi((/1,2,3,4/),:), msq((/1,2,3,4/)), 4, &
            & 2, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d92, samurai_cache_d92)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='103'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram103"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/1,2,5,6/), (/1,2,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram103, acc, accr, &
            & Vi((/1,2,5,6/),:), msq((/1,2,5,6/)), 4, &
            & 3, istop0, scale2, acc_ok, &
            & samurai_cache_flag_d103, samurai_cache_d103)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='110'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram110"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/2,3,4,6/), (/2,3,4,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram110, acc, accr, &
            & Vi((/2,3,4,6/),:), msq((/2,3,4,6/)), 4, &
            & 2, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d110, samurai_cache_d110)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='111'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram111"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/2,4,5,6/), (/2,4,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram111, acc, accr, &
            & Vi((/2,4,5,6/),:), msq((/2,4,5,6/)), 4, &
            & 3, istop0, scale2, acc_ok, &
            & samurai_cache_flag_d111, samurai_cache_d111)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='124'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram124"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/1,4,5,6/), (/1,4,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram124, acc, accr, &
            & Vi((/1,4,5,6/),:), msq((/1,4,5,6/)), 4, &
            & 3, istop0, scale2, acc_ok, &
            & samurai_cache_flag_d124, samurai_cache_d124)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='137'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram137"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(3, 3))
         s_mat(:,:) = g_mat( (/4,5,6/), (/4,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram137, acc, accr, &
            & Vi((/4,5,6/),:), msq((/4,5,6/)), 3, &
            & 2, istop0, scale2, acc_ok, &
            & samurai_cache_flag_d137, samurai_cache_d137)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='223'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram223"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(3, 3))
         s_mat(:,:) = g_mat( (/2,5,6/), (/2,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram223, acc, accr, &
            & Vi((/2,5,6/),:), msq((/2,5,6/)), 3, &
            & 2, istop0, scale2, acc_ok, &
            & samurai_cache_flag_d223, samurai_cache_d223)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='296'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram296"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(6, 6))
         s_mat(:,:) = g_mat( (/1,2,3,4,5,6/), (/1,2,3,4,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram296, acc, accr, &
            & Vi((/1,2,3,4,5,6/),:), msq((/1,2,3,4,5,6/)), 6, &
            & 4, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d296, samurai_cache_d296)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='302'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram302"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(5, 5))
         s_mat(:,:) = g_mat( (/2,3,4,5,6/), (/2,3,4,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram302, acc, accr, &
            & Vi((/2,3,4,5,6/),:), msq((/2,3,4,5,6/)), 5, &
            & 3, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d302, samurai_cache_d302)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
      !------#] sum over reduction of single diagrams:
   end if
end subroutine reduce_group15
!-----#] subroutine reduce_group15:
!-----#[ subroutine reduce_group16:
subroutine     reduce_group16(scale2,tot,totr,ok)
   use msamurai, only: samurai, samurai_rm, samurai_cm
   use options, only: samurai_out => iout
   use madds, only: s_mat
   use p5_usbar_epnebbbarg_config, only: samurai_group_numerators, &
      & samurai_verbosity, samurai_istop, samurai_test, &
      & debug_nlo_diagrams, logfile
   use p5_usbar_epnebbbarg_kinematics
   use p5_usbar_epnebbbarg_model
   use p5_usbar_epnebbbarg_d67h3l1, only: numerator_diagram67 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_d77h3l1, only: numerator_diagram77 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_d94h3l1, only: numerator_diagram94 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_d107h3l1, only: numerator_diagram107 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d117h3l1, only: numerator_diagram117 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d125h3l1, only: numerator_diagram125 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d145h3l1, only: numerator_diagram145 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d294h3l1, only: numerator_diagram294 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d304h3l1, only: numerator_diagram304 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d314h3l1, only: numerator_diagram314 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d317h3l1, only: numerator_diagram317 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d336h3l1, only: numerator_diagram336 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_globalsl1, only: epspow

   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   complex(ki_sam), dimension(-2:0) :: acc
   complex(ki_sam) :: accr
   logical :: acc_ok

   integer :: istopm, istop0

   integer, parameter :: effective_group_rank = 6
   !-----------#[ invariants for samurai:
   complex(ki_sam), dimension(6, 6) :: g_mat
   !-----------#] initialize invariants:
   real(ki_sam), dimension(6) :: msq
   real(ki_sam), dimension(6,4) :: Vi

   if(samurai_test.eq.1 .or. samurai_test.eq.3) then
      istopm = 1
      istop0 = 1
   else
      istopm = samurai_istop
      istop0 = max(2,samurai_istop)
   end if
   msq(1) = 0.0_ki_sam
   Vi(1,:) = real(k3((/2,3,4,1/))-k2((/2,3,4,1/))+k4((/2,3,4,1/)), ki_sam)
   msq(2) = 0.0_ki_sam
   Vi(2,:) = real(-k7((/2,3,4,1/))-k6((/2,3,4,1/))-k5((/2,3,4,1/)), ki_sam)
   msq(3) = 0.0_ki_sam
   Vi(3,:) = real(-k6((/2,3,4,1/))-k5((/2,3,4,1/)), ki_sam)
   msq(4) = real(mB*mB, ki_sam)
   Vi(4,:) = real(-k6((/2,3,4,1/)), ki_sam)
   msq(5) = 0.0_ki_sam
   Vi(5,:) = real(0, ki_sam)
   msq(6) = 0.0_ki_sam
   Vi(6,:) = real(-k2((/2,3,4,1/)), ki_sam)
   !-----------#[ initialize invariants:
   g_mat(1, 1) = real(0.0_ki, ki_sam)
   g_mat(1, 2) = real(0.0_ki, ki_sam)
   g_mat(2, 1) = g_mat(1, 2)
   g_mat(1, 3) = real(es71, ki_sam)
   g_mat(3, 1) = g_mat(1, 3)
   g_mat(1, 4) = real(-es671+es234+mB**2-es56+es71, ki_sam)
   g_mat(4, 1) = g_mat(1, 4)
   g_mat(1, 5) = real(es234, ki_sam)
   g_mat(5, 1) = g_mat(1, 5)
   g_mat(1, 6) = real(es34, ki_sam)
   g_mat(6, 1) = g_mat(1, 6)
   g_mat(2, 2) = real(0.0_ki, ki_sam)
   g_mat(2, 3) = real(0.0_ki, ki_sam)
   g_mat(3, 2) = g_mat(2, 3)
   g_mat(2, 4) = real(mB**2-es56-es67+es567, ki_sam)
   g_mat(4, 2) = g_mat(2, 4)
   g_mat(2, 5) = real(es567, ki_sam)
   g_mat(5, 2) = g_mat(2, 5)
   g_mat(2, 6) = real(es34+es567-es234-es12, ki_sam)
   g_mat(6, 2) = g_mat(2, 6)
   g_mat(3, 3) = real(0.0_ki, ki_sam)
   g_mat(3, 4) = real(0.0_ki, ki_sam)
   g_mat(4, 3) = g_mat(3, 4)
   g_mat(3, 5) = real(es56, ki_sam)
   g_mat(5, 3) = g_mat(3, 5)
   g_mat(3, 6) = real(es34+es56-es234+es71-es712, ki_sam)
   g_mat(6, 3) = g_mat(3, 6)
   g_mat(4, 4) = real(-2.0_ki*mB**2, ki_sam)
   g_mat(4, 5) = real(0.0_ki, ki_sam)
   g_mat(5, 4) = g_mat(4, 5)
   g_mat(4, 6) = real(-es671+es345+es71-es712, ki_sam)
   g_mat(6, 4) = g_mat(4, 6)
   g_mat(5, 5) = real(0.0_ki, ki_sam)
   g_mat(5, 6) = real(0.0_ki, ki_sam)
   g_mat(6, 5) = g_mat(5, 6)
   g_mat(6, 6) = real(0.0_ki, ki_sam)
   !-----------#] initialize invariants:

   if(samurai_group_numerators) then
      !------#[ reduce numerator numeval_group16:
      if(samurai_verbosity > 0) then
         write(samurai_out,*) "[golem-2.0] numeval_group16"
         write(samurai_out,*) "[golem-2.0] epspow=", epspow
      end if
      !-----------#[ initialize invariants:
      allocate(s_mat(6, 6))
      s_mat(:,:) = g_mat(:,:)
      !-----------#] initialize invariants:
      call samurai_rm(numeval_group16, tot, totr, Vi, msq, 6, &
         & effective_group_rank, istopm, scale2, ok, &
         & samurai_cache_flag_g16, samurai_cache_g16)
      !-----------#[ deallocate invariants:
      deallocate(s_mat)
      !-----------#] deallocate invariants:

      !------#] reduce numerator numeval_group16:
   else
      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='67'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram67"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(5, 5))
         s_mat(:,:) = g_mat( (/1,2,3,5,6/), (/1,2,3,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram67, acc, accr, &
            & Vi((/1,2,3,5,6/),:), msq((/1,2,3,5,6/)), 5, &
            & 4, istop0, scale2, ok, &
            & samurai_cache_flag_d67, samurai_cache_d67)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot =  + acc
         totr =  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='77'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram77"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(5, 5))
         s_mat(:,:) = g_mat( (/1,3,4,5,6/), (/1,3,4,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram77, acc, accr, &
            & Vi((/1,3,4,5,6/),:), msq((/1,3,4,5,6/)), 5, &
            & 3, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d77, samurai_cache_d77)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='94'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram94"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/2,3,5,6/), (/2,3,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram94, acc, accr, &
            & Vi((/2,3,5,6/),:), msq((/2,3,5,6/)), 4, &
            & 3, istop0, scale2, acc_ok, &
            & samurai_cache_flag_d94, samurai_cache_d94)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='107'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram107"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/1,3,4,5/), (/1,3,4,5/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram107, acc, accr, &
            & Vi((/1,3,4,5/),:), msq((/1,3,4,5/)), 4, &
            & 2, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d107, samurai_cache_d107)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='117'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram117"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/1,2,3,5/), (/1,2,3,5/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram117, acc, accr, &
            & Vi((/1,2,3,5/),:), msq((/1,2,3,5/)), 4, &
            & 3, istop0, scale2, acc_ok, &
            & samurai_cache_flag_d117, samurai_cache_d117)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='125'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram125"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/1,2,3,6/), (/1,2,3,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram125, acc, accr, &
            & Vi((/1,2,3,6/),:), msq((/1,2,3,6/)), 4, &
            & 3, istop0, scale2, acc_ok, &
            & samurai_cache_flag_d125, samurai_cache_d125)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='145'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram145"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(3, 3))
         s_mat(:,:) = g_mat( (/2,3,5/), (/2,3,5/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram145, acc, accr, &
            & Vi((/2,3,5/),:), msq((/2,3,5/)), 3, &
            & 3, istop0, scale2, acc_ok, &
            & samurai_cache_flag_d145, samurai_cache_d145)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", -real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", -real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", -real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", -real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  +  acc
         totr = totr  +  accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='294'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram294"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(6, 6))
         s_mat(:,:) = g_mat( (/1,2,3,4,5,6/), (/1,2,3,4,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram294, acc, accr, &
            & Vi((/1,2,3,4,5,6/),:), msq((/1,2,3,4,5,6/)), 6, &
            & 4, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d294, samurai_cache_d294)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='304'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram304"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(5, 5))
         s_mat(:,:) = g_mat( (/2,3,4,5,6/), (/2,3,4,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram304, acc, accr, &
            & Vi((/2,3,4,5,6/),:), msq((/2,3,4,5,6/)), 5, &
            & 3, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d304, samurai_cache_d304)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='314'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram314"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(5, 5))
         s_mat(:,:) = g_mat( (/1,2,3,4,5/), (/1,2,3,4,5/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram314, acc, accr, &
            & Vi((/1,2,3,4,5/),:), msq((/1,2,3,4,5/)), 5, &
            & 3, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d314, samurai_cache_d314)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='317'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram317"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/2,3,4,5/), (/2,3,4,5/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram317, acc, accr, &
            & Vi((/2,3,4,5/),:), msq((/2,3,4,5/)), 4, &
            & 3, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d317, samurai_cache_d317)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='336'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram336"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(3, 3))
         s_mat(:,:) = g_mat( (/2,3,4/), (/2,3,4/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram336, acc, accr, &
            & Vi((/2,3,4/),:), msq((/2,3,4/)), 3, &
            & 2, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d336, samurai_cache_d336)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
      !------#] sum over reduction of single diagrams:
   end if
end subroutine reduce_group16
!-----#] subroutine reduce_group16:
!-----#[ subroutine reduce_group17:
subroutine     reduce_group17(scale2,tot,totr,ok)
   use msamurai, only: samurai, samurai_rm, samurai_cm
   use options, only: samurai_out => iout
   use madds, only: s_mat
   use p5_usbar_epnebbbarg_config, only: samurai_group_numerators, &
      & samurai_verbosity, samurai_istop, samurai_test, &
      & debug_nlo_diagrams, logfile
   use p5_usbar_epnebbbarg_kinematics
   use p5_usbar_epnebbbarg_model
   use p5_usbar_epnebbbarg_d291h3l1, only: numerator_diagram291 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d309h3l1, only: numerator_diagram309 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_globalsl1, only: epspow

   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   complex(ki_sam), dimension(-2:0) :: acc
   complex(ki_sam) :: accr
   logical :: acc_ok

   integer :: istopm, istop0

   integer, parameter :: effective_group_rank = 4
   !-----------#[ invariants for samurai:
   complex(ki_sam), dimension(6, 6) :: g_mat
   !-----------#] initialize invariants:
   real(ki_sam), dimension(6) :: msq
   real(ki_sam), dimension(6,4) :: Vi

   if(samurai_test.eq.1 .or. samurai_test.eq.3) then
      istopm = 1
      istop0 = 1
   else
      istopm = samurai_istop
      istop0 = max(2,samurai_istop)
   end if
   msq(1) = 0.0_ki_sam
   Vi(1,:) = real(-k2((/2,3,4,1/)), ki_sam)
   msq(2) = 0.0_ki_sam
   Vi(2,:) = real(0, ki_sam)
   msq(3) = real(mB*mB, ki_sam)
   Vi(3,:) = real(-k6((/2,3,4,1/)), ki_sam)
   msq(4) = 0.0_ki_sam
   Vi(4,:) = real(-k6((/2,3,4,1/))-k5((/2,3,4,1/)), ki_sam)
   msq(5) = 0.0_ki_sam
   Vi(5,:) = real(k3((/2,3,4,1/))-k2((/2,3,4,1/))+k7((/2,3,4,1/))+k4((/2,3,4,1/&
   &)), ki_sam)
   msq(6) = 0.0_ki_sam
   Vi(6,:) = real(k3((/2,3,4,1/))-k2((/2,3,4,1/))+k4((/2,3,4,1/)), ki_sam)
   !-----------#[ initialize invariants:
   g_mat(1, 1) = real(0.0_ki, ki_sam)
   g_mat(1, 2) = real(0.0_ki, ki_sam)
   g_mat(2, 1) = g_mat(1, 2)
   g_mat(1, 3) = real(-es671+es345+es71-es712, ki_sam)
   g_mat(3, 1) = g_mat(1, 3)
   g_mat(1, 4) = real(es34+es56-es234+es71-es712, ki_sam)
   g_mat(4, 1) = g_mat(1, 4)
   g_mat(1, 5) = real(es34-es567+es56+es12-es712, ki_sam)
   g_mat(5, 1) = g_mat(1, 5)
   g_mat(1, 6) = real(es34, ki_sam)
   g_mat(6, 1) = g_mat(1, 6)
   g_mat(2, 2) = real(0.0_ki, ki_sam)
   g_mat(2, 3) = real(0.0_ki, ki_sam)
   g_mat(3, 2) = g_mat(2, 3)
   g_mat(2, 4) = real(es56, ki_sam)
   g_mat(4, 2) = g_mat(2, 4)
   g_mat(2, 5) = real(-es567+es56+es234-es71, ki_sam)
   g_mat(5, 2) = g_mat(2, 5)
   g_mat(2, 6) = real(es234, ki_sam)
   g_mat(6, 2) = g_mat(2, 6)
   g_mat(3, 3) = real(-2.0_ki*mB**2, ki_sam)
   g_mat(3, 4) = real(0.0_ki, ki_sam)
   g_mat(4, 3) = g_mat(3, 4)
   g_mat(3, 5) = real(-es671-es567+es234+es67, ki_sam)
   g_mat(5, 3) = g_mat(3, 5)
   g_mat(3, 6) = real(-es671+es234+mB**2-es56+es71, ki_sam)
   g_mat(6, 3) = g_mat(3, 6)
   g_mat(4, 4) = real(0.0_ki, ki_sam)
   g_mat(4, 5) = real(0.0_ki, ki_sam)
   g_mat(5, 4) = g_mat(4, 5)
   g_mat(4, 6) = real(es71, ki_sam)
   g_mat(6, 4) = g_mat(4, 6)
   g_mat(5, 5) = real(0.0_ki, ki_sam)
   g_mat(5, 6) = real(0.0_ki, ki_sam)
   g_mat(6, 5) = g_mat(5, 6)
   g_mat(6, 6) = real(0.0_ki, ki_sam)
   !-----------#] initialize invariants:

   if(samurai_group_numerators) then
      !------#[ reduce numerator numeval_group17:
      if(samurai_verbosity > 0) then
         write(samurai_out,*) "[golem-2.0] numeval_group17"
         write(samurai_out,*) "[golem-2.0] epspow=", epspow
      end if
      !-----------#[ initialize invariants:
      allocate(s_mat(6, 6))
      s_mat(:,:) = g_mat(:,:)
      !-----------#] initialize invariants:
      call samurai_rm(numeval_group17, tot, totr, Vi, msq, 6, &
         & effective_group_rank, istopm, scale2, ok, &
         & samurai_cache_flag_g17, samurai_cache_g17)
      !-----------#[ deallocate invariants:
      deallocate(s_mat)
      !-----------#] deallocate invariants:

      !------#] reduce numerator numeval_group17:
   else
      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='291'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram291"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(6, 6))
         s_mat(:,:) = g_mat( (/1,2,3,4,5,6/), (/1,2,3,4,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram291, acc, accr, &
            & Vi((/1,2,3,4,5,6/),:), msq((/1,2,3,4,5,6/)), 6, &
            & 4, istopm, scale2, ok, &
            & samurai_cache_flag_d291, samurai_cache_d291)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot =  + acc
         totr =  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='309'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram309"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(5, 5))
         s_mat(:,:) = g_mat( (/2,3,4,5,6/), (/2,3,4,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram309, acc, accr, &
            & Vi((/2,3,4,5,6/),:), msq((/2,3,4,5,6/)), 5, &
            & 3, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d309, samurai_cache_d309)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
      !------#] sum over reduction of single diagrams:
   end if
end subroutine reduce_group17
!-----#] subroutine reduce_group17:
!-----#[ subroutine reduce_group18:
subroutine     reduce_group18(scale2,tot,totr,ok)
   use msamurai, only: samurai, samurai_rm, samurai_cm
   use options, only: samurai_out => iout
   use madds, only: s_mat
   use p5_usbar_epnebbbarg_config, only: samurai_group_numerators, &
      & samurai_verbosity, samurai_istop, samurai_test, &
      & debug_nlo_diagrams, logfile
   use p5_usbar_epnebbbarg_kinematics
   use p5_usbar_epnebbbarg_model
   use p5_usbar_epnebbbarg_d1h3l1, only: numerator_diagram1 => numerator_samurai
   use p5_usbar_epnebbbarg_d2h3l1, only: numerator_diagram2 => numerator_samurai
   use p5_usbar_epnebbbarg_d3h3l1, only: numerator_diagram3 => numerator_samurai
   use p5_usbar_epnebbbarg_d4h3l1, only: numerator_diagram4 => numerator_samurai
   use p5_usbar_epnebbbarg_d20h3l1, only: numerator_diagram20 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_d23h3l1, only: numerator_diagram23 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_d62h3l1, only: numerator_diagram62 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_d63h3l1, only: numerator_diagram63 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_d73h3l1, only: numerator_diagram73 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_d74h3l1, only: numerator_diagram74 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_d99h3l1, only: numerator_diagram99 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_d100h3l1, only: numerator_diagram100 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d104h3l1, only: numerator_diagram104 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d119h3l1, only: numerator_diagram119 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d122h3l1, only: numerator_diagram122 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d175h3l1, only: numerator_diagram175 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d179h3l1, only: numerator_diagram179 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d219h3l1, only: numerator_diagram219 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d221h3l1, only: numerator_diagram221 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d225h3l1, only: numerator_diagram225 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d229h3l1, only: numerator_diagram229 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d240h3l1, only: numerator_diagram240 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d299h3l1, only: numerator_diagram299 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d307h3l1, only: numerator_diagram307 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d313h3l1, only: numerator_diagram313 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d321h3l1, only: numerator_diagram321 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d333h3l1, only: numerator_diagram333 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d335h3l1, only: numerator_diagram335 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_globalsl1, only: epspow

   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   complex(ki_sam), dimension(-2:0) :: acc
   complex(ki_sam) :: accr
   logical :: acc_ok

   integer :: istopm, istop0

   integer, parameter :: effective_group_rank = 6
   !-----------#[ invariants for samurai:
   complex(ki_sam), dimension(6, 6) :: g_mat
   !-----------#] initialize invariants:
   real(ki_sam), dimension(6) :: msq
   real(ki_sam), dimension(6,4) :: Vi

   if(samurai_test.eq.1 .or. samurai_test.eq.3) then
      istopm = 1
      istop0 = 1
   else
      istopm = samurai_istop
      istop0 = max(2,samurai_istop)
   end if
   msq(1) = 0.0_ki_sam
   Vi(1,:) = real(-k2((/2,3,4,1/)), ki_sam)
   msq(2) = 0.0_ki_sam
   Vi(2,:) = real(0, ki_sam)
   msq(3) = real(mB*mB, ki_sam)
   Vi(3,:) = real(-k6((/2,3,4,1/)), ki_sam)
   msq(4) = real(mB*mB, ki_sam)
   Vi(4,:) = real(-k7((/2,3,4,1/))-k6((/2,3,4,1/)), ki_sam)
   msq(5) = 0.0_ki_sam
   Vi(5,:) = real(-k7((/2,3,4,1/))-k6((/2,3,4,1/))-k5((/2,3,4,1/)), ki_sam)
   msq(6) = 0.0_ki_sam
   Vi(6,:) = real(k3((/2,3,4,1/))-k2((/2,3,4,1/))+k4((/2,3,4,1/)), ki_sam)
   !-----------#[ initialize invariants:
   g_mat(1, 1) = real(0.0_ki, ki_sam)
   g_mat(1, 2) = real(0.0_ki, ki_sam)
   g_mat(2, 1) = g_mat(1, 2)
   g_mat(1, 3) = real(-es671+es345+es71-es712, ki_sam)
   g_mat(3, 1) = g_mat(1, 3)
   g_mat(1, 4) = real(-es671+es345+es67-mB**2-es12, ki_sam)
   g_mat(4, 1) = g_mat(1, 4)
   g_mat(1, 5) = real(es34+es567-es234-es12, ki_sam)
   g_mat(5, 1) = g_mat(1, 5)
   g_mat(1, 6) = real(es34, ki_sam)
   g_mat(6, 1) = g_mat(1, 6)
   g_mat(2, 2) = real(0.0_ki, ki_sam)
   g_mat(2, 3) = real(0.0_ki, ki_sam)
   g_mat(3, 2) = g_mat(2, 3)
   g_mat(2, 4) = real(-mB**2+es67, ki_sam)
   g_mat(4, 2) = g_mat(2, 4)
   g_mat(2, 5) = real(es567, ki_sam)
   g_mat(5, 2) = g_mat(2, 5)
   g_mat(2, 6) = real(es234, ki_sam)
   g_mat(6, 2) = g_mat(2, 6)
   g_mat(3, 3) = real(-2.0_ki*mB**2, ki_sam)
   g_mat(3, 4) = real(-2.0_ki*mB**2, ki_sam)
   g_mat(4, 3) = g_mat(3, 4)
   g_mat(3, 5) = real(mB**2-es56-es67+es567, ki_sam)
   g_mat(5, 3) = g_mat(3, 5)
   g_mat(3, 6) = real(-es671+es234+mB**2-es56+es71, ki_sam)
   g_mat(6, 3) = g_mat(3, 6)
   g_mat(4, 4) = real(-2.0_ki*mB**2, ki_sam)
   g_mat(4, 5) = real(0.0_ki, ki_sam)
   g_mat(5, 4) = g_mat(4, 5)
   g_mat(4, 6) = real(-es671-es567+es234+es67, ki_sam)
   g_mat(6, 4) = g_mat(4, 6)
   g_mat(5, 5) = real(0.0_ki, ki_sam)
   g_mat(5, 6) = real(0.0_ki, ki_sam)
   g_mat(6, 5) = g_mat(5, 6)
   g_mat(6, 6) = real(0.0_ki, ki_sam)
   !-----------#] initialize invariants:

   if(samurai_group_numerators) then
      !------#[ reduce numerator numeval_group18:
      if(samurai_verbosity > 0) then
         write(samurai_out,*) "[golem-2.0] numeval_group18"
         write(samurai_out,*) "[golem-2.0] epspow=", epspow
      end if
      !-----------#[ initialize invariants:
      allocate(s_mat(6, 6))
      s_mat(:,:) = g_mat(:,:)
      !-----------#] initialize invariants:
      call samurai_rm(numeval_group18, tot, totr, Vi, msq, 6, &
         & effective_group_rank, istopm, scale2, ok, &
         & samurai_cache_flag_g18, samurai_cache_g18)
      !-----------#[ deallocate invariants:
      deallocate(s_mat)
      !-----------#] deallocate invariants:

      !------#] reduce numerator numeval_group18:
   else
      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='1'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram1"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/1,2,5,6/), (/1,2,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram1, acc, accr, &
            & Vi((/1,2,5,6/),:), msq((/1,2,5,6/)), 4, &
            & 2, istop0, scale2, ok, &
            & samurai_cache_flag_d1, samurai_cache_d1)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot =  + acc
         totr =  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='2'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram2"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(3, 3))
         s_mat(:,:) = g_mat( (/1,2,5/), (/1,2,5/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram2, acc, accr, &
            & Vi((/1,2,5/),:), msq((/1,2,5/)), 3, &
            & 1, istop0, scale2, acc_ok, &
            & samurai_cache_flag_d2, samurai_cache_d2)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='3'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram3"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(3, 3))
         s_mat(:,:) = g_mat( (/2,5,6/), (/2,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram3, acc, accr, &
            & Vi((/2,5,6/),:), msq((/2,5,6/)), 3, &
            & 1, istop0, scale2, acc_ok, &
            & samurai_cache_flag_d3, samurai_cache_d3)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='4'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram4"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(2, 2))
         s_mat(:,:) = g_mat( (/2,5/), (/2,5/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram4, acc, accr, &
            & Vi((/2,5/),:), msq((/2,5/)), 2, &
            & 1, istop0, scale2, acc_ok, &
            & samurai_cache_flag_d4, samurai_cache_d4)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='20'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram20"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(3, 3))
         s_mat(:,:) = g_mat( (/1,2,6/), (/1,2,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram20, acc, accr, &
            & Vi((/1,2,6/),:), msq((/1,2,6/)), 3, &
            & 2, istop0, scale2, acc_ok, &
            & samurai_cache_flag_d20, samurai_cache_d20)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='23'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram23"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(3, 3))
         s_mat(:,:) = g_mat( (/1,5,6/), (/1,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram23, acc, accr, &
            & Vi((/1,5,6/),:), msq((/1,5,6/)), 3, &
            & 2, istop0, scale2, acc_ok, &
            & samurai_cache_flag_d23, samurai_cache_d23)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='62'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram62"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(2, 2))
         s_mat(:,:) = g_mat( (/2,6/), (/2,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram62, acc, accr, &
            & Vi((/2,6/),:), msq((/2,6/)), 2, &
            & 1, istop0, scale2, acc_ok, &
            & samurai_cache_flag_d62, samurai_cache_d62)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='63'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram63"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(2, 2))
         s_mat(:,:) = g_mat( (/1,5/), (/1,5/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram63, acc, accr, &
            & Vi((/1,5/),:), msq((/1,5/)), 2, &
            & 1, istop0, scale2, acc_ok, &
            & samurai_cache_flag_d63, samurai_cache_d63)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='73'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram73"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(5, 5))
         s_mat(:,:) = g_mat( (/1,2,3,5,6/), (/1,2,3,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram73, acc, accr, &
            & Vi((/1,2,3,5,6/),:), msq((/1,2,3,5,6/)), 5, &
            & 3, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d73, samurai_cache_d73)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='74'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram74"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(5, 5))
         s_mat(:,:) = g_mat( (/1,2,4,5,6/), (/1,2,4,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram74, acc, accr, &
            & Vi((/1,2,4,5,6/),:), msq((/1,2,4,5,6/)), 5, &
            & 3, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d74, samurai_cache_d74)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='99'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram99"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/2,3,5,6/), (/2,3,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram99, acc, accr, &
            & Vi((/2,3,5,6/),:), msq((/2,3,5,6/)), 4, &
            & 2, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d99, samurai_cache_d99)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='100'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram100"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/1,2,4,5/), (/1,2,4,5/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram100, acc, accr, &
            & Vi((/1,2,4,5/),:), msq((/1,2,4,5/)), 4, &
            & 2, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d100, samurai_cache_d100)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='104'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram104"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/1,2,5,6/), (/1,2,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram104, acc, accr, &
            & Vi((/1,2,5,6/),:), msq((/1,2,5,6/)), 4, &
            & 3, istop0, scale2, acc_ok, &
            & samurai_cache_flag_d104, samurai_cache_d104)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='119'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram119"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/1,2,3,5/), (/1,2,3,5/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram119, acc, accr, &
            & Vi((/1,2,3,5/),:), msq((/1,2,3,5/)), 4, &
            & 2, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d119, samurai_cache_d119)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='122'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram122"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/2,4,5,6/), (/2,4,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram122, acc, accr, &
            & Vi((/2,4,5,6/),:), msq((/2,4,5,6/)), 4, &
            & 2, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d122, samurai_cache_d122)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='175'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram175"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(3, 3))
         s_mat(:,:) = g_mat( (/2,3,5/), (/2,3,5/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram175, acc, accr, &
            & Vi((/2,3,5/),:), msq((/2,3,5/)), 3, &
            & 2, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d175, samurai_cache_d175)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='179'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram179"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(3, 3))
         s_mat(:,:) = g_mat( (/2,4,5/), (/2,4,5/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram179, acc, accr, &
            & Vi((/2,4,5/),:), msq((/2,4,5/)), 3, &
            & 2, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d179, samurai_cache_d179)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='219'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram219"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(2, 2))
         s_mat(:,:) = g_mat( (/3,5/), (/3,5/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram219, acc, accr, &
            & Vi((/3,5/),:), msq((/3,5/)), 2, &
            & 2, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d219, samurai_cache_d219)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='221'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram221"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(2, 2))
         s_mat(:,:) = g_mat( (/2,4/), (/2,4/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram221, acc, accr, &
            & Vi((/2,4/),:), msq((/2,4/)), 2, &
            & 2, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d221, samurai_cache_d221)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='225'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram225"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(3, 3))
         s_mat(:,:) = g_mat( (/1,2,5/), (/1,2,5/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram225, acc, accr, &
            & Vi((/1,2,5/),:), msq((/1,2,5/)), 3, &
            & 2, istop0, scale2, acc_ok, &
            & samurai_cache_flag_d225, samurai_cache_d225)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='229'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram229"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(3, 3))
         s_mat(:,:) = g_mat( (/2,5,6/), (/2,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram229, acc, accr, &
            & Vi((/2,5,6/),:), msq((/2,5,6/)), 3, &
            & 2, istop0, scale2, acc_ok, &
            & samurai_cache_flag_d229, samurai_cache_d229)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='240'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram240"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(2, 2))
         s_mat(:,:) = g_mat( (/2,5/), (/2,5/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram240, acc, accr, &
            & Vi((/2,5/),:), msq((/2,5/)), 2, &
            & 2, istop0, scale2, acc_ok, &
            & samurai_cache_flag_d240, samurai_cache_d240)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", -real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", -real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", -real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", -real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  +  acc
         totr = totr  +  accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='299'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram299"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(6, 6))
         s_mat(:,:) = g_mat( (/1,2,3,4,5,6/), (/1,2,3,4,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram299, acc, accr, &
            & Vi((/1,2,3,4,5,6/),:), msq((/1,2,3,4,5,6/)), 6, &
            & 4, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d299, samurai_cache_d299)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='307'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram307"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(5, 5))
         s_mat(:,:) = g_mat( (/1,2,3,4,5/), (/1,2,3,4,5/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram307, acc, accr, &
            & Vi((/1,2,3,4,5/),:), msq((/1,2,3,4,5/)), 5, &
            & 3, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d307, samurai_cache_d307)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='313'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram313"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(5, 5))
         s_mat(:,:) = g_mat( (/2,3,4,5,6/), (/2,3,4,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram313, acc, accr, &
            & Vi((/2,3,4,5,6/),:), msq((/2,3,4,5,6/)), 5, &
            & 3, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d313, samurai_cache_d313)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='321'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram321"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/2,3,4,5/), (/2,3,4,5/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram321, acc, accr, &
            & Vi((/2,3,4,5/),:), msq((/2,3,4,5/)), 4, &
            & 3, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d321, samurai_cache_d321)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='333'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram333"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(3, 3))
         s_mat(:,:) = g_mat( (/2,3,4/), (/2,3,4/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram333, acc, accr, &
            & Vi((/2,3,4/),:), msq((/2,3,4/)), 3, &
            & 2, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d333, samurai_cache_d333)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='335'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram335"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(3, 3))
         s_mat(:,:) = g_mat( (/3,4,5/), (/3,4,5/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram335, acc, accr, &
            & Vi((/3,4,5/),:), msq((/3,4,5/)), 3, &
            & 2, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d335, samurai_cache_d335)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
      !------#] sum over reduction of single diagrams:
   end if
end subroutine reduce_group18
!-----#] subroutine reduce_group18:
!-----#[ subroutine reduce_group19:
subroutine     reduce_group19(scale2,tot,totr,ok)
   use msamurai, only: samurai, samurai_rm, samurai_cm
   use options, only: samurai_out => iout
   use madds, only: s_mat
   use p5_usbar_epnebbbarg_config, only: samurai_group_numerators, &
      & samurai_verbosity, samurai_istop, samurai_test, &
      & debug_nlo_diagrams, logfile
   use p5_usbar_epnebbbarg_kinematics
   use p5_usbar_epnebbbarg_model
   use p5_usbar_epnebbbarg_d293h3l1, only: numerator_diagram293 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d306h3l1, only: numerator_diagram306 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d312h3l1, only: numerator_diagram312 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_globalsl1, only: epspow

   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   complex(ki_sam), dimension(-2:0) :: acc
   complex(ki_sam) :: accr
   logical :: acc_ok

   integer :: istopm, istop0

   integer, parameter :: effective_group_rank = 4
   !-----------#[ invariants for samurai:
   complex(ki_sam), dimension(6, 6) :: g_mat
   !-----------#] initialize invariants:
   real(ki_sam), dimension(6) :: msq
   real(ki_sam), dimension(6,4) :: Vi

   if(samurai_test.eq.1 .or. samurai_test.eq.3) then
      istopm = 1
      istop0 = 1
   else
      istopm = samurai_istop
      istop0 = max(2,samurai_istop)
   end if
   msq(1) = 0.0_ki_sam
   Vi(1,:) = real(-k2((/2,3,4,1/)), ki_sam)
   msq(2) = 0.0_ki_sam
   Vi(2,:) = real(0, ki_sam)
   msq(3) = 0.0_ki_sam
   Vi(3,:) = real(-k7((/2,3,4,1/)), ki_sam)
   msq(4) = real(mB*mB, ki_sam)
   Vi(4,:) = real(-k7((/2,3,4,1/))-k5((/2,3,4,1/)), ki_sam)
   msq(5) = 0.0_ki_sam
   Vi(5,:) = real(-k7((/2,3,4,1/))-k6((/2,3,4,1/))-k5((/2,3,4,1/)), ki_sam)
   msq(6) = 0.0_ki_sam
   Vi(6,:) = real(k3((/2,3,4,1/))-k2((/2,3,4,1/))+k4((/2,3,4,1/)), ki_sam)
   !-----------#[ initialize invariants:
   g_mat(1, 1) = real(0.0_ki, ki_sam)
   g_mat(1, 2) = real(0.0_ki, ki_sam)
   g_mat(2, 1) = g_mat(1, 2)
   g_mat(1, 3) = real(-es12-es71+es712, ki_sam)
   g_mat(3, 1) = g_mat(1, 3)
   g_mat(1, 4) = real(es34+es671+es567-es56-es234-es345-es67+mB**2-es12-es71+es&
   &712, ki_sam)
   g_mat(4, 1) = g_mat(1, 4)
   g_mat(1, 5) = real(es34+es567-es234-es12, ki_sam)
   g_mat(5, 1) = g_mat(1, 5)
   g_mat(1, 6) = real(es34, ki_sam)
   g_mat(6, 1) = g_mat(1, 6)
   g_mat(2, 2) = real(0.0_ki, ki_sam)
   g_mat(2, 3) = real(0.0_ki, ki_sam)
   g_mat(3, 2) = g_mat(2, 3)
   g_mat(2, 4) = real(mB**2-es56-es67+es567, ki_sam)
   g_mat(4, 2) = g_mat(2, 4)
   g_mat(2, 5) = real(es567, ki_sam)
   g_mat(5, 2) = g_mat(2, 5)
   g_mat(2, 6) = real(es234, ki_sam)
   g_mat(6, 2) = g_mat(2, 6)
   g_mat(3, 3) = real(0.0_ki, ki_sam)
   g_mat(3, 4) = real(0.0_ki, ki_sam)
   g_mat(4, 3) = g_mat(3, 4)
   g_mat(3, 5) = real(es56, ki_sam)
   g_mat(5, 3) = g_mat(3, 5)
   g_mat(3, 6) = real(-es567+es56+es234-es71, ki_sam)
   g_mat(6, 3) = g_mat(3, 6)
   g_mat(4, 4) = real(-2.0_ki*mB**2, ki_sam)
   g_mat(4, 5) = real(0.0_ki, ki_sam)
   g_mat(5, 4) = g_mat(4, 5)
   g_mat(4, 6) = real(es671-es67-es71, ki_sam)
   g_mat(6, 4) = g_mat(4, 6)
   g_mat(5, 5) = real(0.0_ki, ki_sam)
   g_mat(5, 6) = real(0.0_ki, ki_sam)
   g_mat(6, 5) = g_mat(5, 6)
   g_mat(6, 6) = real(0.0_ki, ki_sam)
   !-----------#] initialize invariants:

   if(samurai_group_numerators) then
      !------#[ reduce numerator numeval_group19:
      if(samurai_verbosity > 0) then
         write(samurai_out,*) "[golem-2.0] numeval_group19"
         write(samurai_out,*) "[golem-2.0] epspow=", epspow
      end if
      !-----------#[ initialize invariants:
      allocate(s_mat(6, 6))
      s_mat(:,:) = g_mat(:,:)
      !-----------#] initialize invariants:
      call samurai_rm(numeval_group19, tot, totr, Vi, msq, 6, &
         & effective_group_rank, istopm, scale2, ok, &
         & samurai_cache_flag_g19, samurai_cache_g19)
      !-----------#[ deallocate invariants:
      deallocate(s_mat)
      !-----------#] deallocate invariants:

      !------#] reduce numerator numeval_group19:
   else
      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='293'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram293"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(6, 6))
         s_mat(:,:) = g_mat( (/1,2,3,4,5,6/), (/1,2,3,4,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram293, acc, accr, &
            & Vi((/1,2,3,4,5,6/),:), msq((/1,2,3,4,5,6/)), 6, &
            & 4, istopm, scale2, ok, &
            & samurai_cache_flag_d293, samurai_cache_d293)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot =  + acc
         totr =  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='306'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram306"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(5, 5))
         s_mat(:,:) = g_mat( (/1,2,3,4,5/), (/1,2,3,4,5/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram306, acc, accr, &
            & Vi((/1,2,3,4,5/),:), msq((/1,2,3,4,5/)), 5, &
            & 3, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d306, samurai_cache_d306)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='312'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram312"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(5, 5))
         s_mat(:,:) = g_mat( (/2,3,4,5,6/), (/2,3,4,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram312, acc, accr, &
            & Vi((/2,3,4,5,6/),:), msq((/2,3,4,5,6/)), 5, &
            & 3, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d312, samurai_cache_d312)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
      !------#] sum over reduction of single diagrams:
   end if
end subroutine reduce_group19
!-----#] subroutine reduce_group19:
!-----#[ subroutine reduce_group20:
subroutine     reduce_group20(scale2,tot,totr,ok)
   use msamurai, only: samurai, samurai_rm, samurai_cm
   use options, only: samurai_out => iout
   use madds, only: s_mat
   use p5_usbar_epnebbbarg_config, only: samurai_group_numerators, &
      & samurai_verbosity, samurai_istop, samurai_test, &
      & debug_nlo_diagrams, logfile
   use p5_usbar_epnebbbarg_kinematics
   use p5_usbar_epnebbbarg_model
   use p5_usbar_epnebbbarg_d69h3l1, only: numerator_diagram69 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_d96h3l1, only: numerator_diagram96 => numerator_samu&
   &rai
   use p5_usbar_epnebbbarg_d113h3l1, only: numerator_diagram113 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d123h3l1, only: numerator_diagram123 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d297h3l1, only: numerator_diagram297 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d308h3l1, only: numerator_diagram308 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d311h3l1, only: numerator_diagram311 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d319h3l1, only: numerator_diagram319 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_d334h3l1, only: numerator_diagram334 => numerator_sa&
   &murai
   use p5_usbar_epnebbbarg_globalsl1, only: epspow

   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   complex(ki_sam), dimension(-2:0) :: acc
   complex(ki_sam) :: accr
   logical :: acc_ok

   integer :: istopm, istop0

   integer, parameter :: effective_group_rank = 5
   !-----------#[ invariants for samurai:
   complex(ki_sam), dimension(6, 6) :: g_mat
   !-----------#] initialize invariants:
   real(ki_sam), dimension(6) :: msq
   real(ki_sam), dimension(6,4) :: Vi

   if(samurai_test.eq.1 .or. samurai_test.eq.3) then
      istopm = 1
      istop0 = 1
   else
      istopm = samurai_istop
      istop0 = max(2,samurai_istop)
   end if
   msq(1) = 0.0_ki_sam
   Vi(1,:) = real(-k2((/2,3,4,1/)), ki_sam)
   msq(2) = 0.0_ki_sam
   Vi(2,:) = real(0, ki_sam)
   msq(3) = 0.0_ki_sam
   Vi(3,:) = real(-k7((/2,3,4,1/)), ki_sam)
   msq(4) = real(mB*mB, ki_sam)
   Vi(4,:) = real(-k7((/2,3,4,1/))-k6((/2,3,4,1/)), ki_sam)
   msq(5) = 0.0_ki_sam
   Vi(5,:) = real(-k7((/2,3,4,1/))-k6((/2,3,4,1/))-k5((/2,3,4,1/)), ki_sam)
   msq(6) = 0.0_ki_sam
   Vi(6,:) = real(k3((/2,3,4,1/))-k2((/2,3,4,1/))+k4((/2,3,4,1/)), ki_sam)
   !-----------#[ initialize invariants:
   g_mat(1, 1) = real(0.0_ki, ki_sam)
   g_mat(1, 2) = real(0.0_ki, ki_sam)
   g_mat(2, 1) = g_mat(1, 2)
   g_mat(1, 3) = real(-es12-es71+es712, ki_sam)
   g_mat(3, 1) = g_mat(1, 3)
   g_mat(1, 4) = real(-es671+es345+es67-mB**2-es12, ki_sam)
   g_mat(4, 1) = g_mat(1, 4)
   g_mat(1, 5) = real(es34+es567-es234-es12, ki_sam)
   g_mat(5, 1) = g_mat(1, 5)
   g_mat(1, 6) = real(es34, ki_sam)
   g_mat(6, 1) = g_mat(1, 6)
   g_mat(2, 2) = real(0.0_ki, ki_sam)
   g_mat(2, 3) = real(0.0_ki, ki_sam)
   g_mat(3, 2) = g_mat(2, 3)
   g_mat(2, 4) = real(-mB**2+es67, ki_sam)
   g_mat(4, 2) = g_mat(2, 4)
   g_mat(2, 5) = real(es567, ki_sam)
   g_mat(5, 2) = g_mat(2, 5)
   g_mat(2, 6) = real(es234, ki_sam)
   g_mat(6, 2) = g_mat(2, 6)
   g_mat(3, 3) = real(0.0_ki, ki_sam)
   g_mat(3, 4) = real(0.0_ki, ki_sam)
   g_mat(4, 3) = g_mat(3, 4)
   g_mat(3, 5) = real(es56, ki_sam)
   g_mat(5, 3) = g_mat(3, 5)
   g_mat(3, 6) = real(-es567+es56+es234-es71, ki_sam)
   g_mat(6, 3) = g_mat(3, 6)
   g_mat(4, 4) = real(-2.0_ki*mB**2, ki_sam)
   g_mat(4, 5) = real(0.0_ki, ki_sam)
   g_mat(5, 4) = g_mat(4, 5)
   g_mat(4, 6) = real(-es671-es567+es234+es67, ki_sam)
   g_mat(6, 4) = g_mat(4, 6)
   g_mat(5, 5) = real(0.0_ki, ki_sam)
   g_mat(5, 6) = real(0.0_ki, ki_sam)
   g_mat(6, 5) = g_mat(5, 6)
   g_mat(6, 6) = real(0.0_ki, ki_sam)
   !-----------#] initialize invariants:

   if(samurai_group_numerators) then
      !------#[ reduce numerator numeval_group20:
      if(samurai_verbosity > 0) then
         write(samurai_out,*) "[golem-2.0] numeval_group20"
         write(samurai_out,*) "[golem-2.0] epspow=", epspow
      end if
      !-----------#[ initialize invariants:
      allocate(s_mat(6, 6))
      s_mat(:,:) = g_mat(:,:)
      !-----------#] initialize invariants:
      call samurai_rm(numeval_group20, tot, totr, Vi, msq, 6, &
         & effective_group_rank, istopm, scale2, ok, &
         & samurai_cache_flag_g20, samurai_cache_g20)
      !-----------#[ deallocate invariants:
      deallocate(s_mat)
      !-----------#] deallocate invariants:

      !------#] reduce numerator numeval_group20:
   else
      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='69'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram69"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(5, 5))
         s_mat(:,:) = g_mat( (/1,2,3,5,6/), (/1,2,3,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram69, acc, accr, &
            & Vi((/1,2,3,5,6/),:), msq((/1,2,3,5,6/)), 5, &
            & 4, istop0, scale2, ok, &
            & samurai_cache_flag_d69, samurai_cache_d69)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot =  + acc
         totr =  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='96'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram96"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/2,3,5,6/), (/2,3,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram96, acc, accr, &
            & Vi((/2,3,5,6/),:), msq((/2,3,5,6/)), 4, &
            & 3, istop0, scale2, acc_ok, &
            & samurai_cache_flag_d96, samurai_cache_d96)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='113'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram113"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/1,2,3,5/), (/1,2,3,5/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram113, acc, accr, &
            & Vi((/1,2,3,5/),:), msq((/1,2,3,5/)), 4, &
            & 3, istop0, scale2, acc_ok, &
            & samurai_cache_flag_d113, samurai_cache_d113)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='123'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram123"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/1,2,3,6/), (/1,2,3,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram123, acc, accr, &
            & Vi((/1,2,3,6/),:), msq((/1,2,3,6/)), 4, &
            & 3, istop0, scale2, acc_ok, &
            & samurai_cache_flag_d123, samurai_cache_d123)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='297'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram297"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(6, 6))
         s_mat(:,:) = g_mat( (/1,2,3,4,5,6/), (/1,2,3,4,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram297, acc, accr, &
            & Vi((/1,2,3,4,5,6/),:), msq((/1,2,3,4,5,6/)), 6, &
            & 4, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d297, samurai_cache_d297)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='308'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram308"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(5, 5))
         s_mat(:,:) = g_mat( (/1,2,3,4,5/), (/1,2,3,4,5/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram308, acc, accr, &
            & Vi((/1,2,3,4,5/),:), msq((/1,2,3,4,5/)), 5, &
            & 3, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d308, samurai_cache_d308)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='311'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram311"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(5, 5))
         s_mat(:,:) = g_mat( (/2,3,4,5,6/), (/2,3,4,5,6/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram311, acc, accr, &
            & Vi((/2,3,4,5,6/),:), msq((/2,3,4,5,6/)), 5, &
            & 3, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d311, samurai_cache_d311)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='319'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram319"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/2,3,4,5/), (/2,3,4,5/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram319, acc, accr, &
            & Vi((/2,3,4,5/),:), msq((/2,3,4,5/)), 4, &
            & 3, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d319, samurai_cache_d319)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='334'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram334"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(3, 3))
         s_mat(:,:) = g_mat( (/2,3,4/), (/2,3,4/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram334, acc, accr, &
            & Vi((/2,3,4/),:), msq((/2,3,4/)), 3, &
            & 2, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d334, samurai_cache_d334)
         !-----------#[ deallocate invariants:
         deallocate(s_mat)
         !-----------#] deallocate invariants:
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if

         tot = tot  + acc
         totr = totr  + accr
         ok = ok .and. acc_ok
      !------#] sum over reduction of single diagrams:
   end if
end subroutine reduce_group20
!-----#] subroutine reduce_group20:
!---#] reduce groups with samurai:
end module p5_usbar_epnebbbarg_samuraih3
