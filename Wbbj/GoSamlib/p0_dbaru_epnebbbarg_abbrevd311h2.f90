module     p0_dbaru_epnebbbarg_abbrevd311h2
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(172), public :: abb311
   complex(ki), public :: R2d311
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
      abb311(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb311(2)=sqrt(mB**2)
      abb311(3)=NC**(-1)
      abb311(4)=sqrt2**(-1)
      abb311(5)=es234**(-1)
      abb311(6)=spak2k7**(-1)
      abb311(7)=spak2l6**(-1)
      abb311(8)=spbl6k2**(-1)
      abb311(9)=spbl5k2**(-1)
      abb311(10)=spak2l5**(-1)
      abb311(11)=TR*gW
      abb311(11)=abb311(11)**2*i_*CVDU*abb311(4)*abb311(1)
      abb311(12)=abb311(5)*abb311(6)
      abb311(13)=abb311(11)*abb311(12)*spbk3k2
      abb311(14)=abb311(13)*spak1l5
      abb311(15)=abb311(14)*spak2k4
      abb311(16)=abb311(2)*mB
      abb311(17)=abb311(16)*spbk7l6
      abb311(18)=abb311(15)*abb311(17)
      abb311(19)=abb311(13)*spak2k4
      abb311(20)=abb311(19)*spbk7k2
      abb311(21)=abb311(20)*abb311(9)
      abb311(22)=abb311(2)*abb311(7)*mB**3
      abb311(23)=abb311(22)*spak1k2
      abb311(24)=abb311(23)*abb311(21)
      abb311(25)=abb311(24)+2.0_ki*abb311(18)
      abb311(26)=c2-c4
      abb311(25)=abb311(25)*abb311(26)
      abb311(27)=abb311(14)*abb311(3)
      abb311(28)=abb311(27)*spak2k4
      abb311(29)=2.0_ki*abb311(28)
      abb311(30)=abb311(29)*abb311(17)
      abb311(31)=abb311(13)*abb311(3)
      abb311(32)=abb311(31)*abb311(9)
      abb311(33)=spbk7k2*spak2k4
      abb311(34)=abb311(32)*abb311(33)
      abb311(35)=abb311(23)*abb311(34)
      abb311(30)=abb311(30)+abb311(35)
      abb311(36)=c1-c3
      abb311(30)=abb311(30)*abb311(36)
      abb311(37)=-abb311(32)*abb311(36)
      abb311(38)=-abb311(26)*abb311(13)*abb311(9)
      abb311(39)=abb311(38)+abb311(37)
      abb311(40)=spak3k4*spak1k2
      abb311(41)=abb311(22)*abb311(40)
      abb311(42)=spbk7k3*abb311(41)*abb311(39)
      abb311(43)=abb311(26)*abb311(17)
      abb311(44)=-abb311(19)*abb311(9)*abb311(43)
      abb311(45)=-abb311(17)*abb311(37)
      abb311(46)=-spak2k4*abb311(45)
      abb311(44)=abb311(44)+abb311(46)
      abb311(44)=spak1l6*spbl6k2*abb311(44)
      abb311(25)=abb311(44)+abb311(42)+abb311(30)+abb311(25)
      abb311(25)=es12*abb311(25)
      abb311(30)=abb311(26)*abb311(13)*abb311(41)
      abb311(42)=abb311(36)*abb311(41)
      abb311(44)=abb311(31)*abb311(42)
      abb311(30)=abb311(44)+abb311(30)
      abb311(30)=spbk7k3*abb311(30)
      abb311(44)=-abb311(33)*abb311(36)
      abb311(46)=abb311(31)*spak1k2
      abb311(47)=abb311(44)*abb311(46)
      abb311(48)=abb311(22)*abb311(47)
      abb311(49)=-abb311(27)*abb311(36)
      abb311(50)=-spak2k4*abb311(49)
      abb311(51)=-abb311(15)*abb311(26)
      abb311(50)=abb311(50)-abb311(51)
      abb311(51)=abb311(16)*abb311(7)
      abb311(52)=abb311(51)*abb311(50)
      abb311(53)=-es12*abb311(52)
      abb311(54)=-spak3k4*abb311(26)
      abb311(55)=-abb311(3)*abb311(36)
      abb311(56)=abb311(55)*spak3k4
      abb311(56)=abb311(54)+abb311(56)
      abb311(57)=abb311(11)*spak1l5
      abb311(58)=abb311(57)*spbk3k2*abb311(5)
      abb311(56)=spbk7k3*abb311(56)*abb311(58)
      abb311(59)=abb311(51)*abb311(56)
      abb311(53)=-abb311(59)+abb311(53)
      abb311(53)=spbk7l5*abb311(53)
      abb311(20)=-abb311(20)*abb311(26)
      abb311(60)=abb311(23)*abb311(20)
      abb311(30)=2.0_ki*abb311(53)+abb311(30)+abb311(60)+abb311(48)
      abb311(30)=spak2l5*abb311(30)
      abb311(48)=-abb311(31)*abb311(44)
      abb311(48)=abb311(48)-abb311(20)
      abb311(53)=abb311(17)*abb311(48)
      abb311(60)=abb311(13)*spbk7l6
      abb311(61)=abb311(60)*abb311(16)*abb311(54)
      abb311(62)=-spak3k4*abb311(36)
      abb311(63)=-abb311(31)*abb311(62)
      abb311(64)=-abb311(17)*abb311(63)
      abb311(61)=abb311(64)+abb311(61)
      abb311(61)=spbk7k3*abb311(61)
      abb311(53)=abb311(61)+abb311(53)
      abb311(61)=2.0_ki*spak2l5
      abb311(53)=abb311(53)*abb311(61)
      abb311(64)=abb311(21)*abb311(43)
      abb311(65)=abb311(33)*abb311(45)
      abb311(64)=abb311(64)+abb311(65)
      abb311(65)=abb311(62)*abb311(32)
      abb311(66)=abb311(17)*abb311(65)
      abb311(67)=-abb311(17)*abb311(38)
      abb311(68)=abb311(67)*spak3k4
      abb311(66)=abb311(66)-abb311(68)
      abb311(68)=-spbk7k3*abb311(66)
      abb311(68)=abb311(68)-abb311(64)
      abb311(68)=es12*abb311(68)
      abb311(53)=abb311(53)+abb311(68)
      abb311(53)=spak1k7*abb311(53)
      abb311(68)=spbk7l5*spak2l5
      abb311(69)=abb311(68)*abb311(52)
      abb311(70)=abb311(16)*spak1k2
      abb311(71)=abb311(70)*abb311(7)
      abb311(72)=abb311(50)*abb311(71)
      abb311(73)=abb311(72)*spbk7k1
      abb311(69)=abb311(69)+abb311(73)
      abb311(73)=es712-es71
      abb311(74)=2.0_ki*abb311(73)
      abb311(69)=abb311(69)*abb311(74)
      abb311(74)=abb311(50)*abb311(17)
      abb311(75)=-spbl5k2*abb311(74)
      abb311(76)=-spak3k4*abb311(49)
      abb311(77)=-abb311(26)*abb311(14)*spak3k4
      abb311(76)=abb311(76)-abb311(77)
      abb311(78)=-abb311(76)*abb311(17)
      abb311(79)=-spbl5k3*abb311(78)
      abb311(75)=abb311(79)+abb311(75)
      abb311(75)=abb311(61)*abb311(75)
      abb311(79)=abb311(12)*abb311(3)
      abb311(80)=abb311(36)*abb311(79)
      abb311(81)=abb311(26)*abb311(12)
      abb311(80)=abb311(80)+abb311(81)
      abb311(81)=spbk3k2**2
      abb311(41)=abb311(41)*abb311(81)
      abb311(82)=abb311(11)*spbk7l6
      abb311(83)=spak2l5*abb311(80)*abb311(41)*abb311(82)
      abb311(84)=abb311(11)*abb311(9)
      abb311(85)=abb311(84)*abb311(12)
      abb311(86)=abb311(26)*abb311(85)
      abb311(87)=abb311(86)*abb311(81)*spak3k4
      abb311(79)=abb311(84)*abb311(79)
      abb311(88)=abb311(81)*abb311(79)
      abb311(89)=-abb311(88)*abb311(62)
      abb311(89)=abb311(89)+abb311(87)
      abb311(90)=spak1k2*spbk7l6
      abb311(22)=abb311(89)*abb311(22)*abb311(90)
      abb311(91)=-es12*abb311(22)
      abb311(83)=abb311(83)+abb311(91)
      abb311(83)=abb311(8)*abb311(83)
      abb311(91)=-abb311(14)*abb311(26)
      abb311(91)=abb311(91)+abb311(49)
      abb311(92)=-abb311(33)*abb311(91)
      abb311(93)=-abb311(16)*abb311(92)
      abb311(94)=-abb311(76)*abb311(16)
      abb311(95)=-spbk7k3*abb311(94)
      abb311(93)=abb311(95)+abb311(93)
      abb311(95)=spbl6l5*spak2l5
      abb311(93)=abb311(93)*abb311(95)
      abb311(96)=-abb311(76)*spbk7k3
      abb311(96)=abb311(96)+abb311(92)
      abb311(97)=-spbl6k1*abb311(70)*abb311(96)
      abb311(98)=2.0_ki*spak2l6
      abb311(78)=abb311(78)*abb311(98)
      abb311(66)=-spak1l6*es12*abb311(66)
      abb311(66)=abb311(78)+abb311(66)
      abb311(66)=spbl6k3*abb311(66)
      abb311(47)=-abb311(17)*abb311(47)
      abb311(78)=-abb311(17)*abb311(36)
      abb311(99)=abb311(78)*abb311(40)
      abb311(100)=-abb311(31)*abb311(99)
      abb311(60)=abb311(70)*abb311(60)
      abb311(101)=abb311(54)*abb311(60)
      abb311(100)=abb311(100)-abb311(101)
      abb311(101)=-spbk7k3*abb311(100)
      abb311(102)=abb311(17)*spak1k2
      abb311(103)=-abb311(102)*abb311(20)
      abb311(47)=abb311(101)+abb311(103)+abb311(47)
      abb311(47)=spal5k7*abb311(47)
      abb311(46)=-abb311(46)*abb311(78)
      abb311(101)=-spak2k4*abb311(46)
      abb311(19)=-abb311(19)*abb311(26)
      abb311(103)=abb311(102)*abb311(19)
      abb311(101)=abb311(103)+abb311(101)
      abb311(101)=spbl6k2*abb311(101)
      abb311(100)=spbl6k3*abb311(100)
      abb311(100)=abb311(101)+abb311(100)
      abb311(100)=spal5l6*abb311(100)
      abb311(101)=2.0_ki*spbl6k2
      abb311(74)=abb311(74)*abb311(101)*spak2l6
      abb311(72)=-es12*abb311(72)
      abb311(103)=-abb311(71)*abb311(56)
      abb311(72)=abb311(103)+abb311(72)
      abb311(72)=spbk7k1*abb311(72)
      abb311(103)=-abb311(40)*abb311(49)
      abb311(104)=-abb311(17)*abb311(103)
      abb311(105)=abb311(102)*abb311(77)
      abb311(104)=abb311(105)+abb311(104)
      abb311(105)=2.0_ki*spbk3k1
      abb311(104)=abb311(104)*abb311(105)
      abb311(25)=abb311(104)+abb311(100)+abb311(47)+abb311(66)+2.0_ki*abb311(72&
      &)+abb311(97)+abb311(53)+abb311(93)+abb311(83)+abb311(74)+abb311(75)+abb3&
      &11(25)+abb311(69)+abb311(30)
      abb311(25)=4.0_ki*abb311(25)
      abb311(30)=-spak1k2*abb311(77)
      abb311(30)=abb311(30)+abb311(103)
      abb311(30)=abb311(30)*spbk7k3
      abb311(47)=abb311(92)*spak1k2
      abb311(30)=abb311(30)-abb311(47)
      abb311(47)=abb311(30)*spbl6k1
      abb311(53)=mB**2
      abb311(66)=abb311(53)*abb311(7)
      abb311(69)=abb311(66)*spak1k2
      abb311(72)=-abb311(69)*abb311(62)
      abb311(74)=-abb311(32)*abb311(72)
      abb311(75)=-spak3k4*abb311(38)
      abb311(77)=-abb311(69)*abb311(75)
      abb311(74)=abb311(74)+abb311(77)
      abb311(74)=abb311(74)*spbk7k3
      abb311(77)=abb311(69)*abb311(33)
      abb311(83)=-abb311(77)*abb311(37)
      abb311(93)=abb311(21)*abb311(69)
      abb311(97)=-abb311(93)*abb311(26)
      abb311(83)=abb311(83)-abb311(97)
      abb311(74)=abb311(74)+abb311(83)
      abb311(74)=abb311(74)*es12
      abb311(97)=abb311(47)+abb311(74)
      abb311(100)=abb311(96)*spbl6l5
      abb311(103)=abb311(69)*abb311(31)
      abb311(104)=abb311(103)*abb311(44)
      abb311(106)=abb311(53)*abb311(13)
      abb311(107)=abb311(106)*abb311(7)
      abb311(108)=abb311(26)*abb311(107)*abb311(40)
      abb311(109)=-abb311(103)*abb311(62)
      abb311(108)=abb311(109)+abb311(108)
      abb311(109)=abb311(108)*spbk7k3
      abb311(110)=-abb311(69)*abb311(20)
      abb311(104)=-abb311(110)+abb311(109)+abb311(104)
      abb311(100)=-abb311(100)+abb311(104)
      abb311(100)=abb311(61)*abb311(100)
      abb311(99)=abb311(88)*abb311(99)
      abb311(109)=abb311(17)*abb311(86)
      abb311(110)=abb311(81)*abb311(40)
      abb311(111)=abb311(109)*abb311(110)
      abb311(99)=abb311(99)-abb311(111)
      abb311(97)=abb311(100)+abb311(99)+2.0_ki*abb311(97)
      abb311(97)=8.0_ki*abb311(97)
      abb311(100)=abb311(104)*spak2l5
      abb311(74)=abb311(100)+abb311(74)
      abb311(99)=abb311(74)-abb311(99)
      abb311(99)=8.0_ki*abb311(99)
      abb311(100)=-abb311(102)*abb311(39)
      abb311(104)=abb311(100)*spbl6k2
      abb311(111)=abb311(104)*spak4l6
      abb311(45)=abb311(45)+abb311(67)
      abb311(67)=spak1k4*es12
      abb311(112)=abb311(67)*abb311(45)
      abb311(113)=abb311(45)*spak2l6
      abb311(114)=abb311(101)*spak1k4
      abb311(115)=abb311(113)*abb311(114)
      abb311(60)=-abb311(60)*abb311(26)
      abb311(46)=abb311(46)-abb311(60)
      abb311(60)=abb311(46)*spak4l5
      abb311(116)=abb311(102)*spbk7k2
      abb311(117)=abb311(39)*abb311(116)
      abb311(118)=abb311(117)*spak4k7
      abb311(119)=2.0_ki*spak1k7
      abb311(64)=abb311(64)*abb311(119)
      abb311(60)=-abb311(64)-abb311(115)+abb311(111)-abb311(112)+abb311(60)+abb&
      &311(118)
      abb311(64)=3.0_ki*abb311(17)
      abb311(111)=abb311(64)*abb311(28)
      abb311(111)=abb311(111)+abb311(35)
      abb311(111)=abb311(36)*abb311(111)
      abb311(112)=abb311(64)*abb311(15)
      abb311(112)=abb311(112)+abb311(24)
      abb311(112)=abb311(26)*abb311(112)
      abb311(111)=abb311(60)+abb311(111)+abb311(112)
      abb311(111)=8.0_ki*abb311(111)
      abb311(112)=abb311(15)*spbk7l6
      abb311(93)=abb311(93)-abb311(112)
      abb311(93)=-abb311(93)*abb311(26)
      abb311(115)=abb311(28)*spbk7l6
      abb311(34)=abb311(34)*abb311(69)
      abb311(34)=abb311(115)-abb311(34)
      abb311(34)=-abb311(34)*abb311(36)
      abb311(34)=abb311(93)-abb311(34)
      abb311(93)=32.0_ki*abb311(34)
      abb311(83)=16.0_ki*abb311(83)
      abb311(112)=abb311(112)*abb311(53)
      abb311(18)=abb311(18)+abb311(24)+2.0_ki*abb311(112)
      abb311(18)=-abb311(18)*abb311(26)
      abb311(24)=-spbl6k1*abb311(69)*abb311(96)
      abb311(22)=abb311(24)+abb311(22)
      abb311(22)=abb311(8)*abb311(22)
      abb311(24)=abb311(33)*abb311(66)
      abb311(112)=abb311(91)*abb311(24)
      abb311(115)=-abb311(66)*abb311(76)
      abb311(118)=abb311(115)*spbk7k3
      abb311(112)=abb311(112)-abb311(118)
      abb311(112)=abb311(112)*abb311(8)
      abb311(118)=abb311(95)*abb311(112)
      abb311(120)=abb311(53)*spbk7l6
      abb311(121)=2.0_ki*abb311(120)
      abb311(122)=abb311(121)+abb311(17)
      abb311(123)=abb311(122)*abb311(28)
      abb311(35)=abb311(123)+abb311(35)
      abb311(35)=-abb311(35)*abb311(36)
      abb311(123)=abb311(101)*abb311(10)
      abb311(124)=abb311(53)*abb311(9)
      abb311(125)=abb311(124)*spbk7l6
      abb311(126)=spak2l6*abb311(123)*abb311(125)*abb311(50)
      abb311(18)=abb311(118)+abb311(126)+abb311(22)-abb311(60)+abb311(35)+abb31&
      &1(18)
      abb311(18)=8.0_ki*abb311(18)
      abb311(22)=abb311(66)*spbk7l6
      abb311(35)=abb311(8)*abb311(50)*abb311(22)
      abb311(60)=abb311(125)*abb311(31)
      abb311(118)=-abb311(60)*abb311(36)
      abb311(126)=-abb311(120)*abb311(38)
      abb311(126)=abb311(126)-abb311(118)
      abb311(127)=2.0_ki*spak1k4
      abb311(128)=abb311(126)*abb311(127)
      abb311(35)=abb311(35)-abb311(128)
      abb311(35)=16.0_ki*abb311(35)
      abb311(121)=abb311(121)*abb311(88)
      abb311(128)=abb311(88)*abb311(17)
      abb311(121)=abb311(121)+abb311(128)
      abb311(121)=-abb311(121)*abb311(36)
      abb311(122)=-abb311(122)*abb311(81)*abb311(86)
      abb311(121)=abb311(122)+abb311(121)
      abb311(40)=abb311(40)*abb311(121)
      abb311(121)=abb311(96)*abb311(95)
      abb311(122)=-spbk7l6*abb311(50)
      abb311(129)=abb311(122)*spak2l6
      abb311(130)=-abb311(101)*abb311(129)
      abb311(131)=-spbk7l6*abb311(76)
      abb311(132)=spbl6k3*abb311(131)*abb311(98)
      abb311(40)=abb311(132)-abb311(47)+abb311(121)+abb311(130)+abb311(40)-abb3&
      &11(74)
      abb311(40)=4.0_ki*abb311(40)
      abb311(34)=8.0_ki*abb311(34)
      abb311(47)=abb311(96)*abb311(68)
      abb311(30)=-spbk7k1*abb311(30)
      abb311(30)=abb311(47)+abb311(30)
      abb311(30)=8.0_ki*abb311(30)
      abb311(47)=-spbl5k2*abb311(129)
      abb311(74)=abb311(131)*spak2l6
      abb311(121)=spbl5k3*abb311(74)
      abb311(47)=abb311(47)+abb311(121)
      abb311(47)=8.0_ki*abb311(47)
      abb311(106)=abb311(90)*abb311(106)*abb311(54)
      abb311(121)=abb311(90)*abb311(53)
      abb311(130)=-abb311(121)*abb311(63)
      abb311(132)=spbl6l5*abb311(74)
      abb311(106)=abb311(132)+abb311(130)+abb311(106)
      abb311(106)=8.0_ki*abb311(106)
      abb311(130)=abb311(36)*spak2k4
      abb311(132)=abb311(31)*abb311(130)
      abb311(132)=abb311(132)-abb311(19)
      abb311(132)=abb311(121)*abb311(132)
      abb311(133)=-spbl6l5*abb311(129)
      abb311(132)=abb311(133)+abb311(132)
      abb311(132)=8.0_ki*abb311(132)
      abb311(49)=-spbk7l6*abb311(49)
      abb311(133)=abb311(14)*spbk7l6
      abb311(134)=-abb311(133)*abb311(26)
      abb311(49)=abb311(49)-abb311(134)
      abb311(134)=abb311(49)*spak2l6
      abb311(135)=16.0_ki*abb311(134)
      abb311(136)=abb311(79)*spbk7k2
      abb311(137)=abb311(23)*abb311(136)
      abb311(138)=abb311(11)*abb311(3)
      abb311(12)=abb311(12)*spak1l5
      abb311(139)=abb311(138)*abb311(12)
      abb311(140)=abb311(64)*abb311(139)
      abb311(137)=abb311(137)+abb311(140)
      abb311(137)=-abb311(137)*abb311(36)
      abb311(140)=abb311(85)*spbk7k2
      abb311(141)=abb311(140)*abb311(23)
      abb311(142)=abb311(82)*abb311(12)
      abb311(143)=3.0_ki*abb311(16)
      abb311(144)=abb311(143)*abb311(142)
      abb311(141)=abb311(141)+abb311(144)
      abb311(141)=-abb311(141)*abb311(26)
      abb311(144)=-abb311(136)*abb311(78)
      abb311(145)=spbk7k2*abb311(109)
      abb311(144)=abb311(144)+abb311(145)
      abb311(144)=abb311(144)*abb311(119)
      abb311(137)=abb311(144)+abb311(141)+abb311(137)
      abb311(137)=es34*abb311(137)
      abb311(141)=-abb311(79)*abb311(36)
      abb311(141)=-abb311(86)+abb311(141)
      abb311(116)=spak4k7*abb311(116)
      abb311(102)=abb311(102)*spak4l6*spbl6k2
      abb311(102)=abb311(116)-abb311(102)
      abb311(102)=abb311(141)*abb311(102)
      abb311(80)=spak4l5*abb311(80)*abb311(70)*abb311(82)
      abb311(80)=abb311(80)+abb311(102)
      abb311(102)=-abb311(79)*abb311(78)
      abb311(102)=abb311(102)+abb311(109)
      abb311(116)=spak2l6*abb311(114)
      abb311(116)=abb311(67)+abb311(116)
      abb311(116)=abb311(102)*abb311(116)
      abb311(116)=abb311(116)-abb311(80)
      abb311(116)=spbk4k2*abb311(116)
      abb311(45)=es12*abb311(45)
      abb311(113)=abb311(101)*abb311(113)
      abb311(45)=abb311(45)+abb311(113)
      abb311(45)=spak1k3*abb311(45)
      abb311(57)=abb311(57)*abb311(6)
      abb311(113)=abb311(64)*abb311(57)
      abb311(144)=abb311(84)*spbk7k2
      abb311(145)=abb311(144)*abb311(6)
      abb311(146)=abb311(145)*abb311(23)
      abb311(113)=abb311(113)+abb311(146)
      abb311(113)=abb311(113)*abb311(26)
      abb311(138)=spbk7k2*abb311(138)*abb311(6)
      abb311(146)=abb311(9)*abb311(138)
      abb311(147)=abb311(146)*abb311(23)
      abb311(148)=abb311(57)*abb311(3)
      abb311(149)=abb311(148)*abb311(64)
      abb311(147)=abb311(147)+abb311(149)
      abb311(147)=abb311(147)*abb311(36)
      abb311(43)=-abb311(43)*abb311(145)
      abb311(78)=abb311(146)*abb311(78)
      abb311(43)=abb311(78)+abb311(43)
      abb311(43)=abb311(43)*abb311(119)
      abb311(78)=-spak3l5*abb311(46)
      abb311(117)=-spak3k7*abb311(117)
      abb311(149)=-spak3l6*abb311(104)
      abb311(43)=abb311(149)+abb311(117)+abb311(78)+abb311(45)+abb311(137)+abb3&
      &11(43)+abb311(116)+abb311(147)+abb311(113)
      abb311(43)=4.0_ki*abb311(43)
      abb311(45)=abb311(136)*abb311(69)
      abb311(78)=abb311(139)*spbk7l6
      abb311(113)=abb311(45)-abb311(78)
      abb311(113)=abb311(36)*abb311(113)
      abb311(116)=abb311(140)*abb311(69)
      abb311(116)=abb311(116)-abb311(142)
      abb311(116)=abb311(26)*abb311(116)
      abb311(113)=abb311(113)+abb311(116)
      abb311(113)=abb311(113)*es34
      abb311(116)=abb311(146)*abb311(69)
      abb311(117)=abb311(148)*spbk7l6
      abb311(117)=abb311(117)-abb311(116)
      abb311(117)=abb311(36)*abb311(117)
      abb311(137)=abb311(145)*abb311(69)
      abb311(140)=abb311(57)*spbk7l6
      abb311(140)=abb311(140)-abb311(137)
      abb311(140)=abb311(26)*abb311(140)
      abb311(113)=abb311(113)+abb311(117)+abb311(140)
      abb311(117)=-16.0_ki*abb311(113)
      abb311(45)=-abb311(45)*abb311(36)
      abb311(140)=-abb311(86)*spbk7k2
      abb311(142)=abb311(69)*abb311(140)
      abb311(45)=abb311(142)+abb311(45)
      abb311(45)=es34*abb311(45)
      abb311(116)=abb311(116)*abb311(36)
      abb311(137)=abb311(137)*abb311(26)
      abb311(45)=abb311(45)+abb311(137)+abb311(116)
      abb311(45)=8.0_ki*abb311(45)
      abb311(116)=-abb311(78)*abb311(36)
      abb311(137)=-abb311(12)*abb311(26)
      abb311(82)=-abb311(82)*abb311(137)
      abb311(82)=abb311(116)-abb311(82)
      abb311(142)=-es34*abb311(66)*abb311(82)
      abb311(55)=abb311(55)-abb311(26)
      abb311(147)=abb311(55)*abb311(57)
      abb311(149)=abb311(22)*abb311(147)
      abb311(142)=abb311(142)+abb311(149)
      abb311(142)=abb311(8)*abb311(142)
      abb311(149)=abb311(141)*abb311(120)
      abb311(127)=spbk4k2*abb311(149)*abb311(127)
      abb311(126)=spak1k3*abb311(126)
      abb311(126)=-2.0_ki*abb311(126)+abb311(127)+abb311(142)
      abb311(126)=8.0_ki*abb311(126)
      abb311(113)=4.0_ki*abb311(113)
      abb311(127)=-abb311(82)*spbk4k2
      abb311(142)=8.0_ki*spak2l6*abb311(127)
      abb311(23)=abb311(23)*abb311(33)
      abb311(150)=abb311(23)*abb311(85)
      abb311(151)=abb311(11)*spak2k4
      abb311(152)=abb311(151)*abb311(12)
      abb311(153)=abb311(152)*abb311(64)
      abb311(150)=abb311(153)+abb311(150)
      abb311(150)=abb311(150)*abb311(26)
      abb311(23)=abb311(23)*abb311(79)
      abb311(153)=abb311(139)*spak2k4
      abb311(64)=abb311(153)*abb311(64)
      abb311(23)=abb311(64)+abb311(23)
      abb311(23)=abb311(23)*abb311(36)
      abb311(64)=-abb311(102)*abb311(67)
      abb311(67)=-abb311(79)*abb311(44)
      abb311(154)=-abb311(17)*abb311(67)
      abb311(109)=-abb311(33)*abb311(109)
      abb311(109)=abb311(154)+abb311(109)
      abb311(109)=abb311(109)*abb311(119)
      abb311(23)=abb311(109)+abb311(80)+abb311(64)+abb311(23)+abb311(150)
      abb311(23)=spbk4k3*abb311(23)
      abb311(64)=-spbk4k3*abb311(102)*abb311(114)
      abb311(64)=-abb311(104)+abb311(64)
      abb311(64)=spak2l6*abb311(64)
      abb311(80)=-2.0_ki*es12+abb311(73)
      abb311(80)=abb311(100)*abb311(80)
      abb311(46)=spak2l5*abb311(46)
      abb311(23)=abb311(64)+abb311(46)+abb311(23)+abb311(80)
      abb311(23)=4.0_ki*abb311(23)
      abb311(46)=abb311(77)*abb311(79)
      abb311(64)=abb311(78)*spak2k4
      abb311(46)=abb311(64)-abb311(46)
      abb311(46)=abb311(36)*abb311(46)
      abb311(64)=abb311(77)*abb311(85)
      abb311(79)=abb311(152)*spbk7l6
      abb311(64)=abb311(64)-abb311(79)
      abb311(64)=abb311(26)*abb311(64)
      abb311(46)=abb311(46)-abb311(64)
      abb311(64)=-16.0_ki*spbk4k3*abb311(46)
      abb311(79)=abb311(69)*abb311(67)
      abb311(77)=abb311(77)*abb311(86)
      abb311(77)=abb311(77)+abb311(79)
      abb311(79)=8.0_ki*spbk4k3
      abb311(77)=abb311(77)*abb311(79)
      abb311(80)=abb311(36)*abb311(90)*abb311(124)*abb311(31)
      abb311(38)=-abb311(121)*abb311(38)
      abb311(38)=abb311(38)+abb311(80)
      abb311(80)=16.0_ki*abb311(38)
      abb311(85)=spbk4k3*spak1k4
      abb311(90)=-abb311(149)*abb311(85)
      abb311(90)=abb311(90)+abb311(38)
      abb311(22)=abb311(22)*abb311(151)*abb311(137)
      abb311(100)=abb311(66)*spak2k4
      abb311(102)=abb311(100)*abb311(116)
      abb311(22)=abb311(102)+abb311(22)
      abb311(22)=abb311(8)*spbk4k3*abb311(22)
      abb311(22)=2.0_ki*abb311(90)+abb311(22)
      abb311(22)=8.0_ki*abb311(22)
      abb311(90)=4.0_ki*spbk4k3
      abb311(46)=abb311(46)*abb311(90)
      abb311(102)=spak2l6*abb311(82)*abb311(79)
      abb311(104)=abb311(141)*abb311(121)
      abb311(109)=8.0_ki*spbk4k2
      abb311(116)=-abb311(104)*abb311(109)
      abb311(104)=abb311(104)*abb311(79)
      abb311(121)=8.0_ki*abb311(134)
      abb311(38)=8.0_ki*abb311(38)
      abb311(149)=abb311(50)*spbl6k2
      abb311(150)=-abb311(76)*spbl6k3
      abb311(150)=abb311(150)+abb311(149)
      abb311(151)=abb311(150)*spal5l6
      abb311(154)=abb311(96)*spal5k7
      abb311(151)=abb311(151)-abb311(154)
      abb311(154)=spbl6l5*abb311(151)
      abb311(155)=abb311(53)*abb311(12)
      abb311(156)=abb311(11)*abb311(7)
      abb311(157)=abb311(155)*abb311(156)
      abb311(110)=abb311(26)*abb311(157)*abb311(110)
      abb311(158)=abb311(139)*abb311(81)
      abb311(159)=abb311(72)*abb311(158)
      abb311(110)=abb311(110)+abb311(159)
      abb311(110)=abb311(110)*abb311(8)
      abb311(159)=abb311(149)*spak1l6
      abb311(110)=abb311(110)+abb311(159)
      abb311(159)=spak1k7*abb311(96)
      abb311(159)=abb311(159)-abb311(110)
      abb311(159)=spbl6k1*abb311(159)
      abb311(160)=-abb311(66)*abb311(62)
      abb311(31)=abb311(160)*abb311(31)
      abb311(107)=abb311(54)*abb311(107)
      abb311(31)=abb311(107)-abb311(31)
      abb311(31)=abb311(31)*spbk7k3
      abb311(107)=abb311(48)*abb311(66)
      abb311(31)=abb311(31)+abb311(107)
      abb311(31)=abb311(31)*spak2l5
      abb311(32)=-abb311(32)*abb311(160)
      abb311(107)=-abb311(66)*abb311(75)
      abb311(32)=abb311(107)+abb311(32)
      abb311(107)=abb311(32)*spbk7k3
      abb311(161)=-abb311(24)*abb311(37)
      abb311(162)=abb311(66)*abb311(9)
      abb311(20)=-abb311(162)*abb311(20)
      abb311(20)=abb311(20)+abb311(161)
      abb311(107)=abb311(107)+abb311(20)
      abb311(107)=abb311(107)*es12
      abb311(31)=abb311(31)-abb311(107)
      abb311(107)=abb311(62)*abb311(128)
      abb311(128)=abb311(87)*abb311(17)
      abb311(107)=abb311(107)-abb311(128)
      abb311(128)=-abb311(107)+abb311(31)
      abb311(128)=abb311(128)*abb311(119)
      abb311(161)=-abb311(124)*abb311(76)
      abb311(163)=abb311(10)*spbl6k2
      abb311(164)=abb311(163)*spak2l6
      abb311(165)=abb311(161)*abb311(164)
      abb311(166)=-abb311(76)*spak1l6
      abb311(167)=-spbl6k1*abb311(166)
      abb311(94)=abb311(167)+3.0_ki*abb311(94)+abb311(165)
      abb311(94)=spbl6k3*abb311(94)
      abb311(165)=abb311(124)*abb311(50)
      abb311(167)=abb311(165)*abb311(163)
      abb311(168)=-abb311(167)+2.0_ki*abb311(52)
      abb311(73)=-abb311(168)*abb311(73)
      abb311(168)=abb311(155)*abb311(81)
      abb311(169)=abb311(54)*abb311(168)*abb311(156)
      abb311(170)=-abb311(158)*abb311(160)
      abb311(169)=abb311(170)+abb311(169)
      abb311(169)=abb311(169)*abb311(8)
      abb311(170)=abb311(95)*abb311(169)
      abb311(42)=-abb311(88)*abb311(42)
      abb311(41)=-abb311(41)*abb311(86)
      abb311(171)=-spbl5k2*abb311(61)
      abb311(171)=abb311(171)+4.0_ki*es12
      abb311(52)=abb311(52)*abb311(171)
      abb311(149)=abb311(16)*abb311(149)
      abb311(171)=-es12*spbl6k2
      abb311(172)=spak2l6*spbl6k2**2
      abb311(171)=abb311(172)+abb311(171)
      abb311(165)=abb311(165)*abb311(171)
      abb311(56)=-spbl6k2*abb311(124)*abb311(56)
      abb311(56)=abb311(56)+abb311(165)
      abb311(56)=abb311(10)*abb311(56)
      abb311(165)=-abb311(76)*abb311(51)
      abb311(61)=-spbl5k3*abb311(165)*abb311(61)
      abb311(171)=-abb311(76)*abb311(71)
      abb311(172)=abb311(171)*abb311(105)
      abb311(41)=abb311(172)+abb311(61)+abb311(94)+abb311(128)+abb311(170)+abb3&
      &11(56)+3.0_ki*abb311(149)+2.0_ki*abb311(59)+abb311(52)+abb311(41)+abb311&
      &(42)+abb311(159)+abb311(73)+abb311(154)
      abb311(41)=4.0_ki*abb311(41)
      abb311(42)=-abb311(88)*abb311(72)
      abb311(52)=-abb311(69)*abb311(87)
      abb311(42)=abb311(42)+abb311(52)
      abb311(52)=2.0_ki*abb311(42)+abb311(150)
      abb311(52)=8.0_ki*abb311(52)
      abb311(56)=abb311(42)+abb311(150)
      abb311(56)=8.0_ki*abb311(56)
      abb311(59)=abb311(49)*spak4k7
      abb311(61)=abb311(20)*abb311(119)
      abb311(72)=abb311(91)*spak4l5
      abb311(73)=abb311(72)*spbl6l5
      abb311(94)=abb311(91)*spak1k4
      abb311(128)=abb311(94)*spbl6k1
      abb311(149)=abb311(39)*abb311(16)
      abb311(150)=abb311(149)*abb311(114)
      abb311(59)=-abb311(150)-abb311(128)-abb311(73)+abb311(59)+abb311(61)
      abb311(61)=3.0_ki*abb311(51)
      abb311(73)=abb311(61)*abb311(28)
      abb311(28)=abb311(28)*abb311(66)
      abb311(73)=abb311(73)+abb311(28)
      abb311(73)=abb311(36)*abb311(73)
      abb311(128)=abb311(61)*abb311(15)
      abb311(150)=abb311(15)*abb311(66)
      abb311(128)=abb311(128)+abb311(150)
      abb311(128)=abb311(26)*abb311(128)
      abb311(73)=-abb311(128)-abb311(73)+abb311(59)-abb311(167)
      abb311(73)=8.0_ki*abb311(73)
      abb311(29)=abb311(29)*abb311(51)
      abb311(28)=abb311(29)+abb311(28)
      abb311(28)=-abb311(28)*abb311(36)
      abb311(15)=2.0_ki*abb311(15)
      abb311(15)=abb311(15)*abb311(51)
      abb311(15)=abb311(15)+abb311(150)
      abb311(15)=-abb311(15)*abb311(26)
      abb311(29)=spbl6k3*abb311(8)*abb311(115)
      abb311(15)=2.0_ki*abb311(29)+abb311(167)+abb311(59)+abb311(15)+abb311(28)
      abb311(15)=8.0_ki*abb311(15)
      abb311(28)=abb311(39)*abb311(66)
      abb311(29)=abb311(28)*spak1k4
      abb311(29)=32.0_ki*abb311(29)
      abb311(42)=4.0_ki*abb311(42)
      abb311(59)=8.0_ki*abb311(96)
      abb311(115)=spbl5k2*abb311(50)
      abb311(128)=-spbl5k3*abb311(76)
      abb311(115)=abb311(115)+abb311(128)
      abb311(115)=8.0_ki*abb311(115)
      abb311(128)=-spbl6l5*abb311(76)
      abb311(108)=abb311(128)-abb311(108)
      abb311(108)=8.0_ki*abb311(108)
      abb311(128)=spbl6l5*abb311(50)
      abb311(150)=-abb311(69)*abb311(19)
      abb311(103)=abb311(103)*abb311(130)
      abb311(103)=abb311(128)+abb311(103)+abb311(150)
      abb311(103)=8.0_ki*abb311(103)
      abb311(128)=16.0_ki*abb311(91)
      abb311(130)=-abb311(139)*abb311(36)
      abb311(150)=abb311(130)*abb311(124)
      abb311(154)=abb311(26)*abb311(155)
      abb311(155)=-abb311(84)*abb311(154)
      abb311(150)=abb311(150)+abb311(155)
      abb311(150)=abb311(150)*abb311(163)
      abb311(143)=abb311(12)*abb311(143)*abb311(156)
      abb311(143)=abb311(143)+abb311(157)
      abb311(143)=-abb311(143)*abb311(26)
      abb311(61)=abb311(61)+abb311(66)
      abb311(156)=abb311(36)*abb311(61)
      abb311(157)=-abb311(139)*abb311(156)
      abb311(136)=abb311(136)*abb311(36)
      abb311(136)=-abb311(140)+abb311(136)
      abb311(140)=abb311(136)*abb311(66)
      abb311(159)=abb311(140)*abb311(119)
      abb311(143)=abb311(159)+abb311(150)+abb311(157)+abb311(143)
      abb311(143)=es34*abb311(143)
      abb311(11)=-abb311(11)*abb311(137)
      abb311(11)=abb311(130)-abb311(11)
      abb311(137)=abb311(11)*spbk4k2
      abb311(157)=-spak4l5*abb311(137)
      abb311(159)=-spak3l5*abb311(91)
      abb311(157)=abb311(159)+abb311(157)
      abb311(157)=spbl6l5*abb311(157)
      abb311(114)=abb311(114)*abb311(141)*abb311(16)
      abb311(159)=-spbl6k1*spak1k4*abb311(11)
      abb311(159)=-abb311(114)+abb311(159)
      abb311(159)=spbk4k2*abb311(159)
      abb311(149)=-abb311(149)*abb311(101)
      abb311(167)=-spbl6k1*abb311(91)
      abb311(149)=abb311(149)+abb311(167)
      abb311(149)=spak1k3*abb311(149)
      abb311(163)=-abb311(163)*abb311(124)*abb311(55)
      abb311(61)=abb311(26)*abb311(61)
      abb311(163)=abb311(163)+abb311(61)
      abb311(57)=abb311(57)*abb311(163)
      abb311(138)=abb311(36)*abb311(162)*abb311(138)
      abb311(145)=abb311(26)*abb311(145)
      abb311(163)=abb311(66)*abb311(145)
      abb311(138)=abb311(138)+abb311(163)
      abb311(163)=-abb311(138)*abb311(119)
      abb311(167)=spak4k7*abb311(127)
      abb311(170)=spak3k7*abb311(49)
      abb311(148)=abb311(148)*abb311(156)
      abb311(57)=abb311(170)+abb311(149)+abb311(167)+abb311(143)+abb311(159)+ab&
      &b311(163)+abb311(157)+abb311(148)+abb311(57)
      abb311(57)=4.0_ki*abb311(57)
      abb311(143)=abb311(141)*abb311(66)
      abb311(148)=spbk4k2*spak1k4*abb311(143)
      abb311(28)=spak1k3*abb311(28)
      abb311(28)=abb311(148)+abb311(28)
      abb311(28)=16.0_ki*abb311(28)
      abb311(148)=-8.0_ki*abb311(137)
      abb311(24)=-abb311(86)*abb311(24)
      abb311(149)=abb311(67)*abb311(66)
      abb311(24)=abb311(24)-abb311(149)
      abb311(119)=abb311(24)*abb311(119)
      abb311(149)=abb311(153)*abb311(156)
      abb311(61)=abb311(152)*abb311(61)
      abb311(150)=-spak2k4*abb311(150)
      abb311(152)=spak4k7*abb311(82)
      abb311(61)=abb311(152)+abb311(119)+abb311(150)+abb311(114)+abb311(61)+abb&
      &311(149)
      abb311(61)=spbk4k3*abb311(61)
      abb311(11)=abb311(11)*spbk4k3
      abb311(114)=abb311(11)*spak1k4
      abb311(119)=abb311(91)*spak1k2
      abb311(114)=abb311(114)+abb311(119)
      abb311(119)=spbl6k1*abb311(114)
      abb311(70)=abb311(101)*abb311(70)*abb311(39)
      abb311(95)=abb311(91)*abb311(95)
      abb311(101)=abb311(11)*spak4l5
      abb311(149)=spbl6l5*abb311(101)
      abb311(55)=abb311(58)*spbk7l6*abb311(55)
      abb311(55)=abb311(149)+abb311(119)+abb311(95)+abb311(70)+abb311(55)+abb31&
      &1(61)
      abb311(55)=4.0_ki*abb311(55)
      abb311(39)=abb311(39)*abb311(69)
      abb311(58)=16.0_ki*abb311(39)
      abb311(61)=-abb311(143)*abb311(85)
      abb311(61)=abb311(61)-abb311(39)
      abb311(61)=16.0_ki*abb311(61)
      abb311(11)=8.0_ki*abb311(11)
      abb311(69)=abb311(141)*abb311(69)
      abb311(70)=-abb311(69)*abb311(109)
      abb311(69)=abb311(69)*abb311(79)
      abb311(79)=8.0_ki*abb311(91)
      abb311(39)=-8.0_ki*abb311(39)
      abb311(85)=abb311(160)*abb311(88)
      abb311(87)=abb311(87)*abb311(66)
      abb311(85)=abb311(85)+abb311(87)
      abb311(87)=8.0_ki*spak1k7*abb311(85)
      abb311(88)=-spbk7l5*abb311(151)
      abb311(95)=abb311(161)*spbk7k3
      abb311(109)=-abb311(124)*abb311(92)
      abb311(95)=abb311(95)-abb311(109)
      abb311(119)=es12*abb311(95)
      abb311(141)=abb311(62)*abb311(124)
      abb311(78)=-abb311(78)*abb311(141)
      abb311(84)=abb311(54)*abb311(84)
      abb311(12)=-abb311(120)*abb311(12)*abb311(84)
      abb311(12)=abb311(12)+abb311(78)
      abb311(12)=abb311(81)*abb311(12)
      abb311(78)=spbl6k2*abb311(109)
      abb311(12)=2.0_ki*abb311(12)+abb311(78)
      abb311(12)=spak2l6*abb311(12)
      abb311(12)=abb311(119)+abb311(12)
      abb311(12)=abb311(10)*abb311(12)
      abb311(31)=spak1l6*abb311(31)
      abb311(78)=abb311(95)*abb311(10)
      abb311(81)=abb311(78)+abb311(96)
      abb311(81)=es71*abb311(81)
      abb311(95)=spbl5k2*spak2l5
      abb311(95)=abb311(95)-es12
      abb311(95)=abb311(112)*abb311(95)
      abb311(119)=-abb311(68)*abb311(169)
      abb311(110)=spbk7k1*abb311(110)
      abb311(143)=abb311(124)*spbk7k2
      abb311(149)=abb311(143)*abb311(10)
      abb311(150)=spak2l6*abb311(76)*abb311(149)
      abb311(151)=spbk7k1*abb311(166)
      abb311(150)=abb311(150)+abb311(151)
      abb311(150)=spbl6k3*abb311(150)
      abb311(78)=-es712*abb311(78)
      abb311(12)=abb311(78)+abb311(81)+abb311(150)+abb311(110)+abb311(31)+abb31&
      &1(119)+abb311(12)+abb311(95)+abb311(88)
      abb311(12)=4.0_ki*abb311(12)
      abb311(31)=abb311(49)*spak4l6
      abb311(20)=abb311(20)*spak1l6
      abb311(78)=abb311(109)*abb311(10)
      abb311(72)=abb311(72)*spbk7l5
      abb311(81)=abb311(94)*spbk7k1
      abb311(20)=-abb311(78)-abb311(31)+abb311(20)+abb311(72)+abb311(81)
      abb311(31)=8.0_ki*abb311(20)
      abb311(20)=abb311(112)+abb311(20)
      abb311(20)=8.0_ki*abb311(20)
      abb311(72)=4.0_ki*abb311(96)
      abb311(78)=abb311(144)*abb311(154)
      abb311(81)=-abb311(143)*abb311(130)
      abb311(78)=abb311(81)+abb311(78)
      abb311(78)=abb311(10)*abb311(78)
      abb311(81)=spak1l6*abb311(140)
      abb311(78)=abb311(78)+abb311(81)
      abb311(78)=es34*abb311(78)
      abb311(81)=spak1k3*spbk7k1
      abb311(88)=spak3l5*spbk7l5
      abb311(81)=abb311(88)+abb311(81)
      abb311(81)=abb311(91)*abb311(81)
      abb311(88)=spak4l5*spbk7l5
      abb311(94)=spbk7k1*spak1k4
      abb311(88)=abb311(88)+abb311(94)
      abb311(88)=abb311(137)*abb311(88)
      abb311(94)=-spak1l6*abb311(138)
      abb311(95)=-spak4l6*abb311(127)
      abb311(49)=-spak3l6*abb311(49)
      abb311(96)=abb311(147)*abb311(149)
      abb311(49)=abb311(49)+abb311(95)+abb311(78)+abb311(96)+abb311(94)+abb311(&
      &88)+abb311(81)
      abb311(49)=4.0_ki*abb311(49)
      abb311(24)=spak1l6*abb311(24)
      abb311(44)=abb311(139)*abb311(124)*abb311(44)
      abb311(78)=abb311(33)*abb311(155)
      abb311(44)=abb311(44)+abb311(78)
      abb311(44)=abb311(10)*abb311(44)
      abb311(78)=-spak4l6*abb311(82)
      abb311(24)=abb311(78)+abb311(24)+abb311(44)
      abb311(24)=spbk4k3*abb311(24)
      abb311(44)=-spbk7k1*abb311(114)
      abb311(68)=-abb311(91)*abb311(68)
      abb311(78)=-spbk7l5*abb311(101)
      abb311(24)=abb311(78)+abb311(44)+abb311(68)-abb311(134)+abb311(24)
      abb311(24)=4.0_ki*abb311(24)
      abb311(44)=-abb311(168)*abb311(84)
      abb311(68)=-abb311(158)*abb311(141)
      abb311(44)=abb311(68)+abb311(44)
      abb311(44)=abb311(10)*abb311(44)
      abb311(68)=spak1l6*abb311(85)
      abb311(44)=abb311(68)+2.0_ki*abb311(44)+abb311(169)
      abb311(44)=4.0_ki*abb311(44)
      abb311(68)=abb311(51)*abb311(92)
      abb311(78)=spbk7k3*abb311(165)
      abb311(68)=abb311(78)+abb311(68)
      abb311(68)=4.0_ki*spak2l5*abb311(68)
      abb311(78)=abb311(17)*abb311(14)
      abb311(53)=abb311(133)*abb311(53)
      abb311(53)=abb311(78)-abb311(53)
      abb311(53)=abb311(53)*abb311(54)
      abb311(17)=abb311(17)-abb311(120)
      abb311(17)=abb311(62)*abb311(27)*abb311(17)
      abb311(78)=-abb311(164)*abb311(125)*abb311(76)
      abb311(17)=abb311(78)+abb311(17)+abb311(53)
      abb311(17)=8.0_ki*abb311(17)
      abb311(51)=abb311(51)-2.0_ki*abb311(66)
      abb311(14)=abb311(54)*abb311(14)*abb311(51)
      abb311(27)=abb311(62)*abb311(51)*abb311(27)
      abb311(51)=abb311(161)*abb311(123)
      abb311(14)=abb311(51)+abb311(27)+abb311(14)
      abb311(14)=4.0_ki*abb311(14)
      abb311(27)=abb311(71)*abb311(92)
      abb311(51)=spbk7k3*abb311(171)
      abb311(27)=abb311(51)+abb311(27)
      abb311(27)=4.0_ki*abb311(27)
      abb311(51)=spbk3k1*abb311(131)
      abb311(53)=-spbk2k1*abb311(122)
      abb311(51)=abb311(53)+abb311(51)-abb311(107)
      abb311(51)=abb311(98)*abb311(51)
      abb311(13)=-abb311(13)*abb311(54)
      abb311(13)=abb311(13)+abb311(63)
      abb311(13)=spbk7k3*abb311(13)
      abb311(13)=abb311(13)-abb311(48)
      abb311(13)=spak2l5*abb311(16)*abb311(13)
      abb311(21)=abb311(26)*abb311(21)*abb311(16)
      abb311(26)=abb311(33)*abb311(16)
      abb311(33)=-abb311(26)*abb311(37)
      abb311(21)=abb311(33)+abb311(21)
      abb311(33)=abb311(65)-abb311(75)
      abb311(33)=spbk7k3*abb311(16)*abb311(33)
      abb311(33)=abb311(33)+abb311(21)
      abb311(33)=es12*abb311(33)
      abb311(13)=abb311(13)+abb311(33)+abb311(51)
      abb311(13)=4.0_ki*abb311(13)
      abb311(21)=8.0_ki*abb311(21)
      abb311(33)=-es34*abb311(136)
      abb311(36)=abb311(146)*abb311(36)
      abb311(33)=abb311(33)+abb311(36)+abb311(145)
      abb311(33)=4.0_ki*abb311(16)*abb311(33)
      abb311(36)=abb311(16)*abb311(67)
      abb311(26)=abb311(26)*abb311(86)
      abb311(26)=abb311(26)+abb311(36)
      abb311(26)=abb311(26)*abb311(90)
      abb311(16)=abb311(16)*abb311(89)
      abb311(36)=-abb311(76)*abb311(105)
      abb311(48)=spbk2k1*abb311(50)
      abb311(16)=2.0_ki*abb311(48)+abb311(36)+abb311(16)
      abb311(16)=4.0_ki*abb311(16)
      abb311(36)=-abb311(120)*abb311(75)
      abb311(48)=abb311(60)*abb311(62)
      abb311(36)=abb311(48)+abb311(36)
      abb311(36)=es12*abb311(36)
      abb311(48)=-spbl6k1*abb311(74)
      abb311(36)=abb311(36)+abb311(48)
      abb311(36)=8.0_ki*abb311(36)
      abb311(48)=-abb311(76)*spbl6k1
      abb311(32)=es12*abb311(32)
      abb311(32)=abb311(32)-abb311(48)
      abb311(32)=8.0_ki*abb311(32)
      abb311(48)=-spak2k4*abb311(118)
      abb311(51)=-abb311(125)*abb311(19)
      abb311(48)=abb311(51)+abb311(48)
      abb311(48)=es12*abb311(48)
      abb311(51)=spbl6k1*abb311(129)
      abb311(48)=abb311(48)+abb311(51)
      abb311(48)=8.0_ki*abb311(48)
      abb311(19)=-abb311(162)*abb311(19)
      abb311(37)=-abb311(100)*abb311(37)
      abb311(19)=abb311(37)+abb311(19)
      abb311(19)=es12*abb311(19)
      abb311(37)=-spbl6k1*abb311(50)
      abb311(19)=abb311(19)+abb311(37)
      abb311(19)=8.0_ki*abb311(19)
      R2d311=0.0_ki
      rat2 = rat2 + R2d311
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='311' value='", &
          & R2d311, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd311h2
