module     p0_dbaru_epnebbbarg_abbrevd314h2
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(171), public :: abb314
   complex(ki), public :: R2d314
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
      abb314(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb314(2)=NC**(-1)
      abb314(3)=es234**(-1)
      abb314(4)=spak2l5**(-1)
      abb314(5)=spbl5k2**(-1)
      abb314(6)=spak2l6**(-1)
      abb314(7)=sqrt(mB**2)
      abb314(8)=i_*CVDU
      abb314(9)=abb314(8)*abb314(1)
      abb314(10)=TR*gW
      abb314(10)=abb314(10)**2
      abb314(11)=abb314(10)*abb314(3)*abb314(9)
      abb314(12)=abb314(11)*abb314(6)
      abb314(13)=c2-c4
      abb314(14)=abb314(13)*abb314(12)
      abb314(15)=-mB*abb314(14)
      abb314(16)=spak2k4*spbk3k2
      abb314(17)=-abb314(16)*abb314(15)
      abb314(18)=c1-c3
      abb314(19)=-abb314(18)*abb314(11)*abb314(2)
      abb314(20)=-abb314(16)*abb314(19)
      abb314(21)=abb314(6)*mB
      abb314(22)=-abb314(21)*abb314(20)
      abb314(17)=abb314(17)+abb314(22)
      abb314(22)=abb314(7)*spbe7k2
      abb314(23)=abb314(17)*abb314(22)
      abb314(24)=abb314(11)*abb314(5)
      abb314(25)=-abb314(24)*abb314(13)
      abb314(26)=mB**2
      abb314(27)=abb314(16)*abb314(26)
      abb314(28)=-abb314(27)*abb314(25)
      abb314(29)=abb314(26)*abb314(5)
      abb314(30)=-abb314(29)*abb314(20)
      abb314(28)=abb314(28)+abb314(30)
      abb314(30)=abb314(4)*spbe7k2
      abb314(31)=abb314(28)*abb314(30)
      abb314(32)=abb314(31)*spbl6k2
      abb314(27)=abb314(27)*abb314(14)
      abb314(33)=abb314(26)*abb314(6)
      abb314(34)=-abb314(33)*abb314(20)
      abb314(27)=abb314(27)+abb314(34)
      abb314(34)=abb314(27)*spbe7k2
      abb314(23)=abb314(32)+abb314(23)-abb314(34)
      abb314(32)=spak1k2*spal5e7
      abb314(23)=abb314(23)*abb314(32)
      abb314(34)=abb314(11)*spbk3k2
      abb314(35)=abb314(34)*abb314(13)
      abb314(36)=-spak2k4*abb314(35)
      abb314(20)=abb314(20)+abb314(36)
      abb314(36)=abb314(20)*spal5e7
      abb314(37)=spbl6k2*spak1l5
      abb314(38)=abb314(36)*abb314(37)
      abb314(39)=spak3k4*spbk3k2
      abb314(40)=-abb314(39)*abb314(19)
      abb314(41)=-spak3k4*abb314(13)
      abb314(34)=-abb314(34)*abb314(41)
      abb314(34)=-abb314(34)+abb314(40)
      abb314(42)=abb314(34)*spal5e7
      abb314(43)=spbl6k3*spak1l5
      abb314(44)=abb314(43)*abb314(42)
      abb314(38)=abb314(38)-abb314(44)
      abb314(38)=abb314(38)*spbe7l5
      abb314(44)=spak1e7*spbk3k2
      abb314(45)=-abb314(13)*abb314(11)*abb314(44)
      abb314(46)=abb314(33)*spak2k4
      abb314(47)=-abb314(46)*abb314(45)
      abb314(48)=abb314(44)*spak2k4
      abb314(49)=-abb314(48)*abb314(19)
      abb314(50)=-abb314(33)*abb314(49)
      abb314(47)=abb314(50)+abb314(47)
      abb314(50)=-spak2k4*abb314(45)
      abb314(50)=abb314(50)-abb314(49)
      abb314(51)=-abb314(21)*abb314(50)
      abb314(52)=abb314(51)*abb314(7)
      abb314(53)=abb314(47)+abb314(52)
      abb314(54)=spbk7e7*spal5k7
      abb314(55)=2.0_ki*abb314(54)
      abb314(56)=-abb314(53)*abb314(55)
      abb314(24)=-abb314(13)*abb314(24)*abb314(44)
      abb314(57)=-mB*abb314(24)
      abb314(58)=-mB*abb314(19)
      abb314(59)=abb314(44)*abb314(5)
      abb314(60)=-abb314(59)*abb314(58)
      abb314(57)=abb314(60)+abb314(57)
      abb314(60)=-spak2k4*abb314(57)
      abb314(61)=abb314(60)*abb314(22)
      abb314(62)=-abb314(26)*abb314(24)
      abb314(63)=-spak2k4*abb314(62)
      abb314(49)=-abb314(29)*abb314(49)
      abb314(49)=abb314(63)-abb314(49)
      abb314(63)=abb314(49)*abb314(4)
      abb314(64)=-abb314(55)*abb314(63)
      abb314(64)=abb314(61)+abb314(64)
      abb314(64)=spbl6k2*abb314(64)
      abb314(65)=spbk3k2**2
      abb314(66)=abb314(5)**2*mB**4
      abb314(12)=abb314(41)*abb314(12)*abb314(65)*abb314(66)
      abb314(41)=-spak1e7*abb314(12)
      abb314(67)=-spak3k4*abb314(19)
      abb314(68)=abb314(65)*spak1e7
      abb314(69)=abb314(66)*abb314(6)
      abb314(70)=-abb314(67)*abb314(68)*abb314(69)
      abb314(41)=abb314(41)+abb314(70)
      abb314(70)=spak1k2*abb314(4)
      abb314(71)=abb314(41)*abb314(70)
      abb314(72)=2.0_ki*spbe7k1
      abb314(73)=abb314(72)*abb314(71)
      abb314(40)=-abb314(21)*abb314(40)
      abb314(74)=-abb314(39)*abb314(15)
      abb314(40)=abb314(74)+abb314(40)
      abb314(40)=abb314(40)*abb314(7)
      abb314(74)=abb314(40)*abb314(32)
      abb314(75)=abb314(74)*spbe7k3
      abb314(56)=abb314(38)+abb314(75)+abb314(73)-abb314(23)+abb314(56)+abb314(&
      &64)
      abb314(56)=es71*abb314(56)
      abb314(64)=abb314(53)*abb314(54)
      abb314(73)=abb314(71)*spbe7k1
      abb314(76)=-spak3k4*abb314(62)
      abb314(77)=-abb314(44)*abb314(67)
      abb314(78)=-abb314(29)*abb314(77)
      abb314(76)=abb314(76)+abb314(78)
      abb314(78)=abb314(76)*abb314(4)
      abb314(79)=abb314(78)*abb314(54)
      abb314(80)=abb314(79)*spbl6k3
      abb314(81)=abb314(63)*spbl6k2
      abb314(82)=abb314(81)*abb314(54)
      abb314(64)=-abb314(64)+abb314(73)+abb314(80)-abb314(82)
      abb314(73)=es12-es712
      abb314(80)=-2.0_ki*abb314(73)
      abb314(64)=-abb314(64)*abb314(80)
      abb314(83)=-spak3k4*abb314(45)
      abb314(83)=abb314(83)+abb314(77)
      abb314(84)=spal5k7**2
      abb314(85)=-spbk7e7*abb314(83)*abb314(84)
      abb314(86)=abb314(83)*spbe7k1
      abb314(87)=abb314(86)*spak1l5
      abb314(88)=spal5k7*abb314(87)
      abb314(85)=abb314(85)+abb314(88)
      abb314(85)=spbl6k3*abb314(85)
      abb314(88)=spbl6k2*spbk7e7
      abb314(84)=abb314(50)*abb314(84)*abb314(88)
      abb314(89)=-abb314(50)*abb314(37)
      abb314(90)=spbe7k1*spal5k7*abb314(89)
      abb314(84)=abb314(85)+abb314(84)+abb314(90)
      abb314(84)=spbk7l5*abb314(84)
      abb314(41)=abb314(41)*spbk7e7
      abb314(85)=abb314(73)+es71
      abb314(90)=-abb314(41)*abb314(4)*abb314(85)
      abb314(91)=-abb314(21)*abb314(45)
      abb314(92)=-spak3k4*abb314(91)
      abb314(93)=-abb314(21)*abb314(77)
      abb314(92)=abb314(93)+abb314(92)
      abb314(92)=abb314(92)*abb314(7)
      abb314(93)=abb314(92)*spbk7k3
      abb314(94)=abb314(54)*abb314(93)
      abb314(90)=abb314(94)+abb314(90)
      abb314(90)=spak2k7*abb314(90)
      abb314(84)=abb314(84)+abb314(90)
      abb314(90)=spak3k4*mB
      abb314(94)=-abb314(90)*abb314(24)
      abb314(59)=-abb314(67)*abb314(59)*mB
      abb314(59)=abb314(59)+abb314(94)
      abb314(94)=abb314(59)*abb314(7)
      abb314(95)=spbk7k2*spak1k7
      abb314(96)=abb314(95)*abb314(94)
      abb314(97)=spbk7k2*spal5k7
      abb314(98)=abb314(70)*abb314(97)
      abb314(99)=-abb314(76)*abb314(98)
      abb314(96)=abb314(96)+abb314(99)
      abb314(96)=abb314(96)*abb314(72)
      abb314(59)=abb314(59)*abb314(22)
      abb314(99)=-abb314(25)*abb314(39)*abb314(26)
      abb314(100)=-abb314(29)*abb314(19)
      abb314(101)=-abb314(39)*abb314(100)
      abb314(99)=abb314(101)+abb314(99)
      abb314(101)=abb314(99)*abb314(30)
      abb314(102)=abb314(101)*abb314(32)
      abb314(59)=abb314(59)+abb314(102)
      abb314(102)=abb314(55)*abb314(78)
      abb314(102)=abb314(102)+abb314(59)
      abb314(102)=es71*abb314(102)
      abb314(96)=abb314(96)+abb314(102)
      abb314(96)=spbl6k3*abb314(96)
      abb314(102)=-abb314(55)*abb314(73)
      abb314(103)=2.0_ki*spal5k7
      abb314(104)=abb314(103)*spbe7k1
      abb314(105)=spak1k2*spbk7k2
      abb314(106)=abb314(105)*abb314(104)
      abb314(102)=abb314(106)+abb314(102)
      abb314(106)=abb314(33)*spak3k4
      abb314(107)=abb314(106)*abb314(24)
      abb314(108)=abb314(29)*abb314(6)
      abb314(109)=-abb314(108)*abb314(77)
      abb314(107)=abb314(109)+abb314(107)
      abb314(102)=abb314(107)*abb314(102)
      abb314(109)=-abb314(108)*abb314(19)
      abb314(110)=-abb314(33)*abb314(25)
      abb314(110)=abb314(109)-abb314(110)
      abb314(111)=abb314(39)*abb314(110)
      abb314(32)=spbe7k2*abb314(111)*abb314(32)
      abb314(112)=-abb314(107)*abb314(55)
      abb314(112)=abb314(112)+abb314(32)
      abb314(112)=es71*abb314(112)
      abb314(102)=abb314(112)+abb314(102)
      abb314(102)=spbl5k3*abb314(102)
      abb314(81)=abb314(53)+abb314(81)
      abb314(81)=abb314(105)*spal5k7*abb314(81)
      abb314(112)=spbl6k2*abb314(7)
      abb314(113)=abb314(60)*abb314(112)*abb314(95)
      abb314(81)=abb314(113)+abb314(81)
      abb314(81)=abb314(81)*abb314(72)
      abb314(93)=-spak1k2*abb314(93)*abb314(104)
      abb314(56)=abb314(102)+abb314(93)+abb314(96)+abb314(81)+abb314(64)+abb314&
      &(56)+2.0_ki*abb314(84)
      abb314(56)=2.0_ki*abb314(56)
      abb314(64)=-abb314(65)*abb314(67)
      abb314(81)=-abb314(69)*abb314(64)
      abb314(12)=abb314(81)+abb314(12)
      abb314(12)=abb314(12)*abb314(70)
      abb314(17)=abb314(17)*abb314(7)
      abb314(70)=abb314(27)-abb314(17)
      abb314(70)=abb314(70)*spak1l5
      abb314(12)=abb314(12)-abb314(70)
      abb314(70)=spbl5k3*abb314(111)*spak1l5
      abb314(70)=abb314(70)-abb314(12)
      abb314(81)=es712-es71
      abb314(70)=abb314(81)*abb314(70)
      abb314(58)=-abb314(5)*abb314(58)
      abb314(84)=-mB*abb314(25)
      abb314(58)=abb314(58)+abb314(84)
      abb314(84)=abb314(58)*abb314(16)
      abb314(93)=-abb314(7)*abb314(84)
      abb314(93)=abb314(93)+abb314(28)
      abb314(93)=abb314(93)*abb314(95)
      abb314(96)=abb314(28)*abb314(98)
      abb314(93)=abb314(93)+abb314(96)
      abb314(93)=spbl6k2*abb314(93)
      abb314(39)=abb314(58)*abb314(39)
      abb314(96)=abb314(7)*abb314(39)
      abb314(96)=abb314(96)-abb314(99)
      abb314(96)=abb314(96)*abb314(95)
      abb314(98)=-abb314(99)*abb314(98)
      abb314(96)=abb314(96)+abb314(98)
      abb314(96)=spbl6k3*abb314(96)
      abb314(98)=abb314(37)*abb314(4)
      abb314(28)=abb314(98)*abb314(28)
      abb314(43)=abb314(4)*abb314(99)*abb314(43)
      abb314(43)=-abb314(28)+abb314(43)
      abb314(43)=es12*abb314(43)
      abb314(99)=abb314(37)*abb314(20)
      abb314(102)=abb314(34)*spak1l5
      abb314(104)=abb314(102)*spbl6k3
      abb314(99)=abb314(99)-abb314(104)
      abb314(104)=spbk7l5*spal5k7
      abb314(113)=-abb314(99)*abb314(104)
      abb314(114)=spbl6k2*abb314(20)
      abb314(115)=-spbl6k3*abb314(34)
      abb314(114)=abb314(114)+abb314(115)
      abb314(114)=spbl5k1*abb314(114)*spak1l5**2
      abb314(115)=abb314(40)*spak1l5
      abb314(116)=-spak2k7*spbk7k3
      abb314(117)=spbk3k1*spak1k2
      abb314(116)=abb314(117)+abb314(116)
      abb314(116)=abb314(115)*abb314(116)
      abb314(43)=abb314(114)+abb314(113)+abb314(43)+abb314(96)+abb314(116)+abb3&
      &14(93)+abb314(70)
      abb314(43)=8.0_ki*abb314(43)
      abb314(32)=abb314(32)*spbl5k3
      abb314(23)=abb314(38)-abb314(23)+abb314(32)
      abb314(32)=abb314(59)*spbl6k3
      abb314(38)=abb314(61)*spbl6k2
      abb314(32)=abb314(32)+abb314(38)+abb314(23)+abb314(75)
      abb314(32)=4.0_ki*abb314(32)
      abb314(38)=abb314(25)*abb314(68)*abb314(106)
      abb314(67)=-abb314(68)*abb314(67)
      abb314(70)=-abb314(108)*abb314(67)
      abb314(38)=abb314(70)+abb314(38)
      abb314(70)=abb314(38)*spak1k2
      abb314(70)=abb314(70)-abb314(89)
      abb314(70)=abb314(70)*spbe7k1
      abb314(38)=spbk7e7*abb314(38)*spak2k7
      abb314(38)=abb314(70)-abb314(38)
      abb314(70)=abb314(83)*abb314(54)
      abb314(70)=abb314(70)-abb314(87)
      abb314(75)=spbl6k3*abb314(70)
      abb314(87)=-abb314(50)*abb314(54)
      abb314(89)=spbl6k2*abb314(87)
      abb314(75)=abb314(75)+abb314(89)+abb314(38)
      abb314(75)=4.0_ki*abb314(75)
      abb314(89)=-abb314(46)*abb314(24)
      abb314(48)=-abb314(48)*abb314(109)
      abb314(48)=abb314(89)+abb314(48)
      abb314(89)=abb314(97)*abb314(48)
      abb314(93)=-spbk3k2*abb314(19)
      abb314(35)=abb314(93)-abb314(35)
      abb314(93)=spak1k7*spal5e7
      abb314(96)=abb314(35)*abb314(93)
      abb314(113)=abb314(96)*spbk7l6
      abb314(114)=abb314(113)*spak4l5
      abb314(89)=abb314(89)+abb314(114)
      abb314(89)=abb314(89)*spbe7l5
      abb314(44)=-abb314(44)*abb314(19)
      abb314(114)=abb314(45)+abb314(44)
      abb314(116)=spak4l5*spbe7l6
      abb314(117)=abb314(116)*abb314(114)
      abb314(118)=abb314(117)*spal5k7
      abb314(16)=abb314(16)*abb314(110)
      abb314(119)=abb314(93)*spbe7k2
      abb314(120)=abb314(16)*abb314(119)
      abb314(118)=abb314(118)-abb314(120)
      abb314(118)=abb314(118)*spbk7l5
      abb314(121)=abb314(93)*spbk7l6
      abb314(122)=abb314(121)*abb314(31)
      abb314(123)=-spbk3k2*abb314(58)
      abb314(124)=abb314(22)*spbk7l6
      abb314(125)=spak4e7*spak1k7
      abb314(126)=abb314(124)*abb314(125)
      abb314(127)=abb314(126)*abb314(123)
      abb314(89)=abb314(89)-abb314(118)+abb314(122)+abb314(127)
      abb314(118)=abb314(52)*abb314(54)
      abb314(122)=abb314(57)*abb314(7)
      abb314(127)=abb314(122)*spbe7l6
      abb314(128)=spak4k7*spbk7k2
      abb314(129)=abb314(128)*abb314(127)
      abb314(130)=abb314(97)*spbe7l6
      abb314(131)=abb314(130)*abb314(63)
      abb314(132)=abb314(93)*spbk7e7
      abb314(133)=abb314(132)*abb314(17)
      abb314(134)=-abb314(30)*abb314(69)*abb314(50)
      abb314(135)=abb314(85)*abb314(134)
      abb314(118)=-abb314(118)+abb314(129)+abb314(131)+abb314(133)-abb314(135)+&
      &abb314(89)
      abb314(118)=8.0_ki*abb314(118)
      abb314(35)=abb314(35)*spak1l5
      abb314(129)=spak4l5*abb314(35)*spbl6l5
      abb314(131)=abb314(112)*abb314(123)
      abb314(133)=abb314(131)*spak1k4
      abb314(28)=abb314(28)+abb314(129)+abb314(133)
      abb314(27)=-abb314(27)+2.0_ki*abb314(17)
      abb314(27)=abb314(27)*spak1l5
      abb314(27)=abb314(27)+abb314(28)
      abb314(27)=16.0_ki*abb314(27)
      abb314(129)=abb314(48)*spbe7k2
      abb314(133)=abb314(117)-abb314(129)
      abb314(135)=8.0_ki*abb314(133)
      abb314(136)=-spak1l5*abb314(53)
      abb314(37)=-abb314(37)*abb314(63)
      abb314(137)=2.0_ki*spbk7k2
      abb314(138)=abb314(137)*spak1k7
      abb314(139)=-abb314(48)*abb314(138)
      abb314(37)=-abb314(71)+abb314(139)+abb314(136)+abb314(37)
      abb314(37)=spbe7k1*abb314(37)
      abb314(41)=spak2k7*abb314(41)
      abb314(71)=abb314(83)*spbe7k3
      abb314(136)=abb314(69)*abb314(71)
      abb314(139)=2.0_ki*es71
      abb314(140)=-abb314(139)+abb314(80)
      abb314(140)=abb314(136)*abb314(140)
      abb314(41)=abb314(41)+abb314(140)
      abb314(41)=abb314(4)*abb314(41)
      abb314(52)=3.0_ki*abb314(52)+abb314(47)
      abb314(52)=abb314(52)*abb314(54)
      abb314(140)=spbe7k1*spak1l5*abb314(78)
      abb314(79)=-abb314(79)+abb314(140)
      abb314(79)=spbl6k3*abb314(79)
      abb314(17)=abb314(17)*abb314(93)
      abb314(140)=2.0_ki*spbk7e7
      abb314(141)=-abb314(140)*abb314(17)
      abb314(142)=abb314(103)*spbk7k2
      abb314(63)=-spbe7l6*abb314(63)*abb314(142)
      abb314(143)=-es71*abb314(129)
      abb314(144)=abb314(137)*spak4k7
      abb314(145)=-abb314(127)*abb314(144)
      abb314(37)=abb314(145)+abb314(79)+abb314(143)+abb314(37)+abb314(63)+abb31&
      &4(82)+abb314(52)+abb314(141)+abb314(41)-2.0_ki*abb314(89)
      abb314(37)=4.0_ki*abb314(37)
      abb314(41)=abb314(16)*abb314(95)
      abb314(12)=abb314(41)-abb314(28)-abb314(12)
      abb314(12)=16.0_ki*abb314(12)
      abb314(28)=8.0_ki*abb314(129)
      abb314(41)=abb314(107)*spbe7k3
      abb314(52)=-abb314(117)-abb314(41)
      abb314(52)=8.0_ki*abb314(52)
      abb314(63)=-abb314(29)*abb314(44)
      abb314(62)=abb314(62)+abb314(63)
      abb314(63)=abb314(116)*abb314(4)
      abb314(79)=abb314(63)*abb314(62)
      abb314(82)=abb314(79)-abb314(134)
      abb314(82)=8.0_ki*abb314(82)
      abb314(89)=spbk3k2*abb314(110)
      abb314(117)=abb314(89)*spak1k4
      abb314(117)=32.0_ki*abb314(117)
      abb314(134)=abb314(4)*abb314(136)
      abb314(79)=abb314(79)+abb314(134)
      abb314(79)=8.0_ki*abb314(79)
      abb314(76)=abb314(94)+abb314(76)
      abb314(134)=abb314(76)*spbl6k2
      abb314(136)=abb314(107)*abb314(139)
      abb314(141)=abb314(103)*spbk7l6
      abb314(143)=abb314(83)*abb314(141)
      abb314(74)=abb314(143)+abb314(136)-abb314(134)-abb314(74)
      abb314(74)=spbe7k3*abb314(74)
      abb314(136)=spbe7k2*abb314(49)
      abb314(136)=abb314(87)+abb314(136)-2.0_ki*abb314(61)
      abb314(136)=spbl6k2*abb314(136)
      abb314(59)=-abb314(59)+abb314(70)
      abb314(59)=spbl6k3*abb314(59)
      abb314(45)=-abb314(106)*abb314(45)
      abb314(70)=-abb314(33)*abb314(77)
      abb314(45)=-abb314(92)+abb314(70)-abb314(45)
      abb314(70)=spbe7k3*abb314(45)
      abb314(51)=abb314(51)*abb314(22)
      abb314(47)=spbe7k2*abb314(47)
      abb314(47)=abb314(70)+abb314(47)+abb314(51)
      abb314(47)=spak2l5*abb314(47)
      abb314(70)=abb314(41)+abb314(129)
      abb314(70)=-abb314(70)*abb314(80)
      abb314(77)=abb314(20)*abb314(93)
      abb314(80)=-spbe7l6*abb314(137)*abb314(77)
      abb314(139)=abb314(129)*abb314(139)
      abb314(143)=-abb314(50)*spbe7k2
      abb314(145)=abb314(141)*abb314(143)
      abb314(146)=abb314(93)*spbk7k3
      abb314(34)=abb314(146)*abb314(34)
      abb314(147)=2.0_ki*spbe7l6
      abb314(148)=abb314(147)*abb314(34)
      abb314(23)=abb314(148)+abb314(47)+abb314(74)+abb314(59)+abb314(145)+abb31&
      &4(139)+abb314(136)+abb314(80)-abb314(23)+abb314(70)+abb314(38)
      abb314(23)=2.0_ki*abb314(23)
      abb314(38)=abb314(25)*abb314(65)
      abb314(47)=abb314(106)*abb314(38)
      abb314(59)=abb314(64)*abb314(108)
      abb314(47)=abb314(47)-abb314(59)
      abb314(59)=-spak1k2*abb314(47)
      abb314(59)=abb314(59)+abb314(99)
      abb314(59)=8.0_ki*abb314(59)
      abb314(65)=4.0_ki*abb314(133)
      abb314(70)=-abb314(41)-abb314(133)
      abb314(70)=4.0_ki*abb314(70)
      abb314(74)=abb314(84)*abb314(95)
      abb314(39)=-spbk7k3*spak1k7*abb314(39)
      abb314(39)=abb314(74)+abb314(39)
      abb314(39)=4.0_ki*abb314(22)*abb314(39)
      abb314(74)=abb314(122)-abb314(62)
      abb314(74)=abb314(74)*spbl6k2
      abb314(80)=abb314(141)*abb314(114)
      abb314(74)=abb314(74)+abb314(80)
      abb314(80)=abb314(21)*abb314(44)
      abb314(80)=abb314(80)-abb314(91)
      abb314(80)=abb314(80)*abb314(7)
      abb314(84)=abb314(33)*abb314(114)
      abb314(80)=abb314(80)-abb314(84)
      abb314(84)=abb314(80)*spak2l5
      abb314(24)=-abb314(33)*abb314(24)
      abb314(44)=-abb314(108)*abb314(44)
      abb314(24)=abb314(24)+abb314(44)
      abb314(24)=2.0_ki*abb314(24)
      abb314(44)=-abb314(81)+es12
      abb314(44)=abb314(24)*abb314(44)
      abb314(44)=abb314(84)+abb314(74)+abb314(44)
      abb314(81)=4.0_ki*abb314(44)
      abb314(17)=spbk7k2*abb314(17)
      abb314(40)=-abb314(40)*abb314(146)
      abb314(17)=abb314(17)+abb314(40)
      abb314(17)=4.0_ki*abb314(17)
      abb314(40)=abb314(80)*spak4l5
      abb314(84)=abb314(128)*abb314(24)
      abb314(40)=abb314(84)+abb314(40)
      abb314(40)=4.0_ki*abb314(40)
      abb314(84)=spbe7k3*abb314(94)
      abb314(61)=abb314(84)+abb314(61)-abb314(87)
      abb314(61)=abb314(137)*abb314(61)
      abb314(84)=abb314(5)*mB
      abb314(87)=abb314(67)*abb314(84)
      abb314(68)=-abb314(68)*abb314(25)
      abb314(91)=abb314(68)*abb314(90)
      abb314(87)=abb314(87)+abb314(91)
      abb314(87)=abb314(87)*abb314(7)
      abb314(67)=abb314(67)*abb314(29)
      abb314(91)=abb314(26)*spak3k4
      abb314(68)=abb314(68)*abb314(91)
      abb314(67)=abb314(87)-abb314(67)-abb314(68)
      abb314(68)=spbk7e7*abb314(67)
      abb314(83)=abb314(83)*abb314(55)
      abb314(87)=-spbk7k3*abb314(83)
      abb314(61)=abb314(87)+abb314(68)+abb314(61)
      abb314(61)=2.0_ki*abb314(61)
      abb314(20)=abb314(20)*spak1l5
      abb314(68)=-spbk7k2*abb314(20)
      abb314(87)=spbk7k3*abb314(102)
      abb314(68)=abb314(68)+abb314(87)
      abb314(68)=8.0_ki*abb314(68)
      abb314(76)=-abb314(76)*abb314(88)
      abb314(87)=abb314(45)*spak2l5
      abb314(94)=spbk7e7*abb314(87)
      abb314(99)=abb314(85)*abb314(140)
      abb314(106)=abb314(107)*abb314(99)
      abb314(83)=spbk7l6*abb314(83)
      abb314(76)=abb314(94)+abb314(83)+abb314(76)+abb314(106)
      abb314(76)=2.0_ki*abb314(76)
      abb314(83)=abb314(111)*abb314(105)
      abb314(94)=-spbk7l6*abb314(102)
      abb314(83)=abb314(83)+abb314(94)
      abb314(83)=8.0_ki*abb314(83)
      abb314(60)=abb314(60)*abb314(7)
      abb314(60)=abb314(60)-abb314(49)
      abb314(88)=-abb314(60)*abb314(88)
      abb314(53)=abb314(53)*spak2l5
      abb314(94)=spbk7e7*abb314(53)
      abb314(99)=abb314(48)*abb314(99)
      abb314(106)=-abb314(50)*abb314(55)*spbk7l6
      abb314(88)=abb314(94)+abb314(106)+abb314(88)+abb314(99)
      abb314(88)=2.0_ki*abb314(88)
      abb314(94)=-abb314(16)*abb314(105)
      abb314(99)=spbk7l6*abb314(20)
      abb314(94)=abb314(94)+abb314(99)
      abb314(94)=8.0_ki*abb314(94)
      abb314(77)=-spbk7k2*abb314(77)
      abb314(34)=abb314(34)+abb314(77)
      abb314(34)=spbe7l5*abb314(34)
      abb314(71)=abb314(71)+abb314(143)
      abb314(77)=abb314(71)*abb314(104)
      abb314(34)=abb314(77)+abb314(34)
      abb314(34)=4.0_ki*abb314(34)
      abb314(77)=-spbl5k3*abb314(102)
      abb314(99)=spbl5k2*abb314(20)
      abb314(77)=abb314(77)+abb314(99)
      abb314(77)=8.0_ki*abb314(77)
      abb314(99)=-4.0_ki*abb314(71)
      abb314(49)=abb314(49)*abb314(30)
      abb314(78)=abb314(78)*spbe7k3
      abb314(105)=-abb314(49)+abb314(78)
      abb314(105)=4.0_ki*abb314(105)
      abb314(71)=-2.0_ki*abb314(71)
      abb314(106)=abb314(96)*spbe7l6
      abb314(122)=8.0_ki*abb314(106)
      abb314(57)=abb314(57)*abb314(22)
      abb314(133)=abb314(55)*abb314(114)
      abb314(136)=abb314(96)*abb314(140)
      abb314(137)=abb314(62)*spbe7k2
      abb314(57)=-abb314(137)+abb314(136)+abb314(57)+abb314(133)
      abb314(133)=4.0_ki*abb314(57)
      abb314(136)=16.0_ki*abb314(35)
      abb314(137)=abb314(14)*abb314(66)*spak1e7
      abb314(139)=-spak1e7*abb314(19)
      abb314(143)=-abb314(69)*abb314(139)
      abb314(143)=abb314(143)+abb314(137)
      abb314(145)=-abb314(143)*abb314(85)
      abb314(148)=abb314(25)*abb314(26)
      abb314(148)=abb314(148)+abb314(100)
      abb314(149)=abb314(148)*abb314(121)
      abb314(145)=abb314(149)+abb314(145)
      abb314(145)=abb314(30)*abb314(145)
      abb314(149)=-abb314(21)*abb314(139)
      abb314(150)=-spak1e7*abb314(15)
      abb314(149)=abb314(149)+abb314(150)
      abb314(149)=abb314(149)*abb314(7)
      abb314(150)=-abb314(54)*abb314(149)
      abb314(151)=abb314(19)*abb314(21)
      abb314(151)=abb314(151)-abb314(15)
      abb314(132)=abb314(132)*abb314(7)
      abb314(152)=-abb314(151)*abb314(132)
      abb314(153)=abb314(26)*spak1e7
      abb314(154)=-abb314(153)*abb314(25)
      abb314(155)=-spak1e7*abb314(100)
      abb314(154)=abb314(154)+abb314(155)
      abb314(130)=abb314(130)*abb314(4)
      abb314(155)=abb314(154)*abb314(130)
      abb314(156)=spak1e7*abb314(110)
      abb314(157)=spbe7l5*abb314(156)*abb314(97)
      abb314(158)=-spbk7l5*abb314(110)*abb314(119)
      abb314(145)=abb314(158)+abb314(157)+abb314(155)+abb314(150)+abb314(152)+a&
      &bb314(145)
      abb314(145)=es34*abb314(145)
      abb314(9)=spak1e7*abb314(9)
      abb314(150)=abb314(10)*abb314(6)
      abb314(152)=abb314(9)*abb314(150)
      abb314(155)=abb314(13)*abb314(152)*abb314(66)
      abb314(157)=abb314(9)*abb314(10)*abb314(2)
      abb314(158)=abb314(157)*c3
      abb314(159)=abb314(158)*abb314(69)
      abb314(157)=abb314(157)*c1
      abb314(160)=abb314(6)*abb314(157)
      abb314(66)=abb314(160)*abb314(66)
      abb314(66)=abb314(159)-abb314(66)+abb314(155)
      abb314(155)=abb314(66)*abb314(85)
      abb314(159)=abb314(13)*abb314(10)
      abb314(161)=abb314(26)*abb314(1)
      abb314(162)=abb314(161)*abb314(8)*abb314(5)
      abb314(163)=abb314(162)*abb314(159)
      abb314(164)=abb314(8)*abb314(2)
      abb314(165)=abb314(18)*abb314(161)*abb314(164)
      abb314(10)=abb314(10)*abb314(5)
      abb314(166)=abb314(10)*abb314(165)
      abb314(163)=abb314(163)-abb314(166)
      abb314(166)=abb314(163)*abb314(121)
      abb314(155)=abb314(166)+abb314(155)
      abb314(155)=abb314(30)*abb314(155)
      abb314(166)=-spak1e7*abb314(58)
      abb314(167)=abb314(166)*abb314(7)
      abb314(128)=spbe7l6*abb314(167)*abb314(128)
      abb314(126)=abb314(58)*abb314(126)
      abb314(126)=abb314(128)+abb314(126)
      abb314(128)=spbk4k2*abb314(126)
      abb314(157)=abb314(157)-abb314(158)
      abb314(168)=abb314(29)*abb314(157)
      abb314(9)=abb314(9)*abb314(10)
      abb314(169)=-abb314(9)*abb314(26)*abb314(13)
      abb314(168)=abb314(169)+abb314(168)
      abb314(168)=abb314(168)*abb314(130)
      abb314(108)=-abb314(108)*abb314(157)
      abb314(9)=abb314(13)*abb314(9)*abb314(33)
      abb314(9)=abb314(9)+abb314(108)
      abb314(108)=abb314(9)*abb314(97)
      abb314(11)=-abb314(11)*abb314(13)
      abb314(157)=abb314(19)-abb314(11)
      abb314(169)=abb314(157)*spbk4k2
      abb314(170)=abb314(169)*spak4l5
      abb314(171)=abb314(121)*abb314(170)
      abb314(108)=abb314(108)+abb314(171)
      abb314(108)=spbe7l5*abb314(108)
      abb314(10)=abb314(33)*abb314(1)*abb314(18)*abb314(10)*abb314(164)
      abb314(162)=-abb314(162)*abb314(150)*abb314(13)
      abb314(10)=abb314(10)+abb314(162)
      abb314(10)=abb314(10)*abb314(119)
      abb314(11)=spak1e7*abb314(11)
      abb314(11)=abb314(139)+abb314(11)
      abb314(116)=abb314(11)*abb314(116)
      abb314(162)=abb314(116)*spbk4k2
      abb314(171)=spal5k7*abb314(162)
      abb314(10)=abb314(10)+abb314(171)
      abb314(10)=spbk7l5*abb314(10)
      abb314(171)=-spbe7l5*abb314(113)
      abb314(114)=abb314(114)*spbe7l6
      abb314(104)=abb314(114)*abb314(104)
      abb314(104)=abb314(171)+abb314(104)
      abb314(104)=spak3l5*abb314(104)
      abb314(13)=abb314(152)*abb314(13)
      abb314(13)=-abb314(160)+abb314(13)
      abb314(13)=mB*abb314(13)
      abb314(152)=abb314(21)*abb314(158)
      abb314(13)=abb314(152)+abb314(13)
      abb314(152)=abb314(54)*abb314(7)
      abb314(13)=abb314(13)*abb314(152)
      abb314(18)=abb314(164)*abb314(18)*abb314(150)
      abb314(8)=abb314(159)*abb314(8)*abb314(6)
      abb314(18)=abb314(8)-abb314(18)
      abb314(18)=abb314(18)*mB*abb314(1)
      abb314(158)=abb314(18)*abb314(132)
      abb314(159)=spak3e7*spak1k7
      abb314(123)=-abb314(123)*abb314(124)*abb314(159)
      abb314(124)=spak3k7*spbk7k2
      abb314(160)=-abb314(127)*abb314(124)
      abb314(10)=abb314(160)+abb314(123)+abb314(104)+abb314(145)+abb314(10)+abb&
      &314(108)+abb314(168)+abb314(13)+abb314(158)+abb314(155)+abb314(128)
      abb314(10)=4.0_ki*abb314(10)
      abb314(13)=abb314(150)*abb314(165)
      abb314(104)=2.0_ki*abb314(7)
      abb314(18)=abb314(18)*abb314(104)
      abb314(8)=-abb314(161)*abb314(8)
      abb314(8)=abb314(18)+abb314(8)+abb314(13)
      abb314(8)=spak1l5*abb314(8)
      abb314(13)=abb314(163)*abb314(98)
      abb314(18)=-abb314(151)*abb314(104)
      abb314(108)=abb314(26)*abb314(14)
      abb314(123)=abb314(33)*abb314(19)
      abb314(18)=abb314(18)+abb314(123)+abb314(108)
      abb314(18)=spak1l5*abb314(18)
      abb314(108)=abb314(148)*abb314(98)
      abb314(18)=abb314(18)+abb314(108)
      abb314(18)=es34*abb314(18)
      abb314(108)=spak1l5*abb314(170)
      abb314(123)=-spak3l5*abb314(35)
      abb314(108)=abb314(108)+abb314(123)
      abb314(108)=spbl6l5*abb314(108)
      abb314(58)=abb314(58)*abb314(112)*spak1k4
      abb314(112)=spbk4k2*abb314(58)
      abb314(123)=-spak1k3*abb314(131)
      abb314(8)=abb314(123)+abb314(108)+abb314(112)+abb314(18)+abb314(8)+abb314&
      &(13)
      abb314(8)=8.0_ki*abb314(8)
      abb314(13)=abb314(156)*es34
      abb314(9)=abb314(13)+abb314(9)
      abb314(9)=abb314(9)*spbe7k2
      abb314(13)=abb314(114)*spak3l5
      abb314(9)=abb314(9)+abb314(13)+abb314(162)
      abb314(13)=-4.0_ki*abb314(9)
      abb314(18)=es34*abb314(143)
      abb314(18)=abb314(18)-abb314(66)
      abb314(18)=abb314(30)*abb314(18)
      abb314(63)=abb314(63)*abb314(154)
      abb314(66)=spbk4k2*abb314(63)
      abb314(62)=abb314(62)*spbe7l6
      abb314(108)=spak3l5*abb314(4)*abb314(62)
      abb314(18)=abb314(108)+abb314(66)+abb314(18)
      abb314(18)=4.0_ki*abb314(18)
      abb314(66)=-abb314(110)*spbk4k2
      abb314(108)=spak1k4*abb314(66)
      abb314(112)=-spak1k3*abb314(89)
      abb314(108)=abb314(108)+abb314(112)
      abb314(108)=16.0_ki*abb314(108)
      abb314(9)=-2.0_ki*abb314(9)
      abb314(112)=abb314(167)+abb314(154)
      abb314(112)=abb314(112)*spbl6k2
      abb314(123)=-abb314(153)*abb314(14)
      abb314(33)=-abb314(33)*abb314(139)
      abb314(33)=-abb314(33)+abb314(149)+abb314(123)
      abb314(123)=abb314(33)*spak2l5
      abb314(128)=2.0_ki*abb314(156)
      abb314(85)=abb314(85)*abb314(128)
      abb314(128)=abb314(11)*abb314(141)
      abb314(85)=abb314(85)+abb314(112)-abb314(128)+abb314(123)
      abb314(112)=2.0_ki*spbk4k2
      abb314(123)=abb314(85)*abb314(112)
      abb314(44)=-2.0_ki*abb314(44)
      abb314(33)=abb314(33)*spak4l5
      abb314(128)=abb314(144)*abb314(156)
      abb314(33)=abb314(33)+abb314(128)
      abb314(128)=-spbk4k2*abb314(33)
      abb314(80)=spak3l5*abb314(80)
      abb314(24)=abb314(24)*abb314(124)
      abb314(24)=abb314(24)+abb314(80)+abb314(128)
      abb314(24)=2.0_ki*abb314(24)
      abb314(80)=abb314(157)*abb314(93)
      abb314(124)=4.0_ki*spbe7l6
      abb314(128)=abb314(80)*abb314(124)
      abb314(143)=-spbk4k2*abb314(128)
      abb314(11)=abb314(11)*abb314(55)
      abb314(55)=abb314(154)*spbe7k2
      abb314(22)=abb314(166)*abb314(22)
      abb314(80)=abb314(80)*abb314(140)
      abb314(11)=-abb314(11)+abb314(55)+abb314(22)+abb314(80)
      abb314(22)=-abb314(11)*abb314(112)
      abb314(55)=8.0_ki*spak1l5
      abb314(80)=-abb314(169)*abb314(55)
      abb314(21)=abb314(21)*spak2k4
      abb314(112)=-abb314(21)*abb314(139)
      abb314(139)=spak2k4*spak1e7
      abb314(140)=-abb314(139)*abb314(15)
      abb314(112)=abb314(140)+abb314(112)
      abb314(112)=abb314(112)*abb314(152)
      abb314(15)=abb314(15)*spak2k4
      abb314(21)=abb314(19)*abb314(21)
      abb314(15)=abb314(15)-abb314(21)
      abb314(21)=-abb314(15)*abb314(132)
      abb314(26)=abb314(26)*spak2k4
      abb314(132)=-abb314(26)*abb314(25)
      abb314(140)=-spak1e7*abb314(132)
      abb314(144)=abb314(139)*abb314(100)
      abb314(140)=abb314(144)+abb314(140)
      abb314(130)=abb314(140)*abb314(130)
      abb314(69)=-abb314(19)*abb314(139)*abb314(69)
      abb314(137)=-spak2k4*abb314(137)
      abb314(69)=abb314(69)+abb314(137)
      abb314(69)=abb314(69)*abb314(30)
      abb314(137)=-es71*abb314(69)
      abb314(100)=abb314(100)*spak2k4
      abb314(100)=abb314(100)-abb314(132)
      abb314(30)=-abb314(100)*abb314(30)*abb314(121)
      abb314(21)=abb314(30)-abb314(126)+abb314(137)+abb314(130)+abb314(112)+abb&
      &314(21)
      abb314(21)=spbk4k3*abb314(21)
      abb314(30)=-abb314(25)*abb314(46)*spak1e7
      abb314(112)=-abb314(139)*abb314(109)
      abb314(30)=abb314(112)+abb314(30)
      abb314(30)=abb314(30)*spbk4k3
      abb314(112)=abb314(97)*abb314(30)
      abb314(126)=abb314(157)*spbk4k3
      abb314(130)=spak4l5*abb314(126)
      abb314(121)=-abb314(121)*abb314(130)
      abb314(113)=spak2l5*abb314(113)
      abb314(112)=abb314(113)+abb314(112)+abb314(121)
      abb314(112)=spbe7l5*abb314(112)
      abb314(69)=abb314(69)*spbk4k3
      abb314(113)=abb314(69)-abb314(127)
      abb314(113)=-abb314(113)*abb314(73)
      abb314(116)=abb314(116)*spbk4k3
      abb314(114)=abb314(114)*spak2l5
      abb314(114)=abb314(116)+abb314(114)
      abb314(116)=-spal5k7*abb314(114)
      abb314(109)=spak2k4*abb314(109)
      abb314(25)=abb314(46)*abb314(25)
      abb314(25)=abb314(25)+abb314(109)
      abb314(25)=spbk4k3*abb314(25)*abb314(119)
      abb314(25)=abb314(25)+abb314(116)
      abb314(25)=spbk7l5*abb314(25)
      abb314(109)=es71*abb314(127)
      abb314(21)=abb314(25)+abb314(112)+abb314(109)+abb314(21)+abb314(113)
      abb314(21)=4.0_ki*abb314(21)
      abb314(15)=-abb314(15)*abb314(104)
      abb314(19)=-abb314(46)*abb314(19)
      abb314(14)=-abb314(26)*abb314(14)
      abb314(14)=abb314(15)+abb314(14)+abb314(19)
      abb314(14)=spak1l5*abb314(14)
      abb314(15)=-abb314(100)*abb314(98)
      abb314(14)=-abb314(58)+abb314(14)+abb314(15)
      abb314(14)=spbk4k3*abb314(14)
      abb314(15)=-spak1l5*abb314(130)
      abb314(19)=spak2l5*abb314(35)
      abb314(15)=abb314(15)+abb314(19)
      abb314(15)=spbl6l5*abb314(15)
      abb314(19)=spak1k2*abb314(131)
      abb314(14)=abb314(15)+abb314(19)+abb314(14)
      abb314(14)=8.0_ki*abb314(14)
      abb314(15)=abb314(30)*spbe7k2
      abb314(15)=abb314(15)-abb314(114)
      abb314(19)=-4.0_ki*abb314(15)
      abb314(25)=abb314(89)*spak1k2
      abb314(26)=16.0_ki*abb314(25)
      abb314(30)=-spbk4k3*abb314(63)
      abb314(30)=abb314(30)-abb314(62)+abb314(69)
      abb314(30)=4.0_ki*abb314(30)
      abb314(46)=-abb314(110)*spbk4k3
      abb314(58)=-spak1k4*abb314(46)
      abb314(58)=abb314(25)+abb314(58)
      abb314(58)=16.0_ki*abb314(58)
      abb314(15)=-2.0_ki*abb314(15)
      abb314(62)=2.0_ki*spbk4k3
      abb314(63)=-abb314(85)*abb314(62)
      abb314(33)=spbk4k3*abb314(33)
      abb314(33)=abb314(74)+abb314(33)
      abb314(33)=2.0_ki*abb314(33)
      abb314(69)=spbk4k3*abb314(128)
      abb314(11)=abb314(11)*abb314(62)
      abb314(62)=abb314(55)*abb314(126)
      abb314(74)=8.0_ki*spak1k2
      abb314(85)=-abb314(66)*abb314(74)
      abb314(74)=abb314(46)*abb314(74)
      abb314(96)=abb314(96)*abb314(124)
      abb314(57)=2.0_ki*abb314(57)
      abb314(35)=8.0_ki*abb314(35)
      abb314(25)=8.0_ki*abb314(25)
      abb314(92)=-spbe7k3*abb314(92)
      abb314(51)=abb314(51)+abb314(92)
      abb314(51)=4.0_ki*spal5k7*abb314(51)
      abb314(92)=abb314(125)*spbe7k2
      abb314(98)=abb314(92)*abb314(89)
      abb314(98)=8.0_ki*abb314(98)
      abb314(66)=-abb314(92)*abb314(66)
      abb314(89)=spbe7k2*abb314(89)*abb314(159)
      abb314(66)=abb314(66)+abb314(89)
      abb314(66)=4.0_ki*abb314(66)
      abb314(46)=abb314(92)*abb314(46)
      abb314(46)=-abb314(106)+abb314(46)
      abb314(46)=4.0_ki*abb314(46)
      abb314(49)=spal5k7*abb314(49)
      abb314(31)=abb314(93)*abb314(31)
      abb314(31)=abb314(49)+abb314(31)
      abb314(31)=spbk7k2*abb314(31)
      abb314(49)=-abb314(97)*abb314(78)
      abb314(78)=-abb314(101)*abb314(146)
      abb314(31)=abb314(78)+abb314(31)+abb314(49)
      abb314(31)=4.0_ki*abb314(31)
      abb314(29)=-abb314(29)*abb314(64)
      abb314(49)=abb314(91)*abb314(38)
      abb314(29)=abb314(49)+abb314(29)
      abb314(29)=abb314(4)*abb314(29)*abb314(55)
      abb314(49)=spal5k7*abb314(129)
      abb314(49)=abb314(49)+abb314(120)
      abb314(49)=spbk7k2*abb314(49)
      abb314(41)=abb314(97)*abb314(41)
      abb314(78)=-spbk7k3*abb314(111)*abb314(119)
      abb314(41)=abb314(78)+abb314(49)+abb314(41)
      abb314(41)=4.0_ki*abb314(41)
      abb314(47)=-abb314(47)*abb314(55)
      abb314(49)=abb314(45)*abb314(54)
      abb314(45)=-spak1l5*abb314(45)
      abb314(54)=-abb314(107)*abb314(138)
      abb314(45)=abb314(45)+abb314(54)
      abb314(45)=spbe7k1*abb314(45)
      abb314(54)=abb314(107)*spbe7k2
      abb314(55)=-es71*abb314(54)
      abb314(45)=abb314(55)+abb314(49)+abb314(45)
      abb314(45)=2.0_ki*abb314(45)
      abb314(49)=-abb314(111)*abb314(95)
      abb314(49)=-abb314(115)+abb314(49)
      abb314(49)=8.0_ki*abb314(49)
      abb314(55)=4.0_ki*abb314(54)
      abb314(54)=2.0_ki*abb314(54)
      abb314(78)=abb314(42)*spbe7k3
      abb314(89)=abb314(36)*spbe7k2
      abb314(78)=abb314(78)-abb314(89)
      abb314(89)=es71*abb314(78)
      abb314(91)=abb314(50)*abb314(142)
      abb314(67)=abb314(91)+abb314(67)
      abb314(67)=spbe7k1*abb314(67)
      abb314(91)=-abb314(86)*abb314(103)*spbk7k3
      abb314(67)=abb314(91)+abb314(67)+abb314(89)
      abb314(67)=2.0_ki*abb314(67)
      abb314(38)=-abb314(90)*abb314(38)
      abb314(64)=abb314(84)*abb314(64)
      abb314(38)=abb314(64)+abb314(38)
      abb314(38)=abb314(7)*abb314(38)
      abb314(64)=spbk3k1*abb314(102)
      abb314(84)=-spbk2k1*abb314(20)
      abb314(38)=abb314(84)+abb314(38)+abb314(64)
      abb314(38)=8.0_ki*abb314(38)
      abb314(64)=4.0_ki*abb314(78)
      abb314(78)=-2.0_ki*abb314(78)
      abb314(84)=abb314(87)-abb314(134)
      abb314(84)=spbe7k1*abb314(84)
      abb314(87)=abb314(72)*abb314(107)
      abb314(89)=-spbe7l6*abb314(42)
      abb314(89)=abb314(89)+abb314(87)
      abb314(89)=es71*abb314(89)
      abb314(87)=abb314(87)*abb314(73)
      abb314(86)=abb314(141)*abb314(86)
      abb314(84)=abb314(86)+abb314(89)+abb314(87)+abb314(84)
      abb314(84)=2.0_ki*abb314(84)
      abb314(86)=es12*abb314(111)
      abb314(87)=-spbl6k1*abb314(102)
      abb314(86)=abb314(86)+abb314(87)
      abb314(86)=8.0_ki*abb314(86)
      abb314(87)=abb314(124)*abb314(42)
      abb314(42)=abb314(42)*abb314(147)
      abb314(60)=-spbl6k2*abb314(60)
      abb314(50)=-abb314(50)*abb314(141)
      abb314(50)=abb314(53)+abb314(50)+abb314(60)
      abb314(50)=spbe7k1*abb314(50)
      abb314(48)=abb314(72)*abb314(48)
      abb314(53)=spbe7l6*abb314(36)
      abb314(53)=abb314(53)+abb314(48)
      abb314(53)=es71*abb314(53)
      abb314(48)=abb314(48)*abb314(73)
      abb314(48)=abb314(53)+abb314(50)+abb314(48)
      abb314(48)=2.0_ki*abb314(48)
      abb314(16)=-es12*abb314(16)
      abb314(20)=spbl6k1*abb314(20)
      abb314(16)=abb314(16)+abb314(20)
      abb314(16)=8.0_ki*abb314(16)
      abb314(20)=abb314(124)*abb314(36)
      abb314(36)=-abb314(36)*abb314(147)
      R2d314=0.0_ki
      rat2 = rat2 + R2d314
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='314' value='", &
          & R2d314, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd314h2