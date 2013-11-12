module     p0_gg_hepem_samuraih0
   ! This file has been generated for samurai version 2.1.1
   ! Please, not the interface changes:
   ! 2.0 -> 2.1   : mu2 has changed from real to complex.
   ! 2.1 -> 2.1.1 : samurai_cm and samurai_rm have been made public
   !                we call them directly instead of the generic routine
   !                in order to avoid problems with some older versions of
   !                gfortran.
   !              + passing of invariants has been added.
   use precision, only: ki_sam => ki
   use p0_gg_hepem_config, only: ki
   use p0_gg_hepem_scalar_cache
   implicit none
   private
   public :: reduce_group0
   public :: reduce_group1
   public :: reduce_group2
   public :: reduce_group3
   public :: reduce_group4
   public :: reduce_group5
contains
!---#[ grouped numerators for samurai:
!-----#[ function numeval_group0:
function     numeval_group0(icut, Q, mu2) result(num)
   use p0_gg_hepem_kinematics, only: k1, k2, k3, k4, k5
   use p0_gg_hepem_model
   use p0_gg_hepem_d49h0l1, only: numerator_d49 => numerator_samurai
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
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom2 = Q2 - mB*mB
      R = real(-k3, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k2+k5+k4, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 49:
   if(nonzero(0)) then
      num = num + numerator_d49(icut, Q, mu2)
   end if
   !-------#] Diagram 49:
end function numeval_group0
!-----#] function numeval_group0:
!-----#[ function numeval_group1:
function     numeval_group1(icut, Q, mu2) result(num)
   use p0_gg_hepem_kinematics, only: k1, k2, k3, k4, k5
   use p0_gg_hepem_model
   use p0_gg_hepem_d37h0l1, only: numerator_d37 => numerator_samurai
   use p0_gg_hepem_d61h0l1, only: numerator_d61 => numerator_samurai
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
   case(0)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = Q2 - mB*mB
      R = real(-k2, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k3-k5-k4, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
   case(10)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k2, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k3-k5-k4, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
   case(20)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = Q2 - mB*mB
      denom3 = 0.0_ki
      R = real(-k3-k5-k4, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
   case(210)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k3-k5-k4, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
   case(30)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = Q2 - mB*mB
      R = real(-k2, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
   case(310)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k2, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
   case(320)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = Q2 - mB*mB
      denom3 = 0.0_ki
      denom4 = 0.0_ki
   case(3210)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
   case default
      R = real(-k3, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom2 = Q2 - mB*mB
      R = real(-k2, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k3-k5-k4, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 37:
   if(nonzero(0)) then
      num = num + numerator_d37(icut, Q, mu2)
   end if
   !-------#] Diagram 37:
   !-------#[ Diagram 61:
   if(nonzero(1)) then
      num = num + numerator_d61(icut, Q, mu2) * denom1
   end if
   !-------#] Diagram 61:
end function numeval_group1
!-----#] function numeval_group1:
!-----#[ function numeval_group2:
function     numeval_group2(icut, Q, mu2) result(num)
   use p0_gg_hepem_kinematics, only: k1, k2, k3, k4, k5
   use p0_gg_hepem_model
   use p0_gg_hepem_d25h0l1, only: numerator_d25 => numerator_samurai
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
      R = real(-k5-k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k3-k5-k4, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k2, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = Q2 - mB*mB
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 25:
   if(nonzero(0)) then
      num = num + numerator_d25(icut, Q, mu2)
   end if
   !-------#] Diagram 25:
end function numeval_group2
!-----#] function numeval_group2:
!-----#[ function numeval_group3:
function     numeval_group3(icut, Q, mu2) result(num)
   use p0_gg_hepem_kinematics, only: k1, k2, k3, k4, k5
   use p0_gg_hepem_model
   use p0_gg_hepem_d47h0l1, only: numerator_d47 => numerator_samurai
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
      R = real(-k2, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mT*mT
      denom2 = Q2 - mT*mT
      R = real(-k3, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mT*mT
      R = real(-k2+k5+k4, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mT*mT
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 47:
   if(nonzero(0)) then
      num = num + numerator_d47(icut, Q, mu2)
   end if
   !-------#] Diagram 47:
end function numeval_group3
!-----#] function numeval_group3:
!-----#[ function numeval_group4:
function     numeval_group4(icut, Q, mu2) result(num)
   use p0_gg_hepem_kinematics, only: k1, k2, k3, k4, k5
   use p0_gg_hepem_model
   use p0_gg_hepem_d35h0l1, only: numerator_d35 => numerator_samurai
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
      R = real(-k3, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mT*mT
      denom2 = Q2 - mT*mT
      R = real(-k2, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mT*mT
      R = real(-k3-k5-k4, ki_sam)
      denom4 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mT*mT
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 35:
   if(nonzero(0)) then
      num = num + numerator_d35(icut, Q, mu2)
   end if
   !-------#] Diagram 35:
end function numeval_group4
!-----#] function numeval_group4:
!-----#[ function numeval_group5:
function     numeval_group5(icut, Q, mu2) result(num)
   use p0_gg_hepem_kinematics, only: k1, k2, k3, k4, k5
   use p0_gg_hepem_model
   use p0_gg_hepem_d23h0l1, only: numerator_d23 => numerator_samurai
   use p0_gg_hepem_d59h0l1, only: numerator_d59 => numerator_samurai
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
   case(0)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      R = real(-k3-k5-k4, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mT*mT
      R = real(-k2, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mT*mT
      denom4 = Q2 - mT*mT
   case(10)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k2, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mT*mT
      denom4 = Q2 - mT*mT
   case(20)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      R = real(-k3-k5-k4, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mT*mT
      denom3 = 0.0_ki
      denom4 = Q2 - mT*mT
   case(210)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = Q2 - mT*mT
   case(30)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      R = real(-k3-k5-k4, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mT*mT
      R = real(-k2, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mT*mT
      denom4 = 0.0_ki
   case(310)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k2, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mT*mT
      denom4 = 0.0_ki
   case(320)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      R = real(-k3-k5-k4, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mT*mT
      denom3 = 0.0_ki
      denom4 = 0.0_ki
   case(3210)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
   case default
      R = real(-k5-k4, ki_sam)
      denom1 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mT*mT
      R = real(-k3-k5-k4, ki_sam)
      denom2 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mT*mT
      R = real(-k2, ki_sam)
      denom3 = Q2 + (Q(4) + Q(4) + R(0))*R(0) &
                 &    - (Q(1) + Q(1) + R(1))*R(1) &
                 &    - (Q(2) + Q(2) + R(2))*R(2) &
                 &    - (Q(3) + Q(3) + R(3))*R(3)&
                 &    - mT*mT
      denom4 = Q2 - mT*mT
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 23:
   if(nonzero(0)) then
      num = num + numerator_d23(icut, Q, mu2)
   end if
   !-------#] Diagram 23:
   !-------#[ Diagram 59:
   if(nonzero(1)) then
      num = num + numerator_d59(icut, Q, mu2) * denom1
   end if
   !-------#] Diagram 59:
end function numeval_group5
!-----#] function numeval_group5:
!---#] grouped numerators for samurai:
!---#[ reduce groups with samurai:
!-----#[ subroutine reduce_group0:
subroutine     reduce_group0(scale2,tot,totr,ok)
   use msamurai, only: samurai, samurai_rm, samurai_cm
   use options, only: samurai_out => iout
   use madds, only: s_mat
   use p0_gg_hepem_config, only: samurai_group_numerators, &
      & samurai_verbosity, samurai_istop, samurai_test, &
      & debug_nlo_diagrams, logfile
   use p0_gg_hepem_kinematics
   use p0_gg_hepem_model
   use p0_gg_hepem_d49h0l1, only: numerator_diagram49 => numerator_samurai
   use p0_gg_hepem_globalsl1, only: epspow

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
   Vi(1,:) = real(-k2((/2,3,4,1/)), ki_sam)
   msq(2) = real(mB*mB, ki_sam)
   Vi(2,:) = real(0, ki_sam)
   msq(3) = real(mB*mB, ki_sam)
   Vi(3,:) = real(-k3((/2,3,4,1/)), ki_sam)
   msq(4) = real(mB*mB, ki_sam)
   Vi(4,:) = real(-k2((/2,3,4,1/))+k5((/2,3,4,1/))+k4((/2,3,4,1/)), ki_sam)
   !-----------#[ initialize invariants:
   g_mat(1, 1) = real(-2.0_ki*mB**2, ki_sam)
   g_mat(1, 2) = real(-2.0_ki*mB**2, ki_sam)
   g_mat(2, 1) = g_mat(1, 2)
   g_mat(1, 3) = real(-2.0_ki*mB**2+es23, ki_sam)
   g_mat(3, 1) = g_mat(1, 3)
   g_mat(1, 4) = real(-2.0_ki*mB**2+es45, ki_sam)
   g_mat(4, 1) = g_mat(1, 4)
   g_mat(2, 2) = real(-2.0_ki*mB**2, ki_sam)
   g_mat(2, 3) = real(-2.0_ki*mB**2+mH**2, ki_sam)
   g_mat(3, 2) = g_mat(2, 3)
   g_mat(2, 4) = real(mH**2+es45-2.0_ki*mB**2-es12-es23, ki_sam)
   g_mat(4, 2) = g_mat(2, 4)
   g_mat(3, 3) = real(-2.0_ki*mB**2, ki_sam)
   g_mat(3, 4) = real(-2.0_ki*mB**2, ki_sam)
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
            write(logfile,*) "<diagram index='49'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram49"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/1,2,3,4/), (/1,2,3,4/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram49, acc, accr, &
            & Vi((/1,2,3,4/),:), msq((/1,2,3,4/)), 4, &
            & 4, istopm, scale2, ok, &
            & samurai_cache_flag_d49, samurai_cache_d49)
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
      !------#] sum over reduction of single diagrams:
   end if
end subroutine reduce_group0
!-----#] subroutine reduce_group0:
!-----#[ subroutine reduce_group1:
subroutine     reduce_group1(scale2,tot,totr,ok)
   use msamurai, only: samurai, samurai_rm, samurai_cm
   use options, only: samurai_out => iout
   use madds, only: s_mat
   use p0_gg_hepem_config, only: samurai_group_numerators, &
      & samurai_verbosity, samurai_istop, samurai_test, &
      & debug_nlo_diagrams, logfile
   use p0_gg_hepem_kinematics
   use p0_gg_hepem_model
   use p0_gg_hepem_d37h0l1, only: numerator_diagram37 => numerator_samurai
   use p0_gg_hepem_d61h0l1, only: numerator_diagram61 => numerator_samurai
   use p0_gg_hepem_globalsl1, only: epspow

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
   Vi(1,:) = real(-k3((/2,3,4,1/)), ki_sam)
   msq(2) = real(mB*mB, ki_sam)
   Vi(2,:) = real(0, ki_sam)
   msq(3) = real(mB*mB, ki_sam)
   Vi(3,:) = real(-k2((/2,3,4,1/)), ki_sam)
   msq(4) = real(mB*mB, ki_sam)
   Vi(4,:) = real(-k3((/2,3,4,1/))-k5((/2,3,4,1/))-k4((/2,3,4,1/)), ki_sam)
   !-----------#[ initialize invariants:
   g_mat(1, 1) = real(-2.0_ki*mB**2, ki_sam)
   g_mat(1, 2) = real(-2.0_ki*mB**2+mH**2, ki_sam)
   g_mat(2, 1) = g_mat(1, 2)
   g_mat(1, 3) = real(-2.0_ki*mB**2+es23, ki_sam)
   g_mat(3, 1) = g_mat(1, 3)
   g_mat(1, 4) = real(-2.0_ki*mB**2+es45, ki_sam)
   g_mat(4, 1) = g_mat(1, 4)
   g_mat(2, 2) = real(-2.0_ki*mB**2, ki_sam)
   g_mat(2, 3) = real(-2.0_ki*mB**2, ki_sam)
   g_mat(3, 2) = g_mat(2, 3)
   g_mat(2, 4) = real(-2.0_ki*mB**2+es12, ki_sam)
   g_mat(4, 2) = g_mat(2, 4)
   g_mat(3, 3) = real(-2.0_ki*mB**2, ki_sam)
   g_mat(3, 4) = real(-2.0_ki*mB**2, ki_sam)
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
            write(logfile,*) "<diagram index='37'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram37"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/1,2,3,4/), (/1,2,3,4/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram37, acc, accr, &
            & Vi((/1,2,3,4/),:), msq((/1,2,3,4/)), 4, &
            & 4, istopm, scale2, ok, &
            & samurai_cache_flag_d37, samurai_cache_d37)
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
            write(logfile,*) "<diagram index='61'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram61"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(3, 3))
         s_mat(:,:) = g_mat( (/2,3,4/), (/2,3,4/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram61, acc, accr, &
            & Vi((/2,3,4/),:), msq((/2,3,4/)), 3, &
            & 3, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d61, samurai_cache_d61)
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
      !------#] sum over reduction of single diagrams:
   end if
end subroutine reduce_group1
!-----#] subroutine reduce_group1:
!-----#[ subroutine reduce_group2:
subroutine     reduce_group2(scale2,tot,totr,ok)
   use msamurai, only: samurai, samurai_rm, samurai_cm
   use options, only: samurai_out => iout
   use madds, only: s_mat
   use p0_gg_hepem_config, only: samurai_group_numerators, &
      & samurai_verbosity, samurai_istop, samurai_test, &
      & debug_nlo_diagrams, logfile
   use p0_gg_hepem_kinematics
   use p0_gg_hepem_model
   use p0_gg_hepem_d25h0l1, only: numerator_diagram25 => numerator_samurai
   use p0_gg_hepem_globalsl1, only: epspow

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
   Vi(1,:) = real(-k5((/2,3,4,1/))-k4((/2,3,4,1/)), ki_sam)
   msq(2) = real(mB*mB, ki_sam)
   Vi(2,:) = real(-k3((/2,3,4,1/))-k5((/2,3,4,1/))-k4((/2,3,4,1/)), ki_sam)
   msq(3) = real(mB*mB, ki_sam)
   Vi(3,:) = real(-k2((/2,3,4,1/)), ki_sam)
   msq(4) = real(mB*mB, ki_sam)
   Vi(4,:) = real(0, ki_sam)
   !-----------#[ initialize invariants:
   g_mat(1, 1) = real(-2.0_ki*mB**2, ki_sam)
   g_mat(1, 2) = real(-2.0_ki*mB**2+mH**2, ki_sam)
   g_mat(2, 1) = g_mat(1, 2)
   g_mat(1, 3) = real(mH**2+es45-2.0_ki*mB**2-es12-es23, ki_sam)
   g_mat(3, 1) = g_mat(1, 3)
   g_mat(1, 4) = real(-2.0_ki*mB**2+es45, ki_sam)
   g_mat(4, 1) = g_mat(1, 4)
   g_mat(2, 2) = real(-2.0_ki*mB**2, ki_sam)
   g_mat(2, 3) = real(-2.0_ki*mB**2, ki_sam)
   g_mat(3, 2) = g_mat(2, 3)
   g_mat(2, 4) = real(-2.0_ki*mB**2+es12, ki_sam)
   g_mat(4, 2) = g_mat(2, 4)
   g_mat(3, 3) = real(-2.0_ki*mB**2, ki_sam)
   g_mat(3, 4) = real(-2.0_ki*mB**2, ki_sam)
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
            write(logfile,*) "<diagram index='25'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram25"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/1,2,3,4/), (/1,2,3,4/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram25, acc, accr, &
            & Vi((/1,2,3,4/),:), msq((/1,2,3,4/)), 4, &
            & 4, istopm, scale2, ok, &
            & samurai_cache_flag_d25, samurai_cache_d25)
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
      !------#] sum over reduction of single diagrams:
   end if
end subroutine reduce_group2
!-----#] subroutine reduce_group2:
!-----#[ subroutine reduce_group3:
subroutine     reduce_group3(scale2,tot,totr,ok)
   use msamurai, only: samurai, samurai_rm, samurai_cm
   use options, only: samurai_out => iout
   use madds, only: s_mat
   use p0_gg_hepem_config, only: samurai_group_numerators, &
      & samurai_verbosity, samurai_istop, samurai_test, &
      & debug_nlo_diagrams, logfile
   use p0_gg_hepem_kinematics
   use p0_gg_hepem_model
   use p0_gg_hepem_d47h0l1, only: numerator_diagram47 => numerator_samurai
   use p0_gg_hepem_globalsl1, only: epspow

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
   msq(1) = real(mT*mT, ki_sam)
   Vi(1,:) = real(-k2((/2,3,4,1/)), ki_sam)
   msq(2) = real(mT*mT, ki_sam)
   Vi(2,:) = real(0, ki_sam)
   msq(3) = real(mT*mT, ki_sam)
   Vi(3,:) = real(-k3((/2,3,4,1/)), ki_sam)
   msq(4) = real(mT*mT, ki_sam)
   Vi(4,:) = real(-k2((/2,3,4,1/))+k5((/2,3,4,1/))+k4((/2,3,4,1/)), ki_sam)
   !-----------#[ initialize invariants:
   g_mat(1, 1) = real(-2.0_ki*mT**2, ki_sam)
   g_mat(1, 2) = real(-2.0_ki*mT**2, ki_sam)
   g_mat(2, 1) = g_mat(1, 2)
   g_mat(1, 3) = real(es23-2.0_ki*mT**2, ki_sam)
   g_mat(3, 1) = g_mat(1, 3)
   g_mat(1, 4) = real(es45-2.0_ki*mT**2, ki_sam)
   g_mat(4, 1) = g_mat(1, 4)
   g_mat(2, 2) = real(-2.0_ki*mT**2, ki_sam)
   g_mat(2, 3) = real(mH**2-2.0_ki*mT**2, ki_sam)
   g_mat(3, 2) = g_mat(2, 3)
   g_mat(2, 4) = real(mH**2-2.0_ki*mT**2+es45-es12-es23, ki_sam)
   g_mat(4, 2) = g_mat(2, 4)
   g_mat(3, 3) = real(-2.0_ki*mT**2, ki_sam)
   g_mat(3, 4) = real(-2.0_ki*mT**2, ki_sam)
   g_mat(4, 3) = g_mat(3, 4)
   g_mat(4, 4) = real(-2.0_ki*mT**2, ki_sam)
   !-----------#] initialize invariants:

   if(samurai_group_numerators) then
      !------#[ reduce numerator numeval_group3:
      if(samurai_verbosity > 0) then
         write(samurai_out,*) "[golem-2.0] numeval_group3"
         write(samurai_out,*) "[golem-2.0] epspow=", epspow
      end if
      !-----------#[ initialize invariants:
      allocate(s_mat(4, 4))
      s_mat(:,:) = g_mat(:,:)
      !-----------#] initialize invariants:
      call samurai_rm(numeval_group3, tot, totr, Vi, msq, 4, &
         & effective_group_rank, istopm, scale2, ok, &
         & samurai_cache_flag_g3, samurai_cache_g3)
      !-----------#[ deallocate invariants:
      deallocate(s_mat)
      !-----------#] deallocate invariants:

      !------#] reduce numerator numeval_group3:
   else
      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='47'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram47"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/1,2,3,4/), (/1,2,3,4/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram47, acc, accr, &
            & Vi((/1,2,3,4/),:), msq((/1,2,3,4/)), 4, &
            & 4, istopm, scale2, ok, &
            & samurai_cache_flag_d47, samurai_cache_d47)
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
      !------#] sum over reduction of single diagrams:
   end if
end subroutine reduce_group3
!-----#] subroutine reduce_group3:
!-----#[ subroutine reduce_group4:
subroutine     reduce_group4(scale2,tot,totr,ok)
   use msamurai, only: samurai, samurai_rm, samurai_cm
   use options, only: samurai_out => iout
   use madds, only: s_mat
   use p0_gg_hepem_config, only: samurai_group_numerators, &
      & samurai_verbosity, samurai_istop, samurai_test, &
      & debug_nlo_diagrams, logfile
   use p0_gg_hepem_kinematics
   use p0_gg_hepem_model
   use p0_gg_hepem_d35h0l1, only: numerator_diagram35 => numerator_samurai
   use p0_gg_hepem_globalsl1, only: epspow

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
   msq(1) = real(mT*mT, ki_sam)
   Vi(1,:) = real(-k3((/2,3,4,1/)), ki_sam)
   msq(2) = real(mT*mT, ki_sam)
   Vi(2,:) = real(0, ki_sam)
   msq(3) = real(mT*mT, ki_sam)
   Vi(3,:) = real(-k2((/2,3,4,1/)), ki_sam)
   msq(4) = real(mT*mT, ki_sam)
   Vi(4,:) = real(-k3((/2,3,4,1/))-k5((/2,3,4,1/))-k4((/2,3,4,1/)), ki_sam)
   !-----------#[ initialize invariants:
   g_mat(1, 1) = real(-2.0_ki*mT**2, ki_sam)
   g_mat(1, 2) = real(mH**2-2.0_ki*mT**2, ki_sam)
   g_mat(2, 1) = g_mat(1, 2)
   g_mat(1, 3) = real(es23-2.0_ki*mT**2, ki_sam)
   g_mat(3, 1) = g_mat(1, 3)
   g_mat(1, 4) = real(es45-2.0_ki*mT**2, ki_sam)
   g_mat(4, 1) = g_mat(1, 4)
   g_mat(2, 2) = real(-2.0_ki*mT**2, ki_sam)
   g_mat(2, 3) = real(-2.0_ki*mT**2, ki_sam)
   g_mat(3, 2) = g_mat(2, 3)
   g_mat(2, 4) = real(es12-2.0_ki*mT**2, ki_sam)
   g_mat(4, 2) = g_mat(2, 4)
   g_mat(3, 3) = real(-2.0_ki*mT**2, ki_sam)
   g_mat(3, 4) = real(-2.0_ki*mT**2, ki_sam)
   g_mat(4, 3) = g_mat(3, 4)
   g_mat(4, 4) = real(-2.0_ki*mT**2, ki_sam)
   !-----------#] initialize invariants:

   if(samurai_group_numerators) then
      !------#[ reduce numerator numeval_group4:
      if(samurai_verbosity > 0) then
         write(samurai_out,*) "[golem-2.0] numeval_group4"
         write(samurai_out,*) "[golem-2.0] epspow=", epspow
      end if
      !-----------#[ initialize invariants:
      allocate(s_mat(4, 4))
      s_mat(:,:) = g_mat(:,:)
      !-----------#] initialize invariants:
      call samurai_rm(numeval_group4, tot, totr, Vi, msq, 4, &
         & effective_group_rank, istopm, scale2, ok, &
         & samurai_cache_flag_g4, samurai_cache_g4)
      !-----------#[ deallocate invariants:
      deallocate(s_mat)
      !-----------#] deallocate invariants:

      !------#] reduce numerator numeval_group4:
   else
      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='35'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram35"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/1,2,3,4/), (/1,2,3,4/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram35, acc, accr, &
            & Vi((/1,2,3,4/),:), msq((/1,2,3,4/)), 4, &
            & 4, istopm, scale2, ok, &
            & samurai_cache_flag_d35, samurai_cache_d35)
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
      !------#] sum over reduction of single diagrams:
   end if
end subroutine reduce_group4
!-----#] subroutine reduce_group4:
!-----#[ subroutine reduce_group5:
subroutine     reduce_group5(scale2,tot,totr,ok)
   use msamurai, only: samurai, samurai_rm, samurai_cm
   use options, only: samurai_out => iout
   use madds, only: s_mat
   use p0_gg_hepem_config, only: samurai_group_numerators, &
      & samurai_verbosity, samurai_istop, samurai_test, &
      & debug_nlo_diagrams, logfile
   use p0_gg_hepem_kinematics
   use p0_gg_hepem_model
   use p0_gg_hepem_d23h0l1, only: numerator_diagram23 => numerator_samurai
   use p0_gg_hepem_d59h0l1, only: numerator_diagram59 => numerator_samurai
   use p0_gg_hepem_globalsl1, only: epspow

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
   msq(1) = real(mT*mT, ki_sam)
   Vi(1,:) = real(-k5((/2,3,4,1/))-k4((/2,3,4,1/)), ki_sam)
   msq(2) = real(mT*mT, ki_sam)
   Vi(2,:) = real(-k3((/2,3,4,1/))-k5((/2,3,4,1/))-k4((/2,3,4,1/)), ki_sam)
   msq(3) = real(mT*mT, ki_sam)
   Vi(3,:) = real(-k2((/2,3,4,1/)), ki_sam)
   msq(4) = real(mT*mT, ki_sam)
   Vi(4,:) = real(0, ki_sam)
   !-----------#[ initialize invariants:
   g_mat(1, 1) = real(-2.0_ki*mT**2, ki_sam)
   g_mat(1, 2) = real(mH**2-2.0_ki*mT**2, ki_sam)
   g_mat(2, 1) = g_mat(1, 2)
   g_mat(1, 3) = real(mH**2-2.0_ki*mT**2+es45-es12-es23, ki_sam)
   g_mat(3, 1) = g_mat(1, 3)
   g_mat(1, 4) = real(es45-2.0_ki*mT**2, ki_sam)
   g_mat(4, 1) = g_mat(1, 4)
   g_mat(2, 2) = real(-2.0_ki*mT**2, ki_sam)
   g_mat(2, 3) = real(-2.0_ki*mT**2, ki_sam)
   g_mat(3, 2) = g_mat(2, 3)
   g_mat(2, 4) = real(es12-2.0_ki*mT**2, ki_sam)
   g_mat(4, 2) = g_mat(2, 4)
   g_mat(3, 3) = real(-2.0_ki*mT**2, ki_sam)
   g_mat(3, 4) = real(-2.0_ki*mT**2, ki_sam)
   g_mat(4, 3) = g_mat(3, 4)
   g_mat(4, 4) = real(-2.0_ki*mT**2, ki_sam)
   !-----------#] initialize invariants:

   if(samurai_group_numerators) then
      !------#[ reduce numerator numeval_group5:
      if(samurai_verbosity > 0) then
         write(samurai_out,*) "[golem-2.0] numeval_group5"
         write(samurai_out,*) "[golem-2.0] epspow=", epspow
      end if
      !-----------#[ initialize invariants:
      allocate(s_mat(4, 4))
      s_mat(:,:) = g_mat(:,:)
      !-----------#] initialize invariants:
      call samurai_rm(numeval_group5, tot, totr, Vi, msq, 4, &
         & effective_group_rank, istopm, scale2, ok, &
         & samurai_cache_flag_g5, samurai_cache_g5)
      !-----------#[ deallocate invariants:
      deallocate(s_mat)
      !-----------#] deallocate invariants:

      !------#] reduce numerator numeval_group5:
   else
      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='23'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram23"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(4, 4))
         s_mat(:,:) = g_mat( (/1,2,3,4/), (/1,2,3,4/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram23, acc, accr, &
            & Vi((/1,2,3,4/),:), msq((/1,2,3,4/)), 4, &
            & 4, istopm, scale2, ok, &
            & samurai_cache_flag_d23, samurai_cache_d23)
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
            write(logfile,*) "<diagram index='59'>"
         end if
         if(samurai_verbosity > 0) then
            write(samurai_out,*) "[golem-2.0] numerator_diagram59"
            write(samurai_out,*) "[golem-2.0] epspow=", epspow
         end if
         !-----------#[ initialize invariants:
         allocate(s_mat(3, 3))
         s_mat(:,:) = g_mat( (/2,3,4/), (/2,3,4/) )
         !-----------#] initialize invariants:
         call samurai_rm(numerator_diagram59, acc, accr, &
            & Vi((/2,3,4/),:), msq((/2,3,4/)), 3, &
            & 3, istopm, scale2, acc_ok, &
            & samurai_cache_flag_d59, samurai_cache_d59)
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
      !------#] sum over reduction of single diagrams:
   end if
end subroutine reduce_group5
!-----#] subroutine reduce_group5:
!---#] reduce groups with samurai:
end module p0_gg_hepem_samuraih0
