module     p0_dbaru_epnebbbarg_abbrevd320h5
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh5
   implicit none
   private
   complex(ki), dimension(139), public :: abb320
   complex(ki), public :: R2d320
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
      abb320(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb320(2)=NC**(-1)
      abb320(3)=sqrt2**(-1)
      abb320(4)=es234**(-1)
      abb320(5)=es567**(-1)
      abb320(6)=spak2l5**(-1)
      abb320(7)=spbl5k2**(-1)
      abb320(8)=spbk7k2**(-1)
      abb320(9)=spak2l6**(-1)
      abb320(10)=spbl6k2**(-1)
      abb320(11)=sqrt(mB**2)
      abb320(12)=1.0_ki/(es34+es567-es12-es234)
      abb320(13)=c3*abb320(2)
      abb320(14)=abb320(13)-c4
      abb320(15)=-mB*abb320(14)
      abb320(16)=c2*abb320(2)**2
      abb320(17)=abb320(16)*mB
      abb320(17)=abb320(15)+abb320(17)
      abb320(18)=TR*gW
      abb320(18)=abb320(18)**2*i_*CVDU*abb320(5)*abb320(3)
      abb320(19)=abb320(8)*abb320(1)
      abb320(20)=abb320(18)*abb320(19)*abb320(4)
      abb320(21)=abb320(20)*spbk3k2
      abb320(22)=spbl5k2**2
      abb320(23)=abb320(22)*abb320(21)
      abb320(24)=abb320(17)*abb320(23)
      abb320(25)=abb320(14)-abb320(16)
      abb320(23)=abb320(25)*abb320(23)
      abb320(26)=-abb320(11)*abb320(23)
      abb320(26)=abb320(26)-abb320(24)
      abb320(27)=spak2k4*spak1k7
      abb320(26)=abb320(26)*abb320(27)
      abb320(28)=spak1k4*abb320(12)
      abb320(29)=abb320(18)*abb320(28)
      abb320(30)=abb320(29)*abb320(19)
      abb320(31)=abb320(22)*abb320(30)
      abb320(32)=-abb320(31)*abb320(25)
      abb320(33)=abb320(32)*abb320(11)
      abb320(31)=-abb320(31)*abb320(17)
      abb320(33)=abb320(33)+abb320(31)
      abb320(34)=spbk3k1*spak1k7
      abb320(35)=-abb320(33)*abb320(34)
      abb320(26)=abb320(26)+abb320(35)
      abb320(26)=abb320(11)*abb320(26)
      abb320(35)=c4*spbl5k2
      abb320(13)=abb320(13)*spbl5k2
      abb320(36)=abb320(16)*spbl5k2
      abb320(37)=abb320(36)+abb320(35)-abb320(13)
      abb320(38)=abb320(4)*abb320(1)
      abb320(39)=abb320(38)*spbk3k2
      abb320(40)=abb320(39)*abb320(18)
      abb320(41)=abb320(27)*abb320(37)*abb320(40)
      abb320(29)=abb320(29)*abb320(1)
      abb320(42)=abb320(29)*abb320(37)
      abb320(43)=-abb320(42)*abb320(34)
      abb320(43)=abb320(41)+abb320(43)
      abb320(43)=spal6k7*abb320(43)
      abb320(13)=-abb320(35)+abb320(13)-abb320(36)
      abb320(35)=-abb320(30)*abb320(13)
      abb320(36)=spak1l6*spal6k7
      abb320(44)=abb320(36)*spbk3k1
      abb320(45)=abb320(44)*abb320(35)
      abb320(46)=-abb320(37)*abb320(21)
      abb320(47)=abb320(36)*spak2k4
      abb320(48)=-abb320(46)*abb320(47)
      abb320(45)=abb320(45)-abb320(48)
      abb320(45)=abb320(45)*spbl6k2
      abb320(43)=-abb320(45)+abb320(43)
      abb320(43)=spbl6l5*abb320(43)
      abb320(26)=abb320(43)+abb320(26)
      abb320(26)=spal5l6*abb320(26)
      abb320(22)=-abb320(22)*abb320(25)
      abb320(43)=abb320(10)*mB
      abb320(48)=abb320(40)*abb320(43)
      abb320(49)=spak1k7*abb320(11)
      abb320(50)=abb320(49)*abb320(48)*abb320(22)
      abb320(51)=spak1l6*abb320(11)
      abb320(24)=abb320(24)*abb320(51)
      abb320(24)=abb320(50)+abb320(24)
      abb320(24)=spak2k4*abb320(24)
      abb320(50)=abb320(29)*abb320(43)
      abb320(52)=abb320(22)*abb320(50)
      abb320(53)=-abb320(52)*abb320(49)
      abb320(54)=abb320(31)*abb320(51)
      abb320(53)=abb320(53)+abb320(54)
      abb320(53)=spbk3k1*abb320(53)
      abb320(54)=abb320(37)*abb320(49)
      abb320(55)=spak3k4*abb320(40)
      abb320(56)=abb320(55)*abb320(43)
      abb320(57)=-abb320(56)*abb320(54)
      abb320(20)=abb320(20)*spak3k4
      abb320(58)=abb320(20)*spbk3k2
      abb320(13)=-abb320(58)*abb320(13)
      abb320(59)=mB*abb320(13)
      abb320(60)=-abb320(59)*abb320(51)
      abb320(57)=abb320(57)+abb320(60)
      abb320(57)=spbl5k3*abb320(57)
      abb320(60)=spbk4k3*abb320(11)
      abb320(31)=spak4l6*abb320(31)*abb320(60)
      abb320(24)=abb320(31)+abb320(57)+abb320(24)+abb320(53)
      abb320(24)=spal5k7*abb320(24)
      abb320(31)=-abb320(33)*abb320(60)
      abb320(33)=spbk4k3*spal6k7
      abb320(53)=-spbl6l5*abb320(42)*abb320(33)
      abb320(31)=abb320(31)+abb320(53)
      abb320(31)=spal5l6*abb320(31)
      abb320(19)=abb320(28)*abb320(19)
      abb320(53)=mB**2
      abb320(57)=abb320(53)*abb320(18)
      abb320(61)=abb320(19)*abb320(57)
      abb320(62)=abb320(61)*abb320(10)
      abb320(63)=abb320(62)*abb320(22)
      abb320(64)=abb320(63)*spbk4k3
      abb320(65)=spal5l6*abb320(9)
      abb320(66)=abb320(64)*abb320(65)
      abb320(67)=es71+es12-es712
      abb320(68)=abb320(66)*abb320(67)
      abb320(18)=mB*abb320(18)*abb320(6)
      abb320(69)=abb320(25)*abb320(18)
      abb320(28)=abb320(28)*abb320(1)
      abb320(70)=abb320(11)*spal6k7
      abb320(71)=-abb320(70)*abb320(28)*abb320(69)
      abb320(72)=spbl6k2*spak2l6
      abb320(73)=abb320(72)*spbk4k3
      abb320(74)=-abb320(73)*abb320(71)
      abb320(52)=-spal5k7*abb320(52)*abb320(60)
      abb320(31)=abb320(52)+abb320(74)+abb320(31)+abb320(68)
      abb320(31)=spak4k7*abb320(31)
      abb320(52)=abb320(53)*abb320(10)
      abb320(68)=abb320(52)*abb320(58)
      abb320(74)=-abb320(68)*abb320(37)
      abb320(75)=spbl5k3*spak1k7
      abb320(76)=abb320(75)*abb320(74)
      abb320(77)=abb320(63)*abb320(34)
      abb320(78)=-abb320(52)*abb320(23)
      abb320(79)=abb320(78)*abb320(27)
      abb320(76)=-abb320(76)+abb320(77)-abb320(79)
      abb320(76)=abb320(65)*abb320(76)
      abb320(77)=abb320(20)*abb320(6)
      abb320(79)=spbk3k2**2
      abb320(80)=abb320(77)*abb320(79)
      abb320(81)=abb320(80)*abb320(52)
      abb320(82)=-abb320(81)*abb320(25)
      abb320(83)=abb320(82)*abb320(11)
      abb320(84)=-abb320(80)*abb320(25)
      abb320(85)=mB**3
      abb320(86)=abb320(85)*abb320(10)
      abb320(87)=abb320(86)*abb320(84)
      abb320(83)=-abb320(83)+2.0_ki*abb320(87)
      abb320(83)=abb320(83)*abb320(11)
      abb320(88)=mB**4
      abb320(89)=abb320(88)*abb320(10)
      abb320(90)=abb320(89)*abb320(84)
      abb320(91)=abb320(83)-abb320(90)
      abb320(91)=abb320(91)*spak1k7
      abb320(91)=abb320(91)+abb320(76)
      abb320(91)=abb320(91)*abb320(67)
      abb320(92)=-abb320(46)*abb320(70)
      abb320(93)=-abb320(46)*mB
      abb320(94)=abb320(93)*spal6k7
      abb320(95)=-abb320(94)+abb320(92)
      abb320(96)=spak2k4*spak1l6
      abb320(95)=abb320(95)*abb320(96)
      abb320(97)=abb320(35)*abb320(70)
      abb320(98)=mB*abb320(35)
      abb320(99)=abb320(98)*spal6k7
      abb320(100)=abb320(97)-abb320(99)
      abb320(101)=spbk3k1*spak1l6
      abb320(102)=-abb320(100)*abb320(101)
      abb320(95)=abb320(95)+abb320(102)
      abb320(95)=abb320(11)*abb320(95)
      abb320(102)=abb320(21)*abb320(6)
      abb320(103)=-abb320(102)*abb320(17)
      abb320(104)=abb320(103)*abb320(70)
      abb320(105)=-abb320(96)*abb320(104)
      abb320(18)=abb320(18)*abb320(19)
      abb320(19)=-abb320(18)*abb320(25)
      abb320(106)=abb320(19)*abb320(70)
      abb320(107)=-abb320(101)*abb320(106)
      abb320(105)=abb320(105)+abb320(107)
      abb320(105)=abb320(105)*abb320(72)
      abb320(107)=-abb320(34)*abb320(71)
      abb320(69)=-abb320(69)*abb320(39)
      abb320(108)=abb320(70)*abb320(69)
      abb320(109)=abb320(27)*abb320(108)
      abb320(107)=abb320(109)+abb320(107)
      abb320(107)=spak2l6*abb320(107)
      abb320(95)=abb320(105)+abb320(107)+abb320(95)
      abb320(95)=spbl6k2*abb320(95)
      abb320(105)=mB*abb320(84)
      abb320(107)=abb320(105)*abb320(11)
      abb320(109)=abb320(53)*abb320(84)
      abb320(107)=abb320(107)+abb320(109)
      abb320(110)=-abb320(11)*abb320(107)
      abb320(111)=abb320(84)*abb320(85)
      abb320(110)=2.0_ki*abb320(111)+abb320(110)
      abb320(110)=abb320(11)*abb320(110)
      abb320(112)=-abb320(88)*abb320(84)
      abb320(110)=abb320(110)+abb320(112)
      abb320(110)=spak1l6*abb320(110)
      abb320(112)=abb320(23)*abb320(96)
      abb320(113)=abb320(53)*abb320(112)
      abb320(22)=abb320(22)*abb320(61)
      abb320(114)=abb320(22)*abb320(101)
      abb320(113)=abb320(113)+abb320(114)
      abb320(113)=abb320(113)*abb320(65)
      abb320(20)=abb320(79)*abb320(20)
      abb320(114)=abb320(37)*abb320(20)
      abb320(86)=-abb320(9)*abb320(51)*abb320(86)*abb320(114)
      abb320(86)=abb320(113)+abb320(110)+abb320(86)
      abb320(86)=spak2k7*abb320(86)
      abb320(110)=-abb320(11)*abb320(13)
      abb320(110)=abb320(110)+abb320(59)
      abb320(110)=abb320(110)*abb320(49)
      abb320(113)=abb320(58)*abb320(25)
      abb320(115)=abb320(36)*spbl6k2
      abb320(116)=abb320(115)*abb320(113)
      abb320(55)=-abb320(55)*abb320(25)
      abb320(117)=spak1k7*spal6k7
      abb320(118)=abb320(55)*abb320(117)
      abb320(116)=abb320(116)-abb320(118)
      abb320(118)=spbl6l5*abb320(116)
      abb320(110)=abb320(110)+abb320(118)
      abb320(110)=spal5l6*abb320(110)
      abb320(118)=spak2k7*spak1l6
      abb320(119)=abb320(65)*abb320(118)*abb320(53)*abb320(13)
      abb320(110)=abb320(110)+abb320(119)
      abb320(110)=spbl5k3*abb320(110)
      abb320(100)=-abb320(100)*abb320(60)
      abb320(119)=-abb320(73)*abb320(106)
      abb320(100)=abb320(100)+abb320(119)
      abb320(100)=spbl6k2*abb320(100)
      abb320(119)=abb320(33)*spbl6k2
      abb320(120)=abb320(119)*abb320(35)
      abb320(121)=spal5l6*spbl6l5
      abb320(122)=-abb320(121)*abb320(120)
      abb320(22)=spak2k7*abb320(22)*abb320(65)*spbk4k3
      abb320(22)=abb320(22)+abb320(100)+abb320(122)
      abb320(22)=spak4l6*abb320(22)
      abb320(65)=abb320(53)*abb320(102)
      abb320(100)=abb320(65)*abb320(37)
      abb320(122)=spal6k7*abb320(100)
      abb320(123)=abb320(37)*mB
      abb320(102)=abb320(102)*abb320(123)
      abb320(124)=-abb320(102)*abb320(70)
      abb320(122)=abb320(122)+abb320(124)
      abb320(122)=spak2k4*abb320(122)
      abb320(124)=abb320(61)*abb320(6)
      abb320(125)=-abb320(124)*abb320(37)
      abb320(126)=abb320(125)*spal6k7
      abb320(18)=abb320(18)*abb320(37)
      abb320(127)=abb320(18)*abb320(70)
      abb320(126)=abb320(126)+abb320(127)
      abb320(127)=spbk3k1*abb320(126)
      abb320(122)=abb320(122)+abb320(127)
      abb320(122)=abb320(122)*abb320(72)
      abb320(80)=abb320(37)*abb320(80)
      abb320(89)=abb320(89)*abb320(80)
      abb320(81)=abb320(37)*abb320(81)
      abb320(127)=abb320(11)**2
      abb320(128)=-abb320(81)*abb320(127)
      abb320(89)=abb320(128)+abb320(89)
      abb320(89)=spak2k7*abb320(89)
      abb320(128)=spbl6l5*spak2l6
      abb320(129)=-abb320(105)*abb320(70)*abb320(128)
      abb320(89)=abb320(89)+abb320(122)+abb320(129)
      abb320(89)=spak1l5*abb320(89)
      abb320(59)=abb320(59)*spal6k7
      abb320(122)=abb320(13)*abb320(70)
      abb320(129)=abb320(59)-abb320(122)
      abb320(129)=abb320(129)*abb320(51)
      abb320(130)=abb320(77)*spbk3k2
      abb320(131)=abb320(130)*abb320(53)
      abb320(132)=-spal6k7*abb320(131)*abb320(37)
      abb320(123)=abb320(70)*abb320(130)*abb320(123)
      abb320(123)=abb320(132)+abb320(123)
      abb320(123)=spak1l5*spak2l6*abb320(123)
      abb320(15)=-abb320(130)*abb320(15)
      abb320(16)=spbk3k2*abb320(77)*abb320(16)
      abb320(77)=mB*abb320(16)
      abb320(15)=abb320(15)-abb320(77)
      abb320(77)=spak1l6*abb320(15)*abb320(72)
      abb320(69)=-spak2l6*spak1k7*spak3k4*abb320(69)
      abb320(69)=abb320(77)+abb320(69)
      abb320(69)=abb320(70)*abb320(69)
      abb320(69)=abb320(123)+abb320(129)+abb320(69)
      abb320(69)=spbl6k3*abb320(69)
      abb320(77)=-abb320(25)*abb320(117)
      abb320(117)=spak3k4*abb320(6)
      abb320(38)=abb320(57)*abb320(117)*abb320(38)*abb320(79)*abb320(77)
      abb320(79)=spak2l6*abb320(38)
      abb320(123)=abb320(109)*abb320(36)*abb320(72)
      abb320(79)=abb320(79)+abb320(123)
      abb320(79)=spbl6l5*abb320(79)
      abb320(123)=-abb320(20)*abb320(25)
      abb320(129)=abb320(123)*abb320(6)**2
      abb320(132)=abb320(85)*abb320(129)
      abb320(133)=abb320(70)*spak1k2
      abb320(134)=-abb320(132)*abb320(72)*abb320(133)
      abb320(79)=abb320(79)+abb320(134)
      abb320(79)=abb320(7)*abb320(79)
      abb320(134)=abb320(43)*abb320(114)
      abb320(135)=spak1k7*abb320(134)
      abb320(136)=spak1k2*spal6k7*abb320(105)
      abb320(135)=abb320(136)+abb320(135)
      abb320(135)=abb320(135)*abb320(11)**3
      abb320(136)=2.0_ki*abb320(11)
      abb320(137)=abb320(109)*abb320(136)
      abb320(111)=abb320(137)-abb320(111)
      abb320(111)=spak2l6*abb320(111)*abb320(49)
      abb320(126)=spak4l5*abb320(126)*abb320(73)
      abb320(137)=abb320(36)*spbl6l5
      abb320(138)=abb320(137)*abb320(123)
      abb320(139)=abb320(127)*abb320(138)
      abb320(22)=abb320(126)+abb320(79)+abb320(69)+abb320(31)+abb320(24)+abb320&
      &(89)+abb320(22)+abb320(110)+abb320(86)+abb320(26)+abb320(139)+abb320(95)&
      &+abb320(111)+abb320(135)+abb320(91)
      abb320(22)=8.0_ki*abb320(22)
      abb320(24)=abb320(133)*abb320(105)
      abb320(26)=abb320(134)*abb320(49)
      abb320(24)=abb320(138)+abb320(24)+abb320(26)
      abb320(26)=abb320(105)*abb320(51)
      abb320(20)=abb320(52)*abb320(20)
      abb320(31)=abb320(9)*spak1l6
      abb320(69)=abb320(31)*abb320(37)*abb320(20)
      abb320(26)=abb320(26)+abb320(69)
      abb320(26)=abb320(26)*spak2k7
      abb320(69)=abb320(109)*spak1k7
      abb320(79)=abb320(69)*spak2l6
      abb320(26)=abb320(26)-abb320(79)
      abb320(86)=-abb320(24)+abb320(26)
      abb320(86)=16.0_ki*abb320(86)
      abb320(89)=spak1l5*spak2k7
      abb320(81)=abb320(81)*abb320(89)
      abb320(91)=abb320(82)*spak1k7
      abb320(95)=abb320(67)*abb320(91)
      abb320(24)=abb320(81)+abb320(95)-abb320(24)
      abb320(81)=spak4l6*spbk4k3
      abb320(95)=abb320(81)+abb320(101)
      abb320(95)=abb320(32)*abb320(95)
      abb320(105)=spbl5k3*spak1l6
      abb320(110)=abb320(13)*abb320(105)
      abb320(95)=abb320(110)+abb320(112)+abb320(95)
      abb320(95)=spal5k7*abb320(95)
      abb320(26)=abb320(95)+abb320(24)+abb320(26)
      abb320(26)=16.0_ki*abb320(26)
      abb320(95)=abb320(120)*spak4l6
      abb320(45)=abb320(95)+abb320(45)
      abb320(95)=spbl5k3*abb320(116)
      abb320(110)=-spal6k7*abb320(34)
      abb320(111)=-spak4k7*abb320(33)
      abb320(110)=abb320(111)+abb320(110)
      abb320(42)=abb320(42)*abb320(110)
      abb320(41)=spal6k7*abb320(41)
      abb320(41)=abb320(95)+abb320(41)+abb320(42)-abb320(45)
      abb320(41)=16.0_ki*abb320(41)
      abb320(42)=abb320(61)*abb320(37)
      abb320(95)=abb320(42)*abb320(44)
      abb320(110)=spak2k7*abb320(51)
      abb320(110)=-abb320(133)+abb320(110)
      abb320(87)=abb320(87)*abb320(110)
      abb320(110)=abb320(10)**2
      abb320(85)=abb320(110)*abb320(85)*abb320(114)
      abb320(111)=-abb320(85)*abb320(49)
      abb320(112)=-abb320(46)*abb320(53)
      abb320(114)=-abb320(112)*abb320(47)
      abb320(20)=-abb320(20)*abb320(25)
      abb320(116)=-abb320(20)*abb320(137)
      abb320(110)=abb320(110)*abb320(88)
      abb320(80)=abb320(89)*abb320(110)*abb320(80)
      abb320(80)=abb320(80)+abb320(116)+abb320(87)+abb320(95)+abb320(111)+abb32&
      &0(114)
      abb320(80)=abb320(9)*abb320(80)
      abb320(39)=abb320(39)*abb320(57)
      abb320(87)=-abb320(25)*abb320(39)
      abb320(95)=abb320(27)*abb320(6)*abb320(87)
      abb320(28)=abb320(25)*abb320(57)*abb320(28)
      abb320(57)=-abb320(6)*abb320(28)
      abb320(111)=abb320(57)*abb320(34)
      abb320(95)=abb320(95)-abb320(111)
      abb320(88)=abb320(88)*abb320(129)
      abb320(111)=abb320(88)*spak1k2
      abb320(114)=-abb320(7)*abb320(111)
      abb320(114)=abb320(114)+abb320(95)
      abb320(114)=spal6k7*abb320(114)
      abb320(65)=-abb320(65)*abb320(25)
      abb320(116)=abb320(65)*abb320(47)
      abb320(120)=-abb320(124)*abb320(25)
      abb320(124)=-abb320(120)*abb320(44)
      abb320(116)=abb320(116)+abb320(124)
      abb320(116)=spbl6k2*abb320(116)
      abb320(124)=abb320(9)*abb320(42)*abb320(33)
      abb320(126)=-abb320(120)*abb320(119)
      abb320(124)=abb320(124)+abb320(126)
      abb320(124)=spak4l6*abb320(124)
      abb320(126)=-abb320(57)*abb320(33)
      abb320(66)=abb320(126)+abb320(66)
      abb320(66)=spak4k7*abb320(66)
      abb320(90)=2.0_ki*abb320(90)
      abb320(126)=-spak1k7*abb320(90)
      abb320(129)=abb320(74)*abb320(9)
      abb320(134)=abb320(36)*spbl6k3
      abb320(135)=-abb320(129)*abb320(134)
      abb320(66)=abb320(135)+abb320(66)+abb320(124)+abb320(116)+abb320(126)+abb&
      &320(80)+abb320(114)+abb320(76)
      abb320(66)=16.0_ki*abb320(66)
      abb320(76)=spak4k7*spbk4k3
      abb320(80)=abb320(76)+abb320(34)
      abb320(114)=abb320(32)*abb320(80)
      abb320(116)=abb320(13)*abb320(75)
      abb320(124)=-abb320(23)*abb320(27)
      abb320(114)=abb320(116)-abb320(124)+abb320(114)
      abb320(116)=spal5l6*abb320(114)
      abb320(107)=abb320(107)*abb320(118)
      abb320(124)=abb320(13)*abb320(134)
      abb320(24)=abb320(124)+abb320(107)-2.0_ki*abb320(79)+abb320(116)+abb320(2&
      &4)+abb320(45)
      abb320(24)=8.0_ki*abb320(24)
      abb320(45)=spak2k4*abb320(102)
      abb320(102)=-spbk3k1*abb320(18)
      abb320(45)=abb320(45)+abb320(102)
      abb320(45)=abb320(11)*abb320(45)
      abb320(78)=spak2k4*abb320(78)
      abb320(63)=-spbk3k1*abb320(63)
      abb320(63)=abb320(78)+abb320(63)
      abb320(63)=abb320(9)*abb320(63)
      abb320(45)=abb320(63)+abb320(45)
      abb320(45)=spal5l6*abb320(45)
      abb320(63)=-spbk3k1*abb320(71)
      abb320(78)=abb320(9)*abb320(11)*abb320(85)
      abb320(85)=spak2k4*abb320(108)
      abb320(45)=abb320(45)+abb320(78)+abb320(63)+abb320(85)+abb320(90)-abb320(&
      &83)
      abb320(45)=spak1k2*abb320(45)
      abb320(62)=abb320(62)*abb320(37)
      abb320(63)=abb320(62)*abb320(101)
      abb320(78)=-abb320(52)*abb320(46)
      abb320(83)=abb320(78)*abb320(96)
      abb320(63)=abb320(63)-abb320(83)
      abb320(63)=abb320(63)*abb320(9)
      abb320(83)=abb320(62)*abb320(9)
      abb320(85)=abb320(83)*spbk4k3
      abb320(90)=abb320(60)*abb320(19)
      abb320(85)=abb320(90)+abb320(85)
      abb320(85)=abb320(85)*spak4l6
      abb320(19)=abb320(19)*abb320(11)
      abb320(90)=abb320(19)*abb320(101)
      abb320(102)=abb320(103)*abb320(11)
      abb320(103)=abb320(102)*abb320(96)
      abb320(63)=abb320(90)+abb320(103)+abb320(63)+abb320(85)
      abb320(63)=abb320(63)*abb320(67)
      abb320(85)=abb320(98)*abb320(136)
      abb320(42)=abb320(85)-abb320(42)
      abb320(85)=-spbk4k3*abb320(42)
      abb320(90)=abb320(19)-abb320(120)
      abb320(98)=abb320(90)*abb320(73)
      abb320(103)=abb320(35)*spbk4k3
      abb320(107)=abb320(121)*abb320(103)
      abb320(29)=-abb320(29)*abb320(25)
      abb320(108)=abb320(29)*abb320(33)
      abb320(116)=-spbl6l5*abb320(108)
      abb320(85)=abb320(107)+abb320(116)+abb320(85)+abb320(98)
      abb320(85)=spak4l6*abb320(85)
      abb320(98)=abb320(102)+abb320(65)
      abb320(98)=abb320(98)*abb320(96)
      abb320(90)=abb320(90)*abb320(101)
      abb320(90)=abb320(98)+abb320(90)
      abb320(90)=abb320(90)*abb320(72)
      abb320(98)=abb320(123)*abb320(43)
      abb320(116)=-abb320(11)*abb320(98)
      abb320(116)=abb320(116)-abb320(20)
      abb320(116)=spak1l6*abb320(116)
      abb320(40)=-abb320(40)*abb320(25)
      abb320(124)=abb320(40)*abb320(47)
      abb320(126)=-abb320(29)*abb320(44)
      abb320(116)=abb320(126)+abb320(116)+abb320(124)
      abb320(116)=spbl6l5*abb320(116)
      abb320(18)=abb320(18)*abb320(60)
      abb320(64)=abb320(9)*abb320(64)
      abb320(18)=abb320(18)+abb320(64)
      abb320(18)=spak2k4*abb320(18)
      abb320(64)=abb320(35)*abb320(101)
      abb320(124)=-abb320(46)*abb320(96)
      abb320(64)=abb320(64)-abb320(124)
      abb320(124)=spbl6l5*abb320(64)
      abb320(18)=abb320(124)+abb320(18)
      abb320(18)=spal5l6*abb320(18)
      abb320(124)=abb320(15)*abb320(11)
      abb320(126)=abb320(124)+abb320(129)
      abb320(126)=spak1k2*abb320(126)
      abb320(134)=abb320(113)*spbl6l5
      abb320(135)=abb320(134)*spak1l6
      abb320(126)=abb320(126)-abb320(135)
      abb320(126)=spal5l6*abb320(126)
      abb320(56)=abb320(49)*abb320(56)*abb320(25)
      abb320(17)=-abb320(51)*abb320(58)*abb320(17)
      abb320(17)=abb320(56)+2.0_ki*abb320(17)+abb320(126)
      abb320(17)=spbl5k3*abb320(17)
      abb320(23)=spak2k4*abb320(43)*abb320(23)
      abb320(32)=abb320(32)*abb320(43)
      abb320(56)=spbk3k1*abb320(32)
      abb320(58)=abb320(13)*abb320(43)
      abb320(126)=spbl5k3*abb320(58)
      abb320(23)=abb320(126)+abb320(23)+abb320(56)
      abb320(23)=abb320(11)*abb320(23)
      abb320(56)=abb320(125)*spbk3k1
      abb320(100)=abb320(100)*spak2k4
      abb320(56)=abb320(56)+abb320(100)
      abb320(126)=spak2l6*abb320(56)
      abb320(137)=-abb320(82)*abb320(128)
      abb320(23)=abb320(137)-2.0_ki*abb320(126)+abb320(23)
      abb320(23)=spak1l5*abb320(23)
      abb320(14)=-abb320(131)*abb320(14)
      abb320(16)=abb320(53)*abb320(16)
      abb320(14)=abb320(16)+abb320(14)
      abb320(16)=-abb320(124)-abb320(14)
      abb320(16)=spak1l6*abb320(16)
      abb320(39)=abb320(39)*abb320(117)
      abb320(53)=-spak1k7*abb320(10)*abb320(25)*abb320(39)
      abb320(52)=abb320(52)*abb320(130)
      abb320(117)=abb320(37)*abb320(52)
      abb320(124)=spak1l5*abb320(117)
      abb320(16)=2.0_ki*abb320(124)-abb320(53)+abb320(16)
      abb320(16)=spak2l6*abb320(16)
      abb320(124)=-spak1l6*abb320(74)
      abb320(16)=abb320(124)+abb320(16)
      abb320(16)=spbl6k3*abb320(16)
      abb320(51)=-abb320(15)*abb320(51)
      abb320(124)=-spak1l6*abb320(129)
      abb320(51)=abb320(51)+abb320(124)
      abb320(51)=spak2k7*abb320(51)
      abb320(36)=abb320(134)*abb320(36)
      abb320(124)=abb320(15)*abb320(133)
      abb320(51)=abb320(124)+abb320(36)+abb320(51)
      abb320(51)=spbk7k3*abb320(51)
      abb320(91)=-spbk7l6*abb320(91)
      abb320(91)=abb320(91)+abb320(95)
      abb320(91)=spak2l6*abb320(91)
      abb320(93)=abb320(93)*abb320(136)
      abb320(93)=abb320(93)-abb320(112)
      abb320(93)=spak1l6*abb320(93)
      abb320(48)=abb320(48)*abb320(54)
      abb320(48)=abb320(48)+abb320(93)
      abb320(48)=spak2k4*abb320(48)
      abb320(42)=-spak1l6*abb320(42)
      abb320(50)=abb320(37)*abb320(50)
      abb320(54)=-abb320(50)*abb320(49)
      abb320(42)=abb320(54)+abb320(42)
      abb320(42)=spbk3k1*abb320(42)
      abb320(50)=-abb320(50)*abb320(60)
      abb320(54)=spak2l6*spbk4k3
      abb320(57)=-abb320(57)*abb320(54)
      abb320(50)=abb320(50)+abb320(57)
      abb320(50)=spak4k7*abb320(50)
      abb320(57)=abb320(11)*abb320(132)
      abb320(57)=abb320(57)-abb320(88)
      abb320(57)=spak1k2*spak2l6*abb320(57)
      abb320(88)=abb320(109)*spak1l6
      abb320(93)=-abb320(128)*abb320(88)
      abb320(57)=abb320(93)+abb320(57)
      abb320(57)=abb320(7)*abb320(57)
      abb320(93)=abb320(125)*abb320(54)
      abb320(32)=abb320(32)*abb320(60)
      abb320(32)=abb320(32)-2.0_ki*abb320(93)
      abb320(32)=spak4l5*abb320(32)
      abb320(93)=spbk4k3*spak2k4
      abb320(71)=abb320(71)*abb320(93)
      abb320(49)=-spbk7l5*abb320(98)*abb320(49)
      abb320(16)=abb320(32)+abb320(51)+abb320(49)+abb320(57)+abb320(16)+abb320(&
      &50)+abb320(23)+abb320(85)+abb320(17)+abb320(45)+abb320(18)+abb320(116)+a&
      &bb320(90)+abb320(42)+abb320(48)+abb320(71)+abb320(91)+abb320(63)
      abb320(16)=8.0_ki*abb320(16)
      abb320(17)=abb320(82)*spak1k2
      abb320(18)=-16.0_ki*abb320(17)
      abb320(23)=abb320(103)*spak4l6
      abb320(23)=abb320(23)+abb320(64)
      abb320(32)=abb320(105)*abb320(113)
      abb320(32)=abb320(32)-abb320(23)
      abb320(42)=-abb320(17)-abb320(32)
      abb320(42)=16.0_ki*abb320(42)
      abb320(32)=-16.0_ki*abb320(32)
      abb320(45)=abb320(10)*abb320(6)
      abb320(48)=abb320(45)*abb320(87)
      abb320(49)=-spak1k7*abb320(48)
      abb320(50)=-spak1l6*abb320(65)
      abb320(49)=abb320(49)+abb320(50)
      abb320(49)=spak2k4*abb320(49)
      abb320(28)=-abb320(45)*abb320(28)
      abb320(50)=spak1k7*abb320(28)
      abb320(51)=spak1l6*abb320(120)
      abb320(50)=abb320(50)+abb320(51)
      abb320(50)=spbk3k1*abb320(50)
      abb320(51)=abb320(120)*spbk4k3
      abb320(57)=spak4l6*abb320(51)
      abb320(63)=abb320(28)*abb320(76)
      abb320(49)=abb320(63)+abb320(57)+abb320(49)+abb320(50)
      abb320(49)=16.0_ki*abb320(49)
      abb320(17)=-8.0_ki*abb320(17)
      abb320(48)=spak2k4*abb320(48)
      abb320(50)=-spbk3k1*abb320(28)
      abb320(52)=-abb320(52)*abb320(25)
      abb320(57)=-spbk7k3*abb320(52)
      abb320(48)=abb320(57)+abb320(48)+abb320(50)
      abb320(48)=spak1k2*abb320(48)
      abb320(28)=abb320(28)*abb320(93)
      abb320(28)=abb320(28)+abb320(48)
      abb320(28)=8.0_ki*abb320(28)
      abb320(48)=spal5k7*abb320(114)
      abb320(50)=abb320(69)*spak2k7
      abb320(48)=-abb320(50)+abb320(48)
      abb320(48)=8.0_ki*abb320(48)
      abb320(57)=abb320(34)*abb320(35)
      abb320(63)=-abb320(46)*abb320(27)
      abb320(57)=abb320(57)-abb320(63)
      abb320(63)=abb320(103)*spak4k7
      abb320(64)=abb320(75)*abb320(113)
      abb320(63)=abb320(63)+abb320(57)-abb320(64)
      abb320(69)=8.0_ki*abb320(63)
      abb320(71)=-spak2k4*abb320(46)
      abb320(76)=-spbk3k1*abb320(35)
      abb320(85)=spbl5k3*abb320(113)
      abb320(71)=abb320(85)+abb320(71)+abb320(76)
      abb320(71)=spak1l5*abb320(71)
      abb320(76)=-spak4l5*abb320(103)
      abb320(71)=abb320(71)+abb320(76)
      abb320(71)=8.0_ki*abb320(71)
      abb320(76)=abb320(13)*spak1k7
      abb320(85)=8.0_ki*abb320(76)
      abb320(87)=-abb320(127)*abb320(85)
      abb320(76)=16.0_ki*abb320(76)
      abb320(90)=-16.0_ki*spak1k7*abb320(129)
      abb320(91)=abb320(129)+abb320(14)
      abb320(91)=spak1k2*abb320(91)
      abb320(95)=-spbk7l5*spak1k7*abb320(113)
      abb320(91)=abb320(95)-abb320(135)+abb320(91)
      abb320(91)=8.0_ki*abb320(91)
      abb320(95)=abb320(52)*spak1k7*abb320(67)
      abb320(98)=abb320(14)*abb320(118)
      abb320(103)=-abb320(117)*abb320(89)
      abb320(36)=abb320(103)+abb320(36)+abb320(98)+abb320(95)
      abb320(36)=spbl6k3*abb320(36)
      abb320(95)=-abb320(65)*abb320(96)
      abb320(98)=abb320(120)*abb320(101)
      abb320(95)=abb320(95)+abb320(98)
      abb320(95)=spbl6k2*abb320(95)
      abb320(98)=spak4l5*spbk4k3*abb320(125)
      abb320(31)=spbl6l5*abb320(20)*abb320(31)
      abb320(31)=abb320(98)+abb320(95)+abb320(31)
      abb320(31)=spak2k7*abb320(31)
      abb320(63)=spal5k7*abb320(63)
      abb320(50)=-abb320(7)*abb320(50)
      abb320(50)=abb320(50)+abb320(63)
      abb320(50)=spbk7l5*abb320(50)
      abb320(34)=abb320(34)*abb320(120)
      abb320(63)=abb320(65)*abb320(27)
      abb320(34)=abb320(34)-abb320(63)
      abb320(34)=abb320(34)*abb320(67)
      abb320(21)=-abb320(21)*abb320(25)
      abb320(47)=abb320(21)*abb320(47)
      abb320(30)=-abb320(30)*abb320(25)
      abb320(44)=-abb320(30)*abb320(44)
      abb320(44)=abb320(47)+abb320(44)
      abb320(44)=spbl6l5*spbl6k2*abb320(44)
      abb320(47)=-abb320(57)*abb320(121)
      abb320(57)=-abb320(113)*abb320(127)
      abb320(63)=spal5l6*abb320(134)
      abb320(57)=abb320(57)+abb320(63)
      abb320(57)=abb320(57)*abb320(75)
      abb320(63)=abb320(30)*spbl6l5
      abb320(95)=-abb320(119)*abb320(63)
      abb320(98)=abb320(51)*spak2k7
      abb320(103)=spbl6k2*abb320(98)
      abb320(95)=abb320(95)+abb320(103)
      abb320(95)=spak4l6*abb320(95)
      abb320(103)=spbl6l5*abb320(82)
      abb320(56)=abb320(103)+abb320(56)
      abb320(56)=abb320(56)*abb320(89)
      abb320(23)=spbl6l5*abb320(23)
      abb320(89)=-abb320(134)*abb320(105)
      abb320(23)=abb320(89)+abb320(23)
      abb320(23)=spal5k7*abb320(23)
      abb320(89)=abb320(51)*abb320(67)
      abb320(89)=-abb320(107)+abb320(89)
      abb320(89)=spak4k7*abb320(89)
      abb320(103)=-abb320(109)*abb320(118)
      abb320(79)=abb320(79)+abb320(103)
      abb320(79)=spbl6l5*abb320(79)
      abb320(103)=spak2k7*abb320(111)
      abb320(79)=abb320(103)+abb320(79)
      abb320(79)=abb320(7)*abb320(79)
      abb320(23)=abb320(50)+abb320(79)+abb320(36)+abb320(89)+abb320(23)+abb320(&
      &56)+abb320(95)+abb320(57)+abb320(44)+abb320(47)+abb320(34)+abb320(31)
      abb320(23)=8.0_ki*abb320(23)
      abb320(31)=16.0_ki*abb320(64)
      abb320(34)=-abb320(25)*abb320(68)
      abb320(36)=abb320(34)*abb320(9)
      abb320(44)=-16.0_ki*abb320(75)*abb320(36)
      abb320(47)=8.0_ki*abb320(64)
      abb320(50)=abb320(65)*spak2k4
      abb320(56)=abb320(120)*spbk3k1
      abb320(56)=abb320(56)-abb320(50)
      abb320(57)=-abb320(7)*abb320(14)
      abb320(36)=abb320(57)+abb320(36)
      abb320(36)=spbl5k3*abb320(36)
      abb320(57)=-spbl6k3*abb320(52)
      abb320(36)=abb320(57)-abb320(56)+abb320(36)
      abb320(36)=spak1k2*abb320(36)
      abb320(57)=-abb320(21)*abb320(96)
      abb320(64)=abb320(30)*abb320(101)
      abb320(57)=abb320(57)+abb320(64)
      abb320(57)=spbl6l5*abb320(57)
      abb320(64)=abb320(30)*abb320(80)
      abb320(27)=-abb320(21)*abb320(27)
      abb320(27)=abb320(27)+abb320(64)
      abb320(27)=spbk7l5*abb320(27)
      abb320(51)=spak2k4*abb320(51)
      abb320(64)=abb320(63)*abb320(81)
      abb320(27)=abb320(27)+abb320(64)+abb320(51)+abb320(57)+abb320(36)
      abb320(27)=8.0_ki*abb320(27)
      abb320(36)=abb320(45)*abb320(61)
      abb320(37)=abb320(37)*abb320(36)
      abb320(45)=spbk3k1*abb320(37)
      abb320(51)=-abb320(10)*abb320(100)
      abb320(57)=spbl5k3*abb320(52)
      abb320(45)=abb320(57)+abb320(51)+abb320(45)
      abb320(45)=spak1k2*abb320(45)
      abb320(37)=-abb320(37)*abb320(93)
      abb320(37)=abb320(37)+abb320(45)
      abb320(37)=8.0_ki*abb320(37)
      abb320(45)=8.0_ki*abb320(108)
      abb320(51)=abb320(83)*abb320(33)
      abb320(57)=abb320(51)*abb320(67)
      abb320(61)=-abb320(97)+2.0_ki*abb320(99)
      abb320(60)=abb320(61)*abb320(60)
      abb320(64)=abb320(120)*spal6k7
      abb320(64)=-abb320(64)+2.0_ki*abb320(106)
      abb320(68)=-abb320(64)*abb320(73)
      abb320(73)=spbl6l5*spal6k7**2
      abb320(75)=-spbk4k3*abb320(29)*abb320(73)
      abb320(57)=abb320(75)+abb320(60)+abb320(68)+abb320(57)
      abb320(57)=8.0_ki*abb320(57)
      abb320(60)=abb320(35)*abb320(33)
      abb320(68)=-16.0_ki*abb320(60)
      abb320(75)=-abb320(120)*abb320(33)
      abb320(51)=abb320(75)+abb320(51)
      abb320(51)=16.0_ki*abb320(51)
      abb320(60)=8.0_ki*abb320(60)
      abb320(43)=abb320(43)*abb320(11)
      abb320(75)=abb320(35)*abb320(43)
      abb320(75)=abb320(75)-abb320(62)
      abb320(79)=-spbk4k3*abb320(75)
      abb320(19)=-abb320(19)+2.0_ki*abb320(120)
      abb320(54)=-abb320(19)*abb320(54)
      abb320(54)=abb320(79)+abb320(54)
      abb320(25)=-abb320(36)*abb320(25)
      abb320(36)=abb320(25)*spbk4k3
      abb320(79)=-abb320(36)*abb320(67)
      abb320(54)=2.0_ki*abb320(54)+abb320(79)
      abb320(54)=8.0_ki*abb320(54)
      abb320(36)=-16.0_ki*abb320(36)
      abb320(79)=8.0_ki*abb320(30)
      abb320(80)=abb320(119)*abb320(79)
      abb320(79)=spbk4k3*abb320(79)
      abb320(33)=-abb320(33)*abb320(63)
      abb320(33)=abb320(33)+abb320(98)
      abb320(33)=16.0_ki*abb320(33)
      abb320(63)=abb320(109)*abb320(115)
      abb320(38)=abb320(38)+abb320(63)
      abb320(38)=abb320(7)*abb320(38)
      abb320(63)=-spak1l5*spal6k7*abb320(109)
      abb320(38)=abb320(63)+abb320(38)
      abb320(38)=8.0_ki*abb320(38)
      abb320(63)=spak1l5*abb320(82)
      abb320(81)=-abb320(7)*abb320(88)
      abb320(63)=abb320(63)+abb320(81)
      abb320(63)=8.0_ki*abb320(63)
      abb320(39)=-abb320(39)*abb320(77)
      abb320(77)=-abb320(14)*abb320(115)
      abb320(39)=abb320(39)+abb320(77)
      abb320(39)=8.0_ki*abb320(39)
      abb320(77)=spak1l6*abb320(14)
      abb320(53)=abb320(53)+abb320(77)
      abb320(53)=8.0_ki*abb320(53)
      abb320(77)=8.0_ki*spal6k7
      abb320(81)=abb320(123)*abb320(77)
      abb320(83)=abb320(127)*abb320(81)
      abb320(88)=16.0_ki*spal6k7
      abb320(89)=abb320(123)*abb320(88)
      abb320(93)=-abb320(9)*abb320(20)*abb320(88)
      abb320(95)=spbk3k1*spal6k7
      abb320(96)=abb320(29)*abb320(95)
      abb320(97)=spak2k4*spal6k7
      abb320(98)=abb320(40)*abb320(97)
      abb320(96)=abb320(96)-abb320(98)
      abb320(98)=spbk7k3*spal6k7*abb320(113)
      abb320(20)=abb320(98)-abb320(20)-abb320(96)
      abb320(20)=8.0_ki*abb320(20)
      abb320(59)=2.0_ki*abb320(59)-abb320(122)
      abb320(59)=abb320(11)*abb320(59)
      abb320(98)=abb320(14)*spal6k7
      abb320(70)=2.0_ki*abb320(70)
      abb320(70)=abb320(15)*abb320(70)
      abb320(70)=abb320(98)+abb320(70)
      abb320(70)=abb320(70)*abb320(72)
      abb320(99)=abb320(129)*spal6k7
      abb320(100)=-abb320(99)*abb320(67)
      abb320(101)=-abb320(55)*abb320(73)
      abb320(59)=abb320(101)+abb320(59)+abb320(70)+abb320(100)
      abb320(59)=8.0_ki*abb320(59)
      abb320(70)=-abb320(13)*abb320(88)
      abb320(88)=-abb320(98)-abb320(99)
      abb320(88)=16.0_ki*abb320(88)
      abb320(13)=abb320(13)*abb320(77)
      abb320(55)=abb320(55)*abb320(77)
      abb320(15)=-abb320(15)*abb320(136)
      abb320(15)=-3.0_ki*abb320(14)+abb320(15)
      abb320(15)=spak2l6*abb320(15)
      abb320(58)=-abb320(58)*abb320(136)
      abb320(15)=abb320(15)+abb320(58)-abb320(74)
      abb320(15)=8.0_ki*abb320(15)
      abb320(58)=-16.0_ki*abb320(52)
      abb320(74)=-spbl6k2*abb320(113)*abb320(77)
      abb320(77)=-8.0_ki*abb320(113)
      abb320(98)=spal6k7*abb320(134)
      abb320(14)=spak2k7*abb320(14)
      abb320(14)=abb320(98)+abb320(14)
      abb320(14)=16.0_ki*abb320(14)
      abb320(92)=-2.0_ki*abb320(94)+abb320(92)
      abb320(92)=spak2k4*abb320(92)
      abb320(61)=spbk3k1*abb320(61)
      abb320(61)=abb320(92)+abb320(61)
      abb320(61)=abb320(11)*abb320(61)
      abb320(92)=-spal6k7*abb320(65)
      abb320(92)=abb320(92)-2.0_ki*abb320(104)
      abb320(92)=spak2k4*abb320(92)
      abb320(64)=-spbk3k1*abb320(64)
      abb320(64)=abb320(92)+abb320(64)
      abb320(64)=abb320(64)*abb320(72)
      abb320(62)=abb320(95)*abb320(62)
      abb320(72)=abb320(78)*abb320(97)
      abb320(62)=abb320(62)-abb320(72)
      abb320(62)=abb320(62)*abb320(9)
      abb320(72)=abb320(62)*abb320(67)
      abb320(40)=spak2k4*abb320(40)
      abb320(29)=-spbk3k1*abb320(29)
      abb320(29)=abb320(40)+abb320(29)
      abb320(29)=abb320(29)*abb320(73)
      abb320(40)=abb320(82)*spak2k7
      abb320(73)=abb320(127)*abb320(40)
      abb320(29)=abb320(73)+abb320(29)+abb320(64)+abb320(72)+abb320(61)
      abb320(29)=8.0_ki*abb320(29)
      abb320(61)=-16.0_ki*abb320(40)
      abb320(64)=-abb320(46)*abb320(97)
      abb320(35)=abb320(35)*abb320(95)
      abb320(35)=abb320(64)-abb320(35)
      abb320(64)=-abb320(40)+abb320(35)
      abb320(64)=16.0_ki*abb320(64)
      abb320(72)=abb320(65)*abb320(97)
      abb320(73)=-abb320(120)*abb320(95)
      abb320(82)=-spak2k7*abb320(9)*abb320(110)*abb320(84)
      abb320(62)=abb320(82)+abb320(62)+abb320(72)+abb320(73)
      abb320(62)=16.0_ki*abb320(62)
      abb320(35)=-abb320(40)-abb320(35)
      abb320(35)=8.0_ki*abb320(35)
      abb320(40)=8.0_ki*abb320(96)
      abb320(65)=2.0_ki*abb320(65)+abb320(102)
      abb320(65)=spak2k4*abb320(65)
      abb320(19)=-spbk3k1*abb320(19)
      abb320(19)=abb320(65)+abb320(19)
      abb320(19)=spak2l6*abb320(19)
      abb320(43)=-abb320(46)*abb320(43)
      abb320(43)=abb320(43)-abb320(78)
      abb320(43)=spak2k4*abb320(43)
      abb320(46)=-spbk3k1*abb320(75)
      abb320(19)=abb320(19)+abb320(43)+abb320(46)
      abb320(43)=abb320(10)*abb320(50)
      abb320(25)=abb320(25)*spbk3k1
      abb320(25)=abb320(43)-abb320(25)
      abb320(43)=abb320(25)*abb320(67)
      abb320(46)=-spbl6k3*spak2l6
      abb320(50)=-spbk7k3*spak2k7
      abb320(46)=abb320(50)+abb320(46)
      abb320(46)=abb320(52)*abb320(46)
      abb320(34)=spbl5k3*abb320(34)
      abb320(19)=2.0_ki*abb320(19)+abb320(34)+abb320(43)+abb320(46)
      abb320(19)=8.0_ki*abb320(19)
      abb320(25)=16.0_ki*abb320(25)
      abb320(34)=abb320(30)*abb320(95)
      abb320(43)=abb320(21)*abb320(97)
      abb320(34)=abb320(34)-abb320(43)
      abb320(43)=8.0_ki*spbl6k2*abb320(34)
      abb320(21)=-spak2k4*abb320(21)
      abb320(30)=spbk3k1*abb320(30)
      abb320(21)=abb320(21)+abb320(30)
      abb320(21)=8.0_ki*abb320(21)
      abb320(30)=-spbl6l5*abb320(34)
      abb320(34)=spak2k7*abb320(56)
      abb320(30)=abb320(30)+abb320(34)
      abb320(30)=16.0_ki*abb320(30)
      R2d320=0.0_ki
      rat2 = rat2 + R2d320
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='320' value='", &
          & R2d320, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd320h5
