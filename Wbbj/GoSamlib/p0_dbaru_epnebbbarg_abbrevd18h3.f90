module     p0_dbaru_epnebbbarg_abbrevd18h3
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(115), public :: abb18
   complex(ki), public :: R2d18
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
      abb18(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb18(2)=1.0_ki/(es71+es34+es56-es712-es234)
      abb18(3)=NC**(-1)
      abb18(4)=sqrt2**(-1)
      abb18(5)=es56**(-1)
      abb18(6)=es71**(-1)
      abb18(7)=spak2l5**(-1)
      abb18(8)=spak2k7**(-1)
      abb18(9)=spak2l6**(-1)
      abb18(10)=1.0_ki/(es34+es567-es12-es234)
      abb18(11)=spbl5k2**(-1)
      abb18(12)=spbl6k2**(-1)
      abb18(13)=c3*spak1k2
      abb18(14)=TR*gW
      abb18(14)=CVDU*i_*spak1k4*abb18(8)*abb18(5)*abb18(4)*abb18(14)**2*abb18(2&
      &)*abb18(1)
      abb18(15)=abb18(14)*mB
      abb18(16)=abb18(13)*abb18(15)
      abb18(17)=abb18(15)*c4*spak1k2
      abb18(18)=abb18(17)*abb18(3)
      abb18(18)=abb18(18)-abb18(16)
      abb18(19)=abb18(18)*abb18(3)
      abb18(20)=abb18(19)-abb18(17)
      abb18(21)=spbk7k1*abb18(6)
      abb18(22)=abb18(21)*spbl6k2
      abb18(23)=abb18(22)*abb18(7)
      abb18(24)=abb18(23)*abb18(20)
      abb18(25)=abb18(21)*NC
      abb18(26)=abb18(25)*abb18(16)
      abb18(27)=abb18(26)*spbl6k2
      abb18(28)=abb18(27)*abb18(7)
      abb18(24)=abb18(24)+abb18(28)
      abb18(24)=abb18(24)*spak2l6
      abb18(29)=abb18(21)*spbl5k2
      abb18(30)=abb18(20)*abb18(29)
      abb18(31)=abb18(26)*spbl5k2
      abb18(24)=abb18(24)+abb18(30)+abb18(31)
      abb18(24)=abb18(24)*spbl6k3
      abb18(30)=abb18(3)*c4
      abb18(15)=abb18(15)*abb18(10)
      abb18(32)=abb18(30)*abb18(15)
      abb18(33)=abb18(15)*c3
      abb18(32)=abb18(32)-abb18(33)
      abb18(34)=abb18(32)*abb18(3)
      abb18(35)=abb18(15)*c4
      abb18(36)=abb18(34)-abb18(35)
      abb18(37)=spak2k4*spbk4k3
      abb18(38)=abb18(37)*abb18(7)
      abb18(39)=abb18(36)*abb18(38)
      abb18(13)=abb18(15)*abb18(13)
      abb18(15)=spak1k2*abb18(35)
      abb18(40)=abb18(15)*abb18(3)
      abb18(40)=abb18(40)-abb18(13)
      abb18(41)=abb18(40)*abb18(3)
      abb18(42)=abb18(41)-abb18(15)
      abb18(43)=spbk3k1*abb18(7)
      abb18(44)=abb18(42)*abb18(43)
      abb18(39)=abb18(39)-abb18(44)
      abb18(44)=abb18(39)*spbl6k2
      abb18(13)=abb18(13)*spbk3k1
      abb18(33)=abb18(33)*abb18(37)
      abb18(13)=abb18(13)-abb18(33)
      abb18(33)=-abb18(7)*abb18(13)
      abb18(45)=NC*spbl6k2
      abb18(46)=abb18(33)*abb18(45)
      abb18(44)=abb18(44)+abb18(46)
      abb18(47)=spak2l6*spbk7l6
      abb18(44)=abb18(44)*abb18(47)
      abb18(48)=abb18(36)*abb18(37)
      abb18(49)=abb18(42)*spbk3k1
      abb18(48)=abb18(48)-abb18(49)
      abb18(49)=abb18(48)*spbl5k2
      abb18(50)=NC*spbl5k2
      abb18(51)=abb18(13)*abb18(50)
      abb18(49)=abb18(49)-abb18(51)
      abb18(49)=abb18(49)*spbk7l6
      abb18(24)=abb18(49)+abb18(24)+abb18(44)
      abb18(44)=abb18(29)*abb18(9)
      abb18(49)=abb18(44)*abb18(20)
      abb18(52)=abb18(31)*abb18(9)
      abb18(49)=abb18(49)+abb18(52)
      abb18(49)=abb18(49)*spak2l5
      abb18(53)=abb18(20)*abb18(22)
      abb18(49)=abb18(49)+abb18(53)+abb18(27)
      abb18(49)=abb18(49)*spbl5k3
      abb18(53)=abb18(37)*abb18(9)
      abb18(36)=abb18(36)*abb18(53)
      abb18(54)=spbk3k1*abb18(9)
      abb18(42)=abb18(42)*abb18(54)
      abb18(36)=abb18(36)-abb18(42)
      abb18(42)=abb18(36)*spbl5k2
      abb18(55)=-abb18(9)*abb18(13)
      abb18(56)=abb18(55)*abb18(50)
      abb18(42)=abb18(42)+abb18(56)
      abb18(57)=spak2l5*spbk7l5
      abb18(42)=abb18(42)*abb18(57)
      abb18(58)=abb18(48)*spbl6k2
      abb18(59)=abb18(13)*abb18(45)
      abb18(58)=abb18(58)-abb18(59)
      abb18(58)=abb18(58)*spbk7l5
      abb18(42)=abb18(58)+abb18(49)+abb18(42)
      abb18(49)=abb18(24)+abb18(42)
      abb18(58)=4.0_ki*abb18(49)
      abb18(60)=abb18(43)*abb18(15)
      abb18(61)=abb18(37)*abb18(35)
      abb18(62)=abb18(61)*abb18(7)
      abb18(60)=abb18(60)-abb18(62)
      abb18(62)=abb18(33)*NC
      abb18(63)=-abb18(60)-abb18(62)
      abb18(63)=abb18(47)*abb18(63)
      abb18(64)=abb18(13)*NC
      abb18(65)=abb18(15)*spbk3k1
      abb18(65)=abb18(65)-abb18(61)
      abb18(66)=abb18(64)-abb18(65)
      abb18(67)=spbk7l5*abb18(66)
      abb18(63)=abb18(63)+abb18(67)
      abb18(67)=spbl6k2**2
      abb18(63)=abb18(67)*abb18(63)
      abb18(68)=abb18(65)*spbl5k2
      abb18(51)=abb18(68)-abb18(51)
      abb18(69)=abb18(51)*spbl6k2
      abb18(69)=2.0_ki*abb18(69)
      abb18(70)=-spbk7l6*abb18(69)
      abb18(63)=abb18(70)+abb18(63)
      abb18(63)=spak2l6*abb18(63)
      abb18(70)=abb18(54)*abb18(15)
      abb18(61)=abb18(61)*abb18(9)
      abb18(61)=abb18(70)-abb18(61)
      abb18(70)=abb18(55)*NC
      abb18(71)=-abb18(61)-abb18(70)
      abb18(71)=abb18(57)*abb18(71)
      abb18(66)=spbk7l6*abb18(66)
      abb18(66)=abb18(71)+abb18(66)
      abb18(71)=spbl5k2**2
      abb18(66)=abb18(71)*abb18(66)
      abb18(69)=-spbk7l5*abb18(69)
      abb18(66)=abb18(69)+abb18(66)
      abb18(66)=spak2l5*abb18(66)
      abb18(69)=abb18(29)*abb18(17)
      abb18(31)=abb18(69)-abb18(31)
      abb18(72)=abb18(31)*spbl6k2
      abb18(72)=2.0_ki*abb18(72)
      abb18(73)=abb18(26)*abb18(7)
      abb18(74)=abb18(21)*abb18(7)
      abb18(75)=abb18(17)*abb18(74)
      abb18(75)=abb18(75)-abb18(73)
      abb18(67)=abb18(67)*spak2l6
      abb18(75)=abb18(75)*abb18(67)
      abb18(75)=abb18(72)+abb18(75)
      abb18(75)=spak2l6*abb18(75)
      abb18(76)=abb18(17)*abb18(21)
      abb18(76)=abb18(76)-abb18(26)
      abb18(71)=abb18(71)*spak2l5
      abb18(77)=abb18(76)*abb18(71)
      abb18(75)=abb18(75)+abb18(77)
      abb18(75)=spbl6k3*abb18(75)
      abb18(77)=abb18(26)*abb18(9)
      abb18(78)=abb18(21)*abb18(9)
      abb18(79)=abb18(17)*abb18(78)
      abb18(79)=abb18(79)-abb18(77)
      abb18(71)=abb18(79)*abb18(71)
      abb18(71)=abb18(72)+abb18(71)
      abb18(71)=spak2l5*abb18(71)
      abb18(67)=abb18(76)*abb18(67)
      abb18(67)=abb18(67)+abb18(71)
      abb18(67)=spbl5k3*abb18(67)
      abb18(63)=abb18(67)+abb18(75)+abb18(63)+abb18(66)
      abb18(63)=8.0_ki*abb18(63)
      abb18(66)=abb18(61)*spbl5k2
      abb18(66)=abb18(66)+abb18(56)
      abb18(67)=abb18(66)*abb18(57)
      abb18(65)=abb18(65)*spbl6k2
      abb18(59)=abb18(65)-abb18(59)
      abb18(59)=spbk7l5*abb18(59)
      abb18(71)=abb18(44)*abb18(17)
      abb18(71)=abb18(71)-abb18(52)
      abb18(72)=abb18(71)*spak2l5
      abb18(75)=abb18(22)*abb18(17)
      abb18(72)=abb18(72)+abb18(75)
      abb18(76)=abb18(27)-abb18(72)
      abb18(76)=spbl5k3*abb18(76)
      abb18(24)=abb18(76)+abb18(67)+abb18(59)+abb18(24)
      abb18(24)=16.0_ki*abb18(24)
      abb18(59)=abb18(60)*spbl6k2
      abb18(59)=abb18(59)+abb18(46)
      abb18(76)=abb18(59)*abb18(47)
      abb18(79)=abb18(23)*abb18(17)
      abb18(79)=abb18(79)-abb18(28)
      abb18(80)=abb18(79)*spak2l6
      abb18(81)=-abb18(80)-abb18(31)
      abb18(81)=spbl6k3*abb18(81)
      abb18(51)=spbk7l6*abb18(51)
      abb18(42)=abb18(81)+abb18(76)+abb18(51)+abb18(42)
      abb18(42)=16.0_ki*abb18(42)
      abb18(51)=mB**3
      abb18(81)=abb18(51)*abb18(14)*spak1k2
      abb18(82)=abb18(81)*c3
      abb18(83)=abb18(82)*abb18(10)
      abb18(84)=abb18(83)*abb18(43)
      abb18(14)=abb18(51)*abb18(14)*abb18(10)
      abb18(51)=c3*abb18(14)
      abb18(85)=abb18(51)*abb18(38)
      abb18(84)=abb18(84)-abb18(85)
      abb18(85)=abb18(84)*abb18(45)
      abb18(86)=abb18(81)*c4
      abb18(87)=abb18(10)*abb18(86)
      abb18(88)=abb18(87)*abb18(43)
      abb18(89)=abb18(14)*c4
      abb18(90)=abb18(89)*abb18(38)
      abb18(88)=abb18(88)-abb18(90)
      abb18(90)=-spbl6k2*abb18(88)
      abb18(90)=abb18(90)+abb18(85)
      abb18(90)=spbk7l5*abb18(90)
      abb18(91)=abb18(7)**2
      abb18(92)=abb18(91)*abb18(37)
      abb18(93)=abb18(92)*abb18(51)
      abb18(94)=abb18(91)*spbk3k1
      abb18(95)=abb18(94)*abb18(83)
      abb18(93)=abb18(93)-abb18(95)
      abb18(95)=abb18(93)*abb18(45)
      abb18(96)=abb18(89)*abb18(92)
      abb18(97)=-abb18(87)*abb18(94)
      abb18(96)=abb18(96)+abb18(97)
      abb18(96)=spbl6k2*abb18(96)
      abb18(96)=abb18(96)-abb18(95)
      abb18(96)=abb18(96)*abb18(47)
      abb18(25)=abb18(82)*abb18(25)
      abb18(97)=abb18(25)*spbl6k2
      abb18(98)=abb18(22)*abb18(86)
      abb18(98)=abb18(98)-abb18(97)
      abb18(99)=spbl6k3*spak2l6
      abb18(98)=abb18(99)*abb18(91)*abb18(98)
      abb18(100)=abb18(97)*abb18(7)
      abb18(101)=abb18(86)*abb18(23)
      abb18(101)=abb18(101)-abb18(100)
      abb18(101)=spbl5k3*abb18(101)
      abb18(90)=abb18(101)+abb18(98)+abb18(90)+abb18(96)
      abb18(90)=abb18(11)*abb18(90)
      abb18(96)=abb18(83)*abb18(54)
      abb18(98)=abb18(51)*abb18(53)
      abb18(96)=abb18(96)-abb18(98)
      abb18(98)=abb18(96)*abb18(50)
      abb18(101)=abb18(87)*abb18(54)
      abb18(102)=abb18(89)*abb18(53)
      abb18(101)=abb18(101)-abb18(102)
      abb18(102)=-spbl5k2*abb18(101)
      abb18(102)=abb18(102)+abb18(98)
      abb18(102)=spbk7l6*abb18(102)
      abb18(103)=abb18(9)**2
      abb18(104)=abb18(103)*abb18(37)
      abb18(105)=abb18(104)*abb18(51)
      abb18(106)=abb18(103)*spbk3k1
      abb18(107)=abb18(106)*abb18(83)
      abb18(105)=abb18(105)-abb18(107)
      abb18(107)=abb18(105)*abb18(50)
      abb18(108)=abb18(89)*abb18(104)
      abb18(109)=-abb18(87)*abb18(106)
      abb18(108)=abb18(108)+abb18(109)
      abb18(108)=spbl5k2*abb18(108)
      abb18(108)=abb18(108)-abb18(107)
      abb18(108)=abb18(108)*abb18(57)
      abb18(109)=abb18(25)*spbl5k2
      abb18(110)=abb18(109)*abb18(9)
      abb18(111)=abb18(86)*abb18(44)
      abb18(111)=abb18(111)-abb18(110)
      abb18(111)=spbl6k3*abb18(111)
      abb18(112)=abb18(29)*abb18(86)
      abb18(112)=abb18(112)-abb18(109)
      abb18(113)=spbl5k3*spak2l5
      abb18(112)=abb18(113)*abb18(103)*abb18(112)
      abb18(102)=abb18(112)+abb18(111)+abb18(102)+abb18(108)
      abb18(102)=abb18(12)*abb18(102)
      abb18(108)=2.0_ki*abb18(3)
      abb18(32)=abb18(32)*abb18(108)
      abb18(111)=abb18(32)+abb18(35)
      abb18(112)=abb18(111)*abb18(38)
      abb18(40)=abb18(40)*abb18(108)
      abb18(114)=abb18(40)+abb18(15)
      abb18(115)=-abb18(114)*abb18(43)
      abb18(112)=-abb18(62)+abb18(112)+abb18(115)
      abb18(112)=spbk7l6*abb18(112)
      abb18(111)=abb18(111)*abb18(53)
      abb18(114)=-abb18(114)*abb18(54)
      abb18(111)=-abb18(70)+abb18(111)+abb18(114)
      abb18(111)=spbk7l5*abb18(111)
      abb18(18)=abb18(18)*abb18(108)
      abb18(114)=abb18(18)+abb18(17)
      abb18(115)=abb18(114)*abb18(74)
      abb18(115)=abb18(115)-abb18(73)
      abb18(115)=spbl6k3*abb18(115)
      abb18(114)=abb18(114)*abb18(78)
      abb18(114)=abb18(114)-abb18(77)
      abb18(114)=spbl5k3*abb18(114)
      abb18(111)=abb18(114)+abb18(115)+abb18(112)+abb18(111)
      abb18(111)=spal5l6*spbl6l5*abb18(111)
      abb18(112)=abb18(29)*abb18(16)
      abb18(114)=2.0_ki*abb18(74)
      abb18(115)=abb18(114)*abb18(82)
      abb18(112)=abb18(112)-abb18(115)
      abb18(112)=abb18(112)*NC
      abb18(115)=abb18(86)*abb18(114)
      abb18(69)=-abb18(80)+abb18(112)+abb18(115)-abb18(69)
      abb18(69)=spbl6k3*abb18(69)
      abb18(80)=abb18(13)*spbl5k2
      abb18(80)=-abb18(80)+2.0_ki*abb18(84)
      abb18(80)=abb18(80)*NC
      abb18(68)=abb18(80)-2.0_ki*abb18(88)+abb18(68)
      abb18(68)=spbk7l6*abb18(68)
      abb18(13)=abb18(13)*spbl6k2
      abb18(13)=-abb18(13)+2.0_ki*abb18(96)
      abb18(13)=abb18(13)*NC
      abb18(65)=abb18(13)-2.0_ki*abb18(101)+abb18(65)
      abb18(65)=spbk7l5*abb18(65)
      abb18(16)=abb18(22)*abb18(16)
      abb18(84)=2.0_ki*abb18(78)
      abb18(88)=abb18(84)*abb18(82)
      abb18(16)=abb18(16)-abb18(88)
      abb18(16)=abb18(16)*NC
      abb18(88)=abb18(86)*abb18(84)
      abb18(72)=abb18(16)+abb18(88)-abb18(72)
      abb18(72)=spbl5k3*abb18(72)
      abb18(65)=abb18(111)+abb18(102)+abb18(90)+abb18(72)+abb18(69)+abb18(67)+a&
      &bb18(76)+abb18(68)+abb18(65)
      abb18(65)=8.0_ki*abb18(65)
      abb18(49)=-8.0_ki*abb18(49)
      abb18(67)=abb18(41)*spbk3k1
      abb18(68)=abb18(34)*abb18(37)
      abb18(67)=abb18(67)-abb18(68)
      abb18(68)=-spbl6k2*abb18(67)
      abb18(69)=abb18(53)*abb18(34)
      abb18(72)=-abb18(54)*abb18(41)
      abb18(69)=abb18(69)+abb18(72)
      abb18(69)=spak2l5*spbl5k2*abb18(69)
      abb18(68)=abb18(68)+abb18(69)
      abb18(68)=spbk7l6*abb18(68)
      abb18(69)=spak2l5*abb18(44)
      abb18(69)=abb18(22)+abb18(69)
      abb18(69)=spbl6k3*abb18(19)*abb18(69)
      abb18(68)=abb18(69)+abb18(68)
      abb18(68)=8.0_ki*abb18(68)
      abb18(48)=abb18(64)-abb18(48)
      abb18(64)=-spbk7l6*abb18(48)
      abb18(36)=abb18(70)+abb18(36)
      abb18(36)=abb18(36)*abb18(57)
      abb18(57)=abb18(20)*abb18(21)
      abb18(26)=abb18(57)+abb18(26)
      abb18(57)=spbl6k3*abb18(26)
      abb18(69)=abb18(20)*abb18(78)
      abb18(69)=abb18(69)+abb18(77)
      abb18(69)=abb18(69)*abb18(113)
      abb18(36)=abb18(69)+abb18(57)+abb18(64)+abb18(36)
      abb18(57)=8.0_ki*spbl6l5
      abb18(36)=abb18(36)*abb18(57)
      abb18(64)=-spbl5k2*abb18(67)
      abb18(67)=abb18(38)*abb18(34)
      abb18(69)=-abb18(43)*abb18(41)
      abb18(67)=abb18(67)+abb18(69)
      abb18(67)=spak2l6*spbl6k2*abb18(67)
      abb18(64)=abb18(64)+abb18(67)
      abb18(64)=spbk7l5*abb18(64)
      abb18(67)=spak2l6*abb18(23)
      abb18(67)=abb18(29)+abb18(67)
      abb18(67)=spbl5k3*abb18(19)*abb18(67)
      abb18(64)=abb18(67)+abb18(64)
      abb18(64)=8.0_ki*abb18(64)
      abb18(48)=spbk7l5*abb18(48)
      abb18(39)=-abb18(62)-abb18(39)
      abb18(39)=abb18(39)*abb18(47)
      abb18(20)=-abb18(20)*abb18(74)
      abb18(20)=abb18(20)-abb18(73)
      abb18(20)=abb18(20)*abb18(99)
      abb18(26)=-spbl5k3*abb18(26)
      abb18(20)=abb18(26)+abb18(20)+abb18(48)+abb18(39)
      abb18(20)=abb18(20)*abb18(57)
      abb18(14)=abb18(14)*abb18(30)
      abb18(14)=abb18(14)-abb18(51)
      abb18(26)=abb18(14)*abb18(108)
      abb18(26)=abb18(26)-abb18(89)
      abb18(39)=abb18(26)*abb18(38)
      abb18(47)=abb18(87)*abb18(3)
      abb18(47)=abb18(47)-abb18(83)
      abb18(48)=abb18(47)*abb18(108)
      abb18(48)=abb18(48)-abb18(87)
      abb18(51)=abb18(48)*abb18(43)
      abb18(39)=abb18(39)-abb18(51)
      abb18(32)=abb18(32)-abb18(35)
      abb18(51)=-abb18(32)*abb18(38)
      abb18(40)=abb18(40)-abb18(15)
      abb18(57)=abb18(40)*abb18(43)
      abb18(51)=abb18(51)+abb18(57)
      abb18(51)=spbl6k2*abb18(51)
      abb18(46)=abb18(51)-abb18(46)
      abb18(46)=spak2l6*abb18(46)
      abb18(37)=abb18(32)*abb18(37)
      abb18(51)=abb18(40)*spbk3k1
      abb18(37)=abb18(37)-abb18(51)
      abb18(51)=-spbl5k2*abb18(37)
      abb18(46)=abb18(46)-abb18(80)+2.0_ki*abb18(39)+abb18(51)
      abb18(46)=spbk7k2*abb18(46)
      abb18(51)=-spbl5k2*abb18(60)
      abb18(33)=-abb18(33)*abb18(50)
      abb18(33)=abb18(51)+abb18(33)
      abb18(33)=spbk7l6*abb18(33)
      abb18(50)=spbk7l5*abb18(59)
      abb18(31)=spbl6k3*abb18(7)*abb18(31)
      abb18(51)=-spbl5k3*abb18(79)
      abb18(31)=abb18(51)+abb18(31)+abb18(33)+abb18(50)
      abb18(31)=spal5l6*abb18(31)
      abb18(30)=abb18(81)*abb18(30)
      abb18(30)=abb18(30)-abb18(82)
      abb18(33)=abb18(30)*abb18(108)
      abb18(33)=abb18(33)-abb18(86)
      abb18(50)=-abb18(33)*abb18(114)
      abb18(18)=abb18(18)-abb18(17)
      abb18(51)=abb18(18)*abb18(23)
      abb18(28)=abb18(51)+abb18(28)
      abb18(28)=spak2l6*abb18(28)
      abb18(51)=abb18(18)*abb18(29)
      abb18(28)=abb18(28)+abb18(112)+abb18(50)+abb18(51)
      abb18(28)=spbk3k2*abb18(28)
      abb18(50)=abb18(26)*abb18(92)
      abb18(51)=-abb18(48)*abb18(94)
      abb18(50)=abb18(50)+abb18(51)
      abb18(50)=spbl6k2*abb18(50)
      abb18(50)=abb18(50)+abb18(95)
      abb18(50)=spbk7k2*abb18(50)
      abb18(51)=-abb18(33)*abb18(22)
      abb18(51)=abb18(51)-abb18(97)
      abb18(51)=abb18(51)*abb18(91)*spbk3k2
      abb18(50)=abb18(50)+abb18(51)
      abb18(50)=abb18(11)*spak2l6*abb18(50)
      abb18(51)=abb18(26)*abb18(53)
      abb18(57)=abb18(48)*abb18(54)
      abb18(51)=abb18(51)-abb18(57)
      abb18(57)=spbl5k2*abb18(51)
      abb18(57)=abb18(57)-abb18(98)
      abb18(57)=spbk7k2*abb18(57)
      abb18(59)=-abb18(33)*abb18(44)
      abb18(59)=abb18(59)-abb18(110)
      abb18(59)=spbk3k2*abb18(59)
      abb18(57)=abb18(57)+abb18(59)
      abb18(57)=abb18(12)*abb18(57)
      abb18(28)=abb18(31)+abb18(57)+abb18(50)+abb18(28)+abb18(46)
      abb18(28)=4.0_ki*abb18(28)
      abb18(14)=abb18(14)*abb18(3)
      abb18(14)=abb18(14)+abb18(89)
      abb18(31)=-abb18(14)*abb18(92)
      abb18(46)=abb18(47)*abb18(3)
      abb18(46)=abb18(46)+abb18(87)
      abb18(47)=abb18(46)*abb18(94)
      abb18(50)=NC*abb18(93)
      abb18(31)=abb18(50)+abb18(31)+abb18(47)
      abb18(31)=spbk7k2*abb18(31)
      abb18(30)=abb18(30)*abb18(3)
      abb18(30)=abb18(30)+abb18(86)
      abb18(21)=abb18(30)*abb18(21)
      abb18(21)=abb18(21)-abb18(25)
      abb18(21)=abb18(21)*spbk3k2
      abb18(47)=abb18(91)*abb18(21)
      abb18(31)=abb18(31)+abb18(47)
      abb18(31)=abb18(11)*abb18(31)
      abb18(47)=abb18(14)*abb18(53)
      abb18(50)=abb18(46)*abb18(54)
      abb18(57)=NC*abb18(96)
      abb18(47)=abb18(57)+abb18(47)-abb18(50)
      abb18(47)=spbk7k2*abb18(7)*abb18(47)
      abb18(30)=abb18(30)*abb18(78)
      abb18(25)=abb18(25)*abb18(9)
      abb18(25)=abb18(30)-abb18(25)
      abb18(25)=spbk3k2*abb18(25)*abb18(7)
      abb18(25)=abb18(47)-abb18(25)
      abb18(30)=-abb18(12)*abb18(25)
      abb18(34)=abb18(34)+abb18(35)
      abb18(35)=abb18(34)*abb18(38)
      abb18(15)=abb18(41)+abb18(15)
      abb18(38)=abb18(15)*abb18(43)
      abb18(35)=-abb18(62)+abb18(35)-abb18(38)
      abb18(38)=spbk7k2*abb18(35)
      abb18(17)=abb18(19)+abb18(17)
      abb18(19)=abb18(17)*abb18(74)
      abb18(19)=abb18(19)-abb18(73)
      abb18(41)=-spbk3k2*abb18(19)
      abb18(30)=abb18(30)+abb18(31)+abb18(38)+abb18(41)
      abb18(30)=16.0_ki*abb18(30)
      abb18(31)=-spbk7l6*abb18(35)
      abb18(38)=-spbl6k3*abb18(19)
      abb18(31)=abb18(31)+abb18(38)
      abb18(31)=8.0_ki*abb18(31)
      abb18(35)=-spbk7l5*abb18(35)
      abb18(19)=-spbl5k3*abb18(19)
      abb18(19)=abb18(35)+abb18(19)
      abb18(19)=8.0_ki*abb18(19)
      abb18(32)=-abb18(32)*abb18(53)
      abb18(35)=abb18(40)*abb18(54)
      abb18(32)=abb18(32)+abb18(35)
      abb18(32)=spbl5k2*abb18(32)
      abb18(32)=abb18(32)-abb18(56)
      abb18(32)=spak2l5*abb18(32)
      abb18(35)=-spbl6k2*abb18(37)
      abb18(13)=abb18(32)-abb18(13)+2.0_ki*abb18(51)+abb18(35)
      abb18(13)=spbk7k2*abb18(13)
      abb18(32)=-spbk7l6*abb18(66)
      abb18(35)=spbl6k2*abb18(61)
      abb18(37)=abb18(55)*abb18(45)
      abb18(35)=abb18(35)+abb18(37)
      abb18(35)=spbk7l5*abb18(35)
      abb18(37)=spbl6k3*abb18(71)
      abb18(27)=abb18(75)-abb18(27)
      abb18(27)=-spbl5k3*abb18(9)*abb18(27)
      abb18(27)=abb18(27)+abb18(37)+abb18(32)+abb18(35)
      abb18(27)=spal5l6*abb18(27)
      abb18(32)=-abb18(33)*abb18(84)
      abb18(35)=abb18(18)*abb18(44)
      abb18(35)=abb18(35)+abb18(52)
      abb18(35)=spak2l5*abb18(35)
      abb18(18)=abb18(18)*abb18(22)
      abb18(16)=abb18(35)+abb18(16)+abb18(32)+abb18(18)
      abb18(16)=spbk3k2*abb18(16)
      abb18(18)=spbl6k2*abb18(39)
      abb18(18)=abb18(18)-abb18(85)
      abb18(18)=spbk7k2*abb18(18)
      abb18(22)=-abb18(33)*abb18(23)
      abb18(22)=abb18(22)-abb18(100)
      abb18(22)=spbk3k2*abb18(22)
      abb18(18)=abb18(18)+abb18(22)
      abb18(18)=abb18(11)*abb18(18)
      abb18(22)=abb18(26)*abb18(104)
      abb18(23)=-abb18(48)*abb18(106)
      abb18(22)=abb18(22)+abb18(23)
      abb18(22)=spbl5k2*abb18(22)
      abb18(22)=abb18(22)+abb18(107)
      abb18(22)=spbk7k2*abb18(22)
      abb18(23)=-abb18(33)*abb18(29)
      abb18(23)=abb18(23)-abb18(109)
      abb18(23)=abb18(23)*abb18(103)*spbk3k2
      abb18(22)=abb18(22)+abb18(23)
      abb18(22)=abb18(12)*spak2l5*abb18(22)
      abb18(13)=abb18(27)+abb18(22)+abb18(18)+abb18(16)+abb18(13)
      abb18(13)=4.0_ki*abb18(13)
      abb18(16)=-abb18(11)*abb18(25)
      abb18(14)=-abb18(14)*abb18(104)
      abb18(18)=abb18(46)*abb18(106)
      abb18(22)=NC*abb18(105)
      abb18(14)=abb18(22)+abb18(14)+abb18(18)
      abb18(14)=spbk7k2*abb18(14)
      abb18(18)=abb18(103)*abb18(21)
      abb18(14)=abb18(14)+abb18(18)
      abb18(14)=abb18(12)*abb18(14)
      abb18(18)=abb18(34)*abb18(53)
      abb18(15)=abb18(15)*abb18(54)
      abb18(15)=-abb18(70)+abb18(18)-abb18(15)
      abb18(18)=spbk7k2*abb18(15)
      abb18(17)=abb18(17)*abb18(78)
      abb18(17)=abb18(17)-abb18(77)
      abb18(21)=-spbk3k2*abb18(17)
      abb18(14)=abb18(14)+abb18(16)+abb18(18)+abb18(21)
      abb18(14)=16.0_ki*abb18(14)
      abb18(16)=-spbk7l6*abb18(15)
      abb18(18)=-spbl6k3*abb18(17)
      abb18(16)=abb18(16)+abb18(18)
      abb18(16)=8.0_ki*abb18(16)
      abb18(15)=-spbk7l5*abb18(15)
      abb18(17)=-spbl5k3*abb18(17)
      abb18(15)=abb18(15)+abb18(17)
      abb18(15)=8.0_ki*abb18(15)
      R2d18=abb18(58)
      rat2 = rat2 + R2d18
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='18' value='", &
          & R2d18, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd18h3
