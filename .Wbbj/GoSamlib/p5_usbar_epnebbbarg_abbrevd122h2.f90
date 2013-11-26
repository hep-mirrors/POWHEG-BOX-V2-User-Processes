module     p5_usbar_epnebbbarg_abbrevd122h2
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(102), public :: abb122
   complex(ki), public :: R2d122
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
      abb122(1)=1.0_ki/(-mB**2+es67)
      abb122(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb122(3)=NC**(-1)
      abb122(4)=es234**(-1)
      abb122(5)=spak2l5**(-1)
      abb122(6)=spbl5k2**(-1)
      abb122(7)=spak2l6**(-1)
      abb122(8)=spbl6k2**(-1)
      abb122(9)=sqrt(mB**2)
      abb122(10)=abb122(9)*mB
      abb122(11)=spak2e7*abb122(7)
      abb122(12)=abb122(10)*abb122(11)
      abb122(13)=TR*gW
      abb122(13)=abb122(13)**2*i_*CVSU*abb122(4)*abb122(2)
      abb122(14)=spak2k4*abb122(1)
      abb122(15)=abb122(13)*abb122(14)*c3
      abb122(16)=abb122(15)*spbk3k2
      abb122(17)=abb122(16)*NC
      abb122(18)=abb122(17)*abb122(12)
      abb122(19)=abb122(3)**2
      abb122(14)=abb122(19)*abb122(14)
      abb122(20)=abb122(14)*spbk3k2
      abb122(21)=c2*abb122(20)*abb122(13)*abb122(7)
      abb122(22)=abb122(10)*spak2e7
      abb122(23)=abb122(22)*abb122(21)
      abb122(24)=abb122(16)*abb122(11)
      abb122(25)=abb122(3)*mB
      abb122(26)=2.0_ki*abb122(25)
      abb122(27)=abb122(26)*abb122(9)
      abb122(28)=abb122(24)*abb122(27)
      abb122(18)=-abb122(28)+abb122(18)+abb122(23)
      abb122(23)=abb122(18)*spbe7k1
      abb122(28)=spbe7l6*abb122(16)
      abb122(29)=abb122(28)*NC
      abb122(30)=abb122(20)*abb122(13)*spbe7l6
      abb122(31)=abb122(30)*c2
      abb122(29)=abb122(29)+abb122(31)
      abb122(31)=mB**2
      abb122(32)=abb122(11)*abb122(31)
      abb122(33)=abb122(32)*abb122(29)
      abb122(34)=2.0_ki*abb122(3)
      abb122(35)=abb122(34)*abb122(32)
      abb122(36)=abb122(35)*abb122(28)
      abb122(33)=abb122(33)-abb122(36)
      abb122(36)=abb122(8)*spbk2k1
      abb122(37)=abb122(33)*abb122(36)
      abb122(38)=abb122(28)*abb122(34)
      abb122(29)=abb122(38)-abb122(29)
      abb122(38)=spbk7k1*spae7k7
      abb122(39)=spbl6k1*spal6e7
      abb122(40)=abb122(38)-abb122(39)
      abb122(41)=-abb122(29)*abb122(40)
      abb122(23)=-abb122(37)-abb122(23)+abb122(41)
      abb122(37)=abb122(23)*spak2l5
      abb122(41)=abb122(15)*spbk4k3
      abb122(42)=NC*spbe7l6
      abb122(43)=abb122(42)*abb122(41)
      abb122(44)=abb122(14)*c2
      abb122(45)=abb122(13)*spbk4k3
      abb122(46)=abb122(44)*abb122(45)
      abb122(47)=abb122(46)*spbe7l6
      abb122(43)=abb122(43)+abb122(47)
      abb122(47)=-abb122(32)*abb122(43)
      abb122(48)=abb122(41)*spbe7l6
      abb122(49)=abb122(35)*abb122(48)
      abb122(47)=abb122(49)+abb122(47)
      abb122(49)=abb122(47)*abb122(36)
      abb122(50)=abb122(48)*abb122(34)
      abb122(43)=-abb122(50)+abb122(43)
      abb122(50)=-abb122(43)*abb122(40)
      abb122(51)=abb122(41)*NC
      abb122(46)=abb122(51)+abb122(46)
      abb122(51)=abb122(12)*abb122(46)
      abb122(52)=abb122(41)*abb122(11)
      abb122(53)=abb122(27)*abb122(52)
      abb122(51)=-abb122(53)+abb122(51)
      abb122(53)=abb122(51)*spbe7k1
      abb122(49)=-abb122(49)+abb122(53)+abb122(50)
      abb122(50)=abb122(49)*spak4l5
      abb122(37)=abb122(37)-abb122(50)
      abb122(50)=spbl5k1*spak1l5
      abb122(53)=-abb122(50)*abb122(37)
      abb122(54)=mB**4
      abb122(55)=abb122(54)*spak2e7
      abb122(56)=abb122(6)**2
      abb122(57)=abb122(55)*abb122(56)
      abb122(58)=abb122(57)*abb122(28)
      abb122(59)=mB**3
      abb122(60)=abb122(59)*abb122(9)
      abb122(61)=abb122(60)*abb122(56)
      abb122(28)=abb122(28)*spak2e7
      abb122(62)=abb122(61)*abb122(28)
      abb122(58)=abb122(58)-abb122(62)
      abb122(62)=abb122(34)-NC
      abb122(58)=abb122(58)*abb122(62)
      abb122(63)=abb122(57)*abb122(30)
      abb122(30)=abb122(30)*spak2e7
      abb122(61)=abb122(30)*abb122(61)
      abb122(61)=abb122(63)-abb122(61)
      abb122(61)=abb122(61)*c2
      abb122(58)=-abb122(61)+abb122(58)
      abb122(61)=abb122(5)*spbk2k1
      abb122(63)=abb122(58)*abb122(61)
      abb122(64)=abb122(13)*abb122(6)
      abb122(65)=abb122(44)*abb122(64)
      abb122(66)=abb122(65)*spbk3k2
      abb122(67)=abb122(66)*abb122(32)
      abb122(15)=abb122(15)*abb122(6)
      abb122(68)=abb122(15)*spbk3k2
      abb122(69)=abb122(35)*abb122(68)
      abb122(67)=abb122(67)-abb122(69)
      abb122(69)=abb122(68)*NC
      abb122(70)=abb122(69)*abb122(32)
      abb122(70)=abb122(70)+abb122(67)
      abb122(71)=abb122(9)**2
      abb122(72)=abb122(70)*abb122(71)
      abb122(73)=spbe7k1*abb122(72)
      abb122(74)=abb122(68)*abb122(34)
      abb122(74)=abb122(74)-abb122(66)
      abb122(75)=abb122(74)-abb122(69)
      abb122(76)=abb122(9)*spbe7l6
      abb122(59)=abb122(59)*abb122(76)
      abb122(77)=abb122(59)*abb122(11)
      abb122(78)=abb122(36)*abb122(75)*abb122(77)
      abb122(79)=abb122(42)*abb122(10)
      abb122(80)=abb122(26)*abb122(76)
      abb122(79)=abb122(79)-abb122(80)
      abb122(80)=abb122(68)*abb122(79)
      abb122(81)=abb122(10)*spbe7l6
      abb122(82)=abb122(66)*abb122(81)
      abb122(80)=abb122(82)+abb122(80)
      abb122(82)=abb122(80)*abb122(39)
      abb122(63)=abb122(63)+abb122(82)+abb122(73)-abb122(78)
      abb122(63)=es12*abb122(63)
      abb122(65)=abb122(65)*spbk4k3
      abb122(73)=abb122(65)*abb122(32)
      abb122(15)=abb122(15)*spbk4k3
      abb122(35)=abb122(35)*abb122(15)
      abb122(35)=abb122(73)-abb122(35)
      abb122(73)=abb122(15)*NC
      abb122(82)=abb122(73)*abb122(32)
      abb122(82)=abb122(82)+abb122(35)
      abb122(83)=abb122(82)*spbe7k1
      abb122(71)=abb122(71)*abb122(83)
      abb122(84)=spbk2k1*abb122(71)
      abb122(79)=-abb122(15)*abb122(79)
      abb122(85)=abb122(65)*abb122(81)
      abb122(79)=abb122(79)-abb122(85)
      abb122(85)=abb122(79)*spbk2k1
      abb122(86)=abb122(85)*abb122(40)
      abb122(65)=abb122(65)+abb122(73)
      abb122(73)=abb122(15)*abb122(34)
      abb122(73)=abb122(65)-abb122(73)
      abb122(77)=abb122(73)*abb122(77)
      abb122(87)=spbk2k1**2
      abb122(88)=abb122(87)*abb122(8)
      abb122(89)=abb122(77)*abb122(88)
      abb122(90)=abb122(34)*abb122(41)
      abb122(90)=abb122(90)-abb122(46)
      abb122(59)=abb122(59)*abb122(56)
      abb122(87)=abb122(59)*abb122(87)*abb122(5)
      abb122(91)=-spak2e7*abb122(90)*abb122(87)
      abb122(84)=abb122(91)+abb122(84)+abb122(89)+abb122(86)
      abb122(84)=spak1k4*abb122(84)
      abb122(50)=abb122(50)*spbk2k1
      abb122(86)=abb122(70)*abb122(50)
      abb122(57)=abb122(21)*abb122(57)
      abb122(89)=abb122(34)*abb122(16)
      abb122(17)=abb122(89)-abb122(17)
      abb122(54)=abb122(54)*abb122(11)
      abb122(56)=abb122(54)*abb122(56)
      abb122(89)=abb122(17)*abb122(56)
      abb122(57)=abb122(57)-abb122(89)
      abb122(89)=abb122(61)*es12
      abb122(91)=abb122(57)*abb122(89)
      abb122(86)=abb122(86)+abb122(91)
      abb122(91)=spak2k7*spbk7e7
      abb122(86)=abb122(86)*abb122(91)
      abb122(19)=abb122(19)*c2
      abb122(92)=abb122(1)*spak2k4**2
      abb122(93)=abb122(64)*spbk4k3
      abb122(94)=abb122(92)*abb122(93)*abb122(19)
      abb122(93)=abb122(92)*abb122(93)*c3
      abb122(34)=abb122(93)*abb122(34)
      abb122(95)=abb122(94)-abb122(34)
      abb122(96)=abb122(93)*NC
      abb122(96)=abb122(96)+abb122(95)
      abb122(11)=spbe7k1*abb122(96)*abb122(60)*abb122(11)
      abb122(60)=spbe7l6*abb122(94)
      abb122(93)=abb122(93)*abb122(42)
      abb122(60)=abb122(93)+abb122(60)
      abb122(60)=abb122(31)*abb122(60)
      abb122(94)=abb122(31)*spbe7l6
      abb122(34)=abb122(34)*abb122(94)
      abb122(34)=-abb122(34)+abb122(60)
      abb122(39)=abb122(34)*abb122(39)
      abb122(11)=abb122(11)+abb122(39)
      abb122(39)=-spbk2k1*abb122(11)
      abb122(60)=-spbe7l6*abb122(95)
      abb122(60)=-abb122(93)+abb122(60)
      abb122(54)=abb122(60)*abb122(54)
      abb122(60)=abb122(54)*abb122(88)
      abb122(39)=abb122(60)+abb122(39)
      abb122(39)=abb122(5)*spak1l5*abb122(39)
      abb122(60)=abb122(94)*spak2e7
      abb122(74)=abb122(60)*abb122(74)
      abb122(93)=abb122(68)*spak2e7
      abb122(94)=-abb122(93)*abb122(42)*abb122(31)
      abb122(74)=abb122(94)+abb122(74)
      abb122(74)=abb122(74)*abb122(50)
      abb122(94)=abb122(80)*es12
      abb122(95)=spak1l5*abb122(34)*abb122(61)
      abb122(95)=abb122(95)-abb122(94)
      abb122(95)=abb122(95)*abb122(38)
      abb122(96)=abb122(82)*abb122(50)
      abb122(97)=abb122(90)*abb122(56)
      abb122(98)=-abb122(97)*abb122(89)
      abb122(96)=abb122(96)+abb122(98)
      abb122(98)=spak4k7*spbk7e7
      abb122(96)=abb122(96)*abb122(98)
      abb122(35)=-spbe7l6*abb122(35)
      abb122(42)=abb122(42)*abb122(32)
      abb122(99)=abb122(42)*abb122(15)
      abb122(35)=abb122(35)-abb122(99)
      abb122(50)=abb122(35)*abb122(50)
      abb122(56)=abb122(43)*abb122(56)
      abb122(89)=-abb122(56)*abb122(89)
      abb122(50)=abb122(50)+abb122(89)
      abb122(50)=spak4l6*abb122(50)
      abb122(89)=-spak4l5*abb122(85)
      abb122(99)=spak2l5*spbk2k1*abb122(80)
      abb122(89)=abb122(99)+abb122(89)
      abb122(89)=spbl5k1*abb122(89)
      abb122(92)=abb122(92)*abb122(45)
      abb122(19)=abb122(19)*abb122(92)
      abb122(92)=abb122(92)*c3
      abb122(99)=abb122(92)*abb122(62)
      abb122(99)=-abb122(19)+abb122(99)
      abb122(87)=abb122(99)*abb122(87)
      abb122(87)=abb122(87)+abb122(89)
      abb122(87)=spak1e7*abb122(87)
      abb122(89)=spak1k4*spbk2k1
      abb122(99)=-abb122(79)*abb122(89)
      abb122(94)=abb122(94)+abb122(99)
      abb122(94)=spal5e7*spbl5k1*abb122(94)
      abb122(39)=abb122(94)+abb122(87)+abb122(50)+abb122(96)+abb122(86)+abb122(&
      &84)+abb122(95)+abb122(63)+abb122(39)+abb122(74)+abb122(53)
      abb122(39)=4.0_ki*abb122(39)
      abb122(50)=abb122(10)-abb122(31)
      abb122(20)=abb122(20)*abb122(64)
      abb122(53)=-abb122(20)*abb122(50)*c2
      abb122(63)=abb122(25)*abb122(9)
      abb122(64)=abb122(63)*abb122(68)
      abb122(74)=abb122(68)*abb122(31)
      abb122(84)=abb122(74)*abb122(3)
      abb122(64)=abb122(64)-abb122(84)
      abb122(84)=abb122(10)*abb122(68)
      abb122(74)=abb122(84)-abb122(74)
      abb122(74)=abb122(74)*NC
      abb122(53)=-abb122(74)+abb122(53)+2.0_ki*abb122(64)
      abb122(64)=-es12*abb122(53)
      abb122(50)=-abb122(50)*abb122(65)
      abb122(74)=abb122(31)*abb122(3)
      abb122(84)=abb122(63)-abb122(74)
      abb122(84)=abb122(15)*abb122(84)
      abb122(50)=2.0_ki*abb122(84)+abb122(50)
      abb122(84)=-abb122(50)*abb122(89)
      abb122(64)=abb122(64)+abb122(84)
      abb122(64)=spbl6k1*abb122(64)
      abb122(84)=abb122(31)*abb122(7)
      abb122(86)=-abb122(84)*abb122(75)
      abb122(87)=-es12*abb122(86)
      abb122(94)=abb122(84)*abb122(73)
      abb122(95)=-abb122(94)*abb122(89)
      abb122(87)=abb122(87)+abb122(95)
      abb122(95)=spak2k7*spbk7k1
      abb122(87)=abb122(87)*abb122(95)
      abb122(64)=abb122(87)+abb122(64)
      abb122(64)=8.0_ki*abb122(64)
      abb122(87)=abb122(83)*abb122(89)
      abb122(96)=abb122(70)*spbe7k1
      abb122(99)=abb122(96)*es12
      abb122(87)=abb122(87)+abb122(99)
      abb122(87)=8.0_ki*abb122(87)
      abb122(37)=-8.0_ki*abb122(37)
      abb122(57)=abb122(57)*abb122(91)
      abb122(59)=-spak4e7*abb122(59)*abb122(90)
      abb122(97)=-abb122(97)*abb122(98)
      abb122(56)=-spak4l6*abb122(56)
      abb122(56)=abb122(56)+abb122(97)+abb122(59)+abb122(57)+abb122(58)
      abb122(56)=abb122(61)*abb122(56)
      abb122(55)=abb122(55)*abb122(7)**2
      abb122(57)=-abb122(55)*abb122(75)
      abb122(58)=abb122(57)*abb122(8)
      abb122(59)=es12*abb122(58)
      abb122(55)=abb122(55)*abb122(73)
      abb122(61)=abb122(55)*abb122(36)
      abb122(73)=spak1k4*abb122(61)
      abb122(59)=abb122(73)+abb122(59)+abb122(72)
      abb122(59)=spbe7k1*abb122(59)
      abb122(72)=-abb122(80)*abb122(40)
      abb122(56)=-abb122(78)+abb122(56)+abb122(59)+abb122(72)
      abb122(56)=8.0_ki*abb122(56)
      abb122(59)=-spbl6k1*abb122(53)
      abb122(72)=-abb122(86)*abb122(95)
      abb122(59)=abb122(59)+abb122(72)
      abb122(59)=16.0_ki*abb122(59)
      abb122(72)=16.0_ki*abb122(96)
      abb122(58)=16.0_ki*spbe7k1*abb122(58)
      abb122(66)=abb122(66)+abb122(69)
      abb122(66)=abb122(10)*abb122(66)
      abb122(69)=abb122(27)*abb122(68)
      abb122(66)=abb122(66)-abb122(69)
      abb122(69)=abb122(66)*spbe7k1
      abb122(73)=-es12*abb122(69)
      abb122(65)=abb122(10)*abb122(65)
      abb122(15)=abb122(27)*abb122(15)
      abb122(15)=abb122(65)-abb122(15)
      abb122(65)=abb122(15)*spbe7k1
      abb122(75)=-abb122(89)*abb122(65)
      abb122(73)=abb122(73)+abb122(75)
      abb122(73)=4.0_ki*abb122(73)
      abb122(69)=-8.0_ki*abb122(69)
      abb122(75)=abb122(40)*abb122(86)
      abb122(57)=abb122(57)*abb122(36)
      abb122(57)=abb122(75)-abb122(57)
      abb122(75)=es12*abb122(57)
      abb122(78)=abb122(40)*abb122(94)
      abb122(89)=spbk2k1*abb122(78)
      abb122(88)=-abb122(55)*abb122(88)
      abb122(88)=abb122(88)+abb122(89)
      abb122(88)=spak1k4*abb122(88)
      abb122(75)=abb122(88)+abb122(75)
      abb122(75)=4.0_ki*abb122(75)
      abb122(57)=8.0_ki*abb122(57)
      abb122(88)=-8.0_ki*abb122(80)
      abb122(89)=abb122(70)*spbk7e7
      abb122(96)=-8.0_ki*abb122(89)
      abb122(67)=-spbe7l6*abb122(67)
      abb122(42)=abb122(42)*abb122(68)
      abb122(42)=abb122(67)-abb122(42)
      abb122(67)=-8.0_ki*abb122(42)
      abb122(70)=abb122(70)*abb122(91)
      abb122(97)=abb122(82)*abb122(98)
      abb122(99)=spak4l6*abb122(35)
      abb122(100)=abb122(76)*abb122(25)
      abb122(101)=-abb122(93)*abb122(100)
      abb122(68)=abb122(60)*abb122(68)
      abb122(102)=abb122(3)*abb122(68)
      abb122(101)=abb122(102)+abb122(101)
      abb122(102)=spak2e7*abb122(81)
      abb122(60)=-abb122(60)+abb122(102)
      abb122(20)=c2*abb122(20)*abb122(60)
      abb122(60)=abb122(81)*abb122(93)
      abb122(60)=-abb122(68)+abb122(60)
      abb122(60)=NC*abb122(60)
      abb122(68)=-spak4e7*abb122(79)
      abb122(20)=abb122(99)+abb122(97)+abb122(68)+abb122(70)+abb122(60)+2.0_ki*&
      &abb122(101)+abb122(20)
      abb122(20)=spbl5k1*abb122(20)
      abb122(54)=abb122(54)*abb122(36)
      abb122(11)=abb122(54)-abb122(11)
      abb122(11)=abb122(5)*abb122(11)
      abb122(34)=abb122(34)*abb122(5)
      abb122(38)=abb122(38)*abb122(34)
      abb122(11)=abb122(38)+abb122(11)+abb122(20)
      abb122(11)=4.0_ki*abb122(11)
      abb122(20)=abb122(32)*abb122(3)
      abb122(38)=abb122(16)*abb122(20)
      abb122(24)=-abb122(63)*abb122(24)
      abb122(24)=abb122(38)+abb122(24)
      abb122(38)=-spak2e7*abb122(31)
      abb122(22)=abb122(38)+abb122(22)
      abb122(21)=abb122(22)*abb122(21)
      abb122(12)=abb122(12)-abb122(32)
      abb122(22)=abb122(12)*NC
      abb122(16)=abb122(16)*abb122(22)
      abb122(16)=abb122(16)+2.0_ki*abb122(24)+abb122(21)
      abb122(16)=abb122(16)*abb122(91)
      abb122(21)=abb122(25)*abb122(48)
      abb122(24)=abb122(76)*abb122(41)
      abb122(25)=-abb122(3)*abb122(24)
      abb122(21)=abb122(21)+abb122(25)
      abb122(25)=abb122(14)*abb122(45)
      abb122(32)=spbe7l6*abb122(25)
      abb122(38)=-mB*abb122(32)
      abb122(25)=abb122(76)*abb122(25)
      abb122(25)=abb122(38)+abb122(25)
      abb122(25)=c2*abb122(25)
      abb122(38)=-mB*abb122(48)
      abb122(24)=abb122(38)+abb122(24)
      abb122(24)=NC*abb122(24)
      abb122(21)=abb122(24)+2.0_ki*abb122(21)+abb122(25)
      abb122(21)=spak4e7*abb122(9)*abb122(21)
      abb122(24)=abb122(41)*abb122(20)
      abb122(25)=-abb122(52)*abb122(63)
      abb122(24)=abb122(24)+abb122(25)
      abb122(14)=c2*abb122(45)*abb122(14)*abb122(12)
      abb122(25)=abb122(41)*abb122(22)
      abb122(14)=abb122(25)+2.0_ki*abb122(24)+abb122(14)
      abb122(14)=abb122(14)*abb122(98)
      abb122(20)=-abb122(48)*abb122(20)
      abb122(24)=abb122(52)*abb122(100)
      abb122(20)=abb122(20)+abb122(24)
      abb122(12)=-c2*abb122(32)*abb122(12)
      abb122(22)=-abb122(48)*abb122(22)
      abb122(12)=abb122(22)+2.0_ki*abb122(20)+abb122(12)
      abb122(12)=spak4l6*abb122(12)
      abb122(20)=abb122(47)*abb122(8)
      abb122(22)=-spak4l5*abb122(20)
      abb122(24)=abb122(33)*abb122(8)
      abb122(25)=spak2l5*abb122(24)
      abb122(22)=abb122(22)+abb122(25)
      abb122(22)=spbl5k2*abb122(22)
      abb122(25)=abb122(43)*spak4l5
      abb122(32)=abb122(29)*spak2l5
      abb122(25)=abb122(25)-abb122(32)
      abb122(32)=spbk7l5*spae7k7
      abb122(33)=-spbl6l5*spal6e7
      abb122(32)=abb122(33)+abb122(32)
      abb122(25)=abb122(25)*abb122(32)
      abb122(32)=-spak2l5*abb122(18)
      abb122(33)=-spak4l5*abb122(51)
      abb122(32)=abb122(33)+abb122(32)
      abb122(32)=spbe7l5*abb122(32)
      abb122(33)=spbl6k2*spal6e7
      abb122(38)=spbk7k2*spae7k7
      abb122(33)=abb122(33)-abb122(38)
      abb122(34)=abb122(34)*abb122(33)
      abb122(38)=-abb122(9)*abb122(3)
      abb122(26)=abb122(26)+abb122(38)
      abb122(26)=abb122(9)*abb122(26)
      abb122(26)=-abb122(74)+abb122(26)
      abb122(26)=abb122(28)*abb122(26)
      abb122(38)=-abb122(9)+2.0_ki*mB
      abb122(38)=abb122(38)*abb122(9)
      abb122(31)=abb122(38)-abb122(31)
      abb122(30)=-c2*abb122(30)*abb122(31)
      abb122(28)=-NC*abb122(28)*abb122(31)
      abb122(12)=abb122(22)+abb122(32)+abb122(12)+abb122(14)+abb122(21)+abb122(&
      &16)+abb122(28)+2.0_ki*abb122(26)+abb122(30)+abb122(34)+abb122(25)
      abb122(12)=4.0_ki*abb122(12)
      abb122(13)=abb122(44)*abb122(13)*spbk3k2
      abb122(13)=abb122(13)-abb122(17)
      abb122(14)=-spak2k7*abb122(13)
      abb122(16)=spak4k7*abb122(90)
      abb122(14)=abb122(14)+abb122(16)
      abb122(14)=spbk7l6*abb122(14)
      abb122(16)=abb122(92)*abb122(84)
      abb122(17)=abb122(3)*abb122(16)
      abb122(21)=-abb122(7)*abb122(63)*abb122(92)
      abb122(17)=abb122(17)+abb122(21)
      abb122(10)=abb122(10)*abb122(7)
      abb122(21)=-abb122(84)+abb122(10)
      abb122(21)=abb122(21)*abb122(19)
      abb122(22)=abb122(92)*abb122(10)
      abb122(22)=-abb122(16)+abb122(22)
      abb122(22)=NC*abb122(22)
      abb122(14)=abb122(14)+abb122(22)+2.0_ki*abb122(17)+abb122(21)
      abb122(14)=8.0_ki*abb122(14)
      abb122(17)=abb122(43)*spak4e7
      abb122(21)=abb122(29)*spak2e7
      abb122(21)=abb122(17)-abb122(21)
      abb122(21)=8.0_ki*abb122(21)
      abb122(22)=8.0_ki*abb122(8)
      abb122(17)=abb122(22)*abb122(84)*abb122(17)
      abb122(13)=abb122(13)*abb122(91)
      abb122(25)=-abb122(90)*abb122(98)
      abb122(26)=-spak4l6*abb122(43)
      abb122(16)=-abb122(16)*abb122(62)
      abb122(19)=abb122(84)*abb122(19)
      abb122(16)=abb122(19)+abb122(16)
      abb122(16)=spbe7k2*abb122(8)*abb122(16)
      abb122(19)=spak2l6*abb122(29)
      abb122(13)=abb122(19)+abb122(16)+abb122(26)+abb122(13)+abb122(25)
      abb122(13)=4.0_ki*abb122(13)
      abb122(16)=4.0_ki*abb122(51)
      abb122(10)=abb122(10)*abb122(46)
      abb122(19)=-abb122(7)*abb122(41)*abb122(27)
      abb122(10)=abb122(19)+abb122(10)
      abb122(10)=4.0_ki*spak4e7*abb122(10)
      abb122(19)=4.0_ki*abb122(43)
      abb122(25)=abb122(19)*spae7k7
      abb122(19)=abb122(19)*spal6e7
      abb122(26)=abb122(79)*abb122(40)
      abb122(27)=abb122(77)*abb122(36)
      abb122(26)=abb122(71)+abb122(27)+abb122(26)
      abb122(26)=4.0_ki*abb122(26)
      abb122(27)=-spbl6k1*abb122(50)
      abb122(28)=-abb122(94)*abb122(95)
      abb122(27)=abb122(27)+abb122(28)
      abb122(27)=8.0_ki*abb122(27)
      abb122(28)=8.0_ki*abb122(83)
      abb122(22)=abb122(55)*spbe7k1*abb122(22)
      abb122(30)=-4.0_ki*abb122(65)
      abb122(31)=-abb122(61)+abb122(78)
      abb122(31)=4.0_ki*abb122(31)
      abb122(32)=4.0_ki*abb122(79)
      abb122(34)=abb122(82)*spbk7e7
      abb122(36)=4.0_ki*abb122(34)
      abb122(38)=4.0_ki*abb122(35)
      abb122(20)=4.0_ki*abb122(20)
      abb122(34)=spak1k7*abb122(34)
      abb122(35)=spak1l6*abb122(35)
      abb122(34)=abb122(35)+abb122(34)
      abb122(34)=spbk2k1*abb122(34)
      abb122(35)=spak1l5*abb122(49)
      abb122(40)=abb122(79)*abb122(33)
      abb122(41)=-spak1e7*abb122(85)
      abb122(34)=abb122(41)+abb122(40)+abb122(35)+abb122(34)
      abb122(34)=4.0_ki*abb122(34)
      abb122(35)=spbl6k2*abb122(50)
      abb122(40)=-es12+es712-es71
      abb122(41)=-abb122(94)*abb122(40)
      abb122(35)=abb122(35)+abb122(41)
      abb122(35)=8.0_ki*abb122(35)
      abb122(41)=4.0_ki*spbe7k2
      abb122(15)=abb122(15)*abb122(41)
      abb122(43)=4.0_ki*abb122(33)
      abb122(44)=abb122(94)*abb122(43)
      abb122(29)=4.0_ki*abb122(29)
      abb122(45)=abb122(29)*spae7k7
      abb122(29)=abb122(29)*spal6e7
      abb122(46)=spak1k7*abb122(89)
      abb122(47)=spak1l6*abb122(42)
      abb122(46)=abb122(47)+abb122(46)
      abb122(46)=spbk2k1*abb122(46)
      abb122(23)=-spak1l5*abb122(23)
      abb122(47)=spak1e7*spbk2k1
      abb122(33)=abb122(47)-abb122(33)
      abb122(33)=abb122(80)*abb122(33)
      abb122(23)=abb122(33)+abb122(23)+abb122(46)
      abb122(23)=4.0_ki*abb122(23)
      abb122(33)=spbl6k2*abb122(53)
      abb122(40)=-abb122(86)*abb122(40)
      abb122(33)=abb122(33)+abb122(40)
      abb122(33)=8.0_ki*abb122(33)
      abb122(40)=abb122(66)*abb122(41)
      abb122(18)=4.0_ki*abb122(18)
      abb122(41)=4.0_ki*abb122(80)
      abb122(43)=abb122(86)*abb122(43)
      abb122(46)=4.0_ki*abb122(89)
      abb122(42)=4.0_ki*abb122(42)
      abb122(24)=4.0_ki*abb122(24)
      R2d122=0.0_ki
      rat2 = rat2 + R2d122
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='122' value='", &
          & R2d122, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd122h2
