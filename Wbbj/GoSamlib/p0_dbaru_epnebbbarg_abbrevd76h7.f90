module     p0_dbaru_epnebbbarg_abbrevd76h7
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh7
   implicit none
   private
   complex(ki), dimension(150), public :: abb76
   complex(ki), public :: R2d76
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
      abb76(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb76(2)=sqrt(mB**2)
      abb76(3)=NC**(-1)
      abb76(4)=sqrt2**(-1)
      abb76(5)=es71**(-1)
      abb76(6)=spak2l6**(-1)
      abb76(7)=spbk7k2**(-1)
      abb76(8)=spak2l5**(-1)
      abb76(9)=spbl6k2**(-1)
      abb76(10)=spbl5k2**(-1)
      abb76(11)=2.0_ki*abb76(3)
      abb76(12)=abb76(11)-NC
      abb76(13)=mB**2
      abb76(14)=abb76(13)*abb76(2)
      abb76(15)=-abb76(14)*abb76(12)
      abb76(16)=TR*gW
      abb76(16)=abb76(16)**2*i_*CVDU*abb76(4)*abb76(1)
      abb76(17)=abb76(16)*abb76(7)
      abb76(18)=abb76(17)*abb76(6)
      abb76(19)=abb76(5)*spak1k7
      abb76(20)=abb76(19)*c3
      abb76(21)=abb76(18)*abb76(20)
      abb76(22)=abb76(21)*spbk3k2
      abb76(23)=abb76(22)*abb76(15)
      abb76(13)=abb76(13)*abb76(18)*abb76(2)
      abb76(24)=abb76(3)**2
      abb76(25)=abb76(24)*c4
      abb76(26)=abb76(25)*abb76(19)
      abb76(27)=abb76(26)*spbk3k2
      abb76(28)=abb76(27)*abb76(13)
      abb76(23)=abb76(28)+abb76(23)
      abb76(23)=spbl5k2*abb76(23)
      abb76(28)=spbk3k2*abb76(8)
      abb76(29)=abb76(28)*abb76(21)
      abb76(30)=-abb76(2)*abb76(12)
      abb76(31)=-abb76(29)*abb76(30)
      abb76(32)=abb76(27)*abb76(2)
      abb76(33)=abb76(18)*abb76(8)
      abb76(34)=-abb76(33)*abb76(32)
      abb76(31)=abb76(34)+abb76(31)
      abb76(34)=mB**4
      abb76(31)=abb76(34)*abb76(31)
      abb76(23)=abb76(23)+abb76(31)
      abb76(23)=spak2k4*abb76(23)
      abb76(31)=abb76(20)*abb76(16)
      abb76(35)=abb76(31)*abb76(6)
      abb76(36)=-abb76(35)*abb76(15)
      abb76(37)=abb76(14)*abb76(26)
      abb76(38)=abb76(16)*abb76(6)
      abb76(39)=abb76(37)*abb76(38)
      abb76(39)=abb76(39)-abb76(36)
      abb76(40)=spak4k7*spbl5k3
      abb76(41)=abb76(39)*abb76(40)
      abb76(42)=abb76(21)*spbk2k1
      abb76(43)=-abb76(42)*abb76(15)
      abb76(44)=abb76(18)*spbk2k1
      abb76(45)=abb76(37)*abb76(44)
      abb76(45)=abb76(45)-abb76(43)
      abb76(46)=spak1k4*spbl5k3
      abb76(47)=-abb76(45)*abb76(46)
      abb76(23)=abb76(47)+abb76(23)+abb76(41)
      abb76(23)=es712*abb76(23)
      abb76(41)=abb76(17)*abb76(2)
      abb76(47)=abb76(27)*abb76(41)
      abb76(48)=abb76(17)*abb76(20)
      abb76(49)=abb76(30)*abb76(48)
      abb76(50)=spbk3k2*abb76(49)
      abb76(47)=abb76(47)+abb76(50)
      abb76(47)=abb76(47)*spbl5k2
      abb76(50)=abb76(17)*abb76(8)
      abb76(51)=abb76(14)*abb76(50)
      abb76(52)=abb76(51)*abb76(27)
      abb76(53)=abb76(28)*abb76(48)
      abb76(54)=abb76(15)*abb76(53)
      abb76(47)=abb76(47)-abb76(52)-abb76(54)
      abb76(47)=abb76(47)*es712
      abb76(52)=c3*spak1k7
      abb76(54)=abb76(52)*spbk3k2
      abb76(55)=abb76(54)*abb76(50)
      abb76(56)=abb76(15)*abb76(55)
      abb76(57)=abb76(12)*abb76(54)
      abb76(58)=abb76(25)*spak1k7
      abb76(59)=abb76(58)*spbk3k2
      abb76(60)=abb76(59)-abb76(57)
      abb76(60)=spbl5k2*abb76(41)*abb76(60)
      abb76(61)=abb76(51)*abb76(59)
      abb76(47)=abb76(47)-abb76(60)+abb76(61)+abb76(56)
      abb76(56)=spbk7l6*spak4k7
      abb76(60)=abb76(47)*abb76(56)
      abb76(61)=-abb76(31)*abb76(30)
      abb76(62)=abb76(16)*abb76(2)
      abb76(63)=abb76(26)*abb76(62)
      abb76(63)=abb76(61)-abb76(63)
      abb76(64)=spbl5k3*spbl5k2
      abb76(65)=abb76(64)*spal5k7
      abb76(66)=-abb76(63)*abb76(65)
      abb76(47)=abb76(66)-abb76(47)
      abb76(66)=spbl6k1*spak1k4
      abb76(47)=abb76(47)*abb76(66)
      abb76(67)=-abb76(40)*abb76(38)
      abb76(68)=abb76(46)*abb76(44)
      abb76(67)=abb76(68)+abb76(67)
      abb76(68)=abb76(58)*abb76(14)
      abb76(69)=-abb76(52)*abb76(15)
      abb76(68)=abb76(68)-abb76(69)
      abb76(67)=abb76(68)*abb76(67)
      abb76(68)=abb76(52)*abb76(33)
      abb76(70)=abb76(68)*abb76(30)
      abb76(71)=abb76(58)*abb76(33)
      abb76(72)=abb76(2)*abb76(71)
      abb76(70)=abb76(72)+abb76(70)
      abb76(34)=abb76(34)*spbk3k2*abb76(70)
      abb76(57)=abb76(13)*abb76(57)
      abb76(70)=abb76(58)*abb76(13)
      abb76(72)=-spbk3k2*abb76(70)
      abb76(57)=abb76(72)+abb76(57)
      abb76(57)=spbl5k2*abb76(57)
      abb76(34)=abb76(57)+abb76(34)
      abb76(34)=spak2k4*abb76(34)
      abb76(57)=abb76(21)*abb76(15)
      abb76(72)=abb76(13)*abb76(26)
      abb76(57)=abb76(72)+abb76(57)
      abb76(57)=abb76(57)*es712
      abb76(72)=-abb76(52)*abb76(12)
      abb76(13)=-abb76(13)*abb76(72)
      abb76(13)=abb76(57)+abb76(13)-abb76(70)
      abb76(57)=abb76(13)*spbl5k3
      abb76(70)=spbl6k2*spak4l6*abb76(57)
      abb76(39)=-spak2k4*abb76(39)
      abb76(73)=abb76(63)*abb76(56)
      abb76(39)=abb76(39)+abb76(73)
      abb76(39)=abb76(39)*abb76(65)
      abb76(73)=abb76(17)*spbk2k1
      abb76(20)=abb76(73)*abb76(20)
      abb76(30)=-abb76(20)*abb76(30)
      abb76(74)=abb76(26)*abb76(73)
      abb76(75)=abb76(74)*abb76(2)
      abb76(75)=abb76(75)-abb76(30)
      abb76(56)=abb76(66)-abb76(56)
      abb76(66)=-abb76(75)*abb76(56)
      abb76(45)=spak2k4*abb76(45)
      abb76(45)=abb76(45)+abb76(66)
      abb76(66)=abb76(64)*spak1l5
      abb76(45)=abb76(45)*abb76(66)
      abb76(23)=abb76(45)+abb76(47)+abb76(39)+abb76(60)+abb76(70)+abb76(23)+abb&
      &76(34)+abb76(67)
      abb76(23)=8.0_ki*abb76(23)
      abb76(34)=abb76(16)*mB
      abb76(39)=abb76(26)*abb76(34)
      abb76(45)=NC*mB
      abb76(47)=abb76(45)*abb76(31)
      abb76(47)=abb76(39)+abb76(47)
      abb76(11)=abb76(11)*mB
      abb76(60)=abb76(11)*abb76(31)
      abb76(60)=abb76(60)-abb76(47)
      abb76(67)=abb76(60)*abb76(40)
      abb76(70)=spbl6k2*abb76(67)
      abb76(76)=abb76(45)-abb76(11)
      abb76(77)=-abb76(35)*abb76(76)
      abb76(78)=abb76(26)*mB
      abb76(79)=abb76(78)*abb76(38)
      abb76(77)=abb76(77)-abb76(79)
      abb76(64)=abb76(64)*spak2l5
      abb76(79)=abb76(64)*abb76(77)
      abb76(80)=spak4k7*abb76(79)
      abb76(70)=abb76(70)+abb76(80)
      abb76(70)=16.0_ki*abb76(70)
      abb76(80)=abb76(14)*abb76(33)
      abb76(81)=abb76(80)*abb76(27)
      abb76(29)=abb76(15)*abb76(29)
      abb76(29)=abb76(81)+abb76(29)
      abb76(81)=es712*spak2k4
      abb76(29)=abb76(29)*abb76(81)
      abb76(82)=abb76(75)*spbl5k2
      abb76(83)=abb76(82)*spak1k4
      abb76(84)=abb76(63)*spbl5k2
      abb76(85)=abb76(84)*spak4k7
      abb76(83)=abb76(83)+abb76(85)
      abb76(83)=abb76(83)*spbl6k3
      abb76(85)=abb76(59)*abb76(80)
      abb76(86)=abb76(80)*abb76(52)
      abb76(87)=-abb76(86)*abb76(12)
      abb76(88)=abb76(87)*spbk3k2
      abb76(85)=abb76(85)+abb76(88)
      abb76(85)=abb76(85)*spak2k4
      abb76(29)=-abb76(83)+abb76(29)-abb76(85)
      abb76(83)=16.0_ki*abb76(29)
      abb76(85)=abb76(31)*abb76(8)
      abb76(88)=abb76(15)*abb76(85)
      abb76(89)=abb76(37)*abb76(16)*abb76(8)
      abb76(88)=abb76(89)+abb76(88)+abb76(84)
      abb76(89)=spak4k7*abb76(88)
      abb76(90)=abb76(20)*abb76(8)
      abb76(91)=abb76(15)*abb76(90)
      abb76(92)=abb76(14)*abb76(8)
      abb76(93)=abb76(74)*abb76(92)
      abb76(91)=abb76(93)+abb76(91)-abb76(82)
      abb76(93)=-spak1k4*abb76(91)
      abb76(89)=abb76(89)+abb76(93)
      abb76(89)=spbl6k3*abb76(89)
      abb76(93)=abb76(55)*abb76(12)
      abb76(94)=-abb76(50)*abb76(59)
      abb76(93)=abb76(94)+abb76(93)
      abb76(94)=abb76(6)**2
      abb76(95)=abb76(94)*mB**5
      abb76(93)=abb76(95)*abb76(93)
      abb76(72)=abb76(72)+abb76(58)
      abb76(96)=abb76(72)*abb76(17)
      abb76(97)=mB**3
      abb76(98)=abb76(97)*spbk3k2
      abb76(99)=abb76(94)*abb76(98)
      abb76(100)=spbl5k2*abb76(99)*abb76(96)
      abb76(93)=abb76(100)+abb76(93)
      abb76(93)=spak2k4*abb76(93)
      abb76(100)=abb76(12)*abb76(48)
      abb76(101)=abb76(99)*abb76(100)
      abb76(94)=abb76(94)*abb76(97)
      abb76(102)=abb76(94)*abb76(27)
      abb76(103)=-abb76(17)*abb76(102)
      abb76(101)=abb76(103)+abb76(101)
      abb76(101)=spbl5k2*abb76(101)
      abb76(103)=-abb76(53)*abb76(12)
      abb76(104)=abb76(50)*abb76(27)
      abb76(103)=abb76(104)+abb76(103)
      abb76(95)=abb76(95)*abb76(103)
      abb76(95)=abb76(101)+abb76(95)
      abb76(95)=abb76(95)*abb76(81)
      abb76(93)=abb76(93)+abb76(95)
      abb76(93)=abb76(9)*abb76(93)
      abb76(95)=abb76(26)*abb76(16)
      abb76(101)=-abb76(31)*abb76(12)
      abb76(95)=abb76(95)+abb76(101)
      abb76(95)=abb76(95)*abb76(94)
      abb76(103)=abb76(95)*abb76(65)
      abb76(104)=-abb76(20)*abb76(12)
      abb76(105)=abb76(104)+abb76(74)
      abb76(94)=abb76(105)*abb76(94)
      abb76(105)=-abb76(94)*abb76(66)
      abb76(103)=abb76(105)+abb76(103)
      abb76(105)=abb76(9)*spak2k4
      abb76(103)=abb76(105)*abb76(103)
      abb76(89)=abb76(89)+abb76(93)+abb76(103)
      abb76(89)=16.0_ki*abb76(89)
      abb76(93)=abb76(40)*abb76(77)
      abb76(85)=-abb76(85)*abb76(76)
      abb76(39)=abb76(39)*abb76(8)
      abb76(39)=abb76(85)-abb76(39)
      abb76(85)=abb76(39)*spbl6k3
      abb76(103)=spak4k7*abb76(85)
      abb76(103)=abb76(93)+abb76(103)
      abb76(103)=32.0_ki*abb76(103)
      abb76(90)=-abb76(90)*abb76(76)
      abb76(106)=abb76(8)*mB
      abb76(74)=abb76(74)*abb76(106)
      abb76(74)=abb76(90)-abb76(74)
      abb76(90)=abb76(74)*spak1k4
      abb76(107)=abb76(39)*spak4k7
      abb76(90)=abb76(90)-abb76(107)
      abb76(107)=32.0_ki*spbl6k3*abb76(90)
      abb76(108)=-abb76(20)*abb76(76)
      abb76(109)=abb76(78)*abb76(73)
      abb76(108)=abb76(108)-abb76(109)
      abb76(109)=abb76(108)*spbl6k2
      abb76(110)=abb76(46)*abb76(109)
      abb76(111)=-abb76(42)*abb76(76)
      abb76(112)=abb76(78)*abb76(44)
      abb76(111)=abb76(111)-abb76(112)
      abb76(112)=abb76(64)*abb76(111)
      abb76(113)=spak1k4*abb76(112)
      abb76(110)=abb76(110)+abb76(113)
      abb76(110)=16.0_ki*abb76(110)
      abb76(113)=abb76(46)*abb76(111)
      abb76(114)=abb76(74)*spbl6k3
      abb76(115)=spak1k4*abb76(114)
      abb76(115)=abb76(113)+abb76(115)
      abb76(115)=32.0_ki*abb76(115)
      abb76(29)=8.0_ki*abb76(29)
      abb76(116)=abb76(60)*spbk2k1
      abb76(117)=abb76(116)*abb76(46)
      abb76(118)=spak4l6*abb76(79)
      abb76(67)=-spbk7k2*abb76(67)
      abb76(67)=abb76(67)+abb76(117)+abb76(118)
      abb76(67)=8.0_ki*abb76(67)
      abb76(47)=abb76(28)*abb76(47)
      abb76(11)=abb76(28)*abb76(11)
      abb76(117)=abb76(11)*abb76(31)
      abb76(47)=abb76(47)-abb76(117)
      abb76(117)=16.0_ki*abb76(47)
      abb76(117)=spak2k4*abb76(117)
      abb76(118)=abb76(8)**2
      abb76(119)=abb76(118)*abb76(27)*abb76(97)
      abb76(120)=abb76(119)*abb76(16)
      abb76(118)=abb76(118)*abb76(98)
      abb76(121)=abb76(101)*abb76(118)
      abb76(120)=abb76(120)+abb76(121)
      abb76(121)=abb76(10)*abb76(120)
      abb76(121)=abb76(121)-abb76(47)
      abb76(121)=spak2k4*abb76(121)
      abb76(122)=abb76(28)*abb76(97)
      abb76(123)=-abb76(122)*abb76(12)
      abb76(124)=abb76(35)*abb76(123)
      abb76(125)=abb76(26)*abb76(38)
      abb76(122)=abb76(125)*abb76(122)
      abb76(122)=abb76(122)+abb76(124)
      abb76(124)=abb76(122)*abb76(105)
      abb76(126)=abb76(77)*spbl5k3
      abb76(127)=abb76(126)+abb76(85)
      abb76(127)=spak4l6*abb76(127)
      abb76(128)=spbk7k3*abb76(90)
      abb76(121)=abb76(128)+abb76(127)-abb76(124)+abb76(121)
      abb76(121)=16.0_ki*abb76(121)
      abb76(127)=8.0_ki*spak2k4
      abb76(128)=abb76(47)*abb76(127)
      abb76(129)=abb76(27)*abb76(62)
      abb76(61)=abb76(61)*spbk3k2
      abb76(61)=abb76(129)-abb76(61)
      abb76(61)=-abb76(61)*abb76(56)
      abb76(36)=-spbk3k2*abb76(36)
      abb76(129)=abb76(27)*abb76(14)
      abb76(130)=abb76(38)*abb76(129)
      abb76(36)=abb76(130)+abb76(36)
      abb76(36)=spak2k4*abb76(36)
      abb76(130)=spak4l5*spbl5k2
      abb76(131)=abb76(130)*spbl6k3
      abb76(132)=abb76(63)*abb76(131)
      abb76(36)=abb76(36)+abb76(132)+abb76(61)
      abb76(36)=8.0_ki*abb76(36)
      abb76(16)=abb76(102)*abb76(16)
      abb76(61)=abb76(101)*abb76(99)
      abb76(16)=abb76(16)+abb76(61)
      abb76(61)=16.0_ki*abb76(105)
      abb76(101)=-abb76(16)*abb76(61)
      abb76(132)=abb76(77)*spbl5k2
      abb76(133)=abb76(132)*spak2k4
      abb76(134)=spbl6k2*spak2k4
      abb76(135)=abb76(134)*abb76(39)
      abb76(133)=abb76(133)+abb76(135)
      abb76(135)=16.0_ki*abb76(133)
      abb76(136)=spbl6l5*spak4l5
      abb76(136)=16.0_ki*abb76(136)
      abb76(137)=abb76(39)*abb76(136)
      abb76(133)=8.0_ki*abb76(133)
      abb76(14)=abb76(14)+abb76(97)
      abb76(138)=abb76(14)*NC
      abb76(139)=abb76(14)*abb76(3)
      abb76(138)=-abb76(138)+2.0_ki*abb76(139)
      abb76(139)=-abb76(35)*abb76(138)
      abb76(19)=abb76(24)*abb76(19)
      abb76(140)=abb76(19)*c4
      abb76(14)=abb76(140)*abb76(14)
      abb76(38)=abb76(38)*abb76(14)
      abb76(38)=abb76(38)+abb76(139)
      abb76(38)=spbl5k3*abb76(38)
      abb76(88)=spbl6k3*abb76(88)
      abb76(38)=abb76(38)+abb76(88)
      abb76(38)=spak2k4*abb76(38)
      abb76(88)=abb76(15)*abb76(21)*abb76(8)
      abb76(139)=abb76(80)*abb76(26)
      abb76(88)=abb76(139)+abb76(88)
      abb76(81)=abb76(88)*abb76(81)
      abb76(139)=abb76(58)*abb76(80)
      abb76(87)=abb76(87)+abb76(139)
      abb76(139)=abb76(87)*spak2k4
      abb76(81)=abb76(139)-abb76(81)
      abb76(139)=spbk7k3*abb76(81)
      abb76(141)=abb76(46)*spbl6k1
      abb76(142)=abb76(40)*spbk7l6
      abb76(141)=abb76(141)-abb76(142)
      abb76(142)=abb76(63)*abb76(141)
      abb76(64)=abb76(64)*abb76(105)
      abb76(95)=abb76(95)*abb76(64)
      abb76(38)=abb76(139)+abb76(95)+abb76(142)+abb76(38)
      abb76(38)=8.0_ki*abb76(38)
      abb76(95)=abb76(97)*abb76(8)
      abb76(35)=-abb76(12)*abb76(95)*abb76(35)
      abb76(125)=abb76(125)*abb76(95)
      abb76(35)=abb76(125)+abb76(35)
      abb76(125)=abb76(61)*spbl6k3
      abb76(139)=abb76(35)*abb76(125)
      abb76(142)=abb76(46)*abb76(60)*spbl6k2
      abb76(79)=spak1k4*abb76(79)
      abb76(79)=abb76(142)+abb76(79)
      abb76(79)=8.0_ki*abb76(79)
      abb76(142)=abb76(46)*abb76(77)
      abb76(143)=spak1k4*abb76(85)
      abb76(143)=abb76(142)+abb76(143)
      abb76(143)=16.0_ki*abb76(143)
      abb76(144)=8.0_ki*abb76(81)
      abb76(145)=spbl6k3*abb76(144)
      abb76(146)=abb76(39)*abb76(40)
      abb76(147)=-abb76(74)*abb76(46)
      abb76(146)=abb76(146)+abb76(147)
      abb76(146)=16.0_ki*abb76(146)
      abb76(144)=-spbl5k3*abb76(144)
      abb76(147)=-spal5k7*abb76(39)
      abb76(148)=spak1l5*abb76(74)
      abb76(147)=abb76(148)+abb76(147)
      abb76(147)=spbl5k3*abb76(147)
      abb76(148)=abb76(48)*abb76(11)
      abb76(149)=-abb76(50)*abb76(78)*spbk3k2
      abb76(53)=-abb76(45)*abb76(53)
      abb76(53)=abb76(53)+abb76(148)+abb76(149)
      abb76(53)=es712*abb76(53)
      abb76(148)=-abb76(21)*abb76(123)
      abb76(33)=abb76(97)*abb76(33)
      abb76(149)=-abb76(27)*abb76(33)
      abb76(148)=abb76(149)+abb76(148)
      abb76(148)=es712*abb76(148)
      abb76(149)=-abb76(68)*abb76(12)
      abb76(71)=abb76(71)+abb76(149)
      abb76(71)=abb76(98)*abb76(71)
      abb76(71)=abb76(148)+abb76(71)
      abb76(71)=abb76(9)*abb76(71)
      abb76(98)=abb76(5)*spak1k7**2
      abb76(148)=abb76(98)*abb76(8)
      abb76(149)=abb76(148)*c3
      abb76(150)=abb76(149)*abb76(73)*abb76(76)
      abb76(106)=abb76(106)*abb76(73)
      abb76(98)=abb76(25)*abb76(106)*abb76(98)
      abb76(98)=abb76(98)+abb76(150)
      abb76(98)=spbk7k3*abb76(98)
      abb76(100)=-abb76(118)*abb76(100)
      abb76(150)=abb76(17)*abb76(119)
      abb76(100)=abb76(150)+abb76(100)
      abb76(100)=es712*abb76(100)
      abb76(96)=-abb76(118)*abb76(96)
      abb76(96)=abb76(100)+abb76(96)
      abb76(96)=abb76(10)*abb76(96)
      abb76(55)=abb76(55)*abb76(76)
      abb76(100)=abb76(149)*abb76(12)
      abb76(25)=-abb76(25)*abb76(148)
      abb76(25)=abb76(25)+abb76(100)
      abb76(25)=spbk3k1*abb76(34)*abb76(25)
      abb76(85)=spal6k7*abb76(85)
      abb76(100)=-spak1l6*abb76(114)
      abb76(59)=abb76(59)*mB
      abb76(148)=abb76(50)*abb76(59)
      abb76(25)=abb76(100)+abb76(85)+abb76(96)+abb76(25)+abb76(98)+abb76(71)+ab&
      &b76(53)+abb76(148)+abb76(55)+abb76(147)
      abb76(25)=16.0_ki*abb76(25)
      abb76(13)=-spbl5k2*abb76(13)
      abb76(15)=abb76(15)*abb76(48)*abb76(8)
      abb76(37)=abb76(37)*abb76(50)
      abb76(15)=abb76(37)+abb76(15)
      abb76(37)=-abb76(41)*abb76(26)
      abb76(37)=abb76(37)-abb76(49)
      abb76(37)=spbl5k2*abb76(37)
      abb76(37)=abb76(37)+abb76(15)
      abb76(37)=es712*abb76(37)
      abb76(49)=abb76(51)*abb76(58)
      abb76(50)=abb76(69)*abb76(50)
      abb76(49)=abb76(49)-abb76(50)
      abb76(41)=spbl5k2*abb76(41)*abb76(72)
      abb76(37)=abb76(37)+abb76(41)-abb76(49)
      abb76(37)=spbl6k2*abb76(37)
      abb76(41)=spal5k7*abb76(84)
      abb76(50)=spak1l5*abb76(82)
      abb76(41)=abb76(41)+abb76(50)
      abb76(41)=spbl6l5*abb76(41)
      abb76(13)=abb76(41)+abb76(37)+abb76(13)
      abb76(13)=8.0_ki*abb76(13)
      abb76(37)=abb76(80)*abb76(19)
      abb76(19)=abb76(33)*abb76(19)
      abb76(41)=-abb76(19)-abb76(37)
      abb76(41)=c4*abb76(41)
      abb76(50)=abb76(95)*abb76(21)
      abb76(51)=abb76(50)*abb76(3)
      abb76(53)=abb76(21)*abb76(92)
      abb76(55)=abb76(53)*abb76(3)
      abb76(69)=abb76(51)+abb76(55)
      abb76(71)=-abb76(50)-abb76(53)
      abb76(71)=NC*abb76(71)
      abb76(21)=abb76(21)*abb76(76)
      abb76(72)=abb76(78)*abb76(18)
      abb76(21)=abb76(72)+abb76(21)
      abb76(21)=spbl5k2*abb76(21)
      abb76(21)=abb76(21)+abb76(71)+2.0_ki*abb76(69)+abb76(41)
      abb76(21)=es712*abb76(21)
      abb76(41)=abb76(86)*abb76(3)
      abb76(68)=abb76(68)*abb76(97)
      abb76(69)=abb76(68)*abb76(3)
      abb76(71)=-abb76(69)-abb76(41)
      abb76(24)=abb76(24)*spak1k7
      abb76(80)=abb76(24)*abb76(80)
      abb76(24)=abb76(24)*abb76(33)
      abb76(82)=abb76(24)+abb76(80)
      abb76(82)=c4*abb76(82)
      abb76(84)=abb76(68)+abb76(86)
      abb76(84)=NC*abb76(84)
      abb76(52)=-abb76(52)*abb76(76)
      abb76(58)=-mB*abb76(58)
      abb76(52)=abb76(58)+abb76(52)
      abb76(52)=spbl5k2*abb76(18)*abb76(52)
      abb76(21)=abb76(21)+abb76(52)+abb76(84)+2.0_ki*abb76(71)+abb76(82)
      abb76(21)=16.0_ki*abb76(21)
      abb76(52)=8.0_ki*spbl5k2
      abb76(58)=abb76(60)*abb76(52)
      abb76(60)=abb76(2)-mB
      abb76(31)=abb76(12)*abb76(31)*abb76(60)
      abb76(34)=abb76(34)-abb76(62)
      abb76(34)=abb76(34)*abb76(140)
      abb76(31)=abb76(34)+abb76(31)
      abb76(31)=spbl6k2*abb76(31)
      abb76(34)=-spak2l5*abb76(132)
      abb76(31)=abb76(31)+abb76(34)
      abb76(31)=8.0_ki*abb76(31)
      abb76(34)=-32.0_ki*abb76(77)
      abb76(62)=8.0_ki*spbl6l5
      abb76(63)=-abb76(63)*abb76(62)
      abb76(71)=abb76(88)*es712
      abb76(71)=abb76(71)-abb76(87)
      abb76(82)=spak2k7*spbk7k3
      abb76(84)=-spak1k2*spbk3k1
      abb76(82)=abb76(84)+abb76(82)
      abb76(82)=abb76(71)*abb76(82)
      abb76(15)=es712*abb76(15)
      abb76(15)=abb76(15)-abb76(49)
      abb76(15)=spbl6k3*abb76(15)
      abb76(15)=abb76(15)-abb76(57)+abb76(82)
      abb76(15)=8.0_ki*abb76(15)
      abb76(19)=abb76(37)-abb76(19)
      abb76(37)=c4*spbk3k2
      abb76(19)=abb76(19)*abb76(37)
      abb76(49)=abb76(53)-abb76(50)
      abb76(50)=NC*spbk3k2
      abb76(49)=abb76(49)*abb76(50)
      abb76(51)=abb76(51)-abb76(55)
      abb76(53)=2.0_ki*spbk3k2
      abb76(51)=abb76(51)*abb76(53)
      abb76(22)=-abb76(22)*abb76(76)
      abb76(55)=abb76(72)*spbk3k2
      abb76(22)=abb76(22)-abb76(55)
      abb76(22)=abb76(22)*spbl5k2
      abb76(19)=-abb76(22)+abb76(49)+abb76(19)+abb76(51)
      abb76(19)=abb76(19)*es712
      abb76(22)=abb76(41)-abb76(69)
      abb76(22)=abb76(22)*abb76(53)
      abb76(24)=abb76(80)-abb76(24)
      abb76(24)=abb76(24)*abb76(37)
      abb76(37)=abb76(68)-abb76(86)
      abb76(37)=abb76(37)*abb76(50)
      abb76(41)=abb76(65)*abb76(77)
      abb76(49)=abb76(66)*abb76(111)
      abb76(50)=-abb76(76)*abb76(54)
      abb76(50)=abb76(50)-abb76(59)
      abb76(18)=spbl5k2*abb76(18)*abb76(50)
      abb76(18)=abb76(41)-abb76(49)+abb76(19)+abb76(37)-abb76(24)+abb76(18)+abb&
      &76(22)
      abb76(18)=8.0_ki*abb76(18)
      abb76(19)=spak4k7*abb76(18)
      abb76(22)=8.0_ki*spak4k7
      abb76(24)=abb76(47)*abb76(22)
      abb76(37)=-spbk3k2*abb76(77)
      abb76(41)=abb76(37)*abb76(22)
      abb76(49)=-8.0_ki*abb76(93)
      abb76(50)=spak4l6*abb76(18)
      abb76(51)=abb76(47)*spak4k7
      abb76(53)=-16.0_ki*abb76(51)
      abb76(54)=-spak4k7*abb76(122)
      abb76(55)=-abb76(42)*abb76(123)
      abb76(33)=abb76(33)*spbk2k1
      abb76(57)=abb76(33)*abb76(27)
      abb76(55)=abb76(55)-abb76(57)
      abb76(57)=-spak1k4*abb76(55)
      abb76(54)=abb76(54)+abb76(57)
      abb76(54)=abb76(9)*abb76(54)
      abb76(57)=spak4k7*abb76(120)
      abb76(59)=abb76(119)*abb76(73)
      abb76(65)=abb76(104)*abb76(118)
      abb76(59)=abb76(59)+abb76(65)
      abb76(65)=-spak1k4*abb76(59)
      abb76(57)=abb76(57)+abb76(65)
      abb76(57)=abb76(10)*abb76(57)
      abb76(28)=abb76(45)*abb76(28)
      abb76(11)=abb76(28)-abb76(11)
      abb76(11)=abb76(20)*abb76(11)
      abb76(27)=abb76(106)*abb76(27)
      abb76(11)=abb76(27)+abb76(11)
      abb76(27)=abb76(11)*spak1k4
      abb76(28)=abb76(57)+abb76(54)-abb76(51)+abb76(27)
      abb76(28)=16.0_ki*abb76(28)
      abb76(27)=-16.0_ki*abb76(27)
      abb76(45)=8.0_ki*spak4l6
      abb76(51)=abb76(45)*abb76(37)
      abb76(54)=8.0_ki*abb76(130)
      abb76(57)=abb76(54)*abb76(39)
      abb76(65)=-spak4l6*abb76(126)
      abb76(65)=abb76(124)+abb76(65)
      abb76(65)=8.0_ki*abb76(65)
      abb76(66)=8.0_ki*spak1k4
      abb76(47)=abb76(66)*abb76(47)
      abb76(39)=8.0_ki*abb76(39)
      abb76(68)=16.0_ki*spak4k7
      abb76(68)=-abb76(37)*abb76(68)
      abb76(69)=-spbk3k2*abb76(111)
      abb76(72)=16.0_ki*spak1k4
      abb76(72)=-abb76(69)*abb76(72)
      abb76(80)=8.0_ki*spak4l5
      abb76(82)=abb76(80)*abb76(132)
      abb76(84)=8.0_ki*abb76(105)
      abb76(16)=abb76(16)*abb76(84)
      abb76(37)=abb76(37)*abb76(66)
      abb76(85)=-spal5k7*abb76(132)
      abb76(86)=abb76(111)*spbl5k2
      abb76(87)=spak1l5*abb76(86)
      abb76(85)=abb76(85)+abb76(87)
      abb76(85)=8.0_ki*abb76(85)
      abb76(77)=16.0_ki*abb76(77)
      abb76(71)=abb76(80)*spbl5k2*abb76(71)
      abb76(87)=abb76(86)*spak1k4
      abb76(88)=abb76(132)*spak4k7
      abb76(87)=abb76(87)-abb76(88)
      abb76(88)=-16.0_ki*abb76(87)
      abb76(35)=abb76(35)+abb76(132)
      abb76(92)=-spak4k7*abb76(35)
      abb76(93)=-abb76(12)*abb76(95)*abb76(42)
      abb76(26)=abb76(33)*abb76(26)
      abb76(26)=abb76(26)+abb76(93)
      abb76(33)=abb76(26)+abb76(86)
      abb76(93)=spak1k4*abb76(33)
      abb76(92)=abb76(92)+abb76(93)
      abb76(92)=16.0_ki*abb76(92)
      abb76(87)=-8.0_ki*abb76(87)
      abb76(35)=-abb76(35)*abb76(127)
      abb76(18)=spak1k4*abb76(18)
      abb76(93)=-8.0_ki*abb76(142)
      abb76(95)=abb76(40)*abb76(109)
      abb76(96)=spak4k7*abb76(112)
      abb76(95)=abb76(95)+abb76(96)
      abb76(95)=8.0_ki*abb76(95)
      abb76(96)=abb76(40)*abb76(111)
      abb76(97)=spak4k7*abb76(114)
      abb76(97)=abb76(96)+abb76(97)
      abb76(97)=16.0_ki*abb76(97)
      abb76(98)=abb76(22)*abb76(11)
      abb76(22)=abb76(69)*abb76(22)
      abb76(40)=-abb76(116)*abb76(40)
      abb76(48)=-abb76(48)*abb76(76)
      abb76(17)=-abb76(17)*abb76(78)
      abb76(17)=abb76(17)+abb76(48)
      abb76(17)=abb76(46)*abb76(17)*spbk2k1**2
      abb76(46)=spak4l6*abb76(112)
      abb76(17)=abb76(46)+abb76(40)+abb76(17)
      abb76(17)=8.0_ki*abb76(17)
      abb76(40)=16.0_ki*abb76(11)
      abb76(40)=spak2k4*abb76(40)
      abb76(46)=abb76(10)*abb76(59)
      abb76(46)=abb76(46)-abb76(11)
      abb76(46)=spak2k4*abb76(46)
      abb76(48)=abb76(55)*abb76(105)
      abb76(55)=abb76(111)*spbl5k3
      abb76(59)=abb76(55)+abb76(114)
      abb76(59)=spak4l6*abb76(59)
      abb76(76)=spbk3k1*abb76(90)
      abb76(46)=abb76(76)+abb76(59)+abb76(48)+abb76(46)
      abb76(46)=16.0_ki*abb76(46)
      abb76(59)=abb76(11)*abb76(127)
      abb76(52)=abb76(108)*abb76(52)
      abb76(45)=abb76(45)*abb76(69)
      abb76(54)=abb76(54)*abb76(74)
      abb76(11)=abb76(11)*abb76(66)
      abb76(30)=abb76(30)*spbk3k2
      abb76(32)=abb76(32)*abb76(73)
      abb76(30)=abb76(30)-abb76(32)
      abb76(30)=abb76(30)*abb76(56)
      abb76(32)=-spbk3k2*abb76(43)
      abb76(43)=abb76(44)*abb76(129)
      abb76(32)=abb76(43)+abb76(32)
      abb76(32)=spak2k4*abb76(32)
      abb76(43)=-abb76(75)*abb76(131)
      abb76(30)=abb76(32)+abb76(43)+abb76(30)
      abb76(30)=8.0_ki*abb76(30)
      abb76(32)=abb76(102)*abb76(73)
      abb76(43)=abb76(104)*abb76(99)
      abb76(32)=abb76(32)+abb76(43)
      abb76(43)=-abb76(32)*abb76(61)
      abb76(12)=abb76(12)*abb76(20)*abb76(60)
      abb76(20)=-abb76(73)*abb76(60)*abb76(140)
      abb76(12)=abb76(20)+abb76(12)
      abb76(12)=spbl6k2*abb76(12)
      abb76(20)=-spak2l5*abb76(86)
      abb76(12)=abb76(12)+abb76(20)
      abb76(12)=8.0_ki*abb76(12)
      abb76(20)=-32.0_ki*abb76(111)
      abb76(56)=abb76(80)*abb76(86)
      abb76(60)=abb76(69)*abb76(66)
      abb76(61)=abb76(86)*spak2k4
      abb76(66)=abb76(134)*abb76(74)
      abb76(61)=abb76(61)+abb76(66)
      abb76(66)=16.0_ki*abb76(61)
      abb76(69)=abb76(74)*abb76(136)
      abb76(61)=8.0_ki*abb76(61)
      abb76(42)=-abb76(42)*abb76(138)
      abb76(14)=abb76(44)*abb76(14)
      abb76(14)=abb76(14)+abb76(42)
      abb76(14)=spbl5k3*abb76(14)
      abb76(42)=spbl6k3*abb76(91)
      abb76(14)=abb76(14)+abb76(42)
      abb76(14)=spak2k4*abb76(14)
      abb76(42)=spbk3k1*abb76(81)
      abb76(44)=-abb76(75)*abb76(141)
      abb76(64)=abb76(94)*abb76(64)
      abb76(14)=abb76(42)+abb76(64)+abb76(44)+abb76(14)
      abb76(14)=8.0_ki*abb76(14)
      abb76(26)=abb76(26)*abb76(125)
      abb76(42)=abb76(75)*abb76(62)
      abb76(44)=-8.0_ki*abb76(96)
      abb76(55)=-spak4l6*abb76(55)
      abb76(48)=-abb76(48)+abb76(55)
      abb76(48)=8.0_ki*abb76(48)
      abb76(55)=8.0_ki*abb76(74)
      abb76(32)=abb76(32)*abb76(84)
      abb76(62)=16.0_ki*abb76(111)
      abb76(33)=-abb76(33)*abb76(127)
      abb76(64)=-8.0_ki*abb76(113)
      R2d76=0.0_ki
      rat2 = rat2 + R2d76
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='76' value='", &
          & R2d76, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd76h7
