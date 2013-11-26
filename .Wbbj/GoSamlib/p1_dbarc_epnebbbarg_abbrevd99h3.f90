module     p1_dbarc_epnebbbarg_abbrevd99h3
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(129), public :: abb99
   complex(ki), public :: R2d99
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
      abb99(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb99(2)=1.0_ki/(mB**2-es67-es56+es567)
      abb99(3)=NC**(-1)
      abb99(4)=es234**(-1)
      abb99(5)=spak2l5**(-1)
      abb99(6)=spak2l6**(-1)
      abb99(7)=spbl5k2**(-1)
      abb99(8)=sqrt(mB**2)
      abb99(9)=abb99(3)**2
      abb99(10)=abb99(9)+1.0_ki
      abb99(11)=TR*gW
      abb99(11)=abb99(11)**2*i_*CVDC*abb99(2)*abb99(1)
      abb99(12)=abb99(11)*abb99(10)
      abb99(13)=spbe7l5*abb99(4)
      abb99(14)=abb99(13)*abb99(12)
      abb99(15)=spak2e7*abb99(5)**2
      abb99(16)=abb99(6)*c2
      abb99(17)=abb99(15)*abb99(16)
      abb99(18)=abb99(17)*abb99(14)
      abb99(19)=2.0_ki*c1
      abb99(20)=abb99(19)*abb99(6)
      abb99(21)=abb99(11)*abb99(3)
      abb99(22)=abb99(20)*abb99(21)
      abb99(23)=abb99(22)*abb99(15)
      abb99(24)=abb99(13)*abb99(23)
      abb99(18)=abb99(24)-abb99(18)
      abb99(24)=spak3k4*spak1k2
      abb99(25)=spbk3k2**2
      abb99(18)=abb99(24)*abb99(7)**2*abb99(18)*abb99(25)*mB**5
      abb99(26)=spbk3k2*abb99(4)
      abb99(27)=abb99(11)*abb99(26)*spbe7l5
      abb99(9)=abb99(27)*abb99(9)
      abb99(28)=mB**3
      abb99(29)=abb99(9)*abb99(28)
      abb99(30)=abb99(28)*abb99(27)
      abb99(29)=abb99(29)+abb99(30)
      abb99(31)=spak2e7*abb99(5)
      abb99(32)=abb99(16)*abb99(31)
      abb99(33)=abb99(29)*abb99(32)
      abb99(34)=abb99(19)*abb99(3)
      abb99(35)=abb99(34)*abb99(6)
      abb99(30)=abb99(30)*abb99(35)
      abb99(36)=abb99(30)*abb99(31)
      abb99(36)=abb99(36)-abb99(33)
      abb99(37)=abb99(7)*spak2k4
      abb99(38)=abb99(36)*abb99(37)
      abb99(39)=abb99(38)*spak1k7
      abb99(40)=abb99(39)*spbk7k2
      abb99(41)=abb99(27)*mB
      abb99(42)=abb99(41)*abb99(10)
      abb99(43)=abb99(42)*abb99(16)
      abb99(44)=abb99(35)*abb99(41)
      abb99(43)=abb99(43)-abb99(44)
      abb99(44)=abb99(8)**2
      abb99(45)=-spak1e7*abb99(44)*abb99(43)
      abb99(46)=abb99(45)*spak2k4
      abb99(18)=abb99(18)+abb99(40)-abb99(46)
      abb99(40)=abb99(31)*abb99(28)
      abb99(47)=abb99(31)*abb99(8)
      abb99(48)=mB**2
      abb99(49)=abb99(47)*abb99(48)
      abb99(40)=abb99(40)+abb99(49)
      abb99(40)=abb99(19)*abb99(40)*abb99(6)*abb99(27)*abb99(3)
      abb99(50)=abb99(48)*abb99(9)
      abb99(51)=abb99(48)*abb99(27)
      abb99(50)=abb99(50)+abb99(51)
      abb99(52)=abb99(47)*abb99(16)
      abb99(53)=abb99(50)*abb99(52)
      abb99(33)=-abb99(33)+abb99(40)-abb99(53)
      abb99(40)=spak1l5*spak2k4
      abb99(33)=abb99(33)*abb99(40)
      abb99(54)=abb99(12)*abb99(52)
      abb99(55)=abb99(31)*abb99(21)
      abb99(20)=abb99(55)*abb99(20)
      abb99(56)=abb99(20)*abb99(8)
      abb99(54)=abb99(54)-abb99(56)
      abb99(56)=abb99(54)*abb99(48)*abb99(26)
      abb99(57)=spbk7e7*spak1k7
      abb99(58)=abb99(56)*abb99(57)
      abb99(59)=abb99(58)*spak2k4
      abb99(33)=abb99(33)+abb99(59)
      abb99(59)=abb99(15)*c2
      abb99(60)=abb99(59)*abb99(12)*abb99(28)
      abb99(61)=abb99(15)*abb99(28)
      abb99(21)=abb99(19)*abb99(21)
      abb99(62)=abb99(61)*abb99(21)
      abb99(60)=abb99(60)-abb99(62)
      abb99(63)=abb99(26)*abb99(60)
      abb99(64)=abb99(37)*abb99(57)
      abb99(65)=abb99(63)*abb99(64)
      abb99(66)=abb99(59)*abb99(29)
      abb99(67)=abb99(34)*abb99(27)
      abb99(61)=abb99(61)*abb99(67)
      abb99(61)=abb99(66)-abb99(61)
      abb99(66)=abb99(40)*abb99(7)
      abb99(68)=abb99(61)*abb99(66)
      abb99(69)=abb99(8)*c2
      abb99(70)=abb99(69)*abb99(5)
      abb99(71)=abb99(70)*abb99(50)
      abb99(72)=abb99(67)*abb99(8)
      abb99(73)=abb99(48)*abb99(5)
      abb99(74)=abb99(73)*abb99(72)
      abb99(71)=abb99(71)-abb99(74)
      abb99(74)=abb99(37)*spak1e7
      abb99(75)=abb99(71)*abb99(74)
      abb99(65)=-abb99(65)+abb99(68)-abb99(75)
      abb99(68)=spbl6k2*abb99(65)
      abb99(68)=abb99(68)-abb99(33)-abb99(18)
      abb99(68)=es12*abb99(68)
      abb99(22)=abb99(22)*abb99(5)
      abb99(75)=abb99(28)*abb99(13)
      abb99(76)=abb99(25)*abb99(75)
      abb99(77)=abb99(22)*abb99(76)
      abb99(78)=abb99(75)*abb99(12)
      abb99(79)=abb99(25)*abb99(78)
      abb99(80)=abb99(16)*abb99(5)
      abb99(81)=abb99(79)*abb99(80)
      abb99(77)=abb99(77)-abb99(81)
      abb99(81)=spak3k4*abb99(7)
      abb99(82)=abb99(81)*spak1k2**2
      abb99(77)=abb99(77)*abb99(82)
      abb99(83)=-spal5e7*abb99(77)
      abb99(84)=abb99(26)*mB
      abb99(85)=abb99(84)*abb99(12)
      abb99(86)=abb99(31)*c2
      abb99(87)=abb99(85)*abb99(86)
      abb99(88)=abb99(55)*abb99(19)
      abb99(89)=abb99(88)*abb99(84)
      abb99(87)=abb99(87)-abb99(89)
      abb99(89)=abb99(87)*abb99(57)
      abb99(9)=abb99(9)+abb99(27)
      abb99(9)=abb99(9)*abb99(69)
      abb99(9)=abb99(9)-abb99(72)
      abb99(27)=abb99(9)*spak1e7
      abb99(72)=abb99(89)+abb99(27)
      abb99(89)=-abb99(40)*abb99(72)
      abb99(41)=abb99(34)*abb99(41)
      abb99(90)=abb99(41)*abb99(31)
      abb99(91)=abb99(42)*abb99(86)
      abb99(90)=abb99(90)-abb99(91)
      abb99(91)=abb99(90)*spak1l5**2
      abb99(92)=-spak2k4*abb99(91)
      abb99(89)=abb99(92)+abb99(89)
      abb99(89)=spbl6k2*abb99(89)
      abb99(92)=spal5e7*spak1k2
      abb99(93)=abb99(92)*abb99(43)
      abb99(94)=spak1k7*spak2k4
      abb99(95)=abb99(94)*spbk7k2
      abb99(96)=abb99(93)*abb99(95)
      abb99(83)=abb99(96)+abb99(83)+abb99(89)
      abb99(83)=spbl5k1*abb99(83)
      abb99(63)=abb99(63)*abb99(57)
      abb99(71)=spak1e7*abb99(71)
      abb99(63)=abb99(63)+abb99(71)
      abb99(63)=abb99(81)*abb99(63)
      abb99(71)=spak3k4*spak1l5
      abb99(89)=abb99(71)*abb99(7)
      abb99(61)=-abb99(61)*abb99(89)
      abb99(61)=abb99(61)+abb99(63)
      abb99(61)=es12*abb99(61)
      abb99(63)=abb99(71)*abb99(72)
      abb99(91)=spak3k4*abb99(91)
      abb99(63)=abb99(91)+abb99(63)
      abb99(63)=spbl5k1*abb99(63)
      abb99(61)=abb99(61)+abb99(63)
      abb99(61)=spbl6k3*abb99(61)
      abb99(63)=spak2k4*abb99(72)
      abb99(91)=abb99(90)*abb99(40)
      abb99(63)=abb99(91)+abb99(63)
      abb99(91)=abb99(63)*spbl6k2
      abb99(90)=abb99(90)*spak1l5
      abb99(72)=abb99(90)+abb99(72)
      abb99(90)=spak3k4*abb99(72)
      abb99(96)=abb99(90)*spbl6k3
      abb99(97)=spae7k7*spak1k2
      abb99(98)=abb99(97)*abb99(43)
      abb99(99)=spbk7k2*spak2k4
      abb99(100)=spbk7k3*spak3k4
      abb99(99)=abb99(99)-abb99(100)
      abb99(101)=abb99(99)*abb99(98)
      abb99(91)=abb99(101)+abb99(91)-abb99(96)
      abb99(96)=es71*abb99(91)
      abb99(100)=abb99(100)*spak1k7
      abb99(95)=abb99(100)-abb99(95)
      abb99(100)=abb99(71)*spbl5k3
      abb99(101)=abb99(40)*spbl5k2
      abb99(102)=abb99(100)-abb99(101)
      abb99(103)=-abb99(102)-abb99(95)
      abb99(104)=abb99(56)*spak1k2
      abb99(103)=abb99(104)*abb99(103)
      abb99(17)=abb99(12)*abb99(17)
      abb99(17)=abb99(17)-abb99(23)
      abb99(23)=abb99(25)*abb99(4)
      abb99(105)=mB**4
      abb99(82)=abb99(82)*abb99(8)*abb99(17)*abb99(23)*abb99(105)
      abb99(82)=abb99(82)+abb99(103)
      abb99(82)=spbe7k1*abb99(82)
      abb99(47)=abb99(35)*abb99(51)*abb99(47)
      abb99(47)=abb99(47)-abb99(53)
      abb99(47)=abb99(47)*abb99(71)
      abb99(51)=spak1k2*abb99(47)
      abb99(24)=-abb99(45)*abb99(24)
      abb99(53)=abb99(104)*spak3k4
      abb99(103)=abb99(57)*abb99(53)
      abb99(24)=abb99(103)+abb99(51)+abb99(24)
      abb99(24)=spbk3k1*abb99(24)
      abb99(51)=abb99(36)*abb99(81)*es12
      abb99(103)=spak1k7*abb99(51)
      abb99(106)=abb99(93)*spbl5k1
      abb99(107)=spak3k4*spak1k7
      abb99(108)=-abb99(106)*abb99(107)
      abb99(103)=abb99(103)+abb99(108)
      abb99(103)=spbk7k3*abb99(103)
      abb99(108)=abb99(36)*abb99(7)
      abb99(109)=es12*abb99(108)
      abb99(109)=abb99(109)-abb99(106)
      abb99(100)=abb99(109)*abb99(100)
      abb99(77)=spae7k7*abb99(77)
      abb99(102)=abb99(98)*abb99(102)
      abb99(77)=abb99(77)+abb99(102)
      abb99(77)=spbk7k1*abb99(77)
      abb99(102)=abb99(106)*abb99(101)
      abb99(24)=abb99(77)+abb99(24)+abb99(82)+abb99(96)+abb99(102)+abb99(100)+a&
      &bb99(61)+abb99(103)+abb99(68)+abb99(83)
      abb99(24)=4.0_ki*abb99(24)
      abb99(49)=abb99(49)*abb99(67)
      abb99(61)=abb99(86)*abb99(8)
      abb99(50)=abb99(61)*abb99(50)
      abb99(49)=abb99(49)-abb99(50)
      abb99(50)=spak1k4*abb99(7)
      abb99(67)=abb99(49)*abb99(50)
      abb99(65)=abb99(65)-abb99(67)
      abb99(65)=abb99(65)*spbl6k2
      abb99(67)=abb99(43)*spae7k7
      abb99(68)=abb99(67)*abb99(40)
      abb99(77)=abb99(43)*spal5e7
      abb99(82)=abb99(94)*abb99(77)
      abb99(83)=abb99(68)+abb99(82)
      abb99(83)=abb99(83)*spbk7l5
      abb99(94)=abb99(72)*spbk7l6
      abb99(96)=abb99(94)*spak4k7
      abb99(100)=spak4l5*spbl6l5
      abb99(102)=abb99(100)*abb99(72)
      abb99(103)=spak1k4*spal5e7
      abb99(109)=abb99(103)*spbl6l5
      abb99(110)=spak1k4*spae7k7
      abb99(111)=abb99(110)*spbk7l6
      abb99(109)=abb99(109)+abb99(111)
      abb99(111)=abb99(9)*abb99(109)
      abb99(87)=-abb99(44)*abb99(87)
      abb99(112)=spak1k4*abb99(87)*spbe7l6
      abb99(65)=abb99(65)+abb99(83)+abb99(111)+abb99(102)+abb99(112)-abb99(96)
      abb99(29)=abb99(80)*abb99(29)
      abb99(30)=abb99(30)*abb99(5)
      abb99(29)=abb99(30)-abb99(29)
      abb99(30)=abb99(29)*abb99(97)
      abb99(83)=abb99(30)*abb99(37)
      abb99(39)=abb99(83)+abb99(39)
      abb99(39)=abb99(39)*spbk7k2
      abb99(29)=abb99(29)*abb99(92)
      abb99(83)=abb99(29)*spak2k4
      abb99(33)=abb99(39)-abb99(83)-2.0_ki*abb99(46)+abb99(33)-abb99(65)
      abb99(33)=8.0_ki*abb99(33)
      abb99(30)=spbk7k3*abb99(30)
      abb99(29)=-spbl5k3*abb99(29)
      abb99(17)=spbe7k3*spak1k2*abb99(8)*abb99(17)*abb99(105)*abb99(26)
      abb99(17)=abb99(17)+abb99(29)+abb99(30)
      abb99(17)=abb99(81)*abb99(17)
      abb99(26)=abb99(36)*abb99(40)
      abb99(17)=abb99(26)+abb99(17)-abb99(65)+abb99(18)
      abb99(17)=8.0_ki*abb99(17)
      abb99(18)=abb99(50)*abb99(36)
      abb99(18)=16.0_ki*abb99(18)
      abb99(26)=abb99(76)*abb99(20)
      abb99(29)=abb99(79)*abb99(32)
      abb99(26)=abb99(26)-abb99(29)
      abb99(29)=abb99(26)*abb99(81)
      abb99(30)=-spak1k2*abb99(29)
      abb99(36)=spbl5k3*spak3k4
      abb99(39)=spbl5k2*spak2k4
      abb99(36)=abb99(36)-abb99(39)
      abb99(39)=-abb99(93)*abb99(36)
      abb99(46)=-spbe7k3*abb99(53)
      abb99(30)=abb99(46)+abb99(30)+abb99(39)-abb99(91)
      abb99(30)=4.0_ki*abb99(30)
      abb99(39)=8.0_ki*abb99(104)
      abb99(46)=abb99(56)*spak1k4
      abb99(46)=8.0_ki*abb99(46)
      abb99(53)=spbk7k2*abb99(63)
      abb99(65)=-spbk7k3*abb99(90)
      abb99(53)=abb99(53)+abb99(65)
      abb99(53)=4.0_ki*abb99(53)
      abb99(65)=-spbl5k3*abb99(90)
      abb99(83)=spbl5k2*abb99(63)
      abb99(65)=abb99(65)+abb99(83)
      abb99(65)=4.0_ki*abb99(65)
      abb99(83)=8.0_ki*abb99(98)
      abb99(91)=8.0_ki*abb99(72)
      abb99(96)=8.0_ki*abb99(93)
      abb99(102)=abb99(78)*abb99(59)
      abb99(15)=abb99(15)*abb99(21)
      abb99(105)=abb99(15)*abb99(75)
      abb99(102)=abb99(102)-abb99(105)
      abb99(105)=-spak1l5*abb99(102)
      abb99(111)=abb99(48)*abb99(13)
      abb99(112)=abb99(111)*abb99(12)
      abb99(113)=abb99(112)*abb99(70)
      abb99(114)=abb99(21)*abb99(8)
      abb99(115)=abb99(5)*abb99(114)*abb99(111)
      abb99(113)=abb99(113)-abb99(115)
      abb99(116)=spak1e7*abb99(113)
      abb99(117)=-abb99(4)*abb99(60)
      abb99(118)=-abb99(117)*abb99(57)
      abb99(105)=abb99(118)+abb99(105)+abb99(116)
      abb99(116)=spbl6k2*abb99(7)
      abb99(105)=abb99(105)*abb99(116)
      abb99(118)=abb99(78)*abb99(80)
      abb99(119)=abb99(22)*abb99(75)
      abb99(118)=abb99(118)-abb99(119)
      abb99(119)=abb99(118)*abb99(92)
      abb99(120)=abb99(54)*abb99(48)*abb99(4)
      abb99(121)=abb99(120)*abb99(57)
      abb99(11)=abb99(11)*mB
      abb99(122)=abb99(11)*abb99(13)
      abb99(123)=abb99(122)*abb99(10)
      abb99(124)=abb99(123)*abb99(16)
      abb99(125)=abb99(122)*abb99(35)
      abb99(124)=abb99(124)-abb99(125)
      abb99(125)=2.0_ki*spak1e7
      abb99(125)=abb99(125)*abb99(44)
      abb99(126)=abb99(124)*abb99(125)
      abb99(119)=abb99(126)+abb99(121)+abb99(119)
      abb99(111)=abb99(111)*abb99(8)
      abb99(121)=abb99(111)+abb99(75)
      abb99(19)=abb99(19)*abb99(55)*abb99(6)
      abb99(55)=abb99(121)*abb99(19)
      abb99(121)=abb99(112)*abb99(52)
      abb99(78)=abb99(78)*abb99(32)
      abb99(55)=abb99(55)-abb99(121)-abb99(78)
      abb99(121)=spak1l5*abb99(55)
      abb99(75)=abb99(20)*abb99(75)
      abb99(75)=abb99(75)-abb99(78)
      abb99(78)=abb99(75)*abb99(7)
      abb99(126)=spak1k7*abb99(78)
      abb99(118)=abb99(118)*abb99(97)
      abb99(127)=-abb99(7)*abb99(118)
      abb99(126)=abb99(126)+abb99(127)
      abb99(126)=spbk7k2*abb99(126)
      abb99(127)=spae7k7*spak1l5
      abb99(128)=spal5e7*spak1k7
      abb99(127)=abb99(127)+abb99(128)
      abb99(127)=abb99(127)*spbk7l5
      abb99(129)=-abb99(124)*abb99(127)
      abb99(105)=abb99(129)+abb99(126)+abb99(105)+abb99(121)+abb99(119)
      abb99(105)=es34*abb99(105)
      abb99(121)=abb99(86)*abb99(10)
      abb99(31)=abb99(34)*abb99(31)
      abb99(34)=abb99(121)-abb99(31)
      abb99(34)=abb99(34)*abb99(11)*abb99(4)
      abb99(121)=abb99(34)*abb99(57)
      abb99(31)=abb99(122)*abb99(31)
      abb99(86)=abb99(123)*abb99(86)
      abb99(31)=abb99(31)-abb99(86)
      abb99(31)=abb99(31)*spak1l5
      abb99(14)=abb99(14)*abb99(69)
      abb99(13)=abb99(114)*abb99(13)
      abb99(13)=abb99(14)-abb99(13)
      abb99(14)=abb99(13)*spak1e7
      abb99(14)=abb99(121)+abb99(31)+abb99(14)
      abb99(31)=spak4k7*spbk7l6
      abb99(31)=abb99(31)-abb99(100)
      abb99(31)=abb99(31)*abb99(14)
      abb99(69)=abb99(112)*abb99(61)
      abb99(86)=abb99(111)*abb99(88)
      abb99(69)=abb99(69)-abb99(86)
      abb99(69)=abb99(69)*abb99(50)
      abb99(88)=-spbl6k2*abb99(69)
      abb99(100)=-abb99(13)*abb99(109)
      abb99(88)=abb99(31)+abb99(88)+abb99(100)
      abb99(88)=spbk4k2*abb99(88)
      abb99(28)=abb99(28)*spbe7l5
      abb99(100)=abb99(28)*abb99(12)
      abb99(32)=abb99(100)*abb99(32)
      abb99(109)=abb99(48)*spbe7l5
      abb99(12)=abb99(12)*abb99(109)
      abb99(52)=abb99(12)*abb99(52)
      abb99(109)=-abb99(8)*abb99(109)
      abb99(109)=-abb99(28)+abb99(109)
      abb99(19)=abb99(109)*abb99(19)
      abb99(19)=abb99(19)+abb99(32)+abb99(52)
      abb99(19)=spak1l5*abb99(19)
      abb99(52)=-abb99(60)*abb99(57)
      abb99(62)=-spbe7l5*abb99(62)
      abb99(109)=abb99(100)*abb99(59)
      abb99(62)=abb99(109)+abb99(62)
      abb99(62)=spak1l5*abb99(62)
      abb99(12)=-abb99(12)*abb99(70)
      abb99(73)=spbe7l5*abb99(114)*abb99(73)
      abb99(12)=abb99(12)+abb99(73)
      abb99(12)=spak1e7*abb99(12)
      abb99(12)=abb99(52)+abb99(62)+abb99(12)
      abb99(12)=abb99(12)*abb99(116)
      abb99(20)=-abb99(20)*abb99(28)
      abb99(20)=abb99(32)+abb99(20)
      abb99(20)=spak1k7*abb99(20)
      abb99(22)=abb99(22)*abb99(28)
      abb99(28)=abb99(100)*abb99(80)
      abb99(22)=abb99(22)-abb99(28)
      abb99(28)=-abb99(22)*abb99(97)
      abb99(20)=abb99(20)+abb99(28)
      abb99(20)=spbk7k2*abb99(7)*abb99(20)
      abb99(28)=abb99(49)*abb99(116)
      abb99(32)=-spae7k7*spbk7l6
      abb99(49)=-spal5e7*spbl6l5
      abb99(32)=abb99(49)+abb99(32)
      abb99(32)=abb99(9)*abb99(32)
      abb99(32)=abb99(28)+abb99(32)
      abb99(32)=spak1k3*abb99(32)
      abb99(34)=spak1k4*abb99(34)*abb99(44)
      abb99(44)=spbk4k2*abb99(34)
      abb99(49)=-spak1k3*abb99(87)
      abb99(44)=abb99(44)+abb99(49)
      abb99(44)=spbe7l6*abb99(44)
      abb99(49)=spak3k7*abb99(94)
      abb99(52)=-spak3l5*spbl6l5*abb99(72)
      abb99(62)=abb99(127)-abb99(125)
      abb99(10)=abb99(16)*abb99(10)
      abb99(10)=abb99(10)-abb99(35)
      abb99(10)=abb99(62)*abb99(10)*abb99(11)*spbe7l5
      abb99(11)=-abb99(57)*abb99(48)*abb99(54)
      abb99(16)=abb99(22)*abb99(92)
      abb99(10)=abb99(52)+abb99(49)+abb99(44)+abb99(32)+abb99(105)+abb99(20)+ab&
      &b99(12)+abb99(16)+abb99(11)+abb99(19)+abb99(88)+abb99(10)
      abb99(10)=4.0_ki*abb99(10)
      abb99(11)=abb99(75)*abb99(50)
      abb99(12)=-spbk4k2*abb99(11)
      abb99(16)=-spak1k3*abb99(108)
      abb99(12)=abb99(12)+abb99(16)
      abb99(12)=8.0_ki*abb99(12)
      abb99(16)=4.0_ki*spbk4k2
      abb99(19)=-abb99(120)*abb99(16)*spak1k2
      abb99(20)=-4.0_ki*abb99(104)
      abb99(22)=spbk4k2*abb99(120)*spak1k4
      abb99(32)=spak1k3*abb99(56)
      abb99(22)=abb99(22)+abb99(32)
      abb99(22)=4.0_ki*abb99(22)
      abb99(32)=abb99(124)*abb99(16)
      abb99(35)=abb99(97)*abb99(32)
      abb99(44)=-abb99(14)*abb99(16)
      abb99(32)=-abb99(92)*abb99(32)
      abb99(48)=abb99(102)*abb99(66)
      abb99(49)=-abb99(113)*abb99(74)
      abb99(50)=abb99(117)*abb99(64)
      abb99(48)=abb99(69)+abb99(50)+abb99(48)+abb99(49)
      abb99(48)=spbl6k2*abb99(48)
      abb99(49)=-spak2k4*abb99(119)
      abb99(50)=-abb99(55)*abb99(40)
      abb99(52)=-spak1k7*abb99(75)
      abb99(52)=abb99(52)+abb99(118)
      abb99(37)=spbk7k2*abb99(37)*abb99(52)
      abb99(40)=spae7k7*abb99(40)
      abb99(52)=spak2k4*abb99(128)
      abb99(40)=abb99(40)+abb99(52)
      abb99(40)=abb99(40)*abb99(124)*spbk7l5
      abb99(31)=abb99(40)+abb99(37)-abb99(31)+abb99(48)+abb99(50)+abb99(49)
      abb99(31)=spbk4k3*abb99(31)
      abb99(37)=-c2*abb99(42)
      abb99(37)=abb99(37)+abb99(41)
      abb99(37)=spak1l5*abb99(37)
      abb99(40)=c2*abb99(85)
      abb99(21)=-abb99(84)*abb99(21)
      abb99(21)=abb99(40)+abb99(21)
      abb99(21)=abb99(57)*abb99(21)
      abb99(21)=abb99(37)+abb99(21)
      abb99(21)=spak2e7*abb99(21)
      abb99(37)=abb99(9)*abb99(92)
      abb99(13)=abb99(13)*spbk4k3
      abb99(40)=abb99(103)*abb99(13)
      abb99(27)=spak2l5*abb99(27)
      abb99(21)=abb99(27)+abb99(40)+abb99(37)+abb99(21)
      abb99(21)=spbl6l5*abb99(21)
      abb99(27)=-spak1k2*abb99(28)
      abb99(28)=abb99(9)*abb99(97)
      abb99(13)=abb99(110)*abb99(13)
      abb99(13)=abb99(28)+abb99(13)
      abb99(13)=spbk7l6*abb99(13)
      abb99(28)=spak1k2*abb99(87)
      abb99(34)=-spbk4k3*abb99(34)
      abb99(28)=abb99(28)+abb99(34)
      abb99(28)=spbe7l6*abb99(28)
      abb99(34)=-spak2k7*abb99(94)
      abb99(13)=abb99(34)+abb99(28)+abb99(13)+abb99(27)+abb99(31)+abb99(21)
      abb99(13)=4.0_ki*abb99(13)
      abb99(21)=abb99(108)*spak1k2
      abb99(27)=8.0_ki*abb99(21)
      abb99(11)=spbk4k3*abb99(11)
      abb99(11)=abb99(21)+abb99(11)
      abb99(11)=8.0_ki*abb99(11)
      abb99(28)=4.0_ki*spbk4k3
      abb99(31)=abb99(120)*abb99(28)
      abb99(34)=spak1k2*abb99(31)
      abb99(31)=-spak1k4*abb99(31)
      abb99(37)=abb99(28)*abb99(124)
      abb99(40)=-abb99(97)*abb99(37)
      abb99(14)=abb99(14)*abb99(28)
      abb99(41)=abb99(92)*abb99(37)
      abb99(42)=abb99(78)*spak1k2
      abb99(16)=abb99(16)*abb99(42)
      abb99(28)=-abb99(28)*abb99(42)
      abb99(42)=4.0_ki*abb99(98)
      abb99(48)=4.0_ki*abb99(72)
      abb99(49)=-4.0_ki*abb99(93)
      abb99(21)=4.0_ki*abb99(21)
      abb99(50)=abb99(56)*spbe7k3
      abb99(52)=abb99(77)*spbl5k3
      abb99(50)=abb99(50)+abb99(52)
      abb99(52)=abb99(107)*abb99(50)
      abb99(29)=spak1k7*abb99(29)
      abb99(54)=-abb99(67)*abb99(95)
      abb99(55)=-spbl5k2*abb99(82)
      abb99(29)=abb99(55)+abb99(29)+abb99(52)+abb99(54)
      abb99(29)=4.0_ki*abb99(29)
      abb99(43)=8.0_ki*abb99(43)
      abb99(52)=abb99(110)*abb99(43)
      abb99(54)=abb99(124)*spbk4k2
      abb99(55)=-abb99(110)*abb99(54)
      abb99(56)=-spak1k3*abb99(67)
      abb99(55)=abb99(55)+abb99(56)
      abb99(55)=4.0_ki*abb99(55)
      abb99(56)=abb99(110)*abb99(37)
      abb99(62)=abb99(112)*abb99(25)
      abb99(64)=abb99(62)*abb99(70)
      abb99(66)=-abb99(25)*abb99(115)
      abb99(64)=abb99(64)+abb99(66)
      abb99(64)=spak1e7*abb99(64)
      abb99(23)=abb99(57)*abb99(23)*abb99(60)
      abb99(23)=abb99(23)+abb99(64)
      abb99(23)=abb99(81)*abb99(23)
      abb99(57)=-abb99(79)*abb99(59)
      abb99(15)=abb99(76)*abb99(15)
      abb99(15)=abb99(57)+abb99(15)
      abb99(15)=abb99(15)*abb99(89)
      abb99(15)=abb99(15)+abb99(23)
      abb99(15)=4.0_ki*abb99(15)
      abb99(23)=abb99(7)*abb99(26)
      abb99(26)=-spbk7k3*abb99(67)
      abb99(23)=abb99(26)+abb99(23)+abb99(50)
      abb99(23)=abb99(71)*abb99(23)
      abb99(26)=spbk7k2*abb99(68)
      abb99(50)=-abb99(77)*abb99(101)
      abb99(23)=abb99(50)+abb99(26)+abb99(23)
      abb99(23)=4.0_ki*abb99(23)
      abb99(26)=abb99(103)*abb99(43)
      abb99(43)=abb99(103)*abb99(54)
      abb99(50)=spak1k3*abb99(77)
      abb99(43)=abb99(43)+abb99(50)
      abb99(43)=4.0_ki*abb99(43)
      abb99(37)=-abb99(103)*abb99(37)
      abb99(45)=abb99(58)-abb99(45)
      abb99(45)=spak3k4*abb99(45)
      abb99(45)=abb99(47)+abb99(45)
      abb99(45)=4.0_ki*abb99(45)
      abb99(47)=spae7k7*abb99(99)
      abb99(36)=spal5e7*abb99(36)
      abb99(36)=abb99(36)+abb99(47)
      abb99(9)=abb99(9)*abb99(36)
      abb99(36)=-abb99(62)*abb99(61)
      abb99(25)=abb99(25)*abb99(86)
      abb99(25)=abb99(36)+abb99(25)
      abb99(25)=abb99(25)*abb99(81)
      abb99(36)=spbk3k1*abb99(90)
      abb99(47)=-spbk2k1*abb99(63)
      abb99(50)=-abb99(87)*spbe7k3*spak3k4
      abb99(9)=abb99(47)+abb99(50)+abb99(36)+abb99(25)+abb99(9)
      abb99(9)=4.0_ki*abb99(9)
      abb99(25)=abb99(98)*spbk7k1
      abb99(36)=abb99(104)*spbe7k1
      abb99(25)=-abb99(106)+abb99(25)-abb99(36)
      abb99(36)=-spak3k4*abb99(25)
      abb99(47)=-spbl6k1*abb99(90)
      abb99(36)=abb99(47)-abb99(51)+abb99(36)
      abb99(36)=4.0_ki*abb99(36)
      abb99(25)=spak2k4*abb99(25)
      abb99(47)=spbl6k1*abb99(63)
      abb99(38)=es12*abb99(38)
      abb99(25)=abb99(47)+abb99(38)+abb99(25)
      abb99(25)=4.0_ki*abb99(25)
      R2d99=0.0_ki
      rat2 = rat2 + R2d99
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='99' value='", &
          & R2d99, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd99h3
