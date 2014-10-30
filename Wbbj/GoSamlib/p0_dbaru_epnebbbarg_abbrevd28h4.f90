module     p0_dbaru_epnebbbarg_abbrevd28h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(212), public :: abb28
   complex(ki), public :: R2d28
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
      abb28(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb28(2)=NC**(-1)
      abb28(3)=sqrt2**(-1)
      abb28(4)=es234**(-1)
      abb28(5)=es56**(-1)
      abb28(6)=es71**(-1)
      abb28(7)=spbl5k2**(-1)
      abb28(8)=spbl6k2**(-1)
      abb28(9)=spbk7k2**(-1)
      abb28(10)=es567**(-1)
      abb28(11)=1.0_ki/(-es71+es56-es567+es234)
      abb28(12)=sqrt(mB**2)
      abb28(13)=spak2l5**(-1)
      abb28(14)=spak2l6**(-1)
      abb28(15)=1.0_ki/(es71+es34+es56-es712-es234)
      abb28(16)=1.0_ki/(es34+es567-es12-es234)
      abb28(17)=gW*abb28(5)
      abb28(18)=abb28(17)**2
      abb28(19)=2.0_ki*abb28(18)
      abb28(19)=abb28(19)*mB**2
      abb28(20)=1.0_ki/3.0_ki*abb28(5)
      abb28(20)=abb28(20)*gW**2
      abb28(19)=abb28(19)-abb28(20)
      abb28(20)=abb28(1)*CVDU*abb28(3)
      abb28(21)=spak3k4*abb28(4)
      abb28(22)=abb28(21)*mB
      abb28(23)=spbk3k2*TR
      abb28(19)=abb28(22)*i_*abb28(23)**2*abb28(20)*abb28(19)
      abb28(24)=abb28(9)*abb28(19)
      abb28(25)=abb28(7)*spak1k7
      abb28(26)=abb28(25)*c1
      abb28(27)=abb28(24)*abb28(26)
      abb28(28)=c4*abb28(2)
      abb28(29)=abb28(24)*abb28(28)
      abb28(30)=-abb28(25)*abb28(29)
      abb28(27)=abb28(27)+abb28(30)
      abb28(27)=abb28(11)*abb28(27)
      abb28(30)=abb28(6)*spak1k7
      abb28(31)=abb28(30)*abb28(28)
      abb28(32)=abb28(30)*c3
      abb28(32)=abb28(32)-abb28(31)
      abb28(33)=-abb28(7)*abb28(32)
      abb28(34)=-abb28(24)*abb28(33)
      abb28(27)=abb28(27)+abb28(34)
      abb28(27)=spak1l6*abb28(27)
      abb28(34)=abb28(24)*c1
      abb28(29)=abb28(29)-abb28(34)
      abb28(35)=abb28(8)*spak1k7
      abb28(36)=-abb28(29)*abb28(35)*abb28(11)
      abb28(37)=-abb28(8)*abb28(32)
      abb28(38)=-abb28(24)*abb28(37)
      abb28(36)=abb28(36)+abb28(38)
      abb28(36)=spak1l5*abb28(36)
      abb28(27)=abb28(27)+abb28(36)
      abb28(27)=spbk2k1*abb28(27)
      abb28(36)=c1-c3
      abb28(38)=-abb28(10)*abb28(36)
      abb28(39)=abb28(38)*abb28(25)
      abb28(40)=-abb28(39)+abb28(33)
      abb28(40)=spal6k7*abb28(40)
      abb28(41)=-abb28(35)*abb28(38)
      abb28(41)=abb28(41)+abb28(37)
      abb28(41)=spal5k7*abb28(41)
      abb28(40)=abb28(40)+abb28(41)
      abb28(19)=abb28(19)*abb28(40)
      abb28(40)=abb28(11)*spal5k7
      abb28(41)=-abb28(29)*abb28(40)
      abb28(42)=-abb28(24)*abb28(38)
      abb28(43)=spal5k7*abb28(42)
      abb28(41)=abb28(43)+abb28(41)
      abb28(41)=spak1l6*abb28(41)
      abb28(43)=abb28(11)*spal6k7
      abb28(29)=-abb28(29)*abb28(43)
      abb28(42)=abb28(42)*spal6k7
      abb28(29)=abb28(42)+abb28(29)
      abb28(29)=spak1l5*abb28(29)
      abb28(44)=abb28(7)*abb28(34)
      abb28(45)=abb28(28)*abb28(7)
      abb28(46)=-abb28(45)*abb28(24)
      abb28(44)=abb28(44)+abb28(46)
      abb28(44)=abb28(44)*abb28(43)
      abb28(42)=abb28(7)*abb28(42)
      abb28(42)=abb28(42)+abb28(44)
      abb28(44)=spbl6k2*spak1l6
      abb28(42)=abb28(42)*abb28(44)
      abb28(34)=abb28(8)*abb28(34)
      abb28(46)=abb28(28)*abb28(8)
      abb28(47)=-abb28(46)*abb28(24)
      abb28(34)=abb28(34)+abb28(47)
      abb28(34)=abb28(34)*abb28(40)
      abb28(47)=abb28(38)*abb28(8)
      abb28(24)=-spal5k7*abb28(24)*abb28(47)
      abb28(24)=abb28(24)+abb28(34)
      abb28(34)=spbl5k2*spak1l5
      abb28(24)=abb28(24)*abb28(34)
      abb28(19)=abb28(24)+abb28(42)+abb28(27)+abb28(29)+abb28(41)+abb28(19)
      abb28(19)=8.0_ki*abb28(19)
      abb28(17)=abb28(23)*abb28(17)
      abb28(17)=abb28(17)**2
      abb28(23)=abb28(17)*abb28(10)
      abb28(20)=i_*abb28(20)
      abb28(24)=abb28(21)*abb28(20)
      abb28(27)=abb28(23)*abb28(24)
      abb28(29)=c3*mB
      abb28(41)=abb28(27)*abb28(29)
      abb28(42)=abb28(24)*mB
      abb28(23)=c1*abb28(42)*abb28(23)
      abb28(23)=abb28(41)-abb28(23)
      abb28(41)=abb28(25)*abb28(23)
      abb28(48)=abb28(42)*abb28(17)
      abb28(49)=-abb28(48)*abb28(33)
      abb28(41)=abb28(49)+abb28(41)
      abb28(49)=abb28(41)*spal6k7
      abb28(23)=abb28(35)*abb28(23)
      abb28(48)=-abb28(48)*abb28(37)
      abb28(23)=abb28(48)+abb28(23)
      abb28(48)=abb28(23)*spal5k7
      abb28(48)=abb28(49)+abb28(48)
      abb28(49)=abb28(20)*abb28(9)
      abb28(50)=abb28(17)*abb28(49)
      abb28(51)=abb28(50)*abb28(22)
      abb28(52)=abb28(46)*abb28(51)
      abb28(53)=abb28(51)*c1
      abb28(54)=abb28(53)*abb28(8)
      abb28(52)=abb28(52)-abb28(54)
      abb28(54)=abb28(52)*abb28(40)
      abb28(55)=-abb28(51)*abb28(38)
      abb28(56)=abb28(55)*spal5k7
      abb28(57)=-abb28(8)*abb28(56)
      abb28(58)=abb28(57)+abb28(54)
      abb28(59)=abb28(58)*abb28(34)
      abb28(60)=abb28(51)*abb28(28)
      abb28(60)=abb28(53)-abb28(60)
      abb28(61)=abb28(60)*abb28(40)
      abb28(62)=abb28(56)+abb28(61)
      abb28(63)=abb28(62)*spak1l6
      abb28(59)=-abb28(59)+abb28(63)-abb28(48)
      abb28(63)=-abb28(51)*abb28(33)
      abb28(64)=abb28(60)*abb28(11)
      abb28(65)=-abb28(25)*abb28(64)
      abb28(63)=abb28(63)-abb28(65)
      abb28(66)=abb28(63)*spak1l6
      abb28(67)=-abb28(51)*abb28(37)
      abb28(64)=-abb28(35)*abb28(64)
      abb28(67)=abb28(67)-abb28(64)
      abb28(68)=abb28(67)*spak1l5
      abb28(66)=abb28(66)+abb28(68)
      abb28(68)=abb28(66)*spbk2k1
      abb28(69)=-abb28(7)*abb28(60)
      abb28(70)=abb28(69)*abb28(43)
      abb28(71)=abb28(55)*spal6k7
      abb28(72)=-abb28(7)*abb28(71)
      abb28(73)=abb28(72)+abb28(70)
      abb28(74)=abb28(73)*abb28(44)
      abb28(60)=abb28(60)*abb28(43)
      abb28(75)=abb28(71)+abb28(60)
      abb28(76)=abb28(75)*spak1l5
      abb28(74)=abb28(74)-abb28(76)
      abb28(68)=-abb28(68)-abb28(59)+abb28(74)
      abb28(68)=16.0_ki*abb28(68)
      abb28(76)=-abb28(12)**2*abb28(68)
      abb28(77)=2.0_ki*spbk2k1
      abb28(66)=abb28(66)*abb28(77)
      abb28(71)=-2.0_ki*abb28(71)-abb28(60)
      abb28(71)=spak1l5*abb28(71)
      abb28(72)=2.0_ki*abb28(72)+abb28(70)
      abb28(72)=abb28(72)*abb28(44)
      abb28(77)=-spak1k7*abb28(55)
      abb28(78)=abb28(77)*spal5l6
      abb28(59)=-abb28(78)+abb28(72)-abb28(66)+abb28(71)-2.0_ki*abb28(59)
      abb28(59)=16.0_ki*abb28(59)
      abb28(48)=abb28(74)+abb28(48)
      abb28(56)=-2.0_ki*abb28(56)-abb28(61)
      abb28(56)=spak1l6*abb28(56)
      abb28(57)=2.0_ki*abb28(57)+abb28(54)
      abb28(57)=abb28(57)*abb28(34)
      abb28(48)=abb28(78)+abb28(57)-abb28(66)+abb28(56)+2.0_ki*abb28(48)
      abb28(48)=16.0_ki*abb28(48)
      abb28(56)=mB**3
      abb28(21)=abb28(21)*abb28(56)*abb28(50)
      abb28(50)=abb28(46)*abb28(21)
      abb28(57)=abb28(21)*c1
      abb28(66)=abb28(57)*abb28(8)
      abb28(50)=abb28(50)-abb28(66)
      abb28(66)=abb28(50)*spal5k7
      abb28(71)=abb28(45)*abb28(21)
      abb28(72)=abb28(21)*abb28(7)
      abb28(74)=abb28(72)*c1
      abb28(71)=abb28(71)-abb28(74)
      abb28(74)=abb28(71)*spal6k7
      abb28(66)=abb28(66)+abb28(74)
      abb28(66)=abb28(66)*abb28(11)
      abb28(74)=-abb28(72)*abb28(38)
      abb28(78)=abb28(74)*spal6k7
      abb28(79)=-abb28(21)*abb28(47)
      abb28(80)=abb28(79)*spal5k7
      abb28(78)=abb28(78)+abb28(80)
      abb28(80)=abb28(66)-abb28(78)
      abb28(81)=spak1l5*abb28(80)
      abb28(82)=spak1k7*abb28(21)
      abb28(83)=abb28(7)**2
      abb28(84)=abb28(83)*abb28(82)
      abb28(85)=abb28(84)*c1
      abb28(86)=abb28(84)*abb28(28)
      abb28(85)=abb28(85)-abb28(86)
      abb28(85)=abb28(85)*abb28(11)
      abb28(87)=abb28(28)-c3
      abb28(88)=-abb28(6)*abb28(87)
      abb28(89)=-abb28(84)*abb28(88)
      abb28(90)=abb28(85)-abb28(89)
      abb28(91)=-spak1l6*abb28(90)
      abb28(92)=abb28(82)*abb28(7)
      abb28(93)=abb28(92)*abb28(8)
      abb28(94)=abb28(93)*c1
      abb28(95)=abb28(92)*abb28(46)
      abb28(94)=abb28(94)-abb28(95)
      abb28(94)=abb28(94)*abb28(11)
      abb28(96)=-abb28(93)*abb28(88)
      abb28(97)=abb28(94)-abb28(96)
      abb28(98)=-spak1l5*abb28(97)
      abb28(91)=abb28(91)+abb28(98)
      abb28(91)=spbk2k1*abb28(91)
      abb28(98)=spak1k7*c1
      abb28(99)=c3*spak1k7
      abb28(98)=abb28(98)-abb28(99)
      abb28(98)=abb28(27)*abb28(98)
      abb28(17)=abb28(17)*abb28(24)
      abb28(100)=-abb28(17)*abb28(32)
      abb28(98)=abb28(100)+abb28(98)
      abb28(100)=abb28(83)*abb28(56)
      abb28(101)=abb28(98)*abb28(100)
      abb28(102)=-spal6k7*abb28(101)
      abb28(103)=c3*abb28(8)
      abb28(104)=abb28(25)*abb28(103)
      abb28(26)=abb28(26)*abb28(8)
      abb28(26)=abb28(104)-abb28(26)
      abb28(26)=abb28(26)*abb28(27)*abb28(56)
      abb28(27)=abb28(56)*abb28(7)
      abb28(17)=-abb28(37)*abb28(17)*abb28(27)
      abb28(17)=abb28(17)+abb28(26)
      abb28(26)=spal5k7*abb28(17)
      abb28(104)=abb28(71)*abb28(40)
      abb28(74)=abb28(74)*spal5k7
      abb28(105)=abb28(104)-abb28(74)
      abb28(106)=spak1l6*abb28(105)
      abb28(107)=abb28(57)*abb28(83)
      abb28(83)=abb28(83)*abb28(21)
      abb28(108)=abb28(83)*abb28(28)
      abb28(107)=abb28(107)-abb28(108)
      abb28(108)=abb28(107)*abb28(43)
      abb28(83)=-abb28(83)*abb28(38)
      abb28(109)=abb28(83)*spal6k7
      abb28(110)=abb28(108)+abb28(109)
      abb28(111)=-abb28(110)*abb28(44)
      abb28(26)=abb28(111)+abb28(91)+abb28(81)+abb28(106)+abb28(102)+abb28(26)
      abb28(26)=abb28(13)*abb28(26)
      abb28(81)=spak1l6*abb28(80)
      abb28(91)=-spak1l6*abb28(97)
      abb28(102)=abb28(8)**2
      abb28(106)=abb28(102)*abb28(82)
      abb28(111)=abb28(106)*c1
      abb28(112)=abb28(106)*abb28(28)
      abb28(111)=abb28(111)-abb28(112)
      abb28(111)=abb28(111)*abb28(11)
      abb28(88)=-abb28(106)*abb28(88)
      abb28(113)=abb28(111)-abb28(88)
      abb28(114)=-spak1l5*abb28(113)
      abb28(91)=abb28(91)+abb28(114)
      abb28(91)=spbk2k1*abb28(91)
      abb28(114)=spal6k7*abb28(17)
      abb28(115)=abb28(102)*abb28(56)
      abb28(98)=abb28(98)*abb28(115)
      abb28(116)=-spal5k7*abb28(98)
      abb28(117)=abb28(50)*abb28(43)
      abb28(79)=abb28(79)*spal6k7
      abb28(118)=abb28(117)-abb28(79)
      abb28(119)=spak1l5*abb28(118)
      abb28(120)=abb28(57)*abb28(102)
      abb28(102)=abb28(102)*abb28(21)
      abb28(121)=abb28(102)*abb28(28)
      abb28(120)=abb28(120)-abb28(121)
      abb28(121)=abb28(120)*abb28(40)
      abb28(102)=-abb28(102)*abb28(38)
      abb28(122)=abb28(102)*spal5k7
      abb28(123)=abb28(121)+abb28(122)
      abb28(124)=-abb28(123)*abb28(34)
      abb28(81)=abb28(124)+abb28(91)+abb28(119)+abb28(81)+abb28(114)+abb28(116)
      abb28(81)=abb28(14)*abb28(81)
      abb28(26)=abb28(26)+abb28(81)
      abb28(26)=32.0_ki*abb28(26)
      abb28(81)=8.0_ki*spal5l6
      abb28(23)=-abb28(23)*abb28(81)
      abb28(41)=abb28(41)*abb28(81)
      abb28(91)=spak2l6*abb28(13)
      abb28(101)=-abb28(101)*abb28(91)
      abb28(114)=spak2l5*abb28(14)
      abb28(98)=-abb28(98)*abb28(114)
      abb28(17)=abb28(98)+2.0_ki*abb28(17)+abb28(101)
      abb28(17)=8.0_ki*abb28(17)
      abb28(98)=-spal5k7*abb28(77)
      abb28(101)=-abb28(25)*abb28(55)
      abb28(116)=spbl6k2*spal6k7
      abb28(119)=-abb28(101)*abb28(116)
      abb28(98)=abb28(98)+abb28(119)
      abb28(98)=8.0_ki*abb28(98)
      abb28(61)=spak1l5*abb28(61)
      abb28(40)=abb28(69)*abb28(40)
      abb28(69)=-abb28(44)*abb28(40)
      abb28(119)=abb28(101)*spal5l6
      abb28(124)=spbl6k2*abb28(119)
      abb28(61)=abb28(124)+abb28(61)+abb28(69)
      abb28(61)=8.0_ki*abb28(61)
      abb28(18)=abb28(18)*TR**2
      abb28(69)=abb28(18)*spbk3k2
      abb28(124)=abb28(30)*abb28(69)
      abb28(125)=abb28(124)*c3
      abb28(126)=abb28(22)*abb28(49)
      abb28(127)=abb28(125)*abb28(126)
      abb28(128)=abb28(127)*abb28(7)
      abb28(129)=abb28(124)*abb28(126)
      abb28(130)=abb28(129)*abb28(45)
      abb28(128)=abb28(128)-abb28(130)
      abb28(130)=spbk2k1*spak1l6
      abb28(131)=abb28(128)*abb28(130)
      abb28(29)=abb28(29)*abb28(124)
      abb28(24)=abb28(29)*abb28(24)
      abb28(132)=abb28(24)*abb28(7)
      abb28(133)=abb28(42)*abb28(124)
      abb28(134)=abb28(133)*abb28(45)
      abb28(132)=abb28(132)-abb28(134)
      abb28(134)=-spal6k7*abb28(132)
      abb28(36)=-abb28(36)*abb28(49)*abb28(10)
      abb28(22)=abb28(22)*abb28(36)
      abb28(135)=-abb28(69)*abb28(22)
      abb28(136)=spak1l6*spal5k7
      abb28(137)=spak1l5*spal6k7
      abb28(138)=abb28(136)+abb28(137)
      abb28(139)=abb28(135)*abb28(138)
      abb28(140)=-abb28(7)*abb28(135)
      abb28(141)=abb28(44)*spal6k7
      abb28(142)=abb28(140)*abb28(141)
      abb28(134)=-abb28(142)+abb28(131)+abb28(134)+abb28(139)
      abb28(134)=spbl6k2*abb28(134)
      abb28(143)=abb28(124)*abb28(28)
      abb28(42)=abb28(143)*abb28(42)
      abb28(42)=abb28(42)-abb28(24)
      abb28(144)=spal5k7*abb28(42)
      abb28(126)=abb28(143)*abb28(126)
      abb28(126)=abb28(126)-abb28(127)
      abb28(145)=spbk2k1*spak1l5
      abb28(146)=-abb28(126)*abb28(145)
      abb28(147)=abb28(34)*spal5k7
      abb28(148)=abb28(135)*abb28(147)
      abb28(134)=abb28(148)+abb28(134)+abb28(144)+abb28(146)
      abb28(134)=8.0_ki*abb28(134)
      abb28(144)=-c3*abb28(84)
      abb28(86)=abb28(144)+abb28(86)
      abb28(86)=abb28(13)*abb28(86)
      abb28(93)=abb28(93)*c3
      abb28(93)=abb28(93)-abb28(95)
      abb28(95)=-abb28(14)*abb28(93)
      abb28(144)=abb28(38)*abb28(92)
      abb28(146)=abb28(49)*abb28(7)
      abb28(148)=abb28(125)*abb28(146)
      abb28(149)=abb28(143)*abb28(146)
      abb28(148)=abb28(148)-abb28(149)
      abb28(148)=abb28(148)*abb28(56)
      abb28(150)=spak1k4*spbk2k1
      abb28(151)=abb28(150)*abb28(15)
      abb28(152)=-abb28(148)*abb28(151)
      abb28(86)=abb28(152)+abb28(95)+abb28(86)-abb28(144)
      abb28(95)=3.0_ki*abb28(109)+4.0_ki*abb28(108)
      abb28(95)=spbl6k2*abb28(95)
      abb28(74)=abb28(95)+3.0_ki*abb28(74)-4.0_ki*abb28(104)
      abb28(74)=abb28(13)*abb28(74)
      abb28(66)=-4.0_ki*abb28(66)+3.0_ki*abb28(78)
      abb28(78)=abb28(14)*abb28(66)
      abb28(74)=abb28(74)+abb28(78)
      abb28(74)=spak1k2*abb28(74)
      abb28(78)=abb28(18)*mB
      abb28(95)=abb28(49)*abb28(78)
      abb28(31)=abb28(95)*abb28(31)
      abb28(104)=abb28(49)*c3
      abb28(108)=abb28(78)*abb28(104)
      abb28(30)=abb28(108)*abb28(30)
      abb28(30)=abb28(30)-abb28(31)
      abb28(30)=abb28(30)*abb28(151)
      abb28(31)=abb28(20)*mB
      abb28(18)=abb28(18)*abb28(31)
      abb28(109)=spak4k7*abb28(15)
      abb28(152)=abb28(109)*abb28(18)
      abb28(153)=abb28(32)*abb28(152)
      abb28(30)=abb28(30)-abb28(153)
      abb28(153)=2.0_ki*spal5l6
      abb28(30)=abb28(30)*abb28(153)
      abb28(154)=4.0_ki*spal6k7
      abb28(155)=abb28(132)*abb28(154)
      abb28(156)=3.0_ki*abb28(135)
      abb28(136)=-abb28(136)*abb28(156)
      abb28(131)=-abb28(30)+3.0_ki*abb28(142)-4.0_ki*abb28(131)+abb28(155)+abb2&
      &8(136)
      abb28(131)=spbl6k3*abb28(131)
      abb28(136)=4.0_ki*spal5k7
      abb28(142)=abb28(132)*abb28(136)
      abb28(155)=4.0_ki*abb28(128)
      abb28(155)=-abb28(145)*abb28(155)
      abb28(32)=abb28(32)*abb28(151)
      abb28(157)=abb28(78)*abb28(146)
      abb28(158)=-abb28(157)*abb28(32)
      abb28(33)=-abb28(33)*abb28(152)
      abb28(33)=abb28(158)+abb28(33)
      abb28(158)=-abb28(153)*spbl6k2*abb28(33)
      abb28(159)=abb28(140)*abb28(116)
      abb28(160)=-spal5k7*abb28(156)
      abb28(160)=3.0_ki*abb28(159)+abb28(160)
      abb28(160)=spak1l5*abb28(160)
      abb28(142)=abb28(158)+abb28(155)+abb28(142)+abb28(160)
      abb28(142)=spbl5k3*abb28(142)
      abb28(155)=spak1l5*abb28(11)
      abb28(158)=abb28(71)*abb28(155)
      abb28(160)=-abb28(11)*abb28(107)*abb28(44)
      abb28(158)=abb28(158)+abb28(160)
      abb28(158)=abb28(13)*abb28(158)
      abb28(160)=abb28(155)*abb28(50)
      abb28(161)=spak1l6*abb28(11)
      abb28(71)=abb28(161)*abb28(71)
      abb28(71)=abb28(160)+abb28(71)
      abb28(160)=abb28(14)*abb28(71)
      abb28(158)=abb28(158)+abb28(160)
      abb28(160)=2.0_ki*spak2k7
      abb28(158)=abb28(158)*abb28(160)
      abb28(162)=-abb28(18)*abb28(38)
      abb28(163)=-spal5k7*abb28(162)
      abb28(164)=abb28(162)*abb28(7)
      abb28(165)=-abb28(164)*abb28(116)
      abb28(163)=abb28(163)+abb28(165)
      abb28(165)=spak4k7*spak1k4
      abb28(163)=abb28(163)*abb28(165)
      abb28(36)=-abb28(78)*abb28(36)
      abb28(166)=abb28(36)*spak1k4
      abb28(167)=abb28(166)*spal5k7
      abb28(168)=-abb28(7)*abb28(36)
      abb28(169)=abb28(168)*spak1k4
      abb28(170)=abb28(169)*abb28(116)
      abb28(167)=abb28(167)-abb28(170)
      abb28(170)=spak4l6*spbl6k2
      abb28(171)=-abb28(167)*abb28(170)
      abb28(172)=spbl5k2*spal5k7
      abb28(173)=abb28(116)+abb28(172)
      abb28(173)=abb28(173)*abb28(166)
      abb28(174)=-spak4l5*abb28(173)
      abb28(163)=abb28(174)+abb28(171)+abb28(163)
      abb28(171)=spbk4k3*abb28(16)
      abb28(163)=abb28(171)*abb28(163)
      abb28(174)=abb28(69)*abb28(31)
      abb28(39)=abb28(4)*abb28(174)*abb28(39)
      abb28(175)=abb28(124)*abb28(31)
      abb28(176)=abb28(175)*c3
      abb28(177)=2.0_ki*abb28(4)
      abb28(178)=abb28(177)*abb28(176)
      abb28(179)=abb28(178)*abb28(7)
      abb28(177)=abb28(177)*abb28(175)
      abb28(180)=abb28(177)*abb28(45)
      abb28(39)=abb28(39)+abb28(179)-abb28(180)
      abb28(179)=-spal6k7*abb28(39)
      abb28(180)=abb28(9)*abb28(4)
      abb28(174)=abb28(174)*abb28(180)
      abb28(181)=-abb28(174)*abb28(38)
      abb28(182)=abb28(138)*abb28(181)
      abb28(183)=abb28(176)*abb28(180)
      abb28(184)=abb28(183)*abb28(7)
      abb28(180)=abb28(175)*abb28(180)
      abb28(185)=abb28(180)*abb28(45)
      abb28(184)=abb28(184)-abb28(185)
      abb28(185)=2.0_ki*abb28(130)
      abb28(186)=abb28(184)*abb28(185)
      abb28(187)=-abb28(7)*abb28(181)
      abb28(188)=-abb28(187)*abb28(141)
      abb28(179)=abb28(188)+abb28(186)+abb28(179)+abb28(182)
      abb28(179)=spbl6k2*abb28(179)
      abb28(186)=abb28(177)*abb28(28)
      abb28(69)=abb28(69)*spak1k7
      abb28(31)=abb28(4)*abb28(69)*abb28(31)
      abb28(188)=abb28(38)*abb28(31)
      abb28(186)=-abb28(178)+abb28(186)-abb28(188)
      abb28(188)=spal5k7*abb28(186)
      abb28(189)=abb28(180)*abb28(28)
      abb28(189)=abb28(189)-abb28(183)
      abb28(190)=2.0_ki*abb28(145)
      abb28(191)=-abb28(189)*abb28(190)
      abb28(192)=abb28(181)*abb28(147)
      abb28(179)=abb28(192)+abb28(179)+abb28(188)+abb28(191)
      abb28(179)=spak2k4*abb28(179)
      abb28(146)=abb28(29)*abb28(146)
      abb28(149)=abb28(149)*mB
      abb28(146)=abb28(146)-abb28(149)
      abb28(146)=abb28(146)*abb28(150)
      abb28(104)=abb28(124)*abb28(104)
      abb28(124)=abb28(143)*abb28(49)
      abb28(104)=abb28(104)-abb28(124)
      abb28(124)=abb28(150)*abb28(13)
      abb28(149)=abb28(124)*abb28(104)*abb28(100)
      abb28(146)=abb28(146)-abb28(149)
      abb28(149)=abb28(15)*abb28(146)
      abb28(20)=abb28(20)*abb28(6)*abb28(69)
      abb28(188)=abb28(20)*abb28(87)
      abb28(100)=abb28(13)*abb28(188)*abb28(100)
      abb28(45)=abb28(175)*abb28(45)
      abb28(191)=abb28(176)*abb28(7)
      abb28(45)=-abb28(100)+abb28(45)-abb28(191)
      abb28(100)=abb28(109)*abb28(45)
      abb28(84)=-abb28(84)*abb28(38)
      abb28(191)=abb28(84)*abb28(13)
      abb28(100)=abb28(100)+abb28(191)+abb28(149)
      abb28(149)=2.0_ki*spak2l6
      abb28(100)=abb28(149)*spbl6k2*abb28(100)
      abb28(192)=abb28(150)*abb28(104)*mB
      abb28(49)=abb28(49)*abb28(8)
      abb28(125)=abb28(125)*abb28(49)
      abb28(143)=abb28(143)*abb28(49)
      abb28(125)=abb28(125)-abb28(143)
      abb28(193)=abb28(125)*abb28(56)
      abb28(194)=abb28(150)*abb28(14)
      abb28(195)=-abb28(193)*abb28(194)
      abb28(195)=abb28(192)+abb28(195)
      abb28(195)=abb28(15)*abb28(195)
      abb28(196)=abb28(175)*abb28(28)
      abb28(196)=abb28(196)-abb28(176)
      abb28(103)=abb28(103)-abb28(46)
      abb28(56)=abb28(103)*abb28(20)*abb28(56)
      abb28(197)=abb28(14)*abb28(56)
      abb28(197)=abb28(197)+abb28(196)
      abb28(197)=abb28(197)*abb28(109)
      abb28(82)=abb28(82)*abb28(47)
      abb28(198)=-abb28(14)*abb28(82)
      abb28(195)=abb28(197)+abb28(198)+abb28(195)
      abb28(197)=2.0_ki*spak2l5
      abb28(195)=abb28(195)*abb28(197)
      abb28(89)=-abb28(84)-abb28(89)
      abb28(89)=abb28(13)*abb28(89)
      abb28(92)=abb28(92)*abb28(47)
      abb28(96)=abb28(96)-abb28(92)
      abb28(198)=-abb28(14)*abb28(96)
      abb28(89)=abb28(89)+abb28(198)
      abb28(198)=4.0_ki*es712
      abb28(89)=abb28(89)*abb28(198)
      abb28(84)=abb28(85)+abb28(84)
      abb28(84)=abb28(13)*abb28(84)
      abb28(85)=abb28(94)-abb28(92)
      abb28(94)=abb28(14)*abb28(85)
      abb28(84)=abb28(84)+abb28(94)
      abb28(94)=4.0_ki*es12
      abb28(84)=abb28(84)*abb28(94)
      abb28(138)=abb28(36)*abb28(138)
      abb28(199)=abb28(162)*abb28(25)
      abb28(200)=-spal6k7*abb28(199)
      abb28(200)=abb28(200)-abb28(138)
      abb28(200)=spak1k4*abb28(200)
      abb28(201)=abb28(141)*abb28(169)
      abb28(200)=abb28(200)+abb28(201)
      abb28(200)=spbl6k2*abb28(200)
      abb28(201)=spak1k4*abb28(162)*spak1k7
      abb28(202)=-spal5k7*abb28(201)
      abb28(203)=-abb28(166)*abb28(147)
      abb28(200)=abb28(203)+abb28(202)+abb28(200)
      abb28(202)=spbk3k1*abb28(16)
      abb28(200)=abb28(200)*abb28(202)
      abb28(203)=spak1l6*abb28(40)
      abb28(204)=-spak1l5*abb28(70)
      abb28(119)=-abb28(119)+abb28(203)+abb28(204)
      abb28(203)=4.0_ki*spbl6l5
      abb28(119)=abb28(119)*abb28(203)
      abb28(204)=abb28(92)*abb28(14)
      abb28(191)=abb28(204)-abb28(191)
      abb28(204)=4.0_ki*es71
      abb28(205)=-abb28(191)*abb28(204)
      abb28(206)=spbl6k1*spak1l6
      abb28(207)=spbl5k1*spak1l5
      abb28(206)=abb28(206)+abb28(207)
      abb28(206)=4.0_ki*abb28(206)
      abb28(207)=-abb28(65)*abb28(206)
      abb28(208)=abb28(136)*spbk7l5
      abb28(209)=abb28(154)*spbk7l6
      abb28(208)=abb28(208)+abb28(209)
      abb28(209)=-abb28(101)*abb28(208)
      abb28(22)=abb28(69)*abb28(22)
      abb28(69)=spal5k7*abb28(22)
      abb28(25)=abb28(135)*abb28(25)
      abb28(210)=-abb28(25)*abb28(116)
      abb28(69)=abb28(69)+abb28(210)
      abb28(69)=spbk7k3*abb28(69)
      abb28(20)=abb28(20)*abb28(27)
      abb28(210)=abb28(87)*abb28(20)
      abb28(211)=4.0_ki*abb28(109)
      abb28(212)=-abb28(210)*abb28(211)
      abb28(69)=abb28(205)+abb28(69)+abb28(119)+abb28(84)+abb28(89)+abb28(158)+&
      &abb28(195)+abb28(100)+abb28(142)+abb28(131)+abb28(74)+abb28(200)+abb28(2&
      &12)+4.0_ki*abb28(86)+abb28(179)+abb28(163)+abb28(209)+abb28(207)
      abb28(69)=4.0_ki*abb28(69)
      abb28(74)=-32.0_ki*abb28(101)
      abb28(84)=16.0_ki*abb28(101)
      abb28(27)=abb28(125)*abb28(27)
      abb28(86)=-abb28(27)*abb28(194)
      abb28(86)=abb28(86)+abb28(146)
      abb28(89)=2.0_ki*abb28(15)
      abb28(86)=abb28(86)*abb28(89)
      abb28(20)=abb28(103)*abb28(20)
      abb28(100)=abb28(14)*abb28(20)
      abb28(45)=abb28(100)+abb28(45)
      abb28(100)=2.0_ki*abb28(109)
      abb28(45)=abb28(45)*abb28(100)
      abb28(45)=abb28(45)+abb28(86)-abb28(191)
      abb28(45)=16.0_ki*abb28(45)
      abb28(86)=-32.0_ki*abb28(65)
      abb28(101)=-16.0_ki*abb28(132)
      abb28(103)=spak1l5*abb28(181)
      abb28(119)=-abb28(187)*abb28(44)
      abb28(39)=abb28(119)+abb28(103)+abb28(39)
      abb28(39)=spak2k4*abb28(39)
      abb28(83)=abb28(13)*abb28(83)
      abb28(103)=abb28(8)*abb28(7)
      abb28(21)=abb28(103)*abb28(38)*abb28(21)
      abb28(119)=-abb28(14)*abb28(21)
      abb28(83)=abb28(83)+abb28(119)
      abb28(83)=spak1k2*abb28(83)
      abb28(119)=spak4k7*abb28(164)
      abb28(125)=abb28(168)*abb28(170)
      abb28(119)=abb28(125)+abb28(119)
      abb28(125)=abb28(171)*spak1k4
      abb28(119)=abb28(125)*abb28(119)
      abb28(131)=spbl6k3*spak1l6
      abb28(132)=spbl5k3*spak1l5
      abb28(131)=abb28(131)+abb28(132)
      abb28(132)=abb28(140)*abb28(131)
      abb28(140)=-spak1l5*abb28(36)
      abb28(140)=abb28(140)+abb28(199)
      abb28(140)=spak1k4*abb28(140)
      abb28(142)=abb28(44)*abb28(169)
      abb28(140)=abb28(140)+abb28(142)
      abb28(140)=abb28(140)*abb28(202)
      abb28(142)=abb28(166)*abb28(171)
      abb28(146)=-spak4l5*abb28(142)
      abb28(25)=spbk7k3*abb28(25)
      abb28(25)=abb28(25)+abb28(146)+abb28(83)+abb28(140)+abb28(39)+abb28(132)+&
      &abb28(119)
      abb28(25)=8.0_ki*abb28(25)
      abb28(39)=-spbl6k3*abb28(33)
      abb28(83)=abb28(125)*abb28(109)
      abb28(87)=abb28(87)*abb28(83)
      abb28(119)=abb28(28)*spak1k7
      abb28(99)=abb28(99)-abb28(119)
      abb28(132)=spak1k4*abb28(202)*abb28(15)
      abb28(99)=abb28(99)*abb28(132)
      abb28(87)=abb28(87)-abb28(99)
      abb28(99)=-spbl6k2*abb28(157)*abb28(87)
      abb28(39)=abb28(39)+abb28(99)
      abb28(39)=16.0_ki*abb28(39)
      abb28(51)=abb28(119)*abb28(51)
      abb28(53)=abb28(53)*spak1k7
      abb28(51)=abb28(51)-abb28(53)
      abb28(53)=abb28(51)*abb28(155)
      abb28(44)=abb28(44)*abb28(65)
      abb28(44)=abb28(53)+abb28(44)
      abb28(44)=8.0_ki*abb28(44)
      abb28(53)=-spal6k7*abb28(77)
      abb28(55)=-abb28(35)*abb28(55)
      abb28(65)=-abb28(55)*abb28(172)
      abb28(53)=abb28(53)+abb28(65)
      abb28(53)=8.0_ki*abb28(53)
      abb28(60)=spak1l6*abb28(60)
      abb28(43)=abb28(52)*abb28(43)
      abb28(52)=-abb28(34)*abb28(43)
      abb28(65)=abb28(55)*spal5l6
      abb28(77)=-spbl5k2*abb28(65)
      abb28(52)=abb28(77)+abb28(60)+abb28(52)
      abb28(52)=8.0_ki*abb28(52)
      abb28(60)=abb28(127)*abb28(8)
      abb28(77)=abb28(129)*abb28(46)
      abb28(60)=abb28(60)-abb28(77)
      abb28(77)=abb28(60)*abb28(145)
      abb28(24)=abb28(24)*abb28(8)
      abb28(99)=abb28(133)*abb28(46)
      abb28(24)=abb28(24)-abb28(99)
      abb28(99)=-spal5k7*abb28(24)
      abb28(127)=-abb28(8)*abb28(135)
      abb28(129)=abb28(127)*abb28(147)
      abb28(99)=-abb28(129)+abb28(77)+abb28(99)+abb28(139)
      abb28(99)=spbl5k2*abb28(99)
      abb28(42)=spal6k7*abb28(42)
      abb28(126)=-abb28(126)*abb28(130)
      abb28(133)=abb28(135)*abb28(141)
      abb28(42)=abb28(99)+abb28(133)+abb28(42)+abb28(126)
      abb28(42)=8.0_ki*abb28(42)
      abb28(93)=-abb28(13)*abb28(93)
      abb28(99)=-c3*abb28(106)
      abb28(99)=abb28(99)+abb28(112)
      abb28(99)=abb28(14)*abb28(99)
      abb28(112)=-abb28(193)*abb28(151)
      abb28(82)=abb28(112)+abb28(99)+abb28(93)-abb28(82)
      abb28(66)=abb28(13)*abb28(66)
      abb28(93)=3.0_ki*abb28(122)+4.0_ki*abb28(121)
      abb28(93)=spbl5k2*abb28(93)
      abb28(79)=abb28(93)+3.0_ki*abb28(79)-4.0_ki*abb28(117)
      abb28(79)=abb28(14)*abb28(79)
      abb28(66)=abb28(66)+abb28(79)
      abb28(66)=spak1k2*abb28(66)
      abb28(79)=abb28(24)*abb28(154)
      abb28(93)=4.0_ki*abb28(60)
      abb28(93)=-abb28(130)*abb28(93)
      abb28(78)=abb28(78)*abb28(49)
      abb28(32)=-abb28(78)*abb28(32)
      abb28(37)=-abb28(37)*abb28(152)
      abb28(32)=abb28(32)+abb28(37)
      abb28(37)=abb28(153)*spbl5k2*abb28(32)
      abb28(99)=abb28(127)*abb28(172)
      abb28(112)=-spal6k7*abb28(156)
      abb28(112)=3.0_ki*abb28(99)+abb28(112)
      abb28(112)=spak1l6*abb28(112)
      abb28(37)=abb28(37)+abb28(93)+abb28(79)+abb28(112)
      abb28(37)=spbl6k3*abb28(37)
      abb28(79)=abb28(24)*abb28(136)
      abb28(93)=-abb28(137)*abb28(156)
      abb28(30)=abb28(30)+3.0_ki*abb28(129)-4.0_ki*abb28(77)+abb28(79)+abb28(93)
      abb28(30)=spbl5k3*abb28(30)
      abb28(71)=abb28(13)*abb28(71)
      abb28(50)=abb28(50)*abb28(161)
      abb28(77)=-abb28(11)*abb28(120)*abb28(34)
      abb28(50)=abb28(50)+abb28(77)
      abb28(50)=abb28(14)*abb28(50)
      abb28(50)=abb28(71)+abb28(50)
      abb28(50)=abb28(50)*abb28(160)
      abb28(71)=-spal6k7*abb28(162)
      abb28(18)=-abb28(47)*abb28(18)
      abb28(77)=-abb28(18)*abb28(172)
      abb28(71)=abb28(71)+abb28(77)
      abb28(71)=abb28(71)*abb28(165)
      abb28(77)=-spak4l6*abb28(173)
      abb28(79)=abb28(166)*spal6k7
      abb28(93)=-abb28(8)*abb28(36)
      abb28(112)=abb28(93)*spak1k4
      abb28(117)=abb28(112)*abb28(172)
      abb28(79)=abb28(79)-abb28(117)
      abb28(117)=spak4l5*spbl5k2
      abb28(121)=-abb28(79)*abb28(117)
      abb28(71)=abb28(121)+abb28(77)+abb28(71)
      abb28(71)=abb28(171)*abb28(71)
      abb28(77)=abb28(178)*abb28(8)
      abb28(121)=abb28(177)*abb28(46)
      abb28(31)=-abb28(47)*abb28(31)
      abb28(31)=-abb28(31)+abb28(77)-abb28(121)
      abb28(77)=-spal5k7*abb28(31)
      abb28(121)=abb28(183)*abb28(8)
      abb28(122)=abb28(180)*abb28(46)
      abb28(121)=abb28(121)-abb28(122)
      abb28(122)=abb28(121)*abb28(190)
      abb28(47)=abb28(174)*abb28(47)
      abb28(126)=-abb28(47)*abb28(147)
      abb28(77)=abb28(126)+abb28(122)+abb28(77)+abb28(182)
      abb28(77)=spbl5k2*abb28(77)
      abb28(122)=spal6k7*abb28(186)
      abb28(126)=-abb28(189)*abb28(185)
      abb28(129)=abb28(181)*abb28(141)
      abb28(77)=abb28(77)+abb28(129)+abb28(122)+abb28(126)
      abb28(77)=spak2k4*abb28(77)
      abb28(122)=-abb28(148)*abb28(124)
      abb28(122)=abb28(192)+abb28(122)
      abb28(122)=abb28(15)*abb28(122)
      abb28(126)=-abb28(13)*abb28(144)
      abb28(129)=-abb28(13)*abb28(210)
      abb28(129)=abb28(129)+abb28(196)
      abb28(129)=abb28(129)*abb28(109)
      abb28(122)=abb28(129)+abb28(126)+abb28(122)
      abb28(122)=abb28(122)*abb28(149)
      abb28(29)=abb28(29)*abb28(49)
      abb28(49)=abb28(143)*mB
      abb28(29)=abb28(29)-abb28(49)
      abb28(29)=abb28(29)*abb28(150)
      abb28(49)=abb28(194)*abb28(104)*abb28(115)
      abb28(29)=abb28(29)-abb28(49)
      abb28(49)=abb28(15)*abb28(29)
      abb28(104)=abb28(14)*abb28(188)*abb28(115)
      abb28(115)=abb28(175)*abb28(46)
      abb28(126)=abb28(176)*abb28(8)
      abb28(104)=-abb28(104)+abb28(115)-abb28(126)
      abb28(109)=abb28(109)*abb28(104)
      abb28(38)=-abb28(106)*abb28(38)
      abb28(106)=abb28(38)*abb28(14)
      abb28(49)=abb28(109)+abb28(106)+abb28(49)
      abb28(49)=abb28(197)*spbl5k2*abb28(49)
      abb28(96)=-abb28(13)*abb28(96)
      abb28(88)=-abb28(38)-abb28(88)
      abb28(88)=abb28(14)*abb28(88)
      abb28(88)=abb28(96)+abb28(88)
      abb28(88)=abb28(88)*abb28(198)
      abb28(85)=abb28(13)*abb28(85)
      abb28(38)=abb28(111)+abb28(38)
      abb28(38)=abb28(14)*abb28(38)
      abb28(38)=abb28(85)+abb28(38)
      abb28(38)=abb28(38)*abb28(94)
      abb28(35)=abb28(162)*abb28(35)
      abb28(85)=-spal5k7*abb28(35)
      abb28(85)=abb28(85)-abb28(138)
      abb28(85)=spak1k4*abb28(85)
      abb28(94)=abb28(147)*abb28(112)
      abb28(85)=abb28(85)+abb28(94)
      abb28(85)=spbl5k2*abb28(85)
      abb28(94)=-spal6k7*abb28(201)
      abb28(96)=-abb28(166)*abb28(141)
      abb28(85)=abb28(85)+abb28(94)+abb28(96)
      abb28(85)=abb28(85)*abb28(202)
      abb28(94)=spak1l6*abb28(54)
      abb28(96)=-spak1l5*abb28(43)
      abb28(65)=-abb28(65)+abb28(94)+abb28(96)
      abb28(65)=abb28(65)*abb28(203)
      abb28(92)=abb28(92)*abb28(13)
      abb28(92)=abb28(92)-abb28(106)
      abb28(94)=-abb28(92)*abb28(204)
      abb28(96)=-abb28(64)*abb28(206)
      abb28(106)=-abb28(55)*abb28(208)
      abb28(56)=abb28(56)*abb28(211)
      abb28(109)=spal6k7*abb28(22)
      abb28(22)=abb28(22)*abb28(8)
      abb28(111)=abb28(22)*abb28(172)
      abb28(109)=abb28(109)+abb28(111)
      abb28(109)=spbk7k3*abb28(109)
      abb28(30)=abb28(94)+abb28(109)+abb28(65)+abb28(38)+abb28(88)+abb28(50)+ab&
      &b28(49)+abb28(122)+abb28(30)+abb28(37)+abb28(66)+abb28(85)+abb28(56)+4.0&
      &_ki*abb28(82)+abb28(77)+abb28(71)+abb28(106)+abb28(96)
      abb28(30)=4.0_ki*abb28(30)
      abb28(37)=-32.0_ki*abb28(55)
      abb28(38)=16.0_ki*abb28(55)
      abb28(27)=-abb28(27)*abb28(124)
      abb28(27)=abb28(27)+abb28(29)
      abb28(27)=abb28(27)*abb28(89)
      abb28(20)=abb28(13)*abb28(20)
      abb28(20)=abb28(20)+abb28(104)
      abb28(20)=abb28(20)*abb28(100)
      abb28(20)=abb28(20)+abb28(27)-abb28(92)
      abb28(20)=16.0_ki*abb28(20)
      abb28(27)=-32.0_ki*abb28(64)
      abb28(24)=-16.0_ki*abb28(24)
      abb28(29)=spak1l6*abb28(181)
      abb28(49)=-abb28(47)*abb28(34)
      abb28(29)=abb28(49)+abb28(29)+abb28(31)
      abb28(29)=spak2k4*abb28(29)
      abb28(21)=-abb28(13)*abb28(21)
      abb28(31)=abb28(14)*abb28(102)
      abb28(21)=abb28(21)+abb28(31)
      abb28(21)=spak1k2*abb28(21)
      abb28(18)=spak4k7*abb28(18)
      abb28(31)=abb28(93)*abb28(117)
      abb28(18)=abb28(31)+abb28(18)
      abb28(18)=abb28(125)*abb28(18)
      abb28(31)=abb28(127)*abb28(131)
      abb28(36)=-spak1l6*abb28(36)
      abb28(35)=abb28(36)+abb28(35)
      abb28(35)=spak1k4*abb28(35)
      abb28(36)=abb28(34)*abb28(112)
      abb28(35)=abb28(35)+abb28(36)
      abb28(35)=abb28(35)*abb28(202)
      abb28(36)=-spak4l6*abb28(142)
      abb28(22)=-spbk7k3*abb28(22)
      abb28(18)=abb28(22)+abb28(36)+abb28(21)+abb28(35)+abb28(29)+abb28(31)+abb&
      &28(18)
      abb28(18)=8.0_ki*abb28(18)
      abb28(21)=-abb28(28)*abb28(95)
      abb28(21)=abb28(108)+abb28(21)
      abb28(21)=abb28(21)*abb28(83)
      abb28(22)=spak1k7*abb28(108)
      abb28(28)=-abb28(119)*abb28(95)
      abb28(22)=abb28(22)+abb28(28)
      abb28(22)=abb28(22)*abb28(132)
      abb28(21)=abb28(21)+abb28(22)
      abb28(22)=-spbl6k3*abb28(32)
      abb28(28)=-spbl5k3*abb28(33)
      abb28(21)=abb28(28)+2.0_ki*abb28(21)+abb28(22)
      abb28(21)=16.0_ki*abb28(21)
      abb28(22)=-spbl5k3*abb28(32)
      abb28(28)=-spbl5k2*abb28(78)*abb28(87)
      abb28(22)=abb28(22)+abb28(28)
      abb28(22)=16.0_ki*abb28(22)
      abb28(28)=abb28(51)*abb28(161)
      abb28(29)=abb28(34)*abb28(64)
      abb28(28)=abb28(28)+abb28(29)
      abb28(28)=8.0_ki*abb28(28)
      abb28(29)=16.0_ki*abb28(171)
      abb28(31)=-abb28(167)*abb28(29)
      abb28(29)=-abb28(79)*abb28(29)
      abb28(32)=-spbk2k1*abb28(67)
      abb28(33)=spbl5k2*abb28(58)
      abb28(32)=abb28(33)+abb28(32)-abb28(75)
      abb28(32)=abb28(32)*abb28(81)
      abb28(33)=16.0_ki*abb28(70)
      abb28(34)=16.0_ki*abb28(43)
      abb28(35)=spbk2k1*abb28(63)
      abb28(36)=-spbl6k2*abb28(73)
      abb28(35)=abb28(36)+abb28(35)+abb28(62)
      abb28(35)=abb28(35)*abb28(81)
      abb28(36)=16.0_ki*abb28(40)
      abb28(40)=16.0_ki*abb28(54)
      abb28(43)=-spbk2k1*abb28(128)
      abb28(49)=-spal5k7*abb28(135)
      abb28(43)=abb28(159)+abb28(49)+abb28(43)
      abb28(43)=16.0_ki*abb28(43)
      abb28(49)=-spbk2k1*abb28(60)
      abb28(50)=-spal6k7*abb28(135)
      abb28(49)=abb28(99)+abb28(50)+abb28(49)
      abb28(49)=16.0_ki*abb28(49)
      abb28(50)=spbk2k1*abb28(90)
      abb28(51)=spbl6k2*abb28(110)
      abb28(50)=abb28(51)+abb28(50)-abb28(105)
      abb28(50)=abb28(50)*abb28(91)
      abb28(51)=spbk2k1*abb28(113)
      abb28(54)=spbl5k2*abb28(123)
      abb28(51)=abb28(54)+abb28(51)-abb28(118)
      abb28(51)=abb28(51)*abb28(114)
      abb28(54)=spbk2k1*abb28(97)
      abb28(54)=abb28(54)-abb28(80)
      abb28(50)=abb28(51)+2.0_ki*abb28(54)+abb28(50)
      abb28(50)=8.0_ki*abb28(50)
      abb28(51)=-abb28(13)*abb28(107)
      abb28(46)=abb28(72)*abb28(46)
      abb28(54)=abb28(57)*abb28(103)
      abb28(46)=abb28(46)-abb28(54)
      abb28(54)=abb28(14)*abb28(46)
      abb28(51)=abb28(51)+abb28(54)
      abb28(54)=spak2k7*abb28(11)
      abb28(51)=abb28(51)*abb28(54)
      abb28(55)=spbk2k1*abb28(184)
      abb28(56)=spal5k7*abb28(181)
      abb28(57)=-abb28(187)*abb28(116)
      abb28(55)=abb28(57)+abb28(56)+abb28(55)
      abb28(55)=spak2k4*abb28(55)
      abb28(56)=-abb28(167)*abb28(202)
      abb28(51)=abb28(51)+abb28(55)+abb28(56)
      abb28(51)=16.0_ki*abb28(51)
      abb28(46)=abb28(13)*abb28(46)
      abb28(55)=-abb28(14)*abb28(120)
      abb28(46)=abb28(46)+abb28(55)
      abb28(46)=abb28(46)*abb28(54)
      abb28(54)=spbk2k1*abb28(121)
      abb28(55)=spal6k7*abb28(181)
      abb28(47)=-abb28(47)*abb28(172)
      abb28(47)=abb28(47)+abb28(55)+abb28(54)
      abb28(47)=spak2k4*abb28(47)
      abb28(54)=-abb28(79)*abb28(202)
      abb28(46)=abb28(46)+abb28(47)+abb28(54)
      abb28(46)=16.0_ki*abb28(46)
      R2d28=abb28(19)
      rat2 = rat2 + R2d28
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='28' value='", &
          & R2d28, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd28h4