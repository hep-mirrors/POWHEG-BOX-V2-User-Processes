module     p0_dbaru_epnebbbarg_d293h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity2d293h2l1.f90
   ! generator: buildfortran.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd293h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc293(177)
      complex(ki) :: Qspk1
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspk7
      complex(ki) :: Qspl5
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspval5k3
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspe7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak1e7
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak1l5
      Qspk1 = dotproduct(Q,k1)
      Qspl6 = dotproduct(Q,l6)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspk7 = dotproduct(Q,k7)
      Qspl5 = dotproduct(Q,l5)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspval5k3 = dotproduct(Q,spval5k3)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspe7 = dotproduct(Q,e7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak1e7 = dotproduct(Q,spvak1e7)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      acc293(1)=abb293(8)
      acc293(2)=abb293(9)
      acc293(3)=abb293(10)
      acc293(4)=abb293(11)
      acc293(5)=abb293(12)
      acc293(6)=abb293(13)
      acc293(7)=abb293(14)
      acc293(8)=abb293(15)
      acc293(9)=abb293(16)
      acc293(10)=abb293(17)
      acc293(11)=abb293(18)
      acc293(12)=abb293(19)
      acc293(13)=abb293(20)
      acc293(14)=abb293(21)
      acc293(15)=abb293(22)
      acc293(16)=abb293(23)
      acc293(17)=abb293(24)
      acc293(18)=abb293(25)
      acc293(19)=abb293(26)
      acc293(20)=abb293(27)
      acc293(21)=abb293(28)
      acc293(22)=abb293(29)
      acc293(23)=abb293(30)
      acc293(24)=abb293(31)
      acc293(25)=abb293(32)
      acc293(26)=abb293(33)
      acc293(27)=abb293(34)
      acc293(28)=abb293(35)
      acc293(29)=abb293(36)
      acc293(30)=abb293(37)
      acc293(31)=abb293(38)
      acc293(32)=abb293(39)
      acc293(33)=abb293(40)
      acc293(34)=abb293(41)
      acc293(35)=abb293(42)
      acc293(36)=abb293(43)
      acc293(37)=abb293(44)
      acc293(38)=abb293(45)
      acc293(39)=abb293(46)
      acc293(40)=abb293(47)
      acc293(41)=abb293(48)
      acc293(42)=abb293(49)
      acc293(43)=abb293(50)
      acc293(44)=abb293(51)
      acc293(45)=abb293(52)
      acc293(46)=abb293(53)
      acc293(47)=abb293(54)
      acc293(48)=abb293(55)
      acc293(49)=abb293(56)
      acc293(50)=abb293(57)
      acc293(51)=abb293(58)
      acc293(52)=abb293(59)
      acc293(53)=abb293(60)
      acc293(54)=abb293(61)
      acc293(55)=abb293(62)
      acc293(56)=abb293(63)
      acc293(57)=abb293(64)
      acc293(58)=abb293(65)
      acc293(59)=abb293(66)
      acc293(60)=abb293(67)
      acc293(61)=abb293(68)
      acc293(62)=abb293(69)
      acc293(63)=abb293(70)
      acc293(64)=abb293(71)
      acc293(65)=abb293(72)
      acc293(66)=abb293(75)
      acc293(67)=abb293(76)
      acc293(68)=abb293(78)
      acc293(69)=abb293(79)
      acc293(70)=abb293(81)
      acc293(71)=abb293(82)
      acc293(72)=abb293(85)
      acc293(73)=abb293(86)
      acc293(74)=abb293(87)
      acc293(75)=abb293(89)
      acc293(76)=abb293(91)
      acc293(77)=abb293(92)
      acc293(78)=abb293(93)
      acc293(79)=abb293(94)
      acc293(80)=abb293(95)
      acc293(81)=abb293(96)
      acc293(82)=abb293(97)
      acc293(83)=abb293(99)
      acc293(84)=abb293(100)
      acc293(85)=abb293(102)
      acc293(86)=abb293(105)
      acc293(87)=abb293(106)
      acc293(88)=abb293(107)
      acc293(89)=abb293(111)
      acc293(90)=abb293(114)
      acc293(91)=abb293(118)
      acc293(92)=abb293(119)
      acc293(93)=abb293(121)
      acc293(94)=abb293(125)
      acc293(95)=abb293(127)
      acc293(96)=abb293(128)
      acc293(97)=abb293(129)
      acc293(98)=abb293(130)
      acc293(99)=abb293(132)
      acc293(100)=abb293(134)
      acc293(101)=abb293(135)
      acc293(102)=abb293(136)
      acc293(103)=abb293(137)
      acc293(104)=abb293(138)
      acc293(105)=abb293(139)
      acc293(106)=abb293(140)
      acc293(107)=abb293(143)
      acc293(108)=abb293(144)
      acc293(109)=abb293(146)
      acc293(110)=abb293(147)
      acc293(111)=abb293(148)
      acc293(112)=abb293(149)
      acc293(113)=abb293(150)
      acc293(114)=abb293(155)
      acc293(115)=abb293(156)
      acc293(116)=abb293(158)
      acc293(117)=abb293(161)
      acc293(118)=abb293(163)
      acc293(119)=abb293(173)
      acc293(120)=abb293(174)
      acc293(121)=abb293(176)
      acc293(122)=abb293(179)
      acc293(123)=abb293(182)
      acc293(124)=abb293(187)
      acc293(125)=abb293(201)
      acc293(126)=abb293(209)
      acc293(127)=abb293(227)
      acc293(128)=abb293(229)
      acc293(129)=abb293(230)
      acc293(130)=abb293(235)
      acc293(131)=abb293(236)
      acc293(132)=abb293(241)
      acc293(133)=abb293(242)
      acc293(134)=abb293(249)
      acc293(135)=abb293(250)
      acc293(136)=abb293(251)
      acc293(137)=abb293(252)
      acc293(138)=abb293(253)
      acc293(139)=abb293(255)
      acc293(140)=abb293(257)
      acc293(141)=abb293(258)
      acc293(142)=abb293(259)
      acc293(143)=abb293(260)
      acc293(144)=abb293(261)
      acc293(145)=abb293(262)
      acc293(146)=abb293(263)
      acc293(147)=abb293(264)
      acc293(148)=abb293(267)
      acc293(149)=abb293(268)
      acc293(150)=abb293(270)
      acc293(151)=abb293(273)
      acc293(152)=abb293(274)
      acc293(153)=abb293(275)
      acc293(154)=abb293(276)
      acc293(155)=abb293(277)
      acc293(156)=abb293(278)
      acc293(157)=abb293(280)
      acc293(158)=Qspk1+Qspl6
      acc293(159)=acc293(115)*acc293(158)
      acc293(160)=Qspvak4l6*acc293(77)
      acc293(161)=Qspvak7l6*acc293(141)
      acc293(162)=Qspvak2l6*acc293(101)
      acc293(163)=Qspval5l6*acc293(143)
      acc293(164)=Qspvak1k3*acc293(8)
      acc293(165)=Qspvak1k2*acc293(42)
      acc293(159)=acc293(165)+acc293(164)+acc293(163)+acc293(162)+acc293(161)+a&
      &cc293(105)+acc293(160)+acc293(159)
      acc293(159)=Qspval5k2*acc293(159)
      acc293(160)=Qspk7+Qspl5
      acc293(161)=acc293(107)*acc293(160)
      acc293(162)=Qspval5k1*acc293(110)
      acc293(163)=-Qspval5k3*acc293(106)
      acc293(164)=Qspval5k2*acc293(109)
      acc293(165)=QspQ*acc293(7)
      acc293(166)=Qspk2*acc293(4)
      acc293(161)=acc293(166)+acc293(165)+acc293(164)+acc293(163)+acc293(19)+ac&
      &c293(162)+acc293(161)
      acc293(161)=Qspvak1l6*acc293(161)
      acc293(162)=Qspvak1k7*acc293(123)
      acc293(163)=Qspval5l6*acc293(140)
      acc293(163)=acc293(56)+acc293(163)
      acc293(163)=Qspvak1k2*acc293(163)
      acc293(164)=-Qspval5k2*acc293(137)
      acc293(165)=QspQ*acc293(148)
      acc293(166)=Qspk2*acc293(144)
      acc293(167)=Qspvak1l6*acc293(30)
      acc293(162)=acc293(167)+acc293(166)+acc293(165)+acc293(164)+acc293(163)+a&
      &cc293(38)+acc293(162)
      acc293(162)=Qspvak4k3*acc293(162)
      acc293(163)=Qspvak1k3*acc293(72)
      acc293(163)=acc293(163)+acc293(122)
      acc293(163)=-acc293(163)*acc293(160)
      acc293(164)=Qspval6k2*acc293(100)
      acc293(165)=Qspval5k1*acc293(133)
      acc293(166)=Qspval5k3*acc293(138)
      acc293(167)=Qspvak2k1*acc293(40)
      acc293(168)=Qspvak2l6*acc293(151)
      acc293(169)=Qspk1*acc293(130)
      acc293(170)=Qspvak2k3*acc293(104)
      acc293(171)=Qspk1*acc293(136)
      acc293(171)=acc293(129)+acc293(171)
      acc293(171)=Qspval5l6*acc293(171)
      acc293(172)=Qspvak7k2*acc293(116)
      acc293(173)=Qspvak4k2*acc293(70)
      acc293(174)=Qspval5l6*acc293(106)
      acc293(174)=acc293(6)+acc293(174)
      acc293(174)=Qspvak1k3*acc293(174)
      acc293(175)=Qspval5l6*acc293(48)
      acc293(175)=acc293(43)+acc293(175)
      acc293(175)=Qspvak1k2*acc293(175)
      acc293(176)=Qspvak1k3*acc293(95)
      acc293(176)=acc293(3)+acc293(176)
      acc293(176)=QspQ*acc293(176)
      acc293(177)=Qspvak1k3*acc293(14)
      acc293(177)=acc293(68)+acc293(177)
      acc293(177)=Qspk2*acc293(177)
      acc293(159)=acc293(162)+acc293(161)+acc293(177)+acc293(176)+acc293(159)+a&
      &cc293(175)+acc293(174)+acc293(173)+acc293(172)+acc293(171)+acc293(170)+a&
      &cc293(169)+acc293(168)+acc293(167)+acc293(166)+acc293(165)+acc293(71)+ac&
      &c293(164)+acc293(163)
      acc293(159)=Qspe7*acc293(159)
      acc293(161)=Qspk7-Qspl5
      acc293(162)=-acc293(87)*acc293(161)
      acc293(163)=Qspvak2k1*acc293(62)
      acc293(164)=Qspvak2l6*acc293(90)
      acc293(165)=Qspk1*acc293(126)
      acc293(166)=Qspvak2k3*acc293(64)
      acc293(167)=Qspvak7k2*acc293(113)
      acc293(168)=Qspvae7k2*acc293(15)
      acc293(169)=Qspvak2k3*acc293(74)
      acc293(169)=acc293(76)+acc293(169)
      acc293(169)=Qspvak4k2*acc293(169)
      acc293(170)=Qspvak4k2*acc293(41)
      acc293(170)=acc293(21)+acc293(170)
      acc293(170)=Qspvak1k3*acc293(170)
      acc293(171)=Qspvak1k2*acc293(47)
      acc293(172)=QspQ*acc293(84)
      acc293(173)=Qspk2*acc293(93)
      acc293(162)=acc293(173)+acc293(172)+acc293(171)+acc293(170)+acc293(169)+a&
      &cc293(168)+acc293(167)+acc293(166)+acc293(165)+acc293(164)+acc293(9)+acc&
      &293(163)+acc293(162)
      acc293(162)=Qspk2*acc293(162)
      acc293(163)=-acc293(39)*acc293(161)
      acc293(164)=Qspvak7k2*acc293(78)
      acc293(165)=Qspvae7k2*acc293(60)
      acc293(166)=QspQ*acc293(58)
      acc293(167)=Qspk2*acc293(20)
      acc293(163)=acc293(167)+acc293(166)+acc293(165)+acc293(16)+acc293(164)+ac&
      &c293(163)
      acc293(163)=Qspvak1l6*acc293(163)
      acc293(164)=-acc293(146)*acc293(161)
      acc293(165)=-Qspvak1k2*acc293(41)
      acc293(166)=QspQ*acc293(149)
      acc293(167)=Qspk2*acc293(147)
      acc293(164)=acc293(167)+acc293(166)+acc293(22)+acc293(165)+acc293(164)
      acc293(164)=Qspk2*acc293(164)
      acc293(165)=Qspvak1k2*acc293(128)
      acc293(165)=acc293(165)+acc293(49)
      acc293(161)=-acc293(165)*acc293(161)
      acc293(165)=acc293(149)*Qspvak2k7
      acc293(166)=acc293(128)*Qspvak1k7
      acc293(165)=acc293(166)+acc293(53)+acc293(165)
      acc293(165)=Qspvak7k2*acc293(165)
      acc293(166)=acc293(150)*Qspvak1e7
      acc293(167)=-acc293(114)*Qspvak2e7
      acc293(166)=acc293(28)+acc293(166)+acc293(167)
      acc293(166)=Qspvae7k2*acc293(166)
      acc293(167)=Qspvae7k2*acc293(91)
      acc293(168)=Qspvak1k2*acc293(52)
      acc293(167)=acc293(168)+acc293(45)+acc293(167)
      acc293(167)=QspQ*acc293(167)
      acc293(168)=acc293(155)*Qspvak2l5
      acc293(169)=acc293(32)*Qspvak1l5
      acc293(170)=Qspvak2k7*acc293(88)
      acc293(171)=Qspvak1k7*acc293(96)
      acc293(172)=-Qspval5l6*acc293(121)
      acc293(172)=acc293(36)+acc293(172)
      acc293(172)=Qspvak1k2*acc293(172)
      acc293(173)=Qspval5k2*acc293(83)
      acc293(161)=acc293(163)+acc293(164)+acc293(167)+acc293(173)+acc293(172)+a&
      &cc293(166)+acc293(165)+acc293(171)+acc293(170)+acc293(29)+acc293(168)+ac&
      &c293(169)+acc293(161)
      acc293(161)=Qspvak4k3*acc293(161)
      acc293(160)=-acc293(131)*acc293(160)
      acc293(163)=Qspvak2k1*acc293(33)
      acc293(164)=Qspvak2l6*acc293(125)
      acc293(165)=Qspk1*acc293(132)
      acc293(166)=Qspvak2k3*acc293(86)
      acc293(167)=Qspvae7k2*acc293(75)
      acc293(168)=Qspvak2k3*acc293(59)
      acc293(168)=acc293(85)+acc293(168)
      acc293(168)=Qspvak4k2*acc293(168)
      acc293(169)=-Qspvak4k2*acc293(52)
      acc293(169)=acc293(26)+acc293(169)
      acc293(169)=Qspvak1k3*acc293(169)
      acc293(170)=Qspvak1k2*acc293(54)
      acc293(171)=QspQ*acc293(99)
      acc293(160)=acc293(171)+acc293(170)+acc293(169)+acc293(168)+acc293(167)+a&
      &cc293(166)+acc293(165)+acc293(164)+acc293(34)+acc293(163)+acc293(160)
      acc293(160)=QspQ*acc293(160)
      acc293(163)=Qspval5k1*acc293(23)
      acc293(164)=Qspval5k3*acc293(57)
      acc293(165)=Qspvak7k2*acc293(55)
      acc293(166)=Qspvae7k2*acc293(31)
      acc293(167)=Qspvak4k2*acc293(102)
      acc293(168)=acc293(61)+acc293(167)
      acc293(168)=Qspl5*acc293(168)
      acc293(167)=acc293(97)+acc293(167)
      acc293(167)=Qspk7*acc293(167)
      acc293(169)=Qspval5k2*acc293(108)
      acc293(170)=Qspvak4k2*acc293(73)
      acc293(170)=acc293(12)+acc293(170)
      acc293(170)=QspQ*acc293(170)
      acc293(171)=Qspvak4k2*acc293(111)
      acc293(171)=acc293(11)+acc293(171)
      acc293(171)=Qspk2*acc293(171)
      acc293(163)=acc293(171)+acc293(170)+acc293(169)+acc293(167)+acc293(168)+a&
      &cc293(166)+acc293(165)+acc293(164)+acc293(27)+acc293(163)
      acc293(163)=Qspvak1l6*acc293(163)
      acc293(158)=-acc293(118)*acc293(158)
      acc293(164)=Qspvak4l6*acc293(145)
      acc293(165)=Qspvak7l6*acc293(139)
      acc293(166)=Qspvak2l6*acc293(156)
      acc293(167)=Qspvak2k3*acc293(18)
      acc293(168)=Qspval5l6*acc293(142)
      acc293(169)=Qspvak1k3*acc293(37)
      acc293(170)=Qspvak1k2*acc293(24)
      acc293(158)=acc293(170)+acc293(169)+acc293(168)+acc293(167)+acc293(166)+a&
      &cc293(165)+acc293(69)+acc293(164)+acc293(158)
      acc293(158)=Qspval5k2*acc293(158)
      acc293(164)=Qspvak2k1*acc293(89)
      acc293(165)=Qspvak2l6*acc293(154)
      acc293(166)=Qspk1*acc293(117)
      acc293(167)=Qspvak2k3*acc293(67)
      acc293(164)=acc293(167)+acc293(166)+acc293(165)+acc293(66)+acc293(164)
      acc293(164)=Qspvak7k2*acc293(164)
      acc293(165)=Qspvak2k1*acc293(63)
      acc293(166)=Qspvak2l6*acc293(153)
      acc293(167)=Qspk1*acc293(92)
      acc293(168)=Qspvak2k3*acc293(81)
      acc293(165)=acc293(168)+acc293(167)+acc293(166)+acc293(2)+acc293(165)
      acc293(165)=Qspvae7k2*acc293(165)
      acc293(166)=Qspvak2k1*acc293(51)
      acc293(167)=Qspvak2l6*acc293(152)
      acc293(168)=Qspk1*acc293(134)
      acc293(169)=Qspvak1k2*acc293(44)
      acc293(166)=acc293(166)+acc293(167)+acc293(168)+acc293(169)
      acc293(167)=Qspvak2k3*acc293(149)
      acc293(167)=acc293(167)+acc293(79)
      acc293(167)=acc293(167)*Qspvak4k2
      acc293(168)=Qspvak2k3*acc293(157)
      acc293(169)=Qspvak4k2*acc293(128)
      acc293(170)=acc293(82)-acc293(169)
      acc293(170)=Qspvak1k3*acc293(170)
      acc293(168)=acc293(170)-acc293(167)+acc293(168)+acc293(112)+acc293(166)
      acc293(168)=Qspl5*acc293(168)
      acc293(170)=Qspvak2k3*acc293(119)
      acc293(169)=acc293(65)-acc293(169)
      acc293(169)=Qspvak1k3*acc293(169)
      acc293(166)=acc293(169)-acc293(167)+acc293(170)+acc293(120)-acc293(166)
      acc293(166)=Qspk7*acc293(166)
      acc293(167)=-Qspval5l6*acc293(57)
      acc293(169)=Qspvak7k2*acc293(5)
      acc293(170)=Qspvae7k2*acc293(1)
      acc293(167)=acc293(170)+acc293(167)+acc293(169)
      acc293(167)=Qspvak1k3*acc293(167)
      acc293(169)=Qspval5l6*acc293(46)
      acc293(170)=Qspvak7k2*acc293(13)
      acc293(171)=Qspvae7k2*acc293(10)
      acc293(169)=acc293(171)+acc293(170)+acc293(35)+acc293(169)
      acc293(169)=Qspvak1k2*acc293(169)
      acc293(170)=Qspval6k2*acc293(124)
      acc293(171)=Qspval5k1*acc293(103)
      acc293(172)=Qspval5k3*acc293(94)
      acc293(173)=Qspvak2k1*acc293(25)
      acc293(174)=Qspvak2l6*acc293(50)
      acc293(175)=Qspk1*acc293(98)
      acc293(176)=Qspk1*acc293(135)
      acc293(176)=acc293(127)+acc293(176)
      acc293(176)=Qspval5l6*acc293(176)
      acc293(177)=Qspvak4k2*acc293(80)
      brack=acc293(17)+acc293(158)+acc293(159)+acc293(160)+acc293(161)+acc293(1&
      &62)+acc293(163)+acc293(164)+acc293(165)+acc293(166)+acc293(167)+acc293(1&
      &68)+acc293(169)+acc293(170)+acc293(171)+acc293(172)+acc293(173)+acc293(1&
      &74)+acc293(175)+acc293(176)+acc293(177)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbarg_groups, only: &
!           & sign => diagram293_sign, shift => diagram293_shift
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd293h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d293
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k7+k5
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d293 = 0.0_ki
      d293 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d293, ki), aimag(d293), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd293h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d293
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k7+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d293 = 0.0_ki
      d293 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d293, ki), aimag(d293), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d293h2l1
