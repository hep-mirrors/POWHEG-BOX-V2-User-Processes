module     p0_dbaru_epnebbbarg_abbrevd316h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(141), public :: abb316
   complex(ki), public :: R2d316
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
      abb316(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb316(2)=NC**(-1)
      abb316(3)=sqrt2**(-1)
      abb316(4)=es234**(-1)
      abb316(5)=spbl5k2**(-1)
      abb316(6)=spak2k7**(-1)
      abb316(7)=spbl6k2**(-1)
      abb316(8)=spak2l6**(-1)
      abb316(9)=sqrt(mB**2)
      abb316(10)=abb316(5)*abb316(7)
      abb316(11)=spbk3k2**2
      abb316(12)=abb316(10)*abb316(11)
      abb316(13)=c1*abb316(2)
      abb316(14)=TR*gW
      abb316(14)=abb316(14)**2*i_*CVDU*abb316(6)*abb316(3)
      abb316(15)=abb316(14)*abb316(13)
      abb316(16)=abb316(4)*abb316(1)
      abb316(17)=abb316(15)*abb316(16)
      abb316(18)=abb316(12)*abb316(17)
      abb316(19)=mB**3
      abb316(20)=abb316(18)*abb316(19)
      abb316(21)=abb316(10)*abb316(19)
      abb316(22)=abb316(14)*c3
      abb316(23)=abb316(22)*abb316(16)
      abb316(24)=abb316(23)*NC
      abb316(25)=abb316(24)*abb316(11)
      abb316(26)=abb316(21)*abb316(25)
      abb316(20)=abb316(20)+abb316(26)
      abb316(26)=abb316(20)*spbk7k2
      abb316(27)=abb316(12)*abb316(23)
      abb316(28)=spbk7k2*abb316(2)
      abb316(29)=abb316(19)*abb316(28)
      abb316(30)=abb316(29)*abb316(27)
      abb316(26)=abb316(26)-abb316(30)
      abb316(30)=abb316(8)*spak3k4
      abb316(31)=spak1k2**2
      abb316(32)=abb316(26)*abb316(30)*abb316(31)
      abb316(14)=abb316(14)*abb316(16)*spbk3k2
      abb316(16)=abb316(14)*c3
      abb316(33)=abb316(16)*NC
      abb316(13)=abb316(14)*abb316(13)
      abb316(13)=abb316(33)+abb316(13)
      abb316(14)=abb316(16)*abb316(2)
      abb316(14)=abb316(13)-abb316(14)
      abb316(33)=-abb316(14)*abb316(9)
      abb316(34)=spak1k2*spbk7k2
      abb316(35)=abb316(34)*abb316(33)
      abb316(36)=spbk7k2*mB
      abb316(37)=abb316(36)*spak1k2
      abb316(38)=abb316(37)*abb316(14)
      abb316(38)=abb316(35)+abb316(38)
      abb316(39)=spak1l5*spak2k4
      abb316(38)=abb316(38)*abb316(39)
      abb316(40)=abb316(17)*abb316(11)
      abb316(40)=abb316(25)+abb316(40)
      abb316(41)=abb316(5)*mB
      abb316(40)=abb316(41)*abb316(40)
      abb316(42)=spak1k2*abb316(40)
      abb316(43)=abb316(11)*abb316(23)
      abb316(44)=abb316(5)*spak1k2
      abb316(45)=abb316(2)*mB
      abb316(46)=abb316(45)*abb316(43)*abb316(44)
      abb316(42)=abb316(42)-abb316(46)
      abb316(46)=spak1l6*spak3k4
      abb316(47)=abb316(42)*abb316(46)
      abb316(48)=spbk7l6*abb316(47)
      abb316(49)=spak1k2*abb316(13)
      abb316(50)=abb316(16)*spak1k2
      abb316(51)=abb316(50)*abb316(2)
      abb316(49)=abb316(49)-abb316(51)
      abb316(52)=abb316(49)*abb316(9)
      abb316(53)=spbk7k3*spak3k4
      abb316(54)=abb316(53)*spak1l5
      abb316(55)=abb316(54)*abb316(52)
      abb316(32)=abb316(55)+abb316(48)+abb316(32)+abb316(38)
      abb316(32)=spal6k7*abb316(32)
      abb316(38)=abb316(23)*abb316(2)
      abb316(48)=abb316(38)-abb316(17)
      abb316(55)=abb316(7)**2
      abb316(56)=abb316(55)*abb316(19)
      abb316(57)=abb316(56)*spak1k2
      abb316(58)=-abb316(48)*abb316(57)*abb316(11)
      abb316(59)=abb316(57)*abb316(25)
      abb316(58)=abb316(59)+abb316(58)
      abb316(59)=abb316(58)*abb316(8)
      abb316(60)=spak1l5*spak3k4
      abb316(61)=es71*abb316(60)*abb316(59)
      abb316(32)=abb316(32)+abb316(61)
      abb316(61)=2.0_ki*spbk7k1
      abb316(32)=abb316(32)*abb316(61)
      abb316(62)=abb316(36)*abb316(13)
      abb316(63)=spbk7k2*abb316(13)
      abb316(64)=abb316(28)*abb316(16)
      abb316(64)=abb316(64)-abb316(63)
      abb316(64)=abb316(64)*abb316(9)
      abb316(65)=abb316(36)*abb316(16)
      abb316(66)=abb316(65)*abb316(2)
      abb316(62)=-abb316(62)+abb316(66)-abb316(64)
      abb316(66)=abb316(62)*abb316(39)
      abb316(67)=abb316(33)*abb316(54)
      abb316(66)=abb316(67)+abb316(66)
      abb316(66)=spak2l6*abb316(66)
      abb316(12)=abb316(12)*abb316(38)
      abb316(67)=abb316(12)-abb316(18)
      abb316(68)=abb316(19)*abb316(34)
      abb316(69)=-abb316(68)*abb316(67)
      abb316(70)=abb316(10)*abb316(68)
      abb316(71)=abb316(70)*abb316(25)
      abb316(69)=abb316(71)+abb316(69)
      abb316(71)=abb316(69)*spak3k4
      abb316(72)=abb316(45)*abb316(5)
      abb316(43)=abb316(43)*abb316(72)
      abb316(40)=abb316(40)-abb316(43)
      abb316(43)=abb316(40)*abb316(46)
      abb316(73)=spbk7l6*spak2l6
      abb316(74)=abb316(43)*abb316(73)
      abb316(66)=-abb316(71)+abb316(66)-abb316(74)
      abb316(71)=mB**2
      abb316(34)=abb316(71)*abb316(34)
      abb316(74)=-abb316(34)*abb316(67)
      abb316(75)=abb316(34)*abb316(10)
      abb316(76)=abb316(75)*abb316(25)
      abb316(74)=abb316(76)+abb316(74)
      abb316(76)=abb316(9)*spak3k4
      abb316(74)=abb316(74)*abb316(76)
      abb316(77)=-abb316(74)+abb316(66)
      abb316(77)=es71*abb316(77)
      abb316(78)=abb316(60)*spbk7k1
      abb316(59)=abb316(59)*abb316(78)
      abb316(79)=2.0_ki*es12
      abb316(80)=-abb316(79)+2.0_ki*es712
      abb316(81)=-abb316(59)*abb316(80)
      abb316(82)=abb316(7)*abb316(13)
      abb316(83)=abb316(16)*abb316(7)
      abb316(84)=abb316(83)*abb316(2)
      abb316(84)=abb316(82)-abb316(84)
      abb316(85)=abb316(36)*abb316(84)
      abb316(86)=spak2l6*abb316(85)*abb316(60)
      abb316(87)=es71*abb316(86)
      abb316(88)=abb316(37)*abb316(84)
      abb316(89)=abb316(88)*spal6k7
      abb316(90)=abb316(78)*abb316(89)
      abb316(87)=abb316(87)-2.0_ki*abb316(90)
      abb316(87)=spbl6k3*abb316(87)
      abb316(32)=abb316(87)+abb316(77)+abb316(32)+abb316(81)
      abb316(32)=4.0_ki*abb316(32)
      abb316(77)=abb316(86)*spbl6k3
      abb316(66)=abb316(74)+abb316(77)+abb316(66)
      abb316(74)=abb316(25)*abb316(7)
      abb316(77)=abb316(17)*abb316(7)
      abb316(81)=abb316(77)*abb316(11)
      abb316(74)=abb316(74)+abb316(81)
      abb316(81)=spak1k2*mB
      abb316(86)=abb316(74)*abb316(81)
      abb316(87)=abb316(23)*abb316(7)
      abb316(90)=abb316(87)*abb316(45)
      abb316(91)=abb316(90)*abb316(11)
      abb316(92)=abb316(91)*spak1k2
      abb316(86)=abb316(92)-abb316(86)
      abb316(86)=abb316(86)*abb316(60)
      abb316(86)=abb316(86)-abb316(47)
      abb316(61)=-abb316(86)*abb316(61)
      abb316(61)=abb316(61)+abb316(66)
      abb316(61)=8.0_ki*abb316(61)
      abb316(47)=-8.0_ki*spbk7k1*abb316(47)
      abb316(92)=abb316(36)**2
      abb316(93)=abb316(92)*abb316(10)
      abb316(94)=abb316(13)*abb316(93)
      abb316(95)=abb316(5)*abb316(2)
      abb316(96)=abb316(95)*abb316(83)
      abb316(97)=abb316(96)*abb316(92)
      abb316(94)=abb316(97)-abb316(94)
      abb316(94)=abb316(94)*abb316(9)
      abb316(97)=spbk7k2**2
      abb316(98)=abb316(97)*abb316(19)
      abb316(99)=abb316(96)*abb316(98)
      abb316(100)=abb316(98)*abb316(10)
      abb316(101)=abb316(13)*abb316(100)
      abb316(94)=abb316(94)-abb316(99)+abb316(101)
      abb316(99)=spak1k7*spak2k4
      abb316(94)=abb316(94)*abb316(99)
      abb316(101)=abb316(37)*abb316(5)
      abb316(102)=abb316(101)*abb316(14)
      abb316(103)=abb316(102)*spak4l6
      abb316(104)=abb316(103)*spbk7l6
      abb316(105)=spbk7l6*spak4l5
      abb316(106)=abb316(105)*abb316(88)
      abb316(104)=abb316(104)+abb316(106)
      abb316(98)=abb316(98)*abb316(44)
      abb316(106)=abb316(8)*spak2k4
      abb316(107)=-abb316(106)*abb316(84)*abb316(98)
      abb316(107)=abb316(107)+abb316(104)
      abb316(107)=abb316(107)*spal6k7
      abb316(108)=abb316(36)*abb316(5)
      abb316(109)=abb316(108)*abb316(13)
      abb316(65)=abb316(95)*abb316(65)
      abb316(65)=abb316(109)-abb316(65)
      abb316(95)=abb316(73)*spak1k7
      abb316(109)=abb316(65)*abb316(95)
      abb316(110)=abb316(109)*spak4l6
      abb316(111)=abb316(95)*abb316(85)
      abb316(112)=abb316(111)*spak4l5
      abb316(110)=abb316(110)+abb316(112)
      abb316(92)=abb316(9)*abb316(92)*abb316(44)
      abb316(112)=abb316(84)*abb316(92)
      abb316(113)=abb316(112)*spak4k7
      abb316(55)=abb316(55)*abb316(68)
      abb316(114)=abb316(55)*abb316(14)
      abb316(115)=abb316(8)*spak4l5
      abb316(116)=abb316(115)*abb316(114)
      abb316(117)=es712-es12
      abb316(118)=abb316(117)-es71
      abb316(119)=abb316(118)*abb316(116)
      abb316(94)=abb316(94)-abb316(110)-abb316(107)-abb316(113)+abb316(119)
      abb316(94)=16.0_ki*abb316(94)
      abb316(107)=abb316(88)*spak4l5
      abb316(107)=abb316(107)+abb316(103)
      abb316(113)=32.0_ki*abb316(107)
      abb316(103)=16.0_ki*abb316(103)
      abb316(21)=-abb316(21)*abb316(63)
      abb316(119)=abb316(83)*abb316(5)
      abb316(29)=abb316(29)*abb316(119)
      abb316(21)=abb316(29)+abb316(21)
      abb316(21)=spak3k4*abb316(21)
      abb316(10)=abb316(71)*abb316(10)
      abb316(29)=abb316(10)*abb316(63)
      abb316(63)=-abb316(71)*abb316(28)*abb316(119)
      abb316(29)=abb316(63)+abb316(29)
      abb316(29)=abb316(29)*abb316(76)
      abb316(21)=abb316(21)+abb316(29)
      abb316(21)=spbk7k3*spak1k7*abb316(21)
      abb316(29)=abb316(70)*abb316(13)
      abb316(63)=abb316(96)*abb316(68)
      abb316(29)=abb316(29)-abb316(63)
      abb316(63)=abb316(53)*abb316(8)
      abb316(68)=-abb316(29)*abb316(63)
      abb316(68)=abb316(68)+abb316(104)
      abb316(68)=spal6k7*abb316(68)
      abb316(21)=abb316(68)+abb316(21)+abb316(110)
      abb316(68)=abb316(39)*abb316(85)
      abb316(104)=-mB*abb316(82)
      abb316(83)=abb316(83)*abb316(45)
      abb316(104)=abb316(83)+abb316(104)
      abb316(110)=abb316(54)*abb316(104)
      abb316(68)=abb316(68)+abb316(110)
      abb316(110)=2.0_ki*abb316(116)-abb316(68)
      abb316(110)=es71*abb316(110)
      abb316(119)=-abb316(116)*abb316(80)
      abb316(120)=2.0_ki*spak4k7
      abb316(121)=abb316(120)*abb316(112)
      abb316(21)=abb316(121)-abb316(59)+2.0_ki*abb316(21)+abb316(110)+abb316(11&
      &9)
      abb316(21)=8.0_ki*abb316(21)
      abb316(59)=-abb316(68)+2.0_ki*abb316(107)
      abb316(59)=16.0_ki*abb316(59)
      abb316(110)=16.0_ki*abb316(116)
      abb316(116)=-8.0_ki*abb316(66)
      abb316(119)=16.0_ki*abb316(68)
      abb316(86)=spbk7k1*abb316(86)
      abb316(121)=abb316(53)*abb316(9)
      abb316(49)=abb316(49)*abb316(121)
      abb316(35)=abb316(35)*spak2k4
      abb316(35)=abb316(49)+abb316(35)
      abb316(49)=spal5l6*abb316(35)
      abb316(49)=abb316(49)+abb316(86)-abb316(66)
      abb316(49)=4.0_ki*abb316(49)
      abb316(66)=8.0_ki*abb316(107)
      abb316(68)=-abb316(107)+abb316(68)
      abb316(68)=8.0_ki*abb316(68)
      abb316(86)=abb316(75)*abb316(13)
      abb316(34)=abb316(96)*abb316(34)
      abb316(34)=abb316(86)-abb316(34)
      abb316(86)=-abb316(34)*abb316(121)
      abb316(96)=-abb316(88)*abb316(39)
      abb316(82)=abb316(81)*abb316(82)
      abb316(83)=abb316(83)*spak1k2
      abb316(82)=abb316(82)-abb316(83)
      abb316(54)=abb316(82)*abb316(54)
      abb316(54)=abb316(96)+abb316(54)
      abb316(54)=spbk7k1*abb316(54)
      abb316(83)=spak2k4*abb316(112)
      abb316(54)=abb316(54)+abb316(83)+abb316(86)
      abb316(54)=8.0_ki*abb316(54)
      abb316(83)=abb316(42)*spak3k4
      abb316(83)=4.0_ki*abb316(83)
      abb316(86)=es71*abb316(83)
      abb316(96)=8.0_ki*spak3k4
      abb316(42)=abb316(96)*abb316(42)
      abb316(107)=abb316(52)*spak4l5
      abb316(122)=abb316(120)*abb316(102)
      abb316(107)=abb316(107)+abb316(122)
      abb316(122)=abb316(65)*spak1k7
      abb316(123)=abb316(122)*spak2k4
      abb316(124)=abb316(107)+2.0_ki*abb316(123)
      abb316(124)=8.0_ki*abb316(124)
      abb316(125)=abb316(41)*abb316(13)
      abb316(126)=abb316(72)*abb316(16)
      abb316(126)=-abb316(126)+abb316(125)
      abb316(127)=abb316(53)*spak1k7
      abb316(128)=abb316(126)*abb316(127)
      abb316(107)=-2.0_ki*abb316(128)-abb316(107)
      abb316(107)=8.0_ki*abb316(107)
      abb316(128)=abb316(102)*spak2k4
      abb316(125)=-spak1k2*abb316(125)
      abb316(129)=abb316(72)*abb316(50)
      abb316(125)=abb316(129)+abb316(125)
      abb316(129)=abb316(125)*abb316(53)
      abb316(128)=abb316(128)+abb316(129)
      abb316(129)=8.0_ki*abb316(128)
      abb316(130)=-4.0_ki*abb316(52)*abb316(78)
      abb316(131)=spal6k7*spbk7l6*abb316(128)
      abb316(132)=spak2k4*abb316(109)
      abb316(133)=-abb316(126)*abb316(53)*abb316(95)
      abb316(131)=abb316(131)+abb316(132)+abb316(133)
      abb316(12)=abb316(12)*abb316(19)
      abb316(12)=abb316(12)-abb316(20)
      abb316(20)=abb316(12)*abb316(30)
      abb316(31)=abb316(31)*abb316(20)
      abb316(132)=-abb316(81)*abb316(13)
      abb316(50)=abb316(45)*abb316(50)
      abb316(50)=abb316(52)+abb316(50)+abb316(132)
      abb316(50)=abb316(50)*abb316(39)
      abb316(31)=abb316(31)+abb316(50)
      abb316(31)=spbk7k1*abb316(31)
      abb316(50)=spbl6k3*abb316(82)*abb316(78)
      abb316(31)=abb316(50)+2.0_ki*abb316(131)+abb316(31)
      abb316(31)=4.0_ki*abb316(31)
      abb316(50)=16.0_ki*abb316(128)
      abb316(29)=abb316(29)*abb316(106)
      abb316(78)=abb316(82)*abb316(105)
      abb316(29)=abb316(29)-abb316(78)
      abb316(29)=8.0_ki*abb316(29)
      abb316(19)=abb316(63)*abb316(44)*abb316(19)*abb316(84)
      abb316(19)=-abb316(78)+abb316(19)
      abb316(19)=8.0_ki*abb316(19)
      abb316(78)=-4.0_ki*abb316(128)
      abb316(14)=-abb316(14)*abb316(121)
      abb316(64)=spak2k4*abb316(64)
      abb316(64)=abb316(64)-abb316(14)
      abb316(84)=spak2l6*spak1k7
      abb316(64)=abb316(84)*abb316(64)
      abb316(35)=spal6k7*abb316(35)
      abb316(35)=abb316(35)+abb316(64)
      abb316(35)=8.0_ki*abb316(35)
      abb316(64)=abb316(127)*abb316(104)
      abb316(121)=abb316(85)*spak1k7
      abb316(128)=spak2k4*abb316(121)
      abb316(128)=abb316(128)+abb316(64)
      abb316(128)=16.0_ki*abb316(128)
      abb316(131)=abb316(88)*spak2k4
      abb316(132)=abb316(82)*abb316(53)
      abb316(131)=abb316(131)-abb316(132)
      abb316(132)=-8.0_ki*abb316(131)
      abb316(97)=abb316(97)*spak2k4
      abb316(133)=-abb316(104)*abb316(97)
      abb316(134)=-abb316(85)*abb316(53)
      abb316(133)=abb316(133)+abb316(134)
      abb316(133)=abb316(84)*abb316(133)
      abb316(97)=abb316(82)*abb316(97)
      abb316(134)=-abb316(88)*abb316(53)
      abb316(97)=abb316(97)+abb316(134)
      abb316(97)=spal6k7*abb316(97)
      abb316(97)=abb316(97)+abb316(133)
      abb316(97)=8.0_ki*abb316(97)
      abb316(133)=4.0_ki*abb316(131)
      abb316(57)=abb316(57)*abb316(13)
      abb316(51)=abb316(56)*abb316(51)
      abb316(51)=abb316(57)-abb316(51)
      abb316(51)=abb316(51)*abb316(63)
      abb316(57)=abb316(114)*abb316(8)
      abb316(63)=abb316(57)*spak2k4
      abb316(51)=abb316(51)-abb316(63)
      abb316(51)=8.0_ki*abb316(51)
      abb316(63)=abb316(118)*abb316(51)
      abb316(114)=16.0_ki*abb316(131)
      abb316(118)=abb316(24)*abb316(7)
      abb316(77)=abb316(118)+abb316(77)
      abb316(87)=abb316(87)*abb316(2)
      abb316(118)=abb316(77)-abb316(87)
      abb316(36)=spak4l5*abb316(36)*abb316(118)
      abb316(17)=abb316(17)+abb316(24)
      abb316(38)=abb316(17)-abb316(38)
      abb316(131)=abb316(108)*abb316(38)
      abb316(134)=abb316(131)*spak4l6
      abb316(36)=abb316(36)+abb316(134)
      abb316(95)=abb316(95)*abb316(36)
      abb316(92)=-spak4k7*abb316(118)*abb316(92)
      abb316(92)=abb316(95)-abb316(92)
      abb316(38)=abb316(101)*abb316(38)
      abb316(95)=abb316(38)*spak4l6
      abb316(101)=abb316(95)*spbk7l6
      abb316(37)=abb316(37)*abb316(118)
      abb316(134)=abb316(37)*abb316(105)
      abb316(101)=abb316(101)+abb316(134)
      abb316(134)=spal6k7*abb316(101)
      abb316(134)=abb316(134)+abb316(92)
      abb316(134)=spbk4k2*abb316(134)
      abb316(135)=abb316(57)*es71
      abb316(89)=abb316(89)*spbk7l6
      abb316(89)=abb316(135)+abb316(89)+abb316(111)
      abb316(111)=spak3l5*abb316(89)
      abb316(135)=-abb316(55)*abb316(48)
      abb316(136)=abb316(55)*abb316(24)
      abb316(136)=abb316(136)+abb316(135)
      abb316(115)=abb316(136)*abb316(115)
      abb316(136)=abb316(115)*spbk4k2
      abb316(137)=abb316(57)*spak3l5
      abb316(137)=abb316(137)+abb316(136)
      abb316(138)=-abb316(137)*abb316(117)
      abb316(15)=abb316(15)*abb316(1)
      abb316(22)=abb316(22)*abb316(1)
      abb316(139)=abb316(22)*abb316(2)
      abb316(22)=abb316(22)*NC
      abb316(15)=-abb316(139)+abb316(15)+abb316(22)
      abb316(22)=abb316(93)*abb316(9)
      abb316(22)=abb316(22)-abb316(100)
      abb316(93)=-spak1k7*abb316(15)*abb316(22)
      abb316(100)=es71*abb316(136)
      abb316(136)=abb316(102)*spal6k7
      abb316(139)=spbk7l6*abb316(136)
      abb316(109)=abb316(109)+abb316(139)
      abb316(109)=spak3l6*abb316(109)
      abb316(24)=abb316(48)-abb316(24)
      abb316(22)=abb316(24)*abb316(22)
      abb316(139)=-spak1k7*abb316(22)
      abb316(118)=-abb316(118)*abb316(98)
      abb316(140)=spal6k7*abb316(8)
      abb316(141)=abb316(118)*abb316(140)
      abb316(139)=abb316(139)+abb316(141)
      abb316(139)=es34*abb316(139)
      abb316(98)=abb316(140)*abb316(98)*abb316(7)*abb316(15)
      abb316(112)=spak3k7*abb316(112)
      abb316(93)=abb316(112)+abb316(139)+abb316(109)+abb316(111)+abb316(100)+ab&
      &b316(93)+abb316(98)+abb316(138)+abb316(134)
      abb316(93)=8.0_ki*abb316(93)
      abb316(37)=abb316(37)*spak4l5
      abb316(37)=abb316(37)+abb316(95)
      abb316(98)=abb316(37)*spbk4k2
      abb316(100)=abb316(88)*spak3l5
      abb316(109)=abb316(102)*spak3l6
      abb316(98)=abb316(109)+abb316(100)+abb316(98)
      abb316(100)=16.0_ki*abb316(98)
      abb316(111)=-spbk4k2*abb316(95)
      abb316(109)=abb316(111)-abb316(109)
      abb316(109)=8.0_ki*abb316(109)
      abb316(111)=-8.0_ki*abb316(137)
      abb316(98)=-4.0_ki*abb316(98)
      abb316(108)=spak1k7*abb316(108)*abb316(15)
      abb316(112)=spak3k7*abb316(102)
      abb316(108)=abb316(108)-abb316(112)
      abb316(112)=abb316(24)*abb316(9)*spak4l5
      abb316(134)=spak1k2*abb316(112)
      abb316(38)=abb316(120)*abb316(38)
      abb316(38)=abb316(134)-abb316(38)
      abb316(120)=spbk4k2*abb316(38)
      abb316(134)=-spak3l5*abb316(52)
      abb316(131)=abb316(131)*spak1k7
      abb316(131)=2.0_ki*abb316(131)
      abb316(137)=-es34*abb316(131)
      abb316(108)=abb316(137)+abb316(134)+abb316(120)+2.0_ki*abb316(108)
      abb316(108)=4.0_ki*abb316(108)
      abb316(15)=-abb316(70)*abb316(15)
      abb316(70)=abb316(24)*abb316(70)
      abb316(120)=-es34*abb316(70)
      abb316(15)=abb316(120)+abb316(15)
      abb316(15)=abb316(8)*abb316(15)
      abb316(81)=abb316(77)*abb316(81)
      abb316(120)=abb316(90)*spak1k2
      abb316(81)=abb316(120)-abb316(81)
      abb316(81)=abb316(81)*abb316(105)
      abb316(105)=spbk4k2*abb316(81)
      abb316(82)=abb316(82)*spbk7l6
      abb316(120)=-spak3l5*abb316(82)
      abb316(15)=abb316(120)+abb316(105)+abb316(15)
      abb316(15)=4.0_ki*abb316(15)
      abb316(22)=abb316(22)*abb316(99)
      abb316(99)=-abb316(118)*abb316(106)
      abb316(99)=abb316(99)-abb316(101)
      abb316(99)=spal6k7*abb316(99)
      abb316(22)=abb316(99)+abb316(22)-abb316(92)
      abb316(22)=spbk4k3*abb316(22)
      abb316(92)=abb316(115)*spbk4k3
      abb316(57)=abb316(57)*spak2l5
      abb316(57)=abb316(57)+abb316(92)
      abb316(34)=abb316(34)*abb316(9)
      abb316(99)=abb316(57)+abb316(34)
      abb316(99)=abb316(99)*abb316(117)
      abb316(92)=-abb316(34)-abb316(92)
      abb316(92)=es71*abb316(92)
      abb316(89)=-spak2l5*abb316(89)
      abb316(101)=-spak2l6**2*spbk7l6*abb316(122)
      abb316(73)=-abb316(73)*abb316(136)
      abb316(22)=abb316(89)+abb316(92)+abb316(101)+abb316(73)+abb316(22)+abb316&
      &(99)
      abb316(22)=8.0_ki*abb316(22)
      abb316(37)=abb316(37)*spbk4k3
      abb316(73)=abb316(88)*spak2l5
      abb316(88)=abb316(102)*spak2l6
      abb316(37)=abb316(88)+abb316(73)+abb316(37)
      abb316(73)=-16.0_ki*abb316(37)
      abb316(89)=spbk4k3*abb316(95)
      abb316(88)=abb316(88)+abb316(89)
      abb316(88)=8.0_ki*abb316(88)
      abb316(89)=8.0_ki*abb316(34)
      abb316(57)=8.0_ki*abb316(57)
      abb316(37)=4.0_ki*abb316(37)
      abb316(92)=spak2k4*abb316(131)
      abb316(38)=abb316(92)-abb316(38)
      abb316(38)=spbk4k3*abb316(38)
      abb316(80)=-2.0_ki*es71+abb316(80)
      abb316(80)=abb316(125)*abb316(80)
      abb316(52)=spak2l5*abb316(52)
      abb316(38)=abb316(52)+abb316(80)+abb316(38)
      abb316(38)=4.0_ki*abb316(38)
      abb316(52)=abb316(70)*abb316(106)
      abb316(52)=abb316(52)-abb316(81)
      abb316(52)=spbk4k3*abb316(52)
      abb316(70)=spak2l5*abb316(82)
      abb316(52)=abb316(52)+abb316(70)
      abb316(52)=4.0_ki*abb316(52)
      abb316(70)=4.0_ki*abb316(9)
      abb316(24)=abb316(70)*abb316(24)*abb316(75)
      abb316(70)=spbk4k2*abb316(24)
      abb316(24)=-spbk4k3*abb316(24)
      abb316(34)=-4.0_ki*abb316(34)
      abb316(26)=-spak3k4*abb316(26)
      abb316(27)=-abb316(28)*abb316(27)
      abb316(18)=spbk7k2*abb316(18)
      abb316(18)=abb316(27)+abb316(18)
      abb316(18)=abb316(71)*abb316(18)
      abb316(10)=abb316(10)*abb316(25)
      abb316(27)=spbk7k2*abb316(10)
      abb316(18)=abb316(27)+abb316(18)
      abb316(18)=abb316(18)*abb316(76)
      abb316(18)=abb316(26)+abb316(18)
      abb316(18)=spak1k7*abb316(18)
      abb316(26)=spak2k4*abb316(62)
      abb316(14)=abb316(14)+abb316(26)
      abb316(14)=spak1l6*abb316(14)
      abb316(26)=-abb316(11)*abb316(135)
      abb316(27)=-abb316(55)*abb316(25)
      abb316(26)=abb316(27)+abb316(26)
      abb316(26)=abb316(26)*abb316(30)
      abb316(27)=abb316(46)*spbl6k3
      abb316(28)=abb316(85)*abb316(27)
      abb316(14)=abb316(28)+abb316(26)+abb316(14)
      abb316(14)=spal5k7*abb316(14)
      abb316(26)=-abb316(69)*abb316(30)
      abb316(28)=-spbk7l6*abb316(43)
      abb316(26)=abb316(26)+abb316(28)
      abb316(26)=spal6k7*abb316(26)
      abb316(28)=spbl6k1*spak3k4*abb316(40)*spak1l6**2
      abb316(14)=abb316(28)+abb316(14)+abb316(18)+abb316(26)
      abb316(13)=-mB*abb316(13)
      abb316(16)=abb316(45)*abb316(16)
      abb316(13)=abb316(16)+abb316(13)
      abb316(16)=abb316(33)-abb316(13)
      abb316(16)=abb316(16)*abb316(39)
      abb316(18)=spbl6k3*abb316(104)*abb316(60)
      abb316(16)=abb316(16)+abb316(18)
      abb316(16)=spbk2k1*abb316(16)
      abb316(18)=2.0_ki*abb316(33)
      abb316(26)=abb316(60)*spbk3k1
      abb316(28)=-abb316(18)*abb316(26)
      abb316(16)=abb316(28)+2.0_ki*abb316(16)
      abb316(16)=spak1l6*abb316(16)
      abb316(28)=mB*abb316(74)
      abb316(28)=abb316(28)-abb316(91)
      abb316(55)=abb316(28)*abb316(60)
      abb316(43)=abb316(55)+abb316(43)
      abb316(55)=es71*abb316(43)
      abb316(12)=-abb316(12)*abb316(46)
      abb316(48)=-abb316(11)*abb316(48)
      abb316(25)=abb316(25)+abb316(48)
      abb316(25)=abb316(60)*abb316(56)*abb316(25)
      abb316(12)=abb316(25)+abb316(12)
      abb316(12)=abb316(79)*abb316(8)*abb316(12)
      abb316(12)=abb316(12)+abb316(55)+abb316(16)+2.0_ki*abb316(14)
      abb316(12)=4.0_ki*abb316(12)
      abb316(14)=8.0_ki*abb316(43)
      abb316(16)=abb316(121)*spak4l5
      abb316(25)=abb316(122)*spak4l6
      abb316(48)=abb316(126)*spak4l6
      abb316(55)=spbl6k2*spak1l6
      abb316(56)=abb316(55)*abb316(48)
      abb316(16)=-abb316(56)+abb316(16)+abb316(25)
      abb316(13)=abb316(13)-abb316(18)
      abb316(18)=-spak4l5*abb316(13)
      abb316(25)=abb316(18)*spak1l6
      abb316(25)=abb316(25)+abb316(16)
      abb316(25)=16.0_ki*abb316(25)
      abb316(18)=-abb316(20)-abb316(18)
      abb316(18)=spak1l6*abb316(18)
      abb316(16)=abb316(18)-abb316(16)
      abb316(16)=16.0_ki*abb316(16)
      abb316(18)=-4.0_ki*abb316(43)
      abb316(20)=-spak1k7*abb316(40)*abb316(96)
      abb316(43)=spak2k4*abb316(55)
      abb316(27)=abb316(43)-abb316(27)+abb316(127)
      abb316(27)=abb316(126)*abb316(27)
      abb316(27)=-abb316(123)+abb316(27)
      abb316(27)=8.0_ki*abb316(27)
      abb316(43)=abb316(126)*spak1k4
      abb316(43)=16.0_ki*abb316(43)
      abb316(46)=8.0_ki*abb316(46)
      abb316(56)=abb316(28)*abb316(46)
      abb316(46)=abb316(33)*abb316(46)
      abb316(33)=-spak1l6*abb316(33)
      abb316(33)=abb316(33)-abb316(121)
      abb316(33)=spak2k4*abb316(33)
      abb316(30)=abb316(58)*abb316(30)
      abb316(30)=-abb316(64)+abb316(30)+abb316(33)
      abb316(30)=8.0_ki*abb316(30)
      abb316(33)=abb316(17)*mB
      abb316(45)=abb316(23)*abb316(45)
      abb316(33)=abb316(45)-abb316(33)
      abb316(33)=abb316(33)*spak4l5
      abb316(33)=abb316(33)-2.0_ki*abb316(112)
      abb316(33)=abb316(33)*spak1l6
      abb316(36)=abb316(36)*spak1k7
      abb316(33)=abb316(33)-abb316(36)
      abb316(36)=spbk4k2*abb316(33)
      abb316(13)=abb316(13)*spak1l6
      abb316(13)=abb316(13)-abb316(121)
      abb316(45)=spak3l5*abb316(13)
      abb316(58)=abb316(126)*spak3l6
      abb316(17)=abb316(41)*abb316(17)
      abb316(23)=abb316(72)*abb316(23)
      abb316(17)=abb316(17)-abb316(23)
      abb316(23)=abb316(17)*spak4l6
      abb316(41)=spbk4k2*abb316(23)
      abb316(41)=abb316(41)+abb316(58)
      abb316(41)=abb316(41)*abb316(55)
      abb316(60)=-spak3l6*abb316(122)
      abb316(36)=abb316(41)+abb316(60)+abb316(36)+abb316(45)
      abb316(36)=8.0_ki*abb316(36)
      abb316(17)=abb316(17)*spak1k4
      abb316(41)=spbk4k2*abb316(17)
      abb316(45)=spak1k3*abb316(126)
      abb316(41)=abb316(41)+abb316(45)
      abb316(41)=8.0_ki*abb316(41)
      abb316(33)=-spbk4k3*abb316(33)
      abb316(13)=-spak2l5*abb316(13)
      abb316(45)=abb316(126)*spak2l6
      abb316(60)=-spbk4k3*abb316(23)
      abb316(60)=-abb316(45)+abb316(60)
      abb316(55)=abb316(60)*abb316(55)
      abb316(60)=abb316(65)*abb316(84)
      abb316(13)=abb316(55)+abb316(13)+abb316(60)+abb316(33)
      abb316(13)=8.0_ki*abb316(13)
      abb316(17)=-spbk4k3*abb316(17)
      abb316(17)=abb316(17)+abb316(125)
      abb316(17)=8.0_ki*abb316(17)
      abb316(33)=spal6k7*abb316(40)
      abb316(28)=spal5k7*abb316(28)
      abb316(28)=abb316(33)+abb316(28)
      abb316(28)=abb316(28)*abb316(96)
      abb316(33)=abb316(96)*abb316(126)
      abb316(40)=abb316(96)*abb316(104)
      abb316(11)=abb316(11)*abb316(87)
      abb316(11)=abb316(11)-abb316(74)
      abb316(11)=4.0_ki*spbk7k1*abb316(76)*abb316(71)*abb316(44)*abb316(11)
      abb316(44)=abb316(71)*abb316(67)
      abb316(10)=-abb316(10)+abb316(44)
      abb316(10)=abb316(10)*abb316(76)
      abb316(44)=-spak2k4*abb316(85)
      abb316(53)=-abb316(104)*abb316(53)
      abb316(44)=abb316(44)+abb316(53)
      abb316(44)=spal5k7*abb316(44)
      abb316(39)=-spbk2k1*abb316(39)
      abb316(26)=abb316(26)+abb316(39)
      abb316(26)=abb316(104)*abb316(26)
      abb316(10)=abb316(10)+abb316(44)+abb316(26)
      abb316(10)=8.0_ki*abb316(10)
      abb316(26)=abb316(104)*spak4l5
      abb316(26)=abb316(26)+abb316(48)
      abb316(26)=16.0_ki*abb316(26)
      abb316(39)=abb316(77)*mB
      abb316(39)=abb316(39)-abb316(90)
      abb316(39)=abb316(39)*spak4l5
      abb316(23)=abb316(39)-abb316(23)
      abb316(39)=-spbk4k2*abb316(23)
      abb316(44)=spak3l5*abb316(104)
      abb316(39)=abb316(58)+abb316(39)+abb316(44)
      abb316(39)=8.0_ki*abb316(39)
      abb316(23)=spbk4k3*abb316(23)
      abb316(44)=-spak2l5*abb316(104)
      abb316(23)=abb316(44)-abb316(45)+abb316(23)
      abb316(23)=8.0_ki*abb316(23)
      R2d316=0.0_ki
      rat2 = rat2 + R2d316
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='316' value='", &
          & R2d316, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd316h0
