module     p5_usbar_epnebbbarg_d298h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity0d298h0l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd298h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc298(175)
      complex(ki) :: Qspk7
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspval6k1
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspl6
      complex(ki) :: Qspe7
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspval6l5
      Qspk7 = dotproduct(Q,k7)
      Qspk1 = dotproduct(Q,k1)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspval6k1 = dotproduct(Q,spval6k1)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspl6 = dotproduct(Q,l6)
      Qspe7 = dotproduct(Q,e7)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspval6l5 = dotproduct(Q,spval6l5)
      acc298(1)=abb298(7)
      acc298(2)=abb298(8)
      acc298(3)=abb298(9)
      acc298(4)=abb298(10)
      acc298(5)=abb298(11)
      acc298(6)=abb298(12)
      acc298(7)=abb298(13)
      acc298(8)=abb298(14)
      acc298(9)=abb298(15)
      acc298(10)=abb298(16)
      acc298(11)=abb298(17)
      acc298(12)=abb298(18)
      acc298(13)=abb298(19)
      acc298(14)=abb298(20)
      acc298(15)=abb298(21)
      acc298(16)=abb298(22)
      acc298(17)=abb298(23)
      acc298(18)=abb298(24)
      acc298(19)=abb298(25)
      acc298(20)=abb298(26)
      acc298(21)=abb298(27)
      acc298(22)=abb298(28)
      acc298(23)=abb298(29)
      acc298(24)=abb298(30)
      acc298(25)=abb298(31)
      acc298(26)=abb298(32)
      acc298(27)=abb298(33)
      acc298(28)=abb298(34)
      acc298(29)=abb298(35)
      acc298(30)=abb298(36)
      acc298(31)=abb298(37)
      acc298(32)=abb298(38)
      acc298(33)=abb298(39)
      acc298(34)=abb298(40)
      acc298(35)=abb298(41)
      acc298(36)=abb298(42)
      acc298(37)=abb298(43)
      acc298(38)=abb298(44)
      acc298(39)=abb298(45)
      acc298(40)=abb298(46)
      acc298(41)=abb298(47)
      acc298(42)=abb298(48)
      acc298(43)=abb298(49)
      acc298(44)=abb298(50)
      acc298(45)=abb298(51)
      acc298(46)=abb298(52)
      acc298(47)=abb298(53)
      acc298(48)=abb298(54)
      acc298(49)=abb298(55)
      acc298(50)=abb298(56)
      acc298(51)=abb298(57)
      acc298(52)=abb298(58)
      acc298(53)=abb298(59)
      acc298(54)=abb298(60)
      acc298(55)=abb298(61)
      acc298(56)=abb298(62)
      acc298(57)=abb298(63)
      acc298(58)=abb298(64)
      acc298(59)=abb298(65)
      acc298(60)=abb298(66)
      acc298(61)=abb298(67)
      acc298(62)=abb298(68)
      acc298(63)=abb298(69)
      acc298(64)=abb298(70)
      acc298(65)=abb298(71)
      acc298(66)=abb298(72)
      acc298(67)=abb298(73)
      acc298(68)=abb298(74)
      acc298(69)=abb298(75)
      acc298(70)=abb298(76)
      acc298(71)=abb298(77)
      acc298(72)=abb298(78)
      acc298(73)=abb298(79)
      acc298(74)=abb298(80)
      acc298(75)=abb298(81)
      acc298(76)=abb298(82)
      acc298(77)=abb298(83)
      acc298(78)=abb298(84)
      acc298(79)=abb298(85)
      acc298(80)=abb298(88)
      acc298(81)=abb298(90)
      acc298(82)=abb298(91)
      acc298(83)=abb298(93)
      acc298(84)=abb298(94)
      acc298(85)=abb298(96)
      acc298(86)=abb298(97)
      acc298(87)=abb298(98)
      acc298(88)=abb298(99)
      acc298(89)=abb298(100)
      acc298(90)=abb298(101)
      acc298(91)=abb298(102)
      acc298(92)=abb298(103)
      acc298(93)=abb298(104)
      acc298(94)=abb298(105)
      acc298(95)=abb298(108)
      acc298(96)=abb298(110)
      acc298(97)=abb298(111)
      acc298(98)=abb298(112)
      acc298(99)=abb298(113)
      acc298(100)=abb298(114)
      acc298(101)=abb298(117)
      acc298(102)=abb298(118)
      acc298(103)=abb298(119)
      acc298(104)=abb298(120)
      acc298(105)=abb298(121)
      acc298(106)=abb298(122)
      acc298(107)=abb298(123)
      acc298(108)=abb298(124)
      acc298(109)=abb298(125)
      acc298(110)=abb298(126)
      acc298(111)=abb298(127)
      acc298(112)=abb298(128)
      acc298(113)=abb298(129)
      acc298(114)=abb298(130)
      acc298(115)=abb298(132)
      acc298(116)=abb298(133)
      acc298(117)=abb298(134)
      acc298(118)=abb298(135)
      acc298(119)=abb298(137)
      acc298(120)=abb298(138)
      acc298(121)=abb298(139)
      acc298(122)=abb298(140)
      acc298(123)=abb298(141)
      acc298(124)=abb298(142)
      acc298(125)=abb298(144)
      acc298(126)=abb298(145)
      acc298(127)=abb298(146)
      acc298(128)=abb298(147)
      acc298(129)=abb298(148)
      acc298(130)=abb298(151)
      acc298(131)=abb298(153)
      acc298(132)=abb298(161)
      acc298(133)=abb298(162)
      acc298(134)=abb298(166)
      acc298(135)=abb298(179)
      acc298(136)=abb298(182)
      acc298(137)=abb298(187)
      acc298(138)=abb298(189)
      acc298(139)=abb298(190)
      acc298(140)=abb298(192)
      acc298(141)=abb298(196)
      acc298(142)=abb298(198)
      acc298(143)=abb298(200)
      acc298(144)=abb298(202)
      acc298(145)=abb298(206)
      acc298(146)=abb298(210)
      acc298(147)=abb298(211)
      acc298(148)=abb298(213)
      acc298(149)=abb298(214)
      acc298(150)=abb298(215)
      acc298(151)=abb298(222)
      acc298(152)=abb298(228)
      acc298(153)=abb298(229)
      acc298(154)=abb298(233)
      acc298(155)=abb298(242)
      acc298(156)=abb298(257)
      acc298(157)=Qspk7+Qspk1
      acc298(157)=acc298(131)*acc298(157)
      acc298(158)=Qspvak7k2*acc298(119)
      acc298(159)=Qspval6k7*acc298(27)
      acc298(160)=Qspval6k2*acc298(52)
      acc298(161)=Qspvak2k1*Qspval6k2
      acc298(162)=acc298(78)*acc298(161)
      acc298(163)=Qspval6k1*acc298(5)
      acc298(164)=QspQ*acc298(56)
      acc298(165)=Qspk2*acc298(76)
      acc298(166)=Qspl6*acc298(36)
      acc298(157)=acc298(166)+acc298(165)+acc298(164)+acc298(163)+acc298(162)+a&
      &cc298(160)+acc298(159)+acc298(4)+acc298(158)+acc298(157)
      acc298(157)=Qspe7*acc298(157)
      acc298(158)=Qspvak7k2*acc298(89)
      acc298(159)=Qspval6k7*acc298(107)
      acc298(160)=Qspval6k2*acc298(53)
      acc298(158)=acc298(160)+acc298(159)+acc298(12)+acc298(158)
      acc298(158)=Qspvae7k1*acc298(158)
      acc298(159)=Qspvae7k1*acc298(85)
      acc298(160)=Qspvae7k2*acc298(101)
      acc298(162)=Qspval6e7*acc298(100)
      acc298(159)=acc298(162)+acc298(160)+acc298(13)+acc298(159)
      acc298(159)=QspQ*acc298(159)
      acc298(160)=Qspvae7k1*acc298(106)
      acc298(162)=Qspvae7k2*acc298(55)
      acc298(163)=Qspval6e7*acc298(57)
      acc298(160)=acc298(163)+acc298(162)+acc298(11)+acc298(160)
      acc298(160)=Qspk2*acc298(160)
      acc298(162)=Qspvak7k1*acc298(66)
      acc298(163)=Qspvae7k1*acc298(114)
      acc298(162)=acc298(163)+acc298(59)+acc298(162)
      acc298(162)=Qspval6e7*acc298(162)
      acc298(163)=Qspvae7k2*acc298(67)
      acc298(164)=Qspval6e7*acc298(81)
      acc298(163)=acc298(163)-acc298(164)
      acc298(164)=acc298(82)-acc298(163)
      acc298(164)=Qspk1*acc298(164)
      acc298(165)=Qspvae7k1*acc298(86)
      acc298(165)=acc298(105)+acc298(165)-acc298(163)
      acc298(165)=Qspk7*acc298(165)
      acc298(166)=Qspvae7k1*acc298(98)
      acc298(163)=acc298(35)+acc298(166)+acc298(163)
      acc298(163)=Qspl6*acc298(163)
      acc298(166)=Qspvak7k1*acc298(34)
      acc298(167)=Qspvak7k2*acc298(48)
      acc298(168)=Qspval6k7*acc298(9)
      acc298(169)=Qspval6k2*acc298(46)
      acc298(161)=acc298(44)*acc298(161)
      acc298(170)=Qspval6k1*acc298(83)
      acc298(171)=Qspvak7k1*acc298(89)
      acc298(171)=acc298(65)+acc298(171)
      acc298(171)=Qspvae7k2*acc298(171)
      acc298(157)=acc298(157)+acc298(163)+acc298(165)+acc298(160)+acc298(159)+a&
      &cc298(164)+acc298(162)+acc298(171)+acc298(158)+acc298(170)+acc298(161)+a&
      &cc298(169)+acc298(168)+acc298(167)+acc298(18)+acc298(166)
      acc298(157)=Qspvak4k3*acc298(157)
      acc298(158)=Qspval6k3*acc298(54)
      acc298(159)=Qspval6k7*acc298(40)
      acc298(160)=Qspval6k2*acc298(64)
      acc298(158)=acc298(160)+acc298(159)+acc298(2)+acc298(158)
      acc298(158)=Qspvak2k1*acc298(158)
      acc298(159)=Qspvak4k2*acc298(58)
      acc298(160)=Qspval6k1*acc298(96)
      acc298(161)=Qspvak4k1*acc298(110)
      acc298(159)=-acc298(159)+acc298(160)-acc298(161)
      acc298(160)=acc298(136)+acc298(159)
      acc298(160)=Qspk1*acc298(160)
      acc298(161)=Qspvak4k2*acc298(33)
      acc298(162)=Qspval6k1*acc298(88)
      acc298(163)=Qspvak4k1*acc298(118)
      acc298(161)=acc298(163)+acc298(162)+acc298(45)+acc298(161)
      acc298(161)=QspQ*acc298(161)
      acc298(162)=Qspvak4k2*acc298(63)
      acc298(163)=Qspval6k1*acc298(99)
      acc298(164)=Qspvak4k1*acc298(116)
      acc298(162)=acc298(164)+acc298(163)+acc298(29)+acc298(162)
      acc298(162)=Qspk2*acc298(162)
      acc298(163)=acc298(148)-acc298(159)
      acc298(163)=Qspk7*acc298(163)
      acc298(164)=Qspvak2k1*acc298(16)
      acc298(159)=acc298(164)+acc298(147)-acc298(159)
      acc298(159)=Qspl6*acc298(159)
      acc298(164)=Qspvak1k2*acc298(79)
      acc298(165)=Qspval6l5*acc298(73)
      acc298(166)=Qspvak7k1*acc298(87)
      acc298(167)=Qspval6k3*acc298(17)
      acc298(168)=Qspvak7k2*acc298(138)
      acc298(169)=Qspval6k7*acc298(112)
      acc298(170)=Qspval6k2*acc298(77)
      acc298(171)=Qspvak2k1*acc298(39)
      acc298(171)=acc298(1)+acc298(171)
      acc298(171)=Qspval6k1*acc298(171)
      acc298(158)=acc298(159)+acc298(163)+acc298(162)+acc298(161)+acc298(160)+a&
      &cc298(171)+acc298(158)+acc298(170)+acc298(169)+acc298(168)+acc298(167)+a&
      &cc298(166)+acc298(165)+acc298(23)+acc298(164)
      acc298(158)=Qspe7*acc298(158)
      acc298(159)=Qspvak4k2*acc298(60)
      acc298(160)=Qspval6k3*acc298(135)
      acc298(161)=Qspvak7k2*acc298(75)
      acc298(162)=Qspval6k7*acc298(145)
      acc298(163)=Qspval6k2*acc298(104)
      acc298(164)=Qspval6k1*acc298(68)
      acc298(165)=Qspvae7k1*acc298(126)
      acc298(166)=Qspvak4k1*acc298(115)
      acc298(167)=Qspvak4k1*acc298(127)
      acc298(167)=acc298(70)+acc298(167)
      acc298(167)=Qspvae7k2*acc298(167)
      acc298(168)=Qspvak4k1*acc298(121)
      acc298(168)=acc298(28)+acc298(168)
      acc298(168)=Qspval6e7*acc298(168)
      acc298(169)=Qspk1*acc298(144)
      acc298(170)=QspQ*acc298(32)
      acc298(171)=Qspk2*acc298(154)
      acc298(159)=acc298(171)+acc298(170)+acc298(169)+acc298(168)+acc298(167)+a&
      &cc298(166)+acc298(165)+acc298(164)+acc298(163)+acc298(162)+acc298(161)+a&
      &cc298(160)+acc298(30)+acc298(159)
      acc298(159)=Qspk2*acc298(159)
      acc298(160)=Qspvak4k2*acc298(92)
      acc298(161)=Qspval6k3*acc298(137)
      acc298(162)=Qspvak7k2*acc298(140)
      acc298(163)=Qspval6k7*acc298(150)
      acc298(164)=Qspval6k2*acc298(90)
      acc298(165)=Qspval6k1*acc298(31)
      acc298(166)=Qspvae7k1*acc298(80)
      acc298(167)=Qspvak4k1*acc298(97)
      acc298(168)=Qspvak4k1*acc298(129)
      acc298(168)=acc298(125)+acc298(168)
      acc298(168)=Qspvae7k2*acc298(168)
      acc298(169)=Qspvak4k1*acc298(122)
      acc298(169)=acc298(128)+acc298(169)
      acc298(169)=Qspval6e7*acc298(169)
      acc298(170)=Qspk1*acc298(71)
      acc298(171)=QspQ*acc298(117)
      acc298(160)=acc298(171)+acc298(170)+acc298(169)+acc298(168)+acc298(167)+a&
      &cc298(166)+acc298(165)+acc298(164)+acc298(163)+acc298(162)+acc298(161)+a&
      &cc298(61)+acc298(160)
      acc298(160)=QspQ*acc298(160)
      acc298(161)=Qspvak4k2*acc298(37)
      acc298(162)=Qspval6k3*acc298(133)
      acc298(163)=Qspvak7k2*acc298(153)
      acc298(164)=Qspval6k7*acc298(141)
      acc298(165)=Qspval6k2*acc298(134)
      acc298(166)=Qspval6k1*acc298(69)
      acc298(167)=Qspvak4k1*acc298(102)
      acc298(161)=-acc298(167)-acc298(162)+acc298(161)+acc298(164)+acc298(165)+&
      &acc298(163)-acc298(166)
      acc298(162)=Qspl6-Qspk1
      acc298(162)=acc298(152)*acc298(162)
      acc298(163)=Qspvak2k1*acc298(8)
      acc298(164)=Qspvae7k1*acc298(123)
      acc298(165)=Qspvak4k1*acc298(124)
      acc298(166)=acc298(156)+acc298(165)
      acc298(166)=Qspvae7k2*acc298(166)
      acc298(167)=Qspvak4k1*acc298(120)
      acc298(168)=acc298(143)-acc298(167)
      acc298(168)=Qspval6e7*acc298(168)
      acc298(169)=QspQ*acc298(72)
      acc298(170)=Qspk2*acc298(155)
      acc298(171)=Qspk7*acc298(149)
      acc298(162)=acc298(171)+acc298(170)+acc298(169)+acc298(168)+acc298(166)+a&
      &cc298(164)+acc298(163)+acc298(142)+acc298(162)-acc298(161)
      acc298(162)=Qspl6*acc298(162)
      acc298(163)=acc298(95)-acc298(165)
      acc298(163)=Qspvae7k2*acc298(163)
      acc298(164)=acc298(132)+acc298(167)
      acc298(164)=Qspval6e7*acc298(164)
      acc298(163)=acc298(164)+acc298(163)+acc298(111)+acc298(161)
      acc298(163)=Qspk1*acc298(163)
      acc298(164)=Qspk7-Qspk1
      acc298(164)=acc298(151)*acc298(164)
      acc298(166)=Qspvae7k1*acc298(84)
      acc298(165)=acc298(109)+acc298(165)
      acc298(165)=Qspvae7k2*acc298(165)
      acc298(167)=acc298(139)-acc298(167)
      acc298(167)=Qspval6e7*acc298(167)
      acc298(168)=QspQ*acc298(50)
      acc298(169)=Qspk2*acc298(49)
      acc298(161)=acc298(169)+acc298(168)+acc298(167)+acc298(165)+acc298(166)+a&
      &cc298(74)+acc298(164)-acc298(161)
      acc298(161)=Qspk7*acc298(161)
      acc298(164)=Qspval6l5*acc298(113)
      acc298(165)=Qspval6k3*acc298(42)
      acc298(166)=Qspvak7k2*acc298(93)
      acc298(167)=Qspval6k7*acc298(41)
      acc298(168)=Qspval6k2*acc298(22)
      acc298(164)=acc298(168)+acc298(167)+acc298(166)+acc298(165)+acc298(6)+acc&
      &298(164)
      acc298(164)=Qspvae7k1*acc298(164)
      acc298(165)=Qspval6k3*acc298(51)
      acc298(166)=Qspval6k7*acc298(38)
      acc298(167)=Qspval6k2*acc298(62)
      acc298(165)=acc298(167)+acc298(166)+acc298(7)+acc298(165)
      acc298(165)=Qspvak2k1*acc298(165)
      acc298(166)=Qspvak7k1*acc298(108)
      acc298(167)=Qspvak2k1*acc298(14)
      acc298(168)=Qspval6k1*acc298(91)
      acc298(166)=acc298(168)+acc298(167)+acc298(94)+acc298(166)
      acc298(166)=Qspvae7k2*acc298(166)
      acc298(167)=Qspvak7k1*acc298(19)
      acc298(168)=Qspvak2k1*acc298(15)
      acc298(169)=Qspval6k1*acc298(47)
      acc298(167)=acc298(169)+acc298(168)+acc298(25)+acc298(167)
      acc298(167)=Qspval6e7*acc298(167)
      acc298(168)=Qspvak1k2*acc298(26)
      acc298(169)=Qspval6l5*acc298(43)
      acc298(170)=Qspvak7k1*acc298(146)
      acc298(171)=Qspval6k3*acc298(10)
      acc298(172)=Qspvak7k2*acc298(130)
      acc298(173)=Qspval6k7*acc298(103)
      acc298(174)=Qspval6k2*acc298(3)
      acc298(175)=Qspvak2k1*acc298(21)
      acc298(175)=acc298(24)+acc298(175)
      acc298(175)=Qspval6k1*acc298(175)
      brack=acc298(20)+acc298(157)+acc298(158)+acc298(159)+acc298(160)+acc298(1&
      &61)+acc298(162)+acc298(163)+acc298(164)+acc298(165)+acc298(166)+acc298(1&
      &67)+acc298(168)+acc298(169)+acc298(170)+acc298(171)+acc298(172)+acc298(1&
      &73)+acc298(174)+acc298(175)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram298_sign, shift => diagram298_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd298h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d298
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k5
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d298 = 0.0_ki
      d298 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d298, ki), aimag(d298), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd298h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d298
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k5
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d298 = 0.0_ki
      d298 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d298, ki), aimag(d298), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d298h0l1
