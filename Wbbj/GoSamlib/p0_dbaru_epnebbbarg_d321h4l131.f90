module     p0_dbaru_epnebbbarg_d321h4l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d321h4l131.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt2mu0 = 0
   integer, parameter :: ninjaidxt1mu0 = 1
   integer, parameter :: ninjaidxt0mu0 = 2
   integer, parameter :: ninjaidxt0mu2 = 3
   public :: numerator_t3
contains
!---#[ subroutine brack_31:
   pure subroutine brack_31(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd321h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(22) :: acd321
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd321(1)=dotproduct(k2,ninjaE3)
      acd321(2)=dotproduct(ninjaE3,spval5k2)
      acd321(3)=dotproduct(ninjaE3,spvak7k2)
      acd321(4)=abb321(15)
      acd321(5)=dotproduct(ninjaE3,spval6k2)
      acd321(6)=abb321(45)
      acd321(7)=dotproduct(k3,ninjaE3)
      acd321(8)=dotproduct(k4,ninjaE3)
      acd321(9)=dotproduct(ninjaE3,spvak1k2)
      acd321(10)=abb321(19)
      acd321(11)=dotproduct(ninjaE3,spvak4k2)
      acd321(12)=abb321(26)
      acd321(13)=dotproduct(ninjaE3,spvak4k3)
      acd321(14)=abb321(33)
      acd321(15)=abb321(20)
      acd321(16)=abb321(47)
      acd321(17)=abb321(34)
      acd321(18)=acd321(13)*acd321(17)
      acd321(19)=acd321(11)*acd321(16)
      acd321(20)=acd321(9)*acd321(15)
      acd321(21)=-acd321(8)+acd321(1)-acd321(7)
      acd321(22)=-acd321(6)*acd321(21)
      acd321(18)=acd321(22)+acd321(20)+acd321(18)+acd321(19)
      acd321(18)=acd321(5)*acd321(18)
      acd321(19)=acd321(13)*acd321(14)
      acd321(20)=acd321(11)*acd321(12)
      acd321(22)=acd321(9)*acd321(10)
      acd321(21)=-acd321(4)*acd321(21)
      acd321(19)=acd321(21)+acd321(22)+acd321(19)+acd321(20)
      acd321(19)=acd321(2)*acd321(19)
      acd321(18)=acd321(18)+acd321(19)
      acd321(18)=acd321(3)*acd321(18)
      brack(ninjaidxt2mu0)=acd321(18)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd321h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(113) :: acd321
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd321(1)=dotproduct(k2,ninjaE3)
      acd321(2)=dotproduct(ninjaE3,spval5k2)
      acd321(3)=dotproduct(ninjaE4,spvak7k2)
      acd321(4)=abb321(15)
      acd321(5)=dotproduct(ninjaE3,spvak7k2)
      acd321(6)=dotproduct(ninjaE4,spval5k2)
      acd321(7)=dotproduct(ninjaE4,spval6k2)
      acd321(8)=abb321(45)
      acd321(9)=dotproduct(ninjaE3,spval6k2)
      acd321(10)=dotproduct(k2,ninjaE4)
      acd321(11)=dotproduct(k3,ninjaE3)
      acd321(12)=dotproduct(k3,ninjaE4)
      acd321(13)=dotproduct(k4,ninjaE3)
      acd321(14)=dotproduct(k4,ninjaE4)
      acd321(15)=dotproduct(ninjaE4,spvak1k2)
      acd321(16)=abb321(19)
      acd321(17)=dotproduct(ninjaE4,spvak4k3)
      acd321(18)=abb321(33)
      acd321(19)=dotproduct(ninjaE4,spvak4k2)
      acd321(20)=abb321(26)
      acd321(21)=dotproduct(ninjaE3,spvak1k2)
      acd321(22)=dotproduct(ninjaE3,spvak4k3)
      acd321(23)=dotproduct(ninjaE3,spvak4k2)
      acd321(24)=abb321(20)
      acd321(25)=abb321(34)
      acd321(26)=abb321(47)
      acd321(27)=abb321(70)
      acd321(28)=abb321(13)
      acd321(29)=abb321(46)
      acd321(30)=dotproduct(k2,ninjaA)
      acd321(31)=dotproduct(ninjaA,spval5k2)
      acd321(32)=dotproduct(ninjaA,spvak7k2)
      acd321(33)=dotproduct(ninjaA,spval6k2)
      acd321(34)=abb321(61)
      acd321(35)=dotproduct(k3,ninjaA)
      acd321(36)=abb321(35)
      acd321(37)=dotproduct(k4,ninjaA)
      acd321(38)=dotproduct(l5,ninjaE3)
      acd321(39)=abb321(55)
      acd321(40)=dotproduct(l6,ninjaE3)
      acd321(41)=abb321(41)
      acd321(42)=dotproduct(k7,ninjaE3)
      acd321(43)=abb321(38)
      acd321(44)=abb321(73)
      acd321(45)=dotproduct(ninjaA,ninjaE3)
      acd321(46)=dotproduct(ninjaA,spvak1k2)
      acd321(47)=dotproduct(ninjaA,spvak4k3)
      acd321(48)=dotproduct(ninjaA,spvak4k2)
      acd321(49)=abb321(12)
      acd321(50)=abb321(71)
      acd321(51)=abb321(16)
      acd321(52)=abb321(31)
      acd321(53)=abb321(22)
      acd321(54)=dotproduct(ninjaE3,spvak1k3)
      acd321(55)=abb321(23)
      acd321(56)=abb321(37)
      acd321(57)=dotproduct(ninjaE3,spval6l5)
      acd321(58)=abb321(30)
      acd321(59)=dotproduct(ninjaE3,spval6k3)
      acd321(60)=abb321(49)
      acd321(61)=dotproduct(ninjaE3,spval6k7)
      acd321(62)=abb321(29)
      acd321(63)=dotproduct(l5,ninjaA)
      acd321(64)=abb321(44)
      acd321(65)=dotproduct(l6,ninjaA)
      acd321(66)=dotproduct(k7,ninjaA)
      acd321(67)=abb321(27)
      acd321(68)=dotproduct(ninjaA,ninjaA)
      acd321(69)=abb321(21)
      acd321(70)=dotproduct(ninjaA,spvak1k3)
      acd321(71)=dotproduct(ninjaA,spval6l5)
      acd321(72)=dotproduct(ninjaA,spval6k3)
      acd321(73)=dotproduct(ninjaA,spval6k7)
      acd321(74)=abb321(14)
      acd321(75)=abb321(17)
      acd321(76)=abb321(18)
      acd321(77)=abb321(50)
      acd321(78)=abb321(43)
      acd321(79)=abb321(32)
      acd321(80)=abb321(79)
      acd321(81)=acd321(20)*acd321(19)
      acd321(82)=acd321(18)*acd321(17)
      acd321(83)=acd321(16)*acd321(15)
      acd321(84)=-acd321(14)+acd321(10)-acd321(12)
      acd321(85)=acd321(84)*acd321(4)
      acd321(81)=acd321(81)+acd321(82)+acd321(83)-acd321(85)
      acd321(81)=acd321(81)*acd321(2)
      acd321(82)=acd321(26)*acd321(19)
      acd321(83)=acd321(25)*acd321(17)
      acd321(85)=acd321(24)*acd321(15)
      acd321(84)=acd321(84)*acd321(8)
      acd321(82)=acd321(82)+acd321(83)+acd321(85)-acd321(84)
      acd321(82)=acd321(82)*acd321(9)
      acd321(83)=acd321(7)*acd321(26)
      acd321(84)=acd321(6)*acd321(20)
      acd321(83)=acd321(83)+acd321(84)
      acd321(83)=acd321(83)*acd321(23)
      acd321(84)=acd321(7)*acd321(25)
      acd321(85)=acd321(6)*acd321(18)
      acd321(84)=acd321(84)+acd321(85)
      acd321(84)=acd321(84)*acd321(22)
      acd321(85)=acd321(7)*acd321(24)
      acd321(86)=acd321(6)*acd321(16)
      acd321(85)=acd321(85)+acd321(86)
      acd321(85)=acd321(85)*acd321(21)
      acd321(86)=acd321(11)+acd321(13)
      acd321(87)=acd321(1)-acd321(86)
      acd321(88)=acd321(87)*acd321(4)
      acd321(89)=acd321(6)*acd321(88)
      acd321(90)=acd321(87)*acd321(8)
      acd321(91)=acd321(7)*acd321(90)
      acd321(81)=acd321(83)+acd321(84)+acd321(85)+acd321(27)-acd321(89)-acd321(&
      &91)+acd321(81)+acd321(82)
      acd321(82)=acd321(5)*acd321(81)
      acd321(83)=acd321(22)*acd321(18)
      acd321(84)=acd321(23)*acd321(20)
      acd321(83)=acd321(83)+acd321(84)
      acd321(84)=acd321(21)*acd321(16)
      acd321(84)=acd321(84)+acd321(83)
      acd321(85)=acd321(84)*acd321(3)
      acd321(89)=acd321(87)*acd321(3)
      acd321(91)=acd321(89)*acd321(4)
      acd321(85)=acd321(91)-acd321(85)
      acd321(85)=acd321(85)*acd321(2)
      acd321(91)=acd321(21)*acd321(28)
      acd321(85)=acd321(85)-acd321(91)
      acd321(92)=acd321(22)*acd321(25)
      acd321(93)=acd321(23)*acd321(26)
      acd321(92)=acd321(92)+acd321(93)
      acd321(93)=acd321(21)*acd321(24)
      acd321(93)=acd321(93)+acd321(92)
      acd321(94)=acd321(93)*acd321(3)
      acd321(89)=acd321(89)*acd321(8)
      acd321(89)=-acd321(29)+acd321(89)-acd321(94)
      acd321(94)=-acd321(9)*acd321(89)
      acd321(82)=acd321(82)+acd321(94)-acd321(85)
      acd321(94)=acd321(26)*acd321(48)
      acd321(95)=acd321(25)*acd321(47)
      acd321(96)=acd321(24)*acd321(46)
      acd321(94)=acd321(94)+acd321(95)+acd321(96)+acd321(52)
      acd321(95)=acd321(35)+acd321(37)
      acd321(96)=acd321(30)-acd321(95)
      acd321(97)=acd321(96)*acd321(8)
      acd321(97)=acd321(97)-acd321(94)
      acd321(97)=acd321(97)*acd321(9)
      acd321(98)=acd321(20)*acd321(48)
      acd321(99)=acd321(18)*acd321(47)
      acd321(100)=acd321(16)*acd321(46)
      acd321(98)=acd321(49)+acd321(100)+acd321(98)+acd321(99)
      acd321(99)=acd321(96)*acd321(4)
      acd321(99)=acd321(99)-acd321(98)
      acd321(99)=acd321(99)*acd321(2)
      acd321(100)=acd321(31)*acd321(16)
      acd321(101)=acd321(33)*acd321(24)
      acd321(100)=acd321(51)+acd321(100)+acd321(101)
      acd321(100)=acd321(100)*acd321(21)
      acd321(83)=acd321(83)*acd321(31)
      acd321(92)=acd321(92)*acd321(33)
      acd321(101)=acd321(8)*acd321(33)
      acd321(102)=acd321(4)*acd321(31)
      acd321(101)=acd321(101)+acd321(102)
      acd321(87)=acd321(101)*acd321(87)
      acd321(86)=acd321(86)*acd321(36)
      acd321(102)=acd321(59)*acd321(60)
      acd321(103)=acd321(57)*acd321(58)
      acd321(104)=acd321(54)*acd321(55)
      acd321(105)=acd321(41)*acd321(40)
      acd321(106)=acd321(38)*acd321(39)
      acd321(107)=acd321(42)*acd321(43)
      acd321(108)=acd321(44)*acd321(61)
      acd321(109)=acd321(22)*acd321(53)
      acd321(110)=acd321(23)*acd321(56)
      acd321(111)=acd321(1)*acd321(34)
      acd321(112)=2.0_ki*acd321(45)
      acd321(113)=acd321(112)*acd321(27)
      acd321(83)=-acd321(97)-acd321(99)+acd321(86)-acd321(87)+acd321(105)+acd32&
      &1(106)+acd321(107)-acd321(108)+acd321(102)+acd321(83)+acd321(92)+acd321(&
      &103)+acd321(104)+acd321(100)+acd321(109)+acd321(110)+acd321(111)+acd321(&
      &113)
      acd321(86)=acd321(5)*acd321(50)
      acd321(86)=acd321(86)+acd321(83)
      acd321(86)=acd321(5)*acd321(86)
      acd321(84)=-acd321(88)+acd321(84)
      acd321(84)=acd321(2)*acd321(84)
      acd321(87)=-acd321(90)+acd321(93)
      acd321(87)=acd321(9)*acd321(87)
      acd321(84)=acd321(84)+acd321(87)
      acd321(84)=acd321(32)*acd321(84)
      acd321(87)=acd321(112)*acd321(91)
      acd321(88)=acd321(44)*acd321(42)
      acd321(90)=acd321(112)*acd321(29)
      acd321(88)=acd321(88)+acd321(90)
      acd321(90)=acd321(9)*acd321(88)
      acd321(84)=acd321(86)+acd321(84)+acd321(87)+acd321(90)
      acd321(83)=acd321(32)*acd321(83)
      acd321(81)=ninjaP*acd321(81)
      acd321(86)=acd321(31)*acd321(98)
      acd321(87)=acd321(33)*acd321(94)
      acd321(90)=-acd321(96)*acd321(101)
      acd321(91)=acd321(36)*acd321(95)
      acd321(92)=acd321(60)*acd321(72)
      acd321(93)=acd321(58)*acd321(71)
      acd321(94)=acd321(55)*acd321(70)
      acd321(95)=acd321(43)*acd321(66)
      acd321(96)=acd321(41)*acd321(65)
      acd321(97)=acd321(39)*acd321(63)
      acd321(98)=acd321(27)*acd321(68)
      acd321(99)=-acd321(44)*acd321(73)
      acd321(100)=acd321(48)*acd321(56)
      acd321(101)=acd321(47)*acd321(53)
      acd321(102)=acd321(30)*acd321(34)
      acd321(103)=acd321(46)*acd321(51)
      acd321(104)=acd321(32)*acd321(50)
      acd321(81)=2.0_ki*acd321(104)+acd321(87)+acd321(86)+acd321(103)+acd321(10&
      &2)+acd321(101)+acd321(100)+acd321(99)+acd321(98)+acd321(97)+acd321(96)+a&
      &cd321(95)+acd321(94)+acd321(93)+acd321(74)+acd321(92)+acd321(81)+acd321(&
      &90)+acd321(91)
      acd321(81)=acd321(5)*acd321(81)
      acd321(86)=-ninjaP*acd321(89)
      acd321(87)=acd321(29)*acd321(68)
      acd321(89)=acd321(44)*acd321(66)
      acd321(86)=acd321(86)+acd321(89)+acd321(76)+acd321(87)
      acd321(86)=acd321(9)*acd321(86)
      acd321(85)=-ninjaP*acd321(85)
      acd321(87)=acd321(46)*acd321(28)
      acd321(87)=acd321(87)+acd321(69)
      acd321(87)=acd321(112)*acd321(87)
      acd321(88)=acd321(33)*acd321(88)
      acd321(89)=acd321(59)*acd321(80)
      acd321(90)=acd321(57)*acd321(79)
      acd321(91)=acd321(54)*acd321(77)
      acd321(92)=acd321(38)*acd321(64)
      acd321(93)=acd321(42)*acd321(67)
      acd321(94)=acd321(23)*acd321(78)
      acd321(95)=acd321(1)*acd321(62)
      acd321(96)=acd321(28)*acd321(68)
      acd321(96)=acd321(75)+acd321(96)
      acd321(96)=acd321(21)*acd321(96)
      acd321(81)=acd321(81)+acd321(83)+acd321(86)+acd321(96)+acd321(88)+acd321(&
      &95)+acd321(94)+acd321(93)+acd321(92)+acd321(91)+acd321(89)+acd321(90)+ac&
      &d321(87)+acd321(85)
      brack(ninjaidxt1mu0)=acd321(84)
      brack(ninjaidxt0mu0)=acd321(81)
      brack(ninjaidxt0mu2)=acd321(82)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d321h4_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd321h4
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k7+k6
	     vecA(1:4) = + a(0:3) - qshift(1:4)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d321h4l131
