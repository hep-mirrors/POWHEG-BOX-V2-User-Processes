module     p0_dbaru_epnebbbarg_abbrevd20h7
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh7
   implicit none
   private
   complex(ki), dimension(140), public :: abb20
   complex(ki), public :: R2d20
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
      abb20(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb20(2)=NC**(-1)
      abb20(3)=sqrt2**(-1)
      abb20(4)=es234**(-1)
      abb20(5)=es56**(-1)
      abb20(6)=spak2l5**(-1)
      abb20(7)=spbk7k2**(-1)
      abb20(8)=spak2l6**(-1)
      abb20(9)=es71**(-1)
      abb20(10)=es567**(-1)
      abb20(11)=spbl5k2**(-1)
      abb20(12)=spbl6k2**(-1)
      abb20(13)=1.0_ki/(mB**2-es67-es56+es567)
      abb20(14)=sqrt(mB**2)
      abb20(15)=1.0_ki/(-es71+es56-es567+es234)
      abb20(16)=1.0_ki/(-mB**2+es67)
      abb20(17)=c3*spak2k4
      abb20(18)=abb20(17)*spak1l5
      abb20(19)=spak2k4*spak1l5
      abb20(20)=abb20(19)*c1
      abb20(18)=abb20(18)-abb20(20)
      abb20(20)=spbl5k2**2
      abb20(21)=abb20(18)*abb20(20)
      abb20(22)=abb20(17)*spak1l6
      abb20(23)=spak2k4*spak1l6
      abb20(24)=abb20(23)*c1
      abb20(22)=abb20(22)-abb20(24)
      abb20(24)=spbl6k2*spbl5k2
      abb20(25)=abb20(22)*abb20(24)
      abb20(21)=abb20(21)+abb20(25)
      abb20(21)=abb20(21)*spak2k7
      abb20(25)=abb20(17)*spal5k7
      abb20(26)=c1*spal5k7
      abb20(27)=abb20(26)*spak2k4
      abb20(25)=abb20(25)-abb20(27)
      abb20(27)=abb20(25)*abb20(20)
      abb20(28)=abb20(17)*spal6k7
      abb20(29)=c1*spal6k7
      abb20(30)=abb20(29)*spak2k4
      abb20(28)=abb20(28)-abb20(30)
      abb20(30)=abb20(28)*abb20(24)
      abb20(27)=abb20(27)+abb20(30)
      abb20(30)=2.0_ki*spak1k2
      abb20(27)=abb20(27)*abb20(30)
      abb20(31)=c1-c3
      abb20(32)=-es12+es712-es71
      abb20(33)=abb20(32)*spak2k4
      abb20(34)=-abb20(33)*abb20(31)
      abb20(35)=spak1k7*spbl5k2
      abb20(36)=abb20(34)*abb20(35)
      abb20(21)=abb20(36)+abb20(21)-abb20(27)
      abb20(21)=abb20(21)*abb20(2)
      abb20(27)=c1*NC
      abb20(36)=abb20(27)*spal5k7
      abb20(37)=abb20(36)*spak2k4
      abb20(38)=NC*c3
      abb20(39)=abb20(38)*spak2k4
      abb20(40)=abb20(39)*spal5k7
      abb20(37)=abb20(37)-abb20(40)
      abb20(40)=abb20(37)*abb20(20)
      abb20(41)=abb20(39)*spal6k7
      abb20(42)=abb20(27)*spal6k7
      abb20(43)=abb20(42)*spak2k4
      abb20(41)=abb20(41)-abb20(43)
      abb20(43)=abb20(41)*abb20(24)
      abb20(40)=abb20(40)-abb20(43)
      abb20(40)=abb20(40)*abb20(30)
      abb20(43)=abb20(19)*abb20(27)
      abb20(44)=abb20(39)*spak1l5
      abb20(43)=abb20(44)-abb20(43)
      abb20(44)=abb20(43)*abb20(20)
      abb20(45)=abb20(23)*abb20(27)
      abb20(46)=abb20(39)*spak1l6
      abb20(45)=abb20(46)-abb20(45)
      abb20(46)=abb20(45)*abb20(24)
      abb20(44)=abb20(44)+abb20(46)
      abb20(44)=abb20(44)*spak2k7
      abb20(46)=abb20(39)*abb20(32)
      abb20(47)=abb20(33)*abb20(27)
      abb20(46)=abb20(46)-abb20(47)
      abb20(47)=abb20(46)*abb20(35)
      abb20(21)=abb20(21)-abb20(47)-abb20(40)-abb20(44)
      abb20(21)=abb20(21)*abb20(8)
      abb20(18)=abb20(18)*spbl5k2
      abb20(22)=abb20(22)*spbl6k2
      abb20(18)=abb20(18)+abb20(22)
      abb20(22)=spak2k7*spbl6k2
      abb20(18)=abb20(18)*abb20(22)
      abb20(25)=abb20(25)*spbl5k2
      abb20(28)=abb20(28)*spbl6k2
      abb20(25)=abb20(25)+abb20(28)
      abb20(28)=abb20(30)*spbl6k2
      abb20(25)=abb20(25)*abb20(28)
      abb20(40)=spak1k7*spbl6k2
      abb20(34)=abb20(34)*abb20(40)
      abb20(18)=abb20(34)+abb20(18)-abb20(25)
      abb20(18)=abb20(18)*abb20(2)
      abb20(25)=abb20(37)*spbl5k2
      abb20(34)=abb20(41)*spbl6k2
      abb20(25)=abb20(25)-abb20(34)
      abb20(25)=abb20(25)*abb20(28)
      abb20(34)=abb20(43)*spbl5k2
      abb20(37)=abb20(45)*spbl6k2
      abb20(34)=abb20(34)+abb20(37)
      abb20(34)=abb20(34)*abb20(22)
      abb20(37)=abb20(46)*abb20(40)
      abb20(18)=abb20(18)-abb20(37)-abb20(25)-abb20(34)
      abb20(18)=abb20(18)*abb20(6)
      abb20(25)=c3*spal6k7
      abb20(25)=abb20(25)-abb20(29)
      abb20(34)=abb20(25)*spbl6k2
      abb20(37)=-spbl5k3*abb20(34)
      abb20(41)=spbl5k3*spal5k7
      abb20(43)=-spbl5k2*abb20(41)*abb20(31)
      abb20(37)=abb20(37)-abb20(43)
      abb20(37)=abb20(37)*abb20(30)
      abb20(43)=spbl5k3*spak1l5
      abb20(44)=spbl6k3*spak1l6
      abb20(43)=abb20(43)+abb20(44)
      abb20(44)=-abb20(43)*abb20(31)
      abb20(45)=spak2k7*spbl5k2
      abb20(46)=abb20(44)*abb20(45)
      abb20(47)=-spbk7k3*abb20(31)
      abb20(48)=abb20(45)*spak1k7
      abb20(49)=abb20(47)*abb20(48)
      abb20(37)=-abb20(49)+abb20(37)+abb20(46)
      abb20(37)=abb20(37)*abb20(2)
      abb20(46)=abb20(38)*spal6k7
      abb20(46)=abb20(46)-abb20(42)
      abb20(49)=abb20(46)*spbl6k2
      abb20(50)=-spbl5k3*abb20(49)
      abb20(51)=abb20(41)*abb20(38)
      abb20(52)=abb20(36)*spbl5k3
      abb20(51)=abb20(52)-abb20(51)
      abb20(51)=abb20(51)*spbl5k2
      abb20(50)=abb20(50)+abb20(51)
      abb20(50)=abb20(50)*abb20(30)
      abb20(51)=abb20(38)-abb20(27)
      abb20(43)=-abb20(43)*abb20(51)
      abb20(52)=abb20(43)*abb20(45)
      abb20(53)=-spbk7k3*abb20(51)
      abb20(48)=abb20(53)*abb20(48)
      abb20(37)=-abb20(52)-abb20(37)+abb20(50)+abb20(48)
      abb20(37)=abb20(37)*abb20(8)
      abb20(48)=c3*spal5k7
      abb20(26)=abb20(48)-abb20(26)
      abb20(48)=abb20(26)*spbl5k2
      abb20(50)=-spbl6k3*abb20(48)
      abb20(52)=spbl6k3*spal6k7
      abb20(54)=abb20(52)*spbl6k2
      abb20(55)=-abb20(31)*abb20(54)
      abb20(50)=abb20(50)-abb20(55)
      abb20(50)=abb20(50)*abb20(30)
      abb20(44)=abb20(44)*abb20(22)
      abb20(55)=abb20(22)*spak1k7
      abb20(47)=abb20(47)*abb20(55)
      abb20(44)=-abb20(47)+abb20(50)+abb20(44)
      abb20(44)=abb20(44)*abb20(2)
      abb20(47)=-abb20(51)*abb20(54)
      abb20(50)=abb20(38)*spal5k7
      abb20(36)=abb20(50)-abb20(36)
      abb20(50)=abb20(36)*spbl5k2
      abb20(54)=-spbl6k3*abb20(50)
      abb20(47)=abb20(47)+abb20(54)
      abb20(47)=abb20(47)*abb20(30)
      abb20(43)=abb20(43)*abb20(22)
      abb20(53)=abb20(53)*abb20(55)
      abb20(43)=abb20(44)+abb20(43)-abb20(47)-abb20(53)
      abb20(43)=abb20(43)*abb20(6)
      abb20(37)=abb20(37)-abb20(43)
      abb20(43)=abb20(37)*spak3k4
      abb20(18)=abb20(43)+abb20(21)+abb20(18)
      abb20(18)=abb20(18)*abb20(5)
      abb20(21)=abb20(32)*spak1k7
      abb20(43)=abb20(22)*spak1l6
      abb20(44)=abb20(43)-abb20(21)
      abb20(44)=spbl5k3*abb20(44)
      abb20(47)=abb20(16)*c2
      abb20(53)=-abb20(47)*abb20(44)
      abb20(54)=spak1k2*spbl5k2
      abb20(41)=abb20(54)*abb20(41)
      abb20(55)=abb20(13)*c2
      abb20(56)=abb20(41)*abb20(55)
      abb20(53)=abb20(56)+abb20(53)
      abb20(53)=abb20(53)*abb20(2)
      abb20(56)=c3*abb20(16)
      abb20(44)=abb20(56)*abb20(44)
      abb20(57)=c1*abb20(13)
      abb20(58)=abb20(41)*abb20(57)
      abb20(44)=abb20(53)-abb20(58)+abb20(44)
      abb20(44)=abb20(44)*abb20(2)
      abb20(53)=abb20(38)*abb20(16)
      abb20(58)=abb20(53)*spak1l6
      abb20(59)=abb20(47)*spak1l6
      abb20(58)=abb20(58)-abb20(59)
      abb20(60)=abb20(58)*abb20(22)
      abb20(61)=abb20(53)-abb20(47)
      abb20(62)=-abb20(61)*abb20(21)
      abb20(62)=-abb20(62)-abb20(60)
      abb20(62)=spbl5k3*abb20(62)
      abb20(63)=abb20(27)*abb20(13)
      abb20(64)=abb20(63)-abb20(55)
      abb20(41)=-abb20(64)*abb20(41)
      abb20(41)=abb20(44)-abb20(41)+abb20(62)
      abb20(41)=abb20(41)*abb20(8)
      abb20(21)=abb20(21)*spbl6k3
      abb20(44)=abb20(21)*abb20(55)
      abb20(62)=spak1k2*spbl6k2
      abb20(65)=abb20(62)*abb20(52)
      abb20(66)=abb20(65)*abb20(47)
      abb20(67)=abb20(55)*spak1l5
      abb20(68)=abb20(67)*spbl6k3
      abb20(69)=abb20(68)*abb20(45)
      abb20(44)=-abb20(69)+abb20(44)+abb20(66)
      abb20(44)=abb20(44)*abb20(2)
      abb20(66)=abb20(21)*abb20(57)
      abb20(65)=abb20(65)*abb20(56)
      abb20(69)=abb20(57)*spak1l5
      abb20(70)=abb20(69)*abb20(45)
      abb20(71)=abb20(70)*spbl6k3
      abb20(44)=abb20(44)+abb20(71)-abb20(66)-abb20(65)
      abb20(44)=abb20(44)*abb20(2)
      abb20(65)=abb20(63)*spak1l5
      abb20(66)=abb20(65)*spbl6k3
      abb20(66)=abb20(66)-abb20(68)
      abb20(66)=abb20(66)*abb20(45)
      abb20(21)=-abb20(64)*abb20(21)
      abb20(68)=abb20(61)*abb20(62)
      abb20(52)=-abb20(52)*abb20(68)
      abb20(21)=-abb20(21)-abb20(52)+abb20(44)-abb20(66)
      abb20(21)=abb20(21)*abb20(6)
      abb20(21)=abb20(41)-abb20(21)
      abb20(41)=abb20(21)*spak3k4
      abb20(44)=abb20(22)*spbl5k2
      abb20(52)=abb20(19)*abb20(44)
      abb20(66)=abb20(33)*abb20(40)
      abb20(52)=abb20(52)-abb20(66)
      abb20(52)=abb20(52)*abb20(57)
      abb20(71)=abb20(67)*abb20(44)
      abb20(72)=spak1k2*spbl6k2**2
      abb20(73)=abb20(72)*spal6k7
      abb20(74)=abb20(73)*abb20(47)
      abb20(71)=abb20(71)-abb20(74)
      abb20(74)=abb20(71)*spak2k4
      abb20(66)=abb20(66)*abb20(55)
      abb20(66)=abb20(66)-abb20(74)
      abb20(66)=abb20(66)*abb20(2)
      abb20(73)=abb20(73)*abb20(56)
      abb20(74)=abb20(73)*spak2k4
      abb20(52)=-abb20(74)+abb20(52)+abb20(66)
      abb20(52)=abb20(52)*abb20(2)
      abb20(19)=abb20(19)*abb20(63)
      abb20(66)=abb20(67)*spak2k4
      abb20(19)=abb20(19)-abb20(66)
      abb20(19)=abb20(19)*abb20(44)
      abb20(66)=-abb20(72)*spal6k7*abb20(61)
      abb20(72)=spak2k4*abb20(66)
      abb20(64)=abb20(64)*abb20(40)
      abb20(74)=abb20(33)*abb20(64)
      abb20(19)=abb20(52)-abb20(19)-abb20(72)+abb20(74)
      abb20(19)=abb20(19)*abb20(6)
      abb20(52)=abb20(59)*abb20(44)
      abb20(72)=abb20(55)*spal5k7
      abb20(74)=abb20(20)*spak1k2
      abb20(75)=abb20(72)*abb20(74)
      abb20(52)=abb20(52)-abb20(75)
      abb20(75)=abb20(52)*spak2k4
      abb20(76)=abb20(33)*abb20(35)
      abb20(77)=abb20(76)*abb20(47)
      abb20(75)=abb20(77)-abb20(75)
      abb20(75)=abb20(75)*abb20(2)
      abb20(77)=spal5k7*abb20(74)*abb20(57)
      abb20(78)=abb20(77)*spak2k4
      abb20(79)=abb20(44)*abb20(56)
      abb20(80)=abb20(79)*abb20(23)
      abb20(76)=abb20(76)*abb20(56)
      abb20(75)=-abb20(75)+abb20(76)+abb20(78)-abb20(80)
      abb20(75)=abb20(75)*abb20(2)
      abb20(61)=abb20(61)*abb20(35)
      abb20(33)=abb20(33)*abb20(61)
      abb20(23)=abb20(23)*abb20(53)
      abb20(59)=abb20(59)*spak2k4
      abb20(23)=abb20(23)-abb20(59)
      abb20(23)=abb20(23)*abb20(44)
      abb20(59)=abb20(63)*spal5k7
      abb20(59)=abb20(59)-abb20(72)
      abb20(59)=abb20(59)*abb20(74)
      abb20(74)=spak2k4*abb20(59)
      abb20(23)=-abb20(75)+abb20(74)+abb20(33)-abb20(23)
      abb20(23)=abb20(23)*abb20(8)
      abb20(19)=-abb20(19)+abb20(23)-abb20(41)
      abb20(23)=spak1k7*spak2k7
      abb20(33)=abb20(51)*abb20(23)
      abb20(41)=abb20(2)*spak1k7
      abb20(74)=abb20(31)*abb20(41)*spak2k7
      abb20(33)=abb20(33)+abb20(74)
      abb20(74)=-abb20(8)*spbk7l5*abb20(33)
      abb20(33)=-abb20(6)*spbk7l6*abb20(33)
      abb20(33)=abb20(74)+abb20(33)
      abb20(74)=spbk3k2*abb20(5)
      abb20(75)=2.0_ki*spak3k4
      abb20(76)=abb20(74)*abb20(75)
      abb20(78)=abb20(33)*abb20(76)
      abb20(18)=abb20(78)-abb20(18)+2.0_ki*abb20(19)
      abb20(19)=abb20(10)*spbk3k2
      abb20(18)=abb20(18)*abb20(19)
      abb20(80)=es712*abb20(9)
      abb20(80)=abb20(80)-1.0_ki
      abb20(81)=abb20(80)*abb20(38)
      abb20(82)=c4*abb20(80)
      abb20(81)=abb20(81)-abb20(82)
      abb20(83)=abb20(81)*spak1k7
      abb20(84)=abb20(82)*abb20(41)
      abb20(85)=abb20(80)*c3
      abb20(86)=abb20(85)*spak1k7
      abb20(84)=abb20(84)-abb20(86)
      abb20(84)=abb20(84)*abb20(2)
      abb20(83)=abb20(83)+abb20(84)
      abb20(84)=-abb20(6)*spbl6k3*abb20(83)
      abb20(83)=-abb20(8)*spbl5k3*abb20(83)
      abb20(83)=abb20(84)+abb20(83)
      abb20(84)=abb20(83)*spak3k4
      abb20(86)=abb20(82)*abb20(2)
      abb20(87)=abb20(86)*abb20(35)
      abb20(88)=abb20(87)*spak2k4
      abb20(17)=abb20(17)*abb20(80)
      abb20(89)=abb20(17)*abb20(35)
      abb20(88)=abb20(88)-abb20(89)
      abb20(88)=abb20(88)*abb20(2)
      abb20(39)=abb20(80)*abb20(39)
      abb20(89)=abb20(82)*spak2k4
      abb20(39)=abb20(39)-abb20(89)
      abb20(89)=abb20(39)*abb20(35)
      abb20(88)=abb20(88)+abb20(89)
      abb20(88)=abb20(88)*abb20(8)
      abb20(86)=abb20(86)*abb20(40)
      abb20(89)=abb20(86)*spak2k4
      abb20(17)=abb20(17)*abb20(40)
      abb20(17)=abb20(89)-abb20(17)
      abb20(17)=abb20(17)*abb20(2)
      abb20(39)=abb20(39)*abb20(40)
      abb20(17)=abb20(17)+abb20(39)
      abb20(17)=abb20(17)*abb20(6)
      abb20(17)=abb20(84)+abb20(88)+abb20(17)
      abb20(17)=abb20(17)*abb20(5)
      abb20(39)=spal5k7*spbl6l5
      abb20(84)=-spak1k2*abb20(39)
      abb20(88)=spak1k7*spak1k2
      abb20(89)=-abb20(88)*spbl6k1
      abb20(84)=-abb20(84)+abb20(89)
      abb20(27)=abb20(27)*abb20(15)
      abb20(89)=abb20(15)*c4
      abb20(90)=abb20(27)-abb20(89)
      abb20(84)=abb20(90)*abb20(84)
      abb20(91)=spak1k2*abb20(15)
      abb20(92)=abb20(91)*c4
      abb20(93)=abb20(39)*abb20(92)
      abb20(94)=abb20(92)*spak1k7
      abb20(95)=abb20(94)*spbl6k1
      abb20(93)=abb20(93)-abb20(95)
      abb20(93)=abb20(93)*abb20(2)
      abb20(91)=abb20(91)*c1
      abb20(95)=abb20(39)*abb20(91)
      abb20(96)=abb20(91)*spak1k7
      abb20(97)=abb20(96)*spbl6k1
      abb20(93)=abb20(93)-abb20(95)+abb20(97)
      abb20(93)=abb20(93)*abb20(2)
      abb20(84)=abb20(93)+abb20(84)
      abb20(84)=abb20(84)*abb20(6)
      abb20(93)=spal6k7*spbl6l5
      abb20(95)=-spak1k2*abb20(93)
      abb20(88)=-abb20(88)*spbl5k1
      abb20(88)=-abb20(95)-abb20(88)
      abb20(88)=abb20(90)*abb20(88)
      abb20(95)=abb20(93)*abb20(92)
      abb20(94)=abb20(94)*spbl5k1
      abb20(94)=abb20(95)+abb20(94)
      abb20(94)=abb20(94)*abb20(2)
      abb20(95)=abb20(93)*abb20(91)
      abb20(96)=abb20(96)*spbl5k1
      abb20(94)=abb20(94)-abb20(95)-abb20(96)
      abb20(94)=abb20(94)*abb20(2)
      abb20(88)=abb20(94)+abb20(88)
      abb20(88)=abb20(88)*abb20(8)
      abb20(84)=abb20(84)-abb20(88)
      abb20(84)=abb20(84)*abb20(74)
      abb20(88)=abb20(84)*spak3k4
      abb20(17)=abb20(17)-abb20(88)
      abb20(94)=2.0_ki*spbk3k2
      abb20(17)=abb20(17)*abb20(94)
      abb20(95)=spak2k7*spak1k2
      abb20(96)=abb20(51)*abb20(95)
      abb20(97)=abb20(95)*abb20(2)
      abb20(98)=abb20(31)*abb20(97)
      abb20(96)=abb20(96)+abb20(98)
      abb20(98)=2.0_ki*abb20(8)
      abb20(96)=abb20(96)*abb20(98)
      abb20(99)=abb20(95)*spbl6k2
      abb20(100)=abb20(99)*abb20(11)
      abb20(101)=-abb20(51)*abb20(100)
      abb20(102)=abb20(97)*spbl6k2
      abb20(103)=abb20(102)*abb20(11)
      abb20(104)=-abb20(31)*abb20(103)
      abb20(101)=abb20(101)+abb20(104)
      abb20(101)=abb20(101)*abb20(6)
      abb20(96)=abb20(96)-abb20(101)
      abb20(96)=abb20(96)*abb20(6)
      abb20(101)=abb20(97)*spbl5k2
      abb20(104)=abb20(101)*abb20(12)
      abb20(105)=-abb20(31)*abb20(104)
      abb20(106)=abb20(95)*spbl5k2
      abb20(107)=abb20(106)*abb20(12)
      abb20(108)=-abb20(51)*abb20(107)
      abb20(105)=abb20(105)+abb20(108)
      abb20(108)=abb20(8)**2
      abb20(105)=abb20(105)*abb20(108)
      abb20(96)=abb20(96)-abb20(105)
      abb20(105)=abb20(5)*spak3k4
      abb20(109)=abb20(96)*abb20(105)
      abb20(110)=abb20(47)-abb20(55)
      abb20(111)=abb20(110)*abb20(97)
      abb20(112)=abb20(56)-abb20(57)
      abb20(113)=abb20(112)*abb20(95)
      abb20(113)=abb20(113)-abb20(111)
      abb20(113)=abb20(113)*abb20(2)
      abb20(110)=abb20(110)+abb20(63)-abb20(53)
      abb20(114)=abb20(110)*abb20(95)
      abb20(113)=abb20(113)+abb20(114)
      abb20(114)=abb20(98)*abb20(6)
      abb20(115)=abb20(114)*spak3k4
      abb20(116)=abb20(113)*abb20(115)
      abb20(109)=abb20(109)+abb20(116)
      abb20(116)=spbk3k2**2
      abb20(117)=abb20(116)*abb20(10)
      abb20(109)=abb20(109)*abb20(117)
      abb20(118)=abb20(97)*abb20(89)
      abb20(119)=abb20(95)*c1*abb20(15)
      abb20(120)=abb20(118)-abb20(119)
      abb20(120)=abb20(120)*abb20(2)
      abb20(121)=abb20(90)*abb20(95)
      abb20(120)=abb20(120)+abb20(121)
      abb20(120)=abb20(120)*abb20(98)
      abb20(121)=spbl6k2*abb20(11)
      abb20(122)=abb20(121)*abb20(118)
      abb20(121)=abb20(121)*abb20(119)
      abb20(122)=abb20(122)-abb20(121)
      abb20(122)=abb20(122)*abb20(2)
      abb20(123)=-abb20(90)*abb20(100)
      abb20(122)=abb20(122)-abb20(123)
      abb20(122)=abb20(122)*abb20(6)
      abb20(120)=abb20(120)+abb20(122)
      abb20(120)=abb20(120)*abb20(6)
      abb20(122)=spbl5k2*abb20(12)
      abb20(118)=abb20(122)*abb20(118)
      abb20(122)=abb20(122)*abb20(119)
      abb20(118)=abb20(118)-abb20(122)
      abb20(118)=abb20(118)*abb20(2)
      abb20(90)=-abb20(90)*abb20(107)
      abb20(90)=abb20(118)-abb20(90)
      abb20(90)=abb20(90)*abb20(108)
      abb20(90)=abb20(120)+abb20(90)
      abb20(116)=abb20(90)*abb20(5)*abb20(116)*abb20(75)
      abb20(109)=abb20(109)-abb20(116)
      abb20(109)=abb20(109)*mB
      abb20(116)=abb20(55)*abb20(14)
      abb20(118)=abb20(47)*abb20(14)
      abb20(120)=abb20(116)-abb20(118)
      abb20(123)=abb20(120)*abb20(97)
      abb20(124)=abb20(57)*abb20(14)
      abb20(125)=abb20(56)*abb20(14)
      abb20(126)=abb20(124)-abb20(125)
      abb20(127)=abb20(126)*abb20(95)
      abb20(127)=abb20(123)-abb20(127)
      abb20(127)=abb20(127)*abb20(2)
      abb20(128)=abb20(53)*abb20(14)
      abb20(129)=abb20(63)*abb20(14)
      abb20(130)=-abb20(129)+abb20(120)+abb20(128)
      abb20(131)=abb20(130)*abb20(95)
      abb20(127)=abb20(127)-abb20(131)
      abb20(117)=abb20(115)*abb20(127)*abb20(117)
      abb20(109)=abb20(109)-abb20(117)
      abb20(109)=abb20(109)*mB
      abb20(17)=abb20(18)+abb20(17)+abb20(109)
      abb20(17)=abb20(17)*mB
      abb20(18)=abb20(116)*spbl6k3
      abb20(117)=abb20(18)*spbl5k2
      abb20(131)=abb20(118)*spbl5k3
      abb20(132)=abb20(131)*spbl6k2
      abb20(117)=abb20(117)-abb20(132)
      abb20(117)=abb20(117)*abb20(41)
      abb20(124)=abb20(124)*spbl5k2
      abb20(132)=abb20(124)*spbl6k3
      abb20(125)=abb20(125)*spbl6k2
      abb20(133)=abb20(125)*spbl5k3
      abb20(132)=abb20(132)-abb20(133)
      abb20(132)=abb20(132)*spak1k7
      abb20(117)=abb20(117)-abb20(132)
      abb20(117)=abb20(117)*abb20(2)
      abb20(132)=abb20(129)*spbl6k3
      abb20(18)=abb20(132)-abb20(18)
      abb20(18)=abb20(18)*spbl5k2
      abb20(132)=abb20(128)*spbl5k3
      abb20(131)=abb20(132)-abb20(131)
      abb20(131)=abb20(131)*spbl6k2
      abb20(18)=abb20(18)-abb20(131)
      abb20(18)=abb20(18)*spak1k7
      abb20(18)=abb20(117)+abb20(18)
      abb20(117)=abb20(18)*spak3k4
      abb20(131)=abb20(40)*spbl5k2
      abb20(132)=abb20(130)*abb20(131)
      abb20(133)=spak2k4*abb20(132)
      abb20(134)=abb20(126)*abb20(131)
      abb20(120)=abb20(120)*abb20(131)*abb20(2)
      abb20(120)=abb20(134)-abb20(120)
      abb20(131)=-abb20(2)*spak2k4*abb20(120)
      abb20(117)=abb20(117)+abb20(133)-abb20(131)
      abb20(131)=2.0_ki*abb20(19)
      abb20(117)=abb20(117)*abb20(131)
      abb20(17)=abb20(17)+abb20(117)
      abb20(117)=gW*TR
      abb20(117)=abb20(3)*abb20(1)*abb20(117)**2*abb20(4)*abb20(7)*CVDU*i_
      abb20(131)=-2.0_ki*abb20(17)*abb20(117)
      abb20(133)=abb20(21)*abb20(75)
      abb20(134)=abb20(37)*abb20(105)
      abb20(78)=-abb20(78)+abb20(133)+abb20(134)
      abb20(78)=abb20(78)*abb20(19)
      abb20(133)=-abb20(83)*abb20(105)
      abb20(88)=abb20(133)+abb20(88)
      abb20(88)=abb20(88)*abb20(94)
      abb20(78)=-abb20(109)+abb20(88)+abb20(78)
      abb20(78)=mB*abb20(78)
      abb20(88)=abb20(19)*abb20(75)
      abb20(94)=-abb20(18)*abb20(88)
      abb20(78)=abb20(94)+abb20(78)
      abb20(94)=8.0_ki*abb20(117)
      abb20(78)=abb20(78)*abb20(94)
      abb20(109)=4.0_ki*abb20(117)
      abb20(17)=abb20(17)*abb20(109)
      abb20(29)=abb20(29)*spbl6k4
      abb20(117)=spal6k7*spbl6k4
      abb20(133)=abb20(117)*c3
      abb20(29)=abb20(29)-abb20(133)
      abb20(29)=abb20(29)*spbl6k2
      abb20(133)=spbl6k4*abb20(48)
      abb20(29)=abb20(29)-abb20(133)
      abb20(29)=abb20(29)*abb20(30)
      abb20(133)=-spbk7k4*abb20(31)
      abb20(134)=abb20(133)*spbl6k2
      abb20(135)=-spbk4k2*abb20(31)
      abb20(136)=abb20(135)*spbk7l6
      abb20(134)=-abb20(134)+2.0_ki*abb20(136)
      abb20(134)=abb20(134)*abb20(23)
      abb20(136)=spak1l5*spbl5k4
      abb20(137)=spak1l6*spbl6k4
      abb20(136)=abb20(136)+abb20(137)
      abb20(137)=-abb20(136)*abb20(31)
      abb20(138)=abb20(137)*abb20(22)
      abb20(29)=abb20(29)+abb20(134)+abb20(138)
      abb20(29)=abb20(29)*abb20(2)
      abb20(134)=abb20(117)*abb20(38)
      abb20(42)=abb20(42)*spbl6k4
      abb20(42)=abb20(42)-abb20(134)
      abb20(42)=abb20(42)*spbl6k2
      abb20(134)=spbl6k4*abb20(50)
      abb20(42)=abb20(42)-abb20(134)
      abb20(42)=abb20(42)*abb20(30)
      abb20(134)=-spbk7k4*abb20(51)
      abb20(138)=abb20(134)*spbl6k2
      abb20(139)=-spbk4k2*abb20(51)
      abb20(140)=abb20(139)*spbk7l6
      abb20(138)=-abb20(138)+2.0_ki*abb20(140)
      abb20(138)=abb20(138)*abb20(23)
      abb20(136)=-abb20(136)*abb20(51)
      abb20(140)=abb20(136)*abb20(22)
      abb20(29)=abb20(29)-abb20(42)+abb20(138)+abb20(140)
      abb20(29)=abb20(29)*abb20(6)
      abb20(34)=abb20(34)+abb20(48)
      abb20(42)=abb20(30)*spbl5k4*abb20(34)
      abb20(48)=abb20(133)*spbl5k2
      abb20(133)=abb20(135)*spbk7l5
      abb20(48)=-abb20(48)+2.0_ki*abb20(133)
      abb20(48)=abb20(48)*abb20(23)
      abb20(133)=abb20(137)*abb20(45)
      abb20(42)=-abb20(48)+abb20(42)-abb20(133)
      abb20(42)=abb20(42)*abb20(2)
      abb20(48)=abb20(134)*spbl5k2
      abb20(133)=abb20(139)*spbk7l5
      abb20(48)=-abb20(48)+2.0_ki*abb20(133)
      abb20(23)=abb20(48)*abb20(23)
      abb20(48)=abb20(49)+abb20(50)
      abb20(49)=abb20(30)*spbl5k4*abb20(48)
      abb20(50)=abb20(136)*abb20(45)
      abb20(23)=abb20(42)-abb20(23)-abb20(49)-abb20(50)
      abb20(23)=abb20(23)*abb20(8)
      abb20(23)=abb20(29)-abb20(23)
      abb20(29)=-abb20(23)*abb20(105)
      abb20(42)=-spbl6k4*abb20(32)
      abb20(49)=abb20(42)*abb20(55)
      abb20(50)=abb20(49)*spak1k7
      abb20(62)=abb20(117)*abb20(62)
      abb20(133)=abb20(62)*abb20(47)
      abb20(134)=abb20(67)*spbl6k4
      abb20(136)=abb20(134)*abb20(45)
      abb20(50)=abb20(136)+abb20(50)-abb20(133)
      abb20(50)=abb20(50)*abb20(2)
      abb20(70)=abb20(70)*spbl6k4
      abb20(133)=abb20(57)*abb20(42)*spak1k7
      abb20(62)=abb20(62)*abb20(56)
      abb20(50)=abb20(50)+abb20(62)-abb20(70)-abb20(133)
      abb20(50)=abb20(50)*abb20(2)
      abb20(42)=abb20(42)*abb20(63)
      abb20(42)=abb20(42)-abb20(49)
      abb20(42)=abb20(42)*spak1k7
      abb20(49)=abb20(117)*abb20(68)
      abb20(62)=abb20(65)*spbl6k4
      abb20(62)=abb20(62)-abb20(134)
      abb20(45)=abb20(62)*abb20(45)
      abb20(42)=abb20(50)+abb20(42)-abb20(49)+abb20(45)
      abb20(42)=abb20(42)*abb20(6)
      abb20(45)=-spbl5k4*abb20(32)
      abb20(49)=abb20(45)*abb20(47)
      abb20(50)=abb20(49)*spak1k7
      abb20(62)=abb20(72)*spbl5k4
      abb20(68)=abb20(62)*abb20(54)
      abb20(43)=abb20(43)*spbl5k4
      abb20(70)=abb20(43)*abb20(47)
      abb20(50)=abb20(70)+abb20(50)-abb20(68)
      abb20(50)=abb20(50)*abb20(2)
      abb20(68)=spal5k7*spbl5k4
      abb20(70)=abb20(57)*abb20(68)*abb20(54)
      abb20(72)=abb20(45)*spak1k7
      abb20(43)=abb20(43)+abb20(72)
      abb20(43)=abb20(43)*abb20(56)
      abb20(43)=abb20(50)+abb20(70)-abb20(43)
      abb20(43)=abb20(43)*abb20(2)
      abb20(45)=abb20(45)*abb20(53)
      abb20(45)=abb20(45)-abb20(49)
      abb20(45)=abb20(45)*spak1k7
      abb20(49)=abb20(68)*abb20(63)
      abb20(49)=abb20(49)-abb20(62)
      abb20(49)=abb20(49)*abb20(54)
      abb20(50)=spbl5k4*abb20(60)
      abb20(43)=abb20(43)+abb20(50)-abb20(49)+abb20(45)
      abb20(43)=abb20(43)*abb20(8)
      abb20(42)=abb20(42)-abb20(43)
      abb20(43)=abb20(42)*abb20(75)
      abb20(29)=abb20(43)+abb20(29)
      abb20(29)=abb20(29)*abb20(19)
      abb20(43)=abb20(92)*spbk4k2
      abb20(45)=abb20(43)*spbl5k1
      abb20(49)=-spbl5k4*abb20(82)
      abb20(45)=abb20(45)+abb20(49)
      abb20(45)=abb20(45)*spak1k7
      abb20(50)=abb20(43)*abb20(93)
      abb20(45)=abb20(45)+abb20(50)
      abb20(45)=abb20(45)*abb20(2)
      abb20(50)=abb20(91)*spbk4k2
      abb20(53)=abb20(50)*spbl5k1
      abb20(54)=spbl5k4*abb20(80)
      abb20(60)=abb20(54)*c3
      abb20(53)=abb20(53)-abb20(60)
      abb20(53)=abb20(53)*spak1k7
      abb20(60)=abb20(50)*abb20(93)
      abb20(45)=abb20(45)-abb20(53)-abb20(60)
      abb20(45)=abb20(45)*abb20(2)
      abb20(53)=abb20(54)*abb20(38)
      abb20(27)=abb20(27)*spbk4k2
      abb20(54)=abb20(89)*spbk4k2
      abb20(60)=abb20(27)-abb20(54)
      abb20(62)=abb20(60)*spak1k2
      abb20(63)=spbl5k1*abb20(62)
      abb20(49)=-abb20(53)+abb20(63)-abb20(49)
      abb20(49)=abb20(49)*spak1k7
      abb20(53)=abb20(93)*abb20(62)
      abb20(45)=abb20(45)+abb20(49)+abb20(53)
      abb20(45)=abb20(45)*abb20(8)
      abb20(49)=abb20(43)*spbl6k1
      abb20(53)=-spbl6k4*abb20(82)
      abb20(49)=abb20(49)+abb20(53)
      abb20(49)=abb20(49)*spak1k7
      abb20(43)=abb20(43)*abb20(39)
      abb20(43)=abb20(49)-abb20(43)
      abb20(43)=abb20(43)*abb20(2)
      abb20(49)=abb20(50)*spbl6k1
      abb20(63)=spbl6k4*abb20(80)
      abb20(68)=abb20(63)*c3
      abb20(49)=abb20(49)-abb20(68)
      abb20(49)=abb20(49)*spak1k7
      abb20(50)=abb20(50)*abb20(39)
      abb20(43)=abb20(43)-abb20(49)+abb20(50)
      abb20(43)=abb20(43)*abb20(2)
      abb20(38)=abb20(63)*abb20(38)
      abb20(49)=spbl6k1*abb20(62)
      abb20(38)=-abb20(38)+abb20(49)-abb20(53)
      abb20(38)=abb20(38)*spak1k7
      abb20(39)=abb20(39)*abb20(62)
      abb20(38)=abb20(43)+abb20(38)-abb20(39)
      abb20(38)=abb20(38)*abb20(6)
      abb20(38)=abb20(45)+abb20(38)
      abb20(39)=-abb20(38)*abb20(76)
      abb20(43)=abb20(95)*spbk4k2
      abb20(45)=abb20(112)*abb20(43)
      abb20(49)=spbk4k2*abb20(111)
      abb20(45)=abb20(45)-abb20(49)
      abb20(45)=abb20(45)*abb20(2)
      abb20(49)=abb20(110)*abb20(43)
      abb20(45)=abb20(45)+abb20(49)
      abb20(49)=-abb20(45)*abb20(115)
      abb20(50)=abb20(135)*abb20(103)
      abb20(53)=abb20(139)*abb20(100)
      abb20(50)=abb20(50)+abb20(53)
      abb20(50)=abb20(50)*abb20(6)
      abb20(53)=abb20(135)*abb20(97)
      abb20(62)=abb20(139)*abb20(95)
      abb20(53)=abb20(53)+abb20(62)
      abb20(53)=abb20(53)*abb20(98)
      abb20(50)=abb20(50)+abb20(53)
      abb20(50)=abb20(50)*abb20(6)
      abb20(53)=abb20(135)*abb20(104)
      abb20(62)=abb20(139)*abb20(107)
      abb20(53)=abb20(53)+abb20(62)
      abb20(53)=abb20(53)*abb20(108)
      abb20(50)=abb20(50)+abb20(53)
      abb20(53)=abb20(50)*abb20(105)
      abb20(49)=abb20(49)+abb20(53)
      abb20(49)=abb20(49)*abb20(19)
      abb20(53)=abb20(54)*abb20(97)
      abb20(62)=abb20(119)*spbk4k2
      abb20(53)=abb20(53)-abb20(62)
      abb20(53)=abb20(53)*abb20(2)
      abb20(60)=abb20(60)*abb20(95)
      abb20(53)=abb20(53)+abb20(60)
      abb20(53)=abb20(53)*abb20(98)
      abb20(60)=abb20(121)*spbk4k2
      abb20(62)=abb20(54)*abb20(11)
      abb20(63)=abb20(62)*abb20(102)
      abb20(60)=abb20(60)-abb20(63)
      abb20(60)=abb20(60)*abb20(2)
      abb20(63)=abb20(27)*abb20(11)
      abb20(62)=abb20(63)-abb20(62)
      abb20(62)=abb20(62)*abb20(99)
      abb20(60)=abb20(62)-abb20(60)
      abb20(60)=abb20(60)*abb20(6)
      abb20(53)=abb20(53)+abb20(60)
      abb20(53)=abb20(53)*abb20(6)
      abb20(60)=abb20(122)*spbk4k2
      abb20(54)=abb20(54)*abb20(12)
      abb20(62)=abb20(54)*abb20(101)
      abb20(60)=abb20(60)-abb20(62)
      abb20(60)=abb20(60)*abb20(2)
      abb20(27)=abb20(27)*abb20(12)
      abb20(27)=abb20(27)-abb20(54)
      abb20(27)=abb20(27)*abb20(106)
      abb20(27)=abb20(27)-abb20(60)
      abb20(27)=abb20(27)*abb20(108)
      abb20(27)=abb20(53)+abb20(27)
      abb20(53)=abb20(27)*abb20(76)
      abb20(49)=abb20(53)+abb20(49)
      abb20(49)=mB*abb20(49)
      abb20(53)=abb20(130)*abb20(43)
      abb20(54)=spbk4k2*abb20(123)
      abb20(43)=abb20(126)*abb20(43)
      abb20(43)=abb20(54)-abb20(43)
      abb20(43)=abb20(43)*abb20(2)
      abb20(43)=abb20(53)-abb20(43)
      abb20(53)=-abb20(43)*abb20(19)*abb20(115)
      abb20(49)=abb20(53)+abb20(49)
      abb20(49)=mB*abb20(49)
      abb20(29)=abb20(49)+abb20(39)+abb20(29)
      abb20(29)=mB*abb20(29)
      abb20(39)=abb20(129)*spbl6k4
      abb20(49)=abb20(116)*spbl6k4
      abb20(39)=abb20(39)-abb20(49)
      abb20(39)=abb20(39)*spbl5k2
      abb20(53)=abb20(128)*spbl5k4
      abb20(54)=abb20(118)*spbl5k4
      abb20(53)=abb20(53)-abb20(54)
      abb20(53)=abb20(53)*spbl6k2
      abb20(39)=abb20(39)-abb20(53)
      abb20(39)=abb20(39)*spak1k7
      abb20(53)=abb20(124)*spbl6k4
      abb20(60)=abb20(125)*spbl5k4
      abb20(53)=abb20(53)-abb20(60)
      abb20(53)=abb20(53)*spak1k7
      abb20(49)=abb20(49)*spbl5k2
      abb20(54)=abb20(54)*spbl6k2
      abb20(49)=abb20(49)-abb20(54)
      abb20(41)=abb20(49)*abb20(41)
      abb20(41)=abb20(53)-abb20(41)
      abb20(41)=abb20(41)*abb20(2)
      abb20(39)=abb20(39)-abb20(41)
      abb20(41)=-abb20(39)*abb20(88)
      abb20(29)=abb20(41)+abb20(29)
      abb20(29)=abb20(29)*abb20(109)
      abb20(41)=abb20(40)*abb20(32)
      abb20(49)=abb20(41)*abb20(55)
      abb20(49)=abb20(49)-abb20(71)
      abb20(49)=abb20(49)*abb20(2)
      abb20(53)=abb20(69)*abb20(44)
      abb20(41)=abb20(41)*abb20(57)
      abb20(41)=abb20(49)-abb20(73)+abb20(53)-abb20(41)
      abb20(41)=abb20(41)*abb20(2)
      abb20(49)=abb20(32)*abb20(64)
      abb20(53)=abb20(65)-abb20(67)
      abb20(53)=abb20(53)*abb20(44)
      abb20(41)=abb20(41)+abb20(49)-abb20(53)-abb20(66)
      abb20(41)=abb20(41)*abb20(6)
      abb20(49)=abb20(35)*abb20(32)
      abb20(47)=abb20(49)*abb20(47)
      abb20(47)=abb20(47)-abb20(52)
      abb20(47)=abb20(47)*abb20(2)
      abb20(52)=abb20(79)*spak1l6
      abb20(49)=abb20(49)*abb20(56)
      abb20(47)=abb20(47)-abb20(77)+abb20(52)-abb20(49)
      abb20(47)=abb20(47)*abb20(2)
      abb20(49)=abb20(32)*abb20(61)
      abb20(44)=abb20(58)*abb20(44)
      abb20(44)=abb20(47)+abb20(49)+abb20(59)-abb20(44)
      abb20(44)=abb20(44)*abb20(8)
      abb20(41)=abb20(41)-abb20(44)
      abb20(44)=-spak1l5*abb20(31)
      abb20(47)=abb20(44)*abb20(20)
      abb20(49)=-spak1l6*abb20(31)
      abb20(52)=abb20(49)*abb20(24)
      abb20(47)=abb20(47)+abb20(52)
      abb20(47)=abb20(47)*spak2k7
      abb20(26)=abb20(26)*abb20(20)
      abb20(25)=abb20(25)*abb20(24)
      abb20(25)=abb20(26)+abb20(25)
      abb20(25)=abb20(25)*abb20(30)
      abb20(26)=-abb20(32)*abb20(31)
      abb20(31)=abb20(26)*abb20(35)
      abb20(25)=-abb20(47)+abb20(25)-abb20(31)
      abb20(25)=abb20(25)*abb20(2)
      abb20(31)=-spak1l5*abb20(51)
      abb20(47)=abb20(31)*abb20(20)
      abb20(52)=-spak1l6*abb20(51)
      abb20(53)=abb20(52)*abb20(24)
      abb20(47)=abb20(47)+abb20(53)
      abb20(47)=abb20(47)*spak2k7
      abb20(24)=abb20(46)*abb20(24)
      abb20(20)=abb20(36)*abb20(20)
      abb20(20)=abb20(24)+abb20(20)
      abb20(20)=abb20(20)*abb20(30)
      abb20(24)=-abb20(32)*abb20(51)
      abb20(30)=abb20(24)*abb20(35)
      abb20(20)=abb20(25)-abb20(30)-abb20(47)-abb20(20)
      abb20(20)=abb20(20)*abb20(8)
      abb20(25)=abb20(34)*abb20(28)
      abb20(30)=abb20(44)*spbl5k2
      abb20(32)=abb20(49)*spbl6k2
      abb20(30)=abb20(30)+abb20(32)
      abb20(30)=abb20(30)*abb20(22)
      abb20(26)=abb20(26)*abb20(40)
      abb20(25)=-abb20(30)+abb20(25)-abb20(26)
      abb20(25)=abb20(25)*abb20(2)
      abb20(26)=abb20(31)*spbl5k2
      abb20(30)=abb20(52)*spbl6k2
      abb20(26)=abb20(26)+abb20(30)
      abb20(22)=abb20(26)*abb20(22)
      abb20(26)=abb20(48)*abb20(28)
      abb20(24)=abb20(24)*abb20(40)
      abb20(22)=abb20(25)-abb20(22)-abb20(26)-abb20(24)
      abb20(22)=abb20(22)*abb20(6)
      abb20(20)=abb20(20)+abb20(22)
      abb20(22)=-abb20(5)*abb20(20)
      abb20(22)=2.0_ki*abb20(41)+abb20(22)
      abb20(22)=abb20(10)*abb20(22)
      abb20(24)=abb20(85)*abb20(40)
      abb20(24)=abb20(24)-abb20(86)
      abb20(24)=abb20(24)*abb20(2)
      abb20(25)=abb20(81)*abb20(40)
      abb20(24)=abb20(24)-abb20(25)
      abb20(24)=abb20(24)*abb20(6)
      abb20(25)=abb20(85)*abb20(35)
      abb20(25)=abb20(25)-abb20(87)
      abb20(25)=abb20(25)*abb20(2)
      abb20(26)=abb20(81)*abb20(35)
      abb20(25)=abb20(25)-abb20(26)
      abb20(25)=abb20(25)*abb20(8)
      abb20(24)=abb20(24)+abb20(25)
      abb20(25)=2.0_ki*abb20(5)
      abb20(26)=abb20(24)*abb20(25)
      abb20(22)=abb20(26)+abb20(22)
      abb20(22)=mB*abb20(22)
      abb20(26)=abb20(120)*abb20(2)
      abb20(26)=abb20(26)+abb20(132)
      abb20(28)=2.0_ki*abb20(10)
      abb20(30)=-abb20(26)*abb20(28)
      abb20(22)=abb20(30)+abb20(22)
      abb20(22)=abb20(22)*abb20(94)
      abb20(23)=-abb20(5)*abb20(23)
      abb20(23)=2.0_ki*abb20(42)+abb20(23)
      abb20(23)=abb20(10)*abb20(23)
      abb20(30)=-abb20(38)*abb20(25)
      abb20(31)=-abb20(45)*abb20(114)
      abb20(32)=abb20(5)*abb20(50)
      abb20(31)=abb20(31)+abb20(32)
      abb20(31)=abb20(10)*abb20(31)
      abb20(25)=abb20(27)*abb20(25)
      abb20(25)=abb20(25)+abb20(31)
      abb20(25)=mB*abb20(25)
      abb20(27)=-abb20(10)*abb20(43)*abb20(114)
      abb20(25)=abb20(27)+abb20(25)
      abb20(25)=mB*abb20(25)
      abb20(23)=abb20(25)+abb20(30)+abb20(23)
      abb20(23)=mB*abb20(23)
      abb20(25)=-abb20(39)*abb20(28)
      abb20(23)=abb20(25)+abb20(23)
      abb20(23)=abb20(23)*abb20(109)
      abb20(25)=abb20(5)*abb20(37)
      abb20(27)=2.0_ki*abb20(74)
      abb20(30)=-abb20(33)*abb20(27)
      abb20(21)=abb20(30)+2.0_ki*abb20(21)+abb20(25)
      abb20(21)=abb20(10)*abb20(21)
      abb20(25)=-abb20(5)*abb20(83)
      abb20(25)=abb20(25)+abb20(84)
      abb20(30)=-abb20(113)*abb20(114)
      abb20(31)=-abb20(5)*abb20(96)
      abb20(30)=abb20(30)+abb20(31)
      abb20(30)=abb20(30)*abb20(19)
      abb20(27)=abb20(90)*abb20(27)
      abb20(27)=abb20(27)+abb20(30)
      abb20(27)=mB*abb20(27)
      abb20(30)=abb20(127)*abb20(19)*abb20(114)
      abb20(27)=abb20(30)+abb20(27)
      abb20(27)=mB*abb20(27)
      abb20(21)=abb20(27)+2.0_ki*abb20(25)+abb20(21)
      abb20(21)=mB*abb20(21)
      abb20(18)=-abb20(18)*abb20(28)
      abb20(18)=abb20(18)+abb20(21)
      abb20(18)=abb20(18)*abb20(109)
      abb20(21)=abb20(41)*abb20(75)
      abb20(20)=-abb20(20)*abb20(105)
      abb20(20)=abb20(21)+abb20(20)
      abb20(19)=abb20(20)*abb20(19)
      abb20(20)=abb20(24)*abb20(76)
      abb20(19)=abb20(20)+abb20(19)
      abb20(19)=mB*abb20(19)
      abb20(20)=-abb20(26)*abb20(88)
      abb20(19)=abb20(20)+abb20(19)
      abb20(19)=abb20(19)*abb20(109)
      R2d20=abb20(131)
      rat2 = rat2 + R2d20
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='20' value='", &
          & R2d20, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd20h7