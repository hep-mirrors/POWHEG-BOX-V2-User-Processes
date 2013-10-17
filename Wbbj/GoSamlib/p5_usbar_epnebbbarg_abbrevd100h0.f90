module     p5_usbar_epnebbbarg_abbrevd100h0
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(93), public :: abb100
   complex(ki), public :: R2d100
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
      abb100(1)=1.0_ki/(-mB**2+es67)
      abb100(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb100(3)=1.0_ki/(es34+es567-es12-es234)
      abb100(4)=NC**(-1)
      abb100(5)=spbl6k2**(-1)
      abb100(6)=spbl5k2**(-1)
      abb100(7)=sqrt(mB**2)
      abb100(8)=spak2l6**(-1)
      abb100(9)=TR*gW
      abb100(9)=abb100(9)**2*i_*CVSU*abb100(3)*abb100(2)
      abb100(10)=spbk3k1*abb100(1)
      abb100(11)=abb100(9)*abb100(10)*mB
      abb100(12)=c2*abb100(4)**2
      abb100(13)=abb100(12)*abb100(11)
      abb100(11)=abb100(11)*c3
      abb100(14)=abb100(11)*NC
      abb100(15)=2.0_ki*abb100(4)
      abb100(11)=abb100(15)*abb100(11)
      abb100(16)=abb100(13)+abb100(14)-abb100(11)
      abb100(17)=-abb100(16)*abb100(6)*spal6e7
      abb100(18)=spbe7l6*spak2l6
      abb100(19)=abb100(17)*abb100(18)
      abb100(20)=abb100(19)*spak1k4
      abb100(21)=spak2k7*spbk7e7
      abb100(22)=abb100(17)*abb100(21)
      abb100(23)=abb100(22)*spak1k4
      abb100(20)=abb100(20)-abb100(23)
      abb100(24)=abb100(20)*spbk2k1
      abb100(25)=abb100(19)*spak3k4
      abb100(26)=abb100(22)*spak3k4
      abb100(25)=abb100(25)-abb100(26)
      abb100(27)=abb100(25)*spbk3k2
      abb100(24)=abb100(24)+abb100(27)
      abb100(27)=es71+es12-es712
      abb100(24)=-abb100(24)*abb100(27)
      abb100(11)=abb100(14)+abb100(13)-abb100(11)
      abb100(11)=abb100(5)*abb100(11)
      abb100(13)=spae7k7*spbe7k2
      abb100(14)=abb100(11)*abb100(13)
      abb100(28)=abb100(14)*spak2l6
      abb100(29)=abb100(28)*spbk7k2
      abb100(30)=spbe7k2*spal6e7
      abb100(31)=-abb100(16)*abb100(30)
      abb100(32)=abb100(15)-NC
      abb100(33)=abb100(10)*c3
      abb100(34)=-abb100(32)*abb100(33)
      abb100(35)=abb100(12)*abb100(10)
      abb100(34)=abb100(34)+abb100(35)
      abb100(36)=abb100(9)*spal6e7
      abb100(34)=abb100(36)*abb100(34)
      abb100(37)=abb100(7)*spbe7k2
      abb100(38)=abb100(34)*abb100(37)
      abb100(31)=abb100(31)+abb100(38)
      abb100(38)=abb100(31)*spak2l6
      abb100(29)=abb100(29)+abb100(38)
      abb100(38)=spak2l5*spak3k4
      abb100(39)=spbl6k3*abb100(38)
      abb100(40)=spak2l5*spak1k4
      abb100(41)=-spbl6k1*abb100(40)
      abb100(39)=abb100(41)+abb100(39)
      abb100(29)=abb100(29)*abb100(39)
      abb100(31)=abb100(31)*spak2k7
      abb100(39)=abb100(27)*abb100(14)
      abb100(31)=abb100(31)+abb100(39)
      abb100(39)=spbk7k3*abb100(38)
      abb100(41)=-spbk7k1*abb100(40)
      abb100(39)=abb100(41)+abb100(39)
      abb100(31)=abb100(31)*abb100(39)
      abb100(39)=spak2l6*abb100(26)
      abb100(41)=abb100(17)*spbe7l6
      abb100(42)=abb100(41)*spak2l6**2
      abb100(43)=-spak3k4*abb100(42)
      abb100(39)=abb100(39)+abb100(43)
      abb100(39)=spbl6k2*abb100(39)
      abb100(43)=abb100(34)*abb100(7)
      abb100(44)=abb100(43)*spak3k4
      abb100(45)=abb100(21)-abb100(18)
      abb100(46)=abb100(45)*abb100(44)
      abb100(47)=-spak2l5*abb100(46)
      abb100(39)=abb100(47)+abb100(39)
      abb100(39)=spbk3k2*abb100(39)
      abb100(47)=spak2l6*abb100(23)
      abb100(42)=-spak1k4*abb100(42)
      abb100(42)=abb100(47)+abb100(42)
      abb100(42)=spbl6k2*abb100(42)
      abb100(47)=abb100(43)*spak1k4
      abb100(48)=abb100(45)*abb100(47)
      abb100(49)=-spak2l5*abb100(48)
      abb100(42)=abb100(49)+abb100(42)
      abb100(42)=spbk2k1*abb100(42)
      abb100(24)=abb100(39)+abb100(42)+abb100(24)+abb100(31)+abb100(29)
      abb100(24)=4.0_ki*abb100(24)
      abb100(29)=abb100(27)*abb100(11)
      abb100(31)=-abb100(33)*abb100(9)*abb100(32)
      abb100(39)=abb100(9)*abb100(12)
      abb100(10)=abb100(39)*abb100(10)
      abb100(10)=abb100(10)+abb100(31)
      abb100(31)=abb100(10)*abb100(7)
      abb100(42)=-abb100(31)+abb100(16)
      abb100(49)=abb100(42)*spak2l6
      abb100(29)=abb100(29)+abb100(49)
      abb100(50)=abb100(40)*spbk2k1
      abb100(51)=abb100(38)*spbk3k2
      abb100(50)=abb100(50)+abb100(51)
      abb100(51)=-8.0_ki*abb100(50)*abb100(29)
      abb100(52)=spak4l5*spak2l6
      abb100(53)=abb100(52)*abb100(14)
      abb100(30)=abb100(11)*abb100(30)
      abb100(54)=abb100(30)*spak2k7
      abb100(55)=abb100(54)*spak4l5
      abb100(53)=abb100(53)+abb100(55)
      abb100(53)=abb100(53)*spbk7l6
      abb100(22)=abb100(22)-abb100(19)
      abb100(55)=spak4l6*spbl6k2
      abb100(56)=abb100(22)*abb100(55)
      abb100(57)=NC*abb100(5)
      abb100(58)=abb100(15)*abb100(5)
      abb100(57)=abb100(57)-abb100(58)
      abb100(59)=mB**2
      abb100(60)=abb100(9)*abb100(6)
      abb100(61)=abb100(59)*abb100(60)
      abb100(62)=abb100(57)*abb100(61)*abb100(33)
      abb100(63)=abb100(35)*abb100(5)
      abb100(64)=abb100(63)*abb100(61)
      abb100(62)=abb100(64)+abb100(62)
      abb100(64)=abb100(62)*abb100(7)
      abb100(65)=abb100(64)*abb100(13)
      abb100(66)=spbk7k2*spak2k4
      abb100(67)=abb100(65)*abb100(66)
      abb100(68)=abb100(17)*spbk7e7
      abb100(69)=abb100(68)*spak4k7
      abb100(70)=abb100(27)*abb100(69)
      abb100(19)=abb100(19)*spbk7k2
      abb100(71)=abb100(19)*spak4k7
      abb100(72)=abb100(17)*abb100(37)
      abb100(73)=abb100(36)*abb100(6)
      abb100(59)=abb100(59)*abb100(73)
      abb100(35)=abb100(59)*abb100(35)
      abb100(74)=abb100(33)*abb100(59)
      abb100(75)=-abb100(74)*abb100(32)
      abb100(35)=abb100(75)+abb100(35)
      abb100(35)=abb100(35)*spbe7k2
      abb100(35)=abb100(35)+abb100(72)
      abb100(72)=spak2k4*abb100(7)
      abb100(75)=abb100(35)*abb100(72)
      abb100(76)=spak4l5*abb100(7)
      abb100(34)=abb100(34)*abb100(76)
      abb100(77)=-abb100(34)*abb100(45)
      abb100(53)=-abb100(71)+abb100(70)-abb100(53)+abb100(77)-abb100(67)+abb100&
      &(56)+abb100(75)
      abb100(53)=8.0_ki*abb100(53)
      abb100(42)=abb100(42)*abb100(52)
      abb100(56)=abb100(11)*spak4l5
      abb100(67)=abb100(27)*abb100(56)
      abb100(42)=abb100(42)+abb100(67)
      abb100(16)=-abb100(6)*abb100(16)
      abb100(67)=abb100(16)*spal6k7
      abb100(70)=abb100(67)*abb100(66)
      abb100(42)=abb100(70)+2.0_ki*abb100(42)
      abb100(42)=16.0_ki*abb100(42)
      abb100(70)=abb100(17)*spbe7k2
      abb100(71)=abb100(70)*spak2k4
      abb100(71)=16.0_ki*abb100(71)
      abb100(75)=abb100(17)*spak2l6
      abb100(77)=mB**3
      abb100(78)=abb100(77)*abb100(73)
      abb100(79)=abb100(57)*abb100(78)*abb100(33)
      abb100(78)=abb100(78)*abb100(63)
      abb100(78)=abb100(78)+abb100(79)
      abb100(75)=abb100(75)-abb100(78)
      abb100(75)=abb100(75)*spbe7l6
      abb100(79)=spak3k4*abb100(75)
      abb100(26)=-abb100(26)+abb100(79)
      abb100(26)=spbk3k2*abb100(26)
      abb100(75)=spak1k4*abb100(75)
      abb100(23)=-abb100(23)+abb100(75)
      abb100(23)=spbk2k1*abb100(23)
      abb100(75)=spak3k4*abb100(65)
      abb100(79)=-abb100(14)*abb100(38)
      abb100(75)=abb100(75)+abb100(79)
      abb100(75)=spbk7k3*abb100(75)
      abb100(79)=-spak1k4*abb100(65)
      abb100(80)=abb100(14)*abb100(40)
      abb100(79)=abb100(79)+abb100(80)
      abb100(79)=spbk7k1*abb100(79)
      abb100(74)=abb100(57)*abb100(74)
      abb100(80)=abb100(59)*abb100(63)
      abb100(74)=abb100(74)+abb100(80)
      abb100(74)=abb100(74)*abb100(37)
      abb100(80)=-spak3k4*abb100(74)
      abb100(81)=abb100(38)*abb100(30)
      abb100(80)=abb100(80)+abb100(81)
      abb100(80)=spbl6k3*abb100(80)
      abb100(74)=spak1k4*abb100(74)
      abb100(81)=-abb100(40)*abb100(30)
      abb100(74)=abb100(74)+abb100(81)
      abb100(74)=spbl6k1*abb100(74)
      abb100(81)=spbk3k2*spak3k4
      abb100(82)=spbk2k1*spak1k4
      abb100(81)=abb100(81)+abb100(82)
      abb100(82)=abb100(81)*abb100(8)
      abb100(21)=abb100(78)*abb100(21)*abb100(82)
      abb100(83)=abb100(17)*spak3k4
      abb100(84)=abb100(7)**2
      abb100(85)=-abb100(84)*abb100(83)
      abb100(38)=-abb100(43)*abb100(38)
      abb100(38)=abb100(85)+abb100(38)
      abb100(38)=spbe7k3*abb100(38)
      abb100(85)=abb100(17)*spak1k4
      abb100(84)=abb100(84)*abb100(85)
      abb100(40)=abb100(43)*abb100(40)
      abb100(40)=abb100(84)+abb100(40)
      abb100(40)=spbe7k1*abb100(40)
      abb100(21)=abb100(40)+abb100(38)+abb100(21)+abb100(74)+abb100(80)+abb100(&
      &79)+abb100(75)+abb100(26)+abb100(23)
      abb100(21)=8.0_ki*abb100(21)
      abb100(23)=abb100(77)*abb100(60)
      abb100(26)=abb100(57)*abb100(33)*abb100(23)
      abb100(23)=abb100(63)*abb100(23)
      abb100(23)=abb100(23)+abb100(26)
      abb100(26)=abb100(23)-abb100(64)
      abb100(26)=-abb100(26)*abb100(81)
      abb100(33)=spbk7k3*spak3k4
      abb100(38)=spbk7k1*spak1k4
      abb100(33)=abb100(33)-abb100(38)
      abb100(38)=abb100(33)*abb100(67)
      abb100(26)=abb100(38)+abb100(26)
      abb100(26)=16.0_ki*abb100(26)
      abb100(38)=abb100(85)*spbe7k1
      abb100(40)=abb100(83)*spbe7k3
      abb100(38)=abb100(38)-abb100(40)
      abb100(38)=16.0_ki*abb100(38)
      abb100(40)=abb100(62)*abb100(37)
      abb100(62)=abb100(40)*spak4e7
      abb100(63)=abb100(41)*spak4l6
      abb100(62)=abb100(69)+abb100(62)-abb100(63)
      abb100(62)=16.0_ki*abb100(62)
      abb100(63)=abb100(78)*abb100(8)
      abb100(69)=spbe7k1*spak1k4
      abb100(74)=spbe7k3*spak3k4
      abb100(69)=abb100(69)-abb100(74)
      abb100(74)=-16.0_ki*abb100(63)*abb100(69)
      abb100(75)=abb100(31)*spak2e7
      abb100(50)=-4.0_ki*abb100(50)*abb100(75)
      abb100(16)=abb100(16)*spae7k7
      abb100(77)=abb100(16)*abb100(66)
      abb100(17)=abb100(17)*spbl6k2
      abb100(78)=abb100(17)*spak2k4
      abb100(79)=2.0_ki*spak2e7
      abb100(10)=abb100(76)*abb100(79)*abb100(10)
      abb100(10)=-abb100(78)+abb100(77)-abb100(10)
      abb100(10)=8.0_ki*abb100(10)
      abb100(77)=-abb100(16)*abb100(33)
      abb100(78)=spbl6k3*abb100(83)
      abb100(80)=-spbl6k1*abb100(85)
      abb100(23)=spak2e7*abb100(23)*abb100(82)
      abb100(23)=abb100(23)+abb100(80)+abb100(78)+abb100(77)
      abb100(23)=8.0_ki*abb100(23)
      abb100(77)=abb100(11)*spak3k4
      abb100(78)=abb100(45)*abb100(77)
      abb100(80)=spbk3k2*abb100(78)
      abb100(81)=abb100(11)*spak1k4
      abb100(82)=abb100(45)*abb100(81)
      abb100(83)=spbk2k1*abb100(82)
      abb100(80)=abb100(80)+abb100(83)
      abb100(80)=4.0_ki*spak2l5*abb100(80)
      abb100(56)=-abb100(56)*abb100(45)
      abb100(83)=abb100(40)*spak2k4
      abb100(56)=abb100(83)+2.0_ki*abb100(56)
      abb100(56)=8.0_ki*abb100(56)
      abb100(64)=-8.0_ki*abb100(64)*abb100(69)
      abb100(34)=8.0_ki*abb100(34)
      abb100(69)=-spbk7k3*abb100(25)
      abb100(83)=spbk7k1*abb100(20)
      abb100(69)=abb100(69)+abb100(83)
      abb100(69)=4.0_ki*abb100(69)
      abb100(25)=-spbl6k3*abb100(25)
      abb100(20)=spbl6k1*abb100(20)
      abb100(20)=abb100(25)+abb100(20)
      abb100(20)=4.0_ki*abb100(20)
      abb100(25)=abb100(47)*spbe7k1
      abb100(83)=abb100(44)*spbe7k3
      abb100(25)=abb100(25)-abb100(83)
      abb100(83)=-abb100(14)*abb100(33)
      abb100(83)=abb100(83)+abb100(25)
      abb100(83)=spak2k7*abb100(83)
      abb100(84)=spbl6k3*spak3k4
      abb100(85)=spbl6k1*spak1k4
      abb100(84)=abb100(84)-abb100(85)
      abb100(85)=abb100(54)*abb100(84)
      abb100(83)=abb100(83)+abb100(85)
      abb100(83)=4.0_ki*abb100(83)
      abb100(84)=abb100(30)*abb100(84)
      abb100(25)=abb100(84)+abb100(25)
      abb100(25)=spak2l6*abb100(25)
      abb100(33)=-abb100(28)*abb100(33)
      abb100(25)=abb100(25)+abb100(33)
      abb100(25)=4.0_ki*abb100(25)
      abb100(33)=-4.0_ki*abb100(46)
      abb100(46)=-abb100(77)*abb100(27)
      abb100(77)=-spak3k4*abb100(49)
      abb100(46)=abb100(77)+abb100(46)
      abb100(46)=8.0_ki*abb100(46)
      abb100(77)=4.0_ki*spak3k4
      abb100(84)=-abb100(77)*abb100(75)
      abb100(78)=4.0_ki*abb100(78)
      abb100(48)=4.0_ki*abb100(48)
      abb100(81)=abb100(81)*abb100(27)
      abb100(49)=spak1k4*abb100(49)
      abb100(49)=abb100(49)+abb100(81)
      abb100(49)=8.0_ki*abb100(49)
      abb100(81)=4.0_ki*spak1k4
      abb100(75)=abb100(81)*abb100(75)
      abb100(82)=-4.0_ki*abb100(82)
      abb100(15)=abb100(15)*c3
      abb100(85)=NC*c3
      abb100(15)=abb100(15)-abb100(85)
      abb100(86)=abb100(12)-abb100(15)
      abb100(87)=mB*abb100(1)
      abb100(73)=abb100(86)*abb100(73)*abb100(87)
      abb100(55)=abb100(55)*abb100(73)
      abb100(86)=abb100(86)*abb100(1)
      abb100(88)=abb100(76)*abb100(36)*abb100(86)
      abb100(55)=-abb100(55)-abb100(88)
      abb100(55)=abb100(45)*abb100(55)
      abb100(59)=spbe7k2*abb100(59)*abb100(86)
      abb100(86)=abb100(73)*abb100(37)
      abb100(59)=abb100(59)-abb100(86)
      abb100(59)=abb100(59)*abb100(72)
      abb100(72)=abb100(85)*abb100(5)
      abb100(58)=abb100(58)*c3
      abb100(85)=abb100(12)*abb100(5)
      abb100(58)=abb100(85)+abb100(72)-abb100(58)
      abb100(61)=-abb100(58)*abb100(61)*abb100(1)
      abb100(72)=abb100(61)*abb100(66)*abb100(13)*abb100(7)
      abb100(55)=abb100(72)+abb100(59)+abb100(55)
      abb100(59)=-spbk4k1*abb100(55)
      abb100(28)=abb100(54)+abb100(28)
      abb100(54)=spak3l5*abb100(28)
      abb100(72)=abb100(9)*c3
      abb100(85)=abb100(72)*abb100(87)
      abb100(57)=abb100(85)*abb100(57)
      abb100(12)=abb100(12)*abb100(87)
      abb100(9)=abb100(12)*abb100(9)*abb100(5)
      abb100(9)=abb100(9)+abb100(57)
      abb100(57)=abb100(13)*abb100(52)*abb100(9)
      abb100(36)=spak4l5*spbe7k2*abb100(58)*abb100(36)*abb100(87)
      abb100(58)=abb100(36)*spak2k7
      abb100(57)=abb100(57)+abb100(58)
      abb100(58)=spbk4k1*abb100(57)
      abb100(54)=abb100(58)+abb100(54)
      abb100(54)=spbk7l6*abb100(54)
      abb100(58)=abb100(65)*spbk7k2
      abb100(35)=abb100(35)*abb100(7)
      abb100(35)=abb100(58)-abb100(35)
      abb100(58)=spak2k3*abb100(35)
      abb100(65)=abb100(27)*abb100(68)
      abb100(19)=abb100(65)-abb100(19)
      abb100(65)=-spak3k7*abb100(19)
      abb100(22)=abb100(22)*spbl6k2
      abb100(86)=-spak3l6*abb100(22)
      abb100(89)=abb100(73)*spbk4k1
      abb100(90)=spak4k7*spbk7e7
      abb100(91)=abb100(27)*abb100(90)
      abb100(18)=spbk7k2*abb100(18)*spak4k7
      abb100(18)=abb100(18)-abb100(91)
      abb100(91)=-abb100(89)*abb100(18)
      abb100(92)=abb100(45)*abb100(43)
      abb100(93)=spak3l5*abb100(92)
      abb100(54)=abb100(86)+abb100(65)+abb100(58)+abb100(54)+abb100(93)+abb100(&
      &91)+abb100(59)
      abb100(54)=4.0_ki*abb100(54)
      abb100(58)=spak3l5*abb100(29)
      abb100(59)=-abb100(32)*abb100(72)*abb100(1)
      abb100(65)=abb100(39)*abb100(1)
      abb100(59)=abb100(65)+abb100(59)
      abb100(65)=abb100(59)*abb100(7)
      abb100(39)=abb100(39)*abb100(87)
      abb100(32)=abb100(32)*abb100(85)
      abb100(32)=-abb100(32)+abb100(39)-abb100(65)
      abb100(32)=abb100(32)*abb100(52)
      abb100(9)=abb100(9)*spak4l5
      abb100(27)=abb100(27)*abb100(9)
      abb100(27)=abb100(32)+abb100(27)
      abb100(32)=spbk4k1*abb100(27)
      abb100(32)=abb100(58)+abb100(32)
      abb100(39)=abb100(67)*spbk7k2
      abb100(52)=spak2k3*abb100(39)
      abb100(15)=-abb100(15)*abb100(60)*abb100(87)
      abb100(12)=abb100(12)*abb100(60)
      abb100(12)=abb100(12)+abb100(15)
      abb100(12)=abb100(12)*abb100(66)
      abb100(15)=abb100(12)*spal6k7
      abb100(58)=-spbk4k1*abb100(15)
      abb100(32)=abb100(52)+2.0_ki*abb100(32)+abb100(58)
      abb100(32)=8.0_ki*abb100(32)
      abb100(52)=abb100(70)*spak2k3
      abb100(58)=spak2k4*spbe7k2
      abb100(60)=abb100(58)*abb100(89)
      abb100(52)=abb100(52)-abb100(60)
      abb100(52)=8.0_ki*abb100(52)
      abb100(60)=spak3k7*abb100(68)
      abb100(65)=-spak3l6*abb100(41)
      abb100(66)=spak3e7*abb100(40)
      abb100(67)=spak4l6*spbe7l6
      abb100(67)=abb100(67)-abb100(90)
      abb100(72)=abb100(89)*abb100(67)
      abb100(37)=abb100(61)*abb100(37)
      abb100(61)=abb100(37)*spak4e7
      abb100(85)=-spbk4k1*abb100(61)
      abb100(60)=abb100(66)+abb100(65)+abb100(60)+abb100(85)+abb100(72)
      abb100(60)=8.0_ki*abb100(60)
      abb100(16)=abb100(16)*spbk7k2
      abb100(16)=abb100(16)-abb100(17)
      abb100(17)=-spak2k3*abb100(16)
      abb100(59)=abb100(59)*abb100(76)
      abb100(65)=spbk4k1*abb100(59)
      abb100(66)=spak3l5*abb100(31)
      abb100(65)=abb100(65)+abb100(66)
      abb100(65)=abb100(65)*abb100(79)
      abb100(12)=abb100(12)*spae7k7
      abb100(66)=spbk4k1*abb100(12)
      abb100(72)=spbl6k2*spak2k4
      abb100(76)=-abb100(89)*abb100(72)
      abb100(17)=abb100(17)+abb100(65)+abb100(66)+abb100(76)
      abb100(17)=4.0_ki*abb100(17)
      abb100(37)=abb100(37)*spak2k4
      abb100(65)=abb100(45)*abb100(9)
      abb100(37)=abb100(37)+2.0_ki*abb100(65)
      abb100(65)=-spbk4k1*abb100(37)
      abb100(11)=abb100(45)*abb100(11)
      abb100(11)=2.0_ki*abb100(11)
      abb100(45)=-spak3l5*abb100(11)
      abb100(66)=spak2k3*abb100(40)
      abb100(45)=abb100(66)+abb100(65)+abb100(45)
      abb100(45)=4.0_ki*abb100(45)
      abb100(65)=-spbk4k1*abb100(88)
      abb100(66)=-spak3l5*abb100(43)
      abb100(65)=abb100(65)+abb100(66)
      abb100(65)=4.0_ki*abb100(65)
      abb100(55)=spbk4k3*abb100(55)
      abb100(28)=-spak1l5*abb100(28)
      abb100(57)=-spbk4k3*abb100(57)
      abb100(28)=abb100(57)+abb100(28)
      abb100(28)=spbk7l6*abb100(28)
      abb100(35)=spak1k2*abb100(35)
      abb100(19)=spak1k7*abb100(19)
      abb100(22)=spak1l6*abb100(22)
      abb100(57)=abb100(73)*spbk4k3
      abb100(18)=abb100(57)*abb100(18)
      abb100(66)=-spak1l5*abb100(92)
      abb100(18)=abb100(22)+abb100(19)+abb100(35)+abb100(28)+abb100(66)+abb100(&
      &18)+abb100(55)
      abb100(18)=4.0_ki*abb100(18)
      abb100(19)=-spak1l5*abb100(29)
      abb100(22)=-spbk4k3*abb100(27)
      abb100(19)=abb100(19)+abb100(22)
      abb100(22)=spak1k2*abb100(39)
      abb100(15)=spbk4k3*abb100(15)
      abb100(15)=abb100(22)+2.0_ki*abb100(19)+abb100(15)
      abb100(15)=8.0_ki*abb100(15)
      abb100(19)=abb100(70)*spak1k2
      abb100(22)=abb100(58)*abb100(57)
      abb100(19)=abb100(19)+abb100(22)
      abb100(19)=8.0_ki*abb100(19)
      abb100(22)=-spak1k7*abb100(68)
      abb100(27)=spak1l6*abb100(41)
      abb100(28)=-spak1e7*abb100(40)
      abb100(29)=-abb100(57)*abb100(67)
      abb100(35)=spbk4k3*abb100(61)
      abb100(22)=abb100(28)+abb100(27)+abb100(22)+abb100(35)+abb100(29)
      abb100(22)=8.0_ki*abb100(22)
      abb100(16)=-spak1k2*abb100(16)
      abb100(27)=-spbk4k3*abb100(59)
      abb100(28)=-spak1l5*abb100(31)
      abb100(27)=abb100(27)+abb100(28)
      abb100(27)=abb100(27)*abb100(79)
      abb100(12)=-spbk4k3*abb100(12)
      abb100(28)=abb100(57)*abb100(72)
      abb100(12)=abb100(16)+abb100(27)+abb100(12)+abb100(28)
      abb100(12)=4.0_ki*abb100(12)
      abb100(16)=spbk4k3*abb100(37)
      abb100(11)=spak1l5*abb100(11)
      abb100(27)=spak1k2*abb100(40)
      abb100(11)=abb100(27)+abb100(16)+abb100(11)
      abb100(11)=4.0_ki*abb100(11)
      abb100(16)=spbk4k3*abb100(88)
      abb100(27)=spak1l5*abb100(43)
      abb100(16)=abb100(16)+abb100(27)
      abb100(16)=4.0_ki*abb100(16)
      abb100(27)=8.0_ki*spak4l5
      abb100(28)=abb100(27)*abb100(14)
      abb100(29)=-spak3l5*abb100(14)
      abb100(9)=abb100(9)*abb100(13)
      abb100(13)=-spbk4k1*abb100(9)
      abb100(13)=abb100(13)+abb100(29)
      abb100(13)=4.0_ki*abb100(13)
      abb100(29)=spak1l5*abb100(14)
      abb100(9)=spbk4k3*abb100(9)
      abb100(9)=abb100(9)+abb100(29)
      abb100(9)=4.0_ki*abb100(9)
      abb100(27)=abb100(27)*abb100(30)
      abb100(29)=spak3l5*abb100(30)
      abb100(31)=spbk4k1*abb100(36)
      abb100(29)=abb100(31)+abb100(29)
      abb100(29)=4.0_ki*abb100(29)
      abb100(31)=-spak1l5*abb100(30)
      abb100(35)=-spbk4k3*abb100(36)
      abb100(31)=abb100(35)+abb100(31)
      abb100(31)=4.0_ki*abb100(31)
      abb100(35)=abb100(63)*spbe7k2
      abb100(35)=8.0_ki*abb100(35)
      abb100(36)=-spak3k4*abb100(35)
      abb100(37)=4.0_ki*abb100(44)
      abb100(39)=-abb100(40)*abb100(77)
      abb100(43)=-abb100(68)*abb100(77)
      abb100(44)=abb100(41)*abb100(77)
      abb100(55)=abb100(14)*abb100(77)
      abb100(57)=-abb100(30)*abb100(77)
      abb100(35)=spak1k4*abb100(35)
      abb100(47)=-4.0_ki*abb100(47)
      abb100(40)=abb100(40)*abb100(81)
      abb100(58)=abb100(68)*abb100(81)
      abb100(41)=-abb100(41)*abb100(81)
      abb100(14)=-abb100(14)*abb100(81)
      abb100(30)=abb100(30)*abb100(81)
      R2d100=0.0_ki
      rat2 = rat2 + R2d100
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='100' value='", &
          & R2d100, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd100h0