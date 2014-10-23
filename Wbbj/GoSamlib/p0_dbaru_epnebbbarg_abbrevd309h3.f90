module     p0_dbaru_epnebbbarg_abbrevd309h3
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(155), public :: abb309
   complex(ki), public :: R2d309
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
      abb309(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb309(2)=NC**(-1)
      abb309(3)=sqrt2**(-1)
      abb309(4)=es234**(-1)
      abb309(5)=spak2l5**(-1)
      abb309(6)=spak2k7**(-1)
      abb309(7)=spak2l6**(-1)
      abb309(8)=spbl5k2**(-1)
      abb309(9)=sqrt(mB**2)
      abb309(10)=abb309(2)*spak1k2
      abb309(11)=c4*abb309(10)**2
      abb309(12)=spak1k2**2
      abb309(13)=abb309(12)*abb309(2)
      abb309(14)=abb309(13)*c1
      abb309(15)=abb309(11)-abb309(14)
      abb309(16)=TR*gW
      abb309(16)=abb309(16)**2*i_*CVDU*abb309(3)*abb309(1)
      abb309(17)=abb309(6)*abb309(4)
      abb309(18)=abb309(16)*abb309(17)*spbk3k2
      abb309(19)=abb309(18)*mB
      abb309(20)=abb309(19)*abb309(5)
      abb309(21)=abb309(20)*spak2k4
      abb309(22)=-abb309(21)*abb309(15)
      abb309(23)=abb309(20)*abb309(12)
      abb309(24)=c2*spak2k4
      abb309(25)=abb309(24)*abb309(23)
      abb309(26)=c3*abb309(2)
      abb309(27)=abb309(23)*abb309(26)
      abb309(28)=abb309(27)*spak2k4
      abb309(22)=-abb309(22)+abb309(25)-abb309(28)
      abb309(25)=abb309(22)*spbl5k1
      abb309(28)=-spbl6k2*abb309(25)
      abb309(29)=abb309(26)-c2
      abb309(30)=-abb309(29)*abb309(12)*abb309(19)
      abb309(31)=-abb309(7)*abb309(30)
      abb309(32)=abb309(19)*abb309(7)
      abb309(33)=-abb309(32)*abb309(15)
      abb309(31)=abb309(31)+abb309(33)
      abb309(33)=spbl5k1*spak3k4
      abb309(34)=abb309(31)*abb309(33)
      abb309(35)=-spbl5k3*abb309(34)
      abb309(36)=spak2k4*abb309(7)
      abb309(37)=-abb309(36)*abb309(30)
      abb309(38)=abb309(32)*spak2k4
      abb309(39)=-abb309(38)*abb309(15)
      abb309(37)=abb309(39)+abb309(37)
      abb309(37)=abb309(37)*spbl5k1
      abb309(39)=spbl5k2*abb309(37)
      abb309(28)=abb309(39)+abb309(35)+abb309(28)
      abb309(28)=spak1l5*abb309(28)
      abb309(35)=c1*abb309(2)
      abb309(39)=abb309(35)+abb309(26)
      abb309(40)=abb309(18)*abb309(5)
      abb309(41)=abb309(36)*abb309(40)
      abb309(42)=spak1k2*mB
      abb309(43)=abb309(42)**2
      abb309(44)=-abb309(39)*abb309(43)*abb309(41)
      abb309(45)=abb309(43)*abb309(36)
      abb309(46)=abb309(40)*c2
      abb309(47)=abb309(45)*abb309(46)
      abb309(48)=mB**2
      abb309(49)=abb309(48)*abb309(41)
      abb309(50)=abb309(49)*abb309(11)
      abb309(44)=abb309(47)+abb309(50)+abb309(44)
      abb309(47)=abb309(44)*abb309(9)
      abb309(50)=abb309(26)*abb309(12)
      abb309(51)=abb309(12)*c2
      abb309(52)=abb309(15)-abb309(50)+abb309(51)
      abb309(53)=abb309(18)*spak2k4
      abb309(54)=mB**3
      abb309(55)=abb309(54)*abb309(5)**2
      abb309(56)=abb309(55)*abb309(53)
      abb309(57)=abb309(52)*abb309(56)
      abb309(58)=spbl6k2*abb309(8)
      abb309(59)=-abb309(57)*abb309(58)
      abb309(50)=abb309(50)-abb309(11)
      abb309(60)=abb309(50)-abb309(51)
      abb309(61)=abb309(55)*abb309(18)
      abb309(62)=abb309(60)*abb309(61)
      abb309(63)=abb309(18)*c1
      abb309(13)=abb309(13)*abb309(63)
      abb309(64)=abb309(13)*abb309(55)
      abb309(62)=abb309(64)+abb309(62)
      abb309(64)=abb309(8)*spak3k4
      abb309(65)=-spbl6k3*abb309(62)*abb309(64)
      abb309(59)=abb309(65)-abb309(47)+abb309(59)
      abb309(59)=es12*abb309(59)
      abb309(65)=c1+c3
      abb309(66)=abb309(16)*abb309(2)
      abb309(67)=abb309(66)*abb309(65)
      abb309(68)=abb309(17)*abb309(5)
      abb309(69)=abb309(68)*abb309(67)
      abb309(70)=abb309(7)*abb309(69)
      abb309(71)=abb309(16)*abb309(5)
      abb309(72)=abb309(71)*abb309(7)
      abb309(73)=abb309(72)*abb309(17)
      abb309(74)=abb309(73)*c2
      abb309(75)=c4*abb309(2)**2
      abb309(73)=-abb309(75)*abb309(73)
      abb309(70)=-abb309(74)+abb309(73)+abb309(70)
      abb309(73)=abb309(64)*spbl5k1
      abb309(76)=spbk3k2**2
      abb309(70)=abb309(73)*abb309(76)*abb309(70)*abb309(42)**3
      abb309(77)=abb309(39)-abb309(75)
      abb309(78)=abb309(48)*abb309(7)
      abb309(79)=abb309(78)*abb309(40)
      abb309(80)=-abb309(79)*abb309(77)
      abb309(81)=abb309(46)*abb309(78)
      abb309(80)=abb309(81)+abb309(80)
      abb309(81)=abb309(9)*spak3k4
      abb309(80)=spbk3k1*abb309(81)*abb309(80)*spak1k2**3
      abb309(28)=abb309(59)+abb309(80)+abb309(70)+abb309(28)
      abb309(28)=spbk7k1*abb309(28)
      abb309(59)=abb309(20)*abb309(15)
      abb309(23)=abb309(23)*c2
      abb309(23)=abb309(59)+abb309(23)-abb309(27)
      abb309(27)=-abb309(23)*spbk7k1
      abb309(59)=-spbl6k3*spak1l5*abb309(33)*abb309(27)
      abb309(28)=abb309(59)+abb309(28)
      abb309(28)=8.0_ki*abb309(28)
      abb309(59)=abb309(75)+c2
      abb309(42)=abb309(59)*abb309(42)
      abb309(70)=abb309(18)*spbk7l5
      abb309(80)=abb309(70)*abb309(42)
      abb309(82)=abb309(19)*abb309(10)
      abb309(83)=spbk7l5*abb309(65)
      abb309(84)=abb309(82)*abb309(83)
      abb309(80)=abb309(80)-abb309(84)
      abb309(80)=abb309(80)*spak3k4
      abb309(85)=c2*spak1k2
      abb309(86)=abb309(75)*spak1k2
      abb309(87)=abb309(85)+abb309(86)
      abb309(88)=abb309(70)*abb309(87)
      abb309(89)=abb309(10)*abb309(18)
      abb309(90)=abb309(89)*abb309(83)
      abb309(88)=abb309(90)-abb309(88)
      abb309(90)=abb309(88)*abb309(81)
      abb309(80)=abb309(80)+abb309(90)
      abb309(80)=abb309(80)*spbl6k3
      abb309(10)=abb309(10)*abb309(65)
      abb309(91)=abb309(87)-abb309(10)
      abb309(92)=abb309(9)*abb309(91)
      abb309(92)=-abb309(92)+abb309(42)
      abb309(93)=abb309(53)*spbk7l5
      abb309(92)=abb309(93)*abb309(92)
      abb309(84)=-spak2k4*abb309(84)
      abb309(84)=abb309(92)+abb309(84)
      abb309(84)=abb309(84)*spbl6k2
      abb309(80)=abb309(80)-abb309(84)
      abb309(84)=16.0_ki*abb309(80)
      abb309(92)=-abb309(23)*spbk7l6
      abb309(94)=abb309(92)*spbl5k1
      abb309(95)=-spbk7l5*abb309(23)
      abb309(96)=abb309(95)*spbl6k1
      abb309(97)=abb309(16)*mB
      abb309(98)=spbk3k2*abb309(4)
      abb309(99)=abb309(97)*abb309(98)
      abb309(100)=abb309(99)*abb309(5)
      abb309(101)=abb309(100)*spbk7l5
      abb309(102)=abb309(101)*abb309(91)
      abb309(103)=abb309(102)*spbk7l6
      abb309(94)=-abb309(96)+abb309(94)-abb309(103)
      abb309(96)=abb309(94)*spak4l5
      abb309(103)=abb309(59)-abb309(39)
      abb309(104)=-abb309(103)*spak1l5
      abb309(105)=spbk7l5**2
      abb309(106)=abb309(105)*abb309(36)
      abb309(107)=-abb309(106)*abb309(99)*abb309(104)
      abb309(108)=2.0_ki*abb309(9)
      abb309(109)=abb309(108)*spbk7k1
      abb309(44)=abb309(44)*abb309(109)
      abb309(110)=abb309(18)*abb309(87)
      abb309(89)=abb309(89)*abb309(65)
      abb309(110)=abb309(89)-abb309(110)
      abb309(111)=abb309(9)*spbk7l6
      abb309(112)=abb309(111)*spbl5k1
      abb309(113)=abb309(110)*abb309(112)
      abb309(114)=abb309(98)*spbk7l5
      abb309(115)=-abb309(59)*abb309(114)*abb309(16)
      abb309(116)=abb309(114)*abb309(67)
      abb309(115)=abb309(116)+abb309(115)
      abb309(116)=abb309(115)*abb309(111)
      abb309(113)=abb309(113)+abb309(116)
      abb309(116)=abb309(113)*spak1k4
      abb309(88)=abb309(88)*spbl6k1
      abb309(117)=spak1k4*abb309(9)
      abb309(118)=abb309(88)*abb309(117)
      abb309(44)=-abb309(96)-abb309(107)+abb309(44)+abb309(116)-abb309(118)
      abb309(96)=abb309(54)*abb309(51)
      abb309(107)=abb309(96)*abb309(41)
      abb309(14)=abb309(50)+abb309(14)
      abb309(41)=abb309(41)*abb309(54)
      abb309(50)=abb309(14)*abb309(41)
      abb309(50)=abb309(107)-abb309(50)
      abb309(107)=spbl5k1*abb309(8)
      abb309(50)=abb309(50)*abb309(107)
      abb309(116)=spbl6k1*abb309(8)
      abb309(57)=abb309(57)*abb309(116)
      abb309(50)=abb309(50)-abb309(57)
      abb309(50)=abb309(50)*spbk7k2
      abb309(118)=abb309(54)*abb309(40)
      abb309(119)=spbk7l5*abb309(7)
      abb309(120)=abb309(119)*spak2k4
      abb309(121)=abb309(91)*abb309(118)*abb309(120)
      abb309(56)=abb309(56)*abb309(91)
      abb309(122)=abb309(56)*spbk7l6
      abb309(121)=abb309(121)+abb309(122)
      abb309(122)=es712-es71
      abb309(123)=-abb309(8)*abb309(122)
      abb309(121)=abb309(123)*abb309(121)
      abb309(56)=abb309(56)*abb309(8)
      abb309(124)=abb309(56)*spbk7l6
      abb309(125)=2.0_ki*es12
      abb309(126)=abb309(124)*abb309(125)
      abb309(50)=abb309(50)+abb309(121)+abb309(126)-abb309(44)
      abb309(50)=16.0_ki*abb309(50)
      abb309(121)=abb309(118)*abb309(7)
      abb309(126)=abb309(121)*abb309(14)
      abb309(127)=abb309(96)*abb309(40)
      abb309(128)=-abb309(7)*abb309(127)
      abb309(126)=abb309(128)+abb309(126)
      abb309(126)=abb309(126)*abb309(73)
      abb309(128)=abb309(16)*spak1k2
      abb309(129)=abb309(54)*abb309(128)
      abb309(130)=abb309(129)*abb309(119)
      abb309(131)=abb309(130)*abb309(5)
      abb309(132)=-abb309(103)*abb309(131)
      abb309(98)=abb309(64)*abb309(98)*abb309(132)
      abb309(98)=abb309(98)+abb309(126)
      abb309(98)=spbk7k3*abb309(98)
      abb309(14)=-abb309(118)*abb309(14)
      abb309(14)=abb309(127)+abb309(14)
      abb309(118)=abb309(64)*spbk3k1
      abb309(14)=abb309(118)*abb309(119)*abb309(14)
      abb309(126)=-abb309(125)+abb309(122)
      abb309(124)=abb309(124)*abb309(126)
      abb309(57)=spbk7k2*abb309(57)
      abb309(14)=abb309(14)+abb309(98)+abb309(57)+abb309(124)+abb309(44)
      abb309(14)=16.0_ki*abb309(14)
      abb309(44)=abb309(40)*abb309(42)
      abb309(57)=spak2k4*abb309(44)
      abb309(98)=abb309(21)*abb309(10)
      abb309(57)=abb309(57)-abb309(98)
      abb309(98)=abb309(57)*spbk7l6
      abb309(124)=32.0_ki*abb309(98)
      abb309(22)=abb309(22)*spbl6k1
      abb309(22)=abb309(22)-abb309(37)
      abb309(37)=-spbk7k2*abb309(22)
      abb309(126)=-abb309(23)*spbl6k1
      abb309(85)=abb309(85)-abb309(10)+abb309(86)
      abb309(86)=abb309(99)*abb309(119)
      abb309(85)=abb309(86)*abb309(85)
      abb309(127)=abb309(91)*spbk7l6
      abb309(100)=-abb309(100)*abb309(127)
      abb309(85)=-abb309(126)-abb309(100)+abb309(85)
      abb309(133)=spak3k4*abb309(85)
      abb309(133)=-abb309(34)+abb309(133)
      abb309(133)=spbk7k3*abb309(133)
      abb309(134)=abb309(119)*abb309(19)
      abb309(135)=abb309(134)*abb309(15)
      abb309(136)=-abb309(119)*abb309(30)
      abb309(135)=-abb309(136)-abb309(92)+abb309(135)
      abb309(136)=spbk3k1*spak3k4
      abb309(137)=-abb309(135)*abb309(136)
      abb309(138)=-abb309(42)*abb309(119)*abb309(53)
      abb309(139)=abb309(82)*abb309(65)
      abb309(140)=abb309(120)*abb309(139)
      abb309(138)=-abb309(98)+abb309(140)+abb309(138)
      abb309(140)=-abb309(138)*abb309(122)
      abb309(37)=abb309(137)+abb309(133)+abb309(37)+abb309(80)+abb309(140)
      abb309(37)=8.0_ki*abb309(37)
      abb309(80)=16.0_ki*abb309(98)
      abb309(98)=-abb309(122)*abb309(57)*spbk7l5
      abb309(25)=spbk7k2*abb309(25)
      abb309(23)=-abb309(23)*abb309(33)
      abb309(102)=-spak3k4*abb309(102)
      abb309(23)=abb309(102)+abb309(23)
      abb309(23)=spbk7k3*abb309(23)
      abb309(95)=-abb309(95)*abb309(136)
      abb309(23)=abb309(95)+abb309(25)+abb309(23)+abb309(98)
      abb309(23)=8.0_ki*abb309(23)
      abb309(25)=abb309(31)*spbl5k1
      abb309(25)=abb309(25)-abb309(85)
      abb309(31)=16.0_ki*abb309(25)
      abb309(85)=32.0_ki*abb309(27)
      abb309(95)=abb309(51)+abb309(11)
      abb309(98)=abb309(54)*abb309(17)
      abb309(72)=abb309(95)*abb309(72)*abb309(98)
      abb309(102)=abb309(12)*abb309(5)
      abb309(133)=abb309(67)*abb309(98)*abb309(102)
      abb309(137)=abb309(7)*abb309(133)
      abb309(72)=abb309(72)-abb309(137)
      abb309(137)=-abb309(72)*abb309(107)
      abb309(140)=abb309(55)*abb309(17)
      abb309(141)=abb309(140)*abb309(12)
      abb309(142)=-abb309(141)*abb309(67)
      abb309(140)=abb309(140)*abb309(16)
      abb309(143)=abb309(140)*abb309(11)
      abb309(140)=abb309(51)*abb309(140)
      abb309(140)=abb309(140)+abb309(143)+abb309(142)
      abb309(140)=abb309(140)*abb309(116)
      abb309(137)=abb309(137)+abb309(140)
      abb309(137)=spbk7k2*abb309(137)
      abb309(130)=abb309(103)*abb309(130)*abb309(68)
      abb309(140)=abb309(128)*abb309(17)
      abb309(142)=abb309(140)*abb309(55)
      abb309(144)=abb309(142)*abb309(103)
      abb309(145)=abb309(144)*spbk7l6
      abb309(130)=abb309(130)+abb309(145)
      abb309(130)=-abb309(130)*abb309(123)
      abb309(145)=abb309(43)*abb309(7)
      abb309(146)=-abb309(145)*abb309(69)
      abb309(147)=abb309(11)*abb309(71)
      abb309(148)=abb309(147)*abb309(78)
      abb309(149)=abb309(17)*abb309(148)
      abb309(74)=abb309(43)*abb309(74)
      abb309(74)=abb309(74)+abb309(149)+abb309(146)
      abb309(74)=abb309(74)*abb309(109)
      abb309(146)=abb309(4)*abb309(39)
      abb309(149)=abb309(4)*abb309(59)
      abb309(146)=abb309(146)-abb309(149)
      abb309(150)=abb309(146)*spak1l5
      abb309(151)=abb309(97)*abb309(7)
      abb309(105)=abb309(105)*abb309(151)
      abb309(152)=abb309(105)*abb309(150)
      abb309(125)=abb309(125)*abb309(8)*spbk7l6
      abb309(153)=-abb309(144)*abb309(125)
      abb309(74)=abb309(153)+abb309(137)+abb309(74)+abb309(152)+abb309(130)
      abb309(74)=es34*abb309(74)
      abb309(29)=abb309(29)*abb309(102)*abb309(97)*abb309(17)
      abb309(130)=abb309(97)*abb309(5)
      abb309(137)=abb309(130)*abb309(17)
      abb309(152)=-abb309(137)*abb309(15)
      abb309(29)=abb309(152)+abb309(29)
      abb309(152)=abb309(29)*spbl6k1
      abb309(130)=abb309(127)*abb309(130)*abb309(4)
      abb309(153)=abb309(152)+abb309(130)
      abb309(153)=spbk7l5*abb309(153)
      abb309(154)=abb309(29)*spbk7l6
      abb309(155)=abb309(154)*spbl5k1
      abb309(153)=-abb309(155)+abb309(153)
      abb309(153)=abb309(153)*spak4l5
      abb309(149)=abb309(149)*abb309(16)*spbk7l5
      abb309(66)=abb309(83)*abb309(66)*abb309(4)
      abb309(66)=abb309(149)-abb309(66)
      abb309(66)=abb309(66)*abb309(111)
      abb309(83)=-abb309(103)*abb309(140)
      abb309(112)=-abb309(83)*abb309(112)
      abb309(66)=abb309(66)+abb309(112)
      abb309(66)=abb309(66)*spak1k4
      abb309(112)=-abb309(117)*spbk7l5*abb309(83)
      abb309(140)=spbl6k1*abb309(112)
      abb309(140)=abb309(153)-abb309(66)+abb309(140)
      abb309(140)=spbk4k2*abb309(140)
      abb309(94)=-spak3l5*abb309(94)
      abb309(102)=-abb309(102)*abb309(67)
      abb309(102)=abb309(147)+abb309(102)
      abb309(54)=abb309(54)*abb309(102)
      abb309(96)=abb309(71)*abb309(96)
      abb309(54)=abb309(96)+abb309(54)
      abb309(96)=abb309(7)*abb309(6)
      abb309(54)=abb309(107)*abb309(96)*abb309(54)
      abb309(95)=-abb309(16)*abb309(95)
      abb309(12)=abb309(12)*abb309(67)
      abb309(12)=abb309(12)+abb309(95)
      abb309(95)=abb309(55)*abb309(6)
      abb309(12)=abb309(116)*abb309(95)*abb309(12)
      abb309(12)=abb309(54)+abb309(12)
      abb309(12)=spbk7k2*abb309(12)
      abb309(54)=-abb309(9)*abb309(88)
      abb309(54)=abb309(54)+abb309(113)
      abb309(54)=spak1k3*abb309(54)
      abb309(88)=-abb309(6)*abb309(132)
      abb309(102)=-abb309(103)*abb309(128)
      abb309(95)=-abb309(95)*abb309(102)
      abb309(113)=abb309(95)*spbk7l6
      abb309(88)=abb309(88)+abb309(113)
      abb309(88)=abb309(88)*abb309(123)
      abb309(113)=abb309(96)*abb309(5)
      abb309(128)=abb309(113)*abb309(67)
      abb309(132)=abb309(71)*c2
      abb309(96)=-abb309(96)*abb309(132)
      abb309(96)=abb309(96)+abb309(128)
      abb309(43)=abb309(43)*abb309(96)
      abb309(96)=-abb309(6)*abb309(148)
      abb309(43)=abb309(96)+abb309(43)
      abb309(43)=abb309(43)*abb309(109)
      abb309(96)=-abb309(105)*abb309(104)
      abb309(104)=abb309(95)*abb309(125)
      abb309(12)=abb309(94)+abb309(54)+abb309(74)+abb309(104)+abb309(12)+abb309&
      &(43)+abb309(96)+abb309(140)+abb309(88)
      abb309(12)=8.0_ki*abb309(12)
      abb309(43)=abb309(151)*abb309(17)
      abb309(54)=spbl5k1*abb309(52)*abb309(43)
      abb309(74)=abb309(119)*abb309(97)
      abb309(88)=abb309(74)*abb309(4)
      abb309(94)=abb309(91)*abb309(88)
      abb309(54)=-abb309(152)+abb309(94)+abb309(54)+abb309(130)
      abb309(94)=8.0_ki*spbk4k2
      abb309(96)=abb309(54)*abb309(94)
      abb309(29)=abb309(29)*spbk7k1
      abb309(29)=16.0_ki*abb309(29)
      abb309(104)=spbk4k2*abb309(29)
      abb309(68)=-abb309(103)*abb309(68)*abb309(129)
      abb309(105)=-abb309(120)*abb309(68)
      abb309(128)=-abb309(77)*abb309(142)*spak2k4
      abb309(130)=abb309(24)*abb309(142)
      abb309(128)=abb309(130)+abb309(128)
      abb309(130)=abb309(128)*spbk7l6
      abb309(105)=abb309(105)+abb309(130)
      abb309(105)=abb309(105)*abb309(123)
      abb309(123)=-abb309(17)*abb309(132)
      abb309(69)=abb309(123)+abb309(69)
      abb309(45)=abb309(45)*abb309(69)
      abb309(48)=abb309(48)*abb309(36)
      abb309(69)=-abb309(48)*abb309(147)*abb309(17)
      abb309(45)=abb309(69)+abb309(45)
      abb309(45)=abb309(45)*abb309(109)
      abb309(51)=abb309(71)*abb309(51)
      abb309(51)=abb309(51)+abb309(147)
      abb309(51)=abb309(98)*abb309(51)
      abb309(51)=-abb309(133)+abb309(51)
      abb309(51)=abb309(107)*abb309(36)*abb309(51)
      abb309(69)=spak2k4*abb309(67)
      abb309(71)=-abb309(16)*abb309(24)
      abb309(69)=abb309(71)+abb309(69)
      abb309(69)=abb309(141)*abb309(69)
      abb309(71)=-spak2k4*abb309(143)
      abb309(69)=abb309(71)+abb309(69)
      abb309(69)=abb309(69)*abb309(116)
      abb309(51)=abb309(51)+abb309(69)
      abb309(51)=spbk7k2*abb309(51)
      abb309(69)=-abb309(106)*abb309(97)*abb309(150)
      abb309(71)=abb309(128)*abb309(125)
      abb309(45)=-abb309(153)+abb309(51)+abb309(71)+abb309(69)+abb309(45)+abb30&
      &9(66)+abb309(105)
      abb309(45)=spbk4k3*abb309(45)
      abb309(51)=spbk7l5*abb309(30)
      abb309(66)=abb309(19)*spbk7l5
      abb309(69)=abb309(66)*abb309(15)
      abb309(71)=-abb309(9)*abb309(70)*abb309(52)
      abb309(97)=-spbk4k3*abb309(112)
      abb309(51)=abb309(97)+abb309(71)+abb309(69)+abb309(51)
      abb309(51)=spbl6k1*abb309(51)
      abb309(15)=-abb309(19)*abb309(15)
      abb309(15)=abb309(15)-abb309(30)
      abb309(15)=spbk7l6*abb309(15)
      abb309(30)=-abb309(18)*abb309(60)
      abb309(13)=-abb309(13)+abb309(30)
      abb309(13)=abb309(13)*abb309(111)
      abb309(13)=abb309(15)+abb309(13)
      abb309(13)=spbl5k1*abb309(13)
      abb309(15)=-abb309(99)*spbk7l5*abb309(127)
      abb309(30)=-abb309(111)*abb309(114)*abb309(102)
      abb309(13)=abb309(51)+abb309(13)+abb309(15)+abb309(30)+abb309(45)
      abb309(13)=8.0_ki*abb309(13)
      abb309(15)=8.0_ki*spbk4k3
      abb309(30)=-abb309(54)*abb309(15)
      abb309(29)=-spbk4k3*abb309(29)
      abb309(45)=16.0_ki*abb309(135)
      abb309(51)=abb309(74)*abb309(17)
      abb309(52)=abb309(52)*abb309(51)
      abb309(52)=abb309(52)-abb309(154)
      abb309(54)=abb309(52)*abb309(94)
      abb309(52)=-abb309(52)*abb309(15)
      abb309(25)=-8.0_ki*abb309(25)
      abb309(60)=16.0_ki*abb309(27)
      abb309(69)=8.0_ki*abb309(135)
      abb309(71)=spbl5k1*abb309(57)
      abb309(74)=abb309(77)*spak2k4
      abb309(74)=abb309(74)-abb309(24)
      abb309(97)=abb309(101)*abb309(74)
      abb309(71)=abb309(71)+abb309(97)
      abb309(71)=spbl6k2*abb309(71)
      abb309(97)=abb309(42)*abb309(18)
      abb309(98)=abb309(7)*abb309(97)
      abb309(99)=abb309(32)*abb309(10)
      abb309(99)=abb309(98)-abb309(99)
      abb309(105)=abb309(99)*abb309(33)
      abb309(26)=abb309(26)-abb309(75)
      abb309(35)=-abb309(26)-abb309(35)
      abb309(35)=abb309(86)*abb309(35)
      abb309(75)=abb309(86)*c2
      abb309(75)=abb309(75)+abb309(35)
      abb309(106)=abb309(75)*spak3k4
      abb309(107)=abb309(106)-abb309(105)
      abb309(107)=spbl5k3*abb309(107)
      abb309(42)=-abb309(42)*abb309(53)*abb309(7)
      abb309(109)=abb309(38)*abb309(10)
      abb309(42)=abb309(109)+abb309(42)
      abb309(109)=abb309(42)*spbl5k1
      abb309(35)=-spak2k4*abb309(35)
      abb309(86)=-abb309(86)*abb309(24)
      abb309(35)=-abb309(109)+abb309(86)+abb309(35)
      abb309(35)=spbl5k2*abb309(35)
      abb309(35)=abb309(35)+abb309(107)+abb309(71)
      abb309(35)=spak1l5*abb309(35)
      abb309(71)=-abb309(66)*abb309(74)
      abb309(74)=abb309(103)*abb309(93)
      abb309(86)=-abb309(9)*abb309(74)
      abb309(71)=abb309(86)+abb309(71)
      abb309(71)=spbl6k2*abb309(71)
      abb309(86)=-abb309(103)*spak3k4
      abb309(66)=abb309(66)*abb309(86)
      abb309(70)=abb309(81)*abb309(70)*abb309(103)
      abb309(66)=abb309(66)+abb309(70)
      abb309(66)=spbl6k3*abb309(66)
      abb309(66)=abb309(71)+abb309(66)
      abb309(66)=spak1k7*abb309(66)
      abb309(70)=abb309(73)*abb309(72)
      abb309(71)=abb309(64)*abb309(131)*abb309(146)
      abb309(70)=abb309(71)+abb309(70)
      abb309(70)=abb309(76)*abb309(70)
      abb309(10)=abb309(20)*abb309(10)
      abb309(10)=abb309(44)-abb309(10)
      abb309(20)=-abb309(10)*abb309(33)
      abb309(44)=-abb309(101)*abb309(86)
      abb309(20)=abb309(44)+abb309(20)
      abb309(20)=spak1l5*abb309(20)
      abb309(44)=-abb309(61)*abb309(87)
      abb309(55)=abb309(55)*abb309(89)
      abb309(44)=abb309(55)+abb309(44)
      abb309(44)=abb309(44)*abb309(64)
      abb309(55)=abb309(44)*abb309(122)
      abb309(20)=abb309(20)+abb309(55)
      abb309(20)=spbl6k3*abb309(20)
      abb309(55)=abb309(56)*spbl6k2
      abb309(61)=abb309(55)*abb309(122)
      abb309(20)=abb309(66)+abb309(20)+abb309(35)+abb309(61)+abb309(70)
      abb309(20)=8.0_ki*abb309(20)
      abb309(35)=abb309(10)*spak4l5
      abb309(26)=-abb309(26)+c2
      abb309(18)=abb309(18)*abb309(26)
      abb309(26)=abb309(63)*abb309(2)
      abb309(18)=-abb309(26)+abb309(18)
      abb309(26)=abb309(18)*abb309(117)
      abb309(26)=abb309(35)-abb309(26)
      abb309(26)=abb309(26)*spbl6l5
      abb309(35)=abb309(99)*spbl5k1
      abb309(35)=abb309(35)+abb309(75)
      abb309(61)=abb309(35)*spak1k4
      abb309(26)=-abb309(55)+abb309(26)-abb309(61)
      abb309(41)=abb309(91)*abb309(41)
      abb309(49)=abb309(91)*abb309(49)
      abb309(55)=abb309(49)*abb309(108)
      abb309(41)=abb309(26)+abb309(41)-abb309(55)
      abb309(41)=16.0_ki*abb309(41)
      abb309(49)=-abb309(9)*abb309(49)
      abb309(55)=spbl5k3*abb309(64)*abb309(121)*abb309(91)
      abb309(19)=abb309(103)*abb309(120)*abb309(19)
      abb309(61)=spak1k7*abb309(19)
      abb309(26)=abb309(61)+abb309(55)+abb309(49)+abb309(26)
      abb309(26)=16.0_ki*abb309(26)
      abb309(49)=spbl6k2*abb309(57)
      abb309(55)=abb309(10)*spak3k4
      abb309(61)=-spbl6k3*abb309(55)
      abb309(63)=spbl5k3*spak3k4
      abb309(66)=-abb309(99)*abb309(63)
      abb309(42)=-spbl5k2*abb309(42)
      abb309(42)=abb309(42)+abb309(66)+abb309(49)+abb309(61)
      abb309(42)=8.0_ki*abb309(42)
      abb309(49)=abb309(55)*spbk7k3
      abb309(61)=abb309(57)*spbk7k2
      abb309(49)=abb309(49)-abb309(61)
      abb309(61)=8.0_ki*abb309(49)
      abb309(65)=-abb309(65)*abb309(82)*abb309(119)
      abb309(66)=spbk7l5*abb309(98)
      abb309(65)=abb309(66)+abb309(65)
      abb309(66)=spbk7l6*abb309(10)
      abb309(66)=abb309(66)+abb309(65)
      abb309(66)=8.0_ki*spak3k4*abb309(66)
      abb309(70)=8.0_ki*abb309(138)
      abb309(71)=spbl5k3*abb309(55)
      abb309(72)=-spbl5k2*abb309(57)
      abb309(71)=abb309(71)+abb309(72)
      abb309(71)=8.0_ki*abb309(71)
      abb309(72)=16.0_ki*abb309(10)
      abb309(73)=16.0_ki*abb309(99)
      abb309(16)=abb309(59)*abb309(16)
      abb309(16)=abb309(67)-abb309(16)
      abb309(16)=abb309(117)*abb309(17)*abb309(16)
      abb309(17)=abb309(91)*abb309(137)
      abb309(59)=abb309(17)*spak4l5
      abb309(16)=abb309(16)+abb309(59)
      abb309(59)=spbk4k2*abb309(16)
      abb309(67)=spak3l5*abb309(10)
      abb309(59)=abb309(67)+abb309(59)
      abb309(59)=spbl6l5*abb309(59)
      abb309(67)=-abb309(7)*abb309(68)
      abb309(75)=abb309(83)*abb309(108)
      abb309(78)=abb309(78)*abb309(5)
      abb309(82)=abb309(78)*abb309(75)
      abb309(83)=-abb309(144)*abb309(58)
      abb309(67)=abb309(83)+abb309(82)+abb309(67)
      abb309(67)=es34*abb309(67)
      abb309(82)=abb309(103)*abb309(88)
      abb309(83)=abb309(91)*abb309(43)
      abb309(87)=abb309(83)*spbl5k1
      abb309(82)=abb309(82)+abb309(87)
      abb309(87)=spbk4k2*spak1k4
      abb309(88)=-abb309(82)*abb309(87)
      abb309(89)=-spbl6l5*abb309(9)*abb309(18)
      abb309(35)=abb309(89)-abb309(35)
      abb309(35)=spak1k3*abb309(35)
      abb309(89)=-abb309(113)*abb309(129)*abb309(103)
      abb309(78)=-abb309(108)*abb309(78)*abb309(6)*abb309(102)
      abb309(93)=abb309(95)*abb309(58)
      abb309(35)=abb309(35)+abb309(67)+abb309(88)+abb309(93)+abb309(78)+abb309(&
      &89)+abb309(59)
      abb309(35)=8.0_ki*abb309(35)
      abb309(59)=abb309(17)*abb309(94)
      abb309(67)=-abb309(83)*abb309(94)
      abb309(78)=spak1k4*abb309(82)
      abb309(36)=abb309(36)*abb309(68)
      abb309(48)=-abb309(48)*abb309(5)*abb309(75)
      abb309(58)=abb309(128)*abb309(58)
      abb309(36)=abb309(58)+abb309(78)+abb309(48)+abb309(36)
      abb309(36)=spbk4k3*abb309(36)
      abb309(16)=-spbk4k3*abb309(16)
      abb309(48)=abb309(110)*abb309(9)
      abb309(16)=-abb309(48)-abb309(97)+abb309(16)+abb309(139)
      abb309(16)=spbl6l5*abb309(16)
      abb309(16)=abb309(16)+abb309(126)+abb309(100)+abb309(36)
      abb309(16)=8.0_ki*abb309(16)
      abb309(17)=-abb309(17)*abb309(15)
      abb309(36)=abb309(83)*abb309(15)
      abb309(10)=8.0_ki*abb309(10)
      abb309(58)=-8.0_ki*abb309(99)
      abb309(56)=abb309(56)*spbk7k2
      abb309(44)=abb309(44)*spbk7k3
      abb309(68)=abb309(56)+abb309(44)
      abb309(68)=-abb309(68)*abb309(122)
      abb309(44)=abb309(56)+2.0_ki*abb309(44)
      abb309(44)=es12*abb309(44)
      abb309(56)=-spbk7k2*abb309(62)*abb309(118)
      abb309(44)=abb309(56)+abb309(44)+abb309(68)
      abb309(44)=8.0_ki*abb309(44)
      abb309(49)=16.0_ki*abb309(49)
      abb309(56)=-8.0_ki*abb309(64)*abb309(76)*abb309(144)
      abb309(62)=-spbk7k2*abb309(109)
      abb309(64)=-abb309(106)-abb309(105)
      abb309(64)=spbk7k3*abb309(64)
      abb309(68)=abb309(65)*abb309(136)
      abb309(19)=-abb309(19)*abb309(122)
      abb309(19)=abb309(68)+abb309(62)+abb309(64)+abb309(19)
      abb309(62)=8.0_ki*spak1l5
      abb309(19)=abb309(19)*abb309(62)
      abb309(64)=-abb309(32)*abb309(103)
      abb309(63)=-abb309(64)*abb309(63)
      abb309(38)=abb309(38)*abb309(77)
      abb309(24)=-abb309(32)*abb309(24)
      abb309(24)=abb309(24)+abb309(38)
      abb309(24)=spbl5k2*abb309(24)
      abb309(24)=abb309(63)+abb309(24)
      abb309(24)=abb309(24)*abb309(62)
      abb309(32)=16.0_ki*spak1k4
      abb309(38)=abb309(64)*abb309(32)
      abb309(43)=abb309(103)*abb309(43)
      abb309(62)=abb309(43)*abb309(87)
      abb309(63)=-spak1k3*abb309(64)
      abb309(62)=abb309(62)+abb309(63)
      abb309(62)=8.0_ki*abb309(62)
      abb309(15)=-spak1k4*abb309(43)*abb309(15)
      abb309(43)=abb309(55)*spbk7l6
      abb309(63)=16.0_ki*abb309(43)
      abb309(43)=-8.0_ki*abb309(43)
      abb309(64)=-abb309(81)*abb309(79)*abb309(91)
      abb309(68)=spak1k7*abb309(134)*abb309(86)
      abb309(64)=abb309(64)+abb309(68)
      abb309(64)=8.0_ki*abb309(64)
      abb309(47)=-spbk7k2*abb309(47)
      abb309(39)=-abb309(40)*abb309(39)
      abb309(39)=abb309(46)+abb309(39)
      abb309(39)=abb309(145)*abb309(39)
      abb309(11)=abb309(11)*abb309(79)
      abb309(11)=abb309(11)+abb309(39)
      abb309(11)=spbk7k3*abb309(11)*abb309(81)
      abb309(11)=abb309(47)+abb309(11)
      abb309(11)=8.0_ki*abb309(11)
      abb309(32)=abb309(65)*abb309(32)
      abb309(39)=-spak1k3*abb309(65)
      abb309(40)=abb309(91)*abb309(51)
      abb309(46)=-abb309(40)*abb309(87)
      abb309(39)=abb309(46)+abb309(39)
      abb309(39)=8.0_ki*abb309(39)
      abb309(40)=spbk4k3*spak1k4*abb309(40)
      abb309(40)=abb309(92)+abb309(40)
      abb309(40)=8.0_ki*abb309(40)
      abb309(46)=-abb309(74)*abb309(122)
      abb309(47)=spbk7k2*spbl5k1*abb309(53)*abb309(91)
      abb309(46)=abb309(47)+abb309(46)
      abb309(46)=abb309(9)*abb309(46)
      abb309(47)=abb309(115)*abb309(81)
      abb309(33)=abb309(33)*abb309(48)
      abb309(33)=abb309(47)+abb309(33)
      abb309(33)=spbk7k3*abb309(33)
      abb309(47)=-es12*spbk7k1*abb309(57)
      abb309(27)=-spak3k4*abb309(27)
      abb309(27)=-abb309(90)+abb309(27)
      abb309(27)=spbk3k1*abb309(27)
      abb309(27)=abb309(27)+abb309(47)+abb309(33)+abb309(46)
      abb309(27)=8.0_ki*abb309(27)
      abb309(33)=-spbk3k1*abb309(55)
      abb309(21)=-es12*abb309(21)
      abb309(46)=spbl5k2*abb309(9)*abb309(53)
      abb309(21)=abb309(46)+abb309(21)
      abb309(21)=-abb309(103)*abb309(21)
      abb309(18)=spbl5k3*abb309(18)*abb309(81)
      abb309(18)=abb309(18)+abb309(33)+abb309(21)
      abb309(18)=8.0_ki*abb309(18)
      abb309(21)=spak3k4*abb309(126)
      abb309(21)=abb309(34)+abb309(21)
      abb309(33)=8.0_ki*spbk7k1
      abb309(21)=abb309(21)*abb309(33)
      abb309(34)=spbl6k1*abb309(55)
      abb309(34)=abb309(105)+abb309(34)
      abb309(34)=8.0_ki*abb309(34)
      abb309(22)=abb309(22)*abb309(33)
      abb309(33)=-spbl6k1*abb309(57)
      abb309(33)=abb309(109)+abb309(33)
      abb309(33)=8.0_ki*abb309(33)
      R2d309=0.0_ki
      rat2 = rat2 + R2d309
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='309' value='", &
          & R2d309, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd309h3
