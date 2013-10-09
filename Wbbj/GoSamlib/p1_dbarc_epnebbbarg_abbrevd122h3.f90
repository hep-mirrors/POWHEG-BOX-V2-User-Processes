module     p1_dbarc_epnebbbarg_abbrevd122h3
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(174), public :: abb122
   complex(ki), public :: R2d122
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
      abb122(1)=1.0_ki/(-mB**2+es67)
      abb122(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb122(3)=NC**(-1)
      abb122(4)=es234**(-1)
      abb122(5)=spak2l6**(-1)
      abb122(6)=spak2l5**(-1)
      abb122(7)=spbl5k2**(-1)
      abb122(8)=spbl6k2**(-1)
      abb122(9)=sqrt(mB**2)
      abb122(10)=TR*gW
      abb122(10)=abb122(10)**2*i_*CVDC*abb122(2)*abb122(1)
      abb122(11)=abb122(10)*spbk3k2*abb122(4)
      abb122(12)=2.0_ki*c3
      abb122(13)=abb122(12)*abb122(3)
      abb122(14)=abb122(13)*abb122(11)
      abb122(15)=abb122(9)*spbe7l6
      abb122(16)=abb122(15)*abb122(14)
      abb122(17)=abb122(3)**2
      abb122(18)=abb122(17)+1.0_ki
      abb122(19)=abb122(11)*abb122(18)
      abb122(20)=abb122(9)*c2
      abb122(21)=abb122(19)*abb122(20)
      abb122(22)=abb122(21)*spbe7l6
      abb122(16)=abb122(16)-abb122(22)
      abb122(22)=spbl5k2*spak2k4
      abb122(23)=spbl5k3*spak3k4
      abb122(22)=abb122(22)-abb122(23)
      abb122(24)=-abb122(16)*abb122(22)
      abb122(25)=abb122(24)*spak1e7
      abb122(26)=mB*abb122(11)
      abb122(27)=abb122(26)*abb122(18)
      abb122(28)=spak2e7*abb122(5)
      abb122(29)=abb122(28)*c2
      abb122(30)=abb122(27)*abb122(29)
      abb122(31)=abb122(13)*abb122(26)
      abb122(32)=abb122(31)*abb122(28)
      abb122(30)=abb122(30)-abb122(32)
      abb122(32)=abb122(30)*spbk7e7
      abb122(33)=-abb122(32)*abb122(22)
      abb122(34)=abb122(33)*spak1k7
      abb122(35)=-spbe7l6*abb122(30)
      abb122(36)=-abb122(35)*abb122(22)
      abb122(37)=abb122(36)*spak1l6
      abb122(25)=-abb122(25)+abb122(34)+abb122(37)
      abb122(34)=abb122(6)*spak1k2
      abb122(37)=abb122(34)*spbe7l6
      abb122(38)=abb122(37)*abb122(28)
      abb122(39)=abb122(10)*abb122(3)
      abb122(40)=abb122(39)*abb122(4)
      abb122(41)=abb122(40)*abb122(12)
      abb122(42)=mB**3
      abb122(43)=abb122(41)*abb122(42)
      abb122(44)=abb122(38)*abb122(43)
      abb122(45)=spbk3k2**2
      abb122(46)=abb122(44)*abb122(45)
      abb122(17)=abb122(10)*abb122(17)
      abb122(47)=abb122(17)*abb122(4)
      abb122(48)=abb122(10)*abb122(4)
      abb122(49)=abb122(47)+abb122(48)
      abb122(50)=abb122(42)*abb122(49)
      abb122(51)=abb122(45)*abb122(50)
      abb122(52)=abb122(29)*abb122(37)
      abb122(53)=abb122(51)*abb122(52)
      abb122(46)=abb122(46)-abb122(53)
      abb122(53)=abb122(46)*abb122(8)
      abb122(54)=spak3k4*abb122(53)
      abb122(54)=abb122(54)-abb122(25)
      abb122(55)=spak1l5*spbl5k1
      abb122(54)=abb122(54)*abb122(55)
      abb122(56)=abb122(37)*c2
      abb122(57)=abb122(27)*abb122(56)
      abb122(58)=abb122(31)*abb122(37)
      abb122(58)=abb122(57)-abb122(58)
      abb122(59)=abb122(9)**2
      abb122(60)=abb122(58)*abb122(59)
      abb122(61)=-spak1e7*abb122(60)
      abb122(62)=abb122(29)*abb122(9)
      abb122(63)=abb122(62)*abb122(34)
      abb122(64)=mB**2
      abb122(65)=abb122(64)*abb122(11)
      abb122(66)=abb122(65)*abb122(18)
      abb122(67)=abb122(63)*abb122(66)
      abb122(68)=abb122(28)*abb122(9)
      abb122(69)=abb122(68)*abb122(65)
      abb122(70)=abb122(69)*abb122(13)
      abb122(71)=abb122(70)*abb122(34)
      abb122(71)=abb122(71)-abb122(67)
      abb122(72)=spak1k7*spbk7e7
      abb122(73)=abb122(71)*abb122(72)
      abb122(74)=abb122(62)*abb122(37)
      abb122(75)=abb122(74)*abb122(66)
      abb122(76)=abb122(70)*abb122(37)
      abb122(76)=abb122(76)-abb122(75)
      abb122(77)=-spak1l6*abb122(76)
      abb122(61)=abb122(77)+abb122(61)+abb122(73)
      abb122(73)=spbk3k1*spak3k4
      abb122(61)=abb122(61)*abb122(73)
      abb122(77)=abb122(28)*abb122(41)
      abb122(78)=abb122(29)*abb122(49)
      abb122(77)=abb122(77)-abb122(78)
      abb122(78)=abb122(7)*spak3k4
      abb122(79)=spak1k2*abb122(6)**2
      abb122(80)=abb122(79)*spbe7l6
      abb122(77)=abb122(78)*abb122(80)*abb122(77)*abb122(45)*mB**5
      abb122(81)=abb122(8)*abb122(77)
      abb122(82)=spbe7l6*abb122(6)
      abb122(83)=abb122(82)*abb122(31)
      abb122(84)=spbe7l6*c2
      abb122(85)=abb122(27)*abb122(84)
      abb122(86)=abb122(85)*abb122(6)
      abb122(83)=abb122(83)-abb122(86)
      abb122(86)=-spak1e7*spak2k4*abb122(59)*abb122(83)
      abb122(81)=abb122(81)+abb122(86)
      abb122(81)=es12*abb122(81)
      abb122(86)=abb122(29)*abb122(34)
      abb122(87)=abb122(51)*abb122(86)
      abb122(88)=abb122(28)*abb122(34)
      abb122(89)=-abb122(45)*abb122(43)*abb122(88)
      abb122(87)=abb122(87)+abb122(89)
      abb122(89)=abb122(78)*spbl5k1
      abb122(87)=abb122(87)*abb122(89)
      abb122(90)=abb122(66)*abb122(62)
      abb122(90)=abb122(90)-abb122(70)
      abb122(91)=es12*spak2k4
      abb122(90)=abb122(91)*abb122(6)*abb122(90)
      abb122(87)=abb122(87)+abb122(90)
      abb122(87)=abb122(87)*abb122(72)
      abb122(46)=abb122(46)*abb122(89)
      abb122(90)=abb122(15)*abb122(29)
      abb122(92)=abb122(90)*abb122(66)
      abb122(93)=-abb122(6)*abb122(92)
      abb122(94)=abb122(70)*abb122(82)
      abb122(93)=abb122(93)+abb122(94)
      abb122(93)=abb122(93)*abb122(91)
      abb122(46)=abb122(46)+abb122(93)
      abb122(46)=spak1l6*abb122(46)
      abb122(93)=abb122(79)*abb122(84)
      abb122(94)=abb122(42)*abb122(11)
      abb122(18)=abb122(94)*abb122(18)
      abb122(95)=abb122(93)*abb122(18)
      abb122(96)=abb122(94)*abb122(13)
      abb122(97)=abb122(80)*abb122(96)
      abb122(95)=abb122(97)-abb122(95)
      abb122(97)=abb122(7)*abb122(95)*abb122(91)
      abb122(98)=-spae7k7*abb122(97)
      abb122(99)=abb122(58)*spae7k7
      abb122(100)=abb122(55)*spak2k4
      abb122(101)=abb122(99)*abb122(100)
      abb122(98)=abb122(98)+abb122(101)
      abb122(98)=spbk7k2*abb122(98)
      abb122(97)=spal6e7*abb122(97)
      abb122(101)=abb122(58)*spal6e7
      abb122(100)=-abb122(101)*abb122(100)
      abb122(97)=abb122(97)+abb122(100)
      abb122(97)=spbl6k2*abb122(97)
      abb122(19)=abb122(62)*abb122(19)
      abb122(100)=-abb122(14)*abb122(68)
      abb122(19)=abb122(19)+abb122(100)
      abb122(100)=abb122(78)*es12
      abb122(102)=mB**4
      abb122(19)=abb122(100)*abb122(79)*abb122(102)*abb122(19)
      abb122(55)=abb122(55)*spak3k4
      abb122(103)=-abb122(71)*abb122(55)
      abb122(19)=abb122(19)+abb122(103)
      abb122(19)=spbe7k3*abb122(19)
      abb122(100)=abb122(100)*abb122(95)
      abb122(103)=spae7k7*abb122(100)
      abb122(104)=-abb122(99)*abb122(55)
      abb122(103)=abb122(103)+abb122(104)
      abb122(103)=spbk7k3*abb122(103)
      abb122(100)=-spal6e7*abb122(100)
      abb122(55)=abb122(101)*abb122(55)
      abb122(55)=abb122(100)+abb122(55)
      abb122(55)=spbl6k3*abb122(55)
      abb122(100)=abb122(47)*abb122(64)
      abb122(104)=abb122(64)*abb122(48)
      abb122(100)=abb122(100)+abb122(104)
      abb122(105)=abb122(100)*abb122(56)
      abb122(106)=abb122(9)*abb122(105)
      abb122(107)=abb122(41)*abb122(64)
      abb122(108)=abb122(37)*abb122(9)
      abb122(109)=-abb122(107)*abb122(108)
      abb122(106)=abb122(106)+abb122(109)
      abb122(89)=spak1e7*abb122(89)*abb122(45)*abb122(106)
      abb122(19)=abb122(55)+abb122(103)+abb122(19)+abb122(97)+abb122(98)+abb122&
      &(61)+abb122(54)+abb122(46)+abb122(87)+abb122(89)+abb122(81)
      abb122(19)=4.0_ki*abb122(19)
      abb122(46)=abb122(94)*abb122(3)
      abb122(54)=abb122(34)*abb122(5)
      abb122(55)=abb122(46)*abb122(54)
      abb122(61)=abb122(65)*abb122(3)
      abb122(81)=abb122(54)*abb122(9)
      abb122(87)=abb122(61)*abb122(81)
      abb122(55)=abb122(55)-abb122(87)
      abb122(55)=abb122(55)*abb122(12)
      abb122(87)=abb122(20)*abb122(54)
      abb122(89)=abb122(87)*abb122(66)
      abb122(97)=abb122(18)*c2
      abb122(98)=abb122(97)*abb122(54)
      abb122(55)=abb122(55)-abb122(98)+abb122(89)
      abb122(103)=-abb122(55)*abb122(91)
      abb122(106)=abb122(27)*c2
      abb122(31)=abb122(106)-abb122(31)
      abb122(109)=abb122(31)*abb122(6)
      abb122(110)=-abb122(109)*abb122(91)
      abb122(111)=-abb122(34)*abb122(31)
      abb122(112)=-abb122(111)*abb122(73)
      abb122(110)=abb122(110)+abb122(112)
      abb122(110)=spbk7l6*spak1k7*abb122(110)
      abb122(112)=-abb122(9)*abb122(61)
      abb122(112)=abb122(46)+abb122(112)
      abb122(112)=abb122(12)*abb122(112)
      abb122(113)=abb122(66)*abb122(20)
      abb122(112)=abb122(112)+abb122(113)
      abb122(114)=abb122(6)*spak1k2**2
      abb122(112)=abb122(112)*abb122(114)*abb122(5)
      abb122(115)=abb122(5)*c2
      abb122(116)=abb122(115)*abb122(18)
      abb122(117)=-abb122(114)*abb122(116)
      abb122(112)=abb122(117)+abb122(112)
      abb122(112)=abb122(112)*abb122(73)
      abb122(103)=abb122(110)+abb122(103)+abb122(112)
      abb122(103)=8.0_ki*abb122(103)
      abb122(110)=abb122(73)*spak1e7
      abb122(112)=abb122(58)*abb122(110)
      abb122(117)=abb122(91)*spak1e7
      abb122(118)=abb122(83)*abb122(117)
      abb122(112)=abb122(112)+abb122(118)
      abb122(112)=8.0_ki*abb122(112)
      abb122(94)=abb122(94)*abb122(28)*abb122(13)
      abb122(118)=abb122(37)*abb122(94)
      abb122(119)=abb122(52)*abb122(18)
      abb122(118)=abb122(118)-abb122(119)
      abb122(120)=spbl5k2*abb122(8)
      abb122(121)=abb122(118)*abb122(120)
      abb122(122)=abb122(101)*spbl6l5
      abb122(123)=abb122(99)*spbk7l5
      abb122(124)=abb122(71)*spbe7l5
      abb122(121)=-abb122(122)+abb122(123)+abb122(124)-abb122(121)
      abb122(122)=abb122(121)*spak4l5
      abb122(123)=2.0_ki*abb122(3)
      abb122(124)=abb122(37)*abb122(123)
      abb122(125)=abb122(124)*abb122(69)
      abb122(126)=abb122(38)*abb122(46)
      abb122(125)=abb122(125)-abb122(126)
      abb122(125)=abb122(125)*abb122(12)
      abb122(125)=abb122(125)+abb122(119)-2.0_ki*abb122(75)
      abb122(127)=abb122(125)*spak4l6
      abb122(128)=abb122(69)*abb122(34)
      abb122(129)=abb122(128)*abb122(123)
      abb122(130)=abb122(46)*abb122(28)
      abb122(131)=abb122(130)*abb122(34)
      abb122(129)=abb122(129)-abb122(131)
      abb122(129)=abb122(129)*abb122(12)
      abb122(132)=abb122(18)*abb122(86)
      abb122(129)=abb122(129)+abb122(132)-2.0_ki*abb122(67)
      abb122(133)=spak4k7*spbk7e7
      abb122(134)=abb122(129)*abb122(133)
      abb122(135)=abb122(124)*abb122(9)
      abb122(136)=abb122(135)*abb122(26)
      abb122(137)=abb122(61)*abb122(37)
      abb122(138)=abb122(136)-abb122(137)
      abb122(139)=abb122(12)*abb122(9)
      abb122(138)=abb122(138)*abb122(139)
      abb122(140)=2.0_ki*abb122(9)
      abb122(141)=abb122(140)*abb122(57)
      abb122(142)=abb122(66)*abb122(56)
      abb122(143)=abb122(141)-abb122(142)
      abb122(143)=abb122(143)*abb122(9)
      abb122(138)=abb122(138)-abb122(143)
      abb122(143)=abb122(138)*spak4e7
      abb122(144)=spbk7k2*spae7k7
      abb122(145)=spbl6k2*spal6e7
      abb122(144)=abb122(144)-abb122(145)
      abb122(145)=abb122(7)*spak2k4
      abb122(95)=abb122(144)*abb122(145)*abb122(95)
      abb122(146)=spbl6l5*spal6e7
      abb122(147)=spbk7l5*spae7k7
      abb122(146)=abb122(146)-abb122(147)
      abb122(147)=-abb122(146)*abb122(16)*spak1k4
      abb122(70)=abb122(70)*spbe7l6
      abb122(70)=abb122(70)-abb122(92)
      abb122(148)=abb122(120)*spak1k4
      abb122(149)=abb122(70)*abb122(148)
      abb122(150)=-abb122(59)*abb122(30)
      abb122(151)=spbe7l5*spak1k4
      abb122(152)=abb122(150)*abb122(151)
      abb122(95)=abb122(127)-abb122(143)+abb122(149)-abb122(152)+abb122(122)-ab&
      &b122(134)+abb122(147)+abb122(95)
      abb122(122)=8.0_ki*abb122(95)
      abb122(11)=abb122(3)*abb122(11)*abb122(9)
      abb122(26)=abb122(26)*abb122(3)
      abb122(11)=abb122(11)-abb122(26)
      abb122(11)=abb122(11)*abb122(12)
      abb122(106)=abb122(11)-abb122(21)+abb122(106)
      abb122(127)=-abb122(106)*spbl6l5
      abb122(134)=abb122(127)*spak1k4
      abb122(143)=2.0_ki*abb122(111)
      abb122(147)=abb122(143)*spbk7l6
      abb122(149)=abb122(147)*spak4k7
      abb122(31)=-abb122(5)*abb122(31)
      abb122(152)=abb122(31)*spak1k4
      abb122(153)=spak2k7*spbk7l5
      abb122(154)=abb122(153)*abb122(152)
      abb122(134)=abb122(154)+abb122(134)+abb122(149)
      abb122(149)=2.0_ki*spak2k4
      abb122(154)=abb122(55)*abb122(149)
      abb122(154)=abb122(154)+abb122(134)
      abb122(154)=16.0_ki*abb122(154)
      abb122(155)=abb122(151)*abb122(30)
      abb122(156)=2.0_ki*spak4e7
      abb122(157)=abb122(156)*abb122(58)
      abb122(155)=abb122(155)+abb122(157)
      abb122(155)=16.0_ki*abb122(155)
      abb122(157)=abb122(5)*abb122(6)
      abb122(84)=abb122(18)*abb122(84)*abb122(157)
      abb122(158)=abb122(96)*abb122(5)
      abb122(159)=-abb122(82)*abb122(158)
      abb122(84)=abb122(84)+abb122(159)
      abb122(84)=abb122(84)*abb122(117)
      abb122(77)=abb122(84)+abb122(77)
      abb122(77)=abb122(8)*abb122(77)
      abb122(84)=abb122(158)*abb122(37)
      abb122(159)=abb122(56)*abb122(5)
      abb122(160)=abb122(159)*abb122(18)
      abb122(84)=abb122(84)-abb122(160)
      abb122(160)=abb122(84)*abb122(8)
      abb122(161)=abb122(160)*abb122(110)
      abb122(77)=abb122(161)-abb122(95)+abb122(77)
      abb122(77)=8.0_ki*abb122(77)
      abb122(95)=-spak2k4*abb122(55)
      abb122(95)=abb122(95)-abb122(134)
      abb122(95)=16.0_ki*abb122(95)
      abb122(97)=abb122(96)-abb122(97)
      abb122(134)=spak2e7*abb122(5)**2
      abb122(97)=abb122(134)*abb122(97)
      abb122(161)=abb122(97)*abb122(8)
      abb122(162)=abb122(161)*abb122(151)
      abb122(163)=abb122(160)*abb122(156)
      abb122(162)=abb122(162)+abb122(163)
      abb122(162)=16.0_ki*abb122(162)
      abb122(163)=-spbe7k3*abb122(71)
      abb122(164)=-spbk7k3*abb122(99)
      abb122(165)=spbl6k3*abb122(101)
      abb122(53)=abb122(165)+abb122(164)+abb122(163)+abb122(53)
      abb122(53)=spak3k4*abb122(53)
      abb122(163)=spbk7k2*abb122(99)
      abb122(164)=-spbl6k2*abb122(101)
      abb122(163)=abb122(164)+abb122(163)
      abb122(163)=spak2k4*abb122(163)
      abb122(25)=abb122(53)+abb122(163)-abb122(25)
      abb122(25)=8.0_ki*abb122(25)
      abb122(53)=abb122(109)*abb122(72)
      abb122(83)=spak1l6*abb122(83)
      abb122(53)=abb122(53)+abb122(83)
      abb122(53)=abb122(91)*abb122(53)
      abb122(83)=abb122(111)*abb122(72)
      abb122(109)=spak1l6*abb122(58)
      abb122(83)=abb122(83)+abb122(109)
      abb122(83)=abb122(83)*abb122(73)
      abb122(96)=abb122(96)*abb122(54)
      abb122(96)=abb122(96)-abb122(98)
      abb122(98)=abb122(96)*abb122(91)
      abb122(109)=abb122(116)-abb122(158)
      abb122(73)=abb122(73)*abb122(114)*abb122(109)
      abb122(73)=abb122(98)+abb122(73)
      abb122(98)=spbe7k2*abb122(8)
      abb122(73)=abb122(73)*abb122(98)
      abb122(53)=abb122(73)+abb122(83)+abb122(53)
      abb122(53)=4.0_ki*abb122(53)
      abb122(73)=abb122(143)*abb122(133)
      abb122(83)=2.0_ki*abb122(58)
      abb122(109)=abb122(83)*spak4l6
      abb122(14)=abb122(14)*abb122(9)
      abb122(14)=abb122(14)-abb122(21)
      abb122(114)=abb122(14)*abb122(151)
      abb122(73)=-abb122(114)+abb122(73)+abb122(109)
      abb122(96)=abb122(96)*abb122(98)
      abb122(109)=abb122(96)*abb122(149)
      abb122(109)=abb122(109)+abb122(73)
      abb122(109)=8.0_ki*abb122(109)
      abb122(114)=spak2k4*abb122(96)
      abb122(73)=abb122(114)+abb122(73)
      abb122(73)=8.0_ki*abb122(73)
      abb122(114)=4.0_ki*spak1l5
      abb122(116)=abb122(24)*abb122(114)
      abb122(158)=4.0_ki*abb122(22)
      abb122(163)=abb122(71)*abb122(158)
      abb122(164)=8.0_ki*abb122(71)
      abb122(165)=4.0_ki*spak3k4
      abb122(60)=abb122(60)*abb122(165)
      abb122(166)=8.0_ki*spak3k4
      abb122(167)=abb122(58)*abb122(166)
      abb122(168)=-abb122(160)*abb122(166)
      abb122(57)=-abb122(9)*abb122(57)
      abb122(57)=abb122(142)+abb122(57)
      abb122(57)=abb122(9)*abb122(57)
      abb122(169)=abb122(26)*abb122(108)
      abb122(169)=-abb122(137)+abb122(169)
      abb122(169)=abb122(169)*abb122(139)
      abb122(57)=abb122(57)+abb122(169)
      abb122(57)=spak2k4*abb122(57)
      abb122(169)=-abb122(9)*abb122(142)
      abb122(13)=abb122(65)*abb122(13)
      abb122(65)=abb122(13)*abb122(108)
      abb122(65)=abb122(169)+abb122(65)
      abb122(23)=abb122(23)*abb122(7)
      abb122(65)=abb122(65)*abb122(23)
      abb122(57)=abb122(57)+abb122(65)
      abb122(57)=4.0_ki*abb122(57)
      abb122(65)=8.0_ki*spak2k4
      abb122(108)=abb122(58)*abb122(65)
      abb122(160)=abb122(160)*abb122(65)
      abb122(169)=-abb122(62)*abb122(49)
      abb122(170)=abb122(68)*abb122(41)
      abb122(169)=abb122(169)+abb122(170)
      abb122(79)=abb122(78)*abb122(79)*abb122(169)*abb122(102)*abb122(45)
      abb122(102)=-abb122(9)*abb122(13)
      abb122(102)=abb122(113)+abb122(102)
      abb122(102)=abb122(117)*abb122(157)*abb122(102)
      abb122(13)=abb122(81)*abb122(13)
      abb122(13)=abb122(13)-abb122(89)
      abb122(89)=abb122(13)*abb122(110)
      abb122(79)=abb122(89)+abb122(79)+abb122(102)
      abb122(79)=4.0_ki*abb122(79)
      abb122(89)=-abb122(152)*abb122(146)
      abb122(102)=abb122(148)*abb122(97)
      abb122(110)=abb122(13)*abb122(156)
      abb122(89)=abb122(89)+abb122(102)+abb122(110)
      abb122(89)=8.0_ki*abb122(89)
      abb122(102)=-abb122(13)*abb122(165)
      abb122(110)=4.0_ki*spak2k4
      abb122(113)=abb122(13)*abb122(110)
      abb122(117)=abb122(150)*abb122(158)
      abb122(152)=abb122(22)*abb122(30)
      abb122(152)=8.0_ki*abb122(152)
      abb122(157)=abb122(22)*abb122(161)
      abb122(169)=8.0_ki*abb122(157)
      abb122(170)=-abb122(14)*abb122(158)
      abb122(33)=-abb122(33)*abb122(114)
      abb122(171)=abb122(165)*spbk7e7
      abb122(172)=-abb122(71)*abb122(171)
      abb122(173)=abb122(111)*spbk7l6
      abb122(174)=abb122(166)*abb122(173)
      abb122(171)=-abb122(111)*abb122(171)
      abb122(128)=abb122(3)*abb122(128)
      abb122(128)=-abb122(131)+abb122(128)
      abb122(128)=abb122(128)*abb122(12)
      abb122(67)=abb122(128)+abb122(132)-abb122(67)
      abb122(67)=spak2k4*abb122(67)
      abb122(128)=abb122(34)*abb122(94)
      abb122(128)=-abb122(132)+abb122(128)
      abb122(128)=abb122(128)*abb122(23)
      abb122(67)=abb122(67)+abb122(128)
      abb122(67)=4.0_ki*spbk7e7*abb122(67)
      abb122(65)=-abb122(65)*abb122(173)
      abb122(128)=abb122(110)*abb122(111)*spbk7e7
      abb122(36)=-abb122(36)*abb122(114)
      abb122(76)=abb122(76)*abb122(165)
      abb122(114)=-abb122(58)*abb122(165)
      abb122(69)=abb122(69)*abb122(3)
      abb122(131)=-abb122(37)*abb122(69)
      abb122(126)=abb122(126)+abb122(131)
      abb122(126)=abb122(126)*abb122(12)
      abb122(75)=abb122(126)-abb122(119)+abb122(75)
      abb122(75)=spak2k4*abb122(75)
      abb122(23)=-abb122(118)*abb122(23)
      abb122(23)=abb122(75)+abb122(23)
      abb122(23)=4.0_ki*abb122(23)
      abb122(75)=abb122(58)*abb122(110)
      abb122(110)=abb122(99)*abb122(158)
      abb122(119)=-abb122(101)*abb122(158)
      abb122(126)=abb122(118)*abb122(8)
      abb122(131)=abb122(126)*abb122(158)
      abb122(132)=8.0_ki*abb122(99)
      abb122(158)=8.0_ki*abb122(101)
      abb122(173)=abb122(16)*spak1e7
      abb122(32)=abb122(32)*spak1k7
      abb122(35)=abb122(35)*spak1l6
      abb122(32)=-abb122(35)+abb122(173)-abb122(32)
      abb122(35)=8.0_ki*abb122(32)
      abb122(104)=abb122(104)*abb122(68)
      abb122(123)=abb122(34)*abb122(104)*abb122(123)
      abb122(173)=abb122(40)*abb122(42)
      abb122(88)=abb122(88)*abb122(173)
      abb122(88)=abb122(123)-abb122(88)
      abb122(88)=abb122(88)*abb122(12)
      abb122(86)=abb122(50)*abb122(86)
      abb122(63)=abb122(100)*abb122(63)
      abb122(86)=abb122(88)+abb122(86)-2.0_ki*abb122(63)
      abb122(86)=abb122(86)*abb122(133)
      abb122(38)=abb122(173)*abb122(38)
      abb122(88)=abb122(104)*abb122(124)
      abb122(38)=abb122(38)-abb122(88)
      abb122(38)=abb122(38)*abb122(12)
      abb122(74)=abb122(74)*abb122(100)
      abb122(52)=abb122(50)*abb122(52)
      abb122(38)=abb122(38)-abb122(52)+2.0_ki*abb122(74)
      abb122(38)=abb122(38)*spak4l6
      abb122(47)=abb122(47)*mB
      abb122(48)=abb122(48)*mB
      abb122(47)=abb122(47)+abb122(48)
      abb122(74)=abb122(47)*abb122(56)
      abb122(88)=abb122(140)*abb122(74)
      abb122(88)=abb122(105)-abb122(88)
      abb122(88)=abb122(88)*abb122(9)
      abb122(48)=abb122(135)*abb122(48)
      abb122(40)=abb122(40)*abb122(64)
      abb122(104)=abb122(40)*abb122(37)
      abb122(48)=abb122(48)-abb122(104)
      abb122(48)=abb122(48)*abb122(139)
      abb122(48)=abb122(88)+abb122(48)
      abb122(48)=abb122(48)*spak4e7
      abb122(38)=abb122(86)+abb122(38)+abb122(48)
      abb122(15)=abb122(41)*abb122(15)
      abb122(20)=abb122(49)*abb122(20)
      abb122(48)=spbe7l6*abb122(20)
      abb122(15)=abb122(15)-abb122(48)
      abb122(48)=abb122(15)*spak1k4*abb122(146)
      abb122(49)=abb122(90)*abb122(100)
      abb122(86)=abb122(107)*abb122(68)
      abb122(88)=abb122(86)*spbe7l6
      abb122(49)=abb122(49)-abb122(88)
      abb122(88)=abb122(49)*abb122(148)
      abb122(90)=abb122(47)*abb122(29)
      abb122(104)=abb122(41)*mB
      abb122(105)=abb122(104)*abb122(28)
      abb122(90)=abb122(90)-abb122(105)
      abb122(59)=abb122(90)*abb122(59)
      abb122(105)=-abb122(59)*abb122(151)
      abb122(48)=abb122(48)+abb122(38)+abb122(88)+abb122(105)
      abb122(48)=spbk4k2*abb122(48)
      abb122(88)=-spak3l5*abb122(121)
      abb122(16)=abb122(16)*abb122(146)
      abb122(105)=-abb122(70)*abb122(120)
      abb122(121)=spbe7l5*abb122(150)
      abb122(16)=abb122(105)+abb122(121)+abb122(16)
      abb122(16)=spak1k3*abb122(16)
      abb122(105)=abb122(129)*spbk7e7
      abb122(121)=spak3k7*abb122(105)
      abb122(123)=-spak3l6*abb122(125)
      abb122(44)=abb122(52)-abb122(44)
      abb122(52)=abb122(44)*abb122(120)
      abb122(86)=abb122(86)*abb122(34)
      abb122(63)=abb122(86)-abb122(63)
      abb122(86)=abb122(63)*spbe7l5
      abb122(52)=abb122(86)+abb122(52)
      abb122(86)=-spbk4k2*abb122(52)
      abb122(124)=abb122(104)*abb122(37)
      abb122(74)=abb122(124)-abb122(74)
      abb122(124)=abb122(74)*spbk4k2
      abb122(125)=-abb122(124)*abb122(146)
      abb122(86)=abb122(86)+abb122(125)
      abb122(86)=spak4l5*abb122(86)
      abb122(125)=spak3e7*abb122(138)
      abb122(10)=abb122(17)+abb122(10)
      abb122(17)=abb122(42)*abb122(10)
      abb122(129)=abb122(17)*abb122(93)
      abb122(42)=abb122(42)*abb122(39)
      abb122(135)=abb122(42)*abb122(12)
      abb122(138)=abb122(135)*abb122(80)
      abb122(129)=abb122(129)-abb122(138)
      abb122(129)=-abb122(129)*abb122(144)*abb122(7)
      abb122(138)=abb122(93)*abb122(50)
      abb122(80)=abb122(43)*abb122(80)
      abb122(138)=abb122(138)-abb122(80)
      abb122(138)=abb122(144)*abb122(138)
      abb122(140)=es34*abb122(7)*abb122(138)
      abb122(16)=abb122(123)+abb122(88)+abb122(121)+abb122(140)+abb122(125)+abb&
      &122(16)+abb122(86)+abb122(48)+abb122(129)
      abb122(16)=4.0_ki*abb122(16)
      abb122(48)=abb122(9)-mB
      abb122(48)=abb122(48)*abb122(41)
      abb122(86)=abb122(47)*c2
      abb122(48)=abb122(48)-abb122(20)+abb122(86)
      abb122(88)=spbl6l5*spak1k4*abb122(48)
      abb122(86)=abb122(104)-abb122(86)
      abb122(34)=abb122(34)*abb122(86)
      abb122(86)=2.0_ki*abb122(34)
      abb122(121)=-spbk7l6*spak4k7*abb122(86)
      abb122(88)=abb122(121)+abb122(88)
      abb122(88)=spbk4k2*abb122(88)
      abb122(10)=abb122(87)*abb122(64)*abb122(10)
      abb122(39)=-abb122(64)*abb122(39)*abb122(81)
      abb122(42)=abb122(54)*abb122(42)
      abb122(39)=abb122(42)+abb122(39)
      abb122(39)=abb122(39)*abb122(12)
      abb122(17)=abb122(17)*c2
      abb122(42)=-abb122(54)*abb122(17)
      abb122(10)=abb122(39)+abb122(42)+abb122(10)
      abb122(39)=-spak1k3*abb122(127)
      abb122(42)=abb122(104)*abb122(5)
      abb122(47)=abb122(115)*abb122(47)
      abb122(42)=abb122(42)-abb122(47)
      abb122(47)=abb122(42)*spak1k4
      abb122(64)=-spbk4k2*abb122(47)
      abb122(104)=-spak1k3*abb122(31)
      abb122(64)=abb122(64)+abb122(104)
      abb122(64)=abb122(64)*abb122(153)
      abb122(104)=abb122(173)*abb122(54)
      abb122(40)=abb122(40)*abb122(81)
      abb122(40)=abb122(104)-abb122(40)
      abb122(40)=abb122(40)*abb122(12)
      abb122(87)=abb122(100)*abb122(87)
      abb122(100)=abb122(50)*c2
      abb122(104)=abb122(100)*abb122(54)
      abb122(40)=abb122(40)+abb122(87)-abb122(104)
      abb122(115)=2.0_ki*es34
      abb122(121)=-abb122(40)*abb122(115)
      abb122(123)=-spak3k7*abb122(147)
      abb122(10)=abb122(123)+abb122(121)+abb122(64)+abb122(39)+2.0_ki*abb122(10&
      &)+abb122(88)
      abb122(10)=8.0_ki*abb122(10)
      abb122(39)=abb122(124)*abb122(156)
      abb122(64)=abb122(83)*spak3e7
      abb122(88)=abb122(151)*spbk4k2
      abb122(121)=abb122(90)*abb122(88)
      abb122(123)=spak1k3*spbe7l5
      abb122(125)=abb122(30)*abb122(123)
      abb122(39)=-abb122(39)+abb122(64)+abb122(121)+abb122(125)
      abb122(39)=8.0_ki*abb122(39)
      abb122(64)=abb122(43)-abb122(100)
      abb122(64)=abb122(134)*abb122(64)
      abb122(100)=abb122(64)*abb122(88)
      abb122(50)=abb122(159)*abb122(50)
      abb122(121)=abb122(43)*abb122(37)*abb122(5)
      abb122(50)=abb122(50)-abb122(121)
      abb122(121)=-spbk4k2*abb122(50)*abb122(156)
      abb122(100)=abb122(100)+abb122(121)
      abb122(100)=abb122(8)*abb122(100)
      abb122(121)=abb122(161)*abb122(123)
      abb122(125)=2.0_ki*abb122(8)
      abb122(84)=spak3e7*abb122(84)*abb122(125)
      abb122(84)=abb122(84)+abb122(121)+abb122(100)
      abb122(84)=8.0_ki*abb122(84)
      abb122(17)=abb122(17)-abb122(135)
      abb122(17)=abb122(54)*abb122(17)
      abb122(43)=abb122(43)*abb122(54)
      abb122(43)=abb122(43)-abb122(104)
      abb122(54)=abb122(43)*abb122(115)
      abb122(17)=abb122(54)+2.0_ki*abb122(17)
      abb122(17)=abb122(98)*abb122(17)
      abb122(41)=abb122(41)*abb122(9)
      abb122(20)=abb122(41)-abb122(20)
      abb122(41)=-abb122(20)*abb122(88)
      abb122(54)=abb122(86)*abb122(133)
      abb122(86)=spbk4k2*abb122(54)
      abb122(88)=2.0_ki*spak4l6
      abb122(100)=-abb122(124)*abb122(88)
      abb122(104)=-abb122(14)*abb122(123)
      abb122(115)=abb122(143)*spbk7e7
      abb122(121)=spak3k7*abb122(115)
      abb122(123)=spak3l6*abb122(83)
      abb122(17)=abb122(123)+abb122(121)+abb122(104)+abb122(100)+abb122(41)+abb&
      &122(86)+abb122(17)
      abb122(17)=4.0_ki*abb122(17)
      abb122(41)=4.0_ki*abb122(63)
      abb122(63)=-spbk4k2*abb122(41)
      abb122(86)=-4.0_ki*abb122(71)
      abb122(47)=-abb122(47)*abb122(146)
      abb122(100)=abb122(64)*abb122(148)
      abb122(81)=abb122(107)*abb122(81)
      abb122(81)=abb122(81)-abb122(87)
      abb122(87)=abb122(81)*abb122(156)
      abb122(47)=abb122(87)+abb122(100)+abb122(47)
      abb122(47)=spbk4k2*abb122(47)
      abb122(87)=-abb122(31)*abb122(146)
      abb122(100)=abb122(97)*abb122(120)
      abb122(87)=abb122(100)+abb122(87)
      abb122(87)=spak1k3*abb122(87)
      abb122(13)=spak3e7*abb122(13)
      abb122(13)=2.0_ki*abb122(13)+abb122(87)+abb122(47)
      abb122(13)=4.0_ki*abb122(13)
      abb122(47)=4.0_ki*spae7k7
      abb122(87)=abb122(124)*abb122(47)
      abb122(100)=4.0_ki*spal6e7
      abb122(104)=-abb122(124)*abb122(100)
      abb122(107)=spak1l6*spbe7l6
      abb122(72)=abb122(107)-abb122(72)
      abb122(72)=abb122(90)*abb122(72)
      abb122(107)=abb122(15)*spak1e7
      abb122(72)=abb122(107)+abb122(72)
      abb122(72)=4.0_ki*abb122(72)
      abb122(107)=spbk4k2*abb122(72)
      abb122(121)=-abb122(145)*abb122(138)
      abb122(38)=abb122(121)-abb122(38)
      abb122(38)=spbk4k3*abb122(38)
      abb122(69)=-abb122(130)+abb122(69)
      abb122(69)=abb122(12)*abb122(69)
      abb122(121)=abb122(18)*abb122(29)
      abb122(69)=abb122(69)+abb122(121)
      abb122(123)=spbe7l6*spak1k2
      abb122(69)=abb122(123)*abb122(69)
      abb122(92)=-spak1k2*abb122(92)
      abb122(124)=spbk4k3*spak1k4
      abb122(49)=-abb122(49)*abb122(124)
      abb122(49)=abb122(49)+abb122(92)+abb122(69)
      abb122(49)=abb122(120)*abb122(49)
      abb122(69)=-spak2k7*abb122(105)
      abb122(11)=-abb122(11)+abb122(21)
      abb122(11)=abb122(123)*abb122(11)
      abb122(15)=abb122(15)*abb122(124)
      abb122(21)=abb122(85)*spak1k2
      abb122(11)=-abb122(15)-abb122(21)+abb122(11)
      abb122(11)=abb122(11)*abb122(146)
      abb122(15)=abb122(66)*abb122(29)
      abb122(21)=abb122(27)*abb122(62)
      abb122(15)=-abb122(15)+abb122(21)
      abb122(15)=abb122(9)*abb122(15)
      abb122(21)=abb122(28)*abb122(61)
      abb122(26)=-abb122(68)*abb122(26)
      abb122(21)=abb122(21)+abb122(26)
      abb122(21)=abb122(139)*abb122(21)
      abb122(15)=abb122(15)+abb122(21)
      abb122(15)=spak1k2*abb122(15)
      abb122(21)=abb122(59)*abb122(124)
      abb122(15)=abb122(21)+abb122(15)
      abb122(15)=spbe7l5*abb122(15)
      abb122(21)=spbk4k3*abb122(52)
      abb122(26)=abb122(74)*spbk4k3
      abb122(27)=abb122(26)*abb122(146)
      abb122(21)=abb122(27)+abb122(21)
      abb122(21)=spak4l5*abb122(21)
      abb122(27)=-3.0_ki*abb122(142)+abb122(141)
      abb122(27)=abb122(9)*abb122(27)
      abb122(18)=abb122(18)*abb122(56)
      abb122(18)=abb122(18)+abb122(27)
      abb122(18)=spak2e7*abb122(18)
      abb122(27)=3.0_ki*abb122(137)-abb122(136)
      abb122(27)=abb122(9)*abb122(27)
      abb122(28)=-abb122(37)*abb122(46)
      abb122(27)=abb122(28)+abb122(27)
      abb122(12)=abb122(12)*spak2e7*abb122(27)
      abb122(11)=abb122(69)+abb122(21)+abb122(15)+abb122(12)+abb122(38)+abb122(&
      &49)+abb122(11)+abb122(18)
      abb122(11)=4.0_ki*abb122(11)
      abb122(12)=-spak1k2*abb122(106)
      abb122(15)=-abb122(48)*abb122(124)
      abb122(12)=abb122(15)+abb122(12)
      abb122(12)=spbl6l5*abb122(12)
      abb122(15)=spbk4k3*abb122(40)*abb122(149)
      abb122(18)=-spak1k2*abb122(31)
      abb122(21)=abb122(42)*abb122(124)
      abb122(18)=abb122(18)-abb122(21)
      abb122(21)=-abb122(18)*abb122(153)
      abb122(27)=spak4k7*spbk4k3*abb122(34)
      abb122(28)=spak2k7*abb122(111)
      abb122(27)=abb122(27)+abb122(28)
      abb122(27)=spbk7l6*abb122(27)
      abb122(12)=2.0_ki*abb122(27)+abb122(21)+abb122(15)+abb122(12)
      abb122(12)=8.0_ki*abb122(12)
      abb122(15)=abb122(90)*abb122(124)
      abb122(21)=abb122(30)*spak1k2
      abb122(15)=abb122(15)+abb122(21)
      abb122(15)=abb122(15)*spbe7l5
      abb122(21)=abb122(26)*abb122(156)
      abb122(27)=abb122(58)*spak2e7
      abb122(15)=abb122(15)-abb122(21)+2.0_ki*abb122(27)
      abb122(15)=8.0_ki*abb122(15)
      abb122(21)=8.0_ki*abb122(126)
      abb122(27)=abb122(64)*abb122(124)
      abb122(28)=abb122(97)*spak1k2
      abb122(27)=abb122(27)+abb122(28)
      abb122(28)=-spbe7l5*abb122(27)
      abb122(29)=abb122(156)*spbk4k3
      abb122(30)=abb122(50)*abb122(29)
      abb122(28)=abb122(30)+abb122(28)
      abb122(28)=abb122(8)*abb122(28)
      abb122(30)=-abb122(118)*abb122(125)
      abb122(28)=abb122(30)+abb122(28)
      abb122(28)=8.0_ki*abb122(28)
      abb122(30)=-abb122(43)*abb122(98)*abb122(149)
      abb122(30)=abb122(30)-abb122(54)
      abb122(30)=spbk4k3*abb122(30)
      abb122(14)=spak1k2*abb122(14)
      abb122(20)=abb122(20)*abb122(124)
      abb122(14)=abb122(20)+abb122(14)
      abb122(14)=spbe7l5*abb122(14)
      abb122(20)=abb122(26)*abb122(88)
      abb122(34)=-spak2k7*abb122(115)
      abb122(37)=-spak2l6*abb122(83)
      abb122(14)=abb122(37)+abb122(34)+abb122(20)+abb122(14)+abb122(30)
      abb122(14)=4.0_ki*abb122(14)
      abb122(20)=spbk4k3*abb122(41)
      abb122(18)=-abb122(18)*abb122(146)
      abb122(27)=-abb122(120)*abb122(27)
      abb122(29)=-abb122(81)*abb122(29)
      abb122(18)=abb122(29)-abb122(71)+abb122(27)+abb122(18)
      abb122(18)=4.0_ki*abb122(18)
      abb122(27)=-abb122(26)*abb122(47)
      abb122(26)=abb122(26)*abb122(100)
      abb122(29)=-spbk4k3*abb122(72)
      abb122(30)=abb122(44)*abb122(8)
      abb122(34)=4.0_ki*spbk4k2
      abb122(34)=abb122(30)*abb122(34)
      abb122(37)=4.0_ki*spbk4k3
      abb122(30)=-abb122(30)*abb122(37)
      abb122(37)=4.0_ki*abb122(99)
      abb122(38)=4.0_ki*abb122(101)
      abb122(40)=4.0_ki*abb122(32)
      abb122(41)=-4.0_ki*abb122(126)
      abb122(42)=abb122(51)*abb122(93)
      abb122(43)=abb122(80)*abb122(45)
      abb122(42)=abb122(43)-abb122(42)
      abb122(42)=abb122(42)*abb122(78)
      abb122(43)=-abb122(47)*abb122(42)
      abb122(42)=abb122(100)*abb122(42)
      abb122(44)=-abb122(55)*abb122(166)
      abb122(45)=abb122(165)*abb122(96)
      abb122(46)=abb122(24)*abb122(47)
      abb122(31)=-abb122(31)*abb122(22)
      abb122(48)=8.0_ki*spak2k7*abb122(31)
      abb122(47)=-abb122(31)*abb122(47)
      abb122(24)=-abb122(24)*abb122(100)
      abb122(49)=8.0_ki*abb122(106)*abb122(22)
      abb122(31)=abb122(31)*abb122(100)
      abb122(32)=abb122(32)*spbl5k1
      abb122(50)=abb122(101)*spbl6k1
      abb122(51)=abb122(99)*spbk7k1
      abb122(52)=abb122(71)*spbe7k1
      abb122(32)=-abb122(50)+abb122(51)+abb122(52)-abb122(32)
      abb122(50)=abb122(94)-abb122(121)
      abb122(50)=abb122(50)*abb122(82)
      abb122(51)=-es12*abb122(8)*abb122(50)
      abb122(51)=abb122(51)-abb122(32)
      abb122(51)=abb122(51)*abb122(165)
      abb122(32)=spak2k4*abb122(32)
      abb122(22)=abb122(70)*abb122(22)
      abb122(50)=abb122(50)*abb122(91)
      abb122(22)=abb122(50)+abb122(22)
      abb122(22)=abb122(8)*abb122(22)
      abb122(22)=abb122(32)+abb122(22)
      abb122(22)=4.0_ki*abb122(22)
      abb122(32)=-4.0_ki*abb122(157)
      R2d122=0.0_ki
      rat2 = rat2 + R2d122
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='122' value='", &
          & R2d122, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd122h3
