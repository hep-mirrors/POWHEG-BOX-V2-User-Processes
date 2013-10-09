module     p9_csbar_epnebbbarg_d297h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity2d297h2l1.f90
   ! generator: buildfortran.py
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd297h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc297(210)
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspl5
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspval5e7
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspk7
      complex(ki) :: QspQ
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspk2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspe7
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspvak7k1
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspl5 = dotproduct(Q,l5)
      Qspk1 = dotproduct(Q,k1)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspval5e7 = dotproduct(Q,spval5e7)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspl6 = dotproduct(Q,l6)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspk7 = dotproduct(Q,k7)
      QspQ = dotproduct(Q,Q)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspk2 = dotproduct(Q,k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspe7 = dotproduct(Q,e7)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      acc297(1)=abb297(8)
      acc297(2)=abb297(9)
      acc297(3)=abb297(10)
      acc297(4)=abb297(11)
      acc297(5)=abb297(12)
      acc297(6)=abb297(13)
      acc297(7)=abb297(14)
      acc297(8)=abb297(15)
      acc297(9)=abb297(16)
      acc297(10)=abb297(17)
      acc297(11)=abb297(18)
      acc297(12)=abb297(19)
      acc297(13)=abb297(20)
      acc297(14)=abb297(21)
      acc297(15)=abb297(22)
      acc297(16)=abb297(23)
      acc297(17)=abb297(24)
      acc297(18)=abb297(25)
      acc297(19)=abb297(26)
      acc297(20)=abb297(27)
      acc297(21)=abb297(28)
      acc297(22)=abb297(29)
      acc297(23)=abb297(30)
      acc297(24)=abb297(31)
      acc297(25)=abb297(32)
      acc297(26)=abb297(33)
      acc297(27)=abb297(34)
      acc297(28)=abb297(35)
      acc297(29)=abb297(36)
      acc297(30)=abb297(37)
      acc297(31)=abb297(38)
      acc297(32)=abb297(39)
      acc297(33)=abb297(40)
      acc297(34)=abb297(41)
      acc297(35)=abb297(42)
      acc297(36)=abb297(43)
      acc297(37)=abb297(44)
      acc297(38)=abb297(45)
      acc297(39)=abb297(46)
      acc297(40)=abb297(47)
      acc297(41)=abb297(48)
      acc297(42)=abb297(49)
      acc297(43)=abb297(50)
      acc297(44)=abb297(51)
      acc297(45)=abb297(52)
      acc297(46)=abb297(53)
      acc297(47)=abb297(54)
      acc297(48)=abb297(55)
      acc297(49)=abb297(56)
      acc297(50)=abb297(57)
      acc297(51)=abb297(58)
      acc297(52)=abb297(59)
      acc297(53)=abb297(60)
      acc297(54)=abb297(62)
      acc297(55)=abb297(63)
      acc297(56)=abb297(64)
      acc297(57)=abb297(65)
      acc297(58)=abb297(66)
      acc297(59)=abb297(67)
      acc297(60)=abb297(69)
      acc297(61)=abb297(70)
      acc297(62)=abb297(71)
      acc297(63)=abb297(73)
      acc297(64)=abb297(74)
      acc297(65)=abb297(76)
      acc297(66)=abb297(77)
      acc297(67)=abb297(78)
      acc297(68)=abb297(79)
      acc297(69)=abb297(80)
      acc297(70)=abb297(81)
      acc297(71)=abb297(82)
      acc297(72)=abb297(83)
      acc297(73)=abb297(85)
      acc297(74)=abb297(86)
      acc297(75)=abb297(87)
      acc297(76)=abb297(88)
      acc297(77)=abb297(90)
      acc297(78)=abb297(91)
      acc297(79)=abb297(93)
      acc297(80)=abb297(94)
      acc297(81)=abb297(96)
      acc297(82)=abb297(97)
      acc297(83)=abb297(98)
      acc297(84)=abb297(99)
      acc297(85)=abb297(100)
      acc297(86)=abb297(101)
      acc297(87)=abb297(102)
      acc297(88)=abb297(103)
      acc297(89)=abb297(105)
      acc297(90)=abb297(106)
      acc297(91)=abb297(108)
      acc297(92)=abb297(109)
      acc297(93)=abb297(111)
      acc297(94)=abb297(112)
      acc297(95)=abb297(113)
      acc297(96)=abb297(114)
      acc297(97)=abb297(116)
      acc297(98)=abb297(117)
      acc297(99)=abb297(118)
      acc297(100)=abb297(119)
      acc297(101)=abb297(120)
      acc297(102)=abb297(121)
      acc297(103)=abb297(123)
      acc297(104)=abb297(124)
      acc297(105)=abb297(126)
      acc297(106)=abb297(128)
      acc297(107)=abb297(129)
      acc297(108)=abb297(130)
      acc297(109)=abb297(131)
      acc297(110)=abb297(132)
      acc297(111)=abb297(134)
      acc297(112)=abb297(135)
      acc297(113)=abb297(136)
      acc297(114)=abb297(137)
      acc297(115)=abb297(138)
      acc297(116)=abb297(139)
      acc297(117)=abb297(140)
      acc297(118)=abb297(141)
      acc297(119)=abb297(142)
      acc297(120)=abb297(143)
      acc297(121)=abb297(144)
      acc297(122)=abb297(145)
      acc297(123)=abb297(146)
      acc297(124)=abb297(147)
      acc297(125)=abb297(149)
      acc297(126)=abb297(152)
      acc297(127)=abb297(154)
      acc297(128)=abb297(158)
      acc297(129)=abb297(159)
      acc297(130)=abb297(161)
      acc297(131)=abb297(162)
      acc297(132)=abb297(163)
      acc297(133)=abb297(165)
      acc297(134)=abb297(167)
      acc297(135)=abb297(168)
      acc297(136)=abb297(169)
      acc297(137)=abb297(173)
      acc297(138)=abb297(175)
      acc297(139)=abb297(176)
      acc297(140)=abb297(177)
      acc297(141)=abb297(178)
      acc297(142)=abb297(180)
      acc297(143)=abb297(182)
      acc297(144)=abb297(184)
      acc297(145)=abb297(185)
      acc297(146)=abb297(189)
      acc297(147)=abb297(190)
      acc297(148)=abb297(194)
      acc297(149)=abb297(195)
      acc297(150)=abb297(196)
      acc297(151)=abb297(198)
      acc297(152)=abb297(199)
      acc297(153)=abb297(200)
      acc297(154)=abb297(201)
      acc297(155)=abb297(202)
      acc297(156)=abb297(203)
      acc297(157)=abb297(206)
      acc297(158)=abb297(208)
      acc297(159)=abb297(212)
      acc297(160)=abb297(215)
      acc297(161)=abb297(216)
      acc297(162)=abb297(217)
      acc297(163)=abb297(218)
      acc297(164)=abb297(219)
      acc297(165)=abb297(223)
      acc297(166)=abb297(226)
      acc297(167)=abb297(227)
      acc297(168)=abb297(232)
      acc297(169)=abb297(237)
      acc297(170)=abb297(238)
      acc297(171)=abb297(239)
      acc297(172)=abb297(240)
      acc297(173)=abb297(241)
      acc297(174)=abb297(242)
      acc297(175)=abb297(246)
      acc297(176)=abb297(247)
      acc297(177)=abb297(248)
      acc297(178)=abb297(249)
      acc297(179)=abb297(250)
      acc297(180)=abb297(251)
      acc297(181)=abb297(253)
      acc297(182)=abb297(254)
      acc297(183)=abb297(256)
      acc297(184)=abb297(257)
      acc297(185)=abb297(258)
      acc297(186)=abb297(259)
      acc297(187)=abb297(260)
      acc297(188)=abb297(261)
      acc297(189)=Qspvae7k1*acc297(129)
      acc297(190)=Qspvae7k2*acc297(39)
      acc297(189)=acc297(190)+acc297(59)+acc297(189)
      acc297(189)=Qspvak2e7*acc297(189)
      acc297(190)=Qspl5-Qspk1
      acc297(191)=acc297(168)*acc297(190)
      acc297(192)=Qspvak4l6*acc297(11)
      acc297(193)=Qspvak7l6*acc297(51)
      acc297(194)=Qspvak2k3*acc297(115)
      acc297(195)=Qspvae7k1*acc297(102)
      acc297(196)=Qspvae7k2*acc297(75)
      acc297(197)=Qspval5e7*acc297(105)
      acc297(198)=Qspvak2k7*acc297(185)
      acc297(199)=Qspvak2k1*acc297(36)
      acc297(200)=Qspval5e7*acc297(170)
      acc297(200)=acc297(40)+acc297(200)
      acc297(200)=Qspvae7l6*acc297(200)
      acc297(201)=Qspval5l6*acc297(50)
      acc297(202)=Qspl6*acc297(142)
      acc297(203)=Qspvak2l6*acc297(19)
      acc297(204)=Qspk7*acc297(119)
      acc297(205)=QspQ*acc297(64)
      acc297(206)=Qspvae7l6*acc297(94)
      acc297(206)=acc297(3)+acc297(206)
      acc297(206)=Qspval5k1*acc297(206)
      acc297(207)=Qspk2*acc297(156)
      acc297(189)=acc297(207)+acc297(206)+acc297(205)+acc297(204)+acc297(203)+a&
      &cc297(202)+acc297(201)+acc297(189)+acc297(200)+acc297(199)+acc297(198)+a&
      &cc297(197)+acc297(196)+acc297(195)+acc297(194)+acc297(193)+acc297(12)+ac&
      &c297(192)+acc297(191)
      acc297(189)=Qspk2*acc297(189)
      acc297(191)=Qspvak7l6*acc297(130)
      acc297(192)=Qspvae7l6*acc297(180)
      acc297(193)=-Qspvak2e7*acc297(181)
      acc297(194)=Qspk7*acc297(178)
      acc297(195)=QspQ*acc297(171)
      acc297(191)=acc297(195)+acc297(194)+acc297(193)+acc297(192)+acc297(18)+ac&
      &c297(191)
      acc297(191)=Qspval5k1*acc297(191)
      acc297(192)=Qspval5l6*acc297(176)
      acc297(193)=Qspl6*acc297(159)
      acc297(194)=Qspk7*acc297(158)
      acc297(195)=QspQ*acc297(104)
      acc297(196)=Qspval5k1*acc297(179)
      acc297(192)=acc297(196)+acc297(195)+acc297(194)+acc297(193)+acc297(47)+ac&
      &c297(192)
      acc297(192)=Qspk2*acc297(192)
      acc297(193)=Qspvae7k1*acc297(120)
      acc297(194)=Qspvae7k2*acc297(106)
      acc297(193)=acc297(194)+acc297(78)+acc297(193)
      acc297(193)=Qspvak2e7*acc297(193)
      acc297(194)=Qspval6k2*acc297(67)
      acc297(195)=Qspval5k2*acc297(89)
      acc297(194)=acc297(195)+acc297(30)+acc297(194)
      acc297(194)=Qspvak2l6*acc297(194)
      acc297(195)=Qspvak1l6*acc297(52)
      acc297(196)=Qspvak7k2*acc297(124)
      acc297(197)=Qspval5k7*acc297(90)
      acc297(198)=Qspval5k7*acc297(165)
      acc297(198)=acc297(136)+acc297(198)
      acc297(198)=Qspvak7l6*acc297(198)
      acc297(199)=Qspvae7k1*acc297(164)
      acc297(200)=Qspvae7k2*acc297(174)
      acc297(201)=Qspval5e7*acc297(166)
      acc297(202)=-Qspvak7k2*acc297(104)
      acc297(202)=acc297(188)+acc297(202)
      acc297(202)=Qspvak2k7*acc297(202)
      acc297(203)=Qspvak2k1*acc297(26)
      acc297(204)=Qspval5e7*acc297(173)
      acc297(204)=acc297(146)+acc297(204)
      acc297(204)=Qspvae7l6*acc297(204)
      acc297(205)=Qspvak2k1*acc297(37)
      acc297(205)=acc297(157)+acc297(205)
      acc297(205)=Qspval5l6*acc297(205)
      acc297(206)=Qspl6*acc297(93)
      acc297(207)=Qspval5l6*acc297(175)
      acc297(207)=acc297(133)+acc297(207)
      acc297(207)=Qspk7*acc297(207)
      acc297(208)=Qspval5l6*acc297(76)
      acc297(208)=acc297(81)+acc297(208)
      acc297(208)=QspQ*acc297(208)
      acc297(191)=acc297(192)+acc297(191)+acc297(208)+acc297(207)+acc297(194)+a&
      &cc297(206)+acc297(205)+acc297(193)+acc297(204)+acc297(203)+acc297(202)+a&
      &cc297(201)+acc297(200)+acc297(199)+acc297(198)+acc297(197)+acc297(196)+a&
      &cc297(24)+acc297(195)
      acc297(191)=Qspvak4k3*acc297(191)
      acc297(192)=Qspvae7k1*acc297(131)
      acc297(193)=Qspvae7k2*acc297(62)
      acc297(192)=acc297(193)+acc297(66)+acc297(192)
      acc297(192)=Qspvak2e7*acc297(192)
      acc297(193)=acc297(72)*acc297(190)
      acc297(194)=Qspvak4l6*acc297(122)
      acc297(195)=Qspvak7l6*acc297(134)
      acc297(196)=Qspvak2k3*acc297(103)
      acc297(197)=Qspvae7k1*acc297(98)
      acc297(198)=Qspvae7k2*acc297(113)
      acc297(199)=Qspval5e7*acc297(101)
      acc297(200)=Qspvak2k7*acc297(186)
      acc297(201)=Qspvak2k1*acc297(9)
      acc297(202)=Qspval5e7*acc297(172)
      acc297(202)=acc297(123)+acc297(202)
      acc297(202)=Qspvae7l6*acc297(202)
      acc297(203)=Qspval5l6*acc297(56)
      acc297(204)=Qspl6*acc297(49)
      acc297(205)=Qspvak2l6*acc297(17)
      acc297(206)=Qspk7*acc297(63)
      acc297(207)=QspQ*acc297(116)
      acc297(192)=acc297(207)+acc297(206)+acc297(205)+acc297(204)+acc297(203)+a&
      &cc297(192)+acc297(202)+acc297(201)+acc297(200)+acc297(199)+acc297(198)+a&
      &cc297(197)+acc297(196)+acc297(195)+acc297(31)+acc297(194)+acc297(193)
      acc297(192)=QspQ*acc297(192)
      acc297(193)=acc297(97)*Qspvak2l5
      acc297(194)=Qspvak1l6*acc297(48)
      acc297(195)=Qspvak4l6*acc297(152)
      acc297(196)=Qspvak7l6*acc297(53)
      acc297(197)=Qspvak2k3*acc297(111)
      acc297(198)=Qspvak2k7*acc297(187)
      acc297(199)=Qspvak2k1*acc297(14)
      acc297(200)=Qspvae7l6*acc297(43)
      acc297(201)=Qspval5l6*acc297(109)
      acc297(202)=Qspvae7l6*acc297(77)
      acc297(203)=acc297(148)+acc297(202)
      acc297(203)=Qspl6*acc297(203)
      acc297(204)=Qspvak2l6*acc297(54)
      acc297(202)=acc297(141)+acc297(202)
      acc297(202)=Qspk7*acc297(202)
      acc297(205)=Qspvae7l6*acc297(99)
      acc297(205)=acc297(55)+acc297(205)
      acc297(205)=QspQ*acc297(205)
      acc297(193)=acc297(205)+acc297(202)+acc297(204)+acc297(203)+acc297(201)+a&
      &cc297(200)+acc297(199)+acc297(198)+acc297(197)+acc297(196)+acc297(195)+a&
      &cc297(194)+acc297(193)+acc297(41)
      acc297(193)=Qspval5k1*acc297(193)
      acc297(194)=Qspvak1l6*acc297(137)
      acc297(195)=Qspvak4l6*acc297(143)
      acc297(196)=Qspvak7l6*acc297(132)
      acc297(197)=Qspvak2k3*acc297(110)
      acc297(198)=Qspvak2k7*acc297(183)
      acc297(199)=Qspval5l6*acc297(118)
      acc297(200)=Qspl6*acc297(153)
      acc297(201)=Qspvak2l6*acc297(61)
      acc297(202)=Qspk7*acc297(144)
      acc297(203)=QspQ*acc297(71)
      acc297(194)=acc297(203)+acc297(202)+acc297(201)+acc297(200)+acc297(199)+a&
      &cc297(198)+acc297(197)+acc297(196)+acc297(195)+acc297(107)+acc297(194)
      acc297(194)=Qspval5k1*acc297(194)
      acc297(195)=Qspk7+Qspl6
      acc297(196)=acc297(127)*acc297(195)
      acc297(197)=Qspvak2k3*acc297(74)
      acc297(198)=Qspvak2k1*acc297(16)
      acc297(199)=-Qspval5l6*acc297(73)
      acc297(200)=Qspvak2l6*acc297(23)
      acc297(201)=QspQ*acc297(100)
      acc297(202)=Qspval5k1*acc297(35)
      acc297(203)=Qspk2*acc297(169)
      acc297(196)=acc297(203)+acc297(202)+acc297(201)+acc297(200)+acc297(199)+a&
      &cc297(198)+acc297(28)+acc297(197)+acc297(196)
      acc297(196)=Qspk2*acc297(196)
      acc297(197)=Qspvak2k1*acc297(27)
      acc297(198)=-Qspvak2k1*acc297(8)
      acc297(198)=acc297(163)+acc297(198)
      acc297(198)=Qspval5l6*acc297(198)
      acc297(199)=Qspvak2l6*acc297(65)
      acc297(200)=Qspval5k1*acc297(92)
      acc297(201)=Qspk2*acc297(13)
      acc297(197)=acc297(201)+acc297(200)+acc297(199)+acc297(198)+acc297(25)+ac&
      &c297(197)
      acc297(197)=Qspvak4k3*acc297(197)
      acc297(198)=acc297(45)*acc297(190)
      acc297(199)=acc297(96)*Qspval5k3
      acc297(200)=Qspval5k2*acc297(73)
      acc297(201)=-Qspval5k7*acc297(182)
      acc297(198)=acc297(201)+acc297(200)+acc297(15)+acc297(199)+acc297(198)
      acc297(198)=Qspvak2l6*acc297(198)
      acc297(199)=Qspvak2k3*acc297(117)
      acc297(200)=-Qspvak2k1*acc297(128)
      acc297(201)=-Qspval5l6*acc297(150)
      acc297(202)=Qspvak2l6*acc297(34)
      acc297(199)=acc297(202)+acc297(201)+acc297(200)+acc297(32)+acc297(199)
      acc297(199)=QspQ*acc297(199)
      acc297(200)=Qspvak2k1*acc297(22)
      acc297(201)=Qspval5l6*acc297(137)
      acc297(200)=-acc297(151)+acc297(200)+acc297(201)
      acc297(195)=-acc297(200)*acc297(195)
      acc297(200)=Qspvak2k3*acc297(114)
      acc297(200)=acc297(200)-acc297(160)
      acc297(200)=-acc297(200)*acc297(190)
      acc297(201)=-Qspvak2k3*acc297(96)
      acc297(202)=Qspvak2k7*acc297(182)
      acc297(201)=acc297(202)+acc297(82)+acc297(201)
      acc297(201)=Qspval5l6*acc297(201)
      acc297(202)=Qspvak2k7*acc297(145)
      acc297(203)=Qspvak2k1*acc297(7)
      acc297(194)=acc297(197)+acc297(196)+acc297(194)+acc297(199)+acc297(198)+a&
      &cc297(201)+acc297(203)+acc297(85)+acc297(202)+acc297(200)+acc297(195)
      acc297(194)=Qspe7*acc297(194)
      acc297(195)=-acc297(21)*acc297(190)
      acc297(196)=acc297(84)*Qspval6k1
      acc297(197)=Qspval6k2*acc297(68)
      acc297(198)=acc297(83)*Qspval5k3
      acc297(199)=Qspval5k2*acc297(33)
      acc297(200)=-Qspval5k7*acc297(155)
      acc297(195)=acc297(200)+acc297(199)+acc297(198)+acc297(197)+acc297(196)+a&
      &cc297(6)+acc297(195)
      acc297(195)=Qspvak2l6*acc297(195)
      acc297(196)=Qspvae7k1*acc297(128)
      acc297(197)=Qspvae7k2*acc297(38)
      acc297(196)=-acc297(70)+acc297(196)-acc297(197)
      acc297(196)=acc297(196)*Qspvak2e7
      acc297(197)=Qspval5e7*acc297(150)
      acc297(197)=acc297(197)+acc297(86)
      acc297(197)=acc297(197)*Qspvae7l6
      acc297(198)=Qspvae7k1*acc297(121)
      acc297(199)=Qspvae7k2*acc297(79)
      acc297(200)=Qspval5e7*acc297(108)
      acc297(196)=acc297(196)+acc297(197)-acc297(200)+acc297(198)-acc297(199)
      acc297(197)=acc297(162)*acc297(190)
      acc297(198)=-Qspvak2k1*acc297(177)
      acc297(197)=acc297(198)+acc297(149)+acc297(197)+acc297(196)
      acc297(197)=Qspl6*acc297(197)
      acc297(198)=acc297(161)*acc297(190)
      acc297(199)=Qspvak2k1*acc297(20)
      acc297(200)=Qspval5l6*acc297(125)
      acc297(196)=acc297(200)+acc297(199)+acc297(147)+acc297(198)+acc297(196)
      acc297(196)=Qspk7*acc297(196)
      acc297(198)=Qspvak4l6*acc297(139)
      acc297(199)=Qspvak7l6*acc297(135)
      acc297(200)=Qspvak2k3*acc297(112)
      acc297(201)=Qspvak2k7*acc297(184)
      acc297(198)=acc297(154)+acc297(198)+acc297(199)+acc297(200)+acc297(201)
      acc297(198)=-acc297(198)*acc297(190)
      acc297(199)=-acc297(91)*acc297(190)
      acc297(200)=Qspvae7k1*acc297(88)
      acc297(201)=Qspvae7k2*acc297(4)
      acc297(199)=acc297(201)+acc297(10)+acc297(200)+acc297(199)
      acc297(199)=Qspvak2e7*acc297(199)
      acc297(200)=acc297(177)*Qspvak7k1
      acc297(201)=Qspvak7k2*acc297(167)
      acc297(200)=acc297(201)+acc297(87)+acc297(200)
      acc297(200)=Qspvak2k7*acc297(200)
      acc297(201)=acc297(140)*acc297(190)
      acc297(202)=Qspval5e7*acc297(138)
      acc297(201)=acc297(57)+acc297(202)+acc297(201)
      acc297(201)=Qspvae7l6*acc297(201)
      acc297(202)=-Qspvak2k3*acc297(83)
      acc297(203)=Qspvak2k7*acc297(155)
      acc297(202)=acc297(203)+acc297(44)+acc297(202)
      acc297(202)=Qspval5l6*acc297(202)
      acc297(203)=Qspvak7k1*acc297(60)
      acc297(204)=Qspvak1l6*acc297(42)
      acc297(205)=Qspvak7k2*acc297(5)
      acc297(206)=Qspval5k7*acc297(95)
      acc297(207)=Qspval5k7*acc297(80)
      acc297(207)=acc297(126)+acc297(207)
      acc297(207)=Qspvak7l6*acc297(207)
      acc297(208)=Qspvae7k1*acc297(58)
      acc297(209)=Qspvae7k2*acc297(69)
      acc297(210)=Qspval5e7*acc297(46)
      acc297(190)=-acc297(29)*acc297(190)
      acc297(190)=acc297(1)+acc297(190)
      acc297(190)=Qspvak2k1*acc297(190)
      brack=acc297(2)+acc297(189)+acc297(190)+acc297(191)+acc297(192)+acc297(19&
      &3)+acc297(194)+acc297(195)+acc297(196)+acc297(197)+acc297(198)+acc297(19&
      &9)+acc297(200)+acc297(201)+acc297(202)+acc297(203)+acc297(204)+acc297(20&
      &5)+acc297(206)+acc297(207)+acc297(208)+acc297(209)+acc297(210)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram297_sign, shift => diagram297_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd297h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d297
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k7+k6
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d297 = 0.0_ki
      d297 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d297, ki), aimag(d297), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd297h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d297
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k7+k6
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d297 = 0.0_ki
      d297 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d297, ki), aimag(d297), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d297h2l1
