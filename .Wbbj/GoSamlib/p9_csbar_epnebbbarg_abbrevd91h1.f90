module     p9_csbar_epnebbbarg_abbrevd91h1
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(172), public :: abb91
   complex(ki), public :: R2d91
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p9_csbar_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_color, only: TR
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb91(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb91(2)=1.0_ki/(es71+es34+es56-es712-es234)
      abb91(3)=NC**(-1)
      abb91(4)=es71**(-1)
      abb91(5)=spak2l5**(-1)
      abb91(6)=1.0_ki/(es34+es567-es12-es234)
      abb91(7)=spbl6k2**(-1)
      abb91(8)=spbl5k2**(-1)
      abb91(9)=sqrt(mB**2)
      abb91(10)=spak2l6**(-1)
      abb91(11)=TR*gW
      abb91(11)=abb91(11)**2*i_*CVSC*abb91(2)*abb91(1)
      abb91(12)=abb91(11)*c1
      abb91(13)=abb91(12)*abb91(3)
      abb91(14)=2.0_ki*abb91(13)
      abb91(15)=abb91(6)*spbk3k1
      abb91(16)=abb91(14)*abb91(15)
      abb91(17)=abb91(11)*spbk3k1
      abb91(18)=abb91(17)*abb91(6)
      abb91(19)=abb91(3)**2
      abb91(20)=abb91(19)*c4
      abb91(21)=abb91(20)*abb91(18)
      abb91(22)=abb91(16)-abb91(21)
      abb91(23)=-spbe7k1*abb91(22)
      abb91(24)=spak2l6**2
      abb91(25)=mB**2
      abb91(26)=abb91(24)*abb91(25)
      abb91(27)=abb91(26)*abb91(23)
      abb91(28)=abb91(12)*abb91(25)
      abb91(29)=abb91(28)*NC
      abb91(30)=abb91(29)*abb91(15)
      abb91(31)=abb91(30)*abb91(24)
      abb91(32)=spbe7k1*abb91(31)
      abb91(27)=abb91(32)+abb91(27)
      abb91(27)=abb91(5)*abb91(27)
      abb91(32)=abb91(15)*abb91(12)
      abb91(33)=abb91(32)*NC
      abb91(34)=abb91(33)*spbe7k1
      abb91(34)=abb91(23)+abb91(34)
      abb91(35)=abb91(34)*abb91(24)
      abb91(36)=-spbl5k2*abb91(35)
      abb91(27)=abb91(27)+abb91(36)
      abb91(36)=spak2e7*spak1k4
      abb91(27)=abb91(27)*abb91(36)
      abb91(37)=abb91(4)*spbe7k1
      abb91(38)=abb91(14)*abb91(37)
      abb91(39)=abb91(38)*spbk3k1
      abb91(17)=abb91(37)*abb91(17)
      abb91(40)=abb91(17)*abb91(20)
      abb91(39)=abb91(39)-abb91(40)
      abb91(40)=-abb91(26)*abb91(39)
      abb91(41)=abb91(29)*abb91(24)
      abb91(42)=abb91(37)*spbk3k1
      abb91(43)=abb91(42)*abb91(41)
      abb91(40)=abb91(43)+abb91(40)
      abb91(40)=abb91(5)*abb91(40)
      abb91(43)=abb91(12)*NC
      abb91(44)=abb91(42)*abb91(43)
      abb91(44)=abb91(39)-abb91(44)
      abb91(45)=-abb91(44)*abb91(24)
      abb91(46)=-spbl5k2*abb91(45)
      abb91(40)=abb91(40)+abb91(46)
      abb91(46)=spak2k4*spak1e7
      abb91(40)=abb91(40)*abb91(46)
      abb91(47)=-abb91(26)*abb91(22)
      abb91(31)=abb91(47)+abb91(31)
      abb91(47)=abb91(31)*abb91(5)
      abb91(48)=abb91(22)-abb91(33)
      abb91(49)=-abb91(48)*abb91(24)
      abb91(50)=spbl5k2*abb91(49)
      abb91(50)=-abb91(47)+abb91(50)
      abb91(51)=spbe7k3*spak3k4
      abb91(52)=abb91(51)*spak2e7
      abb91(50)=abb91(50)*abb91(52)
      abb91(53)=abb91(11)*abb91(4)
      abb91(54)=spbe7k1*abb91(53)
      abb91(55)=abb91(54)*abb91(20)
      abb91(38)=abb91(55)-abb91(38)
      abb91(55)=-abb91(26)*abb91(38)
      abb91(56)=abb91(41)*abb91(37)
      abb91(55)=abb91(55)-abb91(56)
      abb91(56)=abb91(55)*abb91(5)
      abb91(57)=abb91(43)*abb91(37)
      abb91(57)=abb91(38)+abb91(57)
      abb91(58)=abb91(57)*abb91(24)
      abb91(59)=spbl5k2*abb91(58)
      abb91(59)=abb91(56)+abb91(59)
      abb91(60)=spbk7k3*spae7k7
      abb91(61)=abb91(60)*spak2k4
      abb91(59)=abb91(59)*abb91(61)
      abb91(62)=spbl6l5*spak1k4
      abb91(35)=-abb91(35)*abb91(62)
      abb91(49)=spbl6l5*abb91(49)*abb91(51)
      abb91(35)=abb91(35)+abb91(49)
      abb91(35)=spal6e7*abb91(35)
      abb91(49)=spbl6l5*spak1e7
      abb91(45)=abb91(45)*abb91(49)
      abb91(58)=-spbl6l5*abb91(58)*abb91(60)
      abb91(45)=abb91(45)+abb91(58)
      abb91(45)=spak4l6*abb91(45)
      abb91(27)=abb91(45)+abb91(35)+abb91(59)+abb91(50)+abb91(27)+abb91(40)
      abb91(27)=spbl6k2*abb91(27)
      abb91(35)=abb91(15)*spak2l6
      abb91(40)=abb91(35)*abb91(29)
      abb91(16)=abb91(16)*spak2l6
      abb91(45)=abb91(16)*abb91(25)
      abb91(21)=abb91(21)*spak2l6
      abb91(50)=abb91(21)*abb91(25)
      abb91(40)=abb91(50)+abb91(40)-abb91(45)
      abb91(45)=spbe7k1*abb91(40)
      abb91(50)=abb91(45)*abb91(36)
      abb91(58)=-abb91(40)*abb91(52)
      abb91(59)=abb91(37)*spak2l6
      abb91(63)=abb91(59)*abb91(29)
      abb91(64)=abb91(14)*spak2l6
      abb91(65)=abb91(64)*abb91(37)
      abb91(66)=abb91(65)*abb91(25)
      abb91(63)=abb91(63)-abb91(66)
      abb91(66)=-spbk3k1*abb91(63)
      abb91(67)=abb91(20)*spak2l6
      abb91(17)=abb91(17)*abb91(67)
      abb91(68)=abb91(17)*abb91(25)
      abb91(66)=abb91(66)-abb91(68)
      abb91(68)=-abb91(66)*abb91(46)
      abb91(69)=abb91(54)*abb91(67)
      abb91(70)=abb91(69)*abb91(25)
      abb91(63)=abb91(63)+abb91(70)
      abb91(70)=-abb91(63)*abb91(61)
      abb91(50)=abb91(70)+abb91(58)+abb91(50)+abb91(68)
      abb91(50)=spbl5k2*abb91(50)
      abb91(27)=abb91(27)+abb91(50)
      abb91(27)=4.0_ki*abb91(27)
      abb91(50)=abb91(24)*mB
      abb91(58)=-abb91(50)*abb91(48)
      abb91(68)=2.0_ki*abb91(5)
      abb91(70)=abb91(58)*abb91(68)
      abb91(16)=abb91(21)-abb91(16)
      abb91(21)=abb91(33)*spak2l6
      abb91(21)=abb91(16)+abb91(21)
      abb91(33)=abb91(7)*mB
      abb91(71)=-abb91(33)*abb91(21)
      abb91(72)=abb91(71)*spbl5k2
      abb91(70)=abb91(70)+abb91(72)
      abb91(70)=abb91(70)*abb91(9)
      abb91(72)=abb91(25)*abb91(7)
      abb91(16)=abb91(72)*abb91(16)
      abb91(73)=abb91(29)*abb91(7)
      abb91(74)=abb91(73)*abb91(35)
      abb91(16)=abb91(74)+abb91(16)
      abb91(74)=abb91(16)*spbl5k2
      abb91(47)=abb91(70)+abb91(74)-abb91(47)
      abb91(70)=spbl6k3*abb91(47)
      abb91(75)=abb91(24)*abb91(32)
      abb91(28)=abb91(28)*abb91(7)
      abb91(35)=abb91(28)*abb91(35)
      abb91(35)=abb91(75)-abb91(35)
      abb91(35)=abb91(35)*NC
      abb91(75)=abb91(13)*abb91(15)
      abb91(76)=abb91(24)*abb91(75)
      abb91(77)=abb91(75)*abb91(72)
      abb91(78)=abb91(77)*spak2l6
      abb91(76)=abb91(76)-abb91(78)
      abb91(18)=abb91(19)*abb91(18)
      abb91(78)=abb91(18)*abb91(24)
      abb91(79)=abb91(18)*abb91(72)
      abb91(80)=abb91(79)*spak2l6
      abb91(78)=abb91(78)-abb91(80)
      abb91(78)=abb91(78)*c4
      abb91(35)=-abb91(78)-abb91(35)+2.0_ki*abb91(76)
      abb91(76)=abb91(35)*spbl6l5
      abb91(78)=abb91(8)*abb91(5)
      abb91(80)=abb91(78)*spbl6l5
      abb91(81)=abb91(31)*abb91(80)
      abb91(76)=abb91(76)+abb91(81)
      abb91(82)=-spbk3k2*abb91(76)
      abb91(83)=spak2l6*mB
      abb91(84)=-abb91(83)*abb91(48)
      abb91(85)=2.0_ki*abb91(9)
      abb91(86)=abb91(84)*abb91(85)
      abb91(86)=abb91(86)-abb91(40)
      abb91(87)=spbl5k3*abb91(86)
      abb91(88)=-abb91(33)*abb91(48)
      abb91(89)=abb91(9)*spbl5k2
      abb91(90)=abb91(88)*abb91(89)
      abb91(91)=-abb91(72)*abb91(22)
      abb91(92)=abb91(73)*abb91(15)
      abb91(91)=abb91(91)+abb91(92)
      abb91(93)=abb91(91)*spbl5k2
      abb91(90)=abb91(90)-abb91(93)
      abb91(94)=spak2l5*spbl5k3
      abb91(95)=-abb91(90)*abb91(94)
      abb91(96)=abb91(21)*spbl6l5
      abb91(97)=spal5l6*spbl5k3
      abb91(98)=abb91(97)*abb91(96)
      abb91(70)=abb91(82)+abb91(98)+abb91(70)+abb91(87)+abb91(95)
      abb91(70)=spak3k4*abb91(70)
      abb91(82)=abb91(20)*abb91(53)
      abb91(87)=abb91(43)*abb91(4)
      abb91(95)=abb91(14)*abb91(4)
      abb91(82)=-abb91(95)+abb91(87)+abb91(82)
      abb91(87)=abb91(68)*abb91(82)*abb91(50)
      abb91(98)=abb91(67)*abb91(53)
      abb91(99)=abb91(12)*spak2l6
      abb91(100)=abb91(99)*NC
      abb91(101)=abb91(100)*abb91(4)
      abb91(102)=abb91(64)*abb91(4)
      abb91(98)=-abb91(102)+abb91(98)+abb91(101)
      abb91(101)=abb91(33)*spbl5k2
      abb91(103)=abb91(98)*abb91(101)
      abb91(87)=abb91(87)-abb91(103)
      abb91(87)=abb91(87)*abb91(9)
      abb91(103)=abb91(14)*abb91(26)
      abb91(41)=abb91(103)-abb91(41)
      abb91(103)=-abb91(4)*abb91(41)
      abb91(104)=abb91(25)*abb91(11)
      abb91(105)=abb91(20)*abb91(4)
      abb91(106)=abb91(104)*abb91(105)*abb91(24)
      abb91(103)=abb91(106)+abb91(103)
      abb91(106)=abb91(103)*abb91(5)
      abb91(107)=abb91(102)*abb91(72)
      abb91(108)=abb91(4)*spak2l6
      abb91(109)=abb91(108)*abb91(73)
      abb91(110)=abb91(104)*abb91(7)
      abb91(111)=abb91(110)*abb91(4)
      abb91(112)=abb91(111)*abb91(67)
      abb91(107)=-abb91(112)+abb91(107)-abb91(109)
      abb91(109)=abb91(107)*spbl5k2
      abb91(87)=abb91(87)-abb91(106)-abb91(109)
      abb91(106)=spbl6k3*spak4k7
      abb91(87)=abb91(87)*abb91(106)
      abb91(109)=abb91(108)*abb91(28)
      abb91(112)=abb91(24)*abb91(4)
      abb91(113)=abb91(112)*abb91(12)
      abb91(109)=abb91(109)-abb91(113)
      abb91(109)=abb91(109)*NC
      abb91(113)=abb91(19)*spak2l6
      abb91(114)=abb91(111)*abb91(113)
      abb91(115)=abb91(24)*abb91(19)
      abb91(116)=abb91(115)*abb91(53)
      abb91(114)=abb91(114)-abb91(116)
      abb91(114)=abb91(114)*c4
      abb91(112)=abb91(112)*abb91(13)
      abb91(116)=abb91(13)*spak2l6
      abb91(117)=abb91(116)*abb91(72)
      abb91(118)=abb91(117)*abb91(4)
      abb91(112)=abb91(112)-abb91(118)
      abb91(109)=abb91(114)+abb91(109)+2.0_ki*abb91(112)
      abb91(109)=abb91(109)*spbl6l5
      abb91(103)=abb91(103)*abb91(80)
      abb91(103)=abb91(109)+abb91(103)
      abb91(109)=spbk3k2*spak4k7
      abb91(103)=abb91(103)*abb91(109)
      abb91(112)=abb91(73)*abb91(4)
      abb91(95)=abb91(95)*abb91(72)
      abb91(105)=abb91(110)*abb91(105)
      abb91(95)=abb91(105)+abb91(112)-abb91(95)
      abb91(105)=abb91(95)*spbl5k2
      abb91(110)=abb91(89)*abb91(82)*abb91(33)
      abb91(105)=abb91(110)-abb91(105)
      abb91(105)=abb91(105)*abb91(94)
      abb91(102)=abb91(102)*abb91(25)
      abb91(104)=abb91(67)*abb91(104)*abb91(4)
      abb91(108)=abb91(108)*abb91(29)
      abb91(102)=-abb91(108)+abb91(102)-abb91(104)
      abb91(104)=abb91(85)*abb91(98)*mB
      abb91(104)=abb91(104)+abb91(102)
      abb91(104)=abb91(104)*spbl5k3
      abb91(104)=abb91(105)-abb91(104)
      abb91(104)=abb91(104)*spak4k7
      abb91(105)=abb91(97)*spak4k7
      abb91(108)=spbl6l5*abb91(98)*abb91(105)
      abb91(87)=-abb91(103)+abb91(108)+abb91(87)-abb91(104)
      abb91(103)=spbk7k1*abb91(87)
      abb91(104)=spak2l5*abb91(90)
      abb91(104)=-abb91(86)+abb91(104)
      abb91(104)=spak1k4*abb91(104)
      abb91(108)=-spal5l6*abb91(21)*abb91(62)
      abb91(104)=abb91(108)+abb91(104)
      abb91(104)=spbl5k1*abb91(104)
      abb91(108)=spbl6k1*spak1k4
      abb91(110)=-abb91(47)*abb91(108)
      abb91(112)=-abb91(35)*abb91(62)
      abb91(114)=-spak1k4*abb91(81)
      abb91(112)=abb91(112)+abb91(114)
      abb91(112)=spbk2k1*abb91(112)
      abb91(70)=abb91(112)+abb91(110)+abb91(104)+abb91(103)+abb91(70)
      abb91(70)=8.0_ki*abb91(70)
      abb91(103)=abb91(100)*abb91(37)
      abb91(103)=abb91(103)+abb91(69)
      abb91(104)=abb91(103)-abb91(65)
      abb91(110)=-abb91(33)*abb91(104)
      abb91(112)=spbl5k2*spak4e7
      abb91(114)=abb91(110)*abb91(112)
      abb91(118)=-abb91(50)*abb91(57)
      abb91(119)=spak4e7*abb91(5)
      abb91(120)=2.0_ki*abb91(119)
      abb91(121)=abb91(118)*abb91(120)
      abb91(114)=abb91(114)-abb91(121)
      abb91(114)=abb91(114)*abb91(9)
      abb91(121)=abb91(73)*abb91(59)
      abb91(122)=abb91(65)*abb91(72)
      abb91(121)=abb91(121)-abb91(122)
      abb91(69)=abb91(69)*abb91(72)
      abb91(69)=abb91(121)+abb91(69)
      abb91(122)=abb91(69)*abb91(112)
      abb91(123)=abb91(55)*abb91(119)
      abb91(114)=abb91(114)+abb91(122)+abb91(123)
      abb91(114)=abb91(114)*spbl6k3
      abb91(122)=abb91(54)*abb91(113)
      abb91(123)=abb91(122)*abb91(72)
      abb91(54)=abb91(54)*abb91(19)
      abb91(124)=abb91(24)*abb91(54)
      abb91(123)=abb91(123)-abb91(124)
      abb91(123)=abb91(123)*c4
      abb91(124)=abb91(116)*abb91(37)
      abb91(125)=abb91(124)*abb91(72)
      abb91(126)=abb91(24)*abb91(37)
      abb91(127)=abb91(13)*abb91(126)
      abb91(125)=abb91(125)-abb91(127)
      abb91(126)=abb91(12)*abb91(126)
      abb91(59)=abb91(28)*abb91(59)
      abb91(59)=abb91(126)-abb91(59)
      abb91(59)=abb91(59)*NC
      abb91(59)=abb91(59)-abb91(123)+2.0_ki*abb91(125)
      abb91(123)=spbl6l5*spak4e7
      abb91(125)=abb91(59)*abb91(123)
      abb91(126)=abb91(123)*abb91(78)
      abb91(127)=abb91(126)*abb91(55)
      abb91(125)=abb91(127)+abb91(125)
      abb91(125)=abb91(125)*spbk3k2
      abb91(127)=abb91(63)*spak4e7
      abb91(103)=mB*abb91(103)
      abb91(128)=abb91(65)*mB
      abb91(103)=abb91(103)-abb91(128)
      abb91(129)=abb91(85)*spak4e7
      abb91(130)=abb91(129)*abb91(103)
      abb91(127)=abb91(127)-abb91(130)
      abb91(127)=abb91(127)*spbl5k3
      abb91(114)=abb91(114)-abb91(127)+abb91(125)
      abb91(125)=abb91(72)*abb91(38)
      abb91(127)=abb91(73)*abb91(37)
      abb91(125)=abb91(127)+abb91(125)
      abb91(127)=abb91(125)*abb91(112)
      abb91(130)=-abb91(33)*abb91(57)
      abb91(131)=abb91(112)*abb91(9)
      abb91(132)=abb91(131)*abb91(130)
      abb91(127)=abb91(127)+abb91(132)
      abb91(132)=-abb91(127)*abb91(94)
      abb91(133)=abb91(104)*abb91(97)
      abb91(134)=-abb91(123)*abb91(133)
      abb91(132)=abb91(134)+abb91(132)-abb91(114)
      abb91(132)=8.0_ki*abb91(132)
      abb91(134)=abb91(84)*abb91(68)
      abb91(135)=abb91(88)*spbl5k2
      abb91(134)=abb91(134)-abb91(135)
      abb91(134)=abb91(134)*abb91(9)
      abb91(136)=abb91(40)*abb91(5)
      abb91(134)=abb91(134)-abb91(136)+abb91(93)
      abb91(134)=abb91(134)*abb91(52)
      abb91(137)=abb91(103)*abb91(68)
      abb91(138)=abb91(130)*spbl5k2
      abb91(137)=abb91(137)+abb91(138)
      abb91(137)=abb91(137)*abb91(9)
      abb91(139)=abb91(63)*abb91(5)
      abb91(140)=abb91(125)*spbl5k2
      abb91(137)=abb91(137)-abb91(139)+abb91(140)
      abb91(137)=abb91(137)*abb91(61)
      abb91(141)=abb91(100)*abb91(42)
      abb91(141)=abb91(141)+abb91(17)
      abb91(142)=mB*abb91(141)
      abb91(128)=abb91(128)*spbk3k1
      abb91(128)=-abb91(128)+abb91(142)
      abb91(142)=abb91(128)*abb91(68)
      abb91(143)=-abb91(44)*abb91(101)
      abb91(142)=abb91(142)-abb91(143)
      abb91(142)=abb91(142)*abb91(9)
      abb91(144)=-abb91(72)*abb91(39)
      abb91(145)=abb91(42)*abb91(73)
      abb91(144)=abb91(145)+abb91(144)
      abb91(145)=abb91(144)*spbl5k2
      abb91(146)=abb91(66)*abb91(5)
      abb91(142)=abb91(142)+abb91(145)+abb91(146)
      abb91(142)=abb91(142)*abb91(46)
      abb91(83)=-abb91(83)*abb91(34)
      abb91(147)=abb91(83)*abb91(68)
      abb91(101)=-abb91(34)*abb91(101)
      abb91(147)=abb91(147)-abb91(101)
      abb91(147)=abb91(147)*abb91(9)
      abb91(148)=abb91(45)*abb91(5)
      abb91(149)=-abb91(72)*abb91(23)
      abb91(92)=abb91(92)*spbe7k1
      abb91(92)=abb91(149)-abb91(92)
      abb91(149)=abb91(92)*spbl5k2
      abb91(147)=abb91(147)+abb91(149)+abb91(148)
      abb91(147)=abb91(147)*abb91(36)
      abb91(150)=abb91(96)*abb91(51)
      abb91(151)=-spbe7k1*abb91(21)
      abb91(152)=abb91(151)*abb91(62)
      abb91(150)=abb91(150)+abb91(152)
      abb91(152)=abb91(150)*spal6e7
      abb91(65)=abb91(65)*spbk3k1
      abb91(65)=abb91(65)-abb91(141)
      abb91(141)=abb91(65)*abb91(49)
      abb91(153)=abb91(104)*spbl6l5
      abb91(154)=abb91(153)*abb91(60)
      abb91(141)=abb91(141)+abb91(154)
      abb91(154)=abb91(141)*spak4l6
      abb91(134)=abb91(152)-abb91(154)-abb91(134)-abb91(137)+abb91(142)-abb91(1&
      &47)
      abb91(134)=8.0_ki*abb91(134)
      abb91(58)=abb91(58)*abb91(120)
      abb91(71)=abb91(71)*abb91(112)
      abb91(58)=abb91(58)+abb91(71)
      abb91(58)=abb91(58)*abb91(9)
      abb91(71)=abb91(16)*abb91(112)
      abb91(137)=abb91(31)*abb91(119)
      abb91(58)=abb91(58)+abb91(71)-abb91(137)
      abb91(58)=abb91(58)*spbe7l6
      abb91(71)=abb91(35)*abb91(123)
      abb91(31)=abb91(126)*abb91(31)
      abb91(31)=abb91(31)+abb91(71)
      abb91(31)=abb91(31)*spbe7k2
      abb91(71)=abb91(86)*spbe7l5
      abb91(86)=-spak4e7*abb91(71)
      abb91(31)=abb91(58)+abb91(31)-abb91(86)
      abb91(58)=abb91(91)*abb91(112)
      abb91(86)=abb91(131)*abb91(88)
      abb91(58)=abb91(58)-abb91(86)
      abb91(86)=spak2l5*spbe7l5
      abb91(88)=abb91(58)*abb91(86)
      abb91(137)=spal5l6*spbe7l5
      abb91(142)=abb91(137)*abb91(123)
      abb91(147)=abb91(21)*abb91(142)
      abb91(88)=abb91(88)+abb91(147)+abb91(31)
      abb91(88)=8.0_ki*abb91(88)
      abb91(147)=mB**3
      abb91(152)=abb91(7)**2
      abb91(154)=abb91(89)*abb91(147)*abb91(152)
      abb91(155)=-abb91(34)*abb91(154)
      abb91(156)=mB**4
      abb91(152)=abb91(152)*abb91(156)
      abb91(157)=abb91(34)*abb91(152)
      abb91(158)=spbl5k2*abb91(157)
      abb91(155)=abb91(158)+abb91(155)
      abb91(155)=abb91(155)*abb91(36)
      abb91(158)=abb91(44)*abb91(154)
      abb91(159)=-abb91(44)*abb91(152)
      abb91(160)=spbl5k2*abb91(159)
      abb91(158)=abb91(160)+abb91(158)
      abb91(158)=abb91(158)*abb91(46)
      abb91(160)=-abb91(48)*abb91(154)
      abb91(161)=-abb91(48)*abb91(152)
      abb91(162)=-spbl5k2*abb91(161)
      abb91(160)=abb91(162)+abb91(160)
      abb91(160)=abb91(160)*abb91(52)
      abb91(154)=abb91(57)*abb91(154)
      abb91(152)=abb91(57)*abb91(152)
      abb91(162)=-spbl5k2*abb91(152)
      abb91(154)=abb91(162)+abb91(154)
      abb91(154)=abb91(154)*abb91(61)
      abb91(154)=abb91(154)+abb91(160)+abb91(155)+abb91(158)
      abb91(154)=abb91(10)*abb91(154)
      abb91(155)=abb91(84)*abb91(5)
      abb91(135)=abb91(155)-abb91(135)
      abb91(135)=abb91(135)*abb91(9)
      abb91(155)=-abb91(40)*abb91(68)
      abb91(158)=abb91(5)**2
      abb91(160)=abb91(158)*abb91(156)
      abb91(147)=abb91(147)*abb91(158)*abb91(9)
      abb91(147)=abb91(160)-abb91(147)
      abb91(160)=abb91(8)*abb91(21)*abb91(147)
      abb91(162)=spbl5k2*abb91(21)
      abb91(155)=abb91(160)+abb91(135)+abb91(155)+abb91(162)
      abb91(160)=spbe7k3*spak2e7*spak3k4
      abb91(155)=abb91(155)*abb91(160)
      abb91(162)=abb91(103)*abb91(5)
      abb91(138)=abb91(162)+abb91(138)
      abb91(138)=abb91(138)*abb91(9)
      abb91(162)=abb91(8)*abb91(104)*abb91(147)
      abb91(163)=-abb91(63)*abb91(68)
      abb91(164)=spbl5k2*abb91(104)
      abb91(162)=abb91(162)+abb91(138)+abb91(163)+abb91(164)
      abb91(163)=spbk7k3*spak2k4*spae7k7
      abb91(162)=abb91(162)*abb91(163)
      abb91(164)=abb91(83)*abb91(5)
      abb91(101)=abb91(164)-abb91(101)
      abb91(101)=abb91(101)*abb91(9)
      abb91(164)=abb91(45)*abb91(68)
      abb91(165)=spbl5k2*abb91(151)
      abb91(164)=abb91(101)+abb91(164)+abb91(165)
      abb91(164)=abb91(164)*abb91(36)
      abb91(165)=abb91(128)*abb91(5)
      abb91(143)=abb91(165)-abb91(143)
      abb91(143)=abb91(143)*abb91(9)
      abb91(165)=-abb91(66)*abb91(68)
      abb91(166)=spbl5k2*abb91(65)
      abb91(165)=-abb91(143)+abb91(165)+abb91(166)
      abb91(165)=abb91(165)*abb91(46)
      abb91(166)=abb91(36)*abb91(151)*abb91(147)
      abb91(147)=abb91(46)*abb91(65)*abb91(147)
      abb91(147)=abb91(166)+abb91(147)
      abb91(147)=abb91(8)*abb91(147)
      abb91(166)=-spak1k4*abb91(45)*abb91(80)
      abb91(167)=abb91(40)*abb91(80)
      abb91(168)=spbl6l5*abb91(91)
      abb91(167)=abb91(168)+abb91(167)
      abb91(167)=abb91(167)*abb91(51)
      abb91(168)=abb91(92)*abb91(62)
      abb91(166)=abb91(167)+abb91(168)+abb91(166)
      abb91(166)=spal6e7*abb91(166)
      abb91(167)=-spbl6l5*abb91(125)
      abb91(168)=-abb91(63)*abb91(80)
      abb91(167)=abb91(167)+abb91(168)
      abb91(167)=abb91(167)*abb91(60)
      abb91(168)=abb91(144)*abb91(49)
      abb91(169)=-spak1e7*abb91(66)*abb91(80)
      abb91(167)=abb91(167)+abb91(168)+abb91(169)
      abb91(167)=spak4l6*abb91(167)
      abb91(147)=abb91(154)+abb91(167)+abb91(166)+abb91(162)+abb91(155)+abb91(1&
      &47)+abb91(164)+abb91(165)
      abb91(147)=8.0_ki*abb91(147)
      abb91(107)=abb91(5)*abb91(107)*abb91(106)
      abb91(95)=spbl5k3*abb91(95)*spak4k7
      abb91(95)=abb91(107)-abb91(95)
      abb91(107)=spbk7k1*abb91(95)
      abb91(154)=spbl5k1*spak1k4
      abb91(155)=-spbl5k3*spak3k4
      abb91(155)=abb91(154)+abb91(155)
      abb91(155)=abb91(91)*abb91(155)
      abb91(162)=spbl6k3*spak3k4
      abb91(108)=abb91(162)-abb91(108)
      abb91(162)=-abb91(108)*abb91(16)*abb91(5)
      abb91(107)=abb91(107)+abb91(162)+abb91(155)
      abb91(107)=16.0_ki*abb91(107)
      abb91(155)=spbl6k3*abb91(69)*abb91(119)
      abb91(162)=abb91(125)*spbl5k3
      abb91(164)=abb91(162)*spak4e7
      abb91(155)=abb91(155)+abb91(164)
      abb91(164)=16.0_ki*abb91(155)
      abb91(165)=abb91(52)*abb91(91)
      abb91(166)=abb91(61)*abb91(125)
      abb91(165)=abb91(165)+abb91(166)
      abb91(166)=abb91(165)*abb91(5)
      abb91(167)=abb91(36)*abb91(5)
      abb91(168)=abb91(167)*abb91(92)
      abb91(169)=abb91(46)*abb91(5)
      abb91(170)=abb91(169)*abb91(144)
      abb91(168)=abb91(168)-abb91(170)
      abb91(166)=abb91(166)+abb91(168)
      abb91(166)=16.0_ki*abb91(166)
      abb91(170)=spbe7l5*spak4e7
      abb91(171)=abb91(170)*abb91(91)
      abb91(16)=abb91(16)*spbe7l6
      abb91(172)=abb91(16)*abb91(119)
      abb91(171)=abb91(171)+abb91(172)
      abb91(172)=16.0_ki*abb91(171)
      abb91(161)=abb91(161)*abb91(52)
      abb91(152)=abb91(152)*abb91(61)
      abb91(152)=abb91(152)+abb91(161)
      abb91(152)=abb91(5)*abb91(152)
      abb91(157)=-abb91(157)*abb91(167)
      abb91(159)=-abb91(159)*abb91(169)
      abb91(152)=abb91(157)+abb91(159)+abb91(152)
      abb91(152)=abb91(10)*abb91(152)
      abb91(157)=abb91(34)*abb91(36)
      abb91(159)=-abb91(44)*abb91(46)
      abb91(157)=abb91(157)+abb91(159)
      abb91(158)=abb91(158)*abb91(8)
      abb91(156)=abb91(156)*abb91(7)
      abb91(159)=-abb91(158)*abb91(156)*abb91(157)
      abb91(161)=-abb91(5)*abb91(91)
      abb91(156)=abb91(158)*abb91(156)
      abb91(158)=-abb91(48)*abb91(156)
      abb91(158)=abb91(161)+abb91(158)
      abb91(158)=abb91(158)*abb91(160)
      abb91(161)=-abb91(5)*abb91(125)
      abb91(156)=abb91(57)*abb91(156)
      abb91(156)=abb91(161)+abb91(156)
      abb91(156)=abb91(156)*abb91(163)
      abb91(152)=abb91(152)+abb91(156)+abb91(158)+abb91(159)-abb91(168)
      abb91(152)=16.0_ki*abb91(152)
      abb91(58)=spbe7l5*abb91(58)
      abb91(127)=spbl5k3*abb91(127)
      abb91(58)=abb91(58)+abb91(127)
      abb91(58)=spak2l5*abb91(58)
      abb91(127)=spbe7l5*abb91(21)
      abb91(156)=spbl5k3*abb91(104)
      abb91(127)=abb91(127)+abb91(156)
      abb91(127)=spal5l6*abb91(123)*abb91(127)
      abb91(31)=abb91(127)+abb91(58)+abb91(31)+abb91(114)
      abb91(31)=8.0_ki*abb91(31)
      abb91(58)=-abb91(171)-abb91(155)
      abb91(58)=16.0_ki*abb91(58)
      abb91(87)=-spbk7e7*abb91(87)
      abb91(110)=abb91(110)*spbl5k2
      abb91(68)=abb91(118)*abb91(68)
      abb91(68)=abb91(110)-abb91(68)
      abb91(68)=abb91(68)*abb91(9)
      abb91(110)=abb91(69)*spbl5k2
      abb91(56)=abb91(68)+abb91(110)+abb91(56)
      abb91(68)=spbl6k3*abb91(56)
      abb91(85)=abb91(103)*abb91(85)
      abb91(85)=abb91(85)-abb91(63)
      abb91(114)=spbl5k3*abb91(85)
      abb91(89)=abb91(130)*abb91(89)
      abb91(89)=abb91(89)+abb91(140)
      abb91(118)=abb91(89)*abb91(94)
      abb91(68)=abb91(68)+abb91(114)+abb91(118)
      abb91(68)=spak1k4*abb91(68)
      abb91(114)=abb91(59)*abb91(62)
      abb91(55)=abb91(55)*abb91(80)
      abb91(80)=spak1k4*abb91(55)
      abb91(80)=abb91(114)+abb91(80)
      abb91(80)=spbk3k2*abb91(80)
      abb91(62)=abb91(62)*abb91(133)
      abb91(62)=abb91(87)+abb91(62)+abb91(80)+abb91(68)
      abb91(62)=4.0_ki*abb91(62)
      abb91(68)=-spbk7e7*abb91(95)
      abb91(69)=abb91(69)*abb91(5)
      abb91(80)=-spbl6k3*abb91(69)
      abb91(80)=-abb91(162)+abb91(80)
      abb91(80)=spak1k4*abb91(80)
      abb91(68)=abb91(68)+abb91(80)
      abb91(68)=8.0_ki*abb91(68)
      abb91(45)=abb91(45)*abb91(167)
      abb91(66)=-abb91(66)*abb91(169)
      abb91(45)=abb91(45)+abb91(66)
      abb91(45)=abb91(8)*abb91(45)
      abb91(40)=abb91(40)*abb91(78)
      abb91(66)=abb91(21)-abb91(40)
      abb91(66)=abb91(66)*abb91(160)
      abb91(63)=abb91(63)*abb91(78)
      abb91(80)=abb91(104)-abb91(63)
      abb91(80)=abb91(80)*abb91(163)
      abb91(87)=abb91(151)*abb91(36)
      abb91(65)=abb91(65)*abb91(46)
      abb91(45)=abb91(80)+abb91(66)+abb91(45)+abb91(87)+abb91(65)
      abb91(45)=spbl6k2*abb91(45)
      abb91(65)=-spal5e7*abb91(150)
      abb91(66)=spak4l5*abb91(141)
      abb91(23)=abb91(25)*abb91(23)
      abb91(80)=abb91(30)*spbe7k1
      abb91(23)=abb91(80)+abb91(23)
      abb91(80)=abb91(23)*abb91(36)
      abb91(39)=-abb91(25)*abb91(39)
      abb91(42)=abb91(42)*abb91(29)
      abb91(39)=abb91(42)+abb91(39)
      abb91(42)=abb91(39)*abb91(46)
      abb91(22)=-abb91(25)*abb91(22)
      abb91(22)=abb91(22)+abb91(30)
      abb91(30)=-abb91(22)*abb91(52)
      abb91(38)=abb91(25)*abb91(38)
      abb91(87)=abb91(29)*abb91(37)
      abb91(38)=abb91(87)+abb91(38)
      abb91(87)=-abb91(38)*abb91(61)
      abb91(30)=abb91(66)+abb91(65)+abb91(45)+abb91(87)+abb91(30)+abb91(80)+abb&
      &91(42)
      abb91(30)=4.0_ki*abb91(30)
      abb91(42)=spak4k7*abb91(82)*abb91(94)
      abb91(45)=abb91(98)*abb91(106)
      abb91(42)=abb91(42)+abb91(45)
      abb91(45)=spbk7k1*abb91(42)
      abb91(65)=abb91(21)*abb91(108)
      abb91(66)=-abb91(48)*spak3k4
      abb91(80)=abb91(94)*abb91(66)
      abb91(87)=-abb91(154)*abb91(48)
      abb91(95)=-spak2l5*abb91(87)
      abb91(45)=abb91(95)+abb91(45)+abb91(80)+abb91(65)
      abb91(45)=8.0_ki*abb91(45)
      abb91(65)=abb91(104)*spbl6k3
      abb91(80)=abb91(65)*spak4e7
      abb91(95)=abb91(57)*spak4e7
      abb91(98)=-abb91(94)*abb91(95)
      abb91(98)=abb91(98)-abb91(80)
      abb91(98)=8.0_ki*abb91(98)
      abb91(52)=-abb91(48)*abb91(52)
      abb91(61)=abb91(57)*abb91(61)
      abb91(52)=-abb91(157)+abb91(52)+abb91(61)
      abb91(52)=8.0_ki*abb91(52)
      abb91(61)=-abb91(170)*abb91(48)
      abb91(106)=abb91(61)*spak2l5
      abb91(108)=abb91(21)*spbe7l6
      abb91(114)=abb91(108)*spak4e7
      abb91(106)=abb91(106)+abb91(114)
      abb91(106)=8.0_ki*abb91(106)
      abb91(36)=abb91(92)*abb91(36)
      abb91(46)=abb91(144)*abb91(46)
      abb91(36)=abb91(165)+abb91(36)-abb91(46)
      abb91(36)=abb91(36)*abb91(10)
      abb91(46)=abb91(38)*abb91(78)
      abb91(118)=abb91(46)-abb91(57)
      abb91(118)=abb91(118)*abb91(163)
      abb91(127)=abb91(22)*abb91(78)
      abb91(130)=abb91(127)+abb91(48)
      abb91(130)=abb91(130)*abb91(160)
      abb91(133)=abb91(23)*abb91(167)
      abb91(141)=abb91(39)*abb91(169)
      abb91(133)=abb91(133)+abb91(141)
      abb91(133)=abb91(133)*abb91(8)
      abb91(36)=-abb91(36)-abb91(118)-abb91(130)+abb91(133)-abb91(157)
      abb91(118)=16.0_ki*abb91(36)
      abb91(130)=abb91(95)*spbl5k3
      abb91(130)=abb91(130)+abb91(61)
      abb91(133)=spak2l5*abb91(130)
      abb91(80)=abb91(80)+abb91(133)+abb91(114)
      abb91(80)=8.0_ki*abb91(80)
      abb91(94)=abb91(57)*abb91(94)
      abb91(65)=abb91(94)+abb91(65)
      abb91(65)=spak1k4*abb91(65)
      abb91(42)=-spbk7e7*abb91(42)
      abb91(42)=abb91(42)+abb91(65)
      abb91(42)=4.0_ki*abb91(42)
      abb91(65)=abb91(6)*spak2l6
      abb91(94)=abb91(65)*abb91(28)
      abb91(24)=abb91(24)*abb91(6)
      abb91(12)=abb91(24)*abb91(12)
      abb91(12)=abb91(94)-abb91(12)
      abb91(12)=abb91(12)*NC
      abb91(11)=abb91(11)*abb91(6)
      abb91(94)=abb91(115)*abb91(11)
      abb91(114)=abb91(113)*abb91(11)
      abb91(115)=abb91(114)*abb91(72)
      abb91(94)=abb91(94)-abb91(115)
      abb91(94)=abb91(94)*c4
      abb91(24)=abb91(24)*abb91(13)
      abb91(115)=abb91(117)*abb91(6)
      abb91(24)=abb91(24)-abb91(115)
      abb91(12)=-abb91(94)+abb91(12)+2.0_ki*abb91(24)
      abb91(12)=abb91(12)*abb91(123)
      abb91(24)=-abb91(6)*abb91(41)
      abb91(20)=abb91(20)*abb91(11)
      abb91(26)=abb91(20)*abb91(26)
      abb91(24)=abb91(26)+abb91(24)
      abb91(26)=abb91(24)*abb91(126)
      abb91(12)=abb91(12)+abb91(26)
      abb91(12)=abb91(12)*spbe7k2
      abb91(14)=abb91(14)*abb91(6)
      abb91(14)=abb91(14)-abb91(20)
      abb91(20)=abb91(43)*abb91(6)
      abb91(20)=abb91(20)-abb91(14)
      abb91(26)=abb91(120)*abb91(20)*abb91(50)
      abb91(41)=abb91(67)*abb91(11)
      abb91(43)=abb91(64)*abb91(6)
      abb91(41)=abb91(43)-abb91(41)
      abb91(43)=abb91(100)*abb91(6)
      abb91(43)=abb91(43)-abb91(41)
      abb91(50)=abb91(112)*abb91(43)*abb91(33)
      abb91(26)=abb91(26)-abb91(50)
      abb91(26)=abb91(26)*abb91(9)
      abb91(24)=abb91(24)*abb91(119)
      abb91(50)=-abb91(72)*abb91(41)
      abb91(64)=abb91(65)*abb91(73)
      abb91(50)=abb91(50)+abb91(64)
      abb91(64)=abb91(50)*abb91(112)
      abb91(24)=abb91(26)+abb91(64)-abb91(24)
      abb91(24)=abb91(24)*spbe7l6
      abb91(26)=abb91(131)*abb91(20)*abb91(33)
      abb91(14)=-abb91(72)*abb91(14)
      abb91(33)=abb91(73)*abb91(6)
      abb91(14)=abb91(33)+abb91(14)
      abb91(33)=abb91(14)*abb91(112)
      abb91(26)=abb91(26)-abb91(33)
      abb91(26)=abb91(26)*abb91(86)
      abb91(25)=-abb91(25)*abb91(41)
      abb91(29)=abb91(65)*abb91(29)
      abb91(25)=abb91(25)+abb91(29)
      abb91(25)=abb91(25)*spak4e7
      abb91(29)=abb91(129)*abb91(43)*mB
      abb91(29)=abb91(29)-abb91(25)
      abb91(29)=abb91(29)*spbe7l5
      abb91(33)=abb91(43)*abb91(142)
      abb91(12)=abb91(12)+abb91(24)+abb91(33)-abb91(26)+abb91(29)
      abb91(24)=spbk4k1*abb91(12)
      abb91(26)=abb91(89)*spak2l5
      abb91(26)=abb91(26)+abb91(85)
      abb91(29)=spal5l6*abb91(153)
      abb91(29)=abb91(29)+abb91(26)
      abb91(29)=spbk7l5*abb91(29)
      abb91(33)=-spbl6l5*abb91(59)
      abb91(33)=abb91(33)-abb91(55)
      abb91(33)=spbk7k2*abb91(33)
      abb91(29)=abb91(33)+abb91(29)
      abb91(29)=spae7k7*abb91(29)
      abb91(33)=abb91(47)*spbe7l6
      abb91(41)=abb91(90)*abb91(86)
      abb91(33)=-abb91(33)+abb91(41)-abb91(71)
      abb91(41)=spbe7k2*abb91(76)
      abb91(47)=abb91(137)*abb91(96)
      abb91(41)=abb91(47)+abb91(41)-abb91(33)
      abb91(41)=spak3e7*abb91(41)
      abb91(47)=spbl6k1*spak1e7
      abb91(64)=spbk7l6*spae7k7
      abb91(47)=abb91(47)-abb91(64)
      abb91(56)=-abb91(56)*abb91(47)
      abb91(26)=-spak1e7*abb91(26)
      abb91(64)=-spal5l6*abb91(104)*abb91(49)
      abb91(26)=abb91(64)+abb91(26)
      abb91(26)=spbl5k1*abb91(26)
      abb91(59)=abb91(59)*abb91(49)
      abb91(55)=spak1e7*abb91(55)
      abb91(55)=abb91(59)+abb91(55)
      abb91(55)=spbk2k1*abb91(55)
      abb91(24)=abb91(55)+abb91(26)+abb91(41)+abb91(24)+abb91(56)+abb91(29)
      abb91(24)=4.0_ki*abb91(24)
      abb91(26)=abb91(91)*spbe7l5
      abb91(16)=abb91(16)*abb91(5)
      abb91(16)=abb91(26)+abb91(16)
      abb91(26)=-spak3e7*abb91(16)
      abb91(29)=spbe7l6*abb91(50)*abb91(119)
      abb91(14)=abb91(14)*abb91(170)
      abb91(14)=abb91(29)+abb91(14)
      abb91(29)=-spbk4k1*abb91(14)
      abb91(41)=spbl5k1*spak1e7
      abb91(50)=-spbk7l5*spae7k7
      abb91(50)=abb91(50)+abb91(41)
      abb91(50)=abb91(125)*abb91(50)
      abb91(55)=abb91(69)*abb91(47)
      abb91(26)=abb91(26)+abb91(29)+abb91(55)+abb91(50)
      abb91(26)=8.0_ki*abb91(26)
      abb91(29)=abb91(57)*spae7k7
      abb91(50)=abb91(29)*spbk7l5
      abb91(41)=abb91(41)*abb91(57)
      abb91(41)=abb91(50)-abb91(41)
      abb91(50)=spak2l5*abb91(41)
      abb91(55)=-abb91(48)*abb91(86)
      abb91(55)=abb91(55)+abb91(108)
      abb91(56)=spak3e7*abb91(55)
      abb91(47)=-abb91(104)*abb91(47)
      abb91(43)=spak4e7*abb91(43)*spbe7l6
      abb91(20)=abb91(20)*abb91(170)
      abb91(59)=abb91(20)*spak2l5
      abb91(43)=abb91(43)+abb91(59)
      abb91(59)=spbk4k1*abb91(43)
      abb91(47)=abb91(56)+abb91(59)+abb91(47)+abb91(50)
      abb91(47)=4.0_ki*abb91(47)
      abb91(12)=-spbk4k3*abb91(12)
      abb91(33)=spak1e7*abb91(33)
      abb91(35)=-abb91(35)*abb91(49)
      abb91(50)=-spak1e7*abb91(81)
      abb91(35)=abb91(35)+abb91(50)
      abb91(35)=spbe7k2*abb91(35)
      abb91(21)=-abb91(21)*abb91(49)*abb91(137)
      abb91(12)=abb91(12)+abb91(21)+abb91(35)+abb91(33)
      abb91(12)=4.0_ki*abb91(12)
      abb91(16)=spak1e7*abb91(16)
      abb91(14)=spbk4k3*abb91(14)
      abb91(14)=abb91(14)+abb91(16)
      abb91(14)=8.0_ki*abb91(14)
      abb91(16)=-spak1e7*abb91(55)
      abb91(21)=-spbk4k3*abb91(43)
      abb91(16)=abb91(21)+abb91(16)
      abb91(16)=4.0_ki*abb91(16)
      abb91(21)=abb91(9)*abb91(5)
      abb91(33)=abb91(83)*abb91(21)
      abb91(33)=abb91(148)+abb91(33)
      abb91(33)=spak1k4*abb91(33)
      abb91(35)=abb91(84)*abb91(21)
      abb91(35)=-abb91(136)+abb91(35)
      abb91(35)=abb91(35)*abb91(51)
      abb91(33)=abb91(33)+abb91(35)
      abb91(33)=spal6e7*abb91(33)
      abb91(35)=abb91(128)*abb91(21)
      abb91(35)=abb91(146)+abb91(35)
      abb91(35)=spak1e7*abb91(35)
      abb91(21)=-abb91(103)*abb91(21)
      abb91(21)=abb91(139)+abb91(21)
      abb91(21)=abb91(21)*abb91(60)
      abb91(21)=abb91(35)+abb91(21)
      abb91(21)=spak4l6*abb91(21)
      abb91(35)=-spbk3k1*abb91(121)
      abb91(17)=-abb91(72)*abb91(17)
      abb91(17)=abb91(17)+abb91(35)
      abb91(17)=spak1e7*spbl5k2*abb91(17)
      abb91(35)=abb91(60)*abb91(110)
      abb91(17)=abb91(17)+abb91(35)
      abb91(17)=spak4l5*abb91(17)
      abb91(35)=spak1k4*spbe7k1
      abb91(35)=abb91(35)-abb91(51)
      abb91(35)=spal5e7*abb91(74)*abb91(35)
      abb91(17)=abb91(17)+abb91(35)
      abb91(17)=abb91(5)*abb91(17)
      abb91(17)=abb91(33)+abb91(21)+abb91(17)
      abb91(17)=4.0_ki*abb91(17)
      abb91(21)=-abb91(48)*abb91(51)
      abb91(33)=abb91(34)*spak1k4
      abb91(21)=abb91(21)-abb91(33)
      abb91(21)=abb91(21)*spal6e7
      abb91(35)=abb91(57)*abb91(60)
      abb91(43)=-abb91(44)*spak1e7
      abb91(35)=abb91(35)-abb91(43)
      abb91(35)=abb91(35)*spak4l6
      abb91(21)=abb91(21)-abb91(35)
      abb91(35)=-4.0_ki*abb91(21)
      abb91(49)=abb91(9)*mB
      abb91(34)=abb91(34)*abb91(49)
      abb91(34)=abb91(34)-abb91(23)
      abb91(34)=spak1k4*abb91(34)
      abb91(50)=abb91(48)*abb91(49)
      abb91(22)=abb91(50)+abb91(22)
      abb91(22)=abb91(22)*abb91(51)
      abb91(22)=abb91(34)+abb91(22)
      abb91(22)=spal6e7*abb91(22)
      abb91(34)=abb91(44)*abb91(49)
      abb91(34)=abb91(34)+abb91(39)
      abb91(34)=spak1e7*abb91(34)
      abb91(44)=abb91(57)*abb91(49)
      abb91(38)=abb91(44)-abb91(38)
      abb91(38)=abb91(38)*abb91(60)
      abb91(34)=abb91(34)+abb91(38)
      abb91(34)=spak4l6*abb91(34)
      abb91(38)=abb91(149)+abb91(101)
      abb91(38)=spak1k4*abb91(38)
      abb91(44)=abb91(93)+abb91(135)
      abb91(44)=abb91(44)*abb91(51)
      abb91(38)=abb91(38)+abb91(44)
      abb91(38)=spal5e7*abb91(38)
      abb91(44)=abb91(145)+abb91(143)
      abb91(44)=spak1e7*abb91(44)
      abb91(49)=-abb91(140)-abb91(138)
      abb91(49)=abb91(49)*abb91(60)
      abb91(44)=abb91(44)+abb91(49)
      abb91(44)=spak4l5*abb91(44)
      abb91(22)=abb91(44)+abb91(38)+abb91(22)+abb91(34)
      abb91(22)=4.0_ki*abb91(22)
      abb91(32)=abb91(32)*spak2l6
      abb91(15)=abb91(28)*abb91(15)
      abb91(15)=abb91(32)-abb91(15)
      abb91(15)=abb91(15)*NC
      abb91(18)=abb91(18)*spak2l6
      abb91(18)=abb91(18)-abb91(79)
      abb91(18)=abb91(18)*c4
      abb91(32)=abb91(75)*spak2l6
      abb91(32)=abb91(32)-abb91(77)
      abb91(15)=abb91(40)-abb91(18)-abb91(15)+2.0_ki*abb91(32)
      abb91(18)=-spbk3k2*spak3k4
      abb91(32)=-spbk2k1*spak1k4
      abb91(18)=abb91(32)+abb91(18)
      abb91(18)=abb91(15)*abb91(18)
      abb91(32)=abb91(102)*abb91(78)
      abb91(28)=abb91(28)-abb91(99)
      abb91(28)=abb91(28)*NC
      abb91(13)=abb91(72)*abb91(13)
      abb91(34)=abb91(13)-abb91(116)
      abb91(34)=-abb91(28)+2.0_ki*abb91(34)
      abb91(38)=abb91(4)*abb91(34)
      abb91(40)=abb91(113)*abb91(53)
      abb91(44)=abb91(111)*abb91(19)
      abb91(40)=abb91(40)-abb91(44)
      abb91(40)=abb91(40)*c4
      abb91(32)=abb91(40)+abb91(32)+abb91(38)
      abb91(32)=abb91(32)*abb91(109)
      abb91(38)=abb91(82)*abb91(105)
      abb91(32)=abb91(32)+abb91(38)
      abb91(38)=spbk7k1*abb91(32)
      abb91(40)=abb91(97)*abb91(66)
      abb91(44)=-spal5l6*abb91(87)
      abb91(18)=abb91(44)+abb91(38)+abb91(40)+abb91(18)
      abb91(18)=8.0_ki*abb91(18)
      abb91(38)=abb91(72)*abb91(54)
      abb91(38)=abb91(38)-abb91(122)
      abb91(38)=abb91(38)*c4
      abb91(13)=abb91(37)*abb91(13)
      abb91(13)=abb91(13)-abb91(124)
      abb91(28)=-abb91(37)*abb91(28)
      abb91(13)=-abb91(63)+abb91(28)-abb91(38)+2.0_ki*abb91(13)
      abb91(28)=abb91(13)*spbk3k2
      abb91(37)=spak4e7*abb91(28)
      abb91(38)=-abb91(97)*abb91(95)
      abb91(38)=-abb91(37)+abb91(38)
      abb91(38)=8.0_ki*abb91(38)
      abb91(40)=16.0_ki*abb91(21)
      abb91(21)=8.0_ki*abb91(21)
      abb91(15)=abb91(15)*spbe7k2
      abb91(44)=spak4e7*abb91(15)
      abb91(49)=abb91(61)*spal5l6
      abb91(49)=abb91(49)+abb91(44)
      abb91(49)=8.0_ki*abb91(49)
      abb91(50)=spak3k4*abb91(127)
      abb91(50)=-abb91(66)+abb91(50)
      abb91(50)=spbe7k3*abb91(50)
      abb91(23)=-spak1k4*abb91(23)*abb91(78)
      abb91(23)=abb91(50)+abb91(33)+abb91(23)
      abb91(23)=spal6e7*abb91(23)
      abb91(33)=-spae7k7*abb91(46)
      abb91(29)=abb91(29)+abb91(33)
      abb91(29)=spbk7k3*abb91(29)
      abb91(33)=spak1e7*abb91(39)*abb91(78)
      abb91(29)=abb91(29)-abb91(43)+abb91(33)
      abb91(29)=spak4l6*abb91(29)
      abb91(33)=spak1k4*abb91(92)
      abb91(39)=abb91(91)*abb91(51)
      abb91(33)=abb91(33)+abb91(39)
      abb91(33)=spal6e7*abb91(33)
      abb91(39)=spak1e7*abb91(144)
      abb91(43)=-abb91(125)*abb91(60)
      abb91(39)=abb91(39)+abb91(43)
      abb91(39)=spak4l6*abb91(39)
      abb91(33)=abb91(33)+abb91(39)
      abb91(33)=abb91(10)*abb91(33)
      abb91(23)=abb91(33)+abb91(23)+abb91(29)
      abb91(23)=8.0_ki*abb91(23)
      abb91(29)=spal5l6*abb91(130)
      abb91(29)=abb91(29)+abb91(44)+abb91(37)
      abb91(29)=8.0_ki*abb91(29)
      abb91(33)=abb91(57)*abb91(97)
      abb91(28)=abb91(28)+abb91(33)
      abb91(28)=spak1k4*abb91(28)
      abb91(32)=-spbk7e7*abb91(32)
      abb91(28)=abb91(32)+abb91(28)
      abb91(28)=4.0_ki*abb91(28)
      abb91(32)=-4.0_ki*abb91(36)
      abb91(33)=-abb91(48)*abb91(137)
      abb91(15)=abb91(15)+abb91(33)
      abb91(33)=spak3e7*abb91(15)
      abb91(36)=spbk2k1*spak1e7
      abb91(37)=-spbk7k2*spae7k7
      abb91(36)=abb91(37)+abb91(36)
      abb91(13)=abb91(13)*abb91(36)
      abb91(36)=spal5l6*abb91(41)
      abb91(34)=-abb91(6)*abb91(34)
      abb91(11)=abb91(11)*abb91(72)*abb91(19)
      abb91(11)=abb91(11)-abb91(114)
      abb91(11)=abb91(11)*c4
      abb91(11)=abb91(11)+abb91(34)
      abb91(11)=abb91(11)*spak4e7
      abb91(19)=abb91(25)*abb91(78)
      abb91(11)=abb91(11)+abb91(19)
      abb91(11)=abb91(11)*spbe7k2
      abb91(19)=abb91(20)*spal5l6
      abb91(11)=abb91(11)+abb91(19)
      abb91(19)=spbk4k1*abb91(11)
      abb91(13)=abb91(33)+abb91(19)+abb91(36)+abb91(13)
      abb91(13)=4.0_ki*abb91(13)
      abb91(15)=-spak1e7*abb91(15)
      abb91(11)=-spbk4k3*abb91(11)
      abb91(11)=abb91(11)+abb91(15)
      abb91(11)=4.0_ki*abb91(11)
      R2d91=0.0_ki
      rat2 = rat2 + R2d91
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='91' value='", &
          & R2d91, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd91h1
