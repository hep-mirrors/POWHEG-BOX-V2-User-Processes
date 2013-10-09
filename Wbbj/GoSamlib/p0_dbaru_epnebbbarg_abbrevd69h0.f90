module     p0_dbaru_epnebbbarg_abbrevd69h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(150), public :: abb69
   complex(ki), public :: R2d69
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
      abb69(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb69(2)=es56**(-1)
      abb69(3)=spbl5k2**(-1)
      abb69(4)=spbl6k2**(-1)
      abb69(5)=spak2l5**(-1)
      abb69(6)=spak2l6**(-1)
      abb69(7)=TR*gW
      abb69(7)=abb69(7)**2
      abb69(8)=i_*CVDU
      abb69(9)=abb69(7)*abb69(8)*abb69(2)*abb69(1)
      abb69(10)=abb69(9)*mB
      abb69(11)=spbe7k2*abb69(10)
      abb69(12)=abb69(11)*c4
      abb69(13)=abb69(11)*c2
      abb69(14)=NC*c1
      abb69(11)=abb69(14)*abb69(11)
      abb69(15)=-abb69(12)+abb69(13)+abb69(11)
      abb69(16)=abb69(4)*spbk3k2
      abb69(17)=abb69(16)*abb69(15)
      abb69(18)=-spbk7k2*abb69(17)
      abb69(19)=abb69(18)*spal5e7
      abb69(20)=abb69(3)*spbk3k2
      abb69(15)=abb69(20)*abb69(15)
      abb69(21)=-spbk7k2*abb69(15)
      abb69(22)=abb69(21)*spal6e7
      abb69(19)=abb69(19)+abb69(22)
      abb69(22)=spak1k7*spak2k4
      abb69(23)=abb69(19)*abb69(22)
      abb69(11)=-abb69(11)+abb69(12)-abb69(13)
      abb69(12)=spak1l6*spal5e7
      abb69(13)=spak1l5*spal6e7
      abb69(24)=abb69(12)+abb69(13)
      abb69(24)=abb69(11)*abb69(24)
      abb69(25)=abb69(24)*spak2k4
      abb69(26)=-spbk3k2*abb69(25)
      abb69(27)=abb69(18)*spak2k4
      abb69(28)=c2-c4
      abb69(29)=abb69(28)+abb69(14)
      abb69(30)=abb69(9)*spbk3k2
      abb69(31)=abb69(29)*abb69(30)*mB
      abb69(32)=spbk7k2*abb69(4)
      abb69(33)=abb69(32)*abb69(31)
      abb69(34)=spbe7k3*spak3k4
      abb69(35)=abb69(33)*abb69(34)
      abb69(27)=abb69(35)+abb69(27)
      abb69(35)=2.0_ki*spak1e7
      abb69(36)=abb69(35)*spal5k7
      abb69(27)=abb69(27)*abb69(36)
      abb69(37)=abb69(21)*spak2k4
      abb69(38)=spbk7k2*abb69(3)
      abb69(39)=abb69(38)*abb69(31)
      abb69(40)=abb69(39)*abb69(34)
      abb69(37)=abb69(40)+abb69(37)
      abb69(40)=abb69(35)*spal6k7
      abb69(37)=abb69(37)*abb69(40)
      abb69(23)=-abb69(23)-abb69(26)+abb69(27)+abb69(37)
      abb69(26)=abb69(17)*spal5e7
      abb69(27)=spak2k4*spak1l5
      abb69(37)=abb69(27)*spbl5k2
      abb69(41)=abb69(37)*abb69(26)
      abb69(42)=abb69(15)*spal6e7
      abb69(43)=spak2k4*spak1l6
      abb69(44)=abb69(43)*spbl6k2
      abb69(45)=abb69(44)*abb69(42)
      abb69(41)=abb69(41)+abb69(45)
      abb69(45)=spal6e7*spak3k4
      abb69(46)=abb69(15)*abb69(45)
      abb69(47)=spal5e7*spak3k4
      abb69(48)=abb69(17)*abb69(47)
      abb69(46)=abb69(46)+abb69(48)
      abb69(48)=spbk7k3*spak1k7
      abb69(49)=abb69(46)*abb69(48)
      abb69(50)=abb69(9)*abb69(3)
      abb69(51)=abb69(14)*mB
      abb69(52)=abb69(51)*abb69(50)
      abb69(53)=abb69(50)*mB
      abb69(54)=abb69(53)*c4
      abb69(53)=abb69(53)*c2
      abb69(52)=abb69(53)+abb69(52)-abb69(54)
      abb69(53)=spbk3k2**2
      abb69(54)=abb69(53)*abb69(52)
      abb69(55)=abb69(54)*spak1l6
      abb69(56)=mB*abb69(28)
      abb69(56)=abb69(51)+abb69(56)
      abb69(57)=abb69(9)*abb69(4)
      abb69(58)=abb69(53)*abb69(57)
      abb69(56)=abb69(58)*abb69(56)
      abb69(59)=abb69(56)*spak1l5
      abb69(55)=abb69(55)+abb69(59)
      abb69(59)=abb69(47)*abb69(55)
      abb69(60)=2.0_ki*spbe7l5
      abb69(61)=abb69(59)*abb69(60)
      abb69(55)=abb69(45)*abb69(55)
      abb69(62)=2.0_ki*spbe7l6
      abb69(63)=abb69(55)*abb69(62)
      abb69(64)=mB**3
      abb69(65)=abb69(64)*spbe7k2
      abb69(66)=abb69(65)*abb69(14)
      abb69(67)=abb69(66)*abb69(9)
      abb69(68)=-abb69(9)*abb69(28)
      abb69(69)=-abb69(65)*abb69(68)
      abb69(67)=abb69(69)+abb69(67)
      abb69(16)=abb69(16)**2
      abb69(70)=-abb69(47)*abb69(16)*abb69(67)
      abb69(71)=abb69(14)+c2
      abb69(72)=abb69(3)*abb69(71)
      abb69(73)=c4*abb69(3)
      abb69(73)=abb69(72)-abb69(73)
      abb69(74)=abb69(58)*abb69(65)*abb69(73)
      abb69(75)=abb69(74)*abb69(45)
      abb69(70)=abb69(70)-abb69(75)
      abb69(75)=abb69(6)*spak1k2
      abb69(76)=abb69(70)*abb69(75)
      abb69(20)=abb69(20)**2
      abb69(77)=-abb69(45)*abb69(20)*abb69(67)
      abb69(74)=abb69(74)*abb69(47)
      abb69(74)=abb69(77)-abb69(74)
      abb69(77)=abb69(5)*spak1k2
      abb69(78)=abb69(74)*abb69(77)
      abb69(49)=abb69(41)-abb69(23)-abb69(78)+abb69(49)-abb69(76)-abb69(61)-abb&
      &69(63)
      abb69(61)=abb69(46)*spak1l6
      abb69(63)=spbl6k3*abb69(61)
      abb69(76)=abb69(46)*spak1l5
      abb69(78)=spbl5k3*abb69(76)
      abb69(63)=abb69(78)+abb69(63)-abb69(49)
      abb69(78)=es71+es12-es712
      abb69(63)=2.0_ki*abb69(78)*abb69(63)
      abb69(79)=spak1l6*spak3k4
      abb69(80)=-abb69(79)*abb69(3)
      abb69(81)=spak1l5*spak3k4
      abb69(82)=-abb69(81)*abb69(4)
      abb69(80)=abb69(80)+abb69(82)
      abb69(82)=mB*abb69(1)
      abb69(80)=abb69(8)*abb69(80)*abb69(7)*abb69(29)*abb69(53)*abb69(82)
      abb69(83)=abb69(54)*abb69(79)
      abb69(84)=spbl6k2*abb69(83)
      abb69(85)=-abb69(10)*abb69(29)
      abb69(86)=abb69(85)*abb69(53)
      abb69(87)=-abb69(86)*abb69(81)
      abb69(84)=abb69(87)+abb69(84)
      abb69(84)=spak2l6*abb69(84)
      abb69(86)=-abb69(86)*abb69(79)
      abb69(87)=abb69(56)*abb69(81)
      abb69(88)=spbl5k2*abb69(87)
      abb69(86)=abb69(86)+abb69(88)
      abb69(86)=spak2l5*abb69(86)
      abb69(84)=abb69(84)+abb69(86)
      abb69(14)=abb69(64)*abb69(14)
      abb69(86)=abb69(9)*spbk7k2
      abb69(88)=abb69(14)*abb69(86)
      abb69(89)=-abb69(20)*abb69(88)
      abb69(68)=abb69(68)*abb69(64)
      abb69(90)=-abb69(20)*abb69(68)
      abb69(91)=-spbk7k2*abb69(90)
      abb69(89)=abb69(89)+abb69(91)
      abb69(91)=spal6k7*spak1k2
      abb69(89)=abb69(89)*abb69(91)
      abb69(92)=abb69(28)*abb69(38)*abb69(64)
      abb69(93)=abb69(14)*abb69(38)
      abb69(92)=abb69(92)+abb69(93)
      abb69(93)=abb69(58)*abb69(92)
      abb69(94)=spal5k7*spak1k2
      abb69(95)=-abb69(93)*abb69(94)
      abb69(89)=abb69(89)+abb69(95)
      abb69(89)=abb69(5)*abb69(89)
      abb69(93)=-abb69(93)*abb69(91)
      abb69(88)=-abb69(16)*abb69(88)
      abb69(68)=-abb69(16)*abb69(68)
      abb69(95)=-spbk7k2*abb69(68)
      abb69(88)=abb69(88)+abb69(95)
      abb69(88)=abb69(88)*abb69(94)
      abb69(88)=abb69(93)+abb69(88)
      abb69(88)=abb69(6)*abb69(88)
      abb69(88)=abb69(88)+abb69(89)
      abb69(88)=spak3k4*abb69(88)
      abb69(89)=abb69(33)*spal5k7
      abb69(93)=abb69(39)*spal6k7
      abb69(95)=abb69(89)+abb69(93)
      abb69(96)=abb69(81)*spbl5k3
      abb69(97)=abb69(79)*spbl6k3
      abb69(98)=abb69(96)+abb69(97)
      abb69(98)=abb69(95)*abb69(98)
      abb69(99)=spbk7k2*abb69(31)
      abb69(100)=-abb69(99)*abb69(27)
      abb69(101)=spbk7k2*mB
      abb69(102)=abb69(29)*abb69(101)
      abb69(50)=-abb69(50)*abb69(102)
      abb69(103)=4.0_ki*spak1k2
      abb69(104)=abb69(103)*spak3k4
      abb69(53)=abb69(104)*abb69(53)*abb69(50)
      abb69(53)=abb69(100)+abb69(53)
      abb69(53)=spal6k7*abb69(53)
      abb69(99)=-abb69(99)*abb69(43)
      abb69(100)=-abb69(104)*abb69(58)*abb69(102)
      abb69(99)=abb69(99)+abb69(100)
      abb69(99)=spal5k7*abb69(99)
      abb69(100)=-abb69(3)*abb69(31)
      abb69(102)=spal6k7*abb69(100)
      abb69(104)=-abb69(4)*abb69(31)
      abb69(105)=spal5k7*abb69(104)
      abb69(102)=abb69(102)+abb69(105)
      abb69(105)=spbk7k2**2
      abb69(102)=abb69(22)*abb69(105)*abb69(102)
      abb69(106)=abb69(95)*spak3k4
      abb69(107)=abb69(106)*abb69(48)
      abb69(83)=abb69(83)+abb69(87)
      abb69(87)=2.0_ki*es567
      abb69(108)=abb69(83)*abb69(87)
      abb69(93)=-abb69(44)*abb69(93)
      abb69(89)=-abb69(37)*abb69(89)
      abb69(53)=abb69(108)+abb69(89)+abb69(93)+abb69(107)+abb69(102)+abb69(99)+&
      &2.0_ki*abb69(80)+abb69(53)+abb69(98)+abb69(88)+4.0_ki*abb69(84)
      abb69(53)=2.0_ki*abb69(53)
      abb69(80)=spbl6k3*spak1l6
      abb69(84)=spbl5k3*spak1l5
      abb69(80)=abb69(80)+abb69(84)
      abb69(84)=-abb69(46)*abb69(80)
      abb69(49)=abb69(84)+abb69(49)
      abb69(49)=4.0_ki*abb69(49)
      abb69(84)=8.0_ki*abb69(83)
      abb69(26)=abb69(42)+abb69(26)
      abb69(42)=abb69(26)*spak1k4
      abb69(88)=abb69(78)*abb69(42)
      abb69(88)=4.0_ki*abb69(88)
      abb69(89)=spal5k7*spak1k4
      abb69(93)=abb69(89)*abb69(33)
      abb69(98)=spal6k7*spak1k4
      abb69(99)=abb69(98)*abb69(39)
      abb69(93)=abb69(93)+abb69(99)
      abb69(99)=12.0_ki*abb69(93)
      abb69(102)=8.0_ki*abb69(42)
      abb69(107)=abb69(19)*spak1k2
      abb69(32)=-abb69(32)*abb69(11)
      abb69(108)=abb69(32)*spal5e7
      abb69(109)=-abb69(38)*abb69(11)
      abb69(110)=abb69(109)*spal6e7
      abb69(108)=abb69(108)+abb69(110)
      abb69(110)=abb69(80)-abb69(48)
      abb69(111)=abb69(110)*abb69(108)
      abb69(112)=-abb69(105)*abb69(52)
      abb69(113)=abb69(40)*spbe7k3
      abb69(114)=abb69(113)*abb69(112)
      abb69(51)=abb69(51)*abb69(57)
      abb69(115)=abb69(57)*c4
      abb69(116)=abb69(115)*mB
      abb69(117)=c2*abb69(57)*mB
      abb69(51)=abb69(117)+abb69(51)-abb69(116)
      abb69(105)=abb69(105)*abb69(51)
      abb69(116)=abb69(36)*spbe7k3
      abb69(117)=abb69(116)*abb69(105)
      abb69(118)=abb69(30)*abb69(4)
      abb69(119)=abb69(65)*abb69(118)
      abb69(120)=-abb69(29)*abb69(119)*abb69(38)
      abb69(121)=abb69(120)*spal6e7
      abb69(122)=abb69(29)*spbk7k2
      abb69(123)=abb69(65)*abb69(30)
      abb69(124)=abb69(4)**2
      abb69(125)=abb69(124)*abb69(123)
      abb69(126)=-abb69(125)*abb69(122)
      abb69(127)=abb69(126)*spal5e7
      abb69(121)=abb69(121)+abb69(127)
      abb69(127)=abb69(121)*abb69(75)
      abb69(128)=abb69(120)*spal5e7
      abb69(129)=abb69(3)**2
      abb69(123)=abb69(129)*abb69(123)
      abb69(130)=-abb69(123)*abb69(122)
      abb69(131)=abb69(130)*spal6e7
      abb69(128)=abb69(128)+abb69(131)
      abb69(131)=abb69(128)*abb69(77)
      abb69(107)=-abb69(111)-abb69(107)-abb69(127)-abb69(131)+abb69(114)-abb69(&
      &117)
      abb69(111)=2.0_ki*spak4k7
      abb69(107)=abb69(107)*abb69(111)
      abb69(114)=spak1k4*abb69(111)*abb69(108)
      abb69(89)=abb69(89)*abb69(32)
      abb69(98)=abb69(98)*abb69(109)
      abb69(89)=abb69(89)+abb69(98)
      abb69(98)=abb69(89)*spak4e7
      abb69(98)=-abb69(114)+3.0_ki*abb69(98)
      abb69(98)=abb69(98)*spbk4k3
      abb69(114)=abb69(32)*spal5k7
      abb69(117)=abb69(109)*spal6k7
      abb69(114)=abb69(114)+abb69(117)
      abb69(114)=abb69(114)*spak4e7
      abb69(117)=spak1l5*abb69(114)
      abb69(76)=abb69(117)-abb69(76)
      abb69(76)=abb69(76)*spbl5k3
      abb69(117)=spak1l6*abb69(114)
      abb69(61)=abb69(117)-abb69(61)
      abb69(61)=abb69(61)*spbl6k3
      abb69(46)=abb69(114)+abb69(46)
      abb69(46)=abb69(46)*abb69(48)
      abb69(114)=abb69(120)*abb69(94)
      abb69(117)=abb69(130)*abb69(91)
      abb69(114)=abb69(114)+abb69(117)
      abb69(114)=abb69(114)*spak4e7
      abb69(74)=abb69(74)*spak1k2
      abb69(74)=abb69(114)-abb69(74)
      abb69(74)=abb69(74)*abb69(5)
      abb69(114)=abb69(120)*abb69(91)
      abb69(117)=abb69(126)*abb69(94)
      abb69(114)=abb69(114)+abb69(117)
      abb69(114)=abb69(114)*spak4e7
      abb69(70)=abb69(70)*spak1k2
      abb69(70)=abb69(114)-abb69(70)
      abb69(70)=abb69(70)*abb69(6)
      abb69(114)=3.0_ki*abb69(91)
      abb69(117)=abb69(114)*abb69(21)
      abb69(127)=3.0_ki*abb69(94)
      abb69(131)=abb69(127)*abb69(18)
      abb69(132)=-spak1l6*abb69(73)
      abb69(133)=abb69(29)*abb69(4)
      abb69(134)=spak1l5*abb69(133)
      abb69(132)=abb69(132)-abb69(134)
      abb69(8)=abb69(82)*abb69(8)
      abb69(82)=spbe7k2*abb69(8)
      abb69(132)=abb69(132)*abb69(82)*abb69(7)*spbk3k2
      abb69(117)=abb69(131)+abb69(117)+2.0_ki*abb69(132)
      abb69(117)=abb69(117)*spak4e7
      abb69(131)=abb69(33)*abb69(13)
      abb69(134)=spak1l6*spal6e7
      abb69(135)=abb69(134)*abb69(39)
      abb69(131)=abb69(131)+abb69(135)
      abb69(135)=abb69(131)*abb69(111)
      abb69(55)=abb69(135)+abb69(55)
      abb69(55)=abb69(55)*abb69(62)
      abb69(135)=abb69(39)*abb69(12)
      abb69(136)=spak1l5*spal5e7
      abb69(137)=abb69(136)*abb69(33)
      abb69(135)=abb69(135)+abb69(137)
      abb69(111)=abb69(135)*abb69(111)
      abb69(59)=abb69(111)+abb69(59)
      abb69(59)=abb69(59)*abb69(60)
      abb69(111)=abb69(15)*spak1l6
      abb69(137)=abb69(17)*spak1l5
      abb69(111)=abb69(111)+abb69(137)
      abb69(137)=abb69(111)*spak4e7
      abb69(138)=abb69(87)*abb69(137)
      abb69(139)=2.0_ki*abb69(42)
      abb69(140)=abb69(78)*abb69(139)
      abb69(23)=abb69(74)-abb69(55)-abb69(59)+abb69(46)+abb69(138)+abb69(41)-ab&
      &b69(23)+abb69(70)+abb69(117)+abb69(107)-abb69(98)+abb69(76)+abb69(61)-ab&
      &b69(140)
      abb69(41)=2.0_ki*abb69(23)
      abb69(46)=abb69(104)*spak1l5
      abb69(55)=abb69(46)*spbl5k2
      abb69(59)=-abb69(31)*spak1l6
      abb69(55)=abb69(55)+abb69(59)
      abb69(59)=4.0_ki*spak4l5
      abb69(55)=abb69(55)*abb69(59)
      abb69(59)=abb69(100)*spak1l6
      abb69(61)=abb69(59)*spbl6k2
      abb69(70)=-abb69(31)*spak1l5
      abb69(61)=abb69(61)+abb69(70)
      abb69(70)=4.0_ki*spak4l6
      abb69(61)=abb69(61)*abb69(70)
      abb69(55)=abb69(55)+abb69(61)
      abb69(9)=abb69(14)*abb69(9)
      abb69(20)=abb69(9)*abb69(20)
      abb69(20)=abb69(20)+abb69(90)
      abb69(61)=abb69(20)*abb69(79)
      abb69(70)=abb69(29)*abb69(64)*abb69(3)
      abb69(58)=-abb69(58)*abb69(70)
      abb69(74)=-abb69(58)*abb69(81)
      abb69(61)=abb69(61)+abb69(74)
      abb69(74)=2.0_ki*abb69(5)
      abb69(61)=abb69(61)*abb69(74)
      abb69(76)=-abb69(58)*abb69(79)
      abb69(9)=abb69(9)*abb69(16)
      abb69(9)=abb69(9)+abb69(68)
      abb69(16)=abb69(9)*abb69(81)
      abb69(16)=abb69(76)+abb69(16)
      abb69(68)=2.0_ki*abb69(6)
      abb69(16)=abb69(16)*abb69(68)
      abb69(16)=abb69(16)+abb69(61)-abb69(83)+abb69(55)-7.0_ki*abb69(93)
      abb69(16)=4.0_ki*abb69(16)
      abb69(61)=8.0_ki*abb69(137)
      abb69(76)=4.0_ki*abb69(42)
      abb69(73)=abb69(119)*abb69(73)
      abb69(90)=abb69(73)*spak1l5
      abb69(98)=abb69(29)*abb69(123)
      abb69(107)=-abb69(98)*spak1l6
      abb69(90)=abb69(90)-abb69(107)
      abb69(107)=abb69(90)*abb69(74)
      abb69(117)=abb69(73)*spak1l6
      abb69(119)=abb69(29)*abb69(125)
      abb69(123)=-abb69(119)*spak1l5
      abb69(117)=abb69(117)-abb69(123)
      abb69(123)=abb69(117)*abb69(68)
      abb69(107)=abb69(123)+abb69(107)
      abb69(107)=spak4e7*abb69(107)
      abb69(107)=abb69(42)+abb69(107)
      abb69(107)=4.0_ki*abb69(107)
      abb69(55)=-abb69(83)-abb69(93)-abb69(55)
      abb69(55)=2.0_ki*abb69(55)
      abb69(83)=4.0_ki*abb69(137)
      abb69(93)=-abb69(5)*abb69(90)
      abb69(123)=-abb69(6)*abb69(117)
      abb69(93)=abb69(123)+abb69(93)
      abb69(93)=spak4e7*abb69(93)
      abb69(93)=-abb69(42)-abb69(137)+abb69(93)
      abb69(93)=4.0_ki*abb69(93)
      abb69(42)=abb69(42)+2.0_ki*abb69(137)
      abb69(123)=abb69(105)*spal5k7
      abb69(125)=abb69(112)*spal6k7
      abb69(123)=abb69(123)-abb69(125)
      abb69(123)=abb69(123)*spak1k7
      abb69(125)=spbe7k3*spak2k4
      abb69(137)=-abb69(125)*abb69(123)
      abb69(138)=abb69(109)*spak2k4
      abb69(140)=abb69(50)*abb69(34)
      abb69(141)=abb69(138)-abb69(140)
      abb69(141)=spal6k7*abb69(141)
      abb69(142)=abb69(32)*spak2k4
      abb69(71)=-abb69(71)*abb69(101)*abb69(57)
      abb69(101)=abb69(115)*abb69(101)
      abb69(71)=abb69(101)+abb69(71)
      abb69(101)=abb69(71)*abb69(34)
      abb69(143)=abb69(142)-abb69(101)
      abb69(143)=spal5k7*abb69(143)
      abb69(141)=abb69(141)+abb69(143)
      abb69(141)=abb69(141)*abb69(48)
      abb69(28)=abb69(28)*abb69(64)*abb69(30)
      abb69(14)=abb69(14)*abb69(30)
      abb69(14)=abb69(14)+abb69(28)
      abb69(28)=abb69(34)*spak1k2
      abb69(30)=abb69(14)*abb69(28)
      abb69(64)=abb69(129)*spbk7k2
      abb69(143)=-abb69(64)*abb69(30)
      abb69(144)=spak1k2*spak2k4
      abb69(130)=abb69(130)*abb69(144)
      abb69(130)=abb69(130)+abb69(143)
      abb69(130)=spal6k7*abb69(130)
      abb69(92)=abb69(28)*abb69(118)*abb69(92)
      abb69(120)=abb69(120)*abb69(144)
      abb69(92)=abb69(92)-abb69(120)
      abb69(120)=-spal5k7*abb69(92)
      abb69(120)=abb69(130)+abb69(120)
      abb69(120)=abb69(5)*abb69(120)
      abb69(92)=-spal6k7*abb69(92)
      abb69(130)=abb69(124)*spbk7k2
      abb69(30)=-abb69(130)*abb69(30)
      abb69(126)=abb69(126)*abb69(144)
      abb69(30)=abb69(126)+abb69(30)
      abb69(30)=spal5k7*abb69(30)
      abb69(30)=abb69(92)+abb69(30)
      abb69(30)=abb69(6)*abb69(30)
      abb69(92)=abb69(109)*abb69(43)
      abb69(126)=-spak1l6*abb69(140)
      abb69(92)=abb69(92)+abb69(126)
      abb69(92)=spal6k7*abb69(92)
      abb69(126)=abb69(32)*abb69(43)
      abb69(143)=-spak1l6*abb69(101)
      abb69(126)=abb69(126)+abb69(143)
      abb69(126)=spal5k7*abb69(126)
      abb69(92)=abb69(92)+abb69(126)
      abb69(92)=spbl6k3*abb69(92)
      abb69(126)=abb69(109)*abb69(27)
      abb69(143)=-spak1l5*abb69(140)
      abb69(126)=abb69(126)+abb69(143)
      abb69(126)=spal6k7*abb69(126)
      abb69(143)=abb69(32)*abb69(27)
      abb69(145)=-spak1l5*abb69(101)
      abb69(143)=abb69(143)+abb69(145)
      abb69(143)=spal5k7*abb69(143)
      abb69(126)=abb69(126)+abb69(143)
      abb69(126)=spbl5k3*abb69(126)
      abb69(89)=-spbk4k3*spak2k4*abb69(89)
      abb69(111)=abb69(111)*spak2k4
      abb69(143)=abb69(81)*abb69(104)
      abb69(145)=abb69(79)*abb69(100)
      abb69(146)=abb69(143)+abb69(145)
      abb69(146)=abb69(146)*spbe7k3
      abb69(111)=abb69(146)-abb69(111)
      abb69(146)=-abb69(111)*abb69(87)
      abb69(147)=abb69(50)*spal6k7
      abb69(148)=abb69(147)*abb69(44)
      abb69(149)=abb69(71)*spal5k7
      abb69(150)=abb69(149)*abb69(37)
      abb69(148)=abb69(150)+abb69(148)
      abb69(148)=spbe7k3*abb69(148)
      abb69(132)=spak2k4*abb69(132)
      abb69(29)=abb69(29)*abb69(7)*abb69(3)
      abb69(150)=-abb69(79)*abb69(29)
      abb69(7)=abb69(7)*abb69(133)
      abb69(133)=-abb69(81)*abb69(7)
      abb69(133)=abb69(150)+abb69(133)
      abb69(8)=spbe7k3*abb69(133)*spbk3k2*abb69(8)
      abb69(8)=abb69(132)+abb69(8)
      abb69(21)=3.0_ki*abb69(21)
      abb69(21)=abb69(144)*abb69(21)
      abb69(10)=-abb69(10)*abb69(122)
      abb69(122)=abb69(10)*spbe7k3
      abb69(132)=abb69(27)*abb69(122)
      abb69(21)=abb69(21)+abb69(132)
      abb69(21)=spal6k7*abb69(21)
      abb69(18)=abb69(18)*abb69(144)
      abb69(122)=abb69(43)*abb69(122)
      abb69(18)=3.0_ki*abb69(18)+abb69(122)
      abb69(18)=spal5k7*abb69(18)
      abb69(8)=abb69(146)+3.0_ki*abb69(89)+abb69(126)+abb69(92)+abb69(30)+abb69&
      &(120)+abb69(141)+abb69(137)+abb69(18)+2.0_ki*abb69(8)+abb69(21)+abb69(14&
      &8)
      abb69(18)=4.0_ki*abb69(111)
      abb69(21)=abb69(147)+abb69(149)
      abb69(30)=spbe7k3*spak1k4
      abb69(89)=abb69(30)*abb69(21)
      abb69(92)=6.0_ki*abb69(89)
      abb69(90)=spak2k4*abb69(90)
      abb69(120)=abb69(14)*abb69(129)
      abb69(122)=abb69(120)*abb69(79)
      abb69(70)=-abb69(118)*abb69(70)
      abb69(118)=-abb69(70)*abb69(81)
      abb69(118)=abb69(122)+abb69(118)
      abb69(118)=spbe7k3*abb69(118)
      abb69(90)=abb69(90)+abb69(118)
      abb69(74)=abb69(90)*abb69(74)
      abb69(90)=spak2k4*abb69(117)
      abb69(14)=abb69(14)*abb69(124)
      abb69(81)=abb69(14)*abb69(81)
      abb69(79)=-abb69(70)*abb69(79)
      abb69(79)=abb69(79)+abb69(81)
      abb69(79)=spbe7k3*abb69(79)
      abb69(79)=abb69(90)+abb69(79)
      abb69(68)=abb69(79)*abb69(68)
      abb69(79)=3.0_ki*abb69(89)
      abb69(68)=abb69(68)+abb69(74)+abb69(79)
      abb69(68)=2.0_ki*abb69(68)
      abb69(74)=2.0_ki*abb69(111)-abb69(79)
      abb69(79)=-abb69(4)*abb69(11)
      abb69(81)=abb69(79)*abb69(47)
      abb69(11)=-abb69(3)*abb69(11)
      abb69(89)=abb69(11)*abb69(45)
      abb69(81)=abb69(81)+abb69(89)
      abb69(89)=abb69(81)*abb69(48)
      abb69(90)=abb69(138)+abb69(140)
      abb69(90)=abb69(90)*abb69(40)
      abb69(101)=abb69(142)+abb69(101)
      abb69(101)=abb69(101)*abb69(36)
      abb69(111)=abb69(11)*spal6e7
      abb69(117)=abb69(111)*abb69(44)
      abb69(118)=abb69(79)*spal5e7
      abb69(122)=abb69(118)*abb69(37)
      abb69(25)=abb69(122)+abb69(117)+abb69(89)+abb69(101)-abb69(25)+abb69(90)
      abb69(25)=spbk7k3*abb69(25)
      abb69(89)=-abb69(108)*abb69(43)
      abb69(81)=abb69(81)*spbk7k3
      abb69(90)=-spak1l6*abb69(81)
      abb69(89)=abb69(89)+abb69(90)
      abb69(89)=spbl6k3*abb69(89)
      abb69(90)=-abb69(108)*abb69(27)
      abb69(81)=-spak1l5*abb69(81)
      abb69(81)=abb69(90)+abb69(81)
      abb69(81)=spbl5k3*abb69(81)
      abb69(90)=abb69(112)*abb69(40)
      abb69(101)=-abb69(105)*abb69(36)
      abb69(90)=abb69(101)+abb69(90)
      abb69(90)=abb69(125)*abb69(90)
      abb69(19)=-abb69(19)*abb69(144)
      abb69(101)=-abb69(128)*abb69(144)
      abb69(105)=abb69(98)*abb69(45)
      abb69(112)=abb69(73)*abb69(47)
      abb69(105)=abb69(105)+abb69(112)
      abb69(112)=spbk7k3*spak1k2
      abb69(105)=abb69(105)*abb69(112)
      abb69(101)=abb69(101)+abb69(105)
      abb69(101)=abb69(5)*abb69(101)
      abb69(105)=-abb69(121)*abb69(144)
      abb69(117)=abb69(73)*abb69(45)
      abb69(121)=abb69(119)*abb69(47)
      abb69(117)=abb69(117)+abb69(121)
      abb69(112)=abb69(117)*abb69(112)
      abb69(105)=abb69(105)+abb69(112)
      abb69(105)=abb69(6)*abb69(105)
      abb69(112)=-spak2k4*abb69(131)
      abb69(117)=abb69(59)+abb69(46)
      abb69(121)=abb69(117)*spbk7k3
      abb69(45)=abb69(45)*abb69(121)
      abb69(45)=abb69(112)+abb69(45)
      abb69(45)=abb69(45)*abb69(62)
      abb69(112)=-spak2k4*abb69(135)
      abb69(47)=abb69(47)*abb69(121)
      abb69(47)=abb69(112)+abb69(47)
      abb69(47)=abb69(47)*abb69(60)
      abb69(112)=spbk4k3*spak1k4
      abb69(121)=abb69(112)*spak2k4
      abb69(122)=abb69(108)*abb69(121)
      abb69(19)=abb69(122)+abb69(47)+abb69(45)+abb69(81)+abb69(89)+abb69(105)+a&
      &bb69(101)+abb69(19)+abb69(25)+abb69(90)
      abb69(19)=2.0_ki*abb69(19)
      abb69(25)=abb69(118)+abb69(111)
      abb69(45)=abb69(25)*spak1k4
      abb69(47)=abb69(45)*spbk7k3
      abb69(81)=4.0_ki*abb69(47)
      abb69(47)=-2.0_ki*abb69(47)
      abb69(89)=abb69(15)*spak2k4
      abb69(90)=abb69(100)*abb69(34)
      abb69(89)=abb69(89)+abb69(90)
      abb69(90)=abb69(89)*spak1e7
      abb69(101)=4.0_ki*abb69(78)
      abb69(105)=abb69(90)*abb69(101)
      abb69(54)=abb69(54)*abb69(103)
      abb69(48)=3.0_ki*abb69(48)
      abb69(122)=abb69(100)*abb69(48)
      abb69(20)=-abb69(20)*abb69(77)
      abb69(126)=abb69(58)*abb69(75)
      abb69(20)=abb69(126)+abb69(20)+abb69(122)+abb69(54)
      abb69(20)=spak3k4*abb69(20)
      abb69(54)=3.0_ki*abb69(145)+4.0_ki*abb69(143)
      abb69(54)=spbl6k3*abb69(54)
      abb69(96)=5.0_ki*abb69(44)-abb69(96)
      abb69(96)=abb69(100)*abb69(96)
      abb69(31)=-5.0_ki*abb69(31)
      abb69(122)=abb69(27)*abb69(31)
      abb69(22)=3.0_ki*abb69(22)
      abb69(126)=abb69(39)*abb69(22)
      abb69(20)=abb69(54)+abb69(126)+abb69(122)+abb69(20)+abb69(96)
      abb69(20)=2.0_ki*abb69(20)
      abb69(54)=-8.0_ki*abb69(90)
      abb69(90)=abb69(100)*spak1k4
      abb69(96)=4.0_ki*abb69(90)
      abb69(80)=abb69(80)+abb69(112)-abb69(48)
      abb69(112)=abb69(80)*abb69(11)
      abb69(122)=-abb69(98)*abb69(77)
      abb69(112)=abb69(122)+abb69(112)
      abb69(112)=spak4e7*abb69(112)
      abb69(89)=abb69(89)*abb69(35)
      abb69(122)=spak4e7*spak1k2
      abb69(126)=abb69(122)*abb69(15)
      abb69(128)=4.0_ki*spak1e7
      abb69(131)=abb69(128)*spbe7k3
      abb69(132)=abb69(131)*spak4k7
      abb69(133)=abb69(132)*abb69(50)
      abb69(135)=abb69(73)*spak4e7
      abb69(137)=abb69(135)*abb69(75)
      abb69(89)=-abb69(89)-abb69(133)-abb69(137)+abb69(126)+abb69(112)
      abb69(112)=2.0_ki*abb69(89)
      abb69(126)=-20.0_ki*abb69(90)
      abb69(90)=-6.0_ki*abb69(90)
      abb69(44)=-abb69(52)*abb69(44)
      abb69(133)=abb69(85)*abb69(27)
      abb69(137)=-abb69(50)*abb69(22)
      abb69(44)=abb69(44)+abb69(137)+abb69(133)
      abb69(44)=spbe7k3*abb69(44)
      abb69(133)=abb69(11)*spak2k4
      abb69(137)=abb69(52)*abb69(34)
      abb69(138)=-abb69(133)-abb69(137)
      abb69(138)=abb69(138)*abb69(48)
      abb69(140)=abb69(11)*abb69(43)
      abb69(141)=spak1l6*abb69(137)
      abb69(140)=abb69(140)+abb69(141)
      abb69(140)=spbl6k3*abb69(140)
      abb69(141)=abb69(11)*abb69(27)
      abb69(142)=spak1l5*abb69(137)
      abb69(141)=abb69(141)+abb69(142)
      abb69(141)=spbl5k3*abb69(141)
      abb69(15)=abb69(15)*abb69(144)
      abb69(120)=-abb69(120)*abb69(28)
      abb69(142)=-abb69(98)*abb69(144)
      abb69(120)=abb69(142)+abb69(120)
      abb69(120)=abb69(5)*abb69(120)
      abb69(142)=abb69(73)*abb69(144)
      abb69(70)=abb69(70)*abb69(28)
      abb69(70)=abb69(142)-abb69(70)
      abb69(142)=-abb69(6)*abb69(70)
      abb69(146)=abb69(11)*abb69(121)
      abb69(15)=abb69(146)+abb69(141)+abb69(140)+abb69(142)+abb69(120)+abb69(13&
      &8)+abb69(15)+abb69(44)
      abb69(44)=2.0_ki*abb69(30)
      abb69(120)=abb69(44)*abb69(52)
      abb69(138)=-abb69(52)*abb69(30)
      abb69(133)=-abb69(133)+abb69(137)
      abb69(133)=spbk7k3*abb69(133)
      abb69(137)=-abb69(50)*abb69(125)
      abb69(133)=abb69(137)+abb69(133)
      abb69(133)=abb69(133)*abb69(128)
      abb69(137)=abb69(17)*spak2k4
      abb69(140)=abb69(104)*abb69(34)
      abb69(137)=abb69(137)+abb69(140)
      abb69(140)=abb69(137)*spak1e7
      abb69(141)=abb69(140)*abb69(101)
      abb69(56)=abb69(56)*abb69(103)
      abb69(103)=abb69(104)*abb69(48)
      abb69(58)=abb69(58)*abb69(77)
      abb69(9)=-abb69(9)*abb69(75)
      abb69(9)=abb69(9)+abb69(58)+abb69(103)+abb69(56)
      abb69(9)=spak3k4*abb69(9)
      abb69(56)=4.0_ki*abb69(145)+3.0_ki*abb69(143)
      abb69(56)=spbl5k3*abb69(56)
      abb69(58)=5.0_ki*abb69(37)-abb69(97)
      abb69(58)=abb69(104)*abb69(58)
      abb69(31)=abb69(43)*abb69(31)
      abb69(97)=abb69(33)*abb69(22)
      abb69(9)=abb69(56)+abb69(97)+abb69(31)+abb69(9)+abb69(58)
      abb69(9)=2.0_ki*abb69(9)
      abb69(31)=-8.0_ki*abb69(140)
      abb69(56)=abb69(104)*spak1k4
      abb69(58)=4.0_ki*abb69(56)
      abb69(80)=abb69(80)*abb69(79)
      abb69(97)=-abb69(119)*abb69(75)
      abb69(80)=abb69(97)+abb69(80)
      abb69(80)=spak4e7*abb69(80)
      abb69(97)=abb69(137)*abb69(35)
      abb69(103)=abb69(122)*abb69(17)
      abb69(122)=abb69(132)*abb69(71)
      abb69(132)=abb69(135)*abb69(77)
      abb69(80)=-abb69(97)-abb69(122)-abb69(132)+abb69(103)+abb69(80)
      abb69(97)=2.0_ki*abb69(80)
      abb69(103)=-20.0_ki*abb69(56)
      abb69(56)=-6.0_ki*abb69(56)
      abb69(37)=-abb69(51)*abb69(37)
      abb69(122)=abb69(85)*abb69(43)
      abb69(22)=-abb69(71)*abb69(22)
      abb69(22)=abb69(37)+abb69(22)+abb69(122)
      abb69(22)=spbe7k3*abb69(22)
      abb69(37)=abb69(79)*spak2k4
      abb69(34)=abb69(51)*abb69(34)
      abb69(122)=-abb69(37)-abb69(34)
      abb69(48)=abb69(122)*abb69(48)
      abb69(43)=abb69(79)*abb69(43)
      abb69(122)=spak1l6*abb69(34)
      abb69(43)=abb69(43)+abb69(122)
      abb69(43)=spbl6k3*abb69(43)
      abb69(27)=abb69(79)*abb69(27)
      abb69(122)=spak1l5*abb69(34)
      abb69(27)=abb69(27)+abb69(122)
      abb69(27)=spbl5k3*abb69(27)
      abb69(17)=abb69(17)*abb69(144)
      abb69(70)=-abb69(5)*abb69(70)
      abb69(14)=-abb69(14)*abb69(28)
      abb69(28)=-abb69(119)*abb69(144)
      abb69(14)=abb69(28)+abb69(14)
      abb69(14)=abb69(6)*abb69(14)
      abb69(28)=abb69(79)*abb69(121)
      abb69(14)=abb69(28)+abb69(27)+abb69(43)+abb69(14)+abb69(70)+abb69(48)+abb&
      &69(17)+abb69(22)
      abb69(17)=abb69(44)*abb69(51)
      abb69(22)=-abb69(51)*abb69(30)
      abb69(27)=-abb69(37)+abb69(34)
      abb69(27)=spbk7k3*abb69(27)
      abb69(28)=-abb69(71)*abb69(125)
      abb69(27)=abb69(28)+abb69(27)
      abb69(27)=abb69(27)*abb69(128)
      abb69(28)=abb69(26)*spak1k3
      abb69(30)=abb69(45)*spbk4k2
      abb69(34)=abb69(108)*spak1k7
      abb69(37)=spbl5k2*abb69(118)*spak1l5
      abb69(43)=spbl6k2*abb69(111)*spak1l6
      abb69(36)=abb69(36)*abb69(32)
      abb69(40)=abb69(40)*abb69(109)
      abb69(24)=-abb69(28)-abb69(30)+abb69(37)+abb69(43)-abb69(24)-abb69(34)+ab&
      &b69(36)+abb69(40)
      abb69(28)=2.0_ki*abb69(78)*abb69(24)
      abb69(30)=3.0_ki*spak1k3
      abb69(34)=-abb69(95)*abb69(30)
      abb69(36)=abb69(21)*spak1k4
      abb69(36)=3.0_ki*abb69(36)
      abb69(37)=spbk4k2*abb69(36)
      abb69(40)=-spal6k7*spak1l5
      abb69(43)=-spal5k7*spak1l6
      abb69(40)=abb69(40)+abb69(43)
      abb69(10)=abb69(10)*abb69(40)
      abb69(40)=spbl6k2*spak1l6
      abb69(43)=-abb69(147)*abb69(40)
      abb69(44)=spbl5k2*spak1l5
      abb69(48)=-abb69(149)*abb69(44)
      abb69(10)=abb69(37)+abb69(34)+abb69(48)+abb69(43)+abb69(123)+abb69(10)
      abb69(10)=2.0_ki*abb69(10)
      abb69(34)=-4.0_ki*abb69(24)
      abb69(37)=-2.0_ki*abb69(24)
      abb69(43)=abb69(79)*spak1l5
      abb69(48)=abb69(11)*spak1l6
      abb69(43)=abb69(43)+abb69(48)
      abb69(48)=-abb69(43)*abb69(87)
      abb69(70)=spbe7l6*spak1l6
      abb69(78)=spbe7l5*spak1l5
      abb69(70)=abb69(70)+abb69(78)
      abb69(30)=abb69(30)*spbe7k3
      abb69(78)=spbk7e7*spak1k7
      abb69(30)=abb69(78)+abb69(30)-abb69(70)
      abb69(30)=abb69(21)*abb69(30)
      abb69(78)=abb69(109)*abb69(114)
      abb69(32)=abb69(32)*abb69(127)
      abb69(86)=abb69(66)*abb69(86)
      abb69(87)=abb69(86)*abb69(129)
      abb69(64)=abb69(69)*abb69(64)
      abb69(64)=abb69(87)+abb69(64)
      abb69(87)=abb69(64)*abb69(91)
      abb69(109)=c2*abb69(65)
      abb69(66)=abb69(109)+abb69(66)
      abb69(66)=abb69(57)*abb69(66)
      abb69(109)=abb69(115)*abb69(65)
      abb69(66)=-abb69(109)+abb69(66)
      abb69(38)=abb69(38)*abb69(66)
      abb69(66)=abb69(38)*abb69(94)
      abb69(66)=abb69(87)+abb69(66)
      abb69(66)=abb69(5)*abb69(66)
      abb69(87)=abb69(38)*abb69(91)
      abb69(86)=abb69(86)*abb69(124)
      abb69(69)=abb69(69)*abb69(130)
      abb69(69)=abb69(86)+abb69(69)
      abb69(86)=abb69(69)*abb69(94)
      abb69(86)=abb69(87)+abb69(86)
      abb69(86)=abb69(6)*abb69(86)
      abb69(36)=spbe7k4*abb69(36)
      abb69(29)=spak1l6*abb69(29)
      abb69(7)=spak1l5*abb69(7)
      abb69(7)=abb69(29)+abb69(7)
      abb69(7)=abb69(82)*abb69(7)
      abb69(7)=abb69(36)+abb69(48)+abb69(86)+abb69(66)+abb69(32)+2.0_ki*abb69(7&
      &)+abb69(78)+abb69(30)
      abb69(29)=4.0_ki*abb69(43)
      abb69(30)=abb69(67)*abb69(129)
      abb69(32)=-spak1l6*abb69(30)
      abb69(36)=-abb69(72)*abb69(65)*abb69(57)
      abb69(48)=abb69(109)*abb69(3)
      abb69(36)=abb69(48)+abb69(36)
      abb69(48)=spak1l5*abb69(36)
      abb69(32)=abb69(32)+abb69(48)
      abb69(32)=abb69(5)*abb69(32)
      abb69(48)=spak1l6*abb69(36)
      abb69(57)=abb69(67)*abb69(124)
      abb69(65)=-spak1l5*abb69(57)
      abb69(48)=abb69(48)+abb69(65)
      abb69(48)=abb69(6)*abb69(48)
      abb69(32)=abb69(32)+abb69(48)
      abb69(32)=4.0_ki*abb69(32)
      abb69(43)=2.0_ki*abb69(43)
      abb69(48)=spak1k3*spbk7k3
      abb69(65)=-spbk7l6*spak1l6
      abb69(66)=-spbk7l5*spak1l5
      abb69(48)=abb69(66)+abb69(65)+abb69(48)
      abb69(48)=abb69(25)*abb69(48)
      abb69(65)=-spak1k2*abb69(108)
      abb69(66)=spbk7k4*abb69(45)
      abb69(64)=-spal6e7*abb69(64)
      abb69(67)=-spal5e7*abb69(38)
      abb69(64)=abb69(64)+abb69(67)
      abb69(64)=abb69(64)*abb69(77)
      abb69(38)=-spal6e7*abb69(38)
      abb69(67)=-spal5e7*abb69(69)
      abb69(38)=abb69(38)+abb69(67)
      abb69(38)=abb69(38)*abb69(75)
      abb69(67)=-abb69(50)*abb69(134)
      abb69(69)=-abb69(71)*abb69(13)
      abb69(67)=abb69(67)+abb69(69)
      abb69(67)=abb69(67)*abb69(62)
      abb69(69)=-abb69(50)*abb69(12)
      abb69(72)=-abb69(71)*abb69(136)
      abb69(69)=abb69(69)+abb69(72)
      abb69(69)=abb69(69)*abb69(60)
      abb69(72)=spbk7e7*spak1e7*abb69(21)
      abb69(38)=abb69(66)+2.0_ki*abb69(72)+abb69(69)+abb69(67)+abb69(38)+abb69(&
      &65)+abb69(64)+abb69(48)
      abb69(38)=2.0_ki*abb69(38)
      abb69(48)=abb69(11)*spak1e7
      abb69(64)=-abb69(48)*abb69(101)
      abb69(65)=spbk4k2*spak1k4
      abb69(40)=abb69(65)+5.0_ki*abb69(40)
      abb69(40)=abb69(52)*abb69(40)
      abb69(66)=5.0_ki*abb69(85)
      abb69(67)=-spak1l5*abb69(66)
      abb69(69)=3.0_ki*spak1k7
      abb69(72)=abb69(50)*abb69(69)
      abb69(78)=-spak1k3*abb69(100)
      abb69(40)=abb69(78)+abb69(67)+abb69(72)+abb69(40)
      abb69(40)=2.0_ki*abb69(40)
      abb69(48)=8.0_ki*abb69(48)
      abb69(67)=abb69(11)*abb69(128)
      abb69(72)=-abb69(11)*abb69(35)
      abb69(78)=spak1k3*spbe7k3
      abb69(82)=spbe7k4*spak1k4
      abb69(85)=abb69(69)*spbk7e7
      abb69(70)=abb69(85)+abb69(78)+abb69(82)+abb69(70)
      abb69(78)=abb69(52)*abb69(70)
      abb69(11)=-spak1k2*abb69(11)
      abb69(30)=abb69(30)*abb69(77)
      abb69(82)=-abb69(36)*abb69(75)
      abb69(11)=abb69(82)+abb69(11)+abb69(30)+abb69(78)
      abb69(30)=abb69(128)*spbk7e7
      abb69(78)=abb69(52)*abb69(30)
      abb69(82)=abb69(79)*spak1e7
      abb69(85)=-abb69(82)*abb69(101)
      abb69(44)=abb69(65)+5.0_ki*abb69(44)
      abb69(44)=abb69(51)*abb69(44)
      abb69(65)=-spak1l6*abb69(66)
      abb69(66)=abb69(71)*abb69(69)
      abb69(69)=-spak1k3*abb69(104)
      abb69(44)=abb69(69)+abb69(65)+abb69(66)+abb69(44)
      abb69(44)=2.0_ki*abb69(44)
      abb69(65)=8.0_ki*abb69(82)
      abb69(66)=abb69(79)*abb69(128)
      abb69(69)=-abb69(79)*abb69(35)
      abb69(70)=abb69(51)*abb69(70)
      abb69(79)=-spak1k2*abb69(79)
      abb69(36)=-abb69(36)*abb69(77)
      abb69(57)=abb69(57)*abb69(75)
      abb69(36)=abb69(57)+abb69(79)+abb69(36)+abb69(70)
      abb69(30)=abb69(51)*abb69(30)
      abb69(39)=abb69(39)*abb69(91)
      abb69(33)=abb69(33)*abb69(94)
      abb69(33)=abb69(39)+abb69(33)
      abb69(33)=16.0_ki*abb69(33)
      abb69(26)=abb69(26)*spak1k2
      abb69(39)=abb69(45)*spbk4k3
      abb69(25)=abb69(110)*abb69(25)
      abb69(13)=abb69(13)*abb69(104)
      abb69(45)=abb69(59)*spal6e7
      abb69(13)=abb69(13)+abb69(45)
      abb69(13)=abb69(13)*abb69(62)
      abb69(12)=abb69(12)*abb69(100)
      abb69(45)=abb69(46)*spal5e7
      abb69(12)=abb69(12)+abb69(45)
      abb69(12)=abb69(12)*abb69(60)
      abb69(45)=abb69(73)*spal6e7
      abb69(46)=-abb69(119)*spal5e7
      abb69(45)=abb69(45)-abb69(46)
      abb69(45)=abb69(45)*abb69(75)
      abb69(46)=abb69(73)*spal5e7
      abb69(57)=-abb69(98)*spal6e7
      abb69(46)=abb69(46)-abb69(57)
      abb69(46)=abb69(46)*abb69(77)
      abb69(50)=abb69(113)*abb69(50)
      abb69(57)=abb69(116)*abb69(71)
      abb69(12)=abb69(45)+abb69(46)+abb69(50)+abb69(57)-abb69(25)+abb69(26)+abb&
      &69(39)+abb69(13)+abb69(12)
      abb69(13)=-2.0_ki*abb69(12)
      abb69(25)=-4.0_ki*abb69(117)
      abb69(26)=2.0_ki*abb69(117)
      abb69(39)=16.0_ki*spak1k2
      abb69(45)=abb69(100)*abb69(39)
      abb69(46)=-abb69(52)*abb69(131)
      abb69(35)=abb69(35)*spbe7k3
      abb69(50)=abb69(52)*abb69(35)
      abb69(39)=abb69(104)*abb69(39)
      abb69(57)=-abb69(51)*abb69(131)
      abb69(35)=abb69(51)*abb69(35)
      abb69(59)=-8.0_ki*abb69(106)
      abb69(60)=8.0_ki*abb69(100)
      abb69(62)=-spak3k4*abb69(60)
      abb69(70)=8.0_ki*abb69(104)
      abb69(71)=-spak3k4*abb69(70)
      abb69(73)=8.0_ki*spak2k4*abb69(95)
      abb69(60)=spak2k4*abb69(60)
      abb69(70)=spak2k4*abb69(70)
      abb69(21)=-8.0_ki*abb69(21)
      abb69(52)=-8.0_ki*abb69(52)
      abb69(51)=-8.0_ki*abb69(51)
      R2d69=0.0_ki
      rat2 = rat2 + R2d69
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='69' value='", &
          & R2d69, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd69h0
