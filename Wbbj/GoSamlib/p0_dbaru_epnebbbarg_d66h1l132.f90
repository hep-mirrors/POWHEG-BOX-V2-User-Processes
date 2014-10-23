module     p0_dbaru_epnebbbarg_d66h1l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d66h1l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd66h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(9) :: acd66
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd66(1)=dotproduct(k2,ninjaE3)
      acd66(2)=dotproduct(ninjaE3,spvak1k2)
      acd66(3)=dotproduct(ninjaE3,spvak2k7)
      acd66(4)=dotproduct(ninjaE3,spvak4k3)
      acd66(5)=abb66(14)
      acd66(6)=dotproduct(ninjaE3,spval6l5)
      acd66(7)=abb66(105)
      acd66(8)=-acd66(5)*acd66(1)
      acd66(9)=-acd66(7)*acd66(6)
      acd66(8)=acd66(8)+acd66(9)
      acd66(8)=acd66(2)*acd66(8)*acd66(4)*acd66(3)
      brack(ninjaidxt1x0mu0)=acd66(8)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd66h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(94) :: acd66
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd66(1)=dotproduct(k2,ninjaA1)
      acd66(2)=dotproduct(ninjaE3,spvak2k7)
      acd66(3)=dotproduct(ninjaE3,spvak4k3)
      acd66(4)=dotproduct(ninjaE3,spvak1k2)
      acd66(5)=abb66(14)
      acd66(6)=dotproduct(k2,ninjaE3)
      acd66(7)=dotproduct(ninjaA1,spvak2k7)
      acd66(8)=dotproduct(ninjaA1,spvak4k3)
      acd66(9)=dotproduct(ninjaA1,spvak1k2)
      acd66(10)=dotproduct(ninjaE3,spval6l5)
      acd66(11)=abb66(105)
      acd66(12)=dotproduct(ninjaA1,spval6l5)
      acd66(13)=dotproduct(k1,ninjaE3)
      acd66(14)=abb66(86)
      acd66(15)=abb66(23)
      acd66(16)=abb66(120)
      acd66(17)=dotproduct(ninjaE3,spvak1k3)
      acd66(18)=abb66(56)
      acd66(19)=abb66(94)
      acd66(20)=dotproduct(ninjaE3,spvak4k2)
      acd66(21)=abb66(34)
      acd66(22)=abb66(87)
      acd66(23)=abb66(121)
      acd66(24)=abb66(24)
      acd66(25)=abb66(70)
      acd66(26)=dotproduct(k2,ninjaA0)
      acd66(27)=dotproduct(k3,ninjaE3)
      acd66(28)=dotproduct(k4,ninjaE3)
      acd66(29)=dotproduct(ninjaA0,ninjaE3)
      acd66(30)=abb66(69)
      acd66(31)=abb66(81)
      acd66(32)=dotproduct(l5,ninjaE3)
      acd66(33)=abb66(115)
      acd66(34)=dotproduct(l6,ninjaE3)
      acd66(35)=abb66(110)
      acd66(36)=abb66(109)
      acd66(37)=abb66(54)
      acd66(38)=abb66(104)
      acd66(39)=dotproduct(ninjaA0,spvak2k7)
      acd66(40)=dotproduct(ninjaA0,spvak4k3)
      acd66(41)=dotproduct(ninjaA0,spvak1k2)
      acd66(42)=abb66(22)
      acd66(43)=abb66(20)
      acd66(44)=abb66(18)
      acd66(45)=dotproduct(ninjaE3,spval5k2)
      acd66(46)=abb66(100)
      acd66(47)=abb66(47)
      acd66(48)=abb66(93)
      acd66(49)=abb66(117)
      acd66(50)=dotproduct(ninjaE3,spval6k2)
      acd66(51)=abb66(35)
      acd66(52)=abb66(116)
      acd66(53)=dotproduct(ninjaE3,spvak1k7)
      acd66(54)=abb66(66)
      acd66(55)=dotproduct(ninjaE3,spvak3k2)
      acd66(56)=dotproduct(ninjaE3,spvak1k4)
      acd66(57)=abb66(62)
      acd66(58)=abb66(50)
      acd66(59)=abb66(29)
      acd66(60)=abb66(73)
      acd66(61)=abb66(80)
      acd66(62)=abb66(119)
      acd66(63)=abb66(113)
      acd66(64)=dotproduct(ninjaA0,spval6l5)
      acd66(65)=abb66(11)
      acd66(66)=abb66(76)
      acd66(67)=abb66(33)
      acd66(68)=dotproduct(ninjaE3,spvak1l5)
      acd66(69)=abb66(97)
      acd66(70)=abb66(65)
      acd66(71)=abb66(19)
      acd66(72)=abb66(52)
      acd66(73)=abb66(71)
      acd66(74)=abb66(99)
      acd66(75)=abb66(118)
      acd66(76)=abb66(83)
      acd66(77)=-acd66(11)*acd66(12)
      acd66(78)=-acd66(5)*acd66(1)
      acd66(77)=acd66(77)+acd66(78)
      acd66(78)=acd66(2)*acd66(4)
      acd66(77)=acd66(77)*acd66(78)
      acd66(79)=acd66(4)*acd66(7)
      acd66(80)=-acd66(11)*acd66(79)
      acd66(81)=acd66(2)*acd66(11)
      acd66(82)=-acd66(9)*acd66(81)
      acd66(80)=acd66(80)+acd66(82)
      acd66(80)=acd66(10)*acd66(80)
      acd66(82)=-acd66(9)*acd66(2)
      acd66(79)=-acd66(79)+acd66(82)
      acd66(79)=acd66(6)*acd66(5)*acd66(79)
      acd66(77)=acd66(79)+acd66(77)+acd66(80)
      acd66(77)=acd66(3)*acd66(77)
      acd66(79)=-acd66(10)*acd66(11)
      acd66(80)=-acd66(6)*acd66(5)
      acd66(79)=acd66(79)+acd66(80)
      acd66(78)=acd66(78)*acd66(8)*acd66(79)
      acd66(77)=acd66(77)+acd66(78)
      acd66(78)=acd66(32)+acd66(34)
      acd66(79)=acd66(33)*acd66(78)
      acd66(80)=acd66(38)*acd66(55)
      acd66(82)=-acd66(36)*acd66(56)
      acd66(83)=acd66(45)*acd66(46)
      acd66(84)=acd66(53)*acd66(54)
      acd66(85)=acd66(50)*acd66(51)
      acd66(86)=2.0_ki*acd66(29)
      acd66(87)=acd66(35)*acd66(86)
      acd66(88)=acd66(20)*acd66(52)
      acd66(89)=acd66(13)*acd66(16)
      acd66(90)=acd66(17)*acd66(48)
      acd66(91)=-acd66(5)*acd66(39)
      acd66(91)=acd66(47)+acd66(91)
      acd66(91)=acd66(4)*acd66(91)
      acd66(92)=-acd66(5)*acd66(41)
      acd66(92)=acd66(42)+acd66(92)
      acd66(92)=acd66(2)*acd66(92)
      acd66(93)=acd66(10)*acd66(49)
      acd66(94)=acd66(6)*acd66(31)
      acd66(79)=acd66(94)+acd66(93)+acd66(92)+acd66(91)+acd66(90)+acd66(89)+acd&
      &66(88)+acd66(87)+acd66(85)+acd66(84)+acd66(83)+acd66(80)+acd66(82)+acd66&
      &(79)
      acd66(79)=acd66(6)*acd66(79)
      acd66(80)=-acd66(56)*acd66(62)
      acd66(82)=acd66(55)*acd66(63)
      acd66(83)=-acd66(45)*acd66(60)
      acd66(84)=acd66(53)*acd66(76)
      acd66(85)=acd66(50)*acd66(74)
      acd66(87)=acd66(20)*acd66(75)
      acd66(88)=acd66(13)*acd66(23)
      acd66(89)=acd66(17)*acd66(73)
      acd66(90)=-acd66(11)*acd66(39)
      acd66(90)=acd66(72)+acd66(90)
      acd66(90)=acd66(4)*acd66(90)
      acd66(81)=-acd66(41)*acd66(81)
      acd66(80)=acd66(81)+acd66(90)+acd66(89)+acd66(88)+acd66(87)+acd66(85)+acd&
      &66(84)+acd66(83)+acd66(80)+acd66(82)
      acd66(80)=acd66(10)*acd66(80)
      acd66(81)=-acd66(11)*acd66(64)
      acd66(82)=-acd66(5)*acd66(26)
      acd66(81)=acd66(82)+acd66(66)+acd66(81)
      acd66(81)=acd66(4)*acd66(81)
      acd66(82)=acd66(68)*acd66(69)
      acd66(83)=acd66(45)*acd66(65)
      acd66(84)=acd66(50)*acd66(67)
      acd66(85)=acd66(59)*acd66(86)
      acd66(81)=acd66(81)+acd66(85)+acd66(84)+acd66(82)+acd66(83)
      acd66(81)=acd66(2)*acd66(81)
      acd66(82)=acd66(53)*acd66(58)
      acd66(83)=acd66(50)*acd66(57)
      acd66(82)=acd66(82)+acd66(83)
      acd66(78)=acd66(78)*acd66(82)
      acd66(82)=acd66(53)*acd66(61)
      acd66(83)=-acd66(50)*acd66(60)
      acd66(82)=acd66(82)+acd66(83)
      acd66(82)=acd66(82)*acd66(86)
      acd66(78)=acd66(79)+acd66(80)+acd66(81)+acd66(82)+acd66(78)
      acd66(78)=acd66(3)*acd66(78)
      acd66(79)=acd66(13)*acd66(15)
      acd66(80)=acd66(17)*acd66(44)
      acd66(81)=-acd66(5)*acd66(40)
      acd66(81)=acd66(43)+acd66(81)
      acd66(81)=acd66(4)*acd66(81)
      acd66(79)=acd66(81)+acd66(79)+acd66(80)
      acd66(79)=acd66(2)*acd66(79)
      acd66(80)=-acd66(13)+acd66(27)+acd66(28)
      acd66(81)=-acd66(21)*acd66(80)
      acd66(82)=-acd66(38)*acd66(86)
      acd66(81)=acd66(82)+acd66(81)
      acd66(81)=acd66(20)*acd66(81)
      acd66(82)=acd66(18)*acd66(80)
      acd66(83)=acd66(36)*acd66(86)
      acd66(82)=acd66(83)+acd66(82)
      acd66(82)=acd66(17)*acd66(82)
      acd66(83)=-acd66(19)*acd66(80)
      acd66(84)=acd66(37)*acd66(86)
      acd66(83)=acd66(84)+acd66(83)
      acd66(83)=acd66(10)*acd66(83)
      acd66(84)=-acd66(14)*acd66(80)
      acd66(85)=acd66(30)*acd66(86)
      acd66(84)=acd66(85)+acd66(84)
      acd66(84)=acd66(6)*acd66(84)
      acd66(79)=acd66(84)+acd66(83)+acd66(79)+acd66(82)+acd66(81)
      acd66(79)=acd66(6)*acd66(79)
      acd66(81)=acd66(13)*acd66(22)
      acd66(82)=acd66(17)*acd66(71)
      acd66(83)=-acd66(11)*acd66(40)
      acd66(83)=acd66(70)+acd66(83)
      acd66(83)=acd66(4)*acd66(83)
      acd66(81)=acd66(83)+acd66(81)+acd66(82)
      acd66(81)=acd66(2)*acd66(81)
      acd66(82)=-acd66(25)*acd66(80)
      acd66(83)=-acd66(63)*acd66(86)
      acd66(82)=acd66(83)+acd66(82)
      acd66(82)=acd66(20)*acd66(82)
      acd66(80)=acd66(24)*acd66(80)
      acd66(83)=acd66(62)*acd66(86)
      acd66(80)=acd66(83)+acd66(80)
      acd66(80)=acd66(17)*acd66(80)
      acd66(80)=acd66(81)+acd66(80)+acd66(82)
      acd66(80)=acd66(10)*acd66(80)
      acd66(78)=acd66(78)+acd66(80)+acd66(79)
      brack(ninjaidxt0x0mu0)=acd66(78)
      brack(ninjaidxt0x1mu0)=acd66(77)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d66h1_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd66h1
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k2
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
end module     p0_dbaru_epnebbbarg_d66h1l132
