module     p8_cbarc_epnemumnmubarg_d559h5l132
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p8_cbarc_epnemumnmubarg/helicity5d559h5l132.f90
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
      use p8_cbarc_epnemumnmubarg_abbrevd559h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(20) :: acd559
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd559(1)=dotproduct(k3,ninjaE3)
      acd559(2)=dotproduct(ninjaE3,spvak1k2)
      acd559(3)=dotproduct(ninjaE3,spvak7k2)
      acd559(4)=abb559(22)
      acd559(5)=dotproduct(k4,ninjaE3)
      acd559(6)=dotproduct(k5,ninjaE3)
      acd559(7)=dotproduct(k6,ninjaE3)
      acd559(8)=dotproduct(ninjaE3,spvak4k6)
      acd559(9)=abb559(12)
      acd559(10)=dotproduct(ninjaE3,spvak4k3)
      acd559(11)=abb559(13)
      acd559(12)=dotproduct(ninjaE3,spvak5k3)
      acd559(13)=abb559(18)
      acd559(14)=dotproduct(ninjaE3,spvak5k6)
      acd559(15)=abb559(24)
      acd559(16)=-acd559(7)-acd559(6)+acd559(1)+acd559(5)
      acd559(16)=acd559(4)*acd559(16)
      acd559(17)=acd559(9)*acd559(8)
      acd559(18)=acd559(11)*acd559(10)
      acd559(19)=acd559(13)*acd559(12)
      acd559(20)=acd559(15)*acd559(14)
      acd559(16)=acd559(20)+acd559(19)+acd559(18)+acd559(17)+acd559(16)
      acd559(16)=acd559(16)*acd559(3)*acd559(2)
      brack(ninjaidxt1x0mu0)=acd559(16)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd559h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(83) :: acd559
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd559(1)=dotproduct(k3,ninjaA1)
      acd559(2)=dotproduct(ninjaE3,spvak1k2)
      acd559(3)=dotproduct(ninjaE3,spvak7k2)
      acd559(4)=abb559(22)
      acd559(5)=dotproduct(k3,ninjaE3)
      acd559(6)=dotproduct(ninjaA1,spvak1k2)
      acd559(7)=dotproduct(ninjaA1,spvak7k2)
      acd559(8)=dotproduct(k4,ninjaA1)
      acd559(9)=dotproduct(k4,ninjaE3)
      acd559(10)=dotproduct(k5,ninjaA1)
      acd559(11)=dotproduct(k5,ninjaE3)
      acd559(12)=dotproduct(k6,ninjaA1)
      acd559(13)=dotproduct(k6,ninjaE3)
      acd559(14)=dotproduct(ninjaE3,spvak4k6)
      acd559(15)=abb559(12)
      acd559(16)=dotproduct(ninjaE3,spvak4k3)
      acd559(17)=abb559(13)
      acd559(18)=dotproduct(ninjaE3,spvak5k3)
      acd559(19)=abb559(18)
      acd559(20)=dotproduct(ninjaE3,spvak5k6)
      acd559(21)=abb559(24)
      acd559(22)=dotproduct(ninjaA1,spvak4k6)
      acd559(23)=dotproduct(ninjaA1,spvak4k3)
      acd559(24)=dotproduct(ninjaA1,spvak5k3)
      acd559(25)=dotproduct(ninjaA1,spvak5k6)
      acd559(26)=dotproduct(k1,ninjaE3)
      acd559(27)=abb559(49)
      acd559(28)=dotproduct(k2,ninjaE3)
      acd559(29)=dotproduct(ninjaE3,spvak4k2)
      acd559(30)=abb559(33)
      acd559(31)=dotproduct(ninjaE3,spvak3k2)
      acd559(32)=abb559(19)
      acd559(33)=dotproduct(ninjaE3,spvak5k2)
      acd559(34)=abb559(68)
      acd559(35)=dotproduct(ninjaE3,spvak6k2)
      acd559(36)=abb559(71)
      acd559(37)=dotproduct(k3,ninjaA0)
      acd559(38)=dotproduct(ninjaA0,spvak1k2)
      acd559(39)=dotproduct(ninjaA0,spvak7k2)
      acd559(40)=dotproduct(k4,ninjaA0)
      acd559(41)=dotproduct(k5,ninjaA0)
      acd559(42)=dotproduct(k6,ninjaA0)
      acd559(43)=dotproduct(k7,ninjaE3)
      acd559(44)=dotproduct(ninjaA0,ninjaE3)
      acd559(45)=abb559(17)
      acd559(46)=abb559(26)
      acd559(47)=abb559(23)
      acd559(48)=abb559(44)
      acd559(49)=abb559(64)
      acd559(50)=dotproduct(ninjaA0,spvak4k6)
      acd559(51)=dotproduct(ninjaA0,spvak4k3)
      acd559(52)=dotproduct(ninjaA0,spvak5k3)
      acd559(53)=dotproduct(ninjaA0,spvak5k6)
      acd559(54)=abb559(14)
      acd559(55)=abb559(54)
      acd559(56)=abb559(15)
      acd559(57)=abb559(25)
      acd559(58)=abb559(20)
      acd559(59)=dotproduct(ninjaE3,spvak1k3)
      acd559(60)=abb559(21)
      acd559(61)=dotproduct(ninjaE3,spvak1k6)
      acd559(62)=abb559(29)
      acd559(63)=dotproduct(ninjaE3,spvak1k4)
      acd559(64)=abb559(38)
      acd559(65)=dotproduct(ninjaE3,spvak1k5)
      acd559(66)=abb559(55)
      acd559(67)=abb559(84)
      acd559(68)=-acd559(5)-acd559(9)+acd559(11)+acd559(13)
      acd559(68)=acd559(68)*acd559(4)
      acd559(69)=acd559(21)*acd559(20)
      acd559(70)=acd559(19)*acd559(18)
      acd559(71)=acd559(17)*acd559(16)
      acd559(72)=acd559(15)*acd559(14)
      acd559(68)=-acd559(68)+acd559(69)+acd559(70)+acd559(71)+acd559(72)
      acd559(69)=acd559(6)*acd559(68)
      acd559(70)=acd559(21)*acd559(25)
      acd559(71)=acd559(19)*acd559(24)
      acd559(72)=acd559(17)*acd559(23)
      acd559(73)=acd559(15)*acd559(22)
      acd559(74)=acd559(1)+acd559(8)-acd559(12)-acd559(10)
      acd559(74)=acd559(4)*acd559(74)
      acd559(70)=acd559(74)+acd559(73)+acd559(72)+acd559(70)+acd559(71)
      acd559(70)=acd559(2)*acd559(70)
      acd559(69)=acd559(70)+acd559(69)
      acd559(69)=acd559(3)*acd559(69)
      acd559(70)=acd559(68)*acd559(2)
      acd559(71)=acd559(7)*acd559(70)
      acd559(69)=acd559(71)+acd559(69)
      acd559(68)=acd559(38)*acd559(68)
      acd559(71)=acd559(21)*acd559(53)
      acd559(72)=acd559(19)*acd559(52)
      acd559(73)=acd559(17)*acd559(51)
      acd559(74)=acd559(15)*acd559(50)
      acd559(75)=acd559(37)+acd559(40)-acd559(42)-acd559(41)
      acd559(75)=acd559(4)*acd559(75)
      acd559(71)=acd559(75)+acd559(74)+acd559(73)+acd559(72)+acd559(54)+acd559(&
      &71)
      acd559(71)=acd559(2)*acd559(71)
      acd559(72)=acd559(43)+acd559(26)
      acd559(72)=acd559(27)*acd559(72)
      acd559(73)=acd559(65)*acd559(66)
      acd559(74)=acd559(63)*acd559(64)
      acd559(75)=acd559(61)*acd559(62)
      acd559(76)=acd559(59)*acd559(60)
      acd559(77)=acd559(35)*acd559(67)
      acd559(78)=acd559(33)*acd559(58)
      acd559(79)=acd559(31)*acd559(57)
      acd559(80)=acd559(29)*acd559(56)
      acd559(81)=2.0_ki*acd559(44)
      acd559(82)=acd559(45)*acd559(81)
      acd559(83)=acd559(3)*acd559(55)
      acd559(68)=acd559(83)+acd559(71)+acd559(82)+acd559(80)+acd559(79)+acd559(&
      &78)+acd559(77)+acd559(76)+acd559(75)+acd559(73)+acd559(74)+acd559(68)+ac&
      &d559(72)
      acd559(68)=acd559(3)*acd559(68)
      acd559(70)=acd559(39)*acd559(70)
      acd559(71)=acd559(35)*acd559(36)
      acd559(72)=acd559(33)*acd559(34)
      acd559(73)=acd559(31)*acd559(32)
      acd559(74)=acd559(29)*acd559(30)
      acd559(71)=-acd559(74)+acd559(71)+acd559(72)-acd559(73)
      acd559(72)=acd559(43)-acd559(28)
      acd559(71)=acd559(71)*acd559(72)
      acd559(72)=acd559(35)*acd559(49)
      acd559(73)=acd559(33)*acd559(48)
      acd559(74)=acd559(31)*acd559(47)
      acd559(75)=acd559(29)*acd559(46)
      acd559(72)=acd559(75)+acd559(74)+acd559(72)+acd559(73)
      acd559(72)=acd559(72)*acd559(81)
      acd559(68)=acd559(68)+acd559(70)+acd559(72)+acd559(71)
      brack(ninjaidxt0x0mu0)=acd559(68)
      brack(ninjaidxt0x1mu0)=acd559(69)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p8_cbarc_epnemumnmubarg_d559h5_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_abbrevd559h5
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k2
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
end module     p8_cbarc_epnemumnmubarg_d559h5l132
