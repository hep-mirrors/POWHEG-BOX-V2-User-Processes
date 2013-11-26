module     p9_csbar_epnebbbarg_abbrevd67h3
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(121), public :: abb67
   complex(ki), public :: R2d67
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
      abb67(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb67(2)=es56**(-1)
      abb67(3)=spak2l5**(-1)
      abb67(4)=spak2l6**(-1)
      abb67(5)=NC*c1
      abb67(5)=abb67(5)+c2-c4
      abb67(6)=-spak2k7*abb67(5)
      abb67(7)=TR*gW
      abb67(7)=abb67(7)**2*i_*mB*CVSC*abb67(2)
      abb67(8)=abb67(7)*spak2e7*abb67(1)
      abb67(9)=abb67(8)*spbk3k1
      abb67(10)=abb67(9)*abb67(4)
      abb67(11)=-abb67(10)*abb67(6)
      abb67(12)=spbk7l5*spak3k4
      abb67(13)=abb67(12)*abb67(11)
      abb67(14)=abb67(9)*abb67(3)
      abb67(15)=-abb67(14)*abb67(6)
      abb67(16)=spbk7l6*spak3k4
      abb67(17)=abb67(16)*abb67(15)
      abb67(13)=abb67(13)+abb67(17)
      abb67(13)=abb67(13)*spbe7k3
      abb67(17)=spak1k4*spbe7k1
      abb67(18)=abb67(17)*spbk7l5
      abb67(19)=abb67(18)*abb67(11)
      abb67(20)=abb67(17)*spbk7l6
      abb67(21)=abb67(20)*abb67(15)
      abb67(13)=abb67(13)-abb67(19)-abb67(21)
      abb67(19)=spbl6k3*spak3k4
      abb67(21)=spbl6k1*spak1k4
      abb67(22)=abb67(19)-abb67(21)
      abb67(9)=abb67(9)*abb67(5)
      abb67(23)=-abb67(22)*abb67(9)*spbe7l5
      abb67(24)=spbl5k3*spak3k4
      abb67(25)=spbl5k1*spak1k4
      abb67(26)=abb67(24)-abb67(25)
      abb67(9)=-abb67(26)*abb67(9)*spbe7l6
      abb67(15)=abb67(15)*spbe7l6
      abb67(11)=abb67(11)*spbe7l5
      abb67(11)=abb67(15)+abb67(11)
      abb67(15)=spbk7k1*spak1k4
      abb67(27)=spbk7k3*spak3k4
      abb67(28)=abb67(15)-abb67(27)
      abb67(11)=-abb67(11)*abb67(28)
      abb67(29)=abb67(22)*spak2l6
      abb67(14)=-abb67(14)*abb67(5)
      abb67(30)=abb67(14)*spbe7l6
      abb67(31)=-abb67(30)*abb67(29)
      abb67(32)=abb67(26)*spak2l5
      abb67(10)=-abb67(10)*abb67(5)
      abb67(33)=abb67(10)*spbe7l5
      abb67(34)=-abb67(33)*abb67(32)
      abb67(9)=-2.0_ki*abb67(13)-abb67(31)-abb67(34)+abb67(11)+abb67(9)+abb67(2&
      &3)
      abb67(11)=2.0_ki*es71
      abb67(13)=abb67(9)*abb67(11)
      abb67(23)=spbk7l5*spbe7k1
      abb67(31)=-abb67(23)*abb67(19)
      abb67(34)=spbk7l6*spbe7k1
      abb67(35)=-abb67(34)*abb67(24)
      abb67(36)=spbl6k1*abb67(18)
      abb67(37)=spbl5k1*abb67(20)
      abb67(31)=abb67(37)+abb67(36)+abb67(35)+abb67(31)
      abb67(35)=abb67(7)*spak2k7
      abb67(36)=spbk3k1*abb67(1)
      abb67(37)=abb67(35)*abb67(36)*abb67(5)
      abb67(31)=abb67(37)*abb67(31)
      abb67(38)=abb67(7)*abb67(3)
      abb67(39)=abb67(38)*abb67(36)
      abb67(40)=-abb67(39)*abb67(5)
      abb67(41)=spak2k7**2
      abb67(42)=-abb67(41)*abb67(40)
      abb67(43)=abb67(42)*abb67(20)
      abb67(44)=abb67(7)*abb67(4)
      abb67(45)=abb67(44)*abb67(36)
      abb67(46)=-abb67(45)*abb67(5)
      abb67(47)=-abb67(41)*abb67(46)
      abb67(48)=abb67(47)*abb67(18)
      abb67(43)=abb67(43)+abb67(48)
      abb67(43)=spbk7k1*abb67(43)
      abb67(48)=-abb67(42)*abb67(34)
      abb67(49)=-abb67(47)*abb67(23)
      abb67(48)=abb67(48)+abb67(49)
      abb67(48)=abb67(48)*abb67(27)
      abb67(31)=abb67(43)+abb67(48)+abb67(31)
      abb67(31)=spak1e7*abb67(31)
      abb67(39)=-abb67(39)*abb67(6)
      abb67(43)=abb67(39)*spbk7l6
      abb67(48)=abb67(17)*spak1e7
      abb67(49)=spbl6k1*abb67(43)*abb67(48)
      abb67(50)=abb67(39)*abb67(34)
      abb67(51)=-spak1e7*abb67(19)*abb67(50)
      abb67(49)=abb67(49)+abb67(51)
      abb67(49)=spak2l6*abb67(49)
      abb67(45)=-abb67(45)*abb67(6)
      abb67(51)=abb67(45)*spbk7l5
      abb67(52)=spbl5k1*abb67(51)*abb67(48)
      abb67(53)=abb67(45)*abb67(23)
      abb67(54)=-spak1e7*abb67(24)*abb67(53)
      abb67(52)=abb67(52)+abb67(54)
      abb67(52)=spak2l5*abb67(52)
      abb67(13)=abb67(13)+abb67(52)+abb67(49)+abb67(31)
      abb67(31)=abb67(37)*spak1k4
      abb67(49)=-spbk7l6*abb67(31)
      abb67(52)=abb67(15)*abb67(45)
      abb67(54)=abb67(27)*abb67(45)
      abb67(52)=abb67(52)-abb67(54)
      abb67(55)=2.0_ki*spak1k2
      abb67(56)=abb67(52)*abb67(55)
      abb67(7)=-abb67(7)*abb67(5)
      abb67(36)=-abb67(36)*abb67(7)
      abb67(57)=4.0_ki*spak1k2
      abb67(58)=-abb67(36)*abb67(21)*abb67(57)
      abb67(49)=abb67(58)+abb67(49)+abb67(56)
      abb67(49)=spbl5k1*abb67(49)
      abb67(31)=-spbk7l5*abb67(31)
      abb67(56)=abb67(15)*abb67(39)
      abb67(58)=abb67(27)*abb67(39)
      abb67(56)=abb67(56)-abb67(58)
      abb67(59)=abb67(56)*abb67(55)
      abb67(31)=abb67(31)+abb67(59)
      abb67(31)=spbl6k1*abb67(31)
      abb67(59)=abb67(40)*abb67(21)*abb67(55)
      abb67(60)=-spak1k4*abb67(43)
      abb67(59)=abb67(60)+abb67(59)
      abb67(59)=spbl6k1*abb67(59)
      abb67(60)=spak3k4*abb67(43)
      abb67(61)=abb67(40)*spbl6k1
      abb67(62)=abb67(55)*spak3k4
      abb67(63)=-abb67(62)*abb67(61)
      abb67(60)=abb67(60)+abb67(63)
      abb67(60)=spbl6k3*abb67(60)
      abb67(59)=abb67(59)+abb67(60)
      abb67(59)=spak2l6*abb67(59)
      abb67(60)=abb67(46)*abb67(25)*abb67(55)
      abb67(63)=-spak1k4*abb67(51)
      abb67(60)=abb67(63)+abb67(60)
      abb67(60)=spbl5k1*abb67(60)
      abb67(63)=spak3k4*abb67(51)
      abb67(64)=abb67(46)*spbl5k1
      abb67(65)=-abb67(62)*abb67(64)
      abb67(63)=abb67(63)+abb67(65)
      abb67(63)=spbl5k3*abb67(63)
      abb67(60)=abb67(60)+abb67(63)
      abb67(60)=spak2l5*abb67(60)
      abb67(63)=-spbk7l6*abb67(42)
      abb67(65)=-spbk7l5*abb67(47)
      abb67(63)=abb67(63)+abb67(65)
      abb67(63)=abb67(63)*abb67(15)
      abb67(42)=abb67(42)*abb67(16)
      abb67(47)=abb67(47)*abb67(12)
      abb67(42)=abb67(42)+abb67(47)
      abb67(42)=spbk7k3*abb67(42)
      abb67(38)=abb67(38)*abb67(1)
      abb67(47)=-abb67(38)*abb67(6)
      abb67(65)=abb67(16)*abb67(47)
      abb67(44)=abb67(44)*abb67(1)
      abb67(66)=-abb67(44)*abb67(6)
      abb67(67)=abb67(12)*abb67(66)
      abb67(65)=abb67(65)+abb67(67)
      abb67(67)=spbk3k1**2
      abb67(65)=abb67(57)*abb67(67)*abb67(65)
      abb67(68)=abb67(37)*abb67(12)
      abb67(62)=abb67(62)*abb67(36)
      abb67(69)=spbl5k1*abb67(62)
      abb67(68)=abb67(68)+abb67(69)
      abb67(68)=spbl6k3*abb67(68)
      abb67(37)=abb67(37)*abb67(16)
      abb67(62)=spbl6k1*abb67(62)
      abb67(37)=abb67(37)+abb67(62)
      abb67(37)=spbl5k3*abb67(37)
      abb67(31)=abb67(60)+abb67(59)+abb67(37)+abb67(68)+abb67(49)+abb67(31)+abb&
      &67(65)+abb67(63)+abb67(42)
      abb67(31)=2.0_ki*abb67(31)
      abb67(37)=4.0_ki*abb67(9)
      abb67(42)=abb67(53)+abb67(50)
      abb67(49)=3.0_ki*spak1e7
      abb67(50)=abb67(42)*abb67(49)
      abb67(53)=spak2k4*abb67(50)
      abb67(30)=abb67(30)+abb67(33)
      abb67(33)=spak2k4*abb67(30)
      abb67(59)=abb67(11)*abb67(33)
      abb67(53)=abb67(53)-abb67(59)
      abb67(59)=2.0_ki*abb67(53)
      abb67(43)=abb67(51)+abb67(43)
      abb67(51)=spak2k4*abb67(43)
      abb67(60)=abb67(40)*spak1k2
      abb67(62)=2.0_ki*spak2k4
      abb67(63)=abb67(62)*spbl6k1
      abb67(65)=abb67(60)*abb67(63)
      abb67(68)=abb67(46)*spak1k2
      abb67(69)=abb67(62)*spbl5k1
      abb67(70)=abb67(68)*abb67(69)
      abb67(65)=-abb67(70)-abb67(65)+3.0_ki*abb67(51)
      abb67(65)=4.0_ki*abb67(65)
      abb67(70)=8.0_ki*abb67(33)
      abb67(38)=-abb67(38)*abb67(5)
      abb67(71)=-abb67(41)*abb67(38)
      abb67(72)=abb67(71)*abb67(34)
      abb67(44)=-abb67(44)*abb67(5)
      abb67(41)=-abb67(41)*abb67(44)
      abb67(73)=abb67(41)*abb67(23)
      abb67(72)=abb67(72)+abb67(73)
      abb67(73)=abb67(72)*spbk7k3
      abb67(74)=3.0_ki*spak1k2
      abb67(42)=abb67(42)*abb67(74)
      abb67(75)=abb67(34)*abb67(47)
      abb67(76)=spak2l6*spbl6k3
      abb67(77)=abb67(75)*abb67(76)
      abb67(78)=abb67(23)*abb67(66)
      abb67(79)=spak2l5*spbl5k3
      abb67(80)=abb67(78)*abb67(79)
      abb67(35)=-abb67(5)*abb67(35)*abb67(1)
      abb67(81)=abb67(35)*abb67(34)
      abb67(82)=abb67(81)*spbl5k3
      abb67(83)=abb67(35)*abb67(23)
      abb67(84)=abb67(83)*spbl6k3
      abb67(42)=abb67(73)+abb67(42)-abb67(82)-abb67(84)+abb67(77)+abb67(80)
      abb67(42)=abb67(42)*spak4e7
      abb67(73)=-abb67(8)*abb67(5)
      abb67(77)=abb67(73)*spbe7l5
      abb67(80)=abb67(77)*spbl6k3
      abb67(73)=abb67(73)*spbe7l6
      abb67(82)=abb67(73)*spbl5k3
      abb67(80)=abb67(80)+abb67(82)
      abb67(82)=abb67(30)*spak1k2
      abb67(84)=abb67(8)*abb67(4)
      abb67(85)=-abb67(84)*abb67(5)
      abb67(86)=abb67(85)*spbe7l5
      abb67(87)=abb67(79)*abb67(86)
      abb67(8)=abb67(8)*abb67(3)
      abb67(5)=-abb67(8)*abb67(5)
      abb67(88)=abb67(5)*spbe7l6
      abb67(89)=abb67(76)*abb67(88)
      abb67(87)=abb67(82)+abb67(89)+abb67(87)+abb67(80)
      abb67(89)=abb67(87)*spbk7k1
      abb67(8)=-abb67(8)*abb67(6)
      abb67(90)=abb67(8)*spbe7l6
      abb67(6)=-abb67(84)*abb67(6)
      abb67(84)=abb67(6)*spbe7l5
      abb67(84)=abb67(90)+abb67(84)
      abb67(90)=abb67(84)*spbk7k1
      abb67(91)=abb67(90)*spbk7k3
      abb67(92)=abb67(8)*spbk7l6
      abb67(93)=abb67(6)*spbk7l5
      abb67(92)=abb67(92)+abb67(93)
      abb67(93)=2.0_ki*abb67(92)
      abb67(94)=spbk7k1*spbe7k3
      abb67(95)=abb67(93)*abb67(94)
      abb67(89)=abb67(89)+abb67(91)-abb67(95)
      abb67(91)=2.0_ki*spak4k7
      abb67(89)=abb67(89)*abb67(91)
      abb67(95)=abb67(88)+abb67(86)
      abb67(96)=spak2k4*abb67(95)
      abb67(91)=spbk7k1*abb67(91)*abb67(96)
      abb67(97)=abb67(78)+abb67(75)
      abb67(98)=spak2k4*abb67(97)
      abb67(99)=abb67(98)*spak4e7
      abb67(91)=abb67(91)+3.0_ki*abb67(99)
      abb67(91)=abb67(91)*spbk4k3
      abb67(9)=-abb67(89)-abb67(42)+abb67(91)-abb67(9)-abb67(53)
      abb67(42)=-2.0_ki*abb67(9)
      abb67(53)=abb67(47)*spbk7k3
      abb67(7)=-abb67(1)*abb67(7)
      abb67(89)=abb67(7)*spbl5k3
      abb67(76)=abb67(76)*abb67(38)
      abb67(89)=-abb67(89)+abb67(76)+abb67(53)
      abb67(89)=abb67(89)*abb67(63)
      abb67(91)=abb67(66)*spbk7k3
      abb67(99)=abb67(7)*spbl6k3
      abb67(79)=abb67(79)*abb67(44)
      abb67(99)=-abb67(99)+abb67(79)+abb67(91)
      abb67(99)=abb67(99)*abb67(69)
      abb67(100)=abb67(44)*spbl5k1
      abb67(101)=abb67(38)*spbl6k1
      abb67(102)=abb67(100)+abb67(101)
      abb67(103)=spbk4k3*abb67(102)*spak2k4**2
      abb67(89)=-2.0_ki*abb67(103)+abb67(89)+abb67(99)
      abb67(99)=-7.0_ki*abb67(51)-abb67(89)
      abb67(99)=4.0_ki*abb67(99)
      abb67(103)=4.0_ki*abb67(33)
      abb67(51)=-abb67(51)+abb67(89)
      abb67(51)=2.0_ki*abb67(51)
      abb67(89)=2.0_ki*abb67(33)
      abb67(104)=abb67(74)*abb67(43)
      abb67(105)=abb67(66)*spbk7l5
      abb67(106)=abb67(47)*spbk7l6
      abb67(107)=abb67(105)+abb67(106)
      abb67(108)=spak2k4*abb67(107)
      abb67(109)=-spbk4k3*abb67(108)
      abb67(104)=3.0_ki*abb67(109)+abb67(104)
      abb67(104)=abb67(17)*abb67(104)
      abb67(109)=abb67(71)*abb67(16)
      abb67(110)=abb67(41)*abb67(12)
      abb67(109)=abb67(109)+abb67(110)
      abb67(109)=spbe7k3*abb67(109)
      abb67(110)=abb67(71)*abb67(20)
      abb67(111)=abb67(41)*abb67(18)
      abb67(109)=abb67(109)+abb67(110)+abb67(111)
      abb67(109)=spbk7k3*abb67(109)
      abb67(71)=abb67(71)*spbk7l6
      abb67(41)=abb67(41)*spbk7l5
      abb67(41)=abb67(71)+abb67(41)
      abb67(71)=abb67(94)*spak1k4
      abb67(110)=-abb67(41)*abb67(71)
      abb67(111)=-abb67(35)*abb67(18)
      abb67(112)=abb67(35)*spbk7l5
      abb67(113)=spbe7k3*spak3k4
      abb67(114)=-abb67(113)*abb67(112)
      abb67(111)=abb67(111)+abb67(114)
      abb67(111)=spbl6k3*abb67(111)
      abb67(114)=-abb67(35)*abb67(20)
      abb67(35)=abb67(35)*spbk7l6
      abb67(115)=-abb67(113)*abb67(35)
      abb67(114)=abb67(114)+abb67(115)
      abb67(114)=spbl5k3*abb67(114)
      abb67(115)=abb67(113)+abb67(17)
      abb67(116)=spbl6k3*abb67(115)
      abb67(117)=abb67(21)*spbe7k3
      abb67(116)=-abb67(117)+abb67(116)
      abb67(116)=spak2l6*abb67(106)*abb67(116)
      abb67(118)=spbl5k3*abb67(115)
      abb67(119)=abb67(25)*spbe7k3
      abb67(118)=-abb67(119)+abb67(118)
      abb67(118)=spak2l5*abb67(105)*abb67(118)
      abb67(120)=abb67(112)*abb67(117)
      abb67(121)=abb67(35)*abb67(119)
      abb67(104)=abb67(118)+abb67(116)+abb67(114)+abb67(111)+abb67(121)+abb67(1&
      &20)+abb67(110)+abb67(109)+abb67(104)
      abb67(109)=abb67(108)*spbe7k3
      abb67(110)=6.0_ki*abb67(109)
      abb67(109)=3.0_ki*abb67(109)
      abb67(16)=-abb67(8)*abb67(16)
      abb67(12)=-abb67(6)*abb67(12)
      abb67(12)=abb67(16)+abb67(12)
      abb67(12)=spbe7k3*abb67(12)
      abb67(16)=abb67(8)*abb67(20)
      abb67(18)=abb67(6)*abb67(18)
      abb67(12)=abb67(12)+abb67(16)+abb67(18)
      abb67(16)=abb67(84)*abb67(27)
      abb67(18)=-abb67(21)*abb67(77)
      abb67(20)=-abb67(25)*abb67(73)
      abb67(12)=abb67(20)+abb67(18)+2.0_ki*abb67(12)+abb67(16)
      abb67(12)=spbk7k3*abb67(12)
      abb67(16)=abb67(96)*spbk4k3
      abb67(18)=-abb67(16)+abb67(82)
      abb67(18)=spbk7k1*spak1k4*abb67(18)
      abb67(20)=abb67(27)+abb67(15)
      abb67(27)=abb67(20)*abb67(80)
      abb67(71)=-abb67(92)*abb67(71)
      abb67(80)=spbl6k3*abb67(20)
      abb67(82)=-spbk7k3*abb67(21)
      abb67(80)=abb67(82)+abb67(80)
      abb67(80)=spak2l6*abb67(88)*abb67(80)
      abb67(20)=spbl5k3*abb67(20)
      abb67(82)=-spbk7k3*abb67(25)
      abb67(20)=abb67(82)+abb67(20)
      abb67(20)=spak2l5*abb67(86)*abb67(20)
      abb67(12)=abb67(20)+abb67(80)+2.0_ki*abb67(71)+abb67(12)+abb67(18)+abb67(&
      &27)
      abb67(12)=2.0_ki*abb67(12)
      abb67(18)=abb67(96)*spbk7k3
      abb67(20)=4.0_ki*abb67(18)
      abb67(18)=2.0_ki*abb67(18)
      abb67(8)=abb67(8)*abb67(34)
      abb67(6)=abb67(6)*abb67(23)
      abb67(6)=abb67(8)+abb67(6)
      abb67(8)=abb67(77)*spbl6k1
      abb67(23)=abb67(73)*spbl5k1
      abb67(27)=spak2l5*spbl5k1
      abb67(34)=abb67(27)*abb67(86)
      abb67(71)=spak2l6*spbl6k1
      abb67(80)=abb67(71)*abb67(88)
      abb67(6)=abb67(90)+abb67(80)-2.0_ki*abb67(6)+abb67(34)+abb67(8)+abb67(23)
      abb67(8)=abb67(6)*abb67(11)
      abb67(23)=-spbk7k1*abb67(72)
      abb67(34)=spbl6k1*abb67(83)
      abb67(72)=spbl5k1*abb67(81)
      abb67(75)=-abb67(71)*abb67(75)
      abb67(78)=-abb67(27)*abb67(78)
      abb67(23)=abb67(78)+abb67(75)+abb67(72)+abb67(23)+abb67(34)
      abb67(23)=spak1e7*abb67(23)
      abb67(34)=-abb67(30)*abb67(11)
      abb67(34)=abb67(50)+abb67(34)
      abb67(34)=spak2k3*abb67(34)
      abb67(49)=abb67(98)*abb67(49)
      abb67(11)=-abb67(96)*abb67(11)
      abb67(11)=abb67(49)+abb67(11)
      abb67(11)=spbk4k1*abb67(11)
      abb67(8)=abb67(11)+abb67(34)+abb67(8)+abb67(23)
      abb67(11)=abb67(66)*spbk7k1
      abb67(23)=-abb67(55)*abb67(11)
      abb67(34)=abb67(7)*spbl6k1
      abb67(49)=abb67(57)*abb67(34)
      abb67(23)=abb67(49)-abb67(35)+abb67(23)
      abb67(23)=spbl5k1*abb67(23)
      abb67(49)=abb67(64)+abb67(61)
      abb67(49)=abb67(55)*abb67(49)
      abb67(49)=-3.0_ki*abb67(43)+abb67(49)
      abb67(49)=spak2k3*abb67(49)
      abb67(50)=3.0_ki*abb67(108)
      abb67(63)=abb67(38)*abb67(63)
      abb67(69)=abb67(44)*abb67(69)
      abb67(63)=abb67(69)+abb67(63)
      abb67(63)=spak1k2*abb67(63)
      abb67(63)=-abb67(50)+abb67(63)
      abb67(63)=spbk4k1*abb67(63)
      abb67(69)=spbk7k1*abb67(41)
      abb67(72)=abb67(47)*spbk7k1
      abb67(75)=-abb67(55)*abb67(72)
      abb67(75)=-abb67(112)+abb67(75)
      abb67(75)=spbl6k1*abb67(75)
      abb67(78)=-abb67(55)*abb67(101)
      abb67(78)=abb67(106)+abb67(78)
      abb67(78)=abb67(78)*abb67(71)
      abb67(55)=-abb67(55)*abb67(100)
      abb67(55)=abb67(105)+abb67(55)
      abb67(55)=abb67(55)*abb67(27)
      abb67(23)=abb67(63)+abb67(49)+abb67(55)+abb67(78)+abb67(23)+abb67(69)+abb&
      &67(75)
      abb67(23)=2.0_ki*abb67(23)
      abb67(49)=abb67(96)*spbk4k1
      abb67(30)=abb67(30)*spak2k3
      abb67(6)=-abb67(6)+abb67(49)+abb67(30)
      abb67(30)=-4.0_ki*abb67(6)
      abb67(49)=-2.0_ki*abb67(6)
      abb67(55)=spak2l6*abb67(106)
      abb67(55)=abb67(55)-abb67(112)
      abb67(55)=spbe7l6*abb67(55)
      abb67(63)=spak2l5*abb67(105)
      abb67(35)=abb67(63)-abb67(35)
      abb67(35)=spbe7l5*abb67(35)
      abb67(63)=-abb67(97)*abb67(74)
      abb67(69)=spak2k3*spbe7k3
      abb67(74)=abb67(107)*abb67(69)
      abb67(41)=-spbk7e7*abb67(41)
      abb67(50)=-spbe7k4*abb67(50)
      abb67(35)=abb67(50)+abb67(41)-3.0_ki*abb67(74)+abb67(63)+abb67(35)+abb67(&
      &55)
      abb67(41)=-spak1k2*spbk7k1
      abb67(50)=-spak2k3*spbk7k3
      abb67(41)=abb67(50)+abb67(41)
      abb67(41)=abb67(95)*abb67(41)
      abb67(50)=abb67(88)*spak2l6
      abb67(50)=abb67(50)+abb67(77)
      abb67(50)=spbk7l6*abb67(50)
      abb67(55)=abb67(86)*spak2l5
      abb67(55)=abb67(55)+abb67(73)
      abb67(55)=spbk7l5*abb67(55)
      abb67(63)=-spbk7e7*abb67(93)
      abb67(73)=-spbk7k4*abb67(96)
      abb67(41)=abb67(73)+abb67(63)+abb67(55)+abb67(50)+abb67(41)
      abb67(41)=2.0_ki*abb67(41)
      abb67(50)=-16.0_ki*spak1k2*abb67(43)
      abb67(55)=abb67(84)*spbk7k3
      abb67(63)=abb67(93)*spbe7k3
      abb67(16)=abb67(16)-abb67(55)+abb67(63)-abb67(87)
      abb67(55)=2.0_ki*abb67(16)
      abb67(63)=abb67(17)*spbk7k1
      abb67(39)=-abb67(39)*abb67(63)
      abb67(58)=spbe7k1*abb67(58)
      abb67(39)=abb67(39)+abb67(58)
      abb67(58)=abb67(36)*abb67(17)
      abb67(73)=spbl5k1*abb67(58)
      abb67(39)=3.0_ki*abb67(39)+abb67(73)
      abb67(39)=spak1e7*abb67(39)
      abb67(61)=-abb67(48)*abb67(61)
      abb67(73)=spak1e7*spbe7k1
      abb67(74)=abb67(73)*abb67(40)
      abb67(75)=abb67(19)*abb67(74)
      abb67(61)=abb67(61)+abb67(75)
      abb67(61)=spak2l6*abb67(61)
      abb67(75)=abb67(113)-abb67(17)
      abb67(14)=-abb67(14)*abb67(75)
      abb67(77)=4.0_ki*es71
      abb67(78)=abb67(14)*abb67(77)
      abb67(80)=abb67(36)*abb67(73)
      abb67(81)=-abb67(24)*abb67(80)
      abb67(39)=abb67(78)+abb67(61)+abb67(39)+abb67(81)
      abb67(26)=-abb67(36)*abb67(26)
      abb67(57)=abb67(67)*abb67(57)*spak3k4
      abb67(61)=abb67(38)*abb67(57)
      abb67(29)=abb67(40)*abb67(29)
      abb67(26)=abb67(29)+abb67(61)+abb67(26)+abb67(56)
      abb67(26)=2.0_ki*abb67(26)
      abb67(29)=8.0_ki*abb67(14)
      abb67(56)=abb67(74)*abb67(62)
      abb67(61)=abb67(40)*spak2k4
      abb67(67)=12.0_ki*abb67(61)
      abb67(76)=abb67(76)-abb67(60)
      abb67(76)=abb67(76)*spbe7k1
      abb67(78)=abb67(7)*spbe7k1
      abb67(81)=abb67(78)*spbl5k3
      abb67(82)=3.0_ki*spbe7k1
      abb67(83)=abb67(53)*abb67(82)
      abb67(76)=-abb67(76)+abb67(81)-abb67(83)
      abb67(76)=abb67(76)*spak4e7
      abb67(81)=abb67(74)*spak2k4
      abb67(83)=4.0_ki*abb67(5)
      abb67(84)=abb67(94)*spak4k7
      abb67(86)=abb67(84)*abb67(83)
      abb67(87)=abb67(38)*spak2k4
      abb67(88)=spbe7k1*spbk4k3*spak4e7
      abb67(90)=abb67(88)*abb67(87)
      abb67(14)=abb67(76)+abb67(81)+2.0_ki*abb67(14)-abb67(86)-abb67(90)
      abb67(76)=2.0_ki*abb67(14)
      abb67(61)=-28.0_ki*abb67(61)
      abb67(81)=-abb67(40)*abb67(62)
      abb67(86)=-spbk4k3*abb67(87)
      abb67(86)=abb67(86)+abb67(60)
      abb67(86)=abb67(17)*abb67(86)
      abb67(90)=-abb67(115)*abb67(53)
      abb67(15)=abb67(15)*spbe7k3
      abb67(92)=abb67(47)*abb67(15)
      abb67(90)=abb67(92)+abb67(90)
      abb67(92)=abb67(115)*abb67(7)
      abb67(93)=spbl5k3*abb67(92)
      abb67(94)=abb67(38)*spbl6k3
      abb67(95)=-abb67(115)*abb67(94)
      abb67(96)=abb67(38)*abb67(117)
      abb67(95)=abb67(96)+abb67(95)
      abb67(95)=spak2l6*abb67(95)
      abb67(96)=-abb67(7)*abb67(119)
      abb67(86)=abb67(95)+abb67(93)+abb67(96)+3.0_ki*abb67(90)+abb67(86)
      abb67(90)=abb67(62)*spbe7k3
      abb67(93)=abb67(90)*abb67(38)
      abb67(95)=spbe7k3*abb67(87)
      abb67(96)=abb67(75)*spbk7k3
      abb67(96)=abb67(96)+abb67(15)
      abb67(97)=-4.0_ki*abb67(5)*abb67(96)
      abb67(98)=abb67(87)*spbk4k1
      abb67(71)=abb67(71)*abb67(38)
      abb67(100)=abb67(98)+abb67(71)
      abb67(100)=abb67(73)*abb67(100)
      abb67(101)=abb67(82)*abb67(72)
      abb67(105)=-spbl5k1*abb67(78)
      abb67(101)=abb67(101)+abb67(105)
      abb67(101)=spak1e7*abb67(101)
      abb67(105)=abb67(83)*spbe7k1
      abb67(106)=-es71*abb67(105)
      abb67(74)=spak2k3*abb67(74)
      abb67(74)=abb67(74)+abb67(106)+abb67(101)+abb67(100)
      abb67(100)=-spbl5k1*abb67(7)
      abb67(101)=3.0_ki*spak2k3
      abb67(106)=-abb67(40)*abb67(101)
      abb67(71)=-3.0_ki*abb67(98)+abb67(106)+abb67(71)-abb67(72)+abb67(100)
      abb67(71)=2.0_ki*abb67(71)
      abb67(72)=abb67(5)*spbe7k1
      abb67(98)=-8.0_ki*abb67(72)
      abb67(72)=2.0_ki*abb67(72)
      abb67(100)=spak1k2*spbe7k1
      abb67(69)=abb67(100)+abb67(69)
      abb67(100)=-spak2l6*spbe7l6
      abb67(100)=abb67(100)-abb67(69)
      abb67(100)=abb67(38)*abb67(100)
      abb67(106)=spbe7l5*abb67(7)
      abb67(108)=3.0_ki*spbk7e7
      abb67(111)=abb67(47)*abb67(108)
      abb67(112)=-spbe7k4*abb67(87)
      abb67(100)=abb67(112)+abb67(111)+abb67(106)+abb67(100)
      abb67(106)=-spbk7e7*abb67(83)
      abb67(111)=-16.0_ki*abb67(60)
      abb67(83)=spbe7k3*abb67(83)
      abb67(5)=2.0_ki*abb67(5)
      abb67(5)=-spbe7k3*abb67(5)
      abb67(45)=-abb67(45)*abb67(63)
      abb67(54)=spbe7k1*abb67(54)
      abb67(45)=abb67(45)+abb67(54)
      abb67(54)=spbl6k1*abb67(58)
      abb67(45)=3.0_ki*abb67(45)+abb67(54)
      abb67(45)=spak1e7*abb67(45)
      abb67(48)=-abb67(48)*abb67(64)
      abb67(54)=abb67(73)*abb67(46)
      abb67(24)=abb67(24)*abb67(54)
      abb67(24)=abb67(48)+abb67(24)
      abb67(24)=spak2l5*abb67(24)
      abb67(10)=-abb67(10)*abb67(75)
      abb67(48)=abb67(10)*abb67(77)
      abb67(58)=-abb67(19)*abb67(80)
      abb67(24)=abb67(48)+abb67(24)+abb67(45)+abb67(58)
      abb67(22)=-abb67(36)*abb67(22)
      abb67(36)=abb67(44)*abb67(57)
      abb67(32)=abb67(46)*abb67(32)
      abb67(22)=abb67(32)+abb67(36)+abb67(22)+abb67(52)
      abb67(22)=2.0_ki*abb67(22)
      abb67(32)=8.0_ki*abb67(10)
      abb67(36)=abb67(54)*abb67(62)
      abb67(45)=abb67(46)*spak2k4
      abb67(48)=12.0_ki*abb67(45)
      abb67(52)=abb67(79)-abb67(68)
      abb67(52)=abb67(52)*spbe7k1
      abb67(57)=abb67(78)*spbl6k3
      abb67(58)=abb67(91)*abb67(82)
      abb67(52)=-abb67(52)+abb67(57)-abb67(58)
      abb67(52)=abb67(52)*spak4e7
      abb67(57)=abb67(54)*spak2k4
      abb67(58)=4.0_ki*abb67(85)
      abb67(63)=abb67(84)*abb67(58)
      abb67(64)=abb67(44)*spak2k4
      abb67(75)=abb67(88)*abb67(64)
      abb67(10)=abb67(52)+abb67(57)+2.0_ki*abb67(10)-abb67(63)-abb67(75)
      abb67(52)=2.0_ki*abb67(10)
      abb67(45)=-28.0_ki*abb67(45)
      abb67(57)=-abb67(46)*abb67(62)
      abb67(62)=-spbk4k3*abb67(64)
      abb67(62)=abb67(62)+abb67(68)
      abb67(17)=abb67(17)*abb67(62)
      abb67(62)=-abb67(115)*abb67(91)
      abb67(15)=abb67(66)*abb67(15)
      abb67(15)=abb67(15)+abb67(62)
      abb67(62)=spbl6k3*abb67(92)
      abb67(63)=abb67(44)*spbl5k3
      abb67(75)=-abb67(115)*abb67(63)
      abb67(77)=abb67(44)*abb67(119)
      abb67(75)=abb67(77)+abb67(75)
      abb67(75)=spak2l5*abb67(75)
      abb67(77)=-abb67(7)*abb67(117)
      abb67(15)=abb67(75)+abb67(62)+abb67(77)+3.0_ki*abb67(15)+abb67(17)
      abb67(17)=abb67(90)*abb67(44)
      abb67(62)=spbe7k3*abb67(64)
      abb67(75)=-4.0_ki*abb67(85)*abb67(96)
      abb67(77)=abb67(64)*spbk4k1
      abb67(27)=abb67(27)*abb67(44)
      abb67(79)=abb67(77)+abb67(27)
      abb67(73)=abb67(73)*abb67(79)
      abb67(79)=abb67(82)*abb67(11)
      abb67(78)=-spbl6k1*abb67(78)
      abb67(78)=abb67(79)+abb67(78)
      abb67(78)=spak1e7*abb67(78)
      abb67(79)=abb67(58)*spbe7k1
      abb67(80)=-es71*abb67(79)
      abb67(54)=spak2k3*abb67(54)
      abb67(54)=abb67(54)+abb67(80)+abb67(78)+abb67(73)
      abb67(73)=-abb67(46)*abb67(101)
      abb67(11)=-3.0_ki*abb67(77)+abb67(73)+abb67(27)-abb67(11)-abb67(34)
      abb67(11)=2.0_ki*abb67(11)
      abb67(27)=abb67(85)*spbe7k1
      abb67(34)=-8.0_ki*abb67(27)
      abb67(27)=2.0_ki*abb67(27)
      abb67(73)=-spak2l5*spbe7l5
      abb67(69)=abb67(73)-abb67(69)
      abb67(69)=abb67(44)*abb67(69)
      abb67(73)=spbe7l6*abb67(7)
      abb67(77)=abb67(66)*abb67(108)
      abb67(78)=-spbe7k4*abb67(64)
      abb67(69)=abb67(78)+abb67(77)+abb67(73)+abb67(69)
      abb67(73)=-spbk7e7*abb67(58)
      abb67(77)=-16.0_ki*abb67(68)
      abb67(58)=spbe7k3*abb67(58)
      abb67(78)=2.0_ki*abb67(85)
      abb67(78)=-spbe7k3*abb67(78)
      abb67(80)=-8.0_ki*spak3k4*abb67(43)
      abb67(40)=8.0_ki*abb67(40)
      abb67(82)=-spak3k4*abb67(40)
      abb67(46)=8.0_ki*abb67(46)
      abb67(84)=-spak3k4*abb67(46)
      abb67(53)=abb67(53)+abb67(60)
      abb67(53)=spbl6k1*abb67(53)
      abb67(60)=abb67(91)+abb67(68)
      abb67(60)=spbl5k1*abb67(60)
      abb67(43)=abb67(60)+2.0_ki*abb67(43)+abb67(53)
      abb67(43)=spak1k4*abb67(43)
      abb67(53)=spak2l6*abb67(38)*spbl6k3**2
      abb67(60)=spak2l5*abb67(44)*spbl5k3**2
      abb67(53)=abb67(60)+abb67(53)
      abb67(53)=spak3k4*abb67(53)
      abb67(47)=-spbl6k3*abb67(47)*abb67(28)
      abb67(28)=-abb67(66)*abb67(28)
      abb67(7)=abb67(7)*abb67(19)
      abb67(7)=-2.0_ki*abb67(7)+abb67(28)
      abb67(7)=spbl5k3*abb67(7)
      abb67(19)=-abb67(21)*abb67(87)
      abb67(21)=-abb67(25)*abb67(64)
      abb67(19)=abb67(19)+abb67(21)
      abb67(19)=spbk4k3*abb67(19)
      abb67(7)=abb67(19)+abb67(7)+abb67(47)+abb67(53)+abb67(43)
      abb67(7)=4.0_ki*abb67(7)
      abb67(19)=abb67(87)*spbl6k3
      abb67(21)=abb67(64)*spbl5k3
      abb67(19)=abb67(19)+abb67(21)
      abb67(21)=8.0_ki*abb67(19)
      abb67(19)=4.0_ki*abb67(19)
      abb67(25)=-spak1k2*abb67(102)
      abb67(28)=-abb67(94)-abb67(63)
      abb67(28)=spak2k3*abb67(28)
      abb67(43)=-spbl6k4*abb67(87)
      abb67(47)=-spbl5k4*abb67(64)
      abb67(25)=abb67(47)+abb67(43)+abb67(28)+abb67(25)+abb67(107)
      abb67(25)=4.0_ki*abb67(25)
      abb67(28)=spak1k4*abb67(40)
      abb67(38)=8.0_ki*abb67(38)
      abb67(40)=spak1k4*abb67(46)
      abb67(43)=8.0_ki*abb67(44)
      R2d67=0.0_ki
      rat2 = rat2 + R2d67
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='67' value='", &
          & R2d67, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd67h3
