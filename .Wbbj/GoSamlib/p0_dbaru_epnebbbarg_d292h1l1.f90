module     p0_dbaru_epnebbbarg_d292h1l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity1d292h1l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd292h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc292(177)
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk2
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspl5
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak1e7
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspk7
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspvak1k7
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspl6 = dotproduct(Q,l6)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk2 = dotproduct(Q,k2)
      Qspk1 = dotproduct(Q,k1)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspl5 = dotproduct(Q,l5)
      Qspe7 = dotproduct(Q,e7)
      Qspvak1e7 = dotproduct(Q,spvak1e7)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspk7 = dotproduct(Q,k7)
      QspQ = dotproduct(Q,Q)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      acc292(1)=abb292(8)
      acc292(2)=abb292(9)
      acc292(3)=abb292(10)
      acc292(4)=abb292(11)
      acc292(5)=abb292(12)
      acc292(6)=abb292(13)
      acc292(7)=abb292(14)
      acc292(8)=abb292(15)
      acc292(9)=abb292(16)
      acc292(10)=abb292(17)
      acc292(11)=abb292(18)
      acc292(12)=abb292(19)
      acc292(13)=abb292(20)
      acc292(14)=abb292(21)
      acc292(15)=abb292(22)
      acc292(16)=abb292(23)
      acc292(17)=abb292(24)
      acc292(18)=abb292(25)
      acc292(19)=abb292(26)
      acc292(20)=abb292(27)
      acc292(21)=abb292(28)
      acc292(22)=abb292(29)
      acc292(23)=abb292(30)
      acc292(24)=abb292(31)
      acc292(25)=abb292(32)
      acc292(26)=abb292(33)
      acc292(27)=abb292(34)
      acc292(28)=abb292(35)
      acc292(29)=abb292(36)
      acc292(30)=abb292(37)
      acc292(31)=abb292(38)
      acc292(32)=abb292(39)
      acc292(33)=abb292(40)
      acc292(34)=abb292(41)
      acc292(35)=abb292(42)
      acc292(36)=abb292(43)
      acc292(37)=abb292(44)
      acc292(38)=abb292(45)
      acc292(39)=abb292(46)
      acc292(40)=abb292(47)
      acc292(41)=abb292(48)
      acc292(42)=abb292(49)
      acc292(43)=abb292(50)
      acc292(44)=abb292(51)
      acc292(45)=abb292(52)
      acc292(46)=abb292(53)
      acc292(47)=abb292(54)
      acc292(48)=abb292(55)
      acc292(49)=abb292(56)
      acc292(50)=abb292(57)
      acc292(51)=abb292(58)
      acc292(52)=abb292(59)
      acc292(53)=abb292(60)
      acc292(54)=abb292(61)
      acc292(55)=abb292(62)
      acc292(56)=abb292(63)
      acc292(57)=abb292(64)
      acc292(58)=abb292(65)
      acc292(59)=abb292(66)
      acc292(60)=abb292(67)
      acc292(61)=abb292(68)
      acc292(62)=abb292(69)
      acc292(63)=abb292(70)
      acc292(64)=abb292(71)
      acc292(65)=abb292(72)
      acc292(66)=abb292(73)
      acc292(67)=abb292(74)
      acc292(68)=abb292(75)
      acc292(69)=abb292(76)
      acc292(70)=abb292(77)
      acc292(71)=abb292(78)
      acc292(72)=abb292(79)
      acc292(73)=abb292(80)
      acc292(74)=abb292(81)
      acc292(75)=abb292(82)
      acc292(76)=abb292(83)
      acc292(77)=abb292(84)
      acc292(78)=abb292(85)
      acc292(79)=abb292(86)
      acc292(80)=abb292(87)
      acc292(81)=abb292(88)
      acc292(82)=abb292(89)
      acc292(83)=abb292(90)
      acc292(84)=abb292(91)
      acc292(85)=abb292(93)
      acc292(86)=abb292(97)
      acc292(87)=abb292(98)
      acc292(88)=abb292(100)
      acc292(89)=abb292(101)
      acc292(90)=abb292(104)
      acc292(91)=abb292(107)
      acc292(92)=abb292(108)
      acc292(93)=abb292(109)
      acc292(94)=abb292(110)
      acc292(95)=abb292(112)
      acc292(96)=abb292(113)
      acc292(97)=abb292(115)
      acc292(98)=abb292(117)
      acc292(99)=abb292(119)
      acc292(100)=abb292(120)
      acc292(101)=abb292(123)
      acc292(102)=abb292(125)
      acc292(103)=abb292(126)
      acc292(104)=abb292(127)
      acc292(105)=abb292(128)
      acc292(106)=abb292(129)
      acc292(107)=abb292(130)
      acc292(108)=abb292(131)
      acc292(109)=abb292(132)
      acc292(110)=abb292(133)
      acc292(111)=abb292(134)
      acc292(112)=abb292(135)
      acc292(113)=abb292(137)
      acc292(114)=abb292(138)
      acc292(115)=abb292(141)
      acc292(116)=abb292(142)
      acc292(117)=abb292(143)
      acc292(118)=abb292(144)
      acc292(119)=abb292(145)
      acc292(120)=abb292(146)
      acc292(121)=abb292(147)
      acc292(122)=abb292(148)
      acc292(123)=abb292(149)
      acc292(124)=abb292(150)
      acc292(125)=abb292(151)
      acc292(126)=abb292(152)
      acc292(127)=abb292(153)
      acc292(128)=abb292(154)
      acc292(129)=abb292(155)
      acc292(130)=abb292(156)
      acc292(131)=abb292(157)
      acc292(132)=abb292(158)
      acc292(133)=abb292(160)
      acc292(134)=abb292(161)
      acc292(135)=abb292(163)
      acc292(136)=abb292(164)
      acc292(137)=abb292(165)
      acc292(138)=abb292(166)
      acc292(139)=abb292(167)
      acc292(140)=abb292(169)
      acc292(141)=abb292(170)
      acc292(142)=abb292(171)
      acc292(143)=abb292(172)
      acc292(144)=abb292(173)
      acc292(145)=abb292(174)
      acc292(146)=abb292(176)
      acc292(147)=abb292(177)
      acc292(148)=abb292(178)
      acc292(149)=abb292(179)
      acc292(150)=abb292(181)
      acc292(151)=abb292(183)
      acc292(152)=abb292(185)
      acc292(153)=abb292(187)
      acc292(154)=abb292(188)
      acc292(155)=abb292(189)
      acc292(156)=Qspvak2k1*acc292(74)
      acc292(157)=Qspvak2l6*acc292(44)
      acc292(158)=Qspl6*acc292(34)
      acc292(159)=Qspvak2k3*acc292(55)
      acc292(160)=Qspvak2l5*acc292(42)
      acc292(161)=Qspval6k1*acc292(17)
      acc292(162)=Qspval6k3*acc292(13)
      acc292(163)=Qspval6l5*acc292(37)
      acc292(156)=acc292(163)+acc292(162)+acc292(161)+acc292(160)+acc292(159)+a&
      &cc292(158)+acc292(157)+acc292(3)+acc292(156)
      acc292(156)=Qspvak1k2*acc292(156)
      acc292(157)=Qspvak7k2*acc292(114)
      acc292(158)=Qspval5k2*acc292(40)
      acc292(159)=Qspvak4k2*acc292(52)
      acc292(160)=Qspval6k2*acc292(131)
      acc292(161)=Qspvak1k2*acc292(4)
      acc292(162)=-Qspvak1k2*acc292(63)
      acc292(162)=acc292(49)+acc292(162)
      acc292(162)=Qspvak4k3*acc292(162)
      acc292(163)=Qspk2*acc292(96)
      acc292(157)=acc292(163)+acc292(162)+acc292(161)+acc292(160)+acc292(159)+a&
      &cc292(158)+acc292(86)+acc292(157)
      acc292(157)=Qspk2*acc292(157)
      acc292(158)=Qspk1*acc292(135)
      acc292(159)=Qspvak1l6*acc292(151)
      acc292(160)=-Qspvak1k3*acc292(13)
      acc292(161)=-Qspvak1l5*acc292(37)
      acc292(158)=acc292(161)+acc292(160)+acc292(159)+acc292(128)+acc292(158)
      acc292(158)=Qspval6k2*acc292(158)
      acc292(159)=Qspk1*acc292(120)
      acc292(160)=Qspvak1l6*acc292(149)
      acc292(161)=-Qspvak1k3*acc292(152)
      acc292(159)=acc292(161)+acc292(160)+acc292(116)+acc292(159)
      acc292(159)=Qspval6l5*acc292(159)
      acc292(160)=Qspl6*acc292(61)
      acc292(161)=Qspval6k1*acc292(43)
      acc292(162)=Qspval6k3*acc292(152)
      acc292(160)=acc292(162)+acc292(161)+acc292(10)+acc292(160)
      acc292(160)=Qspvak1l5*acc292(160)
      acc292(161)=Qspl5*acc292(76)
      acc292(162)=-Qspvak1l5*acc292(71)
      acc292(162)=acc292(59)+acc292(162)
      acc292(162)=Qspval6k2*acc292(162)
      acc292(163)=Qspval6l5*acc292(71)
      acc292(163)=acc292(23)+acc292(163)
      acc292(163)=Qspvak1k2*acc292(163)
      acc292(161)=acc292(163)+acc292(162)+acc292(33)+acc292(161)
      acc292(161)=Qspvak4k3*acc292(161)
      acc292(162)=Qspvak2k1*acc292(66)
      acc292(163)=Qspvak2l6*acc292(107)
      acc292(164)=Qspvak7k2*acc292(113)
      acc292(165)=Qspl5*acc292(68)
      acc292(166)=Qspval5k2*acc292(2)
      acc292(167)=Qspk1*acc292(103)
      acc292(168)=Qspl6*acc292(62)
      acc292(169)=Qspvak1l6*acc292(147)
      acc292(170)=Qspvak2k3*acc292(70)
      acc292(171)=Qspvak2l5*acc292(20)
      acc292(172)=Qspvak4k2*acc292(28)
      acc292(173)=Qspval6k1*acc292(137)
      acc292(174)=Qspvak1k3*acc292(142)
      acc292(175)=Qspval6k3*acc292(123)
      acc292(156)=acc292(157)+acc292(161)+acc292(156)+acc292(158)+acc292(160)+a&
      &cc292(159)+acc292(175)+acc292(174)+acc292(173)+acc292(172)+acc292(171)+a&
      &cc292(170)+acc292(169)+acc292(168)+acc292(167)+acc292(166)+acc292(165)+a&
      &cc292(164)+acc292(163)+acc292(31)+acc292(162)
      acc292(156)=Qspe7*acc292(156)
      acc292(157)=Qspl5*acc292(73)
      acc292(158)=Qspval5k2*acc292(36)
      acc292(159)=Qspvak2k3*acc292(88)
      acc292(160)=Qspvak2l5*acc292(46)
      acc292(161)=Qspvak4k2*acc292(32)
      acc292(157)=-acc292(161)+acc292(157)-acc292(158)+acc292(159)-acc292(160)
      acc292(158)=Qspvak1e7*acc292(141)
      acc292(159)=Qspval6e7*acc292(132)
      acc292(160)=Qspvak7k2*acc292(144)
      acc292(161)=Qspvae7k2*acc292(140)
      acc292(158)=acc292(161)+acc292(160)+acc292(159)+acc292(127)+acc292(158)
      acc292(158)=Qspvak4k3*acc292(158)
      acc292(159)=Qspvak4k2*acc292(89)
      acc292(160)=Qspvae7k2*acc292(108)
      acc292(159)=acc292(159)-acc292(160)
      acc292(160)=acc292(99)-acc292(159)
      acc292(160)=Qspk7*acc292(160)
      acc292(161)=Qspvak4k2*acc292(91)
      acc292(162)=Qspvae7k2*acc292(110)
      acc292(161)=acc292(162)+acc292(77)+acc292(161)
      acc292(161)=QspQ*acc292(161)
      acc292(162)=Qspvak2k3*acc292(64)
      acc292(163)=Qspval6k3*acc292(27)
      acc292(162)=acc292(162)+acc292(163)
      acc292(163)=acc292(1)-acc292(162)
      acc292(163)=Qspvak1k2*acc292(163)
      acc292(164)=Qspvak4k3*acc292(19)
      acc292(159)=acc292(164)+acc292(11)+acc292(159)
      acc292(159)=Qspk2*acc292(159)
      acc292(164)=Qspvak7k2*acc292(6)
      acc292(165)=Qspk1*acc292(104)
      acc292(166)=Qspl6*acc292(100)
      acc292(167)=Qspvak1l6*acc292(81)
      acc292(168)=Qspval6k1*acc292(12)
      acc292(169)=Qspvae7k2*acc292(79)
      acc292(170)=Qspvak1k3*acc292(155)
      acc292(171)=Qspval6k3*acc292(126)
      acc292(172)=Qspvak1k3*acc292(153)
      acc292(173)=acc292(118)-acc292(172)
      acc292(173)=Qspval6l5*acc292(173)
      acc292(174)=Qspval6k3*acc292(153)
      acc292(175)=acc292(117)+acc292(174)
      acc292(175)=Qspvak1l5*acc292(175)
      acc292(176)=Qspvak1k3*acc292(27)
      acc292(177)=acc292(130)+acc292(176)
      acc292(177)=Qspval6k2*acc292(177)
      acc292(158)=acc292(159)+acc292(158)+acc292(163)+acc292(161)+acc292(177)+a&
      &cc292(160)+acc292(175)+acc292(173)+acc292(171)+acc292(170)+acc292(169)+a&
      &cc292(168)+acc292(167)+acc292(166)+acc292(165)+acc292(85)+acc292(164)-ac&
      &c292(157)
      acc292(158)=Qspk2*acc292(158)
      acc292(159)=Qspl5*acc292(54)
      acc292(160)=Qspval5k2*acc292(41)
      acc292(161)=Qspk1*acc292(92)
      acc292(163)=Qspl6*acc292(14)
      acc292(164)=Qspvak1l6*acc292(84)
      acc292(165)=Qspvak2k3*acc292(90)
      acc292(166)=Qspvak2l5*acc292(45)
      acc292(167)=Qspvak4k2*acc292(94)
      acc292(168)=Qspval6k1*acc292(83)
      acc292(169)=Qspvae7k2*acc292(112)
      acc292(170)=Qspvak1k3*acc292(80)
      acc292(171)=Qspval6k3*acc292(125)
      acc292(173)=-Qspvak1k3*acc292(154)
      acc292(173)=acc292(122)+acc292(173)
      acc292(173)=Qspval6l5*acc292(173)
      acc292(175)=Qspval6k3*acc292(154)
      acc292(175)=acc292(51)+acc292(175)
      acc292(175)=Qspvak1l5*acc292(175)
      acc292(177)=Qspvak1k3*acc292(8)
      acc292(177)=acc292(129)+acc292(177)
      acc292(177)=Qspval6k2*acc292(177)
      acc292(159)=acc292(177)+acc292(175)+acc292(173)+acc292(171)+acc292(170)+a&
      &cc292(169)+acc292(168)+acc292(167)+acc292(166)+acc292(165)+acc292(164)+a&
      &cc292(163)+acc292(161)+acc292(160)+acc292(7)+acc292(159)
      acc292(159)=QspQ*acc292(159)
      acc292(160)=Qspvak2k7*acc292(35)
      acc292(161)=Qspval6k7*acc292(133)
      acc292(163)=Qspval6e7*acc292(145)
      acc292(160)=acc292(163)+acc292(161)+acc292(22)+acc292(160)
      acc292(160)=Qspvak1k2*acc292(160)
      acc292(161)=-Qspvak1k7*acc292(133)
      acc292(163)=-Qspvak1e7*acc292(145)
      acc292(161)=acc292(161)+acc292(163)
      acc292(161)=Qspval6k2*acc292(161)
      acc292(163)=Qspvak1e7*acc292(143)
      acc292(164)=Qspval6e7*acc292(121)
      acc292(163)=acc292(164)+acc292(82)+acc292(163)
      acc292(163)=QspQ*acc292(163)
      acc292(164)=Qspval6l5*acc292(97)
      acc292(164)=acc292(164)+acc292(95)
      acc292(164)=Qspvak1k7*acc292(164)
      acc292(165)=Qspvak2k7*acc292(56)
      acc292(166)=Qspval6k7*acc292(58)
      acc292(167)=Qspvak7k2*acc292(138)
      acc292(168)=Qspl5*acc292(75)
      acc292(169)=Qspval5k2*acc292(72)
      acc292(170)=Qspvak2l5*acc292(65)
      acc292(171)=Qspvae7k2*acc292(139)
      acc292(173)=-Qspval6k7*acc292(97)
      acc292(173)=acc292(87)+acc292(173)
      acc292(173)=Qspvak1l5*acc292(173)
      acc292(160)=acc292(160)+acc292(163)+acc292(161)+acc292(173)+acc292(171)+a&
      &cc292(170)+acc292(169)+acc292(168)+acc292(167)+acc292(166)+acc292(53)+ac&
      &c292(165)+acc292(164)
      acc292(160)=Qspvak4k3*acc292(160)
      acc292(161)=acc292(18)+acc292(162)
      acc292(161)=Qspk7*acc292(161)
      acc292(162)=Qspvak2k3*acc292(50)
      acc292(163)=-Qspval6k3*acc292(8)
      acc292(162)=acc292(163)+acc292(9)+acc292(162)
      acc292(162)=QspQ*acc292(162)
      acc292(163)=Qspvak2k1*acc292(67)
      acc292(164)=Qspvak2l6*acc292(38)
      acc292(165)=Qspl6*acc292(21)
      acc292(166)=Qspvak2l5*acc292(48)
      acc292(167)=Qspval6k1*acc292(15)
      acc292(168)=-Qspval6k3*acc292(78)
      acc292(169)=-Qspval6l5*acc292(24)
      acc292(161)=acc292(162)+acc292(161)+acc292(169)+acc292(168)+acc292(167)+a&
      &cc292(166)+acc292(165)+acc292(164)+acc292(29)+acc292(163)
      acc292(161)=Qspvak1k2*acc292(161)
      acc292(162)=Qspvae7k2*acc292(109)
      acc292(163)=Qspvak1k3*acc292(101)
      acc292(164)=Qspval6k3*acc292(124)
      acc292(165)=Qspval6l5*acc292(172)
      acc292(166)=acc292(105)-acc292(174)
      acc292(166)=Qspvak1l5*acc292(166)
      acc292(157)=acc292(166)+acc292(165)+acc292(164)+acc292(163)+acc292(162)+a&
      &cc292(57)+acc292(157)
      acc292(157)=Qspk7*acc292(157)
      acc292(162)=Qspk1*acc292(134)
      acc292(163)=Qspvak1l6*acc292(150)
      acc292(164)=Qspvak1k3*acc292(78)
      acc292(165)=Qspvak1l5*acc292(24)
      acc292(166)=-Qspk7*acc292(176)
      acc292(162)=acc292(166)+acc292(165)+acc292(164)+acc292(163)+acc292(69)+ac&
      &c292(162)
      acc292(162)=Qspval6k2*acc292(162)
      acc292(163)=Qspk1*acc292(119)
      acc292(164)=Qspvak1l6*acc292(148)
      acc292(163)=acc292(164)+acc292(115)+acc292(163)
      acc292(163)=Qspval6l5*acc292(163)
      acc292(164)=Qspl6*acc292(30)
      acc292(165)=Qspval6k1*acc292(26)
      acc292(164)=acc292(165)+acc292(146)+acc292(164)
      acc292(164)=Qspvak1l5*acc292(164)
      acc292(165)=Qspvak2k1*acc292(93)
      acc292(166)=Qspvak2l6*acc292(98)
      acc292(167)=Qspvak7k2*acc292(106)
      acc292(168)=Qspl5*acc292(47)
      acc292(169)=Qspval5k2*acc292(39)
      acc292(170)=Qspk1*acc292(102)
      acc292(171)=Qspl6*acc292(60)
      acc292(172)=Qspvak1l6*acc292(111)
      acc292(173)=Qspvak2l5*acc292(25)
      acc292(174)=Qspval6k1*acc292(136)
      acc292(175)=Qspvae7k2*acc292(5)
      brack=acc292(16)+acc292(156)+acc292(157)+acc292(158)+acc292(159)+acc292(1&
      &60)+acc292(161)+acc292(162)+acc292(163)+acc292(164)+acc292(165)+acc292(1&
      &66)+acc292(167)+acc292(168)+acc292(169)+acc292(170)+acc292(171)+acc292(1&
      &72)+acc292(173)+acc292(174)+acc292(175)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbarg_groups, only: &
!           & sign => diagram292_sign, shift => diagram292_shift
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd292h1
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d292
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(-Q_ext(4),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d292 = 0.0_ki
      d292 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d292, ki), aimag(d292), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd292h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d292
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d292 = 0.0_ki
      d292 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d292, ki), aimag(d292), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d292h1l1
