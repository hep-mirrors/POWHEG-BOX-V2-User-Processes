module     p5_usbar_epnebbbarg_abbrevd38h2
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(129), public :: abb38
   complex(ki), public :: R2d38
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p5_usbar_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_color, only: TR
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb38(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb38(2)=NC**(-1)
      abb38(3)=es234**(-1)
      abb38(4)=es56**(-1)
      abb38(5)=es71**(-1)
      abb38(6)=spbl5k2**(-1)
      abb38(7)=spak2l6**(-1)
      abb38(8)=spak2l5**(-1)
      abb38(9)=spbl6k2**(-1)
      abb38(10)=TR*gW
      abb38(11)=abb38(10)**2
      abb38(12)=abb38(11)*c4
      abb38(13)=i_*CVSU*abb38(4)*abb38(3)
      abb38(14)=abb38(13)*abb38(5)*abb38(1)
      abb38(15)=abb38(14)*spak2k4
      abb38(16)=spbe7k1*abb38(15)
      abb38(17)=abb38(16)*spbk4k3
      abb38(18)=abb38(12)*abb38(17)
      abb38(19)=abb38(18)*abb38(2)
      abb38(20)=abb38(17)*c1
      abb38(21)=abb38(20)*abb38(11)
      abb38(19)=abb38(19)-abb38(21)
      abb38(21)=-spak1e7*abb38(19)
      abb38(22)=abb38(21)*abb38(2)
      abb38(23)=NC*c1
      abb38(24)=abb38(17)*abb38(23)
      abb38(25)=abb38(24)*abb38(11)
      abb38(18)=abb38(25)-abb38(18)
      abb38(25)=abb38(18)*spak1e7
      abb38(26)=abb38(22)-abb38(25)
      abb38(26)=abb38(26)*spbl6k1
      abb38(19)=abb38(19)*abb38(2)
      abb38(27)=spbk7l6*spae7k7
      abb38(28)=-abb38(27)*abb38(19)
      abb38(29)=abb38(18)*abb38(27)
      abb38(26)=abb38(26)-abb38(28)+abb38(29)
      abb38(26)=abb38(26)*spak4l5
      abb38(30)=abb38(16)*c4
      abb38(31)=abb38(30)*abb38(11)
      abb38(32)=spak1e7*spbk3k2
      abb38(33)=abb38(32)*abb38(2)
      abb38(34)=abb38(33)*abb38(31)
      abb38(35)=abb38(16)*abb38(11)
      abb38(36)=abb38(32)*c1
      abb38(37)=abb38(36)*abb38(35)
      abb38(34)=abb38(34)-abb38(37)
      abb38(37)=abb38(34)*abb38(2)
      abb38(38)=abb38(35)*abb38(23)
      abb38(38)=abb38(38)-abb38(31)
      abb38(39)=abb38(38)*abb38(32)
      abb38(40)=abb38(37)+abb38(39)
      abb38(40)=abb38(40)*spbl6k1
      abb38(41)=abb38(27)*spbk3k2
      abb38(42)=abb38(41)*abb38(2)
      abb38(43)=abb38(42)*abb38(31)
      abb38(44)=abb38(41)*c1
      abb38(45)=abb38(44)*abb38(35)
      abb38(43)=abb38(43)-abb38(45)
      abb38(43)=abb38(43)*abb38(2)
      abb38(45)=abb38(38)*abb38(41)
      abb38(40)=abb38(40)-abb38(43)-abb38(45)
      abb38(40)=abb38(40)*spak2l5
      abb38(46)=spak2k4**2
      abb38(47)=abb38(14)*spbk4k3
      abb38(48)=abb38(46)*abb38(47)
      abb38(49)=abb38(48)*spbe7k1
      abb38(10)=abb38(10)*mB
      abb38(10)=abb38(10)**2
      abb38(50)=abb38(10)*abb38(6)
      abb38(51)=abb38(50)*abb38(7)
      abb38(52)=abb38(51)*c4
      abb38(53)=abb38(49)*abb38(52)
      abb38(54)=abb38(53)*abb38(2)
      abb38(55)=abb38(51)*abb38(48)*c1
      abb38(56)=spbe7k1*abb38(55)
      abb38(54)=abb38(54)-abb38(56)
      abb38(54)=abb38(54)*abb38(2)
      abb38(56)=spak1e7*abb38(54)
      abb38(57)=abb38(51)*abb38(23)
      abb38(58)=abb38(49)*abb38(57)
      abb38(53)=abb38(58)-abb38(53)
      abb38(58)=abb38(53)*spak1e7
      abb38(56)=abb38(56)+abb38(58)
      abb38(56)=abb38(56)*spbk2k1
      abb38(59)=spae7k7*abb38(54)
      abb38(60)=abb38(53)*spae7k7
      abb38(59)=abb38(59)+abb38(60)
      abb38(59)=abb38(59)*spbk7k2
      abb38(26)=abb38(40)-abb38(26)+abb38(56)-abb38(59)
      abb38(40)=2.0_ki*abb38(26)
      abb38(56)=abb38(39)*spbl6k1
      abb38(59)=abb38(45)+abb38(56)
      abb38(59)=abb38(59)*spak2l5
      abb38(61)=spbl6k1*spak1e7
      abb38(62)=abb38(18)*abb38(61)
      abb38(63)=abb38(29)+abb38(62)
      abb38(63)=abb38(63)*spak4l5
      abb38(59)=abb38(59)+abb38(63)
      abb38(63)=spbk7k2*spae7k7
      abb38(64)=abb38(63)*abb38(53)
      abb38(65)=-2.0_ki*abb38(64)-abb38(59)
      abb38(65)=spal5k7*abb38(65)
      abb38(66)=abb38(18)*spak4l5
      abb38(67)=spbl6k1*spae7k7
      abb38(68)=abb38(66)*abb38(67)
      abb38(69)=abb38(38)*spbl6k1
      abb38(70)=spak2l5*spbk3k2
      abb38(71)=abb38(70)*spae7k7
      abb38(72)=abb38(69)*abb38(71)
      abb38(60)=spbk2k1*abb38(60)
      abb38(60)=abb38(60)+abb38(68)+abb38(72)
      abb38(60)=spak1l5*abb38(60)
      abb38(68)=abb38(13)*spak2k4
      abb38(72)=spbe7k1*abb38(1)
      abb38(73)=abb38(68)*abb38(72)
      abb38(74)=abb38(73)*abb38(57)
      abb38(75)=abb38(74)*spbk4k3
      abb38(76)=c4*spbk4k3
      abb38(77)=abb38(76)*abb38(51)
      abb38(78)=abb38(77)*abb38(73)
      abb38(75)=abb38(75)-abb38(78)
      abb38(78)=spak4l5*spae7k7
      abb38(79)=-abb38(75)*abb38(78)
      abb38(80)=abb38(24)*abb38(51)
      abb38(81)=abb38(52)*abb38(17)
      abb38(80)=abb38(80)-abb38(81)
      abb38(82)=abb38(80)*spak1e7
      abb38(83)=spak4l5*abb38(82)
      abb38(84)=abb38(23)*abb38(16)
      abb38(85)=abb38(84)*abb38(51)
      abb38(86)=abb38(30)*abb38(51)
      abb38(85)=abb38(85)-abb38(86)
      abb38(87)=abb38(85)*abb38(32)
      abb38(88)=abb38(87)*spak2l5
      abb38(83)=abb38(83)+abb38(88)
      abb38(88)=spbk2k1*spak2k7*abb38(83)
      abb38(89)=abb38(73)*abb38(52)
      abb38(74)=abb38(89)-abb38(74)
      abb38(89)=abb38(74)*abb38(71)
      abb38(60)=2.0_ki*abb38(60)+abb38(65)+abb38(88)+abb38(79)+abb38(89)
      abb38(60)=spbk7l5*abb38(60)
      abb38(65)=abb38(71)*abb38(85)
      abb38(79)=abb38(78)*abb38(80)
      abb38(65)=abb38(65)+abb38(79)
      abb38(79)=abb38(65)*spbk7l5
      abb38(88)=abb38(23)*abb38(50)
      abb38(89)=abb38(88)*abb38(17)
      abb38(90)=abb38(50)*c4
      abb38(91)=abb38(90)*abb38(17)
      abb38(89)=abb38(89)-abb38(91)
      abb38(92)=abb38(89)*abb38(61)
      abb38(93)=abb38(89)*abb38(27)
      abb38(94)=-abb38(93)-abb38(92)
      abb38(95)=2.0_ki*spak4l5
      abb38(94)=abb38(8)*abb38(94)*abb38(95)
      abb38(96)=abb38(10)*abb38(7)
      abb38(84)=abb38(84)*abb38(96)
      abb38(97)=abb38(30)*abb38(96)
      abb38(84)=abb38(84)-abb38(97)
      abb38(98)=abb38(84)*abb38(41)
      abb38(99)=abb38(32)*spbl6k1
      abb38(100)=-abb38(84)*abb38(99)
      abb38(100)=-abb38(98)+abb38(100)
      abb38(100)=spak2l5*abb38(100)
      abb38(24)=abb38(24)*abb38(96)
      abb38(101)=abb38(96)*c4
      abb38(17)=abb38(101)*abb38(17)
      abb38(24)=abb38(24)-abb38(17)
      abb38(102)=abb38(24)*spak4l5
      abb38(103)=-abb38(27)-abb38(61)
      abb38(103)=abb38(103)*abb38(102)
      abb38(100)=abb38(103)+abb38(100)
      abb38(103)=2.0_ki*abb38(9)
      abb38(100)=abb38(100)*abb38(103)
      abb38(104)=abb38(80)*abb38(61)
      abb38(105)=abb38(80)*abb38(27)
      abb38(106)=-abb38(105)-abb38(104)
      abb38(106)=spak4l6*abb38(106)
      abb38(107)=abb38(50)*abb38(16)
      abb38(108)=abb38(107)*abb38(23)
      abb38(30)=abb38(30)*abb38(50)
      abb38(108)=abb38(108)-abb38(30)
      abb38(99)=-abb38(41)-abb38(99)
      abb38(99)=abb38(108)*abb38(99)
      abb38(94)=-abb38(79)+abb38(106)+abb38(100)+3.0_ki*abb38(99)+abb38(94)
      abb38(94)=es12*abb38(94)
      abb38(99)=spbk2k1*spak1e7
      abb38(100)=abb38(99)*abb38(53)
      abb38(59)=-2.0_ki*abb38(100)-abb38(59)
      abb38(59)=spak1l5*abb38(59)
      abb38(106)=abb38(39)*spak2l5
      abb38(109)=abb38(66)*spak1e7
      abb38(106)=abb38(106)+abb38(109)
      abb38(109)=spbk7l6*abb38(106)
      abb38(58)=spbk7k2*abb38(58)
      abb38(58)=abb38(58)+abb38(109)
      abb38(58)=spal5k7*abb38(58)
      abb38(109)=spak1k2*spbk7k2
      abb38(65)=abb38(65)*abb38(109)
      abb38(110)=-es12*abb38(83)
      abb38(58)=abb38(110)+abb38(59)+2.0_ki*abb38(58)+abb38(65)
      abb38(58)=spbl5k1*abb38(58)
      abb38(59)=abb38(62)*spbk7l6
      abb38(65)=spae7k7*spbk7l6**2
      abb38(110)=abb38(65)*abb38(18)
      abb38(59)=abb38(59)-abb38(110)
      abb38(110)=spak4l5*abb38(59)
      abb38(111)=abb38(56)*spbk7l6
      abb38(112)=abb38(38)*spbk3k2
      abb38(65)=abb38(65)*abb38(112)
      abb38(65)=abb38(111)-abb38(65)
      abb38(111)=spak2l5*abb38(65)
      abb38(61)=abb38(61)-abb38(27)
      abb38(113)=abb38(61)*abb38(53)
      abb38(114)=spbk7k2*abb38(113)
      abb38(110)=abb38(114)+abb38(110)+abb38(111)
      abb38(110)=spal6k7*abb38(110)
      abb38(45)=abb38(45)-abb38(56)
      abb38(56)=abb38(45)*spak2l5
      abb38(29)=abb38(29)-abb38(62)
      abb38(62)=abb38(29)*spak4l5
      abb38(56)=abb38(56)+abb38(62)
      abb38(62)=spbl6k1*abb38(56)
      abb38(111)=-spbk2k1*abb38(113)
      abb38(62)=abb38(111)+abb38(62)
      abb38(62)=spak1l6*abb38(62)
      abb38(62)=abb38(110)+abb38(62)
      abb38(110)=abb38(23)*abb38(11)
      abb38(111)=abb38(110)-abb38(12)
      abb38(13)=abb38(46)*abb38(13)*spbk4k3
      abb38(113)=mB**4
      abb38(72)=-abb38(13)*abb38(72)*abb38(113)*abb38(111)
      abb38(114)=abb38(6)*abb38(7)**2
      abb38(115)=abb38(114)*abb38(72)
      abb38(116)=-spak1e7*abb38(115)
      abb38(117)=spak1e7*abb38(102)
      abb38(118)=abb38(84)*abb38(32)
      abb38(119)=spak2l5*abb38(118)
      abb38(117)=abb38(117)+abb38(119)
      abb38(119)=spak2k7*spbk7l6
      abb38(117)=abb38(117)*abb38(119)
      abb38(116)=abb38(116)+2.0_ki*abb38(117)
      abb38(116)=spbk2k1*abb38(116)
      abb38(76)=abb38(96)*abb38(76)*abb38(73)
      abb38(117)=abb38(23)*abb38(96)
      abb38(120)=abb38(73)*spbk4k3
      abb38(121)=-abb38(117)*abb38(120)
      abb38(76)=abb38(76)+abb38(121)
      abb38(76)=spak4l5*abb38(76)*abb38(27)
      abb38(101)=abb38(117)-abb38(101)
      abb38(73)=abb38(73)*abb38(41)
      abb38(117)=-spak2l5*abb38(101)*abb38(73)
      abb38(76)=abb38(76)+abb38(117)
      abb38(115)=abb38(115)*abb38(63)
      abb38(117)=-abb38(49)*abb38(101)
      abb38(121)=abb38(61)*abb38(117)
      abb38(122)=spal5k7*spbk7k2
      abb38(123)=-abb38(121)*abb38(122)
      abb38(76)=abb38(123)+abb38(115)+2.0_ki*abb38(76)+abb38(116)
      abb38(76)=abb38(9)*abb38(76)
      abb38(75)=-abb38(75)*abb38(27)
      abb38(59)=-spal5k7*abb38(59)
      abb38(115)=spak1l5*spbl6k1
      abb38(116)=-abb38(29)*abb38(115)
      abb38(123)=abb38(99)*abb38(119)
      abb38(124)=abb38(63)*spak1k2*spbl6k1
      abb38(123)=abb38(124)+abb38(123)
      abb38(123)=abb38(80)*abb38(123)
      abb38(59)=abb38(116)+abb38(59)+abb38(75)+abb38(123)
      abb38(59)=spak4l6*abb38(59)
      abb38(75)=3.0_ki*abb38(108)
      abb38(41)=abb38(75)*abb38(41)
      abb38(113)=abb38(111)*abb38(113)*abb38(49)
      abb38(116)=abb38(7)*abb38(6)**2
      abb38(123)=-abb38(116)*abb38(113)
      abb38(124)=abb38(63)*abb38(8)
      abb38(125)=abb38(123)*abb38(124)
      abb38(41)=abb38(79)+abb38(41)-abb38(125)
      abb38(79)=abb38(123)*abb38(99)
      abb38(123)=abb38(89)*abb38(95)
      abb38(125)=abb38(27)*abb38(123)
      abb38(125)=abb38(125)+abb38(79)
      abb38(125)=abb38(8)*abb38(125)
      abb38(126)=abb38(27)*abb38(102)
      abb38(127)=spak2l5*abb38(98)
      abb38(126)=abb38(126)+abb38(127)
      abb38(63)=abb38(99)-abb38(63)
      abb38(113)=-abb38(63)*abb38(114)*abb38(113)
      abb38(114)=2.0_ki*abb38(126)+abb38(113)
      abb38(114)=abb38(9)*abb38(114)
      abb38(126)=spak4l6*abb38(105)
      abb38(114)=abb38(126)+abb38(114)+abb38(125)+abb38(41)
      abb38(114)=es712*abb38(114)
      abb38(88)=abb38(88)-abb38(90)
      abb38(120)=-abb38(27)*abb38(95)*abb38(120)*abb38(88)
      abb38(72)=abb38(116)*abb38(72)
      abb38(116)=abb38(119)*abb38(123)
      abb38(116)=-abb38(72)+abb38(116)
      abb38(116)=abb38(116)*abb38(99)
      abb38(125)=abb38(50)*abb38(47)
      abb38(126)=abb38(125)*abb38(46)
      abb38(127)=spbe7k1*abb38(126)
      abb38(128)=abb38(127)*abb38(23)
      abb38(49)=abb38(49)*abb38(90)
      abb38(128)=abb38(128)-abb38(49)
      abb38(129)=abb38(61)*abb38(128)
      abb38(122)=abb38(129)*abb38(122)
      abb38(116)=abb38(122)+abb38(120)+abb38(116)
      abb38(116)=abb38(8)*abb38(116)
      abb38(120)=spbk3k2*abb38(75)
      abb38(122)=abb38(8)*abb38(123)
      abb38(120)=abb38(120)+abb38(122)
      abb38(67)=abb38(67)*abb38(120)
      abb38(24)=abb38(24)*abb38(78)
      abb38(78)=abb38(84)*abb38(71)
      abb38(24)=abb38(24)+abb38(78)
      abb38(24)=abb38(103)*spbl6k1*abb38(24)
      abb38(24)=abb38(67)+abb38(24)
      abb38(24)=abb38(24)*abb38(109)
      abb38(65)=-spal5k7*abb38(65)
      abb38(67)=-abb38(45)*abb38(115)
      abb38(65)=abb38(65)+abb38(67)
      abb38(65)=spak2l6*abb38(65)
      abb38(67)=-abb38(88)*abb38(73)
      abb38(73)=spbk2k1*abb38(108)*abb38(32)*abb38(119)
      abb38(67)=abb38(67)+abb38(73)
      abb38(72)=abb38(72)*abb38(124)
      abb38(73)=-abb38(8)*abb38(129)
      abb38(78)=abb38(9)*abb38(121)
      abb38(73)=abb38(73)+abb38(78)
      abb38(73)=spak1l5*spbk2k1*abb38(73)
      abb38(24)=abb38(65)+abb38(58)+abb38(94)+abb38(114)+abb38(60)+abb38(59)+ab&
      &b38(73)+abb38(24)+abb38(76)+abb38(72)+3.0_ki*abb38(67)+abb38(116)+2.0_ki&
      &*abb38(62)
      abb38(24)=2.0_ki*abb38(24)
      abb38(47)=abb38(47)*spak2k4
      abb38(58)=abb38(47)*abb38(90)
      abb38(59)=abb38(58)*abb38(2)
      abb38(60)=abb38(125)*c1
      abb38(62)=abb38(60)*spak2k4
      abb38(59)=abb38(59)-abb38(62)
      abb38(59)=abb38(59)*abb38(2)
      abb38(62)=spak2k4*abb38(125)*abb38(23)
      abb38(58)=abb38(59)+abb38(62)-abb38(58)
      abb38(59)=abb38(8)*spbl6k2
      abb38(62)=abb38(59)*abb38(95)
      abb38(58)=abb38(58)*abb38(62)
      abb38(65)=c4-abb38(23)
      abb38(67)=3.0_ki*spak4l5
      abb38(65)=abb38(67)*abb38(96)*abb38(65)*abb38(47)
      abb38(67)=abb38(23)*abb38(7)
      abb38(72)=abb38(7)*c4
      abb38(67)=abb38(67)-abb38(72)
      abb38(10)=abb38(10)*abb38(15)
      abb38(15)=3.0_ki*abb38(70)
      abb38(67)=abb38(15)*abb38(67)*abb38(10)
      abb38(10)=abb38(10)*abb38(6)
      abb38(73)=abb38(10)*c4
      abb38(76)=abb38(10)*abb38(23)
      abb38(73)=abb38(73)-abb38(76)
      abb38(78)=spbl6k2*spbk3k2
      abb38(88)=3.0_ki*abb38(78)
      abb38(73)=abb38(73)*abb38(88)
      abb38(68)=abb38(68)*abb38(1)
      abb38(88)=abb38(68)*abb38(52)
      abb38(94)=abb38(68)*abb38(57)
      abb38(88)=abb38(88)-abb38(94)
      abb38(88)=abb38(88)*spbk3k2
      abb38(58)=-abb38(58)+abb38(65)-abb38(67)+abb38(73)-abb38(88)
      abb38(58)=abb38(58)*spak2k7
      abb38(65)=abb38(48)*abb38(90)
      abb38(67)=abb38(65)*abb38(2)
      abb38(46)=abb38(60)*abb38(46)
      abb38(46)=abb38(67)-abb38(46)
      abb38(60)=2.0_ki*abb38(2)
      abb38(46)=abb38(46)*abb38(60)
      abb38(67)=abb38(23)*abb38(126)
      abb38(46)=abb38(46)-abb38(67)+abb38(65)
      abb38(46)=abb38(46)*abb38(59)
      abb38(14)=abb38(14)*abb38(11)*spak2k4
      abb38(65)=c1*abb38(14)
      abb38(67)=abb38(65)*NC
      abb38(14)=c4*abb38(14)
      abb38(67)=abb38(67)-abb38(14)
      abb38(73)=abb38(67)*spbk3k2
      abb38(88)=abb38(73)*abb38(119)
      abb38(90)=abb38(101)*abb38(48)
      abb38(46)=abb38(46)+abb38(88)-3.0_ki*abb38(90)
      abb38(67)=abb38(67)*abb38(70)
      abb38(88)=abb38(47)*abb38(110)
      abb38(12)=abb38(47)*abb38(12)
      abb38(88)=abb38(88)-abb38(12)
      abb38(90)=abb38(88)*spak4l5
      abb38(67)=abb38(67)+abb38(90)
      abb38(90)=3.0_ki*spbl6l5
      abb38(101)=-abb38(67)*abb38(90)
      abb38(103)=abb38(73)*spbl6k1
      abb38(108)=spak1k2*abb38(103)
      abb38(101)=abb38(101)+abb38(108)-abb38(46)
      abb38(101)=spal5k7*abb38(101)
      abb38(94)=abb38(94)*spbk4k3
      abb38(77)=abb38(77)*abb38(68)
      abb38(77)=abb38(94)-abb38(77)
      abb38(94)=abb38(88)*spbk7l6
      abb38(108)=-spal5k7*abb38(94)
      abb38(108)=abb38(77)+abb38(108)
      abb38(108)=spak4k7*abb38(108)
      abb38(109)=abb38(52)*abb38(48)
      abb38(110)=abb38(109)*abb38(2)
      abb38(55)=abb38(110)-abb38(55)
      abb38(55)=abb38(55)*abb38(2)
      abb38(48)=abb38(57)*abb38(48)
      abb38(48)=abb38(48)-abb38(109)
      abb38(55)=abb38(55)+abb38(48)
      abb38(55)=abb38(55)*spal6k7
      abb38(109)=2.0_ki*spbl6k2
      abb38(110)=abb38(109)*abb38(55)
      abb38(101)=abb38(108)+abb38(110)+abb38(58)+abb38(101)
      abb38(101)=spbk7k1*abb38(101)
      abb38(108)=abb38(51)*abb38(47)
      abb38(110)=abb38(108)*c1
      abb38(114)=abb38(108)*c4
      abb38(115)=abb38(114)*abb38(2)
      abb38(110)=abb38(110)-abb38(115)
      abb38(115)=abb38(110)*abb38(60)
      abb38(23)=abb38(108)*abb38(23)
      abb38(23)=abb38(23)-abb38(114)
      abb38(108)=abb38(115)+abb38(23)
      abb38(114)=spak4l6*spbl6k2
      abb38(115)=spbk7k1*spak2k7
      abb38(116)=-abb38(108)*abb38(115)*abb38(114)
      abb38(120)=spak4k7*spbk7k1
      abb38(121)=abb38(120)*abb38(23)
      abb38(76)=abb38(76)*abb38(7)
      abb38(72)=abb38(10)*abb38(72)
      abb38(76)=abb38(76)-abb38(72)
      abb38(76)=abb38(76)*spbk3k2
      abb38(122)=-abb38(115)*abb38(76)
      abb38(122)=abb38(122)-abb38(121)
      abb38(122)=es712*abb38(122)
      abb38(123)=abb38(23)*spbk2k1
      abb38(125)=-abb38(115)*abb38(123)
      abb38(126)=abb38(88)*spbl6k1
      abb38(129)=spal5k7*spbk7k1*abb38(126)
      abb38(125)=abb38(125)+abb38(129)
      abb38(125)=spak1k4*abb38(125)
      abb38(129)=-spak4l5*spbk4k3
      abb38(129)=abb38(129)-abb38(70)
      abb38(68)=spbl6k1*abb38(129)*abb38(111)*abb38(68)
      abb38(52)=abb38(52)-abb38(57)
      abb38(13)=spbk2k1*abb38(13)*abb38(1)*abb38(52)
      abb38(52)=es12*abb38(121)
      abb38(13)=abb38(125)+abb38(52)+abb38(122)+abb38(116)+abb38(13)+abb38(68)+&
      &abb38(101)
      abb38(13)=4.0_ki*abb38(13)
      abb38(50)=abb38(20)*abb38(50)
      abb38(52)=abb38(91)*abb38(2)
      abb38(50)=abb38(50)-abb38(52)
      abb38(52)=abb38(50)*abb38(2)
      abb38(52)=abb38(52)-abb38(89)
      abb38(52)=abb38(52)*abb38(62)
      abb38(57)=abb38(78)*abb38(75)
      abb38(15)=abb38(15)*abb38(84)
      abb38(62)=abb38(74)*spbk3k2
      abb38(15)=abb38(52)-abb38(57)-3.0_ki*abb38(102)-abb38(15)-abb38(62)
      abb38(52)=abb38(51)*abb38(20)
      abb38(57)=abb38(81)*abb38(2)
      abb38(52)=abb38(52)-abb38(57)
      abb38(57)=abb38(52)*abb38(60)
      abb38(57)=abb38(57)+abb38(80)
      abb38(62)=abb38(57)*abb38(114)
      abb38(68)=abb38(85)*spbk3k2
      abb38(74)=abb38(68)*es712
      abb38(78)=abb38(80)*spbk7k2
      abb38(81)=abb38(78)*spak4k7
      abb38(62)=abb38(81)-abb38(74)+abb38(15)-abb38(62)
      abb38(62)=abb38(62)*spak2e7
      abb38(49)=abb38(49)*abb38(2)
      abb38(74)=abb38(127)*c1
      abb38(49)=abb38(49)-abb38(74)
      abb38(49)=abb38(49)*abb38(60)
      abb38(49)=abb38(49)-abb38(128)
      abb38(49)=abb38(49)*abb38(59)
      abb38(59)=spbk3k2*abb38(69)*spak1k2
      abb38(69)=abb38(119)*abb38(112)
      abb38(49)=abb38(49)+3.0_ki*abb38(117)-abb38(59)+abb38(69)
      abb38(59)=abb38(38)*abb38(70)
      abb38(59)=abb38(59)+abb38(66)
      abb38(69)=abb38(59)*abb38(90)
      abb38(70)=abb38(18)*spbk7l6
      abb38(74)=abb38(70)*spak4k7
      abb38(69)=abb38(69)+abb38(74)+abb38(49)
      abb38(69)=abb38(69)*spal5e7
      abb38(56)=abb38(64)-abb38(100)+abb38(56)
      abb38(64)=spbk2k1*abb38(80)*spak2e7
      abb38(74)=abb38(18)*spbl6k1
      abb38(81)=abb38(74)*spal5e7
      abb38(64)=abb38(64)-abb38(81)
      abb38(64)=abb38(64)*spak1k4
      abb38(54)=abb38(54)+abb38(53)
      abb38(81)=spal6e7*abb38(54)*abb38(109)
      abb38(62)=abb38(64)-abb38(62)+abb38(69)-abb38(81)+2.0_ki*abb38(56)
      abb38(62)=4.0_ki*abb38(62)
      abb38(56)=8.0_ki*abb38(56)
      abb38(64)=abb38(96)*abb38(16)
      abb38(69)=-abb38(36)*abb38(64)
      abb38(81)=abb38(97)*abb38(33)
      abb38(69)=abb38(69)+abb38(81)
      abb38(69)=abb38(2)*abb38(69)
      abb38(69)=abb38(118)+abb38(69)
      abb38(69)=spbl6k1*abb38(69)
      abb38(64)=abb38(44)*abb38(64)
      abb38(81)=-abb38(97)*abb38(42)
      abb38(64)=abb38(64)+abb38(81)
      abb38(64)=abb38(2)*abb38(64)
      abb38(64)=abb38(69)-abb38(98)+abb38(64)
      abb38(64)=spak2l5*abb38(64)
      abb38(61)=abb38(61)*abb38(102)
      abb38(61)=abb38(61)+abb38(64)
      abb38(61)=2.0_ki*abb38(61)-abb38(113)
      abb38(61)=abb38(9)*abb38(61)
      abb38(64)=abb38(68)*spak1k2
      abb38(69)=-spak1k4*abb38(80)
      abb38(69)=abb38(69)-abb38(64)
      abb38(81)=spbk7k1*spae7k7
      abb38(69)=abb38(81)*abb38(69)
      abb38(32)=abb38(32)*abb38(75)
      abb38(75)=abb38(33)*abb38(30)
      abb38(84)=abb38(36)*abb38(107)
      abb38(75)=abb38(75)-abb38(84)
      abb38(84)=abb38(75)*abb38(60)
      abb38(32)=abb38(32)+abb38(84)
      abb38(32)=spbl6k1*abb38(32)
      abb38(84)=-abb38(93)+abb38(92)
      abb38(84)=abb38(84)*abb38(95)
      abb38(79)=abb38(84)-abb38(79)
      abb38(79)=abb38(8)*abb38(79)
      abb38(84)=-abb38(105)+abb38(104)
      abb38(84)=spak4l6*abb38(84)
      abb38(83)=spbl5k1*abb38(83)
      abb38(44)=abb38(107)*abb38(44)
      abb38(42)=-abb38(30)*abb38(42)
      abb38(42)=abb38(44)+abb38(42)
      abb38(42)=abb38(42)*abb38(60)
      abb38(44)=abb38(115)*abb38(87)
      abb38(60)=abb38(120)*abb38(82)
      abb38(32)=abb38(83)+abb38(84)+abb38(60)+abb38(61)+abb38(44)+abb38(79)+abb&
      &38(32)+abb38(42)+abb38(69)-abb38(41)
      abb38(32)=4.0_ki*abb38(32)
      abb38(41)=abb38(2)*spbk3k2
      abb38(42)=abb38(72)*abb38(41)
      abb38(44)=spbk3k2*c1
      abb38(10)=abb38(44)*abb38(10)*abb38(7)
      abb38(10)=abb38(42)-abb38(10)
      abb38(10)=abb38(10)*abb38(2)
      abb38(10)=abb38(10)-abb38(76)
      abb38(42)=-abb38(10)*abb38(115)
      abb38(60)=abb38(110)*abb38(2)
      abb38(60)=abb38(60)+abb38(23)
      abb38(61)=abb38(60)*abb38(120)
      abb38(42)=abb38(42)+abb38(61)
      abb38(42)=32.0_ki*abb38(42)
      abb38(61)=abb38(86)*abb38(41)
      abb38(16)=abb38(51)*abb38(16)
      abb38(51)=abb38(16)*abb38(44)
      abb38(51)=abb38(61)-abb38(51)
      abb38(61)=abb38(51)*abb38(2)
      abb38(61)=abb38(61)-abb38(68)
      abb38(69)=abb38(61)*spak2e7
      abb38(72)=abb38(52)*abb38(2)
      abb38(72)=abb38(72)+abb38(80)
      abb38(79)=abb38(72)*spak4e7
      abb38(69)=abb38(69)-abb38(79)
      abb38(69)=32.0_ki*abb38(69)
      abb38(26)=-4.0_ki*abb38(26)
      abb38(58)=-spbk7e7*abb38(58)
      abb38(79)=spal5k7*spbk7e7
      abb38(83)=-abb38(79)*abb38(103)
      abb38(15)=abb38(83)+abb38(15)
      abb38(15)=spak1k2*abb38(15)
      abb38(49)=-spak1l5*abb38(49)
      abb38(77)=-spbk7e7*abb38(77)
      abb38(83)=abb38(79)*abb38(94)
      abb38(78)=spak1k2*abb38(78)
      abb38(70)=-spak1l5*abb38(70)
      abb38(70)=abb38(70)+abb38(78)+abb38(77)+abb38(83)
      abb38(70)=spak4k7*abb38(70)
      abb38(77)=spbk7e7*spak2k7
      abb38(78)=abb38(77)*abb38(123)
      abb38(83)=-abb38(79)*abb38(126)
      abb38(74)=spak1l5*abb38(74)
      abb38(84)=-es12*abb38(80)
      abb38(74)=abb38(84)+abb38(74)+abb38(78)+abb38(83)
      abb38(74)=spak1k4*abb38(74)
      abb38(55)=-spbk7e7*abb38(55)
      abb38(54)=spak1l6*abb38(54)
      abb38(54)=abb38(54)+abb38(55)
      abb38(54)=abb38(109)*abb38(54)
      abb38(46)=abb38(46)*abb38(79)
      abb38(55)=abb38(108)*abb38(77)
      abb38(57)=-spak1k2*abb38(57)
      abb38(55)=abb38(55)+abb38(57)
      abb38(55)=abb38(55)*abb38(114)
      abb38(57)=spak4k7*spbk7e7
      abb38(23)=abb38(57)*abb38(23)
      abb38(76)=abb38(77)*abb38(76)
      abb38(64)=abb38(23)+abb38(76)-abb38(64)
      abb38(64)=es712*abb38(64)
      abb38(76)=abb38(67)*abb38(79)
      abb38(78)=-spak1l5*abb38(59)
      abb38(76)=abb38(76)+abb38(78)
      abb38(76)=abb38(76)*abb38(90)
      abb38(59)=spbk7l6*abb38(59)
      abb38(67)=-spbl6k1*abb38(67)
      abb38(48)=-spbk2k1*abb38(48)
      abb38(48)=abb38(48)+abb38(67)
      abb38(48)=spbk7e7*abb38(48)
      abb38(53)=spbk7k2*abb38(53)
      abb38(48)=abb38(48)+abb38(53)+abb38(59)
      abb38(48)=spak1k7*abb38(48)
      abb38(23)=-es12*abb38(23)
      abb38(15)=abb38(48)+abb38(76)+abb38(74)+abb38(23)+abb38(64)+abb38(55)+abb&
      &38(70)+abb38(49)+abb38(15)+abb38(58)+abb38(46)+abb38(54)
      abb38(15)=2.0_ki*abb38(15)
      abb38(10)=abb38(10)*abb38(77)
      abb38(23)=-spak1k2*abb38(61)
      abb38(46)=-abb38(60)*abb38(57)
      abb38(48)=spak1k4*abb38(72)
      abb38(10)=abb38(48)+abb38(46)+abb38(10)+abb38(23)
      abb38(10)=16.0_ki*abb38(10)
      abb38(23)=spak4l6*abb38(29)
      abb38(29)=spae7k7*abb38(66)
      abb38(38)=abb38(38)*abb38(71)
      abb38(29)=abb38(29)+abb38(38)
      abb38(29)=spbk7l5*abb38(29)
      abb38(38)=-spbl5k1*abb38(106)
      abb38(45)=spak2l6*abb38(45)
      abb38(46)=abb38(8)*abb38(99)
      abb38(46)=-abb38(124)+abb38(46)
      abb38(46)=abb38(128)*abb38(46)
      abb38(48)=-abb38(39)*abb38(115)
      abb38(49)=-abb38(9)*abb38(117)*abb38(63)
      abb38(53)=abb38(112)*spae7k7
      abb38(54)=spak1k2*spbk7k1*abb38(53)
      abb38(55)=-abb38(120)*abb38(25)
      abb38(58)=spak1k4*abb38(18)*abb38(81)
      abb38(23)=abb38(45)+abb38(58)+abb38(38)+abb38(29)+abb38(23)+abb38(55)+abb&
      &38(54)+abb38(49)+abb38(48)+abb38(46)
      abb38(23)=2.0_ki*abb38(23)
      abb38(14)=abb38(14)*abb38(41)
      abb38(29)=abb38(65)*spbk3k2
      abb38(14)=abb38(14)-abb38(29)
      abb38(14)=abb38(14)*abb38(2)
      abb38(14)=abb38(14)-abb38(73)
      abb38(29)=abb38(14)*abb38(115)
      abb38(11)=c1*abb38(47)*abb38(11)
      abb38(12)=abb38(12)*abb38(2)
      abb38(11)=abb38(11)-abb38(12)
      abb38(11)=abb38(11)*abb38(2)
      abb38(11)=abb38(11)+abb38(88)
      abb38(12)=-abb38(11)*abb38(120)
      abb38(12)=abb38(29)+abb38(12)
      abb38(12)=16.0_ki*abb38(12)
      abb38(18)=abb38(19)-abb38(18)
      abb38(19)=abb38(18)*spak4e7
      abb38(29)=abb38(41)*abb38(31)
      abb38(31)=abb38(44)*abb38(35)
      abb38(29)=abb38(29)-abb38(31)
      abb38(31)=abb38(29)*abb38(2)
      abb38(31)=abb38(31)-abb38(112)
      abb38(35)=abb38(31)*spak2e7
      abb38(19)=abb38(19)+abb38(35)
      abb38(19)=16.0_ki*abb38(19)
      abb38(14)=-abb38(14)*abb38(77)
      abb38(31)=spak1k2*abb38(31)
      abb38(11)=abb38(11)*abb38(57)
      abb38(35)=spak1k4*abb38(18)
      abb38(11)=abb38(35)+abb38(11)+abb38(14)+abb38(31)
      abb38(11)=8.0_ki*abb38(11)
      abb38(14)=-spae7k7*abb38(80)
      abb38(31)=abb38(52)*spae7k7
      abb38(35)=-abb38(2)*abb38(31)
      abb38(14)=abb38(14)+abb38(35)
      abb38(14)=8.0_ki*abb38(14)
      abb38(18)=-4.0_ki*spae7k7*abb38(18)
      abb38(35)=spbl6k1*abb38(2)
      abb38(21)=abb38(21)*abb38(35)
      abb38(21)=-abb38(28)+abb38(21)
      abb38(21)=spal5l6*abb38(21)
      abb38(28)=abb38(50)*spak1e7
      abb38(38)=spbk2k1*abb38(2)
      abb38(45)=-abb38(28)*abb38(38)
      abb38(46)=spbk7k2*abb38(2)
      abb38(47)=abb38(46)*spae7k7
      abb38(48)=abb38(50)*abb38(47)
      abb38(21)=abb38(21)+abb38(45)+abb38(48)
      abb38(21)=4.0_ki*abb38(21)
      abb38(45)=abb38(52)*spak1e7
      abb38(48)=-abb38(45)*abb38(38)
      abb38(31)=abb38(31)*abb38(46)
      abb38(31)=abb38(48)+abb38(31)
      abb38(48)=4.0_ki*spak2l5
      abb38(31)=abb38(31)*abb38(48)
      abb38(27)=abb38(27)*abb38(2)
      abb38(49)=abb38(50)*abb38(27)
      abb38(28)=-abb38(28)*abb38(35)
      abb38(20)=abb38(20)*abb38(96)
      abb38(17)=abb38(17)*abb38(2)
      abb38(17)=abb38(20)-abb38(17)
      abb38(20)=-abb38(35)*spak1e7
      abb38(20)=abb38(27)+abb38(20)
      abb38(17)=abb38(9)*spak2l5*abb38(17)*abb38(20)
      abb38(17)=abb38(17)+abb38(49)+abb38(28)
      abb38(17)=4.0_ki*abb38(17)
      abb38(20)=-abb38(2)*abb38(45)
      abb38(20)=-abb38(82)+abb38(20)
      abb38(20)=8.0_ki*abb38(20)
      abb38(22)=abb38(25)+abb38(22)
      abb38(22)=4.0_ki*abb38(22)
      abb38(25)=-spae7k7*abb38(68)
      abb38(27)=abb38(51)*spae7k7
      abb38(28)=abb38(2)*abb38(27)
      abb38(25)=abb38(25)+abb38(28)
      abb38(25)=8.0_ki*abb38(25)
      abb38(28)=-abb38(29)*abb38(2)*spae7k7
      abb38(28)=abb38(53)+abb38(28)
      abb38(28)=4.0_ki*abb38(28)
      abb38(29)=-abb38(34)*abb38(35)
      abb38(29)=abb38(43)+abb38(29)
      abb38(29)=spal5l6*abb38(29)
      abb38(34)=abb38(75)*abb38(38)
      abb38(35)=abb38(107)*abb38(44)
      abb38(30)=-abb38(41)*abb38(30)
      abb38(30)=abb38(35)+abb38(30)
      abb38(30)=abb38(30)*abb38(47)
      abb38(29)=abb38(29)+abb38(34)+abb38(30)
      abb38(29)=4.0_ki*abb38(29)
      abb38(30)=abb38(33)*abb38(86)
      abb38(16)=abb38(16)*abb38(36)
      abb38(16)=abb38(30)-abb38(16)
      abb38(30)=abb38(16)*abb38(38)
      abb38(27)=-abb38(27)*abb38(46)
      abb38(27)=abb38(30)+abb38(27)
      abb38(27)=abb38(27)*abb38(48)
      abb38(16)=abb38(2)*abb38(16)
      abb38(16)=-abb38(87)+abb38(16)
      abb38(16)=8.0_ki*abb38(16)
      abb38(30)=abb38(39)-abb38(37)
      abb38(30)=4.0_ki*abb38(30)
      R2d38=abb38(40)
      rat2 = rat2 + R2d38
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='38' value='", &
          & R2d38, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd38h2
