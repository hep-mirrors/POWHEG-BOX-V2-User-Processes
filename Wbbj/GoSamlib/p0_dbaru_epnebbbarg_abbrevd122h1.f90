module     p0_dbaru_epnebbbarg_abbrevd122h1
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(184), public :: abb122
   complex(ki), public :: R2d122
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
      abb122(1)=1.0_ki/(-mB**2+es67)
      abb122(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb122(3)=NC**(-1)
      abb122(4)=es234**(-1)
      abb122(5)=spak2l5**(-1)
      abb122(6)=spbl5k2**(-1)
      abb122(7)=spbl6k2**(-1)
      abb122(8)=spak2l6**(-1)
      abb122(9)=sqrt(mB**2)
      abb122(10)=mB**2
      abb122(11)=spbk3k2*abb122(4)
      abb122(12)=abb122(10)*abb122(11)
      abb122(13)=TR*gW
      abb122(13)=abb122(13)**2*i_*CVDU*abb122(2)*abb122(1)
      abb122(14)=abb122(12)*abb122(13)
      abb122(15)=abb122(14)*abb122(3)
      abb122(16)=abb122(5)*spak1k2
      abb122(17)=abb122(16)*spal6e7
      abb122(18)=abb122(15)*abb122(17)
      abb122(11)=abb122(13)*abb122(11)
      abb122(19)=abb122(3)*mB
      abb122(20)=abb122(19)*abb122(9)
      abb122(21)=abb122(20)*abb122(11)
      abb122(22)=abb122(21)*abb122(17)
      abb122(23)=abb122(18)-abb122(22)
      abb122(24)=2.0_ki*c3
      abb122(23)=abb122(23)*abb122(24)
      abb122(25)=abb122(3)**2
      abb122(26)=abb122(25)*abb122(13)
      abb122(12)=abb122(26)*abb122(12)
      abb122(12)=abb122(12)+abb122(14)
      abb122(27)=spal6e7*c2
      abb122(28)=abb122(12)*abb122(27)
      abb122(29)=abb122(28)*abb122(16)
      abb122(25)=abb122(11)*abb122(25)
      abb122(30)=abb122(25)+abb122(11)
      abb122(31)=mB*abb122(30)
      abb122(32)=abb122(16)*abb122(9)
      abb122(33)=abb122(32)*abb122(27)
      abb122(34)=abb122(33)*abb122(31)
      abb122(23)=abb122(23)-abb122(29)+abb122(34)
      abb122(35)=spak2k4*spbe7k2*abb122(23)
      abb122(36)=abb122(30)*abb122(27)
      abb122(37)=abb122(11)*spal6e7
      abb122(38)=abb122(24)*abb122(3)
      abb122(39)=abb122(37)*abb122(38)
      abb122(40)=abb122(36)-abb122(39)
      abb122(41)=spbl5k2*spak2k4
      abb122(42)=spbl5k3*spak3k4
      abb122(41)=abb122(41)-abb122(42)
      abb122(43)=abb122(41)*abb122(40)
      abb122(44)=-spbe7l6*abb122(43)
      abb122(45)=abb122(44)*spak1l6
      abb122(46)=abb122(31)*abb122(9)
      abb122(47)=spbe7k2*abb122(7)
      abb122(48)=abb122(47)*c2
      abb122(49)=abb122(46)*abb122(48)
      abb122(50)=abb122(21)*abb122(24)
      abb122(51)=abb122(50)*abb122(47)
      abb122(51)=abb122(51)-abb122(49)
      abb122(52)=-abb122(51)*abb122(41)
      abb122(53)=abb122(52)*spak1e7
      abb122(54)=abb122(47)*spak1k2
      abb122(55)=abb122(54)*abb122(28)
      abb122(14)=abb122(38)*abb122(14)
      abb122(56)=abb122(47)*spal6e7
      abb122(57)=abb122(56)*spak1k2
      abb122(58)=abb122(57)*abb122(14)
      abb122(58)=abb122(58)-abb122(55)
      abb122(59)=abb122(58)*abb122(8)
      abb122(60)=abb122(41)*abb122(59)
      abb122(35)=-abb122(45)+abb122(53)+abb122(35)-abb122(60)
      abb122(45)=spak1l5*spbl5k1
      abb122(53)=-abb122(35)*abb122(45)
      abb122(60)=spak1k2*abb122(5)**2
      abb122(61)=abb122(60)*spbe7k2
      abb122(62)=mB**4
      abb122(63)=abb122(61)*abb122(62)
      abb122(64)=abb122(3)*abb122(63)*abb122(37)
      abb122(65)=abb122(9)*spal6e7
      abb122(66)=abb122(61)*abb122(65)
      abb122(67)=mB**3
      abb122(68)=abb122(67)*abb122(11)
      abb122(69)=abb122(68)*abb122(3)
      abb122(70)=abb122(66)*abb122(69)
      abb122(64)=abb122(64)-abb122(70)
      abb122(64)=abb122(64)*abb122(24)
      abb122(70)=abb122(67)*abb122(25)
      abb122(70)=abb122(70)+abb122(68)
      abb122(71)=abb122(70)*abb122(9)
      abb122(25)=abb122(62)*abb122(25)
      abb122(72)=abb122(62)*abb122(11)
      abb122(25)=abb122(25)+abb122(72)
      abb122(73)=abb122(25)-abb122(71)
      abb122(61)=abb122(61)*abb122(27)
      abb122(73)=abb122(61)*abb122(73)
      abb122(64)=abb122(64)-abb122(73)
      abb122(73)=abb122(6)*spak2k4
      abb122(64)=abb122(64)*abb122(73)
      abb122(74)=abb122(12)*abb122(48)
      abb122(75)=abb122(14)*abb122(47)
      abb122(75)=abb122(75)-abb122(74)
      abb122(75)=abb122(5)*abb122(75)
      abb122(76)=abb122(9)**2
      abb122(77)=spak1e7*abb122(76)*abb122(75)
      abb122(78)=abb122(46)*abb122(27)
      abb122(79)=abb122(11)*abb122(24)
      abb122(80)=abb122(79)*abb122(19)
      abb122(81)=abb122(80)*abb122(65)
      abb122(78)=abb122(78)-abb122(81)
      abb122(78)=abb122(78)*abb122(5)
      abb122(81)=spak1l6*spbe7l6
      abb122(82)=-abb122(78)*abb122(81)
      abb122(77)=abb122(82)+abb122(77)
      abb122(77)=spak2k4*abb122(77)
      abb122(82)=abb122(47)*abb122(16)
      abb122(83)=abb122(82)*abb122(27)
      abb122(84)=abb122(71)*abb122(83)
      abb122(68)=abb122(68)*abb122(38)
      abb122(85)=abb122(68)*abb122(9)
      abb122(86)=abb122(17)*abb122(47)
      abb122(87)=abb122(85)*abb122(86)
      abb122(84)=abb122(84)-abb122(87)
      abb122(87)=abb122(8)*spak2k4
      abb122(88)=abb122(84)*abb122(87)
      abb122(77)=-abb122(88)-abb122(64)+abb122(77)
      abb122(77)=es12*abb122(77)
      abb122(89)=abb122(13)*abb122(3)
      abb122(90)=abb122(89)*abb122(4)
      abb122(91)=abb122(90)*abb122(24)
      abb122(92)=abb122(91)*abb122(62)
      abb122(93)=spbk3k2**2
      abb122(94)=abb122(56)*abb122(92)*abb122(93)
      abb122(95)=abb122(26)*abb122(4)
      abb122(96)=abb122(13)*abb122(4)
      abb122(95)=abb122(95)+abb122(96)
      abb122(97)=abb122(62)*abb122(95)
      abb122(98)=abb122(93)*abb122(97)
      abb122(99)=abb122(27)*abb122(47)
      abb122(100)=abb122(98)*abb122(99)
      abb122(94)=abb122(94)-abb122(100)
      abb122(100)=abb122(8)*abb122(5)*spak1k2**2
      abb122(101)=abb122(94)*abb122(100)
      abb122(102)=abb122(67)*abb122(95)
      abb122(103)=abb122(102)*abb122(93)
      abb122(104)=abb122(16)*c2
      abb122(105)=abb122(104)*abb122(47)
      abb122(106)=-abb122(103)*abb122(105)
      abb122(107)=abb122(67)*abb122(93)*abb122(91)
      abb122(108)=abb122(82)*abb122(107)
      abb122(106)=abb122(106)+abb122(108)
      abb122(106)=spak1e7*abb122(9)*abb122(106)
      abb122(108)=abb122(10)*abb122(95)
      abb122(109)=abb122(108)*abb122(27)*abb122(16)
      abb122(110)=abb122(91)*abb122(10)
      abb122(111)=abb122(17)*abb122(110)
      abb122(111)=abb122(111)-abb122(109)
      abb122(111)=abb122(93)*abb122(111)
      abb122(112)=abb122(111)*abb122(81)
      abb122(101)=abb122(112)+abb122(101)+abb122(106)
      abb122(106)=spbl5k1*spak3k4
      abb122(112)=abb122(106)*abb122(6)
      abb122(101)=abb122(112)*abb122(101)
      abb122(113)=abb122(14)*abb122(82)
      abb122(114)=abb122(105)*abb122(12)
      abb122(113)=abb122(113)-abb122(114)
      abb122(115)=abb122(113)*spae7k7
      abb122(116)=spak2k4*abb122(115)*abb122(45)
      abb122(117)=abb122(60)*abb122(47)
      abb122(118)=abb122(72)*abb122(38)
      abb122(119)=abb122(117)*abb122(118)
      abb122(120)=abb122(60)*abb122(48)
      abb122(121)=abb122(120)*abb122(25)
      abb122(119)=abb122(119)-abb122(121)
      abb122(121)=abb122(119)*spae7k7
      abb122(122)=es12*abb122(73)*abb122(121)
      abb122(116)=abb122(116)+abb122(122)
      abb122(116)=spbk7k2*abb122(116)
      abb122(122)=abb122(99)*abb122(71)
      abb122(123)=abb122(65)*abb122(47)
      abb122(124)=-abb122(123)*abb122(68)
      abb122(122)=abb122(122)+abb122(124)
      abb122(122)=spak3k4*abb122(122)*abb122(100)
      abb122(124)=abb122(113)*abb122(76)
      abb122(125)=spak1e7*spak3k4
      abb122(126)=-abb122(124)*abb122(125)
      abb122(127)=abb122(50)*abb122(17)
      abb122(127)=abb122(127)-abb122(34)
      abb122(128)=abb122(127)*spak3k4
      abb122(129)=spak1k7*spbk7e7
      abb122(130)=abb122(129)-abb122(81)
      abb122(131)=abb122(128)*abb122(130)
      abb122(122)=abb122(122)+abb122(126)+abb122(131)
      abb122(122)=spbk3k1*abb122(122)
      abb122(126)=abb122(106)*spak1l5
      abb122(131)=-abb122(115)*abb122(126)
      abb122(132)=es12*abb122(6)*spak3k4
      abb122(121)=-abb122(132)*abb122(121)
      abb122(121)=abb122(131)+abb122(121)
      abb122(121)=spbk7k3*abb122(121)
      abb122(111)=-abb122(111)*abb122(112)
      abb122(112)=es12*spak2k4
      abb122(78)=abb122(78)*abb122(112)
      abb122(78)=abb122(78)+abb122(111)
      abb122(78)=spbk7e7*abb122(78)
      abb122(111)=abb122(40)*spbk7e7
      abb122(131)=-abb122(111)*abb122(41)
      abb122(45)=-abb122(131)*abb122(45)
      abb122(45)=abb122(45)+abb122(78)
      abb122(45)=spak1k7*abb122(45)
      abb122(78)=-abb122(127)*abb122(126)
      abb122(133)=abb122(27)*abb122(71)
      abb122(68)=-abb122(65)*abb122(68)
      abb122(68)=abb122(133)+abb122(68)
      abb122(132)=abb122(132)*abb122(60)
      abb122(68)=abb122(68)*abb122(132)
      abb122(68)=abb122(78)+abb122(68)
      abb122(68)=spbe7k3*abb122(68)
      abb122(78)=abb122(28)*abb122(82)
      abb122(133)=abb122(86)*abb122(14)
      abb122(78)=abb122(78)-abb122(133)
      abb122(126)=-abb122(78)*abb122(126)
      abb122(133)=-abb122(25)*abb122(99)
      abb122(134)=abb122(56)*abb122(118)
      abb122(133)=abb122(133)+abb122(134)
      abb122(132)=abb122(133)*abb122(132)
      abb122(126)=abb122(126)+abb122(132)
      abb122(126)=spbl6k3*abb122(126)
      abb122(45)=abb122(126)+abb122(121)+abb122(68)+abb122(122)+abb122(116)+abb&
      &122(45)+abb122(77)+abb122(53)+abb122(101)
      abb122(45)=4.0_ki*abb122(45)
      abb122(21)=abb122(15)-abb122(21)
      abb122(53)=abb122(21)*abb122(24)
      abb122(68)=c2*abb122(46)
      abb122(77)=c2*abb122(12)
      abb122(77)=-abb122(53)+abb122(77)-abb122(68)
      abb122(77)=spak1l6*abb122(5)*abb122(77)
      abb122(101)=abb122(7)*c2
      abb122(116)=abb122(12)*abb122(101)
      abb122(121)=abb122(14)*abb122(7)
      abb122(121)=abb122(121)-abb122(116)
      abb122(122)=-abb122(5)*abb122(121)
      abb122(126)=spbk7k2*spak1k7*abb122(122)
      abb122(77)=abb122(77)+abb122(126)
      abb122(77)=abb122(112)*abb122(77)
      abb122(32)=abb122(32)*abb122(19)
      abb122(126)=abb122(32)*abb122(11)
      abb122(132)=abb122(15)*abb122(16)
      abb122(126)=abb122(132)-abb122(126)
      abb122(126)=abb122(126)*abb122(24)
      abb122(132)=abb122(12)*abb122(104)
      abb122(133)=abb122(46)*abb122(104)
      abb122(126)=-abb122(126)+abb122(132)-abb122(133)
      abb122(132)=-spak1l6*abb122(126)
      abb122(134)=abb122(16)*abb122(7)
      abb122(135)=abb122(134)*c2
      abb122(12)=abb122(135)*abb122(12)
      abb122(136)=abb122(14)*abb122(134)
      abb122(12)=abb122(136)-abb122(12)
      abb122(136)=abb122(12)*spbk7k2
      abb122(137)=spak1k7*abb122(136)
      abb122(132)=abb122(132)+abb122(137)
      abb122(137)=spbk3k1*spak3k4
      abb122(132)=abb122(132)*abb122(137)
      abb122(77)=abb122(132)+abb122(77)
      abb122(77)=8.0_ki*abb122(77)
      abb122(125)=abb122(125)*spbk3k1
      abb122(132)=abb122(113)*abb122(125)
      abb122(138)=abb122(112)*spak1e7
      abb122(75)=abb122(75)*abb122(138)
      abb122(75)=abb122(75)-abb122(132)
      abb122(75)=8.0_ki*abb122(75)
      abb122(18)=-abb122(18)+2.0_ki*abb122(22)
      abb122(18)=abb122(18)*abb122(24)
      abb122(18)=abb122(18)+abb122(29)-2.0_ki*abb122(34)
      abb122(22)=spak4l6*spbe7l6
      abb122(34)=spak4k7*spbk7e7
      abb122(22)=abb122(22)-abb122(34)
      abb122(34)=-abb122(18)*abb122(22)
      abb122(132)=2.0_ki*abb122(9)
      abb122(139)=abb122(132)*abb122(82)
      abb122(140)=abb122(139)*abb122(15)
      abb122(141)=abb122(69)*abb122(82)
      abb122(140)=abb122(140)-abb122(141)
      abb122(142)=abb122(24)*abb122(9)
      abb122(140)=abb122(140)*abb122(142)
      abb122(143)=abb122(132)*abb122(114)
      abb122(144)=abb122(70)*abb122(105)
      abb122(143)=abb122(143)-abb122(144)
      abb122(143)=abb122(143)*abb122(9)
      abb122(140)=abb122(140)-abb122(143)
      abb122(143)=abb122(140)*spak4e7
      abb122(145)=abb122(115)*spbk7l5
      abb122(146)=abb122(78)*spbl6l5
      abb122(147)=abb122(127)*spbe7l5
      abb122(145)=abb122(146)+abb122(145)+abb122(147)
      abb122(146)=abb122(145)*spak4l5
      abb122(147)=abb122(99)*abb122(46)
      abb122(80)=abb122(123)*abb122(80)
      abb122(80)=abb122(147)-abb122(80)
      abb122(147)=spbl6l5*spak1k4
      abb122(148)=abb122(80)*abb122(147)
      abb122(149)=spbk7k2*spae7k7
      abb122(150)=abb122(149)*abb122(73)
      abb122(119)=abb122(150)*abb122(119)
      abb122(151)=spbk7l5*spae7k7
      abb122(152)=abb122(151)*spak1k4
      abb122(153)=abb122(152)*abb122(51)
      abb122(154)=-abb122(76)*abb122(40)
      abb122(155)=spbe7l5*spak1k4
      abb122(156)=abb122(154)*abb122(155)
      abb122(34)=-abb122(146)+abb122(156)-abb122(64)+abb122(153)-abb122(143)+ab&
      &b122(148)+abb122(119)+abb122(34)
      abb122(64)=abb122(3)*abb122(86)*abb122(72)
      abb122(72)=abb122(132)*abb122(86)
      abb122(69)=abb122(72)*abb122(69)
      abb122(64)=abb122(64)-abb122(69)
      abb122(64)=abb122(64)*abb122(24)
      abb122(69)=abb122(132)*abb122(83)
      abb122(70)=abb122(69)*abb122(70)
      abb122(119)=abb122(25)*abb122(83)
      abb122(64)=abb122(64)+abb122(70)-abb122(119)
      abb122(64)=abb122(64)*abb122(87)
      abb122(64)=abb122(64)-abb122(34)
      abb122(64)=8.0_ki*abb122(64)
      abb122(70)=2.0_ki*abb122(126)
      abb122(143)=abb122(70)*spak4l6
      abb122(21)=-abb122(24)*abb122(7)*abb122(21)
      abb122(146)=abb122(46)*abb122(101)
      abb122(21)=abb122(21)-abb122(146)+abb122(116)
      abb122(116)=spbl5k2*spak1k4
      abb122(148)=abb122(21)*abb122(116)
      abb122(153)=2.0_ki*abb122(12)
      abb122(156)=spbk7k2*spak4k7
      abb122(157)=abb122(156)*abb122(153)
      abb122(30)=abb122(30)*c2
      abb122(38)=abb122(38)*abb122(11)
      abb122(30)=abb122(38)-abb122(30)
      abb122(38)=abb122(30)*spbk7l5
      abb122(158)=spak1k4*abb122(38)*spal6k7
      abb122(143)=-abb122(158)+abb122(148)+abb122(157)-abb122(143)
      abb122(143)=16.0_ki*abb122(143)
      abb122(148)=2.0_ki*spak4e7
      abb122(157)=abb122(148)*abb122(113)
      abb122(158)=abb122(155)*abb122(40)
      abb122(157)=abb122(158)+abb122(157)
      abb122(157)=16.0_ki*abb122(157)
      abb122(158)=-abb122(86)*abb122(118)
      abb122(119)=abb122(119)+abb122(158)
      abb122(42)=abb122(42)*abb122(6)
      abb122(119)=abb122(8)*abb122(119)*abb122(42)
      abb122(158)=spbe7k2*abb122(7)**2
      abb122(159)=abb122(158)*abb122(104)
      abb122(160)=abb122(159)*abb122(25)
      abb122(161)=abb122(158)*abb122(16)
      abb122(162)=abb122(161)*abb122(118)
      abb122(160)=abb122(160)-abb122(162)
      abb122(162)=abb122(160)*abb122(8)
      abb122(163)=abb122(162)*abb122(125)
      abb122(25)=abb122(25)*c2
      abb122(25)=abb122(25)-abb122(118)
      abb122(25)=abb122(25)*abb122(158)
      abb122(118)=-es12*spak1e7*abb122(87)*abb122(5)*abb122(25)
      abb122(34)=abb122(163)+abb122(118)+abb122(119)-abb122(88)+abb122(34)
      abb122(34)=8.0_ki*abb122(34)
      abb122(88)=abb122(162)*abb122(148)
      abb122(118)=-spal6e7*abb122(121)
      abb122(119)=abb122(118)*abb122(8)
      abb122(158)=abb122(119)*abb122(155)
      abb122(88)=abb122(88)-abb122(158)
      abb122(88)=16.0_ki*abb122(88)
      abb122(158)=spbk7k2*spak2k4
      abb122(163)=-spbk7k3*spak3k4
      abb122(158)=abb122(163)+abb122(158)
      abb122(158)=abb122(115)*abb122(158)
      abb122(163)=-spbl6k3*spak3k4*abb122(78)
      abb122(164)=-spak1k7*abb122(131)
      abb122(165)=-spbe7k3*abb122(128)
      abb122(35)=abb122(163)+abb122(165)+abb122(164)+abb122(158)-abb122(35)
      abb122(35)=8.0_ki*abb122(35)
      abb122(79)=abb122(32)*abb122(79)
      abb122(79)=abb122(79)-abb122(133)
      abb122(125)=abb122(79)*abb122(125)
      abb122(68)=abb122(68)-abb122(50)
      abb122(68)=abb122(138)*abb122(5)*abb122(68)
      abb122(68)=abb122(68)+abb122(125)
      abb122(68)=4.0_ki*abb122(68)
      abb122(125)=abb122(79)*abb122(148)
      abb122(133)=abb122(152)*abb122(30)
      abb122(138)=abb122(147)*abb122(40)
      abb122(158)=abb122(121)*abb122(8)
      abb122(163)=abb122(158)*spak2e7
      abb122(164)=abb122(116)*abb122(163)
      abb122(125)=abb122(164)+abb122(125)+abb122(133)+abb122(138)
      abb122(125)=8.0_ki*abb122(125)
      abb122(133)=4.0_ki*spak1l5
      abb122(138)=-abb122(52)*abb122(133)
      abb122(164)=4.0_ki*abb122(41)
      abb122(165)=abb122(127)*abb122(164)
      abb122(166)=8.0_ki*abb122(127)
      abb122(167)=4.0_ki*spak3k4
      abb122(124)=abb122(124)*abb122(167)
      abb122(168)=8.0_ki*spak3k4
      abb122(169)=abb122(113)*abb122(168)
      abb122(170)=-abb122(162)*abb122(168)
      abb122(171)=-abb122(79)*abb122(167)
      abb122(114)=abb122(9)*abb122(114)
      abb122(114)=-abb122(144)+abb122(114)
      abb122(114)=abb122(9)*abb122(114)
      abb122(144)=-abb122(9)*abb122(82)*abb122(15)
      abb122(141)=abb122(141)+abb122(144)
      abb122(141)=abb122(141)*abb122(142)
      abb122(114)=abb122(114)+abb122(141)
      abb122(114)=spak2k4*abb122(114)
      abb122(71)=abb122(105)*abb122(71)
      abb122(85)=-abb122(82)*abb122(85)
      abb122(71)=abb122(71)+abb122(85)
      abb122(71)=abb122(71)*abb122(42)
      abb122(85)=abb122(160)*abb122(87)
      abb122(141)=spak2k4*abb122(122)*abb122(81)
      abb122(141)=abb122(85)+abb122(141)
      abb122(141)=es12*abb122(141)
      abb122(144)=-abb122(12)*abb122(130)
      abb122(25)=-abb122(100)*abb122(25)
      abb122(25)=abb122(25)+abb122(144)
      abb122(25)=abb122(25)*abb122(137)
      abb122(100)=-abb122(122)*abb122(112)*abb122(129)
      abb122(25)=abb122(25)+abb122(100)+abb122(141)+abb122(114)+abb122(71)
      abb122(25)=4.0_ki*abb122(25)
      abb122(71)=8.0_ki*spak2k4
      abb122(100)=abb122(113)*abb122(71)
      abb122(112)=abb122(153)*abb122(22)
      abb122(50)=abb122(50)*abb122(7)
      abb122(50)=abb122(50)-abb122(146)
      abb122(114)=abb122(50)*abb122(155)
      abb122(85)=2.0_ki*abb122(85)+abb122(114)+abb122(112)
      abb122(85)=8.0_ki*abb122(85)
      abb122(112)=4.0_ki*spak2k4
      abb122(114)=abb122(79)*abb122(112)
      abb122(107)=abb122(65)*abb122(107)
      abb122(103)=-abb122(9)*abb122(103)*abb122(27)
      abb122(103)=abb122(103)+abb122(107)
      abb122(107)=abb122(167)*abb122(6)
      abb122(60)=abb122(107)*abb122(60)
      abb122(103)=abb122(103)*abb122(60)
      abb122(122)=abb122(154)*abb122(164)
      abb122(129)=-8.0_ki*abb122(43)
      abb122(137)=8.0_ki*abb122(41)
      abb122(141)=-abb122(119)*abb122(137)
      abb122(144)=abb122(50)*abb122(164)
      abb122(131)=-abb122(131)*abb122(133)
      abb122(146)=abb122(167)*abb122(127)
      abb122(160)=-spbk7e7*abb122(146)
      abb122(172)=-abb122(168)*abb122(136)
      abb122(173)=abb122(167)*abb122(12)
      abb122(174)=spbk7e7*abb122(173)
      abb122(23)=abb122(23)*spak2k4
      abb122(175)=abb122(14)*abb122(17)
      abb122(29)=abb122(175)-abb122(29)
      abb122(29)=abb122(29)*abb122(42)
      abb122(23)=abb122(23)-abb122(29)
      abb122(23)=4.0_ki*abb122(23)
      abb122(29)=-spbk7e7*abb122(23)
      abb122(42)=abb122(71)*abb122(136)
      abb122(12)=abb122(112)*abb122(12)
      abb122(112)=-spbk7e7*abb122(12)
      abb122(44)=abb122(44)*abb122(133)
      abb122(136)=spbe7l6*abb122(146)
      abb122(146)=abb122(126)*abb122(168)
      abb122(168)=-spbe7l6*abb122(173)
      abb122(23)=spbe7l6*abb122(23)
      abb122(71)=-abb122(126)*abb122(71)
      abb122(12)=spbe7l6*abb122(12)
      abb122(126)=abb122(115)*abb122(164)
      abb122(173)=abb122(78)*abb122(164)
      abb122(175)=8.0_ki*abb122(115)
      abb122(176)=8.0_ki*abb122(78)
      abb122(177)=abb122(51)*spak1e7
      abb122(81)=abb122(81)*abb122(40)
      abb122(111)=abb122(111)*spak1k7
      abb122(81)=abb122(111)+abb122(177)-abb122(81)
      abb122(59)=abb122(81)+abb122(59)
      abb122(111)=8.0_ki*abb122(59)
      abb122(13)=abb122(26)+abb122(13)
      abb122(26)=abb122(62)*abb122(13)
      abb122(177)=abb122(26)*abb122(120)
      abb122(89)=abb122(89)*abb122(24)
      abb122(178)=abb122(62)*abb122(89)
      abb122(179)=-abb122(117)*abb122(178)
      abb122(177)=abb122(177)+abb122(179)
      abb122(177)=abb122(177)*abb122(149)
      abb122(179)=-abb122(26)*abb122(61)
      abb122(13)=abb122(13)*abb122(67)
      abb122(180)=abb122(61)*abb122(9)
      abb122(181)=abb122(13)*abb122(180)
      abb122(63)=abb122(63)*spal6e7
      abb122(182)=-abb122(67)*abb122(66)
      abb122(182)=abb122(63)+abb122(182)
      abb122(182)=abb122(182)*abb122(89)
      abb122(177)=abb122(177)+abb122(182)+abb122(179)+abb122(181)
      abb122(177)=abb122(6)*abb122(177)
      abb122(179)=abb122(108)*abb122(105)
      abb122(132)=abb122(179)*abb122(132)
      abb122(105)=abb122(102)*abb122(105)
      abb122(105)=abb122(132)-abb122(105)
      abb122(105)=abb122(105)*abb122(9)
      abb122(10)=abb122(90)*abb122(10)
      abb122(132)=abb122(139)*abb122(10)
      abb122(139)=abb122(90)*abb122(67)
      abb122(181)=abb122(139)*abb122(82)
      abb122(132)=abb122(132)-abb122(181)
      abb122(132)=abb122(132)*abb122(142)
      abb122(105)=abb122(105)-abb122(132)
      abb122(105)=abb122(105)*spak4e7
      abb122(132)=abb122(20)*abb122(17)
      abb122(181)=abb122(132)*abb122(96)
      abb122(17)=abb122(10)*abb122(17)
      abb122(17)=-abb122(17)+2.0_ki*abb122(181)
      abb122(17)=abb122(17)*abb122(24)
      abb122(181)=mB*abb122(95)
      abb122(33)=abb122(181)*abb122(33)
      abb122(17)=abb122(17)+abb122(109)-2.0_ki*abb122(33)
      abb122(17)=abb122(22)*abb122(17)
      abb122(17)=abb122(105)-abb122(17)
      abb122(105)=abb122(24)*abb122(96)
      abb122(109)=abb122(19)*abb122(123)*abb122(105)
      abb122(123)=abb122(181)*abb122(9)
      abb122(99)=abb122(123)*abb122(99)
      abb122(99)=abb122(109)-abb122(99)
      abb122(109)=-abb122(99)*abb122(147)
      abb122(181)=abb122(91)*spal6e7
      abb122(182)=abb122(95)*abb122(27)
      abb122(181)=abb122(181)-abb122(182)
      abb122(76)=abb122(181)*abb122(76)
      abb122(182)=abb122(76)*abb122(155)
      abb122(48)=abb122(48)*abb122(123)
      abb122(183)=abb122(105)*abb122(20)
      abb122(184)=abb122(183)*abb122(47)
      abb122(48)=abb122(48)-abb122(184)
      abb122(184)=-abb122(48)*abb122(152)
      abb122(109)=abb122(109)+abb122(184)+abb122(182)+abb122(17)
      abb122(109)=spbk4k2*abb122(109)
      abb122(66)=abb122(139)*abb122(66)
      abb122(63)=abb122(63)*abb122(90)
      abb122(63)=abb122(66)-abb122(63)
      abb122(63)=abb122(63)*abb122(24)
      abb122(61)=abb122(97)*abb122(61)
      abb122(66)=abb122(102)*abb122(180)
      abb122(61)=abb122(63)+abb122(61)-abb122(66)
      abb122(63)=abb122(120)*abb122(97)
      abb122(66)=abb122(92)*abb122(117)
      abb122(63)=abb122(63)-abb122(66)
      abb122(117)=-abb122(63)*abb122(149)
      abb122(117)=abb122(117)+abb122(61)
      abb122(117)=abb122(6)*abb122(117)
      abb122(139)=abb122(72)*abb122(139)
      abb122(62)=abb122(86)*abb122(62)
      abb122(90)=abb122(62)*abb122(90)
      abb122(90)=abb122(139)-abb122(90)
      abb122(90)=abb122(90)*abb122(24)
      abb122(139)=abb122(97)*abb122(83)
      abb122(102)=abb122(102)*abb122(69)
      abb122(90)=abb122(90)+abb122(139)-abb122(102)
      abb122(102)=abb122(8)*abb122(90)
      abb122(102)=abb122(102)+abb122(117)
      abb122(102)=es34*abb122(102)
      abb122(117)=spak3l6*spbe7l6
      abb122(139)=spak3k7*spbk7e7
      abb122(117)=abb122(117)-abb122(139)
      abb122(139)=-abb122(18)*abb122(117)
      abb122(149)=-abb122(26)*abb122(83)
      abb122(13)=abb122(13)*abb122(69)
      abb122(67)=-abb122(67)*abb122(72)
      abb122(62)=abb122(62)+abb122(67)
      abb122(62)=abb122(62)*abb122(89)
      abb122(13)=abb122(62)+abb122(149)+abb122(13)
      abb122(13)=abb122(8)*abb122(13)
      abb122(62)=abb122(108)*abb122(83)
      abb122(67)=abb122(110)*abb122(86)
      abb122(62)=abb122(62)-abb122(67)
      abb122(67)=abb122(62)*spbl6l5
      abb122(69)=abb122(105)*abb122(132)
      abb122(33)=abb122(69)-abb122(33)
      abb122(69)=abb122(33)*spbe7l5
      abb122(67)=abb122(67)+abb122(69)
      abb122(69)=-spbk4k2*abb122(67)
      abb122(72)=abb122(110)*abb122(82)
      abb122(72)=abb122(72)-abb122(179)
      abb122(82)=abb122(72)*spbk4k2
      abb122(83)=-abb122(151)*abb122(82)
      abb122(69)=abb122(83)+abb122(69)
      abb122(69)=spak4l5*abb122(69)
      abb122(83)=spbl6l5*abb122(80)
      abb122(86)=spbe7l5*abb122(154)
      abb122(51)=abb122(51)*abb122(151)
      abb122(51)=abb122(83)+abb122(86)+abb122(51)
      abb122(51)=spak1k3*abb122(51)
      abb122(83)=-spak3e7*abb122(140)
      abb122(86)=-spak3l5*abb122(145)
      abb122(13)=abb122(86)+abb122(102)+abb122(83)+abb122(51)+abb122(69)+abb122&
      &(13)+abb122(109)+abb122(139)+abb122(177)
      abb122(13)=4.0_ki*abb122(13)
      abb122(16)=abb122(10)*abb122(16)
      abb122(51)=abb122(32)*abb122(96)
      abb122(16)=abb122(16)-abb122(51)
      abb122(16)=abb122(16)*abb122(24)
      abb122(51)=abb122(108)*abb122(104)
      abb122(69)=abb122(123)*abb122(104)
      abb122(16)=abb122(16)-abb122(51)+abb122(69)
      abb122(51)=2.0_ki*spak4l6
      abb122(16)=abb122(16)*abb122(51)
      abb122(51)=abb122(108)*abb122(135)
      abb122(83)=abb122(110)*abb122(134)
      abb122(51)=abb122(51)-abb122(83)
      abb122(51)=2.0_ki*abb122(51)
      abb122(83)=abb122(156)*abb122(51)
      abb122(16)=abb122(16)-abb122(83)
      abb122(20)=abb122(20)*abb122(96)
      abb122(10)=abb122(20)-abb122(10)
      abb122(10)=abb122(24)*abb122(10)*abb122(7)
      abb122(20)=abb122(123)*abb122(101)
      abb122(83)=abb122(108)*abb122(101)
      abb122(10)=abb122(10)-abb122(20)+abb122(83)
      abb122(86)=abb122(10)*abb122(116)
      abb122(86)=abb122(86)+abb122(16)
      abb122(86)=spbk4k2*abb122(86)
      abb122(89)=spak1k3*spbl5k2
      abb122(96)=abb122(21)*abb122(89)
      abb122(101)=-spak3l6*abb122(70)
      abb122(95)=abb122(95)*c2
      abb122(91)=abb122(95)-abb122(91)
      abb122(95)=spbk7l5*spbk4k2*spak1k4*abb122(91)
      abb122(38)=-spak1k3*abb122(38)
      abb122(38)=abb122(95)+abb122(38)
      abb122(38)=spal6k7*abb122(38)
      abb122(95)=spak3k7*spbk7k2*abb122(153)
      abb122(38)=abb122(95)+abb122(101)+abb122(38)+abb122(96)+abb122(86)
      abb122(38)=8.0_ki*abb122(38)
      abb122(86)=abb122(72)*abb122(148)
      abb122(95)=abb122(86)*spbk4k2
      abb122(96)=2.0_ki*spak3e7
      abb122(101)=abb122(113)*abb122(96)
      abb122(102)=abb122(181)*spbk4k2
      abb122(104)=abb122(102)*abb122(155)
      abb122(109)=spak1k3*spbe7l5
      abb122(113)=abb122(109)*abb122(40)
      abb122(95)=-abb122(104)+abb122(95)+abb122(113)+abb122(101)
      abb122(95)=8.0_ki*abb122(95)
      abb122(97)=abb122(97)*abb122(159)
      abb122(92)=abb122(92)*abb122(161)
      abb122(92)=abb122(97)-abb122(92)
      abb122(97)=abb122(92)*abb122(148)
      abb122(101)=abb122(110)*abb122(7)
      abb122(83)=abb122(101)-abb122(83)
      abb122(101)=abb122(83)*spal6e7
      abb122(104)=abb122(101)*abb122(155)
      abb122(104)=abb122(104)+abb122(97)
      abb122(113)=spbk4k2*abb122(8)
      abb122(104)=abb122(113)*abb122(104)
      abb122(123)=abb122(162)*abb122(96)
      abb122(119)=-abb122(119)*abb122(109)
      abb122(104)=abb122(123)+abb122(119)+abb122(104)
      abb122(104)=8.0_ki*abb122(104)
      abb122(32)=abb122(105)*abb122(32)
      abb122(32)=abb122(32)-abb122(69)
      abb122(32)=abb122(32)*abb122(148)
      abb122(69)=-abb122(91)*abb122(152)
      abb122(69)=abb122(32)+abb122(69)
      abb122(69)=spbk4k2*abb122(69)
      abb122(105)=abb122(30)*abb122(151)
      abb122(40)=spbl6l5*abb122(40)
      abb122(40)=abb122(105)+abb122(40)
      abb122(40)=spak1k3*abb122(40)
      abb122(105)=abb122(83)*abb122(116)*abb122(113)
      abb122(89)=abb122(158)*abb122(89)
      abb122(89)=abb122(105)+abb122(89)
      abb122(89)=spak2e7*abb122(89)
      abb122(96)=abb122(79)*abb122(96)
      abb122(105)=-abb122(147)*abb122(102)
      abb122(40)=abb122(96)+abb122(89)+abb122(40)+abb122(105)+abb122(69)
      abb122(40)=4.0_ki*abb122(40)
      abb122(33)=4.0_ki*abb122(33)
      abb122(69)=-spbk4k2*abb122(33)
      abb122(89)=4.0_ki*abb122(127)
      abb122(26)=-abb122(26)*abb122(159)
      abb122(96)=abb122(161)*abb122(178)
      abb122(26)=abb122(26)+abb122(96)
      abb122(92)=2.0_ki*abb122(92)
      abb122(96)=es34*abb122(92)
      abb122(26)=abb122(96)+2.0_ki*abb122(26)
      abb122(26)=abb122(8)*abb122(26)
      abb122(22)=abb122(22)*abb122(51)
      abb122(51)=abb122(183)*abb122(7)
      abb122(20)=abb122(51)-abb122(20)
      abb122(51)=abb122(20)*abb122(155)
      abb122(51)=abb122(51)-abb122(22)
      abb122(51)=spbk4k2*abb122(51)
      abb122(96)=abb122(153)*abb122(117)
      abb122(105)=abb122(50)*abb122(109)
      abb122(26)=abb122(105)+abb122(51)+abb122(96)+abb122(26)
      abb122(26)=4.0_ki*abb122(26)
      abb122(51)=4.0_ki*spae7k7
      abb122(82)=-abb122(82)*abb122(51)
      abb122(62)=4.0_ki*abb122(62)
      abb122(96)=-spbk4k2*abb122(62)
      abb122(102)=abb122(102)*abb122(130)
      abb122(27)=abb122(27)*spak1k2
      abb122(105)=abb122(27)*abb122(47)
      abb122(108)=abb122(108)*abb122(105)
      abb122(109)=abb122(57)*abb122(110)
      abb122(108)=abb122(109)-abb122(108)
      abb122(109)=-abb122(108)*abb122(113)
      abb122(110)=abb122(48)*spak1e7
      abb122(113)=spbk4k2*abb122(110)
      abb122(102)=abb122(109)+abb122(113)+abb122(102)
      abb122(102)=4.0_ki*abb122(102)
      abb122(90)=-abb122(90)*abb122(87)
      abb122(61)=-abb122(61)*abb122(73)
      abb122(63)=abb122(63)*abb122(150)
      abb122(17)=abb122(63)+abb122(61)+abb122(90)-abb122(17)
      abb122(17)=spbk4k3*abb122(17)
      abb122(61)=spbk4k3*spak1k4
      abb122(63)=abb122(99)*abb122(61)
      abb122(46)=-abb122(46)*abb122(105)
      abb122(11)=abb122(65)*abb122(11)
      abb122(65)=abb122(19)*abb122(54)*abb122(11)
      abb122(15)=-abb122(15)*abb122(57)
      abb122(15)=abb122(15)+abb122(65)
      abb122(15)=abb122(15)*abb122(24)
      abb122(15)=abb122(63)+abb122(15)+abb122(55)+abb122(46)
      abb122(15)=spbl6l5*abb122(15)
      abb122(24)=spak2l6*spbe7l6
      abb122(46)=spak2k7*spbk7e7
      abb122(24)=abb122(24)-abb122(46)
      abb122(18)=abb122(18)*abb122(24)
      abb122(27)=-abb122(31)*abb122(27)
      abb122(31)=abb122(36)*spak1k2
      abb122(36)=abb122(9)*abb122(31)
      abb122(27)=abb122(27)+abb122(36)
      abb122(27)=abb122(9)*abb122(27)
      abb122(19)=abb122(19)*abb122(37)
      abb122(11)=-abb122(3)*abb122(11)
      abb122(11)=abb122(19)+abb122(11)
      abb122(11)=abb122(142)*spak1k2*abb122(11)
      abb122(19)=-abb122(76)*abb122(61)
      abb122(11)=abb122(19)+abb122(27)+abb122(11)
      abb122(11)=spbe7l5*abb122(11)
      abb122(19)=-abb122(74)+abb122(49)
      abb122(19)=spak1k2*abb122(19)
      abb122(27)=abb122(54)*abb122(53)
      abb122(36)=abb122(48)*abb122(61)
      abb122(19)=abb122(36)+abb122(27)+abb122(19)
      abb122(19)=abb122(19)*abb122(151)
      abb122(27)=spbk4k3*abb122(67)
      abb122(36)=abb122(72)*spbk4k3
      abb122(37)=abb122(151)*abb122(36)
      abb122(27)=abb122(37)+abb122(27)
      abb122(27)=spak4l5*abb122(27)
      abb122(11)=abb122(27)+abb122(15)+abb122(19)+abb122(11)+abb122(17)+abb122(&
      &18)
      abb122(11)=4.0_ki*abb122(11)
      abb122(15)=-spak1k2*abb122(21)
      abb122(10)=-abb122(10)*abb122(61)
      abb122(10)=abb122(10)+abb122(15)
      abb122(10)=spbl5k2*abb122(10)
      abb122(15)=spak2l6*abb122(70)
      abb122(16)=-spbk4k3*abb122(16)
      abb122(17)=abb122(91)*abb122(61)
      abb122(18)=abb122(30)*spak1k2
      abb122(17)=abb122(17)-abb122(18)
      abb122(18)=-spal6k7*abb122(17)*spbk7l5
      abb122(19)=es712-es71-es12
      abb122(19)=abb122(153)*abb122(19)
      abb122(10)=abb122(15)+abb122(18)+abb122(19)+abb122(16)+abb122(10)
      abb122(10)=8.0_ki*abb122(10)
      abb122(15)=abb122(86)*spbk4k3
      abb122(16)=abb122(181)*abb122(61)
      abb122(18)=abb122(39)*spak1k2
      abb122(16)=-abb122(31)+abb122(18)+abb122(16)
      abb122(18)=abb122(16)*spbe7l5
      abb122(15)=abb122(15)-abb122(18)
      abb122(15)=8.0_ki*abb122(15)
      abb122(18)=spak1k2*abb122(118)
      abb122(19)=-abb122(101)*abb122(61)
      abb122(18)=abb122(18)+abb122(19)
      abb122(18)=spbe7l5*abb122(18)
      abb122(19)=-spbk4k3*abb122(97)
      abb122(18)=abb122(18)+abb122(19)
      abb122(18)=8.0_ki*abb122(8)*abb122(18)
      abb122(19)=-spak1k2*abb122(121)
      abb122(27)=-abb122(83)*abb122(61)
      abb122(19)=abb122(27)+abb122(19)
      abb122(19)=spbl5k2*abb122(8)*abb122(19)
      abb122(19)=-2.0_ki*abb122(79)+abb122(19)
      abb122(19)=spak2e7*abb122(19)
      abb122(17)=abb122(17)*abb122(151)
      abb122(16)=spbl6l5*abb122(16)
      abb122(27)=-spbk4k3*abb122(32)
      abb122(16)=abb122(19)+abb122(16)+abb122(27)+abb122(17)
      abb122(16)=4.0_ki*abb122(16)
      abb122(17)=spbk4k3*abb122(33)
      abb122(19)=-abb122(87)*abb122(92)
      abb122(19)=abb122(19)+abb122(22)
      abb122(19)=spbk4k3*abb122(19)
      abb122(22)=-spak1k2*abb122(50)
      abb122(20)=-abb122(20)*abb122(61)
      abb122(20)=abb122(20)+abb122(22)
      abb122(20)=spbe7l5*abb122(20)
      abb122(22)=-abb122(153)*abb122(24)
      abb122(19)=abb122(20)+abb122(19)+abb122(22)
      abb122(19)=4.0_ki*abb122(19)
      abb122(20)=abb122(36)*abb122(51)
      abb122(22)=spbk4k3*abb122(62)
      abb122(24)=-abb122(181)*abb122(130)
      abb122(27)=abb122(8)*abb122(108)
      abb122(24)=abb122(27)-abb122(110)+abb122(24)
      abb122(24)=4.0_ki*spbk4k3*abb122(24)
      abb122(27)=4.0_ki*abb122(115)
      abb122(31)=4.0_ki*abb122(78)
      abb122(32)=4.0_ki*abb122(59)
      abb122(33)=-abb122(98)*abb122(120)
      abb122(36)=abb122(93)*abb122(66)
      abb122(33)=abb122(33)+abb122(36)
      abb122(33)=spae7k7*abb122(33)*abb122(107)
      abb122(36)=-abb122(94)*abb122(60)
      abb122(28)=abb122(28)*abb122(47)
      abb122(14)=abb122(14)*abb122(56)
      abb122(14)=abb122(14)-abb122(28)
      abb122(14)=abb122(133)*abb122(8)*abb122(14)*abb122(41)
      abb122(28)=-abb122(8)*abb122(84)*abb122(167)
      abb122(37)=abb122(167)*abb122(162)
      abb122(39)=-abb122(52)*abb122(51)
      abb122(41)=-spal6k7*abb122(30)*abb122(137)
      abb122(30)=abb122(30)*spae7k7*abb122(164)
      abb122(46)=abb122(80)*abb122(164)
      abb122(43)=4.0_ki*abb122(43)
      abb122(47)=abb122(115)*spbk7k1
      abb122(48)=abb122(78)*spbl6k1
      abb122(47)=abb122(47)+abb122(48)
      abb122(48)=-spak3k4*abb122(47)
      abb122(49)=-abb122(106)*abb122(59)
      abb122(50)=-spbe7k1*abb122(128)
      abb122(48)=abb122(50)+abb122(49)+abb122(48)
      abb122(48)=4.0_ki*abb122(48)
      abb122(49)=spbl5k1*abb122(81)
      abb122(50)=spbe7k1*abb122(127)
      abb122(47)=abb122(50)+abb122(49)+abb122(47)
      abb122(47)=spak2k4*abb122(47)
      abb122(49)=spbl5k1*abb122(58)*abb122(87)
      abb122(47)=abb122(49)+abb122(47)
      abb122(47)=4.0_ki*abb122(47)
      abb122(21)=-abb122(21)*abb122(137)
      abb122(49)=-abb122(164)*abb122(163)
      R2d122=0.0_ki
      rat2 = rat2 + R2d122
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='122' value='", &
          & R2d122, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd122h1
