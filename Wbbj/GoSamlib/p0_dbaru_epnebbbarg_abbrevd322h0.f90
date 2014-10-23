module     p0_dbaru_epnebbbarg_abbrevd322h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(170), public :: abb322
   complex(ki), public :: R2d322
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
      abb322(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb322(2)=sqrt2**(-1)
      abb322(3)=es234**(-1)
      abb322(4)=es567**(-1)
      abb322(5)=spbl5k2**(-1)
      abb322(6)=spak2k7**(-1)
      abb322(7)=spbl6k2**(-1)
      abb322(8)=spak2l5**(-1)
      abb322(9)=spak2l6**(-1)
      abb322(10)=sqrt(mB**2)
      abb322(11)=1.0_ki/(es34+es567-es12-es234)
      abb322(12)=spak1k4*abb322(11)
      abb322(13)=i_*c4
      abb322(14)=abb322(13)*mB
      abb322(15)=abb322(12)*abb322(14)
      abb322(16)=spbk7k2*abb322(6)
      abb322(17)=abb322(15)*abb322(16)
      abb322(18)=TR*gW
      abb322(18)=abb322(18)**2*CVDU*abb322(4)*abb322(2)*abb322(1)
      abb322(19)=abb322(18)*abb322(7)
      abb322(20)=abb322(17)*abb322(19)
      abb322(21)=spbk3k1*spak1l5
      abb322(22)=abb322(21)*abb322(20)
      abb322(23)=abb322(13)*abb322(3)*abb322(6)
      abb322(24)=abb322(18)*abb322(23)*spbk3k2
      abb322(25)=abb322(24)*spak3k4
      abb322(26)=abb322(25)*abb322(7)
      abb322(27)=abb322(26)*spbk7k3
      abb322(28)=spak1l5*mB
      abb322(29)=abb322(27)*abb322(28)
      abb322(30)=abb322(24)*abb322(7)
      abb322(31)=abb322(30)*spak2k4
      abb322(32)=spbk7k2*mB
      abb322(33)=abb322(32)*abb322(31)
      abb322(34)=abb322(33)*spak1l5
      abb322(22)=abb322(29)+abb322(22)-abb322(34)
      abb322(29)=spal5k7*abb322(22)
      abb322(34)=2.0_ki*abb322(29)
      abb322(35)=mB**3
      abb322(23)=abb322(23)*spak3k4
      abb322(36)=abb322(18)*abb322(35)*abb322(23)
      abb322(37)=abb322(9)*spak2l5
      abb322(38)=abb322(7)*spbk3k2
      abb322(38)=abb322(38)**2
      abb322(39)=abb322(36)*abb322(37)*abb322(38)
      abb322(40)=abb322(39)*spak1l5
      abb322(41)=abb322(34)+abb322(40)
      abb322(42)=es71+es12-es712
      abb322(41)=-abb322(41)*abb322(42)
      abb322(43)=abb322(13)*abb322(12)
      abb322(44)=abb322(43)*abb322(18)
      abb322(45)=abb322(16)*abb322(44)
      abb322(46)=abb322(45)*abb322(10)
      abb322(47)=abb322(18)*abb322(12)
      abb322(48)=abb322(47)*abb322(14)
      abb322(49)=abb322(48)*abb322(16)
      abb322(50)=abb322(46)-abb322(49)
      abb322(51)=abb322(50)*abb322(21)
      abb322(52)=abb322(24)*abb322(10)
      abb322(53)=abb322(52)*spbk7k2
      abb322(54)=abb322(32)*abb322(24)
      abb322(55)=abb322(53)-abb322(54)
      abb322(56)=spak1l5*spak2k4
      abb322(57)=abb322(55)*abb322(56)
      abb322(51)=abb322(51)-abb322(57)
      abb322(57)=spal5k7*spak2l6
      abb322(58)=abb322(51)*abb322(57)
      abb322(59)=abb322(25)*spbk7k3
      abb322(60)=abb322(59)*abb322(10)
      abb322(61)=spak2l6*spak1l5
      abb322(62)=abb322(60)*abb322(61)
      abb322(63)=spal5k7*abb322(62)
      abb322(58)=abb322(58)+abb322(63)
      abb322(63)=-spak2l5*abb322(51)
      abb322(64)=abb322(59)*spak2l5
      abb322(65)=abb322(64)*abb322(10)
      abb322(66)=-spak1l5*abb322(65)
      abb322(63)=abb322(63)+abb322(66)
      abb322(63)=spal6k7*abb322(63)
      abb322(66)=spak2l6*spbk4k3
      abb322(67)=abb322(66)*abb322(50)
      abb322(68)=2.0_ki*spal5k7
      abb322(69)=abb322(67)*abb322(68)
      abb322(70)=spak2l5*spbk4k3
      abb322(71)=abb322(50)*abb322(70)
      abb322(72)=abb322(71)*spal6k7
      abb322(69)=abb322(69)-abb322(72)
      abb322(72)=abb322(20)*spbk4k3
      abb322(73)=abb322(72)*abb322(68)
      abb322(74)=-abb322(73)*abb322(42)
      abb322(74)=abb322(74)+abb322(69)
      abb322(74)=spak4l5*abb322(74)
      abb322(41)=abb322(74)+2.0_ki*abb322(58)+abb322(63)+abb322(41)
      abb322(41)=spbk7l5*abb322(41)
      abb322(58)=spbk7k2**2
      abb322(63)=abb322(58)*abb322(35)
      abb322(74)=abb322(32)**2
      abb322(75)=abb322(74)*abb322(10)
      abb322(76)=abb322(75)-abb322(63)
      abb322(77)=abb322(76)*abb322(31)
      abb322(78)=abb322(13)*abb322(7)
      abb322(47)=abb322(47)*abb322(78)
      abb322(79)=abb322(58)*abb322(6)
      abb322(80)=abb322(35)*abb322(47)*abb322(79)
      abb322(81)=abb322(47)*abb322(6)
      abb322(82)=abb322(81)*abb322(75)
      abb322(82)=abb322(82)-abb322(80)
      abb322(83)=-spbk3k1*abb322(82)
      abb322(77)=abb322(77)+abb322(83)
      abb322(83)=spak1k2*spak2l5
      abb322(77)=abb322(77)*abb322(83)
      abb322(84)=abb322(70)*spak2k4
      abb322(82)=abb322(82)*abb322(84)
      abb322(85)=mB**2
      abb322(86)=abb322(85)*abb322(10)
      abb322(87)=abb322(7)*spbk7k2
      abb322(88)=-abb322(87)*abb322(86)*abb322(64)*spak1k2
      abb322(77)=abb322(88)+abb322(82)+abb322(77)
      abb322(77)=abb322(9)*abb322(77)
      abb322(82)=abb322(18)*abb322(5)
      abb322(88)=abb322(82)*abb322(6)
      abb322(89)=abb322(88)*abb322(43)
      abb322(90)=2.0_ki*abb322(74)
      abb322(91)=abb322(90)*abb322(89)
      abb322(92)=abb322(15)*abb322(82)
      abb322(93)=abb322(79)*abb322(92)
      abb322(94)=abb322(93)*abb322(10)
      abb322(91)=abb322(91)-abb322(94)
      abb322(91)=abb322(91)*abb322(10)
      abb322(95)=abb322(89)*abb322(63)
      abb322(91)=abb322(91)-abb322(95)
      abb322(96)=spbk4k3*spak2k4
      abb322(97)=abb322(91)*abb322(96)
      abb322(91)=-spbk3k1*abb322(91)
      abb322(58)=abb322(58)*mB
      abb322(98)=abb322(58)*abb322(10)
      abb322(99)=abb322(98)-abb322(90)
      abb322(99)=abb322(99)*abb322(10)
      abb322(99)=abb322(99)+abb322(63)
      abb322(100)=abb322(24)*abb322(5)
      abb322(101)=-spak2k4*abb322(100)*abb322(99)
      abb322(91)=abb322(101)+abb322(91)
      abb322(91)=spak1k2*abb322(91)
      abb322(101)=abb322(85)*abb322(25)
      abb322(102)=abb322(5)*spbk7k2
      abb322(103)=abb322(101)*abb322(102)
      abb322(104)=abb322(25)*abb322(5)
      abb322(105)=abb322(104)*abb322(32)
      abb322(106)=abb322(105)*abb322(10)
      abb322(103)=abb322(103)-abb322(106)
      abb322(107)=spbk7k3*spak1k2
      abb322(108)=abb322(107)*abb322(10)
      abb322(109)=-abb322(103)*abb322(108)
      abb322(77)=abb322(77)+abb322(109)+abb322(97)+abb322(91)
      abb322(77)=spal6k7*abb322(77)
      abb322(12)=abb322(12)*abb322(78)
      abb322(78)=abb322(88)*abb322(12)
      abb322(88)=abb322(78)*abb322(63)
      abb322(91)=abb322(88)*spbk3k1
      abb322(97)=abb322(100)*spak2k4
      abb322(109)=abb322(63)*abb322(7)
      abb322(110)=abb322(109)*abb322(97)
      abb322(91)=abb322(91)-abb322(110)
      abb322(110)=abb322(91)*spak1k2
      abb322(111)=abb322(88)*abb322(96)
      abb322(110)=abb322(111)-abb322(110)
      abb322(111)=abb322(104)*abb322(87)
      abb322(112)=abb322(111)*abb322(35)
      abb322(113)=abb322(107)*abb322(112)
      abb322(113)=abb322(113)-abb322(110)
      abb322(114)=spal5k7*abb322(113)
      abb322(115)=mB**4
      abb322(116)=abb322(10)*abb322(115)
      abb322(117)=mB**5
      abb322(116)=abb322(116)-abb322(117)
      abb322(118)=abb322(19)*abb322(23)
      abb322(119)=abb322(5)*spbk3k2
      abb322(119)=abb322(119)**2
      abb322(120)=abb322(119)*spbk7k2
      abb322(116)=spak1k2*abb322(116)*abb322(118)*abb322(120)
      abb322(114)=abb322(116)+abb322(114)
      abb322(114)=abb322(114)*abb322(8)
      abb322(78)=abb322(78)*abb322(75)
      abb322(121)=abb322(78)*spbk3k1
      abb322(122)=abb322(75)*abb322(7)
      abb322(123)=abb322(122)*abb322(97)
      abb322(124)=abb322(111)*abb322(86)
      abb322(125)=abb322(124)*spbk7k3
      abb322(121)=abb322(125)+abb322(121)-abb322(123)
      abb322(121)=abb322(121)*spak1k7
      abb322(114)=abb322(114)+abb322(121)
      abb322(121)=abb322(82)*abb322(23)
      abb322(117)=abb322(121)*abb322(117)
      abb322(123)=abb322(121)*abb322(10)
      abb322(115)=abb322(123)*abb322(115)
      abb322(115)=abb322(117)-abb322(115)
      abb322(38)=abb322(115)*abb322(38)*spbk7k2
      abb322(115)=abb322(9)*spak1k2
      abb322(117)=abb322(38)*abb322(115)
      abb322(114)=abb322(117)+2.0_ki*abb322(114)
      abb322(114)=-abb322(114)*abb322(42)
      abb322(90)=abb322(90)*abb322(81)
      abb322(15)=abb322(15)*abb322(19)
      abb322(79)=abb322(79)*abb322(15)
      abb322(117)=abb322(79)*abb322(10)
      abb322(90)=abb322(90)-abb322(117)
      abb322(90)=abb322(90)*abb322(10)
      abb322(80)=abb322(90)-abb322(80)
      abb322(90)=-abb322(80)*abb322(96)
      abb322(80)=spbk3k1*abb322(80)
      abb322(99)=spak2k4*abb322(30)*abb322(99)
      abb322(80)=abb322(99)+abb322(80)
      abb322(80)=spak1k2*abb322(80)
      abb322(99)=abb322(26)*abb322(32)
      abb322(125)=abb322(99)*abb322(10)
      abb322(101)=abb322(87)*abb322(101)
      abb322(101)=abb322(101)-abb322(125)
      abb322(101)=abb322(101)*abb322(108)
      abb322(80)=abb322(101)+abb322(90)+abb322(80)
      abb322(80)=spal5k7*abb322(80)
      abb322(90)=abb322(98)-abb322(74)
      abb322(98)=abb322(90)*abb322(31)
      abb322(81)=abb322(81)*abb322(74)
      abb322(81)=abb322(81)-abb322(117)
      abb322(101)=spbk3k1*abb322(81)
      abb322(98)=abb322(98)+abb322(101)
      abb322(98)=spak2l5*abb322(98)
      abb322(90)=-abb322(90)*abb322(97)
      abb322(74)=abb322(89)*abb322(74)
      abb322(74)=abb322(74)-abb322(94)
      abb322(94)=-spbk3k1*abb322(74)
      abb322(90)=abb322(90)+abb322(94)
      abb322(94)=2.0_ki*spak2l6
      abb322(90)=abb322(94)*abb322(90)
      abb322(90)=abb322(98)+abb322(90)
      abb322(90)=abb322(10)*abb322(90)
      abb322(98)=abb322(94)*abb322(105)
      abb322(101)=abb322(99)*spak2l5
      abb322(108)=abb322(98)-abb322(101)
      abb322(108)=abb322(108)*spbk7k3
      abb322(117)=abb322(10)**2
      abb322(126)=abb322(117)*abb322(108)
      abb322(90)=abb322(126)+abb322(90)
      abb322(90)=spak1k7*abb322(90)
      abb322(76)=-abb322(76)*abb322(97)
      abb322(75)=abb322(89)*abb322(75)
      abb322(75)=abb322(75)-abb322(95)
      abb322(89)=spbk3k1*abb322(75)
      abb322(95)=abb322(102)*abb322(59)*abb322(86)
      abb322(76)=abb322(95)+abb322(76)+abb322(89)
      abb322(76)=spak1k2*abb322(76)
      abb322(75)=-abb322(75)*abb322(96)
      abb322(75)=abb322(75)+abb322(76)
      abb322(76)=2.0_ki*abb322(8)
      abb322(75)=abb322(76)*abb322(57)*abb322(75)
      abb322(50)=abb322(50)*spbk3k1
      abb322(55)=abb322(55)*spak2k4
      abb322(50)=abb322(50)-abb322(55)
      abb322(55)=abb322(50)+abb322(60)
      abb322(55)=abb322(57)*abb322(55)
      abb322(50)=abb322(50)*spak2l5
      abb322(50)=abb322(50)+abb322(65)
      abb322(57)=-spal6k7*abb322(50)
      abb322(55)=2.0_ki*abb322(55)+abb322(57)
      abb322(55)=spak1l6*abb322(55)
      abb322(57)=abb322(36)*abb322(119)*abb322(8)
      abb322(60)=abb322(57)*spak1l6
      abb322(89)=abb322(60)*abb322(94)*abb322(42)
      abb322(55)=abb322(55)+abb322(89)
      abb322(55)=spbk7l6*abb322(55)
      abb322(89)=abb322(109)*abb322(104)
      abb322(95)=abb322(122)*abb322(104)
      abb322(119)=abb322(89)-abb322(95)
      abb322(126)=spal6k7*spak1k2
      abb322(127)=abb322(119)*abb322(126)
      abb322(128)=abb322(68)*spak1k2
      abb322(129)=-abb322(8)*spak2l6*abb322(128)*abb322(89)
      abb322(130)=abb322(61)*abb322(99)
      abb322(131)=-abb322(68)*abb322(130)
      abb322(132)=spal6k7*spak1l5*abb322(101)
      abb322(131)=abb322(131)+abb322(132)
      abb322(131)=spbk7l5*abb322(131)
      abb322(132)=abb322(94)*spak1k7
      abb322(133)=-abb322(95)*abb322(132)
      abb322(127)=abb322(131)+abb322(129)+abb322(133)+abb322(127)
      abb322(127)=spbl6k3*abb322(127)
      abb322(119)=-abb322(119)*abb322(128)
      abb322(89)=abb322(37)*abb322(89)*abb322(126)
      abb322(126)=abb322(105)*spak2l6
      abb322(129)=-abb322(68)*abb322(126)
      abb322(131)=abb322(105)*spak2l5
      abb322(133)=spal6k7*abb322(131)
      abb322(129)=abb322(129)+abb322(133)
      abb322(133)=spbk7l6*spak1l6
      abb322(129)=abb322(129)*abb322(133)
      abb322(95)=spak1k7*spak2l5*abb322(95)
      abb322(89)=abb322(129)+abb322(89)+abb322(119)+abb322(95)
      abb322(89)=spbl5k3*abb322(89)
      abb322(74)=-abb322(10)*abb322(74)*abb322(94)
      abb322(95)=2.0_ki*abb322(42)
      abb322(119)=-abb322(78)*abb322(95)
      abb322(74)=abb322(74)+abb322(119)
      abb322(74)=spbk4k3*abb322(74)
      abb322(81)=abb322(10)*abb322(81)*abb322(70)
      abb322(74)=abb322(81)+abb322(74)
      abb322(74)=spak4k7*abb322(74)
      abb322(81)=spak4l6*spbk7l6
      abb322(69)=abb322(69)*abb322(81)
      abb322(41)=abb322(69)+abb322(89)+abb322(127)+abb322(74)+abb322(55)+abb322&
      &(75)+2.0_ki*abb322(80)+abb322(90)+abb322(41)+abb322(77)+abb322(114)
      abb322(41)=4.0_ki*abb322(41)
      abb322(51)=abb322(51)*spak2l6
      abb322(55)=spbk3k2*mB
      abb322(55)=abb322(55)**2
      abb322(69)=abb322(55)*abb322(123)
      abb322(74)=abb322(69)*abb322(87)
      abb322(75)=abb322(35)*abb322(82)
      abb322(23)=abb322(23)*spbk3k2**2
      abb322(77)=abb322(23)*abb322(75)
      abb322(80)=abb322(77)*abb322(87)
      abb322(89)=abb322(74)-abb322(80)
      abb322(89)=abb322(89)*spak1k2
      abb322(51)=abb322(89)-abb322(51)
      abb322(89)=abb322(25)*abb322(10)
      abb322(90)=abb322(25)*mB
      abb322(114)=abb322(89)-abb322(90)
      abb322(119)=abb322(114)*abb322(61)
      abb322(123)=abb322(128)*abb322(99)
      abb322(127)=abb322(123)+abb322(119)
      abb322(127)=abb322(127)*spbk7k3
      abb322(129)=abb322(67)*spak4l5
      abb322(134)=abb322(79)*spbk3k1
      abb322(135)=abb322(58)*abb322(31)
      abb322(134)=abb322(134)-abb322(135)
      abb322(135)=abb322(134)*spak1k2
      abb322(136)=abb322(79)*abb322(96)
      abb322(135)=abb322(136)-abb322(135)
      abb322(135)=abb322(135)*abb322(68)
      abb322(127)=-abb322(135)+abb322(127)+abb322(129)-abb322(51)
      abb322(129)=spak1l6*mB
      abb322(136)=abb322(129)*abb322(64)
      abb322(19)=abb322(23)*abb322(19)
      abb322(137)=abb322(19)*abb322(28)
      abb322(138)=spbk7l5*spak2l5
      abb322(139)=abb322(138)*abb322(137)
      abb322(140)=spak1l6*abb322(131)*spbl5k3
      abb322(136)=abb322(136)+abb322(139)-abb322(140)
      abb322(139)=abb322(93)*spbk3k1
      abb322(58)=abb322(58)*abb322(97)
      abb322(58)=abb322(139)-abb322(58)
      abb322(139)=abb322(58)*spak2l6
      abb322(141)=-spbk7k3*abb322(126)
      abb322(141)=-abb322(139)+abb322(141)
      abb322(142)=2.0_ki*spak1k7
      abb322(141)=abb322(141)*abb322(142)
      abb322(143)=spbk4k3*abb322(94)*abb322(93)
      abb322(144)=-spak4k7*abb322(143)
      abb322(141)=abb322(144)+abb322(141)-abb322(136)+abb322(127)
      abb322(141)=8.0_ki*abb322(141)
      abb322(144)=abb322(134)*spak2l5
      abb322(145)=-abb322(58)*abb322(94)
      abb322(108)=-abb322(108)+abb322(144)+abb322(145)
      abb322(108)=spak1k7*abb322(108)
      abb322(145)=abb322(58)*spak1k2
      abb322(146)=abb322(93)*abb322(96)
      abb322(147)=abb322(107)*abb322(105)
      abb322(145)=-abb322(145)+abb322(146)-abb322(147)
      abb322(145)=abb322(145)*spal6k7
      abb322(50)=spak1l6*abb322(50)
      abb322(146)=abb322(79)*abb322(70)
      abb322(143)=abb322(146)-abb322(143)
      abb322(143)=spak4k7*abb322(143)
      abb322(71)=spak4l6*abb322(71)
      abb322(50)=abb322(71)+abb322(143)+abb322(50)+abb322(145)+abb322(108)-abb3&
      &22(140)+abb322(127)
      abb322(50)=8.0_ki*abb322(50)
      abb322(71)=abb322(22)*abb322(42)
      abb322(23)=abb322(23)*abb322(82)
      abb322(108)=abb322(23)*mB
      abb322(127)=abb322(108)*spak1l6
      abb322(140)=spbk7l6*spak2l6
      abb322(143)=abb322(140)*abb322(127)
      abb322(130)=abb322(130)*spbl6k3
      abb322(71)=-abb322(71)+abb322(143)-abb322(130)
      abb322(130)=abb322(42)*abb322(72)
      abb322(67)=abb322(67)-abb322(130)
      abb322(67)=spak4l5*abb322(67)
      abb322(51)=abb322(67)+abb322(62)-abb322(51)+abb322(71)
      abb322(51)=8.0_ki*abb322(51)
      abb322(62)=abb322(87)*abb322(35)
      abb322(67)=abb322(62)*abb322(97)
      abb322(143)=abb322(104)*spbk7k3
      abb322(147)=abb322(7)*abb322(143)*abb322(35)
      abb322(147)=abb322(147)-abb322(67)
      abb322(147)=spak1l5*abb322(147)
      abb322(12)=abb322(16)*abb322(12)
      abb322(148)=abb322(12)*abb322(75)
      abb322(149)=abb322(148)*abb322(21)
      abb322(147)=abb322(149)+abb322(147)
      abb322(149)=-abb322(147)*abb322(42)
      abb322(150)=abb322(35)*abb322(24)
      abb322(151)=abb322(150)*abb322(102)
      abb322(152)=abb322(85)*abb322(52)
      abb322(153)=-abb322(102)*abb322(152)
      abb322(153)=abb322(151)+abb322(153)
      abb322(153)=abb322(153)*abb322(56)
      abb322(43)=abb322(43)*abb322(16)
      abb322(75)=abb322(43)*abb322(75)
      abb322(43)=abb322(43)*abb322(82)
      abb322(154)=abb322(43)*abb322(86)
      abb322(154)=abb322(154)-abb322(75)
      abb322(155)=abb322(154)*abb322(21)
      abb322(153)=abb322(153)+abb322(155)
      abb322(153)=spak2l6*abb322(153)
      abb322(110)=abb322(110)*abb322(68)
      abb322(155)=abb322(104)*abb322(86)*abb322(61)
      abb322(128)=-abb322(112)*abb322(128)
      abb322(128)=abb322(155)+abb322(128)
      abb322(128)=spbk7k3*abb322(128)
      abb322(155)=-abb322(112)*abb322(61)*spbl6k3
      abb322(110)=abb322(155)+abb322(149)+abb322(128)+abb322(110)-abb322(116)+a&
      &bb322(153)
      abb322(110)=abb322(8)*abb322(110)
      abb322(116)=abb322(7)**2
      abb322(63)=abb322(116)*abb322(63)
      abb322(128)=abb322(24)*spak2k4
      abb322(149)=abb322(63)*abb322(128)
      abb322(44)=abb322(44)*abb322(6)
      abb322(63)=abb322(63)*abb322(44)
      abb322(153)=abb322(63)*spbk3k1
      abb322(149)=abb322(149)-abb322(153)
      abb322(153)=-spak2l5*abb322(149)
      abb322(116)=abb322(116)*abb322(35)
      abb322(155)=abb322(116)*spbk7k2
      abb322(64)=abb322(155)*abb322(64)
      abb322(153)=abb322(153)+abb322(64)
      abb322(153)=spak1k7*abb322(153)
      abb322(113)=-spal6k7*abb322(113)
      abb322(38)=spak1k2*abb322(38)
      abb322(38)=abb322(113)+abb322(38)+abb322(153)
      abb322(38)=abb322(9)*abb322(38)
      abb322(113)=abb322(20)*spbk3k1
      abb322(33)=abb322(113)-abb322(33)
      abb322(113)=abb322(27)*mB
      abb322(153)=-abb322(113)-abb322(33)
      abb322(153)=abb322(68)*abb322(153)
      abb322(156)=spak2l6*abb322(57)
      abb322(157)=abb322(77)*abb322(7)
      abb322(158)=abb322(7)*abb322(69)
      abb322(153)=abb322(156)-abb322(157)+abb322(158)+abb322(153)
      abb322(153)=abb322(153)*abb322(133)
      abb322(156)=abb322(148)*spbk4k3
      abb322(158)=abb322(156)*abb322(8)
      abb322(159)=-abb322(158)*abb322(42)
      abb322(16)=abb322(16)*abb322(47)
      abb322(47)=2.0_ki*abb322(85)
      abb322(160)=abb322(47)*abb322(16)
      abb322(20)=abb322(20)*abb322(10)
      abb322(160)=abb322(160)-abb322(20)
      abb322(160)=abb322(160)*abb322(10)
      abb322(161)=abb322(16)*abb322(35)
      abb322(160)=abb322(160)-abb322(161)
      abb322(162)=spbk4k3*abb322(160)
      abb322(154)=abb322(8)*abb322(154)*abb322(66)
      abb322(163)=-spbk7l5*abb322(73)
      abb322(154)=abb322(163)+abb322(162)+abb322(154)+abb322(159)
      abb322(154)=spak4l5*abb322(154)
      abb322(159)=-spbk7k3*abb322(112)
      abb322(91)=abb322(159)-abb322(91)
      abb322(91)=abb322(91)*abb322(142)
      abb322(34)=-abb322(34)+abb322(40)
      abb322(34)=spbk7l5*abb322(34)
      abb322(88)=2.0_ki*abb322(88)
      abb322(159)=-spbk4k3*abb322(88)
      abb322(162)=abb322(70)*abb322(9)
      abb322(163)=abb322(63)*abb322(162)
      abb322(159)=abb322(159)+abb322(163)
      abb322(159)=spak4k7*abb322(159)
      abb322(163)=abb322(32)*abb322(10)
      abb322(164)=abb322(163)*abb322(30)
      abb322(165)=abb322(87)*abb322(24)
      abb322(166)=-abb322(165)*abb322(47)
      abb322(166)=abb322(166)+abb322(164)
      abb322(166)=abb322(10)*abb322(166)
      abb322(150)=abb322(150)*abb322(87)
      abb322(166)=abb322(150)+abb322(166)
      abb322(166)=abb322(166)*abb322(56)
      abb322(160)=abb322(160)*abb322(21)
      abb322(167)=abb322(26)*abb322(47)
      abb322(168)=abb322(26)*mB
      abb322(169)=-abb322(10)*abb322(168)
      abb322(167)=abb322(167)+abb322(169)
      abb322(167)=abb322(10)*abb322(167)
      abb322(169)=-abb322(35)*abb322(26)
      abb322(167)=abb322(169)+abb322(167)
      abb322(169)=spbk7k3*spak1l5
      abb322(167)=abb322(167)*abb322(169)
      abb322(170)=-abb322(73)*abb322(81)
      abb322(34)=abb322(170)+abb322(159)+abb322(154)+abb322(34)+abb322(153)+abb&
      &322(38)+abb322(91)+abb322(167)+abb322(166)+abb322(160)+abb322(110)
      abb322(34)=8.0_ki*abb322(34)
      abb322(38)=abb322(72)*spak4l5
      abb322(22)=abb322(22)+abb322(38)
      abb322(91)=-16.0_ki*abb322(22)
      abb322(110)=-abb322(8)*abb322(147)
      abb322(147)=-spak4l5*abb322(158)
      abb322(110)=abb322(110)+abb322(147)
      abb322(110)=16.0_ki*abb322(110)
      abb322(147)=abb322(101)-abb322(126)
      abb322(153)=spbk7k3*abb322(147)
      abb322(139)=abb322(153)+abb322(144)-abb322(139)
      abb322(139)=abb322(139)*abb322(142)
      abb322(144)=-abb322(90)*abb322(61)
      abb322(123)=abb322(144)+abb322(123)
      abb322(123)=spbk7k3*abb322(123)
      abb322(144)=-abb322(93)*abb322(66)
      abb322(144)=abb322(146)+abb322(144)
      abb322(146)=2.0_ki*spak4k7
      abb322(144)=abb322(144)*abb322(146)
      abb322(130)=spak4l5*abb322(130)
      abb322(71)=abb322(144)+abb322(130)+2.0_ki*abb322(145)+abb322(139)-abb322(&
      &135)+abb322(123)-abb322(71)+abb322(136)
      abb322(71)=4.0_ki*abb322(71)
      abb322(123)=8.0_ki*abb322(22)
      abb322(130)=abb322(149)*abb322(83)
      abb322(63)=abb322(63)*abb322(84)
      abb322(64)=-spak1k2*abb322(64)
      abb322(63)=abb322(64)+abb322(63)+abb322(130)
      abb322(63)=abb322(9)*abb322(63)
      abb322(22)=-abb322(138)*abb322(22)
      abb322(64)=2.0_ki*abb322(109)-abb322(122)
      abb322(64)=abb322(64)*abb322(97)
      abb322(78)=abb322(88)-abb322(78)
      abb322(88)=-spbk3k1*abb322(78)
      abb322(64)=abb322(64)+abb322(88)
      abb322(64)=spak1k2*abb322(64)
      abb322(78)=abb322(78)*abb322(96)
      abb322(88)=-2.0_ki*abb322(112)+abb322(124)
      abb322(88)=abb322(88)*abb322(107)
      abb322(107)=abb322(33)*spak2l5
      abb322(109)=abb322(113)*spak2l5
      abb322(122)=abb322(107)+abb322(109)
      abb322(122)=-abb322(122)*abb322(133)
      abb322(130)=abb322(72)*spak2l5
      abb322(81)=-abb322(130)*abb322(81)
      abb322(22)=abb322(81)+abb322(122)+abb322(63)+abb322(88)+abb322(78)+abb322&
      &(64)+2.0_ki*abb322(22)
      abb322(22)=4.0_ki*abb322(22)
      abb322(44)=abb322(10)*abb322(44)
      abb322(48)=abb322(48)*abb322(6)
      abb322(44)=abb322(44)-abb322(48)
      abb322(63)=abb322(44)*abb322(21)
      abb322(64)=abb322(24)*mB
      abb322(52)=abb322(52)-abb322(64)
      abb322(78)=abb322(52)*abb322(56)
      abb322(63)=abb322(63)-abb322(78)
      abb322(78)=abb322(44)*spbk4k3
      abb322(81)=abb322(78)*spak4l5
      abb322(88)=abb322(97)*abb322(32)
      abb322(17)=abb322(17)*abb322(82)
      abb322(122)=spbk3k1*abb322(17)
      abb322(88)=abb322(88)-abb322(122)
      abb322(122)=abb322(143)*mB
      abb322(133)=abb322(122)-abb322(88)
      abb322(133)=abb322(133)*abb322(142)
      abb322(135)=abb322(57)*spak1k2
      abb322(136)=abb322(115)*abb322(157)
      abb322(133)=-abb322(81)+abb322(133)-abb322(63)-abb322(136)+2.0_ki*abb322(&
      &135)
      abb322(133)=abb322(42)*abb322(133)
      abb322(139)=-spak2l6*abb322(63)
      abb322(132)=-abb322(88)*abb322(132)
      abb322(143)=abb322(88)*spak1k2
      abb322(144)=spbk4k3*abb322(17)
      abb322(145)=abb322(144)*spak2k4
      abb322(143)=abb322(145)+abb322(143)
      abb322(145)=-spal6k7*abb322(143)
      abb322(149)=abb322(44)*spak4l5
      abb322(153)=-abb322(66)*abb322(149)
      abb322(154)=abb322(144)*spak4k7
      abb322(94)=abb322(94)*abb322(154)
      abb322(94)=abb322(94)+abb322(153)+abb322(145)+abb322(139)+abb322(132)
      abb322(94)=spbl6k2*abb322(94)
      abb322(132)=2.0_ki*abb322(54)-abb322(53)
      abb322(132)=spak2k4*abb322(132)
      abb322(139)=-abb322(46)+2.0_ki*abb322(49)
      abb322(145)=-spbk3k1*abb322(139)
      abb322(132)=abb322(132)+abb322(145)
      abb322(132)=spak2l5*abb322(132)
      abb322(65)=abb322(132)+abb322(65)
      abb322(65)=spak1k7*abb322(65)
      abb322(98)=spak1k7*abb322(98)
      abb322(132)=abb322(105)*spak1k2
      abb322(145)=spal6k7*abb322(132)
      abb322(98)=abb322(145)-abb322(119)+abb322(98)
      abb322(98)=spbl6k3*abb322(98)
      abb322(119)=-abb322(55)*abb322(121)
      abb322(121)=abb322(10)*abb322(108)
      abb322(119)=abb322(119)+abb322(121)
      abb322(119)=spak1k2*abb322(10)*abb322(119)
      abb322(121)=abb322(54)*spak2k4
      abb322(145)=abb322(49)*spbk3k1
      abb322(121)=abb322(121)-abb322(145)
      abb322(145)=spak1k2*abb322(121)
      abb322(153)=abb322(49)*abb322(96)
      abb322(145)=abb322(153)+abb322(145)
      abb322(145)=abb322(145)*abb322(68)
      abb322(13)=-abb322(10)*abb322(13)
      abb322(13)=abb322(14)+abb322(13)
      abb322(13)=abb322(169)*abb322(3)*abb322(18)*spak3k4*spbk3k2*abb322(13)
      abb322(14)=-abb322(139)*abb322(70)
      abb322(18)=abb322(144)*abb322(95)
      abb322(14)=abb322(14)+abb322(18)
      abb322(14)=spak4k7*abb322(14)
      abb322(18)=-spal5k7*abb322(132)
      abb322(131)=-spak1k7*abb322(131)
      abb322(18)=abb322(18)+abb322(131)
      abb322(131)=2.0_ki*spbl5k3
      abb322(18)=abb322(18)*abb322(131)
      abb322(13)=abb322(18)+abb322(98)+abb322(94)+abb322(14)+abb322(65)+abb322(&
      &13)+abb322(119)+abb322(145)+abb322(133)
      abb322(13)=4.0_ki*abb322(13)
      abb322(14)=abb322(108)*spak1k2
      abb322(18)=8.0_ki*abb322(14)
      abb322(65)=8.0_ki*abb322(135)
      abb322(14)=-4.0_ki*abb322(14)
      abb322(94)=spak1k2*abb322(103)
      abb322(98)=abb322(25)*spak2l5
      abb322(103)=spbk7l5*spak1l5*abb322(98)
      abb322(94)=abb322(94)+abb322(103)
      abb322(94)=4.0_ki*abb322(10)*abb322(94)
      abb322(103)=8.0_ki*abb322(132)
      abb322(115)=8.0_ki*abb322(112)*abb322(115)
      abb322(119)=4.0_ki*abb322(132)
      abb322(17)=abb322(10)*abb322(17)
      abb322(43)=abb322(43)*abb322(47)
      abb322(17)=abb322(17)-abb322(43)
      abb322(17)=abb322(17)*abb322(10)
      abb322(17)=abb322(17)+abb322(75)
      abb322(43)=abb322(17)*spbk3k1
      abb322(75)=abb322(47)*abb322(102)
      abb322(24)=abb322(75)*abb322(24)
      abb322(132)=abb322(163)*abb322(100)
      abb322(24)=abb322(132)-abb322(24)
      abb322(24)=abb322(24)*abb322(10)
      abb322(24)=abb322(24)+abb322(151)
      abb322(24)=abb322(24)*spak2k4
      abb322(24)=abb322(24)-abb322(43)
      abb322(43)=-spbl5k3*abb322(112)*abb322(37)
      abb322(43)=abb322(43)+abb322(24)
      abb322(43)=spak1k2*abb322(43)
      abb322(132)=abb322(17)*abb322(96)
      abb322(133)=-abb322(87)*abb322(152)
      abb322(133)=abb322(150)+abb322(133)
      abb322(133)=spak2k4*abb322(133)
      abb322(139)=abb322(16)*abb322(86)
      abb322(139)=abb322(139)-abb322(161)
      abb322(145)=spbk3k1*abb322(139)
      abb322(151)=abb322(86)*abb322(27)
      abb322(133)=abb322(151)+abb322(133)+abb322(145)
      abb322(83)=abb322(83)*abb322(133)
      abb322(84)=-abb322(139)*abb322(84)
      abb322(83)=abb322(84)+abb322(83)
      abb322(83)=abb322(9)*abb322(83)
      abb322(84)=abb322(63)*abb322(138)
      abb322(133)=spbk7l5*abb322(70)*abb322(149)
      abb322(139)=-abb322(112)+abb322(124)
      abb322(139)=spak1k2*abb322(139)
      abb322(26)=abb322(28)*abb322(26)
      abb322(138)=-abb322(26)*abb322(138)
      abb322(138)=abb322(139)+abb322(138)
      abb322(138)=spbl6k3*abb322(138)
      abb322(43)=abb322(138)+abb322(133)+abb322(84)+abb322(83)+abb322(132)+abb3&
      &22(43)
      abb322(43)=4.0_ki*abb322(43)
      abb322(83)=8.0_ki*abb322(143)
      abb322(84)=abb322(148)*spbk3k1
      abb322(67)=abb322(84)-abb322(67)
      abb322(84)=spak1k2*abb322(67)
      abb322(96)=-abb322(96)*abb322(148)
      abb322(84)=abb322(96)+abb322(84)
      abb322(84)=8.0_ki*abb322(9)*abb322(84)
      abb322(96)=-4.0_ki*abb322(143)
      abb322(132)=spal5l6*spbk7l6*abb322(44)
      abb322(17)=abb322(132)+abb322(17)
      abb322(17)=abb322(66)*abb322(17)
      abb322(66)=4.0_ki*abb322(86)
      abb322(12)=abb322(82)*abb322(66)*abb322(12)
      abb322(12)=-abb322(12)+3.0_ki*abb322(148)
      abb322(82)=abb322(12)*spbk4k3
      abb322(45)=abb322(116)*abb322(45)
      abb322(86)=abb322(162)*abb322(45)
      abb322(82)=abb322(82)-abb322(86)
      abb322(82)=abb322(82)*abb322(42)
      abb322(85)=3.0_ki*abb322(85)
      abb322(16)=abb322(85)*abb322(16)
      abb322(16)=-abb322(16)+2.0_ki*abb322(20)
      abb322(16)=abb322(16)*abb322(10)
      abb322(16)=abb322(16)+abb322(161)
      abb322(20)=abb322(16)*abb322(70)
      abb322(86)=abb322(144)*spak2l6
      abb322(132)=abb322(86)-abb322(130)
      abb322(133)=spal6k7*abb322(132)
      abb322(73)=spak2l6*abb322(73)
      abb322(73)=abb322(73)+abb322(133)
      abb322(73)=spbk7l6*abb322(73)
      abb322(17)=abb322(73)+abb322(20)+abb322(82)+abb322(17)
      abb322(17)=4.0_ki*abb322(17)
      abb322(20)=-2.0_ki*abb322(130)-abb322(86)
      abb322(20)=8.0_ki*abb322(20)
      abb322(73)=8.0_ki*abb322(132)
      abb322(82)=8.0_ki*abb322(156)
      abb322(86)=4.0_ki*abb322(86)
      abb322(92)=abb322(92)*abb322(6)
      abb322(130)=abb322(92)*spbk4k3
      abb322(132)=4.0_ki*abb322(42)
      abb322(133)=abb322(130)*abb322(132)
      abb322(138)=abb322(70)*abb322(48)
      abb322(133)=abb322(138)+abb322(133)
      abb322(133)=4.0_ki*abb322(133)
      abb322(15)=abb322(15)*abb322(6)
      abb322(138)=4.0_ki*spbk7l6
      abb322(70)=abb322(70)*abb322(15)*abb322(138)
      abb322(63)=-abb322(81)-abb322(63)
      abb322(63)=spal5l6*abb322(63)
      abb322(38)=spal5k7*abb322(38)
      abb322(81)=spbl6k3*spal5l6
      abb322(139)=abb322(26)*abb322(81)
      abb322(29)=abb322(139)+abb322(63)+abb322(38)+abb322(40)+abb322(29)
      abb322(29)=spbl5k2*abb322(29)
      abb322(38)=abb322(44)*spbk3k1
      abb322(40)=abb322(52)*spak2k4
      abb322(38)=abb322(38)-abb322(40)
      abb322(38)=abb322(38)*spal5l6
      abb322(40)=spak1l6*abb322(38)
      abb322(44)=spak2l6*abb322(60)
      abb322(40)=abb322(44)+abb322(40)
      abb322(40)=spbl6k2*abb322(40)
      abb322(44)=abb322(78)*spal5l6
      abb322(52)=spbl6k2*abb322(44)
      abb322(63)=spal5k7*spbk4k3*abb322(46)
      abb322(52)=abb322(63)+abb322(52)
      abb322(52)=spak4l6*abb322(52)
      abb322(29)=abb322(52)+abb322(40)+abb322(29)
      abb322(40)=abb322(46)+abb322(49)
      abb322(52)=spak4l5*spbk4k3
      abb322(21)=abb322(52)+abb322(21)
      abb322(40)=-abb322(40)*abb322(21)
      abb322(52)=abb322(54)+abb322(53)
      abb322(52)=abb322(52)*abb322(56)
      abb322(53)=-abb322(90)-abb322(89)
      abb322(53)=abb322(53)*abb322(169)
      abb322(54)=-spbk7k3*abb322(105)
      abb322(54)=abb322(54)-abb322(58)
      abb322(54)=abb322(54)*abb322(142)
      abb322(40)=abb322(54)+abb322(53)+abb322(52)+abb322(40)
      abb322(40)=spal6k7*abb322(40)
      abb322(52)=spbk7k3*abb322(114)
      abb322(53)=-abb322(10)*spbk7k2*abb322(128)
      abb322(46)=spbk3k1*abb322(46)
      abb322(46)=abb322(52)+abb322(53)+abb322(46)
      abb322(46)=abb322(68)*abb322(46)
      abb322(52)=abb322(10)*abb322(55)*abb322(37)*abb322(118)
      abb322(53)=abb322(117)*abb322(108)
      abb322(54)=2.0_ki*abb322(81)
      abb322(55)=abb322(89)*abb322(54)
      abb322(46)=abb322(55)+2.0_ki*abb322(52)-abb322(77)+abb322(53)+abb322(46)
      abb322(46)=spak1l6*abb322(46)
      abb322(27)=-abb322(32)*abb322(27)
      abb322(27)=abb322(27)-abb322(134)
      abb322(27)=abb322(68)*abb322(27)
      abb322(27)=-3.0_ki*abb322(80)+abb322(74)+abb322(27)
      abb322(27)=spak1k7*abb322(27)
      abb322(32)=spak1k7*spak2l6*abb322(36)*abb322(120)
      abb322(36)=abb322(61)*abb322(69)
      abb322(52)=-spal5k7*spak1k2*abb322(80)
      abb322(32)=abb322(32)+abb322(36)+abb322(52)
      abb322(32)=abb322(32)*abb322(76)
      abb322(36)=-spal5k7*abb322(79)
      abb322(52)=-spal6k7*abb322(93)
      abb322(49)=-spal5l6*abb322(49)
      abb322(36)=abb322(49)+abb322(36)+abb322(52)
      abb322(36)=abb322(146)*spbk4k3*abb322(36)
      abb322(49)=-abb322(60)*abb322(95)
      abb322(52)=abb322(117)*mB
      abb322(52)=-abb322(35)+abb322(52)
      abb322(19)=spak1l5*abb322(19)*abb322(52)
      abb322(52)=spal5l6*abb322(121)*abb322(142)
      abb322(53)=abb322(105)*spak1k7
      abb322(55)=abb322(129)*abb322(104)
      abb322(58)=abb322(55)*spbl6k2
      abb322(53)=abb322(53)+abb322(58)
      abb322(58)=-spak1l5*abb322(89)
      abb322(58)=abb322(58)-abb322(53)
      abb322(58)=spal5l6*abb322(58)
      abb322(60)=spak1l6*spal5k7*abb322(105)
      abb322(58)=abb322(60)+abb322(58)
      abb322(58)=abb322(58)*abb322(131)
      abb322(60)=-spbk7l5*abb322(68)*abb322(137)
      abb322(19)=abb322(58)+abb322(36)+abb322(52)+abb322(60)+abb322(32)+abb322(&
      &19)+abb322(27)+abb322(49)+abb322(46)+abb322(40)+2.0_ki*abb322(29)
      abb322(19)=4.0_ki*abb322(19)
      abb322(27)=abb322(127)+abb322(137)
      abb322(29)=-16.0_ki*abb322(27)
      abb322(32)=-16.0_ki*abb322(137)
      abb322(36)=abb322(137)-abb322(127)
      abb322(36)=8.0_ki*abb322(36)
      abb322(40)=2.0_ki*abb322(157)
      abb322(46)=-abb322(9)*abb322(40)
      abb322(46)=abb322(57)+abb322(46)
      abb322(46)=spak1l6*abb322(46)
      abb322(49)=abb322(157)*abb322(8)
      abb322(52)=spak1l5*abb322(49)
      abb322(46)=-3.0_ki*abb322(52)+abb322(46)
      abb322(46)=8.0_ki*abb322(46)
      abb322(27)=-4.0_ki*abb322(27)
      abb322(52)=8.0_ki*abb322(108)
      abb322(52)=spak1k7*abb322(52)
      abb322(23)=-8.0_ki*abb322(28)*abb322(23)
      abb322(28)=spak1l5*abb322(90)
      abb322(28)=abb322(28)-abb322(53)
      abb322(28)=8.0_ki*abb322(28)
      abb322(53)=abb322(97)*mB
      abb322(57)=abb322(92)*spbk3k1
      abb322(53)=abb322(53)-abb322(57)
      abb322(57)=spak1l6*abb322(53)
      abb322(58)=-spak4l6*abb322(130)
      abb322(57)=abb322(58)+abb322(57)
      abb322(57)=spbl6k2*abb322(57)
      abb322(58)=spak1k7*abb322(88)
      abb322(60)=-spbl6k3*abb322(26)
      abb322(57)=abb322(60)-abb322(154)+abb322(136)+abb322(58)-abb322(135)+abb3&
      &22(57)
      abb322(57)=8.0_ki*abb322(57)
      abb322(58)=spak1k7*abb322(99)
      abb322(60)=spak1l6*abb322(90)
      abb322(58)=abb322(58)+abb322(60)
      abb322(58)=8.0_ki*abb322(58)
      abb322(60)=spak1k7*abb322(33)
      abb322(26)=abb322(26)-abb322(55)
      abb322(26)=spbl5k3*abb322(26)
      abb322(21)=abb322(15)*abb322(21)
      abb322(30)=-mB*abb322(30)*abb322(56)
      abb322(21)=abb322(30)+abb322(21)
      abb322(21)=spbl5k2*abb322(21)
      abb322(30)=spak1k2*abb322(49)
      abb322(49)=spak4k7*abb322(72)
      abb322(21)=abb322(21)+abb322(26)+abb322(49)+abb322(60)+abb322(30)
      abb322(21)=8.0_ki*abb322(21)
      abb322(26)=spal5k7*abb322(72)
      abb322(30)=-spal6k7*abb322(144)
      abb322(26)=-3.0_ki*abb322(26)+abb322(30)
      abb322(26)=2.0_ki*abb322(26)+3.0_ki*abb322(44)
      abb322(26)=4.0_ki*abb322(26)
      abb322(30)=-8.0_ki*abb322(130)
      abb322(44)=-8.0_ki*spbk4k3*abb322(15)
      abb322(49)=abb322(9)*abb322(155)*abb322(98)
      abb322(55)=abb322(66)*abb322(111)
      abb322(55)=-abb322(49)-abb322(55)+3.0_ki*abb322(112)
      abb322(55)=abb322(55)*abb322(42)
      abb322(47)=-abb322(87)*abb322(25)*abb322(47)
      abb322(47)=abb322(47)+abb322(125)
      abb322(47)=abb322(10)*abb322(47)
      abb322(35)=abb322(25)*abb322(35)
      abb322(56)=abb322(87)*abb322(35)
      abb322(47)=abb322(56)+abb322(47)
      abb322(47)=spak2l5*abb322(47)
      abb322(25)=-abb322(25)*abb322(75)
      abb322(25)=abb322(25)+abb322(106)
      abb322(25)=abb322(10)*abb322(25)
      abb322(35)=abb322(102)*abb322(35)
      abb322(25)=abb322(35)+abb322(25)
      abb322(25)=spak2l6*abb322(25)
      abb322(35)=-spal6k7*abb322(147)
      abb322(56)=abb322(68)*spak2l6
      abb322(60)=abb322(99)*abb322(56)
      abb322(35)=abb322(60)+abb322(35)
      abb322(35)=spbk7l6*abb322(35)
      abb322(60)=spal5l6*abb322(114)*abb322(140)
      abb322(25)=abb322(60)+abb322(35)+abb322(47)+abb322(25)+abb322(55)
      abb322(25)=4.0_ki*abb322(25)
      abb322(35)=abb322(101)+abb322(126)
      abb322(47)=-8.0_ki*abb322(35)
      abb322(55)=8.0_ki*abb322(126)
      abb322(49)=abb322(112)+abb322(49)
      abb322(49)=8.0_ki*abb322(49)
      abb322(35)=4.0_ki*abb322(35)
      abb322(60)=abb322(104)*mB
      abb322(61)=abb322(60)*abb322(132)
      abb322(63)=spak2l5*abb322(90)
      abb322(61)=abb322(63)+abb322(61)
      abb322(61)=4.0_ki*abb322(61)
      abb322(63)=abb322(138)*spak2l5
      abb322(68)=abb322(168)*abb322(63)
      abb322(69)=-spal5k7*abb322(99)
      abb322(72)=-spal6k7*abb322(105)
      abb322(69)=abb322(69)+abb322(72)
      abb322(72)=-abb322(90)+3.0_ki*abb322(89)
      abb322(72)=spal5l6*abb322(72)
      abb322(69)=4.0_ki*abb322(69)+abb322(72)
      abb322(69)=4.0_ki*abb322(69)
      abb322(60)=-8.0_ki*abb322(60)
      abb322(72)=-8.0_ki*abb322(168)
      abb322(74)=abb322(155)*abb322(128)
      abb322(45)=abb322(45)*spbk3k1
      abb322(45)=abb322(74)-abb322(45)
      abb322(45)=abb322(45)*abb322(37)
      abb322(12)=abb322(12)*spbk3k1
      abb322(66)=abb322(87)*abb322(66)
      abb322(62)=-abb322(66)+3.0_ki*abb322(62)
      abb322(62)=spak2k4*abb322(100)*abb322(62)
      abb322(12)=-abb322(45)+abb322(62)-abb322(12)
      abb322(12)=-abb322(12)*abb322(42)
      abb322(42)=abb322(165)*abb322(85)
      abb322(42)=abb322(42)-2.0_ki*abb322(164)
      abb322(42)=abb322(10)*abb322(42)
      abb322(42)=-abb322(150)+abb322(42)
      abb322(42)=spak2k4*abb322(42)
      abb322(16)=spbk3k1*abb322(16)
      abb322(45)=-spbl5k3*abb322(124)
      abb322(16)=abb322(45)+abb322(42)+abb322(16)
      abb322(16)=spak2l5*abb322(16)
      abb322(24)=-spak2l6*abb322(24)
      abb322(42)=abb322(88)*spak2l6
      abb322(45)=abb322(42)+abb322(107)
      abb322(62)=-spal6k7*abb322(45)
      abb322(56)=abb322(33)*abb322(56)
      abb322(56)=abb322(56)+abb322(62)
      abb322(56)=spbk7l6*abb322(56)
      abb322(62)=abb322(140)*abb322(38)
      abb322(66)=abb322(117)*abb322(109)
      abb322(12)=abb322(62)+abb322(56)+abb322(66)+abb322(24)+abb322(12)+abb322(&
      &16)
      abb322(12)=4.0_ki*abb322(12)
      abb322(16)=-abb322(109)-2.0_ki*abb322(107)+abb322(42)
      abb322(16)=8.0_ki*abb322(16)
      abb322(24)=-abb322(109)-abb322(45)
      abb322(24)=8.0_ki*abb322(24)
      abb322(37)=-abb322(59)*abb322(116)*abb322(37)
      abb322(37)=abb322(37)+abb322(67)
      abb322(37)=8.0_ki*abb322(37)
      abb322(42)=abb322(42)+abb322(109)
      abb322(42)=-4.0_ki*abb322(42)
      abb322(45)=-abb322(53)*abb322(132)
      abb322(56)=-spak2k4*abb322(64)
      abb322(48)=spbk3k1*abb322(48)
      abb322(48)=abb322(56)+abb322(48)
      abb322(48)=spak2l5*abb322(48)
      abb322(45)=abb322(48)+abb322(45)
      abb322(45)=4.0_ki*abb322(45)
      abb322(31)=abb322(31)*mB
      abb322(15)=abb322(15)*spbk3k1
      abb322(15)=abb322(31)-abb322(15)
      abb322(31)=-abb322(15)*abb322(63)
      abb322(33)=-abb322(113)-3.0_ki*abb322(33)
      abb322(33)=spal5k7*abb322(33)
      abb322(48)=abb322(122)+abb322(88)
      abb322(48)=spal6k7*abb322(48)
      abb322(33)=-abb322(39)+abb322(48)+abb322(40)+abb322(33)
      abb322(39)=-abb322(168)*abb322(54)
      abb322(33)=abb322(39)+2.0_ki*abb322(33)+3.0_ki*abb322(38)
      abb322(33)=4.0_ki*abb322(33)
      abb322(38)=8.0_ki*abb322(53)
      abb322(15)=8.0_ki*abb322(15)
      R2d322=0.0_ki
      rat2 = rat2 + R2d322
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='322' value='", &
          & R2d322, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd322h0
