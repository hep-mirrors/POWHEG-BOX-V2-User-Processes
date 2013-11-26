module     p0_dbaru_epnebbbarg_abbrevd296h3
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(158), public :: abb296
   complex(ki), public :: R2d296
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
      abb296(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb296(2)=NC**(-1)
      abb296(3)=spak2l5**(-1)
      abb296(4)=spbl5k2**(-1)
      abb296(5)=sqrt(mB**2)
      abb296(6)=spak2l6**(-1)
      abb296(7)=spbl6k2**(-1)
      abb296(8)=c4*spak2k4
      abb296(9)=abb296(2)**2
      abb296(10)=abb296(8)*abb296(9)
      abb296(11)=c2*spak2k4
      abb296(10)=abb296(10)+abb296(11)
      abb296(12)=mB**2
      abb296(13)=abb296(12)*abb296(5)
      abb296(14)=abb296(13)*spbl6k2
      abb296(15)=mB**3
      abb296(16)=abb296(15)*spbl6k2
      abb296(14)=abb296(14)+abb296(16)
      abb296(17)=TR*gW
      abb296(17)=abb296(17)**2
      abb296(18)=abb296(17)*abb296(1)
      abb296(19)=i_*CVDU
      abb296(20)=abb296(19)*abb296(3)*abb296(18)
      abb296(21)=abb296(20)*spak1k2
      abb296(22)=abb296(10)*abb296(21)*abb296(14)
      abb296(23)=c1+c3
      abb296(24)=abb296(23)*abb296(2)*abb296(1)
      abb296(25)=c2*abb296(1)
      abb296(24)=abb296(24)-abb296(25)
      abb296(25)=abb296(9)*c4
      abb296(26)=abb296(25)*abb296(1)
      abb296(26)=abb296(24)-abb296(26)
      abb296(27)=abb296(13)*spak2k4
      abb296(28)=abb296(17)*abb296(6)
      abb296(29)=abb296(19)*spak1k2
      abb296(30)=-spbl5k2*abb296(26)*abb296(29)*abb296(27)*abb296(28)
      abb296(31)=abb296(15)*spak2k4
      abb296(32)=abb296(17)*abb296(31)
      abb296(33)=-abb296(24)*abb296(32)
      abb296(34)=spbl6k2**2
      abb296(35)=abb296(3)**2
      abb296(36)=abb296(34)*abb296(35)
      abb296(37)=abb296(36)*abb296(33)
      abb296(38)=abb296(35)*abb296(31)
      abb296(18)=abb296(18)*abb296(25)
      abb296(39)=abb296(18)*abb296(34)*abb296(38)
      abb296(37)=abb296(39)+abb296(37)
      abb296(37)=abb296(29)*abb296(37)
      abb296(40)=spak2l6*abb296(37)*abb296(4)
      abb296(41)=abb296(21)*abb296(2)
      abb296(42)=spak2k4*abb296(23)
      abb296(14)=abb296(42)*abb296(41)*abb296(14)
      abb296(43)=spbl6k2*mB
      abb296(41)=abb296(41)*abb296(43)
      abb296(44)=abb296(41)*abb296(23)
      abb296(25)=abb296(25)+c2
      abb296(45)=abb296(21)*abb296(25)
      abb296(46)=abb296(43)*abb296(45)
      abb296(44)=abb296(44)-abb296(46)
      abb296(46)=abb296(44)*spak2l6
      abb296(47)=spbl6k1*spak1k4
      abb296(48)=spak4l5*spbl6l5
      abb296(49)=abb296(47)+abb296(48)
      abb296(50)=abb296(49)*abb296(46)
      abb296(51)=abb296(17)*spbl6k2
      abb296(52)=abb296(26)*abb296(51)*abb296(29)
      abb296(53)=-abb296(5)*abb296(52)
      abb296(54)=spak4l6*spbl6l5
      abb296(55)=spbl5k1*spak1k4
      abb296(56)=abb296(54)-abb296(55)
      abb296(57)=abb296(56)*abb296(53)
      abb296(14)=-abb296(14)+abb296(30)+abb296(40)+abb296(50)+abb296(57)+abb296&
      &(22)
      abb296(22)=spbk7k3*spae7k7
      abb296(30)=abb296(22)*spbe7k2
      abb296(40)=4.0_ki*abb296(30)
      abb296(50)=-abb296(14)*abb296(40)
      abb296(14)=spbk3k2*abb296(14)
      abb296(57)=abb296(53)*spbl5k3
      abb296(58)=spbl6k3*abb296(46)
      abb296(58)=-abb296(57)+abb296(58)
      abb296(59)=spbk7k2*spak4k7
      abb296(58)=abb296(58)*abb296(59)
      abb296(14)=abb296(58)+abb296(14)
      abb296(14)=8.0_ki*abb296(14)
      abb296(58)=spak4e7*spbe7k2
      abb296(57)=abb296(57)*abb296(58)
      abb296(60)=abb296(58)*spbl6k3
      abb296(61)=-abb296(46)*abb296(60)
      abb296(61)=abb296(57)+abb296(61)
      abb296(61)=8.0_ki*abb296(61)
      abb296(62)=abb296(15)*abb296(6)
      abb296(63)=abb296(62)*abb296(21)
      abb296(64)=abb296(63)*abb296(25)
      abb296(65)=-spak2k4*abb296(64)
      abb296(66)=abb296(63)*abb296(2)
      abb296(67)=abb296(66)*abb296(42)
      abb296(65)=abb296(67)+abb296(65)
      abb296(52)=-abb296(38)*abb296(52)
      abb296(67)=abb296(52)*abb296(4)
      abb296(68)=-abb296(67)+abb296(65)
      abb296(68)=abb296(30)*abb296(68)
      abb296(69)=mB*abb296(45)
      abb296(70)=abb296(21)*abb296(23)
      abb296(71)=-abb296(70)*abb296(2)*mB
      abb296(69)=abb296(71)+abb296(69)
      abb296(71)=abb296(69)*abb296(30)
      abb296(72)=abb296(71)*abb296(49)
      abb296(68)=abb296(72)+abb296(68)
      abb296(68)=8.0_ki*abb296(68)
      abb296(72)=abb296(69)*spbl6k3
      abb296(73)=abb296(59)*abb296(72)
      abb296(74)=abb296(67)*spbk3k2
      abb296(73)=abb296(73)-abb296(74)
      abb296(75)=abb296(69)*spbk3k2
      abb296(76)=-abb296(75)*abb296(49)
      abb296(77)=-spbk3k2*abb296(65)
      abb296(76)=abb296(77)+abb296(76)-abb296(73)
      abb296(76)=16.0_ki*abb296(76)
      abb296(77)=abb296(72)*abb296(58)
      abb296(77)=16.0_ki*abb296(77)
      abb296(78)=abb296(20)*mB
      abb296(79)=abb296(78)*spbl6k2
      abb296(80)=abb296(79)*abb296(25)
      abb296(81)=spak2k4*abb296(80)
      abb296(82)=abb296(79)*abb296(2)
      abb296(83)=abb296(82)*abb296(42)
      abb296(81)=abb296(81)-abb296(83)
      abb296(83)=spak1e7*spbe7k2
      abb296(84)=abb296(81)*spbl6k3*abb296(83)
      abb296(85)=abb296(82)*abb296(23)
      abb296(80)=abb296(80)-abb296(85)
      abb296(85)=spak1e7*spbe7k3
      abb296(86)=abb296(80)*abb296(85)
      abb296(87)=abb296(86)*abb296(48)
      abb296(88)=abb296(80)*spak1e7
      abb296(89)=spbk7e7*spak4k7
      abb296(90)=abb296(89)*spbl6k3
      abb296(91)=abb296(90)*abb296(88)
      abb296(60)=abb296(60)*abb296(44)
      abb296(60)=abb296(87)+abb296(84)-abb296(91)-abb296(60)
      abb296(60)=abb296(60)*spak2l6
      abb296(84)=abb296(20)*spbl6k2
      abb296(87)=abb296(84)*abb296(15)
      abb296(91)=abb296(13)*abb296(84)
      abb296(87)=abb296(87)+abb296(91)
      abb296(10)=-abb296(87)*abb296(10)
      abb296(87)=abb296(20)*abb296(2)
      abb296(16)=abb296(16)*abb296(87)
      abb296(92)=abb296(13)*abb296(87)
      abb296(93)=abb296(92)*spbl6k2
      abb296(16)=abb296(16)+abb296(93)
      abb296(16)=abb296(42)*abb296(16)
      abb296(10)=abb296(16)+abb296(10)
      abb296(10)=abb296(10)*abb296(85)
      abb296(16)=abb296(17)*abb296(5)
      abb296(94)=abb296(19)*spbl6k2
      abb296(95)=-abb296(24)*abb296(16)*abb296(94)
      abb296(96)=abb296(18)*abb296(94)
      abb296(97)=abb296(96)*abb296(5)
      abb296(95)=abb296(97)+abb296(95)
      abb296(97)=abb296(95)*spak2k4
      abb296(98)=spbl5k3*spbe7k2
      abb296(99)=abb296(98)*spak1e7
      abb296(100)=abb296(97)*abb296(99)
      abb296(10)=abb296(100)+abb296(57)+abb296(10)+abb296(60)
      abb296(57)=abb296(62)*abb296(87)
      abb296(60)=abb296(13)*abb296(6)
      abb296(62)=abb296(60)*abb296(87)
      abb296(87)=abb296(57)-abb296(62)
      abb296(100)=abb296(42)*abb296(87)
      abb296(101)=abb296(20)*abb296(6)
      abb296(15)=abb296(101)*abb296(15)
      abb296(102)=abb296(15)*abb296(9)
      abb296(103)=abb296(13)*abb296(101)
      abb296(104)=abb296(103)*abb296(9)
      abb296(105)=abb296(102)-abb296(104)
      abb296(106)=-abb296(8)*abb296(105)
      abb296(107)=abb296(15)-abb296(103)
      abb296(108)=-abb296(11)*abb296(107)
      abb296(100)=abb296(108)+abb296(106)+abb296(100)
      abb296(106)=spbe7k3*spak2e7
      abb296(100)=abb296(106)*spbl6k2*abb296(100)
      abb296(108)=abb296(57)+abb296(62)
      abb296(109)=abb296(108)*abb296(42)
      abb296(102)=abb296(102)+abb296(104)
      abb296(110)=abb296(102)*abb296(8)
      abb296(111)=abb296(15)+abb296(103)
      abb296(112)=abb296(111)*abb296(11)
      abb296(109)=-abb296(109)+abb296(110)+abb296(112)
      abb296(110)=spbk3k2*spak2e7
      abb296(112)=abb296(110)-abb296(22)
      abb296(113)=abb296(112)*spbe7l6
      abb296(114)=-abb296(109)*abb296(113)
      abb296(100)=abb296(100)+abb296(114)
      abb296(100)=spak1l6*abb296(100)
      abb296(20)=abb296(20)*abb296(5)
      abb296(114)=-abb296(25)*abb296(20)*abb296(12)
      abb296(115)=abb296(92)*abb296(23)
      abb296(114)=abb296(115)+abb296(114)
      abb296(15)=-abb296(15)*abb296(25)
      abb296(115)=abb296(57)*abb296(23)
      abb296(15)=abb296(115)+abb296(15)
      abb296(15)=abb296(15)*abb296(7)
      abb296(115)=es12*abb296(15)
      abb296(115)=abb296(115)+abb296(114)
      abb296(22)=abb296(22)*spak1k4
      abb296(116)=abb296(110)*spak1k4
      abb296(22)=abb296(22)-abb296(116)
      abb296(115)=abb296(22)*abb296(115)
      abb296(117)=abb296(6)**2
      abb296(118)=abb296(117)*abb296(19)
      abb296(119)=-abb296(24)*abb296(118)*abb296(32)
      abb296(120)=abb296(18)*abb296(31)
      abb296(118)=abb296(120)*abb296(118)
      abb296(118)=abb296(118)+abb296(119)
      abb296(119)=abb296(7)*spbl5k2
      abb296(121)=abb296(118)*abb296(119)
      abb296(122)=abb296(112)*abb296(121)
      abb296(123)=-spak1l6*abb296(122)
      abb296(115)=abb296(123)+abb296(115)
      abb296(115)=spbe7l6*abb296(115)
      abb296(123)=abb296(95)*abb296(85)
      abb296(124)=abb296(19)*mB
      abb296(28)=-abb296(26)*abb296(28)*abb296(124)
      abb296(125)=abb296(28)*abb296(112)
      abb296(126)=spak1l6*spbe7l6
      abb296(127)=-abb296(125)*abb296(126)
      abb296(127)=abb296(127)+abb296(123)
      abb296(127)=spbl6l5*abb296(127)
      abb296(128)=-abb296(66)*abb296(23)
      abb296(64)=abb296(128)+abb296(64)
      abb296(128)=abb296(64)*abb296(113)
      abb296(129)=abb296(2)*abb296(60)
      abb296(70)=abb296(129)*abb296(70)
      abb296(45)=abb296(60)*abb296(45)
      abb296(45)=abb296(70)-abb296(45)
      abb296(70)=abb296(106)*spbl6k2
      abb296(130)=-abb296(45)*abb296(70)
      abb296(127)=abb296(127)+abb296(130)-abb296(128)
      abb296(127)=spak4l6*abb296(127)
      abb296(130)=abb296(80)*spak1l6
      abb296(131)=abb296(130)*abb296(106)
      abb296(132)=abb296(71)+abb296(131)
      abb296(132)=spbl6l5*abb296(132)
      abb296(133)=abb296(106)*spbl5k2
      abb296(134)=-abb296(45)*abb296(133)
      abb296(128)=-abb296(119)*abb296(128)
      abb296(128)=abb296(128)+abb296(134)+abb296(132)
      abb296(128)=spak4l5*abb296(128)
      abb296(132)=abb296(130)*spak2e7
      abb296(134)=abb296(132)*spbl6k3
      abb296(135)=abb296(45)*abb296(110)
      abb296(136)=abb296(95)*spak1e7
      abb296(137)=spbl5k3*abb296(136)
      abb296(135)=abb296(137)+abb296(135)-abb296(134)
      abb296(135)=abb296(135)*abb296(89)
      abb296(137)=abb296(19)*abb296(6)
      abb296(16)=abb296(24)*abb296(16)*abb296(137)
      abb296(138)=abb296(12)*abb296(16)
      abb296(137)=abb296(18)*abb296(137)
      abb296(13)=abb296(137)*abb296(13)
      abb296(13)=abb296(138)-abb296(13)
      abb296(138)=spbe7l5*abb296(13)
      abb296(139)=spbe7k1*abb296(45)
      abb296(138)=abb296(139)+abb296(138)
      abb296(138)=abb296(22)*abb296(138)
      abb296(139)=abb296(103)*abb296(25)
      abb296(140)=abb296(62)*abb296(23)
      abb296(139)=abb296(139)-abb296(140)
      abb296(140)=abb296(139)*spak2k7
      abb296(141)=abb296(116)*abb296(140)
      abb296(142)=abb296(25)*abb296(27)
      abb296(143)=abb296(101)*abb296(142)
      abb296(144)=-abb296(62)*abb296(42)
      abb296(143)=abb296(143)+abb296(144)
      abb296(144)=-spak1k7*abb296(143)*abb296(110)
      abb296(141)=abb296(144)+abb296(141)
      abb296(141)=spbk7e7*abb296(141)
      abb296(12)=abb296(12)*spak2k4
      abb296(16)=abb296(12)*abb296(16)
      abb296(27)=abb296(137)*abb296(27)
      abb296(16)=abb296(16)-abb296(27)
      abb296(27)=abb296(16)*abb296(85)
      abb296(137)=abb296(106)*spak1k4
      abb296(144)=abb296(13)*abb296(137)
      abb296(144)=abb296(144)-abb296(27)
      abb296(144)=spbl5k2*abb296(144)
      abb296(145)=abb296(123)*spak1k4
      abb296(146)=abb296(28)*abb296(22)
      abb296(126)=-abb296(146)*abb296(126)
      abb296(126)=abb296(126)-abb296(145)
      abb296(126)=spbl5k1*abb296(126)
      abb296(32)=-abb296(24)*abb296(36)*abb296(32)*abb296(19)
      abb296(36)=abb296(39)*abb296(19)
      abb296(32)=abb296(36)+abb296(32)
      abb296(36)=abb296(85)*spak2l6
      abb296(39)=abb296(106)*spak1l6
      abb296(36)=abb296(36)-abb296(39)
      abb296(32)=abb296(36)*abb296(32)
      abb296(36)=-abb296(52)*abb296(30)
      abb296(36)=abb296(36)+abb296(32)
      abb296(36)=abb296(4)*abb296(36)
      abb296(86)=abb296(86)*spak2l6
      abb296(147)=-abb296(86)+abb296(71)
      abb296(147)=spak1k4*abb296(147)
      abb296(130)=abb296(130)*abb296(137)
      abb296(147)=abb296(130)+abb296(147)
      abb296(147)=spbl6k1*abb296(147)
      abb296(148)=abb296(93)*abb296(23)
      abb296(91)=-abb296(91)*abb296(25)
      abb296(91)=abb296(91)+abb296(148)
      abb296(91)=abb296(91)*abb296(137)
      abb296(148)=abb296(65)*abb296(30)
      abb296(149)=-spbe7l5*abb296(112)
      abb296(149)=abb296(133)+abb296(149)
      abb296(149)=spak1l5*abb296(143)*abb296(149)
      abb296(36)=abb296(149)+abb296(147)+abb296(36)+abb296(126)+abb296(135)+abb&
      &296(128)+abb296(127)+abb296(144)+abb296(100)+abb296(91)+abb296(148)+abb2&
      &96(115)+abb296(141)-abb296(10)+abb296(138)
      abb296(36)=8.0_ki*abb296(36)
      abb296(91)=spak1l6*abb296(109)
      abb296(100)=abb296(121)*spak1l6
      abb296(115)=abb296(28)*spak1l6
      abb296(126)=abb296(55)*abb296(115)
      abb296(100)=abb296(126)-abb296(100)
      abb296(126)=abb296(115)*spbl6l5
      abb296(127)=abb296(64)+abb296(126)
      abb296(127)=spak4l6*abb296(127)
      abb296(114)=spak1k4*abb296(114)
      abb296(15)=spak1k4*abb296(15)
      abb296(128)=es12*abb296(15)
      abb296(91)=abb296(127)+abb296(128)-abb296(100)+abb296(114)+abb296(91)
      abb296(91)=spbl6k3*abb296(91)
      abb296(114)=abb296(129)*abb296(21)
      abb296(127)=-abb296(114)+2.0_ki*abb296(66)
      abb296(127)=-abb296(127)*abb296(42)
      abb296(60)=abb296(60)*abb296(21)
      abb296(128)=abb296(60)*abb296(9)
      abb296(129)=abb296(63)*abb296(9)
      abb296(135)=2.0_ki*abb296(129)-abb296(128)
      abb296(135)=abb296(135)*abb296(8)
      abb296(138)=2.0_ki*abb296(63)-abb296(60)
      abb296(138)=abb296(138)*abb296(11)
      abb296(127)=abb296(138)+abb296(135)+abb296(127)
      abb296(127)=spbk3k2*abb296(127)
      abb296(135)=spbk7k3*abb296(140)
      abb296(138)=-spbk3k1*abb296(45)
      abb296(135)=abb296(138)+abb296(135)
      abb296(135)=spak1k4*abb296(135)
      abb296(13)=spak1k4*abb296(13)
      abb296(138)=-spbl6k2*abb296(28)
      abb296(141)=abb296(138)*spak1l6
      abb296(144)=spak2k4*abb296(141)
      abb296(13)=abb296(13)+abb296(144)
      abb296(13)=spbl5k3*abb296(13)
      abb296(144)=-spbl6l5*abb296(75)
      abb296(147)=abb296(64)*abb296(119)
      abb296(148)=spbl6k3*abb296(147)
      abb296(144)=abb296(144)+abb296(148)
      abb296(144)=spak4l5*abb296(144)
      abb296(148)=abb296(64)*spbk3k2
      abb296(149)=abb296(148)*abb296(7)
      abb296(150)=abb296(115)*spbl5k3
      abb296(151)=abb296(149)-abb296(150)
      abb296(152)=spbk7l6*spak4k7
      abb296(153)=-abb296(151)*abb296(152)
      abb296(154)=spak1k7*spbk7k3
      abb296(155)=spak1l5*spbl5k3
      abb296(154)=abb296(154)-abb296(155)
      abb296(155)=-abb296(143)*abb296(154)
      abb296(47)=-abb296(75)*abb296(47)
      abb296(13)=abb296(153)+abb296(47)+abb296(144)+abb296(13)+abb296(127)+abb2&
      &96(155)+abb296(135)-abb296(73)+abb296(91)
      abb296(13)=16.0_ki*abb296(13)
      abb296(47)=abb296(72)*spbe7k2
      abb296(73)=abb296(150)*spbe7l6
      abb296(47)=abb296(47)-abb296(73)
      abb296(47)=abb296(47)*spak4e7
      abb296(73)=abb296(139)*abb296(137)
      abb296(73)=abb296(73)-abb296(47)
      abb296(91)=abb296(143)*abb296(85)
      abb296(127)=spak4e7*spbe7l6
      abb296(135)=abb296(127)*abb296(149)
      abb296(91)=abb296(135)+abb296(91)-abb296(73)
      abb296(91)=16.0_ki*abb296(91)
      abb296(135)=spbl5k2*abb296(118)*abb296(85)
      abb296(143)=abb296(127)*abb296(148)
      abb296(135)=abb296(135)+abb296(143)
      abb296(135)=abb296(135)*abb296(7)
      abb296(55)=abb296(28)*abb296(55)
      abb296(143)=abb296(85)*abb296(55)
      abb296(144)=abb296(28)*spak2k4
      abb296(99)=abb296(144)*abb296(99)
      abb296(150)=abb296(28)*spbl5k3
      abb296(153)=abb296(89)*abb296(150)
      abb296(155)=abb296(153)*spak1e7
      abb296(99)=abb296(155)+abb296(135)-abb296(143)-abb296(99)
      abb296(135)=abb296(54)*abb296(28)
      abb296(109)=-abb296(135)-abb296(109)
      abb296(109)=abb296(85)*abb296(109)
      abb296(73)=abb296(109)+abb296(73)-abb296(99)
      abb296(73)=16.0_ki*abb296(73)
      abb296(21)=abb296(43)*abb296(21)
      abb296(43)=abb296(21)-abb296(63)
      abb296(109)=abb296(43)+abb296(60)
      abb296(109)=abb296(109)*c2
      abb296(143)=abb296(21)*abb296(9)
      abb296(155)=abb296(143)-abb296(129)
      abb296(156)=abb296(155)+abb296(128)
      abb296(156)=abb296(156)*c4
      abb296(157)=abb296(41)-abb296(66)
      abb296(158)=abb296(157)+abb296(114)
      abb296(158)=abb296(23)*abb296(158)
      abb296(109)=-abb296(158)+abb296(109)+abb296(156)
      abb296(156)=abb296(106)*spbl6k2*abb296(109)
      abb296(138)=abb296(138)*abb296(39)
      abb296(123)=abb296(138)+abb296(123)
      abb296(123)=spbl6l5*abb296(123)
      abb296(138)=abb296(44)*abb296(110)
      abb296(158)=spbe7l6*abb296(138)
      abb296(123)=abb296(123)+abb296(156)+abb296(158)
      abb296(123)=spak4l6*abb296(123)
      abb296(156)=abb296(109)*abb296(133)
      abb296(131)=spbl6l5*abb296(131)
      abb296(131)=abb296(156)+abb296(131)
      abb296(131)=spak4l5*abb296(131)
      abb296(110)=-abb296(109)*abb296(110)
      abb296(156)=abb296(141)*spak2e7
      abb296(156)=abb296(156)+abb296(136)
      abb296(158)=spbl5k3*abb296(156)
      abb296(110)=abb296(158)+abb296(110)-abb296(134)
      abb296(110)=abb296(110)*abb296(89)
      abb296(87)=abb296(87)-abb296(82)
      abb296(87)=-abb296(87)*abb296(23)
      abb296(9)=abb296(79)*abb296(9)
      abb296(105)=-abb296(9)+abb296(105)
      abb296(105)=c4*abb296(105)
      abb296(107)=-abb296(79)+abb296(107)
      abb296(107)=c2*abb296(107)
      abb296(87)=abb296(107)+abb296(105)+abb296(87)
      abb296(87)=es12*abb296(87)*abb296(137)
      abb296(105)=-abb296(118)*abb296(39)
      abb296(27)=abb296(105)-abb296(27)
      abb296(27)=spbl5k2*abb296(27)
      abb296(105)=-abb296(137)*abb296(141)
      abb296(105)=abb296(105)-abb296(145)
      abb296(105)=spbl5k1*abb296(105)
      abb296(32)=abb296(4)*abb296(32)
      abb296(86)=-spak1k4*abb296(86)
      abb296(86)=abb296(130)+abb296(86)
      abb296(86)=spbl6k1*abb296(86)
      abb296(35)=-abb296(35)*abb296(94)*abb296(33)
      abb296(38)=-abb296(38)*abb296(96)
      abb296(35)=abb296(38)+abb296(35)
      abb296(35)=abb296(4)*abb296(35)
      abb296(31)=-abb296(25)*abb296(31)*abb296(101)
      abb296(38)=abb296(57)*abb296(42)
      abb296(31)=abb296(38)+abb296(31)
      abb296(35)=abb296(35)+abb296(31)
      abb296(35)=abb296(35)*abb296(83)
      abb296(38)=spak4l6*spbe7l6
      abb296(57)=spbe7l5*spak4l5
      abb296(38)=abb296(38)+abb296(57)
      abb296(83)=abb296(88)*abb296(38)
      abb296(35)=abb296(35)+abb296(83)
      abb296(83)=spak2k7*spbk7k3
      abb296(35)=abb296(35)*abb296(83)
      abb296(94)=abb296(80)*spak2e7
      abb296(96)=spak1k7*abb296(94)*spbk7k3
      abb296(101)=abb296(88)*abb296(83)
      abb296(101)=-abb296(96)+abb296(101)
      abb296(101)=spak1k4*abb296(101)
      abb296(107)=abb296(44)*abb296(116)
      abb296(101)=abb296(107)+abb296(101)
      abb296(101)=spbe7k1*abb296(101)
      abb296(39)=abb296(39)*spbl6k2*abb296(31)
      abb296(57)=abb296(57)*abb296(138)
      abb296(38)=-abb296(38)*abb296(96)
      abb296(10)=abb296(101)+abb296(38)+abb296(35)+abb296(87)+abb296(86)+abb296&
      &(57)+abb296(32)+abb296(105)+abb296(110)+abb296(131)+abb296(123)+abb296(2&
      &7)+2.0_ki*abb296(39)-abb296(10)
      abb296(10)=4.0_ki*abb296(10)
      abb296(27)=spak2l6*spbl6k3
      abb296(27)=-abb296(83)+abb296(27)
      abb296(27)=abb296(80)*abb296(27)
      abb296(26)=-spbl5k3*abb296(51)*abb296(124)*abb296(26)
      abb296(32)=spbk3k1*abb296(44)
      abb296(26)=abb296(32)+abb296(26)+abb296(27)
      abb296(26)=spak1k4*abb296(26)
      abb296(27)=abb296(41)+abb296(66)
      abb296(32)=-abb296(27)*abb296(42)
      abb296(35)=abb296(143)+abb296(129)
      abb296(38)=abb296(35)*abb296(8)
      abb296(21)=abb296(21)+abb296(63)
      abb296(39)=abb296(21)*abb296(11)
      abb296(32)=abb296(39)+abb296(38)+abb296(32)
      abb296(32)=spbk3k2*abb296(32)
      abb296(38)=-spbl6k3*spak1l6
      abb296(38)=abb296(38)+abb296(154)
      abb296(38)=abb296(81)*abb296(38)
      abb296(26)=abb296(74)+abb296(32)+abb296(26)+abb296(38)
      abb296(26)=8.0_ki*abb296(26)
      abb296(32)=abb296(137)*abb296(80)
      abb296(38)=abb296(81)*abb296(85)
      abb296(32)=abb296(32)-abb296(38)
      abb296(38)=8.0_ki*abb296(32)
      abb296(39)=8.0_ki*abb296(58)
      abb296(41)=-abb296(72)*abb296(39)
      abb296(51)=abb296(108)-abb296(82)
      abb296(51)=abb296(51)*abb296(42)
      abb296(57)=abb296(9)-abb296(102)
      abb296(57)=abb296(57)*abb296(8)
      abb296(63)=abb296(79)-abb296(111)
      abb296(63)=abb296(63)*abb296(11)
      abb296(51)=-abb296(135)+abb296(63)+abb296(57)+abb296(51)
      abb296(51)=abb296(85)*abb296(51)
      abb296(57)=abb296(62)-abb296(82)
      abb296(57)=-abb296(57)*abb296(23)
      abb296(9)=-abb296(9)+abb296(104)
      abb296(9)=c4*abb296(9)
      abb296(62)=-abb296(79)+abb296(103)
      abb296(62)=c2*abb296(62)
      abb296(9)=abb296(62)+abb296(9)+abb296(57)
      abb296(9)=abb296(9)*abb296(137)
      abb296(9)=abb296(9)+abb296(51)-abb296(47)-abb296(99)
      abb296(9)=8.0_ki*abb296(9)
      abb296(32)=-4.0_ki*abb296(32)
      abb296(47)=spbl5k2*abb296(69)*spak4l5
      abb296(51)=abb296(44)*spak4l6
      abb296(57)=abb296(2)*abb296(23)
      abb296(57)=abb296(57)-abb296(25)
      abb296(57)=spak1k4*abb296(57)*abb296(78)
      abb296(62)=abb296(57)*es12
      abb296(47)=abb296(62)+abb296(47)-abb296(51)
      abb296(47)=abb296(47)*spbe7k3
      abb296(51)=abb296(75)*abb296(89)
      abb296(62)=abb296(69)*spbe7k2
      abb296(63)=spak2k4*abb296(62)
      abb296(66)=abb296(63)*spbk3k2
      abb296(47)=abb296(47)-abb296(51)+abb296(66)
      abb296(51)=-8.0_ki*abb296(47)
      abb296(47)=-4.0_ki*abb296(47)
      abb296(33)=abb296(120)+abb296(33)
      abb296(29)=abb296(119)*abb296(117)*abb296(29)*abb296(33)
      abb296(33)=abb296(49)*abb296(69)
      abb296(66)=-spak1k2*abb296(28)
      abb296(74)=abb296(66)*abb296(56)
      abb296(29)=-abb296(29)+abb296(33)+2.0_ki*abb296(65)+abb296(74)-abb296(67)
      abb296(29)=abb296(29)*spbe7k3
      abb296(33)=abb296(66)*spbl5k3
      abb296(33)=abb296(33)-abb296(72)
      abb296(33)=abb296(33)*abb296(89)
      abb296(63)=abb296(63)*spbl6k3
      abb296(74)=abb296(98)*abb296(66)*spak2k4
      abb296(29)=abb296(29)-abb296(74)+abb296(33)+abb296(63)
      abb296(33)=-8.0_ki*abb296(29)
      abb296(29)=-4.0_ki*abb296(29)
      abb296(63)=abb296(44)*abb296(106)
      abb296(74)=abb296(69)*abb296(113)
      abb296(63)=abb296(63)+abb296(74)
      abb296(48)=abb296(63)*abb296(48)
      abb296(37)=abb296(37)*abb296(106)
      abb296(52)=-abb296(52)*abb296(113)
      abb296(37)=abb296(37)+abb296(52)
      abb296(37)=abb296(4)*abb296(37)
      abb296(52)=abb296(44)*abb296(137)
      abb296(63)=abb296(69)*spbe7l6
      abb296(74)=-abb296(22)*abb296(63)
      abb296(52)=abb296(52)+abb296(74)
      abb296(52)=spbl6k1*abb296(52)
      abb296(70)=-abb296(70)+abb296(113)
      abb296(65)=abb296(65)*abb296(70)
      abb296(70)=-spak2e7*abb296(44)*abb296(90)
      abb296(37)=abb296(52)+abb296(37)+abb296(70)+abb296(48)+abb296(65)
      abb296(37)=4.0_ki*abb296(37)
      abb296(48)=abb296(157)*abb296(42)
      abb296(8)=-abb296(155)*abb296(8)
      abb296(11)=-abb296(43)*abb296(11)
      abb296(8)=abb296(67)+abb296(11)+abb296(8)+abb296(48)
      abb296(8)=spbl6k3*abb296(8)
      abb296(11)=abb296(152)-abb296(49)
      abb296(11)=abb296(72)*abb296(11)
      abb296(8)=abb296(11)+abb296(8)
      abb296(8)=8.0_ki*abb296(8)
      abb296(11)=abb296(127)*abb296(72)
      abb296(43)=8.0_ki*abb296(11)
      abb296(11)=4.0_ki*abb296(11)
      abb296(48)=spae7k7*spbe7k2
      abb296(46)=spbk7l6*abb296(48)*abb296(46)
      abb296(49)=abb296(48)*spbk7l5
      abb296(52)=-abb296(53)*abb296(49)
      abb296(46)=abb296(46)+abb296(52)
      abb296(46)=4.0_ki*abb296(46)
      abb296(52)=spbl5k2*abb296(53)
      abb296(34)=spak2l6*abb296(34)*abb296(69)
      abb296(34)=abb296(52)+abb296(34)
      abb296(34)=8.0_ki*abb296(34)
      abb296(52)=abb296(69)*abb296(48)
      abb296(53)=abb296(52)*spbk7l6
      abb296(65)=-8.0_ki*abb296(53)
      abb296(44)=16.0_ki*abb296(44)
      abb296(67)=spbl5k2*spak2e7
      abb296(69)=spbk7l5*spae7k7
      abb296(67)=abb296(67)-abb296(69)
      abb296(69)=-abb296(115)*abb296(67)
      abb296(70)=spak2l6*abb296(88)
      abb296(64)=abb296(64)*abb296(7)
      abb296(72)=spbk7k2*spae7k7*abb296(64)
      abb296(69)=abb296(72)+abb296(70)-abb296(132)+abb296(69)
      abb296(69)=spbe7l6*abb296(69)
      abb296(70)=spak1e7*abb296(140)
      abb296(72)=-spak1k7*spak2e7*abb296(139)
      abb296(70)=abb296(72)+abb296(70)
      abb296(70)=spbk7e7*abb296(70)
      abb296(72)=spbe7l5*abb296(136)
      abb296(53)=-abb296(53)+abb296(72)+abb296(69)+abb296(70)
      abb296(53)=8.0_ki*abb296(53)
      abb296(27)=abb296(27)-abb296(114)
      abb296(23)=-abb296(27)*abb296(23)
      abb296(27)=-abb296(128)+abb296(35)
      abb296(27)=c4*abb296(27)
      abb296(21)=-abb296(60)+abb296(21)
      abb296(21)=c2*abb296(21)
      abb296(21)=abb296(126)+abb296(21)+abb296(27)+abb296(23)
      abb296(21)=16.0_ki*abb296(21)
      abb296(23)=abb296(28)*spbe7l5
      abb296(27)=abb296(23)*spak1e7
      abb296(35)=-16.0_ki*abb296(27)
      abb296(60)=spbe7l5*abb296(156)
      abb296(69)=spak2l6*spbe7l6
      abb296(70)=-spak2k7*spbk7e7
      abb296(69)=abb296(70)+abb296(69)
      abb296(69)=abb296(88)*abb296(69)
      abb296(70)=-spbe7l6*abb296(132)
      abb296(72)=spak1k7*spbk7e7*abb296(94)
      abb296(60)=abb296(72)+abb296(60)+abb296(70)+abb296(69)
      abb296(60)=4.0_ki*abb296(60)
      abb296(27)=-8.0_ki*abb296(27)
      abb296(69)=-8.0_ki*abb296(62)
      abb296(62)=-4.0_ki*abb296(62)
      abb296(66)=abb296(66)*spbe7l5
      abb296(66)=abb296(66)-abb296(63)
      abb296(70)=-8.0_ki*abb296(66)
      abb296(66)=-4.0_ki*abb296(66)
      abb296(63)=4.0_ki*spbk7l6*spae7k7*abb296(63)
      abb296(72)=4.0_ki*abb296(45)
      abb296(74)=-abb296(48)*abb296(72)
      abb296(78)=abb296(109)-abb296(126)
      abb296(78)=abb296(78)*spak4l6
      abb296(15)=abb296(15)-abb296(57)
      abb296(15)=abb296(15)*es12
      abb296(57)=abb296(31)*spak1l6
      abb296(15)=-abb296(57)-abb296(100)+abb296(15)-abb296(78)
      abb296(57)=-abb296(30)*abb296(15)
      abb296(71)=spbl5k2*abb296(71)
      abb296(78)=-abb296(30)*abb296(147)
      abb296(71)=abb296(71)+abb296(78)
      abb296(71)=spak4l5*abb296(71)
      abb296(57)=abb296(71)+abb296(57)
      abb296(57)=4.0_ki*abb296(57)
      abb296(15)=spbk3k2*abb296(15)
      abb296(71)=-spbl5k2*abb296(75)
      abb296(78)=abb296(119)*abb296(148)
      abb296(71)=abb296(71)+abb296(78)
      abb296(71)=spak4l5*abb296(71)
      abb296(78)=-abb296(75)+abb296(151)
      abb296(78)=abb296(78)*abb296(59)
      abb296(15)=abb296(78)+abb296(71)+abb296(15)
      abb296(15)=8.0_ki*abb296(15)
      abb296(71)=abb296(75)*spbe7k2
      abb296(75)=abb296(98)*abb296(115)
      abb296(71)=abb296(71)+abb296(75)
      abb296(71)=abb296(71)*spak4e7
      abb296(75)=abb296(149)*abb296(58)
      abb296(71)=abb296(71)-abb296(75)
      abb296(75)=8.0_ki*abb296(71)
      abb296(71)=-4.0_ki*abb296(71)
      abb296(48)=-abb296(48)*abb296(64)
      abb296(48)=abb296(52)+abb296(48)
      abb296(48)=spbk7k2*abb296(48)
      abb296(52)=-abb296(115)*abb296(49)
      abb296(48)=abb296(48)+abb296(52)
      abb296(48)=4.0_ki*abb296(48)
      abb296(52)=8.0_ki*spbl5k2
      abb296(52)=abb296(115)*abb296(52)
      abb296(30)=abb296(72)*abb296(30)
      abb296(64)=-spak4l5*abb296(30)
      abb296(45)=8.0_ki*abb296(45)
      abb296(78)=abb296(45)*spbk3k2
      abb296(79)=spak4l5*abb296(78)
      abb296(80)=abb296(59)*abb296(45)
      abb296(45)=abb296(45)*abb296(58)
      abb296(72)=abb296(58)*abb296(72)
      abb296(30)=-spak1k4*abb296(30)
      abb296(78)=spak1k4*abb296(78)
      abb296(81)=abb296(16)*abb296(119)
      abb296(12)=-abb296(25)*abb296(12)*abb296(20)
      abb296(20)=abb296(92)*abb296(42)
      abb296(12)=abb296(81)+abb296(20)+abb296(12)
      abb296(19)=abb296(19)*abb296(5)
      abb296(17)=-abb296(24)*abb296(19)*abb296(17)
      abb296(18)=abb296(18)*abb296(19)
      abb296(17)=abb296(18)+abb296(17)
      abb296(18)=-abb296(17)*abb296(56)
      abb296(18)=abb296(18)+abb296(12)
      abb296(19)=-abb296(18)*abb296(40)
      abb296(20)=spbk3k2*abb296(18)
      abb296(24)=abb296(17)*spbl5k3
      abb296(25)=abb296(24)*abb296(59)
      abb296(20)=abb296(25)+abb296(20)
      abb296(20)=8.0_ki*abb296(20)
      abb296(25)=abb296(39)*abb296(24)
      abb296(39)=4.0_ki*abb296(58)*abb296(24)
      abb296(40)=4.0_ki*abb296(17)*abb296(49)
      abb296(49)=8.0_ki*abb296(17)
      abb296(56)=-spbl5k2*abb296(49)
      abb296(12)=-spbe7l6*abb296(112)*abb296(12)
      abb296(58)=-abb296(95)*abb296(106)
      abb296(59)=abb296(17)*abb296(113)
      abb296(58)=abb296(58)+abb296(59)
      abb296(58)=abb296(58)*abb296(54)
      abb296(59)=abb296(95)*abb296(137)
      abb296(17)=abb296(17)*spbe7l6
      abb296(22)=abb296(22)*abb296(17)
      abb296(22)=abb296(59)+abb296(22)
      abb296(22)=spbl5k1*abb296(22)
      abb296(59)=-abb296(84)*abb296(142)
      abb296(42)=abb296(93)*abb296(42)
      abb296(42)=abb296(42)+abb296(59)
      abb296(42)=abb296(42)*abb296(106)
      abb296(16)=abb296(16)*abb296(133)
      abb296(59)=abb296(95)*spak2e7
      abb296(81)=-spbl5k3*abb296(89)*abb296(59)
      abb296(12)=abb296(22)+abb296(81)+abb296(58)+abb296(16)+abb296(42)+abb296(&
      &12)
      abb296(12)=4.0_ki*abb296(12)
      abb296(16)=spbl6k3*abb296(18)
      abb296(18)=spbl5k3*abb296(97)
      abb296(22)=-abb296(24)*abb296(152)
      abb296(16)=abb296(22)+abb296(18)+abb296(16)
      abb296(16)=8.0_ki*abb296(16)
      abb296(18)=abb296(24)*abb296(127)
      abb296(22)=8.0_ki*abb296(18)
      abb296(24)=-abb296(31)+abb296(135)+abb296(121)
      abb296(42)=abb296(106)*abb296(24)
      abb296(58)=spak2e7*abb296(153)
      abb296(81)=-spbl5k1*abb296(28)*abb296(137)
      abb296(42)=abb296(81)+abb296(58)-abb296(18)+abb296(42)
      abb296(42)=8.0_ki*abb296(42)
      abb296(58)=-16.0_ki*spbl5k3*abb296(144)
      abb296(18)=-4.0_ki*abb296(18)
      abb296(31)=-abb296(31)*abb296(112)
      abb296(54)=abb296(125)*abb296(54)
      abb296(81)=spbl5k1*abb296(146)
      abb296(31)=abb296(81)+abb296(122)+abb296(54)+abb296(31)
      abb296(31)=4.0_ki*abb296(31)
      abb296(54)=abb296(150)*spak4e7
      abb296(81)=8.0_ki*abb296(54)
      abb296(54)=-4.0_ki*abb296(54)
      abb296(17)=abb296(67)*abb296(17)
      abb296(59)=-spbe7l5*abb296(59)
      abb296(17)=abb296(59)+abb296(17)
      abb296(17)=4.0_ki*abb296(17)
      abb296(49)=-spbl6l5*abb296(49)
      abb296(23)=8.0_ki*abb296(23)
      abb296(23)=spak2e7*abb296(23)
      abb296(59)=4.0_ki*abb296(28)*abb296(67)
      abb296(67)=-8.0_ki*spak4k7*abb296(150)
      abb296(28)=8.0_ki*abb296(28)
      abb296(24)=-abb296(55)+abb296(24)
      abb296(24)=8.0_ki*abb296(24)
      R2d296=0.0_ki
      rat2 = rat2 + R2d296
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='296' value='", &
          & R2d296, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd296h3
