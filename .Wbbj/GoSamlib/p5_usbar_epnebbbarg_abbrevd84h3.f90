module     p5_usbar_epnebbbarg_abbrevd84h3
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(88), public :: abb84
   complex(ki), public :: R2d84
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p5_usbar_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_color, only: TR
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb84(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb84(2)=es56**(-1)
      abb84(3)=spak2l5**(-1)
      abb84(4)=spak2l6**(-1)
      abb84(5)=abb84(4)*spbl5k3
      abb84(6)=abb84(3)*spbl6k3
      abb84(5)=-abb84(6)-abb84(5)
      abb84(6)=TR*gW
      abb84(6)=abb84(6)**2*mB*CVSU*abb84(2)*abb84(1)
      abb84(7)=abb84(6)*spak2k7
      abb84(8)=abb84(7)*spbk7e7
      abb84(9)=i_*c2
      abb84(10)=abb84(9)*spak2e7
      abb84(11)=abb84(10)*spbk3k1
      abb84(12)=abb84(8)*abb84(11)
      abb84(5)=abb84(5)*abb84(12)*spak3k4
      abb84(13)=abb84(4)*spbl5k1
      abb84(14)=abb84(3)*spbl6k1
      abb84(13)=abb84(13)+abb84(14)
      abb84(12)=abb84(13)*abb84(12)*spak1k4
      abb84(5)=abb84(12)+abb84(5)
      abb84(12)=4.0_ki*es71*abb84(5)
      abb84(13)=abb84(9)*abb84(3)
      abb84(14)=abb84(7)*abb84(13)
      abb84(15)=abb84(14)*spbk3k1
      abb84(16)=spbl6k3*abb84(15)
      abb84(9)=abb84(9)*abb84(4)
      abb84(7)=abb84(7)*abb84(9)
      abb84(17)=abb84(7)*spbk3k1
      abb84(18)=spbl5k3*abb84(17)
      abb84(16)=abb84(18)+abb84(16)
      abb84(18)=spbk7k1*spak1k2
      abb84(16)=abb84(18)*spak3k4*abb84(16)
      abb84(19)=spak1k4*spbk7k1
      abb84(20)=abb84(19)*abb84(15)
      abb84(21)=spbl6k1*spak1k2
      abb84(22)=-abb84(21)*abb84(20)
      abb84(23)=abb84(19)*abb84(17)
      abb84(24)=spbl5k1*spak1k2
      abb84(25)=-abb84(23)*abb84(24)
      abb84(16)=abb84(22)+abb84(25)+abb84(16)
      abb84(16)=8.0_ki*abb84(16)
      abb84(22)=-8.0_ki*abb84(5)
      abb84(25)=abb84(14)*spbk7l6
      abb84(26)=abb84(7)*spbk7l5
      abb84(25)=abb84(25)+abb84(26)
      abb84(26)=spak2k4*abb84(25)
      abb84(27)=spbe7k1*spbk3k1
      abb84(28)=abb84(27)*spak1e7
      abb84(29)=abb84(26)*abb84(28)
      abb84(30)=spbe7l6*abb84(3)
      abb84(31)=spbe7l5*abb84(4)
      abb84(30)=abb84(30)+abb84(31)
      abb84(31)=abb84(6)*spak2k4
      abb84(32)=abb84(30)*abb84(31)*abb84(11)
      abb84(33)=abb84(32)*es71
      abb84(29)=abb84(29)+abb84(33)
      abb84(33)=8.0_ki*abb84(29)
      abb84(34)=spbk3k1*abb84(26)
      abb84(35)=abb84(31)*abb84(13)
      abb84(36)=spbk3k1*abb84(35)
      abb84(37)=abb84(21)*abb84(36)
      abb84(38)=abb84(31)*abb84(9)
      abb84(39)=abb84(38)*spbl5k1
      abb84(40)=spak1k2*spbk3k1
      abb84(41)=abb84(39)*abb84(40)
      abb84(37)=abb84(37)+abb84(41)+abb84(34)
      abb84(37)=16.0_ki*abb84(37)
      abb84(41)=16.0_ki*abb84(32)
      abb84(42)=abb84(10)*abb84(3)
      abb84(43)=abb84(8)*abb84(42)
      abb84(44)=abb84(43)*spbl6k3
      abb84(10)=abb84(10)*abb84(4)
      abb84(8)=abb84(8)*abb84(10)
      abb84(45)=abb84(8)*spbl5k3
      abb84(44)=abb84(44)+abb84(45)
      abb84(45)=abb84(10)*spbe7l5
      abb84(46)=abb84(42)*spbe7l6
      abb84(45)=abb84(45)+abb84(46)
      abb84(31)=abb84(31)*abb84(45)
      abb84(46)=abb84(31)*spbk4k3
      abb84(47)=-abb84(46)+abb84(44)
      abb84(47)=spbk7k1*abb84(47)
      abb84(11)=abb84(11)*abb84(6)
      abb84(30)=abb84(11)*abb84(30)
      abb84(48)=abb84(30)*abb84(18)
      abb84(47)=abb84(48)+abb84(47)
      abb84(48)=2.0_ki*spak4k7
      abb84(47)=abb84(47)*abb84(48)
      abb84(49)=spbe7k1*abb84(26)
      abb84(50)=abb84(49)*spbk4k3
      abb84(27)=spak1k2*abb84(25)*abb84(27)
      abb84(50)=abb84(50)-abb84(27)
      abb84(51)=2.0_ki*spak4e7
      abb84(50)=abb84(50)*abb84(51)
      abb84(5)=abb84(5)-abb84(47)-abb84(50)+2.0_ki*abb84(29)
      abb84(29)=-4.0_ki*abb84(5)
      abb84(47)=-spak1k2*abb84(36)
      abb84(50)=abb84(14)*spak2k4
      abb84(52)=-spbk7k3*abb84(50)
      abb84(47)=abb84(47)+abb84(52)
      abb84(47)=spbl6k1*abb84(47)
      abb84(52)=-abb84(38)*abb84(40)
      abb84(53)=abb84(7)*spak2k4
      abb84(54)=-spbk7k3*abb84(53)
      abb84(52)=abb84(52)+abb84(54)
      abb84(52)=spbl5k1*abb84(52)
      abb84(47)=abb84(52)+abb84(47)-abb84(34)
      abb84(47)=16.0_ki*abb84(47)
      abb84(52)=8.0_ki*abb84(32)
      abb84(5)=-2.0_ki*abb84(5)
      abb84(53)=abb84(53)*spbl5k3
      abb84(50)=abb84(50)*spbl6k3
      abb84(50)=abb84(53)+abb84(50)
      abb84(53)=-spbk7k1*abb84(50)
      abb84(13)=abb84(6)*abb84(13)
      abb84(54)=-spbl6k1*abb84(13)
      abb84(9)=abb84(6)*abb84(9)
      abb84(55)=-spbl5k1*abb84(9)
      abb84(54)=abb84(54)+abb84(55)
      abb84(54)=spbk4k3*abb84(54)*spak2k4**2
      abb84(34)=abb84(54)-abb84(34)+abb84(53)
      abb84(34)=8.0_ki*abb84(34)
      abb84(53)=4.0_ki*abb84(32)
      abb84(32)=2.0_ki*abb84(32)
      abb84(27)=-spak1k4*abb84(27)
      abb84(54)=spak1k4*spbe7k1
      abb84(55)=spbk4k3*abb84(54)*abb84(26)
      abb84(27)=abb84(55)+abb84(27)
      abb84(27)=4.0_ki*abb84(27)
      abb84(55)=spbe7k3*abb84(26)
      abb84(56)=8.0_ki*abb84(55)
      abb84(55)=-4.0_ki*abb84(55)
      abb84(57)=spak1k2*abb84(30)
      abb84(46)=abb84(46)-abb84(57)
      abb84(57)=-abb84(19)*abb84(46)
      abb84(58)=spak3k4*spbk7k3
      abb84(59)=abb84(58)+abb84(19)
      abb84(59)=abb84(59)*abb84(44)
      abb84(60)=abb84(43)*spbl6k1
      abb84(61)=abb84(8)*spbl5k1
      abb84(60)=abb84(60)+abb84(61)
      abb84(61)=spbk7k3*spak1k4
      abb84(62)=-abb84(61)*abb84(60)
      abb84(57)=abb84(62)+abb84(59)+abb84(57)
      abb84(57)=4.0_ki*abb84(57)
      abb84(59)=abb84(31)*spbk7k3
      abb84(62)=8.0_ki*abb84(59)
      abb84(59)=4.0_ki*abb84(59)
      abb84(30)=abb84(30)*spak2k3
      abb84(30)=abb84(30)-abb84(60)
      abb84(60)=-es71*abb84(30)
      abb84(63)=abb84(25)*spak2k3
      abb84(28)=-abb84(63)*abb84(28)
      abb84(49)=-spak1e7*abb84(49)
      abb84(64)=-es71*abb84(31)
      abb84(49)=abb84(64)+abb84(49)
      abb84(49)=spbk4k1*abb84(49)
      abb84(28)=abb84(49)+abb84(60)+abb84(28)
      abb84(28)=4.0_ki*abb84(28)
      abb84(49)=abb84(21)*abb84(35)
      abb84(39)=abb84(39)*spak1k2
      abb84(39)=abb84(49)+abb84(39)
      abb84(49)=-abb84(26)-abb84(39)
      abb84(49)=spbk4k1*abb84(49)
      abb84(60)=-spbk3k1*abb84(63)
      abb84(64)=-abb84(14)*abb84(18)
      abb84(65)=abb84(40)*abb84(13)
      abb84(66)=-spak2k3*abb84(65)
      abb84(64)=abb84(64)+abb84(66)
      abb84(64)=spbl6k1*abb84(64)
      abb84(66)=-abb84(7)*abb84(18)
      abb84(40)=abb84(40)*abb84(9)
      abb84(67)=-spak2k3*abb84(40)
      abb84(66)=abb84(66)+abb84(67)
      abb84(66)=spbl5k1*abb84(66)
      abb84(49)=abb84(49)+abb84(66)+abb84(60)+abb84(64)
      abb84(49)=8.0_ki*abb84(49)
      abb84(60)=abb84(31)*spbk4k1
      abb84(30)=abb84(30)+abb84(60)
      abb84(60)=8.0_ki*abb84(30)
      abb84(64)=4.0_ki*abb84(30)
      abb84(30)=2.0_ki*abb84(30)
      abb84(66)=-spbe7k1*abb84(25)*spak1k2
      abb84(63)=-spbe7k3*abb84(63)
      abb84(26)=-spbe7k4*abb84(26)
      abb84(26)=abb84(26)+abb84(63)+abb84(66)
      abb84(26)=4.0_ki*abb84(26)
      abb84(63)=abb84(42)*abb84(6)
      abb84(66)=spbe7l6*abb84(63)
      abb84(67)=abb84(10)*abb84(6)
      abb84(68)=spbe7l5*abb84(67)
      abb84(66)=abb84(66)+abb84(68)
      abb84(68)=spak2k3*spbk7k3
      abb84(66)=abb84(66)*abb84(68)
      abb84(69)=abb84(6)*spbk7k1
      abb84(45)=abb84(45)*spak1k2*abb84(69)
      abb84(43)=-spbk7l6*abb84(43)
      abb84(8)=-spbk7l5*abb84(8)
      abb84(31)=spbk7k4*abb84(31)
      abb84(8)=abb84(31)+abb84(66)+abb84(8)+abb84(43)+abb84(45)
      abb84(8)=4.0_ki*abb84(8)
      abb84(31)=-spbl6k3*abb84(14)
      abb84(43)=-spbl5k3*abb84(7)
      abb84(31)=abb84(43)+abb84(31)
      abb84(18)=abb84(68)-abb84(18)
      abb84(18)=abb84(18)*abb84(31)
      abb84(31)=abb84(13)*spbk3k1
      abb84(43)=spak1k2**2
      abb84(45)=-abb84(43)*abb84(31)
      abb84(66)=spbk7k3*spak1k2
      abb84(68)=-abb84(14)*abb84(66)
      abb84(45)=abb84(45)+abb84(68)
      abb84(45)=spbl6k1*abb84(45)
      abb84(68)=abb84(9)*spbk3k1
      abb84(43)=-abb84(43)*abb84(68)
      abb84(66)=-abb84(7)*abb84(66)
      abb84(43)=abb84(43)+abb84(66)
      abb84(43)=spbl5k1*abb84(43)
      abb84(39)=spbk4k3*abb84(39)
      abb84(18)=abb84(39)+abb84(45)+abb84(43)+abb84(18)
      abb84(18)=8.0_ki*abb84(18)
      abb84(39)=-abb84(44)+abb84(46)
      abb84(43)=-4.0_ki*abb84(39)
      abb84(39)=-2.0_ki*abb84(39)
      abb84(44)=8.0_ki*spbk7k3*abb84(50)
      abb84(45)=-spbl5k1*spak1k4
      abb84(46)=spbl5k3*spak3k4
      abb84(45)=abb84(46)+abb84(45)
      abb84(45)=abb84(17)*abb84(45)
      abb84(46)=-spbl6k1*spak1k4
      abb84(50)=spbl6k3*spak3k4
      abb84(46)=abb84(50)+abb84(46)
      abb84(46)=abb84(15)*abb84(46)
      abb84(45)=abb84(46)+abb84(45)
      abb84(45)=8.0_ki*abb84(45)
      abb84(46)=-spbl6k1*abb84(14)
      abb84(50)=-spbl5k1*abb84(7)
      abb84(46)=abb84(46)+abb84(50)
      abb84(46)=8.0_ki*abb84(46)
      abb84(50)=spak3k4*spbe7k3
      abb84(54)=abb84(50)-abb84(54)
      abb84(11)=abb84(11)*abb84(54)
      abb84(54)=-abb84(3)*abb84(11)
      abb84(66)=es71*abb84(54)
      abb84(70)=-abb84(15)*abb84(58)
      abb84(70)=abb84(20)+abb84(70)
      abb84(71)=spak1e7*spbe7k1
      abb84(70)=abb84(70)*abb84(71)
      abb84(66)=abb84(66)+abb84(70)
      abb84(66)=4.0_ki*abb84(66)
      abb84(70)=spak1k2*spbk3k1**2
      abb84(72)=-abb84(13)*abb84(70)
      abb84(15)=-spbk7k3*abb84(15)
      abb84(15)=abb84(72)+abb84(15)
      abb84(15)=spak3k4*abb84(15)
      abb84(15)=abb84(20)+abb84(15)
      abb84(15)=8.0_ki*abb84(15)
      abb84(20)=-8.0_ki*abb84(54)
      abb84(72)=16.0_ki*abb84(36)
      abb84(48)=abb84(48)*abb84(69)
      abb84(73)=abb84(42)*spbe7k3
      abb84(74)=abb84(48)*abb84(73)
      abb84(75)=abb84(14)*spbe7k1
      abb84(51)=abb84(51)*spbk7k3
      abb84(76)=abb84(51)*abb84(75)
      abb84(54)=-abb84(54)+abb84(74)-abb84(76)
      abb84(74)=4.0_ki*abb84(54)
      abb84(36)=-32.0_ki*abb84(36)
      abb84(54)=2.0_ki*abb84(54)
      abb84(19)=abb84(19)*spbe7k3
      abb84(50)=abb84(50)*spbk7k3
      abb84(19)=abb84(19)-abb84(50)
      abb84(76)=abb84(14)*abb84(19)
      abb84(77)=-abb84(75)*abb84(61)
      abb84(76)=abb84(77)+abb84(76)
      abb84(76)=4.0_ki*abb84(76)
      abb84(77)=abb84(6)*spbe7k1
      abb84(78)=abb84(77)*abb84(42)
      abb84(79)=-abb84(61)*abb84(78)
      abb84(69)=spak1k4*abb84(69)
      abb84(80)=abb84(73)*abb84(69)
      abb84(81)=abb84(50)*abb84(63)
      abb84(79)=abb84(81)+abb84(79)+abb84(80)
      abb84(79)=4.0_ki*abb84(79)
      abb84(80)=es71*abb84(78)
      abb84(81)=spak1e7*spbk7k1
      abb84(75)=abb84(75)*abb84(81)
      abb84(75)=abb84(80)+abb84(75)
      abb84(75)=4.0_ki*abb84(75)
      abb84(80)=spbk7k1*abb84(14)
      abb84(82)=-spak2k3*abb84(31)
      abb84(83)=-spbk4k1*abb84(35)
      abb84(80)=abb84(83)+abb84(80)+abb84(82)
      abb84(80)=8.0_ki*abb84(80)
      abb84(82)=-8.0_ki*abb84(78)
      abb84(83)=-4.0_ki*abb84(78)
      abb84(78)=-2.0_ki*abb84(78)
      abb84(84)=4.0_ki*spbk7e7
      abb84(14)=-abb84(14)*abb84(84)
      abb84(85)=abb84(6)*spbk7e7
      abb84(85)=4.0_ki*abb84(85)
      abb84(42)=-abb84(42)*abb84(85)
      abb84(65)=-16.0_ki*abb84(65)
      abb84(6)=4.0_ki*abb84(6)*abb84(73)
      abb84(73)=2.0_ki*spbe7k3
      abb84(63)=abb84(73)*abb84(63)
      abb84(11)=-abb84(4)*abb84(11)
      abb84(86)=es71*abb84(11)
      abb84(58)=-abb84(17)*abb84(58)
      abb84(58)=abb84(23)+abb84(58)
      abb84(58)=abb84(58)*abb84(71)
      abb84(58)=abb84(86)+abb84(58)
      abb84(58)=4.0_ki*abb84(58)
      abb84(70)=-abb84(9)*abb84(70)
      abb84(17)=-spbk7k3*abb84(17)
      abb84(17)=abb84(70)+abb84(17)
      abb84(17)=spak3k4*abb84(17)
      abb84(17)=abb84(23)+abb84(17)
      abb84(17)=8.0_ki*abb84(17)
      abb84(23)=-8.0_ki*abb84(11)
      abb84(70)=abb84(38)*spbk3k1
      abb84(71)=16.0_ki*abb84(70)
      abb84(86)=abb84(7)*spbe7k1
      abb84(51)=abb84(51)*abb84(86)
      abb84(87)=abb84(10)*spbe7k3
      abb84(48)=abb84(87)*abb84(48)
      abb84(11)=-abb84(51)+abb84(48)-abb84(11)
      abb84(48)=4.0_ki*abb84(11)
      abb84(51)=-32.0_ki*abb84(70)
      abb84(11)=2.0_ki*abb84(11)
      abb84(19)=abb84(7)*abb84(19)
      abb84(70)=-abb84(86)*abb84(61)
      abb84(19)=abb84(70)+abb84(19)
      abb84(19)=4.0_ki*abb84(19)
      abb84(70)=abb84(77)*abb84(10)
      abb84(61)=-abb84(61)*abb84(70)
      abb84(69)=abb84(87)*abb84(69)
      abb84(50)=abb84(50)*abb84(67)
      abb84(50)=abb84(50)+abb84(61)+abb84(69)
      abb84(50)=4.0_ki*abb84(50)
      abb84(61)=es71*abb84(70)
      abb84(69)=abb84(86)*abb84(81)
      abb84(61)=abb84(61)+abb84(69)
      abb84(61)=4.0_ki*abb84(61)
      abb84(69)=spbk7k1*abb84(7)
      abb84(77)=-spak2k3*abb84(68)
      abb84(81)=-spbk4k1*abb84(38)
      abb84(69)=abb84(81)+abb84(69)+abb84(77)
      abb84(69)=8.0_ki*abb84(69)
      abb84(77)=-8.0_ki*abb84(70)
      abb84(81)=-4.0_ki*abb84(70)
      abb84(70)=-2.0_ki*abb84(70)
      abb84(7)=-abb84(7)*abb84(84)
      abb84(10)=-abb84(10)*abb84(85)
      abb84(40)=-16.0_ki*abb84(40)
      abb84(84)=4.0_ki*spbe7k3*abb84(67)
      abb84(67)=abb84(73)*abb84(67)
      abb84(31)=8.0_ki*abb84(31)
      abb84(73)=-spak3k4*abb84(31)
      abb84(68)=8.0_ki*abb84(68)
      abb84(85)=-spak3k4*abb84(68)
      abb84(86)=abb84(38)*spbl5k3
      abb84(87)=abb84(35)*spbl6k3
      abb84(86)=abb84(86)+abb84(87)
      abb84(87)=16.0_ki*abb84(86)
      abb84(86)=-8.0_ki*abb84(86)
      abb84(88)=-spbl6k3*spak2k3
      abb84(21)=abb84(88)-abb84(21)
      abb84(21)=abb84(13)*abb84(21)
      abb84(88)=-spbl5k3*spak2k3
      abb84(24)=abb84(88)-abb84(24)
      abb84(24)=abb84(9)*abb84(24)
      abb84(35)=-spbl6k4*abb84(35)
      abb84(38)=-spbl5k4*abb84(38)
      abb84(21)=abb84(38)+abb84(35)+abb84(24)+abb84(21)-abb84(25)
      abb84(21)=8.0_ki*abb84(21)
      abb84(24)=spak1k4*abb84(31)
      abb84(13)=-8.0_ki*abb84(13)
      abb84(25)=spak1k4*abb84(68)
      abb84(9)=-8.0_ki*abb84(9)
      R2d84=0.0_ki
      rat2 = rat2 + R2d84
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='84' value='", &
          & R2d84, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd84h3
