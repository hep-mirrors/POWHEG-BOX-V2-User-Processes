module     p0_dbaru_epnebbbarg_abbrevd66h2
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(135), public :: abb66
   complex(ki), public :: R2d66
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
      abb66(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb66(2)=NC**(-1)
      abb66(3)=es56**(-1)
      abb66(4)=spbl5k2**(-1)
      abb66(5)=spak2l6**(-1)
      abb66(6)=spak2l5**(-1)
      abb66(7)=spbl6k2**(-1)
      abb66(8)=c3*abb66(2)
      abb66(9)=c4*abb66(2)**2
      abb66(8)=-c2+abb66(8)-abb66(9)
      abb66(9)=i_*CVDU*abb66(3)*abb66(1)
      abb66(10)=abb66(9)*spak1k4
      abb66(11)=TR*gW
      abb66(12)=abb66(11)*mB
      abb66(12)=abb66(12)**2
      abb66(13)=-abb66(5)*abb66(10)*abb66(8)*abb66(12)
      abb66(11)=-abb66(8)*abb66(9)*abb66(11)**2
      abb66(14)=spak1k4*abb66(11)
      abb66(15)=abb66(14)*spbl6k2
      abb66(16)=abb66(13)-abb66(15)
      abb66(17)=abb66(16)*spak2l5
      abb66(18)=abb66(12)*abb66(4)
      abb66(10)=abb66(8)*abb66(18)*abb66(10)
      abb66(19)=-abb66(10)*spbl6k2
      abb66(17)=abb66(17)+abb66(19)
      abb66(20)=spak4e7*spbe7k2
      abb66(21)=spbk4k3*abb66(20)*abb66(17)
      abb66(22)=es12*abb66(21)
      abb66(23)=spak2l5*spak1e7
      abb66(24)=abb66(23)*abb66(16)*spbe7k2
      abb66(25)=es12*abb66(24)
      abb66(26)=spak1e7*spbe7k2
      abb66(27)=abb66(26)*es12
      abb66(28)=abb66(19)*abb66(27)
      abb66(25)=abb66(28)+abb66(25)
      abb66(25)=spbk3k1*abb66(25)
      abb66(28)=abb66(15)*es12
      abb66(29)=spbe7l6*spak4e7
      abb66(30)=abb66(29)*spbk4k3
      abb66(31)=spbe7l6*spak1e7
      abb66(32)=abb66(31)*spbk3k1
      abb66(30)=abb66(30)+abb66(32)
      abb66(33)=-spal5l6*abb66(28)*abb66(30)
      abb66(22)=abb66(33)+abb66(22)+abb66(25)
      abb66(22)=4.0_ki*abb66(22)
      abb66(25)=abb66(11)*spbl6k2
      abb66(33)=spak1k2*spbk3k2
      abb66(34)=abb66(25)*abb66(33)
      abb66(35)=spak3k4*spbl6k3
      abb66(36)=abb66(34)*abb66(35)
      abb66(37)=-spbl6k3*abb66(28)
      abb66(38)=abb66(15)*abb66(33)
      abb66(39)=-spbl6k1*abb66(38)
      abb66(36)=abb66(39)+abb66(36)+abb66(37)
      abb66(36)=spal5l6*abb66(36)
      abb66(37)=-abb66(8)*abb66(9)*abb66(5)
      abb66(39)=abb66(12)*abb66(37)
      abb66(40)=abb66(39)-abb66(25)
      abb66(41)=abb66(40)*spak2l5
      abb66(8)=-abb66(8)*abb66(12)*abb66(9)*abb66(4)
      abb66(9)=abb66(8)*spbl6k2
      abb66(12)=abb66(41)+abb66(9)
      abb66(41)=spak1k2*spbk3k2**2
      abb66(42)=spak3k4*abb66(41)*abb66(12)
      abb66(36)=abb66(36)+abb66(42)
      abb66(36)=8.0_ki*abb66(36)
      abb66(42)=spak3k4*spbe7k3
      abb66(43)=abb66(42)*spal5e7
      abb66(44)=abb66(43)*abb66(34)
      abb66(45)=spbe7k1*spal5e7
      abb66(46)=abb66(38)*abb66(45)
      abb66(47)=spal5e7*spbe7k3
      abb66(48)=abb66(28)*abb66(47)
      abb66(44)=-abb66(44)+abb66(46)+abb66(48)
      abb66(44)=8.0_ki*abb66(44)
      abb66(46)=abb66(34)*abb66(20)
      abb66(48)=abb66(33)*abb66(20)
      abb66(49)=abb66(48)*abb66(39)
      abb66(46)=abb66(46)-abb66(49)
      abb66(46)=abb66(46)*spak2l5
      abb66(49)=abb66(48)*abb66(9)
      abb66(46)=abb66(46)-abb66(49)
      abb66(49)=abb66(29)*spal5l6
      abb66(50)=abb66(49)*abb66(34)
      abb66(50)=abb66(50)+abb66(46)
      abb66(51)=8.0_ki*abb66(50)
      abb66(52)=-abb66(5)*abb66(10)
      abb66(53)=abb66(29)*spak1l6
      abb66(54)=-spbk4k3*abb66(53)
      abb66(32)=-spak1l6*abb66(32)
      abb66(32)=abb66(54)+abb66(32)
      abb66(32)=abb66(52)*abb66(32)
      abb66(54)=abb66(52)*spak1l5
      abb66(55)=spbk4k3*spak4e7
      abb66(56)=spbk3k1*spak1e7
      abb66(55)=abb66(55)+abb66(56)
      abb66(55)=abb66(55)*spbe7l5
      abb66(56)=-abb66(54)*abb66(55)
      abb66(32)=abb66(56)+abb66(32)
      abb66(32)=spbk2k1*abb66(32)
      abb66(56)=abb66(13)*abb66(33)
      abb66(57)=abb66(56)-abb66(38)
      abb66(58)=abb66(57)*abb66(45)
      abb66(59)=abb66(9)*abb66(33)
      abb66(60)=-abb66(43)*abb66(59)
      abb66(61)=abb66(19)*abb66(45)
      abb66(62)=abb66(33)*abb66(61)
      abb66(60)=abb66(60)+abb66(62)
      abb66(60)=abb66(6)*abb66(60)
      abb66(62)=-abb66(10)*abb66(6)
      abb66(63)=abb66(62)*spbl6k2
      abb66(63)=abb66(63)+abb66(16)
      abb66(63)=abb66(63)*es12
      abb66(64)=abb66(47)*abb66(63)
      abb66(65)=abb66(62)*spak1l5
      abb66(66)=abb66(14)*spak1l5
      abb66(67)=abb66(65)-abb66(66)
      abb66(67)=abb66(67)*spbl6k1
      abb66(68)=abb66(13)*spbl6k1
      abb66(69)=abb66(68)*abb66(7)
      abb66(70)=abb66(69)*spak1l5
      abb66(70)=abb66(67)+abb66(70)
      abb66(71)=-spbk4k3*abb66(20)*abb66(70)
      abb66(70)=-spbk3k1*abb66(26)*abb66(70)
      abb66(72)=abb66(39)*abb66(33)
      abb66(73)=abb66(72)-abb66(34)
      abb66(74)=-abb66(73)*abb66(43)
      abb66(32)=abb66(70)+abb66(71)+abb66(64)+abb66(60)+abb66(74)+abb66(58)+abb&
      &66(32)
      abb66(32)=8.0_ki*abb66(32)
      abb66(58)=abb66(13)*abb66(7)
      abb66(58)=abb66(58)+abb66(62)
      abb66(60)=spbl6k3*spak1l5
      abb66(64)=abb66(60)*abb66(58)
      abb66(70)=abb66(60)*abb66(14)
      abb66(71)=-spak1l6*spbl6k3*abb66(52)
      abb66(64)=abb66(71)-abb66(70)+abb66(64)
      abb66(64)=spbk2k1*abb66(64)
      abb66(71)=-spbl5k1*abb66(54)
      abb66(71)=abb66(71)+abb66(67)
      abb66(71)=spbk3k2*abb66(71)
      abb66(74)=abb66(60)*abb66(11)
      abb66(75)=abb66(8)*abb66(6)
      abb66(76)=abb66(60)*abb66(75)
      abb66(76)=-abb66(74)+abb66(76)
      abb66(77)=spak3k4*spbk3k2
      abb66(76)=abb66(77)*abb66(76)
      abb66(78)=abb66(39)*abb66(60)*abb66(77)
      abb66(79)=abb66(68)*spak1l5
      abb66(80)=spbk3k2*abb66(79)
      abb66(78)=abb66(78)+abb66(80)
      abb66(78)=abb66(7)*abb66(78)
      abb66(80)=abb66(52)*spbk3k2
      abb66(81)=-spbl6k1*abb66(80)
      abb66(18)=abb66(18)*abb66(37)
      abb66(37)=abb66(18)*spbk3k2
      abb66(82)=abb66(37)*abb66(35)
      abb66(81)=abb66(82)+abb66(81)
      abb66(81)=spak1l6*abb66(81)
      abb66(82)=abb66(52)*spbk2k1
      abb66(83)=-spak1l5*abb66(82)
      abb66(84)=abb66(37)*spak1l5
      abb66(85)=spak3k4*abb66(84)
      abb66(83)=abb66(85)+abb66(83)
      abb66(83)=spbl5k3*abb66(83)
      abb66(64)=abb66(83)+abb66(64)+abb66(81)+abb66(78)+abb66(76)+abb66(71)
      abb66(64)=16.0_ki*abb66(64)
      abb66(71)=spbe7k1*spak1e7
      abb66(76)=abb66(71)*abb66(52)
      abb66(78)=abb66(76)*spbk3k2
      abb66(81)=spak1e7*spbe7k3
      abb66(83)=abb66(81)*abb66(52)
      abb66(85)=abb66(83)*spbk2k1
      abb66(86)=abb66(42)*spak1e7
      abb66(87)=abb66(37)*abb66(86)
      abb66(78)=-abb66(85)+abb66(87)-abb66(78)
      abb66(85)=16.0_ki*abb66(78)
      abb66(87)=abb66(74)*abb66(20)
      abb66(88)=abb66(60)*abb66(20)
      abb66(89)=abb66(39)*abb66(7)
      abb66(90)=abb66(88)*abb66(89)
      abb66(91)=abb66(53)*abb66(37)
      abb66(92)=spbe7l5*spak4e7
      abb66(93)=abb66(84)*abb66(92)
      abb66(87)=abb66(93)-abb66(90)+abb66(87)+abb66(91)
      abb66(90)=abb66(88)*abb66(75)
      abb66(90)=abb66(90)-abb66(87)
      abb66(91)=16.0_ki*abb66(90)
      abb66(93)=abb66(26)*abb66(19)
      abb66(24)=abb66(93)+abb66(24)
      abb66(24)=spbk3k1*abb66(24)
      abb66(93)=-abb66(15)*abb66(30)
      abb66(94)=abb66(29)*abb66(34)
      abb66(93)=abb66(94)+abb66(93)
      abb66(93)=spal5l6*abb66(93)
      abb66(21)=abb66(93)+abb66(24)+abb66(21)+abb66(46)
      abb66(21)=8.0_ki*abb66(21)
      abb66(24)=abb66(15)*spbk3k2
      abb66(46)=abb66(13)*spbk3k2
      abb66(24)=abb66(24)-abb66(46)
      abb66(93)=spak2l5*abb66(24)
      abb66(94)=-spbk3k2*abb66(19)
      abb66(95)=-spal5l6*spbl6k3*abb66(15)
      abb66(93)=abb66(95)+abb66(94)+abb66(93)
      abb66(93)=16.0_ki*abb66(93)
      abb66(94)=abb66(47)*abb66(15)
      abb66(95)=16.0_ki*abb66(94)
      abb66(96)=-abb66(15)+2.0_ki*abb66(13)
      abb66(97)=abb66(96)*abb66(47)
      abb66(88)=-abb66(8)*abb66(88)
      abb66(98)=abb66(47)*abb66(19)
      abb66(88)=abb66(88)+abb66(98)
      abb66(88)=abb66(6)*abb66(88)
      abb66(98)=abb66(26)*spbk3k1
      abb66(99)=abb66(20)*spbk4k3
      abb66(98)=abb66(98)+abb66(99)
      abb66(100)=abb66(52)*abb66(98)
      abb66(101)=abb66(52)*spbe7k3
      abb66(102)=spal6e7*spbl6k2
      abb66(103)=abb66(101)*abb66(102)
      abb66(87)=abb66(103)+abb66(88)+abb66(97)+abb66(87)+abb66(100)
      abb66(87)=16.0_ki*abb66(87)
      abb66(80)=-32.0_ki*abb66(80)
      abb66(24)=spbe7k1*abb66(24)
      abb66(88)=abb66(42)*abb66(9)
      abb66(97)=-spbe7k1*abb66(19)
      abb66(88)=abb66(88)+abb66(97)
      abb66(88)=abb66(6)*spbk3k2*abb66(88)
      abb66(97)=abb66(40)*spbk3k2
      abb66(100)=abb66(97)*abb66(42)
      abb66(24)=abb66(88)+abb66(100)+abb66(24)
      abb66(24)=spak1l5*abb66(24)
      abb66(16)=-spak1l5*abb66(16)
      abb66(65)=-spbl6k2*abb66(65)
      abb66(16)=abb66(16)+abb66(65)
      abb66(16)=spbk2k1*spbe7k3*abb66(16)
      abb66(16)=abb66(16)+abb66(24)
      abb66(16)=spak2e7*abb66(16)
      abb66(24)=-abb66(56)-abb66(38)
      abb66(24)=abb66(24)*abb66(45)
      abb66(38)=-abb66(15)-abb66(13)
      abb66(38)=es12*abb66(38)*abb66(47)
      abb66(56)=abb66(52)*es12
      abb66(65)=abb66(56)*spbe7k3
      abb66(88)=abb66(33)*spbe7k1
      abb66(100)=-abb66(52)*abb66(88)
      abb66(103)=abb66(18)*abb66(33)
      abb66(104)=abb66(42)*abb66(103)
      abb66(100)=-abb66(65)+abb66(104)+abb66(100)
      abb66(100)=abb66(100)*abb66(102)
      abb66(104)=-spbk3k2*abb66(45)
      abb66(47)=-spbk2k1*abb66(47)
      abb66(47)=abb66(47)+abb66(104)
      abb66(47)=abb66(66)*abb66(47)
      abb66(104)=abb66(11)*spak1l5
      abb66(105)=abb66(104)*spbk3k2
      abb66(106)=abb66(43)*abb66(105)
      abb66(47)=abb66(106)+abb66(47)
      abb66(47)=spbl6l5*abb66(47)
      abb66(106)=-abb66(56)*abb66(98)
      abb66(107)=abb66(72)+abb66(34)
      abb66(107)=abb66(107)*abb66(43)
      abb66(108)=spbk2k1*abb66(66)*abb66(30)
      abb66(16)=abb66(47)+abb66(100)+abb66(16)+abb66(108)+abb66(38)+abb66(24)+a&
      &bb66(107)-abb66(50)+abb66(106)
      abb66(16)=4.0_ki*abb66(16)
      abb66(24)=-spbk3k2*abb66(74)
      abb66(38)=-abb66(18)*abb66(41)
      abb66(24)=abb66(38)+abb66(24)
      abb66(24)=spak3k4*abb66(24)
      abb66(38)=abb66(66)*spbl6k1
      abb66(47)=spbk3k2*abb66(38)
      abb66(50)=spbk2k1*abb66(70)
      abb66(24)=abb66(50)+abb66(24)+abb66(47)
      abb66(24)=8.0_ki*abb66(24)
      abb66(47)=abb66(104)*abb66(29)
      abb66(50)=abb66(47)*spbk3k2
      abb66(100)=abb66(103)*abb66(20)
      abb66(50)=abb66(100)-abb66(50)
      abb66(100)=8.0_ki*abb66(50)
      abb66(78)=abb66(78)+abb66(90)
      abb66(78)=8.0_ki*abb66(78)
      abb66(90)=-abb66(94)+abb66(50)
      abb66(90)=8.0_ki*abb66(90)
      abb66(50)=-4.0_ki*abb66(50)
      abb66(94)=abb66(74)+abb66(103)
      abb66(106)=spak3k4*abb66(94)
      abb66(106)=abb66(106)+abb66(38)
      abb66(106)=spbe7k3*abb66(106)
      abb66(107)=abb66(52)*abb66(33)
      abb66(108)=abb66(107)+abb66(70)
      abb66(108)=abb66(108)*spbe7k1
      abb66(65)=-abb66(108)-abb66(65)+abb66(106)
      abb66(106)=8.0_ki*abb66(65)
      abb66(108)=abb66(8)*abb66(42)
      abb66(109)=spbe7k1*abb66(10)
      abb66(109)=abb66(108)+abb66(109)
      abb66(109)=abb66(6)*abb66(60)*abb66(109)
      abb66(67)=spbe7k3*abb66(67)
      abb66(110)=-spbe7k1*abb66(13)
      abb66(111)=abb66(39)*abb66(42)
      abb66(110)=abb66(111)+abb66(110)
      abb66(110)=abb66(60)*abb66(110)
      abb66(79)=spbe7k3*abb66(79)
      abb66(79)=abb66(79)+abb66(110)
      abb66(79)=abb66(7)*abb66(79)
      abb66(110)=abb66(52)*spbe7k1
      abb66(111)=abb66(18)*abb66(42)
      abb66(111)=abb66(111)-abb66(110)
      abb66(111)=spbl6k3*abb66(111)
      abb66(112)=spbl6k1*abb66(101)
      abb66(111)=abb66(112)+abb66(111)
      abb66(111)=spak1l6*abb66(111)
      abb66(112)=spbk4k3*spak1k4**2
      abb66(113)=abb66(18)*abb66(112)
      abb66(70)=abb66(113)+abb66(70)
      abb66(70)=spbe7k1*abb66(70)
      abb66(113)=-abb66(42)*abb66(74)
      abb66(54)=-spbe7k1*abb66(54)
      abb66(114)=abb66(18)*spak1l5
      abb66(115)=abb66(42)*abb66(114)
      abb66(54)=abb66(115)+abb66(54)
      abb66(54)=spbl5k3*abb66(54)
      abb66(115)=spbl5k1*spak1l5*abb66(101)
      abb66(54)=abb66(115)+abb66(54)+abb66(111)+abb66(79)+abb66(67)+abb66(109)+&
      &abb66(113)+abb66(70)
      abb66(54)=8.0_ki*abb66(54)
      abb66(67)=16.0_ki*abb66(101)
      abb66(65)=-4.0_ki*abb66(65)
      abb66(70)=-8.0_ki*abb66(101)
      abb66(38)=abb66(38)-abb66(56)
      abb66(30)=-4.0_ki*abb66(38)*abb66(30)
      abb66(38)=-abb66(94)*abb66(35)
      abb66(79)=spbl6k3*abb66(56)
      abb66(101)=spbl6k1*abb66(107)
      abb66(38)=abb66(101)+abb66(38)+abb66(79)
      abb66(38)=8.0_ki*abb66(38)
      abb66(79)=abb66(94)*abb66(29)
      abb66(101)=8.0_ki*abb66(79)
      abb66(109)=abb66(71)*spbl6k3
      abb66(111)=abb66(52)*abb66(109)
      abb66(113)=-spbl6k1*abb66(83)
      abb66(115)=abb66(86)*spbl6k3
      abb66(116)=-abb66(18)*abb66(115)
      abb66(111)=abb66(113)+abb66(116)+abb66(111)
      abb66(111)=8.0_ki*abb66(111)
      abb66(79)=4.0_ki*abb66(79)
      abb66(113)=abb66(42)*abb66(34)
      abb66(116)=-abb66(15)*abb66(88)
      abb66(28)=-spbe7k3*abb66(28)
      abb66(28)=abb66(28)+abb66(113)+abb66(116)
      abb66(28)=spal6e7*abb66(28)
      abb66(113)=abb66(33)*abb66(11)
      abb66(116)=abb66(113)*abb66(43)
      abb66(117)=abb66(45)*abb66(14)
      abb66(118)=abb66(117)*abb66(33)
      abb66(119)=abb66(14)*spbe7k3
      abb66(120)=abb66(119)*spal5e7
      abb66(121)=abb66(120)*es12
      abb66(116)=-abb66(121)+abb66(116)-abb66(118)
      abb66(118)=spbl5k2*abb66(116)
      abb66(99)=-es12*abb66(14)*abb66(99)
      abb66(121)=abb66(14)*spbk3k1
      abb66(122)=-abb66(27)*abb66(121)
      abb66(28)=abb66(118)+abb66(28)+abb66(99)+abb66(122)
      abb66(28)=4.0_ki*abb66(28)
      abb66(99)=8.0_ki*abb66(11)
      abb66(41)=-spak3k4*abb66(99)*abb66(41)
      abb66(118)=abb66(99)*abb66(48)
      abb66(122)=abb66(86)*spbk3k2
      abb66(123)=-abb66(8)*abb66(122)
      abb66(124)=-spbk3k2*abb66(10)*abb66(71)
      abb66(123)=abb66(123)+abb66(124)
      abb66(123)=abb66(6)*abb66(123)
      abb66(58)=abb66(81)*abb66(58)
      abb66(124)=abb66(81)*abb66(14)
      abb66(58)=-abb66(124)+abb66(58)
      abb66(58)=spbk2k1*abb66(58)
      abb66(125)=abb66(11)*abb66(122)
      abb66(126)=abb66(71)*abb66(14)
      abb66(127)=-spbk3k2*abb66(126)
      abb66(46)=abb66(71)*abb66(46)
      abb66(122)=-abb66(39)*abb66(122)
      abb66(46)=abb66(122)+abb66(46)
      abb66(46)=abb66(7)*abb66(46)
      abb66(46)=abb66(58)+abb66(46)+abb66(123)+abb66(125)+abb66(127)
      abb66(46)=8.0_ki*abb66(46)
      abb66(58)=-abb66(14)*abb66(98)
      abb66(98)=abb66(11)*abb66(48)
      abb66(122)=-spal6e7*spbe7k3*abb66(15)
      abb66(120)=-spbl5k2*abb66(120)
      abb66(58)=abb66(120)+abb66(122)+abb66(98)+abb66(58)
      abb66(58)=8.0_ki*abb66(58)
      abb66(98)=16.0_ki*spbk3k2*abb66(14)
      abb66(120)=4.0_ki*abb66(11)
      abb66(48)=-abb66(48)*abb66(120)
      abb66(122)=abb66(11)*spbl6k3
      abb66(123)=-abb66(42)*abb66(122)
      abb66(125)=abb66(14)*spbl6k3
      abb66(127)=spbe7k1*abb66(125)
      abb66(128)=-spbl6k1*abb66(119)
      abb66(123)=abb66(128)+abb66(123)+abb66(127)
      abb66(123)=spak1l6*abb66(123)
      abb66(108)=abb66(33)*abb66(108)
      abb66(127)=abb66(10)*abb66(88)
      abb66(108)=abb66(108)+abb66(127)
      abb66(108)=abb66(6)*abb66(108)
      abb66(127)=-spbe7k3*abb66(62)
      abb66(127)=abb66(119)+abb66(127)
      abb66(127)=es12*abb66(127)
      abb66(128)=-abb66(42)*abb66(104)
      abb66(129)=spbe7k1*abb66(66)
      abb66(128)=abb66(128)+abb66(129)
      abb66(128)=spbl5k3*abb66(128)
      abb66(129)=-abb66(42)*abb66(113)
      abb66(130)=abb66(14)*abb66(88)
      abb66(131)=-es12*spbe7k3
      abb66(131)=abb66(131)-abb66(88)
      abb66(131)=abb66(13)*abb66(131)
      abb66(132)=abb66(42)*abb66(72)
      abb66(131)=abb66(132)+abb66(131)
      abb66(131)=abb66(7)*abb66(131)
      abb66(112)=-spbe7k1*abb66(11)*abb66(112)
      abb66(66)=-spbl5k1*spbe7k3*abb66(66)
      abb66(66)=abb66(66)+abb66(128)+abb66(112)+abb66(123)+abb66(131)+abb66(127&
      &)+abb66(108)+abb66(129)+abb66(130)
      abb66(66)=4.0_ki*abb66(66)
      abb66(108)=8.0_ki*abb66(119)
      abb66(112)=4.0_ki*abb66(119)
      abb66(119)=abb66(122)*abb66(86)
      abb66(123)=abb66(126)*spbl6k3
      abb66(119)=abb66(119)-abb66(123)
      abb66(123)=abb66(124)*spbl6k1
      abb66(123)=abb66(123)+abb66(119)
      abb66(127)=4.0_ki*abb66(123)
      abb66(57)=-spbe7k1*abb66(57)
      abb66(128)=abb66(42)*abb66(59)
      abb66(19)=-abb66(88)*abb66(19)
      abb66(19)=abb66(128)+abb66(19)
      abb66(19)=abb66(6)*abb66(19)
      abb66(63)=-spbe7k3*abb66(63)
      abb66(88)=abb66(73)*abb66(42)
      abb66(19)=abb66(63)+abb66(19)+abb66(88)+abb66(57)
      abb66(19)=spak2e7*abb66(19)
      abb66(57)=spbl6l5*abb66(116)
      abb66(63)=abb66(62)-abb66(14)
      abb66(63)=abb66(63)*spbl6k1
      abb66(63)=abb66(63)+abb66(69)
      abb66(69)=abb66(20)*spak1k2
      abb66(88)=abb66(69)*abb66(63)
      abb66(116)=es12*abb66(29)
      abb66(128)=spbl6k1*abb66(53)
      abb66(116)=abb66(128)+abb66(116)
      abb66(116)=abb66(14)*abb66(116)
      abb66(88)=abb66(116)+abb66(88)
      abb66(88)=spbk4k3*abb66(88)
      abb66(116)=abb66(26)*spak1k2
      abb66(63)=abb66(116)*abb66(63)
      abb66(128)=abb66(31)*spak1l6
      abb66(129)=abb66(128)*spbl6k1
      abb66(130)=abb66(31)*es12
      abb66(129)=abb66(129)+abb66(130)
      abb66(131)=abb66(14)*abb66(129)
      abb66(63)=abb66(131)+abb66(63)
      abb66(63)=spbk3k1*abb66(63)
      abb66(55)=abb66(56)*abb66(55)
      abb66(19)=abb66(57)+abb66(19)+abb66(55)+abb66(88)+abb66(63)
      abb66(19)=4.0_ki*abb66(19)
      abb66(55)=2.0_ki*abb66(14)-abb66(62)
      abb66(55)=spbl6k1*abb66(55)
      abb66(57)=-abb66(75)*abb66(35)
      abb66(55)=abb66(55)+abb66(57)
      abb66(55)=abb66(33)*abb66(55)
      abb66(57)=-spbl6k3*abb66(62)
      abb66(57)=2.0_ki*abb66(125)+abb66(57)
      abb66(57)=es12*abb66(57)
      abb66(63)=-es12*spbl6k3*abb66(13)
      abb66(33)=-abb66(33)*abb66(68)
      abb66(72)=-abb66(72)*abb66(35)
      abb66(33)=abb66(33)+abb66(72)+abb66(63)
      abb66(33)=abb66(7)*abb66(33)
      abb66(63)=spak1l6*spak3k4*abb66(11)*spbl6k3**2
      abb66(72)=-spak3k4*abb66(103)
      abb66(56)=abb66(72)+abb66(56)
      abb66(56)=spbl5k3*abb66(56)
      abb66(72)=spbl5k1*abb66(107)
      abb66(33)=abb66(72)+abb66(56)+abb66(63)+abb66(33)+abb66(57)+abb66(55)
      abb66(33)=8.0_ki*abb66(33)
      abb66(55)=8.0_ki*abb66(123)
      abb66(56)=abb66(89)+abb66(75)
      abb66(57)=abb66(56)*spbl6k3
      abb66(63)=abb66(69)*abb66(57)
      abb66(72)=abb66(69)-abb66(53)
      abb66(72)=abb66(122)*abb66(72)
      abb66(75)=abb66(113)*abb66(29)
      abb66(88)=abb66(92)*abb66(103)
      abb66(63)=abb66(63)-abb66(75)-abb66(72)-abb66(88)
      abb66(72)=8.0_ki*abb66(63)
      abb66(8)=-abb66(8)*abb66(115)
      abb66(10)=-abb66(10)*abb66(109)
      abb66(8)=abb66(8)+abb66(10)
      abb66(8)=abb66(6)*abb66(8)
      abb66(10)=-abb66(81)*abb66(62)
      abb66(10)=abb66(124)+abb66(10)
      abb66(10)=spbl6k1*abb66(10)
      abb66(13)=abb66(13)*abb66(109)
      abb66(62)=-abb66(81)*abb66(68)
      abb66(68)=-abb66(39)*abb66(115)
      abb66(13)=abb66(62)+abb66(68)+abb66(13)
      abb66(13)=abb66(7)*abb66(13)
      abb66(62)=-abb66(18)*abb66(86)
      abb66(62)=abb66(62)+abb66(76)
      abb66(62)=spbl5k3*abb66(62)
      abb66(68)=-spbl5k1*abb66(83)
      abb66(8)=abb66(68)+abb66(62)+abb66(13)+abb66(10)+abb66(8)+abb66(119)
      abb66(8)=8.0_ki*abb66(8)
      abb66(10)=abb66(123)-abb66(63)
      abb66(10)=4.0_ki*abb66(10)
      abb66(13)=abb66(11)*abb66(86)
      abb66(13)=abb66(13)-abb66(126)
      abb66(13)=spbl5k3*abb66(13)
      abb66(62)=spbl5k1*abb66(124)
      abb66(13)=abb66(13)+abb66(62)
      abb66(13)=4.0_ki*abb66(13)
      abb66(62)=-spak2l5*abb66(73)
      abb66(59)=-abb66(59)+abb66(62)
      abb66(59)=spak3e7*spbe7k2*abb66(59)
      abb66(62)=abb66(25)*abb66(130)
      abb66(63)=spak3e7*spbe7l6
      abb66(34)=abb66(34)*abb66(63)
      abb66(34)=abb66(62)+abb66(34)
      abb66(34)=spal5l6*abb66(34)
      abb66(62)=-abb66(69)*abb66(12)
      abb66(49)=abb66(49)*abb66(25)
      abb66(68)=spak1k2*abb66(49)
      abb66(62)=abb66(68)+abb66(62)
      abb66(62)=spbk4k2*abb66(62)
      abb66(68)=-abb66(9)*abb66(27)
      abb66(40)=-spbe7k2*abb66(40)
      abb66(23)=abb66(40)*abb66(23)
      abb66(73)=es12*abb66(23)
      abb66(34)=abb66(62)+abb66(34)+abb66(59)+abb66(68)+abb66(73)
      abb66(34)=4.0_ki*abb66(34)
      abb66(59)=spal5l6*spak1k2*spbl6k2**2*abb66(99)
      abb66(62)=spak1k2*spbe7k2
      abb66(68)=abb66(62)*abb66(25)
      abb66(73)=8.0_ki*spal5e7
      abb66(75)=abb66(73)*abb66(68)
      abb66(83)=spak1l5*abb66(56)
      abb66(83)=-abb66(104)+abb66(83)
      abb66(86)=spbl6k1*abb66(26)
      abb66(88)=-spbl6k4*abb66(20)
      abb66(86)=abb66(88)+abb66(86)
      abb66(86)=abb66(83)*abb66(86)
      abb66(60)=-abb66(60)*abb66(56)
      abb66(60)=abb66(74)+abb66(60)
      abb66(60)=spbe7k2*abb66(60)
      abb66(74)=spak1l6*spbe7l6
      abb66(88)=abb66(37)*abb66(74)
      abb66(60)=abb66(88)+abb66(60)
      abb66(60)=spak3e7*abb66(60)
      abb66(88)=abb66(39)*abb66(62)
      abb66(89)=-abb66(88)+abb66(68)
      abb66(89)=spal5e7*abb66(89)
      abb66(107)=abb66(9)*abb66(6)
      abb66(109)=abb66(62)*spal5e7
      abb66(115)=-abb66(109)*abb66(107)
      abb66(119)=spbk2k1*spak1e7*abb66(114)
      abb66(84)=spak3e7*abb66(84)
      abb66(84)=abb66(119)+abb66(84)
      abb66(84)=spbe7l5*abb66(84)
      abb66(119)=abb66(18)*abb66(53)
      abb66(123)=abb66(92)*abb66(114)
      abb66(119)=abb66(119)+abb66(123)
      abb66(119)=spbk4k2*abb66(119)
      abb66(123)=spbk2k1*abb66(18)*abb66(128)
      abb66(60)=abb66(119)+abb66(84)+abb66(60)+abb66(123)+abb66(89)+abb66(115)+&
      &abb66(86)
      abb66(60)=8.0_ki*abb66(60)
      abb66(84)=abb66(25)-abb66(107)
      abb66(84)=spak1l5*abb66(84)
      abb66(86)=abb66(18)*spbl6k2
      abb66(89)=spak1l6*abb66(86)
      abb66(84)=abb66(89)+abb66(84)
      abb66(84)=16.0_ki*abb66(84)
      abb66(89)=16.0_ki*abb66(18)
      abb66(115)=abb66(89)*abb66(26)
      abb66(119)=-abb66(26)*abb66(9)
      abb66(123)=abb66(25)*spal5l6
      abb66(124)=abb66(31)*abb66(123)
      abb66(23)=abb66(124)+abb66(119)+abb66(23)
      abb66(23)=8.0_ki*abb66(23)
      abb66(119)=-spbk2k1*abb66(31)
      abb66(124)=spbl6l5*spal5e7*spbe7k2
      abb66(119)=abb66(124)+abb66(119)
      abb66(119)=abb66(104)*abb66(119)
      abb66(88)=abb66(88)+abb66(68)
      abb66(88)=spal5e7*abb66(88)
      abb66(105)=-spbe7l6*abb66(105)
      abb66(124)=spbe7k2*abb66(103)
      abb66(105)=abb66(124)+abb66(105)
      abb66(105)=spak3e7*abb66(105)
      abb66(124)=abb66(18)*abb66(69)
      abb66(124)=abb66(124)-abb66(47)
      abb66(124)=spbk4k2*abb66(124)
      abb66(125)=abb66(18)*abb66(27)
      abb66(128)=abb66(62)*abb66(18)
      abb66(102)=abb66(128)*abb66(102)
      abb66(88)=abb66(124)+abb66(102)+abb66(105)+abb66(88)+abb66(125)+abb66(119)
      abb66(88)=4.0_ki*abb66(88)
      abb66(102)=-8.0_ki*spak1l5*abb66(25)
      abb66(105)=8.0_ki*abb66(18)
      abb66(119)=abb66(26)*abb66(105)
      abb66(124)=abb66(104)*spbe7l6
      abb66(124)=abb66(124)-abb66(128)
      abb66(125)=8.0_ki*abb66(124)
      abb66(128)=-spak1l6*abb66(18)
      abb66(83)=abb66(128)-abb66(83)
      abb66(83)=spbe7l6*abb66(83)
      abb66(128)=spbe7k4*abb66(52)
      abb66(114)=-spbe7l5*abb66(114)
      abb66(131)=spak1k3*spbe7k3
      abb66(132)=abb66(18)*abb66(131)
      abb66(83)=abb66(132)+abb66(128)+abb66(114)+abb66(83)
      abb66(83)=8.0_ki*abb66(83)
      abb66(114)=4.0_ki*abb66(124)
      abb66(73)=abb66(73)*abb66(25)
      abb66(39)=-abb66(25)+2.0_ki*abb66(39)
      abb66(124)=abb66(39)+abb66(107)
      abb66(124)=spal5e7*abb66(124)
      abb66(128)=spal6e7*abb66(86)
      abb66(124)=abb66(128)+abb66(124)
      abb66(124)=8.0_ki*abb66(124)
      abb66(128)=-4.0_ki*spal5e7*abb66(25)
      abb66(132)=spbk4k2*spak1k2
      abb66(133)=-abb66(29)*abb66(132)
      abb66(130)=abb66(133)-abb66(130)
      abb66(130)=abb66(18)*abb66(130)
      abb66(133)=spbl6k1*abb66(104)*abb66(31)
      abb66(94)=-abb66(94)*abb66(63)
      abb66(47)=-spbl6k4*abb66(47)
      abb66(47)=abb66(47)+abb66(94)+abb66(133)+abb66(130)
      abb66(47)=4.0_ki*abb66(47)
      abb66(94)=-spbl6k2*spak1k2*abb66(105)
      abb66(130)=abb66(31)*abb66(105)
      abb66(133)=spbk4k2*abb66(69)
      abb66(134)=spbl5k2*abb66(109)
      abb66(27)=abb66(134)+abb66(133)+abb66(27)
      abb66(27)=abb66(11)*abb66(27)
      abb66(133)=spak3e7*spbe7k2
      abb66(134)=abb66(113)*abb66(133)
      abb66(68)=spal6e7*abb66(68)
      abb66(27)=abb66(68)+abb66(134)+abb66(27)
      abb66(27)=4.0_ki*abb66(27)
      abb66(56)=abb66(56)-abb66(11)
      abb66(68)=-8.0_ki*abb66(26)*abb66(56)
      abb66(26)=abb66(26)*abb66(99)
      abb66(134)=abb66(62)*abb66(56)
      abb66(131)=-abb66(131)+abb66(74)
      abb66(131)=abb66(11)*abb66(131)
      abb66(104)=spbe7l5*abb66(104)
      abb66(135)=-spbe7k4*abb66(14)
      abb66(104)=abb66(135)+abb66(104)+abb66(134)+abb66(131)
      abb66(104)=4.0_ki*abb66(104)
      abb66(131)=-spal6e7*abb66(25)
      abb66(134)=-spbl5k2*spal5e7*abb66(11)
      abb66(131)=abb66(131)+abb66(134)
      abb66(131)=4.0_ki*abb66(131)
      abb66(134)=abb66(120)*abb66(31)
      abb66(57)=-abb66(122)+abb66(57)
      abb66(57)=abb66(62)*abb66(57)
      abb66(62)=-spbe7l6*abb66(113)
      abb66(74)=abb66(122)*abb66(74)
      abb66(57)=abb66(74)+abb66(62)+abb66(57)
      abb66(57)=spak3e7*abb66(57)
      abb66(62)=-spbl6k1*abb66(116)*abb66(56)
      abb66(69)=abb66(69)*abb66(56)
      abb66(53)=abb66(11)*abb66(53)
      abb66(53)=abb66(53)+abb66(69)
      abb66(53)=spbl6k4*abb66(53)
      abb66(69)=spbl6l5*abb66(109)
      abb66(69)=abb66(69)-abb66(129)
      abb66(69)=abb66(11)*abb66(69)
      abb66(74)=abb66(18)*spak1e7
      abb66(109)=-es12*abb66(74)
      abb66(103)=-spak3e7*abb66(103)
      abb66(103)=abb66(109)+abb66(103)
      abb66(103)=spbe7l5*abb66(103)
      abb66(29)=-abb66(11)*abb66(29)
      abb66(18)=-abb66(18)*abb66(92)
      abb66(18)=abb66(29)+abb66(18)
      abb66(18)=abb66(18)*abb66(132)
      abb66(18)=abb66(53)+abb66(18)+abb66(103)+abb66(57)+abb66(69)+abb66(62)
      abb66(18)=4.0_ki*abb66(18)
      abb66(29)=-2.0_ki*abb66(25)+abb66(107)
      abb66(29)=8.0_ki*spak1k2*abb66(29)
      abb66(53)=abb66(99)*abb66(31)
      abb66(31)=abb66(31)*abb66(56)
      abb66(56)=spbe7l5*abb66(74)
      abb66(31)=abb66(56)+abb66(31)
      abb66(31)=8.0_ki*abb66(31)
      abb66(56)=abb66(120)*spak1e7
      abb66(57)=-spbe7l5*abb66(56)
      abb66(62)=8.0_ki*abb66(76)
      abb66(69)=-spbk4k3*abb66(62)
      abb66(74)=abb66(89)*abb66(81)
      abb66(76)=abb66(105)*abb66(81)
      abb66(92)=4.0_ki*abb66(126)
      abb66(103)=spbk4k3*abb66(92)
      abb66(107)=abb66(99)*abb66(81)
      abb66(81)=abb66(120)*abb66(81)
      abb66(109)=-abb66(105)*spbe7k4*spak1e7
      abb66(56)=spbe7k4*abb66(56)
      abb66(113)=-8.0_ki*abb66(123)
      abb66(116)=-abb66(20)*abb66(12)
      abb66(49)=abb66(49)+abb66(116)
      abb66(116)=-4.0_ki*abb66(49)
      abb66(122)=abb66(105)*abb66(20)
      abb66(126)=abb66(120)*abb66(20)
      abb66(17)=-spbk2k1*abb66(17)
      abb66(35)=-abb66(25)*abb66(35)
      abb66(129)=spbl6k1*abb66(15)
      abb66(35)=abb66(35)+abb66(129)
      abb66(35)=spal5l6*abb66(35)
      abb66(129)=-abb66(9)*abb66(77)
      abb66(97)=-spak2l5*spak3k4*abb66(97)
      abb66(17)=abb66(35)+abb66(17)+abb66(129)+abb66(97)
      abb66(17)=8.0_ki*abb66(17)
      abb66(35)=abb66(43)*abb66(25)
      abb66(97)=abb66(45)*abb66(15)
      abb66(35)=abb66(35)-abb66(97)
      abb66(97)=8.0_ki*abb66(35)
      abb66(129)=8.0_ki*abb66(49)
      abb66(45)=-abb66(96)*abb66(45)
      abb66(96)=abb66(9)*abb66(43)
      abb66(61)=abb66(96)-abb66(61)
      abb66(61)=abb66(6)*abb66(61)
      abb66(39)=abb66(39)*abb66(43)
      abb66(96)=-spbl6k2*abb66(110)
      abb66(86)=abb66(42)*abb66(86)
      abb66(86)=abb66(86)+abb66(96)
      abb66(86)=spal6e7*abb66(86)
      abb66(39)=abb66(86)+abb66(61)+abb66(39)+abb66(45)
      abb66(39)=8.0_ki*abb66(39)
      abb66(37)=-spak3k4*abb66(37)
      abb66(37)=abb66(37)-abb66(82)
      abb66(37)=16.0_ki*abb66(37)
      abb66(45)=abb66(89)*abb66(20)
      abb66(35)=abb66(49)-abb66(35)
      abb66(35)=4.0_ki*abb66(35)
      abb66(25)=-abb66(25)*abb66(42)
      abb66(15)=spbe7k1*abb66(15)
      abb66(15)=abb66(25)+abb66(15)
      abb66(15)=spal6e7*abb66(15)
      abb66(25)=-abb66(11)*abb66(43)
      abb66(25)=abb66(25)+abb66(117)
      abb66(25)=spbl5k2*abb66(25)
      abb66(15)=abb66(15)+abb66(25)
      abb66(15)=4.0_ki*abb66(15)
      abb66(11)=abb66(11)*abb66(77)
      abb66(14)=spbk2k1*abb66(14)
      abb66(11)=abb66(11)+abb66(14)
      abb66(11)=8.0_ki*abb66(11)
      abb66(14)=abb66(99)*abb66(20)
      abb66(9)=spbe7k2*abb66(9)
      abb66(20)=-spak2l5*abb66(40)
      abb66(9)=abb66(9)+abb66(20)
      abb66(9)=spak3e7*abb66(9)
      abb66(20)=-abb66(123)*abb66(63)
      abb66(9)=abb66(9)+abb66(20)
      abb66(9)=4.0_ki*abb66(9)
      abb66(20)=abb66(105)*abb66(133)
      abb66(25)=-abb66(120)*abb66(133)
      abb66(40)=-spbk3k1*abb66(62)
      abb66(42)=32.0_ki*abb66(52)
      abb66(42)=spbk3k1*abb66(42)
      abb66(43)=spbk3k1*abb66(92)
      abb66(49)=-16.0_ki*abb66(121)
      abb66(12)=8.0_ki*abb66(12)
      abb66(52)=abb66(71)*abb66(105)
      abb66(61)=-abb66(71)*abb66(120)
      R2d66=0.0_ki
      rat2 = rat2 + R2d66
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='66' value='", &
          & R2d66, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd66h2