module     p4_ubaru_epnemumnmubarg_abbrevd545h2
   use p4_ubaru_epnemumnmubarg_config, only: ki
   use p4_ubaru_epnemumnmubarg_globalsh2
   implicit none
   private
   complex(ki), dimension(164), public :: abb545
   complex(ki), public :: R2d545
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
      abb545(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb545(2)=1.0_ki/(-mZ**2+es712+i_*mZ*wZ)
      abb545(3)=NC**(-1)
      abb545(4)=sqrt2**(-1)
      abb545(5)=es345**(-1)
      abb545(6)=spak2k7**(-1)
      abb545(7)=1.0_ki/(es34-es56+es712-es345)
      abb545(8)=es712**(-1)
      abb545(9)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb545(10)=es456**(-1)
      abb545(11)=1.0_ki/(-es34+es56+es712-es456)
      abb545(12)=i_*TR*c1*abb545(4)
      abb545(13)=gW**2
      abb545(14)=abb545(12)*abb545(13)*abb545(9)*abb545(3)
      abb545(15)=2.0_ki/3.0_ki*abb545(8)
      abb545(16)=abb545(15)*abb545(14)
      abb545(17)=abb545(16)*spak2k5
      abb545(18)=spbk7k1*abb545(1)
      abb545(19)=abb545(18)*abb545(17)
      abb545(20)=abb545(19)*spbk6k3
      abb545(21)=abb545(14)*spbk6k3
      abb545(22)=abb545(18)*abb545(21)
      abb545(23)=gUr*abb545(2)
      abb545(24)=abb545(23)*gWWZ
      abb545(25)=abb545(24)*spak2k5
      abb545(26)=abb545(22)*abb545(25)
      abb545(20)=abb545(20)-abb545(26)
      abb545(20)=abb545(20)*spbk7k6
      abb545(26)=abb545(12)*abb545(8)
      abb545(27)=abb545(1)*abb545(3)
      abb545(28)=abb545(26)*abb545(27)
      abb545(29)=spak2k5*spbk6k3
      abb545(30)=abb545(13)*spbk7k1
      abb545(31)=abb545(30)*abb545(28)*abb545(29)
      abb545(32)=abb545(31)*spbk7k6
      abb545(33)=abb545(27)*abb545(6)
      abb545(26)=abb545(33)*abb545(26)
      abb545(34)=spak2k5*abb545(26)
      abb545(30)=abb545(30)*spbk6k3
      abb545(35)=abb545(30)*abb545(34)
      abb545(36)=spak1k2*spbk6k1
      abb545(37)=abb545(35)*abb545(36)
      abb545(32)=abb545(37)-abb545(32)
      abb545(37)=4.0_ki/3.0_ki*abb545(7)
      abb545(32)=abb545(32)*abb545(37)
      abb545(38)=abb545(6)*abb545(1)
      abb545(39)=abb545(38)*spbk7k1
      abb545(40)=abb545(39)*spbk6k3
      abb545(41)=abb545(17)*abb545(40)
      abb545(42)=abb545(21)*abb545(39)
      abb545(43)=abb545(42)*abb545(25)
      abb545(41)=abb545(41)-abb545(43)
      abb545(43)=abb545(41)*abb545(36)
      abb545(20)=-abb545(32)+abb545(20)-abb545(43)
      abb545(20)=abb545(20)*spak4k6
      abb545(32)=abb545(14)*spak4k5
      abb545(44)=abb545(32)*spak2k4
      abb545(45)=spak1k2*spbk3k1
      abb545(46)=abb545(45)*abb545(6)
      abb545(46)=spbk7k3-abb545(46)
      abb545(47)=4.0_ki/3.0_ki*abb545(10)
      abb545(46)=abb545(47)*abb545(44)*abb545(8)*spbk7k1*abb545(46)
      abb545(47)=abb545(15)*spak2k4
      abb545(48)=abb545(24)*spak2k4
      abb545(47)=abb545(47)-abb545(48)
      abb545(49)=abb545(32)*spbk7k1
      abb545(50)=abb545(49)*abb545(1)
      abb545(51)=spbk7k3*abb545(47)*abb545(50)
      abb545(52)=abb545(32)*abb545(39)
      abb545(53)=-abb545(52)*abb545(47)
      abb545(54)=abb545(53)*abb545(45)
      abb545(46)=abb545(46)+abb545(51)+abb545(54)
      abb545(46)=abb545(46)*spbk6k4
      abb545(51)=abb545(12)*spbk7k1
      abb545(29)=abb545(29)*abb545(51)
      abb545(55)=abb545(23)*abb545(13)
      abb545(33)=abb545(33)*abb545(55)
      abb545(56)=abb545(29)*abb545(33)
      abb545(57)=abb545(56)*abb545(45)
      abb545(27)=abb545(55)*abb545(27)
      abb545(55)=spak2k5*abb545(27)
      abb545(51)=abb545(51)*spbk6k3
      abb545(58)=abb545(55)*abb545(51)
      abb545(59)=abb545(58)*spbk7k3
      abb545(57)=abb545(57)-abb545(59)
      abb545(59)=gmul*abb545(7)
      abb545(57)=abb545(57)*abb545(59)
      abb545(31)=abb545(31)*spbk7k3
      abb545(60)=abb545(35)*abb545(45)
      abb545(31)=abb545(60)-abb545(31)
      abb545(60)=2.0_ki/3.0_ki*abb545(7)
      abb545(31)=abb545(31)*abb545(60)
      abb545(31)=abb545(57)-abb545(31)
      abb545(57)=2.0_ki*spak3k4
      abb545(31)=abb545(31)*abb545(57)
      abb545(14)=abb545(24)*abb545(14)
      abb545(61)=abb545(14)-abb545(16)
      abb545(62)=abb545(39)*spak2k4
      abb545(63)=-abb545(62)*abb545(61)
      abb545(64)=abb545(63)*abb545(45)
      abb545(65)=abb545(18)*spak2k4
      abb545(66)=abb545(65)*abb545(14)
      abb545(67)=abb545(16)*spak2k4
      abb545(68)=abb545(67)*abb545(18)
      abb545(66)=abb545(66)-abb545(68)
      abb545(69)=abb545(66)*spbk7k3
      abb545(64)=abb545(64)+abb545(69)
      abb545(69)=spak1k5*spbk6k1
      abb545(70)=spak5k7*spbk7k6
      abb545(71)=abb545(69)-abb545(70)
      abb545(64)=-abb545(64)*abb545(71)
      abb545(72)=abb545(49)*spak2k5
      abb545(73)=abb545(23)*abb545(6)
      abb545(74)=abb545(72)*abb545(73)
      abb545(75)=abb545(74)*abb545(45)
      abb545(76)=abb545(23)*spbk7k3
      abb545(77)=abb545(76)*abb545(72)
      abb545(75)=abb545(75)-abb545(77)
      abb545(77)=gel*abb545(10)
      abb545(75)=abb545(75)*abb545(77)
      abb545(72)=abb545(72)*abb545(8)
      abb545(78)=abb545(72)*spbk7k3
      abb545(72)=abb545(72)*abb545(6)
      abb545(79)=abb545(72)*abb545(45)
      abb545(78)=abb545(78)-abb545(79)
      abb545(79)=2.0_ki/3.0_ki*abb545(10)
      abb545(78)=abb545(78)*abb545(79)
      abb545(75)=abb545(75)+abb545(78)
      abb545(78)=2.0_ki*spbk6k5
      abb545(75)=abb545(75)*abb545(78)
      abb545(68)=abb545(68)*spbk6k3
      abb545(80)=abb545(22)*abb545(48)
      abb545(68)=abb545(68)-abb545(80)
      abb545(68)=abb545(68)*spbk7k3
      abb545(80)=abb545(67)*abb545(40)
      abb545(42)=abb545(42)*abb545(48)
      abb545(42)=abb545(80)-abb545(42)
      abb545(80)=abb545(42)*abb545(45)
      abb545(68)=abb545(68)-abb545(80)
      abb545(68)=abb545(68)*spak3k5
      abb545(80)=abb545(14)*spak2k5
      abb545(81)=abb545(80)-abb545(17)
      abb545(82)=-abb545(39)*abb545(81)
      abb545(83)=spbk6k1*abb545(82)*abb545(45)
      abb545(84)=abb545(80)*abb545(18)
      abb545(19)=abb545(84)-abb545(19)
      abb545(84)=abb545(19)*spbk7k6
      abb545(85)=abb545(84)*spbk3k1
      abb545(83)=abb545(83)+abb545(85)
      abb545(83)=abb545(83)*spak1k4
      abb545(62)=-abb545(62)*abb545(81)
      abb545(85)=abb545(62)*abb545(45)
      abb545(65)=-abb545(65)*abb545(81)
      abb545(86)=abb545(65)*spbk7k3
      abb545(85)=abb545(85)-abb545(86)
      abb545(85)=abb545(85)*spbk6k2
      abb545(86)=abb545(62)*abb545(36)
      abb545(65)=abb545(65)*spbk7k6
      abb545(65)=abb545(86)-abb545(65)
      abb545(65)=abb545(65)*spbk3k2
      abb545(86)=abb545(15)*spak2k5
      abb545(87)=abb545(25)-abb545(86)
      abb545(88)=-abb545(52)*abb545(87)
      abb545(89)=abb545(88)*abb545(36)
      abb545(90)=spbk7k6*abb545(87)*abb545(50)
      abb545(89)=abb545(89)+abb545(90)
      abb545(89)=abb545(89)*spbk5k3
      abb545(84)=abb545(84)*spbk7k3
      abb545(90)=abb545(82)*spbk7k3
      abb545(91)=abb545(90)*abb545(36)
      abb545(84)=abb545(84)+abb545(91)
      abb545(84)=abb545(84)*spak4k7
      abb545(91)=abb545(24)-abb545(15)
      abb545(92)=-spbk6k3*abb545(91)
      abb545(93)=-abb545(50)*abb545(92)
      abb545(94)=abb545(93)*spbk7k3
      abb545(52)=-abb545(52)*abb545(92)
      abb545(95)=abb545(52)*abb545(45)
      abb545(94)=abb545(94)-abb545(95)
      abb545(94)=abb545(94)*spak2k3
      abb545(95)=abb545(93)*spbk7k6
      abb545(96)=abb545(52)*abb545(36)
      abb545(95)=abb545(95)-abb545(96)
      abb545(95)=abb545(95)*spak2k6
      abb545(96)=-spak2k5*abb545(52)
      abb545(97)=abb545(96)*spbk5k1
      abb545(98)=-spak2k4*abb545(52)
      abb545(99)=abb545(98)*spbk4k1
      abb545(97)=abb545(99)-abb545(97)
      abb545(97)=spak1k2*abb545(97)
      abb545(99)=abb545(45)*abb545(73)
      abb545(76)=abb545(99)-abb545(76)
      abb545(99)=abb545(44)*spbk7k1
      abb545(100)=abb545(77)*spbk6k4
      abb545(101)=2.0_ki*abb545(100)
      abb545(76)=abb545(101)*abb545(76)*abb545(99)
      abb545(102)=abb545(12)*spak4k5
      abb545(103)=abb545(102)*spbk7k6
      abb545(104)=spbk7k1*abb545(55)*abb545(103)
      abb545(105)=abb545(33)*abb545(102)
      abb545(106)=abb545(105)*spbk7k1
      abb545(107)=abb545(106)*spak2k5
      abb545(108)=abb545(107)*abb545(36)
      abb545(104)=abb545(104)-abb545(108)
      abb545(108)=gnmul*abb545(5)
      abb545(109)=abb545(108)*spbk5k3
      abb545(109)=2.0_ki*abb545(109)
      abb545(104)=abb545(104)*abb545(109)
      abb545(110)=abb545(56)*abb545(36)
      abb545(58)=abb545(58)*spbk7k6
      abb545(58)=abb545(110)-abb545(58)
      abb545(110)=abb545(59)*spak4k6
      abb545(111)=2.0_ki*abb545(110)
      abb545(58)=abb545(58)*abb545(111)
      abb545(112)=abb545(73)*abb545(21)
      abb545(113)=spak2k4*spbk7k1
      abb545(114)=abb545(112)*abb545(113)
      abb545(115)=abb545(114)*abb545(45)
      abb545(116)=abb545(21)*abb545(23)
      abb545(117)=abb545(116)*abb545(113)
      abb545(118)=abb545(117)*spbk7k3
      abb545(115)=abb545(115)-abb545(118)
      abb545(118)=gnel*abb545(11)
      abb545(119)=2.0_ki*abb545(118)
      abb545(120)=abb545(119)*spak3k5
      abb545(115)=abb545(115)*abb545(120)
      abb545(121)=abb545(114)*abb545(36)
      abb545(117)=abb545(117)*spbk7k6
      abb545(117)=abb545(121)-abb545(117)
      abb545(121)=abb545(119)*spak5k6
      abb545(117)=abb545(117)*abb545(121)
      abb545(103)=abb545(27)*abb545(103)
      abb545(122)=abb545(103)*abb545(113)
      abb545(123)=abb545(105)*abb545(113)
      abb545(124)=abb545(123)*abb545(36)
      abb545(122)=abb545(122)-abb545(124)
      abb545(124)=abb545(108)*spbk4k3
      abb545(125)=2.0_ki*abb545(124)
      abb545(122)=abb545(122)*abb545(125)
      abb545(126)=abb545(44)*spbk7k4
      abb545(127)=abb545(92)*abb545(18)*abb545(126)
      abb545(128)=spbk7k5*abb545(93)*spak2k5
      abb545(20)=abb545(31)+abb545(75)-abb545(20)+abb545(46)+abb545(76)-abb545(&
      &127)-abb545(128)+abb545(94)-abb545(95)-abb545(104)+abb545(83)+abb545(117&
      &)+abb545(89)-abb545(84)-abb545(122)-abb545(85)+abb545(65)-abb545(58)-abb&
      &545(115)+abb545(68)+abb545(97)+abb545(64)
      abb545(31)=4.0_ki*es12*abb545(20)
      abb545(20)=8.0_ki*abb545(20)
      abb545(46)=spak4k7*spbk7k3
      abb545(58)=abb545(82)*abb545(46)
      abb545(64)=2.0_ki*abb545(33)
      abb545(65)=abb545(102)*abb545(108)*abb545(64)
      abb545(68)=abb545(65)*spbk4k3
      abb545(75)=abb545(68)*abb545(113)
      abb545(76)=abb545(62)*spbk3k2
      abb545(65)=abb545(65)*spbk5k3
      abb545(83)=abb545(65)*spak2k5
      abb545(84)=abb545(83)*spbk7k1
      abb545(85)=abb545(88)*spbk5k3
      abb545(89)=abb545(110)*abb545(64)
      abb545(29)=abb545(89)*abb545(29)
      abb545(94)=abb545(52)*spak2k6
      abb545(95)=abb545(114)*abb545(121)
      abb545(29)=-abb545(94)+abb545(29)-abb545(85)-abb545(84)-abb545(95)-abb545&
      &(76)+abb545(58)-abb545(75)
      abb545(58)=abb545(36)*abb545(29)
      abb545(75)=abb545(52)*spak2k3
      abb545(76)=abb545(63)*abb545(69)
      abb545(75)=abb545(75)+abb545(76)
      abb545(76)=2.0_ki*abb545(73)
      abb545(76)=abb545(100)*abb545(76)
      abb545(84)=abb545(76)*abb545(99)
      abb545(85)=abb545(63)*abb545(70)
      abb545(95)=abb545(62)*spbk6k2
      abb545(100)=abb545(42)*spak3k5
      abb545(104)=abb545(119)*abb545(112)*spak3k5
      abb545(110)=abb545(104)*abb545(113)
      abb545(84)=abb545(100)+abb545(95)-abb545(85)+abb545(110)-abb545(84)+abb54&
      &5(75)
      abb545(85)=abb545(56)*abb545(59)
      abb545(95)=abb545(34)*abb545(7)
      abb545(100)=abb545(30)*abb545(95)
      abb545(85)=-abb545(85)+2.0_ki/3.0_ki*abb545(100)
      abb545(85)=abb545(85)*abb545(57)
      abb545(110)=abb545(74)*abb545(77)
      abb545(113)=abb545(10)*abb545(6)
      abb545(115)=abb545(113)*abb545(49)
      abb545(117)=abb545(115)*abb545(86)
      abb545(110)=abb545(110)-abb545(117)
      abb545(110)=abb545(110)*abb545(78)
      abb545(85)=abb545(85)-abb545(110)
      abb545(110)=spak1k4*spbk6k1
      abb545(117)=-abb545(82)*abb545(110)
      abb545(117)=abb545(85)+abb545(117)+abb545(84)
      abb545(117)=abb545(45)*abb545(117)
      abb545(122)=4.0_ki/3.0_ki*abb545(8)
      abb545(127)=abb545(122)*abb545(113)
      abb545(128)=abb545(99)*abb545(127)
      abb545(129)=abb545(45)*abb545(128)
      abb545(54)=-abb545(54)+abb545(129)
      abb545(54)=spbk6k4*abb545(54)
      abb545(100)=4.0_ki/3.0_ki*abb545(100)
      abb545(129)=-abb545(36)*abb545(100)
      abb545(43)=-abb545(43)+abb545(129)
      abb545(43)=spak4k6*abb545(43)
      abb545(43)=abb545(43)+abb545(54)+abb545(58)-abb545(97)+abb545(117)
      abb545(43)=4.0_ki*abb545(43)
      abb545(54)=abb545(33)*spak2k5
      abb545(12)=abb545(12)*spbk6k3
      abb545(58)=abb545(54)*abb545(12)
      abb545(97)=es12*spbk6k1
      abb545(117)=abb545(97)*abb545(58)
      abb545(129)=abb545(27)*abb545(51)
      abb545(130)=abb545(69)*abb545(129)
      abb545(131)=spbk2k1*spbk7k6
      abb545(132)=abb545(131)*abb545(55)
      abb545(133)=-abb545(12)*abb545(132)
      abb545(117)=abb545(133)+abb545(117)+abb545(130)
      abb545(130)=2.0_ki*gmul
      abb545(117)=abb545(130)*abb545(7)*abb545(117)
      abb545(133)=abb545(24)*abb545(38)
      abb545(134)=abb545(133)*abb545(21)
      abb545(135)=abb545(134)*spak2k5
      abb545(136)=abb545(38)*spbk6k3
      abb545(137)=abb545(17)*abb545(136)
      abb545(135)=abb545(137)-abb545(135)
      abb545(137)=-abb545(135)*abb545(97)
      abb545(22)=abb545(22)*abb545(24)
      abb545(138)=abb545(18)*abb545(16)
      abb545(139)=abb545(138)*spbk6k3
      abb545(22)=abb545(22)-abb545(139)
      abb545(139)=abb545(22)*abb545(69)
      abb545(13)=abb545(13)*spbk6k3
      abb545(34)=abb545(34)*abb545(13)
      abb545(140)=-abb545(34)*abb545(97)
      abb545(141)=abb545(28)*abb545(30)
      abb545(142)=-abb545(69)*abb545(141)
      abb545(140)=abb545(140)+abb545(142)
      abb545(140)=abb545(140)*abb545(37)
      abb545(117)=abb545(117)+abb545(140)+abb545(137)+abb545(139)
      abb545(117)=spak4k6*abb545(117)
      abb545(137)=spak2k4*abb545(1)
      abb545(139)=abb545(137)*abb545(14)
      abb545(140)=abb545(67)*abb545(1)
      abb545(139)=abb545(139)-abb545(140)
      abb545(139)=abb545(139)*abb545(71)
      abb545(142)=abb545(32)*abb545(1)
      abb545(47)=-abb545(142)*abb545(47)
      abb545(143)=abb545(122)*abb545(10)
      abb545(144)=-abb545(44)*abb545(143)
      abb545(47)=abb545(47)+abb545(144)
      abb545(47)=spbk6k4*abb545(47)
      abb545(140)=-spbk6k3*abb545(140)
      abb545(144)=abb545(21)*abb545(1)
      abb545(48)=abb545(48)*abb545(144)
      abb545(48)=abb545(140)+abb545(48)
      abb545(48)=spak3k5*abb545(48)
      abb545(47)=abb545(47)+abb545(48)+abb545(139)
      abb545(47)=spbk7k3*abb545(47)
      abb545(17)=abb545(17)*abb545(1)
      abb545(48)=spbk6k3*abb545(17)
      abb545(25)=-abb545(25)*abb545(144)
      abb545(28)=abb545(13)*abb545(28)
      abb545(139)=spak2k5*abb545(37)*abb545(28)
      abb545(25)=abb545(139)+abb545(48)+abb545(25)
      abb545(25)=spak4k6*abb545(25)
      abb545(48)=abb545(80)*abb545(1)
      abb545(17)=abb545(48)-abb545(17)
      abb545(48)=spak1k4*spbk3k1
      abb545(80)=abb545(46)-abb545(48)
      abb545(17)=abb545(17)*abb545(80)
      abb545(87)=-spbk5k3*abb545(142)*abb545(87)
      abb545(17)=abb545(25)+abb545(87)+abb545(17)
      abb545(17)=spbk7k6*abb545(17)
      abb545(25)=abb545(32)*spak2k5
      abb545(87)=-spbk7k5*abb545(25)
      abb545(87)=abb545(126)+abb545(87)
      abb545(87)=abb545(87)*abb545(92)*abb545(1)
      abb545(17)=abb545(87)+abb545(17)+abb545(47)
      abb545(17)=spbk2k1*abb545(17)
      abb545(47)=abb545(112)*spak2k4
      abb545(87)=es12*spbk3k1
      abb545(126)=abb545(47)*abb545(87)
      abb545(139)=abb545(116)*spbk7k1
      abb545(140)=abb545(48)*abb545(139)
      abb545(144)=spak2k4*abb545(116)
      abb545(145)=spbk2k1*spbk7k3
      abb545(146)=-abb545(145)*abb545(144)
      abb545(126)=abb545(146)+abb545(126)+abb545(140)
      abb545(119)=abb545(119)*abb545(126)
      abb545(126)=abb545(134)*spak2k4
      abb545(140)=abb545(67)*abb545(136)
      abb545(126)=abb545(140)-abb545(126)
      abb545(140)=abb545(126)*abb545(87)
      abb545(22)=-abb545(22)*abb545(48)
      abb545(22)=abb545(119)+abb545(140)+abb545(22)
      abb545(22)=spak3k5*abb545(22)
      abb545(34)=abb545(34)*abb545(87)
      abb545(119)=spak1k5*spbk3k1
      abb545(140)=abb545(119)*abb545(141)
      abb545(141)=abb545(145)*spak2k5
      abb545(146)=-abb545(28)*abb545(141)
      abb545(34)=abb545(146)+abb545(34)+abb545(140)
      abb545(55)=abb545(145)*abb545(55)*abb545(12)
      abb545(58)=-abb545(87)*abb545(58)
      abb545(129)=-abb545(119)*abb545(129)
      abb545(55)=abb545(55)+abb545(58)+abb545(129)
      abb545(55)=gmul*abb545(55)
      abb545(34)=2.0_ki/3.0_ki*abb545(34)+abb545(55)
      abb545(34)=abb545(57)*abb545(7)*abb545(34)
      abb545(55)=abb545(38)*spak2k4
      abb545(58)=-abb545(55)*abb545(81)
      abb545(129)=abb545(58)*abb545(87)
      abb545(19)=-abb545(19)*abb545(48)
      abb545(137)=abb545(81)*abb545(137)
      abb545(140)=abb545(137)*abb545(145)
      abb545(19)=abb545(140)+abb545(129)+abb545(19)
      abb545(19)=spbk6k2*abb545(19)
      abb545(129)=-abb545(58)*abb545(97)
      abb545(66)=abb545(66)*abb545(69)
      abb545(137)=-abb545(137)*abb545(131)
      abb545(66)=abb545(137)+abb545(129)+abb545(66)
      abb545(66)=spbk3k2*abb545(66)
      abb545(129)=abb545(15)*abb545(38)
      abb545(129)=abb545(129)-abb545(133)
      abb545(133)=-abb545(129)-abb545(127)
      abb545(133)=spbk6k4*abb545(44)*abb545(133)
      abb545(55)=-abb545(55)*abb545(61)
      abb545(137)=abb545(55)*abb545(69)
      abb545(140)=-abb545(133)+abb545(137)
      abb545(140)=abb545(87)*abb545(140)
      abb545(146)=abb545(129)*abb545(32)
      abb545(147)=-spbk6k3*abb545(146)
      abb545(148)=-spak2k5*abb545(147)
      abb545(149)=abb545(148)*spbk5k1
      abb545(150)=-spak2k4*abb545(147)
      abb545(151)=abb545(150)*spbk4k1
      abb545(149)=abb545(149)-abb545(151)
      abb545(151)=es12*abb545(149)
      abb545(38)=abb545(61)*abb545(38)
      abb545(152)=-spak2k5*abb545(38)
      abb545(153)=-spbk6k1*abb545(152)*abb545(87)
      abb545(50)=abb545(91)*abb545(50)
      abb545(143)=abb545(49)*abb545(143)
      abb545(143)=-abb545(50)+abb545(143)
      abb545(154)=spbk6k4*spbk3k1
      abb545(143)=abb545(143)*abb545(154)
      abb545(143)=abb545(153)+abb545(143)
      abb545(143)=spak1k4*abb545(143)
      abb545(153)=-abb545(55)*abb545(87)
      abb545(18)=abb545(18)*abb545(14)
      abb545(18)=abb545(18)-abb545(138)
      abb545(138)=abb545(18)*abb545(48)
      abb545(138)=abb545(153)+abb545(138)
      abb545(138)=abb545(138)*abb545(70)
      abb545(153)=abb545(152)*abb545(97)
      abb545(18)=-abb545(18)*abb545(69)
      abb545(18)=abb545(153)+abb545(18)
      abb545(18)=abb545(18)*abb545(46)
      abb545(25)=-abb545(25)*abb545(129)
      abb545(129)=abb545(25)*abb545(97)
      abb545(50)=abb545(50)*abb545(69)
      abb545(50)=abb545(129)+abb545(50)
      abb545(50)=spbk5k3*abb545(50)
      abb545(129)=-abb545(49)*abb545(48)
      abb545(153)=abb545(44)*abb545(145)
      abb545(129)=abb545(153)+abb545(129)
      abb545(153)=spbk6k4*abb545(10)
      abb545(129)=abb545(153)*abb545(23)*abb545(129)
      abb545(153)=abb545(153)*abb545(73)
      abb545(155)=-abb545(44)*abb545(87)*abb545(153)
      abb545(129)=abb545(155)+abb545(129)
      abb545(155)=2.0_ki*gel
      abb545(129)=abb545(129)*abb545(155)
      abb545(156)=abb545(97)*abb545(105)
      abb545(157)=-spak2k5*abb545(156)
      abb545(158)=abb545(27)*abb545(102)
      abb545(159)=abb545(158)*spbk7k1
      abb545(160)=-abb545(69)*abb545(159)
      abb545(102)=abb545(132)*abb545(102)
      abb545(102)=abb545(102)+abb545(157)+abb545(160)
      abb545(108)=2.0_ki*abb545(108)
      abb545(102)=abb545(108)*spbk5k3*abb545(102)
      abb545(132)=abb545(119)*abb545(49)
      abb545(157)=abb545(32)*abb545(6)
      abb545(160)=spak2k5*abb545(157)*abb545(87)
      abb545(160)=abb545(160)+abb545(132)
      abb545(160)=abb545(10)*abb545(160)
      abb545(161)=abb545(32)*abb545(10)
      abb545(141)=abb545(141)*abb545(161)
      abb545(160)=abb545(160)-abb545(141)
      abb545(160)=abb545(8)*abb545(160)
      abb545(162)=abb545(157)*abb545(23)
      abb545(163)=abb545(162)*spak2k5
      abb545(164)=-abb545(87)*abb545(163)
      abb545(132)=-abb545(23)*abb545(132)
      abb545(132)=abb545(164)+abb545(132)
      abb545(132)=abb545(10)*abb545(132)
      abb545(141)=abb545(23)*abb545(141)
      abb545(132)=abb545(132)+abb545(141)
      abb545(132)=gel*abb545(132)
      abb545(132)=2.0_ki/3.0_ki*abb545(160)+abb545(132)
      abb545(132)=abb545(132)*abb545(78)
      abb545(141)=-abb545(147)*abb545(97)
      abb545(92)=-abb545(32)*abb545(92)
      abb545(160)=abb545(92)*abb545(1)
      abb545(164)=abb545(160)*abb545(131)
      abb545(141)=abb545(141)+abb545(164)
      abb545(141)=spak2k6*abb545(141)
      abb545(164)=abb545(147)*abb545(87)
      abb545(145)=-abb545(160)*abb545(145)
      abb545(145)=abb545(164)+abb545(145)
      abb545(145)=spak2k3*abb545(145)
      abb545(97)=-abb545(47)*abb545(97)
      abb545(139)=-abb545(110)*abb545(139)
      abb545(131)=abb545(131)*abb545(144)
      abb545(97)=abb545(131)+abb545(97)+abb545(139)
      abb545(97)=abb545(97)*abb545(121)
      abb545(131)=-spak2k4*abb545(156)
      abb545(139)=-abb545(110)*abb545(159)
      abb545(144)=spbk2k1*spak2k4
      abb545(103)=abb545(103)*abb545(144)
      abb545(103)=abb545(103)+abb545(131)+abb545(139)
      abb545(103)=abb545(103)*abb545(125)
      abb545(131)=es234-es567
      abb545(131)=-es12+es71-2.0_ki*abb545(131)
      abb545(93)=-abb545(93)*abb545(131)
      abb545(17)=abb545(103)+abb545(97)+abb545(145)+abb545(141)+abb545(66)+abb5&
      &45(19)+abb545(34)+abb545(132)+abb545(102)+abb545(129)+abb545(50)+abb545(&
      &18)+abb545(138)+abb545(143)+abb545(93)+abb545(17)+abb545(151)+abb545(140&
      &)+abb545(22)+abb545(117)
      abb545(17)=4.0_ki*abb545(17)
      abb545(18)=abb545(25)*spbk5k3
      abb545(19)=abb545(147)*spak2k6
      abb545(22)=abb545(46)*abb545(152)
      abb545(25)=abb545(152)*abb545(48)
      abb545(18)=-abb545(19)+abb545(18)+abb545(22)-abb545(25)
      abb545(19)=abb545(95)*abb545(13)
      abb545(22)=abb545(135)+4.0_ki/3.0_ki*abb545(19)
      abb545(22)=abb545(22)*spak4k6
      abb545(34)=abb545(58)*spbk3k2
      abb545(50)=abb545(68)*spak2k4
      abb545(66)=abb545(59)*abb545(12)
      abb545(64)=abb545(64)*abb545(66)*spak4k6
      abb545(93)=spak2k5*abb545(64)
      abb545(95)=abb545(121)*abb545(47)
      abb545(34)=abb545(22)+abb545(83)+abb545(50)+abb545(95)+abb545(34)-abb545(&
      &93)-abb545(18)
      abb545(50)=spbk6k1*abb545(34)
      abb545(83)=abb545(126)*spak3k5
      abb545(93)=abb545(147)*spak2k3
      abb545(95)=abb545(55)*abb545(70)
      abb545(83)=-abb545(93)-abb545(83)+abb545(95)-abb545(137)
      abb545(54)=abb545(66)*abb545(54)
      abb545(54)=-abb545(54)+2.0_ki/3.0_ki*abb545(19)
      abb545(54)=abb545(54)*abb545(57)
      abb545(93)=abb545(157)*abb545(10)
      abb545(86)=abb545(93)*abb545(86)
      abb545(95)=abb545(162)*abb545(77)
      abb545(97)=abb545(95)*spak2k5
      abb545(86)=abb545(86)-abb545(97)
      abb545(86)=abb545(86)*abb545(78)
      abb545(97)=abb545(76)*abb545(44)
      abb545(102)=abb545(58)*spbk6k2
      abb545(103)=abb545(104)*spak2k4
      abb545(54)=-abb545(86)-abb545(54)+abb545(133)-abb545(103)+abb545(97)-abb5&
      &45(102)+abb545(83)
      abb545(86)=spbk3k1*abb545(54)
      abb545(50)=abb545(86)+abb545(50)-abb545(149)
      abb545(86)=8.0_ki*abb545(50)
      abb545(50)=-16.0_ki*abb545(50)
      abb545(34)=spbk7k6*abb545(34)
      abb545(54)=spbk7k3*abb545(54)
      abb545(97)=abb545(148)*spbk7k5
      abb545(102)=abb545(150)*spbk7k4
      abb545(34)=-abb545(97)+abb545(102)+abb545(54)+abb545(34)
      abb545(54)=4.0_ki*abb545(34)
      abb545(97)=abb545(136)*abb545(16)
      abb545(97)=abb545(97)-abb545(134)
      abb545(102)=abb545(97)*spak3k5
      abb545(101)=abb545(101)*abb545(162)
      abb545(101)=abb545(104)+abb545(102)-abb545(101)
      abb545(102)=abb545(152)*spbk6k2
      abb545(102)=abb545(102)+abb545(101)
      abb545(103)=-spbk3k1*abb545(102)
      abb545(117)=-spbk7k3*spbk6k1
      abb545(126)=spbk7k6*spbk3k1
      abb545(117)=abb545(117)+abb545(126)
      abb545(117)=spak5k7*abb545(117)
      abb545(126)=-spbk3k1*abb545(69)
      abb545(117)=abb545(117)+abb545(126)
      abb545(117)=-abb545(38)*abb545(117)
      abb545(126)=abb545(93)*abb545(122)
      abb545(126)=abb545(126)+abb545(146)
      abb545(129)=abb545(126)*abb545(154)
      abb545(132)=abb545(121)*abb545(112)
      abb545(68)=abb545(132)+abb545(68)
      abb545(132)=spbk6k1*abb545(68)
      abb545(134)=-spbk4k1*abb545(147)
      abb545(103)=abb545(134)+abb545(103)+abb545(132)-abb545(129)+abb545(117)
      abb545(103)=spak4k7*abb545(103)
      abb545(117)=-abb545(146)*spbk5k3
      abb545(64)=-abb545(65)+abb545(64)+abb545(117)
      abb545(26)=abb545(7)*abb545(26)
      abb545(13)=abb545(26)*abb545(13)
      abb545(97)=abb545(97)+4.0_ki/3.0_ki*abb545(13)
      abb545(97)=abb545(97)*spak4k6
      abb545(55)=abb545(55)*spbk3k2
      abb545(55)=abb545(97)+abb545(55)-abb545(64)
      abb545(117)=-abb545(38)*abb545(48)
      abb545(117)=abb545(117)+abb545(55)
      abb545(117)=spbk6k1*abb545(117)
      abb545(132)=spbk5k1*abb545(147)
      abb545(117)=abb545(132)+abb545(117)
      abb545(117)=spak5k7*abb545(117)
      abb545(66)=abb545(66)*abb545(33)
      abb545(13)=-abb545(66)+2.0_ki/3.0_ki*abb545(13)
      abb545(66)=abb545(13)*abb545(57)
      abb545(132)=abb545(93)*abb545(15)
      abb545(95)=abb545(132)-abb545(95)
      abb545(132)=abb545(95)*abb545(78)
      abb545(66)=abb545(66)+abb545(132)
      abb545(132)=-abb545(66)*spak5k7*spbk3k1
      abb545(134)=spak6k7*spbk6k1
      abb545(135)=-spak3k7*spbk3k1
      abb545(134)=abb545(135)+abb545(134)
      abb545(134)=abb545(147)*abb545(134)
      abb545(103)=abb545(103)+abb545(117)+abb545(134)+abb545(132)
      abb545(103)=4.0_ki*abb545(103)
      abb545(117)=-es12*abb545(41)
      abb545(132)=spbk7k1**2
      abb545(134)=abb545(132)*abb545(1)
      abb545(135)=abb545(24)*abb545(134)*abb545(21)
      abb545(136)=abb545(134)*abb545(16)
      abb545(138)=abb545(136)*spbk6k3
      abb545(135)=abb545(135)-abb545(138)
      abb545(138)=-spak1k5*abb545(135)
      abb545(35)=abb545(35)*es12
      abb545(139)=abb545(132)*spak1k5
      abb545(28)=abb545(28)*abb545(139)
      abb545(28)=abb545(35)-abb545(28)
      abb545(35)=-abb545(28)*abb545(37)
      abb545(35)=abb545(35)+abb545(117)+abb545(138)
      abb545(35)=spak4k6*abb545(35)
      abb545(37)=-abb545(82)*abb545(87)
      abb545(14)=abb545(134)*abb545(14)
      abb545(87)=abb545(14)-abb545(136)
      abb545(117)=-abb545(87)*abb545(119)
      abb545(37)=abb545(37)+abb545(117)
      abb545(37)=spak1k4*abb545(37)
      abb545(90)=es12*abb545(90)
      abb545(117)=spak1k5*spbk7k3*abb545(87)
      abb545(90)=abb545(90)+abb545(117)
      abb545(90)=spak4k7*abb545(90)
      abb545(88)=-es12*abb545(88)
      abb545(91)=abb545(91)*abb545(132)*abb545(142)
      abb545(117)=-spak1k5*abb545(91)
      abb545(88)=abb545(88)+abb545(117)
      abb545(88)=spbk5k3*abb545(88)
      abb545(27)=abb545(12)*abb545(139)*abb545(27)
      abb545(56)=abb545(56)*es12
      abb545(27)=abb545(27)-abb545(56)
      abb545(56)=-abb545(27)*abb545(111)
      abb545(62)=abb545(62)*es12
      abb545(67)=abb545(67)*abb545(134)
      abb545(14)=-spak2k4*abb545(14)
      abb545(14)=abb545(67)+abb545(14)
      abb545(14)=spak1k5*abb545(14)
      abb545(14)=-abb545(62)+abb545(14)
      abb545(14)=spbk3k2*abb545(14)
      abb545(67)=-es12*abb545(107)
      abb545(107)=abb545(139)*abb545(158)
      abb545(67)=abb545(67)+abb545(107)
      abb545(67)=abb545(67)*abb545(109)
      abb545(94)=-es12*abb545(94)
      abb545(107)=abb545(114)*es12
      abb545(109)=abb545(132)*spak1k4
      abb545(111)=abb545(109)*abb545(116)
      abb545(107)=abb545(107)-abb545(111)
      abb545(111)=-abb545(107)*abb545(121)
      abb545(114)=-es12*abb545(123)
      abb545(116)=abb545(158)*abb545(109)
      abb545(114)=abb545(114)+abb545(116)
      abb545(114)=abb545(114)*abb545(125)
      abb545(92)=-abb545(134)*abb545(92)
      abb545(116)=-spak1k6*abb545(92)
      abb545(14)=abb545(116)+abb545(114)+abb545(111)+abb545(94)+abb545(14)+abb5&
      &45(67)+abb545(56)+abb545(88)+abb545(90)+abb545(35)+abb545(37)
      abb545(14)=4.0_ki*abb545(14)
      abb545(35)=abb545(100)+abb545(41)
      abb545(35)=abb545(35)*spak4k6
      abb545(37)=abb545(82)*abb545(48)
      abb545(29)=abb545(35)+abb545(37)-abb545(29)
      abb545(35)=8.0_ki*abb545(29)
      abb545(29)=-4.0_ki*abb545(29)
      abb545(18)=abb545(22)-abb545(18)
      abb545(18)=spbk2k1*abb545(18)
      abb545(22)=-abb545(39)*abb545(61)
      abb545(37)=abb545(22)*abb545(46)
      abb545(41)=abb545(39)*abb545(15)
      abb545(24)=abb545(39)*abb545(24)
      abb545(39)=abb545(24)-abb545(41)
      abb545(39)=abb545(32)*abb545(39)
      abb545(41)=abb545(39)*spbk5k3
      abb545(37)=abb545(37)+abb545(41)
      abb545(21)=abb545(24)*abb545(21)
      abb545(16)=abb545(40)*abb545(16)
      abb545(16)=abb545(21)-abb545(16)
      abb545(21)=abb545(26)*abb545(30)
      abb545(24)=-abb545(16)+4.0_ki/3.0_ki*abb545(21)
      abb545(24)=abb545(24)*spak4k6
      abb545(26)=-abb545(22)*abb545(48)
      abb545(26)=abb545(37)-abb545(24)+abb545(26)
      abb545(26)=spak5k7*abb545(26)
      abb545(30)=abb545(58)*spbk2k1
      abb545(40)=-spak5k7*abb545(63)
      abb545(40)=abb545(40)+abb545(30)
      abb545(40)=spbk3k2*abb545(40)
      abb545(41)=spbk2k1*spak2k5
      abb545(12)=abb545(12)*abb545(41)
      abb545(56)=spak5k7*abb545(51)
      abb545(12)=abb545(56)-abb545(12)
      abb545(12)=abb545(12)*abb545(33)*abb545(7)
      abb545(56)=abb545(130)*spak4k6*abb545(12)
      abb545(58)=-spak5k7*abb545(106)
      abb545(61)=abb545(105)*abb545(41)
      abb545(58)=abb545(58)+abb545(61)
      abb545(58)=abb545(108)*spbk5k3*abb545(58)
      abb545(61)=spak4k7*spbk7k1
      abb545(67)=-abb545(112)*abb545(61)
      abb545(47)=spbk2k1*abb545(47)
      abb545(47)=abb545(67)+abb545(47)
      abb545(47)=abb545(47)*abb545(121)
      abb545(67)=-spak4k7*abb545(106)
      abb545(88)=abb545(105)*abb545(144)
      abb545(67)=abb545(67)+abb545(88)
      abb545(67)=abb545(67)*abb545(125)
      abb545(88)=-spak6k7*abb545(52)
      abb545(18)=abb545(88)+abb545(67)+abb545(47)+abb545(40)+abb545(58)+abb545(&
      &56)+abb545(26)+abb545(18)
      abb545(18)=4.0_ki*abb545(18)
      abb545(26)=es12*abb545(96)
      abb545(40)=-spak1k5*abb545(92)
      abb545(26)=abb545(26)+abb545(40)
      abb545(26)=4.0_ki*abb545(26)
      abb545(40)=8.0_ki*abb545(96)
      abb545(47)=4.0_ki*abb545(96)
      abb545(56)=-spak5k7*abb545(52)
      abb545(58)=-spbk2k1*abb545(148)
      abb545(56)=abb545(56)+abb545(58)
      abb545(56)=4.0_ki*abb545(56)
      abb545(58)=-es12*abb545(98)
      abb545(67)=spak1k4*abb545(92)
      abb545(58)=abb545(58)+abb545(67)
      abb545(58)=4.0_ki*abb545(58)
      abb545(67)=8.0_ki*abb545(98)
      abb545(88)=-4.0_ki*abb545(98)
      abb545(90)=spak4k7*abb545(52)
      abb545(94)=spbk2k1*abb545(150)
      abb545(90)=abb545(90)+abb545(94)
      abb545(90)=4.0_ki*abb545(90)
      abb545(53)=abb545(128)-abb545(53)
      abb545(53)=abb545(53)*spbk6k4
      abb545(75)=abb545(53)+abb545(75)
      abb545(75)=es12*abb545(75)
      abb545(94)=-abb545(132)*abb545(161)*abb545(122)
      abb545(91)=abb545(94)+abb545(91)
      abb545(91)=spbk6k4*abb545(91)
      abb545(94)=abb545(87)*abb545(69)
      abb545(91)=abb545(94)+abb545(91)
      abb545(91)=spak1k4*abb545(91)
      abb545(94)=-es12*abb545(63)
      abb545(87)=-spak1k4*abb545(87)
      abb545(87)=abb545(94)+abb545(87)
      abb545(87)=abb545(87)*abb545(70)
      abb545(42)=es12*abb545(42)
      abb545(94)=spak1k4*abb545(135)
      abb545(42)=abb545(42)+abb545(94)
      abb545(42)=spak3k5*abb545(42)
      abb545(94)=-es12*abb545(99)*abb545(153)
      abb545(96)=spbk6k4*abb545(109)*abb545(161)*abb545(23)
      abb545(94)=abb545(94)+abb545(96)
      abb545(94)=abb545(94)*abb545(155)
      abb545(72)=es12*abb545(72)
      abb545(32)=abb545(139)*abb545(32)
      abb545(96)=-abb545(8)*abb545(32)
      abb545(72)=abb545(72)+abb545(96)
      abb545(72)=abb545(72)*abb545(79)
      abb545(74)=-es12*abb545(74)
      abb545(23)=abb545(23)*abb545(32)
      abb545(23)=abb545(74)+abb545(23)
      abb545(23)=abb545(23)*abb545(77)
      abb545(23)=abb545(72)+abb545(23)
      abb545(23)=abb545(23)*abb545(78)
      abb545(27)=abb545(27)*abb545(59)
      abb545(28)=abb545(28)*abb545(60)
      abb545(27)=abb545(28)+abb545(27)
      abb545(27)=abb545(27)*abb545(57)
      abb545(28)=spak1k4*abb545(134)*abb545(81)
      abb545(28)=abb545(62)+abb545(28)
      abb545(28)=spbk6k2*abb545(28)
      abb545(32)=abb545(107)*abb545(120)
      abb545(60)=spak1k3*abb545(92)
      abb545(23)=abb545(60)+abb545(28)+abb545(27)+abb545(23)+abb545(32)+abb545(&
      &94)+abb545(42)+abb545(87)+abb545(91)+abb545(75)
      abb545(23)=4.0_ki*abb545(23)
      abb545(27)=abb545(53)+abb545(84)+abb545(85)
      abb545(28)=8.0_ki*abb545(27)
      abb545(27)=4.0_ki*abb545(27)
      abb545(32)=abb545(133)+abb545(83)
      abb545(32)=spbk2k1*abb545(32)
      abb545(42)=abb545(22)*abb545(70)
      abb545(16)=abb545(16)*spak3k5
      abb545(16)=abb545(42)+abb545(16)
      abb545(42)=abb545(127)*abb545(49)
      abb545(39)=abb545(42)-abb545(39)
      abb545(39)=abb545(39)*spbk6k4
      abb545(42)=abb545(22)*abb545(69)
      abb545(42)=abb545(42)+abb545(39)-abb545(16)
      abb545(42)=spak4k7*abb545(42)
      abb545(53)=abb545(49)*spak5k7
      abb545(60)=abb545(53)*abb545(113)
      abb545(41)=-abb545(93)*abb545(41)
      abb545(41)=abb545(60)+abb545(41)
      abb545(41)=abb545(8)*abb545(41)
      abb545(53)=-abb545(53)*abb545(73)
      abb545(60)=spbk2k1*abb545(163)
      abb545(53)=abb545(53)+abb545(60)
      abb545(53)=gel*abb545(10)*abb545(53)
      abb545(41)=2.0_ki/3.0_ki*abb545(41)+abb545(53)
      abb545(41)=abb545(41)*abb545(78)
      abb545(53)=spak5k7*abb545(21)
      abb545(19)=-spbk2k1*abb545(19)
      abb545(19)=abb545(53)+abb545(19)
      abb545(12)=-gmul*abb545(12)
      abb545(12)=2.0_ki/3.0_ki*abb545(19)+abb545(12)
      abb545(12)=abb545(12)*abb545(57)
      abb545(19)=spak4k7*abb545(82)
      abb545(19)=abb545(19)-abb545(30)
      abb545(19)=spbk6k2*abb545(19)
      abb545(30)=-spak4k7*abb545(49)
      abb545(44)=spbk2k1*abb545(44)
      abb545(30)=abb545(30)+abb545(44)
      abb545(30)=abb545(155)*abb545(153)*abb545(30)
      abb545(44)=abb545(61)-abb545(144)
      abb545(44)=abb545(44)*abb545(104)
      abb545(53)=spak3k7*abb545(52)
      abb545(12)=abb545(53)+abb545(19)+abb545(12)+abb545(41)+abb545(44)+abb545(&
      &30)+abb545(32)+abb545(42)
      abb545(12)=4.0_ki*abb545(12)
      abb545(19)=abb545(63)*spbk3k2
      abb545(30)=abb545(65)*spbk7k1
      abb545(32)=abb545(89)*abb545(51)
      abb545(19)=abb545(24)+abb545(19)+abb545(30)-abb545(32)-abb545(37)
      abb545(24)=abb545(36)*spak1k5
      abb545(30)=-abb545(24)*abb545(19)
      abb545(32)=abb545(76)*abb545(49)
      abb545(37)=abb545(82)*spbk6k2
      abb545(41)=abb545(104)*spbk7k1
      abb545(16)=abb545(39)+abb545(41)-abb545(32)+abb545(37)-abb545(16)
      abb545(32)=abb545(45)*abb545(16)
      abb545(36)=-abb545(36)*spbk7k1*abb545(68)
      abb545(32)=abb545(36)+abb545(32)
      abb545(32)=spak1k4*abb545(32)
      abb545(36)=abb545(49)*abb545(77)*abb545(73)
      abb545(15)=abb545(115)*abb545(15)
      abb545(15)=abb545(36)-abb545(15)
      abb545(36)=-abb545(78)*abb545(15)
      abb545(33)=abb545(33)*abb545(51)*abb545(59)
      abb545(21)=abb545(33)-2.0_ki/3.0_ki*abb545(21)
      abb545(33)=-abb545(57)*abb545(21)
      abb545(33)=abb545(33)+abb545(36)
      abb545(33)=abb545(33)*abb545(45)*spak1k5
      abb545(36)=abb545(52)*spak1k2
      abb545(37)=-abb545(36)*abb545(131)
      abb545(30)=abb545(32)+abb545(37)+abb545(33)+abb545(30)
      abb545(30)=4.0_ki*abb545(30)
      abb545(32)=8.0_ki*abb545(34)
      abb545(33)=8.0_ki*abb545(36)
      abb545(19)=spak1k2*abb545(19)
      abb545(34)=spak1k4*abb545(22)*abb545(45)
      abb545(19)=abb545(34)+abb545(19)
      abb545(19)=4.0_ki*abb545(19)
      abb545(15)=spbk6k5*abb545(15)
      abb545(21)=spak3k4*abb545(21)
      abb545(15)=abb545(15)+abb545(21)
      abb545(15)=8.0_ki*spak1k2*abb545(15)
      abb545(21)=spak5k6*abb545(118)*abb545(112)
      abb545(34)=spbk7k1*abb545(21)
      abb545(36)=abb545(124)*abb545(106)
      abb545(34)=abb545(34)+abb545(36)
      abb545(34)=8.0_ki*spak1k2*abb545(34)
      abb545(16)=-spak1k2*abb545(16)
      abb545(22)=-abb545(22)*abb545(24)
      abb545(16)=abb545(22)+abb545(16)
      abb545(16)=4.0_ki*abb545(16)
      abb545(22)=abb545(38)*abb545(46)
      abb545(22)=abb545(97)+abb545(22)-abb545(64)
      abb545(22)=abb545(69)*abb545(22)
      abb545(24)=-abb545(119)*abb545(66)
      abb545(36)=-abb545(38)*abb545(70)
      abb545(36)=abb545(36)-abb545(101)
      abb545(36)=abb545(48)*abb545(36)
      abb545(37)=abb545(110)*abb545(68)
      abb545(39)=abb545(147)*abb545(131)
      abb545(41)=-spak1k4*abb545(129)
      abb545(25)=-spbk6k2*abb545(25)
      abb545(42)=spbk3k2*abb545(137)
      abb545(22)=abb545(42)+abb545(25)+abb545(41)+abb545(39)+abb545(36)+abb545(&
      &37)+abb545(24)+abb545(22)
      abb545(22)=4.0_ki*abb545(22)
      abb545(24)=8.0_ki*abb545(147)
      abb545(25)=-abb545(38)*abb545(80)
      abb545(25)=abb545(25)-abb545(55)
      abb545(25)=4.0_ki*abb545(25)
      abb545(36)=spbk6k5*abb545(95)
      abb545(13)=spak3k4*abb545(13)
      abb545(13)=abb545(36)+abb545(13)
      abb545(13)=8.0_ki*abb545(13)
      abb545(36)=-abb545(105)*abb545(124)
      abb545(21)=-abb545(21)+abb545(36)
      abb545(21)=8.0_ki*abb545(21)
      abb545(36)=-abb545(38)*abb545(71)
      abb545(37)=spbk6k4*abb545(126)
      abb545(36)=abb545(37)+abb545(36)+abb545(102)
      abb545(36)=4.0_ki*abb545(36)
      R2d545=0.0_ki
      rat2 = rat2 + R2d545
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='545' value='", &
          & R2d545, "'/>"
      end if
   end subroutine
end module p4_ubaru_epnemumnmubarg_abbrevd545h2
