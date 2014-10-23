module     p0_dbaru_epnebbbarg_d68h6l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity6d68h6l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd68h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(9) :: acd68
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd68(1)=dotproduct(k2,ninjaE3)
      acd68(2)=dotproduct(ninjaE3,spvak1k2)
      acd68(3)=dotproduct(ninjaE3,spvak4k3)
      acd68(4)=dotproduct(ninjaE3,spvak7k2)
      acd68(5)=abb68(19)
      acd68(6)=dotproduct(ninjaE3,spval5l6)
      acd68(7)=abb68(31)
      acd68(8)=acd68(5)*acd68(1)
      acd68(9)=acd68(7)*acd68(6)
      acd68(8)=acd68(8)+acd68(9)
      acd68(8)=acd68(2)*acd68(8)*acd68(4)*acd68(3)
      brack(ninjaidxt1x0mu0)=acd68(8)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd68h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(75) :: acd68
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd68(1)=dotproduct(k2,ninjaA1)
      acd68(2)=dotproduct(ninjaE3,spvak1k2)
      acd68(3)=dotproduct(ninjaE3,spvak4k3)
      acd68(4)=dotproduct(ninjaE3,spvak7k2)
      acd68(5)=abb68(19)
      acd68(6)=dotproduct(k2,ninjaE3)
      acd68(7)=dotproduct(ninjaA1,spvak1k2)
      acd68(8)=dotproduct(ninjaA1,spvak4k3)
      acd68(9)=dotproduct(ninjaA1,spvak7k2)
      acd68(10)=dotproduct(ninjaE3,spval5l6)
      acd68(11)=abb68(31)
      acd68(12)=dotproduct(ninjaA1,spval5l6)
      acd68(13)=dotproduct(k1,ninjaE3)
      acd68(14)=abb68(102)
      acd68(15)=dotproduct(ninjaE3,spval5k2)
      acd68(16)=abb68(41)
      acd68(17)=dotproduct(k2,ninjaA0)
      acd68(18)=abb68(90)
      acd68(19)=dotproduct(ninjaE3,spvak4k2)
      acd68(20)=abb68(62)
      acd68(21)=dotproduct(k3,ninjaE3)
      acd68(22)=abb68(91)
      acd68(23)=dotproduct(k4,ninjaE3)
      acd68(24)=dotproduct(ninjaA0,ninjaE3)
      acd68(25)=abb68(86)
      acd68(26)=abb68(63)
      acd68(27)=dotproduct(ninjaA0,spvak1k2)
      acd68(28)=dotproduct(ninjaA0,spvak4k3)
      acd68(29)=dotproduct(ninjaA0,spvak7k2)
      acd68(30)=abb68(40)
      acd68(31)=abb68(73)
      acd68(32)=abb68(33)
      acd68(33)=abb68(100)
      acd68(34)=abb68(101)
      acd68(35)=abb68(83)
      acd68(36)=dotproduct(ninjaE3,spvak3k2)
      acd68(37)=dotproduct(ninjaE3,spval6k2)
      acd68(38)=abb68(99)
      acd68(39)=abb68(81)
      acd68(40)=abb68(72)
      acd68(41)=dotproduct(ninjaE3,spvak1k3)
      acd68(42)=abb68(71)
      acd68(43)=abb68(92)
      acd68(44)=dotproduct(l5,ninjaE3)
      acd68(45)=abb68(42)
      acd68(46)=dotproduct(l6,ninjaE3)
      acd68(47)=abb68(58)
      acd68(48)=abb68(104)
      acd68(49)=abb68(109)
      acd68(50)=abb68(67)
      acd68(51)=dotproduct(ninjaA0,spval5l6)
      acd68(52)=abb68(10)
      acd68(53)=abb68(18)
      acd68(54)=abb68(74)
      acd68(55)=abb68(107)
      acd68(56)=abb68(112)
      acd68(57)=abb68(88)
      acd68(58)=abb68(27)
      acd68(59)=dotproduct(ninjaE3,spvak1l6)
      acd68(60)=abb68(69)
      acd68(61)=abb68(105)
      acd68(62)=abb68(84)
      acd68(63)=abb68(76)
      acd68(64)=acd68(10)*acd68(11)
      acd68(65)=acd68(6)*acd68(5)
      acd68(64)=acd68(64)+acd68(65)
      acd68(65)=acd68(7)*acd68(64)
      acd68(66)=acd68(11)*acd68(12)
      acd68(67)=acd68(5)*acd68(1)
      acd68(66)=acd68(66)+acd68(67)
      acd68(66)=acd68(2)*acd68(66)
      acd68(65)=acd68(66)+acd68(65)
      acd68(65)=acd68(4)*acd68(65)
      acd68(64)=acd68(64)*acd68(2)
      acd68(66)=acd68(9)*acd68(64)
      acd68(65)=acd68(65)+acd68(66)
      acd68(65)=acd68(3)*acd68(65)
      acd68(64)=acd68(4)*acd68(8)*acd68(64)
      acd68(64)=acd68(64)+acd68(65)
      acd68(65)=acd68(11)*acd68(51)
      acd68(66)=acd68(5)*acd68(17)
      acd68(65)=acd68(66)+acd68(53)+acd68(65)
      acd68(65)=acd68(2)*acd68(65)
      acd68(66)=acd68(44)+acd68(46)
      acd68(67)=acd68(45)*acd68(66)
      acd68(68)=acd68(59)*acd68(60)
      acd68(69)=acd68(13)*acd68(14)
      acd68(70)=acd68(37)*acd68(61)
      acd68(71)=acd68(15)*acd68(58)
      acd68(72)=2.0_ki*acd68(24)
      acd68(73)=acd68(48)*acd68(72)
      acd68(74)=acd68(11)*acd68(27)
      acd68(74)=acd68(55)+acd68(74)
      acd68(74)=acd68(10)*acd68(74)
      acd68(75)=acd68(5)*acd68(27)
      acd68(75)=acd68(33)+acd68(75)
      acd68(75)=acd68(6)*acd68(75)
      acd68(65)=acd68(75)+acd68(74)+acd68(65)+acd68(73)+acd68(71)+acd68(70)+acd&
      &68(69)+acd68(68)+acd68(67)
      acd68(65)=acd68(4)*acd68(65)
      acd68(67)=-acd68(36)*acd68(50)
      acd68(68)=acd68(37)*acd68(49)
      acd68(69)=acd68(15)*acd68(56)
      acd68(70)=acd68(19)*acd68(57)
      acd68(71)=acd68(11)*acd68(29)
      acd68(71)=acd68(52)+acd68(71)
      acd68(71)=acd68(2)*acd68(71)
      acd68(67)=acd68(71)+acd68(70)+acd68(69)+acd68(67)+acd68(68)
      acd68(67)=acd68(10)*acd68(67)
      acd68(68)=acd68(26)*acd68(36)
      acd68(69)=acd68(37)*acd68(38)
      acd68(70)=acd68(15)*acd68(34)
      acd68(71)=acd68(19)*acd68(35)
      acd68(73)=acd68(5)*acd68(29)
      acd68(73)=acd68(30)+acd68(73)
      acd68(73)=acd68(2)*acd68(73)
      acd68(68)=acd68(73)+acd68(71)+acd68(70)+acd68(68)+acd68(69)
      acd68(68)=acd68(6)*acd68(68)
      acd68(66)=acd68(13)-acd68(66)
      acd68(66)=acd68(16)*acd68(66)
      acd68(69)=acd68(49)*acd68(72)
      acd68(66)=acd68(66)+acd68(69)
      acd68(66)=acd68(15)*acd68(66)
      acd68(65)=acd68(65)+acd68(68)+acd68(67)+acd68(66)
      acd68(65)=acd68(3)*acd68(65)
      acd68(66)=acd68(21)+acd68(23)
      acd68(67)=-acd68(20)*acd68(66)
      acd68(68)=-acd68(26)*acd68(72)
      acd68(67)=acd68(68)+acd68(67)
      acd68(67)=acd68(19)*acd68(67)
      acd68(68)=acd68(18)*acd68(66)
      acd68(69)=acd68(25)*acd68(72)
      acd68(68)=acd68(69)+acd68(68)
      acd68(68)=acd68(2)*acd68(68)
      acd68(69)=-acd68(19)*acd68(39)
      acd68(70)=acd68(2)*acd68(31)
      acd68(69)=acd68(69)+acd68(70)
      acd68(69)=acd68(10)*acd68(69)
      acd68(70)=acd68(19)*acd68(20)
      acd68(71)=-acd68(2)*acd68(18)
      acd68(70)=acd68(70)+acd68(71)
      acd68(70)=acd68(6)*acd68(70)
      acd68(67)=acd68(70)+acd68(69)+acd68(67)+acd68(68)
      acd68(67)=acd68(6)*acd68(67)
      acd68(68)=acd68(66)+acd68(72)
      acd68(69)=-acd68(43)*acd68(68)
      acd68(70)=acd68(41)*acd68(63)
      acd68(71)=acd68(19)*acd68(62)
      acd68(73)=acd68(11)*acd68(28)
      acd68(73)=acd68(54)+acd68(73)
      acd68(73)=acd68(2)*acd68(73)
      acd68(69)=acd68(73)+acd68(71)+acd68(70)+acd68(69)
      acd68(69)=acd68(10)*acd68(69)
      acd68(68)=acd68(22)*acd68(68)
      acd68(70)=acd68(41)*acd68(42)
      acd68(71)=acd68(19)*acd68(40)
      acd68(73)=acd68(5)*acd68(28)
      acd68(73)=acd68(32)+acd68(73)
      acd68(73)=acd68(2)*acd68(73)
      acd68(68)=acd68(73)+acd68(71)+acd68(70)+acd68(68)
      acd68(68)=acd68(6)*acd68(68)
      acd68(68)=acd68(69)+acd68(68)
      acd68(68)=acd68(4)*acd68(68)
      acd68(69)=acd68(39)*acd68(66)
      acd68(70)=acd68(50)*acd68(72)
      acd68(69)=acd68(70)+acd68(69)
      acd68(69)=acd68(19)*acd68(69)
      acd68(66)=-acd68(31)*acd68(66)
      acd68(70)=acd68(47)*acd68(72)
      acd68(66)=acd68(70)+acd68(66)
      acd68(66)=acd68(2)*acd68(66)
      acd68(66)=acd68(69)+acd68(66)
      acd68(66)=acd68(10)*acd68(66)
      acd68(65)=acd68(65)+acd68(68)+acd68(66)+acd68(67)
      brack(ninjaidxt0x0mu0)=acd68(65)
      brack(ninjaidxt0x1mu0)=acd68(64)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d68h6_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd68h6
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
end module     p0_dbaru_epnebbbarg_d68h6l132
