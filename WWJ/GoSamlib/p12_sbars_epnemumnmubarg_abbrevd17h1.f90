module     p12_sbars_epnemumnmubarg_abbrevd17h1
   use p12_sbars_epnemumnmubarg_config, only: ki
   use p12_sbars_epnemumnmubarg_globalsh1
   implicit none
   private
   complex(ki), dimension(135), public :: abb17
   complex(ki), public :: R2d17
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p12_sbars_epnemumnmubarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_color, only: TR
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      implicit none
      abb17(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb17(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb17(3)=sqrt2**(-1)
      abb17(4)=es12**(-1)
      abb17(5)=spak2k7**(-1)
      abb17(6)=c1*Nfrat*abb17(3)*abb17(2)*gW**4*i_*TR
      abb17(7)=abb17(5)*abb17(1)
      abb17(8)=abb17(6)*abb17(7)*abb17(4)
      abb17(9)=abb17(8)*spbk7k6
      abb17(10)=abb17(9)*spak1k4
      abb17(11)=abb17(10)*spbk3k2
      abb17(12)=abb17(11)*spak2k5
      abb17(13)=abb17(8)*spak1k2
      abb17(14)=abb17(13)*spbk7k2
      abb17(15)=abb17(14)*spbk6k3
      abb17(16)=abb17(15)*spak4k5
      abb17(12)=abb17(12)-abb17(16)
      abb17(17)=abb17(8)*spbk7k3
      abb17(18)=spak2k4*spbk6k2
      abb17(19)=spak1k5*abb17(18)*abb17(17)
      abb17(20)=-5.0_ki/3.0_ki*abb17(19)+abb17(12)
      abb17(20)=8.0_ki*abb17(20)
      abb17(21)=spak4k5*spbk3k2
      abb17(22)=abb17(14)*abb17(21)
      abb17(23)=spbk6k5*spak2k5
      abb17(24)=abb17(22)*abb17(23)
      abb17(25)=spbk3k2*spak1k2
      abb17(26)=abb17(25)*abb17(9)
      abb17(27)=abb17(26)*spak4k7
      abb17(28)=spak2k5*spbk7k2
      abb17(29)=abb17(27)*abb17(28)
      abb17(24)=abb17(24)-abb17(29)
      abb17(29)=abb17(26)*spak4k5
      abb17(30)=es712-es71
      abb17(31)=-abb17(29)*abb17(30)
      abb17(32)=abb17(7)*spbk7k6
      abb17(33)=abb17(32)*abb17(6)
      abb17(34)=spak1k2*abb17(33)
      abb17(35)=abb17(34)*abb17(21)
      abb17(31)=abb17(31)+abb17(35)
      abb17(36)=abb17(31)+abb17(24)
      abb17(36)=32.0_ki*abb17(36)
      abb17(37)=32.0_ki*abb17(31)
      abb17(31)=8.0_ki*abb17(31)
      abb17(38)=spak5k7*spbk7k3
      abb17(39)=spak5k6*spbk6k3
      abb17(40)=abb17(38)+abb17(39)
      abb17(41)=abb17(10)*abb17(40)
      abb17(42)=abb17(30)*abb17(41)
      abb17(43)=abb17(6)*spak1k4
      abb17(44)=abb17(43)*abb17(32)
      abb17(45)=abb17(40)*abb17(44)
      abb17(42)=abb17(42)-abb17(45)
      abb17(45)=32.0_ki*abb17(42)
      abb17(46)=abb17(16)+abb17(29)
      abb17(46)=8.0_ki*abb17(19)+8.0_ki*abb17(46)
      abb17(47)=abb17(8)*spak1k4
      abb17(48)=abb17(47)*spbk6k3
      abb17(49)=abb17(48)*spbk7k2
      abb17(50)=abb17(11)-abb17(49)
      abb17(51)=8.0_ki*spak2k5
      abb17(50)=abb17(50)*abb17(51)
      abb17(50)=-abb17(50)+abb17(41)+abb17(46)
      abb17(51)=4.0_ki*abb17(50)
      abb17(42)=30.0_ki*abb17(42)
      abb17(52)=-8.0_ki*abb17(11)+7.0_ki*abb17(49)
      abb17(52)=abb17(52)*spak2k5
      abb17(46)=abb17(52)+abb17(46)
      abb17(52)=4.0_ki*abb17(46)
      abb17(53)=2.0_ki*abb17(44)
      abb17(54)=-abb17(53)*abb17(40)
      abb17(41)=abb17(41)-abb17(29)
      abb17(55)=abb17(41)*abb17(30)
      abb17(24)=abb17(35)+abb17(55)+abb17(54)+abb17(24)
      abb17(24)=16.0_ki*abb17(24)
      abb17(12)=abb17(12)-abb17(19)
      abb17(35)=-32.0_ki*abb17(12)
      abb17(11)=abb17(11)+abb17(49)
      abb17(11)=abb17(11)*spak2k5
      abb17(11)=-abb17(16)+abb17(11)-abb17(19)
      abb17(16)=-abb17(29)-abb17(11)
      abb17(16)=16.0_ki*abb17(16)
      abb17(11)=abb17(29)-2.0_ki*abb17(11)
      abb17(11)=8.0_ki*abb17(11)
      abb17(19)=2.0_ki*abb17(50)
      abb17(29)=2.0_ki*abb17(46)
      abb17(12)=-16.0_ki*abb17(12)
      abb17(46)=-abb17(10)*abb17(28)
      abb17(50)=abb17(21)*abb17(13)
      abb17(54)=abb17(30)*abb17(50)
      abb17(55)=abb17(6)*spbk3k2
      abb17(56)=abb17(7)*spak1k2
      abb17(57)=abb17(55)*abb17(56)
      abb17(58)=abb17(57)*spak4k5
      abb17(54)=abb17(54)-abb17(58)
      abb17(58)=12.0_ki*spbk6k5*abb17(54)
      abb17(59)=-abb17(48)*abb17(30)
      abb17(60)=abb17(6)*spbk6k3
      abb17(61)=abb17(7)*spak1k4
      abb17(62)=abb17(60)*abb17(61)
      abb17(63)=abb17(59)+abb17(62)
      abb17(63)=24.0_ki*abb17(63)
      abb17(64)=abb17(50)*spbk6k5
      abb17(59)=abb17(64)-2.0_ki*abb17(62)-abb17(59)
      abb17(59)=12.0_ki*abb17(59)
      abb17(62)=abb17(30)*abb17(26)
      abb17(65)=abb17(34)*spbk3k2
      abb17(62)=abb17(62)-abb17(65)
      abb17(66)=4.0_ki*spak4k6
      abb17(67)=abb17(62)*abb17(66)
      abb17(54)=spbk7k5*abb17(54)
      abb17(54)=abb17(67)+abb17(54)
      abb17(54)=4.0_ki*abb17(54)
      abb17(67)=abb17(47)*spbk7k3
      abb17(68)=-abb17(67)*abb17(30)
      abb17(69)=abb17(6)*spbk7k3
      abb17(61)=abb17(69)*abb17(61)
      abb17(70)=abb17(68)+abb17(61)
      abb17(71)=-8.0_ki*abb17(70)
      abb17(70)=-6.0_ki*abb17(70)
      abb17(72)=abb17(26)*abb17(66)
      abb17(73)=spbk7k5*abb17(50)
      abb17(61)=abb17(73)+abb17(72)-2.0_ki*abb17(61)-abb17(68)
      abb17(61)=4.0_ki*abb17(61)
      abb17(68)=-abb17(10)*abb17(30)
      abb17(44)=abb17(68)+abb17(44)
      abb17(44)=24.0_ki*abb17(44)
      abb17(68)=-abb17(53)-abb17(68)
      abb17(72)=spbk7k2*abb17(47)*abb17(23)
      abb17(68)=11.0_ki*abb17(68)+abb17(72)
      abb17(72)=abb17(9)*spak5k7
      abb17(73)=abb17(72)*abb17(25)
      abb17(74)=-abb17(73)*abb17(30)
      abb17(65)=spak5k7*abb17(65)
      abb17(65)=abb17(65)+abb17(74)
      abb17(65)=3.0_ki*abb17(65)
      abb17(73)=-3.0_ki*abb17(73)
      abb17(74)=abb17(13)*spbk3k2
      abb17(75)=-abb17(74)*abb17(30)
      abb17(57)=abb17(57)+abb17(75)
      abb17(57)=3.0_ki*abb17(57)
      abb17(75)=3.0_ki*spak5k6
      abb17(62)=-abb17(62)*abb17(75)
      abb17(76)=spak2k5*spbk3k2
      abb17(77)=abb17(76)*abb17(14)
      abb17(78)=-6.0_ki*abb17(77)
      abb17(26)=-spak5k6*abb17(26)
      abb17(26)=abb17(26)-abb17(77)
      abb17(26)=3.0_ki*abb17(26)
      abb17(77)=abb17(9)*spak5k6
      abb17(79)=abb17(77)*spak1k2
      abb17(80)=-abb17(79)*abb17(30)
      abb17(81)=spak5k6*abb17(34)
      abb17(80)=abb17(81)+abb17(80)
      abb17(80)=spbk6k2*abb17(80)
      abb17(81)=abb17(72)*spbk7k2
      abb17(82)=abb17(81)*spak1k2
      abb17(83)=-abb17(82)*abb17(30)
      abb17(84)=spbk7k2*spak5k7
      abb17(85)=abb17(34)*abb17(84)
      abb17(80)=abb17(80)+abb17(85)+abb17(83)
      abb17(80)=13.0_ki*abb17(80)
      abb17(83)=abb17(14)*spak2k5
      abb17(85)=spbk6k2*abb17(83)
      abb17(86)=-spak1k5*abb17(33)
      abb17(85)=-13.0_ki*abb17(85)+abb17(86)
      abb17(85)=2.0_ki*abb17(85)
      abb17(86)=-abb17(9)*abb17(30)
      abb17(87)=abb17(8)*spbk7k2
      abb17(88)=-abb17(87)*abb17(23)
      abb17(88)=abb17(88)-2.0_ki*abb17(33)-abb17(86)
      abb17(88)=spak1k5*abb17(88)
      abb17(79)=-abb17(79)-abb17(83)
      abb17(79)=spbk6k2*abb17(79)
      abb17(79)=-abb17(82)+abb17(79)
      abb17(82)=abb17(9)*spak1k7
      abb17(83)=abb17(28)*abb17(82)
      abb17(79)=abb17(83)+13.0_ki*abb17(79)+abb17(88)
      abb17(83)=abb17(30)*abb17(13)
      abb17(88)=abb17(56)*abb17(6)
      abb17(89)=abb17(88)-abb17(83)
      abb17(89)=12.0_ki*spbk6k2*abb17(89)
      abb17(90)=-abb17(14)*abb17(30)
      abb17(88)=spbk7k2*abb17(88)
      abb17(88)=abb17(88)+abb17(90)
      abb17(90)=-16.0_ki*abb17(14)
      abb17(91)=spak1k2*abb17(86)
      abb17(91)=abb17(34)+abb17(91)
      abb17(91)=12.0_ki*abb17(91)
      abb17(34)=abb17(34)*abb17(40)
      abb17(92)=abb17(39)*abb17(9)
      abb17(93)=abb17(38)*abb17(9)
      abb17(94)=abb17(92)+abb17(93)
      abb17(95)=spak1k2*abb17(94)
      abb17(96)=-abb17(95)*abb17(30)
      abb17(34)=abb17(96)+abb17(34)
      abb17(34)=3.0_ki*abb17(34)
      abb17(96)=abb17(15)*spak2k5
      abb17(96)=3.0_ki*abb17(96)
      abb17(97)=-abb17(96)-abb17(95)
      abb17(97)=2.0_ki*abb17(97)
      abb17(95)=-4.0_ki*abb17(95)-abb17(96)
      abb17(83)=-spbk7k3*abb17(83)
      abb17(56)=abb17(56)*abb17(69)
      abb17(56)=abb17(56)+abb17(83)
      abb17(56)=3.0_ki*abb17(56)
      abb17(83)=spbk6k5*spak5k7
      abb17(22)=abb17(22)*abb17(83)
      abb17(81)=abb17(81)*spak4k7
      abb17(25)=-abb17(25)*abb17(81)
      abb17(22)=abb17(22)+abb17(25)
      abb17(22)=16.0_ki*abb17(22)
      abb17(25)=abb17(50)*spbk6k2
      abb17(96)=32.0_ki*abb17(25)
      abb17(25)=8.0_ki*abb17(25)
      abb17(98)=abb17(47)*abb17(40)
      abb17(99)=abb17(98)*spbk6k2
      abb17(49)=abb17(49)*spak5k7
      abb17(99)=abb17(99)-abb17(49)
      abb17(100)=abb17(8)*spbk3k2
      abb17(101)=abb17(100)*spak4k5
      abb17(102)=-spbk6k5*abb17(101)
      abb17(103)=abb17(9)*spak4k7
      abb17(104)=spbk3k2*abb17(103)
      abb17(102)=abb17(102)+abb17(104)
      abb17(102)=spak1k5*abb17(102)
      abb17(104)=-abb17(21)*abb17(82)
      abb17(102)=abb17(104)-16.0_ki*abb17(99)+abb17(102)
      abb17(102)=2.0_ki*abb17(102)
      abb17(99)=-30.0_ki*abb17(99)
      abb17(104)=abb17(50)-abb17(98)
      abb17(104)=spbk6k2*abb17(104)
      abb17(49)=abb17(49)+abb17(104)
      abb17(49)=16.0_ki*abb17(49)
      abb17(104)=spbk2k1*spak1k5
      abb17(105)=abb17(10)*abb17(104)
      abb17(106)=abb17(74)*spbk6k2
      abb17(107)=12.0_ki*spak4k7
      abb17(107)=-abb17(106)*abb17(107)
      abb17(108)=spak4k7*spbk3k2
      abb17(109)=-abb17(14)*abb17(108)
      abb17(66)=-abb17(106)*abb17(66)
      abb17(50)=-spbk5k2*abb17(50)
      abb17(50)=abb17(50)+abb17(109)+abb17(66)
      abb17(50)=4.0_ki*abb17(50)
      abb17(66)=abb17(47)*spbk3k2
      abb17(109)=30.0_ki*abb17(66)
      abb17(66)=-16.0_ki*abb17(66)
      abb17(110)=-spbk6k5*abb17(47)*abb17(104)
      abb17(111)=spak1k7*spbk2k1
      abb17(10)=-abb17(10)*abb17(111)
      abb17(10)=abb17(110)+abb17(10)
      abb17(27)=abb17(64)-abb17(27)
      abb17(27)=13.0_ki*abb17(27)
      abb17(64)=-spbk5k3*abb17(47)
      abb17(110)=3.0_ki*spak5k7*abb17(106)
      abb17(14)=-spak5k7*spbk3k2*abb17(14)
      abb17(106)=spak5k6*abb17(106)
      abb17(14)=abb17(14)+abb17(106)
      abb17(14)=3.0_ki*abb17(14)
      abb17(106)=spak5k6*spbk6k2**2*abb17(13)
      abb17(112)=spbk2k1*spbk6k5*spak1k5**2*abb17(8)
      abb17(106)=13.0_ki*abb17(106)+abb17(112)
      abb17(112)=-2.0_ki*spak1k5*abb17(9)
      abb17(82)=2.0_ki*abb17(82)
      abb17(13)=spbk6k2*abb17(13)*abb17(40)
      abb17(15)=-spak5k7*abb17(15)
      abb17(13)=abb17(15)+abb17(13)
      abb17(15)=spak1k7*abb17(94)
      abb17(13)=3.0_ki*abb17(13)+abb17(15)
      abb17(15)=spak1k7*abb17(17)
      abb17(113)=spbk5k3*spak1k5*abb17(8)
      abb17(114)=abb17(8)*spbk6k3
      abb17(115)=spak1k6*abb17(114)
      abb17(15)=abb17(115)+abb17(113)-abb17(74)+abb17(15)
      abb17(74)=abb17(4)*abb17(1)
      abb17(113)=abb17(6)*abb17(74)
      abb17(115)=spbk7k6*abb17(113)
      abb17(116)=abb17(115)*spak1k4
      abb17(40)=abb17(40)*abb17(116)
      abb17(117)=spbk2k1*abb17(40)
      abb17(118)=abb17(101)*abb17(23)
      abb17(119)=abb17(76)*abb17(103)
      abb17(120)=abb17(48)*spak2k5
      abb17(121)=abb17(120)*spbk2k1
      abb17(21)=abb17(115)*abb17(21)
      abb17(118)=-abb17(118)+abb17(119)+abb17(121)-abb17(21)
      abb17(119)=-2.0_ki*abb17(118)
      abb17(121)=2.0_ki*abb17(21)
      abb17(122)=abb17(74)*spbk7k3
      abb17(123)=spbk2k1*abb17(43)*abb17(122)
      abb17(124)=-spak4k6*spbk3k2*abb17(115)
      abb17(55)=-spbk7k5*abb17(74)*abb17(55)*spak4k5
      abb17(55)=abb17(55)+abb17(123)+abb17(124)
      abb17(123)=spbk6k2*spak5k6*abb17(115)
      abb17(83)=abb17(101)*abb17(83)
      abb17(108)=-abb17(72)*abb17(108)
      abb17(124)=abb17(48)*spak5k7
      abb17(125)=-spbk2k1*abb17(124)
      abb17(83)=abb17(125)+abb17(83)+abb17(108)
      abb17(108)=-spak4k7*abb17(100)
      abb17(125)=abb17(8)*spak5k7
      abb17(125)=2.0_ki*abb17(125)
      abb17(126)=-spbk6k2*abb17(125)
      abb17(77)=abb17(77)*abb17(30)
      abb17(127)=-spak5k6*abb17(33)
      abb17(77)=abb17(127)+abb17(77)
      abb17(127)=spbk2k1*abb17(98)
      abb17(128)=-spak4k6*abb17(100)
      abb17(125)=spbk7k2*abb17(125)
      abb17(129)=abb17(9)*spak4k5
      abb17(130)=-abb17(129)*abb17(30)
      abb17(131)=abb17(8)*spak4k5
      abb17(23)=abb17(23)*abb17(131)
      abb17(132)=-spbk7k2*abb17(23)
      abb17(133)=abb17(28)*abb17(103)
      abb17(132)=abb17(133)+abb17(132)-abb17(130)
      abb17(132)=2.0_ki*abb17(132)
      abb17(6)=abb17(6)*spak4k5
      abb17(133)=abb17(6)*abb17(32)
      abb17(130)=abb17(130)+abb17(133)
      abb17(130)=2.0_ki*abb17(130)
      abb17(33)=abb17(86)+abb17(33)
      abb17(86)=spak4k6*abb17(33)
      abb17(134)=-abb17(131)*abb17(30)
      abb17(135)=abb17(7)*abb17(6)
      abb17(134)=abb17(135)+abb17(134)
      abb17(134)=spbk7k5*abb17(134)
      abb17(86)=abb17(86)+abb17(134)
      abb17(134)=abb17(131)*spbk6k5
      abb17(135)=-abb17(134)+abb17(103)
      abb17(104)=abb17(135)*abb17(104)
      abb17(135)=-abb17(134)*abb17(84)
      abb17(111)=-abb17(129)*abb17(111)
      abb17(81)=abb17(111)+abb17(104)+abb17(135)+abb17(81)
      abb17(87)=spak4k7*abb17(87)
      abb17(104)=spbk2k1*abb17(47)
      abb17(111)=spak4k6*spbk6k2*abb17(8)
      abb17(135)=spbk5k2*abb17(131)
      abb17(87)=abb17(135)+abb17(111)+abb17(87)+abb17(104)
      abb17(104)=-abb17(94)*abb17(30)
      abb17(111)=spak5k7*abb17(69)
      abb17(135)=spak5k6*abb17(60)
      abb17(111)=abb17(111)+abb17(135)
      abb17(32)=abb17(32)*abb17(111)
      abb17(32)=abb17(104)+abb17(32)
      abb17(104)=16.0_ki*spak2k4
      abb17(32)=abb17(32)*abb17(104)
      abb17(111)=15.0_ki*spbk7k1
      abb17(40)=abb17(40)*abb17(111)
      abb17(32)=abb17(32)+abb17(40)
      abb17(40)=15.0_ki*spak2k5
      abb17(40)=abb17(40)*abb17(103)
      abb17(23)=-15.0_ki*abb17(23)+abb17(40)
      abb17(23)=spbk7k3*abb17(23)
      abb17(28)=abb17(28)*abb17(114)
      abb17(28)=abb17(94)+16.0_ki*abb17(28)
      abb17(28)=abb17(28)*spak2k4
      abb17(40)=abb17(111)*abb17(120)
      abb17(94)=abb17(115)*spbk7k3
      abb17(120)=abb17(94)*spak4k5
      abb17(23)=-abb17(28)-15.0_ki*abb17(120)-abb17(40)+abb17(23)
      abb17(28)=2.0_ki*abb17(23)
      abb17(40)=-30.0_ki*abb17(120)
      abb17(120)=-6.0_ki*abb17(120)
      abb17(135)=-abb17(114)*abb17(30)
      abb17(60)=abb17(7)*abb17(60)
      abb17(60)=abb17(60)+abb17(135)
      abb17(60)=spak2k4*abb17(60)
      abb17(135)=spbk6k5*abb17(6)*abb17(122)
      abb17(43)=abb17(43)*spbk7k1
      abb17(74)=spbk6k3*abb17(74)*abb17(43)
      abb17(60)=abb17(74)+abb17(60)+abb17(135)
      abb17(60)=12.0_ki*abb17(60)
      abb17(30)=-abb17(17)*abb17(30)
      abb17(7)=abb17(7)*abb17(69)
      abb17(7)=abb17(7)+abb17(30)
      abb17(7)=spak2k4*abb17(7)
      abb17(6)=spbk7k5*abb17(6)
      abb17(6)=abb17(43)+abb17(6)
      abb17(6)=3.0_ki*abb17(6)
      abb17(6)=abb17(122)*abb17(6)
      abb17(30)=spak4k6*abb17(94)
      abb17(6)=4.0_ki*abb17(7)+15.0_ki*abb17(30)+abb17(6)
      abb17(7)=spak2k4*abb17(33)
      abb17(30)=spbk7k1*abb17(116)
      abb17(7)=abb17(7)+abb17(30)
      abb17(7)=12.0_ki*abb17(7)
      abb17(30)=3.0_ki*abb17(39)*abb17(115)
      abb17(33)=-abb17(94)*abb17(75)
      abb17(39)=-12.0_ki*spak5k6*spbk7k6**2*abb17(113)
      abb17(43)=abb17(9)*spak2k5
      abb17(69)=32.0_ki*abb17(43)
      abb17(43)=16.0_ki*abb17(43)
      abb17(9)=-abb17(9)*abb17(76)
      abb17(9)=abb17(9)+14.0_ki*abb17(93)-abb17(92)
      abb17(9)=spak4k7*abb17(9)
      abb17(74)=abb17(17)*spak5k7
      abb17(75)=spak5k6*abb17(114)
      abb17(75)=abb17(74)+abb17(75)
      abb17(75)=spbk6k2*abb17(75)
      abb17(76)=-abb17(114)*abb17(84)
      abb17(75)=abb17(76)+abb17(75)
      abb17(75)=abb17(75)*abb17(104)
      abb17(38)=abb17(131)*abb17(38)
      abb17(76)=spak2k5*abb17(101)
      abb17(38)=-15.0_ki*abb17(38)+abb17(76)
      abb17(38)=spbk6k5*abb17(38)
      abb17(76)=spbk6k1*abb17(98)
      abb17(84)=-abb17(111)*abb17(124)
      abb17(9)=15.0_ki*abb17(76)+abb17(84)+abb17(9)+abb17(38)+abb17(21)+abb17(7&
      &5)
      abb17(21)=abb17(114)*spak4k5
      abb17(38)=32.0_ki*abb17(21)
      abb17(75)=-8.0_ki*abb17(21)
      abb17(21)=-16.0_ki*abb17(21)
      abb17(76)=2.0_ki*abb17(129)
      abb17(84)=12.0_ki*abb17(114)
      abb17(92)=spak4k7*abb17(84)
      abb17(17)=spak4k7*abb17(17)
      abb17(93)=spbk5k3*abb17(131)
      abb17(17)=abb17(17)+abb17(93)
      abb17(93)=spak2k4*abb17(100)
      abb17(94)=spbk3k1*abb17(47)
      abb17(93)=abb17(93)+abb17(94)
      abb17(94)=spak4k6*abb17(114)
      abb17(17)=14.0_ki*abb17(94)+3.0_ki*abb17(93)+2.0_ki*abb17(17)
      abb17(18)=abb17(8)*abb17(18)
      abb17(47)=spbk6k1*abb17(47)
      abb17(18)=abb17(47)+abb17(18)-abb17(134)
      abb17(18)=5.0_ki*abb17(103)+6.0_ki*abb17(18)
      abb17(18)=2.0_ki*abb17(18)
      abb17(47)=-spak2k4*abb17(84)
      abb17(84)=-12.0_ki*abb17(48)
      abb17(93)=6.0_ki*spak5k7
      abb17(93)=-abb17(114)*abb17(93)
      abb17(74)=6.0_ki*abb17(74)
      abb17(72)=24.0_ki*abb17(72)
      abb17(8)=32.0_ki*abb17(8)
      R2d17=abb17(20)
      rat2 = rat2 + R2d17
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='17' value='", &
          & R2d17, "'/>"
      end if
   end subroutine
end module p12_sbars_epnemumnmubarg_abbrevd17h1
