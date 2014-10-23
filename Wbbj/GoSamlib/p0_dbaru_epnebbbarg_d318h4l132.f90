module     p0_dbaru_epnebbbarg_d318h4l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d318h4l132.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
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
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd318h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(16) :: acd318
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd318(1)=dotproduct(ninjaE3,spvak4k2)
      acd318(2)=dotproduct(ninjaE3,spval6k2)
      acd318(3)=dotproduct(ninjaE3,spvak7k2)
      acd318(4)=abb318(18)
      acd318(5)=dotproduct(ninjaE3,spval5k2)
      acd318(6)=abb318(52)
      acd318(7)=dotproduct(ninjaE3,spvak1k2)
      acd318(8)=abb318(22)
      acd318(9)=dotproduct(ninjaE3,spvak1k3)
      acd318(10)=abb318(59)
      acd318(11)=abb318(25)
      acd318(12)=abb318(60)
      acd318(13)=acd318(6)*acd318(1)
      acd318(14)=acd318(11)*acd318(7)
      acd318(15)=acd318(12)*acd318(9)
      acd318(13)=acd318(15)+acd318(14)+acd318(13)
      acd318(13)=acd318(13)*acd318(5)
      acd318(14)=acd318(4)*acd318(1)
      acd318(15)=acd318(8)*acd318(7)
      acd318(16)=acd318(10)*acd318(9)
      acd318(14)=acd318(16)+acd318(15)+acd318(14)
      acd318(14)=acd318(14)*acd318(2)
      acd318(13)=acd318(14)+acd318(13)
      acd318(13)=acd318(3)*acd318(13)
      brack(ninjaidxt1x0mu0)=acd318(13)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd318h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(86) :: acd318
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd318(1)=dotproduct(ninjaA1,spvak1k2)
      acd318(2)=dotproduct(ninjaE3,spvak7k2)
      acd318(3)=dotproduct(ninjaE3,spval5k2)
      acd318(4)=abb318(25)
      acd318(5)=dotproduct(ninjaE3,spval6k2)
      acd318(6)=abb318(22)
      acd318(7)=dotproduct(ninjaA1,spvak7k2)
      acd318(8)=dotproduct(ninjaE3,spvak1k2)
      acd318(9)=dotproduct(ninjaE3,spvak4k2)
      acd318(10)=abb318(52)
      acd318(11)=dotproduct(ninjaE3,spvak1k3)
      acd318(12)=abb318(60)
      acd318(13)=abb318(18)
      acd318(14)=abb318(59)
      acd318(15)=dotproduct(ninjaA1,spval5k2)
      acd318(16)=dotproduct(ninjaA1,spvak4k2)
      acd318(17)=dotproduct(ninjaA1,spval6k2)
      acd318(18)=dotproduct(ninjaA1,spvak1k3)
      acd318(19)=dotproduct(k2,ninjaE3)
      acd318(20)=abb318(37)
      acd318(21)=abb318(45)
      acd318(22)=abb318(31)
      acd318(23)=abb318(81)
      acd318(24)=dotproduct(l5,ninjaE3)
      acd318(25)=abb318(30)
      acd318(26)=abb318(26)
      acd318(27)=abb318(29)
      acd318(28)=abb318(57)
      acd318(29)=dotproduct(l6,ninjaE3)
      acd318(30)=abb318(41)
      acd318(31)=dotproduct(k7,ninjaE3)
      acd318(32)=abb318(36)
      acd318(33)=dotproduct(ninjaA0,ninjaE3)
      acd318(34)=abb318(38)
      acd318(35)=abb318(69)
      acd318(36)=abb318(66)
      acd318(37)=dotproduct(ninjaA0,spvak1k2)
      acd318(38)=dotproduct(ninjaA0,spvak7k2)
      acd318(39)=dotproduct(ninjaA0,spval5k2)
      acd318(40)=dotproduct(ninjaA0,spvak4k2)
      acd318(41)=dotproduct(ninjaA0,spval6k2)
      acd318(42)=dotproduct(ninjaA0,spvak1k3)
      acd318(43)=abb318(14)
      acd318(44)=abb318(16)
      acd318(45)=abb318(24)
      acd318(46)=abb318(48)
      acd318(47)=abb318(32)
      acd318(48)=abb318(34)
      acd318(49)=abb318(28)
      acd318(50)=abb318(44)
      acd318(51)=dotproduct(ninjaE3,spval6k7)
      acd318(52)=dotproduct(ninjaE3,spval6l5)
      acd318(53)=abb318(68)
      acd318(54)=dotproduct(ninjaE3,spval5k7)
      acd318(55)=dotproduct(ninjaE3,spval6k3)
      acd318(56)=abb318(79)
      acd318(57)=dotproduct(ninjaE3,spval5k3)
      acd318(58)=abb318(86)
      acd318(59)=abb318(35)
      acd318(60)=abb318(53)
      acd318(61)=abb318(20)
      acd318(62)=abb318(58)
      acd318(63)=acd318(13)*acd318(9)
      acd318(64)=acd318(14)*acd318(11)
      acd318(63)=acd318(64)+acd318(63)
      acd318(63)=acd318(5)*acd318(63)
      acd318(64)=acd318(10)*acd318(9)
      acd318(65)=acd318(12)*acd318(11)
      acd318(64)=acd318(64)+acd318(65)
      acd318(65)=acd318(3)*acd318(64)
      acd318(66)=acd318(6)*acd318(5)
      acd318(67)=acd318(4)*acd318(3)
      acd318(67)=acd318(67)+acd318(66)
      acd318(67)=acd318(8)*acd318(67)
      acd318(65)=acd318(67)+acd318(65)+acd318(63)
      acd318(65)=acd318(7)*acd318(65)
      acd318(67)=acd318(11)*acd318(2)
      acd318(68)=acd318(67)*acd318(12)
      acd318(69)=acd318(9)*acd318(2)
      acd318(70)=acd318(69)*acd318(10)
      acd318(71)=acd318(8)*acd318(2)
      acd318(72)=acd318(71)*acd318(4)
      acd318(68)=acd318(72)+acd318(68)+acd318(70)
      acd318(70)=acd318(15)*acd318(68)
      acd318(72)=acd318(67)*acd318(14)
      acd318(73)=acd318(69)*acd318(13)
      acd318(74)=acd318(71)*acd318(6)
      acd318(72)=acd318(74)+acd318(72)+acd318(73)
      acd318(73)=acd318(17)*acd318(72)
      acd318(74)=acd318(5)*acd318(2)
      acd318(75)=acd318(74)*acd318(6)
      acd318(76)=acd318(3)*acd318(2)
      acd318(77)=acd318(76)*acd318(4)
      acd318(75)=acd318(75)+acd318(77)
      acd318(77)=acd318(1)*acd318(75)
      acd318(78)=acd318(74)*acd318(13)
      acd318(79)=acd318(76)*acd318(10)
      acd318(78)=acd318(78)+acd318(79)
      acd318(79)=acd318(16)*acd318(78)
      acd318(80)=acd318(74)*acd318(14)
      acd318(81)=acd318(76)*acd318(12)
      acd318(80)=acd318(80)+acd318(81)
      acd318(81)=acd318(18)*acd318(80)
      acd318(65)=acd318(81)+acd318(79)+acd318(77)+acd318(73)+acd318(70)+acd318(&
      &65)
      acd318(70)=2.0_ki*acd318(33)
      acd318(73)=-acd318(29)+acd318(70)
      acd318(73)=acd318(30)*acd318(73)
      acd318(77)=acd318(21)*acd318(19)
      acd318(79)=acd318(26)*acd318(24)
      acd318(81)=acd318(32)*acd318(31)
      acd318(82)=-acd318(51)*acd318(36)
      acd318(83)=acd318(53)*acd318(52)
      acd318(84)=acd318(54)*acd318(35)
      acd318(85)=acd318(56)*acd318(55)
      acd318(86)=acd318(58)*acd318(57)
      acd318(73)=acd318(86)+acd318(85)+acd318(84)+acd318(83)+acd318(82)+acd318(&
      &81)+acd318(79)+acd318(77)+acd318(73)
      acd318(73)=acd318(2)*acd318(73)
      acd318(77)=-acd318(35)*acd318(70)
      acd318(79)=acd318(22)*acd318(19)
      acd318(81)=acd318(44)*acd318(8)
      acd318(82)=acd318(59)*acd318(9)
      acd318(83)=acd318(60)*acd318(11)
      acd318(77)=acd318(83)+acd318(82)+acd318(81)+acd318(79)+acd318(77)
      acd318(77)=acd318(3)*acd318(77)
      acd318(79)=acd318(36)*acd318(70)
      acd318(81)=acd318(23)*acd318(19)
      acd318(82)=acd318(45)*acd318(8)
      acd318(83)=acd318(61)*acd318(9)
      acd318(84)=acd318(62)*acd318(11)
      acd318(79)=acd318(84)+acd318(83)+acd318(82)+acd318(81)+acd318(79)
      acd318(79)=acd318(5)*acd318(79)
      acd318(81)=acd318(25)*acd318(8)
      acd318(82)=-acd318(27)*acd318(3)
      acd318(83)=acd318(28)*acd318(5)
      acd318(81)=acd318(83)+acd318(82)+acd318(81)
      acd318(82)=acd318(31)+acd318(24)
      acd318(81)=acd318(82)*acd318(81)
      acd318(82)=acd318(4)*acd318(8)
      acd318(64)=acd318(82)+acd318(64)
      acd318(64)=acd318(3)*acd318(64)
      acd318(66)=acd318(8)*acd318(66)
      acd318(63)=acd318(66)+acd318(64)+acd318(63)
      acd318(63)=acd318(38)*acd318(63)
      acd318(64)=acd318(39)*acd318(68)
      acd318(66)=acd318(41)*acd318(72)
      acd318(68)=acd318(20)*acd318(19)
      acd318(70)=acd318(34)*acd318(70)
      acd318(68)=acd318(70)+acd318(68)
      acd318(68)=acd318(8)*acd318(68)
      acd318(70)=acd318(37)*acd318(75)
      acd318(72)=acd318(40)*acd318(78)
      acd318(75)=acd318(42)*acd318(80)
      acd318(71)=acd318(43)*acd318(71)
      acd318(78)=acd318(46)*acd318(2)**2
      acd318(76)=acd318(47)*acd318(76)
      acd318(69)=acd318(48)*acd318(69)
      acd318(74)=acd318(49)*acd318(74)
      acd318(67)=acd318(50)*acd318(67)
      acd318(63)=acd318(67)+acd318(74)+acd318(69)+acd318(76)+acd318(78)+acd318(&
      &71)+acd318(75)+acd318(72)+acd318(70)+acd318(66)+acd318(63)+acd318(64)+ac&
      &d318(73)+acd318(79)+acd318(77)+acd318(68)+acd318(81)
      brack(ninjaidxt0x0mu0)=acd318(63)
      brack(ninjaidxt0x1mu0)=acd318(65)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d318h4_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd318h4
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA0(1:4) = - a0(0:3)
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
end module     p0_dbaru_epnebbbarg_d318h4l132
