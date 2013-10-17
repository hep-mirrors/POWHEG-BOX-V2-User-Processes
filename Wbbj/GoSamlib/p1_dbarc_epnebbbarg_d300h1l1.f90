module     p1_dbarc_epnebbbarg_d300h1l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity1d300h1l1.f90
   ! generator: buildfortran.py
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd300h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc300(177)
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspl6
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspl5
      complex(ki) :: Qspval6k3
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspe7
      complex(ki) :: Qspk7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvak1e7
      complex(ki) :: Qspvae7l5
      complex(ki) :: Qspvak2e7
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspl6 = dotproduct(Q,l6)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspl5 = dotproduct(Q,l5)
      Qspval6k3 = dotproduct(Q,spval6k3)
      QspQ = dotproduct(Q,Q)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspk2 = dotproduct(Q,k2)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk1 = dotproduct(Q,k1)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspe7 = dotproduct(Q,e7)
      Qspk7 = dotproduct(Q,k7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvak1e7 = dotproduct(Q,spvak1e7)
      Qspvae7l5 = dotproduct(Q,spvae7l5)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      acc300(1)=abb300(8)
      acc300(2)=abb300(9)
      acc300(3)=abb300(10)
      acc300(4)=abb300(11)
      acc300(5)=abb300(12)
      acc300(6)=abb300(13)
      acc300(7)=abb300(14)
      acc300(8)=abb300(15)
      acc300(9)=abb300(16)
      acc300(10)=abb300(17)
      acc300(11)=abb300(18)
      acc300(12)=abb300(19)
      acc300(13)=abb300(20)
      acc300(14)=abb300(21)
      acc300(15)=abb300(22)
      acc300(16)=abb300(23)
      acc300(17)=abb300(24)
      acc300(18)=abb300(25)
      acc300(19)=abb300(26)
      acc300(20)=abb300(27)
      acc300(21)=abb300(28)
      acc300(22)=abb300(29)
      acc300(23)=abb300(30)
      acc300(24)=abb300(31)
      acc300(25)=abb300(32)
      acc300(26)=abb300(33)
      acc300(27)=abb300(34)
      acc300(28)=abb300(35)
      acc300(29)=abb300(36)
      acc300(30)=abb300(37)
      acc300(31)=abb300(38)
      acc300(32)=abb300(39)
      acc300(33)=abb300(40)
      acc300(34)=abb300(41)
      acc300(35)=abb300(42)
      acc300(36)=abb300(43)
      acc300(37)=abb300(44)
      acc300(38)=abb300(45)
      acc300(39)=abb300(46)
      acc300(40)=abb300(47)
      acc300(41)=abb300(48)
      acc300(42)=abb300(49)
      acc300(43)=abb300(50)
      acc300(44)=abb300(51)
      acc300(45)=abb300(52)
      acc300(46)=abb300(53)
      acc300(47)=abb300(54)
      acc300(48)=abb300(55)
      acc300(49)=abb300(56)
      acc300(50)=abb300(57)
      acc300(51)=abb300(58)
      acc300(52)=abb300(59)
      acc300(53)=abb300(60)
      acc300(54)=abb300(61)
      acc300(55)=abb300(62)
      acc300(56)=abb300(63)
      acc300(57)=abb300(64)
      acc300(58)=abb300(65)
      acc300(59)=abb300(66)
      acc300(60)=abb300(67)
      acc300(61)=abb300(68)
      acc300(62)=abb300(69)
      acc300(63)=abb300(70)
      acc300(64)=abb300(71)
      acc300(65)=abb300(72)
      acc300(66)=abb300(73)
      acc300(67)=abb300(74)
      acc300(68)=abb300(75)
      acc300(69)=abb300(76)
      acc300(70)=abb300(77)
      acc300(71)=abb300(78)
      acc300(72)=abb300(80)
      acc300(73)=abb300(81)
      acc300(74)=abb300(82)
      acc300(75)=abb300(83)
      acc300(76)=abb300(84)
      acc300(77)=abb300(85)
      acc300(78)=abb300(86)
      acc300(79)=abb300(87)
      acc300(80)=abb300(88)
      acc300(81)=abb300(90)
      acc300(82)=abb300(92)
      acc300(83)=abb300(93)
      acc300(84)=abb300(94)
      acc300(85)=abb300(95)
      acc300(86)=abb300(96)
      acc300(87)=abb300(97)
      acc300(88)=abb300(98)
      acc300(89)=abb300(100)
      acc300(90)=abb300(101)
      acc300(91)=abb300(102)
      acc300(92)=abb300(103)
      acc300(93)=abb300(104)
      acc300(94)=abb300(105)
      acc300(95)=abb300(106)
      acc300(96)=abb300(107)
      acc300(97)=abb300(109)
      acc300(98)=abb300(110)
      acc300(99)=abb300(111)
      acc300(100)=abb300(114)
      acc300(101)=abb300(115)
      acc300(102)=abb300(116)
      acc300(103)=abb300(117)
      acc300(104)=abb300(118)
      acc300(105)=abb300(119)
      acc300(106)=abb300(120)
      acc300(107)=abb300(121)
      acc300(108)=abb300(122)
      acc300(109)=abb300(124)
      acc300(110)=abb300(125)
      acc300(111)=abb300(127)
      acc300(112)=abb300(128)
      acc300(113)=abb300(129)
      acc300(114)=abb300(132)
      acc300(115)=abb300(134)
      acc300(116)=abb300(135)
      acc300(117)=abb300(136)
      acc300(118)=abb300(137)
      acc300(119)=abb300(138)
      acc300(120)=abb300(139)
      acc300(121)=abb300(140)
      acc300(122)=abb300(141)
      acc300(123)=abb300(142)
      acc300(124)=abb300(143)
      acc300(125)=abb300(144)
      acc300(126)=abb300(145)
      acc300(127)=abb300(147)
      acc300(128)=abb300(148)
      acc300(129)=abb300(149)
      acc300(130)=abb300(150)
      acc300(131)=abb300(151)
      acc300(132)=abb300(152)
      acc300(133)=abb300(153)
      acc300(134)=abb300(157)
      acc300(135)=abb300(158)
      acc300(136)=abb300(161)
      acc300(137)=abb300(162)
      acc300(138)=abb300(163)
      acc300(139)=abb300(164)
      acc300(140)=abb300(165)
      acc300(141)=abb300(167)
      acc300(142)=abb300(168)
      acc300(143)=abb300(169)
      acc300(144)=abb300(170)
      acc300(145)=abb300(171)
      acc300(146)=abb300(172)
      acc300(147)=abb300(174)
      acc300(148)=abb300(175)
      acc300(149)=abb300(176)
      acc300(150)=abb300(177)
      acc300(151)=abb300(178)
      acc300(152)=abb300(179)
      acc300(153)=abb300(180)
      acc300(154)=-Qspvak2k1*acc300(23)
      acc300(155)=Qspvak2k3*acc300(27)
      acc300(156)=Qspvak2l6*acc300(17)
      acc300(157)=Qspvak2k7*acc300(53)
      acc300(158)=Qspl6*acc300(8)
      acc300(159)=Qspval6k1*acc300(109)
      acc300(160)=Qspval6k7*acc300(34)
      acc300(161)=Qspval6l5*acc300(135)
      acc300(162)=Qspl5*acc300(44)
      acc300(163)=-Qspval6k3*acc300(89)
      acc300(164)=QspQ*acc300(50)
      acc300(154)=acc300(164)+acc300(163)+acc300(162)+acc300(161)+acc300(160)+a&
      &cc300(159)+acc300(158)+acc300(157)+acc300(156)+acc300(155)+acc300(6)+acc&
      &300(154)
      acc300(154)=Qspvak1k2*acc300(154)
      acc300(155)=Qspvak4k2*acc300(76)
      acc300(156)=Qspval5k2*acc300(144)
      acc300(157)=Qspvak7k2*acc300(83)
      acc300(158)=Qspval6k3*acc300(121)
      acc300(159)=Qspvak1k3*acc300(36)
      acc300(160)=Qspval6k2*acc300(136)
      acc300(161)=Qspvak1k2*acc300(46)
      acc300(162)=Qspk2*acc300(113)
      acc300(155)=acc300(162)+acc300(161)+acc300(160)+acc300(159)+acc300(158)+a&
      &cc300(157)+acc300(156)+acc300(63)+acc300(155)
      acc300(155)=Qspk2*acc300(155)
      acc300(156)=Qspvak7l5*acc300(153)
      acc300(157)=Qspvak7k2*acc300(149)
      acc300(158)=Qspval6l5*acc300(64)
      acc300(159)=Qspvak1l5*acc300(118)
      acc300(160)=-Qspvak1l5*acc300(137)
      acc300(160)=acc300(146)+acc300(160)
      acc300(160)=Qspval6k2*acc300(160)
      acc300(161)=Qspval6l5*acc300(137)
      acc300(161)=acc300(42)+acc300(161)
      acc300(161)=Qspvak1k2*acc300(161)
      acc300(162)=-Qspvak1k2*acc300(143)
      acc300(162)=acc300(78)+acc300(162)
      acc300(162)=Qspk2*acc300(162)
      acc300(156)=acc300(162)+acc300(161)+acc300(160)+acc300(159)+acc300(158)+a&
      &cc300(157)+acc300(25)+acc300(156)
      acc300(156)=Qspvak4k3*acc300(156)
      acc300(157)=Qspk1*acc300(138)
      acc300(158)=-Qspvak1l6*acc300(79)
      acc300(159)=-Qspvak1k7*acc300(34)
      acc300(160)=-Qspvak1l5*acc300(135)
      acc300(161)=Qspvak1k3*acc300(89)
      acc300(157)=acc300(161)+acc300(160)+acc300(159)+acc300(158)+acc300(31)+ac&
      &c300(157)
      acc300(157)=Qspval6k2*acc300(157)
      acc300(158)=Qspk1*acc300(106)
      acc300(159)=-Qspvak1l6*acc300(47)
      acc300(160)=-Qspvak1k7*acc300(90)
      acc300(158)=acc300(160)+acc300(158)+acc300(159)
      acc300(158)=Qspval6l5*acc300(158)
      acc300(159)=Qspl6*acc300(16)
      acc300(160)=Qspval6k1*acc300(99)
      acc300(161)=Qspval6k7*acc300(90)
      acc300(159)=acc300(161)+acc300(160)+acc300(9)+acc300(159)
      acc300(159)=Qspvak1l5*acc300(159)
      acc300(160)=Qspl5*acc300(127)
      acc300(161)=-Qspvak1l5*acc300(124)
      acc300(160)=acc300(160)+acc300(161)
      acc300(160)=Qspval6k3*acc300(160)
      acc300(161)=Qspval6l5*acc300(124)
      acc300(162)=Qspl5*acc300(37)
      acc300(161)=acc300(161)+acc300(162)
      acc300(161)=Qspvak1k3*acc300(161)
      acc300(162)=Qspval6k3*acc300(131)
      acc300(163)=Qspvak1k3*acc300(104)
      acc300(162)=acc300(163)+acc300(39)+acc300(162)
      acc300(162)=QspQ*acc300(162)
      acc300(163)=Qspvak2k1*acc300(22)
      acc300(164)=Qspvak2k3*acc300(2)
      acc300(165)=Qspvak2l6*acc300(87)
      acc300(166)=Qspvak2k7*acc300(7)
      acc300(167)=Qspvak7l5*acc300(61)
      acc300(168)=Qspvak4k2*acc300(75)
      acc300(169)=Qspval5k2*acc300(142)
      acc300(170)=Qspl6*acc300(57)
      acc300(171)=Qspval6k1*acc300(56)
      acc300(172)=Qspval6k7*acc300(86)
      acc300(173)=Qspvak7k2*acc300(38)
      acc300(174)=Qspk1*acc300(117)
      acc300(175)=Qspvak1l6*acc300(48)
      acc300(176)=Qspvak1k7*acc300(10)
      acc300(177)=Qspl5*acc300(96)
      acc300(154)=acc300(156)+acc300(155)+acc300(154)+acc300(162)+acc300(157)+a&
      &cc300(161)+acc300(160)+acc300(159)+acc300(177)+acc300(158)+acc300(176)+a&
      &cc300(175)+acc300(174)+acc300(173)+acc300(172)+acc300(171)+acc300(170)+a&
      &cc300(169)+acc300(168)+acc300(167)+acc300(166)+acc300(165)+acc300(164)+a&
      &cc300(12)+acc300(163)
      acc300(154)=Qspe7*acc300(154)
      acc300(155)=Qspl6*acc300(125)
      acc300(156)=Qspval6k1*acc300(126)
      acc300(157)=Qspval6k7*acc300(103)
      acc300(158)=Qspk1*acc300(110)
      acc300(159)=Qspvak1l6*acc300(120)
      acc300(160)=Qspvak1k7*acc300(111)
      acc300(161)=Qspval6k3*acc300(133)
      acc300(162)=Qspk7*acc300(33)
      acc300(163)=Qspvak1k3*acc300(112)
      acc300(164)=Qspval6k2*acc300(140)
      acc300(165)=QspQ*acc300(24)
      acc300(155)=acc300(165)+acc300(164)+acc300(163)+acc300(162)+acc300(161)+a&
      &cc300(160)+acc300(159)+acc300(158)+acc300(157)+acc300(156)+acc300(32)+ac&
      &c300(155)
      acc300(155)=Qspvae7k2*acc300(155)
      acc300(156)=acc300(152)*Qspvak1e7
      acc300(157)=Qspvak7k2*acc300(100)
      acc300(158)=Qspk7*acc300(145)
      acc300(159)=QspQ*acc300(52)
      acc300(160)=Qspvae7k2*acc300(14)
      acc300(156)=acc300(160)+acc300(159)+acc300(158)+acc300(157)+acc300(156)+a&
      &cc300(72)
      acc300(156)=Qspk2*acc300(156)
      acc300(157)=Qspval6l5*acc300(101)
      acc300(158)=-Qspvak1l5*acc300(4)
      acc300(159)=Qspk7*acc300(54)
      acc300(160)=QspQ*acc300(81)
      acc300(157)=acc300(160)+acc300(159)+acc300(158)+acc300(26)+acc300(157)
      acc300(157)=Qspvae7k2*acc300(157)
      acc300(158)=Qspk7*acc300(150)
      acc300(159)=-Qspval6k2*acc300(101)
      acc300(158)=acc300(159)+acc300(148)+acc300(158)
      acc300(158)=Qspvae7l5*acc300(158)
      acc300(159)=Qspvak7k2*acc300(151)
      acc300(160)=Qspval6l5*acc300(65)
      acc300(161)=Qspvak2e7*acc300(80)
      acc300(162)=Qspvak1l5*acc300(114)
      acc300(163)=Qspk7*acc300(70)
      acc300(164)=Qspval6k2*acc300(91)
      acc300(165)=Qspvae7l5*acc300(147)
      acc300(165)=acc300(49)+acc300(165)
      acc300(165)=QspQ*acc300(165)
      acc300(166)=Qspvae7l5*acc300(4)
      acc300(166)=acc300(71)+acc300(166)
      acc300(166)=Qspvak1k2*acc300(166)
      acc300(156)=acc300(156)+acc300(166)+acc300(157)+acc300(165)+acc300(158)+a&
      &cc300(164)+acc300(163)+acc300(162)+acc300(161)+acc300(160)+acc300(18)+ac&
      &c300(159)
      acc300(156)=Qspvak4k3*acc300(156)
      acc300(157)=Qspl6*acc300(67)
      acc300(158)=Qspval6k1*acc300(59)
      acc300(159)=Qspval6k7*acc300(98)
      acc300(160)=Qspk1*acc300(107)
      acc300(161)=Qspvak1l6*acc300(119)
      acc300(162)=Qspvak1k7*acc300(108)
      acc300(163)=Qspval6k3*acc300(132)
      acc300(164)=Qspk7*acc300(43)
      acc300(165)=Qspvak1k3*acc300(74)
      acc300(166)=Qspval6k2*acc300(139)
      acc300(157)=acc300(166)+acc300(165)+acc300(164)+acc300(163)+acc300(162)+a&
      &cc300(161)+acc300(160)+acc300(159)+acc300(158)+acc300(13)+acc300(157)
      acc300(157)=Qspvae7l5*acc300(157)
      acc300(158)=Qspvak7k2*acc300(5)
      acc300(159)=Qspk1*acc300(122)
      acc300(160)=Qspvak1l6*acc300(77)
      acc300(161)=Qspvak1k7*acc300(60)
      acc300(162)=Qspval6k3*acc300(128)
      acc300(163)=Qspk7*acc300(102)
      acc300(164)=Qspvak1k3*acc300(95)
      acc300(165)=QspQ*acc300(94)
      acc300(166)=Qspvae7k2*acc300(82)
      acc300(167)=Qspvak1k2*acc300(1)
      acc300(158)=acc300(167)+acc300(166)+acc300(165)+acc300(164)+acc300(163)+a&
      &cc300(162)+acc300(161)+acc300(160)+acc300(159)+acc300(105)+acc300(158)
      acc300(158)=Qspk2*acc300(158)
      acc300(159)=-Qspk7+Qspl5
      acc300(159)=acc300(73)*acc300(159)
      acc300(160)=Qspvak2e7*acc300(11)
      acc300(161)=Qspval6k3*acc300(130)
      acc300(162)=Qspvak1k3*acc300(84)
      acc300(163)=Qspvae7l5*acc300(29)
      acc300(164)=QspQ*acc300(92)
      acc300(159)=acc300(164)+acc300(163)+acc300(162)+acc300(161)+acc300(21)+ac&
      &c300(160)+acc300(159)
      acc300(159)=QspQ*acc300(159)
      acc300(160)=Qspvak2e7*acc300(68)
      acc300(161)=Qspl5*acc300(28)
      acc300(162)=Qspvae7l5*acc300(41)
      acc300(163)=QspQ*acc300(20)
      acc300(164)=Qspvae7k2*acc300(66)
      acc300(160)=acc300(164)+acc300(163)+acc300(162)+acc300(161)+acc300(58)+ac&
      &c300(160)
      acc300(160)=Qspvak1k2*acc300(160)
      acc300(161)=Qspk1*acc300(30)
      acc300(162)=Qspvak1l6*acc300(115)
      acc300(163)=Qspvak1k7*acc300(35)
      acc300(161)=acc300(163)+acc300(162)+acc300(3)+acc300(161)
      acc300(161)=Qspvak2e7*acc300(161)
      acc300(162)=Qspvak2e7*acc300(15)
      acc300(163)=Qspl5*acc300(97)
      acc300(162)=acc300(163)+acc300(40)+acc300(162)
      acc300(162)=Qspk7*acc300(162)
      acc300(163)=Qspvak2e7*acc300(88)
      acc300(164)=Qspl5*acc300(129)
      acc300(163)=acc300(163)+acc300(164)
      acc300(163)=Qspvak1k3*acc300(163)
      acc300(164)=Qspval6k3*acc300(123)
      acc300(164)=acc300(164)+acc300(93)
      acc300(164)=Qspl5*acc300(164)
      acc300(165)=Qspvak4k2*acc300(69)
      acc300(166)=Qspval5k2*acc300(141)
      acc300(167)=Qspl6*acc300(51)
      acc300(168)=Qspval6k1*acc300(45)
      acc300(169)=Qspval6k7*acc300(85)
      acc300(170)=Qspk1*acc300(116)
      acc300(171)=Qspvak1l6*acc300(62)
      acc300(172)=Qspvak1k7*acc300(55)
      acc300(173)=Qspval6k2*acc300(134)
      brack=acc300(19)+acc300(154)+acc300(155)+acc300(156)+acc300(157)+acc300(1&
      &58)+acc300(159)+acc300(160)+acc300(161)+acc300(162)+acc300(163)+acc300(1&
      &64)+acc300(165)+acc300(166)+acc300(167)+acc300(168)+acc300(169)+acc300(1&
      &70)+acc300(171)+acc300(172)+acc300(173)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram300_sign, shift => diagram300_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd300h1
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d300
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k5
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d300 = 0.0_ki
      d300 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d300, ki), aimag(d300), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd300h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d300
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k5
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d300 = 0.0_ki
      d300 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d300, ki), aimag(d300), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbarg_d300h1l1