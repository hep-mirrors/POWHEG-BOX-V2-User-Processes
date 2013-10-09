module     p1_dbarc_epnebbbarg_abbrevd69h2
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(161), public :: abb69
   complex(ki), public :: R2d69
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
      abb69(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb69(2)=es56**(-1)
      abb69(3)=spak2l5**(-1)
      abb69(4)=spbl5k2**(-1)
      abb69(5)=spak2l6**(-1)
      abb69(6)=spbl6k2**(-1)
      abb69(7)=c2-c4
      abb69(8)=NC*c1
      abb69(8)=abb69(7)+abb69(8)
      abb69(9)=TR*gW
      abb69(9)=abb69(9)**2
      abb69(10)=abb69(9)*abb69(1)
      abb69(11)=i_*CVDC
      abb69(12)=abb69(11)*abb69(2)*abb69(10)
      abb69(13)=abb69(8)*abb69(12)*spbk3k2
      abb69(14)=spal5e7*spbe7l6
      abb69(15)=-abb69(13)*abb69(14)
      abb69(16)=spbl6k2*spak2k4
      abb69(17)=abb69(15)*abb69(16)
      abb69(18)=-abb69(13)*spak3k4
      abb69(19)=abb69(18)*abb69(14)
      abb69(20)=abb69(19)*spbl6k3
      abb69(17)=abb69(17)-abb69(20)
      abb69(20)=abb69(17)*spak1l6
      abb69(21)=spbk7k3*spak1k7
      abb69(22)=abb69(19)*abb69(21)
      abb69(23)=abb69(19)*spak1l5
      abb69(24)=abb69(23)*spbl5k3
      abb69(25)=abb69(8)*abb69(12)
      abb69(26)=spbk3k2**2
      abb69(27)=-abb69(25)*abb69(26)
      abb69(28)=mB**2
      abb69(29)=abb69(28)*abb69(4)
      abb69(30)=-abb69(29)*abb69(27)
      abb69(31)=spak3k4*spak1k2
      abb69(32)=abb69(31)*abb69(14)
      abb69(33)=abb69(30)*abb69(32)
      abb69(34)=abb69(33)*abb69(3)
      abb69(28)=abb69(28)*abb69(5)
      abb69(35)=-abb69(28)*abb69(27)
      abb69(36)=abb69(35)*abb69(32)
      abb69(37)=abb69(36)*abb69(6)
      abb69(20)=abb69(34)-abb69(22)+abb69(24)+abb69(37)-abb69(20)
      abb69(22)=abb69(16)*spak1l5
      abb69(24)=-abb69(22)*abb69(13)
      abb69(34)=spbl6k3*spak1l5
      abb69(37)=abb69(18)*abb69(34)
      abb69(38)=abb69(24)-abb69(37)
      abb69(39)=abb69(28)*abb69(4)
      abb69(12)=-abb69(12)*abb69(8)*abb69(39)
      abb69(26)=abb69(31)*abb69(26)
      abb69(40)=-abb69(12)*abb69(26)
      abb69(41)=abb69(38)+abb69(40)
      abb69(42)=2.0_ki*spbe7l5
      abb69(43)=-abb69(42)*spal5e7*abb69(41)
      abb69(44)=2.0_ki*spal6e7
      abb69(45)=-abb69(44)*spbe7l6*abb69(41)
      abb69(43)=abb69(43)+abb69(45)
      abb69(45)=-abb69(43)+abb69(20)
      abb69(46)=es712-es71
      abb69(47)=abb69(46)-es12
      abb69(45)=-abb69(47)*abb69(45)
      abb69(39)=abb69(39)*abb69(13)
      abb69(48)=spak2k4*spbe7k2
      abb69(49)=abb69(39)*abb69(48)
      abb69(50)=spbe7k3*spak3k4
      abb69(51)=abb69(39)*abb69(50)
      abb69(49)=abb69(49)-abb69(51)
      abb69(52)=2.0_ki*spak1e7
      abb69(53)=abb69(49)*abb69(52)
      abb69(54)=es71*abb69(53)
      abb69(49)=abb69(49)*spak1e7
      abb69(55)=-es712*abb69(49)
      abb69(54)=abb69(54)+abb69(55)
      abb69(54)=es712*abb69(54)
      abb69(55)=es71**2
      abb69(56)=-abb69(55)*abb69(49)
      abb69(57)=2.0_ki*abb69(46)-es12
      abb69(57)=es12*abb69(49)*abb69(57)
      abb69(58)=abb69(50)-abb69(48)
      abb69(58)=-abb69(13)*abb69(58)
      abb69(59)=abb69(58)*spak1e7
      abb69(60)=-abb69(47)*abb69(59)
      abb69(61)=spal5k7*spbk7l6
      abb69(62)=abb69(60)*abb69(61)
      abb69(54)=abb69(62)+abb69(57)+abb69(56)+abb69(54)
      abb69(56)=-abb69(47)*abb69(15)
      abb69(57)=spak2k4*spak1l5
      abb69(62)=abb69(57)*spbl5k2
      abb69(63)=spak1k7*spbk7k2
      abb69(64)=abb69(63)*spak2k4
      abb69(65)=abb69(62)-abb69(64)
      abb69(66)=-abb69(56)*abb69(65)
      abb69(45)=2.0_ki*abb69(54)+abb69(45)+abb69(66)
      abb69(45)=2.0_ki*abb69(45)
      abb69(54)=abb69(18)*spbl6k3
      abb69(66)=-abb69(13)*abb69(16)
      abb69(54)=abb69(54)-abb69(66)
      abb69(67)=abb69(54)*spak1l6
      abb69(68)=spbl6k2*abb69(67)
      abb69(24)=-2.0_ki*abb69(37)+abb69(24)
      abb69(24)=spbl5k2*abb69(24)
      abb69(37)=-spbl6k2*abb69(21)
      abb69(69)=spbl6k2*spak1l5
      abb69(70)=spbl5k3*abb69(69)
      abb69(37)=abb69(70)+abb69(37)
      abb69(37)=abb69(18)*abb69(37)
      abb69(70)=3.0_ki*abb69(31)
      abb69(71)=abb69(35)*abb69(70)
      abb69(72)=abb69(63)*abb69(66)
      abb69(24)=abb69(24)+abb69(68)+abb69(71)+abb69(72)+abb69(37)
      abb69(37)=2.0_ki*spak2l5
      abb69(24)=abb69(24)*abb69(37)
      abb69(68)=abb69(4)*spbk3k2
      abb69(71)=mB**4
      abb69(72)=abb69(71)*abb69(5)
      abb69(73)=abb69(25)*abb69(72)*abb69(68)**2
      abb69(74)=abb69(73)*abb69(47)
      abb69(75)=abb69(30)*abb69(61)
      abb69(74)=abb69(75)+abb69(74)
      abb69(74)=abb69(3)*abb69(74)
      abb69(71)=abb69(71)*abb69(5)**2
      abb69(75)=abb69(71)*abb69(4)
      abb69(76)=-abb69(75)*abb69(27)
      abb69(77)=abb69(76)*abb69(47)
      abb69(78)=abb69(35)*abb69(61)
      abb69(77)=abb69(78)+abb69(77)
      abb69(77)=abb69(6)*abb69(77)
      abb69(27)=4.0_ki*abb69(27)
      abb69(78)=-abb69(61)*abb69(27)
      abb69(74)=abb69(77)+abb69(74)+abb69(78)
      abb69(74)=abb69(31)*abb69(74)
      abb69(77)=abb69(39)*abb69(16)
      abb69(78)=abb69(39)*spak3k4
      abb69(79)=abb69(78)*spbl6k3
      abb69(77)=abb69(77)-abb69(79)
      abb69(79)=abb69(77)*abb69(47)
      abb69(54)=abb69(54)*abb69(61)
      abb69(54)=abb69(54)+abb69(79)
      abb69(54)=spak1l6*abb69(54)
      abb69(79)=abb69(18)*abb69(61)
      abb69(80)=-abb69(47)*abb69(78)
      abb69(79)=abb69(79)+abb69(80)
      abb69(80)=spbl5k3*spak1l5
      abb69(81)=abb69(80)+abb69(21)
      abb69(82)=abb69(79)*abb69(81)
      abb69(83)=abb69(28)*abb69(13)
      abb69(84)=abb69(83)*abb69(57)
      abb69(85)=abb69(84)+4.0_ki*abb69(40)
      abb69(85)=abb69(85)*abb69(47)
      abb69(9)=abb69(9)*abb69(28)*abb69(11)*abb69(1)
      abb69(86)=abb69(8)*abb69(4)*abb69(9)
      abb69(26)=-abb69(86)*abb69(26)
      abb69(70)=abb69(30)*abb69(70)
      abb69(7)=abb69(10)*abb69(7)
      abb69(10)=NC*c1*abb69(10)
      abb69(7)=abb69(10)+abb69(7)
      abb69(10)=abb69(7)*abb69(11)*spbk3k2
      abb69(87)=abb69(10)*abb69(57)
      abb69(70)=abb69(70)+abb69(87)
      abb69(70)=spbl6k2*abb69(70)
      abb69(87)=abb69(34)*spak3k4
      abb69(10)=-abb69(10)*abb69(87)
      abb69(10)=abb69(70)+abb69(26)+abb69(10)
      abb69(26)=-abb69(13)*abb69(61)
      abb69(70)=abb69(26)*spak2k4
      abb69(88)=abb69(39)*spak2k4
      abb69(89)=-abb69(47)*abb69(88)
      abb69(70)=abb69(70)+abb69(89)
      abb69(89)=-abb69(70)*abb69(63)
      abb69(90)=2.0_ki*es567
      abb69(91)=abb69(41)*abb69(90)
      abb69(92)=4.0_ki*spbl6k2
      abb69(93)=spak2l6*abb69(38)*abb69(92)
      abb69(94)=-abb69(62)*abb69(26)
      abb69(10)=abb69(93)+abb69(91)+abb69(24)+abb69(94)+abb69(54)+abb69(89)+2.0&
      &_ki*abb69(10)+abb69(85)+abb69(74)+abb69(82)
      abb69(10)=2.0_ki*abb69(10)
      abb69(24)=-abb69(15)*abb69(65)
      abb69(24)=abb69(24)-abb69(43)
      abb69(43)=-abb69(49)*abb69(47)
      abb69(54)=-abb69(61)*abb69(59)
      abb69(43)=abb69(54)+abb69(43)
      abb69(20)=2.0_ki*abb69(43)-abb69(24)-abb69(20)
      abb69(20)=4.0_ki*abb69(20)
      abb69(43)=8.0_ki*abb69(41)
      abb69(54)=spak1k4*abb69(15)
      abb69(65)=-abb69(47)*abb69(54)
      abb69(65)=4.0_ki*abb69(65)
      abb69(74)=abb69(39)*spak1k4
      abb69(46)=-abb69(74)*abb69(46)
      abb69(82)=abb69(74)*es12
      abb69(85)=-abb69(13)*spak1k4
      abb69(89)=abb69(85)*abb69(61)
      abb69(46)=abb69(46)+abb69(82)+abb69(89)
      abb69(82)=abb69(37)*spbl6k2
      abb69(89)=abb69(82)*abb69(85)
      abb69(91)=abb69(89)+3.0_ki*abb69(46)
      abb69(91)=4.0_ki*abb69(91)
      abb69(93)=8.0_ki*abb69(54)
      abb69(94)=abb69(12)*spbe7k3
      abb69(95)=abb69(94)*abb69(52)
      abb69(96)=-abb69(95)*abb69(47)
      abb69(97)=abb69(15)*spak1k2
      abb69(98)=-abb69(25)*abb69(61)
      abb69(99)=abb69(98)*spbe7k3
      abb69(100)=abb69(52)*abb69(99)
      abb69(96)=abb69(97)-abb69(100)+abb69(96)
      abb69(97)=abb69(39)*spak1k2
      abb69(100)=abb69(97)*spal5e7
      abb69(101)=-abb69(34)*abb69(25)
      abb69(102)=abb69(101)*spal5e7
      abb69(100)=abb69(100)-abb69(102)
      abb69(103)=abb69(100)*abb69(42)
      abb69(104)=abb69(97)*spbe7l6
      abb69(105)=abb69(101)*spbe7l6
      abb69(104)=abb69(104)-abb69(105)
      abb69(106)=abb69(104)*abb69(44)
      abb69(107)=-abb69(25)*abb69(14)
      abb69(108)=abb69(107)*spak1l5
      abb69(109)=abb69(108)*spbl5k3
      abb69(103)=abb69(103)+abb69(106)+abb69(109)-abb69(96)
      abb69(106)=abb69(103)*spbk7k2
      abb69(109)=abb69(83)*abb69(6)
      abb69(110)=abb69(29)*abb69(13)
      abb69(111)=abb69(110)*abb69(3)
      abb69(112)=abb69(109)+abb69(111)
      abb69(14)=abb69(14)*spak1k2
      abb69(113)=abb69(14)*spbk7k2
      abb69(114)=abb69(112)*abb69(113)
      abb69(115)=abb69(107)*spbk7k2
      abb69(116)=abb69(115)*abb69(21)
      abb69(117)=spak1l6*spbl6k3
      abb69(118)=abb69(115)*abb69(117)
      abb69(106)=abb69(106)-abb69(116)+abb69(114)+abb69(118)
      abb69(114)=2.0_ki*spak4k7
      abb69(106)=abb69(106)*abb69(114)
      abb69(114)=abb69(61)*spak4e7
      abb69(116)=spak1k2*spbe7k2
      abb69(119)=abb69(114)*abb69(116)
      abb69(120)=abb69(119)*abb69(83)
      abb69(71)=abb69(25)*abb69(71)*abb69(68)
      abb69(121)=abb69(71)*abb69(116)
      abb69(122)=-abb69(47)*spak4e7
      abb69(123)=abb69(121)*abb69(122)
      abb69(36)=-abb69(36)+abb69(120)-abb69(123)
      abb69(36)=abb69(36)*abb69(6)
      abb69(120)=abb69(12)*es12
      abb69(123)=abb69(12)*es712
      abb69(124)=abb69(120)-abb69(123)
      abb69(124)=-spbe7k2*abb69(124)
      abb69(125)=abb69(12)*es71
      abb69(126)=abb69(125)*spbe7k2
      abb69(124)=abb69(124)-abb69(126)
      abb69(124)=abb69(124)*spak4e7
      abb69(127)=spak1l5*abb69(124)
      abb69(128)=-abb69(25)*spak1l5
      abb69(129)=abb69(114)*spbe7k2
      abb69(130)=abb69(129)*abb69(128)
      abb69(23)=-abb69(23)+abb69(127)+abb69(130)
      abb69(23)=abb69(23)*spbl5k3
      abb69(127)=-abb69(25)*spbe7k2
      abb69(114)=abb69(114)*abb69(127)
      abb69(114)=abb69(124)+abb69(114)
      abb69(124)=spbl6k3*abb69(114)
      abb69(17)=abb69(17)+abb69(124)
      abb69(17)=abb69(17)*spak1l6
      abb69(72)=abb69(72)*abb69(4)**2
      abb69(124)=abb69(72)*abb69(13)
      abb69(130)=abb69(124)*abb69(116)
      abb69(131)=abb69(130)*abb69(122)
      abb69(119)=abb69(119)*abb69(110)
      abb69(33)=abb69(33)+abb69(131)-abb69(119)
      abb69(33)=abb69(33)*abb69(3)
      abb69(8)=-abb69(8)*abb69(9)*abb69(68)
      abb69(9)=abb69(8)*abb69(116)
      abb69(7)=abb69(11)*abb69(7)
      abb69(11)=abb69(34)*spbe7k2
      abb69(68)=abb69(11)*abb69(7)
      abb69(9)=abb69(68)-abb69(9)
      abb69(68)=abb69(39)*abb69(116)
      abb69(119)=3.0_ki*abb69(68)
      abb69(131)=-abb69(47)*abb69(119)
      abb69(9)=abb69(131)+2.0_ki*abb69(9)
      abb69(9)=abb69(9)*spak4e7
      abb69(131)=-abb69(25)*spak1k4
      abb69(129)=abb69(129)*abb69(131)
      abb69(132)=abb69(12)*spak1k4
      abb69(133)=abb69(132)*spbe7k2
      abb69(122)=abb69(133)*abb69(122)
      abb69(122)=abb69(129)-abb69(122)
      abb69(129)=abb69(107)*spak1k4
      abb69(134)=spak4k7*spbk7k2
      abb69(135)=abb69(134)*abb69(129)
      abb69(122)=-2.0_ki*abb69(135)+3.0_ki*abb69(122)
      abb69(122)=abb69(122)*spbk4k3
      abb69(19)=abb69(19)+abb69(114)
      abb69(19)=abb69(19)*abb69(21)
      abb69(114)=abb69(116)*spak4e7
      abb69(135)=-abb69(114)*abb69(13)
      abb69(58)=abb69(58)*abb69(52)
      abb69(136)=abb69(58)+3.0_ki*abb69(135)
      abb69(136)=abb69(136)*abb69(61)
      abb69(34)=abb69(127)*abb69(34)
      abb69(137)=abb69(34)-abb69(68)
      abb69(137)=abb69(137)*spak4e7
      abb69(138)=abb69(90)*abb69(137)
      abb69(9)=abb69(106)-abb69(23)-abb69(17)+abb69(33)+abb69(9)-abb69(36)-abb6&
      &9(19)+abb69(136)+abb69(122)+abb69(138)+abb69(24)
      abb69(17)=-abb69(54)+3.0_ki*abb69(49)
      abb69(17)=-abb69(17)*abb69(47)
      abb69(17)=2.0_ki*abb69(17)-abb69(9)
      abb69(17)=2.0_ki*abb69(17)
      abb69(19)=abb69(111)+abb69(13)
      abb69(23)=spbl6k2*spak1k2
      abb69(19)=abb69(19)*abb69(23)
      abb69(24)=-abb69(25)*spbl6k2
      abb69(33)=abb69(117)-abb69(21)
      abb69(33)=abb69(33)*abb69(24)
      abb69(36)=-abb69(69)*abb69(25)
      abb69(106)=abb69(36)*spbl5k3
      abb69(122)=abb69(131)*spbk4k3
      abb69(136)=abb69(122)*spbl6k2
      abb69(138)=abb69(101)*spbl5k2
      abb69(139)=3.0_ki*spak1k2
      abb69(140)=abb69(139)*abb69(83)
      abb69(19)=-abb69(19)-abb69(33)-abb69(106)+2.0_ki*abb69(138)+abb69(136)-ab&
      &b69(140)
      abb69(33)=2.0_ki*spak4l5
      abb69(19)=abb69(19)*abb69(33)
      abb69(33)=abb69(97)-abb69(101)
      abb69(92)=spak4l6*abb69(33)*abb69(92)
      abb69(19)=abb69(19)-abb69(92)-abb69(89)
      abb69(40)=abb69(40)-abb69(84)
      abb69(77)=-spak1l6*abb69(77)
      abb69(84)=2.0_ki*abb69(87)
      abb69(87)=-2.0_ki*abb69(22)+abb69(84)
      abb69(87)=abb69(110)*abb69(87)
      abb69(73)=abb69(73)*abb69(31)
      abb69(73)=abb69(73)+abb69(87)
      abb69(73)=abb69(3)*abb69(73)
      abb69(76)=abb69(76)*abb69(31)
      abb69(84)=abb69(83)*abb69(84)
      abb69(76)=abb69(76)+abb69(84)
      abb69(76)=abb69(6)*abb69(76)
      abb69(84)=3.0_ki*abb69(21)
      abb69(87)=abb69(80)-abb69(84)
      abb69(87)=abb69(78)*abb69(87)
      abb69(89)=3.0_ki*abb69(64)
      abb69(92)=abb69(39)*abb69(89)
      abb69(38)=abb69(76)+abb69(73)+abb69(77)+abb69(92)+3.0_ki*abb69(40)-abb69(&
      &38)+abb69(87)+abb69(19)-7.0_ki*abb69(46)
      abb69(38)=4.0_ki*abb69(38)
      abb69(40)=abb69(53)-abb69(54)
      abb69(53)=-8.0_ki*abb69(40)
      abb69(73)=8.0_ki*abb69(137)
      abb69(76)=4.0_ki*abb69(54)
      abb69(77)=8.0_ki*abb69(74)
      abb69(28)=abb69(28)*abb69(25)
      abb69(11)=2.0_ki*abb69(11)
      abb69(87)=abb69(11)*abb69(28)
      abb69(87)=abb69(87)+abb69(121)
      abb69(87)=abb69(87)*abb69(6)
      abb69(29)=abb69(29)*abb69(25)
      abb69(11)=abb69(11)*abb69(29)
      abb69(11)=abb69(11)+abb69(130)
      abb69(11)=abb69(11)*abb69(3)
      abb69(92)=abb69(84)-abb69(117)
      abb69(80)=abb69(92)-abb69(80)
      abb69(80)=abb69(80)*abb69(12)*spbe7k2
      abb69(106)=abb69(133)*spbk4k3
      abb69(11)=abb69(80)-abb69(106)+abb69(87)+abb69(11)
      abb69(80)=abb69(68)+abb69(11)
      abb69(80)=spak4e7*abb69(80)
      abb69(87)=spak1e7*abb69(94)
      abb69(106)=4.0_ki*abb69(134)
      abb69(121)=abb69(106)*abb69(87)
      abb69(40)=-abb69(121)+abb69(80)-abb69(40)
      abb69(40)=4.0_ki*abb69(40)
      abb69(80)=40.0_ki*abb69(74)
      abb69(49)=abb69(49)-abb69(54)
      abb69(130)=abb69(49)*abb69(47)
      abb69(9)=2.0_ki*abb69(130)+abb69(9)
      abb69(19)=-abb69(41)-abb69(46)-abb69(19)
      abb69(19)=2.0_ki*abb69(19)
      abb69(41)=4.0_ki*abb69(137)
      abb69(46)=2.0_ki*abb69(54)
      abb69(11)=-abb69(11)-abb69(119)+2.0_ki*abb69(34)
      abb69(11)=spak4e7*abb69(11)
      abb69(11)=abb69(121)+2.0_ki*abb69(49)+abb69(11)
      abb69(11)=2.0_ki*abb69(11)
      abb69(34)=12.0_ki*abb69(74)
      abb69(49)=abb69(54)-2.0_ki*abb69(137)
      abb69(51)=abb69(51)*spak1k2
      abb69(54)=abb69(128)*abb69(16)
      abb69(74)=abb69(54)*spbe7k3
      abb69(121)=abb69(48)+abb69(50)
      abb69(130)=abb69(128)*abb69(121)
      abb69(133)=abb69(130)*spbl6k3
      abb69(68)=abb69(68)*spak2k4
      abb69(51)=abb69(68)-abb69(133)+abb69(51)+abb69(74)
      abb69(74)=abb69(51)*abb69(90)
      abb69(133)=abb69(12)*abb69(50)
      abb69(134)=abb69(12)*abb69(48)
      abb69(136)=abb69(133)+abb69(134)
      abb69(137)=abb69(136)*spbl6k3
      abb69(141)=abb69(94)*abb69(16)
      abb69(137)=abb69(141)-abb69(137)
      abb69(141)=-abb69(137)*abb69(47)
      abb69(142)=-abb69(25)*abb69(50)
      abb69(143)=-abb69(25)*abb69(48)
      abb69(144)=abb69(142)+abb69(143)
      abb69(145)=abb69(144)*spbl6k3
      abb69(146)=-abb69(25)*spbe7k3
      abb69(147)=abb69(146)*abb69(16)
      abb69(145)=abb69(147)-abb69(145)
      abb69(147)=-abb69(145)*abb69(61)
      abb69(141)=abb69(147)+abb69(141)
      abb69(141)=spak1l6*abb69(141)
      abb69(147)=abb69(136)*abb69(47)
      abb69(148)=abb69(144)*abb69(61)
      abb69(147)=abb69(148)+abb69(147)
      abb69(147)=abb69(147)*abb69(21)
      abb69(148)=-abb69(47)*abb69(132)
      abb69(149)=abb69(131)*abb69(61)
      abb69(148)=abb69(148)-abb69(149)
      abb69(150)=abb69(48)*spbk4k3
      abb69(151)=abb69(148)*abb69(150)
      abb69(152)=abb69(116)*spak2k4
      abb69(153)=abb69(152)*abb69(26)
      abb69(151)=abb69(153)-abb69(151)
      abb69(119)=abb69(119)*spak2k4
      abb69(153)=spbe7k3*abb69(28)*abb69(57)
      abb69(119)=abb69(119)+abb69(153)
      abb69(119)=abb69(119)*abb69(47)
      abb69(154)=abb69(50)*spak1k2
      abb69(154)=abb69(154)+abb69(152)
      abb69(8)=abb69(8)*abb69(154)
      abb69(155)=abb69(7)*spak1l5
      abb69(156)=-spbl6k3*abb69(155)*abb69(121)
      abb69(157)=spbe7k3*abb69(7)*abb69(22)
      abb69(8)=abb69(157)+abb69(156)+abb69(8)
      abb69(156)=-abb69(47)*abb69(94)
      abb69(156)=abb69(156)-abb69(99)
      abb69(157)=abb69(156)*abb69(64)
      abb69(124)=abb69(124)*abb69(154)
      abb69(158)=abb69(124)*abb69(47)
      abb69(110)=abb69(154)*abb69(110)
      abb69(159)=abb69(110)*abb69(61)
      abb69(158)=abb69(159)+abb69(158)
      abb69(158)=abb69(3)*abb69(158)
      abb69(71)=abb69(71)*abb69(154)
      abb69(159)=abb69(71)*abb69(47)
      abb69(83)=abb69(154)*abb69(83)
      abb69(154)=abb69(83)*abb69(61)
      abb69(154)=abb69(154)+abb69(159)
      abb69(154)=abb69(6)*abb69(154)
      abb69(159)=abb69(134)*spak1l5
      abb69(160)=abb69(12)*spak1l5
      abb69(50)=abb69(160)*abb69(50)
      abb69(50)=abb69(159)+abb69(50)
      abb69(159)=abb69(50)*abb69(47)
      abb69(161)=abb69(130)*abb69(61)
      abb69(159)=abb69(161)+abb69(159)
      abb69(159)=spbl5k3*abb69(159)
      abb69(99)=-abb69(62)*abb69(99)
      abb69(8)=abb69(74)+abb69(99)+abb69(159)+abb69(154)+abb69(158)+abb69(147)+&
      &abb69(141)+abb69(157)+2.0_ki*abb69(8)+abb69(119)-3.0_ki*abb69(151)
      abb69(74)=4.0_ki*abb69(51)
      abb69(99)=abb69(94)*spak1k4
      abb69(119)=-abb69(47)*abb69(99)
      abb69(141)=abb69(149)*spbe7k3
      abb69(119)=abb69(119)-abb69(141)
      abb69(119)=6.0_ki*abb69(119)
      abb69(147)=abb69(29)*spak1l5
      abb69(149)=2.0_ki*spbl6k3
      abb69(121)=abb69(149)*abb69(121)
      abb69(149)=abb69(147)*abb69(121)
      abb69(151)=2.0_ki*spbe7k3
      abb69(22)=-abb69(29)*abb69(22)*abb69(151)
      abb69(22)=abb69(22)+abb69(149)+abb69(124)
      abb69(22)=abb69(3)*abb69(22)
      abb69(124)=3.0_ki*abb69(99)
      abb69(124)=-abb69(47)*abb69(124)
      abb69(124)=-abb69(124)+3.0_ki*abb69(141)
      abb69(137)=spak1l6*abb69(137)
      abb69(136)=abb69(136)*abb69(84)
      abb69(141)=abb69(28)*spak1l5
      abb69(121)=abb69(141)*abb69(121)
      abb69(71)=abb69(121)+abb69(71)
      abb69(71)=abb69(6)*abb69(71)
      abb69(50)=-spbl5k3*abb69(50)
      abb69(121)=-abb69(94)*abb69(89)
      abb69(149)=-abb69(132)*abb69(150)
      abb69(22)=abb69(149)+abb69(50)+abb69(71)+abb69(22)+abb69(136)+abb69(137)+&
      &abb69(121)+abb69(68)-3.0_ki*abb69(153)-abb69(124)
      abb69(22)=2.0_ki*abb69(22)
      abb69(50)=4.0_ki*abb69(99)
      abb69(51)=-2.0_ki*abb69(51)+abb69(124)
      abb69(68)=abb69(151)*abb69(132)
      abb69(71)=abb69(133)-abb69(134)
      abb69(99)=-abb69(71)*abb69(47)
      abb69(121)=abb69(142)-abb69(143)
      abb69(124)=-abb69(121)*abb69(61)
      abb69(99)=abb69(124)+abb69(99)
      abb69(99)=spak1e7*abb69(99)
      abb69(124)=abb69(107)*spak1l6
      abb69(133)=-spbl6k3*spak3k4
      abb69(133)=abb69(133)+abb69(16)
      abb69(133)=abb69(133)*abb69(124)
      abb69(134)=abb69(21)*abb69(107)
      abb69(136)=spak3k4*abb69(134)
      abb69(137)=abb69(107)*abb69(62)
      abb69(99)=abb69(137)+abb69(136)+2.0_ki*abb69(99)+abb69(133)
      abb69(99)=spbk7k3*abb69(99)
      abb69(133)=abb69(129)*spbk4k3
      abb69(96)=abb69(133)+abb69(96)
      abb69(136)=spbk7k2*spak2k4
      abb69(96)=abb69(136)*abb69(96)
      abb69(100)=-abb69(100)*abb69(136)
      abb69(137)=abb69(39)*abb69(31)
      abb69(142)=abb69(137)+abb69(54)
      abb69(143)=-spal5e7*abb69(142)
      abb69(102)=spak3k4*abb69(102)
      abb69(102)=abb69(102)+abb69(143)
      abb69(102)=spbk7k3*abb69(102)
      abb69(100)=abb69(100)+abb69(102)
      abb69(100)=abb69(100)*abb69(42)
      abb69(102)=-abb69(104)*abb69(136)
      abb69(104)=-spbe7l6*abb69(142)
      abb69(105)=spak3k4*abb69(105)
      abb69(104)=abb69(105)+abb69(104)
      abb69(104)=spbk7k3*abb69(104)
      abb69(102)=abb69(102)+abb69(104)
      abb69(102)=abb69(102)*abb69(44)
      abb69(32)=abb69(32)*spbk7k3
      abb69(104)=abb69(113)*spak2k4
      abb69(32)=abb69(32)+abb69(104)
      abb69(32)=-abb69(32)*abb69(112)
      abb69(57)=-abb69(57)*abb69(115)
      abb69(104)=-spbk7k3*spak3k4*abb69(108)
      abb69(57)=abb69(57)+abb69(104)
      abb69(57)=spbl5k3*abb69(57)
      abb69(104)=-spak2k4*abb69(118)
      abb69(32)=abb69(102)+abb69(100)+abb69(57)+abb69(104)+abb69(99)+abb69(96)+&
      &abb69(32)
      abb69(32)=2.0_ki*abb69(32)
      abb69(57)=abb69(129)*spbk7k3
      abb69(96)=4.0_ki*abb69(57)
      abb69(71)=-abb69(71)*abb69(52)
      abb69(71)=abb69(71)+abb69(129)
      abb69(71)=spbk7k3*abb69(71)
      abb69(95)=-abb69(95)*abb69(136)
      abb69(71)=abb69(95)+abb69(71)
      abb69(71)=4.0_ki*abb69(71)
      abb69(57)=-2.0_ki*abb69(57)
      abb69(95)=abb69(101)*spak3k4
      abb69(99)=-abb69(137)+abb69(95)
      abb69(99)=spbl6k3*abb69(99)
      abb69(100)=-abb69(16)*abb69(97)
      abb69(99)=abb69(99)+abb69(100)
      abb69(99)=8.0_ki*abb69(99)
      abb69(60)=-4.0_ki*abb69(60)
      abb69(30)=-abb69(3)*abb69(30)
      abb69(35)=-abb69(6)*abb69(35)
      abb69(27)=abb69(35)+abb69(30)+abb69(27)
      abb69(27)=abb69(31)*abb69(27)
      abb69(30)=abb69(62)+abb69(64)
      abb69(30)=-abb69(13)*abb69(30)
      abb69(35)=-abb69(18)*abb69(81)
      abb69(27)=-abb69(67)+abb69(27)+abb69(35)+abb69(30)
      abb69(27)=2.0_ki*abb69(27)
      abb69(30)=8.0_ki*abb69(59)
      abb69(35)=12.0_ki*abb69(85)
      abb69(59)=abb69(128)*spbl5k3
      abb69(59)=abb69(59)+abb69(122)
      abb69(59)=abb69(59)*spbe7k2
      abb69(67)=abb69(92)*abb69(127)
      abb69(59)=abb69(59)-abb69(67)
      abb69(59)=abb69(59)*spak4e7
      abb69(67)=abb69(112)*abb69(114)
      abb69(81)=abb69(146)*spak1e7
      abb69(92)=abb69(106)*abb69(81)
      abb69(58)=abb69(59)+abb69(58)+abb69(92)+abb69(67)+abb69(135)
      abb69(59)=2.0_ki*abb69(58)
      abb69(67)=28.0_ki*abb69(85)
      abb69(85)=2.0_ki*abb69(85)
      abb69(92)=-spak1l6*abb69(145)
      abb69(84)=-abb69(144)*abb69(84)
      abb69(62)=-abb69(62)+abb69(89)
      abb69(62)=abb69(146)*abb69(62)
      abb69(89)=-abb69(13)*abb69(152)
      abb69(100)=abb69(3)*abb69(110)
      abb69(83)=abb69(6)*abb69(83)
      abb69(102)=spbl5k3*abb69(130)
      abb69(48)=abb69(48)*abb69(122)
      abb69(48)=abb69(48)+abb69(102)+abb69(83)+abb69(100)+abb69(84)+abb69(92)+a&
      &bb69(89)+abb69(62)
      abb69(62)=abb69(151)*abb69(131)
      abb69(83)=-spbe7k3*abb69(131)
      abb69(84)=spbk7k3*spak1e7*abb69(121)
      abb69(89)=abb69(81)*abb69(136)
      abb69(84)=abb69(89)+abb69(84)
      abb69(84)=4.0_ki*abb69(84)
      abb69(54)=-3.0_ki*abb69(54)-2.0_ki*abb69(137)+abb69(95)
      abb69(54)=spbl5k3*abb69(54)
      abb69(89)=3.0_ki*abb69(138)-abb69(140)
      abb69(89)=spak2k4*abb69(89)
      abb69(92)=-abb69(25)*spbl6k3
      abb69(95)=spak3k4*abb69(92)
      abb69(100)=-abb69(25)*abb69(16)
      abb69(95)=abb69(95)+abb69(100)
      abb69(21)=abb69(95)*abb69(21)
      abb69(66)=spak1k2*abb69(66)
      abb69(64)=-abb69(64)*abb69(92)
      abb69(95)=-abb69(25)*spak1l6
      abb69(100)=-spak3k4*spbl6k3**2*abb69(95)
      abb69(31)=abb69(31)*spbl6k3
      abb69(102)=-spak1k2*abb69(16)
      abb69(102)=-abb69(31)+abb69(102)
      abb69(102)=abb69(102)*abb69(111)
      abb69(31)=-abb69(109)*abb69(31)
      abb69(16)=abb69(16)*abb69(122)
      abb69(16)=abb69(16)+abb69(54)+abb69(31)+abb69(102)+abb69(21)+abb69(100)+a&
      &bb69(64)+abb69(66)+abb69(89)
      abb69(16)=4.0_ki*abb69(16)
      abb69(21)=abb69(131)*spbl6k3
      abb69(31)=8.0_ki*abb69(21)
      abb69(21)=-4.0_ki*abb69(21)
      abb69(54)=abb69(63)*abb69(107)
      abb69(64)=abb69(129)*spbk4k2
      abb69(66)=abb69(108)*spbl5k2
      abb69(89)=abb69(42)*abb69(36)*spal5e7
      abb69(100)=abb69(44)*abb69(36)*spbe7l6
      abb69(102)=abb69(124)*spbl6k2
      abb69(54)=abb69(89)-abb69(66)+abb69(54)+abb69(64)+abb69(100)-abb69(102)
      abb69(64)=abb69(47)*abb69(54)
      abb69(66)=spak1e7*spbe7k2
      abb69(89)=abb69(123)*abb69(66)
      abb69(100)=abb69(52)*abb69(126)
      abb69(100)=abb69(100)-abb69(89)
      abb69(100)=es712*abb69(100)
      abb69(102)=abb69(125)*abb69(66)
      abb69(89)=abb69(102)-abb69(89)
      abb69(102)=abb69(120)*abb69(66)
      abb69(104)=-2.0_ki*abb69(89)-abb69(102)
      abb69(104)=es12*abb69(104)
      abb69(66)=abb69(66)*abb69(12)
      abb69(55)=-abb69(55)*abb69(66)
      abb69(105)=abb69(127)*spak1e7
      abb69(106)=-abb69(47)*abb69(105)
      abb69(109)=abb69(106)*abb69(61)
      abb69(55)=abb69(109)+abb69(104)+abb69(55)+abb69(100)
      abb69(56)=-spak1k3*abb69(56)
      abb69(55)=abb69(56)+2.0_ki*abb69(55)+abb69(64)
      abb69(55)=2.0_ki*abb69(55)
      abb69(56)=-abb69(63)*abb69(24)
      abb69(64)=spbl6k2**2
      abb69(95)=abb69(64)*abb69(95)
      abb69(100)=-spbl5k2*abb69(36)
      abb69(104)=spak1k3*spbl6k2*abb69(13)
      abb69(56)=abb69(104)+abb69(100)+abb69(56)+abb69(95)
      abb69(37)=abb69(56)*abb69(37)
      abb69(56)=abb69(120)+abb69(125)
      abb69(95)=-abb69(56)+abb69(123)+abb69(98)
      abb69(98)=spak1l6*spbl6k2
      abb69(100)=abb69(98)+abb69(63)
      abb69(100)=abb69(95)*abb69(100)
      abb69(104)=abb69(39)*abb69(47)
      abb69(104)=-abb69(26)+abb69(104)
      abb69(109)=3.0_ki*spak1k3
      abb69(104)=abb69(104)*abb69(109)
      abb69(110)=3.0_ki*abb69(148)
      abb69(82)=-abb69(131)*abb69(82)
      abb69(82)=abb69(110)+abb69(82)
      abb69(82)=spbk4k2*abb69(82)
      abb69(111)=spbl5k2*abb69(61)
      abb69(64)=spak2l6*abb69(64)
      abb69(64)=-4.0_ki*abb69(64)+abb69(111)
      abb69(64)=abb69(128)*abb69(64)
      abb69(111)=-abb69(141)*abb69(47)
      abb69(114)=-abb69(36)*abb69(90)
      abb69(69)=2.0_ki*abb69(69)
      abb69(7)=-abb69(7)*abb69(69)
      abb69(7)=abb69(82)+abb69(114)+abb69(37)+abb69(104)+abb69(7)+abb69(111)+ab&
      &b69(64)+abb69(100)
      abb69(7)=2.0_ki*abb69(7)
      abb69(15)=abb69(15)*spak1k3
      abb69(15)=-abb69(15)-abb69(54)
      abb69(37)=abb69(89)+abb69(102)
      abb69(54)=abb69(105)*abb69(61)
      abb69(64)=abb69(37)-abb69(54)
      abb69(64)=-abb69(15)+2.0_ki*abb69(64)
      abb69(82)=4.0_ki*abb69(64)
      abb69(89)=8.0_ki*abb69(36)
      abb69(37)=3.0_ki*abb69(37)-abb69(54)
      abb69(15)=2.0_ki*abb69(37)-abb69(15)
      abb69(15)=2.0_ki*abb69(15)
      abb69(37)=-abb69(98)+3.0_ki*abb69(63)
      abb69(37)=abb69(12)*abb69(37)
      abb69(54)=abb69(29)*abb69(3)
      abb69(69)=abb69(54)*abb69(69)
      abb69(39)=spak1k3*abb69(39)
      abb69(98)=-spbk4k2*abb69(132)
      abb69(37)=abb69(98)+abb69(39)+abb69(69)+3.0_ki*abb69(141)+abb69(36)+abb69&
      &(37)
      abb69(37)=4.0_ki*abb69(37)
      abb69(39)=-16.0_ki*abb69(66)
      abb69(69)=-8.0_ki*abb69(66)
      abb69(36)=2.0_ki*abb69(36)
      abb69(66)=4.0_ki*abb69(66)
      abb69(72)=abb69(72)*abb69(25)
      abb69(98)=-abb69(72)*abb69(47)
      abb69(29)=-abb69(29)*abb69(61)
      abb69(29)=abb69(29)+abb69(98)
      abb69(29)=abb69(3)*abb69(29)
      abb69(75)=abb69(75)*abb69(25)
      abb69(98)=-abb69(75)*abb69(47)
      abb69(100)=-abb69(28)*abb69(61)
      abb69(98)=abb69(100)+abb69(98)
      abb69(98)=abb69(6)*abb69(98)
      abb69(29)=abb69(98)+abb69(29)+3.0_ki*abb69(95)
      abb69(29)=abb69(116)*abb69(29)
      abb69(98)=spak1l6*spbe7l6
      abb69(100)=spbk7e7*spak1k7
      abb69(102)=-abb69(100)+abb69(98)
      abb69(102)=abb69(95)*abb69(102)
      abb69(56)=abb69(123)-abb69(56)
      abb69(56)=spak1l5*abb69(56)
      abb69(61)=abb69(61)*abb69(128)
      abb69(56)=abb69(61)+abb69(56)
      abb69(56)=spbe7l5*abb69(56)
      abb69(61)=abb69(156)*abb69(109)
      abb69(104)=abb69(12)*abb69(116)
      abb69(111)=abb69(128)*spbe7l6
      abb69(114)=abb69(104)-abb69(111)
      abb69(90)=abb69(114)*abb69(90)
      abb69(110)=spbe7k4*abb69(110)
      abb69(86)=abb69(116)*abb69(86)
      abb69(118)=-spbe7l6*abb69(155)
      abb69(86)=abb69(86)+abb69(118)
      abb69(29)=abb69(110)+abb69(90)+abb69(61)+abb69(56)+2.0_ki*abb69(86)+abb69&
      &(29)+abb69(102)
      abb69(56)=4.0_ki*abb69(114)
      abb69(61)=-abb69(72)*abb69(116)
      abb69(72)=2.0_ki*spbe7l6
      abb69(86)=abb69(147)*abb69(72)
      abb69(61)=abb69(61)+abb69(86)
      abb69(61)=abb69(3)*abb69(61)
      abb69(75)=-abb69(75)*abb69(116)
      abb69(72)=abb69(141)*abb69(72)
      abb69(72)=abb69(75)+abb69(72)
      abb69(72)=abb69(6)*abb69(72)
      abb69(75)=abb69(98)+3.0_ki*abb69(100)
      abb69(86)=-abb69(12)*abb69(75)
      abb69(90)=-spbe7l5*abb69(160)
      abb69(94)=-spak1k3*abb69(94)
      abb69(98)=-spbe7k4*abb69(132)
      abb69(61)=abb69(98)+abb69(94)+abb69(90)+abb69(72)+abb69(61)+abb69(104)+ab&
      &b69(86)
      abb69(61)=2.0_ki*abb69(61)
      abb69(72)=-2.0_ki*abb69(114)
      abb69(86)=spbk7e7*spak1e7
      abb69(90)=-abb69(95)*abb69(86)
      abb69(94)=abb69(28)*abb69(6)
      abb69(94)=abb69(94)+abb69(54)
      abb69(98)=abb69(113)*abb69(94)
      abb69(100)=spak1k2*abb69(12)*spbk7k2
      abb69(102)=spbk7l6*abb69(128)
      abb69(102)=abb69(102)-abb69(100)
      abb69(42)=abb69(42)*spal5e7*abb69(102)
      abb69(102)=spbk7l6*abb69(111)
      abb69(100)=-spbe7l6*abb69(100)
      abb69(100)=abb69(102)+abb69(100)
      abb69(44)=abb69(100)*abb69(44)
      abb69(100)=-spak1k2*abb69(115)
      abb69(102)=-spbk7l6*abb69(124)
      abb69(104)=spak1k3*spbk7k3*abb69(107)
      abb69(108)=-spbk7l5*abb69(108)
      abb69(110)=spbk7k4*abb69(129)
      abb69(42)=abb69(110)+abb69(108)+2.0_ki*abb69(90)+abb69(104)+abb69(44)+abb&
      &69(42)+abb69(100)+abb69(102)+abb69(98)
      abb69(42)=2.0_ki*abb69(42)
      abb69(44)=8.0_ki*abb69(12)
      abb69(90)=-abb69(86)*abb69(44)
      abb69(44)=-abb69(23)*abb69(44)
      abb69(98)=-4.0_ki*abb69(106)
      abb69(63)=abb69(25)*abb69(63)
      abb69(100)=-spak1l6*abb69(24)
      abb69(102)=-spbl5k2*abb69(128)
      abb69(104)=-abb69(13)*abb69(109)
      abb69(106)=spbk4k2*abb69(131)
      abb69(63)=3.0_ki*abb69(106)+abb69(104)+abb69(102)+abb69(63)+abb69(100)
      abb69(63)=2.0_ki*abb69(63)
      abb69(100)=8.0_ki*abb69(105)
      abb69(102)=4.0_ki*abb69(105)
      abb69(104)=-abb69(127)*abb69(52)
      abb69(94)=-abb69(116)*abb69(94)
      abb69(75)=-abb69(116)+abb69(75)
      abb69(75)=-abb69(25)*abb69(75)
      abb69(105)=spbe7l5*abb69(128)
      abb69(106)=spak1k3*abb69(146)
      abb69(108)=spbe7k4*abb69(131)
      abb69(75)=abb69(108)+abb69(106)+abb69(105)+abb69(75)+abb69(94)
      abb69(86)=-4.0_ki*abb69(25)*abb69(86)
      abb69(28)=abb69(28)*abb69(139)
      abb69(24)=-spak1k2*abb69(24)
      abb69(94)=spak1k7*spbk7l6*abb69(25)
      abb69(23)=abb69(23)*abb69(54)
      abb69(54)=spak1k3*abb69(92)
      abb69(92)=spbl6l5*abb69(128)
      abb69(105)=spbl6k4*abb69(131)
      abb69(23)=abb69(105)-3.0_ki*abb69(92)+abb69(54)+abb69(23)+abb69(94)+abb69&
      &(28)+abb69(24)
      abb69(23)=4.0_ki*abb69(23)
      abb69(24)=-abb69(97)*abb69(47)
      abb69(26)=spak1k2*abb69(26)
      abb69(24)=abb69(26)+abb69(24)
      abb69(24)=16.0_ki*abb69(24)
      abb69(14)=abb69(112)*abb69(14)
      abb69(26)=abb69(117)*abb69(107)
      abb69(14)=-abb69(26)-abb69(14)+abb69(134)+abb69(133)-abb69(103)
      abb69(26)=-2.0_ki*abb69(14)
      abb69(28)=-7.0_ki*abb69(97)-abb69(101)
      abb69(28)=4.0_ki*abb69(28)
      abb69(47)=8.0_ki*abb69(87)
      abb69(33)=-2.0_ki*abb69(33)
      abb69(54)=-4.0_ki*abb69(87)
      abb69(87)=16.0_ki*spak1k2*abb69(13)
      abb69(81)=-4.0_ki*abb69(81)
      abb69(52)=abb69(52)*abb69(146)
      abb69(79)=-8.0_ki*abb69(79)
      abb69(78)=16.0_ki*abb69(78)
      abb69(18)=8.0_ki*abb69(18)
      abb69(70)=8.0_ki*abb69(70)
      abb69(88)=-16.0_ki*abb69(88)
      abb69(13)=8.0_ki*spak2k4*abb69(13)
      abb69(92)=8.0_ki*abb69(95)
      abb69(12)=16.0_ki*abb69(12)
      abb69(25)=8.0_ki*abb69(25)
      R2d69=0.0_ki
      rat2 = rat2 + R2d69
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='69' value='", &
          & R2d69, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd69h2
