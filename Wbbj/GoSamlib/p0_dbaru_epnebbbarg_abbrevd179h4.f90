module     p0_dbaru_epnebbbarg_abbrevd179h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(87), public :: abb179
   complex(ki), public :: R2d179
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
      abb179(1)=1.0_ki/(-mB**2+es67)
      abb179(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb179(3)=sqrt2**(-1)
      abb179(4)=es234**(-1)
      abb179(5)=es567**(-1)
      abb179(6)=spbl5k2**(-1)
      abb179(7)=spbk7k2**(-1)
      abb179(8)=sqrt(mB**2)
      abb179(9)=spak2l6**(-1)
      abb179(10)=spbl6k2**(-1)
      abb179(11)=spak2l5**(-1)
      abb179(12)=1.0_ki/(es34+es567-es12-es234)
      abb179(13)=c3*NC
      abb179(14)=abb179(13)-c2
      abb179(15)=spak3k4*abb179(14)
      abb179(16)=abb179(15)*mB
      abb179(17)=abb179(6)*spbl6k2
      abb179(18)=abb179(17)*spak1l6
      abb179(19)=-abb179(18)*abb179(16)
      abb179(20)=-spak1l5*abb179(15)
      abb179(21)=abb179(20)*abb179(8)
      abb179(19)=abb179(19)+abb179(21)
      abb179(19)=abb179(19)*abb179(7)
      abb179(22)=abb179(6)*spak1k7
      abb179(23)=-abb179(22)*abb179(15)
      abb179(24)=abb179(23)*mB
      abb179(19)=abb179(19)+abb179(24)
      abb179(25)=abb179(4)*spal6k7
      abb179(26)=gW*TR
      abb179(26)=abb179(3)*abb179(1)*abb179(2)*abb179(5)*CVDU*i_*abb179(26)**2
      abb179(27)=abb179(25)*abb179(26)
      abb179(28)=abb179(27)*spbk3k2**2
      abb179(29)=abb179(19)*abb179(28)
      abb179(30)=4.0_ki*abb179(29)
      abb179(31)=es12+es71-es712
      abb179(32)=2.0_ki*spak1l5
      abb179(33)=abb179(32)*abb179(11)
      abb179(34)=abb179(31)*abb179(33)
      abb179(35)=spal5l6*spak1k2
      abb179(36)=2.0_ki*abb179(11)
      abb179(37)=abb179(35)*abb179(36)
      abb179(38)=abb179(33)*spak2l6
      abb179(37)=spak1l6+abb179(38)-abb179(37)
      abb179(38)=abb179(37)*spbl6k2
      abb179(34)=abb179(34)+abb179(38)
      abb179(34)=abb179(34)*abb179(6)
      abb179(38)=abb179(35)*abb179(9)
      abb179(39)=spak1l6*abb179(9)
      abb179(40)=abb179(39)*spak2l5
      abb179(38)=abb179(38)+abb179(40)
      abb179(40)=abb179(9)*abb179(10)
      abb179(41)=abb179(31)*abb179(40)
      abb179(41)=abb179(41)+1.0_ki
      abb179(41)=abb179(41)*spak1l5
      abb179(34)=abb179(41)+abb179(34)+2.0_ki*abb179(38)
      abb179(38)=mB**2
      abb179(41)=abb179(15)*abb179(38)
      abb179(34)=abb179(34)*abb179(41)
      abb179(42)=abb179(18)+spak1l5
      abb179(43)=3.0_ki*abb179(8)
      abb179(42)=abb179(43)*abb179(42)*abb179(16)
      abb179(34)=abb179(34)+abb179(42)
      abb179(42)=abb179(7)*abb179(8)
      abb179(34)=abb179(34)*abb179(42)
      abb179(44)=spal5k7*spak1k2
      abb179(36)=abb179(44)*abb179(36)
      abb179(36)=abb179(36)-spak1k7
      abb179(45)=abb179(36)*abb179(6)
      abb179(46)=abb179(44)*abb179(40)
      abb179(47)=abb179(40)*spak1k7
      abb179(48)=abb179(47)*spak2l5
      abb179(46)=abb179(46)+abb179(48)
      abb179(46)=2.0_ki*abb179(46)
      abb179(45)=abb179(45)-abb179(46)
      abb179(45)=-abb179(45)*abb179(41)
      abb179(43)=-abb179(24)*abb179(43)
      abb179(43)=abb179(45)+abb179(43)
      abb179(43)=abb179(8)*abb179(43)
      abb179(34)=abb179(43)+abb179(34)
      abb179(34)=spbk3k2*abb179(34)
      abb179(43)=spal5l6*spak1k7
      abb179(45)=spal5k7*spak1l6
      abb179(43)=abb179(43)-abb179(45)
      abb179(45)=-abb179(42)*abb179(15)*spbk7k3*abb179(43)
      abb179(48)=spbl6k2*abb179(45)
      abb179(49)=-spbl6k3*abb179(43)
      abb179(50)=-abb179(8)*abb179(49)*abb179(15)
      abb179(48)=abb179(50)+abb179(48)
      abb179(34)=2.0_ki*abb179(48)+abb179(34)
      abb179(34)=spbk3k2*abb179(34)
      abb179(20)=abb179(20)*spbk7k3
      abb179(48)=-abb179(20)*abb179(42)*spbl6k2
      abb179(50)=spbl6k3*abb179(21)
      abb179(48)=abb179(50)+abb179(48)
      abb179(50)=spal6k7*spbk3k2
      abb179(48)=abb179(48)*abb179(50)
      abb179(34)=abb179(34)+abb179(48)
      abb179(34)=4.0_ki*abb179(34)*abb179(27)
      abb179(48)=2.0_ki*abb179(18)
      abb179(51)=abb179(48)+3.0_ki*spak1l5
      abb179(51)=abb179(51)*abb179(16)
      abb179(21)=abb179(51)+abb179(21)
      abb179(21)=abb179(21)*abb179(7)
      abb179(21)=abb179(21)-2.0_ki*abb179(24)
      abb179(24)=8.0_ki*abb179(28)
      abb179(21)=abb179(21)*abb179(24)
      abb179(28)=-16.0_ki*abb179(29)
      abb179(29)=abb179(13)*spak1k4
      abb179(51)=c2*spak1k4
      abb179(29)=abb179(29)-abb179(51)
      abb179(52)=spbl6k2*spal5l6
      abb179(53)=-abb179(42)*abb179(52)*abb179(29)
      abb179(54)=-spal5k7*abb179(29)
      abb179(55)=abb179(54)*abb179(8)
      abb179(55)=abb179(53)+abb179(55)
      abb179(56)=abb179(27)*spbk3k2
      abb179(57)=abb179(55)*abb179(56)
      abb179(57)=32.0_ki*abb179(57)
      abb179(18)=abb179(18)*abb179(11)
      abb179(18)=abb179(18)-abb179(39)
      abb179(58)=2.0_ki*abb179(6)
      abb179(18)=abb179(18)*abb179(58)
      abb179(58)=abb179(40)*spak1l5
      abb179(18)=abb179(18)-3.0_ki*abb179(58)
      abb179(59)=mB**3
      abb179(18)=abb179(59)*abb179(18)*abb179(15)
      abb179(60)=abb179(15)*abb179(38)*abb179(8)
      abb179(61)=abb179(33)*abb179(6)
      abb179(61)=abb179(61)+abb179(58)
      abb179(61)=abb179(61)*abb179(60)
      abb179(18)=abb179(18)+abb179(61)
      abb179(18)=abb179(7)*abb179(18)
      abb179(61)=-abb179(6)*abb179(15)
      abb179(62)=abb179(61)*abb179(59)
      abb179(63)=abb179(22)*abb179(11)
      abb179(63)=abb179(63)-abb179(47)
      abb179(63)=-abb179(63)*abb179(62)
      abb179(18)=2.0_ki*abb179(63)+abb179(18)
      abb179(18)=spbk3k2*abb179(18)
      abb179(18)=4.0_ki*abb179(55)+abb179(18)
      abb179(55)=8.0_ki*abb179(27)
      abb179(18)=spbk3k2*abb179(18)*abb179(55)
      abb179(19)=-abb179(19)*abb179(24)
      abb179(24)=3.0_ki*abb179(59)
      abb179(59)=abb179(15)*abb179(24)
      abb179(63)=abb179(6)*spak1l6
      abb179(64)=spak1l5*abb179(10)
      abb179(63)=abb179(63)+abb179(64)
      abb179(63)=-abb179(63)*abb179(59)
      abb179(65)=spak2l5*abb179(40)*spak1l6
      abb179(40)=abb179(40)*spak1k2
      abb179(66)=abb179(40)*spal5l6
      abb179(65)=abb179(65)+abb179(66)
      abb179(37)=abb179(37)*abb179(6)
      abb179(37)=abb179(37)+abb179(64)+2.0_ki*abb179(65)
      abb179(37)=abb179(37)*abb179(60)
      abb179(37)=abb179(63)+abb179(37)
      abb179(37)=abb179(7)*abb179(37)
      abb179(23)=abb179(24)*abb179(10)*abb179(23)
      abb179(23)=abb179(23)+abb179(37)
      abb179(23)=spbk3k2*abb179(23)
      abb179(24)=-spak2k4*abb179(43)
      abb179(37)=abb179(14)*abb179(8)
      abb179(43)=-abb179(24)*abb179(37)
      abb179(43)=abb179(43)+abb179(45)
      abb179(23)=2.0_ki*abb179(43)+abb179(23)
      abb179(23)=spbk3k2*abb179(23)
      abb179(43)=abb179(6)*spak1k2
      abb179(45)=abb179(43)*abb179(11)
      abb179(63)=abb179(45)+2.0_ki*abb179(40)
      abb179(62)=abb179(63)*abb179(62)
      abb179(63)=spak1l6*spbk7l6
      abb179(64)=abb179(32)*spbk7l5
      abb179(63)=abb179(63)+abb179(64)
      abb179(64)=abb179(7)*mB
      abb179(63)=abb179(64)*abb179(63)*abb179(61)
      abb179(62)=abb179(62)+abb179(63)
      abb179(62)=spbk3k2*abb179(62)
      abb179(63)=spak1l6*spbl6k3
      abb179(65)=spak1k7*spbk7k3
      abb179(66)=abb179(63)-abb179(65)
      abb179(67)=spak1l5*spbl5k3
      abb179(68)=abb179(66)-abb179(67)
      abb179(68)=abb179(68)*spak3k4
      abb179(69)=spak1k7*spak2k4
      abb179(70)=abb179(69)*spbk7k2
      abb179(71)=spbl6k2*spak2k4
      abb179(72)=abb179(71)*spak1l6
      abb179(68)=abb179(68)+abb179(70)+abb179(72)
      abb179(68)=abb179(68)*abb179(6)
      abb179(70)=abb179(32)*spak2k4
      abb179(68)=abb179(68)+abb179(70)
      abb179(70)=abb179(14)*mB
      abb179(68)=abb179(68)*abb179(70)
      abb179(48)=abb179(48)+spak1l5
      abb179(16)=-abb179(48)*spbk7k3*abb179(16)
      abb179(20)=-abb179(8)*abb179(20)
      abb179(16)=abb179(16)+abb179(20)
      abb179(16)=abb179(7)*abb179(16)
      abb179(20)=-spak2k4*abb179(14)
      abb179(48)=abb179(20)*abb179(8)
      abb179(73)=spak1l5*abb179(48)
      abb179(16)=abb179(62)+abb179(16)+abb179(68)+abb179(73)
      abb179(16)=abb179(16)*abb179(50)
      abb179(16)=abb179(23)+abb179(16)
      abb179(16)=abb179(4)*abb179(16)
      abb179(23)=spak1k4*abb179(12)
      abb179(13)=abb179(23)*abb179(13)
      abb179(51)=abb179(51)*abb179(12)
      abb179(13)=abb179(51)-abb179(13)
      abb179(51)=abb179(13)*abb179(8)
      abb179(62)=spbk4k3*spak4l5
      abb179(68)=spak1l5*spbk3k1
      abb179(62)=abb179(62)+abb179(68)
      abb179(68)=abb179(51)*abb179(62)
      abb179(73)=spbk4k3*spak4k7
      abb179(74)=spak1k7*spbk3k1
      abb179(73)=abb179(73)+abb179(74)
      abb179(74)=abb179(12)*abb179(73)*spbk7k2
      abb179(75)=spbk4k3*spak4l6
      abb179(76)=spak1l6*spbk3k1
      abb179(75)=abb179(75)+abb179(76)
      abb179(76)=abb179(12)*abb179(75)*spbl6k2
      abb179(74)=abb179(74)+abb179(76)
      abb179(74)=abb179(74)*abb179(6)*spak1k4
      abb179(77)=abb179(62)*abb179(23)
      abb179(77)=2.0_ki*abb179(77)
      abb179(74)=abb179(74)+abb179(77)
      abb179(74)=-abb179(74)*abb179(70)
      abb179(74)=abb179(74)-abb179(68)
      abb179(74)=spal6k7*abb179(74)
      abb179(78)=abb179(75)*spal5k7
      abb179(79)=abb179(73)*spal5l6
      abb179(78)=abb179(78)-abb179(79)
      abb179(79)=-abb179(78)*abb179(51)
      abb179(16)=abb179(16)+2.0_ki*abb179(79)+abb179(74)
      abb179(74)=4.0_ki*abb179(26)
      abb179(16)=abb179(16)*abb179(74)
      abb179(79)=-spal5l6*abb179(29)
      abb179(80)=abb179(42)*spbk3k2
      abb179(81)=2.0_ki*abb179(80)
      abb179(82)=abb179(79)*abb179(81)
      abb179(83)=-abb179(6)*abb179(29)
      abb179(84)=abb179(83)*abb179(50)*mB
      abb179(82)=abb179(82)-abb179(84)
      abb179(84)=16.0_ki*abb179(26)
      abb179(84)=abb179(84)*abb179(4)
      abb179(82)=abb179(82)*abb179(84)
      abb179(85)=spak3k4*spbl6k3
      abb179(22)=abb179(85)*abb179(22)
      abb179(69)=abb179(69)*abb179(17)
      abb179(22)=-abb179(69)+2.0_ki*abb179(22)
      abb179(22)=-abb179(22)*abb179(70)
      abb179(66)=abb179(66)+abb179(67)
      abb179(66)=abb179(66)*abb179(17)
      abb179(69)=spak1l5*spbl6k3
      abb179(66)=abb179(66)+abb179(69)
      abb179(66)=abb179(66)*spak3k4
      abb179(69)=abb179(71)*abb179(32)
      abb179(86)=abb179(6)*spbl6k2**2
      abb179(87)=spak2k4*abb179(86)*spak1l6
      abb179(66)=-abb179(66)+abb179(69)+abb179(87)
      abb179(66)=abb179(66)*abb179(70)
      abb179(69)=abb179(85)-abb179(71)
      abb179(37)=abb179(69)*spak1l5*abb179(37)
      abb179(37)=abb179(66)+abb179(37)
      abb179(37)=abb179(7)*abb179(37)
      abb179(66)=abb179(9)*spak1k2
      abb179(69)=abb179(17)*spak1k2
      abb179(71)=abb179(69)*abb179(11)
      abb179(66)=abb179(71)+2.0_ki*abb179(66)
      abb179(38)=abb179(38)*abb179(66)
      abb179(66)=spak1k7*spbk7l6
      abb179(32)=abb179(32)*spbl6l5
      abb179(32)=abb179(38)-abb179(66)+abb179(32)
      abb179(38)=abb179(64)*spbk3k2
      abb179(32)=abb179(38)*abb179(61)*abb179(32)
      abb179(22)=abb179(32)+abb179(22)+abb179(37)
      abb179(22)=abb179(22)*abb179(50)
      abb179(31)=abb179(31)*abb179(47)
      abb179(32)=abb179(39)*spak2k7
      abb179(31)=abb179(32)+abb179(31)
      abb179(31)=abb179(31)*abb179(6)
      abb179(32)=abb179(58)*spak2k7
      abb179(31)=abb179(31)+abb179(32)
      abb179(31)=abb179(31)*abb179(59)
      abb179(33)=abb179(33)*spak2k7
      abb179(33)=abb179(33)-abb179(36)
      abb179(33)=abb179(33)*abb179(6)
      abb179(32)=abb179(33)+abb179(46)+abb179(32)
      abb179(32)=-abb179(32)*abb179(60)
      abb179(31)=abb179(31)+abb179(32)
      abb179(31)=spbk3k2*abb179(7)*abb179(31)
      abb179(32)=abb179(49)*spak3k4
      abb179(24)=abb179(24)*spbl6k2
      abb179(24)=abb179(32)-abb179(24)
      abb179(32)=2.0_ki*abb179(42)
      abb179(24)=abb179(32)*abb179(24)*abb179(14)
      abb179(24)=abb179(24)+abb179(31)
      abb179(24)=spbk3k2*abb179(24)
      abb179(22)=abb179(24)+abb179(22)
      abb179(22)=abb179(4)*abb179(22)
      abb179(23)=abb179(23)*abb179(86)*abb179(75)
      abb179(24)=abb179(77)*spbl6k2
      abb179(23)=abb179(23)+abb179(24)
      abb179(23)=-abb179(23)*abb179(70)
      abb179(24)=-spbl6k2*abb179(68)
      abb179(23)=abb179(23)+abb179(24)
      abb179(23)=abb179(7)*abb179(23)
      abb179(24)=mB*abb179(73)*abb179(17)*abb179(13)
      abb179(23)=abb179(24)+abb179(23)
      abb179(23)=spal6k7*abb179(23)
      abb179(24)=-abb179(32)*abb179(78)*spbl6k2*abb179(13)
      abb179(22)=abb179(22)+abb179(24)+abb179(23)
      abb179(22)=abb179(22)*abb179(74)
      abb179(23)=-abb179(64)*abb179(17)*abb179(29)
      abb179(24)=abb179(50)*abb179(23)
      abb179(31)=abb179(54)*abb179(81)
      abb179(24)=abb179(24)+abb179(31)
      abb179(24)=abb179(24)*abb179(84)
      abb179(31)=abb179(73)*abb179(51)
      abb179(33)=abb179(12)*abb179(62)*spbl5k2
      abb179(33)=abb179(33)-abb179(76)
      abb179(36)=abb179(29)*abb179(42)
      abb179(33)=abb179(33)*abb179(36)
      abb179(31)=abb179(31)+abb179(33)
      abb179(31)=spal6k7*abb179(31)
      abb179(33)=abb179(65)+abb179(63)-abb179(67)
      abb179(33)=abb179(33)*spak3k4
      abb179(37)=spbl5k2*spak1l5*spak2k4
      abb179(33)=-abb179(72)+abb179(37)+abb179(33)
      abb179(33)=-abb179(42)*abb179(33)*abb179(14)
      abb179(37)=abb179(45)-abb179(40)
      abb179(37)=-abb179(80)*abb179(37)*abb179(41)
      abb179(39)=-spak1k7*abb179(48)
      abb179(33)=abb179(37)+abb179(39)+abb179(33)
      abb179(37)=abb179(25)*spbk3k2
      abb179(33)=abb179(33)*abb179(37)
      abb179(31)=abb179(31)+abb179(33)
      abb179(31)=abb179(31)*abb179(74)
      abb179(27)=16.0_ki*abb179(27)
      abb179(29)=abb179(29)*abb179(27)*abb179(80)
      abb179(33)=spbk4k2*abb179(53)
      abb179(39)=abb179(54)*spbk4k2
      abb179(40)=abb179(8)*abb179(39)
      abb179(41)=abb179(52)*abb179(42)
      abb179(45)=-spak1k3*abb179(14)
      abb179(46)=abb179(45)*abb179(41)
      abb179(47)=abb179(45)*spal5k7
      abb179(48)=abb179(8)*abb179(47)
      abb179(46)=abb179(48)+abb179(46)
      abb179(46)=spbk3k2*abb179(46)
      abb179(33)=abb179(46)+abb179(40)+abb179(33)
      abb179(27)=abb179(33)*abb179(27)
      abb179(33)=abb179(42)*spbk4k2*abb179(79)
      abb179(40)=abb179(45)*abb179(80)
      abb179(46)=spal5l6*abb179(40)
      abb179(33)=abb179(33)+abb179(46)
      abb179(46)=-spbk4k2*abb179(83)
      abb179(48)=-spbk3k2*abb179(6)*abb179(45)
      abb179(46)=abb179(46)+abb179(48)
      abb179(48)=spal6k7*mB
      abb179(46)=abb179(46)*abb179(48)
      abb179(33)=2.0_ki*abb179(33)+abb179(46)
      abb179(26)=8.0_ki*abb179(26)
      abb179(46)=abb179(26)*abb179(4)
      abb179(33)=abb179(33)*abb179(46)
      abb179(49)=-spbk4k2*abb179(23)
      abb179(45)=-abb179(38)*abb179(17)*abb179(45)
      abb179(45)=abb179(49)+abb179(45)
      abb179(45)=spal6k7*abb179(45)
      abb179(39)=-abb179(39)*abb179(42)
      abb179(47)=-abb179(47)*abb179(80)
      abb179(39)=abb179(39)+abb179(47)
      abb179(39)=2.0_ki*abb179(39)+abb179(45)
      abb179(39)=abb179(39)*abb179(46)
      abb179(45)=-spbk4k2*abb179(36)
      abb179(40)=abb179(45)+abb179(40)
      abb179(40)=abb179(40)*abb179(55)
      abb179(45)=-spbk4k3*abb179(53)
      abb179(44)=abb179(14)*abb179(44)
      abb179(46)=abb179(8)*abb179(44)
      abb179(47)=abb179(14)*spak1k2
      abb179(41)=abb179(47)*abb179(41)
      abb179(41)=abb179(46)+abb179(41)
      abb179(41)=spbk3k2*abb179(41)
      abb179(46)=abb179(54)*spbk4k3
      abb179(49)=-abb179(8)*abb179(46)
      abb179(41)=abb179(41)+abb179(49)+abb179(45)
      abb179(41)=abb179(41)*abb179(25)
      abb179(45)=abb179(52)*abb179(7)
      abb179(49)=-mB+5.0_ki*abb179(8)
      abb179(50)=abb179(45)*abb179(49)
      abb179(51)=-spbk4k3*abb179(13)
      abb179(52)=abb179(51)*abb179(50)
      abb179(53)=-spal5k7*abb179(51)
      abb179(54)=-abb179(53)*abb179(49)
      abb179(52)=abb179(52)+abb179(54)
      abb179(52)=spal6k7*abb179(52)
      abb179(41)=abb179(52)+4.0_ki*abb179(41)
      abb179(41)=abb179(41)*abb179(74)
      abb179(35)=abb179(80)*abb179(35)*abb179(14)
      abb179(52)=-abb179(79)*abb179(42)*spbk4k3
      abb179(35)=abb179(52)+abb179(35)
      abb179(52)=spbk4k3*abb179(83)
      abb179(43)=-spbk3k2*abb179(43)*abb179(14)
      abb179(43)=abb179(52)+abb179(43)
      abb179(43)=abb179(43)*abb179(48)
      abb179(35)=2.0_ki*abb179(35)+abb179(43)
      abb179(35)=abb179(4)*abb179(35)
      abb179(43)=abb179(32)*spal5l6
      abb179(48)=abb179(48)*abb179(6)
      abb179(43)=abb179(43)-abb179(48)
      abb179(48)=abb179(51)*abb179(43)
      abb179(35)=abb179(35)+abb179(48)
      abb179(35)=abb179(35)*abb179(26)
      abb179(23)=spbk4k3*abb179(23)
      abb179(14)=-abb179(38)*abb179(69)*abb179(14)
      abb179(14)=abb179(23)+abb179(14)
      abb179(14)=spal6k7*abb179(14)
      abb179(23)=abb179(46)*abb179(42)
      abb179(38)=-abb179(44)*abb179(80)
      abb179(23)=abb179(23)+abb179(38)
      abb179(14)=2.0_ki*abb179(23)+abb179(14)
      abb179(14)=abb179(4)*abb179(14)
      abb179(17)=abb179(17)*abb179(64)*spal6k7
      abb179(23)=-abb179(51)*abb179(17)
      abb179(38)=abb179(53)*abb179(32)
      abb179(14)=abb179(14)+abb179(38)+abb179(23)
      abb179(14)=abb179(14)*abb179(26)
      abb179(23)=spbk4k3*abb179(36)
      abb179(36)=abb179(47)*abb179(80)
      abb179(23)=abb179(23)+abb179(36)
      abb179(23)=abb179(23)*abb179(25)
      abb179(25)=abb179(42)*spal6k7
      abb179(36)=abb179(51)*abb179(25)
      abb179(23)=abb179(36)+abb179(23)
      abb179(23)=abb179(23)*abb179(26)
      abb179(36)=abb179(8)-mB
      abb179(38)=spal5k7*abb179(15)*abb179(36)
      abb179(42)=abb179(45)*abb179(36)
      abb179(15)=abb179(15)*abb179(42)
      abb179(15)=abb179(15)+abb179(38)
      abb179(15)=4.0_ki*abb179(15)*abb179(56)
      abb179(13)=-spbk3k1*abb179(13)
      abb179(38)=abb179(13)*abb179(50)
      abb179(44)=-spal5k7*abb179(13)
      abb179(45)=-abb179(44)*abb179(49)
      abb179(38)=abb179(38)+abb179(45)
      abb179(38)=spal6k7*abb179(38)
      abb179(36)=abb179(36)*spal5k7
      abb179(36)=abb179(42)+abb179(36)
      abb179(20)=abb179(37)*abb179(20)*abb179(36)
      abb179(20)=abb179(38)+abb179(20)
      abb179(20)=abb179(20)*abb179(74)
      abb179(36)=abb179(26)*abb179(13)*abb179(43)
      abb179(17)=-abb179(13)*abb179(17)
      abb179(32)=abb179(44)*abb179(32)
      abb179(17)=abb179(32)+abb179(17)
      abb179(17)=abb179(17)*abb179(26)
      abb179(13)=abb179(13)*abb179(26)*abb179(25)
      R2d179=abb179(30)
      rat2 = rat2 + R2d179
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='179' value='", &
          & R2d179, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd179h4
