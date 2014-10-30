module     p0_dbaru_epnebbbarg_abbrevd74h6
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh6
   implicit none
   private
   complex(ki), dimension(143), public :: abb74
   complex(ki), public :: R2d74
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
      abb74(1)=1.0_ki/(-mB**2+es67)
      abb74(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb74(3)=NC**(-1)
      abb74(4)=sqrt2**(-1)
      abb74(5)=spbk7k2**(-1)
      abb74(6)=spak2l6**(-1)
      abb74(7)=spbl5k2**(-1)
      abb74(8)=spak2l5**(-1)
      abb74(9)=sqrt(mB**2)
      abb74(10)=abb74(4)*i_*CVDU*abb74(2)*abb74(1)
      abb74(11)=TR*gW
      abb74(11)=abb74(11)**2
      abb74(12)=abb74(10)*abb74(11)*abb74(5)
      abb74(13)=abb74(12)*spak1l5
      abb74(14)=abb74(3)**2
      abb74(15)=abb74(13)*abb74(14)
      abb74(16)=mB**2
      abb74(17)=abb74(15)*abb74(16)
      abb74(18)=abb74(13)*abb74(16)
      abb74(17)=abb74(17)+abb74(18)
      abb74(19)=abb74(17)*abb74(6)
      abb74(20)=spak1k4*c2
      abb74(21)=abb74(19)*abb74(20)
      abb74(22)=c3*abb74(3)
      abb74(23)=2.0_ki*abb74(22)
      abb74(18)=abb74(18)*abb74(23)
      abb74(24)=spak1k4*abb74(6)
      abb74(25)=abb74(24)*abb74(18)
      abb74(21)=abb74(25)-abb74(21)
      abb74(15)=abb74(15)+abb74(13)
      abb74(25)=mB*abb74(15)
      abb74(26)=abb74(25)*abb74(6)
      abb74(27)=abb74(26)*abb74(20)
      abb74(28)=2.0_ki*abb74(13)
      abb74(29)=mB*abb74(22)
      abb74(28)=abb74(28)*abb74(29)
      abb74(30)=abb74(24)*abb74(28)
      abb74(27)=abb74(30)-abb74(27)
      abb74(27)=abb74(27)*abb74(9)
      abb74(30)=abb74(21)-abb74(27)
      abb74(31)=spak1k7*spbk2k1
      abb74(32)=abb74(30)*abb74(31)
      abb74(33)=es712-es71
      abb74(34)=abb74(33)-es12
      abb74(35)=abb74(32)*abb74(34)
      abb74(36)=spbl6k2*c2
      abb74(37)=abb74(15)*abb74(36)
      abb74(38)=abb74(37)*spak1k4
      abb74(13)=abb74(23)*abb74(13)
      abb74(39)=spak1k4*spbl6k2
      abb74(40)=abb74(39)*abb74(13)
      abb74(38)=abb74(40)-abb74(38)
      abb74(40)=abb74(38)*abb74(9)
      abb74(41)=abb74(25)*abb74(36)
      abb74(42)=abb74(41)*spak1k4
      abb74(43)=abb74(28)*abb74(39)
      abb74(40)=-abb74(42)+abb74(43)-abb74(40)
      abb74(42)=abb74(31)*abb74(9)
      abb74(43)=abb74(40)*abb74(42)
      abb74(44)=abb74(36)*abb74(17)*abb74(24)
      abb74(45)=abb74(41)*abb74(24)
      abb74(46)=abb74(28)*abb74(6)
      abb74(47)=abb74(46)*abb74(39)
      abb74(45)=abb74(47)-abb74(45)
      abb74(45)=abb74(45)*abb74(9)
      abb74(47)=abb74(18)*abb74(6)
      abb74(48)=abb74(47)*abb74(39)
      abb74(44)=abb74(45)+abb74(44)-abb74(48)
      abb74(48)=spak1l6*spak2k7
      abb74(49)=abb74(48)*spbk2k1
      abb74(50)=abb74(44)*abb74(49)
      abb74(51)=abb74(7)*c2
      abb74(52)=abb74(17)*abb74(51)
      abb74(53)=spbl6k2**2
      abb74(54)=abb74(53)*spak1k4
      abb74(55)=-abb74(52)*abb74(54)
      abb74(56)=abb74(53)*abb74(18)
      abb74(57)=abb74(7)*spak1k4
      abb74(58)=abb74(57)*abb74(56)
      abb74(55)=abb74(55)+abb74(58)
      abb74(58)=abb74(8)*spal6k7
      abb74(59)=abb74(58)*es12
      abb74(55)=abb74(55)*abb74(59)
      abb74(35)=abb74(55)+abb74(50)+abb74(43)+abb74(35)
      abb74(35)=spbk3k1*abb74(35)
      abb74(43)=abb74(30)*abb74(34)
      abb74(40)=abb74(9)*abb74(40)
      abb74(40)=abb74(40)+abb74(43)
      abb74(43)=spak4k7*spbk2k1
      abb74(40)=abb74(43)*abb74(40)
      abb74(14)=abb74(14)+1.0_ki
      abb74(50)=abb74(12)*abb74(14)
      abb74(55)=mB*abb74(50)
      abb74(60)=abb74(55)*abb74(51)
      abb74(61)=2.0_ki*abb74(12)
      abb74(29)=abb74(29)*abb74(61)
      abb74(62)=abb74(29)*abb74(7)
      abb74(63)=abb74(60)-abb74(62)
      abb74(63)=abb74(63)*abb74(9)
      abb74(12)=abb74(16)*abb74(12)
      abb74(16)=abb74(12)*abb74(14)
      abb74(64)=abb74(16)*abb74(51)
      abb74(12)=abb74(23)*abb74(12)
      abb74(23)=abb74(12)*abb74(7)
      abb74(65)=abb74(64)-abb74(23)
      abb74(66)=abb74(63)-abb74(65)
      abb74(67)=spal6k7*spbk2k1
      abb74(68)=-abb74(67)*abb74(66)*abb74(39)**2
      abb74(69)=spak2k7*spbk2k1
      abb74(44)=spak4l6*abb74(44)*abb74(69)
      abb74(70)=abb74(64)*spak1k4
      abb74(12)=abb74(12)*abb74(57)
      abb74(70)=abb74(70)-abb74(12)
      abb74(71)=abb74(70)*abb74(53)
      abb74(72)=spak4l5*spal6k7
      abb74(73)=abb74(72)*abb74(8)
      abb74(74)=-es12*abb74(71)*abb74(73)
      abb74(40)=abb74(74)+abb74(44)+abb74(68)+abb74(40)
      abb74(40)=spbk4k3*abb74(40)
      abb74(44)=spak1l5**2
      abb74(50)=abb74(50)*abb74(44)
      abb74(68)=-abb74(50)*abb74(53)*abb74(20)
      abb74(22)=abb74(22)*abb74(44)*abb74(61)
      abb74(44)=abb74(54)*abb74(22)
      abb74(44)=abb74(68)+abb74(44)
      abb74(44)=spbk3k1*spal6k7*abb74(44)
      abb74(54)=abb74(15)*abb74(20)
      abb74(61)=-abb74(53)*abb74(54)
      abb74(68)=abb74(53)*abb74(13)
      abb74(74)=spak1k4*abb74(68)
      abb74(61)=abb74(61)+abb74(74)
      abb74(61)=spbk4k3*abb74(61)*abb74(72)
      abb74(44)=abb74(44)+abb74(61)
      abb74(44)=spbl5k1*abb74(44)
      abb74(35)=abb74(44)+abb74(40)+abb74(35)
      abb74(35)=8.0_ki*abb74(35)
      abb74(40)=abb74(38)*spbk3k1
      abb74(44)=abb74(40)*abb74(31)
      abb74(61)=abb74(38)*spbk2k1
      abb74(74)=abb74(61)*spbk4k3
      abb74(75)=abb74(74)*spak4k7
      abb74(44)=abb74(44)+abb74(75)
      abb74(44)=16.0_ki*abb74(44)
      abb74(75)=spbk3k2*abb74(6)
      abb74(76)=abb74(75)*c2
      abb74(77)=abb74(25)*abb74(76)
      abb74(78)=abb74(28)*abb74(75)
      abb74(77)=abb74(77)-abb74(78)
      abb74(77)=abb74(77)*abb74(9)
      abb74(76)=abb74(17)*abb74(76)
      abb74(79)=abb74(18)*abb74(75)
      abb74(76)=abb74(77)-abb74(76)+abb74(79)
      abb74(80)=abb74(76)*spak4k7
      abb74(81)=abb74(80)*es12
      abb74(82)=abb74(17)*abb74(75)
      abb74(83)=abb74(82)*abb74(36)
      abb74(84)=abb74(41)*abb74(75)
      abb74(85)=abb74(78)*spbl6k2
      abb74(85)=abb74(85)-abb74(84)
      abb74(85)=abb74(85)*abb74(9)
      abb74(86)=abb74(79)*spbl6k2
      abb74(83)=-abb74(86)+abb74(83)+abb74(85)
      abb74(87)=spak4l6*spak2k7
      abb74(88)=abb74(83)*abb74(87)
      abb74(89)=abb74(36)*spbk3k2
      abb74(90)=abb74(89)*abb74(25)
      abb74(91)=spbl6k2*spbk3k2
      abb74(92)=abb74(91)*abb74(28)
      abb74(90)=abb74(90)-abb74(92)
      abb74(92)=abb74(37)*spbk3k2
      abb74(93)=abb74(91)*abb74(13)
      abb74(93)=abb74(93)-abb74(92)
      abb74(94)=abb74(93)*abb74(9)
      abb74(94)=abb74(94)+abb74(90)
      abb74(95)=spak4k7*abb74(9)
      abb74(96)=abb74(94)*abb74(95)
      abb74(60)=abb74(60)*spak1k4
      abb74(29)=abb74(29)*abb74(57)
      abb74(60)=abb74(60)-abb74(29)
      abb74(60)=abb74(60)*abb74(9)
      abb74(97)=-abb74(60)-abb74(12)
      abb74(98)=abb74(53)*spbk3k2
      abb74(97)=abb74(98)*abb74(97)
      abb74(99)=abb74(98)*abb74(64)
      abb74(100)=abb74(99)*spak1k4
      abb74(97)=abb74(100)+abb74(97)
      abb74(97)=abb74(97)*spal6k7
      abb74(100)=abb74(98)*abb74(23)
      abb74(99)=abb74(100)-abb74(99)
      abb74(73)=abb74(73)*spak1k2
      abb74(100)=abb74(73)*abb74(99)
      abb74(15)=abb74(15)*c2
      abb74(101)=abb74(15)*abb74(53)
      abb74(68)=abb74(101)-abb74(68)
      abb74(72)=abb74(68)*abb74(72)
      abb74(101)=abb74(72)*spbl5k3
      abb74(81)=-abb74(97)+abb74(96)-abb74(88)-abb74(101)+abb74(81)-abb74(100)
      abb74(88)=-abb74(80)*abb74(33)
      abb74(88)=abb74(88)+abb74(81)
      abb74(88)=16.0_ki*abb74(88)
      abb74(96)=abb74(93)*spak4k7
      abb74(97)=32.0_ki*abb74(96)
      abb74(32)=spbk3k1*abb74(32)
      abb74(100)=abb74(30)*abb74(43)
      abb74(101)=abb74(16)*abb74(6)
      abb74(102)=abb74(36)*abb74(7)
      abb74(103)=abb74(101)*abb74(102)
      abb74(104)=spak1k4**2
      abb74(105)=abb74(104)*abb74(103)
      abb74(106)=abb74(23)*abb74(6)
      abb74(107)=abb74(104)*abb74(106)
      abb74(108)=-spbl6k2*abb74(107)
      abb74(105)=abb74(105)+abb74(108)
      abb74(105)=abb74(105)*abb74(67)
      abb74(100)=abb74(100)+abb74(105)
      abb74(100)=spbk4k3*abb74(100)
      abb74(105)=abb74(57)*abb74(36)
      abb74(108)=abb74(17)*abb74(105)
      abb74(109)=abb74(18)*abb74(57)
      abb74(110)=-spbl6k2*abb74(109)
      abb74(108)=abb74(108)+abb74(110)
      abb74(108)=abb74(108)*abb74(67)
      abb74(110)=abb74(17)*abb74(89)
      abb74(111)=abb74(91)*abb74(18)
      abb74(111)=-abb74(110)+abb74(111)
      abb74(112)=spak3k4*spal6k7
      abb74(111)=abb74(112)*abb74(7)*abb74(111)
      abb74(108)=abb74(108)+abb74(111)
      abb74(108)=abb74(8)*spbl6k3*abb74(108)
      abb74(110)=abb74(57)*abb74(110)
      abb74(109)=-abb74(91)*abb74(109)
      abb74(109)=abb74(110)+abb74(109)
      abb74(109)=spbl6k1*abb74(109)*abb74(58)
      abb74(32)=abb74(109)+abb74(108)+abb74(32)+abb74(100)
      abb74(32)=16.0_ki*abb74(32)
      abb74(100)=abb74(16)*abb74(75)
      abb74(108)=abb74(105)*abb74(100)
      abb74(109)=abb74(12)*abb74(75)
      abb74(110)=abb74(109)*spbl6k2
      abb74(108)=abb74(110)-abb74(108)
      abb74(108)=abb74(108)*spal6k7
      abb74(108)=abb74(108)-abb74(80)
      abb74(110)=32.0_ki*abb74(108)
      abb74(111)=abb74(26)*c2
      abb74(111)=abb74(111)-abb74(46)
      abb74(111)=abb74(111)*abb74(9)
      abb74(113)=abb74(19)*c2
      abb74(111)=abb74(111)-abb74(113)+abb74(47)
      abb74(113)=spbk3k2**2
      abb74(114)=-spak2k7*abb74(113)*abb74(111)
      abb74(115)=abb74(102)*abb74(55)
      abb74(116)=abb74(62)*spbl6k2
      abb74(115)=abb74(115)-abb74(116)
      abb74(116)=abb74(115)*abb74(113)
      abb74(117)=spak1k7*abb74(9)
      abb74(118)=abb74(116)*abb74(117)
      abb74(119)=abb74(64)*abb74(6)
      abb74(120)=abb74(119)*abb74(113)
      abb74(121)=abb74(106)*abb74(113)
      abb74(120)=abb74(120)-abb74(121)
      abb74(122)=abb74(120)*spak1k7
      abb74(123)=-es12*abb74(122)
      abb74(124)=abb74(102)*abb74(113)
      abb74(125)=-abb74(101)*abb74(124)
      abb74(121)=spbl6k2*abb74(121)
      abb74(121)=abb74(125)+abb74(121)
      abb74(121)=abb74(121)*abb74(48)
      abb74(114)=abb74(121)+abb74(123)+abb74(118)+abb74(114)
      abb74(114)=spak3k4*abb74(114)
      abb74(118)=abb74(122)*spak3k4
      abb74(80)=abb74(118)+abb74(80)
      abb74(80)=abb74(80)*abb74(33)
      abb74(118)=abb74(61)*spal6k7
      abb74(121)=abb74(112)*abb74(93)
      abb74(118)=abb74(118)+abb74(121)
      abb74(121)=spbl6k3*abb74(118)
      abb74(92)=abb74(92)*spak1k4
      abb74(122)=abb74(13)*spbk3k2
      abb74(123)=abb74(122)*abb74(39)
      abb74(92)=abb74(123)-abb74(92)
      abb74(123)=spbl6k1*spal6k7
      abb74(125)=abb74(92)*abb74(123)
      abb74(80)=abb74(125)+abb74(121)-abb74(81)+abb74(114)+abb74(80)
      abb74(80)=8.0_ki*abb74(80)
      abb74(81)=16.0_ki*abb74(96)
      abb74(96)=-16.0_ki*abb74(108)
      abb74(10)=abb74(10)*abb74(11)*spak1l5
      abb74(11)=2.0_ki*abb74(3)
      abb74(11)=abb74(11)*c3*abb74(10)
      abb74(108)=abb74(11)*spak1k4
      abb74(10)=abb74(14)*abb74(10)
      abb74(14)=abb74(10)*abb74(20)
      abb74(108)=abb74(108)-abb74(14)
      abb74(114)=abb74(31)*spbk3k1
      abb74(43)=abb74(43)*spbk4k3
      abb74(43)=abb74(114)+abb74(43)
      abb74(114)=-abb74(108)*abb74(43)
      abb74(74)=-spak4l6*abb74(74)
      abb74(121)=-spak1l6*spbk3k1*abb74(61)
      abb74(74)=abb74(121)+abb74(74)+abb74(114)
      abb74(74)=8.0_ki*abb74(74)
      abb74(114)=abb74(93)*spak4l6
      abb74(10)=abb74(10)*c2
      abb74(121)=abb74(10)*spbk3k2
      abb74(125)=abb74(11)*spbk3k2
      abb74(121)=abb74(121)-abb74(125)
      abb74(126)=abb74(121)*spak4k7
      abb74(114)=abb74(114)-abb74(126)
      abb74(126)=16.0_ki*abb74(114)
      abb74(114)=-8.0_ki*abb74(114)
      abb74(51)=abb74(51)*abb74(113)*abb74(19)
      abb74(127)=abb74(113)*abb74(7)
      abb74(128)=abb74(127)*abb74(47)
      abb74(51)=abb74(51)-abb74(128)
      abb74(51)=-abb74(51)*abb74(34)
      abb74(128)=-abb74(25)*abb74(124)
      abb74(28)=abb74(28)*spbl6k2
      abb74(129)=abb74(127)*abb74(28)
      abb74(128)=abb74(128)+abb74(129)
      abb74(128)=abb74(9)*abb74(128)
      abb74(51)=abb74(128)+abb74(51)
      abb74(128)=8.0_ki*spak3k4
      abb74(51)=abb74(51)*abb74(128)
      abb74(129)=abb74(77)*spak3k4
      abb74(130)=abb74(27)*spbk2k1
      abb74(129)=abb74(129)-abb74(130)
      abb74(129)=abb74(129)*abb74(33)
      abb74(131)=abb74(9)**2
      abb74(132)=-abb74(93)*abb74(131)
      abb74(77)=-es12*abb74(77)
      abb74(77)=abb74(132)+abb74(77)
      abb74(77)=spak3k4*abb74(77)
      abb74(132)=-abb74(131)*abb74(61)
      abb74(130)=es12*abb74(130)
      abb74(77)=abb74(77)+abb74(132)+abb74(130)+abb74(129)
      abb74(77)=8.0_ki*abb74(77)
      abb74(129)=abb74(93)*spak3k4
      abb74(61)=abb74(129)+abb74(61)
      abb74(129)=16.0_ki*abb74(61)
      abb74(130)=abb74(76)*spak3k4
      abb74(132)=abb74(30)*spbk2k1
      abb74(130)=abb74(130)+abb74(132)
      abb74(133)=16.0_ki*abb74(130)
      abb74(134)=-spbk2k1*abb74(108)
      abb74(135)=spak3k4*abb74(121)
      abb74(134)=abb74(134)+abb74(135)
      abb74(134)=8.0_ki*abb74(134)
      abb74(135)=abb74(75)*abb74(52)
      abb74(136)=abb74(79)*abb74(7)
      abb74(136)=abb74(136)-abb74(135)
      abb74(137)=abb74(136)*spak3k4
      abb74(138)=abb74(52)*abb74(24)
      abb74(139)=abb74(47)*abb74(57)
      abb74(138)=abb74(139)-abb74(138)
      abb74(138)=abb74(138)*spbk2k1
      abb74(137)=abb74(137)-abb74(138)
      abb74(137)=abb74(137)*abb74(33)
      abb74(90)=abb74(90)*abb74(9)
      abb74(139)=-abb74(7)*abb74(90)
      abb74(136)=-es12*abb74(136)
      abb74(136)=abb74(139)+abb74(136)
      abb74(136)=spak3k4*abb74(136)
      abb74(28)=abb74(28)-abb74(41)
      abb74(41)=-spbk2k1*abb74(9)*abb74(57)*abb74(28)
      abb74(138)=es12*abb74(138)
      abb74(41)=abb74(136)+abb74(41)+abb74(138)+abb74(137)
      abb74(41)=spbl5k3*abb74(41)
      abb74(136)=abb74(115)*abb74(9)
      abb74(137)=abb74(23)*spbl6k2
      abb74(138)=abb74(102)*abb74(16)
      abb74(136)=abb74(136)+abb74(137)-abb74(138)
      abb74(137)=-abb74(104)*abb74(136)
      abb74(104)=abb74(104)*abb74(119)
      abb74(104)=abb74(104)-abb74(107)
      abb74(104)=-abb74(104)*abb74(34)
      abb74(104)=abb74(104)+abb74(137)
      abb74(104)=spbk2k1*abb74(104)
      abb74(107)=spak2k4*abb74(132)
      abb74(104)=abb74(107)+abb74(104)
      abb74(104)=spbk4k3*abb74(104)
      abb74(21)=-abb74(27)-abb74(21)
      abb74(21)=es12*abb74(21)
      abb74(107)=2.0_ki*abb74(33)
      abb74(27)=abb74(27)*abb74(107)
      abb74(107)=abb74(38)*abb74(131)
      abb74(21)=2.0_ki*abb74(107)+abb74(21)+abb74(27)
      abb74(21)=spbk3k1*abb74(21)
      abb74(27)=abb74(135)*spak1k4
      abb74(107)=abb74(79)*abb74(57)
      abb74(27)=abb74(107)-abb74(27)
      abb74(27)=-abb74(27)*abb74(34)
      abb74(90)=abb74(57)*abb74(90)
      abb74(27)=abb74(90)+abb74(27)
      abb74(27)=spbl5k1*abb74(27)
      abb74(90)=abb74(13)*spak1k4
      abb74(90)=abb74(90)-abb74(54)
      abb74(107)=abb74(90)*spbk7l6
      abb74(43)=abb74(43)*abb74(107)
      abb74(21)=abb74(27)+abb74(43)+abb74(41)+abb74(21)+abb74(104)
      abb74(21)=8.0_ki*abb74(21)
      abb74(27)=32.0_ki*abb74(40)
      abb74(41)=abb74(76)*spak2k4
      abb74(43)=abb74(64)*abb74(75)
      abb74(104)=abb74(43)*spak1k4
      abb74(104)=abb74(104)-abb74(109)
      abb74(109)=abb74(104)*abb74(34)
      abb74(132)=abb74(15)*spbk3k2
      abb74(132)=abb74(132)-abb74(122)
      abb74(135)=abb74(132)*spbk7l6
      abb74(137)=abb74(135)*spak4k7
      abb74(138)=abb74(29)*abb74(91)
      abb74(139)=abb74(55)*abb74(89)
      abb74(140)=abb74(139)*abb74(57)
      abb74(138)=abb74(138)-abb74(140)
      abb74(138)=abb74(138)*abb74(9)
      abb74(140)=abb74(12)*abb74(91)
      abb74(89)=abb74(89)*abb74(16)
      abb74(141)=abb74(89)*abb74(57)
      abb74(41)=-abb74(138)-abb74(141)+abb74(137)+abb74(140)-abb74(41)+abb74(10&
      &9)
      abb74(109)=16.0_ki*abb74(41)
      abb74(41)=-8.0_ki*abb74(41)
      abb74(137)=16.0_ki*spbk3k1
      abb74(108)=abb74(108)*abb74(137)
      abb74(90)=spbk2k1*abb74(90)
      abb74(132)=-spak3k4*abb74(132)
      abb74(90)=abb74(90)+abb74(132)
      abb74(132)=8.0_ki*spbk7l6
      abb74(90)=abb74(90)*abb74(132)
      abb74(107)=-abb74(137)*abb74(107)
      abb74(25)=abb74(75)*abb74(25)*abb74(20)
      abb74(137)=abb74(78)*spak1k4
      abb74(25)=abb74(25)-abb74(137)
      abb74(25)=abb74(25)*abb74(9)
      abb74(137)=abb74(25)*abb74(34)
      abb74(131)=-abb74(92)*abb74(131)
      abb74(131)=abb74(131)+abb74(137)
      abb74(131)=8.0_ki*abb74(131)
      abb74(137)=16.0_ki*abb74(92)
      abb74(20)=abb74(82)*abb74(20)
      abb74(79)=abb74(79)*spak1k4
      abb74(20)=abb74(25)+abb74(79)-abb74(20)
      abb74(25)=16.0_ki*abb74(20)
      abb74(14)=spbk3k2*abb74(14)
      abb74(79)=-spak1k4*abb74(125)
      abb74(14)=abb74(14)+abb74(79)
      abb74(14)=8.0_ki*abb74(14)
      abb74(54)=-spbk3k2*abb74(54)
      abb74(79)=spak1k4*abb74(122)
      abb74(54)=abb74(54)+abb74(79)
      abb74(54)=abb74(54)*abb74(132)
      abb74(79)=abb74(19)*abb74(124)
      abb74(47)=abb74(47)*spbl6k2
      abb74(122)=-abb74(127)*abb74(47)
      abb74(79)=abb74(79)+abb74(122)
      abb74(122)=spak3k4*spak2k7
      abb74(125)=8.0_ki*abb74(122)
      abb74(79)=abb74(79)*abb74(125)
      abb74(140)=abb74(69)*abb74(45)
      abb74(85)=abb74(85)*abb74(122)
      abb74(85)=abb74(140)+abb74(85)
      abb74(85)=8.0_ki*abb74(85)
      abb74(61)=-8.0_ki*abb74(61)
      abb74(45)=spbk3k1*abb74(45)
      abb74(140)=-abb74(105)*abb74(82)
      abb74(141)=abb74(57)*abb74(86)
      abb74(140)=abb74(140)+abb74(141)
      abb74(140)=spbl5k1*abb74(140)
      abb74(45)=abb74(140)-2.0_ki*abb74(45)
      abb74(45)=spak2k7*abb74(45)
      abb74(140)=-abb74(19)*abb74(105)
      abb74(57)=abb74(57)*abb74(47)
      abb74(57)=abb74(140)+abb74(57)
      abb74(57)=abb74(57)*abb74(69)
      abb74(82)=abb74(102)*abb74(82)
      abb74(86)=-abb74(7)*abb74(86)
      abb74(82)=abb74(82)+abb74(86)
      abb74(82)=abb74(82)*abb74(122)
      abb74(57)=abb74(57)+abb74(82)
      abb74(57)=spbl5k3*abb74(57)
      abb74(45)=abb74(57)+abb74(45)
      abb74(45)=8.0_ki*abb74(45)
      abb74(57)=16.0_ki*abb74(40)
      abb74(82)=-spak1k4*abb74(84)
      abb74(39)=abb74(39)*abb74(78)
      abb74(39)=abb74(82)+abb74(39)
      abb74(78)=8.0_ki*spak2k7
      abb74(39)=abb74(9)*abb74(39)*abb74(78)
      abb74(82)=-8.0_ki*abb74(92)
      abb74(84)=-spbl5k3*abb74(118)
      abb74(86)=spbl5k1*spal6k7
      abb74(92)=-abb74(92)*abb74(86)
      abb74(84)=abb74(84)+abb74(92)
      abb74(84)=8.0_ki*abb74(84)
      abb74(92)=spbl5k3*abb74(123)
      abb74(118)=-spbl6k3*abb74(86)
      abb74(92)=abb74(118)+abb74(92)
      abb74(92)=abb74(38)*abb74(92)
      abb74(118)=abb74(13)*spbl6k2
      abb74(37)=abb74(118)-abb74(37)
      abb74(118)=abb74(37)*spal6k7
      abb74(140)=abb74(118)*spbl6k3
      abb74(141)=-spbl5k3*spak3k4*abb74(140)
      abb74(92)=abb74(141)+abb74(92)
      abb74(92)=8.0_ki*abb74(92)
      abb74(141)=abb74(111)*spak4k7
      abb74(142)=-abb74(141)*abb74(34)
      abb74(143)=abb74(37)*abb74(9)
      abb74(28)=abb74(143)-abb74(28)
      abb74(95)=abb74(28)*abb74(95)
      abb74(143)=abb74(53)*abb74(60)
      abb74(71)=abb74(143)-abb74(71)
      abb74(71)=spal6k7*abb74(71)
      abb74(26)=abb74(26)*abb74(36)
      abb74(46)=abb74(46)*spbl6k2
      abb74(26)=abb74(26)-abb74(46)
      abb74(26)=abb74(26)*abb74(9)
      abb74(19)=abb74(19)*abb74(36)
      abb74(19)=abb74(26)-abb74(19)+abb74(47)
      abb74(26)=abb74(19)*abb74(87)
      abb74(36)=abb74(73)*abb74(53)*abb74(65)
      abb74(26)=abb74(36)+abb74(26)+abb74(95)+abb74(71)+abb74(142)
      abb74(26)=spbk4k2*abb74(26)
      abb74(36)=-abb74(76)*abb74(34)
      abb74(46)=abb74(9)*abb74(94)
      abb74(36)=abb74(46)+abb74(36)
      abb74(36)=spak3k7*abb74(36)
      abb74(46)=abb74(111)*abb74(31)
      abb74(47)=-abb74(46)*abb74(34)
      abb74(65)=abb74(28)*abb74(42)
      abb74(71)=abb74(19)*abb74(49)
      abb74(73)=abb74(98)*abb74(63)
      abb74(73)=abb74(73)+abb74(99)
      abb74(87)=spak1k3*spal6k7
      abb74(73)=abb74(73)*abb74(87)
      abb74(83)=-spak3l6*spak2k7*abb74(83)
      abb74(68)=abb74(68)*spal6k7
      abb74(94)=-spbl5k3*abb74(68)
      abb74(95)=-spak1k2*abb74(99)*abb74(58)
      abb74(94)=abb74(94)+abb74(95)
      abb74(94)=spak3l5*abb74(94)
      abb74(52)=abb74(52)*abb74(53)
      abb74(56)=abb74(56)*abb74(7)
      abb74(52)=abb74(52)-abb74(56)
      abb74(56)=abb74(52)*abb74(59)
      abb74(50)=c2*abb74(50)
      abb74(22)=abb74(50)-abb74(22)
      abb74(22)=abb74(86)*abb74(53)*abb74(22)
      abb74(50)=-spbl5k4*abb74(72)
      abb74(22)=abb74(50)+abb74(94)+abb74(83)+abb74(73)+abb74(22)+abb74(36)+abb&
      &74(56)+abb74(71)+abb74(65)+abb74(47)+abb74(26)
      abb74(22)=8.0_ki*abb74(22)
      abb74(26)=abb74(93)*spak3k7
      abb74(36)=spbk4k2*spak4k7
      abb74(36)=abb74(36)+abb74(31)
      abb74(47)=abb74(36)*abb74(37)
      abb74(26)=abb74(26)+abb74(47)
      abb74(26)=16.0_ki*abb74(26)
      abb74(47)=abb74(101)*abb74(105)
      abb74(50)=abb74(12)*abb74(6)
      abb74(56)=abb74(50)*spbl6k2
      abb74(47)=abb74(56)-abb74(47)
      abb74(56)=spal6k7*abb74(47)
      abb74(56)=-abb74(141)+abb74(56)
      abb74(56)=spbk4k2*abb74(56)
      abb74(59)=-spak3k7*abb74(76)
      abb74(52)=-abb74(52)*abb74(58)
      abb74(65)=abb74(23)*abb74(75)
      abb74(71)=abb74(65)*spbl6k2
      abb74(72)=abb74(102)*abb74(100)
      abb74(71)=abb74(71)-abb74(72)
      abb74(72)=abb74(71)*abb74(87)
      abb74(46)=abb74(72)+abb74(59)+abb74(52)-abb74(46)+abb74(56)
      abb74(46)=16.0_ki*abb74(46)
      abb74(52)=8.0_ki*abb74(68)
      abb74(56)=spak4l6*spbk4k2
      abb74(59)=spak1l6*spbk2k1
      abb74(56)=abb74(59)+abb74(56)
      abb74(56)=abb74(37)*abb74(56)
      abb74(10)=abb74(10)-abb74(11)
      abb74(11)=-abb74(10)*abb74(36)
      abb74(59)=-spak3k7*abb74(121)
      abb74(68)=spak3l6*abb74(93)
      abb74(11)=abb74(68)+abb74(59)+abb74(11)+abb74(56)
      abb74(11)=8.0_ki*abb74(11)
      abb74(24)=abb74(64)*abb74(24)
      abb74(24)=abb74(24)-abb74(50)
      abb74(50)=abb74(34)*abb74(24)
      abb74(16)=-abb74(16)*abb74(105)
      abb74(55)=abb74(105)*abb74(55)
      abb74(29)=abb74(29)*spbl6k2
      abb74(29)=abb74(29)-abb74(55)
      abb74(55)=-abb74(9)*abb74(29)
      abb74(12)=spbl6k2*abb74(12)
      abb74(12)=abb74(55)+abb74(16)+abb74(12)+abb74(50)
      abb74(12)=spbk4k2*abb74(12)
      abb74(16)=abb74(65)-abb74(43)
      abb74(43)=-abb74(16)*abb74(34)
      abb74(55)=abb74(62)*abb74(91)
      abb74(56)=abb74(139)*abb74(7)
      abb74(55)=abb74(55)-abb74(56)
      abb74(56)=-abb74(9)*abb74(55)
      abb74(59)=-abb74(7)*abb74(89)
      abb74(23)=abb74(23)*abb74(91)
      abb74(23)=abb74(56)+abb74(59)+abb74(23)+abb74(43)
      abb74(23)=spak1k3*abb74(23)
      abb74(33)=es234-es34+abb74(33)
      abb74(33)=abb74(111)*abb74(33)
      abb74(28)=-abb74(9)*abb74(28)
      abb74(13)=abb74(15)-abb74(13)
      abb74(15)=spbk7l6*abb74(13)*abb74(36)
      abb74(36)=spak3k7*abb74(135)
      abb74(12)=abb74(23)+abb74(36)+abb74(15)+abb74(12)+abb74(28)+abb74(33)
      abb74(12)=8.0_ki*abb74(12)
      abb74(15)=16.0_ki*abb74(37)
      abb74(10)=8.0_ki*abb74(10)
      abb74(13)=-abb74(13)*abb74(132)
      abb74(19)=-abb74(19)*abb74(78)
      abb74(23)=-8.0_ki*abb74(37)
      abb74(28)=8.0_ki*abb74(118)
      abb74(33)=spbl5k2*abb74(28)
      abb74(28)=spbl6l5*abb74(28)
      abb74(30)=abb74(69)*abb74(30)
      abb74(36)=abb74(29)*abb74(42)
      abb74(37)=abb74(31)*abb74(50)
      abb74(43)=abb74(47)*abb74(49)
      abb74(30)=-abb74(43)+abb74(30)+abb74(36)-abb74(37)
      abb74(36)=-abb74(38)*abb74(123)
      abb74(36)=abb74(36)-abb74(30)
      abb74(36)=8.0_ki*spbk4k3*abb74(36)
      abb74(37)=abb74(76)*spak2k7
      abb74(38)=-abb74(34)*abb74(16)*spak1k7
      abb74(43)=abb74(55)*abb74(117)
      abb74(47)=abb74(71)*abb74(48)
      abb74(37)=-abb74(43)-abb74(37)+abb74(47)+abb74(140)+abb74(38)
      abb74(38)=16.0_ki*abb74(37)
      abb74(37)=8.0_ki*abb74(37)
      abb74(43)=spak2k7*abb74(111)
      abb74(47)=abb74(119)-abb74(106)
      abb74(34)=abb74(34)*abb74(47)
      abb74(47)=-spak1k7*abb74(34)
      abb74(50)=-abb74(115)*abb74(117)
      abb74(56)=abb74(106)*spbl6k2
      abb74(56)=abb74(56)-abb74(103)
      abb74(48)=-abb74(56)*abb74(48)
      abb74(43)=abb74(48)+abb74(50)+abb74(43)+abb74(47)
      abb74(43)=spbk4k2*abb74(43)
      abb74(47)=-spbl6k4*abb74(118)
      abb74(43)=abb74(47)+abb74(43)
      abb74(43)=8.0_ki*abb74(43)
      abb74(17)=-abb74(17)*abb74(124)
      abb74(18)=spbl6k2*abb74(18)*abb74(127)
      abb74(17)=abb74(17)+abb74(18)
      abb74(17)=abb74(17)*abb74(58)*abb74(128)
      abb74(18)=-8.0_ki*abb74(130)
      abb74(20)=-8.0_ki*abb74(20)
      abb74(47)=-abb74(120)*abb74(125)
      abb74(48)=8.0_ki*abb74(9)
      abb74(48)=abb74(116)*abb74(112)*abb74(48)
      abb74(50)=-16.0_ki*abb74(120)*abb74(112)
      abb74(58)=abb74(128)*abb74(113)*abb74(66)
      abb74(30)=-spbk3k1*abb74(30)
      abb74(29)=abb74(29)*abb74(67)
      abb74(55)=-abb74(55)*abb74(112)
      abb74(29)=abb74(29)+abb74(55)
      abb74(29)=spbl6k3*abb74(9)*abb74(29)
      abb74(40)=abb74(138)-abb74(40)
      abb74(40)=abb74(40)*abb74(123)
      abb74(29)=abb74(40)+abb74(29)+abb74(30)
      abb74(29)=8.0_ki*abb74(29)
      abb74(30)=abb74(24)*abb74(67)
      abb74(40)=abb74(16)*abb74(112)
      abb74(30)=abb74(30)+abb74(40)
      abb74(30)=spbl6k3*abb74(30)
      abb74(40)=abb74(104)*abb74(123)
      abb74(30)=abb74(30)+abb74(40)
      abb74(30)=16.0_ki*abb74(30)
      abb74(40)=abb74(60)-abb74(70)
      abb74(55)=-spbk2k1*abb74(40)
      abb74(59)=spak3k4*spbk3k2*abb74(66)
      abb74(55)=abb74(55)+abb74(59)
      abb74(55)=spbl6k3*abb74(55)
      abb74(40)=-spbl6k1*spbk3k2*abb74(40)
      abb74(24)=abb74(24)*abb74(69)
      abb74(16)=abb74(16)*abb74(122)
      abb74(16)=abb74(24)+abb74(16)
      abb74(16)=spbk7k3*abb74(16)
      abb74(24)=spbk7k1*spak2k7*abb74(104)
      abb74(16)=abb74(24)+abb74(16)+abb74(55)+abb74(40)
      abb74(16)=8.0_ki*abb74(16)
      abb74(24)=abb74(111)*abb74(69)
      abb74(31)=-abb74(31)*abb74(34)
      abb74(40)=spal6k7*abb74(53)*abb74(63)
      abb74(42)=-abb74(115)*abb74(42)
      abb74(49)=-abb74(56)*abb74(49)
      abb74(53)=spbl6k1*abb74(118)
      abb74(24)=abb74(53)+abb74(49)+abb74(24)+abb74(40)+abb74(42)+abb74(31)
      abb74(24)=8.0_ki*abb74(24)
      abb74(31)=16.0_ki*spal6k7*abb74(56)
      abb74(34)=abb74(34)+abb74(136)
      abb74(34)=8.0_ki*abb74(34)
      R2d74=0.0_ki
      rat2 = rat2 + R2d74
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='74' value='", &
          & R2d74, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd74h6