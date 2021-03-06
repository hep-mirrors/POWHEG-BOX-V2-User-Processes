module     p0_dbaru_epnebbbarg_abbrevd18h2
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(126), public :: abb18
   complex(ki), public :: R2d18
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
      abb18(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb18(2)=1.0_ki/(es71+es34+es56-es712-es234)
      abb18(3)=NC**(-1)
      abb18(4)=sqrt2**(-1)
      abb18(5)=es56**(-1)
      abb18(6)=es71**(-1)
      abb18(7)=spak2k7**(-1)
      abb18(8)=spbl5k2**(-1)
      abb18(9)=spak2l6**(-1)
      abb18(10)=1.0_ki/(es34+es567-es12-es234)
      abb18(11)=spak2l5**(-1)
      abb18(12)=spbl6k2**(-1)
      abb18(13)=TR*gW
      abb18(14)=abb18(13)**2
      abb18(15)=abb18(14)*spbl6k2
      abb18(16)=abb18(7)*CVDU*i_*spak1k4*abb18(5)*abb18(4)*abb18(2)*abb18(1)
      abb18(17)=abb18(16)*spak1k2
      abb18(18)=abb18(17)*c3
      abb18(19)=abb18(15)*abb18(18)
      abb18(20)=spbk3k1*abb18(10)
      abb18(21)=abb18(20)*abb18(19)
      abb18(16)=abb18(16)*abb18(10)
      abb18(22)=abb18(15)*abb18(16)
      abb18(23)=abb18(22)*c3
      abb18(24)=spak2k4*spbk4k3
      abb18(25)=abb18(23)*abb18(24)
      abb18(21)=abb18(21)-abb18(25)
      abb18(21)=abb18(21)*NC
      abb18(25)=abb18(3)*c4
      abb18(26)=abb18(25)*abb18(22)
      abb18(26)=abb18(26)-abb18(23)
      abb18(27)=abb18(26)*abb18(3)
      abb18(22)=abb18(22)*c4
      abb18(27)=abb18(27)-abb18(22)
      abb18(27)=abb18(27)*abb18(24)
      abb18(28)=abb18(17)*c4
      abb18(29)=abb18(15)*abb18(28)
      abb18(30)=abb18(29)*abb18(3)
      abb18(31)=abb18(30)*abb18(10)
      abb18(32)=abb18(19)*abb18(10)
      abb18(31)=abb18(31)-abb18(32)
      abb18(33)=abb18(31)*abb18(3)
      abb18(34)=abb18(29)*abb18(10)
      abb18(33)=abb18(33)-abb18(34)
      abb18(33)=abb18(33)*spbk3k1
      abb18(27)=-abb18(21)+abb18(27)-abb18(33)
      abb18(33)=spbk7l6*spal5l6
      abb18(27)=abb18(27)*abb18(33)
      abb18(35)=abb18(16)*spbk7k2
      abb18(13)=abb18(13)*mB
      abb18(13)=abb18(13)**2
      abb18(36)=abb18(13)*c3
      abb18(37)=abb18(35)*abb18(36)
      abb18(38)=abb18(37)*abb18(9)
      abb18(15)=abb18(35)*abb18(15)
      abb18(39)=c3*abb18(15)
      abb18(38)=abb18(38)-abb18(39)
      abb18(40)=abb18(38)*spak2l5
      abb18(41)=abb18(8)*spbl6k2
      abb18(42)=abb18(41)*abb18(37)
      abb18(40)=abb18(42)+abb18(40)
      abb18(40)=abb18(40)*abb18(24)
      abb18(17)=abb18(17)*abb18(13)
      abb18(42)=spbk7k2*abb18(10)
      abb18(43)=abb18(17)*abb18(42)
      abb18(44)=abb18(43)*c3
      abb18(45)=abb18(44)*abb18(9)
      abb18(46)=abb18(19)*abb18(42)
      abb18(47)=abb18(45)-abb18(46)
      abb18(48)=abb18(47)*spak2l5
      abb18(49)=c3*spbl6k2
      abb18(50)=abb18(43)*abb18(49)
      abb18(51)=abb18(50)*abb18(8)
      abb18(48)=abb18(51)+abb18(48)
      abb18(48)=abb18(48)*spbk3k1
      abb18(40)=abb18(40)-abb18(48)
      abb18(40)=abb18(40)*NC
      abb18(48)=abb18(30)-abb18(19)
      abb18(51)=abb18(48)*abb18(3)
      abb18(52)=abb18(51)-abb18(29)
      abb18(53)=spbk7k1*abb18(6)
      abb18(54)=abb18(52)*abb18(53)
      abb18(55)=abb18(53)*NC
      abb18(56)=abb18(55)*abb18(19)
      abb18(54)=abb18(54)+abb18(56)
      abb18(57)=spbl6k3*spal5l6
      abb18(54)=abb18(54)*abb18(57)
      abb18(27)=abb18(27)+abb18(54)-abb18(40)
      abb18(54)=abb18(17)*c4
      abb18(58)=abb18(54)*abb18(3)
      abb18(59)=abb18(17)*c3
      abb18(58)=abb18(58)-abb18(59)
      abb18(60)=abb18(58)*abb18(3)
      abb18(61)=abb18(60)-abb18(54)
      abb18(61)=abb18(61)*abb18(9)
      abb18(52)=abb18(61)-abb18(52)
      abb18(52)=abb18(52)*spak2l5
      abb18(61)=c4*spbl6k2
      abb18(62)=abb18(61)*abb18(17)
      abb18(63)=abb18(62)*abb18(3)
      abb18(17)=abb18(49)*abb18(17)
      abb18(49)=abb18(63)-abb18(17)
      abb18(63)=abb18(49)*abb18(3)
      abb18(64)=abb18(63)-abb18(62)
      abb18(65)=abb18(64)*abb18(8)
      abb18(52)=abb18(52)+abb18(65)
      abb18(52)=abb18(52)*abb18(53)
      abb18(65)=abb18(59)*abb18(9)
      abb18(66)=abb18(65)-abb18(19)
      abb18(67)=abb18(66)*spak2l5
      abb18(68)=abb18(17)*abb18(8)
      abb18(67)=abb18(67)+abb18(68)
      abb18(67)=abb18(67)*abb18(55)
      abb18(52)=abb18(52)+abb18(67)
      abb18(52)=abb18(52)*spbk3k2
      abb18(69)=abb18(43)*c4
      abb18(70)=abb18(69)*abb18(3)
      abb18(70)=abb18(70)-abb18(44)
      abb18(70)=abb18(70)*abb18(3)
      abb18(71)=abb18(70)-abb18(69)
      abb18(71)=abb18(71)*abb18(9)
      abb18(30)=abb18(30)*abb18(42)
      abb18(30)=abb18(30)-abb18(46)
      abb18(72)=abb18(30)*abb18(3)
      abb18(73)=abb18(29)*abb18(42)
      abb18(71)=abb18(71)-abb18(72)+abb18(73)
      abb18(71)=abb18(71)*spak2l5
      abb18(43)=abb18(43)*abb18(61)
      abb18(61)=abb18(43)*abb18(3)
      abb18(61)=abb18(61)-abb18(50)
      abb18(61)=abb18(61)*abb18(3)
      abb18(74)=abb18(61)-abb18(43)
      abb18(74)=abb18(74)*abb18(8)
      abb18(71)=abb18(71)+abb18(74)
      abb18(71)=abb18(71)*spbk3k1
      abb18(13)=abb18(13)*c4
      abb18(74)=abb18(35)*abb18(13)
      abb18(75)=abb18(74)*abb18(3)
      abb18(75)=abb18(75)-abb18(37)
      abb18(75)=abb18(75)*abb18(3)
      abb18(76)=abb18(75)-abb18(74)
      abb18(76)=abb18(76)*abb18(9)
      abb18(15)=c4*abb18(15)
      abb18(77)=abb18(15)*abb18(3)
      abb18(77)=abb18(77)-abb18(39)
      abb18(77)=abb18(77)*abb18(3)
      abb18(76)=abb18(76)-abb18(77)+abb18(15)
      abb18(76)=abb18(76)*spak2l5
      abb18(78)=-spbl6k2*abb18(75)
      abb18(79)=abb18(74)*spbl6k2
      abb18(80)=abb18(79)+abb18(78)
      abb18(80)=abb18(80)*abb18(8)
      abb18(76)=abb18(76)-abb18(80)
      abb18(76)=abb18(76)*abb18(24)
      abb18(52)=abb18(52)+abb18(27)+abb18(71)-abb18(76)
      abb18(71)=4.0_ki*abb18(52)
      abb18(18)=abb18(18)*abb18(14)
      abb18(76)=abb18(20)*abb18(18)
      abb18(80)=abb18(16)*abb18(14)
      abb18(81)=abb18(24)*abb18(80)
      abb18(82)=abb18(81)*c3
      abb18(76)=abb18(76)-abb18(82)
      abb18(76)=abb18(76)*NC
      abb18(28)=abb18(28)*abb18(14)
      abb18(82)=abb18(20)*abb18(28)
      abb18(81)=abb18(81)*c4
      abb18(81)=abb18(76)-abb18(82)+abb18(81)
      abb18(82)=spbl6k2**2
      abb18(83)=abb18(33)*abb18(82)*abb18(81)
      abb18(84)=abb18(28)*abb18(53)
      abb18(85)=abb18(18)*abb18(55)
      abb18(84)=abb18(84)-abb18(85)
      abb18(86)=abb18(84)*abb18(57)
      abb18(87)=abb18(82)*abb18(86)
      abb18(83)=abb18(83)+abb18(87)
      abb18(87)=abb18(82)*abb18(8)
      abb18(88)=abb18(37)*abb18(87)
      abb18(14)=abb18(35)*abb18(14)
      abb18(35)=abb18(14)*c3
      abb18(82)=abb18(82)*spak2l5
      abb18(89)=-abb18(82)*abb18(35)
      abb18(88)=abb18(88)+abb18(89)
      abb18(88)=abb18(88)*abb18(24)
      abb18(89)=-abb18(44)*abb18(87)
      abb18(90)=abb18(18)*abb18(42)
      abb18(91)=abb18(82)*abb18(90)
      abb18(89)=abb18(89)+abb18(91)
      abb18(89)=spbk3k1*abb18(89)
      abb18(88)=abb18(88)+abb18(89)
      abb18(88)=NC*abb18(88)
      abb18(89)=abb18(54)*abb18(87)
      abb18(91)=-abb18(28)*abb18(82)
      abb18(89)=abb18(89)+abb18(91)
      abb18(89)=abb18(89)*abb18(53)
      abb18(91)=-abb18(59)*abb18(87)
      abb18(92)=abb18(18)*abb18(82)
      abb18(91)=abb18(91)+abb18(92)
      abb18(91)=abb18(91)*abb18(55)
      abb18(89)=abb18(89)+abb18(91)
      abb18(89)=spbk3k2*abb18(89)
      abb18(91)=-abb18(74)*abb18(87)
      abb18(92)=abb18(14)*c4
      abb18(93)=abb18(82)*abb18(92)
      abb18(91)=abb18(91)+abb18(93)
      abb18(91)=abb18(91)*abb18(24)
      abb18(87)=abb18(69)*abb18(87)
      abb18(93)=abb18(28)*abb18(42)
      abb18(94)=-abb18(82)*abb18(93)
      abb18(87)=abb18(87)+abb18(94)
      abb18(87)=spbk3k1*abb18(87)
      abb18(83)=abb18(89)+abb18(88)+abb18(91)+abb18(87)+2.0_ki*abb18(83)
      abb18(83)=spak2l6*abb18(83)
      abb18(38)=abb18(38)*abb18(24)
      abb18(47)=-spbk3k1*abb18(47)
      abb18(38)=abb18(38)+abb18(47)
      abb18(38)=NC*abb18(38)
      abb18(47)=abb18(54)*abb18(9)
      abb18(47)=abb18(47)-abb18(29)
      abb18(87)=abb18(47)*abb18(53)
      abb18(66)=-abb18(66)*abb18(55)
      abb18(66)=abb18(87)+abb18(66)
      abb18(66)=spbk3k2*abb18(66)
      abb18(87)=abb18(74)*abb18(9)
      abb18(87)=abb18(87)-abb18(15)
      abb18(88)=-abb18(87)*abb18(24)
      abb18(89)=abb18(69)*abb18(9)
      abb18(89)=abb18(89)-abb18(73)
      abb18(91)=spbk3k1*abb18(89)
      abb18(38)=abb18(66)+abb18(38)+abb18(88)+abb18(91)
      abb18(38)=abb18(38)*spak2l5**2
      abb18(66)=abb18(20)*abb18(29)
      abb18(88)=abb18(24)*abb18(22)
      abb18(66)=abb18(21)-abb18(66)+abb18(88)
      abb18(88)=abb18(33)*spak2l5*abb18(66)
      abb18(91)=abb18(29)*abb18(53)
      abb18(91)=abb18(91)-abb18(56)
      abb18(57)=abb18(91)*abb18(57)
      abb18(94)=spak2l5*abb18(57)
      abb18(38)=abb18(94)+abb18(88)+abb18(38)
      abb18(38)=spbl5k2*abb18(38)
      abb18(88)=abb18(37)*abb18(24)
      abb18(94)=spak2l5*spbl6k2
      abb18(95)=abb18(88)*abb18(94)
      abb18(96)=spbk3k1*spak2l5
      abb18(97)=-abb18(50)*abb18(96)
      abb18(95)=abb18(95)+abb18(97)
      abb18(95)=NC*abb18(95)
      abb18(97)=abb18(17)*spak2l5
      abb18(98)=abb18(97)*abb18(55)
      abb18(99)=abb18(53)*spak2l5
      abb18(100)=abb18(62)*abb18(99)
      abb18(100)=abb18(100)-abb18(98)
      abb18(100)=spbk3k2*abb18(100)
      abb18(101)=abb18(74)*abb18(24)
      abb18(94)=-abb18(101)*abb18(94)
      abb18(102)=abb18(43)*abb18(96)
      abb18(94)=abb18(100)+abb18(95)+abb18(94)+abb18(102)
      abb18(95)=spbk7l5*spal5l6
      abb18(100)=abb18(95)*abb18(82)*abb18(81)
      abb18(102)=spbl5k3*spal5l6
      abb18(82)=abb18(102)*abb18(82)*abb18(84)
      abb18(38)=abb18(82)+abb18(38)+abb18(83)+2.0_ki*abb18(94)+abb18(100)
      abb18(38)=4.0_ki*abb18(38)
      abb18(47)=abb18(47)*spak2l5
      abb18(82)=abb18(62)*abb18(8)
      abb18(47)=abb18(47)+abb18(82)
      abb18(47)=abb18(47)*abb18(53)
      abb18(47)=abb18(47)-abb18(67)
      abb18(47)=abb18(47)*spbk3k2
      abb18(83)=abb18(87)*spak2l5
      abb18(87)=abb18(41)*abb18(74)
      abb18(83)=abb18(87)+abb18(83)
      abb18(83)=abb18(83)*abb18(24)
      abb18(87)=abb18(89)*spak2l5
      abb18(89)=abb18(43)*abb18(8)
      abb18(87)=abb18(89)+abb18(87)
      abb18(87)=abb18(87)*spbk3k1
      abb18(47)=-abb18(47)+abb18(83)-abb18(87)
      abb18(27)=abb18(27)+abb18(47)
      abb18(27)=16.0_ki*abb18(27)
      abb18(83)=-abb18(66)*abb18(33)
      abb18(40)=abb18(83)-abb18(40)
      abb18(47)=-abb18(57)+abb18(40)+abb18(47)
      abb18(47)=16.0_ki*abb18(47)
      abb18(57)=abb18(79)-abb18(78)
      abb18(57)=abb18(8)*abb18(57)
      abb18(79)=2.0_ki*abb18(3)
      abb18(83)=abb18(9)*abb18(8)
      abb18(87)=abb18(79)*abb18(83)
      abb18(89)=mB**4
      abb18(94)=abb18(14)*abb18(89)
      abb18(100)=abb18(25)-c3
      abb18(103)=-abb18(94)*abb18(100)
      abb18(104)=abb18(103)*abb18(87)
      abb18(105)=abb18(75)+abb18(74)
      abb18(106)=abb18(9)*abb18(105)
      abb18(106)=-abb18(15)+abb18(106)
      abb18(106)=spak2l5*abb18(106)
      abb18(57)=abb18(106)+abb18(57)+abb18(104)
      abb18(57)=abb18(57)*abb18(24)
      abb18(104)=-abb18(43)-abb18(61)
      abb18(104)=abb18(8)*abb18(104)
      abb18(106)=abb18(89)*abb18(3)
      abb18(107)=abb18(93)*abb18(106)
      abb18(108)=abb18(18)*abb18(89)
      abb18(42)=abb18(108)*abb18(42)
      abb18(107)=abb18(107)-abb18(42)
      abb18(109)=abb18(107)*abb18(87)
      abb18(110)=abb18(70)+abb18(69)
      abb18(111)=-abb18(9)*abb18(110)
      abb18(111)=abb18(73)+abb18(111)
      abb18(111)=spak2l5*abb18(111)
      abb18(104)=abb18(111)+abb18(104)+abb18(109)
      abb18(104)=spbk3k1*abb18(104)
      abb18(109)=-abb18(62)-abb18(63)
      abb18(109)=abb18(8)*abb18(109)
      abb18(111)=abb18(106)*abb18(28)
      abb18(111)=abb18(111)-abb18(108)
      abb18(87)=abb18(111)*abb18(87)
      abb18(112)=abb18(60)+abb18(54)
      abb18(113)=-abb18(9)*abb18(112)
      abb18(113)=abb18(29)+abb18(113)
      abb18(113)=spak2l5*abb18(113)
      abb18(87)=abb18(113)+abb18(109)+abb18(87)
      abb18(87)=abb18(87)*abb18(53)
      abb18(67)=abb18(87)+abb18(67)
      abb18(67)=spbk3k2*abb18(67)
      abb18(30)=spbk3k1*abb18(30)
      abb18(87)=abb18(53)*spbk3k2
      abb18(109)=abb18(87)*abb18(48)
      abb18(30)=abb18(109)+abb18(30)
      abb18(30)=abb18(89)*abb18(30)
      abb18(109)=abb18(89)*abb18(39)
      abb18(106)=-abb18(106)*abb18(15)
      abb18(106)=abb18(109)+abb18(106)
      abb18(106)=abb18(106)*abb18(24)
      abb18(30)=abb18(106)+abb18(30)
      abb18(106)=abb18(8)**2
      abb18(30)=abb18(106)*abb18(3)*abb18(30)
      abb18(13)=abb18(13)*abb18(16)
      abb18(109)=abb18(13)*abb18(3)
      abb18(113)=abb18(109)*spbl6k2
      abb18(16)=abb18(36)*abb18(16)
      abb18(36)=abb18(16)*spbl6k2
      abb18(113)=abb18(113)-abb18(36)
      abb18(114)=abb18(113)*abb18(3)
      abb18(115)=abb18(24)*abb18(8)
      abb18(116)=-abb18(115)*abb18(114)
      abb18(17)=abb18(17)*abb18(10)
      abb18(117)=abb18(3)*abb18(10)
      abb18(118)=abb18(117)*abb18(62)
      abb18(17)=abb18(17)-abb18(118)
      abb18(118)=abb18(17)*abb18(3)
      abb18(119)=spbk3k1*abb18(8)
      abb18(120)=-abb18(119)*abb18(118)
      abb18(116)=abb18(116)+abb18(120)
      abb18(116)=abb18(116)*abb18(33)
      abb18(30)=abb18(116)+abb18(30)
      abb18(30)=abb18(11)*abb18(30)
      abb18(116)=abb18(83)*abb18(24)
      abb18(120)=-abb18(116)*abb18(114)
      abb18(121)=abb18(83)*spbk3k1
      abb18(122)=-abb18(121)*abb18(118)
      abb18(120)=abb18(120)+abb18(122)
      abb18(120)=abb18(120)*abb18(95)
      abb18(122)=-spal5l6*abb18(91)
      abb18(63)=abb18(63)*spal5l6
      abb18(123)=abb18(53)*abb18(8)
      abb18(124)=abb18(63)*abb18(123)
      abb18(125)=-abb18(11)*abb18(124)
      abb18(122)=abb18(122)+abb18(125)
      abb18(122)=spbl6k3*abb18(122)
      abb18(107)=abb18(107)*abb18(3)
      abb18(125)=abb18(96)*abb18(107)
      abb18(111)=abb18(111)*abb18(3)
      abb18(99)=spbk3k2*abb18(99)*abb18(111)
      abb18(103)=abb18(103)*abb18(3)
      abb18(126)=spak2l5*abb18(24)*abb18(103)
      abb18(99)=abb18(99)+abb18(126)+abb18(125)
      abb18(125)=abb18(9)**2
      abb18(99)=abb18(12)*abb18(125)*abb18(99)
      abb18(126)=abb18(83)*abb18(53)
      abb18(63)=-spbl5k3*abb18(126)*abb18(63)
      abb18(30)=abb18(63)+abb18(99)+abb18(122)+abb18(120)+abb18(30)+abb18(67)+a&
      &bb18(57)+abb18(104)+abb18(40)
      abb18(30)=16.0_ki*abb18(30)
      abb18(40)=abb18(94)*c4
      abb18(40)=abb18(40)-abb18(103)
      abb18(57)=abb18(40)*abb18(24)
      abb18(63)=abb18(93)*abb18(89)
      abb18(63)=abb18(63)+abb18(107)
      abb18(67)=-spbk3k1*abb18(63)
      abb18(99)=abb18(24)*c3
      abb18(94)=abb18(99)*abb18(94)
      abb18(103)=spbk3k1*abb18(42)
      abb18(103)=-abb18(94)+abb18(103)
      abb18(103)=NC*abb18(103)
      abb18(89)=abb18(28)*abb18(89)
      abb18(89)=abb18(89)+abb18(111)
      abb18(104)=-abb18(89)*abb18(53)
      abb18(107)=abb18(108)*abb18(55)
      abb18(104)=abb18(104)+abb18(107)
      abb18(104)=spbk3k2*abb18(104)
      abb18(57)=abb18(104)+abb18(103)+abb18(57)+abb18(67)
      abb18(57)=abb18(11)*abb18(57)*abb18(106)*abb18(9)
      abb18(40)=abb18(40)*abb18(115)
      abb18(63)=-abb18(63)*abb18(119)
      abb18(67)=-abb18(8)*abb18(94)
      abb18(42)=abb18(119)*abb18(42)
      abb18(42)=abb18(67)+abb18(42)
      abb18(42)=NC*abb18(42)
      abb18(67)=-abb18(89)*abb18(123)
      abb18(89)=abb18(8)*abb18(107)
      abb18(67)=abb18(67)+abb18(89)
      abb18(67)=spbk3k2*abb18(67)
      abb18(40)=abb18(67)+abb18(42)+abb18(40)+abb18(63)
      abb18(40)=abb18(12)*abb18(125)*abb18(40)
      abb18(42)=-abb18(105)*abb18(116)
      abb18(63)=abb18(110)*abb18(121)
      abb18(67)=abb18(37)*abb18(116)
      abb18(89)=-abb18(44)*abb18(121)
      abb18(67)=abb18(67)+abb18(89)
      abb18(67)=NC*abb18(67)
      abb18(89)=abb18(126)*abb18(112)
      abb18(94)=abb18(55)*abb18(59)
      abb18(103)=abb18(94)*abb18(83)
      abb18(89)=abb18(103)-abb18(89)
      abb18(103)=-spbk3k2*abb18(89)
      abb18(40)=abb18(40)+abb18(57)+abb18(103)+abb18(67)+abb18(42)+abb18(63)
      abb18(40)=32.0_ki*abb18(40)
      abb18(42)=-8.0_ki*abb18(52)
      abb18(52)=abb18(113)*abb18(79)
      abb18(57)=abb18(13)*spbl6k2
      abb18(63)=abb18(57)-abb18(52)
      abb18(63)=abb18(8)*abb18(63)
      abb18(67)=abb18(109)-abb18(16)
      abb18(103)=abb18(67)*abb18(3)
      abb18(104)=spak2l5*abb18(9)
      abb18(106)=-abb18(104)*abb18(103)
      abb18(63)=abb18(63)+abb18(106)
      abb18(63)=abb18(63)*abb18(24)
      abb18(17)=abb18(17)*abb18(79)
      abb18(106)=abb18(62)*abb18(10)
      abb18(107)=-abb18(106)-abb18(17)
      abb18(107)=abb18(8)*abb18(107)
      abb18(108)=-abb18(10)*abb18(58)
      abb18(109)=abb18(108)*abb18(3)
      abb18(111)=-abb18(104)*abb18(109)
      abb18(107)=abb18(107)+abb18(111)
      abb18(107)=spbk3k1*abb18(107)
      abb18(111)=abb18(68)*abb18(20)
      abb18(113)=abb18(41)*abb18(16)
      abb18(120)=abb18(113)*abb18(24)
      abb18(111)=abb18(111)-abb18(120)
      abb18(111)=abb18(111)*NC
      abb18(63)=abb18(111)+abb18(63)+abb18(107)
      abb18(63)=spbk7l6*abb18(63)
      abb18(107)=abb18(57)-abb18(114)
      abb18(107)=abb18(107)*abb18(116)
      abb18(114)=-abb18(106)-abb18(118)
      abb18(114)=abb18(114)*abb18(121)
      abb18(107)=abb18(107)+abb18(114)
      abb18(107)=spak2l5*abb18(107)
      abb18(36)=-spak2l5*abb18(116)*abb18(36)
      abb18(114)=abb18(20)*abb18(83)
      abb18(97)=abb18(114)*abb18(97)
      abb18(36)=abb18(36)+abb18(97)
      abb18(36)=NC*abb18(36)
      abb18(36)=abb18(36)+abb18(107)
      abb18(36)=spbk7l5*abb18(36)
      abb18(49)=abb18(49)*abb18(79)
      abb18(97)=abb18(62)-abb18(49)
      abb18(97)=abb18(8)*abb18(97)
      abb18(107)=-abb18(104)*abb18(60)
      abb18(97)=abb18(97)+abb18(107)
      abb18(97)=abb18(97)*abb18(53)
      abb18(107)=abb18(68)*abb18(55)
      abb18(97)=abb18(97)-abb18(107)
      abb18(97)=spbl6k3*abb18(97)
      abb18(64)=-spak2l5*abb18(64)*abb18(126)
      abb18(83)=-abb18(83)*abb18(98)
      abb18(64)=abb18(64)+abb18(83)
      abb18(64)=spbl5k3*abb18(64)
      abb18(36)=abb18(64)+abb18(97)+abb18(63)+abb18(36)
      abb18(36)=8.0_ki*abb18(36)
      abb18(63)=abb18(116)*abb18(16)
      abb18(64)=abb18(114)*abb18(59)
      abb18(63)=abb18(63)-abb18(64)
      abb18(63)=abb18(63)*NC
      abb18(64)=abb18(54)*abb18(10)
      abb18(83)=abb18(64)-abb18(109)
      abb18(83)=abb18(83)*abb18(121)
      abb18(97)=abb18(103)+abb18(13)
      abb18(97)=abb18(97)*abb18(116)
      abb18(63)=-abb18(97)+abb18(63)+abb18(83)
      abb18(83)=-spbk7l6*abb18(63)
      abb18(97)=-spbl6k3*abb18(89)
      abb18(83)=abb18(83)+abb18(97)
      abb18(83)=16.0_ki*abb18(83)
      abb18(97)=abb18(41)*abb18(88)
      abb18(50)=-abb18(50)*abb18(119)
      abb18(50)=abb18(97)+abb18(50)
      abb18(50)=NC*abb18(50)
      abb18(97)=abb18(62)*abb18(123)
      abb18(97)=abb18(97)-abb18(107)
      abb18(97)=spbk3k2*abb18(97)
      abb18(98)=-abb18(41)*abb18(101)
      abb18(43)=abb18(43)*abb18(119)
      abb18(43)=abb18(97)+abb18(50)+abb18(98)+abb18(43)
      abb18(43)=abb18(11)*abb18(43)
      abb18(39)=-abb18(24)*abb18(39)
      abb18(46)=spbk3k1*abb18(46)
      abb18(39)=abb18(39)+abb18(46)
      abb18(39)=NC*abb18(39)
      abb18(46)=-spbk3k2*abb18(91)
      abb18(15)=abb18(24)*abb18(15)
      abb18(50)=-spbk3k1*abb18(73)
      abb18(15)=abb18(43)+abb18(46)+abb18(39)+abb18(15)+abb18(50)
      abb18(15)=spak2l6*abb18(15)
      abb18(39)=abb18(54)*abb18(53)
      abb18(39)=abb18(39)-abb18(94)
      abb18(43)=abb18(39)*spbk3k2
      abb18(43)=abb18(43)-abb18(101)
      abb18(46)=-abb18(104)*abb18(43)
      abb18(50)=abb18(88)*abb18(104)
      abb18(73)=abb18(104)*spbk3k1
      abb18(97)=abb18(73)*abb18(44)
      abb18(50)=abb18(50)-abb18(97)
      abb18(50)=abb18(50)*NC
      abb18(73)=abb18(73)*abb18(69)
      abb18(46)=-abb18(50)-abb18(73)+abb18(46)
      abb18(46)=abb18(46)*abb18(12)
      abb18(33)=-abb18(81)*abb18(33)
      abb18(33)=abb18(46)+abb18(33)-abb18(86)
      abb18(46)=abb18(99)*abb18(14)
      abb18(50)=-spak2l5*abb18(46)
      abb18(73)=abb18(96)*abb18(90)
      abb18(50)=abb18(50)+abb18(73)
      abb18(50)=NC*abb18(50)
      abb18(73)=-spbk3k2*spak2l5*abb18(84)
      abb18(81)=abb18(92)*spak2l5
      abb18(84)=abb18(24)*abb18(81)
      abb18(86)=-abb18(93)*abb18(96)
      abb18(50)=abb18(73)+abb18(50)+abb18(84)+abb18(86)-abb18(33)
      abb18(50)=spbl5k2*abb18(50)
      abb18(26)=abb18(26)*abb18(79)
      abb18(26)=-abb18(22)+abb18(26)
      abb18(26)=abb18(26)*abb18(24)
      abb18(31)=-abb18(31)*abb18(79)
      abb18(31)=abb18(34)+abb18(31)
      abb18(31)=spbk3k1*abb18(31)
      abb18(21)=-abb18(21)+abb18(26)+abb18(31)
      abb18(21)=abb18(21)*abb18(95)
      abb18(26)=-spbk3k1*abb18(44)
      abb18(26)=abb18(88)+abb18(26)
      abb18(26)=NC*abb18(26)
      abb18(31)=spbk3k1*abb18(69)
      abb18(26)=abb18(26)+abb18(31)+abb18(43)
      abb18(31)=abb18(48)*abb18(79)
      abb18(31)=-abb18(29)+abb18(31)
      abb18(31)=abb18(31)*abb18(53)
      abb18(31)=abb18(31)+abb18(56)
      abb18(31)=abb18(31)*abb18(102)
      abb18(15)=abb18(31)+abb18(50)+abb18(15)+2.0_ki*abb18(26)+abb18(21)
      abb18(15)=4.0_ki*abb18(15)
      abb18(21)=-abb18(105)*abb18(115)
      abb18(26)=abb18(110)*abb18(119)
      abb18(31)=abb18(8)*abb18(88)
      abb18(43)=-abb18(44)*abb18(119)
      abb18(31)=abb18(31)+abb18(43)
      abb18(31)=NC*abb18(31)
      abb18(43)=abb18(112)*abb18(123)
      abb18(48)=-abb18(8)*abb18(94)
      abb18(43)=abb18(43)+abb18(48)
      abb18(43)=spbk3k2*abb18(43)
      abb18(21)=abb18(43)+abb18(31)+abb18(21)+abb18(26)
      abb18(21)=abb18(11)*abb18(21)
      abb18(26)=-abb18(105)*abb18(24)
      abb18(31)=spbk3k1*abb18(110)
      abb18(43)=abb18(112)*abb18(53)
      abb18(43)=abb18(43)-abb18(94)
      abb18(43)=spbk3k2*abb18(43)
      abb18(26)=abb18(43)+abb18(26)+abb18(31)
      abb18(26)=abb18(9)*abb18(26)
      abb18(31)=abb18(9)*abb18(88)
      abb18(43)=-spbk3k1*abb18(45)
      abb18(31)=abb18(31)+abb18(43)
      abb18(31)=NC*abb18(31)
      abb18(26)=abb18(31)+abb18(26)
      abb18(26)=abb18(12)*abb18(26)
      abb18(14)=abb18(14)*abb18(25)
      abb18(14)=-abb18(35)+abb18(14)
      abb18(14)=abb18(3)*abb18(14)
      abb18(14)=abb18(92)+abb18(14)
      abb18(14)=abb18(14)*abb18(24)
      abb18(25)=-abb18(3)*abb18(93)
      abb18(25)=abb18(90)+abb18(25)
      abb18(25)=abb18(3)*abb18(25)
      abb18(25)=-abb18(93)+abb18(25)
      abb18(25)=spbk3k1*abb18(25)
      abb18(31)=spbk3k1*abb18(90)
      abb18(31)=-abb18(46)+abb18(31)
      abb18(31)=NC*abb18(31)
      abb18(43)=abb18(28)*abb18(3)
      abb18(43)=abb18(43)-abb18(18)
      abb18(43)=abb18(43)*abb18(3)
      abb18(43)=abb18(43)+abb18(28)
      abb18(43)=abb18(43)*abb18(53)
      abb18(43)=abb18(43)-abb18(85)
      abb18(45)=-spbk3k2*abb18(43)
      abb18(14)=abb18(26)+abb18(21)+abb18(45)+abb18(31)+abb18(14)+abb18(25)
      abb18(14)=16.0_ki*abb18(14)
      abb18(21)=abb18(18)*abb18(10)
      abb18(25)=abb18(117)*abb18(28)
      abb18(21)=abb18(21)-abb18(25)
      abb18(21)=abb18(21)*abb18(3)
      abb18(25)=abb18(28)*abb18(10)
      abb18(21)=abb18(21)-abb18(25)
      abb18(21)=abb18(21)*spbk3k1
      abb18(25)=abb18(3)*abb18(100)
      abb18(25)=c4+abb18(25)
      abb18(25)=abb18(24)*abb18(80)*abb18(25)
      abb18(21)=abb18(21)+abb18(25)+abb18(76)
      abb18(25)=-spbk7l6*abb18(21)
      abb18(26)=-spbl6k3*abb18(43)
      abb18(25)=abb18(25)+abb18(26)
      abb18(25)=8.0_ki*abb18(25)
      abb18(26)=abb18(8)*abb18(37)
      abb18(31)=-spak2l5*abb18(35)
      abb18(26)=abb18(26)+abb18(31)
      abb18(26)=abb18(26)*abb18(24)
      abb18(31)=-abb18(8)*abb18(44)
      abb18(35)=spak2l5*abb18(90)
      abb18(31)=abb18(31)+abb18(35)
      abb18(31)=spbk3k1*abb18(31)
      abb18(26)=abb18(26)+abb18(31)
      abb18(26)=NC*abb18(26)
      abb18(31)=abb18(8)*abb18(54)
      abb18(28)=-spak2l5*abb18(28)
      abb18(28)=abb18(31)+abb18(28)
      abb18(28)=abb18(28)*abb18(53)
      abb18(31)=-abb18(8)*abb18(59)
      abb18(18)=spak2l5*abb18(18)
      abb18(18)=abb18(31)+abb18(18)
      abb18(18)=abb18(18)*abb18(55)
      abb18(18)=abb18(28)+abb18(18)
      abb18(18)=spbk3k2*abb18(18)
      abb18(28)=-abb18(8)*abb18(74)
      abb18(28)=abb18(28)+abb18(81)
      abb18(28)=abb18(28)*abb18(24)
      abb18(31)=abb18(8)*abb18(69)
      abb18(35)=-spak2l5*abb18(93)
      abb18(31)=abb18(31)+abb18(35)
      abb18(31)=spbk3k1*abb18(31)
      abb18(18)=abb18(18)+abb18(26)+abb18(28)+abb18(31)-abb18(33)
      abb18(18)=spbl6l5*abb18(18)
      abb18(26)=abb18(20)*abb18(59)
      abb18(28)=-abb18(24)*abb18(16)
      abb18(26)=abb18(28)+abb18(26)
      abb18(26)=NC*abb18(26)
      abb18(28)=abb18(24)*abb18(13)
      abb18(20)=-abb18(54)*abb18(20)
      abb18(20)=abb18(26)+abb18(28)+abb18(20)
      abb18(20)=spbk7l6*abb18(20)
      abb18(26)=spbl6k3*abb18(39)
      abb18(18)=abb18(18)+abb18(20)+abb18(26)
      abb18(16)=abb18(9)*abb18(16)
      abb18(16)=-abb18(23)-3.0_ki*abb18(16)
      abb18(16)=spak2l5*abb18(16)
      abb18(16)=-abb18(113)+abb18(16)
      abb18(16)=abb18(16)*abb18(24)
      abb18(20)=3.0_ki*abb18(65)
      abb18(23)=abb18(10)*abb18(20)
      abb18(23)=abb18(32)+abb18(23)
      abb18(23)=spak2l5*abb18(23)
      abb18(26)=abb18(10)*abb18(68)
      abb18(23)=abb18(26)+abb18(23)
      abb18(23)=spbk3k1*abb18(23)
      abb18(16)=abb18(16)+abb18(23)
      abb18(16)=NC*abb18(16)
      abb18(23)=-abb18(67)*abb18(79)
      abb18(23)=3.0_ki*abb18(13)+abb18(23)
      abb18(23)=abb18(9)*abb18(23)
      abb18(22)=abb18(22)+abb18(23)
      abb18(22)=spak2l5*abb18(22)
      abb18(13)=abb18(13)*abb18(41)
      abb18(13)=abb18(13)+abb18(22)
      abb18(13)=abb18(13)*abb18(24)
      abb18(22)=-abb18(108)*abb18(79)
      abb18(22)=-3.0_ki*abb18(64)+abb18(22)
      abb18(22)=abb18(9)*abb18(22)
      abb18(22)=-abb18(34)+abb18(22)
      abb18(22)=spak2l5*abb18(22)
      abb18(23)=-abb18(10)*abb18(82)
      abb18(22)=abb18(23)+abb18(22)
      abb18(22)=spbk3k1*abb18(22)
      abb18(13)=abb18(16)+abb18(13)+abb18(22)
      abb18(13)=spbk7l5*abb18(13)
      abb18(16)=abb18(57)+abb18(52)
      abb18(16)=abb18(16)*abb18(115)
      abb18(17)=-abb18(106)+abb18(17)
      abb18(17)=abb18(17)*abb18(119)
      abb18(16)=abb18(111)+abb18(16)+abb18(17)
      abb18(16)=abb18(11)*abb18(16)
      abb18(16)=abb18(66)+abb18(16)
      abb18(16)=spbk7l6*abb18(16)
      abb18(17)=abb18(62)+abb18(49)
      abb18(17)=abb18(17)*abb18(123)
      abb18(17)=abb18(17)-abb18(107)
      abb18(17)=abb18(11)*abb18(17)
      abb18(17)=abb18(17)+abb18(91)
      abb18(17)=spbl6k3*abb18(17)
      abb18(16)=abb18(17)+abb18(16)
      abb18(16)=spak2l6*abb18(16)
      abb18(17)=-abb18(58)*abb18(79)
      abb18(17)=3.0_ki*abb18(54)+abb18(17)
      abb18(17)=abb18(9)*abb18(17)
      abb18(17)=abb18(29)+abb18(17)
      abb18(17)=spak2l5*abb18(17)
      abb18(17)=abb18(82)+abb18(17)
      abb18(17)=abb18(17)*abb18(53)
      abb18(19)=-abb18(19)-abb18(20)
      abb18(19)=spak2l5*abb18(19)
      abb18(19)=-abb18(68)+abb18(19)
      abb18(19)=abb18(19)*abb18(55)
      abb18(17)=abb18(17)+abb18(19)
      abb18(17)=spbl5k3*abb18(17)
      abb18(13)=abb18(17)+abb18(16)+abb18(13)+3.0_ki*abb18(18)
      abb18(13)=4.0_ki*abb18(13)
      abb18(16)=-spbk7l5*abb18(63)
      abb18(17)=-spbl5k3*abb18(89)
      abb18(16)=abb18(16)+abb18(17)
      abb18(16)=16.0_ki*abb18(16)
      abb18(17)=-spbk7l5*abb18(21)
      abb18(18)=-spbl5k3*abb18(43)
      abb18(17)=abb18(17)+abb18(18)
      abb18(17)=8.0_ki*abb18(17)
      abb18(18)=abb18(9)*abb18(75)
      abb18(18)=-abb18(77)+abb18(18)
      abb18(18)=abb18(18)*abb18(24)
      abb18(19)=-abb18(9)*abb18(70)
      abb18(19)=abb18(72)+abb18(19)
      abb18(19)=spbk3k1*abb18(19)
      abb18(20)=-abb18(9)*abb18(60)
      abb18(20)=abb18(51)+abb18(20)
      abb18(20)=abb18(20)*abb18(87)
      abb18(18)=abb18(20)+abb18(18)+abb18(19)
      abb18(18)=spal5l6*abb18(18)
      abb18(19)=-abb18(115)*abb18(78)
      abb18(20)=-abb18(119)*abb18(61)
      abb18(19)=abb18(19)+abb18(20)
      abb18(19)=spal5l6*abb18(19)
      abb18(20)=-spbk3k2*abb18(124)
      abb18(19)=abb18(19)+abb18(20)
      abb18(19)=abb18(11)*abb18(19)
      abb18(18)=abb18(19)+abb18(18)
      abb18(18)=8.0_ki*abb18(18)
      R2d18=abb18(71)
      rat2 = rat2 + R2d18
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='18' value='", &
          & R2d18, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd18h2
