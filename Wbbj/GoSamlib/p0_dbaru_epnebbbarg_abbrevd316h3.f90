module     p0_dbaru_epnebbbarg_abbrevd316h3
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(178), public :: abb316
   complex(ki), public :: R2d316
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
      abb316(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb316(2)=NC**(-1)
      abb316(3)=es234**(-1)
      abb316(4)=spak2l5**(-1)
      abb316(5)=spak2l6**(-1)
      abb316(6)=spbl6k2**(-1)
      abb316(7)=sqrt(mB**2)
      abb316(8)=abb316(5)**2
      abb316(9)=mB**3
      abb316(10)=abb316(8)*abb316(9)
      abb316(11)=i_*CVDU
      abb316(12)=abb316(11)*abb316(1)
      abb316(13)=TR*gW
      abb316(13)=abb316(13)**2
      abb316(14)=abb316(13)*abb316(3)*abb316(12)
      abb316(15)=c3*spbk3k2
      abb316(16)=abb316(14)*abb316(15)
      abb316(17)=abb316(16)*spak1e7
      abb316(18)=abb316(10)*abb316(17)
      abb316(19)=NC*spak2k4
      abb316(20)=spak2k4*abb316(2)
      abb316(21)=abb316(19)-abb316(20)
      abb316(22)=-abb316(18)*abb316(21)
      abb316(23)=abb316(14)*spak1e7
      abb316(24)=c1*abb316(2)*spbk3k2
      abb316(25)=abb316(24)*spak2k4
      abb316(26)=abb316(25)*abb316(23)
      abb316(27)=abb316(26)*abb316(10)
      abb316(22)=abb316(22)-abb316(27)
      abb316(27)=abb316(22)*abb316(6)
      abb316(28)=spbl5k2*spak1k2
      abb316(29)=abb316(27)*abb316(28)
      abb316(30)=NC*abb316(5)
      abb316(31)=spak2k4*abb316(4)
      abb316(32)=abb316(30)*abb316(31)
      abb316(33)=mB**2
      abb316(34)=abb316(33)*abb316(32)
      abb316(35)=abb316(34)*abb316(17)
      abb316(36)=abb316(33)*abb316(5)
      abb316(37)=abb316(4)*abb316(2)
      abb316(38)=abb316(36)*abb316(37)
      abb316(39)=abb316(38)*abb316(17)
      abb316(40)=abb316(39)*spak2k4
      abb316(41)=abb316(24)*abb316(23)
      abb316(42)=abb316(41)*abb316(36)
      abb316(43)=abb316(42)*abb316(31)
      abb316(35)=abb316(43)+abb316(35)-abb316(40)
      abb316(40)=abb316(35)*abb316(7)
      abb316(43)=abb316(40)*spak1k2
      abb316(44)=NC-abb316(2)
      abb316(18)=abb316(18)*abb316(44)
      abb316(45)=abb316(41)*abb316(10)
      abb316(18)=abb316(45)+abb316(18)
      abb316(45)=spak1k2*spak3k4
      abb316(46)=abb316(45)*abb316(6)
      abb316(47)=abb316(46)*spbl5k3
      abb316(48)=abb316(47)*abb316(18)
      abb316(29)=abb316(48)+abb316(29)-abb316(43)
      abb316(43)=2.0_ki*spbe7k1
      abb316(48)=abb316(29)*abb316(43)
      abb316(49)=NC*abb316(4)
      abb316(50)=abb316(49)-abb316(37)
      abb316(51)=abb316(9)*c3
      abb316(52)=abb316(50)*abb316(51)
      abb316(53)=abb316(37)*abb316(9)
      abb316(54)=abb316(53)*c1
      abb316(52)=abb316(52)+abb316(54)
      abb316(54)=abb316(14)*abb316(5)
      abb316(55)=spbk3k2**2
      abb316(56)=-abb316(52)*abb316(55)*abb316(54)
      abb316(57)=abb316(56)*abb316(46)
      abb316(58)=spak2e7*spbe7l6
      abb316(59)=abb316(57)*abb316(58)
      abb316(60)=abb316(36)*abb316(49)
      abb316(61)=abb316(60)-abb316(38)
      abb316(62)=abb316(16)*abb316(61)
      abb316(63)=abb316(24)*abb316(4)
      abb316(64)=abb316(63)*abb316(54)
      abb316(65)=abb316(64)*abb316(33)
      abb316(62)=abb316(65)+abb316(62)
      abb316(65)=abb316(62)*abb316(45)
      abb316(66)=spak2e7*abb316(7)
      abb316(67)=spbe7k3*abb316(65)*abb316(66)
      abb316(59)=abb316(59)+abb316(67)
      abb316(67)=abb316(14)*mB
      abb316(68)=abb316(67)*abb316(4)
      abb316(69)=abb316(68)*NC
      abb316(70)=abb316(68)*abb316(2)
      abb316(69)=abb316(69)-abb316(70)
      abb316(71)=-abb316(15)*abb316(69)
      abb316(72)=abb316(24)*abb316(68)
      abb316(71)=abb316(71)-abb316(72)
      abb316(73)=abb316(71)*abb316(45)
      abb316(74)=abb316(73)*spbl6k3
      abb316(75)=abb316(15)*spak2k4
      abb316(76)=abb316(75)*abb316(69)
      abb316(68)=abb316(68)*spak2k4
      abb316(77)=abb316(68)*abb316(24)
      abb316(76)=abb316(77)+abb316(76)
      abb316(77)=abb316(76)*spak1k2
      abb316(78)=abb316(77)*spbl6k2
      abb316(74)=abb316(74)+abb316(78)
      abb316(78)=spal6e7*spbe7l6*abb316(74)
      abb316(79)=2.0_ki*abb316(7)
      abb316(80)=spbk7e7*spak2k7
      abb316(35)=abb316(35)*abb316(80)*abb316(79)
      abb316(27)=abb316(27)*abb316(80)
      abb316(81)=abb316(17)*abb316(21)
      abb316(26)=abb316(26)+abb316(81)
      abb316(26)=abb316(26)*abb316(7)
      abb316(81)=abb316(26)*spbe7l6
      abb316(82)=abb316(81)-2.0_ki*abb316(27)
      abb316(82)=spbl5k2*abb316(82)
      abb316(18)=abb316(18)*abb316(6)
      abb316(83)=abb316(80)*spak3k4
      abb316(84)=2.0_ki*abb316(83)
      abb316(84)=-abb316(18)*abb316(84)
      abb316(85)=-abb316(17)*abb316(44)
      abb316(41)=abb316(85)-abb316(41)
      abb316(85)=abb316(41)*abb316(7)
      abb316(86)=spak3k4*abb316(85)*spbe7l6
      abb316(84)=abb316(86)+abb316(84)
      abb316(84)=spbl5k3*abb316(84)
      abb316(35)=-abb316(78)+abb316(48)+abb316(84)+abb316(35)+abb316(82)+abb316&
      &(59)
      abb316(35)=es71*abb316(35)
      abb316(29)=abb316(29)*spbe7k1
      abb316(48)=spbl5k3*spak3k4
      abb316(82)=abb316(80)*abb316(18)*abb316(48)
      abb316(27)=abb316(27)*spbl5k2
      abb316(27)=-abb316(29)+abb316(82)+abb316(27)
      abb316(29)=abb316(40)*abb316(80)
      abb316(82)=abb316(27)-abb316(29)
      abb316(84)=2.0_ki*es712
      abb316(87)=-abb316(84)+2.0_ki*es12
      abb316(82)=-abb316(82)*abb316(87)
      abb316(88)=abb316(15)*spak1e7
      abb316(89)=abb316(44)*abb316(68)*abb316(88)
      abb316(90)=spak2k4*spak1e7
      abb316(91)=abb316(72)*abb316(90)
      abb316(89)=abb316(91)+abb316(89)
      abb316(91)=abb316(89)*abb316(80)
      abb316(92)=spak1k2*abb316(89)*spbe7k1
      abb316(91)=abb316(91)-abb316(92)
      abb316(91)=abb316(91)*spbl6k2
      abb316(93)=-abb316(88)*abb316(69)
      abb316(72)=abb316(72)*spak1e7
      abb316(72)=abb316(93)-abb316(72)
      abb316(93)=abb316(45)*spbe7k1
      abb316(94)=abb316(93)-abb316(83)
      abb316(95)=-abb316(72)*abb316(94)
      abb316(96)=abb316(95)*spbl6k3
      abb316(91)=abb316(91)+abb316(96)
      abb316(96)=abb316(67)*abb316(5)
      abb316(97)=abb316(96)*NC
      abb316(98)=abb316(96)*abb316(2)
      abb316(97)=abb316(97)-abb316(98)
      abb316(99)=-abb316(88)*abb316(97)
      abb316(100)=abb316(24)*abb316(96)
      abb316(101)=abb316(100)*spak1e7
      abb316(99)=abb316(99)-abb316(101)
      abb316(101)=abb316(48)*abb316(99)
      abb316(102)=abb316(97)*abb316(88)*spak2k4
      abb316(103)=abb316(100)*abb316(90)
      abb316(102)=abb316(103)+abb316(102)
      abb316(103)=abb316(102)*spbl5k2
      abb316(101)=abb316(101)+abb316(103)
      abb316(103)=abb316(80)*abb316(101)
      abb316(103)=abb316(103)+abb316(91)
      abb316(103)=spal6k7*spbk7l6*abb316(103)
      abb316(104)=abb316(85)*abb316(48)
      abb316(105)=abb316(26)*spbl5k2
      abb316(104)=abb316(104)+abb316(105)
      abb316(105)=spbk7l6*spak1k7
      abb316(106)=abb316(105)*abb316(104)
      abb316(107)=abb316(49)*abb316(5)
      abb316(108)=abb316(37)*abb316(5)
      abb316(107)=abb316(107)-abb316(108)
      abb316(109)=abb316(9)*abb316(23)
      abb316(110)=abb316(109)*c3
      abb316(111)=abb316(107)*abb316(110)
      abb316(112)=abb316(109)*abb316(108)*c1
      abb316(111)=abb316(111)+abb316(112)
      abb316(112)=-abb316(55)*abb316(111)
      abb316(113)=spbk7l6*spak2k7
      abb316(114)=abb316(112)*abb316(113)*abb316(46)
      abb316(106)=abb316(114)+abb316(106)
      abb316(106)=spbe7k1*abb316(106)
      abb316(114)=spak3k4*spbk7e7*spak2k7**2
      abb316(115)=-spbk7l6*abb316(112)*abb316(6)*abb316(114)
      abb316(103)=abb316(103)+abb316(115)+abb316(106)
      abb316(106)=-abb316(43)*abb316(113)*abb316(101)
      abb316(115)=-abb316(15)*abb316(97)
      abb316(100)=abb316(115)-abb316(100)
      abb316(115)=abb316(48)*abb316(100)
      abb316(116)=-abb316(75)*abb316(97)
      abb316(25)=abb316(25)*abb316(96)
      abb316(25)=-abb316(25)+abb316(116)
      abb316(96)=abb316(25)*spbl5k2
      abb316(96)=abb316(115)-abb316(96)
      abb316(58)=-abb316(96)*abb316(58)
      abb316(115)=es71*abb316(58)
      abb316(106)=abb316(106)+abb316(115)
      abb316(106)=spak1l6*abb316(106)
      abb316(115)=abb316(60)*abb316(17)
      abb316(42)=abb316(42)*abb316(4)
      abb316(39)=-abb316(39)+abb316(42)+abb316(115)
      abb316(39)=abb316(39)*abb316(7)
      abb316(42)=spak2k7*abb316(93)
      abb316(42)=-abb316(114)+abb316(42)
      abb316(93)=2.0_ki*spbk7k3
      abb316(42)=abb316(93)*abb316(39)*abb316(42)
      abb316(35)=abb316(42)+abb316(106)+abb316(82)+abb316(35)+2.0_ki*abb316(103)
      abb316(35)=2.0_ki*abb316(35)
      abb316(42)=-abb316(16)*abb316(21)
      abb316(82)=abb316(14)*spak2k4
      abb316(103)=abb316(24)*abb316(82)
      abb316(42)=abb316(42)-abb316(103)
      abb316(106)=abb316(42)*abb316(7)
      abb316(114)=abb316(67)*abb316(44)
      abb316(75)=-abb316(75)*abb316(114)
      abb316(67)=abb316(24)*abb316(67)
      abb316(115)=-spak2k4*abb316(67)
      abb316(75)=-abb316(106)+abb316(115)+abb316(75)
      abb316(75)=spbl5k2*abb316(75)
      abb316(115)=-abb316(16)*abb316(44)
      abb316(116)=abb316(14)*abb316(24)
      abb316(115)=abb316(115)-abb316(116)
      abb316(117)=abb316(115)*abb316(7)
      abb316(15)=-abb316(15)*abb316(114)
      abb316(15)=-abb316(117)+abb316(15)-abb316(67)
      abb316(48)=-abb316(15)*abb316(48)
      abb316(48)=abb316(48)+abb316(75)
      abb316(48)=abb316(105)*abb316(48)
      abb316(75)=spbl6k3*spak3k4
      abb316(118)=abb316(71)*abb316(75)
      abb316(119)=abb316(76)*spbl6k2
      abb316(118)=abb316(118)+abb316(119)
      abb316(119)=abb316(96)+abb316(118)
      abb316(120)=spak1l6*abb316(113)*abb316(119)
      abb316(121)=abb316(25)*abb316(28)
      abb316(122)=abb316(100)*abb316(45)
      abb316(123)=abb316(122)*spbl5k3
      abb316(121)=abb316(121)-abb316(123)-abb316(74)
      abb316(123)=spak1l6*abb316(121)
      abb316(124)=spak3k4*spak1k2**2
      abb316(56)=abb316(6)*abb316(56)*abb316(124)
      abb316(56)=abb316(56)+abb316(123)
      abb316(56)=spbl6k1*abb316(56)
      abb316(57)=-abb316(113)*abb316(57)
      abb316(48)=abb316(56)+abb316(120)+abb316(57)+abb316(48)
      abb316(56)=abb316(16)*spak2k4
      abb316(57)=abb316(38)*abb316(56)
      abb316(120)=abb316(34)*abb316(16)
      abb316(63)=abb316(63)*abb316(82)
      abb316(123)=abb316(63)*abb316(36)
      abb316(57)=-abb316(123)+abb316(57)-abb316(120)
      abb316(120)=abb316(79)*spak1k2
      abb316(123)=abb316(120)*abb316(57)
      abb316(16)=abb316(9)*abb316(16)
      abb316(8)=abb316(16)*abb316(8)
      abb316(21)=-abb316(8)*abb316(21)
      abb316(103)=abb316(103)*abb316(10)
      abb316(21)=-abb316(103)+abb316(21)
      abb316(103)=2.0_ki*abb316(6)
      abb316(103)=-abb316(21)*abb316(103)
      abb316(103)=abb316(25)+abb316(103)
      abb316(103)=abb316(103)*abb316(28)
      abb316(116)=abb316(116)*abb316(10)
      abb316(8)=abb316(44)*abb316(8)
      abb316(8)=abb316(116)+abb316(8)
      abb316(116)=abb316(8)*abb316(46)
      abb316(116)=-abb316(122)-2.0_ki*abb316(116)
      abb316(116)=spbl5k3*abb316(116)
      abb316(74)=-abb316(74)+abb316(116)-abb316(123)+abb316(103)
      abb316(74)=es71*abb316(74)
      abb316(103)=spak1k2*abb316(57)*abb316(7)
      abb316(116)=abb316(28)*abb316(6)
      abb316(21)=abb316(21)*abb316(116)
      abb316(8)=abb316(8)*abb316(47)
      abb316(8)=abb316(8)+abb316(103)+abb316(21)
      abb316(8)=abb316(8)*abb316(84)
      abb316(47)=-spbk7k3*spak2k7*abb316(65)
      abb316(84)=spbk3k1*abb316(62)*abb316(124)
      abb316(47)=abb316(84)+abb316(47)
      abb316(47)=abb316(79)*abb316(47)
      abb316(8)=abb316(8)+abb316(74)+abb316(47)+2.0_ki*abb316(48)
      abb316(8)=4.0_ki*abb316(8)
      abb316(47)=abb316(58)*spak1l6
      abb316(47)=-abb316(78)+abb316(47)+abb316(59)
      abb316(48)=abb316(102)*abb316(80)
      abb316(58)=abb316(81)+2.0_ki*abb316(48)
      abb316(58)=spbl5k2*abb316(58)
      abb316(59)=abb316(83)*abb316(99)
      abb316(74)=abb316(86)+2.0_ki*abb316(59)
      abb316(74)=spbl5k3*abb316(74)
      abb316(28)=abb316(28)*abb316(102)
      abb316(45)=abb316(99)*abb316(45)*spbl5k3
      abb316(28)=abb316(28)+abb316(45)
      abb316(45)=-abb316(28)*abb316(43)
      abb316(45)=abb316(45)+abb316(58)+abb316(74)+abb316(47)+2.0_ki*abb316(91)
      abb316(45)=4.0_ki*abb316(45)
      abb316(58)=8.0_ki*abb316(121)
      abb316(74)=-4.0_ki*abb316(91)
      abb316(78)=abb316(99)*spbe7l5
      abb316(84)=abb316(78)*abb316(113)
      abb316(124)=spak1k7*spbe7l6
      abb316(125)=abb316(124)*spak2e7
      abb316(126)=abb316(125)*spbk7l5
      abb316(127)=abb316(126)*abb316(100)
      abb316(84)=abb316(84)-abb316(127)
      abb316(127)=abb316(84)*spak4l6
      abb316(128)=abb316(124)*spal6e7
      abb316(129)=abb316(128)*abb316(76)
      abb316(130)=abb316(129)*spbk7l6
      abb316(131)=abb316(89)*spbe7l6
      abb316(132)=spal6k7*spbk7l6
      abb316(133)=abb316(132)*abb316(131)
      abb316(127)=-abb316(127)+abb316(130)-abb316(133)
      abb316(130)=spbk7e7*spak1k7
      abb316(66)=abb316(66)*abb316(130)
      abb316(133)=abb316(66)*abb316(57)
      abb316(134)=abb316(17)*abb316(9)
      abb316(135)=abb316(32)*abb316(134)
      abb316(108)=abb316(108)*abb316(9)
      abb316(136)=spak2k4*abb316(108)
      abb316(17)=abb316(136)*abb316(17)
      abb316(24)=abb316(109)*abb316(24)*abb316(5)
      abb316(31)=abb316(24)*abb316(31)
      abb316(17)=abb316(31)+abb316(135)-abb316(17)
      abb316(31)=spbe7k2*abb316(6)
      abb316(109)=abb316(31)*abb316(113)
      abb316(135)=abb316(17)*abb316(109)
      abb316(137)=abb316(32)*abb316(16)
      abb316(56)=abb316(108)*abb316(56)
      abb316(138)=abb316(9)*abb316(5)
      abb316(63)=abb316(63)*abb316(138)
      abb316(56)=-abb316(56)+abb316(63)+abb316(137)
      abb316(63)=abb316(125)*abb316(6)
      abb316(137)=abb316(63)*spbk7k2
      abb316(139)=abb316(137)*abb316(56)
      abb316(140)=spbe7l5*abb316(6)
      abb316(141)=abb316(22)*abb316(140)
      abb316(142)=es12-es712
      abb316(143)=abb316(142)+es71
      abb316(144)=abb316(143)*abb316(141)
      abb316(145)=spak4k7*spbe7l5
      abb316(146)=abb316(145)*spbk7l6
      abb316(147)=abb316(146)*abb316(85)
      abb316(148)=abb316(117)*abb316(124)
      abb316(149)=spak4e7*spbk7l5
      abb316(150)=abb316(148)*abb316(149)
      abb316(133)=-abb316(150)-abb316(135)+abb316(139)+abb316(144)+abb316(29)+a&
      &bb316(147)-abb316(133)+abb316(127)
      abb316(133)=8.0_ki*abb316(133)
      abb316(135)=spbk7l5*spak1k7
      abb316(139)=abb316(135)*abb316(25)
      abb316(144)=abb316(105)*abb316(76)
      abb316(147)=spak1k4*spbl6l5
      abb316(150)=abb316(147)*abb316(117)
      abb316(151)=abb316(100)*spak1k2
      abb316(152)=abb316(151)*spbl6l5
      abb316(153)=abb316(152)*spak4l6
      abb316(21)=-abb316(150)+abb316(139)-abb316(144)+abb316(153)+abb316(21)
      abb316(56)=abb316(56)*spak1k2
      abb316(56)=abb316(56)+abb316(21)+abb316(123)
      abb316(56)=16.0_ki*abb316(56)
      abb316(123)=abb316(102)*spbe7l5
      abb316(123)=abb316(123)+abb316(131)
      abb316(139)=16.0_ki*abb316(123)
      abb316(131)=8.0_ki*abb316(131)
      abb316(134)=abb316(107)*abb316(134)
      abb316(24)=abb316(24)*abb316(4)
      abb316(24)=abb316(24)+abb316(134)
      abb316(134)=spbe7k3*spak3k4
      abb316(24)=abb316(24)*abb316(134)*abb316(6)
      abb316(144)=abb316(113)*abb316(24)
      abb316(127)=abb316(127)-abb316(144)
      abb316(144)=spak2e7*abb316(57)*abb316(130)
      abb316(115)=abb316(115)*abb316(124)*abb316(149)
      abb316(150)=-abb316(41)*abb316(146)
      abb316(115)=abb316(150)+abb316(115)+abb316(144)
      abb316(115)=abb316(79)*abb316(115)
      abb316(87)=abb316(87)+2.0_ki*es71
      abb316(144)=-abb316(141)*abb316(87)
      abb316(16)=abb316(107)*abb316(16)
      abb316(64)=abb316(64)*abb316(9)
      abb316(16)=abb316(64)+abb316(16)
      abb316(64)=spbk7k3*spak3k4
      abb316(150)=2.0_ki*abb316(64)
      abb316(63)=-abb316(16)*abb316(63)*abb316(150)
      abb316(27)=abb316(63)-3.0_ki*abb316(29)+abb316(144)+abb316(115)+abb316(27&
      &)-2.0_ki*abb316(127)
      abb316(27)=4.0_ki*abb316(27)
      abb316(16)=spbl6k3*abb316(16)*abb316(46)
      abb316(16)=abb316(16)+abb316(103)+abb316(21)
      abb316(16)=16.0_ki*abb316(16)
      abb316(21)=8.0_ki*abb316(141)
      abb316(29)=-spbe7l6*abb316(104)
      abb316(29)=abb316(29)-abb316(47)
      abb316(29)=4.0_ki*abb316(29)
      abb316(48)=-abb316(81)-abb316(48)
      abb316(48)=spbl5k2*abb316(48)
      abb316(59)=-abb316(86)-abb316(59)
      abb316(59)=spbl5k3*abb316(59)
      abb316(28)=spbe7k1*abb316(28)
      abb316(63)=abb316(85)*abb316(134)
      abb316(26)=abb316(26)*spbe7k2
      abb316(26)=abb316(63)+abb316(26)
      abb316(63)=spbl6l5*abb316(26)
      abb316(28)=abb316(63)+abb316(28)+abb316(48)+abb316(59)-abb316(47)-abb316(&
      &91)
      abb316(28)=2.0_ki*abb316(28)
      abb316(47)=-4.0_ki*abb316(121)
      abb316(48)=4.0_ki*abb316(123)
      abb316(59)=abb316(73)*spbe7k3
      abb316(63)=abb316(77)*spbe7k2
      abb316(59)=abb316(59)+abb316(63)
      abb316(63)=2.0_ki*abb316(59)
      abb316(77)=es71*abb316(63)
      abb316(59)=4.0_ki*abb316(59)
      abb316(81)=8.0_ki*abb316(76)
      abb316(86)=abb316(81)*abb316(130)
      abb316(91)=-abb316(64)*abb316(148)
      abb316(103)=abb316(124)*abb316(7)
      abb316(42)=spbk7k2*abb316(42)*abb316(103)
      abb316(42)=abb316(91)+abb316(42)
      abb316(42)=4.0_ki*abb316(42)
      abb316(91)=spbk7k2*spak1k7
      abb316(57)=-abb316(57)*abb316(91)
      abb316(115)=abb316(64)*spak1k7
      abb316(62)=-abb316(62)*abb316(115)
      abb316(57)=abb316(57)+abb316(62)
      abb316(57)=abb316(79)*spak2e7*abb316(57)
      abb316(62)=es71*abb316(101)
      abb316(57)=abb316(62)+abb316(57)
      abb316(57)=2.0_ki*abb316(57)
      abb316(62)=4.0_ki*abb316(101)
      abb316(121)=2.0_ki*abb316(135)
      abb316(123)=abb316(121)*abb316(100)
      abb316(124)=abb316(123)*spak4e7
      abb316(124)=abb316(124)+abb316(40)
      abb316(124)=4.0_ki*abb316(124)
      abb316(127)=-2.0_ki*abb316(101)
      abb316(141)=abb316(115)*abb316(71)
      abb316(144)=abb316(91)*abb316(76)
      abb316(141)=abb316(141)+abb316(144)
      abb316(144)=-4.0_ki*abb316(141)
      abb316(115)=abb316(115)*abb316(100)
      abb316(91)=abb316(91)*abb316(25)
      abb316(91)=abb316(115)-abb316(91)
      abb316(115)=-4.0_ki*abb316(91)
      abb316(150)=-spbk7e7*abb316(104)
      abb316(153)=abb316(89)*spbk7e7
      abb316(87)=-abb316(153)*abb316(87)
      abb316(93)=-abb316(95)*abb316(93)
      abb316(95)=2.0_ki*spbk7k2
      abb316(92)=abb316(92)*abb316(95)
      abb316(87)=abb316(92)+abb316(93)+abb316(87)+abb316(150)
      abb316(87)=2.0_ki*abb316(87)
      abb316(92)=8.0_ki*abb316(153)
      abb316(26)=4.0_ki*spbk7l6*abb316(26)
      abb316(93)=abb316(134)*abb316(99)
      abb316(99)=abb316(102)*spbe7k2
      abb316(93)=abb316(93)+abb316(99)
      abb316(99)=-abb316(113)*abb316(93)
      abb316(102)=abb316(100)*abb316(64)
      abb316(150)=-spbk7k2*abb316(25)
      abb316(102)=abb316(150)+abb316(102)
      abb316(102)=abb316(125)*abb316(102)
      abb316(99)=abb316(102)+abb316(99)
      abb316(99)=4.0_ki*abb316(99)
      abb316(102)=-spbl6k3*abb316(122)
      abb316(122)=spbl6k2*spak1k2*abb316(25)
      abb316(102)=abb316(102)+abb316(122)
      abb316(102)=8.0_ki*abb316(102)
      abb316(122)=abb316(85)*spbe7l5
      abb316(125)=4.0_ki*abb316(122)
      abb316(150)=abb316(23)*c3
      abb316(60)=abb316(60)*abb316(150)
      abb316(23)=abb316(23)*c1
      abb316(153)=abb316(23)-abb316(150)
      abb316(154)=-abb316(38)*abb316(153)
      abb316(60)=abb316(60)-abb316(154)
      abb316(80)=abb316(80)*abb316(7)
      abb316(155)=-abb316(60)*abb316(80)
      abb316(156)=abb316(10)*abb316(2)
      abb316(157)=abb316(156)*abb316(153)
      abb316(158)=abb316(10)*NC
      abb316(159)=abb316(158)*abb316(150)
      abb316(157)=abb316(159)+abb316(157)
      abb316(157)=abb316(157)*abb316(140)
      abb316(159)=es71*abb316(157)
      abb316(160)=c3*abb316(49)*abb316(33)
      abb316(37)=abb316(33)*abb316(37)
      abb316(161)=c1-c3
      abb316(162)=abb316(161)*abb316(37)
      abb316(160)=abb316(160)+abb316(162)
      abb316(160)=abb316(54)*abb316(160)
      abb316(162)=-abb316(160)*abb316(66)
      abb316(163)=abb316(111)*abb316(109)
      abb316(155)=abb316(163)+abb316(159)+abb316(155)+abb316(162)
      abb316(155)=es34*abb316(155)
      abb316(159)=-c3*abb316(69)
      abb316(70)=abb316(70)*c1
      abb316(159)=abb316(159)-abb316(70)
      abb316(162)=abb316(159)*es34
      abb316(12)=c3*abb316(12)
      abb316(163)=abb316(13)*mB
      abb316(164)=abb316(12)*abb316(163)
      abb316(165)=-abb316(164)*abb316(50)
      abb316(11)=c1*abb316(11)*abb316(2)
      abb316(166)=abb316(4)*abb316(11)
      abb316(163)=abb316(163)*abb316(1)
      abb316(167)=abb316(166)*abb316(163)
      abb316(165)=abb316(165)-abb316(167)
      abb316(162)=abb316(162)-abb316(165)
      abb316(168)=abb316(162)*abb316(128)
      abb316(169)=spak1e7*c3
      abb316(170)=-abb316(169)*abb316(69)
      abb316(171)=abb316(70)*spak1e7
      abb316(170)=abb316(170)-abb316(171)
      abb316(171)=abb316(170)*spbe7l6
      abb316(172)=abb316(171)*es34
      abb316(173)=abb316(164)*spak1e7
      abb316(50)=-abb316(173)*abb316(50)
      abb316(167)=abb316(167)*spak1e7
      abb316(50)=abb316(50)-abb316(167)
      abb316(167)=abb316(50)*spbe7l6
      abb316(172)=abb316(172)-abb316(167)
      abb316(174)=-spal6k7*abb316(172)
      abb316(122)=-spak3k7*abb316(122)
      abb316(122)=abb316(122)+abb316(174)+abb316(168)
      abb316(122)=spbk7l6*abb316(122)
      abb316(161)=-abb316(161)*abb316(2)
      abb316(168)=c3*NC
      abb316(161)=abb316(161)-abb316(168)
      abb316(14)=abb316(14)*abb316(161)
      abb316(103)=abb316(103)*abb316(14)*abb316(149)
      abb316(44)=-abb316(150)*abb316(44)
      abb316(149)=abb316(23)*abb316(2)
      abb316(44)=abb316(44)-abb316(149)
      abb316(146)=abb316(7)*abb316(44)*abb316(146)
      abb316(103)=abb316(103)-abb316(146)
      abb316(146)=-abb316(169)*abb316(97)
      abb316(98)=abb316(98)*c1
      abb316(149)=abb316(98)*spak1e7
      abb316(146)=abb316(146)-abb316(149)
      abb316(149)=abb316(146)*spbe7l5
      abb316(161)=abb316(149)*abb316(113)
      abb316(97)=-c3*abb316(97)
      abb316(97)=abb316(97)-abb316(98)
      abb316(98)=-abb316(97)*abb316(126)
      abb316(98)=abb316(161)+abb316(98)
      abb316(98)=spak4l6*abb316(98)
      abb316(98)=abb316(98)+abb316(103)
      abb316(98)=spbk4k2*abb316(98)
      abb316(157)=abb316(157)*es34
      abb316(158)=abb316(156)-abb316(158)
      abb316(168)=abb316(13)*spak1e7
      abb316(169)=abb316(12)*abb316(168)
      abb316(174)=-abb316(169)*abb316(158)
      abb316(175)=abb316(1)*abb316(11)*abb316(10)
      abb316(176)=abb316(175)*abb316(168)
      abb316(174)=abb316(174)+abb316(176)
      abb316(174)=abb316(174)*abb316(140)
      abb316(157)=abb316(157)-abb316(174)
      abb316(142)=abb316(157)*abb316(142)
      abb316(176)=abb316(13)*abb316(5)
      abb316(177)=abb316(12)*abb316(176)
      abb316(37)=abb316(177)*abb316(37)
      abb316(166)=abb316(166)*abb316(1)
      abb316(176)=abb316(166)*abb316(176)
      abb316(178)=abb316(177)*abb316(49)
      abb316(176)=abb316(176)+abb316(178)
      abb316(33)=abb316(176)*abb316(33)
      abb316(33)=abb316(37)-abb316(33)
      abb316(37)=-abb316(33)*abb316(66)
      abb316(53)=abb316(177)*abb316(53)
      abb316(9)=abb316(176)*abb316(9)
      abb316(9)=abb316(53)-abb316(9)
      abb316(52)=abb316(54)*abb316(52)
      abb316(53)=-es34*abb316(52)
      abb316(53)=-abb316(9)+abb316(53)
      abb316(53)=abb316(53)*abb316(137)
      abb316(54)=spak3l6*abb316(84)
      abb316(84)=abb316(61)*abb316(169)
      abb316(166)=abb316(166)*abb316(168)
      abb316(36)=abb316(166)*abb316(36)
      abb316(36)=abb316(36)+abb316(84)
      abb316(84)=abb316(36)*abb316(80)
      abb316(168)=-es71*abb316(174)
      abb316(49)=abb316(138)*abb316(49)
      abb316(49)=abb316(49)-abb316(108)
      abb316(49)=abb316(49)*abb316(169)
      abb316(138)=abb316(166)*abb316(138)
      abb316(49)=abb316(49)+abb316(138)
      abb316(138)=-abb316(49)*abb316(109)
      abb316(148)=spak3e7*spbk7l5*abb316(148)
      abb316(37)=abb316(148)+abb316(54)+abb316(53)+abb316(155)+abb316(138)+abb3&
      &16(168)+abb316(84)+abb316(37)+abb316(98)+abb316(142)+abb316(122)
      abb316(37)=4.0_ki*abb316(37)
      abb316(52)=spak1k2*abb316(52)
      abb316(53)=-abb316(160)*abb316(120)
      abb316(54)=abb316(159)*abb316(105)
      abb316(84)=abb316(14)*abb316(10)
      abb316(98)=abb316(84)*abb316(116)
      abb316(122)=abb316(97)*abb316(135)
      abb316(52)=abb316(122)+abb316(98)+abb316(54)+abb316(52)+abb316(53)
      abb316(52)=es34*abb316(52)
      abb316(53)=abb316(97)*spbk4k2
      abb316(54)=spak4l6*spak1k2*abb316(53)
      abb316(98)=-spak1k3*abb316(117)
      abb316(54)=abb316(98)+abb316(54)
      abb316(54)=spbl6l5*abb316(54)
      abb316(9)=spak1k2*abb316(9)
      abb316(33)=-abb316(33)*abb316(120)
      abb316(98)=-abb316(165)*abb316(105)
      abb316(12)=-abb316(12)*abb316(13)*abb316(158)
      abb316(13)=abb316(13)*abb316(175)
      abb316(12)=abb316(13)+abb316(12)
      abb316(12)=abb316(12)*abb316(116)
      abb316(13)=abb316(5)*abb316(2)
      abb316(13)=abb316(30)-abb316(13)
      abb316(30)=abb316(13)*abb316(164)
      abb316(11)=abb316(5)*abb316(11)*abb316(163)
      abb316(30)=abb316(30)+abb316(11)
      abb316(122)=abb316(30)*abb316(135)
      abb316(14)=abb316(7)*abb316(14)*abb316(147)
      abb316(138)=-spbk4k2*abb316(14)
      abb316(142)=spak3l6*abb316(152)
      abb316(9)=abb316(142)+abb316(138)+abb316(52)+abb316(122)+abb316(12)+abb31&
      &6(98)+abb316(9)+abb316(33)+abb316(54)
      abb316(9)=8.0_ki*abb316(9)
      abb316(12)=abb316(171)+abb316(149)
      abb316(12)=abb316(12)*es34
      abb316(13)=abb316(13)*abb316(173)
      abb316(11)=abb316(11)*spak1e7
      abb316(11)=abb316(11)+abb316(13)
      abb316(11)=abb316(11)*spbe7l5
      abb316(11)=abb316(11)+abb316(12)-abb316(167)
      abb316(12)=-8.0_ki*abb316(11)
      abb316(13)=4.0_ki*abb316(172)
      abb316(33)=-4.0_ki*abb316(157)
      abb316(11)=2.0_ki*abb316(11)
      abb316(52)=-4.0_ki*abb316(130)*abb316(162)
      abb316(54)=es34*abb316(60)
      abb316(36)=-abb316(36)+abb316(54)
      abb316(36)=abb316(7)*abb316(36)
      abb316(54)=abb316(121)*spak4e7
      abb316(60)=abb316(54)*abb316(53)
      abb316(98)=spak3e7*abb316(123)
      abb316(36)=abb316(98)+abb316(60)+abb316(36)
      abb316(36)=2.0_ki*abb316(36)
      abb316(60)=-es34*abb316(170)
      abb316(50)=abb316(50)+abb316(60)
      abb316(50)=4.0_ki*spbk7e7*abb316(50)
      abb316(60)=abb316(79)*spbe7l5
      abb316(44)=abb316(60)*abb316(44)
      abb316(79)=spbk4k2*abb316(44)
      abb316(19)=abb316(10)*abb316(19)
      abb316(10)=abb316(10)*abb316(20)
      abb316(19)=abb316(10)-abb316(19)
      abb316(19)=abb316(150)*abb316(19)
      abb316(10)=abb316(23)*abb316(10)
      abb316(10)=abb316(19)-abb316(10)
      abb316(10)=abb316(10)*abb316(140)
      abb316(19)=abb316(10)*abb316(143)
      abb316(20)=abb316(34)*abb316(150)
      abb316(23)=abb316(154)*spak2k4
      abb316(20)=abb316(20)-abb316(23)
      abb316(23)=abb316(20)*abb316(80)
      abb316(34)=abb316(82)*c1
      abb316(38)=abb316(34)*abb316(38)
      abb316(80)=abb316(82)*c3
      abb316(61)=abb316(61)*abb316(80)
      abb316(38)=abb316(38)+abb316(61)
      abb316(61)=abb316(38)*abb316(66)
      abb316(66)=abb316(153)*abb316(136)
      abb316(32)=abb316(32)*abb316(110)
      abb316(32)=abb316(66)+abb316(32)
      abb316(66)=-abb316(32)*abb316(109)
      abb316(98)=abb316(34)*abb316(108)
      abb316(51)=abb316(107)*abb316(51)*abb316(82)
      abb316(51)=abb316(98)+abb316(51)
      abb316(82)=abb316(51)*abb316(137)
      abb316(98)=abb316(68)*NC
      abb316(68)=abb316(68)*abb316(2)
      abb316(98)=abb316(98)-abb316(68)
      abb316(98)=c3*abb316(98)
      abb316(68)=abb316(68)*c1
      abb316(68)=abb316(98)+abb316(68)
      abb316(98)=abb316(68)*abb316(128)*spbk7l6
      abb316(69)=abb316(69)*abb316(90)*c3
      abb316(70)=abb316(70)*abb316(90)
      abb316(69)=abb316(70)+abb316(69)
      abb316(70)=abb316(69)*spbe7l6
      abb316(107)=-abb316(70)*abb316(132)
      abb316(19)=abb316(82)+abb316(107)+abb316(98)+abb316(66)+abb316(19)-abb316&
      &(103)+abb316(23)+abb316(61)
      abb316(19)=spbk4k3*abb316(19)
      abb316(23)=abb316(67)*spak1e7
      abb316(61)=abb316(114)*abb316(88)
      abb316(23)=abb316(85)+abb316(23)+abb316(61)
      abb316(23)=abb316(23)*spbe7l5
      abb316(61)=abb316(113)*abb316(23)
      abb316(66)=abb316(15)*abb316(126)
      abb316(67)=-spbk4k3*abb316(161)
      abb316(82)=abb316(97)*spbk4k3
      abb316(85)=abb316(126)*abb316(82)
      abb316(67)=abb316(67)+abb316(85)
      abb316(67)=spak4l6*abb316(67)
      abb316(19)=abb316(67)+abb316(66)+abb316(61)+abb316(19)
      abb316(19)=4.0_ki*abb316(19)
      abb316(51)=-spak1k2*abb316(51)
      abb316(38)=abb316(38)*abb316(120)
      abb316(61)=-abb316(80)*abb316(158)
      abb316(34)=abb316(156)*abb316(34)
      abb316(34)=abb316(34)+abb316(61)
      abb316(34)=abb316(34)*abb316(116)
      abb316(61)=abb316(68)*abb316(105)
      abb316(66)=abb316(97)*spak2k4
      abb316(67)=-abb316(66)*abb316(135)
      abb316(14)=abb316(14)+abb316(67)+abb316(34)+abb316(61)+abb316(51)+abb316(&
      &38)
      abb316(14)=spbk4k3*abb316(14)
      abb316(34)=-spak4l6*abb316(82)
      abb316(15)=abb316(34)-abb316(15)
      abb316(15)=spbl6l5*spak1k2*abb316(15)
      abb316(14)=abb316(15)+abb316(14)
      abb316(14)=8.0_ki*abb316(14)
      abb316(15)=spbe7l5*abb316(97)*abb316(90)
      abb316(15)=abb316(15)-abb316(70)
      abb316(34)=8.0_ki*spbk4k3
      abb316(38)=abb316(15)*abb316(34)
      abb316(51)=4.0_ki*spbk4k3
      abb316(61)=abb316(70)*abb316(51)
      abb316(10)=-abb316(51)*abb316(10)
      abb316(15)=-2.0_ki*spbk4k3*abb316(15)
      abb316(67)=-abb316(68)*abb316(130)*abb316(51)
      abb316(20)=-spbk4k3*abb316(7)*abb316(20)
      abb316(70)=-spak2e7*abb316(123)
      abb316(54)=-abb316(54)*abb316(82)
      abb316(20)=abb316(54)+abb316(20)+abb316(70)
      abb316(20)=2.0_ki*abb316(20)
      abb316(51)=-spbk7e7*abb316(69)*abb316(51)
      abb316(44)=-spbk4k3*abb316(44)
      abb316(41)=abb316(41)*abb316(60)
      abb316(40)=-spbe7k2*abb316(40)
      abb316(54)=abb316(134)*abb316(39)
      abb316(40)=abb316(54)+abb316(40)
      abb316(40)=spak2k7*abb316(40)
      abb316(54)=abb316(101)*spbe7k1
      abb316(60)=spak1k7*abb316(54)
      abb316(40)=abb316(60)+abb316(40)
      abb316(40)=4.0_ki*abb316(40)
      abb316(60)=8.0_ki*spak1k7*abb316(96)
      abb316(69)=abb316(78)*spak4k7
      abb316(69)=8.0_ki*abb316(69)
      abb316(70)=abb316(89)*spbe7k2
      abb316(72)=abb316(72)*abb316(134)
      abb316(70)=abb316(70)+abb316(72)
      abb316(72)=4.0_ki*abb316(70)
      abb316(80)=4.0_ki*abb316(93)
      abb316(85)=abb316(145)*abb316(146)
      abb316(88)=-spbk4k2*abb316(85)
      abb316(89)=-spak3k7*abb316(78)
      abb316(88)=abb316(88)+abb316(89)
      abb316(88)=4.0_ki*abb316(88)
      abb316(89)=spak2k7*abb316(78)
      abb316(85)=spbk4k3*abb316(85)
      abb316(85)=abb316(89)+abb316(85)
      abb316(85)=4.0_ki*abb316(85)
      abb316(89)=2.0_ki*abb316(70)
      abb316(90)=-spbk7l6*abb316(89)
      abb316(96)=-spbk7e7*abb316(101)
      abb316(90)=abb316(96)+abb316(90)
      abb316(90)=spal6k7*abb316(90)
      abb316(54)=spak1l6*abb316(54)
      abb316(83)=abb316(6)*abb316(83)
      abb316(96)=-spbe7k1*abb316(46)
      abb316(83)=abb316(83)+abb316(96)
      abb316(83)=abb316(112)*abb316(83)
      abb316(64)=abb316(64)*abb316(71)
      abb316(96)=abb316(128)*abb316(64)
      abb316(95)=abb316(129)*abb316(95)
      abb316(54)=abb316(95)+2.0_ki*abb316(96)+abb316(90)+abb316(54)+abb316(83)
      abb316(54)=2.0_ki*abb316(54)
      abb316(83)=-spak1l6*abb316(118)
      abb316(83)=abb316(83)+abb316(141)
      abb316(83)=8.0_ki*abb316(83)
      abb316(70)=-8.0_ki*abb316(70)
      abb316(17)=abb316(17)*abb316(31)
      abb316(90)=abb316(78)*spak4l6
      abb316(17)=abb316(17)+abb316(90)
      abb316(17)=4.0_ki*abb316(17)
      abb316(24)=-abb316(24)-abb316(90)
      abb316(24)=4.0_ki*abb316(24)
      abb316(90)=2.0_ki*abb316(93)
      abb316(95)=-es34*abb316(111)
      abb316(49)=abb316(49)+abb316(95)
      abb316(49)=abb316(31)*abb316(49)
      abb316(95)=abb316(149)*spak4l6
      abb316(96)=-spbk4k2*abb316(95)
      abb316(78)=-spak3l6*abb316(78)
      abb316(49)=abb316(78)+abb316(96)+abb316(49)
      abb316(49)=2.0_ki*abb316(49)
      abb316(32)=abb316(32)*abb316(31)
      abb316(32)=abb316(95)+abb316(32)
      abb316(32)=spbk4k3*abb316(32)
      abb316(23)=-abb316(23)+abb316(32)
      abb316(23)=2.0_ki*abb316(23)
      abb316(22)=abb316(31)*abb316(22)
      abb316(18)=abb316(18)*abb316(134)
      abb316(18)=abb316(22)+abb316(18)
      abb316(18)=4.0_ki*abb316(18)
      abb316(22)=abb316(143)*abb316(18)
      abb316(31)=abb316(46)*abb316(55)*abb316(84)
      abb316(31)=abb316(31)+abb316(91)
      abb316(31)=8.0_ki*abb316(31)
      abb316(32)=-8.0_ki*abb316(93)
      abb316(46)=abb316(100)*spak1k4
      abb316(46)=16.0_ki*abb316(46)
      abb316(53)=spak1k4*abb316(53)
      abb316(55)=spak1k3*abb316(100)
      abb316(53)=abb316(53)+abb316(55)
      abb316(53)=8.0_ki*abb316(53)
      abb316(55)=-spak1k4*abb316(82)
      abb316(55)=-abb316(151)+abb316(55)
      abb316(55)=8.0_ki*abb316(55)
      abb316(39)=-2.0_ki*abb316(39)*abb316(94)
      abb316(65)=-8.0_ki*abb316(7)*abb316(65)
      abb316(78)=-8.0_ki*spak2k7*abb316(119)
      abb316(43)=-abb316(104)*abb316(43)
      abb316(82)=es71-es712
      abb316(82)=abb316(76)*abb316(82)
      abb316(64)=spak2k7*abb316(64)
      abb316(73)=-spbk3k1*abb316(73)
      abb316(64)=abb316(73)+abb316(64)+abb316(82)
      abb316(64)=8.0_ki*abb316(64)
      abb316(73)=16.0_ki*abb316(76)
      abb316(76)=8.0_ki*abb316(162)
      abb316(68)=abb316(68)*abb316(34)
      abb316(82)=8.0_ki*spak3k4
      abb316(71)=abb316(82)*abb316(71)
      abb316(75)=-abb316(117)*abb316(75)
      abb316(84)=spbl6k2*abb316(106)
      abb316(75)=abb316(75)+abb316(84)
      abb316(75)=8.0_ki*abb316(75)
      abb316(84)=16.0_ki*abb316(25)
      abb316(91)=-32.0_ki*abb316(25)
      abb316(93)=-es34*abb316(97)
      abb316(30)=abb316(93)-abb316(30)
      abb316(30)=8.0_ki*abb316(30)
      abb316(34)=abb316(66)*abb316(34)
      abb316(66)=abb316(82)*abb316(100)
      abb316(25)=8.0_ki*abb316(25)
      R2d316=0.0_ki
      rat2 = rat2 + R2d316
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='316' value='", &
          & R2d316, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd316h3
