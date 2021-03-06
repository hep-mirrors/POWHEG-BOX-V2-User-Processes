module     p0_dbaru_epnebbbarg_abbrevd318h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(147), public :: abb318
   complex(ki), public :: R2d318
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
      abb318(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb318(2)=NC**(-1)
      abb318(3)=sqrt2**(-1)
      abb318(4)=es234**(-1)
      abb318(5)=es567**(-1)
      abb318(6)=spbl5k2**(-1)
      abb318(7)=spak2k7**(-1)
      abb318(8)=spbl6k2**(-1)
      abb318(9)=spak2l6**(-1)
      abb318(10)=spak2l5**(-1)
      abb318(11)=sqrt(mB**2)
      abb318(12)=1.0_ki/(es34+es567-es12-es234)
      abb318(13)=c2*abb318(2)**2
      abb318(14)=abb318(13)+c4
      abb318(15)=c1*abb318(2)
      abb318(16)=abb318(14)-abb318(15)
      abb318(17)=mB**3
      abb318(18)=abb318(17)*abb318(6)**2
      abb318(19)=abb318(18)*abb318(16)
      abb318(20)=TR*gW
      abb318(20)=abb318(20)**2*i_*CVDU*abb318(5)*abb318(3)
      abb318(21)=abb318(20)*spbk3k2
      abb318(22)=abb318(7)*abb318(1)
      abb318(23)=abb318(22)*abb318(4)
      abb318(24)=abb318(21)*abb318(23)
      abb318(25)=abb318(24)*spak3k4
      abb318(26)=abb318(19)*abb318(25)
      abb318(27)=spbk7k3*spak1l6
      abb318(28)=-abb318(26)*abb318(27)
      abb318(29)=spak1k4*abb318(12)
      abb318(30)=abb318(22)*abb318(20)*abb318(29)
      abb318(31)=spbk7k2*abb318(30)
      abb318(32)=abb318(16)*abb318(31)
      abb318(33)=abb318(18)*abb318(32)
      abb318(34)=spbk3k1*spak1l6
      abb318(35)=abb318(33)*abb318(34)
      abb318(36)=abb318(24)*spbk7k2
      abb318(37)=-abb318(36)*abb318(19)
      abb318(38)=spak2k4*spak1l6
      abb318(39)=abb318(37)*abb318(38)
      abb318(28)=abb318(28)-abb318(35)-abb318(39)
      abb318(35)=abb318(28)*abb318(10)
      abb318(40)=spak2l6*spbl6k2
      abb318(41)=abb318(35)*abb318(40)
      abb318(22)=abb318(20)*abb318(22)*mB
      abb318(42)=abb318(22)*abb318(4)
      abb318(43)=abb318(42)*spbk3k2
      abb318(44)=abb318(8)*spbk7k2
      abb318(45)=-abb318(14)*abb318(44)*abb318(43)
      abb318(46)=abb318(43)*abb318(15)
      abb318(47)=abb318(46)*abb318(44)
      abb318(45)=abb318(47)+abb318(45)
      abb318(47)=abb318(45)*abb318(11)
      abb318(48)=-abb318(13)+abb318(15)-c4
      abb318(48)=abb318(44)*abb318(48)
      abb318(49)=mB**2
      abb318(50)=-abb318(48)*abb318(49)*abb318(24)
      abb318(47)=abb318(47)+abb318(50)
      abb318(51)=spak1l5*spak2k4
      abb318(52)=abb318(51)*abb318(11)
      abb318(47)=abb318(47)*abb318(52)
      abb318(53)=c4*abb318(6)
      abb318(13)=abb318(13)*abb318(6)
      abb318(54)=abb318(15)*abb318(6)
      abb318(55)=-abb318(54)+abb318(53)+abb318(13)
      abb318(22)=abb318(22)*abb318(29)
      abb318(29)=-abb318(22)*abb318(55)
      abb318(56)=abb318(29)*abb318(34)
      abb318(57)=-abb318(43)*abb318(55)
      abb318(58)=abb318(57)*abb318(38)
      abb318(56)=abb318(56)-abb318(58)
      abb318(58)=spbk7l5*spal5l6
      abb318(59)=abb318(58)*spbl6k2
      abb318(60)=abb318(56)*abb318(59)
      abb318(61)=abb318(16)*abb318(22)
      abb318(62)=abb318(44)*abb318(61)
      abb318(63)=abb318(62)*abb318(11)
      abb318(64)=abb318(49)*abb318(31)
      abb318(65)=abb318(8)*abb318(14)
      abb318(15)=abb318(15)*abb318(8)
      abb318(15)=abb318(65)-abb318(15)
      abb318(66)=abb318(64)*abb318(15)
      abb318(63)=abb318(63)-abb318(66)
      abb318(67)=spak1l5*abb318(11)
      abb318(68)=abb318(67)*spbk3k1
      abb318(69)=abb318(63)*abb318(68)
      abb318(70)=abb318(43)*spak3k4
      abb318(71)=abb318(16)*abb318(70)
      abb318(72)=abb318(8)*abb318(71)
      abb318(73)=abb318(72)*abb318(11)
      abb318(74)=abb318(49)*abb318(25)
      abb318(75)=abb318(74)*abb318(15)
      abb318(73)=abb318(73)-abb318(75)
      abb318(76)=abb318(67)*spbk7k3
      abb318(77)=abb318(73)*abb318(76)
      abb318(41)=-abb318(47)+abb318(60)-abb318(69)+abb318(41)-abb318(77)
      abb318(47)=es71+es12-es712
      abb318(41)=abb318(41)*abb318(47)
      abb318(60)=abb318(43)*spbk7k2
      abb318(69)=-abb318(60)*abb318(55)
      abb318(77)=abb318(11)**2
      abb318(78)=abb318(69)*abb318(77)
      abb318(79)=abb318(36)*abb318(17)
      abb318(80)=-abb318(79)*abb318(55)
      abb318(78)=abb318(78)-abb318(80)
      abb318(81)=abb318(78)*abb318(38)
      abb318(13)=abb318(53)+abb318(13)-abb318(54)
      abb318(31)=abb318(31)*abb318(17)
      abb318(53)=-abb318(31)*abb318(13)
      abb318(54)=abb318(22)*spbk7k2
      abb318(82)=abb318(54)*abb318(55)
      abb318(83)=abb318(82)*abb318(77)
      abb318(83)=abb318(83)+abb318(53)
      abb318(84)=abb318(83)*abb318(34)
      abb318(13)=-abb318(70)*abb318(13)
      abb318(85)=abb318(13)*abb318(27)
      abb318(86)=-abb318(77)*abb318(85)
      abb318(81)=abb318(86)+abb318(81)+abb318(84)
      abb318(81)=spbl6k2*abb318(81)
      abb318(84)=abb318(64)*abb318(16)
      abb318(86)=abb318(32)*abb318(77)
      abb318(84)=abb318(84)-abb318(86)
      abb318(86)=-abb318(84)*abb318(68)
      abb318(87)=abb318(36)*abb318(16)
      abb318(88)=abb318(77)-abb318(49)
      abb318(88)=abb318(88)*abb318(87)
      abb318(89)=-abb318(88)*abb318(52)
      abb318(90)=spbk3k2**2
      abb318(42)=abb318(90)*abb318(42)*spak3k4
      abb318(91)=-abb318(42)*abb318(55)
      abb318(92)=spbk7l5*spak1l5
      abb318(93)=abb318(92)*abb318(91)
      abb318(94)=-abb318(77)*abb318(93)
      abb318(95)=abb318(25)*abb318(16)
      abb318(96)=abb318(95)*abb318(11)**3
      abb318(97)=spbk7k3*spak1l5
      abb318(98)=abb318(97)*abb318(96)
      abb318(81)=abb318(81)+abb318(98)+abb318(94)+abb318(89)+abb318(86)
      abb318(81)=spak2l6*abb318(81)
      abb318(86)=abb318(29)*spbk4k3
      abb318(89)=abb318(59)*abb318(86)
      abb318(94)=abb318(33)*abb318(10)
      abb318(98)=spak2l6*spbk4k3
      abb318(99)=abb318(98)*spbl6k2
      abb318(100)=abb318(94)*abb318(99)
      abb318(89)=abb318(89)-abb318(100)
      abb318(89)=abb318(89)*abb318(47)
      abb318(101)=spak2l5*abb318(11)
      abb318(102)=abb318(101)*spbk4k3
      abb318(103)=abb318(84)*abb318(102)
      abb318(104)=abb318(83)*abb318(99)
      abb318(105)=spbk4k3*spak2l5
      abb318(106)=abb318(105)*abb318(61)
      abb318(107)=-abb318(59)*abb318(106)
      abb318(89)=abb318(104)+abb318(103)+abb318(107)+abb318(89)
      abb318(89)=spak4l6*abb318(89)
      abb318(103)=abb318(34)*abb318(101)
      abb318(104)=abb318(103)*abb318(66)
      abb318(107)=abb318(101)*abb318(38)
      abb318(50)=abb318(50)*abb318(107)
      abb318(75)=abb318(75)*abb318(27)
      abb318(108)=abb318(75)*abb318(101)
      abb318(50)=abb318(108)+abb318(104)-abb318(50)
      abb318(50)=-abb318(50)*abb318(47)
      abb318(104)=spak3k4*abb318(16)
      abb318(108)=abb318(8)*spbk3k2
      abb318(108)=abb318(23)*abb318(108)**2
      abb318(109)=abb318(20)*spbk7k2
      abb318(110)=abb318(109)*mB**5*abb318(108)
      abb318(111)=abb318(110)*abb318(104)
      abb318(109)=abb318(104)*abb318(109)
      abb318(108)=abb318(17)*abb318(108)
      abb318(112)=-abb318(108)*abb318(109)
      abb318(113)=abb318(112)*abb318(77)
      abb318(111)=abb318(113)+abb318(111)
      abb318(111)=spak1k2*spak2l5*abb318(111)
      abb318(113)=abb318(20)*spak3k4
      abb318(108)=-abb318(16)*abb318(108)*abb318(113)
      abb318(114)=-abb318(108)*abb318(92)
      abb318(75)=abb318(11)*abb318(75)
      abb318(75)=abb318(114)+abb318(75)
      abb318(114)=spak2l5**2
      abb318(115)=abb318(114)*spbl5k2
      abb318(75)=abb318(75)*abb318(115)
      abb318(116)=abb318(47)*spak4l6
      abb318(66)=-abb318(102)*abb318(66)*abb318(116)
      abb318(50)=abb318(75)+abb318(66)+abb318(111)+abb318(50)
      abb318(50)=abb318(9)*abb318(50)
      abb318(66)=abb318(55)*spbk7k2
      abb318(75)=abb318(74)*abb318(66)
      abb318(111)=abb318(75)*abb318(101)
      abb318(117)=abb318(48)*abb318(74)
      abb318(114)=abb318(114)*abb318(9)
      abb318(118)=abb318(11)*abb318(117)*abb318(114)
      abb318(119)=abb318(95)*abb318(101)
      abb318(120)=spbk7l6*spal5l6
      abb318(121)=abb318(119)*abb318(120)
      abb318(111)=abb318(121)+abb318(118)+abb318(111)
      abb318(111)=spak1l6*abb318(111)
      abb318(70)=-abb318(70)*abb318(48)
      abb318(118)=-abb318(11)*abb318(70)
      abb318(117)=abb318(118)-abb318(117)
      abb318(117)=abb318(117)*abb318(101)
      abb318(118)=-abb318(58)*abb318(119)
      abb318(117)=abb318(118)+abb318(117)
      abb318(117)=spak1l5*abb318(117)
      abb318(75)=-abb318(75)*abb318(67)
      abb318(118)=-spbk7k2*abb318(26)
      abb318(121)=abb318(118)*spak1l6
      abb318(122)=spbl6k2*abb318(121)
      abb318(75)=abb318(75)+abb318(122)
      abb318(75)=spak2l6*abb318(75)
      abb318(122)=abb318(13)*spak1l6
      abb318(123)=spak2l5*abb318(122)*abb318(59)
      abb318(75)=abb318(75)+abb318(123)+abb318(111)+abb318(117)
      abb318(75)=spbl5k3*abb318(75)
      abb318(79)=-abb318(79)*abb318(16)
      abb318(60)=-abb318(60)*abb318(14)
      abb318(111)=abb318(46)*spbk7k2
      abb318(60)=abb318(111)+abb318(60)
      abb318(111)=-abb318(60)*abb318(77)
      abb318(79)=abb318(111)+abb318(79)
      abb318(79)=spak2k4*abb318(79)
      abb318(54)=abb318(54)*abb318(16)
      abb318(111)=abb318(54)*abb318(77)
      abb318(117)=-abb318(16)*abb318(31)
      abb318(111)=abb318(111)+abb318(117)
      abb318(117)=-spbk3k1*abb318(111)
      abb318(79)=abb318(79)+abb318(117)
      abb318(79)=spal5l6*abb318(79)
      abb318(117)=abb318(91)*abb318(77)
      abb318(123)=abb318(58)*abb318(117)
      abb318(79)=abb318(79)+abb318(123)
      abb318(79)=spak1k2*abb318(79)
      abb318(30)=abb318(16)*abb318(30)
      abb318(123)=abb318(30)*abb318(11)
      abb318(124)=abb318(123)-abb318(61)
      abb318(125)=spbk3k1*spak1l5
      abb318(126)=abb318(124)*abb318(125)
      abb318(127)=abb318(24)*abb318(16)
      abb318(128)=abb318(127)*abb318(11)
      abb318(14)=abb318(43)*abb318(14)
      abb318(14)=abb318(14)-abb318(46)
      abb318(129)=abb318(128)-abb318(14)
      abb318(130)=abb318(129)*abb318(51)
      abb318(126)=abb318(126)-abb318(130)
      abb318(130)=-abb318(58)*spak2l5*abb318(126)
      abb318(73)=abb318(73)*abb318(101)*abb318(97)
      abb318(73)=abb318(130)+abb318(73)
      abb318(73)=spbl5k2*abb318(73)
      abb318(130)=abb318(47)*spbk4k3
      abb318(63)=-abb318(63)*abb318(130)
      abb318(131)=-abb318(84)*abb318(98)
      abb318(63)=abb318(131)+abb318(63)
      abb318(63)=abb318(11)*abb318(63)
      abb318(131)=-abb318(124)*abb318(58)*abb318(105)*spbl5k2
      abb318(63)=abb318(131)+abb318(63)
      abb318(63)=spak4l5*abb318(63)
      abb318(131)=abb318(123)*abb318(34)
      abb318(128)=abb318(128)*abb318(38)
      abb318(128)=abb318(131)-abb318(128)
      abb318(128)=abb318(128)*abb318(47)
      abb318(21)=abb318(21)*abb318(4)
      abb318(131)=abb318(11)*abb318(21)*abb318(1)*abb318(104)*abb318(27)
      abb318(128)=abb318(131)+abb318(128)
      abb318(128)=spal5l6*abb318(128)
      abb318(131)=-abb318(127)*abb318(107)
      abb318(132)=abb318(30)*abb318(103)
      abb318(131)=abb318(131)+abb318(132)
      abb318(131)=spal5l6*abb318(131)
      abb318(132)=spal5l6*spbk4k3
      abb318(133)=spak4l6*abb318(132)*abb318(101)
      abb318(134)=abb318(30)*abb318(133)
      abb318(131)=abb318(131)+abb318(134)
      abb318(131)=spbl5k2*abb318(131)
      abb318(116)=abb318(123)*abb318(132)*abb318(116)
      abb318(116)=abb318(131)+abb318(116)+abb318(128)
      abb318(116)=spbk7l6*abb318(116)
      abb318(123)=abb318(103)*abb318(32)
      abb318(128)=abb318(107)*abb318(87)
      abb318(131)=abb318(119)*abb318(27)
      abb318(123)=abb318(131)+abb318(123)-abb318(128)
      abb318(128)=spal5l6*abb318(123)
      abb318(131)=abb318(32)*abb318(133)
      abb318(128)=abb318(131)+abb318(128)
      abb318(128)=spbl6l5*abb318(128)
      abb318(84)=abb318(84)*abb318(103)
      abb318(103)=abb318(132)*spak2k4
      abb318(111)=abb318(111)*abb318(103)
      abb318(131)=abb318(61)*abb318(34)
      abb318(133)=abb318(14)*abb318(38)
      abb318(131)=abb318(131)-abb318(133)
      abb318(133)=-spak2l5*abb318(131)
      abb318(134)=abb318(55)*spak3k4
      abb318(135)=mB*abb318(1)
      abb318(21)=abb318(21)*abb318(135)
      abb318(136)=abb318(134)*abb318(21)*abb318(27)
      abb318(136)=abb318(136)-abb318(133)
      abb318(137)=-abb318(136)*abb318(59)
      abb318(25)=abb318(25)*abb318(17)
      abb318(138)=-abb318(25)*abb318(48)
      abb318(139)=-abb318(70)*abb318(77)
      abb318(138)=abb318(139)+abb318(138)
      abb318(139)=spak1k2*spal5l6
      abb318(138)=abb318(138)*abb318(139)
      abb318(140)=abb318(72)*spak1l5
      abb318(141)=spbl5k2*spak2l5
      abb318(142)=abb318(58)*abb318(140)*abb318(141)
      abb318(138)=abb318(138)+abb318(142)
      abb318(138)=spbl6k3*abb318(138)
      abb318(88)=abb318(88)*abb318(107)
      abb318(96)=-spak2l5*abb318(27)*abb318(96)
      abb318(41)=abb318(138)+abb318(128)+abb318(75)+abb318(116)+abb318(50)+abb3&
      &18(63)+abb318(73)+abb318(89)+abb318(81)+abb318(137)+abb318(96)+abb318(79&
      &)+abb318(111)+abb318(88)+abb318(84)+abb318(41)
      abb318(41)=8.0_ki*abb318(41)
      abb318(50)=abb318(82)*abb318(34)
      abb318(63)=abb318(69)*abb318(38)
      abb318(50)=abb318(63)+abb318(50)-abb318(85)
      abb318(50)=abb318(50)*spbl6k2
      abb318(73)=abb318(68)*abb318(32)
      abb318(75)=abb318(52)*abb318(87)
      abb318(79)=abb318(76)*abb318(95)
      abb318(50)=abb318(79)-abb318(75)+abb318(50)+abb318(73)
      abb318(73)=abb318(50)*spak2l6
      abb318(75)=abb318(32)*abb318(11)
      abb318(79)=abb318(75)*abb318(98)
      abb318(81)=abb318(79)*spak4l5
      abb318(73)=abb318(73)+abb318(81)
      abb318(32)=abb318(102)*abb318(32)
      abb318(81)=abb318(99)*abb318(82)
      abb318(32)=abb318(32)-abb318(81)
      abb318(32)=abb318(32)*spak4l6
      abb318(84)=abb318(103)*abb318(54)
      abb318(85)=abb318(70)*spbl6k3
      abb318(88)=abb318(85)*abb318(139)
      abb318(84)=abb318(84)-abb318(88)
      abb318(88)=abb318(9)*spak1k2
      abb318(89)=abb318(112)*abb318(88)
      abb318(96)=abb318(89)*spak2l5
      abb318(32)=abb318(32)-abb318(96)+abb318(123)-abb318(84)
      abb318(96)=abb318(54)*spbk3k1
      abb318(99)=abb318(60)*spak2k4
      abb318(96)=abb318(96)+abb318(99)
      abb318(99)=abb318(96)*abb318(139)
      abb318(99)=abb318(99)+abb318(32)-abb318(73)
      abb318(99)=16.0_ki*abb318(99)
      abb318(107)=abb318(125)*abb318(62)
      abb318(111)=abb318(45)*abb318(51)
      abb318(107)=abb318(107)+abb318(111)
      abb318(116)=abb318(140)*spbk7k3
      abb318(116)=abb318(116)+abb318(107)
      abb318(116)=abb318(47)*abb318(116)
      abb318(70)=abb318(70)*spak2l5
      abb318(123)=spak1l5*abb318(70)*spbl5k3
      abb318(128)=spbk7k3*spak2l5
      abb318(137)=abb318(128)*abb318(140)
      abb318(138)=abb318(137)*spbl5k2
      abb318(116)=abb318(123)+abb318(116)-abb318(138)
      abb318(123)=abb318(62)*spbk4k3
      abb318(138)=abb318(47)*abb318(123)
      abb318(142)=-spak4l5*abb318(138)
      abb318(142)=abb318(142)-abb318(116)
      abb318(142)=16.0_ki*abb318(142)
      abb318(87)=abb318(87)*abb318(11)
      abb318(60)=-abb318(87)-abb318(60)
      abb318(60)=abb318(60)*abb318(38)
      abb318(143)=abb318(75)-abb318(54)
      abb318(144)=abb318(143)*abb318(34)
      abb318(145)=abb318(95)*abb318(11)
      abb318(146)=abb318(145)-abb318(71)
      abb318(146)=abb318(146)*abb318(27)
      abb318(42)=abb318(42)*abb318(15)
      abb318(147)=-abb318(42)*abb318(92)
      abb318(60)=-abb318(89)+abb318(146)+abb318(147)+abb318(60)+abb318(144)
      abb318(60)=spak2l5*abb318(60)
      abb318(89)=abb318(96)*spal5l6
      abb318(23)=abb318(90)*abb318(23)
      abb318(20)=abb318(23)*abb318(20)*abb318(8)
      abb318(96)=abb318(17)*abb318(20)*spak3k4
      abb318(66)=-abb318(66)*abb318(96)
      abb318(66)=abb318(89)+abb318(66)
      abb318(66)=spak1k2*abb318(66)
      abb318(143)=abb318(143)*abb318(105)
      abb318(81)=abb318(143)-abb318(81)
      abb318(81)=spak4l6*abb318(81)
      abb318(60)=abb318(81)+abb318(66)+abb318(60)-abb318(84)-abb318(73)
      abb318(60)=16.0_ki*abb318(60)
      abb318(28)=spbl6k2*abb318(28)
      abb318(64)=-abb318(64)*abb318(55)
      abb318(66)=abb318(64)*abb318(68)
      abb318(68)=abb318(55)*abb318(49)
      abb318(36)=abb318(36)*abb318(68)
      abb318(52)=abb318(36)*abb318(52)
      abb318(73)=abb318(55)*abb318(74)
      abb318(74)=-abb318(73)*abb318(76)
      abb318(28)=abb318(28)+abb318(74)+abb318(52)+abb318(66)
      abb318(28)=spak2l6*abb318(28)
      abb318(52)=abb318(53)*abb318(103)
      abb318(66)=-spbk3k1*abb318(53)
      abb318(74)=spak2k4*abb318(80)
      abb318(66)=abb318(74)+abb318(66)
      abb318(66)=abb318(66)*abb318(139)
      abb318(28)=abb318(28)+abb318(52)+abb318(66)
      abb318(28)=abb318(10)*abb318(28)
      abb318(35)=-abb318(35)*abb318(47)
      abb318(52)=abb318(82)*abb318(11)
      abb318(52)=abb318(52)+abb318(64)
      abb318(52)=abb318(52)*abb318(11)
      abb318(52)=abb318(52)+abb318(53)
      abb318(66)=-spak1l6*abb318(52)
      abb318(31)=-abb318(31)*abb318(15)
      abb318(74)=abb318(77)*abb318(62)
      abb318(31)=abb318(74)+abb318(31)
      abb318(74)=spak1l5*abb318(31)
      abb318(66)=abb318(66)+abb318(74)
      abb318(66)=spbk3k1*abb318(66)
      abb318(52)=-spbk4k3*abb318(52)
      abb318(74)=abb318(94)*spbk4k3
      abb318(76)=abb318(74)*abb318(47)
      abb318(52)=abb318(52)-abb318(100)+abb318(76)
      abb318(52)=spak4l6*abb318(52)
      abb318(76)=spbk4k3*abb318(31)
      abb318(64)=abb318(10)*abb318(11)*abb318(64)*abb318(98)
      abb318(64)=abb318(76)+abb318(64)
      abb318(64)=spak4l5*abb318(64)
      abb318(76)=-abb318(11)*abb318(69)
      abb318(36)=abb318(76)-abb318(36)
      abb318(36)=abb318(11)*abb318(36)
      abb318(36)=abb318(36)+abb318(80)
      abb318(36)=abb318(36)*abb318(38)
      abb318(76)=abb318(45)*abb318(77)
      abb318(17)=abb318(24)*abb318(17)
      abb318(24)=abb318(48)*abb318(17)
      abb318(24)=abb318(76)-abb318(24)
      abb318(48)=abb318(24)*abb318(51)
      abb318(76)=abb318(11)*abb318(13)
      abb318(73)=abb318(76)+abb318(73)
      abb318(76)=spak1l6*abb318(11)
      abb318(73)=abb318(73)*abb318(76)
      abb318(80)=abb318(77)*abb318(140)
      abb318(73)=abb318(73)+abb318(80)
      abb318(73)=spbk7k3*abb318(73)
      abb318(80)=abb318(110)*abb318(134)
      abb318(81)=-abb318(55)*abb318(96)
      abb318(84)=abb318(81)*abb318(58)
      abb318(80)=abb318(84)+abb318(80)
      abb318(80)=abb318(80)*abb318(88)
      abb318(84)=abb318(55)*abb318(25)
      abb318(94)=abb318(44)*abb318(84)
      abb318(96)=-spak1l5*abb318(94)
      abb318(96)=-abb318(121)+abb318(96)
      abb318(96)=spbl5k3*abb318(96)
      abb318(98)=abb318(10)*spak1k2
      abb318(100)=spbl6k3*spal5l6*abb318(94)*abb318(98)
      abb318(28)=abb318(100)+abb318(96)+abb318(80)+abb318(64)+abb318(52)+abb318&
      &(28)+abb318(73)+abb318(66)+abb318(36)+abb318(48)+abb318(35)
      abb318(28)=16.0_ki*abb318(28)
      abb318(35)=abb318(62)*spak1l5
      abb318(36)=abb318(82)*spak1l6
      abb318(35)=abb318(35)-abb318(36)
      abb318(35)=abb318(35)*spbk3k1
      abb318(36)=abb318(122)+abb318(140)
      abb318(48)=abb318(36)*spbk7k3
      abb318(52)=abb318(123)*spak4l5
      abb318(64)=abb318(82)*spbk4k3
      abb318(66)=abb318(64)*spak4l6
      abb318(35)=abb318(111)-abb318(63)-abb318(66)+abb318(48)+abb318(35)+abb318&
      &(52)
      abb318(48)=32.0_ki*abb318(35)
      abb318(52)=-abb318(8)*abb318(53)
      abb318(53)=-spak1l5*abb318(52)
      abb318(63)=spak1l6*abb318(33)
      abb318(53)=abb318(63)+abb318(53)
      abb318(53)=spbk3k1*abb318(53)
      abb318(26)=spak1l6*abb318(26)
      abb318(63)=abb318(8)*abb318(84)
      abb318(73)=-spak1l5*abb318(63)
      abb318(26)=abb318(26)+abb318(73)
      abb318(26)=spbk7k3*abb318(26)
      abb318(73)=abb318(52)*spbk4k3
      abb318(80)=-spak4l5*abb318(73)
      abb318(17)=abb318(17)*abb318(55)*abb318(44)
      abb318(44)=abb318(17)*abb318(51)
      abb318(26)=abb318(80)+abb318(26)+abb318(53)+abb318(39)+abb318(44)
      abb318(26)=abb318(10)*abb318(26)
      abb318(39)=spak4l6*abb318(74)
      abb318(26)=abb318(39)+abb318(26)
      abb318(26)=32.0_ki*abb318(26)
      abb318(39)=abb318(93)-abb318(50)
      abb318(39)=spak2l6*abb318(39)
      abb318(44)=-abb318(91)*abb318(58)
      abb318(44)=abb318(89)+abb318(44)
      abb318(44)=spak1k2*abb318(44)
      abb318(53)=-abb318(79)+abb318(138)
      abb318(53)=spak4l5*abb318(53)
      abb318(32)=abb318(53)+abb318(39)+abb318(44)+abb318(116)+abb318(32)
      abb318(32)=8.0_ki*abb318(32)
      abb318(39)=-16.0_ki*abb318(35)
      abb318(44)=abb318(92)*abb318(90)*abb318(113)*abb318(55)*abb318(135)*abb31&
      &8(4)
      abb318(53)=abb318(23)*abb318(113)
      abb318(19)=abb318(53)*abb318(19)
      abb318(55)=abb318(19)*abb318(98)
      abb318(74)=abb318(55)*abb318(47)
      abb318(79)=spak1k2*abb318(117)
      abb318(44)=abb318(44)+abb318(79)+abb318(74)
      abb318(44)=8.0_ki*abb318(44)
      abb318(74)=16.0_ki*spak1k2
      abb318(79)=abb318(74)*abb318(91)
      abb318(80)=16.0_ki*abb318(55)
      abb318(90)=8.0_ki*abb318(91)
      abb318(96)=-spak1k2*abb318(90)
      abb318(93)=-spak2l5*abb318(93)
      abb318(18)=spak1k2*abb318(23)*abb318(18)*abb318(109)
      abb318(18)=abb318(93)+abb318(18)
      abb318(18)=8.0_ki*abb318(18)
      abb318(23)=-spbk7k2*abb318(84)
      abb318(84)=-spbk7k2*abb318(13)
      abb318(93)=abb318(84)*abb318(77)
      abb318(100)=abb318(13)*abb318(59)
      abb318(23)=abb318(100)+abb318(93)+abb318(23)
      abb318(23)=spak1k2*abb318(23)
      abb318(93)=abb318(92)*abb318(13)
      abb318(100)=abb318(118)*abb318(98)
      abb318(103)=abb318(93)+abb318(100)
      abb318(103)=abb318(103)*abb318(47)
      abb318(109)=abb318(71)*spak2l5
      abb318(92)=-abb318(92)*abb318(109)
      abb318(93)=-abb318(40)*abb318(93)
      abb318(23)=abb318(93)+abb318(92)+abb318(103)+abb318(23)
      abb318(23)=8.0_ki*abb318(23)
      abb318(92)=abb318(84)*abb318(74)
      abb318(93)=16.0_ki*abb318(100)
      abb318(100)=8.0_ki*spak1k2
      abb318(103)=-abb318(84)*abb318(100)
      abb318(15)=abb318(22)*abb318(15)
      abb318(22)=abb318(125)*abb318(15)
      abb318(43)=-abb318(43)*abb318(65)
      abb318(46)=abb318(46)*abb318(8)
      abb318(43)=abb318(46)+abb318(43)
      abb318(46)=abb318(43)*abb318(51)
      abb318(22)=abb318(22)+abb318(46)
      abb318(46)=abb318(22)*abb318(141)
      abb318(65)=abb318(22)*abb318(47)
      abb318(110)=abb318(15)*spbk4k3
      abb318(111)=abb318(47)*abb318(110)
      abb318(113)=abb318(105)*abb318(15)
      abb318(116)=abb318(113)*spbl5k2
      abb318(111)=abb318(111)+abb318(116)
      abb318(117)=spak4l5*abb318(111)
      abb318(21)=abb318(104)*abb318(21)
      abb318(118)=abb318(8)*abb318(21)
      abb318(97)=abb318(118)*abb318(97)
      abb318(121)=spbl5k3*spak2l5*abb318(140)
      abb318(65)=abb318(121)+abb318(117)+abb318(46)+abb318(97)+abb318(65)
      abb318(65)=spbk7l6*abb318(65)
      abb318(88)=abb318(88)*abb318(81)
      abb318(97)=abb318(14)*abb318(51)
      abb318(117)=-abb318(61)*abb318(125)
      abb318(97)=abb318(88)+abb318(97)+abb318(117)
      abb318(97)=spbk7l5*spak2l5*abb318(97)
      abb318(117)=abb318(33)*spbk3k1
      abb318(37)=abb318(37)*spak2k4
      abb318(37)=abb318(117)+abb318(37)
      abb318(37)=abb318(37)*spak1k2
      abb318(117)=spbk4k3*spak2k4
      abb318(33)=abb318(33)*abb318(117)
      abb318(33)=abb318(37)-abb318(33)
      abb318(33)=abb318(33)*abb318(10)
      abb318(37)=abb318(125)*abb318(29)
      abb318(51)=abb318(57)*abb318(51)
      abb318(37)=abb318(37)-abb318(51)
      abb318(37)=abb318(37)*spbk7l5
      abb318(51)=abb318(33)-abb318(37)
      abb318(51)=-abb318(51)*abb318(47)
      abb318(78)=spak2k4*abb318(78)
      abb318(121)=spbk3k1*abb318(83)
      abb318(78)=abb318(78)+abb318(121)
      abb318(78)=spak1k2*abb318(78)
      abb318(107)=spak2l5*abb318(107)
      abb318(121)=abb318(105)*abb318(62)
      abb318(125)=spak4l5*abb318(121)
      abb318(107)=abb318(125)+abb318(137)+abb318(107)
      abb318(107)=spbl6l5*abb318(107)
      abb318(83)=-abb318(83)*abb318(117)
      abb318(29)=abb318(29)*spbk3k1
      abb318(57)=abb318(57)*spak2k4
      abb318(29)=abb318(29)-abb318(57)
      abb318(57)=spak1k2*abb318(29)
      abb318(117)=-spak2k4*abb318(86)
      abb318(57)=abb318(117)+abb318(57)
      abb318(57)=abb318(57)*abb318(59)
      abb318(37)=-abb318(40)*abb318(37)
      abb318(59)=abb318(106)*spbk7l5
      abb318(117)=abb318(86)*spbk7l5
      abb318(40)=-abb318(40)+abb318(47)
      abb318(40)=abb318(117)*abb318(40)
      abb318(40)=-abb318(59)+abb318(40)
      abb318(40)=spak4l5*abb318(40)
      abb318(37)=abb318(107)+abb318(40)+abb318(37)+abb318(57)+abb318(78)+abb318&
      &(83)+abb318(51)+abb318(65)+abb318(97)
      abb318(37)=8.0_ki*abb318(37)
      abb318(40)=abb318(82)*spbk3k1
      abb318(51)=abb318(69)*spak2k4
      abb318(40)=abb318(40)+abb318(51)
      abb318(51)=abb318(40)*spak1k2
      abb318(57)=abb318(64)*spak2k4
      abb318(51)=abb318(57)-abb318(51)
      abb318(57)=16.0_ki*abb318(51)
      abb318(33)=-16.0_ki*abb318(33)
      abb318(51)=8.0_ki*abb318(51)
      abb318(65)=abb318(131)*abb318(47)
      abb318(78)=spak4l6*abb318(106)
      abb318(78)=abb318(78)-abb318(133)
      abb318(78)=spbl5k2*abb318(78)
      abb318(83)=spak1k2*abb318(42)*abb318(77)
      abb318(21)=abb318(27)*abb318(21)
      abb318(97)=spak4l6*abb318(61)*abb318(130)
      abb318(107)=spbl5k3*spak1l6*abb318(109)
      abb318(21)=abb318(107)+abb318(78)+abb318(97)+abb318(83)+abb318(21)+abb318&
      &(65)
      abb318(21)=8.0_ki*abb318(21)
      abb318(65)=abb318(74)*abb318(42)
      abb318(74)=abb318(81)*abb318(98)
      abb318(78)=16.0_ki*abb318(74)
      abb318(83)=-abb318(42)*abb318(100)
      abb318(97)=-abb318(56)*abb318(47)
      abb318(36)=abb318(36)*spbl5k3
      abb318(98)=-spak2l5*abb318(36)
      abb318(100)=-spak1k2*abb318(81)
      abb318(107)=-spak4l5*abb318(116)
      abb318(46)=abb318(98)+abb318(107)-abb318(46)+abb318(100)+abb318(97)+abb31&
      &8(136)
      abb318(46)=spbk7l5*abb318(46)
      abb318(97)=-abb318(117)*abb318(47)
      abb318(59)=abb318(59)+abb318(97)
      abb318(59)=spak4l6*abb318(59)
      abb318(46)=abb318(59)+abb318(46)
      abb318(46)=8.0_ki*abb318(46)
      abb318(59)=spbk7l6*abb318(15)*abb318(141)
      abb318(97)=spbl6l5*spak2l5*abb318(62)
      abb318(59)=abb318(97)+abb318(59)
      abb318(97)=2.0_ki*abb318(132)
      abb318(59)=abb318(97)*abb318(59)
      abb318(98)=-abb318(31)*abb318(105)
      abb318(100)=2.0_ki*abb318(58)
      abb318(102)=-abb318(30)*abb318(102)*abb318(100)
      abb318(59)=abb318(98)+abb318(102)+abb318(59)
      abb318(59)=8.0_ki*abb318(59)
      abb318(98)=16.0_ki*abb318(121)
      abb318(102)=32.0_ki*abb318(121)
      abb318(107)=abb318(58)*abb318(86)
      abb318(73)=abb318(73)+abb318(107)
      abb318(73)=16.0_ki*abb318(73)
      abb318(107)=8.0_ki*abb318(121)
      abb318(106)=16.0_ki*abb318(106)
      abb318(105)=-16.0_ki*abb318(82)*abb318(105)
      abb318(111)=-8.0_ki*abb318(111)
      abb318(116)=2.0_ki*spbk7l5
      abb318(113)=-abb318(113)*abb318(116)
      abb318(117)=-spak2l6*abb318(117)
      abb318(113)=abb318(113)+abb318(117)
      abb318(113)=8.0_ki*abb318(113)
      abb318(117)=abb318(129)*abb318(38)
      abb318(121)=-abb318(124)*abb318(34)
      abb318(117)=abb318(117)+abb318(121)
      abb318(117)=spbl6k2*abb318(117)
      abb318(121)=spbl5k2*abb318(126)
      abb318(122)=abb318(122)*spbl6k2
      abb318(95)=abb318(95)*abb318(67)
      abb318(95)=abb318(95)-abb318(122)
      abb318(95)=spbl5k3*abb318(95)
      abb318(125)=abb318(140)*spbl5k2
      abb318(126)=-spak1l6*abb318(145)
      abb318(125)=abb318(126)-abb318(125)
      abb318(125)=spbl6k3*abb318(125)
      abb318(95)=abb318(125)+abb318(95)+abb318(121)+abb318(117)
      abb318(95)=spal5l6*abb318(95)
      abb318(66)=-spbl6k2*abb318(66)
      abb318(117)=-spbk4k3*abb318(75)*spak4l5
      abb318(50)=abb318(117)+abb318(66)-abb318(50)
      abb318(50)=spal6k7*abb318(50)
      abb318(66)=abb318(9)*spak2l5
      abb318(112)=abb318(112)*abb318(66)
      abb318(85)=-spal5l6*abb318(85)
      abb318(85)=abb318(85)-abb318(89)+abb318(112)
      abb318(85)=spak1k7*abb318(85)
      abb318(89)=spak4l6*spbk4k3
      abb318(34)=abb318(89)+abb318(34)
      abb318(34)=abb318(75)*abb318(34)
      abb318(38)=-abb318(38)*abb318(87)
      abb318(27)=abb318(27)*abb318(145)
      abb318(27)=abb318(27)+abb318(38)+abb318(34)
      abb318(27)=spal5k7*abb318(27)
      abb318(34)=-spak4l6*spbl6k2
      abb318(38)=spak4l5*spbl5k2
      abb318(34)=abb318(38)+abb318(34)
      abb318(34)=abb318(124)*abb318(34)
      abb318(38)=-spak4k7*abb318(54)
      abb318(34)=abb318(38)+abb318(34)
      abb318(34)=abb318(132)*abb318(34)
      abb318(38)=abb318(53)*abb318(68)
      abb318(53)=abb318(11)*abb318(91)
      abb318(53)=abb318(53)+abb318(38)
      abb318(53)=abb318(53)*abb318(76)
      abb318(20)=abb318(104)*abb318(20)*abb318(49)
      abb318(49)=-abb318(11)*abb318(42)
      abb318(49)=abb318(49)+abb318(20)
      abb318(49)=abb318(49)*abb318(67)
      abb318(38)=-abb318(38)*abb318(67)
      abb318(19)=abb318(19)*spak1l6
      abb318(54)=-spbl6k2*abb318(19)
      abb318(38)=abb318(38)+abb318(54)
      abb318(38)=abb318(10)*spak2l6*abb318(38)
      abb318(20)=-spak1l6*abb318(20)*abb318(101)
      abb318(54)=spak1l5*abb318(108)*abb318(141)
      abb318(20)=abb318(20)+abb318(54)
      abb318(20)=abb318(9)*abb318(20)
      abb318(20)=abb318(27)+abb318(50)+abb318(85)+abb318(20)+abb318(38)+abb318(&
      &53)+abb318(49)+abb318(34)+abb318(95)
      abb318(20)=8.0_ki*abb318(20)
      abb318(27)=abb318(42)*spak1l5
      abb318(34)=16.0_ki*abb318(27)
      abb318(38)=spak1l5*abb318(81)
      abb318(19)=abb318(19)+abb318(38)
      abb318(19)=abb318(10)*abb318(19)
      abb318(38)=abb318(9)*spak1l6*abb318(81)
      abb318(19)=abb318(19)+abb318(38)
      abb318(19)=16.0_ki*abb318(19)
      abb318(38)=-spak1l6*abb318(91)
      abb318(27)=abb318(38)+abb318(27)
      abb318(27)=8.0_ki*abb318(27)
      abb318(35)=8.0_ki*abb318(35)
      abb318(38)=spak1k7*abb318(90)
      abb318(49)=spak1l5*abb318(90)
      abb318(50)=spak1l5*abb318(71)
      abb318(53)=spak1k7*abb318(84)
      abb318(50)=abb318(53)+abb318(50)+abb318(122)
      abb318(50)=8.0_ki*abb318(50)
      abb318(53)=spak4l6*abb318(86)
      abb318(53)=abb318(53)+abb318(56)
      abb318(53)=spbl6k2*abb318(53)
      abb318(40)=spak1k7*abb318(40)
      abb318(54)=-spbl6k3*abb318(140)
      abb318(56)=spak4k7*abb318(64)
      abb318(40)=abb318(56)+abb318(40)+abb318(54)-abb318(88)-abb318(55)+abb318(&
      &53)
      abb318(40)=8.0_ki*abb318(40)
      abb318(42)=8.0_ki*spak1k7*abb318(42)
      abb318(53)=8.0_ki*spak1l6*abb318(71)
      abb318(54)=spak4l5*abb318(110)
      abb318(22)=abb318(54)+abb318(22)
      abb318(22)=spbl5k2*abb318(22)
      abb318(22)=abb318(36)-abb318(74)+abb318(22)
      abb318(22)=8.0_ki*abb318(22)
      abb318(36)=abb318(124)*abb318(97)
      abb318(54)=spal5k7*abb318(123)
      abb318(36)=abb318(36)+abb318(54)
      abb318(36)=8.0_ki*abb318(36)
      abb318(54)=-8.0_ki*abb318(86)
      abb318(55)=8.0_ki*abb318(110)
      abb318(56)=-abb318(119)*abb318(100)
      abb318(16)=abb318(16)*abb318(25)*abb318(8)**2
      abb318(25)=spbk7k2*abb318(16)
      abb318(64)=abb318(47)*abb318(25)*abb318(66)
      abb318(67)=abb318(72)*spal5l6
      abb318(68)=abb318(67)*spbk7l6
      abb318(74)=abb318(141)-abb318(47)
      abb318(74)=abb318(74)*abb318(68)
      abb318(75)=spbl6l5*spal5l6*abb318(70)
      abb318(56)=abb318(75)+abb318(74)+abb318(56)+abb318(64)
      abb318(56)=8.0_ki*abb318(56)
      abb318(64)=16.0_ki*abb318(70)
      abb318(70)=16.0_ki*abb318(13)*abb318(58)
      abb318(74)=16.0_ki*abb318(109)
      abb318(75)=-16.0_ki*spak2l5*abb318(84)
      abb318(76)=8.0_ki*abb318(72)
      abb318(84)=-abb318(141)-abb318(47)
      abb318(84)=abb318(84)*abb318(76)
      abb318(85)=-spak2l5*abb318(72)*abb318(116)
      abb318(86)=spak2l6*spbk7l5
      abb318(87)=-abb318(13)*abb318(86)
      abb318(85)=abb318(85)+abb318(87)
      abb318(85)=8.0_ki*abb318(85)
      abb318(71)=2.0_ki*abb318(145)-abb318(71)
      abb318(71)=8.0_ki*spal5l6*abb318(71)
      abb318(13)=-8.0_ki*abb318(13)
      abb318(87)=spak2k4*spak2l5
      abb318(24)=-abb318(24)*abb318(87)
      abb318(88)=spbk3k1*spak2l5
      abb318(31)=-abb318(31)*abb318(88)
      abb318(89)=spak2k4*abb318(127)
      abb318(30)=-spbk3k1*abb318(30)
      abb318(30)=abb318(89)+abb318(30)
      abb318(30)=abb318(100)*abb318(101)*abb318(30)
      abb318(89)=abb318(88)*abb318(15)
      abb318(90)=abb318(87)*abb318(43)
      abb318(89)=abb318(89)+abb318(90)
      abb318(90)=abb318(89)*spbl5k2
      abb318(91)=spbk7k3*abb318(118)
      abb318(91)=abb318(91)+2.0_ki*abb318(90)
      abb318(91)=abb318(91)*abb318(120)
      abb318(68)=abb318(68)+abb318(94)
      abb318(68)=spak2l5*abb318(68)
      abb318(25)=-abb318(25)*abb318(114)
      abb318(25)=abb318(25)+abb318(68)
      abb318(25)=spbl5k3*abb318(25)
      abb318(68)=abb318(88)*abb318(62)
      abb318(94)=abb318(87)*abb318(45)
      abb318(68)=abb318(68)+abb318(94)
      abb318(94)=2.0_ki*abb318(68)
      abb318(95)=spal5l6*abb318(94)
      abb318(97)=abb318(128)*abb318(67)
      abb318(95)=abb318(95)+abb318(97)
      abb318(95)=spbl6l5*abb318(95)
      abb318(97)=abb318(128)*abb318(72)
      abb318(77)=-abb318(77)*abb318(97)
      abb318(100)=-abb318(128)*abb318(47)
      abb318(101)=spbk7k3*abb318(115)
      abb318(100)=abb318(101)+abb318(100)
      abb318(16)=abb318(9)*abb318(100)*abb318(16)
      abb318(16)=abb318(95)+abb318(25)+abb318(91)+abb318(16)+abb318(77)+abb318(&
      &30)+abb318(24)+abb318(31)
      abb318(16)=8.0_ki*abb318(16)
      abb318(24)=abb318(68)+abb318(97)
      abb318(25)=16.0_ki*abb318(24)
      abb318(30)=abb318(94)+abb318(97)
      abb318(30)=16.0_ki*abb318(30)
      abb318(31)=spbk3k1*abb318(52)
      abb318(52)=abb318(29)*abb318(58)
      abb318(17)=-spak2k4*abb318(17)
      abb318(58)=spbk7k3*abb318(63)
      abb318(17)=abb318(58)+abb318(52)+abb318(17)+abb318(31)
      abb318(17)=16.0_ki*abb318(17)
      abb318(24)=8.0_ki*abb318(24)
      abb318(14)=-abb318(14)*abb318(87)
      abb318(31)=abb318(61)*abb318(88)
      abb318(14)=abb318(14)+abb318(31)
      abb318(14)=16.0_ki*abb318(14)
      abb318(31)=-abb318(69)*abb318(87)
      abb318(52)=-abb318(82)*abb318(88)
      abb318(31)=abb318(31)+abb318(52)
      abb318(31)=16.0_ki*abb318(31)
      abb318(15)=abb318(15)*spbk3k1
      abb318(43)=abb318(43)*spak2k4
      abb318(15)=abb318(15)+abb318(43)
      abb318(43)=-abb318(15)*abb318(47)
      abb318(43)=-abb318(90)+abb318(43)
      abb318(43)=8.0_ki*abb318(43)
      abb318(47)=-abb318(89)*abb318(116)
      abb318(52)=-abb318(29)*abb318(86)
      abb318(47)=abb318(47)+abb318(52)
      abb318(47)=8.0_ki*abb318(47)
      abb318(52)=-spak2k4*abb318(129)
      abb318(58)=spbk3k1*abb318(124)
      abb318(52)=abb318(52)+abb318(58)
      abb318(52)=spal5l6*abb318(52)
      abb318(52)=abb318(52)-abb318(81)
      abb318(45)=spak2k4*abb318(45)
      abb318(58)=spbk3k1*abb318(62)
      abb318(61)=spbk7k3*abb318(72)
      abb318(45)=abb318(61)+abb318(45)+abb318(58)
      abb318(45)=spal5k7*abb318(45)
      abb318(58)=abb318(108)*abb318(66)
      abb318(61)=-spbl6k3*abb318(67)
      abb318(45)=abb318(45)+abb318(61)+2.0_ki*abb318(52)+abb318(58)
      abb318(45)=8.0_ki*abb318(45)
      abb318(29)=-8.0_ki*abb318(29)
      abb318(15)=8.0_ki*abb318(15)
      R2d318=0.0_ki
      rat2 = rat2 + R2d318
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='318' value='", &
          & R2d318, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd318h0
