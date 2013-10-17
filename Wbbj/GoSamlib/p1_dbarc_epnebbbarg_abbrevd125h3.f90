module     p1_dbarc_epnebbbarg_abbrevd125h3
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(90), public :: abb125
   complex(ki), public :: R2d125
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p1_dbarc_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_color, only: TR
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb125(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb125(2)=1.0_ki/(es71+es34+es56-es712-es234)
      abb125(3)=es56**(-1)
      abb125(4)=spak2l5**(-1)
      abb125(5)=spak2l6**(-1)
      abb125(6)=NC*c3
      abb125(6)=abb125(6)-c4
      abb125(7)=TR*gW
      abb125(6)=abb125(6)*CVDC*i_*mB*abb125(3)*abb125(2)*abb125(1)*abb125(7)**2
      abb125(7)=abb125(5)*spbl5k2
      abb125(8)=abb125(7)*spak1k4
      abb125(9)=-abb125(8)*abb125(6)
      abb125(10)=abb125(9)*spak2l5
      abb125(11)=spbl6k2*spak1k4
      abb125(12)=-abb125(6)*abb125(11)
      abb125(10)=abb125(10)+abb125(12)
      abb125(13)=spbe7l5*spak4e7
      abb125(14)=abb125(13)*abb125(10)
      abb125(15)=abb125(4)*spbl6k2
      abb125(16)=abb125(15)*spak1k4
      abb125(17)=-abb125(16)*abb125(6)
      abb125(18)=abb125(17)*spak2l6
      abb125(19)=spbl5k2*spak1k4
      abb125(20)=-abb125(6)*abb125(19)
      abb125(18)=abb125(18)+abb125(20)
      abb125(21)=spbe7l6*spak4e7
      abb125(22)=abb125(21)*abb125(18)
      abb125(14)=abb125(14)+abb125(22)
      abb125(14)=abb125(14)*spbk4k3
      abb125(22)=-spak1e7*abb125(6)
      abb125(23)=abb125(16)*spak2l6
      abb125(24)=abb125(23)*abb125(22)
      abb125(25)=abb125(22)*abb125(19)
      abb125(24)=abb125(24)+abb125(25)
      abb125(26)=spbe7l6*abb125(24)
      abb125(27)=abb125(8)*spak2l5
      abb125(28)=abb125(27)+abb125(11)
      abb125(29)=abb125(22)*abb125(28)
      abb125(30)=spbe7l5*abb125(29)
      abb125(26)=abb125(26)+abb125(30)
      abb125(26)=spbk3k1*abb125(26)
      abb125(26)=abb125(14)+abb125(26)
      abb125(30)=2.0_ki*es71
      abb125(26)=abb125(26)*abb125(30)
      abb125(30)=abb125(22)*spbe7k1
      abb125(31)=abb125(30)*spak1k7
      abb125(32)=abb125(31)*spbk3k1
      abb125(23)=abb125(23)+abb125(19)
      abb125(33)=abb125(23)*abb125(32)
      abb125(34)=abb125(30)*abb125(23)
      abb125(35)=spak4k7*spbk4k3
      abb125(36)=abb125(34)*abb125(35)
      abb125(33)=abb125(33)+abb125(36)
      abb125(33)=spbk7l6*abb125(33)
      abb125(32)=abb125(28)*abb125(32)
      abb125(36)=abb125(30)*abb125(27)
      abb125(37)=abb125(30)*abb125(11)
      abb125(36)=abb125(36)+abb125(37)
      abb125(35)=abb125(36)*abb125(35)
      abb125(32)=abb125(32)+abb125(35)
      abb125(32)=spbk7l5*abb125(32)
      abb125(26)=abb125(32)+abb125(26)+abb125(33)
      abb125(26)=2.0_ki*abb125(26)
      abb125(32)=spbk7k3*spak1k7
      abb125(33)=-abb125(32)*abb125(6)
      abb125(35)=abb125(15)*spak2l6
      abb125(38)=abb125(33)*abb125(35)
      abb125(39)=abb125(33)*spbl5k2
      abb125(38)=abb125(38)+abb125(39)
      abb125(40)=-spak3k4*abb125(38)
      abb125(41)=es71*abb125(18)
      abb125(40)=abb125(40)+abb125(41)
      abb125(40)=spbl6k3*abb125(40)
      abb125(41)=abb125(7)*spak2l5
      abb125(42)=abb125(33)*abb125(41)
      abb125(43)=abb125(33)*spbl6k2
      abb125(42)=abb125(42)+abb125(43)
      abb125(44)=-spak3k4*abb125(42)
      abb125(45)=es71*abb125(10)
      abb125(44)=abb125(44)+abb125(45)
      abb125(44)=spbl5k3*abb125(44)
      abb125(45)=abb125(33)*abb125(23)
      abb125(46)=-abb125(35)*abb125(6)
      abb125(47)=-abb125(6)*spbl5k2
      abb125(46)=abb125(46)+abb125(47)
      abb125(48)=spbk4k3*spak1k4**2
      abb125(49)=-abb125(46)*abb125(48)
      abb125(45)=abb125(49)+abb125(45)
      abb125(45)=spbl6k1*abb125(45)
      abb125(28)=abb125(33)*abb125(28)
      abb125(49)=-abb125(41)*abb125(6)
      abb125(50)=-abb125(6)*spbl6k2
      abb125(49)=abb125(49)+abb125(50)
      abb125(48)=-abb125(49)*abb125(48)
      abb125(28)=abb125(48)+abb125(28)
      abb125(28)=spbl5k1*abb125(28)
      abb125(28)=abb125(28)+abb125(45)+abb125(40)+abb125(44)
      abb125(28)=8.0_ki*abb125(28)
      abb125(40)=abb125(22)*spbe7k3
      abb125(44)=abb125(40)*abb125(41)
      abb125(45)=abb125(40)*spbl6k2
      abb125(44)=abb125(44)+abb125(45)
      abb125(48)=abb125(44)*spak3k4
      abb125(36)=abb125(48)+abb125(36)
      abb125(36)=abb125(36)*spbl5k3
      abb125(27)=abb125(40)*abb125(27)
      abb125(48)=abb125(40)*abb125(11)
      abb125(27)=abb125(27)+abb125(48)
      abb125(27)=abb125(27)*spbl5k1
      abb125(51)=abb125(35)+spbl5k2
      abb125(52)=abb125(40)*abb125(51)
      abb125(53)=abb125(52)*spak3k4
      abb125(34)=abb125(53)+abb125(34)
      abb125(34)=abb125(34)*spbl6k3
      abb125(23)=spbl6k1*abb125(23)*abb125(40)
      abb125(23)=-abb125(27)+abb125(36)+abb125(34)-abb125(23)
      abb125(27)=4.0_ki*abb125(23)
      abb125(34)=abb125(16)+abb125(8)
      abb125(34)=abb125(22)*abb125(34)
      abb125(36)=spbe7k3*abb125(34)*spbk7k1
      abb125(53)=abb125(22)*abb125(7)
      abb125(54)=abb125(22)*abb125(15)
      abb125(55)=abb125(53)+abb125(54)
      abb125(56)=abb125(55)*spbe7k3
      abb125(57)=spak3k4*spbk7k3
      abb125(58)=abb125(57)*abb125(56)
      abb125(34)=abb125(34)*spbe7k1
      abb125(59)=abb125(34)*spbk7k3
      abb125(36)=-abb125(36)+abb125(58)+abb125(59)
      abb125(36)=abb125(36)*spak2k7
      abb125(58)=abb125(17)+abb125(9)
      abb125(59)=abb125(58)*spbe7k1
      abb125(60)=-abb125(6)*abb125(7)
      abb125(61)=-abb125(6)*abb125(15)
      abb125(62)=abb125(60)+abb125(61)
      abb125(63)=spak3k4*spbe7k3
      abb125(64)=abb125(63)*abb125(62)
      abb125(59)=abb125(59)-abb125(64)
      abb125(32)=abb125(59)*abb125(32)
      abb125(59)=abb125(58)*spbe7k3
      abb125(64)=abb125(59)*es71
      abb125(32)=abb125(32)+abb125(64)
      abb125(64)=2.0_ki*spak2e7
      abb125(32)=abb125(32)*abb125(64)
      abb125(65)=spak2k4*spbk4k3
      abb125(66)=spak1k2*spbk3k1
      abb125(65)=abb125(65)-abb125(66)
      abb125(34)=abb125(65)*abb125(34)
      abb125(32)=abb125(32)+abb125(36)-abb125(34)
      abb125(32)=4.0_ki*abb125(32)
      abb125(34)=abb125(66)*abb125(58)
      abb125(34)=32.0_ki*abb125(34)
      abb125(36)=abb125(38)*abb125(21)
      abb125(58)=abb125(42)*abb125(13)
      abb125(36)=abb125(36)+abb125(58)
      abb125(44)=abb125(44)*spbk7l5
      abb125(52)=abb125(52)*spbk7l6
      abb125(44)=abb125(44)+abb125(52)
      abb125(52)=spak4k7*abb125(44)
      abb125(36)=-abb125(52)+2.0_ki*abb125(36)
      abb125(36)=4.0_ki*abb125(36)
      abb125(58)=abb125(10)*spbl5k3
      abb125(65)=abb125(18)*spbl6k3
      abb125(58)=abb125(58)+abb125(65)
      abb125(65)=16.0_ki*abb125(58)
      abb125(66)=abb125(56)*spak2k4
      abb125(67)=8.0_ki*abb125(66)
      abb125(68)=abb125(33)*spbe7k1
      abb125(69)=abb125(68)*spbl6l5
      abb125(70)=abb125(5)*spak1k4
      abb125(71)=-abb125(70)*abb125(69)
      abb125(72)=spbl6l5*spbe7k3
      abb125(73)=spak3k4*abb125(33)*abb125(72)
      abb125(74)=abb125(5)*abb125(73)
      abb125(75)=-abb125(72)*abb125(6)
      abb125(76)=abb125(75)*abb125(70)
      abb125(77)=-es71*abb125(76)
      abb125(71)=abb125(77)+abb125(71)+abb125(74)
      abb125(71)=spal6e7*abb125(71)
      abb125(74)=abb125(4)*spak1k4
      abb125(69)=abb125(74)*abb125(69)
      abb125(73)=-abb125(4)*abb125(73)
      abb125(75)=abb125(75)*abb125(74)
      abb125(77)=es71*abb125(75)
      abb125(69)=abb125(77)+abb125(69)+abb125(73)
      abb125(69)=spal5e7*abb125(69)
      abb125(69)=abb125(71)+abb125(69)
      abb125(71)=spak4l6*spbk4k3
      abb125(73)=spak1l6*spbk3k1
      abb125(71)=abb125(71)+abb125(73)
      abb125(77)=-abb125(70)*abb125(71)
      abb125(78)=spak4l5*spbk4k3
      abb125(79)=spak1l5*spbk3k1
      abb125(78)=abb125(78)+abb125(79)
      abb125(80)=abb125(74)*abb125(78)
      abb125(77)=abb125(80)+abb125(77)
      abb125(80)=abb125(30)*spbl6l5
      abb125(77)=abb125(80)*abb125(77)
      abb125(81)=abb125(80)*spbk7k3
      abb125(82)=-abb125(70)*abb125(81)
      abb125(83)=abb125(22)*abb125(5)
      abb125(84)=abb125(83)*abb125(72)
      abb125(85)=-abb125(57)*abb125(84)
      abb125(82)=abb125(82)+abb125(85)
      abb125(82)=spal6k7*abb125(82)
      abb125(81)=abb125(74)*abb125(81)
      abb125(85)=abb125(22)*abb125(4)
      abb125(86)=abb125(85)*abb125(72)
      abb125(87)=abb125(57)*abb125(86)
      abb125(81)=abb125(81)+abb125(87)
      abb125(81)=spal5k7*abb125(81)
      abb125(72)=spal6k7*abb125(70)*abb125(22)*abb125(72)
      abb125(87)=-spal5k7*spak1k4*abb125(86)
      abb125(72)=abb125(72)+abb125(87)
      abb125(72)=spbk7k1*abb125(72)
      abb125(69)=abb125(72)+abb125(81)+abb125(82)+2.0_ki*abb125(69)+abb125(77)
      abb125(69)=4.0_ki*abb125(69)
      abb125(70)=abb125(70)*abb125(73)
      abb125(72)=-abb125(74)*abb125(79)
      abb125(70)=abb125(70)+abb125(72)
      abb125(72)=-abb125(6)*spbl6l5
      abb125(72)=32.0_ki*abb125(72)
      abb125(70)=abb125(70)*abb125(72)
      abb125(74)=abb125(86)*spak4l5
      abb125(77)=abb125(84)*spak4l6
      abb125(74)=abb125(74)-abb125(77)
      abb125(77)=8.0_ki*abb125(74)
      abb125(81)=2.0_ki*spak4e7
      abb125(82)=abb125(81)*abb125(38)
      abb125(24)=abb125(24)*spbk3k1
      abb125(24)=abb125(82)-abb125(24)
      abb125(24)=abb125(24)*spbe7l6
      abb125(81)=abb125(81)*abb125(42)
      abb125(29)=abb125(29)*spbk3k1
      abb125(29)=abb125(81)-abb125(29)
      abb125(29)=abb125(29)*spbe7l5
      abb125(14)=-abb125(14)-abb125(52)+abb125(24)+abb125(29)
      abb125(24)=-4.0_ki*abb125(14)
      abb125(29)=-24.0_ki*abb125(58)
      abb125(52)=abb125(59)*spak2e7
      abb125(52)=abb125(52)-abb125(66)
      abb125(59)=8.0_ki*abb125(52)
      abb125(66)=abb125(75)*spal5e7
      abb125(75)=abb125(76)*spal6e7
      abb125(66)=abb125(74)+abb125(66)-abb125(75)
      abb125(74)=8.0_ki*abb125(66)
      abb125(14)=abb125(14)+abb125(23)
      abb125(14)=2.0_ki*abb125(14)
      abb125(23)=4.0_ki*abb125(58)
      abb125(52)=4.0_ki*abb125(52)
      abb125(58)=-4.0_ki*abb125(66)
      abb125(38)=-spbe7l6*abb125(38)
      abb125(42)=-spbe7l5*abb125(42)
      abb125(38)=abb125(38)+abb125(42)
      abb125(38)=spak3e7*abb125(38)
      abb125(42)=abb125(47)*spak1k7
      abb125(6)=-abb125(6)*spak1k7
      abb125(66)=abb125(6)*abb125(35)
      abb125(42)=abb125(42)+abb125(66)
      abb125(21)=-abb125(42)*abb125(21)
      abb125(66)=abb125(50)*spak1k7
      abb125(75)=abb125(6)*abb125(41)
      abb125(66)=abb125(66)+abb125(75)
      abb125(13)=-abb125(66)*abb125(13)
      abb125(13)=abb125(21)+abb125(13)
      abb125(13)=spbk7k4*abb125(13)
      abb125(13)=abb125(38)+abb125(13)
      abb125(21)=-spbk7l6*abb125(51)
      abb125(38)=abb125(41)+spbl6k2
      abb125(41)=-spbk7l5*abb125(38)
      abb125(21)=abb125(41)+abb125(21)
      abb125(21)=abb125(31)*abb125(21)
      abb125(31)=abb125(22)*abb125(35)
      abb125(35)=abb125(22)*spbl5k2
      abb125(31)=abb125(31)+abb125(35)
      abb125(41)=abb125(31)*spbe7l6
      abb125(22)=abb125(22)*abb125(38)
      abb125(38)=abb125(22)*spbe7l5
      abb125(38)=abb125(41)+abb125(38)
      abb125(41)=2.0_ki*abb125(38)
      abb125(51)=-es71*abb125(41)
      abb125(31)=spbk7l6*abb125(31)
      abb125(22)=spbk7l5*abb125(22)
      abb125(22)=abb125(31)+abb125(22)
      abb125(22)=spbe7k4*spak4k7*abb125(22)
      abb125(31)=spak3k7*abb125(44)
      abb125(13)=abb125(31)+abb125(22)+abb125(51)+2.0_ki*abb125(13)+abb125(21)
      abb125(13)=2.0_ki*abb125(13)
      abb125(21)=abb125(46)*spbl6k3
      abb125(22)=abb125(49)*spbl5k3
      abb125(21)=abb125(21)+abb125(22)
      abb125(22)=-spak1k3*abb125(21)
      abb125(31)=-spbk7l6*abb125(42)
      abb125(42)=-spbk7l5*abb125(66)
      abb125(44)=-spbl6k4*abb125(18)
      abb125(51)=-spbl5k4*abb125(10)
      abb125(22)=abb125(51)+abb125(44)+abb125(22)+abb125(31)+abb125(42)
      abb125(22)=8.0_ki*abb125(22)
      abb125(31)=4.0_ki*abb125(38)
      abb125(38)=spak2k7*spbk7e7
      abb125(42)=spak1k2*spbe7k1
      abb125(44)=spbe7k4*spak2k4
      abb125(38)=abb125(44)+abb125(38)+abb125(42)
      abb125(38)=abb125(55)*abb125(38)
      abb125(42)=spbk7e7*spak1k7
      abb125(44)=abb125(62)*abb125(64)*abb125(42)
      abb125(51)=abb125(56)*spak2k3
      abb125(38)=abb125(44)+abb125(51)+abb125(38)
      abb125(38)=4.0_ki*abb125(38)
      abb125(44)=32.0_ki*spak1k2
      abb125(44)=abb125(44)*abb125(62)
      abb125(51)=spal6e7*abb125(5)
      abb125(55)=spal5e7*abb125(4)
      abb125(56)=abb125(51)-abb125(55)
      abb125(6)=abb125(6)*spbk7e7
      abb125(56)=abb125(6)*abb125(56)
      abb125(62)=abb125(83)*spak4l6
      abb125(64)=spak4l5*abb125(85)
      abb125(64)=-abb125(62)+abb125(64)
      abb125(64)=spbe7k4*abb125(64)
      abb125(66)=spal6k7*spbk7e7
      abb125(75)=abb125(66)*abb125(83)
      abb125(76)=spal5k7*spbk7e7
      abb125(81)=-abb125(85)*abb125(76)
      abb125(56)=2.0_ki*abb125(56)+abb125(64)+abb125(81)+abb125(75)
      abb125(56)=spbl6l5*abb125(56)
      abb125(64)=spak1l5*abb125(4)
      abb125(81)=spak1l6*abb125(5)
      abb125(82)=abb125(64)-abb125(81)
      abb125(80)=-abb125(80)*abb125(82)
      abb125(83)=-spak3l6*abb125(84)
      abb125(84)=spak3l5*abb125(86)
      abb125(56)=abb125(84)+abb125(83)+abb125(80)+abb125(56)
      abb125(56)=4.0_ki*abb125(56)
      abb125(72)=abb125(82)*abb125(72)
      abb125(80)=abb125(16)*abb125(68)
      abb125(33)=abb125(63)*abb125(33)
      abb125(82)=-abb125(15)*abb125(33)
      abb125(83)=es71*spbe7k3
      abb125(84)=abb125(17)*abb125(83)
      abb125(80)=abb125(84)+abb125(80)+abb125(82)
      abb125(80)=spal6e7*abb125(80)
      abb125(82)=abb125(4)*abb125(19)*abb125(68)
      abb125(84)=spbe7k3*abb125(4)
      abb125(39)=-spak3k4*abb125(84)*abb125(39)
      abb125(85)=abb125(20)*abb125(84)
      abb125(86)=es71*abb125(85)
      abb125(39)=abb125(86)+abb125(82)+abb125(39)
      abb125(39)=spal5e7*abb125(39)
      abb125(39)=abb125(80)+abb125(39)
      abb125(80)=abb125(30)*abb125(4)
      abb125(19)=abb125(80)*abb125(19)
      abb125(82)=abb125(19)*abb125(78)
      abb125(86)=abb125(30)*abb125(16)
      abb125(87)=abb125(86)*abb125(71)
      abb125(86)=spbk7k3*abb125(86)
      abb125(88)=abb125(40)*abb125(15)
      abb125(89)=abb125(57)*abb125(88)
      abb125(86)=abb125(86)+abb125(89)
      abb125(86)=spal6k7*abb125(86)
      abb125(19)=spbk7k3*abb125(19)
      abb125(89)=abb125(35)*abb125(84)
      abb125(90)=abb125(57)*abb125(89)
      abb125(19)=abb125(19)+abb125(90)
      abb125(19)=spal5k7*abb125(19)
      abb125(16)=-spal6k7*abb125(16)*abb125(40)
      abb125(25)=-spal5k7*abb125(84)*abb125(25)
      abb125(16)=abb125(16)+abb125(25)
      abb125(16)=spbk7k1*abb125(16)
      abb125(16)=abb125(16)+abb125(19)+abb125(86)+2.0_ki*abb125(39)+abb125(87)+&
      &abb125(82)
      abb125(16)=2.0_ki*abb125(16)
      abb125(19)=-abb125(17)*abb125(73)
      abb125(20)=-abb125(4)*abb125(20)*abb125(79)
      abb125(19)=abb125(19)+abb125(20)
      abb125(19)=16.0_ki*abb125(19)
      abb125(20)=spak4l6*abb125(88)
      abb125(25)=abb125(89)*spak4l5
      abb125(20)=abb125(20)+abb125(25)
      abb125(25)=4.0_ki*abb125(20)
      abb125(39)=spal6e7*spbe7k3
      abb125(17)=abb125(39)*abb125(17)
      abb125(82)=abb125(85)*spal5e7
      abb125(17)=abb125(17)+abb125(82)+abb125(20)
      abb125(20)=4.0_ki*abb125(17)
      abb125(17)=-2.0_ki*abb125(17)
      abb125(82)=-spak1l6*abb125(30)
      abb125(84)=spak3l6*abb125(40)
      abb125(82)=abb125(84)+abb125(82)
      abb125(82)=abb125(15)*abb125(82)
      abb125(55)=-abb125(47)*abb125(42)*abb125(55)
      abb125(15)=-spal6e7*abb125(15)*abb125(6)
      abb125(15)=abb125(15)+abb125(55)
      abb125(55)=spak4l6*abb125(54)
      abb125(35)=abb125(35)*abb125(4)
      abb125(84)=spak4l5*abb125(35)
      abb125(55)=abb125(55)+abb125(84)
      abb125(55)=spbe7k4*abb125(55)
      abb125(54)=-abb125(54)*abb125(66)
      abb125(35)=-abb125(76)*abb125(35)
      abb125(66)=-spak1l5*spbl5k2*abb125(80)
      abb125(80)=spak3l5*abb125(89)
      abb125(15)=abb125(80)+abb125(66)+abb125(35)+abb125(54)+2.0_ki*abb125(15)+&
      &abb125(55)+abb125(82)
      abb125(15)=2.0_ki*abb125(15)
      abb125(35)=spak1l6*abb125(61)
      abb125(47)=abb125(47)*abb125(64)
      abb125(35)=abb125(35)+abb125(47)
      abb125(35)=16.0_ki*abb125(35)
      abb125(47)=abb125(8)*abb125(68)
      abb125(33)=-abb125(7)*abb125(33)
      abb125(54)=abb125(9)*spbe7k3
      abb125(55)=es71*abb125(54)
      abb125(33)=abb125(55)+abb125(47)+abb125(33)
      abb125(33)=spal5e7*abb125(33)
      abb125(11)=abb125(11)*abb125(68)
      abb125(43)=-abb125(43)*abb125(63)
      abb125(11)=abb125(11)+abb125(43)
      abb125(11)=abb125(5)*abb125(11)
      abb125(12)=abb125(12)*abb125(5)
      abb125(43)=abb125(12)*abb125(83)
      abb125(11)=abb125(43)+abb125(11)
      abb125(11)=spal6e7*abb125(11)
      abb125(11)=abb125(11)+abb125(33)
      abb125(33)=abb125(37)*abb125(5)
      abb125(37)=abb125(33)*abb125(71)
      abb125(43)=abb125(30)*abb125(8)
      abb125(47)=abb125(43)*abb125(78)
      abb125(33)=spbk7k3*abb125(33)
      abb125(45)=abb125(45)*abb125(5)
      abb125(55)=abb125(57)*abb125(45)
      abb125(33)=abb125(33)+abb125(55)
      abb125(33)=spal6k7*abb125(33)
      abb125(43)=spbk7k3*abb125(43)
      abb125(55)=abb125(40)*abb125(7)
      abb125(57)=abb125(57)*abb125(55)
      abb125(43)=abb125(43)+abb125(57)
      abb125(43)=spal5k7*abb125(43)
      abb125(48)=-spal6k7*abb125(5)*abb125(48)
      abb125(8)=-spal5k7*abb125(8)*abb125(40)
      abb125(8)=abb125(48)+abb125(8)
      abb125(8)=spbk7k1*abb125(8)
      abb125(8)=abb125(8)+abb125(43)+abb125(33)+2.0_ki*abb125(11)+abb125(47)+ab&
      &b125(37)
      abb125(8)=2.0_ki*abb125(8)
      abb125(11)=-abb125(73)*abb125(12)
      abb125(9)=-abb125(9)*abb125(79)
      abb125(9)=abb125(11)+abb125(9)
      abb125(9)=16.0_ki*abb125(9)
      abb125(11)=abb125(45)*spak4l6
      abb125(33)=abb125(55)*spak4l5
      abb125(11)=abb125(11)+abb125(33)
      abb125(33)=4.0_ki*abb125(11)
      abb125(12)=abb125(39)*abb125(12)
      abb125(37)=abb125(54)*spal5e7
      abb125(11)=abb125(12)+abb125(37)+abb125(11)
      abb125(12)=4.0_ki*abb125(11)
      abb125(11)=-2.0_ki*abb125(11)
      abb125(37)=-spbl6k2*abb125(81)
      abb125(39)=-spak1l5*abb125(7)
      abb125(37)=abb125(39)+abb125(37)
      abb125(30)=abb125(30)*abb125(37)
      abb125(37)=-abb125(50)*abb125(42)*abb125(51)
      abb125(6)=-spal5e7*abb125(7)*abb125(6)
      abb125(6)=abb125(37)+abb125(6)
      abb125(7)=spbl6k2*abb125(62)
      abb125(37)=spak4l5*abb125(53)
      abb125(7)=abb125(7)+abb125(37)
      abb125(7)=spbe7k4*abb125(7)
      abb125(37)=-spbl6k2*abb125(75)
      abb125(39)=-abb125(53)*abb125(76)
      abb125(40)=spak3l6*abb125(45)
      abb125(42)=spak3l5*abb125(55)
      abb125(6)=abb125(42)+abb125(40)+abb125(39)+abb125(37)+2.0_ki*abb125(6)+ab&
      &b125(7)+abb125(30)
      abb125(6)=2.0_ki*abb125(6)
      abb125(7)=abb125(50)*abb125(81)
      abb125(30)=spak1l5*abb125(60)
      abb125(7)=abb125(7)+abb125(30)
      abb125(7)=16.0_ki*abb125(7)
      abb125(30)=-8.0_ki*abb125(46)
      abb125(37)=-8.0_ki*abb125(49)
      abb125(21)=-spak3k4*abb125(21)
      abb125(18)=spbl6k1*abb125(18)
      abb125(10)=spbl5k1*abb125(10)
      abb125(10)=abb125(10)+abb125(18)+abb125(21)
      abb125(10)=8.0_ki*abb125(10)
      R2d125=0.0_ki
      rat2 = rat2 + R2d125
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='125' value='", &
          & R2d125, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd125h3