module     p0_dbaru_epnebbbarg_d67h1l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d67h1l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd67h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(9) :: acd67
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd67(1)=dotproduct(k2,ninjaE3)
      acd67(2)=dotproduct(ninjaE3,spvak1k2)
      acd67(3)=dotproduct(ninjaE3,spvak2k7)
      acd67(4)=dotproduct(ninjaE3,spvak4k3)
      acd67(5)=abb67(60)
      acd67(6)=dotproduct(ninjaE3,spval6l5)
      acd67(7)=abb67(10)
      acd67(8)=acd67(5)*acd67(1)
      acd67(9)=acd67(7)*acd67(6)
      acd67(8)=acd67(8)+acd67(9)
      acd67(8)=acd67(2)*acd67(8)*acd67(4)*acd67(3)
      brack(ninjaidxt1x0mu0)=acd67(8)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd67h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(91) :: acd67
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd67(1)=dotproduct(k2,ninjaA1)
      acd67(2)=dotproduct(ninjaE3,spvak1k2)
      acd67(3)=dotproduct(ninjaE3,spvak2k7)
      acd67(4)=dotproduct(ninjaE3,spvak4k3)
      acd67(5)=abb67(60)
      acd67(6)=dotproduct(k2,ninjaE3)
      acd67(7)=dotproduct(ninjaA1,spvak1k2)
      acd67(8)=dotproduct(ninjaA1,spvak2k7)
      acd67(9)=dotproduct(ninjaA1,spvak4k3)
      acd67(10)=dotproduct(ninjaE3,spval6l5)
      acd67(11)=abb67(10)
      acd67(12)=dotproduct(ninjaA1,spval6l5)
      acd67(13)=dotproduct(k1,ninjaE3)
      acd67(14)=abb67(162)
      acd67(15)=abb67(170)
      acd67(16)=abb67(150)
      acd67(17)=dotproduct(ninjaE3,spvak4k2)
      acd67(18)=abb67(104)
      acd67(19)=abb67(80)
      acd67(20)=abb67(91)
      acd67(21)=dotproduct(ninjaE3,spval6k2)
      acd67(22)=abb67(30)
      acd67(23)=abb67(161)
      acd67(24)=dotproduct(k2,ninjaA0)
      acd67(25)=dotproduct(ninjaA0,ninjaE3)
      acd67(26)=abb67(82)
      acd67(27)=dotproduct(k3,ninjaE3)
      acd67(28)=abb67(119)
      acd67(29)=dotproduct(k4,ninjaE3)
      acd67(30)=dotproduct(l5,ninjaE3)
      acd67(31)=abb67(75)
      acd67(32)=dotproduct(l6,ninjaE3)
      acd67(33)=dotproduct(k7,ninjaE3)
      acd67(34)=abb67(53)
      acd67(35)=abb67(76)
      acd67(36)=abb67(110)
      acd67(37)=abb67(39)
      acd67(38)=abb67(85)
      acd67(39)=dotproduct(ninjaA0,spvak1k2)
      acd67(40)=dotproduct(ninjaA0,spvak2k7)
      acd67(41)=dotproduct(ninjaA0,spvak4k3)
      acd67(42)=abb67(54)
      acd67(43)=abb67(68)
      acd67(44)=abb67(28)
      acd67(45)=dotproduct(ninjaE3,spvak1k3)
      acd67(46)=abb67(51)
      acd67(47)=abb67(121)
      acd67(48)=abb67(166)
      acd67(49)=dotproduct(ninjaE3,spvak3k2)
      acd67(50)=abb67(134)
      acd67(51)=dotproduct(ninjaE3,spval5k2)
      acd67(52)=abb67(139)
      acd67(53)=abb67(73)
      acd67(54)=abb67(26)
      acd67(55)=abb67(113)
      acd67(56)=abb67(123)
      acd67(57)=abb67(64)
      acd67(58)=abb67(31)
      acd67(59)=abb67(83)
      acd67(60)=abb67(81)
      acd67(61)=abb67(66)
      acd67(62)=abb67(61)
      acd67(63)=abb67(141)
      acd67(64)=abb67(11)
      acd67(65)=dotproduct(ninjaA0,spval6l5)
      acd67(66)=abb67(14)
      acd67(67)=abb67(59)
      acd67(68)=abb67(12)
      acd67(69)=abb67(70)
      acd67(70)=abb67(23)
      acd67(71)=abb67(43)
      acd67(72)=dotproduct(ninjaE3,spvak7k2)
      acd67(73)=abb67(55)
      acd67(74)=abb67(86)
      acd67(75)=abb67(33)
      acd67(76)=abb67(130)
      acd67(77)=abb67(146)
      acd67(78)=abb67(152)
      acd67(79)=acd67(10)*acd67(11)
      acd67(80)=acd67(6)*acd67(5)
      acd67(79)=acd67(79)+acd67(80)
      acd67(80)=acd67(7)*acd67(79)
      acd67(81)=acd67(11)*acd67(12)
      acd67(82)=acd67(5)*acd67(1)
      acd67(81)=acd67(81)+acd67(82)
      acd67(81)=acd67(2)*acd67(81)
      acd67(80)=acd67(81)+acd67(80)
      acd67(80)=acd67(3)*acd67(80)
      acd67(79)=acd67(79)*acd67(2)
      acd67(81)=acd67(8)*acd67(79)
      acd67(80)=acd67(80)+acd67(81)
      acd67(80)=acd67(4)*acd67(80)
      acd67(79)=acd67(3)*acd67(9)*acd67(79)
      acd67(79)=acd67(79)+acd67(80)
      acd67(80)=acd67(11)*acd67(65)
      acd67(81)=acd67(5)*acd67(24)
      acd67(80)=acd67(81)+acd67(66)+acd67(80)
      acd67(80)=acd67(2)*acd67(80)
      acd67(81)=acd67(30)+acd67(32)
      acd67(82)=-acd67(33)+acd67(81)
      acd67(82)=acd67(54)*acd67(82)
      acd67(83)=acd67(72)*acd67(73)
      acd67(84)=acd67(51)*acd67(74)
      acd67(85)=-acd67(49)*acd67(60)
      acd67(86)=acd67(21)*acd67(71)
      acd67(87)=2.0_ki*acd67(25)
      acd67(88)=acd67(58)*acd67(87)
      acd67(89)=acd67(17)*acd67(70)
      acd67(90)=acd67(11)*acd67(39)
      acd67(90)=acd67(69)+acd67(90)
      acd67(90)=acd67(10)*acd67(90)
      acd67(91)=acd67(5)*acd67(39)
      acd67(91)=acd67(44)+acd67(91)
      acd67(91)=acd67(6)*acd67(91)
      acd67(80)=acd67(91)+acd67(90)+acd67(80)+acd67(89)+acd67(88)+acd67(86)+acd&
      &67(85)+acd67(83)+acd67(84)+acd67(82)
      acd67(80)=acd67(3)*acd67(80)
      acd67(82)=-acd67(31)*acd67(81)
      acd67(83)=acd67(51)*acd67(52)
      acd67(84)=-acd67(49)*acd67(38)
      acd67(85)=acd67(33)*acd67(34)
      acd67(86)=acd67(21)*acd67(50)
      acd67(88)=acd67(36)*acd67(87)
      acd67(89)=acd67(17)*acd67(48)
      acd67(90)=acd67(5)*acd67(40)
      acd67(90)=acd67(43)+acd67(90)
      acd67(90)=acd67(2)*acd67(90)
      acd67(91)=acd67(10)*acd67(47)
      acd67(82)=acd67(91)+acd67(90)+acd67(89)+acd67(88)+acd67(86)+acd67(85)+acd&
      &67(83)+acd67(84)+acd67(82)
      acd67(82)=acd67(6)*acd67(82)
      acd67(83)=-acd67(55)*acd67(81)
      acd67(84)=acd67(51)*acd67(78)
      acd67(85)=-acd67(49)*acd67(64)
      acd67(86)=acd67(33)*acd67(57)
      acd67(88)=acd67(21)*acd67(77)
      acd67(89)=acd67(62)*acd67(87)
      acd67(90)=acd67(17)*acd67(76)
      acd67(91)=acd67(11)*acd67(40)
      acd67(91)=acd67(68)+acd67(91)
      acd67(91)=acd67(2)*acd67(91)
      acd67(83)=acd67(91)+acd67(90)+acd67(89)+acd67(88)+acd67(86)+acd67(84)+acd&
      &67(85)+acd67(83)
      acd67(83)=acd67(10)*acd67(83)
      acd67(81)=acd67(56)*acd67(81)
      acd67(84)=acd67(63)*acd67(87)
      acd67(81)=acd67(81)+acd67(84)
      acd67(81)=acd67(21)*acd67(81)
      acd67(80)=acd67(80)+acd67(82)+acd67(83)+acd67(81)
      acd67(80)=acd67(4)*acd67(80)
      acd67(81)=acd67(27)+acd67(29)
      acd67(82)=acd67(53)*acd67(81)
      acd67(83)=acd67(45)*acd67(75)
      acd67(84)=acd67(13)*acd67(19)
      acd67(85)=acd67(59)*acd67(87)
      acd67(86)=acd67(11)*acd67(41)
      acd67(86)=acd67(67)+acd67(86)
      acd67(86)=acd67(2)*acd67(86)
      acd67(82)=acd67(86)+acd67(85)+acd67(84)+acd67(83)+acd67(82)
      acd67(82)=acd67(10)*acd67(82)
      acd67(83)=-acd67(28)*acd67(81)
      acd67(84)=acd67(45)*acd67(46)
      acd67(85)=acd67(13)*acd67(15)
      acd67(86)=acd67(35)*acd67(87)
      acd67(88)=acd67(5)*acd67(41)
      acd67(88)=acd67(42)+acd67(88)
      acd67(88)=acd67(2)*acd67(88)
      acd67(83)=acd67(88)+acd67(86)+acd67(85)+acd67(84)+acd67(83)
      acd67(83)=acd67(6)*acd67(83)
      acd67(84)=acd67(13)*acd67(22)
      acd67(85)=acd67(61)*acd67(87)
      acd67(84)=acd67(84)+acd67(85)
      acd67(84)=acd67(21)*acd67(84)
      acd67(81)=acd67(81)-acd67(13)
      acd67(85)=acd67(20)*acd67(81)
      acd67(86)=acd67(60)*acd67(87)
      acd67(85)=acd67(86)+acd67(85)
      acd67(85)=acd67(17)*acd67(85)
      acd67(82)=acd67(83)+acd67(82)+acd67(85)+acd67(84)
      acd67(82)=acd67(3)*acd67(82)
      acd67(83)=acd67(18)*acd67(81)
      acd67(84)=acd67(38)*acd67(87)
      acd67(83)=acd67(84)+acd67(83)
      acd67(83)=acd67(17)*acd67(83)
      acd67(84)=acd67(13)*acd67(16)
      acd67(85)=acd67(37)*acd67(87)
      acd67(84)=acd67(84)+acd67(85)
      acd67(84)=acd67(10)*acd67(84)
      acd67(85)=acd67(13)*acd67(14)
      acd67(86)=acd67(26)*acd67(87)
      acd67(85)=acd67(85)+acd67(86)
      acd67(85)=acd67(6)*acd67(85)
      acd67(83)=acd67(85)+acd67(83)+acd67(84)
      acd67(83)=acd67(6)*acd67(83)
      acd67(81)=acd67(23)*acd67(81)
      acd67(84)=acd67(64)*acd67(87)
      acd67(81)=acd67(84)+acd67(81)
      acd67(81)=acd67(10)*acd67(17)*acd67(81)
      acd67(80)=acd67(80)+acd67(82)+acd67(81)+acd67(83)
      brack(ninjaidxt0x0mu0)=acd67(80)
      brack(ninjaidxt0x1mu0)=acd67(79)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d67h1_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd67h1
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k7-k6-k5
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
end module     p0_dbaru_epnebbbarg_d67h1l132
