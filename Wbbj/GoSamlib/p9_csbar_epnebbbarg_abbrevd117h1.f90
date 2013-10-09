module     p9_csbar_epnebbbarg_abbrevd117h1
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(176), public :: abb117
   complex(ki), public :: R2d117
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p9_csbar_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_color, only: TR
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb117(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb117(2)=es234**(-1)
      abb117(3)=es56**(-1)
      abb117(4)=spak2l5**(-1)
      abb117(5)=spbl5k2**(-1)
      abb117(6)=spak2l6**(-1)
      abb117(7)=spbl6k2**(-1)
      abb117(8)=NC**(-1)
      abb117(9)=TR*gW
      abb117(10)=abb117(9)*mB
      abb117(10)=abb117(10)**2
      abb117(11)=i_*CVSC*abb117(2)*abb117(1)
      abb117(12)=abb117(11)*spak2k4
      abb117(13)=abb117(3)*abb117(12)
      abb117(14)=abb117(10)*abb117(13)
      abb117(15)=abb117(14)*abb117(4)*abb117(7)
      abb117(16)=abb117(15)*spbk3k2
      abb117(17)=abb117(16)*c4
      abb117(18)=abb117(16)*c2
      abb117(19)=abb117(17)-abb117(18)
      abb117(20)=abb117(19)*spbe7k1
      abb117(21)=NC*c1
      abb117(22)=abb117(21)*spbe7k1
      abb117(23)=abb117(22)*abb117(16)
      abb117(20)=abb117(20)-abb117(23)
      abb117(24)=abb117(20)*spak1e7
      abb117(25)=abb117(24)*spak2l6
      abb117(15)=abb117(15)*spbk4k3
      abb117(26)=abb117(15)*c4
      abb117(27)=abb117(15)*c2
      abb117(28)=abb117(26)-abb117(27)
      abb117(29)=abb117(28)*spbe7k1
      abb117(30)=abb117(22)*abb117(15)
      abb117(29)=abb117(29)-abb117(30)
      abb117(31)=abb117(29)*spak1e7
      abb117(32)=abb117(31)*spak4l6
      abb117(25)=abb117(25)+abb117(32)
      abb117(32)=es712-es12
      abb117(33)=abb117(32)-es71
      abb117(34)=abb117(25)*abb117(33)
      abb117(9)=abb117(9)**2
      abb117(13)=abb117(13)*abb117(9)
      abb117(35)=spbk4k3*abb117(13)
      abb117(36)=abb117(35)*c2
      abb117(37)=abb117(35)*c4
      abb117(38)=abb117(36)-abb117(37)
      abb117(39)=abb117(35)*abb117(21)
      abb117(40)=abb117(38)+abb117(39)
      abb117(41)=abb117(40)*spak4l6
      abb117(13)=spbk3k2*abb117(13)
      abb117(42)=abb117(13)*c2
      abb117(43)=abb117(13)*c4
      abb117(44)=abb117(42)-abb117(43)
      abb117(45)=abb117(13)*abb117(21)
      abb117(46)=abb117(44)+abb117(45)
      abb117(47)=abb117(46)*spak2l6
      abb117(41)=abb117(41)+abb117(47)
      abb117(47)=spbe7l5*abb117(41)
      abb117(48)=abb117(47)*spal6e7
      abb117(49)=-es71*abb117(48)
      abb117(44)=abb117(44)*spbe7k1
      abb117(50)=abb117(22)*abb117(13)
      abb117(44)=abb117(44)+abb117(50)
      abb117(51)=abb117(44)*spak1e7
      abb117(52)=spbk7l5*spak2l6
      abb117(53)=-abb117(52)*abb117(51)
      abb117(38)=abb117(38)*spbe7k1
      abb117(54)=abb117(22)*abb117(35)
      abb117(38)=abb117(38)+abb117(54)
      abb117(55)=abb117(38)*spak4l6
      abb117(56)=abb117(55)*spak1e7
      abb117(57)=-spbk7l5*abb117(56)
      abb117(53)=abb117(53)+abb117(57)
      abb117(53)=spal6k7*abb117(53)
      abb117(34)=abb117(53)+2.0_ki*abb117(49)+abb117(34)
      abb117(34)=spbl6k1*abb117(34)
      abb117(49)=spbl5k1*abb117(41)
      abb117(53)=spak2k4**2
      abb117(10)=abb117(53)*abb117(10)
      abb117(57)=spbk4k3*abb117(3)
      abb117(58)=abb117(57)*abb117(10)
      abb117(59)=abb117(11)*abb117(7)
      abb117(60)=abb117(58)*abb117(59)
      abb117(61)=abb117(60)*abb117(4)
      abb117(62)=abb117(61)*c4
      abb117(63)=abb117(61)*c2
      abb117(64)=abb117(62)-abb117(63)
      abb117(65)=abb117(61)*abb117(21)
      abb117(66)=abb117(65)-abb117(64)
      abb117(67)=abb117(66)*spbk2k1
      abb117(68)=abb117(49)+abb117(67)
      abb117(69)=spbe7l6*spal6e7
      abb117(70)=abb117(69)*abb117(68)
      abb117(71)=spbe7l5*abb117(68)
      abb117(72)=spal5e7*abb117(71)
      abb117(70)=abb117(70)+abb117(72)
      abb117(70)=4.0_ki*abb117(70)
      abb117(70)=es71*abb117(70)
      abb117(72)=c2-c4
      abb117(73)=-spbe7k1*abb117(72)
      abb117(73)=abb117(73)-abb117(22)
      abb117(12)=abb117(9)*abb117(12)
      abb117(74)=abb117(12)*spbk3k2
      abb117(75)=spak2l6*spbl5k1
      abb117(76)=2.0_ki*abb117(75)
      abb117(73)=abb117(76)*abb117(74)*abb117(73)
      abb117(77)=abb117(14)*spbk3k2
      abb117(78)=abb117(77)*abb117(7)
      abb117(79)=abb117(78)*c4
      abb117(80)=abb117(78)*c2
      abb117(81)=abb117(79)-abb117(80)
      abb117(82)=abb117(81)*spbe7k1
      abb117(83)=abb117(78)*abb117(22)
      abb117(82)=abb117(83)-abb117(82)
      abb117(83)=es71*spbl5k1*abb117(82)
      abb117(84)=c4*abb117(4)
      abb117(85)=c2*abb117(4)
      abb117(86)=abb117(84)-abb117(85)
      abb117(87)=spbe7k1*abb117(86)
      abb117(88)=-abb117(4)*abb117(22)
      abb117(87)=abb117(87)+abb117(88)
      abb117(10)=spbk4k3*abb117(59)*abb117(10)
      abb117(88)=2.0_ki*spbk2k1
      abb117(87)=abb117(88)*abb117(10)*abb117(87)
      abb117(73)=abb117(87)+abb117(73)+abb117(83)
      abb117(73)=spak1e7*abb117(73)
      abb117(83)=spal6e7*spbe7l5
      abb117(87)=abb117(83)*abb117(46)
      abb117(89)=2.0_ki*es71
      abb117(90)=abb117(89)*abb117(87)
      abb117(91)=es712-es71
      abb117(92)=abb117(91)-es12
      abb117(93)=abb117(24)*abb117(92)
      abb117(94)=spal6k7*spbk7l5
      abb117(95)=abb117(44)*abb117(94)
      abb117(96)=-spak1e7*abb117(95)
      abb117(93)=abb117(96)+abb117(90)+abb117(93)
      abb117(96)=spak2k7*spbk7k1
      abb117(93)=abb117(93)*abb117(96)
      abb117(97)=abb117(83)*abb117(40)
      abb117(98)=abb117(89)*abb117(97)
      abb117(99)=abb117(31)*abb117(92)
      abb117(100)=abb117(38)*abb117(94)
      abb117(101)=-spak1e7*abb117(100)
      abb117(99)=abb117(101)+abb117(98)+abb117(99)
      abb117(101)=spak4k7*spbk7k1
      abb117(99)=abb117(99)*abb117(101)
      abb117(102)=abb117(20)*spak2e7
      abb117(103)=abb117(29)*spak4e7
      abb117(104)=abb117(102)+abb117(103)
      abb117(105)=4.0_ki*es71
      abb117(106)=abb117(105)*abb117(104)
      abb117(107)=spak1e7*spbl5k1
      abb117(82)=abb117(82)*abb117(107)
      abb117(108)=abb117(106)-abb117(82)
      abb117(108)=abb117(108)*abb117(32)
      abb117(109)=es71**2
      abb117(110)=-abb117(20)*abb117(109)
      abb117(111)=-es71*abb117(95)
      abb117(110)=abb117(110)+abb117(111)
      abb117(111)=4.0_ki*spak2e7
      abb117(110)=abb117(110)*abb117(111)
      abb117(112)=abb117(72)+abb117(21)
      abb117(9)=abb117(57)*abb117(53)*mB**4*abb117(9)*abb117(112)
      abb117(53)=-abb117(59)*abb117(4)**2*abb117(9)
      abb117(57)=-spbe7k1*abb117(53)
      abb117(59)=abb117(57)*abb117(92)
      abb117(11)=abb117(11)*abb117(4)
      abb117(58)=abb117(58)*abb117(11)
      abb117(113)=abb117(58)*abb117(22)
      abb117(114)=abb117(72)*abb117(58)
      abb117(115)=abb117(114)*spbe7k1
      abb117(113)=abb117(113)+abb117(115)
      abb117(115)=abb117(113)*abb117(94)
      abb117(59)=abb117(115)+abb117(59)
      abb117(115)=spak1e7*spbk2k1
      abb117(59)=abb117(115)*abb117(59)
      abb117(58)=abb117(58)*abb117(21)
      abb117(58)=abb117(58)+abb117(114)
      abb117(114)=abb117(83)*spbk2k1
      abb117(89)=abb117(89)*abb117(114)
      abb117(116)=abb117(58)*abb117(89)
      abb117(59)=abb117(116)+abb117(59)
      abb117(59)=abb117(5)*abb117(59)
      abb117(9)=-abb117(7)**2*abb117(11)*abb117(9)
      abb117(11)=-spbe7k1*abb117(9)
      abb117(116)=abb117(11)*abb117(92)
      abb117(117)=abb117(60)*c4
      abb117(118)=abb117(60)*c2
      abb117(119)=abb117(117)-abb117(118)
      abb117(120)=abb117(119)*spbe7k1
      abb117(121)=abb117(60)*abb117(22)
      abb117(120)=abb117(121)-abb117(120)
      abb117(121)=abb117(120)*abb117(94)
      abb117(116)=abb117(121)+abb117(116)
      abb117(116)=abb117(115)*abb117(116)
      abb117(121)=abb117(60)*abb117(21)
      abb117(119)=abb117(121)-abb117(119)
      abb117(89)=abb117(119)*abb117(89)
      abb117(89)=abb117(89)+abb117(116)
      abb117(89)=abb117(6)*abb117(89)
      abb117(116)=abb117(92)*abb117(29)
      abb117(116)=abb117(116)-abb117(100)
      abb117(122)=abb117(107)*abb117(116)
      abb117(98)=-spbl5k1*abb117(98)
      abb117(98)=abb117(98)+abb117(122)
      abb117(98)=spak4l5*abb117(98)
      abb117(90)=-spbl5k1*abb117(90)
      abb117(122)=-abb117(107)*abb117(95)
      abb117(90)=abb117(90)+abb117(122)
      abb117(90)=spak2l5*abb117(90)
      abb117(64)=abb117(64)*spbe7k1
      abb117(122)=abb117(61)*abb117(22)
      abb117(64)=abb117(122)-abb117(64)
      abb117(64)=abb117(64)*spbk2k1
      abb117(122)=abb117(75)*abb117(44)
      abb117(64)=abb117(64)+abb117(122)
      abb117(64)=abb117(64)*spak1e7
      abb117(55)=abb117(55)*abb117(107)
      abb117(55)=abb117(64)+abb117(55)
      abb117(64)=2.0_ki*abb117(55)
      abb117(122)=es567*abb117(64)
      abb117(12)=abb117(12)*spbk4k3
      abb117(72)=-abb117(12)*abb117(72)
      abb117(123)=spbe7k1*abb117(72)
      abb117(124)=-abb117(22)*abb117(12)
      abb117(123)=abb117(123)+abb117(124)
      abb117(124)=2.0_ki*spak4l6
      abb117(125)=abb117(124)*abb117(107)
      abb117(123)=abb117(123)*abb117(125)
      abb117(109)=abb117(109)*abb117(103)
      abb117(100)=abb117(100)*spak4e7
      abb117(105)=-abb117(105)*abb117(100)
      abb117(34)=abb117(122)+abb117(90)+abb117(98)+abb117(89)+abb117(99)+abb117&
      &(34)+abb117(93)+abb117(59)+abb117(110)+abb117(105)-4.0_ki*abb117(109)+ab&
      &b117(73)+abb117(123)+abb117(108)+abb117(70)
      abb117(59)=abb117(58)*abb117(5)
      abb117(70)=abb117(119)*abb117(6)
      abb117(73)=abb117(59)+abb117(70)
      abb117(89)=abb117(73)*spbk2k1
      abb117(90)=abb117(96)*abb117(46)
      abb117(93)=abb117(40)*abb117(101)
      abb117(93)=abb117(93)+abb117(90)+abb117(89)
      abb117(93)=spbl5k1*abb117(93)
      abb117(98)=abb117(40)*spak4l5
      abb117(99)=abb117(46)*spak2l5
      abb117(98)=abb117(98)+abb117(99)
      abb117(105)=spbl5k1**2
      abb117(108)=-abb117(105)*abb117(98)
      abb117(49)=2.0_ki*abb117(67)+abb117(49)
      abb117(49)=spbl6k1*abb117(49)
      abb117(49)=abb117(49)+abb117(93)+abb117(108)
      abb117(49)=spak1l6*abb117(49)
      abb117(12)=abb117(12)*abb117(21)
      abb117(12)=abb117(12)-abb117(72)
      abb117(12)=abb117(12)*abb117(124)
      abb117(72)=abb117(99)*abb117(94)
      abb117(12)=abb117(12)+abb117(72)
      abb117(72)=abb117(15)*abb117(21)
      abb117(28)=abb117(72)-abb117(28)
      abb117(93)=abb117(28)*abb117(91)
      abb117(108)=abb117(94)*abb117(40)
      abb117(93)=abb117(108)+abb117(93)
      abb117(108)=abb117(28)*es12
      abb117(109)=3.0_ki*abb117(108)-abb117(93)
      abb117(109)=spak4l5*abb117(109)
      abb117(110)=abb117(78)*abb117(21)
      abb117(81)=abb117(81)-abb117(110)
      abb117(122)=-7.0_ki*es12+abb117(91)
      abb117(122)=abb117(81)*abb117(122)
      abb117(109)=abb117(109)+abb117(122)-abb117(12)
      abb117(109)=spbl5k1*abb117(109)
      abb117(122)=abb117(77)*abb117(4)
      abb117(123)=abb117(122)*abb117(21)
      abb117(126)=abb117(84)*abb117(77)
      abb117(123)=abb117(123)-abb117(126)
      abb117(77)=abb117(85)*abb117(77)
      abb117(127)=abb117(123)+abb117(77)
      abb117(75)=abb117(127)*abb117(75)
      abb117(14)=abb117(14)*spbk4k3
      abb117(84)=abb117(84)*abb117(14)
      abb117(85)=abb117(85)*abb117(14)
      abb117(84)=abb117(84)-abb117(85)
      abb117(128)=abb117(14)*abb117(4)
      abb117(129)=abb117(128)*abb117(21)
      abb117(129)=abb117(129)-abb117(84)
      abb117(130)=abb117(129)*spak4l6
      abb117(131)=spbl5k1*abb117(130)
      abb117(75)=abb117(75)+abb117(131)
      abb117(131)=abb117(53)*spbk2k1
      abb117(75)=-abb117(131)+4.0_ki*abb117(75)
      abb117(75)=es12*abb117(75)
      abb117(132)=-abb117(131)*abb117(91)
      abb117(133)=abb117(58)*abb117(94)
      abb117(134)=spbk2k1*abb117(133)
      abb117(75)=abb117(75)+abb117(134)+abb117(132)
      abb117(75)=abb117(5)*abb117(75)
      abb117(132)=abb117(16)*abb117(21)
      abb117(19)=abb117(132)-abb117(19)
      abb117(134)=abb117(19)*spak2l6
      abb117(135)=abb117(28)*spak4l6
      abb117(134)=abb117(134)+abb117(135)
      abb117(136)=3.0_ki*es12-abb117(91)
      abb117(136)=abb117(134)*abb117(136)
      abb117(137)=spbk7l5*abb117(41)
      abb117(138)=abb117(137)*spal6k7
      abb117(136)=-abb117(138)+abb117(136)
      abb117(136)=spbl6k1*abb117(136)
      abb117(139)=abb117(9)*spbk2k1
      abb117(140)=-abb117(139)*abb117(91)
      abb117(14)=abb117(14)*abb117(7)
      abb117(141)=abb117(14)*abb117(21)
      abb117(142)=abb117(14)*c4
      abb117(141)=abb117(141)-abb117(142)
      abb117(143)=abb117(14)*c2
      abb117(144)=abb117(141)+abb117(143)
      abb117(145)=spak4l6*abb117(144)*spbl5k1
      abb117(145)=-abb117(139)+4.0_ki*abb117(145)
      abb117(145)=es12*abb117(145)
      abb117(119)=abb117(119)*abb117(94)
      abb117(146)=spbk2k1*abb117(119)
      abb117(140)=abb117(145)+abb117(146)+abb117(140)
      abb117(140)=abb117(6)*abb117(140)
      abb117(145)=abb117(94)*abb117(46)
      abb117(146)=-es12-abb117(91)
      abb117(19)=abb117(19)*abb117(146)
      abb117(19)=-abb117(145)+abb117(19)
      abb117(19)=abb117(19)*abb117(96)
      abb117(146)=-abb117(108)-abb117(93)
      abb117(146)=abb117(146)*abb117(101)
      abb117(147)=2.0_ki*abb117(68)
      abb117(148)=es567*abb117(147)
      abb117(105)=abb117(105)*abb117(41)
      abb117(67)=spbl5k1*abb117(67)
      abb117(67)=abb117(67)+abb117(105)
      abb117(67)=spak1l5*abb117(67)
      abb117(74)=abb117(112)*abb117(74)
      abb117(105)=-abb117(74)*abb117(76)
      abb117(21)=abb117(21)*abb117(4)
      abb117(21)=abb117(21)-abb117(86)
      abb117(10)=abb117(21)*abb117(10)
      abb117(21)=-abb117(10)*abb117(88)
      abb117(19)=4.0_ki*abb117(67)+abb117(148)+2.0_ki*abb117(49)+abb117(140)+ab&
      &b117(146)+abb117(136)+abb117(19)+abb117(75)+abb117(21)+abb117(105)+abb11&
      &7(109)
      abb117(19)=2.0_ki*abb117(19)
      abb117(21)=2.0_ki*spal5e7
      abb117(49)=abb117(71)*abb117(21)
      abb117(67)=abb117(147)*abb117(69)
      abb117(71)=abb117(48)*spbl6k1
      abb117(70)=abb117(70)*abb117(114)
      abb117(75)=spak4l5*spbl5k1
      abb117(86)=abb117(75)*abb117(97)
      abb117(88)=abb117(87)*spak2l5
      abb117(105)=abb117(88)*spbl5k1
      abb117(49)=-abb117(67)+abb117(86)-abb117(70)-abb117(49)+abb117(71)+abb117&
      &(105)
      abb117(59)=abb117(59)*abb117(114)
      abb117(59)=abb117(59)-abb117(49)
      abb117(67)=-abb117(104)*abb117(32)
      abb117(67)=abb117(67)+abb117(100)
      abb117(70)=abb117(20)*es71
      abb117(70)=abb117(70)+abb117(95)
      abb117(71)=abb117(70)*spak2e7
      abb117(86)=abb117(103)*es71
      abb117(71)=-abb117(86)-abb117(71)-abb117(67)
      abb117(86)=-abb117(87)*abb117(96)
      abb117(95)=-abb117(97)*abb117(101)
      abb117(86)=abb117(95)+abb117(86)-2.0_ki*abb117(71)-abb117(59)
      abb117(86)=4.0_ki*abb117(86)
      abb117(55)=4.0_ki*abb117(55)
      abb117(95)=8.0_ki*abb117(68)
      abb117(57)=-spbk2k1*abb117(57)
      abb117(100)=abb117(126)-abb117(77)
      abb117(100)=spbe7k1*abb117(100)
      abb117(105)=-abb117(22)*abb117(122)
      abb117(100)=abb117(100)+abb117(105)
      abb117(76)=abb117(100)*abb117(76)
      abb117(57)=abb117(76)+abb117(57)
      abb117(57)=spak1e7*abb117(57)
      abb117(76)=spbe7k1*abb117(84)
      abb117(84)=-abb117(22)*abb117(128)
      abb117(76)=abb117(76)+abb117(84)
      abb117(76)=abb117(76)*abb117(125)
      abb117(57)=abb117(57)+abb117(76)
      abb117(57)=abb117(5)*abb117(57)
      abb117(25)=spbl6k1*abb117(25)
      abb117(11)=-abb117(11)*abb117(115)
      abb117(76)=abb117(142)-abb117(143)
      abb117(76)=spbe7k1*abb117(76)
      abb117(22)=-abb117(22)*abb117(14)
      abb117(22)=abb117(76)+abb117(22)
      abb117(22)=abb117(22)*abb117(125)
      abb117(11)=abb117(11)+abb117(22)
      abb117(11)=abb117(6)*abb117(11)
      abb117(22)=abb117(80)*spbe7k1
      abb117(76)=abb117(8)*c4
      abb117(84)=abb117(76)-c1
      abb117(100)=-spbe7k1*abb117(84)
      abb117(105)=abb117(100)*abb117(8)
      abb117(109)=abb117(78)*abb117(105)
      abb117(22)=abb117(22)-abb117(109)
      abb117(109)=spbk7l5*abb117(22)
      abb117(112)=spbe7k1*abb117(77)
      abb117(125)=-abb117(122)*abb117(105)
      abb117(112)=abb117(112)+abb117(125)
      abb117(125)=abb117(52)*abb117(5)
      abb117(112)=abb117(112)*abb117(125)
      abb117(109)=abb117(109)+abb117(112)
      abb117(112)=4.0_ki*spae7k7
      abb117(109)=abb117(109)*abb117(112)
      abb117(126)=3.0_ki*abb117(96)
      abb117(24)=-abb117(24)*abb117(126)
      abb117(136)=3.0_ki*abb117(101)
      abb117(31)=-abb117(31)*abb117(136)
      abb117(140)=spak4l5*abb117(29)*abb117(107)
      abb117(11)=abb117(109)+abb117(140)+abb117(11)+abb117(31)+abb117(25)+abb11&
      &7(24)+abb117(57)-3.0_ki*abb117(82)-abb117(106)
      abb117(11)=2.0_ki*abb117(11)
      abb117(24)=3.0_ki*abb117(77)+abb117(123)
      abb117(24)=spbl5k1*abb117(24)
      abb117(25)=abb117(76)*spbl5k1
      abb117(31)=-spbl5k1*c1
      abb117(31)=abb117(31)+abb117(25)
      abb117(57)=2.0_ki*abb117(8)
      abb117(31)=abb117(57)*abb117(122)*abb117(31)
      abb117(24)=abb117(24)+abb117(31)
      abb117(31)=2.0_ki*spak2l6
      abb117(24)=abb117(24)*abb117(31)
      abb117(82)=spbl5k1*abb117(129)*abb117(124)
      abb117(24)=abb117(82)+abb117(24)-abb117(131)
      abb117(24)=abb117(5)*abb117(24)
      abb117(82)=abb117(132)-abb117(17)
      abb117(106)=-abb117(16)*abb117(84)
      abb117(109)=4.0_ki*abb117(8)
      abb117(123)=abb117(106)*abb117(109)
      abb117(129)=-3.0_ki*abb117(18)+abb117(123)+abb117(82)
      abb117(131)=abb117(129)*abb117(96)
      abb117(132)=spbl6k1*abb117(134)
      abb117(140)=abb117(144)*abb117(124)
      abb117(142)=spbl5k1*abb117(140)
      abb117(139)=-abb117(139)+abb117(142)
      abb117(139)=abb117(6)*abb117(139)
      abb117(75)=abb117(75)+abb117(101)
      abb117(101)=abb117(28)*abb117(75)
      abb117(79)=abb117(110)-abb117(79)
      abb117(110)=7.0_ki*abb117(80)+3.0_ki*abb117(79)
      abb117(110)=spbl5k1*abb117(110)
      abb117(142)=abb117(78)*c1
      abb117(144)=-spbl5k1*abb117(142)
      abb117(146)=abb117(78)*abb117(25)
      abb117(144)=abb117(144)+abb117(146)
      abb117(144)=abb117(144)*abb117(109)
      abb117(24)=abb117(139)+abb117(132)+abb117(131)+abb117(24)+abb117(110)+abb&
      &117(144)+abb117(101)
      abb117(24)=4.0_ki*abb117(24)
      abb117(16)=-abb117(16)*abb117(105)
      abb117(17)=spbe7k1*abb117(17)
      abb117(17)=abb117(16)+abb117(17)-abb117(23)
      abb117(17)=spak2e7*abb117(17)
      abb117(17)=abb117(103)+abb117(17)
      abb117(17)=16.0_ki*abb117(17)
      abb117(23)=abb117(136)*abb117(97)
      abb117(101)=-abb117(87)*abb117(126)
      abb117(59)=-abb117(23)+abb117(101)-5.0_ki*abb117(71)-abb117(59)
      abb117(59)=2.0_ki*abb117(59)
      abb117(68)=12.0_ki*abb117(68)
      abb117(71)=12.0_ki*abb117(104)
      abb117(101)=es71*abb117(29)
      abb117(103)=-spbe7l5*abb117(84)
      abb117(104)=abb117(103)*abb117(8)
      abb117(110)=-abb117(14)*abb117(104)
      abb117(131)=abb117(143)*spbe7l5
      abb117(110)=abb117(110)+abb117(131)
      abb117(131)=4.0_ki*spbk2k1
      abb117(132)=-abb117(110)*abb117(131)
      abb117(101)=5.0_ki*abb117(101)+abb117(132)
      abb117(101)=spak4e7*abb117(101)
      abb117(132)=abb117(80)*spbe7l5
      abb117(139)=-abb117(78)*abb117(103)
      abb117(144)=abb117(139)*abb117(8)
      abb117(132)=abb117(132)+abb117(144)
      abb117(131)=-abb117(132)*abb117(131)
      abb117(131)=abb117(131)+5.0_ki*abb117(70)
      abb117(131)=spak2e7*abb117(131)
      abb117(144)=abb117(35)*abb117(84)
      abb117(146)=abb117(8)*spbl5k1
      abb117(148)=-abb117(144)*abb117(146)
      abb117(149)=abb117(36)*spbl5k1
      abb117(148)=abb117(148)-abb117(149)
      abb117(149)=abb117(148)*spal6k7
      abb117(150)=-spak4e7*abb117(149)
      abb117(151)=abb117(13)*abb117(84)
      abb117(152)=-abb117(151)*abb117(146)
      abb117(153)=abb117(42)*spbl5k1
      abb117(152)=abb117(152)-abb117(153)
      abb117(153)=abb117(152)*spal6k7
      abb117(154)=-spak2e7*abb117(153)
      abb117(150)=abb117(150)+abb117(154)
      abb117(154)=4.0_ki*spbk7e7
      abb117(150)=abb117(150)*abb117(154)
      abb117(155)=-abb117(13)*abb117(103)
      abb117(156)=abb117(155)*abb117(8)
      abb117(157)=abb117(42)*spbe7l5
      abb117(158)=abb117(156)+abb117(157)
      abb117(159)=abb117(158)*spak2e7
      abb117(103)=-abb117(35)*abb117(103)
      abb117(160)=abb117(103)*abb117(8)
      abb117(161)=abb117(36)*spbe7l5
      abb117(162)=abb117(160)+abb117(161)
      abb117(163)=abb117(162)*spak4e7
      abb117(159)=abb117(159)+abb117(163)
      abb117(163)=spbk7k1*spal6k7
      abb117(164)=abb117(159)*abb117(163)
      abb117(165)=-spbe7l5*abb117(85)
      abb117(166)=abb117(128)*abb117(104)
      abb117(165)=abb117(165)+abb117(166)
      abb117(165)=spak4e7*abb117(165)
      abb117(166)=-spbe7l5*abb117(77)
      abb117(104)=abb117(122)*abb117(104)
      abb117(104)=abb117(166)+abb117(104)
      abb117(104)=abb117(104)*abb117(111)
      abb117(104)=abb117(104)+4.0_ki*abb117(165)
      abb117(165)=spbk2k1*spak2l6
      abb117(104)=abb117(165)*abb117(104)
      abb117(114)=abb117(114)*abb117(58)
      abb117(104)=-abb117(114)+abb117(104)
      abb117(104)=abb117(5)*abb117(104)
      abb117(106)=abb117(106)*abb117(8)
      abb117(114)=abb117(106)-abb117(18)
      abb117(166)=abb117(114)*spak2e7
      abb117(167)=-abb117(15)*abb117(84)
      abb117(168)=abb117(167)*abb117(8)
      abb117(169)=abb117(168)-abb117(27)
      abb117(170)=abb117(169)*spak4e7
      abb117(166)=abb117(166)+abb117(170)
      abb117(171)=abb117(154)*spbk2k1*abb117(166)
      abb117(172)=abb117(87)*spbk7k1
      abb117(171)=abb117(171)-3.0_ki*abb117(172)
      abb117(171)=spak2k7*abb117(171)
      abb117(173)=spbl6k1*spak2l6
      abb117(173)=abb117(173)+abb117(96)
      abb117(173)=abb117(170)*abb117(173)
      abb117(174)=abb117(25)*abb117(14)
      abb117(175)=abb117(14)*c1
      abb117(176)=abb117(175)*spbl5k1
      abb117(174)=abb117(174)-abb117(176)
      abb117(174)=abb117(174)*abb117(8)
      abb117(176)=abb117(143)*spbl5k1
      abb117(174)=abb117(174)+abb117(176)
      abb117(176)=-spak4e7*abb117(174)
      abb117(173)=abb117(176)+abb117(173)
      abb117(176)=4.0_ki*spbe7k2
      abb117(173)=abb117(173)*abb117(176)
      abb117(161)=-spbl5k1*abb117(161)
      abb117(103)=-abb117(103)*abb117(146)
      abb117(103)=abb117(161)+abb117(103)
      abb117(103)=spak4e7*abb117(103)
      abb117(157)=-spbl5k1*abb117(157)
      abb117(146)=-abb117(155)*abb117(146)
      abb117(146)=abb117(157)+abb117(146)
      abb117(146)=spak2e7*abb117(146)
      abb117(103)=abb117(103)+abb117(146)
      abb117(146)=4.0_ki*spal5l6
      abb117(103)=abb117(103)*abb117(146)
      abb117(23)=abb117(103)+abb117(173)+abb117(171)+abb117(104)+4.0_ki*abb117(&
      &164)+abb117(150)+abb117(131)-abb117(64)+abb117(101)-abb117(23)+abb117(49&
      &)+5.0_ki*abb117(67)
      abb117(49)=3.0_ki*abb117(26)
      abb117(64)=abb117(49)-7.0_ki*abb117(27)
      abb117(64)=spbe7k1*abb117(64)
      abb117(15)=-abb117(15)*abb117(100)
      abb117(67)=-abb117(15)*abb117(109)
      abb117(30)=abb117(67)+abb117(64)-3.0_ki*abb117(30)
      abb117(30)=spak4e7*abb117(30)
      abb117(30)=abb117(30)+3.0_ki*abb117(102)
      abb117(30)=2.0_ki*abb117(30)
      abb117(64)=abb117(78)*abb117(76)
      abb117(64)=abb117(64)-abb117(142)
      abb117(64)=abb117(64)*abb117(8)
      abb117(64)=abb117(64)+abb117(80)
      abb117(67)=-spbk7l5*abb117(64)
      abb117(78)=-abb117(84)*abb117(122)*abb117(8)
      abb117(77)=-abb117(77)+abb117(78)
      abb117(77)=abb117(77)*abb117(125)
      abb117(67)=abb117(67)+abb117(77)
      abb117(67)=spak2k7*abb117(67)
      abb117(77)=abb117(128)*abb117(76)
      abb117(78)=abb117(128)*c1
      abb117(77)=abb117(77)-abb117(78)
      abb117(77)=abb117(77)*abb117(8)
      abb117(77)=abb117(77)+abb117(85)
      abb117(77)=abb117(77)*abb117(125)
      abb117(76)=abb117(14)*abb117(76)
      abb117(76)=abb117(76)-abb117(175)
      abb117(76)=abb117(76)*abb117(8)
      abb117(101)=abb117(76)+abb117(143)
      abb117(102)=abb117(101)*spbk7l5
      abb117(77)=abb117(77)+abb117(102)
      abb117(102)=spak4k7*abb117(77)
      abb117(67)=abb117(67)-abb117(102)
      abb117(102)=-abb117(53)*abb117(92)
      abb117(102)=abb117(133)+abb117(102)
      abb117(102)=abb117(5)*abb117(102)
      abb117(103)=-abb117(9)*abb117(92)
      abb117(103)=abb117(119)+abb117(103)
      abb117(103)=abb117(6)*abb117(103)
      abb117(10)=abb117(103)-2.0_ki*abb117(10)+abb117(102)+4.0_ki*abb117(67)
      abb117(10)=spbe7k2*abb117(10)
      abb117(67)=spak1k4*abb117(116)
      abb117(102)=-abb117(20)*abb117(32)
      abb117(70)=abb117(70)+abb117(102)
      abb117(70)=spak1k2*abb117(70)
      abb117(67)=abb117(67)-abb117(70)
      abb117(70)=abb117(93)-abb117(108)
      abb117(93)=-spak4l5*abb117(70)
      abb117(31)=-abb117(74)*abb117(31)
      abb117(12)=abb117(93)+abb117(31)-abb117(12)
      abb117(12)=spbe7l5*abb117(12)
      abb117(31)=abb117(129)*abb117(92)
      abb117(74)=abb117(45)-abb117(43)
      abb117(93)=3.0_ki*abb117(42)
      abb117(102)=abb117(151)*abb117(109)
      abb117(103)=-abb117(102)-abb117(93)+abb117(74)
      abb117(103)=abb117(103)*abb117(94)
      abb117(31)=abb117(103)+abb117(31)
      abb117(103)=spak2k7*spbk7e7
      abb117(31)=abb117(31)*abb117(103)
      abb117(26)=abb117(72)-abb117(26)
      abb117(104)=abb117(167)*abb117(109)
      abb117(108)=-abb117(26)-abb117(104)+3.0_ki*abb117(27)
      abb117(108)=-abb117(108)*abb117(92)
      abb117(116)=abb117(39)-abb117(37)
      abb117(119)=3.0_ki*abb117(36)
      abb117(122)=abb117(144)*abb117(109)
      abb117(131)=-abb117(122)-abb117(119)+abb117(116)
      abb117(131)=abb117(131)*abb117(94)
      abb117(108)=abb117(131)+abb117(108)
      abb117(131)=spak4k7*spbk7e7
      abb117(108)=abb117(108)*abb117(131)
      abb117(133)=abb117(129)*spak2l6
      abb117(133)=abb117(133)+abb117(135)
      abb117(33)=-abb117(133)*abb117(33)
      abb117(33)=-abb117(138)+abb117(33)
      abb117(33)=spbe7l6*abb117(33)
      abb117(133)=spbe7l6*spak2l6*abb117(169)
      abb117(133)=-abb117(110)+abb117(133)
      abb117(135)=spbk7k2*spak4k7
      abb117(133)=abb117(133)*abb117(135)
      abb117(138)=-spak2k7*abb117(158)
      abb117(142)=-spak4k7*abb117(162)
      abb117(138)=abb117(138)+abb117(142)
      abb117(138)=abb117(146)*spbk7l5*abb117(138)
      abb117(142)=abb117(66)*spbe7k2
      abb117(142)=abb117(142)+abb117(47)
      abb117(146)=2.0_ki*es567
      abb117(146)=abb117(142)*abb117(146)
      abb117(79)=3.0_ki*abb117(80)-abb117(79)
      abb117(79)=abb117(79)*spbe7l5
      abb117(80)=abb117(139)*abb117(109)
      abb117(79)=abb117(79)+abb117(80)
      abb117(79)=abb117(79)*abb117(92)
      abb117(10)=abb117(146)+abb117(138)+4.0_ki*abb117(133)+abb117(10)+abb117(3&
      &3)+abb117(108)+abb117(31)+abb117(79)+abb117(12)-3.0_ki*abb117(67)
      abb117(12)=-spak2l6*abb117(158)
      abb117(31)=-spak4l6*abb117(162)
      abb117(33)=-abb117(8)*abb117(61)*abb117(84)
      abb117(61)=abb117(33)-abb117(63)
      abb117(67)=spbe7k2*abb117(61)
      abb117(12)=abb117(67)+abb117(12)+abb117(31)
      abb117(12)=8.0_ki*abb117(12)
      abb117(31)=4.0_ki*abb117(142)
      abb117(67)=abb117(127)*spak2l6
      abb117(67)=abb117(67)+abb117(130)
      abb117(79)=-abb117(5)*abb117(67)
      abb117(80)=3.0_ki*abb117(81)
      abb117(81)=-abb117(6)*abb117(140)
      abb117(108)=-spak4l5*abb117(28)
      abb117(79)=2.0_ki*abb117(79)+abb117(108)+abb117(81)+abb117(80)
      abb117(79)=spbe7l5*abb117(79)
      abb117(49)=-abb117(104)-3.0_ki*abb117(72)+abb117(49)+abb117(27)
      abb117(49)=abb117(49)*abb117(131)
      abb117(53)=abb117(5)*abb117(53)
      abb117(9)=abb117(6)*abb117(9)
      abb117(9)=abb117(53)+abb117(9)
      abb117(9)=spbe7k2*abb117(9)
      abb117(53)=-abb117(123)+abb117(18)-3.0_ki*abb117(82)
      abb117(53)=abb117(53)*abb117(103)
      abb117(72)=-spbe7l6*abb117(134)
      abb117(29)=spak1k4*abb117(29)
      abb117(20)=spak1k2*abb117(20)
      abb117(9)=abb117(20)+abb117(29)+abb117(9)+abb117(72)+abb117(49)+abb117(53&
      &)+abb117(79)
      abb117(9)=2.0_ki*abb117(9)
      abb117(20)=abb117(65)-abb117(62)
      abb117(29)=2.0_ki*abb117(33)-3.0_ki*abb117(63)-abb117(20)
      abb117(29)=spbe7k2*abb117(29)
      abb117(49)=-abb117(93)-abb117(74)
      abb117(49)=spbe7l5*abb117(49)
      abb117(49)=abb117(49)-2.0_ki*abb117(156)
      abb117(49)=spak2l6*abb117(49)
      abb117(53)=-abb117(119)-abb117(116)
      abb117(53)=spbe7l5*abb117(53)
      abb117(53)=abb117(53)-2.0_ki*abb117(160)
      abb117(53)=spak4l6*abb117(53)
      abb117(29)=abb117(29)+abb117(49)+abb117(53)
      abb117(29)=2.0_ki*abb117(29)
      abb117(49)=abb117(82)-abb117(106)+2.0_ki*abb117(18)
      abb117(53)=abb117(49)*spak2e7
      abb117(62)=-abb117(168)+abb117(26)+2.0_ki*abb117(27)
      abb117(62)=abb117(62)*spak4e7
      abb117(53)=abb117(53)+abb117(62)
      abb117(32)=abb117(53)*abb117(32)
      abb117(49)=-es71*abb117(49)
      abb117(65)=abb117(151)*abb117(8)
      abb117(72)=2.0_ki*abb117(42)+abb117(65)+abb117(74)
      abb117(79)=abb117(72)*abb117(94)
      abb117(49)=abb117(49)+abb117(79)
      abb117(49)=spak2e7*abb117(49)
      abb117(62)=-es71*abb117(62)
      abb117(79)=abb117(144)*abb117(8)
      abb117(81)=2.0_ki*abb117(36)+abb117(79)+abb117(116)
      abb117(81)=abb117(81)*spak4e7
      abb117(93)=abb117(94)*abb117(81)
      abb117(32)=abb117(49)+abb117(62)+abb117(93)+abb117(32)
      abb117(32)=spbk7e7*abb117(32)
      abb117(49)=-abb117(137)*abb117(69)
      abb117(62)=spbe7k2*spak4e7*abb117(77)
      abb117(32)=abb117(62)+abb117(32)+abb117(49)
      abb117(49)=-spak2l6*abb117(166)
      abb117(62)=-spal6e7*abb117(66)
      abb117(49)=abb117(62)+abb117(49)
      abb117(49)=spbe7l6*abb117(49)
      abb117(62)=spak4e7*abb117(110)
      abb117(69)=spak2e7*abb117(132)
      abb117(49)=abb117(49)+abb117(62)+abb117(69)
      abb117(62)=-abb117(83)*abb117(73)
      abb117(49)=abb117(62)+2.0_ki*abb117(49)
      abb117(49)=spbk7k2*abb117(49)
      abb117(62)=spal5l6*abb117(159)
      abb117(62)=2.0_ki*abb117(62)+abb117(88)
      abb117(62)=spbk7l5*abb117(62)
      abb117(47)=-spbk7l5*abb117(47)
      abb117(66)=-spbk7k2*spbe7l5*abb117(66)
      abb117(47)=abb117(66)+abb117(47)
      abb117(21)=abb117(47)*abb117(21)
      abb117(47)=spbk7l6*abb117(48)
      abb117(48)=spak4l5*spbk7l5
      abb117(66)=-spak1k4*spbk7k1
      abb117(48)=abb117(66)+abb117(48)
      abb117(48)=abb117(97)*abb117(48)
      abb117(66)=-spak1k2*abb117(172)
      abb117(21)=abb117(47)+abb117(66)+abb117(21)+abb117(49)+2.0_ki*abb117(32)+&
      &abb117(48)+abb117(62)
      abb117(21)=2.0_ki*abb117(21)
      abb117(32)=abb117(65)+abb117(42)
      abb117(47)=abb117(32)*abb117(52)
      abb117(48)=abb117(79)+abb117(36)
      abb117(49)=spak4l6*spbk7l5*abb117(48)
      abb117(52)=-spbk7k2*abb117(61)
      abb117(47)=abb117(52)+abb117(47)+abb117(49)
      abb117(47)=16.0_ki*abb117(47)
      abb117(49)=-8.0_ki*spbk7e7*abb117(53)
      abb117(52)=spak4l5*abb117(38)
      abb117(53)=spak2l5*abb117(44)
      abb117(52)=abb117(53)+abb117(52)
      abb117(52)=abb117(107)*abb117(52)
      abb117(53)=-abb117(5)*abb117(113)
      abb117(61)=-abb117(6)*abb117(120)
      abb117(53)=abb117(61)+abb117(53)
      abb117(53)=abb117(115)*abb117(53)
      abb117(61)=abb117(44)*spak2e7
      abb117(62)=abb117(38)*spak4e7
      abb117(61)=abb117(61)+abb117(62)
      abb117(62)=-es71*abb117(61)
      abb117(66)=spak2l6*abb117(51)
      abb117(56)=abb117(66)+abb117(56)
      abb117(56)=spbl6k1*abb117(56)
      abb117(51)=-abb117(51)*abb117(126)
      abb117(66)=-spak1e7*abb117(38)*abb117(136)
      abb117(51)=abb117(66)+abb117(56)+abb117(51)+4.0_ki*abb117(62)+abb117(53)+&
      &abb117(52)
      abb117(52)=-spbl6k1*abb117(41)
      abb117(53)=-abb117(40)*abb117(75)
      abb117(56)=-spbl5k1*abb117(99)
      abb117(52)=abb117(56)+abb117(52)-abb117(90)+abb117(53)+abb117(89)
      abb117(52)=2.0_ki*abb117(52)
      abb117(53)=8.0_ki*abb117(61)
      abb117(56)=6.0_ki*abb117(61)
      abb117(37)=3.0_ki*abb117(37)
      abb117(61)=-abb117(37)+7.0_ki*abb117(36)
      abb117(61)=spbe7k1*abb117(61)
      abb117(35)=-abb117(35)*abb117(100)
      abb117(62)=abb117(35)*abb117(109)
      abb117(54)=abb117(62)+abb117(61)+3.0_ki*abb117(54)
      abb117(54)=spak4e7*abb117(54)
      abb117(43)=3.0_ki*abb117(43)
      abb117(61)=-abb117(43)+7.0_ki*abb117(42)
      abb117(61)=spbe7k1*abb117(61)
      abb117(13)=-abb117(13)*abb117(100)
      abb117(62)=abb117(13)*abb117(109)
      abb117(50)=abb117(62)+abb117(61)+3.0_ki*abb117(50)
      abb117(50)=spak2e7*abb117(50)
      abb117(50)=abb117(54)+abb117(50)
      abb117(43)=-abb117(102)+3.0_ki*abb117(45)-abb117(43)-abb117(42)
      abb117(43)=abb117(43)*abb117(103)
      abb117(37)=-abb117(122)+3.0_ki*abb117(39)-abb117(37)-abb117(36)
      abb117(37)=abb117(37)*abb117(131)
      abb117(39)=spbe7l5*abb117(98)
      abb117(45)=spbe7l6*abb117(41)
      abb117(54)=-spbe7k2*abb117(73)
      abb117(38)=spak1k4*abb117(38)
      abb117(44)=spak1k2*abb117(44)
      abb117(37)=abb117(44)+abb117(38)+abb117(54)+abb117(45)+abb117(43)+abb117(&
      &37)+abb117(39)
      abb117(38)=spak2e7*abb117(72)
      abb117(38)=abb117(81)+abb117(38)
      abb117(38)=abb117(38)*abb117(154)
      abb117(39)=-abb117(102)-5.0_ki*abb117(42)-abb117(74)
      abb117(39)=spak2k7*abb117(39)
      abb117(43)=-abb117(122)-5.0_ki*abb117(36)-abb117(116)
      abb117(43)=spak4k7*abb117(43)
      abb117(39)=abb117(43)+abb117(39)
      abb117(39)=spbk7l5*abb117(39)
      abb117(43)=-abb117(57)*abb117(60)*abb117(84)
      abb117(43)=abb117(43)+abb117(121)-abb117(117)-abb117(118)
      abb117(43)=spbl5k2*abb117(6)*abb117(43)
      abb117(41)=spbl6l5*abb117(41)
      abb117(41)=abb117(58)+abb117(41)
      abb117(40)=spak1k4*abb117(40)
      abb117(44)=spak1k2*abb117(46)
      abb117(40)=abb117(44)+abb117(40)
      abb117(40)=spbl5k1*abb117(40)
      abb117(39)=abb117(43)+abb117(39)+abb117(40)+3.0_ki*abb117(41)
      abb117(39)=4.0_ki*abb117(39)
      abb117(40)=8.0_ki*abb117(159)
      abb117(41)=4.0_ki*abb117(159)
      abb117(20)=-abb117(33)+2.0_ki*abb117(63)+abb117(20)
      abb117(20)=8.0_ki*spbl5k2*abb117(20)
      abb117(15)=abb117(15)*abb117(8)
      abb117(33)=abb117(27)*spbe7k1
      abb117(15)=abb117(15)+abb117(33)
      abb117(33)=-abb117(15)*abb117(92)
      abb117(36)=abb117(36)*spbe7k1
      abb117(35)=abb117(35)*abb117(8)
      abb117(35)=abb117(36)+abb117(35)
      abb117(36)=-abb117(35)*abb117(94)
      abb117(33)=abb117(36)+abb117(33)
      abb117(33)=abb117(33)*abb117(112)
      abb117(36)=spak2k7*spbk2k1
      abb117(43)=-abb117(169)*abb117(36)
      abb117(43)=abb117(149)+abb117(43)
      abb117(43)=8.0_ki*abb117(43)
      abb117(44)=8.0_ki*abb117(15)
      abb117(45)=spae7k7*abb117(44)
      abb117(46)=-abb117(35)*abb117(112)
      abb117(54)=spak2l6*abb117(112)*spbk7k2
      abb117(57)=abb117(15)*abb117(54)
      abb117(58)=8.0_ki*abb117(165)
      abb117(60)=-abb117(169)*abb117(58)
      abb117(61)=abb117(143)*spbe7k1
      abb117(14)=abb117(14)*abb117(105)
      abb117(14)=abb117(61)-abb117(14)
      abb117(61)=spbk7k2*abb117(14)
      abb117(62)=spal5l6*spbk7l5
      abb117(63)=abb117(35)*abb117(62)
      abb117(61)=abb117(61)+abb117(63)
      abb117(61)=abb117(61)*abb117(112)
      abb117(63)=spbk2k1*abb117(101)
      abb117(48)=abb117(48)*abb117(163)
      abb117(66)=-spal5l6*abb117(148)
      abb117(48)=abb117(66)+abb117(63)+abb117(48)
      abb117(48)=8.0_ki*abb117(48)
      abb117(35)=abb117(35)*spal6e7
      abb117(63)=-8.0_ki*abb117(35)
      abb117(35)=-4.0_ki*abb117(35)
      abb117(14)=spbk7l5*abb117(14)
      abb117(66)=spbe7k1*abb117(85)
      abb117(69)=-abb117(128)*abb117(105)
      abb117(66)=abb117(66)+abb117(69)
      abb117(66)=abb117(66)*abb117(125)
      abb117(14)=abb117(14)+abb117(66)
      abb117(14)=abb117(14)*abb117(112)
      abb117(66)=-spbl5k1*abb117(78)
      abb117(25)=abb117(128)*abb117(25)
      abb117(25)=abb117(66)+abb117(25)
      abb117(25)=abb117(8)*abb117(25)
      abb117(66)=spbl5k1*abb117(85)
      abb117(25)=abb117(66)+abb117(25)
      abb117(25)=abb117(5)*spak2l6*abb117(25)
      abb117(66)=abb117(169)*abb117(96)
      abb117(25)=abb117(66)+abb117(25)+abb117(174)
      abb117(25)=8.0_ki*abb117(25)
      abb117(44)=spak2e7*abb117(44)
      abb117(15)=abb117(15)*abb117(111)
      abb117(66)=8.0_ki*abb117(70)
      abb117(69)=-abb117(168)-abb117(26)
      abb117(69)=16.0_ki*abb117(69)
      abb117(70)=-2.0_ki*abb117(97)
      abb117(72)=-abb117(79)+abb117(116)
      abb117(72)=8.0_ki*abb117(72)
      abb117(73)=abb117(18)*spbe7k1
      abb117(16)=abb117(73)+abb117(16)
      abb117(73)=-abb117(16)*abb117(92)
      abb117(42)=abb117(42)*spbe7k1
      abb117(13)=abb117(13)*abb117(8)
      abb117(13)=abb117(42)+abb117(13)
      abb117(42)=-abb117(13)*abb117(94)
      abb117(42)=abb117(42)+abb117(73)
      abb117(42)=abb117(42)*abb117(112)
      abb117(36)=-abb117(114)*abb117(36)
      abb117(36)=abb117(153)+abb117(36)
      abb117(36)=8.0_ki*abb117(36)
      abb117(73)=8.0_ki*spae7k7
      abb117(73)=abb117(16)*abb117(73)
      abb117(75)=-abb117(13)*abb117(112)
      abb117(16)=abb117(16)*abb117(54)
      abb117(54)=-abb117(114)*abb117(58)
      abb117(22)=spbk7k2*abb117(22)
      abb117(58)=abb117(13)*abb117(62)
      abb117(22)=abb117(22)+abb117(58)
      abb117(22)=abb117(22)*abb117(112)
      abb117(58)=spbk2k1*abb117(64)
      abb117(32)=abb117(32)*abb117(163)
      abb117(62)=-spal5l6*abb117(152)
      abb117(32)=abb117(62)+abb117(58)+abb117(32)
      abb117(32)=8.0_ki*abb117(32)
      abb117(13)=abb117(13)*spal6e7
      abb117(58)=-8.0_ki*abb117(13)
      abb117(13)=-4.0_ki*abb117(13)
      abb117(62)=-abb117(76)-2.0_ki*abb117(143)-abb117(141)
      abb117(62)=abb117(6)*abb117(62)*abb117(124)
      abb117(64)=-2.0_ki*abb117(168)+abb117(27)-abb117(26)
      abb117(64)=spak4l5*abb117(64)
      abb117(62)=abb117(64)+abb117(80)+abb117(62)
      abb117(62)=spbl5k2*abb117(62)
      abb117(18)=-2.0_ki*abb117(106)+abb117(18)-abb117(82)
      abb117(18)=es12*abb117(18)
      abb117(18)=abb117(145)+abb117(18)
      abb117(64)=abb117(129)*abb117(91)
      abb117(26)=-abb117(104)+5.0_ki*abb117(27)+abb117(26)
      abb117(26)=abb117(26)*abb117(135)
      abb117(27)=-spak1k4*spbk2k1*abb117(28)
      abb117(18)=abb117(62)+abb117(27)+abb117(26)+abb117(64)-3.0_ki*abb117(67)+&
      &2.0_ki*abb117(18)
      abb117(18)=4.0_ki*abb117(18)
      abb117(26)=abb117(170)*spbe7k2
      abb117(27)=8.0_ki*abb117(26)
      abb117(28)=-abb117(106)-abb117(82)
      abb117(28)=16.0_ki*abb117(28)
      abb117(62)=-2.0_ki*abb117(87)
      abb117(26)=-abb117(87)+4.0_ki*abb117(26)
      abb117(64)=-abb117(65)+abb117(74)
      abb117(64)=8.0_ki*abb117(64)
      R2d117=0.0_ki
      rat2 = rat2 + R2d117
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='117' value='", &
          & R2d117, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd117h1
