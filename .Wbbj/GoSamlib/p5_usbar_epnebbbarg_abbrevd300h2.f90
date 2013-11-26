module     p5_usbar_epnebbbarg_abbrevd300h2
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(169), public :: abb300
   complex(ki), public :: R2d300
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
      abb300(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb300(2)=sqrt(mB**2)
      abb300(3)=NC**(-1)
      abb300(4)=spak2l6**(-1)
      abb300(5)=spbl5k2**(-1)
      abb300(6)=spbl6k2**(-1)
      abb300(7)=spak2l5**(-1)
      abb300(8)=abb300(2)*mB
      abb300(9)=abb300(8)*abb300(4)
      abb300(10)=abb300(9)*spak2l5
      abb300(11)=TR*gW
      abb300(11)=abb300(1)*i_*CVSU*abb300(11)**2
      abb300(12)=abb300(11)*spak2k4
      abb300(13)=abb300(10)*abb300(12)
      abb300(14)=abb300(2)*mB**3
      abb300(15)=abb300(5)*abb300(4)
      abb300(16)=abb300(14)*abb300(15)
      abb300(17)=abb300(16)*abb300(12)
      abb300(13)=abb300(13)-abb300(17)
      abb300(13)=abb300(13)*c4
      abb300(18)=abb300(11)*abb300(3)**2
      abb300(19)=abb300(18)*spak2k4
      abb300(20)=abb300(10)*abb300(19)
      abb300(21)=abb300(16)*abb300(19)
      abb300(20)=abb300(20)-abb300(21)
      abb300(20)=abb300(20)*c2
      abb300(22)=abb300(3)*abb300(11)
      abb300(23)=abb300(22)*spak2k4
      abb300(24)=abb300(10)*abb300(23)
      abb300(25)=abb300(16)*abb300(23)
      abb300(24)=abb300(24)-abb300(25)
      abb300(26)=c1+c3
      abb300(24)=abb300(24)*abb300(26)
      abb300(13)=-abb300(24)+abb300(13)+abb300(20)
      abb300(20)=abb300(13)*spbk3k1
      abb300(24)=spbk7k1*spae7k7
      abb300(27)=abb300(24)*spbe7k2
      abb300(28)=-abb300(27)*abb300(20)
      abb300(29)=abb300(22)*c1
      abb300(30)=abb300(29)*spak2l5
      abb300(31)=abb300(18)*c2
      abb300(32)=abb300(31)*spak2l5
      abb300(33)=abb300(22)*c3
      abb300(34)=abb300(33)*spak2l5
      abb300(35)=abb300(11)*c4
      abb300(36)=abb300(35)*spak2l5
      abb300(30)=-abb300(36)+abb300(34)+abb300(30)-abb300(32)
      abb300(34)=-abb300(9)*abb300(30)
      abb300(36)=abb300(34)*abb300(24)
      abb300(37)=abb300(35)-abb300(33)
      abb300(38)=-spbl6k1*abb300(37)
      abb300(39)=abb300(31)*spbl6k1
      abb300(40)=abb300(29)*spbl6k1
      abb300(39)=abb300(38)-abb300(39)+abb300(40)
      abb300(41)=abb300(39)*spal5e7
      abb300(42)=abb300(2)**2
      abb300(43)=abb300(42)*abb300(41)
      abb300(36)=abb300(36)+abb300(43)
      abb300(44)=spbk3k1*spak4l5
      abb300(45)=abb300(44)*spbe7l5
      abb300(46)=-abb300(36)*abb300(45)
      abb300(47)=abb300(31)-abb300(29)
      abb300(48)=-abb300(35)-abb300(47)+abb300(33)
      abb300(49)=spbl6k1*spak2k4
      abb300(48)=abb300(49)*abb300(48)
      abb300(50)=-abb300(42)*abb300(48)
      abb300(51)=spal5e7*spbe7k2
      abb300(52)=abb300(51)*spbk3k1
      abb300(53)=abb300(50)*abb300(52)
      abb300(54)=-abb300(29)+abb300(37)
      abb300(55)=mB**2
      abb300(56)=abb300(55)*abb300(4)
      abb300(57)=abb300(56)*spak2e7
      abb300(58)=abb300(42)*abb300(57)
      abb300(54)=abb300(58)*abb300(54)
      abb300(59)=abb300(42)*abb300(31)
      abb300(60)=abb300(59)*abb300(57)
      abb300(54)=abb300(60)+abb300(54)
      abb300(60)=abb300(54)*abb300(44)
      abb300(61)=-spbe7k1*abb300(60)
      abb300(28)=abb300(46)+abb300(61)+abb300(28)+abb300(53)
      abb300(28)=spak1k2*abb300(28)
      abb300(46)=abb300(13)*abb300(27)
      abb300(53)=-abb300(50)*abb300(51)
      abb300(46)=abb300(46)+abb300(53)
      abb300(53)=spbk7k3*spak2k7
      abb300(46)=abb300(46)*abb300(53)
      abb300(61)=spak2k7*spak4l5
      abb300(62)=spbk7k3*abb300(61)*abb300(36)
      abb300(38)=abb300(38)+abb300(40)
      abb300(40)=spak2l5*abb300(38)
      abb300(32)=abb300(32)*spbl6k1
      abb300(40)=-abb300(32)+abb300(40)
      abb300(63)=abb300(6)*spbk3k2
      abb300(64)=abb300(63)*spak4l5
      abb300(65)=abb300(40)*abb300(64)
      abb300(66)=-abb300(58)*abb300(65)
      abb300(33)=abb300(33)+abb300(29)
      abb300(67)=abb300(35)+abb300(31)
      abb300(68)=-abb300(33)+abb300(67)
      abb300(69)=abb300(8)*spak2l5
      abb300(70)=-abb300(68)*abb300(69)
      abb300(71)=spbl6k3*spak4l5
      abb300(72)=abb300(70)*abb300(71)
      abb300(73)=-abb300(24)*abb300(72)
      abb300(62)=abb300(62)+abb300(66)+abb300(73)
      abb300(62)=spbe7l5*abb300(62)
      abb300(66)=abb300(63)*spbk7e7
      abb300(73)=abb300(4)*abb300(14)
      abb300(74)=abb300(61)*abb300(66)*abb300(73)
      abb300(75)=abb300(71)*spal6k7
      abb300(76)=-spak1k7*abb300(44)
      abb300(75)=abb300(76)-abb300(75)
      abb300(75)=spbk7e7*abb300(75)*abb300(8)
      abb300(74)=abb300(74)+abb300(75)
      abb300(75)=spak2e7*abb300(39)
      abb300(74)=abb300(75)*abb300(74)
      abb300(76)=spbk7k3*spak4l5
      abb300(77)=abb300(76)*spbe7l5
      abb300(78)=-spal5k7*abb300(77)
      abb300(79)=abb300(71)*spbe7l5
      abb300(80)=-spal5l6*abb300(79)
      abb300(81)=spak1l5*abb300(45)
      abb300(78)=abb300(81)+abb300(80)+abb300(78)
      abb300(80)=abb300(42)*spak2e7
      abb300(81)=abb300(80)*abb300(39)
      abb300(78)=abb300(81)*abb300(78)
      abb300(33)=abb300(33)-abb300(35)
      abb300(35)=abb300(33)*abb300(80)
      abb300(80)=-abb300(55)*abb300(35)
      abb300(82)=abb300(55)*spak2e7
      abb300(83)=abb300(59)*abb300(82)
      abb300(80)=abb300(83)+abb300(80)
      abb300(80)=abb300(80)*abb300(71)
      abb300(83)=abb300(76)*spak2k7
      abb300(84)=abb300(54)*abb300(83)
      abb300(80)=abb300(80)+abb300(84)
      abb300(80)=spbe7k1*abb300(80)
      abb300(84)=abb300(51)*spbl6k3
      abb300(85)=-abb300(50)*abb300(84)
      abb300(86)=abb300(79)*abb300(43)
      abb300(85)=abb300(85)+abb300(86)
      abb300(85)=spak2l6*abb300(85)
      abb300(86)=abb300(55)*abb300(5)
      abb300(87)=abb300(49)*abb300(86)
      abb300(33)=abb300(87)*abb300(33)
      abb300(88)=abb300(33)*abb300(42)
      abb300(89)=abb300(59)*abb300(87)
      abb300(88)=abb300(88)-abb300(89)
      abb300(89)=abb300(84)*spak2l6
      abb300(90)=abb300(52)*spak1k2
      abb300(89)=abb300(89)-abb300(90)
      abb300(51)=abb300(51)*abb300(53)
      abb300(90)=abb300(89)+abb300(51)
      abb300(88)=-abb300(7)*abb300(88)*abb300(90)
      abb300(91)=-abb300(26)*abb300(23)
      abb300(92)=c2*abb300(19)
      abb300(93)=c4*abb300(12)
      abb300(91)=abb300(91)+abb300(92)+abb300(93)
      abb300(92)=abb300(14)*abb300(5)
      abb300(92)=abb300(92)-abb300(69)
      abb300(91)=spbl6k3*abb300(92)*abb300(91)
      abb300(92)=-abb300(27)*abb300(91)
      abb300(28)=abb300(88)+abb300(85)+abb300(28)+abb300(62)+abb300(80)+abb300(&
      &46)+abb300(92)+abb300(78)+abb300(74)
      abb300(28)=4.0_ki*abb300(28)
      abb300(46)=abb300(49)*abb300(18)
      abb300(62)=mB**4
      abb300(15)=abb300(15)*abb300(62)
      abb300(74)=abb300(46)*abb300(15)
      abb300(78)=spak2l5*abb300(46)
      abb300(80)=abb300(78)*abb300(56)
      abb300(74)=abb300(80)-abb300(74)
      abb300(74)=abb300(74)*c2
      abb300(80)=abb300(56)*spak2l5
      abb300(85)=abb300(80)*abb300(23)
      abb300(88)=abb300(23)*abb300(15)
      abb300(85)=abb300(85)-abb300(88)
      abb300(92)=abb300(26)*abb300(85)
      abb300(93)=-spbl6k1*abb300(92)
      abb300(94)=abb300(15)*abb300(12)
      abb300(95)=abb300(94)*spbl6k1
      abb300(96)=abb300(12)*spbl6k1
      abb300(97)=abb300(96)*abb300(80)
      abb300(95)=abb300(95)-abb300(97)
      abb300(95)=abb300(95)*c4
      abb300(74)=abb300(74)+abb300(93)-abb300(95)
      abb300(74)=abb300(74)*abb300(63)
      abb300(31)=abb300(87)*abb300(31)
      abb300(31)=-abb300(31)+abb300(33)
      abb300(31)=abb300(31)*abb300(7)
      abb300(33)=spal5l6*spbl6k3
      abb300(93)=spak1l5*spbk3k1
      abb300(33)=abb300(33)-abb300(93)
      abb300(93)=-abb300(33)*abb300(31)
      abb300(95)=-abb300(48)*abb300(33)
      abb300(74)=abb300(74)-abb300(93)+abb300(95)
      abb300(93)=abb300(20)+abb300(74)
      abb300(93)=es12*abb300(93)
      abb300(97)=es712-es71
      abb300(74)=-abb300(74)*abb300(97)
      abb300(98)=-abb300(13)*abb300(53)
      abb300(91)=abb300(91)+abb300(98)
      abb300(91)=spbk2k1*abb300(91)
      abb300(98)=-abb300(68)*abb300(56)
      abb300(99)=spak2k7*spbk7k1
      abb300(100)=abb300(98)*abb300(99)
      abb300(101)=abb300(39)*abb300(8)
      abb300(100)=abb300(100)+abb300(101)
      abb300(102)=abb300(44)*spak1k2
      abb300(53)=-abb300(53)*spak4l5
      abb300(53)=abb300(102)+abb300(53)
      abb300(53)=abb300(100)*abb300(53)
      abb300(100)=abb300(48)*spal5k7
      abb300(103)=spal5k7*abb300(31)
      abb300(103)=abb300(103)-abb300(100)
      abb300(104)=spak1k2*spbk3k1
      abb300(105)=spak2l6*spbl6k3
      abb300(104)=abb300(104)-abb300(105)
      abb300(103)=spbk7k2*abb300(104)*abb300(103)
      abb300(104)=spal5l6*abb300(71)
      abb300(105)=-spak1l5*abb300(44)
      abb300(104)=abb300(105)+abb300(104)
      abb300(104)=spak2k7*abb300(104)
      abb300(105)=abb300(71)*spak2l6
      abb300(106)=abb300(105)-abb300(102)
      abb300(107)=-spal5k7*abb300(106)
      abb300(104)=abb300(107)+abb300(104)
      abb300(104)=-abb300(39)*abb300(104)
      abb300(107)=abb300(80)*abb300(38)
      abb300(108)=abb300(32)*abb300(56)
      abb300(107)=-abb300(108)+abb300(107)
      abb300(61)=-abb300(107)*abb300(63)*abb300(61)
      abb300(61)=abb300(61)+abb300(104)
      abb300(61)=spbk7l5*abb300(61)
      abb300(104)=abb300(102)-abb300(83)
      abb300(104)=abb300(34)*abb300(104)
      abb300(72)=abb300(72)+abb300(104)
      abb300(72)=spbl5k1*abb300(72)
      abb300(104)=abb300(68)*abb300(99)
      abb300(108)=abb300(71)*abb300(55)*abb300(104)
      abb300(101)=-abb300(101)*abb300(105)
      abb300(53)=abb300(72)+abb300(61)+abb300(103)+abb300(93)+abb300(101)+abb30&
      &0(91)+abb300(108)+abb300(74)+abb300(53)
      abb300(53)=8.0_ki*abb300(53)
      abb300(61)=abb300(9)*spak2k4
      abb300(72)=-abb300(61)*abb300(30)
      abb300(74)=abb300(24)*spbe7k3
      abb300(91)=abb300(72)*abb300(74)
      abb300(93)=spbe7k3*spak4l5
      abb300(101)=abb300(81)*abb300(93)
      abb300(103)=spak2e7*abb300(5)
      abb300(105)=abb300(103)*abb300(8)
      abb300(108)=abb300(105)*abb300(39)
      abb300(109)=spbk7e7*spbk3k2
      abb300(110)=abb300(109)*spak4k7
      abb300(111)=abb300(108)*abb300(110)
      abb300(112)=spal5e7*spbe7k3
      abb300(113)=abb300(50)*abb300(112)
      abb300(91)=-abb300(113)+abb300(91)+abb300(101)-abb300(111)
      abb300(101)=-abb300(41)*abb300(45)
      abb300(111)=abb300(57)*abb300(68)
      abb300(113)=abb300(111)*abb300(44)
      abb300(114)=abb300(113)*spbe7k1
      abb300(52)=abb300(48)*abb300(52)
      abb300(52)=-abb300(52)+abb300(101)-abb300(114)
      abb300(52)=abb300(52)*spak1k2
      abb300(101)=abb300(83)*abb300(111)
      abb300(114)=-spak2k4*abb300(47)
      abb300(115)=abb300(57)*abb300(5)
      abb300(116)=abb300(115)*abb300(42)
      abb300(117)=-abb300(116)*abb300(114)
      abb300(118)=-abb300(115)*abb300(37)
      abb300(119)=-abb300(42)*abb300(118)
      abb300(120)=spak2k4*abb300(119)
      abb300(117)=abb300(117)+abb300(120)
      abb300(120)=abb300(117)*spbk3k2
      abb300(82)=abb300(82)*abb300(68)*abb300(71)
      abb300(82)=abb300(82)+abb300(101)-abb300(120)
      abb300(82)=abb300(82)*spbe7k1
      abb300(101)=-abb300(41)*abb300(79)
      abb300(84)=abb300(48)*abb300(84)
      abb300(84)=abb300(101)-abb300(84)
      abb300(84)=abb300(84)*spak2l6
      abb300(101)=abb300(75)*spak1l5
      abb300(120)=abb300(101)*abb300(45)
      abb300(121)=abb300(75)*spal5l6
      abb300(122)=abb300(121)*abb300(79)
      abb300(52)=-abb300(84)-abb300(91)+abb300(120)-abb300(122)+abb300(52)+abb3&
      &00(82)
      abb300(82)=abb300(90)*abb300(31)
      abb300(51)=-abb300(48)*abb300(51)
      abb300(84)=-abb300(83)*abb300(41)
      abb300(65)=abb300(57)*abb300(65)
      abb300(84)=abb300(65)+abb300(84)
      abb300(84)=spbe7l5*abb300(84)
      abb300(90)=abb300(75)*spal5k7
      abb300(120)=abb300(77)*abb300(90)
      abb300(51)=abb300(82)+abb300(120)+abb300(84)+abb300(51)-abb300(52)
      abb300(51)=8.0_ki*abb300(51)
      abb300(72)=abb300(72)*spbk3k1
      abb300(82)=-spak2k4*abb300(37)
      abb300(82)=abb300(82)+abb300(114)
      abb300(84)=abb300(56)*abb300(5)
      abb300(120)=-spbk3k2*abb300(84)*abb300(82)
      abb300(122)=abb300(120)*abb300(99)
      abb300(72)=abb300(72)-abb300(122)
      abb300(122)=abb300(39)*abb300(83)
      abb300(123)=abb300(100)*spbk7k3
      abb300(124)=abb300(48)*spbk3k2
      abb300(125)=abb300(8)*abb300(5)
      abb300(126)=abb300(125)*abb300(124)
      abb300(123)=abb300(72)+abb300(126)-abb300(122)-abb300(123)
      abb300(126)=-16.0_ki*abb300(123)
      abb300(127)=-spak2k4*abb300(118)
      abb300(128)=-abb300(115)*abb300(114)
      abb300(127)=abb300(127)+abb300(128)
      abb300(128)=spbe7k1*spbk3k2
      abb300(127)=abb300(127)*abb300(128)
      abb300(129)=abb300(112)*abb300(48)
      abb300(75)=abb300(75)*abb300(93)
      abb300(75)=abb300(127)+abb300(129)+abb300(75)
      abb300(127)=16.0_ki*abb300(75)
      abb300(117)=abb300(117)*abb300(128)
      abb300(91)=abb300(117)+abb300(91)
      abb300(117)=abb300(79)*abb300(30)
      abb300(129)=abb300(86)-spak2l5
      abb300(130)=-abb300(12)*abb300(129)
      abb300(131)=abb300(130)*c4
      abb300(132)=-c2*abb300(19)*abb300(129)
      abb300(129)=abb300(23)*abb300(129)
      abb300(133)=abb300(26)*abb300(129)
      abb300(131)=abb300(133)+abb300(131)+abb300(132)
      abb300(132)=abb300(131)*spbe7k2
      abb300(133)=abb300(132)*spbl6k3
      abb300(117)=abb300(117)-abb300(133)
      abb300(133)=-abb300(24)*abb300(117)
      abb300(133)=abb300(133)+abb300(91)
      abb300(133)=8.0_ki*abb300(133)
      abb300(134)=abb300(131)*spbl6k3
      abb300(135)=-spbk2k1*abb300(134)
      abb300(136)=abb300(71)*abb300(30)
      abb300(137)=spbl5k1*abb300(136)
      abb300(135)=abb300(137)+abb300(135)-abb300(123)
      abb300(135)=16.0_ki*abb300(135)
      abb300(137)=abb300(93)*abb300(6)
      abb300(58)=-abb300(137)*abb300(58)
      abb300(73)=abb300(73)*abb300(103)
      abb300(138)=abb300(66)*spak4k7*abb300(73)
      abb300(58)=abb300(138)+abb300(58)
      abb300(58)=-abb300(39)*abb300(58)
      abb300(138)=abb300(4)**2
      abb300(14)=-abb300(14)*abb300(138)*abb300(30)*spak2k4
      abb300(139)=abb300(14)*abb300(6)
      abb300(140)=abb300(74)*abb300(139)
      abb300(141)=abb300(112)*abb300(6)
      abb300(50)=-abb300(141)*abb300(56)*abb300(50)
      abb300(62)=abb300(138)*abb300(62)
      abb300(103)=abb300(62)*abb300(103)
      abb300(138)=abb300(82)*abb300(103)
      abb300(142)=abb300(42)*abb300(138)
      abb300(143)=abb300(63)*spbe7k1
      abb300(144)=-abb300(142)*abb300(143)
      abb300(50)=abb300(144)+abb300(50)+abb300(140)+abb300(58)
      abb300(50)=8.0_ki*abb300(50)
      abb300(58)=-spbk3k1*abb300(14)
      abb300(16)=-abb300(16)*abb300(124)
      abb300(122)=abb300(56)*abb300(122)
      abb300(48)=-abb300(56)*abb300(48)
      abb300(124)=spal5k7*spbk7k3
      abb300(140)=-abb300(48)*abb300(124)
      abb300(16)=abb300(140)+abb300(122)+abb300(16)+abb300(58)
      abb300(16)=abb300(6)*abb300(16)
      abb300(58)=-abb300(82)*abb300(62)*abb300(5)
      abb300(62)=abb300(58)*abb300(63)*abb300(99)
      abb300(16)=abb300(62)-abb300(20)+abb300(16)
      abb300(16)=16.0_ki*abb300(16)
      abb300(62)=-abb300(137)*abb300(39)*abb300(57)
      abb300(122)=-abb300(143)*abb300(138)
      abb300(48)=abb300(48)*abb300(141)
      abb300(62)=abb300(48)+abb300(62)-abb300(122)
      abb300(122)=16.0_ki*abb300(62)
      abb300(137)=abb300(45)*abb300(30)
      abb300(140)=abb300(132)*spbk3k1
      abb300(137)=abb300(137)-abb300(140)
      abb300(140)=spbk7l6*spae7k7
      abb300(141)=abb300(137)*abb300(140)
      abb300(143)=spbk7e7*spak2k7
      abb300(144)=-abb300(113)*abb300(143)
      abb300(91)=abb300(141)+abb300(144)-abb300(91)
      abb300(91)=8.0_ki*abb300(91)
      abb300(141)=abb300(131)*spbl6k2
      abb300(144)=-spbk3k1*abb300(141)
      abb300(145)=abb300(30)*spbl6l5
      abb300(146)=abb300(44)*abb300(145)
      abb300(123)=abb300(146)+abb300(144)+abb300(123)
      abb300(123)=16.0_ki*abb300(123)
      abb300(112)=-abb300(39)*abb300(112)
      abb300(144)=spbk7l6*spak2k7
      abb300(146)=-abb300(144)*abb300(112)
      abb300(147)=abb300(90)*spbe7k3
      abb300(148)=-spbk7l6*abb300(147)
      abb300(146)=abb300(146)+abb300(148)
      abb300(146)=spak4l6*abb300(146)
      abb300(112)=-abb300(99)*abb300(112)
      abb300(147)=-spbk7k1*abb300(147)
      abb300(112)=abb300(112)+abb300(147)
      abb300(112)=spak1k4*abb300(112)
      abb300(147)=es12-abb300(97)
      abb300(48)=abb300(48)*abb300(147)
      abb300(31)=abb300(89)*abb300(31)
      abb300(89)=abb300(6)*spbe7k3
      abb300(148)=abb300(89)*spbk7k2
      abb300(57)=abb300(148)*abb300(57)*abb300(100)
      abb300(65)=spbe7l5*abb300(65)
      abb300(31)=abb300(57)+abb300(112)+abb300(31)+abb300(146)+abb300(65)+abb30&
      &0(48)-abb300(52)
      abb300(31)=4.0_ki*abb300(31)
      abb300(48)=-abb300(18)*abb300(87)
      abb300(46)=abb300(125)*abb300(46)
      abb300(46)=abb300(78)+abb300(48)+abb300(46)
      abb300(46)=c2*abb300(46)
      abb300(48)=abb300(125)*abb300(23)
      abb300(48)=abb300(129)-abb300(48)
      abb300(48)=abb300(26)*abb300(48)*spbl6k1
      abb300(52)=spbl6k1*abb300(130)
      abb300(57)=abb300(125)*abb300(96)
      abb300(52)=abb300(57)+abb300(52)
      abb300(52)=c4*abb300(52)
      abb300(46)=abb300(46)+abb300(52)+abb300(48)
      abb300(46)=spbk3k2*abb300(46)
      abb300(48)=abb300(30)*abb300(56)
      abb300(49)=-abb300(63)*abb300(49)*abb300(48)
      abb300(52)=-abb300(39)*abb300(106)
      abb300(57)=spbl5k3*spak4l5
      abb300(65)=abb300(40)*abb300(57)
      abb300(46)=abb300(65)+abb300(49)+abb300(46)+abb300(95)-abb300(72)+abb300(&
      &52)
      abb300(46)=8.0_ki*abb300(46)
      abb300(49)=8.0_ki*abb300(75)
      abb300(52)=8.0_ki*abb300(62)
      abb300(62)=-4.0_ki*abb300(75)
      abb300(65)=-abb300(42)*abb300(30)
      abb300(72)=spak4k7*spbk7k1
      abb300(75)=spbe7k3*abb300(72)
      abb300(75)=abb300(75)+abb300(45)
      abb300(75)=abb300(65)*abb300(75)
      abb300(78)=spbe7k2*abb300(42)*abb300(131)
      abb300(87)=spbk3k1*abb300(78)
      abb300(95)=-spak2k4*abb300(48)
      abb300(96)=abb300(95)*abb300(42)
      abb300(89)=abb300(89)*spbk2k1
      abb300(100)=-abb300(96)*abb300(89)
      abb300(42)=abb300(40)*abb300(42)
      abb300(106)=spak4l6*spbe7k3
      abb300(112)=-abb300(42)*abb300(106)
      abb300(75)=abb300(112)+abb300(100)+abb300(87)+abb300(75)
      abb300(75)=4.0_ki*abb300(75)
      abb300(87)=abb300(30)*spbe7k3
      abb300(100)=abb300(72)*abb300(87)
      abb300(112)=abb300(95)*abb300(89)
      abb300(129)=abb300(40)*spbe7k3
      abb300(130)=abb300(129)*spak4l6
      abb300(100)=abb300(130)+abb300(100)+abb300(137)+abb300(112)
      abb300(112)=8.0_ki*abb300(100)
      abb300(100)=4.0_ki*abb300(100)
      abb300(130)=abb300(59)*abb300(115)
      abb300(29)=abb300(116)*abb300(29)
      abb300(29)=abb300(130)-abb300(29)+abb300(119)
      abb300(119)=spak4k7*spbk3k2
      abb300(130)=abb300(119)*spbk7k1
      abb300(146)=abb300(29)*abb300(130)
      abb300(149)=abb300(63)*spbk2k1
      abb300(142)=abb300(142)*abb300(149)
      abb300(150)=spak4l6*spbk3k2
      abb300(151)=-abb300(39)*abb300(150)
      abb300(116)=abb300(116)*abb300(151)
      abb300(60)=abb300(116)+abb300(146)+abb300(60)+abb300(142)
      abb300(60)=4.0_ki*abb300(60)
      abb300(116)=-abb300(138)*abb300(149)
      abb300(47)=-abb300(115)*abb300(47)
      abb300(47)=abb300(47)+abb300(118)
      abb300(118)=abb300(130)*abb300(47)
      abb300(115)=abb300(115)*abb300(151)
      abb300(115)=-abb300(118)-abb300(116)+abb300(115)+abb300(113)
      abb300(116)=-8.0_ki*abb300(115)
      abb300(115)=-4.0_ki*abb300(115)
      abb300(118)=spak4k7*spbk7l6
      abb300(142)=-abb300(65)*abb300(118)
      abb300(42)=-spak1k4*abb300(42)
      abb300(42)=abb300(42)+abb300(142)-abb300(96)
      abb300(42)=spbe7k3*abb300(42)
      abb300(78)=spbl6k3*abb300(78)
      abb300(79)=abb300(65)*abb300(79)
      abb300(42)=abb300(79)+abb300(78)+abb300(42)
      abb300(42)=4.0_ki*abb300(42)
      abb300(78)=abb300(118)*abb300(87)
      abb300(79)=abb300(95)*spbe7k3
      abb300(96)=abb300(129)*spak1k4
      abb300(78)=-abb300(78)+abb300(96)+abb300(117)+abb300(79)
      abb300(79)=8.0_ki*abb300(78)
      abb300(78)=4.0_ki*abb300(78)
      abb300(96)=abb300(132)*spbk7k3
      abb300(129)=abb300(30)*abb300(77)
      abb300(96)=abb300(96)-abb300(129)
      abb300(129)=abb300(24)*abb300(96)
      abb300(132)=abb300(68)*abb300(8)
      abb300(142)=spak2e7*abb300(132)
      abb300(146)=-abb300(142)*abb300(44)
      abb300(73)=abb300(82)*abb300(73)
      abb300(82)=-abb300(73)*abb300(149)
      abb300(82)=abb300(82)+abb300(146)
      abb300(82)=spbk7e7*abb300(82)
      abb300(105)=-abb300(68)*abb300(105)
      abb300(146)=abb300(105)*abb300(110)
      abb300(152)=spbk7k1*abb300(146)
      abb300(153)=abb300(108)*abb300(109)
      abb300(154)=spak4l6*abb300(153)
      abb300(82)=abb300(154)+abb300(152)+abb300(129)+abb300(82)
      abb300(82)=4.0_ki*abb300(82)
      abb300(129)=-abb300(6)*abb300(95)
      abb300(129)=abb300(129)-abb300(131)
      abb300(129)=spbk2k1*abb300(129)
      abb300(152)=-spak4l6*abb300(40)
      abb300(129)=abb300(152)+abb300(129)
      abb300(129)=spbk7k3*abb300(129)
      abb300(152)=-spbk7k3*abb300(72)
      abb300(154)=-spbk7l5*abb300(44)
      abb300(155)=spbl5k1*abb300(76)
      abb300(152)=abb300(155)+abb300(154)+abb300(152)
      abb300(152)=abb300(30)*abb300(152)
      abb300(131)=abb300(131)*spbk3k1
      abb300(154)=spbk7k2*abb300(131)
      abb300(129)=abb300(154)+abb300(152)+abb300(129)
      abb300(129)=8.0_ki*abb300(129)
      abb300(96)=-spae7k7*abb300(96)
      abb300(96)=-abb300(146)+abb300(96)
      abb300(96)=spbk7l6*abb300(96)
      abb300(73)=-spbk3k2*abb300(73)
      abb300(142)=-abb300(142)*abb300(71)
      abb300(73)=abb300(73)+abb300(142)
      abb300(73)=spbk7e7*abb300(73)
      abb300(142)=abb300(111)*spbk7e7
      abb300(146)=-abb300(83)*abb300(142)
      abb300(152)=spak1k4*abb300(153)
      abb300(73)=abb300(152)+abb300(73)+abb300(146)+abb300(96)
      abb300(73)=4.0_ki*abb300(73)
      abb300(96)=abb300(30)*abb300(118)
      abb300(118)=-spak1k4*abb300(40)
      abb300(95)=abb300(118)-abb300(141)-abb300(95)+abb300(96)
      abb300(95)=spbk7k3*abb300(95)
      abb300(96)=spbk7k2*abb300(134)
      abb300(118)=-spbk7l5*abb300(136)
      abb300(76)=abb300(76)*abb300(145)
      abb300(76)=abb300(76)+abb300(118)+abb300(96)+abb300(95)
      abb300(76)=8.0_ki*abb300(76)
      abb300(95)=8.0_ki*abb300(66)
      abb300(95)=-abb300(138)*abb300(95)
      abb300(96)=abb300(117)*abb300(140)
      abb300(117)=abb300(142)*abb300(71)
      abb300(118)=-spak2k7*abb300(117)
      abb300(96)=abb300(118)+abb300(96)
      abb300(96)=4.0_ki*abb300(96)
      abb300(118)=-spbl6k3*abb300(141)
      abb300(134)=spbl6l5*abb300(136)
      abb300(118)=abb300(118)+abb300(134)
      abb300(118)=8.0_ki*abb300(118)
      abb300(134)=8.0_ki*abb300(30)
      abb300(136)=abb300(134)*abb300(74)
      abb300(138)=16.0_ki*abb300(30)
      abb300(141)=abb300(138)*spbk3k1
      abb300(145)=-abb300(48)*abb300(6)
      abb300(146)=8.0_ki*abb300(74)*abb300(145)
      abb300(152)=16.0_ki*abb300(145)
      abb300(153)=-spbk3k1*abb300(152)
      abb300(154)=4.0_ki*abb300(30)
      abb300(155)=-abb300(74)*abb300(154)
      abb300(156)=spbk3k1*abb300(134)
      abb300(157)=abb300(29)*abb300(97)
      abb300(36)=-spak1k2*abb300(36)
      abb300(35)=abb300(86)*abb300(35)
      abb300(158)=abb300(86)*spak2e7
      abb300(59)=-abb300(59)*abb300(158)
      abb300(35)=abb300(59)+abb300(35)
      abb300(35)=spbl6k2*abb300(35)
      abb300(59)=spak1l5*abb300(81)
      abb300(35)=abb300(59)+abb300(35)+abb300(36)+abb300(157)
      abb300(35)=spbe7k1*abb300(35)
      abb300(36)=spal6k7*spbl6k2
      abb300(59)=spak1k7*spbk2k1
      abb300(36)=abb300(36)+abb300(59)
      abb300(59)=abb300(108)*abb300(36)
      abb300(108)=spak2k7*abb300(43)
      abb300(157)=-spal5k7*abb300(81)
      abb300(59)=abb300(157)+abb300(108)+abb300(59)
      abb300(59)=spbk7e7*abb300(59)
      abb300(70)=abb300(70)*abb300(24)
      abb300(43)=-spak2l6*abb300(43)
      abb300(81)=spal5l6*abb300(81)
      abb300(43)=abb300(81)+abb300(70)+abb300(43)
      abb300(43)=spbe7l6*abb300(43)
      abb300(35)=abb300(43)+abb300(35)+abb300(59)
      abb300(35)=4.0_ki*abb300(35)
      abb300(43)=spak1k2*spbk7k1
      abb300(59)=spak2l6*spbk7l6
      abb300(43)=abb300(59)+abb300(43)
      abb300(43)=spal5k7*abb300(43)
      abb300(59)=-spal5l6*abb300(144)
      abb300(70)=-spak1l5*abb300(99)
      abb300(43)=-abb300(69)-abb300(70)-abb300(59)-abb300(43)
      abb300(43)=abb300(39)*abb300(43)
      abb300(59)=abb300(84)*abb300(68)
      abb300(69)=abb300(59)*abb300(99)
      abb300(39)=abb300(125)*abb300(39)
      abb300(70)=abb300(69)-abb300(39)
      abb300(81)=abb300(107)*abb300(6)
      abb300(107)=abb300(70)+abb300(81)
      abb300(107)=abb300(107)*abb300(97)
      abb300(99)=abb300(34)*abb300(99)
      abb300(104)=-abb300(86)*abb300(104)
      abb300(108)=spak2l6*abb300(39)
      abb300(104)=abb300(104)+abb300(108)
      abb300(104)=spbl6k2*abb300(104)
      abb300(81)=-es12*abb300(81)
      abb300(43)=abb300(81)+abb300(104)+abb300(99)+abb300(107)+abb300(43)
      abb300(43)=8.0_ki*abb300(43)
      abb300(81)=-abb300(41)*spak1k2
      abb300(99)=spbl6k2*abb300(68)*abb300(158)
      abb300(104)=abb300(97)*abb300(47)
      abb300(81)=abb300(99)-abb300(81)+abb300(104)-abb300(101)
      abb300(81)=abb300(81)*spbe7k1
      abb300(99)=-abb300(41)*spak2l6
      abb300(99)=abb300(99)+abb300(121)
      abb300(99)=abb300(99)*spbe7l6
      abb300(81)=abb300(81)-abb300(99)
      abb300(41)=-abb300(41)*abb300(143)
      abb300(90)=spbk7e7*abb300(90)
      abb300(41)=abb300(90)+abb300(41)+abb300(81)
      abb300(41)=8.0_ki*abb300(41)
      abb300(90)=abb300(134)*spbe7l6
      abb300(99)=abb300(24)*abb300(90)
      abb300(40)=16.0_ki*abb300(40)
      abb300(101)=abb300(30)*abb300(140)
      abb300(104)=spbe7k1*abb300(101)
      abb300(107)=abb300(47)*spbk7e7
      abb300(108)=abb300(107)*spak2k7
      abb300(121)=-spbk2k1*abb300(108)
      abb300(104)=abb300(104)+abb300(121)
      abb300(104)=8.0_ki*abb300(104)
      abb300(81)=4.0_ki*abb300(81)
      abb300(121)=4.0_ki*spbe7k1
      abb300(157)=abb300(65)*abb300(121)
      abb300(158)=spbe7k1*abb300(134)
      abb300(159)=abb300(154)*spbe7k1
      abb300(160)=4.0_ki*spbk2k1
      abb300(161)=-abb300(29)*abb300(160)
      abb300(162)=8.0_ki*spbk2k1
      abb300(163)=-abb300(47)*abb300(162)
      abb300(164)=-abb300(47)*abb300(160)
      abb300(65)=-4.0_ki*spbe7l6*abb300(65)
      abb300(154)=-spbe7l6*abb300(154)
      abb300(105)=abb300(105)*spbk7e7
      abb300(160)=-abb300(160)*abb300(105)
      abb300(165)=-spbk7k1*abb300(138)
      abb300(166)=-abb300(107)*abb300(147)
      abb300(105)=-spbl6k2*abb300(105)
      abb300(105)=abb300(105)+abb300(166)
      abb300(105)=4.0_ki*abb300(105)
      abb300(166)=spbk7l6*abb300(138)
      abb300(167)=-8.0_ki*abb300(107)
      abb300(101)=-spbe7l6*abb300(101)
      abb300(108)=-spbl6k2*abb300(108)
      abb300(101)=abb300(108)+abb300(101)
      abb300(101)=4.0_ki*abb300(101)
      abb300(87)=abb300(140)*abb300(87)
      abb300(108)=abb300(47)*abb300(109)
      abb300(109)=abb300(108)*spak2k7
      abb300(87)=abb300(109)+abb300(87)
      abb300(109)=8.0_ki*abb300(87)
      abb300(138)=abb300(138)*spbl6k3
      abb300(168)=abb300(145)*abb300(140)
      abb300(169)=-spbe7k3*abb300(168)
      abb300(66)=abb300(66)*abb300(68)*abb300(103)
      abb300(103)=-spak2k7*abb300(66)
      abb300(103)=abb300(103)+abb300(169)
      abb300(103)=8.0_ki*abb300(103)
      abb300(152)=-spbl6k3*abb300(152)
      abb300(87)=4.0_ki*abb300(87)
      abb300(134)=spbl6k3*abb300(134)
      abb300(20)=spbe7k2*abb300(20)
      abb300(45)=abb300(34)*abb300(45)
      abb300(89)=-abb300(14)*abb300(89)
      abb300(10)=abb300(38)*abb300(10)
      abb300(32)=abb300(32)*abb300(9)
      abb300(10)=abb300(10)-abb300(32)
      abb300(32)=-abb300(10)*abb300(106)
      abb300(20)=abb300(32)+abb300(89)+abb300(20)+abb300(45)
      abb300(20)=spae7k7*abb300(20)
      abb300(32)=spak4k7*abb300(34)*abb300(74)
      abb300(20)=abb300(32)+abb300(20)
      abb300(20)=4.0_ki*abb300(20)
      abb300(32)=-abb300(98)*abb300(44)
      abb300(38)=-abb300(58)*abb300(149)
      abb300(45)=abb300(84)*abb300(151)
      abb300(32)=abb300(45)+abb300(32)+abb300(38)
      abb300(32)=spak2k7*abb300(32)
      abb300(38)=abb300(119)*abb300(69)
      abb300(32)=abb300(38)+abb300(32)
      abb300(32)=8.0_ki*abb300(32)
      abb300(38)=abb300(110)*abb300(47)
      abb300(45)=4.0_ki*abb300(38)
      abb300(69)=spae7k7*abb300(34)*abb300(121)
      abb300(84)=8.0_ki*abb300(59)
      abb300(89)=-abb300(84)*spbk2k1*spak2k7
      abb300(106)=abb300(80)*abb300(12)
      abb300(106)=abb300(106)-abb300(94)
      abb300(121)=abb300(106)*c4
      abb300(80)=abb300(80)*abb300(19)
      abb300(15)=abb300(15)*abb300(19)
      abb300(80)=abb300(80)-abb300(15)
      abb300(151)=abb300(80)*c2
      abb300(92)=-abb300(92)+abb300(121)+abb300(151)
      abb300(92)=abb300(92)*abb300(63)
      abb300(121)=-abb300(27)*abb300(92)
      abb300(48)=-abb300(64)*abb300(48)
      abb300(64)=abb300(48)*spbe7l5
      abb300(151)=-abb300(24)*abb300(64)
      abb300(121)=abb300(121)+abb300(151)
      abb300(121)=4.0_ki*abb300(121)
      abb300(85)=abb300(85)-abb300(25)
      abb300(85)=-abb300(85)*abb300(26)
      abb300(106)=-abb300(17)+abb300(106)
      abb300(106)=c4*abb300(106)
      abb300(80)=-abb300(21)+abb300(80)
      abb300(80)=c2*abb300(80)
      abb300(80)=abb300(80)+abb300(106)+abb300(85)
      abb300(80)=abb300(80)*abb300(149)
      abb300(85)=spbl5k1*abb300(48)
      abb300(106)=abb300(132)*abb300(44)
      abb300(149)=-abb300(68)*abb300(125)
      abb300(130)=-abb300(149)*abb300(130)
      abb300(39)=-abb300(39)*abb300(150)
      abb300(39)=abb300(85)+abb300(39)+abb300(130)+abb300(106)+abb300(80)
      abb300(39)=8.0_ki*abb300(39)
      abb300(80)=4.0_ki*abb300(108)
      abb300(85)=spak4l6*abb300(80)
      abb300(27)=-4.0_ki*abb300(145)*abb300(27)
      abb300(106)=abb300(145)+abb300(149)
      abb300(106)=abb300(106)*abb300(162)
      abb300(108)=-8.0_ki*abb300(34)*abb300(44)
      abb300(130)=spbk2k1*abb300(139)
      abb300(72)=-abb300(34)*abb300(72)
      abb300(10)=spak4l6*abb300(10)
      abb300(10)=abb300(10)+abb300(130)+abb300(72)
      abb300(10)=8.0_ki*abb300(10)
      abb300(72)=-4.0_ki*spak4l5*abb300(142)
      abb300(13)=spbk7k3*spbe7k2*abb300(13)
      abb300(77)=abb300(34)*abb300(77)
      abb300(130)=-abb300(14)*abb300(148)
      abb300(13)=abb300(130)+abb300(77)+abb300(13)
      abb300(13)=spae7k7*abb300(13)
      abb300(77)=spbe7k2*abb300(92)
      abb300(92)=abb300(132)*abb300(93)
      abb300(64)=abb300(64)+abb300(92)+abb300(77)
      abb300(64)=abb300(64)*abb300(140)
      abb300(68)=abb300(68)*abb300(9)
      abb300(77)=spak1k2*abb300(68)*abb300(24)
      abb300(54)=abb300(77)+abb300(54)
      abb300(54)=abb300(93)*abb300(54)
      abb300(77)=abb300(128)*spak1k4
      abb300(92)=abb300(150)*spbe7l6
      abb300(77)=abb300(77)+abb300(92)
      abb300(92)=-abb300(110)+abb300(77)
      abb300(29)=abb300(29)*abb300(92)
      abb300(37)=-abb300(61)*abb300(37)
      abb300(61)=-abb300(9)*abb300(114)
      abb300(37)=abb300(37)-abb300(61)
      abb300(61)=-spal5l6*abb300(140)*spbe7k3
      abb300(74)=-spak1l5*abb300(74)
      abb300(61)=abb300(74)+abb300(61)
      abb300(61)=abb300(37)*abb300(61)
      abb300(74)=spal6k7*abb300(117)
      abb300(92)=spak1k7*spbk7e7*abb300(113)
      abb300(13)=abb300(92)+abb300(74)+abb300(64)+abb300(29)+abb300(13)+abb300(&
      &61)+abb300(54)
      abb300(13)=4.0_ki*abb300(13)
      abb300(29)=abb300(9)+abb300(56)
      abb300(29)=abb300(29)*spak2l5
      abb300(23)=abb300(23)*abb300(29)
      abb300(23)=-2.0_ki*abb300(25)+abb300(23)-abb300(88)
      abb300(23)=-abb300(23)*abb300(26)
      abb300(12)=abb300(12)*abb300(29)
      abb300(12)=abb300(12)-abb300(94)-2.0_ki*abb300(17)
      abb300(12)=c4*abb300(12)
      abb300(17)=abb300(19)*abb300(29)
      abb300(15)=abb300(17)-abb300(15)-2.0_ki*abb300(21)
      abb300(15)=c2*abb300(15)
      abb300(17)=spak1k4*abb300(70)
      abb300(12)=abb300(17)+abb300(15)+abb300(12)+abb300(23)
      abb300(12)=spbk3k2*abb300(12)
      abb300(15)=abb300(56)*abb300(22)
      abb300(17)=abb300(9)*abb300(22)
      abb300(19)=abb300(17)+2.0_ki*abb300(15)
      abb300(19)=-abb300(19)*abb300(26)
      abb300(21)=abb300(56)*abb300(11)
      abb300(11)=abb300(9)*abb300(11)
      abb300(23)=2.0_ki*abb300(21)+abb300(11)
      abb300(23)=c4*abb300(23)
      abb300(25)=abb300(18)*abb300(56)
      abb300(9)=abb300(9)*abb300(18)
      abb300(18)=2.0_ki*abb300(25)+abb300(9)
      abb300(18)=c2*abb300(18)
      abb300(18)=abb300(18)+abb300(23)+abb300(19)
      abb300(18)=abb300(18)*abb300(83)
      abb300(9)=abb300(25)+abb300(9)
      abb300(9)=abb300(9)*c2
      abb300(11)=abb300(21)+abb300(11)
      abb300(11)=abb300(11)*c4
      abb300(15)=abb300(15)+abb300(17)
      abb300(15)=abb300(26)*abb300(15)
      abb300(9)=abb300(9)+abb300(11)-abb300(15)
      abb300(11)=-abb300(9)*abb300(102)
      abb300(15)=-abb300(58)*abb300(147)
      abb300(14)=abb300(14)+abb300(15)
      abb300(14)=abb300(63)*abb300(14)
      abb300(15)=spbl6l5*abb300(48)
      abb300(17)=-abb300(34)*abb300(57)
      abb300(19)=-abb300(124)-abb300(33)
      abb300(19)=abb300(37)*abb300(19)
      abb300(21)=abb300(26)*abb300(22)
      abb300(21)=abb300(21)-abb300(67)
      abb300(8)=abb300(55)+2.0_ki*abb300(8)
      abb300(8)=-abb300(71)*abb300(8)*abb300(21)
      abb300(22)=spbk7l6*abb300(149)*abb300(119)
      abb300(23)=abb300(59)*abb300(150)*abb300(144)
      abb300(8)=abb300(17)+abb300(15)+abb300(23)+abb300(11)+abb300(22)+abb300(1&
      &8)+abb300(8)+abb300(14)+abb300(19)+abb300(12)
      abb300(8)=8.0_ki*abb300(8)
      abb300(11)=abb300(47)*abb300(77)
      abb300(12)=abb300(111)*abb300(93)
      abb300(11)=abb300(11)-abb300(12)-2.0_ki*abb300(38)
      abb300(12)=8.0_ki*abb300(11)
      abb300(14)=16.0_ki*abb300(120)
      abb300(15)=8.0_ki*abb300(38)
      abb300(17)=8.0_ki*spak4k7*abb300(66)
      abb300(11)=4.0_ki*abb300(11)
      abb300(18)=8.0_ki*abb300(120)
      abb300(19)=spak1k4*abb300(80)
      abb300(22)=spbe7k2*abb300(168)
      abb300(23)=-spal5e7*abb300(143)
      abb300(25)=spal5k7*spbk7e7*spak2e7
      abb300(23)=abb300(25)+abb300(23)
      abb300(23)=abb300(68)*abb300(23)
      abb300(25)=abb300(107)*abb300(36)
      abb300(22)=abb300(22)+abb300(25)+abb300(23)
      abb300(22)=4.0_ki*abb300(22)
      abb300(9)=spak2l5*abb300(9)
      abb300(23)=-es12+2.0_ki*abb300(97)
      abb300(23)=abb300(59)*abb300(23)
      abb300(25)=abb300(125)+abb300(86)
      abb300(21)=spbl6k2*abb300(25)*abb300(21)
      abb300(9)=abb300(21)+abb300(23)+abb300(9)
      abb300(9)=8.0_ki*abb300(9)
      abb300(21)=-16.0_ki*abb300(59)
      abb300(23)=abb300(119)*abb300(84)
      abb300(25)=abb300(150)*abb300(84)
      abb300(26)=-8.0_ki*spak4l5*abb300(98)
      abb300(29)=spak1k4*spbk3k2*abb300(84)
      abb300(33)=-4.0_ki*abb300(24)*abb300(137)
      abb300(34)=-spbk2k1*abb300(131)
      abb300(30)=spbl5k1*abb300(30)*abb300(44)
      abb300(30)=abb300(34)+abb300(30)
      abb300(30)=8.0_ki*abb300(30)
      abb300(24)=-abb300(24)*abb300(159)
      R2d300=0.0_ki
      rat2 = rat2 + R2d300
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='300' value='", &
          & R2d300, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd300h2
