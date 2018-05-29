module     p4_ubaru_epnemumnmubarg_d595h5l132
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p4_ubaru_epnemumnmubarg/helicity5d595h5l132.f90
   ! generator: buildfortran_tn3.py
   use p4_ubaru_epnemumnmubarg_config, only: ki
   use p4_ubaru_epnemumnmubarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt1x0mu0 = 0
   integer, parameter :: ninjaidxt0x0mu0 = 1
   integer, parameter :: ninjaidxt0x1mu0 = 2
   public :: numerator_t2
contains
!---#[ subroutine brack_21:
   pure subroutine brack_21(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd595h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(19) :: acd595
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd595(1)=dotproduct(k2,ninjaE3)
      acd595(2)=dotproduct(ninjaE3,spvak5k6)
      acd595(3)=dotproduct(ninjaE3,spvak7k2)
      acd595(4)=abb595(17)
      acd595(5)=dotproduct(k3,ninjaE3)
      acd595(6)=dotproduct(k4,ninjaE3)
      acd595(7)=dotproduct(ninjaE3,spvak4k2)
      acd595(8)=abb595(15)
      acd595(9)=dotproduct(ninjaE3,spvak4k3)
      acd595(10)=abb595(16)
      acd595(11)=dotproduct(ninjaE3,spvak1k3)
      acd595(12)=abb595(22)
      acd595(13)=dotproduct(ninjaE3,spvak1k2)
      acd595(14)=abb595(23)
      acd595(15)=acd595(6)-acd595(1)+acd595(5)
      acd595(15)=acd595(4)*acd595(15)
      acd595(16)=acd595(8)*acd595(7)
      acd595(17)=acd595(10)*acd595(9)
      acd595(18)=acd595(12)*acd595(11)
      acd595(19)=acd595(14)*acd595(13)
      acd595(15)=acd595(19)+acd595(18)+acd595(17)+acd595(16)+acd595(15)
      acd595(15)=acd595(15)*acd595(3)*acd595(2)
      brack(ninjaidxt1x0mu0)=acd595(15)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd595h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(74) :: acd595
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd595(1)=dotproduct(k2,ninjaA1)
      acd595(2)=dotproduct(ninjaE3,spvak5k6)
      acd595(3)=dotproduct(ninjaE3,spvak7k2)
      acd595(4)=abb595(17)
      acd595(5)=dotproduct(k2,ninjaE3)
      acd595(6)=dotproduct(ninjaA1,spvak5k6)
      acd595(7)=dotproduct(ninjaA1,spvak7k2)
      acd595(8)=dotproduct(k3,ninjaA1)
      acd595(9)=dotproduct(k3,ninjaE3)
      acd595(10)=dotproduct(k4,ninjaA1)
      acd595(11)=dotproduct(k4,ninjaE3)
      acd595(12)=dotproduct(ninjaA1,spvak4k2)
      acd595(13)=abb595(15)
      acd595(14)=dotproduct(ninjaE3,spvak4k2)
      acd595(15)=dotproduct(ninjaE3,spvak4k3)
      acd595(16)=abb595(16)
      acd595(17)=dotproduct(ninjaE3,spvak1k3)
      acd595(18)=abb595(22)
      acd595(19)=dotproduct(ninjaE3,spvak1k2)
      acd595(20)=abb595(23)
      acd595(21)=dotproduct(ninjaA1,spvak4k3)
      acd595(22)=dotproduct(ninjaA1,spvak1k3)
      acd595(23)=dotproduct(ninjaA1,spvak1k2)
      acd595(24)=dotproduct(k1,ninjaE3)
      acd595(25)=abb595(41)
      acd595(26)=abb595(27)
      acd595(27)=abb595(55)
      acd595(28)=abb595(51)
      acd595(29)=dotproduct(k2,ninjaA0)
      acd595(30)=dotproduct(k5,ninjaE3)
      acd595(31)=abb595(39)
      acd595(32)=dotproduct(k6,ninjaE3)
      acd595(33)=dotproduct(ninjaA0,ninjaE3)
      acd595(34)=abb595(13)
      acd595(35)=dotproduct(ninjaA0,spvak5k6)
      acd595(36)=dotproduct(ninjaA0,spvak7k2)
      acd595(37)=abb595(14)
      acd595(38)=abb595(50)
      acd595(39)=dotproduct(k3,ninjaA0)
      acd595(40)=dotproduct(k4,ninjaA0)
      acd595(41)=abb595(25)
      acd595(42)=abb595(40)
      acd595(43)=abb595(45)
      acd595(44)=dotproduct(k7,ninjaE3)
      acd595(45)=abb595(11)
      acd595(46)=abb595(26)
      acd595(47)=abb595(19)
      acd595(48)=abb595(54)
      acd595(49)=abb595(43)
      acd595(50)=dotproduct(ninjaA0,spvak4k2)
      acd595(51)=dotproduct(ninjaA0,spvak4k3)
      acd595(52)=dotproduct(ninjaA0,spvak1k3)
      acd595(53)=dotproduct(ninjaA0,spvak1k2)
      acd595(54)=abb595(8)
      acd595(55)=abb595(20)
      acd595(56)=abb595(9)
      acd595(57)=abb595(10)
      acd595(58)=abb595(56)
      acd595(59)=dotproduct(ninjaE3,spvak1k6)
      acd595(60)=abb595(18)
      acd595(61)=acd595(20)*acd595(23)
      acd595(62)=acd595(18)*acd595(22)
      acd595(63)=acd595(16)*acd595(21)
      acd595(64)=acd595(13)*acd595(12)
      acd595(65)=-acd595(1)+acd595(10)+acd595(8)
      acd595(65)=acd595(4)*acd595(65)
      acd595(61)=acd595(65)+acd595(64)+acd595(63)+acd595(61)+acd595(62)
      acd595(61)=acd595(2)*acd595(61)
      acd595(62)=acd595(20)*acd595(19)
      acd595(63)=acd595(18)*acd595(17)
      acd595(62)=acd595(62)+acd595(63)
      acd595(63)=-acd595(11)+acd595(5)-acd595(9)
      acd595(64)=acd595(63)*acd595(4)
      acd595(65)=acd595(15)*acd595(16)
      acd595(66)=acd595(14)*acd595(13)
      acd595(65)=acd595(64)-acd595(62)-acd595(65)-acd595(66)
      acd595(66)=-acd595(6)*acd595(65)
      acd595(61)=acd595(61)+acd595(66)
      acd595(61)=acd595(3)*acd595(61)
      acd595(65)=-acd595(2)*acd595(7)*acd595(65)
      acd595(61)=acd595(65)+acd595(61)
      acd595(65)=acd595(20)*acd595(53)
      acd595(66)=acd595(18)*acd595(52)
      acd595(67)=acd595(16)*acd595(51)
      acd595(68)=acd595(13)*acd595(50)
      acd595(69)=-acd595(29)+acd595(40)+acd595(39)
      acd595(69)=acd595(4)*acd595(69)
      acd595(65)=acd595(69)+acd595(68)+acd595(67)+acd595(66)+acd595(57)+acd595(&
      &65)
      acd595(65)=acd595(2)*acd595(65)
      acd595(62)=acd595(64)-acd595(62)
      acd595(64)=-acd595(35)*acd595(62)
      acd595(66)=acd595(30)+acd595(32)
      acd595(67)=acd595(43)*acd595(66)
      acd595(68)=acd595(38)*acd595(63)
      acd595(69)=acd595(59)*acd595(60)
      acd595(70)=acd595(24)*acd595(28)
      acd595(71)=2.0_ki*acd595(33)
      acd595(72)=acd595(49)*acd595(71)
      acd595(73)=acd595(35)*acd595(16)
      acd595(73)=acd595(58)+acd595(73)
      acd595(73)=acd595(15)*acd595(73)
      acd595(74)=acd595(35)*acd595(13)
      acd595(74)=acd595(55)+acd595(74)
      acd595(74)=acd595(14)*acd595(74)
      acd595(64)=acd595(65)+acd595(74)+acd595(73)+acd595(72)+acd595(70)+acd595(&
      &69)+acd595(68)+acd595(67)+acd595(64)
      acd595(64)=acd595(3)*acd595(64)
      acd595(62)=-acd595(36)*acd595(62)
      acd595(65)=-acd595(37)*acd595(63)
      acd595(67)=acd595(44)*acd595(45)
      acd595(68)=acd595(47)*acd595(71)
      acd595(69)=acd595(36)*acd595(16)
      acd595(69)=acd595(56)+acd595(69)
      acd595(69)=acd595(15)*acd595(69)
      acd595(70)=acd595(36)*acd595(13)
      acd595(70)=acd595(54)+acd595(70)
      acd595(70)=acd595(14)*acd595(70)
      acd595(62)=acd595(70)+acd595(69)+acd595(68)+acd595(67)+acd595(65)+acd595(&
      &62)
      acd595(62)=acd595(2)*acd595(62)
      acd595(65)=acd595(31)*acd595(66)
      acd595(67)=acd595(71)*acd595(34)
      acd595(68)=acd595(24)*acd595(25)
      acd595(65)=acd595(68)+acd595(65)-acd595(67)
      acd595(63)=acd595(65)*acd595(63)
      acd595(65)=acd595(42)*acd595(66)
      acd595(67)=acd595(24)*acd595(27)
      acd595(68)=acd595(48)*acd595(71)
      acd595(65)=acd595(68)+acd595(67)+acd595(65)
      acd595(65)=acd595(15)*acd595(65)
      acd595(66)=-acd595(41)*acd595(66)
      acd595(67)=acd595(24)*acd595(26)
      acd595(68)=acd595(46)*acd595(71)
      acd595(66)=acd595(68)+acd595(67)+acd595(66)
      acd595(66)=acd595(14)*acd595(66)
      acd595(62)=acd595(64)+acd595(62)+acd595(65)+acd595(66)+acd595(63)
      brack(ninjaidxt0x0mu0)=acd595(62)
      brack(ninjaidxt0x1mu0)=acd595(61)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p4_ubaru_epnemumnmubarg_d595h5_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd595h5
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k7
	     vecA0(1:4) = - a0(0:3) - qshift(1:4)
	     vecA1(1:4) = - a1(0:3)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_21,vecA0,vecA1,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p4_ubaru_epnemumnmubarg_d595h5l132
