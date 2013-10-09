module     p0_dbaru_epnebbbarg_d295h1l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity1d295h1l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd295h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc295(179)
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval6k1
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvak1e7
      complex(ki) :: Qspk7
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval6k1 = dotproduct(Q,spval6k1)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspk1 = dotproduct(Q,k1)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspe7 = dotproduct(Q,e7)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvak1e7 = dotproduct(Q,spvak1e7)
      Qspk7 = dotproduct(Q,k7)
      acc295(1)=abb295(8)
      acc295(2)=abb295(9)
      acc295(3)=abb295(10)
      acc295(4)=abb295(11)
      acc295(5)=abb295(12)
      acc295(6)=abb295(13)
      acc295(7)=abb295(14)
      acc295(8)=abb295(15)
      acc295(9)=abb295(16)
      acc295(10)=abb295(17)
      acc295(11)=abb295(18)
      acc295(12)=abb295(19)
      acc295(13)=abb295(20)
      acc295(14)=abb295(21)
      acc295(15)=abb295(22)
      acc295(16)=abb295(23)
      acc295(17)=abb295(24)
      acc295(18)=abb295(25)
      acc295(19)=abb295(26)
      acc295(20)=abb295(27)
      acc295(21)=abb295(28)
      acc295(22)=abb295(29)
      acc295(23)=abb295(30)
      acc295(24)=abb295(31)
      acc295(25)=abb295(32)
      acc295(26)=abb295(33)
      acc295(27)=abb295(34)
      acc295(28)=abb295(35)
      acc295(29)=abb295(36)
      acc295(30)=abb295(37)
      acc295(31)=abb295(38)
      acc295(32)=abb295(39)
      acc295(33)=abb295(40)
      acc295(34)=abb295(41)
      acc295(35)=abb295(42)
      acc295(36)=abb295(43)
      acc295(37)=abb295(44)
      acc295(38)=abb295(45)
      acc295(39)=abb295(46)
      acc295(40)=abb295(47)
      acc295(41)=abb295(48)
      acc295(42)=abb295(49)
      acc295(43)=abb295(50)
      acc295(44)=abb295(51)
      acc295(45)=abb295(52)
      acc295(46)=abb295(53)
      acc295(47)=abb295(54)
      acc295(48)=abb295(55)
      acc295(49)=abb295(56)
      acc295(50)=abb295(57)
      acc295(51)=abb295(58)
      acc295(52)=abb295(59)
      acc295(53)=abb295(60)
      acc295(54)=abb295(61)
      acc295(55)=abb295(62)
      acc295(56)=abb295(63)
      acc295(57)=abb295(64)
      acc295(58)=abb295(65)
      acc295(59)=abb295(66)
      acc295(60)=abb295(67)
      acc295(61)=abb295(68)
      acc295(62)=abb295(69)
      acc295(63)=abb295(70)
      acc295(64)=abb295(71)
      acc295(65)=abb295(72)
      acc295(66)=abb295(73)
      acc295(67)=abb295(77)
      acc295(68)=abb295(82)
      acc295(69)=abb295(83)
      acc295(70)=abb295(84)
      acc295(71)=abb295(89)
      acc295(72)=abb295(90)
      acc295(73)=abb295(91)
      acc295(74)=abb295(93)
      acc295(75)=abb295(94)
      acc295(76)=abb295(95)
      acc295(77)=abb295(96)
      acc295(78)=abb295(97)
      acc295(79)=abb295(98)
      acc295(80)=abb295(99)
      acc295(81)=abb295(100)
      acc295(82)=abb295(101)
      acc295(83)=abb295(103)
      acc295(84)=abb295(104)
      acc295(85)=abb295(105)
      acc295(86)=abb295(106)
      acc295(87)=abb295(108)
      acc295(88)=abb295(109)
      acc295(89)=abb295(110)
      acc295(90)=abb295(111)
      acc295(91)=abb295(112)
      acc295(92)=abb295(113)
      acc295(93)=abb295(114)
      acc295(94)=abb295(117)
      acc295(95)=abb295(118)
      acc295(96)=abb295(119)
      acc295(97)=abb295(120)
      acc295(98)=abb295(122)
      acc295(99)=abb295(127)
      acc295(100)=abb295(128)
      acc295(101)=abb295(129)
      acc295(102)=abb295(130)
      acc295(103)=abb295(133)
      acc295(104)=abb295(137)
      acc295(105)=abb295(139)
      acc295(106)=abb295(140)
      acc295(107)=abb295(141)
      acc295(108)=abb295(142)
      acc295(109)=abb295(151)
      acc295(110)=abb295(152)
      acc295(111)=abb295(154)
      acc295(112)=abb295(159)
      acc295(113)=abb295(163)
      acc295(114)=abb295(165)
      acc295(115)=abb295(166)
      acc295(116)=abb295(167)
      acc295(117)=abb295(168)
      acc295(118)=abb295(169)
      acc295(119)=abb295(170)
      acc295(120)=abb295(172)
      acc295(121)=abb295(173)
      acc295(122)=abb295(174)
      acc295(123)=abb295(175)
      acc295(124)=abb295(176)
      acc295(125)=abb295(177)
      acc295(126)=abb295(179)
      acc295(127)=abb295(180)
      acc295(128)=abb295(181)
      acc295(129)=abb295(183)
      acc295(130)=abb295(184)
      acc295(131)=abb295(187)
      acc295(132)=abb295(189)
      acc295(133)=abb295(190)
      acc295(134)=abb295(192)
      acc295(135)=abb295(195)
      acc295(136)=abb295(196)
      acc295(137)=abb295(197)
      acc295(138)=abb295(200)
      acc295(139)=abb295(201)
      acc295(140)=abb295(202)
      acc295(141)=abb295(203)
      acc295(142)=abb295(204)
      acc295(143)=abb295(206)
      acc295(144)=abb295(207)
      acc295(145)=abb295(208)
      acc295(146)=abb295(211)
      acc295(147)=abb295(212)
      acc295(148)=abb295(214)
      acc295(149)=abb295(215)
      acc295(150)=abb295(216)
      acc295(151)=abb295(218)
      acc295(152)=abb295(219)
      acc295(153)=abb295(220)
      acc295(154)=abb295(222)
      acc295(155)=abb295(223)
      acc295(156)=abb295(226)
      acc295(157)=abb295(227)
      acc295(158)=abb295(228)
      acc295(159)=Qspl6+Qspl5
      acc295(160)=acc295(67)*acc295(159)
      acc295(161)=Qspvak2k3*acc295(3)
      acc295(162)=Qspvak2k7*acc295(51)
      acc295(163)=-Qspval6k7*acc295(80)
      acc295(164)=Qspvak2k1*acc295(38)
      acc295(165)=-Qspval6k3*acc295(1)
      acc295(166)=Qspval6k1*acc295(40)
      acc295(167)=QspQ*acc295(47)
      acc295(168)=Qspk2*acc295(56)
      acc295(160)=acc295(168)+acc295(167)+acc295(166)+acc295(165)+acc295(164)+a&
      &cc295(163)+acc295(162)+acc295(2)+acc295(161)+acc295(160)
      acc295(160)=Qspvak1k2*acc295(160)
      acc295(161)=Qspval5k2*acc295(157)
      acc295(162)=Qspvak1k3*acc295(108)
      acc295(163)=Qspval6k3*acc295(151)
      acc295(164)=Qspvak7k2*acc295(140)
      acc295(165)=Qspvak4k2*acc295(74)
      acc295(166)=Qspval6k2*acc295(127)
      acc295(167)=Qspk2*acc295(112)
      acc295(161)=acc295(167)+acc295(166)+acc295(165)+acc295(164)+acc295(163)+a&
      &cc295(162)+acc295(48)+acc295(161)
      acc295(161)=Qspk2*acc295(161)
      acc295(162)=Qspval6l5*acc295(8)
      acc295(163)=-Qspk2*acc295(156)
      acc295(162)=acc295(163)+acc295(9)+acc295(162)
      acc295(162)=Qspvak1k2*acc295(162)
      acc295(163)=Qspl6*acc295(10)
      acc295(164)=Qspval6l5*acc295(118)
      acc295(165)=Qspvak1l5*acc295(94)
      acc295(166)=-Qspvak1l5*acc295(8)
      acc295(166)=acc295(16)+acc295(166)
      acc295(166)=Qspval6k2*acc295(166)
      acc295(167)=Qspk2*acc295(34)
      acc295(162)=acc295(162)+acc295(167)+acc295(166)+acc295(165)+acc295(164)+a&
      &cc295(7)+acc295(163)
      acc295(162)=Qspvak4k3*acc295(162)
      acc295(163)=-Qspval6k7*acc295(33)
      acc295(164)=-Qspval6k3*acc295(68)
      acc295(165)=Qspval6k1*acc295(88)
      acc295(163)=acc295(165)+acc295(164)+acc295(12)+acc295(163)
      acc295(163)=Qspvak1l5*acc295(163)
      acc295(164)=Qspvak1k3*acc295(106)
      acc295(165)=Qspval6k3*acc295(150)
      acc295(164)=-acc295(105)+acc295(164)+acc295(165)
      acc295(164)=-acc295(164)*acc295(159)
      acc295(165)=Qspvak1k7*acc295(33)
      acc295(166)=Qspvak1k3*acc295(68)
      acc295(165)=acc295(166)+acc295(111)+acc295(165)
      acc295(165)=Qspval6l5*acc295(165)
      acc295(166)=Qspvak1k7*acc295(80)
      acc295(167)=Qspvak1k3*acc295(1)
      acc295(166)=acc295(167)+acc295(5)+acc295(166)
      acc295(166)=Qspval6k2*acc295(166)
      acc295(167)=Qspvak1k3*acc295(99)
      acc295(168)=Qspval6k3*acc295(120)
      acc295(167)=acc295(168)+acc295(58)+acc295(167)
      acc295(167)=QspQ*acc295(167)
      acc295(168)=Qspval6l5*acc295(50)
      acc295(169)=Qspval6k2*acc295(155)
      acc295(168)=acc295(169)+acc295(85)+acc295(168)
      acc295(168)=Qspk1*acc295(168)
      acc295(169)=Qspvak2k3*acc295(22)
      acc295(170)=Qspvak2k7*acc295(107)
      acc295(171)=Qspvak1k7*acc295(13)
      acc295(172)=Qspval6k7*acc295(142)
      acc295(173)=Qspval5k2*acc295(136)
      acc295(174)=Qspvak2k1*acc295(31)
      acc295(175)=Qspvak2l5*acc295(43)
      acc295(176)=Qspvak2l6*acc295(35)
      acc295(177)=Qspvak7k2*acc295(137)
      acc295(178)=Qspvak4k2*acc295(65)
      acc295(179)=Qspval6k1*acc295(72)
      acc295(160)=acc295(162)+acc295(160)+acc295(161)+acc295(168)+acc295(167)+a&
      &cc295(166)+acc295(163)+acc295(165)+acc295(179)+acc295(178)+acc295(177)+a&
      &cc295(176)+acc295(175)+acc295(174)+acc295(173)+acc295(172)+acc295(171)+a&
      &cc295(170)+acc295(79)+acc295(169)+acc295(164)
      acc295(160)=Qspe7*acc295(160)
      acc295(161)=Qspvak2k1*acc295(59)
      acc295(162)=Qspvak2e7*acc295(17)
      acc295(163)=Qspval6k1*acc295(46)
      acc295(164)=Qspval6e7*acc295(82)
      acc295(165)=Qspk2*acc295(25)
      acc295(161)=acc295(165)+acc295(164)+acc295(163)+acc295(162)+acc295(4)+acc&
      &295(161)
      acc295(161)=Qspvak1k2*acc295(161)
      acc295(162)=Qspval6k1*acc295(95)
      acc295(163)=-Qspval6e7*acc295(158)
      acc295(162)=acc295(163)+acc295(93)+acc295(162)
      acc295(162)=Qspvak1l5*acc295(162)
      acc295(163)=Qspval6l5*acc295(138)
      acc295(164)=Qspval6k2*acc295(143)
      acc295(163)=acc295(164)+acc295(45)+acc295(163)
      acc295(163)=Qspk1*acc295(163)
      acc295(164)=Qspvak7k2*acc295(116)
      acc295(165)=Qspvae7k2*acc295(98)
      acc295(164)=acc295(165)+acc295(30)+acc295(164)
      acc295(164)=Qspk2*acc295(164)
      acc295(165)=Qspvak2k1*acc295(19)
      acc295(166)=Qspvak2l5*acc295(77)
      acc295(167)=Qspvak2l6*acc295(41)
      acc295(168)=Qspvak7k2*acc295(115)
      acc295(169)=Qspvae7k2*acc295(75)
      acc295(170)=Qspvak2e7*acc295(103)
      acc295(171)=Qspval6k1*acc295(52)
      acc295(172)=Qspval6l5*acc295(124)
      acc295(173)=Qspval6l5*acc295(158)
      acc295(173)=acc295(32)+acc295(173)
      acc295(173)=Qspvak1e7*acc295(173)
      acc295(174)=Qspval6e7*acc295(6)
      acc295(175)=-Qspvak1e7*acc295(82)
      acc295(175)=acc295(21)+acc295(175)
      acc295(175)=Qspval6k2*acc295(175)
      acc295(161)=acc295(161)+acc295(164)+acc295(163)+acc295(175)+acc295(162)+a&
      &cc295(174)+acc295(173)+acc295(172)+acc295(171)+acc295(170)+acc295(169)+a&
      &cc295(168)+acc295(167)+acc295(166)+acc295(29)+acc295(165)
      acc295(161)=Qspvak4k3*acc295(161)
      acc295(162)=Qspvak2l5*acc295(37)
      acc295(163)=Qspvak2l6*acc295(60)
      acc295(164)=Qspvae7k2*acc295(129)
      acc295(165)=Qspvak4k2*acc295(86)
      acc295(166)=Qspvak2e7*acc295(132)
      acc295(167)=Qspval6k1*acc295(119)
      acc295(168)=Qspval6l5*acc295(146)
      acc295(169)=Qspval6l5*acc295(149)
      acc295(169)=acc295(96)+acc295(169)
      acc295(169)=Qspvak1e7*acc295(169)
      acc295(170)=Qspval6e7*acc295(91)
      acc295(171)=-Qspval6e7*acc295(149)
      acc295(171)=acc295(54)+acc295(171)
      acc295(171)=Qspvak1l5*acc295(171)
      acc295(172)=Qspvak1e7*acc295(92)
      acc295(172)=acc295(44)+acc295(172)
      acc295(172)=Qspval6k2*acc295(172)
      acc295(162)=acc295(172)+acc295(171)+acc295(170)+acc295(169)+acc295(168)+a&
      &cc295(167)+acc295(166)+acc295(165)+acc295(164)+acc295(163)+acc295(24)+ac&
      &c295(162)
      acc295(162)=QspQ*acc295(162)
      acc295(163)=Qspvae7k2*acc295(128)
      acc295(164)=Qspvak4k2*acc295(78)
      acc295(163)=acc295(163)+acc295(164)
      acc295(164)=acc295(89)+acc295(163)
      acc295(164)=Qspk7*acc295(164)
      acc295(165)=Qspvae7k2*acc295(130)
      acc295(166)=Qspvak4k2*acc295(87)
      acc295(165)=acc295(166)+acc295(76)+acc295(165)
      acc295(165)=QspQ*acc295(165)
      acc295(163)=acc295(117)-acc295(163)
      acc295(163)=Qspk1*acc295(163)
      acc295(166)=Qspval5k2*acc295(152)
      acc295(167)=Qspvak7k2*acc295(139)
      acc295(168)=Qspvak4k2*acc295(69)
      acc295(169)=Qspval6k1*acc295(122)
      acc295(170)=Qspvak1e7*acc295(110)
      acc295(171)=Qspval6e7*acc295(123)
      acc295(172)=Qspval6k2*acc295(153)
      acc295(173)=Qspk2*acc295(109)
      acc295(163)=acc295(173)+acc295(163)+acc295(165)+acc295(164)+acc295(172)+a&
      &cc295(171)+acc295(170)+acc295(169)+acc295(168)+acc295(167)+acc295(71)+ac&
      &c295(166)
      acc295(163)=Qspk2*acc295(163)
      acc295(164)=Qspval6l5*acc295(148)
      acc295(164)=acc295(164)-acc295(133)
      acc295(164)=acc295(164)*Qspvak1e7
      acc295(165)=Qspval6e7*acc295(148)
      acc295(165)=acc295(165)+acc295(55)
      acc295(165)=acc295(165)*Qspvak1l5
      acc295(166)=Qspvak2l5*acc295(61)
      acc295(167)=Qspvak2l6*acc295(100)
      acc295(168)=Qspvae7k2*acc295(126)
      acc295(169)=Qspvak4k2*acc295(66)
      acc295(170)=Qspvak2e7*acc295(131)
      acc295(171)=Qspval6e7*acc295(101)
      acc295(164)=-acc295(164)-acc295(168)+acc295(166)-acc295(167)+acc295(169)+&
      &acc295(170)+acc295(165)+acc295(171)
      acc295(165)=Qspval6l5*acc295(144)
      acc295(166)=Qspvak1e7*acc295(154)
      acc295(167)=acc295(102)-acc295(166)
      acc295(167)=Qspval6k2*acc295(167)
      acc295(165)=acc295(167)+acc295(165)+acc295(97)+acc295(164)
      acc295(165)=Qspk7*acc295(165)
      acc295(167)=-acc295(114)*acc295(159)
      acc295(168)=Qspval6l5*acc295(90)
      acc295(166)=acc295(145)+acc295(166)
      acc295(166)=Qspval6k2*acc295(166)
      acc295(169)=QspQ*acc295(83)
      acc295(164)=acc295(169)+acc295(166)+acc295(168)+acc295(70)+acc295(167)-ac&
      &c295(164)
      acc295(164)=Qspk1*acc295(164)
      acc295(166)=Qspvak2e7*acc295(57)
      acc295(167)=Qspval6e7*acc295(154)
      acc295(166)=acc295(39)+acc295(166)-acc295(167)
      acc295(167)=Qspk1-Qspk7
      acc295(166)=acc295(166)*acc295(167)
      acc295(167)=Qspvak2e7*acc295(63)
      acc295(168)=-Qspval6e7*acc295(92)
      acc295(167)=acc295(168)+acc295(27)+acc295(167)
      acc295(167)=QspQ*acc295(167)
      acc295(168)=-acc295(49)*acc295(159)
      acc295(169)=Qspvak2k1*acc295(18)
      acc295(170)=Qspvak2e7*acc295(15)
      acc295(171)=Qspval6k1*acc295(62)
      acc295(172)=Qspval6e7*acc295(125)
      acc295(173)=Qspk2*acc295(42)
      acc295(166)=acc295(173)+acc295(167)+acc295(172)+acc295(171)+acc295(170)+a&
      &cc295(20)+acc295(169)+acc295(168)+acc295(166)
      acc295(166)=Qspvak1k2*acc295(166)
      acc295(167)=-Qspval6e7*acc295(121)
      acc295(167)=acc295(167)-acc295(104)
      acc295(167)=acc295(159)*acc295(167)
      acc295(168)=-acc295(134)*acc295(159)
      acc295(169)=-Qspval6l5*acc295(147)
      acc295(168)=acc295(169)+acc295(168)
      acc295(168)=Qspvak1e7*acc295(168)
      acc295(169)=Qspval6k1*acc295(73)
      acc295(170)=Qspval6e7*acc295(147)
      acc295(169)=acc295(170)+acc295(53)+acc295(169)
      acc295(169)=Qspvak1l5*acc295(169)
      acc295(170)=Qspval5k2*acc295(141)
      acc295(171)=Qspvak2k1*acc295(23)
      acc295(172)=Qspvak2l5*acc295(36)
      acc295(173)=Qspvak2l6*acc295(11)
      acc295(174)=Qspvak7k2*acc295(135)
      acc295(175)=Qspvak4k2*acc295(28)
      acc295(176)=Qspvak2e7*acc295(64)
      acc295(159)=-acc295(113)*acc295(159)
      acc295(159)=acc295(84)+acc295(159)
      acc295(159)=Qspval6k1*acc295(159)
      acc295(177)=Qspval6l5*acc295(81)
      acc295(178)=-Qspvak1e7*acc295(125)
      acc295(178)=acc295(14)+acc295(178)
      acc295(178)=Qspval6k2*acc295(178)
      brack=acc295(26)+acc295(159)+acc295(160)+acc295(161)+acc295(162)+acc295(1&
      &63)+acc295(164)+acc295(165)+acc295(166)+acc295(167)+acc295(168)+acc295(1&
      &69)+acc295(170)+acc295(171)+acc295(172)+acc295(173)+acc295(174)+acc295(1&
      &75)+acc295(176)+acc295(177)+acc295(178)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbarg_groups, only: &
!           & sign => diagram295_sign, shift => diagram295_shift
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd295h1
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d295
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k6+k5
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d295 = 0.0_ki
      d295 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d295, ki), aimag(d295), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd295h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d295
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k6+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d295 = 0.0_ki
      d295 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d295, ki), aimag(d295), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d295h1l1
