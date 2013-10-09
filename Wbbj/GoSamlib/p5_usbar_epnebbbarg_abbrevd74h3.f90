module     p5_usbar_epnebbbarg_abbrevd74h3
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(174), public :: abb74
   complex(ki), public :: R2d74
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
      abb74(1)=1.0_ki/(-mB**2+es67)
      abb74(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb74(3)=NC**(-1)
      abb74(4)=spak2l6**(-1)
      abb74(5)=spak2l5**(-1)
      abb74(6)=spbl5k2**(-1)
      abb74(7)=spbl6k2**(-1)
      abb74(8)=sqrt(mB**2)
      abb74(9)=abb74(4)*spak2e7
      abb74(10)=abb74(9)*spbl5k1
      abb74(11)=TR*gW
      abb74(11)=abb74(11)**2*i_*CVSU*abb74(2)*abb74(1)
      abb74(12)=abb74(11)*c3
      abb74(13)=abb74(12)*abb74(3)
      abb74(14)=abb74(10)*abb74(13)
      abb74(15)=spbk3k1*spbe7l6
      abb74(16)=mB**3
      abb74(17)=abb74(15)*abb74(16)
      abb74(18)=abb74(14)*abb74(17)
      abb74(19)=abb74(8)*spbl5k1
      abb74(20)=mB**2
      abb74(21)=abb74(19)*abb74(20)
      abb74(22)=abb74(21)*abb74(15)
      abb74(23)=abb74(13)*abb74(9)
      abb74(24)=abb74(22)*abb74(23)
      abb74(18)=abb74(18)-abb74(24)
      abb74(24)=abb74(12)*spbe7l6
      abb74(25)=abb74(24)*spbk3k1
      abb74(26)=abb74(25)*abb74(9)
      abb74(27)=abb74(26)*abb74(21)
      abb74(28)=abb74(10)*abb74(16)
      abb74(29)=abb74(28)*abb74(25)
      abb74(27)=abb74(29)-abb74(27)
      abb74(27)=abb74(27)*NC
      abb74(29)=abb74(3)**2
      abb74(30)=abb74(11)*spak2e7
      abb74(31)=abb74(29)*abb74(30)
      abb74(32)=abb74(31)*abb74(4)
      abb74(22)=abb74(22)*abb74(32)
      abb74(33)=abb74(15)*abb74(31)
      abb74(34)=abb74(33)*abb74(16)
      abb74(35)=spbl5k1*abb74(4)
      abb74(36)=abb74(34)*abb74(35)
      abb74(22)=abb74(36)-abb74(22)
      abb74(22)=abb74(22)*c2
      abb74(18)=-abb74(22)-abb74(27)+2.0_ki*abb74(18)
      abb74(22)=abb74(7)*spak1k4
      abb74(27)=abb74(18)*abb74(22)
      abb74(36)=abb74(16)*spbl5k1
      abb74(36)=abb74(21)-abb74(36)
      abb74(36)=c2*abb74(36)*abb74(33)
      abb74(37)=abb74(21)*spak2e7
      abb74(38)=abb74(37)*abb74(25)
      abb74(39)=abb74(16)*spak2e7
      abb74(40)=abb74(25)*abb74(39)
      abb74(41)=abb74(40)*spbl5k1
      abb74(38)=abb74(38)-abb74(41)
      abb74(38)=abb74(38)*NC
      abb74(41)=abb74(15)*spak2e7
      abb74(42)=abb74(41)*abb74(13)
      abb74(43)=abb74(42)*abb74(21)
      abb74(44)=abb74(39)*abb74(13)
      abb74(45)=spbl5k1*abb74(44)
      abb74(46)=abb74(45)*abb74(15)
      abb74(43)=abb74(43)-abb74(46)
      abb74(36)=-abb74(38)-abb74(36)+2.0_ki*abb74(43)
      abb74(38)=spak1k4*abb74(5)
      abb74(43)=-abb74(36)*abb74(38)
      abb74(46)=abb74(29)*c2
      abb74(30)=abb74(46)*abb74(30)
      abb74(47)=abb74(30)*abb74(16)
      abb74(48)=abb74(47)*abb74(35)
      abb74(49)=2.0_ki*abb74(13)
      abb74(50)=abb74(28)*abb74(49)
      abb74(48)=abb74(48)-abb74(50)
      abb74(50)=abb74(48)*spbk3k1
      abb74(51)=abb74(12)*spbk3k1
      abb74(52)=abb74(10)*abb74(51)
      abb74(53)=abb74(16)*NC
      abb74(54)=abb74(52)*abb74(53)
      abb74(50)=abb74(50)+abb74(54)
      abb74(54)=spbk7e7*spak2k7
      abb74(55)=abb74(38)*abb74(54)
      abb74(56)=abb74(50)*abb74(55)
      abb74(43)=abb74(43)+abb74(56)
      abb74(43)=abb74(6)*abb74(43)
      abb74(27)=abb74(27)+abb74(43)
      abb74(27)=es12*abb74(27)
      abb74(43)=abb74(19)*abb74(9)
      abb74(56)=abb74(12)*mB
      abb74(57)=abb74(56)*spbk3k1
      abb74(58)=abb74(43)*abb74(57)
      abb74(52)=abb74(52)*abb74(20)
      abb74(52)=abb74(58)-abb74(52)
      abb74(58)=NC*abb74(8)
      abb74(52)=abb74(52)*abb74(58)
      abb74(59)=abb74(20)*spbk3k1
      abb74(60)=abb74(59)*abb74(14)
      abb74(61)=abb74(56)*abb74(3)
      abb74(62)=abb74(43)*abb74(61)
      abb74(63)=abb74(62)*spbk3k1
      abb74(60)=abb74(60)-abb74(63)
      abb74(63)=2.0_ki*abb74(8)
      abb74(60)=abb74(60)*abb74(63)
      abb74(64)=mB*abb74(32)
      abb74(65)=abb74(64)*abb74(19)
      abb74(66)=abb74(65)*spbk3k1
      abb74(67)=abb74(35)*abb74(31)
      abb74(68)=abb74(67)*abb74(59)
      abb74(66)=abb74(66)-abb74(68)
      abb74(68)=c2*abb74(8)
      abb74(66)=abb74(66)*abb74(68)
      abb74(52)=abb74(66)+abb74(52)+abb74(60)
      abb74(60)=spak1k2*spak3k4
      abb74(66)=abb74(60)*spbe7k3
      abb74(69)=spbe7k1*spak1k4
      abb74(70)=abb74(69)*spak1k2
      abb74(66)=abb74(66)-abb74(70)
      abb74(52)=-abb74(52)*abb74(66)
      abb74(70)=abb74(8)*spak2e7
      abb74(71)=abb74(61)*spbe7l6
      abb74(72)=abb74(70)*abb74(71)
      abb74(73)=abb74(13)*spbe7l6
      abb74(74)=abb74(20)*spak2e7
      abb74(75)=-abb74(74)*abb74(73)
      abb74(75)=abb74(75)+abb74(72)
      abb74(75)=abb74(63)*abb74(75)
      abb74(76)=abb74(8)*mB
      abb74(77)=abb74(20)-abb74(76)
      abb74(78)=abb74(31)*spbe7l6
      abb74(77)=abb74(68)*abb74(78)*abb74(77)
      abb74(79)=abb74(74)*abb74(24)
      abb74(80)=abb74(56)*spbe7l6
      abb74(70)=abb74(70)*abb74(80)
      abb74(81)=abb74(79)-abb74(70)
      abb74(81)=abb74(58)*abb74(81)
      abb74(75)=abb74(81)+abb74(75)+abb74(77)
      abb74(77)=spak3k4*abb74(5)
      abb74(81)=abb74(77)*spak1k2
      abb74(82)=spbk3k1**2
      abb74(75)=abb74(81)*abb74(82)*abb74(75)
      abb74(83)=spbk3k2*abb74(7)
      abb74(84)=abb74(83)*abb74(60)
      abb74(18)=abb74(18)*abb74(84)
      abb74(36)=-abb74(36)*abb74(81)
      abb74(85)=abb74(81)*abb74(54)
      abb74(50)=abb74(50)*abb74(85)
      abb74(36)=abb74(36)+abb74(50)
      abb74(50)=abb74(6)*spbk3k2
      abb74(36)=abb74(36)*abb74(50)
      abb74(86)=abb74(56)*spbl5k1
      abb74(87)=abb74(86)*abb74(15)
      abb74(88)=abb74(25)*abb74(19)
      abb74(87)=abb74(87)-abb74(88)
      abb74(87)=abb74(87)*NC
      abb74(89)=abb74(11)*spbe7l6
      abb74(90)=abb74(19)*abb74(89)
      abb74(91)=abb74(29)*spbk3k1
      abb74(92)=abb74(90)*abb74(91)
      abb74(93)=abb74(11)*mB
      abb74(94)=abb74(93)*spbl5k1
      abb74(95)=abb74(94)*abb74(29)
      abb74(96)=abb74(95)*abb74(15)
      abb74(92)=abb74(92)-abb74(96)
      abb74(92)=abb74(92)*c2
      abb74(96)=abb74(19)*abb74(13)
      abb74(97)=abb74(61)*spbl5k1
      abb74(96)=abb74(97)-abb74(96)
      abb74(97)=-abb74(15)*abb74(96)
      abb74(87)=abb74(87)-abb74(92)+2.0_ki*abb74(97)
      abb74(92)=spbl6k1*spal6e7
      abb74(97)=spbk7k1*spae7k7
      abb74(92)=abb74(92)-abb74(97)
      abb74(97)=spak1k2*spak1k4
      abb74(98)=abb74(92)*abb74(97)
      abb74(99)=spbl6k3*spal6e7
      abb74(100)=spbk7k3*spae7k7
      abb74(99)=abb74(99)-abb74(100)
      abb74(100)=abb74(99)*abb74(60)
      abb74(98)=abb74(98)-abb74(100)
      abb74(87)=-abb74(87)*abb74(98)
      abb74(100)=abb74(90)*abb74(46)
      abb74(101)=abb74(100)*spbk3k1
      abb74(102)=abb74(49)*abb74(19)
      abb74(103)=abb74(102)*abb74(15)
      abb74(104)=abb74(88)*NC
      abb74(101)=abb74(104)+abb74(101)-abb74(103)
      abb74(103)=spbl5k3*spak3k4
      abb74(104)=-abb74(101)*abb74(103)
      abb74(105)=abb74(58)*abb74(25)
      abb74(106)=abb74(13)*abb74(8)
      abb74(107)=2.0_ki*abb74(106)
      abb74(108)=abb74(107)*abb74(15)
      abb74(105)=abb74(105)-abb74(108)
      abb74(108)=spbl5k1**2
      abb74(109)=abb74(105)*abb74(108)
      abb74(110)=abb74(46)*abb74(8)
      abb74(111)=abb74(89)*abb74(110)
      abb74(112)=abb74(111)*abb74(108)
      abb74(113)=abb74(112)*spbk3k1
      abb74(109)=abb74(113)+abb74(109)
      abb74(113)=spak1k4*abb74(109)
      abb74(104)=abb74(113)+abb74(104)
      abb74(104)=spak1e7*spak2l5*abb74(104)
      abb74(113)=-spbl5k3*abb74(101)*abb74(60)
      abb74(109)=abb74(109)*abb74(97)
      abb74(109)=abb74(109)+abb74(113)
      abb74(109)=spal5e7*abb74(109)
      abb74(113)=abb74(9)*NC
      abb74(114)=abb74(113)*abb74(57)
      abb74(115)=2.0_ki*abb74(61)
      abb74(116)=abb74(115)*spbk3k1
      abb74(117)=abb74(116)*abb74(9)
      abb74(118)=abb74(30)*mB
      abb74(119)=abb74(118)*abb74(4)
      abb74(120)=abb74(119)*spbk3k1
      abb74(114)=abb74(120)+abb74(114)-abb74(117)
      abb74(117)=abb74(108)*spak1k4
      abb74(120)=abb74(114)*abb74(117)
      abb74(121)=abb74(57)*NC
      abb74(116)=abb74(121)-abb74(116)
      abb74(121)=-abb74(10)*abb74(116)
      abb74(122)=abb74(118)*abb74(35)
      abb74(123)=abb74(122)*spbk3k1
      abb74(121)=abb74(121)-abb74(123)
      abb74(123)=abb74(121)*abb74(103)
      abb74(120)=abb74(120)+abb74(123)
      abb74(120)=abb74(120)*abb74(54)
      abb74(123)=abb74(56)*NC
      abb74(124)=abb74(115)-abb74(123)
      abb74(125)=-abb74(41)*abb74(124)
      abb74(126)=abb74(118)*abb74(15)
      abb74(125)=abb74(126)+abb74(125)
      abb74(126)=abb74(103)*spbl5k1
      abb74(117)=-abb74(117)+abb74(126)
      abb74(117)=abb74(125)*abb74(117)
      abb74(117)=abb74(120)+abb74(117)
      abb74(117)=spak1l5*abb74(117)
      abb74(120)=2.0_ki*abb74(9)
      abb74(13)=abb74(120)*abb74(13)
      abb74(30)=abb74(30)*abb74(4)
      abb74(13)=abb74(13)-abb74(30)
      abb74(30)=abb74(20)*abb74(8)
      abb74(120)=-abb74(30)*abb74(13)
      abb74(126)=abb74(9)*abb74(12)
      abb74(127)=abb74(30)*abb74(126)
      abb74(128)=abb74(127)*NC
      abb74(120)=abb74(128)+abb74(120)
      abb74(128)=abb74(120)*abb74(82)
      abb74(129)=-abb74(128)*abb74(85)
      abb74(18)=abb74(117)+abb74(109)+abb74(104)+abb74(27)+abb74(36)+abb74(18)+&
      &abb74(75)+abb74(129)+abb74(87)+abb74(52)
      abb74(18)=4.0_ki*abb74(18)
      abb74(27)=abb74(94)*abb74(91)
      abb74(36)=abb74(11)*spbk3k1
      abb74(52)=abb74(19)*abb74(36)
      abb74(75)=abb74(52)*abb74(29)
      abb74(27)=abb74(27)-abb74(75)
      abb74(27)=abb74(27)*c2
      abb74(75)=abb74(19)*abb74(51)
      abb74(87)=abb74(57)*spbl5k1
      abb74(87)=abb74(87)-abb74(75)
      abb74(87)=abb74(87)*NC
      abb74(104)=abb74(96)*spbk3k1
      abb74(27)=-2.0_ki*abb74(104)+abb74(87)+abb74(27)
      abb74(87)=-spbl6k3*abb74(60)
      abb74(104)=spbl6k1*abb74(97)
      abb74(87)=abb74(87)+abb74(104)
      abb74(27)=abb74(27)*abb74(87)
      abb74(87)=spbk7k3*spak2k7
      abb74(60)=abb74(60)*abb74(87)
      abb74(104)=spbk7k1*spak2k7
      abb74(97)=-abb74(97)*abb74(104)
      abb74(60)=abb74(97)+abb74(60)
      abb74(97)=-abb74(35)*abb74(116)
      abb74(109)=abb74(46)*abb74(93)
      abb74(117)=abb74(4)*abb74(109)
      abb74(129)=abb74(117)*spbl5k1
      abb74(130)=abb74(129)*spbk3k1
      abb74(97)=abb74(97)-abb74(130)
      abb74(60)=abb74(97)*abb74(60)
      abb74(130)=abb74(109)-abb74(124)
      abb74(131)=abb74(130)*abb74(82)
      abb74(132)=-spbk7l6*spak2k7*abb74(131)*abb74(81)
      abb74(27)=abb74(132)+abb74(60)+abb74(27)
      abb74(27)=8.0_ki*abb74(27)
      abb74(60)=abb74(80)*NC
      abb74(132)=abb74(115)*spbe7l6
      abb74(60)=abb74(60)-abb74(132)
      abb74(133)=spak2e7*abb74(60)
      abb74(118)=abb74(118)*spbe7l6
      abb74(118)=abb74(118)+abb74(133)
      abb74(82)=abb74(81)*abb74(82)
      abb74(133)=abb74(118)*abb74(82)
      abb74(134)=abb74(66)*abb74(121)
      abb74(133)=abb74(133)-abb74(134)
      abb74(133)=8.0_ki*abb74(133)
      abb74(134)=abb74(33)*mB
      abb74(135)=spbl5k1*abb74(134)
      abb74(136)=-abb74(19)*abb74(33)
      abb74(135)=abb74(135)+abb74(136)
      abb74(135)=c2*abb74(135)
      abb74(136)=abb74(41)*abb74(86)
      abb74(88)=-spak2e7*abb74(88)
      abb74(88)=abb74(136)+abb74(88)
      abb74(88)=NC*abb74(88)
      abb74(136)=-abb74(41)*abb74(96)
      abb74(88)=abb74(88)+2.0_ki*abb74(136)+abb74(135)
      abb74(88)=spak1k4*abb74(88)
      abb74(135)=abb74(8)*abb74(33)
      abb74(135)=-abb74(134)+abb74(135)
      abb74(135)=c2*abb74(135)
      abb74(136)=abb74(106)-abb74(61)
      abb74(137)=-abb74(41)*abb74(136)
      abb74(138)=-abb74(56)*abb74(41)
      abb74(139)=abb74(25)*abb74(8)
      abb74(140)=spak2e7*abb74(139)
      abb74(138)=abb74(138)+abb74(140)
      abb74(138)=NC*abb74(138)
      abb74(135)=abb74(138)+2.0_ki*abb74(137)+abb74(135)
      abb74(135)=abb74(135)*abb74(103)
      abb74(137)=abb74(114)*abb74(103)
      abb74(138)=spak1k4*abb74(121)
      abb74(137)=abb74(138)+abb74(137)
      abb74(137)=abb74(137)*abb74(54)
      abb74(88)=abb74(137)+abb74(88)+abb74(135)
      abb74(88)=8.0_ki*abb74(88)
      abb74(135)=abb74(4)**2
      abb74(47)=abb74(47)*abb74(135)
      abb74(135)=abb74(39)*abb74(135)
      abb74(137)=abb74(135)*abb74(49)
      abb74(47)=abb74(47)-abb74(137)
      abb74(137)=spbl5k1*abb74(47)
      abb74(138)=-spbk3k1*abb74(137)
      abb74(135)=abb74(135)*NC
      abb74(140)=abb74(135)*abb74(51)
      abb74(141)=abb74(140)*spbl5k1
      abb74(138)=abb74(138)-abb74(141)
      abb74(141)=-abb74(138)*abb74(66)
      abb74(142)=abb74(16)*spbe7l6
      abb74(143)=-abb74(142)*abb74(13)
      abb74(144)=abb74(53)*abb74(9)
      abb74(145)=abb74(144)*abb74(24)
      abb74(143)=abb74(143)+abb74(145)
      abb74(145)=abb74(143)*abb74(82)
      abb74(141)=abb74(145)+abb74(141)
      abb74(145)=8.0_ki*abb74(7)
      abb74(141)=abb74(141)*abb74(145)
      abb74(146)=abb74(118)*spbl5k1
      abb74(147)=-abb74(10)*abb74(124)
      abb74(147)=abb74(147)+abb74(122)
      abb74(148)=abb74(147)*abb74(54)
      abb74(146)=abb74(146)-abb74(148)
      abb74(146)=spak4l5*abb74(146)
      abb74(149)=abb74(19)*abb74(24)
      abb74(150)=abb74(149)*NC
      abb74(151)=spbe7l6*abb74(102)
      abb74(100)=abb74(100)+abb74(150)-abb74(151)
      abb74(150)=spak2k4*spal5e7*abb74(100)
      abb74(151)=abb74(100)*spak4e7
      abb74(152)=abb74(151)*spak2l5
      abb74(146)=-abb74(146)-abb74(150)+abb74(152)
      abb74(146)=spbl5k3*abb74(146)
      abb74(37)=abb74(37)*abb74(73)
      abb74(45)=abb74(45)*spbe7l6
      abb74(37)=abb74(37)-abb74(45)
      abb74(45)=abb74(21)*abb74(78)
      abb74(31)=abb74(142)*abb74(31)
      abb74(150)=abb74(31)*spbl5k1
      abb74(150)=abb74(150)-abb74(45)
      abb74(150)=abb74(150)*c2
      abb74(152)=abb74(74)*abb74(149)
      abb74(153)=abb74(39)*abb74(24)
      abb74(154)=abb74(153)*spbl5k1
      abb74(152)=abb74(152)-abb74(154)
      abb74(152)=abb74(152)*NC
      abb74(37)=2.0_ki*abb74(37)+abb74(150)-abb74(152)
      abb74(150)=spak2k4*abb74(5)
      abb74(152)=abb74(37)*abb74(150)
      abb74(154)=abb74(12)*spbl5k1
      abb74(155)=abb74(144)*abb74(154)
      abb74(48)=abb74(155)+abb74(48)
      abb74(155)=abb74(150)*abb74(54)
      abb74(156)=abb74(48)*abb74(155)
      abb74(152)=abb74(156)-abb74(152)
      abb74(152)=abb74(152)*abb74(50)
      abb74(67)=abb74(67)*abb74(20)
      abb74(65)=abb74(67)-abb74(65)
      abb74(65)=abb74(65)*abb74(68)
      abb74(67)=abb74(14)*abb74(20)
      abb74(62)=abb74(67)-abb74(62)
      abb74(62)=abb74(62)*abb74(63)
      abb74(43)=abb74(43)*abb74(56)
      abb74(67)=abb74(20)*abb74(9)
      abb74(156)=abb74(67)*abb74(154)
      abb74(43)=abb74(43)-abb74(156)
      abb74(43)=abb74(43)*abb74(58)
      abb74(43)=-abb74(65)+abb74(62)+abb74(43)
      abb74(62)=spbe7k3*spak2k4
      abb74(65)=abb74(43)*abb74(62)
      abb74(45)=abb74(45)*abb74(4)
      abb74(156)=abb74(31)*abb74(35)
      abb74(45)=abb74(156)-abb74(45)
      abb74(45)=abb74(45)*c2
      abb74(156)=abb74(67)*abb74(149)
      abb74(28)=abb74(28)*abb74(24)
      abb74(28)=abb74(28)-abb74(156)
      abb74(28)=abb74(28)*NC
      abb74(156)=abb74(23)*spbe7l6
      abb74(21)=abb74(156)*abb74(21)
      abb74(14)=abb74(14)*abb74(142)
      abb74(14)=abb74(14)-abb74(21)
      abb74(14)=-abb74(28)-abb74(45)+2.0_ki*abb74(14)
      abb74(21)=abb74(83)*spak2k4
      abb74(28)=abb74(14)*abb74(21)
      abb74(45)=abb74(80)*spbl5k1
      abb74(45)=abb74(45)-abb74(149)
      abb74(45)=abb74(45)*NC
      abb74(149)=-spbe7l6*abb74(96)
      abb74(45)=abb74(45)+2.0_ki*abb74(149)
      abb74(149)=abb74(29)*spbe7l6
      abb74(94)=abb74(94)*abb74(149)
      abb74(90)=abb74(90)*abb74(29)
      abb74(90)=abb74(94)-abb74(90)
      abb74(90)=abb74(90)*c2
      abb74(90)=abb74(90)+abb74(45)
      abb74(94)=abb74(99)*abb74(90)*spak2k4
      abb74(28)=abb74(152)-abb74(65)+abb74(28)+abb74(94)+abb74(146)
      abb74(65)=abb74(33)*abb74(20)
      abb74(94)=abb74(134)*abb74(8)
      abb74(65)=abb74(65)-abb74(94)
      abb74(65)=abb74(65)*abb74(68)
      abb74(94)=abb74(74)*abb74(25)
      abb74(41)=abb74(41)*abb74(8)
      abb74(134)=abb74(41)*abb74(56)
      abb74(94)=abb74(94)-abb74(134)
      abb74(94)=abb74(94)*abb74(58)
      abb74(41)=abb74(41)*abb74(61)
      abb74(134)=abb74(42)*abb74(20)
      abb74(41)=abb74(41)-abb74(134)
      abb74(41)=abb74(41)*abb74(63)
      abb74(41)=abb74(65)+abb74(94)+abb74(41)
      abb74(65)=abb74(41)*abb74(150)
      abb74(94)=-abb74(13)*spbk3k1
      abb74(134)=abb74(51)*abb74(113)
      abb74(94)=abb74(94)+abb74(134)
      abb74(94)=abb74(30)*abb74(94)
      abb74(134)=abb74(155)*abb74(94)
      abb74(65)=abb74(134)-abb74(65)
      abb74(134)=abb74(65)+abb74(28)
      abb74(134)=8.0_ki*abb74(134)
      abb74(146)=abb74(29)*abb74(8)
      abb74(152)=abb74(11)*spbl5k1
      abb74(157)=abb74(146)*abb74(152)
      abb74(95)=abb74(157)-abb74(95)
      abb74(95)=abb74(95)*c2
      abb74(157)=abb74(154)*abb74(8)
      abb74(86)=abb74(157)-abb74(86)
      abb74(86)=abb74(86)*NC
      abb74(86)=abb74(95)+abb74(86)+2.0_ki*abb74(96)
      abb74(95)=abb74(86)*spbl6k3
      abb74(96)=abb74(109)*spbk3k1
      abb74(96)=abb74(96)+abb74(116)
      abb74(157)=abb74(96)*spbk7l6
      abb74(158)=spak2k7*abb74(5)
      abb74(159)=abb74(157)*abb74(158)
      abb74(160)=abb74(159)+abb74(95)
      abb74(160)=spak2k4*abb74(160)
      abb74(35)=-abb74(35)*abb74(124)
      abb74(35)=abb74(35)+abb74(129)
      abb74(129)=abb74(35)*spak2k4
      abb74(161)=abb74(87)*abb74(129)
      abb74(160)=-abb74(161)+abb74(160)
      abb74(160)=16.0_ki*abb74(160)
      abb74(162)=abb74(62)*abb74(147)
      abb74(163)=abb74(125)*abb74(150)
      abb74(164)=abb74(162)-abb74(163)
      abb74(164)=16.0_ki*abb74(164)
      abb74(165)=abb74(135)*abb74(154)
      abb74(137)=abb74(165)+abb74(137)
      abb74(165)=abb74(137)*abb74(7)
      abb74(166)=abb74(165)*abb74(62)
      abb74(167)=-abb74(17)*abb74(13)
      abb74(168)=abb74(144)*abb74(25)
      abb74(167)=abb74(167)+abb74(168)
      abb74(167)=abb74(167)*abb74(7)
      abb74(168)=abb74(167)*abb74(150)
      abb74(169)=-abb74(168)+abb74(166)
      abb74(169)=16.0_ki*abb74(169)
      abb74(28)=abb74(65)-abb74(28)
      abb74(28)=4.0_ki*abb74(28)
      abb74(65)=abb74(159)-abb74(95)
      abb74(65)=spak2k4*abb74(65)
      abb74(65)=abb74(161)+abb74(65)
      abb74(65)=8.0_ki*abb74(65)
      abb74(95)=abb74(162)+abb74(163)
      abb74(95)=8.0_ki*abb74(95)
      abb74(161)=-abb74(168)-abb74(166)
      abb74(161)=8.0_ki*abb74(161)
      abb74(162)=abb74(102)*spbk3k1
      abb74(75)=abb74(75)*NC
      abb74(46)=abb74(52)*abb74(46)
      abb74(46)=-abb74(46)+abb74(162)-abb74(75)
      abb74(46)=abb74(46)*abb74(66)
      abb74(52)=abb74(131)*abb74(85)
      abb74(66)=abb74(109)*spbe7l6
      abb74(66)=abb74(66)+abb74(60)
      abb74(75)=abb74(66)*spak2l6
      abb74(82)=-abb74(82)*abb74(75)
      abb74(46)=abb74(82)+abb74(52)+abb74(46)
      abb74(46)=4.0_ki*abb74(46)
      abb74(52)=abb74(155)*abb74(96)
      abb74(82)=abb74(109)+abb74(123)
      abb74(82)=abb74(15)*abb74(82)
      abb74(85)=abb74(115)*abb74(15)
      abb74(82)=abb74(82)-abb74(85)
      abb74(109)=abb74(82)*spak2l6
      abb74(131)=abb74(109)*abb74(150)
      abb74(52)=abb74(52)-abb74(131)
      abb74(131)=abb74(58)*abb74(154)
      abb74(152)=abb74(110)*abb74(152)
      abb74(102)=-abb74(102)+abb74(131)+abb74(152)
      abb74(62)=abb74(102)*abb74(62)
      abb74(131)=-abb74(62)-abb74(52)
      abb74(131)=8.0_ki*abb74(131)
      abb74(52)=abb74(62)-abb74(52)
      abb74(52)=4.0_ki*abb74(52)
      abb74(62)=-abb74(97)*abb74(98)
      abb74(97)=-es12*abb74(22)
      abb74(84)=abb74(97)-abb74(84)
      abb74(84)=abb74(138)*abb74(84)
      abb74(97)=abb74(128)*abb74(81)
      abb74(62)=abb74(97)+abb74(62)+abb74(84)
      abb74(62)=4.0_ki*abb74(62)
      abb74(21)=abb74(21)*abb74(137)
      abb74(84)=abb74(99)*abb74(129)
      abb74(21)=abb74(21)-abb74(84)
      abb74(84)=abb74(94)*abb74(150)
      abb74(97)=-abb74(84)+abb74(21)
      abb74(97)=8.0_ki*abb74(97)
      abb74(21)=-abb74(84)-abb74(21)
      abb74(21)=4.0_ki*abb74(21)
      abb74(84)=abb74(24)*abb74(8)
      abb74(84)=abb74(84)-abb74(80)
      abb74(84)=abb74(84)*NC
      abb74(98)=abb74(106)*spbe7l6
      abb74(71)=abb74(98)-abb74(71)
      abb74(71)=-abb74(84)+2.0_ki*abb74(71)
      abb74(84)=-spak2e7*abb74(71)
      abb74(98)=abb74(123)*abb74(9)
      abb74(98)=abb74(98)+abb74(119)
      abb74(106)=abb74(115)*abb74(9)
      abb74(106)=abb74(106)-abb74(98)
      abb74(115)=-abb74(106)*abb74(54)
      abb74(123)=abb74(78)*c2
      abb74(128)=-mB+abb74(8)
      abb74(128)=abb74(128)*abb74(123)
      abb74(84)=abb74(115)+abb74(128)+abb74(84)
      abb74(115)=4.0_ki*spak3k4
      abb74(84)=abb74(84)*spbl5k3**2*abb74(115)
      abb74(128)=-spbe7k1*abb74(43)
      abb74(129)=abb74(90)*abb74(92)
      abb74(80)=abb74(113)*abb74(80)
      abb74(113)=abb74(119)*spbe7l6
      abb74(119)=abb74(132)*abb74(9)
      abb74(80)=-abb74(119)+abb74(80)+abb74(113)
      abb74(113)=abb74(80)*abb74(108)
      abb74(119)=spal5l6*abb74(113)
      abb74(132)=abb74(58)*abb74(24)
      abb74(138)=abb74(107)*spbe7l6
      abb74(132)=abb74(132)-abb74(138)
      abb74(138)=abb74(132)*abb74(108)
      abb74(112)=abb74(138)+abb74(112)
      abb74(138)=-spal5e7*abb74(112)
      abb74(108)=abb74(106)*abb74(108)
      abb74(152)=spal5k7*spbk7e7*abb74(108)
      abb74(119)=abb74(119)+abb74(152)+abb74(138)+abb74(128)+abb74(129)
      abb74(119)=spak1k2*abb74(119)
      abb74(128)=-abb74(7)*abb74(14)
      abb74(129)=abb74(5)*abb74(37)
      abb74(138)=abb74(54)*abb74(5)
      abb74(152)=-abb74(48)*abb74(138)
      abb74(129)=abb74(129)+abb74(152)
      abb74(129)=abb74(6)*abb74(129)
      abb74(128)=abb74(128)+abb74(129)
      abb74(128)=es12*abb74(128)
      abb74(113)=spak1l6*abb74(113)
      abb74(112)=-spak1e7*abb74(112)
      abb74(129)=spak1k7*spbk7e7
      abb74(108)=abb74(108)*abb74(129)
      abb74(108)=abb74(113)+abb74(108)+abb74(112)
      abb74(108)=spak2l5*abb74(108)
      abb74(108)=abb74(128)+abb74(119)+abb74(108)
      abb74(108)=4.0_ki*abb74(108)
      abb74(112)=spbl6k1*spak1k2*abb74(86)
      abb74(113)=abb74(35)*spak1k2
      abb74(119)=-abb74(104)*abb74(113)
      abb74(112)=abb74(112)+abb74(119)
      abb74(112)=8.0_ki*abb74(112)
      abb74(119)=8.0_ki*spbe7k1
      abb74(128)=abb74(119)*spak1k2
      abb74(152)=abb74(147)*abb74(128)
      abb74(45)=-spak2e7*abb74(45)
      abb74(154)=-spbl5k1*mB
      abb74(19)=abb74(154)+abb74(19)
      abb74(19)=abb74(19)*abb74(123)
      abb74(19)=abb74(148)+abb74(19)+abb74(45)
      abb74(19)=8.0_ki*abb74(19)
      abb74(45)=abb74(165)*abb74(128)
      abb74(123)=4.0_ki*spbe7k1
      abb74(128)=-spak1k2*abb74(102)*abb74(123)
      abb74(113)=-abb74(113)*abb74(92)
      abb74(148)=-es12*abb74(165)
      abb74(113)=abb74(148)+abb74(113)
      abb74(113)=4.0_ki*abb74(113)
      abb74(148)=spak1k2*abb74(5)
      abb74(154)=-abb74(41)*abb74(148)
      abb74(155)=abb74(94)*abb74(148)
      abb74(162)=abb74(54)*abb74(155)
      abb74(154)=abb74(154)+abb74(162)
      abb74(154)=8.0_ki*abb74(154)
      abb74(162)=16.0_ki*spak1k2*abb74(159)
      abb74(163)=16.0_ki*abb74(148)
      abb74(165)=abb74(125)*abb74(163)
      abb74(163)=-abb74(167)*abb74(163)
      abb74(166)=abb74(96)*abb74(54)
      abb74(166)=abb74(166)-abb74(109)
      abb74(168)=-8.0_ki*abb74(148)*abb74(166)
      abb74(170)=-8.0_ki*abb74(155)
      abb74(171)=abb74(30)*abb74(15)
      abb74(171)=abb74(17)-abb74(171)
      abb74(171)=c2*abb74(32)*abb74(171)
      abb74(17)=abb74(17)*abb74(23)
      abb74(172)=abb74(23)*abb74(30)
      abb74(173)=abb74(172)*abb74(15)
      abb74(17)=abb74(17)-abb74(173)
      abb74(173)=abb74(30)-abb74(16)
      abb74(174)=abb74(173)*NC
      abb74(26)=abb74(26)*abb74(174)
      abb74(17)=abb74(26)-abb74(171)+2.0_ki*abb74(17)
      abb74(26)=-abb74(17)*abb74(22)
      abb74(44)=abb74(15)*abb74(44)
      abb74(42)=abb74(42)*abb74(30)
      abb74(42)=abb74(44)-abb74(42)
      abb74(33)=abb74(33)*abb74(30)
      abb74(33)=abb74(33)-abb74(34)
      abb74(33)=abb74(33)*c2
      abb74(34)=abb74(30)*spak2e7
      abb74(25)=abb74(34)*abb74(25)
      abb74(25)=abb74(25)-abb74(40)
      abb74(25)=abb74(25)*NC
      abb74(25)=2.0_ki*abb74(42)+abb74(33)+abb74(25)
      abb74(33)=-abb74(25)*abb74(38)
      abb74(13)=-abb74(16)*abb74(13)
      abb74(40)=abb74(13)*spbk3k1
      abb74(42)=abb74(144)*abb74(51)
      abb74(40)=abb74(40)+abb74(42)
      abb74(42)=-abb74(40)*abb74(55)
      abb74(33)=abb74(33)+abb74(42)
      abb74(33)=abb74(6)*abb74(33)
      abb74(26)=abb74(26)+abb74(33)
      abb74(26)=spbk2k1*abb74(26)
      abb74(33)=abb74(9)*abb74(8)
      abb74(42)=abb74(33)*abb74(57)
      abb74(44)=abb74(67)*abb74(51)
      abb74(42)=abb74(42)-abb74(44)
      abb74(42)=abb74(42)*abb74(58)
      abb74(44)=abb74(59)*abb74(23)
      abb74(61)=abb74(61)*abb74(33)
      abb74(67)=abb74(61)*spbk3k1
      abb74(44)=abb74(44)-abb74(67)
      abb74(44)=abb74(44)*abb74(63)
      abb74(59)=abb74(59)*abb74(32)
      abb74(64)=abb74(64)*abb74(8)
      abb74(67)=abb74(64)*spbk3k1
      abb74(59)=abb74(59)-abb74(67)
      abb74(59)=abb74(59)*abb74(68)
      abb74(42)=-abb74(59)+abb74(42)+abb74(44)
      abb74(44)=spbe7k3*spak3k4
      abb74(44)=abb74(44)-abb74(69)
      abb74(42)=abb74(42)*abb74(44)
      abb74(59)=abb74(83)*spak3k4
      abb74(17)=-abb74(17)*abb74(59)
      abb74(40)=-abb74(40)*abb74(54)
      abb74(25)=-abb74(25)+abb74(40)
      abb74(25)=abb74(50)*abb74(77)*abb74(25)
      abb74(40)=abb74(89)*abb74(8)
      abb74(67)=abb74(40)*abb74(91)
      abb74(69)=abb74(29)*abb74(93)
      abb74(89)=abb74(69)*abb74(15)
      abb74(67)=abb74(67)-abb74(89)
      abb74(67)=abb74(67)*c2
      abb74(89)=abb74(15)*abb74(56)
      abb74(89)=abb74(89)-abb74(139)
      abb74(89)=abb74(89)*NC
      abb74(139)=-abb74(15)*abb74(136)
      abb74(67)=abb74(67)-abb74(89)+2.0_ki*abb74(139)
      abb74(89)=abb74(92)*spak1k4
      abb74(139)=abb74(99)*spak3k4
      abb74(89)=abb74(89)-abb74(139)
      abb74(67)=-abb74(67)*abb74(89)
      abb74(17)=abb74(26)+abb74(25)+abb74(17)+abb74(67)+abb74(42)
      abb74(17)=4.0_ki*abb74(17)
      abb74(25)=abb74(91)*abb74(93)
      abb74(26)=abb74(146)*abb74(36)
      abb74(25)=abb74(25)-abb74(26)
      abb74(25)=abb74(25)*c2
      abb74(26)=abb74(51)*abb74(8)
      abb74(26)=abb74(26)-abb74(57)
      abb74(26)=abb74(26)*NC
      abb74(42)=abb74(136)*spbk3k1
      abb74(25)=-2.0_ki*abb74(42)+abb74(26)-abb74(25)
      abb74(26)=-spbl6k3*spak3k4
      abb74(42)=spbl6k1*spak1k4
      abb74(26)=abb74(26)+abb74(42)
      abb74(25)=abb74(25)*abb74(26)
      abb74(26)=-abb74(4)*abb74(116)
      abb74(42)=abb74(117)*spbk3k1
      abb74(26)=abb74(26)-abb74(42)
      abb74(42)=-spak3k4*abb74(87)
      abb74(57)=spak1k4*abb74(104)
      abb74(42)=abb74(57)+abb74(42)
      abb74(42)=abb74(26)*abb74(42)
      abb74(25)=abb74(42)+abb74(25)
      abb74(25)=8.0_ki*abb74(25)
      abb74(42)=abb74(44)*abb74(114)
      abb74(42)=8.0_ki*abb74(42)
      abb74(57)=spbk3k1*abb74(47)
      abb74(57)=abb74(57)+abb74(140)
      abb74(67)=-abb74(57)*abb74(44)*abb74(145)
      abb74(51)=abb74(58)*abb74(51)
      abb74(36)=abb74(110)*abb74(36)
      abb74(91)=abb74(107)*spbk3k1
      abb74(36)=-abb74(91)+abb74(51)+abb74(36)
      abb74(36)=4.0_ki*abb74(36)*abb74(44)
      abb74(26)=abb74(26)*abb74(89)
      abb74(22)=-spbk2k1*abb74(22)
      abb74(22)=abb74(22)-abb74(59)
      abb74(22)=abb74(57)*abb74(22)
      abb74(22)=abb74(26)+abb74(22)
      abb74(22)=4.0_ki*abb74(22)
      abb74(26)=-abb74(24)*abb74(9)*abb74(174)
      abb74(44)=abb74(32)*abb74(142)
      abb74(51)=abb74(78)*abb74(30)
      abb74(57)=abb74(4)*abb74(51)
      abb74(44)=abb74(44)-abb74(57)
      abb74(44)=abb74(44)*c2
      abb74(57)=abb74(142)*abb74(23)
      abb74(30)=abb74(156)*abb74(30)
      abb74(30)=abb74(57)-abb74(30)
      abb74(26)=abb74(26)+abb74(44)-2.0_ki*abb74(30)
      abb74(30)=abb74(26)*abb74(7)
      abb74(24)=abb74(34)*abb74(24)
      abb74(24)=abb74(24)-abb74(153)
      abb74(24)=abb74(24)*NC
      abb74(34)=abb74(34)*abb74(73)
      abb74(39)=abb74(73)*abb74(39)
      abb74(34)=abb74(34)-abb74(39)
      abb74(44)=abb74(51)-abb74(31)
      abb74(44)=abb74(44)*c2
      abb74(24)=-abb74(44)-abb74(24)+2.0_ki*abb74(34)
      abb74(34)=-abb74(5)*abb74(24)
      abb74(44)=abb74(53)*abb74(126)
      abb74(13)=abb74(44)+abb74(13)
      abb74(44)=abb74(13)*abb74(138)
      abb74(34)=abb74(34)+abb74(44)
      abb74(34)=abb74(6)*abb74(34)
      abb74(34)=-abb74(30)+abb74(34)
      abb74(34)=spbk2k1*abb74(34)
      abb74(44)=abb74(20)*abb74(126)
      abb74(33)=abb74(33)*abb74(56)
      abb74(33)=abb74(44)-abb74(33)
      abb74(33)=abb74(33)*abb74(58)
      abb74(44)=abb74(23)*abb74(20)
      abb74(44)=abb74(44)-abb74(61)
      abb74(44)=abb74(44)*abb74(63)
      abb74(51)=abb74(32)*abb74(20)
      abb74(51)=abb74(51)-abb74(64)
      abb74(51)=abb74(51)*abb74(68)
      abb74(33)=abb74(51)+abb74(33)-abb74(44)
      abb74(44)=-spbe7k1*abb74(33)
      abb74(51)=abb74(149)*abb74(93)
      abb74(29)=abb74(40)*abb74(29)
      abb74(29)=abb74(51)-abb74(29)
      abb74(29)=abb74(29)*c2
      abb74(29)=abb74(29)+abb74(71)
      abb74(40)=-abb74(29)*abb74(92)
      abb74(34)=abb74(34)+abb74(44)+abb74(40)
      abb74(34)=4.0_ki*abb74(34)
      abb74(40)=abb74(146)*abb74(11)
      abb74(40)=abb74(40)-abb74(69)
      abb74(40)=abb74(40)*c2
      abb74(44)=abb74(12)*abb74(8)
      abb74(51)=abb74(44)-abb74(56)
      abb74(51)=abb74(51)*NC
      abb74(40)=-abb74(40)-abb74(51)+2.0_ki*abb74(136)
      abb74(51)=abb74(40)*spbl6k1
      abb74(53)=-abb74(4)*abb74(124)
      abb74(53)=abb74(53)+abb74(117)
      abb74(56)=abb74(104)*abb74(53)
      abb74(51)=abb74(56)+abb74(51)
      abb74(56)=8.0_ki*abb74(51)
      abb74(57)=abb74(106)*abb74(119)
      abb74(12)=abb74(135)*abb74(12)
      abb74(12)=abb74(12)+abb74(47)
      abb74(47)=abb74(12)*abb74(7)
      abb74(58)=-abb74(47)*abb74(119)
      abb74(11)=abb74(110)*abb74(11)
      abb74(44)=abb74(44)*NC
      abb74(11)=-abb74(107)+abb74(44)+abb74(11)
      abb74(44)=abb74(11)*abb74(123)
      abb74(59)=abb74(47)*spbk2k1
      abb74(61)=abb74(92)*abb74(53)
      abb74(59)=abb74(59)+abb74(61)
      abb74(61)=4.0_ki*abb74(59)
      abb74(63)=abb74(132)+abb74(111)
      abb74(64)=4.0_ki*abb74(63)
      abb74(68)=4.0_ki*spbk7e7
      abb74(69)=abb74(68)*abb74(106)
      abb74(71)=4.0_ki*abb74(80)
      abb74(73)=abb74(101)*spak1e7
      abb74(89)=spak1l6*abb74(147)*abb74(15)
      abb74(91)=abb74(129)*abb74(121)
      abb74(73)=abb74(89)+abb74(91)-abb74(73)
      abb74(89)=-spak3k4*abb74(73)
      abb74(91)=abb74(167)*es12
      abb74(41)=abb74(91)+abb74(41)
      abb74(91)=abb74(94)*abb74(54)
      abb74(91)=abb74(91)-abb74(41)
      abb74(91)=abb74(77)*abb74(91)
      abb74(93)=-abb74(82)*abb74(92)
      abb74(101)=-spbe7k1*abb74(94)
      abb74(93)=abb74(101)+abb74(93)
      abb74(81)=abb74(81)*abb74(93)
      abb74(81)=abb74(81)+abb74(91)+abb74(89)
      abb74(81)=4.0_ki*abb74(81)
      abb74(89)=8.0_ki*abb74(77)
      abb74(91)=spak2k7*abb74(157)*abb74(89)
      abb74(89)=abb74(125)*abb74(89)
      abb74(93)=-abb74(66)*abb74(92)
      abb74(101)=abb74(120)*spbe7k1
      abb74(93)=abb74(93)-abb74(101)
      abb74(104)=abb74(143)*abb74(7)
      abb74(107)=abb74(104)*spbk2k1
      abb74(110)=abb74(93)-abb74(107)
      abb74(110)=abb74(110)*abb74(150)
      abb74(116)=spbk7e7*abb74(147)*spak4k7
      abb74(10)=-abb74(10)*abb74(60)
      abb74(60)=abb74(122)*spbe7l6
      abb74(10)=-abb74(60)+abb74(10)
      abb74(60)=abb74(10)*spak4l6
      abb74(60)=-abb74(110)+abb74(116)+abb74(60)+abb74(151)
      abb74(110)=-8.0_ki*abb74(60)
      abb74(60)=4.0_ki*abb74(60)
      abb74(116)=-4.0_ki*abb74(77)*abb74(166)
      abb74(111)=abb74(111)*spbk3k1
      abb74(105)=abb74(105)+abb74(111)
      abb74(111)=-abb74(105)*abb74(115)
      abb74(117)=-spak1k4*abb74(100)
      abb74(63)=-abb74(63)*abb74(103)
      abb74(63)=abb74(117)+abb74(63)
      abb74(63)=4.0_ki*abb74(63)
      abb74(114)=abb74(68)*abb74(114)
      abb74(117)=-spak3k4*abb74(114)
      abb74(119)=abb74(147)*spak1k4
      abb74(121)=abb74(106)*abb74(103)
      abb74(119)=abb74(119)-abb74(121)
      abb74(68)=-abb74(119)*abb74(68)
      abb74(15)=abb74(98)*abb74(15)
      abb74(9)=abb74(85)*abb74(9)
      abb74(9)=abb74(15)-abb74(9)
      abb74(15)=abb74(9)*abb74(115)
      abb74(80)=abb74(80)*abb74(103)
      abb74(85)=-spak1k4*abb74(10)
      abb74(80)=abb74(85)+abb74(80)
      abb74(80)=4.0_ki*abb74(80)
      abb74(85)=4.0_ki*abb74(82)
      abb74(98)=abb74(85)*abb74(77)
      abb74(115)=-spae7k7*abb74(98)
      abb74(98)=spal6e7*abb74(98)
      abb74(43)=spak1k4*abb74(43)
      abb74(121)=-abb74(33)*abb74(103)
      abb74(43)=abb74(43)+abb74(121)
      abb74(43)=spbe7k3*abb74(43)
      abb74(14)=-spak1k4*abb74(14)
      abb74(26)=abb74(26)*abb74(103)
      abb74(14)=abb74(14)+abb74(26)
      abb74(14)=abb74(14)*abb74(83)
      abb74(26)=abb74(37)*abb74(38)
      abb74(37)=abb74(77)*spbl5k3
      abb74(121)=abb74(24)*abb74(37)
      abb74(48)=-abb74(48)*abb74(38)
      abb74(37)=-abb74(13)*abb74(37)
      abb74(37)=abb74(48)+abb74(37)
      abb74(37)=abb74(37)*abb74(54)
      abb74(26)=abb74(37)+abb74(26)+abb74(121)
      abb74(26)=abb74(26)*abb74(50)
      abb74(37)=spbl5k3*spak1k4
      abb74(48)=abb74(37)*abb74(30)
      abb74(24)=abb74(24)*abb74(38)
      abb74(13)=-abb74(13)*abb74(55)
      abb74(13)=abb74(24)+abb74(13)
      abb74(13)=abb74(6)*spbl5k3*abb74(13)
      abb74(13)=abb74(48)+abb74(13)
      abb74(13)=spbk2k1*abb74(13)
      abb74(24)=abb74(90)*spak1k4
      abb74(48)=abb74(29)*abb74(103)
      abb74(24)=abb74(24)+abb74(48)
      abb74(24)=-abb74(24)*abb74(99)
      abb74(41)=abb74(38)*abb74(41)
      abb74(48)=spak1k4*abb74(73)
      abb74(50)=abb74(33)*abb74(37)
      abb74(54)=spak1k4*abb74(155)
      abb74(50)=abb74(54)+abb74(50)
      abb74(50)=spbe7k1*abb74(50)
      abb74(54)=abb74(29)*abb74(37)
      abb74(73)=spak1k4*abb74(82)*abb74(148)
      abb74(54)=abb74(73)+abb74(54)
      abb74(54)=abb74(54)*abb74(92)
      abb74(73)=-abb74(94)*abb74(55)
      abb74(13)=abb74(13)+abb74(26)+abb74(50)+abb74(14)+abb74(43)+abb74(73)+abb&
      &74(48)+abb74(41)+abb74(24)+abb74(54)
      abb74(13)=4.0_ki*abb74(13)
      abb74(14)=-spak1k4*abb74(86)
      abb74(24)=abb74(40)*abb74(103)
      abb74(14)=abb74(14)+abb74(24)
      abb74(14)=spbl6k3*abb74(14)
      abb74(24)=-abb74(37)*abb74(51)
      abb74(26)=abb74(35)*spak1k4
      abb74(35)=abb74(53)*abb74(103)
      abb74(26)=abb74(26)+abb74(35)
      abb74(35)=abb74(26)*abb74(87)
      abb74(41)=-spak1k4*abb74(159)
      abb74(14)=abb74(41)+abb74(35)+abb74(14)+abb74(24)
      abb74(14)=8.0_ki*abb74(14)
      abb74(24)=abb74(119)*spbe7k3
      abb74(35)=abb74(37)*spbe7k1
      abb74(41)=abb74(106)*abb74(35)
      abb74(43)=abb74(125)*abb74(38)
      abb74(24)=abb74(24)+abb74(41)-abb74(43)
      abb74(24)=8.0_ki*abb74(24)
      abb74(41)=abb74(137)*spak1k4
      abb74(12)=abb74(12)*abb74(103)
      abb74(12)=abb74(41)+abb74(12)
      abb74(41)=-spbe7k3*abb74(7)*abb74(12)
      abb74(43)=abb74(47)*abb74(35)
      abb74(41)=abb74(41)+abb74(43)
      abb74(41)=8.0_ki*abb74(41)
      abb74(43)=spak1k4*abb74(102)
      abb74(48)=abb74(11)*abb74(103)
      abb74(43)=abb74(43)+abb74(48)
      abb74(43)=spbe7k3*abb74(43)
      abb74(48)=abb74(96)*abb74(55)
      abb74(35)=-abb74(11)*abb74(35)
      abb74(50)=-abb74(38)*abb74(109)
      abb74(35)=abb74(50)+abb74(35)+abb74(48)+abb74(43)
      abb74(35)=4.0_ki*abb74(35)
      abb74(43)=4.0_ki*spak1k4
      abb74(48)=abb74(105)*abb74(43)
      abb74(26)=abb74(26)*abb74(99)
      abb74(50)=-abb74(37)*abb74(59)
      abb74(12)=-abb74(12)*abb74(83)
      abb74(12)=abb74(12)+abb74(50)+abb74(26)
      abb74(12)=4.0_ki*abb74(12)
      abb74(26)=abb74(37)*abb74(64)
      abb74(50)=spak1k4*abb74(114)
      abb74(51)=-abb74(37)*abb74(69)
      abb74(9)=-abb74(9)*abb74(43)
      abb74(37)=-abb74(37)*abb74(71)
      abb74(43)=-abb74(74)*abb74(49)*spbe7l6
      abb74(43)=abb74(43)+abb74(72)
      abb74(43)=abb74(8)*abb74(43)
      abb74(39)=abb74(39)+abb74(43)
      abb74(20)=2.0_ki*abb74(20)-abb74(76)
      abb74(20)=abb74(8)*abb74(78)*abb74(20)
      abb74(20)=-abb74(31)+abb74(20)
      abb74(20)=c2*abb74(20)
      abb74(31)=2.0_ki*abb74(79)-abb74(70)
      abb74(31)=abb74(8)*abb74(31)
      abb74(31)=-abb74(153)+abb74(31)
      abb74(31)=NC*abb74(31)
      abb74(43)=-es12*abb74(104)
      abb74(20)=abb74(43)+abb74(31)+2.0_ki*abb74(39)+abb74(20)
      abb74(20)=abb74(5)*abb74(20)
      abb74(23)=-abb74(16)*abb74(23)
      abb74(23)=abb74(23)+abb74(172)
      abb74(31)=-c2*abb74(32)*abb74(173)
      abb74(16)=abb74(16)*abb74(126)
      abb74(16)=abb74(16)-abb74(127)
      abb74(16)=NC*abb74(16)
      abb74(16)=abb74(16)+2.0_ki*abb74(23)+abb74(31)
      abb74(16)=abb74(16)*abb74(138)
      abb74(23)=spbe7l5*abb74(33)
      abb74(30)=-spbl5k2*abb74(30)
      abb74(31)=spbl6l5*spal6e7
      abb74(32)=spbk7l5*spae7k7
      abb74(31)=abb74(31)-abb74(32)
      abb74(29)=abb74(29)*abb74(31)
      abb74(32)=abb74(148)*abb74(93)
      abb74(33)=spak1e7*abb74(100)
      abb74(39)=abb74(147)*abb74(129)
      abb74(10)=spak1l6*abb74(10)
      abb74(10)=abb74(30)+abb74(10)+abb74(39)+abb74(33)+abb74(23)+abb74(16)+abb&
      &74(32)+abb74(29)+abb74(20)
      abb74(10)=4.0_ki*abb74(10)
      abb74(16)=-spbl6l5*abb74(40)
      abb74(20)=-spbk7l6*abb74(130)*abb74(158)
      abb74(23)=-spbk7l5*spak2k7*abb74(53)
      abb74(16)=abb74(23)+abb74(20)+abb74(16)
      abb74(16)=8.0_ki*abb74(16)
      abb74(20)=abb74(118)*abb74(5)
      abb74(23)=abb74(106)*spbe7l5
      abb74(20)=abb74(20)-abb74(23)
      abb74(20)=8.0_ki*abb74(20)
      abb74(23)=abb74(5)*abb74(104)
      abb74(29)=spbe7l5*abb74(47)
      abb74(23)=abb74(23)+abb74(29)
      abb74(23)=8.0_ki*abb74(23)
      abb74(29)=abb74(130)*abb74(138)
      abb74(30)=-abb74(5)*abb74(75)
      abb74(11)=-spbe7l5*abb74(11)
      abb74(11)=abb74(11)+abb74(29)+abb74(30)
      abb74(11)=4.0_ki*abb74(11)
      abb74(29)=-abb74(53)*abb74(31)
      abb74(30)=abb74(5)*abb74(120)
      abb74(31)=spbl5k2*abb74(47)
      abb74(29)=abb74(31)+abb74(30)+abb74(29)
      abb74(29)=4.0_ki*abb74(29)
      abb74(30)=abb74(85)*abb74(38)
      abb74(31)=spae7k7*abb74(30)
      abb74(30)=-spal6e7*abb74(30)
      abb74(32)=abb74(143)*abb74(83)
      abb74(33)=abb74(120)*spbe7k3
      abb74(32)=abb74(32)-abb74(33)
      abb74(33)=-abb74(77)*abb74(32)
      abb74(39)=abb74(107)+abb74(101)
      abb74(39)=abb74(38)*abb74(39)
      abb74(40)=abb74(77)*abb74(99)
      abb74(43)=abb74(38)*abb74(92)
      abb74(40)=abb74(43)+abb74(40)
      abb74(40)=abb74(66)*abb74(40)
      abb74(33)=abb74(40)+abb74(39)+abb74(33)
      abb74(33)=4.0_ki*abb74(33)
      abb74(39)=-abb74(66)*abb74(99)
      abb74(32)=abb74(39)+abb74(32)
      abb74(32)=4.0_ki*abb74(38)*abb74(32)
      R2d74=0.0_ki
      rat2 = rat2 + R2d74
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='74' value='", &
          & R2d74, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd74h3
