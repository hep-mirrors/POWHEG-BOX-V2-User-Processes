module     p0_dbaru_epnebbbarg_abbrevd66h6
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh6
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
      abb66(3)=sqrt2**(-1)
      abb66(4)=es56**(-1)
      abb66(5)=spbk7k2**(-1)
      abb66(6)=spbl5k2**(-1)
      abb66(7)=spak2l6**(-1)
      abb66(8)=spak2l5**(-1)
      abb66(9)=spbl6k2**(-1)
      abb66(10)=spbk3k1*spal5l6
      abb66(11)=es12*spak1k7
      abb66(12)=abb66(11)*abb66(10)
      abb66(13)=spal5l6*spak4k7
      abb66(14)=abb66(13)*spbk4k3
      abb66(15)=es12*abb66(14)
      abb66(12)=abb66(15)+abb66(12)
      abb66(15)=c3*abb66(2)
      abb66(16)=abb66(15)-c2
      abb66(17)=abb66(2)**2
      abb66(18)=abb66(17)*c4
      abb66(19)=abb66(16)-abb66(18)
      abb66(20)=TR*gW
      abb66(20)=abb66(5)*i_*CVDU*abb66(4)*abb66(3)*abb66(1)*abb66(20)**2
      abb66(21)=abb66(20)*spak1k4
      abb66(22)=-abb66(21)*abb66(19)
      abb66(23)=spbl6k2**2
      abb66(24)=abb66(23)*abb66(22)
      abb66(12)=8.0_ki*abb66(24)*abb66(12)
      abb66(25)=abb66(20)*spbl6k2
      abb66(26)=abb66(18)*abb66(25)
      abb66(27)=abb66(15)*abb66(25)
      abb66(28)=abb66(25)*c2
      abb66(26)=-abb66(27)+abb66(26)+abb66(28)
      abb66(29)=spbk3k2**2
      abb66(30)=abb66(26)*abb66(29)
      abb66(31)=spak1k2*spak3k4
      abb66(32)=abb66(31)*spal5k7
      abb66(33)=abb66(30)*abb66(32)
      abb66(33)=16.0_ki*abb66(33)
      abb66(34)=abb66(20)*spbk3k2
      abb66(35)=abb66(19)*abb66(34)
      abb66(36)=-spak1k2*abb66(23)*abb66(35)
      abb66(37)=abb66(36)*abb66(13)
      abb66(38)=16.0_ki*abb66(37)
      abb66(39)=abb66(17)*abb66(25)
      abb66(40)=abb66(29)*abb66(39)
      abb66(41)=mB**2
      abb66(42)=abb66(41)*abb66(7)
      abb66(43)=abb66(42)*abb66(20)
      abb66(44)=abb66(29)*abb66(43)
      abb66(45)=abb66(44)*abb66(17)
      abb66(46)=abb66(40)-abb66(45)
      abb66(46)=abb66(46)*c4
      abb66(47)=abb66(44)*abb66(2)
      abb66(48)=abb66(29)*abb66(25)
      abb66(49)=abb66(48)*abb66(2)
      abb66(50)=abb66(47)-abb66(49)
      abb66(50)=abb66(50)*c3
      abb66(51)=abb66(48)-abb66(44)
      abb66(51)=abb66(51)*c2
      abb66(46)=abb66(51)+abb66(46)+abb66(50)
      abb66(50)=-abb66(46)*abb66(32)
      abb66(21)=abb66(21)*abb66(42)
      abb66(51)=-abb66(21)*abb66(19)
      abb66(52)=abb66(51)*spbk2k1
      abb66(53)=spak1l5*spak4k7
      abb66(54)=abb66(53)*abb66(52)
      abb66(27)=abb66(27)-abb66(28)
      abb66(27)=spak1k4*abb66(27)
      abb66(28)=-abb66(42)*abb66(27)
      abb66(55)=abb66(18)*abb66(42)
      abb66(56)=abb66(25)*spak1k4
      abb66(57)=abb66(55)*abb66(56)
      abb66(28)=abb66(57)+abb66(28)
      abb66(57)=spbk2k1*abb66(6)
      abb66(58)=abb66(28)*abb66(57)
      abb66(59)=spak1l6*spak4k7
      abb66(60)=abb66(59)*abb66(58)
      abb66(54)=abb66(54)+abb66(60)
      abb66(54)=spbk4k3*abb66(54)
      abb66(60)=spbk2k1*spak1k7
      abb66(61)=abb66(60)*spak1l5
      abb66(62)=abb66(51)*abb66(61)
      abb66(63)=spak1k7*abb66(6)
      abb66(64)=abb66(63)*spbk2k1
      abb66(65)=abb66(64)*spak1l6
      abb66(66)=abb66(28)*abb66(65)
      abb66(62)=abb66(62)+abb66(66)
      abb66(62)=spbk3k1*abb66(62)
      abb66(66)=abb66(29)*abb66(41)
      abb66(67)=-abb66(66)*abb66(26)
      abb66(68)=abb66(31)*abb66(6)
      abb66(69)=abb66(67)*abb66(68)
      abb66(70)=abb66(8)*spal5k7
      abb66(71)=-abb66(70)*abb66(69)
      abb66(50)=abb66(62)+abb66(54)+abb66(50)+abb66(71)
      abb66(50)=16.0_ki*abb66(50)
      abb66(54)=-abb66(44)*abb66(19)
      abb66(62)=abb66(63)*spak3k4
      abb66(71)=abb66(54)*abb66(62)
      abb66(72)=32.0_ki*abb66(71)
      abb66(34)=abb66(34)*abb66(42)
      abb66(73)=-abb66(34)*abb66(19)
      abb66(74)=abb66(73)*abb66(53)
      abb66(75)=abb66(25)*spbk3k2
      abb66(76)=-abb66(16)*abb66(75)*abb66(42)
      abb66(77)=abb66(55)*abb66(75)
      abb66(77)=abb66(76)+abb66(77)
      abb66(78)=abb66(77)*abb66(6)
      abb66(79)=abb66(78)*abb66(59)
      abb66(74)=abb66(74)+abb66(79)
      abb66(79)=32.0_ki*abb66(74)
      abb66(10)=spak1k7*abb66(10)
      abb66(10)=abb66(10)+abb66(14)
      abb66(10)=abb66(24)*abb66(10)
      abb66(10)=-abb66(37)+abb66(10)
      abb66(10)=16.0_ki*abb66(10)
      abb66(14)=abb66(75)*spak1k4
      abb66(24)=-abb66(14)*abb66(19)
      abb66(80)=abb66(24)*spal5k7
      abb66(81)=32.0_ki*abb66(80)
      abb66(76)=-spak1k4*abb66(76)
      abb66(55)=-abb66(55)*abb66(14)
      abb66(55)=abb66(55)+abb66(76)
      abb66(55)=spal6k7*abb66(55)
      abb66(76)=abb66(24)*abb66(41)
      abb66(82)=-abb66(76)*abb66(70)
      abb66(55)=abb66(55)+abb66(82)
      abb66(55)=abb66(6)*abb66(55)
      abb66(82)=abb66(39)*spbk3k2
      abb66(83)=abb66(82)*spak1k4
      abb66(84)=abb66(34)*spak1k4
      abb66(85)=2.0_ki*abb66(84)
      abb66(86)=-abb66(17)*abb66(85)
      abb66(86)=abb66(83)+abb66(86)
      abb66(86)=c4*abb66(86)
      abb66(85)=abb66(85)-abb66(14)
      abb66(85)=abb66(85)*abb66(16)
      abb66(85)=abb66(86)+abb66(85)
      abb66(85)=spal5k7*abb66(85)
      abb66(55)=abb66(85)-abb66(74)+abb66(55)
      abb66(55)=32.0_ki*abb66(55)
      abb66(67)=abb66(8)*abb66(6)*abb66(67)
      abb66(67)=abb66(46)+abb66(67)
      abb66(67)=spak2k7*abb66(67)
      abb66(15)=-c2+abb66(15)-abb66(18)
      abb66(15)=abb66(20)*abb66(15)
      abb66(20)=-abb66(29)*abb66(15)
      abb66(85)=-spal5k7*abb66(20)*spbl6l5
      abb66(67)=abb66(85)+abb66(67)
      abb66(85)=spak1l5*spak3k4
      abb66(67)=abb66(85)*abb66(67)
      abb66(40)=-abb66(40)-abb66(45)
      abb66(40)=c4*abb66(40)
      abb66(45)=abb66(49)+abb66(47)
      abb66(45)=c3*abb66(45)
      abb66(44)=-abb66(48)-abb66(44)
      abb66(44)=c2*abb66(44)
      abb66(40)=abb66(44)+abb66(40)+abb66(45)
      abb66(40)=abb66(40)*abb66(32)
      abb66(18)=abb66(56)*abb66(18)
      abb66(18)=abb66(18)-abb66(27)
      abb66(27)=abb66(18)*spbk2k1
      abb66(44)=-spbk4k3*abb66(53)*abb66(27)
      abb66(45)=-spbk3k1*abb66(18)*abb66(61)
      abb66(42)=-abb66(42)*abb66(26)
      abb66(29)=spal6k7*abb66(68)*abb66(29)*abb66(42)
      abb66(29)=abb66(29)+abb66(45)+abb66(44)+abb66(40)+abb66(37)+abb66(67)
      abb66(29)=8.0_ki*abb66(29)
      abb66(37)=-abb66(75)*abb66(19)
      abb66(40)=abb66(37)*abb66(53)
      abb66(44)=16.0_ki*abb66(40)
      abb66(45)=-abb66(71)+abb66(74)
      abb66(45)=16.0_ki*abb66(45)
      abb66(47)=abb66(40)+abb66(80)
      abb66(47)=16.0_ki*abb66(47)
      abb66(40)=-8.0_ki*abb66(40)
      abb66(46)=abb66(46)*abb66(31)
      abb66(48)=-spak2l5*abb66(46)
      abb66(49)=es12*spbl6k3
      abb66(67)=-abb66(18)*abb66(49)
      abb66(71)=abb66(31)*spbl6k3
      abb66(74)=abb66(37)*abb66(71)
      abb66(80)=-spbl6k1*spak1k2*abb66(24)
      abb66(67)=abb66(67)+abb66(80)+abb66(74)
      abb66(67)=spal5l6*abb66(67)
      abb66(48)=abb66(48)-abb66(69)+abb66(67)
      abb66(48)=8.0_ki*abb66(48)
      abb66(67)=abb66(54)*abb66(68)
      abb66(74)=-abb66(35)*spak3k4
      abb66(80)=abb66(74)*spak1l5
      abb66(86)=abb66(22)*spbk2k1
      abb66(87)=abb66(86)*spak1l5
      abb66(80)=abb66(80)+abb66(87)
      abb66(88)=abb66(80)*spbl6k3
      abb66(89)=-spak1k4*abb66(35)
      abb66(90)=abb66(89)*spbl6k1
      abb66(91)=abb66(90)*spak1l5
      abb66(67)=abb66(67)+abb66(88)+abb66(91)
      abb66(67)=16.0_ki*abb66(67)
      abb66(88)=abb66(52)*abb66(6)
      abb66(92)=spbl5k3*abb66(88)
      abb66(93)=-abb66(84)*abb66(19)
      abb66(94)=abb66(93)*abb66(6)
      abb66(95)=spbl5k1*abb66(94)
      abb66(92)=abb66(92)+abb66(95)
      abb66(92)=-2.0_ki*abb66(92)
      abb66(92)=spak1l5*abb66(92)
      abb66(95)=-spbl6k3*abb66(88)
      abb66(96)=-spbl6k1*abb66(94)
      abb66(95)=abb66(95)+abb66(96)
      abb66(95)=spak1l6*abb66(95)
      abb66(19)=-abb66(43)*abb66(19)
      abb66(96)=spbk4k3*spak1k4**2
      abb66(97)=abb66(57)*abb66(19)*abb66(96)
      abb66(92)=2.0_ki*abb66(95)+abb66(97)+abb66(92)
      abb66(92)=16.0_ki*abb66(92)
      abb66(95)=32.0_ki*abb66(94)
      abb66(97)=-spal5l6*spbl6k3*abb66(18)
      abb66(98)=-abb66(17)*abb66(84)
      abb66(83)=abb66(83)+abb66(98)
      abb66(83)=c4*abb66(83)
      abb66(14)=abb66(14)-abb66(84)
      abb66(14)=-abb66(14)*abb66(16)
      abb66(14)=abb66(83)+abb66(14)
      abb66(14)=spak2l5*abb66(14)
      abb66(16)=-abb66(6)*abb66(76)
      abb66(14)=abb66(14)+abb66(16)+abb66(97)
      abb66(14)=16.0_ki*abb66(14)
      abb66(16)=-64.0_ki*abb66(94)
      abb66(76)=spbl6k3*abb66(87)
      abb66(76)=abb66(76)+abb66(91)
      abb66(76)=16.0_ki*abb66(76)
      abb66(83)=16.0_ki*abb66(94)
      abb66(84)=abb66(18)*spbl6k1
      abb66(87)=abb66(53)*abb66(84)
      abb66(28)=abb66(28)*es12
      abb66(91)=-spak4k7*abb66(6)*abb66(28)
      abb66(87)=abb66(87)+abb66(91)
      abb66(87)=spbk4k3*abb66(87)
      abb66(91)=abb66(84)*spak1k7
      abb66(94)=spak1l5*abb66(91)
      abb66(28)=-abb66(63)*abb66(28)
      abb66(28)=abb66(94)+abb66(28)
      abb66(28)=spbk3k1*abb66(28)
      abb66(28)=abb66(87)+abb66(28)
      abb66(28)=8.0_ki*abb66(28)
      abb66(87)=abb66(26)*spbl6k3
      abb66(94)=abb66(87)*abb66(53)
      abb66(97)=spak1k2*abb66(6)
      abb66(77)=abb66(77)*abb66(97)
      abb66(98)=abb66(77)*spak4k7
      abb66(94)=abb66(94)+abb66(98)
      abb66(98)=16.0_ki*abb66(94)
      abb66(99)=abb66(73)*abb66(63)
      abb66(100)=abb66(99)*spak3k4
      abb66(52)=abb66(52)*abb66(63)
      abb66(100)=abb66(100)+abb66(52)
      abb66(101)=spbl6k3*abb66(100)
      abb66(102)=abb66(93)*spbl6k1
      abb66(103)=abb66(63)*abb66(102)
      abb66(101)=abb66(101)+abb66(103)
      abb66(101)=16.0_ki*abb66(101)
      abb66(94)=-8.0_ki*abb66(94)
      abb66(103)=abb66(68)*abb66(73)
      abb66(85)=spbl6k3*abb66(15)*abb66(85)
      abb66(85)=-abb66(103)+abb66(85)
      abb66(85)=spbl6k3*abb66(85)
      abb66(104)=abb66(97)*abb66(102)
      abb66(105)=abb66(51)*abb66(6)
      abb66(106)=abb66(49)*abb66(105)
      abb66(85)=abb66(106)+abb66(85)+abb66(104)
      abb66(85)=8.0_ki*abb66(85)
      abb66(30)=-spal6k7*abb66(30)*abb66(31)
      abb66(32)=abb66(20)*abb66(32)
      abb66(104)=-spbl5k2*abb66(32)
      abb66(30)=abb66(30)+abb66(104)
      abb66(30)=8.0_ki*abb66(30)
      abb66(54)=abb66(54)*abb66(9)
      abb66(20)=abb66(54)-abb66(20)
      abb66(104)=spak3k4*spak1k7
      abb66(20)=abb66(104)*abb66(20)
      abb66(66)=abb66(8)*abb66(15)*abb66(66)
      abb66(106)=-abb66(62)*abb66(66)
      abb66(20)=abb66(106)+abb66(20)
      abb66(20)=16.0_ki*abb66(20)
      abb66(24)=spal6k7*abb66(24)
      abb66(106)=spbl5k2*spal5k7
      abb66(107)=abb66(89)*abb66(106)
      abb66(24)=abb66(24)+abb66(107)
      abb66(24)=16.0_ki*abb66(24)
      abb66(107)=abb66(74)+abb66(86)
      abb66(108)=spbl6k3*abb66(107)
      abb66(108)=abb66(108)+abb66(90)
      abb66(108)=spak1l6*abb66(108)
      abb66(66)=abb66(68)*abb66(66)
      abb66(80)=spbl5k3*abb66(80)
      abb66(31)=-abb66(31)*abb66(54)
      abb66(54)=spbk2k1*abb66(15)*abb66(96)
      abb66(96)=abb66(89)*spbl5k1
      abb66(109)=spak1l5*abb66(96)
      abb66(31)=abb66(109)+abb66(31)+abb66(80)+abb66(54)+abb66(66)+abb66(108)
      abb66(31)=8.0_ki*abb66(31)
      abb66(54)=16.0_ki*abb66(89)
      abb66(66)=32.0_ki*abb66(89)
      abb66(80)=-8.0_ki*abb66(89)
      abb66(74)=abb66(74)*spak1k7
      abb66(86)=abb66(86)*spak1k7
      abb66(74)=abb66(74)+abb66(86)
      abb66(89)=abb66(74)*spbl6k3
      abb66(108)=abb66(90)*spak1k7
      abb66(89)=abb66(89)+abb66(108)
      abb66(108)=-8.0_ki*abb66(89)
      abb66(69)=abb66(8)*abb66(69)
      abb66(46)=abb66(46)+abb66(69)
      abb66(46)=spak2k7*abb66(46)
      abb66(69)=abb66(39)*spak1k4
      abb66(109)=abb66(21)*abb66(17)
      abb66(110)=abb66(69)+abb66(109)
      abb66(110)=abb66(110)*c4
      abb66(111)=abb66(21)*abb66(2)
      abb66(112)=abb66(56)*abb66(2)
      abb66(113)=abb66(112)+abb66(111)
      abb66(113)=abb66(113)*c3
      abb66(114)=abb66(21)+abb66(56)
      abb66(114)=abb66(114)*c2
      abb66(110)=abb66(114)+abb66(110)-abb66(113)
      abb66(113)=-abb66(110)*es12*spak4k7
      abb66(114)=-abb66(59)*abb66(84)
      abb66(113)=abb66(114)+abb66(113)
      abb66(113)=spbk4k3*abb66(113)
      abb66(110)=-abb66(110)*abb66(11)
      abb66(91)=-spak1l6*abb66(91)
      abb66(91)=abb66(91)+abb66(110)
      abb66(91)=spbk3k1*abb66(91)
      abb66(32)=-spbl6l5*abb66(32)
      abb66(32)=abb66(32)+abb66(46)+abb66(113)+abb66(91)
      abb66(32)=8.0_ki*abb66(32)
      abb66(46)=16.0_ki*abb66(89)
      abb66(91)=abb66(34)*abb66(17)
      abb66(110)=abb66(91)+abb66(82)
      abb66(110)=abb66(110)*c4
      abb66(113)=abb66(34)*abb66(2)
      abb66(114)=abb66(75)*abb66(2)
      abb66(115)=abb66(114)+abb66(113)
      abb66(115)=abb66(115)*c3
      abb66(116)=abb66(34)+abb66(75)
      abb66(116)=abb66(116)*c2
      abb66(110)=-abb66(116)+abb66(115)-abb66(110)
      abb66(115)=spak1k2*spak4k7
      abb66(116)=abb66(110)*abb66(115)
      abb66(117)=abb66(87)*abb66(59)
      abb66(116)=abb66(116)+abb66(117)
      abb66(117)=16.0_ki*abb66(116)
      abb66(100)=spbl5k3*abb66(100)
      abb66(104)=abb66(73)*abb66(104)
      abb66(118)=abb66(51)*abb66(60)
      abb66(104)=abb66(104)+abb66(118)
      abb66(104)=spbl6k3*abb66(104)
      abb66(118)=spak1k7*abb66(102)
      abb66(104)=abb66(104)+abb66(118)
      abb66(104)=abb66(9)*abb66(104)
      abb66(118)=-abb66(35)*abb66(41)
      abb66(62)=abb66(118)*abb66(62)
      abb66(119)=abb66(22)*abb66(41)
      abb66(120)=abb66(119)*abb66(64)
      abb66(62)=abb66(62)+abb66(120)
      abb66(62)=spbl6k3*abb66(62)
      abb66(120)=abb66(41)*abb66(90)
      abb66(121)=abb66(63)*abb66(120)
      abb66(62)=abb66(62)+abb66(121)
      abb66(62)=abb66(8)*abb66(62)
      abb66(93)=abb66(93)*spbl5k1
      abb66(121)=abb66(63)*abb66(93)
      abb66(62)=abb66(121)+abb66(104)+abb66(100)+abb66(62)-abb66(89)
      abb66(62)=16.0_ki*abb66(62)
      abb66(89)=-abb66(89)+abb66(116)
      abb66(89)=8.0_ki*abb66(89)
      abb66(71)=-abb66(73)*abb66(71)
      abb66(100)=-spak1k2*abb66(102)
      abb66(51)=-abb66(51)*abb66(49)
      abb66(51)=abb66(51)+abb66(71)+abb66(100)
      abb66(51)=abb66(9)*abb66(51)
      abb66(68)=-spbl6k3*abb66(118)*abb66(68)
      abb66(71)=-abb66(97)*abb66(120)
      abb66(100)=-abb66(6)*abb66(119)*abb66(49)
      abb66(68)=abb66(100)+abb66(68)+abb66(71)
      abb66(68)=abb66(8)*abb66(68)
      abb66(71)=es12*abb66(105)
      abb66(71)=-abb66(103)+abb66(71)
      abb66(71)=spbl5k3*abb66(71)
      abb66(93)=abb66(97)*abb66(93)
      abb66(100)=-spak1l6*spak3k4*abb66(15)*spbl6k3**2
      abb66(102)=2.0_ki*spak1k2
      abb66(90)=abb66(90)*abb66(102)
      abb66(49)=abb66(22)*abb66(49)
      abb66(49)=abb66(93)+abb66(51)+abb66(71)+abb66(68)+2.0_ki*abb66(49)+abb66(&
      &100)+abb66(90)
      abb66(49)=8.0_ki*abb66(49)
      abb66(51)=-spbl5k3*abb66(74)
      abb66(68)=-spak1k7*abb66(96)
      abb66(51)=abb66(51)+abb66(68)
      abb66(51)=8.0_ki*abb66(51)
      abb66(23)=-abb66(23)*abb66(15)
      abb66(68)=abb66(23)*spal5l6
      abb66(71)=-abb66(68)*abb66(11)
      abb66(13)=abb66(23)*abb66(13)
      abb66(23)=-spbk4k2*spak1k2*abb66(13)
      abb66(36)=-spak3k7*spal5l6*abb66(36)
      abb66(23)=abb66(36)+abb66(71)+abb66(23)
      abb66(23)=8.0_ki*abb66(23)
      abb66(36)=-abb66(19)*abb66(53)
      abb66(71)=abb66(42)*abb66(6)
      abb66(74)=abb66(59)*abb66(71)
      abb66(36)=abb66(36)+abb66(74)
      abb66(36)=spbk4k2*abb66(36)
      abb66(74)=-spak1l5*abb66(73)
      abb66(90)=-spak1l6*abb66(78)
      abb66(74)=abb66(74)+abb66(90)
      abb66(74)=spak3k7*abb66(74)
      abb66(90)=-abb66(19)*abb66(61)
      abb66(65)=abb66(42)*abb66(65)
      abb66(36)=abb66(74)+abb66(36)+abb66(90)+abb66(65)
      abb66(36)=16.0_ki*abb66(36)
      abb66(65)=16.0_ki*spak1k7
      abb66(74)=-abb66(68)*abb66(65)
      abb66(90)=spbk4k2*abb66(53)
      abb66(61)=abb66(61)+abb66(90)
      abb66(61)=abb66(26)*abb66(61)
      abb66(90)=spak3k7*spak1l5*abb66(37)
      abb66(61)=abb66(90)+abb66(61)
      abb66(61)=8.0_ki*abb66(61)
      abb66(68)=8.0_ki*abb66(68)
      abb66(90)=spak1k2*abb66(68)
      abb66(93)=16.0_ki*abb66(26)
      abb66(96)=abb66(93)*spak1l5
      abb66(100)=spak1l5*abb66(19)
      abb66(103)=-spak1l6*abb66(71)
      abb66(100)=abb66(100)+abb66(103)
      abb66(103)=-spbk4k2*abb66(105)
      abb66(104)=-spak1k3*abb66(6)*abb66(73)
      abb66(100)=abb66(104)+2.0_ki*abb66(100)+abb66(103)
      abb66(100)=16.0_ki*abb66(100)
      abb66(103)=spak1l5*abb66(87)
      abb66(77)=abb66(77)+abb66(103)
      abb66(77)=spak3k7*abb66(77)
      abb66(103)=abb66(63)*es12
      abb66(104)=-spbk4k2*spak4k7*abb66(97)
      abb66(103)=abb66(104)-abb66(103)
      abb66(103)=abb66(42)*abb66(103)
      abb66(104)=spbl6k1*spak1k7
      abb66(116)=-spak1l5*abb66(104)
      abb66(53)=spbl6k4*abb66(53)
      abb66(53)=abb66(53)+abb66(116)
      abb66(53)=abb66(26)*abb66(53)
      abb66(53)=abb66(77)+abb66(53)+abb66(103)
      abb66(53)=8.0_ki*abb66(53)
      abb66(77)=16.0_ki*abb66(63)
      abb66(77)=abb66(42)*abb66(77)
      abb66(42)=8.0_ki*abb66(42)*abb66(97)
      abb66(103)=-spak1l6*abb66(26)
      abb66(116)=spbk4k2*abb66(22)
      abb66(118)=abb66(15)*spbl5k2
      abb66(119)=spak1l5*abb66(118)
      abb66(120)=-spak1k3*abb66(35)
      abb66(103)=abb66(120)+abb66(119)+abb66(103)+abb66(116)
      abb66(103)=8.0_ki*abb66(103)
      abb66(116)=8.0_ki*spak1k7
      abb66(119)=abb66(26)*abb66(116)
      abb66(120)=abb66(17)*abb66(43)
      abb66(121)=abb66(120)+abb66(39)
      abb66(121)=abb66(121)*c4
      abb66(122)=abb66(43)*abb66(2)
      abb66(123)=abb66(25)*abb66(2)
      abb66(124)=abb66(122)+abb66(123)
      abb66(124)=abb66(124)*c3
      abb66(125)=abb66(43)+abb66(25)
      abb66(125)=abb66(125)*c2
      abb66(121)=-abb66(125)+abb66(124)-abb66(121)
      abb66(115)=-spbk4k2*abb66(115)
      abb66(11)=abb66(115)-abb66(11)
      abb66(11)=abb66(121)*abb66(11)
      abb66(110)=-spak1k2*abb66(110)
      abb66(115)=-spak1l6*abb66(87)
      abb66(110)=abb66(110)+abb66(115)
      abb66(110)=spak3k7*abb66(110)
      abb66(104)=spak1l6*abb66(104)
      abb66(59)=-spbl6k4*abb66(59)
      abb66(59)=abb66(59)+abb66(104)
      abb66(59)=abb66(26)*abb66(59)
      abb66(11)=abb66(110)+abb66(59)+abb66(11)
      abb66(11)=8.0_ki*abb66(11)
      abb66(59)=abb66(93)*spak1k7
      abb66(104)=2.0_ki*abb66(43)
      abb66(17)=abb66(104)*abb66(17)
      abb66(17)=abb66(17)-abb66(39)
      abb66(17)=abb66(17)*c4
      abb66(110)=abb66(104)*abb66(2)
      abb66(110)=abb66(110)-abb66(123)
      abb66(110)=abb66(110)*c3
      abb66(104)=abb66(104)-abb66(25)
      abb66(104)=abb66(104)*c2
      abb66(17)=-abb66(104)+abb66(110)-abb66(17)
      abb66(104)=spak1k7*abb66(17)
      abb66(110)=-abb66(41)*abb66(26)
      abb66(115)=abb66(110)*abb66(8)
      abb66(121)=abb66(63)*abb66(115)
      abb66(104)=abb66(104)+abb66(121)
      abb66(104)=16.0_ki*abb66(104)
      abb66(102)=-abb66(26)*abb66(102)
      abb66(97)=-abb66(97)*abb66(115)
      abb66(97)=abb66(102)+abb66(97)
      abb66(97)=8.0_ki*abb66(97)
      abb66(102)=-abb66(116)*abb66(118)
      abb66(52)=16.0_ki*abb66(52)
      abb66(115)=-spbk4k3*abb66(52)
      abb66(121)=32.0_ki*abb66(99)
      abb66(99)=16.0_ki*abb66(99)
      abb66(86)=8.0_ki*abb66(86)
      abb66(124)=spbk4k3*abb66(86)
      abb66(65)=-abb66(65)*abb66(35)
      abb66(35)=-abb66(35)*abb66(116)
      abb66(125)=16.0_ki*abb66(19)
      abb66(63)=spbk4k2*abb66(63)*abb66(125)
      abb66(116)=spbk4k2*abb66(15)*abb66(116)
      abb66(126)=8.0_ki*abb66(26)
      abb66(127)=-spal5l6*abb66(126)
      abb66(128)=8.0_ki*abb66(13)
      abb66(129)=abb66(37)*spak3k4
      abb66(27)=abb66(129)+abb66(27)
      abb66(129)=abb66(27)*spal5k7
      abb66(130)=16.0_ki*abb66(129)
      abb66(131)=16.0_ki*abb66(13)
      abb66(132)=abb66(82)-2.0_ki*abb66(91)
      abb66(132)=c4*abb66(132)
      abb66(133)=-abb66(114)+2.0_ki*abb66(113)
      abb66(133)=c3*abb66(133)
      abb66(134)=abb66(75)-2.0_ki*abb66(34)
      abb66(134)=c2*abb66(134)
      abb66(132)=abb66(134)+abb66(132)+abb66(133)
      abb66(132)=spak3k4*abb66(132)
      abb66(133)=abb66(69)-2.0_ki*abb66(109)
      abb66(133)=c4*abb66(133)
      abb66(134)=-abb66(112)+2.0_ki*abb66(111)
      abb66(134)=c3*abb66(134)
      abb66(135)=abb66(56)-2.0_ki*abb66(21)
      abb66(135)=c2*abb66(135)
      abb66(133)=abb66(135)+abb66(133)+abb66(134)
      abb66(133)=spbk2k1*abb66(133)
      abb66(132)=abb66(132)+abb66(133)
      abb66(132)=spal5k7*abb66(132)
      abb66(78)=-spak3k4*abb66(78)
      abb66(58)=abb66(78)-abb66(58)
      abb66(58)=spal6k7*abb66(58)
      abb66(18)=abb66(57)*abb66(18)
      abb66(57)=spak3k4*abb66(6)
      abb66(37)=abb66(57)*abb66(37)
      abb66(18)=abb66(18)+abb66(37)
      abb66(18)=abb66(41)*abb66(18)
      abb66(37)=-abb66(18)*abb66(70)
      abb66(37)=abb66(58)+abb66(132)+abb66(37)
      abb66(37)=16.0_ki*abb66(37)
      abb66(13)=abb66(129)-abb66(13)
      abb66(13)=8.0_ki*abb66(13)
      abb66(41)=abb66(82)-abb66(91)
      abb66(41)=c4*abb66(41)
      abb66(58)=-abb66(114)+abb66(113)
      abb66(58)=c3*abb66(58)
      abb66(34)=abb66(75)-abb66(34)
      abb66(34)=c2*abb66(34)
      abb66(34)=abb66(34)+abb66(41)+abb66(58)
      abb66(34)=spak3k4*abb66(34)
      abb66(41)=abb66(69)-abb66(109)
      abb66(41)=c4*abb66(41)
      abb66(58)=-abb66(112)+abb66(111)
      abb66(58)=c3*abb66(58)
      abb66(21)=abb66(56)-abb66(21)
      abb66(21)=c2*abb66(21)
      abb66(21)=abb66(21)+abb66(41)+abb66(58)
      abb66(21)=spbk2k1*abb66(21)
      abb66(21)=abb66(34)+abb66(21)
      abb66(21)=spak2l5*abb66(21)
      abb66(34)=-spak3k4*abb66(87)
      abb66(34)=abb66(84)+abb66(34)
      abb66(34)=spal5l6*abb66(34)
      abb66(18)=abb66(21)+abb66(34)-abb66(18)
      abb66(18)=8.0_ki*abb66(18)
      abb66(21)=-abb66(73)*abb66(57)
      abb66(21)=abb66(21)-abb66(88)
      abb66(21)=16.0_ki*abb66(21)
      abb66(27)=spal6k7*abb66(27)
      abb66(34)=abb66(107)*abb66(106)
      abb66(27)=abb66(27)+abb66(34)
      abb66(27)=8.0_ki*abb66(27)
      abb66(34)=8.0_ki*abb66(107)
      abb66(41)=spak3k7*abb66(68)
      abb66(52)=-spbk3k1*abb66(52)
      abb66(56)=32.0_ki*spbk3k1*abb66(105)
      abb66(57)=spbk3k1*abb66(86)
      abb66(58)=16.0_ki*spbk3k1
      abb66(22)=-abb66(22)*abb66(58)
      abb66(58)=abb66(93)*spal5k7
      abb66(17)=-spal5k7*abb66(17)
      abb66(19)=abb66(19)*abb66(64)
      abb66(64)=abb66(110)*abb66(6)
      abb66(68)=-abb66(70)*abb66(64)
      abb66(69)=-spal6k7*abb66(71)
      abb66(17)=abb66(69)+abb66(68)+abb66(19)+abb66(17)
      abb66(17)=16.0_ki*abb66(17)
      abb66(19)=-spal5k7*abb66(126)
      abb66(39)=-abb66(39)+abb66(120)
      abb66(39)=c4*abb66(39)
      abb66(68)=abb66(123)-abb66(122)
      abb66(68)=c3*abb66(68)
      abb66(25)=-abb66(25)+abb66(43)
      abb66(25)=c2*abb66(25)
      abb66(25)=abb66(25)+abb66(39)+abb66(68)
      abb66(25)=spak2l5*abb66(25)
      abb66(25)=-abb66(64)+abb66(25)
      abb66(25)=8.0_ki*abb66(25)
      abb66(39)=-abb66(6)*abb66(125)
      abb66(26)=-spal6k7*abb66(26)
      abb66(43)=abb66(15)*abb66(60)
      abb66(60)=spal5k7*abb66(118)
      abb66(26)=abb66(60)+abb66(43)+abb66(26)
      abb66(26)=8.0_ki*abb66(26)
      abb66(15)=-8.0_ki*abb66(15)
      R2d66=0.0_ki
      rat2 = rat2 + R2d66
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='66' value='", &
          & R2d66, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd66h6
