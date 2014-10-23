module     p0_dbaru_epnebbbarg_abbrevd80h1
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(112), public :: abb80
   complex(ki), public :: R2d80
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
      abb80(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb80(2)=NC**(-1)
      abb80(3)=sqrt2**(-1)
      abb80(4)=es56**(-1)
      abb80(5)=spak2k7**(-1)
      abb80(6)=spak2l5**(-1)
      abb80(7)=spbl6k2**(-1)
      abb80(8)=abb80(6)*abb80(7)*mB**2
      abb80(9)=TR*gW
      abb80(9)=abb80(9)**2*abb80(4)*i_*CVDU*abb80(3)*abb80(1)
      abb80(10)=abb80(5)*abb80(9)
      abb80(11)=abb80(10)*c2
      abb80(12)=abb80(11)*abb80(8)
      abb80(13)=c3*abb80(2)
      abb80(14)=abb80(8)*abb80(13)
      abb80(15)=abb80(14)*abb80(10)
      abb80(16)=c4*abb80(2)**2
      abb80(17)=abb80(8)*abb80(16)
      abb80(18)=abb80(17)*abb80(10)
      abb80(12)=abb80(18)+abb80(12)-abb80(15)
      abb80(15)=spak1k2**2
      abb80(18)=abb80(15)*abb80(12)
      abb80(19)=spbk3k2**2
      abb80(20)=abb80(18)*abb80(19)
      abb80(21)=abb80(13)-abb80(16)
      abb80(22)=abb80(21)-c2
      abb80(23)=abb80(10)*spak1k2
      abb80(24)=abb80(23)*spbk3k2
      abb80(25)=-abb80(24)*abb80(22)
      abb80(26)=spbl5k3*spak1l6
      abb80(27)=abb80(26)*abb80(25)
      abb80(20)=abb80(27)+abb80(20)
      abb80(20)=abb80(20)*spak3k4
      abb80(27)=abb80(25)*spbl5k2
      abb80(28)=spak1l6*abb80(27)*spak2k4
      abb80(20)=abb80(20)-abb80(28)
      abb80(28)=8.0_ki*spbk7k1
      abb80(29)=abb80(28)*es12*abb80(20)
      abb80(30)=abb80(25)*spbk7k2
      abb80(31)=abb80(30)*spak2k4
      abb80(32)=spak2l6*spbl5k2
      abb80(33)=abb80(31)*abb80(32)
      abb80(34)=spak2l6*spbl5k3
      abb80(35)=abb80(34)*spak3k4
      abb80(36)=abb80(35)*abb80(30)
      abb80(33)=abb80(33)-abb80(36)
      abb80(37)=-16.0_ki*abb80(33)
      abb80(38)=abb80(8)*c2
      abb80(14)=-abb80(14)+abb80(38)+abb80(17)
      abb80(17)=-abb80(24)*abb80(14)
      abb80(24)=abb80(17)*spbk7k2
      abb80(38)=abb80(24)*spak2k4
      abb80(39)=spak4l6*spbk7l5
      abb80(40)=abb80(39)*abb80(25)
      abb80(41)=-abb80(38)+2.0_ki*abb80(40)
      abb80(41)=abb80(41)*es12
      abb80(42)=es712-es71
      abb80(24)=-abb80(24)*abb80(42)
      abb80(43)=abb80(24)*spak2k4
      abb80(44)=abb80(10)*spbk3k2
      abb80(45)=abb80(15)*abb80(44)
      abb80(46)=-spbk7k2*abb80(45)*abb80(22)
      abb80(47)=spbl5k1*spak4l6
      abb80(48)=abb80(46)*abb80(47)
      abb80(49)=-abb80(40)*abb80(42)
      abb80(48)=abb80(48)-abb80(49)
      abb80(41)=abb80(41)-abb80(43)-abb80(48)
      abb80(41)=16.0_ki*abb80(41)
      abb80(43)=abb80(17)*spbk7k3
      abb80(50)=2.0_ki*es12
      abb80(51)=abb80(42)-abb80(50)
      abb80(52)=abb80(51)*spak3k4
      abb80(53)=abb80(43)*abb80(52)
      abb80(45)=-abb80(45)*abb80(14)
      abb80(54)=spbk3k1*spak3k4
      abb80(55)=spbk7k2*abb80(45)*abb80(54)
      abb80(56)=abb80(40)*abb80(50)
      abb80(57)=-abb80(23)*abb80(22)
      abb80(58)=abb80(57)*spak1l6
      abb80(59)=abb80(58)*spbl5k2
      abb80(60)=abb80(59)*spbk7k1
      abb80(61)=spbk3k1*spak1k4
      abb80(62)=abb80(61)*abb80(60)
      abb80(48)=abb80(62)+abb80(55)+abb80(53)+abb80(56)-abb80(48)
      abb80(48)=16.0_ki*abb80(48)
      abb80(10)=-abb80(10)*abb80(21)
      abb80(10)=abb80(10)+abb80(11)
      abb80(11)=abb80(10)*spak1k4
      abb80(21)=abb80(11)*spbk7k3
      abb80(53)=abb80(21)*abb80(32)
      abb80(55)=32.0_ki*abb80(53)
      abb80(56)=-abb80(12)*abb80(42)
      abb80(62)=spbk7k3*spak1k4
      abb80(63)=abb80(56)*abb80(62)
      abb80(13)=-abb80(13)+c2+abb80(16)
      abb80(13)=abb80(13)*abb80(8)*abb80(23)
      abb80(16)=abb80(13)*spbk7k2
      abb80(23)=abb80(61)*abb80(16)
      abb80(63)=abb80(63)+abb80(23)
      abb80(63)=32.0_ki*abb80(63)
      abb80(20)=spbk7k1*abb80(20)
      abb80(20)=abb80(20)+abb80(33)
      abb80(20)=16.0_ki*abb80(20)
      abb80(33)=abb80(38)-abb80(40)
      abb80(64)=32.0_ki*abb80(33)
      abb80(43)=abb80(43)*spak3k4
      abb80(43)=-abb80(43)+abb80(40)-abb80(53)
      abb80(43)=32.0_ki*abb80(43)
      abb80(65)=-abb80(44)*abb80(22)
      abb80(66)=abb80(65)*spak1k4
      abb80(67)=spak2l6*abb80(66)*spbk7l5
      abb80(40)=abb80(40)-abb80(67)
      abb80(68)=abb80(17)*spak1k4
      abb80(69)=abb80(26)*abb80(11)
      abb80(68)=abb80(68)-abb80(69)
      abb80(70)=-spbk7k1*abb80(68)
      abb80(38)=abb80(70)+2.0_ki*abb80(40)-abb80(38)
      abb80(38)=es12*abb80(38)
      abb80(40)=spak2k4*spak1k4*spbk7k2
      abb80(70)=-abb80(56)*abb80(40)
      abb80(40)=-abb80(12)*abb80(40)
      abb80(71)=abb80(11)*abb80(39)
      abb80(40)=-2.0_ki*abb80(71)+abb80(40)
      abb80(40)=es12*abb80(40)
      abb80(71)=abb80(71)*abb80(42)
      abb80(72)=abb80(57)*spbk7k2
      abb80(73)=spak1k4*abb80(72)*abb80(47)
      abb80(40)=abb80(73)+abb80(40)+abb80(70)+abb80(71)
      abb80(40)=spbk4k3*abb80(40)
      abb80(70)=-abb80(32)*abb80(30)
      abb80(24)=abb80(70)-abb80(24)
      abb80(24)=spak2k4*abb80(24)
      abb80(70)=-spak4l6*abb80(46)
      abb80(71)=spak2l6*spak1k4*abb80(30)
      abb80(70)=abb80(70)+abb80(71)
      abb80(70)=spbl5k1*abb80(70)
      abb80(67)=abb80(42)*abb80(67)
      abb80(24)=abb80(40)+abb80(70)+abb80(36)+abb80(24)+abb80(67)+abb80(49)+abb&
      &80(38)
      abb80(24)=8.0_ki*abb80(24)
      abb80(36)=spbk7k2*abb80(34)*abb80(11)
      abb80(38)=16.0_ki*abb80(36)
      abb80(40)=abb80(12)*abb80(62)*abb80(50)
      abb80(23)=-2.0_ki*abb80(23)+abb80(53)+abb80(40)
      abb80(23)=16.0_ki*abb80(23)
      abb80(33)=-abb80(36)-abb80(33)
      abb80(33)=16.0_ki*abb80(33)
      abb80(36)=8.0_ki*abb80(36)
      abb80(40)=abb80(25)*spbk7k3
      abb80(49)=abb80(40)*abb80(52)
      abb80(52)=abb80(46)*abb80(54)
      abb80(53)=abb80(42)*spak2k4
      abb80(67)=-abb80(30)*abb80(53)
      abb80(70)=es12*abb80(31)
      abb80(49)=abb80(52)+abb80(49)+abb80(67)+abb80(70)
      abb80(49)=8.0_ki*abb80(49)
      abb80(52)=abb80(61)*abb80(72)
      abb80(67)=abb80(21)*abb80(42)
      abb80(67)=-abb80(52)+abb80(67)
      abb80(67)=16.0_ki*abb80(67)
      abb80(40)=abb80(40)*spak3k4
      abb80(40)=abb80(31)-abb80(40)
      abb80(40)=16.0_ki*abb80(40)
      abb80(70)=abb80(21)*abb80(51)
      abb80(52)=abb80(52)+abb80(70)
      abb80(52)=8.0_ki*abb80(52)
      abb80(70)=abb80(57)*spbl5k1
      abb80(71)=-abb80(22)*abb80(9)
      abb80(73)=abb80(71)*spbk7l5
      abb80(70)=abb80(70)-abb80(73)
      abb80(74)=-abb80(62)*abb80(70)
      abb80(75)=abb80(57)*spbk7l5
      abb80(76)=abb80(61)*abb80(75)
      abb80(74)=abb80(76)+abb80(74)
      abb80(76)=16.0_ki*abb80(74)
      abb80(74)=8.0_ki*abb80(74)
      abb80(77)=abb80(25)*spbk7l5
      abb80(78)=abb80(51)*abb80(77)
      abb80(46)=abb80(46)*spbl5k1
      abb80(46)=abb80(78)+abb80(46)
      abb80(78)=-spak3l6*abb80(46)
      abb80(79)=es34-es234
      abb80(80)=abb80(79)*abb80(16)
      abb80(81)=abb80(42)-es12
      abb80(82)=-abb80(81)*abb80(80)
      abb80(83)=abb80(39)*abb80(57)
      abb80(84)=-abb80(83)*abb80(51)
      abb80(15)=abb80(15)*abb80(10)
      abb80(85)=abb80(15)*spbk7k2
      abb80(86)=abb80(47)*abb80(85)
      abb80(84)=-abb80(86)+abb80(84)
      abb80(84)=spbk4k2*abb80(84)
      abb80(87)=-es12*abb80(60)
      abb80(78)=abb80(78)+abb80(87)+abb80(84)+abb80(82)
      abb80(78)=8.0_ki*abb80(78)
      abb80(82)=abb80(72)*abb80(32)
      abb80(84)=-16.0_ki*abb80(82)
      abb80(87)=spak1k3*spbk7k3
      abb80(88)=spbk7k4*spak1k4
      abb80(87)=abb80(87)+abb80(88)
      abb80(88)=-abb80(56)*abb80(87)
      abb80(89)=es567-es234
      abb80(90)=abb80(16)*abb80(89)
      abb80(91)=abb80(10)*spak1l6
      abb80(92)=abb80(91)*spbk7l5
      abb80(93)=abb80(92)-abb80(16)
      abb80(51)=-abb80(93)*abb80(51)
      abb80(94)=abb80(58)*spbl5k1
      abb80(95)=-spbk7k2*abb80(94)
      abb80(51)=abb80(95)+abb80(51)+abb80(90)+abb80(88)
      abb80(51)=16.0_ki*abb80(51)
      abb80(88)=32.0_ki*abb80(92)
      abb80(90)=spbk4k2*abb80(83)
      abb80(77)=spak3l6*abb80(77)
      abb80(60)=abb80(77)+abb80(90)+abb80(82)-abb80(60)+abb80(80)
      abb80(60)=16.0_ki*abb80(60)
      abb80(77)=-abb80(16)-abb80(92)
      abb80(77)=32.0_ki*abb80(77)
      abb80(80)=-8.0_ki*abb80(82)
      abb80(82)=16.0_ki*abb80(92)
      abb80(90)=-8.0_ki*abb80(72)*abb80(81)
      abb80(92)=16.0_ki*abb80(72)
      abb80(70)=-abb80(70)*abb80(87)
      abb80(81)=abb80(81)-abb80(89)
      abb80(81)=abb80(75)*abb80(81)
      abb80(87)=spbl5k1*abb80(85)
      abb80(70)=abb80(87)+abb80(81)+abb80(70)
      abb80(70)=8.0_ki*abb80(70)
      abb80(81)=16.0_ki*abb80(75)
      abb80(75)=-8.0_ki*abb80(75)
      abb80(87)=abb80(16)*abb80(53)
      abb80(16)=-spak2k4*abb80(16)
      abb80(16)=-2.0_ki*abb80(83)+abb80(16)
      abb80(16)=es12*abb80(16)
      abb80(83)=abb80(83)*abb80(42)
      abb80(16)=abb80(86)+abb80(16)+abb80(87)+abb80(83)
      abb80(16)=spbk4k3*abb80(16)
      abb80(46)=spak2l6*abb80(46)
      abb80(83)=abb80(58)*spbl5k3
      abb80(45)=abb80(83)-abb80(45)
      abb80(83)=es23-es123
      abb80(86)=abb80(83)+abb80(50)
      abb80(86)=abb80(45)*abb80(86)
      abb80(87)=spbl5k2*spak1l6
      abb80(89)=abb80(87)*spbk3k1
      abb80(15)=-abb80(15)*abb80(89)
      abb80(15)=abb80(15)+abb80(86)
      abb80(15)=spbk7k1*abb80(15)
      abb80(15)=abb80(16)+abb80(15)+abb80(46)
      abb80(15)=8.0_ki*abb80(15)
      abb80(16)=abb80(72)*spbl5k3
      abb80(46)=abb80(57)*spbl5k2
      abb80(86)=abb80(46)*spbk7k3
      abb80(16)=abb80(16)-abb80(86)
      abb80(86)=abb80(16)*spak2l6
      abb80(95)=abb80(10)*spak1k3
      abb80(96)=abb80(95)*spbk7k3
      abb80(97)=abb80(96)*abb80(34)
      abb80(86)=abb80(97)+abb80(86)
      abb80(97)=16.0_ki*abb80(86)
      abb80(73)=abb80(73)*spak1l6
      abb80(73)=abb80(73)-abb80(94)
      abb80(98)=-spbk7k3*abb80(73)
      abb80(99)=abb80(13)*spbk7k3
      abb80(100)=-abb80(99)*abb80(42)
      abb80(98)=abb80(100)+abb80(98)
      abb80(18)=abb80(18)*spbk7k2
      abb80(58)=abb80(58)*spbk7l5
      abb80(100)=abb80(18)-abb80(58)
      abb80(101)=abb80(100)*spbk3k1
      abb80(101)=abb80(98)+abb80(101)
      abb80(102)=16.0_ki*abb80(101)
      abb80(18)=-abb80(18)-abb80(58)
      abb80(18)=spbk3k1*abb80(18)
      abb80(50)=abb80(99)*abb80(50)
      abb80(8)=abb80(22)*abb80(9)*abb80(8)
      abb80(58)=spbk7k3**2
      abb80(99)=abb80(8)*abb80(58)
      abb80(103)=-spak1k3*abb80(99)
      abb80(18)=abb80(103)+abb80(18)+abb80(50)+abb80(98)
      abb80(18)=16.0_ki*abb80(18)
      abb80(50)=abb80(101)+abb80(86)
      abb80(50)=8.0_ki*abb80(50)
      abb80(86)=-es12*spbk7k3*abb80(57)
      abb80(85)=spbk3k1*abb80(85)
      abb80(85)=abb80(86)+abb80(85)
      abb80(58)=abb80(58)*abb80(71)
      abb80(86)=-spak1k3*abb80(58)
      abb80(85)=2.0_ki*abb80(85)+abb80(86)
      abb80(85)=8.0_ki*abb80(85)
      abb80(86)=-abb80(13)*abb80(42)
      abb80(73)=abb80(86)-abb80(73)
      abb80(73)=spbk7k4*abb80(73)
      abb80(86)=spbk4k1*abb80(100)
      abb80(73)=abb80(73)+abb80(86)
      abb80(73)=8.0_ki*abb80(73)
      abb80(45)=-abb80(28)*abb80(45)*abb80(61)
      abb80(34)=abb80(21)*abb80(34)
      abb80(61)=16.0_ki*abb80(34)
      abb80(86)=16.0_ki*spak1k4*abb80(99)
      abb80(34)=-8.0_ki*abb80(34)
      abb80(58)=8.0_ki*spak1k4*abb80(58)
      abb80(98)=8.0_ki*abb80(101)
      abb80(99)=-abb80(19)*abb80(13)
      abb80(100)=abb80(99)*abb80(42)
      abb80(26)=abb80(65)*abb80(26)
      abb80(101)=-es12*abb80(26)
      abb80(100)=abb80(101)+abb80(100)
      abb80(100)=spak3k4*abb80(100)
      abb80(31)=-spbl5k2*abb80(31)
      abb80(30)=abb80(30)*spak3k4*spbl5k3
      abb80(30)=abb80(31)+abb80(30)
      abb80(30)=spal6k7*abb80(30)
      abb80(31)=abb80(65)*spak2k4
      abb80(87)=abb80(87)*abb80(31)
      abb80(101)=es12*abb80(87)
      abb80(30)=abb80(30)+abb80(101)+abb80(100)
      abb80(30)=8.0_ki*abb80(30)
      abb80(100)=16.0_ki*spak4l6
      abb80(101)=abb80(100)*abb80(27)
      abb80(103)=-spak3k4*abb80(99)
      abb80(104)=spak4l6*abb80(27)
      abb80(89)=-abb80(11)*abb80(89)
      abb80(105)=spal6k7*spbl5k2
      abb80(106)=abb80(21)*abb80(105)
      abb80(89)=abb80(106)+abb80(89)+abb80(104)+abb80(103)
      abb80(89)=16.0_ki*abb80(89)
      abb80(44)=-abb80(44)*abb80(14)
      abb80(103)=abb80(44)*spak1k4
      abb80(104)=32.0_ki*abb80(103)
      abb80(26)=-abb80(26)+abb80(99)
      abb80(26)=spak3k4*abb80(26)
      abb80(26)=abb80(87)+abb80(26)
      abb80(26)=16.0_ki*abb80(26)
      abb80(87)=-spbk4k3*spbl5k2*abb80(11)
      abb80(87)=abb80(87)+abb80(27)
      abb80(87)=spak4l6*abb80(87)
      abb80(99)=abb80(103)*abb80(42)
      abb80(103)=-abb80(32)*abb80(66)
      abb80(106)=abb80(11)*spbl5k3
      abb80(107)=spal6k7*spbk7k2*abb80(106)
      abb80(69)=-spbk2k1*abb80(69)
      abb80(69)=abb80(69)+abb80(107)+abb80(103)+abb80(99)+abb80(87)
      abb80(69)=8.0_ki*abb80(69)
      abb80(87)=8.0_ki*spak3k4
      abb80(87)=-abb80(87)*abb80(19)*abb80(57)
      abb80(99)=16.0_ki*abb80(66)
      abb80(66)=-8.0_ki*abb80(66)
      abb80(103)=16.0_ki*abb80(106)
      abb80(106)=8.0_ki*abb80(106)
      abb80(107)=abb80(91)*spbl5k2
      abb80(108)=es12*abb80(107)
      abb80(72)=-abb80(72)*abb80(105)
      abb80(109)=abb80(46)*spak4l6
      abb80(110)=spbk4k2*abb80(109)
      abb80(27)=spak3l6*abb80(27)
      abb80(27)=abb80(27)+abb80(110)+abb80(108)+abb80(72)
      abb80(27)=8.0_ki*abb80(27)
      abb80(72)=spbk4k2*spak1k4
      abb80(108)=-spak1k7*spbk7k2
      abb80(72)=abb80(108)+abb80(72)
      abb80(72)=abb80(12)*abb80(72)
      abb80(108)=-spak1k3*abb80(44)
      abb80(72)=abb80(107)+abb80(108)+abb80(72)
      abb80(72)=16.0_ki*abb80(72)
      abb80(107)=16.0_ki*abb80(107)
      abb80(93)=-8.0_ki*abb80(93)
      abb80(95)=spbl5k3*abb80(95)
      abb80(11)=spbl5k4*abb80(11)
      abb80(108)=spak1k7*spbk7l5*abb80(10)
      abb80(11)=abb80(108)+abb80(11)-abb80(46)+abb80(95)
      abb80(11)=8.0_ki*abb80(11)
      abb80(46)=abb80(17)*abb80(42)
      abb80(95)=abb80(91)*spbl5k3
      abb80(108)=abb80(95)-abb80(17)
      abb80(83)=-abb80(108)*abb80(83)
      abb80(110)=-2.0_ki*abb80(95)+abb80(17)
      abb80(110)=es12*abb80(110)
      abb80(9)=spbk3k2*abb80(9)
      abb80(14)=abb80(14)*abb80(9)
      abb80(111)=abb80(14)*spbk7k3
      abb80(112)=spak1k3*abb80(111)
      abb80(96)=spbl5k3*abb80(96)
      abb80(16)=abb80(96)+abb80(16)
      abb80(16)=spal6k7*abb80(16)
      abb80(96)=-abb80(25)*abb80(32)
      abb80(59)=spbk3k1*abb80(59)
      abb80(109)=-spbk4k3*abb80(109)
      abb80(16)=abb80(16)+abb80(112)+abb80(109)+abb80(59)+abb80(110)+abb80(96)+&
      &abb80(83)+abb80(46)
      abb80(16)=8.0_ki*abb80(16)
      abb80(46)=16.0_ki*abb80(108)
      abb80(59)=-abb80(95)-abb80(17)
      abb80(59)=16.0_ki*abb80(59)
      abb80(83)=8.0_ki*abb80(108)
      abb80(95)=-16.0_ki*abb80(25)
      abb80(96)=-spbk4k2*abb80(13)
      abb80(108)=-spbl5k4*abb80(91)
      abb80(96)=abb80(96)+abb80(108)
      abb80(96)=8.0_ki*abb80(96)
      abb80(14)=-abb80(14)*abb80(62)
      abb80(62)=-spbk3k1*abb80(68)
      abb80(21)=-spal6k7*spbl5k3*abb80(21)
      abb80(14)=abb80(21)+abb80(14)+abb80(62)
      abb80(14)=8.0_ki*abb80(14)
      abb80(21)=abb80(31)*abb80(32)
      abb80(35)=abb80(35)*abb80(65)
      abb80(21)=abb80(21)-abb80(35)
      abb80(21)=16.0_ki*abb80(21)
      abb80(62)=-abb80(44)*abb80(42)
      abb80(68)=abb80(62)*spak2k4
      abb80(108)=abb80(47)*abb80(25)
      abb80(9)=-abb80(9)*abb80(22)
      abb80(22)=abb80(9)*abb80(39)
      abb80(22)=abb80(108)-abb80(22)
      abb80(68)=abb80(68)+abb80(22)
      abb80(68)=16.0_ki*abb80(68)
      abb80(108)=-spak3k4*abb80(111)
      abb80(17)=-abb80(17)*abb80(54)
      abb80(17)=abb80(17)+abb80(108)+abb80(22)
      abb80(17)=16.0_ki*abb80(17)
      abb80(108)=abb80(65)*abb80(32)
      abb80(62)=abb80(108)+abb80(62)
      abb80(62)=spak2k4*abb80(62)
      abb80(22)=-abb80(35)+abb80(62)+abb80(22)
      abb80(22)=8.0_ki*abb80(22)
      abb80(35)=abb80(65)*abb80(53)
      abb80(53)=spak3k4*spbk7k3*abb80(9)
      abb80(54)=-abb80(25)*abb80(54)
      abb80(35)=abb80(54)+abb80(35)+abb80(53)
      abb80(35)=8.0_ki*abb80(35)
      abb80(53)=-abb80(56)*abb80(79)
      abb80(39)=-abb80(71)*abb80(39)
      abb80(47)=abb80(57)*abb80(47)
      abb80(39)=abb80(39)+abb80(47)
      abb80(39)=spbk4k2*abb80(39)
      abb80(9)=-spbk7l5*abb80(9)
      abb80(25)=spbl5k1*abb80(25)
      abb80(9)=abb80(9)+abb80(25)
      abb80(9)=spak3l6*abb80(9)
      abb80(9)=abb80(39)+abb80(9)+abb80(53)
      abb80(9)=8.0_ki*abb80(9)
      abb80(25)=abb80(32)*abb80(10)
      abb80(32)=16.0_ki*abb80(25)
      abb80(39)=16.0_ki*abb80(56)
      abb80(25)=8.0_ki*abb80(25)
      abb80(47)=8.0_ki*abb80(10)
      abb80(42)=abb80(42)*abb80(47)
      abb80(8)=spak3k4*abb80(19)*abb80(8)
      abb80(19)=spbl5k2*abb80(31)
      abb80(53)=abb80(65)*spak3k4
      abb80(54)=-spbl5k3*abb80(53)
      abb80(19)=abb80(19)+abb80(54)
      abb80(19)=spal6k7*abb80(19)
      abb80(8)=abb80(8)+abb80(19)
      abb80(8)=8.0_ki*abb80(8)
      abb80(19)=abb80(105)*abb80(47)
      abb80(54)=abb80(100)*abb80(65)
      abb80(56)=8.0_ki*abb80(65)
      abb80(56)=-spak4l6*abb80(56)
      abb80(10)=-spbk4k2*spak4l6*abb80(10)
      abb80(62)=-spak3l6*abb80(65)
      abb80(10)=abb80(10)+abb80(62)
      abb80(10)=8.0_ki*abb80(10)
      abb80(62)=16.0_ki*spak3k4*abb80(44)
      abb80(53)=8.0_ki*abb80(53)
      abb80(65)=-es12*abb80(13)
      abb80(65)=abb80(65)+abb80(94)
      abb80(28)=abb80(65)*abb80(28)
      abb80(13)=32.0_ki*spbk7k1*abb80(13)
      abb80(57)=-16.0_ki*spbk7k1*abb80(57)
      abb80(44)=abb80(44)*spak2k4
      abb80(65)=16.0_ki*abb80(44)
      abb80(44)=8.0_ki*abb80(44)
      abb80(31)=-8.0_ki*abb80(31)
      abb80(71)=es12-abb80(79)
      abb80(71)=abb80(12)*abb80(71)
      abb80(79)=-spbl5k1*abb80(91)
      abb80(71)=abb80(79)+abb80(71)
      abb80(71)=8.0_ki*abb80(71)
      abb80(12)=-16.0_ki*abb80(12)
      R2d80=0.0_ki
      rat2 = rat2 + R2d80
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='80' value='", &
          & R2d80, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd80h1
