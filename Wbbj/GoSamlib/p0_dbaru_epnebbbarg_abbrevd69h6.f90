module     p0_dbaru_epnebbbarg_abbrevd69h6
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh6
   implicit none
   private
   complex(ki), dimension(95), public :: abb69
   complex(ki), public :: R2d69
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
      abb69(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb69(2)=sqrt2**(-1)
      abb69(3)=es56**(-1)
      abb69(4)=spbk7k2**(-1)
      abb69(5)=spak2l5**(-1)
      abb69(6)=spbl5k2**(-1)
      abb69(7)=spak2l6**(-1)
      abb69(8)=spbl6k2**(-1)
      abb69(9)=abb69(3)*i_*CVDU*abb69(2)*abb69(1)
      abb69(10)=TR*gW
      abb69(10)=abb69(10)**2
      abb69(11)=abb69(9)*abb69(10)*abb69(4)
      abb69(12)=abb69(11)*spbk3k2
      abb69(13)=abb69(12)*c4
      abb69(14)=abb69(12)*c2
      abb69(15)=NC*c1
      abb69(12)=abb69(15)*abb69(12)
      abb69(16)=-abb69(12)+abb69(13)-abb69(14)
      abb69(17)=-abb69(16)*spbl6k2
      abb69(18)=spal5k7*abb69(17)
      abb69(19)=abb69(18)*spak3k4
      abb69(20)=abb69(19)*spak1l5
      abb69(21)=abb69(20)*spbl5k3
      abb69(22)=abb69(11)*spal5k7
      abb69(23)=c2-c4
      abb69(24)=spbk3k2**2
      abb69(25)=abb69(23)*abb69(24)*abb69(22)
      abb69(26)=abb69(24)*abb69(15)
      abb69(27)=abb69(26)*abb69(22)
      abb69(25)=abb69(27)+abb69(25)
      abb69(27)=spak1k7*spak3k4
      abb69(28)=abb69(25)*abb69(27)
      abb69(29)=2.0_ki*spbk7l6
      abb69(30)=abb69(29)*abb69(28)
      abb69(31)=abb69(11)*spbl6k2
      abb69(32)=abb69(31)*spal5k7
      abb69(33)=abb69(26)*abb69(32)
      abb69(34)=-abb69(32)*abb69(23)
      abb69(35)=-abb69(24)*abb69(34)
      abb69(33)=abb69(33)+abb69(35)
      abb69(35)=mB**2
      abb69(36)=abb69(35)*spak1k2
      abb69(37)=spak3k4*abb69(36)
      abb69(38)=abb69(37)*abb69(6)
      abb69(33)=abb69(33)*abb69(38)
      abb69(39)=abb69(33)*abb69(5)
      abb69(21)=abb69(30)+abb69(21)-abb69(39)
      abb69(30)=es71+es12-es712
      abb69(39)=abb69(30)*abb69(21)
      abb69(40)=spbl6k2**2
      abb69(41)=-abb69(40)*abb69(16)
      abb69(42)=spak2k4*spak1l5
      abb69(43)=abb69(41)*abb69(42)
      abb69(44)=spbl6k3*spak1l5
      abb69(45)=abb69(44)*spak3k4
      abb69(46)=abb69(45)*abb69(17)
      abb69(43)=abb69(43)-abb69(46)
      abb69(26)=abb69(26)*abb69(31)
      abb69(23)=-abb69(31)*abb69(23)
      abb69(46)=-abb69(24)*abb69(23)
      abb69(26)=abb69(46)+abb69(26)
      abb69(46)=abb69(7)*abb69(35)*abb69(6)
      abb69(47)=abb69(46)*spak3k4
      abb69(48)=abb69(47)*spak1k2
      abb69(49)=abb69(26)*abb69(48)
      abb69(49)=abb69(49)-abb69(43)
      abb69(50)=2.0_ki*spal6k7
      abb69(51)=abb69(30)*abb69(50)
      abb69(52)=-abb69(49)*abb69(51)
      abb69(12)=-abb69(13)+abb69(12)+abb69(14)
      abb69(12)=spal5k7*abb69(12)
      abb69(13)=-spak2k4*abb69(40)*abb69(12)
      abb69(14)=abb69(19)*spbl6k3
      abb69(13)=abb69(13)+abb69(14)
      abb69(14)=abb69(30)*spak1l6
      abb69(19)=abb69(13)*abb69(14)
      abb69(53)=abb69(42)*abb69(18)
      abb69(54)=2.0_ki*abb69(12)
      abb69(55)=abb69(54)*abb69(45)
      abb69(53)=abb69(53)-abb69(55)
      abb69(55)=abb69(30)*spbl5k2
      abb69(56)=abb69(53)*abb69(55)
      abb69(57)=3.0_ki*abb69(7)
      abb69(58)=abb69(57)*abb69(37)
      abb69(59)=abb69(58)*abb69(25)
      abb69(60)=abb69(15)+c2
      abb69(61)=abb69(9)*spbl6k2
      abb69(62)=abb69(61)*spal5k7
      abb69(63)=abb69(10)*spbk3k2
      abb69(64)=-abb69(60)*abb69(62)*abb69(63)
      abb69(65)=abb69(63)*c4
      abb69(66)=abb69(65)*abb69(62)
      abb69(64)=abb69(66)+abb69(64)
      abb69(66)=spak2k4*spak1k7
      abb69(67)=abb69(64)*abb69(66)
      abb69(59)=abb69(67)+abb69(59)
      abb69(67)=c2+abb69(15)-c4
      abb69(11)=abb69(11)*abb69(67)
      abb69(24)=abb69(24)*abb69(11)
      abb69(68)=abb69(24)*spak3k4
      abb69(69)=abb69(46)*spak1k7
      abb69(70)=2.0_ki*abb69(69)
      abb69(71)=abb69(68)*abb69(70)
      abb69(72)=-es71*abb69(71)
      abb69(72)=abb69(72)-abb69(59)
      abb69(72)=es71*abb69(72)
      abb69(73)=abb69(68)*abb69(69)
      abb69(74)=4.0_ki*abb69(73)
      abb69(75)=abb69(74)*es71
      abb69(75)=abb69(75)+abb69(59)
      abb69(76)=-es712*abb69(71)
      abb69(76)=abb69(76)+abb69(75)
      abb69(76)=es712*abb69(76)
      abb69(74)=es712*abb69(74)
      abb69(77)=-es12*abb69(71)
      abb69(74)=abb69(77)+abb69(74)-abb69(75)
      abb69(74)=es12*abb69(74)
      abb69(75)=abb69(30)*abb69(18)
      abb69(77)=abb69(27)*spbk7k3
      abb69(78)=-abb69(75)*abb69(77)
      abb69(19)=abb69(56)+abb69(19)+abb69(78)+abb69(52)+abb69(74)+abb69(72)+abb&
      &69(76)+abb69(39)
      abb69(19)=4.0_ki*abb69(19)
      abb69(13)=abb69(13)*spak1l6
      abb69(39)=abb69(53)*spbl5k2
      abb69(49)=abb69(49)*abb69(50)
      abb69(52)=abb69(77)*abb69(18)
      abb69(13)=abb69(59)-abb69(13)+abb69(49)+abb69(52)-abb69(39)
      abb69(39)=abb69(71)*abb69(30)
      abb69(21)=abb69(39)+abb69(13)-abb69(21)
      abb69(21)=8.0_ki*abb69(21)
      abb69(39)=abb69(18)*spak1k4
      abb69(49)=abb69(30)*abb69(39)
      abb69(49)=8.0_ki*abb69(49)
      abb69(52)=16.0_ki*abb69(39)
      abb69(53)=abb69(9)*spal5k7
      abb69(56)=-abb69(60)*abb69(53)*abb69(63)
      abb69(59)=abb69(65)*abb69(53)
      abb69(56)=abb69(59)+abb69(56)
      abb69(35)=abb69(57)*abb69(35)
      abb69(57)=abb69(56)*abb69(35)
      abb69(57)=abb69(57)+abb69(64)
      abb69(57)=abb69(57)*spak1k2
      abb69(59)=-abb69(60)*abb69(61)*abb69(10)
      abb69(72)=abb69(10)*c4
      abb69(74)=abb69(72)*abb69(61)
      abb69(59)=abb69(74)+abb69(59)
      abb69(74)=abb69(59)*abb69(44)
      abb69(76)=abb69(60)*abb69(63)
      abb69(76)=abb69(76)-abb69(65)
      abb69(61)=abb69(61)*abb69(76)
      abb69(76)=abb69(46)*spak1k2
      abb69(78)=abb69(61)*abb69(76)
      abb69(74)=abb69(78)-abb69(74)
      abb69(74)=abb69(74)*abb69(50)
      abb69(78)=abb69(60)-c4
      abb69(62)=abb69(78)*abb69(62)*abb69(10)
      abb69(78)=abb69(62)*spak1k7
      abb69(79)=abb69(78)*spbk7k3
      abb69(80)=spak1l6*spbl6k3
      abb69(81)=abb69(80)*abb69(62)
      abb69(82)=abb69(9)*abb69(60)
      abb69(63)=abb69(63)*abb69(82)
      abb69(65)=abb69(65)*abb69(9)
      abb69(63)=-abb69(65)+abb69(63)
      abb69(65)=abb69(63)*abb69(70)
      abb69(83)=abb69(30)*abb69(65)
      abb69(60)=-abb69(10)*abb69(60)
      abb69(60)=abb69(72)+abb69(60)
      abb69(53)=abb69(53)*abb69(60)
      abb69(60)=abb69(44)*spbl5k2
      abb69(84)=2.0_ki*abb69(60)
      abb69(85)=abb69(53)*abb69(84)
      abb69(79)=abb69(57)-abb69(79)-abb69(83)-abb69(74)+abb69(81)+abb69(85)
      abb69(81)=2.0_ki*spak4k7
      abb69(79)=abb69(79)*abb69(81)
      abb69(83)=abb69(81)*abb69(62)
      abb69(85)=abb69(83)*spak1l5
      abb69(20)=abb69(85)+abb69(20)
      abb69(20)=abb69(20)*spbl5k3
      abb69(85)=abb69(81)*spak1k7
      abb69(86)=abb69(85)*abb69(56)
      abb69(28)=abb69(86)-abb69(28)
      abb69(28)=abb69(28)*abb69(29)
      abb69(36)=abb69(6)*abb69(36)
      abb69(64)=abb69(64)*abb69(36)
      abb69(81)=abb69(64)*abb69(81)
      abb69(33)=abb69(81)-abb69(33)
      abb69(33)=abb69(33)*abb69(5)
      abb69(81)=spbk4k3*spak1k4
      abb69(83)=abb69(83)*abb69(81)
      abb69(13)=-abb69(79)+abb69(28)-abb69(20)-abb69(33)+abb69(83)+abb69(13)
      abb69(20)=-abb69(39)+3.0_ki*abb69(73)
      abb69(28)=2.0_ki*abb69(30)
      abb69(20)=abb69(20)*abb69(28)
      abb69(20)=abb69(20)+abb69(13)
      abb69(20)=4.0_ki*abb69(20)
      abb69(33)=abb69(71)-abb69(39)
      abb69(71)=-16.0_ki*abb69(33)
      abb69(79)=8.0_ki*abb69(39)
      abb69(83)=abb69(63)*abb69(69)
      abb69(86)=4.0_ki*abb69(83)
      abb69(87)=-spak4k7*abb69(86)
      abb69(33)=abb69(87)-abb69(33)
      abb69(33)=8.0_ki*abb69(33)
      abb69(73)=abb69(73)-abb69(39)
      abb69(87)=-abb69(73)*abb69(28)
      abb69(13)=abb69(87)-abb69(13)
      abb69(13)=2.0_ki*abb69(13)
      abb69(87)=4.0_ki*abb69(39)
      abb69(65)=spak4k7*abb69(65)
      abb69(65)=abb69(65)+abb69(73)
      abb69(65)=8.0_ki*abb69(65)
      abb69(39)=2.0_ki*abb69(39)
      abb69(73)=abb69(70)*abb69(16)
      abb69(88)=abb69(73)*spak3k4
      abb69(89)=-abb69(88)*abb69(30)
      abb69(90)=abb69(12)*abb69(58)
      abb69(91)=abb69(17)*abb69(48)
      abb69(31)=abb69(15)*abb69(31)
      abb69(23)=abb69(23)-abb69(31)
      abb69(31)=-abb69(23)*abb69(45)
      abb69(92)=abb69(40)*abb69(11)
      abb69(93)=-abb69(92)*abb69(42)
      abb69(31)=abb69(31)+abb69(91)+abb69(93)
      abb69(31)=abb69(31)*abb69(50)
      abb69(15)=abb69(32)*abb69(15)
      abb69(15)=-abb69(15)+abb69(34)
      abb69(32)=-abb69(15)*abb69(77)
      abb69(31)=abb69(32)+abb69(31)+abb69(90)+abb69(89)
      abb69(31)=spbk7k3*abb69(31)
      abb69(32)=spak2k4*abb69(41)
      abb69(34)=spbl6k3*spak3k4
      abb69(41)=-abb69(17)*abb69(34)
      abb69(32)=abb69(32)+abb69(41)
      abb69(32)=spak1l6*abb69(32)
      abb69(41)=abb69(42)*abb69(17)
      abb69(89)=2.0_ki*abb69(45)
      abb69(90)=-abb69(16)*abb69(89)
      abb69(90)=-abb69(41)+abb69(90)
      abb69(90)=spbl5k2*abb69(90)
      abb69(91)=spak3k4*spbl5k3*spak1l5
      abb69(93)=-abb69(91)+abb69(77)
      abb69(93)=abb69(17)*abb69(93)
      abb69(58)=abb69(24)*abb69(58)
      abb69(61)=-abb69(61)*abb69(66)
      abb69(32)=abb69(90)+abb69(32)+abb69(58)+abb69(61)+abb69(93)
      abb69(32)=spak2l5*abb69(32)
      abb69(58)=abb69(62)*abb69(81)
      abb69(57)=abb69(74)+abb69(58)-abb69(57)
      abb69(57)=spak2k4*abb69(57)
      abb69(25)=spak1k2*spak3k4*abb69(25)
      abb69(58)=-abb69(12)*abb69(77)
      abb69(56)=abb69(56)*abb69(66)
      abb69(25)=abb69(58)+abb69(25)+abb69(56)
      abb69(25)=abb69(25)*abb69(29)
      abb69(29)=2.0_ki*spak2l6
      abb69(43)=-abb69(43)*abb69(29)
      abb69(56)=-spbl6k3*spak2k4*abb69(62)
      abb69(34)=abb69(15)*abb69(34)
      abb69(22)=abb69(22)*abb69(67)
      abb69(40)=abb69(40)*abb69(22)
      abb69(58)=spak2k4*abb69(40)
      abb69(34)=abb69(58)+abb69(34)
      abb69(34)=spbk7k3*abb69(34)
      abb69(34)=abb69(56)+abb69(34)
      abb69(34)=spak1l6*abb69(34)
      abb69(56)=spbk7k3*abb69(18)*abb69(38)
      abb69(58)=-spak2k4*abb69(64)
      abb69(56)=abb69(58)+abb69(56)
      abb69(56)=abb69(5)*abb69(56)
      abb69(58)=-abb69(62)*abb69(42)
      abb69(61)=abb69(15)*spak1l5
      abb69(64)=spbk7k3*spak3k4*abb69(61)
      abb69(58)=abb69(58)+abb69(64)
      abb69(58)=spbl5k3*abb69(58)
      abb69(64)=abb69(83)*spak2k4
      abb69(67)=abb69(48)*abb69(24)
      abb69(64)=abb69(64)-abb69(67)
      abb69(28)=abb69(64)*abb69(28)
      abb69(26)=abb69(26)*abb69(38)
      abb69(64)=abb69(15)*abb69(42)
      abb69(74)=abb69(22)*abb69(89)
      abb69(64)=abb69(64)+abb69(74)
      abb69(64)=spbk7k3*abb69(64)
      abb69(74)=spak2k4*abb69(53)*abb69(44)
      abb69(64)=-2.0_ki*abb69(74)+abb69(64)
      abb69(64)=spbl5k2*abb69(64)
      abb69(25)=abb69(43)+abb69(32)+abb69(58)+abb69(56)+abb69(25)+abb69(64)+abb&
      &69(34)+abb69(31)+3.0_ki*abb69(26)+abb69(28)+abb69(57)
      abb69(25)=4.0_ki*abb69(25)
      abb69(26)=abb69(45)*abb69(16)
      abb69(28)=-abb69(67)+abb69(26)+abb69(41)
      abb69(31)=16.0_ki*abb69(28)
      abb69(32)=abb69(17)*spak2l5
      abb69(34)=abb69(32)*spak1k4
      abb69(41)=abb69(15)*spak1k4
      abb69(43)=abb69(41)*spbk7k3
      abb69(56)=abb69(43)-abb69(34)
      abb69(56)=8.0_ki*abb69(56)
      abb69(57)=abb69(35)*abb69(16)
      abb69(57)=abb69(57)-abb69(17)
      abb69(57)=abb69(57)*spak1k2
      abb69(58)=abb69(81)*abb69(23)
      abb69(57)=abb69(57)+abb69(58)
      abb69(58)=abb69(36)*abb69(5)
      abb69(64)=abb69(58)*abb69(17)
      abb69(74)=abb69(23)*spak1l5
      abb69(81)=abb69(74)*spbl5k3
      abb69(83)=spbk7k3*spak1k7
      abb69(80)=abb69(83)-abb69(80)
      abb69(83)=abb69(80)*abb69(23)
      abb69(89)=abb69(84)*abb69(11)
      abb69(64)=abb69(81)-abb69(83)+abb69(64)+abb69(89)-abb69(57)
      abb69(81)=2.0_ki*spak4l5
      abb69(64)=abb69(64)*abb69(81)
      abb69(81)=abb69(76)*abb69(17)
      abb69(83)=abb69(23)*abb69(44)
      abb69(83)=abb69(83)-abb69(81)
      abb69(89)=abb69(83)*spak4l6
      abb69(34)=abb69(64)-2.0_ki*abb69(34)-4.0_ki*abb69(89)
      abb69(64)=abb69(16)*abb69(46)
      abb69(89)=abb69(30)*abb69(64)
      abb69(90)=abb69(12)*spbk7l6
      abb69(89)=abb69(90)+abb69(89)
      abb69(93)=4.0_ki*spak1k4
      abb69(89)=abb69(93)*abb69(89)
      abb69(94)=spak1l5*abb69(17)
      abb69(86)=-abb69(86)+abb69(94)
      abb69(86)=spak2k4*abb69(86)
      abb69(88)=abb69(88)-abb69(41)
      abb69(88)=spbk7k3*abb69(88)
      abb69(26)=2.0_ki*abb69(88)+abb69(26)+3.0_ki*abb69(67)+abb69(86)+abb69(89)&
      &-abb69(34)
      abb69(26)=4.0_ki*abb69(26)
      abb69(67)=abb69(64)*spak1k4
      abb69(86)=-32.0_ki*abb69(67)
      abb69(28)=2.0_ki*abb69(43)-abb69(28)+abb69(89)+abb69(34)
      abb69(28)=2.0_ki*abb69(28)
      abb69(34)=-16.0_ki*abb69(67)
      abb69(43)=-spak2k4*abb69(81)
      abb69(48)=abb69(48)*abb69(16)
      abb69(45)=abb69(45)*abb69(11)
      abb69(67)=abb69(48)-abb69(45)
      abb69(67)=spbl6k3*abb69(67)
      abb69(43)=abb69(43)+abb69(67)
      abb69(43)=8.0_ki*abb69(43)
      abb69(67)=abb69(24)*abb69(27)
      abb69(81)=-8.0_ki*abb69(67)*abb69(30)
      abb69(88)=16.0_ki*abb69(67)
      abb69(85)=abb69(85)*abb69(63)
      abb69(67)=abb69(85)+abb69(67)
      abb69(85)=8.0_ki*abb69(67)
      abb69(67)=-4.0_ki*abb69(67)
      abb69(17)=abb69(17)*spak2k4
      abb69(89)=abb69(16)*spbl6k3
      abb69(94)=-spak3k4*abb69(89)
      abb69(94)=-abb69(17)+abb69(94)
      abb69(94)=spak1l6*abb69(94)
      abb69(95)=spbl5k2*abb69(42)
      abb69(77)=-abb69(91)+abb69(95)-abb69(77)
      abb69(77)=abb69(16)*abb69(77)
      abb69(37)=abb69(7)*abb69(37)*abb69(8)
      abb69(91)=-abb69(5)*abb69(38)
      abb69(91)=-abb69(37)+abb69(91)
      abb69(24)=abb69(24)*abb69(91)
      abb69(63)=abb69(63)*abb69(66)
      abb69(68)=spak1k2*abb69(68)
      abb69(24)=abb69(94)-2.0_ki*abb69(68)+3.0_ki*abb69(63)+abb69(77)+abb69(24)
      abb69(24)=4.0_ki*abb69(24)
      abb69(63)=8.0_ki*abb69(16)
      abb69(68)=abb69(63)*spak1k4
      abb69(77)=24.0_ki*spak1k4*abb69(16)
      abb69(91)=abb69(16)*abb69(93)
      abb69(60)=abb69(11)*abb69(60)
      abb69(57)=-3.0_ki*abb69(60)+abb69(57)
      abb69(57)=spak2k4*abb69(57)
      abb69(17)=-abb69(36)*abb69(17)
      abb69(36)=abb69(38)*abb69(89)
      abb69(17)=abb69(17)+abb69(36)
      abb69(17)=abb69(5)*abb69(17)
      abb69(36)=abb69(23)*abb69(42)
      abb69(36)=-abb69(45)+2.0_ki*abb69(48)-3.0_ki*abb69(36)
      abb69(36)=spbl5k3*abb69(36)
      abb69(37)=abb69(89)*abb69(37)
      abb69(10)=abb69(10)*abb69(82)
      abb69(9)=abb69(72)*abb69(9)
      abb69(9)=abb69(10)-abb69(9)
      abb69(10)=spbl6k3*abb69(9)*abb69(66)
      abb69(38)=abb69(23)*abb69(66)
      abb69(42)=abb69(11)*spbl6k3
      abb69(27)=-abb69(27)*abb69(42)
      abb69(27)=abb69(38)+abb69(27)
      abb69(27)=spbk7k3*abb69(27)
      abb69(38)=spak1l6*spak3k4*abb69(11)*spbl6k3**2
      abb69(10)=abb69(37)+abb69(36)+abb69(17)+abb69(38)+abb69(27)+abb69(10)+abb&
      &69(57)
      abb69(10)=4.0_ki*abb69(10)
      abb69(17)=abb69(42)*spak1k4
      abb69(17)=8.0_ki*abb69(17)
      abb69(27)=abb69(93)*abb69(42)
      abb69(36)=abb69(41)*spbk4k2
      abb69(36)=abb69(36)-abb69(78)
      abb69(37)=abb69(30)*abb69(36)
      abb69(38)=-spak1k3*abb69(75)
      abb69(45)=abb69(92)*spak1l5
      abb69(48)=-abb69(45)*abb69(51)
      abb69(51)=abb69(61)*abb69(55)
      abb69(14)=abb69(40)*abb69(14)
      abb69(14)=abb69(38)+abb69(51)+abb69(14)+abb69(48)+abb69(37)
      abb69(14)=4.0_ki*abb69(14)
      abb69(37)=abb69(18)*spak1k3
      abb69(38)=abb69(61)*spbl5k2
      abb69(48)=abb69(45)*abb69(50)
      abb69(40)=abb69(40)*spak1l6
      abb69(36)=-abb69(48)+abb69(38)-abb69(37)+abb69(40)+abb69(36)
      abb69(37)=-8.0_ki*abb69(36)
      abb69(38)=-4.0_ki*abb69(36)
      abb69(36)=2.0_ki*abb69(36)
      abb69(40)=-spak1k7*abb69(59)
      abb69(48)=-spbl5k2*abb69(74)
      abb69(51)=spbk4k2*spak1k4
      abb69(55)=-abb69(23)*abb69(51)
      abb69(57)=-spak1l6*abb69(92)
      abb69(40)=abb69(55)+abb69(48)+abb69(40)+abb69(57)
      abb69(40)=spak2l5*abb69(40)
      abb69(48)=abb69(53)*abb69(35)
      abb69(48)=abb69(48)-abb69(62)
      abb69(48)=spak1k2*abb69(48)
      abb69(55)=-spal6k7*abb69(74)
      abb69(53)=-spak1k7*abb69(53)
      abb69(57)=spbl5k2*spak1l5
      abb69(60)=abb69(22)*abb69(57)
      abb69(53)=abb69(60)+abb69(53)+abb69(55)
      abb69(55)=spak1l6*abb69(15)
      abb69(53)=abb69(55)+2.0_ki*abb69(53)
      abb69(53)=spbk7l6*abb69(53)
      abb69(55)=-spbk7k3*abb69(15)
      abb69(32)=abb69(55)+abb69(32)
      abb69(32)=spak1k3*abb69(32)
      abb69(55)=-abb69(30)*abb69(9)*abb69(70)
      abb69(59)=abb69(59)*abb69(76)*abb69(50)
      abb69(60)=-abb69(62)*abb69(58)
      abb69(62)=spbk7l5*abb69(61)
      abb69(66)=-spbk7k4*abb69(41)
      abb69(29)=abb69(45)*abb69(29)
      abb69(29)=abb69(66)+abb69(62)+abb69(29)+abb69(32)+abb69(60)+abb69(53)+abb&
      &69(59)+abb69(48)+abb69(55)+abb69(40)
      abb69(29)=4.0_ki*abb69(29)
      abb69(32)=16.0_ki*abb69(74)
      abb69(40)=abb69(9)*abb69(69)
      abb69(40)=4.0_ki*abb69(40)+abb69(74)
      abb69(40)=4.0_ki*abb69(40)
      abb69(45)=-2.0_ki*abb69(74)
      abb69(48)=-8.0_ki*abb69(23)*abb69(76)
      abb69(53)=spak1k3*abb69(16)
      abb69(51)=-abb69(51)+abb69(57)
      abb69(51)=abb69(11)*abb69(51)
      abb69(9)=spak1k7*abb69(9)
      abb69(55)=-spak1l6*abb69(23)
      abb69(9)=abb69(53)-3.0_ki*abb69(9)+abb69(55)+abb69(51)
      abb69(9)=4.0_ki*abb69(9)
      abb69(51)=abb69(11)*abb69(35)
      abb69(51)=abb69(51)-abb69(23)
      abb69(51)=spak1k2*abb69(51)
      abb69(53)=spbk7l6*spak1k7
      abb69(55)=spbl6l5*spak1l5
      abb69(57)=-spbl6k4*spak1k4
      abb69(55)=abb69(57)+3.0_ki*abb69(55)+abb69(53)
      abb69(55)=abb69(11)*abb69(55)
      abb69(23)=-abb69(23)*abb69(58)
      abb69(42)=-spak1k3*abb69(42)
      abb69(23)=abb69(42)+abb69(23)+abb69(51)+abb69(55)
      abb69(23)=4.0_ki*abb69(23)
      abb69(12)=abb69(35)*abb69(12)
      abb69(12)=abb69(12)+abb69(18)
      abb69(12)=abb69(12)*spak1k2
      abb69(18)=abb69(58)*abb69(18)
      abb69(35)=abb69(83)*abb69(50)
      abb69(42)=abb69(30)*abb69(73)
      abb69(50)=abb69(53)*abb69(54)
      abb69(41)=abb69(41)*spbk4k3
      abb69(51)=abb69(61)*spbl5k3
      abb69(15)=abb69(80)*abb69(15)
      abb69(53)=abb69(22)*abb69(84)
      abb69(12)=-abb69(12)-abb69(51)-abb69(18)-abb69(53)+abb69(35)+abb69(50)+ab&
      &b69(41)+abb69(42)+abb69(15)
      abb69(15)=4.0_ki*abb69(12)
      abb69(18)=16.0_ki*abb69(16)
      abb69(35)=-abb69(69)*abb69(18)
      abb69(12)=-2.0_ki*abb69(12)
      abb69(41)=abb69(69)*abb69(63)
      abb69(42)=abb69(64)*spak1k2
      abb69(50)=-abb69(42)*abb69(30)
      abb69(51)=-spak1k2*abb69(90)
      abb69(50)=abb69(51)+abb69(50)
      abb69(50)=16.0_ki*abb69(50)
      abb69(44)=abb69(11)*abb69(44)
      abb69(51)=7.0_ki*abb69(42)+abb69(44)
      abb69(51)=4.0_ki*abb69(51)
      abb69(42)=abb69(42)-abb69(44)
      abb69(42)=2.0_ki*abb69(42)
      abb69(44)=spak1k7*abb69(63)
      abb69(53)=-4.0_ki*spak1k7*abb69(16)
      abb69(18)=-spak1k2*abb69(18)
      abb69(16)=abb69(47)*abb69(16)
      abb69(47)=abb69(16)*abb69(30)
      abb69(54)=spak3k4*abb69(90)
      abb69(47)=abb69(54)+abb69(47)
      abb69(47)=8.0_ki*abb69(47)
      abb69(16)=-16.0_ki*abb69(16)
      abb69(54)=spak3k4*abb69(63)
      abb69(55)=abb69(64)*spak2k4
      abb69(57)=-abb69(55)*abb69(30)
      abb69(58)=-spak2k4*abb69(90)
      abb69(57)=abb69(58)+abb69(57)
      abb69(57)=8.0_ki*abb69(57)
      abb69(55)=16.0_ki*abb69(55)
      abb69(58)=-spak2k4*abb69(63)
      abb69(46)=abb69(11)*abb69(46)
      abb69(30)=abb69(46)*abb69(30)
      abb69(22)=-spbk7l6*abb69(22)
      abb69(22)=abb69(22)+abb69(30)
      abb69(22)=8.0_ki*abb69(22)
      abb69(30)=-16.0_ki*abb69(46)
      abb69(11)=8.0_ki*abb69(11)
      R2d69=0.0_ki
      rat2 = rat2 + R2d69
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='69' value='", &
          & R2d69, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd69h6
