module     p0_dbaru_epnebbbarg_abbrevd175h2
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(178), public :: abb175
   complex(ki), public :: R2d175
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p0_dbaru_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_color, only: TR
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb175(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb175(2)=1.0_ki/(mB**2-es67-es56+es567)
      abb175(3)=sqrt2**(-1)
      abb175(4)=es234**(-1)
      abb175(5)=es567**(-1)
      abb175(6)=spak2k7**(-1)
      abb175(7)=spbl5k2**(-1)
      abb175(8)=spak2l6**(-1)
      abb175(9)=sqrt(mB**2)
      abb175(10)=1.0_ki/(es34+es567-es12-es234)
      abb175(11)=spbl6k2**(-1)
      abb175(12)=spak2l5**(-1)
      abb175(13)=spbk4k3*abb175(10)
      abb175(14)=abb175(13)*spak2k4
      abb175(15)=spbk3k1*abb175(10)
      abb175(16)=abb175(15)*spak1k2
      abb175(14)=abb175(14)-abb175(16)
      abb175(17)=mB**2
      abb175(18)=TR*gW
      abb175(18)=abb175(18)**2*i_*CVDU*abb175(5)*abb175(3)*abb175(2)*abb175(1)
      abb175(19)=abb175(6)*abb175(18)
      abb175(20)=abb175(19)*abb175(7)
      abb175(21)=abb175(17)*abb175(20)
      abb175(22)=abb175(21)*spbk7k2
      abb175(23)=NC*c1
      abb175(24)=abb175(23)-c2
      abb175(25)=-abb175(8)*abb175(24)
      abb175(26)=-spak1k4*abb175(25)
      abb175(27)=-abb175(22)*abb175(26)
      abb175(28)=-abb175(27)*abb175(14)
      abb175(29)=spbk3k2*abb175(4)
      abb175(30)=abb175(22)*abb175(29)
      abb175(31)=-abb175(30)*abb175(25)
      abb175(32)=spak2k4*spak1k2
      abb175(33)=abb175(32)*abb175(31)
      abb175(28)=abb175(28)+abb175(33)
      abb175(33)=-es12+es712-es71
      abb175(28)=abb175(33)*abb175(28)
      abb175(34)=abb175(21)*abb175(29)
      abb175(35)=-abb175(34)*abb175(25)
      abb175(36)=spak3k4*spak1k2
      abb175(37)=-abb175(33)*abb175(35)*abb175(36)
      abb175(38)=abb175(29)*abb175(19)
      abb175(39)=abb175(38)*mB
      abb175(40)=-abb175(39)*abb175(25)
      abb175(41)=spak2l5*abb175(9)
      abb175(42)=abb175(40)*abb175(41)
      abb175(43)=abb175(42)*abb175(36)
      abb175(37)=-abb175(43)+abb175(37)
      abb175(37)=abb175(37)*spbk7k3
      abb175(44)=abb175(19)*spbk7k2
      abb175(45)=abb175(44)*spak1k4
      abb175(46)=abb175(45)*c2
      abb175(47)=abb175(17)*abb175(8)
      abb175(48)=abb175(46)*abb175(47)
      abb175(49)=abb175(47)*abb175(23)
      abb175(50)=abb175(49)*abb175(45)
      abb175(48)=abb175(48)-abb175(50)
      abb175(50)=spak1k4*mB
      abb175(51)=abb175(50)*abb175(44)
      abb175(52)=-abb175(51)*abb175(25)
      abb175(53)=abb175(52)*abb175(9)
      abb175(54)=abb175(53)+abb175(48)
      abb175(55)=abb175(54)*abb175(13)
      abb175(56)=spak2k4*spak2l5
      abb175(57)=abb175(55)*abb175(56)
      abb175(58)=abb175(44)*abb175(29)
      abb175(59)=abb175(49)*abb175(58)
      abb175(60)=abb175(29)*c2
      abb175(61)=abb175(60)*abb175(44)
      abb175(62)=abb175(61)*abb175(47)
      abb175(59)=abb175(59)-abb175(62)
      abb175(62)=-mB*abb175(25)
      abb175(63)=-abb175(58)*abb175(62)
      abb175(64)=abb175(63)*abb175(9)
      abb175(65)=abb175(64)+abb175(59)
      abb175(66)=abb175(56)*spak1k2
      abb175(67)=abb175(65)*abb175(66)
      abb175(16)=abb175(16)*spak2l5
      abb175(68)=abb175(54)*abb175(16)
      abb175(69)=abb175(31)*spak2l5
      abb175(70)=abb175(69)*spbl5k3
      abb175(71)=abb175(70)*abb175(36)
      abb175(37)=-abb175(37)-abb175(28)-abb175(57)+abb175(67)+abb175(68)-abb175&
      &(71)
      abb175(57)=spak1k4*abb175(24)
      abb175(22)=-abb175(22)*abb175(57)
      abb175(67)=abb175(20)*spbk7k2
      abb175(68)=abb175(50)*abb175(67)
      abb175(71)=-abb175(68)*abb175(24)
      abb175(72)=abb175(71)*abb175(9)
      abb175(73)=abb175(22)-abb175(72)
      abb175(74)=abb175(73)*abb175(14)
      abb175(75)=-abb175(30)*abb175(24)
      abb175(76)=abb175(23)*abb175(29)
      abb175(60)=abb175(76)-abb175(60)
      abb175(76)=-abb175(60)*abb175(67)*mB
      abb175(77)=abb175(76)*abb175(9)
      abb175(78)=abb175(75)-abb175(77)
      abb175(79)=abb175(78)*abb175(32)
      abb175(74)=abb175(79)+abb175(74)
      abb175(74)=abb175(74)*spbl6k2
      abb175(79)=abb175(78)*abb175(36)
      abb175(80)=abb175(38)*c2
      abb175(81)=abb175(23)*abb175(38)
      abb175(81)=abb175(80)-abb175(81)
      abb175(82)=spbk7l5*spak2l5
      abb175(83)=abb175(82)*spak3k4
      abb175(84)=abb175(83)*abb175(81)
      abb175(85)=abb175(84)*spak1l5
      abb175(86)=abb175(79)+abb175(85)
      abb175(87)=abb175(86)*spbl6k3
      abb175(88)=abb175(81)*abb175(56)
      abb175(89)=abb175(19)*spak1k4
      abb175(90)=abb175(23)*abb175(89)
      abb175(91)=abb175(89)*c2
      abb175(90)=abb175(91)-abb175(90)
      abb175(92)=abb175(15)*spak2l5
      abb175(93)=abb175(90)*abb175(92)
      abb175(88)=abb175(88)-abb175(93)
      abb175(93)=spbl6k2*spbk7l5
      abb175(94)=abb175(88)*abb175(93)
      abb175(95)=abb175(94)*spak1l5
      abb175(96)=abb175(82)*abb175(13)
      abb175(97)=abb175(96)*abb175(90)
      abb175(98)=abb175(97)*spbl6k2
      abb175(99)=abb175(98)*spak4l5
      abb175(74)=-abb175(99)+abb175(74)+abb175(95)+abb175(37)-abb175(87)
      abb175(87)=4.0_ki*abb175(74)
      abb175(95)=abb175(41)*spak3k4
      abb175(99)=2.0_ki*spbk7l5
      abb175(18)=-spak1l5*abb175(99)*abb175(95)*abb175(62)*abb175(18)*abb175(29)
      abb175(62)=mB**3
      abb175(100)=abb175(25)*abb175(62)
      abb175(101)=abb175(20)*abb175(29)
      abb175(102)=-abb175(101)*abb175(100)
      abb175(103)=3.0_ki*abb175(9)
      abb175(104)=abb175(103)*abb175(35)
      abb175(102)=-abb175(104)+2.0_ki*abb175(102)
      abb175(104)=abb175(36)*abb175(9)
      abb175(105)=-abb175(104)*abb175(33)
      abb175(102)=-abb175(102)*abb175(105)
      abb175(106)=abb175(49)*abb175(38)
      abb175(80)=abb175(80)*abb175(47)
      abb175(80)=abb175(106)-abb175(80)
      abb175(106)=abb175(9)**2
      abb175(107)=abb175(106)*spak2l5
      abb175(108)=abb175(107)*abb175(36)
      abb175(109)=-abb175(80)*abb175(108)
      abb175(110)=-abb175(34)*abb175(24)
      abb175(111)=abb175(110)*spbl6k2
      abb175(112)=2.0_ki*abb175(36)
      abb175(113)=abb175(106)*abb175(112)*abb175(111)
      abb175(18)=abb175(18)+abb175(109)+abb175(113)+abb175(102)
      abb175(18)=spbk7k3*abb175(18)
      abb175(102)=abb175(58)*abb175(23)
      abb175(102)=abb175(102)-abb175(61)
      abb175(109)=mB*abb175(102)
      abb175(113)=abb175(41)*spak2k4
      abb175(114)=abb175(109)*abb175(113)
      abb175(115)=abb175(41)*abb175(15)
      abb175(51)=-abb175(51)*abb175(24)
      abb175(116)=abb175(51)*abb175(115)
      abb175(114)=abb175(114)+abb175(116)
      abb175(116)=2.0_ki*spbk7l6
      abb175(114)=abb175(114)*abb175(116)
      abb175(117)=spak2l5**2
      abb175(118)=abb175(117)*abb175(15)
      abb175(119)=abb175(53)*abb175(118)
      abb175(120)=abb175(117)*spak2k4
      abb175(121)=abb175(64)*abb175(120)
      abb175(119)=abb175(121)+abb175(119)
      abb175(119)=abb175(119)*abb175(99)
      abb175(121)=abb175(71)*abb175(115)
      abb175(122)=abb175(76)*abb175(41)
      abb175(123)=-spak2k4*abb175(122)
      abb175(121)=abb175(123)+abb175(121)
      abb175(121)=abb175(121)*abb175(93)
      abb175(123)=abb175(117)*spbk7l5
      abb175(124)=2.0_ki*abb175(9)
      abb175(125)=abb175(123)*abb175(124)
      abb175(126)=spak3k4*abb175(125)*abb175(40)
      abb175(127)=spbk7k3*abb175(126)
      abb175(128)=abb175(122)*spak3k4
      abb175(129)=spbl6k3*spbk7l5
      abb175(130)=abb175(128)*abb175(129)
      abb175(114)=abb175(130)+abb175(127)+abb175(114)+abb175(119)+abb175(121)
      abb175(114)=spak1k7*abb175(114)
      abb175(119)=abb175(102)*abb175(56)
      abb175(121)=abb175(45)*abb175(23)
      abb175(121)=abb175(121)-abb175(46)
      abb175(127)=abb175(121)*abb175(92)
      abb175(119)=abb175(119)-abb175(127)
      abb175(127)=abb175(106)*abb175(119)
      abb175(130)=abb175(72)*abb175(15)
      abb175(77)=abb175(77)*spak2k4
      abb175(77)=abb175(130)-abb175(77)
      abb175(77)=abb175(77)*abb175(33)
      abb175(130)=abb175(107)*abb175(81)
      abb175(131)=abb175(130)*spak3k4
      abb175(101)=abb175(24)*abb175(101)
      abb175(132)=-mB*abb175(101)
      abb175(133)=abb175(132)*abb175(9)
      abb175(134)=abb175(33)*abb175(133)
      abb175(135)=-spak3k4*abb175(134)
      abb175(131)=abb175(131)-abb175(135)
      abb175(136)=spbk7k3*abb175(131)
      abb175(77)=abb175(136)+abb175(77)+abb175(127)
      abb175(77)=spak1l5*abb175(77)
      abb175(127)=abb175(4)*spbk3k2**2
      abb175(136)=abb175(127)*abb175(23)
      abb175(137)=abb175(7)**2
      abb175(138)=abb175(137)*abb175(62)
      abb175(139)=abb175(136)*abb175(138)
      abb175(140)=abb175(139)*abb175(44)
      abb175(141)=abb175(127)*c2
      abb175(142)=abb175(141)*abb175(44)
      abb175(143)=abb175(142)*abb175(138)
      abb175(140)=abb175(140)-abb175(143)
      abb175(143)=abb175(140)*abb175(104)
      abb175(20)=-abb175(20)*abb175(24)
      abb175(144)=-abb175(50)*abb175(20)
      abb175(145)=spbk7k2**2
      abb175(146)=-abb175(145)*abb175(144)
      abb175(147)=abb175(146)*abb175(115)
      abb175(148)=-abb175(145)*abb175(132)
      abb175(149)=abb175(148)*abb175(113)
      abb175(150)=spbk7k3*abb175(128)
      abb175(147)=abb175(150)+abb175(149)+abb175(147)
      abb175(147)=spak1k7*abb175(147)
      abb175(149)=abb175(62)*abb175(67)
      abb175(150)=abb175(25)*abb175(149)
      abb175(151)=abb175(127)*abb175(150)
      abb175(152)=abb175(41)*abb175(36)
      abb175(153)=abb175(11)*abb175(151)*abb175(152)
      abb175(77)=abb175(147)+abb175(153)+abb175(143)+abb175(77)
      abb175(143)=2.0_ki*spbl6l5
      abb175(77)=abb175(77)*abb175(143)
      abb175(147)=abb175(144)*abb175(9)
      abb175(153)=abb175(93)*abb175(13)
      abb175(154)=abb175(153)*abb175(147)
      abb175(155)=abb175(89)*mB
      abb175(156)=-abb175(155)*abb175(25)
      abb175(157)=abb175(156)*abb175(41)
      abb175(158)=abb175(157)*abb175(13)
      abb175(159)=abb175(158)*abb175(99)
      abb175(154)=abb175(154)-abb175(159)
      abb175(154)=-abb175(154)*abb175(33)
      abb175(159)=abb175(90)*abb175(9)
      abb175(155)=-abb175(155)*abb175(24)
      abb175(159)=abb175(159)+abb175(155)
      abb175(160)=abb175(159)*abb175(41)*abb175(153)
      abb175(161)=-abb175(33)*abb175(13)
      abb175(162)=-abb175(116)*abb175(161)*abb175(155)*abb175(9)
      abb175(72)=abb175(72)*abb175(33)
      abb175(163)=-abb175(121)*abb175(107)
      abb175(72)=abb175(163)+abb175(72)
      abb175(72)=abb175(143)*abb175(13)*abb175(72)
      abb175(72)=abb175(72)+abb175(162)+abb175(160)+abb175(154)
      abb175(72)=spak4l5*abb175(72)
      abb175(154)=abb175(133)*spak2k4
      abb175(160)=abb175(15)*abb175(9)
      abb175(162)=abb175(160)*abb175(144)
      abb175(154)=abb175(154)+abb175(162)
      abb175(154)=abb175(154)*abb175(93)
      abb175(162)=abb175(42)*spak2k4
      abb175(163)=abb175(157)*abb175(15)
      abb175(162)=abb175(162)-abb175(163)
      abb175(164)=abb175(162)*abb175(99)
      abb175(154)=abb175(154)+abb175(164)
      abb175(154)=-abb175(154)*abb175(33)
      abb175(164)=abb175(81)*abb175(9)
      abb175(39)=-abb175(39)*abb175(24)
      abb175(165)=abb175(164)+abb175(39)
      abb175(166)=-abb175(165)*abb175(113)
      abb175(159)=abb175(159)*abb175(115)
      abb175(159)=abb175(166)+abb175(159)
      abb175(159)=abb175(159)*abb175(93)
      abb175(154)=abb175(159)+abb175(154)
      abb175(154)=spak1l5*abb175(154)
      abb175(159)=-abb175(149)*abb175(60)
      abb175(166)=-abb175(9)*abb175(75)
      abb175(159)=abb175(166)+abb175(159)
      abb175(166)=abb175(124)*abb175(36)
      abb175(159)=abb175(159)*abb175(166)
      abb175(165)=abb175(165)*abb175(95)
      abb175(135)=abb175(165)-abb175(135)
      abb175(135)=spak1l5*spbk7l5*abb175(135)
      abb175(126)=-spak1l6*abb175(126)
      abb175(126)=abb175(126)+abb175(159)+abb175(135)
      abb175(126)=spbl6k3*abb175(126)
      abb175(135)=abb175(127)*abb175(8)
      abb175(159)=-abb175(20)*abb175(135)*abb175(62)
      abb175(165)=abb175(159)*abb175(105)
      abb175(23)=abb175(17)*abb175(23)
      abb175(167)=abb175(19)*abb175(8)
      abb175(168)=abb175(167)*abb175(127)*abb175(23)
      abb175(169)=abb175(19)*c2
      abb175(170)=abb175(127)*abb175(169)
      abb175(171)=abb175(170)*abb175(47)
      abb175(168)=abb175(168)-abb175(171)
      abb175(108)=-abb175(168)*abb175(108)
      abb175(108)=abb175(108)+abb175(165)
      abb175(108)=spbk7l6*abb175(108)
      abb175(100)=-abb175(58)*abb175(100)
      abb175(165)=-abb175(9)*abb175(59)
      abb175(100)=abb175(165)+abb175(100)
      abb175(100)=abb175(100)*abb175(152)
      abb175(150)=-abb175(29)*abb175(150)
      abb175(165)=abb175(150)*abb175(105)
      abb175(100)=abb175(100)+abb175(165)
      abb175(100)=spbl6k3*abb175(100)
      abb175(100)=abb175(108)+abb175(100)
      abb175(108)=2.0_ki*abb175(11)
      abb175(100)=abb175(100)*abb175(108)
      abb175(165)=abb175(170)*abb175(138)
      abb175(139)=abb175(139)*abb175(19)
      abb175(139)=abb175(165)-abb175(139)
      abb175(139)=abb175(116)*abb175(139)
      abb175(165)=-spbk7k3*spbl6k2*abb175(138)*abb175(81)
      abb175(171)=-abb175(138)*abb175(102)
      abb175(172)=-spbl6k3*abb175(171)
      abb175(139)=abb175(172)+2.0_ki*abb175(165)+abb175(139)
      abb175(105)=abb175(105)*abb175(139)
      abb175(138)=-abb175(9)*abb175(138)*abb175(121)
      abb175(139)=-abb175(138)*abb175(14)
      abb175(165)=abb175(171)*abb175(9)
      abb175(172)=abb175(165)*abb175(32)
      abb175(139)=abb175(139)-abb175(172)
      abb175(139)=spbl6k2*abb175(139)*abb175(33)
      abb175(105)=3.0_ki*abb175(139)+abb175(105)
      abb175(105)=abb175(12)*abb175(105)
      abb175(131)=spak1l5*abb175(131)
      abb175(128)=spak1k7*abb175(128)
      abb175(128)=abb175(128)+abb175(131)
      abb175(128)=abb175(116)*abb175(128)
      abb175(131)=abb175(31)*abb175(103)
      abb175(131)=-2.0_ki*abb175(150)+abb175(131)
      abb175(131)=abb175(131)*abb175(152)
      abb175(139)=-spbl6k2*abb175(171)*abb175(166)
      abb175(128)=abb175(131)+abb175(139)+abb175(128)
      abb175(128)=spbl5k3*abb175(128)
      abb175(28)=abb175(106)*abb175(28)
      abb175(131)=-spbk7l5*abb175(159)*abb175(152)
      abb175(28)=abb175(131)+abb175(28)
      abb175(131)=abb175(141)-abb175(136)
      abb175(139)=-abb175(21)*abb175(131)
      abb175(141)=abb175(139)*abb175(106)*abb175(36)
      abb175(166)=abb175(9)*abb175(39)*spak2k4
      abb175(171)=abb175(160)*abb175(155)
      abb175(166)=abb175(166)-abb175(171)
      abb175(171)=abb175(33)*spak1l5
      abb175(166)=-abb175(166)*abb175(171)
      abb175(141)=abb175(141)+abb175(166)
      abb175(141)=abb175(141)*abb175(116)
      abb175(166)=abb175(51)*abb175(116)
      abb175(172)=abb175(146)*abb175(143)
      abb175(166)=abb175(172)+abb175(166)
      abb175(166)=abb175(13)*abb175(166)
      abb175(172)=abb175(71)*abb175(153)
      abb175(166)=abb175(172)+abb175(166)
      abb175(166)=abb175(41)*abb175(166)
      abb175(172)=abb175(52)*abb175(13)*abb175(125)
      abb175(166)=abb175(172)+abb175(166)
      abb175(166)=spak4k7*abb175(166)
      abb175(172)=-spak1l5*abb175(106)*abb175(88)
      abb175(173)=spak4l5*abb175(90)*abb175(13)*abb175(107)
      abb175(172)=abb175(172)+abb175(173)
      abb175(172)=spbl5k2*spbk7l6*abb175(172)
      abb175(173)=abb175(40)*abb175(9)
      abb175(174)=abb175(173)*abb175(120)
      abb175(175)=abb175(117)*abb175(156)
      abb175(160)=-abb175(160)*abb175(175)
      abb175(160)=abb175(174)+abb175(160)
      abb175(174)=2.0_ki*abb175(93)
      abb175(160)=spak1l6*abb175(160)*abb175(174)
      abb175(175)=-spak4l6*abb175(124)*abb175(153)*abb175(175)
      abb175(176)=abb175(52)*abb175(14)
      abb175(177)=-abb175(63)*abb175(32)
      abb175(176)=abb175(177)+abb175(176)
      abb175(176)=abb175(41)*abb175(176)
      abb175(177)=-spbk7k3*abb175(43)
      abb175(176)=abb175(176)+abb175(177)
      abb175(176)=spal5k7*spbk7l5*abb175(176)
      abb175(177)=abb175(157)*abb175(14)
      abb175(178)=abb175(32)*abb175(42)
      abb175(177)=abb175(178)+abb175(177)
      abb175(177)=abb175(177)*abb175(93)
      abb175(43)=-abb175(43)*abb175(129)
      abb175(43)=abb175(177)+abb175(43)
      abb175(129)=2.0_ki*spal5l6
      abb175(43)=abb175(43)*abb175(129)
      abb175(18)=abb175(43)+2.0_ki*abb175(172)+abb175(176)+abb175(166)+abb175(1&
      &75)+abb175(128)+abb175(72)+abb175(77)+abb175(114)+abb175(105)+abb175(100&
      &)+abb175(126)+abb175(160)+abb175(18)+abb175(141)+3.0_ki*abb175(28)+abb17&
      &5(154)
      abb175(18)=4.0_ki*abb175(18)
      abb175(28)=16.0_ki*abb175(74)
      abb175(37)=8.0_ki*abb175(37)
      abb175(43)=-abb175(68)*abb175(60)
      abb175(68)=abb175(43)*abb175(41)
      abb175(72)=abb175(68)*spbl6l5
      abb175(77)=-abb175(25)*abb175(50)*abb175(38)
      abb175(100)=abb175(123)*abb175(9)
      abb175(105)=abb175(100)*abb175(77)
      abb175(50)=abb175(33)*abb175(9)*abb175(50)*abb175(101)
      abb175(38)=-abb175(38)*abb175(57)
      abb175(101)=abb175(38)*abb175(107)
      abb175(50)=abb175(101)-abb175(50)
      abb175(50)=abb175(50)*spbk7l6
      abb175(72)=abb175(72)+abb175(105)+abb175(50)
      abb175(72)=32.0_ki*abb175(72)
      abb175(101)=abb175(9)*abb175(149)
      abb175(105)=mB**4
      abb175(114)=abb175(105)*abb175(67)
      abb175(101)=abb175(114)-abb175(101)
      abb175(101)=-abb175(14)*abb175(26)*abb175(101)
      abb175(29)=abb175(25)*abb175(114)*abb175(29)
      abb175(126)=abb175(150)*abb175(9)
      abb175(29)=abb175(126)+abb175(29)
      abb175(126)=abb175(29)*abb175(32)
      abb175(125)=abb175(77)*abb175(125)
      abb175(21)=abb175(21)*spak1k4
      abb175(128)=-abb175(21)*abb175(25)
      abb175(141)=abb175(33)*abb175(128)*abb175(13)
      abb175(149)=-abb175(158)-abb175(141)
      abb175(149)=spbk7l6*abb175(149)
      abb175(150)=abb175(27)*abb175(13)
      abb175(154)=spbl6l5*spak2l5
      abb175(160)=abb175(150)*abb175(154)
      abb175(149)=abb175(149)+abb175(160)
      abb175(149)=spak4l6*abb175(149)
      abb175(101)=abb175(149)+abb175(125)+abb175(126)+abb175(101)
      abb175(125)=abb175(8)**2
      abb175(62)=abb175(125)*abb175(62)
      abb175(126)=abb175(62)*abb175(9)
      abb175(125)=abb175(125)*abb175(105)
      abb175(126)=abb175(126)-abb175(125)
      abb175(149)=abb175(13)*abb175(56)
      abb175(16)=-abb175(16)+abb175(149)
      abb175(16)=abb175(16)*abb175(121)*abb175(126)
      abb175(67)=abb175(125)*abb175(67)
      abb175(149)=abb175(14)*abb175(67)*abb175(57)
      abb175(60)=-abb175(67)*abb175(60)
      abb175(160)=abb175(60)*abb175(32)
      abb175(149)=abb175(149)-abb175(160)
      abb175(149)=abb175(149)*abb175(33)
      abb175(126)=abb175(102)*abb175(126)
      abb175(66)=abb175(126)*abb175(66)
      abb175(16)=abb175(66)+abb175(149)+abb175(16)
      abb175(29)=abb175(29)*abb175(36)
      abb175(66)=abb175(83)*spak1l5
      abb175(149)=abb175(80)*abb175(66)
      abb175(149)=-abb175(29)+abb175(149)
      abb175(149)=spbl6k3*abb175(149)
      abb175(16)=2.0_ki*abb175(16)+abb175(149)
      abb175(16)=abb175(11)*abb175(16)
      abb175(105)=abb175(137)*abb175(105)
      abb175(137)=abb175(121)*abb175(105)
      abb175(137)=abb175(137)+abb175(138)
      abb175(137)=-abb175(137)*abb175(14)
      abb175(102)=abb175(102)*abb175(105)
      abb175(102)=abb175(102)+abb175(165)
      abb175(138)=-abb175(102)*abb175(32)
      abb175(137)=abb175(138)+abb175(137)
      abb175(137)=spbl6k2*abb175(137)
      abb175(138)=-abb175(105)*abb175(25)
      abb175(149)=abb175(14)*abb175(45)*abb175(138)
      abb175(160)=-abb175(58)*abb175(138)
      abb175(165)=abb175(160)*abb175(32)
      abb175(149)=abb175(149)-abb175(165)
      abb175(149)=abb175(149)*abb175(33)
      abb175(102)=spbl6k3*abb175(102)*abb175(112)
      abb175(102)=abb175(102)+2.0_ki*abb175(137)+abb175(149)
      abb175(102)=abb175(12)*abb175(102)
      abb175(137)=abb175(35)*spak2k4
      abb175(149)=abb175(128)*abb175(15)
      abb175(137)=abb175(137)-abb175(149)
      abb175(137)=-abb175(33)*abb175(137)
      abb175(165)=abb175(173)-abb175(80)
      abb175(166)=abb175(165)*abb175(56)
      abb175(49)=abb175(49)*abb175(89)
      abb175(47)=abb175(91)*abb175(47)
      abb175(47)=abb175(49)-abb175(47)
      abb175(49)=abb175(156)*abb175(9)
      abb175(89)=abb175(49)-abb175(47)
      abb175(91)=-abb175(89)*abb175(92)
      abb175(91)=-abb175(137)+abb175(166)+abb175(91)
      abb175(91)=spbk7l5*abb175(91)
      abb175(166)=spak2k4*abb175(110)
      abb175(21)=-abb175(21)*abb175(24)
      abb175(24)=-abb175(21)*abb175(15)
      abb175(24)=abb175(166)+abb175(24)
      abb175(24)=abb175(24)*abb175(174)
      abb175(166)=abb175(99)*spak3k4
      abb175(172)=-spbl6k3*abb175(110)*abb175(166)
      abb175(24)=abb175(172)+abb175(24)+abb175(91)
      abb175(24)=spak1l5*abb175(24)
      abb175(91)=-spbk7l5*abb175(141)
      abb175(89)=-abb175(89)*abb175(96)
      abb175(141)=abb175(21)*abb175(153)
      abb175(89)=abb175(89)-2.0_ki*abb175(141)+abb175(91)
      abb175(89)=spak4l5*abb175(89)
      abb175(91)=abb175(137)-abb175(162)
      abb175(91)=abb175(91)*spak1l6
      abb175(137)=-abb175(116)*abb175(91)
      abb175(141)=abb175(31)*abb175(56)
      abb175(153)=abb175(92)*abb175(27)
      abb175(141)=abb175(141)+abb175(153)
      abb175(172)=abb175(141)*spak1l6
      abb175(68)=2.0_ki*abb175(68)+abb175(172)
      abb175(68)=abb175(68)*abb175(143)
      abb175(141)=spak1k7*spbk7l5*abb175(141)
      abb175(174)=spak4k7*abb175(27)*abb175(96)
      abb175(16)=abb175(174)+abb175(89)+abb175(68)+abb175(141)+abb175(102)+abb1&
      &75(16)+abb175(137)+4.0_ki*abb175(50)+abb175(24)+2.0_ki*abb175(101)
      abb175(16)=8.0_ki*abb175(16)
      abb175(24)=-8.0_ki*abb175(74)
      abb175(50)=spbk7k3*abb175(86)
      abb175(68)=-abb175(145)*abb175(21)
      abb175(74)=abb175(146)*abb175(9)
      abb175(68)=abb175(68)+abb175(74)
      abb175(74)=abb175(68)*abb175(14)
      abb175(86)=abb175(148)*abb175(9)
      abb175(89)=abb175(110)*abb175(145)
      abb175(86)=abb175(86)+abb175(89)
      abb175(89)=-abb175(86)*abb175(32)
      abb175(101)=abb175(119)*spbk7l5
      abb175(102)=spak1l5*abb175(101)
      abb175(119)=abb175(121)*abb175(96)
      abb175(121)=-spak4l5*abb175(119)
      abb175(50)=abb175(121)+abb175(50)+abb175(102)+abb175(89)+abb175(74)
      abb175(50)=8.0_ki*abb175(50)
      abb175(45)=abb175(45)*abb175(23)
      abb175(46)=abb175(46)*abb175(17)
      abb175(51)=abb175(51)*abb175(9)
      abb175(45)=abb175(51)+abb175(45)-abb175(46)
      abb175(14)=abb175(45)*abb175(14)
      abb175(23)=abb175(58)*abb175(23)
      abb175(46)=abb175(109)*abb175(9)
      abb175(17)=abb175(61)*abb175(17)
      abb175(17)=-abb175(46)+abb175(23)-abb175(17)
      abb175(23)=abb175(17)*abb175(32)
      abb175(14)=abb175(23)+abb175(14)
      abb175(23)=-spbk7l5*abb175(139)
      abb175(32)=abb175(168)*abb175(11)
      abb175(46)=abb175(82)*abb175(32)
      abb175(23)=abb175(46)+abb175(23)
      abb175(23)=abb175(36)*abb175(23)
      abb175(46)=abb175(84)*spbk7k3
      abb175(46)=abb175(46)+abb175(101)
      abb175(51)=-spak1k7*abb175(46)
      abb175(58)=2.0_ki*abb175(79)+abb175(85)
      abb175(58)=spbl5k3*abb175(58)
      abb175(61)=abb175(88)*spbk7l5
      abb175(74)=-spak1l5*abb175(61)
      abb175(79)=spak4l5*abb175(97)
      abb175(74)=abb175(74)+abb175(79)
      abb175(74)=spbl5k2*abb175(74)
      abb175(79)=-spak1l6*abb175(94)
      abb175(85)=spbl6k3*spak1l6
      abb175(88)=abb175(84)*abb175(85)
      abb175(89)=spak4l6*abb175(98)
      abb175(101)=spak4k7*abb175(119)
      abb175(14)=abb175(74)+abb175(101)+abb175(89)+abb175(58)+abb175(51)+abb175&
      &(88)+abb175(79)+2.0_ki*abb175(14)+abb175(23)
      abb175(14)=4.0_ki*abb175(14)
      abb175(23)=abb175(38)*abb175(82)
      abb175(23)=16.0_ki*abb175(23)
      abb175(38)=2.0_ki*spak2l6
      abb175(51)=abb175(13)*spbl6k2
      abb175(58)=-abb175(51)*abb175(38)
      abb175(58)=abb175(58)-abb175(161)
      abb175(58)=abb175(73)*abb175(58)
      abb175(74)=abb175(13)*spak2l5
      abb175(79)=abb175(45)*abb175(74)
      abb175(88)=spal5k7*abb175(119)
      abb175(89)=-abb175(98)*abb175(129)
      abb175(58)=abb175(89)+abb175(88)+abb175(79)+abb175(58)
      abb175(58)=4.0_ki*abb175(58)
      abb175(79)=-abb175(4)*abb175(147)
      abb175(88)=abb175(79)*abb175(33)
      abb175(89)=-abb175(4)*abb175(90)
      abb175(98)=-abb175(89)*abb175(107)
      abb175(88)=abb175(98)+abb175(88)
      abb175(88)=spbk7l6*abb175(88)
      abb175(98)=-abb175(4)*abb175(156)
      abb175(100)=-abb175(98)*abb175(100)
      abb175(101)=-abb175(4)*abb175(71)
      abb175(102)=-spbl6l5*abb175(101)*abb175(41)
      abb175(88)=abb175(102)+abb175(100)+abb175(88)
      abb175(88)=spbk4k2*abb175(88)
      abb175(100)=abb175(130)+abb175(134)
      abb175(100)=spbk7l6*abb175(100)
      abb175(102)=abb175(123)*abb175(173)
      abb175(107)=spbl6l5*abb175(122)
      abb175(100)=abb175(107)+abb175(102)+abb175(100)
      abb175(100)=spak1k3*abb175(100)
      abb175(88)=abb175(88)+abb175(100)
      abb175(88)=16.0_ki*abb175(88)
      abb175(100)=-spak1k3*abb175(81)
      abb175(102)=spbk4k2*abb175(89)
      abb175(100)=abb175(102)+abb175(100)
      abb175(82)=8.0_ki*abb175(82)
      abb175(100)=abb175(100)*abb175(82)
      abb175(102)=abb175(144)*abb175(124)
      abb175(102)=-abb175(102)+3.0_ki*abb175(21)
      abb175(107)=abb175(102)*abb175(10)
      abb175(79)=abb175(107)+4.0_ki*abb175(79)
      abb175(79)=abb175(79)*spbk4k3
      abb175(107)=4.0_ki*spak1k2
      abb175(109)=abb175(107)*abb175(133)
      abb175(79)=abb175(79)+abb175(109)
      abb175(79)=-abb175(79)*abb175(33)
      abb175(109)=-abb175(107)*abb175(130)
      abb175(103)=abb175(103)*abb175(90)
      abb175(103)=abb175(103)+2.0_ki*abb175(155)
      abb175(119)=-abb175(10)*abb175(9)*abb175(103)
      abb175(106)=abb175(89)*abb175(106)
      abb175(106)=4.0_ki*abb175(106)+abb175(119)
      abb175(119)=spbk4k3*spak2l5
      abb175(106)=abb175(106)*abb175(119)
      abb175(79)=abb175(109)+abb175(106)+abb175(79)
      abb175(79)=spbk7l6*abb175(79)
      abb175(106)=abb175(49)+abb175(47)
      abb175(109)=-abb175(10)*abb175(106)
      abb175(121)=abb175(98)*abb175(124)
      abb175(109)=abb175(121)+abb175(109)
      abb175(109)=spbk4k3*abb175(109)
      abb175(40)=-spak1k2*abb175(40)*abb175(124)
      abb175(40)=abb175(40)+abb175(109)
      abb175(40)=abb175(99)*abb175(117)*abb175(40)
      abb175(96)=spbl6k2*abb175(21)*abb175(96)
      abb175(71)=abb175(71)*abb175(124)
      abb175(71)=abb175(71)+3.0_ki*abb175(22)
      abb175(109)=-abb175(10)*abb175(71)
      abb175(101)=abb175(101)*abb175(9)
      abb175(109)=4.0_ki*abb175(101)+abb175(109)
      abb175(109)=abb175(109)*abb175(119)
      abb175(107)=-abb175(122)*abb175(107)
      abb175(107)=abb175(107)+abb175(109)
      abb175(107)=spbl6l5*abb175(107)
      abb175(109)=spal5k7*spbk7l6
      abb175(97)=abb175(97)*abb175(109)
      abb175(40)=abb175(97)+abb175(107)+abb175(79)+abb175(40)+abb175(96)
      abb175(40)=4.0_ki*abb175(40)
      abb175(79)=spak1k2*spak2l5*abb175(81)
      abb175(81)=abb175(10)*abb175(90)
      abb175(81)=abb175(81)-abb175(89)
      abb175(81)=abb175(81)*abb175(119)
      abb175(79)=abb175(79)+abb175(81)
      abb175(79)=8.0_ki*spbk7l5*abb175(79)
      abb175(81)=-abb175(33)*abb175(36)
      abb175(20)=abb175(20)*abb175(125)*abb175(127)*abb175(81)
      abb175(19)=abb175(19)*abb175(136)
      abb175(19)=-abb175(170)+abb175(19)
      abb175(19)=abb175(152)*abb175(62)*abb175(19)
      abb175(19)=abb175(19)+abb175(20)
      abb175(19)=abb175(11)*abb175(19)
      abb175(20)=abb175(27)*abb175(15)
      abb175(62)=abb175(31)*spak2k4
      abb175(20)=abb175(20)+abb175(62)
      abb175(62)=-abb175(33)*abb175(20)
      abb175(89)=-abb175(33)*abb175(35)*spak3k4
      abb175(96)=abb175(42)*spak3k4
      abb175(89)=-abb175(96)+abb175(89)
      abb175(96)=abb175(89)*spbk7k3
      abb175(62)=abb175(62)-abb175(96)
      abb175(64)=-2.0_ki*abb175(59)-abb175(64)
      abb175(64)=abb175(64)*abb175(56)
      abb175(53)=abb175(53)+2.0_ki*abb175(48)
      abb175(97)=-abb175(53)*abb175(92)
      abb175(64)=abb175(64)+abb175(97)-abb175(62)
      abb175(64)=spak1k7*abb175(64)
      abb175(97)=abb175(47)*abb175(15)
      abb175(80)=abb175(80)*spak2k4
      abb175(80)=abb175(97)-abb175(80)
      abb175(80)=abb175(80)*abb175(171)
      abb175(91)=-spbl6k2*abb175(91)
      abb175(97)=abb175(169)*abb175(135)*abb175(105)
      abb175(107)=abb175(136)*abb175(105)
      abb175(121)=abb175(107)*abb175(167)
      abb175(97)=abb175(97)-abb175(121)
      abb175(81)=abb175(81)*abb175(12)
      abb175(97)=-abb175(97)*abb175(81)
      abb175(104)=-abb175(159)*abb175(104)
      abb175(121)=abb175(89)*abb175(85)
      abb175(47)=-spak4l5*abb175(47)*abb175(161)
      abb175(122)=abb175(89)*spak1l5
      abb175(123)=abb175(69)*spak3k4
      abb175(125)=spak1k7*abb175(123)
      abb175(125)=-abb175(122)+2.0_ki*abb175(125)
      abb175(125)=spbl5k3*abb175(125)
      abb175(130)=-abb175(128)*abb175(33)
      abb175(130)=-abb175(157)+abb175(130)
      abb175(134)=abb175(51)*spak4l6
      abb175(130)=abb175(130)*abb175(134)
      abb175(53)=-abb175(53)*abb175(74)
      abb175(135)=-abb175(33)*abb175(150)
      abb175(53)=abb175(53)-abb175(135)
      abb175(53)=spak4k7*abb175(53)
      abb175(136)=-spak1l5*abb175(162)
      abb175(137)=spak4l5*abb175(158)
      abb175(136)=abb175(136)+abb175(137)
      abb175(136)=spbl5k2*abb175(136)
      abb175(19)=abb175(136)+abb175(53)+abb175(130)+abb175(125)+abb175(47)+abb1&
      &75(64)+abb175(97)+abb175(19)+abb175(121)+abb175(91)+abb175(104)+abb175(8&
      &0)
      abb175(19)=4.0_ki*abb175(19)
      abb175(34)=abb175(33)*abb175(34)*abb175(26)
      abb175(47)=abb175(77)*abb175(41)
      abb175(34)=abb175(34)+abb175(47)
      abb175(34)=16.0_ki*abb175(34)
      abb175(47)=-abb175(4)*abb175(128)
      abb175(53)=-abb175(47)*abb175(33)
      abb175(41)=-abb175(98)*abb175(41)
      abb175(41)=abb175(41)+abb175(53)
      abb175(41)=spbk4k2*abb175(41)
      abb175(53)=abb175(35)*abb175(33)
      abb175(53)=abb175(42)+abb175(53)
      abb175(53)=spak1k3*abb175(53)
      abb175(41)=abb175(41)+abb175(53)
      abb175(41)=8.0_ki*abb175(41)
      abb175(53)=abb175(128)*abb175(10)
      abb175(47)=abb175(53)-abb175(47)
      abb175(47)=abb175(47)*spbk4k3
      abb175(53)=abb175(35)*spak1k2
      abb175(47)=abb175(47)+abb175(53)
      abb175(47)=-abb175(47)*abb175(33)
      abb175(53)=abb175(9)*abb175(98)
      abb175(49)=-abb175(10)*abb175(49)
      abb175(49)=abb175(53)+abb175(49)
      abb175(49)=abb175(49)*abb175(119)
      abb175(42)=-spak1k2*abb175(42)
      abb175(42)=abb175(42)+abb175(49)+abb175(47)
      abb175(42)=8.0_ki*abb175(42)
      abb175(47)=abb175(78)*spak2k4
      abb175(49)=abb175(73)*abb175(15)
      abb175(47)=abb175(47)-abb175(49)
      abb175(53)=abb175(47)*spbl6k2
      abb175(64)=-abb175(65)*abb175(56)
      abb175(54)=-abb175(54)*abb175(92)
      abb175(54)=-abb175(53)+abb175(64)+abb175(54)-abb175(62)
      abb175(54)=spak1l6*abb175(54)
      abb175(62)=-spak2k4*abb175(17)
      abb175(64)=abb175(45)*abb175(15)
      abb175(65)=abb175(139)*abb175(166)
      abb175(62)=abb175(65)+abb175(62)+abb175(64)
      abb175(62)=spak1l5*abb175(62)
      abb175(64)=-abb175(9)*abb175(140)
      abb175(65)=-abb175(105)*abb175(142)
      abb175(77)=abb175(44)*abb175(107)
      abb175(64)=abb175(64)+abb175(65)+abb175(77)
      abb175(64)=abb175(64)*abb175(36)*abb175(12)
      abb175(65)=spak2k4*abb175(86)
      abb175(77)=abb175(68)*abb175(15)
      abb175(80)=abb175(78)*spak3k4
      abb175(86)=-spbk7k3*abb175(80)
      abb175(65)=abb175(86)+abb175(65)+abb175(77)
      abb175(65)=spak1k7*abb175(65)
      abb175(77)=spak4l5*abb175(45)
      abb175(68)=spak4k7*abb175(68)
      abb175(68)=abb175(68)+abb175(77)
      abb175(13)=abb175(13)*abb175(68)
      abb175(25)=-abb175(114)*abb175(25)*abb175(127)
      abb175(68)=abb175(9)*abb175(151)
      abb175(25)=abb175(68)+abb175(25)
      abb175(25)=abb175(25)*abb175(112)
      abb175(66)=abb175(168)*abb175(66)
      abb175(25)=abb175(25)+abb175(66)
      abb175(25)=abb175(11)*abb175(25)
      abb175(55)=-spak2l5*abb175(55)
      abb175(51)=abb175(73)*abb175(51)
      abb175(51)=abb175(55)+abb175(51)-abb175(135)
      abb175(51)=spak4l6*abb175(51)
      abb175(55)=abb175(80)*abb175(85)
      abb175(66)=-spak1l5*abb175(80)
      abb175(68)=spak1l6*abb175(123)
      abb175(66)=abb175(66)+abb175(68)
      abb175(66)=spbl5k3*abb175(66)
      abb175(13)=abb175(51)+abb175(66)+abb175(65)+abb175(64)+abb175(25)+abb175(&
      &55)+abb175(62)+abb175(54)+abb175(13)
      abb175(13)=4.0_ki*abb175(13)
      abb175(25)=abb175(43)*abb175(9)
      abb175(43)=-abb175(30)*abb175(57)
      abb175(25)=abb175(43)-abb175(25)
      abb175(25)=16.0_ki*abb175(25)
      abb175(22)=abb175(22)*abb175(4)
      abb175(22)=abb175(22)+abb175(101)
      abb175(43)=-spbk4k2*abb175(22)
      abb175(51)=-spak1k3*abb175(78)
      abb175(43)=abb175(43)+abb175(51)
      abb175(43)=8.0_ki*abb175(43)
      abb175(51)=abb175(10)*abb175(73)
      abb175(22)=abb175(51)+abb175(22)
      abb175(22)=spbk4k3*abb175(22)
      abb175(51)=spak1k2*abb175(78)
      abb175(22)=abb175(51)+abb175(22)
      abb175(22)=8.0_ki*abb175(22)
      abb175(51)=-2.0_ki*abb175(33)
      abb175(20)=-abb175(20)*abb175(51)
      abb175(54)=-abb175(63)*abb175(124)
      abb175(54)=abb175(54)-abb175(59)
      abb175(54)=abb175(54)*abb175(56)
      abb175(52)=abb175(52)*abb175(124)
      abb175(48)=abb175(52)+abb175(48)
      abb175(52)=-abb175(48)*abb175(92)
      abb175(55)=spak3k4*abb175(70)
      abb175(20)=abb175(55)+2.0_ki*abb175(96)+abb175(54)+abb175(52)+abb175(20)
      abb175(20)=spak1l5*abb175(20)
      abb175(44)=abb175(127)*abb175(44)*abb175(138)
      abb175(52)=abb175(11)*spak2l5*abb175(67)*abb175(131)
      abb175(44)=abb175(52)+abb175(44)
      abb175(44)=abb175(36)*abb175(44)
      abb175(35)=abb175(56)*abb175(145)*abb175(35)
      abb175(52)=abb175(128)*abb175(145)
      abb175(54)=-abb175(52)*abb175(92)
      abb175(55)=-spbk7k3*abb175(123)
      abb175(35)=abb175(55)+abb175(35)+abb175(54)
      abb175(35)=spak1k7*abb175(35)
      abb175(54)=-spbl6k2*abb175(172)
      abb175(48)=-abb175(48)*abb175(74)
      abb175(51)=-abb175(150)*abb175(51)
      abb175(48)=abb175(48)+abb175(51)
      abb175(48)=spak4l5*abb175(48)
      abb175(51)=abb175(123)*abb175(85)
      abb175(55)=abb175(27)*spak2l5
      abb175(57)=-abb175(55)*abb175(134)
      abb175(52)=-spak4k7*abb175(52)*abb175(74)
      abb175(20)=abb175(52)+abb175(57)+abb175(48)+abb175(35)+abb175(51)+abb175(&
      &54)+abb175(20)+abb175(44)
      abb175(20)=4.0_ki*abb175(20)
      abb175(35)=16.0_ki*spak2l5
      abb175(26)=-abb175(35)*abb175(30)*abb175(26)
      abb175(30)=spbk4k2*abb175(4)*abb175(55)
      abb175(35)=-spak1k3*abb175(69)
      abb175(30)=abb175(30)+abb175(35)
      abb175(30)=8.0_ki*abb175(30)
      abb175(35)=-abb175(10)-abb175(4)
      abb175(27)=abb175(119)*abb175(27)*abb175(35)
      abb175(35)=spak1k2*abb175(69)
      abb175(27)=abb175(35)+abb175(27)
      abb175(27)=8.0_ki*abb175(27)
      abb175(35)=-spak2l5*abb175(126)
      abb175(44)=abb175(60)*abb175(33)
      abb175(35)=abb175(35)+abb175(44)
      abb175(35)=abb175(108)*abb175(36)*abb175(35)
      abb175(36)=abb175(89)*abb175(116)
      abb175(44)=-abb175(123)*abb175(143)
      abb175(36)=abb175(44)+abb175(36)
      abb175(36)=spak1l6*abb175(36)
      abb175(44)=spbk7l5*abb175(122)
      abb175(48)=-abb175(160)*abb175(81)
      abb175(31)=-spak1k7*abb175(31)*abb175(83)
      abb175(29)=abb175(31)+abb175(48)+abb175(35)-abb175(29)+abb175(44)+abb175(&
      &36)
      abb175(29)=4.0_ki*abb175(29)
      abb175(31)=abb175(110)-abb175(133)
      abb175(31)=spbk7k3*spak3k4*abb175(31)
      abb175(31)=abb175(31)-abb175(47)
      abb175(31)=abb175(33)*abb175(31)
      abb175(17)=-abb175(17)*abb175(56)
      abb175(35)=abb175(45)*abb175(92)
      abb175(36)=-spal5k7*abb175(46)
      abb175(44)=-spbl6k3*abb175(84)
      abb175(44)=abb175(94)+abb175(44)
      abb175(44)=abb175(44)*abb175(129)
      abb175(45)=-spbl6k3*abb175(80)
      abb175(45)=abb175(53)+abb175(45)
      abb175(38)=abb175(45)*abb175(38)
      abb175(45)=abb175(139)*abb175(83)
      abb175(46)=abb175(166)*abb175(117)
      abb175(32)=abb175(32)*abb175(46)
      abb175(47)=-spbl5k3*spak2l5*abb175(80)
      abb175(17)=abb175(38)+abb175(44)+abb175(36)+abb175(47)+abb175(32)+abb175(&
      &45)+abb175(17)+abb175(35)+abb175(31)
      abb175(17)=4.0_ki*abb175(17)
      abb175(31)=abb175(132)*abb175(124)
      abb175(31)=-abb175(31)+3.0_ki*abb175(110)
      abb175(32)=-abb175(31)*abb175(33)*spak3k4
      abb175(35)=-abb175(164)+2.0_ki*abb175(39)
      abb175(36)=-abb175(35)*abb175(95)
      abb175(32)=abb175(36)+abb175(32)
      abb175(32)=spbk7l6*abb175(32)
      abb175(36)=abb175(165)*abb175(46)
      abb175(38)=abb175(76)*abb175(124)
      abb175(38)=-abb175(38)+3.0_ki*abb175(75)
      abb175(39)=-spak3k4*abb175(38)*abb175(154)
      abb175(44)=abb175(84)*abb175(109)
      abb175(45)=abb175(83)*abb175(111)
      abb175(32)=abb175(44)+abb175(39)+abb175(32)+abb175(36)+abb175(45)
      abb175(32)=4.0_ki*abb175(32)
      abb175(31)=abb175(31)*spak2k4
      abb175(36)=abb175(102)*abb175(15)
      abb175(31)=abb175(31)-abb175(36)
      abb175(31)=abb175(31)*abb175(33)
      abb175(35)=abb175(35)*abb175(113)
      abb175(36)=-abb175(103)*abb175(115)
      abb175(31)=abb175(35)+abb175(36)+abb175(31)
      abb175(31)=spbk7l6*abb175(31)
      abb175(35)=-abb175(165)*abb175(120)
      abb175(36)=-abb175(106)*abb175(118)
      abb175(35)=abb175(35)+abb175(36)
      abb175(35)=abb175(35)*abb175(99)
      abb175(36)=abb175(38)*abb175(56)
      abb175(38)=-abb175(71)*abb175(92)
      abb175(36)=abb175(36)+abb175(38)
      abb175(36)=spbl6l5*abb175(36)
      abb175(38)=-abb175(110)*abb175(56)
      abb175(21)=abb175(21)*abb175(92)
      abb175(21)=abb175(38)+abb175(21)
      abb175(21)=abb175(21)*abb175(93)
      abb175(38)=-abb175(109)*abb175(61)
      abb175(21)=abb175(38)+abb175(36)+abb175(31)+abb175(35)+abb175(21)
      abb175(21)=4.0_ki*abb175(21)
      abb175(15)=abb175(90)*abb175(15)*abb175(82)
      abb175(31)=-abb175(149)*abb175(33)
      abb175(31)=-abb175(163)+abb175(31)
      abb175(31)=8.0_ki*abb175(31)
      abb175(33)=8.0_ki*abb175(49)
      abb175(35)=-8.0_ki*abb175(153)
      R2d175=abb175(87)
      rat2 = rat2 + R2d175
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='175' value='", &
          & R2d175, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd175h2
