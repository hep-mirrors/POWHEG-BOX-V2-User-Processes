module     p0_dbaru_epnebbbarg_abbrevd68h3
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(118), public :: abb68
   complex(ki), public :: R2d68
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
      abb68(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb68(2)=NC**(-1)
      abb68(3)=sqrt2**(-1)
      abb68(4)=es56**(-1)
      abb68(5)=spak2l5**(-1)
      abb68(6)=spak2k7**(-1)
      abb68(7)=spak2l6**(-1)
      abb68(8)=spak3k4*spbk7k3*spbk3k2
      abb68(9)=spak2k4*spbk3k2
      abb68(10)=abb68(9)*spbk7k2
      abb68(11)=abb68(8)-abb68(10)
      abb68(12)=c1*abb68(2)
      abb68(13)=c4*abb68(2)**2
      abb68(12)=-c2+abb68(12)-abb68(13)
      abb68(13)=TR*gW
      abb68(13)=abb68(13)**2*CVDU*i_*mB*abb68(6)*abb68(4)*abb68(3)*abb68(1)
      abb68(14)=abb68(12)*abb68(13)*abb68(7)
      abb68(15)=spak1k2**2
      abb68(16)=-abb68(15)*abb68(14)
      abb68(17)=-spbl5k1*abb68(16)*abb68(11)
      abb68(18)=-abb68(12)*abb68(13)*abb68(5)
      abb68(15)=abb68(15)*abb68(18)
      abb68(19)=-spbl6k1*abb68(15)*abb68(11)
      abb68(17)=abb68(17)+abb68(19)
      abb68(19)=-8.0_ki*es12*abb68(17)
      abb68(20)=abb68(9)*spbk7k1
      abb68(21)=abb68(20)*abb68(16)
      abb68(22)=-abb68(12)*abb68(13)*spak1k2
      abb68(23)=abb68(22)*spbk7l6
      abb68(24)=abb68(23)*abb68(9)
      abb68(21)=abb68(21)+abb68(24)
      abb68(21)=abb68(21)*spbl5k2
      abb68(24)=abb68(20)*abb68(15)
      abb68(25)=abb68(22)*spbk7l5
      abb68(26)=abb68(25)*abb68(9)
      abb68(24)=abb68(24)+abb68(26)
      abb68(24)=abb68(24)*spbl6k2
      abb68(26)=abb68(7)*abb68(22)
      abb68(27)=abb68(26)*spbk7l5
      abb68(28)=abb68(27)*abb68(9)
      abb68(29)=abb68(5)*abb68(22)
      abb68(30)=abb68(29)*spbk7l6
      abb68(31)=abb68(30)*abb68(9)
      abb68(28)=abb68(28)+abb68(31)
      abb68(32)=abb68(28)*es12
      abb68(33)=spak2l6*spbl6k2
      abb68(31)=abb68(31)*abb68(33)
      abb68(34)=abb68(27)*spak2l5
      abb68(35)=abb68(9)*spbl5k2
      abb68(36)=abb68(35)*abb68(34)
      abb68(21)=abb68(24)+abb68(21)+abb68(32)+abb68(31)+abb68(36)
      abb68(24)=16.0_ki*abb68(21)
      abb68(31)=abb68(16)*spbl5k1
      abb68(32)=abb68(15)*spbl6k1
      abb68(31)=abb68(31)+abb68(32)
      abb68(32)=spbk3k1*spbk7k2
      abb68(36)=-abb68(31)*abb68(32)*spak1k4
      abb68(36)=-abb68(21)+abb68(36)
      abb68(36)=16.0_ki*abb68(36)
      abb68(37)=abb68(30)+abb68(27)
      abb68(38)=spbk3k1*spak1k4
      abb68(39)=abb68(37)*abb68(38)
      abb68(12)=-abb68(13)*abb68(12)
      abb68(13)=abb68(12)*spak1k4
      abb68(40)=abb68(13)*spbk7l6
      abb68(41)=abb68(26)*spbk7k1
      abb68(42)=abb68(41)*spak1k4
      abb68(40)=abb68(40)+abb68(42)
      abb68(42)=abb68(40)*spbl5k3
      abb68(43)=abb68(13)*spbk7l5
      abb68(44)=abb68(29)*spbk7k1
      abb68(45)=abb68(44)*spak1k4
      abb68(43)=abb68(43)+abb68(45)
      abb68(45)=abb68(43)*spbl6k3
      abb68(46)=-abb68(14)*spak2l5
      abb68(47)=abb68(46)*spbk7l5
      abb68(48)=spbl5k3*spak1k4
      abb68(49)=abb68(48)*abb68(47)
      abb68(50)=abb68(18)*spak2l6
      abb68(51)=abb68(50)*spbk7l6
      abb68(52)=spbl6k3*spak1k4
      abb68(53)=abb68(52)*abb68(51)
      abb68(39)=abb68(53)+abb68(39)+abb68(49)+abb68(42)+abb68(45)
      abb68(42)=32.0_ki*abb68(39)
      abb68(17)=16.0_ki*abb68(17)
      abb68(45)=32.0_ki*abb68(28)
      abb68(49)=abb68(51)*spak1k4
      abb68(43)=abb68(43)+abb68(49)
      abb68(49)=-spbl6k2*abb68(43)
      abb68(53)=abb68(47)*spak1k4
      abb68(40)=abb68(40)+abb68(53)
      abb68(53)=-spbl5k2*abb68(40)
      abb68(54)=abb68(18)*spak1k4
      abb68(55)=-spbk7l6*abb68(54)
      abb68(56)=-abb68(14)*spak1k4
      abb68(57)=-spbk7l5*abb68(56)
      abb68(55)=abb68(55)+abb68(57)
      abb68(55)=es12*abb68(55)
      abb68(49)=abb68(55)+abb68(53)+abb68(49)
      abb68(49)=spbk4k3*spak2k4*abb68(49)
      abb68(53)=abb68(29)*spbl6k1
      abb68(55)=abb68(26)*spbl5k1
      abb68(53)=abb68(53)+abb68(55)
      abb68(55)=spbk7k3*spak1k4
      abb68(57)=abb68(53)*abb68(55)*es12
      abb68(21)=abb68(49)+abb68(21)+abb68(57)
      abb68(21)=8.0_ki*abb68(21)
      abb68(39)=16.0_ki*abb68(39)
      abb68(28)=-16.0_ki*abb68(28)
      abb68(49)=abb68(37)*es12
      abb68(57)=abb68(15)*spbk7k1
      abb68(25)=abb68(57)+abb68(25)
      abb68(58)=abb68(25)*spbl6k2
      abb68(59)=abb68(16)*spbk7k1
      abb68(23)=abb68(23)+abb68(59)
      abb68(60)=abb68(23)*spbl5k2
      abb68(61)=abb68(33)*abb68(30)
      abb68(62)=abb68(34)*spbl5k2
      abb68(49)=abb68(61)+abb68(62)+abb68(49)+abb68(58)+abb68(60)
      abb68(58)=es34-es234
      abb68(60)=-abb68(49)*abb68(58)
      abb68(61)=spbk7k2*abb68(31)
      abb68(62)=es12*abb68(61)
      abb68(60)=abb68(62)+abb68(60)
      abb68(60)=8.0_ki*abb68(60)
      abb68(62)=abb68(12)*spbk7l5
      abb68(62)=abb68(51)+abb68(62)+abb68(44)
      abb68(63)=-spbl6k3*abb68(62)
      abb68(64)=abb68(12)*spbk7l6
      abb68(64)=abb68(47)+abb68(64)+abb68(41)
      abb68(65)=-spbl5k3*abb68(64)
      abb68(63)=abb68(65)+abb68(63)
      abb68(63)=spak1k3*abb68(63)
      abb68(65)=es234+es12
      abb68(66)=es567-abb68(65)
      abb68(66)=abb68(37)*abb68(66)
      abb68(43)=-spbl6k4*abb68(43)
      abb68(40)=-spbl5k4*abb68(40)
      abb68(67)=spak1l6*spbl6l5
      abb68(68)=-abb68(41)*abb68(67)
      abb68(69)=spak1l5*spbl6l5
      abb68(70)=abb68(44)*abb68(69)
      abb68(40)=abb68(70)+abb68(68)+abb68(40)+abb68(43)+abb68(63)+abb68(66)
      abb68(40)=16.0_ki*abb68(40)
      abb68(37)=abb68(37)*abb68(58)
      abb68(37)=abb68(37)-abb68(61)
      abb68(37)=16.0_ki*abb68(37)
      abb68(43)=8.0_ki*spbl6l5
      abb68(61)=abb68(59)*abb68(43)
      abb68(43)=-abb68(57)*abb68(43)
      abb68(49)=spbk4k3*spak2k4*abb68(49)
      abb68(63)=es23-es123
      abb68(66)=-abb68(63)*spbk7k3*abb68(31)
      abb68(68)=2.0_ki*es12
      abb68(70)=abb68(68)*spbk7k3
      abb68(71)=-abb68(15)*abb68(70)
      abb68(72)=abb68(32)*spak1k2**3
      abb68(73)=abb68(18)*abb68(72)
      abb68(71)=abb68(71)+abb68(73)
      abb68(71)=spbl6k1*abb68(71)
      abb68(70)=-abb68(16)*abb68(70)
      abb68(72)=-abb68(14)*abb68(72)
      abb68(70)=abb68(70)+abb68(72)
      abb68(70)=spbl5k1*abb68(70)
      abb68(49)=abb68(70)+abb68(49)+abb68(71)+abb68(66)
      abb68(49)=8.0_ki*abb68(49)
      abb68(66)=abb68(30)*spak2l6
      abb68(25)=abb68(66)+abb68(25)
      abb68(66)=spbl6k3*abb68(25)
      abb68(23)=abb68(23)+abb68(34)
      abb68(34)=spbl5k3*abb68(23)
      abb68(70)=abb68(16)*spbk7l5
      abb68(71)=abb68(15)*spbk7l6
      abb68(70)=abb68(70)+abb68(71)
      abb68(71)=abb68(70)*spbk3k1
      abb68(34)=abb68(71)+abb68(34)+abb68(66)
      abb68(66)=16.0_ki*abb68(34)
      abb68(34)=8.0_ki*abb68(34)
      abb68(25)=spbl6k4*abb68(25)
      abb68(23)=spbl5k4*abb68(23)
      abb68(70)=spbk4k1*abb68(70)
      abb68(23)=abb68(70)+abb68(25)+abb68(23)
      abb68(23)=8.0_ki*abb68(23)
      abb68(25)=abb68(55)*spbk3k1
      abb68(31)=8.0_ki*abb68(25)*abb68(31)
      abb68(70)=abb68(26)*spbl5k2
      abb68(71)=abb68(70)*spak2l5
      abb68(72)=abb68(22)*spbl6k2
      abb68(71)=abb68(71)+abb68(72)
      abb68(73)=spbl5k3*spbk3k2
      abb68(74)=abb68(73)*abb68(71)
      abb68(75)=abb68(73)*abb68(26)
      abb68(76)=spbl6k3*spbk3k2
      abb68(77)=abb68(76)*abb68(29)
      abb68(75)=abb68(75)+abb68(77)
      abb68(78)=es12*abb68(75)
      abb68(79)=abb68(16)*spbl5k2
      abb68(80)=abb68(15)*spbl6k2
      abb68(79)=abb68(79)+abb68(80)
      abb68(79)=abb68(79)*spbk3k1
      abb68(80)=-spbk3k2*abb68(79)
      abb68(81)=abb68(22)*spbl5k2
      abb68(82)=abb68(76)*abb68(81)
      abb68(77)=abb68(33)*abb68(77)
      abb68(74)=abb68(80)+abb68(77)+abb68(78)+abb68(82)+abb68(74)
      abb68(74)=spak3k4*abb68(74)
      abb68(77)=spbl5k2**2*abb68(26)*spak2l5
      abb68(78)=spbl6k2**2*abb68(29)*spak2l6
      abb68(77)=abb68(77)+abb68(78)
      abb68(78)=-abb68(9)*abb68(77)
      abb68(80)=2.0_ki*abb68(72)
      abb68(82)=-abb68(35)*abb68(80)
      abb68(74)=abb68(74)+abb68(82)+abb68(78)
      abb68(74)=8.0_ki*abb68(74)
      abb68(78)=abb68(50)*spbl6k2
      abb68(82)=abb68(78)*abb68(52)
      abb68(83)=abb68(13)*spbl5k3
      abb68(84)=abb68(83)*spbl6k2
      abb68(13)=abb68(13)*spbl6k3
      abb68(85)=abb68(13)*spbl5k2
      abb68(86)=abb68(46)*spbl5k2
      abb68(87)=abb68(86)*abb68(48)
      abb68(82)=abb68(82)+abb68(84)+abb68(85)+abb68(87)
      abb68(84)=abb68(54)*spbl6k3
      abb68(85)=-abb68(48)*abb68(14)
      abb68(84)=abb68(84)+abb68(85)
      abb68(84)=abb68(84)*es12
      abb68(85)=abb68(29)*spbl6k2
      abb68(85)=abb68(85)+abb68(70)
      abb68(87)=abb68(85)*abb68(38)
      abb68(84)=abb68(84)-abb68(87)
      abb68(87)=-abb68(82)+abb68(84)
      abb68(87)=16.0_ki*abb68(87)
      abb68(88)=abb68(9)*abb68(85)
      abb68(75)=-spak3k4*abb68(75)
      abb68(75)=abb68(75)+abb68(88)
      abb68(75)=16.0_ki*abb68(75)
      abb68(82)=abb68(82)+abb68(84)
      abb68(82)=8.0_ki*abb68(82)
      abb68(80)=spbl5k2*abb68(80)
      abb68(77)=abb68(80)+abb68(77)
      abb68(77)=8.0_ki*abb68(77)
      abb68(67)=abb68(14)*abb68(67)
      abb68(69)=abb68(18)*abb68(69)
      abb68(67)=abb68(67)+abb68(69)
      abb68(67)=16.0_ki*abb68(67)
      abb68(69)=-16.0_ki*abb68(85)
      abb68(80)=8.0_ki*abb68(26)
      abb68(84)=spbl6l5*abb68(80)
      abb68(85)=8.0_ki*abb68(29)
      abb68(88)=-spbl6l5*abb68(85)
      abb68(89)=-spbl6k3*abb68(29)
      abb68(90)=-spbl5k3*abb68(26)
      abb68(89)=abb68(89)+abb68(90)
      abb68(89)=es12*abb68(89)
      abb68(79)=abb68(89)+abb68(79)
      abb68(89)=abb68(46)*spbl5k3**2
      abb68(90)=abb68(50)*spbl6k3**2
      abb68(89)=abb68(89)+abb68(90)
      abb68(90)=abb68(12)*spbl5k3
      abb68(91)=2.0_ki*spbl6k3
      abb68(92)=-abb68(90)*abb68(91)
      abb68(92)=abb68(92)-abb68(89)
      abb68(92)=spak1k3*abb68(92)
      abb68(79)=2.0_ki*abb68(79)+abb68(92)
      abb68(79)=8.0_ki*abb68(79)
      abb68(89)=spak1k4*abb68(89)
      abb68(91)=abb68(83)*abb68(91)
      abb68(89)=abb68(91)+abb68(89)
      abb68(89)=8.0_ki*abb68(89)
      abb68(91)=abb68(33)-es12
      abb68(92)=-abb68(29)*abb68(91)
      abb68(92)=-abb68(81)+abb68(92)
      abb68(92)=abb68(92)*abb68(8)
      abb68(93)=abb68(10)*abb68(29)
      abb68(91)=abb68(93)*abb68(91)
      abb68(94)=abb68(10)*abb68(81)
      abb68(91)=abb68(92)+abb68(94)+abb68(91)
      abb68(91)=8.0_ki*abb68(91)
      abb68(92)=16.0_ki*abb68(93)
      abb68(52)=abb68(50)*abb68(52)
      abb68(52)=abb68(52)+abb68(83)
      abb68(52)=spbk7k2*abb68(52)
      abb68(83)=abb68(29)*spbk7k2
      abb68(94)=-abb68(83)*abb68(38)
      abb68(52)=abb68(94)-abb68(93)+abb68(52)
      abb68(52)=16.0_ki*abb68(52)
      abb68(94)=abb68(54)*spbk7k3
      abb68(95)=32.0_ki*abb68(94)
      abb68(96)=-abb68(29)*abb68(8)
      abb68(96)=abb68(93)+abb68(96)
      abb68(96)=16.0_ki*abb68(96)
      abb68(97)=abb68(55)*abb68(12)
      abb68(98)=-spbl5k2*abb68(97)
      abb68(99)=es12*abb68(94)
      abb68(100)=-abb68(55)*abb68(78)
      abb68(101)=spbk4k3*spak2k4
      abb68(102)=abb68(101)*spbk7k2
      abb68(103)=-abb68(54)*abb68(102)
      abb68(93)=abb68(103)+abb68(100)+abb68(99)+abb68(93)+abb68(98)
      abb68(93)=8.0_ki*abb68(93)
      abb68(94)=16.0_ki*abb68(94)
      abb68(65)=abb68(65)-es34
      abb68(33)=-abb68(33)+abb68(65)
      abb68(33)=abb68(83)*abb68(33)
      abb68(98)=-spbk7k2*abb68(81)
      abb68(33)=abb68(98)+abb68(33)
      abb68(33)=8.0_ki*abb68(33)
      abb68(98)=spak1k3*spbk7k3
      abb68(99)=spak1l6*spbk7l6
      abb68(100)=spak1l5*spbk7l5
      abb68(99)=-abb68(100)+abb68(98)-abb68(99)
      abb68(100)=-abb68(18)*abb68(99)
      abb68(103)=-spbk7k4*abb68(54)
      abb68(100)=abb68(103)+abb68(100)
      abb68(100)=16.0_ki*abb68(100)
      abb68(103)=-16.0_ki*abb68(83)
      abb68(30)=-8.0_ki*abb68(30)
      abb68(104)=-spbk7l5*abb68(85)
      abb68(63)=abb68(68)+abb68(63)
      abb68(68)=abb68(29)*spbk7k3
      abb68(105)=-abb68(68)*abb68(63)
      abb68(106)=-spbl6k3*abb68(83)
      abb68(107)=spbl6k2*abb68(68)
      abb68(106)=abb68(106)+abb68(107)
      abb68(106)=spak2l6*abb68(106)
      abb68(107)=abb68(50)*spbl6k3
      abb68(90)=abb68(90)+abb68(107)
      abb68(90)=abb68(90)*abb68(98)
      abb68(22)=abb68(22)*spbk7k2
      abb68(108)=-spbl5k3*abb68(22)
      abb68(81)=spbk7k3*abb68(81)
      abb68(15)=abb68(15)*abb68(32)
      abb68(83)=abb68(83)*abb68(101)
      abb68(15)=abb68(90)+abb68(83)+abb68(15)+abb68(106)+abb68(108)+abb68(81)+a&
      &bb68(105)
      abb68(15)=8.0_ki*abb68(15)
      abb68(81)=16.0_ki*abb68(68)
      abb68(68)=8.0_ki*abb68(68)
      abb68(83)=spbk7k4*abb68(85)
      abb68(90)=-spbl5k3*abb68(97)
      abb68(105)=-abb68(55)*abb68(107)
      abb68(106)=abb68(29)*abb68(25)
      abb68(90)=abb68(106)+abb68(90)+abb68(105)
      abb68(90)=8.0_ki*abb68(90)
      abb68(105)=spak3k4*spbk3k2**2
      abb68(85)=-abb68(85)*abb68(105)
      abb68(106)=16.0_ki*spbk3k2
      abb68(107)=-abb68(54)*abb68(106)
      abb68(108)=8.0_ki*spbk3k2
      abb68(54)=-abb68(54)*abb68(108)
      abb68(109)=abb68(29)*abb68(106)
      abb68(110)=abb68(10)*abb68(71)
      abb68(111)=abb68(26)*es12
      abb68(111)=abb68(111)-abb68(71)
      abb68(111)=abb68(111)*abb68(8)
      abb68(10)=abb68(10)*abb68(26)
      abb68(112)=-es12*abb68(10)
      abb68(110)=abb68(111)+abb68(112)+abb68(110)
      abb68(110)=8.0_ki*abb68(110)
      abb68(111)=16.0_ki*abb68(10)
      abb68(48)=abb68(46)*abb68(48)
      abb68(13)=abb68(48)+abb68(13)
      abb68(13)=spbk7k2*abb68(13)
      abb68(48)=abb68(26)*spbk7k2
      abb68(38)=-abb68(48)*abb68(38)
      abb68(13)=abb68(38)-abb68(10)+abb68(13)
      abb68(13)=16.0_ki*abb68(13)
      abb68(38)=-abb68(55)*abb68(14)
      abb68(112)=32.0_ki*abb68(38)
      abb68(8)=-abb68(26)*abb68(8)
      abb68(8)=abb68(10)+abb68(8)
      abb68(8)=16.0_ki*abb68(8)
      abb68(113)=-spbl6k2*abb68(97)
      abb68(114)=es12*abb68(38)
      abb68(115)=-abb68(55)*abb68(86)
      abb68(102)=-abb68(56)*abb68(102)
      abb68(10)=abb68(102)+abb68(115)+abb68(114)+abb68(10)+abb68(113)
      abb68(10)=8.0_ki*abb68(10)
      abb68(38)=16.0_ki*abb68(38)
      abb68(71)=-spbk7k2*abb68(71)
      abb68(65)=abb68(48)*abb68(65)
      abb68(65)=abb68(65)+abb68(71)
      abb68(65)=8.0_ki*abb68(65)
      abb68(71)=abb68(14)*abb68(99)
      abb68(99)=-spbk7k4*abb68(56)
      abb68(71)=abb68(99)+abb68(71)
      abb68(71)=16.0_ki*abb68(71)
      abb68(99)=-16.0_ki*abb68(48)
      abb68(102)=-spbk7l6*abb68(80)
      abb68(27)=-8.0_ki*abb68(27)
      abb68(113)=abb68(26)*spbk7k3
      abb68(63)=-abb68(113)*abb68(63)
      abb68(114)=-spbl5k3*abb68(48)
      abb68(70)=spbk7k3*abb68(70)
      abb68(70)=abb68(114)+abb68(70)
      abb68(70)=spak2l5*abb68(70)
      abb68(114)=abb68(12)*spbl6k3
      abb68(115)=abb68(46)*spbl5k3
      abb68(114)=abb68(114)+abb68(115)
      abb68(98)=abb68(114)*abb68(98)
      abb68(22)=-spbl6k3*abb68(22)
      abb68(72)=spbk7k3*abb68(72)
      abb68(16)=abb68(16)*abb68(32)
      abb68(32)=abb68(48)*abb68(101)
      abb68(16)=abb68(98)+abb68(32)+abb68(16)+abb68(70)+abb68(22)+abb68(72)+abb&
      &68(63)
      abb68(16)=8.0_ki*abb68(16)
      abb68(22)=16.0_ki*abb68(113)
      abb68(32)=8.0_ki*abb68(113)
      abb68(48)=spbk7k4*abb68(80)
      abb68(63)=-spbl6k3*abb68(97)
      abb68(55)=-abb68(55)*abb68(115)
      abb68(25)=abb68(26)*abb68(25)
      abb68(25)=abb68(25)+abb68(63)+abb68(55)
      abb68(25)=8.0_ki*abb68(25)
      abb68(55)=-abb68(80)*abb68(105)
      abb68(63)=-abb68(56)*abb68(106)
      abb68(56)=-abb68(56)*abb68(108)
      abb68(70)=abb68(26)*abb68(106)
      abb68(72)=abb68(18)*abb68(9)
      abb68(80)=16.0_ki*abb68(72)
      abb68(97)=8.0_ki*abb68(72)
      abb68(58)=8.0_ki*abb68(58)
      abb68(98)=-abb68(18)*abb68(58)
      abb68(101)=-abb68(14)*abb68(9)
      abb68(105)=16.0_ki*abb68(101)
      abb68(106)=8.0_ki*abb68(101)
      abb68(108)=abb68(14)*abb68(58)
      abb68(113)=abb68(20)*abb68(29)
      abb68(51)=abb68(51)*abb68(9)
      abb68(114)=abb68(12)*abb68(9)
      abb68(115)=abb68(114)*spbk7l5
      abb68(51)=abb68(115)+abb68(113)+abb68(51)
      abb68(113)=16.0_ki*abb68(51)
      abb68(51)=8.0_ki*abb68(51)
      abb68(62)=-abb68(62)*abb68(58)
      abb68(115)=abb68(12)*abb68(73)
      abb68(116)=abb68(50)*abb68(76)
      abb68(117)=spbk3k1*spbk3k2
      abb68(29)=-abb68(29)*abb68(117)
      abb68(29)=abb68(29)+abb68(115)+abb68(116)
      abb68(29)=spak3k4*abb68(29)
      abb68(115)=-spbl5k2*abb68(114)
      abb68(72)=es12*abb68(72)
      abb68(116)=-abb68(9)*abb68(78)
      abb68(29)=abb68(29)+abb68(116)+abb68(115)+abb68(72)
      abb68(29)=8.0_ki*abb68(29)
      abb68(72)=spbl5k2*abb68(12)
      abb68(115)=-es12*abb68(18)
      abb68(72)=abb68(78)+abb68(72)+abb68(115)
      abb68(72)=8.0_ki*abb68(72)
      abb68(78)=8.0_ki*abb68(11)
      abb68(115)=-abb68(50)*abb68(78)
      abb68(116)=8.0_ki*spbk7k2
      abb68(50)=-abb68(50)*abb68(116)
      abb68(11)=-abb68(12)*abb68(11)
      abb68(11)=8.0_ki*abb68(11)
      abb68(118)=abb68(116)*abb68(12)
      abb68(20)=abb68(20)*abb68(26)
      abb68(9)=abb68(47)*abb68(9)
      abb68(47)=abb68(114)*spbk7l6
      abb68(9)=abb68(47)+abb68(20)+abb68(9)
      abb68(20)=16.0_ki*abb68(9)
      abb68(9)=8.0_ki*abb68(9)
      abb68(47)=-abb68(64)*abb68(58)
      abb68(58)=abb68(12)*abb68(76)
      abb68(64)=abb68(46)*abb68(73)
      abb68(26)=-abb68(26)*abb68(117)
      abb68(26)=abb68(26)+abb68(58)+abb68(64)
      abb68(26)=spak3k4*abb68(26)
      abb68(58)=-spbl6k2*abb68(114)
      abb68(64)=es12*abb68(101)
      abb68(35)=-abb68(46)*abb68(35)
      abb68(26)=abb68(26)+abb68(35)+abb68(58)+abb68(64)
      abb68(26)=8.0_ki*abb68(26)
      abb68(12)=spbl6k2*abb68(12)
      abb68(35)=es12*abb68(14)
      abb68(12)=abb68(86)+abb68(12)+abb68(35)
      abb68(12)=8.0_ki*abb68(12)
      abb68(35)=-abb68(46)*abb68(78)
      abb68(46)=-abb68(46)*abb68(116)
      abb68(58)=8.0_ki*spak3k4
      abb68(58)=abb68(58)*spbk3k2
      abb68(64)=-abb68(18)*abb68(58)
      abb68(58)=abb68(14)*abb68(58)
      abb68(57)=spbl6k1*abb68(57)
      abb68(59)=spbl5k1*abb68(59)
      abb68(57)=abb68(57)+abb68(59)
      abb68(57)=8.0_ki*abb68(57)
      abb68(53)=16.0_ki*abb68(53)
      abb68(44)=8.0_ki*abb68(44)
      abb68(18)=8.0_ki*abb68(18)
      abb68(41)=8.0_ki*abb68(41)
      abb68(14)=-8.0_ki*abb68(14)
      R2d68=0.0_ki
      rat2 = rat2 + R2d68
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='68' value='", &
          & R2d68, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd68h3
