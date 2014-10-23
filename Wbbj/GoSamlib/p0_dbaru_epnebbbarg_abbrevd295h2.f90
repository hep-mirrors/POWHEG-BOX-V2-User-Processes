module     p0_dbaru_epnebbbarg_abbrevd295h2
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(142), public :: abb295
   complex(ki), public :: R2d295
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
      abb295(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb295(2)=NC**(-1)
      abb295(3)=sqrt2**(-1)
      abb295(4)=spak2k7**(-1)
      abb295(5)=spbl5k2**(-1)
      abb295(6)=spak2l6**(-1)
      abb295(7)=sqrt(mB**2)
      abb295(8)=spbl6k2**(-1)
      abb295(9)=spak2l5**(-1)
      abb295(10)=TR*gW
      abb295(10)=abb295(10)**2*i_*CVDU*abb295(3)*abb295(1)
      abb295(11)=abb295(10)*abb295(4)*abb295(2)
      abb295(12)=abb295(11)*c3
      abb295(11)=abb295(11)*c1
      abb295(13)=abb295(12)+abb295(11)
      abb295(14)=spak1k2*abb295(13)
      abb295(15)=c4*abb295(2)**2
      abb295(16)=abb295(15)*abb295(4)
      abb295(17)=abb295(10)*spak1k2
      abb295(18)=abb295(16)*abb295(17)
      abb295(14)=abb295(14)-abb295(18)
      abb295(18)=mB**3
      abb295(19)=abb295(18)*abb295(6)
      abb295(20)=-abb295(19)*abb295(14)
      abb295(21)=abb295(5)*abb295(7)
      abb295(22)=abb295(20)*abb295(21)
      abb295(23)=abb295(22)*spbk3k2
      abb295(24)=abb295(6)*mB
      abb295(25)=-abb295(24)*abb295(14)
      abb295(26)=abb295(25)*abb295(7)
      abb295(27)=spak2l5*spbk3k2
      abb295(28)=abb295(27)*abb295(26)
      abb295(28)=abb295(28)-abb295(23)
      abb295(28)=spak1k4*abb295(28)
      abb295(29)=spal5l6*spbl6k3
      abb295(30)=abb295(29)*spak1k4
      abb295(31)=-abb295(26)*abb295(30)
      abb295(32)=abb295(18)*abb295(6)**2
      abb295(33)=-abb295(32)*abb295(14)
      abb295(34)=abb295(33)*abb295(8)
      abb295(35)=abb295(27)*spak1k4
      abb295(36)=-abb295(7)*abb295(34)*abb295(35)
      abb295(28)=abb295(36)+abb295(28)+abb295(31)
      abb295(28)=es12*abb295(28)
      abb295(31)=mB**2
      abb295(36)=abb295(31)*abb295(6)
      abb295(37)=-abb295(36)*abb295(14)
      abb295(38)=abb295(14)*spbl6k2
      abb295(39)=abb295(37)+abb295(38)
      abb295(40)=abb295(39)*abb295(27)
      abb295(41)=-abb295(31)*abb295(14)
      abb295(42)=abb295(5)*spbl6k2
      abb295(43)=abb295(41)*abb295(42)
      abb295(44)=abb295(43)*spbk3k2
      abb295(40)=abb295(44)+abb295(40)
      abb295(40)=abb295(40)*spak1k4
      abb295(44)=abb295(30)*abb295(38)
      abb295(40)=abb295(40)-abb295(44)
      abb295(44)=-spbl6k1*spak1l6*abb295(40)
      abb295(28)=abb295(28)+abb295(44)
      abb295(44)=8.0_ki*spbk7k1
      abb295(28)=abb295(28)*abb295(44)
      abb295(45)=abb295(10)*abb295(15)
      abb295(46)=abb295(45)*abb295(4)
      abb295(47)=abb295(13)-abb295(46)
      abb295(48)=-abb295(31)*abb295(47)
      abb295(49)=spbk7l6*spak1l6
      abb295(50)=spbl6k2*abb295(48)*abb295(49)
      abb295(51)=spbk7k2*abb295(7)
      abb295(20)=abb295(20)*abb295(51)
      abb295(50)=abb295(50)+abb295(20)
      abb295(50)=abb295(50)*abb295(5)
      abb295(52)=abb295(51)*spak2l5
      abb295(53)=abb295(52)*abb295(25)
      abb295(54)=abb295(52)*abb295(8)
      abb295(33)=abb295(54)*abb295(33)
      abb295(33)=abb295(53)-abb295(33)
      abb295(53)=abb295(50)-abb295(33)
      abb295(55)=spak2k4*spbk3k2
      abb295(56)=abb295(55)*abb295(53)
      abb295(57)=abb295(47)*spbl6k2
      abb295(58)=abb295(49)*spak2k4
      abb295(59)=abb295(58)*abb295(57)
      abb295(60)=abb295(51)*abb295(25)
      abb295(61)=abb295(60)*spak2k4
      abb295(59)=abb295(59)-abb295(61)
      abb295(59)=abb295(59)*abb295(29)
      abb295(56)=-abb295(59)+abb295(56)
      abb295(36)=abb295(36)*abb295(13)
      abb295(59)=abb295(10)*abb295(6)
      abb295(16)=abb295(16)*abb295(59)
      abb295(61)=abb295(16)*abb295(31)
      abb295(36)=abb295(36)-abb295(61)
      abb295(61)=abb295(36)-abb295(57)
      abb295(62)=abb295(61)*spak2l5
      abb295(63)=abb295(62)*abb295(55)
      abb295(64)=abb295(63)*abb295(49)
      abb295(64)=abb295(64)-abb295(56)
      abb295(65)=-16.0_ki*abb295(64)
      abb295(66)=abb295(16)*mB
      abb295(67)=abb295(24)*abb295(12)
      abb295(66)=abb295(66)-abb295(67)
      abb295(67)=spak1k2**2
      abb295(68)=-abb295(67)*abb295(66)
      abb295(69)=abb295(67)*abb295(11)
      abb295(70)=abb295(69)*abb295(24)
      abb295(68)=abb295(70)+abb295(68)
      abb295(70)=abb295(68)*abb295(51)
      abb295(71)=abb295(70)*spak4l5
      abb295(72)=abb295(38)*spak4l5
      abb295(73)=abb295(72)*abb295(49)
      abb295(71)=abb295(71)+abb295(73)
      abb295(71)=abb295(71)*spbk3k1
      abb295(73)=spak4l5*spbk7k3
      abb295(74)=abb295(38)*abb295(73)
      abb295(75)=spbl6k1*spak1l6
      abb295(76)=abb295(74)*abb295(75)
      abb295(77)=abb295(26)*abb295(73)
      abb295(78)=es712-es71
      abb295(79)=abb295(78)-2.0_ki*es12
      abb295(80)=-abb295(79)*abb295(77)
      abb295(71)=abb295(71)-abb295(76)+abb295(80)
      abb295(76)=c1+c3
      abb295(76)=abb295(76)*abb295(2)
      abb295(10)=abb295(10)*abb295(76)
      abb295(10)=abb295(10)-abb295(45)
      abb295(45)=abb295(10)*spbl6k2
      abb295(80)=abb295(45)*abb295(73)
      abb295(81)=abb295(80)*abb295(49)
      abb295(81)=abb295(81)-abb295(71)
      abb295(81)=16.0_ki*abb295(81)
      abb295(82)=abb295(37)*spak4l5
      abb295(72)=abb295(82)+abb295(72)
      abb295(72)=abb295(72)*spbk3k1
      abb295(15)=abb295(15)-abb295(76)
      abb295(59)=-abb295(15)*abb295(31)*abb295(59)
      abb295(76)=abb295(59)*abb295(73)
      abb295(72)=abb295(72)+abb295(76)-abb295(80)
      abb295(76)=-abb295(49)*abb295(72)
      abb295(82)=abb295(37)*abb295(73)
      abb295(82)=abb295(82)+abb295(74)
      abb295(82)=abb295(82)*abb295(75)
      abb295(83)=spbk3k1*spak4l5
      abb295(84)=-abb295(49)*abb295(83)
      abb295(85)=abb295(73)*abb295(75)
      abb295(84)=abb295(85)+abb295(84)
      abb295(84)=abb295(43)*abb295(84)
      abb295(31)=abb295(42)*abb295(31)*abb295(10)
      abb295(85)=abb295(31)*abb295(73)
      abb295(86)=-abb295(49)*abb295(85)
      abb295(84)=abb295(86)+abb295(84)
      abb295(84)=abb295(9)*abb295(84)
      abb295(76)=abb295(84)+abb295(82)+abb295(76)
      abb295(76)=16.0_ki*abb295(76)
      abb295(82)=-32.0_ki*abb295(77)
      abb295(40)=-spbk7k1*abb295(40)
      abb295(40)=abb295(40)+abb295(64)
      abb295(40)=16.0_ki*abb295(40)
      abb295(64)=32.0_ki*abb295(74)
      abb295(84)=abb295(9)*abb295(43)
      abb295(84)=abb295(84)+abb295(37)
      abb295(84)=abb295(73)*abb295(84)
      abb295(84)=abb295(77)+abb295(74)+abb295(84)
      abb295(84)=32.0_ki*abb295(84)
      abb295(86)=-abb295(80)+abb295(63)
      abb295(86)=abb295(86)*abb295(49)
      abb295(56)=abb295(86)-abb295(56)+abb295(71)
      abb295(56)=8.0_ki*abb295(56)
      abb295(71)=16.0_ki*abb295(77)
      abb295(74)=-16.0_ki*abb295(74)
      abb295(15)=-abb295(24)*abb295(17)*abb295(15)
      abb295(17)=abb295(73)*abb295(7)
      abb295(86)=abb295(15)*abb295(17)
      abb295(87)=abb295(68)*abb295(7)
      abb295(88)=abb295(87)*abb295(83)
      abb295(86)=abb295(86)-abb295(88)
      abb295(89)=spbk7l6*abb295(86)
      abb295(17)=abb295(68)*abb295(17)
      abb295(90)=spbl6k1*abb295(17)
      abb295(89)=abb295(90)+abb295(89)
      abb295(89)=8.0_ki*abb295(89)
      abb295(15)=spbk7k3*abb295(15)*abb295(7)
      abb295(90)=abb295(87)*spbk3k1
      abb295(15)=abb295(15)-abb295(90)
      abb295(90)=spak4l6*spbl6k2
      abb295(91)=abb295(15)*abb295(90)
      abb295(92)=spbl5k2*abb295(86)
      abb295(91)=abb295(91)+abb295(92)
      abb295(91)=8.0_ki*abb295(91)
      abb295(92)=abb295(26)*abb295(55)
      abb295(92)=16.0_ki*abb295(92)
      abb295(93)=8.0_ki*abb295(26)
      abb295(94)=-abb295(55)*abb295(93)
      abb295(95)=abb295(38)*spbk3k1
      abb295(96)=abb295(45)*spbk7k3
      abb295(95)=abb295(95)-abb295(96)
      abb295(97)=-abb295(49)*abb295(95)
      abb295(98)=abb295(38)*spbk7k3
      abb295(99)=abb295(75)*abb295(98)
      abb295(97)=abb295(99)+abb295(97)
      abb295(97)=spak4l6*abb295(97)
      abb295(99)=abb295(83)*abb295(14)
      abb295(100)=abb295(10)*abb295(73)
      abb295(100)=abb295(99)-abb295(100)
      abb295(101)=abb295(100)*abb295(49)
      abb295(102)=abb295(14)*abb295(73)
      abb295(103)=abb295(102)*abb295(75)
      abb295(101)=abb295(103)-abb295(101)
      abb295(103)=spbl5k2*abb295(101)
      abb295(104)=abb295(14)*spak1k4
      abb295(105)=abb295(104)*spbk7k1
      abb295(106)=abb295(105)*spbk3k2
      abb295(107)=abb295(75)*abb295(106)
      abb295(97)=abb295(103)+abb295(107)+abb295(97)
      abb295(97)=8.0_ki*abb295(97)
      abb295(103)=abb295(55)*abb295(47)
      abb295(107)=16.0_ki*abb295(103)
      abb295(108)=-abb295(49)*abb295(107)
      abb295(109)=abb295(98)*spak4l6
      abb295(110)=abb295(102)*spbl5k2
      abb295(106)=abb295(106)+abb295(109)+abb295(110)
      abb295(109)=abb295(49)*abb295(103)
      abb295(109)=abb295(109)+abb295(106)
      abb295(109)=16.0_ki*abb295(109)
      abb295(110)=8.0_ki*abb295(103)
      abb295(111)=abb295(49)*abb295(110)
      abb295(112)=abb295(39)*spbk3k1
      abb295(59)=abb295(59)*spbk7k3
      abb295(59)=abb295(112)+abb295(59)-abb295(96)
      abb295(96)=-abb295(58)*abb295(59)
      abb295(112)=abb295(37)*spbk7k3
      abb295(98)=abb295(112)+abb295(98)
      abb295(98)=abb295(98)*spak2k4
      abb295(112)=abb295(105)*spbl6k3
      abb295(98)=abb295(98)+abb295(112)
      abb295(112)=abb295(75)*abb295(98)
      abb295(31)=abb295(31)*spbk7k3
      abb295(113)=-spbk3k1*abb295(43)
      abb295(113)=-abb295(31)+abb295(113)
      abb295(113)=abb295(58)*abb295(113)
      abb295(114)=abb295(43)*spak2k4
      abb295(115)=abb295(114)*spbk7k3
      abb295(116)=abb295(75)*abb295(115)
      abb295(113)=abb295(116)+abb295(113)
      abb295(113)=abb295(9)*abb295(113)
      abb295(101)=spbl6l5*abb295(101)
      abb295(86)=spbk7l5*abb295(86)
      abb295(116)=spbl5k1*abb295(17)
      abb295(86)=abb295(116)+abb295(86)+abb295(101)+abb295(113)+abb295(96)+abb2&
      &95(112)
      abb295(86)=8.0_ki*abb295(86)
      abb295(96)=abb295(47)*spbl6k3
      abb295(101)=16.0_ki*abb295(96)
      abb295(112)=-abb295(58)*abb295(101)
      abb295(113)=abb295(14)*spbl6k1
      abb295(116)=abb295(10)*spbk7l6
      abb295(117)=-abb295(113)-abb295(116)
      abb295(118)=spak1k4*spbk7k3
      abb295(117)=abb295(118)*abb295(117)
      abb295(119)=abb295(104)*spbk3k1
      abb295(120)=spbk7l6*abb295(119)
      abb295(117)=abb295(120)+abb295(117)
      abb295(117)=16.0_ki*abb295(117)
      abb295(58)=abb295(58)*abb295(96)
      abb295(115)=abb295(9)*abb295(115)
      abb295(102)=spbl6l5*abb295(102)
      abb295(98)=abb295(102)+abb295(115)+abb295(58)+abb295(98)
      abb295(98)=16.0_ki*abb295(98)
      abb295(58)=8.0_ki*abb295(58)
      abb295(102)=-abb295(10)*abb295(118)
      abb295(102)=abb295(102)+abb295(119)
      abb295(102)=spbk7l5*abb295(102)
      abb295(115)=-spbl5k1*abb295(14)*abb295(118)
      abb295(102)=abb295(102)+abb295(115)
      abb295(102)=8.0_ki*abb295(102)
      abb295(115)=spak1k4*spbk3k2
      abb295(119)=-spbk7k1*abb295(115)
      abb295(120)=-spbk7k3*abb295(90)
      abb295(119)=abb295(119)+abb295(120)
      abb295(119)=abb295(87)*abb295(119)
      abb295(17)=-spbl5k2*abb295(17)
      abb295(17)=abb295(17)+abb295(119)
      abb295(17)=8.0_ki*abb295(17)
      abb295(37)=abb295(37)*abb295(8)
      abb295(119)=abb295(37)*spbk7k3
      abb295(120)=abb295(14)*spbk7k3
      abb295(119)=abb295(119)+abb295(120)
      abb295(119)=abb295(119)*abb295(79)
      abb295(12)=abb295(67)*abb295(12)
      abb295(12)=abb295(12)+abb295(69)
      abb295(46)=abb295(67)*abb295(46)
      abb295(46)=abb295(46)-abb295(12)
      abb295(69)=-spbk7k2*abb295(46)
      abb295(121)=-abb295(14)*abb295(49)
      abb295(69)=abb295(69)+abb295(121)
      abb295(69)=spbk3k1*abb295(69)
      abb295(41)=abb295(41)*abb295(5)
      abb295(121)=abb295(41)*spbk7k3*abb295(79)
      abb295(122)=abb295(48)*abb295(5)
      abb295(123)=spbk3k1*spbk7k2
      abb295(124)=abb295(123)*abb295(67)
      abb295(125)=abb295(122)*abb295(124)
      abb295(121)=abb295(125)+abb295(121)
      abb295(121)=abb295(9)*abb295(121)
      abb295(125)=abb295(10)*spbk7k3
      abb295(126)=-spbk3k1*abb295(14)
      abb295(126)=abb295(125)+abb295(126)
      abb295(126)=spbk7l5*spak1l5*abb295(126)
      abb295(127)=spbl5k1*spak1l5
      abb295(127)=abb295(127)+abb295(75)
      abb295(127)=abb295(120)*abb295(127)
      abb295(125)=abb295(49)*abb295(125)
      abb295(128)=abb295(36)*abb295(8)
      abb295(124)=-abb295(128)*abb295(124)
      abb295(69)=abb295(126)+abb295(121)+abb295(124)+abb295(125)+abb295(69)+abb&
      &295(119)+abb295(127)
      abb295(69)=8.0_ki*abb295(69)
      abb295(119)=16.0_ki*abb295(120)
      abb295(120)=-8.0_ki*abb295(120)
      abb295(121)=abb295(62)*abb295(49)
      abb295(124)=spal5l6*spbk7l6
      abb295(125)=abb295(124)*abb295(26)
      abb295(53)=-abb295(125)-abb295(121)+abb295(53)
      abb295(53)=abb295(53)*abb295(78)
      abb295(20)=-abb295(5)*abb295(20)
      abb295(20)=2.0_ki*abb295(125)+abb295(20)+abb295(33)
      abb295(20)=es12*abb295(20)
      abb295(33)=spbk7k2*spak2l5
      abb295(39)=abb295(39)*abb295(33)
      abb295(121)=abb295(43)*spbk7k2
      abb295(39)=abb295(121)+abb295(39)
      abb295(121)=-spak1l6*abb295(39)
      abb295(125)=spal5l6*abb295(70)
      abb295(121)=abb295(125)+abb295(121)
      abb295(121)=spbl6k1*abb295(121)
      abb295(125)=spak1l6*spbk7l6**2
      abb295(126)=-spal5l6*abb295(45)*abb295(125)
      abb295(20)=abb295(121)+abb295(126)+abb295(20)+abb295(53)
      abb295(20)=8.0_ki*abb295(20)
      abb295(53)=spak1l5*spbk7k1
      abb295(121)=-32.0_ki*abb295(26)*abb295(53)
      abb295(126)=-abb295(38)*abb295(124)
      abb295(39)=abb295(126)-abb295(39)
      abb295(39)=16.0_ki*abb295(39)
      abb295(126)=abb295(78)*abb295(93)
      abb295(127)=-abb295(47)*abb295(78)
      abb295(129)=abb295(49)*abb295(127)
      abb295(130)=abb295(14)*spbk7k2
      abb295(131)=abb295(75)*abb295(130)
      abb295(129)=abb295(131)+abb295(129)
      abb295(129)=8.0_ki*abb295(129)
      abb295(131)=16.0_ki*abb295(130)
      abb295(10)=-8.0_ki*abb295(10)*abb295(125)
      abb295(125)=16.0_ki*abb295(14)
      abb295(132)=-spbk7l6*abb295(125)
      abb295(70)=-8.0_ki*abb295(70)
      abb295(52)=-abb295(68)*abb295(52)
      abb295(12)=abb295(19)*abb295(12)
      abb295(16)=abb295(16)*abb295(18)
      abb295(18)=-abb295(67)*abb295(16)
      abb295(12)=abb295(18)+abb295(12)
      abb295(12)=abb295(5)*abb295(12)*abb295(51)
      abb295(18)=-abb295(54)*abb295(32)*abb295(46)
      abb295(46)=abb295(87)*abb295(53)
      abb295(12)=abb295(46)+abb295(18)+abb295(52)+abb295(12)
      abb295(12)=spbk3k1*abb295(12)
      abb295(18)=spak2l5*abb295(7)
      abb295(46)=abb295(18)*spbk7k3
      abb295(52)=abb295(34)*abb295(46)
      abb295(22)=abb295(22)*spbk7k3
      abb295(46)=abb295(46)*abb295(25)
      abb295(22)=-abb295(46)+abb295(52)+abb295(22)
      abb295(22)=-abb295(22)*abb295(79)
      abb295(15)=abb295(15)*abb295(124)
      abb295(52)=spbl6k1*spal5l6
      abb295(53)=spbk7k3*abb295(87)*abb295(52)
      abb295(12)=abb295(53)+abb295(15)+abb295(12)+abb295(22)
      abb295(12)=8.0_ki*abb295(12)
      abb295(15)=16.0_ki*abb295(46)
      abb295(22)=-8.0_ki*abb295(46)
      abb295(46)=abb295(51)*abb295(34)
      abb295(46)=abb295(46)-abb295(60)
      abb295(46)=abb295(27)*abb295(46)
      abb295(51)=abb295(61)*abb295(27)
      abb295(53)=-abb295(49)*abb295(51)
      abb295(50)=spbk3k2*abb295(50)
      abb295(54)=-abb295(49)*abb295(57)
      abb295(54)=abb295(60)+abb295(54)
      abb295(54)=abb295(54)*abb295(29)
      abb295(46)=abb295(54)+abb295(50)+abb295(53)+abb295(46)
      abb295(46)=spak4k7*abb295(46)
      abb295(11)=abb295(24)*abb295(11)
      abb295(11)=abb295(11)-abb295(66)
      abb295(24)=abb295(11)*abb295(30)
      abb295(30)=abb295(8)*abb295(35)*abb295(32)*abb295(47)
      abb295(24)=abb295(30)+abb295(24)
      abb295(24)=abb295(7)*abb295(24)
      abb295(30)=abb295(27)*abb295(7)
      abb295(11)=-abb295(11)*abb295(30)
      abb295(13)=abb295(19)*abb295(13)
      abb295(13)=-abb295(16)+abb295(13)
      abb295(13)=spbk3k2*abb295(13)*abb295(21)
      abb295(11)=abb295(11)+abb295(13)
      abb295(11)=spak1k4*abb295(11)
      abb295(11)=abb295(11)+abb295(24)
      abb295(11)=es12*abb295(11)
      abb295(13)=abb295(48)*abb295(42)
      abb295(16)=abb295(13)*spbk3k2
      abb295(19)=abb295(29)*abb295(57)
      abb295(16)=-abb295(19)+abb295(16)-abb295(51)
      abb295(21)=abb295(16)*spak1k4
      abb295(24)=-abb295(21)*abb295(75)
      abb295(11)=abb295(46)+abb295(11)+abb295(24)
      abb295(11)=8.0_ki*abb295(11)
      abb295(24)=spbk3k2*spak4l5
      abb295(32)=abb295(24)*abb295(26)
      abb295(42)=abb295(57)*spak4l5
      abb295(46)=spbl6k3*spak1l6
      abb295(48)=abb295(46)*abb295(42)
      abb295(32)=abb295(32)+abb295(48)
      abb295(48)=16.0_ki*abb295(32)
      abb295(50)=abb295(13)*abb295(9)
      abb295(36)=abb295(36)-abb295(50)
      abb295(36)=abb295(36)*spak4l5
      abb295(36)=abb295(36)-abb295(42)
      abb295(36)=16.0_ki*abb295(36)
      abb295(51)=-abb295(46)*abb295(36)
      abb295(21)=-16.0_ki*abb295(21)
      abb295(32)=-8.0_ki*abb295(32)
      abb295(53)=8.0_ki*abb295(77)
      abb295(54)=-spbl6k3*spak4l5*abb295(93)
      abb295(60)=spak4k7*spbk3k2
      abb295(66)=abb295(93)*abb295(60)
      abb295(67)=abb295(47)*spak1k4
      abb295(68)=abb295(67)*spbk3k2
      abb295(77)=abb295(75)*abb295(68)
      abb295(60)=abb295(60)*abb295(47)
      abb295(87)=-abb295(49)*abb295(60)
      abb295(133)=abb295(57)*spak4l6
      abb295(134)=abb295(46)*abb295(133)
      abb295(135)=abb295(96)*spak1l6
      abb295(136)=spbl5k2*spak4l5
      abb295(137)=abb295(136)*abb295(135)
      abb295(77)=abb295(137)+abb295(134)+abb295(77)+abb295(87)
      abb295(77)=8.0_ki*abb295(77)
      abb295(87)=16.0_ki*abb295(68)
      abb295(90)=abb295(90)+abb295(136)
      abb295(90)=abb295(90)*abb295(93)
      abb295(50)=abb295(50)-abb295(61)
      abb295(50)=abb295(50)*spak2k4
      abb295(46)=abb295(46)*abb295(50)
      abb295(61)=spak1k4*abb295(75)
      abb295(49)=-spak4k7*abb295(49)
      abb295(75)=spbl6l5*spak4l5
      abb295(134)=spak1l6*abb295(75)
      abb295(49)=abb295(134)+abb295(49)+abb295(61)
      abb295(49)=abb295(96)*abb295(49)
      abb295(61)=-spbl5k3*spak4l5*abb295(26)
      abb295(46)=abb295(61)+abb295(49)+abb295(46)
      abb295(46)=8.0_ki*abb295(46)
      abb295(49)=abb295(101)*spak1k4
      abb295(61)=abb295(118)*abb295(47)
      abb295(134)=8.0_ki*abb295(61)
      abb295(137)=8.0_ki*abb295(67)
      abb295(138)=-spbl5k3*abb295(137)
      abb295(139)=abb295(93)*abb295(115)
      abb295(140)=abb295(9)*abb295(41)
      abb295(14)=abb295(140)+abb295(37)+abb295(14)
      abb295(14)=spbk3k2*abb295(14)
      abb295(140)=spbl5k3*spak1l5
      abb295(141)=-spak1k7*spbk7k3
      abb295(140)=abb295(141)+abb295(140)
      abb295(140)=abb295(47)*abb295(140)
      abb295(14)=abb295(135)+abb295(14)+abb295(140)
      abb295(14)=8.0_ki*abb295(14)
      abb295(135)=spbl6k2*abb295(62)
      abb295(140)=-spbl6k2**2*abb295(122)
      abb295(135)=abb295(135)+abb295(140)
      abb295(135)=spak1l6*abb295(135)
      abb295(140)=-spal5l6*spbl6k2*abb295(26)
      abb295(135)=abb295(140)+abb295(135)
      abb295(135)=8.0_ki*abb295(135)
      abb295(57)=8.0_ki*spak1l6*abb295(57)
      abb295(140)=abb295(29)-abb295(27)
      abb295(141)=-spak1l5*spbk3k1
      abb295(142)=spal5k7*spbk7k3
      abb295(141)=abb295(142)+abb295(141)-abb295(140)
      abb295(26)=abb295(26)*abb295(141)
      abb295(30)=-abb295(34)*abb295(30)
      abb295(23)=abb295(30)-abb295(23)+abb295(26)
      abb295(23)=8.0_ki*abb295(23)
      abb295(26)=-spak1k4*abb295(37)
      abb295(26)=-abb295(104)+abb295(26)
      abb295(26)=abb295(123)*abb295(26)
      abb295(30)=abb295(118)*abb295(128)
      abb295(30)=abb295(30)-abb295(61)
      abb295(30)=abb295(30)*abb295(79)
      abb295(34)=-abb295(122)*abb295(79)
      abb295(104)=abb295(118)*abb295(34)
      abb295(118)=-spak1k4*abb295(41)*abb295(123)
      abb295(104)=abb295(118)+abb295(104)
      abb295(104)=abb295(9)*abb295(104)
      abb295(26)=abb295(104)+abb295(30)+abb295(26)
      abb295(26)=8.0_ki*abb295(26)
      abb295(30)=16.0_ki*abb295(61)
      abb295(61)=abb295(122)*abb295(9)
      abb295(61)=abb295(61)-abb295(128)
      abb295(104)=-abb295(115)*abb295(61)
      abb295(104)=-abb295(68)+abb295(104)
      abb295(104)=8.0_ki*abb295(104)
      abb295(115)=abb295(13)*abb295(55)
      abb295(19)=abb295(19)*spak2k4
      abb295(19)=-abb295(63)+abb295(115)-abb295(19)
      abb295(63)=16.0_ki*abb295(19)
      abb295(115)=abb295(83)*abb295(38)
      abb295(80)=abb295(115)-abb295(80)
      abb295(115)=16.0_ki*abb295(80)
      abb295(43)=abb295(83)*abb295(43)
      abb295(43)=abb295(85)+abb295(43)
      abb295(43)=abb295(9)*abb295(43)
      abb295(43)=abb295(43)+abb295(72)
      abb295(43)=16.0_ki*abb295(43)
      abb295(19)=-abb295(80)+abb295(19)
      abb295(19)=8.0_ki*abb295(19)
      abb295(72)=abb295(95)*spak4l6
      abb295(80)=abb295(100)*spbl5k2
      abb295(72)=abb295(72)+abb295(80)
      abb295(72)=8.0_ki*abb295(72)
      abb295(59)=spak2k4*abb295(59)
      abb295(31)=spak2k4*abb295(31)
      abb295(80)=spbk3k1*abb295(114)
      abb295(31)=abb295(31)+abb295(80)
      abb295(31)=abb295(9)*abb295(31)
      abb295(80)=spbl6l5*abb295(100)
      abb295(31)=abb295(80)+abb295(31)+abb295(59)
      abb295(31)=8.0_ki*abb295(31)
      abb295(59)=abb295(101)*spak2k4
      abb295(80)=8.0_ki*abb295(96)
      abb295(80)=-spak2k4*abb295(80)
      abb295(13)=abb295(62)-abb295(13)
      abb295(62)=abb295(13)*abb295(78)
      abb295(45)=abb295(45)*abb295(124)
      abb295(38)=-abb295(38)*abb295(52)
      abb295(38)=abb295(45)+abb295(38)+abb295(62)
      abb295(38)=8.0_ki*abb295(38)
      abb295(45)=8.0_ki*abb295(127)
      abb295(62)=abb295(116)-abb295(113)
      abb295(62)=8.0_ki*abb295(62)
      abb295(85)=8.0_ki*spak4k7
      abb295(16)=-abb295(16)*abb295(85)
      abb295(60)=8.0_ki*abb295(60)
      abb295(85)=abb295(96)*abb295(85)
      abb295(95)=abb295(27)*abb295(47)
      abb295(96)=abb295(122)*spbk3k2
      abb295(95)=abb295(95)+abb295(96)
      abb295(95)=abb295(95)*spak1k4
      abb295(67)=abb295(67)*abb295(29)
      abb295(35)=abb295(35)*abb295(128)
      abb295(35)=abb295(95)-abb295(67)-abb295(35)
      abb295(67)=-es12*abb295(35)*abb295(44)
      abb295(95)=abb295(128)*abb295(33)
      abb295(96)=abb295(122)*spbk7k2
      abb295(95)=abb295(95)-abb295(96)
      abb295(55)=-abb295(55)*abb295(95)
      abb295(100)=abb295(103)*abb295(33)
      abb295(101)=abb295(47)*spbk7k2
      abb295(29)=abb295(101)*abb295(29)*spak2k4
      abb295(29)=-abb295(29)+abb295(100)+abb295(55)
      abb295(55)=16.0_ki*abb295(29)
      abb295(100)=abb295(73)*abb295(47)
      abb295(103)=-abb295(79)*abb295(100)
      abb295(99)=abb295(99)*spbk7k2
      abb295(103)=abb295(103)-abb295(99)
      abb295(113)=16.0_ki*abb295(103)
      abb295(114)=abb295(128)*abb295(73)
      abb295(100)=abb295(114)-abb295(100)
      abb295(79)=abb295(100)*abb295(79)
      abb295(34)=abb295(73)*abb295(34)
      abb295(73)=abb295(83)*spbk7k2
      abb295(41)=-abb295(41)*abb295(73)
      abb295(34)=abb295(41)+abb295(34)
      abb295(34)=abb295(9)*abb295(34)
      abb295(37)=-abb295(37)*abb295(73)
      abb295(34)=abb295(34)-abb295(99)+abb295(37)+abb295(79)
      abb295(34)=16.0_ki*abb295(34)
      abb295(29)=-abb295(103)-abb295(29)
      abb295(29)=8.0_ki*abb295(29)
      abb295(37)=8.0_ki*spbk3k1
      abb295(37)=abb295(105)*abb295(37)
      abb295(41)=-8.0_ki*abb295(106)
      abb295(33)=abb295(33)*abb295(47)
      abb295(33)=abb295(33)-abb295(95)
      abb295(73)=abb295(124)*abb295(47)
      abb295(79)=abb295(33)+abb295(73)
      abb295(78)=abb295(79)*abb295(78)
      abb295(33)=-2.0_ki*abb295(73)-abb295(33)
      abb295(33)=es12*abb295(33)
      abb295(52)=abb295(130)*abb295(52)
      abb295(33)=abb295(33)+abb295(52)+abb295(78)
      abb295(33)=8.0_ki*abb295(33)
      abb295(52)=spbk7k1*abb295(125)
      abb295(73)=-8.0_ki*abb295(130)
      abb295(78)=-abb295(101)*abb295(140)
      abb295(79)=spbk3k2*abb295(96)
      abb295(27)=-spbk7k2*abb295(27)*abb295(128)
      abb295(27)=abb295(27)+abb295(79)+abb295(78)
      abb295(27)=spak4k7*abb295(27)
      abb295(35)=-spbk2k1*abb295(35)
      abb295(27)=abb295(27)+abb295(35)
      abb295(27)=8.0_ki*abb295(27)
      abb295(35)=abb295(24)*abb295(47)
      abb295(78)=16.0_ki*abb295(35)
      abb295(24)=-abb295(24)*abb295(61)
      abb295(24)=-abb295(35)+abb295(24)
      abb295(24)=16.0_ki*abb295(24)
      abb295(35)=8.0_ki*abb295(35)
      abb295(61)=abb295(136)*abb295(47)
      abb295(61)=abb295(61)+abb295(133)
      abb295(61)=8.0_ki*abb295(61)
      abb295(79)=spbk3k1*abb295(137)
      abb295(68)=-8.0_ki*abb295(68)
      abb295(95)=16.0_ki*abb295(42)
      abb295(42)=-8.0_ki*abb295(42)
      abb295(75)=abb295(47)*abb295(75)
      abb295(50)=abb295(75)+abb295(50)
      abb295(50)=8.0_ki*abb295(50)
      abb295(44)=-abb295(88)*abb295(44)
      abb295(75)=16.0_ki*spbk7k1
      abb295(18)=abb295(25)*abb295(18)*abb295(75)
      abb295(25)=abb295(83)*abb295(93)
      abb295(13)=8.0_ki*abb295(13)
      abb295(47)=8.0_ki*abb295(47)
      R2d295=0.0_ki
      rat2 = rat2 + R2d295
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='295' value='", &
          & R2d295, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd295h2
