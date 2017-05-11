module     p0_gg_hhg_d61h4l131
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity4d61h4l131.f90
   ! generator: buildfortran_tn3.py
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt3mu0 = 0
   integer, parameter :: ninjaidxt2mu0 = 1
   integer, parameter :: ninjaidxt1mu0 = 2
   integer, parameter :: ninjaidxt1mu2 = 3
   integer, parameter :: ninjaidxt0mu0 = 4
   integer, parameter :: ninjaidxt0mu2 = 5
   public :: numerator_t3
contains
!---#[ subroutine brack_31:
   pure subroutine brack_31(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd61h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(12) :: acd61
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd61(1)=dotproduct(k2,ninjaE3)
      acd61(2)=dotproduct(ninjaE3,spvak1k2)
      acd61(3)=dotproduct(ninjaE3,spvak2k5)
      acd61(4)=dotproduct(ninjaE3,spvak5k2)
      acd61(5)=abb61(22)
      acd61(6)=dotproduct(l3,ninjaE3)
      acd61(7)=abb61(79)
      acd61(8)=dotproduct(ninjaA,ninjaE3)
      acd61(9)=abb61(25)
      acd61(10)=acd61(5)*acd61(1)
      acd61(11)=-acd61(7)*acd61(6)
      acd61(12)=acd61(9)*acd61(8)
      acd61(10)=2.0_ki*acd61(12)+acd61(10)+acd61(11)
      acd61(10)=acd61(2)*acd61(10)*acd61(4)*acd61(3)
      brack(ninjaidxt3mu0)=0.0_ki
      brack(ninjaidxt2mu0)=acd61(10)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd61h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(188) :: acd61
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd61(1)=dotproduct(k1,ninjaE3)
      acd61(2)=dotproduct(ninjaE3,spvak1k2)
      acd61(3)=abb61(52)
      acd61(4)=dotproduct(k2,ninjaE3)
      acd61(5)=dotproduct(ninjaE3,spvak5k2)
      acd61(6)=dotproduct(ninjaE4,spvak2k5)
      acd61(7)=abb61(22)
      acd61(8)=dotproduct(ninjaE3,spvak2k5)
      acd61(9)=dotproduct(ninjaE4,spvak5k2)
      acd61(10)=abb61(48)
      acd61(11)=dotproduct(ninjaE4,spvak1k2)
      acd61(12)=abb61(96)
      acd61(13)=dotproduct(k2,ninjaE4)
      acd61(14)=dotproduct(l3,ninjaE3)
      acd61(15)=abb61(79)
      acd61(16)=abb61(45)
      acd61(17)=abb61(84)
      acd61(18)=dotproduct(l3,ninjaE4)
      acd61(19)=dotproduct(l4,ninjaE3)
      acd61(20)=abb61(44)
      acd61(21)=abb61(94)
      acd61(22)=dotproduct(k5,ninjaE3)
      acd61(23)=abb61(26)
      acd61(24)=dotproduct(ninjaA,ninjaE3)
      acd61(25)=abb61(25)
      acd61(26)=abb61(56)
      acd61(27)=abb61(75)
      acd61(28)=dotproduct(ninjaA,ninjaE4)
      acd61(29)=dotproduct(ninjaA,spvak1k2)
      acd61(30)=dotproduct(ninjaA,spvak5k2)
      acd61(31)=dotproduct(ninjaA,spvak2k5)
      acd61(32)=dotproduct(ninjaE3,spvak1k5)
      acd61(33)=abb61(21)
      acd61(34)=abb61(74)
      acd61(35)=abb61(20)
      acd61(36)=dotproduct(ninjaE3,spvak5k1)
      acd61(37)=abb61(50)
      acd61(38)=dotproduct(ninjaE3,spvak5l3)
      acd61(39)=abb61(70)
      acd61(40)=dotproduct(ninjaE3,spvak5l4)
      acd61(41)=abb61(72)
      acd61(42)=dotproduct(ninjaE3,spval3k2)
      acd61(43)=abb61(118)
      acd61(44)=dotproduct(ninjaE3,spval4k2)
      acd61(45)=abb61(109)
      acd61(46)=abb61(150)
      acd61(47)=dotproduct(ninjaE3,spvak2l3)
      acd61(48)=abb61(146)
      acd61(49)=abb61(132)
      acd61(50)=dotproduct(ninjaE3,spval4k5)
      acd61(51)=abb61(126)
      acd61(52)=abb61(147)
      acd61(53)=abb61(95)
      acd61(54)=abb61(78)
      acd61(55)=abb61(111)
      acd61(56)=dotproduct(k2,ninjaA)
      acd61(57)=abb61(68)
      acd61(58)=abb61(64)
      acd61(59)=abb61(60)
      acd61(60)=abb61(9)
      acd61(61)=abb61(77)
      acd61(62)=dotproduct(ninjaE3,spvak2k1)
      acd61(63)=abb61(31)
      acd61(64)=abb61(112)
      acd61(65)=dotproduct(l3,ninjaA)
      acd61(66)=abb61(119)
      acd61(67)=abb61(33)
      acd61(68)=abb61(73)
      acd61(69)=abb61(24)
      acd61(70)=abb61(152)
      acd61(71)=abb61(46)
      acd61(72)=dotproduct(ninjaA,ninjaA)
      acd61(73)=abb61(11)
      acd61(74)=abb61(23)
      acd61(75)=dotproduct(ninjaE3,spvak2l4)
      acd61(76)=abb61(32)
      acd61(77)=dotproduct(ninjaE3,spval3k5)
      acd61(78)=abb61(36)
      acd61(79)=abb61(82)
      acd61(80)=dotproduct(k1,ninjaA)
      acd61(81)=abb61(35)
      acd61(82)=abb61(86)
      acd61(83)=abb61(85)
      acd61(84)=abb61(27)
      acd61(85)=abb61(59)
      acd61(86)=abb61(108)
      acd61(87)=abb61(140)
      acd61(88)=dotproduct(k5,ninjaA)
      acd61(89)=abb61(65)
      acd61(90)=dotproduct(ninjaA,spvak1k5)
      acd61(91)=dotproduct(ninjaA,spvak2k1)
      acd61(92)=abb61(19)
      acd61(93)=abb61(149)
      acd61(94)=abb61(106)
      acd61(95)=abb61(92)
      acd61(96)=abb61(67)
      acd61(97)=abb61(88)
      acd61(98)=abb61(102)
      acd61(99)=dotproduct(l4,ninjaA)
      acd61(100)=abb61(89)
      acd61(101)=abb61(14)
      acd61(102)=abb61(98)
      acd61(103)=abb61(15)
      acd61(104)=abb61(43)
      acd61(105)=dotproduct(ninjaA,spvak2l3)
      acd61(106)=dotproduct(ninjaA,spvak5k1)
      acd61(107)=dotproduct(ninjaA,spvak5l3)
      acd61(108)=dotproduct(ninjaA,spvak5l4)
      acd61(109)=dotproduct(ninjaA,spval4k5)
      acd61(110)=dotproduct(ninjaA,spval3k2)
      acd61(111)=dotproduct(ninjaA,spval4k2)
      acd61(112)=abb61(41)
      acd61(113)=abb61(81)
      acd61(114)=abb61(142)
      acd61(115)=abb61(62)
      acd61(116)=abb61(134)
      acd61(117)=abb61(138)
      acd61(118)=abb61(123)
      acd61(119)=dotproduct(ninjaA,spvak2l4)
      acd61(120)=dotproduct(ninjaA,spval3k5)
      acd61(121)=abb61(38)
      acd61(122)=abb61(13)
      acd61(123)=abb61(34)
      acd61(124)=abb61(37)
      acd61(125)=abb61(16)
      acd61(126)=abb61(18)
      acd61(127)=abb61(29)
      acd61(128)=abb61(115)
      acd61(129)=abb61(76)
      acd61(130)=abb61(61)
      acd61(131)=abb61(69)
      acd61(132)=abb61(80)
      acd61(133)=abb61(97)
      acd61(134)=abb61(110)
      acd61(135)=abb61(117)
      acd61(136)=abb61(145)
      acd61(137)=abb61(104)
      acd61(138)=abb61(30)
      acd61(139)=abb61(125)
      acd61(140)=abb61(136)
      acd61(141)=abb61(137)
      acd61(142)=acd61(40)*acd61(41)
      acd61(143)=acd61(38)*acd61(39)
      acd61(144)=acd61(36)*acd61(37)
      acd61(145)=acd61(44)*acd61(45)
      acd61(146)=acd61(42)*acd61(43)
      acd61(147)=acd61(22)*acd61(23)
      acd61(148)=acd61(19)*acd61(20)
      acd61(149)=acd61(1)*acd61(3)
      acd61(142)=acd61(143)+acd61(142)+acd61(147)+acd61(148)+acd61(144)+acd61(1&
      &45)+acd61(146)+acd61(149)
      acd61(143)=acd61(32)*acd61(33)
      acd61(143)=acd61(143)+acd61(142)
      acd61(144)=acd61(14)*acd61(16)
      acd61(145)=acd61(4)*acd61(10)
      acd61(144)=acd61(143)+acd61(144)+acd61(145)
      acd61(145)=acd61(15)*acd61(18)
      acd61(146)=acd61(7)*acd61(13)
      acd61(147)=acd61(25)*acd61(28)
      acd61(145)=-2.0_ki*acd61(147)+acd61(145)-acd61(146)
      acd61(145)=acd61(145)*acd61(8)
      acd61(146)=acd61(25)*acd61(31)
      acd61(146)=acd61(146)+acd61(34)
      acd61(145)=acd61(145)-acd61(146)
      acd61(147)=acd61(14)*acd61(15)
      acd61(148)=acd61(4)*acd61(7)
      acd61(149)=acd61(147)-acd61(148)
      acd61(150)=2.0_ki*acd61(24)
      acd61(151)=acd61(25)*acd61(150)
      acd61(151)=acd61(151)-acd61(149)
      acd61(151)=acd61(6)*acd61(151)
      acd61(151)=acd61(151)-acd61(145)
      acd61(151)=acd61(5)*acd61(151)
      acd61(152)=-acd61(9)*acd61(149)
      acd61(153)=acd61(30)*acd61(25)
      acd61(153)=acd61(153)+acd61(35)
      acd61(152)=acd61(153)+acd61(152)
      acd61(152)=acd61(8)*acd61(152)
      acd61(154)=acd61(8)*acd61(25)
      acd61(155)=acd61(154)*acd61(9)
      acd61(156)=2.0_ki*acd61(26)
      acd61(155)=acd61(156)+acd61(155)
      acd61(155)=acd61(155)*acd61(150)
      acd61(151)=acd61(151)+acd61(155)+acd61(152)+acd61(144)
      acd61(151)=acd61(2)*acd61(151)
      acd61(152)=acd61(50)*acd61(51)
      acd61(155)=acd61(47)*acd61(48)
      acd61(157)=acd61(19)*acd61(21)
      acd61(152)=acd61(157)+acd61(152)+acd61(155)
      acd61(155)=acd61(32)*acd61(46)
      acd61(155)=acd61(155)+acd61(152)
      acd61(157)=acd61(14)*acd61(17)
      acd61(158)=acd61(4)*acd61(12)
      acd61(157)=acd61(155)+acd61(157)+acd61(158)
      acd61(158)=-acd61(11)*acd61(149)
      acd61(159)=acd61(29)*acd61(25)
      acd61(159)=acd61(159)+acd61(49)
      acd61(158)=acd61(158)+acd61(159)
      acd61(158)=acd61(8)*acd61(158)
      acd61(160)=acd61(154)*acd61(11)
      acd61(161)=2.0_ki*acd61(27)
      acd61(160)=acd61(161)+acd61(160)
      acd61(160)=acd61(160)*acd61(150)
      acd61(158)=acd61(160)+acd61(158)+acd61(157)
      acd61(158)=acd61(5)*acd61(158)
      acd61(151)=acd61(158)+acd61(151)
      acd61(158)=acd61(8)*acd61(153)
      acd61(160)=acd61(26)*acd61(150)
      acd61(144)=acd61(160)+acd61(158)+acd61(144)
      acd61(144)=acd61(144)*acd61(150)
      acd61(158)=acd61(62)*acd61(63)
      acd61(160)=acd61(22)*acd61(59)
      acd61(158)=acd61(158)+acd61(160)
      acd61(160)=acd61(1)*acd61(52)
      acd61(162)=acd61(32)*acd61(60)
      acd61(163)=acd61(14)*acd61(58)
      acd61(164)=acd61(4)*acd61(57)
      acd61(160)=acd61(163)+acd61(164)+acd61(160)+acd61(162)+acd61(158)
      acd61(162)=acd61(4)*acd61(160)
      acd61(163)=acd61(77)*acd61(78)
      acd61(164)=acd61(75)*acd61(76)
      acd61(165)=acd61(50)*acd61(79)
      acd61(166)=acd61(47)*acd61(73)
      acd61(167)=acd61(19)*acd61(71)
      acd61(163)=acd61(163)+acd61(165)+acd61(166)+acd61(164)+acd61(167)
      acd61(164)=acd61(25)*acd61(72)
      acd61(165)=acd61(15)*acd61(65)
      acd61(166)=acd61(7)*acd61(56)
      acd61(164)=acd61(74)+acd61(166)+acd61(164)-acd61(165)
      acd61(165)=ninjaP*acd61(25)
      acd61(166)=acd61(164)+acd61(165)
      acd61(167)=acd61(8)*acd61(166)
      acd61(168)=acd61(146)*acd61(150)
      acd61(169)=acd61(15)*acd61(31)
      acd61(169)=acd61(169)-acd61(68)
      acd61(170)=-acd61(14)*acd61(169)
      acd61(171)=acd61(7)*acd61(31)
      acd61(171)=acd61(171)+acd61(61)
      acd61(172)=acd61(4)*acd61(171)
      acd61(167)=acd61(168)+acd61(167)+acd61(172)+acd61(170)+acd61(163)
      acd61(167)=acd61(5)*acd61(167)
      acd61(168)=acd61(62)*acd61(69)
      acd61(170)=acd61(22)*acd61(66)
      acd61(168)=acd61(168)+acd61(170)
      acd61(170)=acd61(1)*acd61(54)
      acd61(172)=acd61(32)*acd61(67)
      acd61(170)=acd61(168)+acd61(170)+acd61(172)
      acd61(172)=acd61(14)*acd61(170)
      acd61(173)=-acd61(8)*acd61(30)*acd61(149)
      acd61(144)=acd61(167)+acd61(144)+acd61(173)+acd61(172)+acd61(162)
      acd61(144)=acd61(2)*acd61(144)
      acd61(159)=acd61(8)*acd61(159)
      acd61(162)=acd61(27)*acd61(150)
      acd61(157)=acd61(162)+acd61(159)+acd61(157)
      acd61(157)=acd61(157)*acd61(150)
      acd61(159)=acd61(1)*acd61(55)
      acd61(162)=acd61(32)*acd61(70)
      acd61(159)=acd61(159)+acd61(162)
      acd61(162)=acd61(14)*acd61(159)
      acd61(167)=acd61(1)*acd61(53)
      acd61(172)=acd61(32)*acd61(64)
      acd61(167)=acd61(167)+acd61(172)
      acd61(172)=acd61(4)*acd61(167)
      acd61(149)=-acd61(29)*acd61(149)
      acd61(173)=acd61(8)*acd61(149)
      acd61(157)=acd61(157)+acd61(173)+acd61(162)+acd61(172)
      acd61(157)=acd61(5)*acd61(157)
      acd61(144)=acd61(157)+acd61(144)
      acd61(157)=acd61(2)*acd61(5)*acd61(154)
      acd61(162)=ninjaP+acd61(72)
      acd61(156)=acd61(156)*acd61(162)
      acd61(172)=acd61(45)*acd61(111)
      acd61(173)=acd61(43)*acd61(110)
      acd61(174)=acd61(41)*acd61(108)
      acd61(175)=acd61(39)*acd61(107)
      acd61(176)=acd61(37)*acd61(106)
      acd61(177)=acd61(33)*acd61(90)
      acd61(178)=acd61(23)*acd61(88)
      acd61(179)=acd61(20)*acd61(99)
      acd61(180)=acd61(3)*acd61(80)
      acd61(181)=acd61(65)*acd61(16)
      acd61(182)=acd61(56)*acd61(10)
      acd61(183)=acd61(31)*acd61(35)
      acd61(184)=acd61(30)*acd61(146)
      acd61(154)=acd61(154)*ninjaP
      acd61(185)=acd61(9)*acd61(154)
      acd61(156)=acd61(185)+acd61(184)+acd61(183)+acd61(182)+acd61(181)+acd61(1&
      &80)+acd61(179)+acd61(178)+acd61(177)+acd61(176)+acd61(175)+acd61(174)+ac&
      &d61(173)+acd61(112)+acd61(172)+acd61(156)
      acd61(156)=acd61(156)*acd61(150)
      acd61(172)=acd61(6)*acd61(148)
      acd61(145)=acd61(172)-acd61(145)
      acd61(145)=ninjaP*acd61(145)
      acd61(165)=acd61(150)*acd61(165)
      acd61(147)=acd61(147)*ninjaP
      acd61(165)=acd61(165)-acd61(147)
      acd61(165)=acd61(6)*acd61(165)
      acd61(172)=-acd61(65)*acd61(169)
      acd61(173)=acd61(56)*acd61(171)
      acd61(174)=acd61(72)*acd61(146)
      acd61(175)=acd61(79)*acd61(109)
      acd61(176)=acd61(78)*acd61(120)
      acd61(177)=acd61(76)*acd61(119)
      acd61(178)=acd61(73)*acd61(105)
      acd61(179)=acd61(71)*acd61(99)
      acd61(180)=acd61(31)*acd61(74)
      acd61(145)=acd61(180)+acd61(179)+acd61(178)+acd61(177)+acd61(176)+acd61(1&
      &24)+acd61(175)+acd61(145)+acd61(174)+acd61(173)+acd61(172)+acd61(165)
      acd61(145)=acd61(5)*acd61(145)
      acd61(142)=acd61(72)*acd61(142)
      acd61(165)=ninjaP*acd61(143)
      acd61(172)=acd61(10)*acd61(162)
      acd61(173)=acd61(63)*acd61(91)
      acd61(174)=acd61(59)*acd61(88)
      acd61(175)=acd61(80)*acd61(52)
      acd61(176)=acd61(90)*acd61(60)
      acd61(177)=acd61(65)*acd61(58)
      acd61(178)=acd61(56)*acd61(57)
      acd61(179)=acd61(30)*acd61(171)
      acd61(172)=acd61(179)+2.0_ki*acd61(178)+acd61(177)+acd61(176)+acd61(175)+&
      &acd61(174)+acd61(92)+acd61(173)+acd61(172)
      acd61(172)=acd61(4)*acd61(172)
      acd61(173)=acd61(16)*acd61(162)
      acd61(174)=acd61(69)*acd61(91)
      acd61(175)=acd61(66)*acd61(88)
      acd61(176)=acd61(80)*acd61(54)
      acd61(177)=acd61(90)*acd61(67)
      acd61(178)=acd61(56)*acd61(58)
      acd61(179)=-acd61(30)*acd61(169)
      acd61(173)=acd61(179)+acd61(178)+acd61(177)+acd61(176)+acd61(175)+acd61(9&
      &6)+acd61(174)+acd61(173)
      acd61(173)=acd61(14)*acd61(173)
      acd61(174)=acd61(30)*acd61(163)
      acd61(164)=acd61(30)*acd61(164)
      acd61(148)=acd61(148)*ninjaP
      acd61(147)=acd61(148)-acd61(147)
      acd61(148)=acd61(9)*acd61(147)
      acd61(175)=acd61(72)*acd61(35)
      acd61(176)=ninjaP*acd61(153)
      acd61(148)=acd61(176)+acd61(164)+acd61(126)+acd61(175)+acd61(148)
      acd61(148)=acd61(8)*acd61(148)
      acd61(164)=acd61(65)*acd61(67)
      acd61(175)=acd61(56)*acd61(60)
      acd61(176)=acd61(72)*acd61(33)
      acd61(164)=acd61(176)+acd61(175)+acd61(122)+acd61(164)
      acd61(164)=acd61(32)*acd61(164)
      acd61(168)=acd61(65)*acd61(168)
      acd61(158)=acd61(56)*acd61(158)
      acd61(175)=acd61(65)*acd61(54)
      acd61(176)=acd61(56)*acd61(52)
      acd61(175)=acd61(176)+acd61(85)+acd61(175)
      acd61(175)=acd61(1)*acd61(175)
      acd61(176)=acd61(77)*acd61(128)
      acd61(177)=acd61(75)*acd61(127)
      acd61(178)=acd61(40)*acd61(131)
      acd61(179)=acd61(38)*acd61(130)
      acd61(180)=acd61(36)*acd61(129)
      acd61(181)=acd61(62)*acd61(125)
      acd61(182)=acd61(44)*acd61(134)
      acd61(183)=acd61(42)*acd61(133)
      acd61(184)=acd61(50)*acd61(132)
      acd61(185)=acd61(47)*acd61(123)
      acd61(186)=acd61(22)*acd61(103)
      acd61(187)=acd61(19)*acd61(101)
      acd61(188)=acd61(2)*acd61(121)
      acd61(142)=acd61(188)+acd61(145)+acd61(156)+acd61(148)+acd61(172)+acd61(1&
      &73)+acd61(165)+acd61(174)+acd61(164)+acd61(142)+acd61(175)+acd61(187)+ac&
      &d61(158)+acd61(168)+acd61(186)+acd61(185)+acd61(184)+acd61(183)+acd61(18&
      &2)+acd61(181)+acd61(180)+acd61(179)+acd61(178)+acd61(176)+acd61(177)
      acd61(142)=acd61(2)*acd61(142)
      acd61(145)=acd61(161)*acd61(162)
      acd61(148)=acd61(51)*acd61(109)
      acd61(156)=acd61(48)*acd61(105)
      acd61(158)=acd61(46)*acd61(90)
      acd61(161)=acd61(21)*acd61(99)
      acd61(164)=acd61(65)*acd61(17)
      acd61(165)=acd61(56)*acd61(12)
      acd61(168)=acd61(31)*acd61(49)
      acd61(146)=acd61(29)*acd61(146)
      acd61(154)=acd61(11)*acd61(154)
      acd61(145)=acd61(154)+acd61(146)+acd61(168)+acd61(165)+acd61(164)+acd61(1&
      &61)+acd61(158)+acd61(156)+acd61(115)+acd61(148)+acd61(145)
      acd61(145)=acd61(145)*acd61(150)
      acd61(146)=acd61(29)*acd61(163)
      acd61(148)=acd61(17)*acd61(162)
      acd61(154)=acd61(80)*acd61(55)
      acd61(156)=acd61(90)*acd61(70)
      acd61(158)=-acd61(29)*acd61(169)
      acd61(148)=acd61(158)+acd61(156)+acd61(98)+acd61(154)+acd61(148)
      acd61(148)=acd61(14)*acd61(148)
      acd61(154)=acd61(12)*acd61(162)
      acd61(156)=acd61(80)*acd61(53)
      acd61(158)=acd61(90)*acd61(64)
      acd61(161)=acd61(29)*acd61(171)
      acd61(154)=acd61(161)+acd61(158)+acd61(94)+acd61(156)+acd61(154)
      acd61(154)=acd61(4)*acd61(154)
      acd61(152)=acd61(72)*acd61(152)
      acd61(156)=acd61(65)*acd61(70)
      acd61(158)=acd61(56)*acd61(64)
      acd61(161)=acd61(72)*acd61(46)
      acd61(156)=acd61(161)+acd61(158)+acd61(135)+acd61(156)
      acd61(156)=acd61(32)*acd61(156)
      acd61(158)=ninjaP*acd61(155)
      acd61(161)=acd61(29)*acd61(166)
      acd61(147)=acd61(11)*acd61(147)
      acd61(162)=acd61(49)*acd61(162)
      acd61(147)=acd61(161)+acd61(137)+acd61(147)+acd61(162)
      acd61(147)=acd61(8)*acd61(147)
      acd61(161)=acd61(65)*acd61(55)
      acd61(162)=acd61(56)*acd61(53)
      acd61(161)=acd61(162)+acd61(86)+acd61(161)
      acd61(161)=acd61(1)*acd61(161)
      acd61(162)=acd61(77)*acd61(138)
      acd61(163)=acd61(50)*acd61(139)
      acd61(164)=acd61(47)*acd61(136)
      acd61(165)=acd61(19)*acd61(102)
      acd61(145)=acd61(145)+acd61(147)+acd61(154)+acd61(148)+acd61(146)+acd61(1&
      &58)+acd61(156)+acd61(152)+acd61(161)+acd61(165)+acd61(164)+acd61(162)+ac&
      &d61(163)
      acd61(145)=acd61(5)*acd61(145)
      acd61(143)=acd61(29)*acd61(143)
      acd61(146)=acd61(30)*acd61(155)
      acd61(147)=acd61(30)*acd61(17)
      acd61(148)=acd61(29)*acd61(16)
      acd61(147)=acd61(148)+acd61(95)+acd61(147)
      acd61(147)=acd61(14)*acd61(147)
      acd61(148)=acd61(30)*acd61(12)
      acd61(152)=acd61(29)*acd61(10)
      acd61(148)=acd61(152)+acd61(89)+acd61(148)
      acd61(148)=acd61(4)*acd61(148)
      acd61(152)=acd61(30)*acd61(49)
      acd61(153)=acd61(29)*acd61(153)
      acd61(152)=acd61(153)+acd61(116)+acd61(152)
      acd61(152)=acd61(8)*acd61(152)
      acd61(153)=acd61(30)*acd61(27)
      acd61(154)=acd61(29)*acd61(26)
      acd61(153)=acd61(154)+acd61(104)+acd61(153)
      acd61(153)=acd61(153)*acd61(150)
      acd61(154)=acd61(75)*acd61(117)
      acd61(155)=acd61(50)*acd61(118)
      acd61(156)=acd61(47)*acd61(114)
      acd61(158)=acd61(19)*acd61(100)
      acd61(161)=acd61(1)*acd61(84)
      acd61(162)=acd61(32)*acd61(113)
      acd61(143)=acd61(153)+acd61(152)+acd61(148)+acd61(147)+acd61(143)+acd61(1&
      &46)+acd61(162)+acd61(161)+acd61(158)+acd61(156)+acd61(154)+acd61(155)
      acd61(143)=acd61(143)*acd61(150)
      acd61(146)=acd61(29)*acd61(160)
      acd61(147)=acd61(30)*acd61(167)
      acd61(148)=acd61(1)*acd61(81)
      acd61(150)=acd61(32)*acd61(93)
      acd61(146)=acd61(147)+acd61(148)+acd61(150)+acd61(146)
      acd61(146)=acd61(4)*acd61(146)
      acd61(147)=acd61(29)*acd61(170)
      acd61(148)=acd61(30)*acd61(159)
      acd61(150)=acd61(1)*acd61(82)
      acd61(152)=acd61(32)*acd61(97)
      acd61(147)=acd61(147)+acd61(148)+acd61(150)+acd61(152)
      acd61(147)=acd61(14)*acd61(147)
      acd61(148)=acd61(30)*acd61(149)
      acd61(149)=acd61(44)*acd61(141)
      acd61(150)=acd61(42)*acd61(140)
      acd61(148)=acd61(149)+acd61(150)+acd61(148)
      acd61(148)=acd61(8)*acd61(148)
      acd61(149)=acd61(75)*acd61(87)
      acd61(150)=acd61(19)*acd61(83)
      acd61(149)=acd61(149)+acd61(150)
      acd61(149)=acd61(1)*acd61(149)
      acd61(142)=acd61(142)+acd61(145)+acd61(143)+acd61(148)+acd61(146)+acd61(1&
      &49)+acd61(147)
      brack(ninjaidxt1mu0)=acd61(144)
      brack(ninjaidxt1mu2)=acd61(157)
      brack(ninjaidxt0mu0)=acd61(142)
      brack(ninjaidxt0mu2)=acd61(151)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d61h4_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd61h4
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k3-k4
	     vecA(1:4) = - a(0:3) - qshift(1:4)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(0))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_gg_hhg_d61h4l131
