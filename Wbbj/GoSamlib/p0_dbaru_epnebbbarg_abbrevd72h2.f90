module     p0_dbaru_epnebbbarg_abbrevd72h2
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(151), public :: abb72
   complex(ki), public :: R2d72
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
      abb72(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb72(2)=1.0_ki/(mB**2-es67-es56+es567)
      abb72(3)=NC**(-1)
      abb72(4)=sqrt2**(-1)
      abb72(5)=spak2k7**(-1)
      abb72(6)=spbl5k2**(-1)
      abb72(7)=spak2l6**(-1)
      abb72(8)=spbl6k2**(-1)
      abb72(9)=sqrt(mB**2)
      abb72(10)=i_*CVDU*abb72(5)*abb72(4)*abb72(2)*abb72(1)
      abb72(11)=TR*gW
      abb72(11)=abb72(11)**2
      abb72(12)=abb72(10)*abb72(11)*abb72(6)
      abb72(13)=abb72(12)*spbk7k2
      abb72(14)=abb72(13)*c1
      abb72(15)=abb72(9)*mB
      abb72(16)=abb72(15)*spak1k4
      abb72(17)=abb72(16)*abb72(14)
      abb72(18)=abb72(13)*spak1k4
      abb72(19)=mB**2
      abb72(20)=abb72(19)*c1
      abb72(21)=abb72(18)*abb72(20)
      abb72(17)=abb72(17)-abb72(21)
      abb72(22)=abb72(17)*NC
      abb72(23)=abb72(15)-abb72(19)
      abb72(23)=abb72(23)*c2
      abb72(24)=abb72(3)**2
      abb72(25)=abb72(18)*abb72(24)
      abb72(26)=-abb72(25)*abb72(23)
      abb72(27)=abb72(9)*spak1k4
      abb72(28)=abb72(3)*mB
      abb72(29)=abb72(27)*abb72(28)
      abb72(30)=abb72(29)*abb72(14)
      abb72(21)=abb72(21)*abb72(3)
      abb72(21)=abb72(30)-abb72(21)
      abb72(22)=abb72(26)-abb72(22)+2.0_ki*abb72(21)
      abb72(30)=spak1l6*spbl6k2
      abb72(31)=spak2k4*abb72(22)*abb72(30)
      abb72(32)=abb72(24)*c2
      abb72(33)=abb72(15)*abb72(32)
      abb72(34)=abb72(13)*abb72(33)
      abb72(35)=2.0_ki*abb72(28)
      abb72(36)=abb72(35)*abb72(9)
      abb72(37)=abb72(14)*abb72(36)
      abb72(38)=abb72(14)*NC
      abb72(39)=abb72(38)*abb72(15)
      abb72(34)=abb72(39)+abb72(34)-abb72(37)
      abb72(37)=es712-es71
      abb72(40)=abb72(37)-es12
      abb72(41)=spak1k4**2
      abb72(34)=abb72(40)*abb72(41)*abb72(34)
      abb72(42)=abb72(10)*spbk7k2
      abb72(43)=abb72(24)*abb72(42)*abb72(11)
      abb72(44)=abb72(43)*abb72(9)
      abb72(45)=abb72(43)*mB
      abb72(44)=abb72(44)-abb72(45)
      abb72(46)=spak2l5*abb72(9)
      abb72(47)=abb72(46)*c2
      abb72(48)=abb72(47)*abb72(41)*abb72(44)
      abb72(49)=2.0_ki*abb72(3)
      abb72(50)=abb72(49)*spak1k2
      abb72(51)=abb72(11)*c1
      abb72(52)=abb72(51)*spak2l5
      abb72(53)=abb72(50)*abb72(52)
      abb72(54)=NC*spak1k2
      abb72(55)=abb72(54)*abb72(52)
      abb72(56)=abb72(32)*spak2l5
      abb72(57)=abb72(56)*abb72(11)
      abb72(58)=abb72(57)*spak1k2
      abb72(53)=-abb72(58)+abb72(53)-abb72(55)
      abb72(58)=abb72(19)*abb72(7)
      abb72(59)=abb72(58)*spak1k4
      abb72(60)=abb72(53)*abb72(59)*abb72(42)
      abb72(61)=abb72(54)*abb72(14)
      abb72(62)=abb72(61)*abb72(59)
      abb72(63)=abb72(49)*abb72(14)
      abb72(64)=abb72(63)*abb72(59)
      abb72(65)=abb72(64)*spak1k2
      abb72(62)=abb72(62)-abb72(65)
      abb72(65)=abb72(58)*abb72(13)
      abb72(66)=abb72(65)*spak1k4
      abb72(67)=abb72(32)*spak1k2
      abb72(68)=abb72(66)*abb72(67)
      abb72(68)=abb72(68)+abb72(62)
      abb72(69)=-abb72(68)*abb72(40)
      abb72(60)=abb72(60)-abb72(69)
      abb72(70)=-abb72(60)*spak4l6
      abb72(51)=abb72(42)*abb72(51)
      abb72(71)=abb72(41)*abb72(51)
      abb72(72)=abb72(28)*abb72(71)
      abb72(73)=abb72(51)*abb72(3)
      abb72(74)=abb72(73)*abb72(9)
      abb72(75)=-abb72(41)*abb72(74)
      abb72(72)=abb72(72)+abb72(75)
      abb72(75)=2.0_ki*abb72(46)
      abb72(72)=abb72(72)*abb72(75)
      abb72(76)=abb72(9)-mB
      abb72(77)=abb72(46)*NC
      abb72(71)=abb72(77)*abb72(71)*abb72(76)
      abb72(31)=abb72(70)+abb72(31)+abb72(71)+abb72(72)+abb72(48)+abb72(34)
      abb72(31)=spbl6k1*abb72(31)
      abb72(34)=mB**3
      abb72(48)=abb72(34)*abb72(7)
      abb72(25)=abb72(48)*abb72(25)
      abb72(70)=abb72(65)*abb72(24)
      abb72(71)=abb72(70)*abb72(27)
      abb72(25)=abb72(25)-abb72(71)
      abb72(71)=abb72(25)*c2
      abb72(72)=abb72(14)*abb72(58)
      abb72(78)=abb72(72)*abb72(27)
      abb72(79)=c1*abb72(48)
      abb72(80)=abb72(79)*abb72(18)
      abb72(78)=abb72(78)-abb72(80)
      abb72(80)=abb72(78)*NC
      abb72(71)=abb72(71)-abb72(80)
      abb72(71)=abb72(71)*abb72(9)
      abb72(80)=-abb72(3)*abb72(78)
      abb72(81)=2.0_ki*abb72(9)
      abb72(82)=abb72(80)*abb72(81)
      abb72(71)=abb72(71)-abb72(82)
      abb72(82)=abb72(38)-abb72(63)
      abb72(83)=mB**4
      abb72(84)=abb72(7)**2
      abb72(85)=abb72(83)*abb72(84)
      abb72(86)=abb72(85)*spak1k4
      abb72(82)=abb72(86)*abb72(82)
      abb72(87)=abb72(85)*abb72(32)
      abb72(88)=abb72(87)*abb72(18)
      abb72(88)=abb72(88)+abb72(82)
      abb72(88)=abb72(88)*abb72(40)
      abb72(89)=abb72(52)*abb72(49)
      abb72(90)=abb72(89)-abb72(57)
      abb72(91)=abb72(52)*NC
      abb72(92)=abb72(90)-abb72(91)
      abb72(93)=abb72(86)*abb72(42)*abb72(92)
      abb72(88)=abb72(93)+abb72(88)
      abb72(88)=abb72(8)*abb72(88)
      abb72(88)=abb72(71)+abb72(88)
      abb72(88)=abb72(88)*spak2k4*es12
      abb72(93)=abb72(10)*abb72(7)
      abb72(94)=abb72(15)*abb72(93)
      abb72(95)=abb72(57)*abb72(94)
      abb72(94)=abb72(94)*abb72(91)
      abb72(94)=abb72(94)+abb72(95)
      abb72(96)=-spak1k4*abb72(94)
      abb72(93)=abb72(52)*abb72(93)
      abb72(97)=abb72(35)*abb72(93)
      abb72(98)=abb72(97)*abb72(27)
      abb72(96)=abb72(98)+abb72(96)
      abb72(99)=abb72(96)*es12
      abb72(100)=abb72(99)*spbk7l5
      abb72(101)=abb72(10)*spak1k4
      abb72(102)=abb72(91)*abb72(101)
      abb72(103)=abb72(89)*abb72(101)
      abb72(102)=abb72(102)-abb72(103)
      abb72(104)=abb72(57)*abb72(101)
      abb72(104)=abb72(102)+abb72(104)
      abb72(105)=abb72(104)*spbk7l5
      abb72(106)=abb72(105)*spbl6k1
      abb72(107)=abb72(106)*abb72(30)
      abb72(100)=abb72(100)-abb72(107)
      abb72(107)=spak4l5*abb72(100)
      abb72(31)=abb72(107)+abb72(88)+abb72(31)
      abb72(31)=spbk4k3*abb72(31)
      abb72(88)=abb72(34)*abb72(84)
      abb72(11)=abb72(11)*abb72(101)*abb72(88)*abb72(46)
      abb72(107)=abb72(32)*abb72(11)
      abb72(108)=abb72(88)*abb72(9)
      abb72(102)=-abb72(108)*abb72(102)
      abb72(102)=abb72(102)-abb72(107)
      abb72(107)=abb72(102)*abb72(8)
      abb72(109)=abb72(107)*es12
      abb72(110)=es234-es34
      abb72(111)=-es23+abb72(110)
      abb72(111)=abb72(109)*abb72(111)
      abb72(107)=es12**2*abb72(107)
      abb72(95)=abb72(95)*spak1k2
      abb72(112)=abb72(95)*spak1k4
      abb72(98)=spak1k2*abb72(98)
      abb72(93)=abb72(93)*abb72(54)
      abb72(113)=abb72(93)*abb72(16)
      abb72(98)=-abb72(112)+abb72(98)-abb72(113)
      abb72(112)=abb72(98)*spak4l6
      abb72(113)=spbk4k2*spbl6k1*abb72(112)
      abb72(114)=spbl6k1*spak1l6
      abb72(115)=abb72(114)*abb72(99)
      abb72(107)=abb72(113)+abb72(111)+abb72(107)+abb72(115)
      abb72(107)=spbk7k3*abb72(107)
      abb72(111)=spak1k2*abb72(9)
      abb72(113)=abb72(111)*c2
      abb72(25)=abb72(25)*abb72(113)
      abb72(81)=abb72(81)*spak1k2
      abb72(80)=abb72(80)*abb72(81)
      abb72(115)=abb72(54)*abb72(9)
      abb72(78)=abb72(78)*abb72(115)
      abb72(25)=-abb72(78)+abb72(25)-abb72(80)
      abb72(78)=-es12*abb72(25)
      abb72(80)=2.0_ki*spak1k2
      abb72(21)=abb72(21)*abb72(80)
      abb72(17)=abb72(17)*abb72(54)
      abb72(26)=abb72(26)*spak1k2
      abb72(17)=abb72(26)+abb72(21)-abb72(17)
      abb72(17)=abb72(17)*spbl6k2
      abb72(21)=-abb72(17)-abb72(60)
      abb72(21)=abb72(21)*abb72(114)
      abb72(26)=abb72(84)*spak1k2
      abb72(60)=abb72(26)*abb72(83)
      abb72(63)=abb72(60)*abb72(63)
      abb72(61)=abb72(61)*abb72(85)
      abb72(61)=abb72(63)-abb72(61)
      abb72(63)=-spak1k4*abb72(61)
      abb72(83)=abb72(85)*abb72(67)
      abb72(84)=abb72(83)*abb72(18)
      abb72(84)=abb72(84)+abb72(63)
      abb72(84)=-abb72(84)*abb72(40)
      abb72(116)=-abb72(60)*abb72(90)
      abb72(117)=abb72(85)*abb72(54)
      abb72(52)=abb72(52)*abb72(117)
      abb72(52)=abb72(52)+abb72(116)
      abb72(52)=abb72(42)*spak1k4*abb72(52)
      abb72(52)=abb72(52)+abb72(84)
      abb72(84)=abb72(8)*es12
      abb72(52)=abb72(52)*abb72(84)
      abb72(21)=abb72(21)+abb72(78)+abb72(52)
      abb72(21)=spbk3k1*abb72(21)
      abb72(11)=abb72(67)*abb72(11)
      abb72(52)=abb72(101)*abb72(55)*abb72(108)
      abb72(26)=abb72(34)*abb72(26)
      abb72(34)=abb72(103)*abb72(9)*abb72(26)
      abb72(11)=-abb72(34)+abb72(11)+abb72(52)
      abb72(34)=es12*spbk3k2
      abb72(52)=-abb72(8)*abb72(11)*abb72(34)
      abb72(78)=abb72(114)*spbk3k2
      abb72(101)=abb72(98)*abb72(78)
      abb72(52)=abb72(52)+abb72(101)
      abb72(52)=spbk7k1*abb72(52)
      abb72(101)=spak2k4*spbk3k2
      abb72(103)=abb72(101)*abb72(109)
      abb72(109)=spbl6k1*spbk3k2
      abb72(112)=-abb72(109)*abb72(112)
      abb72(103)=abb72(103)+abb72(112)
      abb72(103)=spbk7k4*abb72(103)
      abb72(112)=spak1l5*spbk3k1
      abb72(100)=abb72(100)*abb72(112)
      abb72(21)=abb72(103)+abb72(100)+abb72(52)+abb72(21)+abb72(107)+abb72(31)
      abb72(21)=8.0_ki*abb72(21)
      abb72(31)=abb72(58)*abb72(42)
      abb72(42)=-abb72(31)*abb72(53)
      abb72(50)=abb72(50)-abb72(54)
      abb72(52)=-abb72(72)*abb72(50)
      abb72(53)=abb72(67)*abb72(65)
      abb72(53)=abb72(52)+abb72(53)
      abb72(100)=abb72(53)*es12
      abb72(42)=abb72(42)+abb72(100)
      abb72(103)=abb72(42)*spbl6k3
      abb72(107)=abb72(111)*abb72(97)
      abb72(93)=abb72(93)*abb72(15)
      abb72(93)=-abb72(95)+abb72(107)-abb72(93)
      abb72(95)=abb72(93)*spbk3k2
      abb72(107)=abb72(95)*spbk7l6
      abb72(111)=abb72(93)*spbl6k2
      abb72(116)=abb72(111)*spbk7k3
      abb72(118)=-spbl6k3*abb72(37)
      abb72(119)=-abb72(53)*abb72(118)
      abb72(103)=-abb72(107)+abb72(116)-abb72(119)+abb72(103)
      abb72(103)=spak4l6*abb72(103)
      abb72(119)=abb72(35)*abb72(27)
      abb72(120)=abb72(119)*abb72(14)
      abb72(121)=abb72(16)*abb72(38)
      abb72(120)=abb72(121)-abb72(120)
      abb72(121)=abb72(33)*abb72(18)
      abb72(121)=abb72(121)+abb72(120)
      abb72(122)=abb72(121)*es12
      abb72(123)=abb72(43)*abb72(27)
      abb72(45)=abb72(45)*spak1k4
      abb72(45)=abb72(123)-abb72(45)
      abb72(47)=abb72(45)*abb72(47)
      abb72(123)=abb72(51)*abb72(27)
      abb72(124)=abb72(51)*spak1k4
      abb72(125)=abb72(124)*mB
      abb72(123)=abb72(123)-abb72(125)
      abb72(77)=abb72(123)*abb72(77)
      abb72(27)=abb72(73)*abb72(27)
      abb72(125)=abb72(124)*abb72(28)
      abb72(27)=abb72(27)-abb72(125)
      abb72(75)=abb72(27)*abb72(75)
      abb72(47)=abb72(75)-abb72(47)+abb72(122)-abb72(77)
      abb72(47)=abb72(47)*spbl6k3
      abb72(75)=abb72(83)*abb72(13)
      abb72(75)=abb72(75)-abb72(61)
      abb72(77)=abb72(34)*abb72(75)
      abb72(122)=c2*spak2l5
      abb72(125)=abb72(122)*spak1k2
      abb72(126)=-abb72(125)*abb72(43)
      abb72(127)=abb72(54)*spak2l5
      abb72(128)=-abb72(127)*abb72(51)
      abb72(129)=abb72(80)*spak2l5
      abb72(130)=-abb72(129)*abb72(73)
      abb72(126)=-abb72(130)+abb72(128)+abb72(126)
      abb72(108)=abb72(108)-abb72(85)
      abb72(108)=abb72(108)*abb72(126)
      abb72(126)=abb72(108)*spbk3k2
      abb72(77)=abb72(77)+abb72(126)
      abb72(77)=abb72(77)*spak2k4
      abb72(126)=-abb72(37)*abb72(101)*abb72(75)
      abb72(77)=abb72(77)+abb72(126)
      abb72(77)=abb72(77)*abb72(8)
      abb72(126)=abb72(15)*abb72(14)
      abb72(20)=abb72(20)*abb72(13)
      abb72(126)=abb72(126)-abb72(20)
      abb72(128)=abb72(126)*NC
      abb72(24)=abb72(24)*abb72(13)
      abb72(23)=-abb72(24)*abb72(23)
      abb72(130)=abb72(28)*abb72(9)
      abb72(131)=abb72(130)*abb72(14)
      abb72(20)=abb72(20)*abb72(3)
      abb72(20)=abb72(131)-abb72(20)
      abb72(128)=-2.0_ki*abb72(20)+abb72(128)-abb72(23)
      abb72(131)=abb72(128)*spak2k4
      abb72(132)=abb72(30)*spbl6k3
      abb72(133)=abb72(132)*abb72(131)
      abb72(121)=-abb72(121)*abb72(118)
      abb72(134)=abb72(72)*abb72(9)
      abb72(135)=abb72(79)*abb72(13)
      abb72(134)=abb72(134)-abb72(135)
      abb72(81)=-abb72(81)*abb72(3)
      abb72(81)=abb72(115)+abb72(81)
      abb72(81)=abb72(134)*abb72(81)
      abb72(24)=abb72(48)*abb72(24)
      abb72(70)=abb72(70)*abb72(9)
      abb72(24)=abb72(24)-abb72(70)
      abb72(24)=abb72(24)*abb72(113)
      abb72(24)=-abb72(24)+abb72(81)
      abb72(70)=abb72(24)*abb72(101)
      abb72(47)=-abb72(47)+abb72(77)+abb72(121)-abb72(133)+abb72(70)+abb72(103)
      abb72(57)=-abb72(89)+abb72(91)+abb72(57)
      abb72(57)=abb72(10)*abb72(57)
      abb72(70)=abb72(132)*abb72(57)
      abb72(70)=abb72(70)+abb72(95)
      abb72(77)=spak4l5*spbk7l5
      abb72(81)=abb72(70)*abb72(77)
      abb72(81)=abb72(47)-abb72(81)
      abb72(89)=16.0_ki*abb72(81)
      abb72(11)=spbk3k2*abb72(11)
      abb72(91)=abb72(12)*c1
      abb72(103)=abb72(117)*abb72(91)
      abb72(113)=abb72(49)*abb72(91)
      abb72(115)=abb72(113)*abb72(60)
      abb72(103)=abb72(103)-abb72(115)
      abb72(115)=spak1k4*abb72(103)
      abb72(117)=abb72(12)*spak1k4
      abb72(121)=abb72(83)*abb72(117)
      abb72(115)=abb72(121)+abb72(115)
      abb72(121)=-spbk3k2*abb72(37)
      abb72(121)=abb72(121)+abb72(34)
      abb72(115)=-abb72(115)*abb72(121)
      abb72(11)=abb72(11)+abb72(115)
      abb72(11)=spbk7k1*abb72(11)
      abb72(82)=-spak2l5*abb72(82)
      abb72(85)=-abb72(18)*abb72(56)*abb72(85)
      abb72(82)=abb72(85)+abb72(82)
      abb72(82)=es12*abb72(82)
      abb72(61)=abb72(61)*spak2l5
      abb72(60)=abb72(60)*abb72(56)
      abb72(85)=abb72(60)*abb72(13)
      abb72(61)=abb72(61)-abb72(85)
      abb72(85)=spak3k4*spbk3k2
      abb72(115)=-abb72(61)*abb72(85)
      abb72(82)=abb72(82)+abb72(115)
      abb72(82)=spbl5k3*abb72(82)
      abb72(63)=-spak2l5*abb72(63)
      abb72(60)=-abb72(18)*abb72(60)
      abb72(60)=abb72(60)+abb72(63)
      abb72(60)=spbl5k1*spbk3k2*abb72(60)
      abb72(11)=abb72(82)+abb72(60)+abb72(11)
      abb72(11)=abb72(8)*abb72(11)
      abb72(60)=abb72(91)*NC
      abb72(63)=abb72(60)-abb72(113)
      abb72(63)=abb72(86)*abb72(63)
      abb72(82)=abb72(87)*abb72(117)
      abb72(63)=abb72(63)+abb72(82)
      abb72(63)=abb72(63)*abb72(40)
      abb72(63)=-abb72(102)+abb72(63)
      abb72(63)=abb72(63)*abb72(84)
      abb72(82)=abb72(83)*abb72(12)
      abb72(82)=abb72(82)+abb72(103)
      abb72(83)=abb72(82)*abb72(121)
      abb72(55)=abb72(55)*abb72(88)
      abb72(26)=abb72(90)*abb72(26)
      abb72(26)=abb72(55)-abb72(26)
      abb72(10)=abb72(26)*abb72(10)*abb72(9)
      abb72(26)=-spbk3k2*abb72(10)
      abb72(26)=abb72(26)+abb72(83)
      abb72(55)=spak3k4*abb72(8)
      abb72(26)=abb72(26)*abb72(55)
      abb72(26)=abb72(63)+abb72(26)
      abb72(26)=spbk7k3*abb72(26)
      abb72(63)=spak3k4*spak1l6*spbl6k3**2
      abb72(83)=-abb72(128)*abb72(63)
      abb72(86)=2.0_ki*spbk3k1
      abb72(87)=abb72(9)**2
      abb72(68)=-abb72(86)*abb72(87)*abb72(68)
      abb72(11)=abb72(68)+abb72(83)+abb72(26)+abb72(11)
      abb72(11)=16.0_ki*abb72(11)
      abb72(26)=abb72(43)*abb72(59)
      abb72(68)=abb72(43)*abb72(7)
      abb72(83)=abb72(68)*abb72(16)
      abb72(26)=abb72(26)-abb72(83)
      abb72(83)=-abb72(26)*abb72(125)
      abb72(88)=abb72(51)*abb72(7)
      abb72(29)=abb72(88)*abb72(29)
      abb72(90)=abb72(73)*abb72(59)
      abb72(29)=abb72(90)-abb72(29)
      abb72(90)=abb72(29)*abb72(129)
      abb72(102)=abb72(51)*abb72(59)
      abb72(103)=abb72(88)*abb72(16)
      abb72(102)=abb72(102)-abb72(103)
      abb72(103)=-abb72(102)*abb72(127)
      abb72(17)=abb72(17)+abb72(103)+abb72(90)+abb72(83)-abb72(69)
      abb72(17)=spbk3k1*abb72(17)
      abb72(26)=abb72(26)*abb72(122)
      abb72(69)=abb72(38)*abb72(59)
      abb72(64)=abb72(69)-abb72(64)
      abb72(69)=abb72(65)*abb72(32)
      abb72(83)=abb72(69)*spak1k4
      abb72(83)=abb72(64)+abb72(83)
      abb72(83)=-abb72(83)*abb72(40)
      abb72(90)=NC*spak2l5
      abb72(102)=abb72(102)*abb72(90)
      abb72(103)=2.0_ki*spak2l5
      abb72(29)=abb72(29)*abb72(103)
      abb72(26)=-abb72(29)+abb72(26)+abb72(102)+abb72(83)
      abb72(29)=-spbl6k2*abb72(22)
      abb72(29)=abb72(29)+abb72(26)
      abb72(83)=spbk4k3*spak2k4
      abb72(29)=abb72(29)*abb72(83)
      abb72(70)=abb72(70)*spbk7l5
      abb72(102)=abb72(105)*spbl6k2
      abb72(113)=spbk4k3*abb72(102)
      abb72(113)=-abb72(70)+abb72(113)
      abb72(113)=spak4l5*abb72(113)
      abb72(102)=abb72(112)*abb72(102)
      abb72(17)=abb72(102)+abb72(113)+abb72(17)+abb72(29)+abb72(47)
      abb72(17)=16.0_ki*abb72(17)
      abb72(29)=-spbl6k3*abb72(22)
      abb72(47)=abb72(59)*abb72(91)
      abb72(59)=abb72(49)-NC
      abb72(102)=-abb72(47)*abb72(59)
      abb72(113)=abb72(12)*abb72(58)
      abb72(115)=abb72(113)*abb72(32)
      abb72(132)=abb72(115)*spak1k4
      abb72(102)=abb72(102)+abb72(132)
      abb72(132)=abb72(102)*es12
      abb72(133)=abb72(132)+abb72(96)
      abb72(134)=-abb72(102)*abb72(37)
      abb72(135)=abb72(133)+abb72(134)
      abb72(136)=abb72(135)*spbk7k3
      abb72(64)=-spak2l5*abb72(64)
      abb72(66)=abb72(66)*abb72(56)
      abb72(64)=abb72(64)-abb72(66)
      abb72(137)=abb72(64)*spbl5k3
      abb72(136)=abb72(137)-abb72(136)
      abb72(29)=abb72(29)-abb72(136)
      abb72(29)=32.0_ki*abb72(29)
      abb72(81)=-8.0_ki*abb72(81)
      abb72(137)=spbl6k3*es12
      abb72(133)=-abb72(133)*abb72(137)
      abb72(138)=abb72(58)*abb72(91)
      abb72(139)=-abb72(138)*abb72(50)
      abb72(113)=abb72(113)*abb72(67)
      abb72(139)=abb72(139)+abb72(113)
      abb72(140)=-abb72(139)*abb72(34)
      abb72(95)=-abb72(95)+abb72(140)
      abb72(95)=spbl6k3*abb72(95)
      abb72(140)=abb72(118)*spbk3k2
      abb72(141)=-abb72(139)*abb72(140)
      abb72(95)=abb72(95)+abb72(141)
      abb72(95)=spak3k4*abb72(95)
      abb72(141)=-spbk3k2*abb72(98)
      abb72(47)=-abb72(47)*abb72(50)
      abb72(113)=abb72(113)*spak1k4
      abb72(47)=abb72(47)+abb72(113)
      abb72(113)=-abb72(47)*abb72(121)
      abb72(113)=abb72(141)+abb72(113)
      abb72(113)=spbl6k1*abb72(113)
      abb72(132)=-abb72(132)*abb72(118)
      abb72(95)=abb72(113)+abb72(95)+abb72(133)+abb72(132)
      abb72(95)=8.0_ki*abb72(95)
      abb72(113)=abb72(64)*abb72(137)
      abb72(52)=-spak2l5*abb72(52)
      abb72(65)=abb72(56)*abb72(65)
      abb72(132)=abb72(65)*spak1k2
      abb72(52)=abb72(52)-abb72(132)
      abb72(132)=abb72(85)*spbl6k3
      abb72(133)=abb72(52)*abb72(132)
      abb72(62)=-spak2l5*abb72(62)
      abb72(66)=abb72(66)*spak1k2
      abb72(62)=abb72(62)-abb72(66)
      abb72(66)=abb72(62)*abb72(109)
      abb72(66)=abb72(66)+abb72(113)+abb72(133)
      abb72(66)=8.0_ki*abb72(66)
      abb72(113)=-es12*abb72(139)
      abb72(113)=abb72(113)-abb72(93)
      abb72(113)=spbl6k3*abb72(113)
      abb72(133)=-abb72(139)*abb72(118)
      abb72(113)=abb72(113)+abb72(133)
      abb72(113)=spak3k4*abb72(113)
      abb72(133)=abb72(47)*abb72(40)
      abb72(133)=-abb72(98)+abb72(133)
      abb72(133)=spbl6k1*abb72(133)
      abb72(113)=abb72(113)+abb72(133)
      abb72(113)=spbk7k3*abb72(113)
      abb72(133)=es12*abb72(47)
      abb72(133)=abb72(133)+abb72(98)
      abb72(133)=spbl6k3*abb72(133)
      abb72(47)=abb72(47)*abb72(118)
      abb72(47)=abb72(133)+abb72(47)
      abb72(47)=spbk7k1*abb72(47)
      abb72(133)=spak3k4*spbl6k3
      abb72(137)=abb72(52)*abb72(133)
      abb72(141)=spbl6k1*abb72(62)
      abb72(137)=abb72(137)+abb72(141)
      abb72(137)=spbl5k3*abb72(137)
      abb72(141)=spbl5k1*spbl6k3
      abb72(62)=-abb72(62)*abb72(141)
      abb72(47)=abb72(62)+abb72(137)+abb72(113)+abb72(47)
      abb72(47)=8.0_ki*abb72(47)
      abb72(62)=abb72(57)*spbk7l5
      abb72(113)=abb72(62)*abb72(132)
      abb72(137)=abb72(105)*spbk2k1
      abb72(142)=spbl6k3*abb72(137)
      abb72(113)=abb72(142)+abb72(113)
      abb72(113)=spak1l6*abb72(113)
      abb72(142)=abb72(105)*abb72(78)
      abb72(113)=abb72(142)+abb72(113)
      abb72(113)=8.0_ki*abb72(113)
      abb72(142)=16.0_ki*abb72(105)
      abb72(143)=-spbk3k2*abb72(142)
      abb72(144)=abb72(93)*abb72(85)
      abb72(99)=abb72(99)+abb72(144)
      abb72(144)=8.0_ki*spbk7l5
      abb72(99)=abb72(99)*abb72(144)
      abb72(144)=8.0_ki*abb72(62)
      abb72(63)=abb72(144)*abb72(63)
      abb72(145)=-spbl6k3*abb72(142)
      abb72(146)=8.0_ki*spbk3k2
      abb72(98)=spbk7l5*abb72(98)*abb72(146)
      abb72(147)=-abb72(22)*abb72(40)
      abb72(131)=abb72(131)*spbl6k2
      abb72(38)=abb72(38)*abb72(58)
      abb72(72)=abb72(72)*abb72(49)
      abb72(38)=abb72(38)-abb72(72)
      abb72(69)=abb72(38)+abb72(69)
      abb72(72)=abb72(37)*abb72(69)
      abb72(148)=-spak2k4*abb72(72)
      abb72(131)=abb72(148)+abb72(131)
      abb72(31)=abb72(92)*abb72(31)
      abb72(92)=abb72(69)*es12
      abb72(31)=abb72(31)-abb72(92)
      abb72(148)=spak2k4*abb72(31)
      abb72(148)=abb72(148)-abb72(131)
      abb72(148)=spak1l6*abb72(148)
      abb72(45)=abb72(9)*abb72(45)
      abb72(149)=abb72(43)*abb72(19)
      abb72(150)=spak1k4*abb72(149)
      abb72(45)=abb72(150)+abb72(45)
      abb72(45)=abb72(45)*abb72(122)
      abb72(27)=-abb72(9)*abb72(27)
      abb72(150)=abb72(73)*abb72(19)
      abb72(151)=-spak1k4*abb72(150)
      abb72(27)=abb72(151)+abb72(27)
      abb72(27)=abb72(27)*abb72(103)
      abb72(123)=abb72(9)*abb72(123)
      abb72(124)=abb72(19)*abb72(124)
      abb72(123)=abb72(124)+abb72(123)
      abb72(123)=abb72(123)*abb72(90)
      abb72(124)=abb72(62)*spak4l5
      abb72(151)=-abb72(30)*abb72(124)
      abb72(27)=abb72(151)+abb72(148)+abb72(123)+abb72(27)+abb72(45)+abb72(147)
      abb72(27)=spbl6k4*abb72(27)
      abb72(45)=-es12*abb72(128)
      abb72(44)=abb72(9)*abb72(44)
      abb72(44)=abb72(149)+abb72(44)
      abb72(44)=abb72(44)*abb72(122)
      abb72(28)=abb72(28)*abb72(51)
      abb72(28)=abb72(28)-abb72(74)
      abb72(28)=abb72(9)*abb72(28)
      abb72(28)=-abb72(150)+abb72(28)
      abb72(28)=abb72(28)*abb72(103)
      abb72(74)=abb72(9)*abb72(76)
      abb72(19)=abb72(19)+abb72(74)
      abb72(19)=abb72(90)*abb72(51)*abb72(19)
      abb72(19)=abb72(45)+abb72(19)+abb72(28)+abb72(44)
      abb72(19)=spbl6k3*abb72(19)
      abb72(28)=-abb72(128)*abb72(118)
      abb72(19)=abb72(19)+abb72(28)
      abb72(19)=spak1k3*abb72(19)
      abb72(28)=abb72(128)*spbl6k2
      abb72(31)=-abb72(28)+abb72(31)
      abb72(31)=spbl6k3*abb72(31)
      abb72(44)=-abb72(69)*abb72(118)
      abb72(31)=abb72(44)+abb72(31)
      abb72(31)=spak2k3*abb72(31)
      abb72(44)=abb72(97)*abb72(9)
      abb72(44)=-abb72(44)+abb72(94)
      abb72(45)=abb72(44)*es12
      abb72(74)=spbk7l6*abb72(45)
      abb72(31)=abb72(31)+abb72(74)
      abb72(31)=spak1l6*abb72(31)
      abb72(74)=-abb72(75)*abb72(40)
      abb72(74)=abb72(108)+abb72(74)
      abb72(75)=abb72(74)*abb72(8)
      abb72(75)=abb72(75)+abb72(24)
      abb72(76)=-abb72(75)*abb72(110)
      abb72(74)=-abb72(74)*abb72(84)
      abb72(20)=abb72(20)*abb72(80)
      abb72(54)=abb72(126)*abb72(54)
      abb72(23)=abb72(23)*spak1k2
      abb72(20)=abb72(23)+abb72(20)-abb72(54)
      abb72(23)=spbl6k2*abb72(20)
      abb72(53)=abb72(37)*abb72(53)
      abb72(23)=abb72(23)-abb72(42)+abb72(53)
      abb72(23)=abb72(23)*abb72(114)
      abb72(42)=abb72(116)-abb72(107)
      abb72(42)=spak3l6*abb72(42)
      abb72(54)=spbk7l6*spak4l6
      abb72(54)=-abb72(77)-abb72(54)
      abb72(54)=spbk4k2*abb72(54)
      abb72(80)=-spbk7k1*abb72(30)
      abb72(54)=abb72(54)+abb72(80)
      abb72(54)=abb72(93)*abb72(54)
      abb72(80)=-es12*abb72(24)
      abb72(45)=spbk7l5*abb72(45)
      abb72(84)=spbl6k1*abb72(62)*abb72(30)
      abb72(45)=abb72(45)+abb72(84)
      abb72(45)=spak1l5*abb72(45)
      abb72(70)=-spak3l5*abb72(70)
      abb72(84)=spbk7k4*spak4l6*abb72(111)
      abb72(19)=abb72(42)+abb72(84)+abb72(70)+abb72(45)+abb72(19)+abb72(27)+abb&
      &72(23)+abb72(80)+abb72(74)+abb72(76)+abb72(31)+abb72(54)
      abb72(19)=8.0_ki*abb72(19)
      abb72(23)=16.0_ki*abb72(75)
      abb72(27)=-spak1l5*abb72(62)
      abb72(20)=abb72(27)-abb72(20)
      abb72(20)=spbl6k2*abb72(20)
      abb72(27)=abb72(43)*abb72(58)
      abb72(31)=abb72(68)*abb72(15)
      abb72(27)=abb72(27)-abb72(31)
      abb72(31)=abb72(27)*abb72(125)
      abb72(42)=abb72(73)*abb72(58)
      abb72(43)=abb72(88)*abb72(130)
      abb72(42)=abb72(42)-abb72(43)
      abb72(43)=-abb72(42)*abb72(129)
      abb72(45)=abb72(51)*abb72(58)
      abb72(51)=abb72(88)*abb72(15)
      abb72(45)=abb72(45)-abb72(51)
      abb72(51)=abb72(45)*abb72(127)
      abb72(20)=abb72(100)+abb72(51)+abb72(43)+abb72(31)-abb72(53)+abb72(20)
      abb72(20)=16.0_ki*abb72(20)
      abb72(31)=abb72(40)*abb72(139)
      abb72(31)=abb72(31)-abb72(93)
      abb72(43)=8.0_ki*spbl6k2
      abb72(51)=-abb72(31)*abb72(43)
      abb72(53)=-abb72(52)*abb72(43)
      abb72(31)=-spbk7l6*abb72(31)
      abb72(52)=spbl6l5*abb72(52)
      abb72(31)=abb72(31)+abb72(52)
      abb72(31)=8.0_ki*abb72(31)
      abb72(52)=-abb72(30)*abb72(144)
      abb72(54)=abb72(93)*spbk7l5
      abb72(68)=8.0_ki*abb72(54)
      abb72(54)=-abb72(112)*abb72(54)
      abb72(70)=abb72(13)*abb72(9)
      abb72(73)=abb72(79)*abb72(70)
      abb72(59)=-abb72(73)*abb72(59)
      abb72(48)=abb72(48)*abb72(70)
      abb72(32)=abb72(32)*abb72(48)
      abb72(32)=abb72(32)+abb72(59)
      abb72(32)=spbk3k1*abb72(32)*spak1k2**2
      abb72(32)=abb72(32)+abb72(54)
      abb72(32)=16.0_ki*abb72(32)
      abb72(54)=-abb72(82)*abb72(40)
      abb72(10)=-abb72(10)+abb72(54)
      abb72(54)=8.0_ki*abb72(55)
      abb72(54)=abb72(54)*spbk3k2**2
      abb72(10)=abb72(10)*abb72(54)
      abb72(55)=abb72(96)+abb72(134)
      abb72(55)=abb72(55)*spbk3k2
      abb72(59)=abb72(34)*abb72(102)
      abb72(55)=abb72(55)+abb72(59)
      abb72(59)=16.0_ki*abb72(55)
      abb72(70)=-abb72(128)*abb72(132)
      abb72(74)=abb72(22)*spbk2k1
      abb72(75)=spbl6k3*abb72(74)
      abb72(70)=abb72(75)+abb72(70)
      abb72(70)=spak1l6*abb72(70)
      abb72(75)=abb72(22)*abb72(78)
      abb72(70)=abb72(75)+abb72(70)
      abb72(70)=8.0_ki*abb72(70)
      abb72(75)=16.0_ki*spbk3k2
      abb72(76)=-abb72(22)*abb72(75)
      abb72(78)=8.0_ki*abb72(128)
      abb72(30)=abb72(30)*abb72(78)
      abb72(54)=-abb72(61)*abb72(54)
      abb72(61)=-abb72(64)*abb72(75)
      abb72(75)=8.0_ki*abb72(26)
      abb72(71)=-es12*abb72(71)
      abb72(24)=abb72(24)*abb72(85)
      abb72(24)=abb72(71)+abb72(24)
      abb72(24)=8.0_ki*abb72(24)
      abb72(26)=16.0_ki*abb72(26)
      abb72(27)=abb72(27)*abb72(122)
      abb72(45)=abb72(45)*abb72(90)
      abb72(42)=abb72(42)*abb72(103)
      abb72(27)=-abb72(42)+abb72(45)+abb72(27)
      abb72(42)=abb72(92)+abb72(27)
      abb72(45)=-abb72(72)+abb72(42)
      abb72(71)=-8.0_ki*spak1k3*abb72(45)
      abb72(25)=-spbk3k2*abb72(25)
      abb72(69)=abb72(40)*abb72(69)
      abb72(27)=abb72(69)-abb72(27)
      abb72(27)=spbk4k3*abb72(41)*abb72(27)
      abb72(25)=abb72(25)+abb72(27)
      abb72(25)=8.0_ki*abb72(25)
      abb72(12)=abb72(33)*abb72(12)
      abb72(27)=abb72(60)*abb72(15)
      abb72(36)=abb72(36)*abb72(91)
      abb72(12)=abb72(12)+abb72(27)-abb72(36)
      abb72(27)=-abb72(12)*abb72(140)
      abb72(36)=-abb72(12)*abb72(34)
      abb72(41)=-abb72(87)*abb72(57)
      abb72(57)=-spbk3k2*abb72(41)
      abb72(36)=abb72(57)+abb72(36)
      abb72(36)=spbl6k3*abb72(36)
      abb72(27)=abb72(36)+abb72(27)
      abb72(27)=spak3k4*abb72(27)
      abb72(36)=abb72(119)*abb72(91)
      abb72(33)=abb72(33)*abb72(117)
      abb72(16)=abb72(16)*abb72(60)
      abb72(16)=abb72(33)+abb72(16)-abb72(36)
      abb72(33)=abb72(16)*es12
      abb72(36)=-abb72(87)*abb72(104)
      abb72(33)=abb72(33)+abb72(36)
      abb72(33)=abb72(33)*spbl6k3
      abb72(57)=abb72(118)*abb72(16)
      abb72(33)=abb72(33)+abb72(57)
      abb72(57)=-spbk2k1*abb72(33)
      abb72(69)=-abb72(16)*abb72(121)
      abb72(72)=-spbk3k2*abb72(36)
      abb72(69)=abb72(72)+abb72(69)
      abb72(69)=spbl6k1*abb72(69)
      abb72(27)=abb72(57)+abb72(27)+abb72(69)
      abb72(27)=8.0_ki*abb72(27)
      abb72(57)=abb72(40)*abb72(12)
      abb72(57)=abb72(57)-abb72(41)
      abb72(69)=-abb72(57)*abb72(43)
      abb72(58)=abb72(60)*abb72(58)
      abb72(49)=abb72(138)*abb72(49)
      abb72(49)=abb72(115)+abb72(58)-abb72(49)
      abb72(37)=-abb72(49)*abb72(37)
      abb72(37)=abb72(37)-abb72(44)
      abb72(44)=abb72(49)*es12
      abb72(44)=abb72(44)+abb72(37)
      abb72(58)=32.0_ki*abb72(44)
      abb72(37)=abb72(37)*spbk3k2
      abb72(34)=abb72(49)*abb72(34)
      abb72(34)=abb72(37)+abb72(34)
      abb72(34)=abb72(34)*spak3k4
      abb72(37)=abb72(135)*spbk2k1
      abb72(34)=abb72(34)+abb72(37)
      abb72(34)=8.0_ki*abb72(34)
      abb72(37)=-8.0_ki*abb72(55)
      abb72(49)=abb72(22)*spbk3k1
      abb72(55)=es12*abb72(49)
      abb72(60)=-abb72(74)*abb72(83)
      abb72(72)=spak4l5*spbk4k3
      abb72(72)=abb72(112)+abb72(72)
      abb72(72)=abb72(137)*abb72(72)
      abb72(55)=abb72(55)+abb72(60)+abb72(72)
      abb72(55)=8.0_ki*abb72(55)
      abb72(60)=abb72(101)*abb72(128)
      abb72(72)=abb72(124)*spbk3k2
      abb72(60)=abb72(60)+abb72(72)
      abb72(72)=16.0_ki*abb72(60)
      abb72(49)=-32.0_ki*abb72(49)
      abb72(60)=8.0_ki*abb72(60)
      abb72(79)=abb72(85)*abb72(62)
      abb72(79)=abb72(79)+abb72(137)
      abb72(79)=8.0_ki*abb72(79)
      abb72(80)=-spbk3k1*abb72(142)
      abb72(82)=abb72(105)*abb72(146)
      abb72(83)=es12+abb72(110)
      abb72(83)=abb72(128)*abb72(83)
      abb72(84)=-spak1l5*spbk2k1
      abb72(87)=-spak3l5*spbk3k2
      abb72(84)=abb72(87)+abb72(84)
      abb72(84)=abb72(62)*abb72(84)
      abb72(87)=-spbk4k2*abb72(124)
      abb72(83)=abb72(87)+abb72(83)+abb72(84)
      abb72(83)=8.0_ki*abb72(83)
      abb72(84)=abb72(85)*abb72(128)
      abb72(74)=abb72(84)-abb72(74)
      abb72(74)=8.0_ki*abb72(74)
      abb72(84)=abb72(22)*abb72(146)
      abb72(87)=-spak2l5*abb72(120)
      abb72(15)=abb72(56)*abb72(15)
      abb72(18)=abb72(15)*abb72(18)
      abb72(18)=abb72(87)-abb72(18)
      abb72(56)=spbk2k1*spbl6k3
      abb72(56)=abb72(56)+abb72(109)
      abb72(56)=abb72(18)*abb72(56)
      abb72(14)=abb72(14)*abb72(35)*abb72(46)
      abb72(13)=abb72(15)*abb72(13)
      abb72(15)=abb72(39)*spak2l5
      abb72(13)=-abb72(15)+abb72(14)-abb72(13)
      abb72(14)=abb72(13)*abb72(132)
      abb72(14)=abb72(14)+abb72(56)
      abb72(14)=8.0_ki*abb72(14)
      abb72(15)=-abb72(13)*abb72(43)
      abb72(35)=-spak2l5*abb72(38)
      abb72(35)=abb72(35)-abb72(65)
      abb72(38)=-32.0_ki*abb72(35)
      abb72(39)=abb72(64)*spbk2k1
      abb72(43)=abb72(35)*abb72(85)
      abb72(39)=abb72(39)+abb72(43)
      abb72(39)=8.0_ki*abb72(39)
      abb72(43)=abb72(64)*abb72(146)
      abb72(42)=abb72(42)*spak2k4
      abb72(46)=abb72(124)*spbl6k2
      abb72(42)=abb72(131)+abb72(46)+abb72(42)
      abb72(46)=8.0_ki*abb72(42)
      abb72(42)=16.0_ki*abb72(42)
      abb72(56)=abb72(44)*spbk7k3
      abb72(65)=abb72(35)*spbl5k3
      abb72(56)=abb72(65)-abb72(56)
      abb72(56)=abb72(56)*spak3k4
      abb72(65)=abb72(135)*spbk7k1
      abb72(64)=abb72(64)*spbl5k1
      abb72(56)=abb72(56)-abb72(64)+abb72(65)
      abb72(64)=abb72(128)*abb72(133)
      abb72(22)=spbl6k1*abb72(22)
      abb72(22)=abb72(64)+abb72(22)-abb72(56)
      abb72(22)=16.0_ki*abb72(22)
      abb72(64)=-abb72(62)*abb72(133)
      abb72(64)=abb72(64)+abb72(106)
      abb72(64)=8.0_ki*abb72(64)
      abb72(28)=abb72(28)+abb72(45)
      abb72(28)=spak2k3*abb72(28)
      abb72(45)=spak3l5*spbl6k2*abb72(62)
      abb72(28)=abb72(28)+abb72(45)
      abb72(28)=8.0_ki*abb72(28)
      abb72(45)=-abb72(12)*abb72(118)
      abb72(12)=-es12*abb72(12)
      abb72(12)=abb72(12)-abb72(41)
      abb72(12)=spbl6k3*abb72(12)
      abb72(12)=abb72(12)+abb72(45)
      abb72(12)=spak3k4*abb72(12)
      abb72(16)=abb72(16)*abb72(40)
      abb72(16)=-abb72(36)+abb72(16)
      abb72(16)=spbl6k1*abb72(16)
      abb72(12)=abb72(12)+abb72(16)
      abb72(12)=spbk7k3*abb72(12)
      abb72(16)=spbk7k1*abb72(33)
      abb72(33)=abb72(13)*abb72(133)
      abb72(36)=spbl6k1*abb72(18)
      abb72(33)=abb72(33)+abb72(36)
      abb72(33)=spbl5k3*abb72(33)
      abb72(36)=abb72(93)*abb72(77)
      abb72(40)=-abb72(73)*abb72(50)
      abb72(41)=abb72(67)*abb72(48)
      abb72(40)=abb72(41)+abb72(40)
      abb72(40)=spak2k4*abb72(40)
      abb72(36)=abb72(36)+abb72(40)
      abb72(36)=abb72(86)*abb72(36)
      abb72(18)=-abb72(18)*abb72(141)
      abb72(12)=abb72(18)+abb72(33)+abb72(16)+abb72(12)+abb72(36)
      abb72(12)=8.0_ki*abb72(12)
      abb72(16)=-spbk7l6*abb72(57)
      abb72(13)=spbl6l5*abb72(13)
      abb72(13)=abb72(16)+abb72(13)
      abb72(13)=8.0_ki*abb72(13)
      abb72(16)=-16.0_ki*abb72(44)
      abb72(18)=16.0_ki*abb72(35)
      abb72(33)=8.0_ki*abb72(56)
      abb72(35)=8.0_ki*abb72(136)
      R2d72=0.0_ki
      rat2 = rat2 + R2d72
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='72' value='", &
          & R2d72, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd72h2
