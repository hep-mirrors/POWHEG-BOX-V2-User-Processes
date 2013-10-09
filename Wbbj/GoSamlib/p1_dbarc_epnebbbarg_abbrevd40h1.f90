module     p1_dbarc_epnebbbarg_abbrevd40h1
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(105), public :: abb40
   complex(ki), public :: R2d40
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
      abb40(1)=1.0_ki/(-es71+es712-es12)
      abb40(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb40(3)=1.0_ki/(es34+es567-es12-es234)
      abb40(4)=NC**(-1)
      abb40(5)=es56**(-1)
      abb40(6)=spak2l5**(-1)
      abb40(7)=spbl6k2**(-1)
      abb40(8)=spbl5k2**(-1)
      abb40(9)=spak2l6**(-1)
      abb40(10)=TR*gW
      abb40(11)=abb40(10)*mB
      abb40(11)=abb40(11)**2
      abb40(12)=abb40(11)*abb40(6)
      abb40(13)=abb40(12)*abb40(7)
      abb40(14)=NC*c1
      abb40(15)=abb40(13)*abb40(14)
      abb40(16)=abb40(5)*CVDC*i_*spak1k4*abb40(3)*abb40(2)
      abb40(17)=abb40(16)*spbe7k2*abb40(1)
      abb40(18)=abb40(17)*spae7k7
      abb40(19)=abb40(18)*spbk3k1
      abb40(20)=abb40(15)*abb40(19)
      abb40(21)=abb40(18)*c4
      abb40(22)=abb40(21)*spbk3k1
      abb40(23)=abb40(22)*abb40(13)
      abb40(20)=abb40(20)-abb40(23)
      abb40(24)=abb40(20)*spbk7k2
      abb40(25)=abb40(4)*spbk7k2
      abb40(26)=abb40(25)*abb40(23)
      abb40(27)=spbk7k2*c1
      abb40(28)=abb40(27)*abb40(13)
      abb40(29)=abb40(28)*abb40(19)
      abb40(26)=abb40(26)-abb40(29)
      abb40(29)=abb40(26)*abb40(4)
      abb40(24)=abb40(24)+abb40(29)
      abb40(24)=abb40(24)*spak1k2
      abb40(29)=abb40(18)*spbk4k3
      abb40(30)=abb40(15)*abb40(29)
      abb40(31)=abb40(21)*spbk4k3
      abb40(32)=abb40(31)*abb40(13)
      abb40(30)=abb40(30)-abb40(32)
      abb40(33)=abb40(30)*spbk7k2
      abb40(34)=abb40(25)*abb40(32)
      abb40(28)=abb40(28)*abb40(29)
      abb40(28)=abb40(34)-abb40(28)
      abb40(34)=abb40(28)*abb40(4)
      abb40(33)=abb40(33)+abb40(34)
      abb40(33)=abb40(33)*spak2k4
      abb40(10)=abb40(10)**2
      abb40(34)=abb40(10)*spbk4k3
      abb40(35)=abb40(34)*abb40(21)
      abb40(36)=abb40(4)*spbk7l5
      abb40(37)=abb40(36)*abb40(35)
      abb40(38)=spbk7l5*c1
      abb40(39)=abb40(38)*abb40(10)
      abb40(40)=abb40(39)*abb40(29)
      abb40(37)=abb40(37)-abb40(40)
      abb40(37)=abb40(37)*abb40(4)
      abb40(40)=abb40(14)*abb40(10)
      abb40(41)=abb40(40)*abb40(29)
      abb40(41)=abb40(41)-abb40(35)
      abb40(42)=abb40(41)*spbk7l5
      abb40(43)=abb40(37)+abb40(42)
      abb40(43)=abb40(43)*spak4l6
      abb40(44)=abb40(10)*spbk3k1
      abb40(21)=abb40(44)*abb40(21)
      abb40(45)=abb40(36)*abb40(21)
      abb40(39)=abb40(39)*abb40(19)
      abb40(39)=abb40(45)-abb40(39)
      abb40(39)=abb40(39)*abb40(4)
      abb40(45)=abb40(40)*abb40(19)
      abb40(45)=abb40(45)-abb40(21)
      abb40(46)=abb40(45)*spbk7l5
      abb40(47)=abb40(39)+abb40(46)
      abb40(47)=abb40(47)*spak1l6
      abb40(24)=abb40(33)-abb40(24)+abb40(43)+abb40(47)
      abb40(33)=2.0_ki*abb40(24)
      abb40(43)=spak1l6*spbk7l5
      abb40(47)=abb40(43)*abb40(45)
      abb40(48)=spak4l6*spbk7l5
      abb40(49)=abb40(48)*abb40(41)
      abb40(47)=abb40(47)+abb40(49)
      abb40(49)=spak1k2*spbk7k2
      abb40(50)=abb40(20)*abb40(49)
      abb40(51)=spak2k4*spbk7k2
      abb40(52)=abb40(30)*abb40(51)
      abb40(50)=abb40(50)-abb40(52)
      abb40(52)=-2.0_ki*abb40(50)+abb40(47)
      abb40(52)=spal6k7*abb40(52)
      abb40(53)=abb40(20)*spak1l6
      abb40(54)=abb40(30)*spak4l6
      abb40(53)=abb40(53)+abb40(54)
      abb40(54)=es71+es12-es712
      abb40(55)=abb40(53)*abb40(54)
      abb40(56)=abb40(45)*spak1l6
      abb40(57)=abb40(41)*spak4l6
      abb40(56)=abb40(56)+abb40(57)
      abb40(57)=spak2l6*spbl5k2
      abb40(58)=-abb40(56)*abb40(57)
      abb40(52)=2.0_ki*abb40(58)+abb40(52)+abb40(55)
      abb40(52)=spbk7l6*abb40(52)
      abb40(18)=abb40(18)*abb40(7)
      abb40(55)=abb40(18)*abb40(11)
      abb40(58)=abb40(55)*abb40(14)
      abb40(59)=abb40(58)*spbk3k1
      abb40(60)=c4*spbk3k1
      abb40(61)=abb40(55)*abb40(60)
      abb40(59)=abb40(59)-abb40(61)
      abb40(62)=abb40(43)*abb40(59)
      abb40(58)=abb40(58)*spbk4k3
      abb40(63)=c4*spbk4k3
      abb40(64)=abb40(55)*abb40(63)
      abb40(58)=abb40(58)-abb40(64)
      abb40(65)=abb40(48)*abb40(58)
      abb40(62)=abb40(62)+abb40(65)
      abb40(65)=2.0_ki*abb40(9)
      abb40(62)=abb40(65)*abb40(62)
      abb40(66)=abb40(45)*abb40(49)
      abb40(67)=abb40(41)*abb40(51)
      abb40(66)=abb40(66)-abb40(67)
      abb40(67)=mB**4
      abb40(68)=abb40(9)*abb40(66)*abb40(7)**2*abb40(67)*abb40(6)
      abb40(62)=-abb40(68)+abb40(62)
      abb40(62)=abb40(62)*abb40(54)
      abb40(69)=abb40(14)*abb40(12)
      abb40(70)=abb40(69)*abb40(19)
      abb40(22)=abb40(22)*abb40(12)
      abb40(70)=abb40(70)-abb40(22)
      abb40(71)=abb40(70)*abb40(43)
      abb40(72)=abb40(69)*abb40(29)
      abb40(31)=abb40(31)*abb40(12)
      abb40(72)=abb40(72)-abb40(31)
      abb40(73)=abb40(72)*abb40(48)
      abb40(71)=abb40(71)+abb40(73)
      abb40(73)=-abb40(51)*abb40(34)
      abb40(74)=-abb40(49)*abb40(44)
      abb40(73)=abb40(74)-abb40(73)
      abb40(74)=abb40(14)-c4
      abb40(18)=abb40(73)*abb40(74)*abb40(6)**2*abb40(67)*abb40(18)
      abb40(18)=abb40(18)+2.0_ki*abb40(71)
      abb40(67)=abb40(18)*abb40(54)
      abb40(70)=abb40(70)*abb40(49)
      abb40(71)=abb40(72)*abb40(51)
      abb40(70)=abb40(70)-abb40(71)
      abb40(71)=spal6k7*spbk7l5
      abb40(72)=-abb40(70)*abb40(71)
      abb40(67)=abb40(72)+abb40(67)
      abb40(67)=abb40(8)*abb40(67)
      abb40(72)=abb40(30)*spbk7l5
      abb40(73)=abb40(72)*abb40(54)
      abb40(74)=spbk7l5**2
      abb40(75)=abb40(74)*spal6k7
      abb40(76)=-abb40(41)*abb40(75)
      abb40(77)=abb40(42)*abb40(57)
      abb40(73)=abb40(77)+abb40(76)+abb40(73)
      abb40(73)=spak4l5*abb40(73)
      abb40(76)=abb40(20)*spbk7l5
      abb40(77)=abb40(76)*abb40(54)
      abb40(75)=-abb40(45)*abb40(75)
      abb40(57)=abb40(46)*abb40(57)
      abb40(57)=abb40(57)+abb40(75)+abb40(77)
      abb40(57)=spak1l5*abb40(57)
      abb40(75)=-spbk7l5*abb40(50)
      abb40(74)=abb40(74)*abb40(56)
      abb40(74)=abb40(74)+abb40(75)
      abb40(75)=2.0_ki*spal5k7
      abb40(74)=abb40(74)*abb40(75)
      abb40(77)=spbl6k2*spak2l6
      abb40(78)=-spak2l5*spbl5k2
      abb40(77)=2.0_ki*abb40(78)+abb40(77)
      abb40(77)=abb40(47)*abb40(77)
      abb40(78)=abb40(58)*abb40(51)
      abb40(79)=abb40(59)*abb40(49)
      abb40(78)=abb40(78)-abb40(79)
      abb40(78)=abb40(78)*abb40(9)
      abb40(79)=abb40(71)*abb40(78)
      abb40(52)=abb40(74)+abb40(57)+abb40(73)+abb40(52)+abb40(67)+abb40(79)+abb&
      &40(62)+abb40(77)
      abb40(52)=2.0_ki*abb40(52)
      abb40(57)=abb40(1)*abb40(11)*abb40(16)
      abb40(62)=abb40(7)*abb40(57)
      abb40(67)=abb40(62)*spbk4k3
      abb40(73)=spbl5k2*c1
      abb40(74)=abb40(73)*abb40(67)
      abb40(77)=abb40(62)*c4
      abb40(79)=abb40(4)*spbl5k2
      abb40(80)=abb40(79)*abb40(77)
      abb40(81)=abb40(80)*spbk4k3
      abb40(74)=abb40(74)-abb40(81)
      abb40(81)=abb40(74)*abb40(4)
      abb40(67)=abb40(67)*abb40(14)
      abb40(82)=abb40(77)*spbk4k3
      abb40(67)=abb40(67)-abb40(82)
      abb40(67)=abb40(67)*spbl5k2
      abb40(81)=abb40(81)-abb40(67)
      abb40(81)=abb40(81)*abb40(65)
      abb40(57)=abb40(6)*abb40(57)
      abb40(63)=abb40(57)*abb40(63)
      abb40(82)=abb40(57)*abb40(14)
      abb40(83)=abb40(82)*spbk4k3
      abb40(63)=abb40(63)-abb40(83)
      abb40(63)=3.0_ki*abb40(63)
      abb40(83)=abb40(16)*c1
      abb40(84)=abb40(83)*NC
      abb40(85)=abb40(34)*abb40(1)
      abb40(86)=abb40(84)*abb40(85)
      abb40(16)=abb40(16)*c4
      abb40(87)=abb40(85)*abb40(16)
      abb40(86)=abb40(86)-abb40(87)
      abb40(88)=abb40(86)*spbl5k2
      abb40(81)=abb40(81)+abb40(63)+abb40(88)
      abb40(81)=abb40(81)*spak4l6
      abb40(89)=abb40(62)*spbk3k1
      abb40(90)=abb40(73)*abb40(89)
      abb40(80)=abb40(80)*spbk3k1
      abb40(80)=abb40(90)-abb40(80)
      abb40(90)=abb40(80)*abb40(4)
      abb40(89)=abb40(89)*abb40(14)
      abb40(77)=abb40(77)*spbk3k1
      abb40(77)=abb40(89)-abb40(77)
      abb40(77)=abb40(77)*spbl5k2
      abb40(89)=abb40(90)-abb40(77)
      abb40(65)=abb40(89)*abb40(65)
      abb40(57)=abb40(57)*abb40(60)
      abb40(82)=abb40(82)*spbk3k1
      abb40(57)=abb40(57)-abb40(82)
      abb40(57)=3.0_ki*abb40(57)
      abb40(82)=abb40(44)*abb40(1)
      abb40(84)=abb40(84)*abb40(82)
      abb40(16)=abb40(82)*abb40(16)
      abb40(84)=abb40(84)-abb40(16)
      abb40(89)=abb40(84)*spbl5k2
      abb40(65)=abb40(65)+abb40(57)+abb40(89)
      abb40(65)=abb40(65)*spak1l6
      abb40(62)=abb40(62)*abb40(6)
      abb40(90)=abb40(62)*spbk4k3
      abb40(91)=abb40(73)*abb40(90)
      abb40(92)=abb40(90)*c4
      abb40(93)=abb40(92)*abb40(79)
      abb40(91)=abb40(91)-abb40(93)
      abb40(93)=2.0_ki*abb40(4)
      abb40(94)=abb40(91)*abb40(93)
      abb40(95)=abb40(90)*abb40(14)
      abb40(95)=abb40(95)-abb40(92)
      abb40(96)=abb40(95)*spbl5k2
      abb40(94)=abb40(94)+abb40(96)
      abb40(94)=abb40(94)*spak4l5
      abb40(60)=abb40(60)*abb40(62)
      abb40(97)=abb40(60)*abb40(79)
      abb40(62)=abb40(62)*spbk3k1
      abb40(73)=abb40(62)*abb40(73)
      abb40(73)=abb40(97)-abb40(73)
      abb40(97)=abb40(73)*abb40(93)
      abb40(98)=abb40(14)*abb40(62)
      abb40(98)=abb40(98)-abb40(60)
      abb40(99)=abb40(98)*spbl5k2
      abb40(97)=abb40(97)-abb40(99)
      abb40(97)=abb40(97)*spak1l5
      abb40(65)=-abb40(81)-abb40(65)+abb40(94)-abb40(97)
      abb40(81)=abb40(54)*abb40(65)
      abb40(74)=abb40(74)*abb40(93)
      abb40(67)=abb40(74)+abb40(67)
      abb40(74)=-spak2k4*spbk7k2*abb40(67)
      abb40(80)=abb40(80)*abb40(93)
      abb40(77)=abb40(80)+abb40(77)
      abb40(80)=spak1k2*spbk7k2*abb40(77)
      abb40(74)=abb40(74)+abb40(80)
      abb40(74)=abb40(9)*abb40(74)
      abb40(63)=abb40(63)-abb40(88)
      abb40(51)=abb40(63)*abb40(51)
      abb40(57)=abb40(57)-abb40(89)
      abb40(49)=-abb40(57)*abb40(49)
      abb40(80)=abb40(86)*spak4l6
      abb40(88)=abb40(84)*spak1l6
      abb40(80)=abb40(80)+abb40(88)
      abb40(88)=3.0_ki*spbl6l5
      abb40(89)=-abb40(88)*spbk7k2*abb40(80)
      abb40(49)=abb40(89)+abb40(74)+abb40(51)+abb40(49)
      abb40(49)=spal6k7*abb40(49)
      abb40(51)=abb40(71)*abb40(86)
      abb40(74)=abb40(54)*abb40(95)
      abb40(51)=abb40(51)-abb40(74)
      abb40(51)=abb40(51)*spak4k7
      abb40(71)=abb40(71)*abb40(84)
      abb40(74)=abb40(54)*abb40(98)
      abb40(71)=abb40(71)-abb40(74)
      abb40(71)=abb40(71)*spak1k7
      abb40(51)=abb40(51)+abb40(71)
      abb40(71)=spbk7k2*abb40(51)
      abb40(74)=-spbk7k2*abb40(96)
      abb40(89)=abb40(91)*abb40(25)
      abb40(74)=abb40(74)+abb40(89)
      abb40(74)=spak2k4*abb40(74)
      abb40(89)=spbk7k2*abb40(99)
      abb40(94)=abb40(73)*abb40(25)
      abb40(89)=abb40(89)+abb40(94)
      abb40(89)=spak1k2*abb40(89)
      abb40(74)=abb40(74)+abb40(89)
      abb40(74)=abb40(74)*abb40(75)
      abb40(49)=abb40(74)+abb40(49)+abb40(81)+abb40(71)
      abb40(49)=4.0_ki*abb40(49)
      abb40(71)=abb40(17)*spbk3k1
      abb40(74)=abb40(69)*abb40(71)
      abb40(81)=abb40(17)*c4
      abb40(89)=abb40(81)*abb40(12)
      abb40(94)=abb40(89)*spbk3k1
      abb40(74)=abb40(74)-abb40(94)
      abb40(94)=abb40(40)*abb40(71)
      abb40(97)=abb40(44)*abb40(81)
      abb40(94)=abb40(94)-abb40(97)
      abb40(100)=abb40(94)*spbl5k2
      abb40(74)=abb40(100)+3.0_ki*abb40(74)
      abb40(74)=abb40(74)*spak1k2
      abb40(100)=abb40(17)*spbk4k3
      abb40(69)=abb40(69)*abb40(100)
      abb40(89)=abb40(89)*spbk4k3
      abb40(69)=abb40(69)-abb40(89)
      abb40(40)=abb40(40)*abb40(100)
      abb40(89)=abb40(34)*abb40(81)
      abb40(40)=abb40(40)-abb40(89)
      abb40(101)=abb40(40)*spbl5k2
      abb40(69)=abb40(101)+3.0_ki*abb40(69)
      abb40(69)=abb40(69)*spak2k4
      abb40(101)=abb40(94)*spak1k7
      abb40(102)=abb40(40)*spak4k7
      abb40(101)=abb40(101)+abb40(102)
      abb40(101)=spbk7l5*abb40(101)
      abb40(69)=abb40(101)+abb40(74)-abb40(69)
      abb40(11)=abb40(11)*abb40(7)
      abb40(74)=abb40(11)*abb40(81)
      abb40(101)=abb40(74)*spbk3k1
      abb40(102)=abb40(101)*abb40(79)
      abb40(17)=abb40(17)*c1
      abb40(103)=spbl5k2*abb40(11)*abb40(17)
      abb40(104)=abb40(103)*spbk3k1
      abb40(102)=abb40(102)-abb40(104)
      abb40(102)=abb40(102)*abb40(93)
      abb40(11)=abb40(11)*abb40(14)
      abb40(14)=abb40(11)*abb40(71)
      abb40(14)=abb40(14)-abb40(101)
      abb40(14)=abb40(14)*spbl5k2
      abb40(101)=abb40(102)-abb40(14)
      abb40(101)=abb40(101)*spak1k2
      abb40(74)=abb40(74)*spbk4k3
      abb40(102)=abb40(74)*abb40(79)
      abb40(103)=abb40(103)*spbk4k3
      abb40(102)=abb40(102)-abb40(103)
      abb40(93)=abb40(102)*abb40(93)
      abb40(11)=abb40(11)*abb40(100)
      abb40(11)=abb40(11)-abb40(74)
      abb40(11)=abb40(11)*spbl5k2
      abb40(74)=abb40(93)-abb40(11)
      abb40(74)=abb40(74)*spak2k4
      abb40(74)=abb40(101)-abb40(74)
      abb40(74)=abb40(74)*abb40(9)
      abb40(93)=abb40(94)*spak1l6
      abb40(101)=abb40(40)*spak4l6
      abb40(93)=abb40(93)+abb40(101)
      abb40(101)=abb40(93)*abb40(88)
      abb40(74)=abb40(101)+abb40(74)-abb40(69)
      abb40(74)=abb40(74)*spal6e7
      abb40(81)=abb40(13)*abb40(81)
      abb40(101)=abb40(81)*spbk3k1
      abb40(102)=abb40(101)*abb40(79)
      abb40(103)=abb40(13)*abb40(17)
      abb40(104)=abb40(103)*spbk3k1
      abb40(105)=abb40(104)*spbl5k2
      abb40(102)=abb40(102)-abb40(105)
      abb40(102)=abb40(102)*abb40(4)
      abb40(71)=abb40(15)*abb40(71)
      abb40(71)=abb40(71)-abb40(101)
      abb40(105)=abb40(71)*spbl5k2
      abb40(102)=abb40(102)+abb40(105)
      abb40(102)=abb40(102)*spak1k2
      abb40(81)=abb40(81)*spbk4k3
      abb40(79)=abb40(81)*abb40(79)
      abb40(103)=abb40(103)*spbk4k3
      abb40(105)=abb40(103)*spbl5k2
      abb40(79)=abb40(79)-abb40(105)
      abb40(79)=abb40(79)*abb40(4)
      abb40(15)=abb40(15)*abb40(100)
      abb40(15)=abb40(15)-abb40(81)
      abb40(100)=abb40(15)*spbl5k2
      abb40(79)=abb40(79)+abb40(100)
      abb40(79)=abb40(79)*spak2k4
      abb40(79)=abb40(102)-abb40(79)
      abb40(100)=2.0_ki*spal5e7
      abb40(79)=abb40(79)*abb40(100)
      abb40(74)=abb40(74)-abb40(79)
      abb40(47)=abb40(47)-abb40(50)
      abb40(79)=-2.0_ki*abb40(47)+abb40(74)
      abb40(79)=4.0_ki*abb40(79)
      abb40(47)=8.0_ki*abb40(47)
      abb40(100)=abb40(9)*spbk7l5
      abb40(58)=abb40(58)*abb40(100)
      abb40(58)=abb40(42)+abb40(58)
      abb40(58)=spak4l6*abb40(58)
      abb40(59)=abb40(59)*abb40(100)
      abb40(59)=abb40(46)+abb40(59)
      abb40(59)=spak1l6*abb40(59)
      abb40(58)=abb40(58)+abb40(59)
      abb40(18)=abb40(8)*abb40(18)
      abb40(53)=spbk7l6*abb40(53)
      abb40(59)=spak4l5*abb40(72)
      abb40(72)=spak1l5*abb40(76)
      abb40(18)=abb40(72)+abb40(59)+abb40(53)+abb40(18)-3.0_ki*abb40(50)-abb40(&
      &68)-abb40(74)+2.0_ki*abb40(58)
      abb40(18)=4.0_ki*abb40(18)
      abb40(50)=-spbk7k2*abb40(95)
      abb40(53)=-abb40(90)*abb40(27)
      abb40(58)=abb40(92)*abb40(25)
      abb40(53)=abb40(53)+abb40(58)
      abb40(53)=abb40(4)*abb40(53)
      abb40(50)=abb40(50)+abb40(53)
      abb40(50)=spak4k7*abb40(50)
      abb40(53)=-spbk7k2*abb40(98)
      abb40(58)=-abb40(27)*abb40(62)
      abb40(59)=abb40(60)*abb40(25)
      abb40(58)=abb40(58)+abb40(59)
      abb40(58)=abb40(4)*abb40(58)
      abb40(53)=abb40(53)+abb40(58)
      abb40(53)=spak1k7*abb40(53)
      abb40(50)=abb40(50)+abb40(53)
      abb40(50)=32.0_ki*abb40(50)
      abb40(53)=abb40(101)*abb40(4)
      abb40(53)=abb40(53)-abb40(104)
      abb40(53)=abb40(53)*abb40(4)
      abb40(53)=abb40(53)-abb40(71)
      abb40(58)=abb40(53)*spak1e7
      abb40(59)=abb40(81)*abb40(4)
      abb40(59)=abb40(59)-abb40(103)
      abb40(59)=abb40(59)*abb40(4)
      abb40(59)=abb40(59)-abb40(15)
      abb40(68)=abb40(59)*spak4e7
      abb40(58)=abb40(58)+abb40(68)
      abb40(58)=32.0_ki*abb40(58)
      abb40(24)=-4.0_ki*abb40(24)
      abb40(67)=spak2k4*abb40(67)
      abb40(68)=-spak1k2*abb40(77)
      abb40(67)=abb40(67)+abb40(68)
      abb40(67)=abb40(9)*abb40(67)
      abb40(63)=-spak2k4*abb40(63)
      abb40(57)=spak1k2*abb40(57)
      abb40(57)=abb40(67)+abb40(63)+abb40(57)
      abb40(57)=spal6k7*abb40(57)
      abb40(63)=abb40(91)*abb40(4)
      abb40(63)=abb40(96)-abb40(63)
      abb40(63)=spak2k4*abb40(63)
      abb40(67)=abb40(73)*abb40(4)
      abb40(67)=-abb40(99)-abb40(67)
      abb40(67)=spak1k2*abb40(67)
      abb40(63)=abb40(63)+abb40(67)
      abb40(63)=abb40(63)*abb40(75)
      abb40(51)=-abb40(51)+abb40(63)+abb40(57)
      abb40(51)=spbk7e7*abb40(51)
      abb40(57)=-spbk7e7*abb40(65)
      abb40(48)=-abb40(40)*abb40(48)
      abb40(43)=-abb40(94)*abb40(43)
      abb40(43)=abb40(48)+abb40(43)+abb40(57)
      abb40(43)=spak2k7*abb40(43)
      abb40(48)=spak2l6*abb40(69)
      abb40(57)=spal6k7*spbk7e7*abb40(80)
      abb40(63)=-spak2l6*abb40(93)
      abb40(57)=abb40(57)+abb40(63)
      abb40(57)=abb40(57)*abb40(88)
      abb40(63)=abb40(71)*spak1k2
      abb40(15)=abb40(15)*spak2k4
      abb40(15)=abb40(63)-abb40(15)
      abb40(15)=abb40(15)*abb40(54)
      abb40(11)=-spak2k4*abb40(11)
      abb40(14)=spak1k2*abb40(14)
      abb40(11)=abb40(11)+abb40(14)
      abb40(11)=abb40(57)+abb40(43)+abb40(48)+3.0_ki*abb40(11)+abb40(15)+abb40(&
      &51)
      abb40(11)=2.0_ki*abb40(11)
      abb40(14)=c1*abb40(90)
      abb40(15)=-abb40(4)*abb40(92)
      abb40(14)=abb40(14)+abb40(15)
      abb40(14)=abb40(4)*abb40(14)
      abb40(14)=abb40(14)+abb40(95)
      abb40(14)=spak4k7*abb40(14)
      abb40(15)=c1*abb40(62)
      abb40(43)=-abb40(4)*abb40(60)
      abb40(15)=abb40(15)+abb40(43)
      abb40(15)=abb40(4)*abb40(15)
      abb40(15)=abb40(15)+abb40(98)
      abb40(15)=spak1k7*abb40(15)
      abb40(14)=abb40(15)+abb40(14)
      abb40(14)=spbk7e7*abb40(14)
      abb40(15)=spak2k4*abb40(59)
      abb40(43)=-spak1k2*abb40(53)
      abb40(14)=abb40(15)+abb40(43)+abb40(14)
      abb40(14)=16.0_ki*abb40(14)
      abb40(15)=-abb40(8)*abb40(70)
      abb40(43)=-spbk7l6*abb40(56)
      abb40(42)=-spak4l5*abb40(42)
      abb40(46)=-spak1l5*abb40(46)
      abb40(15)=abb40(46)+abb40(42)+abb40(43)+abb40(15)+abb40(78)+abb40(66)
      abb40(15)=2.0_ki*abb40(15)
      abb40(42)=spbk7k2*abb40(86)
      abb40(43)=abb40(85)*abb40(83)
      abb40(46)=spbk7k2*abb40(43)
      abb40(48)=-abb40(87)*abb40(25)
      abb40(46)=abb40(46)+abb40(48)
      abb40(46)=abb40(4)*abb40(46)
      abb40(42)=abb40(42)+abb40(46)
      abb40(42)=spak4k7*abb40(42)
      abb40(46)=spbk7k2*abb40(84)
      abb40(48)=abb40(82)*abb40(83)
      abb40(51)=spbk7k2*abb40(48)
      abb40(53)=-abb40(16)*abb40(25)
      abb40(51)=abb40(51)+abb40(53)
      abb40(51)=abb40(4)*abb40(51)
      abb40(46)=abb40(46)+abb40(51)
      abb40(46)=spak1k7*abb40(46)
      abb40(42)=abb40(42)+abb40(46)
      abb40(42)=16.0_ki*abb40(42)
      abb40(44)=abb40(44)*abb40(17)
      abb40(46)=abb40(97)*abb40(4)
      abb40(44)=abb40(44)-abb40(46)
      abb40(44)=abb40(44)*abb40(4)
      abb40(44)=abb40(44)+abb40(94)
      abb40(46)=abb40(44)*spak1e7
      abb40(17)=abb40(34)*abb40(17)
      abb40(34)=abb40(89)*abb40(4)
      abb40(17)=abb40(17)-abb40(34)
      abb40(17)=abb40(17)*abb40(4)
      abb40(17)=abb40(17)+abb40(40)
      abb40(34)=abb40(17)*spak4e7
      abb40(34)=abb40(46)+abb40(34)
      abb40(34)=16.0_ki*abb40(34)
      abb40(40)=abb40(4)*abb40(87)
      abb40(40)=-abb40(43)+abb40(40)
      abb40(40)=abb40(4)*abb40(40)
      abb40(40)=abb40(40)-abb40(86)
      abb40(40)=spak4k7*abb40(40)
      abb40(16)=abb40(4)*abb40(16)
      abb40(16)=-abb40(48)+abb40(16)
      abb40(16)=abb40(4)*abb40(16)
      abb40(16)=abb40(16)-abb40(84)
      abb40(16)=spak1k7*abb40(16)
      abb40(16)=abb40(16)+abb40(40)
      abb40(16)=spbk7e7*abb40(16)
      abb40(17)=spak2k4*abb40(17)
      abb40(40)=-spak1k2*abb40(44)
      abb40(16)=abb40(17)+abb40(40)+abb40(16)
      abb40(16)=8.0_ki*abb40(16)
      abb40(17)=abb40(29)*c1
      abb40(40)=abb40(13)*abb40(17)
      abb40(32)=-abb40(4)*abb40(32)
      abb40(32)=abb40(40)+abb40(32)
      abb40(32)=abb40(4)*abb40(32)
      abb40(30)=abb40(32)+abb40(30)
      abb40(30)=8.0_ki*abb40(30)
      abb40(17)=-abb40(10)*abb40(17)
      abb40(32)=abb40(4)*abb40(35)
      abb40(17)=abb40(17)+abb40(32)
      abb40(17)=abb40(4)*abb40(17)
      abb40(17)=abb40(17)-abb40(41)
      abb40(17)=4.0_ki*abb40(17)
      abb40(32)=spak2l6*abb40(4)
      abb40(35)=4.0_ki*abb40(32)
      abb40(28)=abb40(28)*abb40(35)
      abb40(27)=abb40(27)*abb40(55)
      abb40(40)=-spbk4k3*abb40(27)
      abb40(41)=abb40(25)*abb40(64)
      abb40(40)=abb40(40)+abb40(41)
      abb40(40)=abb40(4)*abb40(40)
      abb40(37)=spal5l6*abb40(37)
      abb40(37)=abb40(40)+abb40(37)
      abb40(37)=4.0_ki*abb40(37)
      abb40(40)=abb40(38)*abb40(55)
      abb40(41)=-spbk4k3*abb40(40)
      abb40(43)=abb40(36)*abb40(64)
      abb40(41)=abb40(41)+abb40(43)
      abb40(41)=abb40(4)*abb40(41)
      abb40(12)=abb40(38)*abb40(12)
      abb40(29)=-abb40(29)*abb40(12)
      abb40(31)=abb40(36)*abb40(31)
      abb40(29)=abb40(29)+abb40(31)
      abb40(31)=abb40(32)*abb40(8)
      abb40(29)=abb40(29)*abb40(31)
      abb40(29)=abb40(41)+abb40(29)
      abb40(29)=4.0_ki*abb40(29)
      abb40(32)=abb40(19)*c1
      abb40(13)=abb40(13)*abb40(32)
      abb40(23)=-abb40(4)*abb40(23)
      abb40(13)=abb40(13)+abb40(23)
      abb40(13)=abb40(4)*abb40(13)
      abb40(13)=abb40(13)+abb40(20)
      abb40(13)=8.0_ki*abb40(13)
      abb40(10)=-abb40(10)*abb40(32)
      abb40(20)=abb40(4)*abb40(21)
      abb40(10)=abb40(10)+abb40(20)
      abb40(10)=abb40(4)*abb40(10)
      abb40(10)=abb40(10)-abb40(45)
      abb40(10)=4.0_ki*abb40(10)
      abb40(20)=abb40(26)*abb40(35)
      abb40(21)=-spbk3k1*abb40(27)
      abb40(23)=abb40(25)*abb40(61)
      abb40(21)=abb40(21)+abb40(23)
      abb40(21)=abb40(4)*abb40(21)
      abb40(23)=spal5l6*abb40(39)
      abb40(21)=abb40(21)+abb40(23)
      abb40(21)=4.0_ki*abb40(21)
      abb40(23)=-spbk3k1*abb40(40)
      abb40(25)=abb40(36)*abb40(61)
      abb40(23)=abb40(23)+abb40(25)
      abb40(23)=abb40(4)*abb40(23)
      abb40(12)=-abb40(19)*abb40(12)
      abb40(19)=abb40(36)*abb40(22)
      abb40(12)=abb40(12)+abb40(19)
      abb40(12)=abb40(12)*abb40(31)
      abb40(12)=abb40(23)+abb40(12)
      abb40(12)=4.0_ki*abb40(12)
      R2d40=abb40(33)
      rat2 = rat2 + R2d40
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='40' value='", &
          & R2d40, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd40h1
