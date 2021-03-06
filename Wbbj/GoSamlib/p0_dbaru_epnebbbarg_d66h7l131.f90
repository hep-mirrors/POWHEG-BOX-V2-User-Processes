module     p0_dbaru_epnebbbarg_d66h7l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d66h7l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd66h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(9) :: acd66
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd66(1)=dotproduct(ninjaE3,spvak1k2)
      acd66(2)=dotproduct(ninjaE3,spvak2l6)
      acd66(3)=dotproduct(ninjaE3,spvak4k3)
      acd66(4)=dotproduct(ninjaE3,spvak7k2)
      acd66(5)=abb66(41)
      acd66(6)=dotproduct(ninjaE3,spvak2l5)
      acd66(7)=abb66(114)
      acd66(8)=acd66(5)*acd66(2)
      acd66(9)=acd66(7)*acd66(6)
      acd66(8)=acd66(8)+acd66(9)
      acd66(8)=acd66(1)*acd66(8)*acd66(4)*acd66(3)
      brack(ninjaidxt2mu0)=acd66(8)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd66h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(170) :: acd66
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd66(1)=dotproduct(k2,ninjaE3)
      acd66(2)=dotproduct(ninjaE3,spvak4k3)
      acd66(3)=abb66(100)
      acd66(4)=dotproduct(ninjaE3,spvak7k2)
      acd66(5)=dotproduct(ninjaE3,spvak2l5)
      acd66(6)=dotproduct(ninjaE4,spvak1k2)
      acd66(7)=abb66(114)
      acd66(8)=dotproduct(ninjaE3,spvak2l6)
      acd66(9)=abb66(41)
      acd66(10)=dotproduct(ninjaE3,spvak1k2)
      acd66(11)=dotproduct(ninjaE4,spvak2l5)
      acd66(12)=dotproduct(ninjaE4,spvak2l6)
      acd66(13)=abb66(123)
      acd66(14)=dotproduct(ninjaE4,spvak7k2)
      acd66(15)=abb66(54)
      acd66(16)=dotproduct(ninjaE4,spvak4k3)
      acd66(17)=abb66(77)
      acd66(18)=abb66(127)
      acd66(19)=dotproduct(ninjaE3,spvak4k2)
      acd66(20)=abb66(60)
      acd66(21)=abb66(130)
      acd66(22)=dotproduct(k1,ninjaE3)
      acd66(23)=abb66(67)
      acd66(24)=abb66(119)
      acd66(25)=abb66(108)
      acd66(26)=abb66(129)
      acd66(27)=abb66(94)
      acd66(28)=dotproduct(l5,ninjaE3)
      acd66(29)=abb66(83)
      acd66(30)=dotproduct(l6,ninjaE3)
      acd66(31)=dotproduct(ninjaA,ninjaE3)
      acd66(32)=abb66(10)
      acd66(33)=abb66(48)
      acd66(34)=dotproduct(k3,ninjaE3)
      acd66(35)=abb66(44)
      acd66(36)=abb66(72)
      acd66(37)=dotproduct(k4,ninjaE3)
      acd66(38)=abb66(53)
      acd66(39)=dotproduct(ninjaA,spvak4k3)
      acd66(40)=dotproduct(ninjaA,spvak7k2)
      acd66(41)=dotproduct(ninjaA,spvak2l5)
      acd66(42)=dotproduct(ninjaA,spvak2l6)
      acd66(43)=dotproduct(ninjaA,spvak1k2)
      acd66(44)=abb66(57)
      acd66(45)=abb66(35)
      acd66(46)=dotproduct(ninjaE3,spval5k2)
      acd66(47)=abb66(80)
      acd66(48)=dotproduct(ninjaE3,spval6k2)
      acd66(49)=abb66(124)
      acd66(50)=dotproduct(ninjaE3,spvak1l6)
      acd66(51)=abb66(126)
      acd66(52)=dotproduct(ninjaE3,spvak1l5)
      acd66(53)=abb66(131)
      acd66(54)=abb66(76)
      acd66(55)=abb66(71)
      acd66(56)=abb66(42)
      acd66(57)=abb66(111)
      acd66(58)=dotproduct(ninjaE3,spvak3k2)
      acd66(59)=abb66(103)
      acd66(60)=abb66(63)
      acd66(61)=abb66(37)
      acd66(62)=abb66(132)
      acd66(63)=dotproduct(ninjaE3,spvak1k3)
      acd66(64)=abb66(13)
      acd66(65)=abb66(14)
      acd66(66)=abb66(23)
      acd66(67)=abb66(18)
      acd66(68)=dotproduct(k1,ninjaA)
      acd66(69)=abb66(51)
      acd66(70)=abb66(104)
      acd66(71)=abb66(47)
      acd66(72)=dotproduct(ninjaA,spvak4k2)
      acd66(73)=abb66(113)
      acd66(74)=abb66(46)
      acd66(75)=abb66(138)
      acd66(76)=abb66(34)
      acd66(77)=abb66(33)
      acd66(78)=abb66(112)
      acd66(79)=abb66(118)
      acd66(80)=dotproduct(k2,ninjaA)
      acd66(81)=abb66(97)
      acd66(82)=abb66(93)
      acd66(83)=dotproduct(l5,ninjaA)
      acd66(84)=abb66(78)
      acd66(85)=dotproduct(l6,ninjaA)
      acd66(86)=dotproduct(ninjaA,ninjaA)
      acd66(87)=abb66(45)
      acd66(88)=abb66(50)
      acd66(89)=abb66(28)
      acd66(90)=abb66(17)
      acd66(91)=abb66(43)
      acd66(92)=abb66(39)
      acd66(93)=dotproduct(k3,ninjaA)
      acd66(94)=abb66(31)
      acd66(95)=dotproduct(k4,ninjaA)
      acd66(96)=abb66(88)
      acd66(97)=abb66(137)
      acd66(98)=abb66(70)
      acd66(99)=abb66(24)
      acd66(100)=abb66(29)
      acd66(101)=abb66(19)
      acd66(102)=abb66(64)
      acd66(103)=abb66(59)
      acd66(104)=dotproduct(ninjaA,spvak1k3)
      acd66(105)=dotproduct(ninjaA,spval5k2)
      acd66(106)=dotproduct(ninjaA,spval6k2)
      acd66(107)=dotproduct(ninjaA,spvak3k2)
      acd66(108)=dotproduct(ninjaA,spvak1l6)
      acd66(109)=dotproduct(ninjaA,spvak1l5)
      acd66(110)=abb66(121)
      acd66(111)=abb66(27)
      acd66(112)=abb66(36)
      acd66(113)=abb66(85)
      acd66(114)=dotproduct(ninjaE3,spvak1k4)
      acd66(115)=abb66(133)
      acd66(116)=abb66(12)
      acd66(117)=abb66(38)
      acd66(118)=abb66(69)
      acd66(119)=abb66(74)
      acd66(120)=abb66(116)
      acd66(121)=abb66(49)
      acd66(122)=abb66(30)
      acd66(123)=abb66(22)
      acd66(124)=abb66(21)
      acd66(125)=abb66(65)
      acd66(126)=abb66(99)
      acd66(127)=abb66(15)
      acd66(128)=abb66(16)
      acd66(129)=abb66(55)
      acd66(130)=abb66(128)
      acd66(131)=acd66(8)*acd66(9)
      acd66(132)=acd66(5)*acd66(7)
      acd66(131)=acd66(132)+acd66(131)
      acd66(131)=acd66(6)*acd66(131)
      acd66(132)=acd66(9)*acd66(12)
      acd66(133)=acd66(7)*acd66(11)
      acd66(132)=acd66(132)+acd66(133)
      acd66(132)=acd66(10)*acd66(132)
      acd66(131)=-acd66(13)+acd66(132)+acd66(131)
      acd66(131)=acd66(4)*acd66(131)
      acd66(132)=acd66(1)*acd66(3)
      acd66(133)=acd66(10)*acd66(15)
      acd66(134)=acd66(10)*acd66(9)
      acd66(135)=acd66(8)*acd66(134)*acd66(14)
      acd66(136)=acd66(10)*acd66(7)
      acd66(137)=acd66(136)*acd66(14)
      acd66(138)=acd66(5)*acd66(137)
      acd66(131)=acd66(131)+acd66(138)+acd66(135)+acd66(132)+acd66(133)
      acd66(131)=acd66(2)*acd66(131)
      acd66(132)=acd66(8)*acd66(21)
      acd66(133)=-acd66(5)*acd66(20)
      acd66(132)=acd66(132)+acd66(133)
      acd66(132)=acd66(19)*acd66(132)
      acd66(133)=acd66(134)*acd66(16)
      acd66(133)=acd66(18)+acd66(133)
      acd66(133)=acd66(8)*acd66(133)
      acd66(135)=acd66(136)*acd66(16)
      acd66(135)=acd66(135)+acd66(17)
      acd66(136)=acd66(5)*acd66(135)
      acd66(133)=acd66(133)+acd66(136)
      acd66(133)=acd66(4)*acd66(133)
      acd66(131)=acd66(131)+acd66(133)+acd66(132)
      acd66(132)=acd66(1)*acd66(33)
      acd66(133)=2.0_ki*acd66(31)
      acd66(136)=acd66(133)*acd66(15)
      acd66(138)=acd66(28)+acd66(30)
      acd66(139)=acd66(38)*acd66(138)
      acd66(132)=acd66(139)+acd66(132)+acd66(136)
      acd66(132)=acd66(132)*acd66(10)
      acd66(136)=acd66(1)*acd66(27)
      acd66(140)=acd66(133)*acd66(3)
      acd66(141)=acd66(29)*acd66(138)
      acd66(136)=acd66(136)+acd66(140)-acd66(141)
      acd66(136)=acd66(136)*acd66(1)
      acd66(132)=acd66(132)+acd66(136)
      acd66(136)=acd66(53)*acd66(52)
      acd66(140)=acd66(51)*acd66(50)
      acd66(142)=acd66(48)*acd66(49)
      acd66(143)=acd66(46)*acd66(47)
      acd66(136)=acd66(143)+acd66(142)+acd66(136)+acd66(140)
      acd66(140)=acd66(138)-acd66(133)
      acd66(140)=acd66(140)*acd66(13)
      acd66(142)=acd66(1)*acd66(32)
      acd66(140)=acd66(140)+acd66(142)+acd66(136)
      acd66(142)=acd66(42)*acd66(9)
      acd66(143)=acd66(41)*acd66(7)
      acd66(142)=acd66(142)+acd66(143)
      acd66(143)=acd66(10)*acd66(142)
      acd66(144)=acd66(9)*acd66(43)
      acd66(144)=acd66(144)+acd66(45)
      acd66(145)=acd66(8)*acd66(144)
      acd66(146)=acd66(7)*acd66(43)
      acd66(146)=acd66(146)+acd66(44)
      acd66(147)=acd66(5)*acd66(146)
      acd66(143)=acd66(147)+acd66(145)+acd66(143)+acd66(140)
      acd66(143)=acd66(4)*acd66(143)
      acd66(145)=acd66(21)*acd66(58)
      acd66(147)=acd66(48)*acd66(60)
      acd66(148)=acd66(46)*acd66(59)
      acd66(145)=-acd66(148)+acd66(145)-acd66(147)
      acd66(147)=acd66(19)*acd66(62)
      acd66(148)=acd66(40)*acd66(9)
      acd66(148)=acd66(148)+acd66(61)
      acd66(149)=acd66(10)*acd66(148)
      acd66(147)=acd66(149)+acd66(147)-acd66(145)
      acd66(147)=acd66(8)*acd66(147)
      acd66(149)=acd66(20)*acd66(58)
      acd66(150)=acd66(48)*acd66(55)
      acd66(151)=acd66(46)*acd66(54)
      acd66(149)=acd66(151)+acd66(149)+acd66(150)
      acd66(150)=acd66(19)*acd66(57)
      acd66(151)=acd66(40)*acd66(7)
      acd66(151)=acd66(151)+acd66(56)
      acd66(152)=acd66(10)*acd66(151)
      acd66(150)=acd66(152)+acd66(150)+acd66(149)
      acd66(150)=acd66(5)*acd66(150)
      acd66(143)=acd66(143)+acd66(150)+acd66(147)+acd66(132)
      acd66(143)=acd66(2)*acd66(143)
      acd66(147)=acd66(34)+acd66(37)
      acd66(150)=acd66(26)*acd66(147)
      acd66(152)=-acd66(22)*acd66(26)
      acd66(153)=acd66(21)*acd66(133)
      acd66(152)=acd66(153)+acd66(152)+acd66(150)
      acd66(152)=acd66(8)*acd66(152)
      acd66(153)=acd66(25)*acd66(147)
      acd66(154)=acd66(22)*acd66(25)
      acd66(155)=-acd66(20)*acd66(133)
      acd66(154)=acd66(155)+acd66(154)-acd66(153)
      acd66(154)=acd66(5)*acd66(154)
      acd66(152)=acd66(152)+acd66(154)
      acd66(152)=acd66(19)*acd66(152)
      acd66(154)=-acd66(36)*acd66(147)
      acd66(155)=acd66(63)*acd66(65)
      acd66(154)=acd66(155)+acd66(154)
      acd66(155)=acd66(22)*acd66(24)
      acd66(155)=acd66(155)+acd66(154)
      acd66(156)=acd66(18)*acd66(133)
      acd66(157)=acd66(39)*acd66(9)
      acd66(157)=acd66(67)+acd66(157)
      acd66(157)=acd66(10)*acd66(157)
      acd66(156)=acd66(157)+acd66(156)+acd66(155)
      acd66(156)=acd66(8)*acd66(156)
      acd66(157)=-acd66(35)*acd66(147)
      acd66(158)=acd66(63)*acd66(64)
      acd66(157)=acd66(158)+acd66(157)
      acd66(158)=acd66(22)*acd66(23)
      acd66(158)=acd66(158)+acd66(157)
      acd66(159)=acd66(17)*acd66(133)
      acd66(160)=acd66(39)*acd66(7)
      acd66(160)=acd66(66)+acd66(160)
      acd66(160)=acd66(10)*acd66(160)
      acd66(159)=acd66(160)+acd66(159)+acd66(158)
      acd66(159)=acd66(5)*acd66(159)
      acd66(156)=acd66(156)+acd66(159)
      acd66(156)=acd66(4)*acd66(156)
      acd66(143)=acd66(143)+acd66(156)+acd66(152)
      acd66(152)=acd66(9)*ninjaP
      acd66(156)=acd66(8)*acd66(152)
      acd66(159)=acd66(7)*ninjaP
      acd66(160)=acd66(5)*acd66(159)
      acd66(156)=acd66(160)+acd66(156)
      acd66(156)=acd66(6)*acd66(156)
      acd66(160)=ninjaP+acd66(86)
      acd66(161)=acd66(83)+acd66(85)
      acd66(162)=acd66(161)-acd66(160)
      acd66(162)=acd66(13)*acd66(162)
      acd66(152)=acd66(12)*acd66(152)
      acd66(159)=acd66(11)*acd66(159)
      acd66(152)=acd66(152)+acd66(159)
      acd66(152)=acd66(10)*acd66(152)
      acd66(159)=acd66(53)*acd66(109)
      acd66(163)=acd66(51)*acd66(108)
      acd66(164)=acd66(49)*acd66(106)
      acd66(165)=acd66(47)*acd66(105)
      acd66(166)=acd66(80)*acd66(32)
      acd66(167)=acd66(42)*acd66(144)
      acd66(168)=acd66(41)*acd66(146)
      acd66(152)=acd66(152)+acd66(168)+acd66(167)+acd66(166)+acd66(165)+acd66(1&
      &64)+acd66(163)+acd66(110)+acd66(159)+acd66(162)+acd66(156)
      acd66(152)=acd66(4)*acd66(152)
      acd66(156)=acd66(60)*acd66(106)
      acd66(159)=acd66(59)*acd66(105)
      acd66(162)=acd66(72)*acd66(62)
      acd66(163)=-acd66(21)*acd66(107)
      acd66(164)=acd66(43)*acd66(61)
      acd66(165)=acd66(40)*acd66(144)
      acd66(134)=acd66(134)*ninjaP
      acd66(166)=acd66(14)*acd66(134)
      acd66(156)=acd66(166)+acd66(165)+acd66(164)+acd66(163)+acd66(162)+acd66(1&
      &56)+acd66(159)
      acd66(156)=acd66(8)*acd66(156)
      acd66(159)=acd66(55)*acd66(106)
      acd66(162)=acd66(54)*acd66(105)
      acd66(163)=acd66(72)*acd66(57)
      acd66(164)=acd66(20)*acd66(107)
      acd66(165)=acd66(43)*acd66(56)
      acd66(166)=acd66(40)*acd66(146)
      acd66(137)=ninjaP*acd66(137)
      acd66(137)=acd66(137)+acd66(166)+acd66(165)+acd66(164)+acd66(163)+acd66(1&
      &59)+acd66(162)
      acd66(137)=acd66(5)*acd66(137)
      acd66(159)=acd66(40)*acd66(142)
      acd66(162)=acd66(15)*acd66(160)
      acd66(163)=acd66(80)*acd66(33)
      acd66(164)=acd66(38)*acd66(161)
      acd66(165)=acd66(42)*acd66(61)
      acd66(166)=acd66(41)*acd66(56)
      acd66(159)=acd66(159)+acd66(166)+acd66(165)+acd66(164)+acd66(163)+acd66(1&
      &62)
      acd66(159)=acd66(10)*acd66(159)
      acd66(162)=acd66(3)*acd66(160)
      acd66(163)=acd66(80)*acd66(27)
      acd66(161)=-acd66(29)*acd66(161)
      acd66(164)=acd66(43)*acd66(33)
      acd66(165)=acd66(40)*acd66(32)
      acd66(161)=acd66(165)+acd66(164)+acd66(161)+acd66(88)+2.0_ki*acd66(163)+a&
      &cd66(162)
      acd66(161)=acd66(1)*acd66(161)
      acd66(162)=acd66(13)*acd66(138)
      acd66(136)=acd66(162)+acd66(136)
      acd66(136)=acd66(40)*acd66(136)
      acd66(162)=-acd66(42)*acd66(145)
      acd66(163)=acd66(41)*acd66(149)
      acd66(164)=acd66(3)*acd66(80)
      acd66(165)=acd66(43)*acd66(15)
      acd66(166)=-acd66(40)*acd66(13)
      acd66(164)=acd66(166)+acd66(165)+acd66(99)+acd66(164)
      acd66(164)=acd66(164)*acd66(133)
      acd66(165)=acd66(42)*acd66(62)
      acd66(166)=acd66(41)*acd66(57)
      acd66(165)=acd66(165)+acd66(166)
      acd66(165)=acd66(19)*acd66(165)
      acd66(141)=-acd66(80)*acd66(141)
      acd66(166)=acd66(114)*acd66(115)
      acd66(139)=acd66(43)*acd66(139)
      acd66(167)=acd66(63)*acd66(111)
      acd66(168)=acd66(48)*acd66(113)
      acd66(169)=acd66(46)*acd66(112)
      acd66(170)=acd66(22)*acd66(73)
      acd66(136)=acd66(152)+acd66(137)+acd66(156)+acd66(159)+acd66(165)+acd66(1&
      &61)+acd66(164)+acd66(136)+acd66(170)+acd66(163)+acd66(162)+acd66(169)+ac&
      &d66(168)+acd66(167)+acd66(139)+acd66(166)+acd66(141)
      acd66(136)=acd66(2)*acd66(136)
      acd66(137)=acd66(18)*acd66(160)
      acd66(139)=acd66(65)*acd66(104)
      acd66(141)=acd66(24)*acd66(68)
      acd66(152)=acd66(93)+acd66(95)
      acd66(156)=-acd66(36)*acd66(152)
      acd66(159)=acd66(43)*acd66(67)
      acd66(144)=acd66(39)*acd66(144)
      acd66(134)=acd66(16)*acd66(134)
      acd66(134)=acd66(134)+acd66(144)+acd66(159)+acd66(156)+acd66(141)+acd66(1&
      &18)+acd66(139)+acd66(137)
      acd66(134)=acd66(8)*acd66(134)
      acd66(135)=ninjaP*acd66(135)
      acd66(137)=acd66(64)*acd66(104)
      acd66(139)=acd66(23)*acd66(68)
      acd66(141)=acd66(86)*acd66(17)
      acd66(144)=-acd66(35)*acd66(152)
      acd66(156)=acd66(43)*acd66(66)
      acd66(146)=acd66(39)*acd66(146)
      acd66(135)=acd66(146)+acd66(156)+acd66(144)+acd66(141)+acd66(139)+acd66(1&
      &17)+acd66(137)+acd66(135)
      acd66(135)=acd66(5)*acd66(135)
      acd66(137)=acd66(39)*acd66(140)
      acd66(139)=acd66(39)*acd66(142)
      acd66(140)=acd66(42)*acd66(67)
      acd66(141)=acd66(41)*acd66(66)
      acd66(139)=acd66(139)+acd66(140)+acd66(141)
      acd66(139)=acd66(10)*acd66(139)
      acd66(140)=acd66(42)*acd66(154)
      acd66(141)=acd66(41)*acd66(157)
      acd66(142)=acd66(42)*acd66(24)
      acd66(144)=acd66(41)*acd66(23)
      acd66(142)=acd66(144)+acd66(74)+acd66(142)
      acd66(142)=acd66(22)*acd66(142)
      acd66(144)=acd66(42)*acd66(18)
      acd66(146)=acd66(41)*acd66(17)
      acd66(144)=acd66(146)+acd66(100)+acd66(144)
      acd66(144)=acd66(144)*acd66(133)
      acd66(146)=-acd66(96)*acd66(138)
      acd66(154)=acd66(63)*acd66(116)
      acd66(156)=acd66(48)*acd66(120)
      acd66(157)=acd66(46)*acd66(119)
      acd66(159)=acd66(1)*acd66(89)
      acd66(134)=acd66(135)+acd66(134)+acd66(139)+acd66(137)+acd66(159)+acd66(1&
      &44)+acd66(142)+acd66(141)+acd66(140)+acd66(157)+acd66(156)+acd66(154)+ac&
      &d66(146)
      acd66(134)=acd66(4)*acd66(134)
      acd66(135)=-acd66(39)*acd66(145)
      acd66(137)=acd66(21)*acd66(160)
      acd66(139)=acd66(152)-acd66(68)
      acd66(140)=acd66(26)*acd66(139)
      acd66(141)=acd66(39)*acd66(62)
      acd66(137)=acd66(141)+acd66(140)+acd66(130)+acd66(137)
      acd66(137)=acd66(19)*acd66(137)
      acd66(140)=acd66(40)*acd66(155)
      acd66(141)=acd66(21)*acd66(72)
      acd66(142)=acd66(40)*acd66(18)
      acd66(141)=acd66(141)+acd66(142)
      acd66(141)=acd66(141)*acd66(133)
      acd66(142)=acd66(40)*acd66(67)
      acd66(144)=acd66(39)*acd66(148)
      acd66(142)=acd66(144)+acd66(129)+acd66(142)
      acd66(142)=acd66(10)*acd66(142)
      acd66(144)=acd66(72)*acd66(150)
      acd66(145)=acd66(63)*acd66(122)
      acd66(146)=acd66(48)*acd66(128)
      acd66(148)=acd66(46)*acd66(127)
      acd66(152)=-acd66(26)*acd66(72)
      acd66(152)=acd66(77)+acd66(152)
      acd66(152)=acd66(22)*acd66(152)
      acd66(154)=acd66(1)*acd66(92)
      acd66(135)=acd66(142)+acd66(137)+acd66(135)+acd66(154)+acd66(141)+acd66(1&
      &40)+acd66(152)+acd66(148)+acd66(145)+acd66(146)+acd66(144)
      acd66(135)=acd66(8)*acd66(135)
      acd66(137)=acd66(39)*acd66(149)
      acd66(140)=-acd66(20)*acd66(160)
      acd66(139)=-acd66(25)*acd66(139)
      acd66(141)=acd66(39)*acd66(57)
      acd66(139)=acd66(141)+acd66(139)+acd66(126)+acd66(140)
      acd66(139)=acd66(19)*acd66(139)
      acd66(140)=acd66(40)*acd66(158)
      acd66(141)=-acd66(20)*acd66(72)
      acd66(142)=acd66(40)*acd66(17)
      acd66(141)=acd66(141)+acd66(142)
      acd66(141)=acd66(141)*acd66(133)
      acd66(142)=acd66(40)*acd66(66)
      acd66(144)=acd66(39)*acd66(151)
      acd66(142)=acd66(144)+acd66(125)+acd66(142)
      acd66(142)=acd66(10)*acd66(142)
      acd66(144)=-acd66(72)*acd66(153)
      acd66(145)=acd66(63)*acd66(121)
      acd66(146)=acd66(48)*acd66(124)
      acd66(148)=acd66(46)*acd66(123)
      acd66(149)=acd66(25)*acd66(72)
      acd66(149)=acd66(76)+acd66(149)
      acd66(149)=acd66(22)*acd66(149)
      acd66(151)=acd66(1)*acd66(91)
      acd66(137)=acd66(142)+acd66(139)+acd66(137)+acd66(151)+acd66(141)+acd66(1&
      &40)+acd66(149)+acd66(148)+acd66(145)+acd66(146)+acd66(144)
      acd66(137)=acd66(5)*acd66(137)
      acd66(139)=-acd66(94)*acd66(147)
      acd66(140)=acd66(63)*acd66(101)
      acd66(141)=acd66(48)*acd66(103)
      acd66(142)=acd66(46)*acd66(102)
      acd66(144)=acd66(22)*acd66(71)
      acd66(145)=acd66(98)*acd66(133)
      acd66(139)=acd66(145)+acd66(144)+acd66(142)+acd66(140)+acd66(141)+acd66(1&
      &39)
      acd66(139)=acd66(139)*acd66(133)
      acd66(140)=acd66(84)*acd66(138)
      acd66(141)=acd66(82)*acd66(147)
      acd66(142)=acd66(63)*acd66(90)
      acd66(144)=acd66(22)*acd66(69)
      acd66(145)=acd66(87)*acd66(133)
      acd66(146)=acd66(1)*acd66(81)
      acd66(140)=acd66(146)+acd66(145)+acd66(144)+acd66(142)+acd66(141)+acd66(1&
      &40)
      acd66(140)=acd66(1)*acd66(140)
      acd66(132)=acd66(39)*acd66(132)
      acd66(141)=-acd66(42)*acd66(26)
      acd66(142)=acd66(41)*acd66(25)
      acd66(141)=acd66(141)+acd66(142)
      acd66(141)=acd66(22)*acd66(141)
      acd66(142)=acd66(42)*acd66(21)
      acd66(144)=-acd66(41)*acd66(20)
      acd66(142)=acd66(142)+acd66(144)
      acd66(133)=acd66(142)*acd66(133)
      acd66(142)=acd66(42)*acd66(150)
      acd66(144)=-acd66(41)*acd66(153)
      acd66(133)=acd66(133)+acd66(141)+acd66(142)+acd66(144)
      acd66(133)=acd66(19)*acd66(133)
      acd66(141)=acd66(63)*acd66(75)
      acd66(142)=acd66(48)*acd66(79)
      acd66(144)=acd66(46)*acd66(78)
      acd66(141)=acd66(144)+acd66(141)+acd66(142)
      acd66(142)=-acd66(141)*acd66(147)
      acd66(144)=-acd66(70)*acd66(138)
      acd66(141)=acd66(141)+acd66(144)
      acd66(141)=acd66(22)*acd66(141)
      acd66(138)=-acd66(63)*acd66(97)*acd66(138)
      acd66(132)=acd66(136)+acd66(134)+acd66(137)+acd66(135)+acd66(133)+acd66(1&
      &40)+acd66(139)+acd66(141)+acd66(138)+acd66(142)+acd66(132)
      brack(ninjaidxt1mu0)=acd66(143)
      brack(ninjaidxt0mu0)=acd66(132)
      brack(ninjaidxt0mu2)=acd66(131)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d66h7_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd66h7
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k2
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
end module     p0_dbaru_epnebbbarg_d66h7l131
