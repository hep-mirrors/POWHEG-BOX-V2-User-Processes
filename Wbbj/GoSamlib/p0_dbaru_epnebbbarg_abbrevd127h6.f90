module     p0_dbaru_epnebbbarg_abbrevd127h6
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh6
   implicit none
   private
   complex(ki), dimension(137), public :: abb127
   complex(ki), public :: R2d127
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
      abb127(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb127(2)=NC**(-1)
      abb127(3)=sqrt2**(-1)
      abb127(4)=es567**(-1)
      abb127(5)=es56**(-1)
      abb127(6)=spbk7k2**(-1)
      abb127(7)=1.0_ki/(mB**2-es67-es56+es567)
      abb127(8)=1.0_ki/(-mB**2+es67)
      abb127(9)=spak2l5**(-1)
      abb127(10)=spbl5k2**(-1)
      abb127(11)=spak2l6**(-1)
      abb127(12)=sqrt(mB**2)
      abb127(13)=TR*gW
      abb127(13)=abb127(13)**2*i_*CVDU*abb127(4)*abb127(3)
      abb127(14)=abb127(6)*abb127(1)
      abb127(15)=abb127(13)*abb127(14)*abb127(2)
      abb127(16)=abb127(15)*abb127(5)
      abb127(17)=abb127(16)*spal5k7
      abb127(18)=abb127(17)*spbl6k2
      abb127(19)=c1*spak1k4
      abb127(20)=abb127(19)*abb127(18)
      abb127(21)=abb127(18)*c3
      abb127(22)=abb127(21)*spak1k4
      abb127(20)=abb127(20)-abb127(22)
      abb127(22)=c2*abb127(2)**2
      abb127(14)=abb127(14)*abb127(22)
      abb127(23)=abb127(13)*spal5k7
      abb127(24)=abb127(14)*abb127(23)
      abb127(25)=spak1k4*spbl6k2
      abb127(26)=abb127(25)*abb127(24)
      abb127(27)=abb127(15)*spal5k7
      abb127(28)=c1*spbl6k2
      abb127(29)=abb127(28)*abb127(27)
      abb127(30)=abb127(29)*spak1k4
      abb127(26)=abb127(26)-abb127(30)
      abb127(30)=2.0_ki*abb127(7)
      abb127(26)=abb127(26)*abb127(30)
      abb127(26)=abb127(26)-abb127(20)
      abb127(31)=spbl5k2*spak1l5
      abb127(32)=abb127(26)*abb127(31)
      abb127(22)=abb127(23)*abb127(1)*abb127(22)
      abb127(33)=abb127(25)*abb127(22)
      abb127(23)=abb127(23)*abb127(2)*abb127(1)
      abb127(28)=abb127(23)*abb127(28)
      abb127(34)=abb127(28)*spak1k4
      abb127(33)=abb127(33)-abb127(34)
      abb127(33)=abb127(33)*abb127(30)
      abb127(34)=c3*spak1k4
      abb127(34)=abb127(34)-abb127(19)
      abb127(35)=abb127(5)*spbl6k2*abb127(23)
      abb127(36)=-abb127(35)*abb127(34)
      abb127(33)=abb127(33)-abb127(36)
      abb127(36)=abb127(33)*spak1k7
      abb127(37)=c1-c3
      abb127(38)=-abb127(16)*abb127(37)
      abb127(15)=abb127(15)*c3
      abb127(39)=abb127(15)*abb127(8)
      abb127(40)=-abb127(38)-abb127(39)
      abb127(41)=spbl6k2**2
      abb127(42)=abb127(41)*spak1k4
      abb127(40)=abb127(42)*abb127(40)
      abb127(43)=abb127(14)*abb127(8)
      abb127(44)=abb127(13)*spak1k4
      abb127(45)=abb127(43)*abb127(44)
      abb127(46)=abb127(45)*abb127(41)
      abb127(40)=abb127(40)+abb127(46)
      abb127(46)=2.0_ki*spal6k7
      abb127(40)=abb127(40)*abb127(46)
      abb127(47)=abb127(40)*spak1l5
      abb127(17)=-abb127(17)*abb127(37)
      abb127(42)=-abb127(42)*abb127(17)
      abb127(48)=abb127(42)*spak1l6
      abb127(32)=abb127(48)-abb127(47)+abb127(32)+abb127(36)
      abb127(32)=abb127(32)*spbk3k1
      abb127(26)=abb127(26)*spbl5k2
      abb127(26)=abb127(26)-abb127(40)
      abb127(36)=spak4l5*abb127(26)
      abb127(40)=spak4k7*abb127(33)
      abb127(47)=spak4l6*abb127(42)
      abb127(36)=abb127(47)+abb127(40)+abb127(36)
      abb127(36)=spbk4k3*abb127(36)
      abb127(36)=abb127(36)+abb127(32)
      abb127(36)=4.0_ki*es12*abb127(36)
      abb127(18)=abb127(18)*c1
      abb127(18)=abb127(18)-abb127(21)
      abb127(21)=8.0_ki*spak3k4
      abb127(40)=spbk3k2**2
      abb127(47)=abb127(21)*abb127(40)
      abb127(48)=-spak1k2*abb127(18)*abb127(47)
      abb127(49)=abb127(24)*spbl6k2
      abb127(29)=abb127(49)-abb127(29)
      abb127(29)=abb127(29)*abb127(30)
      abb127(49)=-spbk3k2*abb127(29)
      abb127(50)=-spbk3k2*abb127(18)
      abb127(49)=abb127(49)-abb127(50)
      abb127(51)=spbl5k2*spak1k2
      abb127(49)=abb127(49)*abb127(51)
      abb127(52)=abb127(43)*abb127(13)
      abb127(52)=abb127(38)-abb127(52)+abb127(39)
      abb127(52)=abb127(52)*abb127(46)
      abb127(53)=spak1k2*abb127(41)*spbk3k2
      abb127(54)=abb127(53)*abb127(52)
      abb127(49)=abb127(49)-abb127(54)
      abb127(54)=abb127(49)*spak4l5
      abb127(55)=abb127(22)*spbl6k2
      abb127(28)=abb127(55)-abb127(28)
      abb127(28)=abb127(28)*abb127(30)
      abb127(35)=-abb127(35)*abb127(37)
      abb127(28)=abb127(28)+abb127(35)
      abb127(35)=-spak1k2*spbk3k2*abb127(28)
      abb127(55)=abb127(35)*spak4k7
      abb127(53)=-abb127(17)*abb127(53)
      abb127(56)=abb127(53)*spak4l6
      abb127(54)=-abb127(54)+abb127(56)-abb127(55)
      abb127(55)=8.0_ki*abb127(54)
      abb127(16)=abb127(16)*spbl6k2
      abb127(37)=-abb127(16)*abb127(37)
      abb127(46)=abb127(46)*abb127(10)
      abb127(56)=abb127(37)*abb127(46)
      abb127(56)=abb127(56)+3.0_ki*abb127(17)
      abb127(57)=spak1k4**2
      abb127(58)=mB**2
      abb127(59)=abb127(58)*abb127(11)
      abb127(60)=abb127(57)*abb127(59)
      abb127(61)=-abb127(60)*abb127(56)
      abb127(62)=abb127(27)*c1
      abb127(62)=abb127(62)-abb127(24)
      abb127(63)=abb127(11)*mB
      abb127(64)=-abb127(63)*abb127(62)
      abb127(65)=abb127(30)*abb127(12)
      abb127(66)=abb127(64)*abb127(65)
      abb127(67)=-abb127(57)*abb127(66)
      abb127(68)=-abb127(58)*abb127(18)
      abb127(69)=abb127(9)*abb127(10)
      abb127(70)=abb127(69)*abb127(68)
      abb127(71)=-abb127(57)*abb127(70)
      abb127(61)=abb127(71)+abb127(67)+abb127(61)
      abb127(67)=spbk4k3*spbk2k1
      abb127(61)=8.0_ki*abb127(67)*abb127(61)
      abb127(71)=abb127(24)*spak1k4
      abb127(27)=abb127(19)*abb127(27)
      abb127(71)=abb127(71)-abb127(27)
      abb127(72)=abb127(63)*spbk3k2
      abb127(73)=-abb127(65)*abb127(72)*abb127(71)
      abb127(74)=abb127(58)*spbk3k2
      abb127(75)=-abb127(69)*abb127(74)*abb127(20)
      abb127(16)=-abb127(16)*abb127(34)
      abb127(34)=abb127(16)*abb127(46)
      abb127(46)=abb127(59)*spbk3k2
      abb127(76)=-abb127(46)*abb127(34)
      abb127(77)=abb127(46)*spak1k4
      abb127(78)=-abb127(77)*abb127(17)
      abb127(73)=-abb127(76)+abb127(73)-abb127(75)+3.0_ki*abb127(78)
      abb127(75)=16.0_ki*abb127(73)
      abb127(26)=spbk4k3*abb127(26)
      abb127(26)=abb127(26)+abb127(49)
      abb127(26)=spak4l5*abb127(26)
      abb127(33)=spbk4k3*abb127(33)
      abb127(33)=abb127(35)+abb127(33)
      abb127(33)=spak4k7*abb127(33)
      abb127(42)=spbk4k3*abb127(42)
      abb127(42)=-abb127(53)+abb127(42)
      abb127(42)=spak4l6*abb127(42)
      abb127(26)=abb127(42)+abb127(33)+abb127(26)+abb127(32)
      abb127(26)=8.0_ki*abb127(26)
      abb127(32)=-spbk3k2*abb127(20)
      abb127(33)=16.0_ki*abb127(32)
      abb127(42)=-32.0_ki*abb127(73)
      abb127(76)=abb127(39)*spbl6k2
      abb127(78)=abb127(13)*spbl6k2
      abb127(79)=abb127(43)*abb127(78)
      abb127(76)=abb127(76)-abb127(79)
      abb127(37)=abb127(76)+abb127(37)
      abb127(80)=abb127(37)*spbk3k2
      abb127(81)=spak1l5*spal6k7
      abb127(82)=abb127(80)*abb127(81)
      abb127(83)=abb127(62)*abb127(7)
      abb127(84)=-spbk3k2*abb127(83)
      abb127(85)=-spbk3k2*abb127(17)
      abb127(84)=abb127(84)-abb127(85)
      abb127(86)=abb127(84)*abb127(31)
      abb127(87)=abb127(23)*c1
      abb127(87)=abb127(87)-abb127(22)
      abb127(88)=-spbk3k2*abb127(87)
      abb127(89)=spak1k7*abb127(7)
      abb127(90)=abb127(88)*abb127(89)
      abb127(82)=abb127(86)+abb127(90)+abb127(82)
      abb127(86)=2.0_ki*spbl6k3
      abb127(82)=abb127(82)*abb127(86)
      abb127(90)=abb127(8)*abb127(10)
      abb127(15)=abb127(90)*abb127(15)
      abb127(91)=abb127(15)*spbl6k2
      abb127(14)=abb127(90)*abb127(14)
      abb127(78)=abb127(14)*abb127(78)
      abb127(90)=abb127(91)-abb127(78)
      abb127(91)=-mB*abb127(90)
      abb127(92)=abb127(91)*spak1k7
      abb127(93)=spak1k2*abb127(7)
      abb127(94)=abb127(64)*abb127(93)
      abb127(92)=abb127(92)+abb127(94)
      abb127(94)=2.0_ki*abb127(12)
      abb127(95)=abb127(94)*abb127(40)*abb127(92)
      abb127(96)=abb127(40)*abb127(59)
      abb127(97)=-abb127(39)*abb127(96)
      abb127(13)=abb127(13)*abb127(11)
      abb127(43)=abb127(43)*abb127(13)
      abb127(98)=abb127(43)*abb127(58)
      abb127(99)=abb127(40)*abb127(98)
      abb127(97)=abb127(97)+abb127(99)
      abb127(97)=spak1l5*abb127(97)
      abb127(99)=abb127(43)*mB
      abb127(100)=abb127(63)*abb127(39)
      abb127(99)=abb127(99)-abb127(100)
      abb127(101)=abb127(12)*spak1l5
      abb127(102)=abb127(99)*abb127(101)
      abb127(103)=-abb127(40)*abb127(102)
      abb127(97)=abb127(97)+abb127(103)
      abb127(103)=2.0_ki*spak2k7
      abb127(97)=abb127(97)*abb127(103)
      abb127(38)=abb127(38)*abb127(10)
      abb127(104)=abb127(38)+abb127(15)
      abb127(105)=-abb127(96)*abb127(104)
      abb127(13)=abb127(14)*abb127(13)
      abb127(106)=abb127(13)*abb127(58)
      abb127(107)=abb127(106)*abb127(40)
      abb127(105)=abb127(107)+abb127(105)
      abb127(107)=2.0_ki*spak1k7
      abb127(105)=abb127(105)*abb127(107)
      abb127(108)=es712-es12
      abb127(109)=abb127(105)*abb127(108)
      abb127(110)=spak1k2*abb127(96)*abb127(56)
      abb127(111)=abb127(69)*spak1k2
      abb127(68)=abb127(68)*abb127(111)
      abb127(112)=abb127(40)*abb127(68)
      abb127(113)=abb127(17)*abb127(40)
      abb127(114)=abb127(107)*spbk7l6
      abb127(115)=-abb127(113)*abb127(114)
      abb127(82)=abb127(115)+abb127(112)+abb127(97)+abb127(95)+abb127(110)+abb1&
      &27(82)+abb127(109)
      abb127(82)=spak3k4*abb127(82)
      abb127(25)=abb127(25)*abb127(39)
      abb127(79)=abb127(79)*spak1k4
      abb127(25)=abb127(25)-abb127(79)-abb127(16)
      abb127(79)=abb127(25)*abb127(81)
      abb127(95)=abb127(22)*spak1k4
      abb127(19)=abb127(23)*abb127(19)
      abb127(23)=abb127(95)-abb127(19)
      abb127(95)=abb127(23)*abb127(89)
      abb127(97)=abb127(71)*abb127(7)
      abb127(109)=-spak1k4*abb127(17)
      abb127(97)=abb127(97)-abb127(109)
      abb127(110)=abb127(97)*abb127(31)
      abb127(79)=abb127(110)+abb127(95)+abb127(79)
      abb127(95)=-spbk2k1*abb127(79)*abb127(86)
      abb127(16)=spbk3k2*abb127(16)
      abb127(110)=spbk3k2*spak1k4
      abb127(76)=-abb127(110)*abb127(76)
      abb127(16)=abb127(76)+abb127(16)
      abb127(76)=abb127(16)*abb127(81)
      abb127(22)=abb127(110)*abb127(22)
      abb127(19)=abb127(19)*spbk3k2
      abb127(19)=abb127(22)-abb127(19)
      abb127(22)=-abb127(19)*abb127(89)
      abb127(24)=abb127(110)*abb127(24)
      abb127(27)=abb127(27)*spbk3k2
      abb127(24)=abb127(24)-abb127(27)
      abb127(24)=abb127(24)*abb127(7)
      abb127(27)=-abb127(110)*abb127(17)
      abb127(24)=abb127(24)-abb127(27)
      abb127(110)=-abb127(24)*abb127(31)
      abb127(22)=abb127(110)+abb127(22)+abb127(76)
      abb127(76)=2.0_ki*spbl6k1
      abb127(22)=abb127(22)*abb127(76)
      abb127(110)=-spbl6k3*abb127(50)
      abb127(112)=abb127(90)*abb127(103)
      abb127(96)=abb127(96)*abb127(112)
      abb127(96)=abb127(110)+abb127(96)
      abb127(96)=spak3k4*abb127(96)
      abb127(110)=abb127(20)*spbk2k1
      abb127(115)=-spbl6k3*abb127(110)
      abb127(116)=spbl6k1*abb127(32)
      abb127(96)=abb127(116)+abb127(115)+abb127(96)
      abb127(96)=spak1l6*abb127(96)
      abb127(50)=abb127(50)*spak3k4
      abb127(115)=abb127(110)+abb127(50)
      abb127(116)=spbk7k3*spak1k7
      abb127(117)=-spbl5k3*spak1l5
      abb127(116)=abb127(117)+abb127(116)
      abb127(115)=abb127(115)*abb127(116)
      abb127(105)=-spak3k4*abb127(105)
      abb127(105)=abb127(105)+abb127(32)
      abb127(105)=es71*abb127(105)
      abb127(116)=spbl5k1*spak1l5
      abb127(117)=abb127(32)*abb127(116)
      abb127(22)=abb127(117)+abb127(96)+abb127(22)+abb127(105)+abb127(95)+abb12&
      &7(82)+abb127(54)+abb127(115)
      abb127(22)=4.0_ki*abb127(22)
      abb127(54)=8.0_ki*abb127(73)
      abb127(47)=-abb127(93)*abb127(87)*abb127(47)
      abb127(73)=-16.0_ki*abb127(7)*abb127(19)
      abb127(82)=-abb127(60)*abb127(104)
      abb127(95)=abb127(106)*abb127(57)
      abb127(82)=abb127(95)+abb127(82)
      abb127(95)=spbk2k1*es12*abb127(82)
      abb127(96)=abb127(12)*spbk2k1
      abb127(105)=abb127(96)*abb127(57)
      abb127(115)=-abb127(91)*abb127(105)
      abb127(95)=abb127(95)+abb127(115)
      abb127(95)=spbk4k3*abb127(95)
      abb127(115)=es712-es71
      abb127(82)=-abb127(82)*abb127(115)
      abb127(117)=abb127(17)*abb127(57)
      abb127(118)=spbk7l6*abb127(117)
      abb127(82)=abb127(118)+abb127(82)
      abb127(82)=abb127(67)*abb127(82)
      abb127(118)=abb127(23)*abb127(7)
      abb127(119)=abb127(118)*spbl6k3
      abb127(120)=-es12*abb127(119)
      abb127(19)=-abb127(19)*abb127(93)
      abb127(121)=abb127(87)*abb127(7)
      abb127(122)=abb127(57)*spbk4k3
      abb127(123)=-abb127(121)*abb127(122)
      abb127(19)=abb127(19)+abb127(123)
      abb127(19)=spbl6k1*abb127(19)
      abb127(88)=abb127(88)*spak3k4
      abb127(123)=spbl6k3*abb127(93)*abb127(88)
      abb127(19)=abb127(19)+abb127(95)+abb127(120)+abb127(123)+abb127(82)
      abb127(82)=abb127(20)*es12
      abb127(95)=abb127(50)*spak1k2
      abb127(82)=abb127(82)+abb127(95)
      abb127(120)=spbk7k3*abb127(82)
      abb127(122)=-abb127(18)*abb127(122)
      abb127(32)=abb127(32)*spak1k2
      abb127(32)=abb127(122)-abb127(32)
      abb127(122)=spbk7k1*abb127(32)
      abb127(19)=abb127(122)+2.0_ki*abb127(19)+abb127(120)
      abb127(19)=4.0_ki*abb127(19)
      abb127(120)=-abb127(77)*abb127(104)
      abb127(14)=abb127(14)*abb127(44)
      abb127(44)=abb127(14)*abb127(46)
      abb127(44)=abb127(44)+abb127(120)
      abb127(120)=-es712+es12+es71
      abb127(44)=abb127(44)*abb127(120)
      abb127(27)=abb127(27)*spbk7l6
      abb127(27)=abb127(44)-abb127(27)
      abb127(44)=spbk3k2*mB
      abb127(120)=-abb127(44)*abb127(90)
      abb127(122)=-spak1k4*abb127(120)
      abb127(123)=abb127(122)*abb127(12)
      abb127(123)=abb127(119)-abb127(123)-abb127(27)
      abb127(124)=abb127(20)*spbk7k3
      abb127(123)=-abb127(124)+2.0_ki*abb127(123)
      abb127(125)=8.0_ki*abb127(123)
      abb127(122)=-abb127(122)*abb127(94)
      abb127(27)=abb127(122)+abb127(119)-2.0_ki*abb127(27)
      abb127(27)=2.0_ki*abb127(27)-abb127(124)
      abb127(27)=8.0_ki*abb127(27)
      abb127(119)=-4.0_ki*abb127(123)
      abb127(122)=-spbl6k1*abb127(32)
      abb127(123)=abb127(20)*spbl6k3
      abb127(124)=-es12*abb127(123)
      abb127(95)=-spbl6k3*abb127(95)
      abb127(112)=-abb127(67)*abb127(60)*abb127(112)
      abb127(95)=abb127(122)+abb127(112)+abb127(124)+abb127(95)
      abb127(95)=4.0_ki*abb127(95)
      abb127(112)=-abb127(77)*abb127(90)
      abb127(122)=abb127(112)*abb127(103)
      abb127(122)=abb127(122)-abb127(123)
      abb127(124)=8.0_ki*abb127(122)
      abb127(112)=spak2k7*abb127(112)
      abb127(112)=abb127(123)-4.0_ki*abb127(112)
      abb127(112)=8.0_ki*abb127(112)
      abb127(122)=4.0_ki*abb127(122)
      abb127(123)=spak1k2*spal6k7
      abb127(126)=abb127(123)*abb127(40)*abb127(37)
      abb127(40)=-abb127(40)*abb127(83)
      abb127(40)=abb127(40)+abb127(113)
      abb127(40)=abb127(40)*abb127(51)
      abb127(40)=abb127(126)+abb127(40)
      abb127(21)=abb127(40)*abb127(21)
      abb127(40)=spal6k7*abb127(16)
      abb127(113)=-spbl5k2*abb127(24)
      abb127(40)=abb127(40)+abb127(113)
      abb127(40)=16.0_ki*abb127(40)
      abb127(16)=abb127(16)*abb127(123)
      abb127(113)=abb127(37)*spal6k7
      abb127(126)=abb127(57)*abb127(113)
      abb127(127)=-abb127(57)*abb127(83)
      abb127(117)=abb127(127)+abb127(117)
      abb127(117)=spbl5k2*abb127(117)
      abb127(117)=abb127(126)+abb127(117)
      abb127(117)=spbk4k3*abb127(117)
      abb127(24)=-abb127(24)*abb127(51)
      abb127(16)=abb127(117)+abb127(16)+abb127(24)
      abb127(16)=spbl6k1*abb127(16)
      abb127(24)=abb127(25)*spal6k7
      abb127(25)=abb127(97)*spbl5k2
      abb127(24)=abb127(24)+abb127(25)
      abb127(25)=abb127(24)*spbl6k3
      abb127(97)=-es12*abb127(25)
      abb127(117)=abb127(80)*abb127(123)
      abb127(123)=abb127(84)*abb127(51)
      abb127(117)=abb127(117)+abb127(123)
      abb127(117)=spak3k4*spbl6k3*abb127(117)
      abb127(60)=abb127(39)*abb127(60)
      abb127(57)=-abb127(57)*abb127(98)
      abb127(57)=abb127(60)+abb127(57)
      abb127(57)=spbk2k1*abb127(57)
      abb127(60)=abb127(99)*abb127(105)
      abb127(57)=abb127(57)+abb127(60)
      abb127(57)=spbk4k3*spak2k7*abb127(57)
      abb127(16)=abb127(16)+abb127(57)+abb127(97)+abb127(117)
      abb127(57)=-spbl5k3*abb127(82)
      abb127(32)=-spbl5k1*abb127(32)
      abb127(16)=abb127(32)+2.0_ki*abb127(16)+abb127(57)
      abb127(16)=4.0_ki*abb127(16)
      abb127(32)=abb127(45)*abb127(72)
      abb127(57)=abb127(72)*abb127(39)
      abb127(60)=abb127(57)*spak1k4
      abb127(32)=abb127(32)-abb127(60)
      abb127(32)=abb127(32)*abb127(12)
      abb127(60)=abb127(77)*abb127(39)
      abb127(77)=abb127(45)*abb127(46)
      abb127(32)=abb127(32)+abb127(60)-abb127(77)
      abb127(60)=abb127(32)*spak2k7
      abb127(60)=abb127(60)-abb127(25)
      abb127(77)=abb127(20)*spbl5k3
      abb127(60)=-abb127(77)+2.0_ki*abb127(60)
      abb127(82)=8.0_ki*abb127(60)
      abb127(32)=-abb127(32)*abb127(103)
      abb127(25)=abb127(25)+abb127(32)
      abb127(25)=2.0_ki*abb127(25)+abb127(77)
      abb127(25)=8.0_ki*abb127(25)
      abb127(32)=4.0_ki*abb127(60)
      abb127(52)=abb127(41)*abb127(52)
      abb127(60)=abb127(52)*spak1l5
      abb127(29)=abb127(29)-abb127(18)
      abb127(77)=abb127(29)*abb127(31)
      abb127(97)=abb127(28)*spak1k7
      abb127(41)=-abb127(41)*abb127(17)
      abb127(105)=abb127(41)*spak1l6
      abb127(60)=abb127(105)+abb127(97)+abb127(60)+abb127(77)
      abb127(77)=-es12*abb127(60)
      abb127(97)=abb127(52)*spak1k2
      abb127(51)=abb127(29)*abb127(51)
      abb127(51)=abb127(97)+abb127(51)
      abb127(97)=-spak4l5*abb127(51)
      abb127(105)=abb127(28)*spak4k7
      abb127(117)=abb127(41)*spak4l6
      abb127(105)=abb127(117)+abb127(105)
      abb127(117)=-spak1k2*abb127(105)
      abb127(97)=abb127(97)+abb127(117)
      abb127(97)=spbk4k2*abb127(97)
      abb127(49)=spak3l5*abb127(49)
      abb127(35)=spak3k7*abb127(35)
      abb127(53)=-spak3l6*abb127(53)
      abb127(35)=abb127(53)+abb127(35)+abb127(49)+abb127(97)+abb127(77)
      abb127(35)=4.0_ki*abb127(35)
      abb127(49)=-abb127(63)*abb127(71)
      abb127(53)=abb127(49)*abb127(65)
      abb127(34)=-abb127(59)*abb127(34)
      abb127(71)=abb127(59)*spak1k4
      abb127(77)=-abb127(71)*abb127(17)
      abb127(34)=-abb127(34)+3.0_ki*abb127(77)
      abb127(53)=abb127(53)+abb127(34)
      abb127(77)=-spbk4k2*abb127(53)
      abb127(62)=-abb127(72)*abb127(62)
      abb127(65)=abb127(62)*abb127(65)
      abb127(72)=-abb127(46)*abb127(56)
      abb127(65)=abb127(65)-abb127(72)
      abb127(97)=spak1k3*abb127(65)
      abb127(58)=-abb127(58)*abb127(20)
      abb127(117)=spbk4k2*abb127(58)
      abb127(123)=-abb127(74)*abb127(18)
      abb127(126)=spak1k3*abb127(123)
      abb127(117)=abb127(117)+abb127(126)
      abb127(117)=abb127(117)*abb127(69)
      abb127(77)=abb127(117)+abb127(77)+abb127(97)
      abb127(77)=8.0_ki*abb127(77)
      abb127(97)=-8.0_ki*abb127(60)
      abb127(60)=4.0_ki*abb127(60)
      abb127(117)=-abb127(71)*abb127(104)
      abb127(14)=abb127(14)*abb127(59)
      abb127(14)=abb127(14)+abb127(117)
      abb127(117)=abb127(115)-es12
      abb127(126)=abb127(117)*abb127(14)
      abb127(127)=-spak1k4*abb127(91)
      abb127(128)=abb127(127)*abb127(12)
      abb127(126)=abb127(126)-abb127(128)
      abb127(128)=spbk4k2*abb127(126)
      abb127(129)=spbk4k2*abb127(109)
      abb127(130)=spak1k3*abb127(85)
      abb127(129)=abb127(129)+abb127(130)
      abb127(129)=spbk7l6*abb127(129)
      abb127(128)=abb127(128)+abb127(129)
      abb127(38)=-abb127(46)*abb127(38)
      abb127(13)=abb127(13)*abb127(74)
      abb127(15)=abb127(15)*abb127(46)
      abb127(13)=abb127(38)+abb127(13)-abb127(15)
      abb127(38)=abb127(13)*abb127(117)
      abb127(129)=abb127(120)*abb127(12)
      abb127(130)=-spbl6k3*abb127(121)
      abb127(38)=abb127(129)+abb127(130)+abb127(38)
      abb127(130)=abb127(18)*spbk7k3
      abb127(38)=-abb127(130)+2.0_ki*abb127(38)
      abb127(38)=spak1k3*abb127(38)
      abb127(131)=spak1k2*abb127(28)
      abb127(23)=spbl6k4*abb127(23)*abb127(30)
      abb127(30)=-spbk7k4*abb127(20)
      abb127(23)=abb127(30)+abb127(23)+abb127(131)+abb127(38)+2.0_ki*abb127(128)
      abb127(23)=4.0_ki*abb127(23)
      abb127(30)=abb127(18)*spbl6k3
      abb127(15)=abb127(15)*spbl6k2
      abb127(38)=abb127(78)*abb127(46)
      abb127(15)=abb127(15)-abb127(38)
      abb127(38)=abb127(15)*abb127(103)
      abb127(30)=abb127(30)+abb127(38)
      abb127(38)=spak1k3*abb127(30)
      abb127(78)=-abb127(71)*abb127(90)
      abb127(128)=abb127(78)*abb127(103)
      abb127(131)=-spbk4k2*abb127(128)
      abb127(132)=spbl6k4*abb127(20)
      abb127(133)=spak1k2*abb127(41)
      abb127(38)=abb127(132)+abb127(38)+abb127(133)+abb127(131)
      abb127(38)=4.0_ki*abb127(38)
      abb127(83)=abb127(83)-abb127(17)
      abb127(131)=abb127(83)*spbl5k2
      abb127(113)=abb127(131)-abb127(113)
      abb127(131)=-spbl6k3*abb127(113)
      abb127(44)=abb127(43)*abb127(44)
      abb127(44)=abb127(44)-abb127(57)
      abb127(57)=abb127(44)*abb127(12)
      abb127(46)=abb127(46)*abb127(39)
      abb127(43)=abb127(43)*abb127(74)
      abb127(43)=abb127(46)-abb127(43)
      abb127(46)=abb127(57)+abb127(43)
      abb127(57)=-spak2k7*abb127(46)
      abb127(57)=abb127(131)+abb127(57)
      abb127(74)=spbl5k3*abb127(18)
      abb127(57)=abb127(74)+2.0_ki*abb127(57)
      abb127(57)=spak1k3*abb127(57)
      abb127(63)=abb127(45)*abb127(63)
      abb127(74)=abb127(100)*spak1k4
      abb127(63)=abb127(63)-abb127(74)
      abb127(74)=abb127(63)*abb127(12)
      abb127(45)=abb127(59)*abb127(45)
      abb127(71)=abb127(71)*abb127(39)
      abb127(45)=abb127(45)-abb127(71)
      abb127(71)=abb127(74)-abb127(45)
      abb127(74)=-spbk4k2*abb127(71)*abb127(103)
      abb127(100)=spbl6k4*abb127(24)
      abb127(131)=spbl5k4*abb127(20)
      abb127(51)=abb127(131)+2.0_ki*abb127(100)+abb127(74)+abb127(57)+abb127(51)
      abb127(51)=4.0_ki*abb127(51)
      abb127(57)=abb127(58)*abb127(69)
      abb127(74)=abb127(107)*spbk2k1
      abb127(100)=abb127(14)*abb127(74)
      abb127(34)=-abb127(57)+abb127(34)+abb127(100)
      abb127(34)=es12*abb127(34)
      abb127(79)=abb127(79)*abb127(76)
      abb127(45)=abb127(45)*spbk2k1
      abb127(131)=abb127(45)*spak1l5
      abb127(132)=abb127(101)*spbk2k1
      abb127(133)=abb127(132)*abb127(63)
      abb127(131)=abb127(131)-abb127(133)
      abb127(131)=abb127(131)*abb127(103)
      abb127(133)=spbk2k1*spak1k7
      abb127(134)=abb127(133)*abb127(127)
      abb127(135)=es12*abb127(7)
      abb127(49)=abb127(135)*abb127(49)
      abb127(49)=abb127(134)+abb127(49)
      abb127(49)=abb127(49)*abb127(94)
      abb127(134)=abb127(20)+abb127(100)
      abb127(134)=abb127(134)*es71
      abb127(100)=abb127(100)*es712
      abb127(116)=abb127(20)*abb127(116)
      abb127(136)=abb127(109)*spbk7l6
      abb127(137)=abb127(136)*abb127(74)
      abb127(34)=-abb127(131)+abb127(49)-abb127(100)+abb127(134)-abb127(137)+ab&
      &b127(116)+abb127(79)+abb127(34)
      abb127(49)=-spbk4k3*abb127(34)
      abb127(67)=-abb127(67)*abb127(128)
      abb127(79)=abb127(20)*spbl6k1
      abb127(100)=-spbk4k3*abb127(79)
      abb127(67)=abb127(67)+abb127(100)
      abb127(67)=spak1l6*abb127(67)
      abb127(49)=abb127(67)+abb127(49)
      abb127(49)=4.0_ki*abb127(49)
      abb127(62)=abb127(62)*abb127(93)
      abb127(67)=abb127(120)*spak1k7
      abb127(62)=abb127(62)+abb127(67)
      abb127(62)=abb127(62)*abb127(94)
      abb127(43)=abb127(43)*spak1l5
      abb127(44)=abb127(44)*abb127(101)
      abb127(43)=abb127(43)+abb127(44)
      abb127(43)=abb127(43)*abb127(103)
      abb127(44)=es71-abb127(108)
      abb127(44)=abb127(44)*abb127(13)*abb127(107)
      abb127(30)=abb127(30)*spak1l6
      abb127(31)=abb127(83)*abb127(31)
      abb127(37)=abb127(37)*abb127(81)
      abb127(67)=abb127(87)*abb127(89)
      abb127(31)=-abb127(31)+abb127(37)-abb127(67)
      abb127(37)=abb127(31)*abb127(86)
      abb127(67)=abb127(72)*spak1k2
      abb127(72)=abb127(18)*spak1l5
      abb127(81)=abb127(72)*spbl5k3
      abb127(83)=abb127(123)*abb127(111)
      abb127(86)=abb127(130)*spak1k7
      abb127(87)=abb127(114)*abb127(85)
      abb127(30)=abb127(37)+abb127(62)-abb127(43)+abb127(87)+abb127(81)+abb127(&
      &30)-abb127(44)-abb127(67)+abb127(83)-abb127(86)
      abb127(37)=8.0_ki*abb127(30)
      abb127(30)=4.0_ki*abb127(30)
      abb127(43)=-abb127(92)*abb127(94)
      abb127(39)=abb127(39)*abb127(59)
      abb127(39)=abb127(39)-abb127(98)
      abb127(44)=abb127(39)*spak1l5
      abb127(62)=abb127(44)+abb127(102)
      abb127(62)=abb127(62)*abb127(103)
      abb127(67)=-abb127(59)*abb127(104)
      abb127(67)=abb127(106)+abb127(67)
      abb127(81)=abb127(117)*abb127(67)
      abb127(83)=-abb127(107)*abb127(81)
      abb127(56)=-abb127(59)*abb127(56)
      abb127(86)=spak1k2*abb127(56)
      abb127(59)=-abb127(59)*abb127(90)
      abb127(87)=abb127(59)*abb127(103)
      abb127(89)=spak1l6*abb127(87)
      abb127(90)=abb127(17)*abb127(114)
      abb127(43)=abb127(90)-abb127(68)+abb127(89)+abb127(62)+abb127(43)+abb127(&
      &86)+abb127(83)
      abb127(43)=spbk4k2*abb127(43)
      abb127(62)=-spak1l6*abb127(18)
      abb127(62)=-2.0_ki*abb127(31)+abb127(62)
      abb127(62)=spbl6k4*abb127(62)
      abb127(68)=spbk7k4*abb127(18)*spak1k7
      abb127(83)=-spbl5k4*abb127(72)
      abb127(43)=abb127(83)+abb127(68)+abb127(62)+abb127(43)
      abb127(43)=4.0_ki*abb127(43)
      abb127(29)=abb127(29)*spbl5k2
      abb127(29)=abb127(29)+abb127(52)
      abb127(52)=abb127(29)*spak4l5
      abb127(52)=abb127(52)+abb127(105)
      abb127(62)=4.0_ki*abb127(52)
      abb127(50)=abb127(110)-abb127(50)
      abb127(50)=8.0_ki*abb127(50)
      abb127(52)=8.0_ki*abb127(52)
      abb127(68)=-spbk2k1*abb127(53)
      abb127(65)=spak3k4*abb127(65)
      abb127(58)=spbk2k1*abb127(58)
      abb127(83)=spak3k4*abb127(123)
      abb127(58)=abb127(58)+abb127(83)
      abb127(58)=abb127(58)*abb127(69)
      abb127(58)=abb127(58)+abb127(65)+abb127(68)
      abb127(58)=8.0_ki*abb127(58)
      abb127(65)=-spbk2k1*abb127(118)
      abb127(68)=-abb127(7)*abb127(88)
      abb127(65)=abb127(65)+abb127(68)
      abb127(65)=8.0_ki*abb127(65)
      abb127(68)=abb127(13)*spak3k4
      abb127(14)=abb127(14)*spbk2k1
      abb127(68)=abb127(68)+abb127(14)
      abb127(68)=abb127(68)*abb127(115)
      abb127(13)=-es12*abb127(13)
      abb127(13)=abb127(13)+abb127(129)
      abb127(13)=spak3k4*abb127(13)
      abb127(14)=-es12*abb127(14)
      abb127(69)=-abb127(127)*abb127(96)
      abb127(83)=spbk2k1*abb127(109)
      abb127(85)=spak3k4*abb127(85)
      abb127(83)=abb127(83)+abb127(85)
      abb127(83)=spbk7l6*abb127(83)
      abb127(13)=abb127(83)+abb127(13)+abb127(14)+abb127(69)+abb127(68)
      abb127(13)=8.0_ki*abb127(13)
      abb127(14)=-spbk2k1*abb127(78)
      abb127(15)=spak3k4*abb127(15)
      abb127(14)=abb127(14)+abb127(15)
      abb127(15)=8.0_ki*spak2k7
      abb127(14)=abb127(14)*abb127(15)
      abb127(68)=-spbk2k1*abb127(24)
      abb127(69)=-spal6k7*abb127(80)
      abb127(80)=-spbl5k2*abb127(84)
      abb127(69)=abb127(69)+abb127(80)
      abb127(69)=spak3k4*abb127(69)
      abb127(68)=abb127(68)+abb127(69)
      abb127(68)=8.0_ki*abb127(68)
      abb127(46)=-spak3k4*abb127(46)
      abb127(63)=-abb127(63)*abb127(96)
      abb127(45)=abb127(46)+abb127(45)+abb127(63)
      abb127(45)=abb127(45)*abb127(15)
      abb127(29)=spak3l5*abb127(29)
      abb127(28)=spak3k7*abb127(28)
      abb127(41)=spak3l6*abb127(41)
      abb127(28)=abb127(41)+abb127(29)+abb127(28)
      abb127(28)=4.0_ki*abb127(28)
      abb127(29)=-spbk2k1*abb127(128)
      abb127(29)=abb127(29)-abb127(79)
      abb127(29)=spak1l6*abb127(29)
      abb127(29)=abb127(29)-abb127(34)
      abb127(29)=4.0_ki*spbk3k1*abb127(29)
      abb127(34)=16.0_ki*spbk3k1
      abb127(20)=abb127(34)*abb127(20)
      abb127(41)=abb127(53)-abb127(57)
      abb127(41)=abb127(41)*abb127(34)
      abb127(46)=abb127(118)*abb127(34)
      abb127(53)=-abb127(136)-abb127(126)
      abb127(53)=abb127(53)*abb127(34)
      abb127(57)=abb127(34)*spak2k7
      abb127(63)=abb127(78)*abb127(57)
      abb127(24)=abb127(24)*abb127(34)
      abb127(34)=abb127(71)*abb127(57)
      abb127(56)=abb127(70)-abb127(56)
      abb127(57)=-es12*abb127(56)
      abb127(64)=-abb127(64)*abb127(135)
      abb127(69)=-abb127(91)*abb127(133)
      abb127(64)=abb127(64)+abb127(69)
      abb127(64)=abb127(64)*abb127(94)
      abb127(44)=spbk2k1*abb127(44)
      abb127(69)=abb127(99)*abb127(132)
      abb127(44)=abb127(44)+abb127(69)
      abb127(44)=abb127(44)*abb127(103)
      abb127(69)=abb127(67)*abb127(74)
      abb127(69)=abb127(69)+abb127(18)
      abb127(69)=es71*abb127(69)
      abb127(31)=abb127(31)*abb127(76)
      abb127(70)=spbk2k1*abb127(87)
      abb127(71)=spbl6k1*abb127(18)
      abb127(70)=abb127(70)+abb127(71)
      abb127(70)=spak1l6*abb127(70)
      abb127(67)=-abb127(67)*abb127(108)
      abb127(17)=abb127(17)*spbk7l6
      abb127(67)=abb127(17)+abb127(67)
      abb127(67)=abb127(74)*abb127(67)
      abb127(71)=spbl5k1*abb127(72)
      abb127(31)=abb127(71)+abb127(70)+abb127(31)+abb127(69)+abb127(44)+abb127(&
      &64)+abb127(67)+abb127(57)
      abb127(31)=4.0_ki*abb127(31)
      abb127(18)=8.0_ki*abb127(18)
      abb127(44)=abb127(66)+abb127(56)
      abb127(44)=8.0_ki*abb127(44)
      abb127(56)=8.0_ki*abb127(121)
      abb127(57)=abb127(12)*abb127(91)
      abb127(17)=-abb127(17)+abb127(57)+abb127(81)
      abb127(17)=8.0_ki*abb127(17)
      abb127(57)=-abb127(59)*abb127(15)
      abb127(59)=8.0_ki*abb127(113)
      abb127(64)=-abb127(12)*abb127(99)
      abb127(39)=abb127(64)-abb127(39)
      abb127(15)=abb127(39)*abb127(15)
      R2d127=0.0_ki
      rat2 = rat2 + R2d127
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='127' value='", &
          & R2d127, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd127h6