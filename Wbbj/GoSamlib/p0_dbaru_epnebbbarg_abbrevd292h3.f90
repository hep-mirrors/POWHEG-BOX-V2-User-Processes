module     p0_dbaru_epnebbbarg_abbrevd292h3
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(146), public :: abb292
   complex(ki), public :: R2d292
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
      abb292(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb292(2)=NC**(-1)
      abb292(3)=sqrt2**(-1)
      abb292(4)=spak2l6**(-1)
      abb292(5)=spak2k7**(-1)
      abb292(6)=spbl6k2**(-1)
      abb292(7)=sqrt(mB**2)
      abb292(8)=spak2l5**(-1)
      abb292(9)=spbl5k2**(-1)
      abb292(10)=c4*abb292(2)**2
      abb292(11)=abb292(10)*abb292(5)
      abb292(12)=TR*gW
      abb292(12)=abb292(12)**2*i_*CVDU*abb292(3)*abb292(1)
      abb292(13)=abb292(12)*abb292(4)
      abb292(14)=abb292(11)*abb292(13)
      abb292(15)=abb292(14)*spak1k2
      abb292(16)=abb292(12)*abb292(5)*abb292(2)
      abb292(17)=abb292(16)*c3
      abb292(18)=spak1k2*abb292(4)
      abb292(19)=abb292(17)*abb292(18)
      abb292(16)=abb292(16)*c1
      abb292(20)=abb292(16)*abb292(18)
      abb292(19)=-abb292(20)+abb292(15)-abb292(19)
      abb292(21)=-abb292(19)*abb292(7)
      abb292(22)=mB**2
      abb292(23)=spak2k4*spbk7k3
      abb292(24)=abb292(22)*abb292(23)
      abb292(25)=abb292(24)*abb292(21)
      abb292(26)=mB**3
      abb292(27)=abb292(26)*spak2k4
      abb292(28)=-abb292(19)*abb292(27)*spbk7k3
      abb292(25)=abb292(25)+abb292(28)
      abb292(25)=abb292(25)*spbl5k2
      abb292(28)=abb292(11)*spak1k2
      abb292(29)=abb292(12)*spbk7k3
      abb292(30)=abb292(28)*abb292(29)
      abb292(31)=spak2k4*abb292(8)
      abb292(32)=abb292(22)*abb292(31)
      abb292(33)=abb292(30)*abb292(32)
      abb292(34)=spbk7k3*abb292(8)
      abb292(35)=abb292(34)*abb292(16)
      abb292(36)=abb292(22)*spak1k2
      abb292(37)=spak2k4*abb292(36)*abb292(35)
      abb292(38)=abb292(22)*abb292(34)
      abb292(39)=abb292(38)*spak2k4
      abb292(40)=abb292(17)*spak1k2
      abb292(41)=abb292(40)*abb292(39)
      abb292(33)=-abb292(37)+abb292(33)-abb292(41)
      abb292(37)=abb292(33)*abb292(7)
      abb292(41)=-spbl6k2*abb292(37)
      abb292(41)=abb292(41)+abb292(25)
      abb292(42)=es712-es71
      abb292(43)=abb292(42)-es12
      abb292(41)=abb292(43)*abb292(41)
      abb292(44)=spbk7k3*mB
      abb292(45)=-abb292(44)*abb292(19)
      abb292(46)=abb292(45)*spbl5k2
      abb292(47)=spbl5k1*spak2l5
      abb292(48)=abb292(47)*abb292(46)
      abb292(49)=abb292(17)+abb292(16)
      abb292(50)=spak1k2*spbk7k3
      abb292(51)=abb292(50)*abb292(49)
      abb292(51)=abb292(51)-abb292(30)
      abb292(52)=spbl5k2*abb292(7)
      abb292(51)=abb292(51)*abb292(52)
      abb292(53)=spbl6k1*abb292(51)
      abb292(48)=abb292(48)+abb292(53)
      abb292(42)=-spak1k4*abb292(42)
      abb292(53)=es12*spak1k4
      abb292(42)=abb292(42)+abb292(53)
      abb292(48)=abb292(42)*abb292(48)
      abb292(54)=spbl6l5*spak4l6
      abb292(55)=abb292(43)*abb292(54)
      abb292(56)=abb292(46)*abb292(55)
      abb292(57)=abb292(4)**2
      abb292(58)=abb292(57)*abb292(27)
      abb292(59)=abb292(58)*abb292(30)
      abb292(60)=abb292(27)*abb292(49)
      abb292(61)=abb292(60)*abb292(57)
      abb292(62)=abb292(50)*abb292(61)
      abb292(59)=abb292(62)-abb292(59)
      abb292(62)=spbl5k2**2
      abb292(63)=abb292(62)*abb292(59)
      abb292(64)=abb292(43)*abb292(6)
      abb292(65)=abb292(63)*abb292(64)
      abb292(56)=abb292(65)+abb292(56)
      abb292(56)=spak2l5*abb292(56)
      abb292(65)=spbl6l5*spak4l5
      abb292(66)=abb292(43)*abb292(65)
      abb292(67)=-abb292(51)*abb292(66)
      abb292(41)=abb292(56)+abb292(67)+abb292(41)+abb292(48)
      abb292(41)=8.0_ki*abb292(41)
      abb292(48)=abb292(17)*mB
      abb292(18)=abb292(48)*abb292(18)
      abb292(15)=abb292(15)*mB
      abb292(20)=abb292(20)*mB
      abb292(15)=abb292(20)+abb292(18)-abb292(15)
      abb292(18)=spak2k4*abb292(15)
      abb292(20)=abb292(18)*spbl5k3
      abb292(56)=abb292(20)*spbk7k2
      abb292(67)=-spak2l5*spbl5k2*abb292(56)
      abb292(68)=abb292(11)*abb292(12)*spak1k2
      abb292(69)=abb292(16)*spak1k2
      abb292(40)=abb292(40)+abb292(69)-abb292(68)
      abb292(69)=abb292(40)*abb292(52)
      abb292(70)=spbl6k3*spbk7k2
      abb292(71)=abb292(69)*abb292(70)
      abb292(72)=-spak2k4*abb292(71)
      abb292(67)=abb292(72)+abb292(67)
      abb292(67)=16.0_ki*abb292(67)
      abb292(72)=spbl5k1*abb292(42)
      abb292(55)=abb292(72)+abb292(55)
      abb292(45)=abb292(45)*abb292(55)
      abb292(55)=abb292(34)*abb292(27)
      abb292(72)=-abb292(55)*abb292(19)
      abb292(73)=abb292(43)*abb292(72)
      abb292(59)=abb292(59)*spbl5k2
      abb292(74)=abb292(59)*abb292(64)
      abb292(73)=abb292(74)+abb292(73)
      abb292(45)=abb292(73)+abb292(45)
      abb292(45)=16.0_ki*abb292(45)
      abb292(56)=32.0_ki*abb292(56)
      abb292(74)=abb292(54)*abb292(46)
      abb292(63)=abb292(63)*abb292(6)
      abb292(63)=abb292(74)+abb292(63)
      abb292(63)=abb292(63)*spak2l5
      abb292(74)=abb292(46)*spak1k4
      abb292(75)=abb292(47)*abb292(74)
      abb292(25)=abb292(63)-abb292(75)+abb292(25)
      abb292(63)=abb292(10)*abb292(13)
      abb292(75)=abb292(34)*spak1k2
      abb292(76)=abb292(26)*abb292(75)*abb292(63)
      abb292(77)=c3+c1
      abb292(77)=abb292(2)*abb292(77)
      abb292(13)=abb292(77)*abb292(13)
      abb292(78)=spak1k2*abb292(13)
      abb292(79)=abb292(34)*abb292(26)
      abb292(80)=abb292(78)*abb292(79)
      abb292(76)=abb292(76)-abb292(80)
      abb292(80)=abb292(9)*spbk7l5
      abb292(81)=-spak4l6*abb292(76)*abb292(80)
      abb292(10)=abb292(77)-abb292(10)
      abb292(77)=abb292(10)*abb292(29)
      abb292(82)=abb292(8)**2
      abb292(83)=abb292(82)*abb292(27)
      abb292(84)=abb292(9)*abb292(83)*abb292(77)
      abb292(85)=spak1l5*spbk7l5
      abb292(86)=abb292(85)*abb292(84)
      abb292(37)=abb292(86)-abb292(37)+abb292(81)
      abb292(37)=spbl6k2*abb292(37)
      abb292(81)=abb292(13)-abb292(63)
      abb292(86)=-abb292(53)*abb292(80)*abb292(79)*abb292(81)
      abb292(87)=abb292(63)*spak1k2
      abb292(87)=abb292(87)-abb292(78)
      abb292(88)=-abb292(38)*abb292(87)
      abb292(89)=abb292(88)*abb292(7)
      abb292(76)=-abb292(89)-abb292(76)
      abb292(90)=spak4l5*spbk7l5
      abb292(76)=abb292(76)*abb292(90)
      abb292(91)=abb292(8)*mB
      abb292(92)=-abb292(91)*abb292(77)
      abb292(93)=abb292(92)*abb292(85)
      abb292(93)=abb292(93)-abb292(51)
      abb292(94)=spbl6k1*spak1k4
      abb292(94)=abb292(65)+abb292(94)
      abb292(93)=abb292(93)*abb292(94)
      abb292(95)=spbk7k1*spak1k4
      abb292(96)=spbk7l6*spak4l6
      abb292(97)=-abb292(95)-abb292(96)
      abb292(89)=abb292(89)*abb292(97)
      abb292(97)=abb292(81)*abb292(55)
      abb292(98)=abb292(97)*abb292(85)
      abb292(37)=abb292(37)+abb292(98)+abb292(76)+abb292(86)+abb292(89)+abb292(&
      &73)+abb292(25)+abb292(93)
      abb292(37)=16.0_ki*abb292(37)
      abb292(73)=abb292(39)*abb292(21)
      abb292(76)=abb292(27)*abb292(8)
      abb292(86)=-abb292(76)*abb292(19)
      abb292(89)=abb292(9)*spbk3k2
      abb292(93)=abb292(86)*abb292(89)
      abb292(98)=abb292(93)*spbk7l5
      abb292(16)=abb292(16)*mB
      abb292(16)=abb292(16)+abb292(48)
      abb292(48)=abb292(12)*mB
      abb292(99)=abb292(11)*abb292(48)
      abb292(100)=abb292(16)-abb292(99)
      abb292(100)=abb292(31)*abb292(100)
      abb292(101)=abb292(100)*spbl6k3
      abb292(102)=abb292(101)*abb292(85)
      abb292(98)=-abb292(98)+abb292(73)+abb292(102)
      abb292(102)=32.0_ki*abb292(98)
      abb292(59)=abb292(59)*abb292(6)
      abb292(59)=-abb292(59)+abb292(98)-abb292(72)
      abb292(98)=-32.0_ki*abb292(59)
      abb292(13)=abb292(44)*abb292(13)
      abb292(63)=abb292(44)*abb292(63)
      abb292(13)=abb292(13)-abb292(63)
      abb292(13)=abb292(13)*spbk7l5
      abb292(103)=abb292(92)*spbk7l6
      abb292(103)=abb292(103)-abb292(13)
      abb292(104)=32.0_ki*spak1k4
      abb292(105)=abb292(103)*abb292(104)
      abb292(106)=spbl6k2*abb292(7)
      abb292(33)=-abb292(33)*abb292(106)
      abb292(51)=-abb292(51)*abb292(94)
      abb292(25)=abb292(33)+abb292(51)+abb292(25)
      abb292(25)=8.0_ki*abb292(25)
      abb292(33)=16.0_ki*spbk7k2
      abb292(51)=abb292(33)*abb292(20)
      abb292(59)=-16.0_ki*abb292(59)
      abb292(72)=abb292(6)*abb292(72)
      abb292(107)=-abb292(30)*abb292(83)
      abb292(108)=abb292(60)*abb292(82)
      abb292(50)=abb292(50)*abb292(108)
      abb292(50)=abb292(107)+abb292(50)
      abb292(50)=abb292(9)*abb292(50)
      abb292(50)=abb292(72)+abb292(50)
      abb292(50)=spbk7k2*abb292(50)
      abb292(72)=abb292(75)*abb292(16)
      abb292(30)=abb292(30)*abb292(91)
      abb292(30)=abb292(72)-abb292(30)
      abb292(72)=abb292(90)+abb292(96)
      abb292(75)=-abb292(95)-abb292(72)
      abb292(75)=abb292(30)*abb292(75)
      abb292(50)=abb292(75)+abb292(50)
      abb292(50)=16.0_ki*abb292(50)
      abb292(63)=abb292(63)*spak1k2
      abb292(75)=abb292(78)*abb292(44)
      abb292(63)=abb292(63)-abb292(75)
      abb292(75)=spbl5k1*spak1k4
      abb292(75)=abb292(75)-abb292(54)
      abb292(63)=abb292(63)*abb292(75)
      abb292(78)=-abb292(55)*abb292(87)
      abb292(90)=abb292(6)*spbl5k2
      abb292(95)=abb292(58)*spak1k2*abb292(77)*abb292(90)
      abb292(63)=abb292(78)+abb292(95)+abb292(63)
      abb292(63)=8.0_ki*spbk7l5*abb292(63)
      abb292(20)=abb292(20)*spbk7l5
      abb292(78)=16.0_ki*abb292(20)
      abb292(20)=-8.0_ki*abb292(20)
      abb292(95)=32.0_ki*abb292(30)
      abb292(30)=-16.0_ki*abb292(30)
      abb292(107)=abb292(15)*spbl5k2
      abb292(109)=spak2l5*abb292(107)*spbk7l5
      abb292(110)=abb292(69)*spbk7l6
      abb292(110)=abb292(110)+abb292(109)
      abb292(111)=8.0_ki*abb292(43)*abb292(110)
      abb292(112)=abb292(15)*spbk7l5
      abb292(113)=16.0_ki*abb292(112)*abb292(43)
      abb292(114)=abb292(26)*abb292(8)
      abb292(115)=-abb292(114)*abb292(19)
      abb292(116)=abb292(115)*spbk7l5
      abb292(117)=es71+es12
      abb292(118)=abb292(117)*abb292(9)
      abb292(119)=es712*abb292(9)
      abb292(118)=abb292(118)-abb292(119)
      abb292(120)=abb292(116)*abb292(118)
      abb292(48)=abb292(48)*abb292(8)
      abb292(121)=-abb292(48)*abb292(10)
      abb292(85)=-abb292(121)*abb292(85)
      abb292(85)=abb292(69)+abb292(85)
      abb292(85)=spbk7l6*abb292(85)
      abb292(85)=abb292(109)+abb292(85)+abb292(120)
      abb292(85)=16.0_ki*abb292(85)
      abb292(109)=8.0_ki*abb292(110)
      abb292(87)=-8.0_ki*spbk7l5**2*mB*abb292(87)
      abb292(110)=abb292(22)*spak2k4
      abb292(120)=-abb292(7)*abb292(110)
      abb292(27)=abb292(120)-abb292(27)
      abb292(27)=spbl5k2*abb292(19)*abb292(27)
      abb292(120)=-abb292(65)*abb292(69)
      abb292(122)=-abb292(32)*abb292(68)
      abb292(36)=abb292(49)*abb292(36)
      abb292(31)=abb292(31)*abb292(36)
      abb292(31)=abb292(122)+abb292(31)
      abb292(31)=abb292(31)*abb292(106)
      abb292(27)=abb292(31)+abb292(27)+abb292(120)
      abb292(27)=spbk3k2*abb292(27)
      abb292(31)=abb292(54)*spbk3k2
      abb292(54)=abb292(107)*abb292(31)
      abb292(120)=abb292(58)*abb292(68)
      abb292(122)=spak1k2*abb292(61)
      abb292(120)=abb292(122)-abb292(120)
      abb292(122)=abb292(6)*spbk3k2
      abb292(123)=abb292(120)*abb292(122)
      abb292(124)=abb292(62)*abb292(123)
      abb292(54)=abb292(124)+abb292(54)
      abb292(54)=spak2l5*abb292(54)
      abb292(124)=-spak2l5*abb292(107)*spbl5k3*spbk7k2
      abb292(71)=-abb292(71)+abb292(124)
      abb292(71)=spak4k7*abb292(71)
      abb292(124)=spbk3k2*spak1k4
      abb292(47)=-abb292(107)*abb292(124)*abb292(47)
      abb292(125)=abb292(124)*spbl6k1
      abb292(126)=-abb292(69)*abb292(125)
      abb292(27)=abb292(47)+abb292(126)+abb292(71)+abb292(54)+abb292(27)
      abb292(27)=8.0_ki*abb292(27)
      abb292(47)=spak4k7*spbk7k2
      abb292(54)=-spbl5k3*abb292(47)
      abb292(71)=-spbl5k1*abb292(124)
      abb292(31)=abb292(71)+abb292(54)+abb292(31)
      abb292(31)=abb292(15)*abb292(31)
      abb292(54)=spbk3k2*abb292(86)
      abb292(71)=spbl5k2*abb292(123)
      abb292(31)=abb292(54)+abb292(71)+abb292(31)
      abb292(31)=16.0_ki*abb292(31)
      abb292(54)=abb292(115)*spak4l6
      abb292(71)=abb292(82)*abb292(26)
      abb292(82)=abb292(11)*abb292(12)
      abb292(126)=spak2k4*abb292(82)
      abb292(127)=abb292(71)*abb292(126)
      abb292(127)=abb292(127)-abb292(108)
      abb292(128)=-spak1l5*abb292(127)
      abb292(54)=abb292(54)+abb292(128)
      abb292(54)=spbl6k2*abb292(54)
      abb292(128)=abb292(4)*abb292(49)
      abb292(129)=abb292(128)-abb292(14)
      abb292(114)=abb292(129)*abb292(114)
      abb292(130)=abb292(114)*abb292(53)
      abb292(54)=abb292(54)-abb292(130)
      abb292(54)=abb292(9)*abb292(54)
      abb292(131)=spak4l5*abb292(115)
      abb292(132)=-abb292(60)*abb292(8)*abb292(4)
      abb292(76)=abb292(76)*abb292(14)
      abb292(76)=abb292(76)+abb292(132)
      abb292(132)=abb292(76)*spak1l5
      abb292(133)=abb292(91)*abb292(49)
      abb292(99)=abb292(99)*abb292(8)
      abb292(99)=abb292(99)-abb292(133)
      abb292(134)=abb292(99)*spak1l5
      abb292(135)=abb292(134)*abb292(94)
      abb292(54)=abb292(135)-abb292(132)+abb292(131)+abb292(54)
      abb292(54)=spbl5k3*abb292(54)
      abb292(131)=-abb292(32)*abb292(19)
      abb292(135)=abb292(131)*abb292(7)
      abb292(136)=2.0_ki*abb292(86)-abb292(135)
      abb292(136)=spbk3k2*abb292(136)
      abb292(101)=abb292(101)*spak1l5
      abb292(123)=-abb292(101)+abb292(123)
      abb292(123)=spbl5k2*abb292(123)
      abb292(116)=-abb292(89)*abb292(116)
      abb292(137)=-spbl6k3*spbk7l5*abb292(134)
      abb292(116)=abb292(116)+abb292(137)
      abb292(116)=spak4k7*abb292(116)
      abb292(54)=abb292(116)+abb292(136)+abb292(54)+abb292(123)
      abb292(54)=16.0_ki*abb292(54)
      abb292(116)=abb292(99)*spbl6k3
      abb292(123)=abb292(116)*abb292(104)
      abb292(136)=abb292(4)*abb292(16)
      abb292(137)=abb292(14)*mB
      abb292(136)=abb292(136)-abb292(137)
      abb292(137)=abb292(136)*spbl5k3
      abb292(138)=abb292(116)-abb292(137)
      abb292(104)=abb292(138)*abb292(104)
      abb292(16)=abb292(34)*abb292(16)
      abb292(11)=abb292(11)*abb292(29)
      abb292(29)=abb292(11)*abb292(91)
      abb292(16)=-abb292(29)+abb292(16)
      abb292(29)=abb292(16)*spak1k4
      abb292(91)=16.0_ki*abb292(29)
      abb292(73)=-8.0_ki*abb292(73)
      abb292(139)=spbl6k3*abb292(7)
      abb292(131)=8.0_ki*abb292(131)*abb292(139)
      abb292(140)=abb292(99)*spak1k4
      abb292(141)=16.0_ki*spbl5k3*abb292(140)
      abb292(18)=abb292(18)*spbl5k2
      abb292(75)=-abb292(15)*abb292(75)
      abb292(112)=spak4k7*abb292(112)
      abb292(90)=abb292(120)*abb292(90)
      abb292(75)=abb292(112)+abb292(75)+abb292(90)-abb292(18)+abb292(135)+abb29&
      &2(86)
      abb292(75)=8.0_ki*spbl5k3*abb292(75)
      abb292(86)=-abb292(115)*abb292(122)
      abb292(90)=-spak1k2*abb292(133)
      abb292(28)=abb292(28)*abb292(48)
      abb292(28)=abb292(28)+abb292(90)
      abb292(28)=spbk3k2*abb292(28)
      abb292(48)=abb292(71)*abb292(89)
      abb292(40)=-abb292(40)*abb292(48)
      abb292(71)=-spbl5k3*abb292(134)
      abb292(90)=-spak1k7*abb292(16)
      abb292(112)=-spak1l6*abb292(116)
      abb292(28)=abb292(112)+abb292(90)+abb292(71)+abb292(86)+abb292(28)+abb292&
      &(40)
      abb292(28)=16.0_ki*abb292(28)
      abb292(40)=abb292(22)*abb292(8)
      abb292(71)=abb292(40)*abb292(21)
      abb292(86)=abb292(71)+abb292(107)
      abb292(90)=-abb292(86)*abb292(43)
      abb292(15)=spak2l5*abb292(15)*abb292(62)
      abb292(62)=spbl6k2*abb292(69)
      abb292(15)=abb292(15)+abb292(62)+abb292(90)
      abb292(15)=8.0_ki*abb292(15)
      abb292(62)=16.0_ki*abb292(107)
      abb292(69)=spbl6l5*abb292(134)
      abb292(69)=abb292(69)-abb292(71)+abb292(115)
      abb292(69)=16.0_ki*abb292(69)
      abb292(71)=-8.0_ki*abb292(107)
      abb292(90)=spbl5k3*abb292(22)*abb292(19)
      abb292(107)=abb292(40)*abb292(128)
      abb292(22)=abb292(22)*abb292(14)
      abb292(112)=-abb292(8)*abb292(22)
      abb292(107)=abb292(112)+abb292(107)
      abb292(107)=spbk3k1*abb292(107)*spak1k2**2
      abb292(88)=abb292(107)+abb292(88)+abb292(90)
      abb292(88)=abb292(7)*abb292(88)
      abb292(36)=-abb292(8)*abb292(36)
      abb292(40)=abb292(40)*abb292(68)
      abb292(36)=abb292(40)+abb292(36)
      abb292(36)=abb292(36)*abb292(139)
      abb292(36)=abb292(36)+abb292(88)
      abb292(36)=8.0_ki*abb292(36)
      abb292(21)=abb292(38)*abb292(21)
      abb292(21)=abb292(21)+abb292(46)
      abb292(38)=8.0_ki*spak4l6
      abb292(38)=-abb292(38)*abb292(21)*abb292(43)
      abb292(40)=abb292(46)*spak4l6
      abb292(68)=abb292(83)*abb292(11)
      abb292(83)=spbk7k3*abb292(108)
      abb292(68)=abb292(83)-abb292(68)
      abb292(83)=-abb292(9)*abb292(68)
      abb292(55)=abb292(55)*abb292(14)
      abb292(34)=abb292(34)*abb292(4)
      abb292(60)=abb292(34)*abb292(60)
      abb292(55)=abb292(60)-abb292(55)
      abb292(60)=-abb292(6)*abb292(55)
      abb292(60)=abb292(60)+abb292(83)
      abb292(60)=spbk7k2*abb292(60)
      abb292(72)=abb292(16)*abb292(72)
      abb292(60)=abb292(72)+abb292(60)
      abb292(60)=spak1k7*abb292(60)
      abb292(72)=abb292(29)*es71
      abb292(60)=abb292(60)-abb292(72)-abb292(40)
      abb292(60)=16.0_ki*abb292(60)
      abb292(83)=32.0_ki*abb292(29)
      abb292(88)=abb292(53)*abb292(16)
      abb292(29)=abb292(29)*es712
      abb292(29)=abb292(72)+abb292(88)-abb292(29)
      abb292(72)=16.0_ki*abb292(29)
      abb292(40)=-8.0_ki*abb292(40)
      abb292(88)=8.0_ki*abb292(86)
      abb292(90)=spak4l6*spbk3k2
      abb292(107)=-abb292(90)*abb292(88)
      abb292(108)=abb292(124)*abb292(99)
      abb292(112)=abb292(49)-abb292(82)
      abb292(48)=spak1k4*abb292(112)*abb292(48)
      abb292(114)=abb292(6)*abb292(114)*abb292(124)
      abb292(48)=abb292(114)-abb292(108)+abb292(48)
      abb292(48)=16.0_ki*abb292(48)
      abb292(114)=16.0_ki*abb292(108)
      abb292(116)=spbl6k1*abb292(29)
      abb292(120)=abb292(55)*es712
      abb292(117)=abb292(55)*abb292(117)
      abb292(120)=abb292(120)-abb292(117)
      abb292(16)=abb292(43)*abb292(16)
      abb292(133)=-abb292(16)*abb292(65)
      abb292(116)=abb292(116)+abb292(133)+abb292(120)
      abb292(116)=spak1l5*abb292(116)
      abb292(133)=abb292(4)*abb292(35)
      abb292(34)=abb292(17)*abb292(34)
      abb292(34)=abb292(133)+abb292(34)
      abb292(34)=abb292(26)*abb292(34)
      abb292(14)=abb292(79)*abb292(14)
      abb292(14)=-abb292(14)+abb292(34)
      abb292(34)=spak1k4*abb292(14)*es12**2
      abb292(14)=abb292(14)*abb292(53)
      abb292(53)=es71*abb292(14)
      abb292(34)=abb292(34)+abb292(53)
      abb292(34)=abb292(9)*abb292(34)
      abb292(19)=-abb292(79)*abb292(19)
      abb292(53)=abb292(19)-abb292(21)
      abb292(53)=spak4l5*abb292(53)*abb292(43)
      abb292(14)=-abb292(119)*abb292(14)
      abb292(19)=-spak4l6*abb292(19)*abb292(118)
      abb292(68)=abb292(68)*abb292(118)
      abb292(79)=-spak1l5*abb292(68)
      abb292(19)=abb292(19)+abb292(79)
      abb292(19)=spbl6k2*abb292(19)
      abb292(14)=abb292(19)+abb292(53)+abb292(34)+abb292(14)+abb292(116)
      abb292(14)=8.0_ki*abb292(14)
      abb292(19)=abb292(93)-abb292(101)
      abb292(19)=spbk7k2*abb292(19)
      abb292(34)=16.0_ki*abb292(19)
      abb292(46)=abb292(46)*spak4l5
      abb292(19)=abb292(46)+abb292(19)
      abb292(46)=-16.0_ki*abb292(19)
      abb292(44)=abb292(44)*abb292(129)
      abb292(53)=abb292(42)*abb292(44)
      abb292(79)=16.0_ki*abb292(53)
      abb292(19)=-8.0_ki*abb292(19)
      abb292(93)=-spbk7k2*abb292(115)*abb292(118)
      abb292(101)=abb292(43)*abb292(99)
      abb292(116)=-spbk7l6*spak1l5*abb292(101)
      abb292(93)=abb292(93)+abb292(116)
      abb292(93)=8.0_ki*abb292(93)
      abb292(116)=abb292(115)-abb292(86)
      abb292(116)=spak4l5*abb292(116)
      abb292(129)=abb292(65)*abb292(134)
      abb292(116)=abb292(129)-abb292(132)+abb292(116)
      abb292(116)=spbk3k2*abb292(116)
      abb292(115)=abb292(115)*abb292(89)
      abb292(129)=spak4l6*abb292(115)
      abb292(132)=abb292(127)*abb292(89)
      abb292(133)=-spak1l5*abb292(132)
      abb292(129)=abb292(129)+abb292(133)
      abb292(129)=spbl6k2*abb292(129)
      abb292(115)=spbk7k2*abb292(115)
      abb292(70)=abb292(134)*abb292(70)
      abb292(70)=abb292(115)+abb292(70)
      abb292(70)=spak4k7*abb292(70)
      abb292(115)=-abb292(89)*abb292(130)
      abb292(130)=abb292(134)*abb292(125)
      abb292(70)=abb292(130)+abb292(70)+abb292(129)+abb292(115)+abb292(116)
      abb292(70)=8.0_ki*abb292(70)
      abb292(115)=abb292(124)*abb292(136)
      abb292(116)=-16.0_ki*abb292(115)
      abb292(129)=-8.0_ki*spbl6k2*abb292(134)
      abb292(18)=-abb292(135)-abb292(18)
      abb292(18)=abb292(18)*abb292(33)
      abb292(130)=abb292(33)*abb292(135)
      abb292(133)=8.0_ki*spbk7k2
      abb292(134)=abb292(133)*abb292(135)
      abb292(142)=abb292(133)*spak4k7
      abb292(86)=-abb292(86)*abb292(142)
      abb292(21)=8.0_ki*abb292(21)*abb292(42)
      abb292(143)=-16.0_ki*abb292(74)
      abb292(74)=-8.0_ki*abb292(74)
      abb292(88)=-abb292(124)*abb292(88)
      abb292(124)=spbk7l5*abb292(81)*mB
      abb292(121)=spbk7l6*abb292(121)
      abb292(121)=-abb292(124)+abb292(121)
      abb292(121)=16.0_ki*abb292(121)
      abb292(101)=8.0_ki*abb292(101)
      abb292(144)=abb292(43)*abb292(136)
      abb292(145)=-8.0_ki*abb292(144)
      abb292(120)=abb292(120)*abb292(6)
      abb292(146)=abb292(13)*spak4l6
      abb292(68)=abb292(146)+abb292(120)-abb292(68)
      abb292(92)=abb292(92)*abb292(96)
      abb292(92)=abb292(92)-abb292(68)
      abb292(92)=16.0_ki*abb292(92)
      abb292(96)=abb292(76)*abb292(122)
      abb292(96)=abb292(96)+abb292(132)
      abb292(120)=spak4l6*abb292(138)
      abb292(132)=spbk3k1*abb292(140)
      abb292(120)=abb292(132)+abb292(120)+abb292(96)
      abb292(120)=16.0_ki*abb292(120)
      abb292(16)=abb292(16)*spak4l5
      abb292(44)=spak4l6*abb292(43)*abb292(44)
      abb292(16)=abb292(16)-abb292(44)
      abb292(16)=8.0_ki*abb292(16)
      abb292(44)=spbk3k2*abb292(99)*spak4l5
      abb292(90)=abb292(90)*abb292(136)
      abb292(44)=abb292(44)+abb292(90)
      abb292(44)=8.0_ki*abb292(44)
      abb292(90)=abb292(33)*abb292(100)
      abb292(132)=abb292(133)*abb292(100)
      abb292(140)=abb292(142)*abb292(99)
      abb292(29)=-8.0_ki*abb292(29)
      abb292(108)=-8.0_ki*abb292(108)
      abb292(42)=-spbl6k1*abb292(42)
      abb292(42)=abb292(42)+abb292(66)
      abb292(66)=spbk7k3*abb292(49)
      abb292(66)=abb292(66)-abb292(11)
      abb292(42)=abb292(42)*abb292(66)*abb292(7)
      abb292(66)=abb292(32)*abb292(11)
      abb292(35)=abb292(110)*abb292(35)
      abb292(17)=abb292(39)*abb292(17)
      abb292(17)=-abb292(17)+abb292(66)-abb292(35)
      abb292(17)=-spbl6k2*abb292(118)*abb292(17)*abb292(7)
      abb292(35)=-abb292(24)*abb292(128)
      abb292(23)=abb292(22)*abb292(23)
      abb292(23)=abb292(23)+abb292(35)
      abb292(23)=abb292(7)*abb292(23)*abb292(43)
      abb292(17)=abb292(17)+abb292(23)+abb292(42)
      abb292(17)=8.0_ki*abb292(17)
      abb292(23)=spak2k4*abb292(49)
      abb292(23)=abb292(23)-abb292(126)
      abb292(35)=abb292(23)*abb292(139)
      abb292(39)=abb292(33)*abb292(35)
      abb292(42)=abb292(119)*abb292(55)
      abb292(55)=abb292(117)*abb292(9)
      abb292(11)=abb292(58)*abb292(11)
      abb292(58)=-spbk7k3*abb292(61)
      abb292(11)=abb292(11)+abb292(58)
      abb292(11)=abb292(11)*abb292(64)
      abb292(11)=-abb292(11)+abb292(42)-abb292(55)
      abb292(42)=spak4l5*abb292(103)
      abb292(55)=-spbk7k2*abb292(35)
      abb292(42)=abb292(55)+abb292(42)-abb292(11)
      abb292(42)=16.0_ki*abb292(42)
      abb292(55)=-abb292(133)*abb292(35)
      abb292(58)=-abb292(112)*abb292(7)
      abb292(64)=8.0_ki*spbk7l6
      abb292(43)=abb292(64)*abb292(58)*abb292(43)
      abb292(65)=-spbk3k2*abb292(65)
      abb292(65)=-abb292(125)+abb292(65)
      abb292(65)=abb292(58)*abb292(65)
      abb292(22)=abb292(22)*spak2k4
      abb292(66)=abb292(128)*abb292(110)
      abb292(22)=abb292(22)-abb292(66)
      abb292(22)=abb292(22)*abb292(7)
      abb292(66)=spbk3k2*abb292(22)
      abb292(49)=abb292(49)*abb292(32)
      abb292(82)=abb292(8)*abb292(110)*abb292(82)
      abb292(49)=abb292(82)-abb292(49)
      abb292(49)=abb292(49)*abb292(106)
      abb292(82)=abb292(89)*abb292(49)
      abb292(103)=-abb292(112)*abb292(139)
      abb292(47)=-abb292(103)*abb292(47)
      abb292(47)=abb292(47)+abb292(82)+abb292(66)+abb292(65)
      abb292(47)=8.0_ki*abb292(47)
      abb292(26)=abb292(26)*abb292(126)*abb292(57)
      abb292(26)=abb292(26)-abb292(61)
      abb292(26)=abb292(26)*abb292(122)
      abb292(57)=abb292(76)*abb292(89)
      abb292(26)=abb292(26)+abb292(57)
      abb292(57)=spak4l5*abb292(138)
      abb292(57)=abb292(57)+abb292(26)
      abb292(57)=16.0_ki*abb292(57)
      abb292(61)=spbl6k2*abb292(58)
      abb292(61)=abb292(61)+abb292(144)
      abb292(61)=8.0_ki*abb292(61)
      abb292(65)=-32.0_ki*abb292(136)
      abb292(66)=-spak2k4*abb292(136)
      abb292(33)=abb292(33)*abb292(66)
      abb292(82)=abb292(133)*abb292(66)
      abb292(89)=abb292(142)*abb292(136)
      abb292(53)=-8.0_ki*abb292(53)
      abb292(110)=8.0_ki*abb292(115)
      abb292(112)=abb292(100)*spbk7l6
      abb292(115)=abb292(66)*spbk7l5
      abb292(112)=abb292(112)-abb292(115)
      abb292(117)=32.0_ki*abb292(112)
      abb292(112)=-16.0_ki*abb292(112)
      abb292(118)=abb292(136)*spbk7l5
      abb292(119)=-spbk7l6*abb292(99)
      abb292(119)=abb292(118)+abb292(119)
      abb292(119)=spak4k7*abb292(119)
      abb292(66)=abb292(66)*spbl5k2
      abb292(100)=-spbl6k2*abb292(100)
      abb292(100)=abb292(119)+abb292(66)+abb292(100)
      abb292(100)=16.0_ki*abb292(100)
      abb292(119)=abb292(77)*abb292(94)
      abb292(24)=-abb292(24)*abb292(81)
      abb292(24)=abb292(24)+abb292(119)
      abb292(81)=spbk7l5*abb292(7)
      abb292(24)=abb292(81)*abb292(24)
      abb292(32)=-abb292(106)*abb292(80)*abb292(32)*abb292(77)
      abb292(24)=abb292(32)+abb292(24)
      abb292(24)=8.0_ki*abb292(24)
      abb292(32)=abb292(35)*spbk7l5
      abb292(35)=-16.0_ki*abb292(32)
      abb292(77)=abb292(6)*abb292(97)
      abb292(77)=abb292(84)+abb292(77)
      abb292(77)=spbk7l6*abb292(77)
      abb292(77)=abb292(32)+abb292(77)
      abb292(77)=16.0_ki*abb292(77)
      abb292(32)=8.0_ki*abb292(32)
      abb292(10)=-abb292(81)*abb292(64)*abb292(12)*abb292(10)
      abb292(12)=-abb292(58)*abb292(94)
      abb292(49)=abb292(9)*abb292(49)
      abb292(12)=abb292(49)+abb292(22)+abb292(12)
      abb292(12)=spbl5k3*abb292(12)
      abb292(22)=spbk3k1*abb292(135)
      abb292(23)=spbl6k3*abb292(23)*abb292(52)
      abb292(49)=abb292(103)*spak4k7*spbk7l5
      abb292(12)=abb292(22)+abb292(49)+abb292(23)+abb292(12)
      abb292(12)=8.0_ki*abb292(12)
      abb292(22)=-abb292(9)*abb292(127)
      abb292(23)=-abb292(6)*abb292(76)
      abb292(22)=abb292(22)+abb292(23)
      abb292(22)=16.0_ki*spbl6k3*abb292(22)
      abb292(23)=-spbl6l5*abb292(58)
      abb292(23)=abb292(124)+abb292(23)
      abb292(23)=8.0_ki*abb292(23)
      abb292(49)=8.0_ki*abb292(68)
      abb292(52)=spak4l6*abb292(137)
      abb292(52)=abb292(52)-abb292(96)
      abb292(52)=8.0_ki*abb292(52)
      abb292(58)=-8.0_ki*abb292(99)
      abb292(64)=spak4l5*abb292(13)
      abb292(11)=abb292(64)+abb292(11)
      abb292(11)=8.0_ki*abb292(11)
      abb292(64)=spak4l5*abb292(137)
      abb292(26)=abb292(64)-abb292(26)
      abb292(26)=8.0_ki*abb292(26)
      abb292(64)=16.0_ki*abb292(136)
      abb292(68)=16.0_ki*abb292(115)
      abb292(76)=-8.0_ki*abb292(115)
      abb292(80)=-spak4k7*abb292(118)
      abb292(66)=-abb292(66)+abb292(80)
      abb292(66)=8.0_ki*abb292(66)
      abb292(80)=8.0_ki*spak1k4
      abb292(13)=abb292(13)*abb292(80)
      abb292(80)=abb292(137)*abb292(80)
      R2d292=0.0_ki
      rat2 = rat2 + R2d292
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='292' value='", &
          & R2d292, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd292h3
