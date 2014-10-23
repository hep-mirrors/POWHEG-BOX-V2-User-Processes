module     p0_dbaru_epnebbbarg_d244h4l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d244h4l132.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt2x0mu0 = 0
   integer, parameter :: ninjaidxt1x0mu0 = 1
   integer, parameter :: ninjaidxt1x1mu0 = 2
   integer, parameter :: ninjaidxt0x0mu0 = 3
   integer, parameter :: ninjaidxt0x0mu2 = 4
   integer, parameter :: ninjaidxt0x1mu0 = 5
   integer, parameter :: ninjaidxt0x2mu0 = 6
   public :: numerator_t2
contains
!---#[ subroutine brack_21:
   pure subroutine brack_21(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd244h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(79) :: acd244
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd244(1)=dotproduct(k2,ninjaE3)
      acd244(2)=abb244(46)
      acd244(3)=dotproduct(l5,ninjaE3)
      acd244(4)=abb244(22)
      acd244(5)=dotproduct(l6,ninjaE3)
      acd244(6)=dotproduct(k7,ninjaE3)
      acd244(7)=dotproduct(ninjaA0,ninjaE3)
      acd244(8)=abb244(60)
      acd244(9)=dotproduct(ninjaA0,spvak1k3)
      acd244(10)=dotproduct(ninjaE3,spvak7k2)
      acd244(11)=abb244(20)
      acd244(12)=dotproduct(ninjaE3,spval6k2)
      acd244(13)=abb244(21)
      acd244(14)=dotproduct(ninjaE3,spval5k2)
      acd244(15)=abb244(27)
      acd244(16)=dotproduct(ninjaA0,spvak7k2)
      acd244(17)=dotproduct(ninjaE3,spvak1k3)
      acd244(18)=dotproduct(ninjaE3,spvak1k2)
      acd244(19)=abb244(31)
      acd244(20)=dotproduct(ninjaE3,spvak4k2)
      acd244(21)=abb244(47)
      acd244(22)=dotproduct(ninjaA0,spval6k2)
      acd244(23)=abb244(24)
      acd244(24)=abb244(49)
      acd244(25)=dotproduct(ninjaA0,spvak1k2)
      acd244(26)=abb244(29)
      acd244(27)=dotproduct(ninjaA0,spval5k2)
      acd244(28)=abb244(30)
      acd244(29)=dotproduct(ninjaA0,spvak4k2)
      acd244(30)=dotproduct(ninjaE3,spval5k3)
      acd244(31)=abb244(16)
      acd244(32)=dotproduct(ninjaE3,spvak1l5)
      acd244(33)=abb244(17)
      acd244(34)=dotproduct(ninjaE3,spvak1k7)
      acd244(35)=abb244(18)
      acd244(36)=dotproduct(ninjaE3,spvak1l6)
      acd244(37)=abb244(19)
      acd244(38)=abb244(28)
      acd244(39)=abb244(37)
      acd244(40)=abb244(23)
      acd244(41)=abb244(26)
      acd244(42)=dotproduct(ninjaE3,spval6k3)
      acd244(43)=abb244(72)
      acd244(44)=dotproduct(ninjaE3,spvak7k3)
      acd244(45)=abb244(87)
      acd244(46)=dotproduct(ninjaA1,spvak1k3)
      acd244(47)=dotproduct(ninjaA1,spvak7k2)
      acd244(48)=dotproduct(ninjaA1,spval6k2)
      acd244(49)=dotproduct(ninjaA1,spvak1k2)
      acd244(50)=dotproduct(ninjaA1,spval5k2)
      acd244(51)=dotproduct(ninjaA1,spvak4k2)
      acd244(52)=acd244(11)*acd244(10)
      acd244(53)=acd244(13)*acd244(12)
      acd244(54)=acd244(15)*acd244(14)
      acd244(52)=acd244(54)+acd244(52)+acd244(53)
      acd244(53)=acd244(9)*acd244(52)
      acd244(54)=acd244(19)*acd244(10)
      acd244(55)=acd244(23)*acd244(12)
      acd244(56)=acd244(26)*acd244(14)
      acd244(54)=acd244(56)+acd244(54)+acd244(55)
      acd244(55)=acd244(25)*acd244(54)
      acd244(56)=acd244(21)*acd244(10)
      acd244(57)=acd244(24)*acd244(12)
      acd244(58)=acd244(28)*acd244(14)
      acd244(56)=acd244(58)+acd244(56)+acd244(57)
      acd244(57)=acd244(29)*acd244(56)
      acd244(58)=acd244(19)*acd244(18)
      acd244(59)=acd244(21)*acd244(20)
      acd244(58)=acd244(58)+acd244(59)
      acd244(59)=acd244(11)*acd244(17)
      acd244(59)=acd244(58)+acd244(59)
      acd244(60)=acd244(16)*acd244(59)
      acd244(61)=acd244(23)*acd244(18)
      acd244(62)=acd244(24)*acd244(20)
      acd244(61)=acd244(61)+acd244(62)
      acd244(62)=acd244(13)*acd244(17)
      acd244(62)=acd244(61)+acd244(62)
      acd244(63)=acd244(22)*acd244(62)
      acd244(64)=acd244(26)*acd244(18)
      acd244(65)=acd244(28)*acd244(20)
      acd244(64)=acd244(64)+acd244(65)
      acd244(65)=acd244(15)*acd244(17)
      acd244(65)=acd244(64)+acd244(65)
      acd244(66)=acd244(27)*acd244(65)
      acd244(67)=acd244(6)+acd244(5)+acd244(3)
      acd244(67)=acd244(4)*acd244(67)
      acd244(68)=acd244(2)*acd244(1)
      acd244(69)=acd244(8)*acd244(7)
      acd244(70)=acd244(31)*acd244(30)
      acd244(71)=acd244(33)*acd244(32)
      acd244(72)=acd244(35)*acd244(34)
      acd244(73)=acd244(37)*acd244(36)
      acd244(74)=acd244(38)*acd244(10)
      acd244(75)=acd244(39)*acd244(12)
      acd244(76)=acd244(40)*acd244(18)
      acd244(77)=acd244(41)*acd244(14)
      acd244(78)=acd244(43)*acd244(42)
      acd244(79)=acd244(45)*acd244(44)
      acd244(53)=acd244(79)+acd244(78)+acd244(77)+acd244(76)+acd244(75)+acd244(&
      &74)+acd244(73)+acd244(72)+acd244(71)+acd244(70)+2.0_ki*acd244(69)+acd244&
      &(68)+acd244(57)+acd244(66)+acd244(55)+acd244(63)+acd244(53)+acd244(60)+a&
      &cd244(67)
      acd244(55)=acd244(46)*acd244(52)
      acd244(54)=acd244(49)*acd244(54)
      acd244(56)=acd244(51)*acd244(56)
      acd244(57)=acd244(47)*acd244(59)
      acd244(59)=acd244(48)*acd244(62)
      acd244(60)=acd244(50)*acd244(65)
      acd244(54)=acd244(56)+acd244(60)+acd244(54)+acd244(59)+acd244(55)+acd244(&
      &57)
      acd244(52)=acd244(17)*acd244(52)
      acd244(55)=acd244(10)*acd244(58)
      acd244(56)=acd244(12)*acd244(61)
      acd244(57)=acd244(14)*acd244(64)
      acd244(52)=acd244(52)+acd244(57)+acd244(56)+acd244(55)
      brack(ninjaidxt2x0mu0)=acd244(52)
      brack(ninjaidxt1x0mu0)=acd244(53)
      brack(ninjaidxt1x1mu0)=acd244(54)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd244h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(96) :: acd244
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd244(1)=dotproduct(ninjaE3,spvak1k3)
      acd244(2)=dotproduct(ninjaE4,spvak7k2)
      acd244(3)=abb244(20)
      acd244(4)=dotproduct(ninjaE4,spval6k2)
      acd244(5)=abb244(21)
      acd244(6)=dotproduct(ninjaE4,spval5k2)
      acd244(7)=abb244(27)
      acd244(8)=dotproduct(ninjaE3,spvak7k2)
      acd244(9)=dotproduct(ninjaE4,spvak1k3)
      acd244(10)=dotproduct(ninjaE4,spvak1k2)
      acd244(11)=abb244(31)
      acd244(12)=dotproduct(ninjaE4,spvak4k2)
      acd244(13)=abb244(47)
      acd244(14)=dotproduct(ninjaE3,spval6k2)
      acd244(15)=abb244(24)
      acd244(16)=abb244(49)
      acd244(17)=dotproduct(ninjaE3,spvak1k2)
      acd244(18)=abb244(29)
      acd244(19)=dotproduct(ninjaE3,spval5k2)
      acd244(20)=abb244(30)
      acd244(21)=dotproduct(ninjaE3,spvak4k2)
      acd244(22)=abb244(60)
      acd244(23)=dotproduct(k2,ninjaA1)
      acd244(24)=abb244(46)
      acd244(25)=dotproduct(l5,ninjaA1)
      acd244(26)=abb244(22)
      acd244(27)=dotproduct(l6,ninjaA1)
      acd244(28)=dotproduct(k7,ninjaA1)
      acd244(29)=dotproduct(ninjaA0,ninjaA1)
      acd244(30)=dotproduct(ninjaA0,spvak1k3)
      acd244(31)=dotproduct(ninjaA1,spvak7k2)
      acd244(32)=dotproduct(ninjaA1,spval6k2)
      acd244(33)=dotproduct(ninjaA1,spval5k2)
      acd244(34)=dotproduct(ninjaA0,spvak7k2)
      acd244(35)=dotproduct(ninjaA1,spvak1k3)
      acd244(36)=dotproduct(ninjaA1,spvak1k2)
      acd244(37)=dotproduct(ninjaA1,spvak4k2)
      acd244(38)=dotproduct(ninjaA0,spval6k2)
      acd244(39)=dotproduct(ninjaA0,spvak1k2)
      acd244(40)=dotproduct(ninjaA0,spval5k2)
      acd244(41)=dotproduct(ninjaA0,spvak4k2)
      acd244(42)=dotproduct(ninjaA1,spval5k3)
      acd244(43)=abb244(16)
      acd244(44)=dotproduct(ninjaA1,spvak1l5)
      acd244(45)=abb244(17)
      acd244(46)=dotproduct(ninjaA1,spvak1k7)
      acd244(47)=abb244(18)
      acd244(48)=dotproduct(ninjaA1,spvak1l6)
      acd244(49)=abb244(19)
      acd244(50)=abb244(28)
      acd244(51)=abb244(37)
      acd244(52)=abb244(23)
      acd244(53)=abb244(26)
      acd244(54)=dotproduct(ninjaA1,spval6k3)
      acd244(55)=abb244(72)
      acd244(56)=dotproduct(ninjaA1,spvak7k3)
      acd244(57)=abb244(87)
      acd244(58)=dotproduct(ninjaA1,ninjaA1)
      acd244(59)=dotproduct(k2,ninjaA0)
      acd244(60)=dotproduct(l5,ninjaA0)
      acd244(61)=dotproduct(l6,ninjaA0)
      acd244(62)=dotproduct(k7,ninjaA0)
      acd244(63)=dotproduct(ninjaA0,ninjaA0)
      acd244(64)=dotproduct(ninjaA0,spval5k3)
      acd244(65)=dotproduct(ninjaA0,spvak1l5)
      acd244(66)=dotproduct(ninjaA0,spvak1k7)
      acd244(67)=dotproduct(ninjaA0,spvak1l6)
      acd244(68)=dotproduct(ninjaA0,spval6k3)
      acd244(69)=dotproduct(ninjaA0,spvak7k3)
      acd244(70)=abb244(61)
      acd244(71)=acd244(3)*acd244(9)
      acd244(72)=acd244(11)*acd244(10)
      acd244(73)=acd244(13)*acd244(12)
      acd244(71)=acd244(71)+acd244(73)+acd244(72)
      acd244(71)=acd244(8)*acd244(71)
      acd244(72)=acd244(3)*acd244(2)
      acd244(73)=acd244(7)*acd244(6)
      acd244(74)=acd244(5)*acd244(4)
      acd244(72)=acd244(74)+acd244(73)+acd244(72)
      acd244(72)=acd244(1)*acd244(72)
      acd244(73)=acd244(10)*acd244(15)
      acd244(74)=acd244(5)*acd244(9)
      acd244(75)=acd244(12)*acd244(16)
      acd244(73)=acd244(74)+acd244(73)+acd244(75)
      acd244(73)=acd244(14)*acd244(73)
      acd244(74)=acd244(13)*acd244(2)
      acd244(75)=acd244(16)*acd244(4)
      acd244(76)=acd244(20)*acd244(6)
      acd244(74)=acd244(76)+acd244(74)+acd244(75)
      acd244(74)=acd244(74)*acd244(21)
      acd244(75)=acd244(9)*acd244(7)
      acd244(76)=acd244(18)*acd244(10)
      acd244(75)=acd244(75)+acd244(76)
      acd244(75)=acd244(75)*acd244(19)
      acd244(76)=acd244(11)*acd244(2)
      acd244(77)=acd244(15)*acd244(4)
      acd244(76)=acd244(76)+acd244(77)
      acd244(76)=acd244(76)*acd244(17)
      acd244(77)=acd244(12)*acd244(20)*acd244(19)
      acd244(78)=acd244(6)*acd244(18)*acd244(17)
      acd244(71)=acd244(75)+acd244(76)+acd244(74)+acd244(77)+acd244(78)+acd244(&
      &22)+acd244(73)+acd244(72)+acd244(71)
      acd244(72)=ninjaP1*acd244(71)
      acd244(73)=acd244(34)*acd244(11)
      acd244(74)=acd244(38)*acd244(15)
      acd244(75)=acd244(40)*acd244(18)
      acd244(73)=acd244(73)+acd244(74)+acd244(75)+acd244(52)
      acd244(74)=acd244(36)*acd244(73)
      acd244(75)=acd244(31)*acd244(11)
      acd244(76)=acd244(32)*acd244(15)
      acd244(77)=acd244(33)*acd244(18)
      acd244(75)=acd244(77)+acd244(75)+acd244(76)
      acd244(76)=acd244(39)*acd244(75)
      acd244(77)=acd244(31)*acd244(3)
      acd244(78)=acd244(32)*acd244(5)
      acd244(79)=acd244(33)*acd244(7)
      acd244(77)=acd244(77)+acd244(78)+acd244(79)
      acd244(78)=acd244(30)*acd244(77)
      acd244(79)=acd244(34)*acd244(3)
      acd244(80)=acd244(38)*acd244(5)
      acd244(81)=acd244(40)*acd244(7)
      acd244(79)=acd244(81)+acd244(79)+acd244(80)
      acd244(80)=acd244(35)*acd244(79)
      acd244(81)=acd244(34)*acd244(13)
      acd244(82)=acd244(38)*acd244(16)
      acd244(83)=acd244(40)*acd244(20)
      acd244(81)=acd244(83)+acd244(81)+acd244(82)
      acd244(82)=acd244(37)*acd244(81)
      acd244(83)=acd244(31)*acd244(13)
      acd244(84)=acd244(32)*acd244(16)
      acd244(85)=acd244(33)*acd244(20)
      acd244(83)=acd244(85)+acd244(83)+acd244(84)
      acd244(84)=acd244(41)*acd244(83)
      acd244(85)=acd244(28)+acd244(27)+acd244(25)
      acd244(85)=acd244(26)*acd244(85)
      acd244(86)=acd244(50)*acd244(31)
      acd244(87)=acd244(51)*acd244(32)
      acd244(88)=acd244(53)*acd244(33)
      acd244(89)=acd244(23)*acd244(24)
      acd244(90)=acd244(29)*acd244(22)
      acd244(91)=acd244(42)*acd244(43)
      acd244(92)=acd244(44)*acd244(45)
      acd244(93)=acd244(46)*acd244(47)
      acd244(94)=acd244(48)*acd244(49)
      acd244(95)=acd244(54)*acd244(55)
      acd244(96)=acd244(56)*acd244(57)
      acd244(72)=acd244(96)+acd244(95)+acd244(94)+acd244(93)+acd244(92)+acd244(&
      &91)+2.0_ki*acd244(90)+acd244(89)+acd244(88)+acd244(87)+acd244(86)+acd244&
      &(84)+acd244(82)+acd244(80)+acd244(78)+acd244(76)+acd244(74)+acd244(85)+a&
      &cd244(72)
      acd244(74)=ninjaP2*acd244(71)
      acd244(75)=acd244(36)*acd244(75)
      acd244(76)=acd244(35)*acd244(77)
      acd244(77)=acd244(37)*acd244(83)
      acd244(78)=acd244(58)*acd244(22)
      acd244(74)=acd244(78)+acd244(77)+acd244(76)+acd244(75)+acd244(74)
      acd244(75)=ninjaP0*acd244(71)
      acd244(73)=acd244(39)*acd244(73)
      acd244(76)=acd244(30)*acd244(79)
      acd244(77)=acd244(41)*acd244(81)
      acd244(78)=acd244(62)+acd244(61)+acd244(60)
      acd244(78)=acd244(26)*acd244(78)
      acd244(79)=acd244(50)*acd244(34)
      acd244(80)=acd244(51)*acd244(38)
      acd244(81)=acd244(53)*acd244(40)
      acd244(82)=acd244(59)*acd244(24)
      acd244(83)=acd244(63)*acd244(22)
      acd244(84)=acd244(64)*acd244(43)
      acd244(85)=acd244(65)*acd244(45)
      acd244(86)=acd244(66)*acd244(47)
      acd244(87)=acd244(67)*acd244(49)
      acd244(88)=acd244(68)*acd244(55)
      acd244(89)=acd244(69)*acd244(57)
      acd244(73)=acd244(70)+acd244(89)+acd244(88)+acd244(87)+acd244(86)+acd244(&
      &85)+acd244(84)+acd244(83)+acd244(82)+acd244(81)+acd244(80)+acd244(79)+ac&
      &d244(77)+acd244(76)+acd244(78)+acd244(73)+acd244(75)
      brack(ninjaidxt0x0mu0)=acd244(73)
      brack(ninjaidxt0x0mu2)=acd244(71)
      brack(ninjaidxt0x1mu0)=acd244(72)
      brack(ninjaidxt0x2mu0)=acd244(74)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d244h4_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd244h4
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k7+k6
	     vecA0(1:4) = - a0(0:3) - qshift(1:4)
	     vecA1(1:4) = - a1(0:3)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_21,vecA0,vecA1,vecB,vecC,param,coeffs)
      if (deg.le.(1+(0))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p0_dbaru_epnebbbarg_d244h4l132
