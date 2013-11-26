module     p5_usbar_epnebbbarg_abbrevd75h3
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(93), public :: abb75
   complex(ki), public :: R2d75
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
      abb75(1)=1.0_ki/(-mB**2+es67)
      abb75(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb75(3)=NC**(-1)
      abb75(4)=spak2l6**(-1)
      abb75(5)=sqrt(mB**2)
      abb75(6)=spbl6k2**(-1)
      abb75(7)=abb75(3)**2
      abb75(7)=abb75(7)+1.0_ki
      abb75(8)=TR*gW
      abb75(8)=abb75(8)**2*i_*CVSU*abb75(2)*abb75(1)
      abb75(9)=abb75(8)*abb75(7)
      abb75(10)=spbe7l6*abb75(5)
      abb75(11)=abb75(9)*abb75(10)
      abb75(12)=abb75(11)*c2
      abb75(13)=2.0_ki*c3
      abb75(14)=abb75(13)*abb75(3)
      abb75(15)=abb75(14)*abb75(8)
      abb75(10)=abb75(10)*abb75(15)
      abb75(16)=abb75(12)-abb75(10)
      abb75(17)=spbl6k1*spal6e7
      abb75(18)=spbk7k1*spae7k7
      abb75(17)=abb75(17)-abb75(18)
      abb75(18)=abb75(17)*abb75(16)
      abb75(19)=mB**2
      abb75(20)=spak2e7*abb75(4)
      abb75(21)=abb75(19)*abb75(20)
      abb75(22)=abb75(21)*abb75(10)
      abb75(19)=abb75(19)*abb75(11)
      abb75(23)=abb75(20)*c2
      abb75(24)=abb75(19)*abb75(23)
      abb75(22)=abb75(22)-abb75(24)
      abb75(25)=spbk2k1*abb75(6)
      abb75(26)=-abb75(25)*abb75(22)
      abb75(18)=abb75(26)+abb75(18)
      abb75(26)=spak2k4**2
      abb75(18)=abb75(26)*abb75(18)
      abb75(27)=abb75(8)*mB
      abb75(7)=abb75(27)*abb75(7)
      abb75(23)=abb75(7)*abb75(23)
      abb75(14)=abb75(27)*abb75(14)
      abb75(28)=abb75(14)*abb75(20)
      abb75(23)=abb75(23)-abb75(28)
      abb75(29)=-abb75(26)*abb75(23)
      abb75(30)=abb75(5)**2
      abb75(31)=-spbe7k1*abb75(30)*abb75(29)
      abb75(12)=abb75(12)*spak2k4
      abb75(32)=abb75(10)*spak2k4
      abb75(12)=abb75(12)-abb75(32)
      abb75(33)=spak2l5*spbl5k1
      abb75(34)=abb75(33)*spak4e7
      abb75(35)=abb75(12)*abb75(34)
      abb75(36)=-spak2k4*abb75(23)
      abb75(37)=abb75(33)*spbk7e7
      abb75(38)=abb75(37)*spak4k7
      abb75(39)=-abb75(36)*abb75(38)
      abb75(40)=abb75(36)*spbe7l6
      abb75(41)=abb75(33)*spak4l6
      abb75(42)=abb75(40)*abb75(41)
      abb75(18)=abb75(42)+abb75(39)+abb75(35)+abb75(31)+abb75(18)
      abb75(31)=spbk4k3*spbl5k2
      abb75(18)=abb75(31)*abb75(18)
      abb75(35)=abb75(36)*spbl5k2
      abb75(39)=spbk7e7*spak2k7
      abb75(42)=abb75(35)*abb75(39)
      abb75(43)=abb75(9)*abb75(5)
      abb75(44)=c2*abb75(43)
      abb75(45)=abb75(7)*c2
      abb75(46)=abb75(44)-abb75(45)
      abb75(47)=abb75(46)*spbe7l6
      abb75(8)=abb75(8)*abb75(5)*abb75(3)
      abb75(27)=abb75(27)*abb75(3)
      abb75(48)=abb75(8)-abb75(27)
      abb75(49)=abb75(13)*spbe7l6
      abb75(50)=abb75(48)*abb75(49)
      abb75(47)=abb75(47)-abb75(50)
      abb75(50)=-abb75(47)*spak2e7*spak2k4
      abb75(51)=abb75(50)*spbl5k2
      abb75(42)=abb75(42)+abb75(51)
      abb75(51)=-spbk3k2*abb75(33)*abb75(42)
      abb75(18)=abb75(51)+abb75(18)
      abb75(18)=4.0_ki*abb75(18)
      abb75(51)=abb75(48)*abb75(13)
      abb75(46)=abb75(51)-abb75(46)
      abb75(52)=spbl6k1*abb75(26)*abb75(46)
      abb75(53)=abb75(45)-abb75(14)
      abb75(53)=abb75(53)*abb75(4)
      abb75(54)=-abb75(26)*abb75(53)
      abb75(55)=spbk7k1*spak2k7
      abb75(56)=-abb75(54)*abb75(55)
      abb75(52)=abb75(52)+abb75(56)
      abb75(52)=8.0_ki*abb75(52)*abb75(31)
      abb75(56)=8.0_ki*spbe7k1
      abb75(29)=abb75(31)*abb75(29)*abb75(56)
      abb75(57)=spak2k4*spbl5k3
      abb75(58)=abb75(57)*c2
      abb75(59)=abb75(11)*abb75(58)
      abb75(60)=abb75(10)*abb75(57)
      abb75(59)=abb75(59)-abb75(60)
      abb75(61)=-abb75(59)*abb75(17)
      abb75(62)=abb75(28)*abb75(57)
      abb75(63)=abb75(7)*abb75(58)
      abb75(64)=abb75(63)*abb75(20)
      abb75(62)=abb75(62)-abb75(64)
      abb75(64)=-abb75(30)*abb75(62)
      abb75(65)=abb75(64)*spbe7k1
      abb75(66)=spbl5k3*c2
      abb75(67)=abb75(66)*abb75(20)
      abb75(68)=abb75(67)*abb75(7)
      abb75(28)=abb75(28)*spbl5k3
      abb75(28)=abb75(28)-abb75(68)
      abb75(68)=abb75(38)*abb75(28)
      abb75(69)=-spbe7l6*abb75(28)
      abb75(41)=abb75(41)*abb75(69)
      abb75(11)=abb75(11)*abb75(66)
      abb75(10)=abb75(10)*spbl5k3
      abb75(11)=abb75(11)-abb75(10)
      abb75(34)=abb75(34)*abb75(11)
      abb75(34)=abb75(68)+abb75(61)-abb75(65)+abb75(41)-abb75(34)
      abb75(41)=abb75(21)*abb75(60)
      abb75(20)=abb75(20)*abb75(19)*abb75(58)
      abb75(20)=abb75(41)-abb75(20)
      abb75(41)=abb75(20)*abb75(25)
      abb75(41)=abb75(41)+abb75(34)
      abb75(41)=8.0_ki*abb75(41)
      abb75(60)=abb75(43)*abb75(58)
      abb75(61)=abb75(60)-abb75(63)
      abb75(48)=-abb75(57)*abb75(48)
      abb75(65)=abb75(48)*abb75(13)
      abb75(65)=abb75(65)+abb75(61)
      abb75(68)=abb75(65)*spbl6k1
      abb75(14)=abb75(14)*abb75(57)
      abb75(14)=abb75(14)-abb75(63)
      abb75(14)=abb75(4)*abb75(14)
      abb75(63)=abb75(55)*abb75(14)
      abb75(63)=abb75(68)+abb75(63)
      abb75(68)=16.0_ki*abb75(63)
      abb75(70)=16.0_ki*spbe7k1
      abb75(71)=abb75(70)*abb75(62)
      abb75(10)=abb75(21)*abb75(10)
      abb75(19)=abb75(19)*abb75(67)
      abb75(10)=abb75(10)-abb75(19)
      abb75(19)=spak3k4*spbk3k1
      abb75(67)=-abb75(10)*abb75(19)
      abb75(21)=abb75(32)*abb75(21)
      abb75(24)=abb75(24)*spak2k4
      abb75(21)=abb75(21)-abb75(24)
      abb75(24)=spbk3k1*spbl5k2
      abb75(32)=-abb75(21)*abb75(24)
      abb75(72)=abb75(4)**2
      abb75(73)=abb75(72)*spak2e7
      abb75(74)=mB**3
      abb75(9)=abb75(73)*abb75(74)*abb75(9)
      abb75(75)=abb75(9)*c2
      abb75(74)=abb75(74)*abb75(15)
      abb75(73)=abb75(74)*abb75(73)
      abb75(75)=abb75(75)-abb75(73)
      abb75(76)=abb75(75)*abb75(26)
      abb75(77)=abb75(31)*spbe7k1
      abb75(78)=-abb75(76)*abb75(77)
      abb75(32)=abb75(78)+abb75(32)+abb75(67)
      abb75(32)=abb75(6)*abb75(32)
      abb75(32)=-abb75(34)+abb75(32)
      abb75(32)=8.0_ki*abb75(32)
      abb75(58)=abb75(9)*abb75(58)
      abb75(67)=abb75(73)*abb75(57)
      abb75(58)=abb75(58)-abb75(67)
      abb75(67)=abb75(58)*abb75(6)
      abb75(70)=abb75(67)*abb75(70)
      abb75(73)=abb75(62)*spbk2k1
      abb75(78)=abb75(19)*abb75(28)
      abb75(79)=abb75(36)*abb75(24)
      abb75(78)=-abb75(73)+abb75(78)+abb75(79)
      abb75(79)=-abb75(78)*abb75(39)
      abb75(20)=abb75(6)*abb75(20)
      abb75(61)=-spbe7l6*abb75(61)
      abb75(48)=-abb75(49)*abb75(48)
      abb75(48)=abb75(61)+abb75(48)
      abb75(48)=spak2e7*abb75(48)
      abb75(20)=abb75(20)+abb75(48)
      abb75(20)=spbk2k1*abb75(20)
      abb75(48)=-abb75(50)*abb75(24)
      abb75(7)=abb75(7)*abb75(66)
      abb75(43)=abb75(43)*abb75(66)
      abb75(7)=abb75(7)-abb75(43)
      abb75(50)=-spbe7l6*spak2e7*abb75(7)
      abb75(61)=spak2e7*spbl5k3
      abb75(80)=abb75(27)*abb75(61)
      abb75(8)=spbl5k3*abb75(8)
      abb75(81)=abb75(8)*spak2e7
      abb75(80)=abb75(80)-abb75(81)
      abb75(49)=abb75(80)*abb75(49)
      abb75(49)=abb75(49)+abb75(50)
      abb75(50)=abb75(49)*abb75(19)
      abb75(20)=abb75(79)+abb75(20)+abb75(50)+abb75(48)+abb75(34)
      abb75(20)=4.0_ki*abb75(20)
      abb75(34)=8.0_ki*abb75(63)
      abb75(48)=abb75(62)*spbe7k1
      abb75(48)=8.0_ki*abb75(48)
      abb75(50)=abb75(56)*abb75(67)
      abb75(15)=abb75(15)*abb75(5)
      abb75(62)=abb75(44)-abb75(15)
      abb75(63)=4.0_ki*abb75(62)
      abb75(26)=abb75(77)*abb75(26)*abb75(63)
      abb75(57)=abb75(15)*abb75(57)
      abb75(57)=abb75(57)-abb75(60)
      abb75(56)=abb75(57)*abb75(56)
      abb75(60)=4.0_ki*spbe7k1
      abb75(60)=abb75(57)*abb75(60)
      abb75(67)=abb75(59)*spbk2k1
      abb75(77)=abb75(11)*abb75(19)
      abb75(79)=abb75(12)*abb75(24)
      abb75(67)=-abb75(67)+abb75(77)+abb75(79)
      abb75(67)=4.0_ki*abb75(67)
      abb75(77)=-spak2l5*abb75(67)
      abb75(54)=-abb75(54)*abb75(17)
      abb75(76)=abb75(76)*abb75(25)
      abb75(54)=abb75(76)+abb75(54)
      abb75(31)=abb75(54)*abb75(31)
      abb75(54)=-abb75(30)*abb75(36)
      abb75(76)=abb75(54)*abb75(24)
      abb75(79)=-abb75(30)*abb75(28)
      abb75(80)=abb75(79)*abb75(19)
      abb75(64)=-spbk2k1*abb75(64)
      abb75(31)=abb75(31)+abb75(64)+abb75(76)+abb75(80)
      abb75(31)=4.0_ki*abb75(31)
      abb75(64)=8.0_ki*abb75(78)
      abb75(76)=-abb75(14)*abb75(17)
      abb75(58)=abb75(58)*abb75(25)
      abb75(58)=abb75(76)+abb75(58)
      abb75(76)=8.0_ki*abb75(58)
      abb75(58)=-4.0_ki*abb75(58)
      abb75(80)=abb75(15)*spak2k4
      abb75(44)=abb75(44)*spak2k4
      abb75(80)=abb75(80)-abb75(44)
      abb75(81)=-abb75(80)*abb75(24)
      abb75(15)=abb75(15)*spbl5k3
      abb75(15)=abb75(15)-abb75(43)
      abb75(43)=-abb75(15)*abb75(19)
      abb75(82)=spbk2k1*abb75(57)
      abb75(43)=abb75(82)+abb75(81)+abb75(43)
      abb75(43)=4.0_ki*abb75(43)
      abb75(81)=spak3k4*spak2l5
      abb75(81)=4.0_ki*abb75(81)
      abb75(81)=abb75(81)*spbl5k3**2
      abb75(82)=-abb75(16)*abb75(81)
      abb75(83)=4.0_ki*spak2l5
      abb75(78)=spbk7e7*abb75(78)*abb75(83)
      abb75(84)=-spbk7e7*abb75(23)*abb75(81)
      abb75(40)=-abb75(40)*abb75(24)
      abb75(85)=abb75(69)*abb75(19)
      abb75(73)=spbe7l6*abb75(73)
      abb75(40)=abb75(73)+abb75(40)+abb75(85)
      abb75(40)=abb75(40)*abb75(83)
      abb75(73)=-spbe7l6*abb75(23)
      abb75(81)=-abb75(73)*abb75(81)
      abb75(83)=abb75(12)*abb75(17)
      abb75(85)=spbe7k1*abb75(54)
      abb75(86)=-abb75(21)*abb75(25)
      abb75(38)=abb75(23)*abb75(38)
      abb75(38)=abb75(38)+abb75(85)+abb75(86)+abb75(83)
      abb75(38)=spbl5k4*abb75(38)
      abb75(47)=-spak2e7*abb75(47)
      abb75(83)=abb75(23)*abb75(39)
      abb75(47)=-abb75(83)+abb75(47)
      abb75(83)=spbl5k2*abb75(47)
      abb75(85)=spak4e7*abb75(16)
      abb75(86)=spak4l6*abb75(73)
      abb75(85)=abb75(86)+abb75(85)
      abb75(85)=spbl5k4*abb75(85)
      abb75(86)=spak3e7*abb75(11)
      abb75(69)=-spak3l6*abb75(69)
      abb75(69)=abb75(69)+abb75(86)+abb75(85)+abb75(83)
      abb75(69)=abb75(33)*abb75(69)
      abb75(83)=-abb75(10)*abb75(25)
      abb75(85)=abb75(11)*abb75(17)
      abb75(86)=spbe7k1*abb75(79)
      abb75(83)=abb75(86)+abb75(83)+abb75(85)
      abb75(83)=spak2k3*abb75(83)
      abb75(85)=-spak3k7*abb75(28)*abb75(37)
      abb75(38)=abb75(85)+abb75(83)+abb75(69)+abb75(38)
      abb75(38)=4.0_ki*abb75(38)
      abb75(45)=-abb75(51)-abb75(45)
      abb75(45)=spak2k4*abb75(45)
      abb75(44)=abb75(44)+abb75(45)
      abb75(45)=-spbl6k1*abb75(44)
      abb75(51)=-spak2k4*abb75(53)
      abb75(69)=-abb75(51)*abb75(55)
      abb75(45)=abb75(45)+abb75(69)
      abb75(45)=spbl5k4*abb75(45)
      abb75(27)=abb75(27)*spbl5k3
      abb75(8)=abb75(27)-abb75(8)
      abb75(8)=abb75(8)*abb75(13)
      abb75(7)=abb75(8)-abb75(7)
      abb75(8)=-spbl6k1*abb75(7)
      abb75(13)=-spbl5k3*abb75(53)
      abb75(27)=-abb75(13)*abb75(55)
      abb75(8)=abb75(8)+abb75(27)
      abb75(8)=spak2k3*abb75(8)
      abb75(8)=abb75(45)+abb75(8)
      abb75(8)=8.0_ki*abb75(8)
      abb75(27)=spbl5k4*spbe7k1
      abb75(36)=abb75(36)*abb75(27)
      abb75(45)=spak2k3*spbe7k1
      abb75(55)=abb75(28)*abb75(45)
      abb75(36)=abb75(36)+abb75(55)
      abb75(36)=8.0_ki*abb75(36)
      abb75(55)=abb75(61)*abb75(74)*abb75(72)
      abb75(9)=abb75(9)*abb75(66)
      abb75(9)=abb75(55)-abb75(9)
      abb75(55)=abb75(9)*abb75(45)
      abb75(61)=spbl5k1*abb75(22)
      abb75(66)=-spak2k4*abb75(75)
      abb75(69)=abb75(66)*abb75(27)
      abb75(55)=abb75(55)+abb75(61)+abb75(69)
      abb75(55)=8.0_ki*abb75(6)*abb75(55)
      abb75(61)=4.0_ki*abb75(47)
      abb75(69)=spbl5k1*abb75(61)
      abb75(27)=-abb75(80)*abb75(27)
      abb75(45)=-abb75(15)*abb75(45)
      abb75(27)=abb75(27)+abb75(45)
      abb75(27)=4.0_ki*abb75(27)
      abb75(33)=4.0_ki*abb75(33)
      abb75(45)=abb75(16)*abb75(33)
      abb75(72)=-abb75(51)*abb75(17)
      abb75(74)=-abb75(66)*abb75(25)
      abb75(72)=abb75(74)+abb75(72)
      abb75(72)=spbl5k4*abb75(72)
      abb75(25)=-abb75(9)*abb75(25)
      abb75(17)=-abb75(13)*abb75(17)
      abb75(17)=abb75(25)+abb75(17)
      abb75(17)=spak2k3*abb75(17)
      abb75(25)=-abb75(30)*abb75(23)
      abb75(30)=spbl5k1*abb75(25)
      abb75(17)=abb75(17)+abb75(30)+abb75(72)
      abb75(17)=4.0_ki*abb75(17)
      abb75(30)=8.0_ki*abb75(23)
      abb75(72)=abb75(30)*spbl5k1
      abb75(74)=4.0_ki*spbl5k1
      abb75(62)=-abb75(62)*abb75(74)
      abb75(23)=4.0_ki*abb75(23)*abb75(37)
      abb75(33)=abb75(73)*abb75(33)
      abb75(37)=4.0_ki*spbk4k3*abb75(42)
      abb75(39)=abb75(39)*abb75(28)
      abb75(39)=abb75(49)-abb75(39)
      abb75(49)=8.0_ki*abb75(39)
      abb75(39)=4.0_ki*abb75(39)
      abb75(61)=spbl5k4*abb75(61)
      abb75(73)=-spae7k7*abb75(67)
      abb75(83)=abb75(14)*spbk2k1
      abb75(85)=abb75(13)*abb75(19)
      abb75(86)=abb75(51)*abb75(24)
      abb75(83)=-abb75(83)+abb75(85)+abb75(86)
      abb75(85)=-8.0_ki*spak2k7*abb75(83)
      abb75(83)=4.0_ki*abb75(83)
      abb75(86)=spae7k7*abb75(83)
      abb75(87)=abb75(16)*abb75(74)
      abb75(88)=spae7k7*abb75(87)
      abb75(89)=abb75(53)*spak2k7
      abb75(90)=8.0_ki*spbl5k1
      abb75(91)=-abb75(90)*abb75(89)
      abb75(74)=abb75(53)*abb75(74)
      abb75(92)=spae7k7*abb75(74)
      abb75(67)=spal6e7*abb75(67)
      abb75(24)=-abb75(44)*abb75(24)
      abb75(19)=-abb75(7)*abb75(19)
      abb75(93)=spbk2k1*abb75(65)
      abb75(19)=abb75(93)+abb75(24)+abb75(19)
      abb75(19)=8.0_ki*abb75(19)
      abb75(24)=-spal6e7*abb75(83)
      abb75(83)=-spal6e7*abb75(87)
      abb75(87)=-abb75(46)*abb75(90)
      abb75(74)=-spal6e7*abb75(74)
      abb75(10)=spak3k4*abb75(10)
      abb75(21)=spbl5k2*abb75(21)
      abb75(10)=abb75(21)+abb75(10)
      abb75(10)=abb75(6)*abb75(10)
      abb75(10)=abb75(10)+abb75(42)
      abb75(10)=spbk3k2*abb75(10)
      abb75(11)=abb75(11)*spak3k4
      abb75(12)=abb75(12)*spbl5k2
      abb75(11)=abb75(11)+abb75(12)
      abb75(12)=spbl6k3*spal6e7
      abb75(21)=spbk7k3*spae7k7
      abb75(12)=abb75(12)-abb75(21)
      abb75(11)=abb75(11)*abb75(12)
      abb75(21)=spbl5k2*abb75(54)
      abb75(42)=spak3k4*abb75(79)
      abb75(21)=abb75(21)+abb75(42)
      abb75(21)=spbe7k3*abb75(21)
      abb75(42)=spbl6k2*spal6e7
      abb75(54)=spbk7k2*spae7k7
      abb75(42)=abb75(42)-abb75(54)
      abb75(54)=-abb75(59)*abb75(42)
      abb75(10)=abb75(21)+abb75(10)+abb75(54)+abb75(11)
      abb75(10)=4.0_ki*abb75(10)
      abb75(11)=-spbl5k2*abb75(44)
      abb75(7)=-spak3k4*abb75(7)
      abb75(7)=abb75(11)+abb75(7)
      abb75(7)=spbl6k3*abb75(7)
      abb75(11)=abb75(13)*spak3k4
      abb75(13)=abb75(51)*spbl5k2
      abb75(11)=abb75(11)+abb75(13)
      abb75(13)=-spbk7k3*spak2k7*abb75(11)
      abb75(21)=es12-es712+es71
      abb75(21)=abb75(14)*abb75(21)
      abb75(44)=spbl6k2*abb75(65)
      abb75(7)=abb75(44)+abb75(7)+abb75(13)+abb75(21)
      abb75(7)=8.0_ki*abb75(7)
      abb75(13)=abb75(28)*spak3k4
      abb75(13)=abb75(13)+abb75(35)
      abb75(21)=8.0_ki*spbe7k3
      abb75(13)=abb75(13)*abb75(21)
      abb75(9)=abb75(9)*spak3k4
      abb75(28)=abb75(66)*spbl5k2
      abb75(9)=abb75(28)+abb75(9)
      abb75(9)=abb75(9)*abb75(6)
      abb75(21)=abb75(21)*abb75(9)
      abb75(28)=-spbl5k2*abb75(80)
      abb75(15)=-spak3k4*abb75(15)
      abb75(15)=abb75(28)+abb75(15)
      abb75(15)=spbe7k3*abb75(15)
      abb75(28)=spbe7k2*abb75(57)
      abb75(15)=abb75(15)+abb75(28)
      abb75(15)=4.0_ki*abb75(15)
      abb75(11)=-abb75(11)*abb75(12)
      abb75(9)=spbk3k2*abb75(9)
      abb75(12)=abb75(14)*abb75(42)
      abb75(9)=abb75(9)+abb75(11)+abb75(12)
      abb75(9)=4.0_ki*abb75(9)
      abb75(11)=-abb75(6)*abb75(22)
      abb75(11)=abb75(11)-abb75(47)
      abb75(11)=spbl5k2*abb75(11)
      abb75(12)=spbl6l5*spal6e7
      abb75(14)=spbk7l5*spae7k7
      abb75(12)=abb75(12)-abb75(14)
      abb75(14)=-abb75(16)*abb75(12)
      abb75(16)=spbe7l5*abb75(25)
      abb75(11)=abb75(16)+abb75(11)+abb75(14)
      abb75(11)=4.0_ki*abb75(11)
      abb75(14)=-spbl6l5*abb75(46)
      abb75(16)=-spbk7l5*abb75(89)
      abb75(14)=abb75(14)+abb75(16)
      abb75(14)=8.0_ki*abb75(14)
      abb75(16)=abb75(30)*spbe7l5
      abb75(22)=abb75(75)*abb75(6)
      abb75(25)=8.0_ki*spbe7l5*abb75(22)
      abb75(28)=-spbe7l5*abb75(63)
      abb75(12)=-abb75(53)*abb75(12)
      abb75(22)=spbl5k2*abb75(22)
      abb75(12)=abb75(22)+abb75(12)
      abb75(12)=4.0_ki*abb75(12)
      R2d75=0.0_ki
      rat2 = rat2 + R2d75
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='75' value='", &
          & R2d75, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd75h3
