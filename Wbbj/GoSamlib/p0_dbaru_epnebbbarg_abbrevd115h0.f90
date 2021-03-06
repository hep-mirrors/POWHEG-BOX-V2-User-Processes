module     p0_dbaru_epnebbbarg_abbrevd115h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(172), public :: abb115
   complex(ki), public :: R2d115
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
      abb115(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb115(2)=sqrt2**(-1)
      abb115(3)=es234**(-1)
      abb115(4)=es56**(-1)
      abb115(5)=spbl5k2**(-1)
      abb115(6)=spak2k7**(-1)
      abb115(7)=spbl6k2**(-1)
      abb115(8)=spak2l5**(-1)
      abb115(9)=spak2l6**(-1)
      abb115(10)=i_*c2
      abb115(11)=abb115(10)*abb115(6)
      abb115(12)=abb115(3)*abb115(11)
      abb115(13)=abb115(12)*mB
      abb115(14)=TR*gW
      abb115(14)=abb115(14)**2*CVDU*abb115(4)*abb115(2)*abb115(1)
      abb115(15)=abb115(14)*spbk3k2*abb115(13)
      abb115(16)=abb115(15)*abb115(7)
      abb115(17)=spak1l5*spbk7k2
      abb115(18)=abb115(17)*abb115(16)
      abb115(19)=abb115(15)*spak1l6
      abb115(20)=spbk7k2*abb115(5)
      abb115(21)=abb115(19)*abb115(20)
      abb115(22)=abb115(18)+abb115(21)
      abb115(23)=es71*spak2k4
      abb115(24)=abb115(22)*abb115(23)
      abb115(25)=abb115(16)*spak1l5
      abb115(26)=spak1l6*abb115(5)
      abb115(27)=abb115(26)*abb115(15)
      abb115(28)=abb115(25)+abb115(27)
      abb115(29)=abb115(28)*es71
      abb115(30)=spbk7k3*spak3k4
      abb115(31)=abb115(30)*abb115(29)
      abb115(31)=-abb115(24)+abb115(31)
      abb115(31)=es12*abb115(31)
      abb115(32)=abb115(15)*spak1l5
      abb115(33)=spak1k2*spbk7k2
      abb115(34)=abb115(33)*spak2k4
      abb115(35)=-abb115(32)*abb115(34)
      abb115(36)=abb115(30)*abb115(32)
      abb115(37)=spak1k2*abb115(36)
      abb115(35)=abb115(35)+abb115(37)
      abb115(35)=spal6k7*abb115(35)
      abb115(37)=-abb115(19)*abb115(34)
      abb115(38)=abb115(30)*abb115(19)
      abb115(39)=spak1k2*abb115(38)
      abb115(37)=abb115(37)+abb115(39)
      abb115(37)=spal5k7*abb115(37)
      abb115(35)=abb115(37)+abb115(35)
      abb115(35)=spbk7k1*abb115(35)
      abb115(37)=abb115(21)*abb115(23)
      abb115(39)=abb115(30)*abb115(27)
      abb115(40)=-es71*abb115(39)
      abb115(37)=abb115(37)+abb115(40)
      abb115(40)=2.0_ki*spak2l6
      abb115(37)=abb115(37)*abb115(40)
      abb115(41)=abb115(21)*spak2k4
      abb115(42)=-spak1k2*abb115(41)
      abb115(43)=spak1k2*abb115(5)
      abb115(44)=abb115(19)*abb115(43)
      abb115(45)=abb115(30)*abb115(44)
      abb115(42)=abb115(42)+abb115(45)
      abb115(42)=spal6k7*spbk7k1*abb115(42)
      abb115(37)=abb115(37)+abb115(42)
      abb115(37)=spbl6k2*abb115(37)
      abb115(42)=abb115(18)*abb115(23)
      abb115(45)=abb115(25)*abb115(30)
      abb115(46)=-es71*abb115(45)
      abb115(42)=abb115(42)+abb115(46)
      abb115(46)=2.0_ki*spak2l5
      abb115(42)=abb115(42)*abb115(46)
      abb115(34)=-abb115(25)*abb115(34)
      abb115(47)=abb115(25)*spak1k2
      abb115(48)=abb115(30)*abb115(47)
      abb115(34)=abb115(34)+abb115(48)
      abb115(34)=spal5k7*spbk7k1*abb115(34)
      abb115(34)=abb115(42)+abb115(34)
      abb115(34)=spbl5k2*abb115(34)
      abb115(42)=abb115(23)*spbk7k2
      abb115(48)=abb115(32)*abb115(42)
      abb115(49)=-es71*abb115(36)
      abb115(48)=abb115(48)+abb115(49)
      abb115(40)=abb115(48)*abb115(40)
      abb115(42)=abb115(19)*abb115(42)
      abb115(48)=-es71*abb115(38)
      abb115(42)=abb115(42)+abb115(48)
      abb115(42)=abb115(42)*abb115(46)
      abb115(31)=abb115(34)+abb115(37)+abb115(42)+abb115(40)+abb115(35)+abb115(&
      &31)
      abb115(31)=4.0_ki*abb115(31)
      abb115(34)=abb115(12)*abb115(7)
      abb115(35)=abb115(34)*mB
      abb115(37)=abb115(14)*spak1k2
      abb115(40)=abb115(35)*abb115(37)
      abb115(42)=abb115(40)*spak1l5
      abb115(46)=abb115(5)*abb115(13)
      abb115(48)=abb115(46)*abb115(37)
      abb115(49)=abb115(48)*spak1l6
      abb115(42)=abb115(42)+abb115(49)
      abb115(49)=spbk3k2**2
      abb115(42)=spbk7k1*abb115(42)*abb115(49)
      abb115(21)=-spak1k2*abb115(21)
      abb115(50)=-abb115(33)*abb115(25)
      abb115(21)=abb115(21)+abb115(50)
      abb115(21)=spbk3k1*abb115(21)
      abb115(21)=2.0_ki*abb115(21)+abb115(42)
      abb115(21)=spak3k4*abb115(21)
      abb115(50)=abb115(28)*abb115(30)
      abb115(51)=es12*abb115(50)
      abb115(52)=abb115(14)*abb115(5)
      abb115(34)=abb115(52)*abb115(34)
      abb115(53)=abb115(34)*spbk7k2
      abb115(54)=mB**3
      abb115(55)=abb115(54)*spak1k2
      abb115(56)=abb115(53)*abb115(55)
      abb115(57)=abb115(49)*spak3k4
      abb115(58)=abb115(56)*abb115(57)
      abb115(51)=-abb115(58)+abb115(51)
      abb115(59)=abb115(14)*spak1l5
      abb115(60)=abb115(46)*abb115(59)
      abb115(61)=2.0_ki*abb115(57)
      abb115(62)=abb115(61)*spbk7l5
      abb115(63)=abb115(62)*abb115(60)
      abb115(64)=abb115(14)*spak1l6
      abb115(65)=abb115(46)*abb115(64)
      abb115(66)=abb115(61)*spbk7l6
      abb115(67)=abb115(66)*abb115(65)
      abb115(63)=abb115(63)+abb115(67)
      abb115(67)=spak2k4*spbk7k2
      abb115(68)=abb115(67)*abb115(32)
      abb115(69)=abb115(63)-abb115(68)
      abb115(70)=abb115(12)*spbk7k2
      abb115(71)=abb115(37)*abb115(70)
      abb115(72)=abb115(71)*abb115(54)
      abb115(73)=abb115(5)**2
      abb115(74)=abb115(73)*abb115(72)
      abb115(75)=abb115(74)*abb115(8)
      abb115(76)=abb115(75)*abb115(57)
      abb115(77)=-abb115(76)-abb115(69)
      abb115(77)=spak2l6*abb115(77)
      abb115(78)=abb115(35)*abb115(59)
      abb115(62)=abb115(62)*abb115(78)
      abb115(79)=abb115(35)*abb115(64)
      abb115(66)=abb115(66)*abb115(79)
      abb115(62)=abb115(62)+abb115(66)
      abb115(66)=abb115(67)*abb115(19)
      abb115(67)=abb115(62)-abb115(66)
      abb115(80)=abb115(7)**2
      abb115(81)=abb115(80)*abb115(9)
      abb115(82)=abb115(81)*abb115(72)
      abb115(83)=abb115(82)*abb115(57)
      abb115(84)=-abb115(83)-abb115(67)
      abb115(84)=spak2l5*abb115(84)
      abb115(85)=abb115(22)*spak3k4
      abb115(86)=abb115(85)*spak2l6
      abb115(87)=abb115(16)*abb115(33)
      abb115(88)=spal5l6*spak3k4
      abb115(89)=abb115(88)*abb115(87)
      abb115(90)=-abb115(86)+abb115(89)
      abb115(90)=spbl6k3*abb115(90)
      abb115(91)=abb115(85)*spak2l5
      abb115(92)=abb115(20)*abb115(15)
      abb115(93)=abb115(92)*spak1k2
      abb115(94)=abb115(88)*abb115(93)
      abb115(95)=-abb115(91)-abb115(94)
      abb115(95)=spbl5k3*abb115(95)
      abb115(96)=spbl6k2*spak2l6
      abb115(97)=abb115(41)*abb115(96)
      abb115(18)=abb115(18)*spak2k4
      abb115(98)=spbl5k2*spak2l5
      abb115(99)=abb115(18)*abb115(98)
      abb115(21)=abb115(95)+abb115(90)+abb115(99)+abb115(97)+abb115(84)+abb115(&
      &77)+2.0_ki*abb115(51)+abb115(21)
      abb115(21)=8.0_ki*abb115(21)
      abb115(51)=abb115(30)*abb115(92)
      abb115(77)=abb115(15)*spak2k4
      abb115(84)=spbk7k2**2
      abb115(90)=abb115(84)*abb115(77)
      abb115(95)=abb115(90)*abb115(5)
      abb115(51)=abb115(51)-abb115(95)
      abb115(51)=abb115(51)*spak2l6
      abb115(95)=abb115(16)*spak2k4
      abb115(97)=abb115(95)*abb115(84)
      abb115(99)=abb115(30)*abb115(16)
      abb115(100)=abb115(99)*spbk7k2
      abb115(100)=abb115(97)-abb115(100)
      abb115(100)=abb115(100)*spak2l5
      abb115(51)=abb115(51)-abb115(100)
      abb115(100)=2.0_ki*spak1k7
      abb115(51)=abb115(51)*abb115(100)
      abb115(101)=abb115(87)*abb115(30)
      abb115(97)=spak1k2*abb115(97)
      abb115(97)=abb115(101)-abb115(97)
      abb115(97)=abb115(97)*spal5k7
      abb115(101)=abb115(93)*abb115(30)
      abb115(90)=abb115(90)*abb115(43)
      abb115(90)=abb115(101)-abb115(90)
      abb115(90)=abb115(90)*spal6k7
      abb115(51)=abb115(51)+abb115(97)+abb115(90)
      abb115(90)=es712*spak3k4
      abb115(97)=es71*spak3k4
      abb115(90)=abb115(90)-abb115(97)
      abb115(101)=-abb115(28)*abb115(90)
      abb115(102)=abb115(28)*spak3k4
      abb115(103)=abb115(102)*es12
      abb115(104)=abb115(101)+abb115(103)
      abb115(104)=abb115(104)*spbk7k3
      abb115(105)=es712*spak2k4
      abb115(106)=abb115(105)*abb115(22)
      abb115(24)=abb115(106)-abb115(24)
      abb115(106)=abb115(22)*spak2k4
      abb115(107)=abb115(106)*es12
      abb115(104)=-abb115(104)+abb115(107)+abb115(51)-abb115(24)
      abb115(104)=8.0_ki*abb115(104)
      abb115(108)=abb115(25)-abb115(27)
      abb115(109)=es712-es71
      abb115(110)=abb115(109)-es12
      abb115(108)=-abb115(108)*abb115(110)
      abb115(111)=abb115(108)*spak4l5
      abb115(112)=abb115(32)*abb115(5)
      abb115(113)=-abb115(112)*abb115(109)
      abb115(114)=abb115(112)*es12
      abb115(113)=abb115(113)+abb115(114)
      abb115(115)=2.0_ki*spak4l6
      abb115(116)=abb115(113)*abb115(115)
      abb115(111)=abb115(111)+abb115(116)
      abb115(111)=abb115(111)*spbk7l5
      abb115(116)=abb115(81)*spak2l5
      abb115(117)=abb115(116)*abb115(84)
      abb115(118)=abb115(20)**2
      abb115(119)=abb115(118)*spak2l6
      abb115(120)=abb115(119)*abb115(8)
      abb115(120)=abb115(120)+abb115(117)
      abb115(121)=abb115(54)*abb115(14)
      abb115(122)=abb115(121)*spbk3k2
      abb115(123)=abb115(12)*spak1k2
      abb115(124)=abb115(122)*abb115(123)
      abb115(125)=abb115(124)*abb115(120)
      abb115(126)=abb115(87)*spbk7l6
      abb115(127)=abb115(93)*spbk7l5
      abb115(126)=abb115(126)-abb115(127)
      abb115(126)=abb115(126)*spal5l6
      abb115(127)=abb115(54)*spbk3k2
      abb115(128)=abb115(34)*abb115(127)
      abb115(129)=abb115(128)*spak1k2
      abb115(130)=2.0_ki*abb115(84)
      abb115(131)=abb115(130)*abb115(129)
      abb115(125)=-abb115(126)+abb115(131)+abb115(125)
      abb115(126)=abb115(125)*spak4k7
      abb115(131)=abb115(28)*es712
      abb115(29)=abb115(29)-abb115(131)
      abb115(131)=spak1k4*spbk7k1
      abb115(132)=abb115(29)*abb115(131)
      abb115(133)=abb115(32)*spak4l6
      abb115(134)=abb115(19)*spak4l5
      abb115(133)=abb115(133)+abb115(134)
      abb115(134)=spak4l5*abb115(25)*spbl5k2
      abb115(135)=abb115(133)+abb115(134)
      abb115(136)=spbk7k1*spak1k2
      abb115(135)=abb115(136)*abb115(135)
      abb115(20)=abb115(77)*abb115(20)
      abb115(137)=abb115(20)*spbk7l5
      abb115(138)=abb115(95)*spbk7k2
      abb115(139)=abb115(138)*spbk7l6
      abb115(137)=abb115(137)-abb115(139)
      abb115(139)=abb115(100)*spal5l6
      abb115(137)=abb115(137)*abb115(139)
      abb115(140)=abb115(108)*spak4l6
      abb115(141)=-abb115(110)*abb115(16)*spak1l6
      abb115(142)=2.0_ki*spak4l5
      abb115(143)=abb115(141)*abb115(142)
      abb115(140)=abb115(140)-abb115(143)
      abb115(140)=abb115(140)*spbk7l6
      abb115(143)=abb115(44)*spbk7k1
      abb115(144)=spbl6k2*spak4l6
      abb115(145)=abb115(143)*abb115(144)
      abb115(111)=abb115(132)-abb115(140)-abb115(137)-abb115(126)+abb115(111)+a&
      &bb115(145)+abb115(135)
      abb115(126)=abb115(128)*abb115(17)
      abb115(132)=abb115(73)*spak1l6
      abb115(135)=abb115(122)*abb115(132)
      abb115(137)=abb115(135)*abb115(70)
      abb115(126)=abb115(126)+abb115(137)
      abb115(137)=abb115(8)*spak2k4
      abb115(140)=abb115(126)*abb115(137)
      abb115(145)=abb115(80)*abb115(121)
      abb115(146)=abb115(145)*spak1l5
      abb115(147)=abb115(146)*abb115(70)
      abb115(148)=abb115(147)*spbk3k2
      abb115(149)=abb115(53)*abb115(127)
      abb115(150)=abb115(149)*spak1l6
      abb115(148)=abb115(148)+abb115(150)
      abb115(150)=abb115(9)*spak2k4
      abb115(151)=abb115(150)*abb115(148)
      abb115(140)=abb115(140)+abb115(151)
      abb115(140)=abb115(140)*es12
      abb115(151)=abb115(33)*abb115(128)
      abb115(152)=abb115(151)*abb115(9)
      abb115(71)=abb115(71)*abb115(127)
      abb115(127)=abb115(73)*abb115(8)
      abb115(153)=abb115(127)*abb115(71)
      abb115(152)=abb115(152)+abb115(153)
      abb115(154)=abb115(152)*es12
      abb115(155)=-abb115(151)*abb115(109)
      abb115(156)=abb115(155)*abb115(9)
      abb115(157)=abb115(71)*abb115(73)
      abb115(158)=abb115(109)*abb115(8)
      abb115(159)=-abb115(157)*abb115(158)
      abb115(154)=abb115(154)+abb115(156)+abb115(159)
      abb115(156)=abb115(154)*abb115(115)
      abb115(160)=abb115(151)*abb115(8)
      abb115(161)=abb115(81)*abb115(71)
      abb115(160)=abb115(160)+abb115(161)
      abb115(162)=abb115(160)*es12
      abb115(163)=abb115(155)*abb115(8)
      abb115(71)=abb115(71)*abb115(80)
      abb115(164)=abb115(109)*abb115(9)
      abb115(165)=-abb115(71)*abb115(164)
      abb115(162)=abb115(165)+abb115(163)+abb115(162)
      abb115(163)=abb115(162)*abb115(142)
      abb115(117)=abb115(117)*spak2k4
      abb115(119)=abb115(119)*abb115(137)
      abb115(117)=abb115(117)+abb115(119)
      abb115(119)=abb115(117)*abb115(122)*abb115(12)
      abb115(166)=abb115(130)*spak2k4
      abb115(167)=abb115(166)*abb115(128)
      abb115(119)=abb115(167)+abb115(119)
      abb115(119)=abb115(119)*abb115(100)
      abb115(23)=abb115(105)-abb115(23)
      abb115(105)=abb115(23)*abb115(9)
      abb115(148)=abb115(148)*abb115(105)
      abb115(167)=abb115(23)*abb115(8)
      abb115(126)=abb115(126)*abb115(167)
      abb115(119)=-abb115(111)+abb115(119)-abb115(140)-abb115(156)-abb115(163)+&
      &abb115(148)+abb115(126)
      abb115(119)=8.0_ki*abb115(119)
      abb115(126)=16.0_ki*abb115(106)
      abb115(140)=abb115(87)*spak4l5
      abb115(148)=abb115(93)*spak4l6
      abb115(140)=abb115(140)+abb115(148)
      abb115(148)=16.0_ki*abb115(140)
      abb115(156)=spak4l6*abb115(154)
      abb115(163)=spak4l5*abb115(162)
      abb115(156)=abb115(156)+abb115(163)
      abb115(163)=abb115(128)*spak1l5
      abb115(135)=abb115(135)*abb115(12)
      abb115(135)=abb115(163)+abb115(135)
      abb115(163)=abb115(8)*spak3k4
      abb115(168)=abb115(135)*abb115(163)
      abb115(128)=abb115(128)*spak1l6
      abb115(169)=abb115(12)*abb115(146)*spbk3k2
      abb115(128)=abb115(128)+abb115(169)
      abb115(169)=abb115(9)*spak3k4
      abb115(170)=abb115(128)*abb115(169)
      abb115(168)=abb115(168)+abb115(170)
      abb115(168)=es12*abb115(168)
      abb115(170)=abb115(90)*abb115(8)
      abb115(135)=-abb115(135)*abb115(170)
      abb115(171)=abb115(90)*abb115(9)
      abb115(128)=-abb115(128)*abb115(171)
      abb115(128)=abb115(168)+abb115(135)+abb115(128)
      abb115(128)=spbk7k3*abb115(128)
      abb115(118)=abb115(118)*abb115(124)*abb115(137)
      abb115(135)=abb115(84)*abb115(129)*abb115(150)
      abb115(168)=-abb115(152)*abb115(30)
      abb115(118)=abb115(168)+abb115(118)+abb115(135)
      abb115(118)=spal6k7*abb115(118)
      abb115(135)=abb115(137)*abb115(129)
      abb115(168)=abb115(124)*abb115(81)
      abb115(172)=spak2k4*abb115(168)
      abb115(135)=abb115(135)+abb115(172)
      abb115(84)=abb115(84)*abb115(135)
      abb115(135)=-abb115(160)*abb115(30)
      abb115(84)=abb115(135)+abb115(84)
      abb115(84)=spal5k7*abb115(84)
      abb115(135)=abb115(127)*spak2l6
      abb115(116)=abb115(135)+abb115(116)
      abb115(122)=-abb115(116)*abb115(122)*abb115(70)
      abb115(122)=-2.0_ki*abb115(149)+abb115(122)
      abb115(122)=abb115(100)*abb115(30)*abb115(122)
      abb115(84)=abb115(84)+abb115(118)+abb115(122)+2.0_ki*abb115(156)+abb115(1&
      &28)+abb115(111)
      abb115(84)=8.0_ki*abb115(84)
      abb115(111)=abb115(160)*spak4l5
      abb115(118)=abb115(152)*spak4l6
      abb115(111)=abb115(111)+abb115(118)
      abb115(111)=16.0_ki*abb115(111)
      abb115(24)=abb115(51)+abb115(24)
      abb115(51)=2.0_ki*abb115(103)+abb115(101)
      abb115(51)=spbk7k3*abb115(51)
      abb115(118)=abb115(68)-abb115(36)
      abb115(118)=spak2l6*abb115(118)
      abb115(122)=abb115(66)-abb115(38)
      abb115(122)=spak2l5*abb115(122)
      abb115(128)=abb115(41)-abb115(39)
      abb115(128)=abb115(128)*abb115(96)
      abb115(135)=abb115(18)-abb115(45)
      abb115(135)=abb115(135)*abb115(98)
      abb115(51)=abb115(135)+abb115(128)+abb115(122)+abb115(118)+abb115(51)-2.0&
      &_ki*abb115(107)+abb115(24)
      abb115(51)=8.0_ki*abb115(51)
      abb115(118)=abb115(140)+abb115(106)
      abb115(118)=16.0_ki*abb115(118)
      abb115(36)=abb115(36)-2.0_ki*abb115(68)+3.0_ki*abb115(76)+abb115(63)
      abb115(36)=spak2l6*abb115(36)
      abb115(38)=abb115(38)-2.0_ki*abb115(66)+3.0_ki*abb115(83)+abb115(62)
      abb115(38)=spak2l5*abb115(38)
      abb115(62)=-4.0_ki*abb115(103)-abb115(101)
      abb115(62)=spbk7k3*abb115(62)
      abb115(42)=spak3k4*abb115(42)
      abb115(39)=-2.0_ki*abb115(41)+abb115(39)
      abb115(39)=abb115(39)*abb115(96)
      abb115(45)=-2.0_ki*abb115(18)+abb115(45)
      abb115(45)=abb115(45)*abb115(98)
      abb115(63)=abb115(86)+abb115(89)
      abb115(63)=spbl6k3*abb115(63)
      abb115(66)=abb115(91)-abb115(94)
      abb115(66)=spbl5k3*abb115(66)
      abb115(24)=abb115(66)+abb115(63)+abb115(45)+abb115(39)+abb115(38)+abb115(&
      &36)+abb115(42)+abb115(62)+4.0_ki*abb115(107)+6.0_ki*abb115(58)-abb115(24)
      abb115(24)=4.0_ki*abb115(24)
      abb115(36)=abb115(124)*abb115(73)*abb115(170)
      abb115(38)=abb115(90)*abb115(129)
      abb115(39)=abb115(9)*abb115(38)
      abb115(42)=-abb115(127)*abb115(124)*spak3k4
      abb115(45)=-abb115(129)*abb115(169)
      abb115(42)=abb115(42)+abb115(45)
      abb115(42)=es12*abb115(42)
      abb115(45)=abb115(15)*spak3k4
      abb115(58)=-es71*abb115(43)*abb115(45)
      abb115(36)=abb115(42)+abb115(39)+abb115(58)+abb115(36)
      abb115(36)=spbk7k3*abb115(36)
      abb115(39)=-abb115(112)*abb115(23)
      abb115(42)=spak2k4*abb115(114)
      abb115(58)=abb115(10)*mB
      abb115(62)=abb115(30)*abb115(58)*spbk3k2*abb115(3)
      abb115(63)=abb115(62)*abb115(52)
      abb115(66)=-spak1l5*abb115(63)
      abb115(39)=abb115(66)+abb115(42)+abb115(39)
      abb115(42)=2.0_ki*spbk7l5
      abb115(39)=abb115(39)*abb115(42)
      abb115(66)=abb115(45)*spbk7k3
      abb115(68)=abb115(66)*abb115(43)
      abb115(73)=abb115(20)*spak1k2
      abb115(68)=abb115(68)-abb115(73)
      abb115(76)=spal6k7*spbk7l6
      abb115(83)=spal5k7*spbk7l5
      abb115(76)=abb115(76)+abb115(83)
      abb115(83)=abb115(68)*abb115(76)
      abb115(86)=-abb115(157)*abb115(167)
      abb115(89)=abb115(23)*abb115(151)
      abb115(90)=-abb115(9)*abb115(89)
      abb115(91)=spak2k4*abb115(152)
      abb115(94)=es12*abb115(91)
      abb115(26)=-abb115(77)*abb115(26)*abb115(110)
      abb115(96)=-spak1l6*abb115(63)
      abb115(26)=abb115(96)+abb115(26)
      abb115(96)=2.0_ki*spbk7l6
      abb115(26)=abb115(26)*abb115(96)
      abb115(66)=abb115(66)*abb115(5)
      abb115(20)=abb115(66)-abb115(20)
      abb115(66)=spak2l6*spbk7l6
      abb115(98)=spak2l5*spbk7l5
      abb115(66)=abb115(66)+abb115(98)
      abb115(98)=abb115(66)*abb115(100)
      abb115(20)=abb115(20)*abb115(98)
      abb115(73)=es71*abb115(73)
      abb115(20)=abb115(20)+abb115(39)+abb115(26)+abb115(36)+abb115(94)+abb115(&
      &90)+abb115(73)+abb115(86)+abb115(83)
      abb115(20)=4.0_ki*abb115(20)
      abb115(26)=8.0_ki*abb115(68)
      abb115(36)=spbk7l6*spak4l6
      abb115(39)=spbk7l5*spak4l5
      abb115(68)=abb115(131)+abb115(36)+abb115(39)
      abb115(43)=abb115(43)*abb115(15)
      abb115(73)=abb115(68)*abb115(43)
      abb115(73)=abb115(73)-abb115(91)
      abb115(73)=8.0_ki*abb115(73)
      abb115(38)=abb115(8)*abb115(38)
      abb115(83)=abb115(145)*abb115(123)*spbk3k2*abb115(171)
      abb115(86)=-abb115(129)*abb115(163)
      abb115(90)=-spak3k4*abb115(168)
      abb115(86)=abb115(86)+abb115(90)
      abb115(86)=es12*abb115(86)
      abb115(90)=abb115(16)*spak1k2
      abb115(91)=-abb115(90)*abb115(97)
      abb115(38)=abb115(86)+abb115(83)+abb115(91)+abb115(38)
      abb115(38)=spbk7k3*abb115(38)
      abb115(30)=abb115(90)*abb115(30)
      abb115(33)=abb115(95)*abb115(33)
      abb115(30)=abb115(30)-abb115(33)
      abb115(76)=abb115(30)*abb115(76)
      abb115(83)=-abb115(8)*abb115(89)
      abb115(71)=-abb115(71)*abb115(105)
      abb115(86)=abb115(161)*spak2k4
      abb115(89)=abb115(137)*abb115(151)
      abb115(86)=abb115(86)+abb115(89)
      abb115(89)=es12*abb115(86)
      abb115(91)=-abb115(110)*abb115(95)
      abb115(94)=spak1l6*abb115(91)
      abb115(101)=abb115(62)*abb115(7)
      abb115(103)=-abb115(64)*abb115(101)
      abb115(94)=abb115(103)+abb115(94)
      abb115(94)=abb115(94)*abb115(96)
      abb115(103)=es12*spak2k4
      abb115(23)=abb115(103)-abb115(23)
      abb115(103)=abb115(25)*abb115(23)
      abb115(107)=-abb115(59)*abb115(101)
      abb115(103)=abb115(107)+abb115(103)
      abb115(103)=abb115(103)*abb115(42)
      abb115(99)=abb115(138)-abb115(99)
      abb115(98)=-abb115(99)*abb115(98)
      abb115(33)=es71*abb115(33)
      abb115(33)=abb115(98)+abb115(103)+abb115(94)+abb115(38)+abb115(89)+abb115&
      &(71)+abb115(33)+abb115(83)+abb115(76)
      abb115(33)=4.0_ki*abb115(33)
      abb115(30)=8.0_ki*abb115(30)
      abb115(38)=abb115(68)*abb115(90)
      abb115(38)=abb115(38)-abb115(86)
      abb115(38)=8.0_ki*abb115(38)
      abb115(68)=abb115(40)*spbk7l6
      abb115(71)=abb115(48)*spbk7l5
      abb115(68)=abb115(68)-abb115(71)
      abb115(68)=spal5l6*abb115(68)*spbk7k2
      abb115(71)=abb115(130)*abb115(34)*abb115(55)
      abb115(76)=abb115(120)*abb115(121)
      abb115(83)=abb115(123)*abb115(76)
      abb115(68)=abb115(68)-abb115(71)-abb115(83)
      abb115(68)=abb115(68)*spak4k7
      abb115(60)=-abb115(115)*abb115(110)*abb115(60)
      abb115(71)=abb115(65)-abb115(78)
      abb115(71)=-abb115(71)*abb115(110)
      abb115(83)=abb115(71)*spak4l5
      abb115(60)=abb115(60)-abb115(83)
      abb115(60)=abb115(60)*spbk7l5
      abb115(79)=-abb115(142)*abb115(110)*abb115(79)
      abb115(71)=abb115(71)*spak4l6
      abb115(71)=abb115(79)+abb115(71)
      abb115(71)=abb115(71)*spbk7l6
      abb115(60)=abb115(60)+abb115(71)
      abb115(71)=abb115(56)*abb115(9)
      abb115(75)=abb115(71)+abb115(75)
      abb115(79)=abb115(75)*es12
      abb115(83)=abb115(74)*abb115(158)
      abb115(86)=-abb115(56)*abb115(109)
      abb115(89)=abb115(86)*abb115(9)
      abb115(79)=-abb115(83)+abb115(79)+abb115(89)
      abb115(83)=spak4l6*abb115(79)
      abb115(72)=abb115(80)*abb115(164)*abb115(72)
      abb115(80)=abb115(56)*abb115(8)
      abb115(80)=abb115(80)+abb115(82)
      abb115(89)=abb115(80)*es12
      abb115(86)=abb115(86)*abb115(8)
      abb115(72)=-abb115(72)+abb115(89)+abb115(86)
      abb115(86)=spak4l5*abb115(72)
      abb115(83)=abb115(83)+abb115(86)
      abb115(86)=abb115(59)*spak4l6
      abb115(64)=abb115(64)*spak4l5
      abb115(64)=abb115(86)+abb115(64)
      abb115(86)=abb115(64)*abb115(123)*mB
      abb115(89)=spbk7k1*abb115(86)
      abb115(83)=abb115(68)+abb115(89)+2.0_ki*abb115(83)+abb115(60)
      abb115(83)=spbk4k2*abb115(83)
      abb115(34)=abb115(34)*abb115(54)
      abb115(17)=abb115(34)*abb115(17)
      abb115(89)=abb115(121)*abb115(132)
      abb115(94)=abb115(89)*abb115(70)
      abb115(17)=abb115(17)+abb115(94)
      abb115(94)=abb115(17)*abb115(8)
      abb115(98)=abb115(54)*spak1l6
      abb115(99)=abb115(98)*abb115(53)
      abb115(99)=abb115(99)+abb115(147)
      abb115(103)=abb115(99)*abb115(9)
      abb115(94)=abb115(94)+abb115(103)
      abb115(94)=es12*abb115(94)
      abb115(103)=-abb115(17)*abb115(158)
      abb115(107)=-abb115(99)*abb115(164)
      abb115(112)=abb115(121)*abb115(12)
      abb115(114)=-abb115(112)*abb115(120)
      abb115(120)=-abb115(34)*abb115(130)
      abb115(114)=abb115(120)+abb115(114)
      abb115(114)=abb115(114)*abb115(100)
      abb115(120)=abb115(14)*spbk7k2
      abb115(35)=abb115(35)*abb115(120)
      abb115(122)=abb115(35)*spbk7l6
      abb115(46)=abb115(46)*abb115(120)
      abb115(123)=abb115(46)*spbk7l5
      abb115(122)=abb115(122)-abb115(123)
      abb115(123)=abb115(122)*abb115(139)
      abb115(94)=abb115(123)+abb115(114)+abb115(94)+abb115(103)+abb115(107)
      abb115(94)=es34*abb115(94)
      abb115(103)=abb115(108)*spbk7l6
      abb115(42)=abb115(42)*abb115(113)
      abb115(107)=abb115(136)*abb115(32)
      abb115(42)=abb115(42)+abb115(107)-abb115(103)
      abb115(103)=2.0_ki*abb115(154)+abb115(42)
      abb115(103)=spak3l6*abb115(103)
      abb115(11)=spbk7k2*abb115(11)
      abb115(107)=abb115(11)*abb115(52)
      abb115(113)=spak1l5*abb115(7)
      abb115(114)=abb115(54)*abb115(107)*abb115(113)
      abb115(123)=abb115(89)*abb115(11)
      abb115(114)=abb115(123)+abb115(114)
      abb115(123)=-abb115(8)*abb115(114)
      abb115(124)=abb115(11)*abb115(146)
      abb115(107)=abb115(107)*abb115(7)
      abb115(98)=abb115(107)*abb115(98)
      abb115(98)=abb115(124)+abb115(98)
      abb115(124)=-abb115(9)*abb115(98)
      abb115(123)=abb115(123)+abb115(124)
      abb115(123)=es12*abb115(123)
      abb115(124)=abb115(54)*abb115(52)*abb115(130)*abb115(7)
      abb115(76)=abb115(124)+abb115(76)
      abb115(10)=abb115(100)*abb115(6)*abb115(10)*abb115(76)
      abb115(76)=spbk7l6*abb115(141)
      abb115(76)=abb115(76)+abb115(162)
      abb115(108)=abb115(108)*spbk7l5
      abb115(124)=abb115(136)*abb115(19)
      abb115(108)=abb115(124)+abb115(108)
      abb115(76)=2.0_ki*abb115(76)+abb115(108)
      abb115(76)=spak3l5*abb115(76)
      abb115(124)=spak1k3*spbk7k1
      abb115(128)=abb115(29)*abb115(124)
      abb115(125)=-spak3k7*abb115(125)
      abb115(114)=abb115(114)*abb115(158)
      abb115(98)=abb115(98)*abb115(164)
      abb115(129)=abb115(65)+abb115(78)
      abb115(130)=abb115(109)*abb115(129)
      abb115(132)=abb115(131)*spbk4k2
      abb115(135)=-abb115(130)*abb115(132)
      abb115(58)=abb115(58)*abb115(6)
      abb115(120)=abb115(58)*abb115(120)
      abb115(138)=-spbk7l6*abb115(7)*abb115(120)
      abb115(58)=abb115(58)*abb115(52)*spbk7k2
      abb115(140)=spbk7l5*abb115(58)
      abb115(138)=abb115(138)+abb115(140)
      abb115(138)=abb115(138)*abb115(139)
      abb115(140)=abb115(48)*spak4l6
      abb115(145)=spak1l6*abb115(140)*spbk7k1
      abb115(147)=spbk4k2*abb115(145)
      abb115(149)=spak3l6*abb115(143)
      abb115(147)=abb115(147)+abb115(149)
      abb115(147)=spbl6k2*abb115(147)
      abb115(149)=abb115(40)*spak4l5
      abb115(154)=spak1l5*abb115(149)*spbk7k1
      abb115(156)=spbk4k2*abb115(154)
      abb115(136)=abb115(136)*abb115(25)
      abb115(157)=spak3l5*abb115(136)
      abb115(156)=abb115(156)+abb115(157)
      abb115(156)=spbl5k2*abb115(156)
      abb115(10)=abb115(125)+abb115(128)+abb115(94)+abb115(156)+abb115(147)+abb&
      &115(76)+abb115(103)+abb115(138)+abb115(135)+abb115(10)+abb115(123)+abb11&
      &5(114)+abb115(98)+abb115(83)
      abb115(10)=4.0_ki*abb115(10)
      abb115(35)=abb115(35)*spak1l5
      abb115(46)=abb115(46)*spak1l6
      abb115(35)=abb115(35)+abb115(46)
      abb115(46)=abb115(35)*es34
      abb115(58)=abb115(58)*spak1l6
      abb115(76)=abb115(120)*abb115(113)
      abb115(46)=-abb115(76)+abb115(46)-abb115(58)
      abb115(58)=-8.0_ki*abb115(46)
      abb115(76)=abb115(140)+abb115(149)
      abb115(76)=spbk7k2*abb115(76)
      abb115(83)=abb115(76)*spbk4k2
      abb115(94)=abb115(87)*spak3l5
      abb115(98)=abb115(93)*spak3l6
      abb115(83)=abb115(83)+abb115(94)+abb115(98)
      abb115(94)=8.0_ki*abb115(83)
      abb115(98)=abb115(80)*spak4l5
      abb115(103)=abb115(75)*spak4l6
      abb115(98)=abb115(98)+abb115(103)
      abb115(103)=-spbk4k2*abb115(98)
      abb115(113)=-spak3l6*abb115(152)
      abb115(114)=-spak3l5*abb115(160)
      abb115(103)=abb115(114)+abb115(103)+abb115(113)
      abb115(103)=8.0_ki*abb115(103)
      abb115(46)=abb115(83)+abb115(46)
      abb115(46)=8.0_ki*abb115(46)
      abb115(83)=spak3l6*spbk7l6
      abb115(113)=spak3l5*spbk7l5
      abb115(83)=abb115(124)+abb115(83)+abb115(113)
      abb115(113)=abb115(43)*abb115(83)
      abb115(11)=abb115(54)*abb115(11)*abb115(37)
      abb115(37)=abb115(127)*abb115(11)
      abb115(114)=abb115(140)*spbk7l6
      abb115(39)=abb115(39)*abb115(48)
      abb115(39)=abb115(114)+abb115(39)
      abb115(114)=spbk4k2*abb115(39)
      abb115(120)=-es34*abb115(75)
      abb115(55)=abb115(107)*abb115(55)
      abb115(107)=abb115(9)*abb115(55)
      abb115(123)=abb115(48)*abb115(132)
      abb115(37)=abb115(120)+abb115(123)+abb115(114)+abb115(37)+abb115(107)+abb&
      &115(113)
      abb115(37)=4.0_ki*abb115(37)
      abb115(83)=abb115(90)*abb115(83)
      abb115(11)=abb115(81)*abb115(11)
      abb115(81)=abb115(149)*spbk7l5
      abb115(36)=abb115(36)*abb115(40)
      abb115(36)=abb115(81)+abb115(36)
      abb115(81)=spbk4k2*abb115(36)
      abb115(107)=-es34*abb115(80)
      abb115(55)=abb115(8)*abb115(55)
      abb115(113)=abb115(40)*abb115(132)
      abb115(11)=abb115(107)+abb115(113)+abb115(81)+abb115(55)+abb115(11)+abb11&
      &5(83)
      abb115(11)=4.0_ki*abb115(11)
      abb115(55)=-abb115(17)*abb115(137)
      abb115(81)=-abb115(99)*abb115(150)
      abb115(55)=abb115(55)+abb115(81)
      abb115(55)=es12*abb115(55)
      abb115(79)=-abb115(79)*abb115(115)
      abb115(72)=-abb115(72)*abb115(142)
      abb115(17)=abb115(17)*abb115(167)
      abb115(81)=abb115(99)*abb115(105)
      abb115(83)=abb115(112)*abb115(117)
      abb115(99)=abb115(34)*abb115(166)
      abb115(83)=abb115(99)+abb115(83)
      abb115(83)=abb115(100)*abb115(83)
      abb115(17)=-abb115(68)+abb115(83)+abb115(72)+abb115(79)+abb115(55)+abb115&
      &(17)+abb115(81)-abb115(60)
      abb115(17)=spbk4k3*abb115(17)
      abb115(55)=-es12*abb115(161)
      abb115(60)=-abb115(141)*abb115(96)
      abb115(55)=abb115(60)-abb115(165)+abb115(55)-abb115(108)
      abb115(55)=spak2l5*abb115(55)
      abb115(60)=-es12*abb115(153)
      abb115(42)=-abb115(159)+abb115(60)-abb115(42)
      abb115(42)=spak2l6*abb115(42)
      abb115(60)=-spbk7l6*abb115(90)
      abb115(68)=spbk7l5*abb115(43)
      abb115(60)=abb115(60)+abb115(68)
      abb115(60)=-abb115(110)*abb115(60)
      abb115(68)=-spbk4k3*abb115(100)*spak2k4*abb115(122)
      abb115(60)=abb115(68)+abb115(60)
      abb115(60)=spal5l6*abb115(60)
      abb115(68)=-es12*abb115(151)
      abb115(68)=abb115(68)-abb115(155)
      abb115(44)=abb115(44)+abb115(47)
      abb115(44)=abb115(44)*abb115(109)
      abb115(47)=-spbk4k3*abb115(86)
      abb115(44)=abb115(47)+abb115(44)
      abb115(44)=spbk7k1*abb115(44)
      abb115(47)=abb115(131)*spbk4k3
      abb115(72)=abb115(130)*abb115(47)
      abb115(79)=-spbk4k3*abb115(145)
      abb115(81)=-spak2l6*abb115(143)
      abb115(79)=abb115(79)+abb115(81)
      abb115(79)=spbl6k2*abb115(79)
      abb115(81)=-spbk4k3*abb115(154)
      abb115(83)=-spak2l5*abb115(136)
      abb115(81)=abb115(81)+abb115(83)
      abb115(81)=spbl5k2*abb115(81)
      abb115(17)=abb115(81)+abb115(79)+abb115(60)+abb115(72)+abb115(55)+abb115(&
      &42)+abb115(44)+2.0_ki*abb115(68)+abb115(17)
      abb115(17)=4.0_ki*abb115(17)
      abb115(42)=abb115(35)*spak2k4
      abb115(44)=8.0_ki*spbk4k3*abb115(42)
      abb115(55)=abb115(76)*spbk4k3
      abb115(60)=abb115(87)*spak2l5
      abb115(68)=abb115(93)*spak2l6
      abb115(60)=abb115(60)+abb115(68)
      abb115(55)=abb115(55)+abb115(60)
      abb115(55)=8.0_ki*abb115(55)
      abb115(68)=spbk4k3*abb115(98)
      abb115(72)=spak2l6*abb115(153)
      abb115(79)=spak2l5*abb115(161)
      abb115(68)=abb115(79)+abb115(72)+2.0_ki*abb115(151)+abb115(68)
      abb115(68)=8.0_ki*abb115(68)
      abb115(42)=-abb115(42)-abb115(76)
      abb115(42)=spbk4k3*abb115(42)
      abb115(42)=abb115(42)-abb115(60)
      abb115(42)=8.0_ki*abb115(42)
      abb115(60)=abb115(137)*abb115(74)
      abb115(71)=spak2k4*abb115(71)
      abb115(39)=abb115(60)+abb115(71)-abb115(39)
      abb115(39)=spbk4k3*abb115(39)
      abb115(43)=-abb115(43)*abb115(66)
      abb115(60)=spbk7k1*spak1k2**2
      abb115(15)=-abb115(5)*abb115(15)*abb115(60)
      abb115(48)=-abb115(48)*abb115(47)
      abb115(15)=abb115(48)+abb115(39)+abb115(15)+abb115(43)
      abb115(15)=4.0_ki*abb115(15)
      abb115(39)=abb115(56)*abb115(137)
      abb115(43)=spak2k4*abb115(82)
      abb115(36)=abb115(39)+abb115(43)-abb115(36)
      abb115(36)=spbk4k3*abb115(36)
      abb115(39)=-abb115(90)*abb115(66)
      abb115(43)=-abb115(16)*abb115(60)
      abb115(40)=-abb115(40)*abb115(47)
      abb115(36)=abb115(40)+abb115(36)+abb115(43)+abb115(39)
      abb115(36)=4.0_ki*abb115(36)
      abb115(12)=abb115(49)*abb115(12)
      abb115(39)=abb115(12)*abb115(146)
      abb115(40)=abb115(34)*abb115(49)
      abb115(43)=abb115(40)*spak1l6
      abb115(39)=abb115(43)+abb115(39)
      abb115(43)=abb115(39)*abb115(169)
      abb115(12)=abb115(12)*abb115(89)
      abb115(40)=abb115(40)*spak1l5
      abb115(12)=abb115(40)+abb115(12)
      abb115(40)=abb115(12)*abb115(163)
      abb115(40)=abb115(43)+abb115(40)
      abb115(43)=es12*abb115(40)
      abb115(47)=abb115(57)*abb115(116)
      abb115(48)=-abb115(47)*abb115(121)*abb115(70)
      abb115(53)=-abb115(54)*abb115(53)*abb115(61)
      abb115(48)=abb115(53)+abb115(48)
      abb115(48)=abb115(48)*abb115(100)
      abb115(50)=-abb115(106)-2.0_ki*abb115(50)
      abb115(50)=spak1k7*abb115(50)
      abb115(53)=abb115(32)*spak1l6
      abb115(53)=4.0_ki*abb115(53)
      abb115(54)=spak2k4*abb115(53)
      abb115(50)=abb115(54)+abb115(50)
      abb115(50)=spbk2k1*abb115(50)
      abb115(54)=-abb115(61)*abb115(75)
      abb115(54)=abb115(54)-abb115(69)
      abb115(54)=spal6k7*abb115(54)
      abb115(56)=-abb115(61)*abb115(80)
      abb115(56)=abb115(56)-abb115(67)
      abb115(56)=spal5k7*abb115(56)
      abb115(57)=spak1l5**2
      abb115(57)=2.0_ki*abb115(57)
      abb115(60)=-spbl5k2*abb115(16)*abb115(57)
      abb115(53)=abb115(60)-abb115(53)
      abb115(53)=spak3k4*abb115(53)
      abb115(60)=spak1k7*abb115(85)
      abb115(45)=abb115(45)*abb115(5)
      abb115(66)=spak1l6**2
      abb115(66)=2.0_ki*abb115(66)
      abb115(67)=-spbl6k2*abb115(45)*abb115(66)
      abb115(53)=abb115(67)+3.0_ki*abb115(60)+abb115(53)
      abb115(53)=spbk3k1*abb115(53)
      abb115(49)=abb115(49)*abb115(129)
      abb115(60)=abb115(49)*abb115(97)
      abb115(12)=-abb115(12)*abb115(170)
      abb115(39)=-abb115(39)*abb115(171)
      abb115(67)=abb115(77)*abb115(5)
      abb115(66)=spbk2k1*abb115(67)*abb115(66)
      abb115(41)=spal6k7*abb115(41)
      abb115(41)=abb115(66)+abb115(41)
      abb115(41)=spbl6k2*abb115(41)
      abb115(57)=spbk2k1*abb115(95)*abb115(57)
      abb115(18)=spal5k7*abb115(18)
      abb115(18)=abb115(57)+abb115(18)
      abb115(18)=spbl5k2*abb115(18)
      abb115(57)=-spal6k7*abb115(85)
      abb115(66)=abb115(139)*spak3k4
      abb115(69)=-spbk7k2*abb115(16)*abb115(66)
      abb115(57)=abb115(69)+abb115(57)
      abb115(57)=spbl6k3*abb115(57)
      abb115(69)=-spal5k7*abb115(85)
      abb115(66)=abb115(92)*abb115(66)
      abb115(66)=abb115(66)+abb115(69)
      abb115(66)=spbl5k3*abb115(66)
      abb115(12)=abb115(53)+abb115(66)+abb115(57)+abb115(18)+abb115(41)+abb115(&
      &56)+abb115(54)+abb115(50)+abb115(48)+abb115(43)+abb115(39)+2.0_ki*abb115&
      &(60)+abb115(12)
      abb115(12)=4.0_ki*abb115(12)
      abb115(18)=abb115(49)*spak3k4
      abb115(39)=8.0_ki*abb115(18)
      abb115(41)=abb115(144)*abb115(27)
      abb115(41)=abb115(41)+abb115(134)
      abb115(43)=abb115(22)*spak4k7
      abb115(48)=spbk2k1*spak1k4
      abb115(49)=abb115(48)*abb115(28)
      abb115(41)=abb115(49)-abb115(43)+3.0_ki*abb115(41)+3.0_ki*abb115(133)
      abb115(43)=8.0_ki*abb115(41)
      abb115(40)=abb115(40)+abb115(41)
      abb115(40)=8.0_ki*abb115(40)
      abb115(18)=-32.0_ki*abb115(18)
      abb115(35)=abb115(35)*spak4k7
      abb115(41)=abb115(48)*abb115(129)
      abb115(13)=abb115(64)*abb115(13)
      abb115(13)=abb115(41)-abb115(35)+3.0_ki*abb115(13)
      abb115(35)=spbk4k2*abb115(13)
      abb115(41)=abb115(65)*spak4l6
      abb115(48)=spbk4k2*abb115(41)
      abb115(49)=spak3l6*abb115(27)
      abb115(48)=abb115(48)+abb115(49)
      abb115(49)=3.0_ki*spbl6k2
      abb115(48)=abb115(48)*abb115(49)
      abb115(50)=abb115(25)*spak3l5
      abb115(53)=abb115(78)*spak4l5
      abb115(54)=spbk4k2*abb115(53)
      abb115(50)=abb115(54)+abb115(50)
      abb115(54)=3.0_ki*spbl5k2
      abb115(50)=abb115(50)*abb115(54)
      abb115(56)=spak1k3*spbk2k1*abb115(28)
      abb115(22)=-spak3k7*abb115(22)
      abb115(32)=3.0_ki*abb115(32)
      abb115(57)=spak3l6*abb115(32)
      abb115(19)=3.0_ki*abb115(19)
      abb115(60)=spak3l5*abb115(19)
      abb115(22)=abb115(22)+abb115(56)+abb115(50)+abb115(48)+abb115(60)+abb115(&
      &57)+abb115(35)
      abb115(22)=4.0_ki*abb115(22)
      abb115(13)=-spbk4k3*abb115(13)
      abb115(35)=-spbk4k3*abb115(41)
      abb115(27)=-spak2l6*abb115(27)
      abb115(27)=abb115(35)+abb115(27)
      abb115(27)=abb115(27)*abb115(49)
      abb115(25)=abb115(25)*spak2l5
      abb115(35)=-spbk4k3*abb115(53)
      abb115(25)=abb115(35)-abb115(25)
      abb115(25)=abb115(25)*abb115(54)
      abb115(32)=-spak2l6*abb115(32)
      abb115(19)=-spak2l5*abb115(19)
      abb115(13)=abb115(25)+abb115(27)+abb115(19)+abb115(32)+abb115(29)+abb115(&
      &13)
      abb115(13)=4.0_ki*abb115(13)
      abb115(19)=-abb115(28)*abb115(23)
      abb115(23)=abb115(59)*abb115(7)
      abb115(25)=spak1l6*abb115(52)
      abb115(23)=abb115(25)+abb115(23)
      abb115(23)=abb115(23)*abb115(62)
      abb115(19)=abb115(23)+abb115(19)
      abb115(23)=8.0_ki*spbk2k1
      abb115(19)=abb115(19)*abb115(23)
      abb115(25)=-abb115(67)*abb115(110)
      abb115(25)=-abb115(63)+abb115(25)
      abb115(25)=8.0_ki*abb115(25)
      abb115(14)=-abb115(14)*abb115(101)
      abb115(14)=abb115(14)+abb115(91)
      abb115(14)=8.0_ki*abb115(14)
      abb115(23)=-abb115(102)*abb115(23)
      abb115(27)=-abb115(112)*abb115(47)
      abb115(28)=spbk3k1*abb115(102)
      abb115(29)=-abb115(61)*abb115(34)
      abb115(16)=-spbl6k3*abb115(16)*abb115(88)
      abb115(32)=spbl5k3*spal5l6*abb115(45)
      abb115(16)=abb115(28)+abb115(32)+abb115(16)+abb115(29)+abb115(27)
      abb115(16)=8.0_ki*abb115(16)
      R2d115=0.0_ki
      rat2 = rat2 + R2d115
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='115' value='", &
          & R2d115, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd115h0
