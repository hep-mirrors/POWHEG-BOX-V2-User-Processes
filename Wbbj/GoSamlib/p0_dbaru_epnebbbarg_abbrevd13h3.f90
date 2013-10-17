module     p0_dbaru_epnebbbarg_abbrevd13h3
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(92), public :: abb13
   complex(ki), public :: R2d13
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
      abb13(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb13(2)=NC**(-1)
      abb13(3)=es56**(-1)
      abb13(4)=es71**(-1)
      abb13(5)=spak2l5**(-1)
      abb13(6)=spak2l6**(-1)
      abb13(7)=spbl5k2**(-1)
      abb13(8)=spbl6k2**(-1)
      abb13(9)=c4*abb13(2)**2
      abb13(10)=c3*abb13(2)
      abb13(9)=abb13(9)-abb13(10)
      abb13(10)=abb13(9)*spbk7e7
      abb13(11)=TR*gW
      abb13(11)=abb13(11)**2*CVDU*i_*spak1e7*abb13(3)*abb13(1)
      abb13(12)=abb13(4)*abb13(11)
      abb13(13)=abb13(12)*mB
      abb13(14)=-abb13(13)*abb13(10)
      abb13(15)=abb13(14)*spak4k7
      abb13(16)=abb13(15)*spbl5k3
      abb13(13)=abb13(9)*abb13(13)
      abb13(17)=-abb13(13)*spak1k4
      abb13(18)=abb13(17)*spbe7k1
      abb13(19)=-spbl5k3*abb13(18)
      abb13(19)=-abb13(16)+abb13(19)
      abb13(19)=spbl6k2*abb13(19)
      abb13(20)=-abb13(15)-abb13(18)
      abb13(21)=spbl5k2*spbl6k3
      abb13(20)=abb13(20)*abb13(21)
      abb13(19)=abb13(19)+abb13(20)
      abb13(19)=es12*abb13(19)
      abb13(20)=spbl6k2*spbl5k3
      abb13(20)=abb13(20)+abb13(21)
      abb13(21)=-abb13(13)*spak4k7
      abb13(22)=abb13(21)*abb13(20)*spbe7k1
      abb13(23)=spbe7k1*abb13(5)
      abb13(24)=abb13(23)*spbl6k3
      abb13(25)=abb13(21)*abb13(24)
      abb13(26)=spak2l6*spbl6k2
      abb13(27)=abb13(25)*abb13(26)
      abb13(28)=spbe7k1*abb13(6)
      abb13(29)=abb13(28)*spbl5k3
      abb13(21)=abb13(21)*abb13(29)
      abb13(30)=spak2l5*spbl5k2
      abb13(31)=abb13(21)*abb13(30)
      abb13(22)=abb13(22)+abb13(27)+abb13(31)
      abb13(27)=spbk7k2*spak1k2*abb13(22)
      abb13(31)=spbl6k3*abb13(5)
      abb13(32)=abb13(31)*abb13(26)
      abb13(33)=spbl5k3*abb13(6)
      abb13(34)=abb13(33)*abb13(30)
      abb13(32)=abb13(34)+abb13(32)+abb13(20)
      abb13(34)=abb13(14)*spak2k7
      abb13(35)=abb13(34)*spak1k4
      abb13(32)=spbk2k1*abb13(35)*abb13(32)
      abb13(36)=abb13(20)*abb13(15)
      abb13(37)=abb13(15)*abb13(33)
      abb13(38)=abb13(30)*abb13(37)
      abb13(39)=abb13(15)*abb13(31)
      abb13(40)=abb13(26)*abb13(39)
      abb13(36)=abb13(36)+abb13(38)+abb13(40)
      abb13(38)=es712*abb13(36)
      abb13(11)=-spak4k7*mB*abb13(10)*abb13(11)
      abb13(40)=-abb13(11)*abb13(20)
      abb13(41)=abb13(17)*abb13(24)
      abb13(42)=-abb13(39)-abb13(41)
      abb13(42)=es12*abb13(42)
      abb13(43)=abb13(11)*abb13(31)
      abb13(42)=-abb13(43)+abb13(42)
      abb13(42)=abb13(42)*abb13(26)
      abb13(17)=abb13(17)*abb13(29)
      abb13(44)=-abb13(37)-abb13(17)
      abb13(44)=es12*abb13(44)
      abb13(45)=abb13(11)*abb13(33)
      abb13(44)=-abb13(45)+abb13(44)
      abb13(44)=abb13(44)*abb13(30)
      abb13(19)=abb13(38)+abb13(32)+abb13(27)+abb13(44)+abb13(42)+abb13(19)+abb&
      &13(40)
      abb13(19)=4.0_ki*abb13(19)
      abb13(27)=8.0_ki*abb13(36)
      abb13(23)=-abb13(13)*abb13(23)
      abb13(32)=spak1k2*spbk3k2
      abb13(36)=abb13(23)*abb13(32)
      abb13(38)=spbk3k2*abb13(5)
      abb13(40)=abb13(34)*abb13(38)
      abb13(42)=abb13(36)-abb13(40)
      abb13(44)=abb13(42)*spbl6k2
      abb13(46)=-abb13(13)*abb13(28)
      abb13(47)=abb13(46)*abb13(32)
      abb13(48)=abb13(14)*abb13(6)
      abb13(49)=spak2k7*spbk3k2
      abb13(50)=abb13(48)*abb13(49)
      abb13(51)=abb13(47)-abb13(50)
      abb13(52)=abb13(51)*spbl5k2
      abb13(44)=abb13(44)+abb13(52)
      abb13(52)=8.0_ki*spak2k4
      abb13(44)=abb13(44)*abb13(52)
      abb13(53)=abb13(42)*spak4l5
      abb13(54)=abb13(51)*spak4l6
      abb13(53)=abb13(53)-abb13(54)
      abb13(53)=abb13(53)*spbl6l5
      abb13(54)=-abb13(29)*abb13(13)
      abb13(24)=-abb13(24)*abb13(13)
      abb13(55)=abb13(54)+abb13(24)
      abb13(56)=abb13(55)*spak1k4
      abb13(57)=abb13(37)+abb13(39)
      abb13(58)=abb13(56)+abb13(57)
      abb13(58)=abb13(58)*es12
      abb13(59)=abb13(21)+abb13(25)
      abb13(59)=abb13(59)*spbk7k2*spak1k2
      abb13(60)=abb13(57)*es712
      abb13(61)=abb13(14)*abb13(33)
      abb13(62)=abb13(14)*abb13(31)
      abb13(63)=abb13(61)+abb13(62)
      abb13(63)=abb13(63)*spak2k7
      abb13(64)=spbk2k1*spak1k4
      abb13(65)=abb13(64)*abb13(63)
      abb13(43)=-abb13(53)-abb13(59)-abb13(60)-abb13(65)+abb13(45)+abb13(58)+ab&
      &b13(43)
      abb13(45)=-spbk7l6*abb13(39)
      abb13(53)=abb13(15)*abb13(6)
      abb13(58)=abb13(53)*spbl6k3
      abb13(59)=-spbk7l5*abb13(58)
      abb13(60)=spbl6k1*spak1k4
      abb13(65)=abb13(62)*abb13(60)
      abb13(66)=spbl5k1*spak1k4
      abb13(67)=abb13(66)*spbl6k3
      abb13(68)=abb13(48)*abb13(67)
      abb13(45)=abb13(68)+abb13(65)+abb13(45)+abb13(59)
      abb13(45)=spal6k7*abb13(45)
      abb13(16)=abb13(16)*abb13(5)
      abb13(59)=-spbk7l6*abb13(16)
      abb13(65)=-spbk7l5*abb13(37)
      abb13(68)=abb13(14)*abb13(5)
      abb13(69)=abb13(60)*abb13(68)*spbl5k3
      abb13(70)=abb13(61)*abb13(66)
      abb13(59)=abb13(70)+abb13(69)+abb13(59)+abb13(65)
      abb13(59)=spal5k7*abb13(59)
      abb13(65)=spbk7l5*spak4k7
      abb13(65)=-abb13(66)+abb13(65)
      abb13(66)=abb13(46)*spbl6k3
      abb13(65)=abb13(66)*abb13(65)
      abb13(69)=spbk7l6*abb13(25)
      abb13(70)=-spbl6k1*abb13(41)
      abb13(65)=abb13(70)+abb13(69)+abb13(65)
      abb13(65)=spak1l6*abb13(65)
      abb13(69)=spbk7l6*spak4k7
      abb13(60)=-abb13(60)+abb13(69)
      abb13(69)=abb13(23)*spbl5k3
      abb13(60)=abb13(69)*abb13(60)
      abb13(70)=spbk7l5*abb13(21)
      abb13(71)=-spbl5k1*abb13(17)
      abb13(60)=abb13(71)+abb13(70)+abb13(60)
      abb13(60)=spak1l5*abb13(60)
      abb13(45)=abb13(60)+abb13(65)+abb13(59)+abb13(45)-abb13(43)
      abb13(45)=8.0_ki*abb13(45)
      abb13(56)=abb13(56)-abb13(57)
      abb13(57)=16.0_ki*abb13(56)
      abb13(59)=abb13(33)*abb13(5)
      abb13(60)=abb13(5)**2
      abb13(65)=spbl6k3*abb13(60)
      abb13(65)=abb13(65)+abb13(59)
      abb13(12)=abb13(12)*mB**3
      abb13(10)=-abb13(10)*abb13(12)
      abb13(70)=abb13(10)*spak4k7
      abb13(65)=abb13(70)*abb13(65)
      abb13(9)=-abb13(12)*abb13(9)
      abb13(12)=abb13(5)*abb13(9)*abb13(29)
      abb13(29)=abb13(9)*spbe7k1
      abb13(71)=abb13(29)*abb13(60)
      abb13(72)=abb13(71)*spbl6k3
      abb13(12)=abb13(12)+abb13(72)
      abb13(72)=-spak1k4*abb13(12)
      abb13(65)=abb13(72)+abb13(65)
      abb13(65)=abb13(7)*abb13(65)
      abb13(9)=abb13(9)*abb13(28)
      abb13(28)=abb13(9)*abb13(31)
      abb13(72)=abb13(6)**2
      abb13(29)=abb13(29)*abb13(72)
      abb13(73)=abb13(29)*spbl5k3
      abb13(28)=abb13(28)+abb13(73)
      abb13(73)=-spak1k4*abb13(28)
      abb13(74)=abb13(70)*abb13(6)
      abb13(75)=abb13(31)*abb13(74)
      abb13(76)=abb13(70)*abb13(72)
      abb13(77)=spbl5k3*abb13(76)
      abb13(73)=abb13(73)+abb13(75)+abb13(77)
      abb13(73)=abb13(8)*abb13(73)
      abb13(65)=abb13(73)+abb13(65)+abb13(56)
      abb13(65)=16.0_ki*abb13(65)
      abb13(18)=abb13(18)*abb13(20)
      abb13(73)=abb13(26)*abb13(41)
      abb13(75)=abb13(30)*abb13(17)
      abb13(18)=abb13(75)+abb13(73)+abb13(18)
      abb13(18)=8.0_ki*abb13(18)
      abb13(73)=abb13(10)*abb13(6)
      abb13(75)=spak2k7*abb13(73)*abb13(38)
      abb13(77)=abb13(9)*abb13(38)
      abb13(78)=abb13(77)*spak1k2
      abb13(75)=abb13(75)-abb13(78)
      abb13(78)=abb13(71)*abb13(32)
      abb13(79)=abb13(60)*abb13(10)
      abb13(80)=abb13(79)*abb13(49)
      abb13(78)=abb13(78)-abb13(80)
      abb13(80)=abb13(7)*spbl6k2
      abb13(81)=abb13(78)*abb13(80)
      abb13(32)=abb13(29)*abb13(32)
      abb13(72)=abb13(72)*abb13(10)
      abb13(49)=abb13(72)*abb13(49)
      abb13(32)=abb13(32)-abb13(49)
      abb13(49)=abb13(8)*spbl5k2
      abb13(82)=abb13(32)*abb13(49)
      abb13(81)=abb13(82)+abb13(81)-2.0_ki*abb13(75)
      abb13(81)=spak2k4*abb13(81)
      abb13(43)=abb13(81)+abb13(43)
      abb13(43)=4.0_ki*abb13(43)
      abb13(56)=-8.0_ki*abb13(56)
      abb13(81)=abb13(48)*spbl5k2
      abb13(82)=abb13(68)*spbl6k2
      abb13(81)=abb13(81)+abb13(82)
      abb13(82)=abb13(81)*abb13(52)
      abb13(83)=2.0_ki*abb13(5)
      abb13(84)=abb13(73)*abb13(83)
      abb13(85)=abb13(79)*abb13(80)
      abb13(86)=abb13(72)*abb13(49)
      abb13(84)=abb13(86)+abb13(85)+abb13(84)-abb13(81)
      abb13(84)=abb13(84)*abb13(52)
      abb13(85)=4.0_ki*spak2k4
      abb13(81)=abb13(81)*abb13(85)
      abb13(86)=abb13(62)*abb13(26)
      abb13(87)=abb13(61)*abb13(30)
      abb13(86)=abb13(87)+abb13(86)
      abb13(86)=spak1k4*abb13(86)
      abb13(87)=abb13(14)*spak1k4
      abb13(20)=abb13(87)*abb13(20)
      abb13(20)=abb13(20)+abb13(86)
      abb13(20)=4.0_ki*abb13(20)
      abb13(86)=spak2k7*abb13(39)
      abb13(25)=-spak1k2*abb13(25)
      abb13(25)=abb13(86)+abb13(25)
      abb13(25)=spbk7l6*abb13(25)
      abb13(86)=spak2k7*abb13(58)
      abb13(88)=abb13(46)*spak1k2
      abb13(89)=-spbl6k3*spak4k7*abb13(88)
      abb13(86)=abb13(86)+abb13(89)
      abb13(86)=spbk7l5*abb13(86)
      abb13(89)=-abb13(31)*abb13(35)
      abb13(90)=spak1k2*abb13(41)
      abb13(89)=abb13(89)+abb13(90)
      abb13(89)=spbl6k1*abb13(89)
      abb13(90)=abb13(48)*spak2k7
      abb13(88)=abb13(90)-abb13(88)
      abb13(67)=-abb13(88)*abb13(67)
      abb13(25)=abb13(67)+abb13(89)+abb13(25)+abb13(86)
      abb13(25)=4.0_ki*abb13(25)
      abb13(67)=spak2k7*abb13(16)
      abb13(86)=abb13(23)*spak1k2
      abb13(89)=-spbl5k3*spak4k7*abb13(86)
      abb13(67)=abb13(67)+abb13(89)
      abb13(67)=spbk7l6*abb13(67)
      abb13(89)=spak2k7*abb13(37)
      abb13(21)=-spak1k2*abb13(21)
      abb13(21)=abb13(89)+abb13(21)
      abb13(21)=spbk7l5*abb13(21)
      abb13(89)=-abb13(5)*abb13(35)
      abb13(90)=spak1k4*abb13(86)
      abb13(89)=abb13(89)+abb13(90)
      abb13(89)=spbl6k1*spbl5k3*abb13(89)
      abb13(33)=-abb13(33)*abb13(35)
      abb13(35)=spak1k2*abb13(17)
      abb13(33)=abb13(33)+abb13(35)
      abb13(33)=spbl5k1*abb13(33)
      abb13(21)=abb13(33)+abb13(89)+abb13(67)+abb13(21)
      abb13(21)=4.0_ki*abb13(21)
      abb13(13)=-abb13(13)*spbe7k1
      abb13(33)=-spak1k2*abb13(13)
      abb13(33)=abb13(34)+abb13(33)
      abb13(33)=spbl5k2*spbl6k2*abb13(33)
      abb13(34)=abb13(34)*abb13(5)
      abb13(34)=abb13(34)-abb13(86)
      abb13(35)=spak2l6*abb13(34)*spbl6k2**2
      abb13(67)=spak2l5*abb13(88)*spbl5k2**2
      abb13(33)=abb13(67)+2.0_ki*abb13(33)+abb13(35)
      abb13(33)=4.0_ki*abb13(33)
      abb13(35)=abb13(48)*spal6k7
      abb13(67)=abb13(68)*spal5k7
      abb13(86)=-spak1l6*abb13(46)
      abb13(89)=spak1l5*abb13(23)
      abb13(86)=abb13(89)+abb13(86)-abb13(67)+abb13(35)
      abb13(86)=spbl6l5*abb13(86)
      abb13(89)=abb13(34)*spbl6k2
      abb13(90)=abb13(88)*spbl5k2
      abb13(89)=abb13(89)+abb13(90)
      abb13(86)=abb13(86)+abb13(89)
      abb13(86)=8.0_ki*abb13(86)
      abb13(89)=-4.0_ki*abb13(89)
      abb13(90)=-spbl5k2*abb13(14)
      abb13(91)=-abb13(68)*abb13(26)
      abb13(90)=abb13(90)+abb13(91)
      abb13(90)=4.0_ki*abb13(90)
      abb13(14)=-spbl6k2*abb13(14)
      abb13(91)=-abb13(48)*abb13(30)
      abb13(14)=abb13(14)+abb13(91)
      abb13(14)=4.0_ki*abb13(14)
      abb13(91)=4.0_ki*spbl6l5
      abb13(88)=-abb13(88)*abb13(91)
      abb13(34)=abb13(34)*abb13(91)
      abb13(55)=abb13(55)*spak1k2
      abb13(55)=abb13(55)-abb13(63)
      abb13(63)=8.0_ki*abb13(55)
      abb13(79)=-spbl6k3*abb13(79)
      abb13(10)=-abb13(10)*abb13(59)
      abb13(10)=abb13(79)+abb13(10)
      abb13(10)=spak2k7*abb13(10)
      abb13(12)=spak1k2*abb13(12)
      abb13(10)=abb13(10)+abb13(12)
      abb13(10)=abb13(7)*abb13(10)
      abb13(12)=-abb13(31)*abb13(73)
      abb13(31)=-spbl5k3*abb13(72)
      abb13(12)=abb13(12)+abb13(31)
      abb13(12)=spak2k7*abb13(12)
      abb13(28)=spak1k2*abb13(28)
      abb13(12)=abb13(12)+abb13(28)
      abb13(12)=abb13(8)*abb13(12)
      abb13(10)=abb13(12)+abb13(10)-abb13(55)
      abb13(10)=8.0_ki*abb13(10)
      abb13(12)=4.0_ki*abb13(55)
      abb13(28)=spak4l6*spbl6k2
      abb13(31)=spak4l5*spbl5k2
      abb13(28)=abb13(28)+abb13(31)
      abb13(31)=abb13(42)*abb13(28)
      abb13(55)=spak1k4*spbk3k2
      abb13(59)=abb13(55)*abb13(23)
      abb13(72)=abb13(15)*abb13(38)
      abb13(73)=-abb13(72)-abb13(59)
      abb13(73)=es12*abb13(73)
      abb13(79)=-abb13(38)*abb13(11)
      abb13(91)=spbk7k2*spak4k7
      abb13(36)=abb13(36)*abb13(91)
      abb13(40)=abb13(40)*abb13(64)
      abb13(92)=es712*abb13(72)
      abb13(31)=abb13(92)+abb13(40)+abb13(36)+abb13(79)+abb13(73)+abb13(31)
      abb13(31)=4.0_ki*abb13(31)
      abb13(36)=8.0_ki*abb13(72)
      abb13(40)=abb13(60)*abb13(70)*spbk3k2
      abb13(60)=-abb13(55)*abb13(71)
      abb13(40)=abb13(40)+abb13(60)
      abb13(40)=abb13(7)*abb13(40)
      abb13(60)=abb13(77)*spak1k4
      abb13(70)=abb13(74)*abb13(38)
      abb13(60)=abb13(60)-abb13(70)
      abb13(70)=-abb13(8)*abb13(60)
      abb13(40)=abb13(70)+abb13(40)-abb13(72)+abb13(59)
      abb13(40)=8.0_ki*abb13(40)
      abb13(59)=8.0_ki*abb13(59)
      abb13(70)=4.0_ki*abb13(28)
      abb13(72)=abb13(68)*abb13(70)
      abb13(73)=abb13(23)*spak1k4
      abb13(15)=abb13(15)*abb13(5)
      abb13(15)=abb13(73)-abb13(15)
      abb13(73)=4.0_ki*spbk7k3
      abb13(74)=-abb13(15)*abb13(73)
      abb13(38)=4.0_ki*abb13(38)*abb13(87)
      abb13(39)=-abb13(39)+abb13(41)
      abb13(39)=4.0_ki*abb13(39)
      abb13(41)=spak1k4*abb13(69)
      abb13(16)=-abb13(16)+abb13(41)
      abb13(16)=4.0_ki*abb13(16)
      abb13(41)=-4.0_ki*abb13(68)
      abb13(77)=abb13(7)*abb13(78)
      abb13(78)=-abb13(8)*abb13(75)
      abb13(79)=spbk7k3*abb13(23)
      abb13(68)=-spbk3k1*abb13(68)
      abb13(68)=abb13(79)+abb13(68)
      abb13(68)=spak1k7*abb13(68)
      abb13(62)=spal6k7*abb13(62)
      abb13(67)=spbl5k3*abb13(67)
      abb13(24)=-spak1l6*abb13(24)
      abb13(69)=-spak1l5*abb13(69)
      abb13(24)=abb13(68)+abb13(69)+abb13(24)+abb13(67)+abb13(62)+abb13(78)+abb&
      &13(77)-abb13(42)
      abb13(24)=4.0_ki*abb13(24)
      abb13(28)=abb13(51)*abb13(28)
      abb13(42)=abb13(55)*abb13(46)
      abb13(62)=abb13(53)*spbk3k2
      abb13(67)=-abb13(62)-abb13(42)
      abb13(67)=es12*abb13(67)
      abb13(11)=-spbk3k2*abb13(6)*abb13(11)
      abb13(47)=abb13(47)*abb13(91)
      abb13(50)=abb13(50)*abb13(64)
      abb13(64)=es712*abb13(62)
      abb13(11)=abb13(64)+abb13(50)+abb13(47)+abb13(11)+abb13(67)+abb13(28)
      abb13(11)=4.0_ki*abb13(11)
      abb13(28)=8.0_ki*abb13(62)
      abb13(47)=-abb13(7)*abb13(60)
      abb13(50)=spbk3k2*abb13(76)
      abb13(60)=-abb13(55)*abb13(29)
      abb13(50)=abb13(50)+abb13(60)
      abb13(50)=abb13(8)*abb13(50)
      abb13(47)=abb13(50)+abb13(47)-abb13(62)+abb13(42)
      abb13(47)=8.0_ki*abb13(47)
      abb13(42)=8.0_ki*abb13(42)
      abb13(50)=abb13(48)*abb13(70)
      abb13(60)=abb13(46)*spak1k4
      abb13(53)=abb13(60)-abb13(53)
      abb13(60)=-abb13(53)*abb13(73)
      abb13(62)=4.0_ki*abb13(48)
      abb13(55)=abb13(55)*abb13(62)
      abb13(64)=spak1k4*abb13(66)
      abb13(58)=-abb13(58)+abb13(64)
      abb13(58)=4.0_ki*abb13(58)
      abb13(17)=-abb13(37)+abb13(17)
      abb13(17)=4.0_ki*abb13(17)
      abb13(37)=-abb13(7)*abb13(75)
      abb13(32)=abb13(8)*abb13(32)
      abb13(64)=spbk7k3*abb13(46)
      abb13(48)=-spbk3k1*abb13(48)
      abb13(48)=abb13(64)+abb13(48)
      abb13(48)=spak1k7*abb13(48)
      abb13(35)=spbl6k3*abb13(35)
      abb13(61)=spal5k7*abb13(61)
      abb13(64)=-spak1l6*abb13(66)
      abb13(54)=-spak1l5*abb13(54)
      abb13(32)=abb13(48)+abb13(54)+abb13(64)+abb13(61)+abb13(35)+abb13(32)+abb&
      &13(37)-abb13(51)
      abb13(32)=4.0_ki*abb13(32)
      abb13(22)=4.0_ki*abb13(22)
      abb13(35)=4.0_ki*abb13(23)
      abb13(37)=spbk3k2*spak4k7
      abb13(48)=abb13(37)*abb13(35)
      abb13(51)=4.0_ki*abb13(46)
      abb13(37)=abb13(37)*abb13(51)
      abb13(54)=-spbl5k2*abb13(13)
      abb13(26)=-abb13(23)*abb13(26)
      abb13(26)=abb13(54)+abb13(26)
      abb13(26)=4.0_ki*abb13(26)
      abb13(13)=-spbl6k2*abb13(13)
      abb13(30)=-abb13(46)*abb13(30)
      abb13(13)=abb13(13)+abb13(30)
      abb13(13)=4.0_ki*abb13(13)
      abb13(30)=abb13(46)*spbl5k2
      abb13(54)=abb13(23)*spbl6k2
      abb13(30)=abb13(30)+abb13(54)
      abb13(54)=abb13(30)*abb13(52)
      abb13(9)=abb13(9)*abb13(83)
      abb13(61)=abb13(71)*abb13(80)
      abb13(29)=abb13(29)*abb13(49)
      abb13(9)=abb13(29)+abb13(61)+abb13(9)-abb13(30)
      abb13(9)=abb13(9)*abb13(52)
      abb13(29)=abb13(30)*abb13(85)
      abb13(23)=abb13(23)*abb13(70)
      abb13(30)=abb13(46)*abb13(70)
      abb13(46)=4.0_ki*spbk3k1
      abb13(15)=-abb13(15)*abb13(46)
      abb13(46)=-abb13(53)*abb13(46)
      R2d13=0.0_ki
      rat2 = rat2 + R2d13
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='13' value='", &
          & R2d13, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd13h3