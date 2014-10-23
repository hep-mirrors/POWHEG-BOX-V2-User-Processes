module     p0_dbaru_epnebbbarg_d68h7l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d68h7l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd68h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(9) :: acd68
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd68(1)=dotproduct(ninjaE3,spvak1k2)
      acd68(2)=dotproduct(ninjaE3,spvak2l6)
      acd68(3)=dotproduct(ninjaE3,spvak4k3)
      acd68(4)=dotproduct(ninjaE3,spvak7k2)
      acd68(5)=abb68(36)
      acd68(6)=dotproduct(ninjaE3,spvak2l5)
      acd68(7)=abb68(72)
      acd68(8)=acd68(5)*acd68(2)
      acd68(9)=acd68(7)*acd68(6)
      acd68(8)=acd68(8)+acd68(9)
      acd68(8)=acd68(1)*acd68(8)*acd68(4)*acd68(3)
      brack(ninjaidxt2mu0)=acd68(8)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd68h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(174) :: acd68
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd68(1)=dotproduct(k2,ninjaE3)
      acd68(2)=dotproduct(ninjaE3,spvak4k3)
      acd68(3)=abb68(103)
      acd68(4)=dotproduct(ninjaE3,spvak7k2)
      acd68(5)=dotproduct(ninjaE3,spvak2l6)
      acd68(6)=dotproduct(ninjaE4,spvak1k2)
      acd68(7)=abb68(36)
      acd68(8)=dotproduct(ninjaE3,spvak1k2)
      acd68(9)=dotproduct(ninjaE4,spvak2l6)
      acd68(10)=dotproduct(ninjaE4,spvak2l5)
      acd68(11)=abb68(72)
      acd68(12)=dotproduct(ninjaE3,spvak2l5)
      acd68(13)=abb68(97)
      acd68(14)=dotproduct(ninjaE4,spvak4k3)
      acd68(15)=abb68(82)
      acd68(16)=abb68(69)
      acd68(17)=dotproduct(ninjaE4,spvak7k2)
      acd68(18)=abb68(91)
      acd68(19)=dotproduct(ninjaE3,spvak4k2)
      acd68(20)=abb68(85)
      acd68(21)=abb68(105)
      acd68(22)=abb68(68)
      acd68(23)=dotproduct(k1,ninjaE3)
      acd68(24)=abb68(98)
      acd68(25)=abb68(96)
      acd68(26)=abb68(58)
      acd68(27)=dotproduct(l5,ninjaE3)
      acd68(28)=dotproduct(l6,ninjaE3)
      acd68(29)=dotproduct(ninjaA,ninjaE3)
      acd68(30)=abb68(13)
      acd68(31)=abb68(37)
      acd68(32)=abb68(61)
      acd68(33)=abb68(87)
      acd68(34)=abb68(49)
      acd68(35)=dotproduct(k3,ninjaE3)
      acd68(36)=dotproduct(k4,ninjaE3)
      acd68(37)=abb68(21)
      acd68(38)=dotproduct(ninjaA,spvak7k2)
      acd68(39)=dotproduct(ninjaA,spvak4k3)
      acd68(40)=dotproduct(ninjaA,spvak2l6)
      acd68(41)=dotproduct(ninjaA,spvak1k2)
      acd68(42)=dotproduct(ninjaA,spvak2l5)
      acd68(43)=dotproduct(ninjaE3,spvak3k2)
      acd68(44)=dotproduct(ninjaE3,spvak1l5)
      acd68(45)=abb68(52)
      acd68(46)=abb68(88)
      acd68(47)=abb68(30)
      acd68(48)=abb68(45)
      acd68(49)=dotproduct(ninjaE3,spvak1l6)
      acd68(50)=abb68(62)
      acd68(51)=dotproduct(ninjaE3,spval6k2)
      acd68(52)=abb68(107)
      acd68(53)=dotproduct(ninjaE3,spval5k2)
      acd68(54)=abb68(104)
      acd68(55)=abb68(101)
      acd68(56)=abb68(113)
      acd68(57)=dotproduct(ninjaE3,spvak1k3)
      acd68(58)=abb68(79)
      acd68(59)=abb68(100)
      acd68(60)=abb68(74)
      acd68(61)=abb68(81)
      acd68(62)=abb68(54)
      acd68(63)=abb68(114)
      acd68(64)=abb68(60)
      acd68(65)=abb68(92)
      acd68(66)=abb68(43)
      acd68(67)=abb68(90)
      acd68(68)=abb68(115)
      acd68(69)=abb68(84)
      acd68(70)=dotproduct(k1,ninjaA)
      acd68(71)=dotproduct(k2,ninjaA)
      acd68(72)=abb68(67)
      acd68(73)=abb68(66)
      acd68(74)=abb68(28)
      acd68(75)=abb68(99)
      acd68(76)=abb68(50)
      acd68(77)=abb68(63)
      acd68(78)=abb68(70)
      acd68(79)=abb68(31)
      acd68(80)=abb68(110)
      acd68(81)=abb68(71)
      acd68(82)=dotproduct(l5,ninjaA)
      acd68(83)=dotproduct(l6,ninjaA)
      acd68(84)=dotproduct(ninjaA,ninjaA)
      acd68(85)=abb68(73)
      acd68(86)=dotproduct(ninjaA,spvak4k2)
      acd68(87)=abb68(34)
      acd68(88)=abb68(46)
      acd68(89)=abb68(56)
      acd68(90)=abb68(17)
      acd68(91)=abb68(117)
      acd68(92)=dotproduct(k3,ninjaA)
      acd68(93)=abb68(94)
      acd68(94)=abb68(121)
      acd68(95)=abb68(112)
      acd68(96)=abb68(116)
      acd68(97)=dotproduct(k4,ninjaA)
      acd68(98)=abb68(78)
      acd68(99)=abb68(76)
      acd68(100)=abb68(24)
      acd68(101)=abb68(93)
      acd68(102)=abb68(11)
      acd68(103)=abb68(80)
      acd68(104)=abb68(42)
      acd68(105)=abb68(22)
      acd68(106)=abb68(102)
      acd68(107)=dotproduct(ninjaA,spvak3k2)
      acd68(108)=dotproduct(ninjaA,spvak1l5)
      acd68(109)=dotproduct(ninjaA,spvak1l6)
      acd68(110)=dotproduct(ninjaA,spval6k2)
      acd68(111)=dotproduct(ninjaA,spvak1k3)
      acd68(112)=dotproduct(ninjaA,spval5k2)
      acd68(113)=abb68(10)
      acd68(114)=abb68(44)
      acd68(115)=abb68(77)
      acd68(116)=abb68(23)
      acd68(117)=abb68(25)
      acd68(118)=abb68(15)
      acd68(119)=abb68(38)
      acd68(120)=abb68(32)
      acd68(121)=abb68(57)
      acd68(122)=abb68(40)
      acd68(123)=abb68(27)
      acd68(124)=abb68(14)
      acd68(125)=abb68(53)
      acd68(126)=abb68(83)
      acd68(127)=abb68(65)
      acd68(128)=abb68(55)
      acd68(129)=abb68(106)
      acd68(130)=abb68(109)
      acd68(131)=abb68(18)
      acd68(132)=abb68(48)
      acd68(133)=abb68(75)
      acd68(134)=abb68(16)
      acd68(135)=abb68(47)
      acd68(136)=abb68(89)
      acd68(137)=acd68(12)*acd68(11)
      acd68(138)=acd68(5)*acd68(7)
      acd68(138)=acd68(138)+acd68(137)
      acd68(138)=acd68(6)*acd68(138)
      acd68(139)=acd68(11)*acd68(10)
      acd68(140)=acd68(7)*acd68(9)
      acd68(140)=acd68(139)+acd68(140)
      acd68(140)=acd68(8)*acd68(140)
      acd68(138)=acd68(13)+acd68(140)+acd68(138)
      acd68(138)=acd68(4)*acd68(138)
      acd68(140)=acd68(8)*acd68(11)
      acd68(141)=acd68(12)*acd68(140)
      acd68(142)=acd68(8)*acd68(7)
      acd68(143)=acd68(5)*acd68(142)
      acd68(141)=acd68(143)+acd68(141)
      acd68(141)=acd68(17)*acd68(141)
      acd68(143)=acd68(1)*acd68(3)
      acd68(138)=acd68(138)+acd68(143)+acd68(141)
      acd68(138)=acd68(2)*acd68(138)
      acd68(141)=acd68(19)*acd68(22)
      acd68(143)=acd68(8)*acd68(21)
      acd68(141)=acd68(141)+acd68(143)
      acd68(141)=acd68(12)*acd68(141)
      acd68(143)=acd68(19)*acd68(20)
      acd68(144)=acd68(8)*acd68(18)
      acd68(143)=acd68(143)+acd68(144)
      acd68(143)=acd68(5)*acd68(143)
      acd68(144)=acd68(140)*acd68(14)
      acd68(144)=-acd68(16)+acd68(144)
      acd68(144)=acd68(12)*acd68(144)
      acd68(145)=acd68(142)*acd68(14)
      acd68(145)=-acd68(15)+acd68(145)
      acd68(145)=acd68(5)*acd68(145)
      acd68(144)=acd68(144)+acd68(145)
      acd68(144)=acd68(4)*acd68(144)
      acd68(138)=acd68(138)+acd68(144)+acd68(141)+acd68(143)
      acd68(141)=acd68(27)+acd68(28)
      acd68(143)=acd68(37)*acd68(141)
      acd68(144)=acd68(53)*acd68(54)
      acd68(145)=acd68(51)*acd68(52)
      acd68(146)=acd68(49)*acd68(50)
      acd68(147)=acd68(44)*acd68(45)
      acd68(148)=acd68(23)*acd68(25)
      acd68(143)=acd68(146)+acd68(144)+acd68(145)+acd68(147)+acd68(148)+acd68(1&
      &43)
      acd68(144)=acd68(1)*acd68(30)
      acd68(144)=acd68(144)+acd68(143)
      acd68(145)=acd68(42)*acd68(11)
      acd68(146)=acd68(40)*acd68(7)
      acd68(145)=acd68(47)+acd68(145)+acd68(146)
      acd68(146)=acd68(8)*acd68(145)
      acd68(147)=2.0_ki*acd68(29)
      acd68(148)=acd68(13)*acd68(147)
      acd68(149)=acd68(41)*acd68(11)
      acd68(149)=acd68(149)+acd68(48)
      acd68(150)=acd68(12)*acd68(149)
      acd68(151)=acd68(41)*acd68(7)
      acd68(151)=acd68(151)+acd68(46)
      acd68(152)=acd68(5)*acd68(151)
      acd68(146)=acd68(152)+acd68(150)+acd68(146)+acd68(148)+acd68(144)
      acd68(146)=acd68(4)*acd68(146)
      acd68(148)=acd68(53)*acd68(69)
      acd68(150)=acd68(51)*acd68(68)
      acd68(152)=acd68(43)*acd68(22)
      acd68(148)=-acd68(152)+acd68(148)+acd68(150)
      acd68(150)=acd68(19)*acd68(67)
      acd68(152)=acd68(38)*acd68(11)
      acd68(152)=acd68(152)+acd68(66)
      acd68(153)=acd68(8)*acd68(152)
      acd68(150)=acd68(153)+acd68(150)+acd68(148)
      acd68(150)=acd68(12)*acd68(150)
      acd68(153)=acd68(53)*acd68(65)
      acd68(154)=acd68(51)*acd68(64)
      acd68(155)=acd68(43)*acd68(20)
      acd68(153)=-acd68(155)+acd68(153)+acd68(154)
      acd68(154)=acd68(19)*acd68(63)
      acd68(155)=acd68(38)*acd68(7)
      acd68(155)=acd68(155)+acd68(62)
      acd68(156)=acd68(8)*acd68(155)
      acd68(154)=acd68(156)+acd68(154)+acd68(153)
      acd68(154)=acd68(5)*acd68(154)
      acd68(156)=acd68(141)-acd68(23)
      acd68(157)=acd68(156)*acd68(24)
      acd68(158)=acd68(1)*acd68(26)
      acd68(157)=acd68(157)-acd68(158)
      acd68(158)=acd68(3)*acd68(147)
      acd68(158)=acd68(158)-acd68(157)
      acd68(158)=acd68(1)*acd68(158)
      acd68(146)=acd68(146)+acd68(154)+acd68(158)+acd68(150)
      acd68(146)=acd68(2)*acd68(146)
      acd68(150)=acd68(35)+acd68(36)
      acd68(154)=-acd68(16)*acd68(150)
      acd68(158)=acd68(57)*acd68(61)
      acd68(154)=acd68(158)+acd68(154)
      acd68(158)=-acd68(16)*acd68(147)
      acd68(159)=acd68(19)*acd68(60)
      acd68(160)=acd68(39)*acd68(11)
      acd68(160)=acd68(59)+acd68(160)
      acd68(160)=acd68(8)*acd68(160)
      acd68(158)=acd68(160)+acd68(159)+acd68(158)+acd68(154)
      acd68(158)=acd68(12)*acd68(158)
      acd68(159)=-acd68(15)*acd68(150)
      acd68(160)=acd68(57)*acd68(58)
      acd68(159)=acd68(160)+acd68(159)
      acd68(160)=-acd68(15)*acd68(147)
      acd68(161)=acd68(19)*acd68(56)
      acd68(162)=acd68(39)*acd68(7)
      acd68(162)=acd68(55)+acd68(162)
      acd68(162)=acd68(8)*acd68(162)
      acd68(160)=acd68(162)+acd68(161)+acd68(160)+acd68(159)
      acd68(160)=acd68(5)*acd68(160)
      acd68(158)=acd68(158)+acd68(160)
      acd68(158)=acd68(4)*acd68(158)
      acd68(160)=acd68(1)-acd68(150)
      acd68(161)=-acd68(34)*acd68(160)
      acd68(162)=acd68(22)*acd68(147)
      acd68(161)=acd68(162)+acd68(161)
      acd68(161)=acd68(19)*acd68(161)
      acd68(162)=acd68(33)*acd68(160)
      acd68(163)=acd68(21)*acd68(147)
      acd68(162)=acd68(163)+acd68(162)
      acd68(162)=acd68(8)*acd68(162)
      acd68(161)=acd68(161)+acd68(162)
      acd68(161)=acd68(12)*acd68(161)
      acd68(162)=-acd68(32)*acd68(160)
      acd68(163)=acd68(20)*acd68(147)
      acd68(162)=acd68(163)+acd68(162)
      acd68(162)=acd68(19)*acd68(162)
      acd68(163)=acd68(31)*acd68(160)
      acd68(164)=acd68(18)*acd68(147)
      acd68(163)=acd68(164)+acd68(163)
      acd68(163)=acd68(8)*acd68(163)
      acd68(162)=acd68(162)+acd68(163)
      acd68(162)=acd68(5)*acd68(162)
      acd68(146)=acd68(146)+acd68(158)+acd68(161)+acd68(162)
      acd68(139)=ninjaP*acd68(139)
      acd68(158)=acd68(7)*ninjaP
      acd68(161)=acd68(9)*acd68(158)
      acd68(139)=acd68(139)+acd68(161)
      acd68(139)=acd68(8)*acd68(139)
      acd68(137)=acd68(6)*acd68(137)
      acd68(137)=acd68(137)+acd68(13)
      acd68(137)=ninjaP*acd68(137)
      acd68(161)=acd68(54)*acd68(112)
      acd68(162)=acd68(52)*acd68(110)
      acd68(163)=acd68(50)*acd68(109)
      acd68(164)=acd68(45)*acd68(108)
      acd68(165)=acd68(25)*acd68(70)
      acd68(166)=acd68(84)*acd68(13)
      acd68(167)=acd68(82)+acd68(83)
      acd68(168)=acd68(37)*acd68(167)
      acd68(169)=acd68(71)*acd68(30)
      acd68(170)=acd68(41)*acd68(47)
      acd68(171)=acd68(42)*acd68(149)
      acd68(172)=acd68(40)*acd68(151)
      acd68(158)=acd68(5)*acd68(6)*acd68(158)
      acd68(137)=acd68(158)+acd68(139)+acd68(172)+acd68(171)+acd68(170)+acd68(1&
      &69)+acd68(168)+acd68(166)+acd68(165)+acd68(164)+acd68(163)+acd68(162)+ac&
      &d68(118)+acd68(161)+acd68(137)
      acd68(137)=acd68(4)*acd68(137)
      acd68(139)=acd68(69)*acd68(112)
      acd68(158)=acd68(68)*acd68(110)
      acd68(161)=-acd68(22)*acd68(107)
      acd68(162)=acd68(86)*acd68(67)
      acd68(163)=acd68(41)*acd68(66)
      acd68(164)=acd68(38)*acd68(149)
      acd68(140)=acd68(140)*ninjaP
      acd68(165)=acd68(17)*acd68(140)
      acd68(139)=acd68(165)+acd68(164)+acd68(163)+acd68(162)+acd68(161)+acd68(1&
      &39)+acd68(158)
      acd68(139)=acd68(12)*acd68(139)
      acd68(158)=acd68(65)*acd68(112)
      acd68(161)=acd68(64)*acd68(110)
      acd68(162)=-acd68(20)*acd68(107)
      acd68(163)=acd68(86)*acd68(63)
      acd68(164)=acd68(41)*acd68(62)
      acd68(165)=acd68(38)*acd68(151)
      acd68(142)=acd68(142)*ninjaP
      acd68(166)=acd68(17)*acd68(142)
      acd68(158)=acd68(166)+acd68(165)+acd68(164)+acd68(163)+acd68(162)+acd68(1&
      &58)+acd68(161)
      acd68(158)=acd68(5)*acd68(158)
      acd68(143)=acd68(38)*acd68(143)
      acd68(161)=ninjaP+acd68(84)
      acd68(162)=acd68(3)*acd68(161)
      acd68(163)=acd68(71)*acd68(26)
      acd68(164)=acd68(70)-acd68(167)
      acd68(164)=acd68(24)*acd68(164)
      acd68(165)=acd68(38)*acd68(30)
      acd68(162)=acd68(165)+acd68(164)+2.0_ki*acd68(163)+acd68(89)+acd68(162)
      acd68(162)=acd68(1)*acd68(162)
      acd68(163)=acd68(42)*acd68(148)
      acd68(164)=acd68(40)*acd68(153)
      acd68(165)=acd68(38)*acd68(145)
      acd68(166)=acd68(42)*acd68(66)
      acd68(167)=acd68(40)*acd68(62)
      acd68(165)=acd68(165)+acd68(167)+acd68(126)+acd68(166)
      acd68(165)=acd68(8)*acd68(165)
      acd68(166)=acd68(24)*acd68(71)
      acd68(167)=-acd68(141)*acd68(166)
      acd68(168)=acd68(71)*acd68(3)
      acd68(169)=acd68(38)*acd68(13)
      acd68(168)=acd68(168)+acd68(169)
      acd68(168)=acd68(168)*acd68(147)
      acd68(169)=acd68(42)*acd68(67)
      acd68(170)=acd68(40)*acd68(63)
      acd68(169)=acd68(170)+acd68(127)+acd68(169)
      acd68(169)=acd68(19)*acd68(169)
      acd68(170)=acd68(53)*acd68(130)
      acd68(171)=acd68(51)*acd68(129)
      acd68(172)=acd68(49)*acd68(128)
      acd68(173)=acd68(44)*acd68(123)
      acd68(174)=acd68(43)*acd68(114)
      acd68(166)=acd68(77)+acd68(166)
      acd68(166)=acd68(23)*acd68(166)
      acd68(137)=acd68(137)+acd68(158)+acd68(139)+acd68(165)+acd68(169)+acd68(1&
      &62)+acd68(168)+acd68(143)+acd68(164)+acd68(163)+acd68(166)+acd68(174)+ac&
      &d68(173)+acd68(172)+acd68(167)+acd68(170)+acd68(171)
      acd68(137)=acd68(2)*acd68(137)
      acd68(139)=acd68(39)*acd68(144)
      acd68(143)=acd68(92)+acd68(97)
      acd68(144)=acd68(143)+acd68(161)
      acd68(158)=-acd68(16)*acd68(144)
      acd68(162)=acd68(61)*acd68(111)
      acd68(163)=acd68(86)*acd68(60)
      acd68(164)=acd68(41)*acd68(59)
      acd68(149)=acd68(39)*acd68(149)
      acd68(140)=acd68(14)*acd68(140)
      acd68(140)=acd68(140)+acd68(149)+acd68(164)+acd68(163)+acd68(120)+acd68(1&
      &62)+acd68(158)
      acd68(140)=acd68(12)*acd68(140)
      acd68(144)=-acd68(15)*acd68(144)
      acd68(149)=acd68(58)*acd68(111)
      acd68(158)=acd68(86)*acd68(56)
      acd68(162)=acd68(41)*acd68(55)
      acd68(151)=acd68(39)*acd68(151)
      acd68(142)=acd68(14)*acd68(142)
      acd68(142)=acd68(142)+acd68(151)+acd68(162)+acd68(158)+acd68(119)+acd68(1&
      &49)+acd68(144)
      acd68(142)=acd68(5)*acd68(142)
      acd68(144)=-acd68(42)*acd68(16)
      acd68(149)=-acd68(40)*acd68(15)
      acd68(151)=acd68(39)*acd68(13)
      acd68(144)=acd68(151)+acd68(149)+acd68(101)+acd68(144)
      acd68(144)=acd68(144)*acd68(147)
      acd68(145)=acd68(39)*acd68(145)
      acd68(149)=acd68(42)*acd68(59)
      acd68(151)=acd68(40)*acd68(55)
      acd68(145)=acd68(145)+acd68(149)+acd68(151)
      acd68(145)=acd68(8)*acd68(145)
      acd68(149)=acd68(42)*acd68(154)
      acd68(151)=acd68(40)*acd68(159)
      acd68(158)=acd68(42)*acd68(60)
      acd68(162)=acd68(40)*acd68(56)
      acd68(158)=acd68(162)+acd68(121)+acd68(158)
      acd68(158)=acd68(19)*acd68(158)
      acd68(162)=-acd68(93)*acd68(150)
      acd68(163)=acd68(49)*acd68(122)
      acd68(164)=acd68(44)*acd68(117)
      acd68(165)=acd68(43)*acd68(113)
      acd68(166)=acd68(23)*acd68(75)
      acd68(139)=acd68(142)+acd68(140)+acd68(145)+acd68(158)+acd68(144)+acd68(1&
      &51)+acd68(149)+acd68(166)+acd68(165)+acd68(163)+acd68(164)+acd68(139)+ac&
      &d68(162)
      acd68(139)=acd68(4)*acd68(139)
      acd68(140)=acd68(22)*acd68(161)
      acd68(142)=acd68(143)-acd68(71)
      acd68(143)=acd68(34)*acd68(142)
      acd68(144)=acd68(38)*acd68(60)
      acd68(145)=acd68(39)*acd68(67)
      acd68(140)=acd68(145)+acd68(144)+acd68(143)+acd68(135)+acd68(140)
      acd68(140)=acd68(19)*acd68(140)
      acd68(143)=acd68(21)*acd68(161)
      acd68(144)=-acd68(33)*acd68(142)
      acd68(145)=acd68(38)*acd68(59)
      acd68(149)=acd68(39)*acd68(152)
      acd68(143)=acd68(149)+acd68(145)+acd68(144)+acd68(134)+acd68(143)
      acd68(143)=acd68(8)*acd68(143)
      acd68(144)=acd68(39)*acd68(148)
      acd68(145)=acd68(86)*acd68(22)
      acd68(148)=acd68(41)*acd68(21)
      acd68(149)=-acd68(38)*acd68(16)
      acd68(145)=acd68(149)+acd68(148)+acd68(104)+acd68(145)
      acd68(145)=acd68(145)*acd68(147)
      acd68(148)=acd68(34)*acd68(86)
      acd68(149)=acd68(41)*acd68(33)
      acd68(148)=acd68(148)-acd68(149)
      acd68(148)=-acd68(148)*acd68(160)
      acd68(149)=acd68(38)*acd68(154)
      acd68(151)=acd68(49)*acd68(136)
      acd68(152)=acd68(44)*acd68(125)
      acd68(154)=acd68(43)*acd68(116)
      acd68(158)=acd68(23)*acd68(79)
      acd68(140)=acd68(143)+acd68(140)+acd68(145)+acd68(144)+acd68(149)+acd68(1&
      &58)+acd68(154)+acd68(151)+acd68(152)+acd68(148)
      acd68(140)=acd68(12)*acd68(140)
      acd68(143)=acd68(20)*acd68(161)
      acd68(144)=acd68(32)*acd68(142)
      acd68(145)=acd68(38)*acd68(56)
      acd68(148)=acd68(39)*acd68(63)
      acd68(143)=acd68(148)+acd68(145)+acd68(144)+acd68(132)+acd68(143)
      acd68(143)=acd68(19)*acd68(143)
      acd68(144)=acd68(18)*acd68(161)
      acd68(142)=-acd68(31)*acd68(142)
      acd68(145)=acd68(38)*acd68(55)
      acd68(148)=acd68(39)*acd68(155)
      acd68(142)=acd68(148)+acd68(145)+acd68(142)+acd68(131)+acd68(144)
      acd68(142)=acd68(8)*acd68(142)
      acd68(144)=acd68(39)*acd68(153)
      acd68(145)=acd68(86)*acd68(20)
      acd68(148)=acd68(41)*acd68(18)
      acd68(149)=-acd68(38)*acd68(15)
      acd68(145)=acd68(149)+acd68(148)+acd68(103)+acd68(145)
      acd68(145)=acd68(145)*acd68(147)
      acd68(148)=acd68(32)*acd68(86)
      acd68(149)=acd68(41)*acd68(31)
      acd68(148)=acd68(148)-acd68(149)
      acd68(148)=-acd68(148)*acd68(160)
      acd68(149)=acd68(38)*acd68(159)
      acd68(151)=acd68(49)*acd68(133)
      acd68(152)=acd68(44)*acd68(124)
      acd68(153)=acd68(43)*acd68(115)
      acd68(154)=acd68(23)*acd68(78)
      acd68(142)=acd68(142)+acd68(143)+acd68(145)+acd68(144)+acd68(149)+acd68(1&
      &54)+acd68(153)+acd68(151)+acd68(152)+acd68(148)
      acd68(142)=acd68(5)*acd68(142)
      acd68(141)=acd68(98)*acd68(141)
      acd68(143)=acd68(49)*acd68(106)
      acd68(144)=acd68(44)*acd68(102)
      acd68(145)=acd68(43)*acd68(100)
      acd68(148)=acd68(23)*acd68(73)
      acd68(149)=acd68(99)*acd68(147)
      acd68(141)=acd68(149)+acd68(148)+acd68(145)+acd68(144)+acd68(143)+acd68(1&
      &41)
      acd68(141)=acd68(141)*acd68(147)
      acd68(143)=-acd68(39)*acd68(157)
      acd68(144)=acd68(39)*acd68(3)
      acd68(144)=acd68(85)+acd68(144)
      acd68(144)=acd68(144)*acd68(147)
      acd68(145)=acd68(23)*acd68(72)
      acd68(148)=acd68(49)*acd68(91)
      acd68(149)=acd68(44)*acd68(88)
      acd68(151)=acd68(43)*acd68(87)
      acd68(143)=acd68(144)-acd68(145)+acd68(151)+acd68(148)+acd68(149)+acd68(1&
      &43)
      acd68(143)=acd68(1)*acd68(143)
      acd68(144)=acd68(42)*acd68(22)
      acd68(148)=acd68(40)*acd68(20)
      acd68(144)=acd68(148)+acd68(105)+acd68(144)
      acd68(144)=acd68(144)*acd68(147)
      acd68(148)=acd68(42)*acd68(34)
      acd68(149)=acd68(40)*acd68(32)
      acd68(148)=-acd68(149)+acd68(90)-acd68(148)
      acd68(148)=acd68(1)*acd68(148)
      acd68(149)=acd68(95)*acd68(150)
      acd68(151)=-acd68(80)*acd68(156)
      acd68(152)=acd68(150)*acd68(42)
      acd68(153)=acd68(34)*acd68(152)
      acd68(154)=acd68(150)*acd68(40)
      acd68(155)=acd68(32)*acd68(154)
      acd68(144)=acd68(148)+acd68(144)+acd68(155)+acd68(153)+acd68(151)+acd68(1&
      &49)
      acd68(144)=acd68(19)*acd68(144)
      acd68(148)=acd68(42)*acd68(21)
      acd68(149)=acd68(40)*acd68(18)
      acd68(148)=acd68(148)+acd68(149)
      acd68(147)=acd68(148)*acd68(147)
      acd68(148)=acd68(42)*acd68(33)
      acd68(149)=acd68(40)*acd68(31)
      acd68(148)=acd68(148)+acd68(149)
      acd68(148)=acd68(1)*acd68(148)
      acd68(149)=-acd68(33)*acd68(152)
      acd68(151)=-acd68(31)*acd68(154)
      acd68(147)=acd68(148)+acd68(147)+acd68(149)+acd68(151)
      acd68(147)=acd68(8)*acd68(147)
      acd68(148)=acd68(49)*acd68(81)
      acd68(149)=acd68(44)*acd68(76)
      acd68(151)=acd68(43)*acd68(74)
      acd68(148)=acd68(151)+acd68(148)+acd68(149)
      acd68(148)=acd68(148)*acd68(156)
      acd68(149)=acd68(49)*acd68(96)
      acd68(151)=acd68(44)*acd68(94)
      acd68(145)=acd68(145)+acd68(149)+acd68(151)
      acd68(145)=acd68(145)*acd68(150)
      acd68(137)=acd68(137)+acd68(139)+acd68(142)+acd68(140)+acd68(147)+acd68(1&
      &44)+acd68(143)+acd68(141)+acd68(145)+acd68(148)
      brack(ninjaidxt1mu0)=acd68(146)
      brack(ninjaidxt0mu0)=acd68(137)
      brack(ninjaidxt0mu2)=acd68(138)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d68h7_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd68h7
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k2
	     vecA(1:4) = - a(0:3) - qshift(1:4)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d68h7l131
