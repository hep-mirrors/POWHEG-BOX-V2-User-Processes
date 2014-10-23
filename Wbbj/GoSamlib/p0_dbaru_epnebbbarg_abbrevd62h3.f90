module     p0_dbaru_epnebbbarg_abbrevd62h3
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(163), public :: abb62
   complex(ki), public :: R2d62
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
      abb62(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb62(2)=NC**(-1)
      abb62(3)=sqrt2**(-1)
      abb62(4)=es234**(-1)
      abb62(5)=es56**(-1)
      abb62(6)=es71**(-1)
      abb62(7)=spak2l5**(-1)
      abb62(8)=spak2k7**(-1)
      abb62(9)=spak2l6**(-1)
      abb62(10)=es567**(-1)
      abb62(11)=1.0_ki/(mB**2-es67-es56+es567)
      abb62(12)=sqrt(mB**2)
      abb62(13)=1.0_ki/(-es71+es56-es567+es234)
      abb62(14)=1.0_ki/(-mB**2+es67)
      abb62(15)=TR*gW
      abb62(16)=abb62(4)*abb62(15)**2
      abb62(17)=abb62(10)*spak1k2
      abb62(18)=abb62(16)*abb62(17)
      abb62(19)=i_*CVDU*abb62(3)*abb62(1)
      abb62(20)=abb62(19)*mB
      abb62(21)=abb62(20)*abb62(8)
      abb62(22)=abb62(18)*abb62(21)
      abb62(23)=spbk3k2*abb62(22)
      abb62(24)=abb62(2)**2
      abb62(24)=abb62(24)-1.0_ki
      abb62(25)=abb62(23)*abb62(24)
      abb62(26)=spbk7l5*abb62(9)
      abb62(27)=abb62(26)*spak2k4
      abb62(28)=abb62(27)*abb62(11)
      abb62(29)=abb62(25)*abb62(28)
      abb62(30)=spbk7l6*abb62(7)
      abb62(31)=abb62(30)*spak2k4
      abb62(32)=abb62(31)*abb62(14)
      abb62(33)=abb62(25)*abb62(32)
      abb62(34)=abb62(29)-abb62(33)
      abb62(34)=abb62(34)*c2
      abb62(35)=abb62(30)+abb62(26)
      abb62(36)=c1-c3
      abb62(37)=abb62(36)*NC
      abb62(38)=abb62(37)*abb62(35)
      abb62(39)=abb62(18)*spbk3k2
      abb62(40)=abb62(21)*abb62(5)
      abb62(41)=abb62(40)*spak2k4
      abb62(42)=abb62(39)*abb62(41)
      abb62(43)=-abb62(42)*abb62(38)
      abb62(44)=abb62(35)*abb62(36)
      abb62(45)=abb62(40)*abb62(2)
      abb62(46)=abb62(45)*spak2k4
      abb62(47)=abb62(39)*abb62(46)
      abb62(48)=-abb62(47)*abb62(44)
      abb62(49)=abb62(30)*c3
      abb62(50)=spak2k4*abb62(2)
      abb62(51)=abb62(49)*abb62(50)
      abb62(52)=abb62(49)*NC
      abb62(53)=abb62(52)*spak2k4
      abb62(51)=abb62(51)-abb62(53)
      abb62(51)=abb62(51)*abb62(14)
      abb62(53)=-abb62(23)*abb62(51)
      abb62(54)=abb62(26)*c1
      abb62(55)=abb62(54)*abb62(50)
      abb62(56)=abb62(54)*NC
      abb62(57)=abb62(56)*spak2k4
      abb62(55)=abb62(55)-abb62(57)
      abb62(55)=abb62(55)*abb62(11)
      abb62(57)=-abb62(23)*abb62(55)
      abb62(34)=abb62(34)-abb62(43)+abb62(57)+abb62(48)-abb62(53)
      abb62(43)=es71+es12-es712
      abb62(34)=-abb62(34)*abb62(43)
      abb62(48)=c1*abb62(2)
      abb62(58)=abb62(48)*spbk7l5
      abb62(59)=c1*spbk7l5
      abb62(60)=abb62(59)*NC
      abb62(58)=abb62(58)-abb62(60)
      abb62(19)=abb62(19)*abb62(8)
      abb62(61)=abb62(39)*abb62(19)
      abb62(62)=-abb62(61)*abb62(58)
      abb62(63)=abb62(61)*abb62(24)
      abb62(64)=c2*spbk7l5
      abb62(65)=abb62(63)*abb62(64)
      abb62(62)=abb62(62)+abb62(65)
      abb62(65)=abb62(11)*spak3k4
      abb62(66)=abb62(65)*spbl6k3
      abb62(62)=abb62(62)*abb62(66)
      abb62(67)=c3*abb62(2)
      abb62(68)=abb62(67)*spbk7l6
      abb62(69)=c3*spbk7l6
      abb62(70)=abb62(69)*NC
      abb62(68)=abb62(68)-abb62(70)
      abb62(71)=abb62(61)*abb62(68)
      abb62(72)=c2*spbk7l6
      abb62(73)=-abb62(63)*abb62(72)
      abb62(71)=abb62(71)+abb62(73)
      abb62(73)=abb62(14)*spak3k4
      abb62(74)=abb62(73)*spbl5k3
      abb62(71)=abb62(71)*abb62(74)
      abb62(75)=NC*spak2k4
      abb62(75)=abb62(75)-abb62(50)
      abb62(76)=abb62(11)*abb62(75)*abb62(59)
      abb62(77)=-abb62(61)*abb62(76)
      abb62(63)=abb62(63)*spak2k4
      abb62(78)=abb62(64)*abb62(11)
      abb62(79)=-abb62(78)*abb62(63)
      abb62(77)=abb62(77)+abb62(79)
      abb62(77)=spbl6k2*abb62(77)
      abb62(75)=abb62(14)*abb62(75)*abb62(69)
      abb62(61)=abb62(61)*abb62(75)
      abb62(79)=abb62(72)*abb62(14)
      abb62(63)=abb62(79)*abb62(63)
      abb62(61)=abb62(61)+abb62(63)
      abb62(61)=spbl5k2*abb62(61)
      abb62(61)=abb62(61)+abb62(77)+abb62(62)+abb62(71)
      abb62(61)=abb62(12)*abb62(61)
      abb62(62)=spak1k2**2
      abb62(63)=abb62(62)*abb62(7)
      abb62(71)=abb62(16)*spbk3k2
      abb62(77)=abb62(63)*abb62(71)
      abb62(80)=abb62(45)*c3
      abb62(81)=-abb62(80)*abb62(77)
      abb62(82)=abb62(62)*NC
      abb62(83)=abb62(82)*abb62(71)
      abb62(84)=abb62(40)*c3
      abb62(85)=abb62(83)*abb62(84)
      abb62(86)=abb62(7)*abb62(85)
      abb62(81)=abb62(81)+abb62(86)
      abb62(86)=spbl6k3*spak3k4
      abb62(81)=abb62(81)*abb62(86)
      abb62(87)=abb62(62)*abb62(9)
      abb62(88)=abb62(87)*abb62(71)
      abb62(89)=-abb62(80)*abb62(88)
      abb62(85)=abb62(9)*abb62(85)
      abb62(85)=abb62(89)+abb62(85)
      abb62(89)=spbl5k3*spak3k4
      abb62(85)=abb62(85)*abb62(89)
      abb62(90)=abb62(46)*c3
      abb62(91)=abb62(77)*abb62(90)
      abb62(92)=abb62(83)*abb62(41)
      abb62(93)=c3*abb62(7)
      abb62(94)=-abb62(93)*abb62(92)
      abb62(91)=abb62(91)+abb62(94)
      abb62(91)=spbl6k2*abb62(91)
      abb62(94)=abb62(88)*abb62(90)
      abb62(95)=c3*abb62(9)
      abb62(96)=-abb62(95)*abb62(92)
      abb62(94)=abb62(94)+abb62(96)
      abb62(94)=spbl5k2*abb62(94)
      abb62(81)=abb62(94)+abb62(91)+abb62(81)+abb62(85)
      abb62(85)=spbk7k1*abb62(6)
      abb62(81)=abb62(81)*abb62(85)
      abb62(91)=abb62(17)*abb62(20)
      abb62(94)=abb62(36)*abb62(2)
      abb62(94)=abb62(37)-abb62(94)
      abb62(96)=abb62(5)*spbk3k2
      abb62(94)=spak3k4*abb62(94)*abb62(35)*abb62(91)*abb62(16)*abb62(96)
      abb62(48)=abb62(48)*abb62(26)
      abb62(48)=abb62(48)-abb62(56)
      abb62(97)=abb62(48)*abb62(65)
      abb62(67)=abb62(67)*abb62(30)
      abb62(67)=abb62(67)-abb62(52)
      abb62(98)=abb62(67)*abb62(73)
      abb62(99)=abb62(97)-abb62(98)
      abb62(100)=abb62(73)*abb62(30)
      abb62(101)=abb62(65)*abb62(26)
      abb62(102)=abb62(100)-abb62(101)
      abb62(102)=abb62(102)*c2
      abb62(103)=-abb62(24)*abb62(102)
      abb62(103)=abb62(103)-abb62(99)
      abb62(91)=abb62(103)*abb62(71)*abb62(91)
      abb62(91)=abb62(94)+abb62(91)
      abb62(91)=spbk7k3*abb62(91)
      abb62(94)=abb62(49)*abb62(45)
      abb62(103)=abb62(45)*c1
      abb62(104)=abb62(103)*abb62(30)
      abb62(94)=abb62(94)-abb62(104)
      abb62(104)=abb62(39)*abb62(94)
      abb62(105)=abb62(40)*c1
      abb62(106)=abb62(84)-abb62(105)
      abb62(107)=-NC*abb62(39)*abb62(106)
      abb62(108)=abb62(30)*abb62(107)
      abb62(104)=abb62(108)+abb62(104)
      abb62(104)=spak3k4*abb62(104)
      abb62(108)=abb62(23)*abb62(98)
      abb62(25)=abb62(25)*c2
      abb62(109)=-abb62(100)*abb62(25)
      abb62(104)=abb62(109)+abb62(104)+abb62(108)
      abb62(104)=spbl6k3*abb62(104)
      abb62(42)=abb62(42)*NC
      abb62(42)=abb62(42)-abb62(47)
      abb62(47)=abb62(30)*c1
      abb62(47)=abb62(47)-abb62(49)
      abb62(108)=-abb62(47)*abb62(42)
      abb62(33)=c2*abb62(33)
      abb62(33)=abb62(33)+abb62(53)+abb62(108)
      abb62(33)=spbl6k2*abb62(33)
      abb62(33)=abb62(104)+abb62(33)
      abb62(33)=spak2l6*abb62(33)
      abb62(53)=abb62(54)*abb62(45)
      abb62(104)=abb62(80)*abb62(26)
      abb62(53)=abb62(53)-abb62(104)
      abb62(104)=-abb62(39)*abb62(53)
      abb62(108)=abb62(26)*abb62(107)
      abb62(104)=abb62(108)+abb62(104)
      abb62(104)=spak3k4*abb62(104)
      abb62(23)=-abb62(23)*abb62(97)
      abb62(25)=abb62(101)*abb62(25)
      abb62(23)=abb62(25)+abb62(104)+abb62(23)
      abb62(23)=spbl5k3*abb62(23)
      abb62(25)=abb62(26)*c3
      abb62(25)=abb62(25)-abb62(54)
      abb62(104)=abb62(25)*abb62(42)
      abb62(29)=-c2*abb62(29)
      abb62(29)=abb62(29)-abb62(57)+abb62(104)
      abb62(29)=spbl5k2*abb62(29)
      abb62(23)=abb62(23)+abb62(29)
      abb62(23)=spak2l5*abb62(23)
      abb62(29)=abb62(46)*c1
      abb62(57)=abb62(77)*abb62(29)
      abb62(104)=c1*abb62(7)
      abb62(108)=-abb62(104)*abb62(92)
      abb62(57)=abb62(57)+abb62(108)
      abb62(57)=abb62(13)*abb62(57)
      abb62(108)=abb62(24)*abb62(62)*abb62(40)
      abb62(71)=abb62(71)*abb62(108)
      abb62(109)=abb62(71)*spak2k4
      abb62(110)=c4*abb62(13)
      abb62(111)=abb62(110)*abb62(7)
      abb62(112)=-abb62(111)*abb62(109)
      abb62(57)=abb62(57)+abb62(112)
      abb62(57)=spbl6k1*abb62(57)
      abb62(112)=abb62(88)*abb62(29)
      abb62(113)=c1*abb62(9)
      abb62(92)=-abb62(113)*abb62(92)
      abb62(92)=abb62(112)+abb62(92)
      abb62(92)=abb62(13)*abb62(92)
      abb62(112)=abb62(110)*abb62(9)
      abb62(114)=-abb62(112)*abb62(109)
      abb62(92)=abb62(92)+abb62(114)
      abb62(92)=spbl5k1*abb62(92)
      abb62(57)=abb62(57)+abb62(92)
      abb62(57)=spbk7k2*abb62(57)
      abb62(92)=abb62(80)-abb62(103)
      abb62(39)=abb62(92)*abb62(39)
      abb62(39)=abb62(39)+abb62(107)
      abb62(107)=abb62(86)*spbk7l5*abb62(39)
      abb62(39)=abb62(89)*spbk7l6*abb62(39)
      abb62(114)=abb62(7)*abb62(86)
      abb62(115)=abb62(9)*abb62(89)
      abb62(114)=abb62(114)+abb62(115)
      abb62(114)=abb62(71)*abb62(114)
      abb62(115)=spbl6k2*abb62(7)
      abb62(116)=spbl5k2*abb62(9)
      abb62(115)=abb62(115)+abb62(116)
      abb62(109)=-abb62(109)*abb62(115)
      abb62(109)=abb62(109)+abb62(114)
      abb62(114)=abb62(85)*c4
      abb62(109)=abb62(109)*abb62(114)
      abb62(77)=-abb62(103)*abb62(77)
      abb62(83)=abb62(83)*abb62(105)
      abb62(116)=abb62(7)*abb62(83)
      abb62(77)=abb62(77)+abb62(116)
      abb62(116)=abb62(13)*spbk7k3
      abb62(117)=abb62(116)*spak3k4
      abb62(77)=abb62(77)*abb62(117)
      abb62(118)=abb62(110)*spbk7k3
      abb62(119)=abb62(118)*spak3k4
      abb62(71)=abb62(119)*abb62(71)
      abb62(120)=abb62(7)*abb62(71)
      abb62(77)=abb62(77)+abb62(120)
      abb62(77)=spbl6k1*abb62(77)
      abb62(88)=-abb62(103)*abb62(88)
      abb62(83)=abb62(9)*abb62(83)
      abb62(83)=abb62(88)+abb62(83)
      abb62(83)=abb62(83)*abb62(117)
      abb62(71)=abb62(9)*abb62(71)
      abb62(71)=abb62(83)+abb62(71)
      abb62(71)=spbl5k1*abb62(71)
      abb62(83)=c3*spbk7l5
      abb62(83)=abb62(83)-abb62(59)
      abb62(88)=spbl6k2*abb62(83)*abb62(42)
      abb62(120)=c1*spbk7l6
      abb62(120)=abb62(120)-abb62(69)
      abb62(42)=-spbl5k2*abb62(120)*abb62(42)
      abb62(23)=abb62(57)+abb62(71)+abb62(77)+abb62(109)+abb62(81)+abb62(23)+ab&
      &b62(33)+abb62(61)+abb62(42)+abb62(88)+abb62(39)+abb62(91)+abb62(107)+abb&
      &62(34)
      abb62(23)=8.0_ki*abb62(23)
      abb62(15)=abb62(15)*abb62(4)
      abb62(15)=abb62(15)**2
      abb62(17)=abb62(17)*abb62(15)
      abb62(20)=abb62(20)*abb62(17)
      abb62(33)=abb62(20)*abb62(96)
      abb62(34)=abb62(33)*abb62(35)
      abb62(39)=-abb62(34)*abb62(37)
      abb62(34)=abb62(36)*abb62(34)
      abb62(42)=-abb62(2)*abb62(34)
      abb62(39)=abb62(39)-abb62(42)
      abb62(39)=abb62(39)*spak3k4
      abb62(42)=abb62(20)*spbk3k2
      abb62(57)=abb62(42)*abb62(99)
      abb62(61)=abb62(42)*abb62(24)
      abb62(71)=-abb62(61)*abb62(102)
      abb62(39)=abb62(39)-abb62(71)+abb62(57)
      abb62(57)=abb62(39)*spbk7k3
      abb62(62)=abb62(62)*abb62(15)
      abb62(71)=spbk3k2*abb62(62)
      abb62(77)=abb62(24)*abb62(71)*abb62(40)
      abb62(81)=abb62(77)*abb62(110)
      abb62(88)=abb62(81)*spak3k4
      abb62(91)=abb62(88)*spbk7k3
      abb62(96)=abb62(91)*abb62(7)
      abb62(99)=abb62(71)*NC
      abb62(107)=abb62(99)*abb62(7)
      abb62(109)=abb62(107)*abb62(105)
      abb62(121)=abb62(71)*abb62(7)
      abb62(122)=abb62(121)*abb62(103)
      abb62(109)=abb62(109)-abb62(122)
      abb62(122)=abb62(109)*abb62(117)
      abb62(96)=abb62(96)+abb62(122)
      abb62(96)=abb62(96)*spbl6k1
      abb62(91)=abb62(91)*abb62(9)
      abb62(122)=abb62(99)*abb62(9)
      abb62(123)=abb62(122)*abb62(105)
      abb62(124)=abb62(71)*abb62(9)
      abb62(125)=abb62(124)*abb62(103)
      abb62(123)=abb62(123)-abb62(125)
      abb62(125)=abb62(123)*abb62(117)
      abb62(91)=abb62(91)+abb62(125)
      abb62(91)=abb62(91)*spbl5k1
      abb62(125)=abb62(17)*spbk3k2
      abb62(126)=abb62(125)*abb62(40)
      abb62(127)=abb62(126)*NC
      abb62(128)=abb62(45)*abb62(125)
      abb62(127)=abb62(127)-abb62(128)
      abb62(129)=-abb62(83)*abb62(127)
      abb62(130)=abb62(129)*abb62(86)
      abb62(131)=-abb62(120)*abb62(127)
      abb62(132)=abb62(131)*abb62(89)
      abb62(57)=-abb62(91)-abb62(96)+abb62(132)+abb62(57)-abb62(130)
      abb62(91)=abb62(32)-abb62(28)
      abb62(91)=abb62(91)*c2
      abb62(21)=abb62(17)*abb62(21)
      abb62(96)=abb62(21)*spbk3k2
      abb62(130)=abb62(96)*abb62(24)
      abb62(132)=-abb62(130)*abb62(91)
      abb62(133)=abb62(41)*abb62(125)
      abb62(134)=abb62(133)*abb62(26)
      abb62(135)=abb62(133)*abb62(30)
      abb62(136)=abb62(134)+abb62(135)
      abb62(136)=-abb62(136)*abb62(37)
      abb62(137)=abb62(46)*abb62(125)
      abb62(138)=abb62(137)*abb62(26)
      abb62(139)=abb62(137)*abb62(30)
      abb62(140)=abb62(138)+abb62(139)
      abb62(140)=-abb62(140)*abb62(36)
      abb62(141)=abb62(96)*abb62(50)
      abb62(142)=abb62(141)*abb62(49)
      abb62(143)=abb62(96)*spak2k4
      abb62(144)=abb62(143)*abb62(52)
      abb62(142)=abb62(142)-abb62(144)
      abb62(142)=abb62(142)*abb62(14)
      abb62(141)=abb62(141)*abb62(54)
      abb62(143)=abb62(143)*abb62(56)
      abb62(141)=abb62(141)-abb62(143)
      abb62(141)=abb62(141)*abb62(11)
      abb62(132)=abb62(132)-abb62(136)+abb62(140)+abb62(142)-abb62(141)
      abb62(136)=abb62(43)*abb62(132)
      abb62(71)=abb62(46)*abb62(71)
      abb62(99)=abb62(99)*abb62(41)
      abb62(71)=abb62(71)-abb62(99)
      abb62(99)=-abb62(113)*abb62(71)
      abb62(140)=abb62(99)*abb62(13)
      abb62(81)=abb62(81)*spak2k4
      abb62(143)=abb62(9)*abb62(81)
      abb62(140)=abb62(140)+abb62(143)
      abb62(140)=abb62(140)*spbl5k1
      abb62(144)=-abb62(104)*abb62(71)
      abb62(145)=abb62(144)*abb62(13)
      abb62(81)=abb62(7)*abb62(81)
      abb62(145)=abb62(145)+abb62(81)
      abb62(145)=abb62(145)*spbl6k1
      abb62(140)=abb62(140)+abb62(145)
      abb62(145)=abb62(140)*spbk7k2
      abb62(146)=abb62(133)*NC
      abb62(146)=abb62(146)-abb62(137)
      abb62(147)=-abb62(83)*abb62(146)
      abb62(148)=abb62(147)*spbl6k2
      abb62(146)=-abb62(120)*abb62(146)
      abb62(149)=abb62(146)*spbl5k2
      abb62(136)=-abb62(149)+abb62(148)+abb62(136)+abb62(145)
      abb62(148)=abb62(133)*abb62(49)
      abb62(135)=abb62(135)*c1
      abb62(135)=abb62(148)-abb62(135)
      abb62(135)=abb62(135)*NC
      abb62(148)=abb62(137)*abb62(49)
      abb62(139)=abb62(139)*c1
      abb62(149)=abb62(130)*c2
      abb62(150)=abb62(149)*abb62(32)
      abb62(135)=abb62(142)-abb62(150)-abb62(135)+abb62(148)-abb62(139)
      abb62(139)=abb62(135)*spbl6k2
      abb62(47)=-spak3k4*abb62(47)*abb62(127)
      abb62(142)=abb62(100)*abb62(149)
      abb62(98)=-abb62(96)*abb62(98)
      abb62(47)=abb62(47)+abb62(142)+abb62(98)
      abb62(142)=abb62(47)*spbl6k3
      abb62(148)=-abb62(142)-abb62(139)
      abb62(148)=spak2l6*abb62(148)
      abb62(133)=abb62(133)*abb62(54)
      abb62(134)=abb62(134)*c3
      abb62(133)=abb62(133)-abb62(134)
      abb62(133)=abb62(133)*NC
      abb62(134)=abb62(137)*abb62(54)
      abb62(137)=abb62(138)*c3
      abb62(138)=abb62(149)*abb62(28)
      abb62(133)=abb62(141)-abb62(133)-abb62(138)+abb62(134)-abb62(137)
      abb62(134)=abb62(133)*spbl5k2
      abb62(25)=-spak3k4*abb62(25)*abb62(127)
      abb62(127)=abb62(101)*abb62(149)
      abb62(96)=-abb62(96)*abb62(97)
      abb62(25)=abb62(25)+abb62(127)+abb62(96)
      abb62(97)=abb62(25)*spbl5k3
      abb62(127)=abb62(97)+abb62(134)
      abb62(127)=spak2l5*abb62(127)
      abb62(125)=abb62(125)*abb62(19)
      abb62(137)=abb62(125)*abb62(50)
      abb62(59)=abb62(137)*abb62(59)
      abb62(138)=spak2k4*abb62(125)
      abb62(60)=abb62(138)*abb62(60)
      abb62(59)=abb62(59)-abb62(60)
      abb62(59)=abb62(59)*abb62(11)
      abb62(60)=abb62(125)*abb62(24)
      abb62(141)=abb62(60)*spak2k4
      abb62(149)=abb62(141)*abb62(78)
      abb62(59)=abb62(59)-abb62(149)
      abb62(149)=abb62(59)*spbl6k2
      abb62(69)=abb62(137)*abb62(69)
      abb62(70)=abb62(138)*abb62(70)
      abb62(69)=abb62(69)-abb62(70)
      abb62(69)=abb62(69)*abb62(14)
      abb62(70)=abb62(141)*abb62(79)
      abb62(69)=abb62(69)-abb62(70)
      abb62(70)=abb62(69)*spbl5k2
      abb62(70)=abb62(149)-abb62(70)
      abb62(137)=-abb62(125)*abb62(68)
      abb62(138)=abb62(60)*abb62(72)
      abb62(137)=abb62(137)+abb62(138)
      abb62(137)=abb62(73)*abb62(137)
      abb62(138)=abb62(137)*spbl5k3
      abb62(125)=-abb62(125)*abb62(58)
      abb62(60)=abb62(60)*abb62(64)
      abb62(60)=abb62(125)+abb62(60)
      abb62(60)=abb62(65)*abb62(60)
      abb62(125)=abb62(60)*spbl6k3
      abb62(125)=abb62(138)-abb62(125)
      abb62(138)=-abb62(125)+abb62(70)
      abb62(138)=abb62(12)*abb62(138)
      abb62(141)=-abb62(95)*abb62(71)
      abb62(149)=abb62(141)*spbl5k2
      abb62(71)=-abb62(93)*abb62(71)
      abb62(150)=abb62(71)*spbl6k2
      abb62(149)=abb62(149)+abb62(150)
      abb62(122)=abb62(122)*abb62(84)
      abb62(124)=abb62(124)*abb62(80)
      abb62(122)=abb62(122)-abb62(124)
      abb62(124)=abb62(122)*abb62(89)
      abb62(107)=abb62(107)*abb62(84)
      abb62(121)=abb62(121)*abb62(80)
      abb62(107)=abb62(107)-abb62(121)
      abb62(121)=abb62(107)*abb62(86)
      abb62(121)=abb62(124)+abb62(121)
      abb62(124)=abb62(121)-abb62(149)
      abb62(124)=abb62(124)*abb62(85)
      abb62(150)=abb62(77)*spak2k4
      abb62(151)=abb62(7)*abb62(150)
      abb62(152)=abb62(151)*spbl6k2
      abb62(150)=abb62(9)*abb62(150)
      abb62(153)=abb62(150)*spbl5k2
      abb62(152)=abb62(152)+abb62(153)
      abb62(77)=abb62(77)*spak3k4
      abb62(153)=abb62(77)*abb62(9)
      abb62(154)=abb62(153)*spbl5k3
      abb62(77)=abb62(77)*abb62(7)
      abb62(155)=abb62(77)*spbl6k3
      abb62(154)=abb62(154)+abb62(155)
      abb62(155)=abb62(154)-abb62(152)
      abb62(155)=abb62(155)*abb62(114)
      abb62(124)=abb62(155)+abb62(124)+abb62(127)+abb62(148)+abb62(138)-abb62(5&
      &7)-abb62(136)
      abb62(124)=32.0_ki*abb62(124)
      abb62(127)=-2.0_ki*abb62(43)
      abb62(127)=abb62(132)*abb62(127)
      abb62(132)=2.0_ki*spbl6k2
      abb62(138)=-abb62(135)*abb62(132)
      abb62(138)=-abb62(142)+abb62(138)
      abb62(138)=spak2l6*abb62(138)
      abb62(148)=2.0_ki*spbl5k2
      abb62(155)=abb62(133)*abb62(148)
      abb62(155)=abb62(97)+abb62(155)
      abb62(155)=spak2l5*abb62(155)
      abb62(156)=abb62(59)*abb62(132)
      abb62(157)=-abb62(69)*abb62(148)
      abb62(156)=abb62(157)+abb62(156)-abb62(125)
      abb62(156)=abb62(12)*abb62(156)
      abb62(157)=-abb62(71)*abb62(132)
      abb62(158)=-abb62(141)*abb62(148)
      abb62(157)=abb62(158)+abb62(157)+abb62(121)
      abb62(157)=abb62(157)*abb62(85)
      abb62(158)=-abb62(151)*abb62(132)
      abb62(159)=-abb62(150)*abb62(148)
      abb62(158)=abb62(159)+abb62(158)+abb62(154)
      abb62(158)=abb62(158)*abb62(114)
      abb62(132)=-abb62(147)*abb62(132)
      abb62(148)=abb62(146)*abb62(148)
      abb62(127)=-2.0_ki*abb62(145)+abb62(158)+abb62(157)+abb62(155)+abb62(138)&
      &+abb62(156)+abb62(148)+abb62(132)+abb62(127)-abb62(57)
      abb62(127)=16.0_ki*abb62(127)
      abb62(132)=2.0_ki*abb62(142)+abb62(139)
      abb62(132)=spak2l6*abb62(132)
      abb62(97)=-2.0_ki*abb62(97)-abb62(134)
      abb62(97)=spak2l5*abb62(97)
      abb62(70)=2.0_ki*abb62(125)-abb62(70)
      abb62(70)=abb62(12)*abb62(70)
      abb62(121)=-2.0_ki*abb62(121)+abb62(149)
      abb62(121)=abb62(121)*abb62(85)
      abb62(125)=-2.0_ki*abb62(154)+abb62(152)
      abb62(125)=abb62(125)*abb62(114)
      abb62(57)=abb62(125)+abb62(121)+abb62(97)+abb62(132)+abb62(70)+abb62(136)&
      &+2.0_ki*abb62(57)
      abb62(57)=16.0_ki*abb62(57)
      abb62(70)=-abb62(2)*abb62(44)
      abb62(70)=-abb62(38)-abb62(70)
      abb62(70)=abb62(20)*abb62(5)*abb62(70)
      abb62(97)=spak3k4*abb62(70)
      abb62(121)=-abb62(20)*abb62(48)
      abb62(125)=-abb62(121)*abb62(65)
      abb62(132)=-abb62(20)*abb62(67)
      abb62(134)=abb62(132)*abb62(73)
      abb62(20)=abb62(20)*abb62(24)
      abb62(136)=abb62(20)*abb62(102)
      abb62(97)=abb62(136)+abb62(134)+abb62(97)+abb62(125)
      abb62(97)=spbk7k3*abb62(97)
      abb62(125)=abb62(106)*NC
      abb62(134)=-abb62(125)-abb62(103)
      abb62(136)=abb62(30)*abb62(17)
      abb62(134)=abb62(136)*abb62(134)
      abb62(138)=abb62(45)*abb62(17)
      abb62(139)=abb62(138)*abb62(49)
      abb62(134)=abb62(139)+abb62(134)
      abb62(139)=-spak3k4*abb62(134)
      abb62(67)=-abb62(21)*abb62(67)
      abb62(73)=abb62(67)*abb62(73)
      abb62(142)=abb62(21)*abb62(24)
      abb62(145)=abb62(142)*c2
      abb62(100)=abb62(100)*abb62(145)
      abb62(73)=abb62(100)+abb62(139)+abb62(73)
      abb62(100)=spak2l6*spbl6k3
      abb62(73)=abb62(73)*abb62(100)
      abb62(139)=-abb62(125)+abb62(80)
      abb62(148)=abb62(26)*abb62(17)
      abb62(139)=abb62(148)*abb62(139)
      abb62(138)=abb62(138)*abb62(54)
      abb62(138)=-abb62(138)+abb62(139)
      abb62(139)=-spak3k4*abb62(138)
      abb62(48)=-abb62(21)*abb62(48)
      abb62(65)=-abb62(48)*abb62(65)
      abb62(101)=-abb62(101)*abb62(145)
      abb62(65)=abb62(101)+abb62(139)+abb62(65)
      abb62(101)=spak2l5*spbl5k3
      abb62(65)=abb62(65)*abb62(101)
      abb62(139)=abb62(17)*abb62(19)
      abb62(149)=-abb62(139)*abb62(58)
      abb62(152)=abb62(139)*abb62(24)
      abb62(64)=-abb62(152)*abb62(64)
      abb62(64)=-abb62(149)+abb62(64)
      abb62(64)=abb62(64)*abb62(66)
      abb62(66)=-abb62(139)*abb62(68)
      abb62(72)=abb62(152)*abb62(72)
      abb62(72)=abb62(66)+abb62(72)
      abb62(72)=abb62(72)*abb62(74)
      abb62(64)=abb62(64)+abb62(72)
      abb62(64)=abb62(12)*abb62(64)
      abb62(72)=abb62(62)*abb62(7)
      abb62(74)=abb62(72)*abb62(80)
      abb62(154)=abb62(62)*NC
      abb62(155)=abb62(154)*abb62(84)
      abb62(156)=abb62(155)*abb62(7)
      abb62(74)=abb62(74)-abb62(156)
      abb62(156)=abb62(74)*abb62(86)
      abb62(62)=abb62(62)*abb62(9)
      abb62(157)=abb62(62)*abb62(80)
      abb62(155)=abb62(155)*abb62(9)
      abb62(155)=abb62(157)-abb62(155)
      abb62(157)=abb62(155)*abb62(89)
      abb62(156)=abb62(156)+abb62(157)
      abb62(156)=abb62(156)*abb62(85)
      abb62(15)=abb62(15)*abb62(108)
      abb62(157)=abb62(15)*abb62(7)
      abb62(158)=-abb62(86)*abb62(157)
      abb62(159)=abb62(15)*abb62(9)
      abb62(160)=-abb62(89)*abb62(159)
      abb62(158)=abb62(158)+abb62(160)
      abb62(158)=abb62(158)*abb62(114)
      abb62(160)=abb62(72)*abb62(103)
      abb62(161)=abb62(154)*abb62(105)
      abb62(162)=abb62(161)*abb62(7)
      abb62(160)=abb62(160)-abb62(162)
      abb62(162)=abb62(160)*abb62(117)
      abb62(163)=-abb62(157)*abb62(119)
      abb62(162)=abb62(162)+abb62(163)
      abb62(162)=spbl6k1*abb62(162)
      abb62(163)=abb62(62)*abb62(103)
      abb62(161)=abb62(161)*abb62(9)
      abb62(161)=abb62(163)-abb62(161)
      abb62(117)=abb62(161)*abb62(117)
      abb62(119)=-abb62(159)*abb62(119)
      abb62(117)=abb62(117)+abb62(119)
      abb62(117)=spbl5k1*abb62(117)
      abb62(119)=abb62(125)-abb62(92)
      abb62(125)=-abb62(119)*abb62(17)*spbk7l5
      abb62(86)=-abb62(125)*abb62(86)
      abb62(119)=abb62(119)*abb62(17)*spbk7l6
      abb62(89)=abb62(119)*abb62(89)
      abb62(64)=abb62(117)+abb62(162)+abb62(158)+abb62(156)+abb62(65)+abb62(73)&
      &+abb62(64)+abb62(89)+abb62(97)+abb62(86)
      abb62(64)=spbk4k2*abb62(64)
      abb62(35)=abb62(45)*abb62(35)
      abb62(45)=abb62(36)*abb62(17)*abb62(35)
      abb62(65)=abb62(136)+abb62(148)
      abb62(65)=-abb62(40)*abb62(65)*abb62(37)
      abb62(73)=abb62(26)*abb62(11)
      abb62(86)=abb62(30)*abb62(14)
      abb62(89)=abb62(73)-abb62(86)
      abb62(97)=-abb62(89)*abb62(145)
      abb62(48)=abb62(48)*abb62(11)
      abb62(67)=abb62(67)*abb62(14)
      abb62(45)=abb62(65)+abb62(67)-abb62(48)+abb62(97)+abb62(45)
      abb62(45)=abb62(45)*es34
      abb62(40)=-abb62(40)*abb62(38)
      abb62(35)=-abb62(36)*abb62(35)
      abb62(35)=-abb62(40)+abb62(35)
      abb62(35)=abb62(18)*abb62(35)
      abb62(40)=abb62(22)*abb62(24)
      abb62(65)=abb62(40)*abb62(86)
      abb62(40)=abb62(40)*abb62(73)
      abb62(97)=abb62(65)-abb62(40)
      abb62(97)=abb62(97)*c2
      abb62(56)=abb62(22)*abb62(56)
      abb62(117)=abb62(2)*abb62(22)
      abb62(156)=abb62(117)*abb62(54)
      abb62(56)=abb62(56)-abb62(156)
      abb62(56)=abb62(56)*abb62(11)
      abb62(22)=abb62(22)*abb62(52)
      abb62(52)=abb62(117)*abb62(49)
      abb62(22)=abb62(22)-abb62(52)
      abb62(22)=abb62(22)*abb62(14)
      abb62(35)=-abb62(22)+abb62(56)+abb62(45)-abb62(97)+abb62(35)
      abb62(35)=-abb62(35)*abb62(43)
      abb62(45)=abb62(145)*abb62(86)
      abb62(45)=abb62(67)+abb62(45)-abb62(134)
      abb62(52)=-es34*abb62(45)
      abb62(67)=-abb62(18)*abb62(94)
      abb62(86)=-NC*abb62(18)*abb62(106)
      abb62(30)=-abb62(30)*abb62(86)
      abb62(65)=c2*abb62(65)
      abb62(22)=abb62(52)+abb62(65)+abb62(22)+abb62(30)+abb62(67)
      abb62(22)=spak2l6*abb62(22)
      abb62(30)=abb62(92)*abb62(18)
      abb62(30)=abb62(30)+abb62(86)
      abb62(52)=-spbk7l5*abb62(30)
      abb62(22)=abb62(22)+abb62(52)
      abb62(22)=spbl6k2*abb62(22)
      abb62(52)=abb62(145)*abb62(73)
      abb62(48)=abb62(48)+abb62(52)+abb62(138)
      abb62(52)=es34*abb62(48)
      abb62(53)=abb62(18)*abb62(53)
      abb62(26)=-abb62(26)*abb62(86)
      abb62(40)=-c2*abb62(40)
      abb62(26)=abb62(52)+abb62(40)-abb62(56)+abb62(26)+abb62(53)
      abb62(26)=spak2l5*abb62(26)
      abb62(30)=-spbk7l6*abb62(30)
      abb62(26)=abb62(26)+abb62(30)
      abb62(26)=spbl5k2*abb62(26)
      abb62(30)=-es34*abb62(160)
      abb62(40)=abb62(63)*abb62(16)
      abb62(52)=abb62(103)*abb62(40)
      abb62(53)=abb62(82)*abb62(16)
      abb62(56)=abb62(53)*abb62(105)
      abb62(63)=-abb62(7)*abb62(56)
      abb62(30)=abb62(30)+abb62(52)+abb62(63)
      abb62(30)=abb62(13)*abb62(30)
      abb62(52)=-abb62(16)*abb62(108)
      abb62(63)=abb62(7)*abb62(52)
      abb62(65)=es34*abb62(157)
      abb62(63)=abb62(63)+abb62(65)
      abb62(63)=abb62(63)*abb62(110)
      abb62(30)=abb62(30)+abb62(63)
      abb62(30)=spbl6k1*abb62(30)
      abb62(63)=-es34*abb62(161)
      abb62(16)=abb62(87)*abb62(16)
      abb62(65)=abb62(103)*abb62(16)
      abb62(56)=-abb62(9)*abb62(56)
      abb62(56)=abb62(63)+abb62(65)+abb62(56)
      abb62(56)=abb62(13)*abb62(56)
      abb62(63)=abb62(9)*abb62(52)
      abb62(65)=es34*abb62(159)
      abb62(63)=abb62(63)+abb62(65)
      abb62(63)=abb62(63)*abb62(110)
      abb62(56)=abb62(56)+abb62(63)
      abb62(56)=spbl5k1*abb62(56)
      abb62(30)=abb62(30)+abb62(56)
      abb62(30)=spbk7k2*abb62(30)
      abb62(56)=abb62(149)*abb62(11)
      abb62(63)=abb62(152)*abb62(78)
      abb62(56)=abb62(56)+abb62(63)
      abb62(65)=spbl6k2*abb62(56)
      abb62(66)=abb62(66)*abb62(14)
      abb62(67)=abb62(152)*abb62(79)
      abb62(66)=abb62(66)+abb62(67)
      abb62(73)=-spbl5k2*abb62(66)
      abb62(65)=abb62(65)+abb62(73)
      abb62(65)=es34*abb62(65)
      abb62(18)=abb62(18)*abb62(19)
      abb62(19)=abb62(11)*abb62(18)*abb62(58)
      abb62(24)=abb62(24)*abb62(18)
      abb62(58)=-abb62(24)*abb62(78)
      abb62(19)=abb62(19)+abb62(58)
      abb62(19)=spbl6k2*abb62(19)
      abb62(18)=-abb62(14)*abb62(18)*abb62(68)
      abb62(24)=abb62(24)*abb62(79)
      abb62(18)=abb62(18)+abb62(24)
      abb62(18)=spbl5k2*abb62(18)
      abb62(18)=abb62(65)+abb62(19)+abb62(18)
      abb62(18)=abb62(12)*abb62(18)
      abb62(19)=-spbl6k2*abb62(74)
      abb62(24)=-spbl5k2*abb62(155)
      abb62(19)=abb62(19)+abb62(24)
      abb62(19)=es34*abb62(19)
      abb62(24)=abb62(80)*abb62(40)
      abb62(40)=abb62(53)*abb62(84)
      abb62(53)=-abb62(7)*abb62(40)
      abb62(24)=abb62(24)+abb62(53)
      abb62(24)=spbl6k2*abb62(24)
      abb62(16)=abb62(80)*abb62(16)
      abb62(40)=-abb62(9)*abb62(40)
      abb62(16)=abb62(16)+abb62(40)
      abb62(16)=spbl5k2*abb62(16)
      abb62(16)=abb62(19)+abb62(24)+abb62(16)
      abb62(16)=abb62(16)*abb62(85)
      abb62(19)=spbl6k2*abb62(125)
      abb62(24)=-spbl5k2*abb62(119)
      abb62(19)=abb62(19)+abb62(24)
      abb62(19)=es34*abb62(19)
      abb62(24)=abb62(159)*spbl5k2
      abb62(40)=abb62(157)*spbl6k2
      abb62(24)=abb62(24)+abb62(40)
      abb62(40)=es34*abb62(24)
      abb62(52)=abb62(52)*abb62(115)
      abb62(40)=abb62(40)+abb62(52)
      abb62(40)=abb62(40)*abb62(114)
      abb62(16)=abb62(64)+abb62(30)+abb62(40)+abb62(16)+abb62(18)+abb62(19)+abb&
      &62(35)+abb62(26)+abb62(22)
      abb62(18)=abb62(88)*abb62(7)
      abb62(19)=abb62(13)*spak3k4
      abb62(22)=abb62(109)*abb62(19)
      abb62(18)=abb62(18)+abb62(22)
      abb62(18)=abb62(18)*spbl6k1
      abb62(22)=abb62(88)*abb62(9)
      abb62(19)=abb62(123)*abb62(19)
      abb62(19)=abb62(22)+abb62(19)
      abb62(19)=abb62(19)*spbl5k1
      abb62(18)=abb62(18)+abb62(19)
      abb62(19)=-abb62(39)+abb62(18)
      abb62(19)=spbk7k4*abb62(19)
      abb62(22)=abb62(47)*spak2l6
      abb62(26)=abb62(107)*abb62(85)
      abb62(26)=abb62(26)+abb62(129)
      abb62(26)=spak3k4*abb62(26)
      abb62(30)=abb62(12)*abb62(60)
      abb62(35)=abb62(114)*abb62(77)
      abb62(26)=abb62(35)-abb62(22)+abb62(30)+abb62(26)
      abb62(26)=spbl6k4*abb62(26)
      abb62(25)=abb62(25)*spak2l5
      abb62(30)=abb62(122)*abb62(85)
      abb62(30)=abb62(30)-abb62(131)
      abb62(30)=spak3k4*abb62(30)
      abb62(35)=-abb62(12)*abb62(137)
      abb62(39)=abb62(114)*abb62(153)
      abb62(30)=abb62(39)+abb62(25)+abb62(35)+abb62(30)
      abb62(30)=spbl5k4*abb62(30)
      abb62(16)=abb62(30)+abb62(26)+2.0_ki*abb62(16)+abb62(19)
      abb62(16)=8.0_ki*abb62(16)
      abb62(19)=abb62(121)*abb62(11)
      abb62(20)=c2*abb62(89)*abb62(20)
      abb62(26)=abb62(132)*abb62(14)
      abb62(19)=-abb62(19)-abb62(20)+abb62(26)+abb62(70)
      abb62(19)=abb62(19)*spbk7k3
      abb62(20)=abb62(159)*abb62(118)
      abb62(26)=abb62(161)*abb62(116)
      abb62(20)=abb62(20)-abb62(26)
      abb62(20)=abb62(20)*spbl5k1
      abb62(26)=abb62(157)*abb62(118)
      abb62(30)=abb62(160)*abb62(116)
      abb62(26)=abb62(26)-abb62(30)
      abb62(26)=abb62(26)*spbl6k1
      abb62(30)=abb62(159)*spbl5k3
      abb62(35)=abb62(157)*spbl6k3
      abb62(30)=abb62(30)+abb62(35)
      abb62(30)=abb62(30)*abb62(114)
      abb62(35)=abb62(155)*spbl5k3
      abb62(39)=abb62(74)*spbl6k3
      abb62(35)=abb62(35)+abb62(39)
      abb62(35)=abb62(35)*abb62(85)
      abb62(39)=abb62(66)*spbl5k3
      abb62(40)=abb62(56)*spbl6k3
      abb62(39)=abb62(39)-abb62(40)
      abb62(39)=abb62(39)*abb62(12)
      abb62(40)=abb62(48)*abb62(101)
      abb62(45)=abb62(45)*abb62(100)
      abb62(47)=abb62(119)*spbl5k3
      abb62(48)=abb62(125)*spbl6k3
      abb62(19)=abb62(40)-abb62(45)+abb62(30)-abb62(35)-abb62(39)-abb62(19)-abb&
      &62(47)+abb62(48)+abb62(20)+abb62(26)
      abb62(20)=es23+es34
      abb62(19)=abb62(19)*abb62(20)
      abb62(20)=abb62(136)*abb62(46)
      abb62(26)=abb62(148)*abb62(46)
      abb62(30)=abb62(20)+abb62(26)
      abb62(30)=abb62(30)*abb62(36)
      abb62(35)=abb62(136)*abb62(41)
      abb62(36)=abb62(148)*abb62(41)
      abb62(39)=abb62(35)+abb62(36)
      abb62(39)=-abb62(39)*abb62(37)
      abb62(40)=-abb62(142)*abb62(91)
      abb62(45)=-abb62(21)*abb62(51)
      abb62(21)=-abb62(21)*abb62(55)
      abb62(30)=abb62(39)-abb62(21)+abb62(45)-abb62(40)+abb62(30)
      abb62(30)=abb62(30)*abb62(43)
      abb62(39)=abb62(41)*abb62(17)
      abb62(40)=abb62(49)*abb62(39)
      abb62(35)=-c1*abb62(35)
      abb62(35)=abb62(40)+abb62(35)
      abb62(35)=NC*abb62(35)
      abb62(17)=abb62(46)*abb62(17)
      abb62(40)=-abb62(49)*abb62(17)
      abb62(20)=c1*abb62(20)
      abb62(32)=abb62(32)*abb62(145)
      abb62(20)=abb62(32)+abb62(45)+abb62(35)+abb62(40)+abb62(20)
      abb62(20)=spak2l6*abb62(20)
      abb62(32)=abb62(39)*NC
      abb62(32)=abb62(32)-abb62(17)
      abb62(35)=abb62(83)*abb62(32)
      abb62(20)=abb62(20)+abb62(35)
      abb62(20)=spbl6k2*abb62(20)
      abb62(35)=c3*abb62(36)
      abb62(36)=-abb62(54)*abb62(39)
      abb62(35)=abb62(35)+abb62(36)
      abb62(35)=NC*abb62(35)
      abb62(26)=-c3*abb62(26)
      abb62(17)=abb62(54)*abb62(17)
      abb62(28)=-abb62(28)*abb62(145)
      abb62(17)=abb62(28)-abb62(21)+abb62(35)+abb62(26)+abb62(17)
      abb62(17)=spak2l5*abb62(17)
      abb62(21)=-abb62(120)*abb62(32)
      abb62(17)=abb62(17)+abb62(21)
      abb62(17)=spbl5k2*abb62(17)
      abb62(21)=abb62(72)*abb62(29)
      abb62(26)=abb62(154)*abb62(41)
      abb62(28)=-abb62(104)*abb62(26)
      abb62(21)=abb62(21)+abb62(28)
      abb62(21)=abb62(13)*abb62(21)
      abb62(15)=abb62(15)*spak2k4
      abb62(28)=-abb62(111)*abb62(15)
      abb62(21)=abb62(21)+abb62(28)
      abb62(21)=spbl6k1*abb62(21)
      abb62(28)=abb62(62)*abb62(29)
      abb62(29)=-abb62(113)*abb62(26)
      abb62(28)=abb62(28)+abb62(29)
      abb62(28)=abb62(13)*abb62(28)
      abb62(15)=-abb62(112)*abb62(15)
      abb62(15)=abb62(28)+abb62(15)
      abb62(15)=spbl5k1*abb62(15)
      abb62(15)=abb62(21)+abb62(15)
      abb62(15)=spbk7k2*abb62(15)
      abb62(21)=-abb62(139)*abb62(76)
      abb62(28)=-spak2k4*abb62(63)
      abb62(21)=abb62(21)+abb62(28)
      abb62(21)=spbl6k2*abb62(21)
      abb62(28)=abb62(139)*abb62(75)
      abb62(29)=spak2k4*abb62(67)
      abb62(28)=abb62(28)+abb62(29)
      abb62(28)=spbl5k2*abb62(28)
      abb62(21)=abb62(21)+abb62(28)
      abb62(21)=abb62(12)*abb62(21)
      abb62(28)=abb62(72)*abb62(90)
      abb62(29)=-abb62(93)*abb62(26)
      abb62(28)=abb62(28)+abb62(29)
      abb62(28)=spbl6k2*abb62(28)
      abb62(29)=abb62(62)*abb62(90)
      abb62(26)=-abb62(95)*abb62(26)
      abb62(26)=abb62(29)+abb62(26)
      abb62(26)=spbl5k2*abb62(26)
      abb62(26)=abb62(28)+abb62(26)
      abb62(26)=abb62(26)*abb62(85)
      abb62(24)=-abb62(114)*spak2k4*abb62(24)
      abb62(15)=abb62(15)+abb62(24)+abb62(26)+abb62(21)+abb62(30)+abb62(17)+abb&
      &62(20)
      abb62(15)=spbk4k3*abb62(15)
      abb62(15)=abb62(15)+abb62(19)
      abb62(17)=-spak2l6*abb62(135)
      abb62(19)=abb62(12)*abb62(59)
      abb62(20)=-abb62(71)*abb62(85)
      abb62(21)=-abb62(114)*abb62(151)
      abb62(17)=abb62(21)+abb62(20)+abb62(17)+abb62(19)-abb62(147)
      abb62(17)=spbl6k4*abb62(17)
      abb62(19)=spak2l5*abb62(133)
      abb62(20)=-abb62(12)*abb62(69)
      abb62(21)=-abb62(141)*abb62(85)
      abb62(24)=-abb62(114)*abb62(150)
      abb62(19)=abb62(24)+abb62(21)+abb62(19)+abb62(20)+abb62(146)
      abb62(19)=spbl5k4*abb62(19)
      abb62(20)=-abb62(51)+abb62(55)
      abb62(20)=abb62(42)*abb62(20)
      abb62(21)=abb62(31)+abb62(27)
      abb62(21)=abb62(33)*abb62(21)*abb62(37)
      abb62(24)=abb62(50)*abb62(34)
      abb62(26)=abb62(61)*abb62(91)
      abb62(20)=-abb62(21)+abb62(24)+abb62(26)+abb62(20)
      abb62(21)=-abb62(140)+abb62(20)
      abb62(21)=spbk7k4*abb62(21)
      abb62(15)=abb62(19)+abb62(17)+2.0_ki*abb62(15)+abb62(21)
      abb62(15)=8.0_ki*abb62(15)
      abb62(17)=-spbk7k3*abb62(20)
      abb62(19)=abb62(135)*abb62(100)
      abb62(20)=-abb62(133)*abb62(101)
      abb62(21)=-spbl6k3*abb62(59)
      abb62(24)=spbl5k3*abb62(69)
      abb62(21)=abb62(21)+abb62(24)
      abb62(21)=abb62(12)*abb62(21)
      abb62(24)=spbl6k3*abb62(71)
      abb62(26)=spbl5k3*abb62(141)
      abb62(24)=abb62(24)+abb62(26)
      abb62(24)=abb62(24)*abb62(85)
      abb62(26)=spbl6k3*abb62(151)
      abb62(27)=spbl5k3*abb62(150)
      abb62(26)=abb62(26)+abb62(27)
      abb62(26)=abb62(26)*abb62(114)
      abb62(27)=abb62(144)*abb62(116)
      abb62(28)=spbk7k3*abb62(81)
      abb62(27)=abb62(27)+abb62(28)
      abb62(27)=spbl6k1*abb62(27)
      abb62(28)=abb62(99)*abb62(116)
      abb62(29)=spbk7k3*abb62(143)
      abb62(28)=abb62(28)+abb62(29)
      abb62(28)=spbl5k1*abb62(28)
      abb62(29)=spbl6k3*abb62(147)
      abb62(30)=-spbl5k3*abb62(146)
      abb62(17)=abb62(28)+abb62(27)+abb62(26)+abb62(24)+abb62(20)+abb62(19)+abb&
      &62(21)+abb62(30)+abb62(17)+abb62(29)
      abb62(17)=8.0_ki*abb62(17)
      abb62(19)=-abb62(126)*abb62(38)
      abb62(20)=-abb62(128)*abb62(44)
      abb62(19)=abb62(19)-abb62(20)
      abb62(19)=abb62(19)*spak3k4
      abb62(20)=-abb62(130)*abb62(102)
      abb62(19)=abb62(19)+abb62(98)-abb62(20)-abb62(96)
      abb62(19)=-abb62(19)*abb62(43)
      abb62(20)=spak3k4*abb62(129)
      abb62(20)=-abb62(22)+abb62(20)
      abb62(20)=spbl6k2*abb62(20)
      abb62(21)=-spak3k4*abb62(131)
      abb62(21)=abb62(25)+abb62(21)
      abb62(21)=spbl5k2*abb62(21)
      abb62(18)=spbk7k2*abb62(18)
      abb62(22)=spbl6k2*abb62(60)
      abb62(24)=-spbl5k2*abb62(137)
      abb62(22)=abb62(22)+abb62(24)
      abb62(22)=abb62(12)*abb62(22)
      abb62(24)=spbl6k2*abb62(107)
      abb62(25)=spbl5k2*abb62(122)
      abb62(24)=abb62(24)+abb62(25)
      abb62(24)=abb62(85)*spak3k4*abb62(24)
      abb62(25)=spbl6k2*abb62(77)
      abb62(26)=spbl5k2*abb62(153)
      abb62(25)=abb62(25)+abb62(26)
      abb62(25)=abb62(25)*abb62(114)
      abb62(18)=abb62(18)+abb62(25)+abb62(24)+abb62(22)+abb62(19)+abb62(21)+abb&
      &62(20)
      abb62(18)=8.0_ki*abb62(18)
      R2d62=0.0_ki
      rat2 = rat2 + R2d62
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='62' value='", &
          & R2d62, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd62h3
