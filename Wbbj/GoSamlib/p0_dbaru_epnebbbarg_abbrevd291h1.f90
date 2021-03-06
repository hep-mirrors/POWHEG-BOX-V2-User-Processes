module     p0_dbaru_epnebbbarg_abbrevd291h1
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(146), public :: abb291
   complex(ki), public :: R2d291
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
      abb291(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb291(2)=NC**(-1)
      abb291(3)=sqrt2**(-1)
      abb291(4)=spak2k7**(-1)
      abb291(5)=spak2l5**(-1)
      abb291(6)=spbl6k2**(-1)
      abb291(7)=sqrt(mB**2)
      abb291(8)=spbl5k2**(-1)
      abb291(9)=spak2l6**(-1)
      abb291(10)=c4*abb291(2)**2
      abb291(11)=abb291(10)+c2
      abb291(12)=spak1l5*abb291(11)
      abb291(13)=TR*gW
      abb291(13)=abb291(13)**2*i_*CVDU*abb291(3)*abb291(1)
      abb291(14)=abb291(13)*abb291(4)
      abb291(15)=spak1k2*abb291(14)
      abb291(16)=abb291(15)*spbk3k2
      abb291(17)=abb291(16)*abb291(12)
      abb291(18)=mB**2
      abb291(19)=abb291(18)*abb291(17)
      abb291(20)=c1+c3
      abb291(21)=abb291(15)*abb291(2)
      abb291(22)=abb291(20)*abb291(21)
      abb291(23)=spbk3k2*abb291(22)
      abb291(24)=abb291(18)*spak1l5
      abb291(25)=-abb291(24)*abb291(23)
      abb291(19)=abb291(25)+abb291(19)
      abb291(25)=abb291(6)*spbl5k2
      abb291(19)=abb291(19)*abb291(25)
      abb291(26)=spbk3k2*spak1l5
      abb291(27)=abb291(26)*abb291(22)
      abb291(17)=abb291(27)-abb291(17)
      abb291(27)=abb291(18)*abb291(5)
      abb291(28)=abb291(27)-spbl5k2
      abb291(29)=abb291(28)*spak2l6
      abb291(30)=-abb291(17)*abb291(29)
      abb291(19)=abb291(19)+abb291(30)
      abb291(30)=spak1k4*spbl5k1
      abb291(19)=abb291(30)*abb291(19)
      abb291(31)=abb291(7)*abb291(5)
      abb291(32)=abb291(31)*mB
      abb291(33)=abb291(32)*abb291(22)
      abb291(34)=abb291(31)*abb291(15)
      abb291(35)=abb291(34)*mB
      abb291(36)=abb291(35)*c2
      abb291(33)=abb291(33)-abb291(36)
      abb291(36)=abb291(35)*abb291(10)
      abb291(36)=-abb291(36)+abb291(33)
      abb291(37)=spbk3k2*abb291(36)
      abb291(38)=abb291(37)*spak1k4
      abb291(39)=mB**3
      abb291(40)=abb291(39)*abb291(7)
      abb291(41)=abb291(40)*abb291(5)**2
      abb291(42)=abb291(41)*abb291(22)
      abb291(43)=-spbk3k2*abb291(42)
      abb291(44)=abb291(16)*abb291(11)
      abb291(45)=abb291(41)*abb291(44)
      abb291(43)=abb291(45)+abb291(43)
      abb291(45)=abb291(8)*spak1k4
      abb291(46)=abb291(43)*abb291(45)
      abb291(46)=abb291(38)+abb291(46)
      abb291(46)=spak2l6*abb291(46)
      abb291(31)=abb291(39)*abb291(31)
      abb291(47)=abb291(31)*abb291(22)
      abb291(34)=abb291(39)*abb291(34)
      abb291(39)=abb291(34)*abb291(11)
      abb291(39)=abb291(39)-abb291(47)
      abb291(47)=abb291(39)*spbk3k2
      abb291(48)=spak1k4*abb291(6)
      abb291(49)=abb291(47)*abb291(48)
      abb291(46)=abb291(49)+abb291(46)
      abb291(46)=es12*abb291(46)
      abb291(19)=abb291(19)+abb291(46)
      abb291(19)=spbk7k1*abb291(19)
      abb291(46)=spak1l5*abb291(22)
      abb291(49)=abb291(15)*abb291(12)
      abb291(50)=abb291(49)-abb291(46)
      abb291(51)=abb291(30)*spbk7k1
      abb291(52)=spbl5k3*spbl5k2
      abb291(53)=-abb291(50)*abb291(52)*abb291(51)
      abb291(54)=spbl5k3*spak1k4
      abb291(55)=abb291(54)*es12
      abb291(56)=spbk7k1*abb291(36)*abb291(55)
      abb291(53)=abb291(53)+abb291(56)
      abb291(53)=spal5l6*abb291(53)
      abb291(19)=abb291(53)+abb291(19)
      abb291(19)=8.0_ki*abb291(19)
      abb291(53)=spbk3k2*spak2k4
      abb291(56)=-abb291(53)*abb291(42)
      abb291(57)=abb291(41)*spak2k4
      abb291(58)=abb291(57)*abb291(44)
      abb291(56)=abb291(58)+abb291(56)
      abb291(58)=abb291(56)*abb291(8)
      abb291(59)=abb291(53)*abb291(36)
      abb291(58)=abb291(58)+abb291(59)
      abb291(58)=abb291(58)*spbk7k2
      abb291(60)=abb291(13)*abb291(5)
      abb291(61)=abb291(60)*abb291(4)
      abb291(62)=abb291(61)*abb291(12)
      abb291(63)=abb291(18)*spbk7l5
      abb291(64)=abb291(53)*abb291(63)
      abb291(65)=abb291(64)*abb291(62)
      abb291(66)=abb291(13)*abb291(2)
      abb291(67)=abb291(66)*abb291(4)
      abb291(68)=abb291(67)*c3
      abb291(69)=abb291(67)*c1
      abb291(70)=abb291(68)+abb291(69)
      abb291(71)=spak1l5*abb291(70)
      abb291(72)=abb291(63)*abb291(5)
      abb291(73)=abb291(72)*abb291(53)
      abb291(74)=abb291(73)*abb291(71)
      abb291(26)=abb291(26)*abb291(70)
      abb291(75)=spak2k4*spbk7l5
      abb291(76)=abb291(75)*abb291(26)
      abb291(77)=abb291(14)*abb291(12)
      abb291(78)=abb291(75)*spbk3k2
      abb291(79)=abb291(78)*abb291(77)
      abb291(76)=abb291(76)-abb291(79)
      abb291(79)=abb291(76)*spbl5k2
      abb291(58)=abb291(58)-abb291(74)+abb291(79)+abb291(65)
      abb291(58)=abb291(58)*spak2l6
      abb291(65)=abb291(71)-abb291(77)
      abb291(74)=-abb291(75)*abb291(65)
      abb291(79)=abb291(52)*abb291(74)
      abb291(80)=abb291(36)*spbk7k2*spbl5k3
      abb291(81)=spak2k4*abb291(80)
      abb291(79)=abb291(79)-abb291(81)
      abb291(79)=abb291(79)*spal5l6
      abb291(81)=abb291(63)*spak1l5
      abb291(82)=-abb291(70)*abb291(81)*abb291(53)
      abb291(83)=abb291(64)*abb291(77)
      abb291(82)=abb291(83)+abb291(82)
      abb291(82)=abb291(82)*abb291(25)
      abb291(53)=-abb291(53)*abb291(39)
      abb291(83)=spbk7k2*abb291(6)
      abb291(84)=abb291(53)*abb291(83)
      abb291(58)=abb291(58)-abb291(79)+abb291(82)-abb291(84)
      abb291(79)=16.0_ki*abb291(58)
      abb291(82)=spak1k2**2
      abb291(84)=abb291(70)*abb291(82)*abb291(32)
      abb291(85)=abb291(7)*mB
      abb291(86)=abb291(85)*abb291(61)
      abb291(87)=abb291(86)*abb291(82)
      abb291(88)=abb291(87)*abb291(11)
      abb291(88)=abb291(84)-abb291(88)
      abb291(89)=abb291(88)*spak4l6
      abb291(90)=abb291(89)*spbk7k2
      abb291(91)=spbk7l5*abb291(22)
      abb291(92)=-spak1l5*abb291(91)
      abb291(93)=abb291(15)*spbk7l5
      abb291(94)=abb291(93)*abb291(12)
      abb291(92)=abb291(94)+abb291(92)
      abb291(94)=spbl5k2*spak4l6
      abb291(95)=abb291(92)*abb291(94)
      abb291(90)=abb291(90)-abb291(95)
      abb291(90)=abb291(90)*spbk3k1
      abb291(33)=spbk7k3*abb291(33)
      abb291(10)=abb291(10)*spbk7k3
      abb291(96)=abb291(10)*abb291(35)
      abb291(33)=-abb291(96)+abb291(33)
      abb291(33)=abb291(33)*spak4l6
      abb291(96)=es712-es71
      abb291(97)=2.0_ki*es12-abb291(96)
      abb291(98)=abb291(97)*abb291(33)
      abb291(99)=abb291(15)*spbk7k3
      abb291(100)=abb291(12)*abb291(99)
      abb291(101)=spbk7k3*abb291(22)
      abb291(102)=spak1l5*abb291(101)
      abb291(102)=abb291(100)-abb291(102)
      abb291(103)=-abb291(102)*spbl5k1
      abb291(104)=abb291(103)*abb291(94)
      abb291(105)=abb291(13)*spbk7l5
      abb291(106)=abb291(12)*abb291(105)*spbk7k3
      abb291(107)=spak1l5*abb291(20)
      abb291(108)=abb291(66)*spbk7k3
      abb291(109)=abb291(108)*spbk7l5
      abb291(110)=abb291(109)*abb291(107)
      abb291(110)=abb291(110)-abb291(106)
      abb291(111)=abb291(110)*abb291(94)
      abb291(90)=abb291(90)-abb291(111)-abb291(98)-abb291(104)
      abb291(98)=16.0_ki*abb291(90)
      abb291(104)=abb291(82)*abb291(69)
      abb291(112)=abb291(82)*abb291(68)
      abb291(113)=abb291(104)+abb291(112)
      abb291(114)=abb291(113)*abb291(31)
      abb291(115)=abb291(61)*abb291(82)
      abb291(116)=abb291(115)*abb291(40)
      abb291(117)=abb291(116)*abb291(11)
      abb291(117)=abb291(117)-abb291(114)
      abb291(118)=abb291(9)*abb291(6)
      abb291(119)=abb291(118)*spak4l6
      abb291(117)=abb291(117)*abb291(119)
      abb291(14)=abb291(14)*abb291(11)
      abb291(120)=abb291(82)*abb291(14)
      abb291(120)=abb291(120)-abb291(112)
      abb291(104)=-abb291(104)+abb291(120)
      abb291(121)=abb291(41)*abb291(8)*spak4l6
      abb291(122)=abb291(104)*abb291(121)
      abb291(117)=abb291(122)+abb291(89)+abb291(117)
      abb291(117)=spbk7k2*abb291(117)
      abb291(122)=spak4l6*abb291(72)*abb291(50)
      abb291(123)=abb291(22)*abb291(81)
      abb291(124)=abb291(63)*abb291(49)
      abb291(124)=-abb291(123)+abb291(124)
      abb291(125)=abb291(94)*abb291(118)
      abb291(124)=abb291(124)*abb291(125)
      abb291(95)=abb291(117)+abb291(124)+abb291(122)-abb291(95)
      abb291(95)=spbk3k1*abb291(95)
      abb291(117)=c2*spbk7k3
      abb291(10)=abb291(117)+abb291(10)
      abb291(34)=-abb291(34)*abb291(10)
      abb291(117)=abb291(31)*abb291(101)
      abb291(34)=abb291(117)+abb291(34)
      abb291(34)=abb291(34)*abb291(119)
      abb291(99)=abb291(99)*abb291(11)
      abb291(117)=abb291(101)-abb291(99)
      abb291(119)=abb291(117)*abb291(121)
      abb291(33)=-abb291(33)+abb291(34)+abb291(119)
      abb291(33)=abb291(33)*abb291(97)
      abb291(34)=-abb291(18)*abb291(100)
      abb291(101)=abb291(24)*abb291(101)
      abb291(34)=abb291(101)+abb291(34)
      abb291(34)=spbl5k1*abb291(34)
      abb291(101)=-abb291(18)*abb291(106)
      abb291(106)=abb291(108)*abb291(107)
      abb291(119)=abb291(63)*abb291(106)
      abb291(34)=abb291(34)+abb291(119)+abb291(101)
      abb291(34)=abb291(34)*abb291(125)
      abb291(101)=abb291(18)*spbk3k2
      abb291(119)=abb291(22)*abb291(101)
      abb291(121)=abb291(44)*abb291(18)
      abb291(119)=abb291(119)-abb291(121)
      abb291(121)=abb291(118)*spak1l6
      abb291(122)=-abb291(119)*abb291(121)
      abb291(23)=abb291(44)-abb291(23)
      abb291(124)=abb291(23)*abb291(27)
      abb291(125)=abb291(8)*spak1l6
      abb291(126)=abb291(124)*abb291(125)
      abb291(122)=abb291(126)+abb291(122)
      abb291(122)=abb291(30)*abb291(122)
      abb291(126)=abb291(30)*spak1l6
      abb291(127)=-abb291(23)*abb291(126)
      abb291(122)=abb291(127)+abb291(122)
      abb291(122)=spbk7k1*abb291(122)
      abb291(127)=abb291(72)*abb291(106)
      abb291(128)=abb291(63)*abb291(60)
      abb291(129)=-abb291(128)*spbk7k3*abb291(12)
      abb291(127)=abb291(129)+abb291(127)
      abb291(127)=spak4l6*abb291(127)
      abb291(129)=-spak4l6*abb291(27)
      abb291(129)=abb291(129)+abb291(94)
      abb291(102)=spbl5k1*abb291(102)*abb291(129)
      abb291(33)=abb291(122)+abb291(95)+abb291(34)+abb291(102)+abb291(127)-abb2&
      &91(111)+abb291(33)
      abb291(33)=16.0_ki*abb291(33)
      abb291(34)=-abb291(73)*abb291(70)
      abb291(95)=abb291(61)*abb291(11)
      abb291(102)=abb291(64)*abb291(95)
      abb291(34)=abb291(102)+abb291(34)
      abb291(34)=abb291(34)*abb291(125)
      abb291(102)=abb291(70)-abb291(14)
      abb291(111)=abb291(121)*abb291(64)
      abb291(122)=spak1l6*abb291(78)
      abb291(111)=-abb291(111)+abb291(122)
      abb291(111)=abb291(102)*abb291(111)
      abb291(34)=abb291(34)+abb291(111)
      abb291(111)=32.0_ki*abb291(34)
      abb291(58)=-abb291(90)+abb291(58)
      abb291(58)=8.0_ki*abb291(58)
      abb291(34)=16.0_ki*abb291(34)
      abb291(90)=abb291(88)*spbk3k1
      abb291(60)=abb291(60)*abb291(85)
      abb291(122)=abb291(10)*abb291(60)*spak1k2
      abb291(108)=abb291(108)*abb291(20)
      abb291(127)=abb291(32)*spak1k2
      abb291(129)=abb291(127)*abb291(108)
      abb291(129)=abb291(129)-abb291(122)
      abb291(130)=-abb291(129)+abb291(90)
      abb291(131)=spak4l5*spbl5k2
      abb291(130)=abb291(130)*abb291(131)
      abb291(89)=abb291(89)*spbk3k1
      abb291(129)=abb291(129)*spak4l6
      abb291(89)=abb291(89)-abb291(129)
      abb291(129)=spbl6k2*abb291(89)
      abb291(129)=abb291(130)+abb291(129)
      abb291(129)=8.0_ki*abb291(129)
      abb291(130)=16.0_ki*abb291(59)
      abb291(132)=-8.0_ki*abb291(59)
      abb291(92)=abb291(92)*spbk3k1
      abb291(92)=abb291(110)+abb291(92)+abb291(103)
      abb291(103)=-abb291(92)*abb291(131)
      abb291(92)=abb291(92)*spak4l6
      abb291(110)=-spbl6k2*abb291(92)
      abb291(17)=-abb291(17)*abb291(51)
      abb291(17)=abb291(110)+abb291(17)+abb291(103)
      abb291(17)=8.0_ki*abb291(17)
      abb291(103)=16.0_ki*abb291(76)
      abb291(76)=-8.0_ki*abb291(76)
      abb291(110)=spbk3k2*abb291(120)
      abb291(120)=2.0_ki*spbl5k3
      abb291(133)=abb291(50)*abb291(120)
      abb291(134)=-abb291(118)*abb291(101)*abb291(104)
      abb291(69)=abb291(69)*spbk3k2
      abb291(82)=abb291(69)*abb291(82)
      abb291(112)=spbk3k2*abb291(112)
      abb291(112)=abb291(82)+abb291(112)
      abb291(112)=abb291(27)*abb291(112)
      abb291(115)=abb291(11)*abb291(115)
      abb291(135)=-abb291(101)*abb291(115)
      abb291(112)=abb291(135)+abb291(112)
      abb291(112)=abb291(8)*abb291(112)
      abb291(82)=abb291(112)+abb291(134)+abb291(133)-abb291(82)+abb291(110)
      abb291(82)=abb291(30)*abb291(82)
      abb291(110)=-spak1k4*abb291(90)
      abb291(82)=abb291(110)+abb291(82)
      abb291(82)=spbk7k1*abb291(82)
      abb291(110)=spak2k4*abb291(84)
      abb291(112)=-spak2k4*abb291(114)
      abb291(114)=spak2k4*abb291(11)
      abb291(116)=abb291(116)*abb291(114)
      abb291(112)=abb291(116)+abb291(112)
      abb291(112)=abb291(112)*abb291(118)
      abb291(116)=abb291(8)*abb291(57)*abb291(104)
      abb291(114)=-abb291(87)*abb291(114)
      abb291(110)=abb291(116)+abb291(112)+abb291(114)+abb291(110)
      abb291(110)=spbk7k2*abb291(110)
      abb291(112)=-abb291(75)*abb291(50)
      abb291(114)=-spak2k4*abb291(123)
      abb291(116)=abb291(15)*spak2k4
      abb291(123)=abb291(116)*abb291(63)
      abb291(133)=abb291(123)*abb291(12)
      abb291(114)=abb291(133)+abb291(114)
      abb291(114)=abb291(114)*abb291(118)
      abb291(112)=abb291(114)+abb291(112)
      abb291(112)=spbl5k2*abb291(112)
      abb291(114)=abb291(72)*spak2k4
      abb291(133)=-abb291(114)*abb291(46)
      abb291(116)=abb291(72)*abb291(116)
      abb291(134)=abb291(116)*abb291(12)
      abb291(110)=abb291(110)+abb291(134)+abb291(133)+abb291(112)
      abb291(110)=spbk3k1*abb291(110)
      abb291(90)=abb291(90)+abb291(122)
      abb291(90)=spbk7l5*abb291(90)
      abb291(84)=-spbk7k3*abb291(84)
      abb291(87)=abb291(87)*abb291(10)
      abb291(84)=abb291(87)+abb291(84)
      abb291(87)=spbl5k1*abb291(84)
      abb291(109)=abb291(109)*abb291(20)
      abb291(112)=-abb291(127)*abb291(109)
      abb291(87)=abb291(87)+abb291(112)+abb291(90)
      abb291(87)=spak4l5*abb291(87)
      abb291(90)=spbl6l5*abb291(92)
      abb291(92)=spak2k4*abb291(100)
      abb291(100)=-abb291(18)*abb291(92)
      abb291(112)=spbk7k3*spak2k4
      abb291(122)=abb291(112)*abb291(22)
      abb291(127)=abb291(24)*abb291(122)
      abb291(100)=abb291(127)+abb291(100)
      abb291(100)=spbl5k1*abb291(100)
      abb291(127)=abb291(112)*abb291(66)
      abb291(133)=abb291(127)*abb291(63)
      abb291(134)=abb291(133)*abb291(107)
      abb291(135)=abb291(112)*abb291(105)
      abb291(136)=abb291(135)*abb291(18)
      abb291(137)=-abb291(136)*abb291(12)
      abb291(100)=abb291(100)+abb291(137)+abb291(134)
      abb291(100)=abb291(118)*abb291(100)
      abb291(106)=-abb291(75)*abb291(106)
      abb291(134)=abb291(135)*abb291(12)
      abb291(100)=abb291(100)+abb291(134)+abb291(106)
      abb291(100)=spbl5k2*abb291(100)
      abb291(106)=abb291(118)*abb291(39)
      abb291(106)=abb291(36)+abb291(106)
      abb291(106)=abb291(112)*abb291(106)
      abb291(134)=-abb291(112)*abb291(42)
      abb291(57)=abb291(57)*abb291(99)
      abb291(57)=abb291(57)+abb291(134)
      abb291(57)=abb291(57)*abb291(8)
      abb291(57)=abb291(57)+abb291(106)
      abb291(57)=-abb291(57)*abb291(97)
      abb291(89)=spbk7l6*abb291(89)
      abb291(106)=spbl6k1*spak4l6*abb291(84)
      abb291(46)=abb291(46)*abb291(112)
      abb291(46)=abb291(46)-abb291(92)
      abb291(28)=spbl5k1*abb291(46)*abb291(28)
      abb291(46)=abb291(127)*abb291(72)
      abb291(92)=abb291(46)*abb291(107)
      abb291(127)=abb291(128)*abb291(112)
      abb291(134)=-abb291(127)*abb291(12)
      abb291(28)=abb291(106)+abb291(89)+abb291(90)+abb291(87)+abb291(82)+abb291&
      &(110)+abb291(28)+abb291(57)+abb291(134)+abb291(92)+abb291(100)
      abb291(28)=8.0_ki*abb291(28)
      abb291(57)=abb291(32)*spak2k4
      abb291(82)=abb291(57)*spbk7k3
      abb291(78)=abb291(78)+abb291(82)
      abb291(21)=-abb291(20)*abb291(21)*abb291(78)
      abb291(16)=abb291(16)*abb291(75)
      abb291(78)=abb291(112)*abb291(35)
      abb291(16)=abb291(16)+abb291(78)
      abb291(16)=abb291(16)*abb291(11)
      abb291(73)=abb291(73)*abb291(22)
      abb291(78)=-abb291(114)*abb291(44)
      abb291(73)=abb291(73)+abb291(78)
      abb291(73)=abb291(73)*abb291(8)
      abb291(64)=abb291(64)*abb291(22)
      abb291(78)=abb291(63)*spak2k4
      abb291(82)=-abb291(78)*abb291(44)
      abb291(64)=abb291(64)+abb291(82)
      abb291(64)=abb291(64)*abb291(118)
      abb291(74)=abb291(120)*abb291(74)
      abb291(16)=abb291(73)+abb291(74)+abb291(64)+abb291(16)+abb291(21)
      abb291(21)=16.0_ki*abb291(16)
      abb291(64)=-abb291(93)*abb291(11)
      abb291(64)=abb291(91)+abb291(64)
      abb291(73)=abb291(64)*spbk3k1
      abb291(74)=abb291(73)*spak1k4
      abb291(82)=abb291(117)*spbl5k1
      abb291(87)=abb291(105)*abb291(10)
      abb291(87)=abb291(87)-abb291(82)
      abb291(89)=abb291(109)-abb291(87)
      abb291(90)=abb291(89)*spak1k4
      abb291(74)=abb291(74)-abb291(90)
      abb291(92)=16.0_ki*abb291(74)
      abb291(82)=abb291(27)*abb291(82)
      abb291(93)=abb291(10)*abb291(128)
      abb291(100)=abb291(108)*abb291(72)
      abb291(82)=abb291(82)+abb291(100)-abb291(93)
      abb291(93)=-abb291(82)*abb291(45)
      abb291(100)=abb291(15)*abb291(11)
      abb291(106)=abb291(22)-abb291(100)
      abb291(109)=abb291(106)*abb291(63)
      abb291(110)=abb291(109)*abb291(118)
      abb291(110)=abb291(110)-abb291(64)
      abb291(117)=spak1k4*abb291(110)
      abb291(128)=abb291(106)*abb291(72)
      abb291(134)=abb291(128)*abb291(45)
      abb291(117)=abb291(134)+abb291(117)
      abb291(117)=spbk3k1*abb291(117)
      abb291(87)=-abb291(18)*abb291(87)
      abb291(134)=abb291(108)*abb291(63)
      abb291(87)=abb291(134)+abb291(87)
      abb291(134)=-spak1k4*abb291(87)*abb291(118)
      abb291(90)=abb291(117)+abb291(93)+abb291(90)+abb291(134)
      abb291(90)=16.0_ki*abb291(90)
      abb291(16)=abb291(74)+abb291(16)
      abb291(16)=8.0_ki*abb291(16)
      abb291(74)=spbl6k2*spak4l6
      abb291(74)=abb291(131)+abb291(74)
      abb291(84)=-abb291(84)*abb291(74)
      abb291(93)=abb291(88)*spbk7k1
      abb291(117)=spak1k4*spbk3k2*abb291(93)
      abb291(84)=abb291(117)+abb291(84)
      abb291(84)=8.0_ki*abb291(84)
      abb291(51)=abb291(51)*abb291(106)
      abb291(117)=spbl5k3*spak1l6
      abb291(131)=8.0_ki*abb291(117)
      abb291(131)=abb291(51)*abb291(131)
      abb291(134)=-abb291(75)*abb291(102)
      abb291(137)=16.0_ki*abb291(134)
      abb291(138)=abb291(137)*abb291(117)
      abb291(134)=8.0_ki*abb291(134)
      abb291(139)=-abb291(117)*abb291(134)
      abb291(100)=abb291(41)*abb291(100)
      abb291(42)=abb291(100)-abb291(42)
      abb291(42)=abb291(42)*abb291(8)
      abb291(42)=abb291(42)+abb291(36)
      abb291(42)=abb291(42)*spbk7k2
      abb291(100)=spbk7l5*abb291(77)
      abb291(140)=spbk7l5*abb291(71)
      abb291(140)=abb291(140)-abb291(100)
      abb291(141)=abb291(140)*spbl5k2
      abb291(142)=abb291(71)*abb291(72)
      abb291(143)=abb291(62)*abb291(63)
      abb291(141)=-abb291(142)+abb291(141)+abb291(143)+abb291(42)
      abb291(141)=abb291(141)*spak2l6
      abb291(142)=abb291(77)*abb291(63)
      abb291(143)=abb291(70)*abb291(81)
      abb291(142)=abb291(142)-abb291(143)
      abb291(142)=abb291(142)*abb291(25)
      abb291(39)=abb291(39)*abb291(83)
      abb291(141)=abb291(141)+abb291(142)+abb291(39)
      abb291(141)=-abb291(141)*abb291(96)
      abb291(97)=-abb291(97)*abb291(36)*spbk7l5
      abb291(142)=spbk7l5**2
      abb291(13)=abb291(13)*abb291(11)*abb291(142)
      abb291(143)=spak1l5*abb291(13)
      abb291(142)=abb291(142)*abb291(66)
      abb291(144)=abb291(107)*abb291(142)
      abb291(143)=abb291(143)-abb291(144)
      abb291(144)=spbl5k2*abb291(143)
      abb291(145)=spbk7k2*spbl5k1
      abb291(146)=abb291(88)*abb291(145)
      abb291(97)=abb291(144)+abb291(146)+abb291(97)
      abb291(97)=spal5l6*abb291(97)
      abb291(49)=abb291(18)*abb291(49)
      abb291(144)=-abb291(24)*abb291(22)
      abb291(49)=abb291(144)+abb291(49)
      abb291(49)=abb291(49)*abb291(25)
      abb291(29)=abb291(50)*abb291(29)
      abb291(29)=abb291(49)+abb291(29)
      abb291(29)=abb291(145)*abb291(29)
      abb291(42)=spak2l6*abb291(42)
      abb291(39)=abb291(39)+abb291(42)
      abb291(39)=es12*abb291(39)
      abb291(29)=abb291(97)+abb291(39)+abb291(29)+abb291(141)
      abb291(29)=8.0_ki*abb291(29)
      abb291(39)=abb291(95)*abb291(63)
      abb291(42)=abb291(70)*abb291(72)
      abb291(39)=abb291(39)-abb291(42)
      abb291(39)=abb291(39)*abb291(125)
      abb291(42)=abb291(121)*abb291(102)*abb291(63)
      abb291(49)=spbk7l5*abb291(14)
      abb291(97)=spbk7l5*abb291(70)
      abb291(97)=abb291(97)-abb291(49)
      abb291(141)=abb291(97)*spak1l6
      abb291(39)=abb291(39)-abb291(42)+abb291(141)
      abb291(39)=-abb291(39)*abb291(96)
      abb291(42)=-abb291(125)*abb291(27)
      abb291(42)=abb291(42)+spak1l6
      abb291(42)=abb291(106)*abb291(42)
      abb291(141)=abb291(106)*abb291(18)
      abb291(144)=-abb291(141)*abb291(121)
      abb291(42)=abb291(144)+abb291(42)
      abb291(42)=abb291(42)*abb291(145)
      abb291(39)=abb291(42)+abb291(39)
      abb291(39)=16.0_ki*abb291(39)
      abb291(42)=8.0_ki*abb291(36)
      abb291(144)=abb291(96)*abb291(42)
      abb291(146)=abb291(140)*abb291(96)
      abb291(50)=abb291(50)*abb291(145)
      abb291(50)=abb291(50)+abb291(146)
      abb291(50)=8.0_ki*abb291(50)
      abb291(93)=abb291(93)+abb291(143)
      abb291(143)=abb291(128)*abb291(8)
      abb291(110)=abb291(143)+abb291(110)
      abb291(96)=-abb291(110)*abb291(96)
      abb291(110)=-abb291(118)*abb291(18)
      abb291(110)=1.0_ki+abb291(110)
      abb291(104)=abb291(104)*abb291(110)
      abb291(110)=abb291(27)*abb291(113)
      abb291(113)=-abb291(18)*abb291(115)
      abb291(110)=abb291(113)+abb291(110)
      abb291(110)=abb291(8)*abb291(110)
      abb291(104)=abb291(110)+abb291(104)
      abb291(104)=abb291(104)*abb291(145)
      abb291(93)=abb291(104)+abb291(96)-2.0_ki*abb291(93)
      abb291(93)=8.0_ki*abb291(93)
      abb291(88)=8.0_ki*spbk7k2*abb291(88)
      abb291(96)=-abb291(142)*abb291(20)
      abb291(13)=abb291(96)+abb291(13)
      abb291(13)=8.0_ki*spak1l6*abb291(13)
      abb291(96)=abb291(73)*spak1l6
      abb291(104)=abb291(89)*spak1l6
      abb291(96)=abb291(96)-abb291(104)
      abb291(110)=16.0_ki*abb291(96)
      abb291(113)=spak1l6*abb291(64)
      abb291(109)=-abb291(109)*abb291(121)
      abb291(115)=-abb291(128)*abb291(125)
      abb291(109)=abb291(115)+abb291(113)+abb291(109)
      abb291(109)=spbk3k1*abb291(109)
      abb291(82)=abb291(82)*abb291(125)
      abb291(87)=abb291(87)*abb291(121)
      abb291(82)=abb291(109)+abb291(82)-abb291(104)+abb291(87)
      abb291(82)=16.0_ki*abb291(82)
      abb291(87)=-8.0_ki*abb291(96)
      abb291(96)=-abb291(8)*abb291(43)
      abb291(96)=abb291(96)-abb291(37)
      abb291(96)=spbk7k2*abb291(96)
      abb291(100)=abb291(100)*spbk3k2
      abb291(104)=abb291(26)*spbk7l5
      abb291(100)=abb291(100)-abb291(104)
      abb291(104)=spbl5k2*abb291(100)
      abb291(109)=abb291(72)*abb291(26)
      abb291(113)=abb291(63)*spbk3k2
      abb291(115)=-abb291(113)*abb291(62)
      abb291(96)=abb291(96)+abb291(104)+abb291(115)+abb291(109)
      abb291(96)=spak2l6*abb291(96)
      abb291(68)=abb291(68)*spbk3k2
      abb291(68)=abb291(68)+abb291(69)
      abb291(69)=abb291(81)*abb291(68)
      abb291(81)=-abb291(113)*abb291(77)
      abb291(69)=abb291(81)+abb291(69)
      abb291(69)=abb291(69)*abb291(25)
      abb291(81)=-abb291(47)*abb291(83)
      abb291(69)=abb291(96)+abb291(69)+abb291(81)
      abb291(69)=spak4k7*abb291(69)
      abb291(52)=-abb291(140)*abb291(52)
      abb291(52)=abb291(52)-abb291(80)
      abb291(52)=spak4k7*abb291(52)
      abb291(80)=abb291(65)*spbl5k3
      abb291(81)=spbl5k2*abb291(30)*abb291(80)
      abb291(83)=abb291(86)*abb291(11)
      abb291(96)=abb291(32)*abb291(70)
      abb291(96)=abb291(96)-abb291(83)
      abb291(55)=abb291(96)*abb291(55)
      abb291(52)=abb291(52)+abb291(81)+abb291(55)
      abb291(52)=spal5l6*abb291(52)
      abb291(55)=abb291(77)*spbk3k2
      abb291(55)=abb291(55)-abb291(26)
      abb291(81)=-spbl5k2*abb291(55)
      abb291(26)=-abb291(27)*abb291(26)
      abb291(104)=abb291(101)*abb291(62)
      abb291(26)=abb291(81)+abb291(104)+abb291(26)
      abb291(26)=spak2l6*abb291(26)
      abb291(81)=-abb291(24)*abb291(68)
      abb291(104)=abb291(101)*abb291(77)
      abb291(81)=abb291(104)+abb291(81)
      abb291(81)=abb291(81)*abb291(25)
      abb291(26)=abb291(81)+abb291(26)
      abb291(26)=abb291(30)*abb291(26)
      abb291(81)=-spbk3k2*abb291(83)
      abb291(104)=abb291(32)*abb291(68)
      abb291(81)=abb291(104)+abb291(81)
      abb291(81)=spak1k4*abb291(81)
      abb291(104)=abb291(14)*spbk3k2
      abb291(104)=abb291(104)-abb291(68)
      abb291(41)=abb291(45)*abb291(41)*abb291(104)
      abb291(41)=abb291(81)+abb291(41)
      abb291(41)=spak2l6*abb291(41)
      abb291(31)=-abb291(31)*abb291(68)
      abb291(40)=abb291(40)*spbk3k2*abb291(95)
      abb291(31)=abb291(31)+abb291(40)
      abb291(31)=abb291(31)*abb291(48)
      abb291(31)=abb291(31)+abb291(41)
      abb291(31)=es12*abb291(31)
      abb291(26)=abb291(52)+abb291(69)+abb291(31)+abb291(26)
      abb291(26)=8.0_ki*abb291(26)
      abb291(31)=abb291(80)*abb291(94)
      abb291(40)=abb291(37)*spak4l6
      abb291(31)=abb291(31)-abb291(40)
      abb291(41)=16.0_ki*abb291(31)
      abb291(45)=spak4l6*abb291(47)
      abb291(47)=-abb291(126)*abb291(101)*abb291(102)
      abb291(48)=abb291(77)*abb291(18)
      abb291(24)=abb291(24)*abb291(70)
      abb291(48)=abb291(48)-abb291(24)
      abb291(52)=-spbl5k3*abb291(48)*abb291(94)
      abb291(45)=abb291(52)+abb291(45)+abb291(47)
      abb291(45)=abb291(45)*abb291(118)
      abb291(47)=-spbk7l5*abb291(68)
      abb291(49)=spbk3k2*abb291(49)
      abb291(47)=abb291(49)+abb291(47)
      abb291(47)=spak1l6*abb291(47)
      abb291(49)=abb291(63)*abb291(68)
      abb291(14)=-abb291(113)*abb291(14)
      abb291(14)=abb291(14)+abb291(49)
      abb291(14)=abb291(14)*abb291(121)
      abb291(49)=abb291(72)*abb291(68)
      abb291(52)=-abb291(113)*abb291(95)
      abb291(49)=abb291(52)+abb291(49)
      abb291(49)=abb291(49)*abb291(125)
      abb291(14)=abb291(49)+abb291(47)+abb291(14)
      abb291(14)=spak4k7*abb291(14)
      abb291(47)=abb291(71)*abb291(27)
      abb291(49)=abb291(62)*abb291(18)
      abb291(47)=abb291(47)-abb291(49)
      abb291(49)=spak4l6*abb291(47)
      abb291(52)=-abb291(65)*abb291(94)
      abb291(49)=abb291(49)+abb291(52)
      abb291(49)=spbl5k3*abb291(49)
      abb291(43)=spak4l6*abb291(43)
      abb291(52)=-abb291(27)*abb291(68)
      abb291(62)=abb291(101)*abb291(95)
      abb291(52)=abb291(62)+abb291(52)
      abb291(52)=abb291(52)*abb291(126)
      abb291(43)=abb291(43)+abb291(52)
      abb291(43)=abb291(8)*abb291(43)
      abb291(52)=-abb291(104)*abb291(126)
      abb291(14)=abb291(14)+abb291(43)+abb291(45)+abb291(49)+abb291(40)+abb291(&
      &52)
      abb291(14)=16.0_ki*abb291(14)
      abb291(31)=8.0_ki*abb291(31)
      abb291(37)=8.0_ki*abb291(37)
      abb291(37)=spak4k7*abb291(37)
      abb291(40)=-abb291(80)*abb291(74)
      abb291(43)=abb291(55)*abb291(30)
      abb291(45)=-spak4k7*abb291(100)
      abb291(40)=abb291(43)+abb291(45)+abb291(40)
      abb291(40)=8.0_ki*abb291(40)
      abb291(42)=abb291(74)*abb291(42)
      abb291(10)=-abb291(60)*abb291(10)
      abb291(43)=spbl5k1*abb291(23)
      abb291(45)=-spbk3k1*abb291(36)
      abb291(49)=abb291(32)*abb291(108)
      abb291(10)=abb291(45)+abb291(43)+abb291(10)+abb291(49)
      abb291(10)=spak1k4*abb291(10)
      abb291(43)=-abb291(65)*spbl5k2
      abb291(45)=abb291(61)*abb291(18)
      abb291(45)=abb291(45)+abb291(86)
      abb291(12)=-abb291(45)*abb291(12)
      abb291(45)=abb291(27)+abb291(32)
      abb291(45)=abb291(107)*abb291(45)*abb291(67)
      abb291(12)=abb291(43)+abb291(45)+abb291(12)
      abb291(12)=spak2k4*abb291(12)
      abb291(45)=-abb291(85)*abb291(102)
      abb291(49)=spbl5k1*abb291(65)
      abb291(45)=-2.0_ki*abb291(49)+abb291(45)
      abb291(45)=spak1k4*abb291(45)
      abb291(12)=abb291(45)+abb291(12)
      abb291(12)=spbl5k3*abb291(12)
      abb291(45)=abb291(118)*abb291(63)
      abb291(49)=abb291(8)*abb291(72)
      abb291(45)=abb291(49)+abb291(45)
      abb291(23)=abb291(23)*abb291(45)
      abb291(45)=abb291(140)*abb291(120)
      abb291(44)=-spbk7l5*abb291(44)
      abb291(49)=spbk3k2*abb291(91)
      abb291(23)=abb291(45)+abb291(49)+abb291(44)+abb291(23)
      abb291(23)=spak4k7*abb291(23)
      abb291(44)=abb291(119)*abb291(30)
      abb291(44)=-abb291(53)+abb291(44)
      abb291(44)=abb291(6)*abb291(44)
      abb291(24)=spak2k4*abb291(24)
      abb291(45)=abb291(18)*spak2k4
      abb291(49)=-abb291(45)*abb291(77)
      abb291(24)=abb291(49)+abb291(24)
      abb291(24)=spbl5k3*abb291(24)*abb291(25)
      abb291(24)=abb291(24)+abb291(44)
      abb291(24)=abb291(9)*abb291(24)
      abb291(25)=-abb291(124)*abb291(30)
      abb291(25)=abb291(25)+abb291(56)
      abb291(25)=abb291(8)*abb291(25)
      abb291(44)=-spak2k4*abb291(83)
      abb291(49)=abb291(57)*abb291(70)
      abb291(44)=abb291(49)+abb291(44)
      abb291(44)=spak1l6*abb291(44)
      abb291(49)=-spak2l6*spak1k4*abb291(96)
      abb291(44)=abb291(44)+abb291(49)
      abb291(44)=spbl6k3*abb291(44)
      abb291(49)=spbl6l5*spak4l6*abb291(80)
      abb291(52)=-spak1k7*abb291(112)*abb291(96)
      abb291(10)=abb291(52)+abb291(44)+abb291(49)+abb291(23)+abb291(25)+abb291(&
      &24)+abb291(12)+abb291(59)+abb291(10)
      abb291(10)=8.0_ki*abb291(10)
      abb291(12)=16.0_ki*abb291(102)
      abb291(23)=abb291(12)*abb291(54)
      abb291(24)=abb291(102)*abb291(18)
      abb291(25)=-abb291(24)*abb291(118)
      abb291(44)=abb291(27)*abb291(70)
      abb291(49)=abb291(18)*abb291(95)
      abb291(49)=abb291(49)-abb291(44)
      abb291(52)=abb291(8)*abb291(49)
      abb291(25)=abb291(52)+abb291(102)+abb291(25)
      abb291(25)=16.0_ki*abb291(54)*abb291(25)
      abb291(52)=8.0_ki*abb291(102)
      abb291(53)=-abb291(54)*abb291(52)
      abb291(38)=8.0_ki*abb291(38)
      abb291(54)=abb291(117)*abb291(102)
      abb291(55)=abb291(30)*abb291(54)
      abb291(56)=abb291(97)*spak4k7
      abb291(57)=-abb291(117)*abb291(56)
      abb291(55)=abb291(55)+abb291(57)
      abb291(55)=8.0_ki*abb291(55)
      abb291(47)=-abb291(43)-abb291(47)
      abb291(47)=spak2l6*abb291(47)
      abb291(36)=spal5l6*abb291(36)
      abb291(36)=abb291(36)+abb291(47)
      abb291(36)=spbl5k2*abb291(36)
      abb291(47)=abb291(6)*abb291(48)*spbl5k2**2
      abb291(36)=abb291(47)+abb291(36)
      abb291(36)=8.0_ki*abb291(36)
      abb291(47)=spbl5k2*abb291(102)
      abb291(47)=abb291(47)+abb291(49)
      abb291(47)=spak1l6*abb291(47)
      abb291(24)=abb291(24)*abb291(121)
      abb291(48)=-spbl5k2*abb291(24)
      abb291(47)=abb291(47)+abb291(48)
      abb291(47)=16.0_ki*abb291(47)
      abb291(43)=8.0_ki*abb291(43)
      abb291(48)=abb291(141)*abb291(118)
      abb291(48)=abb291(48)-abb291(106)
      abb291(48)=spbl5k2*abb291(48)
      abb291(15)=abb291(27)*abb291(15)
      abb291(15)=abb291(15)-abb291(35)
      abb291(15)=-abb291(15)*abb291(11)
      abb291(32)=abb291(27)-abb291(32)
      abb291(32)=abb291(32)*abb291(22)
      abb291(15)=abb291(48)+abb291(32)+abb291(15)
      abb291(15)=8.0_ki*abb291(15)
      abb291(32)=16.0_ki*abb291(54)
      abb291(35)=-abb291(49)*abb291(125)
      abb291(24)=abb291(35)+abb291(24)
      abb291(24)=spbl5k3*abb291(24)
      abb291(24)=-abb291(54)+abb291(24)
      abb291(24)=16.0_ki*abb291(24)
      abb291(35)=8.0_ki*abb291(54)
      abb291(48)=abb291(89)-abb291(73)
      abb291(49)=-16.0_ki*spak4l6*abb291(48)
      abb291(48)=-8.0_ki*spak4l5*abb291(48)
      abb291(51)=-8.0_ki*abb291(51)
      abb291(54)=abb291(75)*abb291(106)
      abb291(57)=-abb291(78)*abb291(22)
      abb291(59)=abb291(123)*abb291(11)
      abb291(57)=abb291(59)+abb291(57)
      abb291(57)=abb291(57)*abb291(118)
      abb291(22)=-abb291(114)*abb291(22)
      abb291(59)=abb291(116)*abb291(11)
      abb291(22)=abb291(59)+abb291(22)
      abb291(22)=abb291(8)*abb291(22)
      abb291(22)=abb291(22)+abb291(57)+abb291(54)
      abb291(22)=spbk3k1*abb291(22)
      abb291(18)=abb291(18)*abb291(122)
      abb291(54)=-abb291(45)*abb291(99)
      abb291(18)=abb291(54)+abb291(18)
      abb291(18)=spbl5k1*abb291(18)
      abb291(54)=abb291(133)*abb291(20)
      abb291(57)=-abb291(136)*abb291(11)
      abb291(18)=abb291(18)+abb291(57)+abb291(54)
      abb291(18)=abb291(18)*abb291(118)
      abb291(54)=abb291(99)*spak2k4
      abb291(54)=abb291(54)-abb291(122)
      abb291(54)=abb291(54)*spbl5k1
      abb291(27)=-abb291(27)*abb291(54)
      abb291(46)=abb291(46)*abb291(20)
      abb291(57)=-abb291(127)*abb291(11)
      abb291(27)=abb291(27)+abb291(57)+abb291(46)
      abb291(27)=abb291(8)*abb291(27)
      abb291(46)=-abb291(75)*abb291(108)
      abb291(57)=abb291(135)*abb291(11)
      abb291(18)=abb291(22)+abb291(27)+abb291(18)+abb291(54)+abb291(57)+abb291(&
      &46)
      abb291(18)=8.0_ki*abb291(18)
      abb291(22)=-spbl5k1*abb291(106)
      abb291(20)=-abb291(66)*spbk7l5*abb291(20)
      abb291(11)=abb291(105)*abb291(11)
      abb291(11)=abb291(22)+abb291(11)+abb291(20)
      abb291(11)=8.0_ki*abb291(11)
      abb291(20)=-8.0_ki*abb291(64)
      abb291(12)=-spbl5k3*spak4l6*abb291(12)
      abb291(22)=-spak4l5*spbl5k3*abb291(52)
      abb291(27)=-abb291(102)*abb291(30)
      abb291(27)=abb291(27)+abb291(56)
      abb291(27)=8.0_ki*abb291(27)
      abb291(30)=abb291(118)*abb291(45)
      abb291(30)=-spak2k4+abb291(30)
      abb291(30)=abb291(102)*abb291(30)
      abb291(44)=spak2k4*abb291(44)
      abb291(45)=-abb291(45)*abb291(95)
      abb291(44)=abb291(45)+abb291(44)
      abb291(44)=abb291(8)*abb291(44)
      abb291(30)=abb291(44)+abb291(30)
      abb291(30)=8.0_ki*spbl5k3*abb291(30)
      R2d291=0.0_ki
      rat2 = rat2 + R2d291
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='291' value='", &
          & R2d291, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd291h1
