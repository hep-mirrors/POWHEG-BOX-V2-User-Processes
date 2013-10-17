module     p5_usbar_epnebbbarg_abbrevd121h0
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(154), public :: abb121
   complex(ki), public :: R2d121
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
      abb121(1)=1.0_ki/(-mB**2+es67)
      abb121(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb121(3)=1.0_ki/(es34+es567-es12-es234)
      abb121(4)=NC**(-1)
      abb121(5)=spbl6k2**(-1)
      abb121(6)=sqrt(mB**2)
      abb121(7)=spbl5k2**(-1)
      abb121(8)=spak2l6**(-1)
      abb121(9)=TR*gW
      abb121(9)=abb121(9)**2*i_*CVSU*abb121(3)*abb121(2)
      abb121(10)=abb121(9)*spbk3k1*abb121(1)
      abb121(11)=2.0_ki*c3
      abb121(12)=abb121(11)*abb121(4)
      abb121(13)=abb121(12)*abb121(10)
      abb121(14)=abb121(4)**2
      abb121(15)=abb121(10)*abb121(14)
      abb121(16)=abb121(15)+abb121(10)
      abb121(17)=abb121(16)*c2
      abb121(13)=abb121(13)-abb121(17)
      abb121(17)=spak2l5**2
      abb121(18)=abb121(6)*spal6e7
      abb121(13)=abb121(13)*abb121(17)*abb121(18)
      abb121(19)=spbe7k3*abb121(13)
      abb121(14)=abb121(14)+1.0_ki
      abb121(20)=mB*abb121(10)
      abb121(21)=abb121(20)*abb121(14)
      abb121(22)=abb121(21)*c2
      abb121(23)=abb121(12)*abb121(20)
      abb121(22)=abb121(22)-abb121(23)
      abb121(24)=spbe7k2*abb121(5)
      abb121(17)=abb121(22)*abb121(17)*abb121(24)
      abb121(22)=abb121(17)*spae7k7
      abb121(25)=-spbk7k3*abb121(22)
      abb121(17)=abb121(17)*spal6e7
      abb121(26)=spbl6k3*abb121(17)
      abb121(19)=abb121(26)+abb121(25)+abb121(19)
      abb121(19)=spak3k4*abb121(19)
      abb121(13)=-spbe7k1*abb121(13)
      abb121(22)=spbk7k1*abb121(22)
      abb121(17)=-spbl6k1*abb121(17)
      abb121(13)=abb121(17)+abb121(22)+abb121(13)
      abb121(13)=spak1k4*abb121(13)
      abb121(13)=abb121(13)+abb121(19)
      abb121(13)=spbl5k2*abb121(13)
      abb121(17)=spak2l5*c2
      abb121(19)=abb121(18)*abb121(17)
      abb121(22)=abb121(19)*abb121(16)
      abb121(25)=abb121(12)*spak2l5
      abb121(26)=abb121(25)*abb121(10)
      abb121(27)=abb121(26)*abb121(18)
      abb121(27)=abb121(27)-abb121(22)
      abb121(28)=abb121(27)*spbe7l6
      abb121(29)=spbk3k2*spak3k4
      abb121(30)=spbk2k1*spak1k4
      abb121(29)=abb121(29)+abb121(30)
      abb121(30)=abb121(29)*spak2l6
      abb121(31)=abb121(28)*abb121(30)
      abb121(32)=abb121(27)*spbk7e7
      abb121(33)=abb121(29)*spak2k7
      abb121(34)=-abb121(32)*abb121(33)
      abb121(13)=abb121(31)+abb121(34)+abb121(13)
      abb121(13)=4.0_ki*abb121(13)
      abb121(31)=abb121(10)*spak2l5*abb121(4)
      abb121(34)=abb121(31)*abb121(6)
      abb121(20)=abb121(20)*abb121(4)
      abb121(35)=spak2l5*abb121(20)
      abb121(34)=abb121(34)-abb121(35)
      abb121(34)=abb121(34)*abb121(11)
      abb121(36)=abb121(21)*abb121(17)
      abb121(37)=abb121(17)*abb121(6)
      abb121(16)=abb121(37)*abb121(16)
      abb121(34)=abb121(34)+abb121(36)-abb121(16)
      abb121(38)=abb121(34)*abb121(30)
      abb121(39)=abb121(5)*spak2l5
      abb121(40)=abb121(23)*abb121(39)
      abb121(41)=abb121(39)*c2
      abb121(42)=abb121(41)*abb121(21)
      abb121(40)=abb121(40)-abb121(42)
      abb121(42)=abb121(40)*abb121(29)
      abb121(43)=-es12+es712-es71
      abb121(43)=abb121(42)*abb121(43)
      abb121(38)=abb121(38)+abb121(43)
      abb121(38)=8.0_ki*abb121(38)
      abb121(43)=abb121(27)*spbe7l5
      abb121(44)=abb121(17)*abb121(24)
      abb121(45)=abb121(44)*abb121(21)
      abb121(46)=abb121(24)*spak2l5
      abb121(47)=abb121(46)*abb121(23)
      abb121(48)=abb121(45)-abb121(47)
      abb121(49)=abb121(48)*spae7k7
      abb121(50)=abb121(49)*spbk7l5
      abb121(47)=abb121(47)*spal6e7
      abb121(51)=abb121(17)*spal6e7
      abb121(52)=abb121(21)*abb121(51)
      abb121(53)=abb121(52)*abb121(24)
      abb121(47)=abb121(47)-abb121(53)
      abb121(53)=abb121(47)*spbl6l5
      abb121(43)=-abb121(53)+abb121(43)-abb121(50)
      abb121(50)=abb121(43)*spak4l5
      abb121(53)=mB**2
      abb121(54)=abb121(53)*abb121(10)
      abb121(55)=abb121(54)*abb121(4)
      abb121(56)=abb121(24)*abb121(6)
      abb121(57)=abb121(56)*abb121(7)
      abb121(58)=abb121(57)*abb121(55)
      abb121(59)=mB**3
      abb121(10)=abb121(59)*abb121(10)
      abb121(60)=abb121(10)*abb121(4)
      abb121(61)=abb121(60)*abb121(7)
      abb121(62)=abb121(61)*abb121(24)
      abb121(58)=abb121(58)-abb121(62)
      abb121(58)=abb121(58)*abb121(11)
      abb121(62)=abb121(15)*abb121(59)
      abb121(62)=abb121(62)+abb121(10)
      abb121(63)=abb121(62)*abb121(24)
      abb121(64)=abb121(7)*c2
      abb121(65)=abb121(63)*abb121(64)
      abb121(15)=abb121(15)*abb121(53)
      abb121(15)=abb121(15)+abb121(54)
      abb121(66)=abb121(15)*abb121(64)
      abb121(67)=abb121(66)*abb121(56)
      abb121(58)=abb121(58)+abb121(65)-abb121(67)
      abb121(65)=spbk7k2*spak2k4
      abb121(68)=abb121(65)*spae7k7
      abb121(69)=abb121(58)*abb121(68)
      abb121(70)=abb121(46)*spal6e7
      abb121(71)=abb121(70)*abb121(60)
      abb121(72)=abb121(55)*abb121(46)
      abb121(73)=2.0_ki*abb121(18)
      abb121(74)=abb121(72)*abb121(73)
      abb121(71)=abb121(71)-abb121(74)
      abb121(71)=abb121(71)*abb121(11)
      abb121(74)=abb121(51)*abb121(24)
      abb121(75)=abb121(74)*abb121(62)
      abb121(76)=abb121(15)*abb121(44)
      abb121(77)=abb121(76)*abb121(73)
      abb121(71)=abb121(71)-abb121(75)+abb121(77)
      abb121(75)=abb121(8)*spak2k4
      abb121(77)=abb121(71)*abb121(75)
      abb121(78)=abb121(20)*abb121(6)
      abb121(79)=abb121(7)*spal6e7
      abb121(80)=abb121(79)*spbe7k2
      abb121(81)=abb121(78)*abb121(80)
      abb121(82)=2.0_ki*abb121(80)
      abb121(83)=abb121(82)*abb121(55)
      abb121(81)=abb121(81)-abb121(83)
      abb121(81)=abb121(81)*abb121(6)
      abb121(83)=abb121(60)*abb121(80)
      abb121(81)=abb121(81)+abb121(83)
      abb121(81)=abb121(81)*abb121(11)
      abb121(83)=abb121(79)*c2
      abb121(84)=abb121(83)*spbe7k2
      abb121(85)=2.0_ki*abb121(84)
      abb121(86)=abb121(85)*abb121(15)
      abb121(87)=abb121(83)*abb121(21)
      abb121(88)=abb121(87)*spbe7k2
      abb121(89)=abb121(88)*abb121(6)
      abb121(86)=abb121(89)-abb121(86)
      abb121(86)=abb121(86)*abb121(6)
      abb121(89)=abb121(62)*abb121(84)
      abb121(81)=abb121(81)-abb121(86)-abb121(89)
      abb121(86)=abb121(81)*spak2k4
      abb121(89)=abb121(31)*abb121(73)
      abb121(35)=abb121(35)*spal6e7
      abb121(89)=abb121(89)-abb121(35)
      abb121(89)=abb121(89)*abb121(11)
      abb121(89)=-abb121(89)-abb121(52)+2.0_ki*abb121(22)
      abb121(90)=spak4l6*spbe7l6
      abb121(91)=spak4k7*spbk7e7
      abb121(90)=abb121(90)-abb121(91)
      abb121(91)=-abb121(89)*abb121(90)
      abb121(92)=2.0_ki*abb121(6)
      abb121(45)=abb121(92)*abb121(45)
      abb121(45)=abb121(45)-abb121(76)
      abb121(45)=abb121(45)*abb121(6)
      abb121(93)=abb121(92)*abb121(46)
      abb121(20)=abb121(93)*abb121(20)
      abb121(20)=abb121(20)-abb121(72)
      abb121(72)=abb121(11)*abb121(6)
      abb121(20)=abb121(20)*abb121(72)
      abb121(20)=abb121(45)-abb121(20)
      abb121(45)=abb121(20)*spak4e7
      abb121(45)=-abb121(45)+abb121(69)+abb121(50)+abb121(77)+abb121(86)+abb121&
      &(91)
      abb121(45)=8.0_ki*abb121(45)
      abb121(50)=abb121(34)*spak4l6
      abb121(69)=abb121(40)*spbk7k2
      abb121(77)=abb121(69)*spak4k7
      abb121(50)=abb121(50)-abb121(77)
      abb121(77)=abb121(23)*abb121(7)
      abb121(21)=abb121(21)*abb121(64)
      abb121(21)=abb121(77)-abb121(21)
      abb121(77)=abb121(21)*spal6k7
      abb121(86)=abb121(65)*abb121(77)
      abb121(50)=-abb121(86)+2.0_ki*abb121(50)
      abb121(50)=16.0_ki*abb121(50)
      abb121(86)=2.0_ki*spak4e7
      abb121(91)=abb121(86)*abb121(48)
      abb121(94)=abb121(80)*abb121(23)
      abb121(88)=abb121(94)-abb121(88)
      abb121(94)=abb121(88)*spak2k4
      abb121(91)=abb121(91)-abb121(94)
      abb121(91)=16.0_ki*abb121(91)
      abb121(61)=abb121(61)*abb121(5)
      abb121(94)=abb121(6)*abb121(5)
      abb121(95)=abb121(94)*abb121(7)
      abb121(96)=abb121(95)*abb121(55)
      abb121(61)=abb121(61)-abb121(96)
      abb121(61)=abb121(61)*abb121(11)
      abb121(66)=abb121(94)*abb121(66)
      abb121(94)=abb121(62)*abb121(5)
      abb121(96)=abb121(94)*abb121(64)
      abb121(61)=abb121(61)+abb121(66)-abb121(96)
      abb121(61)=16.0_ki*abb121(61)*abb121(29)
      abb121(97)=abb121(10)*abb121(12)
      abb121(98)=abb121(79)*abb121(24)
      abb121(99)=abb121(97)*abb121(98)
      abb121(63)=abb121(63)*abb121(83)
      abb121(99)=abb121(99)-abb121(63)
      abb121(100)=abb121(99)*abb121(75)
      abb121(101)=spbe7k2*abb121(5)**2
      abb121(102)=abb121(101)*abb121(17)
      abb121(103)=abb121(102)*abb121(62)
      abb121(10)=abb121(10)*abb121(25)
      abb121(104)=abb121(10)*abb121(101)
      abb121(103)=abb121(103)-abb121(104)
      abb121(104)=abb121(103)*abb121(8)
      abb121(105)=abb121(104)*abb121(86)
      abb121(100)=abb121(105)-abb121(100)
      abb121(100)=16.0_ki*abb121(100)
      abb121(105)=spbe7k3*abb121(27)
      abb121(106)=-spbk7k3*abb121(49)
      abb121(107)=-spbl6k3*abb121(47)
      abb121(105)=abb121(107)+abb121(106)+abb121(105)
      abb121(105)=spak3k4*abb121(105)
      abb121(106)=-spbe7k1*abb121(27)
      abb121(107)=spbk7k1*abb121(49)
      abb121(108)=spbl6k1*abb121(47)
      abb121(106)=abb121(108)+abb121(107)+abb121(106)
      abb121(106)=spak1k4*abb121(106)
      abb121(23)=abb121(23)*abb121(79)
      abb121(107)=abb121(23)-abb121(87)
      abb121(108)=abb121(107)*spbe7l6
      abb121(30)=abb121(108)*abb121(30)
      abb121(109)=abb121(107)*spbk7e7
      abb121(33)=-abb121(109)*abb121(33)
      abb121(30)=abb121(30)+abb121(33)+abb121(106)+abb121(105)
      abb121(30)=8.0_ki*abb121(30)
      abb121(26)=abb121(26)*abb121(6)
      abb121(16)=abb121(26)-abb121(16)
      abb121(26)=4.0_ki*abb121(29)
      abb121(33)=-spak2e7*abb121(16)*abb121(26)
      abb121(105)=spak2k4*abb121(107)*spbl6k2
      abb121(106)=abb121(68)*abb121(21)
      abb121(110)=abb121(16)*abb121(86)
      abb121(105)=abb121(110)+abb121(105)-abb121(106)
      abb121(105)=8.0_ki*abb121(105)
      abb121(97)=abb121(97)*abb121(5)
      abb121(106)=abb121(97)*abb121(7)
      abb121(96)=abb121(106)-abb121(96)
      abb121(106)=abb121(8)*abb121(29)
      abb121(110)=8.0_ki*abb121(106)
      abb121(96)=-spak2e7*abb121(96)*abb121(110)
      abb121(111)=abb121(7)*abb121(76)*abb121(6)
      abb121(112)=abb121(57)*abb121(54)
      abb121(113)=abb121(112)*abb121(25)
      abb121(111)=abb121(111)-abb121(113)
      abb121(111)=-abb121(111)*abb121(26)
      abb121(113)=spbl5k3*spak3k4
      abb121(114)=spbl5k1*spak1k4
      abb121(113)=abb121(113)-abb121(114)
      abb121(113)=4.0_ki*abb121(113)
      abb121(114)=abb121(27)*abb121(113)
      abb121(115)=8.0_ki*abb121(27)
      abb121(116)=abb121(48)*abb121(6)**2
      abb121(117)=4.0_ki*spak3k4
      abb121(118)=abb121(116)*abb121(117)
      abb121(119)=8.0_ki*spak3k4
      abb121(120)=abb121(48)*abb121(119)
      abb121(121)=abb121(104)*abb121(119)
      abb121(122)=abb121(16)*abb121(117)
      abb121(123)=spak2l6*spbe7l6
      abb121(124)=spak2k7*spbk7e7
      abb121(123)=abb121(123)-abb121(124)
      abb121(42)=-4.0_ki*abb121(42)*abb121(123)
      abb121(124)=2.0_ki*abb121(40)
      abb121(125)=-abb121(124)*abb121(90)
      abb121(126)=2.0_ki*abb121(75)
      abb121(103)=abb121(126)*abb121(103)
      abb121(112)=abb121(112)*abb121(12)
      abb121(67)=abb121(112)-abb121(67)
      abb121(112)=abb121(67)*spak2k4
      abb121(103)=abb121(112)+abb121(125)-abb121(103)
      abb121(103)=8.0_ki*abb121(103)
      abb121(15)=abb121(15)*abb121(83)
      abb121(87)=abb121(87)*abb121(6)
      abb121(87)=abb121(87)-abb121(15)
      abb121(87)=abb121(87)*abb121(6)
      abb121(78)=abb121(78)*abb121(79)
      abb121(55)=abb121(55)*abb121(79)
      abb121(78)=abb121(78)-abb121(55)
      abb121(78)=abb121(78)*abb121(72)
      abb121(78)=abb121(87)-abb121(78)
      abb121(78)=-abb121(78)*abb121(26)
      abb121(87)=abb121(107)*abb121(29)
      abb121(112)=8.0_ki*abb121(87)
      abb121(94)=abb121(94)*abb121(83)
      abb121(97)=abb121(97)*abb121(79)
      abb121(94)=abb121(94)-abb121(97)
      abb121(94)=-abb121(94)*abb121(110)
      abb121(12)=abb121(12)*abb121(95)*abb121(54)
      abb121(12)=abb121(12)-abb121(66)
      abb121(12)=abb121(12)*abb121(26)
      abb121(66)=4.0_ki*spak1k4
      abb121(95)=-abb121(116)*abb121(66)
      abb121(97)=8.0_ki*spak1k4
      abb121(110)=abb121(48)*abb121(97)
      abb121(116)=-abb121(104)*abb121(97)
      abb121(125)=-abb121(16)*abb121(66)
      abb121(23)=abb121(23)*spak2l5
      abb121(36)=abb121(36)*abb121(79)
      abb121(23)=abb121(23)-abb121(36)
      abb121(23)=abb121(26)*abb121(23)
      abb121(36)=-spbk7e7*abb121(23)
      abb121(127)=abb121(117)*abb121(32)
      abb121(128)=abb121(69)*abb121(119)
      abb121(129)=abb121(117)*abb121(40)
      abb121(130)=-spbk7e7*abb121(129)
      abb121(32)=-abb121(66)*abb121(32)
      abb121(69)=-abb121(69)*abb121(97)
      abb121(40)=abb121(66)*abb121(40)
      abb121(131)=spbk7e7*abb121(40)
      abb121(23)=spbe7l6*abb121(23)
      abb121(132)=-abb121(117)*abb121(28)
      abb121(119)=-abb121(34)*abb121(119)
      abb121(129)=spbe7l6*abb121(129)
      abb121(28)=abb121(66)*abb121(28)
      abb121(97)=abb121(34)*abb121(97)
      abb121(40)=-spbe7l6*abb121(40)
      abb121(133)=-abb121(49)*abb121(113)
      abb121(113)=-abb121(47)*abb121(113)
      abb121(134)=8.0_ki*abb121(49)
      abb121(135)=8.0_ki*abb121(47)
      abb121(14)=abb121(9)*abb121(14)
      abb121(136)=mB*abb121(1)
      abb121(137)=abb121(136)*abb121(14)
      abb121(138)=abb121(137)*abb121(44)
      abb121(9)=abb121(9)*abb121(4)
      abb121(139)=abb121(9)*abb121(11)
      abb121(140)=abb121(139)*abb121(136)
      abb121(141)=abb121(140)*abb121(46)
      abb121(142)=abb121(138)-abb121(141)
      abb121(143)=abb121(142)*spae7k7
      abb121(144)=abb121(143)*spbk7l5
      abb121(145)=abb121(74)*abb121(137)
      abb121(141)=abb121(141)*spal6e7
      abb121(141)=abb121(145)-abb121(141)
      abb121(145)=abb121(141)*spbl6l5
      abb121(146)=abb121(1)*abb121(14)
      abb121(19)=abb121(146)*abb121(19)
      abb121(147)=abb121(139)*spak2l5
      abb121(148)=abb121(147)*abb121(1)
      abb121(149)=abb121(148)*abb121(18)
      abb121(149)=abb121(149)-abb121(19)
      abb121(150)=abb121(149)*spbe7l5
      abb121(144)=-abb121(144)+abb121(150)+abb121(145)
      abb121(144)=spak4l5*abb121(144)
      abb121(59)=abb121(59)*abb121(1)
      abb121(145)=abb121(59)*abb121(9)
      abb121(70)=abb121(145)*abb121(70)
      abb121(150)=abb121(9)*abb121(1)
      abb121(151)=abb121(150)*abb121(53)
      abb121(46)=abb121(151)*abb121(46)
      abb121(152)=abb121(46)*abb121(73)
      abb121(70)=abb121(70)-abb121(152)
      abb121(70)=abb121(70)*abb121(11)
      abb121(14)=abb121(59)*abb121(14)
      abb121(74)=abb121(14)*abb121(74)
      abb121(152)=abb121(53)*abb121(146)
      abb121(153)=abb121(152)*abb121(44)
      abb121(154)=abb121(153)*abb121(73)
      abb121(70)=abb121(70)-abb121(74)+abb121(154)
      abb121(70)=abb121(70)*abb121(75)
      abb121(74)=abb121(150)*spak2l5
      abb121(73)=abb121(74)*abb121(73)
      abb121(9)=abb121(136)*abb121(9)
      abb121(136)=abb121(9)*spak2l5
      abb121(150)=abb121(136)*spal6e7
      abb121(73)=abb121(73)-abb121(150)
      abb121(73)=abb121(73)*abb121(11)
      abb121(51)=abb121(137)*abb121(51)
      abb121(19)=abb121(73)+abb121(51)-2.0_ki*abb121(19)
      abb121(19)=abb121(19)*abb121(90)
      abb121(51)=abb121(6)*abb121(9)*abb121(80)
      abb121(73)=abb121(82)*abb121(151)
      abb121(51)=abb121(51)-abb121(73)
      abb121(51)=abb121(51)*abb121(6)
      abb121(73)=abb121(145)*abb121(80)
      abb121(51)=abb121(51)+abb121(73)
      abb121(51)=abb121(51)*abb121(11)
      abb121(73)=abb121(85)*abb121(152)
      abb121(82)=abb121(137)*abb121(84)
      abb121(85)=abb121(82)*abb121(6)
      abb121(73)=abb121(73)-abb121(85)
      abb121(73)=abb121(73)*abb121(6)
      abb121(84)=abb121(14)*abb121(84)
      abb121(51)=abb121(51)+abb121(73)-abb121(84)
      abb121(51)=abb121(51)*spak2k4
      abb121(73)=abb121(138)*abb121(92)
      abb121(73)=abb121(73)-abb121(153)
      abb121(73)=abb121(73)*abb121(6)
      abb121(9)=abb121(93)*abb121(9)
      abb121(9)=abb121(9)-abb121(46)
      abb121(9)=abb121(9)*abb121(72)
      abb121(9)=abb121(73)-abb121(9)
      abb121(9)=abb121(9)*spak4e7
      abb121(46)=abb121(151)*abb121(57)
      abb121(72)=abb121(145)*abb121(24)*abb121(7)
      abb121(46)=abb121(46)-abb121(72)
      abb121(46)=abb121(46)*abb121(11)
      abb121(72)=abb121(152)*abb121(56)*abb121(64)
      abb121(73)=abb121(14)*abb121(24)
      abb121(84)=abb121(73)*abb121(64)
      abb121(46)=abb121(46)+abb121(84)-abb121(72)
      abb121(46)=abb121(46)*abb121(68)
      abb121(9)=-abb121(9)+abb121(51)+abb121(70)+abb121(46)+abb121(144)+abb121(&
      &19)
      abb121(19)=spbk4k1*abb121(9)
      abb121(46)=spbk7k2*spae7k7
      abb121(51)=abb121(58)*abb121(46)
      abb121(70)=abb121(71)*abb121(8)
      abb121(51)=abb121(81)+abb121(51)+abb121(70)
      abb121(70)=spak2k3*abb121(51)
      abb121(71)=spak3l5*abb121(43)
      abb121(81)=spak3l6*spbe7l6
      abb121(84)=spak3k7*spbk7e7
      abb121(81)=abb121(81)-abb121(84)
      abb121(84)=-abb121(89)*abb121(81)
      abb121(85)=-spak3e7*abb121(20)
      abb121(19)=abb121(71)+abb121(85)+abb121(70)+abb121(19)+abb121(84)
      abb121(19)=4.0_ki*abb121(19)
      abb121(70)=abb121(74)*abb121(6)
      abb121(70)=abb121(70)-abb121(136)
      abb121(70)=abb121(70)*abb121(11)
      abb121(17)=abb121(137)*abb121(17)
      abb121(37)=abb121(146)*abb121(37)
      abb121(17)=abb121(70)+abb121(17)-abb121(37)
      abb121(17)=abb121(17)*spak4l6
      abb121(41)=abb121(137)*abb121(41)
      abb121(39)=abb121(140)*abb121(39)
      abb121(39)=abb121(41)-abb121(39)
      abb121(41)=abb121(39)*spak4k7*spbk7k2
      abb121(17)=abb121(17)+abb121(41)
      abb121(41)=spbk4k1*abb121(17)
      abb121(64)=abb121(137)*abb121(64)
      abb121(70)=abb121(140)*abb121(7)
      abb121(64)=abb121(64)-abb121(70)
      abb121(65)=abb121(64)*abb121(65)
      abb121(70)=spbk4k1*abb121(65)
      abb121(71)=abb121(21)*spbk7k2
      abb121(74)=-spak2k3*abb121(71)
      abb121(70)=abb121(70)+abb121(74)
      abb121(70)=spal6k7*abb121(70)
      abb121(34)=2.0_ki*abb121(34)
      abb121(74)=spak3l6*abb121(34)
      abb121(84)=abb121(124)*spbk7k2
      abb121(85)=-spak3k7*abb121(84)
      abb121(41)=abb121(85)+abb121(74)+2.0_ki*abb121(41)+abb121(70)
      abb121(41)=8.0_ki*abb121(41)
      abb121(70)=abb121(140)*abb121(80)
      abb121(70)=abb121(70)-abb121(82)
      abb121(70)=abb121(70)*spak2k4
      abb121(74)=abb121(142)*abb121(86)
      abb121(70)=abb121(70)-abb121(74)
      abb121(74)=-spbk4k1*abb121(70)
      abb121(80)=abb121(88)*spak2k3
      abb121(48)=2.0_ki*abb121(48)
      abb121(82)=abb121(48)*spak3e7
      abb121(74)=-abb121(80)+abb121(82)+abb121(74)
      abb121(74)=8.0_ki*abb121(74)
      abb121(80)=abb121(59)*abb121(147)*abb121(101)
      abb121(14)=abb121(14)*abb121(102)
      abb121(14)=abb121(80)-abb121(14)
      abb121(80)=abb121(8)*abb121(14)*abb121(86)
      abb121(59)=abb121(139)*abb121(98)*abb121(59)
      abb121(73)=abb121(73)*abb121(83)
      abb121(59)=abb121(59)-abb121(73)
      abb121(59)=abb121(59)*abb121(75)
      abb121(59)=abb121(59)+abb121(80)
      abb121(73)=spbk4k1*abb121(59)
      abb121(75)=abb121(99)*abb121(8)
      abb121(80)=spak2k3*abb121(75)
      abb121(82)=2.0_ki*abb121(104)
      abb121(85)=-spak3e7*abb121(82)
      abb121(73)=abb121(85)+abb121(80)+abb121(73)
      abb121(73)=8.0_ki*abb121(73)
      abb121(80)=abb121(148)*abb121(6)
      abb121(37)=abb121(80)-abb121(37)
      abb121(37)=abb121(37)*abb121(86)
      abb121(64)=abb121(64)*abb121(68)
      abb121(37)=abb121(37)+abb121(64)
      abb121(64)=-spbk4k1*abb121(37)
      abb121(68)=abb121(137)*abb121(83)
      abb121(80)=abb121(140)*abb121(79)
      abb121(68)=abb121(68)-abb121(80)
      abb121(80)=abb121(68)*spbk4k1
      abb121(83)=spak2k4*abb121(80)
      abb121(85)=-spak2k3*abb121(107)
      abb121(83)=abb121(83)+abb121(85)
      abb121(83)=spbl6k2*abb121(83)
      abb121(46)=abb121(21)*abb121(46)
      abb121(85)=spak2k3*abb121(46)
      abb121(86)=2.0_ki*spak3e7
      abb121(86)=-abb121(16)*abb121(86)
      abb121(64)=abb121(86)+abb121(83)+abb121(85)+abb121(64)
      abb121(64)=4.0_ki*abb121(64)
      abb121(83)=4.0_ki*spbk4k1
      abb121(85)=abb121(149)*abb121(83)
      abb121(27)=4.0_ki*abb121(27)
      abb121(53)=abb121(57)*abb121(139)*abb121(53)*abb121(1)
      abb121(53)=abb121(53)-abb121(72)
      abb121(53)=abb121(53)*spak2k4
      abb121(14)=abb121(14)*abb121(126)
      abb121(39)=2.0_ki*abb121(39)
      abb121(39)=abb121(90)*abb121(39)
      abb121(14)=abb121(39)+abb121(53)+abb121(14)
      abb121(39)=spbk4k1*abb121(14)
      abb121(53)=abb121(82)-abb121(67)
      abb121(57)=-spak2k3*abb121(53)
      abb121(67)=-abb121(124)*abb121(81)
      abb121(39)=abb121(57)+abb121(39)+abb121(67)
      abb121(39)=4.0_ki*abb121(39)
      abb121(57)=-abb121(143)*abb121(83)
      abb121(67)=abb121(141)*abb121(83)
      abb121(72)=abb121(108)*spak2l6
      abb121(81)=abb121(109)*spak2k7
      abb121(72)=abb121(72)-abb121(81)
      abb121(81)=8.0_ki*abb121(72)
      abb121(83)=4.0_ki*abb121(123)
      abb121(80)=abb121(80)*abb121(83)
      abb121(9)=-spbk4k3*abb121(9)
      abb121(51)=spak1k2*abb121(51)
      abb121(43)=-spak1l5*abb121(43)
      abb121(86)=spak1l6*spbe7l6
      abb121(90)=spak1k7*spbk7e7
      abb121(86)=abb121(86)-abb121(90)
      abb121(89)=abb121(89)*abb121(86)
      abb121(20)=spak1e7*abb121(20)
      abb121(9)=abb121(43)+abb121(20)+abb121(51)+abb121(9)+abb121(89)
      abb121(9)=4.0_ki*abb121(9)
      abb121(17)=-spbk4k3*abb121(17)
      abb121(20)=-spbk4k3*abb121(65)
      abb121(43)=-spak1k2*abb121(71)
      abb121(20)=abb121(20)+abb121(43)
      abb121(20)=spal6k7*abb121(20)
      abb121(34)=-spak1l6*abb121(34)
      abb121(43)=spak1k7*abb121(84)
      abb121(17)=abb121(43)+abb121(34)+2.0_ki*abb121(17)+abb121(20)
      abb121(17)=8.0_ki*abb121(17)
      abb121(20)=-spbk4k3*abb121(70)
      abb121(34)=abb121(88)*spak1k2
      abb121(43)=abb121(48)*spak1e7
      abb121(20)=abb121(34)+abb121(43)+abb121(20)
      abb121(20)=8.0_ki*abb121(20)
      abb121(34)=-spbk4k3*abb121(59)
      abb121(43)=spak1k2*abb121(75)
      abb121(48)=spak1e7*abb121(82)
      abb121(34)=abb121(48)+abb121(43)+abb121(34)
      abb121(34)=8.0_ki*abb121(34)
      abb121(37)=spbk4k3*abb121(37)
      abb121(43)=abb121(68)*spbk4k3
      abb121(48)=-spak2k4*abb121(43)
      abb121(51)=-spak1k2*abb121(107)
      abb121(48)=abb121(48)+abb121(51)
      abb121(48)=spbl6k2*abb121(48)
      abb121(46)=spak1k2*abb121(46)
      abb121(51)=2.0_ki*spak1e7
      abb121(16)=abb121(16)*abb121(51)
      abb121(16)=abb121(16)+abb121(48)+abb121(46)+abb121(37)
      abb121(16)=4.0_ki*abb121(16)
      abb121(37)=4.0_ki*spbk4k3
      abb121(46)=-abb121(149)*abb121(37)
      abb121(14)=-spbk4k3*abb121(14)
      abb121(48)=-spak1k2*abb121(53)
      abb121(51)=abb121(124)*abb121(86)
      abb121(14)=abb121(48)+abb121(14)+abb121(51)
      abb121(14)=4.0_ki*abb121(14)
      abb121(48)=abb121(143)*abb121(37)
      abb121(37)=-abb121(141)*abb121(37)
      abb121(43)=-abb121(43)*abb121(83)
      abb121(51)=4.0_ki*abb121(49)
      abb121(47)=4.0_ki*abb121(47)
      abb121(53)=4.0_ki*abb121(72)
      abb121(59)=abb121(29)*spae7k7
      abb121(59)=4.0_ki*abb121(59)
      abb121(58)=abb121(58)*abb121(59)
      abb121(29)=-8.0_ki*abb121(29)*abb121(77)
      abb121(21)=abb121(21)*abb121(59)
      abb121(59)=abb121(98)*abb121(60)
      abb121(55)=abb121(55)*abb121(56)
      abb121(55)=abb121(59)-abb121(55)
      abb121(55)=abb121(55)*abb121(11)
      abb121(15)=abb121(15)*abb121(56)
      abb121(15)=abb121(55)+abb121(15)-abb121(63)
      abb121(15)=abb121(15)*abb121(26)
      abb121(26)=-4.0_ki*abb121(87)
      abb121(44)=abb121(79)*abb121(62)*abb121(44)
      abb121(10)=abb121(98)*abb121(10)
      abb121(10)=abb121(44)-abb121(10)
      abb121(10)=-4.0_ki*abb121(10)*abb121(106)
      abb121(31)=abb121(31)*abb121(18)
      abb121(31)=abb121(31)-abb121(35)
      abb121(11)=abb121(11)*abb121(31)
      abb121(11)=abb121(11)+abb121(52)-abb121(22)
      abb121(11)=spbe7k2*abb121(11)
      abb121(22)=abb121(24)*abb121(54)*abb121(25)
      abb121(22)=abb121(22)-abb121(76)
      abb121(18)=abb121(8)*abb121(22)*abb121(18)
      abb121(22)=abb121(49)*spbk7k2
      abb121(11)=-abb121(22)-abb121(18)+abb121(11)
      abb121(11)=4.0_ki*abb121(11)
      abb121(18)=spak3k4*abb121(11)
      abb121(22)=-abb121(104)*abb121(117)
      abb121(11)=-spak1k4*abb121(11)
      abb121(24)=abb121(104)*abb121(66)
      R2d121=0.0_ki
      rat2 = rat2 + R2d121
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='121' value='", &
          & R2d121, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd121h0