module     p9_csbar_epnebbbarg_abbrevd91h0
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(165), public :: abb91
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
      abb91(5)=spbl5k2**(-1)
      abb91(6)=sqrt(mB**2)
      abb91(7)=1.0_ki/(es34+es567-es12-es234)
      abb91(8)=spak2l5**(-1)
      abb91(9)=spbl6k2**(-1)
      abb91(10)=spak2l6**(-1)
      abb91(11)=c4*abb91(3)**2
      abb91(12)=TR*gW
      abb91(12)=abb91(12)**2*i_*CVSC*abb91(2)*abb91(1)
      abb91(13)=abb91(11)*abb91(12)*spbk3k1
      abb91(14)=abb91(13)*abb91(7)
      abb91(15)=abb91(5)*mB
      abb91(16)=abb91(14)*abb91(15)
      abb91(17)=abb91(12)*c1
      abb91(18)=abb91(17)*mB
      abb91(19)=abb91(18)*abb91(5)
      abb91(20)=2.0_ki*abb91(3)
      abb91(21)=abb91(19)*abb91(20)
      abb91(22)=abb91(7)*spbk3k1
      abb91(23)=abb91(21)*abb91(22)
      abb91(19)=abb91(19)*NC
      abb91(24)=abb91(19)*abb91(22)
      abb91(23)=abb91(24)+abb91(16)-abb91(23)
      abb91(24)=spak2l6**2
      abb91(25)=abb91(24)*abb91(23)
      abb91(26)=abb91(25)*spbl6k2
      abb91(27)=abb91(17)*abb91(3)
      abb91(27)=2.0_ki*abb91(27)
      abb91(17)=abb91(17)*NC
      abb91(28)=abb91(27)-abb91(17)
      abb91(29)=abb91(22)*spak2l6
      abb91(30)=-abb91(29)*abb91(28)
      abb91(31)=abb91(7)*spak2l6
      abb91(32)=abb91(31)*abb91(13)
      abb91(30)=abb91(30)+abb91(32)
      abb91(33)=abb91(6)*spak2l5
      abb91(34)=-abb91(30)*abb91(33)
      abb91(34)=abb91(34)-abb91(26)
      abb91(35)=spbe7k3*spak3k4
      abb91(34)=abb91(34)*abb91(35)
      abb91(36)=-spbe7k1*abb91(30)
      abb91(37)=abb91(36)*spak1k4
      abb91(38)=-abb91(33)*abb91(37)
      abb91(19)=abb91(19)-abb91(21)
      abb91(21)=abb91(22)*spbe7k1
      abb91(39)=-abb91(21)*abb91(19)
      abb91(16)=abb91(16)*spbe7k1
      abb91(16)=abb91(39)-abb91(16)
      abb91(39)=spbl6k2*spak1k4
      abb91(40)=abb91(39)*abb91(24)
      abb91(41)=-abb91(16)*abb91(40)
      abb91(34)=abb91(34)+abb91(38)+abb91(41)
      abb91(34)=spal6e7*abb91(34)
      abb91(38)=abb91(4)*spbe7k1
      abb91(41)=-abb91(38)*abb91(19)
      abb91(42)=abb91(12)*mB
      abb91(43)=abb91(11)*abb91(42)
      abb91(44)=abb91(38)*abb91(43)
      abb91(45)=abb91(44)*abb91(5)
      abb91(41)=abb91(41)-abb91(45)
      abb91(45)=-abb91(24)*abb91(41)
      abb91(46)=abb91(45)*spbl6k2
      abb91(47)=abb91(38)*spak2l6
      abb91(48)=-abb91(47)*abb91(28)
      abb91(49)=abb91(11)*spak2l6
      abb91(50)=abb91(12)*abb91(4)
      abb91(51)=spbe7k1*abb91(50)
      abb91(52)=abb91(51)*abb91(49)
      abb91(48)=abb91(48)+abb91(52)
      abb91(53)=abb91(48)*abb91(33)
      abb91(53)=abb91(53)+abb91(46)
      abb91(54)=spbk7k3*spae7k7
      abb91(53)=abb91(53)*abb91(54)
      abb91(55)=abb91(47)*spbk3k1
      abb91(56)=-abb91(55)*abb91(28)
      abb91(57)=abb91(47)*abb91(13)
      abb91(56)=abb91(56)+abb91(57)
      abb91(58)=abb91(56)*spak1e7
      abb91(59)=-abb91(33)*abb91(58)
      abb91(60)=abb91(38)*spbk3k1
      abb91(61)=abb91(60)*abb91(19)
      abb91(62)=abb91(13)*abb91(15)
      abb91(63)=abb91(62)*abb91(38)
      abb91(61)=abb91(63)+abb91(61)
      abb91(63)=spbl6k2*spak1e7
      abb91(64)=abb91(63)*abb91(24)
      abb91(65)=-abb91(61)*abb91(64)
      abb91(53)=abb91(53)+abb91(59)+abb91(65)
      abb91(53)=spak4l6*abb91(53)
      abb91(34)=abb91(53)+abb91(34)
      abb91(34)=spbl6k2*abb91(34)
      abb91(53)=-abb91(30)*abb91(35)
      abb91(37)=-abb91(37)+abb91(53)
      abb91(37)=spal5e7*abb91(37)
      abb91(53)=abb91(48)*abb91(54)
      abb91(53)=-abb91(58)+abb91(53)
      abb91(53)=spak4l5*abb91(53)
      abb91(37)=abb91(37)+abb91(53)
      abb91(33)=spbl5k2*abb91(33)*abb91(37)
      abb91(20)=abb91(20)*abb91(18)
      abb91(18)=abb91(18)*NC
      abb91(37)=abb91(18)-abb91(20)
      abb91(53)=-abb91(21)*abb91(37)
      abb91(58)=abb91(14)*mB
      abb91(59)=abb91(58)*spbe7k1
      abb91(53)=abb91(53)-abb91(59)
      abb91(40)=-abb91(53)*abb91(40)
      abb91(59)=-abb91(22)*abb91(37)
      abb91(58)=abb91(59)-abb91(58)
      abb91(59)=abb91(24)*spbl6k2
      abb91(65)=abb91(35)*abb91(58)*abb91(59)
      abb91(40)=abb91(40)+abb91(65)
      abb91(40)=spal5e7*abb91(40)
      abb91(65)=-abb91(60)*abb91(37)
      abb91(66)=abb91(13)*abb91(38)
      abb91(67)=abb91(66)*mB
      abb91(65)=abb91(65)-abb91(67)
      abb91(64)=abb91(65)*abb91(64)
      abb91(67)=-abb91(38)*abb91(37)
      abb91(67)=abb91(67)-abb91(44)
      abb91(68)=-abb91(54)*abb91(67)*abb91(59)
      abb91(64)=abb91(64)+abb91(68)
      abb91(64)=spak4l5*abb91(64)
      abb91(33)=abb91(33)+abb91(40)+abb91(64)+abb91(34)
      abb91(33)=4.0_ki*abb91(33)
      abb91(34)=mB**2
      abb91(40)=-abb91(34)*abb91(28)
      abb91(64)=-abb91(22)*abb91(40)
      abb91(68)=abb91(14)*abb91(34)
      abb91(64)=abb91(64)-abb91(68)
      abb91(69)=abb91(64)*abb91(9)
      abb91(70)=abb91(69)+abb91(30)
      abb91(71)=abb91(70)*spak2l5
      abb91(72)=abb91(5)*spak2l6
      abb91(73)=abb91(72)*abb91(22)
      abb91(74)=-abb91(73)*abb91(40)
      abb91(75)=abb91(68)*abb91(72)
      abb91(74)=abb91(74)-abb91(75)
      abb91(71)=abb91(71)+abb91(74)
      abb91(75)=2.0_ki*abb91(6)
      abb91(71)=abb91(71)*abb91(75)
      abb91(76)=mB**3
      abb91(27)=abb91(27)*abb91(76)
      abb91(77)=abb91(27)*abb91(22)
      abb91(17)=abb91(76)*abb91(17)
      abb91(78)=abb91(17)*abb91(22)
      abb91(77)=abb91(77)-abb91(78)
      abb91(14)=abb91(14)*abb91(76)
      abb91(79)=abb91(77)-abb91(14)
      abb91(80)=abb91(79)*abb91(9)
      abb91(81)=-abb91(29)*abb91(37)
      abb91(82)=abb91(32)*mB
      abb91(81)=abb91(81)-abb91(82)
      abb91(80)=abb91(80)-abb91(81)
      abb91(83)=abb91(80)*spak2l5
      abb91(84)=abb91(72)**2
      abb91(85)=-abb91(84)*abb91(79)
      abb91(86)=abb91(8)*spbl6k2
      abb91(87)=abb91(85)*abb91(86)
      abb91(71)=-abb91(87)+abb91(71)-abb91(83)
      abb91(26)=abb91(26)+abb91(71)
      abb91(83)=-spbk3k2*abb91(26)
      abb91(88)=abb91(30)*abb91(75)
      abb91(88)=abb91(88)+abb91(81)
      abb91(89)=spbl6k3*spal5l6
      abb91(90)=abb91(88)*abb91(89)
      abb91(20)=abb91(73)*abb91(20)
      abb91(15)=abb91(32)*abb91(15)
      abb91(18)=abb91(73)*abb91(18)
      abb91(15)=abb91(18)+abb91(15)-abb91(20)
      abb91(18)=abb91(15)*spbl6k2
      abb91(20)=spbl5k3*spal5l6
      abb91(91)=-abb91(20)*abb91(18)
      abb91(83)=abb91(91)+abb91(90)+abb91(83)
      abb91(83)=spak3k4*abb91(83)
      abb91(90)=abb91(34)*abb91(11)
      abb91(91)=abb91(90)*abb91(50)
      abb91(92)=abb91(40)*abb91(4)
      abb91(91)=abb91(91)+abb91(92)
      abb91(91)=abb91(91)*abb91(9)
      abb91(92)=abb91(4)*spak2l6
      abb91(93)=-abb91(92)*abb91(28)
      abb91(94)=abb91(50)*abb91(49)
      abb91(93)=abb91(93)+abb91(94)
      abb91(91)=abb91(91)-abb91(93)
      abb91(91)=abb91(91)*spak2l5
      abb91(95)=abb91(72)*abb91(4)
      abb91(96)=abb91(40)*abb91(95)
      abb91(97)=abb91(94)*abb91(34)*abb91(5)
      abb91(91)=abb91(91)+abb91(96)+abb91(97)
      abb91(91)=abb91(91)*abb91(75)
      abb91(96)=abb91(17)-abb91(27)
      abb91(97)=-abb91(4)*abb91(96)
      abb91(11)=abb91(76)*abb91(11)
      abb91(50)=abb91(11)*abb91(50)
      abb91(50)=abb91(97)-abb91(50)
      abb91(97)=abb91(50)*abb91(9)
      abb91(98)=-abb91(92)*abb91(37)
      abb91(42)=abb91(49)*abb91(42)
      abb91(99)=abb91(42)*abb91(4)
      abb91(98)=abb91(98)-abb91(99)
      abb91(97)=abb91(97)-abb91(98)
      abb91(97)=abb91(97)*spak2l5
      abb91(99)=-abb91(4)*abb91(19)
      abb91(100)=abb91(43)*abb91(4)
      abb91(101)=abb91(100)*abb91(5)
      abb91(99)=abb91(99)-abb91(101)
      abb91(59)=abb91(99)*abb91(59)
      abb91(101)=abb91(86)*abb91(84)
      abb91(102)=abb91(50)*abb91(101)
      abb91(59)=-abb91(102)+abb91(91)+abb91(97)+abb91(59)
      abb91(59)=abb91(59)*spbk3k2
      abb91(91)=-abb91(37)-abb91(43)
      abb91(91)=abb91(95)*abb91(91)
      abb91(95)=abb91(91)*spbl6k2
      abb91(97)=abb91(20)*abb91(95)
      abb91(97)=abb91(97)+abb91(59)
      abb91(97)=spak4k7*abb91(97)
      abb91(93)=abb91(93)*abb91(75)
      abb91(93)=abb91(93)+abb91(98)
      abb91(98)=spbl6k3*spak4k7
      abb91(93)=abb91(93)*abb91(98)*spal5l6
      abb91(97)=abb91(93)+abb91(97)
      abb91(97)=spbk7k1*abb91(97)
      abb91(102)=-spak1k4*abb91(71)
      abb91(103)=-abb91(25)*abb91(39)
      abb91(102)=abb91(103)+abb91(102)
      abb91(102)=spbk2k1*abb91(102)
      abb91(103)=spbl6k1*spak1k4
      abb91(104)=-spal5l6*abb91(88)*abb91(103)
      abb91(105)=spbl5k1*spal5l6
      abb91(106)=abb91(15)*abb91(39)*abb91(105)
      abb91(83)=abb91(106)+abb91(104)+abb91(97)+abb91(102)+abb91(83)
      abb91(83)=8.0_ki*abb91(83)
      abb91(97)=-abb91(38)*abb91(40)
      abb91(102)=abb91(90)*abb91(51)
      abb91(97)=abb91(97)-abb91(102)
      abb91(104)=abb91(97)*abb91(9)
      abb91(106)=abb91(104)+abb91(48)
      abb91(107)=spak2l5*spak4e7
      abb91(108)=abb91(106)*abb91(107)
      abb91(109)=abb91(72)*abb91(38)
      abb91(110)=-abb91(109)*abb91(40)
      abb91(102)=abb91(102)*abb91(72)
      abb91(102)=abb91(102)-abb91(110)
      abb91(111)=abb91(102)*spak4e7
      abb91(108)=abb91(111)-abb91(108)
      abb91(108)=abb91(108)*abb91(75)
      abb91(111)=-abb91(38)*abb91(96)
      abb91(51)=abb91(11)*abb91(51)
      abb91(111)=abb91(111)-abb91(51)
      abb91(112)=abb91(111)*abb91(9)
      abb91(113)=abb91(47)*abb91(37)
      abb91(42)=abb91(42)*abb91(38)
      abb91(42)=abb91(42)+abb91(113)
      abb91(112)=abb91(112)+abb91(42)
      abb91(113)=abb91(112)*abb91(107)
      abb91(114)=spbl6k2*spak4e7
      abb91(115)=abb91(45)*abb91(114)
      abb91(108)=abb91(108)-abb91(115)+abb91(113)
      abb91(84)=-abb91(84)*abb91(111)
      abb91(113)=abb91(84)*abb91(86)
      abb91(115)=-spak4e7*abb91(113)
      abb91(115)=-abb91(108)+abb91(115)
      abb91(115)=spbk3k2*abb91(115)
      abb91(116)=abb91(48)*abb91(75)
      abb91(116)=abb91(116)-abb91(42)
      abb91(89)=abb91(116)*abb91(89)
      abb91(117)=spak4e7*abb91(89)
      abb91(118)=-abb91(109)*abb91(37)
      abb91(44)=abb91(44)*abb91(72)
      abb91(44)=-abb91(44)+abb91(118)
      abb91(119)=abb91(114)*abb91(20)*abb91(44)
      abb91(117)=abb91(119)+abb91(117)
      abb91(115)=abb91(115)-abb91(117)
      abb91(115)=8.0_ki*abb91(115)
      abb91(119)=abb91(18)*abb91(35)
      abb91(120)=spbe7k1*abb91(15)
      abb91(121)=abb91(120)*abb91(39)
      abb91(119)=abb91(119)-abb91(121)
      abb91(119)=abb91(119)*spal6e7
      abb91(122)=abb91(44)*spbl6k2
      abb91(123)=abb91(122)*abb91(54)
      abb91(118)=-spbk3k1*abb91(118)
      abb91(62)=abb91(62)*abb91(47)
      abb91(62)=abb91(62)+abb91(118)
      abb91(118)=abb91(62)*abb91(63)
      abb91(123)=abb91(123)+abb91(118)
      abb91(123)=abb91(123)*spak4l6
      abb91(119)=abb91(119)+abb91(123)
      abb91(123)=abb91(29)*spbe7k1
      abb91(124)=-abb91(123)*abb91(37)
      abb91(82)=abb91(82)*spbe7k1
      abb91(82)=abb91(124)-abb91(82)
      abb91(124)=-abb91(36)*abb91(75)
      abb91(124)=abb91(124)+abb91(82)
      abb91(124)=spak1k4*abb91(124)
      abb91(125)=-abb91(88)*abb91(35)
      abb91(124)=abb91(124)+abb91(125)
      abb91(124)=spal5e7*abb91(124)
      abb91(125)=-abb91(55)*abb91(37)
      abb91(126)=abb91(57)*mB
      abb91(125)=abb91(125)-abb91(126)
      abb91(126)=-abb91(56)*abb91(75)
      abb91(126)=abb91(126)-abb91(125)
      abb91(126)=spak1e7*abb91(126)
      abb91(127)=abb91(116)*abb91(54)
      abb91(126)=abb91(126)+abb91(127)
      abb91(126)=spak4l5*abb91(126)
      abb91(124)=abb91(124)+abb91(126)-abb91(119)
      abb91(124)=8.0_ki*abb91(124)
      abb91(126)=abb91(30)*abb91(6)
      abb91(126)=abb91(126)+abb91(81)
      abb91(126)=abb91(126)*abb91(35)
      abb91(127)=abb91(36)*abb91(6)
      abb91(127)=abb91(127)-abb91(82)
      abb91(127)=abb91(127)*spak1k4
      abb91(126)=abb91(126)+abb91(127)
      abb91(127)=-spal5e7*abb91(126)
      abb91(128)=abb91(48)*abb91(6)
      abb91(128)=abb91(128)-abb91(42)
      abb91(128)=abb91(128)*abb91(54)
      abb91(129)=abb91(56)*abb91(6)
      abb91(129)=abb91(129)+abb91(125)
      abb91(129)=abb91(129)*spak1e7
      abb91(128)=abb91(128)-abb91(129)
      abb91(129)=spak4l5*abb91(128)
      abb91(119)=abb91(127)+abb91(129)-abb91(119)
      abb91(119)=8.0_ki*abb91(119)
      abb91(127)=abb91(70)*abb91(107)
      abb91(129)=abb91(74)*spak4e7
      abb91(127)=abb91(129)+abb91(127)
      abb91(127)=abb91(127)*abb91(75)
      abb91(129)=abb91(25)*abb91(114)
      abb91(80)=abb91(80)*abb91(107)
      abb91(80)=abb91(127)+abb91(129)-abb91(80)
      abb91(80)=abb91(80)*spbe7k2
      abb91(127)=spbe7l6*spal5l6
      abb91(88)=abb91(88)*abb91(127)
      abb91(129)=spak4e7*abb91(88)
      abb91(130)=spbe7l5*spal5l6
      abb91(131)=abb91(130)*abb91(15)
      abb91(132)=abb91(131)*abb91(114)
      abb91(80)=abb91(80)+abb91(129)-abb91(132)
      abb91(129)=spbe7k2*spak4e7
      abb91(87)=abb91(87)*abb91(129)
      abb91(87)=abb91(87)-abb91(80)
      abb91(87)=8.0_ki*abb91(87)
      abb91(30)=2.0_ki*abb91(30)+abb91(69)
      abb91(30)=abb91(6)*abb91(30)
      abb91(30)=2.0_ki*abb91(81)+abb91(30)
      abb91(30)=spak3k4*abb91(30)
      abb91(69)=abb91(96)*abb91(73)
      abb91(73)=abb91(74)*abb91(75)
      abb91(132)=abb91(72)*abb91(14)
      abb91(73)=abb91(73)+abb91(132)+abb91(69)
      abb91(132)=abb91(8)*spak3k4
      abb91(73)=abb91(73)*abb91(132)
      abb91(30)=abb91(30)+abb91(73)
      abb91(30)=spbe7k3*abb91(30)
      abb91(73)=abb91(40)*abb91(21)
      abb91(68)=abb91(68)*spbe7k1
      abb91(73)=abb91(73)+abb91(68)
      abb91(73)=abb91(73)*abb91(9)
      abb91(133)=2.0_ki*abb91(36)+abb91(73)
      abb91(133)=abb91(6)*abb91(133)
      abb91(133)=-2.0_ki*abb91(82)+abb91(133)
      abb91(133)=spak1k4*abb91(133)
      abb91(69)=-spbe7k1*abb91(69)
      abb91(134)=abb91(74)*spbe7k1
      abb91(135)=-abb91(134)*abb91(75)
      abb91(136)=abb91(14)*spbe7k1
      abb91(137)=-abb91(72)*abb91(136)
      abb91(69)=abb91(135)+abb91(137)+abb91(69)
      abb91(135)=abb91(8)*spak1k4
      abb91(69)=abb91(69)*abb91(135)
      abb91(30)=abb91(30)+abb91(133)+abb91(69)
      abb91(30)=spal5e7*abb91(30)
      abb91(48)=-2.0_ki*abb91(48)-abb91(104)
      abb91(48)=abb91(6)*abb91(48)
      abb91(48)=2.0_ki*abb91(42)+abb91(48)
      abb91(48)=spae7k7*abb91(48)
      abb91(69)=abb91(96)*abb91(109)
      abb91(104)=abb91(102)*abb91(75)
      abb91(133)=-abb91(72)*abb91(51)
      abb91(104)=abb91(104)+abb91(133)-abb91(69)
      abb91(133)=abb91(8)*spae7k7
      abb91(104)=abb91(104)*abb91(133)
      abb91(48)=abb91(48)+abb91(104)
      abb91(48)=spbk7k3*abb91(48)
      abb91(104)=abb91(40)*abb91(60)
      abb91(137)=abb91(66)*abb91(34)
      abb91(104)=abb91(104)+abb91(137)
      abb91(104)=abb91(104)*abb91(9)
      abb91(138)=2.0_ki*abb91(56)-abb91(104)
      abb91(138)=abb91(6)*abb91(138)
      abb91(138)=2.0_ki*abb91(125)+abb91(138)
      abb91(138)=spak1e7*abb91(138)
      abb91(13)=abb91(13)*abb91(109)*abb91(34)
      abb91(34)=abb91(110)*spbk3k1
      abb91(13)=abb91(13)-abb91(34)
      abb91(34)=-abb91(13)*abb91(75)
      abb91(69)=spbk3k1*abb91(69)
      abb91(66)=abb91(76)*abb91(66)
      abb91(109)=abb91(72)*abb91(66)
      abb91(34)=abb91(34)+abb91(109)+abb91(69)
      abb91(69)=abb91(8)*spak1e7
      abb91(34)=abb91(34)*abb91(69)
      abb91(34)=abb91(48)+abb91(138)+abb91(34)
      abb91(34)=spak4l5*abb91(34)
      abb91(48)=abb91(5)**2
      abb91(76)=abb91(48)*abb91(76)
      abb91(32)=abb91(76)*abb91(32)
      abb91(109)=abb91(32)*spbe7k1
      abb91(17)=abb91(48)*abb91(17)
      abb91(27)=abb91(48)*abb91(27)
      abb91(17)=abb91(17)-abb91(27)
      abb91(110)=abb91(17)*abb91(123)
      abb91(109)=abb91(109)+abb91(110)
      abb91(109)=abb91(109)*abb91(86)
      abb91(110)=abb91(21)*abb91(5)
      abb91(123)=-abb91(110)*abb91(96)
      abb91(138)=abb91(14)*abb91(5)
      abb91(139)=abb91(138)*spbe7k1
      abb91(123)=abb91(123)-abb91(139)
      abb91(110)=-abb91(110)*abb91(40)
      abb91(68)=-abb91(5)*abb91(68)
      abb91(68)=abb91(68)+abb91(110)
      abb91(68)=abb91(6)*abb91(68)
      abb91(68)=abb91(109)-2.0_ki*abb91(123)+abb91(68)
      abb91(68)=spak1k4*abb91(68)
      abb91(29)=-abb91(29)*abb91(17)
      abb91(29)=abb91(29)-abb91(32)
      abb91(32)=abb91(29)*abb91(86)
      abb91(77)=-abb91(5)*abb91(77)
      abb91(77)=abb91(77)+abb91(138)
      abb91(110)=abb91(6)*abb91(5)
      abb91(64)=-abb91(64)*abb91(110)
      abb91(64)=abb91(32)-2.0_ki*abb91(77)+abb91(64)
      abb91(64)=abb91(64)*abb91(35)
      abb91(64)=abb91(64)+abb91(68)
      abb91(64)=spal6e7*abb91(64)
      abb91(57)=abb91(57)*abb91(76)
      abb91(55)=abb91(17)*abb91(55)
      abb91(55)=abb91(57)+abb91(55)
      abb91(55)=abb91(55)*abb91(86)
      abb91(57)=abb91(60)*abb91(5)
      abb91(68)=-abb91(57)*abb91(96)
      abb91(138)=abb91(66)*abb91(5)
      abb91(68)=abb91(68)-abb91(138)
      abb91(57)=abb91(57)*abb91(40)
      abb91(137)=abb91(5)*abb91(137)
      abb91(57)=abb91(137)+abb91(57)
      abb91(57)=abb91(6)*abb91(57)
      abb91(57)=-abb91(55)+2.0_ki*abb91(68)+abb91(57)
      abb91(57)=spak1e7*abb91(57)
      abb91(47)=-abb91(47)*abb91(17)
      abb91(52)=abb91(76)*abb91(52)
      abb91(47)=abb91(47)-abb91(52)
      abb91(52)=abb91(47)*abb91(86)
      abb91(86)=-abb91(5)*abb91(111)
      abb91(97)=abb91(97)*abb91(110)
      abb91(97)=-abb91(52)+2.0_ki*abb91(86)+abb91(97)
      abb91(97)=abb91(97)*abb91(54)
      abb91(57)=abb91(97)+abb91(57)
      abb91(57)=spak4l6*abb91(57)
      abb91(30)=abb91(57)+abb91(64)+abb91(30)+abb91(34)
      abb91(30)=8.0_ki*abb91(30)
      abb91(34)=abb91(29)*abb91(8)
      abb91(57)=abb91(58)*abb91(9)
      abb91(64)=abb91(57)*spak2l5
      abb91(64)=abb91(34)+abb91(64)+abb91(15)
      abb91(97)=-spbk3k2*abb91(64)
      abb91(110)=-abb91(23)*abb91(20)
      abb91(137)=abb91(9)**2
      abb91(138)=abb91(137)*abb91(10)
      abb91(139)=abb91(138)*spak2l5
      abb91(140)=abb91(139)*spbk3k2
      abb91(141)=abb91(79)*abb91(140)
      abb91(142)=spal5l6*abb91(9)
      abb91(58)=abb91(58)*abb91(142)
      abb91(143)=spbl6k3*abb91(58)
      abb91(97)=abb91(110)+abb91(143)+abb91(141)+abb91(97)
      abb91(97)=spak3k4*abb91(97)
      abb91(110)=abb91(79)*abb91(139)
      abb91(110)=abb91(110)-abb91(64)
      abb91(110)=spbk2k1*spak1k4*abb91(110)
      abb91(94)=abb91(94)*abb91(76)
      abb91(92)=abb91(17)*abb91(92)
      abb91(92)=abb91(94)+abb91(92)
      abb91(92)=abb91(92)*abb91(8)
      abb91(94)=-abb91(4)*abb91(37)
      abb91(94)=abb91(94)-abb91(100)
      abb91(100)=abb91(9)*abb91(94)*spak2l5
      abb91(92)=abb91(92)-abb91(100)+abb91(91)
      abb91(92)=abb91(92)*spbk3k2
      abb91(50)=abb91(50)*abb91(140)
      abb91(50)=abb91(92)+abb91(50)
      abb91(92)=abb91(99)*abb91(20)
      abb91(92)=abb91(92)+abb91(50)
      abb91(92)=spak4k7*abb91(92)
      abb91(94)=abb91(142)*abb91(94)*abb91(98)
      abb91(92)=abb91(94)+abb91(92)
      abb91(92)=spbk7k1*abb91(92)
      abb91(100)=abb91(23)*spak1k4
      abb91(141)=abb91(105)*abb91(100)
      abb91(143)=-abb91(58)*abb91(103)
      abb91(92)=abb91(141)+abb91(143)+abb91(92)+abb91(110)+abb91(97)
      abb91(92)=16.0_ki*abb91(92)
      abb91(97)=abb91(67)*abb91(9)
      abb91(110)=abb91(97)*abb91(107)
      abb91(141)=abb91(44)*spak4e7
      abb91(110)=abb91(110)-abb91(141)
      abb91(143)=abb91(8)*abb91(47)*spak4e7
      abb91(138)=abb91(138)*abb91(107)
      abb91(144)=-abb91(111)*abb91(138)
      abb91(143)=abb91(144)+abb91(110)+abb91(143)
      abb91(143)=spbk3k2*abb91(143)
      abb91(144)=abb91(20)*abb91(41)
      abb91(67)=abb91(67)*abb91(142)
      abb91(145)=abb91(67)*spbl6k3
      abb91(144)=abb91(144)+abb91(145)
      abb91(146)=-spak4e7*abb91(144)
      abb91(143)=abb91(143)+abb91(146)
      abb91(143)=16.0_ki*abb91(143)
      abb91(146)=abb91(23)*abb91(35)
      abb91(16)=abb91(16)*spak1k4
      abb91(146)=abb91(16)+abb91(146)
      abb91(147)=abb91(146)*spal6e7
      abb91(61)=abb91(61)*spak1e7
      abb91(148)=abb91(41)*abb91(54)
      abb91(148)=abb91(61)+abb91(148)
      abb91(149)=abb91(148)*spak4l6
      abb91(147)=abb91(147)+abb91(149)
      abb91(149)=spak1k4*abb91(9)
      abb91(53)=abb91(53)*abb91(149)
      abb91(150)=abb91(57)*abb91(35)
      abb91(150)=abb91(53)-abb91(150)
      abb91(151)=abb91(150)*spal5e7
      abb91(152)=spak1e7*abb91(9)
      abb91(65)=abb91(65)*abb91(152)
      abb91(153)=abb91(97)*abb91(54)
      abb91(153)=abb91(65)-abb91(153)
      abb91(154)=abb91(153)*spak4l5
      abb91(151)=abb91(151)-abb91(154)
      abb91(154)=abb91(151)-2.0_ki*abb91(147)
      abb91(154)=16.0_ki*abb91(154)
      abb91(155)=-16.0_ki*abb91(147)
      abb91(34)=abb91(34)*abb91(129)
      abb91(156)=abb91(130)*abb91(23)
      abb91(157)=abb91(156)*spak4e7
      abb91(158)=abb91(15)*spak4e7
      abb91(159)=abb91(57)*abb91(107)
      abb91(158)=abb91(158)+abb91(159)
      abb91(158)=abb91(158)*spbe7k2
      abb91(159)=spbe7l6*spak4e7
      abb91(160)=abb91(58)*abb91(159)
      abb91(158)=abb91(158)+abb91(160)
      abb91(160)=abb91(79)*spbe7k2
      abb91(161)=abb91(138)*abb91(160)
      abb91(34)=-abb91(34)+abb91(157)+abb91(161)-abb91(158)
      abb91(34)=16.0_ki*abb91(34)
      abb91(157)=-abb91(21)*abb91(96)
      abb91(136)=-abb91(136)+abb91(157)
      abb91(136)=spak1k4*abb91(136)
      abb91(79)=-abb91(79)*abb91(35)
      abb91(79)=abb91(136)+abb91(79)
      abb91(79)=spal5e7*abb91(79)
      abb91(136)=abb91(60)*abb91(96)
      abb91(136)=abb91(66)+abb91(136)
      abb91(136)=spak1e7*abb91(136)
      abb91(157)=abb91(111)*abb91(54)
      abb91(136)=abb91(136)+abb91(157)
      abb91(136)=spak4l5*abb91(136)
      abb91(79)=abb91(79)+abb91(136)
      abb91(79)=abb91(137)*abb91(79)
      abb91(136)=abb91(77)*abb91(9)
      abb91(137)=abb91(136)*abb91(35)
      abb91(157)=abb91(123)*abb91(149)
      abb91(137)=abb91(137)+abb91(157)
      abb91(161)=-spal6e7*abb91(137)
      abb91(162)=abb91(86)*abb91(9)
      abb91(163)=abb91(162)*abb91(54)
      abb91(164)=abb91(68)*abb91(152)
      abb91(163)=abb91(163)+abb91(164)
      abb91(165)=spak4l6*abb91(163)
      abb91(79)=abb91(165)+abb91(161)+abb91(79)
      abb91(79)=abb91(10)*abb91(79)
      abb91(57)=spak3k4*abb91(57)
      abb91(136)=abb91(132)*abb91(136)
      abb91(57)=abb91(57)+abb91(136)
      abb91(57)=spbe7k3*abb91(57)
      abb91(136)=abb91(8)*abb91(157)
      abb91(53)=abb91(57)-abb91(53)+abb91(136)
      abb91(53)=spal5e7*abb91(53)
      abb91(57)=-spae7k7*abb91(97)
      abb91(136)=-abb91(133)*abb91(162)
      abb91(57)=abb91(57)+abb91(136)
      abb91(57)=spbk7k3*abb91(57)
      abb91(136)=-abb91(8)*abb91(164)
      abb91(57)=abb91(57)+abb91(65)+abb91(136)
      abb91(57)=spak4l5*abb91(57)
      abb91(65)=abb91(78)*abb91(48)
      abb91(22)=abb91(27)*abb91(22)
      abb91(14)=abb91(14)*abb91(48)
      abb91(22)=abb91(14)+abb91(65)-abb91(22)
      abb91(22)=abb91(22)*abb91(132)
      abb91(27)=abb91(23)*spak3k4
      abb91(22)=abb91(22)-abb91(27)
      abb91(22)=abb91(22)*spbe7k3
      abb91(21)=abb91(17)*abb91(21)
      abb91(14)=abb91(14)*spbe7k1
      abb91(14)=abb91(14)+abb91(21)
      abb91(14)=abb91(14)*abb91(135)
      abb91(14)=abb91(22)-abb91(14)-abb91(16)
      abb91(16)=-spal6e7*abb91(14)
      abb91(21)=abb91(17)*abb91(38)
      abb91(22)=abb91(51)*abb91(48)
      abb91(21)=abb91(22)+abb91(21)
      abb91(21)=abb91(21)*abb91(133)
      abb91(22)=abb91(41)*spae7k7
      abb91(21)=abb91(21)+abb91(22)
      abb91(21)=abb91(21)*spbk7k3
      abb91(38)=abb91(17)*abb91(60)
      abb91(48)=abb91(66)*abb91(48)
      abb91(38)=abb91(48)+abb91(38)
      abb91(38)=abb91(38)*abb91(69)
      abb91(21)=abb91(21)-abb91(38)+abb91(61)
      abb91(38)=spak4l6*abb91(21)
      abb91(16)=abb91(79)+abb91(38)+abb91(16)+abb91(53)+abb91(57)
      abb91(16)=16.0_ki*abb91(16)
      abb91(38)=spbk3k2*abb91(108)
      abb91(48)=-spbe7k2*abb91(85)
      abb91(51)=spbk3k2*abb91(84)
      abb91(48)=abb91(48)+abb91(51)
      abb91(48)=abb91(8)*abb91(114)*abb91(48)
      abb91(38)=abb91(48)+abb91(38)+abb91(80)+abb91(117)
      abb91(38)=8.0_ki*abb91(38)
      abb91(48)=-abb91(156)+abb91(144)
      abb91(48)=spak4e7*abb91(48)
      abb91(29)=abb91(29)*abb91(129)
      abb91(51)=abb91(47)*spbk3k2
      abb91(53)=-spak4e7*abb91(51)
      abb91(29)=abb91(29)+abb91(53)
      abb91(29)=abb91(8)*abb91(29)
      abb91(53)=-spbk3k2*abb91(110)
      abb91(57)=spbk3k2*abb91(111)
      abb91(57)=-abb91(160)+abb91(57)
      abb91(57)=abb91(57)*abb91(138)
      abb91(29)=abb91(57)+abb91(29)+abb91(53)+abb91(48)+abb91(158)
      abb91(29)=16.0_ki*abb91(29)
      abb91(48)=-spak4k7*abb91(59)
      abb91(48)=abb91(48)-abb91(93)
      abb91(48)=spbk7e7*abb91(48)
      abb91(53)=abb91(106)*spak2l5
      abb91(53)=abb91(53)-abb91(102)
      abb91(53)=abb91(53)*abb91(75)
      abb91(57)=abb91(112)*spak2l5
      abb91(53)=-abb91(113)+abb91(53)-abb91(57)
      abb91(57)=-spak1k4*abb91(53)
      abb91(59)=-abb91(45)*abb91(39)
      abb91(57)=abb91(59)+abb91(57)
      abb91(57)=spbk3k2*abb91(57)
      abb91(59)=spak1k4*abb91(89)
      abb91(39)=abb91(44)*abb91(39)
      abb91(60)=-spak4k7*spbk7e7*abb91(95)
      abb91(39)=abb91(39)+abb91(60)
      abb91(20)=abb91(39)*abb91(20)
      abb91(20)=abb91(20)+abb91(48)+abb91(59)+abb91(57)
      abb91(20)=4.0_ki*abb91(20)
      abb91(39)=abb91(97)*spak2l5
      abb91(39)=abb91(39)-abb91(44)
      abb91(48)=-spbk3k2*abb91(39)
      abb91(57)=abb91(111)*abb91(140)
      abb91(48)=abb91(145)+abb91(57)+abb91(48)
      abb91(48)=spak1k4*abb91(48)
      abb91(50)=-spak4k7*abb91(50)
      abb91(50)=-abb91(94)+abb91(50)
      abb91(50)=spbk7e7*abb91(50)
      abb91(51)=-abb91(135)*abb91(51)
      abb91(57)=abb91(41)*spak1k4
      abb91(59)=abb91(99)*spak4k7
      abb91(60)=abb91(59)*spbk7e7
      abb91(57)=abb91(57)-abb91(60)
      abb91(60)=spbl5k3*spal5l6*abb91(57)
      abb91(48)=abb91(60)+abb91(50)+abb91(51)+abb91(48)
      abb91(48)=8.0_ki*abb91(48)
      abb91(50)=abb91(146)*spal5e7
      abb91(51)=abb91(148)*spak4l5
      abb91(50)=abb91(50)+abb91(51)
      abb91(51)=-8.0_ki*abb91(50)
      abb91(18)=-abb91(32)-abb91(18)+abb91(77)
      abb91(18)=abb91(18)*abb91(35)
      abb91(32)=-abb91(109)+abb91(123)
      abb91(32)=spak1k4*abb91(32)
      abb91(18)=abb91(18)+abb91(121)+abb91(32)
      abb91(18)=spak2e7*abb91(18)
      abb91(32)=-abb91(52)+abb91(122)+abb91(86)
      abb91(32)=abb91(32)*abb91(54)
      abb91(52)=-abb91(55)+abb91(68)
      abb91(52)=spak1e7*abb91(52)
      abb91(32)=abb91(32)+abb91(118)+abb91(52)
      abb91(32)=spak2k4*abb91(32)
      abb91(52)=-spak1k4*abb91(120)
      abb91(55)=abb91(15)*abb91(35)
      abb91(52)=abb91(52)+abb91(55)
      abb91(52)=spal5e7*abb91(52)
      abb91(55)=spak1e7*abb91(62)
      abb91(60)=abb91(44)*abb91(54)
      abb91(55)=abb91(55)+abb91(60)
      abb91(55)=spak4l5*abb91(55)
      abb91(52)=abb91(52)+abb91(55)
      abb91(52)=spbl6l5*abb91(52)
      abb91(18)=abb91(52)+abb91(18)+abb91(32)
      abb91(18)=4.0_ki*abb91(18)
      abb91(27)=-spbl5k3*abb91(27)
      abb91(32)=spbl5k1*abb91(100)
      abb91(27)=abb91(32)+abb91(27)
      abb91(27)=spak2l5*abb91(27)
      abb91(32)=-spbl6k3*spak3k4
      abb91(32)=abb91(103)+abb91(32)
      abb91(32)=abb91(15)*abb91(32)
      abb91(52)=abb91(91)*abb91(98)
      abb91(55)=spbl5k3*spak2l5
      abb91(59)=abb91(59)*abb91(55)
      abb91(59)=abb91(52)+abb91(59)
      abb91(59)=spbk7k1*abb91(59)
      abb91(27)=abb91(59)+abb91(32)+abb91(27)
      abb91(27)=8.0_ki*abb91(27)
      abb91(32)=spbl5k3*abb91(41)*abb91(107)
      abb91(59)=abb91(141)*spbl6k3
      abb91(32)=abb91(32)+abb91(59)
      abb91(59)=-8.0_ki*abb91(32)
      abb91(60)=abb91(146)*spak2e7
      abb91(61)=abb91(148)*spak2k4
      abb91(60)=abb91(60)-abb91(61)
      abb91(60)=8.0_ki*abb91(60)
      abb91(61)=abb91(159)*abb91(15)
      abb91(23)=abb91(23)*spbe7l5
      abb91(62)=abb91(23)*abb91(107)
      abb91(61)=abb91(61)+abb91(62)
      abb91(62)=8.0_ki*abb91(61)
      abb91(65)=abb91(10)*abb91(137)
      abb91(14)=abb91(65)+abb91(14)
      abb91(14)=spak2e7*abb91(14)
      abb91(65)=abb91(10)*abb91(163)
      abb91(21)=abb91(65)+abb91(21)
      abb91(21)=spak2k4*abb91(21)
      abb91(14)=abb91(14)+abb91(21)
      abb91(14)=8.0_ki*abb91(14)
      abb91(21)=-abb91(61)+abb91(32)
      abb91(21)=8.0_ki*abb91(21)
      abb91(32)=abb91(57)*abb91(55)
      abb91(55)=spbl6k3*spak1k4*abb91(44)
      abb91(52)=-spbk7e7*abb91(52)
      abb91(32)=abb91(32)+abb91(55)+abb91(52)
      abb91(32)=4.0_ki*abb91(32)
      abb91(52)=spal6e7*abb91(126)
      abb91(55)=-spak4l6*abb91(128)
      abb91(57)=-abb91(82)*abb91(149)
      abb91(35)=abb91(9)*abb91(81)*abb91(35)
      abb91(35)=abb91(57)+abb91(35)
      abb91(35)=spal5e7*abb91(35)
      abb91(57)=abb91(125)*abb91(152)
      abb91(42)=abb91(9)*abb91(42)*abb91(54)
      abb91(42)=abb91(57)+abb91(42)
      abb91(42)=spak4l5*abb91(42)
      abb91(35)=abb91(35)+abb91(42)
      abb91(35)=spbl5k2*abb91(35)
      abb91(35)=abb91(35)+abb91(52)+abb91(55)
      abb91(35)=4.0_ki*abb91(35)
      abb91(42)=abb91(150)*spal6e7
      abb91(52)=abb91(153)*spak4l6
      abb91(42)=abb91(42)-abb91(52)
      abb91(52)=-8.0_ki*abb91(42)
      abb91(54)=-abb91(104)+abb91(56)
      abb91(54)=spak1e7*abb91(54)
      abb91(13)=-abb91(13)*abb91(69)
      abb91(55)=-spae7k7*abb91(106)
      abb91(56)=abb91(102)*abb91(133)
      abb91(55)=abb91(55)+abb91(56)
      abb91(55)=spbk7k3*abb91(55)
      abb91(13)=abb91(55)+abb91(54)+abb91(13)
      abb91(13)=spak2k4*abb91(6)*abb91(13)
      abb91(36)=-abb91(73)-abb91(36)
      abb91(36)=spak1k4*abb91(36)
      abb91(54)=-spak3k4*abb91(70)
      abb91(55)=-abb91(74)*abb91(132)
      abb91(54)=abb91(54)+abb91(55)
      abb91(54)=spbe7k3*abb91(54)
      abb91(55)=abb91(134)*abb91(135)
      abb91(36)=abb91(54)+abb91(36)+abb91(55)
      abb91(36)=spak2e7*abb91(6)*abb91(36)
      abb91(13)=abb91(36)+abb91(13)
      abb91(13)=4.0_ki*abb91(13)
      abb91(26)=spbe7k2*abb91(26)
      abb91(36)=-spbl6k2*abb91(131)
      abb91(26)=abb91(36)+abb91(88)+abb91(26)
      abb91(26)=spak3e7*abb91(26)
      abb91(36)=abb91(40)*abb91(7)
      abb91(12)=abb91(12)*abb91(7)
      abb91(54)=abb91(90)*abb91(12)
      abb91(36)=abb91(36)+abb91(54)
      abb91(36)=abb91(36)*abb91(9)
      abb91(28)=abb91(31)*abb91(28)
      abb91(49)=abb91(49)*abb91(12)
      abb91(28)=-abb91(49)+abb91(28)
      abb91(36)=abb91(36)+abb91(28)
      abb91(36)=abb91(36)*abb91(107)
      abb91(54)=abb91(54)*abb91(72)
      abb91(55)=abb91(72)*abb91(7)
      abb91(40)=abb91(40)*abb91(55)
      abb91(40)=abb91(54)+abb91(40)
      abb91(40)=abb91(40)*spak4e7
      abb91(36)=abb91(36)+abb91(40)
      abb91(36)=abb91(36)*abb91(75)
      abb91(40)=-abb91(7)*abb91(96)
      abb91(11)=abb91(11)*abb91(12)
      abb91(11)=abb91(40)-abb91(11)
      abb91(12)=abb91(11)*abb91(9)
      abb91(40)=-abb91(31)*abb91(37)
      abb91(43)=abb91(7)*abb91(43)
      abb91(54)=abb91(43)*spak2l6
      abb91(40)=abb91(40)-abb91(54)
      abb91(12)=abb91(12)-abb91(40)
      abb91(12)=abb91(12)*abb91(107)
      abb91(19)=-abb91(7)*abb91(19)
      abb91(54)=abb91(43)*abb91(5)
      abb91(19)=abb91(19)-abb91(54)
      abb91(24)=abb91(114)*abb91(19)*abb91(24)
      abb91(12)=abb91(36)+abb91(12)+abb91(24)
      abb91(12)=abb91(12)*spbe7k2
      abb91(24)=abb91(28)*abb91(75)
      abb91(24)=abb91(24)-abb91(40)
      abb91(24)=abb91(127)*abb91(24)*spak4e7
      abb91(28)=abb91(55)*abb91(37)
      abb91(36)=abb91(43)*abb91(72)
      abb91(28)=abb91(36)+abb91(28)
      abb91(36)=abb91(28)*abb91(130)*abb91(114)
      abb91(40)=abb91(129)*abb91(11)*abb91(101)
      abb91(12)=abb91(12)+abb91(24)+abb91(36)-abb91(40)
      abb91(24)=-spbk4k1*abb91(12)
      abb91(36)=spbl6k1*spak1e7
      abb91(40)=spbk7l6*spae7k7
      abb91(36)=abb91(36)-abb91(40)
      abb91(40)=-abb91(116)*abb91(36)
      abb91(54)=-spbl5k1*abb91(44)*abb91(63)
      abb91(55)=spbk7l5*spae7k7*abb91(122)
      abb91(40)=abb91(55)+abb91(54)+abb91(40)
      abb91(40)=spal5l6*abb91(40)
      abb91(54)=-spak1e7*abb91(53)
      abb91(45)=-abb91(45)*abb91(63)
      abb91(45)=abb91(45)+abb91(54)
      abb91(45)=spbk2k1*abb91(45)
      abb91(46)=abb91(46)+abb91(53)
      abb91(46)=spbk7k2*spae7k7*abb91(46)
      abb91(24)=abb91(46)+abb91(24)+abb91(45)+abb91(26)+abb91(40)
      abb91(24)=4.0_ki*abb91(24)
      abb91(26)=abb91(64)*spbe7k2
      abb91(40)=abb91(58)*spbe7l6
      abb91(45)=abb91(160)*abb91(139)
      abb91(26)=-abb91(45)+abb91(40)+abb91(26)-abb91(156)
      abb91(40)=spak3e7*abb91(26)
      abb91(37)=-abb91(7)*abb91(37)
      abb91(37)=abb91(37)-abb91(43)
      abb91(43)=abb91(9)*abb91(37)*abb91(107)
      abb91(45)=abb91(28)*spak4e7
      abb91(11)=abb91(11)*abb91(138)
      abb91(11)=-abb91(11)+abb91(43)+abb91(45)
      abb91(11)=abb91(11)*spbe7k2
      abb91(43)=abb91(49)*abb91(76)
      abb91(17)=abb91(17)*abb91(31)
      abb91(17)=abb91(43)+abb91(17)
      abb91(17)=abb91(17)*abb91(129)*abb91(8)
      abb91(31)=abb91(142)*abb91(37)*abb91(159)
      abb91(37)=abb91(19)*abb91(130)*spak4e7
      abb91(11)=abb91(11)-abb91(17)+abb91(31)+abb91(37)
      abb91(17)=spbk4k1*abb91(11)
      abb91(31)=abb91(139)*abb91(111)
      abb91(31)=abb91(31)-abb91(39)
      abb91(37)=spak1e7*abb91(31)
      abb91(39)=-abb91(47)*abb91(69)
      abb91(37)=abb91(39)+abb91(37)
      abb91(37)=spbk2k1*abb91(37)
      abb91(31)=-spae7k7*abb91(31)
      abb91(39)=abb91(47)*abb91(133)
      abb91(31)=abb91(39)+abb91(31)
      abb91(31)=spbk7k2*abb91(31)
      abb91(39)=-abb91(67)*abb91(36)
      abb91(41)=abb91(41)*spak1e7
      abb91(43)=-abb91(105)*abb91(41)
      abb91(22)=abb91(22)*spbk7l5
      abb91(45)=spal5l6*abb91(22)
      abb91(17)=abb91(45)+abb91(43)+abb91(31)+abb91(17)+abb91(37)+abb91(40)+abb&
      &91(39)
      abb91(17)=8.0_ki*abb91(17)
      abb91(15)=abb91(15)*spbe7l6
      abb91(23)=abb91(23)*spak2l5
      abb91(15)=abb91(15)+abb91(23)
      abb91(23)=-spak3e7*abb91(15)
      abb91(31)=-spbl5k1*abb91(41)
      abb91(22)=abb91(22)+abb91(31)
      abb91(22)=spak2l5*abb91(22)
      abb91(28)=abb91(28)*abb91(159)
      abb91(19)=spbe7l5*abb91(19)*abb91(107)
      abb91(19)=abb91(28)-abb91(19)
      abb91(28)=-spbk4k1*abb91(19)
      abb91(31)=-abb91(44)*abb91(36)
      abb91(22)=abb91(23)+abb91(28)+abb91(31)+abb91(22)
      abb91(22)=4.0_ki*abb91(22)
      abb91(12)=spbk4k3*abb91(12)
      abb91(23)=-spak1e7*abb91(71)
      abb91(25)=-abb91(25)*abb91(63)
      abb91(23)=abb91(25)+abb91(23)
      abb91(23)=spbe7k2*abb91(23)
      abb91(25)=-spak1e7*abb91(88)
      abb91(28)=abb91(63)*abb91(131)
      abb91(12)=abb91(12)+abb91(28)+abb91(25)+abb91(23)
      abb91(12)=4.0_ki*abb91(12)
      abb91(23)=-spak1e7*abb91(26)
      abb91(11)=-spbk4k3*abb91(11)
      abb91(11)=abb91(11)+abb91(23)
      abb91(11)=8.0_ki*abb91(11)
      abb91(15)=spak1e7*abb91(15)
      abb91(19)=spbk4k3*abb91(19)
      abb91(15)=abb91(19)+abb91(15)
      abb91(15)=4.0_ki*abb91(15)
      abb91(19)=4.0_ki*abb91(147)
      abb91(23)=4.0_ki*abb91(42)
      abb91(25)=4.0_ki*abb91(50)
      abb91(26)=4.0_ki*abb91(151)
      R2d91=0.0_ki
      rat2 = rat2 + R2d91
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='91' value='", &
          & R2d91, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd91h0