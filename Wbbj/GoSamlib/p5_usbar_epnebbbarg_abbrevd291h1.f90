module     p5_usbar_epnebbbarg_abbrevd291h1
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(194), public :: abb291
   complex(ki), public :: R2d291
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p5_usbar_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_color, only: TR
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb291(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb291(2)=NC**(-1)
      abb291(3)=spak2l5**(-1)
      abb291(4)=spbl6k2**(-1)
      abb291(5)=spbl5k2**(-1)
      abb291(6)=sqrt(mB**2)
      abb291(7)=spak2l6**(-1)
      abb291(8)=TR*gW
      abb291(8)=abb291(8)**2
      abb291(9)=i_*CVSU
      abb291(10)=abb291(8)*abb291(9)*abb291(2)*abb291(1)
      abb291(11)=abb291(10)*c3
      abb291(10)=abb291(10)*c1
      abb291(12)=abb291(11)+abb291(10)
      abb291(13)=spbe7k1*spbl5k1
      abb291(14)=abb291(13)*abb291(12)
      abb291(15)=mB**2
      abb291(16)=abb291(15)*abb291(4)
      abb291(17)=-abb291(16)*abb291(14)
      abb291(18)=c4*abb291(1)
      abb291(19)=abb291(2)**2
      abb291(20)=abb291(19)*abb291(18)
      abb291(21)=abb291(15)*abb291(9)
      abb291(22)=abb291(20)*abb291(21)
      abb291(23)=abb291(8)*abb291(4)
      abb291(24)=abb291(22)*abb291(23)
      abb291(25)=abb291(24)*abb291(13)
      abb291(17)=abb291(25)+abb291(17)
      abb291(25)=-spbk3k1*abb291(17)
      abb291(26)=abb291(4)*abb291(12)
      abb291(27)=mB*abb291(26)
      abb291(18)=abb291(18)*abb291(19)*abb291(8)
      abb291(19)=abb291(18)*mB
      abb291(28)=abb291(9)*abb291(4)
      abb291(29)=abb291(19)*abb291(28)
      abb291(27)=abb291(27)-abb291(29)
      abb291(30)=-abb291(13)*abb291(27)
      abb291(31)=abb291(6)*spbk3k1
      abb291(32)=abb291(30)*abb291(31)
      abb291(25)=abb291(25)+abb291(32)
      abb291(32)=spak1k2*spak1e7
      abb291(25)=abb291(25)*abb291(32)
      abb291(30)=abb291(30)*abb291(6)
      abb291(30)=abb291(30)-abb291(17)
      abb291(33)=abb291(30)*spak1k2
      abb291(34)=spbk7k3*spae7k7
      abb291(35)=-abb291(34)*abb291(33)
      abb291(25)=abb291(25)+abb291(35)
      abb291(35)=spbl5k2*spak4l5
      abb291(25)=abb291(25)*abb291(35)
      abb291(36)=abb291(18)*abb291(9)
      abb291(37)=spbl5k1*abb291(36)
      abb291(38)=abb291(37)*spbe7k1
      abb291(38)=abb291(14)-abb291(38)
      abb291(39)=abb291(38)*spak2l6
      abb291(40)=abb291(39)+abb291(17)
      abb291(40)=-spbl5k2*abb291(40)
      abb291(8)=abb291(22)*abb291(8)*abb291(3)
      abb291(22)=abb291(15)*abb291(3)
      abb291(10)=abb291(22)*abb291(10)
      abb291(11)=abb291(22)*abb291(11)
      abb291(10)=-abb291(11)+abb291(8)-abb291(10)
      abb291(11)=-abb291(13)*abb291(10)
      abb291(41)=abb291(11)*spak2l6
      abb291(40)=abb291(40)+abb291(41)
      abb291(42)=abb291(34)*spak2k4
      abb291(43)=spbk3k1*spak2k4
      abb291(44)=abb291(43)*spak1e7
      abb291(42)=abb291(42)-abb291(44)
      abb291(40)=abb291(42)*abb291(40)
      abb291(44)=spak1e7*spbk3k1
      abb291(45)=spak4l6*spak2l6
      abb291(46)=abb291(45)*abb291(44)
      abb291(47)=abb291(34)*spak4l6
      abb291(48)=abb291(47)*spak2l6
      abb291(48)=abb291(48)-abb291(46)
      abb291(49)=abb291(48)*spbl6l5
      abb291(50)=abb291(38)*abb291(49)
      abb291(40)=abb291(50)+abb291(40)
      abb291(40)=spak1l5*abb291(40)
      abb291(21)=abb291(18)*abb291(21)
      abb291(50)=abb291(21)*abb291(13)
      abb291(51)=abb291(14)*abb291(15)
      abb291(50)=abb291(50)-abb291(51)
      abb291(51)=-spbk3k1*abb291(50)
      abb291(52)=spbe7k1*mB
      abb291(53)=abb291(37)*abb291(52)
      abb291(54)=abb291(14)*mB
      abb291(53)=abb291(53)-abb291(54)
      abb291(54)=abb291(53)*abb291(31)
      abb291(51)=abb291(51)+abb291(54)
      abb291(51)=spak4l6*abb291(51)*abb291(32)
      abb291(53)=-abb291(6)*abb291(53)
      abb291(50)=abb291(53)+abb291(50)
      abb291(50)=spak1k2*abb291(50)*abb291(47)
      abb291(53)=abb291(9)*abb291(3)
      abb291(54)=abb291(19)*abb291(53)
      abb291(55)=abb291(54)*abb291(13)
      abb291(56)=abb291(3)*mB
      abb291(14)=abb291(14)*abb291(56)
      abb291(14)=abb291(55)-abb291(14)
      abb291(55)=abb291(6)*spak2l6
      abb291(14)=abb291(14)*abb291(55)
      abb291(14)=abb291(14)+abb291(41)
      abb291(41)=-abb291(32)*spbk3k1
      abb291(57)=spak1k2*abb291(34)
      abb291(41)=abb291(41)+abb291(57)
      abb291(14)=spak4l5*abb291(14)*abb291(41)
      abb291(41)=spbe7k1*abb291(12)
      abb291(57)=abb291(56)*abb291(41)
      abb291(58)=abb291(18)*abb291(53)
      abb291(59)=abb291(58)*abb291(52)
      abb291(57)=abb291(57)-abb291(59)
      abb291(59)=abb291(57)*spak2l6
      abb291(60)=mB**3
      abb291(20)=abb291(60)*abb291(20)*abb291(23)*abb291(53)
      abb291(23)=abb291(20)*spbe7k1
      abb291(53)=abb291(60)*abb291(3)
      abb291(61)=abb291(41)*abb291(53)*abb291(4)
      abb291(23)=abb291(61)-abb291(59)-abb291(23)
      abb291(23)=abb291(42)*abb291(23)*abb291(6)
      abb291(9)=abb291(9)*spbe7k1
      abb291(59)=abb291(18)*abb291(9)
      abb291(59)=abb291(41)-abb291(59)
      abb291(61)=abb291(3)**2
      abb291(60)=abb291(55)*abb291(61)*abb291(60)
      abb291(62)=abb291(42)*abb291(5)
      abb291(63)=abb291(59)*abb291(62)*abb291(60)
      abb291(23)=abb291(63)+abb291(23)
      abb291(63)=es12*abb291(23)
      abb291(64)=abb291(11)*spak1k2
      abb291(65)=spbl6k2*abb291(5)
      abb291(66)=abb291(65)*abb291(64)*abb291(48)
      abb291(57)=abb291(57)*abb291(55)
      abb291(67)=abb291(57)*spak1k2
      abb291(68)=abb291(44)*spak4l6
      abb291(68)=abb291(68)-abb291(47)
      abb291(69)=abb291(68)*spbl6k1
      abb291(70)=abb291(67)*abb291(69)
      abb291(14)=abb291(70)+abb291(66)+abb291(63)+abb291(25)+abb291(14)+abb291(&
      &51)+abb291(50)+abb291(40)
      abb291(14)=4.0_ki*abb291(14)
      abb291(25)=spbl5k1*abb291(12)
      abb291(40)=abb291(15)*abb291(25)
      abb291(50)=abb291(21)*spbl5k1
      abb291(40)=-abb291(50)+abb291(40)
      abb291(50)=spbk3k1*abb291(40)
      abb291(37)=abb291(37)-abb291(25)
      abb291(51)=-mB*abb291(37)
      abb291(63)=-abb291(51)*abb291(31)
      abb291(50)=abb291(50)+abb291(63)
      abb291(50)=spak4l6*abb291(50)
      abb291(63)=abb291(56)*abb291(25)
      abb291(66)=abb291(54)*spbl5k1
      abb291(63)=abb291(63)-abb291(66)
      abb291(63)=abb291(63)*abb291(55)
      abb291(66)=abb291(22)*abb291(25)
      abb291(70)=abb291(8)*spbl5k1
      abb291(66)=abb291(66)-abb291(70)
      abb291(70)=abb291(66)*spak2l6
      abb291(71)=abb291(63)-abb291(70)
      abb291(72)=spak4l5*spbk3k1
      abb291(73)=abb291(71)*abb291(72)
      abb291(74)=abb291(16)*abb291(25)
      abb291(75)=abb291(24)*spbl5k1
      abb291(74)=abb291(74)-abb291(75)
      abb291(75)=spbk3k1*abb291(74)
      abb291(76)=abb291(4)*mB
      abb291(77)=abb291(76)*abb291(25)
      abb291(29)=abb291(29)*spbl5k1
      abb291(29)=abb291(77)-abb291(29)
      abb291(77)=-abb291(29)*abb291(31)
      abb291(75)=abb291(75)+abb291(77)
      abb291(75)=abb291(75)*abb291(35)
      abb291(50)=abb291(75)+abb291(50)+abb291(73)
      abb291(50)=spak1k2*abb291(50)
      abb291(73)=abb291(37)*spak2l6
      abb291(75)=abb291(73)+abb291(74)
      abb291(77)=abb291(75)*spbl5k2
      abb291(77)=abb291(77)+abb291(70)
      abb291(78)=-abb291(43)*abb291(77)
      abb291(79)=spbk7k1*spak4k7
      abb291(80)=spbl5k3*spak2l6
      abb291(81)=abb291(79)*abb291(80)
      abb291(82)=-abb291(37)*abb291(81)
      abb291(83)=abb291(45)*spbl6l5
      abb291(84)=abb291(83)*abb291(37)
      abb291(85)=spbk3k1*abb291(84)
      abb291(78)=abb291(85)+abb291(82)+abb291(78)
      abb291(78)=spak1l5*abb291(78)
      abb291(56)=abb291(56)*abb291(12)
      abb291(54)=-abb291(54)+abb291(56)
      abb291(56)=abb291(54)*abb291(55)
      abb291(82)=abb291(56)*spak4l6
      abb291(85)=abb291(82)*spbl6k1
      abb291(86)=abb291(5)*spak2l6
      abb291(87)=abb291(66)*abb291(86)
      abb291(88)=abb291(87)*spbl6k2
      abb291(89)=-spak4l6*abb291(88)
      abb291(89)=abb291(85)+abb291(89)
      abb291(90)=spak1k2*spbk3k1
      abb291(89)=abb291(90)*abb291(89)
      abb291(91)=abb291(54)*spak2l6
      abb291(53)=abb291(53)*abb291(26)
      abb291(20)=-abb291(91)-abb291(20)+abb291(53)
      abb291(20)=abb291(20)*abb291(6)
      abb291(53)=abb291(20)*abb291(43)
      abb291(36)=abb291(12)-abb291(36)
      abb291(60)=abb291(36)*abb291(60)
      abb291(91)=abb291(43)*abb291(5)
      abb291(92)=abb291(60)*abb291(91)
      abb291(53)=abb291(53)+abb291(92)
      abb291(93)=-es12*abb291(53)
      abb291(29)=abb291(29)*abb291(6)
      abb291(29)=abb291(29)-abb291(74)
      abb291(94)=abb291(29)+abb291(87)
      abb291(95)=-spbk3k2*spak1k2*abb291(94)
      abb291(96)=abb291(90)*abb291(56)
      abb291(95)=abb291(96)+abb291(95)
      abb291(95)=abb291(95)*abb291(79)
      abb291(50)=abb291(95)+abb291(93)+abb291(50)+abb291(89)+abb291(78)
      abb291(50)=8.0_ki*abb291(50)
      abb291(78)=abb291(11)*abb291(86)
      abb291(89)=abb291(78)*spak1k2
      abb291(33)=abb291(89)-abb291(33)
      abb291(89)=spbk3k2*spak4e7
      abb291(93)=abb291(33)*abb291(89)
      abb291(95)=spak1l5*abb291(80)*abb291(38)*spak4e7
      abb291(96)=abb291(57)*spak4e7
      abb291(97)=abb291(96)*abb291(90)
      abb291(93)=abb291(93)-abb291(95)-abb291(97)
      abb291(95)=8.0_ki*abb291(93)
      abb291(97)=abb291(38)*spak1k2
      abb291(98)=-8.0_ki*abb291(97)*abb291(68)
      abb291(99)=16.0_ki*abb291(37)
      abb291(100)=spak4l6*abb291(90)*abb291(99)
      abb291(101)=-abb291(59)*spak2l6
      abb291(102)=abb291(16)*abb291(41)
      abb291(103)=abb291(24)*spbe7k1
      abb291(102)=abb291(102)-abb291(103)
      abb291(103)=abb291(101)+abb291(102)
      abb291(103)=spbl5k2*abb291(103)
      abb291(104)=abb291(22)*abb291(41)
      abb291(105)=abb291(8)*spbe7k1
      abb291(104)=abb291(104)-abb291(105)
      abb291(105)=abb291(104)*spak2l6
      abb291(103)=abb291(103)+abb291(105)
      abb291(103)=abb291(42)*abb291(103)
      abb291(49)=abb291(59)*abb291(49)
      abb291(49)=abb291(49)+abb291(103)
      abb291(49)=8.0_ki*abb291(49)
      abb291(103)=abb291(36)*spak2l6
      abb291(16)=abb291(16)*abb291(12)
      abb291(16)=abb291(16)-abb291(24)
      abb291(24)=abb291(103)-abb291(16)
      abb291(103)=abb291(24)*spbl5k2
      abb291(106)=abb291(10)*spak2l6
      abb291(103)=abb291(103)+abb291(106)
      abb291(107)=abb291(43)*abb291(103)
      abb291(83)=-spbk3k1*abb291(83)
      abb291(81)=abb291(83)+abb291(81)
      abb291(81)=abb291(36)*abb291(81)
      abb291(81)=abb291(81)+abb291(107)
      abb291(81)=16.0_ki*abb291(81)
      abb291(83)=16.0_ki*spak4e7
      abb291(83)=-abb291(83)*abb291(59)*abb291(80)
      abb291(107)=abb291(42)*abb291(7)
      abb291(17)=abb291(107)*abb291(17)
      abb291(108)=-abb291(38)*abb291(42)
      abb291(11)=abb291(11)*abb291(62)
      abb291(11)=-abb291(17)+abb291(11)+abb291(108)
      abb291(11)=spak1l6*abb291(11)
      abb291(22)=abb291(22)*abb291(4)
      abb291(108)=abb291(22)*abb291(12)
      abb291(8)=abb291(8)*abb291(4)
      abb291(108)=abb291(108)-abb291(8)
      abb291(109)=abb291(44)-abb291(34)
      abb291(110)=abb291(109)*spak4l5
      abb291(111)=abb291(110)*abb291(108)
      abb291(13)=spak1k2*abb291(13)*abb291(111)
      abb291(112)=abb291(22)*abb291(41)
      abb291(113)=abb291(8)*spbe7k1
      abb291(112)=abb291(112)-abb291(113)
      abb291(113)=abb291(112)*spak1k2
      abb291(69)=abb291(113)*abb291(69)
      abb291(11)=abb291(69)+abb291(11)+abb291(13)+abb291(23)
      abb291(11)=8.0_ki*abb291(11)
      abb291(13)=abb291(108)*spak4l6
      abb291(23)=abb291(13)*spbl6k1
      abb291(22)=abb291(22)*abb291(25)
      abb291(8)=abb291(8)*spbl5k1
      abb291(8)=-abb291(8)+abb291(22)
      abb291(22)=spak4l5*abb291(8)
      abb291(25)=abb291(108)*abb291(79)
      abb291(22)=abb291(23)+abb291(25)+abb291(22)
      abb291(22)=abb291(90)*abb291(22)
      abb291(25)=abb291(74)*abb291(7)
      abb291(25)=abb291(25)+abb291(37)
      abb291(69)=-abb291(43)*abb291(25)
      abb291(114)=abb291(91)*abb291(66)
      abb291(69)=-abb291(114)+abb291(69)
      abb291(69)=spak1l6*abb291(69)
      abb291(22)=abb291(69)+abb291(22)-abb291(53)
      abb291(22)=16.0_ki*abb291(22)
      abb291(53)=abb291(112)*spak4e7
      abb291(69)=abb291(53)*abb291(90)
      abb291(115)=-16.0_ki*abb291(69)
      abb291(116)=spbe7k3*spak2k4
      abb291(77)=abb291(116)*abb291(77)
      abb291(117)=spbk7e7*spak4k7
      abb291(118)=abb291(117)*abb291(37)
      abb291(119)=abb291(118)*abb291(80)
      abb291(84)=abb291(84)*spbe7k3
      abb291(120)=abb291(38)*spak1k4
      abb291(121)=abb291(120)*abb291(80)
      abb291(77)=-abb291(84)-abb291(119)-abb291(121)+abb291(77)
      abb291(77)=abb291(77)*spal5e7
      abb291(77)=abb291(77)-abb291(93)
      abb291(84)=abb291(29)*spbl5k2
      abb291(93)=abb291(84)+abb291(70)
      abb291(119)=spak2e7*spbe7k3
      abb291(122)=abb291(119)*spak4l5
      abb291(93)=abb291(122)*abb291(93)
      abb291(51)=abb291(51)*abb291(6)
      abb291(40)=abb291(51)-abb291(40)
      abb291(51)=abb291(40)+abb291(88)
      abb291(88)=abb291(119)*spak4l6
      abb291(123)=abb291(88)*abb291(51)
      abb291(124)=abb291(82)*spbe7l6
      abb291(125)=spbe7l5*spak4l5
      abb291(126)=abb291(125)*abb291(56)
      abb291(124)=abb291(124)+abb291(126)
      abb291(127)=spak2e7*spbk3k1
      abb291(128)=-abb291(127)*abb291(124)
      abb291(30)=abb291(30)-abb291(78)
      abb291(78)=abb291(30)*spak2e7
      abb291(129)=spak1k4*spbk3k2
      abb291(130)=-abb291(78)*abb291(129)
      abb291(131)=abb291(94)*spak2e7
      abb291(132)=abb291(117)*spbk3k2
      abb291(133)=-abb291(131)*abb291(132)
      abb291(93)=abb291(133)+abb291(130)+abb291(128)+abb291(123)+abb291(93)+abb&
      &291(77)
      abb291(93)=8.0_ki*abb291(93)
      abb291(123)=16.0_ki*abb291(43)*abb291(56)
      abb291(99)=-abb291(88)*abb291(99)
      abb291(128)=abb291(25)*abb291(116)
      abb291(130)=abb291(116)*abb291(5)
      abb291(66)=abb291(130)*abb291(66)
      abb291(128)=abb291(128)+abb291(66)
      abb291(128)=abb291(128)*spal6e7
      abb291(69)=abb291(128)+abb291(69)
      abb291(128)=mB**4
      abb291(133)=abb291(128)*abb291(4)**2
      abb291(134)=-abb291(12)*abb291(133)*abb291(3)
      abb291(58)=abb291(133)*abb291(58)
      abb291(58)=abb291(58)+abb291(134)
      abb291(133)=abb291(58)*abb291(7)
      abb291(133)=abb291(108)+abb291(133)
      abb291(134)=abb291(116)*spak2e7
      abb291(135)=abb291(134)*abb291(133)
      abb291(18)=abb291(18)*abb291(28)
      abb291(26)=-abb291(18)+abb291(26)
      abb291(26)=abb291(26)*abb291(128)*abb291(61)
      abb291(28)=abb291(26)*abb291(130)
      abb291(61)=-spak2e7*abb291(28)
      abb291(61)=abb291(61)+abb291(135)
      abb291(61)=spbk2k1*abb291(61)
      abb291(128)=abb291(13)*spbe7l6
      abb291(135)=abb291(125)*abb291(108)
      abb291(128)=abb291(128)+abb291(135)
      abb291(136)=-abb291(127)*abb291(128)
      abb291(61)=abb291(136)+abb291(61)+abb291(69)
      abb291(61)=16.0_ki*abb291(61)
      abb291(136)=32.0_ki*abb291(108)*abb291(43)
      abb291(71)=abb291(84)-abb291(71)
      abb291(71)=abb291(122)*abb291(71)
      abb291(84)=-spbl6k1*abb291(56)
      abb291(51)=abb291(84)+abb291(51)
      abb291(51)=abb291(88)*abb291(51)
      abb291(84)=abb291(134)*abb291(20)
      abb291(130)=abb291(60)*abb291(130)
      abb291(137)=spak2e7*abb291(130)
      abb291(84)=abb291(84)+abb291(137)
      abb291(84)=spbk2k1*abb291(84)
      abb291(78)=-spbk3k2*abb291(78)
      abb291(137)=-abb291(57)*abb291(127)
      abb291(78)=abb291(137)+abb291(78)
      abb291(78)=spak1k4*abb291(78)
      abb291(131)=-spbk3k2*abb291(131)
      abb291(137)=abb291(56)*abb291(127)
      abb291(131)=abb291(137)+abb291(131)
      abb291(131)=abb291(131)*abb291(117)
      abb291(51)=abb291(131)+abb291(78)+abb291(84)+abb291(51)+abb291(71)+abb291&
      &(77)
      abb291(51)=4.0_ki*abb291(51)
      abb291(71)=8.0_ki*abb291(37)
      abb291(77)=-abb291(88)*abb291(71)
      abb291(78)=8.0_ki*spak4e7
      abb291(84)=-abb291(78)*abb291(59)
      abb291(131)=-abb291(80)*abb291(84)
      abb291(137)=abb291(108)*abb291(117)
      abb291(138)=abb291(112)*spak1k4
      abb291(137)=abb291(137)-abb291(138)
      abb291(127)=abb291(127)*abb291(137)
      abb291(139)=-abb291(8)*abb291(122)
      abb291(140)=-abb291(119)*abb291(23)
      abb291(69)=abb291(140)+abb291(139)+abb291(127)+abb291(69)
      abb291(69)=8.0_ki*abb291(69)
      abb291(127)=spak1k4*abb291(57)
      abb291(139)=-abb291(56)*abb291(117)
      abb291(127)=abb291(139)+abb291(127)-abb291(126)
      abb291(127)=abb291(90)*abb291(127)
      abb291(139)=spak4l5*spbe7k3
      abb291(63)=abb291(139)*abb291(63)
      abb291(85)=spbe7k3*abb291(85)
      abb291(63)=abb291(85)+abb291(63)
      abb291(63)=spak1k2*abb291(63)
      abb291(85)=-abb291(116)*abb291(20)
      abb291(85)=abb291(85)-abb291(130)
      abb291(85)=es12*abb291(85)
      abb291(130)=abb291(43)*spak1k2
      abb291(140)=abb291(130)*abb291(20)
      abb291(92)=spak1k2*abb291(92)
      abb291(92)=abb291(140)+abb291(92)
      abb291(92)=spbe7k2*abb291(92)
      abb291(140)=-abb291(5)*abb291(60)
      abb291(140)=-abb291(20)+abb291(140)
      abb291(141)=spbk7k3*spak2k4
      abb291(142)=abb291(141)*spbe7k2
      abb291(140)=abb291(140)*abb291(142)
      abb291(126)=spbk7k3*abb291(126)
      abb291(126)=abb291(126)+abb291(140)
      abb291(126)=spak2k7*abb291(126)
      abb291(140)=spak2k7*spbk7k3
      abb291(140)=abb291(140)-abb291(90)
      abb291(143)=abb291(140)*spbe7l6
      abb291(144)=abb291(82)*abb291(143)
      abb291(63)=abb291(144)+abb291(126)+abb291(92)+abb291(85)+abb291(127)+abb2&
      &91(63)
      abb291(63)=4.0_ki*abb291(63)
      abb291(85)=8.0_ki*abb291(56)
      abb291(92)=abb291(85)*abb291(116)
      abb291(8)=abb291(8)*abb291(139)
      abb291(23)=spbe7k3*abb291(23)
      abb291(8)=abb291(23)+abb291(8)
      abb291(8)=spak1k2*abb291(8)
      abb291(23)=abb291(116)*abb291(133)
      abb291(23)=-abb291(28)+abb291(23)
      abb291(23)=es12*abb291(23)
      abb291(126)=-abb291(135)-abb291(137)
      abb291(126)=abb291(90)*abb291(126)
      abb291(127)=-abb291(130)*abb291(133)
      abb291(137)=abb291(26)*abb291(91)*spak1k2
      abb291(127)=abb291(137)+abb291(127)
      abb291(127)=spbe7k2*abb291(127)
      abb291(137)=-abb291(5)*abb291(26)
      abb291(137)=abb291(137)+abb291(133)
      abb291(137)=abb291(137)*abb291(142)
      abb291(135)=spbk7k3*abb291(135)
      abb291(135)=abb291(135)+abb291(137)
      abb291(135)=spak2k7*abb291(135)
      abb291(137)=abb291(13)*abb291(143)
      abb291(8)=abb291(137)+abb291(135)+abb291(127)+abb291(126)+abb291(23)+abb2&
      &91(8)
      abb291(8)=8.0_ki*abb291(8)
      abb291(23)=16.0_ki*abb291(108)
      abb291(126)=abb291(23)*abb291(116)
      abb291(127)=4.0_ki*abb291(56)
      abb291(135)=abb291(116)*abb291(127)
      abb291(137)=8.0_ki*abb291(108)
      abb291(142)=abb291(116)*abb291(137)
      abb291(143)=spak2e7*spbk7k3
      abb291(124)=-4.0_ki*abb291(143)*abb291(124)
      abb291(144)=abb291(141)*abb291(85)
      abb291(128)=-8.0_ki*abb291(143)*abb291(128)
      abb291(141)=abb291(141)*abb291(23)
      abb291(143)=-4.0_ki*abb291(97)*abb291(110)
      abb291(90)=spak4l5*abb291(90)*abb291(71)
      abb291(145)=abb291(102)*abb291(107)
      abb291(146)=abb291(104)*abb291(62)
      abb291(147)=-abb291(59)*abb291(42)
      abb291(145)=abb291(147)+abb291(145)+abb291(146)
      abb291(146)=8.0_ki*abb291(145)
      abb291(147)=abb291(16)*abb291(7)
      abb291(148)=abb291(36)-abb291(147)
      abb291(43)=abb291(148)*abb291(43)
      abb291(91)=abb291(91)*abb291(10)
      abb291(43)=abb291(43)+abb291(91)
      abb291(91)=16.0_ki*abb291(43)
      abb291(148)=-abb291(122)*abb291(71)
      abb291(149)=-4.0_ki*abb291(37)*abb291(122)
      abb291(71)=abb291(71)*spak1k2
      abb291(150)=abb291(79)*abb291(71)
      abb291(151)=abb291(78)*abb291(97)
      abb291(118)=abb291(118)+abb291(120)
      abb291(152)=abb291(118)*spak2e7
      abb291(153)=abb291(97)*spak4e7
      abb291(152)=abb291(153)-abb291(152)
      abb291(153)=-8.0_ki*abb291(152)
      abb291(152)=-4.0_ki*abb291(152)
      abb291(154)=abb291(97)*abb291(42)
      abb291(64)=-abb291(64)*abb291(62)
      abb291(17)=spak1k2*abb291(17)
      abb291(17)=abb291(17)+abb291(64)+abb291(154)
      abb291(17)=4.0_ki*abb291(17)
      abb291(64)=abb291(130)*abb291(25)
      abb291(114)=spak1k2*abb291(114)
      abb291(64)=abb291(114)+abb291(64)
      abb291(64)=8.0_ki*abb291(64)
      abb291(25)=abb291(25)*abb291(134)
      abb291(114)=abb291(66)*spak2e7
      abb291(25)=abb291(114)+abb291(25)
      abb291(114)=-8.0_ki*abb291(25)
      abb291(25)=-4.0_ki*abb291(25)
      abb291(130)=spbl6k3*spak2k4
      abb291(134)=-abb291(85)*abb291(130)
      abb291(154)=abb291(42)*spbe7l5
      abb291(155)=abb291(16)*abb291(154)
      abb291(156)=abb291(116)*spak1e7
      abb291(74)=abb291(156)*abb291(74)
      abb291(74)=abb291(155)+abb291(74)
      abb291(74)=abb291(74)*abb291(7)
      abb291(155)=abb291(10)*abb291(62)
      abb291(157)=abb291(36)*abb291(42)
      abb291(155)=abb291(155)+abb291(157)
      abb291(155)=abb291(155)*spbe7l5
      abb291(157)=abb291(37)*spak1e7
      abb291(116)=abb291(157)*abb291(116)
      abb291(66)=abb291(66)*spak1e7
      abb291(66)=abb291(116)+abb291(66)+abb291(74)-abb291(155)
      abb291(74)=-8.0_ki*abb291(66)
      abb291(116)=abb291(36)*spak2k4
      abb291(155)=abb291(5)*spak2k4
      abb291(158)=abb291(155)*abb291(10)
      abb291(116)=abb291(116)+abb291(158)
      abb291(116)=abb291(116)*spbl5k3
      abb291(158)=spbl5k3*spak2k4
      abb291(147)=abb291(158)*abb291(147)
      abb291(116)=abb291(116)-abb291(147)
      abb291(130)=-abb291(108)*abb291(130)
      abb291(130)=abb291(130)+abb291(116)
      abb291(130)=16.0_ki*abb291(130)
      abb291(75)=-abb291(75)*abb291(156)
      abb291(24)=abb291(24)*abb291(154)
      abb291(24)=abb291(75)+abb291(24)
      abb291(24)=spbl5k2*abb291(24)
      abb291(45)=spbe7k3*abb291(45)*abb291(157)
      abb291(75)=abb291(36)*spbe7l5
      abb291(48)=-abb291(48)*abb291(75)
      abb291(45)=abb291(45)+abb291(48)
      abb291(45)=spbl6l5*abb291(45)
      abb291(48)=-abb291(70)*abb291(156)
      abb291(147)=abb291(106)*abb291(154)
      abb291(121)=spak1e7*abb291(121)
      abb291(154)=abb291(157)*abb291(117)
      abb291(159)=abb291(80)*abb291(154)
      abb291(24)=abb291(45)+abb291(159)+abb291(121)+abb291(24)+abb291(48)+abb29&
      &1(147)
      abb291(24)=4.0_ki*abb291(24)
      abb291(45)=abb291(37)*spak1k4
      abb291(48)=spbk7l5*spak4k7
      abb291(121)=abb291(48)*abb291(36)
      abb291(45)=abb291(45)+abb291(121)
      abb291(121)=abb291(36)*spak4l6
      abb291(147)=-spbl6l5*abb291(121)
      abb291(147)=abb291(147)-abb291(45)
      abb291(147)=abb291(80)*abb291(147)
      abb291(103)=-abb291(56)+abb291(103)
      abb291(103)=abb291(103)*abb291(158)
      abb291(103)=abb291(103)+abb291(147)
      abb291(103)=8.0_ki*abb291(103)
      abb291(147)=abb291(75)*abb291(78)
      abb291(159)=abb291(147)*abb291(80)
      abb291(158)=-abb291(23)*abb291(158)
      abb291(160)=4.0_ki*spak4e7
      abb291(161)=abb291(160)*abb291(75)
      abb291(80)=-abb291(80)*abb291(161)
      abb291(30)=abb291(30)*spak1e7
      abb291(162)=es12*abb291(30)
      abb291(163)=spbk7k2*spae7k7
      abb291(33)=abb291(33)*abb291(163)
      abb291(164)=spbl5k1**2
      abb291(165)=-abb291(59)*abb291(164)
      abb291(32)=abb291(165)*abb291(32)
      abb291(166)=spbk7l5*spae7k7
      abb291(167)=abb291(97)*abb291(166)
      abb291(32)=abb291(32)+abb291(167)
      abb291(32)=spal5l6*abb291(32)
      abb291(165)=spak1l6*spak1e7*abb291(165)
      abb291(38)=abb291(38)*spak1l6
      abb291(167)=abb291(38)*abb291(166)
      abb291(165)=abb291(165)+abb291(167)
      abb291(165)=spak2l5*abb291(165)
      abb291(167)=spbk7k1*spae7k7
      abb291(168)=-abb291(67)*abb291(167)
      abb291(32)=abb291(165)+abb291(32)+abb291(33)+abb291(162)+abb291(168)
      abb291(32)=4.0_ki*abb291(32)
      abb291(33)=-es12*abb291(94)
      abb291(162)=-spal5l6*spak1k2
      abb291(165)=-spak2l5*spak1l6
      abb291(162)=abb291(165)+abb291(162)
      abb291(162)=abb291(162)*abb291(36)*abb291(164)
      abb291(33)=abb291(33)+abb291(162)
      abb291(33)=8.0_ki*abb291(33)
      abb291(39)=-spak1e7*abb291(39)
      abb291(101)=-abb291(101)*abb291(166)
      abb291(39)=abb291(39)+abb291(101)
      abb291(39)=8.0_ki*abb291(39)
      abb291(73)=16.0_ki*abb291(73)
      abb291(101)=-8.0_ki*abb291(113)*abb291(167)
      abb291(162)=abb291(37)*spal6e7
      abb291(164)=abb291(162)*spak2l5
      abb291(165)=abb291(37)*spak2e7
      abb291(166)=abb291(165)*spal5l6
      abb291(164)=abb291(164)+abb291(166)
      abb291(164)=abb291(164)*spbe7l5
      abb291(166)=abb291(57)*spak2e7
      abb291(167)=abb291(166)-abb291(164)
      abb291(167)=8.0_ki*abb291(167)
      abb291(168)=abb291(112)*spak2e7
      abb291(169)=16.0_ki*abb291(168)
      abb291(164)=-abb291(166)-abb291(164)
      abb291(164)=4.0_ki*abb291(164)
      abb291(166)=-8.0_ki*abb291(168)
      abb291(168)=-8.0_ki*abb291(165)
      abb291(165)=-4.0_ki*abb291(165)
      abb291(170)=abb291(108)*spbk2k1
      abb291(171)=abb291(170)*spak2e7
      abb291(172)=abb291(171)+abb291(162)
      abb291(173)=8.0_ki*abb291(172)
      abb291(172)=4.0_ki*abb291(172)
      abb291(174)=spak2k7*spbk7e7
      abb291(175)=-abb291(56)*abb291(174)
      abb291(67)=2.0_ki*abb291(67)+abb291(175)
      abb291(67)=4.0_ki*abb291(67)
      abb291(174)=-abb291(108)*abb291(174)
      abb291(113)=2.0_ki*abb291(113)+abb291(174)
      abb291(113)=8.0_ki*abb291(113)
      abb291(174)=spbk7e7*spak2e7
      abb291(175)=abb291(127)*abb291(174)
      abb291(174)=abb291(137)*abb291(174)
      abb291(176)=4.0_ki*spae7k7
      abb291(177)=abb291(97)*abb291(176)
      abb291(178)=4.0_ki*spak1e7
      abb291(97)=abb291(97)*abb291(178)
      abb291(179)=4.0_ki*abb291(157)
      abb291(180)=abb291(176)*abb291(75)
      abb291(181)=-spbk7l5*spak2l6*abb291(180)
      abb291(182)=-abb291(56)*abb291(140)
      abb291(183)=mB*abb291(36)
      abb291(55)=spbl5k3*abb291(183)*abb291(55)
      abb291(54)=spbl6k3*abb291(6)*abb291(54)*spak2l6**2
      abb291(54)=abb291(54)+abb291(55)+abb291(182)
      abb291(54)=8.0_ki*abb291(54)
      abb291(55)=abb291(85)*abb291(119)
      abb291(85)=spbl6k3*spak2l6
      abb291(85)=abb291(85)-abb291(140)
      abb291(85)=abb291(108)*abb291(85)
      abb291(140)=spbl5k3*abb291(16)
      abb291(85)=abb291(140)+abb291(85)
      abb291(85)=16.0_ki*abb291(85)
      abb291(140)=abb291(23)*abb291(119)
      abb291(127)=-abb291(119)*abb291(127)
      abb291(119)=-abb291(119)*abb291(137)
      abb291(112)=abb291(112)*es12
      abb291(112)=abb291(38)-abb291(112)
      abb291(182)=abb291(112)+abb291(57)
      abb291(184)=-abb291(182)*abb291(176)
      abb291(185)=-abb291(59)*abb291(176)
      abb291(186)=4.0_ki*abb291(68)*abb291(182)
      abb291(187)=-es12*abb291(13)
      abb291(37)=abb291(37)*spak1l6
      abb291(188)=-spak4l6*abb291(37)
      abb291(82)=abb291(188)+abb291(82)+abb291(187)
      abb291(82)=8.0_ki*spbk3k1*abb291(82)
      abb291(88)=abb291(88)*abb291(170)
      abb291(187)=spbe7k3*spak4l6
      abb291(188)=abb291(187)*abb291(162)
      abb291(88)=abb291(88)+abb291(188)
      abb291(188)=8.0_ki*abb291(88)
      abb291(88)=4.0_ki*abb291(88)
      abb291(189)=-abb291(59)*abb291(68)
      abb291(190)=-4.0_ki*abb291(189)
      abb291(191)=8.0_ki*abb291(36)
      abb291(192)=spak4l6*spbk3k1*abb291(191)
      abb291(68)=abb291(68)*abb291(75)
      abb291(75)=abb291(187)*abb291(157)
      abb291(68)=abb291(68)+abb291(75)
      abb291(75)=-4.0_ki*abb291(68)
      abb291(193)=abb291(191)*spbl5k3
      abb291(194)=spak4l6*abb291(193)
      abb291(57)=abb291(112)-abb291(105)+abb291(57)
      abb291(57)=spak4l5*abb291(109)*abb291(57)
      abb291(112)=spbk3k1*abb291(102)
      abb291(76)=abb291(76)*abb291(41)
      abb291(18)=abb291(18)*abb291(52)
      abb291(18)=abb291(76)-abb291(18)
      abb291(52)=-abb291(18)*abb291(31)
      abb291(52)=abb291(112)+abb291(52)
      abb291(52)=spak1e7*abb291(52)
      abb291(18)=abb291(18)*abb291(6)
      abb291(18)=abb291(18)-abb291(102)
      abb291(76)=abb291(18)*abb291(34)
      abb291(52)=abb291(52)+abb291(76)
      abb291(52)=abb291(52)*abb291(35)
      abb291(76)=abb291(21)*spbe7k1
      abb291(102)=abb291(41)*abb291(15)
      abb291(76)=abb291(76)-abb291(102)
      abb291(102)=-spbk3k1*abb291(76)
      abb291(9)=abb291(19)*abb291(9)
      abb291(19)=abb291(41)*mB
      abb291(9)=abb291(9)-abb291(19)
      abb291(19)=abb291(9)*abb291(31)
      abb291(19)=abb291(102)+abb291(19)
      abb291(41)=spak4l6*spak1e7
      abb291(19)=abb291(19)*abb291(41)
      abb291(9)=-abb291(6)*abb291(9)
      abb291(9)=abb291(9)+abb291(76)
      abb291(9)=abb291(9)*abb291(47)
      abb291(76)=-abb291(104)*abb291(46)
      abb291(102)=abb291(47)*abb291(105)
      abb291(76)=abb291(76)+abb291(102)
      abb291(65)=abb291(76)*abb291(65)
      abb291(9)=abb291(65)+abb291(52)+abb291(19)+abb291(9)+abb291(57)
      abb291(9)=4.0_ki*abb291(9)
      abb291(19)=abb291(106)+abb291(56)
      abb291(52)=abb291(108)*es12
      abb291(37)=abb291(52)+abb291(37)
      abb291(52)=abb291(19)-abb291(37)
      abb291(52)=abb291(52)*abb291(72)
      abb291(57)=abb291(183)*abb291(31)
      abb291(12)=abb291(15)*abb291(12)
      abb291(12)=abb291(12)-abb291(21)
      abb291(15)=abb291(12)*spbk3k1
      abb291(15)=abb291(57)-abb291(15)
      abb291(21)=abb291(10)*abb291(86)
      abb291(57)=abb291(21)*spbl6k2
      abb291(65)=spbk3k1*abb291(57)
      abb291(65)=abb291(65)-abb291(15)
      abb291(65)=spak4l6*abb291(65)
      abb291(72)=abb291(16)*spbk3k1
      abb291(31)=abb291(31)*abb291(27)
      abb291(31)=abb291(72)-abb291(31)
      abb291(72)=abb291(31)*abb291(35)
      abb291(27)=abb291(27)*abb291(6)
      abb291(16)=abb291(27)-abb291(16)
      abb291(21)=abb291(16)-abb291(21)
      abb291(27)=abb291(21)*spbk3k2
      abb291(76)=-abb291(79)*abb291(27)
      abb291(52)=abb291(76)+abb291(72)+abb291(52)+abb291(65)
      abb291(52)=8.0_ki*abb291(52)
      abb291(65)=abb291(104)*abb291(86)
      abb291(18)=abb291(18)+abb291(65)
      abb291(65)=spbk3k2*abb291(18)*abb291(78)
      abb291(72)=8.0_ki*abb291(189)
      abb291(76)=16.0_ki*abb291(121)
      abb291(86)=-spbk3k1*abb291(76)
      abb291(89)=abb291(18)*abb291(89)
      abb291(102)=abb291(122)*abb291(170)
      abb291(104)=abb291(162)*abb291(139)
      abb291(89)=-abb291(89)+abb291(102)+abb291(104)
      abb291(102)=8.0_ki*abb291(89)
      abb291(89)=4.0_ki*abb291(89)
      abb291(79)=abb291(191)*abb291(79)
      abb291(104)=-abb291(59)*abb291(160)
      abb291(105)=-4.0_ki*abb291(145)
      abb291(43)=-8.0_ki*abb291(43)
      abb291(109)=abb291(125)*abb291(36)*abb291(109)
      abb291(112)=abb291(139)*abb291(157)
      abb291(109)=abb291(109)+abb291(112)
      abb291(109)=4.0_ki*abb291(109)
      abb291(112)=abb291(193)*spak4l5
      abb291(121)=spbk2k1*spak1e7
      abb291(121)=abb291(121)-abb291(163)
      abb291(18)=-4.0_ki*abb291(18)*abb291(121)
      abb291(122)=-8.0_ki*spbk2k1*abb291(21)
      abb291(59)=-abb291(59)*abb291(178)
      abb291(36)=16.0_ki*abb291(36)
      abb291(56)=abb291(56)-abb291(37)
      abb291(145)=8.0_ki*spbk7k1
      abb291(56)=abb291(145)*spak4k7*abb291(56)
      abb291(53)=abb291(53)*es12
      abb291(38)=abb291(38)*spak4e7
      abb291(38)=-abb291(96)+abb291(53)-abb291(38)
      abb291(53)=8.0_ki*abb291(38)
      abb291(96)=abb291(118)*spal6e7
      abb291(118)=abb291(171)*abb291(117)
      abb291(138)=abb291(138)*spbk2k1
      abb291(145)=abb291(138)*spak2e7
      abb291(38)=abb291(118)-abb291(145)+abb291(96)+abb291(38)
      abb291(96)=-8.0_ki*abb291(38)
      abb291(38)=-4.0_ki*abb291(38)
      abb291(118)=abb291(120)*spak1e7
      abb291(118)=abb291(154)+abb291(118)
      abb291(118)=4.0_ki*abb291(118)
      abb291(45)=8.0_ki*abb291(45)
      abb291(15)=abb291(15)*abb291(41)
      abb291(41)=abb291(183)*abb291(6)
      abb291(12)=abb291(41)-abb291(12)
      abb291(41)=-abb291(12)*abb291(47)
      abb291(110)=-abb291(106)*abb291(110)
      abb291(15)=abb291(110)+abb291(15)+abb291(41)
      abb291(15)=spbe7l5*abb291(15)
      abb291(31)=-spak1e7*abb291(31)
      abb291(34)=-abb291(16)*abb291(34)
      abb291(31)=abb291(31)+abb291(34)
      abb291(31)=abb291(31)*abb291(125)
      abb291(29)=abb291(29)*spak1e7
      abb291(34)=-abb291(139)*abb291(29)
      abb291(31)=abb291(34)+abb291(31)
      abb291(31)=spbl5k2*abb291(31)
      abb291(34)=abb291(187)*spak1e7
      abb291(40)=-abb291(40)*abb291(34)
      abb291(30)=abb291(30)*abb291(129)
      abb291(41)=abb291(87)*spak1e7
      abb291(29)=abb291(41)+abb291(29)
      abb291(41)=abb291(29)*abb291(132)
      abb291(10)=-abb291(10)*abb291(46)
      abb291(46)=abb291(47)*abb291(106)
      abb291(10)=abb291(10)+abb291(46)
      abb291(10)=spbe7l5*abb291(5)*abb291(10)
      abb291(46)=-abb291(87)*abb291(34)
      abb291(10)=abb291(46)+abb291(10)
      abb291(10)=spbl6k2*abb291(10)
      abb291(46)=abb291(139)*spak1e7
      abb291(70)=-abb291(70)*abb291(46)
      abb291(10)=abb291(10)+abb291(41)+abb291(30)+abb291(31)+abb291(15)+abb291(&
      &40)+abb291(70)
      abb291(10)=4.0_ki*abb291(10)
      abb291(12)=abb291(57)-abb291(12)
      abb291(12)=spak4l6*abb291(12)
      abb291(15)=-abb291(16)*abb291(35)
      abb291(30)=spak4l5*abb291(106)
      abb291(12)=abb291(15)+abb291(30)+abb291(12)
      abb291(12)=spbl5k3*abb291(12)
      abb291(15)=spak2k4*abb291(20)
      abb291(20)=abb291(60)*abb291(155)
      abb291(15)=abb291(15)+abb291(20)
      abb291(15)=spbk3k2*abb291(15)
      abb291(20)=-abb291(94)*abb291(129)
      abb291(30)=abb291(27)*abb291(48)
      abb291(12)=abb291(30)+abb291(20)+abb291(15)+abb291(12)
      abb291(12)=8.0_ki*abb291(12)
      abb291(15)=abb291(27)*spbe7l5
      abb291(20)=abb291(15)*abb291(78)
      abb291(27)=8.0_ki*abb291(68)
      abb291(30)=-spbl5k3*abb291(76)
      abb291(31)=-abb291(108)*abb291(42)
      abb291(26)=abb291(26)*abb291(62)
      abb291(35)=-abb291(58)*abb291(107)
      abb291(26)=abb291(35)+abb291(26)+abb291(31)
      abb291(26)=spbe7k2*abb291(26)
      abb291(31)=-abb291(156)*abb291(133)
      abb291(28)=spak1e7*abb291(28)
      abb291(28)=abb291(28)+abb291(31)
      abb291(28)=spbk2k1*abb291(28)
      abb291(26)=abb291(26)+abb291(28)
      abb291(26)=8.0_ki*abb291(26)
      abb291(15)=abb291(160)*abb291(15)
      abb291(28)=4.0_ki*abb291(66)
      abb291(31)=-8.0_ki*abb291(116)
      abb291(21)=spbe7l5*abb291(21)*abb291(121)
      abb291(35)=-spak1e7*abb291(182)
      abb291(29)=-spbe7k2*abb291(29)
      abb291(21)=abb291(29)+abb291(35)+abb291(21)
      abb291(21)=4.0_ki*abb291(21)
      abb291(16)=-spbl5k2*abb291(16)
      abb291(16)=abb291(16)+abb291(37)+abb291(19)
      abb291(16)=8.0_ki*abb291(16)
      abb291(19)=-abb291(170)*abb291(178)
      abb291(29)=abb291(108)*spbe7k2
      abb291(35)=-abb291(176)*abb291(29)
      abb291(37)=abb291(44)*abb291(13)
      abb291(40)=-abb291(108)*abb291(47)
      abb291(37)=abb291(37)+abb291(40)
      abb291(37)=spbe7k2*abb291(37)
      abb291(34)=-abb291(170)*abb291(34)
      abb291(34)=abb291(34)+abb291(37)
      abb291(34)=4.0_ki*abb291(34)
      abb291(13)=8.0_ki*spbk3k2*abb291(13)
      abb291(37)=-abb291(170)*abb291(46)
      abb291(40)=spbe7k2*abb291(111)
      abb291(37)=abb291(37)+abb291(40)
      abb291(37)=4.0_ki*abb291(37)
      abb291(40)=spbk3k2*spak4l5*abb291(137)
      abb291(41)=abb291(117)*abb291(170)
      abb291(41)=-abb291(138)+abb291(41)
      abb291(41)=abb291(41)*abb291(178)
      abb291(42)=-spak1k4*abb291(170)
      abb291(44)=spbk7k2*spak4k7*abb291(108)
      abb291(42)=abb291(42)+abb291(44)
      abb291(42)=8.0_ki*abb291(42)
      abb291(44)=abb291(29)*abb291(78)
      abb291(46)=abb291(160)*abb291(29)
      abb291(29)=-abb291(29)*abb291(178)
      R2d291=0.0_ki
      rat2 = rat2 + R2d291
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='291' value='", &
          & R2d291, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd291h1