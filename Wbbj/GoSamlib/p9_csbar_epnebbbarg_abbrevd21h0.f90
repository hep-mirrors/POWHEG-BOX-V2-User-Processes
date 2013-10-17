module     p9_csbar_epnebbbarg_abbrevd21h0
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(147), public :: abb21
   complex(ki), public :: R2d21
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
      abb21(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb21(2)=1.0_ki/(-es71+es56-es567+es234)
      abb21(3)=NC**(-1)
      abb21(4)=es234**(-1)
      abb21(5)=es56**(-1)
      abb21(6)=spak2l5**(-1)
      abb21(7)=spbl5k2**(-1)
      abb21(8)=spbl6k2**(-1)
      abb21(9)=spak2l6**(-1)
      abb21(10)=1.0_ki/(-es71+es712-es12)
      abb21(11)=abb21(10)*spak4k7*spbk7e7
      abb21(12)=TR*gW
      abb21(12)=abb21(1)*abb21(12)**2*i_*CVSC*abb21(5)*abb21(2)
      abb21(13)=spbk2k1*abb21(12)
      abb21(14)=abb21(11)*abb21(13)*spak2e7
      abb21(15)=c3*mB
      abb21(16)=abb21(15)*abb21(8)
      abb21(17)=abb21(16)*abb21(14)
      abb21(18)=c4*mB
      abb21(19)=abb21(18)*abb21(8)
      abb21(20)=abb21(19)*abb21(14)
      abb21(21)=abb21(20)*abb21(3)
      abb21(17)=abb21(17)-abb21(21)
      abb21(17)=abb21(17)*abb21(3)
      abb21(21)=abb21(14)*NC
      abb21(22)=abb21(21)*abb21(16)
      abb21(22)=abb21(22)-abb21(20)
      abb21(17)=abb21(17)-abb21(22)
      abb21(17)=abb21(17)*spak1l5
      abb21(23)=abb21(15)*abb21(7)
      abb21(24)=abb21(23)*abb21(14)
      abb21(25)=abb21(18)*abb21(7)
      abb21(26)=abb21(25)*abb21(14)
      abb21(27)=abb21(26)*abb21(3)
      abb21(24)=abb21(24)-abb21(27)
      abb21(24)=abb21(24)*abb21(3)
      abb21(21)=abb21(21)*abb21(23)
      abb21(21)=abb21(21)-abb21(26)
      abb21(24)=abb21(24)-abb21(21)
      abb21(24)=abb21(24)*spak1l6
      abb21(17)=abb21(17)+abb21(24)
      abb21(17)=abb21(17)*spbk3k1
      abb21(24)=abb21(7)**2
      abb21(27)=mB**3
      abb21(28)=abb21(27)*c3
      abb21(29)=abb21(24)*abb21(28)
      abb21(30)=abb21(14)*spbk3k2
      abb21(31)=abb21(29)*abb21(30)
      abb21(27)=abb21(27)*c4
      abb21(32)=abb21(24)*abb21(27)
      abb21(33)=abb21(32)*abb21(30)
      abb21(34)=abb21(33)*abb21(3)
      abb21(31)=abb21(31)-abb21(34)
      abb21(31)=abb21(31)*abb21(3)
      abb21(34)=abb21(28)*NC
      abb21(35)=abb21(34)*abb21(24)
      abb21(36)=abb21(35)*abb21(30)
      abb21(36)=abb21(36)-abb21(33)
      abb21(31)=abb21(31)-abb21(36)
      abb21(31)=abb21(31)*abb21(6)
      abb21(37)=spak2k4*abb21(4)
      abb21(13)=abb21(13)*abb21(37)
      abb21(38)=spbk4k3*spak4e7
      abb21(39)=abb21(38)*abb21(13)
      abb21(40)=abb21(32)*abb21(39)
      abb21(41)=abb21(40)*abb21(3)
      abb21(42)=abb21(24)*abb21(39)
      abb21(43)=abb21(42)*abb21(28)
      abb21(41)=abb21(41)-abb21(43)
      abb21(41)=abb21(41)*abb21(3)
      abb21(44)=abb21(42)*abb21(34)
      abb21(44)=abb21(44)-abb21(40)
      abb21(41)=abb21(41)+abb21(44)
      abb21(45)=spbe7k2*abb21(6)
      abb21(41)=abb21(41)*abb21(45)
      abb21(31)=abb21(31)+abb21(41)
      abb21(31)=abb21(31)*spak2l6
      abb21(41)=abb21(8)**2
      abb21(46)=abb21(41)*abb21(28)
      abb21(47)=abb21(46)*abb21(30)
      abb21(48)=abb21(41)*abb21(27)
      abb21(49)=abb21(48)*abb21(30)
      abb21(50)=abb21(49)*abb21(3)
      abb21(47)=abb21(47)-abb21(50)
      abb21(47)=abb21(47)*abb21(3)
      abb21(50)=abb21(34)*abb21(41)
      abb21(51)=abb21(50)*abb21(30)
      abb21(51)=abb21(51)-abb21(49)
      abb21(47)=abb21(47)-abb21(51)
      abb21(47)=abb21(47)*abb21(9)
      abb21(52)=abb21(48)*abb21(39)
      abb21(53)=abb21(52)*abb21(3)
      abb21(54)=abb21(41)*abb21(39)
      abb21(55)=abb21(54)*abb21(28)
      abb21(53)=abb21(53)-abb21(55)
      abb21(53)=abb21(53)*abb21(3)
      abb21(56)=abb21(54)*abb21(34)
      abb21(56)=abb21(56)-abb21(52)
      abb21(53)=abb21(53)+abb21(56)
      abb21(57)=spbe7k2*abb21(9)
      abb21(53)=abb21(53)*abb21(57)
      abb21(47)=abb21(47)+abb21(53)
      abb21(47)=abb21(47)*spak2l5
      abb21(53)=abb21(8)*abb21(7)
      abb21(58)=abb21(53)*abb21(27)
      abb21(59)=abb21(58)*abb21(39)
      abb21(60)=abb21(59)*abb21(3)
      abb21(28)=abb21(53)*abb21(28)
      abb21(61)=abb21(28)*abb21(39)
      abb21(60)=abb21(60)-abb21(61)
      abb21(60)=abb21(60)*abb21(3)
      abb21(53)=abb21(34)*abb21(53)
      abb21(62)=abb21(53)*abb21(39)
      abb21(62)=abb21(62)-abb21(59)
      abb21(60)=abb21(60)+abb21(62)
      abb21(63)=2.0_ki*spbe7k2
      abb21(60)=abb21(60)*abb21(63)
      abb21(64)=spbk3k2*spak2e7
      abb21(13)=abb21(64)*abb21(13)
      abb21(65)=abb21(13)+abb21(39)
      abb21(66)=abb21(25)*abb21(65)
      abb21(67)=abb21(66)*abb21(3)
      abb21(68)=abb21(23)*abb21(65)
      abb21(67)=abb21(67)-abb21(68)
      abb21(67)=abb21(67)*abb21(3)
      abb21(69)=abb21(68)*NC
      abb21(69)=abb21(69)-abb21(66)
      abb21(67)=abb21(67)+abb21(69)
      abb21(70)=spak1l6*spbe7k1
      abb21(67)=abb21(67)*abb21(70)
      abb21(71)=abb21(19)*abb21(65)
      abb21(72)=abb21(71)*abb21(3)
      abb21(65)=abb21(16)*abb21(65)
      abb21(72)=abb21(72)-abb21(65)
      abb21(72)=abb21(72)*abb21(3)
      abb21(73)=abb21(65)*NC
      abb21(73)=abb21(73)-abb21(71)
      abb21(72)=abb21(72)+abb21(73)
      abb21(74)=spak1l5*spbe7k1
      abb21(72)=abb21(72)*abb21(74)
      abb21(75)=abb21(30)*abb21(58)
      abb21(76)=abb21(75)*abb21(3)
      abb21(77)=abb21(30)*abb21(28)
      abb21(76)=abb21(76)-abb21(77)
      abb21(76)=abb21(76)*abb21(3)
      abb21(78)=abb21(53)*abb21(30)
      abb21(78)=abb21(78)-abb21(75)
      abb21(76)=abb21(76)+abb21(78)
      abb21(65)=abb21(65)*spal5l6
      abb21(79)=abb21(3)*spal5l6
      abb21(71)=abb21(71)*abb21(79)
      abb21(65)=abb21(65)-abb21(71)
      abb21(65)=abb21(65)*abb21(3)
      abb21(71)=abb21(73)*spal5l6
      abb21(80)=abb21(65)-abb21(71)
      abb21(80)=abb21(80)*spbe7l6
      abb21(20)=abb21(20)*abb21(79)
      abb21(81)=abb21(14)*spal5l6
      abb21(82)=abb21(81)*abb21(16)
      abb21(20)=abb21(20)-abb21(82)
      abb21(20)=abb21(20)*abb21(3)
      abb21(82)=abb21(22)*spal5l6
      abb21(83)=abb21(20)+abb21(82)
      abb21(83)=abb21(83)*spbl6k3
      abb21(80)=abb21(80)-abb21(83)
      abb21(66)=abb21(66)*abb21(79)
      abb21(68)=abb21(68)*spal5l6
      abb21(66)=abb21(66)-abb21(68)
      abb21(66)=abb21(66)*abb21(3)
      abb21(68)=abb21(69)*spal5l6
      abb21(83)=abb21(66)+abb21(68)
      abb21(83)=abb21(83)*spbe7l5
      abb21(26)=abb21(26)*abb21(79)
      abb21(81)=abb21(81)*abb21(23)
      abb21(26)=abb21(26)-abb21(81)
      abb21(26)=abb21(26)*abb21(3)
      abb21(81)=abb21(21)*spal5l6
      abb21(84)=abb21(26)+abb21(81)
      abb21(84)=abb21(84)*spbl5k3
      abb21(83)=abb21(84)+abb21(83)
      abb21(17)=abb21(80)+abb21(83)-abb21(17)+abb21(60)-2.0_ki*abb21(76)-abb21(&
      &67)-abb21(72)+abb21(31)+abb21(47)
      abb21(31)=2.0_ki*abb21(17)
      abb21(47)=abb21(28)*abb21(13)
      abb21(47)=abb21(47)+abb21(61)
      abb21(60)=abb21(47)*NC
      abb21(67)=abb21(58)*abb21(13)
      abb21(67)=abb21(67)+abb21(59)
      abb21(60)=abb21(60)-abb21(67)
      abb21(72)=abb21(9)*spal5l6
      abb21(76)=abb21(72)*abb21(60)
      abb21(84)=abb21(32)*abb21(13)
      abb21(84)=abb21(84)+abb21(40)
      abb21(85)=abb21(29)*abb21(13)
      abb21(85)=abb21(85)+abb21(43)
      abb21(86)=abb21(85)*NC
      abb21(86)=abb21(86)-abb21(84)
      abb21(87)=abb21(6)*spal5l6
      abb21(88)=abb21(86)*abb21(87)
      abb21(76)=abb21(76)+abb21(88)
      abb21(76)=abb21(76)*spbe7l5
      abb21(88)=abb21(87)*abb21(60)
      abb21(89)=abb21(48)*abb21(13)
      abb21(89)=abb21(89)+abb21(52)
      abb21(13)=abb21(46)*abb21(13)
      abb21(13)=abb21(13)+abb21(55)
      abb21(90)=abb21(13)*NC
      abb21(90)=abb21(90)-abb21(89)
      abb21(91)=abb21(90)*abb21(72)
      abb21(88)=abb21(88)+abb21(91)
      abb21(88)=abb21(88)*spbe7l6
      abb21(76)=abb21(76)-abb21(88)
      abb21(88)=abb21(60)*abb21(9)
      abb21(91)=abb21(86)*abb21(6)
      abb21(91)=abb21(91)+abb21(88)
      abb21(91)=abb21(91)*abb21(70)
      abb21(92)=abb21(60)*abb21(6)
      abb21(93)=abb21(90)*abb21(9)
      abb21(93)=abb21(93)+abb21(92)
      abb21(93)=abb21(93)*abb21(74)
      abb21(91)=abb21(91)+abb21(93)
      abb21(93)=c3*abb21(8)
      abb21(94)=abb21(24)*abb21(93)
      abb21(95)=mB**5
      abb21(96)=abb21(95)*abb21(30)
      abb21(97)=abb21(96)*NC
      abb21(98)=abb21(94)*abb21(97)
      abb21(99)=abb21(96)*c4
      abb21(24)=abb21(24)*abb21(8)
      abb21(100)=abb21(24)*abb21(99)
      abb21(98)=abb21(98)-abb21(100)
      abb21(100)=abb21(6)*abb21(98)
      abb21(101)=c3*abb21(7)
      abb21(102)=abb21(41)*abb21(101)
      abb21(103)=abb21(102)*abb21(97)
      abb21(41)=abb21(41)*abb21(7)
      abb21(104)=abb21(41)*abb21(99)
      abb21(103)=abb21(103)-abb21(104)
      abb21(104)=abb21(9)*abb21(103)
      abb21(100)=abb21(100)+abb21(104)
      abb21(93)=abb21(42)*abb21(93)
      abb21(104)=abb21(95)*NC
      abb21(105)=abb21(93)*abb21(104)
      abb21(42)=abb21(42)*abb21(8)
      abb21(106)=abb21(95)*c4
      abb21(107)=abb21(42)*abb21(106)
      abb21(105)=abb21(105)-abb21(107)
      abb21(107)=-abb21(6)*abb21(105)
      abb21(101)=abb21(54)*abb21(101)
      abb21(108)=abb21(101)*abb21(104)
      abb21(54)=abb21(54)*abb21(7)
      abb21(109)=abb21(54)*abb21(106)
      abb21(108)=abb21(108)-abb21(109)
      abb21(109)=-abb21(9)*abb21(108)
      abb21(107)=abb21(107)+abb21(109)
      abb21(109)=6.0_ki*spbe7k2
      abb21(107)=abb21(107)*abb21(109)
      abb21(110)=abb21(7)**3
      abb21(111)=abb21(99)*abb21(110)
      abb21(112)=abb21(110)*c3
      abb21(113)=abb21(112)*abb21(97)
      abb21(111)=abb21(111)-abb21(113)
      abb21(104)=abb21(104)*c3
      abb21(104)=abb21(104)-abb21(106)
      abb21(113)=abb21(110)*abb21(39)
      abb21(114)=abb21(104)*abb21(113)
      abb21(115)=-spbe7k2*abb21(114)
      abb21(115)=-abb21(111)+abb21(115)
      abb21(116)=2.0_ki*spak2l6
      abb21(117)=abb21(6)**2
      abb21(115)=abb21(116)*abb21(117)*abb21(115)
      abb21(118)=abb21(8)**3
      abb21(119)=abb21(99)*abb21(118)
      abb21(120)=abb21(118)*c3
      abb21(97)=abb21(120)*abb21(97)
      abb21(97)=abb21(119)-abb21(97)
      abb21(39)=abb21(118)*abb21(39)
      abb21(104)=abb21(104)*abb21(39)
      abb21(119)=-spbe7k2*abb21(104)
      abb21(119)=-abb21(97)+abb21(119)
      abb21(121)=2.0_ki*spak2l5
      abb21(122)=abb21(9)**2
      abb21(119)=abb21(121)*abb21(122)*abb21(119)
      abb21(100)=abb21(119)+abb21(115)+abb21(107)+6.0_ki*abb21(100)+abb21(91)-2&
      &.0_ki*abb21(76)
      abb21(100)=es12*abb21(100)
      abb21(107)=3.0_ki*abb21(78)
      abb21(115)=abb21(71)*spbe7l6
      abb21(119)=abb21(70)*abb21(69)
      abb21(123)=abb21(51)*abb21(9)
      abb21(124)=abb21(56)*abb21(57)
      abb21(124)=abb21(124)-abb21(123)
      abb21(121)=-abb21(121)*abb21(124)
      abb21(121)=abb21(121)+2.0_ki*abb21(115)+abb21(107)+abb21(119)
      abb21(121)=spak1l6*abb21(121)
      abb21(125)=abb21(36)*abb21(6)
      abb21(126)=spak1l6*abb21(125)
      abb21(127)=spak1l5*abb21(6)
      abb21(128)=-abb21(78)*abb21(127)
      abb21(129)=abb21(62)*abb21(127)
      abb21(130)=spak1l6*abb21(6)
      abb21(131)=-abb21(44)*abb21(130)
      abb21(129)=abb21(131)+abb21(129)
      abb21(129)=spbe7k2*abb21(129)
      abb21(126)=abb21(129)+abb21(126)+abb21(128)
      abb21(126)=spak2l6*abb21(126)
      abb21(128)=abb21(73)*abb21(70)
      abb21(51)=abb21(128)-abb21(51)
      abb21(51)=spak1l5*abb21(51)
      abb21(128)=abb21(68)*spak1l6
      abb21(71)=abb21(71)*spak1l5
      abb21(71)=abb21(128)-abb21(71)
      abb21(128)=-spbe7l5*abb21(71)
      abb21(129)=3.0_ki*abb21(62)
      abb21(131)=-spak1l6*abb21(129)
      abb21(132)=spak1l5*abb21(56)
      abb21(131)=abb21(131)+abb21(132)
      abb21(131)=spbe7k2*abb21(131)
      abb21(132)=-abb21(21)*spak1l6**2
      abb21(133)=abb21(22)*spak1l5
      abb21(134)=-spak1l6*abb21(133)
      abb21(132)=abb21(132)+abb21(134)
      abb21(132)=spbk3k1*abb21(132)
      abb21(51)=abb21(132)+abb21(126)+abb21(131)+abb21(128)+abb21(51)+abb21(121)
      abb21(51)=spbl6k1*abb21(51)
      abb21(121)=abb21(74)*abb21(73)
      abb21(119)=abb21(121)+abb21(119)
      abb21(68)=abb21(68)*spbe7l5
      abb21(121)=abb21(44)*abb21(45)
      abb21(121)=abb21(121)-abb21(125)
      abb21(116)=-abb21(116)*abb21(121)
      abb21(107)=abb21(116)-2.0_ki*abb21(68)+abb21(107)+abb21(119)
      abb21(107)=spak1l5*abb21(107)
      abb21(116)=spak1l6*abb21(9)
      abb21(125)=-abb21(78)*abb21(116)
      abb21(123)=spak1l5*abb21(123)
      abb21(126)=abb21(62)*abb21(116)
      abb21(128)=spak1l5*abb21(9)
      abb21(56)=-abb21(56)*abb21(128)
      abb21(56)=abb21(126)+abb21(56)
      abb21(56)=spbe7k2*abb21(56)
      abb21(56)=abb21(56)+abb21(125)+abb21(123)
      abb21(56)=spak2l5*abb21(56)
      abb21(71)=-spbe7l6*abb21(71)
      abb21(36)=-spak1l6*abb21(36)
      abb21(123)=-spak1l5*abb21(129)
      abb21(44)=spak1l6*abb21(44)
      abb21(44)=abb21(44)+abb21(123)
      abb21(44)=spbe7k2*abb21(44)
      abb21(123)=abb21(21)*spak1l6
      abb21(125)=abb21(123)+abb21(133)
      abb21(126)=spbk3k1*spak1l5
      abb21(129)=-abb21(125)*abb21(126)
      abb21(36)=abb21(129)+abb21(56)+abb21(44)+abb21(71)+abb21(36)+abb21(107)
      abb21(36)=spbl5k1*abb21(36)
      abb21(44)=abb21(53)*abb21(14)
      abb21(56)=abb21(58)*abb21(14)
      abb21(44)=abb21(44)-abb21(56)
      abb21(71)=abb21(87)*abb21(44)
      abb21(107)=abb21(50)*abb21(14)
      abb21(129)=abb21(48)*abb21(14)
      abb21(107)=abb21(107)-abb21(129)
      abb21(131)=abb21(107)*abb21(72)
      abb21(71)=abb21(71)+abb21(131)
      abb21(131)=2.0_ki*es12
      abb21(132)=abb21(71)*abb21(131)
      abb21(134)=abb21(53)-abb21(58)
      abb21(135)=spak2e7*abb21(12)
      abb21(136)=abb21(135)*abb21(11)
      abb21(137)=spbk2k1**2
      abb21(138)=abb21(137)*abb21(136)
      abb21(139)=-abb21(138)*abb21(134)
      abb21(140)=spbl6k1*abb21(82)
      abb21(140)=2.0_ki*abb21(140)+abb21(139)
      abb21(140)=spak1l6*abb21(140)
      abb21(141)=abb21(35)-abb21(32)
      abb21(142)=abb21(141)*abb21(138)
      abb21(143)=-abb21(142)*abb21(130)
      abb21(144)=abb21(139)*abb21(127)
      abb21(143)=abb21(143)+abb21(144)
      abb21(143)=spak2l6*abb21(143)
      abb21(144)=abb21(81)*spak1l6
      abb21(145)=abb21(133)*spal5l6
      abb21(144)=abb21(144)-abb21(145)
      abb21(145)=-spbl5k1*abb21(144)
      abb21(146)=abb21(50)-abb21(48)
      abb21(138)=abb21(146)*abb21(138)
      abb21(147)=-spak1l5*abb21(138)
      abb21(132)=abb21(145)+abb21(132)+abb21(143)+abb21(147)+abb21(140)
      abb21(132)=spbl6k3*abb21(132)
      abb21(72)=abb21(72)*abb21(44)
      abb21(140)=abb21(35)*abb21(14)
      abb21(143)=abb21(32)*abb21(14)
      abb21(140)=abb21(140)-abb21(143)
      abb21(87)=abb21(140)*abb21(87)
      abb21(72)=abb21(72)+abb21(87)
      abb21(87)=-abb21(72)*abb21(131)
      abb21(131)=spbl5k1*abb21(81)
      abb21(131)=-2.0_ki*abb21(131)+abb21(139)
      abb21(131)=spak1l5*abb21(131)
      abb21(139)=abb21(139)*abb21(116)
      abb21(138)=-abb21(138)*abb21(128)
      abb21(138)=abb21(139)+abb21(138)
      abb21(138)=spak2l5*abb21(138)
      abb21(139)=-spbl6k1*abb21(144)
      abb21(142)=-spak1l6*abb21(142)
      abb21(87)=abb21(139)+abb21(87)+abb21(138)+abb21(142)+abb21(131)
      abb21(87)=spbl5k3*abb21(87)
      abb21(12)=abb21(37)*abb21(12)
      abb21(37)=abb21(12)*abb21(64)
      abb21(12)=abb21(12)*abb21(38)
      abb21(38)=abb21(37)+abb21(12)
      abb21(64)=abb21(137)*abb21(38)
      abb21(131)=abb21(64)*abb21(32)
      abb21(137)=abb21(64)*NC
      abb21(138)=abb21(29)*abb21(137)
      abb21(131)=abb21(131)-abb21(138)
      abb21(130)=abb21(131)*abb21(130)
      abb21(138)=abb21(28)*abb21(137)
      abb21(139)=abb21(58)*abb21(64)
      abb21(138)=abb21(138)-abb21(139)
      abb21(127)=-abb21(138)*abb21(127)
      abb21(127)=abb21(130)+abb21(127)
      abb21(127)=spak2l6*abb21(127)
      abb21(130)=-spak1l6*abb21(138)
      abb21(64)=abb21(64)*abb21(48)
      abb21(137)=abb21(46)*abb21(137)
      abb21(64)=abb21(64)-abb21(137)
      abb21(137)=spak1l5*abb21(64)
      abb21(127)=abb21(127)+abb21(130)+abb21(137)
      abb21(127)=spbe7l6*abb21(127)
      abb21(116)=-abb21(138)*abb21(116)
      abb21(64)=abb21(64)*abb21(128)
      abb21(64)=abb21(116)+abb21(64)
      abb21(64)=spak2l5*abb21(64)
      abb21(116)=spak1l6*abb21(131)
      abb21(128)=-spak1l5*abb21(138)
      abb21(64)=abb21(64)+abb21(116)+abb21(128)
      abb21(64)=spbe7l5*abb21(64)
      abb21(116)=abb21(44)*abb21(6)
      abb21(128)=abb21(107)*abb21(9)
      abb21(116)=abb21(116)+abb21(128)
      abb21(116)=abb21(116)*spak1l5
      abb21(128)=abb21(44)*abb21(9)
      abb21(130)=abb21(140)*abb21(6)
      abb21(128)=abb21(128)+abb21(130)
      abb21(128)=abb21(128)*spak1l6
      abb21(116)=abb21(116)+abb21(128)
      abb21(128)=spbk3k1*es12
      abb21(130)=-abb21(116)*abb21(128)
      abb21(36)=abb21(87)+abb21(132)+abb21(36)+abb21(51)+abb21(130)+abb21(100)+&
      &abb21(64)+abb21(127)
      abb21(36)=2.0_ki*abb21(36)
      abb21(51)=abb21(124)*spak2l5
      abb21(64)=abb21(121)*spak2l6
      abb21(87)=abb21(125)*spbk3k1
      abb21(62)=abb21(63)*abb21(62)
      abb21(51)=-abb21(51)-abb21(64)+abb21(119)-abb21(62)-abb21(87)+2.0_ki*abb2&
      &1(78)
      abb21(62)=abb21(81)*spbl5k3
      abb21(62)=-abb21(62)+abb21(51)-abb21(68)
      abb21(63)=abb21(80)-abb21(62)
      abb21(63)=8.0_ki*abb21(63)
      abb21(64)=abb21(82)*spbl6k3
      abb21(64)=abb21(64)+abb21(115)
      abb21(51)=abb21(83)-abb21(51)-abb21(64)
      abb21(51)=8.0_ki*abb21(51)
      abb21(68)=-abb21(95)*abb21(93)
      abb21(78)=abb21(106)*abb21(3)
      abb21(42)=abb21(78)*abb21(42)
      abb21(42)=abb21(68)+abb21(42)
      abb21(42)=abb21(3)*abb21(42)
      abb21(42)=abb21(42)+abb21(105)
      abb21(42)=abb21(6)*abb21(42)
      abb21(68)=-abb21(95)*abb21(101)
      abb21(54)=abb21(78)*abb21(54)
      abb21(54)=abb21(68)+abb21(54)
      abb21(54)=abb21(3)*abb21(54)
      abb21(54)=abb21(54)+abb21(108)
      abb21(54)=abb21(9)*abb21(54)
      abb21(42)=abb21(42)+abb21(54)
      abb21(42)=spbe7k2*abb21(42)
      abb21(54)=abb21(96)*abb21(94)
      abb21(68)=abb21(99)*abb21(3)
      abb21(24)=-abb21(68)*abb21(24)
      abb21(24)=abb21(54)+abb21(24)
      abb21(24)=abb21(3)*abb21(24)
      abb21(24)=abb21(24)-abb21(98)
      abb21(24)=abb21(6)*abb21(24)
      abb21(54)=abb21(96)*abb21(102)
      abb21(41)=-abb21(68)*abb21(41)
      abb21(41)=abb21(54)+abb21(41)
      abb21(41)=abb21(3)*abb21(41)
      abb21(41)=abb21(41)-abb21(103)
      abb21(41)=abb21(9)*abb21(41)
      abb21(24)=abb21(42)+abb21(24)+abb21(41)
      abb21(41)=spbk3k1*abb21(116)
      abb21(42)=abb21(95)*c3
      abb21(42)=abb21(42)-abb21(78)
      abb21(42)=abb21(42)*abb21(3)
      abb21(54)=-abb21(113)*abb21(42)
      abb21(54)=abb21(54)+abb21(114)
      abb21(54)=spbe7k2*abb21(54)
      abb21(78)=abb21(96)*abb21(112)
      abb21(80)=-abb21(110)*abb21(68)
      abb21(78)=abb21(78)+abb21(80)
      abb21(78)=abb21(3)*abb21(78)
      abb21(54)=abb21(54)+abb21(78)+abb21(111)
      abb21(54)=spak2l6*abb21(117)*abb21(54)
      abb21(39)=-abb21(39)*abb21(42)
      abb21(39)=abb21(39)+abb21(104)
      abb21(39)=spbe7k2*abb21(39)
      abb21(42)=abb21(96)*abb21(120)
      abb21(68)=-abb21(118)*abb21(68)
      abb21(42)=abb21(42)+abb21(68)
      abb21(42)=abb21(3)*abb21(42)
      abb21(39)=abb21(39)+abb21(42)+abb21(97)
      abb21(39)=spak2l5*abb21(122)*abb21(39)
      abb21(42)=-spbl6k3*abb21(71)
      abb21(68)=spbl5k3*abb21(72)
      abb21(24)=abb21(68)+abb21(42)+abb21(41)+abb21(39)+abb21(54)-abb21(91)+abb&
      &21(76)+3.0_ki*abb21(24)
      abb21(24)=8.0_ki*abb21(24)
      abb21(39)=-abb21(62)-abb21(64)
      abb21(39)=8.0_ki*abb21(39)
      abb21(17)=-4.0_ki*abb21(17)
      abb21(41)=spbe7l6*abb21(66)
      abb21(42)=spbl6k3*abb21(26)
      abb21(41)=abb21(41)+abb21(42)
      abb21(41)=4.0_ki*abb21(41)
      abb21(42)=abb21(136)*spbk3k2
      abb21(54)=abb21(42)*abb21(53)
      abb21(62)=abb21(42)*abb21(58)
      abb21(54)=abb21(54)-abb21(62)
      abb21(64)=abb21(54)*abb21(9)
      abb21(53)=abb21(53)*abb21(12)
      abb21(68)=abb21(58)*abb21(12)
      abb21(53)=abb21(53)-abb21(68)
      abb21(71)=-abb21(53)*abb21(57)
      abb21(71)=abb21(64)+abb21(71)
      abb21(71)=spak2l5*abb21(71)
      abb21(72)=abb21(42)*abb21(35)
      abb21(76)=abb21(42)*abb21(32)
      abb21(72)=abb21(72)-abb21(76)
      abb21(23)=abb21(23)*abb21(38)
      abb21(78)=abb21(23)*NC
      abb21(25)=abb21(25)*abb21(38)
      abb21(78)=abb21(78)-abb21(25)
      abb21(80)=abb21(78)*abb21(74)
      abb21(81)=abb21(78)*spal5l6
      abb21(82)=spbe7l6*abb21(81)
      abb21(35)=abb21(35)*abb21(12)
      abb21(83)=abb21(32)*abb21(12)
      abb21(35)=abb21(35)-abb21(83)
      abb21(87)=-spbe7k2*abb21(35)
      abb21(91)=abb21(11)*abb21(7)
      abb21(93)=abb21(135)*abb21(91)
      abb21(94)=abb21(15)*NC
      abb21(95)=abb21(94)*abb21(93)
      abb21(96)=abb21(93)*abb21(18)
      abb21(95)=abb21(95)-abb21(96)
      abb21(97)=-abb21(95)*abb21(126)
      abb21(71)=abb21(97)+abb21(71)+abb21(87)+abb21(82)+abb21(80)+abb21(72)
      abb21(71)=spbl5k1*abb21(71)
      abb21(67)=abb21(67)*abb21(3)
      abb21(47)=abb21(67)-abb21(47)
      abb21(67)=4.0_ki*abb21(3)
      abb21(80)=abb21(47)*abb21(67)
      abb21(60)=abb21(80)+abb21(60)
      abb21(80)=abb21(84)*abb21(3)
      abb21(80)=abb21(80)-abb21(85)
      abb21(82)=2.0_ki*abb21(3)
      abb21(84)=abb21(80)*abb21(82)
      abb21(85)=abb21(84)+abb21(86)
      abb21(87)=spak2l6*abb21(6)
      abb21(85)=abb21(85)*abb21(87)
      abb21(85)=abb21(85)+abb21(60)
      abb21(85)=spbe7l6*abb21(85)
      abb21(32)=-abb21(37)*abb21(32)
      abb21(97)=abb21(38)*NC
      abb21(98)=abb21(29)*abb21(97)
      abb21(32)=abb21(98)-abb21(83)+abb21(32)
      abb21(32)=abb21(6)*abb21(32)
      abb21(98)=abb21(37)*abb21(28)
      abb21(99)=abb21(28)*abb21(12)
      abb21(98)=abb21(98)+abb21(99)
      abb21(98)=abb21(98)*NC
      abb21(58)=abb21(37)*abb21(58)
      abb21(58)=abb21(98)-abb21(58)-abb21(68)
      abb21(98)=abb21(9)*abb21(58)
      abb21(32)=abb21(32)+abb21(98)
      abb21(98)=es12*spbe7k1
      abb21(32)=abb21(32)*abb21(98)
      abb21(100)=abb21(35)*abb21(45)
      abb21(101)=abb21(72)*abb21(6)
      abb21(100)=abb21(100)-abb21(101)
      abb21(100)=abb21(100)*spak2l6
      abb21(102)=abb21(78)*abb21(70)
      abb21(81)=abb21(81)*spbe7l5
      abb21(103)=spbk3k1*spak1l6
      abb21(104)=abb21(103)*abb21(95)
      abb21(81)=-abb21(100)-abb21(81)+abb21(102)-abb21(104)
      abb21(100)=abb21(53)*spbe7k2
      abb21(100)=abb21(100)-abb21(54)
      abb21(102)=-abb21(100)+abb21(81)
      abb21(102)=spbl6k1*abb21(102)
      abb21(104)=abb21(28)*abb21(14)
      abb21(56)=abb21(56)*abb21(3)
      abb21(56)=abb21(104)-abb21(56)
      abb21(67)=abb21(56)*abb21(67)
      abb21(67)=abb21(67)-abb21(44)
      abb21(104)=abb21(29)*abb21(14)
      abb21(105)=abb21(143)*abb21(3)
      abb21(104)=abb21(104)-abb21(105)
      abb21(105)=abb21(104)*abb21(82)
      abb21(105)=-abb21(105)+abb21(140)
      abb21(105)=abb21(105)*abb21(87)
      abb21(14)=abb21(46)*abb21(14)
      abb21(106)=abb21(129)*abb21(3)
      abb21(14)=abb21(14)-abb21(106)
      abb21(106)=spak2l5*abb21(9)
      abb21(108)=abb21(14)*abb21(106)
      abb21(110)=-abb21(82)*abb21(108)
      abb21(111)=abb21(95)*spal5l6
      abb21(112)=spbl5k1*abb21(111)
      abb21(105)=abb21(112)+abb21(110)+abb21(105)-abb21(67)
      abb21(105)=spbl6k3*abb21(105)
      abb21(88)=spbe7l5*abb21(88)
      abb21(89)=abb21(89)*abb21(3)
      abb21(13)=abb21(89)-abb21(13)
      abb21(89)=abb21(13)*abb21(82)
      abb21(110)=spbe7l6*abb21(9)*abb21(89)
      abb21(88)=abb21(110)+abb21(88)
      abb21(88)=spak2l5*abb21(88)
      abb21(110)=abb21(44)*abb21(106)
      abb21(112)=-spbl6k1*abb21(111)
      abb21(110)=abb21(112)+abb21(110)+abb21(140)
      abb21(110)=spbl5k3*abb21(110)
      abb21(86)=spbe7l5*abb21(86)
      abb21(112)=-abb21(6)*abb21(136)*abb21(141)
      abb21(113)=abb21(134)*abb21(136)
      abb21(114)=-abb21(9)*abb21(113)
      abb21(112)=abb21(112)+abb21(114)
      abb21(112)=abb21(112)*abb21(128)
      abb21(32)=abb21(110)+abb21(105)+abb21(71)+abb21(102)+abb21(112)+abb21(32)&
      &+abb21(88)+abb21(86)+abb21(85)
      abb21(32)=2.0_ki*abb21(32)
      abb21(25)=abb21(25)*abb21(3)
      abb21(23)=abb21(25)-abb21(23)
      abb21(23)=abb21(23)*abb21(3)
      abb21(23)=abb21(23)-abb21(78)
      abb21(25)=-spbe7k1*abb21(23)
      abb21(71)=abb21(93)*abb21(15)
      abb21(78)=abb21(96)*abb21(3)
      abb21(71)=abb21(71)-abb21(78)
      abb21(71)=abb21(71)*abb21(3)
      abb21(71)=abb21(71)+abb21(95)
      abb21(78)=-spbk3k1*abb21(71)
      abb21(25)=abb21(25)+abb21(78)
      abb21(25)=8.0_ki*abb21(25)
      abb21(78)=spbl5k3*abb21(111)
      abb21(78)=abb21(78)-abb21(81)
      abb21(78)=spbl6k2*abb21(78)
      abb21(81)=abb21(15)*abb21(97)
      abb21(85)=abb21(18)*abb21(38)
      abb21(81)=abb21(81)-abb21(85)
      abb21(85)=-abb21(81)*abb21(74)
      abb21(27)=abb21(34)-abb21(27)
      abb21(34)=-abb21(12)*abb21(27)
      abb21(86)=abb21(34)*abb21(8)
      abb21(88)=-abb21(86)*abb21(57)
      abb21(27)=-abb21(27)*abb21(135)*spbk3k2
      abb21(11)=abb21(11)*abb21(8)
      abb21(93)=-abb21(11)*abb21(27)
      abb21(95)=-abb21(9)*abb21(93)
      abb21(88)=abb21(95)+abb21(88)
      abb21(88)=spak2l5*abb21(88)
      abb21(27)=-abb21(91)*abb21(27)
      abb21(78)=abb21(78)+abb21(88)-2.0_ki*abb21(27)+abb21(85)
      abb21(85)=abb21(6)*abb21(35)
      abb21(88)=abb21(9)*abb21(53)
      abb21(85)=abb21(85)+abb21(88)
      abb21(85)=spbe7k2*abb21(85)
      abb21(64)=abb21(85)-abb21(101)-abb21(64)
      abb21(64)=es12*abb21(64)
      abb21(85)=3.0_ki*spal5l6
      abb21(88)=abb21(81)*abb21(85)
      abb21(91)=spak1l6*abb21(69)
      abb21(91)=-abb21(88)+abb21(91)
      abb21(91)=spbe7l6*abb21(91)
      abb21(69)=spbe7l5*abb21(69)
      abb21(21)=spbl5k3*abb21(21)
      abb21(21)=abb21(21)+abb21(69)
      abb21(21)=spak1l5*abb21(21)
      abb21(69)=abb21(18)-abb21(94)
      abb21(69)=abb21(136)*abb21(69)
      abb21(85)=abb21(69)*abb21(85)
      abb21(95)=abb21(85)+abb21(123)
      abb21(95)=spbl6k3*abb21(95)
      abb21(34)=abb21(34)*abb21(7)
      abb21(96)=-abb21(34)*abb21(109)
      abb21(69)=3.0_ki*abb21(69)
      abb21(101)=-abb21(126)*abb21(69)
      abb21(21)=abb21(95)+abb21(101)+abb21(64)+abb21(96)+abb21(91)+abb21(21)+3.&
      &0_ki*abb21(78)
      abb21(21)=2.0_ki*abb21(21)
      abb21(64)=spbe7l6*abb21(23)
      abb21(78)=-spbl6k3*abb21(71)
      abb21(64)=abb21(64)+abb21(78)
      abb21(64)=4.0_ki*abb21(64)
      abb21(78)=spbe7l5*abb21(65)
      abb21(91)=-spbl5k3*abb21(20)
      abb21(78)=abb21(78)+abb21(91)
      abb21(78)=4.0_ki*abb21(78)
      abb21(91)=abb21(54)*abb21(6)
      abb21(95)=-abb21(53)*abb21(45)
      abb21(95)=abb21(91)+abb21(95)
      abb21(95)=spak2l6*abb21(95)
      abb21(96)=abb21(50)*abb21(42)
      abb21(101)=abb21(42)*abb21(48)
      abb21(96)=abb21(96)-abb21(101)
      abb21(16)=abb21(16)*abb21(38)
      abb21(102)=abb21(16)*NC
      abb21(19)=abb21(19)*abb21(38)
      abb21(38)=abb21(102)-abb21(19)
      abb21(102)=abb21(38)*abb21(70)
      abb21(105)=abb21(38)*spal5l6
      abb21(110)=-spbe7l5*abb21(105)
      abb21(50)=abb21(50)*abb21(12)
      abb21(111)=abb21(48)*abb21(12)
      abb21(50)=abb21(50)-abb21(111)
      abb21(112)=-spbe7k2*abb21(50)
      abb21(11)=abb21(135)*abb21(11)
      abb21(94)=abb21(94)*abb21(11)
      abb21(18)=abb21(11)*abb21(18)
      abb21(94)=abb21(94)-abb21(18)
      abb21(114)=-abb21(94)*abb21(103)
      abb21(95)=abb21(114)+abb21(95)+abb21(112)+abb21(110)+abb21(102)+abb21(96)
      abb21(95)=spbl6k1*abb21(95)
      abb21(89)=abb21(89)+abb21(90)
      abb21(89)=abb21(89)*abb21(106)
      abb21(60)=abb21(89)+abb21(60)
      abb21(60)=spbe7l5*abb21(60)
      abb21(58)=abb21(6)*abb21(58)
      abb21(37)=-abb21(37)*abb21(48)
      abb21(48)=abb21(46)*abb21(97)
      abb21(37)=abb21(48)-abb21(111)+abb21(37)
      abb21(37)=abb21(9)*abb21(37)
      abb21(37)=abb21(58)+abb21(37)
      abb21(37)=abb21(37)*abb21(98)
      abb21(48)=abb21(50)*abb21(57)
      abb21(57)=abb21(96)*abb21(9)
      abb21(48)=abb21(48)-abb21(57)
      abb21(48)=abb21(48)*spak2l5
      abb21(58)=abb21(38)*abb21(74)
      abb21(74)=abb21(105)*spbe7l6
      abb21(89)=abb21(126)*abb21(94)
      abb21(48)=-abb21(48)+abb21(74)+abb21(58)-abb21(89)
      abb21(58)=-abb21(100)+abb21(48)
      abb21(58)=spbl5k1*abb21(58)
      abb21(14)=-abb21(14)*abb21(82)
      abb21(14)=abb21(14)+abb21(107)
      abb21(14)=abb21(14)*abb21(106)
      abb21(74)=abb21(104)*abb21(87)
      abb21(89)=-abb21(82)*abb21(74)
      abb21(97)=abb21(94)*spal5l6
      abb21(98)=-spbl6k1*abb21(97)
      abb21(14)=abb21(98)+abb21(14)+abb21(89)-abb21(67)
      abb21(14)=spbl5k3*abb21(14)
      abb21(67)=spbe7l6*abb21(92)
      abb21(84)=spbe7l5*abb21(6)*abb21(84)
      abb21(67)=abb21(67)+abb21(84)
      abb21(67)=spak2l6*abb21(67)
      abb21(44)=abb21(44)*abb21(87)
      abb21(84)=spbl5k1*abb21(97)
      abb21(44)=abb21(84)+abb21(44)+abb21(107)
      abb21(44)=spbl6k3*abb21(44)
      abb21(84)=spbe7l6*abb21(90)
      abb21(89)=-abb21(6)*abb21(113)
      abb21(90)=-abb21(9)*abb21(136)*abb21(146)
      abb21(89)=abb21(89)+abb21(90)
      abb21(89)=abb21(89)*abb21(128)
      abb21(14)=abb21(14)+abb21(44)+abb21(58)+abb21(95)+abb21(89)+abb21(37)+abb&
      &21(67)+abb21(84)+abb21(60)
      abb21(14)=2.0_ki*abb21(14)
      abb21(19)=abb21(19)*abb21(3)
      abb21(16)=abb21(19)-abb21(16)
      abb21(16)=abb21(16)*abb21(3)
      abb21(16)=abb21(16)-abb21(38)
      abb21(19)=-spbe7k1*abb21(16)
      abb21(11)=abb21(11)*abb21(15)
      abb21(15)=abb21(18)*abb21(3)
      abb21(11)=abb21(11)-abb21(15)
      abb21(11)=abb21(11)*abb21(3)
      abb21(11)=abb21(11)+abb21(94)
      abb21(15)=-spbk3k1*abb21(11)
      abb21(15)=abb21(19)+abb21(15)
      abb21(15)=8.0_ki*abb21(15)
      abb21(18)=spbe7l6*abb21(16)
      abb21(19)=-spbl6k3*abb21(11)
      abb21(18)=abb21(18)+abb21(19)
      abb21(18)=4.0_ki*abb21(18)
      abb21(19)=-spbl6k3*abb21(97)
      abb21(19)=abb21(19)-abb21(48)
      abb21(19)=spbl5k2*abb21(19)
      abb21(37)=-abb21(81)*abb21(70)
      abb21(34)=-abb21(34)*abb21(45)
      abb21(27)=-abb21(6)*abb21(27)
      abb21(27)=abb21(27)+abb21(34)
      abb21(27)=spak2l6*abb21(27)
      abb21(19)=abb21(19)+abb21(27)-2.0_ki*abb21(93)+abb21(37)
      abb21(27)=abb21(6)*abb21(53)
      abb21(34)=abb21(9)*abb21(50)
      abb21(27)=abb21(27)+abb21(34)
      abb21(27)=spbe7k2*abb21(27)
      abb21(27)=abb21(27)-abb21(91)-abb21(57)
      abb21(27)=es12*abb21(27)
      abb21(34)=spak1l5*abb21(73)
      abb21(34)=abb21(88)+abb21(34)
      abb21(34)=spbe7l5*abb21(34)
      abb21(37)=spbe7l6*abb21(73)
      abb21(22)=spbl6k3*abb21(22)
      abb21(22)=abb21(22)+abb21(37)
      abb21(22)=spak1l6*abb21(22)
      abb21(37)=-abb21(85)+abb21(133)
      abb21(37)=spbl5k3*abb21(37)
      abb21(38)=-abb21(86)*abb21(109)
      abb21(44)=-abb21(103)*abb21(69)
      abb21(19)=abb21(37)+abb21(44)+abb21(27)+abb21(38)+abb21(34)+abb21(22)+3.0&
      &_ki*abb21(19)
      abb21(19)=2.0_ki*abb21(19)
      abb21(22)=spbe7l5*abb21(23)
      abb21(23)=-spbl5k3*abb21(71)
      abb21(22)=abb21(22)+abb21(23)
      abb21(22)=4.0_ki*abb21(22)
      abb21(16)=spbe7l5*abb21(16)
      abb21(11)=-spbl5k3*abb21(11)
      abb21(11)=abb21(16)+abb21(11)
      abb21(11)=4.0_ki*abb21(11)
      abb21(16)=abb21(75)*abb21(79)
      abb21(23)=abb21(77)*spal5l6
      abb21(16)=abb21(16)-abb21(23)
      abb21(23)=abb21(6)*abb21(3)
      abb21(27)=abb21(16)*abb21(23)
      abb21(30)=abb21(30)*spal5l6
      abb21(34)=-abb21(46)*abb21(30)
      abb21(37)=abb21(79)*abb21(49)
      abb21(34)=abb21(34)+abb21(37)
      abb21(37)=abb21(9)*abb21(3)
      abb21(34)=abb21(34)*abb21(37)
      abb21(38)=abb21(79)*abb21(59)
      abb21(44)=abb21(61)*spal5l6
      abb21(38)=abb21(38)-abb21(44)
      abb21(44)=-abb21(38)*abb21(23)
      abb21(45)=-abb21(79)*abb21(52)
      abb21(48)=spal5l6*abb21(55)
      abb21(45)=abb21(48)+abb21(45)
      abb21(45)=abb21(45)*abb21(37)
      abb21(44)=abb21(44)+abb21(45)
      abb21(44)=spbe7k2*abb21(44)
      abb21(27)=abb21(44)+abb21(27)+abb21(34)
      abb21(27)=4.0_ki*abb21(27)
      abb21(30)=abb21(29)*abb21(30)
      abb21(33)=-abb21(79)*abb21(33)
      abb21(30)=abb21(30)+abb21(33)
      abb21(30)=abb21(30)*abb21(23)
      abb21(16)=-abb21(16)*abb21(37)
      abb21(33)=abb21(38)*abb21(37)
      abb21(34)=abb21(79)*abb21(40)
      abb21(37)=-spal5l6*abb21(43)
      abb21(34)=abb21(37)+abb21(34)
      abb21(23)=abb21(34)*abb21(23)
      abb21(23)=abb21(23)+abb21(33)
      abb21(23)=spbe7k2*abb21(23)
      abb21(16)=abb21(23)+abb21(30)+abb21(16)
      abb21(16)=4.0_ki*abb21(16)
      abb21(23)=-abb21(12)*abb21(29)
      abb21(30)=abb21(3)*abb21(83)
      abb21(23)=abb21(23)+abb21(30)
      abb21(23)=abb21(3)*abb21(23)
      abb21(23)=abb21(23)-abb21(35)
      abb21(23)=abb21(6)*abb21(23)
      abb21(30)=abb21(68)*abb21(3)
      abb21(30)=abb21(30)-abb21(99)
      abb21(30)=abb21(30)*abb21(3)
      abb21(30)=abb21(30)-abb21(53)
      abb21(33)=abb21(9)*abb21(30)
      abb21(23)=abb21(23)+abb21(33)
      abb21(23)=spbe7k2*abb21(23)
      abb21(29)=abb21(42)*abb21(29)
      abb21(33)=-abb21(3)*abb21(76)
      abb21(29)=abb21(29)+abb21(33)
      abb21(29)=abb21(3)*abb21(29)
      abb21(29)=abb21(29)+abb21(72)
      abb21(29)=abb21(6)*abb21(29)
      abb21(28)=abb21(42)*abb21(28)
      abb21(33)=abb21(62)*abb21(3)
      abb21(28)=abb21(28)-abb21(33)
      abb21(28)=abb21(28)*abb21(3)
      abb21(28)=abb21(28)+abb21(54)
      abb21(33)=abb21(9)*abb21(28)
      abb21(23)=abb21(23)+abb21(29)+abb21(33)
      abb21(23)=4.0_ki*abb21(23)
      abb21(29)=abb21(6)*abb21(30)
      abb21(12)=-abb21(12)*abb21(46)
      abb21(30)=abb21(3)*abb21(111)
      abb21(12)=abb21(12)+abb21(30)
      abb21(12)=abb21(3)*abb21(12)
      abb21(12)=abb21(12)-abb21(50)
      abb21(12)=abb21(9)*abb21(12)
      abb21(12)=abb21(29)+abb21(12)
      abb21(12)=spbe7k2*abb21(12)
      abb21(28)=abb21(6)*abb21(28)
      abb21(29)=abb21(42)*abb21(46)
      abb21(30)=-abb21(3)*abb21(101)
      abb21(29)=abb21(29)+abb21(30)
      abb21(29)=abb21(3)*abb21(29)
      abb21(29)=abb21(29)+abb21(96)
      abb21(29)=abb21(9)*abb21(29)
      abb21(12)=abb21(12)+abb21(28)+abb21(29)
      abb21(12)=4.0_ki*abb21(12)
      abb21(28)=-spbe7k1*abb21(65)
      abb21(20)=-spbk3k1*abb21(20)
      abb21(20)=abb21(28)+abb21(20)
      abb21(20)=4.0_ki*abb21(20)
      abb21(28)=-spbe7k1*abb21(66)
      abb21(26)=spbk3k1*abb21(26)
      abb21(26)=abb21(28)+abb21(26)
      abb21(26)=4.0_ki*abb21(26)
      abb21(28)=-abb21(80)*abb21(87)
      abb21(13)=-abb21(13)*abb21(106)
      abb21(13)=abb21(13)+abb21(28)
      abb21(13)=abb21(3)*abb21(13)
      abb21(28)=-abb21(47)*abb21(82)
      abb21(13)=abb21(28)+abb21(13)
      abb21(13)=spbe7k1*abb21(13)
      abb21(28)=-abb21(108)-abb21(74)
      abb21(28)=abb21(3)*abb21(28)
      abb21(29)=-abb21(56)*abb21(82)
      abb21(28)=abb21(29)+abb21(28)
      abb21(28)=spbk3k1*abb21(28)
      abb21(13)=abb21(28)+abb21(13)
      abb21(13)=4.0_ki*abb21(13)
      R2d21=abb21(31)
      rat2 = rat2 + R2d21
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='21' value='", &
          & R2d21, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd21h0