module     p5_usbar_epnebbbarg_abbrevd308h0
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(104), public :: abb308
   complex(ki), public :: R2d308
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
      abb308(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb308(2)=1.0_ki/(es34+es567-es12-es234)
      abb308(3)=NC**(-1)
      abb308(4)=spbl6k2**(-1)
      abb308(5)=spbl5k2**(-1)
      abb308(6)=spak2l6**(-1)
      abb308(7)=sqrt(mB**2)
      abb308(8)=TR*gW
      abb308(8)=abb308(8)**2*i_*CVSU*abb308(2)*abb308(1)
      abb308(9)=abb308(8)*NC
      abb308(10)=abb308(8)*abb308(3)
      abb308(11)=abb308(9)-abb308(10)
      abb308(12)=c3*spbk3k1
      abb308(11)=abb308(11)*abb308(12)
      abb308(13)=c1*abb308(3)*spbk3k1
      abb308(14)=abb308(8)*abb308(13)
      abb308(11)=abb308(11)+abb308(14)
      abb308(15)=abb308(11)*abb308(7)
      abb308(16)=abb308(15)*spal6e7
      abb308(17)=abb308(16)*spak1k4
      abb308(18)=spbe7k1*spak2l5
      abb308(19)=abb308(17)*abb308(18)
      abb308(20)=abb308(16)*spak3k4
      abb308(21)=spbe7k3*spak2l5
      abb308(22)=abb308(20)*abb308(21)
      abb308(19)=abb308(19)-abb308(22)
      abb308(22)=es71+es12-es712
      abb308(23)=-abb308(22)*abb308(19)
      abb308(24)=mB**3
      abb308(11)=-abb308(24)*abb308(11)*abb308(4)**2
      abb308(25)=spbk7e7*spak2e7
      abb308(26)=abb308(25)*spak3k4
      abb308(27)=abb308(26)*abb308(11)
      abb308(28)=abb308(22)*spbk3k2
      abb308(29)=-abb308(27)*abb308(28)
      abb308(30)=abb308(11)*spak1k4
      abb308(31)=spbk2k1*abb308(22)*abb308(25)
      abb308(32)=-abb308(30)*abb308(31)
      abb308(29)=abb308(29)+abb308(32)
      abb308(29)=abb308(6)*abb308(29)
      abb308(32)=abb308(25)*spal6k7
      abb308(33)=abb308(32)*abb308(15)
      abb308(34)=spbk7k3*spak3k4
      abb308(35)=-spbk7k1*spak1k4
      abb308(34)=abb308(35)+abb308(34)
      abb308(34)=abb308(33)*abb308(34)
      abb308(29)=abb308(29)+abb308(34)
      abb308(34)=2.0_ki*spal5k7
      abb308(29)=abb308(34)*abb308(29)
      abb308(35)=NC-abb308(3)
      abb308(36)=abb308(12)*mB
      abb308(37)=abb308(35)*abb308(36)*abb308(8)
      abb308(38)=-abb308(5)*abb308(37)
      abb308(39)=abb308(5)*mB
      abb308(40)=abb308(14)*abb308(39)
      abb308(38)=abb308(38)-abb308(40)
      abb308(40)=abb308(38)*spak3k4
      abb308(41)=abb308(40)*spal6e7
      abb308(42)=-abb308(41)*abb308(28)
      abb308(43)=abb308(38)*spak1k4
      abb308(44)=abb308(43)*spal6e7
      abb308(45)=-spbk2k1*abb308(44)*abb308(22)
      abb308(42)=abb308(42)+abb308(45)
      abb308(42)=spbe7l6*spak2l6*abb308(42)
      abb308(8)=abb308(8)*abb308(4)
      abb308(45)=abb308(8)*abb308(5)
      abb308(12)=abb308(45)*abb308(12)
      abb308(46)=abb308(35)*abb308(12)*abb308(24)
      abb308(24)=abb308(24)*abb308(45)
      abb308(47)=abb308(24)*abb308(13)
      abb308(46)=abb308(47)+abb308(46)
      abb308(47)=abb308(46)*spak3k4
      abb308(48)=abb308(47)*abb308(25)
      abb308(28)=abb308(48)*abb308(28)
      abb308(49)=abb308(46)*spak1k4
      abb308(31)=abb308(49)*abb308(31)
      abb308(28)=abb308(28)+abb308(31)
      abb308(28)=spal6k7*abb308(6)*abb308(28)
      abb308(31)=abb308(43)*spbk2k1
      abb308(50)=abb308(40)*spbk3k2
      abb308(31)=abb308(31)+abb308(50)
      abb308(50)=abb308(25)*abb308(31)
      abb308(51)=2.0_ki*spbk7l6
      abb308(52)=-abb308(50)*spal6k7**2*abb308(51)
      abb308(36)=abb308(36)*abb308(35)
      abb308(53)=mB*abb308(13)
      abb308(36)=abb308(36)+abb308(53)
      abb308(36)=abb308(8)*abb308(36)
      abb308(53)=abb308(36)*spak3k4
      abb308(54)=spbe7k2*spal6e7
      abb308(55)=abb308(53)*abb308(54)
      abb308(56)=abb308(22)*spak2l5
      abb308(57)=-abb308(55)*abb308(56)
      abb308(58)=abb308(34)*abb308(53)
      abb308(59)=abb308(32)*spbk7k2
      abb308(60)=-abb308(58)*abb308(59)
      abb308(57)=abb308(57)+abb308(60)
      abb308(57)=spbl6k3*abb308(57)
      abb308(60)=abb308(36)*spak1k4
      abb308(61)=abb308(60)*abb308(54)
      abb308(56)=abb308(61)*abb308(56)
      abb308(62)=abb308(34)*abb308(60)
      abb308(59)=abb308(62)*abb308(59)
      abb308(56)=abb308(56)+abb308(59)
      abb308(56)=spbl6k1*abb308(56)
      abb308(23)=abb308(56)+abb308(57)+abb308(52)+abb308(42)+2.0_ki*abb308(28)+&
      &abb308(29)+abb308(23)
      abb308(23)=2.0_ki*abb308(23)
      abb308(28)=abb308(60)*spbl6k1
      abb308(29)=abb308(53)*spbl6k3
      abb308(28)=abb308(28)-abb308(29)
      abb308(29)=spbk7k2*abb308(28)
      abb308(42)=abb308(15)*spak3k4
      abb308(52)=spbk7k3*abb308(42)
      abb308(56)=abb308(15)*spak1k4
      abb308(57)=-spbk7k1*abb308(56)
      abb308(29)=abb308(57)+abb308(52)+abb308(29)
      abb308(29)=abb308(34)*spak2l6*abb308(29)
      abb308(12)=abb308(12)*abb308(35)
      abb308(13)=abb308(45)*abb308(13)
      abb308(12)=abb308(13)+abb308(12)
      abb308(13)=mB**2
      abb308(12)=abb308(13)*abb308(12)
      abb308(52)=abb308(12)*abb308(7)
      abb308(57)=spak3k4*abb308(52)
      abb308(59)=abb308(57)-abb308(47)
      abb308(63)=-abb308(59)*abb308(22)
      abb308(64)=abb308(22)*spak2l6
      abb308(65)=-abb308(40)*abb308(64)
      abb308(63)=2.0_ki*abb308(63)+abb308(65)
      abb308(63)=spbk3k2*abb308(63)
      abb308(65)=spak1k4*abb308(52)
      abb308(66)=abb308(65)-abb308(49)
      abb308(67)=-abb308(66)*abb308(22)
      abb308(64)=-abb308(43)*abb308(64)
      abb308(64)=2.0_ki*abb308(67)+abb308(64)
      abb308(64)=spbk2k1*abb308(64)
      abb308(67)=2.0_ki*abb308(15)
      abb308(68)=abb308(67)*spak2l6
      abb308(69)=-spak3k4*abb308(68)
      abb308(70)=abb308(22)*abb308(53)
      abb308(69)=abb308(69)+abb308(70)
      abb308(69)=spbk3k2*abb308(69)
      abb308(68)=-spak1k4*abb308(68)
      abb308(71)=abb308(22)*abb308(60)
      abb308(68)=abb308(68)+abb308(71)
      abb308(68)=spbk2k1*abb308(68)
      abb308(68)=abb308(69)+abb308(68)
      abb308(68)=spak2l5*abb308(68)
      abb308(69)=spak2l6*abb308(31)
      abb308(51)=abb308(51)*spal6k7
      abb308(72)=-abb308(69)*abb308(51)
      abb308(73)=spbl6k2*abb308(31)*spak2l6**2
      abb308(29)=2.0_ki*abb308(73)+abb308(72)+abb308(68)+abb308(63)+abb308(64)+&
      &abb308(29)
      abb308(29)=4.0_ki*abb308(29)
      abb308(63)=spbe7l6*spal6e7*abb308(69)
      abb308(61)=abb308(61)*spbl6k1
      abb308(55)=abb308(55)*spbl6k3
      abb308(55)=abb308(55)-abb308(61)
      abb308(55)=spak2l5*abb308(55)
      abb308(19)=abb308(63)+abb308(55)+abb308(19)
      abb308(50)=abb308(50)*spal6k7
      abb308(55)=abb308(60)*spbk2k1
      abb308(61)=abb308(53)*spbk3k2
      abb308(55)=abb308(55)+abb308(61)
      abb308(61)=abb308(55)*abb308(25)
      abb308(63)=abb308(61)*abb308(34)
      abb308(63)=abb308(63)-2.0_ki*abb308(50)+abb308(19)
      abb308(63)=4.0_ki*abb308(63)
      abb308(64)=abb308(55)*spak2l5
      abb308(68)=abb308(69)-abb308(64)
      abb308(69)=8.0_ki*abb308(68)
      abb308(72)=4.0_ki*abb308(50)
      abb308(73)=spak2k7*spbk7e7
      abb308(16)=abb308(73)*abb308(16)
      abb308(16)=abb308(16)+abb308(33)
      abb308(33)=-spak4l5*abb308(16)
      abb308(74)=spbk7k2*spal6k7
      abb308(75)=spbe7l6*spak2e7
      abb308(76)=abb308(75)*abb308(74)
      abb308(77)=abb308(54)*spak2k7
      abb308(78)=abb308(77)*spbk7l6
      abb308(79)=-abb308(76)+abb308(78)
      abb308(80)=abb308(36)*spak4l5
      abb308(79)=abb308(80)*abb308(79)
      abb308(81)=abb308(46)*abb308(54)
      abb308(82)=abb308(81)*abb308(22)
      abb308(83)=spak2k4*abb308(6)
      abb308(84)=abb308(82)*abb308(83)
      abb308(85)=-abb308(22)*abb308(38)
      abb308(86)=-spal6e7*abb308(85)
      abb308(87)=spak4l6*spbe7l6
      abb308(88)=abb308(86)*abb308(87)
      abb308(89)=spbe7k2*abb308(7)
      abb308(12)=abb308(12)*abb308(89)
      abb308(90)=abb308(12)*abb308(22)
      abb308(91)=abb308(90)*spak4e7
      abb308(33)=abb308(91)-abb308(88)-abb308(84)+abb308(79)+abb308(33)
      abb308(33)=8.0_ki*abb308(33)
      abb308(14)=abb308(14)*mB
      abb308(14)=abb308(14)-abb308(67)+abb308(37)
      abb308(37)=spak2l6*spak4l5
      abb308(67)=abb308(14)*abb308(37)
      abb308(79)=-abb308(85)*spak4l6
      abb308(84)=abb308(38)*spak4l6
      abb308(88)=spbl6k2*spak2l6
      abb308(91)=abb308(84)*abb308(88)
      abb308(92)=abb308(22)*abb308(80)
      abb308(67)=abb308(67)+abb308(91)+abb308(92)-abb308(79)
      abb308(67)=16.0_ki*abb308(67)
      abb308(27)=spbk3k2*abb308(27)
      abb308(79)=spbk2k1*spak1k4
      abb308(91)=abb308(79)*abb308(25)
      abb308(92)=abb308(11)*abb308(91)
      abb308(27)=abb308(27)+abb308(92)
      abb308(27)=spal5k7*abb308(27)
      abb308(92)=spbk7k3*spak2k7
      abb308(93)=2.0_ki*abb308(92)
      abb308(94)=abb308(93)*spak3k4
      abb308(95)=spbk7k1*spak2k7
      abb308(96)=2.0_ki*abb308(95)
      abb308(97)=abb308(96)*spak1k4
      abb308(94)=abb308(94)-abb308(97)
      abb308(81)=-abb308(81)*abb308(94)
      abb308(27)=abb308(27)+abb308(81)
      abb308(27)=abb308(6)*abb308(27)
      abb308(81)=spbe7k3*spak2e7
      abb308(97)=abb308(81)*abb308(6)
      abb308(47)=abb308(97)*abb308(47)
      abb308(98)=spbe7k1*spak2e7
      abb308(99)=abb308(98)*abb308(6)
      abb308(49)=abb308(99)*abb308(49)
      abb308(47)=abb308(47)-abb308(49)
      abb308(49)=2.0_ki*spbk7k2
      abb308(100)=abb308(49)*spal6k7*abb308(47)
      abb308(27)=abb308(100)+abb308(27)-abb308(19)
      abb308(27)=4.0_ki*abb308(27)
      abb308(100)=spak2l6*abb308(40)
      abb308(59)=2.0_ki*abb308(59)+abb308(100)
      abb308(59)=spbk3k2*abb308(59)
      abb308(100)=spak2l6*abb308(43)
      abb308(66)=2.0_ki*abb308(66)+abb308(100)
      abb308(66)=spbk2k1*abb308(66)
      abb308(58)=abb308(58)*spbk7k3
      abb308(62)=abb308(62)*spbk7k1
      abb308(58)=abb308(58)-abb308(62)
      abb308(59)=abb308(64)+abb308(59)+abb308(66)-abb308(58)
      abb308(59)=8.0_ki*abb308(59)
      abb308(62)=abb308(84)+abb308(80)
      abb308(62)=32.0_ki*abb308(62)
      abb308(64)=abb308(56)*abb308(98)
      abb308(66)=abb308(42)*abb308(81)
      abb308(64)=abb308(64)-abb308(66)
      abb308(66)=spal5l6*abb308(64)
      abb308(61)=-spal5k7*abb308(61)
      abb308(19)=abb308(66)+abb308(61)+abb308(50)-abb308(19)
      abb308(19)=2.0_ki*abb308(19)
      abb308(50)=-4.0_ki*abb308(68)
      abb308(61)=spak2e7*abb308(22)
      abb308(66)=2.0_ki*abb308(61)*abb308(31)
      abb308(68)=spak2e7*abb308(31)
      abb308(84)=4.0_ki*abb308(68)
      abb308(100)=abb308(15)*spak2e7
      abb308(101)=abb308(100)*spak4l5
      abb308(102)=-2.0_ki*abb308(85)
      abb308(103)=abb308(102)*spak4e7
      abb308(101)=abb308(101)+abb308(103)
      abb308(101)=4.0_ki*abb308(101)
      abb308(68)=2.0_ki*abb308(68)
      abb308(20)=abb308(92)*abb308(20)
      abb308(17)=-abb308(95)*abb308(17)
      abb308(17)=abb308(20)+abb308(17)
      abb308(17)=4.0_ki*abb308(17)
      abb308(12)=-abb308(12)*abb308(94)
      abb308(20)=abb308(70)*abb308(21)
      abb308(70)=-abb308(71)*abb308(18)
      abb308(12)=abb308(20)+abb308(70)+abb308(12)
      abb308(12)=2.0_ki*abb308(12)
      abb308(18)=abb308(18)*abb308(60)
      abb308(20)=abb308(21)*abb308(53)
      abb308(18)=abb308(18)-abb308(20)
      abb308(20)=4.0_ki*abb308(18)
      abb308(21)=8.0_ki*abb308(80)
      abb308(70)=abb308(21)*abb308(73)
      abb308(18)=-2.0_ki*abb308(18)
      abb308(71)=-abb308(40)*abb308(92)
      abb308(94)=abb308(43)*abb308(95)
      abb308(71)=abb308(71)+abb308(94)
      abb308(71)=4.0_ki*abb308(71)
      abb308(94)=abb308(95)*abb308(60)
      abb308(103)=abb308(92)*abb308(53)
      abb308(94)=abb308(94)-abb308(103)
      abb308(103)=-4.0_ki*abb308(94)
      abb308(104)=spbk3k2*abb308(57)
      abb308(52)=abb308(79)*abb308(52)
      abb308(52)=abb308(104)+abb308(52)+abb308(58)
      abb308(52)=abb308(25)*abb308(52)
      abb308(57)=abb308(81)*abb308(57)
      abb308(58)=-abb308(98)*abb308(65)
      abb308(57)=abb308(57)+abb308(58)
      abb308(49)=abb308(57)*abb308(49)
      abb308(49)=abb308(49)+abb308(52)
      abb308(49)=2.0_ki*abb308(49)
      abb308(21)=abb308(21)*abb308(25)
      abb308(52)=-8.0_ki*spak2k7*abb308(31)
      abb308(57)=abb308(98)*abb308(43)
      abb308(58)=abb308(81)*abb308(40)
      abb308(57)=abb308(57)-abb308(58)
      abb308(58)=4.0_ki*abb308(57)
      abb308(15)=-abb308(15)*abb308(34)*abb308(26)
      abb308(26)=16.0_ki*abb308(40)
      abb308(41)=abb308(41)*abb308(93)
      abb308(44)=-abb308(44)*abb308(96)
      abb308(41)=abb308(44)+abb308(41)
      abb308(41)=spbe7l6*abb308(41)
      abb308(44)=-spbk3k2*abb308(48)
      abb308(46)=-abb308(46)*abb308(91)
      abb308(44)=abb308(44)+abb308(46)
      abb308(44)=spak2k7*abb308(6)*abb308(44)
      abb308(46)=abb308(57)*abb308(51)
      abb308(28)=-abb308(25)*spal5k7*abb308(28)
      abb308(28)=abb308(44)+abb308(46)+abb308(28)+abb308(41)
      abb308(28)=2.0_ki*abb308(28)
      abb308(41)=spbl6k1*spak2l6
      abb308(41)=abb308(41)-abb308(95)
      abb308(41)=abb308(43)*abb308(41)
      abb308(44)=-spbl6k3*spak2l6
      abb308(44)=abb308(44)+abb308(92)
      abb308(44)=abb308(40)*abb308(44)
      abb308(41)=abb308(44)+abb308(41)
      abb308(41)=8.0_ki*abb308(41)
      abb308(44)=8.0_ki*abb308(57)
      abb308(46)=abb308(75)*abb308(80)
      abb308(46)=4.0_ki*abb308(46)
      abb308(48)=abb308(38)*spak2k4
      abb308(48)=16.0_ki*abb308(48)
      abb308(47)=-4.0_ki*abb308(47)
      abb308(51)=-2.0_ki*abb308(57)
      abb308(34)=abb308(25)*abb308(34)*abb308(56)
      abb308(57)=-16.0_ki*abb308(43)
      abb308(64)=4.0_ki*spal6k7*abb308(64)
      abb308(65)=abb308(98)*abb308(60)
      abb308(79)=abb308(81)*abb308(53)
      abb308(65)=abb308(65)-abb308(79)
      abb308(79)=4.0_ki*abb308(65)
      abb308(80)=abb308(60)*spbk7k1
      abb308(81)=abb308(53)*spbk7k3
      abb308(80)=abb308(80)-abb308(81)
      abb308(77)=abb308(77)*abb308(80)
      abb308(74)=-abb308(65)*abb308(74)
      abb308(74)=abb308(74)+abb308(77)
      abb308(74)=4.0_ki*abb308(74)
      abb308(77)=8.0_ki*spak2l6
      abb308(80)=-abb308(55)*abb308(77)
      abb308(81)=2.0_ki*abb308(65)
      abb308(42)=abb308(42)*abb308(77)
      abb308(91)=-16.0_ki*abb308(53)
      abb308(11)=abb308(11)*spak3k4
      abb308(92)=-spbe7k3*abb308(11)
      abb308(93)=spbe7k1*abb308(30)
      abb308(92)=abb308(92)+abb308(93)
      abb308(61)=4.0_ki*abb308(6)*abb308(61)*abb308(92)
      abb308(92)=8.0_ki*abb308(94)
      abb308(65)=-8.0_ki*abb308(65)
      abb308(11)=abb308(11)*abb308(97)
      abb308(30)=-abb308(30)*abb308(99)
      abb308(11)=abb308(11)+abb308(30)
      abb308(11)=4.0_ki*abb308(11)
      abb308(30)=-abb308(56)*abb308(77)
      abb308(56)=16.0_ki*abb308(60)
      abb308(77)=c1*abb308(3)
      abb308(35)=abb308(35)*c3
      abb308(35)=abb308(77)+abb308(35)
      abb308(24)=-abb308(83)*abb308(54)*abb308(24)*abb308(35)
      abb308(54)=c1-c3
      abb308(77)=-abb308(54)*abb308(3)
      abb308(83)=NC*c3
      abb308(77)=abb308(77)-abb308(83)
      abb308(13)=spak4e7*abb308(89)*abb308(13)*abb308(45)*abb308(77)
      abb308(13)=abb308(24)-abb308(13)
      abb308(13)=abb308(22)*abb308(13)
      abb308(10)=abb308(54)*abb308(10)
      abb308(9)=abb308(9)*c3
      abb308(9)=abb308(9)+abb308(10)
      abb308(10)=-abb308(7)*abb308(9)*spak4l5
      abb308(24)=abb308(73)*abb308(10)
      abb308(39)=-abb308(39)*abb308(9)
      abb308(45)=abb308(39)*abb308(22)
      abb308(54)=abb308(87)*abb308(45)
      abb308(24)=abb308(24)-abb308(54)
      abb308(24)=spal6e7*abb308(24)
      abb308(32)=abb308(10)*abb308(32)
      abb308(13)=abb308(32)+abb308(13)+abb308(24)
      abb308(24)=spbk4k1*abb308(13)
      abb308(32)=abb308(76)*abb308(36)
      abb308(16)=abb308(32)+abb308(16)
      abb308(32)=-spak3l5*abb308(16)
      abb308(8)=-spak4l5*abb308(35)*abb308(8)*mB
      abb308(35)=abb308(8)*spbk4k1
      abb308(54)=abb308(76)*abb308(35)
      abb308(77)=abb308(36)*spak3l5
      abb308(35)=abb308(77)-abb308(35)
      abb308(83)=abb308(35)*abb308(78)
      abb308(86)=abb308(86)*spbe7l6
      abb308(87)=-spak3l6*abb308(86)
      abb308(89)=spak3e7*abb308(90)
      abb308(82)=abb308(82)*abb308(6)
      abb308(93)=-spak2k3*abb308(82)
      abb308(24)=abb308(93)+abb308(89)+abb308(87)+abb308(83)+abb308(32)+abb308(&
      &54)+abb308(24)
      abb308(24)=4.0_ki*abb308(24)
      abb308(32)=-mB+2.0_ki*abb308(7)
      abb308(9)=-abb308(37)*abb308(32)*abb308(9)
      abb308(32)=abb308(39)*spak4l6
      abb308(37)=abb308(32)*abb308(88)
      abb308(54)=abb308(22)*abb308(8)
      abb308(83)=abb308(45)*spak4l6
      abb308(9)=abb308(37)+abb308(9)-abb308(54)-abb308(83)
      abb308(37)=spbk4k1*abb308(9)
      abb308(14)=abb308(14)*spak2l6
      abb308(22)=abb308(22)*abb308(36)
      abb308(14)=abb308(14)+abb308(22)
      abb308(22)=spak3l5*abb308(14)
      abb308(54)=abb308(88)*abb308(38)
      abb308(54)=abb308(54)+abb308(85)
      abb308(83)=spak3l6*abb308(54)
      abb308(22)=abb308(83)+abb308(22)+abb308(37)
      abb308(22)=8.0_ki*abb308(22)
      abb308(32)=abb308(32)-abb308(8)
      abb308(37)=spbk4k1*abb308(32)
      abb308(83)=spak3l6*abb308(38)
      abb308(37)=abb308(83)+abb308(37)+abb308(77)
      abb308(37)=16.0_ki*abb308(37)
      abb308(10)=abb308(10)*spak2e7
      abb308(77)=2.0_ki*spak4e7
      abb308(45)=abb308(45)*abb308(77)
      abb308(10)=abb308(10)-abb308(45)
      abb308(45)=-spbk4k1*abb308(10)
      abb308(77)=spak3l5*abb308(100)
      abb308(83)=spak3e7*abb308(102)
      abb308(45)=abb308(83)+abb308(77)+abb308(45)
      abb308(45)=2.0_ki*abb308(45)
      abb308(77)=4.0_ki*abb308(35)
      abb308(83)=-abb308(73)*abb308(77)
      abb308(77)=-abb308(25)*abb308(77)
      abb308(75)=2.0_ki*abb308(75)
      abb308(35)=abb308(35)*abb308(75)
      abb308(85)=spak2k3*abb308(38)
      abb308(39)=abb308(39)*spak2k4
      abb308(87)=spbk4k1*abb308(39)
      abb308(85)=abb308(87)+abb308(85)
      abb308(85)=8.0_ki*abb308(85)
      abb308(13)=-spbk4k3*abb308(13)
      abb308(16)=spak1l5*abb308(16)
      abb308(8)=abb308(8)*spbk4k3
      abb308(76)=-abb308(76)*abb308(8)
      abb308(36)=abb308(36)*spak1l5
      abb308(8)=abb308(36)-abb308(8)
      abb308(78)=-abb308(8)*abb308(78)
      abb308(86)=spak1l6*abb308(86)
      abb308(87)=-spak1e7*abb308(90)
      abb308(82)=-spak1k2*abb308(82)
      abb308(13)=abb308(82)+abb308(87)+abb308(86)+abb308(78)+abb308(16)+abb308(&
      &76)+abb308(13)
      abb308(13)=4.0_ki*abb308(13)
      abb308(9)=-spbk4k3*abb308(9)
      abb308(14)=-spak1l5*abb308(14)
      abb308(16)=-spak1l6*abb308(54)
      abb308(9)=abb308(16)+abb308(14)+abb308(9)
      abb308(9)=8.0_ki*abb308(9)
      abb308(14)=-spbk4k3*abb308(32)
      abb308(16)=-spak1l6*abb308(38)
      abb308(14)=abb308(16)+abb308(14)-abb308(36)
      abb308(14)=16.0_ki*abb308(14)
      abb308(10)=spbk4k3*abb308(10)
      abb308(16)=-spak1l5*abb308(100)
      abb308(32)=-spak1e7*abb308(102)
      abb308(10)=abb308(32)+abb308(16)+abb308(10)
      abb308(10)=2.0_ki*abb308(10)
      abb308(16)=4.0_ki*abb308(8)
      abb308(32)=abb308(73)*abb308(16)
      abb308(16)=abb308(25)*abb308(16)
      abb308(8)=-abb308(8)*abb308(75)
      abb308(25)=spak1k2*abb308(38)
      abb308(36)=-spbk4k3*abb308(39)
      abb308(25)=abb308(36)+abb308(25)
      abb308(25)=8.0_ki*abb308(25)
      abb308(31)=spal6k7*abb308(31)
      abb308(36)=-spal5k7*abb308(55)
      abb308(31)=abb308(31)+abb308(36)
      abb308(31)=8.0_ki*abb308(31)
      abb308(36)=-8.0_ki*abb308(40)
      abb308(38)=8.0_ki*abb308(53)
      abb308(39)=8.0_ki*abb308(43)
      abb308(40)=-8.0_ki*abb308(60)
      R2d308=0.0_ki
      rat2 = rat2 + R2d308
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='308' value='", &
          & R2d308, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd308h0
