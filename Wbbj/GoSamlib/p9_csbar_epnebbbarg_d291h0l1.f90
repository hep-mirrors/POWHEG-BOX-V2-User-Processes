module     p9_csbar_epnebbbarg_d291h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity0d291h0l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd291h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc291(196)
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspl6
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspl5
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspk1
      complex(ki) :: Qspe7
      complex(ki) :: Qspvae7k1
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspk7
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspl6 = dotproduct(Q,l6)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspl5 = dotproduct(Q,l5)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspk1 = dotproduct(Q,k1)
      Qspe7 = dotproduct(Q,e7)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      QspQ = dotproduct(Q,Q)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspk7 = dotproduct(Q,k7)
      acc291(1)=abb291(8)
      acc291(2)=abb291(9)
      acc291(3)=abb291(10)
      acc291(4)=abb291(11)
      acc291(5)=abb291(12)
      acc291(6)=abb291(13)
      acc291(7)=abb291(14)
      acc291(8)=abb291(15)
      acc291(9)=abb291(16)
      acc291(10)=abb291(17)
      acc291(11)=abb291(18)
      acc291(12)=abb291(19)
      acc291(13)=abb291(20)
      acc291(14)=abb291(21)
      acc291(15)=abb291(22)
      acc291(16)=abb291(23)
      acc291(17)=abb291(24)
      acc291(18)=abb291(25)
      acc291(19)=abb291(26)
      acc291(20)=abb291(27)
      acc291(21)=abb291(28)
      acc291(22)=abb291(29)
      acc291(23)=abb291(30)
      acc291(24)=abb291(31)
      acc291(25)=abb291(32)
      acc291(26)=abb291(33)
      acc291(27)=abb291(34)
      acc291(28)=abb291(35)
      acc291(29)=abb291(36)
      acc291(30)=abb291(37)
      acc291(31)=abb291(38)
      acc291(32)=abb291(39)
      acc291(33)=abb291(40)
      acc291(34)=abb291(41)
      acc291(35)=abb291(42)
      acc291(36)=abb291(43)
      acc291(37)=abb291(44)
      acc291(38)=abb291(45)
      acc291(39)=abb291(46)
      acc291(40)=abb291(47)
      acc291(41)=abb291(48)
      acc291(42)=abb291(49)
      acc291(43)=abb291(51)
      acc291(44)=abb291(52)
      acc291(45)=abb291(53)
      acc291(46)=abb291(55)
      acc291(47)=abb291(56)
      acc291(48)=abb291(58)
      acc291(49)=abb291(61)
      acc291(50)=abb291(62)
      acc291(51)=abb291(63)
      acc291(52)=abb291(65)
      acc291(53)=abb291(66)
      acc291(54)=abb291(67)
      acc291(55)=abb291(69)
      acc291(56)=abb291(70)
      acc291(57)=abb291(73)
      acc291(58)=abb291(75)
      acc291(59)=abb291(78)
      acc291(60)=abb291(79)
      acc291(61)=abb291(80)
      acc291(62)=abb291(81)
      acc291(63)=abb291(82)
      acc291(64)=abb291(83)
      acc291(65)=abb291(84)
      acc291(66)=abb291(85)
      acc291(67)=abb291(86)
      acc291(68)=abb291(88)
      acc291(69)=abb291(89)
      acc291(70)=abb291(91)
      acc291(71)=abb291(92)
      acc291(72)=abb291(94)
      acc291(73)=abb291(95)
      acc291(74)=abb291(96)
      acc291(75)=abb291(98)
      acc291(76)=abb291(99)
      acc291(77)=abb291(100)
      acc291(78)=abb291(101)
      acc291(79)=abb291(102)
      acc291(80)=abb291(103)
      acc291(81)=abb291(104)
      acc291(82)=abb291(105)
      acc291(83)=abb291(106)
      acc291(84)=abb291(107)
      acc291(85)=abb291(108)
      acc291(86)=abb291(109)
      acc291(87)=abb291(110)
      acc291(88)=abb291(111)
      acc291(89)=abb291(112)
      acc291(90)=abb291(113)
      acc291(91)=abb291(114)
      acc291(92)=abb291(115)
      acc291(93)=abb291(116)
      acc291(94)=abb291(118)
      acc291(95)=abb291(119)
      acc291(96)=abb291(120)
      acc291(97)=abb291(121)
      acc291(98)=abb291(122)
      acc291(99)=abb291(124)
      acc291(100)=abb291(125)
      acc291(101)=abb291(126)
      acc291(102)=abb291(127)
      acc291(103)=abb291(128)
      acc291(104)=abb291(129)
      acc291(105)=abb291(130)
      acc291(106)=abb291(132)
      acc291(107)=abb291(133)
      acc291(108)=abb291(134)
      acc291(109)=abb291(135)
      acc291(110)=abb291(136)
      acc291(111)=abb291(137)
      acc291(112)=abb291(138)
      acc291(113)=abb291(139)
      acc291(114)=abb291(141)
      acc291(115)=abb291(142)
      acc291(116)=abb291(143)
      acc291(117)=abb291(144)
      acc291(118)=abb291(145)
      acc291(119)=abb291(146)
      acc291(120)=abb291(147)
      acc291(121)=abb291(148)
      acc291(122)=abb291(149)
      acc291(123)=abb291(150)
      acc291(124)=abb291(151)
      acc291(125)=abb291(152)
      acc291(126)=abb291(153)
      acc291(127)=abb291(154)
      acc291(128)=abb291(155)
      acc291(129)=abb291(156)
      acc291(130)=abb291(157)
      acc291(131)=abb291(158)
      acc291(132)=abb291(159)
      acc291(133)=abb291(161)
      acc291(134)=abb291(162)
      acc291(135)=abb291(163)
      acc291(136)=abb291(164)
      acc291(137)=abb291(165)
      acc291(138)=abb291(167)
      acc291(139)=abb291(168)
      acc291(140)=abb291(169)
      acc291(141)=abb291(170)
      acc291(142)=abb291(171)
      acc291(143)=abb291(172)
      acc291(144)=abb291(173)
      acc291(145)=abb291(175)
      acc291(146)=abb291(176)
      acc291(147)=abb291(178)
      acc291(148)=abb291(182)
      acc291(149)=abb291(183)
      acc291(150)=abb291(185)
      acc291(151)=abb291(186)
      acc291(152)=abb291(187)
      acc291(153)=abb291(188)
      acc291(154)=abb291(189)
      acc291(155)=abb291(190)
      acc291(156)=abb291(191)
      acc291(157)=abb291(192)
      acc291(158)=abb291(193)
      acc291(159)=abb291(194)
      acc291(160)=abb291(195)
      acc291(161)=abb291(196)
      acc291(162)=abb291(197)
      acc291(163)=abb291(199)
      acc291(164)=abb291(200)
      acc291(165)=abb291(201)
      acc291(166)=abb291(203)
      acc291(167)=abb291(204)
      acc291(168)=abb291(205)
      acc291(169)=abb291(206)
      acc291(170)=abb291(207)
      acc291(171)=abb291(209)
      acc291(172)=abb291(211)
      acc291(173)=abb291(212)
      acc291(174)=abb291(215)
      acc291(175)=abb291(217)
      acc291(176)=abb291(218)
      acc291(177)=Qspvak1k2*acc291(24)
      acc291(178)=Qspvak7k2*acc291(133)
      acc291(179)=Qspvak4k2*acc291(44)
      acc291(180)=Qspvak2l5*acc291(61)
      acc291(181)=Qspvak2l6*acc291(55)
      acc291(182)=Qspval6k2*acc291(135)
      acc291(183)=Qspval5k2*acc291(47)
      acc291(184)=Qspvak2k3*acc291(62)
      acc291(177)=acc291(184)+acc291(183)+acc291(182)+acc291(181)+acc291(180)+a&
      &cc291(179)+acc291(178)+acc291(18)+acc291(177)
      acc291(177)=Qspval5k1*acc291(177)
      acc291(178)=Qspval5l6*acc291(138)
      acc291(179)=Qspl6*acc291(94)
      acc291(180)=Qspval5k3*acc291(141)
      acc291(181)=Qspval6l5*acc291(120)
      acc291(182)=Qspl5*acc291(97)
      acc291(183)=Qspval6k3*acc291(126)
      acc291(184)=Qspval6k1*acc291(131)
      acc291(178)=acc291(184)+acc291(183)+acc291(182)+acc291(181)+acc291(180)+a&
      &cc291(179)+acc291(42)+acc291(178)
      acc291(178)=Qspk2*acc291(178)
      acc291(179)=Qspval6k2*acc291(4)
      acc291(180)=Qspval5k2*acc291(132)
      acc291(179)=acc291(180)+acc291(37)+acc291(179)
      acc291(179)=Qspvak2k1*acc291(179)
      acc291(180)=Qspl5*acc291(150)
      acc291(181)=Qspval6k1*acc291(82)
      acc291(182)=Qspval5k2*acc291(165)
      acc291(183)=Qspval6k1*acc291(159)
      acc291(183)=acc291(151)+acc291(183)
      acc291(183)=Qspk2*acc291(183)
      acc291(184)=Qspval5k1*acc291(19)
      acc291(179)=acc291(184)+acc291(183)+acc291(179)+acc291(182)+acc291(181)+a&
      &cc291(148)+acc291(180)
      acc291(179)=Qspvak4k3*acc291(179)
      acc291(180)=Qspl6*acc291(12)
      acc291(181)=-Qspval6l5*acc291(91)
      acc291(182)=-Qspval6k3*acc291(11)
      acc291(183)=Qspval6k2*acc291(36)
      acc291(180)=acc291(183)+acc291(182)+acc291(181)+acc291(1)+acc291(180)
      acc291(180)=Qspvak2k1*acc291(180)
      acc291(181)=Qspval6k1*acc291(11)
      acc291(182)=Qspval6k2*acc291(119)
      acc291(183)=Qspval5k2*acc291(53)
      acc291(181)=acc291(183)+acc291(182)+acc291(105)+acc291(181)
      acc291(181)=Qspvak2k3*acc291(181)
      acc291(182)=Qspvak2l5*acc291(91)
      acc291(183)=Qspvak2l6*acc291(174)
      acc291(182)=acc291(183)+acc291(67)+acc291(182)
      acc291(182)=Qspval6k1*acc291(182)
      acc291(183)=-Qspvak2l5*acc291(107)
      acc291(184)=Qspvak2l6*acc291(84)
      acc291(183)=acc291(184)+acc291(27)+acc291(183)
      acc291(183)=Qspval6k2*acc291(183)
      acc291(184)=Qspvak2l5*acc291(96)
      acc291(185)=Qspvak2l6*acc291(69)
      acc291(184)=acc291(185)+acc291(2)+acc291(184)
      acc291(184)=Qspval5k2*acc291(184)
      acc291(185)=Qspvak7k1*acc291(72)
      acc291(186)=Qspvak4k1*acc291(98)
      acc291(187)=Qspval5l6*acc291(136)
      acc291(188)=Qspl6*acc291(85)
      acc291(189)=Qspval5k3*acc291(139)
      acc291(190)=Qspval6l5*acc291(114)
      acc291(191)=Qspl5*acc291(49)
      acc291(192)=Qspvak2l5*acc291(56)
      acc291(193)=Qspvak2l6*acc291(173)
      acc291(194)=Qspval6k3*acc291(123)
      acc291(195)=Qspk1*acc291(86)
      acc291(177)=acc291(179)+acc291(177)+acc291(178)+acc291(195)+acc291(180)+a&
      &cc291(181)+acc291(184)+acc291(183)+acc291(182)+acc291(194)+acc291(193)+a&
      &cc291(192)+acc291(191)+acc291(190)+acc291(189)+acc291(188)+acc291(187)+a&
      &cc291(186)+acc291(23)+acc291(185)
      acc291(177)=Qspe7*acc291(177)
      acc291(178)=Qspval6k1*acc291(147)
      acc291(179)=-Qspval6k2*acc291(34)
      acc291(180)=Qspval5k2*acc291(142)
      acc291(178)=acc291(180)+acc291(179)+acc291(80)+acc291(178)
      acc291(178)=Qspvak2k3*acc291(178)
      acc291(179)=Qspvak4k1*acc291(50)
      acc291(180)=Qspvae7k1*acc291(64)
      acc291(181)=Qspl6*acc291(20)
      acc291(182)=Qspval5k3*acc291(144)
      acc291(183)=Qspval6l5*acc291(81)
      acc291(184)=Qspl5*acc291(43)
      acc291(185)=Qspvak2l5*acc291(102)
      acc291(186)=Qspvak2l6*acc291(103)
      acc291(187)=Qspval6k3*acc291(129)
      acc291(188)=Qspval6k2*acc291(71)
      acc291(189)=Qspval5k2*acc291(35)
      acc291(190)=-Qspval6k3*acc291(147)
      acc291(190)=acc291(29)+acc291(190)
      acc291(190)=Qspvak2k1*acc291(190)
      acc291(178)=acc291(190)+acc291(178)+acc291(189)+acc291(188)+acc291(187)+a&
      &cc291(186)+acc291(185)+acc291(184)+acc291(183)+acc291(182)+acc291(181)+a&
      &cc291(180)+acc291(14)+acc291(179)
      acc291(178)=QspQ*acc291(178)
      acc291(179)=Qspvak1k2*acc291(40)
      acc291(180)=Qspvak7k2*acc291(167)
      acc291(181)=Qspvak2e7*acc291(166)
      acc291(182)=Qspvak2k7*acc291(171)
      acc291(183)=Qspvae7k2*acc291(66)
      acc291(184)=Qspvak2k1*acc291(39)
      acc291(185)=Qspk2*acc291(45)
      acc291(179)=acc291(185)+acc291(184)+acc291(183)+acc291(182)+acc291(181)+a&
      &cc291(180)+acc291(28)+acc291(179)
      acc291(179)=Qspval5k1*acc291(179)
      acc291(180)=Qspval5k7*acc291(163)
      acc291(181)=Qspval6k7*acc291(157)
      acc291(182)=Qspval6k1*acc291(158)
      acc291(183)=QspQ*acc291(110)
      acc291(184)=Qspk1*acc291(154)
      acc291(180)=acc291(184)+acc291(183)+acc291(182)+acc291(181)+acc291(21)+ac&
      &c291(180)
      acc291(180)=Qspk2*acc291(180)
      acc291(181)=Qspval6k7*acc291(170)
      acc291(182)=Qspval6e7*acc291(160)
      acc291(183)=Qspval6k2*acc291(5)
      acc291(184)=Qspval5k2*acc291(38)
      acc291(181)=acc291(184)+acc291(183)+acc291(182)+acc291(30)+acc291(181)
      acc291(181)=Qspvak2k1*acc291(181)
      acc291(182)=-Qspvak2e7*acc291(160)
      acc291(183)=-Qspvak2k7*acc291(170)
      acc291(182)=acc291(183)+acc291(78)+acc291(182)
      acc291(182)=Qspval6k1*acc291(182)
      acc291(183)=Qspval6e7*acc291(152)
      acc291(184)=Qspvak2e7*acc291(74)
      acc291(183)=acc291(184)+acc291(54)+acc291(183)
      acc291(183)=QspQ*acc291(183)
      acc291(184)=Qspval6e7*acc291(112)
      acc291(185)=Qspvak2e7*acc291(155)
      acc291(184)=acc291(185)+acc291(153)+acc291(184)
      acc291(184)=Qspk1*acc291(184)
      acc291(185)=Qspval6k2*acc291(77)
      acc291(185)=acc291(185)+acc291(70)
      acc291(185)=Qspvak2k7*acc291(185)
      acc291(186)=Qspval5k7*acc291(162)
      acc291(187)=Qspval6k7*acc291(156)
      acc291(188)=Qspvak7k1*acc291(68)
      acc291(189)=Qspvae7k1*acc291(149)
      acc291(190)=Qspl5*acc291(87)
      acc291(191)=Qspvak2k7*acc291(161)
      acc291(191)=acc291(164)+acc291(191)
      acc291(191)=Qspval5k2*acc291(191)
      acc291(179)=acc291(179)+acc291(180)+acc291(184)+acc291(183)+acc291(181)+a&
      &cc291(191)+acc291(182)+acc291(190)+acc291(189)+acc291(188)+acc291(187)+a&
      &cc291(146)+acc291(186)+acc291(185)
      acc291(179)=Qspvak4k3*acc291(179)
      acc291(180)=Qspvak4k2*acc291(168)
      acc291(181)=Qspvae7k2*acc291(104)
      acc291(182)=Qspvak2k3*acc291(73)
      acc291(180)=acc291(182)+acc291(181)+acc291(31)+acc291(180)
      acc291(180)=QspQ*acc291(180)
      acc291(181)=Qspvak4k2*acc291(169)
      acc291(182)=Qspvae7k2*acc291(116)
      acc291(181)=acc291(75)+acc291(181)-acc291(182)
      acc291(182)=Qspk7*acc291(181)
      acc291(183)=Qspvak2k3*acc291(51)
      acc291(181)=acc291(183)-acc291(181)
      acc291(181)=Qspk1*acc291(181)
      acc291(183)=Qspvak1k2*acc291(10)
      acc291(184)=Qspvak7k2*acc291(99)
      acc291(185)=Qspvae7k2*acc291(16)
      acc291(186)=Qspvak2l5*acc291(101)
      acc291(187)=Qspvak2l6*acc291(175)
      acc291(188)=-Qspk7*acc291(51)
      acc291(188)=acc291(115)+acc291(188)
      acc291(188)=Qspvak2k3*acc291(188)
      acc291(189)=Qspk2*acc291(17)
      acc291(180)=acc291(189)+acc291(181)+acc291(180)+acc291(188)+acc291(182)+a&
      &cc291(187)+acc291(186)+acc291(185)+acc291(184)+acc291(6)+acc291(183)
      acc291(180)=Qspval5k1*acc291(180)
      acc291(181)=Qspvak4k1*acc291(134)
      acc291(182)=Qspvae7k1*acc291(59)
      acc291(183)=Qspval5k3*acc291(140)
      acc291(184)=Qspl5*acc291(88)
      acc291(185)=Qspval5k2*acc291(26)
      acc291(181)=-acc291(185)+acc291(181)+acc291(182)+acc291(183)+acc291(184)
      acc291(182)=Qspval6k1*acc291(122)
      acc291(183)=Qspval6k2*acc291(124)
      acc291(184)=Qspval5k2*acc291(41)
      acc291(182)=-acc291(184)+acc291(182)-acc291(183)
      acc291(183)=acc291(111)+acc291(182)
      acc291(183)=Qspvak2k3*acc291(183)
      acc291(184)=Qspl6*acc291(106)
      acc291(185)=Qspval6l5*acc291(121)
      acc291(186)=Qspvak2l5*acc291(176)
      acc291(187)=Qspvak2l6*acc291(118)
      acc291(188)=Qspval6k3*acc291(130)
      acc291(189)=Qspval6k2*acc291(113)
      acc291(190)=Qspval6k3*acc291(122)
      acc291(190)=acc291(190)+acc291(3)
      acc291(191)=-Qspvak2k1*acc291(190)
      acc291(183)=acc291(191)+acc291(183)+acc291(189)+acc291(188)+acc291(187)+a&
      &cc291(186)+acc291(185)+acc291(184)+acc291(63)+acc291(181)
      acc291(183)=Qspk1*acc291(183)
      acc291(184)=Qspval5k3*acc291(143)
      acc291(185)=Qspval6k3*acc291(127)
      acc291(184)=acc291(184)+acc291(185)
      acc291(185)=acc291(90)-acc291(184)
      acc291(185)=Qspk7*acc291(185)
      acc291(186)=Qspval5k3*acc291(41)
      acc291(187)=Qspval6k3*acc291(124)
      acc291(186)=acc291(187)+acc291(58)+acc291(186)
      acc291(186)=QspQ*acc291(186)
      acc291(184)=acc291(108)+acc291(184)
      acc291(184)=Qspk1*acc291(184)
      acc291(187)=Qspval5l6*acc291(137)
      acc291(188)=Qspl6*acc291(93)
      acc291(189)=Qspval6l5*acc291(117)
      acc291(191)=Qspl5*acc291(95)
      acc291(192)=Qspval6k1*acc291(92)
      acc291(184)=acc291(184)+acc291(186)+acc291(185)+acc291(192)+acc291(191)+a&
      &cc291(189)+acc291(188)+acc291(13)+acc291(187)
      acc291(184)=Qspk2*acc291(184)
      acc291(185)=Qspval6k3*acc291(125)
      acc291(181)=acc291(185)+acc291(79)-acc291(181)
      acc291(181)=Qspk7*acc291(181)
      acc291(185)=Qspl6*acc291(25)
      acc291(186)=Qspval6l5*acc291(46)
      acc291(187)=-Qspval6k3*acc291(65)
      acc291(188)=Qspval6k2*acc291(32)
      acc291(189)=Qspk7*acc291(190)
      acc291(185)=acc291(189)+acc291(188)+acc291(187)+acc291(186)+acc291(9)+acc&
      &291(185)
      acc291(185)=Qspvak2k1*acc291(185)
      acc291(182)=acc291(109)-acc291(182)
      acc291(182)=Qspk7*acc291(182)
      acc291(186)=Qspval6k1*acc291(65)
      acc291(182)=acc291(186)+acc291(182)
      acc291(182)=Qspvak2k3*acc291(182)
      acc291(186)=-Qspvak2l5*acc291(46)
      acc291(187)=Qspvak2l6*acc291(145)
      acc291(186)=acc291(186)+acc291(187)
      acc291(186)=Qspval6k1*acc291(186)
      acc291(187)=Qspvak2l5*acc291(76)
      acc291(188)=Qspvak2l6*acc291(8)
      acc291(187)=acc291(188)+acc291(22)+acc291(187)
      acc291(187)=Qspval6k2*acc291(187)
      acc291(188)=Qspvak2l5*acc291(52)
      acc291(189)=Qspvak2l6*acc291(89)
      acc291(188)=acc291(189)+acc291(7)+acc291(188)
      acc291(188)=Qspval5k2*acc291(188)
      acc291(189)=Qspvak7k1*acc291(60)
      acc291(190)=Qspval5l6*acc291(57)
      acc291(191)=Qspvae7k1*acc291(33)
      acc291(192)=Qspl6*acc291(83)
      acc291(193)=Qspval6l5*acc291(100)
      acc291(194)=Qspl5*acc291(48)
      acc291(195)=Qspvak2l5*acc291(128)
      acc291(196)=Qspvak2l6*acc291(172)
      brack=acc291(15)+acc291(177)+acc291(178)+acc291(179)+acc291(180)+acc291(1&
      &81)+acc291(182)+acc291(183)+acc291(184)+acc291(185)+acc291(186)+acc291(1&
      &87)+acc291(188)+acc291(189)+acc291(190)+acc291(191)+acc291(192)+acc291(1&
      &93)+acc291(194)+acc291(195)+acc291(196)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram291_sign, shift => diagram291_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd291h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d291
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k6+k5
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d291 = 0.0_ki
      d291 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d291, ki), aimag(d291), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd291h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d291
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k6+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d291 = 0.0_ki
      d291 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d291, ki), aimag(d291), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d291h0l1
