module     p1_dbarc_epnebbbarg_abbrevd20h3
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(157), public :: abb20
   complex(ki), public :: R2d20
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p1_dbarc_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_color, only: TR
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb20(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb20(2)=NC**(-1)
      abb20(3)=es234**(-1)
      abb20(4)=es56**(-1)
      abb20(5)=es71**(-1)
      abb20(6)=spak2l5**(-1)
      abb20(7)=spak2l6**(-1)
      abb20(8)=es567**(-1)
      abb20(9)=spbl5k2**(-1)
      abb20(10)=spbl6k2**(-1)
      abb20(11)=1.0_ki/(mB**2-es67-es56+es567)
      abb20(12)=sqrt(mB**2)
      abb20(13)=1.0_ki/(-es71+es56-es567+es234)
      abb20(14)=1.0_ki/(-mB**2+es67)
      abb20(15)=spak3k4*spbk3k2
      abb20(16)=TR*gW
      abb20(16)=abb20(16)**2*i_*CVDC*abb20(3)*abb20(1)
      abb20(17)=abb20(16)*mB
      abb20(18)=abb20(17)*abb20(4)
      abb20(19)=abb20(15)*abb20(18)
      abb20(20)=abb20(19)*abb20(8)
      abb20(21)=abb20(6)*spak1k2
      abb20(22)=abb20(21)*abb20(2)
      abb20(23)=abb20(22)*abb20(20)
      abb20(24)=abb20(20)*abb20(21)
      abb20(25)=abb20(24)*NC
      abb20(23)=abb20(23)-abb20(25)
      abb20(23)=abb20(23)*c3
      abb20(25)=NC*c1
      abb20(26)=c1*abb20(2)
      abb20(27)=abb20(25)-abb20(26)
      abb20(24)=-abb20(24)*abb20(27)
      abb20(23)=abb20(23)-abb20(24)
      abb20(24)=abb20(23)*spbe7l6
      abb20(28)=abb20(2)**2
      abb20(17)=abb20(17)*abb20(8)
      abb20(29)=abb20(28)*abb20(17)
      abb20(30)=abb20(29)*abb20(21)
      abb20(31)=abb20(30)*abb20(15)
      abb20(32)=abb20(15)*abb20(17)
      abb20(33)=abb20(32)*abb20(21)
      abb20(31)=abb20(31)-abb20(33)
      abb20(34)=abb20(14)*spbe7l6
      abb20(35)=abb20(34)*c2
      abb20(36)=abb20(31)*abb20(35)
      abb20(37)=abb20(22)*abb20(32)
      abb20(33)=abb20(33)*NC
      abb20(33)=abb20(37)-abb20(33)
      abb20(37)=abb20(34)*c3
      abb20(33)=abb20(33)*abb20(37)
      abb20(24)=-abb20(33)+abb20(36)-abb20(24)
      abb20(36)=abb20(24)*spal6e7
      abb20(38)=spal5e7*spbe7l5
      abb20(39)=abb20(38)*abb20(23)
      abb20(36)=abb20(36)-abb20(39)
      abb20(39)=abb20(36)*spbl6k3
      abb20(40)=abb20(7)*spak1k2
      abb20(41)=abb20(28)*abb20(40)
      abb20(42)=abb20(41)-abb20(40)
      abb20(43)=-abb20(32)*abb20(42)
      abb20(44)=abb20(11)*spbe7l5
      abb20(45)=abb20(44)*c2
      abb20(46)=abb20(43)*abb20(45)
      abb20(47)=abb20(25)*abb20(40)
      abb20(48)=abb20(26)*abb20(40)
      abb20(47)=abb20(47)-abb20(48)
      abb20(49)=NC-abb20(2)
      abb20(50)=abb20(49)*c3
      abb20(51)=-abb20(40)*abb20(50)
      abb20(51)=abb20(51)+abb20(47)
      abb20(51)=abb20(20)*abb20(51)
      abb20(52)=abb20(51)*spbe7l5
      abb20(32)=-abb20(44)*abb20(32)*abb20(47)
      abb20(46)=abb20(32)+abb20(46)-abb20(52)
      abb20(52)=abb20(46)*spal5e7
      abb20(53)=spal6e7*spbe7l6
      abb20(54)=abb20(53)*abb20(51)
      abb20(52)=abb20(52)-abb20(54)
      abb20(54)=abb20(52)*spbl5k3
      abb20(55)=c1*spak2e7
      abb20(56)=-abb20(55)*abb20(49)
      abb20(57)=abb20(56)*abb20(13)
      abb20(28)=abb20(28)-1.0_ki
      abb20(58)=c4*abb20(13)
      abb20(59)=abb20(28)*abb20(58)*spak2e7
      abb20(57)=abb20(57)-abb20(59)
      abb20(59)=mB**3
      abb20(60)=abb20(59)*abb20(16)*abb20(4)
      abb20(61)=abb20(40)*abb20(60)
      abb20(62)=abb20(15)*abb20(6)
      abb20(63)=-abb20(57)*abb20(61)*abb20(62)
      abb20(64)=2.0_ki*spbe7k3
      abb20(65)=abb20(63)*abb20(64)
      abb20(39)=-abb20(65)+abb20(39)+abb20(54)
      abb20(54)=c4*spak1e7
      abb20(65)=abb20(54)*spak2k4
      abb20(66)=abb20(28)*abb20(65)
      abb20(67)=spak1e7*c3
      abb20(68)=abb20(67)*spak2k4
      abb20(69)=abb20(49)*abb20(68)
      abb20(66)=abb20(66)+abb20(69)
      abb20(69)=abb20(18)*abb20(6)
      abb20(70)=spbl6k2*abb20(66)*abb20(69)*spbk3k2
      abb20(71)=abb20(18)*abb20(7)
      abb20(66)=spbl5k2*abb20(66)*abb20(71)*spbk3k2
      abb20(66)=abb20(70)+abb20(66)
      abb20(70)=spbk7e7*abb20(5)
      abb20(66)=abb20(66)*abb20(70)
      abb20(72)=abb20(28)*abb20(54)
      abb20(73)=abb20(49)*abb20(67)
      abb20(72)=abb20(72)+abb20(73)
      abb20(74)=-abb20(72)*abb20(19)*abb20(7)
      abb20(75)=abb20(70)*spbl5k3
      abb20(76)=abb20(75)*abb20(74)
      abb20(77)=-abb20(72)*abb20(19)*abb20(6)
      abb20(78)=abb20(70)*spbl6k3
      abb20(79)=abb20(78)*abb20(77)
      abb20(76)=abb20(76)+abb20(79)
      abb20(66)=abb20(66)+abb20(76)
      abb20(66)=abb20(66)*spak2k7
      abb20(79)=-spak2e7*abb20(49)
      abb20(80)=abb20(17)*spbk3k2
      abb20(81)=abb20(80)*abb20(7)
      abb20(82)=-abb20(81)*abb20(79)
      abb20(83)=abb20(14)*c3
      abb20(84)=abb20(82)*abb20(83)
      abb20(85)=abb20(29)*abb20(7)
      abb20(86)=abb20(85)*spbk3k2
      abb20(81)=abb20(86)-abb20(81)
      abb20(86)=c2*spak2e7
      abb20(87)=abb20(86)*abb20(14)
      abb20(88)=abb20(81)*abb20(87)
      abb20(84)=abb20(84)+abb20(88)
      abb20(88)=spbl5k2*spak2k4
      abb20(84)=abb20(84)*abb20(88)
      abb20(89)=abb20(80)*abb20(6)
      abb20(90)=-abb20(89)*abb20(56)
      abb20(91)=abb20(90)*abb20(11)
      abb20(92)=abb20(29)*abb20(6)
      abb20(93)=abb20(92)*spbk3k2
      abb20(89)=abb20(93)-abb20(89)
      abb20(93)=abb20(86)*abb20(11)
      abb20(94)=abb20(89)*abb20(93)
      abb20(91)=abb20(91)+abb20(94)
      abb20(94)=spbl6k2*spak2k4
      abb20(91)=abb20(91)*abb20(94)
      abb20(84)=abb20(84)-abb20(91)
      abb20(84)=abb20(84)*spbk7e7
      abb20(91)=abb20(29)*abb20(62)
      abb20(95)=abb20(62)*abb20(17)
      abb20(91)=abb20(91)-abb20(95)
      abb20(96)=abb20(91)*abb20(93)
      abb20(95)=-abb20(95)*abb20(56)
      abb20(97)=abb20(95)*abb20(11)
      abb20(96)=abb20(96)+abb20(97)
      abb20(97)=spbl6k3*spbk7e7
      abb20(98)=abb20(97)*abb20(96)
      abb20(99)=abb20(15)*abb20(7)
      abb20(29)=abb20(29)*abb20(99)
      abb20(99)=abb20(99)*abb20(17)
      abb20(29)=abb20(29)-abb20(99)
      abb20(100)=abb20(29)*abb20(87)
      abb20(99)=-abb20(99)*abb20(79)
      abb20(101)=abb20(99)*abb20(83)
      abb20(100)=abb20(100)+abb20(101)
      abb20(101)=spbl5k3*spbk7e7
      abb20(102)=abb20(101)*abb20(100)
      abb20(98)=abb20(102)-abb20(98)
      abb20(84)=abb20(84)-abb20(98)
      abb20(84)=abb20(84)*spak1k7
      abb20(102)=abb20(14)-abb20(11)
      abb20(102)=abb20(86)*abb20(102)*abb20(28)
      abb20(103)=abb20(56)*abb20(11)
      abb20(104)=abb20(79)*abb20(83)
      abb20(102)=abb20(102)+abb20(103)-abb20(104)
      abb20(16)=abb20(16)*abb20(8)
      abb20(103)=abb20(40)*abb20(16)*mB**2
      abb20(104)=-abb20(102)*abb20(62)*abb20(103)
      abb20(105)=abb20(104)*spbe7k3
      abb20(106)=abb20(49)*abb20(67)*abb20(34)
      abb20(107)=abb20(15)*abb20(16)
      abb20(108)=-abb20(107)*abb20(106)
      abb20(109)=abb20(107)*abb20(28)
      abb20(110)=abb20(35)*spak1e7
      abb20(111)=abb20(109)*abb20(110)
      abb20(108)=abb20(108)-abb20(111)
      abb20(111)=abb20(108)*spbl5k3
      abb20(112)=abb20(27)*abb20(44)*spak1e7
      abb20(107)=-abb20(107)*abb20(112)
      abb20(113)=abb20(45)*spak1e7
      abb20(109)=abb20(109)*abb20(113)
      abb20(107)=abb20(107)-abb20(109)
      abb20(109)=abb20(107)*spbl6k3
      abb20(105)=abb20(109)+abb20(105)-abb20(111)
      abb20(109)=abb20(16)*spbk3k2
      abb20(111)=abb20(109)*abb20(106)
      abb20(114)=abb20(109)*abb20(28)
      abb20(115)=abb20(114)*abb20(110)
      abb20(111)=abb20(111)+abb20(115)
      abb20(111)=abb20(111)*abb20(88)
      abb20(114)=abb20(114)*abb20(113)
      abb20(109)=abb20(109)*abb20(112)
      abb20(109)=abb20(114)+abb20(109)
      abb20(109)=abb20(109)*abb20(94)
      abb20(109)=-abb20(111)+abb20(109)+abb20(105)
      abb20(109)=abb20(109)*abb20(12)
      abb20(111)=abb20(21)*abb20(18)
      abb20(114)=abb20(111)*abb20(26)
      abb20(115)=abb20(18)*NC
      abb20(116)=abb20(115)*abb20(21)
      abb20(117)=abb20(116)*c1
      abb20(114)=abb20(114)-abb20(117)
      abb20(118)=abb20(111)*abb20(2)
      abb20(118)=abb20(118)-abb20(116)
      abb20(119)=-c3*abb20(118)
      abb20(119)=abb20(119)+abb20(114)
      abb20(120)=spbk3k2*abb20(8)
      abb20(119)=abb20(120)*abb20(119)
      abb20(121)=abb20(119)*spbe7l6
      abb20(122)=abb20(30)*spbk3k2
      abb20(123)=abb20(21)*abb20(17)
      abb20(124)=abb20(123)*spbk3k2
      abb20(122)=abb20(122)-abb20(124)
      abb20(125)=abb20(122)*abb20(35)
      abb20(126)=abb20(49)*abb20(37)
      abb20(124)=-abb20(124)*abb20(126)
      abb20(121)=-abb20(124)+abb20(125)+abb20(121)
      abb20(121)=abb20(121)*abb20(94)
      abb20(125)=abb20(48)*abb20(18)
      abb20(115)=abb20(115)*abb20(40)
      abb20(127)=c1*abb20(115)
      abb20(125)=abb20(125)-abb20(127)
      abb20(128)=abb20(40)*abb20(2)
      abb20(129)=abb20(128)*abb20(18)
      abb20(129)=abb20(129)-abb20(115)
      abb20(130)=-c3*abb20(129)
      abb20(130)=abb20(130)+abb20(125)
      abb20(130)=abb20(120)*abb20(130)
      abb20(131)=spbe7l6*abb20(130)*abb20(88)
      abb20(121)=abb20(121)+abb20(131)
      abb20(121)=abb20(121)*spal6e7
      abb20(130)=abb20(130)*spbe7l5
      abb20(131)=abb20(40)*abb20(17)
      abb20(132)=abb20(131)*spbk3k2
      abb20(133)=abb20(80)*abb20(41)
      abb20(132)=abb20(132)-abb20(133)
      abb20(133)=abb20(132)*abb20(45)
      abb20(80)=abb20(80)*abb20(48)
      abb20(25)=abb20(131)*abb20(25)
      abb20(134)=abb20(25)*spbk3k2
      abb20(80)=abb20(80)-abb20(134)
      abb20(80)=abb20(80)*abb20(44)
      abb20(130)=abb20(133)+abb20(130)+abb20(80)
      abb20(130)=abb20(130)*abb20(88)
      abb20(119)=spbe7l5*abb20(119)*abb20(94)
      abb20(119)=abb20(130)+abb20(119)
      abb20(119)=abb20(119)*spal5e7
      abb20(66)=abb20(121)-abb20(66)-abb20(84)+abb20(109)+abb20(119)-abb20(39)
      abb20(84)=abb20(79)*c3
      abb20(109)=abb20(84)-abb20(56)
      abb20(59)=abb20(59)*abb20(16)
      abb20(119)=abb20(59)*abb20(4)
      abb20(121)=abb20(119)*spak1k2
      abb20(130)=spak3k4*spbk3k2**2
      abb20(133)=abb20(121)*abb20(130)
      abb20(134)=abb20(6)**2
      abb20(135)=-spbe7l6*abb20(109)*abb20(133)*abb20(134)
      abb20(136)=2.0_ki*abb20(44)
      abb20(136)=abb20(56)*abb20(136)
      abb20(137)=abb20(59)*abb20(40)*abb20(6)
      abb20(138)=abb20(130)*abb20(137)
      abb20(139)=-abb20(138)*abb20(136)
      abb20(140)=abb20(138)*abb20(28)
      abb20(141)=abb20(86)*abb20(44)
      abb20(142)=2.0_ki*abb20(141)
      abb20(143)=abb20(140)*abb20(142)
      abb20(144)=abb20(137)*abb20(4)
      abb20(130)=-abb20(109)*abb20(144)*abb20(130)
      abb20(145)=abb20(130)*spbe7l5
      abb20(15)=abb20(15)*spak1k2
      abb20(146)=abb20(60)*abb20(15)
      abb20(147)=-abb20(57)*abb20(146)*abb20(134)
      abb20(148)=abb20(64)*spbl6k2
      abb20(149)=abb20(147)*abb20(148)
      abb20(135)=abb20(135)-abb20(149)+abb20(145)+abb20(139)+abb20(143)
      abb20(135)=abb20(135)*abb20(9)
      abb20(139)=abb20(7)**2
      abb20(133)=-spbe7l5*abb20(109)*abb20(133)*abb20(139)
      abb20(143)=2.0_ki*abb20(37)
      abb20(143)=abb20(79)*abb20(143)
      abb20(138)=-abb20(138)*abb20(143)
      abb20(86)=abb20(86)*abb20(34)
      abb20(145)=2.0_ki*abb20(86)
      abb20(140)=abb20(140)*abb20(145)
      abb20(130)=abb20(130)*spbe7l6
      abb20(146)=-abb20(57)*abb20(146)*abb20(139)
      abb20(149)=abb20(64)*spbl5k2
      abb20(150)=abb20(146)*abb20(149)
      abb20(130)=abb20(133)-abb20(150)+abb20(130)-abb20(138)-abb20(140)
      abb20(130)=abb20(130)*abb20(10)
      abb20(43)=abb20(43)*abb20(44)
      abb20(31)=abb20(31)*abb20(34)
      abb20(31)=abb20(43)+abb20(31)
      abb20(31)=abb20(31)*c2
      abb20(31)=abb20(31)+abb20(32)-abb20(33)
      abb20(32)=2.0_ki*spae7k7
      abb20(31)=abb20(31)*abb20(32)
      abb20(33)=abb20(20)*abb20(7)
      abb20(43)=-spbe7l5*abb20(33)*abb20(109)
      abb20(20)=abb20(20)*abb20(6)
      abb20(133)=-spbe7l6*abb20(20)*abb20(109)
      abb20(43)=abb20(43)+abb20(133)
      abb20(133)=abb20(43)*spak1k7
      abb20(31)=abb20(31)-abb20(133)
      abb20(133)=abb20(31)*spbk7k3
      abb20(130)=-abb20(133)+abb20(135)+abb20(130)
      abb20(116)=abb20(116)*spbk3k2
      abb20(133)=abb20(111)*spbk3k2
      abb20(135)=abb20(133)*abb20(2)
      abb20(116)=abb20(116)-abb20(135)
      abb20(116)=abb20(116)*abb20(68)
      abb20(135)=abb20(133)*abb20(28)
      abb20(138)=abb20(135)*abb20(65)
      abb20(116)=abb20(116)+abb20(138)
      abb20(116)=abb20(116)*spbl6k2
      abb20(138)=abb20(18)*spbk3k2
      abb20(140)=abb20(138)*abb20(128)
      abb20(115)=abb20(115)*spbk3k2
      abb20(115)=abb20(140)-abb20(115)
      abb20(68)=abb20(115)*abb20(68)
      abb20(115)=-abb20(138)*abb20(42)
      abb20(65)=abb20(115)*abb20(65)
      abb20(65)=abb20(68)+abb20(65)
      abb20(65)=abb20(65)*spbl5k2
      abb20(65)=abb20(116)-abb20(65)
      abb20(65)=abb20(65)*abb20(5)
      abb20(68)=abb20(19)*abb20(40)
      abb20(116)=-abb20(68)*abb20(73)
      abb20(140)=abb20(41)*abb20(19)
      abb20(68)=abb20(140)-abb20(68)
      abb20(140)=abb20(68)*abb20(54)
      abb20(116)=abb20(116)-abb20(140)
      abb20(140)=spbl5k3*abb20(5)
      abb20(150)=abb20(140)*abb20(116)
      abb20(151)=abb20(19)*abb20(21)
      abb20(73)=-abb20(151)*abb20(73)
      abb20(152)=abb20(151)*abb20(28)
      abb20(153)=abb20(152)*abb20(54)
      abb20(73)=abb20(73)-abb20(153)
      abb20(153)=spbl6k3*abb20(5)
      abb20(154)=abb20(153)*abb20(73)
      abb20(150)=abb20(150)+abb20(154)
      abb20(65)=abb20(65)+abb20(150)
      abb20(154)=2.0_ki*spbe7k1
      abb20(65)=abb20(65)*abb20(154)
      abb20(132)=abb20(132)*abb20(44)
      abb20(122)=abb20(122)*abb20(34)
      abb20(122)=abb20(132)+abb20(122)
      abb20(122)=abb20(122)*c2
      abb20(80)=abb20(122)-abb20(124)+abb20(80)
      abb20(80)=abb20(80)*abb20(32)
      abb20(122)=abb20(69)*abb20(120)
      abb20(124)=-spbe7l6*abb20(122)*abb20(109)
      abb20(120)=abb20(71)*abb20(120)
      abb20(132)=-spbe7l5*abb20(120)*abb20(109)
      abb20(124)=abb20(124)+abb20(132)
      abb20(132)=abb20(124)*spak1k7
      abb20(80)=abb20(80)-abb20(132)
      abb20(80)=spbk7k2*abb20(80)*spak2k4
      abb20(132)=abb20(138)*abb20(48)
      abb20(127)=abb20(127)*spbk3k2
      abb20(127)=abb20(132)-abb20(127)
      abb20(132)=abb20(13)*spak2k4
      abb20(138)=abb20(127)*abb20(132)
      abb20(115)=abb20(115)*spak2k4
      abb20(155)=abb20(115)*abb20(58)
      abb20(138)=abb20(155)+abb20(138)
      abb20(138)=abb20(138)*spal6e7
      abb20(26)=abb20(133)*abb20(26)
      abb20(117)=abb20(117)*spbk3k2
      abb20(26)=abb20(26)-abb20(117)
      abb20(117)=abb20(26)*abb20(132)
      abb20(132)=abb20(135)*spak2k4
      abb20(133)=abb20(132)*abb20(58)
      abb20(117)=abb20(133)-abb20(117)
      abb20(117)=abb20(117)*spal5e7
      abb20(117)=abb20(138)+abb20(117)
      abb20(117)=abb20(117)*spbe7k2
      abb20(133)=abb20(68)*abb20(58)
      abb20(19)=-abb20(19)*abb20(47)
      abb20(135)=abb20(19)*abb20(13)
      abb20(133)=abb20(133)-abb20(135)
      abb20(133)=abb20(133)*spal6e7
      abb20(135)=-abb20(151)*abb20(27)
      abb20(138)=abb20(135)*abb20(13)
      abb20(151)=abb20(152)*abb20(58)
      abb20(138)=abb20(151)-abb20(138)
      abb20(138)=abb20(138)*spal5e7
      abb20(133)=abb20(138)-abb20(133)
      abb20(138)=-spbe7k3*abb20(133)
      abb20(117)=abb20(117)+abb20(138)
      abb20(151)=2.0_ki*spbl6l5
      abb20(117)=abb20(117)*abb20(151)
      abb20(155)=abb20(124)*abb20(94)
      abb20(156)=abb20(43)*spbl6k3
      abb20(29)=abb20(29)*abb20(86)
      abb20(99)=abb20(99)*abb20(37)
      abb20(29)=abb20(29)+abb20(99)
      abb20(99)=2.0_ki*abb20(29)
      abb20(157)=abb20(99)*spbl5k3
      abb20(156)=abb20(156)-abb20(157)
      abb20(81)=abb20(81)*abb20(86)
      abb20(82)=abb20(82)*abb20(37)
      abb20(81)=abb20(82)+abb20(81)
      abb20(82)=2.0_ki*abb20(88)
      abb20(81)=abb20(81)*abb20(82)
      abb20(81)=abb20(81)-abb20(155)+abb20(156)
      abb20(81)=abb20(81)*spak1l6
      abb20(82)=abb20(43)*spbl5k3
      abb20(91)=abb20(91)*abb20(141)
      abb20(95)=abb20(95)*abb20(44)
      abb20(91)=abb20(91)+abb20(95)
      abb20(91)=2.0_ki*abb20(91)
      abb20(95)=abb20(91)*spbl6k3
      abb20(82)=abb20(82)+abb20(95)
      abb20(88)=abb20(124)*abb20(88)
      abb20(89)=abb20(89)*abb20(141)
      abb20(90)=abb20(90)*abb20(44)
      abb20(89)=abb20(90)+abb20(89)
      abb20(90)=2.0_ki*abb20(94)
      abb20(89)=abb20(89)*abb20(90)
      abb20(88)=abb20(89)+abb20(88)-abb20(82)
      abb20(88)=abb20(88)*spak1l5
      abb20(50)=abb20(50)-abb20(27)
      abb20(89)=spak2k7*spak1e7
      abb20(90)=spak2k4*abb20(89)*spbe7k2
      abb20(94)=abb20(90)*abb20(120)*abb20(50)
      abb20(33)=-abb20(33)*abb20(50)
      abb20(95)=abb20(89)*spbe7k3
      abb20(120)=abb20(95)*abb20(33)
      abb20(94)=abb20(94)+abb20(120)
      abb20(120)=2.0_ki*spbk7l5
      abb20(94)=abb20(94)*abb20(120)
      abb20(90)=abb20(90)*abb20(122)*abb20(50)
      abb20(20)=-abb20(20)*abb20(50)
      abb20(50)=abb20(95)*abb20(20)
      abb20(50)=abb20(90)+abb20(50)
      abb20(90)=2.0_ki*spbk7l6
      abb20(50)=abb20(50)*abb20(90)
      abb20(90)=abb20(54)*abb20(13)
      abb20(68)=abb20(68)*abb20(90)
      abb20(95)=abb20(13)*spak1e7
      abb20(19)=abb20(19)*abb20(95)
      abb20(19)=abb20(68)-abb20(19)
      abb20(68)=abb20(19)*spbe7k3
      abb20(120)=abb20(95)*spak2k4
      abb20(122)=abb20(127)*abb20(120)
      abb20(115)=abb20(115)*abb20(90)
      abb20(115)=abb20(115)+abb20(122)
      abb20(115)=abb20(115)*spbe7k2
      abb20(68)=abb20(115)+abb20(68)
      abb20(115)=2.0_ki*spbl5k1
      abb20(68)=abb20(68)*abb20(115)
      abb20(26)=abb20(26)*abb20(120)
      abb20(115)=abb20(132)*abb20(90)
      abb20(26)=abb20(115)-abb20(26)
      abb20(26)=abb20(26)*spbe7k2
      abb20(115)=abb20(135)*abb20(95)
      abb20(120)=abb20(152)*abb20(90)
      abb20(115)=abb20(120)-abb20(115)
      abb20(120)=abb20(115)*spbe7k3
      abb20(26)=abb20(26)-abb20(120)
      abb20(120)=2.0_ki*spbl6k1
      abb20(26)=abb20(26)*abb20(120)
      abb20(26)=-2.0_ki*abb20(66)+abb20(80)-abb20(65)+abb20(68)-abb20(26)-abb20&
      &(81)+abb20(88)+abb20(94)+abb20(50)+abb20(117)+abb20(130)
      abb20(50)=-abb20(12)*abb20(105)
      abb20(65)=spak2k7*abb20(76)
      abb20(66)=-spak1k7*abb20(98)
      abb20(39)=abb20(50)+abb20(66)+abb20(65)+abb20(39)
      abb20(19)=abb20(19)*spbl5k1
      abb20(50)=abb20(115)*spbl6k1
      abb20(65)=abb20(89)*spbk7l5
      abb20(33)=abb20(33)*abb20(65)
      abb20(66)=abb20(89)*spbk7l6
      abb20(20)=abb20(20)*abb20(66)
      abb20(19)=abb20(19)+abb20(50)+abb20(33)+abb20(20)
      abb20(20)=abb20(64)*abb20(19)
      abb20(33)=-spak1l5*abb20(82)
      abb20(50)=-spak1l6*abb20(156)
      abb20(68)=-abb20(150)*abb20(154)
      abb20(76)=abb20(138)*abb20(151)
      abb20(20)=abb20(76)+abb20(68)+abb20(33)+2.0_ki*abb20(39)+abb20(50)+abb20(&
      &20)+abb20(130)
      abb20(20)=4.0_ki*abb20(20)
      abb20(33)=-2.0_ki*abb20(26)
      abb20(39)=abb20(133)*spbl6l5
      abb20(50)=-abb20(12)*abb20(104)
      abb20(68)=abb20(9)*spbl6k2
      abb20(76)=-abb20(147)*abb20(68)
      abb20(80)=abb20(10)*spbl5k2
      abb20(81)=-abb20(146)*abb20(80)
      abb20(50)=-abb20(39)+abb20(81)+abb20(76)-2.0_ki*abb20(63)+abb20(50)
      abb20(50)=spbe7k4*abb20(50)
      abb20(63)=abb20(70)*spak2k7
      abb20(70)=abb20(74)*abb20(63)
      abb20(76)=spak1k7*spbk7e7
      abb20(81)=-abb20(100)*abb20(76)
      abb20(82)=abb20(12)*abb20(108)
      abb20(29)=spak1l6*abb20(29)
      abb20(29)=abb20(29)+abb20(82)+abb20(81)+abb20(70)+abb20(52)
      abb20(52)=-spak1l5*abb20(43)
      abb20(70)=abb20(154)*abb20(5)
      abb20(81)=-abb20(116)*abb20(70)
      abb20(29)=abb20(81)+2.0_ki*abb20(29)+abb20(52)
      abb20(29)=spbl5k4*abb20(29)
      abb20(52)=abb20(62)*abb20(40)
      abb20(81)=abb20(109)*abb20(52)*abb20(119)
      abb20(82)=-spbe7l5*abb20(81)
      abb20(62)=abb20(62)*abb20(41)*abb20(59)
      abb20(52)=abb20(52)*abb20(59)
      abb20(62)=abb20(62)-abb20(52)
      abb20(88)=abb20(62)*abb20(142)
      abb20(15)=abb20(119)*abb20(15)
      abb20(89)=-spbe7l6*abb20(109)*abb20(134)*abb20(15)
      abb20(94)=-abb20(52)*abb20(136)
      abb20(82)=abb20(88)+abb20(94)+abb20(89)+abb20(82)
      abb20(82)=abb20(9)*abb20(82)
      abb20(81)=-spbe7l6*abb20(81)
      abb20(62)=-abb20(62)*abb20(145)
      abb20(15)=-spbe7l5*abb20(109)*abb20(139)*abb20(15)
      abb20(52)=abb20(52)*abb20(143)
      abb20(15)=abb20(62)+abb20(52)+abb20(81)+abb20(15)
      abb20(15)=abb20(10)*abb20(15)
      abb20(15)=abb20(82)+abb20(15)
      abb20(15)=spbk4k2*abb20(15)
      abb20(52)=2.0_ki*spbe7k4
      abb20(62)=abb20(52)*abb20(19)
      abb20(81)=abb20(96)*abb20(76)
      abb20(82)=abb20(77)*abb20(63)
      abb20(88)=-abb20(12)*abb20(107)
      abb20(36)=abb20(88)+abb20(81)+abb20(82)+abb20(36)
      abb20(81)=-spak1l6*abb20(43)
      abb20(82)=-spak1l5*abb20(91)
      abb20(88)=-abb20(73)*abb20(70)
      abb20(36)=abb20(88)+abb20(82)+2.0_ki*abb20(36)+abb20(81)
      abb20(36)=spbl6k4*abb20(36)
      abb20(81)=-spbk7k4*abb20(31)
      abb20(15)=abb20(81)+abb20(15)+abb20(29)+2.0_ki*abb20(50)+abb20(36)+abb20(&
      &62)
      abb20(15)=2.0_ki*abb20(15)
      abb20(29)=abb20(18)*abb20(8)
      abb20(21)=abb20(29)*abb20(21)
      abb20(36)=-abb20(21)*abb20(27)
      abb20(22)=abb20(22)*abb20(29)
      abb20(21)=abb20(21)*NC
      abb20(21)=abb20(22)-abb20(21)
      abb20(21)=abb20(21)*c3
      abb20(21)=abb20(36)-abb20(21)
      abb20(22)=abb20(21)*spbe7l6
      abb20(30)=abb20(30)-abb20(123)
      abb20(35)=abb20(30)*abb20(35)
      abb20(36)=-abb20(123)*abb20(126)
      abb20(22)=-abb20(36)+abb20(22)+abb20(35)
      abb20(35)=-spbl6k2*abb20(22)
      abb20(47)=-abb20(29)*abb20(47)
      abb20(40)=NC*abb20(40)
      abb20(40)=abb20(40)-abb20(128)
      abb20(29)=c3*abb20(29)*abb20(40)
      abb20(29)=abb20(29)+abb20(47)
      abb20(40)=spbl5k2*spbe7l6
      abb20(47)=-abb20(29)*abb20(40)
      abb20(35)=abb20(35)+abb20(47)
      abb20(35)=spal6e7*abb20(35)
      abb20(41)=abb20(41)*abb20(17)
      abb20(41)=abb20(41)-abb20(131)
      abb20(45)=abb20(41)*abb20(45)
      abb20(47)=abb20(29)*spbe7l5
      abb20(48)=abb20(48)*abb20(17)
      abb20(25)=abb20(48)-abb20(25)
      abb20(25)=abb20(25)*abb20(44)
      abb20(45)=-abb20(25)+abb20(45)-abb20(47)
      abb20(47)=spbl5k2*abb20(45)
      abb20(48)=spbl6k2*spbe7l5
      abb20(50)=-abb20(21)*abb20(48)
      abb20(47)=abb20(50)+abb20(47)
      abb20(47)=spal5e7*abb20(47)
      abb20(50)=-abb20(69)*abb20(72)
      abb20(62)=-spbl6k2*abb20(50)
      abb20(72)=-abb20(71)*abb20(72)
      abb20(81)=-spbl5k2*abb20(72)
      abb20(62)=abb20(62)+abb20(81)
      abb20(62)=abb20(62)*abb20(63)
      abb20(81)=abb20(17)*abb20(6)
      abb20(56)=-abb20(81)*abb20(56)
      abb20(82)=abb20(56)*abb20(11)
      abb20(81)=abb20(92)-abb20(81)
      abb20(88)=abb20(81)*abb20(93)
      abb20(82)=abb20(82)+abb20(88)
      abb20(88)=-spbl6k2*abb20(82)
      abb20(17)=abb20(17)*abb20(7)
      abb20(79)=-abb20(17)*abb20(79)
      abb20(83)=abb20(79)*abb20(83)
      abb20(17)=abb20(85)-abb20(17)
      abb20(85)=abb20(17)*abb20(87)
      abb20(83)=abb20(83)+abb20(85)
      abb20(85)=spbl5k2*abb20(83)
      abb20(85)=abb20(88)+abb20(85)
      abb20(85)=abb20(85)*abb20(76)
      abb20(87)=-abb20(16)*abb20(112)
      abb20(88)=abb20(16)*abb20(28)
      abb20(89)=abb20(88)*abb20(113)
      abb20(87)=abb20(87)-abb20(89)
      abb20(89)=spbl6k2*abb20(87)
      abb20(16)=-abb20(16)*abb20(106)
      abb20(88)=abb20(88)*abb20(110)
      abb20(16)=abb20(16)-abb20(88)
      abb20(88)=-spbl5k2*abb20(16)
      abb20(88)=abb20(89)+abb20(88)
      abb20(88)=abb20(12)*abb20(88)
      abb20(35)=abb20(88)+abb20(85)+abb20(62)+abb20(35)+abb20(47)
      abb20(47)=abb20(125)*abb20(95)
      abb20(18)=-abb20(18)*abb20(42)
      abb20(42)=abb20(18)*abb20(90)
      abb20(42)=abb20(42)+abb20(47)
      abb20(42)=abb20(42)*spbl5k1
      abb20(47)=abb20(114)*abb20(95)
      abb20(62)=abb20(111)*abb20(28)
      abb20(85)=abb20(62)*abb20(90)
      abb20(47)=abb20(85)-abb20(47)
      abb20(47)=abb20(47)*spbl6k1
      abb20(85)=abb20(69)*abb20(8)
      abb20(88)=-abb20(85)*abb20(27)
      abb20(49)=-abb20(8)*abb20(49)
      abb20(89)=abb20(49)*c3
      abb20(90)=-abb20(69)*abb20(89)
      abb20(88)=abb20(90)+abb20(88)
      abb20(66)=abb20(88)*abb20(66)
      abb20(88)=abb20(71)*abb20(8)
      abb20(27)=-abb20(88)*abb20(27)
      abb20(89)=-abb20(71)*abb20(89)
      abb20(27)=abb20(89)+abb20(27)
      abb20(27)=abb20(27)*abb20(65)
      abb20(27)=-abb20(42)+abb20(47)-abb20(66)-abb20(27)
      abb20(42)=abb20(114)*abb20(13)
      abb20(47)=abb20(62)*abb20(58)
      abb20(42)=abb20(47)-abb20(42)
      abb20(42)=abb20(42)*spal5e7
      abb20(47)=abb20(125)*abb20(13)
      abb20(58)=abb20(18)*abb20(58)
      abb20(47)=abb20(58)+abb20(47)
      abb20(47)=abb20(47)*spal6e7
      abb20(42)=abb20(42)+abb20(47)
      abb20(47)=abb20(42)*spbl6l5
      abb20(58)=abb20(47)-abb20(27)
      abb20(65)=2.0_ki*spbe7k2
      abb20(58)=abb20(65)*abb20(58)
      abb20(41)=abb20(41)*abb20(44)
      abb20(30)=abb20(30)*abb20(34)
      abb20(30)=abb20(41)-abb20(30)
      abb20(30)=abb20(30)*c2
      abb20(25)=abb20(36)+abb20(30)-abb20(25)
      abb20(25)=abb20(25)*abb20(32)
      abb20(30)=-abb20(85)*abb20(84)
      abb20(32)=-abb20(55)*abb20(49)
      abb20(34)=-abb20(69)*abb20(32)
      abb20(30)=abb20(30)+abb20(34)
      abb20(30)=abb20(30)*spbe7l6
      abb20(34)=-abb20(88)*abb20(84)
      abb20(32)=-abb20(71)*abb20(32)
      abb20(32)=abb20(34)+abb20(32)
      abb20(32)=abb20(32)*spbe7l5
      abb20(30)=abb20(30)+abb20(32)
      abb20(32)=abb20(30)*spak1k7
      abb20(25)=abb20(25)+abb20(32)
      abb20(32)=-spbk7k2*abb20(25)
      abb20(34)=spbl6k2*abb20(30)
      abb20(17)=abb20(17)*abb20(86)
      abb20(36)=abb20(79)*abb20(37)
      abb20(17)=abb20(36)+abb20(17)
      abb20(36)=spbl5k2*abb20(17)
      abb20(34)=abb20(34)-2.0_ki*abb20(36)
      abb20(34)=spak1l6*abb20(34)
      abb20(36)=spbl5k2*abb20(30)
      abb20(37)=abb20(81)*abb20(141)
      abb20(41)=abb20(56)*abb20(44)
      abb20(37)=abb20(41)+abb20(37)
      abb20(37)=2.0_ki*abb20(37)
      abb20(41)=spbl6k2*abb20(37)
      abb20(36)=abb20(41)+abb20(36)
      abb20(36)=spak1l5*abb20(36)
      abb20(41)=abb20(118)*abb20(67)
      abb20(44)=abb20(62)*abb20(54)
      abb20(41)=abb20(41)-abb20(44)
      abb20(44)=spbl6k2*abb20(41)
      abb20(49)=abb20(129)*abb20(67)
      abb20(18)=abb20(18)*abb20(54)
      abb20(18)=abb20(49)+abb20(18)
      abb20(49)=spbl5k2*abb20(18)
      abb20(44)=abb20(44)+abb20(49)
      abb20(44)=abb20(44)*abb20(70)
      abb20(32)=abb20(32)+abb20(44)+abb20(36)+2.0_ki*abb20(35)+abb20(34)+abb20(&
      &58)
      abb20(32)=4.0_ki*abb20(32)
      abb20(34)=-abb20(102)*abb20(6)*abb20(103)
      abb20(35)=-abb20(12)*abb20(34)
      abb20(36)=-abb20(57)*abb20(61)*abb20(6)
      abb20(44)=abb20(60)*spak1k2
      abb20(49)=-abb20(57)*abb20(134)*abb20(44)
      abb20(54)=-abb20(49)*abb20(68)
      abb20(44)=-abb20(57)*abb20(139)*abb20(44)
      abb20(55)=-abb20(44)*abb20(80)
      abb20(35)=-abb20(47)+abb20(55)+abb20(54)-2.0_ki*abb20(36)+abb20(35)
      abb20(35)=spbe7k4*abb20(35)
      abb20(45)=abb20(45)*spal5e7
      abb20(29)=abb20(29)*abb20(53)
      abb20(29)=abb20(29)-abb20(45)
      abb20(45)=abb20(72)*abb20(63)
      abb20(47)=-abb20(83)*abb20(76)
      abb20(53)=abb20(12)*abb20(16)
      abb20(54)=spak1l6*abb20(17)
      abb20(45)=abb20(54)+abb20(53)+abb20(47)+abb20(45)+abb20(29)
      abb20(47)=-spak1l5*abb20(30)
      abb20(53)=-abb20(18)*abb20(70)
      abb20(45)=abb20(53)+2.0_ki*abb20(45)+abb20(47)
      abb20(45)=spbl5k4*abb20(45)
      abb20(47)=-spbe7l6*abb20(109)*abb20(121)*abb20(134)
      abb20(53)=abb20(144)*abb20(109)
      abb20(54)=-spbe7l5*abb20(53)
      abb20(55)=-abb20(137)*abb20(136)
      abb20(56)=abb20(28)*abb20(137)
      abb20(57)=abb20(56)*abb20(142)
      abb20(47)=abb20(57)+abb20(55)+abb20(47)+abb20(54)
      abb20(47)=abb20(9)*abb20(47)
      abb20(53)=-spbe7l6*abb20(53)
      abb20(54)=-spbe7l5*abb20(109)*abb20(121)*abb20(139)
      abb20(55)=abb20(137)*abb20(143)
      abb20(56)=-abb20(56)*abb20(145)
      abb20(53)=abb20(56)+abb20(55)+abb20(53)+abb20(54)
      abb20(53)=abb20(10)*abb20(53)
      abb20(47)=abb20(47)+abb20(53)
      abb20(47)=spbk4k2*abb20(47)
      abb20(52)=abb20(52)*abb20(27)
      abb20(22)=abb20(22)*spal6e7
      abb20(21)=abb20(21)*abb20(38)
      abb20(21)=abb20(21)+abb20(22)
      abb20(22)=abb20(50)*abb20(63)
      abb20(38)=abb20(82)*abb20(76)
      abb20(53)=-abb20(12)*abb20(87)
      abb20(22)=abb20(53)+abb20(38)+abb20(22)+abb20(21)
      abb20(38)=-spak1l6*abb20(30)
      abb20(53)=-spak1l5*abb20(37)
      abb20(54)=-abb20(41)*abb20(70)
      abb20(22)=abb20(54)+abb20(53)+2.0_ki*abb20(22)+abb20(38)
      abb20(22)=spbl6k4*abb20(22)
      abb20(38)=spbk7k4*abb20(25)
      abb20(22)=abb20(38)+abb20(47)+abb20(45)+2.0_ki*abb20(35)+abb20(22)+abb20(&
      &52)
      abb20(22)=2.0_ki*abb20(22)
      abb20(21)=spbl6k3*abb20(21)
      abb20(29)=spbl5k3*abb20(29)
      abb20(34)=-spbe7k3*abb20(34)
      abb20(35)=-spbl6k3*abb20(87)
      abb20(16)=spbl5k3*abb20(16)
      abb20(16)=abb20(16)+abb20(34)+abb20(35)
      abb20(16)=abb20(12)*abb20(16)
      abb20(34)=abb20(50)*abb20(78)
      abb20(35)=abb20(72)*abb20(75)
      abb20(34)=abb20(34)+abb20(35)
      abb20(34)=spak2k7*abb20(34)
      abb20(35)=abb20(82)*abb20(97)
      abb20(38)=-abb20(83)*abb20(101)
      abb20(35)=abb20(35)+abb20(38)
      abb20(35)=spak1k7*abb20(35)
      abb20(36)=-abb20(36)*abb20(64)
      abb20(16)=abb20(16)+abb20(35)+abb20(34)+abb20(29)+abb20(36)+abb20(21)
      abb20(21)=abb20(4)*spbk3k2
      abb20(29)=spak1k2*abb20(59)*abb20(21)
      abb20(34)=-spbe7l6*abb20(109)*abb20(29)*abb20(134)
      abb20(21)=abb20(109)*abb20(137)*abb20(21)
      abb20(35)=-spbe7l5*abb20(21)
      abb20(36)=abb20(137)*spbk3k2
      abb20(38)=-abb20(36)*abb20(136)
      abb20(28)=abb20(28)*abb20(36)
      abb20(45)=abb20(28)*abb20(142)
      abb20(47)=-abb20(49)*abb20(148)
      abb20(34)=abb20(47)+abb20(45)+abb20(38)+abb20(34)+abb20(35)
      abb20(34)=abb20(9)*abb20(34)
      abb20(21)=-spbe7l6*abb20(21)
      abb20(29)=-spbe7l5*abb20(109)*abb20(29)*abb20(139)
      abb20(35)=abb20(36)*abb20(143)
      abb20(28)=-abb20(28)*abb20(145)
      abb20(36)=-abb20(44)*abb20(149)
      abb20(21)=abb20(36)+abb20(28)+abb20(35)+abb20(21)+abb20(29)
      abb20(21)=abb20(10)*abb20(21)
      abb20(27)=abb20(64)*abb20(27)
      abb20(25)=spbk7k3*abb20(25)
      abb20(28)=-spbl6k3*abb20(30)
      abb20(29)=2.0_ki*spbl5k3
      abb20(17)=abb20(17)*abb20(29)
      abb20(17)=abb20(28)+abb20(17)
      abb20(17)=spak1l6*abb20(17)
      abb20(28)=-spbl5k3*abb20(30)
      abb20(29)=-spbl6k3*abb20(37)
      abb20(28)=abb20(29)+abb20(28)
      abb20(28)=spak1l5*abb20(28)
      abb20(29)=-abb20(41)*abb20(153)
      abb20(18)=-abb20(18)*abb20(140)
      abb20(18)=abb20(29)+abb20(18)
      abb20(18)=abb20(18)*abb20(154)
      abb20(29)=-abb20(151)*spbe7k3*abb20(42)
      abb20(16)=abb20(25)+abb20(29)+abb20(18)+abb20(21)+abb20(34)+abb20(28)+2.0&
      &_ki*abb20(16)+abb20(17)+abb20(27)
      abb20(16)=2.0_ki*abb20(16)
      abb20(17)=-spbl6k2*abb20(24)
      abb20(18)=abb20(51)*abb20(40)
      abb20(17)=abb20(17)+abb20(18)
      abb20(17)=spal6e7*abb20(17)
      abb20(18)=-spbl5k2*abb20(46)
      abb20(21)=abb20(23)*abb20(48)
      abb20(18)=abb20(21)+abb20(18)
      abb20(18)=spal5e7*abb20(18)
      abb20(21)=-spbl6k2*abb20(77)
      abb20(23)=-spbl5k2*abb20(74)
      abb20(21)=abb20(21)+abb20(23)
      abb20(21)=abb20(21)*abb20(63)
      abb20(23)=-spbl6k2*abb20(96)
      abb20(24)=spbl5k2*abb20(100)
      abb20(23)=abb20(23)+abb20(24)
      abb20(23)=abb20(23)*abb20(76)
      abb20(24)=spbl6k2*abb20(107)
      abb20(25)=-spbl5k2*abb20(108)
      abb20(24)=abb20(24)+abb20(25)
      abb20(24)=abb20(12)*abb20(24)
      abb20(17)=abb20(24)+abb20(23)+abb20(21)+abb20(17)+abb20(18)
      abb20(18)=abb20(39)-abb20(19)
      abb20(18)=abb20(65)*abb20(18)
      abb20(19)=spbl6k2*abb20(91)
      abb20(21)=spbl5k2*abb20(43)
      abb20(19)=abb20(19)+abb20(21)
      abb20(19)=spak1l5*abb20(19)
      abb20(21)=spbk7k2*abb20(31)
      abb20(23)=spbl6k2*abb20(43)
      abb20(24)=-spbl5k2*abb20(99)
      abb20(23)=abb20(23)+abb20(24)
      abb20(23)=spak1l6*abb20(23)
      abb20(24)=spbl5k2*abb20(116)
      abb20(25)=spbl6k2*abb20(73)
      abb20(24)=abb20(25)+abb20(24)
      abb20(24)=abb20(24)*abb20(70)
      abb20(17)=abb20(21)+abb20(24)+abb20(19)+2.0_ki*abb20(17)+abb20(23)+abb20(&
      &18)
      abb20(17)=2.0_ki*abb20(17)
      R2d20=abb20(26)
      rat2 = rat2 + R2d20
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='20' value='", &
          & R2d20, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd20h3
