module     p0_dbaru_epnebbbarg_abbrevd70h1
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(137), public :: abb70
   complex(ki), public :: R2d70
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
      abb70(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb70(2)=es56**(-1)
      abb70(3)=spak2l5**(-1)
      abb70(4)=spbl6k2**(-1)
      abb70(5)=spak2l6**(-1)
      abb70(6)=spbl5k2**(-1)
      abb70(7)=TR*gW
      abb70(7)=abb70(7)**2*i_*c2*CVDU*abb70(2)
      abb70(8)=abb70(7)*abb70(1)
      abb70(9)=mB**2
      abb70(10)=spak1k2*abb70(9)*abb70(3)
      abb70(11)=3.0_ki*abb70(10)
      abb70(12)=abb70(11)*spak4l6
      abb70(13)=abb70(12)*abb70(8)
      abb70(9)=abb70(9)*abb70(4)*abb70(1)
      abb70(14)=abb70(9)*spak1k2
      abb70(15)=abb70(14)*abb70(5)
      abb70(16)=abb70(15)*abb70(7)
      abb70(17)=spbl5k2*abb70(16)
      abb70(17)=2.0_ki*abb70(17)
      abb70(18)=abb70(17)*spak4l6
      abb70(9)=abb70(7)*abb70(9)*abb70(3)
      abb70(19)=abb70(9)*spak1k4
      abb70(20)=abb70(19)*es12
      abb70(21)=spak1l6*abb70(8)
      abb70(22)=abb70(21)*spbl5k1
      abb70(23)=abb70(22)*spak1k4
      abb70(24)=-abb70(20)+2.0_ki*abb70(23)
      abb70(13)=abb70(24)+abb70(13)+abb70(18)
      abb70(18)=spbk7k2*spak4k7
      abb70(25)=abb70(18)*spbk4k3
      abb70(26)=abb70(25)*abb70(13)
      abb70(27)=abb70(18)*abb70(8)
      abb70(28)=-spbk7k3*abb70(11)*abb70(27)
      abb70(29)=abb70(18)*spbk7k3
      abb70(30)=-abb70(17)*abb70(29)
      abb70(31)=abb70(8)*spak1l5
      abb70(32)=2.0_ki*spbl5k2
      abb70(33)=abb70(31)*abb70(32)
      abb70(34)=abb70(33)*spbk7k3
      abb70(35)=spbk7l5*spak4k7
      abb70(36)=-abb70(35)*abb70(34)
      abb70(28)=abb70(36)+abb70(28)+abb70(30)
      abb70(28)=spal6k7*abb70(28)
      abb70(30)=spbk4k3*spak4l6
      abb70(36)=spal6k7*spbk7k3
      abb70(37)=-abb70(30)+abb70(36)
      abb70(37)=spbl6k2*abb70(37)
      abb70(38)=spak1k7*spbk7k3
      abb70(39)=spbk4k3*spak1k4
      abb70(40)=abb70(39)+abb70(38)
      abb70(41)=-spbk2k1*abb70(40)
      abb70(37)=abb70(41)+abb70(37)
      abb70(41)=abb70(21)*spak4k7
      abb70(42)=abb70(41)*spbk7l5
      abb70(37)=abb70(42)*abb70(37)
      abb70(43)=abb70(9)*spak1k2
      abb70(44)=abb70(43)*spbl5k2
      abb70(45)=abb70(25)*abb70(44)
      abb70(46)=abb70(21)*spbl5k2
      abb70(47)=abb70(35)*abb70(46)
      abb70(48)=-spbk4k3*abb70(47)
      abb70(45)=abb70(45)+abb70(48)
      abb70(45)=spak4l5*abb70(45)
      abb70(48)=spak4l6*spbl5k2
      abb70(49)=abb70(48)*spbk4k3
      abb70(41)=abb70(41)*abb70(49)
      abb70(50)=-spak4k7*abb70(46)*abb70(36)
      abb70(41)=abb70(41)+abb70(50)
      abb70(50)=2.0_ki*spbk7l6
      abb70(41)=abb70(41)*abb70(50)
      abb70(50)=abb70(43)*abb70(18)
      abb70(51)=-spbl5k2*abb70(50)
      abb70(47)=abb70(51)+abb70(47)
      abb70(47)=spal5k7*spbk7k3*abb70(47)
      abb70(51)=2.0_ki*abb70(48)
      abb70(52)=abb70(31)*abb70(51)
      abb70(53)=abb70(52)*abb70(35)*spbk4k3
      abb70(54)=abb70(9)*es12
      abb70(55)=-abb70(54)+2.0_ki*abb70(22)
      abb70(29)=spak1k7*abb70(29)*abb70(55)
      abb70(26)=abb70(47)+abb70(41)+abb70(28)+abb70(45)+abb70(29)+abb70(53)+abb&
      &70(26)+abb70(37)
      abb70(26)=4.0_ki*abb70(26)
      abb70(28)=abb70(7)*spbe7k2
      abb70(29)=abb70(15)*abb70(28)
      abb70(37)=abb70(29)*abb70(32)
      abb70(41)=abb70(28)*abb70(1)
      abb70(45)=abb70(41)*abb70(10)
      abb70(37)=abb70(37)+3.0_ki*abb70(45)
      abb70(47)=spak4e7*spbk7k3
      abb70(37)=abb70(37)*abb70(47)
      abb70(53)=spbe7l5*spak4e7
      abb70(34)=abb70(34)*abb70(53)
      abb70(34)=abb70(37)+abb70(34)
      abb70(34)=abb70(34)*spal6k7
      abb70(37)=abb70(9)*spbe7k2
      abb70(56)=spak4e7*abb70(37)
      abb70(57)=abb70(56)*es12
      abb70(58)=abb70(21)*spak4e7
      abb70(59)=abb70(58)*spbe7k2
      abb70(60)=2.0_ki*spbl5k1
      abb70(61)=abb70(59)*abb70(60)
      abb70(57)=abb70(57)-abb70(61)
      abb70(57)=abb70(57)*abb70(38)
      abb70(14)=abb70(28)*abb70(14)
      abb70(28)=spbk4k3*spak4e7
      abb70(61)=abb70(28)*abb70(14)
      abb70(62)=spae7k7*spbk7k3
      abb70(14)=abb70(14)*abb70(62)
      abb70(61)=abb70(61)+abb70(14)
      abb70(63)=2.0_ki*abb70(5)
      abb70(61)=abb70(63)*abb70(61)*abb70(48)
      abb70(63)=abb70(21)*spbe7l5
      abb70(64)=abb70(63)*abb70(62)
      abb70(65)=abb70(64)*spak4l6
      abb70(66)=abb70(63)*spak4e7
      abb70(30)=abb70(30)*abb70(66)
      abb70(67)=abb70(66)*spbk7k3
      abb70(68)=abb70(67)*spal6k7
      abb70(30)=abb70(30)+abb70(65)-abb70(68)
      abb70(30)=abb70(30)*spbl6k2
      abb70(36)=abb70(36)*spbl5k2
      abb70(49)=abb70(49)-abb70(36)
      abb70(49)=abb70(58)*abb70(49)
      abb70(65)=abb70(21)*abb70(62)
      abb70(68)=abb70(48)*abb70(65)
      abb70(49)=abb70(68)+abb70(49)
      abb70(68)=2.0_ki*spbe7l6
      abb70(49)=abb70(49)*abb70(68)
      abb70(37)=spak1k2*abb70(37)
      abb70(68)=abb70(37)*abb70(62)
      abb70(68)=abb70(68)-abb70(64)
      abb70(69)=-spbl5k2*abb70(68)
      abb70(70)=abb70(37)*spak4e7
      abb70(70)=abb70(70)-abb70(66)
      abb70(71)=abb70(70)*spbk4k3
      abb70(72)=spbl5k2*abb70(71)
      abb70(72)=abb70(72)-abb70(69)
      abb70(72)=abb70(72)*spak4l5
      abb70(73)=abb70(62)*spbe7k2
      abb70(74)=spak1k4*abb70(73)*abb70(21)
      abb70(39)=abb70(59)*abb70(39)
      abb70(39)=abb70(74)+abb70(39)
      abb70(39)=abb70(39)*abb70(60)
      abb70(59)=abb70(64)*spak1k4
      abb70(40)=abb70(40)*abb70(66)
      abb70(40)=abb70(59)+abb70(40)
      abb70(40)=abb70(40)*spbk2k1
      abb70(59)=abb70(62)*abb70(8)
      abb70(66)=abb70(59)*spbe7l5
      abb70(74)=abb70(66)*abb70(48)
      abb70(48)=abb70(48)*abb70(8)
      abb70(75)=abb70(48)*spbk4k3
      abb70(76)=abb70(75)*abb70(53)
      abb70(74)=abb70(74)+abb70(76)
      abb70(76)=2.0_ki*spak1l5
      abb70(74)=abb70(74)*abb70(76)
      abb70(76)=abb70(19)*spbe7k2
      abb70(77)=abb70(76)*abb70(28)
      abb70(78)=abb70(19)*abb70(73)
      abb70(77)=abb70(77)+abb70(78)
      abb70(79)=abb70(77)*es12
      abb70(80)=abb70(47)*abb70(37)
      abb70(67)=abb70(80)-abb70(67)
      abb70(80)=spal5k7*abb70(67)*spbl5k2
      abb70(30)=-abb70(34)+abb70(49)+abb70(72)+abb70(39)-abb70(79)-abb70(80)-ab&
      &b70(57)-abb70(40)+abb70(74)+abb70(61)-abb70(30)
      abb70(34)=abb70(28)*abb70(45)
      abb70(39)=abb70(45)*abb70(62)
      abb70(34)=-abb70(39)-abb70(34)
      abb70(34)=spak4l6*abb70(34)
      abb70(34)=3.0_ki*abb70(34)-abb70(30)
      abb70(34)=4.0_ki*abb70(34)
      abb70(40)=abb70(21)*spbk3k2
      abb70(49)=abb70(60)*abb70(40)
      abb70(57)=abb70(9)*spbk3k2
      abb70(60)=abb70(57)*es12
      abb70(49)=abb70(49)-abb70(60)
      abb70(61)=spak1k4*abb70(49)
      abb70(72)=spbl6k2*spak4l6
      abb70(74)=spbk2k1*spak1k4
      abb70(72)=abb70(72)+abb70(74)
      abb70(74)=abb70(21)*spbl5k3
      abb70(79)=abb70(74)*abb70(72)
      abb70(80)=abb70(57)*spak1k2
      abb70(81)=abb70(80)*spbl5k2
      abb70(82)=abb70(46)*spbl5k3
      abb70(81)=abb70(82)+abb70(81)
      abb70(82)=abb70(81)*spak4l5
      abb70(83)=abb70(52)*spbl5k3
      abb70(84)=abb70(8)*spbk3k2
      abb70(12)=abb70(12)*abb70(84)
      abb70(85)=abb70(51)*abb70(21)
      abb70(86)=abb70(85)*spbl6k3
      abb70(87)=abb70(7)*spbk3k2
      abb70(88)=abb70(15)*abb70(87)
      abb70(89)=abb70(88)*abb70(51)
      abb70(12)=-abb70(83)+abb70(82)+abb70(12)-abb70(86)+abb70(89)+abb70(79)+ab&
      &b70(61)
      abb70(61)=8.0_ki*abb70(12)
      abb70(79)=spak3k4*spbk3k2
      abb70(79)=abb70(18)-abb70(79)
      abb70(82)=abb70(68)*abb70(79)
      abb70(83)=4.0_ki*abb70(82)
      abb70(86)=spbk3k2**2
      abb70(89)=abb70(86)*abb70(43)
      abb70(90)=abb70(74)*spbk3k2
      abb70(89)=abb70(90)+abb70(89)
      abb70(89)=abb70(89)*spak3k4
      abb70(90)=abb70(74)*abb70(18)
      abb70(91)=abb70(35)*abb70(40)
      abb70(89)=abb70(89)-abb70(90)-abb70(91)
      abb70(90)=8.0_ki*abb70(89)
      abb70(91)=abb70(63)-abb70(37)
      abb70(92)=spak4e7*spbk3k2
      abb70(91)=abb70(92)*abb70(91)
      abb70(93)=8.0_ki*abb70(91)
      abb70(94)=abb70(69)*spak4l5
      abb70(95)=abb70(72)*abb70(64)
      abb70(96)=abb70(65)*spbe7l6
      abb70(66)=abb70(66)*spak1l5
      abb70(96)=abb70(96)+abb70(66)
      abb70(97)=abb70(29)*abb70(62)
      abb70(97)=abb70(97)+abb70(96)
      abb70(98)=abb70(97)*abb70(51)
      abb70(99)=abb70(24)*abb70(73)
      abb70(100)=3.0_ki*spak4l6
      abb70(101)=abb70(100)*abb70(39)
      abb70(94)=-abb70(94)+abb70(99)-abb70(95)+abb70(98)+abb70(101)
      abb70(94)=4.0_ki*abb70(94)
      abb70(95)=-abb70(19)*abb70(25)
      abb70(98)=abb70(18)*abb70(9)
      abb70(99)=-abb70(38)*abb70(98)
      abb70(95)=abb70(95)+abb70(99)
      abb70(95)=16.0_ki*abb70(95)
      abb70(56)=abb70(56)*abb70(38)
      abb70(56)=abb70(56)+abb70(77)
      abb70(77)=16.0_ki*abb70(56)
      abb70(99)=abb70(57)*spak1k4
      abb70(102)=32.0_ki*abb70(99)
      abb70(78)=16.0_ki*abb70(78)
      abb70(75)=-spak1e7*abb70(75)
      abb70(103)=abb70(8)*spak1e7
      abb70(36)=abb70(103)*abb70(36)
      abb70(36)=abb70(75)+abb70(36)
      abb70(75)=spbk7e7*spak4k7
      abb70(36)=abb70(36)*abb70(75)
      abb70(100)=abb70(100)*abb70(45)
      abb70(104)=-abb70(28)*abb70(100)
      abb70(30)=abb70(36)+abb70(104)-abb70(101)+abb70(82)-abb70(30)
      abb70(30)=2.0_ki*abb70(30)
      abb70(12)=-abb70(89)-abb70(12)
      abb70(12)=4.0_ki*abb70(12)
      abb70(36)=spak1e7*spbe7k3
      abb70(82)=abb70(36)*abb70(48)
      abb70(89)=abb70(82)+abb70(91)
      abb70(101)=-4.0_ki*abb70(89)
      abb70(91)=4.0_ki*abb70(91)
      abb70(82)=4.0_ki*abb70(82)
      abb70(56)=8.0_ki*abb70(56)
      abb70(99)=16.0_ki*abb70(99)
      abb70(89)=-2.0_ki*abb70(89)
      abb70(23)=abb70(23)-abb70(20)
      abb70(104)=8.0_ki*spbe7k3
      abb70(105)=abb70(23)*abb70(104)
      abb70(106)=-16.0_ki*spbe7k3*abb70(19)
      abb70(107)=4.0_ki*spbe7k3
      abb70(108)=abb70(23)*abb70(107)
      abb70(109)=abb70(104)*abb70(19)
      abb70(110)=-abb70(79)*abb70(65)
      abb70(111)=spbl5k1*abb70(110)
      abb70(112)=abb70(9)*abb70(62)
      abb70(113)=abb70(112)*abb70(18)
      abb70(114)=abb70(57)*spak3k4
      abb70(115)=abb70(114)*abb70(62)
      abb70(113)=abb70(113)-abb70(115)
      abb70(115)=es12*abb70(113)
      abb70(111)=abb70(111)+abb70(115)
      abb70(111)=4.0_ki*abb70(111)
      abb70(115)=abb70(60)*spak4e7
      abb70(116)=spbl5k1*abb70(58)*spbk3k2
      abb70(115)=abb70(115)-abb70(116)
      abb70(116)=8.0_ki*abb70(115)
      abb70(113)=8.0_ki*abb70(113)
      abb70(117)=abb70(57)*spak4e7
      abb70(118)=16.0_ki*abb70(117)
      abb70(115)=4.0_ki*abb70(115)
      abb70(117)=8.0_ki*abb70(117)
      abb70(119)=abb70(50)-abb70(42)
      abb70(23)=abb70(119)-4.0_ki*abb70(23)
      abb70(23)=4.0_ki*spbk7k3*abb70(23)
      abb70(120)=-4.0_ki*abb70(67)
      abb70(121)=32.0_ki*spbk7k3*abb70(19)
      abb70(67)=-2.0_ki*abb70(67)
      abb70(14)=abb70(14)*abb70(5)
      abb70(122)=-abb70(6)*abb70(39)
      abb70(66)=abb70(122)-abb70(14)-abb70(66)
      abb70(66)=-abb70(79)*abb70(66)
      abb70(110)=-spbe7l6*abb70(110)
      abb70(66)=abb70(110)+abb70(66)
      abb70(66)=4.0_ki*abb70(66)
      abb70(110)=abb70(10)*abb70(8)
      abb70(122)=-abb70(6)*abb70(110)
      abb70(16)=abb70(122)-abb70(16)
      abb70(16)=abb70(86)*spak3k4*abb70(16)
      abb70(86)=spak3k4*spbl5k3
      abb70(122)=-abb70(35)+abb70(86)
      abb70(122)=abb70(84)*abb70(122)
      abb70(123)=-spbl5k3*abb70(27)
      abb70(122)=abb70(123)+abb70(122)
      abb70(122)=spak1l5*abb70(122)
      abb70(123)=abb70(8)*spak1k4
      abb70(124)=abb70(25)*abb70(123)
      abb70(125)=abb70(38)*abb70(27)
      abb70(126)=abb70(18)*abb70(21)
      abb70(127)=abb70(40)*spak3k4
      abb70(126)=abb70(126)-abb70(127)
      abb70(127)=-spbl6k3*abb70(126)
      abb70(128)=spbk7l6*spak4k7
      abb70(129)=-abb70(40)*abb70(128)
      abb70(16)=abb70(129)+abb70(127)+abb70(125)+abb70(122)+abb70(124)+abb70(16)
      abb70(16)=8.0_ki*abb70(16)
      abb70(122)=abb70(41)*spak1k4
      abb70(28)=abb70(122)*abb70(28)
      abb70(124)=abb70(41)*abb70(62)
      abb70(125)=abb70(124)*spak1k4
      abb70(28)=abb70(28)+abb70(125)
      abb70(45)=abb70(45)*abb70(6)
      abb70(127)=abb70(45)+abb70(29)
      abb70(129)=abb70(92)*abb70(127)
      abb70(47)=spak1k7*abb70(47)*abb70(41)
      abb70(130)=abb70(31)*abb70(53)
      abb70(58)=abb70(58)*spbe7l6
      abb70(131)=abb70(58)+abb70(130)
      abb70(131)=spbk3k2*abb70(131)
      abb70(129)=-abb70(47)+abb70(129)+abb70(131)-abb70(28)
      abb70(129)=8.0_ki*abb70(129)
      abb70(131)=abb70(84)*spak1k4
      abb70(132)=16.0_ki*abb70(131)
      abb70(125)=8.0_ki*abb70(125)
      abb70(133)=abb70(92)*abb70(29)
      abb70(130)=spbk3k2*abb70(130)
      abb70(134)=spbk3k2*abb70(58)
      abb70(28)=-abb70(134)+abb70(47)-abb70(130)-abb70(133)+abb70(28)
      abb70(47)=abb70(84)*spak3k4
      abb70(27)=abb70(47)-abb70(27)
      abb70(47)=-abb70(27)*abb70(36)
      abb70(45)=2.0_ki*abb70(45)
      abb70(130)=abb70(92)*abb70(45)
      abb70(133)=abb70(84)*spak4k7
      abb70(134)=abb70(133)*spbk7e7*spak1e7
      abb70(28)=abb70(134)+abb70(130)+abb70(47)-2.0_ki*abb70(28)
      abb70(28)=2.0_ki*abb70(28)
      abb70(47)=-8.0_ki*abb70(131)
      abb70(130)=abb70(104)*abb70(123)
      abb70(131)=abb70(107)*abb70(123)
      abb70(79)=-4.0_ki*abb70(59)*abb70(79)
      abb70(92)=abb70(92)*abb70(8)
      abb70(134)=-8.0_ki*abb70(92)
      abb70(92)=-4.0_ki*abb70(92)
      abb70(135)=-16.0_ki*spbk7k3*abb70(123)
      abb70(14)=-abb70(14)-abb70(96)
      abb70(96)=2.0_ki*abb70(6)
      abb70(136)=-abb70(96)*abb70(39)
      abb70(14)=abb70(136)+2.0_ki*abb70(14)
      abb70(136)=abb70(86)+abb70(35)
      abb70(14)=abb70(136)*abb70(14)
      abb70(137)=-spbl6k3*spak3k4
      abb70(137)=-abb70(128)+abb70(137)
      abb70(137)=abb70(68)*abb70(137)
      abb70(14)=abb70(137)+abb70(14)
      abb70(14)=2.0_ki*abb70(14)
      abb70(137)=-abb70(80)+abb70(74)
      abb70(137)=spak3k4*abb70(137)
      abb70(137)=3.0_ki*abb70(42)-abb70(50)+abb70(137)
      abb70(137)=spbl6k3*abb70(137)
      abb70(10)=-abb70(84)*abb70(10)*abb70(136)
      abb70(18)=-spbl5k3*abb70(18)*abb70(110)
      abb70(10)=abb70(18)+abb70(10)
      abb70(10)=abb70(10)*abb70(96)
      abb70(18)=-abb70(87)*abb70(136)
      abb70(7)=-spbk7k2*abb70(7)*spbl5k3*spak4k7
      abb70(7)=abb70(7)+abb70(18)
      abb70(7)=abb70(7)*abb70(15)
      abb70(15)=spak3k4*spbl5k3**2*abb70(31)
      abb70(7)=abb70(7)+abb70(15)
      abb70(15)=-abb70(80)-3.0_ki*abb70(74)
      abb70(15)=abb70(15)*abb70(128)
      abb70(7)=abb70(15)+abb70(10)+2.0_ki*abb70(7)+abb70(137)
      abb70(7)=4.0_ki*abb70(7)
      abb70(10)=abb70(70)*spbl6k3
      abb70(15)=spbl5k3*spak4e7
      abb70(18)=abb70(45)*abb70(15)
      abb70(10)=abb70(10)+abb70(18)
      abb70(18)=abb70(31)*spbl5k3
      abb70(45)=abb70(18)*abb70(53)
      abb70(15)=abb70(15)*abb70(29)
      abb70(15)=abb70(45)+abb70(15)
      abb70(45)=spbl5k3*abb70(58)
      abb70(45)=abb70(45)+abb70(15)
      abb70(45)=2.0_ki*abb70(45)+abb70(10)
      abb70(45)=4.0_ki*abb70(45)
      abb70(53)=-abb70(36)*abb70(8)*abb70(136)
      abb70(87)=2.0_ki*spbl5k3
      abb70(58)=abb70(58)*abb70(87)
      abb70(75)=spbl5k3*abb70(103)*abb70(75)
      abb70(10)=abb70(75)+abb70(58)+2.0_ki*abb70(15)+abb70(53)+abb70(10)
      abb70(10)=2.0_ki*abb70(10)
      abb70(15)=2.0_ki*abb70(68)
      abb70(53)=-abb70(136)*abb70(15)
      abb70(50)=-spbl5k3*abb70(50)
      abb70(58)=abb70(80)+abb70(74)
      abb70(75)=-abb70(58)*abb70(86)
      abb70(35)=-abb70(35)*abb70(80)
      abb70(35)=abb70(35)+abb70(50)+abb70(75)
      abb70(35)=4.0_ki*abb70(35)
      abb70(50)=4.0_ki*abb70(70)
      abb70(50)=spbl5k3*abb70(50)
      abb70(75)=abb70(70)*abb70(87)
      abb70(24)=spbe7k2*abb70(24)
      abb70(29)=abb70(51)*abb70(29)
      abb70(51)=spbe7l5*abb70(52)
      abb70(80)=spbe7l6*abb70(85)
      abb70(24)=abb70(80)+abb70(51)+abb70(29)+abb70(100)+abb70(24)
      abb70(24)=spae7k7*abb70(24)
      abb70(29)=abb70(63)*spae7k7
      abb70(51)=-abb70(29)*abb70(72)
      abb70(37)=abb70(37)*spae7k7
      abb70(29)=abb70(37)-abb70(29)
      abb70(37)=spak4l5*spbl5k2*abb70(29)
      abb70(24)=abb70(37)+abb70(24)+abb70(51)
      abb70(24)=spbk7k4*abb70(24)
      abb70(37)=abb70(32)*abb70(97)
      abb70(51)=-spbl6k2*abb70(64)
      abb70(37)=abb70(51)+3.0_ki*abb70(39)+abb70(37)
      abb70(37)=spak3l6*abb70(37)
      abb70(39)=abb70(73)*abb70(55)
      abb70(51)=-spbk2k1*abb70(64)
      abb70(39)=abb70(51)+abb70(39)
      abb70(39)=spak1k3*abb70(39)
      abb70(51)=-spak3l5*abb70(69)
      abb70(24)=abb70(51)+abb70(37)+abb70(24)+abb70(39)
      abb70(24)=2.0_ki*abb70(24)
      abb70(37)=abb70(11)*abb70(8)
      abb70(17)=abb70(37)+abb70(17)
      abb70(37)=-spbk7k2*abb70(17)
      abb70(33)=-spbk7l5*abb70(33)
      abb70(39)=abb70(21)*spbk7l5
      abb70(51)=spbl6k2*abb70(39)
      abb70(63)=2.0_ki*abb70(46)
      abb70(64)=-spbk7l6*abb70(63)
      abb70(33)=abb70(64)+abb70(51)+abb70(33)+abb70(37)
      abb70(33)=spal6k7*abb70(33)
      abb70(18)=-abb70(18)+abb70(88)
      abb70(18)=abb70(32)*abb70(18)
      abb70(11)=abb70(11)*abb70(84)
      abb70(32)=spbl6k2*abb70(74)
      abb70(37)=-spbl6k3*abb70(63)
      abb70(11)=abb70(37)+abb70(32)+abb70(11)+abb70(18)
      abb70(11)=spak3l6*abb70(11)
      abb70(18)=spak4l5*abb70(44)
      abb70(13)=abb70(18)+abb70(13)
      abb70(13)=spbk4k2*abb70(13)
      abb70(18)=spbk2k1*abb70(74)
      abb70(18)=abb70(18)+abb70(49)
      abb70(18)=spak1k3*abb70(18)
      abb70(32)=abb70(21)*abb70(72)
      abb70(37)=spak4l5*abb70(46)
      abb70(32)=-abb70(52)+abb70(37)+abb70(32)
      abb70(32)=spbl5k4*abb70(32)
      abb70(37)=spbk7k2*abb70(55)
      abb70(49)=-spbk2k1*abb70(39)
      abb70(37)=abb70(49)+abb70(37)
      abb70(37)=spak1k7*abb70(37)
      abb70(49)=-spbk7k2*abb70(44)
      abb70(51)=spbk7l5*abb70(46)
      abb70(49)=abb70(49)+abb70(51)
      abb70(49)=spal5k7*abb70(49)
      abb70(51)=spak3l5*abb70(81)
      abb70(52)=-spbl6k4*abb70(85)
      abb70(11)=abb70(52)+abb70(51)+abb70(32)+abb70(13)+abb70(49)+abb70(11)+abb&
      &70(18)+abb70(33)+abb70(37)
      abb70(11)=4.0_ki*abb70(11)
      abb70(13)=abb70(29)*spbk7k2
      abb70(18)=4.0_ki*abb70(13)
      abb70(32)=8.0_ki*abb70(46)
      abb70(33)=spbk7k4*spae7k7
      abb70(37)=-abb70(76)*abb70(33)
      abb70(49)=-spak1k3*abb70(9)*abb70(73)
      abb70(37)=abb70(37)+abb70(49)
      abb70(37)=8.0_ki*abb70(37)
      abb70(49)=-abb70(9)*spak1k7*spbk7k2
      abb70(51)=-spak1k3*abb70(57)
      abb70(19)=-spbk4k2*abb70(19)
      abb70(19)=abb70(19)+abb70(49)+abb70(51)
      abb70(19)=16.0_ki*abb70(19)
      abb70(49)=spbk7e7*spal6k7
      abb70(51)=spak3l6*spbe7k3
      abb70(49)=abb70(51)+abb70(49)
      abb70(49)=abb70(103)*spbl5k2*abb70(49)
      abb70(48)=spbe7k4*spak1e7*abb70(48)
      abb70(13)=abb70(48)+abb70(13)+abb70(49)
      abb70(13)=2.0_ki*abb70(13)
      abb70(46)=4.0_ki*abb70(46)
      abb70(22)=abb70(54)-abb70(22)
      abb70(48)=4.0_ki*spbk7e7
      abb70(49)=abb70(22)*abb70(48)
      abb70(51)=-spak1k7*abb70(49)
      abb70(52)=8.0_ki*abb70(9)
      abb70(54)=abb70(52)*spbk7e7
      abb70(55)=-spak1k7*abb70(54)
      abb70(63)=4.0_ki*abb70(22)
      abb70(64)=spbk7k2*spae7k7
      abb70(69)=abb70(64)*abb70(63)
      abb70(72)=abb70(64)*abb70(52)
      abb70(49)=spak1e7*abb70(49)
      abb70(73)=spbk7k2*abb70(43)
      abb70(39)=abb70(73)-abb70(39)
      abb70(39)=4.0_ki*abb70(39)
      abb70(54)=spak1e7*abb70(54)
      abb70(73)=abb70(21)*spbe7l6
      abb70(74)=abb70(31)*spbe7l5
      abb70(73)=abb70(127)+abb70(73)+abb70(74)
      abb70(74)=abb70(64)*abb70(73)
      abb70(33)=abb70(122)*abb70(33)
      abb70(76)=spak1k3*abb70(124)
      abb70(33)=abb70(76)+abb70(33)+abb70(74)
      abb70(33)=4.0_ki*abb70(33)
      abb70(31)=-spbl5k2*abb70(31)
      abb70(74)=abb70(8)*spak1k7
      abb70(76)=spbk7k2*abb70(74)
      abb70(80)=-spbl6k2*abb70(21)
      abb70(81)=spak1k3*abb70(84)
      abb70(84)=spbk4k2*abb70(123)
      abb70(31)=abb70(84)+abb70(81)+abb70(80)+abb70(31)+abb70(76)
      abb70(31)=8.0_ki*abb70(31)
      abb70(41)=2.0_ki*abb70(41)
      abb70(41)=spak1e7*abb70(41)
      abb70(74)=abb70(48)*abb70(74)
      abb70(76)=4.0_ki*abb70(8)
      abb70(64)=-abb70(64)*abb70(76)
      abb70(48)=-abb70(103)*abb70(48)
      abb70(73)=-spbk7l5*spae7k7*abb70(73)
      abb70(76)=-spbk7l6*abb70(29)
      abb70(73)=2.0_ki*abb70(73)+abb70(76)
      abb70(73)=2.0_ki*abb70(73)
      abb70(76)=spbl6l5*abb70(21)
      abb70(17)=3.0_ki*abb70(76)-abb70(17)
      abb70(17)=4.0_ki*abb70(17)
      abb70(76)=-2.0_ki*spbe7l5*abb70(103)
      abb70(29)=2.0_ki*abb70(29)
      abb70(80)=-spbk7l5*abb70(29)
      abb70(44)=-4.0_ki*abb70(44)
      abb70(65)=abb70(65)*spbl5k1
      abb70(81)=es12*abb70(112)
      abb70(81)=-abb70(65)+abb70(81)
      abb70(81)=abb70(81)*abb70(107)*spak1k3
      abb70(25)=abb70(43)*abb70(25)
      abb70(84)=-abb70(22)*abb70(38)
      abb70(42)=-spbk4k3*abb70(42)
      abb70(25)=4.0_ki*abb70(84)+abb70(25)+abb70(42)
      abb70(25)=4.0_ki*abb70(25)
      abb70(22)=abb70(22)*abb70(36)
      abb70(22)=-abb70(68)-abb70(71)+2.0_ki*abb70(22)
      abb70(42)=4.0_ki*abb70(22)
      abb70(71)=8.0_ki*abb70(58)
      abb70(68)=4.0_ki*abb70(68)
      abb70(84)=spak1k3*abb70(112)*abb70(104)
      abb70(85)=-32.0_ki*abb70(9)*abb70(38)
      abb70(9)=16.0_ki*abb70(9)
      abb70(86)=abb70(36)*abb70(9)
      abb70(22)=2.0_ki*abb70(22)
      abb70(87)=4.0_ki*abb70(58)
      abb70(36)=abb70(36)*abb70(52)
      abb70(52)=abb70(107)*abb70(59)
      abb70(59)=-spak1k3*abb70(52)
      abb70(38)=16.0_ki*abb70(8)*abb70(38)
      abb70(88)=-abb70(103)*abb70(104)
      abb70(96)=-abb70(103)*abb70(107)
      abb70(97)=spbk7k4*abb70(29)
      abb70(43)=spbk4k2*abb70(43)
      abb70(21)=spbl5k4*abb70(21)
      abb70(21)=abb70(43)+abb70(21)
      abb70(21)=4.0_ki*abb70(21)
      abb70(43)=spak1k4*abb70(65)
      abb70(20)=-abb70(62)*abb70(20)
      abb70(20)=abb70(43)+abb70(20)
      abb70(20)=abb70(20)*abb70(107)
      abb70(43)=-abb70(62)*abb70(109)
      abb70(52)=spak1k4*abb70(52)
      abb70(40)=spbl5k1*abb70(40)
      abb70(40)=abb70(40)-abb70(60)
      abb70(40)=8.0_ki*spak4k7*abb70(40)
      abb70(57)=16.0_ki*abb70(57)
      abb70(57)=-spak4k7*abb70(57)
      abb70(60)=8.0_ki*abb70(133)
      abb70(62)=abb70(98)-abb70(114)
      abb70(65)=es12*abb70(62)
      abb70(98)=-spbl5k1*abb70(126)
      abb70(65)=abb70(98)+abb70(65)
      abb70(65)=8.0_ki*abb70(65)
      abb70(62)=16.0_ki*abb70(62)
      abb70(27)=8.0_ki*abb70(27)
      abb70(98)=spbk7k1*spak4k7
      abb70(100)=spbk3k1*spak3k4
      abb70(100)=abb70(100)-abb70(98)
      abb70(100)=abb70(100)*abb70(15)
      abb70(103)=spak3k4*abb70(58)
      abb70(103)=abb70(103)+abb70(119)
      abb70(103)=spbk3k1*abb70(103)
      abb70(58)=-abb70(58)*abb70(98)
      abb70(58)=abb70(103)+abb70(58)
      abb70(58)=4.0_ki*abb70(58)
      abb70(70)=abb70(70)*spbk3k1
      abb70(98)=-4.0_ki*abb70(70)
      abb70(70)=-2.0_ki*abb70(70)
      abb70(29)=-spbk7k1*abb70(29)
      abb70(8)=8.0_ki*abb70(8)
      R2d70=0.0_ki
      rat2 = rat2 + R2d70
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='70' value='", &
          & R2d70, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd70h1