module     p0_dbaru_epnebbbarg_abbrevd71h3
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(113), public :: abb71
   complex(ki), public :: R2d71
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
      abb71(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb71(2)=es56**(-1)
      abb71(3)=spak2l5**(-1)
      abb71(4)=spak2l6**(-1)
      abb71(5)=spbl5k2**(-1)
      abb71(6)=spbl6k2**(-1)
      abb71(7)=TR*gW
      abb71(7)=abb71(7)**2*i_*c2*CVDU*abb71(2)
      abb71(8)=abb71(7)*spak1k2
      abb71(9)=mB*abb71(1)
      abb71(10)=abb71(9)*abb71(3)
      abb71(11)=abb71(8)*abb71(10)
      abb71(12)=abb71(11)*spbl6k3
      abb71(9)=abb71(9)*abb71(4)
      abb71(13)=abb71(8)*abb71(9)
      abb71(14)=abb71(13)*spbl5k3
      abb71(15)=abb71(12)+abb71(14)
      abb71(16)=spbk7k3*spae7k7
      abb71(17)=abb71(16)*spbe7k2
      abb71(18)=abb71(17)*spak3k4
      abb71(19)=abb71(18)*abb71(15)
      abb71(20)=abb71(13)*spak4k7
      abb71(21)=abb71(20)*spbk7l5
      abb71(22)=abb71(11)*spak4k7
      abb71(23)=abb71(22)*spbk7l6
      abb71(24)=abb71(21)+abb71(23)
      abb71(25)=abb71(17)*abb71(24)
      abb71(19)=abb71(25)+abb71(19)
      abb71(25)=8.0_ki*abb71(19)
      abb71(26)=spbk3k2*abb71(24)
      abb71(27)=spak3k4*spbk3k2
      abb71(28)=abb71(27)*abb71(15)
      abb71(29)=spak4k7*abb71(15)
      abb71(30)=abb71(29)*spbk7k2
      abb71(26)=abb71(30)+abb71(26)+abb71(28)
      abb71(31)=16.0_ki*abb71(26)
      abb71(32)=spak4e7*spbe7k2
      abb71(33)=abb71(32)*abb71(15)
      abb71(34)=16.0_ki*abb71(33)
      abb71(35)=mB**3
      abb71(36)=abb71(35)*abb71(1)
      abb71(37)=abb71(8)*spbk3k2
      abb71(38)=abb71(36)*abb71(37)
      abb71(39)=abb71(3)**2
      abb71(40)=abb71(38)*abb71(39)
      abb71(41)=abb71(16)*spak3k4
      abb71(42)=abb71(40)*abb71(41)
      abb71(43)=abb71(8)*spak4k7
      abb71(44)=abb71(43)*spbk7k2
      abb71(45)=abb71(44)*abb71(36)
      abb71(46)=abb71(45)*abb71(39)
      abb71(47)=-abb71(16)*abb71(46)
      abb71(42)=abb71(42)+abb71(47)
      abb71(42)=spbe7l6*abb71(42)
      abb71(47)=abb71(3)*abb71(4)*abb71(1)
      abb71(48)=abb71(35)*abb71(47)
      abb71(44)=abb71(44)*abb71(48)
      abb71(49)=abb71(44)*abb71(16)
      abb71(37)=abb71(48)*abb71(37)
      abb71(50)=abb71(41)*abb71(37)
      abb71(49)=abb71(49)-abb71(50)
      abb71(50)=-spbe7l5*abb71(49)
      abb71(42)=abb71(42)+abb71(50)
      abb71(42)=abb71(5)*abb71(42)
      abb71(49)=-spbe7l6*abb71(49)
      abb71(50)=abb71(4)**2
      abb71(38)=abb71(38)*abb71(50)
      abb71(41)=abb71(38)*abb71(41)
      abb71(45)=abb71(45)*abb71(50)
      abb71(51)=-abb71(16)*abb71(45)
      abb71(41)=abb71(41)+abb71(51)
      abb71(41)=spbe7l5*abb71(41)
      abb71(41)=abb71(49)+abb71(41)
      abb71(41)=abb71(6)*abb71(41)
      abb71(10)=abb71(7)*abb71(10)
      abb71(49)=abb71(10)*spbe7l6
      abb71(7)=abb71(7)*abb71(9)
      abb71(9)=abb71(7)*spbe7l5
      abb71(51)=abb71(49)+abb71(9)
      abb71(52)=abb71(16)*abb71(51)
      abb71(53)=spbl6k3*spak3k4
      abb71(54)=-spak1l6*abb71(53)
      abb71(55)=spbl5k3*spak3k4
      abb71(56)=-spak1l5*abb71(55)
      abb71(54)=abb71(56)+abb71(54)
      abb71(54)=abb71(52)*abb71(54)
      abb71(56)=abb71(7)*spak4k7
      abb71(57)=abb71(16)*spbe7l5
      abb71(58)=abb71(57)*abb71(56)
      abb71(59)=abb71(10)*spak4k7
      abb71(60)=abb71(16)*spbe7l6
      abb71(61)=abb71(60)*abb71(59)
      abb71(58)=abb71(58)+abb71(61)
      abb71(61)=spbk7l6*spak1l6
      abb71(62)=spbk7l5*spak1l5
      abb71(61)=abb71(61)+abb71(62)
      abb71(58)=-abb71(58)*abb71(61)
      abb71(62)=abb71(27)*abb71(11)
      abb71(63)=abb71(22)*spbk7k2
      abb71(62)=abb71(62)-abb71(63)
      abb71(63)=abb71(62)*abb71(60)
      abb71(64)=abb71(27)*abb71(13)
      abb71(65)=abb71(20)*spbk7k2
      abb71(64)=abb71(64)-abb71(65)
      abb71(65)=abb71(64)*abb71(57)
      abb71(41)=abb71(41)+abb71(42)+abb71(63)+abb71(65)+abb71(58)+abb71(54)
      abb71(41)=4.0_ki*abb71(41)
      abb71(42)=abb71(39)*abb71(1)
      abb71(54)=spbk7l6*abb71(42)
      abb71(58)=spbk7l5*abb71(47)
      abb71(54)=abb71(58)+abb71(54)
      abb71(58)=abb71(43)*abb71(35)*spbk3k2
      abb71(54)=abb71(58)*abb71(54)
      abb71(36)=abb71(36)*abb71(43)
      abb71(63)=spbl6k3*abb71(39)*abb71(36)
      abb71(43)=abb71(48)*abb71(43)
      abb71(48)=spbl5k3*abb71(43)
      abb71(48)=abb71(63)+abb71(48)
      abb71(48)=spbk7k2*abb71(48)
      abb71(63)=-abb71(53)*abb71(40)
      abb71(65)=-abb71(55)*abb71(37)
      abb71(48)=abb71(48)+abb71(63)+abb71(65)+abb71(54)
      abb71(48)=abb71(5)*abb71(48)
      abb71(54)=spbk7l6*abb71(47)
      abb71(63)=abb71(50)*abb71(1)
      abb71(65)=spbk7l5*abb71(63)
      abb71(54)=abb71(65)+abb71(54)
      abb71(54)=abb71(58)*abb71(54)
      abb71(43)=spbl6k3*abb71(43)
      abb71(36)=spbl5k3*abb71(50)*abb71(36)
      abb71(36)=abb71(43)+abb71(36)
      abb71(36)=spbk7k2*abb71(36)
      abb71(43)=-abb71(53)*abb71(37)
      abb71(65)=-abb71(55)*abb71(38)
      abb71(36)=abb71(36)+abb71(43)+abb71(65)+abb71(54)
      abb71(36)=abb71(6)*abb71(36)
      abb71(22)=abb71(22)*spbk3k2
      abb71(43)=spak1l6*spbl5k3*abb71(56)
      abb71(54)=spak1l5*spbl5k3
      abb71(65)=-abb71(59)*abb71(54)
      abb71(43)=abb71(65)+abb71(22)+abb71(43)
      abb71(43)=spbk7l6*abb71(43)
      abb71(20)=abb71(20)*spbk3k2
      abb71(65)=spak1l6*spbl6k3
      abb71(66)=-abb71(56)*abb71(65)
      abb71(67)=spak1l5*spbl6k3*abb71(59)
      abb71(66)=abb71(67)+abb71(20)+abb71(66)
      abb71(66)=spbk7l5*abb71(66)
      abb71(67)=spak3k4*spbl6k3**2
      abb71(68)=abb71(10)*abb71(67)
      abb71(69)=abb71(55)*abb71(7)
      abb71(70)=spbl6k3*abb71(69)
      abb71(68)=abb71(68)+abb71(70)
      abb71(68)=spak1l6*abb71(68)
      abb71(70)=abb71(53)*abb71(10)
      abb71(71)=abb71(70)+abb71(69)
      abb71(71)=abb71(71)*abb71(54)
      abb71(72)=abb71(59)*spbk7k3
      abb71(73)=spbk7l6*abb71(72)
      abb71(74)=abb71(56)*spbk7k3
      abb71(75)=spbk7l5*abb71(74)
      abb71(73)=abb71(73)+abb71(75)
      abb71(73)=spak1k7*abb71(73)
      abb71(75)=abb71(10)*spak1k4
      abb71(76)=spbk7l6*spak4k7
      abb71(77)=abb71(75)*abb71(76)
      abb71(78)=abb71(7)*spak1k4
      abb71(79)=spbk7l5*spak4k7
      abb71(80)=abb71(78)*abb71(79)
      abb71(77)=abb71(77)+abb71(80)
      abb71(77)=spbk4k3*abb71(77)
      abb71(28)=abb71(77)+abb71(73)+abb71(36)+abb71(48)+abb71(66)+abb71(43)+abb&
      &71(71)+abb71(68)+abb71(30)-abb71(28)
      abb71(28)=8.0_ki*abb71(28)
      abb71(30)=abb71(65)+abb71(54)
      abb71(36)=spak1k7*spbk7k3
      abb71(43)=abb71(36)-abb71(30)
      abb71(48)=abb71(43)*spak4e7*abb71(51)
      abb71(54)=abb71(78)*abb71(16)
      abb71(65)=spak4e7*spbk3k2
      abb71(66)=abb71(13)*abb71(65)
      abb71(54)=abb71(54)+abb71(66)
      abb71(54)=abb71(54)*spbe7l5
      abb71(66)=abb71(75)*abb71(16)
      abb71(65)=abb71(11)*abb71(65)
      abb71(65)=abb71(66)+abb71(65)
      abb71(65)=abb71(65)*spbe7l6
      abb71(66)=spbe7l5*spak4e7
      abb71(68)=abb71(66)*abb71(78)
      abb71(71)=spbe7l6*spak4e7
      abb71(73)=abb71(71)*abb71(75)
      abb71(68)=abb71(68)+abb71(73)
      abb71(68)=abb71(68)*spbk4k3
      abb71(73)=abb71(66)*abb71(37)
      abb71(77)=abb71(40)*abb71(71)
      abb71(73)=abb71(73)+abb71(77)
      abb71(73)=abb71(73)*abb71(5)
      abb71(71)=abb71(71)*abb71(37)
      abb71(66)=abb71(38)*abb71(66)
      abb71(66)=abb71(71)+abb71(66)
      abb71(66)=abb71(66)*abb71(6)
      abb71(48)=abb71(54)+abb71(65)+abb71(68)+abb71(73)+abb71(66)+abb71(48)
      abb71(54)=-8.0_ki*abb71(48)
      abb71(65)=abb71(78)*spbl5k3
      abb71(66)=abb71(75)*spbl6k3
      abb71(65)=abb71(65)+abb71(66)
      abb71(66)=16.0_ki*abb71(65)
      abb71(68)=abb71(57)*abb71(78)
      abb71(71)=abb71(60)*abb71(75)
      abb71(68)=abb71(68)+abb71(71)
      abb71(68)=8.0_ki*abb71(68)
      abb71(71)=2.0_ki*spak2e7
      abb71(73)=-abb71(47)*abb71(71)
      abb71(77)=spbl6k2*spak2e7
      abb71(80)=abb71(77)*abb71(5)
      abb71(81)=-abb71(42)*abb71(80)
      abb71(82)=spbl5k2*spak2e7
      abb71(50)=abb71(50)*abb71(6)
      abb71(83)=abb71(50)*abb71(1)
      abb71(84)=-abb71(82)*abb71(83)
      abb71(73)=abb71(84)+abb71(81)+abb71(73)
      abb71(58)=abb71(58)*abb71(73)
      abb71(73)=abb71(59)*abb71(30)
      abb71(22)=-abb71(22)+abb71(73)
      abb71(22)=abb71(22)*abb71(77)
      abb71(73)=abb71(56)*abb71(30)
      abb71(20)=-abb71(20)+abb71(73)
      abb71(20)=abb71(20)*abb71(82)
      abb71(73)=abb71(78)*spbl5k2
      abb71(81)=abb71(75)*spbl6k2
      abb71(73)=abb71(73)+abb71(81)
      abb71(81)=abb71(73)*spak2e7
      abb71(84)=spbk4k3*spak4k7
      abb71(85)=-abb71(81)*abb71(84)
      abb71(20)=abb71(85)+abb71(20)+abb71(22)+abb71(58)
      abb71(20)=spbk7e7*abb71(20)
      abb71(22)=abb71(59)*abb71(61)
      abb71(58)=abb71(10)*spak1l5
      abb71(55)=abb71(58)*abb71(55)
      abb71(70)=abb71(70)*spak1l6
      abb71(55)=-abb71(62)+abb71(55)+abb71(22)+abb71(70)
      abb71(62)=spak2e7*spbe7k3
      abb71(70)=-spbl6k2*abb71(62)*abb71(55)
      abb71(85)=abb71(56)*abb71(61)
      abb71(86)=abb71(7)*spak1l6
      abb71(87)=abb71(86)*abb71(53)
      abb71(69)=abb71(69)*spak1l5
      abb71(64)=-abb71(64)+abb71(85)+abb71(87)+abb71(69)
      abb71(69)=-spbl5k2*abb71(62)*abb71(64)
      abb71(87)=spak3k4*abb71(15)
      abb71(23)=abb71(87)+abb71(23)
      abb71(88)=abb71(21)+abb71(23)
      abb71(88)=abb71(88)*spbe7k3
      abb71(29)=abb71(29)*spbk7e7
      abb71(29)=abb71(88)-abb71(29)
      abb71(88)=spal6e7*spbl6k2
      abb71(89)=spal5e7*spbl5k2
      abb71(88)=abb71(88)+abb71(89)
      abb71(89)=2.0_ki*abb71(88)
      abb71(89)=abb71(29)*abb71(89)
      abb71(90)=spbe7k3*spak3k4
      abb71(91)=abb71(37)*abb71(90)
      abb71(92)=-spbe7k3*abb71(44)
      abb71(91)=abb71(91)+abb71(92)
      abb71(71)=abb71(91)*abb71(71)
      abb71(91)=abb71(40)*abb71(90)
      abb71(92)=-spbe7k3*abb71(46)
      abb71(91)=abb71(91)+abb71(92)
      abb71(80)=abb71(91)*abb71(80)
      abb71(91)=abb71(38)*abb71(90)
      abb71(92)=-spbe7k3*abb71(45)
      abb71(91)=abb71(91)+abb71(92)
      abb71(91)=abb71(6)*abb71(91)*abb71(82)
      abb71(92)=-abb71(77)*abb71(72)
      abb71(93)=-abb71(82)*abb71(74)
      abb71(92)=abb71(92)+abb71(93)
      abb71(93)=spak1k7*spbk7e7
      abb71(92)=abb71(92)*abb71(93)
      abb71(19)=abb71(92)+abb71(91)+abb71(80)+abb71(69)+abb71(70)+abb71(71)+abb&
      &71(19)+abb71(20)+abb71(89)
      abb71(19)=2.0_ki*abb71(19)
      abb71(20)=4.0_ki*abb71(26)
      abb71(26)=abb71(62)*abb71(73)
      abb71(69)=abb71(26)+abb71(33)
      abb71(70)=-4.0_ki*abb71(69)
      abb71(33)=8.0_ki*abb71(33)
      abb71(26)=4.0_ki*abb71(26)
      abb71(48)=-4.0_ki*abb71(48)
      abb71(65)=8.0_ki*abb71(65)
      abb71(69)=-2.0_ki*abb71(69)
      abb71(29)=2.0_ki*abb71(29)
      abb71(60)=abb71(60)*abb71(24)
      abb71(16)=abb71(87)*abb71(16)
      abb71(71)=spbe7l6*abb71(16)
      abb71(60)=abb71(71)+abb71(60)
      abb71(60)=4.0_ki*abb71(60)
      abb71(53)=abb71(76)-abb71(53)
      abb71(14)=abb71(14)*abb71(53)
      abb71(53)=-abb71(11)*abb71(67)
      abb71(21)=-spbl6k3*abb71(21)
      abb71(14)=abb71(21)+abb71(53)+abb71(14)
      abb71(14)=8.0_ki*abb71(14)
      abb71(15)=spak4e7*abb71(15)
      abb71(21)=abb71(15)*spbe7l6
      abb71(53)=-8.0_ki*abb71(21)
      abb71(21)=-4.0_ki*abb71(21)
      abb71(24)=abb71(57)*abb71(24)
      abb71(16)=spbe7l5*abb71(16)
      abb71(16)=abb71(16)+abb71(24)
      abb71(16)=4.0_ki*abb71(16)
      abb71(23)=-spbl5k3*abb71(23)
      abb71(12)=abb71(12)*abb71(79)
      abb71(12)=abb71(12)+abb71(23)
      abb71(12)=8.0_ki*abb71(12)
      abb71(15)=abb71(15)*spbe7l5
      abb71(23)=-8.0_ki*abb71(15)
      abb71(15)=-4.0_ki*abb71(15)
      abb71(24)=abb71(11)*spbk7l6
      abb71(57)=abb71(13)*spbk7l5
      abb71(24)=abb71(24)+abb71(57)
      abb71(57)=spbe7k2*spae7k7
      abb71(67)=abb71(57)*abb71(24)
      abb71(71)=8.0_ki*abb71(67)
      abb71(73)=abb71(11)*spbl6k2
      abb71(76)=abb71(13)*spbl5k2
      abb71(73)=abb71(73)+abb71(76)
      abb71(76)=16.0_ki*abb71(73)
      abb71(51)=-abb71(61)*abb71(51)*spae7k7
      abb71(79)=spbe7l6*spae7k7
      abb71(80)=-abb71(11)*abb71(79)
      abb71(87)=spbe7l5*spae7k7
      abb71(89)=-abb71(13)*abb71(87)
      abb71(80)=abb71(80)+abb71(89)
      abb71(80)=spbk7k2*abb71(80)
      abb71(8)=abb71(35)*abb71(8)
      abb71(35)=abb71(8)*spbk7k2
      abb71(42)=abb71(42)*abb71(35)
      abb71(89)=-abb71(79)*abb71(42)
      abb71(91)=abb71(35)*abb71(47)
      abb71(92)=-abb71(87)*abb71(91)
      abb71(89)=abb71(89)+abb71(92)
      abb71(89)=abb71(5)*abb71(89)
      abb71(63)=-abb71(87)*abb71(35)*abb71(63)
      abb71(92)=-abb71(79)*abb71(91)
      abb71(63)=abb71(92)+abb71(63)
      abb71(63)=abb71(6)*abb71(63)
      abb71(52)=spak1k3*abb71(52)
      abb71(92)=abb71(75)*abb71(79)
      abb71(94)=abb71(78)*abb71(87)
      abb71(92)=abb71(92)+abb71(94)
      abb71(92)=spbk7k4*abb71(92)
      abb71(51)=abb71(92)+abb71(52)+abb71(63)+abb71(89)+abb71(80)+abb71(51)
      abb71(51)=4.0_ki*abb71(51)
      abb71(39)=abb71(39)*abb71(5)
      abb71(52)=spbl6k2*abb71(39)
      abb71(63)=spbl5k2*abb71(50)
      abb71(52)=abb71(63)+abb71(52)
      abb71(63)=abb71(8)*abb71(1)
      abb71(52)=abb71(63)*abb71(52)
      abb71(80)=spbk7l6*abb71(10)
      abb71(89)=spbk7l5*abb71(7)
      abb71(80)=abb71(80)+abb71(89)
      abb71(80)=spak1k7*abb71(80)
      abb71(89)=-spbl6k3*abb71(10)
      abb71(92)=-spbl5k3*abb71(7)
      abb71(89)=abb71(89)+abb71(92)
      abb71(89)=spak1k3*abb71(89)
      abb71(92)=-abb71(86)+abb71(58)
      abb71(92)=spbl6l5*abb71(92)
      abb71(8)=abb71(47)*abb71(8)
      abb71(47)=-spbl6k4*abb71(75)
      abb71(94)=-spbl5k4*abb71(78)
      abb71(47)=abb71(94)+abb71(47)+abb71(92)+abb71(89)+abb71(80)+2.0_ki*abb71(&
      &8)+abb71(73)+abb71(52)
      abb71(47)=8.0_ki*abb71(47)
      abb71(52)=abb71(11)*spbe7l6
      abb71(80)=abb71(13)*spbe7l5
      abb71(52)=abb71(52)+abb71(80)
      abb71(52)=2.0_ki*abb71(52)
      abb71(80)=abb71(52)*abb71(88)
      abb71(49)=-spak1l6*abb71(49)
      abb71(88)=-spbe7l5*abb71(58)
      abb71(49)=abb71(49)+abb71(88)
      abb71(49)=abb71(49)*abb71(77)
      abb71(88)=-spbe7l6*abb71(86)
      abb71(9)=-spak1l5*abb71(9)
      abb71(9)=abb71(88)+abb71(9)
      abb71(9)=abb71(9)*abb71(82)
      abb71(77)=-abb71(10)*abb71(77)
      abb71(82)=-abb71(7)*abb71(82)
      abb71(77)=abb71(77)+abb71(82)
      abb71(77)=abb71(77)*abb71(93)
      abb71(82)=spbl6k2*abb71(10)
      abb71(88)=abb71(7)*spbl5k2
      abb71(82)=abb71(82)+abb71(88)
      abb71(62)=spak1k3*abb71(62)*abb71(82)
      abb71(81)=spbe7k4*abb71(81)
      abb71(9)=abb71(81)+abb71(62)+abb71(77)+abb71(9)+abb71(49)+abb71(67)+abb71&
      &(80)
      abb71(9)=2.0_ki*abb71(9)
      abb71(49)=4.0_ki*abb71(73)
      abb71(24)=4.0_ki*abb71(24)
      abb71(62)=abb71(79)*abb71(24)
      abb71(67)=8.0_ki*spbl6l5
      abb71(73)=-abb71(13)*abb71(67)
      abb71(24)=abb71(87)*abb71(24)
      abb71(67)=abb71(11)*abb71(67)
      abb71(55)=abb71(17)*abb71(55)
      abb71(77)=-abb71(18)*abb71(40)
      abb71(46)=abb71(17)*abb71(46)
      abb71(46)=abb71(77)+abb71(46)
      abb71(46)=abb71(5)*abb71(46)
      abb71(77)=abb71(18)*abb71(37)
      abb71(44)=abb71(44)*abb71(17)
      abb71(44)=abb71(77)-abb71(44)
      abb71(77)=-abb71(6)*abb71(44)
      abb71(46)=abb71(77)+abb71(46)+abb71(55)
      abb71(46)=2.0_ki*abb71(46)
      abb71(39)=-abb71(63)*abb71(39)
      abb71(55)=-abb71(6)*abb71(8)
      abb71(39)=abb71(55)+abb71(39)-abb71(11)
      abb71(55)=spak3k4*spbk3k2**2
      abb71(39)=abb71(55)*abb71(39)
      abb71(77)=abb71(27)*abb71(10)
      abb71(79)=abb71(59)*spbk7k2
      abb71(80)=abb71(77)+abb71(79)
      abb71(81)=abb71(80)*abb71(30)
      abb71(22)=spbk3k2*abb71(22)
      abb71(82)=-abb71(36)*abb71(79)
      abb71(84)=spbk7k2*abb71(84)
      abb71(87)=-abb71(75)*abb71(84)
      abb71(22)=abb71(87)+abb71(82)+abb71(39)+abb71(22)+abb71(81)
      abb71(22)=4.0_ki*abb71(22)
      abb71(39)=abb71(32)*spbk4k3
      abb71(39)=abb71(39)+abb71(17)
      abb71(81)=abb71(39)*abb71(75)
      abb71(82)=abb71(32)*abb71(10)
      abb71(87)=-abb71(43)*abb71(82)
      abb71(40)=abb71(5)*abb71(40)*abb71(32)
      abb71(37)=abb71(37)*abb71(32)
      abb71(88)=abb71(37)*abb71(6)
      abb71(89)=abb71(32)*spbk3k2
      abb71(92)=abb71(89)*abb71(11)
      abb71(40)=abb71(92)+abb71(40)+abb71(88)+abb71(81)-abb71(87)
      abb71(81)=4.0_ki*abb71(40)
      abb71(87)=8.0_ki*spbk3k2
      abb71(88)=abb71(87)*abb71(75)
      abb71(92)=4.0_ki*abb71(17)
      abb71(94)=abb71(92)*abb71(75)
      abb71(77)=abb71(77)-abb71(79)
      abb71(77)=spbe7k3*abb71(77)
      abb71(79)=spbk7e7*spbk3k2
      abb71(95)=-abb71(59)*abb71(79)
      abb71(77)=abb71(95)+abb71(77)
      abb71(95)=2.0_ki*spak1e7
      abb71(77)=abb71(77)*abb71(95)
      abb71(40)=abb71(77)+abb71(40)
      abb71(40)=2.0_ki*abb71(40)
      abb71(77)=4.0_ki*abb71(75)
      abb71(96)=spbk3k2*abb71(77)
      abb71(90)=abb71(90)*spbk7k3
      abb71(97)=abb71(90)*abb71(10)
      abb71(72)=abb71(72)*spbk7e7
      abb71(72)=abb71(97)+abb71(72)
      abb71(97)=4.0_ki*spak1k7
      abb71(98)=abb71(72)*abb71(97)
      abb71(99)=8.0_ki*spbe7k3
      abb71(100)=abb71(75)*abb71(99)
      abb71(77)=spbe7k3*abb71(77)
      abb71(101)=4.0_ki*spak1e7
      abb71(72)=-abb71(72)*abb71(101)
      abb71(102)=16.0_ki*spbk7k3
      abb71(103)=-abb71(75)*abb71(102)
      abb71(104)=abb71(10)*abb71(61)
      abb71(11)=spbk7k2*abb71(11)
      abb71(42)=abb71(5)*abb71(42)
      abb71(105)=abb71(6)*abb71(91)
      abb71(106)=-spbk7k4*abb71(75)
      abb71(11)=abb71(106)+abb71(105)+abb71(42)+abb71(11)+abb71(104)
      abb71(11)=abb71(57)*abb71(11)
      abb71(42)=abb71(17)*spak1k3
      abb71(104)=-abb71(10)*abb71(42)
      abb71(11)=abb71(104)+abb71(11)
      abb71(11)=2.0_ki*abb71(11)
      abb71(104)=spak1k7*spbk7k2
      abb71(105)=spak1k3*spbk3k2
      abb71(104)=abb71(104)+abb71(105)
      abb71(105)=spbl6k2*spak1l6
      abb71(105)=abb71(105)-abb71(104)
      abb71(105)=abb71(10)*abb71(105)
      abb71(58)=spbl5k2*abb71(58)
      abb71(75)=-spbk4k2*abb71(75)
      abb71(58)=abb71(75)+abb71(58)+abb71(105)
      abb71(58)=4.0_ki*abb71(58)
      abb71(75)=abb71(101)*abb71(10)
      abb71(105)=-spbe7k2*abb71(75)
      abb71(106)=4.0_ki*abb71(10)
      abb71(107)=abb71(93)*abb71(106)
      abb71(108)=-spbk7e7*abb71(75)
      abb71(109)=16.0_ki*abb71(36)
      abb71(110)=abb71(10)*abb71(109)
      abb71(111)=abb71(99)*spak1e7
      abb71(112)=-abb71(10)*abb71(111)
      abb71(75)=-spbe7k3*abb71(75)
      abb71(64)=abb71(17)*abb71(64)
      abb71(44)=-abb71(5)*abb71(44)
      abb71(113)=-abb71(18)*abb71(38)
      abb71(17)=abb71(17)*abb71(45)
      abb71(17)=abb71(113)+abb71(17)
      abb71(17)=abb71(6)*abb71(17)
      abb71(17)=abb71(17)+abb71(44)+abb71(64)
      abb71(17)=2.0_ki*abb71(17)
      abb71(8)=-abb71(5)*abb71(8)
      abb71(44)=-abb71(63)*abb71(50)
      abb71(8)=abb71(44)+abb71(8)-abb71(13)
      abb71(8)=abb71(55)*abb71(8)
      abb71(27)=abb71(27)*abb71(7)
      abb71(44)=abb71(56)*spbk7k2
      abb71(45)=abb71(27)+abb71(44)
      abb71(30)=abb71(45)*abb71(30)
      abb71(50)=spbk3k2*abb71(85)
      abb71(36)=-abb71(36)*abb71(44)
      abb71(55)=-abb71(78)*abb71(84)
      abb71(8)=abb71(55)+abb71(36)+abb71(8)+abb71(50)+abb71(30)
      abb71(8)=4.0_ki*abb71(8)
      abb71(30)=abb71(39)*abb71(78)
      abb71(36)=abb71(32)*abb71(7)
      abb71(39)=-abb71(43)*abb71(36)
      abb71(32)=abb71(6)*abb71(38)*abb71(32)
      abb71(37)=abb71(37)*abb71(5)
      abb71(38)=abb71(89)*abb71(13)
      abb71(30)=abb71(38)+abb71(32)+abb71(37)+abb71(30)-abb71(39)
      abb71(32)=4.0_ki*abb71(30)
      abb71(37)=abb71(87)*abb71(78)
      abb71(38)=abb71(92)*abb71(78)
      abb71(27)=abb71(27)-abb71(44)
      abb71(27)=spbe7k3*abb71(27)
      abb71(39)=-abb71(56)*abb71(79)
      abb71(27)=abb71(39)+abb71(27)
      abb71(27)=abb71(27)*abb71(95)
      abb71(27)=abb71(27)+abb71(30)
      abb71(27)=2.0_ki*abb71(27)
      abb71(30)=4.0_ki*abb71(78)
      abb71(39)=spbk3k2*abb71(30)
      abb71(43)=abb71(90)*abb71(7)
      abb71(44)=abb71(74)*spbk7e7
      abb71(43)=abb71(43)+abb71(44)
      abb71(44)=abb71(43)*abb71(97)
      abb71(50)=abb71(78)*abb71(99)
      abb71(30)=spbe7k3*abb71(30)
      abb71(43)=-abb71(43)*abb71(101)
      abb71(55)=-abb71(78)*abb71(102)
      abb71(61)=abb71(7)*abb71(61)
      abb71(13)=spbk7k2*abb71(13)
      abb71(63)=abb71(5)*abb71(91)
      abb71(35)=abb71(35)*abb71(83)
      abb71(64)=-spbk7k4*abb71(78)
      abb71(13)=abb71(64)+abb71(35)+abb71(63)+abb71(13)+abb71(61)
      abb71(13)=abb71(57)*abb71(13)
      abb71(35)=-abb71(7)*abb71(42)
      abb71(13)=abb71(35)+abb71(13)
      abb71(13)=2.0_ki*abb71(13)
      abb71(35)=spbl5k2*spak1l5
      abb71(35)=abb71(35)-abb71(104)
      abb71(35)=abb71(7)*abb71(35)
      abb71(42)=spbl6k2*abb71(86)
      abb71(61)=-spbk4k2*abb71(78)
      abb71(35)=abb71(61)+abb71(42)+abb71(35)
      abb71(35)=4.0_ki*abb71(35)
      abb71(42)=abb71(101)*abb71(7)
      abb71(61)=-spbe7k2*abb71(42)
      abb71(63)=4.0_ki*abb71(7)
      abb71(64)=abb71(93)*abb71(63)
      abb71(74)=-spbk7e7*abb71(42)
      abb71(78)=abb71(7)*abb71(109)
      abb71(79)=-abb71(7)*abb71(111)
      abb71(42)=-spbe7k3*abb71(42)
      abb71(83)=abb71(59)*abb71(92)
      abb71(59)=abb71(59)*abb71(87)
      abb71(84)=abb71(57)*abb71(106)
      abb71(85)=abb71(56)*abb71(92)
      abb71(56)=abb71(56)*abb71(87)
      abb71(57)=abb71(57)*abb71(63)
      abb71(86)=-abb71(18)*abb71(106)
      abb71(80)=-8.0_ki*abb71(80)
      abb71(87)=8.0_ki*abb71(82)
      abb71(82)=4.0_ki*abb71(82)
      abb71(18)=-abb71(18)*abb71(63)
      abb71(45)=-8.0_ki*abb71(45)
      abb71(63)=8.0_ki*abb71(36)
      abb71(36)=4.0_ki*abb71(36)
      abb71(10)=8.0_ki*abb71(10)
      abb71(7)=8.0_ki*abb71(7)
      R2d71=0.0_ki
      rat2 = rat2 + R2d71
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='71' value='", &
          & R2d71, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd71h3
