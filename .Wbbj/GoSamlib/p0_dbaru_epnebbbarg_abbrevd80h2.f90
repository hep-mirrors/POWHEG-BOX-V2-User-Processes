module     p0_dbaru_epnebbbarg_abbrevd80h2
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(139), public :: abb80
   complex(ki), public :: R2d80
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
      abb80(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb80(2)=NC**(-1)
      abb80(3)=es56**(-1)
      abb80(4)=spbl5k2**(-1)
      abb80(5)=spak2l6**(-1)
      abb80(6)=c3*abb80(2)
      abb80(7)=c4*abb80(2)**2
      abb80(8)=-c2+abb80(6)-abb80(7)
      abb80(9)=TR*gW
      abb80(9)=abb80(9)**2*i_*CVDU*abb80(3)*abb80(1)
      abb80(10)=abb80(9)*spak1e7
      abb80(11)=abb80(8)*abb80(10)
      abb80(12)=-spbk3k2*abb80(11)
      abb80(13)=abb80(12)*spak2k4
      abb80(14)=es12*spbl6k2
      abb80(15)=abb80(14)*abb80(13)
      abb80(16)=abb80(12)*spak3k4
      abb80(17)=spbl6k3*abb80(16)
      abb80(18)=-es12*abb80(17)
      abb80(18)=abb80(18)+abb80(15)
      abb80(19)=spal5k7*spbk7e7
      abb80(18)=abb80(18)*abb80(19)
      abb80(6)=-abb80(6)+abb80(7)+c2
      abb80(7)=abb80(4)*abb80(5)*mB**2
      abb80(10)=abb80(6)*abb80(7)*abb80(10)
      abb80(20)=spbk3k2**2
      abb80(21)=-abb80(20)*abb80(10)
      abb80(22)=abb80(21)*spak1k2
      abb80(23)=spak1l5*abb80(12)*spbl6k3
      abb80(22)=abb80(23)-abb80(22)
      abb80(22)=abb80(22)*spak3k4
      abb80(23)=es12*abb80(22)
      abb80(15)=-spak1l5*abb80(15)
      abb80(15)=abb80(23)+abb80(15)
      abb80(15)=spbe7k1*abb80(15)
      abb80(23)=spak2k7*spbk7e7
      abb80(21)=spak3k4*abb80(21)*abb80(23)
      abb80(24)=es12*abb80(21)
      abb80(15)=abb80(24)+abb80(18)+abb80(15)
      abb80(15)=4.0_ki*abb80(15)
      abb80(18)=-abb80(8)*abb80(9)*spbk3k2
      abb80(24)=abb80(18)*spbl6k2
      abb80(25)=abb80(24)*spak2k4
      abb80(26)=abb80(18)*spak3k4
      abb80(27)=abb80(26)*spbl6k3
      abb80(28)=abb80(25)-abb80(27)
      abb80(29)=es12*spak1l5*abb80(28)
      abb80(6)=abb80(6)*abb80(9)*abb80(7)
      abb80(30)=-abb80(20)*abb80(6)
      abb80(31)=abb80(30)*spak3k4
      abb80(32)=abb80(31)*spak1k2
      abb80(33)=es712-es71
      abb80(34)=abb80(32)*abb80(33)
      abb80(35)=spbk7k2*spak1k2
      abb80(36)=abb80(27)*abb80(35)
      abb80(37)=abb80(18)*spak2k4
      abb80(38)=spbl6k2*spak1k2
      abb80(39)=-spbk7k2*abb80(38)*abb80(37)
      abb80(36)=abb80(36)+abb80(39)
      abb80(36)=spal5k7*abb80(36)
      abb80(29)=abb80(36)+abb80(34)+abb80(29)
      abb80(29)=8.0_ki*abb80(29)
      abb80(34)=spbe7k2*spak1k2
      abb80(36)=abb80(34)*spal5e7
      abb80(39)=abb80(25)*abb80(36)
      abb80(40)=abb80(36)*abb80(27)
      abb80(39)=abb80(39)-abb80(40)
      abb80(41)=8.0_ki*abb80(39)
      abb80(42)=spbk7l6*spae7k7
      abb80(43)=abb80(42)*abb80(34)
      abb80(44)=abb80(18)*spak4l5
      abb80(45)=abb80(43)*abb80(44)
      abb80(46)=abb80(12)*spak4l5
      abb80(47)=abb80(46)*spbl6k1
      abb80(48)=abb80(47)*abb80(34)
      abb80(46)=abb80(46)*spbe7l6
      abb80(49)=abb80(46)*es12
      abb80(45)=abb80(49)+abb80(45)-abb80(48)
      abb80(48)=spbk7k2*spae7k7
      abb80(49)=abb80(48)*abb80(34)
      abb80(7)=abb80(7)*abb80(18)
      abb80(50)=abb80(7)*spak2k4
      abb80(51)=abb80(49)*abb80(50)
      abb80(51)=abb80(51)+abb80(45)
      abb80(51)=8.0_ki*abb80(51)
      abb80(52)=16.0_ki*abb80(44)
      abb80(53)=abb80(52)*abb80(38)
      abb80(54)=-abb80(11)*spbk3k1
      abb80(55)=abb80(54)*spak1k4
      abb80(56)=-abb80(19)*abb80(55)
      abb80(57)=-abb80(11)*spak1l5
      abb80(58)=abb80(57)*spbk3k1
      abb80(59)=spbe7k1*spak1k4
      abb80(60)=abb80(58)*abb80(59)
      abb80(56)=abb80(60)+abb80(56)
      abb80(56)=spbl6k2*abb80(56)
      abb80(60)=-spbk3k2*abb80(10)
      abb80(61)=abb80(60)*spak3k4
      abb80(62)=abb80(34)*spbk3k1
      abb80(63)=es12*spbe7k3
      abb80(62)=abb80(62)-abb80(63)
      abb80(64)=abb80(61)*abb80(62)
      abb80(65)=abb80(7)*spak3k4
      abb80(66)=spbk7k3*spae7k7
      abb80(67)=abb80(66)*abb80(34)
      abb80(68)=abb80(67)*abb80(65)
      abb80(56)=abb80(68)+abb80(45)+abb80(64)+abb80(56)
      abb80(56)=8.0_ki*abb80(56)
      abb80(64)=spbk7k3*spal5k7
      abb80(68)=spbk3k1*spak1l5
      abb80(68)=-abb80(64)+abb80(68)
      abb80(8)=abb80(9)*abb80(8)
      abb80(9)=abb80(8)*spak1k4
      abb80(69)=abb80(9)*spbl6k2
      abb80(68)=abb80(69)*abb80(68)
      abb80(70)=abb80(44)*abb80(38)
      abb80(32)=abb80(70)-abb80(32)+abb80(68)
      abb80(32)=16.0_ki*abb80(32)
      abb80(68)=abb80(9)*spbe7k3
      abb80(71)=spal5e7*spbl6k2
      abb80(72)=abb80(68)*abb80(71)
      abb80(73)=16.0_ki*abb80(72)
      abb80(74)=abb80(10)*spbk2k1
      abb80(75)=spbe7k3*spak1k4
      abb80(76)=abb80(74)*abb80(75)
      abb80(77)=abb80(10)*spbk3k1
      abb80(78)=spbe7k2*spak1k4
      abb80(79)=abb80(77)*abb80(78)
      abb80(76)=abb80(76)-abb80(79)
      abb80(79)=abb80(48)*abb80(6)
      abb80(80)=abb80(79)*abb80(75)
      abb80(81)=abb80(80)-abb80(76)
      abb80(81)=16.0_ki*abb80(81)
      abb80(82)=abb80(7)*spak1k4
      abb80(83)=32.0_ki*abb80(82)
      abb80(84)=abb80(13)*spbl6k2
      abb80(17)=-abb80(17)+abb80(84)
      abb80(17)=abb80(17)*abb80(19)
      abb80(84)=-spak1l5*abb80(84)
      abb80(22)=abb80(22)+abb80(84)
      abb80(22)=spbe7k1*abb80(22)
      abb80(17)=abb80(21)+abb80(22)+abb80(17)-abb80(39)
      abb80(17)=8.0_ki*abb80(17)
      abb80(21)=spak1k2*abb80(30)
      abb80(22)=-abb80(18)*spbl6k3*spak1l5
      abb80(21)=abb80(21)+abb80(22)
      abb80(21)=spak3k4*abb80(21)
      abb80(22)=spak1l5*abb80(25)
      abb80(21)=abb80(21)+abb80(22)
      abb80(21)=16.0_ki*abb80(21)
      abb80(22)=abb80(60)*spak2k4
      abb80(30)=abb80(22)*spbe7k2
      abb80(30)=abb80(30)-abb80(46)
      abb80(39)=16.0_ki*abb80(30)
      abb80(84)=-spbe7k3*abb80(61)
      abb80(46)=abb80(46)+abb80(84)-abb80(72)
      abb80(46)=16.0_ki*abb80(46)
      abb80(23)=abb80(23)*abb80(60)
      abb80(84)=abb80(23)*spak1k4
      abb80(85)=abb80(19)*spbl6k3
      abb80(86)=abb80(85)*abb80(11)*spak1k4
      abb80(87)=abb80(57)*spbl6k3
      abb80(88)=abb80(87)*abb80(59)
      abb80(86)=abb80(84)+abb80(86)+abb80(88)
      abb80(86)=spbk2k1*abb80(86)
      abb80(88)=abb80(42)*abb80(9)
      abb80(89)=spbe7k2*abb80(88)
      abb80(90)=-abb80(11)*spbe7l6
      abb80(91)=abb80(90)*spak1k4
      abb80(92)=-spbk2k1*abb80(91)
      abb80(89)=abb80(92)+abb80(89)
      abb80(89)=spak4l5*abb80(89)
      abb80(92)=-spak2k4*abb80(79)
      abb80(93)=-abb80(11)*spbl6k1
      abb80(94)=abb80(93)*spak4l5
      abb80(92)=abb80(92)+abb80(94)
      abb80(92)=abb80(78)*abb80(92)
      abb80(89)=abb80(92)+abb80(89)
      abb80(89)=spbk4k3*abb80(89)
      abb80(92)=abb80(7)*abb80(49)
      abb80(95)=abb80(24)*abb80(36)
      abb80(92)=abb80(92)+abb80(95)
      abb80(92)=spak2k4*abb80(92)
      abb80(59)=-es12*abb80(60)*abb80(59)
      abb80(95)=abb80(42)*abb80(18)
      abb80(96)=abb80(12)*spbl6k1
      abb80(95)=abb80(95)-abb80(96)
      abb80(97)=-abb80(78)*abb80(95)
      abb80(12)=abb80(12)*spbe7l6
      abb80(98)=-spbk2k1*spak1k4*abb80(12)
      abb80(97)=abb80(98)+abb80(97)
      abb80(97)=spak2l5*abb80(97)
      abb80(40)=abb80(97)+abb80(89)+abb80(59)-abb80(40)+abb80(92)+abb80(45)+abb&
      &80(86)
      abb80(40)=4.0_ki*abb80(40)
      abb80(45)=spal5k7*spbk7k2
      abb80(59)=spbk2k1*spak1l5
      abb80(59)=abb80(59)-abb80(45)
      abb80(86)=abb80(8)*spbl6k3
      abb80(89)=abb80(86)*spak1k4
      abb80(59)=abb80(89)*abb80(59)
      abb80(92)=-abb80(82)*abb80(33)
      abb80(97)=spbk4k3*spak4l5
      abb80(69)=abb80(69)*abb80(97)
      abb80(98)=-spak2l5*spak1k4*abb80(24)
      abb80(59)=abb80(98)+abb80(69)+abb80(70)+abb80(92)+abb80(59)
      abb80(59)=8.0_ki*abb80(59)
      abb80(69)=abb80(86)*spal5e7
      abb80(70)=abb80(69)*abb80(78)
      abb80(92)=8.0_ki*abb80(70)
      abb80(98)=abb80(66)*abb80(6)
      abb80(99)=abb80(78)*abb80(98)
      abb80(72)=abb80(99)-abb80(80)+abb80(72)+2.0_ki*abb80(76)
      abb80(72)=8.0_ki*abb80(72)
      abb80(30)=-abb80(70)-abb80(30)
      abb80(30)=8.0_ki*abb80(30)
      abb80(70)=4.0_ki*abb80(70)
      abb80(76)=abb80(31)*spak2e7
      abb80(27)=abb80(27)*spal5e7
      abb80(27)=abb80(27)-abb80(76)
      abb80(25)=abb80(25)*spal5e7
      abb80(25)=abb80(25)-abb80(27)
      abb80(25)=8.0_ki*abb80(25)
      abb80(22)=abb80(22)*spbk2k1
      abb80(76)=abb80(44)*abb80(42)
      abb80(47)=abb80(47)-abb80(76)
      abb80(22)=abb80(22)-abb80(47)
      abb80(76)=abb80(50)*abb80(48)
      abb80(76)=abb80(76)+abb80(22)
      abb80(76)=8.0_ki*abb80(76)
      abb80(61)=-spbk3k1*abb80(61)
      abb80(80)=-abb80(66)*abb80(65)
      abb80(47)=abb80(80)+abb80(61)+abb80(47)
      abb80(47)=8.0_ki*abb80(47)
      abb80(61)=-abb80(7)*abb80(48)
      abb80(24)=-spal5e7*abb80(24)
      abb80(24)=abb80(61)+abb80(24)
      abb80(24)=spak2k4*abb80(24)
      abb80(22)=abb80(24)+abb80(27)-abb80(22)
      abb80(22)=4.0_ki*abb80(22)
      abb80(24)=abb80(16)*abb80(62)
      abb80(27)=abb80(49)*abb80(37)
      abb80(61)=-abb80(26)*abb80(67)
      abb80(24)=abb80(61)+abb80(27)+abb80(24)
      abb80(24)=4.0_ki*abb80(24)
      abb80(27)=8.0_ki*abb80(8)
      abb80(20)=spak3k4*spak1k2*abb80(20)*abb80(27)
      abb80(61)=abb80(78)*abb80(54)
      abb80(62)=-abb80(11)*spbk2k1
      abb80(78)=abb80(62)*abb80(75)
      abb80(61)=abb80(61)-abb80(78)
      abb80(78)=abb80(48)*abb80(68)
      abb80(78)=abb80(78)-abb80(61)
      abb80(78)=8.0_ki*abb80(78)
      abb80(80)=abb80(18)*spak1k4
      abb80(99)=16.0_ki*abb80(80)
      abb80(100)=-spbe7k3*abb80(16)
      abb80(101)=spbe7k2*abb80(13)
      abb80(100)=abb80(100)+abb80(101)
      abb80(100)=8.0_ki*abb80(100)
      abb80(101)=abb80(66)*abb80(9)*spbe7k2
      abb80(61)=abb80(101)+abb80(61)
      abb80(61)=4.0_ki*abb80(61)
      abb80(80)=-8.0_ki*abb80(80)
      abb80(101)=-abb80(48)*abb80(37)
      abb80(16)=-spbk3k1*abb80(16)
      abb80(13)=spbk2k1*abb80(13)
      abb80(102)=abb80(26)*abb80(66)
      abb80(13)=abb80(102)+abb80(13)+abb80(101)+abb80(16)
      abb80(13)=4.0_ki*abb80(13)
      abb80(16)=abb80(93)*abb80(75)
      abb80(101)=abb80(42)*spbe7k3
      abb80(102)=abb80(101)*abb80(9)
      abb80(91)=abb80(91)*spbk3k1
      abb80(16)=-abb80(91)+abb80(16)+abb80(102)
      abb80(91)=8.0_ki*abb80(16)
      abb80(102)=16.0_ki*abb80(89)
      abb80(16)=-4.0_ki*abb80(16)
      abb80(103)=-8.0_ki*abb80(89)
      abb80(104)=abb80(8)*spak4l5
      abb80(105)=abb80(104)*abb80(43)
      abb80(106)=abb80(94)*abb80(34)
      abb80(107)=abb80(90)*spak4l5
      abb80(108)=abb80(107)*es12
      abb80(105)=-abb80(108)+abb80(106)+abb80(105)
      abb80(106)=-spbk4k2*abb80(105)
      abb80(108)=abb80(43)*abb80(18)
      abb80(96)=abb80(96)*abb80(34)
      abb80(109)=abb80(12)*es12
      abb80(96)=-abb80(108)+abb80(96)-abb80(109)
      abb80(108)=-spak3l5*abb80(96)
      abb80(109)=abb80(57)*spbe7k1
      abb80(110)=-abb80(19)*abb80(11)
      abb80(109)=abb80(109)-abb80(110)
      abb80(111)=-abb80(14)*abb80(109)
      abb80(112)=abb80(79)*abb80(34)
      abb80(113)=es34-es234
      abb80(114)=abb80(112)*abb80(113)
      abb80(106)=abb80(108)+abb80(106)+abb80(114)+abb80(111)
      abb80(106)=4.0_ki*abb80(106)
      abb80(108)=-spbk4k2*spak4l5
      abb80(108)=abb80(108)+abb80(45)
      abb80(111)=abb80(38)*abb80(8)
      abb80(108)=abb80(111)*abb80(108)
      abb80(114)=abb80(8)*spak1l5
      abb80(14)=-abb80(114)*abb80(14)
      abb80(115)=abb80(18)*spak3l5
      abb80(116)=abb80(38)*abb80(115)
      abb80(14)=abb80(116)+abb80(14)+abb80(108)
      abb80(14)=8.0_ki*abb80(14)
      abb80(108)=abb80(27)*spbl6k2
      abb80(116)=-abb80(36)*abb80(108)
      abb80(117)=abb80(79)*spbe7k3
      abb80(118)=spbe7k3*abb80(74)
      abb80(118)=-abb80(117)+abb80(118)
      abb80(118)=spak1k3*abb80(118)
      abb80(119)=abb80(74)-abb80(79)
      abb80(120)=spbe7k4*spak1k4*abb80(119)
      abb80(121)=abb80(114)*abb80(42)
      abb80(122)=abb80(57)*spbl6k1
      abb80(123)=-abb80(121)-abb80(122)
      abb80(123)=spbe7k2*abb80(123)
      abb80(124)=abb80(10)*spbe7k2
      abb80(125)=es567-es234
      abb80(126)=-es12+abb80(125)
      abb80(126)=abb80(124)*abb80(126)
      abb80(127)=spak1k7*spbk7e7
      abb80(74)=abb80(74)*abb80(127)
      abb80(57)=abb80(57)*spbe7l6
      abb80(128)=spbk2k1*abb80(57)
      abb80(74)=abb80(74)+abb80(120)+abb80(118)+abb80(128)-abb80(112)+abb80(126&
      &)+abb80(123)
      abb80(74)=8.0_ki*abb80(74)
      abb80(118)=spbk4k2*spak1k4
      abb80(120)=-spak1k7*spbk7k2
      abb80(118)=abb80(120)+abb80(118)
      abb80(118)=abb80(6)*abb80(118)
      abb80(120)=abb80(114)*spbl6k2
      abb80(123)=abb80(7)*spak1k3
      abb80(118)=-abb80(120)+abb80(123)+abb80(118)
      abb80(118)=16.0_ki*abb80(118)
      abb80(126)=16.0_ki*abb80(124)
      abb80(128)=abb80(124)*abb80(113)
      abb80(129)=abb80(8)*abb80(36)
      abb80(109)=abb80(129)-abb80(109)
      abb80(109)=spbl6k2*abb80(109)
      abb80(107)=spbk4k2*abb80(107)
      abb80(12)=spak3l5*abb80(12)
      abb80(12)=abb80(12)+abb80(107)+abb80(109)+abb80(128)
      abb80(12)=8.0_ki*abb80(12)
      abb80(107)=-16.0_ki*abb80(120)
      abb80(109)=-32.0_ki*abb80(124)
      abb80(120)=4.0_ki*abb80(8)
      abb80(36)=-spbl6k2*abb80(36)*abb80(120)
      abb80(124)=8.0_ki*abb80(124)
      abb80(128)=abb80(6)*abb80(34)
      abb80(129)=abb80(114)*spbe7l6
      abb80(128)=abb80(129)+abb80(128)
      abb80(129)=8.0_ki*abb80(128)
      abb80(130)=-8.0_ki*abb80(6)*abb80(127)
      abb80(128)=-4.0_ki*abb80(128)
      abb80(131)=abb80(119)*abb80(113)
      abb80(42)=abb80(42)*abb80(104)
      abb80(42)=abb80(94)+abb80(42)
      abb80(42)=spbk4k2*abb80(42)
      abb80(94)=-spak3l5*abb80(95)
      abb80(42)=abb80(42)+abb80(94)+abb80(131)
      abb80(42)=4.0_ki*abb80(42)
      abb80(94)=abb80(27)*abb80(71)
      abb80(95)=-8.0_ki*abb80(119)
      abb80(71)=abb80(71)*abb80(120)
      abb80(119)=abb80(10)*es12
      abb80(131)=abb80(119)-abb80(122)
      abb80(132)=4.0_ki*abb80(131)
      abb80(133)=-spbk7e7*abb80(132)
      abb80(35)=abb80(6)*abb80(35)
      abb80(134)=spbk7l6*abb80(114)
      abb80(35)=abb80(35)+abb80(134)
      abb80(35)=8.0_ki*abb80(35)
      abb80(134)=8.0_ki*spbk7e7*abb80(10)
      abb80(49)=-abb80(49)*abb80(120)
      abb80(135)=-8.0_ki*abb80(11)
      abb80(136)=spbe7k2*abb80(135)
      abb80(120)=-abb80(127)*abb80(120)
      abb80(137)=abb80(8)*abb80(48)
      abb80(62)=abb80(137)+abb80(62)
      abb80(62)=4.0_ki*abb80(62)
      abb80(137)=4.0_ki*spbk7e7
      abb80(137)=abb80(11)*abb80(137)
      abb80(127)=-abb80(127)+abb80(34)
      abb80(127)=abb80(93)*abb80(127)
      abb80(43)=abb80(8)*abb80(43)
      abb80(138)=-spbe7k3*abb80(93)
      abb80(139)=-abb80(8)*abb80(101)
      abb80(138)=abb80(138)+abb80(139)
      abb80(138)=spak1k3*abb80(138)
      abb80(93)=-spak1k4*abb80(93)
      abb80(88)=abb80(93)-abb80(88)
      abb80(88)=spbe7k4*abb80(88)
      abb80(93)=-abb80(90)*abb80(125)
      abb80(43)=abb80(88)+abb80(138)+abb80(43)+abb80(93)+abb80(127)
      abb80(43)=4.0_ki*abb80(43)
      abb80(88)=abb80(86)*spak1k3
      abb80(88)=abb80(88)-abb80(111)
      abb80(93)=-spak1k7*spbk7l6*abb80(8)
      abb80(9)=-spbl6k4*abb80(9)
      abb80(9)=abb80(9)+abb80(93)-abb80(88)
      abb80(9)=8.0_ki*abb80(9)
      abb80(93)=8.0_ki*abb80(90)
      abb80(90)=-4.0_ki*abb80(90)
      abb80(60)=abb80(60)*spak1k2
      abb80(60)=abb80(60)-abb80(87)
      abb80(87)=abb80(60)*spbe7k1
      abb80(110)=abb80(110)*spbl6k3
      abb80(110)=-abb80(23)+abb80(110)+abb80(87)
      abb80(125)=es23-es123
      abb80(110)=-abb80(110)*abb80(125)
      abb80(112)=-spak2k4*abb80(112)
      abb80(105)=abb80(112)+abb80(105)
      abb80(105)=spbk4k3*abb80(105)
      abb80(96)=spak2l5*abb80(96)
      abb80(112)=2.0_ki*es12
      abb80(127)=spbl6k3*abb80(11)*abb80(112)
      abb80(138)=abb80(38)*abb80(54)
      abb80(127)=abb80(127)+abb80(138)
      abb80(19)=abb80(127)*abb80(19)
      abb80(60)=-abb80(60)*abb80(112)
      abb80(58)=-abb80(38)*abb80(58)
      abb80(58)=abb80(60)+abb80(58)
      abb80(58)=spbe7k1*abb80(58)
      abb80(23)=abb80(23)*abb80(112)
      abb80(19)=abb80(96)+abb80(23)+abb80(105)+abb80(19)+abb80(58)+abb80(110)
      abb80(19)=4.0_ki*abb80(19)
      abb80(23)=-spbk3k1*abb80(114)
      abb80(58)=-spak2l5*abb80(18)
      abb80(23)=abb80(58)+abb80(23)
      abb80(23)=abb80(38)*abb80(23)
      abb80(38)=abb80(86)*spak1l5
      abb80(58)=abb80(7)*spak1k2
      abb80(60)=abb80(38)-abb80(58)
      abb80(96)=abb80(60)*abb80(125)
      abb80(88)=-abb80(64)*abb80(88)
      abb80(105)=-abb80(58)+2.0_ki*abb80(38)
      abb80(105)=es12*abb80(105)
      abb80(33)=-abb80(58)*abb80(33)
      abb80(45)=-spak1k2*abb80(86)*abb80(45)
      abb80(97)=abb80(111)*abb80(97)
      abb80(110)=spak2k7*spbk7k3
      abb80(112)=abb80(123)*abb80(110)
      abb80(23)=abb80(112)+abb80(97)+abb80(45)+abb80(105)+abb80(88)+abb80(96)+a&
      &bb80(33)+abb80(23)
      abb80(23)=8.0_ki*abb80(23)
      abb80(33)=abb80(86)*abb80(34)
      abb80(45)=abb80(111)*spbe7k3
      abb80(33)=abb80(33)-abb80(45)
      abb80(33)=abb80(33)*spal5e7
      abb80(7)=abb80(7)*spak2e7
      abb80(7)=abb80(7)-abb80(69)
      abb80(45)=spak1k3*spbe7k3
      abb80(69)=-abb80(45)*abb80(7)
      abb80(33)=abb80(33)+abb80(69)
      abb80(69)=8.0_ki*abb80(33)
      abb80(86)=abb80(101)*abb80(114)
      abb80(88)=abb80(122)*spbe7k3
      abb80(96)=abb80(57)*spbk3k1
      abb80(86)=-abb80(96)+abb80(86)+abb80(88)
      abb80(77)=abb80(77)*abb80(34)
      abb80(88)=abb80(119)*spbe7k3
      abb80(77)=abb80(77)-abb80(88)
      abb80(88)=abb80(117)*spak1k2
      abb80(88)=abb80(77)+abb80(88)+abb80(86)
      abb80(96)=8.0_ki*abb80(88)
      abb80(97)=16.0_ki*abb80(60)
      abb80(101)=abb80(45)+abb80(34)
      abb80(101)=abb80(98)*abb80(101)
      abb80(77)=-abb80(77)+abb80(86)+abb80(101)
      abb80(77)=8.0_ki*abb80(77)
      abb80(38)=abb80(58)+abb80(38)
      abb80(38)=16.0_ki*abb80(38)
      abb80(33)=abb80(88)+abb80(33)
      abb80(33)=4.0_ki*abb80(33)
      abb80(60)=8.0_ki*abb80(60)
      abb80(11)=-abb80(11)*abb80(63)
      abb80(54)=abb80(34)*abb80(54)
      abb80(11)=abb80(11)-abb80(54)
      abb80(45)=abb80(66)*abb80(45)
      abb80(48)=-spbe7k3*spak1k2*abb80(48)
      abb80(45)=abb80(45)+abb80(67)+abb80(48)
      abb80(8)=abb80(8)*abb80(45)
      abb80(8)=abb80(8)-2.0_ki*abb80(11)
      abb80(8)=4.0_ki*abb80(8)
      abb80(11)=16.0_ki*abb80(18)
      abb80(11)=-spak1k2*abb80(11)
      abb80(18)=abb80(79)*spak1k2
      abb80(18)=abb80(121)+abb80(18)-abb80(131)
      abb80(18)=spbe7k4*abb80(18)
      abb80(34)=abb80(10)*abb80(34)
      abb80(34)=abb80(34)-abb80(57)
      abb80(34)=spbk4k1*abb80(34)
      abb80(18)=abb80(18)+abb80(34)
      abb80(18)=4.0_ki*abb80(18)
      abb80(34)=-spbk4k2*spak1k2*abb80(6)
      abb80(45)=spbl6k4*abb80(114)
      abb80(34)=abb80(34)+abb80(45)
      abb80(34)=8.0_ki*abb80(34)
      abb80(45)=spak1k4*abb80(87)
      abb80(45)=-abb80(84)+abb80(45)
      abb80(45)=spbk3k1*abb80(45)
      abb80(48)=abb80(85)*abb80(55)
      abb80(45)=abb80(48)+abb80(45)
      abb80(45)=4.0_ki*abb80(45)
      abb80(48)=spak1k4*abb80(58)
      abb80(54)=-spak1l5*abb80(89)
      abb80(48)=abb80(48)+abb80(54)
      abb80(48)=spbk3k1*abb80(48)
      abb80(54)=abb80(89)*abb80(64)
      abb80(55)=-abb80(82)*abb80(110)
      abb80(48)=abb80(55)+abb80(48)+abb80(54)
      abb80(48)=8.0_ki*abb80(48)
      abb80(7)=-abb80(75)*abb80(7)
      abb80(54)=8.0_ki*abb80(7)
      abb80(55)=-8.0_ki*abb80(75)*abb80(98)
      abb80(7)=-4.0_ki*abb80(7)
      abb80(57)=-4.0_ki*abb80(66)*abb80(68)
      abb80(58)=4.0_ki*abb80(88)
      abb80(28)=spal5k7*abb80(28)
      abb80(31)=spak2k7*abb80(31)
      abb80(28)=abb80(28)+abb80(31)
      abb80(28)=8.0_ki*abb80(28)
      abb80(31)=-spal5k7*abb80(108)
      abb80(44)=-8.0_ki*abb80(44)
      abb80(63)=spbk4k2*abb80(104)
      abb80(63)=abb80(63)-abb80(115)
      abb80(63)=8.0_ki*abb80(63)
      abb80(64)=-16.0_ki*abb80(65)
      abb80(26)=8.0_ki*abb80(26)
      abb80(65)=16.0_ki*abb80(50)
      abb80(50)=-8.0_ki*abb80(50)
      abb80(37)=-8.0_ki*abb80(37)
      abb80(66)=-spbe7k1*abb80(132)
      abb80(67)=es12-abb80(113)
      abb80(67)=abb80(6)*abb80(67)
      abb80(68)=spbl6k1*abb80(114)
      abb80(67)=abb80(68)+abb80(67)
      abb80(67)=8.0_ki*abb80(67)
      abb80(10)=16.0_ki*spbe7k1*abb80(10)
      abb80(6)=-16.0_ki*abb80(6)
      abb80(68)=-spbe7k1*abb80(135)
      R2d80=0.0_ki
      rat2 = rat2 + R2d80
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='80' value='", &
          & R2d80, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd80h2
