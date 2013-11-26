module     p5_usbar_epnebbbarg_abbrevd100h3
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(89), public :: abb100
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
      abb100(5)=spak2l6**(-1)
      abb100(6)=sqrt(mB**2)
      abb100(7)=spak2l5**(-1)
      abb100(8)=spbl6k2**(-1)
      abb100(9)=abb100(4)**2
      abb100(10)=abb100(9)*c2
      abb100(11)=abb100(10)*spak2e7
      abb100(12)=TR*gW
      abb100(12)=abb100(12)**2*i_*CVSU*abb100(3)*abb100(2)
      abb100(13)=abb100(12)*spbk3k1*abb100(1)
      abb100(14)=abb100(13)*spbe7l6
      abb100(15)=abb100(11)*abb100(14)
      abb100(16)=spak2e7*c3
      abb100(17)=abb100(14)*abb100(16)
      abb100(18)=2.0_ki*abb100(4)
      abb100(19)=abb100(18)-NC
      abb100(20)=-abb100(17)*abb100(19)
      abb100(20)=abb100(20)+abb100(15)
      abb100(20)=abb100(20)*abb100(6)
      abb100(21)=abb100(13)*mB
      abb100(22)=abb100(21)*abb100(16)
      abb100(23)=abb100(19)*spbe7l6
      abb100(24)=-abb100(22)*abb100(23)
      abb100(25)=abb100(11)*abb100(21)
      abb100(26)=abb100(25)*spbe7l6
      abb100(20)=abb100(20)-abb100(24)-abb100(26)
      abb100(24)=abb100(21)*abb100(5)
      abb100(26)=abb100(11)*abb100(24)
      abb100(27)=abb100(24)*abb100(16)
      abb100(28)=abb100(18)*abb100(27)
      abb100(27)=NC*abb100(27)
      abb100(26)=abb100(27)+abb100(26)-abb100(28)
      abb100(27)=spbk7e7*spak2k7
      abb100(28)=abb100(26)*abb100(27)
      abb100(28)=abb100(28)+abb100(20)
      abb100(29)=abb100(28)*spak1k4
      abb100(30)=abb100(29)*spbl5k1
      abb100(31)=abb100(28)*spak3k4
      abb100(32)=abb100(31)*spbl5k3
      abb100(30)=abb100(30)-abb100(32)
      abb100(32)=es71+es12-es712
      abb100(33)=abb100(30)*abb100(32)
      abb100(34)=abb100(22)*NC
      abb100(22)=abb100(22)*abb100(18)
      abb100(25)=-abb100(22)+abb100(25)+abb100(34)
      abb100(25)=abb100(25)*abb100(27)
      abb100(20)=abb100(20)*spak2l6
      abb100(20)=abb100(25)+abb100(20)
      abb100(25)=-spbl5k3*spak3k4
      abb100(35)=spbl5k1*spak1k4
      abb100(25)=abb100(25)+abb100(35)
      abb100(20)=spbl6k2*abb100(20)*abb100(25)
      abb100(20)=abb100(20)+abb100(33)
      abb100(20)=4.0_ki*abb100(20)
      abb100(25)=abb100(28)*spbk7l5
      abb100(33)=abb100(25)*spak4k7
      abb100(28)=abb100(28)*spbl6l5
      abb100(35)=abb100(28)*spak4l6
      abb100(36)=-abb100(21)*abb100(19)
      abb100(37)=spak2k4*c3
      abb100(38)=-abb100(37)*abb100(36)
      abb100(39)=abb100(7)*spbe7l6
      abb100(40)=-abb100(39)*abb100(38)
      abb100(41)=abb100(39)*abb100(21)
      abb100(42)=abb100(41)*abb100(10)
      abb100(43)=abb100(42)*spak2k4
      abb100(40)=abb100(43)+abb100(40)
      abb100(43)=abb100(40)*spak2l6
      abb100(44)=abb100(43)*spae7k7
      abb100(45)=abb100(40)*spal6e7
      abb100(46)=abb100(45)*spak2k7
      abb100(44)=abb100(44)+abb100(46)
      abb100(44)=abb100(44)*spbk7l6
      abb100(46)=mB**3
      abb100(47)=abb100(46)*abb100(18)
      abb100(48)=abb100(46)*NC
      abb100(49)=abb100(48)-abb100(47)
      abb100(16)=abb100(16)*abb100(13)
      abb100(50)=abb100(5)**2
      abb100(51)=-abb100(49)*abb100(50)*abb100(16)
      abb100(9)=abb100(9)*abb100(13)*c2
      abb100(52)=abb100(50)*abb100(46)
      abb100(53)=abb100(52)*spak2e7*abb100(9)
      abb100(51)=-abb100(53)+abb100(51)
      abb100(53)=-spak2k4*abb100(51)
      abb100(54)=abb100(27)*abb100(8)
      abb100(55)=abb100(53)*abb100(54)
      abb100(56)=spak2k4*abb100(5)
      abb100(57)=abb100(49)*abb100(17)*abb100(56)
      abb100(15)=abb100(46)*abb100(15)
      abb100(58)=abb100(15)*abb100(56)
      abb100(57)=abb100(58)+abb100(57)
      abb100(57)=abb100(57)*abb100(8)
      abb100(55)=abb100(57)-abb100(55)
      abb100(55)=abb100(55)*spbl5k2
      abb100(41)=abb100(11)*abb100(41)
      abb100(22)=abb100(22)*abb100(39)
      abb100(34)=abb100(34)*abb100(39)
      abb100(22)=abb100(34)+abb100(41)-abb100(22)
      abb100(34)=spak2k4*abb100(22)
      abb100(34)=2.0_ki*abb100(34)
      abb100(41)=abb100(34)*abb100(6)
      abb100(57)=abb100(17)*abb100(7)
      abb100(58)=mB**2
      abb100(59)=-abb100(19)*abb100(57)*abb100(58)
      abb100(11)=abb100(7)*abb100(58)*abb100(11)
      abb100(60)=abb100(14)*abb100(11)
      abb100(59)=abb100(60)+abb100(59)
      abb100(60)=abb100(59)*spak2k4
      abb100(41)=abb100(41)-abb100(60)
      abb100(41)=abb100(41)*abb100(6)
      abb100(60)=abb100(26)*spbe7l5
      abb100(61)=spak2k4*abb100(60)
      abb100(62)=abb100(6)**2
      abb100(63)=abb100(61)*abb100(62)
      abb100(47)=abb100(57)*abb100(47)
      abb100(64)=abb100(15)*abb100(7)
      abb100(48)=abb100(57)*abb100(48)
      abb100(47)=abb100(48)+abb100(64)-abb100(47)
      abb100(48)=abb100(47)*abb100(8)
      abb100(57)=abb100(56)*abb100(48)
      abb100(64)=abb100(32)*abb100(57)
      abb100(65)=abb100(47)*spak2k4
      abb100(66)=-abb100(14)*abb100(19)
      abb100(67)=abb100(37)*abb100(66)
      abb100(14)=abb100(10)*abb100(14)
      abb100(68)=abb100(14)*spak2k4
      abb100(67)=abb100(68)+abb100(67)
      abb100(68)=spae7k7*spbk7l5
      abb100(69)=spal6e7*spbl6l5
      abb100(68)=abb100(68)-abb100(69)
      abb100(67)=abb100(68)*abb100(67)*abb100(6)
      abb100(69)=-abb100(7)*abb100(19)
      abb100(16)=abb100(69)*abb100(58)*abb100(16)
      abb100(11)=abb100(13)*abb100(11)
      abb100(11)=abb100(11)+abb100(16)
      abb100(16)=abb100(56)*abb100(11)
      abb100(56)=abb100(27)*abb100(6)
      abb100(70)=abb100(16)*abb100(56)
      abb100(33)=abb100(65)+abb100(55)-abb100(41)-abb100(63)+abb100(64)-abb100(&
      &70)-abb100(33)+abb100(44)-abb100(35)+abb100(67)
      abb100(33)=8.0_ki*abb100(33)
      abb100(13)=abb100(13)*abb100(19)
      abb100(35)=-abb100(37)*abb100(13)
      abb100(41)=abb100(9)*spak2k4
      abb100(35)=abb100(41)+abb100(35)
      abb100(41)=abb100(35)*abb100(6)
      abb100(21)=abb100(10)*abb100(21)
      abb100(44)=abb100(21)*spak2k4
      abb100(38)=-abb100(41)+abb100(44)-abb100(38)
      abb100(38)=abb100(38)*spbl6l5
      abb100(41)=-abb100(19)*abb100(37)*abb100(24)
      abb100(44)=abb100(24)*abb100(10)
      abb100(55)=abb100(44)*spak2k4
      abb100(41)=abb100(55)+abb100(41)
      abb100(55)=spbk7l5*spak2k7
      abb100(63)=abb100(55)*abb100(41)
      abb100(37)=abb100(36)*abb100(37)*abb100(7)
      abb100(64)=abb100(21)*abb100(7)
      abb100(65)=abb100(64)*spak2k4
      abb100(37)=abb100(65)+abb100(37)
      abb100(65)=spbk7l6*spak2k7
      abb100(67)=abb100(65)*abb100(37)
      abb100(38)=abb100(38)+abb100(63)+2.0_ki*abb100(67)
      abb100(38)=16.0_ki*abb100(38)
      abb100(34)=abb100(61)+abb100(34)
      abb100(34)=16.0_ki*abb100(34)
      abb100(30)=-8.0_ki*abb100(30)
      abb100(53)=abb100(53)*abb100(8)
      abb100(61)=abb100(53)*spbe7l5
      abb100(57)=abb100(61)+abb100(57)
      abb100(57)=16.0_ki*abb100(57)
      abb100(61)=spbe7l5*abb100(6)
      abb100(35)=abb100(35)*abb100(61)
      abb100(63)=2.0_ki*abb100(27)
      abb100(37)=abb100(37)*abb100(63)
      abb100(35)=-abb100(37)+abb100(35)+2.0_ki*abb100(43)
      abb100(35)=8.0_ki*abb100(35)
      abb100(37)=abb100(53)*spbl5k2
      abb100(41)=-abb100(41)*abb100(68)
      abb100(16)=abb100(16)*abb100(6)
      abb100(16)=-abb100(16)+abb100(41)-abb100(37)
      abb100(16)=8.0_ki*abb100(16)
      abb100(37)=spbk7k3*abb100(31)
      abb100(41)=-spbk7k1*abb100(29)
      abb100(37)=abb100(37)+abb100(41)
      abb100(37)=4.0_ki*abb100(37)
      abb100(31)=spbl6k3*abb100(31)
      abb100(29)=-spbl6k1*abb100(29)
      abb100(29)=abb100(31)+abb100(29)
      abb100(29)=4.0_ki*abb100(29)
      abb100(31)=-abb100(39)*abb100(19)
      abb100(41)=spak2k4*abb100(1)
      abb100(43)=abb100(12)*c3
      abb100(53)=abb100(41)*abb100(43)
      abb100(67)=abb100(53)*spak2e7
      abb100(70)=abb100(31)*abb100(67)
      abb100(41)=abb100(41)*abb100(10)
      abb100(71)=abb100(12)*spak2e7
      abb100(72)=abb100(41)*abb100(71)
      abb100(73)=abb100(72)*abb100(39)
      abb100(70)=abb100(70)+abb100(73)
      abb100(70)=abb100(58)*abb100(70)
      abb100(74)=-abb100(53)*abb100(19)
      abb100(75)=-spbe7l6*abb100(74)
      abb100(76)=abb100(12)*spbe7l6
      abb100(77)=abb100(41)*abb100(76)
      abb100(75)=abb100(75)-abb100(77)
      abb100(75)=-abb100(75)*abb100(68)
      abb100(77)=abb100(31)*abb100(67)*mB
      abb100(78)=abb100(73)*mB
      abb100(77)=abb100(78)+abb100(77)
      abb100(77)=2.0_ki*abb100(77)
      abb100(78)=abb100(77)*abb100(6)
      abb100(70)=abb100(75)-abb100(78)+abb100(70)
      abb100(70)=abb100(6)*abb100(70)
      abb100(43)=abb100(43)*abb100(1)
      abb100(75)=spak2e7*abb100(43)
      abb100(18)=abb100(75)*abb100(18)
      abb100(10)=abb100(10)*abb100(1)
      abb100(71)=abb100(10)*abb100(71)
      abb100(75)=abb100(75)*NC
      abb100(18)=-abb100(75)+abb100(18)-abb100(71)
      abb100(71)=-abb100(18)*spbe7l6*mB
      abb100(75)=-abb100(6)*spbe7l6*abb100(18)
      abb100(78)=abb100(5)*mB
      abb100(18)=-abb100(78)*abb100(18)
      abb100(79)=abb100(18)*abb100(27)
      abb100(75)=abb100(75)+abb100(79)-abb100(71)
      abb100(79)=spbk7l5*spak4k7
      abb100(80)=spak4l6*spbl6l5
      abb100(79)=-abb100(80)-abb100(79)
      abb100(75)=abb100(75)*abb100(79)
      abb100(79)=abb100(67)*abb100(5)
      abb100(80)=-abb100(19)*abb100(79)*mB
      abb100(78)=abb100(78)*abb100(72)
      abb100(78)=abb100(78)+abb100(80)
      abb100(80)=abb100(62)*spbe7l5
      abb100(81)=abb100(78)*abb100(80)
      abb100(82)=-abb100(69)*abb100(79)
      abb100(83)=abb100(72)*abb100(5)
      abb100(84)=abb100(83)*abb100(7)
      abb100(82)=abb100(82)-abb100(84)
      abb100(58)=abb100(58)*abb100(82)
      abb100(82)=abb100(58)*abb100(56)
      abb100(84)=abb100(49)*abb100(67)*abb100(39)
      abb100(73)=abb100(73)*abb100(46)
      abb100(70)=-abb100(81)+abb100(82)+abb100(84)+abb100(73)+abb100(75)+abb100&
      &(70)
      abb100(75)=spbk4k1*abb100(70)
      abb100(81)=2.0_ki*abb100(22)
      abb100(82)=abb100(81)*abb100(6)
      abb100(82)=abb100(82)-abb100(59)
      abb100(82)=abb100(82)*abb100(6)
      abb100(80)=abb100(80)*abb100(26)
      abb100(66)=-c3*abb100(66)
      abb100(14)=abb100(66)-abb100(14)
      abb100(14)=abb100(14)*abb100(6)
      abb100(66)=abb100(68)*abb100(14)
      abb100(84)=abb100(5)*abb100(11)
      abb100(56)=abb100(84)*abb100(56)
      abb100(47)=-abb100(82)-abb100(66)-abb100(80)+abb100(47)-abb100(56)
      abb100(66)=spak2k3*abb100(47)
      abb100(36)=abb100(36)*c3
      abb100(80)=-abb100(39)*abb100(36)
      abb100(42)=abb100(80)-abb100(42)
      abb100(80)=abb100(42)*spal6e7
      abb100(82)=abb100(80)*spak2k3
      abb100(53)=abb100(53)*mB
      abb100(31)=-abb100(53)*abb100(31)
      abb100(12)=abb100(41)*abb100(12)
      abb100(41)=mB*abb100(12)
      abb100(85)=abb100(41)*abb100(39)
      abb100(31)=abb100(31)-abb100(85)
      abb100(85)=abb100(31)*spbk4k1
      abb100(86)=abb100(85)*spal6e7
      abb100(82)=abb100(82)+abb100(86)
      abb100(86)=-spak2k7*abb100(82)
      abb100(87)=abb100(42)*spae7k7
      abb100(88)=abb100(87)*spak2k3
      abb100(89)=abb100(85)*spae7k7
      abb100(88)=abb100(88)+abb100(89)
      abb100(89)=-spak2l6*abb100(88)
      abb100(86)=abb100(89)+abb100(86)
      abb100(86)=spbk7l6*abb100(86)
      abb100(50)=abb100(49)*abb100(67)*abb100(50)
      abb100(52)=abb100(52)*abb100(72)
      abb100(50)=abb100(52)+abb100(50)
      abb100(52)=abb100(50)*abb100(54)
      abb100(54)=abb100(49)*abb100(79)
      abb100(46)=abb100(83)*abb100(46)
      abb100(46)=abb100(46)+abb100(54)
      abb100(46)=abb100(8)*spbe7l6*abb100(46)
      abb100(46)=abb100(46)-abb100(52)
      abb100(52)=spbk4k1*abb100(46)
      abb100(51)=abb100(51)*abb100(8)
      abb100(54)=abb100(51)*abb100(27)
      abb100(17)=abb100(49)*abb100(17)*abb100(5)
      abb100(15)=abb100(15)*abb100(5)
      abb100(15)=abb100(15)+abb100(17)
      abb100(15)=abb100(15)*abb100(8)
      abb100(15)=abb100(15)+abb100(54)
      abb100(17)=spak2k3*abb100(15)
      abb100(17)=abb100(52)+abb100(17)
      abb100(17)=spbl5k2*abb100(17)
      abb100(52)=-spak3k7*abb100(25)
      abb100(54)=-spak3l6*abb100(28)
      abb100(67)=-abb100(5)*abb100(48)
      abb100(72)=abb100(67)*spak2k3
      abb100(39)=abb100(49)*abb100(79)*abb100(39)
      abb100(49)=abb100(73)*abb100(5)
      abb100(39)=abb100(49)+abb100(39)
      abb100(39)=abb100(39)*abb100(8)
      abb100(49)=abb100(39)*spbk4k1
      abb100(72)=abb100(72)-abb100(49)
      abb100(72)=-abb100(72)*abb100(32)
      abb100(17)=abb100(54)+abb100(52)+abb100(17)+abb100(86)+abb100(66)+abb100(&
      &75)+abb100(72)
      abb100(17)=4.0_ki*abb100(17)
      abb100(12)=abb100(12)+abb100(74)
      abb100(52)=abb100(12)*abb100(6)
      abb100(54)=abb100(19)*abb100(53)
      abb100(52)=abb100(52)+abb100(54)-abb100(41)
      abb100(52)=abb100(52)*spbl6l5
      abb100(54)=-abb100(19)*abb100(53)*abb100(5)
      abb100(66)=abb100(41)*abb100(5)
      abb100(54)=abb100(66)+abb100(54)
      abb100(66)=abb100(54)*abb100(55)
      abb100(52)=abb100(52)-abb100(66)
      abb100(66)=-spbk4k1*abb100(52)
      abb100(13)=c3*abb100(13)
      abb100(9)=-abb100(9)+abb100(13)
      abb100(9)=abb100(9)*abb100(6)
      abb100(13)=-abb100(21)-abb100(36)-abb100(9)
      abb100(21)=abb100(13)*spbl6l5
      abb100(19)=-abb100(19)*abb100(24)*c3
      abb100(19)=abb100(19)+abb100(44)
      abb100(24)=abb100(55)*abb100(19)
      abb100(21)=abb100(24)-abb100(21)
      abb100(24)=spak2k3*abb100(21)
      abb100(44)=-abb100(53)*abb100(69)
      abb100(41)=abb100(41)*abb100(7)
      abb100(41)=abb100(44)-abb100(41)
      abb100(44)=-spbk4k1*abb100(41)
      abb100(36)=-abb100(7)*abb100(36)
      abb100(36)=abb100(36)-abb100(64)
      abb100(53)=-spak2k3*abb100(36)
      abb100(44)=abb100(44)+abb100(53)
      abb100(53)=2.0_ki*spbk7l6
      abb100(53)=abb100(53)*spak2k7
      abb100(44)=abb100(44)*abb100(53)
      abb100(24)=abb100(44)+abb100(66)+abb100(24)
      abb100(24)=8.0_ki*abb100(24)
      abb100(44)=abb100(60)+abb100(81)
      abb100(55)=abb100(44)*spak2k3
      abb100(60)=abb100(78)*spbe7l5
      abb100(60)=abb100(60)+abb100(77)
      abb100(64)=abb100(60)*spbk4k1
      abb100(55)=abb100(55)+abb100(64)
      abb100(55)=8.0_ki*abb100(55)
      abb100(64)=abb100(51)*spbe7l5
      abb100(64)=abb100(64)+abb100(67)
      abb100(66)=spak2k3*abb100(64)
      abb100(50)=abb100(50)*abb100(8)
      abb100(69)=abb100(50)*spbe7l5
      abb100(72)=-spbk4k1*abb100(69)
      abb100(49)=abb100(66)-abb100(49)+abb100(72)
      abb100(49)=8.0_ki*abb100(49)
      abb100(66)=abb100(41)*abb100(63)
      abb100(12)=abb100(12)*abb100(61)
      abb100(12)=abb100(66)+abb100(12)
      abb100(61)=spbk4k1*abb100(12)
      abb100(66)=abb100(9)*spbe7l5
      abb100(63)=abb100(63)*abb100(36)
      abb100(63)=abb100(66)-abb100(63)
      abb100(66)=-spak2k3*abb100(63)
      abb100(72)=-spak2k3*abb100(42)
      abb100(72)=-abb100(85)+abb100(72)
      abb100(73)=2.0_ki*spak2l6
      abb100(72)=abb100(72)*abb100(73)
      abb100(61)=abb100(72)+abb100(66)+abb100(61)
      abb100(61)=4.0_ki*abb100(61)
      abb100(66)=abb100(50)*spbk4k1
      abb100(72)=spak2k3*abb100(51)
      abb100(66)=-abb100(66)+abb100(72)
      abb100(66)=spbl5k2*abb100(66)
      abb100(58)=abb100(58)*abb100(6)
      abb100(54)=abb100(68)*abb100(54)
      abb100(54)=abb100(58)-abb100(54)
      abb100(58)=spbk4k1*abb100(54)
      abb100(68)=abb100(68)*abb100(19)
      abb100(72)=abb100(84)*abb100(6)
      abb100(68)=abb100(68)+abb100(72)
      abb100(74)=-spak2k3*abb100(68)
      abb100(58)=abb100(66)+abb100(74)+abb100(58)
      abb100(58)=4.0_ki*abb100(58)
      abb100(66)=-spbk4k3*abb100(70)
      abb100(47)=spak1k2*abb100(47)
      abb100(70)=abb100(80)*spak1k2
      abb100(31)=abb100(31)*spbk4k3
      abb100(74)=abb100(31)*spal6e7
      abb100(70)=abb100(70)-abb100(74)
      abb100(74)=-spak2k7*abb100(70)
      abb100(75)=abb100(87)*spak1k2
      abb100(77)=abb100(31)*spae7k7
      abb100(75)=abb100(75)-abb100(77)
      abb100(77)=-spak2l6*abb100(75)
      abb100(74)=abb100(77)+abb100(74)
      abb100(74)=spbk7l6*abb100(74)
      abb100(46)=-spbk4k3*abb100(46)
      abb100(77)=spak1k2*abb100(15)
      abb100(46)=abb100(46)+abb100(77)
      abb100(46)=spbl5k2*abb100(46)
      abb100(25)=spak1k7*abb100(25)
      abb100(28)=spak1l6*abb100(28)
      abb100(77)=abb100(67)*spak1k2
      abb100(39)=abb100(39)*spbk4k3
      abb100(77)=abb100(77)+abb100(39)
      abb100(32)=-abb100(77)*abb100(32)
      abb100(25)=abb100(28)+abb100(25)+abb100(46)+abb100(74)+abb100(47)+abb100(&
      &66)+abb100(32)
      abb100(25)=4.0_ki*abb100(25)
      abb100(28)=spbk4k3*abb100(52)
      abb100(21)=spak1k2*abb100(21)
      abb100(32)=spbk4k3*abb100(41)
      abb100(41)=-spak1k2*abb100(36)
      abb100(32)=abb100(32)+abb100(41)
      abb100(32)=abb100(32)*abb100(53)
      abb100(21)=abb100(32)+abb100(28)+abb100(21)
      abb100(21)=8.0_ki*abb100(21)
      abb100(28)=abb100(44)*spak1k2
      abb100(32)=abb100(60)*spbk4k3
      abb100(28)=abb100(28)-abb100(32)
      abb100(28)=8.0_ki*abb100(28)
      abb100(32)=spak1k2*abb100(64)
      abb100(41)=spbk4k3*abb100(69)
      abb100(32)=abb100(32)+abb100(39)+abb100(41)
      abb100(32)=8.0_ki*abb100(32)
      abb100(12)=-spbk4k3*abb100(12)
      abb100(39)=-spak1k2*abb100(63)
      abb100(41)=-spak1k2*abb100(42)
      abb100(31)=abb100(31)+abb100(41)
      abb100(31)=abb100(31)*abb100(73)
      abb100(12)=abb100(31)+abb100(39)+abb100(12)
      abb100(12)=4.0_ki*abb100(12)
      abb100(31)=abb100(50)*spbk4k3
      abb100(39)=spak1k2*abb100(51)
      abb100(31)=abb100(31)+abb100(39)
      abb100(31)=spbl5k2*abb100(31)
      abb100(39)=-spbk4k3*abb100(54)
      abb100(41)=-spak1k2*abb100(68)
      abb100(31)=abb100(31)+abb100(41)+abb100(39)
      abb100(31)=4.0_ki*abb100(31)
      abb100(39)=spbl6k3*spak3k4
      abb100(41)=spbl6k1*spak1k4
      abb100(39)=abb100(39)-abb100(41)
      abb100(41)=abb100(39)*abb100(80)
      abb100(44)=spbk7k3*spak3k4
      abb100(46)=spbk7k1*spak1k4
      abb100(44)=abb100(44)-abb100(46)
      abb100(46)=abb100(44)*abb100(87)
      abb100(41)=abb100(41)-abb100(46)
      abb100(46)=spbk3k2*spak3k4
      abb100(47)=spbk2k1*spak1k4
      abb100(46)=abb100(46)+abb100(47)
      abb100(47)=-abb100(67)*abb100(46)
      abb100(50)=spbe7k3*spak3k4
      abb100(52)=spbe7k1*spak1k4
      abb100(50)=abb100(50)-abb100(52)
      abb100(52)=-abb100(72)*abb100(50)
      abb100(47)=abb100(52)+abb100(47)+abb100(41)
      abb100(47)=4.0_ki*spak2k7*abb100(47)
      abb100(40)=abb100(40)*spae7k7
      abb100(40)=8.0_ki*abb100(40)
      abb100(52)=4.0_ki*abb100(88)
      abb100(53)=4.0_ki*abb100(75)
      abb100(48)=abb100(46)*abb100(48)
      abb100(41)=spak2l6*abb100(41)
      abb100(11)=-abb100(6)*abb100(11)*abb100(50)
      abb100(11)=abb100(41)+abb100(48)+abb100(11)
      abb100(11)=4.0_ki*abb100(11)
      abb100(41)=8.0_ki*abb100(45)
      abb100(45)=-4.0_ki*abb100(82)
      abb100(48)=-4.0_ki*abb100(70)
      abb100(54)=-abb100(26)*abb100(50)
      abb100(60)=abb100(62)*abb100(54)
      abb100(15)=abb100(15)*abb100(46)
      abb100(62)=abb100(39)*spal6e7
      abb100(63)=abb100(44)*spae7k7
      abb100(62)=abb100(62)-abb100(63)
      abb100(63)=abb100(14)*abb100(62)
      abb100(15)=abb100(63)+abb100(15)+abb100(60)
      abb100(15)=4.0_ki*abb100(15)
      abb100(13)=-abb100(13)*abb100(39)
      abb100(39)=abb100(19)*spak2k7*abb100(44)
      abb100(13)=abb100(13)+abb100(39)
      abb100(13)=8.0_ki*abb100(13)
      abb100(39)=8.0_ki*abb100(54)
      abb100(44)=abb100(26)*spbk7e7
      abb100(54)=abb100(44)*spak4k7
      abb100(26)=-spbe7l6*abb100(26)
      abb100(60)=abb100(26)*spak4l6
      abb100(63)=abb100(14)*spak4e7
      abb100(54)=-abb100(60)+abb100(63)-abb100(54)
      abb100(54)=8.0_ki*abb100(54)
      abb100(60)=8.0_ki*abb100(51)*abb100(50)
      abb100(9)=-4.0_ki*abb100(9)*abb100(50)
      abb100(46)=abb100(51)*abb100(46)
      abb100(19)=abb100(19)*abb100(62)
      abb100(19)=abb100(19)+abb100(46)
      abb100(19)=4.0_ki*abb100(19)
      abb100(46)=spak4l6*abb100(71)*abb100(5)
      abb100(10)=abb100(10)*abb100(76)
      abb100(23)=abb100(23)*abb100(43)
      abb100(10)=abb100(10)-abb100(23)
      abb100(10)=abb100(10)*spak4e7*abb100(6)
      abb100(18)=spbk7e7*abb100(18)*spak4k7
      abb100(10)=-abb100(46)+abb100(10)+abb100(18)
      abb100(18)=spbk4k1*abb100(10)
      abb100(23)=spak3k7*abb100(44)
      abb100(43)=spak3l6*abb100(26)
      abb100(46)=-spak3e7*abb100(14)
      abb100(18)=abb100(46)+abb100(43)+abb100(23)+abb100(18)
      abb100(18)=4.0_ki*abb100(18)
      abb100(10)=-spbk4k3*abb100(10)
      abb100(23)=-spak1k7*abb100(44)
      abb100(43)=-spak1l6*abb100(26)
      abb100(46)=spak1e7*abb100(14)
      abb100(10)=abb100(46)+abb100(43)+abb100(23)+abb100(10)
      abb100(10)=4.0_ki*abb100(10)
      abb100(23)=abb100(22)*abb100(6)
      abb100(23)=abb100(23)-abb100(59)
      abb100(23)=abb100(23)*abb100(6)
      abb100(23)=abb100(23)+abb100(56)
      abb100(43)=4.0_ki*spak3k4
      abb100(46)=-abb100(23)*abb100(43)
      abb100(50)=abb100(65)*abb100(36)
      abb100(50)=8.0_ki*abb100(50)
      abb100(51)=-spak3k4*abb100(50)
      abb100(22)=8.0_ki*abb100(22)
      abb100(56)=abb100(22)*spak3k4
      abb100(42)=abb100(42)*spak2l6
      abb100(27)=abb100(36)*abb100(27)
      abb100(27)=abb100(42)-abb100(27)
      abb100(27)=4.0_ki*abb100(27)
      abb100(36)=-spak3k4*abb100(27)
      abb100(42)=abb100(14)*abb100(43)
      abb100(59)=-abb100(44)*abb100(43)
      abb100(62)=-abb100(26)*abb100(43)
      abb100(63)=abb100(87)*abb100(43)
      abb100(43)=-abb100(80)*abb100(43)
      abb100(64)=4.0_ki*spak1k4
      abb100(23)=abb100(23)*abb100(64)
      abb100(50)=spak1k4*abb100(50)
      abb100(22)=abb100(22)*spak1k4
      abb100(27)=spak1k4*abb100(27)
      abb100(14)=-abb100(14)*abb100(64)
      abb100(44)=abb100(44)*abb100(64)
      abb100(26)=abb100(26)*abb100(64)
      abb100(65)=-abb100(87)*abb100(64)
      abb100(64)=abb100(80)*abb100(64)
      R2d100=0.0_ki
      rat2 = rat2 + R2d100
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='100' value='", &
          & R2d100, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd100h3
