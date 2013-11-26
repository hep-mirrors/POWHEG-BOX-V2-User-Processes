module     p5_usbar_epnebbbarg_d299h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity0d299h0l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd299h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc299(183)
      complex(ki) :: Qspl5
      complex(ki) :: Qspk1
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspl6
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspvak2k3
      complex(ki) :: QspQ
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspk2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspe7
      complex(ki) :: Qspk7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspval5e7
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspvak2e7
      Qspl5 = dotproduct(Q,l5)
      Qspk1 = dotproduct(Q,k1)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspl6 = dotproduct(Q,l6)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      QspQ = dotproduct(Q,Q)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspk2 = dotproduct(Q,k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspe7 = dotproduct(Q,e7)
      Qspk7 = dotproduct(Q,k7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspval5e7 = dotproduct(Q,spval5e7)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      acc299(1)=abb299(8)
      acc299(2)=abb299(9)
      acc299(3)=abb299(10)
      acc299(4)=abb299(11)
      acc299(5)=abb299(12)
      acc299(6)=abb299(13)
      acc299(7)=abb299(14)
      acc299(8)=abb299(15)
      acc299(9)=abb299(16)
      acc299(10)=abb299(17)
      acc299(11)=abb299(18)
      acc299(12)=abb299(19)
      acc299(13)=abb299(20)
      acc299(14)=abb299(21)
      acc299(15)=abb299(22)
      acc299(16)=abb299(23)
      acc299(17)=abb299(24)
      acc299(18)=abb299(25)
      acc299(19)=abb299(26)
      acc299(20)=abb299(27)
      acc299(21)=abb299(28)
      acc299(22)=abb299(29)
      acc299(23)=abb299(30)
      acc299(24)=abb299(31)
      acc299(25)=abb299(32)
      acc299(26)=abb299(33)
      acc299(27)=abb299(34)
      acc299(28)=abb299(35)
      acc299(29)=abb299(36)
      acc299(30)=abb299(37)
      acc299(31)=abb299(38)
      acc299(32)=abb299(39)
      acc299(33)=abb299(40)
      acc299(34)=abb299(41)
      acc299(35)=abb299(42)
      acc299(36)=abb299(43)
      acc299(37)=abb299(44)
      acc299(38)=abb299(45)
      acc299(39)=abb299(46)
      acc299(40)=abb299(47)
      acc299(41)=abb299(48)
      acc299(42)=abb299(49)
      acc299(43)=abb299(50)
      acc299(44)=abb299(51)
      acc299(45)=abb299(52)
      acc299(46)=abb299(53)
      acc299(47)=abb299(54)
      acc299(48)=abb299(55)
      acc299(49)=abb299(56)
      acc299(50)=abb299(57)
      acc299(51)=abb299(58)
      acc299(52)=abb299(59)
      acc299(53)=abb299(60)
      acc299(54)=abb299(61)
      acc299(55)=abb299(62)
      acc299(56)=abb299(63)
      acc299(57)=abb299(64)
      acc299(58)=abb299(65)
      acc299(59)=abb299(66)
      acc299(60)=abb299(67)
      acc299(61)=abb299(68)
      acc299(62)=abb299(69)
      acc299(63)=abb299(70)
      acc299(64)=abb299(71)
      acc299(65)=abb299(72)
      acc299(66)=abb299(73)
      acc299(67)=abb299(74)
      acc299(68)=abb299(75)
      acc299(69)=abb299(76)
      acc299(70)=abb299(77)
      acc299(71)=abb299(78)
      acc299(72)=abb299(81)
      acc299(73)=abb299(82)
      acc299(74)=abb299(83)
      acc299(75)=abb299(84)
      acc299(76)=abb299(85)
      acc299(77)=abb299(86)
      acc299(78)=abb299(87)
      acc299(79)=abb299(88)
      acc299(80)=abb299(89)
      acc299(81)=abb299(91)
      acc299(82)=abb299(92)
      acc299(83)=abb299(93)
      acc299(84)=abb299(94)
      acc299(85)=abb299(95)
      acc299(86)=abb299(96)
      acc299(87)=abb299(97)
      acc299(88)=abb299(99)
      acc299(89)=abb299(100)
      acc299(90)=abb299(101)
      acc299(91)=abb299(102)
      acc299(92)=abb299(103)
      acc299(93)=abb299(104)
      acc299(94)=abb299(105)
      acc299(95)=abb299(106)
      acc299(96)=abb299(107)
      acc299(97)=abb299(108)
      acc299(98)=abb299(109)
      acc299(99)=abb299(110)
      acc299(100)=abb299(111)
      acc299(101)=abb299(112)
      acc299(102)=abb299(114)
      acc299(103)=abb299(115)
      acc299(104)=abb299(116)
      acc299(105)=abb299(118)
      acc299(106)=abb299(119)
      acc299(107)=abb299(120)
      acc299(108)=abb299(121)
      acc299(109)=abb299(122)
      acc299(110)=abb299(123)
      acc299(111)=abb299(125)
      acc299(112)=abb299(127)
      acc299(113)=abb299(129)
      acc299(114)=abb299(130)
      acc299(115)=abb299(131)
      acc299(116)=abb299(132)
      acc299(117)=abb299(134)
      acc299(118)=abb299(135)
      acc299(119)=abb299(136)
      acc299(120)=abb299(137)
      acc299(121)=abb299(139)
      acc299(122)=abb299(140)
      acc299(123)=abb299(141)
      acc299(124)=abb299(142)
      acc299(125)=abb299(143)
      acc299(126)=abb299(144)
      acc299(127)=abb299(145)
      acc299(128)=abb299(147)
      acc299(129)=abb299(148)
      acc299(130)=abb299(149)
      acc299(131)=abb299(150)
      acc299(132)=abb299(151)
      acc299(133)=abb299(152)
      acc299(134)=abb299(153)
      acc299(135)=abb299(154)
      acc299(136)=abb299(155)
      acc299(137)=abb299(156)
      acc299(138)=abb299(157)
      acc299(139)=abb299(158)
      acc299(140)=abb299(159)
      acc299(141)=abb299(161)
      acc299(142)=abb299(162)
      acc299(143)=abb299(163)
      acc299(144)=abb299(164)
      acc299(145)=abb299(165)
      acc299(146)=abb299(166)
      acc299(147)=abb299(167)
      acc299(148)=abb299(168)
      acc299(149)=abb299(169)
      acc299(150)=abb299(170)
      acc299(151)=abb299(171)
      acc299(152)=abb299(172)
      acc299(153)=abb299(173)
      acc299(154)=abb299(174)
      acc299(155)=abb299(176)
      acc299(156)=abb299(177)
      acc299(157)=abb299(179)
      acc299(158)=abb299(180)
      acc299(159)=abb299(182)
      acc299(160)=Qspl5-Qspk1
      acc299(161)=-acc299(121)*acc299(160)
      acc299(162)=Qspval5k3*acc299(139)
      acc299(163)=Qspval5l6*acc299(118)
      acc299(164)=Qspval5k7*acc299(78)
      acc299(165)=Qspl6*acc299(114)
      acc299(166)=Qspval6k7*acc299(68)
      acc299(167)=Qspval6k1*acc299(133)
      acc299(168)=Qspval6k3*acc299(144)
      acc299(169)=Qspvak2k3*acc299(1)
      acc299(170)=QspQ*acc299(100)
      acc299(171)=Qspval5k1*acc299(85)
      acc299(172)=Qspk2*acc299(123)
      acc299(161)=acc299(172)+acc299(171)+acc299(170)+acc299(169)+acc299(168)+a&
      &cc299(167)+acc299(166)+acc299(165)+acc299(164)+acc299(163)+acc299(52)+ac&
      &c299(162)+acc299(161)
      acc299(161)=Qspk2*acc299(161)
      acc299(162)=Qspval5k2*acc299(75)
      acc299(163)=Qspval6k2*acc299(67)
      acc299(162)=acc299(163)+acc299(12)+acc299(162)
      acc299(162)=Qspvak2k1*acc299(162)
      acc299(163)=Qspvak2l5*acc299(74)
      acc299(164)=Qspval6l5*acc299(54)
      acc299(165)=Qspval5k7*acc299(59)
      acc299(166)=Qspvak7k1*acc299(124)
      acc299(167)=Qspvak7k2*acc299(154)
      acc299(168)=Qspval6k1*acc299(156)
      acc299(169)=Qspval5k1*acc299(128)
      acc299(170)=-Qspval6k1*acc299(111)
      acc299(170)=acc299(34)+acc299(170)
      acc299(170)=Qspk2*acc299(170)
      acc299(162)=acc299(170)+acc299(169)+acc299(168)+acc299(167)+acc299(166)+a&
      &cc299(165)+acc299(164)+acc299(15)+acc299(163)+acc299(162)
      acc299(162)=Qspvak4k3*acc299(162)
      acc299(163)=acc299(88)*Qspvak4k2
      acc299(164)=acc299(23)*Qspvak1k2
      acc299(165)=Qspvak7k2*acc299(92)
      acc299(166)=Qspval5k2*acc299(37)
      acc299(167)=Qspvak2l6*acc299(145)
      acc299(168)=Qspvak2k7*acc299(22)
      acc299(169)=Qspval6k2*acc299(86)
      acc299(170)=Qspvak2k3*acc299(4)
      acc299(163)=acc299(170)+acc299(169)+acc299(168)+acc299(167)+acc299(166)+a&
      &cc299(165)+acc299(2)+acc299(163)+acc299(164)
      acc299(163)=Qspval5k1*acc299(163)
      acc299(164)=acc299(159)*acc299(160)
      acc299(165)=Qspval5k2*acc299(87)
      acc299(166)=-Qspval6k1*acc299(18)
      acc299(167)=Qspval6k2*acc299(9)
      acc299(164)=acc299(167)+acc299(166)+acc299(165)+acc299(164)
      acc299(164)=Qspvak2k3*acc299(164)
      acc299(165)=Qspl6*acc299(38)
      acc299(166)=-Qspval6k7*acc299(82)
      acc299(167)=Qspval6k3*acc299(18)
      acc299(165)=acc299(167)+acc299(166)+acc299(3)+acc299(165)
      acc299(165)=Qspvak2k1*acc299(165)
      acc299(166)=Qspvak2l6*acc299(113)
      acc299(167)=Qspvak2k7*acc299(26)
      acc299(168)=-Qspvak2k1*acc299(134)
      acc299(166)=acc299(168)+acc299(167)+acc299(105)+acc299(166)
      acc299(166)=Qspval6k2*acc299(166)
      acc299(167)=Qspvak2l6*acc299(130)
      acc299(168)=Qspvak2k7*acc299(82)
      acc299(167)=acc299(168)+acc299(132)+acc299(167)
      acc299(167)=Qspval6k1*acc299(167)
      acc299(168)=Qspval6k3*acc299(141)
      acc299(169)=Qspvak2k3*acc299(65)
      acc299(168)=acc299(169)+acc299(63)+acc299(168)
      acc299(168)=QspQ*acc299(168)
      acc299(169)=Qspvak4k1*acc299(56)
      acc299(170)=Qspval5k3*acc299(127)
      acc299(171)=Qspval5l6*acc299(108)
      acc299(172)=Qspval5k7*acc299(35)
      acc299(173)=Qspvak7k1*acc299(21)
      acc299(174)=Qspvak7k2*acc299(44)
      acc299(175)=Qspl6*acc299(19)
      acc299(176)=Qspval5k2*acc299(72)
      acc299(177)=Qspval6k7*acc299(49)
      acc299(178)=Qspk1*acc299(98)
      acc299(179)=Qspl5*acc299(102)
      acc299(180)=Qspval5k2*acc299(36)
      acc299(180)=acc299(58)+acc299(180)
      acc299(180)=Qspvak2l6*acc299(180)
      acc299(181)=Qspval5k2*acc299(55)
      acc299(181)=acc299(46)+acc299(181)
      acc299(181)=Qspvak2k7*acc299(181)
      acc299(182)=acc299(160)*Qspval6k3
      acc299(183)=acc299(142)*acc299(182)
      acc299(161)=acc299(162)+acc299(161)+acc299(163)+acc299(168)+acc299(164)+a&
      &cc299(166)+acc299(165)+acc299(183)+acc299(167)+acc299(181)+acc299(180)+a&
      &cc299(179)+acc299(178)+acc299(177)+acc299(176)+acc299(175)+acc299(174)+a&
      &cc299(173)+acc299(172)+acc299(171)+acc299(170)+acc299(5)+acc299(169)
      acc299(161)=Qspe7*acc299(161)
      acc299(162)=-Qspval6k1*acc299(71)
      acc299(163)=Qspvak2k1*acc299(84)
      acc299(164)=Qspk7*acc299(148)
      acc299(162)=acc299(164)+acc299(163)+acc299(39)+acc299(162)
      acc299(162)=Qspvae7k2*acc299(162)
      acc299(163)=Qspval5e7*acc299(116)
      acc299(164)=Qspvae7k1*acc299(129)
      acc299(165)=Qspvae7k2*acc299(149)
      acc299(163)=acc299(165)+acc299(164)+acc299(17)+acc299(163)
      acc299(163)=QspQ*acc299(163)
      acc299(164)=-acc299(157)*Qspvak2e7
      acc299(165)=Qspvak7k2*acc299(11)
      acc299(166)=Qspvae7k2*acc299(33)
      acc299(164)=acc299(166)+acc299(164)+acc299(165)
      acc299(164)=Qspval5k1*acc299(164)
      acc299(165)=Qspval6k2*acc299(71)
      acc299(166)=Qspk7*acc299(151)
      acc299(165)=acc299(166)+acc299(131)+acc299(165)
      acc299(165)=Qspvae7k1*acc299(165)
      acc299(166)=Qspval5e7*acc299(77)
      acc299(167)=Qspvae7k1*acc299(153)
      acc299(166)=acc299(167)+acc299(31)+acc299(166)
      acc299(166)=Qspk2*acc299(166)
      acc299(167)=Qspvak2l5*acc299(152)
      acc299(168)=Qspval6l5*acc299(155)
      acc299(169)=Qspvak7k1*acc299(150)
      acc299(170)=Qspval6k1*acc299(25)
      acc299(171)=Qspvak2k1*acc299(69)
      acc299(172)=Qspval6k2*acc299(112)
      acc299(173)=Qspvak2k1*acc299(157)
      acc299(173)=acc299(51)+acc299(173)
      acc299(173)=Qspval5e7*acc299(173)
      acc299(174)=Qspval5e7*acc299(61)
      acc299(174)=acc299(20)+acc299(174)
      acc299(174)=Qspk7*acc299(174)
      acc299(162)=acc299(166)+acc299(164)+acc299(163)+acc299(162)+acc299(165)+a&
      &cc299(174)+acc299(173)+acc299(172)+acc299(171)+acc299(170)+acc299(169)+a&
      &cc299(168)+acc299(13)+acc299(167)
      acc299(162)=Qspvak4k3*acc299(162)
      acc299(163)=-acc299(120)*acc299(160)
      acc299(164)=Qspval6k3*acc299(143)
      acc299(165)=Qspval5e7*acc299(126)
      acc299(166)=Qspk7*acc299(109)
      acc299(167)=Qspvak2k3*acc299(29)
      acc299(168)=Qspvae7k1*acc299(135)
      acc299(169)=Qspvae7k2*acc299(140)
      acc299(170)=QspQ*acc299(96)
      acc299(171)=Qspval5k1*acc299(70)
      acc299(172)=Qspk2*acc299(122)
      acc299(163)=acc299(172)+acc299(171)+acc299(170)+acc299(169)+acc299(168)+a&
      &cc299(167)+acc299(166)+acc299(165)+acc299(164)+acc299(106)+acc299(163)
      acc299(163)=Qspk2*acc299(163)
      acc299(164)=Qspl6*acc299(76)
      acc299(165)=Qspval6k7*acc299(95)
      acc299(166)=Qspvak2l6*acc299(80)
      acc299(167)=Qspvak2k7*acc299(28)
      acc299(168)=Qspval6k3*acc299(147)
      acc299(169)=Qspval6k2*acc299(60)
      acc299(170)=Qspk7*acc299(73)
      acc299(171)=Qspvak2k3*acc299(104)
      acc299(164)=acc299(171)+acc299(170)+acc299(169)+acc299(168)+acc299(167)+a&
      &cc299(166)+acc299(165)+acc299(45)+acc299(164)
      acc299(164)=Qspvae7k1*acc299(164)
      acc299(165)=Qspl6*acc299(137)
      acc299(166)=Qspval6k7*acc299(93)
      acc299(167)=Qspvak2l6*acc299(66)
      acc299(168)=Qspvak2k7*acc299(115)
      acc299(169)=Qspval6k3*acc299(146)
      acc299(170)=Qspval6k2*acc299(110)
      acc299(171)=Qspk7*acc299(27)
      acc299(172)=Qspvak2k3*acc299(117)
      acc299(165)=acc299(172)+acc299(171)+acc299(170)+acc299(169)+acc299(168)+a&
      &cc299(167)+acc299(166)+acc299(32)+acc299(165)
      acc299(165)=Qspvae7k2*acc299(165)
      acc299(166)=Qspk7-acc299(160)
      acc299(166)=acc299(89)*acc299(166)
      acc299(167)=Qspval6k3*acc299(136)
      acc299(168)=Qspval5e7*acc299(62)
      acc299(169)=Qspvak2k3*acc299(8)
      acc299(170)=Qspvae7k1*acc299(57)
      acc299(171)=Qspvae7k2*acc299(24)
      acc299(172)=QspQ*acc299(53)
      acc299(166)=acc299(172)+acc299(171)+acc299(170)+acc299(169)+acc299(168)+a&
      &cc299(167)+acc299(10)+acc299(166)
      acc299(166)=QspQ*acc299(166)
      acc299(167)=Qspvak7k2*acc299(6)
      acc299(168)=Qspvak2l6*acc299(101)
      acc299(169)=Qspvak2k7*acc299(99)
      acc299(170)=Qspk7*acc299(48)
      acc299(171)=Qspvak2k3*acc299(7)
      acc299(172)=Qspvae7k2*acc299(83)
      acc299(173)=QspQ*acc299(30)
      acc299(167)=acc299(173)+acc299(172)+acc299(171)+acc299(170)+acc299(169)+a&
      &cc299(168)+acc299(125)+acc299(167)
      acc299(167)=Qspval5k1*acc299(167)
      acc299(168)=Qspvak2l6*acc299(64)
      acc299(169)=Qspvak2k7*acc299(47)
      acc299(168)=acc299(169)+acc299(79)+acc299(168)
      acc299(168)=Qspval5e7*acc299(168)
      acc299(169)=-acc299(103)*acc299(160)
      acc299(170)=Qspval5e7*acc299(119)
      acc299(169)=acc299(170)+acc299(14)+acc299(169)
      acc299(169)=Qspk7*acc299(169)
      acc299(160)=acc299(158)*acc299(160)
      acc299(170)=Qspval5e7*acc299(107)
      acc299(160)=acc299(170)+acc299(160)
      acc299(160)=Qspvak2k3*acc299(160)
      acc299(170)=Qspvak4k1*acc299(94)
      acc299(171)=Qspl6*acc299(50)
      acc299(172)=Qspval6k7*acc299(40)
      acc299(173)=Qspk1*acc299(91)
      acc299(174)=Qspl5*acc299(97)
      acc299(175)=Qspvak2l6*acc299(43)
      acc299(176)=Qspvak2k7*acc299(41)
      acc299(177)=Qspval6k1*acc299(81)
      acc299(178)=-acc299(138)*acc299(182)
      acc299(179)=Qspvak2k1*acc299(90)
      acc299(180)=Qspval6k2*acc299(42)
      brack=acc299(16)+acc299(160)+acc299(161)+acc299(162)+acc299(163)+acc299(1&
      &64)+acc299(165)+acc299(166)+acc299(167)+acc299(168)+acc299(169)+acc299(1&
      &70)+acc299(171)+acc299(172)+acc299(173)+acc299(174)+acc299(175)+acc299(1&
      &76)+acc299(177)+acc299(178)+acc299(179)+acc299(180)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram299_sign, shift => diagram299_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd299h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d299
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k7+k6
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d299 = 0.0_ki
      d299 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d299, ki), aimag(d299), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd299h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d299
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k7+k6
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d299 = 0.0_ki
      d299 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d299, ki), aimag(d299), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d299h0l1
