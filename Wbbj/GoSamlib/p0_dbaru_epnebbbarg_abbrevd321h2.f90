module     p0_dbaru_epnebbbarg_abbrevd321h2
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(164), public :: abb321
   complex(ki), public :: R2d321
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
      abb321(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb321(2)=sqrt(mB**2)
      abb321(3)=sqrt2**(-1)
      abb321(4)=es234**(-1)
      abb321(5)=es567**(-1)
      abb321(6)=spak2l6**(-1)
      abb321(7)=spak2k7**(-1)
      abb321(8)=spbl5k2**(-1)
      abb321(9)=spbl6k2**(-1)
      abb321(10)=1.0_ki/(es34+es567-es12-es234)
      abb321(11)=spak2l5**(-1)
      abb321(12)=TR*gW
      abb321(12)=abb321(12)**2*CVDU*abb321(5)*abb321(3)*abb321(1)
      abb321(13)=i_*c4
      abb321(14)=abb321(13)*abb321(4)
      abb321(15)=abb321(7)*abb321(14)
      abb321(16)=abb321(12)*abb321(15)*spbk3k2
      abb321(17)=mB**2
      abb321(18)=abb321(17)*abb321(6)
      abb321(19)=abb321(18)*abb321(8)
      abb321(20)=abb321(19)*abb321(16)
      abb321(21)=2.0_ki*abb321(2)
      abb321(22)=abb321(21)*abb321(20)
      abb321(23)=mB**3
      abb321(24)=abb321(23)*abb321(8)
      abb321(25)=abb321(6)*abb321(24)
      abb321(26)=abb321(25)*abb321(16)
      abb321(22)=abb321(22)-abb321(26)
      abb321(22)=abb321(22)*abb321(2)
      abb321(26)=spak2k4*spbk7k2
      abb321(27)=abb321(22)*abb321(26)
      abb321(28)=abb321(21)*abb321(19)
      abb321(25)=abb321(28)-abb321(25)
      abb321(28)=abb321(13)*spak1k4
      abb321(29)=abb321(28)*abb321(10)
      abb321(30)=abb321(29)*abb321(12)
      abb321(31)=abb321(7)*abb321(30)
      abb321(25)=abb321(31)*abb321(25)
      abb321(32)=spbk3k1*spbk7k2
      abb321(33)=abb321(2)*abb321(25)*abb321(32)
      abb321(27)=abb321(27)-abb321(33)
      abb321(27)=abb321(27)*spak1k2
      abb321(33)=abb321(16)*spbk7l6
      abb321(34)=abb321(2)-mB
      abb321(35)=spak1l5*spak2k4
      abb321(36)=abb321(35)*abb321(2)
      abb321(37)=-abb321(36)*abb321(33)*abb321(34)
      abb321(38)=spbk4k3*abb321(2)
      abb321(25)=abb321(26)*abb321(25)*abb321(38)
      abb321(39)=abb321(31)*spbk7l6
      abb321(40)=-abb321(39)*abb321(34)
      abb321(41)=spbk3k1*spak1l5
      abb321(42)=abb321(41)*abb321(2)
      abb321(43)=abb321(42)*abb321(40)
      abb321(40)=-spak4l5*abb321(40)*abb321(38)
      abb321(25)=abb321(40)-abb321(27)-abb321(43)+abb321(37)-abb321(25)
      abb321(27)=es71+es12-es712
      abb321(25)=abb321(27)*abb321(25)
      abb321(37)=2.0_ki*spbl6k2
      abb321(17)=abb321(17)*abb321(8)
      abb321(40)=abb321(37)*abb321(17)
      abb321(43)=abb321(18)*spak2l5
      abb321(44)=abb321(40)+abb321(43)
      abb321(45)=abb321(16)*spak3k4
      abb321(46)=abb321(45)*spak1k2
      abb321(47)=abb321(2)**2
      abb321(48)=abb321(46)*abb321(47)
      abb321(44)=abb321(48)*abb321(44)
      abb321(49)=spak1k2*spak3k4
      abb321(22)=abb321(22)*abb321(49)*abb321(27)
      abb321(14)=spbk3k2*abb321(14)
      abb321(50)=abb321(12)*spbk7l6
      abb321(51)=abb321(14)*abb321(50)
      abb321(52)=spak1l5*spak3k4
      abb321(53)=abb321(52)*abb321(2)
      abb321(34)=abb321(53)*abb321(51)*abb321(34)
      abb321(22)=abb321(34)+abb321(22)+abb321(44)
      abb321(22)=spbk7k3*abb321(22)
      abb321(34)=abb321(31)*spbk3k1
      abb321(44)=abb321(34)*spbk7l6
      abb321(54)=abb321(16)*spak2k4
      abb321(55)=abb321(54)*spbk7l6
      abb321(56)=abb321(44)-abb321(55)
      abb321(57)=abb321(56)*spak1k2
      abb321(58)=abb321(39)*spbk4k3
      abb321(59)=abb321(58)*spak2k4
      abb321(57)=abb321(57)-abb321(59)
      abb321(59)=abb321(2)*mB
      abb321(60)=abb321(59)*abb321(6)
      abb321(61)=abb321(27)*abb321(60)*abb321(57)
      abb321(62)=spbl6k2*abb321(47)*abb321(57)
      abb321(63)=abb321(51)*spbk7k3
      abb321(64)=abb321(60)*abb321(49)*abb321(63)
      abb321(61)=abb321(64)+abb321(62)+abb321(61)
      abb321(62)=2.0_ki*spal5l6
      abb321(61)=abb321(61)*abb321(62)
      abb321(64)=abb321(54)-abb321(34)
      abb321(65)=-spak1l5*abb321(64)
      abb321(66)=abb321(60)*spak2l5
      abb321(67)=-abb321(66)*abb321(65)
      abb321(68)=abb321(31)*spbk4k3
      abb321(69)=abb321(66)*abb321(68)
      abb321(70)=-spak4l5*abb321(69)
      abb321(67)=abb321(70)+abb321(67)
      abb321(67)=abb321(27)*abb321(67)
      abb321(70)=spbk3k2**2
      abb321(71)=abb321(49)*abb321(70)
      abb321(72)=abb321(18)*abb321(12)
      abb321(73)=abb321(15)*abb321(8)
      abb321(74)=abb321(72)*abb321(73)
      abb321(75)=abb321(71)*abb321(74)
      abb321(76)=abb321(47)*spak2l5
      abb321(77)=-abb321(75)*abb321(76)
      abb321(78)=abb321(14)*abb321(52)*spbk7k3
      abb321(79)=abb321(12)*spak2l5
      abb321(80)=-abb321(79)*abb321(60)*abb321(78)
      abb321(67)=abb321(80)+abb321(77)+abb321(67)
      abb321(77)=2.0_ki*spbk7l5
      abb321(67)=abb321(67)*abb321(77)
      abb321(80)=spak2l5*spbk7k2
      abb321(81)=abb321(64)*abb321(80)
      abb321(23)=abb321(6)**2*abb321(23)*abb321(2)
      abb321(82)=-spak1k2*abb321(23)*abb321(81)
      abb321(83)=abb321(26)*abb321(68)
      abb321(23)=abb321(23)*spak2l5
      abb321(84)=abb321(23)*abb321(83)
      abb321(82)=abb321(82)-abb321(84)
      abb321(84)=2.0_ki*abb321(27)
      abb321(82)=-abb321(82)*abb321(84)
      abb321(85)=abb321(27)*spbk7k3
      abb321(23)=-abb321(23)*abb321(46)*abb321(85)
      abb321(86)=abb321(71)*abb321(15)
      abb321(87)=abb321(86)*abb321(50)
      abb321(88)=abb321(87)*abb321(43)
      abb321(89)=-abb321(47)*abb321(88)
      abb321(23)=2.0_ki*abb321(23)+abb321(89)+abb321(82)
      abb321(23)=abb321(9)*abb321(23)
      abb321(82)=abb321(80)*abb321(18)
      abb321(89)=2.0_ki*abb321(9)
      abb321(90)=abb321(89)*abb321(82)
      abb321(91)=-spbk7k2*abb321(17)
      abb321(91)=abb321(91)-abb321(90)
      abb321(91)=abb321(48)*abb321(91)
      abb321(92)=abb321(33)*abb321(62)*abb321(49)
      abb321(93)=abb321(47)*abb321(92)
      abb321(94)=abb321(33)*spak2l5
      abb321(95)=abb321(94)*spak3k4
      abb321(96)=abb321(95)*abb321(47)
      abb321(97)=spak1l6*abb321(96)
      abb321(91)=abb321(97)+abb321(93)+abb321(91)
      abb321(91)=spbl6k3*abb321(91)
      abb321(93)=abb321(43)*abb321(83)
      abb321(97)=abb321(58)*spak2l5
      abb321(98)=spak4l6*spbl6k2
      abb321(99)=abb321(98)*abb321(97)
      abb321(100)=abb321(99)+abb321(93)
      abb321(100)=abb321(47)*abb321(100)
      abb321(82)=-abb321(82)*abb321(64)
      abb321(101)=abb321(47)*spak1k2
      abb321(102)=-abb321(82)*abb321(101)
      abb321(103)=-spbk7k2*abb321(64)
      abb321(104)=abb321(103)*spak1k2
      abb321(104)=abb321(104)-abb321(83)
      abb321(105)=spbl6k2*abb321(104)*abb321(47)*abb321(17)
      abb321(106)=spak2l5*spbk7l6
      abb321(107)=abb321(47)*abb321(106)
      abb321(108)=abb321(107)*abb321(103)
      abb321(109)=spbk7k3*abb321(96)
      abb321(108)=abb321(109)+abb321(108)
      abb321(108)=spak1k7*abb321(108)
      abb321(109)=spak1l6*spbl6k2
      abb321(110)=abb321(64)*abb321(109)
      abb321(111)=-abb321(107)*abb321(110)
      abb321(112)=-abb321(107)*abb321(65)
      abb321(97)=abb321(97)*spak4l5
      abb321(113)=-abb321(47)*abb321(97)
      abb321(112)=abb321(113)+abb321(112)
      abb321(112)=spbl5k2*abb321(112)
      abb321(113)=abb321(68)*spak4l5
      abb321(114)=abb321(65)+abb321(113)
      abb321(115)=abb321(47)*abb321(80)
      abb321(116)=-abb321(115)*abb321(114)
      abb321(117)=abb321(45)*spak1l5
      abb321(118)=abb321(117)*spbk7k3
      abb321(119)=-abb321(118)*abb321(76)
      abb321(116)=abb321(119)+abb321(116)
      abb321(119)=2.0_ki*spbl6l5
      abb321(116)=abb321(116)*abb321(119)
      abb321(120)=abb321(58)*spak4k7
      abb321(121)=abb321(115)*abb321(120)
      abb321(122)=spbl5k3*spak1l5
      abb321(123)=-abb321(96)*abb321(122)
      abb321(22)=abb321(123)+abb321(121)+abb321(116)+abb321(112)+abb321(67)+abb&
      &321(91)+abb321(111)+abb321(61)+abb321(108)+abb321(23)+abb321(22)+abb321(&
      &105)+abb321(102)+abb321(100)+abb321(25)
      abb321(22)=4.0_ki*abb321(22)
      abb321(23)=abb321(103)*abb321(106)
      abb321(25)=abb321(95)*spbk7k3
      abb321(23)=abb321(25)+abb321(23)
      abb321(23)=abb321(23)*spak1k7
      abb321(25)=abb321(114)*abb321(80)
      abb321(61)=abb321(118)*spak2l5
      abb321(25)=abb321(61)+abb321(25)
      abb321(25)=abb321(25)*abb321(119)
      abb321(61)=abb321(65)*abb321(106)
      abb321(61)=abb321(61)+abb321(97)
      abb321(61)=abb321(61)*spbl5k2
      abb321(67)=abb321(37)*spal5l6
      abb321(57)=abb321(57)*abb321(67)
      abb321(91)=abb321(106)*abb321(54)
      abb321(97)=abb321(106)*abb321(34)
      abb321(100)=abb321(91)-abb321(97)
      abb321(102)=abb321(100)*abb321(109)
      abb321(105)=abb321(122)*abb321(95)
      abb321(88)=abb321(88)*abb321(9)
      abb321(108)=abb321(120)*abb321(80)
      abb321(23)=-abb321(57)-abb321(23)-abb321(108)+abb321(88)+abb321(105)+abb3&
      &21(102)-abb321(99)+abb321(25)+abb321(61)
      abb321(25)=abb321(77)*abb321(75)
      abb321(57)=abb321(60)*abb321(31)
      abb321(61)=abb321(31)*abb321(18)
      abb321(88)=abb321(57)-abb321(61)
      abb321(99)=abb321(26)*spbk4k3
      abb321(102)=abb321(88)*abb321(99)
      abb321(102)=abb321(25)+abb321(102)
      abb321(102)=spak2l5*abb321(102)
      abb321(105)=abb321(60)*abb321(16)
      abb321(108)=abb321(16)*abb321(18)
      abb321(111)=abb321(108)-abb321(105)
      abb321(112)=abb321(111)*spak2l5
      abb321(116)=-abb321(26)*abb321(112)
      abb321(120)=abb321(80)*spbk3k1
      abb321(88)=-abb321(88)*abb321(120)
      abb321(88)=abb321(116)+abb321(88)
      abb321(88)=spak1k2*abb321(88)
      abb321(116)=abb321(16)*abb321(17)
      abb321(121)=abb321(59)*abb321(8)
      abb321(123)=abb321(16)*abb321(121)
      abb321(124)=abb321(116)-abb321(123)
      abb321(125)=abb321(124)*abb321(26)
      abb321(126)=abb321(121)*abb321(31)
      abb321(127)=abb321(31)*abb321(17)
      abb321(128)=abb321(126)-abb321(127)
      abb321(129)=abb321(128)*abb321(32)
      abb321(125)=abb321(125)+abb321(129)
      abb321(125)=spak1k2*abb321(125)
      abb321(128)=-abb321(128)*abb321(99)
      abb321(125)=abb321(128)+abb321(125)
      abb321(125)=spbl6k2*abb321(125)
      abb321(128)=abb321(108)+abb321(105)
      abb321(128)=abb321(128)*spak2l5
      abb321(129)=-abb321(49)*abb321(128)
      abb321(130)=abb321(46)*abb321(17)
      abb321(131)=abb321(130)*abb321(37)
      abb321(132)=abb321(45)*abb321(19)
      abb321(133)=abb321(132)*spak1k2
      abb321(134)=-abb321(133)*abb321(84)
      abb321(129)=abb321(129)-abb321(131)+abb321(134)
      abb321(129)=spbk7k3*abb321(129)
      abb321(134)=abb321(90)*abb321(46)
      abb321(135)=abb321(95)*spak1l6
      abb321(92)=abb321(92)+abb321(135)-abb321(134)
      abb321(134)=abb321(116)+abb321(123)
      abb321(135)=spbk7k2*abb321(134)*abb321(49)
      abb321(135)=abb321(135)-abb321(92)
      abb321(135)=spbl6k3*abb321(135)
      abb321(136)=abb321(19)*spbk7k2
      abb321(137)=-abb321(136)*abb321(64)
      abb321(138)=abb321(137)*spak1k2
      abb321(83)=abb321(83)*abb321(19)
      abb321(138)=abb321(138)-abb321(83)
      abb321(139)=-abb321(138)*abb321(84)
      abb321(88)=abb321(135)+abb321(129)+abb321(125)+abb321(88)+abb321(139)+abb&
      &321(102)+abb321(23)
      abb321(88)=8.0_ki*abb321(88)
      abb321(102)=-spbk7l6*abb321(65)
      abb321(125)=abb321(27)*abb321(102)
      abb321(129)=abb321(58)*abb321(27)
      abb321(135)=abb321(129)*spak4l5
      abb321(125)=abb321(135)-abb321(125)
      abb321(139)=abb321(63)*abb321(52)
      abb321(140)=abb321(139)+abb321(125)
      abb321(140)=16.0_ki*abb321(140)
      abb321(141)=abb321(94)*spak1k4
      abb321(142)=16.0_ki*abb321(141)
      abb321(143)=abb321(142)*abb321(47)
      abb321(144)=32.0_ki*abb321(141)
      abb321(139)=abb321(135)+abb321(139)
      abb321(139)=abb321(18)*abb321(139)
      abb321(145)=abb321(27)*abb321(18)
      abb321(146)=-abb321(102)*abb321(145)
      abb321(139)=abb321(146)+abb321(139)
      abb321(139)=abb321(9)*abb321(139)
      abb321(141)=2.0_ki*abb321(141)
      abb321(83)=-abb321(141)-abb321(83)
      abb321(83)=abb321(47)*abb321(83)
      abb321(101)=abb321(137)*abb321(101)
      abb321(125)=abb321(17)*abb321(125)
      abb321(63)=abb321(63)*spak3k4
      abb321(146)=abb321(17)*spak1l5
      abb321(147)=abb321(146)*abb321(63)
      abb321(125)=abb321(147)+abb321(125)
      abb321(147)=2.0_ki*abb321(11)
      abb321(125)=abb321(125)*abb321(147)
      abb321(83)=abb321(125)+abb321(101)+abb321(83)+abb321(139)
      abb321(83)=8.0_ki*abb321(83)
      abb321(101)=-3.0_ki*abb321(27)
      abb321(101)=abb321(133)*abb321(101)
      abb321(125)=abb321(51)*abb321(52)
      abb321(139)=-abb321(46)*abb321(43)
      abb321(101)=-abb321(131)-2.0_ki*abb321(125)+abb321(139)+abb321(101)
      abb321(101)=spbk7k3*abb321(101)
      abb321(125)=-3.0_ki*abb321(138)+2.0_ki*abb321(102)
      abb321(125)=abb321(125)*abb321(27)
      abb321(130)=spbk7k2*abb321(130)
      abb321(92)=abb321(130)-abb321(92)
      abb321(92)=spbl6k3*abb321(92)
      abb321(130)=spak1k2*abb321(82)
      abb321(104)=-spbl6k2*abb321(17)*abb321(104)
      abb321(25)=spak2l5*abb321(25)
      abb321(23)=abb321(25)+abb321(92)-2.0_ki*abb321(135)+abb321(101)+abb321(10&
      &4)-abb321(93)+abb321(130)+abb321(125)+abb321(23)
      abb321(23)=4.0_ki*abb321(23)
      abb321(25)=abb321(141)-abb321(138)
      abb321(25)=8.0_ki*abb321(25)
      abb321(92)=abb321(18)*abb321(9)
      abb321(93)=abb321(17)*abb321(11)
      abb321(92)=abb321(92)-abb321(93)
      abb321(93)=abb321(50)*abb321(4)
      abb321(13)=-abb321(71)*abb321(93)*abb321(13)*abb321(92)
      abb321(71)=spak3k4*spbl6k3*spak1l6
      abb321(101)=-spbl5k3*abb321(52)
      abb321(71)=abb321(101)+abb321(71)
      abb321(71)=abb321(51)*abb321(71)
      abb321(101)=abb321(56)*abb321(27)
      abb321(63)=abb321(101)+abb321(63)
      abb321(101)=spak1k7*abb321(63)
      abb321(104)=abb321(29)*abb321(50)
      abb321(125)=abb321(104)*spbk3k1
      abb321(130)=-spak2k4*abb321(51)
      abb321(130)=abb321(130)+abb321(125)
      abb321(130)=abb321(130)*abb321(109)
      abb321(131)=-spak4l5*spbk4k3
      abb321(41)=abb321(131)-abb321(41)
      abb321(41)=abb321(104)*abb321(41)
      abb321(35)=abb321(35)*abb321(51)
      abb321(35)=abb321(35)+abb321(41)
      abb321(35)=spbl5k2*abb321(35)
      abb321(41)=spak4k7*abb321(129)
      abb321(98)=spbk4k3*abb321(104)*abb321(98)
      abb321(13)=abb321(98)+abb321(41)+abb321(35)+abb321(130)+abb321(101)+abb32&
      &1(13)+abb321(71)
      abb321(13)=4.0_ki*abb321(13)
      abb321(35)=abb321(93)*abb321(28)
      abb321(41)=abb321(35)*spbk3k2
      abb321(41)=16.0_ki*abb321(41)
      abb321(71)=-abb321(65)*abb321(27)
      abb321(93)=abb321(12)*spak3k4
      abb321(98)=abb321(14)*abb321(93)
      abb321(101)=abb321(98)*spbk7k3
      abb321(104)=-spak1l5*abb321(101)
      abb321(130)=abb321(27)*abb321(68)
      abb321(131)=-spak4l5*abb321(130)
      abb321(71)=abb321(131)+abb321(104)+abb321(71)
      abb321(71)=8.0_ki*spbk7l5*abb321(71)
      abb321(104)=abb321(126)+abb321(127)
      abb321(131)=spbk4k3*spbk7k2
      abb321(135)=abb321(104)*abb321(131)
      abb321(139)=abb321(135)*abb321(27)
      abb321(141)=abb321(68)*abb321(115)
      abb321(130)=abb321(130)*abb321(90)
      abb321(148)=-abb321(129)*abb321(62)
      abb321(130)=abb321(148)+abb321(130)+abb321(141)+abb321(139)
      abb321(130)=4.0_ki*abb321(130)
      abb321(139)=-4.0_ki*abb321(68)*abb321(80)
      abb321(141)=abb321(15)*spak1k4
      abb321(148)=abb321(141)*abb321(50)
      abb321(149)=abb321(148)*spbk4k2
      abb321(150)=-abb321(76)*abb321(149)
      abb321(151)=abb321(94)*spak1k3
      abb321(152)=-abb321(47)*abb321(151)
      abb321(150)=abb321(150)+abb321(152)
      abb321(150)=8.0_ki*abb321(150)
      abb321(149)=abb321(149)*spak2l5
      abb321(149)=abb321(149)+abb321(151)
      abb321(151)=16.0_ki*abb321(149)
      abb321(149)=8.0_ki*abb321(149)
      abb321(35)=-spbk4k2*abb321(35)
      abb321(152)=-spak1k3*abb321(51)
      abb321(35)=abb321(35)+abb321(152)
      abb321(35)=8.0_ki*abb321(35)
      abb321(152)=abb321(121)+abb321(17)
      abb321(153)=abb321(39)*abb321(152)
      abb321(154)=-abb321(153)*abb321(27)
      abb321(155)=abb321(141)*abb321(12)
      abb321(156)=abb321(31)+2.0_ki*abb321(155)
      abb321(157)=abb321(156)*abb321(107)
      abb321(158)=abb321(62)*spbk7l6**2
      abb321(30)=abb321(158)*abb321(30)
      abb321(30)=abb321(30)+abb321(157)+abb321(154)
      abb321(30)=spbk4k3*abb321(30)
      abb321(129)=-abb321(89)*abb321(43)*abb321(129)
      abb321(94)=abb321(94)*spak1k2
      abb321(154)=2.0_ki*abb321(94)
      abb321(157)=abb321(47)*abb321(154)
      abb321(30)=abb321(129)+abb321(157)+abb321(30)
      abb321(30)=4.0_ki*abb321(30)
      abb321(129)=abb321(155)+abb321(31)
      abb321(106)=abb321(106)*spbk4k3
      abb321(157)=-abb321(129)*abb321(106)
      abb321(94)=abb321(157)-abb321(94)
      abb321(94)=16.0_ki*abb321(94)
      abb321(106)=-abb321(156)*abb321(106)
      abb321(106)=abb321(106)-abb321(154)
      abb321(106)=4.0_ki*abb321(106)
      abb321(28)=abb321(4)*abb321(28)
      abb321(28)=abb321(28)+abb321(29)
      abb321(154)=spbk4k3*spbk7l6
      abb321(28)=abb321(154)*abb321(12)*abb321(28)
      abb321(51)=spak1k2*abb321(51)
      abb321(28)=abb321(28)+abb321(51)
      abb321(28)=8.0_ki*abb321(28)
      abb321(51)=abb321(26)*abb321(128)
      abb321(128)=abb321(57)+abb321(61)
      abb321(120)=abb321(128)*abb321(120)
      abb321(51)=abb321(51)-abb321(120)
      abb321(104)=abb321(104)*abb321(32)
      abb321(120)=abb321(134)*abb321(26)
      abb321(104)=abb321(104)-abb321(120)
      abb321(120)=-spbl6k2*abb321(104)
      abb321(156)=abb321(137)*abb321(27)
      abb321(157)=abb321(70)*abb321(15)
      abb321(159)=abb321(157)*abb321(17)
      abb321(160)=abb321(70)*abb321(73)
      abb321(161)=abb321(59)*abb321(160)
      abb321(161)=-abb321(159)+abb321(161)
      abb321(50)=spak3k4*abb321(50)*abb321(161)
      abb321(161)=spbl6k2*abb321(121)
      abb321(161)=-abb321(66)+abb321(161)
      abb321(161)=abb321(45)*abb321(161)
      abb321(162)=abb321(27)*abb321(132)
      abb321(161)=2.0_ki*abb321(161)+abb321(162)
      abb321(161)=spbk7k3*abb321(161)
      abb321(163)=abb321(74)*abb321(70)
      abb321(164)=spak3k4*spak2l5
      abb321(77)=-abb321(164)*abb321(163)*abb321(77)
      abb321(50)=abb321(77)+abb321(161)+abb321(120)+abb321(50)+abb321(156)+2.0_&
      &ki*abb321(51)
      abb321(50)=spak1k7*abb321(50)
      abb321(51)=abb321(108)+3.0_ki*abb321(105)
      abb321(26)=abb321(51)*abb321(26)
      abb321(57)=abb321(61)+3.0_ki*abb321(57)
      abb321(32)=-abb321(57)*abb321(32)
      abb321(26)=abb321(26)+abb321(32)
      abb321(26)=spak1k2*abb321(26)
      abb321(32)=abb321(87)*abb321(92)
      abb321(77)=abb321(57)*abb321(99)
      abb321(51)=-spbk7k3*abb321(51)*abb321(49)
      abb321(87)=-spbk7l6*abb321(103)
      abb321(92)=abb321(33)*spak3k4
      abb321(99)=-spbk7k3*abb321(92)
      abb321(87)=abb321(99)+abb321(87)
      abb321(87)=spak1k7*abb321(87)
      abb321(99)=spak4l5*abb321(58)
      abb321(99)=abb321(99)-abb321(102)
      abb321(99)=spbl5k2*abb321(99)
      abb321(26)=abb321(99)+abb321(87)+abb321(51)+abb321(77)+abb321(26)+abb321(&
      &32)
      abb321(26)=spal5k7*abb321(26)
      abb321(32)=abb321(60)*abb321(64)*spak1k2
      abb321(51)=spak1k7*abb321(56)
      abb321(77)=abb321(60)*abb321(68)
      abb321(87)=spak2k4*abb321(77)
      abb321(32)=abb321(51)+abb321(87)+abb321(32)
      abb321(32)=abb321(62)*abb321(32)
      abb321(51)=4.0_ki*mB+abb321(2)
      abb321(36)=abb321(36)*abb321(16)*abb321(51)
      abb321(51)=abb321(31)*mB
      abb321(87)=abb321(31)*abb321(2)
      abb321(87)=abb321(87)+4.0_ki*abb321(51)
      abb321(42)=-abb321(87)*abb321(42)
      abb321(99)=-spbk7k3*abb321(133)
      abb321(99)=-abb321(138)+abb321(99)
      abb321(99)=spal6k7*abb321(99)
      abb321(32)=2.0_ki*abb321(99)+abb321(32)+abb321(36)+abb321(42)
      abb321(32)=spbl6k2*abb321(32)
      abb321(36)=-abb321(116)-3.0_ki*abb321(123)
      abb321(36)=spak3k4*spbk7k2*abb321(36)
      abb321(42)=-abb321(45)*abb321(90)
      abb321(36)=abb321(36)+abb321(42)
      abb321(36)=spak1k7*abb321(36)
      abb321(42)=-2.0_ki*mB-abb321(2)
      abb321(42)=abb321(53)*abb321(16)*abb321(42)
      abb321(53)=-abb321(60)*abb321(46)
      abb321(90)=spak1k7*abb321(92)
      abb321(53)=abb321(53)+abb321(90)
      abb321(53)=abb321(53)*abb321(62)
      abb321(90)=abb321(92)*spal5k7
      abb321(90)=abb321(90)-abb321(162)
      abb321(99)=2.0_ki*abb321(45)
      abb321(102)=-abb321(66)*abb321(99)
      abb321(102)=abb321(102)-abb321(90)
      abb321(102)=spak1l6*abb321(102)
      abb321(36)=abb321(102)+abb321(53)+abb321(42)+abb321(36)
      abb321(36)=spbl6k3*abb321(36)
      abb321(42)=2.0_ki*abb321(80)
      abb321(42)=-spbk4k3*abb321(128)*abb321(42)
      abb321(53)=-spbl6k2*abb321(135)
      abb321(80)=abb321(136)*abb321(68)
      abb321(102)=abb321(80)*abb321(27)
      abb321(108)=abb321(58)*abb321(67)
      abb321(39)=-spal5k7*abb321(39)*abb321(131)
      abb321(39)=abb321(39)+abb321(108)+abb321(42)+abb321(53)+abb321(102)
      abb321(39)=spak4k7*abb321(39)
      abb321(42)=-abb321(65)*abb321(40)
      abb321(15)=abb321(15)*abb321(6)
      abb321(53)=abb321(70)*abb321(15)
      abb321(70)=abb321(93)*spak1k2
      abb321(102)=abb321(70)*mB**4
      abb321(108)=abb321(8)**2*abb321(53)*abb321(102)
      abb321(42)=abb321(42)-abb321(108)
      abb321(108)=-abb321(42)*abb321(27)
      abb321(101)=abb321(146)*abb321(37)*abb321(101)
      abb321(17)=abb321(27)*abb321(17)
      abb321(116)=abb321(68)*spbl6k2
      abb321(120)=2.0_ki*spak4l5
      abb321(120)=abb321(120)*abb321(116)*abb321(17)
      abb321(101)=abb321(120)+abb321(101)+abb321(108)
      abb321(101)=abb321(11)*abb321(101)
      abb321(108)=abb321(54)*abb321(19)
      abb321(120)=abb321(34)*abb321(19)
      abb321(128)=abb321(108)-abb321(120)
      abb321(131)=-abb321(128)*abb321(27)
      abb321(56)=-spal5k7*abb321(56)
      abb321(56)=abb321(56)+abb321(131)
      abb321(56)=spbl6k2*abb321(56)
      abb321(66)=abb321(37)*abb321(66)*abb321(64)
      abb321(56)=abb321(66)+abb321(56)
      abb321(56)=spak1l6*abb321(56)
      abb321(66)=abb321(12)*mB
      abb321(131)=abb321(2)*abb321(66)
      abb321(133)=-abb321(52)*abb321(160)*abb321(131)
      abb321(135)=-spbk7k2*abb321(65)
      abb321(118)=abb321(135)-abb321(118)
      abb321(138)=abb321(113)*spbk7k2
      abb321(138)=abb321(138)-abb321(118)
      abb321(156)=spal5k7*abb321(138)
      abb321(133)=abb321(133)+abb321(156)
      abb321(119)=abb321(133)*abb321(119)
      abb321(19)=abb321(116)*abb321(19)
      abb321(133)=abb321(19)*abb321(27)
      abb321(69)=-abb321(37)*abb321(69)
      abb321(58)=-spal5k7*spbl6k2*abb321(58)
      abb321(58)=abb321(58)+abb321(69)+abb321(133)
      abb321(58)=spak4l6*abb321(58)
      abb321(69)=spak1l5*abb321(90)
      abb321(90)=-abb321(117)*abb321(121)*abb321(37)
      abb321(69)=abb321(90)+abb321(69)
      abb321(69)=spbl5k3*abb321(69)
      abb321(60)=-abb321(84)*abb321(60)*abb321(65)
      abb321(24)=abb321(53)*abb321(12)*abb321(24)
      abb321(53)=-abb321(2)*abb321(163)
      abb321(24)=-3.0_ki*abb321(24)+abb321(53)
      abb321(21)=abb321(24)*abb321(49)*abb321(21)
      abb321(24)=abb321(6)*abb321(131)
      abb321(24)=abb321(72)-2.0_ki*abb321(24)
      abb321(24)=abb321(24)*abb321(78)
      abb321(49)=abb321(6)*spbk3k2
      abb321(49)=abb321(9)*abb321(49)**2*abb321(102)*abb321(73)
      abb321(53)=-abb321(27)*abb321(49)
      abb321(38)=-spbl6k2*abb321(87)*abb321(38)
      abb321(77)=-abb321(77)*abb321(84)
      abb321(38)=abb321(38)+abb321(77)
      abb321(38)=spak4l5*abb321(38)
      abb321(21)=abb321(69)+abb321(58)+abb321(39)+abb321(119)+abb321(36)+abb321&
      &(56)+abb321(101)+abb321(38)+abb321(53)+abb321(24)+abb321(21)+abb321(60)+&
      &abb321(26)+abb321(50)+abb321(32)
      abb321(21)=4.0_ki*abb321(21)
      abb321(24)=abb321(65)*spbl6k2
      abb321(26)=abb321(117)*spbl6k3
      abb321(32)=abb321(116)*spak4l5
      abb321(24)=abb321(24)+abb321(26)+abb321(32)
      abb321(26)=2.0_ki*abb321(75)+abb321(24)
      abb321(26)=8.0_ki*abb321(26)
      abb321(32)=8.0_ki*abb321(75)
      abb321(36)=abb321(75)+abb321(24)
      abb321(36)=16.0_ki*abb321(36)
      abb321(38)=abb321(123)*spbl6k2
      abb321(39)=spak2l5*abb321(105)
      abb321(50)=abb321(38)-abb321(39)
      abb321(53)=abb321(33)*spal5k7
      abb321(50)=-abb321(53)+2.0_ki*abb321(50)
      abb321(53)=spak1k4*abb321(50)
      abb321(56)=abb321(20)*spak1k4
      abb321(58)=abb321(27)*abb321(56)
      abb321(53)=abb321(58)+abb321(53)
      abb321(53)=16.0_ki*abb321(53)
      abb321(39)=4.0_ki*abb321(39)
      abb321(58)=2.0_ki*spal5k7
      abb321(60)=abb321(33)*abb321(58)
      abb321(38)=abb321(60)-4.0_ki*abb321(38)+abb321(39)
      abb321(38)=spak1k4*abb321(38)
      abb321(40)=abb321(113)*abb321(40)
      abb321(40)=abb321(40)-abb321(42)
      abb321(40)=abb321(11)*abb321(40)
      abb321(42)=abb321(132)*spak1l6
      abb321(60)=abb321(117)*abb321(18)
      abb321(65)=abb321(9)*abb321(60)
      abb321(69)=abb321(146)*abb321(45)
      abb321(75)=abb321(69)*abb321(147)
      abb321(65)=abb321(42)+abb321(65)+abb321(75)
      abb321(65)=spbl6k3*abb321(65)
      abb321(18)=-abb321(18)*abb321(114)
      abb321(75)=spbk7k3*abb321(132)
      abb321(75)=abb321(75)-abb321(137)
      abb321(75)=spak1k7*abb321(75)
      abb321(77)=abb321(128)*abb321(109)
      abb321(78)=-abb321(56)*abb321(84)
      abb321(80)=-spak4k7*abb321(80)
      abb321(19)=-spak4l6*abb321(19)
      abb321(87)=-abb321(132)*abb321(122)
      abb321(18)=abb321(87)+abb321(19)+abb321(80)+abb321(65)+abb321(77)+abb321(&
      &40)+abb321(75)-abb321(49)+abb321(78)+abb321(18)+abb321(38)
      abb321(18)=8.0_ki*abb321(18)
      abb321(19)=32.0_ki*abb321(56)
      abb321(24)=-4.0_ki*abb321(24)
      abb321(38)=8.0_ki*abb321(138)
      abb321(40)=abb321(9)*abb321(72)*abb321(86)
      abb321(49)=abb321(45)*spbk7k3
      abb321(56)=abb321(103)+abb321(49)
      abb321(65)=-spak1k7*abb321(56)
      abb321(75)=-spbl5k2*abb321(114)
      abb321(70)=-abb321(11)*abb321(70)*abb321(159)
      abb321(77)=abb321(45)*spbl6k3
      abb321(78)=-spak1l6*abb321(77)
      abb321(68)=abb321(68)*spbk7k2
      abb321(80)=-spak4k7*abb321(68)
      abb321(86)=-spak4l6*abb321(116)
      abb321(87)=-spbl5k3*abb321(117)
      abb321(40)=abb321(87)+abb321(86)+abb321(80)+abb321(75)+abb321(78)+abb321(&
      &110)+abb321(70)+abb321(40)+abb321(65)
      abb321(40)=4.0_ki*abb321(40)
      abb321(65)=abb321(16)*spak1k4
      abb321(65)=16.0_ki*abb321(65)
      abb321(70)=spal5l6*abb321(116)
      abb321(75)=spal5k7*abb321(68)
      abb321(70)=abb321(70)+abb321(75)
      abb321(70)=8.0_ki*abb321(70)
      abb321(59)=abb321(15)*abb321(79)*abb321(59)
      abb321(73)=-spbl6k2*abb321(73)*abb321(131)
      abb321(59)=abb321(59)+abb321(73)
      abb321(59)=spak1k4*abb321(59)
      abb321(73)=abb321(74)*spak1k4
      abb321(74)=-abb321(73)*abb321(27)
      abb321(75)=spal5k7*abb321(148)
      abb321(59)=abb321(75)+2.0_ki*abb321(59)+abb321(74)
      abb321(59)=spbk4k2*abb321(59)
      abb321(74)=-abb321(20)*abb321(27)
      abb321(50)=abb321(74)-abb321(50)
      abb321(50)=spak1k3*abb321(50)
      abb321(50)=abb321(59)+abb321(50)
      abb321(50)=8.0_ki*abb321(50)
      abb321(59)=-spbk4k2*abb321(73)
      abb321(73)=-spak1k3*abb321(20)
      abb321(59)=abb321(59)+abb321(73)
      abb321(59)=16.0_ki*abb321(59)
      abb321(73)=spbk4k2*abb321(155)
      abb321(74)=spak1k3*abb321(16)
      abb321(73)=abb321(73)+abb321(74)
      abb321(73)=8.0_ki*abb321(73)
      abb321(74)=abb321(141)*abb321(72)
      abb321(75)=abb321(74)+2.0_ki*abb321(61)
      abb321(78)=spbk4k3*abb321(8)
      abb321(75)=abb321(75)*abb321(78)
      abb321(20)=abb321(20)*spak1k2
      abb321(75)=abb321(75)+abb321(20)
      abb321(75)=abb321(75)*abb321(84)
      abb321(66)=4.0_ki*abb321(66)
      abb321(15)=-spak1k4*abb321(15)*abb321(66)
      abb321(79)=abb321(6)*abb321(51)
      abb321(15)=abb321(15)-3.0_ki*abb321(79)
      abb321(15)=abb321(2)*abb321(15)
      abb321(15)=-abb321(61)+abb321(15)
      abb321(15)=spbk4k3*spak2l5*abb321(15)
      abb321(66)=abb321(141)*abb321(66)
      abb321(51)=abb321(66)+3.0_ki*abb321(51)
      abb321(51)=abb321(2)*abb321(8)*abb321(51)
      abb321(51)=abb321(127)+abb321(51)
      abb321(51)=spbk4k3*abb321(51)
      abb321(66)=4.0_ki*spak1k2
      abb321(66)=abb321(123)*abb321(66)
      abb321(51)=abb321(51)+abb321(66)
      abb321(51)=spbl6k2*abb321(51)
      abb321(31)=-abb321(155)-2.0_ki*abb321(31)
      abb321(31)=abb321(31)*abb321(154)
      abb321(66)=-spak1k2*abb321(33)
      abb321(31)=abb321(31)+abb321(66)
      abb321(31)=abb321(31)*abb321(58)
      abb321(39)=-spak1k2*abb321(39)
      abb321(15)=abb321(31)+abb321(51)+abb321(15)+abb321(39)+abb321(75)
      abb321(15)=4.0_ki*abb321(15)
      abb321(31)=abb321(74)+abb321(61)
      abb321(31)=abb321(31)*abb321(78)
      abb321(20)=abb321(31)+abb321(20)
      abb321(20)=16.0_ki*abb321(20)
      abb321(31)=-spbk4k3*abb321(129)
      abb321(16)=-spak1k2*abb321(16)
      abb321(16)=abb321(31)+abb321(16)
      abb321(16)=8.0_ki*abb321(16)
      abb321(31)=abb321(163)*spak3k4
      abb321(39)=-8.0_ki*spak1k7*abb321(31)
      abb321(51)=abb321(47)*abb321(118)
      abb321(61)=abb321(135)*abb321(145)
      abb321(66)=-abb321(60)*abb321(85)
      abb321(61)=abb321(66)+abb321(61)
      abb321(61)=abb321(9)*abb321(61)
      abb321(66)=-abb321(9)*abb321(145)
      abb321(47)=-abb321(47)+abb321(66)
      abb321(47)=spak4l5*abb321(68)*abb321(47)
      abb321(66)=-spak4l5*abb321(68)
      abb321(66)=abb321(66)+abb321(135)
      abb321(17)=abb321(17)*abb321(66)
      abb321(66)=-abb321(69)*abb321(85)
      abb321(17)=abb321(66)+abb321(17)
      abb321(17)=abb321(17)*abb321(147)
      abb321(17)=abb321(17)+abb321(47)+abb321(61)+abb321(51)
      abb321(17)=4.0_ki*abb321(17)
      abb321(47)=4.0_ki*abb321(138)
      abb321(51)=abb321(93)*abb321(146)*abb321(157)*abb321(147)
      abb321(61)=abb321(72)*abb321(157)
      abb321(66)=abb321(9)*abb321(52)*abb321(61)
      abb321(31)=-spak1l6*abb321(31)
      abb321(31)=abb321(31)+abb321(66)+abb321(51)
      abb321(31)=4.0_ki*abb321(31)
      abb321(51)=8.0_ki*abb321(163)
      abb321(51)=-abb321(52)*abb321(51)
      abb321(52)=4.0_ki*abb321(136)
      abb321(48)=abb321(48)*abb321(52)
      abb321(46)=-abb321(46)*abb321(52)
      abb321(52)=-spak1k7*abb321(136)*abb321(99)
      abb321(37)=-abb321(37)*abb321(42)
      abb321(37)=abb321(37)-abb321(60)+abb321(52)
      abb321(37)=4.0_ki*abb321(37)
      abb321(42)=abb321(104)*abb321(27)
      abb321(52)=abb321(82)*abb321(27)
      abb321(43)=abb321(43)*abb321(45)*abb321(85)
      abb321(43)=abb321(43)+abb321(52)
      abb321(43)=abb321(43)*abb321(89)
      abb321(52)=-abb321(115)*abb321(64)
      abb321(60)=abb321(27)*spak3k4
      abb321(66)=abb321(134)*abb321(60)
      abb321(45)=abb321(45)*abb321(76)
      abb321(45)=abb321(45)+abb321(66)
      abb321(45)=spbk7k3*abb321(45)
      abb321(63)=-abb321(63)*abb321(62)
      abb321(42)=abb321(63)+abb321(43)+abb321(45)+abb321(42)+abb321(52)
      abb321(42)=4.0_ki*abb321(42)
      abb321(43)=-spak2l5*abb321(49)
      abb321(43)=abb321(43)+abb321(81)
      abb321(43)=4.0_ki*abb321(43)
      abb321(45)=abb321(164)*abb321(89)*abb321(61)
      abb321(49)=-abb321(64)*abb321(67)
      abb321(52)=abb321(56)*abb321(58)
      abb321(56)=abb321(93)*abb321(159)
      abb321(61)=abb321(62)*abb321(77)
      abb321(45)=abb321(61)+abb321(52)+abb321(49)+abb321(56)+abb321(45)
      abb321(45)=4.0_ki*abb321(45)
      abb321(33)=abb321(33)*abb321(152)
      abb321(49)=-abb321(33)*abb321(60)
      abb321(52)=abb321(145)*abb321(89)
      abb321(56)=-abb321(95)*abb321(52)
      abb321(60)=abb321(98)*abb321(158)
      abb321(49)=abb321(60)+abb321(56)-abb321(96)+abb321(49)
      abb321(49)=4.0_ki*abb321(49)
      abb321(56)=4.0_ki*abb321(95)
      abb321(60)=-abb321(111)*abb321(164)
      abb321(61)=spbl6k2*spak3k4*abb321(124)
      abb321(62)=abb321(132)*abb321(84)
      abb321(63)=-abb321(92)*abb321(58)
      abb321(60)=abb321(63)+abb321(60)+abb321(61)+abb321(62)
      abb321(60)=4.0_ki*abb321(60)
      abb321(61)=abb321(153)*spbk3k1
      abb321(33)=abb321(33)*spak2k4
      abb321(33)=abb321(61)-abb321(33)
      abb321(27)=-abb321(33)*abb321(27)
      abb321(33)=abb321(54)+abb321(34)
      abb321(33)=abb321(107)*abb321(33)
      abb321(52)=abb321(100)*abb321(52)
      abb321(14)=-abb321(14)*spak2k4
      abb321(29)=abb321(29)*spbk3k1
      abb321(14)=abb321(14)+abb321(29)
      abb321(12)=abb321(158)*abb321(12)*abb321(14)
      abb321(12)=abb321(12)+abb321(52)+abb321(27)+abb321(33)
      abb321(12)=4.0_ki*abb321(12)
      abb321(14)=-16.0_ki*abb321(97)
      abb321(27)=-abb321(91)-abb321(97)
      abb321(27)=4.0_ki*abb321(27)
      abb321(29)=8.0_ki*abb321(125)
      abb321(33)=-spak2k4*abb321(124)
      abb321(52)=abb321(127)+3.0_ki*abb321(126)
      abb321(52)=spbk3k1*abb321(52)
      abb321(33)=abb321(33)+abb321(52)
      abb321(33)=spbl6k2*abb321(33)
      abb321(52)=-abb321(108)+2.0_ki*abb321(120)
      abb321(52)=abb321(52)*abb321(84)
      abb321(54)=spak2k4*abb321(112)
      abb321(57)=-spbk3k1*spak2l5*abb321(57)
      abb321(44)=abb321(55)-2.0_ki*abb321(44)
      abb321(44)=abb321(44)*abb321(58)
      abb321(33)=abb321(44)+abb321(33)+abb321(54)+abb321(57)+abb321(52)
      abb321(33)=4.0_ki*abb321(33)
      abb321(44)=16.0_ki*abb321(120)
      abb321(34)=-8.0_ki*abb321(34)
      R2d321=0.0_ki
      rat2 = rat2 + R2d321
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='321' value='", &
          & R2d321, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd321h2
