module     p0_dbaru_epnebbbarg_abbrevd18h6
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh6
   implicit none
   private
   complex(ki), dimension(126), public :: abb18
   complex(ki), public :: R2d18
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
      abb18(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb18(2)=1.0_ki/(es71+es34+es56-es712-es234)
      abb18(3)=NC**(-1)
      abb18(4)=sqrt2**(-1)
      abb18(5)=es56**(-1)
      abb18(6)=es71**(-1)
      abb18(7)=spbl5k2**(-1)
      abb18(8)=spak2l6**(-1)
      abb18(9)=spbk7k2**(-1)
      abb18(10)=1.0_ki/(es34+es567-es12-es234)
      abb18(11)=spak2l5**(-1)
      abb18(12)=spbl6k2**(-1)
      abb18(13)=spak1k4*abb18(9)
      abb18(14)=abb18(1)*abb18(5)*i_*CVDU*abb18(4)*abb18(2)
      abb18(15)=spak1k7*abb18(14)
      abb18(16)=abb18(15)*abb18(6)
      abb18(17)=abb18(16)*abb18(13)
      abb18(18)=TR*gW
      abb18(19)=abb18(18)**2
      abb18(20)=abb18(19)*spbl6k2
      abb18(21)=abb18(20)*c3
      abb18(22)=abb18(21)*abb18(17)
      abb18(23)=abb18(20)*abb18(17)
      abb18(24)=abb18(3)*c4
      abb18(25)=abb18(23)*abb18(24)
      abb18(22)=abb18(22)-abb18(25)
      abb18(25)=abb18(22)*abb18(3)
      abb18(23)=abb18(23)*c4
      abb18(25)=abb18(25)+abb18(23)
      abb18(25)=abb18(25)*spbk2k1
      abb18(26)=abb18(19)*spak4k7
      abb18(27)=abb18(26)*spbl6k2
      abb18(28)=abb18(16)*c4
      abb18(29)=abb18(27)*abb18(28)
      abb18(30)=abb18(29)*abb18(3)
      abb18(31)=abb18(16)*c3
      abb18(32)=abb18(27)*abb18(31)
      abb18(30)=abb18(30)-abb18(32)
      abb18(33)=abb18(30)*abb18(3)
      abb18(34)=abb18(17)*spbk2k1
      abb18(35)=abb18(34)*abb18(21)
      abb18(32)=abb18(35)-abb18(32)
      abb18(35)=abb18(32)*NC
      abb18(35)=abb18(35)+abb18(29)
      abb18(25)=abb18(25)+abb18(33)-abb18(35)
      abb18(33)=spbl6k3*spal5l6
      abb18(25)=abb18(25)*abb18(33)
      abb18(15)=abb18(13)*abb18(15)
      abb18(36)=spbl6k2**2
      abb18(37)=abb18(36)*abb18(15)
      abb18(38)=abb18(19)*c4
      abb18(39)=abb18(38)*abb18(3)
      abb18(40)=abb18(39)*abb18(37)
      abb18(19)=abb18(19)*c3
      abb18(41)=abb18(37)*abb18(19)
      abb18(40)=abb18(40)-abb18(41)
      abb18(40)=abb18(40)*abb18(3)
      abb18(42)=abb18(41)*NC
      abb18(43)=abb18(37)*abb18(38)
      abb18(42)=abb18(42)-abb18(43)
      abb18(40)=abb18(40)+abb18(42)
      abb18(44)=abb18(10)*spal5l6
      abb18(45)=abb18(44)*spbk3k1
      abb18(40)=abb18(40)*abb18(45)
      abb18(14)=abb18(14)*abb18(13)
      abb18(46)=abb18(14)*abb18(36)
      abb18(47)=abb18(46)*abb18(26)
      abb18(48)=abb18(47)*abb18(24)
      abb18(49)=abb18(26)*c3
      abb18(50)=abb18(46)*abb18(49)
      abb18(48)=abb18(48)-abb18(50)
      abb18(48)=abb18(48)*abb18(3)
      abb18(51)=abb18(50)*NC
      abb18(47)=abb18(47)*c4
      abb18(51)=abb18(51)-abb18(47)
      abb18(48)=abb18(48)+abb18(51)
      abb18(44)=abb18(44)*spbk4k3
      abb18(48)=abb18(48)*abb18(44)
      abb18(52)=abb18(16)*spbk3k2
      abb18(53)=abb18(52)*abb18(13)
      abb18(54)=abb18(53)*spbk2k1
      abb18(55)=abb18(21)*abb18(54)
      abb18(56)=abb18(27)*c3
      abb18(57)=abb18(56)*abb18(52)
      abb18(55)=abb18(55)-abb18(57)
      abb18(18)=abb18(18)*mB
      abb18(18)=abb18(18)**2
      abb18(58)=abb18(18)*c3
      abb18(59)=abb18(58)*spak4k7
      abb18(60)=abb18(52)*abb18(59)
      abb18(61)=abb18(54)*abb18(58)
      abb18(62)=abb18(60)-abb18(61)
      abb18(63)=abb18(62)*abb18(8)
      abb18(64)=abb18(55)+abb18(63)
      abb18(65)=abb18(64)*spak2l5
      abb18(61)=abb18(61)*spbl6k2
      abb18(66)=spak4k7*spbl6k2
      abb18(67)=abb18(66)*abb18(58)
      abb18(68)=abb18(67)*abb18(52)
      abb18(61)=abb18(61)-abb18(68)
      abb18(69)=abb18(61)*abb18(7)
      abb18(65)=abb18(65)-abb18(69)
      abb18(65)=abb18(65)*NC
      abb18(25)=-abb18(65)-abb18(25)+abb18(40)+abb18(48)
      abb18(40)=abb18(18)*abb18(3)
      abb18(48)=abb18(40)*c4
      abb18(69)=abb18(48)*abb18(53)
      abb18(70)=abb18(53)*abb18(58)
      abb18(69)=abb18(69)-abb18(70)
      abb18(71)=abb18(69)*abb18(3)
      abb18(72)=abb18(18)*c4
      abb18(73)=abb18(72)*abb18(53)
      abb18(74)=abb18(73)-abb18(71)
      abb18(74)=abb18(74)*spbk2k1
      abb18(75)=abb18(52)*c4
      abb18(76)=abb18(40)*abb18(75)
      abb18(77)=spak4k7*abb18(76)
      abb18(60)=abb18(77)-abb18(60)
      abb18(60)=abb18(60)*abb18(3)
      abb18(77)=abb18(75)*abb18(18)
      abb18(78)=abb18(77)*spak4k7
      abb18(74)=abb18(74)+abb18(60)-abb18(78)
      abb18(74)=abb18(74)*abb18(8)
      abb18(27)=abb18(27)*abb18(75)
      abb18(79)=abb18(27)*abb18(3)
      abb18(57)=abb18(79)-abb18(57)
      abb18(57)=abb18(57)*abb18(3)
      abb18(79)=abb18(24)*abb18(20)
      abb18(80)=abb18(79)-abb18(21)
      abb18(81)=-abb18(53)*abb18(80)
      abb18(82)=abb18(81)*abb18(3)
      abb18(20)=abb18(20)*c4
      abb18(83)=abb18(20)*abb18(53)
      abb18(82)=abb18(83)+abb18(82)
      abb18(82)=abb18(82)*spbk2k1
      abb18(74)=-abb18(74)+abb18(82)+abb18(57)-abb18(27)
      abb18(74)=abb18(74)*spak2l5
      abb18(82)=c4*spbl6k2
      abb18(83)=abb18(82)*abb18(18)
      abb18(84)=abb18(83)*abb18(53)
      abb18(85)=abb18(40)*abb18(82)
      abb18(86)=abb18(85)*abb18(53)
      abb18(70)=abb18(70)*spbl6k2
      abb18(70)=abb18(70)-abb18(86)
      abb18(86)=abb18(70)*abb18(3)
      abb18(87)=abb18(84)+abb18(86)
      abb18(87)=abb18(87)*spbk2k1
      abb18(76)=abb18(66)*abb18(76)
      abb18(68)=abb18(76)-abb18(68)
      abb18(68)=abb18(68)*abb18(3)
      abb18(76)=abb18(77)*abb18(66)
      abb18(77)=abb18(87)+abb18(68)-abb18(76)
      abb18(77)=abb18(77)*abb18(7)
      abb18(74)=abb18(74)-abb18(77)+abb18(25)
      abb18(77)=4.0_ki*abb18(74)
      abb18(87)=abb18(54)*abb18(38)
      abb18(75)=abb18(75)*abb18(26)
      abb18(87)=abb18(87)-abb18(75)
      abb18(87)=abb18(87)*spak2l5
      abb18(88)=abb18(72)*abb18(54)
      abb18(88)=abb18(88)-abb18(78)
      abb18(89)=abb18(88)*abb18(7)
      abb18(90)=abb18(89)-abb18(87)
      abb18(90)=abb18(36)*abb18(90)
      abb18(91)=abb18(14)*abb18(26)
      abb18(92)=abb18(91)*c4
      abb18(93)=abb18(14)*NC
      abb18(94)=abb18(93)*abb18(49)
      abb18(92)=abb18(92)-abb18(94)
      abb18(94)=2.0_ki*abb18(44)
      abb18(95)=abb18(94)*abb18(92)
      abb18(96)=abb18(38)*abb18(15)
      abb18(97)=abb18(19)*abb18(15)
      abb18(98)=abb18(97)*NC
      abb18(96)=abb18(96)-abb18(98)
      abb18(98)=2.0_ki*abb18(45)
      abb18(99)=abb18(98)*abb18(96)
      abb18(95)=abb18(99)+abb18(95)
      abb18(95)=abb18(95)*spbl6k2**3
      abb18(99)=abb18(54)*abb18(19)
      abb18(52)=abb18(49)*abb18(52)
      abb18(100)=abb18(99)-abb18(52)
      abb18(101)=abb18(100)*spak2l5
      abb18(102)=abb18(62)*abb18(7)
      abb18(101)=abb18(101)+abb18(102)
      abb18(102)=NC*abb18(36)*abb18(101)
      abb18(103)=abb18(34)*abb18(38)
      abb18(28)=abb18(26)*abb18(28)
      abb18(104)=abb18(103)-abb18(28)
      abb18(104)=abb18(104)*abb18(36)
      abb18(34)=abb18(34)*abb18(19)
      abb18(26)=abb18(26)*abb18(31)
      abb18(31)=abb18(34)-abb18(26)
      abb18(34)=abb18(31)*abb18(36)
      abb18(36)=-NC*abb18(34)
      abb18(36)=abb18(36)+abb18(104)
      abb18(36)=abb18(36)*abb18(33)
      abb18(36)=2.0_ki*abb18(36)+abb18(102)+abb18(95)+abb18(90)
      abb18(36)=spak2l6*abb18(36)
      abb18(90)=abb18(88)*abb18(8)
      abb18(95)=abb18(20)*abb18(54)
      abb18(27)=abb18(95)-abb18(27)
      abb18(90)=abb18(90)-abb18(27)
      abb18(64)=NC*abb18(64)
      abb18(64)=abb18(90)+abb18(64)
      abb18(64)=abb18(64)*spak2l5**2
      abb18(95)=abb18(23)*spbk2k1
      abb18(29)=abb18(95)-abb18(29)
      abb18(102)=spak2l5*abb18(29)
      abb18(105)=NC*spak2l5
      abb18(106)=-abb18(32)*abb18(105)
      abb18(102)=abb18(102)+abb18(106)
      abb18(102)=abb18(102)*abb18(33)
      abb18(47)=spak2l5*abb18(47)
      abb18(50)=-abb18(105)*abb18(50)
      abb18(47)=abb18(47)+abb18(50)
      abb18(47)=abb18(47)*abb18(94)
      abb18(43)=spak2l5*abb18(43)
      abb18(41)=-abb18(105)*abb18(41)
      abb18(41)=abb18(43)+abb18(41)
      abb18(41)=abb18(41)*abb18(98)
      abb18(41)=abb18(41)+abb18(47)+abb18(102)+abb18(64)
      abb18(41)=spbl5k2*abb18(41)
      abb18(43)=abb18(83)*abb18(54)
      abb18(43)=abb18(43)-abb18(76)
      abb18(47)=spak2l5*abb18(43)
      abb18(50)=-abb18(61)*abb18(105)
      abb18(47)=abb18(47)+abb18(50)
      abb18(50)=spak2l5*abb18(104)
      abb18(34)=-abb18(34)*abb18(105)
      abb18(34)=abb18(50)+abb18(34)
      abb18(50)=spbl5k3*spal5l6
      abb18(34)=abb18(34)*abb18(50)
      abb18(34)=abb18(36)+abb18(41)+2.0_ki*abb18(47)+abb18(34)
      abb18(34)=4.0_ki*abb18(34)
      abb18(36)=abb18(90)*spak2l5
      abb18(41)=abb18(43)*abb18(7)
      abb18(36)=abb18(36)+abb18(41)
      abb18(25)=abb18(25)-abb18(36)
      abb18(25)=16.0_ki*abb18(25)
      abb18(43)=abb18(95)-abb18(35)
      abb18(47)=abb18(43)*abb18(33)
      abb18(47)=abb18(47)+abb18(65)
      abb18(54)=abb18(51)*abb18(44)
      abb18(64)=abb18(42)*abb18(45)
      abb18(36)=abb18(64)+abb18(54)-abb18(36)-abb18(47)
      abb18(36)=16.0_ki*abb18(36)
      abb18(54)=abb18(73)+abb18(71)
      abb18(54)=abb18(54)*spbk2k1
      abb18(54)=abb18(54)-abb18(60)-abb18(78)
      abb18(64)=abb18(54)*abb18(8)
      abb18(19)=abb18(39)-abb18(19)
      abb18(65)=mB**4
      abb18(71)=abb18(65)*abb18(53)
      abb18(73)=-abb18(71)*abb18(19)
      abb18(78)=spbk2k1*abb18(3)
      abb18(90)=abb18(73)*abb18(78)
      abb18(94)=abb18(75)*abb18(65)
      abb18(95)=abb18(94)*abb18(3)
      abb18(98)=abb18(52)*abb18(65)
      abb18(95)=abb18(95)-abb18(98)
      abb18(95)=abb18(95)*abb18(3)
      abb18(90)=abb18(90)+abb18(95)
      abb18(102)=abb18(12)*abb18(8)**2
      abb18(104)=-abb18(90)*abb18(102)
      abb18(104)=abb18(104)-abb18(64)+abb18(27)
      abb18(104)=spak2l5*abb18(104)
      abb18(16)=abb18(16)*abb18(18)
      abb18(13)=abb18(16)*abb18(13)
      abb18(106)=abb18(13)*abb18(82)
      abb18(107)=abb18(106)*abb18(3)
      abb18(108)=abb18(13)*c3
      abb18(109)=abb18(108)*spbl6k2
      abb18(107)=abb18(107)-abb18(109)
      abb18(110)=abb18(107)*abb18(78)
      abb18(111)=abb18(66)*abb18(16)
      abb18(112)=abb18(111)*abb18(24)
      abb18(113)=abb18(16)*c3
      abb18(114)=abb18(113)*abb18(66)
      abb18(112)=abb18(112)-abb18(114)
      abb18(115)=abb18(112)*abb18(3)
      abb18(110)=abb18(110)-abb18(115)
      abb18(116)=-abb18(110)*abb18(50)
      abb18(90)=abb18(116)-2.0_ki*abb18(90)
      abb18(116)=abb18(8)*abb18(7)
      abb18(90)=abb18(116)*abb18(90)
      abb18(117)=c4*spak4k7
      abb18(118)=abb18(46)*abb18(117)
      abb18(119)=abb18(118)*abb18(40)
      abb18(46)=abb18(59)*abb18(46)
      abb18(119)=abb18(119)-abb18(46)
      abb18(120)=-abb18(119)*abb18(44)
      abb18(121)=abb18(48)*abb18(37)
      abb18(122)=abb18(37)*abb18(58)
      abb18(121)=abb18(121)-abb18(122)
      abb18(123)=-abb18(121)*abb18(45)
      abb18(120)=abb18(123)+abb18(120)
      abb18(120)=abb18(3)*abb18(120)
      abb18(110)=-abb18(110)*abb18(33)
      abb18(110)=abb18(110)+abb18(120)
      abb18(110)=abb18(7)*abb18(110)
      abb18(120)=-abb18(65)*abb18(57)
      abb18(80)=abb18(78)*abb18(71)*abb18(80)
      abb18(80)=abb18(120)+abb18(80)
      abb18(120)=abb18(7)**2
      abb18(80)=abb18(80)*abb18(120)
      abb18(80)=abb18(80)+abb18(110)
      abb18(80)=abb18(11)*abb18(80)
      abb18(84)=-abb18(84)+abb18(86)
      abb18(84)=spbk2k1*abb18(84)
      abb18(76)=abb18(84)+abb18(76)+abb18(68)
      abb18(76)=abb18(7)*abb18(76)
      abb18(84)=abb18(67)*abb18(14)
      abb18(66)=abb18(14)*abb18(66)
      abb18(86)=abb18(66)*abb18(48)
      abb18(86)=abb18(86)-abb18(84)
      abb18(110)=abb18(86)*abb18(3)
      abb18(123)=-abb18(8)*abb18(110)
      abb18(123)=abb18(123)+abb18(51)
      abb18(123)=abb18(123)*abb18(44)
      abb18(85)=abb18(85)*abb18(15)
      abb18(58)=abb18(58)*abb18(15)
      abb18(124)=abb18(58)*spbl6k2
      abb18(85)=abb18(85)-abb18(124)
      abb18(125)=abb18(85)*abb18(3)
      abb18(126)=-abb18(8)*abb18(125)
      abb18(126)=abb18(126)+abb18(42)
      abb18(126)=abb18(126)*abb18(45)
      abb18(47)=abb18(80)+abb18(126)+abb18(123)+abb18(76)+abb18(90)+abb18(104)-&
      &abb18(47)
      abb18(47)=16.0_ki*abb18(47)
      abb18(76)=abb18(54)*abb18(116)
      abb18(73)=abb18(73)*abb18(3)
      abb18(71)=abb18(71)*abb18(38)
      abb18(71)=abb18(71)-abb18(73)
      abb18(71)=abb18(71)*spbk2k1
      abb18(71)=abb18(71)-abb18(95)-abb18(94)
      abb18(65)=abb18(99)*abb18(65)
      abb18(65)=abb18(65)-abb18(98)
      abb18(73)=NC*abb18(65)
      abb18(73)=-abb18(71)+abb18(73)
      abb18(73)=abb18(11)*abb18(120)*abb18(8)*abb18(73)
      abb18(71)=-abb18(7)*abb18(71)
      abb18(80)=NC*abb18(7)
      abb18(65)=abb18(65)*abb18(80)
      abb18(65)=abb18(71)+abb18(65)
      abb18(65)=abb18(65)*abb18(102)
      abb18(71)=abb18(116)*NC
      abb18(90)=abb18(62)*abb18(71)
      abb18(65)=abb18(65)+abb18(73)+abb18(76)+abb18(90)
      abb18(65)=32.0_ki*abb18(65)
      abb18(73)=-8.0_ki*abb18(74)
      abb18(74)=2.0_ki*abb18(3)
      abb18(76)=abb18(112)*abb18(74)
      abb18(90)=abb18(107)*abb18(74)
      abb18(94)=abb18(106)-abb18(90)
      abb18(94)=spbk2k1*abb18(94)
      abb18(95)=abb18(111)*c4
      abb18(94)=abb18(94)-abb18(95)+abb18(76)
      abb18(94)=abb18(7)*abb18(94)
      abb18(16)=abb18(117)*abb18(16)
      abb18(98)=abb18(16)*abb18(3)
      abb18(99)=abb18(113)*spak4k7
      abb18(98)=abb18(98)-abb18(99)
      abb18(102)=abb18(98)*abb18(3)
      abb18(104)=abb18(13)*abb18(24)
      abb18(104)=abb18(104)-abb18(108)
      abb18(111)=-abb18(104)*abb18(78)
      abb18(111)=abb18(102)+abb18(111)
      abb18(112)=spak2l5*abb18(8)
      abb18(111)=abb18(111)*abb18(112)
      abb18(109)=abb18(109)*spbk2k1
      abb18(109)=abb18(109)-abb18(114)
      abb18(113)=abb18(109)*abb18(80)
      abb18(94)=-abb18(113)+abb18(94)+abb18(111)
      abb18(94)=spbl6k3*abb18(94)
      abb18(111)=abb18(119)*abb18(74)
      abb18(114)=abb18(118)*abb18(18)
      abb18(118)=abb18(114)-abb18(111)
      abb18(118)=abb18(7)*abb18(118)
      abb18(86)=-abb18(86)*abb18(74)
      abb18(66)=abb18(66)*abb18(72)
      abb18(86)=abb18(66)+abb18(86)
      abb18(86)=abb18(86)*abb18(112)
      abb18(84)=-abb18(112)*abb18(84)
      abb18(119)=-abb18(7)*abb18(46)
      abb18(84)=abb18(119)+abb18(84)
      abb18(84)=NC*abb18(84)
      abb18(84)=abb18(84)+abb18(118)+abb18(86)
      abb18(86)=spbk4k3*abb18(10)
      abb18(84)=abb18(84)*abb18(86)
      abb18(83)=abb18(83)*abb18(15)
      abb18(85)=-abb18(85)*abb18(74)
      abb18(85)=abb18(83)+abb18(85)
      abb18(85)=abb18(85)*abb18(112)
      abb18(118)=abb18(121)*abb18(74)
      abb18(37)=abb18(72)*abb18(37)
      abb18(119)=abb18(37)-abb18(118)
      abb18(119)=abb18(7)*abb18(119)
      abb18(120)=-abb18(7)*abb18(122)
      abb18(121)=-abb18(112)*abb18(124)
      abb18(120)=abb18(120)+abb18(121)
      abb18(120)=NC*abb18(120)
      abb18(85)=abb18(120)+abb18(119)+abb18(85)
      abb18(119)=spbk3k1*abb18(10)
      abb18(85)=abb18(85)*abb18(119)
      abb18(107)=-abb18(3)*abb18(107)
      abb18(107)=abb18(106)+abb18(107)
      abb18(107)=spbk2k1*abb18(107)
      abb18(107)=abb18(107)-abb18(95)+abb18(115)
      abb18(107)=spak2l5*abb18(107)
      abb18(115)=-abb18(109)*abb18(105)
      abb18(107)=abb18(107)+abb18(115)
      abb18(107)=spbl5k3*abb18(116)*abb18(107)
      abb18(84)=abb18(107)+abb18(85)+abb18(94)+abb18(84)
      abb18(84)=8.0_ki*abb18(84)
      abb18(85)=abb18(104)*abb18(3)
      abb18(13)=abb18(13)*c4
      abb18(85)=abb18(85)+abb18(13)
      abb18(85)=abb18(85)*spbk2k1
      abb18(85)=abb18(85)-abb18(102)-abb18(16)
      abb18(85)=abb18(85)*abb18(116)
      abb18(94)=abb18(108)*spbk2k1
      abb18(94)=abb18(94)-abb18(99)
      abb18(99)=abb18(94)*abb18(71)
      abb18(85)=abb18(85)-abb18(99)
      abb18(99)=spbl6k3*abb18(85)
      abb18(67)=abb18(93)*abb18(67)
      abb18(66)=abb18(67)-abb18(66)
      abb18(67)=abb18(110)-abb18(66)
      abb18(67)=abb18(86)*abb18(116)*abb18(67)
      abb18(102)=abb18(83)+abb18(125)
      abb18(102)=abb18(102)*abb18(116)
      abb18(71)=-abb18(124)*abb18(71)
      abb18(71)=abb18(102)+abb18(71)
      abb18(71)=abb18(71)*abb18(119)
      abb18(67)=abb18(71)+abb18(99)+abb18(67)
      abb18(67)=16.0_ki*abb18(67)
      abb18(71)=abb18(63)*abb18(105)
      abb18(99)=abb18(88)*abb18(112)
      abb18(71)=abb18(71)+abb18(99)
      abb18(71)=abb18(71)*abb18(12)
      abb18(31)=abb18(31)*NC
      abb18(31)=abb18(31)+abb18(28)
      abb18(99)=abb18(31)-abb18(103)
      abb18(33)=abb18(99)*abb18(33)
      abb18(33)=-abb18(71)+abb18(33)+abb18(87)
      abb18(71)=abb18(91)*abb18(82)
      abb18(82)=abb18(71)*abb18(3)
      abb18(87)=abb18(56)*abb18(14)
      abb18(82)=abb18(82)-abb18(87)
      abb18(99)=abb18(82)*abb18(44)
      abb18(79)=abb18(79)*abb18(15)
      abb18(21)=abb18(21)*abb18(15)
      abb18(79)=abb18(79)-abb18(21)
      abb18(102)=abb18(79)*abb18(45)
      abb18(99)=abb18(102)+abb18(99)
      abb18(99)=abb18(74)*abb18(99)
      abb18(102)=abb18(100)*abb18(105)
      abb18(99)=abb18(102)+abb18(99)-abb18(33)
      abb18(99)=spbl5k2*abb18(99)
      abb18(30)=-abb18(30)*abb18(74)
      abb18(22)=-abb18(22)*abb18(74)
      abb18(22)=-abb18(23)+abb18(22)
      abb18(22)=spbk2k1*abb18(22)
      abb18(22)=abb18(22)+abb18(30)+abb18(35)
      abb18(22)=abb18(22)*abb18(50)
      abb18(23)=-abb18(61)*abb18(80)
      abb18(23)=abb18(41)+abb18(23)
      abb18(23)=abb18(11)*abb18(23)
      abb18(30)=NC*abb18(55)
      abb18(23)=abb18(23)+abb18(30)-abb18(27)
      abb18(23)=spak2l6*abb18(23)
      abb18(27)=NC*abb18(62)
      abb18(27)=abb18(27)+abb18(88)
      abb18(22)=abb18(23)+2.0_ki*abb18(27)+abb18(22)+abb18(99)
      abb18(22)=4.0_ki*abb18(22)
      abb18(23)=abb18(7)*abb18(54)
      abb18(27)=abb18(62)*abb18(80)
      abb18(23)=abb18(23)+abb18(27)
      abb18(23)=abb18(11)*abb18(23)
      abb18(27)=NC*abb18(63)
      abb18(27)=abb18(64)+abb18(27)
      abb18(27)=abb18(12)*abb18(27)
      abb18(30)=abb18(3)*abb18(75)
      abb18(30)=-abb18(52)+abb18(30)
      abb18(30)=abb18(3)*abb18(30)
      abb18(19)=abb18(19)*abb18(3)
      abb18(19)=abb18(19)+abb18(38)
      abb18(35)=-spbk2k1*abb18(53)*abb18(19)
      abb18(38)=NC*abb18(100)
      abb18(23)=abb18(27)+abb18(23)+abb18(38)+abb18(35)+abb18(75)+abb18(30)
      abb18(23)=16.0_ki*abb18(23)
      abb18(17)=spbk2k1*abb18(17)*abb18(19)
      abb18(19)=abb18(28)*abb18(3)
      abb18(19)=abb18(19)-abb18(26)
      abb18(19)=abb18(19)*abb18(3)
      abb18(17)=-abb18(17)+abb18(19)+abb18(31)
      abb18(19)=spbl6k3*abb18(17)
      abb18(26)=abb18(93)*abb18(56)
      abb18(26)=abb18(26)-abb18(71)
      abb18(27)=-abb18(3)*abb18(82)
      abb18(27)=abb18(27)+abb18(26)
      abb18(27)=abb18(27)*abb18(86)
      abb18(28)=abb18(21)*NC
      abb18(20)=abb18(20)*abb18(15)
      abb18(28)=abb18(28)-abb18(20)
      abb18(30)=-abb18(3)*abb18(79)
      abb18(30)=abb18(30)+abb18(28)
      abb18(30)=abb18(30)*abb18(119)
      abb18(19)=abb18(30)+abb18(19)+abb18(27)
      abb18(19)=8.0_ki*abb18(19)
      abb18(27)=NC*abb18(101)
      abb18(26)=-abb18(26)*abb18(44)
      abb18(28)=-abb18(28)*abb18(45)
      abb18(26)=abb18(28)+abb18(26)+abb18(27)+abb18(89)-abb18(33)
      abb18(26)=spbl6l5*abb18(26)
      abb18(27)=-NC*abb18(94)
      abb18(28)=spbk2k1*abb18(13)
      abb18(27)=abb18(27)-abb18(16)+abb18(28)
      abb18(27)=spbl6k3*abb18(27)
      abb18(26)=abb18(27)+abb18(26)
      abb18(27)=abb18(106)+abb18(90)
      abb18(27)=spbk2k1*abb18(27)
      abb18(27)=abb18(27)-abb18(95)-abb18(76)
      abb18(27)=abb18(7)*abb18(27)
      abb18(27)=abb18(27)-abb18(113)
      abb18(27)=spbl6k3*abb18(27)
      abb18(28)=abb18(114)+abb18(111)
      abb18(28)=abb18(7)*abb18(28)
      abb18(30)=-abb18(80)*abb18(46)
      abb18(28)=abb18(28)+abb18(30)
      abb18(28)=abb18(28)*abb18(86)
      abb18(30)=abb18(37)+abb18(118)
      abb18(30)=abb18(7)*abb18(30)
      abb18(31)=-abb18(80)*abb18(122)
      abb18(30)=abb18(30)+abb18(31)
      abb18(30)=abb18(30)*abb18(119)
      abb18(27)=abb18(30)+abb18(27)+abb18(28)
      abb18(27)=abb18(11)*abb18(27)
      abb18(28)=spbl6k3*abb18(43)
      abb18(30)=-abb18(51)*abb18(86)
      abb18(31)=-abb18(42)*abb18(119)
      abb18(27)=abb18(27)+abb18(31)+abb18(28)+abb18(30)
      abb18(27)=spak2l6*abb18(27)
      abb18(28)=abb18(98)*abb18(74)
      abb18(30)=-abb18(104)*abb18(74)
      abb18(13)=3.0_ki*abb18(13)+abb18(30)
      abb18(13)=spbk2k1*abb18(13)
      abb18(13)=abb18(13)-3.0_ki*abb18(16)+abb18(28)
      abb18(13)=abb18(8)*abb18(13)
      abb18(13)=abb18(13)+abb18(29)
      abb18(13)=spak2l5*abb18(13)
      abb18(16)=3.0_ki*abb18(8)
      abb18(28)=-abb18(94)*abb18(16)
      abb18(28)=abb18(28)-abb18(32)
      abb18(28)=spak2l5*abb18(28)
      abb18(29)=-abb18(7)*abb18(109)
      abb18(28)=abb18(29)+abb18(28)
      abb18(28)=NC*abb18(28)
      abb18(29)=spbk2k1*abb18(106)
      abb18(29)=-abb18(95)+abb18(29)
      abb18(29)=abb18(7)*abb18(29)
      abb18(13)=abb18(28)+abb18(29)+abb18(13)
      abb18(13)=spbl5k3*abb18(13)
      abb18(28)=abb18(14)*abb18(117)
      abb18(29)=abb18(40)*abb18(28)
      abb18(30)=abb18(59)*abb18(14)
      abb18(29)=abb18(29)-abb18(30)
      abb18(31)=-abb18(29)*abb18(74)
      abb18(18)=abb18(18)*abb18(28)
      abb18(28)=3.0_ki*abb18(18)+abb18(31)
      abb18(28)=abb18(8)*abb18(28)
      abb18(28)=abb18(71)+abb18(28)
      abb18(28)=spak2l5*abb18(28)
      abb18(30)=-abb18(30)*abb18(16)
      abb18(30)=-abb18(87)+abb18(30)
      abb18(30)=abb18(30)*abb18(105)
      abb18(28)=abb18(28)+abb18(30)
      abb18(28)=abb18(28)*abb18(86)
      abb18(30)=abb18(48)*abb18(15)
      abb18(30)=abb18(30)-abb18(58)
      abb18(31)=-abb18(30)*abb18(74)
      abb18(32)=abb18(72)*abb18(15)
      abb18(31)=3.0_ki*abb18(32)+abb18(31)
      abb18(31)=abb18(8)*abb18(31)
      abb18(20)=abb18(20)+abb18(31)
      abb18(20)=spak2l5*abb18(20)
      abb18(16)=-abb18(58)*abb18(16)
      abb18(16)=-abb18(21)+abb18(16)
      abb18(16)=abb18(16)*abb18(105)
      abb18(16)=abb18(20)+abb18(16)
      abb18(16)=abb18(16)*abb18(119)
      abb18(16)=abb18(28)+abb18(16)
      abb18(16)=spbl5k2*abb18(16)
      abb18(20)=-abb18(66)*abb18(86)
      abb18(21)=-NC*abb18(124)
      abb18(21)=abb18(83)+abb18(21)
      abb18(21)=abb18(21)*abb18(119)
      abb18(20)=abb18(20)+abb18(21)
      abb18(13)=abb18(27)+abb18(16)+abb18(13)+3.0_ki*abb18(26)+4.0_ki*abb18(20)
      abb18(13)=4.0_ki*abb18(13)
      abb18(16)=abb18(3)*abb18(29)
      abb18(20)=-abb18(59)*abb18(93)
      abb18(16)=abb18(20)+abb18(18)+abb18(16)
      abb18(16)=abb18(86)*abb18(16)
      abb18(18)=abb18(3)*abb18(30)
      abb18(20)=-NC*abb18(58)
      abb18(18)=abb18(20)+abb18(32)+abb18(18)
      abb18(18)=abb18(119)*abb18(18)
      abb18(16)=abb18(16)+abb18(18)
      abb18(16)=abb18(8)*abb18(16)
      abb18(18)=spbl5k3*abb18(85)
      abb18(16)=abb18(18)+abb18(16)
      abb18(16)=16.0_ki*abb18(16)
      abb18(17)=spbl5k3*abb18(17)
      abb18(14)=abb18(49)*abb18(14)
      abb18(18)=-abb18(24)*abb18(91)
      abb18(14)=abb18(14)+abb18(18)
      abb18(14)=abb18(3)*abb18(14)
      abb18(14)=abb18(14)-abb18(92)
      abb18(14)=abb18(14)*abb18(86)
      abb18(15)=-abb18(15)*abb18(39)
      abb18(15)=abb18(97)+abb18(15)
      abb18(15)=abb18(3)*abb18(15)
      abb18(15)=abb18(15)-abb18(96)
      abb18(15)=abb18(15)*abb18(119)
      abb18(14)=abb18(14)+abb18(15)
      abb18(14)=spbl5k2*abb18(14)
      abb18(14)=abb18(17)+abb18(14)
      abb18(14)=8.0_ki*abb18(14)
      abb18(15)=-abb18(69)*abb18(78)
      abb18(15)=abb18(60)+abb18(15)
      abb18(15)=abb18(8)*abb18(15)
      abb18(17)=abb18(70)*abb18(78)
      abb18(17)=abb18(68)+abb18(17)
      abb18(17)=abb18(11)*abb18(7)*abb18(17)
      abb18(18)=-abb18(81)*abb18(78)
      abb18(15)=abb18(17)+abb18(15)-abb18(57)+abb18(18)
      abb18(15)=8.0_ki*spal5l6*abb18(15)
      R2d18=abb18(77)
      rat2 = rat2 + R2d18
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='18' value='", &
          & R2d18, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd18h6
