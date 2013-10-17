module     p0_dbaru_epnebbbarg_abbrevd336h2
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(156), public :: abb336
   complex(ki), public :: R2d336
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
      abb336(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb336(2)=1.0_ki/(mB**2-es67-es56+es567)
      abb336(3)=es234**(-1)
      abb336(4)=es567**(-1)
      abb336(5)=spak2l5**(-1)
      abb336(6)=spbl5k2**(-1)
      abb336(7)=spak2l6**(-1)
      abb336(8)=sqrt(mB**2)
      abb336(9)=1.0_ki/(es34+es567-es12-es234)
      abb336(10)=NC*c1
      abb336(10)=c2-abb336(10)
      abb336(11)=TR*gW
      abb336(10)=abb336(10)*abb336(11)**2*i_*CVDU*abb336(4)*abb336(2)
      abb336(11)=abb336(3)*abb336(1)
      abb336(12)=abb336(11)*spbk3k2
      abb336(13)=-abb336(12)*abb336(10)
      abb336(14)=abb336(13)*spal5e7
      abb336(15)=abb336(14)*spak3k4
      abb336(16)=spak1l5*spbe7l5
      abb336(17)=abb336(15)*abb336(16)
      abb336(18)=mB**2
      abb336(19)=abb336(18)*abb336(6)
      abb336(20)=-abb336(19)*abb336(13)
      abb336(21)=spak3k4*abb336(5)
      abb336(22)=abb336(21)*spak1k2
      abb336(23)=abb336(22)*abb336(20)
      abb336(24)=spbe7k2*spal5e7
      abb336(25)=abb336(23)*abb336(24)
      abb336(17)=abb336(17)-abb336(25)
      abb336(17)=abb336(17)*spbl6k3
      abb336(25)=spbl6k2*spak2k4
      abb336(26)=abb336(14)*abb336(25)
      abb336(27)=-abb336(1)*abb336(10)
      abb336(28)=spak1k4*abb336(9)
      abb336(29)=abb336(28)*spbl6k2
      abb336(30)=abb336(27)*abb336(29)
      abb336(31)=abb336(30)*spal5e7
      abb336(32)=abb336(31)*spbk3k1
      abb336(26)=abb336(26)-abb336(32)
      abb336(32)=abb336(26)*abb336(16)
      abb336(17)=abb336(17)-abb336(32)
      abb336(32)=spak1k2*abb336(7)
      abb336(33)=abb336(28)*spbe7k2
      abb336(34)=abb336(32)*abb336(33)
      abb336(19)=-abb336(19)*abb336(27)
      abb336(35)=abb336(19)*spbk3k1
      abb336(36)=abb336(34)*abb336(35)
      abb336(37)=abb336(20)*spak2k4
      abb336(38)=abb336(32)*spbe7k2
      abb336(39)=abb336(38)*abb336(37)
      abb336(40)=abb336(19)*spbk4k3
      abb336(41)=abb336(33)*abb336(7)
      abb336(42)=abb336(41)*spak2k4
      abb336(43)=abb336(42)*abb336(40)
      abb336(36)=-abb336(36)+abb336(39)+abb336(43)
      abb336(39)=spae7k7*spbk7k2
      abb336(43)=abb336(36)*abb336(39)
      abb336(44)=-abb336(18)*abb336(27)
      abb336(45)=abb336(28)*abb336(7)
      abb336(46)=abb336(45)*abb336(24)
      abb336(47)=abb336(44)*abb336(46)
      abb336(48)=-mB*abb336(27)
      abb336(49)=abb336(45)*abb336(8)
      abb336(50)=abb336(48)*abb336(49)
      abb336(51)=abb336(50)*abb336(24)
      abb336(51)=abb336(51)-abb336(47)
      abb336(52)=abb336(51)*spak2k4
      abb336(53)=abb336(29)*abb336(5)
      abb336(54)=abb336(53)*abb336(19)
      abb336(55)=abb336(54)*spak2k4
      abb336(56)=abb336(55)*abb336(24)
      abb336(56)=abb336(56)+abb336(52)
      abb336(56)=abb336(56)*spbk4k3
      abb336(57)=-mB*abb336(10)
      abb336(12)=abb336(12)*abb336(6)
      abb336(58)=-abb336(12)*abb336(57)
      abb336(59)=abb336(8)*spbe7k2
      abb336(60)=abb336(59)*abb336(58)
      abb336(61)=abb336(60)*abb336(25)
      abb336(62)=-abb336(6)*abb336(48)
      abb336(63)=abb336(33)*abb336(8)
      abb336(64)=abb336(63)*abb336(62)
      abb336(65)=spbk3k1*spbl6k2
      abb336(66)=abb336(65)*abb336(64)
      abb336(61)=abb336(61)+abb336(66)
      abb336(66)=spbl6k3*spak3k4
      abb336(67)=abb336(66)*abb336(60)
      abb336(67)=abb336(67)-abb336(61)
      abb336(67)=abb336(67)*spak1e7
      abb336(68)=abb336(15)*spbl6k3
      abb336(68)=abb336(26)-abb336(68)
      abb336(68)=spbk7e7*abb336(68)
      abb336(69)=abb336(68)*spak1k7
      abb336(70)=-mB*abb336(13)
      abb336(71)=abb336(8)*abb336(7)
      abb336(72)=abb336(70)*abb336(71)
      abb336(73)=abb336(72)*abb336(24)
      abb336(74)=-abb336(18)*abb336(13)
      abb336(75)=abb336(24)*abb336(7)
      abb336(76)=abb336(74)*abb336(75)
      abb336(73)=abb336(73)-abb336(76)
      abb336(73)=abb336(73)*spak2k4
      abb336(77)=abb336(5)*spbl6k2
      abb336(78)=abb336(37)*abb336(77)
      abb336(79)=abb336(78)*abb336(24)
      abb336(80)=abb336(79)+abb336(73)
      abb336(80)=abb336(80)*spak1k2
      abb336(81)=abb336(54)*abb336(24)
      abb336(82)=abb336(81)+abb336(51)
      abb336(83)=spbk3k1*spak1k2
      abb336(82)=abb336(82)*abb336(83)
      abb336(84)=abb336(72)*spal5e7
      abb336(85)=spak3k4*spak1k2
      abb336(86)=abb336(84)*abb336(85)
      abb336(87)=abb336(86)*spbe7k3
      abb336(88)=abb336(85)*abb336(20)
      abb336(89)=abb336(88)*spbl5k3
      abb336(90)=abb336(89)*abb336(75)
      abb336(91)=abb336(31)*spbk4k3
      abb336(92)=spak4l5*spbe7l5
      abb336(93)=abb336(92)*abb336(91)
      abb336(94)=abb336(91)*spbk7e7
      abb336(95)=abb336(94)*spak4k7
      abb336(96)=spbk4k3*spbl6k2
      abb336(97)=abb336(96)*abb336(64)
      abb336(98)=abb336(97)*spak4e7
      abb336(99)=abb336(20)*spak3k4
      abb336(100)=abb336(38)*abb336(99)
      abb336(101)=spae7k7*abb336(100)*spbk7k3
      abb336(43)=-abb336(95)+abb336(98)-abb336(101)-abb336(87)+abb336(90)+abb33&
      &6(93)+abb336(43)+abb336(80)-abb336(82)+abb336(56)-abb336(67)+abb336(69)+&
      &abb336(17)
      abb336(56)=-2.0_ki*abb336(43)
      abb336(67)=mB**3
      abb336(69)=abb336(6)**2
      abb336(80)=abb336(67)*abb336(69)
      abb336(59)=-abb336(59)*abb336(80)*abb336(13)
      abb336(82)=spbl6k3*abb336(59)*abb336(21)
      abb336(63)=-abb336(63)*abb336(80)*abb336(27)
      abb336(80)=abb336(63)*abb336(77)
      abb336(87)=abb336(80)*spbk3k1
      abb336(90)=abb336(77)*spak2k4
      abb336(93)=abb336(59)*abb336(90)
      abb336(82)=-abb336(93)+abb336(82)+abb336(87)
      abb336(87)=2.0_ki*spak1e7
      abb336(82)=abb336(82)*abb336(87)
      abb336(95)=mB**4
      abb336(69)=abb336(95)*abb336(69)
      abb336(98)=-abb336(69)*abb336(27)
      abb336(53)=abb336(98)*abb336(53)
      abb336(101)=abb336(27)*abb336(6)
      abb336(102)=-abb336(67)*abb336(101)
      abb336(49)=abb336(102)*abb336(49)
      abb336(49)=abb336(49)+abb336(53)
      abb336(53)=-abb336(24)*abb336(49)
      abb336(101)=abb336(46)*abb336(95)*abb336(101)
      abb336(53)=2.0_ki*abb336(101)+abb336(53)
      abb336(103)=spak2k4*spbk4k3*abb336(5)
      abb336(104)=abb336(83)*abb336(5)
      abb336(103)=abb336(103)-abb336(104)
      abb336(53)=abb336(53)*abb336(103)
      abb336(104)=-abb336(12)*abb336(10)*abb336(95)
      abb336(105)=2.0_ki*abb336(75)
      abb336(106)=abb336(104)*abb336(105)
      abb336(12)=-abb336(12)*abb336(10)*abb336(67)
      abb336(107)=abb336(12)*abb336(71)
      abb336(108)=abb336(107)*abb336(24)
      abb336(106)=abb336(106)+abb336(108)
      abb336(106)=abb336(106)*spak2k4
      abb336(109)=-abb336(69)*abb336(13)
      abb336(110)=abb336(109)*abb336(24)
      abb336(111)=abb336(110)*abb336(90)
      abb336(106)=abb336(106)-abb336(111)
      abb336(111)=spak1k2*abb336(5)
      abb336(106)=abb336(106)*abb336(111)
      abb336(34)=spbk3k1*abb336(34)
      abb336(112)=spbk4k3*abb336(42)
      abb336(34)=-abb336(34)+abb336(112)
      abb336(34)=abb336(34)*abb336(98)*abb336(5)
      abb336(38)=abb336(38)*abb336(109)
      abb336(112)=spak2k4*abb336(38)*abb336(5)
      abb336(34)=abb336(112)+abb336(34)
      abb336(112)=2.0_ki*abb336(39)
      abb336(113)=abb336(34)*abb336(112)
      abb336(110)=abb336(85)*abb336(110)*abb336(5)**2
      abb336(114)=abb336(110)*spbl6k3
      abb336(53)=abb336(106)-abb336(82)+abb336(113)+abb336(114)+abb336(53)
      abb336(82)=es71+es12-es712
      abb336(53)=-abb336(53)*abb336(82)
      abb336(106)=abb336(54)*spbk3k1
      abb336(113)=abb336(21)*abb336(20)
      abb336(114)=abb336(113)*spbl6k3
      abb336(106)=abb336(114)+abb336(106)-abb336(78)
      abb336(115)=spbk7k2*spal5k7
      abb336(116)=abb336(16)*abb336(115)
      abb336(117)=spak1k7*spbk7k2
      abb336(118)=spbk7e7*spal5k7
      abb336(119)=-abb336(118)*abb336(117)
      abb336(116)=abb336(119)+abb336(116)
      abb336(106)=abb336(106)*abb336(116)
      abb336(11)=abb336(11)*spbk3k2**2
      abb336(69)=-abb336(10)*abb336(69)*abb336(11)
      abb336(116)=abb336(21)*abb336(32)
      abb336(119)=abb336(69)*abb336(116)
      abb336(120)=spak4l5*spbk4k3*abb336(54)
      abb336(120)=abb336(120)-abb336(119)
      abb336(121)=abb336(115)*spbe7l5
      abb336(120)=abb336(121)*abb336(120)
      abb336(11)=abb336(6)*abb336(11)
      abb336(10)=abb336(10)*abb336(11)
      abb336(67)=-abb336(67)*abb336(10)
      abb336(122)=abb336(67)*abb336(22)
      abb336(123)=-abb336(71)*abb336(118)*abb336(122)
      abb336(106)=abb336(123)+abb336(120)+abb336(106)
      abb336(106)=spak2e7*abb336(106)
      abb336(120)=abb336(80)*abb336(82)
      abb336(123)=abb336(8)**2
      abb336(124)=abb336(123)*abb336(118)
      abb336(125)=-abb336(30)*abb336(124)
      abb336(62)=abb336(62)*abb336(8)
      abb336(126)=abb336(62)*abb336(29)
      abb336(127)=-abb336(121)*abb336(126)
      abb336(120)=abb336(127)+abb336(125)+abb336(120)
      abb336(120)=spak4e7*spbk4k3*abb336(120)
      abb336(125)=abb336(99)*abb336(32)
      abb336(127)=-abb336(123)*abb336(39)*abb336(125)
      abb336(128)=-spak2e7*abb336(22)*abb336(115)*abb336(107)
      abb336(129)=spbk7l5*spal5k7
      abb336(130)=abb336(86)*abb336(129)
      abb336(127)=abb336(128)+abb336(127)+abb336(130)
      abb336(127)=spbe7k3*abb336(127)
      abb336(106)=abb336(127)+abb336(106)+abb336(120)
      abb336(120)=abb336(37)*abb336(7)
      abb336(127)=abb336(120)*spbe7k2
      abb336(128)=abb336(123)*abb336(127)
      abb336(93)=abb336(128)+abb336(93)
      abb336(93)=spak1k2*abb336(93)
      abb336(128)=abb336(90)*abb336(63)
      abb336(130)=abb336(123)*abb336(19)
      abb336(42)=abb336(42)*abb336(130)
      abb336(42)=abb336(42)+abb336(128)
      abb336(42)=spbk4k3*abb336(42)
      abb336(128)=-abb336(41)*abb336(130)
      abb336(80)=abb336(128)-abb336(80)
      abb336(80)=abb336(80)*abb336(83)
      abb336(42)=abb336(80)+abb336(93)+abb336(42)
      abb336(80)=3.0_ki*abb336(39)
      abb336(42)=abb336(42)*abb336(80)
      abb336(93)=abb336(74)*abb336(7)
      abb336(128)=abb336(93)*spal5e7
      abb336(130)=2.0_ki*abb336(128)+abb336(84)
      abb336(130)=spak2k4*abb336(130)
      abb336(131)=abb336(78)*spal5e7
      abb336(130)=abb336(130)+abb336(131)
      abb336(130)=spak1k2*abb336(130)
      abb336(132)=abb336(44)*abb336(45)
      abb336(133)=abb336(132)*spal5e7
      abb336(134)=abb336(50)*spal5e7
      abb336(135)=abb336(134)+2.0_ki*abb336(133)
      abb336(136)=spak2k4*abb336(135)
      abb336(137)=spal5e7*abb336(55)
      abb336(136)=abb336(136)+abb336(137)
      abb336(136)=spbk4k3*abb336(136)
      abb336(137)=abb336(54)*spal5e7
      abb336(135)=-abb336(137)-abb336(135)
      abb336(135)=abb336(135)*abb336(83)
      abb336(130)=abb336(135)+abb336(130)+abb336(136)
      abb336(130)=abb336(130)*abb336(115)
      abb336(135)=abb336(37)*abb336(32)
      abb336(136)=abb336(40)*abb336(45)
      abb336(138)=abb336(136)*spak2k4
      abb336(45)=abb336(35)*abb336(45)
      abb336(139)=abb336(45)*spak1k2
      abb336(135)=-abb336(139)+abb336(135)+abb336(138)
      abb336(138)=spae7k7*spal5k7*abb336(135)*spbk7k2**2
      abb336(130)=abb336(130)-2.0_ki*abb336(138)
      abb336(130)=spbe7l5*abb336(130)
      abb336(58)=abb336(58)*abb336(8)
      abb336(138)=abb336(58)*abb336(25)
      abb336(139)=abb336(126)*spbk3k1
      abb336(138)=abb336(138)+abb336(139)
      abb336(140)=-abb336(138)*abb336(121)
      abb336(141)=abb336(30)*spbk3k1
      abb336(142)=abb336(25)*abb336(13)
      abb336(141)=abb336(141)-abb336(142)
      abb336(142)=-abb336(141)*abb336(124)
      abb336(124)=-abb336(13)*abb336(124)
      abb336(143)=abb336(58)*abb336(121)
      abb336(124)=abb336(143)+abb336(124)
      abb336(124)=abb336(124)*abb336(66)
      abb336(124)=abb336(124)+abb336(140)+abb336(142)
      abb336(87)=abb336(124)*abb336(87)
      abb336(124)=2.0_ki*abb336(24)
      abb336(140)=-abb336(72)*abb336(124)
      abb336(76)=-abb336(76)+abb336(140)
      abb336(76)=spak2k4*abb336(76)
      abb336(140)=abb336(78)*abb336(124)
      abb336(76)=abb336(76)-abb336(140)
      abb336(76)=spak1k2*abb336(76)
      abb336(142)=abb336(124)*abb336(50)
      abb336(47)=abb336(142)+abb336(47)
      abb336(142)=-spak2k4*abb336(47)
      abb336(143)=abb336(55)*abb336(124)
      abb336(142)=abb336(142)-abb336(143)
      abb336(142)=spbk4k3*abb336(142)
      abb336(144)=abb336(124)*abb336(54)
      abb336(47)=abb336(144)+abb336(47)
      abb336(47)=abb336(47)*abb336(83)
      abb336(47)=abb336(47)+abb336(76)+abb336(142)
      abb336(47)=spal5k7*abb336(47)
      abb336(61)=spae7k7*abb336(61)
      abb336(76)=spbe7l5*spal5k7
      abb336(142)=abb336(26)*abb336(76)
      abb336(61)=abb336(61)+abb336(142)
      abb336(61)=spak1l5*abb336(61)
      abb336(142)=abb336(15)*abb336(76)
      abb336(145)=-spae7k7*spak3k4*abb336(60)
      abb336(145)=abb336(145)-abb336(142)
      abb336(145)=spak1l5*abb336(145)
      abb336(146)=spal5k7*abb336(124)*abb336(23)
      abb336(145)=abb336(146)+abb336(145)
      abb336(145)=spbl6k3*abb336(145)
      abb336(47)=abb336(145)+abb336(47)+abb336(61)
      abb336(47)=spbk7l5*abb336(47)
      abb336(61)=2.0_ki*abb336(118)
      abb336(26)=-abb336(26)*abb336(61)
      abb336(145)=2.0_ki*spak3k4
      abb336(146)=abb336(118)*abb336(145)
      abb336(147)=abb336(14)*abb336(146)
      abb336(148)=abb336(58)*abb336(24)
      abb336(149)=abb336(148)*spak3k4
      abb336(147)=-abb336(149)+abb336(147)
      abb336(147)=spbl6k3*abb336(147)
      abb336(150)=abb336(25)*abb336(148)
      abb336(139)=abb336(24)*abb336(139)
      abb336(26)=abb336(147)+abb336(26)+abb336(150)+abb336(139)
      abb336(26)=spbk7l5*abb336(26)
      abb336(68)=abb336(123)*abb336(68)
      abb336(26)=abb336(26)+abb336(68)
      abb336(26)=spak1k7*abb336(26)
      abb336(68)=2.0_ki*abb336(21)
      abb336(68)=abb336(68)*abb336(38)*abb336(82)
      abb336(100)=-abb336(123)*abb336(100)
      abb336(68)=abb336(100)+abb336(68)
      abb336(68)=spae7k7*abb336(68)
      abb336(100)=abb336(39)*abb336(145)
      abb336(139)=abb336(100)*abb336(20)
      abb336(147)=abb336(139)*abb336(32)
      abb336(150)=-abb336(86)+abb336(147)
      abb336(150)=abb336(150)*abb336(76)
      abb336(108)=abb336(108)*abb336(22)
      abb336(151)=spak2k7*abb336(108)
      abb336(68)=abb336(151)+abb336(150)+abb336(68)
      abb336(68)=spbk7k3*abb336(68)
      abb336(150)=abb336(22)*abb336(105)*abb336(109)
      abb336(151)=-abb336(150)*abb336(82)
      abb336(145)=abb336(145)*abb336(32)
      abb336(152)=abb336(145)*abb336(20)
      abb336(153)=abb336(121)*spal5e7
      abb336(154)=-abb336(153)*abb336(152)
      abb336(155)=3.0_ki*abb336(118)
      abb336(86)=-abb336(155)*abb336(86)
      abb336(156)=abb336(75)*spbk7l5
      abb336(88)=spal5k7*abb336(88)*abb336(156)
      abb336(86)=abb336(88)+abb336(154)+abb336(86)+abb336(151)
      abb336(86)=spbl5k3*abb336(86)
      abb336(88)=-abb336(22)*abb336(59)*abb336(80)
      abb336(100)=abb336(100)*abb336(58)
      abb336(151)=-abb336(16)*abb336(100)
      abb336(153)=-abb336(23)*abb336(153)
      abb336(88)=abb336(151)+abb336(88)+abb336(153)
      abb336(88)=spbl6k3*abb336(88)
      abb336(151)=-spbk3k1*abb336(81)
      abb336(153)=-abb336(24)*abb336(114)
      abb336(79)=abb336(153)+abb336(79)+abb336(151)
      abb336(79)=spak1l5*abb336(79)
      abb336(69)=abb336(69)*abb336(75)*abb336(22)
      abb336(69)=abb336(69)+abb336(79)
      abb336(69)=spbk7l5*abb336(69)
      abb336(79)=abb336(71)*spal5e7
      abb336(122)=-spbk7e7*abb336(79)*abb336(122)
      abb336(69)=abb336(122)+abb336(69)
      abb336(69)=spak2k7*abb336(69)
      abb336(97)=spae7k7*abb336(97)
      abb336(91)=-abb336(76)*abb336(91)
      abb336(81)=-spak2k7*spbk4k3*abb336(81)
      abb336(81)=abb336(81)+abb336(97)+abb336(91)
      abb336(81)=spbk7l5*abb336(81)
      abb336(91)=abb336(126)*spbk4k3
      abb336(97)=spbe7l5*abb336(112)*abb336(91)
      abb336(81)=abb336(97)+abb336(81)
      abb336(81)=spak4l5*abb336(81)
      abb336(97)=2.0_ki*spbk4k3
      abb336(118)=abb336(97)*abb336(118)
      abb336(122)=abb336(31)*abb336(118)
      abb336(91)=abb336(24)*abb336(91)
      abb336(91)=abb336(91)+abb336(122)
      abb336(91)=spbk7l5*abb336(91)
      abb336(122)=-spbk7k2*abb336(54)*abb336(118)*spak2e7
      abb336(94)=-abb336(123)*abb336(94)
      abb336(91)=abb336(122)+abb336(94)+abb336(91)
      abb336(91)=spak4k7*abb336(91)
      abb336(94)=abb336(138)*abb336(16)*abb336(112)
      abb336(122)=spbk4k3*spak2k4
      abb336(122)=-abb336(83)+abb336(122)
      abb336(122)=abb336(134)*abb336(122)
      abb336(123)=spak1k2*spak2k4*abb336(84)
      abb336(122)=abb336(123)+abb336(122)
      abb336(123)=abb336(155)*spbl5k2
      abb336(122)=abb336(122)*abb336(123)
      abb336(26)=abb336(122)+abb336(91)+abb336(86)+abb336(68)+abb336(81)+abb336&
      &(69)+abb336(26)+abb336(47)+abb336(87)+abb336(88)+abb336(94)+abb336(42)+a&
      &bb336(130)+abb336(53)+2.0_ki*abb336(106)
      abb336(26)=2.0_ki*abb336(26)
      abb336(42)=5.0_ki*abb336(72)
      abb336(47)=3.0_ki*abb336(93)-abb336(42)
      abb336(47)=spak2k4*abb336(47)
      abb336(47)=abb336(47)-2.0_ki*abb336(78)
      abb336(47)=spak1k2*abb336(47)
      abb336(53)=-3.0_ki*abb336(132)+5.0_ki*abb336(50)
      abb336(68)=-spak2k4*abb336(53)
      abb336(68)=abb336(68)-2.0_ki*abb336(55)
      abb336(68)=spbk4k3*abb336(68)
      abb336(53)=2.0_ki*abb336(54)+abb336(53)
      abb336(53)=abb336(53)*abb336(83)
      abb336(69)=-spbl5k3*abb336(152)
      abb336(47)=abb336(69)+abb336(53)+abb336(47)+abb336(68)
      abb336(47)=abb336(115)*abb336(47)
      abb336(53)=abb336(7)*abb336(67)
      abb336(18)=-abb336(18)*abb336(10)
      abb336(67)=abb336(18)*abb336(71)
      abb336(53)=-2.0_ki*abb336(53)-3.0_ki*abb336(67)
      abb336(53)=abb336(8)*abb336(53)
      abb336(42)=-abb336(93)+abb336(42)
      abb336(67)=spbk7k3*spal5k7
      abb336(42)=abb336(42)*abb336(67)
      abb336(10)=-abb336(7)*abb336(95)*abb336(10)
      abb336(10)=abb336(42)+abb336(10)+abb336(53)
      abb336(10)=abb336(85)*abb336(10)
      abb336(42)=3.0_ki*abb336(8)
      abb336(53)=abb336(13)*abb336(42)
      abb336(53)=-abb336(53)+2.0_ki*abb336(70)
      abb336(53)=abb336(53)*abb336(8)
      abb336(53)=abb336(53)-abb336(74)
      abb336(68)=-abb336(53)*abb336(25)
      abb336(27)=abb336(27)*abb336(28)
      abb336(42)=abb336(42)*abb336(27)
      abb336(48)=abb336(48)*abb336(28)
      abb336(42)=-abb336(42)+2.0_ki*abb336(48)
      abb336(42)=abb336(42)*abb336(8)
      abb336(44)=abb336(44)*abb336(28)
      abb336(42)=abb336(42)-abb336(44)
      abb336(44)=abb336(42)*abb336(65)
      abb336(44)=abb336(68)+abb336(44)
      abb336(44)=spak1l5*abb336(44)
      abb336(68)=-abb336(20)+5.0_ki*abb336(58)
      abb336(69)=abb336(66)-abb336(25)
      abb336(68)=abb336(68)*abb336(69)
      abb336(69)=abb336(19)*abb336(28)
      abb336(74)=abb336(62)*abb336(28)
      abb336(81)=abb336(69)+5.0_ki*abb336(74)
      abb336(86)=-abb336(81)*abb336(65)
      abb336(68)=abb336(86)+abb336(68)
      abb336(68)=abb336(68)*abb336(117)
      abb336(42)=abb336(42)*abb336(96)
      abb336(86)=-abb336(30)*abb336(97)*abb336(129)
      abb336(42)=abb336(42)+abb336(86)
      abb336(42)=spak4l5*abb336(42)
      abb336(86)=-2.0_ki*abb336(82)
      abb336(86)=abb336(119)*abb336(86)
      abb336(87)=spak1l5*spak3k4
      abb336(53)=abb336(53)*abb336(87)
      abb336(88)=abb336(115)*abb336(23)
      abb336(53)=2.0_ki*abb336(88)+abb336(53)
      abb336(53)=spbl6k3*abb336(53)
      abb336(88)=abb336(66)*abb336(13)
      abb336(88)=abb336(88)+abb336(141)
      abb336(91)=spak1l5*abb336(88)
      abb336(94)=-abb336(91)*abb336(129)
      abb336(81)=-spak4k7*spbk7k2*abb336(81)*abb336(96)
      abb336(10)=abb336(81)+abb336(42)+abb336(68)+2.0_ki*abb336(94)+abb336(53)+&
      &abb336(44)+abb336(86)+abb336(47)+abb336(10)
      abb336(10)=4.0_ki*abb336(10)
      abb336(42)=abb336(13)*abb336(146)
      abb336(44)=abb336(20)*spbe7k2
      abb336(47)=abb336(44)+abb336(60)
      abb336(53)=abb336(47)*spak3k4
      abb336(42)=abb336(42)-abb336(53)
      abb336(42)=abb336(42)*spbl6k3
      abb336(68)=abb336(47)*abb336(25)
      abb336(81)=abb336(141)*abb336(61)
      abb336(19)=abb336(19)*abb336(33)
      abb336(86)=abb336(19)-abb336(64)
      abb336(94)=abb336(86)*abb336(65)
      abb336(42)=-abb336(94)+abb336(42)+abb336(68)+abb336(81)
      abb336(42)=abb336(42)*spak1e7
      abb336(68)=abb336(118)*abb336(30)
      abb336(81)=abb336(86)*abb336(96)
      abb336(68)=abb336(68)-abb336(81)
      abb336(68)=abb336(68)*spak4e7
      abb336(81)=abb336(128)+abb336(84)
      abb336(94)=abb336(81)*abb336(85)
      abb336(94)=abb336(94)-abb336(147)
      abb336(94)=abb336(94)*spbe7k3
      abb336(36)=abb336(36)*abb336(112)
      abb336(51)=abb336(144)+abb336(51)
      abb336(51)=abb336(51)*abb336(83)
      abb336(73)=abb336(140)+abb336(73)
      abb336(73)=abb336(73)*spak1k2
      abb336(52)=abb336(143)+abb336(52)
      abb336(52)=abb336(52)*spbk4k3
      abb336(31)=abb336(31)*abb336(92)*abb336(97)
      abb336(89)=abb336(89)*abb336(105)
      abb336(17)=abb336(52)+abb336(42)+abb336(89)+abb336(31)-abb336(36)-abb336(&
      &51)+abb336(73)+abb336(68)-abb336(94)+2.0_ki*abb336(17)
      abb336(17)=4.0_ki*abb336(17)
      abb336(30)=abb336(30)*spbk4k3
      abb336(31)=abb336(30)*spak4l5
      abb336(31)=abb336(91)+abb336(31)
      abb336(36)=abb336(18)*spak3k4
      abb336(32)=abb336(32)*abb336(36)
      abb336(32)=abb336(32)+abb336(31)
      abb336(32)=32.0_ki*abb336(32)
      abb336(42)=abb336(18)*abb336(145)
      abb336(31)=abb336(42)+abb336(31)
      abb336(31)=16.0_ki*abb336(31)
      abb336(42)=abb336(109)*spbe7k2
      abb336(42)=abb336(42)+abb336(59)
      abb336(51)=abb336(42)*abb336(90)
      abb336(52)=abb336(98)*abb336(33)
      abb336(52)=abb336(52)+abb336(63)
      abb336(52)=abb336(52)*abb336(77)
      abb336(33)=abb336(33)*abb336(102)*abb336(71)
      abb336(33)=abb336(52)+abb336(33)
      abb336(52)=-spbk3k1*abb336(33)
      abb336(54)=abb336(54)+abb336(50)
      abb336(59)=abb336(54)*spbk3k1
      abb336(63)=abb336(72)*spak2k4
      abb336(59)=abb336(78)+abb336(63)-abb336(59)
      abb336(63)=abb336(59)*abb336(61)
      abb336(42)=-abb336(42)*abb336(21)
      abb336(68)=-abb336(61)*abb336(113)
      abb336(42)=abb336(42)+abb336(68)
      abb336(42)=spbl6k3*abb336(42)
      abb336(68)=abb336(107)*spbe7k2
      abb336(71)=-spak2k4*abb336(68)
      abb336(42)=abb336(42)+abb336(63)+abb336(52)+abb336(71)+abb336(51)
      abb336(42)=spak1e7*abb336(42)
      abb336(49)=abb336(49)*abb336(124)
      abb336(49)=abb336(49)+abb336(101)
      abb336(49)=abb336(49)*abb336(103)
      abb336(51)=abb336(104)*abb336(75)
      abb336(52)=-abb336(124)*abb336(107)
      abb336(51)=abb336(51)+abb336(52)
      abb336(51)=spak2k4*abb336(51)
      abb336(52)=abb336(109)*abb336(90)*abb336(124)
      abb336(51)=abb336(51)+abb336(52)
      abb336(51)=abb336(51)*abb336(111)
      abb336(34)=abb336(34)*abb336(39)
      abb336(45)=abb336(45)-abb336(120)
      abb336(52)=abb336(45)*abb336(112)
      abb336(63)=abb336(128)-abb336(84)
      abb336(71)=abb336(63)*spak2k4
      abb336(52)=abb336(52)+abb336(71)
      abb336(71)=abb336(133)-abb336(134)
      abb336(73)=-abb336(71)+2.0_ki*abb336(137)
      abb336(84)=-spbk3k1*abb336(73)
      abb336(84)=abb336(84)+2.0_ki*abb336(131)-abb336(52)
      abb336(84)=abb336(84)*abb336(16)
      abb336(89)=abb336(81)*spak2k4
      abb336(90)=abb336(133)+abb336(134)
      abb336(91)=-spbk3k1*abb336(90)
      abb336(91)=abb336(89)+abb336(91)
      abb336(91)=spbk7e7*abb336(91)
      abb336(92)=abb336(35)*abb336(46)
      abb336(75)=abb336(37)*abb336(75)
      abb336(75)=abb336(75)-abb336(92)
      abb336(75)=abb336(75)*spbk7l5
      abb336(91)=abb336(91)-abb336(75)
      abb336(91)=spak1k7*abb336(91)
      abb336(92)=spbk7l5*spae7k7
      abb336(94)=abb336(40)*abb336(92)*abb336(41)
      abb336(73)=-spbk4k3*abb336(73)
      abb336(95)=abb336(136)*abb336(112)
      abb336(73)=abb336(73)-abb336(95)
      abb336(73)=spbe7l5*abb336(73)
      abb336(73)=abb336(73)-abb336(94)
      abb336(73)=spak4l5*abb336(73)
      abb336(33)=-spbk4k3*abb336(33)
      abb336(98)=abb336(118)*abb336(54)
      abb336(33)=abb336(33)-abb336(98)
      abb336(33)=spak4e7*abb336(33)
      abb336(101)=abb336(7)*spal5e7*abb336(104)
      abb336(12)=abb336(12)*abb336(79)
      abb336(12)=abb336(101)+abb336(12)
      abb336(12)=abb336(12)*abb336(22)
      abb336(22)=abb336(109)*abb336(112)*abb336(116)
      abb336(12)=abb336(12)+abb336(22)
      abb336(12)=spbe7k3*abb336(12)
      abb336(22)=spbk7l5*abb336(40)*abb336(46)
      abb336(46)=spbk7e7*spbk4k3
      abb336(79)=-abb336(90)*abb336(46)
      abb336(79)=abb336(79)+abb336(22)
      abb336(79)=spak4k7*abb336(79)
      abb336(101)=-spal5e7*abb336(16)*abb336(113)
      abb336(101)=-abb336(110)+abb336(101)
      abb336(101)=spbl6k3*abb336(101)
      abb336(41)=abb336(41)*abb336(35)
      abb336(41)=abb336(41)-abb336(127)
      abb336(41)=abb336(41)*abb336(92)
      abb336(102)=-spak1l5*abb336(41)
      abb336(103)=spbl5k3*abb336(150)
      abb336(12)=abb336(79)+abb336(103)+abb336(12)+abb336(33)+abb336(73)+abb336&
      &(91)+abb336(102)+abb336(42)+2.0_ki*abb336(101)+abb336(84)+abb336(34)+abb&
      &336(51)+abb336(49)
      abb336(12)=4.0_ki*abb336(12)
      abb336(33)=abb336(93)-abb336(72)
      abb336(34)=abb336(33)*spak2k4
      abb336(42)=abb336(34)-abb336(78)
      abb336(49)=abb336(54)-abb336(132)
      abb336(51)=-spbk3k1*abb336(49)
      abb336(51)=abb336(114)-abb336(51)+abb336(42)
      abb336(51)=-2.0_ki*abb336(51)
      abb336(51)=spak1l5*abb336(51)
      abb336(45)=2.0_ki*abb336(45)
      abb336(54)=spak1k7*abb336(45)
      abb336(73)=2.0_ki*abb336(136)
      abb336(78)=spak4k7*abb336(73)
      abb336(54)=abb336(78)+abb336(54)
      abb336(54)=spbk7k2*abb336(54)
      abb336(78)=-spak4l5*abb336(49)*abb336(97)
      abb336(51)=abb336(78)+abb336(119)+abb336(51)+abb336(54)
      abb336(51)=16.0_ki*abb336(51)
      abb336(43)=4.0_ki*abb336(43)
      abb336(54)=spbk7k2*abb336(135)
      abb336(78)=-spbk7k3*abb336(125)
      abb336(54)=abb336(54)+abb336(78)
      abb336(54)=8.0_ki*abb336(54)
      abb336(78)=-spak1k7*abb336(88)
      abb336(30)=-spak4k7*abb336(30)
      abb336(30)=abb336(78)+abb336(30)
      abb336(30)=8.0_ki*abb336(30)
      abb336(78)=8.0_ki*abb336(85)*abb336(72)
      abb336(42)=spak1k2*abb336(42)
      abb336(50)=abb336(132)-abb336(50)
      abb336(79)=spak2k4*abb336(50)
      abb336(55)=abb336(79)-abb336(55)
      abb336(55)=spbk4k3*abb336(55)
      abb336(49)=abb336(49)*abb336(83)
      abb336(23)=spbl6k3*abb336(23)
      abb336(79)=-spbl5k3*abb336(125)
      abb336(23)=abb336(79)+abb336(23)+abb336(49)+abb336(42)+abb336(55)
      abb336(23)=8.0_ki*abb336(23)
      abb336(42)=-abb336(123)+abb336(121)
      abb336(49)=spal5e7*abb336(27)
      abb336(55)=abb336(49)*spbk4k3
      abb336(42)=abb336(55)*abb336(42)
      abb336(28)=abb336(24)*abb336(28)
      abb336(79)=abb336(28)*abb336(5)
      abb336(83)=abb336(79)*abb336(40)
      abb336(84)=-abb336(83)*abb336(82)
      abb336(19)=-abb336(19)+3.0_ki*abb336(64)
      abb336(64)=spbk4k3*abb336(19)*abb336(39)
      abb336(42)=abb336(64)+abb336(84)+abb336(42)
      abb336(42)=2.0_ki*abb336(42)
      abb336(64)=16.0_ki*spbk4k3*abb336(115)*abb336(27)
      abb336(84)=abb336(90)+abb336(137)
      abb336(46)=abb336(84)*abb336(46)
      abb336(22)=abb336(46)-abb336(22)
      abb336(22)=spak2k7*abb336(22)
      abb336(46)=-spbk4k3*abb336(71)
      abb336(46)=abb336(46)+abb336(95)
      abb336(46)=spbe7l5*abb336(46)
      abb336(46)=abb336(46)+abb336(94)
      abb336(46)=spak2l5*abb336(46)
      abb336(85)=spae7k7*spbk4k3*abb336(86)
      abb336(83)=spak2k7*abb336(83)
      abb336(88)=-abb336(76)*abb336(55)
      abb336(83)=abb336(83)+abb336(85)+abb336(88)
      abb336(83)=spbk7l6*abb336(83)
      abb336(85)=spbe7l5*spal5e7
      abb336(40)=abb336(29)*abb336(40)*abb336(85)
      abb336(88)=spak2e7*abb336(98)
      abb336(90)=abb336(8)*spal5e7
      abb336(48)=abb336(48)*abb336(90)
      abb336(91)=-abb336(112)*abb336(74)
      abb336(91)=-abb336(48)+abb336(91)
      abb336(91)=spbe7l6*spbk4k3*abb336(91)
      abb336(28)=abb336(62)*abb336(28)
      abb336(62)=spbk4k3*abb336(28)
      abb336(55)=-abb336(155)*abb336(55)
      abb336(55)=abb336(62)+abb336(55)
      abb336(55)=spbl6l5*abb336(55)
      abb336(22)=abb336(55)+abb336(91)+abb336(83)+abb336(88)+abb336(46)+abb336(&
      &40)+abb336(22)
      abb336(22)=2.0_ki*abb336(22)
      abb336(40)=-spak2l5*abb336(50)
      abb336(46)=spbk7l6*spal5k7
      abb336(55)=-abb336(27)*abb336(46)
      abb336(40)=abb336(55)+abb336(40)
      abb336(40)=abb336(97)*abb336(40)
      abb336(55)=abb336(74)+2.0_ki*abb336(69)
      abb336(62)=abb336(55)*abb336(96)
      abb336(69)=-abb336(73)*abb336(82)
      abb336(40)=abb336(62)+abb336(69)+abb336(40)
      abb336(40)=8.0_ki*abb336(40)
      abb336(62)=abb336(139)*abb336(7)
      abb336(63)=abb336(63)*spak3k4
      abb336(62)=abb336(62)-abb336(63)
      abb336(16)=-abb336(62)*abb336(16)
      abb336(63)=spak3k4*abb336(68)
      abb336(68)=-abb336(72)*abb336(146)
      abb336(63)=abb336(63)+abb336(68)
      abb336(63)=spak1e7*abb336(63)
      abb336(38)=-abb336(21)*abb336(38)*abb336(80)
      abb336(68)=spbk7e7*spak3k4
      abb336(69)=-abb336(81)*abb336(68)
      abb336(73)=abb336(156)*abb336(99)
      abb336(69)=abb336(69)+abb336(73)
      abb336(69)=spak1k7*abb336(69)
      abb336(80)=abb336(99)*abb336(7)
      abb336(83)=spbe7k2*abb336(92)*abb336(80)
      abb336(88)=-spak1l5*abb336(83)
      abb336(16)=abb336(69)+abb336(88)+abb336(63)+abb336(16)+abb336(108)+abb336&
      &(38)
      abb336(16)=2.0_ki*abb336(16)
      abb336(38)=abb336(33)*abb336(87)
      abb336(63)=abb336(80)*abb336(117)
      abb336(38)=abb336(38)+abb336(63)
      abb336(38)=16.0_ki*abb336(38)
      abb336(44)=abb336(44)+3.0_ki*abb336(60)
      abb336(44)=spak2k4*abb336(44)
      abb336(19)=spbk3k1*abb336(19)
      abb336(19)=abb336(44)+abb336(19)
      abb336(19)=abb336(19)*abb336(39)
      abb336(39)=abb336(53)*spae7k7
      abb336(44)=spak2k7*abb336(113)*abb336(24)
      abb336(39)=abb336(44)+abb336(39)-abb336(142)
      abb336(44)=-spbk7k3*abb336(39)
      abb336(53)=abb336(61)*spak2e7
      abb336(60)=spak2k7*spbk7e7*spal5e7
      abb336(60)=abb336(53)+abb336(60)
      abb336(21)=abb336(18)*abb336(21)*abb336(60)
      abb336(60)=abb336(79)*abb336(35)
      abb336(24)=abb336(37)*abb336(24)*abb336(5)
      abb336(24)=abb336(24)-abb336(60)
      abb336(60)=abb336(24)*abb336(82)
      abb336(14)=abb336(14)*spak2k4
      abb336(49)=abb336(49)*spbk3k1
      abb336(14)=abb336(14)-abb336(49)
      abb336(49)=-abb336(14)*abb336(115)
      abb336(36)=spal5e7*abb336(36)
      abb336(36)=abb336(36)+abb336(49)
      abb336(36)=spbe7l5*abb336(36)
      abb336(49)=abb336(70)*abb336(90)
      abb336(61)=abb336(49)*spak3k4
      abb336(61)=abb336(61)-abb336(100)
      abb336(63)=spbe7k3*abb336(61)
      abb336(15)=abb336(155)*abb336(15)
      abb336(15)=abb336(15)+abb336(149)
      abb336(69)=-spbl5k3*abb336(15)
      abb336(70)=abb336(14)*abb336(123)
      abb336(19)=abb336(70)+abb336(69)+abb336(63)+abb336(44)+abb336(19)+abb336(&
      &36)+abb336(60)+abb336(21)
      abb336(19)=2.0_ki*abb336(19)
      abb336(11)=-abb336(8)*abb336(11)*abb336(57)
      abb336(21)=abb336(13)*abb336(67)
      abb336(11)=abb336(21)+abb336(11)+abb336(18)
      abb336(11)=spak3k4*abb336(11)
      abb336(18)=abb336(27)*spbk3k1
      abb336(21)=abb336(13)*spak2k4
      abb336(18)=abb336(18)-abb336(21)
      abb336(21)=abb336(18)*abb336(115)
      abb336(11)=abb336(21)+abb336(11)
      abb336(11)=16.0_ki*abb336(11)
      abb336(21)=spbe7l5*abb336(62)
      abb336(21)=abb336(21)+abb336(83)
      abb336(21)=spak2l5*abb336(21)
      abb336(27)=spbk7l6*abb336(39)
      abb336(36)=abb336(20)*abb336(77)
      abb336(39)=spal5e7*abb336(36)
      abb336(39)=abb336(39)+abb336(81)
      abb336(39)=abb336(39)*abb336(68)
      abb336(39)=abb336(39)-abb336(73)
      abb336(39)=spak2k7*abb336(39)
      abb336(36)=abb336(72)+abb336(36)
      abb336(36)=spak2e7*abb336(36)*abb336(146)
      abb336(44)=-spbe7l6*abb336(61)
      abb336(15)=-spbl6l5*abb336(15)
      abb336(57)=spbl6k2*abb336(99)*abb336(85)
      abb336(15)=abb336(15)+abb336(44)+abb336(27)+abb336(36)+abb336(21)+abb336(&
      &57)+abb336(39)
      abb336(15)=2.0_ki*abb336(15)
      abb336(21)=-abb336(58)+abb336(20)
      abb336(21)=spbl6k2*abb336(21)
      abb336(27)=-spak2l5*abb336(33)
      abb336(13)=-abb336(13)*abb336(46)
      abb336(13)=abb336(13)+abb336(27)+abb336(21)
      abb336(13)=spak3k4*abb336(13)
      abb336(21)=-abb336(80)*abb336(82)
      abb336(13)=abb336(21)+abb336(13)
      abb336(13)=16.0_ki*abb336(13)
      abb336(21)=-spak2k4*abb336(47)
      abb336(27)=spbk3k1*abb336(86)
      abb336(21)=abb336(21)+abb336(27)
      abb336(21)=spae7k7*abb336(21)
      abb336(27)=abb336(14)*abb336(76)
      abb336(24)=-spak2k7*abb336(24)
      abb336(21)=abb336(24)+abb336(21)+abb336(27)
      abb336(21)=spbk7l6*abb336(21)
      abb336(24)=spbk3k1*abb336(84)
      abb336(24)=abb336(24)-abb336(89)-abb336(131)
      abb336(24)=spbk7e7*abb336(24)
      abb336(24)=abb336(24)+abb336(75)
      abb336(24)=spak2k7*abb336(24)
      abb336(27)=-spbk3k1*abb336(71)
      abb336(27)=abb336(27)+abb336(52)
      abb336(27)=spbe7l5*abb336(27)
      abb336(27)=abb336(27)+abb336(41)
      abb336(27)=spak2l5*abb336(27)
      abb336(33)=-abb336(59)*abb336(53)
      abb336(36)=-spak2k4*abb336(58)
      abb336(39)=-spbk3k1*abb336(74)
      abb336(36)=abb336(36)+abb336(39)
      abb336(36)=abb336(36)*abb336(112)
      abb336(39)=spak2k4*abb336(49)
      abb336(41)=-spbk3k1*abb336(48)
      abb336(36)=abb336(36)+abb336(39)+abb336(41)
      abb336(36)=spbe7l6*abb336(36)
      abb336(28)=spbk3k1*abb336(28)
      abb336(14)=abb336(14)*abb336(155)
      abb336(39)=spak2k4*abb336(148)
      abb336(14)=abb336(14)+abb336(39)+abb336(28)
      abb336(14)=spbl6l5*abb336(14)
      abb336(28)=-spbl6k2*abb336(37)
      abb336(29)=abb336(29)*abb336(35)
      abb336(28)=abb336(28)+abb336(29)
      abb336(28)=abb336(28)*abb336(85)
      abb336(14)=abb336(14)+abb336(36)+abb336(21)+abb336(33)+abb336(27)+abb336(&
      &28)+abb336(24)
      abb336(14)=2.0_ki*abb336(14)
      abb336(21)=-spbk3k1*abb336(50)
      abb336(21)=abb336(34)+abb336(21)
      abb336(21)=spak2l5*abb336(21)
      abb336(18)=abb336(18)*abb336(46)
      abb336(18)=abb336(21)-abb336(18)
      abb336(21)=-abb336(45)*abb336(82)
      abb336(20)=-2.0_ki*abb336(20)+abb336(58)
      abb336(20)=abb336(20)*abb336(25)
      abb336(24)=abb336(55)*abb336(65)
      abb336(25)=abb336(58)*abb336(66)
      abb336(18)=abb336(25)+abb336(20)+abb336(24)+abb336(21)+2.0_ki*abb336(18)
      abb336(18)=8.0_ki*abb336(18)
      R2d336=abb336(56)
      rat2 = rat2 + R2d336
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='336' value='", &
          & R2d336, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd336h2