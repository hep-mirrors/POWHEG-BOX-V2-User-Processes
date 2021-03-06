module     p0_dbaru_epnebbbarg_abbrevd322h2
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(159), public :: abb322
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
      abb322(5)=spak2k7**(-1)
      abb322(6)=spak2l6**(-1)
      abb322(7)=spbl6k2**(-1)
      abb322(8)=spak2l5**(-1)
      abb322(9)=spbl5k2**(-1)
      abb322(10)=sqrt(mB**2)
      abb322(11)=1.0_ki/(es34+es567-es12-es234)
      abb322(12)=mB**3
      abb322(13)=abb322(12)*abb322(10)
      abb322(14)=abb322(6)**2
      abb322(15)=abb322(13)*abb322(14)
      abb322(16)=mB**4
      abb322(17)=abb322(16)*abb322(14)
      abb322(18)=abb322(15)-abb322(17)
      abb322(19)=TR*gW
      abb322(19)=abb322(19)**2*CVDU*abb322(4)*abb322(2)*abb322(1)
      abb322(20)=i_*c4
      abb322(21)=abb322(20)*abb322(3)
      abb322(22)=abb322(5)*abb322(21)
      abb322(23)=abb322(19)*abb322(22)*spbk3k2
      abb322(24)=abb322(23)*spbk7k2
      abb322(25)=spak2l5*spak2k4
      abb322(26)=abb322(25)*abb322(24)*abb322(18)
      abb322(27)=abb322(16)-abb322(13)
      abb322(28)=spbk3k2**2
      abb322(29)=abb322(28)*abb322(22)*abb322(9)
      abb322(30)=abb322(19)*spbk7l6
      abb322(31)=abb322(29)*abb322(30)
      abb322(27)=spak3k4*abb322(27)*abb322(31)*abb322(6)
      abb322(26)=abb322(26)+abb322(27)
      abb322(26)=abb322(26)*spak1k2
      abb322(27)=spbk4k3*spak2k4
      abb322(32)=spbk3k1*spak1k2
      abb322(32)=abb322(27)-abb322(32)
      abb322(20)=abb322(19)*abb322(5)*abb322(20)*spak1k4*abb322(11)
      abb322(33)=abb322(20)*spbk7k2
      abb322(18)=abb322(32)*spak2l5*abb322(33)*abb322(18)
      abb322(18)=abb322(26)+abb322(18)
      abb322(26)=abb322(18)*abb322(7)
      abb322(34)=spbk7k2*abb322(9)
      abb322(35)=abb322(12)*abb322(34)
      abb322(36)=abb322(20)*abb322(6)
      abb322(37)=abb322(35)*abb322(36)
      abb322(38)=mB**2
      abb322(39)=abb322(38)*abb322(9)
      abb322(40)=abb322(39)*abb322(6)
      abb322(41)=abb322(40)*abb322(33)
      abb322(42)=abb322(41)*abb322(10)
      abb322(37)=abb322(42)-abb322(37)
      abb322(37)=-abb322(32)*abb322(37)*abb322(10)
      abb322(42)=abb322(23)*abb322(6)
      abb322(35)=abb322(35)*abb322(42)
      abb322(43)=abb322(39)*abb322(23)
      abb322(44)=abb322(43)*abb322(10)
      abb322(45)=spbk7k2*abb322(6)
      abb322(46)=abb322(44)*abb322(45)
      abb322(35)=abb322(35)-abb322(46)
      abb322(46)=spak1k2*spak2k4
      abb322(47)=abb322(46)*abb322(10)
      abb322(48)=abb322(35)*abb322(47)
      abb322(37)=abb322(48)+abb322(37)
      abb322(48)=abb322(10)*mB
      abb322(49)=abb322(48)*abb322(6)
      abb322(50)=abb322(38)*abb322(6)
      abb322(51)=abb322(49)-abb322(50)
      abb322(52)=abb322(20)*spbk7l6
      abb322(53)=-abb322(52)*abb322(51)
      abb322(54)=spbk4k3*spak2l5
      abb322(55)=spak4l6*abb322(53)*abb322(54)
      abb322(26)=abb322(55)+abb322(26)+abb322(37)
      abb322(55)=es71+es12-es712
      abb322(26)=abb322(55)*abb322(26)
      abb322(56)=abb322(52)*spbk3k1
      abb322(57)=abb322(23)*spbk7l6
      abb322(58)=abb322(57)*spak2k4
      abb322(56)=abb322(56)-abb322(58)
      abb322(58)=abb322(56)*spak1l5
      abb322(59)=2.0_ki*spal5k7
      abb322(60)=abb322(58)*abb322(59)
      abb322(61)=abb322(20)*spbk3k1
      abb322(62)=abb322(23)*spak2k4
      abb322(61)=abb322(61)-abb322(62)
      abb322(63)=abb322(49)*spak2l5
      abb322(64)=-abb322(63)*abb322(61)
      abb322(65)=abb322(64)*spak1l5
      abb322(66)=abb322(52)*spbk4k3
      abb322(67)=abb322(59)*abb322(66)
      abb322(68)=abb322(20)*spbk4k3
      abb322(69)=abb322(63)*abb322(68)
      abb322(67)=abb322(67)-abb322(69)
      abb322(67)=spak4l5*abb322(67)
      abb322(60)=abb322(67)+abb322(60)+abb322(65)
      abb322(60)=abb322(55)*abb322(60)
      abb322(67)=spbk3k2*abb322(21)
      abb322(70)=spak1l5*spak3k4
      abb322(71)=abb322(67)*abb322(70)
      abb322(72)=abb322(19)*abb322(6)
      abb322(73)=abb322(71)*abb322(72)
      abb322(74)=abb322(48)*spak2l5
      abb322(75)=-abb322(74)*abb322(73)
      abb322(71)=abb322(71)*abb322(30)
      abb322(76)=abb322(59)*abb322(71)
      abb322(75)=abb322(75)+abb322(76)
      abb322(75)=spbk7k3*abb322(75)
      abb322(76)=abb322(38)*abb322(19)
      abb322(77)=abb322(70)*abb322(76)
      abb322(78)=abb322(28)*abb322(6)
      abb322(79)=abb322(77)*abb322(78)*abb322(7)
      abb322(21)=abb322(79)*spak2l5*spbk7l6*abb322(21)
      abb322(21)=abb322(75)+abb322(21)+abb322(60)
      abb322(21)=spbk7l5*abb322(21)
      abb322(60)=abb322(48)*abb322(34)
      abb322(75)=-abb322(60)*abb322(56)
      abb322(80)=2.0_ki*abb322(55)
      abb322(81)=-abb322(75)*abb322(80)
      abb322(82)=abb322(23)*spak3k4
      abb322(83)=abb322(82)*spbk7l6
      abb322(84)=abb322(48)*abb322(9)
      abb322(85)=2.0_ki*abb322(84)
      abb322(86)=abb322(85)*abb322(83)*abb322(55)
      abb322(87)=abb322(82)*spak2l5
      abb322(88)=abb322(87)*spbk7l6
      abb322(89)=abb322(10)**2
      abb322(90)=abb322(89)*abb322(88)
      abb322(86)=abb322(90)+abb322(86)
      abb322(86)=spbk7k3*abb322(86)
      abb322(90)=abb322(10)-mB
      abb322(91)=-abb322(57)*abb322(90)
      abb322(92)=-spbk7k2*abb322(91)
      abb322(93)=abb322(25)*abb322(10)
      abb322(94)=-abb322(92)*abb322(93)
      abb322(95)=abb322(90)*abb322(10)
      abb322(96)=abb322(95)*abb322(52)
      abb322(97)=-spbk7k2*abb322(96)
      abb322(98)=spbk3k1*spak2l5
      abb322(99)=-abb322(98)*abb322(97)
      abb322(81)=abb322(86)+abb322(94)+abb322(99)+abb322(81)
      abb322(81)=spak1k7*abb322(81)
      abb322(86)=abb322(39)*spbk7k2
      abb322(94)=abb322(60)-abb322(86)
      abb322(99)=-abb322(32)*abb322(94)*abb322(52)
      abb322(94)=abb322(94)*abb322(57)
      abb322(100)=-abb322(94)*abb322(46)
      abb322(99)=abb322(100)+abb322(99)
      abb322(99)=spbl6k2*abb322(99)
      abb322(100)=-spak2l5*abb322(56)
      abb322(101)=spbl6k2*spak1l5
      abb322(102)=abb322(101)*spbk7l5
      abb322(103)=abb322(100)*abb322(102)
      abb322(104)=spak1k2*spak3k4
      abb322(94)=abb322(94)*abb322(104)
      abb322(105)=spbk7l5*spak1l5
      abb322(106)=-abb322(88)*abb322(105)
      abb322(94)=abb322(94)+abb322(106)
      abb322(94)=spbl6k3*abb322(94)
      abb322(106)=abb322(66)*spak4l5*spbl6k2
      abb322(107)=spbk7l5*spak2l5
      abb322(108)=-abb322(106)*abb322(107)
      abb322(94)=abb322(94)+abb322(108)+abb322(99)+abb322(103)
      abb322(94)=spal6k7*abb322(94)
      abb322(99)=abb322(82)*spak1k2
      abb322(103)=abb322(99)*spbk7l6
      abb322(108)=abb322(103)*abb322(59)
      abb322(109)=-spak1k7*abb322(88)
      abb322(109)=abb322(109)-abb322(108)
      abb322(109)=abb322(60)*abb322(109)
      abb322(110)=abb322(87)*abb322(7)
      abb322(111)=abb322(110)*spak1k2
      abb322(112)=abb322(17)*abb322(34)
      abb322(113)=abb322(111)*abb322(112)
      abb322(114)=abb322(113)*abb322(55)
      abb322(115)=abb322(55)*abb322(40)
      abb322(116)=spak1l6*abb322(88)*abb322(115)
      abb322(109)=abb322(116)+abb322(114)+abb322(109)
      abb322(109)=spbl5k3*abb322(109)
      abb322(114)=-abb322(56)*abb322(86)*spak1k2
      abb322(116)=spak2k4*abb322(66)*abb322(86)
      abb322(114)=abb322(116)+abb322(114)
      abb322(114)=abb322(114)*spal5k7
      abb322(116)=-abb322(8)*abb322(114)
      abb322(75)=-spak1k7*abb322(75)
      abb322(75)=abb322(75)+abb322(116)
      abb322(75)=spbl6k2*abb322(75)
      abb322(116)=abb322(56)*abb322(102)
      abb322(117)=spbk7l5*abb322(106)
      abb322(116)=abb322(117)+abb322(116)
      abb322(116)=spal5k7*abb322(116)
      abb322(75)=abb322(116)+abb322(75)
      abb322(116)=spak1k7*abb322(60)
      abb322(117)=spal5k7*abb322(105)
      abb322(116)=abb322(116)+abb322(117)
      abb322(116)=abb322(83)*abb322(116)
      abb322(103)=abb322(103)*spal5k7
      abb322(117)=abb322(86)*abb322(8)
      abb322(118)=abb322(103)*abb322(117)
      abb322(116)=abb322(118)+abb322(116)
      abb322(118)=2.0_ki*spbl6k3
      abb322(116)=abb322(116)*abb322(118)
      abb322(75)=abb322(116)+2.0_ki*abb322(75)
      abb322(75)=spak2l6*abb322(75)
      abb322(116)=abb322(9)*abb322(12)*abb322(42)
      abb322(44)=abb322(44)*abb322(6)
      abb322(44)=abb322(116)-abb322(44)
      abb322(116)=abb322(104)*abb322(10)
      abb322(44)=abb322(44)*abb322(116)
      abb322(15)=spak1k2*abb322(15)
      abb322(118)=abb322(15)*abb322(110)
      abb322(44)=abb322(44)+abb322(118)
      abb322(44)=-abb322(44)*abb322(55)
      abb322(118)=abb322(89)*abb322(108)
      abb322(44)=abb322(118)+abb322(44)
      abb322(44)=spbk7k3*abb322(44)
      abb322(118)=abb322(104)*abb322(22)
      abb322(119)=abb322(118)*abb322(9)**2
      abb322(13)=abb322(13)*abb322(119)*abb322(28)*abb322(30)
      abb322(114)=abb322(114)-abb322(13)
      abb322(114)=-abb322(114)*abb322(55)
      abb322(120)=abb322(55)*abb322(39)
      abb322(103)=spbk7k3*abb322(103)*abb322(120)
      abb322(103)=abb322(103)+abb322(114)
      abb322(114)=2.0_ki*abb322(8)
      abb322(103)=abb322(103)*abb322(114)
      abb322(121)=-abb322(25)*abb322(57)*abb322(51)
      abb322(53)=abb322(53)*abb322(98)
      abb322(53)=abb322(121)-abb322(53)
      abb322(53)=-abb322(53)*abb322(55)
      abb322(67)=spak3k4*abb322(67)*spbk7k3
      abb322(30)=-abb322(30)*abb322(63)*abb322(67)
      abb322(30)=abb322(30)+abb322(53)
      abb322(30)=spak1l6*abb322(30)
      abb322(53)=spak2l6*spbl6k2
      abb322(53)=abb322(53)+abb322(55)
      abb322(63)=2.0_ki*abb322(60)
      abb322(53)=abb322(53)*abb322(63)*abb322(66)
      abb322(121)=-abb322(54)*abb322(97)
      abb322(53)=abb322(121)+abb322(53)
      abb322(53)=spak4k7*abb322(53)
      abb322(97)=abb322(97)*abb322(32)
      abb322(47)=-abb322(92)*abb322(47)
      abb322(47)=abb322(47)+abb322(97)
      abb322(47)=abb322(47)*abb322(59)
      abb322(21)=abb322(53)+abb322(109)+abb322(94)+abb322(30)+abb322(81)+abb322&
      &(103)+abb322(44)+abb322(47)+abb322(75)+abb322(21)+abb322(26)
      abb322(21)=4.0_ki*abb322(21)
      abb322(26)=-spbk7k2*abb322(56)
      abb322(30)=spak1k2*abb322(26)
      abb322(44)=abb322(66)*spbk7k2
      abb322(47)=abb322(44)*spak2k4
      abb322(30)=abb322(47)+abb322(30)
      abb322(30)=abb322(30)*abb322(59)
      abb322(38)=abb322(31)*abb322(38)
      abb322(31)=abb322(31)*abb322(48)
      abb322(47)=abb322(38)-abb322(31)
      abb322(53)=abb322(47)*abb322(104)
      abb322(53)=abb322(53)-abb322(30)
      abb322(75)=-spak2l5*abb322(61)
      abb322(81)=abb322(75)*abb322(102)
      abb322(92)=abb322(68)*spbl6k2
      abb322(94)=abb322(92)*spak4l5
      abb322(97)=abb322(107)*abb322(94)
      abb322(97)=abb322(97)-abb322(81)
      abb322(103)=spak1k2*abb322(87)*abb322(50)
      abb322(109)=-abb322(103)-abb322(108)
      abb322(109)=spbk7k3*abb322(109)
      abb322(121)=abb322(87)*spbl5k3
      abb322(122)=abb322(121)*spbk7k2
      abb322(123)=abb322(40)*spak1k2
      abb322(124)=abb322(122)*abb322(123)
      abb322(125)=abb322(105)*abb322(87)
      abb322(126)=-spbl6k3*abb322(125)
      abb322(109)=abb322(124)+abb322(126)+abb322(109)-abb322(53)-abb322(97)
      abb322(109)=8.0_ki*abb322(109)
      abb322(126)=abb322(33)*abb322(39)
      abb322(127)=abb322(48)*abb322(20)
      abb322(34)=abb322(127)*abb322(34)
      abb322(34)=abb322(126)-abb322(34)
      abb322(34)=-abb322(34)*abb322(32)
      abb322(126)=abb322(60)*abb322(23)
      abb322(128)=abb322(43)*spbk7k2
      abb322(129)=abb322(128)-abb322(126)
      abb322(130)=-abb322(129)*abb322(46)
      abb322(34)=abb322(130)+abb322(34)
      abb322(34)=spbl6k2*abb322(34)
      abb322(130)=-spak2l5*abb322(26)
      abb322(131)=abb322(88)*spbk7k3
      abb322(130)=abb322(131)+abb322(130)
      abb322(131)=abb322(130)*spak1k7
      abb322(132)=abb322(44)*spak4k7
      abb322(133)=abb322(132)*spak2l5
      abb322(131)=abb322(133)+abb322(131)
      abb322(133)=abb322(33)*spbk3k1
      abb322(134)=abb322(62)*spbk7k2
      abb322(135)=abb322(133)-abb322(134)
      abb322(123)=-abb322(123)*abb322(135)
      abb322(27)=abb322(41)*abb322(27)
      abb322(27)=abb322(27)+abb322(123)
      abb322(123)=abb322(27)*abb322(55)
      abb322(136)=abb322(99)*abb322(40)
      abb322(137)=-abb322(136)*abb322(55)
      abb322(137)=-abb322(108)+abb322(137)
      abb322(137)=spbk7k3*abb322(137)
      abb322(129)=abb322(129)*abb322(104)
      abb322(129)=abb322(129)+abb322(125)
      abb322(129)=spbl6k3*abb322(129)
      abb322(34)=abb322(129)+abb322(137)+abb322(34)+abb322(123)-abb322(53)+abb3&
      &22(97)-abb322(131)
      abb322(34)=8.0_ki*abb322(34)
      abb322(53)=abb322(56)*abb322(101)
      abb322(53)=abb322(53)+abb322(106)
      abb322(53)=abb322(53)*spak2l6
      abb322(97)=abb322(58)*abb322(55)
      abb322(123)=abb322(71)*spbk7k3
      abb322(129)=spak1l5*abb322(83)*spak2l6
      abb322(137)=abb322(129)*spbl6k3
      abb322(138)=abb322(104)*abb322(31)
      abb322(139)=abb322(55)*abb322(66)
      abb322(140)=spak4l5*abb322(139)
      abb322(97)=abb322(137)+abb322(53)+abb322(140)+abb322(123)+abb322(138)+abb&
      &322(97)
      abb322(97)=8.0_ki*abb322(97)
      abb322(138)=-spak1k2*abb322(61)
      abb322(140)=abb322(68)*spak2k4
      abb322(138)=abb322(138)+abb322(140)
      abb322(140)=abb322(112)*abb322(138)
      abb322(141)=abb322(140)*abb322(55)
      abb322(142)=abb322(50)*abb322(30)
      abb322(18)=abb322(141)+abb322(142)-abb322(18)
      abb322(18)=abb322(7)*abb322(18)
      abb322(141)=-abb322(99)*abb322(9)*abb322(55)*abb322(17)
      abb322(15)=abb322(87)*abb322(15)
      abb322(142)=-abb322(50)*abb322(108)
      abb322(15)=abb322(141)+abb322(15)+abb322(142)
      abb322(15)=spbk7k3*abb322(7)*abb322(15)
      abb322(141)=-abb322(39)*abb322(56)
      abb322(142)=-abb322(141)*spak1l5*abb322(55)
      abb322(123)=abb322(39)*abb322(123)
      abb322(13)=abb322(123)+abb322(13)+abb322(142)
      abb322(13)=abb322(8)*abb322(13)
      abb322(64)=-abb322(64)*abb322(105)
      abb322(105)=abb322(8)*abb322(66)*abb322(120)
      abb322(120)=spbk7l5*abb322(69)
      abb322(105)=abb322(105)+abb322(120)
      abb322(105)=spak4l5*abb322(105)
      abb322(120)=abb322(50)*spak2l5
      abb322(123)=abb322(120)*abb322(7)
      abb322(142)=abb322(26)*abb322(123)
      abb322(143)=abb322(50)*abb322(7)
      abb322(144)=abb322(143)*abb322(88)
      abb322(145)=-spbk7k3*abb322(144)
      abb322(142)=abb322(142)+abb322(145)
      abb322(142)=spak1k7*abb322(142)
      abb322(145)=abb322(101)*abb322(8)
      abb322(141)=-abb322(141)*abb322(145)
      abb322(146)=abb322(39)*abb322(8)
      abb322(106)=abb322(146)*abb322(106)
      abb322(106)=abb322(141)+abb322(106)
      abb322(106)=spak2l6*abb322(106)
      abb322(113)=-spbl5k3*abb322(113)
      abb322(137)=abb322(146)*abb322(137)
      abb322(132)=-abb322(123)*abb322(132)
      abb322(13)=abb322(132)+abb322(113)+abb322(137)+abb322(106)+abb322(142)+ab&
      &b322(105)+abb322(64)+abb322(13)+abb322(15)+abb322(18)-abb322(37)
      abb322(13)=8.0_ki*abb322(13)
      abb322(15)=16.0_ki*abb322(27)
      abb322(18)=-16.0_ki*abb322(7)*abb322(140)
      abb322(37)=-abb322(136)*abb322(80)
      abb322(37)=-abb322(108)+abb322(103)-abb322(71)+abb322(37)
      abb322(37)=spbk7k3*abb322(37)
      abb322(58)=-abb322(58)+2.0_ki*abb322(27)
      abb322(58)=abb322(58)*abb322(55)
      abb322(64)=abb322(92)*abb322(107)
      abb322(64)=abb322(64)-abb322(139)
      abb322(64)=spak4l5*abb322(64)
      abb322(71)=abb322(125)-abb322(129)
      abb322(71)=spbl6k3*abb322(71)
      abb322(103)=-abb322(104)*abb322(38)
      abb322(30)=-abb322(124)+abb322(71)-abb322(53)+abb322(64)+abb322(37)+abb32&
      &2(103)+abb322(58)-abb322(81)+abb322(30)-2.0_ki*abb322(131)
      abb322(30)=4.0_ki*abb322(30)
      abb322(37)=-8.0_ki*abb322(27)
      abb322(53)=abb322(98)*abb322(33)
      abb322(58)=abb322(134)*spak2l5
      abb322(53)=abb322(53)-abb322(58)
      abb322(58)=spak1l5*abb322(53)
      abb322(64)=abb322(87)*spak1l5
      abb322(71)=spbk7k3*abb322(64)
      abb322(81)=abb322(54)*abb322(33)
      abb322(103)=spak4l5*abb322(81)
      abb322(58)=abb322(103)+abb322(58)+abb322(71)
      abb322(58)=2.0_ki*abb322(58)
      abb322(58)=spbk7l5*abb322(58)
      abb322(71)=abb322(127)*abb322(9)
      abb322(103)=spbk7k2**2
      abb322(105)=abb322(71)*abb322(103)
      abb322(106)=abb322(39)*abb322(20)
      abb322(107)=2.0_ki*abb322(103)
      abb322(108)=abb322(107)*abb322(106)
      abb322(105)=abb322(105)-abb322(108)
      abb322(105)=abb322(105)*abb322(32)
      abb322(108)=abb322(103)*abb322(23)*abb322(84)
      abb322(107)=-abb322(43)*abb322(107)
      abb322(107)=abb322(107)+abb322(108)
      abb322(107)=abb322(107)*abb322(46)
      abb322(108)=abb322(138)*abb322(103)
      abb322(113)=-abb322(123)*abb322(108)
      abb322(124)=2.0_ki*abb322(128)-abb322(126)
      abb322(124)=abb322(124)*abb322(104)
      abb322(111)=abb322(111)*abb322(50)*spbk7k2
      abb322(111)=abb322(124)+abb322(111)
      abb322(111)=spbk7k3*abb322(111)
      abb322(124)=spak1l6*abb322(130)
      abb322(126)=spak4l6*abb322(44)*spak2l5
      abb322(58)=abb322(126)+abb322(124)+abb322(111)+abb322(113)+abb322(107)+ab&
      &b322(58)+abb322(105)
      abb322(58)=4.0_ki*abb322(58)
      abb322(95)=-abb322(33)*abb322(95)
      abb322(105)=4.0_ki*abb322(54)*abb322(95)
      abb322(107)=8.0_ki*abb322(81)
      abb322(111)=abb322(33)*spbk4k3
      abb322(113)=abb322(123)*abb322(111)
      abb322(124)=8.0_ki*abb322(113)
      abb322(81)=4.0_ki*abb322(81)
      abb322(126)=abb322(84)*abb322(52)
      abb322(127)=abb322(52)*abb322(39)
      abb322(126)=abb322(126)-abb322(127)
      abb322(128)=spbl6k2*spbk4k3
      abb322(129)=abb322(126)*abb322(128)
      abb322(130)=spbk7l6**2
      abb322(131)=abb322(130)*abb322(59)
      abb322(132)=-abb322(68)*abb322(131)
      abb322(129)=abb322(129)+abb322(132)
      abb322(129)=spak2l6*abb322(129)
      abb322(52)=abb322(85)*abb322(52)
      abb322(52)=abb322(52)-abb322(127)
      abb322(127)=2.0_ki*spbk4k3
      abb322(132)=abb322(127)*abb322(52)
      abb322(137)=abb322(123)*abb322(66)
      abb322(132)=abb322(137)+abb322(132)
      abb322(132)=abb322(132)*abb322(55)
      abb322(137)=-abb322(54)*abb322(96)
      abb322(130)=abb322(130)*spal6k7
      abb322(139)=spak2l5*abb322(68)*abb322(130)
      abb322(129)=abb322(139)+abb322(129)+abb322(137)+abb322(132)
      abb322(129)=4.0_ki*abb322(129)
      abb322(132)=abb322(66)*spak2l5
      abb322(137)=8.0_ki*abb322(132)
      abb322(132)=-4.0_ki*abb322(132)
      abb322(139)=-spbl6k2*abb322(49)*abb322(138)
      abb322(138)=abb322(138)*abb322(39)
      abb322(140)=abb322(138)*abb322(8)
      abb322(141)=-spbl6k2**2*abb322(140)
      abb322(142)=abb322(99)*spbl6k3
      abb322(147)=spbl6k2*abb322(146)
      abb322(147)=abb322(49)+abb322(147)
      abb322(147)=abb322(147)*abb322(142)
      abb322(139)=abb322(147)+abb322(139)+abb322(141)
      abb322(139)=spal5l6*abb322(139)
      abb322(141)=abb322(61)*abb322(101)
      abb322(147)=abb322(82)*spak1l5
      abb322(148)=abb322(147)*spbl6k3
      abb322(141)=abb322(94)+abb322(148)+abb322(141)
      abb322(149)=spal5l6*abb322(141)
      abb322(150)=abb322(135)*spak1l5
      abb322(151)=abb322(147)*spbk7k3
      abb322(150)=abb322(150)+abb322(151)
      abb322(152)=abb322(111)*spak4l5
      abb322(153)=abb322(152)+abb322(150)
      abb322(154)=spal5k7*abb322(153)
      abb322(155)=abb322(19)*abb322(10)
      abb322(156)=mB*abb322(155)*abb322(29)*abb322(70)
      abb322(79)=abb322(79)*abb322(22)
      abb322(157)=abb322(79)*spak2l5
      abb322(149)=abb322(149)+abb322(157)+abb322(156)+abb322(154)
      abb322(149)=spbl6l5*abb322(149)
      abb322(28)=abb322(12)*abb322(28)*abb322(155)
      abb322(154)=abb322(7)*spak2l5
      abb322(14)=abb322(118)*abb322(154)*abb322(14)*abb322(28)
      abb322(118)=-abb322(23)*abb322(50)
      abb322(155)=abb322(48)*abb322(42)
      abb322(118)=abb322(118)+abb322(155)
      abb322(118)=spal5k7*abb322(118)*abb322(104)
      abb322(73)=-abb322(48)*abb322(73)
      abb322(73)=abb322(73)+abb322(118)
      abb322(73)=spbk7k3*abb322(73)
      abb322(118)=spak1l6*spbl6k2
      abb322(155)=abb322(40)*abb322(87)*abb322(118)
      abb322(64)=abb322(49)*abb322(64)
      abb322(64)=abb322(64)+abb322(155)
      abb322(64)=spbl5k3*abb322(64)
      abb322(69)=spak4l5*abb322(69)
      abb322(65)=-abb322(65)+abb322(69)
      abb322(65)=spbl5k2*abb322(65)
      abb322(14)=abb322(14)+abb322(73)+abb322(64)+abb322(139)+abb322(149)+abb32&
      &2(65)
      abb322(64)=abb322(87)*abb322(49)
      abb322(65)=abb322(59)*abb322(83)
      abb322(64)=abb322(64)+abb322(65)
      abb322(64)=abb322(64)*spbk7k3
      abb322(26)=abb322(26)*abb322(59)
      abb322(26)=abb322(64)-abb322(26)
      abb322(45)=-abb322(62)*abb322(45)*abb322(74)
      abb322(31)=abb322(38)+abb322(31)
      abb322(31)=spak3k4*abb322(31)
      abb322(38)=2.0_ki*spbl6k2
      abb322(38)=abb322(38)*abb322(60)*abb322(61)
      abb322(64)=abb322(49)*abb322(33)
      abb322(65)=abb322(98)*abb322(64)
      abb322(31)=abb322(38)+abb322(65)+abb322(45)+abb322(31)+abb322(26)
      abb322(31)=spak1k7*abb322(31)
      abb322(33)=abb322(33)*abb322(50)
      abb322(33)=abb322(33)-abb322(64)
      abb322(32)=abb322(33)*abb322(32)
      abb322(38)=abb322(51)*abb322(24)
      abb322(45)=-abb322(38)*abb322(46)
      abb322(46)=-abb322(61)*abb322(102)
      abb322(32)=abb322(46)+abb322(45)+abb322(32)
      abb322(32)=abb322(59)*abb322(32)
      abb322(45)=spak1k7*abb322(63)
      abb322(46)=abb322(85)*abb322(118)
      abb322(45)=abb322(46)+abb322(45)
      abb322(45)=abb322(82)*abb322(45)
      abb322(46)=3.0_ki*abb322(23)
      abb322(51)=abb322(46)*mB
      abb322(65)=abb322(23)*abb322(10)
      abb322(51)=abb322(51)-abb322(65)
      abb322(69)=abb322(70)*abb322(10)
      abb322(73)=-abb322(51)*abb322(69)
      abb322(74)=abb322(59)*abb322(99)
      abb322(102)=-abb322(74)*abb322(117)
      abb322(117)=abb322(59)*spbk7l5
      abb322(139)=-abb322(147)*abb322(117)
      abb322(45)=abb322(139)+abb322(73)+abb322(102)+abb322(45)
      abb322(45)=spbl6k3*abb322(45)
      abb322(28)=abb322(119)*abb322(28)
      abb322(73)=spbk7k3*spal5k7
      abb322(102)=abb322(73)*abb322(99)
      abb322(119)=abb322(39)*abb322(102)
      abb322(28)=abb322(28)+abb322(119)
      abb322(28)=abb322(114)*abb322(28)
      abb322(119)=abb322(68)*abb322(120)
      abb322(139)=abb322(84)*abb322(92)
      abb322(119)=abb322(119)+abb322(139)
      abb322(139)=2.0_ki*spak4l6
      abb322(119)=abb322(119)*abb322(139)
      abb322(28)=abb322(119)+abb322(28)
      abb322(28)=spbl6k2*abb322(28)
      abb322(17)=abb322(7)*abb322(19)*abb322(29)*abb322(17)*abb322(104)
      abb322(119)=2.0_ki*spak1l5
      abb322(119)=-abb322(119)*abb322(49)*abb322(61)
      abb322(17)=abb322(119)-abb322(17)
      abb322(17)=abb322(17)*abb322(55)
      abb322(119)=2.0_ki*abb322(68)
      abb322(149)=-abb322(119)*abb322(49)*abb322(55)
      abb322(155)=-abb322(10)+3.0_ki*mB
      abb322(155)=abb322(155)*abb322(20)
      abb322(156)=-abb322(10)*abb322(155)*abb322(128)
      abb322(158)=-abb322(92)*abb322(117)
      abb322(149)=abb322(158)+abb322(156)+abb322(149)
      abb322(149)=spak4l5*abb322(149)
      abb322(120)=abb322(120)*abb322(61)
      abb322(156)=abb322(61)*spbl6k2
      abb322(158)=abb322(84)*abb322(156)
      abb322(120)=abb322(158)+abb322(120)
      abb322(158)=2.0_ki*abb322(118)
      abb322(120)=abb322(120)*abb322(158)
      abb322(63)=abb322(92)*abb322(63)
      abb322(44)=abb322(44)*abb322(59)
      abb322(64)=abb322(54)*abb322(64)
      abb322(63)=abb322(44)+abb322(64)+abb322(63)
      abb322(63)=spak4k7*abb322(63)
      abb322(64)=abb322(76)*abb322(29)*abb322(6)
      abb322(159)=abb322(10)*abb322(64)
      abb322(72)=abb322(29)*abb322(72)
      abb322(12)=abb322(12)*abb322(72)
      abb322(12)=-3.0_ki*abb322(12)+2.0_ki*abb322(159)
      abb322(12)=abb322(10)*abb322(12)
      abb322(16)=abb322(16)*abb322(72)
      abb322(12)=abb322(16)+abb322(12)
      abb322(12)=abb322(12)*abb322(104)
      abb322(16)=spak2k4*abb322(51)
      abb322(51)=-spbk3k1*abb322(155)
      abb322(16)=abb322(16)+abb322(51)
      abb322(16)=abb322(101)*abb322(10)*abb322(16)
      abb322(27)=-spbl6k2*abb322(27)
      abb322(51)=abb322(136)*spbk7k2
      abb322(72)=spbl6k3*abb322(51)
      abb322(27)=abb322(27)+abb322(72)
      abb322(27)=spal6k7*abb322(27)
      abb322(12)=abb322(63)+abb322(27)+abb322(45)+abb322(120)+abb322(31)+abb322&
      &(149)+abb322(12)+abb322(16)+abb322(17)+abb322(32)+abb322(28)+2.0_ki*abb3&
      &22(14)
      abb322(12)=4.0_ki*abb322(12)
      abb322(14)=abb322(64)*abb322(104)
      abb322(16)=-abb322(14)-abb322(141)
      abb322(16)=16.0_ki*abb322(16)
      abb322(17)=-16.0_ki*abb322(14)
      abb322(27)=8.0_ki*abb322(141)
      abb322(28)=-abb322(145)*abb322(39)*abb322(61)
      abb322(31)=abb322(40)*abb322(134)
      abb322(32)=-spbk3k1*abb322(41)
      abb322(31)=abb322(31)+abb322(32)
      abb322(32)=2.0_ki*spak1k7
      abb322(31)=abb322(31)*abb322(32)
      abb322(32)=-abb322(40)*abb322(61)
      abb322(45)=abb322(32)*abb322(158)
      abb322(63)=-2.0_ki*abb322(143)-abb322(146)
      abb322(63)=abb322(63)*abb322(148)
      abb322(72)=-abb322(40)*abb322(92)*abb322(139)
      abb322(94)=-abb322(94)*abb322(146)
      abb322(41)=-spak4k7*abb322(41)*abb322(127)
      abb322(28)=abb322(72)+abb322(41)+abb322(63)+abb322(45)+abb322(31)+abb322(&
      &28)+abb322(94)
      abb322(28)=8.0_ki*abb322(28)
      abb322(14)=-2.0_ki*abb322(14)-abb322(141)
      abb322(14)=4.0_ki*abb322(14)
      abb322(31)=8.0_ki*abb322(153)
      abb322(41)=-spak1l5*abb322(61)
      abb322(45)=-spak4l5*abb322(68)
      abb322(41)=abb322(41)+abb322(45)
      abb322(41)=spbl5k2*abb322(41)
      abb322(45)=-spbl5k3*abb322(147)
      abb322(41)=abb322(45)+abb322(41)
      abb322(41)=8.0_ki*abb322(41)
      abb322(45)=abb322(50)*abb322(99)
      abb322(63)=-spak1k7*abb322(83)
      abb322(45)=abb322(45)+abb322(63)
      abb322(45)=8.0_ki*abb322(45)
      abb322(63)=-spbl6k2*abb322(140)
      abb322(72)=-spak1k7*abb322(56)
      abb322(94)=abb322(146)*abb322(142)
      abb322(101)=-spbl5k3*abb322(136)
      abb322(104)=-spak4k7*abb322(66)
      abb322(63)=abb322(104)+abb322(101)+abb322(94)+abb322(63)+abb322(72)
      abb322(63)=8.0_ki*abb322(63)
      abb322(72)=spal5k7*abb322(111)
      abb322(92)=spal5l6*abb322(92)
      abb322(72)=abb322(72)+abb322(92)
      abb322(72)=8.0_ki*abb322(72)
      abb322(92)=abb322(119)*abb322(115)
      abb322(94)=2.0_ki*abb322(50)
      abb322(20)=abb322(94)*abb322(20)
      abb322(48)=3.0_ki*abb322(48)
      abb322(36)=abb322(48)*abb322(36)
      abb322(20)=abb322(20)-abb322(36)
      abb322(36)=abb322(20)*abb322(54)
      abb322(71)=abb322(106)+3.0_ki*abb322(71)
      abb322(101)=abb322(71)*abb322(128)
      abb322(104)=4.0_ki*spal5k7
      abb322(66)=abb322(66)*abb322(104)
      abb322(36)=abb322(66)+abb322(36)+abb322(101)+abb322(92)
      abb322(36)=4.0_ki*abb322(36)
      abb322(66)=-16.0_ki*abb322(68)*abb322(40)
      abb322(68)=8.0_ki*abb322(68)
      abb322(92)=abb322(64)*spak3k4
      abb322(101)=8.0_ki*spak1k7*abb322(92)
      abb322(38)=-abb322(38)*abb322(25)
      abb322(47)=spak3k4*abb322(47)
      abb322(106)=-abb322(33)*abb322(98)
      abb322(115)=-abb322(40)*abb322(122)
      abb322(26)=abb322(115)+abb322(106)+abb322(38)+abb322(47)+abb322(26)
      abb322(26)=spak1l6*abb322(26)
      abb322(24)=abb322(90)*abb322(24)
      abb322(38)=-spak2k4*abb322(10)*abb322(24)
      abb322(47)=-spbk3k1*abb322(95)
      abb322(38)=abb322(38)+abb322(47)
      abb322(38)=spak1l5*abb322(38)
      abb322(47)=-abb322(7)*abb322(108)*abb322(59)*abb322(50)
      abb322(90)=-mB*abb322(23)
      abb322(65)=abb322(90)+abb322(65)
      abb322(65)=abb322(65)*abb322(69)
      abb322(69)=spbk7k2*abb322(143)*abb322(74)
      abb322(65)=abb322(65)+abb322(69)
      abb322(65)=spbk7k3*abb322(65)
      abb322(69)=-spal5k7*abb322(103)*abb322(138)
      abb322(74)=abb322(86)*abb322(102)
      abb322(69)=abb322(69)+abb322(74)
      abb322(69)=abb322(69)*abb322(114)
      abb322(59)=abb322(59)*abb322(150)
      abb322(59)=-abb322(157)+abb322(59)
      abb322(59)=spbk7l5*abb322(59)
      abb322(74)=-spbk4k3*abb322(95)
      abb322(90)=abb322(111)*abb322(117)
      abb322(74)=abb322(74)+abb322(90)
      abb322(74)=spak4l5*abb322(74)
      abb322(33)=-abb322(33)*abb322(54)
      abb322(33)=abb322(33)+abb322(44)
      abb322(33)=spak4l6*abb322(33)
      abb322(26)=abb322(33)+abb322(74)+abb322(59)+abb322(69)+abb322(65)+abb322(&
      &38)+abb322(47)+abb322(26)
      abb322(26)=4.0_ki*abb322(26)
      abb322(33)=-abb322(62)*abb322(86)
      abb322(38)=abb322(39)*abb322(133)
      abb322(33)=abb322(33)+abb322(38)
      abb322(33)=spak1l5*abb322(33)
      abb322(38)=abb322(39)*abb322(151)
      abb322(33)=abb322(33)+abb322(38)
      abb322(33)=abb322(8)*abb322(33)
      abb322(38)=abb322(146)*abb322(152)
      abb322(33)=abb322(33)+abb322(38)
      abb322(33)=8.0_ki*abb322(33)
      abb322(38)=-4.0_ki*abb322(153)
      abb322(44)=-4.0_ki*abb322(113)
      abb322(47)=abb322(8)*abb322(29)*abb322(77)
      abb322(54)=spak1l6*abb322(92)
      abb322(47)=abb322(54)-abb322(79)+abb322(47)
      abb322(47)=8.0_ki*abb322(47)
      abb322(54)=8.0_ki*abb322(64)
      abb322(54)=-abb322(70)*abb322(54)
      abb322(35)=abb322(35)*abb322(116)
      abb322(49)=abb322(49)*abb322(125)
      abb322(35)=abb322(35)+abb322(49)
      abb322(35)=4.0_ki*abb322(35)
      abb322(49)=8.0_ki*abb322(51)
      abb322(59)=8.0_ki*abb322(7)*abb322(99)*abb322(112)
      abb322(51)=4.0_ki*abb322(51)
      abb322(62)=-spak1k7*spbk7k2
      abb322(62)=-abb322(118)+abb322(62)
      abb322(40)=abb322(40)*abb322(82)
      abb322(62)=abb322(40)*abb322(62)
      abb322(64)=abb322(50)*abb322(147)
      abb322(62)=abb322(64)+abb322(62)
      abb322(62)=8.0_ki*abb322(62)
      abb322(60)=abb322(60)*abb322(121)
      abb322(24)=abb322(24)*abb322(93)
      abb322(64)=abb322(98)*abb322(95)
      abb322(65)=abb322(87)*spbk7k3
      abb322(69)=-abb322(89)*abb322(65)
      abb322(24)=abb322(60)+abb322(69)+abb322(24)+abb322(64)
      abb322(24)=4.0_ki*abb322(24)
      abb322(53)=abb322(53)+abb322(65)
      abb322(60)=8.0_ki*abb322(53)
      abb322(64)=abb322(135)*abb322(123)
      abb322(50)=abb322(110)*abb322(50)
      abb322(65)=spbk7k3*abb322(50)
      abb322(65)=abb322(64)+abb322(65)
      abb322(65)=8.0_ki*abb322(65)
      abb322(53)=4.0_ki*abb322(53)
      abb322(22)=abb322(22)*abb322(154)*abb322(78)
      abb322(22)=abb322(22)-abb322(29)
      abb322(22)=spak3k4*abb322(76)*abb322(22)
      abb322(29)=spal5k7*abb322(135)
      abb322(69)=abb322(82)*spbl6k3
      abb322(70)=abb322(156)+abb322(69)
      abb322(70)=spal5l6*abb322(70)
      abb322(73)=abb322(82)*abb322(73)
      abb322(22)=abb322(70)+abb322(73)+abb322(29)+abb322(22)
      abb322(22)=8.0_ki*abb322(22)
      abb322(29)=abb322(84)*abb322(57)
      abb322(70)=abb322(57)*abb322(39)
      abb322(29)=abb322(29)-abb322(70)
      abb322(73)=spbl6k2*spak3k4*abb322(29)
      abb322(74)=-abb322(82)*abb322(131)
      abb322(73)=abb322(73)+abb322(74)
      abb322(73)=spak2l6*abb322(73)
      abb322(57)=abb322(85)*abb322(57)
      abb322(57)=abb322(57)-abb322(70)
      abb322(70)=abb322(57)*spak3k4
      abb322(70)=abb322(144)+2.0_ki*abb322(70)
      abb322(70)=abb322(70)*abb322(55)
      abb322(74)=spak3k4*spak2l5*abb322(10)*abb322(91)
      abb322(76)=abb322(87)*abb322(130)
      abb322(70)=abb322(76)+abb322(73)+abb322(74)+abb322(70)
      abb322(70)=4.0_ki*abb322(70)
      abb322(73)=8.0_ki*abb322(88)
      abb322(74)=-4.0_ki*abb322(88)
      abb322(23)=abb322(94)*abb322(23)
      abb322(42)=abb322(48)*abb322(42)
      abb322(23)=abb322(23)-abb322(42)
      abb322(42)=spak2l5*abb322(23)
      abb322(46)=abb322(46)*abb322(84)
      abb322(48)=-abb322(43)+abb322(46)
      abb322(48)=spbl6k2*abb322(48)
      abb322(42)=abb322(42)+abb322(48)
      abb322(42)=spak3k4*abb322(42)
      abb322(48)=abb322(83)*abb322(104)
      abb322(42)=abb322(48)+abb322(42)
      abb322(42)=4.0_ki*abb322(42)
      abb322(40)=-16.0_ki*abb322(40)
      abb322(48)=8.0_ki*abb322(82)
      abb322(50)=-4.0_ki*spbk7k2*abb322(50)
      abb322(52)=abb322(52)*spbk3k1
      abb322(57)=abb322(57)*spak2k4
      abb322(52)=abb322(52)-abb322(57)
      abb322(57)=-abb322(56)*abb322(123)
      abb322(52)=-abb322(57)+2.0_ki*abb322(52)
      abb322(52)=abb322(52)*abb322(55)
      abb322(29)=-spak2k4*abb322(29)
      abb322(55)=spbk3k1*abb322(126)
      abb322(29)=abb322(29)+abb322(55)
      abb322(29)=spbl6k2*abb322(29)
      abb322(55)=-abb322(61)*abb322(131)
      abb322(29)=abb322(29)+abb322(55)
      abb322(29)=spak2l6*abb322(29)
      abb322(55)=-abb322(75)*abb322(130)
      abb322(57)=-abb322(91)*abb322(93)
      abb322(75)=-abb322(98)*abb322(96)
      abb322(29)=abb322(55)+abb322(29)+abb322(57)+abb322(75)+abb322(52)
      abb322(29)=4.0_ki*abb322(29)
      abb322(52)=8.0_ki*abb322(100)
      abb322(55)=4.0_ki*abb322(100)
      abb322(43)=-abb322(43)-abb322(46)
      abb322(43)=spak2k4*abb322(43)
      abb322(46)=spbk3k1*abb322(71)
      abb322(43)=abb322(43)+abb322(46)
      abb322(43)=spbl6k2*abb322(43)
      abb322(46)=-abb322(32)*abb322(80)
      abb322(23)=-abb322(23)*abb322(25)
      abb322(20)=abb322(20)*abb322(98)
      abb322(25)=abb322(56)*abb322(104)
      abb322(19)=abb322(94)*abb322(67)*abb322(19)*abb322(9)
      abb322(39)=abb322(39)*abb322(69)
      abb322(19)=2.0_ki*abb322(39)+abb322(19)+abb322(25)+abb322(43)+abb322(23)+&
      &abb322(20)+abb322(46)
      abb322(19)=4.0_ki*abb322(19)
      abb322(20)=16.0_ki*abb322(32)
      abb322(23)=8.0_ki*abb322(61)
      abb322(25)=-4.0_ki*abb322(64)
      R2d322=0.0_ki
      rat2 = rat2 + R2d322
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='322' value='", &
          & R2d322, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd322h2
