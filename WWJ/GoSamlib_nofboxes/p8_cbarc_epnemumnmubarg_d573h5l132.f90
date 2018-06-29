module     p8_cbarc_epnemumnmubarg_d573h5l132
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p8_cbarc_epnemumnmubarg/helicity5d573h5l132.f90
   ! generator: buildfortran_tn3.py
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_util, only: cond_t, d => metric_tensor
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
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd573h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(20) :: acd573
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd573(1)=dotproduct(k3,ninjaE3)
      acd573(2)=dotproduct(ninjaE3,spvak1k2)
      acd573(3)=dotproduct(ninjaE3,spvak7k2)
      acd573(4)=abb573(31)
      acd573(5)=dotproduct(k4,ninjaE3)
      acd573(6)=dotproduct(k5,ninjaE3)
      acd573(7)=dotproduct(k6,ninjaE3)
      acd573(8)=dotproduct(ninjaE3,spvak4k6)
      acd573(9)=abb573(12)
      acd573(10)=dotproduct(ninjaE3,spvak5k6)
      acd573(11)=abb573(16)
      acd573(12)=dotproduct(ninjaE3,spvak4k3)
      acd573(13)=abb573(17)
      acd573(14)=dotproduct(ninjaE3,spvak5k3)
      acd573(15)=abb573(24)
      acd573(16)=-acd573(7)-acd573(6)+acd573(1)+acd573(5)
      acd573(16)=acd573(4)*acd573(16)
      acd573(17)=acd573(9)*acd573(8)
      acd573(18)=acd573(11)*acd573(10)
      acd573(19)=acd573(13)*acd573(12)
      acd573(20)=acd573(15)*acd573(14)
      acd573(16)=acd573(20)+acd573(19)+acd573(18)+acd573(17)+acd573(16)
      acd573(16)=acd573(16)*acd573(3)*acd573(2)
      brack(ninjaidxt1x0mu0)=acd573(16)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd573h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(83) :: acd573
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd573(1)=dotproduct(k3,ninjaA1)
      acd573(2)=dotproduct(ninjaE3,spvak7k2)
      acd573(3)=dotproduct(ninjaE3,spvak1k2)
      acd573(4)=abb573(31)
      acd573(5)=dotproduct(k3,ninjaE3)
      acd573(6)=dotproduct(ninjaA1,spvak7k2)
      acd573(7)=dotproduct(ninjaA1,spvak1k2)
      acd573(8)=dotproduct(k4,ninjaA1)
      acd573(9)=dotproduct(k4,ninjaE3)
      acd573(10)=dotproduct(k5,ninjaA1)
      acd573(11)=dotproduct(k5,ninjaE3)
      acd573(12)=dotproduct(k6,ninjaA1)
      acd573(13)=dotproduct(k6,ninjaE3)
      acd573(14)=dotproduct(ninjaE3,spvak4k6)
      acd573(15)=abb573(12)
      acd573(16)=dotproduct(ninjaE3,spvak5k6)
      acd573(17)=abb573(16)
      acd573(18)=dotproduct(ninjaE3,spvak4k3)
      acd573(19)=abb573(17)
      acd573(20)=dotproduct(ninjaE3,spvak5k3)
      acd573(21)=abb573(24)
      acd573(22)=dotproduct(ninjaA1,spvak4k6)
      acd573(23)=dotproduct(ninjaA1,spvak5k6)
      acd573(24)=dotproduct(ninjaA1,spvak4k3)
      acd573(25)=dotproduct(ninjaA1,spvak5k3)
      acd573(26)=dotproduct(k1,ninjaE3)
      acd573(27)=abb573(42)
      acd573(28)=dotproduct(k2,ninjaE3)
      acd573(29)=dotproduct(ninjaE3,spvak3k2)
      acd573(30)=abb573(20)
      acd573(31)=dotproduct(ninjaE3,spvak4k2)
      acd573(32)=abb573(28)
      acd573(33)=dotproduct(ninjaE3,spvak5k2)
      acd573(34)=abb573(38)
      acd573(35)=dotproduct(ninjaE3,spvak6k2)
      acd573(36)=abb573(99)
      acd573(37)=dotproduct(k3,ninjaA0)
      acd573(38)=dotproduct(ninjaA0,spvak7k2)
      acd573(39)=dotproduct(ninjaA0,spvak1k2)
      acd573(40)=dotproduct(k4,ninjaA0)
      acd573(41)=dotproduct(k5,ninjaA0)
      acd573(42)=dotproduct(k6,ninjaA0)
      acd573(43)=dotproduct(k7,ninjaE3)
      acd573(44)=dotproduct(ninjaA0,ninjaE3)
      acd573(45)=abb573(21)
      acd573(46)=abb573(29)
      acd573(47)=abb573(22)
      acd573(48)=abb573(36)
      acd573(49)=abb573(34)
      acd573(50)=dotproduct(ninjaA0,spvak4k6)
      acd573(51)=dotproduct(ninjaA0,spvak5k6)
      acd573(52)=dotproduct(ninjaA0,spvak4k3)
      acd573(53)=dotproduct(ninjaA0,spvak5k3)
      acd573(54)=dotproduct(ninjaE3,spvak1k6)
      acd573(55)=abb573(11)
      acd573(56)=abb573(58)
      acd573(57)=abb573(26)
      acd573(58)=dotproduct(ninjaE3,spvak1k3)
      acd573(59)=abb573(13)
      acd573(60)=abb573(18)
      acd573(61)=abb573(19)
      acd573(62)=abb573(27)
      acd573(63)=dotproduct(ninjaE3,spvak1k4)
      acd573(64)=abb573(33)
      acd573(65)=abb573(95)
      acd573(66)=dotproduct(ninjaE3,spvak1k5)
      acd573(67)=abb573(35)
      acd573(68)=-acd573(5)-acd573(9)+acd573(11)+acd573(13)
      acd573(68)=acd573(68)*acd573(4)
      acd573(69)=acd573(21)*acd573(20)
      acd573(70)=acd573(19)*acd573(18)
      acd573(71)=acd573(17)*acd573(16)
      acd573(72)=acd573(15)*acd573(14)
      acd573(68)=-acd573(68)+acd573(69)+acd573(70)+acd573(71)+acd573(72)
      acd573(69)=acd573(7)*acd573(68)
      acd573(70)=acd573(21)*acd573(25)
      acd573(71)=acd573(19)*acd573(24)
      acd573(72)=acd573(17)*acd573(23)
      acd573(73)=acd573(15)*acd573(22)
      acd573(74)=acd573(1)+acd573(8)-acd573(12)-acd573(10)
      acd573(74)=acd573(4)*acd573(74)
      acd573(70)=acd573(74)+acd573(73)+acd573(72)+acd573(70)+acd573(71)
      acd573(70)=acd573(3)*acd573(70)
      acd573(69)=acd573(70)+acd573(69)
      acd573(69)=acd573(2)*acd573(69)
      acd573(70)=acd573(68)*acd573(3)
      acd573(71)=acd573(6)*acd573(70)
      acd573(69)=acd573(71)+acd573(69)
      acd573(68)=acd573(39)*acd573(68)
      acd573(71)=acd573(21)*acd573(53)
      acd573(72)=acd573(19)*acd573(52)
      acd573(73)=acd573(17)*acd573(51)
      acd573(74)=acd573(15)*acd573(50)
      acd573(75)=acd573(37)+acd573(40)-acd573(42)-acd573(41)
      acd573(75)=acd573(4)*acd573(75)
      acd573(71)=acd573(75)+acd573(74)+acd573(73)+acd573(72)+acd573(57)+acd573(&
      &71)
      acd573(71)=acd573(3)*acd573(71)
      acd573(72)=-acd573(43)-acd573(26)
      acd573(72)=acd573(27)*acd573(72)
      acd573(73)=acd573(66)*acd573(67)
      acd573(74)=acd573(63)*acd573(64)
      acd573(75)=acd573(58)*acd573(59)
      acd573(76)=acd573(54)*acd573(55)
      acd573(77)=acd573(35)*acd573(65)
      acd573(78)=acd573(33)*acd573(62)
      acd573(79)=acd573(31)*acd573(61)
      acd573(80)=acd573(29)*acd573(60)
      acd573(81)=2.0_ki*acd573(44)
      acd573(82)=acd573(45)*acd573(81)
      acd573(83)=acd573(2)*acd573(56)
      acd573(68)=acd573(83)+acd573(71)+acd573(82)+acd573(80)+acd573(79)+acd573(&
      &78)+acd573(77)+acd573(76)+acd573(75)+acd573(73)+acd573(74)+acd573(68)+ac&
      &d573(72)
      acd573(68)=acd573(2)*acd573(68)
      acd573(70)=acd573(38)*acd573(70)
      acd573(71)=acd573(35)*acd573(36)
      acd573(72)=acd573(33)*acd573(34)
      acd573(73)=acd573(31)*acd573(32)
      acd573(74)=acd573(29)*acd573(30)
      acd573(71)=-acd573(74)+acd573(71)+acd573(72)+acd573(73)
      acd573(72)=-acd573(43)+acd573(28)
      acd573(71)=acd573(71)*acd573(72)
      acd573(72)=acd573(35)*acd573(49)
      acd573(73)=acd573(33)*acd573(48)
      acd573(74)=acd573(31)*acd573(47)
      acd573(75)=acd573(29)*acd573(46)
      acd573(72)=acd573(75)+acd573(74)+acd573(72)+acd573(73)
      acd573(72)=acd573(72)*acd573(81)
      acd573(68)=acd573(68)+acd573(70)+acd573(72)+acd573(71)
      brack(ninjaidxt0x0mu0)=acd573(68)
      brack(ninjaidxt0x1mu0)=acd573(69)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p8_cbarc_epnemumnmubarg_d573h5_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_abbrevd573h5
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k7
	     vecA0(1:4) = + a0(0:3) - qshift(1:4)
	     vecA1(1:4) = + a1(0:3)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_21,vecA0,vecA1,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p8_cbarc_epnemumnmubarg_d573h5l132
