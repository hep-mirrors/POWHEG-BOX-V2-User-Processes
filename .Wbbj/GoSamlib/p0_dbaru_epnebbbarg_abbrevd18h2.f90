module     p0_dbaru_epnebbbarg_abbrevd18h2
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(151), public :: abb18
   complex(ki), public :: R2d18
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
      abb18(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb18(2)=1.0_ki/(es71+es34+es56-es712-es234)
      abb18(3)=NC**(-1)
      abb18(4)=es56**(-1)
      abb18(5)=es71**(-1)
      abb18(6)=spbl5k2**(-1)
      abb18(7)=spak2l6**(-1)
      abb18(8)=1.0_ki/(es34+es567-es12-es234)
      abb18(9)=spak2l5**(-1)
      abb18(10)=spbl6k2**(-1)
      abb18(11)=abb18(5)*spak1e7
      abb18(12)=abb18(4)*i_*CVDU*abb18(2)*abb18(1)
      abb18(13)=abb18(12)*spak1k4
      abb18(14)=TR*gW
      abb18(15)=abb18(14)*mB
      abb18(15)=abb18(15)**2
      abb18(16)=abb18(11)*abb18(13)*abb18(15)
      abb18(17)=abb18(3)*c4
      abb18(18)=abb18(17)*abb18(16)
      abb18(19)=abb18(16)*c3
      abb18(18)=abb18(18)-abb18(19)
      abb18(20)=abb18(18)*abb18(3)
      abb18(21)=abb18(16)*c4
      abb18(22)=abb18(20)-abb18(21)
      abb18(22)=abb18(22)*abb18(7)
      abb18(14)=abb18(14)**2
      abb18(23)=abb18(14)*spbl6k2
      abb18(24)=abb18(23)*abb18(11)
      abb18(25)=abb18(13)*c4
      abb18(26)=abb18(24)*abb18(25)
      abb18(27)=abb18(26)*abb18(3)
      abb18(28)=abb18(13)*c3
      abb18(24)=abb18(24)*abb18(28)
      abb18(27)=abb18(27)-abb18(24)
      abb18(29)=abb18(27)*abb18(3)
      abb18(22)=abb18(22)-abb18(29)+abb18(26)
      abb18(22)=abb18(22)*spak2l5
      abb18(30)=-spbl6k2*abb18(18)
      abb18(31)=abb18(30)*abb18(3)
      abb18(32)=abb18(21)*spbl6k2
      abb18(33)=abb18(31)+abb18(32)
      abb18(34)=abb18(33)*abb18(6)
      abb18(35)=abb18(19)*abb18(7)
      abb18(36)=abb18(35)-abb18(24)
      abb18(37)=abb18(36)*spak2l5
      abb18(38)=abb18(6)*spbl6k2
      abb18(39)=abb18(19)*abb18(38)
      abb18(37)=abb18(37)+abb18(39)
      abb18(37)=abb18(37)*NC
      abb18(22)=abb18(22)-abb18(34)+abb18(37)
      abb18(34)=spbe7k1*spbk3k2
      abb18(22)=abb18(22)*abb18(34)
      abb18(13)=abb18(13)*abb18(8)
      abb18(40)=abb18(23)*abb18(13)
      abb18(41)=NC*c3
      abb18(42)=abb18(41)*abb18(40)
      abb18(43)=abb18(40)*c4
      abb18(42)=abb18(42)-abb18(43)
      abb18(44)=abb18(17)*abb18(40)
      abb18(40)=abb18(40)*c3
      abb18(44)=abb18(44)-abb18(40)
      abb18(45)=abb18(44)*abb18(3)
      abb18(46)=abb18(45)+abb18(42)
      abb18(47)=spbk4k3*spak4e7
      abb18(46)=abb18(46)*abb18(47)
      abb18(48)=abb18(13)*spak1e7
      abb18(49)=abb18(48)*abb18(23)
      abb18(50)=abb18(49)*abb18(41)
      abb18(51)=abb18(49)*c4
      abb18(50)=abb18(50)-abb18(51)
      abb18(52)=abb18(49)*abb18(17)
      abb18(49)=abb18(49)*c3
      abb18(52)=abb18(52)-abb18(49)
      abb18(53)=abb18(52)*abb18(3)
      abb18(54)=abb18(53)+abb18(50)
      abb18(54)=abb18(54)*spbk3k1
      abb18(46)=abb18(46)+abb18(54)
      abb18(54)=spbe7l6*spal5l6
      abb18(46)=abb18(46)*abb18(54)
      abb18(12)=abb18(12)*abb18(11)
      abb18(23)=abb18(12)*abb18(23)
      abb18(55)=abb18(23)*abb18(41)
      abb18(56)=abb18(23)*c4
      abb18(55)=abb18(55)-abb18(56)
      abb18(57)=abb18(23)*abb18(17)
      abb18(23)=abb18(23)*c3
      abb18(57)=abb18(57)-abb18(23)
      abb18(58)=abb18(57)*abb18(3)
      abb18(59)=abb18(58)+abb18(55)
      abb18(60)=spak4k7*spbk7e7
      abb18(59)=abb18(59)*abb18(60)
      abb18(61)=abb18(24)*NC
      abb18(61)=abb18(61)-abb18(26)
      abb18(62)=abb18(29)+abb18(61)
      abb18(62)=abb18(62)*spbe7k1
      abb18(59)=abb18(59)-abb18(62)
      abb18(62)=spbl6k3*spal5l6
      abb18(59)=abb18(59)*abb18(62)
      abb18(46)=abb18(46)+abb18(59)
      abb18(59)=abb18(15)*c4
      abb18(63)=abb18(59)*abb18(13)
      abb18(64)=abb18(63)*abb18(3)
      abb18(15)=abb18(15)*c3
      abb18(65)=abb18(15)*abb18(13)
      abb18(64)=abb18(64)-abb18(65)
      abb18(66)=abb18(64)*abb18(3)
      abb18(67)=abb18(66)-abb18(63)
      abb18(67)=abb18(67)*abb18(7)
      abb18(67)=abb18(67)-abb18(45)+abb18(43)
      abb18(67)=abb18(67)*spak2l5
      abb18(68)=abb18(65)*spbl6k2
      abb18(69)=abb18(3)*spbl6k2
      abb18(70)=abb18(69)*abb18(63)
      abb18(68)=abb18(68)-abb18(70)
      abb18(70)=abb18(68)*abb18(3)
      abb18(71)=abb18(63)*spbl6k2
      abb18(72)=abb18(70)+abb18(71)
      abb18(73)=abb18(72)*abb18(6)
      abb18(74)=abb18(65)*abb18(7)
      abb18(75)=abb18(74)-abb18(40)
      abb18(76)=abb18(75)*spak2l5
      abb18(77)=abb18(38)*abb18(65)
      abb18(76)=abb18(76)+abb18(77)
      abb18(76)=abb18(76)*NC
      abb18(67)=abb18(67)-abb18(73)+abb18(76)
      abb18(73)=abb18(47)*spbe7k2
      abb18(67)=abb18(67)*abb18(73)
      abb18(78)=abb18(12)*abb18(59)
      abb18(79)=abb18(78)*abb18(3)
      abb18(80)=abb18(12)*abb18(15)
      abb18(79)=abb18(79)-abb18(80)
      abb18(81)=abb18(79)*abb18(3)
      abb18(82)=abb18(81)-abb18(78)
      abb18(82)=abb18(82)*abb18(7)
      abb18(82)=abb18(82)-abb18(58)+abb18(56)
      abb18(82)=abb18(82)*spak2l5
      abb18(83)=abb18(80)*spbl6k2
      abb18(84)=abb18(69)*abb18(78)
      abb18(83)=abb18(83)-abb18(84)
      abb18(84)=abb18(83)*abb18(3)
      abb18(85)=abb18(78)*spbl6k2
      abb18(86)=abb18(84)+abb18(85)
      abb18(87)=abb18(86)*abb18(6)
      abb18(88)=abb18(80)*abb18(7)
      abb18(89)=abb18(88)-abb18(23)
      abb18(90)=abb18(89)*spak2l5
      abb18(91)=abb18(80)*abb18(38)
      abb18(90)=abb18(90)+abb18(91)
      abb18(90)=abb18(90)*NC
      abb18(82)=abb18(82)-abb18(87)+abb18(90)
      abb18(87)=abb18(60)*spbk3k2
      abb18(82)=abb18(82)*abb18(87)
      abb18(59)=abb18(48)*abb18(59)
      abb18(92)=abb18(59)*abb18(3)
      abb18(15)=abb18(48)*abb18(15)
      abb18(92)=abb18(92)-abb18(15)
      abb18(93)=abb18(92)*abb18(3)
      abb18(94)=abb18(93)-abb18(59)
      abb18(94)=abb18(94)*abb18(7)
      abb18(94)=abb18(94)-abb18(53)+abb18(51)
      abb18(94)=abb18(94)*spak2l5
      abb18(95)=abb18(15)*spbl6k2
      abb18(69)=abb18(69)*abb18(59)
      abb18(69)=abb18(95)-abb18(69)
      abb18(95)=abb18(69)*abb18(3)
      abb18(96)=abb18(59)*spbl6k2
      abb18(97)=abb18(95)+abb18(96)
      abb18(98)=abb18(97)*abb18(6)
      abb18(99)=abb18(15)*abb18(7)
      abb18(100)=abb18(99)-abb18(49)
      abb18(101)=abb18(100)*spak2l5
      abb18(102)=abb18(15)*abb18(38)
      abb18(101)=abb18(101)+abb18(102)
      abb18(101)=abb18(101)*NC
      abb18(94)=abb18(94)-abb18(98)+abb18(101)
      abb18(98)=spbk3k1*spbe7k2
      abb18(94)=abb18(94)*abb18(98)
      abb18(22)=-abb18(46)+abb18(67)-abb18(82)+abb18(94)+abb18(22)
      abb18(67)=2.0_ki*abb18(22)
      abb18(82)=abb18(21)*abb18(7)
      abb18(82)=abb18(82)-abb18(26)
      abb18(94)=spak2l5**2
      abb18(103)=abb18(82)*abb18(94)
      abb18(104)=abb18(94)*NC
      abb18(36)=-abb18(36)*abb18(104)
      abb18(36)=abb18(103)+abb18(36)
      abb18(36)=abb18(36)*abb18(34)
      abb18(103)=abb18(78)*abb18(7)
      abb18(103)=abb18(103)-abb18(56)
      abb18(105)=-abb18(103)*abb18(94)
      abb18(89)=abb18(89)*abb18(104)
      abb18(89)=abb18(105)+abb18(89)
      abb18(89)=abb18(89)*abb18(87)
      abb18(105)=abb18(63)*abb18(7)
      abb18(105)=abb18(105)-abb18(43)
      abb18(106)=abb18(105)*abb18(94)
      abb18(75)=-abb18(75)*abb18(104)
      abb18(75)=abb18(106)+abb18(75)
      abb18(75)=abb18(75)*abb18(73)
      abb18(106)=abb18(59)*abb18(7)
      abb18(106)=abb18(106)-abb18(51)
      abb18(94)=abb18(106)*abb18(94)
      abb18(100)=-abb18(100)*abb18(104)
      abb18(94)=abb18(94)+abb18(100)
      abb18(94)=abb18(94)*abb18(98)
      abb18(100)=abb18(42)*abb18(47)
      abb18(104)=abb18(50)*spbk3k1
      abb18(100)=abb18(100)+abb18(104)
      abb18(104)=abb18(54)*spak2l5*abb18(100)
      abb18(107)=abb18(55)*abb18(60)
      abb18(108)=abb18(61)*spbe7k1
      abb18(107)=abb18(107)-abb18(108)
      abb18(108)=abb18(62)*spak2l5*abb18(107)
      abb18(36)=abb18(108)+abb18(104)+abb18(94)+abb18(75)+abb18(36)+abb18(89)
      abb18(36)=spbl5k2*abb18(36)
      abb18(75)=abb18(48)*abb18(14)
      abb18(89)=abb18(75)*abb18(41)
      abb18(94)=abb18(75)*c4
      abb18(89)=abb18(89)-abb18(94)
      abb18(104)=abb18(89)*spbk3k1
      abb18(108)=abb18(14)*NC
      abb18(109)=abb18(13)*c3
      abb18(110)=abb18(108)*abb18(109)
      abb18(13)=abb18(13)*c4
      abb18(111)=abb18(13)*abb18(14)
      abb18(112)=abb18(110)-abb18(111)
      abb18(113)=abb18(112)*abb18(47)
      abb18(104)=abb18(104)+abb18(113)
      abb18(113)=spbl6k2**2
      abb18(114)=abb18(54)*abb18(113)*abb18(104)
      abb18(115)=abb18(12)*abb18(14)
      abb18(116)=abb18(115)*abb18(41)
      abb18(117)=abb18(115)*c4
      abb18(116)=abb18(116)-abb18(117)
      abb18(118)=abb18(116)*abb18(60)
      abb18(28)=abb18(28)*abb18(11)
      abb18(108)=abb18(108)*abb18(28)
      abb18(11)=abb18(25)*abb18(11)
      abb18(25)=abb18(11)*abb18(14)
      abb18(119)=abb18(108)-abb18(25)
      abb18(120)=abb18(119)*spbe7k1
      abb18(118)=abb18(118)-abb18(120)
      abb18(120)=abb18(62)*abb18(113)*abb18(118)
      abb18(114)=abb18(114)+abb18(120)
      abb18(120)=abb18(113)*abb18(6)
      abb18(121)=abb18(21)*abb18(120)
      abb18(122)=-abb18(19)*abb18(120)
      abb18(123)=abb18(28)*abb18(14)
      abb18(113)=abb18(113)*spak2l5
      abb18(124)=abb18(113)*abb18(123)
      abb18(122)=abb18(122)+abb18(124)
      abb18(122)=NC*abb18(122)
      abb18(124)=-abb18(113)*abb18(25)
      abb18(121)=abb18(122)+abb18(121)+abb18(124)
      abb18(121)=abb18(121)*abb18(34)
      abb18(122)=abb18(80)*abb18(120)
      abb18(124)=abb18(115)*c3
      abb18(125)=-abb18(113)*abb18(124)
      abb18(122)=abb18(122)+abb18(125)
      abb18(122)=NC*abb18(122)
      abb18(125)=-abb18(78)*abb18(120)
      abb18(126)=abb18(113)*abb18(117)
      abb18(122)=abb18(122)+abb18(125)+abb18(126)
      abb18(122)=abb18(122)*abb18(87)
      abb18(125)=-abb18(65)*abb18(120)
      abb18(126)=abb18(109)*abb18(14)
      abb18(127)=abb18(113)*abb18(126)
      abb18(125)=abb18(125)+abb18(127)
      abb18(125)=NC*abb18(125)
      abb18(127)=abb18(63)*abb18(120)
      abb18(128)=-abb18(113)*abb18(111)
      abb18(125)=abb18(125)+abb18(127)+abb18(128)
      abb18(125)=abb18(125)*abb18(73)
      abb18(127)=-abb18(15)*abb18(120)
      abb18(128)=abb18(75)*c3
      abb18(129)=abb18(113)*abb18(128)
      abb18(127)=abb18(127)+abb18(129)
      abb18(127)=NC*abb18(127)
      abb18(120)=abb18(59)*abb18(120)
      abb18(129)=-abb18(113)*abb18(94)
      abb18(120)=abb18(127)+abb18(120)+abb18(129)
      abb18(120)=abb18(120)*abb18(98)
      abb18(114)=abb18(120)+abb18(125)+abb18(121)+abb18(122)+2.0_ki*abb18(114)
      abb18(114)=spak2l6*abb18(114)
      abb18(16)=abb18(41)*abb18(16)
      abb18(120)=abb18(16)-abb18(21)
      abb18(121)=abb18(120)*abb18(34)
      abb18(122)=abb18(65)*NC
      abb18(125)=abb18(122)-abb18(63)
      abb18(127)=abb18(125)*abb18(73)
      abb18(129)=abb18(80)*NC
      abb18(130)=abb18(129)-abb18(78)
      abb18(131)=abb18(130)*abb18(87)
      abb18(132)=abb18(15)*NC
      abb18(133)=abb18(132)-abb18(59)
      abb18(134)=abb18(133)*abb18(98)
      abb18(121)=-abb18(127)-abb18(121)+abb18(131)-abb18(134)
      abb18(127)=abb18(121)*spak2l5*spbl6k2
      abb18(131)=spbe7l5*spal5l6
      abb18(134)=abb18(131)*abb18(113)*abb18(104)
      abb18(135)=spbl5k3*spal5l6
      abb18(113)=abb18(135)*abb18(113)*abb18(118)
      abb18(36)=abb18(36)+abb18(113)+abb18(134)+2.0_ki*abb18(127)+abb18(114)
      abb18(36)=2.0_ki*abb18(36)
      abb18(82)=abb18(82)*spak2l5
      abb18(113)=abb18(21)*abb18(38)
      abb18(82)=abb18(82)+abb18(113)-abb18(37)
      abb18(82)=abb18(82)*abb18(34)
      abb18(106)=abb18(106)*spak2l5
      abb18(114)=abb18(59)*abb18(38)
      abb18(106)=abb18(106)+abb18(114)-abb18(101)
      abb18(106)=abb18(106)*abb18(98)
      abb18(103)=abb18(103)*spak2l5
      abb18(127)=abb18(78)*abb18(38)
      abb18(103)=abb18(103)+abb18(127)-abb18(90)
      abb18(103)=abb18(103)*abb18(87)
      abb18(105)=abb18(105)*spak2l5
      abb18(134)=abb18(38)*abb18(63)
      abb18(105)=abb18(105)+abb18(134)-abb18(76)
      abb18(105)=abb18(105)*abb18(73)
      abb18(82)=abb18(106)-abb18(103)+abb18(82)+abb18(105)
      abb18(46)=-abb18(46)-abb18(82)
      abb18(46)=8.0_ki*abb18(46)
      abb18(103)=abb18(100)*abb18(54)
      abb18(105)=abb18(107)*abb18(62)
      abb18(103)=abb18(103)+abb18(105)
      abb18(82)=-abb18(103)-abb18(82)
      abb18(82)=8.0_ki*abb18(82)
      abb18(105)=-abb18(32)+abb18(31)
      abb18(105)=abb18(6)*abb18(105)
      abb18(106)=mB**4
      abb18(136)=abb18(106)*abb18(14)
      abb18(137)=abb18(136)*abb18(3)
      abb18(138)=abb18(137)*abb18(11)
      abb18(139)=abb18(28)*abb18(136)
      abb18(138)=abb18(138)-abb18(139)
      abb18(140)=2.0_ki*abb18(3)
      abb18(141)=abb18(7)*abb18(6)
      abb18(142)=abb18(140)*abb18(141)
      abb18(143)=abb18(138)*abb18(142)
      abb18(144)=abb18(20)+abb18(21)
      abb18(145)=-abb18(7)*abb18(144)
      abb18(145)=abb18(26)+abb18(145)
      abb18(145)=spak2l5*abb18(145)
      abb18(37)=abb18(37)+abb18(145)+abb18(105)+abb18(143)
      abb18(37)=abb18(37)*abb18(34)
      abb18(105)=abb18(85)-abb18(84)
      abb18(105)=abb18(6)*abb18(105)
      abb18(12)=abb18(136)*abb18(12)
      abb18(143)=abb18(17)-c3
      abb18(145)=-abb18(12)*abb18(143)
      abb18(146)=abb18(145)*abb18(142)
      abb18(147)=abb18(81)+abb18(78)
      abb18(148)=abb18(7)*abb18(147)
      abb18(148)=-abb18(56)+abb18(148)
      abb18(148)=spak2l5*abb18(148)
      abb18(90)=-abb18(90)+abb18(148)+abb18(105)+abb18(146)
      abb18(90)=abb18(90)*abb18(87)
      abb18(105)=-abb18(71)+abb18(70)
      abb18(105)=abb18(6)*abb18(105)
      abb18(137)=abb18(137)*abb18(13)
      abb18(146)=abb18(136)*abb18(109)
      abb18(137)=abb18(137)-abb18(146)
      abb18(148)=abb18(137)*abb18(142)
      abb18(149)=abb18(66)+abb18(63)
      abb18(150)=-abb18(7)*abb18(149)
      abb18(150)=abb18(43)+abb18(150)
      abb18(150)=spak2l5*abb18(150)
      abb18(76)=abb18(76)+abb18(150)+abb18(105)+abb18(148)
      abb18(76)=abb18(76)*abb18(73)
      abb18(105)=-abb18(96)+abb18(95)
      abb18(105)=abb18(6)*abb18(105)
      abb18(48)=abb18(136)*abb18(48)
      abb18(143)=-abb18(48)*abb18(143)
      abb18(142)=-abb18(143)*abb18(142)
      abb18(148)=abb18(93)+abb18(59)
      abb18(150)=-abb18(7)*abb18(148)
      abb18(150)=abb18(51)+abb18(150)
      abb18(150)=spak2l5*abb18(150)
      abb18(101)=abb18(101)+abb18(150)+abb18(105)+abb18(142)
      abb18(101)=abb18(101)*abb18(98)
      abb18(105)=abb18(34)*abb18(27)
      abb18(142)=-abb18(87)*abb18(57)
      abb18(150)=abb18(73)*abb18(44)
      abb18(151)=abb18(98)*abb18(52)
      abb18(105)=abb18(151)+abb18(150)+abb18(105)+abb18(142)
      abb18(142)=abb18(6)**2
      abb18(105)=abb18(142)*abb18(3)*abb18(106)*abb18(105)
      abb18(106)=-abb18(68)*abb18(47)
      abb18(150)=-spbk3k1*abb18(69)
      abb18(106)=abb18(106)+abb18(150)
      abb18(106)=abb18(54)*abb18(106)
      abb18(150)=spbe7k1*abb18(30)
      abb18(151)=-abb18(83)*abb18(60)
      abb18(150)=abb18(150)+abb18(151)
      abb18(150)=abb18(62)*abb18(150)
      abb18(106)=abb18(150)+abb18(106)
      abb18(150)=abb18(6)*abb18(3)
      abb18(106)=abb18(150)*abb18(106)
      abb18(105)=abb18(105)+abb18(106)
      abb18(105)=abb18(9)*abb18(105)
      abb18(70)=-abb18(47)*abb18(70)
      abb18(95)=-spbk3k1*abb18(95)
      abb18(70)=abb18(70)+abb18(95)
      abb18(70)=abb18(131)*abb18(70)
      abb18(31)=spbe7k1*abb18(31)
      abb18(84)=-abb18(60)*abb18(84)
      abb18(31)=abb18(31)+abb18(84)
      abb18(31)=abb18(135)*abb18(31)
      abb18(31)=abb18(31)+abb18(70)
      abb18(31)=abb18(141)*abb18(31)
      abb18(70)=abb18(138)*abb18(34)
      abb18(84)=abb18(145)*abb18(87)
      abb18(95)=abb18(137)*abb18(73)
      abb18(106)=-abb18(143)*abb18(98)
      abb18(70)=abb18(106)+abb18(95)+abb18(70)+abb18(84)
      abb18(84)=abb18(7)**2
      abb18(70)=abb18(10)*abb18(84)*spak2l5*abb18(3)*abb18(70)
      abb18(31)=abb18(70)+abb18(105)+abb18(101)+abb18(76)+abb18(37)+abb18(90)-a&
      &bb18(103)+abb18(31)
      abb18(31)=8.0_ki*abb18(31)
      abb18(37)=abb18(138)*abb18(3)
      abb18(70)=abb18(11)*abb18(136)
      abb18(76)=abb18(139)*NC
      abb18(37)=-abb18(76)+abb18(70)+abb18(37)
      abb18(37)=abb18(37)*abb18(34)
      abb18(41)=abb18(41)-c4
      abb18(12)=-abb18(12)*abb18(41)
      abb18(70)=abb18(145)*abb18(3)
      abb18(12)=-abb18(70)+abb18(12)
      abb18(12)=abb18(12)*abb18(87)
      abb18(70)=abb18(137)*abb18(3)
      abb18(76)=abb18(136)*abb18(13)
      abb18(90)=abb18(146)*NC
      abb18(70)=-abb18(90)+abb18(76)+abb18(70)
      abb18(70)=abb18(70)*abb18(73)
      abb18(41)=-abb18(48)*abb18(41)
      abb18(48)=abb18(143)*abb18(3)
      abb18(41)=-abb18(48)+abb18(41)
      abb18(41)=abb18(41)*abb18(98)
      abb18(12)=abb18(41)-abb18(12)+abb18(37)+abb18(70)
      abb18(37)=-abb18(9)*abb18(12)*abb18(142)*abb18(7)
      abb18(12)=-abb18(10)*abb18(12)*abb18(84)*abb18(6)
      abb18(41)=abb18(144)-abb18(16)
      abb18(48)=-abb18(141)*abb18(41)
      abb18(70)=-abb18(48)*abb18(34)
      abb18(76)=abb18(147)-abb18(129)
      abb18(84)=-abb18(141)*abb18(76)
      abb18(90)=abb18(84)*abb18(87)
      abb18(95)=abb18(149)-abb18(122)
      abb18(101)=-abb18(141)*abb18(95)
      abb18(103)=-abb18(101)*abb18(73)
      abb18(105)=abb18(148)-abb18(132)
      abb18(106)=-abb18(141)*abb18(105)
      abb18(136)=-abb18(106)*abb18(98)
      abb18(12)=abb18(12)+abb18(37)+abb18(136)+abb18(103)+abb18(70)+abb18(90)
      abb18(12)=16.0_ki*abb18(12)
      abb18(22)=-4.0_ki*abb18(22)
      abb18(37)=abb18(68)*abb18(140)
      abb18(70)=-abb18(71)-abb18(37)
      abb18(70)=abb18(6)*abb18(70)
      abb18(90)=spak2l5*abb18(7)
      abb18(103)=abb18(90)*abb18(66)
      abb18(122)=abb18(122)*abb18(38)
      abb18(70)=abb18(122)+abb18(70)+abb18(103)
      abb18(70)=abb18(70)*abb18(47)
      abb18(103)=abb18(69)*abb18(140)
      abb18(136)=-abb18(96)-abb18(103)
      abb18(136)=abb18(6)*abb18(136)
      abb18(137)=abb18(90)*abb18(93)
      abb18(132)=abb18(132)*abb18(38)
      abb18(136)=abb18(132)+abb18(136)+abb18(137)
      abb18(136)=spbk3k1*abb18(136)
      abb18(70)=abb18(70)+abb18(136)
      abb18(70)=spbe7l6*abb18(70)
      abb18(136)=abb18(30)*abb18(140)
      abb18(137)=abb18(32)+abb18(136)
      abb18(137)=abb18(6)*abb18(137)
      abb18(138)=-abb18(90)*abb18(20)
      abb18(16)=abb18(16)*abb18(38)
      abb18(137)=-abb18(16)+abb18(137)+abb18(138)
      abb18(137)=spbe7k1*abb18(137)
      abb18(138)=abb18(83)*abb18(140)
      abb18(139)=-abb18(85)-abb18(138)
      abb18(139)=abb18(6)*abb18(139)
      abb18(142)=abb18(90)*abb18(81)
      abb18(38)=abb18(129)*abb18(38)
      abb18(129)=abb18(38)+abb18(139)+abb18(142)
      abb18(129)=abb18(129)*abb18(60)
      abb18(129)=abb18(137)+abb18(129)
      abb18(129)=spbl6k3*abb18(129)
      abb18(137)=abb18(141)*spak2l5
      abb18(72)=-abb18(72)*abb18(137)
      abb18(139)=abb18(90)*abb18(122)
      abb18(72)=abb18(72)+abb18(139)
      abb18(72)=abb18(72)*abb18(47)
      abb18(97)=-abb18(97)*abb18(137)
      abb18(139)=abb18(90)*abb18(132)
      abb18(97)=abb18(97)+abb18(139)
      abb18(97)=spbk3k1*abb18(97)
      abb18(72)=abb18(72)+abb18(97)
      abb18(72)=spbe7l5*abb18(72)
      abb18(33)=abb18(33)*abb18(137)
      abb18(97)=-abb18(90)*abb18(16)
      abb18(33)=abb18(33)+abb18(97)
      abb18(33)=spbe7k1*abb18(33)
      abb18(86)=-abb18(86)*abb18(137)
      abb18(97)=abb18(90)*abb18(38)
      abb18(86)=abb18(86)+abb18(97)
      abb18(86)=abb18(86)*abb18(60)
      abb18(33)=abb18(33)+abb18(86)
      abb18(33)=spbl5k3*abb18(33)
      abb18(33)=abb18(33)+abb18(72)+abb18(70)+abb18(129)
      abb18(33)=4.0_ki*abb18(33)
      abb18(70)=abb18(106)*spbk3k1
      abb18(72)=abb18(101)*abb18(47)
      abb18(70)=abb18(70)+abb18(72)
      abb18(72)=spbe7l6*abb18(70)
      abb18(48)=abb18(48)*spbe7k1
      abb18(84)=abb18(84)*abb18(60)
      abb18(48)=abb18(84)-abb18(48)
      abb18(84)=spbl6k3*abb18(48)
      abb18(72)=abb18(72)+abb18(84)
      abb18(72)=8.0_ki*abb18(72)
      abb18(84)=abb18(113)-abb18(16)
      abb18(84)=abb18(84)*abb18(34)
      abb18(86)=-abb18(127)+abb18(38)
      abb18(86)=abb18(86)*abb18(87)
      abb18(97)=abb18(134)-abb18(122)
      abb18(97)=abb18(97)*abb18(73)
      abb18(101)=abb18(114)-abb18(132)
      abb18(101)=abb18(101)*abb18(98)
      abb18(84)=abb18(101)+abb18(97)+abb18(84)+abb18(86)
      abb18(84)=abb18(9)*abb18(84)
      abb18(86)=abb18(61)*abb18(34)
      abb18(97)=-abb18(55)*abb18(87)
      abb18(101)=abb18(42)*abb18(73)
      abb18(106)=abb18(50)*abb18(98)
      abb18(84)=abb18(84)+abb18(106)+abb18(101)+abb18(86)+abb18(97)
      abb18(84)=spak2l6*abb18(84)
      abb18(86)=-abb18(10)*abb18(90)*abb18(121)
      abb18(62)=abb18(118)*abb18(62)
      abb18(54)=abb18(104)*abb18(54)
      abb18(54)=abb18(86)-abb18(62)-abb18(54)
      abb18(62)=-abb18(87)*abb18(116)
      abb18(86)=abb18(98)*abb18(89)
      abb18(62)=abb18(86)+abb18(62)
      abb18(62)=spak2l5*abb18(62)
      abb18(14)=abb18(14)*spak2l5
      abb18(11)=abb18(14)*abb18(11)
      abb18(86)=spak2l5*abb18(108)
      abb18(86)=-abb18(11)+abb18(86)
      abb18(86)=abb18(86)*abb18(34)
      abb18(13)=abb18(14)*abb18(13)
      abb18(90)=spak2l5*abb18(110)
      abb18(90)=-abb18(13)+abb18(90)
      abb18(90)=abb18(90)*abb18(73)
      abb18(62)=abb18(90)+abb18(86)-abb18(54)+abb18(62)
      abb18(62)=spbl5k2*abb18(62)
      abb18(44)=-abb18(44)*abb18(140)
      abb18(42)=abb18(44)-abb18(42)
      abb18(42)=abb18(42)*abb18(47)
      abb18(44)=-abb18(52)*abb18(140)
      abb18(44)=abb18(44)-abb18(50)
      abb18(44)=spbk3k1*abb18(44)
      abb18(42)=abb18(42)+abb18(44)
      abb18(42)=abb18(42)*abb18(131)
      abb18(27)=abb18(27)*abb18(140)
      abb18(27)=abb18(27)+abb18(61)
      abb18(27)=spbe7k1*abb18(27)
      abb18(44)=-abb18(57)*abb18(140)
      abb18(44)=abb18(44)-abb18(55)
      abb18(44)=abb18(44)*abb18(60)
      abb18(27)=abb18(27)+abb18(44)
      abb18(27)=abb18(27)*abb18(135)
      abb18(27)=abb18(62)+abb18(27)+abb18(42)+2.0_ki*abb18(121)+abb18(84)
      abb18(27)=2.0_ki*abb18(27)
      abb18(41)=abb18(41)*abb18(34)
      abb18(42)=abb18(105)*abb18(98)
      abb18(44)=abb18(76)*abb18(87)
      abb18(50)=abb18(95)*abb18(73)
      abb18(41)=-abb18(41)-abb18(42)+abb18(44)-abb18(50)
      abb18(42)=-abb18(9)*abb18(6)*abb18(41)
      abb18(41)=-abb18(10)*abb18(7)*abb18(41)
      abb18(25)=abb18(25)*abb18(3)
      abb18(25)=abb18(25)-abb18(123)
      abb18(25)=abb18(25)*abb18(3)
      abb18(25)=abb18(25)-abb18(119)
      abb18(44)=-abb18(25)*abb18(34)
      abb18(50)=abb18(115)*abb18(17)
      abb18(50)=abb18(50)-abb18(124)
      abb18(50)=abb18(50)*abb18(3)
      abb18(50)=abb18(50)-abb18(116)
      abb18(52)=abb18(50)*abb18(87)
      abb18(55)=abb18(111)*abb18(3)
      abb18(55)=abb18(55)-abb18(126)
      abb18(55)=abb18(55)*abb18(3)
      abb18(55)=abb18(55)-abb18(112)
      abb18(57)=-abb18(55)*abb18(73)
      abb18(17)=abb18(75)*abb18(17)
      abb18(17)=abb18(17)-abb18(128)
      abb18(17)=abb18(17)*abb18(3)
      abb18(17)=abb18(17)-abb18(89)
      abb18(61)=-abb18(17)*abb18(98)
      abb18(41)=abb18(41)+abb18(42)+abb18(61)+abb18(57)+abb18(44)+abb18(52)
      abb18(41)=8.0_ki*abb18(41)
      abb18(17)=abb18(17)*spbk3k1
      abb18(42)=abb18(55)*abb18(47)
      abb18(17)=abb18(17)+abb18(42)
      abb18(42)=spbe7l6*abb18(17)
      abb18(44)=abb18(50)*abb18(60)
      abb18(25)=abb18(25)*spbe7k1
      abb18(25)=abb18(44)-abb18(25)
      abb18(44)=spbl6k3*abb18(25)
      abb18(42)=abb18(42)+abb18(44)
      abb18(42)=4.0_ki*abb18(42)
      abb18(44)=abb18(6)*abb18(21)
      abb18(19)=-abb18(6)*abb18(19)
      abb18(28)=abb18(28)*abb18(14)
      abb18(19)=abb18(19)+abb18(28)
      abb18(19)=NC*abb18(19)
      abb18(11)=abb18(19)+abb18(44)-abb18(11)
      abb18(11)=abb18(11)*abb18(34)
      abb18(19)=abb18(6)*abb18(80)
      abb18(28)=-spak2l5*abb18(124)
      abb18(19)=abb18(19)+abb18(28)
      abb18(19)=NC*abb18(19)
      abb18(28)=-abb18(6)*abb18(78)
      abb18(44)=spak2l5*abb18(117)
      abb18(19)=abb18(19)+abb18(28)+abb18(44)
      abb18(19)=abb18(19)*abb18(87)
      abb18(28)=-abb18(6)*abb18(65)
      abb18(14)=abb18(109)*abb18(14)
      abb18(14)=abb18(28)+abb18(14)
      abb18(14)=NC*abb18(14)
      abb18(28)=abb18(6)*abb18(63)
      abb18(13)=abb18(14)+abb18(28)-abb18(13)
      abb18(13)=abb18(13)*abb18(73)
      abb18(14)=-abb18(6)*abb18(15)
      abb18(15)=spak2l5*abb18(128)
      abb18(14)=abb18(14)+abb18(15)
      abb18(14)=NC*abb18(14)
      abb18(15)=abb18(6)*abb18(59)
      abb18(28)=-spak2l5*abb18(94)
      abb18(14)=abb18(14)+abb18(15)+abb18(28)
      abb18(14)=abb18(14)*abb18(98)
      abb18(11)=abb18(14)+abb18(13)+abb18(11)+abb18(19)-abb18(54)
      abb18(11)=spbl6l5*abb18(11)
      abb18(13)=abb18(125)*abb18(47)
      abb18(14)=spbk3k1*abb18(133)
      abb18(13)=abb18(13)+abb18(14)
      abb18(13)=spbe7l6*abb18(13)
      abb18(14)=-spbe7k1*abb18(120)
      abb18(15)=abb18(130)*abb18(60)
      abb18(14)=abb18(14)+abb18(15)
      abb18(14)=spbl6k3*abb18(14)
      abb18(11)=abb18(11)+abb18(13)+abb18(14)
      abb18(13)=-abb18(71)+abb18(37)
      abb18(13)=abb18(6)*abb18(13)
      abb18(13)=abb18(13)+abb18(122)
      abb18(13)=abb18(13)*abb18(47)
      abb18(14)=-abb18(96)+abb18(103)
      abb18(14)=abb18(6)*abb18(14)
      abb18(14)=abb18(14)+abb18(132)
      abb18(14)=spbk3k1*abb18(14)
      abb18(13)=abb18(13)+abb18(14)
      abb18(13)=spbe7l6*abb18(13)
      abb18(14)=abb18(32)-abb18(136)
      abb18(14)=abb18(6)*abb18(14)
      abb18(14)=abb18(14)-abb18(16)
      abb18(14)=spbe7k1*abb18(14)
      abb18(15)=-abb18(85)+abb18(138)
      abb18(15)=abb18(6)*abb18(15)
      abb18(15)=abb18(15)+abb18(38)
      abb18(15)=abb18(15)*abb18(60)
      abb18(14)=abb18(14)+abb18(15)
      abb18(14)=spbl6k3*abb18(14)
      abb18(13)=abb18(13)+abb18(14)
      abb18(13)=abb18(9)*abb18(13)
      abb18(14)=spbe7l6*abb18(100)
      abb18(15)=spbl6k3*abb18(107)
      abb18(13)=abb18(13)+abb18(14)+abb18(15)
      abb18(13)=spak2l6*abb18(13)
      abb18(14)=abb18(64)*abb18(140)
      abb18(14)=-3.0_ki*abb18(63)+abb18(14)
      abb18(14)=abb18(7)*abb18(14)
      abb18(14)=-abb18(43)+abb18(14)
      abb18(14)=spak2l5*abb18(14)
      abb18(15)=abb18(40)+3.0_ki*abb18(74)
      abb18(15)=spak2l5*abb18(15)
      abb18(15)=abb18(77)+abb18(15)
      abb18(15)=NC*abb18(15)
      abb18(14)=abb18(15)-abb18(134)+abb18(14)
      abb18(14)=abb18(14)*abb18(47)
      abb18(15)=abb18(92)*abb18(140)
      abb18(15)=-3.0_ki*abb18(59)+abb18(15)
      abb18(15)=abb18(7)*abb18(15)
      abb18(15)=-abb18(51)+abb18(15)
      abb18(15)=spak2l5*abb18(15)
      abb18(16)=abb18(49)+3.0_ki*abb18(99)
      abb18(16)=spak2l5*abb18(16)
      abb18(16)=abb18(102)+abb18(16)
      abb18(16)=NC*abb18(16)
      abb18(15)=abb18(16)-abb18(114)+abb18(15)
      abb18(15)=spbk3k1*abb18(15)
      abb18(14)=abb18(14)+abb18(15)
      abb18(14)=spbe7l5*abb18(14)
      abb18(15)=-abb18(18)*abb18(140)
      abb18(15)=3.0_ki*abb18(21)+abb18(15)
      abb18(15)=abb18(7)*abb18(15)
      abb18(15)=abb18(26)+abb18(15)
      abb18(15)=spak2l5*abb18(15)
      abb18(16)=-abb18(24)-3.0_ki*abb18(35)
      abb18(16)=spak2l5*abb18(16)
      abb18(16)=-abb18(39)+abb18(16)
      abb18(16)=NC*abb18(16)
      abb18(15)=abb18(16)+abb18(113)+abb18(15)
      abb18(15)=spbe7k1*abb18(15)
      abb18(16)=abb18(79)*abb18(140)
      abb18(16)=-3.0_ki*abb18(78)+abb18(16)
      abb18(16)=abb18(7)*abb18(16)
      abb18(16)=-abb18(56)+abb18(16)
      abb18(16)=spak2l5*abb18(16)
      abb18(18)=abb18(23)+3.0_ki*abb18(88)
      abb18(18)=spak2l5*abb18(18)
      abb18(18)=abb18(91)+abb18(18)
      abb18(18)=NC*abb18(18)
      abb18(16)=abb18(18)-abb18(127)+abb18(16)
      abb18(16)=abb18(16)*abb18(60)
      abb18(15)=abb18(15)+abb18(16)
      abb18(15)=spbl5k3*abb18(15)
      abb18(11)=abb18(15)+abb18(14)+abb18(13)+3.0_ki*abb18(11)
      abb18(11)=2.0_ki*abb18(11)
      abb18(13)=spbe7l5*abb18(70)
      abb18(14)=spbl5k3*abb18(48)
      abb18(13)=abb18(13)+abb18(14)
      abb18(13)=8.0_ki*abb18(13)
      abb18(14)=spbe7l5*abb18(17)
      abb18(15)=spbl5k3*abb18(25)
      abb18(14)=abb18(14)+abb18(15)
      abb18(14)=4.0_ki*abb18(14)
      abb18(15)=abb18(30)*abb18(34)
      abb18(16)=-abb18(83)*abb18(87)
      abb18(17)=abb18(68)*abb18(73)
      abb18(18)=abb18(69)*abb18(98)
      abb18(15)=abb18(18)+abb18(17)+abb18(15)+abb18(16)
      abb18(15)=abb18(9)*abb18(150)*abb18(15)
      abb18(16)=-abb18(7)*abb18(20)
      abb18(16)=abb18(29)+abb18(16)
      abb18(16)=abb18(16)*abb18(34)
      abb18(17)=abb18(7)*abb18(81)
      abb18(17)=-abb18(58)+abb18(17)
      abb18(17)=abb18(17)*abb18(87)
      abb18(18)=-abb18(7)*abb18(66)
      abb18(18)=abb18(45)+abb18(18)
      abb18(18)=abb18(18)*abb18(73)
      abb18(19)=-abb18(7)*abb18(93)
      abb18(19)=abb18(53)+abb18(19)
      abb18(19)=abb18(19)*abb18(98)
      abb18(15)=abb18(15)+abb18(19)+abb18(18)+abb18(16)+abb18(17)
      abb18(15)=4.0_ki*spal5l6*abb18(15)
      R2d18=abb18(67)
      rat2 = rat2 + R2d18
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='18' value='", &
          & R2d18, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd18h2
