module     p0_dbaru_epnebbbarg_abbrevd310h3
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(140), public :: abb310
   complex(ki), public :: R2d310
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
      abb310(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb310(2)=NC**(-1)
      abb310(3)=sqrt2**(-1)
      abb310(4)=es234**(-1)
      abb310(5)=spak2l5**(-1)
      abb310(6)=spak2k7**(-1)
      abb310(7)=spak2l6**(-1)
      abb310(8)=spbl6k2**(-1)
      abb310(9)=sqrt(mB**2)
      abb310(10)=TR*gW
      abb310(10)=abb310(10)**2*i_*CVDU*abb310(3)*abb310(1)
      abb310(11)=abb310(10)*abb310(2)
      abb310(12)=abb310(6)*abb310(4)
      abb310(13)=abb310(12)*spbk3k2
      abb310(14)=abb310(11)*abb310(13)
      abb310(15)=c1+c3
      abb310(16)=abb310(15)*abb310(14)*spak2k4
      abb310(17)=spak1k2*mB
      abb310(18)=abb310(17)**2
      abb310(19)=abb310(5)*abb310(7)
      abb310(20)=abb310(18)*abb310(19)
      abb310(21)=abb310(20)*abb310(16)
      abb310(13)=c4*abb310(13)*abb310(10)
      abb310(22)=spak1k2*abb310(2)
      abb310(22)=abb310(22)**2
      abb310(23)=abb310(22)*abb310(13)
      abb310(24)=mB**2
      abb310(25)=abb310(23)*abb310(24)
      abb310(26)=abb310(5)*spak2k4
      abb310(27)=abb310(26)*abb310(7)
      abb310(28)=abb310(25)*abb310(27)
      abb310(21)=abb310(21)-abb310(28)
      abb310(28)=-abb310(9)*abb310(21)
      abb310(29)=abb310(7)*spak1k2
      abb310(30)=abb310(29)**2
      abb310(31)=mB**3
      abb310(32)=abb310(30)*abb310(31)
      abb310(33)=abb310(32)*abb310(16)
      abb310(34)=abb310(31)*abb310(7)**2
      abb310(35)=abb310(23)*abb310(34)
      abb310(36)=abb310(35)*spak2k4
      abb310(33)=abb310(33)-abb310(36)
      abb310(36)=spbl5k2*abb310(8)
      abb310(37)=-abb310(33)*abb310(36)
      abb310(14)=abb310(14)*abb310(15)
      abb310(38)=abb310(14)*abb310(32)
      abb310(35)=abb310(38)-abb310(35)
      abb310(38)=abb310(8)*spak3k4
      abb310(35)=abb310(35)*abb310(38)
      abb310(39)=spbl5k3*abb310(35)
      abb310(28)=abb310(39)+abb310(28)+abb310(37)
      abb310(28)=es12*abb310(28)
      abb310(37)=abb310(5)*abb310(16)
      abb310(39)=mB*abb310(37)
      abb310(40)=spak1k2**2
      abb310(41)=abb310(39)*abb310(40)
      abb310(42)=abb310(23)*abb310(26)
      abb310(43)=abb310(42)*mB
      abb310(41)=abb310(41)-abb310(43)
      abb310(41)=abb310(41)*spbl6k2
      abb310(43)=abb310(40)*abb310(14)
      abb310(43)=abb310(43)-abb310(23)
      abb310(44)=abb310(5)*mB
      abb310(45)=abb310(43)*abb310(44)
      abb310(46)=spbl6k3*spak3k4
      abb310(47)=abb310(45)*abb310(46)
      abb310(41)=abb310(41)-abb310(47)
      abb310(47)=abb310(7)*mB
      abb310(48)=abb310(40)*abb310(47)
      abb310(49)=abb310(48)*abb310(16)
      abb310(23)=abb310(47)*abb310(23)
      abb310(50)=abb310(23)*spak2k4
      abb310(49)=abb310(49)-abb310(50)
      abb310(50)=-spbl5k2*abb310(49)
      abb310(50)=abb310(50)-abb310(41)
      abb310(50)=spbl6k1*abb310(50)
      abb310(48)=abb310(48)*abb310(14)
      abb310(23)=abb310(48)-abb310(23)
      abb310(48)=spbl6k1*spak3k4
      abb310(51)=abb310(48)*abb310(23)
      abb310(52)=spbl5k3*abb310(51)
      abb310(50)=abb310(52)+abb310(50)
      abb310(50)=spak1l6*abb310(50)
      abb310(52)=spbk3k2**2
      abb310(53)=abb310(12)*abb310(5)
      abb310(54)=abb310(2)**2
      abb310(55)=abb310(54)*c4
      abb310(56)=abb310(10)*abb310(7)
      abb310(57)=abb310(52)*abb310(56)*abb310(55)*abb310(53)
      abb310(58)=abb310(11)*abb310(15)
      abb310(59)=abb310(12)*abb310(58)
      abb310(60)=abb310(52)*abb310(19)
      abb310(61)=-abb310(60)*abb310(59)
      abb310(57)=abb310(57)+abb310(61)
      abb310(61)=abb310(38)*spbl6k1
      abb310(57)=abb310(61)*abb310(57)*abb310(17)**3
      abb310(62)=abb310(24)*abb310(19)
      abb310(63)=abb310(62)*abb310(14)
      abb310(64)=mB*abb310(2)
      abb310(64)=abb310(64)**2
      abb310(65)=abb310(64)*abb310(13)
      abb310(66)=-abb310(19)*abb310(65)
      abb310(63)=abb310(66)+abb310(63)
      abb310(66)=spbk3k1*spak3k4
      abb310(63)=abb310(9)*abb310(66)*abb310(63)*spak1k2**3
      abb310(28)=abb310(28)+abb310(63)+abb310(57)+abb310(50)
      abb310(28)=8.0_ki*spbk7k1*abb310(28)
      abb310(50)=abb310(13)*abb310(54)
      abb310(57)=abb310(50)*spak2k4
      abb310(57)=abb310(16)-abb310(57)
      abb310(63)=-abb310(57)*spbk7l6
      abb310(67)=abb310(17)*abb310(63)
      abb310(68)=-spak1k2*abb310(57)
      abb310(69)=abb310(9)*spbk7l6
      abb310(70)=abb310(68)*abb310(69)
      abb310(67)=abb310(67)-abb310(70)
      abb310(70)=abb310(67)*spbl5k2
      abb310(71)=abb310(14)-abb310(50)
      abb310(72)=abb310(17)*abb310(71)
      abb310(73)=spak3k4*spbk7l6
      abb310(74)=abb310(72)*abb310(73)
      abb310(75)=spak1k2*abb310(71)
      abb310(76)=abb310(75)*abb310(69)
      abb310(77)=abb310(76)*spak3k4
      abb310(74)=abb310(74)-abb310(77)
      abb310(78)=abb310(74)*spbl5k3
      abb310(70)=abb310(70)+abb310(78)
      abb310(78)=16.0_ki*abb310(70)
      abb310(79)=abb310(55)*abb310(10)
      abb310(80)=abb310(58)-abb310(79)
      abb310(81)=spbk3k2*abb310(4)
      abb310(82)=abb310(81)*abb310(80)
      abb310(83)=abb310(69)*spbk7l5
      abb310(84)=abb310(82)*abb310(83)
      abb310(85)=spbl6k1*spbk7l5
      abb310(86)=abb310(85)*abb310(9)
      abb310(87)=abb310(86)*abb310(75)
      abb310(84)=abb310(84)+abb310(87)
      abb310(87)=abb310(84)*spak1k4
      abb310(88)=spbl5k1*spbk7l6
      abb310(88)=abb310(85)-abb310(88)
      abb310(89)=abb310(23)*abb310(88)
      abb310(90)=abb310(11)*mB
      abb310(91)=abb310(90)*abb310(15)
      abb310(92)=abb310(10)*mB
      abb310(93)=abb310(55)*abb310(92)
      abb310(93)=abb310(91)-abb310(93)
      abb310(94)=abb310(93)*abb310(81)
      abb310(95)=abb310(29)*abb310(94)
      abb310(96)=spbk7l5*spbk7l6
      abb310(97)=abb310(95)*abb310(96)
      abb310(89)=abb310(89)+abb310(97)
      abb310(97)=abb310(89)*spak4l6
      abb310(98)=spbl5k1*spak1k4
      abb310(99)=abb310(98)*abb310(76)
      abb310(94)=abb310(26)*abb310(94)
      abb310(100)=spak1l6*spbk7l6**2
      abb310(101)=abb310(100)*abb310(94)
      abb310(102)=2.0_ki*abb310(9)
      abb310(103)=abb310(102)*spbk7k1
      abb310(104)=abb310(21)*abb310(103)
      abb310(87)=abb310(97)-abb310(87)+abb310(104)+abb310(99)-abb310(101)
      abb310(97)=abb310(31)*abb310(5)
      abb310(99)=abb310(97)*abb310(29)
      abb310(101)=abb310(99)*abb310(16)
      abb310(104)=abb310(50)*abb310(26)
      abb310(105)=abb310(29)*abb310(104)*abb310(31)
      abb310(101)=abb310(101)-abb310(105)
      abb310(105)=abb310(101)*spbk7l6
      abb310(106)=abb310(7)*abb310(2)
      abb310(106)=abb310(106)**2
      abb310(13)=abb310(106)*abb310(31)*abb310(13)*spak1k2
      abb310(107)=abb310(13)*spak2k4
      abb310(108)=abb310(34)*spak1k2
      abb310(109)=abb310(108)*abb310(16)
      abb310(107)=abb310(109)-abb310(107)
      abb310(109)=abb310(107)*spbk7l5
      abb310(105)=abb310(105)+abb310(109)
      abb310(109)=es712*abb310(8)
      abb310(110)=es71*abb310(8)
      abb310(109)=abb310(109)-abb310(110)
      abb310(105)=abb310(105)*abb310(109)
      abb310(111)=abb310(19)*abb310(31)
      abb310(112)=abb310(111)*abb310(40)
      abb310(113)=abb310(16)*abb310(112)
      abb310(42)=abb310(42)*abb310(31)*abb310(7)
      abb310(42)=abb310(42)-abb310(113)
      abb310(113)=spbl6k1*abb310(8)
      abb310(42)=abb310(42)*abb310(113)
      abb310(114)=spbl5k1*abb310(8)
      abb310(33)=abb310(33)*abb310(114)
      abb310(42)=abb310(42)+abb310(33)
      abb310(42)=abb310(42)*spbk7k2
      abb310(107)=abb310(107)*abb310(8)
      abb310(115)=abb310(107)*spbk7l5
      abb310(116)=2.0_ki*es12
      abb310(117)=abb310(116)*abb310(115)
      abb310(42)=abb310(42)-abb310(117)+abb310(87)+abb310(105)
      abb310(42)=16.0_ki*abb310(42)
      abb310(11)=abb310(11)*spak1k2
      abb310(105)=abb310(15)*abb310(31)*abb310(11)
      abb310(117)=-abb310(19)*abb310(105)
      abb310(118)=abb310(10)*spak1k2
      abb310(55)=abb310(55)*abb310(118)
      abb310(119)=abb310(55)*abb310(111)
      abb310(117)=abb310(119)+abb310(117)
      abb310(120)=abb310(38)*spbk7l6
      abb310(117)=abb310(120)*abb310(81)*abb310(117)
      abb310(111)=abb310(43)*abb310(111)
      abb310(121)=-abb310(111)*abb310(61)
      abb310(117)=abb310(117)+abb310(121)
      abb310(117)=spbk7k3*abb310(117)
      abb310(121)=es712-es71
      abb310(122)=-abb310(116)+abb310(121)
      abb310(115)=abb310(115)*abb310(122)
      abb310(33)=spbk7k2*abb310(33)
      abb310(111)=spbk3k1*abb310(111)*abb310(120)
      abb310(33)=abb310(111)+abb310(117)+abb310(33)+abb310(115)+abb310(87)
      abb310(33)=16.0_ki*abb310(33)
      abb310(41)=spbk7k1*abb310(41)
      abb310(87)=spbk7k1*abb310(49)
      abb310(67)=abb310(87)-abb310(67)
      abb310(67)=spbl5k2*abb310(67)
      abb310(87)=-spbk7k1*spak3k4*abb310(23)
      abb310(74)=abb310(87)-abb310(74)
      abb310(74)=spbl5k3*abb310(74)
      abb310(41)=abb310(67)+abb310(74)+abb310(41)
      abb310(41)=16.0_ki*abb310(41)
      abb310(67)=abb310(17)*abb310(5)
      abb310(74)=abb310(67)*abb310(16)
      abb310(17)=abb310(104)*abb310(17)
      abb310(17)=abb310(74)-abb310(17)
      abb310(74)=abb310(17)*spbk7l6
      abb310(87)=abb310(47)*spak1k2
      abb310(16)=abb310(87)*abb310(16)
      abb310(50)=abb310(87)*abb310(50)
      abb310(111)=abb310(50)*spak2k4
      abb310(16)=abb310(16)-abb310(111)
      abb310(111)=abb310(16)*spbk7l5
      abb310(74)=abb310(74)+abb310(111)
      abb310(74)=32.0_ki*abb310(74)
      abb310(70)=8.0_ki*abb310(70)
      abb310(111)=-abb310(95)*abb310(73)
      abb310(51)=abb310(111)-abb310(51)
      abb310(51)=spbk7k3*abb310(51)
      abb310(111)=abb310(121)*spbk7l6
      abb310(115)=-abb310(16)*abb310(111)
      abb310(117)=spbk7k2*spbl6k1
      abb310(49)=abb310(49)*abb310(117)
      abb310(122)=abb310(73)*spbk3k1
      abb310(123)=abb310(23)*abb310(122)
      abb310(49)=abb310(123)+abb310(51)+abb310(49)+abb310(115)
      abb310(49)=8.0_ki*abb310(49)
      abb310(51)=abb310(58)*abb310(40)
      abb310(115)=abb310(31)*abb310(12)
      abb310(123)=abb310(115)*abb310(19)
      abb310(124)=abb310(123)*abb310(51)
      abb310(22)=abb310(22)*c4
      abb310(56)=abb310(22)*abb310(56)
      abb310(125)=abb310(56)*abb310(115)
      abb310(126)=abb310(125)*abb310(5)
      abb310(124)=abb310(124)-abb310(126)
      abb310(126)=-abb310(124)*abb310(113)
      abb310(127)=abb310(10)*abb310(12)*abb310(22)*abb310(34)
      abb310(30)=abb310(58)*abb310(30)*abb310(115)
      abb310(30)=abb310(30)-abb310(127)
      abb310(127)=abb310(30)*abb310(114)
      abb310(126)=abb310(126)+abb310(127)
      abb310(126)=spbk7k2*abb310(126)
      abb310(127)=abb310(11)*abb310(15)
      abb310(128)=abb310(127)-abb310(55)
      abb310(123)=abb310(128)*abb310(123)
      abb310(129)=abb310(123)*spbk7l6
      abb310(106)=abb310(106)*abb310(118)
      abb310(130)=abb310(106)*abb310(115)
      abb310(131)=abb310(130)*c4
      abb310(11)=abb310(11)*abb310(12)
      abb310(132)=abb310(11)*abb310(34)
      abb310(133)=abb310(132)*abb310(15)
      abb310(131)=abb310(133)-abb310(131)
      abb310(133)=abb310(131)*spbk7l5
      abb310(129)=abb310(129)+abb310(133)
      abb310(134)=-abb310(129)*abb310(110)
      abb310(135)=abb310(20)*abb310(59)
      abb310(136)=abb310(56)*abb310(24)
      abb310(137)=-abb310(53)*abb310(136)
      abb310(135)=abb310(137)+abb310(135)
      abb310(135)=abb310(135)*abb310(103)
      abb310(137)=abb310(5)*abb310(93)
      abb310(138)=abb310(137)*abb310(4)
      abb310(139)=-abb310(138)*abb310(100)
      abb310(126)=abb310(134)+abb310(126)+abb310(135)+abb310(139)
      abb310(126)=es34*abb310(126)
      abb310(134)=abb310(19)*abb310(6)
      abb310(135)=abb310(134)*abb310(105)
      abb310(139)=abb310(119)*abb310(6)
      abb310(135)=abb310(135)-abb310(139)
      abb310(139)=abb310(135)*spbk7l6
      abb310(34)=abb310(34)*abb310(6)
      abb310(140)=-abb310(34)*abb310(127)
      abb310(31)=abb310(6)*abb310(31)*abb310(106)*c4
      abb310(31)=abb310(31)+abb310(140)
      abb310(106)=abb310(31)*spbk7l5
      abb310(139)=abb310(139)-abb310(106)
      abb310(129)=es34*abb310(129)
      abb310(129)=-abb310(139)+abb310(129)
      abb310(129)=es712*abb310(129)
      abb310(133)=-es34*abb310(133)
      abb310(106)=-abb310(106)+abb310(133)
      abb310(106)=abb310(116)*abb310(106)
      abb310(106)=abb310(106)+abb310(129)
      abb310(106)=abb310(8)*abb310(106)
      abb310(129)=abb310(12)*abb310(7)
      abb310(40)=-abb310(91)*abb310(129)*abb310(40)
      abb310(91)=abb310(92)*abb310(129)*abb310(22)
      abb310(40)=abb310(91)+abb310(40)
      abb310(40)=abb310(88)*abb310(40)
      abb310(88)=-abb310(93)*abb310(29)
      abb310(91)=abb310(96)*abb310(4)*abb310(88)
      abb310(40)=abb310(40)+abb310(91)
      abb310(40)=abb310(40)*spak4l6
      abb310(80)=abb310(83)*abb310(80)*abb310(4)
      abb310(11)=abb310(11)*abb310(15)
      abb310(55)=abb310(55)*abb310(12)
      abb310(55)=abb310(55)-abb310(11)
      abb310(86)=abb310(55)*abb310(86)
      abb310(80)=abb310(80)-abb310(86)
      abb310(80)=abb310(80)*spak1k4
      abb310(86)=-abb310(55)*abb310(69)*abb310(98)
      abb310(86)=-abb310(40)-abb310(80)+abb310(86)
      abb310(86)=spbk4k2*abb310(86)
      abb310(32)=-abb310(32)*abb310(6)*abb310(58)
      abb310(10)=abb310(34)*abb310(22)*abb310(10)
      abb310(10)=abb310(10)+abb310(32)
      abb310(10)=abb310(10)*abb310(114)
      abb310(22)=abb310(112)*abb310(58)
      abb310(32)=-abb310(97)*abb310(56)
      abb310(22)=abb310(32)+abb310(22)
      abb310(22)=abb310(113)*abb310(6)*abb310(22)
      abb310(10)=abb310(22)+abb310(10)
      abb310(10)=spbk7k2*abb310(10)
      abb310(22)=abb310(139)*abb310(110)
      abb310(32)=spbl5k1*abb310(76)
      abb310(32)=abb310(32)-abb310(84)
      abb310(32)=spak1k3*abb310(32)
      abb310(34)=spak3l6*abb310(89)
      abb310(18)=abb310(58)*abb310(18)
      abb310(56)=-abb310(134)*abb310(18)
      abb310(58)=abb310(5)*abb310(6)
      abb310(76)=abb310(58)*abb310(136)
      abb310(56)=abb310(76)+abb310(56)
      abb310(56)=abb310(56)*abb310(103)
      abb310(76)=abb310(137)*abb310(100)
      abb310(10)=abb310(34)+abb310(32)+abb310(86)+abb310(126)+abb310(22)+abb310&
      &(10)+abb310(56)+abb310(76)+abb310(106)
      abb310(10)=8.0_ki*abb310(10)
      abb310(22)=spak1k2*abb310(93)
      abb310(32)=abb310(22)*abb310(53)
      abb310(34)=spbk7l6*abb310(32)
      abb310(56)=abb310(29)*abb310(12)
      abb310(76)=abb310(56)*abb310(93)
      abb310(84)=spbk7l5*abb310(76)
      abb310(34)=abb310(34)+abb310(84)
      abb310(34)=es34*abb310(34)
      abb310(84)=abb310(22)*abb310(58)
      abb310(86)=-spbk7l6*abb310(84)
      abb310(88)=abb310(6)*abb310(88)
      abb310(89)=spbk7l5*abb310(88)
      abb310(34)=abb310(34)+abb310(86)+abb310(89)
      abb310(34)=16.0_ki*abb310(34)
      abb310(27)=abb310(27)*abb310(115)
      abb310(51)=abb310(27)*abb310(51)
      abb310(86)=-abb310(26)*abb310(125)
      abb310(51)=abb310(86)+abb310(51)
      abb310(51)=abb310(51)*abb310(113)
      abb310(30)=-abb310(114)*spak2k4*abb310(30)
      abb310(30)=abb310(51)+abb310(30)
      abb310(30)=spbk7k2*abb310(30)
      abb310(27)=abb310(128)*abb310(27)
      abb310(51)=abb310(27)*spbk7l6
      abb310(86)=c4*spak2k4
      abb310(89)=abb310(130)*abb310(86)
      abb310(15)=spak2k4*abb310(15)
      abb310(91)=abb310(132)*abb310(15)
      abb310(89)=abb310(91)-abb310(89)
      abb310(91)=abb310(89)*spbk7l5
      abb310(51)=abb310(51)+abb310(91)
      abb310(51)=-abb310(51)*abb310(109)
      abb310(97)=abb310(129)*abb310(26)
      abb310(18)=-abb310(97)*abb310(18)
      abb310(106)=abb310(26)*abb310(12)
      abb310(109)=abb310(106)*abb310(136)
      abb310(18)=abb310(109)+abb310(18)
      abb310(18)=abb310(18)*abb310(103)
      abb310(103)=-abb310(26)*abb310(93)*abb310(4)
      abb310(100)=-abb310(103)*abb310(100)
      abb310(91)=abb310(8)*abb310(116)*abb310(91)
      abb310(18)=abb310(40)+abb310(30)+abb310(91)+abb310(100)+abb310(18)+abb310&
      &(80)+abb310(51)
      abb310(18)=spbk4k3*abb310(18)
      abb310(30)=-abb310(96)*abb310(22)
      abb310(40)=abb310(83)*abb310(128)
      abb310(30)=abb310(30)+abb310(40)
      abb310(30)=abb310(81)*abb310(30)
      abb310(40)=mB*abb310(43)
      abb310(51)=abb310(9)*abb310(43)
      abb310(51)=-abb310(40)+abb310(51)
      abb310(51)=abb310(51)*abb310(85)
      abb310(55)=abb310(55)*spbk4k3*spak1k4
      abb310(43)=abb310(55)-abb310(43)
      abb310(43)=abb310(69)*abb310(43)
      abb310(40)=spbk7l6*abb310(40)
      abb310(40)=abb310(40)+abb310(43)
      abb310(40)=spbl5k1*abb310(40)
      abb310(18)=abb310(40)+abb310(51)+abb310(18)+abb310(30)
      abb310(18)=8.0_ki*abb310(18)
      abb310(22)=abb310(22)*abb310(106)
      abb310(30)=-spbk7l6*abb310(22)
      abb310(40)=abb310(86)*abb310(54)*abb310(92)
      abb310(15)=abb310(15)*abb310(90)
      abb310(15)=abb310(15)-abb310(40)
      abb310(40)=-abb310(56)*abb310(15)
      abb310(43)=spbk7l5*abb310(40)
      abb310(30)=abb310(30)+abb310(43)
      abb310(43)=16.0_ki*spbk4k3
      abb310(30)=abb310(30)*abb310(43)
      abb310(51)=abb310(81)*abb310(7)
      abb310(54)=abb310(51)*abb310(15)
      abb310(55)=-spbk7l6*abb310(54)
      abb310(56)=spbl6k1*abb310(16)
      abb310(55)=abb310(55)+abb310(56)
      abb310(55)=spbl5k2*abb310(55)
      abb310(56)=abb310(67)*abb310(71)
      abb310(67)=abb310(48)*abb310(56)
      abb310(80)=-abb310(81)*abb310(137)
      abb310(81)=abb310(80)*abb310(73)
      abb310(83)=-abb310(81)-abb310(67)
      abb310(83)=spbl6k3*abb310(83)
      abb310(85)=abb310(94)*spbk7l6
      abb310(86)=abb310(17)*spbl6k1
      abb310(85)=abb310(85)-abb310(86)
      abb310(90)=-spbl6k2*abb310(85)
      abb310(55)=abb310(90)+abb310(83)+abb310(55)
      abb310(55)=spak1l6*abb310(55)
      abb310(60)=-abb310(60)*abb310(105)
      abb310(83)=abb310(52)*abb310(119)
      abb310(60)=abb310(83)+abb310(60)
      abb310(60)=abb310(120)*abb310(4)*abb310(60)
      abb310(61)=abb310(61)*abb310(52)*abb310(124)
      abb310(51)=abb310(51)*abb310(93)
      abb310(83)=abb310(51)*abb310(73)
      abb310(87)=abb310(87)*abb310(14)
      abb310(50)=abb310(87)-abb310(50)
      abb310(87)=abb310(50)*spak3k4
      abb310(90)=-spbl6k1*abb310(87)
      abb310(83)=abb310(83)+abb310(90)
      abb310(83)=spak1l6*abb310(83)
      abb310(90)=abb310(108)*abb310(14)
      abb310(13)=abb310(90)-abb310(13)
      abb310(13)=abb310(13)*abb310(38)
      abb310(90)=abb310(121)*abb310(13)
      abb310(83)=abb310(83)-abb310(90)
      abb310(83)=spbl5k3*abb310(83)
      abb310(91)=-abb310(57)*abb310(69)
      abb310(63)=-mB*abb310(63)
      abb310(63)=abb310(63)+abb310(91)
      abb310(63)=spbl5k2*abb310(63)
      abb310(69)=abb310(69)*spak3k4
      abb310(73)=abb310(73)*mB
      abb310(73)=abb310(73)-abb310(69)
      abb310(73)=-spbl5k3*abb310(71)*abb310(73)
      abb310(63)=abb310(63)+abb310(73)
      abb310(63)=spak1k7*abb310(63)
      abb310(73)=abb310(107)*spbl5k2
      abb310(92)=abb310(73)*abb310(121)
      abb310(55)=abb310(63)+abb310(83)+abb310(60)+abb310(61)+abb310(55)+abb310(&
      &92)
      abb310(55)=8.0_ki*abb310(55)
      abb310(60)=abb310(16)*spbl5k2
      abb310(61)=abb310(87)*spbl5k3
      abb310(60)=abb310(60)-abb310(61)
      abb310(61)=-16.0_ki*abb310(60)
      abb310(63)=abb310(50)*spak4l6
      abb310(83)=-abb310(71)*abb310(9)
      abb310(92)=abb310(83)*spak1k4
      abb310(63)=abb310(63)+abb310(92)
      abb310(63)=abb310(63)*spbl6l5
      abb310(92)=abb310(98)*abb310(50)
      abb310(96)=spak1k4*spbk7l5
      abb310(100)=abb310(51)*abb310(96)
      abb310(63)=abb310(73)+abb310(63)+abb310(92)-abb310(100)
      abb310(73)=abb310(24)*abb310(29)
      abb310(37)=abb310(73)*abb310(37)
      abb310(29)=abb310(65)*abb310(29)
      abb310(26)=abb310(29)*abb310(26)
      abb310(26)=abb310(37)-abb310(26)
      abb310(37)=abb310(26)*abb310(102)
      abb310(37)=-abb310(101)+abb310(37)+abb310(63)
      abb310(37)=16.0_ki*abb310(37)
      abb310(26)=-abb310(9)*abb310(26)
      abb310(65)=spbl6k3*abb310(38)*abb310(99)*abb310(71)
      abb310(26)=abb310(65)+abb310(26)-abb310(63)
      abb310(26)=16.0_ki*abb310(26)
      abb310(63)=abb310(56)*abb310(46)
      abb310(65)=-spbl6k2*abb310(17)
      abb310(63)=abb310(63)+abb310(65)
      abb310(63)=16.0_ki*abb310(63)
      abb310(60)=-8.0_ki*abb310(60)
      abb310(65)=spbl6k3*abb310(87)
      abb310(92)=-spbl6k2*abb310(16)
      abb310(65)=abb310(65)+abb310(92)
      abb310(65)=8.0_ki*abb310(65)
      abb310(11)=-abb310(62)*abb310(11)
      abb310(62)=c4*abb310(64)*abb310(118)
      abb310(64)=abb310(12)*abb310(19)*abb310(62)
      abb310(11)=abb310(64)+abb310(11)
      abb310(11)=abb310(11)*abb310(102)
      abb310(64)=-abb310(131)*abb310(36)
      abb310(11)=abb310(64)+abb310(11)+abb310(123)
      abb310(11)=es34*abb310(11)
      abb310(12)=abb310(79)*abb310(12)
      abb310(12)=abb310(12)-abb310(59)
      abb310(12)=abb310(12)*spak1k4*abb310(9)
      abb310(59)=-spak4l6*abb310(76)
      abb310(59)=-abb310(12)+abb310(59)
      abb310(59)=spbl6l5*abb310(59)
      abb310(64)=abb310(7)*abb310(4)
      abb310(79)=-abb310(93)*abb310(64)
      abb310(92)=abb310(79)*abb310(96)
      abb310(98)=-abb310(76)*abb310(98)
      abb310(59)=abb310(59)-abb310(92)+abb310(98)
      abb310(59)=spbk4k2*abb310(59)
      abb310(98)=spbk7l5*abb310(51)
      abb310(99)=-spbl5k1*abb310(50)
      abb310(100)=-spbl6l5*abb310(83)
      abb310(98)=abb310(100)+abb310(98)+abb310(99)
      abb310(98)=spak1k3*abb310(98)
      abb310(24)=abb310(127)*abb310(24)
      abb310(24)=abb310(24)-abb310(62)
      abb310(24)=abb310(24)*abb310(102)
      abb310(62)=abb310(134)*abb310(24)
      abb310(31)=-abb310(31)*abb310(36)
      abb310(99)=-spak3l6*spbl6l5*abb310(50)
      abb310(11)=abb310(99)+abb310(98)+abb310(59)+abb310(11)+abb310(31)+abb310(&
      &62)-abb310(135)
      abb310(11)=8.0_ki*abb310(11)
      abb310(24)=abb310(97)*abb310(24)
      abb310(31)=abb310(89)*abb310(36)
      abb310(24)=abb310(31)+abb310(92)+abb310(24)-abb310(27)
      abb310(24)=spbk4k3*abb310(24)
      abb310(27)=abb310(75)*abb310(9)
      abb310(12)=spbk4k3*abb310(12)
      abb310(31)=abb310(76)*spbk4k3
      abb310(36)=spak4l6*abb310(31)
      abb310(12)=abb310(36)+abb310(12)-abb310(27)+abb310(72)
      abb310(12)=spbl6l5*abb310(12)
      abb310(36)=spak1k4*abb310(31)
      abb310(36)=abb310(36)+abb310(23)
      abb310(36)=spbl5k1*abb310(36)
      abb310(59)=-spbk7l5*abb310(95)
      abb310(12)=abb310(12)+abb310(36)+abb310(59)+abb310(24)
      abb310(12)=8.0_ki*abb310(12)
      abb310(24)=abb310(47)*abb310(57)
      abb310(36)=spbl5k2*abb310(24)
      abb310(47)=abb310(47)*abb310(71)
      abb310(59)=spbl5k3*spak3k4
      abb310(62)=-abb310(47)*abb310(59)
      abb310(36)=abb310(36)+abb310(62)
      abb310(36)=8.0_ki*spak1k7*abb310(36)
      abb310(62)=abb310(81)-abb310(67)
      abb310(62)=spbk7k3*abb310(62)
      abb310(67)=abb310(104)*mB
      abb310(39)=abb310(67)-abb310(39)
      abb310(67)=abb310(39)*abb310(111)
      abb310(72)=spbk7k2*abb310(86)
      abb310(75)=abb310(56)*abb310(122)
      abb310(62)=abb310(75)+abb310(62)+abb310(72)+abb310(67)
      abb310(67)=8.0_ki*spak1l6
      abb310(62)=abb310(62)*abb310(67)
      abb310(72)=abb310(17)*spbk7k2
      abb310(75)=spbk7k3*spak3k4
      abb310(81)=abb310(75)*abb310(56)
      abb310(72)=abb310(72)-abb310(81)
      abb310(81)=-16.0_ki*abb310(72)
      abb310(44)=-abb310(71)*abb310(44)
      abb310(71)=-abb310(44)*abb310(46)
      abb310(86)=spbl6k2*abb310(39)
      abb310(71)=abb310(71)+abb310(86)
      abb310(67)=abb310(71)*abb310(67)
      abb310(71)=-abb310(107)*abb310(121)
      abb310(35)=spbk3k1*abb310(35)
      abb310(35)=abb310(35)+abb310(71)
      abb310(35)=spbk7k2*abb310(35)
      abb310(71)=spbk7k2*abb310(107)
      abb310(13)=spbk7k3*abb310(13)
      abb310(13)=abb310(71)-2.0_ki*abb310(13)
      abb310(13)=es12*abb310(13)
      abb310(71)=spbk7k3*abb310(90)
      abb310(13)=abb310(13)+abb310(71)+abb310(35)
      abb310(13)=8.0_ki*abb310(13)
      abb310(35)=abb310(16)*spbk7k2
      abb310(71)=abb310(87)*spbk7k3
      abb310(35)=abb310(35)-abb310(71)
      abb310(71)=-16.0_ki*abb310(35)
      abb310(38)=-8.0_ki*abb310(38)*abb310(52)*abb310(131)
      abb310(52)=abb310(47)*spak1k4
      abb310(52)=16.0_ki*abb310(52)
      abb310(86)=-abb310(93)*abb310(129)
      abb310(89)=abb310(86)*spak1k4
      abb310(90)=-spbk4k2*abb310(89)
      abb310(92)=spak1k3*abb310(47)
      abb310(90)=abb310(90)+abb310(92)
      abb310(90)=8.0_ki*abb310(90)
      abb310(89)=spbk4k3*abb310(89)
      abb310(89)=abb310(89)-abb310(50)
      abb310(89)=8.0_ki*abb310(89)
      abb310(73)=-abb310(73)*abb310(14)
      abb310(29)=abb310(29)+abb310(73)
      abb310(73)=8.0_ki*spak3k4
      abb310(29)=abb310(9)*abb310(73)*abb310(5)*abb310(29)
      abb310(21)=-spbk7k2*abb310(21)
      abb310(14)=abb310(20)*abb310(14)
      abb310(19)=-abb310(19)*abb310(25)
      abb310(14)=abb310(19)+abb310(14)
      abb310(14)=abb310(14)*abb310(75)
      abb310(14)=abb310(21)+abb310(14)
      abb310(14)=8.0_ki*abb310(9)*abb310(14)
      abb310(19)=abb310(96)*abb310(50)
      abb310(19)=16.0_ki*abb310(19)
      abb310(20)=-spbk4k2*abb310(76)*abb310(96)
      abb310(21)=-spak1k3*spbk7l5*abb310(50)
      abb310(20)=abb310(20)+abb310(21)
      abb310(20)=8.0_ki*abb310(20)
      abb310(21)=spbk7l5*abb310(23)
      abb310(23)=abb310(96)*abb310(31)
      abb310(21)=abb310(21)+abb310(23)
      abb310(21)=8.0_ki*abb310(21)
      abb310(16)=abb310(16)*spbl5k1
      abb310(23)=abb310(54)*spbk7l5
      abb310(16)=-abb310(85)+abb310(16)-abb310(23)
      abb310(16)=16.0_ki*abb310(16)
      abb310(23)=-spbk7l6*abb310(138)
      abb310(25)=spbk7l5*abb310(79)
      abb310(31)=spbl6k1*abb310(32)
      abb310(50)=spbl5k1*abb310(76)
      abb310(23)=abb310(50)+abb310(31)+abb310(23)+abb310(25)
      abb310(23)=es34*abb310(23)
      abb310(25)=spbk7l6*abb310(137)
      abb310(31)=-abb310(93)*abb310(7)
      abb310(50)=-spbk7l5*abb310(31)
      abb310(76)=-spbl6k1*abb310(84)
      abb310(79)=spbl5k1*abb310(88)
      abb310(23)=abb310(23)+abb310(79)+abb310(76)+abb310(25)+abb310(50)
      abb310(23)=8.0_ki*abb310(23)
      abb310(25)=-spbk7l6*abb310(103)
      abb310(50)=spbk7l5*abb310(64)*abb310(15)
      abb310(64)=-spbl6k1*abb310(22)
      abb310(40)=spbl5k1*abb310(40)
      abb310(25)=abb310(40)+abb310(64)+abb310(25)+abb310(50)
      abb310(40)=8.0_ki*spbk4k3
      abb310(25)=abb310(25)*abb310(40)
      abb310(50)=-spbl5k2*abb310(54)
      abb310(54)=abb310(51)*abb310(59)
      abb310(59)=-abb310(80)*abb310(46)
      abb310(64)=-spbl6k2*abb310(94)
      abb310(50)=abb310(64)+abb310(59)+abb310(50)+abb310(54)
      abb310(50)=8.0_ki*abb310(50)
      abb310(54)=abb310(39)*abb310(121)
      abb310(59)=abb310(80)*abb310(75)
      abb310(56)=abb310(56)*abb310(66)
      abb310(54)=abb310(56)+abb310(59)+abb310(54)
      abb310(54)=8.0_ki*abb310(54)
      abb310(56)=abb310(87)*spbk3k1
      abb310(51)=abb310(75)*abb310(51)
      abb310(59)=abb310(121)*abb310(24)
      abb310(51)=-abb310(59)+abb310(56)-abb310(51)
      abb310(56)=8.0_ki*abb310(51)
      abb310(17)=abb310(17)*spbk7k1
      abb310(59)=es12*abb310(17)
      abb310(45)=-spbk7k1*abb310(45)*abb310(66)
      abb310(45)=abb310(59)+abb310(45)
      abb310(45)=8.0_ki*abb310(45)
      abb310(17)=32.0_ki*abb310(17)
      abb310(32)=-es34*abb310(32)
      abb310(32)=abb310(84)+abb310(32)
      abb310(32)=16.0_ki*spbk7k1*abb310(32)
      abb310(22)=spbk7k1*abb310(22)*abb310(43)
      abb310(43)=16.0_ki*abb310(39)
      abb310(53)=-es34*abb310(53)
      abb310(53)=abb310(53)+abb310(58)
      abb310(53)=-8.0_ki*abb310(93)*abb310(53)
      abb310(58)=-abb310(40)*abb310(106)*abb310(93)
      abb310(44)=abb310(44)*abb310(73)
      abb310(59)=8.0_ki*abb310(72)
      abb310(64)=-abb310(82)*abb310(69)
      abb310(27)=-abb310(48)*abb310(27)
      abb310(27)=abb310(64)+abb310(27)
      abb310(27)=spbk7k3*abb310(27)
      abb310(48)=abb310(91)*abb310(121)
      abb310(64)=-abb310(9)*abb310(68)*abb310(117)
      abb310(66)=spbk3k1*abb310(77)
      abb310(27)=abb310(66)+abb310(27)+abb310(64)+abb310(48)
      abb310(27)=8.0_ki*abb310(27)
      abb310(46)=-abb310(46)*abb310(83)
      abb310(48)=-spbl6k2*abb310(9)*abb310(57)
      abb310(46)=abb310(48)+abb310(46)-abb310(51)
      abb310(46)=8.0_ki*abb310(46)
      abb310(48)=16.0_ki*abb310(24)
      abb310(51)=-32.0_ki*abb310(24)
      abb310(31)=-abb310(6)*abb310(31)
      abb310(57)=es34*abb310(86)
      abb310(31)=abb310(57)+abb310(31)
      abb310(31)=8.0_ki*abb310(31)
      abb310(15)=abb310(40)*abb310(129)*abb310(15)
      abb310(40)=abb310(73)*abb310(47)
      abb310(35)=8.0_ki*abb310(35)
      abb310(39)=-8.0_ki*abb310(39)
      abb310(24)=8.0_ki*abb310(24)
      R2d310=0.0_ki
      rat2 = rat2 + R2d310
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='310' value='", &
          & R2d310, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd310h3
