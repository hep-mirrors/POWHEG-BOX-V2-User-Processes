module     p0_dbaru_epnebbbarg_d229h7l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d229h7l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd229h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(88) :: acd229
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd229(1)=dotproduct(k2,ninjaE3)
      acd229(2)=abb229(43)
      acd229(3)=dotproduct(k3,ninjaE3)
      acd229(4)=dotproduct(k4,ninjaE3)
      acd229(5)=dotproduct(l5,ninjaE3)
      acd229(6)=abb229(608)
      acd229(7)=dotproduct(l6,ninjaE3)
      acd229(8)=abb229(463)
      acd229(9)=dotproduct(k7,ninjaE3)
      acd229(10)=abb229(621)
      acd229(11)=dotproduct(ninjaE3,spvak1k2)
      acd229(12)=abb229(33)
      acd229(13)=dotproduct(ninjaE3,spvak4k2)
      acd229(14)=abb229(32)
      acd229(15)=dotproduct(ninjaE3,spvak7k2)
      acd229(16)=abb229(245)
      acd229(17)=dotproduct(ninjaE3,spvak7l6)
      acd229(18)=abb229(88)
      acd229(19)=dotproduct(ninjaE3,spvak2l6)
      acd229(20)=abb229(30)
      acd229(21)=dotproduct(ninjaE3,spvak2l5)
      acd229(22)=abb229(31)
      acd229(23)=dotproduct(ninjaE3,spvak4k3)
      acd229(24)=abb229(70)
      acd229(25)=dotproduct(ninjaE3,spval6l5)
      acd229(26)=abb229(171)
      acd229(27)=dotproduct(ninjaE3,spvak7l5)
      acd229(28)=abb229(148)
      acd229(29)=dotproduct(ninjaE3,spval5l6)
      acd229(30)=abb229(154)
      acd229(31)=dotproduct(ninjaE3,spvak1k3)
      acd229(32)=abb229(65)
      acd229(33)=abb229(40)
      acd229(34)=abb229(38)
      acd229(35)=abb229(71)
      acd229(36)=abb229(64)
      acd229(37)=abb229(16)
      acd229(38)=abb229(29)
      acd229(39)=abb229(59)
      acd229(40)=abb229(63)
      acd229(41)=abb229(35)
      acd229(42)=abb229(23)
      acd229(43)=abb229(37)
      acd229(44)=abb229(60)
      acd229(45)=abb229(55)
      acd229(46)=abb229(52)
      acd229(47)=abb229(46)
      acd229(48)=abb229(61)
      acd229(49)=abb229(39)
      acd229(50)=abb229(53)
      acd229(51)=abb229(57)
      acd229(52)=abb229(17)
      acd229(53)=abb229(22)
      acd229(54)=abb229(51)
      acd229(55)=abb229(49)
      acd229(56)=abb229(42)
      acd229(57)=abb229(41)
      acd229(58)=abb229(44)
      acd229(59)=abb229(89)
      acd229(60)=abb229(83)
      acd229(61)=abb229(86)
      acd229(62)=abb229(77)
      acd229(63)=abb229(48)
      acd229(64)=abb229(62)
      acd229(65)=abb229(34)
      acd229(66)=abb229(58)
      acd229(67)=abb229(95)
      acd229(68)=abb229(99)
      acd229(69)=abb229(157)
      acd229(70)=abb229(84)
      acd229(71)=abb229(73)
      acd229(72)=abb229(45)
      acd229(73)=acd229(29)*acd229(30)
      acd229(74)=acd229(27)*acd229(28)
      acd229(75)=acd229(25)*acd229(26)
      acd229(76)=acd229(21)*acd229(22)
      acd229(77)=acd229(19)*acd229(20)
      acd229(78)=acd229(17)*acd229(18)
      acd229(79)=acd229(15)*acd229(16)
      acd229(80)=acd229(9)*acd229(10)
      acd229(81)=acd229(7)*acd229(8)
      acd229(82)=acd229(5)*acd229(6)
      acd229(73)=-acd229(78)-acd229(77)-acd229(76)-acd229(75)-acd229(73)+acd229&
      &(74)+acd229(79)+acd229(80)+acd229(81)+acd229(82)
      acd229(74)=acd229(3)+acd229(4)
      acd229(75)=-acd229(73)*acd229(74)
      acd229(76)=acd229(29)*acd229(72)
      acd229(77)=acd229(27)*acd229(71)
      acd229(78)=acd229(25)*acd229(70)
      acd229(79)=acd229(21)*acd229(66)
      acd229(80)=acd229(19)*acd229(64)
      acd229(81)=acd229(17)*acd229(62)
      acd229(82)=acd229(15)*acd229(60)
      acd229(83)=acd229(9)*acd229(44)
      acd229(84)=acd229(7)*acd229(40)
      acd229(85)=acd229(5)*acd229(36)
      acd229(76)=acd229(85)+acd229(84)+acd229(83)+acd229(82)+acd229(81)+acd229(&
      &80)+acd229(79)+acd229(78)+acd229(76)+acd229(77)
      acd229(76)=acd229(31)*acd229(76)
      acd229(77)=acd229(29)*acd229(69)
      acd229(78)=acd229(27)*acd229(68)
      acd229(79)=acd229(25)*acd229(67)
      acd229(80)=acd229(21)*acd229(65)
      acd229(81)=acd229(19)*acd229(63)
      acd229(82)=acd229(17)*acd229(61)
      acd229(83)=acd229(15)*acd229(59)
      acd229(84)=acd229(9)*acd229(43)
      acd229(85)=acd229(7)*acd229(39)
      acd229(86)=acd229(5)*acd229(35)
      acd229(77)=acd229(86)+acd229(85)+acd229(84)+acd229(83)+acd229(82)+acd229(&
      &81)+acd229(80)+acd229(79)+acd229(77)+acd229(78)
      acd229(77)=acd229(23)*acd229(77)
      acd229(78)=acd229(29)*acd229(58)
      acd229(79)=acd229(27)*acd229(57)
      acd229(80)=acd229(25)*acd229(56)
      acd229(81)=acd229(21)*acd229(55)
      acd229(82)=acd229(19)*acd229(54)
      acd229(83)=acd229(17)*acd229(53)
      acd229(84)=acd229(15)*acd229(52)
      acd229(85)=acd229(9)*acd229(42)
      acd229(86)=acd229(7)*acd229(38)
      acd229(87)=acd229(5)*acd229(34)
      acd229(78)=acd229(87)+acd229(86)+acd229(85)+acd229(84)+acd229(83)+acd229(&
      &82)+acd229(81)+acd229(80)+acd229(78)+acd229(79)
      acd229(78)=acd229(13)*acd229(78)
      acd229(79)=acd229(29)*acd229(51)
      acd229(80)=acd229(27)*acd229(50)
      acd229(81)=acd229(25)*acd229(49)
      acd229(82)=acd229(21)*acd229(48)
      acd229(83)=acd229(19)*acd229(47)
      acd229(84)=acd229(17)*acd229(46)
      acd229(85)=acd229(15)*acd229(45)
      acd229(86)=acd229(9)*acd229(41)
      acd229(87)=acd229(7)*acd229(37)
      acd229(88)=acd229(5)*acd229(33)
      acd229(79)=acd229(88)+acd229(87)+acd229(86)+acd229(85)+acd229(84)+acd229(&
      &83)+acd229(82)+acd229(81)+acd229(79)+acd229(80)
      acd229(79)=acd229(11)*acd229(79)
      acd229(74)=acd229(1)-acd229(74)
      acd229(74)=acd229(2)*acd229(74)
      acd229(80)=acd229(31)*acd229(32)
      acd229(81)=acd229(23)*acd229(24)
      acd229(82)=acd229(13)*acd229(14)
      acd229(83)=acd229(11)*acd229(12)
      acd229(73)=acd229(83)+acd229(82)+acd229(81)+acd229(80)+acd229(74)+acd229(&
      &73)
      acd229(73)=acd229(1)*acd229(73)
      acd229(73)=acd229(73)+acd229(79)+acd229(78)+acd229(76)+acd229(77)+acd229(&
      &75)
      brack(ninjaidxt2mu0)=acd229(73)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd229h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(171) :: acd229
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd229(1)=dotproduct(k2,ninjaE3)
      acd229(2)=dotproduct(k2,ninjaE4)
      acd229(3)=abb229(43)
      acd229(4)=dotproduct(k3,ninjaE4)
      acd229(5)=dotproduct(k4,ninjaE4)
      acd229(6)=dotproduct(l5,ninjaE4)
      acd229(7)=abb229(608)
      acd229(8)=dotproduct(l6,ninjaE4)
      acd229(9)=abb229(463)
      acd229(10)=dotproduct(k7,ninjaE4)
      acd229(11)=abb229(621)
      acd229(12)=dotproduct(ninjaE4,spvak4k3)
      acd229(13)=abb229(70)
      acd229(14)=dotproduct(ninjaE4,spvak1k2)
      acd229(15)=abb229(33)
      acd229(16)=dotproduct(ninjaE4,spvak4k2)
      acd229(17)=abb229(32)
      acd229(18)=dotproduct(ninjaE4,spvak7k2)
      acd229(19)=abb229(245)
      acd229(20)=dotproduct(ninjaE4,spvak2l6)
      acd229(21)=abb229(30)
      acd229(22)=dotproduct(ninjaE4,spvak7l6)
      acd229(23)=abb229(88)
      acd229(24)=dotproduct(ninjaE4,spvak2l5)
      acd229(25)=abb229(31)
      acd229(26)=dotproduct(ninjaE4,spval5l6)
      acd229(27)=abb229(154)
      acd229(28)=dotproduct(ninjaE4,spval6l5)
      acd229(29)=abb229(171)
      acd229(30)=dotproduct(ninjaE4,spvak7l5)
      acd229(31)=abb229(148)
      acd229(32)=dotproduct(ninjaE4,spvak1k3)
      acd229(33)=abb229(65)
      acd229(34)=dotproduct(k3,ninjaE3)
      acd229(35)=dotproduct(k4,ninjaE3)
      acd229(36)=dotproduct(l5,ninjaE3)
      acd229(37)=dotproduct(l6,ninjaE3)
      acd229(38)=dotproduct(k7,ninjaE3)
      acd229(39)=dotproduct(ninjaE3,spvak4k3)
      acd229(40)=dotproduct(ninjaE3,spvak1k2)
      acd229(41)=dotproduct(ninjaE3,spvak4k2)
      acd229(42)=dotproduct(ninjaE3,spvak7k2)
      acd229(43)=dotproduct(ninjaE3,spvak2l6)
      acd229(44)=dotproduct(ninjaE3,spvak7l6)
      acd229(45)=dotproduct(ninjaE3,spvak2l5)
      acd229(46)=dotproduct(ninjaE3,spval5l6)
      acd229(47)=dotproduct(ninjaE3,spval6l5)
      acd229(48)=dotproduct(ninjaE3,spvak7l5)
      acd229(49)=dotproduct(ninjaE3,spvak1k3)
      acd229(50)=abb229(71)
      acd229(51)=abb229(40)
      acd229(52)=abb229(38)
      acd229(53)=abb229(64)
      acd229(54)=abb229(59)
      acd229(55)=abb229(16)
      acd229(56)=abb229(29)
      acd229(57)=abb229(63)
      acd229(58)=abb229(37)
      acd229(59)=abb229(35)
      acd229(60)=abb229(23)
      acd229(61)=abb229(60)
      acd229(62)=abb229(89)
      acd229(63)=abb229(48)
      acd229(64)=abb229(86)
      acd229(65)=abb229(34)
      acd229(66)=abb229(157)
      acd229(67)=abb229(95)
      acd229(68)=abb229(99)
      acd229(69)=abb229(55)
      acd229(70)=abb229(46)
      acd229(71)=abb229(52)
      acd229(72)=abb229(61)
      acd229(73)=abb229(57)
      acd229(74)=abb229(39)
      acd229(75)=abb229(53)
      acd229(76)=abb229(17)
      acd229(77)=abb229(51)
      acd229(78)=abb229(22)
      acd229(79)=abb229(49)
      acd229(80)=abb229(44)
      acd229(81)=abb229(42)
      acd229(82)=abb229(41)
      acd229(83)=abb229(83)
      acd229(84)=abb229(62)
      acd229(85)=abb229(77)
      acd229(86)=abb229(58)
      acd229(87)=abb229(45)
      acd229(88)=abb229(84)
      acd229(89)=abb229(73)
      acd229(90)=abb229(27)
      acd229(91)=dotproduct(k1,ninjaE3)
      acd229(92)=abb229(36)
      acd229(93)=dotproduct(k2,ninjaA)
      acd229(94)=dotproduct(k3,ninjaA)
      acd229(95)=dotproduct(k4,ninjaA)
      acd229(96)=dotproduct(l5,ninjaA)
      acd229(97)=dotproduct(l6,ninjaA)
      acd229(98)=dotproduct(k7,ninjaA)
      acd229(99)=dotproduct(ninjaA,spvak4k3)
      acd229(100)=dotproduct(ninjaA,spvak1k2)
      acd229(101)=dotproduct(ninjaA,spvak4k2)
      acd229(102)=dotproduct(ninjaA,spvak7k2)
      acd229(103)=dotproduct(ninjaA,spvak2l6)
      acd229(104)=dotproduct(ninjaA,spvak7l6)
      acd229(105)=dotproduct(ninjaA,spvak2l5)
      acd229(106)=dotproduct(ninjaA,spval5l6)
      acd229(107)=dotproduct(ninjaA,spval6l5)
      acd229(108)=dotproduct(ninjaA,spvak7l5)
      acd229(109)=dotproduct(ninjaA,spvak1k3)
      acd229(110)=abb229(26)
      acd229(111)=abb229(411)
      acd229(112)=abb229(109)
      acd229(113)=abb229(364)
      acd229(114)=dotproduct(ninjaA,ninjaE3)
      acd229(115)=abb229(15)
      acd229(116)=abb229(25)
      acd229(117)=abb229(19)
      acd229(118)=abb229(189)
      acd229(119)=dotproduct(ninjaE3,spvak1l5)
      acd229(120)=abb229(18)
      acd229(121)=abb229(21)
      acd229(122)=abb229(56)
      acd229(123)=abb229(24)
      acd229(124)=abb229(28)
      acd229(125)=abb229(184)
      acd229(126)=abb229(105)
      acd229(127)=abb229(50)
      acd229(128)=dotproduct(ninjaE3,spvak1l6)
      acd229(129)=abb229(47)
      acd229(130)=dotproduct(ninjaE3,spvak1k7)
      acd229(131)=abb229(54)
      acd229(132)=dotproduct(k1,ninjaA)
      acd229(133)=dotproduct(ninjaA,ninjaA)
      acd229(134)=dotproduct(ninjaA,spvak1l5)
      acd229(135)=dotproduct(ninjaA,spvak1l6)
      acd229(136)=dotproduct(ninjaA,spvak1k7)
      acd229(137)=abb229(20)
      acd229(138)=acd229(30)*acd229(68)
      acd229(139)=acd229(28)*acd229(67)
      acd229(140)=acd229(26)*acd229(66)
      acd229(141)=acd229(24)*acd229(65)
      acd229(142)=acd229(22)*acd229(64)
      acd229(143)=acd229(20)*acd229(63)
      acd229(144)=acd229(18)*acd229(62)
      acd229(145)=acd229(10)*acd229(58)
      acd229(146)=acd229(8)*acd229(54)
      acd229(147)=acd229(6)*acd229(50)
      acd229(138)=acd229(138)+acd229(139)+acd229(144)+acd229(145)+acd229(146)+a&
      &cd229(147)+acd229(140)+acd229(141)+acd229(142)+acd229(143)
      acd229(138)=acd229(138)*acd229(39)
      acd229(139)=acd229(30)*acd229(75)
      acd229(140)=acd229(28)*acd229(74)
      acd229(141)=acd229(26)*acd229(73)
      acd229(142)=acd229(24)*acd229(72)
      acd229(143)=acd229(22)*acd229(71)
      acd229(144)=acd229(20)*acd229(70)
      acd229(145)=acd229(18)*acd229(69)
      acd229(146)=acd229(10)*acd229(59)
      acd229(147)=acd229(8)*acd229(55)
      acd229(148)=acd229(6)*acd229(51)
      acd229(139)=acd229(139)+acd229(140)+acd229(145)+acd229(146)+acd229(147)+a&
      &cd229(148)+acd229(141)+acd229(142)+acd229(143)+acd229(144)
      acd229(139)=acd229(139)*acd229(40)
      acd229(140)=acd229(30)*acd229(82)
      acd229(141)=acd229(28)*acd229(81)
      acd229(142)=acd229(26)*acd229(80)
      acd229(143)=acd229(24)*acd229(79)
      acd229(144)=acd229(22)*acd229(78)
      acd229(145)=acd229(20)*acd229(77)
      acd229(146)=acd229(18)*acd229(76)
      acd229(147)=acd229(10)*acd229(60)
      acd229(148)=acd229(8)*acd229(56)
      acd229(149)=acd229(6)*acd229(52)
      acd229(140)=acd229(140)+acd229(141)+acd229(146)+acd229(147)+acd229(148)+a&
      &cd229(149)+acd229(142)+acd229(143)+acd229(144)+acd229(145)
      acd229(140)=acd229(140)*acd229(41)
      acd229(141)=acd229(30)*acd229(89)
      acd229(142)=acd229(28)*acd229(88)
      acd229(143)=acd229(26)*acd229(87)
      acd229(144)=acd229(24)*acd229(86)
      acd229(145)=acd229(22)*acd229(85)
      acd229(146)=acd229(20)*acd229(84)
      acd229(147)=acd229(18)*acd229(83)
      acd229(148)=acd229(10)*acd229(61)
      acd229(149)=acd229(8)*acd229(57)
      acd229(150)=acd229(6)*acd229(53)
      acd229(141)=acd229(141)+acd229(142)+acd229(147)+acd229(148)+acd229(149)+a&
      &cd229(150)+acd229(143)+acd229(144)+acd229(145)+acd229(146)
      acd229(141)=acd229(141)*acd229(49)
      acd229(142)=acd229(31)*acd229(30)
      acd229(143)=acd229(29)*acd229(28)
      acd229(144)=acd229(27)*acd229(26)
      acd229(145)=acd229(25)*acd229(24)
      acd229(146)=acd229(23)*acd229(22)
      acd229(147)=acd229(21)*acd229(20)
      acd229(148)=acd229(19)*acd229(18)
      acd229(149)=acd229(11)*acd229(10)
      acd229(150)=acd229(9)*acd229(8)
      acd229(151)=acd229(7)*acd229(6)
      acd229(142)=acd229(149)+acd229(148)-acd229(147)-acd229(146)-acd229(145)-a&
      &cd229(144)+acd229(142)-acd229(143)+acd229(150)+acd229(151)
      acd229(143)=acd229(4)+acd229(5)
      acd229(144)=acd229(143)-2.0_ki*acd229(2)
      acd229(144)=acd229(144)*acd229(3)
      acd229(145)=acd229(32)*acd229(33)
      acd229(146)=acd229(16)*acd229(17)
      acd229(147)=acd229(14)*acd229(15)
      acd229(148)=acd229(12)*acd229(13)
      acd229(144)=-acd229(144)+acd229(145)+acd229(146)+acd229(147)+acd229(148)+&
      &acd229(142)
      acd229(144)=acd229(144)*acd229(1)
      acd229(145)=acd229(34)+acd229(35)
      acd229(142)=acd229(142)*acd229(145)
      acd229(146)=acd229(48)*acd229(31)
      acd229(147)=acd229(47)*acd229(29)
      acd229(148)=acd229(46)*acd229(27)
      acd229(149)=acd229(45)*acd229(25)
      acd229(150)=acd229(44)*acd229(23)
      acd229(151)=acd229(43)*acd229(21)
      acd229(152)=acd229(42)*acd229(19)
      acd229(153)=acd229(38)*acd229(11)
      acd229(154)=acd229(37)*acd229(9)
      acd229(155)=acd229(36)*acd229(7)
      acd229(146)=-acd229(151)-acd229(150)-acd229(149)-acd229(148)+acd229(146)-&
      &acd229(147)+acd229(152)+acd229(153)+acd229(154)+acd229(155)
      acd229(143)=acd229(146)*acd229(143)
      acd229(147)=acd229(3)*acd229(145)
      acd229(148)=acd229(49)*acd229(33)
      acd229(149)=acd229(41)*acd229(17)
      acd229(150)=acd229(40)*acd229(15)
      acd229(151)=acd229(39)*acd229(13)
      acd229(147)=-acd229(146)+acd229(147)-acd229(151)-acd229(150)-acd229(148)-&
      &acd229(149)
      acd229(148)=acd229(147)*acd229(2)
      acd229(149)=acd229(48)*acd229(75)
      acd229(150)=acd229(47)*acd229(74)
      acd229(151)=acd229(46)*acd229(73)
      acd229(152)=acd229(45)*acd229(72)
      acd229(153)=acd229(44)*acd229(71)
      acd229(154)=acd229(43)*acd229(70)
      acd229(155)=acd229(42)*acd229(69)
      acd229(156)=acd229(38)*acd229(59)
      acd229(157)=acd229(37)*acd229(55)
      acd229(158)=acd229(36)*acd229(51)
      acd229(149)=acd229(158)+acd229(157)+acd229(156)+acd229(155)+acd229(154)+a&
      &cd229(153)+acd229(152)+acd229(151)+acd229(149)+acd229(150)
      acd229(150)=acd229(149)*acd229(14)
      acd229(151)=acd229(48)*acd229(82)
      acd229(152)=acd229(47)*acd229(81)
      acd229(153)=acd229(46)*acd229(80)
      acd229(154)=acd229(45)*acd229(79)
      acd229(155)=acd229(44)*acd229(78)
      acd229(156)=acd229(43)*acd229(77)
      acd229(157)=acd229(42)*acd229(76)
      acd229(158)=acd229(38)*acd229(60)
      acd229(159)=acd229(37)*acd229(56)
      acd229(160)=acd229(36)*acd229(52)
      acd229(151)=acd229(160)+acd229(159)+acd229(158)+acd229(157)+acd229(156)+a&
      &cd229(155)+acd229(154)+acd229(153)+acd229(151)+acd229(152)
      acd229(152)=acd229(151)*acd229(16)
      acd229(153)=acd229(48)*acd229(89)
      acd229(154)=acd229(47)*acd229(88)
      acd229(155)=acd229(46)*acd229(87)
      acd229(156)=acd229(45)*acd229(86)
      acd229(157)=acd229(44)*acd229(85)
      acd229(158)=acd229(43)*acd229(84)
      acd229(159)=acd229(42)*acd229(83)
      acd229(160)=acd229(38)*acd229(61)
      acd229(161)=acd229(37)*acd229(57)
      acd229(162)=acd229(36)*acd229(53)
      acd229(153)=acd229(162)+acd229(161)+acd229(160)+acd229(159)+acd229(158)+a&
      &cd229(157)+acd229(156)+acd229(155)+acd229(153)+acd229(154)
      acd229(154)=acd229(153)*acd229(32)
      acd229(155)=acd229(48)*acd229(68)
      acd229(156)=acd229(47)*acd229(67)
      acd229(157)=acd229(46)*acd229(66)
      acd229(158)=acd229(45)*acd229(65)
      acd229(159)=acd229(44)*acd229(64)
      acd229(160)=acd229(43)*acd229(63)
      acd229(161)=acd229(42)*acd229(62)
      acd229(162)=acd229(38)*acd229(58)
      acd229(163)=acd229(37)*acd229(54)
      acd229(164)=acd229(36)*acd229(50)
      acd229(155)=acd229(164)+acd229(161)+acd229(160)+acd229(159)+acd229(158)+a&
      &cd229(157)+acd229(155)+acd229(156)+acd229(162)+acd229(163)
      acd229(156)=acd229(155)*acd229(12)
      acd229(138)=acd229(141)+acd229(138)+acd229(144)+acd229(150)+acd229(152)+a&
      &cd229(154)+acd229(156)-acd229(142)-acd229(143)-acd229(148)+acd229(90)+ac&
      &d229(139)+acd229(140)
      acd229(139)=acd229(94)+acd229(95)
      acd229(140)=-acd229(146)*acd229(139)
      acd229(141)=acd229(31)*acd229(108)
      acd229(142)=acd229(29)*acd229(107)
      acd229(143)=acd229(27)*acd229(106)
      acd229(144)=acd229(25)*acd229(105)
      acd229(146)=acd229(23)*acd229(104)
      acd229(148)=acd229(21)*acd229(103)
      acd229(150)=acd229(19)*acd229(102)
      acd229(152)=acd229(11)*acd229(98)
      acd229(154)=acd229(9)*acd229(97)
      acd229(156)=acd229(7)*acd229(96)
      acd229(141)=-acd229(156)-acd229(154)-acd229(152)-acd229(150)+acd229(148)+&
      &acd229(143)+acd229(142)-acd229(141)+acd229(144)+acd229(146)
      acd229(142)=acd229(141)+acd229(111)
      acd229(143)=acd229(142)*acd229(145)
      acd229(144)=acd229(109)*acd229(153)
      acd229(145)=acd229(101)*acd229(151)
      acd229(146)=acd229(100)*acd229(149)
      acd229(148)=acd229(99)*acd229(155)
      acd229(149)=acd229(108)*acd229(89)
      acd229(150)=acd229(107)*acd229(88)
      acd229(151)=acd229(106)*acd229(87)
      acd229(152)=acd229(105)*acd229(86)
      acd229(153)=acd229(104)*acd229(85)
      acd229(154)=acd229(103)*acd229(84)
      acd229(155)=acd229(102)*acd229(83)
      acd229(156)=acd229(98)*acd229(61)
      acd229(157)=acd229(97)*acd229(57)
      acd229(158)=acd229(96)*acd229(53)
      acd229(149)=acd229(155)+acd229(156)+acd229(157)+acd229(158)+acd229(151)+a&
      &cd229(152)+acd229(153)+acd229(154)+acd229(127)+acd229(149)+acd229(150)
      acd229(150)=acd229(49)*acd229(149)
      acd229(151)=acd229(108)*acd229(82)
      acd229(152)=acd229(107)*acd229(81)
      acd229(153)=acd229(106)*acd229(80)
      acd229(154)=acd229(105)*acd229(79)
      acd229(155)=acd229(104)*acd229(78)
      acd229(156)=acd229(103)*acd229(77)
      acd229(157)=acd229(102)*acd229(76)
      acd229(158)=acd229(98)*acd229(60)
      acd229(159)=acd229(97)*acd229(56)
      acd229(160)=acd229(96)*acd229(52)
      acd229(151)=acd229(157)+acd229(158)+acd229(159)+acd229(160)+acd229(153)+a&
      &cd229(154)+acd229(155)+acd229(156)+acd229(117)+acd229(151)+acd229(152)
      acd229(152)=acd229(41)*acd229(151)
      acd229(153)=acd229(108)*acd229(75)
      acd229(154)=acd229(107)*acd229(74)
      acd229(155)=acd229(106)*acd229(73)
      acd229(156)=acd229(105)*acd229(72)
      acd229(157)=acd229(104)*acd229(71)
      acd229(158)=acd229(103)*acd229(70)
      acd229(159)=acd229(102)*acd229(69)
      acd229(160)=acd229(98)*acd229(59)
      acd229(161)=acd229(97)*acd229(55)
      acd229(162)=acd229(96)*acd229(51)
      acd229(153)=acd229(159)+acd229(160)+acd229(161)+acd229(162)+acd229(155)+a&
      &cd229(156)+acd229(157)+acd229(158)+acd229(116)+acd229(153)+acd229(154)
      acd229(154)=acd229(40)*acd229(153)
      acd229(155)=acd229(108)*acd229(68)
      acd229(156)=acd229(107)*acd229(67)
      acd229(157)=acd229(106)*acd229(66)
      acd229(158)=acd229(105)*acd229(65)
      acd229(159)=acd229(104)*acd229(64)
      acd229(160)=acd229(103)*acd229(63)
      acd229(161)=acd229(102)*acd229(62)
      acd229(162)=acd229(98)*acd229(58)
      acd229(163)=acd229(97)*acd229(54)
      acd229(164)=acd229(96)*acd229(50)
      acd229(155)=acd229(161)+acd229(162)+acd229(163)+acd229(164)+acd229(157)+a&
      &cd229(158)+acd229(159)+acd229(160)+acd229(115)+acd229(155)+acd229(156)
      acd229(156)=acd229(39)*acd229(155)
      acd229(147)=-acd229(93)*acd229(147)
      acd229(157)=acd229(109)*acd229(33)
      acd229(158)=acd229(101)*acd229(17)
      acd229(159)=acd229(100)*acd229(15)
      acd229(160)=acd229(99)*acd229(13)
      acd229(141)=-acd229(157)-acd229(158)-acd229(159)-acd229(160)+acd229(141)-&
      &acd229(110)
      acd229(157)=2.0_ki*acd229(93)-acd229(139)
      acd229(157)=acd229(3)*acd229(157)
      acd229(157)=acd229(157)-acd229(141)
      acd229(157)=acd229(1)*acd229(157)
      acd229(158)=-acd229(36)-acd229(37)
      acd229(158)=acd229(112)*acd229(158)
      acd229(159)=acd229(131)*acd229(130)
      acd229(160)=acd229(129)*acd229(128)
      acd229(161)=acd229(120)*acd229(119)
      acd229(162)=acd229(92)*acd229(91)
      acd229(163)=acd229(90)*acd229(114)
      acd229(164)=acd229(48)*acd229(126)
      acd229(165)=acd229(47)*acd229(125)
      acd229(166)=acd229(46)*acd229(124)
      acd229(167)=acd229(45)*acd229(123)
      acd229(168)=acd229(44)*acd229(122)
      acd229(169)=acd229(43)*acd229(121)
      acd229(170)=acd229(42)*acd229(118)
      acd229(171)=acd229(38)*acd229(113)
      acd229(140)=acd229(157)+acd229(147)+acd229(156)+acd229(154)+acd229(152)+a&
      &cd229(150)+acd229(148)+acd229(146)+acd229(145)+acd229(144)+acd229(171)+a&
      &cd229(170)+acd229(169)+acd229(168)+acd229(167)+acd229(166)+acd229(165)+a&
      &cd229(164)+2.0_ki*acd229(163)+acd229(162)+acd229(161)+acd229(159)+acd229&
      &(160)+acd229(143)+acd229(140)+acd229(158)
      acd229(143)=ninjaP*acd229(138)
      acd229(142)=acd229(142)*acd229(139)
      acd229(144)=acd229(109)*acd229(149)
      acd229(145)=acd229(101)*acd229(151)
      acd229(146)=acd229(100)*acd229(153)
      acd229(147)=acd229(99)*acd229(155)
      acd229(139)=acd229(93)-acd229(139)
      acd229(139)=acd229(3)*acd229(139)
      acd229(139)=acd229(139)-acd229(141)
      acd229(139)=acd229(93)*acd229(139)
      acd229(141)=-acd229(96)-acd229(97)
      acd229(141)=acd229(112)*acd229(141)
      acd229(148)=acd229(131)*acd229(136)
      acd229(149)=acd229(129)*acd229(135)
      acd229(150)=acd229(120)*acd229(134)
      acd229(151)=acd229(92)*acd229(132)
      acd229(152)=acd229(90)*acd229(133)
      acd229(153)=acd229(108)*acd229(126)
      acd229(154)=acd229(107)*acd229(125)
      acd229(155)=acd229(106)*acd229(124)
      acd229(156)=acd229(105)*acd229(123)
      acd229(157)=acd229(104)*acd229(122)
      acd229(158)=acd229(103)*acd229(121)
      acd229(159)=acd229(102)*acd229(118)
      acd229(160)=acd229(98)*acd229(113)
      acd229(139)=acd229(143)+acd229(139)+acd229(147)+acd229(146)+acd229(145)+a&
      &cd229(144)+acd229(160)+acd229(159)+acd229(158)+acd229(157)+acd229(156)+a&
      &cd229(155)+acd229(154)+acd229(153)+acd229(152)+acd229(151)+acd229(150)+a&
      &cd229(149)+acd229(137)+acd229(148)+acd229(142)+acd229(141)
      brack(ninjaidxt1mu0)=acd229(140)
      brack(ninjaidxt0mu0)=acd229(139)
      brack(ninjaidxt0mu2)=acd229(138)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d229h7_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd229h7
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k3+k2-k4
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
end module     p0_dbaru_epnebbbarg_d229h7l131
