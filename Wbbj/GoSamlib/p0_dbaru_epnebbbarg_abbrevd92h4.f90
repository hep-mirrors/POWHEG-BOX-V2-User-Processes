module     p0_dbaru_epnebbbarg_abbrevd92h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(86), public :: abb92
   complex(ki), public :: R2d92
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
      abb92(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb92(2)=1.0_ki/(-es71+es56-es567+es234)
      abb92(3)=NC**(-1)
      abb92(4)=sqrt2**(-1)
      abb92(5)=es234**(-1)
      abb92(6)=spbk7k2**(-1)
      abb92(7)=spbl6k2**(-1)
      abb92(8)=spak2l5**(-1)
      abb92(9)=spbl5k2**(-1)
      abb92(10)=spak2l6**(-1)
      abb92(11)=sqrt(mB**2)
      abb92(12)=TR*gW
      abb92(12)=abb92(12)**2*abb92(6)*i_*CVDU*abb92(5)*abb92(4)*abb92(2)*abb92(&
      &1)
      abb92(13)=abb92(12)*spak1l5
      abb92(14)=spbk3k2**2
      abb92(15)=abb92(13)*abb92(14)
      abb92(16)=abb92(3)**2
      abb92(17)=abb92(15)*abb92(16)
      abb92(18)=mB**3
      abb92(19)=abb92(17)*abb92(18)
      abb92(20)=abb92(18)*abb92(15)
      abb92(19)=abb92(19)+abb92(20)
      abb92(21)=spak3k4*c4
      abb92(22)=abb92(19)*abb92(21)
      abb92(23)=2.0_ki*c1
      abb92(23)=abb92(23)*abb92(3)
      abb92(24)=abb92(23)*spak3k4
      abb92(25)=abb92(24)*abb92(15)
      abb92(26)=abb92(25)*abb92(18)
      abb92(22)=abb92(22)-abb92(26)
      abb92(27)=spbk2k1*abb92(7)
      abb92(28)=abb92(22)*abb92(27)
      abb92(29)=spak1l6*spbk2k1
      abb92(30)=abb92(29)*abb92(21)
      abb92(14)=abb92(14)*abb92(12)
      abb92(18)=abb92(18)*abb92(14)
      abb92(31)=abb92(16)+1.0_ki
      abb92(32)=abb92(18)*abb92(31)
      abb92(33)=abb92(30)*abb92(32)
      abb92(34)=abb92(18)*abb92(24)
      abb92(35)=abb92(34)*abb92(29)
      abb92(33)=abb92(35)-abb92(33)
      abb92(35)=-abb92(9)*abb92(33)
      abb92(35)=abb92(35)+abb92(28)
      abb92(36)=spak1k7*abb92(9)
      abb92(35)=abb92(35)*abb92(36)
      abb92(37)=abb92(21)*abb92(7)
      abb92(38)=abb92(19)*abb92(37)
      abb92(39)=abb92(24)*abb92(7)
      abb92(20)=abb92(20)*abb92(39)
      abb92(20)=abb92(20)-abb92(38)
      abb92(38)=abb92(21)*spak1l6
      abb92(40)=abb92(32)*abb92(38)
      abb92(41)=abb92(34)*spak1l6
      abb92(40)=abb92(40)-abb92(41)
      abb92(41)=abb92(9)*abb92(40)
      abb92(41)=abb92(41)-abb92(20)
      abb92(41)=spal5k7*abb92(41)
      abb92(42)=spal6k7*abb92(9)
      abb92(43)=abb92(22)*abb92(42)
      abb92(35)=abb92(41)+abb92(43)+abb92(35)
      abb92(35)=abb92(8)*abb92(35)
      abb92(41)=spbl6k2*spal6k7
      abb92(43)=abb92(8)*abb92(9)**2
      abb92(40)=abb92(40)*abb92(43)*abb92(41)
      abb92(35)=abb92(40)+abb92(35)
      abb92(35)=es12*abb92(35)
      abb92(40)=abb92(14)*mB
      abb92(44)=abb92(40)*abb92(16)
      abb92(45)=spak1l5**2
      abb92(46)=abb92(44)*abb92(45)
      abb92(47)=abb92(45)*abb92(40)
      abb92(46)=abb92(46)+abb92(47)
      abb92(48)=abb92(46)*abb92(21)
      abb92(49)=abb92(27)*abb92(48)
      abb92(50)=abb92(45)*abb92(27)
      abb92(51)=abb92(40)*abb92(24)
      abb92(52)=-abb92(51)*abb92(50)
      abb92(53)=abb92(15)*mB
      abb92(54)=abb92(53)*abb92(24)
      abb92(55)=abb92(53)*abb92(31)
      abb92(56)=abb92(55)*abb92(21)
      abb92(54)=abb92(54)-abb92(56)
      abb92(56)=abb92(54)*abb92(29)
      abb92(57)=-abb92(9)*abb92(56)
      abb92(49)=abb92(57)+abb92(49)+abb92(52)
      abb92(49)=spak1k7*abb92(49)
      abb92(52)=abb92(17)+abb92(15)
      abb92(57)=abb92(52)*abb92(38)
      abb92(58)=abb92(25)*spak1l6
      abb92(57)=abb92(58)-abb92(57)
      abb92(57)=abb92(57)*abb92(11)
      abb92(46)=abb92(46)*abb92(37)
      abb92(47)=-abb92(39)*abb92(47)
      abb92(46)=abb92(46)+abb92(47)
      abb92(46)=spbl5k2*abb92(46)
      abb92(46)=abb92(46)-abb92(57)
      abb92(46)=spal5k7*abb92(46)
      abb92(47)=-abb92(45)*abb92(51)
      abb92(47)=abb92(48)+abb92(47)
      abb92(47)=spal6k7*abb92(47)
      abb92(46)=abb92(46)+abb92(47)+abb92(49)
      abb92(46)=spbl5k1*abb92(46)
      abb92(19)=-abb92(19)*abb92(30)
      abb92(47)=mB**2
      abb92(17)=abb92(47)*abb92(17)
      abb92(15)=abb92(47)*abb92(15)
      abb92(17)=abb92(17)+abb92(15)
      abb92(48)=abb92(17)*abb92(30)
      abb92(49)=abb92(25)*abb92(47)
      abb92(58)=-abb92(29)*abb92(49)
      abb92(48)=abb92(48)+abb92(58)
      abb92(48)=abb92(11)*abb92(48)
      abb92(26)=abb92(29)*abb92(26)
      abb92(19)=abb92(48)+abb92(19)+abb92(26)
      abb92(26)=spak2k7*abb92(8)
      abb92(48)=abb92(26)*abb92(9)
      abb92(19)=abb92(19)*abb92(48)
      abb92(58)=abb92(17)*abb92(37)
      abb92(15)=abb92(15)*abb92(39)
      abb92(15)=abb92(15)-abb92(58)
      abb92(58)=-abb92(11)*abb92(15)
      abb92(58)=abb92(58)+abb92(20)
      abb92(59)=abb92(10)*spak2k7
      abb92(58)=abb92(59)*abb92(29)*abb92(58)
      abb92(56)=-spbl6l5*abb92(56)*abb92(42)
      abb92(60)=spbl6k1*spal6k7
      abb92(57)=-abb92(60)*abb92(57)
      abb92(19)=abb92(57)+abb92(56)+abb92(46)+abb92(19)+abb92(58)+abb92(35)
      abb92(19)=8.0_ki*abb92(19)
      abb92(35)=abb92(52)*abb92(21)
      abb92(25)=abb92(35)-abb92(25)
      abb92(35)=abb92(25)*abb92(11)
      abb92(46)=abb92(54)+abb92(35)
      abb92(52)=spal6k7*abb92(46)
      abb92(53)=abb92(39)*abb92(53)
      abb92(55)=abb92(55)*abb92(37)
      abb92(53)=abb92(53)-abb92(55)
      abb92(55)=abb92(53)*spal5k7
      abb92(56)=abb92(55)*spbl5k2
      abb92(52)=abb92(52)-abb92(56)
      abb92(52)=16.0_ki*abb92(52)
      abb92(57)=2.0_ki*abb92(11)
      abb92(25)=abb92(25)*abb92(57)
      abb92(25)=abb92(25)+abb92(54)
      abb92(25)=abb92(25)*spal6k7
      abb92(25)=abb92(25)-abb92(56)
      abb92(56)=16.0_ki*abb92(25)
      abb92(58)=abb92(23)*abb92(13)
      abb92(61)=spbk3k2*abb92(58)
      abb92(62)=abb92(61)*abb92(29)
      abb92(16)=abb92(16)*abb92(13)
      abb92(63)=abb92(16)+abb92(13)
      abb92(64)=spbk3k2*abb92(63)
      abb92(65)=abb92(29)*c4
      abb92(66)=abb92(64)*abb92(65)
      abb92(62)=abb92(62)-abb92(66)
      abb92(62)=abb92(62)*abb92(57)
      abb92(66)=mB*spbk3k2
      abb92(67)=abb92(16)*abb92(66)
      abb92(68)=abb92(13)*abb92(66)
      abb92(67)=abb92(67)+abb92(68)
      abb92(69)=abb92(65)*abb92(67)
      abb92(70)=abb92(68)*abb92(23)
      abb92(71)=abb92(70)*abb92(29)
      abb92(62)=abb92(62)+abb92(69)-abb92(71)
      abb92(69)=spak4k7*abb92(62)
      abb92(71)=abb92(64)*c4
      abb92(71)=abb92(71)-abb92(61)
      abb92(71)=abb92(71)*abb92(11)
      abb92(72)=abb92(67)*c4
      abb92(70)=abb92(72)-abb92(70)
      abb92(71)=abb92(71)-abb92(70)
      abb92(73)=2.0_ki*spal5l6
      abb92(71)=abb92(71)*abb92(73)
      abb92(66)=abb92(66)*abb92(12)
      abb92(74)=abb92(45)*abb92(66)
      abb92(75)=abb92(74)*abb92(31)
      abb92(76)=abb92(27)*c4
      abb92(77)=abb92(75)*abb92(76)
      abb92(78)=abb92(23)*abb92(7)
      abb92(79)=abb92(78)*spbk2k1
      abb92(80)=abb92(79)*abb92(74)
      abb92(71)=abb92(71)+abb92(77)-abb92(80)
      abb92(77)=spbl5k2*spak4k7
      abb92(80)=-abb92(77)*abb92(71)
      abb92(69)=abb92(80)+abb92(69)
      abb92(80)=16.0_ki*abb92(69)
      abb92(17)=abb92(17)*abb92(21)
      abb92(17)=abb92(17)-abb92(49)
      abb92(49)=abb92(17)*abb92(57)
      abb92(81)=abb92(42)*abb92(49)
      abb92(28)=abb92(28)*abb92(36)
      abb92(82)=spal5k7*abb92(20)
      abb92(28)=-2.0_ki*abb92(82)+abb92(28)+abb92(81)
      abb92(28)=abb92(8)*abb92(28)
      abb92(81)=abb92(15)*abb92(57)
      abb92(82)=-abb92(81)+abb92(20)
      abb92(82)=spal6k7*abb92(82)
      abb92(83)=-spbl5k2*abb92(22)*abb92(7)**2
      abb92(84)=-spal5k7*abb92(83)
      abb92(82)=abb92(82)+abb92(84)
      abb92(82)=abb92(10)*abb92(82)
      abb92(28)=abb92(82)+abb92(28)-abb92(69)
      abb92(28)=16.0_ki*abb92(28)
      abb92(40)=abb92(44)+abb92(40)
      abb92(30)=abb92(30)*abb92(40)
      abb92(44)=abb92(51)*abb92(29)
      abb92(30)=abb92(44)-abb92(30)
      abb92(30)=abb92(30)*abb92(9)
      abb92(44)=-abb92(27)*abb92(54)
      abb92(30)=abb92(30)-abb92(44)
      abb92(44)=abb92(30)*spak1k7
      abb92(25)=-abb92(44)-abb92(25)
      abb92(25)=16.0_ki*abb92(25)
      abb92(69)=abb92(40)*abb92(38)
      abb92(82)=abb92(51)*spak1l6
      abb92(69)=abb92(82)-abb92(69)
      abb92(82)=abb92(53)*spbl5k2
      abb92(82)=-abb92(82)-abb92(69)
      abb92(82)=spal5k7*abb92(82)
      abb92(84)=-spal6k7*abb92(54)
      abb92(85)=abb92(42)*spbl6k2
      abb92(86)=-abb92(69)*abb92(85)
      abb92(44)=abb92(86)+abb92(82)+abb92(84)-abb92(44)
      abb92(44)=8.0_ki*abb92(44)
      abb92(71)=spbl5k2*abb92(71)
      abb92(62)=abb92(71)-abb92(62)
      abb92(71)=spak2k4*abb92(62)
      abb92(82)=abb92(67)*abb92(38)
      abb92(75)=-abb92(75)*abb92(37)
      abb92(74)=abb92(39)*abb92(74)
      abb92(74)=abb92(75)+abb92(74)
      abb92(74)=spbl5k2*abb92(74)
      abb92(75)=-abb92(64)*abb92(38)
      abb92(61)=abb92(61)*spak3k4
      abb92(84)=spak1l6*abb92(61)
      abb92(75)=abb92(75)+abb92(84)
      abb92(75)=abb92(75)*abb92(57)
      abb92(84)=abb92(24)*abb92(68)
      abb92(86)=-spak1l6*abb92(84)
      abb92(74)=abb92(75)+abb92(74)+abb92(82)+abb92(86)
      abb92(74)=spbk3k1*abb92(74)
      abb92(75)=abb92(67)*abb92(21)
      abb92(75)=abb92(75)-abb92(84)
      abb92(64)=-abb92(64)*abb92(21)
      abb92(61)=abb92(64)+abb92(61)
      abb92(61)=abb92(61)*abb92(57)
      abb92(61)=abb92(61)+abb92(75)
      abb92(61)=spbl5k3*abb92(61)
      abb92(64)=abb92(67)*abb92(37)
      abb92(82)=abb92(39)*abb92(68)
      abb92(64)=abb92(82)-abb92(64)
      abb92(82)=abb92(64)*spbl6k3
      abb92(84)=-spbl5k2*abb92(82)
      abb92(61)=abb92(84)+abb92(61)
      abb92(61)=spal5l6*abb92(61)
      abb92(22)=-abb92(22)+abb92(49)
      abb92(49)=abb92(8)*abb92(9)
      abb92(22)=spak2l6*abb92(22)*abb92(49)
      abb92(84)=-spak2l5*abb92(10)*abb92(83)
      abb92(22)=abb92(84)+abb92(22)+abb92(74)-abb92(81)+abb92(71)+abb92(61)
      abb92(22)=8.0_ki*abb92(22)
      abb92(61)=abb92(69)*abb92(9)
      abb92(61)=abb92(61)-abb92(53)
      abb92(61)=16.0_ki*abb92(61)
      abb92(46)=-spal5k7*abb92(46)
      abb92(69)=-abb92(36)*spbk2k1
      abb92(69)=-abb92(85)+abb92(69)
      abb92(54)=abb92(54)*abb92(69)
      abb92(46)=abb92(46)+abb92(54)
      abb92(46)=8.0_ki*abb92(46)
      abb92(17)=-abb92(17)*abb92(48)
      abb92(15)=abb92(15)*abb92(59)
      abb92(15)=abb92(17)+abb92(15)
      abb92(15)=abb92(11)*abb92(15)
      abb92(17)=abb92(32)*abb92(21)
      abb92(17)=abb92(17)-abb92(34)
      abb92(34)=spal5k7*abb92(17)*abb92(49)
      abb92(17)=abb92(17)*abb92(43)
      abb92(41)=abb92(17)*abb92(41)
      abb92(34)=abb92(34)+abb92(41)
      abb92(34)=spak1k2*abb92(34)
      abb92(41)=abb92(17)*spak1k7
      abb92(48)=es12*abb92(41)
      abb92(15)=abb92(34)+abb92(48)+abb92(15)
      abb92(15)=8.0_ki*abb92(15)
      abb92(34)=abb92(40)*abb92(21)
      abb92(34)=abb92(34)-abb92(51)
      abb92(40)=16.0_ki*abb92(36)
      abb92(34)=abb92(34)*abb92(40)
      abb92(40)=abb92(70)*spak4k7
      abb92(48)=32.0_ki*abb92(40)
      abb92(18)=abb92(39)*abb92(18)
      abb92(32)=abb92(32)*abb92(37)
      abb92(18)=abb92(18)-abb92(32)
      abb92(32)=abb92(18)*abb92(10)
      abb92(39)=abb92(36)*abb92(32)
      abb92(39)=abb92(39)+2.0_ki*abb92(40)-abb92(41)
      abb92(39)=16.0_ki*abb92(39)
      abb92(32)=-abb92(9)*abb92(32)
      abb92(17)=abb92(17)+abb92(32)
      abb92(17)=spak1k2*abb92(17)
      abb92(32)=spak2k4*abb92(70)
      abb92(40)=-spbl5k3*abb92(9)*abb92(75)
      abb92(17)=abb92(82)+abb92(17)+2.0_ki*abb92(32)+abb92(40)
      abb92(17)=8.0_ki*abb92(17)
      abb92(32)=8.0_ki*spak1k7*abb92(35)
      abb92(35)=-spbl5k1*spak1k7
      abb92(40)=-spbl6l5*spal6k7
      abb92(35)=abb92(40)+abb92(35)
      abb92(35)=abb92(53)*abb92(35)
      abb92(20)=abb92(20)*abb92(26)
      abb92(26)=abb92(59)*abb92(83)
      abb92(20)=abb92(20)+abb92(26)+abb92(35)
      abb92(20)=8.0_ki*abb92(20)
      abb92(26)=abb92(72)*abb92(7)
      abb92(35)=abb92(78)*abb92(68)
      abb92(26)=abb92(35)-abb92(26)
      abb92(35)=abb92(26)*abb92(77)
      abb92(40)=abb92(66)*spak1l6
      abb92(41)=abb92(40)*abb92(23)
      abb92(49)=abb92(66)*abb92(31)
      abb92(51)=spak1l6*c4
      abb92(54)=abb92(51)*abb92(49)
      abb92(41)=abb92(41)-abb92(54)
      abb92(54)=abb92(41)*spak4k7
      abb92(35)=abb92(35)-abb92(54)
      abb92(35)=16.0_ki*abb92(35)
      abb92(26)=abb92(26)*spbl5k2
      abb92(26)=abb92(26)-abb92(41)
      abb92(41)=-spak2k4*abb92(26)
      abb92(38)=abb92(38)*abb92(49)
      abb92(40)=abb92(40)*abb92(24)
      abb92(38)=abb92(38)-abb92(40)
      abb92(38)=abb92(38)*abb92(9)
      abb92(38)=abb92(38)+abb92(64)
      abb92(40)=spbl5k3*abb92(38)
      abb92(40)=abb92(41)+abb92(40)
      abb92(40)=8.0_ki*abb92(40)
      abb92(41)=spak3k7*abb92(62)
      abb92(54)=abb92(63)*c4
      abb92(54)=abb92(58)-abb92(54)
      abb92(54)=abb92(54)*abb92(11)
      abb92(58)=abb92(13)*mB
      abb92(64)=abb92(58)*abb92(23)
      abb92(16)=abb92(16)*mB
      abb92(16)=abb92(16)+abb92(58)
      abb92(69)=abb92(16)*c4
      abb92(64)=abb92(64)-abb92(69)
      abb92(54)=abb92(54)-abb92(64)
      abb92(54)=abb92(73)*abb92(77)*abb92(54)
      abb92(23)=abb92(29)*abb92(23)
      abb92(13)=abb92(23)*abb92(13)
      abb92(63)=abb92(63)*abb92(65)
      abb92(13)=abb92(13)-abb92(63)
      abb92(13)=abb92(13)*abb92(57)
      abb92(57)=abb92(23)*abb92(58)
      abb92(63)=abb92(16)*abb92(65)
      abb92(13)=abb92(13)-abb92(57)+abb92(63)
      abb92(13)=abb92(13)*spak4k7
      abb92(12)=abb92(12)*mB
      abb92(57)=abb92(31)*abb92(12)
      abb92(45)=abb92(76)*abb92(57)*abb92(45)
      abb92(12)=abb92(3)*c1*abb92(12)
      abb92(12)=2.0_ki*abb92(12)
      abb92(50)=abb92(50)*abb92(12)
      abb92(45)=abb92(45)-abb92(50)
      abb92(45)=abb92(45)*abb92(77)
      abb92(13)=-abb92(45)+abb92(54)+abb92(13)
      abb92(45)=-spbk4k2*abb92(13)
      abb92(41)=abb92(41)+abb92(45)
      abb92(41)=8.0_ki*abb92(41)
      abb92(45)=spak3k7*abb92(70)
      abb92(50)=abb92(64)*spak4k7
      abb92(54)=-spbk4k2*abb92(50)
      abb92(45)=abb92(45)+abb92(54)
      abb92(45)=16.0_ki*abb92(45)
      abb92(54)=-spak3k7*abb92(26)
      abb92(63)=abb92(78)*abb92(58)
      abb92(64)=abb92(69)*abb92(7)
      abb92(63)=abb92(63)-abb92(64)
      abb92(63)=abb92(63)*abb92(77)
      abb92(51)=abb92(57)*abb92(51)
      abb92(64)=abb92(12)*spak1l6
      abb92(51)=abb92(64)-abb92(51)
      abb92(51)=abb92(51)*spak4k7
      abb92(51)=abb92(63)-abb92(51)
      abb92(63)=-spbk4k2*abb92(51)
      abb92(54)=abb92(54)+abb92(63)
      abb92(54)=8.0_ki*abb92(54)
      abb92(62)=-spak2k7*abb92(62)
      abb92(13)=spbk4k3*abb92(13)
      abb92(13)=abb92(13)+abb92(62)
      abb92(13)=8.0_ki*abb92(13)
      abb92(62)=-spak2k7*abb92(70)
      abb92(50)=spbk4k3*abb92(50)
      abb92(50)=abb92(62)+abb92(50)
      abb92(50)=16.0_ki*abb92(50)
      abb92(26)=spak2k7*abb92(26)
      abb92(51)=spbk4k3*abb92(51)
      abb92(26)=abb92(26)+abb92(51)
      abb92(26)=8.0_ki*abb92(26)
      abb92(30)=8.0_ki*abb92(30)
      abb92(51)=spal6k7*abb92(30)
      abb92(30)=spal5k7*abb92(30)
      abb92(14)=abb92(47)*abb92(14)
      abb92(31)=abb92(31)*abb92(14)
      abb92(21)=abb92(31)*abb92(21)
      abb92(14)=abb92(24)*abb92(14)
      abb92(21)=abb92(21)-abb92(14)
      abb92(24)=-abb92(36)*abb92(27)
      abb92(24)=abb92(24)-abb92(42)
      abb92(21)=abb92(21)*abb92(24)
      abb92(24)=-abb92(31)*abb92(37)
      abb92(14)=abb92(7)*abb92(14)
      abb92(14)=abb92(24)+abb92(14)
      abb92(14)=spal5k7*abb92(14)
      abb92(14)=abb92(14)+abb92(21)
      abb92(14)=abb92(11)*abb92(14)
      abb92(21)=spak2k7*abb92(33)*abb92(43)
      abb92(18)=abb92(9)*abb92(59)*abb92(29)*abb92(18)
      abb92(24)=-spbl5k1*abb92(55)
      abb92(27)=-abb92(53)*abb92(60)
      abb92(14)=abb92(27)+abb92(24)+abb92(18)+abb92(21)+abb92(14)
      abb92(14)=8.0_ki*abb92(14)
      abb92(18)=abb92(23)*abb92(66)
      abb92(21)=abb92(49)*abb92(65)
      abb92(18)=abb92(18)-abb92(21)
      abb92(18)=abb92(18)*abb92(9)
      abb92(21)=abb92(76)*abb92(67)
      abb92(23)=abb92(79)*abb92(68)
      abb92(18)=abb92(18)+abb92(21)-abb92(23)
      abb92(21)=spak4k7*abb92(18)
      abb92(21)=16.0_ki*abb92(21)
      abb92(23)=spak2k4*abb92(18)
      abb92(24)=spbk3k1*abb92(38)
      abb92(23)=abb92(23)+abb92(24)
      abb92(23)=8.0_ki*abb92(23)
      abb92(24)=spak3k7*abb92(18)
      abb92(12)=abb92(12)*abb92(29)
      abb92(27)=abb92(57)*abb92(65)
      abb92(12)=abb92(12)-abb92(27)
      abb92(12)=abb92(12)*abb92(9)
      abb92(27)=abb92(79)*abb92(58)
      abb92(16)=abb92(16)*abb92(76)
      abb92(12)=abb92(12)-abb92(27)+abb92(16)
      abb92(12)=abb92(12)*spak4k7
      abb92(16)=spbk4k2*abb92(12)
      abb92(16)=abb92(24)+abb92(16)
      abb92(16)=8.0_ki*abb92(16)
      abb92(18)=-spak2k7*abb92(18)
      abb92(12)=-spbk4k3*abb92(12)
      abb92(12)=abb92(18)+abb92(12)
      abb92(12)=8.0_ki*abb92(12)
      R2d92=0.0_ki
      rat2 = rat2 + R2d92
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='92' value='", &
          & R2d92, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd92h4