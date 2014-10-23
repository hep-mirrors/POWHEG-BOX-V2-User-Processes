module     p0_dbaru_epnebbbarg_d321h6l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity6d321h6l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd321h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(22) :: acd321
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd321(1)=dotproduct(k2,ninjaE3)
      acd321(2)=dotproduct(ninjaE3,spvak7k2)
      acd321(3)=abb321(48)
      acd321(4)=dotproduct(k3,ninjaE3)
      acd321(5)=dotproduct(k4,ninjaE3)
      acd321(6)=dotproduct(ninjaE3,spvak1k2)
      acd321(7)=abb321(34)
      acd321(8)=dotproduct(ninjaE3,spval5l6)
      acd321(9)=abb321(29)
      acd321(10)=dotproduct(ninjaE3,spvak4k2)
      acd321(11)=abb321(33)
      acd321(12)=dotproduct(ninjaE3,spvak4k3)
      acd321(13)=abb321(89)
      acd321(14)=abb321(25)
      acd321(15)=abb321(54)
      acd321(16)=abb321(90)
      acd321(17)=acd321(4)+acd321(5)
      acd321(18)=-acd321(1)+acd321(17)
      acd321(18)=acd321(3)*acd321(18)
      acd321(19)=acd321(12)*acd321(13)
      acd321(20)=acd321(10)*acd321(11)
      acd321(21)=acd321(6)*acd321(7)
      acd321(22)=acd321(8)*acd321(9)
      acd321(18)=acd321(22)+acd321(21)+acd321(19)+acd321(20)+acd321(18)
      acd321(18)=acd321(1)*acd321(18)
      acd321(19)=acd321(12)*acd321(16)
      acd321(20)=acd321(10)*acd321(15)
      acd321(21)=acd321(6)*acd321(14)
      acd321(17)=-acd321(9)*acd321(17)
      acd321(17)=acd321(17)+acd321(21)+acd321(19)+acd321(20)
      acd321(17)=acd321(8)*acd321(17)
      acd321(17)=acd321(17)+acd321(18)
      acd321(17)=acd321(2)*acd321(17)
      brack(ninjaidxt1x0mu0)=acd321(17)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd321h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(101) :: acd321
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd321(1)=dotproduct(k2,ninjaA1)
      acd321(2)=dotproduct(k2,ninjaE3)
      acd321(3)=dotproduct(ninjaE3,spvak7k2)
      acd321(4)=abb321(48)
      acd321(5)=dotproduct(k3,ninjaE3)
      acd321(6)=dotproduct(k4,ninjaE3)
      acd321(7)=dotproduct(ninjaE3,spval5l6)
      acd321(8)=abb321(29)
      acd321(9)=dotproduct(ninjaE3,spvak1k2)
      acd321(10)=abb321(34)
      acd321(11)=dotproduct(ninjaE3,spvak4k2)
      acd321(12)=abb321(33)
      acd321(13)=dotproduct(ninjaE3,spvak4k3)
      acd321(14)=abb321(89)
      acd321(15)=dotproduct(ninjaA1,spvak7k2)
      acd321(16)=dotproduct(k3,ninjaA1)
      acd321(17)=dotproduct(k4,ninjaA1)
      acd321(18)=dotproduct(ninjaA1,spval5l6)
      acd321(19)=dotproduct(ninjaA1,spvak1k2)
      acd321(20)=dotproduct(ninjaA1,spvak4k2)
      acd321(21)=dotproduct(ninjaA1,spvak4k3)
      acd321(22)=abb321(25)
      acd321(23)=abb321(54)
      acd321(24)=abb321(90)
      acd321(25)=dotproduct(k2,ninjaA0)
      acd321(26)=dotproduct(ninjaA0,spvak7k2)
      acd321(27)=dotproduct(k3,ninjaA0)
      acd321(28)=dotproduct(k4,ninjaA0)
      acd321(29)=dotproduct(k7,ninjaE3)
      acd321(30)=abb321(113)
      acd321(31)=dotproduct(ninjaA0,ninjaE3)
      acd321(32)=abb321(35)
      acd321(33)=dotproduct(ninjaA0,spval5l6)
      acd321(34)=dotproduct(ninjaA0,spvak1k2)
      acd321(35)=dotproduct(ninjaA0,spvak4k2)
      acd321(36)=dotproduct(ninjaA0,spvak4k3)
      acd321(37)=abb321(16)
      acd321(38)=abb321(110)
      acd321(39)=abb321(107)
      acd321(40)=abb321(55)
      acd321(41)=dotproduct(l5,ninjaE3)
      acd321(42)=abb321(42)
      acd321(43)=dotproduct(l6,ninjaE3)
      acd321(44)=abb321(20)
      acd321(45)=abb321(38)
      acd321(46)=dotproduct(ninjaE3,spvak7l6)
      acd321(47)=abb321(43)
      acd321(48)=abb321(41)
      acd321(49)=abb321(92)
      acd321(50)=abb321(69)
      acd321(51)=abb321(15)
      acd321(52)=dotproduct(ninjaE3,spvak1k3)
      acd321(53)=abb321(40)
      acd321(54)=abb321(81)
      acd321(55)=dotproduct(ninjaE3,spvak1l6)
      acd321(56)=abb321(31)
      acd321(57)=abb321(21)
      acd321(58)=abb321(61)
      acd321(59)=abb321(64)
      acd321(60)=abb321(12)
      acd321(61)=abb321(13)
      acd321(62)=abb321(18)
      acd321(63)=abb321(19)
      acd321(64)=abb321(30)
      acd321(65)=dotproduct(ninjaE3,spvak2k3)
      acd321(66)=abb321(22)
      acd321(67)=abb321(37)
      acd321(68)=dotproduct(ninjaE3,spvak4l6)
      acd321(69)=abb321(59)
      acd321(70)=abb321(70)
      acd321(71)=dotproduct(ninjaE3,spvak2k7)
      acd321(72)=abb321(72)
      acd321(73)=dotproduct(ninjaE3,spvak2l5)
      acd321(74)=abb321(80)
      acd321(75)=dotproduct(ninjaE3,spvak2l6)
      acd321(76)=abb321(87)
      acd321(77)=acd321(8)*acd321(18)
      acd321(78)=acd321(14)*acd321(21)
      acd321(79)=acd321(12)*acd321(20)
      acd321(80)=acd321(10)*acd321(19)
      acd321(81)=acd321(16)+acd321(17)
      acd321(82)=-2.0_ki*acd321(1)+acd321(81)
      acd321(82)=acd321(4)*acd321(82)
      acd321(77)=acd321(77)+acd321(82)+acd321(80)+acd321(78)+acd321(79)
      acd321(77)=acd321(2)*acd321(77)
      acd321(78)=acd321(24)*acd321(21)
      acd321(79)=acd321(23)*acd321(20)
      acd321(80)=acd321(22)*acd321(19)
      acd321(81)=acd321(1)-acd321(81)
      acd321(81)=acd321(8)*acd321(81)
      acd321(78)=acd321(81)+acd321(80)+acd321(78)+acd321(79)
      acd321(78)=acd321(7)*acd321(78)
      acd321(79)=acd321(18)*acd321(24)
      acd321(80)=acd321(1)*acd321(14)
      acd321(79)=acd321(79)+acd321(80)
      acd321(79)=acd321(13)*acd321(79)
      acd321(80)=acd321(18)*acd321(23)
      acd321(81)=acd321(1)*acd321(12)
      acd321(80)=acd321(80)+acd321(81)
      acd321(80)=acd321(11)*acd321(80)
      acd321(81)=acd321(18)*acd321(22)
      acd321(82)=acd321(1)*acd321(10)
      acd321(81)=acd321(81)+acd321(82)
      acd321(81)=acd321(9)*acd321(81)
      acd321(82)=acd321(5)+acd321(6)
      acd321(83)=acd321(82)*acd321(4)
      acd321(84)=acd321(1)*acd321(83)
      acd321(85)=acd321(82)*acd321(8)
      acd321(86)=-acd321(18)*acd321(85)
      acd321(77)=acd321(77)+acd321(78)+acd321(86)+acd321(84)+acd321(81)+acd321(&
      &79)+acd321(80)
      acd321(77)=acd321(3)*acd321(77)
      acd321(78)=acd321(13)*acd321(14)
      acd321(79)=acd321(11)*acd321(12)
      acd321(80)=acd321(9)*acd321(10)
      acd321(81)=acd321(7)*acd321(8)
      acd321(84)=acd321(2)*acd321(4)
      acd321(78)=acd321(83)+acd321(81)-acd321(84)+acd321(80)+acd321(78)+acd321(&
      &79)
      acd321(79)=acd321(2)*acd321(15)*acd321(78)
      acd321(80)=acd321(13)*acd321(24)
      acd321(81)=acd321(11)*acd321(23)
      acd321(84)=acd321(9)*acd321(22)
      acd321(80)=acd321(85)-acd321(84)-acd321(80)-acd321(81)
      acd321(81)=-acd321(7)*acd321(15)*acd321(80)
      acd321(77)=acd321(77)+acd321(81)+acd321(79)
      acd321(79)=acd321(8)*acd321(33)
      acd321(81)=acd321(14)*acd321(36)
      acd321(84)=acd321(12)*acd321(35)
      acd321(86)=acd321(10)*acd321(34)
      acd321(87)=acd321(27)+acd321(28)
      acd321(88)=-2.0_ki*acd321(25)+acd321(87)
      acd321(88)=acd321(4)*acd321(88)
      acd321(79)=acd321(79)+acd321(88)+acd321(86)+acd321(84)+acd321(37)+acd321(&
      &81)
      acd321(79)=acd321(2)*acd321(79)
      acd321(81)=acd321(24)*acd321(36)
      acd321(84)=acd321(23)*acd321(35)
      acd321(86)=acd321(22)*acd321(34)
      acd321(87)=acd321(25)-acd321(87)
      acd321(87)=acd321(8)*acd321(87)
      acd321(81)=acd321(87)+acd321(86)+acd321(84)+acd321(60)+acd321(81)
      acd321(81)=acd321(7)*acd321(81)
      acd321(84)=acd321(24)*acd321(33)
      acd321(86)=acd321(25)*acd321(14)
      acd321(84)=acd321(86)+acd321(70)+acd321(84)
      acd321(84)=acd321(13)*acd321(84)
      acd321(86)=acd321(23)*acd321(33)
      acd321(87)=acd321(25)*acd321(12)
      acd321(86)=acd321(87)+acd321(67)+acd321(86)
      acd321(86)=acd321(11)*acd321(86)
      acd321(87)=acd321(22)*acd321(33)
      acd321(88)=acd321(25)*acd321(10)
      acd321(87)=acd321(88)+acd321(64)+acd321(87)
      acd321(87)=acd321(9)*acd321(87)
      acd321(88)=acd321(40)*acd321(82)
      acd321(89)=acd321(75)*acd321(76)
      acd321(90)=acd321(73)*acd321(74)
      acd321(91)=acd321(71)*acd321(72)
      acd321(92)=acd321(68)*acd321(69)
      acd321(93)=acd321(65)*acd321(66)
      acd321(94)=acd321(43)*acd321(44)
      acd321(95)=acd321(41)*acd321(42)
      acd321(96)=acd321(55)*acd321(63)
      acd321(97)=acd321(52)*acd321(61)
      acd321(98)=acd321(46)*acd321(62)
      acd321(99)=acd321(29)*acd321(45)
      acd321(100)=2.0_ki*acd321(31)
      acd321(101)=acd321(51)*acd321(100)
      acd321(83)=acd321(25)*acd321(83)
      acd321(85)=-acd321(33)*acd321(85)
      acd321(79)=acd321(79)+acd321(81)+acd321(85)+acd321(83)+acd321(87)+acd321(&
      &86)+acd321(84)+acd321(101)+acd321(99)+acd321(98)+acd321(97)+acd321(96)+a&
      &cd321(95)+acd321(94)+acd321(93)+acd321(92)+acd321(91)+acd321(89)+acd321(&
      &90)+acd321(88)
      acd321(79)=acd321(3)*acd321(79)
      acd321(78)=acd321(26)*acd321(78)
      acd321(81)=acd321(29)*acd321(30)
      acd321(83)=acd321(32)*acd321(100)
      acd321(78)=acd321(81)+acd321(83)+acd321(78)
      acd321(78)=acd321(2)*acd321(78)
      acd321(80)=-acd321(7)*acd321(26)*acd321(80)
      acd321(81)=-acd321(55)*acd321(56)
      acd321(83)=acd321(52)*acd321(53)
      acd321(84)=acd321(46)*acd321(54)
      acd321(81)=acd321(84)+acd321(81)+acd321(83)
      acd321(81)=acd321(81)*acd321(100)
      acd321(83)=acd321(29)*acd321(38)
      acd321(84)=acd321(100)*acd321(39)
      acd321(83)=acd321(83)+acd321(84)
      acd321(82)=-acd321(83)*acd321(82)
      acd321(83)=acd321(29)*acd321(50)
      acd321(84)=acd321(59)*acd321(100)
      acd321(83)=acd321(83)+acd321(84)
      acd321(83)=acd321(13)*acd321(83)
      acd321(84)=acd321(29)*acd321(49)
      acd321(85)=acd321(58)*acd321(100)
      acd321(84)=acd321(84)+acd321(85)
      acd321(84)=acd321(11)*acd321(84)
      acd321(85)=acd321(29)*acd321(48)
      acd321(86)=acd321(57)*acd321(100)
      acd321(85)=acd321(85)+acd321(86)
      acd321(85)=acd321(9)*acd321(85)
      acd321(86)=acd321(29)*acd321(46)*acd321(47)
      acd321(78)=acd321(79)+acd321(78)+acd321(80)+acd321(85)+acd321(84)+acd321(&
      &83)+acd321(86)+acd321(81)+acd321(82)
      brack(ninjaidxt0x0mu0)=acd321(78)
      brack(ninjaidxt0x1mu0)=acd321(77)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d321h6_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd321h6
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k7+k6
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
end module     p0_dbaru_epnebbbarg_d321h6l132
