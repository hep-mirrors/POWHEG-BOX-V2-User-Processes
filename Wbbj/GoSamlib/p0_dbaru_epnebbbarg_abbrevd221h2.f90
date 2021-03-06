module     p0_dbaru_epnebbbarg_abbrevd221h2
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(98), public :: abb221
   complex(ki), public :: R2d221
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
      abb221(1)=1.0_ki/(-mB**2+es67)
      abb221(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb221(3)=1.0_ki/(es67-3.0_ki*sqrt(mB**2)**2)
      abb221(4)=sqrt(mB**2)
      abb221(5)=NC**(-1)
      abb221(6)=sqrt2**(-1)
      abb221(7)=es234**(-1)
      abb221(8)=es567**(-1)
      abb221(9)=spbl5k2**(-1)
      abb221(10)=spak2k7**(-1)
      abb221(11)=spak2l6**(-1)
      abb221(12)=spbl6k2**(-1)
      abb221(13)=1.0_ki/(es34+es567-es12-es234)
      abb221(14)=1.0_ki/(sqrt(mB**2)**2)
      abb221(15)=abb221(3)*es67
      abb221(16)=abb221(9)*spak1k2
      abb221(17)=abb221(15)*abb221(16)
      abb221(18)=es712-es12
      abb221(19)=abb221(18)-es71
      abb221(20)=-abb221(17)*abb221(19)
      abb221(21)=abb221(11)*abb221(12)
      abb221(22)=abb221(20)*abb221(21)
      abb221(22)=abb221(22)+abb221(17)
      abb221(23)=abb221(5)*c2
      abb221(24)=deltaOS*spak3k4
      abb221(25)=abb221(23)*abb221(24)
      abb221(26)=abb221(24)*c3
      abb221(25)=abb221(25)-abb221(26)
      abb221(25)=abb221(25)*abb221(5)
      abb221(27)=abb221(24)*c2
      abb221(28)=abb221(25)-abb221(27)
      abb221(22)=-abb221(22)*abb221(28)
      abb221(29)=-NC*abb221(17)
      abb221(30)=abb221(21)*NC
      abb221(20)=-abb221(20)*abb221(30)
      abb221(20)=abb221(29)+abb221(20)
      abb221(20)=abb221(20)*abb221(26)
      abb221(29)=abb221(16)*abb221(3)
      abb221(31)=-abb221(29)*abb221(19)
      abb221(32)=abb221(31)*abb221(21)
      abb221(32)=abb221(32)+abb221(29)
      abb221(28)=abb221(32)*abb221(28)
      abb221(31)=abb221(31)*abb221(30)
      abb221(32)=NC*abb221(29)
      abb221(31)=abb221(32)+abb221(31)
      abb221(26)=abb221(31)*abb221(26)
      abb221(26)=abb221(26)+abb221(28)
      abb221(28)=mB**2
      abb221(31)=3.0_ki*abb221(28)
      abb221(26)=abb221(26)*abb221(31)
      abb221(20)=abb221(26)+abb221(20)+abb221(22)
      abb221(22)=mB**3
      abb221(26)=abb221(7)*spbk3k2**2
      abb221(32)=abb221(22)*abb221(26)
      abb221(20)=abb221(20)*abb221(32)
      abb221(33)=es71-es712
      abb221(34)=spak2l6*spbl6k2
      abb221(35)=es12+abb221(33)+abb221(34)
      abb221(36)=-abb221(15)*abb221(35)
      abb221(37)=c3*deltaOS
      abb221(38)=abb221(36)*abb221(37)
      abb221(39)=spak4l5*spbk4k3
      abb221(40)=abb221(13)*spak1k4
      abb221(41)=abb221(39)*abb221(40)
      abb221(42)=-abb221(41)*abb221(38)
      abb221(43)=abb221(36)*deltaOS
      abb221(44)=abb221(41)*abb221(23)
      abb221(45)=abb221(44)*abb221(43)
      abb221(42)=abb221(42)+abb221(45)
      abb221(42)=abb221(5)*abb221(42)
      abb221(45)=abb221(19)-abb221(34)
      abb221(46)=-abb221(3)*abb221(45)
      abb221(47)=abb221(46)*abb221(37)
      abb221(48)=-abb221(41)*abb221(47)
      abb221(49)=abb221(46)*deltaOS
      abb221(50)=abb221(44)*abb221(49)
      abb221(48)=abb221(48)+abb221(50)
      abb221(48)=abb221(5)*abb221(48)
      abb221(50)=c2*deltaOS
      abb221(51)=abb221(46)*abb221(50)
      abb221(52)=abb221(47)*NC
      abb221(51)=abb221(51)-abb221(52)
      abb221(52)=-abb221(41)*abb221(51)
      abb221(48)=abb221(48)+abb221(52)
      abb221(48)=abb221(48)*abb221(31)
      abb221(52)=abb221(36)*abb221(50)
      abb221(53)=abb221(38)*NC
      abb221(52)=abb221(52)-abb221(53)
      abb221(53)=-abb221(41)*abb221(52)
      abb221(42)=abb221(48)+abb221(42)+abb221(53)
      abb221(48)=c3*NC
      abb221(53)=abb221(48)*abb221(24)
      abb221(25)=abb221(25)+abb221(53)-abb221(27)
      abb221(17)=-abb221(17)*abb221(25)
      abb221(25)=abb221(31)*abb221(29)*abb221(25)
      abb221(17)=abb221(25)+abb221(17)
      abb221(25)=abb221(26)*mB
      abb221(27)=abb221(25)*abb221(4)
      abb221(17)=abb221(17)*abb221(27)
      abb221(17)=2.0_ki*abb221(42)+abb221(17)
      abb221(17)=abb221(4)*abb221(17)
      abb221(17)=abb221(20)+abb221(17)
      abb221(17)=abb221(4)*abb221(17)
      abb221(20)=spak3k4*spbl6k3
      abb221(29)=abb221(20)*spak2l6
      abb221(42)=abb221(29)*abb221(15)
      abb221(53)=abb221(36)*spak2k4
      abb221(42)=abb221(42)+abb221(53)
      abb221(53)=abb221(23)*deltaOS
      abb221(53)=abb221(53)-abb221(37)
      abb221(53)=abb221(53)*abb221(5)
      abb221(50)=abb221(53)-abb221(50)
      abb221(42)=-abb221(42)*abb221(50)
      abb221(53)=NC*spak2k4
      abb221(36)=-abb221(36)*abb221(53)
      abb221(54)=abb221(29)*NC
      abb221(55)=-abb221(15)*abb221(54)
      abb221(36)=abb221(36)+abb221(55)
      abb221(36)=abb221(36)*abb221(37)
      abb221(55)=abb221(46)*spak2k4
      abb221(56)=abb221(29)*abb221(3)
      abb221(55)=abb221(56)-abb221(55)
      abb221(50)=abb221(55)*abb221(50)
      abb221(46)=-abb221(46)*abb221(53)
      abb221(55)=abb221(3)*abb221(54)
      abb221(46)=abb221(46)+abb221(55)
      abb221(37)=abb221(46)*abb221(37)
      abb221(37)=abb221(37)+abb221(50)
      abb221(37)=abb221(37)*abb221(31)
      abb221(36)=abb221(37)+abb221(36)+abb221(42)
      abb221(37)=abb221(7)*spbk3k2
      abb221(36)=abb221(36)*abb221(37)
      abb221(42)=abb221(40)*spbk3k1
      abb221(46)=-abb221(42)*abb221(51)
      abb221(50)=abb221(42)*abb221(23)
      abb221(49)=abb221(50)*abb221(49)
      abb221(47)=-abb221(42)*abb221(47)
      abb221(47)=abb221(47)+abb221(49)
      abb221(47)=abb221(5)*abb221(47)
      abb221(46)=abb221(47)+abb221(46)
      abb221(46)=abb221(46)*abb221(31)
      abb221(47)=-abb221(42)*abb221(52)
      abb221(43)=abb221(50)*abb221(43)
      abb221(38)=-abb221(42)*abb221(38)
      abb221(38)=abb221(38)+abb221(43)
      abb221(38)=abb221(5)*abb221(38)
      abb221(36)=abb221(36)+abb221(46)+abb221(38)+abb221(47)
      abb221(38)=2.0_ki*spak1l5
      abb221(43)=abb221(4)**2
      abb221(36)=abb221(36)*abb221(43)*abb221(38)
      abb221(46)=abb221(48)-c2
      abb221(47)=abb221(23)-c3
      abb221(47)=abb221(47)*abb221(5)
      abb221(49)=abb221(47)+abb221(46)
      abb221(51)=abb221(24)*abb221(3)
      abb221(52)=abb221(51)*abb221(9)
      abb221(55)=spak2l6*spak1k7
      abb221(56)=-abb221(31)*abb221(49)*abb221(52)*abb221(55)
      abb221(15)=abb221(15)*abb221(24)
      abb221(24)=abb221(15)*abb221(9)
      abb221(57)=abb221(49)*abb221(24)*abb221(55)
      abb221(56)=abb221(56)+abb221(57)
      abb221(57)=abb221(27)*spbk7l6
      abb221(56)=abb221(56)*abb221(57)
      abb221(17)=abb221(56)+abb221(17)+abb221(36)
      abb221(36)=abb221(10)*spbk7l6
      abb221(17)=abb221(17)*abb221(36)
      abb221(15)=-abb221(49)*abb221(15)*spbk7k3
      abb221(51)=abb221(31)*abb221(49)*abb221(51)*spbk7k3
      abb221(15)=abb221(51)+abb221(15)
      abb221(51)=abb221(43)*abb221(37)
      abb221(15)=abb221(15)*abb221(38)*abb221(51)
      abb221(24)=-abb221(49)*abb221(24)*spak1l6
      abb221(52)=abb221(31)*abb221(49)*abb221(52)*spak1l6
      abb221(24)=abb221(52)+abb221(24)
      abb221(24)=abb221(24)*abb221(57)
      abb221(15)=abb221(15)+abb221(24)
      abb221(15)=spbk7l6*abb221(15)
      abb221(15)=abb221(15)+abb221(17)
      abb221(17)=TR*abb221(1)*gW
      abb221(17)=i_*abb221(17)**2*abb221(2)*abb221(6)*abb221(8)*CVDU
      abb221(24)=8.0_ki*abb221(17)
      abb221(15)=abb221(15)*abb221(24)
      abb221(52)=2.0_ki*es12
      abb221(56)=abb221(52)-es712
      abb221(56)=abb221(56)*es712
      abb221(18)=-es71+2.0_ki*abb221(18)
      abb221(18)=abb221(18)*es71
      abb221(58)=es12**2
      abb221(18)=abb221(56)+abb221(18)-abb221(58)
      abb221(56)=abb221(18)*abb221(21)
      abb221(33)=abb221(52)+abb221(34)+2.0_ki*abb221(33)
      abb221(52)=abb221(56)-abb221(33)
      abb221(58)=abb221(23)*abb221(40)
      abb221(59)=abb221(40)*c3
      abb221(60)=abb221(58)-abb221(59)
      abb221(60)=abb221(60)*abb221(5)
      abb221(40)=abb221(40)*c2
      abb221(61)=abb221(60)-abb221(40)
      abb221(62)=abb221(61)*spbk3k1*abb221(52)
      abb221(63)=NC*spbk3k1
      abb221(64)=-abb221(33)*abb221(63)
      abb221(65)=abb221(30)*spbk3k1
      abb221(66)=abb221(18)*abb221(65)
      abb221(64)=abb221(64)+abb221(66)
      abb221(64)=abb221(64)*abb221(59)
      abb221(62)=abb221(64)+abb221(62)
      abb221(62)=abb221(62)*abb221(28)
      abb221(56)=abb221(56)*spak2k4
      abb221(64)=abb221(33)*spak2k4
      abb221(66)=abb221(12)*spbl6k3
      abb221(67)=-abb221(19)*abb221(66)
      abb221(68)=spak2l6*spbl6k3
      abb221(67)=abb221(67)+abb221(68)
      abb221(67)=abb221(67)*spak3k4
      abb221(56)=abb221(67)+abb221(56)-abb221(64)
      abb221(68)=abb221(47)-c2
      abb221(56)=-abb221(56)*abb221(68)
      abb221(69)=-abb221(53)*abb221(52)
      abb221(67)=-NC*abb221(67)
      abb221(67)=abb221(67)+abb221(69)
      abb221(67)=c3*abb221(67)
      abb221(56)=abb221(67)+abb221(56)
      abb221(67)=abb221(37)*abb221(28)
      abb221(56)=abb221(56)*abb221(67)
      abb221(69)=es67*abb221(35)
      abb221(70)=abb221(69)*spak2k4
      abb221(71)=abb221(29)*es67
      abb221(70)=abb221(71)-abb221(70)
      abb221(71)=deltaOS*abb221(14)
      abb221(70)=abb221(70)*abb221(71)
      abb221(72)=abb221(45)*spak2k4
      abb221(72)=abb221(72)+abb221(29)
      abb221(70)=abb221(70)+abb221(72)
      abb221(70)=abb221(70)*abb221(68)
      abb221(73)=abb221(53)*abb221(45)
      abb221(73)=abb221(73)+abb221(54)
      abb221(74)=-abb221(69)*abb221(53)
      abb221(75)=es67*abb221(54)
      abb221(74)=abb221(74)+abb221(75)
      abb221(74)=abb221(74)*abb221(71)
      abb221(74)=abb221(74)+abb221(73)
      abb221(74)=c3*abb221(74)
      abb221(70)=abb221(74)+abb221(70)
      abb221(70)=abb221(70)*abb221(37)
      abb221(74)=abb221(71)*c3
      abb221(75)=abb221(72)*abb221(74)
      abb221(72)=abb221(72)*abb221(71)
      abb221(76)=abb221(72)*abb221(23)
      abb221(75)=abb221(75)-abb221(76)
      abb221(75)=abb221(75)*abb221(5)
      abb221(72)=abb221(72)*c2
      abb221(73)=abb221(73)*abb221(74)
      abb221(72)=abb221(75)+abb221(72)-abb221(73)
      abb221(72)=abb221(72)*abb221(37)
      abb221(73)=abb221(59)*spbk3k1
      abb221(50)=abb221(50)-abb221(73)
      abb221(50)=abb221(50)*abb221(5)
      abb221(75)=abb221(42)*c2
      abb221(73)=NC*abb221(73)
      abb221(50)=abb221(50)-abb221(75)+abb221(73)
      abb221(73)=abb221(45)*abb221(71)
      abb221(75)=abb221(73)*abb221(50)
      abb221(72)=abb221(72)+abb221(75)
      abb221(75)=abb221(72)*abb221(43)
      abb221(69)=abb221(69)*abb221(71)
      abb221(45)=abb221(45)-abb221(69)
      abb221(48)=abb221(68)+abb221(48)
      abb221(42)=-abb221(48)*abb221(42)*abb221(45)
      abb221(42)=abb221(75)+abb221(70)+abb221(42)
      abb221(69)=3.0_ki*abb221(43)
      abb221(42)=abb221(42)*abb221(69)
      abb221(42)=abb221(42)+abb221(62)+abb221(56)
      abb221(42)=abb221(42)*abb221(38)
      abb221(56)=abb221(23)*spak3k4
      abb221(62)=abb221(56)*abb221(71)
      abb221(70)=abb221(62)*abb221(16)
      abb221(75)=c3*spak3k4
      abb221(76)=abb221(75)*abb221(71)
      abb221(77)=abb221(76)*abb221(16)
      abb221(70)=abb221(70)-abb221(77)
      abb221(70)=abb221(70)*abb221(5)
      abb221(78)=c2*spak3k4
      abb221(79)=abb221(78)*abb221(71)
      abb221(80)=abb221(79)*abb221(16)
      abb221(81)=abb221(16)*NC
      abb221(82)=abb221(81)*abb221(76)
      abb221(70)=-abb221(70)+abb221(80)-abb221(82)
      abb221(70)=abb221(70)*abb221(27)
      abb221(80)=abb221(59)*abb221(39)
      abb221(44)=abb221(44)-abb221(80)
      abb221(44)=abb221(44)*abb221(5)
      abb221(82)=abb221(41)*c2
      abb221(80)=abb221(80)*NC
      abb221(44)=abb221(44)-abb221(82)+abb221(80)
      abb221(73)=-abb221(73)*abb221(44)
      abb221(70)=-abb221(70)+2.0_ki*abb221(73)
      abb221(73)=3.0_ki*abb221(4)
      abb221(70)=abb221(70)*abb221(73)
      abb221(80)=abb221(62)-abb221(76)
      abb221(80)=abb221(80)*abb221(5)
      abb221(80)=abb221(80)-abb221(79)
      abb221(82)=-abb221(16)*abb221(19)
      abb221(83)=abb221(82)*abb221(21)
      abb221(83)=abb221(83)+abb221(16)
      abb221(83)=abb221(83)*abb221(80)
      abb221(84)=abb221(82)*abb221(30)
      abb221(84)=abb221(84)+abb221(81)
      abb221(84)=abb221(84)*abb221(76)
      abb221(83)=abb221(84)+abb221(83)
      abb221(83)=abb221(83)*abb221(31)
      abb221(84)=4.0_ki*spak3k4
      abb221(85)=abb221(84)*abb221(16)
      abb221(86)=abb221(16)*es67
      abb221(87)=spak3k4*abb221(86)*abb221(71)
      abb221(87)=3.0_ki*abb221(87)
      abb221(85)=abb221(85)+abb221(87)
      abb221(85)=abb221(85)*abb221(68)
      abb221(84)=abb221(81)*abb221(84)
      abb221(87)=NC*abb221(87)
      abb221(84)=abb221(84)+abb221(87)
      abb221(84)=c3*abb221(84)
      abb221(84)=-abb221(83)+abb221(84)+abb221(85)
      abb221(84)=abb221(84)*abb221(25)
      abb221(84)=abb221(84)-abb221(70)
      abb221(84)=abb221(4)*abb221(84)
      abb221(41)=-abb221(48)*abb221(41)*abb221(45)
      abb221(41)=6.0_ki*abb221(41)+abb221(84)
      abb221(41)=abb221(4)*abb221(41)
      abb221(45)=-abb221(86)*abb221(19)
      abb221(48)=abb221(45)*abb221(21)
      abb221(48)=abb221(48)+abb221(86)
      abb221(48)=abb221(48)*abb221(80)
      abb221(45)=abb221(45)*abb221(30)
      abb221(84)=NC*abb221(86)
      abb221(45)=abb221(84)+abb221(45)
      abb221(45)=abb221(45)*abb221(76)
      abb221(45)=abb221(45)+abb221(48)
      abb221(22)=3.0_ki*abb221(22)
      abb221(22)=abb221(22)*abb221(26)
      abb221(45)=abb221(45)*abb221(22)
      abb221(41)=abb221(45)+abb221(41)
      abb221(41)=abb221(4)*abb221(41)
      abb221(45)=abb221(61)*abb221(39)*abb221(52)
      abb221(48)=abb221(39)*NC
      abb221(52)=-abb221(33)*abb221(48)
      abb221(84)=abb221(30)*abb221(39)
      abb221(18)=abb221(18)*abb221(84)
      abb221(18)=abb221(52)+abb221(18)
      abb221(18)=abb221(18)*abb221(59)
      abb221(18)=abb221(18)+abb221(45)
      abb221(18)=abb221(18)*abb221(28)
      abb221(35)=spal6k7*abb221(35)
      abb221(45)=-abb221(35)*abb221(44)
      abb221(52)=-abb221(35)*abb221(50)
      abb221(85)=abb221(35)*spak2k4
      abb221(86)=abb221(29)*spal6k7
      abb221(85)=abb221(86)-abb221(85)
      abb221(85)=-abb221(85)*abb221(68)
      abb221(35)=abb221(35)*abb221(53)
      abb221(86)=-spal6k7*abb221(54)
      abb221(35)=abb221(35)+abb221(86)
      abb221(35)=c3*abb221(35)
      abb221(35)=abb221(35)+abb221(85)
      abb221(35)=abb221(35)*abb221(37)
      abb221(35)=abb221(35)+abb221(52)
      abb221(35)=abb221(35)*abb221(38)
      abb221(52)=spak3k4*abb221(9)
      abb221(85)=abb221(52)*abb221(71)
      abb221(86)=abb221(55)*abb221(85)
      abb221(87)=abb221(86)*abb221(23)
      abb221(88)=abb221(74)*abb221(52)
      abb221(55)=abb221(88)*abb221(55)
      abb221(55)=abb221(87)-abb221(55)
      abb221(55)=abb221(55)*abb221(5)
      abb221(86)=-abb221(86)*abb221(46)
      abb221(55)=abb221(55)-abb221(86)
      abb221(73)=abb221(73)*abb221(25)
      abb221(86)=abb221(43)-es67
      abb221(87)=abb221(73)*abb221(55)*abb221(86)
      abb221(35)=abb221(35)+2.0_ki*abb221(45)+abb221(87)
      abb221(35)=spbk7l6*abb221(35)
      abb221(18)=abb221(35)+abb221(42)+2.0_ki*abb221(18)+abb221(41)
      abb221(18)=abb221(18)*abb221(36)
      abb221(35)=abb221(62)*spbk7k3
      abb221(41)=abb221(76)*spbk7k3
      abb221(35)=abb221(35)-abb221(41)
      abb221(35)=abb221(35)*abb221(5)
      abb221(42)=abb221(79)*spbk7k3
      abb221(45)=NC*spbk7k3
      abb221(87)=abb221(45)*abb221(76)
      abb221(35)=-abb221(35)+abb221(42)-abb221(87)
      abb221(35)=abb221(35)*abb221(51)
      abb221(42)=spak3k4*spbk7k3
      abb221(87)=es67*abb221(42)*abb221(71)
      abb221(89)=abb221(87)+abb221(42)
      abb221(89)=abb221(89)*abb221(68)
      abb221(87)=NC*abb221(87)
      abb221(90)=abb221(42)*NC
      abb221(87)=abb221(90)+abb221(87)
      abb221(87)=c3*abb221(87)
      abb221(87)=abb221(87)+abb221(89)
      abb221(87)=abb221(87)*abb221(37)
      abb221(87)=abb221(87)+abb221(35)
      abb221(87)=abb221(87)*abb221(69)
      abb221(89)=abb221(56)-abb221(75)
      abb221(89)=abb221(89)*abb221(5)
      abb221(91)=abb221(89)-abb221(78)
      abb221(92)=-spbk7k3*abb221(19)
      abb221(93)=abb221(92)*abb221(21)
      abb221(94)=abb221(93)+spbk7k3
      abb221(94)=-abb221(94)*abb221(91)
      abb221(92)=abb221(92)*abb221(30)
      abb221(95)=-abb221(45)-abb221(92)
      abb221(95)=abb221(95)*abb221(75)
      abb221(94)=abb221(95)+abb221(94)
      abb221(94)=abb221(94)*abb221(67)
      abb221(87)=abb221(94)+abb221(87)
      abb221(87)=abb221(87)*abb221(38)
      abb221(94)=abb221(85)*spak1l6
      abb221(95)=abb221(94)*abb221(23)
      abb221(96)=abb221(88)*spak1l6
      abb221(95)=abb221(95)-abb221(96)
      abb221(95)=abb221(95)*abb221(5)
      abb221(94)=-abb221(94)*abb221(46)
      abb221(94)=abb221(95)-abb221(94)
      abb221(73)=-abb221(73)*abb221(94)*abb221(86)
      abb221(86)=abb221(56)*spbk7k3
      abb221(95)=abb221(75)*spbk7k3
      abb221(86)=abb221(86)-abb221(95)
      abb221(86)=abb221(86)*abb221(5)
      abb221(96)=abb221(95)*NC
      abb221(97)=abb221(78)*spbk7k3
      abb221(96)=abb221(86)+abb221(96)-abb221(97)
      abb221(98)=-abb221(37)*abb221(38)*spal6k7*abb221(96)
      abb221(73)=abb221(73)+abb221(98)
      abb221(73)=spbk7l6*abb221(73)
      abb221(73)=abb221(87)+abb221(73)
      abb221(73)=spbk7l6*abb221(73)
      abb221(18)=abb221(73)+abb221(18)
      abb221(17)=4.0_ki*abb221(18)*abb221(17)
      abb221(18)=abb221(56)*abb221(16)
      abb221(56)=abb221(75)*abb221(16)
      abb221(18)=abb221(18)-abb221(56)
      abb221(18)=abb221(18)*abb221(5)
      abb221(73)=abb221(78)*abb221(16)
      abb221(87)=abb221(81)*abb221(75)
      abb221(18)=abb221(18)-abb221(73)+abb221(87)
      abb221(18)=-abb221(83)+4.0_ki*abb221(18)
      abb221(18)=abb221(18)*abb221(25)
      abb221(18)=abb221(18)-abb221(70)
      abb221(18)=abb221(18)*abb221(4)
      abb221(25)=3.0_ki*abb221(57)
      abb221(55)=abb221(55)*abb221(25)
      abb221(18)=abb221(18)+abb221(55)
      abb221(55)=abb221(72)*abb221(69)
      abb221(34)=-abb221(19)+2.0_ki*abb221(34)
      abb221(69)=-abb221(34)*abb221(50)
      abb221(70)=abb221(34)*spak2k4
      abb221(70)=-abb221(70)+2.0_ki*abb221(29)
      abb221(70)=-abb221(70)*abb221(68)
      abb221(72)=abb221(34)*abb221(53)
      abb221(72)=abb221(72)-2.0_ki*abb221(54)
      abb221(72)=c3*abb221(72)
      abb221(70)=abb221(72)+abb221(70)
      abb221(70)=abb221(70)*abb221(37)
      abb221(69)=-abb221(55)+abb221(70)+abb221(69)
      abb221(69)=abb221(69)*abb221(38)
      abb221(34)=-abb221(34)*abb221(44)
      abb221(34)=abb221(69)+2.0_ki*abb221(34)-abb221(18)
      abb221(34)=abb221(34)*abb221(36)
      abb221(35)=3.0_ki*abb221(35)
      abb221(69)=abb221(96)*abb221(37)
      abb221(70)=-abb221(69)-abb221(35)
      abb221(70)=abb221(70)*abb221(38)
      abb221(25)=abb221(94)*abb221(25)
      abb221(70)=abb221(70)+abb221(25)
      abb221(70)=spbk7l6*abb221(70)
      abb221(34)=abb221(70)+abb221(34)
      abb221(34)=abb221(34)*abb221(24)
      abb221(70)=-abb221(33)*abb221(50)
      abb221(29)=abb221(64)-abb221(29)
      abb221(29)=abb221(29)*abb221(68)
      abb221(64)=abb221(33)*abb221(53)
      abb221(54)=abb221(64)-abb221(54)
      abb221(54)=c3*abb221(54)
      abb221(29)=abb221(54)+abb221(29)
      abb221(29)=abb221(29)*abb221(37)
      abb221(29)=-abb221(55)+abb221(29)+abb221(70)
      abb221(29)=abb221(29)*abb221(38)
      abb221(33)=-abb221(33)*abb221(44)
      abb221(18)=abb221(29)+2.0_ki*abb221(33)-abb221(18)
      abb221(18)=abb221(18)*abb221(36)
      abb221(29)=-2.0_ki*abb221(69)-abb221(35)
      abb221(29)=abb221(29)*abb221(38)
      abb221(25)=abb221(29)+abb221(25)
      abb221(25)=spbk7l6*abb221(25)
      abb221(18)=abb221(25)+abb221(18)
      abb221(18)=abb221(18)*abb221(24)
      abb221(25)=abb221(19)*abb221(21)
      abb221(25)=abb221(25)-1.0_ki
      abb221(29)=spbk3k1*abb221(25)
      abb221(33)=abb221(29)*abb221(60)
      abb221(35)=abb221(29)*abb221(40)
      abb221(54)=abb221(30)*abb221(19)
      abb221(55)=abb221(54)*spbk3k1
      abb221(55)=abb221(55)-abb221(63)
      abb221(64)=abb221(55)*abb221(59)
      abb221(33)=abb221(33)-abb221(35)+abb221(64)
      abb221(33)=abb221(33)*abb221(28)
      abb221(64)=spak2k4*abb221(25)
      abb221(69)=abb221(20)*abb221(12)
      abb221(64)=abb221(69)+abb221(64)
      abb221(70)=abb221(64)*c2
      abb221(72)=abb221(25)*abb221(53)
      abb221(69)=abb221(69)*NC
      abb221(69)=abb221(69)+abb221(72)
      abb221(72)=-c3*abb221(69)
      abb221(47)=-abb221(64)*abb221(47)
      abb221(47)=abb221(47)+abb221(70)+abb221(72)
      abb221(47)=abb221(47)*abb221(67)
      abb221(33)=abb221(33)+abb221(47)
      abb221(47)=abb221(59)*abb221(71)
      abb221(55)=-abb221(55)*abb221(47)
      abb221(58)=abb221(58)*abb221(71)
      abb221(58)=abb221(58)-abb221(47)
      abb221(58)=abb221(58)*abb221(5)
      abb221(29)=-abb221(29)*abb221(58)
      abb221(35)=abb221(71)*abb221(35)
      abb221(29)=abb221(29)+abb221(35)+abb221(55)
      abb221(29)=abb221(29)*abb221(31)
      abb221(35)=abb221(71)*abb221(23)
      abb221(35)=-abb221(74)+abb221(35)
      abb221(35)=abb221(5)*abb221(64)*abb221(35)
      abb221(55)=-abb221(71)*abb221(70)
      abb221(64)=abb221(69)*abb221(74)
      abb221(35)=abb221(35)+abb221(55)+abb221(64)
      abb221(35)=abb221(35)*abb221(31)
      abb221(55)=-spak2k4*abb221(49)
      abb221(35)=abb221(35)+abb221(55)
      abb221(35)=abb221(35)*abb221(37)
      abb221(29)=abb221(35)+abb221(29)+abb221(50)
      abb221(29)=abb221(29)*abb221(43)
      abb221(29)=2.0_ki*abb221(33)+abb221(29)
      abb221(29)=abb221(29)*abb221(38)
      abb221(33)=abb221(54)*abb221(39)
      abb221(33)=abb221(33)-abb221(48)
      abb221(35)=-abb221(33)*abb221(47)
      abb221(25)=abb221(39)*abb221(25)
      abb221(47)=-abb221(25)*abb221(58)
      abb221(40)=abb221(25)*abb221(40)
      abb221(54)=abb221(71)*abb221(40)
      abb221(35)=abb221(47)+abb221(54)+abb221(35)
      abb221(35)=abb221(35)*abb221(31)
      abb221(35)=abb221(35)+abb221(44)
      abb221(47)=abb221(21)*abb221(16)
      abb221(54)=abb221(47)*abb221(80)
      abb221(55)=abb221(30)*abb221(77)
      abb221(54)=abb221(55)+abb221(54)
      abb221(22)=abb221(4)*abb221(22)
      abb221(54)=abb221(54)*abb221(22)
      abb221(35)=2.0_ki*abb221(35)+abb221(54)
      abb221(35)=abb221(4)*abb221(35)
      abb221(54)=abb221(11)*abb221(82)*abb221(12)**2
      abb221(16)=abb221(16)*abb221(12)
      abb221(16)=abb221(16)+abb221(54)
      abb221(16)=abb221(80)*abb221(16)*abb221(11)
      abb221(54)=NC*abb221(54)
      abb221(55)=abb221(12)*abb221(81)
      abb221(54)=abb221(55)+abb221(54)
      abb221(54)=abb221(11)*abb221(54)*abb221(76)
      abb221(16)=abb221(54)+abb221(16)
      abb221(16)=abb221(16)*abb221(31)
      abb221(47)=-abb221(47)*abb221(91)
      abb221(54)=-abb221(30)*abb221(56)
      abb221(47)=abb221(54)+abb221(47)
      abb221(16)=2.0_ki*abb221(47)+abb221(16)
      abb221(16)=abb221(16)*abb221(32)
      abb221(16)=abb221(16)+abb221(35)
      abb221(16)=abb221(4)*abb221(16)
      abb221(25)=abb221(25)*abb221(60)
      abb221(32)=abb221(33)*abb221(59)
      abb221(25)=abb221(25)-abb221(40)+abb221(32)
      abb221(25)=abb221(25)*abb221(28)
      abb221(32)=abb221(12)*spak1k7
      abb221(33)=abb221(88)*abb221(32)
      abb221(32)=abb221(32)*abb221(85)
      abb221(23)=-abb221(23)*abb221(32)
      abb221(23)=abb221(33)+abb221(23)
      abb221(23)=abb221(5)*abb221(23)
      abb221(32)=-abb221(32)*abb221(46)
      abb221(23)=abb221(23)+abb221(32)
      abb221(22)=abb221(22)*spbk7l6
      abb221(23)=abb221(23)*abb221(22)
      abb221(16)=abb221(23)+abb221(29)+4.0_ki*abb221(25)+abb221(16)
      abb221(16)=abb221(16)*abb221(36)
      abb221(23)=-abb221(21)*abb221(41)
      abb221(25)=abb221(21)*spbk7k3
      abb221(29)=abb221(62)*abb221(25)
      abb221(23)=abb221(23)+abb221(29)
      abb221(23)=abb221(5)*abb221(23)
      abb221(25)=-abb221(79)*abb221(25)
      abb221(29)=abb221(30)*abb221(41)
      abb221(23)=abb221(23)+abb221(25)+abb221(29)
      abb221(23)=abb221(23)*abb221(31)*abb221(51)
      abb221(25)=-abb221(86)+abb221(97)
      abb221(25)=abb221(21)*abb221(25)
      abb221(29)=-abb221(30)*abb221(95)
      abb221(25)=abb221(29)+abb221(25)
      abb221(25)=abb221(25)*abb221(67)
      abb221(23)=2.0_ki*abb221(25)+abb221(23)
      abb221(23)=abb221(23)*abb221(38)
      abb221(22)=abb221(22)*abb221(21)*abb221(94)
      abb221(22)=abb221(23)+abb221(22)
      abb221(22)=spbk7l6*abb221(22)
      abb221(16)=abb221(22)+abb221(16)
      abb221(16)=abb221(16)*abb221(24)
      abb221(22)=spak2l6*spbk7k2
      abb221(23)=abb221(22)*abb221(44)
      abb221(25)=abb221(22)*abb221(50)
      abb221(22)=-abb221(53)*abb221(22)
      abb221(29)=spak3k4*spak2l6
      abb221(31)=abb221(29)*abb221(45)
      abb221(22)=abb221(22)+abb221(31)
      abb221(22)=c3*abb221(22)
      abb221(29)=abb221(29)*spbk7k3
      abb221(31)=spak2k4*spbk7k2
      abb221(32)=abb221(31)*spak2l6
      abb221(29)=abb221(29)-abb221(32)
      abb221(29)=abb221(29)*abb221(68)
      abb221(22)=abb221(22)+abb221(29)
      abb221(22)=abb221(22)*abb221(37)
      abb221(22)=abb221(22)+abb221(25)
      abb221(22)=spak1l5*abb221(22)
      abb221(22)=abb221(22)+abb221(23)
      abb221(23)=abb221(36)*abb221(24)
      abb221(22)=abb221(22)*abb221(23)
      abb221(25)=spbl6k2*abb221(44)
      abb221(29)=spbl6k2*abb221(50)
      abb221(32)=spak2k4*spbl6k2
      abb221(32)=abb221(32)-abb221(20)
      abb221(33)=-abb221(32)*abb221(68)
      abb221(35)=abb221(53)*spbl6k2
      abb221(20)=abb221(20)*NC
      abb221(35)=abb221(35)-abb221(20)
      abb221(36)=abb221(35)*c3
      abb221(33)=-abb221(36)+abb221(33)
      abb221(33)=abb221(33)*abb221(37)
      abb221(29)=abb221(33)+abb221(29)
      abb221(33)=spak1l5*abb221(29)
      abb221(33)=abb221(33)+abb221(25)
      abb221(33)=spbk7l6*abb221(33)*abb221(24)
      abb221(29)=abb221(29)*abb221(43)
      abb221(36)=abb221(19)*abb221(11)
      abb221(40)=abb221(36)-spbl6k2
      abb221(41)=abb221(61)*spbk3k1*abb221(40)
      abb221(45)=abb221(40)*abb221(59)
      abb221(46)=abb221(63)*abb221(45)
      abb221(41)=abb221(46)+abb221(41)
      abb221(41)=abb221(41)*abb221(28)
      abb221(46)=-abb221(53)*abb221(36)
      abb221(35)=abb221(46)+abb221(35)
      abb221(35)=c3*abb221(35)
      abb221(36)=abb221(36)*spak2k4
      abb221(36)=abb221(36)-abb221(32)
      abb221(36)=-abb221(36)*abb221(68)
      abb221(35)=abb221(35)+abb221(36)
      abb221(35)=abb221(35)*abb221(67)
      abb221(29)=abb221(29)+abb221(41)+abb221(35)
      abb221(29)=spak1l5*abb221(29)
      abb221(25)=abb221(25)*abb221(43)
      abb221(35)=abb221(61)*abb221(39)*abb221(40)
      abb221(36)=abb221(48)*abb221(45)
      abb221(35)=abb221(36)+abb221(35)
      abb221(35)=abb221(35)*abb221(28)
      abb221(25)=abb221(29)+abb221(35)+abb221(25)
      abb221(29)=spbl6k2*spal6k7
      abb221(35)=-abb221(29)*abb221(44)
      abb221(36)=-abb221(29)*abb221(50)
      abb221(32)=abb221(68)*spal6k7*abb221(32)
      abb221(29)=abb221(53)*abb221(29)
      abb221(20)=-spal6k7*abb221(20)
      abb221(20)=abb221(29)+abb221(20)
      abb221(20)=c3*abb221(20)
      abb221(20)=abb221(20)+abb221(32)
      abb221(20)=abb221(20)*abb221(37)
      abb221(20)=abb221(20)+abb221(36)
      abb221(20)=abb221(20)*abb221(38)
      abb221(29)=abb221(27)*abb221(49)*abb221(52)*spak1k7
      abb221(20)=abb221(20)+2.0_ki*abb221(35)+abb221(29)
      abb221(20)=spbk7l6*abb221(20)
      abb221(20)=2.0_ki*abb221(25)+abb221(20)
      abb221(20)=abb221(10)*abb221(20)
      abb221(25)=-abb221(38)*abb221(67)*abb221(11)*abb221(96)
      abb221(29)=abb221(21)*abb221(91)
      abb221(30)=abb221(75)*abb221(30)
      abb221(29)=abb221(30)+abb221(29)
      abb221(26)=spbk7l6*spak1l5*abb221(29)*abb221(28)*abb221(26)
      abb221(20)=abb221(20)+abb221(25)+abb221(26)
      abb221(20)=abb221(20)*abb221(24)
      abb221(25)=spbk7k2*abb221(66)
      abb221(26)=abb221(25)+abb221(93)
      abb221(26)=abb221(26)*spak3k4
      abb221(19)=-spbk7k2*abb221(19)
      abb221(21)=abb221(19)*abb221(21)
      abb221(29)=abb221(21)*spak2k4
      abb221(26)=abb221(26)-abb221(29)-abb221(31)
      abb221(26)=abb221(26)*abb221(68)
      abb221(21)=abb221(21)+spbk7k2
      abb221(29)=-abb221(53)*abb221(21)
      abb221(25)=NC*abb221(25)
      abb221(25)=abb221(25)+abb221(92)
      abb221(25)=spak3k4*abb221(25)
      abb221(25)=abb221(25)+abb221(29)
      abb221(25)=c3*abb221(25)
      abb221(25)=abb221(25)+abb221(26)
      abb221(25)=abb221(25)*abb221(67)
      abb221(26)=-spbk7k2*abb221(50)
      abb221(29)=abb221(31)-abb221(42)
      abb221(30)=abb221(29)*abb221(68)
      abb221(31)=spbk7k2*abb221(53)
      abb221(31)=abb221(31)-abb221(90)
      abb221(31)=c3*abb221(31)
      abb221(30)=abb221(31)+abb221(30)
      abb221(30)=abb221(30)*abb221(37)
      abb221(26)=abb221(30)+abb221(26)
      abb221(26)=abb221(26)*abb221(43)
      abb221(30)=abb221(61)*spbk3k1*abb221(21)
      abb221(31)=abb221(19)*abb221(65)
      abb221(32)=spbk7k2*abb221(63)
      abb221(31)=abb221(32)+abb221(31)
      abb221(31)=abb221(31)*abb221(59)
      abb221(30)=abb221(31)+abb221(30)
      abb221(30)=abb221(30)*abb221(28)
      abb221(25)=abb221(26)+abb221(30)+abb221(25)
      abb221(25)=spak1l5*abb221(25)
      abb221(26)=-abb221(43)*spbk7k2*abb221(44)
      abb221(21)=abb221(61)*abb221(39)*abb221(21)
      abb221(19)=abb221(19)*abb221(84)
      abb221(30)=spbk7k2*abb221(48)
      abb221(19)=abb221(30)+abb221(19)
      abb221(19)=abb221(19)*abb221(59)
      abb221(19)=abb221(19)+abb221(21)
      abb221(19)=abb221(19)*abb221(28)
      abb221(19)=abb221(25)+abb221(19)+abb221(26)
      abb221(21)=spal6k7*spbk7k2
      abb221(25)=abb221(21)*abb221(44)
      abb221(26)=-abb221(68)*spal6k7*abb221(29)
      abb221(29)=-abb221(53)*abb221(21)
      abb221(30)=spal6k7*abb221(90)
      abb221(29)=abb221(29)+abb221(30)
      abb221(29)=c3*abb221(29)
      abb221(26)=abb221(29)+abb221(26)
      abb221(29)=abb221(75)*NC
      abb221(29)=abb221(89)+abb221(29)-abb221(78)
      abb221(28)=spbk3k2*abb221(28)*abb221(12)*abb221(29)
      abb221(26)=2.0_ki*abb221(26)+abb221(28)
      abb221(26)=abb221(26)*abb221(37)
      abb221(21)=abb221(21)*abb221(50)
      abb221(21)=2.0_ki*abb221(21)+abb221(26)
      abb221(21)=spak1l5*abb221(21)
      abb221(26)=abb221(27)*abb221(49)*abb221(52)*spak1l6
      abb221(21)=abb221(21)+2.0_ki*abb221(25)+abb221(26)
      abb221(21)=spbk7l6*abb221(21)
      abb221(19)=2.0_ki*abb221(19)+abb221(21)
      abb221(19)=abb221(19)*abb221(24)*abb221(10)
      abb221(21)=spak1l5*abb221(29)*abb221(51)*abb221(23)
      abb221(23)=abb221(57)*abb221(24)
      abb221(24)=-abb221(23)*abb221(52)*abb221(49)
      abb221(23)=-abb221(10)*abb221(23)*abb221(49)*abb221(52)*spak2l6
      R2d221=abb221(15)
      rat2 = rat2 + R2d221
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='221' value='", &
          & R2d221, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd221h2
