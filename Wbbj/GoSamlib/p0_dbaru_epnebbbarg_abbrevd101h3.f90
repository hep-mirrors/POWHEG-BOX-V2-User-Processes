module     p0_dbaru_epnebbbarg_abbrevd101h3
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(185), public :: abb101
   complex(ki), public :: R2d101
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
      abb101(1)=1.0_ki/(-mB**2+es67)
      abb101(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb101(3)=NC**(-1)
      abb101(4)=es234**(-1)
      abb101(5)=spak2l6**(-1)
      abb101(6)=spak2l5**(-1)
      abb101(7)=spbl6k2**(-1)
      abb101(8)=sqrt(mB**2)
      abb101(9)=abb101(3)**2
      abb101(10)=abb101(9)*c2
      abb101(11)=spbk3k2*abb101(4)
      abb101(12)=abb101(10)*abb101(11)
      abb101(13)=TR*gW
      abb101(13)=abb101(13)**2*i_*CVDU*abb101(2)*abb101(1)
      abb101(14)=abb101(13)*spbe7l6
      abb101(15)=abb101(12)*abb101(14)
      abb101(16)=abb101(11)*c3
      abb101(17)=abb101(14)*abb101(16)
      abb101(18)=abb101(17)*NC
      abb101(19)=abb101(15)+abb101(18)
      abb101(20)=abb101(5)**2
      abb101(21)=mB**3
      abb101(22)=abb101(20)*abb101(21)
      abb101(23)=abb101(22)*spak2k4
      abb101(24)=abb101(23)*spak2e7
      abb101(25)=abb101(24)*abb101(19)
      abb101(26)=2.0_ki*abb101(3)
      abb101(27)=abb101(26)*spak2e7
      abb101(28)=abb101(27)*abb101(17)
      abb101(29)=abb101(28)*abb101(23)
      abb101(25)=abb101(25)-abb101(29)
      abb101(29)=spak1l6*abb101(7)
      abb101(25)=abb101(25)*abb101(29)
      abb101(30)=abb101(17)*abb101(26)
      abb101(30)=abb101(30)-abb101(18)
      abb101(31)=-spak2k4*abb101(30)
      abb101(32)=mB**2
      abb101(33)=abb101(32)*abb101(5)
      abb101(34)=abb101(33)*abb101(31)
      abb101(35)=abb101(14)*abb101(33)
      abb101(36)=abb101(35)*abb101(12)
      abb101(37)=abb101(36)*spak2k4
      abb101(34)=abb101(37)+abb101(34)
      abb101(37)=spak1e7*abb101(8)
      abb101(38)=abb101(37)*abb101(7)
      abb101(34)=abb101(34)*abb101(38)
      abb101(39)=spak2e7*NC
      abb101(39)=abb101(39)-abb101(27)
      abb101(40)=abb101(16)*abb101(13)
      abb101(39)=abb101(39)*abb101(22)*abb101(40)
      abb101(41)=abb101(22)*spak2e7
      abb101(42)=abb101(13)*abb101(41)
      abb101(43)=abb101(42)*abb101(12)
      abb101(39)=abb101(43)+abb101(39)
      abb101(43)=spbk7e7*spak1k7
      abb101(44)=abb101(43)*abb101(7)
      abb101(45)=abb101(44)*spak2k4
      abb101(46)=-abb101(39)*abb101(45)
      abb101(25)=abb101(46)+abb101(25)-abb101(34)
      abb101(34)=spbl5k2*abb101(25)
      abb101(46)=abb101(26)*abb101(16)
      abb101(47)=abb101(16)*NC
      abb101(48)=abb101(46)-abb101(47)
      abb101(49)=spak2e7*abb101(5)
      abb101(50)=abb101(49)*abb101(21)
      abb101(51)=abb101(14)*abb101(6)
      abb101(52)=abb101(51)*spak2k4
      abb101(53)=abb101(50)*abb101(52)
      abb101(54)=-abb101(53)*abb101(48)
      abb101(55)=abb101(52)*abb101(12)
      abb101(56)=abb101(50)*abb101(55)
      abb101(54)=abb101(56)+abb101(54)
      abb101(56)=spak1k7*abb101(7)
      abb101(57)=abb101(56)*abb101(54)
      abb101(58)=abb101(57)*spbk7k2
      abb101(59)=c3*abb101(4)
      abb101(60)=abb101(27)*abb101(59)
      abb101(61)=abb101(10)*spak2e7
      abb101(62)=abb101(61)*abb101(4)
      abb101(60)=abb101(60)-abb101(62)
      abb101(63)=spbk3k2**2
      abb101(64)=abb101(60)*abb101(63)*abb101(20)
      abb101(65)=abb101(59)*NC
      abb101(66)=abb101(63)*abb101(65)
      abb101(67)=abb101(20)*spak2e7
      abb101(68)=abb101(66)*abb101(67)
      abb101(64)=abb101(64)-abb101(68)
      abb101(68)=spak1k2*spak3k4
      abb101(69)=-abb101(68)*abb101(7)**2*abb101(64)*abb101(51)*mB**5
      abb101(70)=abb101(12)*mB
      abb101(71)=abb101(16)*mB
      abb101(72)=abb101(71)*NC
      abb101(73)=abb101(72)+abb101(70)
      abb101(74)=abb101(71)*abb101(26)
      abb101(74)=-abb101(74)+abb101(73)
      abb101(74)=abb101(52)*abb101(74)
      abb101(75)=abb101(74)*spak1e7
      abb101(76)=abb101(8)**2
      abb101(77)=abb101(75)*abb101(76)
      abb101(58)=abb101(58)+abb101(69)-abb101(77)
      abb101(69)=abb101(32)*abb101(49)
      abb101(77)=abb101(52)*abb101(69)
      abb101(78)=-abb101(77)*abb101(48)
      abb101(79)=abb101(69)*abb101(55)
      abb101(78)=abb101(79)+abb101(78)
      abb101(78)=abb101(78)*abb101(8)
      abb101(78)=abb101(78)+abb101(54)
      abb101(78)=abb101(78)*spak1l6
      abb101(79)=abb101(12)+abb101(47)
      abb101(80)=abb101(79)-abb101(46)
      abb101(81)=abb101(13)*abb101(5)
      abb101(82)=abb101(81)*spak2e7
      abb101(83)=abb101(32)*abb101(82)
      abb101(84)=spak2k4*abb101(6)
      abb101(85)=abb101(83)*abb101(84)
      abb101(86)=abb101(85)*abb101(80)
      abb101(87)=abb101(43)*abb101(8)
      abb101(88)=abb101(87)*abb101(86)
      abb101(78)=abb101(78)-abb101(88)
      abb101(33)=-abb101(33)*abb101(30)
      abb101(33)=abb101(36)+abb101(33)
      abb101(33)=abb101(33)*abb101(37)
      abb101(88)=abb101(39)*abb101(43)
      abb101(33)=abb101(88)+abb101(33)
      abb101(88)=spak3k4*abb101(7)
      abb101(33)=abb101(88)*abb101(33)
      abb101(89)=-abb101(41)*abb101(19)
      abb101(90)=abb101(22)*abb101(27)
      abb101(91)=abb101(17)*abb101(90)
      abb101(89)=abb101(91)+abb101(89)
      abb101(91)=abb101(88)*spak1l6
      abb101(89)=abb101(89)*abb101(91)
      abb101(33)=abb101(89)+abb101(33)
      abb101(33)=spbl5k3*abb101(33)
      abb101(89)=-abb101(12)+abb101(48)
      abb101(92)=abb101(21)*abb101(51)
      abb101(93)=abb101(92)*abb101(49)
      abb101(89)=abb101(89)*abb101(93)
      abb101(94)=spbk7k3*spak1k7
      abb101(95)=abb101(88)*abb101(94)
      abb101(96)=spbl6k3*abb101(91)
      abb101(95)=abb101(95)+abb101(96)
      abb101(95)=abb101(89)*abb101(95)
      abb101(33)=abb101(33)+abb101(95)+abb101(34)+abb101(78)+abb101(58)
      abb101(33)=es12*abb101(33)
      abb101(34)=abb101(59)*abb101(26)
      abb101(95)=abb101(10)*abb101(4)
      abb101(96)=abb101(95)-abb101(34)
      abb101(97)=-abb101(63)*abb101(96)
      abb101(97)=abb101(97)-abb101(66)
      abb101(98)=spak1k2**2
      abb101(99)=abb101(98)*abb101(88)
      abb101(100)=abb101(51)*abb101(5)
      abb101(101)=abb101(100)*abb101(21)
      abb101(102)=abb101(99)*abb101(97)*abb101(101)
      abb101(103)=-spal6e7*abb101(102)
      abb101(104)=abb101(82)*abb101(73)
      abb101(105)=abb101(82)*abb101(26)
      abb101(106)=abb101(71)*abb101(105)
      abb101(104)=abb101(104)-abb101(106)
      abb101(106)=-spak2k4*abb101(104)
      abb101(107)=abb101(106)*abb101(43)
      abb101(108)=abb101(15)*spak2k4
      abb101(31)=abb101(108)+abb101(31)
      abb101(108)=abb101(31)*abb101(37)
      abb101(107)=abb101(107)-abb101(108)
      abb101(108)=spak1l6*abb101(107)
      abb101(109)=abb101(14)*mB
      abb101(110)=abb101(49)*abb101(109)
      abb101(111)=abb101(110)*abb101(80)
      abb101(112)=-spak2k4*abb101(111)
      abb101(113)=spak1l6**2
      abb101(114)=-abb101(112)*abb101(113)
      abb101(108)=abb101(114)+abb101(108)
      abb101(108)=spbl5k2*abb101(108)
      abb101(114)=abb101(104)*abb101(43)
      abb101(15)=-abb101(15)+abb101(30)
      abb101(30)=abb101(15)*abb101(37)
      abb101(114)=abb101(114)-abb101(30)
      abb101(115)=spak1l6*spak3k4
      abb101(116)=abb101(115)*abb101(114)
      abb101(113)=-spak3k4*abb101(111)*abb101(113)
      abb101(113)=abb101(113)+abb101(116)
      abb101(113)=spbl5k3*abb101(113)
      abb101(73)=-abb101(51)*abb101(73)
      abb101(116)=abb101(51)*abb101(26)
      abb101(117)=abb101(116)*abb101(71)
      abb101(73)=abb101(117)+abb101(73)
      abb101(117)=abb101(73)*abb101(68)
      abb101(118)=spbl6k3*spal6e7
      abb101(119)=spak1l6*abb101(118)
      abb101(120)=spal6e7*spak1k7
      abb101(121)=spbk7k3*abb101(120)
      abb101(119)=abb101(121)+abb101(119)
      abb101(119)=abb101(117)*abb101(119)
      abb101(121)=abb101(74)*spal6e7
      abb101(122)=abb101(121)*spak1k7
      abb101(123)=spbk7k2*spak1k2
      abb101(124)=abb101(122)*abb101(123)
      abb101(125)=abb101(121)*spbl6k2
      abb101(126)=abb101(125)*spak1l6
      abb101(127)=spak1k2*abb101(126)
      abb101(103)=abb101(113)+abb101(127)+abb101(124)+abb101(103)+abb101(108)+a&
      &bb101(119)
      abb101(103)=spbl6k1*abb101(103)
      abb101(108)=abb101(111)*spak1l6
      abb101(108)=abb101(114)-abb101(108)
      abb101(113)=-spak3k4*abb101(108)
      abb101(114)=abb101(113)*spbl5k3
      abb101(119)=abb101(112)*spak1l6
      abb101(107)=abb101(119)-abb101(107)
      abb101(119)=abb101(107)*spbl5k2
      abb101(124)=abb101(74)*spae7k7
      abb101(127)=abb101(123)*abb101(124)
      abb101(114)=abb101(119)+abb101(127)+abb101(114)
      abb101(119)=spbk7k3*spae7k7
      abb101(127)=abb101(117)*abb101(119)
      abb101(127)=abb101(127)+abb101(114)
      abb101(127)=es71*abb101(127)
      abb101(128)=abb101(6)*mB**4
      abb101(129)=abb101(13)*abb101(128)
      abb101(64)=-abb101(8)*abb101(99)*abb101(129)*abb101(64)
      abb101(86)=abb101(86)*abb101(8)
      abb101(123)=spak1k7*abb101(123)
      abb101(130)=spbl6k2*spak1k2
      abb101(131)=spak1l6*abb101(130)
      abb101(123)=abb101(131)+abb101(123)
      abb101(123)=abb101(86)*abb101(123)
      abb101(83)=abb101(83)*abb101(6)
      abb101(131)=abb101(83)*abb101(80)
      abb101(132)=abb101(131)*abb101(8)
      abb101(133)=abb101(132)*abb101(68)
      abb101(134)=-spbl6k3*spak1l6
      abb101(94)=-abb101(94)+abb101(134)
      abb101(94)=abb101(133)*abb101(94)
      abb101(64)=abb101(64)+abb101(94)+abb101(123)
      abb101(64)=spbe7k1*abb101(64)
      abb101(94)=spae7k7*abb101(102)
      abb101(102)=spae7k7*spak1l6
      abb101(123)=-spbl6k3*abb101(117)*abb101(102)
      abb101(134)=abb101(124)*spak1l6
      abb101(130)=-abb101(134)*abb101(130)
      abb101(94)=abb101(130)+abb101(94)+abb101(123)
      abb101(94)=spbk7k1*abb101(94)
      abb101(123)=abb101(69)*abb101(116)
      abb101(130)=abb101(123)*abb101(16)
      abb101(135)=abb101(69)*abb101(51)
      abb101(136)=abb101(79)*abb101(135)
      abb101(130)=abb101(130)-abb101(136)
      abb101(130)=abb101(130)*abb101(8)
      abb101(136)=spak1l6*abb101(130)
      abb101(131)=abb101(131)*abb101(87)
      abb101(136)=abb101(131)+abb101(136)
      abb101(136)=abb101(68)*abb101(136)
      abb101(137)=abb101(117)*spak1e7
      abb101(138)=-abb101(76)*abb101(137)
      abb101(136)=abb101(138)+abb101(136)
      abb101(136)=spbk3k1*abb101(136)
      abb101(33)=abb101(94)+abb101(64)+abb101(127)+abb101(103)+abb101(136)+abb1&
      &01(33)
      abb101(33)=4.0_ki*abb101(33)
      abb101(64)=abb101(32)*abb101(84)
      abb101(94)=abb101(64)*abb101(81)
      abb101(103)=-abb101(94)*abb101(79)
      abb101(127)=abb101(26)*abb101(81)
      abb101(136)=abb101(127)*abb101(16)
      abb101(138)=abb101(136)*abb101(64)
      abb101(103)=abb101(138)+abb101(103)
      abb101(138)=abb101(103)*abb101(8)
      abb101(139)=abb101(21)*abb101(81)
      abb101(140)=abb101(139)*abb101(47)
      abb101(141)=abb101(12)*abb101(21)
      abb101(142)=abb101(141)*abb101(81)
      abb101(140)=abb101(140)+abb101(142)
      abb101(140)=abb101(84)*abb101(140)
      abb101(143)=abb101(21)*abb101(84)
      abb101(144)=abb101(143)*abb101(136)
      abb101(140)=-abb101(144)+abb101(140)
      abb101(138)=abb101(138)+abb101(140)
      abb101(138)=abb101(138)*spak1k2
      abb101(144)=abb101(13)*mB
      abb101(145)=abb101(84)*abb101(144)
      abb101(146)=abb101(145)*abb101(80)
      abb101(147)=spbk7l6*spak1k7
      abb101(148)=abb101(147)*abb101(146)
      abb101(138)=abb101(138)-abb101(148)
      abb101(148)=-es12*abb101(138)
      abb101(149)=abb101(21)*abb101(6)
      abb101(150)=abb101(149)*abb101(136)
      abb101(142)=abb101(142)*abb101(6)
      abb101(151)=abb101(149)*abb101(81)
      abb101(47)=abb101(151)*abb101(47)
      abb101(47)=-abb101(47)+abb101(150)-abb101(142)
      abb101(142)=abb101(32)*abb101(6)
      abb101(150)=abb101(142)*abb101(81)
      abb101(152)=-abb101(150)*abb101(79)
      abb101(136)=abb101(136)*abb101(142)
      abb101(136)=abb101(136)+abb101(152)
      abb101(152)=abb101(136)*abb101(8)
      abb101(152)=abb101(152)-abb101(47)
      abb101(98)=spak3k4*abb101(152)*abb101(98)
      abb101(153)=abb101(144)*abb101(6)
      abb101(80)=abb101(153)*abb101(80)
      abb101(154)=abb101(80)*abb101(147)
      abb101(155)=-abb101(68)*abb101(154)
      abb101(98)=abb101(98)+abb101(155)
      abb101(98)=spbk3k1*abb101(98)
      abb101(98)=abb101(98)+abb101(148)
      abb101(98)=8.0_ki*abb101(98)
      abb101(148)=abb101(75)*es12
      abb101(137)=abb101(137)*spbk3k1
      abb101(137)=abb101(148)+abb101(137)
      abb101(137)=8.0_ki*abb101(137)
      abb101(49)=abb101(49)*abb101(26)
      abb101(17)=abb101(17)*abb101(49)*abb101(32)
      abb101(18)=abb101(69)*abb101(18)
      abb101(32)=abb101(36)*spak2e7
      abb101(17)=-abb101(17)+abb101(18)+abb101(32)
      abb101(18)=spak1k4*abb101(8)
      abb101(32)=abb101(18)*abb101(7)
      abb101(36)=abb101(17)*abb101(32)
      abb101(25)=abb101(25)+abb101(36)
      abb101(25)=abb101(25)*spbl5k2
      abb101(36)=abb101(122)+abb101(134)
      abb101(36)=abb101(36)*spbk7l6
      abb101(122)=-abb101(108)*spbk7l5
      abb101(148)=abb101(122)*spak4k7
      abb101(155)=spak4l6*spbl6l5
      abb101(156)=-abb101(155)*abb101(108)
      abb101(157)=spbk7l5*spae7k7
      abb101(158)=spbl6l5*spal6e7
      abb101(159)=abb101(157)-abb101(158)
      abb101(160)=-abb101(159)*abb101(18)*abb101(15)
      abb101(161)=spbe7l5*spak1k4
      abb101(162)=abb101(161)*abb101(104)
      abb101(163)=abb101(162)*abb101(76)
      abb101(25)=abb101(25)+abb101(36)-abb101(163)+abb101(148)+abb101(156)+abb1&
      &01(160)
      abb101(36)=abb101(21)*abb101(5)
      abb101(148)=abb101(36)*abb101(52)
      abb101(156)=-abb101(148)*abb101(48)
      abb101(55)=abb101(55)*abb101(36)
      abb101(55)=abb101(55)+abb101(156)
      abb101(156)=spak1k2*abb101(7)
      abb101(160)=abb101(156)*spae7k7
      abb101(163)=abb101(160)*abb101(55)
      abb101(57)=abb101(163)+abb101(57)
      abb101(57)=abb101(57)*spbk7k2
      abb101(163)=2.0_ki*spak1e7
      abb101(164)=abb101(163)*abb101(74)
      abb101(165)=abb101(164)*abb101(76)
      abb101(166)=spal6e7*spak1k2
      abb101(167)=abb101(166)*abb101(55)
      abb101(57)=abb101(57)-abb101(167)-abb101(165)+abb101(25)+abb101(78)
      abb101(57)=8.0_ki*abb101(57)
      abb101(78)=abb101(144)*abb101(79)
      abb101(46)=abb101(46)*abb101(144)
      abb101(46)=abb101(46)-abb101(78)
      abb101(165)=abb101(26)*abb101(40)
      abb101(167)=abb101(40)*NC
      abb101(165)=abb101(165)-abb101(167)
      abb101(9)=abb101(9)*abb101(13)*c2
      abb101(11)=abb101(11)*abb101(9)
      abb101(11)=abb101(165)-abb101(11)
      abb101(11)=abb101(11)*abb101(8)
      abb101(168)=abb101(46)-abb101(11)
      abb101(169)=spbl6l5*spak1k4
      abb101(170)=abb101(169)*abb101(168)
      abb101(71)=abb101(127)*abb101(71)
      abb101(70)=abb101(70)*abb101(81)
      abb101(72)=abb101(72)*abb101(81)
      abb101(70)=-abb101(72)+abb101(71)-abb101(70)
      abb101(71)=abb101(70)*spak1k4
      abb101(72)=spak2k7*spbk7l5
      abb101(171)=abb101(72)*abb101(71)
      abb101(170)=abb101(170)+abb101(171)
      abb101(171)=-abb101(170)-2.0_ki*abb101(138)
      abb101(171)=16.0_ki*abb101(171)
      abb101(164)=abb101(164)+abb101(162)
      abb101(164)=16.0_ki*abb101(164)
      abb101(20)=-abb101(27)*abb101(20)*abb101(40)
      abb101(40)=abb101(67)*abb101(167)
      abb101(20)=abb101(40)+abb101(20)
      abb101(20)=abb101(20)*abb101(128)
      abb101(40)=abb101(12)*abb101(67)*abb101(129)
      abb101(20)=abb101(40)+abb101(20)
      abb101(20)=spbe7k3*abb101(8)*abb101(20)
      abb101(40)=-abb101(101)*abb101(48)
      abb101(48)=abb101(141)*abb101(100)
      abb101(40)=abb101(48)+abb101(40)
      abb101(48)=abb101(118)-abb101(119)
      abb101(67)=spbk3k1*spak1e7
      abb101(67)=abb101(67)+abb101(48)
      abb101(67)=abb101(40)*abb101(67)
      abb101(20)=abb101(20)+abb101(67)
      abb101(67)=abb101(68)*abb101(7)
      abb101(20)=abb101(67)*abb101(20)
      abb101(100)=-spak1l6*abb101(54)
      abb101(55)=abb101(55)*abb101(7)
      abb101(118)=abb101(55)*spak1e7
      abb101(119)=-es12*abb101(118)
      abb101(20)=abb101(119)+abb101(100)+abb101(20)-abb101(25)-abb101(58)
      abb101(20)=8.0_ki*abb101(20)
      abb101(25)=abb101(170)+abb101(138)
      abb101(25)=16.0_ki*abb101(25)
      abb101(58)=abb101(75)+abb101(162)
      abb101(58)=16.0_ki*abb101(58)
      abb101(75)=abb101(39)*abb101(7)
      abb101(100)=abb101(75)*abb101(161)
      abb101(55)=abb101(55)*abb101(163)
      abb101(55)=abb101(55)+abb101(100)
      abb101(55)=16.0_ki*abb101(55)
      abb101(100)=abb101(118)+abb101(100)
      abb101(100)=16.0_ki*abb101(100)
      abb101(118)=abb101(125)*spak1k2
      abb101(119)=-abb101(117)*abb101(48)
      abb101(128)=abb101(97)*abb101(93)
      abb101(129)=abb101(128)*abb101(67)
      abb101(133)=spbe7k3*abb101(133)
      abb101(114)=abb101(133)-abb101(118)+abb101(129)+abb101(119)+abb101(114)
      abb101(114)=8.0_ki*abb101(114)
      abb101(118)=abb101(140)*abb101(156)
      abb101(119)=es12*abb101(118)
      abb101(99)=spbk3k1*abb101(47)*abb101(99)
      abb101(99)=abb101(119)+abb101(99)
      abb101(99)=spbe7k2*abb101(99)
      abb101(74)=abb101(74)*spak1l6
      abb101(119)=abb101(146)*abb101(43)
      abb101(74)=abb101(74)-abb101(119)
      abb101(119)=es12*abb101(74)
      abb101(117)=spak1l6*abb101(117)
      abb101(80)=abb101(80)*abb101(43)
      abb101(129)=abb101(68)*abb101(80)
      abb101(117)=abb101(117)+abb101(129)
      abb101(117)=spbk3k1*abb101(117)
      abb101(99)=abb101(99)+abb101(119)+abb101(117)
      abb101(99)=4.0_ki*abb101(99)
      abb101(117)=2.0_ki*spbe7k2
      abb101(119)=abb101(117)*abb101(118)
      abb101(129)=abb101(11)*abb101(161)
      abb101(119)=-abb101(129)+abb101(119)+2.0_ki*abb101(74)
      abb101(119)=8.0_ki*abb101(119)
      abb101(118)=-spbe7k2*abb101(118)
      abb101(74)=abb101(118)+abb101(129)-abb101(74)
      abb101(74)=8.0_ki*abb101(74)
      abb101(103)=abb101(103)*abb101(37)
      abb101(118)=es12*abb101(103)
      abb101(129)=abb101(136)*abb101(37)
      abb101(133)=-spbk3k1*abb101(68)*abb101(129)
      abb101(118)=abb101(118)+abb101(133)
      abb101(118)=4.0_ki*abb101(118)
      abb101(71)=-abb101(71)*abb101(159)
      abb101(133)=abb101(75)*spbl5k2
      abb101(136)=abb101(133)*spak1k4
      abb101(71)=abb101(71)+abb101(136)
      abb101(136)=-abb101(71)+2.0_ki*abb101(103)
      abb101(136)=8.0_ki*abb101(136)
      abb101(71)=-abb101(103)+abb101(71)
      abb101(71)=8.0_ki*abb101(71)
      abb101(103)=8.0_ki*abb101(86)
      abb101(138)=spbk7k2*abb101(107)
      abb101(140)=spbk7k3*abb101(113)
      abb101(138)=abb101(138)+abb101(140)
      abb101(138)=4.0_ki*abb101(138)
      abb101(113)=spbl6k3*abb101(113)
      abb101(107)=spbl6k2*abb101(107)
      abb101(107)=abb101(113)+abb101(107)
      abb101(107)=4.0_ki*abb101(107)
      abb101(113)=abb101(90)*abb101(59)
      abb101(62)=abb101(62)*abb101(22)
      abb101(62)=abb101(113)-abb101(62)
      abb101(113)=abb101(14)*abb101(62)
      abb101(140)=abb101(65)*abb101(14)
      abb101(141)=-abb101(41)*abb101(140)
      abb101(113)=abb101(141)+abb101(113)
      abb101(113)=abb101(113)*abb101(29)
      abb101(141)=abb101(96)*abb101(35)
      abb101(146)=abb101(35)*abb101(65)
      abb101(141)=abb101(141)+abb101(146)
      abb101(141)=abb101(141)*abb101(38)
      abb101(162)=-abb101(42)*abb101(96)
      abb101(167)=abb101(42)*abb101(65)
      abb101(167)=abb101(162)-abb101(167)
      abb101(170)=-abb101(167)*abb101(44)
      abb101(113)=abb101(170)+abb101(113)+abb101(141)
      abb101(113)=spbl5k2*abb101(113)
      abb101(123)=abb101(59)*abb101(123)
      abb101(170)=abb101(51)*abb101(10)
      abb101(172)=-abb101(4)*abb101(170)*abb101(69)
      abb101(173)=-abb101(65)*abb101(135)
      abb101(123)=abb101(173)+abb101(123)+abb101(172)
      abb101(123)=abb101(8)*abb101(123)
      abb101(172)=abb101(96)+abb101(65)
      abb101(173)=abb101(172)*abb101(93)
      abb101(123)=abb101(123)-abb101(173)
      abb101(123)=spak1l6*abb101(123)
      abb101(174)=abb101(59)*mB
      abb101(175)=abb101(174)*abb101(116)
      abb101(176)=abb101(10)*mB
      abb101(177)=abb101(176)*abb101(4)
      abb101(178)=abb101(177)*abb101(51)
      abb101(179)=abb101(51)*mB
      abb101(180)=abb101(179)*abb101(65)
      abb101(175)=-abb101(180)+abb101(175)-abb101(178)
      abb101(178)=abb101(163)*abb101(76)
      abb101(180)=-abb101(175)*abb101(178)
      abb101(95)=abb101(95)+abb101(65)
      abb101(181)=abb101(95)*abb101(83)
      abb101(182)=abb101(142)*abb101(105)
      abb101(183)=abb101(182)*abb101(59)
      abb101(181)=abb101(183)-abb101(181)
      abb101(183)=-abb101(181)*abb101(87)
      abb101(184)=abb101(172)*abb101(101)
      abb101(185)=abb101(184)*abb101(166)
      abb101(113)=abb101(113)+abb101(185)+abb101(183)+abb101(123)+abb101(180)
      abb101(113)=es34*abb101(113)
      abb101(123)=abb101(65)*mB
      abb101(123)=abb101(123)+abb101(177)
      abb101(82)=-abb101(82)*abb101(123)
      abb101(177)=abb101(174)*abb101(105)
      abb101(82)=abb101(177)+abb101(82)
      abb101(177)=abb101(82)*abb101(43)
      abb101(96)=-abb101(14)*abb101(96)
      abb101(96)=abb101(96)-abb101(140)
      abb101(180)=abb101(96)*abb101(37)
      abb101(34)=-abb101(34)+abb101(95)
      abb101(34)=abb101(110)*abb101(34)
      abb101(110)=abb101(34)*spak1l6
      abb101(110)=abb101(110)+abb101(177)+abb101(180)
      abb101(177)=spak4k7*spbk7l5
      abb101(155)=abb101(177)+abb101(155)
      abb101(110)=abb101(155)*abb101(110)
      abb101(155)=abb101(96)*abb101(18)
      abb101(177)=abb101(155)*abb101(159)
      abb101(180)=abb101(60)*abb101(35)
      abb101(146)=abb101(146)*spak2e7
      abb101(146)=abb101(146)-abb101(180)
      abb101(32)=abb101(146)*abb101(32)
      abb101(146)=-spbl5k2*abb101(32)
      abb101(180)=-abb101(82)*abb101(76)*abb101(161)
      abb101(146)=-abb101(110)+abb101(180)+abb101(146)+abb101(177)
      abb101(146)=spbk4k2*abb101(146)
      abb101(177)=NC*c3
      abb101(180)=abb101(177)+abb101(10)
      abb101(93)=abb101(93)*abb101(180)
      abb101(49)=c3*abb101(49)*abb101(92)
      abb101(49)=abb101(93)-abb101(49)
      abb101(92)=abb101(49)*abb101(56)
      abb101(93)=-abb101(173)*abb101(56)
      abb101(183)=-abb101(184)*abb101(160)
      abb101(93)=abb101(93)+abb101(183)
      abb101(93)=es34*abb101(93)
      abb101(183)=abb101(26)*c3
      abb101(183)=abb101(183)-abb101(180)
      abb101(101)=abb101(183)*abb101(101)
      abb101(185)=-abb101(101)*abb101(160)
      abb101(92)=abb101(93)+abb101(92)+abb101(185)
      abb101(92)=spbk7k2*abb101(92)
      abb101(93)=abb101(175)*es34
      abb101(51)=abb101(176)*abb101(51)
      abb101(176)=abb101(179)*abb101(177)
      abb101(116)=abb101(116)*c3
      abb101(179)=abb101(116)*mB
      abb101(51)=-abb101(179)+abb101(51)+abb101(176)
      abb101(93)=abb101(93)+abb101(51)
      abb101(102)=abb101(102)+abb101(120)
      abb101(120)=spbk7l6*abb101(102)*abb101(93)
      abb101(17)=abb101(17)*abb101(8)
      abb101(176)=-spbl5k2*abb101(7)*abb101(17)
      abb101(15)=abb101(15)*abb101(8)
      abb101(179)=abb101(15)*abb101(159)
      abb101(185)=spbe7l5*abb101(104)*abb101(76)
      abb101(176)=abb101(185)+abb101(176)+abb101(179)
      abb101(176)=spak1k3*abb101(176)
      abb101(116)=-abb101(116)+abb101(170)
      abb101(116)=abb101(69)*abb101(116)
      abb101(135)=abb101(177)*abb101(135)
      abb101(116)=abb101(135)+abb101(116)
      abb101(116)=abb101(8)*abb101(116)
      abb101(116)=abb101(116)+abb101(49)
      abb101(116)=spak1l6*abb101(116)
      abb101(135)=-abb101(51)*abb101(178)
      abb101(90)=-c3*abb101(90)
      abb101(22)=abb101(61)*abb101(22)
      abb101(61)=abb101(41)*abb101(177)
      abb101(22)=abb101(61)+abb101(90)+abb101(22)
      abb101(22)=abb101(29)*abb101(14)*abb101(22)
      abb101(38)=abb101(38)*abb101(35)
      abb101(44)=abb101(44)*abb101(42)
      abb101(38)=abb101(44)+abb101(38)
      abb101(38)=abb101(183)*abb101(38)
      abb101(22)=abb101(22)+abb101(38)
      abb101(22)=spbl5k2*abb101(22)
      abb101(38)=-spak3k7*abb101(122)
      abb101(44)=spak3l6*spbl6l5*abb101(108)
      abb101(61)=abb101(180)*abb101(83)
      abb101(83)=abb101(182)*c3
      abb101(61)=abb101(83)-abb101(61)
      abb101(83)=abb101(61)*abb101(87)
      abb101(90)=abb101(101)*abb101(166)
      abb101(22)=abb101(44)+abb101(38)+abb101(176)+abb101(120)+abb101(92)+abb10&
      &1(113)+abb101(22)+abb101(90)+abb101(83)+abb101(116)+abb101(135)+abb101(1&
      &46)
      abb101(22)=4.0_ki*abb101(22)
      abb101(38)=abb101(127)*abb101(59)
      abb101(10)=abb101(10)*abb101(81)
      abb101(44)=abb101(10)*abb101(4)
      abb101(83)=abb101(38)-abb101(44)
      abb101(90)=abb101(83)*abb101(149)
      abb101(92)=abb101(151)*abb101(65)
      abb101(90)=abb101(92)-abb101(90)
      abb101(92)=abb101(83)*abb101(142)
      abb101(108)=abb101(150)*abb101(65)
      abb101(92)=abb101(108)-abb101(92)
      abb101(108)=-abb101(8)*abb101(92)
      abb101(108)=abb101(108)+abb101(90)
      abb101(108)=es34*abb101(108)
      abb101(113)=abb101(127)*c3
      abb101(10)=abb101(113)-abb101(10)
      abb101(113)=abb101(10)*abb101(149)
      abb101(116)=abb101(151)*abb101(177)
      abb101(113)=abb101(113)-abb101(116)
      abb101(10)=-abb101(142)*abb101(10)
      abb101(116)=abb101(150)*abb101(177)
      abb101(10)=abb101(116)+abb101(10)
      abb101(116)=abb101(8)*abb101(10)
      abb101(108)=abb101(108)+abb101(116)+abb101(113)
      abb101(108)=spak1k2*abb101(108)
      abb101(116)=abb101(183)*abb101(153)
      abb101(120)=abb101(172)*abb101(153)
      abb101(135)=-es34*abb101(120)
      abb101(135)=-abb101(116)+abb101(135)
      abb101(135)=abb101(135)*abb101(147)
      abb101(108)=abb101(108)+abb101(135)
      abb101(135)=abb101(168)*spbl6l5
      abb101(142)=spak1k3*abb101(135)
      abb101(146)=spak1k3*abb101(70)
      abb101(81)=-abb101(81)*abb101(123)
      abb101(127)=abb101(174)*abb101(127)
      abb101(81)=abb101(127)+abb101(81)
      abb101(127)=abb101(81)*spak1k4
      abb101(149)=spbk4k2*abb101(127)
      abb101(146)=abb101(149)+abb101(146)
      abb101(146)=abb101(146)*abb101(72)
      abb101(149)=-NC+abb101(26)
      abb101(149)=abb101(59)*abb101(13)*abb101(149)
      abb101(9)=abb101(4)*abb101(9)
      abb101(9)=-abb101(9)+abb101(149)
      abb101(149)=abb101(9)*abb101(8)
      abb101(150)=abb101(172)*abb101(144)
      abb101(150)=abb101(150)+abb101(149)
      abb101(150)=abb101(150)*abb101(169)
      abb101(151)=-spbk4k2*abb101(150)
      abb101(108)=abb101(146)+abb101(142)+abb101(151)+2.0_ki*abb101(108)
      abb101(108)=8.0_ki*abb101(108)
      abb101(142)=abb101(93)*spak1e7
      abb101(146)=abb101(161)*spbk4k2
      abb101(151)=abb101(146)*abb101(82)
      abb101(153)=spak1k3*spbe7l5
      abb101(161)=abb101(153)*abb101(104)
      abb101(142)=-abb101(161)+abb101(151)+2.0_ki*abb101(142)
      abb101(142)=8.0_ki*abb101(142)
      abb101(151)=es34*abb101(184)
      abb101(101)=abb101(101)+abb101(151)
      abb101(101)=spak1e7*abb101(7)*abb101(101)
      abb101(75)=abb101(75)*abb101(153)
      abb101(151)=-abb101(167)*abb101(7)
      abb101(161)=abb101(151)*abb101(146)
      abb101(75)=abb101(75)+2.0_ki*abb101(101)+abb101(161)
      abb101(75)=8.0_ki*abb101(75)
      abb101(51)=spak1l6*abb101(51)
      abb101(101)=spak1l6*abb101(175)
      abb101(120)=abb101(120)*abb101(43)
      abb101(101)=abb101(101)+abb101(120)
      abb101(101)=es34*abb101(101)
      abb101(116)=abb101(116)*abb101(43)
      abb101(51)=abb101(101)+abb101(51)+abb101(116)
      abb101(90)=-es34*abb101(90)
      abb101(90)=-abb101(113)+abb101(90)
      abb101(101)=abb101(117)*abb101(156)
      abb101(90)=abb101(90)*abb101(101)
      abb101(113)=abb101(146)*abb101(149)
      abb101(116)=abb101(11)*abb101(153)
      abb101(51)=abb101(90)+abb101(116)+2.0_ki*abb101(51)+abb101(113)
      abb101(51)=4.0_ki*abb101(51)
      abb101(90)=-abb101(70)*abb101(159)
      abb101(90)=abb101(133)+abb101(90)
      abb101(90)=spak1k3*abb101(90)
      abb101(92)=es34*abb101(92)
      abb101(10)=-abb101(10)+abb101(92)
      abb101(10)=abb101(37)*abb101(10)
      abb101(92)=-abb101(127)*abb101(159)
      abb101(113)=spbl5k2*spak1k4*abb101(151)
      abb101(92)=abb101(113)+abb101(92)
      abb101(92)=spbk4k2*abb101(92)
      abb101(10)=abb101(90)+2.0_ki*abb101(10)+abb101(92)
      abb101(10)=4.0_ki*abb101(10)
      abb101(90)=es34*abb101(181)
      abb101(61)=-abb101(61)+abb101(90)
      abb101(90)=4.0_ki*abb101(8)
      abb101(61)=abb101(61)*abb101(90)
      abb101(53)=abb101(53)*abb101(95)
      abb101(26)=abb101(52)*abb101(26)
      abb101(92)=abb101(26)*abb101(59)
      abb101(50)=abb101(92)*abb101(50)
      abb101(50)=-abb101(50)+abb101(53)
      abb101(53)=abb101(77)*abb101(95)
      abb101(69)=-abb101(69)*abb101(92)
      abb101(53)=abb101(69)+abb101(53)
      abb101(53)=abb101(8)*abb101(53)
      abb101(53)=abb101(53)+abb101(50)
      abb101(53)=spak1l6*abb101(53)
      abb101(69)=-spbk7l6*abb101(102)
      abb101(69)=abb101(69)+abb101(178)
      abb101(52)=-abb101(52)*abb101(123)
      abb101(26)=abb101(174)*abb101(26)
      abb101(26)=abb101(26)+abb101(52)
      abb101(52)=abb101(26)*abb101(69)
      abb101(59)=abb101(64)*abb101(105)*abb101(59)
      abb101(69)=abb101(95)*abb101(85)
      abb101(59)=abb101(59)-abb101(69)
      abb101(69)=abb101(59)*abb101(87)
      abb101(56)=abb101(50)*abb101(56)
      abb101(77)=abb101(148)*abb101(95)
      abb101(36)=abb101(92)*abb101(36)
      abb101(36)=abb101(77)-abb101(36)
      abb101(77)=abb101(36)*abb101(160)
      abb101(56)=abb101(56)+abb101(77)
      abb101(56)=spbk7k2*abb101(56)
      abb101(77)=-abb101(36)*abb101(166)
      abb101(85)=abb101(158)*abb101(155)
      abb101(52)=abb101(56)+abb101(110)+abb101(85)+abb101(77)+abb101(69)+abb101&
      &(53)+abb101(52)
      abb101(52)=spbk4k3*abb101(52)
      abb101(53)=abb101(79)*spak2e7
      abb101(16)=abb101(27)*abb101(16)
      abb101(27)=abb101(53)-abb101(16)
      abb101(27)=abb101(109)*abb101(27)
      abb101(53)=spak1l6*abb101(27)
      abb101(56)=-spak2e7*abb101(78)
      abb101(16)=abb101(144)*abb101(16)
      abb101(16)=abb101(16)+abb101(56)
      abb101(16)=abb101(16)*abb101(43)
      abb101(56)=abb101(15)*abb101(166)
      abb101(30)=spak2l6*abb101(30)
      abb101(16)=abb101(30)+abb101(56)+abb101(53)+abb101(16)
      abb101(16)=spbl6l5*abb101(16)
      abb101(23)=-abb101(23)*abb101(14)*abb101(60)
      abb101(24)=abb101(140)*abb101(24)
      abb101(23)=abb101(24)+abb101(23)
      abb101(23)=abb101(23)*abb101(29)
      abb101(24)=-spak2k4*abb101(141)
      abb101(29)=abb101(167)*abb101(45)
      abb101(23)=abb101(29)+abb101(32)+abb101(23)+abb101(24)
      abb101(23)=spbk4k3*abb101(23)
      abb101(17)=abb101(156)*abb101(17)
      abb101(17)=abb101(17)+abb101(23)
      abb101(17)=spbl5k2*abb101(17)
      abb101(23)=-spak1k2*abb101(15)
      abb101(24)=-spbk4k3*abb101(155)
      abb101(23)=abb101(23)+abb101(24)
      abb101(23)=abb101(23)*abb101(157)
      abb101(24)=abb101(104)*spak1k2
      abb101(29)=spbk4k3*spak1k4
      abb101(30)=abb101(29)*abb101(82)
      abb101(24)=abb101(24)-abb101(30)
      abb101(24)=abb101(24)*spbe7l5
      abb101(30)=-abb101(76)*abb101(24)
      abb101(32)=spak2k7*abb101(122)
      abb101(16)=abb101(32)+abb101(30)+abb101(23)+abb101(17)+abb101(52)+abb101(&
      &16)
      abb101(16)=4.0_ki*abb101(16)
      abb101(17)=abb101(21)*abb101(38)
      abb101(21)=abb101(139)*abb101(65)
      abb101(17)=abb101(17)-abb101(21)
      abb101(17)=abb101(17)*abb101(84)
      abb101(21)=abb101(44)*abb101(143)
      abb101(17)=abb101(17)-abb101(21)
      abb101(21)=abb101(83)*abb101(64)
      abb101(23)=abb101(94)*abb101(65)
      abb101(21)=abb101(23)-abb101(21)
      abb101(23)=abb101(8)*abb101(21)
      abb101(23)=abb101(23)+abb101(17)
      abb101(23)=spak1k2*abb101(23)
      abb101(30)=abb101(172)*abb101(145)
      abb101(32)=abb101(30)*abb101(147)
      abb101(23)=abb101(23)+abb101(32)
      abb101(23)=abb101(150)+2.0_ki*abb101(23)
      abb101(23)=spbk4k3*abb101(23)
      abb101(32)=-spak1k2*abb101(135)
      abb101(38)=abb101(70)*spak1k2
      abb101(44)=abb101(81)*abb101(29)
      abb101(44)=abb101(44)+abb101(38)
      abb101(45)=-abb101(44)*abb101(72)
      abb101(23)=abb101(45)+abb101(32)+abb101(23)
      abb101(23)=8.0_ki*abb101(23)
      abb101(32)=abb101(26)*spbk4k3
      abb101(45)=abb101(32)*abb101(163)
      abb101(24)=abb101(45)-abb101(24)
      abb101(24)=8.0_ki*abb101(24)
      abb101(45)=abb101(39)*abb101(156)
      abb101(29)=abb101(151)*abb101(29)
      abb101(29)=abb101(45)+abb101(29)
      abb101(45)=-spbe7l5*abb101(29)
      abb101(52)=spbk4k3*abb101(7)
      abb101(36)=-abb101(36)*abb101(163)*abb101(52)
      abb101(36)=abb101(36)+abb101(45)
      abb101(36)=8.0_ki*abb101(36)
      abb101(26)=-spak1l6*abb101(26)
      abb101(30)=-abb101(30)*abb101(43)
      abb101(26)=abb101(26)+abb101(30)
      abb101(17)=-abb101(17)*abb101(101)
      abb101(17)=abb101(17)+2.0_ki*abb101(26)
      abb101(17)=spbk4k3*abb101(17)
      abb101(26)=-spak1k2*abb101(11)
      abb101(9)=-spbk4k3*abb101(9)*abb101(18)
      abb101(9)=abb101(26)+abb101(9)
      abb101(9)=spbe7l5*abb101(9)
      abb101(9)=abb101(9)+abb101(17)
      abb101(9)=4.0_ki*abb101(9)
      abb101(17)=-abb101(158)*abb101(38)
      abb101(18)=abb101(21)*abb101(37)
      abb101(21)=-abb101(158)*abb101(127)
      abb101(18)=-2.0_ki*abb101(18)+abb101(21)
      abb101(18)=spbk4k3*abb101(18)
      abb101(21)=-spbl5k2*abb101(29)
      abb101(26)=abb101(44)*abb101(157)
      abb101(17)=abb101(26)+abb101(21)+abb101(17)+abb101(18)
      abb101(17)=4.0_ki*abb101(17)
      abb101(18)=4.0_ki*spbk4k3
      abb101(18)=-abb101(8)*abb101(59)*abb101(18)
      abb101(21)=abb101(73)*spak3k4
      abb101(26)=-abb101(21)*abb101(48)
      abb101(29)=abb101(128)*abb101(88)
      abb101(30)=spbk7k2*abb101(124)
      abb101(38)=spbe7k3*spak3k4
      abb101(44)=abb101(132)*abb101(38)
      abb101(26)=abb101(44)-abb101(125)+abb101(29)+abb101(30)+abb101(26)
      abb101(26)=4.0_ki*spak1k7*abb101(26)
      abb101(29)=-abb101(73)*abb101(48)
      abb101(30)=spbe7k3*abb101(132)
      abb101(29)=abb101(30)+abb101(29)
      abb101(29)=abb101(115)*abb101(29)
      abb101(30)=abb101(128)*abb101(91)
      abb101(44)=spbk7k2*abb101(134)
      abb101(29)=-abb101(126)+abb101(30)+abb101(44)+abb101(29)
      abb101(29)=4.0_ki*abb101(29)
      abb101(30)=abb101(66)*abb101(42)
      abb101(42)=abb101(162)*abb101(63)
      abb101(30)=abb101(30)-abb101(42)
      abb101(42)=abb101(30)*abb101(43)
      abb101(37)=-abb101(37)*abb101(35)*abb101(97)
      abb101(37)=abb101(42)+abb101(37)
      abb101(37)=abb101(88)*abb101(37)
      abb101(42)=abb101(63)*abb101(62)
      abb101(41)=-abb101(41)*abb101(66)
      abb101(41)=abb101(41)+abb101(42)
      abb101(14)=abb101(91)*abb101(14)*abb101(41)
      abb101(14)=abb101(14)+abb101(37)
      abb101(14)=4.0_ki*abb101(14)
      abb101(37)=abb101(115)*abb101(130)
      abb101(41)=abb101(21)*spak1e7
      abb101(42)=-abb101(76)*abb101(41)
      abb101(43)=spak3k4*abb101(131)
      abb101(37)=abb101(43)+abb101(37)+abb101(42)
      abb101(37)=4.0_ki*abb101(37)
      abb101(42)=abb101(152)*abb101(68)
      abb101(43)=-spak3k4*abb101(154)
      abb101(42)=abb101(42)+abb101(43)
      abb101(42)=8.0_ki*abb101(42)
      abb101(41)=8.0_ki*abb101(41)
      abb101(43)=8.0_ki*abb101(88)
      abb101(40)=spak1e7*abb101(40)*abb101(43)
      abb101(44)=spbe7k2*abb101(47)*abb101(67)
      abb101(45)=abb101(73)*abb101(115)
      abb101(47)=spak3k4*abb101(80)
      abb101(44)=abb101(44)+abb101(45)+abb101(47)
      abb101(44)=4.0_ki*abb101(44)
      abb101(45)=4.0_ki*spak3k4
      abb101(47)=-abb101(45)*abb101(129)
      abb101(53)=8.0_ki*abb101(124)
      abb101(56)=4.0_ki*abb101(93)
      abb101(59)=-spae7k7*abb101(56)
      abb101(32)=4.0_ki*abb101(32)
      abb101(62)=spae7k7*abb101(32)
      abb101(64)=8.0_ki*abb101(121)
      abb101(56)=spal6e7*abb101(56)
      abb101(32)=-spal6e7*abb101(32)
      abb101(65)=spbk7k2*spae7k7
      abb101(67)=spbl6k2*spal6e7
      abb101(65)=abb101(65)-abb101(67)
      abb101(67)=abb101(31)*abb101(65)
      abb101(60)=abb101(63)*abb101(60)
      abb101(63)=-spak2e7*abb101(66)
      abb101(60)=abb101(63)+abb101(60)
      abb101(35)=abb101(88)*abb101(35)*abb101(60)
      abb101(35)=abb101(35)+abb101(67)
      abb101(35)=abb101(8)*abb101(35)
      abb101(60)=-abb101(15)*spak3k4*abb101(48)
      abb101(63)=abb101(38)*abb101(104)
      abb101(66)=abb101(76)*abb101(63)
      abb101(35)=abb101(66)+abb101(35)+abb101(60)
      abb101(35)=4.0_ki*abb101(35)
      abb101(60)=-spak2k4*abb101(70)
      abb101(66)=-es712+es71+es12
      abb101(66)=abb101(60)*abb101(66)
      abb101(67)=spbl6k3*spak3k4*abb101(168)
      abb101(12)=abb101(12)*abb101(13)
      abb101(12)=abb101(12)-abb101(165)
      abb101(12)=abb101(8)*spak2k4*abb101(12)
      abb101(13)=-spak2k4*abb101(46)
      abb101(13)=-abb101(12)+abb101(13)
      abb101(13)=spbl6k2*abb101(13)
      abb101(46)=abb101(70)*spak3k4
      abb101(68)=spak2k7*spbk7k3*abb101(46)
      abb101(13)=abb101(68)+abb101(13)+abb101(67)+abb101(66)
      abb101(13)=8.0_ki*abb101(13)
      abb101(63)=8.0_ki*abb101(63)
      abb101(66)=abb101(111)*spak4l6
      abb101(67)=abb101(15)*spak4e7
      abb101(68)=abb101(104)*spbk7e7
      abb101(69)=abb101(68)*spak4k7
      abb101(66)=-abb101(69)+abb101(66)+abb101(67)
      abb101(67)=8.0_ki*abb101(66)
      abb101(39)=spbe7k3*abb101(39)*abb101(88)
      abb101(39)=abb101(39)+abb101(66)
      abb101(39)=8.0_ki*abb101(39)
      abb101(12)=spbe7k2*abb101(12)
      abb101(11)=abb101(11)*abb101(38)
      abb101(11)=abb101(12)+abb101(11)
      abb101(11)=4.0_ki*abb101(11)
      abb101(12)=-abb101(60)*abb101(65)
      abb101(38)=abb101(46)*abb101(48)
      abb101(30)=abb101(30)*abb101(88)
      abb101(12)=abb101(30)+abb101(38)+abb101(12)
      abb101(12)=4.0_ki*abb101(12)
      abb101(30)=abb101(8)*abb101(96)*spak4e7
      abb101(38)=spbk7e7*abb101(82)*spak4k7
      abb101(34)=abb101(34)*spak4l6
      abb101(30)=abb101(34)+abb101(30)+abb101(38)
      abb101(34)=spbk4k2*abb101(30)
      abb101(38)=-spak3k7*abb101(68)
      abb101(46)=spak3l6*abb101(111)
      abb101(48)=spak3e7*abb101(15)
      abb101(34)=abb101(48)+abb101(46)+abb101(38)+abb101(34)
      abb101(34)=4.0_ki*abb101(34)
      abb101(30)=-spbk4k3*abb101(30)
      abb101(19)=spak2e7*abb101(19)
      abb101(19)=-abb101(28)+abb101(19)
      abb101(19)=abb101(8)*abb101(19)
      abb101(28)=spak2k7*abb101(68)
      abb101(19)=abb101(28)+abb101(19)+abb101(30)-abb101(27)
      abb101(19)=4.0_ki*abb101(19)
      abb101(27)=abb101(89)*abb101(43)
      abb101(15)=-abb101(15)*abb101(45)
      abb101(28)=-abb101(132)*abb101(45)
      abb101(30)=abb101(68)*abb101(45)
      abb101(38)=-abb101(111)*abb101(45)
      abb101(21)=4.0_ki*abb101(21)
      abb101(43)=-spae7k7*abb101(21)
      abb101(21)=spal6e7*abb101(21)
      abb101(45)=abb101(54)*abb101(7)
      abb101(45)=8.0_ki*abb101(45)
      abb101(31)=-abb101(31)*abb101(90)
      abb101(46)=4.0_ki*abb101(86)
      abb101(48)=4.0_ki*spbk7e7*abb101(106)
      abb101(54)=-4.0_ki*abb101(112)
      abb101(60)=-es34*abb101(173)
      abb101(49)=abb101(49)+abb101(60)
      abb101(49)=4.0_ki*abb101(7)*abb101(49)
      abb101(50)=4.0_ki*abb101(50)*abb101(52)
      abb101(52)=-4.0_ki*abb101(124)
      abb101(60)=4.0_ki*abb101(121)
      R2d101=0.0_ki
      rat2 = rat2 + R2d101
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='101' value='", &
          & R2d101, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd101h3