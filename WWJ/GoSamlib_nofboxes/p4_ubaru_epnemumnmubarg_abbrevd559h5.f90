module     p4_ubaru_epnemumnmubarg_abbrevd559h5
   use p4_ubaru_epnemumnmubarg_config, only: ki
   use p4_ubaru_epnemumnmubarg_globalsh5
   implicit none
   private
   complex(ki), dimension(131), public :: abb559
   complex(ki), public :: R2d559
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p4_ubaru_epnemumnmubarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_color, only: TR
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      implicit none
      abb559(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb559(2)=1.0_ki/(-mZ**2+es712+i_*mZ*wZ)
      abb559(3)=NC**(-1)
      abb559(4)=sqrt2**(-1)
      abb559(5)=es345**(-1)
      abb559(6)=spbk7k2**(-1)
      abb559(7)=1.0_ki/(es34-es56+es712-es345)
      abb559(8)=es712**(-1)
      abb559(9)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb559(10)=es456**(-1)
      abb559(11)=1.0_ki/(-es34+es56+es712-es456)
      abb559(12)=gUl*abb559(2)
      abb559(13)=abb559(9)*abb559(1)
      abb559(14)=abb559(12)*abb559(13)
      abb559(15)=abb559(14)*gWWZ
      abb559(16)=abb559(15)*spak1k7
      abb559(17)=abb559(13)*spak1k7
      abb559(18)=2.0_ki/3.0_ki*abb559(8)
      abb559(19)=abb559(17)*abb559(18)
      abb559(20)=abb559(16)-abb559(19)
      abb559(21)=i_*TR*c1*abb559(4)
      abb559(22)=gW**2
      abb559(23)=abb559(21)*abb559(22)*abb559(6)*abb559(3)
      abb559(24)=abb559(23)*spak4k5
      abb559(25)=-abb559(24)*abb559(20)
      abb559(26)=abb559(25)*spbk5k3
      abb559(14)=gWWZ*abb559(14)*abb559(23)
      abb559(27)=spak1k7*abb559(14)
      abb559(28)=abb559(18)*abb559(23)
      abb559(29)=abb559(28)*abb559(17)
      abb559(27)=abb559(29)-abb559(27)
      abb559(29)=spak4k7*spbk7k3
      abb559(30)=abb559(27)*abb559(29)
      abb559(26)=abb559(26)-abb559(30)
      abb559(30)=abb559(23)*spbk6k3
      abb559(19)=abb559(19)*abb559(30)
      abb559(31)=abb559(15)*abb559(30)
      abb559(32)=abb559(31)*spak1k7
      abb559(19)=abb559(19)-abb559(32)
      abb559(33)=abb559(30)*spak1k7
      abb559(34)=abb559(7)*abb559(1)
      abb559(35)=abb559(34)*abb559(33)
      abb559(36)=4.0_ki/3.0_ki*abb559(8)
      abb559(37)=abb559(35)*abb559(36)
      abb559(37)=abb559(37)+abb559(19)
      abb559(37)=abb559(37)*spak4k6
      abb559(38)=gmul*spak4k6
      abb559(39)=2.0_ki*abb559(12)
      abb559(40)=abb559(38)*abb559(39)
      abb559(41)=abb559(35)*abb559(40)
      abb559(42)=gnmul*abb559(5)
      abb559(43)=abb559(42)*spbk5k3
      abb559(44)=abb559(43)*abb559(1)
      abb559(45)=abb559(39)*abb559(44)
      abb559(46)=abb559(24)*spak1k7
      abb559(47)=-abb559(46)*abb559(45)
      abb559(23)=abb559(23)*spbk3k2
      abb559(20)=-abb559(23)*abb559(20)
      abb559(48)=-spak2k4*abb559(20)
      abb559(41)=-abb559(37)+abb559(48)+abb559(47)+abb559(41)-abb559(26)
      abb559(47)=spak1k5*spbk6k2
      abb559(48)=abb559(47)*spbk2k1
      abb559(41)=abb559(48)*abb559(41)
      abb559(49)=abb559(31)*spak4k5
      abb559(50)=abb559(49)*spak1k7
      abb559(51)=abb559(18)*spak4k5
      abb559(52)=abb559(51)*abb559(17)
      abb559(53)=abb559(52)*abb559(30)
      abb559(50)=abb559(50)-abb559(53)
      abb559(53)=spak1k6*spbk6k2
      abb559(54)=abb559(53)*abb559(50)
      abb559(55)=spbk3k2*spak4k5
      abb559(56)=abb559(32)*abb559(55)
      abb559(57)=abb559(30)*spbk3k2
      abb559(52)=abb559(52)*abb559(57)
      abb559(52)=abb559(56)-abb559(52)
      abb559(56)=abb559(52)*spak1k3
      abb559(54)=abb559(54)-abb559(56)
      abb559(56)=gnel*abb559(11)
      abb559(58)=abb559(56)*spak3k5
      abb559(59)=spbk3k2*abb559(9)
      abb559(60)=abb559(58)*abb559(59)*abb559(33)
      abb559(61)=abb559(39)*spak1k4
      abb559(62)=abb559(61)*abb559(60)
      abb559(63)=spak1k4*spbk6k2
      abb559(64)=abb559(63)*spak2k5
      abb559(65)=abb559(20)*abb559(64)
      abb559(66)=abb559(56)*abb559(9)
      abb559(67)=abb559(66)*abb559(61)
      abb559(68)=-spbk6k2*abb559(33)*abb559(67)*spak5k6
      abb559(69)=abb559(61)*spbk6k2
      abb559(42)=abb559(42)*spbk4k3
      abb559(70)=abb559(42)*abb559(1)
      abb559(71)=-abb559(46)*abb559(70)*abb559(69)
      abb559(72)=abb559(24)*abb559(9)
      abb559(73)=abb559(72)*abb559(10)
      abb559(74)=abb559(73)*spbk3k2
      abb559(75)=gel*spbk6k4
      abb559(76)=abb559(75)*abb559(74)
      abb559(77)=abb559(76)*abb559(61)
      abb559(78)=-spak1k7*abb559(77)
      abb559(62)=abb559(71)+abb559(68)+abb559(65)+abb559(62)+abb559(78)-abb559(&
      &54)
      abb559(62)=spbk2k1*abb559(62)
      abb559(65)=abb559(50)*spbk4k2
      abb559(32)=abb559(32)*spbk3k2
      abb559(68)=abb559(18)*spbk3k2
      abb559(17)=abb559(68)*abb559(17)
      abb559(71)=abb559(30)*abb559(17)
      abb559(32)=abb559(32)-abb559(71)
      abb559(71)=abb559(32)*spak3k5
      abb559(78)=spbk6k1*spak1k5
      abb559(79)=abb559(78)*abb559(20)
      abb559(80)=spbk7k6*spak5k7
      abb559(81)=abb559(80)*abb559(20)
      abb559(65)=-abb559(81)-abb559(71)+abb559(79)+abb559(65)
      abb559(17)=abb559(24)*abb559(17)
      abb559(71)=abb559(24)*spbk3k2
      abb559(16)=abb559(71)*abb559(16)
      abb559(16)=abb559(17)-abb559(16)
      abb559(17)=abb559(74)*abb559(36)
      abb559(79)=abb559(17)*spak1k7
      abb559(79)=abb559(79)+abb559(16)
      abb559(79)=abb559(79)*spbk6k4
      abb559(82)=abb559(27)*spbk3k1
      abb559(83)=-abb559(47)*abb559(82)
      abb559(83)=abb559(79)+abb559(83)+abb559(65)
      abb559(84)=spbk2k1*spak1k4
      abb559(83)=abb559(84)*abb559(83)
      abb559(85)=abb559(50)*spbk5k2
      abb559(86)=spbk2k1*spak1k5
      abb559(87)=-abb559(86)*abb559(85)
      abb559(88)=abb559(73)*spak1k7
      abb559(89)=abb559(68)*spak1k5
      abb559(90)=abb559(89)*spbk2k1
      abb559(91)=abb559(88)*abb559(90)
      abb559(92)=abb559(24)*abb559(12)
      abb559(93)=abb559(92)*abb559(10)*abb559(9)
      abb559(94)=abb559(93)*gel
      abb559(95)=spbk3k2*abb559(94)
      abb559(96)=abb559(95)*spak1k7
      abb559(97)=-abb559(86)*abb559(96)
      abb559(91)=abb559(91)+abb559(97)
      abb559(97)=2.0_ki*spbk6k5
      abb559(91)=abb559(91)*abb559(97)
      abb559(90)=abb559(35)*abb559(90)
      abb559(98)=abb559(33)*abb559(12)
      abb559(99)=abb559(1)*abb559(98)
      abb559(100)=abb559(99)*abb559(7)
      abb559(101)=gmul*spbk3k2
      abb559(102)=abb559(100)*abb559(101)
      abb559(103)=-abb559(86)*abb559(102)
      abb559(90)=abb559(90)+abb559(103)
      abb559(103)=2.0_ki*spak3k4
      abb559(90)=abb559(90)*abb559(103)
      abb559(41)=abb559(87)+abb559(90)+abb559(91)+abb559(62)+abb559(41)+abb559(&
      &83)
      abb559(41)=8.0_ki*abb559(41)
      abb559(62)=abb559(92)*spak1k7
      abb559(83)=abb559(62)*abb559(59)
      abb559(87)=abb559(84)*abb559(83)
      abb559(90)=abb559(12)*abb559(22)
      abb559(91)=abb559(21)*spak1k7
      abb559(104)=abb559(91)*abb559(90)
      abb559(105)=abb559(104)*abb559(55)
      abb559(106)=abb559(9)*abb559(3)
      abb559(107)=abb559(106)*spak4k7
      abb559(108)=-abb559(107)*abb559(105)
      abb559(87)=abb559(87)+abb559(108)
      abb559(108)=abb559(75)*abb559(10)
      abb559(87)=abb559(87)*abb559(108)
      abb559(62)=abb559(62)*abb559(1)
      abb559(109)=abb559(48)*abb559(62)
      abb559(110)=abb559(104)*spbk6k2
      abb559(111)=abb559(1)*abb559(3)
      abb559(112)=abb559(111)*spak5k7
      abb559(113)=abb559(110)*abb559(112)
      abb559(114)=-spak4k5*abb559(113)
      abb559(109)=abb559(109)+abb559(114)
      abb559(109)=abb559(109)*abb559(43)
      abb559(98)=abb559(9)*abb559(98)
      abb559(114)=-abb559(84)*abb559(98)
      abb559(104)=abb559(104)*spbk6k3
      abb559(115)=abb559(107)*abb559(104)
      abb559(114)=abb559(114)+abb559(115)
      abb559(114)=abb559(58)*spbk3k2*abb559(114)
      abb559(87)=abb559(114)+abb559(87)+abb559(109)
      abb559(54)=spbk2k1*abb559(54)
      abb559(16)=-abb559(16)*abb559(84)
      abb559(109)=abb559(106)*abb559(1)
      abb559(114)=abb559(109)*abb559(91)
      abb559(115)=abb559(114)*abb559(90)
      abb559(116)=abb559(115)*gWWZ
      abb559(117)=spak4k5*abb559(116)
      abb559(118)=-spbk3k2*abb559(117)
      abb559(119)=abb559(22)*spak4k5
      abb559(120)=abb559(114)*abb559(119)
      abb559(121)=abb559(68)*abb559(120)
      abb559(118)=abb559(121)+abb559(118)
      abb559(118)=spak4k7*abb559(118)
      abb559(121)=spbk3k2*abb559(8)
      abb559(72)=abb559(72)*spak1k7*abb559(121)
      abb559(122)=-abb559(84)*abb559(72)
      abb559(123)=abb559(121)*abb559(91)
      abb559(124)=abb559(123)*abb559(119)
      abb559(125)=abb559(107)*abb559(124)
      abb559(122)=abb559(122)+abb559(125)
      abb559(125)=4.0_ki/3.0_ki*abb559(10)
      abb559(122)=abb559(122)*abb559(125)
      abb559(16)=abb559(122)+abb559(16)+abb559(118)
      abb559(16)=spbk6k4*abb559(16)
      abb559(118)=abb559(19)*abb559(48)
      abb559(122)=gWWZ*spbk6k3
      abb559(115)=abb559(115)*abb559(122)
      abb559(125)=abb559(22)*spbk6k3
      abb559(126)=abb559(114)*abb559(125)
      abb559(127)=-abb559(18)*abb559(126)
      abb559(127)=abb559(127)+abb559(115)
      abb559(128)=spak5k7*spbk6k2
      abb559(127)=abb559(127)*abb559(128)
      abb559(129)=abb559(33)*abb559(1)
      abb559(130)=abb559(48)*abb559(129)
      abb559(131)=abb559(112)*abb559(125)
      abb559(91)=-spbk6k2*abb559(91)*abb559(131)
      abb559(91)=abb559(130)+abb559(91)
      abb559(130)=4.0_ki/3.0_ki*abb559(7)
      abb559(91)=abb559(130)*abb559(8)*abb559(91)
      abb559(91)=abb559(91)+abb559(118)+abb559(127)
      abb559(91)=spak4k6*abb559(91)
      abb559(118)=-abb559(86)*abb559(121)*abb559(129)
      abb559(123)=abb559(131)*abb559(123)
      abb559(118)=abb559(118)+abb559(123)
      abb559(123)=abb559(86)*abb559(99)
      abb559(104)=-abb559(112)*abb559(104)
      abb559(104)=abb559(123)+abb559(104)
      abb559(104)=abb559(104)*abb559(101)
      abb559(104)=2.0_ki/3.0_ki*abb559(118)+abb559(104)
      abb559(104)=abb559(103)*abb559(104)
      abb559(99)=-abb559(48)*abb559(99)
      abb559(113)=spbk6k3*abb559(113)
      abb559(99)=abb559(99)+abb559(113)
      abb559(99)=abb559(99)*abb559(38)
      abb559(99)=abb559(104)+2.0_ki*abb559(99)
      abb559(99)=abb559(7)*abb559(99)
      abb559(104)=-abb559(27)*abb559(48)
      abb559(22)=abb559(22)*abb559(8)
      abb559(113)=abb559(114)*abb559(22)
      abb559(113)=2.0_ki/3.0_ki*abb559(113)
      abb559(114)=abb559(116)-abb559(113)
      abb559(118)=-abb559(114)*abb559(128)
      abb559(104)=abb559(104)+abb559(118)
      abb559(104)=spbk7k3*abb559(104)
      abb559(118)=spbk3k2*abb559(116)
      abb559(113)=abb559(113)*spbk3k2
      abb559(113)=abb559(113)-abb559(118)
      abb559(123)=-abb559(113)*abb559(80)
      abb559(104)=abb559(104)+abb559(123)
      abb559(104)=spak4k7*abb559(104)
      abb559(123)=abb559(25)*abb559(48)
      abb559(120)=-abb559(18)*abb559(120)
      abb559(117)=abb559(120)+abb559(117)
      abb559(117)=abb559(117)*abb559(128)
      abb559(117)=abb559(123)+abb559(117)
      abb559(117)=spbk5k3*abb559(117)
      abb559(32)=abb559(32)*abb559(84)
      abb559(115)=-spbk3k2*abb559(115)
      abb559(120)=abb559(68)*abb559(126)
      abb559(115)=abb559(120)+abb559(115)
      abb559(115)=spak4k7*abb559(115)
      abb559(32)=abb559(32)+abb559(115)
      abb559(32)=spak3k5*abb559(32)
      abb559(115)=abb559(27)*abb559(47)*abb559(84)
      abb559(114)=spak5k7*abb559(114)*abb559(63)
      abb559(114)=abb559(115)+abb559(114)
      abb559(114)=spbk3k1*abb559(114)
      abb559(115)=abb559(113)*spak4k7
      abb559(120)=-abb559(20)*abb559(84)
      abb559(120)=abb559(120)+abb559(115)
      abb559(120)=abb559(120)*abb559(78)
      abb559(72)=-abb559(86)*abb559(72)
      abb559(106)=abb559(106)*spak5k7
      abb559(123)=abb559(106)*abb559(124)
      abb559(72)=abb559(72)+abb559(123)
      abb559(83)=abb559(86)*abb559(83)
      abb559(105)=-abb559(106)*abb559(105)
      abb559(83)=abb559(83)+abb559(105)
      abb559(83)=gel*abb559(83)
      abb559(72)=2.0_ki/3.0_ki*abb559(72)+abb559(83)
      abb559(83)=abb559(97)*abb559(10)
      abb559(72)=abb559(72)*abb559(83)
      abb559(105)=abb559(63)*spbk2k1
      abb559(123)=-abb559(20)*abb559(105)
      abb559(115)=spbk6k2*abb559(115)
      abb559(115)=abb559(123)+abb559(115)
      abb559(115)=spak2k5*abb559(115)
      abb559(48)=abb559(20)*abb559(48)
      abb559(113)=-abb559(113)*abb559(128)
      abb559(48)=abb559(48)+abb559(113)
      abb559(48)=spak2k4*abb559(48)
      abb559(86)=abb559(50)*abb559(86)
      abb559(113)=spbk6k3*spak4k5
      abb559(116)=abb559(116)*abb559(113)
      abb559(51)=abb559(126)*abb559(51)
      abb559(116)=abb559(116)-abb559(51)
      abb559(123)=-spak5k7*abb559(116)
      abb559(86)=abb559(86)+abb559(123)
      abb559(86)=spbk5k2*abb559(86)
      abb559(123)=-abb559(50)*abb559(84)
      abb559(124)=spak4k7*abb559(116)
      abb559(123)=abb559(123)+abb559(124)
      abb559(123)=spbk4k2*abb559(123)
      abb559(81)=abb559(84)*abb559(81)
      abb559(84)=abb559(98)*abb559(105)
      abb559(124)=-abb559(107)*abb559(110)*spbk6k3
      abb559(84)=abb559(84)+abb559(124)
      abb559(56)=abb559(56)*spak5k6
      abb559(124)=2.0_ki*abb559(56)
      abb559(84)=abb559(84)*abb559(124)
      abb559(105)=abb559(62)*abb559(105)
      abb559(111)=abb559(111)*spak4k7
      abb559(110)=-spak4k5*abb559(110)*abb559(111)
      abb559(105)=abb559(105)+abb559(110)
      abb559(110)=2.0_ki*abb559(42)
      abb559(105)=abb559(105)*abb559(110)
      abb559(116)=-spak6k7*spbk6k2*abb559(116)
      abb559(113)=abb559(113)*abb559(118)
      abb559(51)=-spbk3k2*abb559(51)
      abb559(51)=abb559(51)+abb559(113)
      abb559(51)=spak3k7*abb559(51)
      abb559(16)=abb559(51)+abb559(116)+abb559(105)+abb559(84)+abb559(123)+abb5&
      &59(86)+abb559(48)+abb559(115)+abb559(72)+abb559(120)+abb559(114)+abb559(&
      &32)+abb559(117)+abb559(91)+abb559(16)+abb559(81)+abb559(104)+abb559(54)+&
      &abb559(99)+2.0_ki*abb559(87)
      abb559(16)=4.0_ki*abb559(16)
      abb559(32)=abb559(18)*abb559(13)
      abb559(15)=abb559(32)-abb559(15)
      abb559(48)=-abb559(24)*abb559(15)
      abb559(51)=abb559(48)*spbk5k3
      abb559(13)=abb559(28)*abb559(13)
      abb559(13)=abb559(13)-abb559(14)
      abb559(14)=abb559(29)*abb559(13)
      abb559(14)=abb559(51)+abb559(14)
      abb559(28)=abb559(45)*abb559(24)
      abb559(23)=abb559(23)*abb559(15)
      abb559(45)=abb559(23)*spak2k4
      abb559(28)=abb559(28)+abb559(45)
      abb559(45)=abb559(13)*spak1k4
      abb559(51)=abb559(45)*spbk3k1
      abb559(51)=-abb559(28)+abb559(14)-abb559(51)
      abb559(54)=abb559(51)*abb559(47)
      abb559(72)=abb559(80)-abb559(78)
      abb559(81)=abb559(72)*abb559(23)
      abb559(15)=-abb559(71)*abb559(15)
      abb559(15)=abb559(15)-abb559(17)
      abb559(15)=abb559(15)*spbk6k4
      abb559(15)=abb559(81)+abb559(15)
      abb559(17)=-spak1k4*abb559(15)
      abb559(32)=abb559(32)*abb559(30)
      abb559(31)=abb559(32)-abb559(31)
      abb559(71)=abb559(31)*abb559(47)
      abb559(81)=abb559(30)*abb559(34)
      abb559(47)=abb559(81)*abb559(47)
      abb559(84)=abb559(47)*abb559(36)
      abb559(71)=abb559(71)+abb559(84)
      abb559(71)=abb559(71)*spak4k6
      abb559(32)=spak4k5*abb559(32)
      abb559(32)=abb559(32)-abb559(49)
      abb559(49)=abb559(53)*abb559(32)
      abb559(53)=abb559(32)*spbk4k2
      abb559(84)=abb559(53)*spak1k4
      abb559(86)=abb559(32)*spbk5k2
      abb559(87)=abb559(86)*spak1k5
      abb559(91)=-spbk3k2*abb559(31)
      abb559(99)=spak3k5*spak1k4
      abb559(104)=abb559(91)*abb559(99)
      abb559(55)=-abb559(55)*abb559(31)
      abb559(105)=abb559(55)*spak1k3
      abb559(113)=abb559(89)*abb559(73)
      abb559(95)=abb559(95)*spak1k5
      abb559(95)=abb559(113)-abb559(95)
      abb559(95)=abb559(95)*abb559(97)
      abb559(89)=abb559(89)*abb559(81)
      abb559(12)=abb559(30)*abb559(12)
      abb559(34)=abb559(34)*abb559(12)
      abb559(101)=spak1k5*abb559(101)*abb559(34)
      abb559(89)=abb559(89)-abb559(101)
      abb559(89)=abb559(89)*abb559(103)
      abb559(57)=spak3k5*abb559(67)*abb559(57)
      abb559(47)=abb559(47)*abb559(40)
      abb559(101)=abb559(64)*abb559(23)
      abb559(67)=abb559(67)*abb559(30)
      abb559(113)=abb559(67)*spak5k6
      abb559(114)=abb559(113)*spbk6k2
      abb559(24)=abb559(70)*abb559(24)
      abb559(69)=abb559(24)*abb559(69)
      abb559(17)=abb559(95)+abb559(89)+abb559(54)-abb559(104)-abb559(71)+abb559&
      &(17)-abb559(77)-abb559(84)+abb559(49)-abb559(69)-abb559(114)+abb559(101)&
      &+abb559(57)+abb559(47)+abb559(87)+abb559(105)
      abb559(47)=-4.0_ki*es12*abb559(17)
      abb559(49)=8.0_ki*abb559(17)
      abb559(17)=4.0_ki*abb559(17)
      abb559(54)=spak1k5*abb559(51)
      abb559(57)=abb559(31)*spak1k5
      abb559(69)=abb559(81)*spak1k5
      abb559(71)=abb559(69)*abb559(36)
      abb559(57)=abb559(71)+abb559(57)
      abb559(57)=abb559(57)*spak4k6
      abb559(71)=spak1k6*abb559(32)
      abb559(24)=abb559(24)*abb559(61)
      abb559(24)=abb559(24)+abb559(113)
      abb559(77)=abb559(69)*abb559(40)
      abb559(54)=-abb559(57)+abb559(71)+abb559(77)+abb559(54)-abb559(24)
      abb559(54)=spbk7k6*abb559(54)
      abb559(71)=abb559(31)*abb559(99)
      abb559(67)=abb559(67)*spak3k5
      abb559(64)=abb559(64)*abb559(13)
      abb559(75)=abb559(75)*abb559(73)
      abb559(61)=abb559(61)*abb559(75)
      abb559(61)=abb559(71)+abb559(64)+abb559(67)-abb559(61)
      abb559(64)=-spak1k3*abb559(32)
      abb559(67)=abb559(36)*abb559(73)
      abb559(48)=abb559(48)-abb559(67)
      abb559(67)=spbk6k4*abb559(48)*spak1k4
      abb559(71)=-abb559(45)*abb559(72)
      abb559(64)=-abb559(67)+abb559(64)+abb559(71)+abb559(61)
      abb559(64)=spbk7k3*abb559(64)
      abb559(71)=spbk7k5*spak1k5
      abb559(77)=-spbk7k4*spak1k4
      abb559(71)=abb559(77)+abb559(71)
      abb559(71)=abb559(32)*abb559(71)
      abb559(73)=abb559(73)*abb559(18)
      abb559(73)=abb559(73)-abb559(94)
      abb559(77)=abb559(73)*abb559(97)
      abb559(84)=spbk7k3*spak1k5
      abb559(87)=abb559(84)*abb559(77)
      abb559(69)=abb559(69)*abb559(18)
      abb559(89)=spbk7k3*abb559(69)
      abb559(94)=abb559(34)*gmul
      abb559(84)=-abb559(94)*abb559(84)
      abb559(84)=abb559(89)+abb559(84)
      abb559(84)=abb559(84)*abb559(103)
      abb559(54)=abb559(84)+abb559(87)+abb559(71)+abb559(54)+abb559(64)
      abb559(54)=4.0_ki*abb559(54)
      abb559(64)=abb559(50)*spbk6k2
      abb559(71)=8.0_ki*abb559(64)
      abb559(64)=4.0_ki*abb559(64)
      abb559(84)=spbk7k6*abb559(50)
      abb559(87)=spak1k2*spbk6k2
      abb559(89)=-abb559(32)*abb559(87)
      abb559(84)=abb559(84)+abb559(89)
      abb559(84)=4.0_ki*abb559(84)
      abb559(89)=abb559(37)+abb559(26)
      abb559(89)=spbk6k2*abb559(89)
      abb559(95)=abb559(88)*abb559(68)
      abb559(95)=abb559(95)-abb559(96)
      abb559(95)=abb559(95)*abb559(97)
      abb559(68)=abb559(35)*abb559(68)
      abb559(68)=abb559(68)-abb559(102)
      abb559(68)=abb559(68)*abb559(103)
      abb559(96)=abb559(39)*spbk6k2
      abb559(99)=abb559(96)*abb559(38)*abb559(35)
      abb559(101)=abb559(20)*spbk6k2
      abb559(102)=abb559(101)*spak2k4
      abb559(104)=abb559(82)*abb559(63)
      abb559(46)=abb559(96)*abb559(46)
      abb559(44)=abb559(46)*abb559(44)
      abb559(44)=abb559(85)+abb559(44)-abb559(68)-abb559(95)-abb559(99)+abb559(&
      &102)+abb559(104)+abb559(89)
      abb559(68)=8.0_ki*abb559(44)
      abb559(44)=4.0_ki*abb559(44)
      abb559(82)=spak1k4*abb559(82)
      abb559(26)=abb559(37)+abb559(82)+abb559(26)
      abb559(26)=spbk7k6*abb559(26)
      abb559(37)=abb559(81)*abb559(36)
      abb559(37)=abb559(37)+abb559(31)
      abb559(37)=abb559(37)*spak4k6
      abb559(82)=abb559(37)-abb559(14)
      abb559(82)=spbk6k2*abb559(82)
      abb559(63)=spbk3k1*abb559(13)*abb559(63)
      abb559(63)=-abb559(86)+abb559(63)+abb559(82)
      abb559(63)=spak1k2*abb559(63)
      abb559(82)=-spbk7k6*abb559(100)
      abb559(85)=-abb559(34)*abb559(87)
      abb559(82)=abb559(82)+abb559(85)
      abb559(82)=abb559(82)*abb559(38)
      abb559(85)=abb559(87)*abb559(92)*abb559(1)
      abb559(62)=abb559(62)*spbk7k6
      abb559(62)=abb559(85)+abb559(62)
      abb559(85)=abb559(62)*abb559(43)
      abb559(82)=abb559(82)+abb559(85)
      abb559(85)=spak1k7*spbk7k3
      abb559(86)=spak1k2*spbk3k2
      abb559(85)=abb559(85)+abb559(86)
      abb559(85)=gel*abb559(93)*abb559(85)
      abb559(89)=-spbk7k3*abb559(88)
      abb559(74)=-spak1k2*abb559(74)
      abb559(74)=abb559(89)+abb559(74)
      abb559(74)=abb559(8)*abb559(74)
      abb559(74)=2.0_ki/3.0_ki*abb559(74)+abb559(85)
      abb559(74)=abb559(74)*abb559(97)
      abb559(35)=-spbk7k3*abb559(8)*abb559(35)
      abb559(89)=-spak1k2*abb559(81)*abb559(121)
      abb559(35)=abb559(35)+abb559(89)
      abb559(89)=spbk7k3*abb559(100)
      abb559(34)=abb559(34)*abb559(86)
      abb559(34)=abb559(89)+abb559(34)
      abb559(34)=gmul*abb559(34)
      abb559(34)=2.0_ki/3.0_ki*abb559(35)+abb559(34)
      abb559(34)=abb559(34)*abb559(103)
      abb559(23)=abb559(87)*abb559(23)
      abb559(20)=spbk7k6*abb559(20)
      abb559(20)=abb559(20)+abb559(23)
      abb559(20)=spak2k4*abb559(20)
      abb559(35)=spbk7k5*abb559(50)
      abb559(20)=abb559(35)+abb559(20)+abb559(34)+abb559(74)+abb559(63)+abb559(&
      &26)+2.0_ki*abb559(82)
      abb559(20)=4.0_ki*abb559(20)
      abb559(26)=spak1k7*abb559(76)
      abb559(26)=abb559(60)-abb559(26)
      abb559(26)=abb559(39)*abb559(26)
      abb559(34)=abb559(66)*spak5k6
      abb559(33)=abb559(33)*abb559(34)*abb559(96)
      abb559(35)=abb559(101)*spak2k5
      abb559(46)=abb559(46)*abb559(70)
      abb559(26)=abb559(79)+abb559(65)-abb559(46)+abb559(35)-abb559(33)+abb559(&
      &26)
      abb559(33)=8.0_ki*abb559(26)
      abb559(26)=-4.0_ki*abb559(26)
      abb559(35)=spak3k5*abb559(91)
      abb559(15)=abb559(53)+abb559(35)+abb559(15)
      abb559(15)=spak1k2*abb559(15)
      abb559(35)=-abb559(36)*abb559(88)
      abb559(25)=-abb559(25)+abb559(35)
      abb559(25)=spbk7k3*abb559(25)
      abb559(25)=2.0_ki*abb559(85)+abb559(25)
      abb559(25)=spbk6k4*abb559(25)
      abb559(19)=-spak3k5*abb559(19)
      abb559(35)=abb559(27)*abb559(72)
      abb559(19)=abb559(19)+abb559(35)
      abb559(19)=spbk7k3*abb559(19)
      abb559(27)=-spbk7k3*spbk6k2*abb559(27)
      abb559(23)=abb559(27)-abb559(23)
      abb559(23)=spak2k5*abb559(23)
      abb559(27)=-spbk7k4*abb559(50)
      abb559(35)=-spbk7k3*abb559(98)
      abb559(36)=-spak1k2*abb559(12)*abb559(59)
      abb559(35)=abb559(35)+abb559(36)
      abb559(35)=abb559(35)*abb559(58)
      abb559(36)=spbk7k6*abb559(98)
      abb559(46)=abb559(9)*abb559(12)*abb559(87)
      abb559(36)=abb559(36)+abb559(46)
      abb559(36)=abb559(36)*abb559(124)
      abb559(46)=abb559(62)*abb559(110)
      abb559(15)=abb559(27)+abb559(46)+abb559(36)+abb559(23)+2.0_ki*abb559(35)+&
      &abb559(19)+abb559(15)+abb559(25)
      abb559(15)=4.0_ki*abb559(15)
      abb559(19)=8.0_ki*abb559(52)
      abb559(23)=-4.0_ki*abb559(52)
      abb559(25)=-spbk7k3*abb559(50)
      abb559(27)=-spak1k2*abb559(55)
      abb559(25)=abb559(25)+abb559(27)
      abb559(25)=4.0_ki*abb559(25)
      abb559(27)=2.0_ki/3.0_ki*abb559(21)
      abb559(22)=abb559(22)*abb559(109)*abb559(27)
      abb559(27)=abb559(109)*abb559(90)
      abb559(35)=abb559(27)*gWWZ
      abb559(36)=abb559(35)*abb559(21)
      abb559(22)=abb559(36)-abb559(22)
      abb559(36)=spbk3k1*spak1k4
      abb559(29)=abb559(36)-abb559(29)
      abb559(29)=abb559(22)*abb559(29)
      abb559(36)=abb559(21)*spak4k5
      abb559(27)=abb559(27)*abb559(36)
      abb559(46)=abb559(27)*gWWZ
      abb559(50)=abb559(21)*abb559(8)
      abb559(52)=2.0_ki/3.0_ki*abb559(50)
      abb559(53)=abb559(52)*abb559(119)
      abb559(55)=abb559(53)*abb559(109)
      abb559(46)=abb559(46)-abb559(55)
      abb559(55)=spbk5k3*abb559(46)
      abb559(59)=spak2k4*spbk3k2*abb559(22)
      abb559(29)=abb559(59)+abb559(55)+abb559(29)
      abb559(29)=spak5k7*abb559(29)
      abb559(43)=-abb559(43)*abb559(112)
      abb559(42)=-abb559(42)*abb559(111)
      abb559(42)=abb559(42)+abb559(43)
      abb559(42)=abb559(36)*abb559(42)
      abb559(43)=abb559(112)*abb559(7)
      abb559(38)=abb559(38)*abb559(43)
      abb559(55)=-abb559(56)*abb559(107)
      abb559(38)=abb559(55)+abb559(38)
      abb559(21)=abb559(21)*spbk6k3
      abb559(38)=abb559(21)*abb559(38)
      abb559(38)=abb559(38)+abb559(42)
      abb559(42)=2.0_ki*abb559(90)
      abb559(38)=abb559(42)*abb559(38)
      abb559(55)=abb559(109)*abb559(125)
      abb559(56)=abb559(52)*abb559(55)
      abb559(35)=abb559(35)*abb559(21)
      abb559(35)=abb559(56)-abb559(35)
      abb559(56)=-spak5k7*abb559(35)
      abb559(59)=abb559(131)*abb559(7)
      abb559(50)=4.0_ki/3.0_ki*abb559(50)
      abb559(60)=-abb559(59)*abb559(50)
      abb559(56)=abb559(56)+abb559(60)
      abb559(56)=spak4k6*abb559(56)
      abb559(55)=abb559(36)*abb559(55)*abb559(18)
      abb559(27)=abb559(27)*abb559(122)
      abb559(27)=abb559(27)-abb559(55)
      abb559(55)=-spak6k7*abb559(27)
      abb559(29)=abb559(55)+abb559(56)+abb559(38)+abb559(29)
      abb559(29)=4.0_ki*abb559(29)
      abb559(38)=4.0_ki*abb559(27)
      abb559(55)=-spak5k7*abb559(38)
      abb559(38)=spak4k7*abb559(38)
      abb559(56)=spak2k5*spbk6k2
      abb559(56)=abb559(56)-abb559(72)
      abb559(22)=-abb559(22)*abb559(56)
      abb559(35)=spak3k5*abb559(35)
      abb559(22)=abb559(35)+abb559(22)
      abb559(22)=spak4k7*abb559(22)
      abb559(35)=-spak4k7*abb559(46)
      abb559(46)=abb559(10)*abb559(119)*abb559(107)*abb559(50)
      abb559(35)=abb559(35)+abb559(46)
      abb559(35)=spbk6k4*abb559(35)
      abb559(46)=-abb559(36)*abb559(108)
      abb559(50)=abb559(21)*abb559(58)
      abb559(46)=abb559(50)+abb559(46)
      abb559(42)=abb559(42)*abb559(107)*abb559(46)
      abb559(36)=-gel*abb559(90)*abb559(36)
      abb559(36)=abb559(53)+abb559(36)
      abb559(36)=abb559(106)*abb559(36)*abb559(83)
      abb559(21)=-gmul*abb559(90)*abb559(21)*abb559(43)
      abb559(43)=abb559(52)*abb559(59)
      abb559(21)=abb559(43)+abb559(21)
      abb559(21)=abb559(21)*abb559(103)
      abb559(27)=spak3k7*abb559(27)
      abb559(21)=abb559(27)+abb559(21)+abb559(36)+abb559(35)+abb559(22)+abb559(&
      &42)
      abb559(21)=4.0_ki*abb559(21)
      abb559(14)=-spak1k5*abb559(14)
      abb559(14)=abb559(24)+abb559(57)+abb559(14)
      abb559(14)=spbk6k1*abb559(14)
      abb559(22)=abb559(80)*abb559(45)
      abb559(22)=abb559(22)+abb559(67)-abb559(61)
      abb559(22)=spbk3k1*abb559(22)
      abb559(24)=abb559(40)*abb559(81)
      abb559(27)=-abb559(24)+abb559(28)
      abb559(27)=abb559(78)*abb559(27)
      abb559(28)=es234-es567
      abb559(28)=-es71+es12+2.0_ki*abb559(28)
      abb559(28)=abb559(32)*abb559(28)
      abb559(35)=spbk3k1*spak1k5
      abb559(36)=-abb559(35)*abb559(77)
      abb559(40)=-spbk3k1*abb559(69)
      abb559(35)=abb559(94)*abb559(35)
      abb559(35)=abb559(40)+abb559(35)
      abb559(35)=abb559(35)*abb559(103)
      abb559(14)=abb559(35)+abb559(36)+abb559(28)+abb559(22)+abb559(27)+abb559(&
      &14)
      abb559(14)=4.0_ki*abb559(14)
      abb559(22)=8.0_ki*abb559(32)
      abb559(24)=-abb559(24)+abb559(37)-abb559(51)
      abb559(24)=4.0_ki*abb559(24)
      abb559(27)=-spbk6k5*abb559(73)
      abb559(18)=-abb559(18)*abb559(81)
      abb559(18)=abb559(18)+abb559(94)
      abb559(18)=spak3k4*abb559(18)
      abb559(18)=abb559(27)+abb559(18)
      abb559(18)=8.0_ki*abb559(18)
      abb559(12)=abb559(12)*abb559(34)
      abb559(27)=abb559(92)*abb559(70)
      abb559(12)=abb559(12)+abb559(27)
      abb559(12)=8.0_ki*abb559(12)
      abb559(27)=-spak3k5*abb559(31)
      abb559(28)=-spak3k5*abb559(66)*abb559(30)
      abb559(28)=abb559(28)+abb559(75)
      abb559(28)=abb559(39)*abb559(28)
      abb559(13)=-abb559(13)*abb559(56)
      abb559(30)=spbk6k4*abb559(48)
      abb559(13)=abb559(27)+abb559(30)+abb559(13)+abb559(28)
      abb559(13)=4.0_ki*abb559(13)
      R2d559=0.0_ki
      rat2 = rat2 + R2d559
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='559' value='", &
          & R2d559, "'/>"
      end if
   end subroutine
end module p4_ubaru_epnemumnmubarg_abbrevd559h5
