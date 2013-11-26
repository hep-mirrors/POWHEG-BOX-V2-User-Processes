module     p5_usbar_epnebbbarg_abbrevd312h3
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(141), public :: abb312
   complex(ki), public :: R2d312
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
      abb312(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb312(2)=sqrt(mB**2)
      abb312(3)=NC**(-1)
      abb312(4)=es234**(-1)
      abb312(5)=spak2l5**(-1)
      abb312(6)=spbl5k2**(-1)
      abb312(7)=spak2l6**(-1)
      abb312(8)=spbl6k2**(-1)
      abb312(9)=c1-c3
      abb312(10)=TR*gW
      abb312(10)=abb312(10)**2*i_*CVSU*abb312(4)*abb312(1)
      abb312(11)=abb312(10)*spbk4k3
      abb312(12)=abb312(11)*abb312(3)
      abb312(13)=-abb312(12)*abb312(9)
      abb312(14)=-abb312(7)*abb312(13)
      abb312(15)=c2-c4
      abb312(16)=abb312(11)*abb312(7)
      abb312(17)=-abb312(16)*abb312(15)
      abb312(18)=abb312(17)+abb312(14)
      abb312(19)=mB**2
      abb312(20)=abb312(2)*spak2k4
      abb312(21)=abb312(19)*abb312(20)
      abb312(22)=abb312(21)*spbe7k1
      abb312(23)=spak4e7*abb312(18)*abb312(22)
      abb312(24)=spbk3k2*spak2e7
      abb312(25)=abb312(10)*abb312(3)
      abb312(26)=abb312(24)*abb312(25)
      abb312(27)=-abb312(7)*abb312(9)
      abb312(28)=-abb312(26)*abb312(27)
      abb312(29)=abb312(10)*abb312(7)
      abb312(30)=abb312(24)*abb312(29)
      abb312(31)=-abb312(30)*abb312(15)
      abb312(31)=abb312(28)+abb312(31)
      abb312(32)=abb312(31)*abb312(22)
      abb312(33)=-2.0_ki*abb312(32)-abb312(23)
      abb312(33)=spbl5k1*abb312(33)
      abb312(34)=-spbk3k2*abb312(15)
      abb312(35)=-abb312(29)*abb312(34)
      abb312(36)=abb312(25)*spbk3k2
      abb312(37)=-abb312(36)*abb312(27)
      abb312(37)=abb312(37)-abb312(35)
      abb312(38)=abb312(5)*spak2e7
      abb312(39)=abb312(38)*spbe7k1
      abb312(40)=abb312(39)*abb312(21)
      abb312(41)=abb312(37)*abb312(40)
      abb312(42)=abb312(18)*abb312(5)
      abb312(43)=abb312(22)*abb312(42)
      abb312(44)=2.0_ki*spak4e7
      abb312(45)=-abb312(43)*abb312(44)
      abb312(45)=abb312(45)-abb312(41)
      abb312(46)=spbk7k1*spak2k7
      abb312(45)=abb312(45)*abb312(46)
      abb312(47)=-abb312(36)*abb312(9)
      abb312(48)=-abb312(40)*abb312(47)
      abb312(49)=abb312(10)*spak2k4
      abb312(50)=abb312(49)*abb312(2)
      abb312(51)=abb312(50)*abb312(19)
      abb312(52)=-abb312(51)*abb312(34)
      abb312(53)=-abb312(39)*abb312(52)
      abb312(48)=abb312(48)+abb312(53)
      abb312(53)=-spbl6k1*abb312(48)
      abb312(54)=abb312(11)*abb312(5)
      abb312(55)=-abb312(54)*abb312(15)
      abb312(56)=-abb312(5)*abb312(13)
      abb312(57)=abb312(55)+abb312(56)
      abb312(58)=abb312(57)*abb312(22)
      abb312(59)=spak4e7*spbl6k1
      abb312(60)=-abb312(58)*abb312(59)
      abb312(61)=abb312(34)*abb312(50)
      abb312(62)=-spbe7l5*abb312(61)
      abb312(63)=abb312(20)*spbe7l5
      abb312(64)=-abb312(63)*abb312(47)
      abb312(62)=abb312(62)-abb312(64)
      abb312(64)=abb312(62)*spbl6k1
      abb312(65)=2.0_ki*spal5e7
      abb312(66)=abb312(65)*spbl5k1
      abb312(67)=-abb312(64)*abb312(66)
      abb312(68)=abb312(18)*abb312(40)
      abb312(69)=spak4k7*spbk7k1
      abb312(70)=abb312(68)*abb312(69)
      abb312(33)=abb312(70)+abb312(45)+abb312(67)+abb312(33)+abb312(53)+abb312(&
      &60)
      abb312(33)=spak1k2*abb312(33)
      abb312(45)=spbe7k2*abb312(8)
      abb312(53)=-spak2k7*abb312(59)*abb312(21)*abb312(18)*abb312(45)
      abb312(26)=-abb312(26)*abb312(9)
      abb312(60)=abb312(26)*abb312(20)
      abb312(67)=abb312(50)*abb312(24)
      abb312(70)=abb312(15)*abb312(67)
      abb312(70)=abb312(60)+abb312(70)
      abb312(71)=spbl6k1*abb312(70)
      abb312(72)=abb312(20)*abb312(11)
      abb312(73)=-abb312(72)*abb312(15)
      abb312(74)=-abb312(20)*abb312(13)
      abb312(75)=abb312(74)+abb312(73)
      abb312(76)=-abb312(75)*abb312(59)
      abb312(71)=abb312(71)+abb312(76)
      abb312(71)=spal6k7*spbe7l6*abb312(71)
      abb312(76)=-spbe7k1*abb312(15)
      abb312(77)=abb312(76)*abb312(67)
      abb312(60)=spbe7k1*abb312(60)
      abb312(60)=abb312(77)-abb312(60)
      abb312(77)=spbl6k1*abb312(60)
      abb312(78)=abb312(76)*abb312(72)
      abb312(74)=abb312(74)*spbe7k1
      abb312(74)=abb312(78)+abb312(74)
      abb312(78)=abb312(74)*abb312(59)
      abb312(77)=abb312(77)+abb312(78)
      abb312(77)=spak1k7*abb312(77)
      abb312(53)=abb312(77)+abb312(71)+abb312(53)
      abb312(71)=2.0_ki*spbk7l5
      abb312(53)=abb312(71)*abb312(53)
      abb312(77)=-abb312(63)*abb312(13)
      abb312(78)=abb312(15)*abb312(11)*spbe7l5
      abb312(79)=-abb312(20)*abb312(78)
      abb312(77)=abb312(79)+abb312(77)
      abb312(79)=abb312(77)*spbl6k1
      abb312(80)=spak4l5*spbl5k1
      abb312(69)=abb312(80)-abb312(69)
      abb312(80)=abb312(79)*abb312(69)
      abb312(81)=abb312(46)*abb312(64)
      abb312(82)=mB*spak2k4
      abb312(83)=abb312(82)**2
      abb312(84)=abb312(83)*abb312(2)
      abb312(85)=spbe7l5*abb312(84)
      abb312(86)=-abb312(85)*abb312(57)
      abb312(87)=abb312(86)*abb312(6)
      abb312(88)=abb312(87)*spbl6k1
      abb312(89)=spbk2k1*abb312(88)
      abb312(80)=abb312(89)+abb312(81)+abb312(80)
      abb312(80)=spak1e7*abb312(80)
      abb312(81)=abb312(18)*abb312(85)
      abb312(85)=-abb312(81)*abb312(65)
      abb312(89)=spak2e7*abb312(7)
      abb312(90)=abb312(13)*abb312(89)
      abb312(91)=abb312(17)*spak2e7
      abb312(91)=abb312(90)-abb312(91)
      abb312(92)=abb312(21)*spbe7l5
      abb312(93)=-abb312(91)*abb312(92)
      abb312(94)=-spak4l5*abb312(93)
      abb312(85)=abb312(85)+abb312(94)
      abb312(94)=abb312(8)*spbl6k1
      abb312(85)=abb312(94)*abb312(85)
      abb312(95)=-spbe7l5*abb312(15)
      abb312(30)=-abb312(95)*abb312(30)*abb312(21)
      abb312(28)=-abb312(92)*abb312(28)
      abb312(28)=abb312(28)+abb312(30)
      abb312(30)=abb312(28)*abb312(94)
      abb312(96)=spak2l5*abb312(30)
      abb312(85)=abb312(96)+abb312(85)
      abb312(85)=spbl5k2*abb312(85)
      abb312(96)=spak2k4**2
      abb312(97)=abb312(96)*mB**4
      abb312(98)=abb312(97)*abb312(2)
      abb312(99)=abb312(5)**2
      abb312(100)=abb312(99)*spbe7k1
      abb312(101)=abb312(98)*abb312(100)
      abb312(102)=-abb312(101)*abb312(90)
      abb312(101)=abb312(101)*spak2e7
      abb312(103)=abb312(101)*abb312(17)
      abb312(102)=abb312(103)+abb312(102)
      abb312(102)=abb312(6)*abb312(102)
      abb312(102)=-abb312(30)+abb312(102)
      abb312(102)=es12*abb312(102)
      abb312(103)=es712-es71
      abb312(30)=abb312(30)*abb312(103)
      abb312(104)=abb312(21)*abb312(26)
      abb312(105)=abb312(21)*abb312(13)
      abb312(19)=-abb312(19)*abb312(73)
      abb312(19)=abb312(105)+abb312(19)
      abb312(19)=spak4e7*abb312(19)
      abb312(24)=abb312(51)*abb312(24)
      abb312(73)=abb312(24)*abb312(15)
      abb312(19)=abb312(19)+abb312(73)+abb312(104)
      abb312(73)=spbl5k1*spbe7l6
      abb312(19)=abb312(19)*abb312(73)
      abb312(104)=abb312(36)*abb312(38)
      abb312(105)=-abb312(104)*abb312(9)
      abb312(106)=-abb312(21)*abb312(105)
      abb312(52)=-abb312(38)*abb312(52)
      abb312(52)=abb312(106)+abb312(52)
      abb312(106)=abb312(57)*abb312(21)
      abb312(107)=-spak4e7*abb312(106)
      abb312(107)=abb312(107)-abb312(52)
      abb312(108)=abb312(46)*spbe7l6
      abb312(108)=2.0_ki*abb312(108)
      abb312(107)=abb312(107)*abb312(108)
      abb312(40)=abb312(13)*abb312(40)
      abb312(109)=-spak2e7*abb312(55)
      abb312(110)=abb312(109)*abb312(22)
      abb312(40)=abb312(40)+abb312(110)
      abb312(110)=-spbl6l5*abb312(40)
      abb312(111)=spak1k2*spbl5k1
      abb312(112)=-abb312(68)*abb312(111)
      abb312(110)=abb312(110)+abb312(112)
      abb312(110)=spak4l5*abb312(110)
      abb312(40)=-spak4k7*abb312(40)
      abb312(112)=spak2k7*abb312(48)
      abb312(40)=abb312(112)+abb312(40)
      abb312(40)=spbk7l6*abb312(40)
      abb312(112)=-spak2k7*abb312(64)
      abb312(113)=spak4k7*abb312(79)
      abb312(112)=abb312(112)+abb312(113)
      abb312(112)=spbk7l6*abb312(112)
      abb312(113)=spak4l5*spbl6l5
      abb312(114)=abb312(79)*abb312(113)
      abb312(112)=abb312(114)+abb312(112)
      abb312(112)=spal6e7*abb312(112)
      abb312(114)=-abb312(2)*abb312(15)
      abb312(115)=abb312(11)*spak2e7
      abb312(100)=-abb312(97)*abb312(100)*abb312(115)*abb312(114)
      abb312(101)=abb312(101)*abb312(13)
      abb312(100)=abb312(101)+abb312(100)
      abb312(100)=abb312(6)*abb312(100)
      abb312(88)=spal6e7*abb312(88)
      abb312(88)=abb312(100)+abb312(88)
      abb312(88)=spbl6k2*abb312(88)
      abb312(52)=abb312(52)*spbl6k1
      abb312(100)=-abb312(106)*abb312(59)
      abb312(100)=-abb312(52)+abb312(100)
      abb312(100)=spbe7l6*abb312(100)
      abb312(101)=abb312(65)*spbl6l5
      abb312(106)=abb312(64)*abb312(101)
      abb312(100)=abb312(100)+abb312(106)
      abb312(100)=spak2l6*abb312(100)
      abb312(106)=-spak4l6*abb312(101)
      abb312(116)=spak1k4*abb312(66)
      abb312(106)=abb312(116)+abb312(106)
      abb312(106)=abb312(79)*abb312(106)
      abb312(22)=-abb312(22)*abb312(26)
      abb312(24)=abb312(24)*abb312(76)
      abb312(22)=abb312(24)+abb312(22)
      abb312(22)=spbl6l5*abb312(22)
      abb312(24)=-abb312(86)*abb312(65)*spbl6k1
      abb312(86)=spal6e7*spbl6l5
      abb312(116)=spak1e7*spbl5k1
      abb312(86)=abb312(86)+abb312(116)
      abb312(86)=abb312(86)*spak2l5
      abb312(116)=-abb312(64)*abb312(86)
      abb312(117)=spbk7k2*spak4k7
      abb312(93)=abb312(93)*abb312(94)*abb312(117)
      abb312(19)=abb312(93)+abb312(102)+abb312(100)+abb312(88)+abb312(85)+abb31&
      &2(116)+abb312(80)+abb312(112)+abb312(40)+abb312(110)+abb312(107)+abb312(&
      &24)+abb312(19)+abb312(22)+abb312(53)+abb312(30)+abb312(106)+abb312(33)
      abb312(19)=2.0_ki*abb312(19)
      abb312(22)=spak4l6*spbl6l5
      abb312(24)=spak1k4*spbl5k1
      abb312(22)=abb312(22)-abb312(24)
      abb312(24)=-abb312(75)*abb312(22)
      abb312(30)=-abb312(20)*abb312(47)
      abb312(30)=abb312(61)+abb312(30)
      abb312(33)=-spak2l6*spbl6l5
      abb312(33)=abb312(33)+abb312(111)
      abb312(33)=abb312(30)*abb312(33)
      abb312(40)=abb312(83)*abb312(54)*abb312(114)
      abb312(53)=abb312(84)*abb312(56)
      abb312(24)=abb312(33)+abb312(24)+abb312(53)+abb312(40)
      abb312(24)=spbl6k1*abb312(24)
      abb312(33)=abb312(18)*abb312(84)
      abb312(40)=-spbl5k2*abb312(94)*abb312(33)
      abb312(24)=abb312(40)+abb312(24)
      abb312(24)=8.0_ki*abb312(24)
      abb312(40)=abb312(77)*abb312(59)
      abb312(53)=abb312(63)*abb312(26)
      abb312(61)=-abb312(67)*abb312(95)
      abb312(53)=abb312(61)+abb312(53)
      abb312(61)=abb312(53)*spbl6k1
      abb312(33)=abb312(39)*abb312(33)
      abb312(40)=-abb312(40)+abb312(61)-abb312(33)
      abb312(11)=abb312(11)*abb312(82)
      abb312(61)=abb312(72)-abb312(11)
      abb312(63)=abb312(15)*abb312(61)
      abb312(67)=abb312(12)*abb312(20)
      abb312(80)=abb312(12)*abb312(82)
      abb312(83)=abb312(67)-abb312(80)
      abb312(83)=-abb312(83)*abb312(9)
      abb312(63)=abb312(63)+abb312(83)
      abb312(63)=abb312(63)*spak4e7
      abb312(85)=abb312(82)*spak2e7
      abb312(88)=abb312(85)*abb312(25)
      abb312(93)=abb312(25)*spak2e7
      abb312(94)=abb312(93)*abb312(20)
      abb312(100)=abb312(88)-abb312(94)
      abb312(102)=-spbk3k2*abb312(9)
      abb312(100)=abb312(102)*abb312(100)
      abb312(106)=abb312(10)*spak2e7
      abb312(107)=abb312(106)*abb312(82)
      abb312(110)=abb312(50)*spak2e7
      abb312(112)=abb312(110)-abb312(107)
      abb312(112)=abb312(34)*abb312(112)
      abb312(100)=abb312(112)+abb312(100)
      abb312(112)=abb312(63)-abb312(100)
      abb312(112)=abb312(112)*abb312(73)
      abb312(116)=-abb312(82)*abb312(57)
      abb312(118)=abb312(116)*spak4e7
      abb312(119)=abb312(34)*abb312(107)
      abb312(120)=-abb312(5)*abb312(119)
      abb312(121)=-abb312(82)*abb312(105)
      abb312(120)=abb312(120)-abb312(121)
      abb312(121)=-abb312(118)-abb312(120)
      abb312(108)=abb312(121)*abb312(108)
      abb312(121)=abb312(82)*spbe7k1
      abb312(122)=abb312(34)*abb312(121)*abb312(106)*abb312(5)
      abb312(105)=-abb312(121)*abb312(105)
      abb312(105)=abb312(105)+abb312(122)
      abb312(122)=-spak2k7*abb312(105)
      abb312(123)=abb312(13)*abb312(38)
      abb312(109)=abb312(109)+abb312(123)
      abb312(124)=-abb312(121)*abb312(109)
      abb312(125)=-spak4k7*abb312(124)
      abb312(122)=abb312(122)+abb312(125)
      abb312(122)=spbk7l6*abb312(122)
      abb312(106)=-abb312(106)*abb312(34)
      abb312(106)=abb312(106)+abb312(26)
      abb312(106)=spbl6l5*abb312(121)*abb312(106)
      abb312(125)=abb312(96)*mB
      abb312(126)=-abb312(95)*abb312(125)*abb312(54)
      abb312(127)=spbe7l5*abb312(125)
      abb312(56)=-abb312(127)*abb312(56)
      abb312(56)=abb312(56)+abb312(126)
      abb312(126)=abb312(56)*spbl6k1
      abb312(128)=abb312(65)*abb312(126)
      abb312(129)=-abb312(124)*abb312(113)
      abb312(130)=mB**3
      abb312(96)=abb312(96)*abb312(130)
      abb312(131)=abb312(99)*abb312(96)
      abb312(132)=-abb312(13)*abb312(131)*spak2e7
      abb312(133)=abb312(132)*spbe7k1
      abb312(115)=abb312(131)*abb312(115)
      abb312(131)=abb312(76)*abb312(115)
      abb312(131)=abb312(131)+abb312(133)
      abb312(133)=spbl6k2*abb312(6)
      abb312(134)=abb312(131)*abb312(133)
      abb312(106)=abb312(134)+abb312(122)+abb312(129)+abb312(108)+abb312(128)+a&
      &bb312(106)+abb312(112)+abb312(40)
      abb312(106)=4.0_ki*abb312(106)
      abb312(108)=spbl6k1*abb312(57)*abb312(125)
      abb312(112)=16.0_ki*abb312(108)
      abb312(122)=abb312(98)*abb312(39)*abb312(13)
      abb312(54)=abb312(114)*abb312(54)*abb312(97)*spak2e7
      abb312(97)=-spbe7k1*abb312(54)
      abb312(97)=abb312(97)+abb312(122)
      abb312(114)=abb312(7)**2
      abb312(97)=abb312(114)*abb312(97)
      abb312(28)=spbl6k1*abb312(28)
      abb312(92)=abb312(18)*abb312(92)
      abb312(122)=-abb312(92)*abb312(59)
      abb312(28)=abb312(122)+abb312(28)+abb312(97)
      abb312(97)=4.0_ki*abb312(8)
      abb312(28)=abb312(28)*abb312(97)
      abb312(122)=abb312(18)*spak4e7
      abb312(122)=abb312(122)+abb312(31)
      abb312(122)=abb312(121)*abb312(122)
      abb312(128)=abb312(122)*abb312(71)
      abb312(121)=abb312(57)*abb312(121)
      abb312(129)=spak4e7*abb312(121)
      abb312(129)=abb312(129)+abb312(105)
      abb312(129)=spbk7l6*abb312(129)
      abb312(129)=2.0_ki*abb312(129)+abb312(128)
      abb312(129)=spak2k7*abb312(129)
      abb312(134)=abb312(13)*abb312(38)*abb312(82)
      abb312(55)=-abb312(85)*abb312(55)
      abb312(55)=abb312(55)+abb312(134)
      abb312(85)=abb312(55)*spbe7l6
      abb312(134)=abb312(82)*spbe7l5
      abb312(90)=-abb312(134)*abb312(90)
      abb312(17)=-abb312(134)*abb312(17)
      abb312(135)=-spak2e7*abb312(17)
      abb312(90)=-abb312(85)+abb312(90)+abb312(135)
      abb312(135)=abb312(90)*abb312(69)
      abb312(61)=abb312(76)*abb312(61)
      abb312(83)=abb312(83)*spbe7k1
      abb312(61)=abb312(61)-abb312(83)
      abb312(61)=abb312(61)*spak4e7
      abb312(83)=spbe7k1*abb312(100)
      abb312(83)=abb312(61)+abb312(83)
      abb312(83)=spbl6l5*abb312(83)
      abb312(100)=abb312(18)*abb312(127)
      abb312(127)=spbl5k1*abb312(100)
      abb312(126)=-abb312(126)+abb312(127)
      abb312(126)=abb312(126)*abb312(65)
      abb312(127)=abb312(120)*spbe7l6
      abb312(136)=-abb312(134)*abb312(31)
      abb312(137)=abb312(127)+abb312(136)
      abb312(137)=abb312(137)*abb312(46)
      abb312(115)=abb312(15)*abb312(115)
      abb312(115)=abb312(115)-abb312(132)
      abb312(115)=abb312(115)*spbe7l6
      abb312(132)=abb312(96)*spbe7l5
      abb312(138)=abb312(38)*abb312(18)*abb312(132)
      abb312(115)=abb312(115)-abb312(138)
      abb312(138)=spbk2k1*abb312(6)
      abb312(139)=abb312(115)*abb312(138)
      abb312(26)=abb312(26)*abb312(82)
      abb312(26)=abb312(119)-abb312(26)
      abb312(119)=abb312(26)*abb312(73)
      abb312(140)=abb312(136)*spak2l5
      abb312(141)=-spbl5k1*abb312(140)
      abb312(40)=abb312(141)+abb312(139)+abb312(137)+abb312(126)+abb312(83)+abb&
      &312(119)+abb312(135)+abb312(129)-abb312(40)
      abb312(40)=4.0_ki*abb312(40)
      abb312(83)=abb312(18)*abb312(125)
      abb312(119)=spbl5k1*abb312(83)
      abb312(108)=abb312(108)+abb312(119)
      abb312(108)=16.0_ki*abb312(108)
      abb312(119)=4.0_ki*spal5e7
      abb312(56)=-abb312(56)*abb312(119)
      abb312(109)=-spak4l5*abb312(134)*abb312(109)
      abb312(85)=-spak4l6*abb312(85)
      abb312(125)=spak1k4*abb312(124)
      abb312(56)=abb312(125)+abb312(85)+abb312(109)+abb312(56)
      abb312(56)=spbl6k1*abb312(56)
      abb312(85)=spbl5k1*abb312(122)
      abb312(109)=2.0_ki*spbl6k1
      abb312(125)=abb312(105)*abb312(109)
      abb312(126)=abb312(121)*abb312(59)
      abb312(85)=abb312(85)+abb312(125)+abb312(126)
      abb312(85)=spak1k2*abb312(85)
      abb312(72)=-abb312(11)+2.0_ki*abb312(72)
      abb312(72)=abb312(72)*abb312(95)
      abb312(67)=-abb312(80)+2.0_ki*abb312(67)
      abb312(67)=abb312(67)*abb312(9)*spbe7l5
      abb312(67)=abb312(67)+abb312(72)
      abb312(67)=abb312(67)*abb312(59)
      abb312(72)=-abb312(82)*abb312(13)
      abb312(11)=-abb312(11)*abb312(15)
      abb312(11)=abb312(11)+abb312(72)
      abb312(11)=spak4e7*abb312(11)
      abb312(11)=abb312(11)+abb312(26)
      abb312(11)=abb312(11)*abb312(73)
      abb312(26)=abb312(116)*abb312(59)
      abb312(59)=-abb312(120)*abb312(109)
      abb312(59)=abb312(59)-abb312(26)
      abb312(59)=spak2l6*spbe7l6*abb312(59)
      abb312(72)=spbl6k1*abb312(120)
      abb312(26)=-3.0_ki*abb312(72)-2.0_ki*abb312(26)
      abb312(26)=spak2k7*abb312(26)
      abb312(55)=-spak4k7*spbl6k1*abb312(55)
      abb312(26)=abb312(26)+abb312(55)
      abb312(26)=spbk7e7*abb312(26)
      abb312(53)=-abb312(53)*abb312(109)
      abb312(11)=abb312(26)+abb312(59)+abb312(85)+abb312(11)+abb312(67)+abb312(&
      &53)+abb312(33)+abb312(56)
      abb312(11)=2.0_ki*abb312(11)
      abb312(26)=-abb312(8)*abb312(81)
      abb312(26)=abb312(26)+abb312(87)
      abb312(26)=spbk2k1*abb312(26)
      abb312(33)=abb312(77)*abb312(69)
      abb312(53)=spak2l5*spbl5k1
      abb312(53)=-abb312(53)+abb312(46)
      abb312(53)=abb312(62)*abb312(53)
      abb312(55)=spak4l6*abb312(79)
      abb312(56)=-spak2l6*abb312(64)
      abb312(26)=abb312(56)+abb312(55)+abb312(26)+abb312(53)+abb312(33)
      abb312(26)=2.0_ki*abb312(26)
      abb312(33)=abb312(27)*abb312(104)*abb312(21)
      abb312(53)=abb312(21)*abb312(38)
      abb312(55)=abb312(35)*abb312(53)
      abb312(33)=abb312(33)+abb312(55)
      abb312(55)=-abb312(33)*abb312(46)
      abb312(56)=-abb312(98)*abb312(123)
      abb312(54)=abb312(54)+abb312(56)
      abb312(56)=abb312(114)*abb312(8)
      abb312(54)=abb312(54)*abb312(56)
      abb312(59)=-abb312(6)*abb312(99)*abb312(98)*abb312(91)
      abb312(54)=abb312(54)+abb312(59)
      abb312(54)=spbk2k1*abb312(54)
      abb312(53)=-abb312(53)*abb312(18)
      abb312(59)=spak4l6*spbl6k1
      abb312(59)=abb312(59)+abb312(69)
      abb312(59)=abb312(53)*abb312(59)
      abb312(67)=-spbl5k1*abb312(21)*abb312(31)
      abb312(52)=abb312(54)+abb312(55)-abb312(52)+abb312(67)+abb312(59)
      abb312(52)=2.0_ki*abb312(52)
      abb312(54)=-spak2k7*abb312(62)
      abb312(55)=spak4k7*abb312(77)
      abb312(54)=abb312(54)+abb312(55)
      abb312(54)=spbk7l6*abb312(54)
      abb312(55)=-spak1k2*abb312(64)
      abb312(59)=abb312(77)*abb312(113)
      abb312(64)=-spak2l5*spbl6l5*abb312(62)
      abb312(67)=spak1k4*abb312(79)
      abb312(72)=spbl6k2*abb312(87)
      abb312(54)=abb312(72)+abb312(67)+abb312(64)+abb312(54)+abb312(59)+abb312(&
      &55)-abb312(81)
      abb312(54)=2.0_ki*abb312(54)
      abb312(55)=-abb312(96)*abb312(78)
      abb312(59)=-abb312(132)*abb312(13)
      abb312(55)=abb312(59)+abb312(55)
      abb312(55)=abb312(55)*abb312(56)
      abb312(56)=abb312(132)*abb312(42)
      abb312(59)=abb312(56)*abb312(6)
      abb312(55)=abb312(55)+abb312(59)
      abb312(55)=4.0_ki*abb312(55)
      abb312(64)=spak4e7*abb312(74)
      abb312(60)=abb312(64)+abb312(60)
      abb312(64)=4.0_ki*spbk7l5
      abb312(60)=abb312(60)*abb312(64)
      abb312(67)=-spak4e7*abb312(75)
      abb312(67)=abb312(67)+abb312(70)
      abb312(67)=spbe7l6*abb312(67)*abb312(64)
      abb312(70)=-abb312(82)*abb312(18)
      abb312(72)=abb312(70)*spak4e7
      abb312(73)=abb312(31)*abb312(82)
      abb312(72)=abb312(72)-abb312(73)
      abb312(64)=abb312(72)*abb312(64)
      abb312(73)=abb312(116)*abb312(44)
      abb312(73)=abb312(73)+abb312(120)
      abb312(73)=spbe7l6*abb312(73)
      abb312(73)=abb312(73)-abb312(136)
      abb312(73)=spak2k7*abb312(73)
      abb312(74)=spak4k7*abb312(90)
      abb312(73)=abb312(73)+abb312(74)
      abb312(73)=spbk7l6*abb312(73)
      abb312(74)=-abb312(94)+2.0_ki*abb312(88)
      abb312(74)=abb312(102)*abb312(74)
      abb312(79)=-abb312(110)+2.0_ki*abb312(107)
      abb312(79)=abb312(34)*abb312(79)
      abb312(74)=abb312(79)-abb312(74)
      abb312(63)=abb312(63)+abb312(74)
      abb312(63)=spbe7l6*abb312(63)
      abb312(63)=-abb312(140)+abb312(63)
      abb312(63)=spbl6l5*abb312(63)
      abb312(79)=abb312(90)*abb312(113)
      abb312(71)=abb312(72)*abb312(71)
      abb312(72)=spak2k7*spbe7l6*abb312(71)
      abb312(80)=abb312(115)*abb312(133)
      abb312(81)=abb312(100)*abb312(101)
      abb312(63)=abb312(80)+abb312(73)+abb312(72)+abb312(79)+abb312(81)+abb312(&
      &63)
      abb312(63)=2.0_ki*abb312(63)
      abb312(72)=8.0_ki*spbl6l5
      abb312(72)=abb312(83)*abb312(72)
      abb312(73)=abb312(119)*abb312(77)
      abb312(77)=spbl5k1*abb312(73)
      abb312(75)=8.0_ki*abb312(75)
      abb312(79)=spbl5k1*abb312(75)
      abb312(80)=4.0_ki*abb312(124)
      abb312(81)=abb312(130)*spak2k4
      abb312(39)=abb312(81)*abb312(39)
      abb312(83)=abb312(18)*abb312(39)
      abb312(85)=abb312(83)*abb312(97)
      abb312(87)=-2.0_ki*abb312(124)
      abb312(73)=spbl6l5*abb312(73)
      abb312(75)=spbl6l5*abb312(75)
      abb312(88)=4.0_ki*abb312(90)
      abb312(38)=abb312(81)*abb312(38)
      abb312(18)=abb312(18)*abb312(38)
      abb312(91)=abb312(18)*spbe7l6
      abb312(13)=abb312(13)*spbe7l5
      abb312(13)=abb312(13)+abb312(78)
      abb312(13)=abb312(13)*abb312(114)*abb312(81)
      abb312(78)=spak2e7*abb312(13)
      abb312(78)=-abb312(91)+abb312(78)
      abb312(78)=abb312(78)*abb312(97)
      abb312(90)=2.0_ki*abb312(90)
      abb312(43)=-spak4e7*abb312(43)
      abb312(41)=abb312(43)-abb312(41)
      abb312(41)=4.0_ki*spak2k7*abb312(41)
      abb312(43)=abb312(34)*abb312(134)*abb312(29)
      abb312(36)=-abb312(27)*abb312(36)*abb312(134)
      abb312(36)=abb312(36)+abb312(43)
      abb312(43)=abb312(36)*spak2k7
      abb312(14)=-abb312(134)*abb312(14)
      abb312(14)=abb312(17)+abb312(14)
      abb312(17)=abb312(14)*spak4k7
      abb312(17)=abb312(17)-abb312(43)
      abb312(43)=-2.0_ki*abb312(17)
      abb312(31)=abb312(31)*abb312(81)
      abb312(94)=spbe7k1*abb312(31)
      abb312(98)=spak4l5*abb312(83)
      abb312(94)=abb312(94)+abb312(98)
      abb312(94)=spbl5k2*abb312(94)
      abb312(39)=abb312(37)*abb312(39)
      abb312(98)=abb312(103)-es12
      abb312(99)=abb312(39)*abb312(98)
      abb312(56)=-spbk2k1*abb312(56)*abb312(65)
      abb312(83)=-abb312(83)*abb312(117)
      abb312(56)=abb312(94)+abb312(83)+abb312(56)+abb312(99)
      abb312(56)=abb312(8)*abb312(56)
      abb312(83)=abb312(81)-abb312(21)
      abb312(12)=abb312(12)*abb312(7)
      abb312(94)=abb312(9)*abb312(12)*abb312(83)
      abb312(99)=abb312(16)*abb312(83)
      abb312(100)=-abb312(99)*abb312(15)
      abb312(100)=abb312(100)+abb312(94)
      abb312(100)=abb312(100)*spak4e7
      abb312(103)=spbl5k1*abb312(100)
      abb312(107)=abb312(42)*abb312(44)
      abb312(109)=abb312(81)*abb312(107)
      abb312(110)=abb312(46)*abb312(109)
      abb312(103)=abb312(103)+abb312(110)
      abb312(103)=abb312(103)*abb312(45)
      abb312(58)=-spak4e7*abb312(58)
      abb312(62)=-abb312(62)*abb312(66)
      abb312(48)=abb312(103)+abb312(62)+abb312(58)-abb312(48)+abb312(56)
      abb312(48)=2.0_ki*abb312(48)
      abb312(30)=spbl5k1*abb312(30)
      abb312(42)=-spbk2k1*abb312(8)*abb312(96)*abb312(42)
      abb312(30)=abb312(30)+abb312(42)
      abb312(30)=8.0_ki*abb312(30)
      abb312(42)=4.0_ki*abb312(105)
      abb312(39)=abb312(39)*abb312(97)
      abb312(56)=abb312(121)*abb312(44)
      abb312(58)=spak4l6*abb312(14)
      abb312(10)=abb312(10)*abb312(82)
      abb312(62)=-abb312(10)*abb312(34)*spbe7l5
      abb312(47)=abb312(134)*abb312(47)
      abb312(47)=abb312(58)+abb312(47)+abb312(62)
      abb312(47)=2.0_ki*abb312(47)
      abb312(23)=-abb312(23)-abb312(32)
      abb312(23)=2.0_ki*abb312(23)
      abb312(32)=2.0_ki*abb312(122)
      abb312(58)=-spak2l5*abb312(36)
      abb312(62)=spak4l5*abb312(14)
      abb312(58)=abb312(62)+abb312(58)
      abb312(58)=2.0_ki*abb312(58)
      abb312(62)=abb312(14)*abb312(119)
      abb312(103)=8.0_ki*abb312(70)
      abb312(27)=-abb312(27)*abb312(104)*abb312(81)
      abb312(35)=-abb312(38)*abb312(35)
      abb312(27)=abb312(35)+abb312(27)
      abb312(35)=-abb312(27)*abb312(98)
      abb312(18)=abb312(18)*abb312(117)
      abb312(18)=abb312(18)+abb312(35)
      abb312(18)=abb312(8)*abb312(18)
      abb312(35)=abb312(130)*abb312(49)
      abb312(35)=abb312(35)-abb312(51)
      abb312(35)=abb312(34)*abb312(35)*spak2e7
      abb312(38)=-abb312(102)*abb312(83)*abb312(93)
      abb312(35)=abb312(38)+abb312(35)
      abb312(35)=abb312(5)*abb312(35)
      abb312(38)=-spal6k7*abb312(71)
      abb312(49)=spak4e7*abb312(81)*abb312(57)
      abb312(18)=abb312(38)+abb312(18)+abb312(49)+abb312(35)
      abb312(18)=spbe7l6*abb312(18)
      abb312(17)=spbk7l6*abb312(17)
      abb312(35)=abb312(14)*abb312(113)
      abb312(38)=spbl6k2*abb312(59)
      abb312(17)=abb312(38)+abb312(35)+abb312(17)
      abb312(17)=spal6e7*abb312(17)
      abb312(35)=abb312(89)*abb312(25)
      abb312(38)=abb312(35)*abb312(21)
      abb312(35)=abb312(35)*abb312(81)
      abb312(49)=-abb312(35)+2.0_ki*abb312(38)
      abb312(49)=abb312(49)*abb312(102)
      abb312(29)=abb312(29)*spak2e7
      abb312(51)=abb312(81)*abb312(29)
      abb312(29)=abb312(21)*abb312(29)
      abb312(57)=-abb312(51)+2.0_ki*abb312(29)
      abb312(57)=-abb312(57)*abb312(34)
      abb312(49)=abb312(57)+abb312(49)
      abb312(57)=spbe7k1*abb312(5)
      abb312(49)=abb312(57)*abb312(49)
      abb312(71)=-abb312(36)*abb312(66)
      abb312(57)=abb312(57)*abb312(94)
      abb312(76)=abb312(99)*abb312(5)*abb312(76)
      abb312(57)=abb312(57)+abb312(76)
      abb312(57)=spak4e7*abb312(57)
      abb312(49)=abb312(71)+abb312(57)+abb312(49)
      abb312(49)=spak1k2*abb312(49)
      abb312(57)=abb312(36)*abb312(46)
      abb312(71)=abb312(14)*abb312(69)
      abb312(59)=spbk2k1*abb312(59)
      abb312(57)=abb312(59)+abb312(57)+abb312(71)
      abb312(57)=spak1e7*abb312(57)
      abb312(59)=abb312(84)+abb312(96)
      abb312(9)=abb312(9)*abb312(12)*abb312(59)
      abb312(12)=-spbe7l5*abb312(9)
      abb312(16)=abb312(16)*abb312(59)
      abb312(59)=-abb312(16)*abb312(95)
      abb312(12)=abb312(12)+abb312(59)
      abb312(12)=abb312(5)*abb312(12)
      abb312(20)=abb312(82)+abb312(20)
      abb312(20)=abb312(102)*abb312(25)*abb312(20)
      abb312(10)=abb312(50)+abb312(10)
      abb312(10)=-abb312(10)*abb312(34)
      abb312(10)=abb312(10)+abb312(20)
      abb312(10)=abb312(10)*spbl6l5
      abb312(20)=-spbe7l5*abb312(10)
      abb312(12)=abb312(20)+abb312(12)
      abb312(12)=abb312(12)*abb312(65)
      abb312(20)=-abb312(36)*abb312(86)
      abb312(25)=spbe7l6*abb312(53)
      abb312(50)=-abb312(14)*abb312(101)
      abb312(25)=abb312(25)+abb312(50)
      abb312(25)=spak4l6*abb312(25)
      abb312(31)=-spbe7l6*abb312(31)
      abb312(50)=-spak4l5*abb312(91)
      abb312(31)=abb312(31)+abb312(50)
      abb312(31)=spbl5k2*abb312(8)*abb312(31)
      abb312(50)=abb312(14)*abb312(66)
      abb312(50)=abb312(50)-abb312(68)
      abb312(50)=spak1k4*abb312(50)
      abb312(59)=spbl6l5*abb312(100)
      abb312(65)=-spbk7l6*spak2k7*abb312(109)
      abb312(59)=abb312(59)+abb312(65)
      abb312(45)=abb312(59)*abb312(45)
      abb312(21)=-abb312(21)*abb312(107)
      abb312(21)=3.0_ki*abb312(33)+abb312(21)
      abb312(21)=spak2k7*abb312(21)
      abb312(33)=spak4k7*abb312(53)
      abb312(21)=abb312(21)+abb312(33)
      abb312(21)=spbk7e7*abb312(21)
      abb312(33)=-spak1k7*abb312(128)
      abb312(59)=spak4e7*abb312(92)
      abb312(53)=spak4l5*spbe7l5*abb312(53)
      abb312(12)=abb312(33)+abb312(21)+abb312(45)+abb312(50)+abb312(31)+abb312(&
      &25)+abb312(20)+abb312(57)+abb312(53)+abb312(49)+abb312(12)+abb312(59)+ab&
      &b312(18)+abb312(17)
      abb312(12)=2.0_ki*abb312(12)
      abb312(17)=-abb312(70)*abb312(22)
      abb312(15)=abb312(16)*abb312(15)
      abb312(9)=-abb312(9)+abb312(15)
      abb312(9)=abb312(5)*abb312(9)
      abb312(15)=abb312(37)*abb312(82)
      abb312(16)=-abb312(15)*abb312(111)
      abb312(9)=abb312(16)-abb312(10)+abb312(9)+abb312(17)
      abb312(9)=8.0_ki*abb312(9)
      abb312(10)=abb312(14)*spak4e7
      abb312(10)=abb312(10)-abb312(127)
      abb312(10)=4.0_ki*abb312(10)
      abb312(16)=-spbe7l6*abb312(27)
      abb312(13)=-spak4e7*abb312(13)
      abb312(13)=abb312(13)+abb312(16)
      abb312(13)=abb312(13)*abb312(97)
      abb312(16)=abb312(14)*abb312(44)
      abb312(17)=spbe7l6*abb312(118)
      abb312(16)=abb312(17)+abb312(16)+abb312(136)
      abb312(16)=2.0_ki*abb312(16)
      abb312(17)=abb312(51)-abb312(29)
      abb312(17)=abb312(17)*abb312(34)
      abb312(18)=abb312(38)-abb312(35)
      abb312(18)=abb312(18)*abb312(102)
      abb312(17)=abb312(100)+abb312(18)+abb312(17)
      abb312(17)=2.0_ki*abb312(5)*abb312(17)
      abb312(18)=-spak1k2*abb312(36)
      abb312(14)=spak1k4*abb312(14)
      abb312(14)=abb312(18)+abb312(14)
      abb312(14)=2.0_ki*abb312(14)
      abb312(18)=-abb312(36)*abb312(119)
      abb312(15)=-8.0_ki*abb312(15)
      abb312(20)=-spbe7k1*abb312(74)
      abb312(20)=abb312(61)+abb312(20)
      abb312(20)=spbl5k1*abb312(20)
      abb312(21)=-abb312(56)-abb312(105)
      abb312(21)=abb312(21)*abb312(46)
      abb312(22)=-abb312(124)*abb312(69)
      abb312(25)=abb312(131)*abb312(138)
      abb312(20)=abb312(25)+abb312(20)+abb312(21)+abb312(22)
      abb312(20)=2.0_ki*abb312(20)
      R2d312=0.0_ki
      rat2 = rat2 + R2d312
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='312' value='", &
          & R2d312, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd312h3
