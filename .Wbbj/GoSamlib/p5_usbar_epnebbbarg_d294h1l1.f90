module     p5_usbar_epnebbbarg_d294h1l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity1d294h1l1.f90
   ! generator: buildfortran.py
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd294h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc294(184)
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspl6
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspk1
      complex(ki) :: Qspl5
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspval6k3
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspval6e7
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspl6 = dotproduct(Q,l6)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspk1 = dotproduct(Q,k1)
      Qspl5 = dotproduct(Q,l5)
      Qspk7 = dotproduct(Q,k7)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspval6k3 = dotproduct(Q,spval6k3)
      QspQ = dotproduct(Q,Q)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspe7 = dotproduct(Q,e7)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspval6e7 = dotproduct(Q,spval6e7)
      acc294(1)=abb294(8)
      acc294(2)=abb294(9)
      acc294(3)=abb294(10)
      acc294(4)=abb294(11)
      acc294(5)=abb294(12)
      acc294(6)=abb294(13)
      acc294(7)=abb294(14)
      acc294(8)=abb294(15)
      acc294(9)=abb294(16)
      acc294(10)=abb294(17)
      acc294(11)=abb294(18)
      acc294(12)=abb294(19)
      acc294(13)=abb294(20)
      acc294(14)=abb294(21)
      acc294(15)=abb294(22)
      acc294(16)=abb294(23)
      acc294(17)=abb294(24)
      acc294(18)=abb294(25)
      acc294(19)=abb294(26)
      acc294(20)=abb294(27)
      acc294(21)=abb294(28)
      acc294(22)=abb294(29)
      acc294(23)=abb294(30)
      acc294(24)=abb294(31)
      acc294(25)=abb294(32)
      acc294(26)=abb294(33)
      acc294(27)=abb294(34)
      acc294(28)=abb294(35)
      acc294(29)=abb294(36)
      acc294(30)=abb294(37)
      acc294(31)=abb294(38)
      acc294(32)=abb294(39)
      acc294(33)=abb294(40)
      acc294(34)=abb294(41)
      acc294(35)=abb294(42)
      acc294(36)=abb294(43)
      acc294(37)=abb294(44)
      acc294(38)=abb294(45)
      acc294(39)=abb294(46)
      acc294(40)=abb294(47)
      acc294(41)=abb294(48)
      acc294(42)=abb294(49)
      acc294(43)=abb294(50)
      acc294(44)=abb294(51)
      acc294(45)=abb294(52)
      acc294(46)=abb294(53)
      acc294(47)=abb294(54)
      acc294(48)=abb294(55)
      acc294(49)=abb294(56)
      acc294(50)=abb294(57)
      acc294(51)=abb294(58)
      acc294(52)=abb294(59)
      acc294(53)=abb294(60)
      acc294(54)=abb294(61)
      acc294(55)=abb294(62)
      acc294(56)=abb294(63)
      acc294(57)=abb294(64)
      acc294(58)=abb294(65)
      acc294(59)=abb294(66)
      acc294(60)=abb294(67)
      acc294(61)=abb294(68)
      acc294(62)=abb294(69)
      acc294(63)=abb294(70)
      acc294(64)=abb294(71)
      acc294(65)=abb294(73)
      acc294(66)=abb294(75)
      acc294(67)=abb294(78)
      acc294(68)=abb294(79)
      acc294(69)=abb294(80)
      acc294(70)=abb294(81)
      acc294(71)=abb294(82)
      acc294(72)=abb294(83)
      acc294(73)=abb294(84)
      acc294(74)=abb294(85)
      acc294(75)=abb294(86)
      acc294(76)=abb294(87)
      acc294(77)=abb294(88)
      acc294(78)=abb294(89)
      acc294(79)=abb294(90)
      acc294(80)=abb294(91)
      acc294(81)=abb294(93)
      acc294(82)=abb294(94)
      acc294(83)=abb294(95)
      acc294(84)=abb294(99)
      acc294(85)=abb294(101)
      acc294(86)=abb294(102)
      acc294(87)=abb294(106)
      acc294(88)=abb294(108)
      acc294(89)=abb294(110)
      acc294(90)=abb294(112)
      acc294(91)=abb294(114)
      acc294(92)=abb294(115)
      acc294(93)=abb294(116)
      acc294(94)=abb294(117)
      acc294(95)=abb294(118)
      acc294(96)=abb294(119)
      acc294(97)=abb294(120)
      acc294(98)=abb294(121)
      acc294(99)=abb294(122)
      acc294(100)=abb294(127)
      acc294(101)=abb294(129)
      acc294(102)=abb294(130)
      acc294(103)=abb294(132)
      acc294(104)=abb294(137)
      acc294(105)=abb294(138)
      acc294(106)=abb294(140)
      acc294(107)=abb294(142)
      acc294(108)=abb294(144)
      acc294(109)=abb294(145)
      acc294(110)=abb294(146)
      acc294(111)=abb294(147)
      acc294(112)=abb294(148)
      acc294(113)=abb294(149)
      acc294(114)=abb294(150)
      acc294(115)=abb294(153)
      acc294(116)=abb294(155)
      acc294(117)=abb294(157)
      acc294(118)=abb294(158)
      acc294(119)=abb294(159)
      acc294(120)=abb294(160)
      acc294(121)=abb294(162)
      acc294(122)=abb294(163)
      acc294(123)=abb294(166)
      acc294(124)=abb294(169)
      acc294(125)=abb294(170)
      acc294(126)=abb294(171)
      acc294(127)=abb294(172)
      acc294(128)=abb294(173)
      acc294(129)=abb294(174)
      acc294(130)=abb294(175)
      acc294(131)=abb294(177)
      acc294(132)=abb294(184)
      acc294(133)=abb294(185)
      acc294(134)=abb294(186)
      acc294(135)=abb294(187)
      acc294(136)=abb294(188)
      acc294(137)=abb294(190)
      acc294(138)=abb294(192)
      acc294(139)=abb294(193)
      acc294(140)=abb294(194)
      acc294(141)=abb294(196)
      acc294(142)=abb294(198)
      acc294(143)=abb294(203)
      acc294(144)=abb294(204)
      acc294(145)=abb294(206)
      acc294(146)=abb294(211)
      acc294(147)=abb294(213)
      acc294(148)=abb294(215)
      acc294(149)=abb294(223)
      acc294(150)=abb294(226)
      acc294(151)=abb294(228)
      acc294(152)=abb294(229)
      acc294(153)=abb294(234)
      acc294(154)=abb294(245)
      acc294(155)=abb294(248)
      acc294(156)=abb294(249)
      acc294(157)=abb294(250)
      acc294(158)=abb294(256)
      acc294(159)=abb294(257)
      acc294(160)=abb294(258)
      acc294(161)=abb294(259)
      acc294(162)=abb294(260)
      acc294(163)=abb294(263)
      acc294(164)=abb294(264)
      acc294(165)=abb294(268)
      acc294(166)=Qspval5k1*acc294(120)
      acc294(167)=Qspval6l5*acc294(122)
      acc294(168)=Qspvak7k1*acc294(115)
      acc294(169)=Qspl6*acc294(155)
      acc294(170)=Qspvae7k1*acc294(35)
      acc294(171)=Qspval6k2*acc294(84)
      acc294(172)=Qspvak2l6*acc294(74)
      acc294(173)=Qspval6k1*acc294(143)
      acc294(174)=Qspk1*acc294(86)
      acc294(175)=Qspl5*acc294(156)
      acc294(176)=Qspk7*acc294(146)
      acc294(177)=Qspk7+Qspl5
      acc294(178)=acc294(177)-Qspk1
      acc294(179)=-acc294(104)*acc294(178)
      acc294(179)=acc294(71)+acc294(179)
      acc294(179)=Qspvak4k1*acc294(179)
      acc294(180)=Qspvak4k1*acc294(139)
      acc294(180)=acc294(163)+acc294(180)
      acc294(180)=Qspval6k3*acc294(180)
      acc294(181)=Qspvak4k1*acc294(126)
      acc294(181)=acc294(46)+acc294(181)
      acc294(181)=QspQ*acc294(181)
      acc294(182)=-Qspvak4k1*acc294(64)
      acc294(182)=acc294(13)+acc294(182)
      acc294(182)=Qspvak2k3*acc294(182)
      acc294(183)=Qspvak2k1*acc294(31)
      acc294(184)=Qspvak4k1*acc294(140)
      acc294(184)=acc294(87)+acc294(184)
      acc294(184)=Qspk2*acc294(184)
      acc294(166)=acc294(184)+acc294(183)+acc294(182)+acc294(181)+acc294(180)+a&
      &cc294(179)+acc294(176)+acc294(175)+acc294(174)+acc294(173)+acc294(172)+a&
      &cc294(171)+acc294(170)+acc294(169)+acc294(168)+acc294(167)+acc294(7)+acc&
      &294(166)
      acc294(166)=Qspk2*acc294(166)
      acc294(167)=Qspvak1k2*acc294(57)
      acc294(168)=Qspvak4k2*acc294(24)
      acc294(169)=Qspval5k2*acc294(77)
      acc294(170)=Qspvak7k2*acc294(67)
      acc294(171)=Qspl6*acc294(29)
      acc294(172)=Qspval6k2*acc294(75)
      acc294(173)=Qspvak2l6*acc294(49)
      acc294(174)=Qspval6k3*acc294(58)
      acc294(175)=Qspvak2k3*acc294(55)
      acc294(167)=acc294(175)+acc294(174)+acc294(173)+acc294(172)+acc294(171)+a&
      &cc294(170)+acc294(169)+acc294(168)+acc294(14)+acc294(167)
      acc294(167)=Qspvak2k1*acc294(167)
      acc294(168)=-acc294(154)*acc294(178)
      acc294(169)=Qspval6l5*acc294(145)
      acc294(170)=Qspval6k1*acc294(147)
      acc294(171)=Qspval6k3*acc294(164)
      acc294(172)=QspQ*acc294(68)
      acc294(173)=Qspvak2k3*acc294(18)
      acc294(174)=Qspvak2k1*acc294(42)
      acc294(175)=Qspk2*acc294(157)
      acc294(168)=acc294(175)+acc294(174)+acc294(173)+acc294(172)+acc294(171)+a&
      &cc294(170)+acc294(30)+acc294(169)+acc294(168)
      acc294(168)=Qspk2*acc294(168)
      acc294(169)=Qspvak2k7*acc294(151)
      acc294(170)=Qspval6k7*acc294(152)
      acc294(171)=Qspval6l5*acc294(136)
      acc294(172)=Qspvak2l5*acc294(92)
      acc294(173)=Qspvak2l5*acc294(159)
      acc294(173)=acc294(132)+acc294(173)
      acc294(173)=Qspval6k1*acc294(173)
      acc294(174)=QspQ*acc294(96)
      acc294(175)=-Qspval6l5*acc294(159)
      acc294(175)=acc294(1)+acc294(175)
      acc294(175)=Qspvak2k1*acc294(175)
      acc294(176)=Qspvak2k1*acc294(10)
      acc294(176)=acc294(27)+acc294(176)
      acc294(176)=Qspk2*acc294(176)
      acc294(169)=acc294(176)+acc294(175)+acc294(174)+acc294(173)+acc294(172)+a&
      &cc294(171)+acc294(170)+acc294(25)+acc294(169)
      acc294(169)=Qspvak4k3*acc294(169)
      acc294(170)=acc294(69)*acc294(178)
      acc294(171)=-Qspval6l5*acc294(137)
      acc294(172)=-Qspval6k1*acc294(58)
      acc294(173)=QspQ*acc294(26)
      acc294(170)=acc294(173)+acc294(172)+acc294(2)+acc294(171)+acc294(170)
      acc294(170)=Qspvak2k3*acc294(170)
      acc294(171)=acc294(160)*acc294(178)
      acc294(172)=Qspvak2l5*acc294(137)
      acc294(171)=acc294(148)+acc294(172)+acc294(171)
      acc294(171)=Qspval6k3*acc294(171)
      acc294(172)=acc294(131)*acc294(177)
      acc294(173)=Qspval5k1*acc294(61)
      acc294(174)=Qspvak2l5*acc294(65)
      acc294(175)=Qspvak7k1*acc294(108)
      acc294(176)=Qspvak2l5*acc294(37)
      acc294(176)=acc294(107)+acc294(176)
      acc294(176)=Qspl6*acc294(176)
      acc294(177)=Qspvak2l5*acc294(138)
      acc294(177)=acc294(33)+acc294(177)
      acc294(177)=Qspval6k2*acc294(177)
      acc294(179)=Qspval6l5*acc294(102)
      acc294(179)=acc294(22)+acc294(179)
      acc294(179)=Qspvak2l6*acc294(179)
      acc294(180)=Qspvak2l6*acc294(109)
      acc294(180)=acc294(124)+acc294(180)
      acc294(180)=Qspval6k1*acc294(180)
      acc294(181)=Qspk1*acc294(116)
      acc294(182)=Qspvak4k1*acc294(41)
      acc294(183)=Qspval6k3*acc294(161)
      acc294(183)=acc294(34)+acc294(183)
      acc294(183)=QspQ*acc294(183)
      acc294(167)=acc294(169)+acc294(168)+acc294(167)+acc294(170)+acc294(183)+a&
      &cc294(171)+acc294(182)+acc294(181)+acc294(180)+acc294(179)+acc294(177)+a&
      &cc294(176)+acc294(175)+acc294(174)+acc294(97)+acc294(173)+acc294(172)
      acc294(167)=Qspe7*acc294(167)
      acc294(168)=Qspl5-Qspk1
      acc294(169)=acc294(168)-Qspk7
      acc294(170)=acc294(91)*acc294(169)
      acc294(171)=Qspvak7k1*acc294(150)
      acc294(172)=Qspvae7k1*acc294(50)
      acc294(173)=-Qspval6k1*acc294(139)
      acc294(174)=QspQ*acc294(111)
      acc294(175)=Qspvak2k1*acc294(3)
      acc294(176)=Qspk2*acc294(95)
      acc294(170)=acc294(176)+acc294(175)+acc294(174)+acc294(173)+acc294(172)+a&
      &cc294(6)+acc294(171)+acc294(170)
      acc294(170)=Qspk2*acc294(170)
      acc294(168)=-acc294(153)*acc294(168)
      acc294(171)=Qspk7*acc294(153)
      acc294(172)=-Qspval6l5*acc294(141)
      acc294(173)=QspQ*acc294(76)
      acc294(172)=acc294(173)-acc294(171)+acc294(80)+acc294(172)-acc294(168)
      acc294(172)=Qspvak2k1*acc294(172)
      acc294(173)=Qspval6k1*acc294(127)
      acc294(173)=acc294(173)+acc294(62)
      acc294(169)=-acc294(173)*acc294(169)
      acc294(173)=acc294(153)*Qspvak2k7
      acc294(174)=-acc294(127)*Qspval6k7
      acc294(173)=acc294(174)+acc294(98)+acc294(173)
      acc294(173)=Qspvak7k1*acc294(173)
      acc294(174)=acc294(144)*Qspvak2e7
      acc294(175)=acc294(117)*Qspval6e7
      acc294(174)=acc294(40)+acc294(174)+acc294(175)
      acc294(174)=Qspvae7k1*acc294(174)
      acc294(175)=Qspvae7k1*acc294(63)
      acc294(176)=-Qspval6k1*acc294(134)
      acc294(175)=acc294(176)+acc294(83)+acc294(175)
      acc294(175)=QspQ*acc294(175)
      acc294(176)=Qspvak2k7*acc294(89)
      acc294(177)=Qspval6k7*acc294(106)
      acc294(179)=Qspval6l5*acc294(114)
      acc294(180)=Qspvak2l5*acc294(11)
      acc294(181)=Qspval6k2*acc294(16)
      acc294(182)=Qspvak2l5*acc294(141)
      acc294(182)=acc294(93)+acc294(182)
      acc294(182)=Qspval6k1*acc294(182)
      acc294(169)=acc294(170)+acc294(172)+acc294(175)+acc294(182)+acc294(181)+a&
      &cc294(174)+acc294(173)+acc294(180)+acc294(179)+acc294(177)+acc294(19)+ac&
      &c294(176)+acc294(169)
      acc294(169)=Qspvak4k3*acc294(169)
      acc294(168)=-acc294(171)+acc294(168)
      acc294(168)=Qspvak4k1*acc294(168)
      acc294(170)=Qspval5k1*acc294(59)
      acc294(171)=-Qspval6l5*acc294(133)
      acc294(172)=Qspvak7k1*acc294(36)
      acc294(173)=Qspvae7k1*acc294(12)
      acc294(174)=Qspval6k1*acc294(52)
      acc294(175)=Qspk1*acc294(15)
      acc294(176)=Qspl5*acc294(54)
      acc294(177)=Qspk7*acc294(38)
      acc294(179)=-Qspvak4k1*acc294(76)
      acc294(179)=acc294(17)+acc294(179)
      acc294(179)=QspQ*acc294(179)
      acc294(168)=acc294(179)+acc294(168)+acc294(177)+acc294(176)+acc294(175)+a&
      &cc294(174)+acc294(173)+acc294(172)+acc294(171)+acc294(142)+acc294(170)
      acc294(168)=Qspvak2k3*acc294(168)
      acc294(170)=Qspvak1k2*acc294(53)
      acc294(171)=Qspvak4k2*acc294(44)
      acc294(172)=Qspval5k2*acc294(51)
      acc294(173)=Qspvak7k2*acc294(66)
      acc294(174)=Qspl6*acc294(20)
      acc294(175)=Qspval6k2*acc294(70)
      acc294(176)=Qspvak2l6*acc294(45)
      acc294(177)=Qspval6k3*acc294(39)
      acc294(179)=Qspvak2k3*acc294(56)
      acc294(170)=acc294(179)+acc294(177)+acc294(176)+acc294(175)+acc294(174)+a&
      &cc294(173)+acc294(172)+acc294(171)+acc294(8)+acc294(170)
      acc294(170)=Qspvak2k1*acc294(170)
      acc294(171)=Qspval5k1*acc294(79)
      acc294(172)=Qspvak2l5*acc294(133)
      acc294(173)=Qspvak7k1*acc294(165)
      acc294(174)=Qspvae7k1*acc294(90)
      acc294(175)=Qspk1*acc294(125)
      acc294(176)=Qspl5*acc294(162)
      acc294(177)=Qspk7*acc294(158)
      acc294(179)=Qspvak4k1*acc294(127)*acc294(178)
      acc294(171)=acc294(179)+acc294(177)+acc294(176)+acc294(175)+acc294(174)+a&
      &cc294(173)+acc294(171)+acc294(172)
      acc294(171)=Qspval6k3*acc294(171)
      acc294(172)=-acc294(123)*acc294(178)
      acc294(173)=Qspl6*acc294(130)
      acc294(174)=Qspvae7k1*acc294(47)
      acc294(175)=Qspval6k2*acc294(100)
      acc294(176)=Qspvak2l6*acc294(81)
      acc294(177)=Qspvak4k1*acc294(118)
      acc294(179)=Qspvak4k1*acc294(134)
      acc294(179)=acc294(149)+acc294(179)
      acc294(179)=Qspval6k3*acc294(179)
      acc294(180)=QspQ*acc294(119)
      acc294(172)=acc294(180)+acc294(179)+acc294(177)+acc294(176)+acc294(175)+a&
      &cc294(174)+acc294(4)+acc294(173)+acc294(172)
      acc294(172)=QspQ*acc294(172)
      acc294(173)=Qspvak2l5*acc294(121)
      acc294(174)=Qspvak7k1*acc294(110)
      acc294(175)=Qspvae7k1*acc294(105)
      acc294(173)=acc294(175)+acc294(174)+acc294(23)+acc294(173)
      acc294(173)=Qspval6k2*acc294(173)
      acc294(174)=Qspval6l5*acc294(99)
      acc294(175)=Qspvak7k1*acc294(21)
      acc294(176)=Qspvae7k1*acc294(82)
      acc294(174)=acc294(176)+acc294(175)+acc294(32)+acc294(174)
      acc294(174)=Qspvak2l6*acc294(174)
      acc294(175)=Qspl6*acc294(135)
      acc294(176)=Qspval6k2*acc294(72)
      acc294(177)=Qspvak2l6*acc294(73)
      acc294(175)=-acc294(177)+acc294(175)-acc294(176)
      acc294(176)=acc294(78)+acc294(175)
      acc294(176)=Qspk1*acc294(176)
      acc294(177)=acc294(128)-acc294(175)
      acc294(177)=Qspl5*acc294(177)
      acc294(175)=acc294(129)+acc294(175)
      acc294(175)=Qspk7*acc294(175)
      acc294(179)=Qspvak2l5*acc294(94)
      acc294(180)=Qspvak7k1*acc294(113)
      acc294(179)=acc294(180)+acc294(101)+acc294(179)
      acc294(179)=Qspl6*acc294(179)
      acc294(180)=Qspval5k1*acc294(9)
      acc294(181)=Qspvak2l5*acc294(112)
      acc294(182)=Qspvak7k1*acc294(60)
      acc294(183)=Qspl6*acc294(85)
      acc294(183)=acc294(28)+acc294(183)
      acc294(183)=Qspvae7k1*acc294(183)
      acc294(184)=Qspvak2l6*acc294(88)
      acc294(184)=acc294(48)+acc294(184)
      acc294(184)=Qspval6k1*acc294(184)
      acc294(178)=acc294(43)*acc294(178)
      acc294(178)=acc294(103)+acc294(178)
      acc294(178)=Qspvak4k1*acc294(178)
      brack=acc294(5)+acc294(166)+acc294(167)+acc294(168)+acc294(169)+acc294(17&
      &0)+acc294(171)+acc294(172)+acc294(173)+acc294(174)+acc294(175)+acc294(17&
      &6)+acc294(177)+acc294(178)+acc294(179)+acc294(180)+acc294(181)+acc294(18&
      &2)+acc294(183)+acc294(184)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram294_sign, shift => diagram294_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd294h1
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d294
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k6
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d294 = 0.0_ki
      d294 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d294, ki), aimag(d294), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd294h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d294
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k6
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d294 = 0.0_ki
      d294 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d294, ki), aimag(d294), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d294h1l1
