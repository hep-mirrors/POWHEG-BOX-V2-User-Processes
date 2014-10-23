module     p0_dbaru_epnebbbarg_abbrevd137h2
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(137), public :: abb137
   complex(ki), public :: R2d137
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
      abb137(1)=1.0_ki/(-es71+es712-es12)
      abb137(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb137(3)=1.0_ki/(-es71+es56-es567+es234)
      abb137(4)=NC**(-1)
      abb137(5)=sqrt2**(-1)
      abb137(6)=es56**(-1)
      abb137(7)=spak2k7**(-1)
      abb137(8)=spak2l5**(-1)
      abb137(9)=spbl5k2**(-1)
      abb137(10)=spak2l6**(-1)
      abb137(11)=1.0_ki/(es34+es567-es12-es234)
      abb137(12)=abb137(1)*abb137(6)*abb137(7)*i_*CVDU*abb137(5)*abb137(2)
      abb137(13)=spak1k4*abb137(12)
      abb137(14)=TR*gW
      abb137(15)=abb137(14)**2
      abb137(16)=abb137(15)*spak1l5
      abb137(17)=abb137(13)*abb137(16)
      abb137(18)=es12*c1
      abb137(19)=abb137(17)*abb137(18)
      abb137(20)=abb137(4)*c4
      abb137(21)=abb137(17)*abb137(20)
      abb137(22)=abb137(21)*es12
      abb137(19)=abb137(19)-abb137(22)
      abb137(22)=abb137(19)*abb137(4)
      abb137(23)=es12*c4
      abb137(24)=abb137(23)*abb137(17)
      abb137(22)=abb137(22)+abb137(24)
      abb137(22)=abb137(22)*abb137(11)
      abb137(25)=abb137(17)*c1
      abb137(21)=abb137(25)-abb137(21)
      abb137(25)=abb137(21)*abb137(4)
      abb137(26)=abb137(17)*c4
      abb137(27)=abb137(25)+abb137(26)
      abb137(28)=es712*abb137(11)
      abb137(29)=es71*abb137(11)
      abb137(28)=abb137(28)-abb137(29)
      abb137(27)=-abb137(27)*abb137(28)
      abb137(30)=abb137(11)*c1
      abb137(31)=abb137(30)*es71
      abb137(32)=abb137(31)*abb137(17)
      abb137(33)=abb137(18)*abb137(11)
      abb137(34)=abb137(33)*abb137(17)
      abb137(35)=abb137(32)+abb137(34)
      abb137(36)=abb137(30)*es712
      abb137(37)=abb137(36)*abb137(17)
      abb137(38)=abb137(35)-abb137(37)
      abb137(38)=abb137(38)*NC
      abb137(22)=abb137(22)+abb137(27)-abb137(38)
      abb137(22)=abb137(22)*spbk3k1
      abb137(13)=abb137(13)*abb137(15)
      abb137(27)=abb137(13)*abb137(18)
      abb137(39)=abb137(13)*abb137(20)
      abb137(40)=abb137(39)*es12
      abb137(27)=abb137(27)-abb137(40)
      abb137(40)=abb137(27)*abb137(4)
      abb137(41)=abb137(23)*abb137(13)
      abb137(40)=abb137(40)+abb137(41)
      abb137(40)=abb137(40)*abb137(11)
      abb137(42)=abb137(13)*c1
      abb137(39)=abb137(42)-abb137(39)
      abb137(42)=abb137(39)*abb137(4)
      abb137(43)=abb137(13)*c4
      abb137(44)=abb137(42)+abb137(43)
      abb137(44)=-abb137(44)*abb137(28)
      abb137(31)=abb137(31)*abb137(13)
      abb137(33)=abb137(33)*abb137(13)
      abb137(45)=abb137(31)+abb137(33)
      abb137(36)=abb137(36)*abb137(13)
      abb137(46)=abb137(45)-abb137(36)
      abb137(46)=abb137(46)*NC
      abb137(40)=abb137(40)+abb137(44)-abb137(46)
      abb137(44)=spbk4k3*spak4l5
      abb137(40)=abb137(40)*abb137(44)
      abb137(22)=abb137(22)+abb137(40)
      abb137(22)=abb137(22)*spbk7l6
      abb137(14)=abb137(14)*mB
      abb137(14)=abb137(14)**2
      abb137(40)=abb137(14)*abb137(10)
      abb137(47)=abb137(9)*spak1k4
      abb137(48)=abb137(47)*abb137(12)*abb137(40)
      abb137(49)=abb137(48)*abb137(18)
      abb137(50)=abb137(48)*abb137(20)
      abb137(51)=abb137(50)*es12
      abb137(51)=abb137(49)-abb137(51)
      abb137(51)=abb137(51)*abb137(4)
      abb137(52)=abb137(48)*c4
      abb137(53)=abb137(52)*es12
      abb137(51)=abb137(51)+abb137(53)
      abb137(51)=abb137(51)*abb137(11)
      abb137(53)=abb137(48)*c1
      abb137(50)=abb137(53)-abb137(50)
      abb137(50)=abb137(50)*abb137(4)
      abb137(53)=abb137(50)+abb137(52)
      abb137(53)=-abb137(53)*abb137(28)
      abb137(49)=abb137(11)*abb137(49)
      abb137(48)=abb137(30)*abb137(48)
      abb137(54)=abb137(48)*es71
      abb137(55)=abb137(49)+abb137(54)
      abb137(56)=abb137(48)*es712
      abb137(57)=abb137(55)-abb137(56)
      abb137(57)=abb137(57)*NC
      abb137(51)=abb137(51)+abb137(53)-abb137(57)
      abb137(53)=spbk4k3*spak2k4
      abb137(58)=spbk3k1*spak1k2
      abb137(53)=abb137(53)-abb137(58)
      abb137(53)=abb137(53)*spbk7k2
      abb137(51)=-abb137(51)*abb137(53)
      abb137(12)=abb137(3)*abb137(12)
      abb137(58)=abb137(12)*spbk7k3
      abb137(59)=abb137(58)*abb137(40)
      abb137(60)=abb137(59)*es12
      abb137(61)=abb137(60)*abb137(20)
      abb137(62)=abb137(60)*c1
      abb137(63)=abb137(61)-abb137(62)
      abb137(63)=abb137(63)*abb137(4)
      abb137(64)=abb137(20)*abb137(59)
      abb137(65)=abb137(59)*c1
      abb137(66)=abb137(64)-abb137(65)
      abb137(66)=abb137(66)*abb137(4)
      abb137(67)=abb137(59)*c4
      abb137(68)=abb137(66)-abb137(67)
      abb137(69)=es712-es71
      abb137(68)=-abb137(68)*abb137(69)
      abb137(70)=abb137(65)*es71
      abb137(71)=abb137(70)+abb137(62)
      abb137(72)=abb137(65)*es712
      abb137(73)=abb137(71)-abb137(72)
      abb137(73)=abb137(73)*NC
      abb137(74)=abb137(60)*c4
      abb137(73)=abb137(73)-abb137(74)
      abb137(63)=abb137(63)+abb137(68)+abb137(73)
      abb137(68)=spak1k2*spak4l5
      abb137(63)=abb137(63)*abb137(68)
      abb137(75)=abb137(58)*c4
      abb137(76)=abb137(75)*abb137(16)
      abb137(77)=abb137(76)*spak1k4
      abb137(78)=abb137(77)*abb137(4)
      abb137(58)=abb137(58)*c1
      abb137(16)=abb137(58)*abb137(16)
      abb137(79)=abb137(16)*spak1k4
      abb137(80)=abb137(78)-abb137(79)
      abb137(80)=abb137(80)*abb137(4)
      abb137(81)=abb137(80)-abb137(77)
      abb137(81)=-abb137(81)*abb137(69)
      abb137(78)=abb137(78)*es12
      abb137(82)=abb137(79)*es12
      abb137(78)=abb137(78)-abb137(82)
      abb137(78)=abb137(78)*abb137(4)
      abb137(83)=abb137(79)*es71
      abb137(82)=abb137(83)+abb137(82)
      abb137(84)=abb137(79)*es712
      abb137(85)=abb137(82)-abb137(84)
      abb137(85)=abb137(85)*NC
      abb137(86)=abb137(77)*es12
      abb137(85)=abb137(85)-abb137(86)
      abb137(78)=abb137(85)+abb137(78)+abb137(81)
      abb137(78)=abb137(78)*spbl6k1
      abb137(81)=spak1l5*abb137(14)*abb137(9)
      abb137(75)=abb137(81)*abb137(75)
      abb137(87)=abb137(75)*abb137(4)
      abb137(58)=abb137(81)*abb137(58)
      abb137(81)=abb137(87)-abb137(58)
      abb137(81)=abb137(81)*abb137(4)
      abb137(88)=abb137(81)-abb137(75)
      abb137(88)=-abb137(88)*abb137(69)
      abb137(87)=abb137(87)*es12
      abb137(89)=abb137(58)*es12
      abb137(87)=abb137(87)-abb137(89)
      abb137(87)=abb137(87)*abb137(4)
      abb137(90)=abb137(58)*es71
      abb137(89)=abb137(90)+abb137(89)
      abb137(91)=abb137(58)*es712
      abb137(92)=abb137(89)-abb137(91)
      abb137(92)=abb137(92)*NC
      abb137(93)=abb137(75)*es12
      abb137(92)=abb137(92)-abb137(93)
      abb137(87)=abb137(92)+abb137(87)+abb137(88)
      abb137(88)=spak2k4*abb137(8)*spbl6k2
      abb137(87)=abb137(87)*abb137(88)
      abb137(94)=abb137(76)*abb137(4)
      abb137(95)=abb137(94)-abb137(16)
      abb137(95)=abb137(95)*abb137(4)
      abb137(96)=abb137(95)-abb137(76)
      abb137(96)=-abb137(96)*abb137(69)
      abb137(94)=abb137(94)*es12
      abb137(97)=abb137(16)*es12
      abb137(94)=abb137(94)-abb137(97)
      abb137(94)=abb137(94)*abb137(4)
      abb137(98)=abb137(16)*es71
      abb137(97)=abb137(98)+abb137(97)
      abb137(99)=abb137(16)*es712
      abb137(100)=abb137(97)-abb137(99)
      abb137(100)=abb137(100)*NC
      abb137(101)=abb137(76)*es12
      abb137(100)=abb137(100)-abb137(101)
      abb137(94)=abb137(100)+abb137(94)+abb137(96)
      abb137(96)=spbl6l5*spak4l5
      abb137(94)=abb137(94)*abb137(96)
      abb137(102)=abb137(64)*spak1l5
      abb137(103)=abb137(65)*spak1l5
      abb137(102)=abb137(102)-abb137(103)
      abb137(102)=abb137(102)*abb137(4)
      abb137(104)=abb137(67)*spak1l5
      abb137(105)=abb137(102)-abb137(104)
      abb137(105)=-abb137(105)*abb137(69)
      abb137(106)=abb137(61)*spak1l5
      abb137(107)=abb137(62)*spak1l5
      abb137(106)=abb137(106)-abb137(107)
      abb137(106)=abb137(106)*abb137(4)
      abb137(108)=abb137(103)*es71
      abb137(109)=abb137(108)+abb137(107)
      abb137(110)=abb137(103)*es712
      abb137(111)=abb137(109)-abb137(110)
      abb137(111)=abb137(111)*NC
      abb137(112)=abb137(74)*spak1l5
      abb137(111)=abb137(111)-abb137(112)
      abb137(105)=abb137(111)+abb137(105)+abb137(106)
      abb137(105)=abb137(105)*spak2k4
      abb137(106)=abb137(9)*c4
      abb137(113)=abb137(106)*abb137(4)
      abb137(114)=abb137(113)*abb137(60)
      abb137(115)=abb137(9)*c1
      abb137(116)=abb137(60)*abb137(115)
      abb137(114)=abb137(114)-abb137(116)
      abb137(114)=abb137(114)*abb137(4)
      abb137(117)=abb137(106)*abb137(59)
      abb137(118)=abb137(117)*abb137(4)
      abb137(119)=abb137(115)*abb137(59)
      abb137(118)=abb137(118)-abb137(119)
      abb137(118)=abb137(118)*abb137(4)
      abb137(120)=abb137(118)-abb137(117)
      abb137(120)=-abb137(120)*abb137(69)
      abb137(121)=abb137(119)*es71
      abb137(122)=abb137(121)+abb137(116)
      abb137(123)=abb137(119)*es712
      abb137(124)=abb137(122)-abb137(123)
      abb137(124)=abb137(124)*NC
      abb137(125)=abb137(60)*abb137(106)
      abb137(124)=abb137(124)-abb137(125)
      abb137(114)=abb137(114)+abb137(120)+abb137(124)
      abb137(120)=spak1k2*spak4l6*spbl6k2
      abb137(114)=abb137(114)*abb137(120)
      abb137(126)=es12**2
      abb137(127)=abb137(126)*abb137(47)
      abb137(64)=abb137(127)*abb137(64)
      abb137(128)=abb137(47)*c1
      abb137(129)=abb137(126)*abb137(128)
      abb137(130)=abb137(129)*abb137(59)
      abb137(64)=abb137(64)-abb137(130)
      abb137(64)=abb137(64)*abb137(4)
      abb137(60)=abb137(60)*abb137(128)
      abb137(131)=abb137(60)*es71
      abb137(132)=abb137(131)+abb137(130)
      abb137(133)=abb137(60)*es712
      abb137(134)=abb137(132)-abb137(133)
      abb137(134)=abb137(134)*NC
      abb137(135)=abb137(127)*abb137(67)
      abb137(134)=abb137(134)-abb137(135)
      abb137(61)=abb137(61)*abb137(47)
      abb137(61)=abb137(61)-abb137(60)
      abb137(61)=abb137(61)*abb137(4)
      abb137(136)=abb137(74)*abb137(47)
      abb137(137)=abb137(61)-abb137(136)
      abb137(137)=abb137(137)*abb137(69)
      abb137(22)=-abb137(22)+abb137(63)+abb137(51)+abb137(78)+abb137(94)-abb137&
      &(105)+abb137(114)-abb137(64)-abb137(87)-abb137(134)+abb137(137)
      abb137(51)=4.0_ki*abb137(22)
      abb137(63)=abb137(126)*abb137(30)
      abb137(64)=-abb137(13)*abb137(63)
      abb137(31)=-2.0_ki*abb137(33)-abb137(31)
      abb137(31)=es71*abb137(31)
      abb137(33)=2.0_ki*abb137(45)-abb137(36)
      abb137(33)=es712*abb137(33)
      abb137(31)=abb137(33)+abb137(64)+abb137(31)
      abb137(31)=NC*abb137(31)
      abb137(33)=2.0_ki*es12
      abb137(36)=abb137(33)+es71
      abb137(36)=abb137(36)*es71
      abb137(36)=abb137(36)+abb137(126)
      abb137(45)=abb137(11)*c4
      abb137(64)=abb137(45)*abb137(13)
      abb137(78)=abb137(64)*abb137(36)
      abb137(87)=es71+es12
      abb137(87)=-es712+2.0_ki*abb137(87)
      abb137(94)=-es712*abb137(64)*abb137(87)
      abb137(31)=abb137(31)+abb137(94)+abb137(78)
      abb137(31)=abb137(31)*abb137(44)
      abb137(63)=-abb137(17)*abb137(63)
      abb137(32)=-2.0_ki*abb137(34)-abb137(32)
      abb137(32)=es71*abb137(32)
      abb137(34)=2.0_ki*abb137(35)-abb137(37)
      abb137(34)=es712*abb137(34)
      abb137(32)=abb137(34)+abb137(63)+abb137(32)
      abb137(32)=NC*abb137(32)
      abb137(34)=abb137(45)*abb137(17)
      abb137(35)=abb137(34)*abb137(36)
      abb137(36)=-es712*abb137(34)*abb137(87)
      abb137(32)=abb137(32)+abb137(36)+abb137(35)
      abb137(32)=spbk3k1*abb137(32)
      abb137(31)=abb137(31)+abb137(32)
      abb137(31)=spbk7l6*abb137(31)
      abb137(32)=abb137(54)+2.0_ki*abb137(49)
      abb137(32)=abb137(32)*es71
      abb137(35)=-abb137(56)+2.0_ki*abb137(55)
      abb137(35)=abb137(35)*es712
      abb137(36)=abb137(48)*abb137(126)
      abb137(32)=-abb137(32)+abb137(35)-abb137(36)
      abb137(32)=abb137(32)*NC
      abb137(35)=abb137(52)*abb137(11)
      abb137(36)=abb137(35)*es12
      abb137(29)=abb137(29)*abb137(52)
      abb137(36)=abb137(36)+abb137(29)
      abb137(37)=abb137(35)*es712
      abb137(45)=-abb137(37)+2.0_ki*abb137(36)
      abb137(45)=abb137(45)*es712
      abb137(49)=abb137(33)*abb137(35)
      abb137(29)=abb137(49)+abb137(29)
      abb137(29)=abb137(29)*es71
      abb137(35)=abb137(35)*abb137(126)
      abb137(29)=abb137(32)+abb137(35)-abb137(45)+abb137(29)
      abb137(29)=abb137(29)*abb137(53)
      abb137(32)=es12**3
      abb137(35)=abb137(32)*abb137(59)*abb137(128)
      abb137(45)=2.0_ki*abb137(130)+abb137(131)
      abb137(45)=es71*abb137(45)
      abb137(49)=-2.0_ki*abb137(132)+abb137(133)
      abb137(49)=es712*abb137(49)
      abb137(35)=abb137(49)+abb137(35)+abb137(45)
      abb137(35)=NC*abb137(35)
      abb137(45)=2.0_ki*abb137(107)+abb137(108)
      abb137(45)=es71*abb137(45)
      abb137(49)=-2.0_ki*abb137(109)+abb137(110)
      abb137(49)=es712*abb137(49)
      abb137(54)=abb137(126)*abb137(103)
      abb137(45)=abb137(49)+abb137(54)+abb137(45)
      abb137(45)=NC*abb137(45)
      abb137(49)=abb137(104)*es71
      abb137(54)=-2.0_ki*abb137(112)-abb137(49)
      abb137(54)=es71*abb137(54)
      abb137(55)=abb137(112)+abb137(49)
      abb137(56)=abb137(104)*es712
      abb137(55)=2.0_ki*abb137(55)-abb137(56)
      abb137(55)=es712*abb137(55)
      abb137(59)=-abb137(126)*abb137(104)
      abb137(45)=abb137(45)+abb137(55)+abb137(59)+abb137(54)
      abb137(45)=spak2k4*abb137(45)
      abb137(54)=-2.0_ki*abb137(62)-abb137(70)
      abb137(54)=es71*abb137(54)
      abb137(55)=2.0_ki*abb137(71)-abb137(72)
      abb137(55)=es712*abb137(55)
      abb137(59)=-abb137(126)*abb137(65)
      abb137(54)=abb137(55)+abb137(59)+abb137(54)
      abb137(54)=NC*abb137(54)
      abb137(55)=abb137(67)*es71
      abb137(59)=2.0_ki*abb137(74)+abb137(55)
      abb137(59)=es71*abb137(59)
      abb137(62)=-abb137(74)-abb137(55)
      abb137(63)=abb137(67)*es712
      abb137(62)=2.0_ki*abb137(62)+abb137(63)
      abb137(62)=es712*abb137(62)
      abb137(70)=abb137(126)*abb137(67)
      abb137(54)=abb137(54)+abb137(62)+abb137(70)+abb137(59)
      abb137(54)=abb137(54)*abb137(68)
      abb137(59)=abb137(58)*abb137(33)
      abb137(59)=abb137(59)+abb137(90)
      abb137(59)=es71*abb137(59)
      abb137(62)=-2.0_ki*abb137(89)+abb137(91)
      abb137(62)=es712*abb137(62)
      abb137(70)=abb137(126)*abb137(58)
      abb137(59)=abb137(62)+abb137(70)+abb137(59)
      abb137(59)=NC*abb137(59)
      abb137(62)=abb137(75)*es71
      abb137(70)=-abb137(75)*abb137(33)
      abb137(70)=abb137(70)-abb137(62)
      abb137(70)=es71*abb137(70)
      abb137(71)=abb137(93)+abb137(62)
      abb137(72)=abb137(75)*es712
      abb137(71)=2.0_ki*abb137(71)-abb137(72)
      abb137(71)=es712*abb137(71)
      abb137(74)=-abb137(126)*abb137(75)
      abb137(59)=abb137(59)+abb137(71)+abb137(74)+abb137(70)
      abb137(59)=abb137(59)*abb137(88)
      abb137(70)=-abb137(16)*abb137(33)
      abb137(70)=abb137(70)-abb137(98)
      abb137(70)=es71*abb137(70)
      abb137(71)=2.0_ki*abb137(97)-abb137(99)
      abb137(71)=es712*abb137(71)
      abb137(74)=-abb137(126)*abb137(16)
      abb137(70)=abb137(71)+abb137(74)+abb137(70)
      abb137(70)=NC*abb137(70)
      abb137(71)=abb137(76)*es71
      abb137(74)=abb137(76)*abb137(33)
      abb137(74)=abb137(74)+abb137(71)
      abb137(74)=es71*abb137(74)
      abb137(78)=-abb137(101)-abb137(71)
      abb137(87)=abb137(76)*es712
      abb137(78)=2.0_ki*abb137(78)+abb137(87)
      abb137(78)=es712*abb137(78)
      abb137(89)=abb137(126)*abb137(76)
      abb137(70)=abb137(70)+abb137(78)+abb137(89)+abb137(74)
      abb137(70)=abb137(70)*abb137(96)
      abb137(74)=-2.0_ki*abb137(116)-abb137(121)
      abb137(74)=es71*abb137(74)
      abb137(78)=2.0_ki*abb137(122)-abb137(123)
      abb137(78)=es712*abb137(78)
      abb137(89)=-abb137(126)*abb137(119)
      abb137(74)=abb137(78)+abb137(89)+abb137(74)
      abb137(74)=NC*abb137(74)
      abb137(78)=abb137(117)*es71
      abb137(89)=2.0_ki*abb137(125)+abb137(78)
      abb137(89)=es71*abb137(89)
      abb137(90)=-abb137(125)-abb137(78)
      abb137(91)=abb137(117)*es712
      abb137(90)=2.0_ki*abb137(90)+abb137(91)
      abb137(90)=es712*abb137(90)
      abb137(93)=abb137(126)*abb137(117)
      abb137(74)=abb137(74)+abb137(90)+abb137(93)+abb137(89)
      abb137(74)=abb137(74)*abb137(120)
      abb137(89)=-abb137(79)*abb137(33)
      abb137(83)=abb137(89)-abb137(83)
      abb137(83)=es71*abb137(83)
      abb137(82)=2.0_ki*abb137(82)-abb137(84)
      abb137(82)=es712*abb137(82)
      abb137(84)=-abb137(126)*abb137(79)
      abb137(82)=abb137(82)+abb137(84)+abb137(83)
      abb137(82)=NC*abb137(82)
      abb137(83)=abb137(77)*es71
      abb137(33)=abb137(77)*abb137(33)
      abb137(33)=abb137(33)+abb137(83)
      abb137(33)=es71*abb137(33)
      abb137(84)=-abb137(86)-abb137(83)
      abb137(86)=abb137(77)*es712
      abb137(84)=2.0_ki*abb137(84)+abb137(86)
      abb137(84)=es712*abb137(84)
      abb137(89)=abb137(126)*abb137(77)
      abb137(33)=abb137(82)+abb137(84)+abb137(89)+abb137(33)
      abb137(33)=spbl6k1*abb137(33)
      abb137(32)=-abb137(32)*abb137(47)*abb137(67)
      abb137(82)=abb137(136)*es71
      abb137(84)=-2.0_ki*abb137(135)-abb137(82)
      abb137(84)=es71*abb137(84)
      abb137(89)=abb137(135)+abb137(82)
      abb137(90)=abb137(136)*es712
      abb137(89)=2.0_ki*abb137(89)-abb137(90)
      abb137(89)=es712*abb137(89)
      abb137(29)=abb137(33)+abb137(74)+abb137(70)+abb137(59)+abb137(29)+abb137(&
      &31)+abb137(54)+abb137(45)+abb137(35)+abb137(89)+abb137(32)+abb137(84)
      abb137(29)=8.0_ki*abb137(29)
      abb137(31)=16.0_ki*abb137(22)
      abb137(32)=-abb137(57)+abb137(36)-abb137(37)
      abb137(32)=-abb137(32)*abb137(53)
      abb137(33)=-abb137(56)+abb137(49)-abb137(111)
      abb137(33)=spak2k4*abb137(33)
      abb137(35)=abb137(63)-abb137(55)+abb137(73)
      abb137(35)=abb137(35)*abb137(68)
      abb137(36)=abb137(69)-es12
      abb137(37)=abb137(64)*abb137(36)
      abb137(37)=abb137(46)+abb137(37)
      abb137(37)=abb137(37)*abb137(44)
      abb137(34)=abb137(34)*abb137(36)
      abb137(34)=abb137(38)+abb137(34)
      abb137(34)=spbk3k1*abb137(34)
      abb137(34)=abb137(37)+abb137(34)
      abb137(34)=spbk7l6*abb137(34)
      abb137(37)=-abb137(72)+abb137(62)-abb137(92)
      abb137(37)=abb137(37)*abb137(88)
      abb137(45)=abb137(87)-abb137(71)+abb137(100)
      abb137(45)=abb137(45)*abb137(96)
      abb137(49)=abb137(91)-abb137(78)+abb137(124)
      abb137(49)=abb137(49)*abb137(120)
      abb137(54)=abb137(86)-abb137(83)+abb137(85)
      abb137(54)=spbl6k1*abb137(54)
      abb137(32)=abb137(54)+abb137(49)+abb137(45)+abb137(37)+abb137(32)+abb137(&
      &34)+abb137(35)+abb137(33)-abb137(90)+abb137(82)-abb137(134)
      abb137(32)=8.0_ki*abb137(32)
      abb137(22)=-8.0_ki*abb137(22)
      abb137(33)=abb137(40)*abb137(12)
      abb137(34)=abb137(33)*spak1l5
      abb137(35)=abb137(34)*abb137(20)
      abb137(37)=abb137(34)*c1
      abb137(40)=abb137(35)-abb137(37)
      abb137(45)=2.0_ki*abb137(4)
      abb137(49)=abb137(40)*abb137(45)
      abb137(54)=abb137(34)*c4
      abb137(49)=abb137(49)-abb137(54)
      abb137(49)=abb137(49)*abb137(69)
      abb137(55)=abb137(34)*abb137(18)
      abb137(35)=-es12*abb137(35)
      abb137(35)=abb137(55)+abb137(35)
      abb137(35)=abb137(35)*abb137(45)
      abb137(56)=abb137(37)*abb137(69)
      abb137(55)=-abb137(55)+abb137(56)
      abb137(55)=NC*abb137(55)
      abb137(34)=abb137(23)*abb137(34)
      abb137(34)=abb137(55)+abb137(34)+abb137(35)+abb137(49)
      abb137(34)=spak2k4*abb137(34)
      abb137(35)=abb137(33)*c1
      abb137(49)=abb137(20)*abb137(33)
      abb137(55)=abb137(35)-abb137(49)
      abb137(56)=abb137(55)*abb137(45)
      abb137(57)=abb137(33)*c4
      abb137(56)=abb137(56)+abb137(57)
      abb137(56)=abb137(56)*abb137(69)
      abb137(59)=abb137(18)*abb137(33)
      abb137(62)=abb137(33)*es12
      abb137(63)=abb137(20)*abb137(62)
      abb137(63)=-abb137(59)+abb137(63)
      abb137(63)=abb137(63)*abb137(45)
      abb137(64)=-abb137(35)*abb137(69)
      abb137(59)=abb137(59)+abb137(64)
      abb137(59)=NC*abb137(59)
      abb137(64)=-abb137(33)*abb137(23)
      abb137(56)=abb137(59)+abb137(64)+abb137(63)+abb137(56)
      abb137(56)=abb137(56)*abb137(68)
      abb137(12)=abb137(12)*spak1l5
      abb137(15)=abb137(12)*abb137(15)
      abb137(59)=abb137(15)*abb137(20)
      abb137(63)=abb137(15)*c1
      abb137(64)=abb137(59)-abb137(63)
      abb137(70)=abb137(64)*abb137(45)
      abb137(71)=abb137(15)*c4
      abb137(70)=abb137(70)-abb137(71)
      abb137(70)=-abb137(70)*abb137(69)
      abb137(72)=abb137(15)*abb137(18)
      abb137(59)=es12*abb137(59)
      abb137(59)=-abb137(72)+abb137(59)
      abb137(59)=abb137(59)*abb137(45)
      abb137(73)=-abb137(63)*abb137(69)
      abb137(72)=abb137(72)+abb137(73)
      abb137(72)=NC*abb137(72)
      abb137(73)=-abb137(15)*abb137(23)
      abb137(59)=abb137(72)+abb137(73)+abb137(59)+abb137(70)
      abb137(59)=abb137(59)*abb137(96)
      abb137(70)=-abb137(115)+abb137(113)
      abb137(70)=abb137(45)*abb137(70)
      abb137(70)=-abb137(106)+abb137(70)
      abb137(70)=abb137(62)*abb137(70)
      abb137(72)=abb137(113)*abb137(33)
      abb137(73)=abb137(115)*abb137(33)
      abb137(72)=abb137(72)-abb137(73)
      abb137(74)=abb137(72)*abb137(45)
      abb137(78)=abb137(106)*abb137(33)
      abb137(74)=abb137(74)-abb137(78)
      abb137(74)=-abb137(74)*abb137(69)
      abb137(82)=-abb137(73)*abb137(69)
      abb137(83)=abb137(115)*abb137(62)
      abb137(82)=abb137(83)+abb137(82)
      abb137(82)=NC*abb137(82)
      abb137(70)=abb137(82)+abb137(74)+abb137(70)
      abb137(70)=abb137(70)*abb137(120)
      abb137(15)=abb137(15)*spak1k4
      abb137(20)=abb137(15)*abb137(20)
      abb137(74)=abb137(15)*c1
      abb137(82)=abb137(20)-abb137(74)
      abb137(83)=abb137(82)*abb137(45)
      abb137(84)=abb137(15)*c4
      abb137(83)=abb137(83)-abb137(84)
      abb137(83)=-abb137(83)*abb137(69)
      abb137(18)=abb137(15)*abb137(18)
      abb137(20)=es12*abb137(20)
      abb137(20)=-abb137(18)+abb137(20)
      abb137(20)=abb137(20)*abb137(45)
      abb137(85)=-abb137(74)*abb137(69)
      abb137(18)=abb137(18)+abb137(85)
      abb137(18)=NC*abb137(18)
      abb137(15)=-abb137(23)*abb137(15)
      abb137(15)=abb137(18)+abb137(15)+abb137(20)+abb137(83)
      abb137(15)=spbl6k1*abb137(15)
      abb137(18)=abb137(129)*abb137(33)
      abb137(20)=-abb137(127)*abb137(49)
      abb137(20)=abb137(18)+abb137(20)
      abb137(20)=abb137(20)*abb137(45)
      abb137(12)=abb137(12)*abb137(14)
      abb137(14)=abb137(12)*abb137(113)
      abb137(23)=abb137(12)*abb137(115)
      abb137(14)=abb137(14)-abb137(23)
      abb137(33)=abb137(14)*abb137(45)
      abb137(23)=abb137(23)*NC
      abb137(12)=abb137(12)*abb137(106)
      abb137(33)=abb137(23)+abb137(33)-abb137(12)
      abb137(33)=abb137(88)*abb137(36)*abb137(33)
      abb137(36)=abb137(47)*es12
      abb137(47)=abb137(49)*abb137(36)
      abb137(49)=abb137(62)*abb137(128)
      abb137(47)=abb137(47)-abb137(49)
      abb137(62)=abb137(47)*abb137(45)
      abb137(36)=abb137(57)*abb137(36)
      abb137(62)=abb137(62)-abb137(36)
      abb137(62)=abb137(62)*abb137(69)
      abb137(83)=abb137(127)*abb137(57)
      abb137(69)=abb137(49)*abb137(69)
      abb137(18)=-abb137(18)+abb137(69)
      abb137(18)=NC*abb137(18)
      abb137(15)=abb137(15)+abb137(70)+abb137(59)+abb137(33)+abb137(56)+abb137(&
      &34)+abb137(18)+abb137(83)+abb137(20)+abb137(62)
      abb137(15)=spbk3k2*abb137(15)
      abb137(18)=abb137(39)*abb137(45)
      abb137(18)=abb137(18)+abb137(43)
      abb137(18)=abb137(18)*abb137(28)
      abb137(20)=-abb137(27)*abb137(45)
      abb137(20)=-abb137(41)+abb137(20)
      abb137(20)=abb137(11)*abb137(20)
      abb137(18)=abb137(46)+abb137(20)+abb137(18)
      abb137(18)=abb137(18)*abb137(44)
      abb137(20)=abb137(21)*abb137(45)
      abb137(20)=abb137(20)+abb137(26)
      abb137(20)=abb137(20)*abb137(28)
      abb137(19)=-abb137(19)*abb137(45)
      abb137(19)=-abb137(24)+abb137(19)
      abb137(19)=abb137(11)*abb137(19)
      abb137(19)=abb137(38)+abb137(19)+abb137(20)
      abb137(19)=spbk3k1*abb137(19)
      abb137(18)=abb137(18)+abb137(19)
      abb137(18)=spbl6k2*abb137(18)
      abb137(15)=abb137(15)+abb137(18)
      abb137(15)=4.0_ki*abb137(15)
      abb137(18)=abb137(4)*abb137(40)
      abb137(19)=-NC*abb137(37)
      abb137(18)=abb137(19)+abb137(54)+abb137(18)
      abb137(18)=spak2k4*abb137(18)
      abb137(19)=abb137(4)*abb137(55)
      abb137(20)=NC*abb137(35)
      abb137(19)=abb137(20)-abb137(57)+abb137(19)
      abb137(19)=abb137(19)*abb137(68)
      abb137(14)=abb137(4)*abb137(14)
      abb137(12)=-abb137(23)+abb137(12)+abb137(14)
      abb137(12)=abb137(12)*abb137(88)
      abb137(14)=-abb137(4)*abb137(64)
      abb137(20)=NC*abb137(63)
      abb137(14)=abb137(20)-abb137(71)+abb137(14)
      abb137(14)=abb137(14)*abb137(96)
      abb137(20)=-abb137(4)*abb137(72)
      abb137(21)=NC*abb137(73)
      abb137(20)=abb137(21)-abb137(78)+abb137(20)
      abb137(20)=abb137(20)*abb137(120)
      abb137(21)=-abb137(4)*abb137(82)
      abb137(23)=NC*abb137(74)
      abb137(21)=abb137(23)-abb137(84)+abb137(21)
      abb137(21)=spbl6k1*abb137(21)
      abb137(23)=abb137(4)*abb137(47)
      abb137(24)=-NC*abb137(49)
      abb137(12)=abb137(21)+abb137(20)+abb137(14)+abb137(12)+abb137(19)+abb137(&
      &18)+abb137(24)+abb137(36)+abb137(23)
      abb137(12)=spbk3k2*abb137(12)
      abb137(14)=abb137(25)-abb137(26)
      abb137(14)=abb137(14)*abb137(11)
      abb137(18)=abb137(30)*NC
      abb137(17)=abb137(18)*abb137(17)
      abb137(14)=abb137(14)+abb137(17)
      abb137(14)=abb137(14)*spbk3k1
      abb137(17)=abb137(42)-abb137(43)
      abb137(17)=abb137(17)*abb137(11)
      abb137(13)=abb137(18)*abb137(13)
      abb137(13)=abb137(17)+abb137(13)
      abb137(13)=abb137(13)*abb137(44)
      abb137(13)=abb137(14)+abb137(13)
      abb137(14)=spbl6k2*abb137(13)
      abb137(12)=abb137(12)+abb137(14)
      abb137(12)=16.0_ki*abb137(12)
      abb137(14)=-NC*abb137(103)
      abb137(14)=abb137(14)+abb137(104)+abb137(102)
      abb137(14)=spak2k4*abb137(14)
      abb137(17)=NC*abb137(65)
      abb137(17)=abb137(17)-abb137(67)-abb137(66)
      abb137(17)=abb137(17)*abb137(68)
      abb137(13)=spbk7l6*abb137(13)
      abb137(18)=abb137(50)-abb137(52)
      abb137(18)=abb137(18)*abb137(11)
      abb137(19)=abb137(48)*NC
      abb137(18)=abb137(18)+abb137(19)
      abb137(18)=abb137(18)*abb137(53)
      abb137(19)=-NC*abb137(58)
      abb137(19)=abb137(19)+abb137(75)+abb137(81)
      abb137(19)=abb137(19)*abb137(88)
      abb137(16)=NC*abb137(16)
      abb137(16)=abb137(16)-abb137(76)-abb137(95)
      abb137(16)=abb137(16)*abb137(96)
      abb137(20)=NC*abb137(119)
      abb137(20)=abb137(20)-abb137(117)-abb137(118)
      abb137(20)=abb137(20)*abb137(120)
      abb137(21)=NC*abb137(79)
      abb137(21)=abb137(21)-abb137(77)-abb137(80)
      abb137(21)=spbl6k1*abb137(21)
      abb137(23)=-NC*abb137(60)
      abb137(13)=abb137(21)+abb137(20)+abb137(16)+abb137(19)+abb137(18)+abb137(&
      &13)+abb137(17)+abb137(14)+abb137(23)+abb137(136)+abb137(61)
      abb137(13)=8.0_ki*abb137(13)
      R2d137=abb137(51)
      rat2 = rat2 + R2d137
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='137' value='", &
          & R2d137, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd137h2
