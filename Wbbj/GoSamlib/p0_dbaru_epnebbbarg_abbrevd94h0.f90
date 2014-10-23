module     p0_dbaru_epnebbbarg_abbrevd94h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(143), public :: abb94
   complex(ki), public :: R2d94
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
      abb94(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb94(2)=1.0_ki/(es34+es567-es12-es234)
      abb94(3)=sqrt2**(-1)
      abb94(4)=es56**(-1)
      abb94(5)=spbl5k2**(-1)
      abb94(6)=spak2k7**(-1)
      abb94(7)=spbl6k2**(-1)
      abb94(8)=NC**(-1)
      abb94(9)=spak2l5**(-1)
      abb94(10)=spak2l6**(-1)
      abb94(11)=NC*c3
      abb94(12)=TR*gW
      abb94(12)=CVDU*i_*spak1k4*abb94(6)*abb94(4)*abb94(3)*abb94(12)**2*abb94(2&
      &)*abb94(1)
      abb94(13)=abb94(12)*mB
      abb94(14)=abb94(13)*spbk4k3
      abb94(15)=abb94(14)*spbk7k2
      abb94(16)=abb94(11)*abb94(15)
      abb94(17)=c2-c4
      abb94(18)=-abb94(15)*abb94(17)
      abb94(16)=abb94(16)-abb94(18)
      abb94(19)=spak4l5*abb94(16)
      abb94(13)=abb94(13)*spbk3k1
      abb94(20)=abb94(13)*spbk7k2
      abb94(21)=abb94(11)*abb94(20)
      abb94(22)=-abb94(20)*abb94(17)
      abb94(21)=abb94(21)-abb94(22)
      abb94(23)=spak1l5*abb94(21)
      abb94(19)=abb94(23)+abb94(19)
      abb94(23)=spak2l6**2
      abb94(19)=abb94(23)*abb94(19)
      abb94(24)=abb94(15)*abb94(5)
      abb94(25)=abb94(24)*abb94(11)
      abb94(26)=c2*abb94(5)
      abb94(27)=abb94(26)*abb94(15)
      abb94(28)=abb94(24)*c4
      abb94(29)=abb94(28)-abb94(27)
      abb94(30)=abb94(25)-abb94(29)
      abb94(31)=spak4l6*abb94(30)
      abb94(32)=abb94(20)*abb94(5)
      abb94(33)=abb94(32)*abb94(11)
      abb94(34)=abb94(26)*abb94(20)
      abb94(35)=abb94(32)*c4
      abb94(36)=abb94(35)-abb94(34)
      abb94(37)=abb94(33)-abb94(36)
      abb94(38)=spak1l6*abb94(37)
      abb94(31)=abb94(31)+abb94(38)
      abb94(31)=spbl6k2*abb94(23)*abb94(31)
      abb94(38)=abb94(11)*spak2l5
      abb94(39)=abb94(38)*abb94(15)
      abb94(40)=abb94(18)*spak2l5
      abb94(39)=abb94(39)-abb94(40)
      abb94(41)=abb94(39)*spak2l6
      abb94(42)=2.0_ki*spak4l6
      abb94(43)=abb94(41)*abb94(42)
      abb94(44)=abb94(38)*abb94(20)
      abb94(45)=abb94(22)*spak2l5
      abb94(44)=abb94(44)-abb94(45)
      abb94(46)=abb94(44)*spak2l6
      abb94(47)=2.0_ki*spak1l6
      abb94(48)=abb94(46)*abb94(47)
      abb94(19)=abb94(31)+abb94(48)+abb94(43)+abb94(19)
      abb94(19)=spbl6k2*abb94(19)
      abb94(16)=spak4l6*abb94(16)
      abb94(21)=spak1l6*abb94(21)
      abb94(16)=abb94(21)+abb94(16)
      abb94(21)=spak2l5**2
      abb94(16)=abb94(21)*abb94(16)
      abb94(31)=abb94(15)*abb94(7)
      abb94(43)=abb94(31)*abb94(11)
      abb94(48)=abb94(31)*c4
      abb94(49)=abb94(31)*c2
      abb94(50)=abb94(48)-abb94(49)
      abb94(51)=abb94(43)-abb94(50)
      abb94(52)=spak4l5*abb94(51)
      abb94(53)=abb94(20)*abb94(7)
      abb94(54)=abb94(53)*abb94(11)
      abb94(55)=abb94(53)*c4
      abb94(56)=abb94(53)*c2
      abb94(57)=abb94(55)-abb94(56)
      abb94(58)=abb94(54)-abb94(57)
      abb94(59)=spak1l5*abb94(58)
      abb94(52)=abb94(52)+abb94(59)
      abb94(52)=spbl5k2*abb94(21)*abb94(52)
      abb94(59)=2.0_ki*spak4l5
      abb94(41)=abb94(41)*abb94(59)
      abb94(60)=2.0_ki*spak1l5
      abb94(46)=abb94(46)*abb94(60)
      abb94(16)=abb94(52)+abb94(46)+abb94(41)+abb94(16)
      abb94(16)=spbl5k2*abb94(16)
      abb94(41)=spbk7k2**2
      abb94(17)=-abb94(41)*abb94(17)
      abb94(46)=-abb94(14)*abb94(17)
      abb94(52)=abb94(46)*spak2l5
      abb94(61)=-spak2l6*abb94(52)
      abb94(62)=abb94(38)*abb94(14)
      abb94(63)=abb94(41)*spak2l6
      abb94(64)=-abb94(63)*abb94(62)
      abb94(61)=abb94(61)+abb94(64)
      abb94(64)=abb94(41)*abb94(11)
      abb94(65)=abb94(14)*abb94(5)
      abb94(66)=abb94(64)*abb94(65)
      abb94(67)=-abb94(65)*abb94(17)
      abb94(66)=abb94(66)+abb94(67)
      abb94(23)=abb94(23)*spbl6k2
      abb94(68)=-abb94(66)*abb94(23)
      abb94(69)=abb94(14)*abb94(7)
      abb94(70)=abb94(64)*abb94(69)
      abb94(71)=-abb94(69)*abb94(17)
      abb94(70)=abb94(70)+abb94(71)
      abb94(21)=abb94(21)*spbl5k2
      abb94(72)=-abb94(70)*abb94(21)
      abb94(61)=abb94(72)+2.0_ki*abb94(61)+abb94(68)
      abb94(61)=spak4k7*abb94(61)
      abb94(68)=-abb94(13)*abb94(17)
      abb94(72)=abb94(68)*spak2l5
      abb94(73)=-spak2l6*abb94(72)
      abb94(74)=abb94(38)*abb94(13)
      abb94(75)=-abb94(63)*abb94(74)
      abb94(73)=abb94(73)+abb94(75)
      abb94(75)=abb94(13)*abb94(5)
      abb94(76)=abb94(64)*abb94(75)
      abb94(77)=-abb94(75)*abb94(17)
      abb94(76)=abb94(76)+abb94(77)
      abb94(23)=-abb94(76)*abb94(23)
      abb94(78)=abb94(13)*abb94(7)
      abb94(64)=abb94(64)*abb94(78)
      abb94(17)=-abb94(78)*abb94(17)
      abb94(64)=abb94(64)+abb94(17)
      abb94(21)=-abb94(64)*abb94(21)
      abb94(21)=abb94(21)+2.0_ki*abb94(73)+abb94(23)
      abb94(21)=spak1k7*abb94(21)
      abb94(23)=abb94(67)*spak2l6
      abb94(67)=abb94(11)*spak2l6
      abb94(73)=abb94(67)*abb94(41)
      abb94(79)=abb94(65)*abb94(73)
      abb94(79)=abb94(23)+abb94(79)
      abb94(79)=spak2k4*abb94(79)
      abb94(77)=abb94(77)*spak2l6
      abb94(80)=-abb94(75)*abb94(73)
      abb94(80)=-abb94(77)+abb94(80)
      abb94(80)=spak1k2*abb94(80)
      abb94(79)=abb94(79)+abb94(80)
      abb94(79)=spbl6k2*abb94(79)
      abb94(80)=abb94(38)*abb94(41)
      abb94(81)=abb94(14)*abb94(80)
      abb94(52)=abb94(52)+abb94(81)
      abb94(52)=spak2k4*abb94(52)
      abb94(81)=-abb94(13)*abb94(80)
      abb94(72)=-abb94(72)+abb94(81)
      abb94(72)=spak1k2*abb94(72)
      abb94(52)=abb94(79)+abb94(52)+abb94(72)
      abb94(72)=2.0_ki*spal6k7
      abb94(52)=abb94(52)*abb94(72)
      abb94(71)=abb94(71)*spak2l5
      abb94(79)=abb94(69)*abb94(80)
      abb94(79)=abb94(71)+abb94(79)
      abb94(79)=spak2k4*abb94(79)
      abb94(17)=abb94(17)*spak2l5
      abb94(80)=-abb94(78)*abb94(80)
      abb94(80)=-abb94(17)+abb94(80)
      abb94(80)=spak1k2*abb94(80)
      abb94(79)=abb94(79)+abb94(80)
      abb94(79)=spbl5k2*abb94(79)
      abb94(46)=abb94(46)*spak2l6
      abb94(80)=abb94(14)*abb94(73)
      abb94(46)=abb94(46)+abb94(80)
      abb94(46)=spak2k4*abb94(46)
      abb94(68)=-spak2l6*abb94(68)
      abb94(73)=-abb94(13)*abb94(73)
      abb94(68)=abb94(68)+abb94(73)
      abb94(68)=spak1k2*abb94(68)
      abb94(46)=abb94(79)+abb94(46)+abb94(68)
      abb94(68)=2.0_ki*spal5k7
      abb94(46)=abb94(46)*abb94(68)
      abb94(16)=abb94(46)+abb94(52)+abb94(21)+abb94(61)+abb94(19)+abb94(16)
      abb94(16)=4.0_ki*abb94(16)
      abb94(19)=abb94(38)*abb94(53)
      abb94(21)=abb94(57)*spak2l5
      abb94(19)=abb94(19)-abb94(21)
      abb94(46)=abb94(19)*spak1l5
      abb94(52)=abb94(38)*abb94(31)
      abb94(50)=abb94(50)*spak2l5
      abb94(52)=abb94(52)-abb94(50)
      abb94(57)=abb94(52)*spak4l5
      abb94(46)=abb94(46)+abb94(57)
      abb94(57)=abb94(46)*spbl5k2
      abb94(61)=abb94(67)*abb94(32)
      abb94(36)=abb94(36)*spak2l6
      abb94(61)=abb94(61)-abb94(36)
      abb94(73)=abb94(61)*spak1l6
      abb94(79)=abb94(67)*abb94(24)
      abb94(29)=abb94(29)*spak2l6
      abb94(79)=abb94(79)-abb94(29)
      abb94(80)=abb94(79)*spak4l6
      abb94(73)=abb94(73)+abb94(80)
      abb94(80)=abb94(73)*spbl6k2
      abb94(81)=abb94(67)*abb94(15)
      abb94(18)=abb94(18)*spak2l6
      abb94(81)=abb94(81)-abb94(18)
      abb94(82)=abb94(81)*spak4l5
      abb94(83)=abb94(67)*abb94(20)
      abb94(22)=abb94(22)*spak2l6
      abb94(83)=abb94(83)-abb94(22)
      abb94(84)=abb94(83)*spak1l5
      abb94(85)=abb94(39)*spak4l6
      abb94(86)=abb94(44)*spak1l6
      abb94(57)=abb94(57)+abb94(80)+abb94(82)+abb94(84)+abb94(85)+abb94(86)
      abb94(70)=abb94(70)*spak2k4
      abb94(64)=abb94(64)*spak1k2
      abb94(64)=abb94(70)-abb94(64)
      abb94(64)=abb94(64)*abb94(68)
      abb94(66)=abb94(66)*spak2k4
      abb94(70)=abb94(76)*spak1k2
      abb94(66)=abb94(66)-abb94(70)
      abb94(66)=abb94(66)*abb94(72)
      abb94(70)=abb94(75)*c3
      abb94(76)=abb94(63)*abb94(70)
      abb94(80)=spak2l5*c3
      abb94(41)=abb94(80)*abb94(41)
      abb94(82)=abb94(41)*abb94(78)
      abb94(76)=abb94(76)+abb94(82)
      abb94(76)=abb94(76)*NC
      abb94(17)=abb94(76)+abb94(17)+abb94(77)
      abb94(17)=abb94(17)*spak1k7
      abb94(76)=abb94(65)*c3
      abb94(63)=abb94(63)*abb94(76)
      abb94(41)=abb94(41)*abb94(69)
      abb94(41)=abb94(63)+abb94(41)
      abb94(41)=abb94(41)*NC
      abb94(23)=abb94(41)+abb94(71)+abb94(23)
      abb94(23)=abb94(23)*spak4k7
      abb94(17)=-abb94(66)-abb94(64)+abb94(17)+abb94(23)
      abb94(23)=abb94(57)-abb94(17)
      abb94(23)=8.0_ki*abb94(23)
      abb94(12)=abb94(12)*spbk7k2*mB**3
      abb94(41)=abb94(12)*spbk3k1
      abb94(63)=abb94(7)**2
      abb94(64)=abb94(41)*abb94(63)
      abb94(66)=abb94(8)*c4
      abb94(71)=abb94(64)*abb94(66)
      abb94(77)=abb94(12)*c3
      abb94(82)=abb94(77)*spbk3k1
      abb94(84)=abb94(82)*abb94(63)
      abb94(71)=abb94(71)-abb94(84)
      abb94(84)=abb94(71)*abb94(8)
      abb94(85)=abb94(64)*c2
      abb94(84)=abb94(85)+abb94(84)
      abb94(85)=abb94(84)*spak1l5
      abb94(86)=abb94(12)*spbk4k3
      abb94(87)=abb94(86)*abb94(66)
      abb94(88)=abb94(87)*abb94(63)
      abb94(63)=abb94(63)*abb94(86)
      abb94(89)=abb94(63)*c3
      abb94(88)=abb94(88)-abb94(89)
      abb94(89)=abb94(88)*abb94(8)
      abb94(90)=abb94(63)*c2
      abb94(89)=abb94(90)+abb94(89)
      abb94(90)=abb94(89)*spak4l5
      abb94(85)=abb94(85)+abb94(90)
      abb94(90)=abb94(86)*abb94(7)
      abb94(91)=c3*abb94(5)
      abb94(92)=abb94(90)*abb94(91)
      abb94(93)=abb94(90)*abb94(66)
      abb94(94)=abb94(93)*abb94(5)
      abb94(92)=abb94(92)-abb94(94)
      abb94(94)=abb94(92)*abb94(8)
      abb94(95)=abb94(90)*abb94(26)
      abb94(94)=abb94(94)-abb94(95)
      abb94(96)=abb94(94)*spak4l6
      abb94(97)=abb94(12)*abb94(5)
      abb94(98)=abb94(7)*spbk3k1
      abb94(99)=abb94(97)*abb94(98)
      abb94(100)=abb94(66)-c3
      abb94(101)=-abb94(99)*abb94(100)
      abb94(102)=abb94(101)*abb94(8)
      abb94(103)=abb94(99)*c2
      abb94(102)=abb94(102)-abb94(103)
      abb94(104)=abb94(102)*spak1l6
      abb94(96)=abb94(96)+abb94(104)-abb94(85)
      abb94(96)=abb94(96)*abb94(10)
      abb94(104)=abb94(5)**2
      abb94(41)=abb94(41)*abb94(104)
      abb94(105)=abb94(41)*abb94(66)
      abb94(82)=abb94(82)*abb94(104)
      abb94(82)=abb94(105)-abb94(82)
      abb94(105)=abb94(82)*abb94(8)
      abb94(106)=abb94(41)*c2
      abb94(105)=abb94(106)+abb94(105)
      abb94(106)=abb94(105)*spak1l6
      abb94(107)=abb94(87)*abb94(104)
      abb94(104)=abb94(104)*abb94(86)
      abb94(108)=abb94(104)*c3
      abb94(107)=abb94(107)-abb94(108)
      abb94(108)=abb94(107)*abb94(8)
      abb94(109)=abb94(104)*c2
      abb94(108)=abb94(109)+abb94(108)
      abb94(109)=abb94(108)*spak4l6
      abb94(106)=abb94(106)+abb94(109)
      abb94(109)=abb94(94)*spak4l5
      abb94(110)=abb94(102)*spak1l5
      abb94(109)=abb94(109)+abb94(110)-abb94(106)
      abb94(109)=abb94(109)*abb94(9)
      abb94(96)=abb94(96)+abb94(109)
      abb94(109)=es71+es12-es712
      abb94(110)=4.0_ki*abb94(109)
      abb94(111)=-abb94(96)*abb94(110)
      abb94(112)=4.0_ki*abb94(9)
      abb94(112)=abb94(112)*spak2l6
      abb94(106)=abb94(106)*abb94(112)
      abb94(73)=-3.0_ki*abb94(73)+abb94(106)
      abb94(73)=spbl6k2*abb94(73)
      abb94(106)=4.0_ki*abb94(10)
      abb94(106)=abb94(106)*spak2l5
      abb94(85)=abb94(85)*abb94(106)
      abb94(46)=-3.0_ki*abb94(46)+abb94(85)
      abb94(46)=spbl5k2*abb94(46)
      abb94(85)=abb94(87)*abb94(5)
      abb94(87)=abb94(91)*abb94(86)
      abb94(85)=abb94(85)-abb94(87)
      abb94(113)=abb94(85)*abb94(8)
      abb94(26)=abb94(26)*abb94(86)
      abb94(113)=abb94(113)+abb94(26)
      abb94(39)=8.0_ki*abb94(113)-3.0_ki*abb94(39)
      abb94(39)=spak4l6*abb94(39)
      abb94(12)=abb94(12)*abb94(98)
      abb94(114)=abb94(12)*abb94(66)
      abb94(77)=abb94(77)*abb94(98)
      abb94(98)=abb94(114)-abb94(77)
      abb94(114)=abb94(98)*abb94(8)
      abb94(115)=abb94(12)*c2
      abb94(114)=abb94(115)+abb94(114)
      abb94(83)=8.0_ki*abb94(114)-3.0_ki*abb94(83)
      abb94(83)=spak1l5*abb94(83)
      abb94(115)=abb94(90)*c3
      abb94(93)=abb94(115)-abb94(93)
      abb94(116)=abb94(93)*abb94(8)
      abb94(117)=abb94(90)*c2
      abb94(116)=abb94(117)-abb94(116)
      abb94(81)=8.0_ki*abb94(116)-3.0_ki*abb94(81)
      abb94(81)=spak4l5*abb94(81)
      abb94(97)=abb94(97)*spbk3k1
      abb94(117)=abb94(97)*abb94(66)
      abb94(118)=abb94(97)*c3
      abb94(117)=abb94(117)-abb94(118)
      abb94(119)=abb94(117)*abb94(8)
      abb94(120)=abb94(97)*c2
      abb94(119)=abb94(120)+abb94(119)
      abb94(44)=8.0_ki*abb94(119)-3.0_ki*abb94(44)
      abb94(44)=spak1l6*abb94(44)
      abb94(113)=spak4l5*abb94(113)
      abb94(119)=spak1l5*abb94(119)
      abb94(113)=abb94(113)+abb94(119)
      abb94(112)=abb94(113)*abb94(112)
      abb94(113)=spak1l6*abb94(114)
      abb94(114)=spak4l6*abb94(116)
      abb94(113)=abb94(114)+abb94(113)
      abb94(106)=abb94(113)*abb94(106)
      abb94(39)=abb94(46)+abb94(73)+abb94(106)+abb94(112)+abb94(83)+abb94(44)+a&
      &bb94(39)+abb94(81)+abb94(111)+abb94(17)
      abb94(39)=4.0_ki*abb94(39)
      abb94(32)=abb94(32)*abb94(66)
      abb94(44)=abb94(91)*abb94(20)
      abb94(32)=abb94(32)-abb94(44)
      abb94(32)=abb94(32)*abb94(8)
      abb94(46)=abb94(32)+abb94(34)
      abb94(73)=abb94(46)*spak1l6
      abb94(24)=abb94(24)*abb94(66)
      abb94(81)=abb94(91)*abb94(15)
      abb94(24)=abb94(24)-abb94(81)
      abb94(24)=abb94(24)*abb94(8)
      abb94(83)=abb94(24)+abb94(27)
      abb94(91)=abb94(83)*spak4l6
      abb94(100)=abb94(100)*abb94(8)
      abb94(106)=-abb94(53)*abb94(100)
      abb94(111)=abb94(106)-abb94(56)
      abb94(112)=abb94(111)*spak1l5
      abb94(113)=-abb94(31)*abb94(100)
      abb94(114)=abb94(113)-abb94(49)
      abb94(116)=abb94(114)*spak4l5
      abb94(73)=-abb94(91)+abb94(116)+abb94(112)-abb94(73)
      abb94(91)=32.0_ki*abb94(73)
      abb94(96)=32.0_ki*abb94(96)
      abb94(110)=abb94(73)*abb94(110)
      abb94(17)=3.0_ki*abb94(57)+abb94(110)-abb94(17)
      abb94(17)=2.0_ki*abb94(17)
      abb94(57)=-16.0_ki*abb94(73)
      abb94(73)=abb94(38)*abb94(65)
      abb94(110)=abb94(65)*c4
      abb94(112)=abb94(65)*c2
      abb94(116)=abb94(110)-abb94(112)
      abb94(119)=abb94(116)*spak2l5
      abb94(73)=abb94(73)-abb94(119)
      abb94(73)=abb94(73)*spbk7l5
      abb94(119)=abb94(67)*abb94(65)
      abb94(120)=abb94(116)*spak2l6
      abb94(119)=abb94(119)-abb94(120)
      abb94(119)=abb94(119)*spbk7l6
      abb94(73)=abb94(73)+abb94(119)
      abb94(119)=abb94(73)*abb94(42)
      abb94(120)=abb94(38)*abb94(75)
      abb94(121)=abb94(75)*c4
      abb94(122)=abb94(75)*c2
      abb94(123)=abb94(121)-abb94(122)
      abb94(124)=abb94(123)*spak2l5
      abb94(120)=abb94(120)-abb94(124)
      abb94(120)=abb94(120)*spbk7l5
      abb94(124)=abb94(67)*abb94(75)
      abb94(125)=abb94(123)*spak2l6
      abb94(124)=abb94(124)-abb94(125)
      abb94(124)=abb94(124)*spbk7l6
      abb94(120)=abb94(120)+abb94(124)
      abb94(124)=abb94(120)*abb94(47)
      abb94(125)=2.0_ki*abb94(8)
      abb94(107)=abb94(107)*abb94(125)
      abb94(126)=-c4+3.0_ki*c2
      abb94(127)=abb94(104)*abb94(126)
      abb94(127)=abb94(107)+abb94(127)
      abb94(127)=spak2l6*abb94(127)
      abb94(128)=abb94(67)*abb94(104)
      abb94(127)=abb94(127)+abb94(128)
      abb94(127)=spak2k4*abb94(127)
      abb94(82)=abb94(82)*abb94(125)
      abb94(128)=-abb94(41)*abb94(126)
      abb94(128)=-abb94(82)+abb94(128)
      abb94(128)=spak2l6*abb94(128)
      abb94(129)=-abb94(67)*abb94(41)
      abb94(128)=abb94(128)+abb94(129)
      abb94(128)=spak1k2*abb94(128)
      abb94(127)=abb94(127)+abb94(128)
      abb94(127)=abb94(9)*abb94(127)
      abb94(128)=abb94(65)*abb94(66)
      abb94(76)=abb94(128)-abb94(76)
      abb94(76)=abb94(76)*abb94(8)
      abb94(128)=abb94(76)+abb94(112)
      abb94(129)=abb94(128)*spbk7l5
      abb94(130)=-abb94(129)*abb94(59)
      abb94(66)=abb94(75)*abb94(66)
      abb94(66)=abb94(66)-abb94(70)
      abb94(66)=abb94(66)*abb94(8)
      abb94(70)=abb94(66)+abb94(122)
      abb94(131)=abb94(70)*spbk7l5
      abb94(132)=-abb94(131)*abb94(60)
      abb94(130)=abb94(132)+abb94(130)
      abb94(130)=spak2l6*abb94(130)
      abb94(79)=-spak2k4*abb94(79)
      abb94(61)=spak1k2*abb94(61)
      abb94(61)=abb94(127)+abb94(124)+abb94(119)+abb94(79)+abb94(61)+abb94(130)
      abb94(61)=spbl6k2*abb94(61)
      abb94(79)=abb94(105)*spak1k2
      abb94(105)=abb94(108)*spak2k4
      abb94(79)=abb94(79)-abb94(105)
      abb94(79)=abb94(79)*abb94(9)
      abb94(94)=abb94(94)*spak2k4
      abb94(102)=abb94(102)*spak1k2
      abb94(94)=abb94(94)-abb94(102)
      abb94(102)=abb94(94)*abb94(10)
      abb94(105)=abb94(37)*spak1k2
      abb94(108)=abb94(30)*spak2k4
      abb94(105)=abb94(105)-abb94(108)
      abb94(108)=-abb94(69)*abb94(100)
      abb94(119)=abb94(69)*c2
      abb94(124)=abb94(108)-abb94(119)
      abb94(127)=abb94(124)*spbk7l6
      abb94(130)=abb94(129)+abb94(127)
      abb94(132)=abb94(130)*spak4l5
      abb94(133)=-abb94(78)*abb94(100)
      abb94(134)=abb94(78)*c2
      abb94(135)=abb94(133)-abb94(134)
      abb94(136)=abb94(135)*spbk7l6
      abb94(137)=abb94(136)+abb94(131)
      abb94(138)=abb94(137)*spak1l5
      abb94(79)=abb94(105)+abb94(79)+abb94(138)+abb94(102)+abb94(132)
      abb94(102)=2.0_ki*abb94(109)
      abb94(79)=-abb94(79)*abb94(102)
      abb94(72)=abb94(105)*abb94(72)
      abb94(132)=abb94(51)*spak2k4
      abb94(138)=abb94(58)*spak1k2
      abb94(132)=abb94(132)-abb94(138)
      abb94(68)=abb94(132)*abb94(68)
      abb94(53)=abb94(80)*abb94(53)
      abb94(44)=abb94(44)*spak2l6
      abb94(44)=abb94(53)+abb94(44)
      abb94(44)=abb94(44)*NC
      abb94(21)=-abb94(44)+abb94(21)+abb94(36)
      abb94(36)=abb94(21)*spak1k7
      abb94(31)=abb94(80)*abb94(31)
      abb94(44)=abb94(81)*spak2l6
      abb94(31)=abb94(31)+abb94(44)
      abb94(31)=abb94(31)*NC
      abb94(29)=-abb94(29)+abb94(31)-abb94(50)
      abb94(31)=abb94(29)*spak4k7
      abb94(31)=-abb94(72)+abb94(68)+abb94(36)-abb94(31)
      abb94(36)=spbk7l6*abb94(31)
      abb94(44)=-spak4l5*abb94(29)
      abb94(50)=spak1l5*abb94(21)
      abb94(44)=abb94(44)+abb94(50)
      abb94(44)=spbl6l5*abb94(44)
      abb94(50)=abb94(85)*abb94(125)
      abb94(53)=abb94(86)*abb94(5)
      abb94(68)=abb94(53)*c4
      abb94(26)=3.0_ki*abb94(26)+abb94(50)-abb94(68)
      abb94(50)=-abb94(15)*abb94(80)
      abb94(50)=2.0_ki*abb94(87)+abb94(50)
      abb94(50)=NC*abb94(50)
      abb94(40)=abb94(50)+2.0_ki*abb94(26)+abb94(40)
      abb94(40)=spak2k4*abb94(40)
      abb94(50)=abb94(117)*abb94(125)
      abb94(68)=abb94(126)*abb94(97)
      abb94(50)=abb94(50)+abb94(68)
      abb94(68)=abb94(20)*abb94(80)
      abb94(68)=-2.0_ki*abb94(118)+abb94(68)
      abb94(68)=NC*abb94(68)
      abb94(45)=abb94(68)-2.0_ki*abb94(50)-abb94(45)
      abb94(45)=spak1k2*abb94(45)
      abb94(68)=-abb94(14)*abb94(100)
      abb94(72)=abb94(14)*c4
      abb94(80)=abb94(14)*c2
      abb94(81)=-2.0_ki*abb94(80)+abb94(68)+abb94(72)
      abb94(85)=-spak2l6*abb94(81)
      abb94(86)=abb94(67)*abb94(14)
      abb94(85)=abb94(85)+abb94(86)
      abb94(85)=spbk7l6*abb94(85)
      abb94(87)=abb94(68)-abb94(72)
      abb94(117)=spak2l5*abb94(87)
      abb94(117)=abb94(117)+abb94(62)
      abb94(117)=spbk7l5*abb94(117)
      abb94(85)=abb94(85)+abb94(117)
      abb94(85)=abb94(85)*abb94(59)
      abb94(100)=-abb94(13)*abb94(100)
      abb94(117)=abb94(13)*c4
      abb94(118)=abb94(13)*c2
      abb94(138)=-2.0_ki*abb94(118)+abb94(100)+abb94(117)
      abb94(139)=-spak2l6*abb94(138)
      abb94(140)=abb94(67)*abb94(13)
      abb94(139)=abb94(139)+abb94(140)
      abb94(139)=spbk7l6*abb94(139)
      abb94(141)=abb94(100)-abb94(117)
      abb94(142)=spak2l5*abb94(141)
      abb94(142)=abb94(142)+abb94(74)
      abb94(142)=spbk7l5*abb94(142)
      abb94(139)=abb94(139)+abb94(142)
      abb94(139)=abb94(139)*abb94(60)
      abb94(93)=abb94(93)*abb94(125)
      abb94(142)=abb94(126)*abb94(90)
      abb94(93)=abb94(93)-abb94(142)
      abb94(142)=-spak2l5*abb94(93)
      abb94(143)=abb94(90)*abb94(38)
      abb94(142)=abb94(142)+abb94(143)
      abb94(142)=spak2k4*abb94(142)
      abb94(98)=abb94(98)*abb94(125)
      abb94(143)=abb94(126)*abb94(12)
      abb94(98)=abb94(98)+abb94(143)
      abb94(143)=-spak2l5*abb94(98)
      abb94(12)=-abb94(38)*abb94(12)
      abb94(12)=abb94(143)+abb94(12)
      abb94(12)=spak1k2*abb94(12)
      abb94(12)=abb94(142)+abb94(12)
      abb94(12)=abb94(10)*abb94(12)
      abb94(142)=-spak4l5*abb94(127)
      abb94(143)=-spak1l5*abb94(136)
      abb94(142)=abb94(142)+abb94(143)
      abb94(143)=spbl5k2*spak2l5
      abb94(142)=abb94(142)*abb94(143)
      abb94(12)=abb94(44)+2.0_ki*abb94(142)+abb94(61)+abb94(12)+abb94(139)+abb9&
      &4(85)+abb94(40)+abb94(45)+abb94(36)+abb94(79)
      abb94(12)=4.0_ki*abb94(12)
      abb94(36)=16.0_ki*abb94(105)
      abb94(40)=abb94(46)*spak1k2
      abb94(44)=abb94(83)*spak2k4
      abb94(40)=abb94(40)-abb94(44)
      abb94(40)=16.0_ki*abb94(40)
      abb94(44)=abb94(11)+abb94(126)
      abb94(45)=-abb94(104)*abb94(44)
      abb94(45)=-abb94(107)+abb94(45)
      abb94(45)=spak2k4*abb94(45)
      abb94(41)=abb94(41)*abb94(44)
      abb94(41)=abb94(82)+abb94(41)
      abb94(41)=spak1k2*abb94(41)
      abb94(41)=abb94(45)+abb94(41)
      abb94(45)=2.0_ki*abb94(9)
      abb94(41)=abb94(41)*abb94(45)
      abb94(61)=abb94(92)*abb94(125)
      abb94(79)=abb94(11)-c4
      abb94(82)=abb94(79)*abb94(90)*abb94(5)
      abb94(61)=abb94(82)-abb94(61)+3.0_ki*abb94(95)
      abb94(61)=abb94(61)*spak2k4
      abb94(82)=abb94(101)*abb94(125)
      abb94(79)=abb94(79)*abb94(99)
      abb94(79)=abb94(79)-abb94(82)+3.0_ki*abb94(103)
      abb94(79)=abb94(79)*spak1k2
      abb94(61)=abb94(61)-abb94(79)
      abb94(79)=2.0_ki*abb94(10)
      abb94(82)=-abb94(61)*abb94(79)
      abb94(65)=abb94(11)*abb94(65)
      abb94(85)=abb94(65)-abb94(110)
      abb94(90)=abb94(85)+4.0_ki*abb94(76)+5.0_ki*abb94(112)
      abb94(92)=abb94(90)*abb94(42)
      abb94(75)=abb94(11)*abb94(75)
      abb94(95)=abb94(75)-abb94(121)
      abb94(99)=abb94(95)+4.0_ki*abb94(66)+5.0_ki*abb94(122)
      abb94(101)=abb94(99)*abb94(47)
      abb94(92)=abb94(101)+abb94(92)
      abb94(92)=spbk7l6*abb94(92)
      abb94(90)=abb94(90)*abb94(59)
      abb94(99)=abb94(99)*abb94(60)
      abb94(90)=abb94(99)+abb94(90)
      abb94(90)=spbk7l5*abb94(90)
      abb94(41)=abb94(82)+abb94(41)+abb94(105)+abb94(90)+abb94(92)
      abb94(41)=4.0_ki*abb94(41)
      abb94(25)=abb94(25)-abb94(28)
      abb94(24)=7.0_ki*abb94(27)+4.0_ki*abb94(24)+3.0_ki*abb94(25)
      abb94(24)=spak2k4*abb94(24)
      abb94(25)=abb94(33)-abb94(35)
      abb94(25)=-7.0_ki*abb94(34)-4.0_ki*abb94(32)-3.0_ki*abb94(25)
      abb94(25)=spak1k2*abb94(25)
      abb94(24)=abb94(24)+abb94(25)
      abb94(24)=2.0_ki*abb94(24)
      abb94(25)=abb94(128)*spak2k4
      abb94(27)=abb94(70)*spak1k2
      abb94(25)=abb94(25)-abb94(27)
      abb94(27)=16.0_ki*spbk7l6*abb94(25)
      abb94(28)=abb94(38)*abb94(69)
      abb94(32)=abb94(69)*c4
      abb94(33)=abb94(32)-abb94(119)
      abb94(34)=abb94(33)*spak2l5
      abb94(28)=abb94(28)-abb94(34)
      abb94(28)=abb94(28)*spbk7l5
      abb94(34)=abb94(67)*abb94(69)
      abb94(35)=abb94(33)*spak2l6
      abb94(34)=abb94(34)-abb94(35)
      abb94(34)=abb94(34)*spbk7l6
      abb94(28)=abb94(28)+abb94(34)
      abb94(34)=abb94(28)*abb94(59)
      abb94(35)=abb94(38)*abb94(78)
      abb94(82)=abb94(78)*c4
      abb94(90)=abb94(82)-abb94(134)
      abb94(92)=abb94(90)*spak2l5
      abb94(35)=abb94(35)-abb94(92)
      abb94(35)=abb94(35)*spbk7l5
      abb94(92)=abb94(67)*abb94(78)
      abb94(99)=abb94(90)*spak2l6
      abb94(92)=abb94(92)-abb94(99)
      abb94(92)=abb94(92)*spbk7l6
      abb94(35)=abb94(35)+abb94(92)
      abb94(92)=abb94(35)*abb94(60)
      abb94(88)=abb94(88)*abb94(125)
      abb94(99)=abb94(63)*abb94(126)
      abb94(99)=abb94(88)+abb94(99)
      abb94(99)=spak2l5*abb94(99)
      abb94(101)=abb94(38)*abb94(63)
      abb94(99)=abb94(99)+abb94(101)
      abb94(99)=spak2k4*abb94(99)
      abb94(71)=abb94(71)*abb94(125)
      abb94(101)=-abb94(64)*abb94(126)
      abb94(101)=-abb94(71)+abb94(101)
      abb94(101)=spak2l5*abb94(101)
      abb94(38)=-abb94(38)*abb94(64)
      abb94(38)=abb94(101)+abb94(38)
      abb94(38)=spak1k2*abb94(38)
      abb94(38)=abb94(99)+abb94(38)
      abb94(38)=abb94(10)*abb94(38)
      abb94(99)=abb94(127)*abb94(42)
      abb94(101)=abb94(136)*abb94(47)
      abb94(99)=abb94(101)+abb94(99)
      abb94(99)=spak2l5*abb94(99)
      abb94(52)=-spak2k4*abb94(52)
      abb94(19)=spak1k2*abb94(19)
      abb94(19)=abb94(38)+abb94(92)+abb94(34)+abb94(52)+abb94(19)+abb94(99)
      abb94(19)=spbl5k2*abb94(19)
      abb94(34)=abb94(84)*spak1k2
      abb94(38)=abb94(89)*spak2k4
      abb94(34)=abb94(34)-abb94(38)
      abb94(34)=abb94(34)*abb94(10)
      abb94(38)=abb94(94)*abb94(9)
      abb94(52)=abb94(130)*spak4l6
      abb94(84)=abb94(137)*spak1l6
      abb94(34)=-abb94(132)+abb94(34)-abb94(84)+abb94(38)-abb94(52)
      abb94(34)=-abb94(34)*abb94(102)
      abb94(31)=spbk7l5*abb94(31)
      abb94(38)=spak4l6*abb94(29)
      abb94(52)=-spak1l6*abb94(21)
      abb94(38)=abb94(38)+abb94(52)
      abb94(38)=spbl6l5*abb94(38)
      abb94(52)=spak2l6*c3
      abb94(15)=-abb94(15)*abb94(52)
      abb94(15)=2.0_ki*abb94(115)+abb94(15)
      abb94(15)=NC*abb94(15)
      abb94(15)=abb94(15)-2.0_ki*abb94(93)+abb94(18)
      abb94(15)=spak2k4*abb94(15)
      abb94(18)=abb94(20)*abb94(52)
      abb94(18)=-2.0_ki*abb94(77)+abb94(18)
      abb94(18)=NC*abb94(18)
      abb94(18)=abb94(18)-2.0_ki*abb94(98)-abb94(22)
      abb94(18)=spak1k2*abb94(18)
      abb94(20)=spak2l6*abb94(87)
      abb94(20)=abb94(20)+abb94(86)
      abb94(20)=spbk7l6*abb94(20)
      abb94(22)=-spak2l5*abb94(81)
      abb94(22)=abb94(22)+abb94(62)
      abb94(22)=spbk7l5*abb94(22)
      abb94(20)=abb94(20)+abb94(22)
      abb94(20)=abb94(20)*abb94(42)
      abb94(22)=spak2l6*abb94(141)
      abb94(22)=abb94(22)+abb94(140)
      abb94(22)=spbk7l6*abb94(22)
      abb94(52)=-spak2l5*abb94(138)
      abb94(52)=abb94(52)+abb94(74)
      abb94(52)=spbk7l5*abb94(52)
      abb94(22)=abb94(22)+abb94(52)
      abb94(22)=abb94(22)*abb94(47)
      abb94(26)=spak2l6*abb94(26)
      abb94(52)=abb94(67)*abb94(53)
      abb94(26)=abb94(26)+abb94(52)
      abb94(26)=spak2k4*abb94(26)
      abb94(50)=-spak2l6*abb94(50)
      abb94(52)=-abb94(67)*abb94(97)
      abb94(50)=abb94(50)+abb94(52)
      abb94(50)=spak1k2*abb94(50)
      abb94(26)=abb94(26)+abb94(50)
      abb94(26)=abb94(9)*abb94(26)
      abb94(50)=spak4l6*abb94(129)
      abb94(52)=spak1l6*abb94(131)
      abb94(50)=abb94(50)+abb94(52)
      abb94(52)=spbl6k2*spak2l6
      abb94(50)=abb94(50)*abb94(52)
      abb94(15)=abb94(38)+abb94(19)+2.0_ki*abb94(50)+abb94(26)+abb94(22)+abb94(&
      &20)+abb94(15)+abb94(18)+abb94(31)+abb94(34)
      abb94(15)=4.0_ki*abb94(15)
      abb94(18)=-16.0_ki*abb94(132)
      abb94(19)=abb94(111)*spak1k2
      abb94(20)=abb94(114)*spak2k4
      abb94(19)=abb94(19)-abb94(20)
      abb94(19)=16.0_ki*abb94(19)
      abb94(20)=-abb94(61)*abb94(45)
      abb94(22)=-abb94(63)*abb94(44)
      abb94(22)=-abb94(88)+abb94(22)
      abb94(22)=spak2k4*abb94(22)
      abb94(26)=abb94(64)*abb94(44)
      abb94(26)=abb94(71)+abb94(26)
      abb94(26)=spak1k2*abb94(26)
      abb94(22)=abb94(22)+abb94(26)
      abb94(22)=abb94(22)*abb94(79)
      abb94(26)=abb94(11)*abb94(69)
      abb94(31)=abb94(26)-abb94(32)
      abb94(32)=abb94(31)-4.0_ki*abb94(108)+5.0_ki*abb94(119)
      abb94(34)=abb94(32)*abb94(42)
      abb94(38)=abb94(11)*abb94(78)
      abb94(42)=abb94(38)-abb94(82)
      abb94(44)=abb94(42)-4.0_ki*abb94(133)+5.0_ki*abb94(134)
      abb94(45)=abb94(44)*abb94(47)
      abb94(34)=abb94(45)+abb94(34)
      abb94(34)=spbk7l6*abb94(34)
      abb94(32)=abb94(32)*abb94(59)
      abb94(44)=abb94(44)*abb94(60)
      abb94(32)=abb94(44)+abb94(32)
      abb94(32)=spbk7l5*abb94(32)
      abb94(20)=abb94(22)+abb94(20)-abb94(132)+abb94(32)+abb94(34)
      abb94(20)=4.0_ki*abb94(20)
      abb94(22)=abb94(43)-abb94(48)
      abb94(22)=7.0_ki*abb94(49)-4.0_ki*abb94(113)+3.0_ki*abb94(22)
      abb94(22)=spak2k4*abb94(22)
      abb94(32)=abb94(54)-abb94(55)
      abb94(32)=-7.0_ki*abb94(56)+4.0_ki*abb94(106)-3.0_ki*abb94(32)
      abb94(32)=spak1k2*abb94(32)
      abb94(22)=abb94(22)+abb94(32)
      abb94(22)=2.0_ki*abb94(22)
      abb94(32)=abb94(135)*spak1k2
      abb94(34)=abb94(124)*spak2k4
      abb94(32)=abb94(32)-abb94(34)
      abb94(34)=spbk7l6*abb94(32)
      abb94(25)=spbk7l5*abb94(25)
      abb94(25)=abb94(34)+abb94(25)
      abb94(25)=16.0_ki*abb94(25)
      abb94(32)=16.0_ki*spbk7l5*abb94(32)
      abb94(34)=abb94(52)-abb94(109)
      abb94(43)=abb94(128)*abb94(34)
      abb94(44)=abb94(68)-abb94(80)
      abb94(45)=-spak2l5*abb94(44)
      abb94(43)=abb94(45)+abb94(43)
      abb94(43)=8.0_ki*abb94(43)
      abb94(45)=abb94(143)-abb94(109)
      abb94(47)=-abb94(124)*abb94(45)
      abb94(44)=-spak2l6*abb94(44)
      abb94(44)=abb94(44)+abb94(47)
      abb94(44)=8.0_ki*abb94(44)
      abb94(47)=8.0_ki*spak2l6
      abb94(48)=-abb94(83)*abb94(47)
      abb94(49)=abb94(114)*abb94(47)
      abb94(50)=8.0_ki*spak2l5
      abb94(52)=-abb94(83)*abb94(50)
      abb94(53)=abb94(114)*abb94(50)
      abb94(54)=4.0_ki*abb94(29)
      abb94(29)=-2.0_ki*abb94(29)
      abb94(55)=-8.0_ki*abb94(73)
      abb94(28)=-8.0_ki*abb94(28)
      abb94(56)=abb94(65)-abb94(116)
      abb94(56)=spak4l6*abb94(56)
      abb94(59)=abb94(75)-abb94(123)
      abb94(59)=spak1l6*abb94(59)
      abb94(56)=abb94(56)+abb94(59)
      abb94(56)=spbl6k2*abb94(56)
      abb94(14)=abb94(11)*abb94(14)
      abb94(14)=-abb94(14)+abb94(72)-abb94(80)
      abb94(59)=-spak4l5*abb94(14)
      abb94(11)=abb94(11)*abb94(13)
      abb94(11)=-abb94(11)+abb94(117)-abb94(118)
      abb94(13)=-spak1l5*abb94(11)
      abb94(13)=abb94(56)+abb94(59)+abb94(13)
      abb94(30)=-spak4k7*abb94(30)
      abb94(37)=-spak1k7*abb94(37)
      abb94(13)=abb94(37)+3.0_ki*abb94(13)+abb94(30)
      abb94(13)=4.0_ki*abb94(13)
      abb94(26)=abb94(26)-abb94(33)
      abb94(26)=spak4l5*abb94(26)
      abb94(30)=abb94(38)-abb94(90)
      abb94(30)=spak1l5*abb94(30)
      abb94(26)=abb94(26)+abb94(30)
      abb94(26)=spbl5k2*abb94(26)
      abb94(14)=-spak4l6*abb94(14)
      abb94(11)=-spak1l6*abb94(11)
      abb94(11)=abb94(26)+abb94(14)+abb94(11)
      abb94(14)=-spak4k7*abb94(51)
      abb94(26)=-spak1k7*abb94(58)
      abb94(11)=abb94(26)+3.0_ki*abb94(11)+abb94(14)
      abb94(11)=4.0_ki*abb94(11)
      abb94(14)=abb94(76)-abb94(85)
      abb94(14)=8.0_ki*abb94(14)
      abb94(26)=-abb94(108)-abb94(31)
      abb94(26)=8.0_ki*abb94(26)
      abb94(30)=abb94(70)*abb94(34)
      abb94(31)=abb94(100)-abb94(118)
      abb94(33)=-spak2l5*abb94(31)
      abb94(30)=abb94(33)+abb94(30)
      abb94(30)=8.0_ki*abb94(30)
      abb94(33)=-abb94(135)*abb94(45)
      abb94(31)=-spak2l6*abb94(31)
      abb94(31)=abb94(31)+abb94(33)
      abb94(31)=8.0_ki*abb94(31)
      abb94(33)=-abb94(46)*abb94(47)
      abb94(34)=abb94(111)*abb94(47)
      abb94(37)=-abb94(46)*abb94(50)
      abb94(38)=abb94(111)*abb94(50)
      abb94(45)=-4.0_ki*abb94(21)
      abb94(21)=2.0_ki*abb94(21)
      abb94(46)=-8.0_ki*abb94(120)
      abb94(35)=-8.0_ki*abb94(35)
      abb94(47)=abb94(66)-abb94(95)
      abb94(47)=8.0_ki*abb94(47)
      abb94(42)=-abb94(133)-abb94(42)
      abb94(42)=8.0_ki*abb94(42)
      R2d94=0.0_ki
      rat2 = rat2 + R2d94
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='94' value='", &
          & R2d94, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd94h0
