module     p0_dbaru_epnebbbarg_abbrevd336h3
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(146), public :: abb336
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
      abb336(6)=spak2l6**(-1)
      abb336(7)=spbl5k2**(-1)
      abb336(8)=sqrt(mB**2)
      abb336(9)=1.0_ki/(es34+es567-es12-es234)
      abb336(10)=spak1k4*abb336(9)
      abb336(11)=abb336(10)*spbe7l5
      abb336(12)=abb336(11)*spbk3k1
      abb336(13)=spak1k2*abb336(6)
      abb336(14)=abb336(12)*abb336(13)
      abb336(15)=NC*c1
      abb336(15)=abb336(15)-c2
      abb336(16)=TR*gW
      abb336(16)=abb336(16)**2*i_*CVDU*abb336(4)*abb336(2)
      abb336(17)=abb336(16)*abb336(1)
      abb336(18)=abb336(17)*mB
      abb336(19)=-abb336(18)*abb336(15)
      abb336(20)=abb336(14)*abb336(19)
      abb336(21)=abb336(19)*spak2k4
      abb336(22)=abb336(11)*spbk4k3
      abb336(23)=abb336(22)*abb336(6)
      abb336(24)=abb336(21)*abb336(23)
      abb336(25)=abb336(3)*abb336(1)
      abb336(26)=abb336(16)*abb336(25)*spbk3k2
      abb336(27)=abb336(26)*mB
      abb336(28)=-abb336(27)*abb336(15)
      abb336(29)=abb336(6)*spbe7l5
      abb336(30)=abb336(28)*abb336(29)
      abb336(31)=spak1k2*spak2k4
      abb336(32)=abb336(31)*abb336(30)
      abb336(20)=-abb336(20)+abb336(24)+abb336(32)
      abb336(24)=spbl5k2*spal5e7
      abb336(33)=abb336(20)*abb336(24)
      abb336(25)=abb336(25)*spbk3k2**2
      abb336(34)=abb336(25)*abb336(16)
      abb336(35)=mB**3
      abb336(36)=abb336(35)*abb336(34)
      abb336(37)=-abb336(5)*abb336(15)
      abb336(38)=-abb336(36)*abb336(37)
      abb336(39)=spak3k4*spak1k2
      abb336(40)=abb336(39)*abb336(29)
      abb336(41)=abb336(38)*abb336(40)
      abb336(42)=abb336(7)*spak2e7
      abb336(43)=abb336(41)*abb336(42)
      abb336(18)=-abb336(18)*abb336(37)
      abb336(44)=abb336(18)*spak2e7
      abb336(45)=abb336(22)*spbl6k2
      abb336(46)=abb336(45)*spak4l5
      abb336(47)=abb336(44)*abb336(46)
      abb336(48)=abb336(30)*abb336(39)
      abb336(49)=spbl5k3*spal5e7
      abb336(50)=abb336(49)*abb336(48)
      abb336(33)=-abb336(50)+abb336(47)+abb336(33)-abb336(43)
      abb336(47)=spbk7k2*spae7k7
      abb336(50)=abb336(47)*abb336(20)
      abb336(51)=-abb336(26)*abb336(15)
      abb336(52)=abb336(8)*spbe7l5
      abb336(53)=abb336(51)*abb336(52)
      abb336(54)=spbl6k2*spak2k4
      abb336(55)=abb336(53)*abb336(54)
      abb336(56)=-abb336(17)*abb336(15)
      abb336(57)=abb336(56)*abb336(8)
      abb336(58)=abb336(12)*spbl6k2
      abb336(59)=abb336(57)*abb336(58)
      abb336(55)=abb336(55)-abb336(59)
      abb336(59)=spbl6k3*spak3k4
      abb336(60)=abb336(59)*abb336(53)
      abb336(60)=abb336(60)-abb336(55)
      abb336(60)=abb336(60)*spak1e7
      abb336(61)=abb336(10)*spbl6k2
      abb336(62)=abb336(18)*abb336(61)
      abb336(63)=abb336(62)*spbk3k1
      abb336(27)=-abb336(27)*abb336(37)
      abb336(64)=abb336(54)*abb336(27)
      abb336(63)=abb336(63)-abb336(64)
      abb336(65)=-spbk7e7*spak2e7*abb336(63)
      abb336(66)=abb336(27)*spak3k4
      abb336(67)=abb336(66)*spbl6k3
      abb336(68)=spbk7e7*spak2e7
      abb336(69)=abb336(68)*abb336(67)
      abb336(69)=abb336(69)-abb336(65)
      abb336(69)=abb336(69)*spak1k7
      abb336(70)=spak2e7*spbe7l5
      abb336(71)=abb336(64)*abb336(70)
      abb336(72)=abb336(58)*abb336(44)
      abb336(71)=abb336(71)-abb336(72)
      abb336(72)=abb336(67)*abb336(70)
      abb336(72)=abb336(72)-abb336(71)
      abb336(73)=abb336(72)*spak1l5
      abb336(74)=mB**2
      abb336(75)=abb336(37)*abb336(74)
      abb336(76)=abb336(26)*abb336(75)
      abb336(77)=abb336(76)*abb336(8)
      abb336(78)=abb336(77)*spak2e7
      abb336(79)=abb336(13)*spak3k4
      abb336(80)=abb336(78)*abb336(79)
      abb336(81)=abb336(80)*spbe7k3
      abb336(82)=abb336(57)*abb336(45)
      abb336(83)=abb336(82)*spak4e7
      abb336(84)=abb336(62)*spbk4k3
      abb336(85)=abb336(68)*abb336(84)
      abb336(86)=abb336(85)*spak4k7
      abb336(87)=abb336(48)*spae7k7
      abb336(88)=abb336(87)*spbk7k3
      abb336(50)=abb336(69)-abb336(60)+abb336(86)-abb336(88)+abb336(81)-abb336(&
      &83)+abb336(50)-abb336(73)-abb336(33)
      abb336(60)=2.0_ki*abb336(50)
      abb336(69)=abb336(17)*abb336(35)
      abb336(73)=-abb336(69)*abb336(37)
      abb336(81)=abb336(10)*abb336(6)
      abb336(83)=abb336(73)*abb336(81)
      abb336(17)=abb336(17)*abb336(75)
      abb336(86)=abb336(17)*abb336(8)
      abb336(88)=abb336(86)*abb336(81)
      abb336(89)=abb336(83)-abb336(88)
      abb336(90)=abb336(5)**2
      abb336(91)=-abb336(90)*abb336(15)
      abb336(92)=-abb336(69)*abb336(91)
      abb336(93)=abb336(61)*abb336(7)
      abb336(94)=abb336(93)*abb336(92)
      abb336(95)=abb336(89)+abb336(94)
      abb336(96)=spbk4k3*spak2k4
      abb336(97)=spbk3k1*spak1k2
      abb336(96)=abb336(96)-abb336(97)
      abb336(95)=abb336(95)*abb336(96)
      abb336(26)=abb336(26)*abb336(35)
      abb336(35)=-abb336(26)*abb336(91)
      abb336(98)=abb336(7)*spbl6k2
      abb336(99)=abb336(35)*abb336(98)
      abb336(100)=abb336(99)*abb336(31)
      abb336(101)=abb336(77)*abb336(6)
      abb336(37)=-abb336(26)*abb336(37)
      abb336(102)=abb336(37)*abb336(6)
      abb336(103)=abb336(102)-abb336(101)
      abb336(104)=abb336(103)*abb336(31)
      abb336(95)=abb336(104)+abb336(100)+abb336(95)
      abb336(104)=spak2k7*spbk7l5
      abb336(105)=abb336(104)*spal5e7
      abb336(95)=abb336(95)*abb336(105)
      abb336(106)=abb336(19)*abb336(81)
      abb336(107)=abb336(8)**2
      abb336(108)=abb336(107)*abb336(106)
      abb336(109)=abb336(93)*abb336(86)
      abb336(108)=abb336(108)+abb336(109)
      abb336(108)=-abb336(108)*abb336(96)
      abb336(110)=abb336(77)*abb336(98)
      abb336(111)=-abb336(31)*abb336(110)
      abb336(112)=abb336(28)*spak2k4
      abb336(113)=abb336(112)*abb336(13)
      abb336(114)=-abb336(107)*abb336(113)
      abb336(108)=abb336(114)+abb336(111)+abb336(108)
      abb336(111)=spae7k7*spbk7l5
      abb336(108)=abb336(108)*abb336(111)
      abb336(114)=abb336(77)*abb336(7)
      abb336(115)=abb336(39)*abb336(111)*abb336(114)
      abb336(116)=abb336(35)*abb336(7)
      abb336(117)=abb336(116)*abb336(39)
      abb336(118)=-abb336(117)*abb336(105)
      abb336(115)=abb336(115)+abb336(118)
      abb336(115)=spbl6k3*abb336(115)
      abb336(118)=spak2k4*abb336(110)
      abb336(119)=-abb336(59)*abb336(114)
      abb336(120)=-spbk3k1*abb336(109)
      abb336(118)=abb336(119)+abb336(118)+abb336(120)
      abb336(118)=spak1e7*abb336(104)*abb336(118)
      abb336(95)=abb336(118)+abb336(115)+abb336(108)+abb336(95)
      abb336(95)=spbe7k2*abb336(95)
      abb336(108)=spak2k7*spbk7e7
      abb336(115)=abb336(107)*abb336(108)
      abb336(118)=-abb336(63)*abb336(115)
      abb336(119)=spal5k7*spbk7l5
      abb336(120)=abb336(55)*abb336(119)
      abb336(121)=abb336(107)*abb336(66)
      abb336(122)=-abb336(108)*abb336(121)
      abb336(123)=abb336(53)*spak3k4
      abb336(124)=-abb336(119)*abb336(123)
      abb336(122)=abb336(122)+abb336(124)
      abb336(122)=spbl6k3*abb336(122)
      abb336(118)=abb336(122)+abb336(118)+abb336(120)
      abb336(118)=spak1e7*abb336(118)
      abb336(120)=abb336(51)*abb336(90)
      abb336(122)=mB**4
      abb336(124)=-abb336(8)*abb336(122)*abb336(120)
      abb336(125)=es71+es12-es712
      abb336(126)=-abb336(125)*abb336(124)*abb336(42)
      abb336(127)=abb336(77)*abb336(105)
      abb336(126)=abb336(127)+abb336(126)
      abb336(126)=abb336(79)*abb336(126)
      abb336(127)=abb336(79)*abb336(28)
      abb336(128)=abb336(107)*abb336(111)*abb336(127)
      abb336(126)=abb336(128)+abb336(126)
      abb336(126)=spbe7k3*abb336(126)
      abb336(115)=-abb336(84)*abb336(115)
      abb336(128)=-abb336(119)*abb336(82)
      abb336(109)=-spbe7k2*spbk4k3*abb336(104)*abb336(109)
      abb336(109)=abb336(109)+abb336(115)+abb336(128)
      abb336(109)=spak4e7*abb336(109)
      abb336(95)=abb336(109)+abb336(126)+abb336(118)+abb336(95)
      abb336(109)=abb336(92)*abb336(42)
      abb336(115)=abb336(109)*abb336(61)
      abb336(118)=abb336(115)*spbk3k1
      abb336(35)=abb336(35)*abb336(42)
      abb336(126)=abb336(35)*abb336(59)
      abb336(128)=abb336(35)*abb336(54)
      abb336(118)=abb336(126)+abb336(118)-abb336(128)
      abb336(126)=2.0_ki*spak1k7
      abb336(118)=abb336(126)*spbk7e7*abb336(118)
      abb336(126)=abb336(70)*spak2k4
      abb336(129)=abb336(126)*abb336(99)
      abb336(130)=abb336(59)*abb336(70)
      abb336(131)=abb336(130)*abb336(116)
      abb336(129)=abb336(129)-abb336(131)
      abb336(131)=abb336(109)*abb336(58)
      abb336(131)=abb336(131)-abb336(129)
      abb336(132)=2.0_ki*spak1l5
      abb336(131)=abb336(131)*abb336(132)
      abb336(16)=-abb336(25)*abb336(90)*abb336(16)*abb336(15)
      abb336(25)=mB**5
      abb336(90)=-spak2e7*abb336(40)*abb336(7)**2*abb336(25)*abb336(16)
      abb336(133)=-abb336(96)*abb336(83)*abb336(7)
      abb336(134)=abb336(37)*abb336(7)
      abb336(135)=abb336(13)*spak2k4
      abb336(136)=abb336(135)*abb336(134)
      abb336(133)=abb336(133)-abb336(136)
      abb336(136)=2.0_ki*spbk7l5
      abb336(137)=abb336(136)*spae7k7
      abb336(138)=abb336(137)*spbe7k2
      abb336(133)=abb336(133)*abb336(138)
      abb336(118)=-abb336(90)+abb336(118)+abb336(133)-abb336(131)
      abb336(118)=abb336(118)*abb336(125)
      abb336(131)=abb336(11)*abb336(6)
      abb336(133)=abb336(73)*abb336(131)
      abb336(139)=abb336(11)*abb336(8)
      abb336(140)=abb336(139)*abb336(17)
      abb336(141)=abb336(140)*abb336(6)
      abb336(133)=abb336(133)-abb336(141)
      abb336(133)=abb336(133)*spak2e7
      abb336(142)=abb336(11)*spbl6k2
      abb336(143)=abb336(109)*abb336(142)
      abb336(133)=abb336(133)+abb336(143)
      abb336(133)=-abb336(133)*abb336(96)
      abb336(143)=abb336(20)*abb336(137)
      abb336(144)=-abb336(37)+abb336(77)
      abb336(145)=abb336(31)*abb336(29)
      abb336(144)=spak2e7*abb336(144)*abb336(145)
      abb336(146)=-abb336(70)*abb336(100)
      abb336(133)=abb336(143)+abb336(144)+abb336(146)+abb336(133)
      abb336(133)=spal5k7*abb336(133)
      abb336(52)=abb336(76)*abb336(52)
      abb336(143)=-abb336(98)*abb336(31)*abb336(52)
      abb336(21)=-abb336(107)*abb336(131)*abb336(21)
      abb336(131)=abb336(140)*abb336(98)
      abb336(144)=-spak2k4*abb336(131)
      abb336(21)=abb336(21)+abb336(144)
      abb336(21)=spbk4k3*abb336(21)
      abb336(144)=abb336(19)*abb336(11)
      abb336(13)=abb336(107)*abb336(13)*abb336(144)
      abb336(131)=spak1k2*abb336(131)
      abb336(13)=abb336(13)+abb336(131)
      abb336(13)=spbk3k1*abb336(13)
      abb336(32)=-abb336(107)*abb336(32)
      abb336(13)=abb336(13)+abb336(21)+abb336(32)+abb336(143)
      abb336(13)=spae7k7*abb336(13)
      abb336(21)=spae7k7*abb336(7)*abb336(39)*abb336(52)
      abb336(32)=spal5k7*abb336(70)*abb336(117)
      abb336(21)=abb336(21)+abb336(32)
      abb336(21)=spbl6k3*abb336(21)
      abb336(13)=abb336(21)+abb336(13)+abb336(133)
      abb336(13)=spbk7k2*abb336(13)
      abb336(21)=-spbk7l5*abb336(55)
      abb336(32)=abb336(108)*abb336(136)
      abb336(117)=abb336(63)*abb336(32)
      abb336(21)=abb336(21)+abb336(117)
      abb336(21)=spal5e7*abb336(21)
      abb336(117)=abb336(110)*abb336(126)
      abb336(86)=abb336(86)*abb336(42)
      abb336(126)=abb336(86)*abb336(58)
      abb336(117)=abb336(117)-abb336(126)
      abb336(114)=abb336(130)*abb336(114)
      abb336(114)=abb336(114)-abb336(117)
      abb336(114)=spbk7k2*abb336(114)
      abb336(65)=abb336(107)*abb336(65)
      abb336(126)=abb336(66)*abb336(32)
      abb336(123)=spbk7l5*abb336(123)
      abb336(123)=abb336(123)+abb336(126)
      abb336(123)=spal5e7*abb336(123)
      abb336(121)=-abb336(68)*abb336(121)
      abb336(121)=abb336(121)+abb336(123)
      abb336(121)=spbl6k3*abb336(121)
      abb336(21)=abb336(114)+abb336(121)+abb336(65)+abb336(21)
      abb336(21)=spak1k7*abb336(21)
      abb336(65)=3.0_ki*abb336(111)
      abb336(55)=-abb336(55)*abb336(65)
      abb336(111)=spbe7l5*abb336(64)
      abb336(58)=-abb336(18)*abb336(58)
      abb336(58)=abb336(111)+abb336(58)
      abb336(111)=abb336(136)*spak2k7
      abb336(114)=abb336(111)*spal5e7
      abb336(58)=abb336(58)*abb336(114)
      abb336(71)=-abb336(71)*abb336(119)
      abb336(121)=abb336(70)*abb336(119)
      abb336(123)=-spbe7l5*abb336(114)
      abb336(121)=abb336(121)+abb336(123)
      abb336(121)=abb336(66)*abb336(121)
      abb336(123)=abb336(65)*spak3k4
      abb336(126)=abb336(53)*abb336(123)
      abb336(121)=abb336(126)+abb336(121)
      abb336(121)=spbl6k3*abb336(121)
      abb336(55)=abb336(121)+abb336(71)+abb336(55)+abb336(58)
      abb336(55)=spak1l5*abb336(55)
      abb336(58)=abb336(108)*abb336(42)
      abb336(71)=3.0_ki*abb336(8)
      abb336(16)=abb336(79)*abb336(71)*abb336(58)*abb336(122)*abb336(16)
      abb336(121)=abb336(96)*abb336(88)
      abb336(122)=spak2e7*abb336(121)
      abb336(126)=abb336(78)*abb336(135)
      abb336(122)=abb336(126)+abb336(122)
      abb336(122)=spbk7e7*abb336(122)
      abb336(126)=spal5e7*spbk7l5
      abb336(20)=-abb336(20)*abb336(126)
      abb336(20)=abb336(122)+abb336(20)
      abb336(20)=spbl5k2*abb336(20)
      abb336(43)=abb336(136)*abb336(43)
      abb336(20)=abb336(43)+abb336(20)
      abb336(20)=spal5k7*abb336(20)
      abb336(43)=2.0_ki*abb336(125)
      abb336(43)=abb336(115)*spbk7e7*spbk4k3*abb336(43)
      abb336(32)=abb336(84)*abb336(32)
      abb336(82)=spbk7l5*abb336(82)
      abb336(32)=abb336(82)+abb336(32)
      abb336(32)=spal5e7*abb336(32)
      abb336(82)=-abb336(107)*abb336(85)
      abb336(45)=abb336(86)*abb336(45)
      abb336(85)=spbk7k2*abb336(45)
      abb336(32)=abb336(85)+abb336(82)+abb336(32)+abb336(43)
      abb336(32)=spak4k7*abb336(32)
      abb336(43)=2.0_ki*abb336(109)
      abb336(82)=-abb336(43)*abb336(125)
      abb336(85)=abb336(57)*abb336(65)
      abb336(86)=-abb336(18)*abb336(114)
      abb336(109)=abb336(44)*abb336(119)
      abb336(82)=abb336(109)+abb336(85)+abb336(86)+abb336(82)
      abb336(46)=abb336(82)*abb336(46)
      abb336(82)=abb336(135)*abb336(77)
      abb336(85)=abb336(82)+abb336(121)
      abb336(86)=2.0_ki*abb336(108)
      abb336(85)=abb336(85)*abb336(86)*abb336(24)
      abb336(80)=-spbk7e7*abb336(80)
      abb336(109)=abb336(37)*abb336(42)
      abb336(119)=spbk7k2*abb336(40)*abb336(109)
      abb336(121)=abb336(126)*abb336(48)
      abb336(80)=abb336(119)+abb336(80)+abb336(121)
      abb336(80)=spal5k7*abb336(80)
      abb336(77)=-spal5e7*abb336(77)*abb336(79)*abb336(86)
      abb336(119)=abb336(134)*abb336(79)
      abb336(114)=-spbe7k2*abb336(119)*abb336(114)
      abb336(77)=abb336(114)+abb336(77)+abb336(80)
      abb336(77)=spbl5k3*abb336(77)
      abb336(80)=-abb336(40)*abb336(78)
      abb336(48)=-abb336(137)*abb336(48)
      abb336(48)=abb336(80)+abb336(48)
      abb336(48)=spal5k7*abb336(48)
      abb336(80)=abb336(107)*abb336(87)
      abb336(87)=abb336(119)*abb336(138)
      abb336(107)=spak2k7*abb336(87)
      abb336(48)=abb336(107)+abb336(80)+abb336(48)
      abb336(48)=spbk7k3*abb336(48)
      abb336(41)=-abb336(7)*abb336(105)*abb336(41)
      abb336(13)=abb336(48)+abb336(46)+abb336(32)+abb336(77)+abb336(55)+abb336(&
      &21)+abb336(13)+abb336(20)+abb336(85)+abb336(16)+abb336(41)+abb336(118)+2&
      &.0_ki*abb336(95)
      abb336(13)=2.0_ki*abb336(13)
      abb336(16)=2.0_ki*abb336(92)
      abb336(16)=abb336(16)*abb336(93)
      abb336(16)=-abb336(16)+abb336(83)+5.0_ki*abb336(88)
      abb336(16)=abb336(16)*abb336(96)
      abb336(20)=abb336(39)*spbl6k3
      abb336(21)=abb336(20)*abb336(116)
      abb336(21)=abb336(21)-abb336(100)
      abb336(32)=abb336(102)+5.0_ki*abb336(101)
      abb336(41)=abb336(32)*abb336(31)
      abb336(16)=abb336(41)+2.0_ki*abb336(21)+abb336(16)
      abb336(16)=-abb336(16)*abb336(125)
      abb336(41)=abb336(10)*abb336(8)
      abb336(46)=abb336(18)*abb336(41)
      abb336(48)=abb336(17)*abb336(10)
      abb336(46)=-3.0_ki*abb336(46)+2.0_ki*abb336(48)
      abb336(46)=abb336(46)*abb336(8)
      abb336(48)=abb336(73)*abb336(10)
      abb336(46)=abb336(46)+abb336(48)
      abb336(48)=abb336(46)*abb336(97)
      abb336(55)=abb336(19)*abb336(10)
      abb336(77)=abb336(56)*abb336(41)
      abb336(80)=-abb336(55)+5.0_ki*abb336(77)
      abb336(85)=spak4k7*spbk4k3
      abb336(92)=-spbk7l5*abb336(80)*abb336(85)
      abb336(48)=abb336(92)+abb336(48)
      abb336(48)=spbl6k2*abb336(48)
      abb336(92)=abb336(71)*abb336(27)
      abb336(76)=-abb336(92)+2.0_ki*abb336(76)
      abb336(76)=abb336(76)*abb336(8)
      abb336(76)=abb336(76)+abb336(37)
      abb336(92)=-spak1k2*abb336(76)
      abb336(46)=-spbk4k3*abb336(46)
      abb336(46)=abb336(92)+abb336(46)
      abb336(46)=abb336(54)*abb336(46)
      abb336(92)=abb336(19)*abb336(8)
      abb336(93)=-abb336(74)*abb336(56)
      abb336(92)=-2.0_ki*abb336(93)+3.0_ki*abb336(92)
      abb336(92)=abb336(8)*abb336(81)*abb336(92)
      abb336(69)=abb336(81)*abb336(15)*abb336(69)
      abb336(69)=abb336(92)+abb336(69)
      abb336(69)=-abb336(69)*abb336(96)
      abb336(81)=abb336(28)*abb336(6)
      abb336(71)=abb336(81)*abb336(71)
      abb336(74)=-abb336(74)*abb336(51)
      abb336(92)=abb336(74)*abb336(6)
      abb336(71)=-abb336(71)+2.0_ki*abb336(92)
      abb336(71)=abb336(71)*abb336(8)
      abb336(15)=abb336(6)*abb336(15)*abb336(26)
      abb336(15)=abb336(71)-abb336(15)
      abb336(26)=abb336(15)*abb336(31)
      abb336(26)=abb336(26)+abb336(69)
      abb336(26)=spbl5k2*abb336(26)
      abb336(31)=abb336(51)*abb336(8)
      abb336(69)=-abb336(28)+5.0_ki*abb336(31)
      abb336(71)=abb336(59)-abb336(54)
      abb336(69)=-abb336(69)*abb336(71)
      abb336(80)=-spbk3k1*spbl6k2*abb336(80)
      abb336(69)=abb336(80)+abb336(69)
      abb336(69)=spak1k7*spbk7l5*abb336(69)
      abb336(38)=abb336(7)*abb336(38)*abb336(79)
      abb336(79)=abb336(84)*spak4l5
      abb336(38)=abb336(38)-abb336(79)
      abb336(79)=abb336(111)*abb336(38)
      abb336(80)=-abb336(106)*abb336(96)
      abb336(80)=abb336(80)-abb336(113)
      abb336(92)=abb336(80)*spbl5k2
      abb336(95)=abb336(136)*spal5k7
      abb336(97)=abb336(92)*abb336(95)
      abb336(76)=abb336(76)*abb336(20)
      abb336(67)=abb336(63)+abb336(67)
      abb336(100)=-abb336(132)*abb336(104)*abb336(67)
      abb336(15)=-abb336(15)*abb336(39)
      abb336(95)=abb336(127)*abb336(95)
      abb336(15)=abb336(15)+abb336(95)
      abb336(15)=spbl5k3*abb336(15)
      abb336(95)=spbk7k3*spak2k7
      abb336(32)=abb336(32)*abb336(39)*abb336(95)
      abb336(15)=abb336(32)+abb336(15)+abb336(100)+abb336(69)+abb336(76)+abb336&
      &(97)+abb336(26)+abb336(79)+abb336(46)+abb336(48)+abb336(16)
      abb336(15)=4.0_ki*abb336(15)
      abb336(16)=abb336(28)*spbe7l5
      abb336(26)=abb336(16)+abb336(53)
      abb336(32)=abb336(26)*spak3k4
      abb336(46)=abb336(86)*abb336(66)
      abb336(48)=abb336(46)+abb336(32)
      abb336(48)=abb336(48)*spbl6k3
      abb336(54)=abb336(26)*abb336(54)
      abb336(56)=abb336(56)*abb336(139)
      abb336(69)=abb336(56)+abb336(144)
      abb336(76)=abb336(69)*spbk3k1
      abb336(79)=abb336(76)*spbl6k2
      abb336(63)=abb336(63)*abb336(86)
      abb336(48)=abb336(48)-abb336(54)+abb336(79)+abb336(63)
      abb336(48)=abb336(48)*spak1e7
      abb336(54)=abb336(69)*spbk4k3
      abb336(63)=abb336(54)*spbl6k2
      abb336(69)=abb336(84)*abb336(86)
      abb336(63)=abb336(69)+abb336(63)
      abb336(63)=abb336(63)*spak4e7
      abb336(69)=abb336(103)*spak2e7
      abb336(79)=abb336(69)*abb336(39)
      abb336(97)=abb336(127)*abb336(137)
      abb336(79)=abb336(97)-abb336(79)
      abb336(79)=abb336(79)*spbe7k3
      abb336(97)=abb336(80)*abb336(138)
      abb336(72)=abb336(72)*abb336(132)
      abb336(33)=-abb336(48)-abb336(63)+abb336(97)+abb336(79)-abb336(72)-2.0_ki&
      &*abb336(33)
      abb336(33)=4.0_ki*abb336(33)
      abb336(48)=abb336(96)*abb336(62)
      abb336(62)=abb336(64)*spak1k2
      abb336(20)=abb336(20)*abb336(27)
      abb336(20)=-abb336(20)+abb336(62)+abb336(48)
      abb336(48)=abb336(127)*spbl5k3
      abb336(48)=abb336(48)+abb336(92)
      abb336(62)=-abb336(48)-abb336(20)
      abb336(62)=32.0_ki*abb336(62)
      abb336(20)=-abb336(48)-2.0_ki*abb336(20)
      abb336(20)=16.0_ki*abb336(20)
      abb336(48)=abb336(101)-abb336(99)
      abb336(48)=spak2k4*abb336(48)
      abb336(63)=abb336(94)-abb336(88)
      abb336(64)=spbk3k1*abb336(63)
      abb336(48)=abb336(64)+abb336(48)
      abb336(48)=abb336(48)*abb336(86)
      abb336(64)=abb336(37)*spbe7l5
      abb336(52)=abb336(64)-abb336(52)
      abb336(64)=-abb336(7)*abb336(52)
      abb336(72)=abb336(86)*abb336(116)
      abb336(64)=abb336(64)+abb336(72)
      abb336(59)=abb336(64)*abb336(59)
      abb336(52)=abb336(52)*abb336(98)*spak2k4
      abb336(11)=abb336(73)*abb336(11)
      abb336(11)=abb336(11)-abb336(140)
      abb336(11)=abb336(11)*abb336(98)
      abb336(64)=abb336(6)*abb336(93)*abb336(139)
      abb336(11)=abb336(11)+abb336(64)
      abb336(64)=-spbk3k1*abb336(11)
      abb336(72)=abb336(29)*spak2k4
      abb336(79)=abb336(8)*abb336(74)*abb336(72)
      abb336(48)=abb336(59)+abb336(48)+abb336(64)+abb336(79)+abb336(52)
      abb336(48)=spak1e7*abb336(48)
      abb336(52)=abb336(72)*abb336(78)
      abb336(43)=abb336(43)*abb336(142)
      abb336(59)=abb336(141)*spak2e7
      abb336(43)=abb336(43)-abb336(59)
      abb336(59)=spbk3k1*abb336(43)
      abb336(64)=abb336(30)*spak2k4
      abb336(79)=abb336(12)*abb336(6)
      abb336(92)=abb336(19)*abb336(79)
      abb336(64)=abb336(64)-abb336(92)
      abb336(92)=-abb336(64)*abb336(65)
      abb336(52)=abb336(92)+abb336(59)+abb336(52)-2.0_ki*abb336(129)
      abb336(52)=spak1l5*abb336(52)
      abb336(59)=-spak2k4*abb336(69)
      abb336(92)=spbk3k1*spak2e7
      abb336(93)=abb336(89)*abb336(92)
      abb336(59)=abb336(59)+abb336(93)
      abb336(59)=spbk7e7*abb336(59)
      abb336(93)=abb336(64)*abb336(126)
      abb336(72)=abb336(109)*abb336(72)
      abb336(94)=abb336(73)*abb336(42)
      abb336(79)=abb336(94)*abb336(79)
      abb336(72)=abb336(72)-abb336(79)
      abb336(79)=-spbk7k2*abb336(72)
      abb336(59)=abb336(79)+abb336(59)+abb336(93)
      abb336(59)=spak1k7*abb336(59)
      abb336(49)=abb336(40)*abb336(134)*abb336(49)
      abb336(49)=abb336(90)-abb336(49)
      abb336(79)=abb336(23)*spak2k4
      abb336(14)=abb336(79)-abb336(14)
      abb336(14)=abb336(14)*abb336(73)
      abb336(73)=-abb336(37)*abb336(145)
      abb336(73)=abb336(73)-abb336(14)
      abb336(73)=spal5e7*abb336(73)
      abb336(14)=abb336(7)*abb336(14)
      abb336(79)=abb336(134)*abb336(145)
      abb336(14)=abb336(79)+abb336(14)
      abb336(14)=abb336(14)*abb336(47)
      abb336(79)=-abb336(19)*abb336(126)
      abb336(90)=spbk7k2*abb336(94)
      abb336(79)=abb336(90)+abb336(79)
      abb336(79)=abb336(23)*abb336(79)
      abb336(89)=spbk4k3*abb336(89)*abb336(68)
      abb336(79)=abb336(89)+abb336(79)
      abb336(79)=spak4k7*abb336(79)
      abb336(89)=abb336(63)*abb336(86)
      abb336(11)=-abb336(11)+abb336(89)
      abb336(11)=spak4e7*spbk4k3*abb336(11)
      abb336(43)=spbk4k3*abb336(43)
      abb336(89)=abb336(19)*abb336(23)*abb336(65)
      abb336(43)=abb336(43)+abb336(89)
      abb336(43)=spak4l5*abb336(43)
      abb336(25)=-abb336(25)*abb336(120)
      abb336(25)=abb336(25)+abb336(124)
      abb336(25)=abb336(42)*abb336(39)*abb336(6)*abb336(25)
      abb336(42)=abb336(137)*abb336(119)
      abb336(25)=abb336(25)+abb336(42)
      abb336(25)=spbe7k3*abb336(25)
      abb336(11)=abb336(43)+abb336(11)+abb336(79)+abb336(25)+abb336(52)+abb336(&
      &48)+abb336(59)+abb336(14)+abb336(73)-2.0_ki*abb336(49)
      abb336(11)=4.0_ki*abb336(11)
      abb336(14)=-abb336(63)*abb336(96)
      abb336(25)=abb336(112)*abb336(6)
      abb336(42)=abb336(106)*spbk3k1
      abb336(25)=abb336(25)-abb336(42)
      abb336(42)=spak1k7*abb336(25)
      abb336(43)=-abb336(106)*abb336(85)
      abb336(42)=abb336(43)+abb336(42)
      abb336(42)=abb336(136)*abb336(42)
      abb336(43)=spbl5k3*abb336(119)
      abb336(14)=2.0_ki*abb336(43)+abb336(82)+abb336(42)+abb336(21)+abb336(14)
      abb336(14)=16.0_ki*abb336(14)
      abb336(21)=-4.0_ki*abb336(50)
      abb336(42)=spbk7k2*abb336(80)
      abb336(43)=spbk7k3*abb336(127)
      abb336(42)=abb336(42)+abb336(43)
      abb336(42)=8.0_ki*abb336(42)
      abb336(43)=abb336(56)-abb336(144)
      abb336(48)=abb336(43)*spbk4k3
      abb336(49)=abb336(10)*spbk4k3
      abb336(50)=abb336(18)*abb336(49)
      abb336(52)=abb336(50)*abb336(86)
      abb336(48)=abb336(52)-abb336(48)
      abb336(52)=-abb336(48)*abb336(24)
      abb336(54)=abb336(54)*spae7k7
      abb336(56)=abb336(44)*spal5k7
      abb336(22)=abb336(56)*abb336(22)
      abb336(22)=abb336(54)+abb336(22)
      abb336(54)=spbk7k2*abb336(22)
      abb336(49)=spbk7e7*abb336(56)*abb336(49)
      abb336(56)=-spbl5k2*abb336(49)
      abb336(59)=spbk4k3*abb336(77)*abb336(138)
      abb336(52)=abb336(59)+abb336(54)+abb336(52)+abb336(56)
      abb336(52)=2.0_ki*abb336(52)
      abb336(54)=abb336(55)-abb336(77)
      abb336(55)=-spbl5k2*spbk4k3*abb336(54)
      abb336(56)=abb336(50)*abb336(125)
      abb336(55)=abb336(55)+abb336(56)
      abb336(55)=16.0_ki*abb336(55)
      abb336(56)=abb336(57)*abb336(61)
      abb336(57)=-8.0_ki*spbk4k3*abb336(56)
      abb336(59)=-abb336(83)+3.0_ki*abb336(88)
      abb336(59)=abb336(59)*spak2e7
      abb336(59)=abb336(59)-3.0_ki*abb336(115)
      abb336(61)=abb336(59)*abb336(108)
      abb336(17)=abb336(17)*abb336(41)
      abb336(41)=-spak2e7*abb336(17)
      abb336(63)=-abb336(137)*abb336(77)
      abb336(41)=abb336(41)+abb336(63)
      abb336(41)=spbe7l6*abb336(41)
      abb336(41)=abb336(41)+abb336(61)
      abb336(41)=spbk4k3*abb336(41)
      abb336(61)=abb336(65)*spak2l5
      abb336(63)=abb336(61)-abb336(105)
      abb336(19)=-abb336(19)*abb336(63)
      abb336(65)=-abb336(94)*abb336(125)
      abb336(19)=abb336(65)+abb336(19)
      abb336(19)=abb336(23)*abb336(19)
      abb336(23)=-spal5e7*abb336(48)
      abb336(23)=abb336(23)-abb336(49)
      abb336(23)=spbl6l5*abb336(23)
      abb336(22)=-spbk7l6*abb336(22)
      abb336(19)=abb336(22)+abb336(23)+abb336(45)+abb336(19)+abb336(41)
      abb336(19)=2.0_ki*abb336(19)
      abb336(22)=-spbl6l5*abb336(54)
      abb336(23)=abb336(106)*abb336(104)
      abb336(22)=abb336(23)+abb336(22)
      abb336(22)=spbk4k3*abb336(22)
      abb336(23)=spbk7l6*spak2k7
      abb336(41)=-abb336(50)*abb336(23)
      abb336(22)=abb336(41)+abb336(22)
      abb336(22)=16.0_ki*abb336(22)
      abb336(41)=-spak1k7*abb336(67)
      abb336(45)=-spak4k7*abb336(84)
      abb336(41)=abb336(41)+abb336(45)
      abb336(41)=8.0_ki*abb336(41)
      abb336(45)=-spak1l5*abb336(67)
      abb336(38)=abb336(45)+abb336(38)
      abb336(38)=8.0_ki*abb336(38)
      abb336(45)=spak3k4*abb336(8)
      abb336(48)=-abb336(74)*abb336(29)*abb336(45)
      abb336(49)=-spak3k4*abb336(86)*abb336(101)
      abb336(48)=abb336(48)+abb336(49)
      abb336(48)=spak1e7*abb336(48)
      abb336(37)=-spal5e7*abb336(37)
      abb336(47)=-abb336(134)*abb336(47)
      abb336(37)=abb336(37)+abb336(47)
      abb336(37)=abb336(40)*abb336(37)
      abb336(40)=abb336(69)*spbk7e7
      abb336(47)=-abb336(30)*abb336(126)
      abb336(40)=abb336(40)+abb336(47)
      abb336(40)=spak3k4*abb336(40)
      abb336(29)=abb336(29)*spak3k4
      abb336(47)=abb336(29)*abb336(109)
      abb336(49)=spbk7k2*abb336(47)
      abb336(40)=abb336(49)+abb336(40)
      abb336(40)=spak1k7*abb336(40)
      abb336(29)=-abb336(78)*abb336(29)
      abb336(49)=abb336(30)*abb336(123)
      abb336(29)=abb336(29)+abb336(49)
      abb336(29)=spak1l5*abb336(29)
      abb336(29)=-abb336(87)+abb336(29)+abb336(48)+abb336(40)+abb336(37)
      abb336(29)=2.0_ki*abb336(29)
      abb336(37)=-2.0_ki*abb336(102)-abb336(101)
      abb336(37)=abb336(37)*abb336(39)
      abb336(39)=-spak1k7*spak3k4*abb336(136)*abb336(81)
      abb336(37)=abb336(37)+abb336(39)
      abb336(37)=8.0_ki*abb336(37)
      abb336(10)=abb336(10)*spbk3k1
      abb336(18)=abb336(18)*abb336(10)
      abb336(27)=abb336(27)*spak2k4
      abb336(18)=abb336(18)-abb336(27)
      abb336(39)=abb336(18)*abb336(86)
      abb336(16)=abb336(16)-abb336(53)
      abb336(40)=abb336(16)*spak2k4
      abb336(43)=abb336(43)*spbk3k1
      abb336(39)=-abb336(39)+abb336(40)+abb336(43)
      abb336(24)=abb336(39)*abb336(24)
      abb336(34)=-abb336(7)*abb336(70)*abb336(45)*abb336(75)*abb336(34)
      abb336(36)=-spak3k4*abb336(58)*abb336(36)*abb336(91)
      abb336(26)=abb336(26)*spak2k4
      abb336(26)=abb336(26)-abb336(76)
      abb336(26)=abb336(26)*spae7k7
      abb336(12)=abb336(44)*abb336(12)
      abb336(40)=abb336(27)*abb336(70)
      abb336(12)=abb336(12)-abb336(40)
      abb336(12)=abb336(12)*spal5k7
      abb336(12)=abb336(12)-abb336(26)
      abb336(26)=spbk7k2*abb336(12)
      abb336(40)=abb336(78)*spak3k4
      abb336(43)=abb336(45)*abb336(51)*abb336(137)
      abb336(40)=abb336(40)+abb336(43)
      abb336(43)=spbe7k3*abb336(40)
      abb336(10)=abb336(44)*abb336(10)
      abb336(27)=abb336(27)*spak2e7
      abb336(10)=abb336(10)-abb336(27)
      abb336(10)=abb336(10)*spal5k7*spbk7e7
      abb336(27)=-spbl5k2*abb336(10)
      abb336(44)=abb336(31)*spak2k4
      abb336(45)=abb336(77)*spbk3k1
      abb336(44)=abb336(44)-abb336(45)
      abb336(45)=-abb336(44)*abb336(138)
      abb336(16)=abb336(16)*spak3k4
      abb336(16)=abb336(16)+abb336(46)
      abb336(16)=abb336(16)*spal5e7
      abb336(46)=abb336(66)*spal5k7
      abb336(48)=abb336(46)*abb336(68)
      abb336(16)=abb336(16)+abb336(48)
      abb336(48)=-spbl5k3*abb336(16)
      abb336(32)=abb336(32)*spae7k7
      abb336(46)=abb336(46)*abb336(70)
      abb336(32)=abb336(32)+abb336(46)
      abb336(46)=spbk7k3*abb336(32)
      abb336(24)=abb336(46)+abb336(43)+abb336(48)+abb336(45)+abb336(26)+abb336(&
      &27)+abb336(24)+abb336(34)+3.0_ki*abb336(36)
      abb336(24)=2.0_ki*abb336(24)
      abb336(26)=abb336(54)*spbk3k1
      abb336(27)=abb336(31)-abb336(28)
      abb336(28)=abb336(27)*spak2k4
      abb336(26)=abb336(26)+abb336(28)
      abb336(28)=-spbl5k2*abb336(26)
      abb336(34)=abb336(18)*abb336(125)
      abb336(27)=abb336(27)*spak3k4
      abb336(36)=spbl5k3*abb336(27)
      abb336(43)=abb336(66)*abb336(95)
      abb336(28)=abb336(43)+abb336(36)+abb336(28)+abb336(34)
      abb336(28)=16.0_ki*abb336(28)
      abb336(31)=-abb336(31)*abb336(71)
      abb336(34)=-spbk3k1*abb336(56)
      abb336(31)=abb336(34)+abb336(31)
      abb336(31)=8.0_ki*abb336(31)
      abb336(34)=-abb336(102)+3.0_ki*abb336(101)
      abb336(34)=abb336(34)*spak2e7
      abb336(35)=spbl6k2*abb336(35)
      abb336(35)=abb336(34)-3.0_ki*abb336(35)
      abb336(35)=abb336(108)*abb336(35)
      abb336(36)=abb336(70)*abb336(110)
      abb336(35)=abb336(36)+abb336(35)
      abb336(35)=spak3k4*abb336(35)
      abb336(36)=-spbe7l6*abb336(40)
      abb336(40)=spak2k7*spak3k4
      abb336(43)=abb336(40)*abb336(126)
      abb336(45)=-spak3k4*abb336(61)
      abb336(43)=abb336(45)+abb336(43)
      abb336(30)=abb336(30)*abb336(43)
      abb336(16)=-spbl6l5*abb336(16)
      abb336(32)=-spbk7l6*abb336(32)
      abb336(43)=-abb336(47)*abb336(125)
      abb336(16)=abb336(36)+abb336(32)+abb336(16)+abb336(43)+abb336(30)+abb336(&
      &35)
      abb336(16)=2.0_ki*abb336(16)
      abb336(27)=spbl6l5*abb336(27)
      abb336(30)=spbk7l5*abb336(40)*abb336(81)
      abb336(32)=-abb336(66)*abb336(23)
      abb336(27)=abb336(32)+abb336(30)+abb336(27)
      abb336(27)=16.0_ki*abb336(27)
      abb336(30)=spbk3k1*abb336(59)
      abb336(32)=-spak2k4*abb336(34)
      abb336(30)=abb336(30)+abb336(32)+3.0_ki*abb336(128)
      abb336(30)=abb336(30)*abb336(108)
      abb336(32)=spal5e7*abb336(39)
      abb336(10)=abb336(32)-abb336(10)
      abb336(10)=spbl6l5*abb336(10)
      abb336(12)=-spbk7l6*abb336(12)
      abb336(32)=spak2k4*abb336(78)
      abb336(34)=abb336(44)*abb336(137)
      abb336(17)=-abb336(17)*abb336(92)
      abb336(17)=abb336(34)+abb336(32)+abb336(17)
      abb336(17)=spbe7l6*abb336(17)
      abb336(32)=abb336(64)*abb336(63)
      abb336(34)=abb336(72)*abb336(125)
      abb336(10)=abb336(17)+abb336(12)+abb336(10)+abb336(30)+abb336(34)+abb336(&
      &32)-abb336(117)
      abb336(10)=2.0_ki*abb336(10)
      abb336(12)=-spbl6l5*abb336(26)
      abb336(17)=-abb336(25)*abb336(104)
      abb336(18)=-abb336(18)*abb336(23)
      abb336(12)=abb336(18)+abb336(17)+abb336(12)
      abb336(12)=16.0_ki*abb336(12)
      R2d336=abb336(60)
      rat2 = rat2 + R2d336
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='336' value='", &
          & R2d336, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd336h3
