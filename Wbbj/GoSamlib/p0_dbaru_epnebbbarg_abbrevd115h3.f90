module     p0_dbaru_epnebbbarg_abbrevd115h3
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(111), public :: abb115
   complex(ki), public :: R2d115
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
      abb115(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb115(2)=sqrt2**(-1)
      abb115(3)=es234**(-1)
      abb115(4)=es56**(-1)
      abb115(5)=spak2l5**(-1)
      abb115(6)=spbl5k2**(-1)
      abb115(7)=spak2l6**(-1)
      abb115(8)=spak2k7**(-1)
      abb115(9)=spbl6k2**(-1)
      abb115(10)=es71*spbk7k3
      abb115(11)=-spbl5k1*abb115(10)
      abb115(12)=spbk7k1*spbl6l5
      abb115(13)=abb115(12)*spbk7k3
      abb115(14)=-spal6k7*abb115(13)
      abb115(11)=abb115(11)+abb115(14)
      abb115(11)=spak3k4*abb115(11)
      abb115(14)=spbk7k2*spal6k7
      abb115(15)=abb115(12)*abb115(14)
      abb115(16)=es71*spbk7k2
      abb115(17)=spbl5k1*abb115(16)
      abb115(15)=abb115(17)+abb115(15)
      abb115(15)=spak2k4*abb115(15)
      abb115(11)=abb115(11)+abb115(15)
      abb115(11)=abb115(7)*abb115(11)
      abb115(15)=-spbl6k1*abb115(10)
      abb115(13)=spal5k7*abb115(13)
      abb115(13)=abb115(15)+abb115(13)
      abb115(13)=spak3k4*abb115(13)
      abb115(15)=spbl6k1*abb115(16)
      abb115(12)=-spbk7k2*abb115(12)*spal5k7
      abb115(12)=abb115(15)+abb115(12)
      abb115(12)=spak2k4*abb115(12)
      abb115(12)=abb115(13)+abb115(12)
      abb115(12)=abb115(5)*abb115(12)
      abb115(11)=abb115(11)+abb115(12)
      abb115(12)=TR**2*c2*i_
      abb115(13)=abb115(3)*abb115(8)
      abb115(15)=abb115(12)*abb115(13)
      abb115(11)=abb115(11)*spbk3k2*abb115(15)
      abb115(17)=es12-es712
      abb115(18)=abb115(17)+es71
      abb115(19)=abb115(7)*spak2k4
      abb115(20)=2.0_ki*abb115(19)
      abb115(21)=abb115(20)*spbk7k1
      abb115(22)=-abb115(18)*abb115(21)
      abb115(23)=abb115(5)*spak2k4
      abb115(24)=abb115(23)*abb115(6)
      abb115(25)=abb115(24)*spbl6k2
      abb115(26)=es71-es712
      abb115(27)=abb115(26)+es12
      abb115(28)=abb115(27)*spbk7k1
      abb115(29)=-abb115(28)*abb115(25)
      abb115(22)=abb115(22)+abb115(29)
      abb115(22)=abb115(5)*abb115(22)
      abb115(29)=abb115(7)**2
      abb115(30)=abb115(29)*abb115(9)
      abb115(31)=abb115(30)*spak2k4
      abb115(32)=abb115(31)*spbl5k2
      abb115(28)=-abb115(28)*abb115(32)
      abb115(22)=abb115(28)+abb115(22)
      abb115(28)=abb115(8)*spbk3k2
      abb115(22)=abb115(22)*abb115(28)
      abb115(33)=abb115(5)*spbk7k1
      abb115(34)=spbl6k2*abb115(33)*abb115(6)
      abb115(35)=abb115(7)*spbk7k1
      abb115(34)=abb115(34)+2.0_ki*abb115(35)
      abb115(34)=abb115(34)*abb115(5)
      abb115(36)=abb115(30)*spbl5k2
      abb115(37)=abb115(36)*spbk7k1
      abb115(34)=abb115(34)+abb115(37)
      abb115(37)=spak3k4*spbk7k3
      abb115(38)=spbk3k2*abb115(37)*abb115(34)
      abb115(22)=abb115(38)+abb115(22)
      abb115(38)=abb115(12)*abb115(3)
      abb115(39)=mB**2
      abb115(22)=abb115(39)*abb115(38)*abb115(22)
      abb115(11)=abb115(11)+abb115(22)
      abb115(22)=abb115(1)*abb115(2)*abb115(4)*CVDU
      abb115(40)=gW**2
      abb115(41)=abb115(22)*abb115(40)*mB
      abb115(42)=4.0_ki*abb115(41)
      abb115(11)=abb115(42)*abb115(11)*spak1k2**2
      abb115(43)=spbk7k1*spbl5k3
      abb115(44)=spbk7k3*spbl5k1
      abb115(45)=-2.0_ki*abb115(44)+abb115(43)
      abb115(45)=spak3k4*abb115(45)
      abb115(46)=spbk7k1*spbl5k2
      abb115(47)=spbk7k2*spbl5k1
      abb115(48)=2.0_ki*abb115(47)-abb115(46)
      abb115(48)=spak2k4*abb115(48)
      abb115(49)=spak3k4*spbk3k1
      abb115(50)=2.0_ki*abb115(49)
      abb115(51)=spbk7l5*abb115(50)
      abb115(45)=abb115(48)+abb115(45)+abb115(51)
      abb115(45)=abb115(7)*abb115(45)
      abb115(48)=spbk7k1*spbl6k3
      abb115(51)=spbk7k3*spbl6k1
      abb115(52)=-2.0_ki*abb115(51)+abb115(48)
      abb115(52)=spak3k4*abb115(52)
      abb115(53)=spbk7k2*spbl6k1
      abb115(54)=spbk7k1*spbl6k2
      abb115(55)=2.0_ki*abb115(53)-abb115(54)
      abb115(55)=spak2k4*abb115(55)
      abb115(56)=spbk7l6*abb115(50)
      abb115(52)=abb115(55)+abb115(52)+abb115(56)
      abb115(52)=abb115(5)*abb115(52)
      abb115(45)=abb115(45)+abb115(52)
      abb115(52)=spak1k2*spbk3k2
      abb115(45)=abb115(45)*abb115(52)
      abb115(55)=abb115(19)*spbk7l5
      abb115(56)=abb115(23)*spbk7l6
      abb115(55)=abb115(55)+abb115(56)
      abb115(57)=2.0_ki*spbk3k2
      abb115(58)=abb115(55)*abb115(57)
      abb115(59)=-es12*abb115(58)
      abb115(45)=abb115(59)+abb115(45)
      abb115(59)=8.0_ki*abb115(41)
      abb115(60)=abb115(8)*spak1k2
      abb115(61)=abb115(60)*abb115(3)
      abb115(62)=abb115(61)*abb115(12)
      abb115(63)=abb115(59)*abb115(62)
      abb115(45)=abb115(45)*abb115(63)
      abb115(64)=spak1k4*spbl5k1
      abb115(65)=spbl6l5*spak4l6
      abb115(64)=abb115(64)-abb115(65)
      abb115(65)=abb115(64)*abb115(35)
      abb115(66)=spak1k4*spbl6k1
      abb115(67)=spbl6l5*spak4l5
      abb115(66)=abb115(66)+abb115(67)
      abb115(67)=abb115(66)*abb115(33)
      abb115(65)=abb115(65)+abb115(67)
      abb115(67)=abb115(65)*abb115(52)
      abb115(68)=spbk7l5**2
      abb115(69)=abb115(68)*spak2l5
      abb115(70)=abb115(69)*abb115(7)
      abb115(71)=spak2l6*spbk7l6**2
      abb115(72)=abb115(71)*abb115(5)
      abb115(70)=abb115(70)+abb115(72)
      abb115(72)=spbk7l6*spbk7l5
      abb115(73)=2.0_ki*abb115(72)
      abb115(74)=abb115(70)+abb115(73)
      abb115(75)=spak4k7*abb115(74)
      abb115(76)=abb115(75)*spbk3k2
      abb115(67)=abb115(67)-abb115(76)
      abb115(67)=abb115(67)*spak1k2
      abb115(69)=abb115(69)*abb115(19)
      abb115(71)=abb115(71)*abb115(23)
      abb115(69)=abb115(71)+abb115(69)
      abb115(69)=spak1k7*abb115(69)
      abb115(71)=abb115(73)*spak1k7
      abb115(73)=abb115(71)*spak2k4
      abb115(69)=abb115(69)+abb115(73)
      abb115(73)=abb115(69)*abb115(57)
      abb115(67)=abb115(67)-abb115(73)
      abb115(67)=abb115(67)*abb115(8)
      abb115(73)=spbk7k1*spak1k4
      abb115(76)=spbk7l5*spak4l5
      abb115(77)=abb115(73)-abb115(76)
      abb115(77)=abb115(77)*spbk7l5
      abb115(78)=abb115(72)*spak4l6
      abb115(77)=abb115(77)-abb115(78)
      abb115(77)=abb115(77)*abb115(7)
      abb115(79)=spbk7l6*spak4l6
      abb115(80)=abb115(76)+abb115(79)
      abb115(81)=abb115(80)-abb115(73)
      abb115(82)=abb115(5)*spbk7l6
      abb115(81)=abb115(81)*abb115(82)
      abb115(77)=abb115(77)-abb115(81)
      abb115(77)=abb115(77)*abb115(52)
      abb115(81)=abb115(72)*spak1l6
      abb115(68)=abb115(68)*spak1l5
      abb115(68)=abb115(81)+abb115(68)
      abb115(81)=abb115(68)*abb115(19)
      abb115(83)=spbk7l5*spak1l5
      abb115(84)=spbk7l6*spak1l6
      abb115(83)=abb115(83)+abb115(84)
      abb115(85)=abb115(83)*abb115(56)
      abb115(85)=abb115(85)+abb115(81)
      abb115(85)=abb115(85)*abb115(57)
      abb115(67)=-abb115(77)+abb115(67)+abb115(85)
      abb115(67)=abb115(67)*abb115(38)
      abb115(77)=spbk7l5*abb115(6)
      abb115(85)=abb115(77)*abb115(18)
      abb115(86)=spbk7l6*abb115(9)
      abb115(87)=abb115(86)*abb115(18)
      abb115(85)=abb115(85)+abb115(87)
      abb115(88)=abb115(85)*abb115(19)
      abb115(89)=abb115(18)*abb115(6)
      abb115(90)=abb115(89)*abb115(56)
      abb115(88)=abb115(90)+abb115(88)
      abb115(88)=abb115(88)*abb115(5)
      abb115(90)=abb115(31)*spbk7l5
      abb115(91)=abb115(90)*abb115(18)
      abb115(88)=abb115(88)+abb115(91)
      abb115(88)=abb115(88)*spbk3k2
      abb115(91)=abb115(54)*abb115(24)
      abb115(21)=abb115(91)+abb115(21)
      abb115(91)=abb115(21)*abb115(5)
      abb115(92)=abb115(32)*spbk7k1
      abb115(91)=abb115(91)+abb115(92)
      abb115(91)=abb115(91)*abb115(52)
      abb115(88)=abb115(91)-abb115(88)
      abb115(91)=abb115(39)*abb115(62)
      abb115(88)=abb115(88)*abb115(91)
      abb115(67)=abb115(67)-abb115(88)
      abb115(67)=abb115(67)*abb115(59)
      abb115(88)=abb115(62)*spbk3k2
      abb115(93)=16.0_ki*abb115(88)
      abb115(55)=abb115(55)*abb115(93)*abb115(41)
      abb115(40)=abb115(40)*mB**3
      abb115(94)=abb115(40)*abb115(22)
      abb115(77)=abb115(77)+abb115(86)
      abb115(95)=abb115(77)*abb115(19)
      abb115(96)=abb115(56)*abb115(6)
      abb115(95)=abb115(96)+abb115(95)
      abb115(95)=abb115(95)*abb115(5)
      abb115(90)=abb115(95)+abb115(90)
      abb115(90)=abb115(90)*abb115(93)*abb115(94)
      abb115(93)=abb115(7)*spbl5k1
      abb115(95)=abb115(5)*spbl6k1
      abb115(93)=abb115(93)+abb115(95)
      abb115(95)=spak2k4*spbk7k2
      abb115(96)=abb115(95)-abb115(37)
      abb115(97)=abb115(52)*abb115(96)*abb115(93)
      abb115(58)=abb115(18)*abb115(58)
      abb115(58)=abb115(58)+abb115(97)
      abb115(58)=abb115(58)*abb115(60)
      abb115(97)=abb115(7)*spbk7l5
      abb115(98)=abb115(97)+abb115(82)
      abb115(99)=abb115(98)*abb115(52)
      abb115(100)=abb115(37)*abb115(99)
      abb115(100)=2.0_ki*abb115(100)
      abb115(58)=-abb115(100)+abb115(58)
      abb115(101)=abb115(38)*abb115(59)
      abb115(58)=abb115(58)*abb115(101)
      abb115(102)=spbl5k2*spak2l5
      abb115(103)=abb115(102)-abb115(18)
      abb115(103)=spak2k4*abb115(103)
      abb115(104)=spak3k4*spbl5k3
      abb115(105)=abb115(104)*spak2l5
      abb115(103)=-abb115(105)+abb115(103)
      abb115(103)=abb115(7)*abb115(103)
      abb115(106)=spak3k4*spbl6k3
      abb115(103)=abb115(103)-abb115(106)
      abb115(103)=spbk7l5*abb115(103)
      abb115(107)=spbl6k2*spak2l6
      abb115(108)=abb115(107)-abb115(18)
      abb115(108)=spak2k4*abb115(108)
      abb115(109)=abb115(106)*spak2l6
      abb115(108)=-abb115(109)+abb115(108)
      abb115(108)=abb115(5)*abb115(108)
      abb115(108)=abb115(108)-abb115(104)
      abb115(108)=spbk7l6*abb115(108)
      abb115(110)=spbk7l5*spbl6k2
      abb115(111)=spbk7l6*spbl5k2
      abb115(110)=abb115(110)+abb115(111)
      abb115(110)=spak2k4*abb115(110)
      abb115(103)=abb115(110)+abb115(108)+abb115(103)
      abb115(103)=abb115(103)*abb115(57)
      abb115(43)=3.0_ki*abb115(44)+abb115(43)
      abb115(43)=spak3k4*abb115(43)
      abb115(46)=-3.0_ki*abb115(47)-abb115(46)
      abb115(46)=spak2k4*abb115(46)
      abb115(43)=abb115(43)+abb115(46)
      abb115(43)=abb115(7)*abb115(43)
      abb115(46)=3.0_ki*abb115(51)+abb115(48)
      abb115(46)=spak3k4*abb115(46)
      abb115(47)=-3.0_ki*abb115(53)-abb115(54)
      abb115(47)=spak2k4*abb115(47)
      abb115(46)=abb115(46)+abb115(47)
      abb115(46)=abb115(5)*abb115(46)
      abb115(43)=abb115(43)+abb115(46)
      abb115(43)=abb115(43)*abb115(52)
      abb115(43)=abb115(103)+abb115(43)
      abb115(43)=abb115(43)*abb115(60)
      abb115(43)=abb115(100)+abb115(43)
      abb115(46)=abb115(42)*abb115(38)
      abb115(43)=abb115(43)*abb115(46)
      abb115(47)=spbk7k1*spak1k3
      abb115(48)=spbk7l5*spak3l5
      abb115(53)=-abb115(47)+abb115(48)
      abb115(53)=spbk7l5*abb115(53)
      abb115(54)=spak3l6*abb115(72)
      abb115(53)=abb115(53)+abb115(54)
      abb115(53)=abb115(7)*abb115(53)
      abb115(54)=spbk7l6*spak3l6
      abb115(48)=abb115(54)+abb115(48)
      abb115(54)=-abb115(47)+abb115(48)
      abb115(54)=abb115(54)*abb115(82)
      abb115(53)=abb115(53)+abb115(54)
      abb115(53)=spbk3k2*abb115(53)
      abb115(54)=abb115(76)*spbk4k2
      abb115(72)=abb115(73)*spbk4k2
      abb115(100)=-abb115(72)+abb115(54)
      abb115(100)=spbk7l5*abb115(100)
      abb115(103)=spbk4k2*abb115(78)
      abb115(100)=abb115(100)+abb115(103)
      abb115(100)=abb115(7)*abb115(100)
      abb115(103)=abb115(79)*spbk4k2
      abb115(54)=abb115(103)+abb115(54)
      abb115(103)=-abb115(72)+abb115(54)
      abb115(103)=abb115(103)*abb115(82)
      abb115(53)=abb115(53)+abb115(100)+abb115(103)
      abb115(53)=spak1k2*abb115(53)
      abb115(100)=spbk4k2*abb115(65)
      abb115(103)=spbl5k1*spak1k3
      abb115(108)=spbl6l5*spak3l6
      abb115(103)=abb115(103)-abb115(108)
      abb115(108)=abb115(103)*abb115(35)
      abb115(110)=spbl6k1*spak1k3
      abb115(111)=spbl6l5*spak3l5
      abb115(110)=abb115(110)+abb115(111)
      abb115(111)=abb115(110)*abb115(33)
      abb115(108)=abb115(108)+abb115(111)
      abb115(108)=spbk3k2*abb115(108)
      abb115(100)=abb115(108)+abb115(100)
      abb115(100)=spak1k2*abb115(100)
      abb115(108)=-spbk4k2*abb115(75)
      abb115(74)=-spbk3k2*spak3k7*abb115(74)
      abb115(74)=abb115(100)+abb115(74)+abb115(108)
      abb115(74)=spak1k2*abb115(74)
      abb115(70)=abb115(70)*spak1k7
      abb115(70)=abb115(70)+abb115(71)
      abb115(71)=-es34*abb115(70)
      abb115(71)=2.0_ki*abb115(71)+abb115(74)
      abb115(71)=abb115(8)*abb115(71)
      abb115(74)=abb115(83)*abb115(82)
      abb115(68)=abb115(68)*abb115(7)
      abb115(68)=abb115(74)+abb115(68)
      abb115(74)=es34*abb115(68)
      abb115(53)=abb115(71)+2.0_ki*abb115(74)+abb115(53)
      abb115(53)=abb115(3)*abb115(53)
      abb115(70)=abb115(8)*abb115(70)
      abb115(68)=abb115(70)-abb115(68)
      abb115(53)=2.0_ki*abb115(68)+abb115(53)
      abb115(53)=abb115(53)*abb115(12)
      abb115(68)=-abb115(7)*abb115(85)
      abb115(70)=-abb115(82)*abb115(89)
      abb115(68)=abb115(68)+abb115(70)
      abb115(68)=abb115(5)*abb115(68)
      abb115(70)=abb115(30)*spbk7l5
      abb115(71)=-abb115(18)*abb115(70)
      abb115(74)=spak1k2*abb115(34)
      abb115(68)=abb115(74)+abb115(71)+abb115(68)
      abb115(68)=abb115(68)*abb115(60)
      abb115(71)=-es34*abb115(18)
      abb115(74)=-abb115(71)*abb115(70)
      abb115(77)=abb115(77)*abb115(7)
      abb115(85)=abb115(82)*abb115(6)
      abb115(77)=abb115(77)+abb115(85)
      abb115(71)=-abb115(5)*abb115(71)*abb115(77)
      abb115(34)=-spak1k2*es34*abb115(34)
      abb115(34)=abb115(34)+abb115(74)+abb115(71)
      abb115(34)=abb115(34)*abb115(61)
      abb115(34)=abb115(68)+abb115(34)
      abb115(68)=abb115(39)*abb115(12)
      abb115(34)=abb115(34)*abb115(68)
      abb115(34)=abb115(53)+abb115(34)
      abb115(34)=abb115(34)*abb115(42)
      abb115(53)=abb115(61)*es34
      abb115(53)=abb115(53)-abb115(60)
      abb115(71)=abb115(59)*abb115(12)
      abb115(53)=abb115(71)*abb115(98)*abb115(53)
      abb115(74)=abb115(5)*abb115(77)
      abb115(74)=abb115(70)+abb115(74)
      abb115(74)=abb115(74)*abb115(60)
      abb115(85)=-abb115(5)*es34*abb115(77)
      abb115(98)=-es34*abb115(70)
      abb115(85)=abb115(98)+abb115(85)
      abb115(85)=abb115(85)*abb115(61)
      abb115(74)=abb115(74)+abb115(85)
      abb115(74)=8.0_ki*abb115(74)*abb115(12)*abb115(94)
      abb115(76)=abb115(76)*spbk4k3
      abb115(85)=abb115(73)*spbk4k3
      abb115(94)=abb115(85)-abb115(76)
      abb115(94)=spbk7l5*abb115(94)
      abb115(78)=-spbk4k3*abb115(78)
      abb115(78)=abb115(94)+abb115(78)
      abb115(78)=abb115(7)*abb115(78)
      abb115(79)=abb115(79)*spbk4k3
      abb115(76)=abb115(79)+abb115(76)
      abb115(79)=abb115(85)-abb115(76)
      abb115(79)=abb115(79)*abb115(82)
      abb115(94)=spbk7l5*abb115(35)
      abb115(98)=spbk7k1*abb115(82)
      abb115(94)=abb115(94)+abb115(98)
      abb115(94)=abb115(94)*abb115(52)
      abb115(78)=abb115(94)+abb115(78)+abb115(79)
      abb115(78)=spak1k2*abb115(78)
      abb115(69)=spbk4k3*abb115(69)
      abb115(65)=-spbk4k3*abb115(65)
      abb115(79)=-spbl5k1*abb115(35)
      abb115(94)=-spbl6k1*abb115(33)
      abb115(79)=abb115(79)+abb115(94)
      abb115(79)=abb115(79)*abb115(52)
      abb115(65)=abb115(79)+abb115(65)
      abb115(65)=spak1k2*abb115(65)
      abb115(75)=spbk4k3*abb115(75)
      abb115(65)=abb115(65)+abb115(75)
      abb115(65)=spak1k2*abb115(65)
      abb115(65)=2.0_ki*abb115(69)+abb115(65)
      abb115(65)=abb115(8)*abb115(65)
      abb115(69)=-spbk4k3*abb115(81)
      abb115(75)=spbk7l5*spbk4k3
      abb115(79)=-spak1l5*abb115(75)
      abb115(81)=-spbk4k3*abb115(84)
      abb115(79)=abb115(79)+abb115(81)
      abb115(79)=abb115(79)*abb115(56)
      abb115(69)=abb115(69)+abb115(79)
      abb115(65)=abb115(65)+2.0_ki*abb115(69)+abb115(78)
      abb115(65)=abb115(65)*abb115(38)
      abb115(69)=-abb115(75)*abb115(89)
      abb115(78)=-spbk4k3*abb115(87)
      abb115(69)=abb115(69)+abb115(78)
      abb115(69)=abb115(69)*abb115(19)
      abb115(56)=abb115(56)*spbk4k3
      abb115(78)=-abb115(89)*abb115(56)
      abb115(69)=abb115(69)+abb115(78)
      abb115(69)=abb115(5)*abb115(69)
      abb115(78)=abb115(31)*abb115(75)
      abb115(79)=-abb115(18)*abb115(78)
      abb115(81)=abb115(5)*spbk4k3
      abb115(21)=abb115(21)*abb115(81)
      abb115(84)=spbk4k3*abb115(92)
      abb115(21)=abb115(84)+abb115(21)
      abb115(21)=spak1k2*abb115(21)
      abb115(21)=abb115(21)+abb115(79)+abb115(69)
      abb115(21)=abb115(21)*abb115(91)
      abb115(21)=abb115(65)+abb115(21)
      abb115(21)=abb115(21)*abb115(42)
      abb115(65)=abb115(75)*abb115(19)
      abb115(65)=abb115(65)+abb115(56)
      abb115(63)=abb115(65)*abb115(63)
      abb115(65)=abb115(6)*abb115(75)
      abb115(69)=spbk4k3*abb115(86)
      abb115(65)=abb115(65)+abb115(69)
      abb115(65)=abb115(65)*abb115(19)
      abb115(56)=abb115(6)*abb115(56)
      abb115(56)=abb115(65)+abb115(56)
      abb115(56)=abb115(5)*abb115(56)
      abb115(56)=abb115(78)+abb115(56)
      abb115(22)=8.0_ki*abb115(22)
      abb115(22)=abb115(56)*abb115(62)*abb115(22)*abb115(40)
      abb115(40)=spbk7l5*spak1k7
      abb115(56)=abb115(106)*abb115(40)
      abb115(65)=spbk7l6*spak1k7
      abb115(69)=abb115(104)*abb115(65)
      abb115(78)=-spbl6k2*abb115(40)
      abb115(79)=-spbl5k2*abb115(65)
      abb115(78)=abb115(78)+abb115(79)
      abb115(78)=spak2k4*abb115(78)
      abb115(56)=abb115(78)+abb115(56)+abb115(69)
      abb115(69)=2.0_ki*es12
      abb115(78)=spbl6l5*spak1l6
      abb115(79)=-abb115(78)*abb115(69)
      abb115(84)=3.0_ki*spak1k7
      abb115(86)=abb115(84)*es12
      abb115(87)=spak1k7*abb115(102)
      abb115(87)=-2.0_ki*abb115(87)+abb115(86)
      abb115(87)=spbk7l5*abb115(87)
      abb115(79)=abb115(79)+abb115(87)
      abb115(79)=spak2k4*abb115(79)
      abb115(87)=abb115(40)*abb115(105)
      abb115(79)=2.0_ki*abb115(87)+abb115(79)
      abb115(79)=abb115(7)*abb115(79)
      abb115(87)=spbl6l5*spak1l5
      abb115(89)=abb115(87)*abb115(69)
      abb115(92)=spak1k7*spak2l6
      abb115(94)=2.0_ki*abb115(92)
      abb115(98)=-spbl6k2*abb115(94)
      abb115(86)=abb115(98)+abb115(86)
      abb115(86)=spbk7l6*abb115(86)
      abb115(86)=abb115(89)+abb115(86)
      abb115(86)=spak2k4*abb115(86)
      abb115(89)=spbk7l6*abb115(106)*abb115(94)
      abb115(86)=abb115(89)+abb115(86)
      abb115(86)=abb115(5)*abb115(86)
      abb115(56)=abb115(86)+2.0_ki*abb115(56)+abb115(79)
      abb115(56)=spbk3k2*abb115(56)
      abb115(79)=spbk3k1*abb115(78)
      abb115(44)=spak1k7*abb115(44)
      abb115(86)=es71*spbl5k3
      abb115(44)=abb115(86)+abb115(79)+abb115(44)
      abb115(79)=spbl5k3*spal5k7
      abb115(86)=spbl6k3*spal6k7
      abb115(84)=abb115(84)*spbk3k1
      abb115(79)=-abb115(84)+abb115(79)+abb115(86)
      abb115(84)=spbk7l5*abb115(79)
      abb115(44)=2.0_ki*abb115(44)+abb115(84)
      abb115(44)=spak3k4*abb115(44)
      abb115(84)=spbk7k2*spak1k7
      abb115(86)=-spbl5k1*abb115(84)
      abb115(89)=-es71*spbl5k2
      abb115(86)=abb115(86)+abb115(89)
      abb115(89)=spbl5k2*spal5k7
      abb115(94)=spbl6k2*spal6k7
      abb115(89)=abb115(89)+abb115(94)
      abb115(94)=-spbk7l5*abb115(89)
      abb115(86)=2.0_ki*abb115(86)+abb115(94)
      abb115(86)=spak2k4*abb115(86)
      abb115(44)=abb115(86)+abb115(44)
      abb115(44)=abb115(7)*abb115(44)
      abb115(86)=-spbk3k1*abb115(87)
      abb115(51)=spak1k7*abb115(51)
      abb115(94)=es71*spbl6k3
      abb115(51)=abb115(94)+abb115(86)+abb115(51)
      abb115(79)=spbk7l6*abb115(79)
      abb115(51)=2.0_ki*abb115(51)+abb115(79)
      abb115(51)=spak3k4*abb115(51)
      abb115(79)=-spbl6k1*abb115(84)
      abb115(86)=-es71*spbl6k2
      abb115(79)=abb115(79)+abb115(86)
      abb115(86)=-spbk7l6*abb115(89)
      abb115(79)=2.0_ki*abb115(79)+abb115(86)
      abb115(79)=spak2k4*abb115(79)
      abb115(51)=abb115(79)+abb115(51)
      abb115(51)=abb115(5)*abb115(51)
      abb115(44)=abb115(44)+abb115(51)
      abb115(44)=abb115(44)*abb115(52)
      abb115(44)=abb115(56)+abb115(44)
      abb115(44)=abb115(8)*abb115(44)
      abb115(51)=spak2k4*spbl5k2
      abb115(51)=abb115(51)-abb115(104)
      abb115(56)=abb115(7)*abb115(83)*abb115(51)
      abb115(79)=spak2k4*spbl6k2
      abb115(86)=abb115(79)-abb115(106)
      abb115(89)=abb115(5)*abb115(83)*abb115(86)
      abb115(56)=abb115(56)+abb115(89)
      abb115(56)=abb115(56)*abb115(57)
      abb115(89)=abb115(27)*spbl6k3
      abb115(94)=-abb115(9)*abb115(89)
      abb115(98)=abb115(27)*spbl5k3
      abb115(100)=-abb115(6)*abb115(98)
      abb115(94)=abb115(94)+abb115(100)
      abb115(94)=spak3k4*abb115(94)
      abb115(26)=abb115(26)+abb115(69)
      abb115(69)=spak2k4*abb115(26)
      abb115(69)=abb115(94)+2.0_ki*abb115(69)
      abb115(69)=abb115(7)*abb115(69)
      abb115(94)=spak2k4*abb115(6)
      abb115(100)=abb115(94)*spbl6k2*abb115(26)
      abb115(89)=-spak3k4*abb115(6)*abb115(89)
      abb115(89)=abb115(89)+abb115(100)
      abb115(89)=abb115(5)*abb115(89)
      abb115(69)=abb115(69)+abb115(89)
      abb115(69)=abb115(5)*abb115(69)
      abb115(89)=spak2k4*abb115(9)
      abb115(100)=abb115(89)*spbl5k2
      abb115(26)=abb115(26)*abb115(100)
      abb115(98)=-spak3k4*abb115(9)*abb115(98)
      abb115(26)=abb115(98)+abb115(26)
      abb115(26)=abb115(26)*abb115(29)
      abb115(26)=abb115(26)+abb115(69)
      abb115(26)=spbk3k2*abb115(26)
      abb115(69)=-abb115(36)*abb115(49)
      abb115(98)=abb115(5)*abb115(6)
      abb115(108)=abb115(98)*spbl6k2
      abb115(111)=-abb115(49)*abb115(108)
      abb115(50)=-abb115(7)*abb115(50)
      abb115(50)=abb115(50)+abb115(111)
      abb115(50)=abb115(5)*abb115(50)
      abb115(50)=abb115(69)+abb115(50)
      abb115(50)=abb115(50)*abb115(52)
      abb115(26)=abb115(26)+abb115(50)
      abb115(26)=abb115(26)*abb115(60)
      abb115(50)=-abb115(5)*spak3k4*abb115(77)
      abb115(69)=-spak3k4*abb115(70)
      abb115(50)=abb115(69)+abb115(50)
      abb115(50)=spak1k2*abb115(50)*spbk3k2**2
      abb115(26)=abb115(50)+2.0_ki*abb115(26)
      abb115(26)=abb115(26)*abb115(39)
      abb115(26)=abb115(26)+abb115(56)+abb115(44)
      abb115(26)=abb115(26)*abb115(46)
      abb115(44)=abb115(86)*abb115(5)
      abb115(46)=abb115(51)*abb115(7)
      abb115(44)=abb115(44)+abb115(46)
      abb115(46)=abb115(59)*abb115(88)
      abb115(50)=abb115(44)*abb115(46)
      abb115(56)=spbk7l5*spak4k7
      abb115(56)=abb115(64)-abb115(56)
      abb115(56)=abb115(56)*abb115(7)
      abb115(69)=spbk7l6*spak4k7
      abb115(66)=abb115(66)-abb115(69)
      abb115(69)=abb115(66)*abb115(5)
      abb115(56)=abb115(56)+abb115(69)
      abb115(69)=-abb115(56)*abb115(52)
      abb115(70)=abb115(78)*abb115(19)
      abb115(77)=abb115(87)*abb115(23)
      abb115(70)=abb115(70)-abb115(77)
      abb115(77)=4.0_ki*spbk3k2
      abb115(77)=abb115(70)*abb115(77)
      abb115(69)=abb115(69)+abb115(77)
      abb115(15)=abb115(69)*abb115(15)
      abb115(20)=abb115(25)+abb115(20)
      abb115(25)=abb115(20)*abb115(5)
      abb115(25)=abb115(25)+abb115(32)
      abb115(39)=abb115(88)*abb115(39)
      abb115(69)=3.0_ki*abb115(39)
      abb115(25)=abb115(25)*abb115(69)
      abb115(25)=abb115(25)-abb115(15)
      abb115(25)=abb115(25)*abb115(59)
      abb115(69)=abb115(9)*spbl6k3
      abb115(77)=abb115(6)*spbl5k3
      abb115(69)=abb115(69)+abb115(77)
      abb115(69)=spak3k4*abb115(69)
      abb115(69)=abb115(69)-8.0_ki*spak2k4
      abb115(69)=abb115(7)*abb115(69)
      abb115(77)=abb115(106)-4.0_ki*abb115(79)
      abb115(77)=abb115(77)*abb115(98)
      abb115(69)=abb115(69)+abb115(77)
      abb115(69)=abb115(5)*abb115(69)
      abb115(77)=abb115(9)*abb115(104)
      abb115(77)=abb115(77)-4.0_ki*abb115(100)
      abb115(77)=abb115(77)*abb115(29)
      abb115(69)=abb115(77)+abb115(69)
      abb115(69)=abb115(69)*abb115(39)
      abb115(15)=abb115(15)+abb115(69)
      abb115(15)=abb115(15)*abb115(59)
      abb115(41)=32.0_ki*abb115(44)*abb115(41)*abb115(88)
      abb115(44)=-spbk4k2*abb115(56)
      abb115(56)=spbk7l5*spak3k7
      abb115(56)=abb115(56)-abb115(103)
      abb115(56)=abb115(7)*abb115(56)
      abb115(69)=spbk7l6*spak3k7
      abb115(69)=abb115(69)-abb115(110)
      abb115(69)=abb115(5)*abb115(69)
      abb115(56)=abb115(56)+abb115(69)
      abb115(56)=spbk3k2*abb115(56)
      abb115(44)=abb115(56)+abb115(44)
      abb115(44)=spak1k2*abb115(44)
      abb115(56)=abb115(78)*abb115(7)
      abb115(69)=abb115(87)*abb115(5)
      abb115(56)=abb115(56)-abb115(69)
      abb115(69)=es34*abb115(56)
      abb115(44)=4.0_ki*abb115(69)+abb115(44)
      abb115(44)=abb115(44)*abb115(13)
      abb115(56)=abb115(8)*abb115(56)
      abb115(44)=-4.0_ki*abb115(56)+abb115(44)
      abb115(12)=abb115(44)*abb115(12)
      abb115(44)=2.0_ki*abb115(7)
      abb115(56)=abb115(44)+abb115(108)
      abb115(56)=abb115(5)*abb115(56)
      abb115(56)=abb115(36)+abb115(56)
      abb115(56)=abb115(56)*abb115(60)
      abb115(44)=-es34*abb115(44)
      abb115(69)=abb115(98)*es34
      abb115(77)=-spbl6k2*abb115(69)
      abb115(44)=abb115(44)+abb115(77)
      abb115(44)=abb115(5)*abb115(44)
      abb115(36)=-es34*abb115(36)
      abb115(36)=abb115(36)+abb115(44)
      abb115(36)=abb115(36)*abb115(61)
      abb115(36)=abb115(56)+abb115(36)
      abb115(36)=abb115(36)*abb115(68)
      abb115(12)=abb115(12)+3.0_ki*abb115(36)
      abb115(12)=abb115(12)*abb115(42)
      abb115(36)=abb115(93)*abb115(52)
      abb115(44)=spbk4k3*abb115(64)
      abb115(56)=-spak4k7*abb115(75)
      abb115(44)=abb115(44)+abb115(56)
      abb115(44)=abb115(7)*abb115(44)
      abb115(56)=abb115(66)*abb115(81)
      abb115(44)=abb115(36)+abb115(44)+abb115(56)
      abb115(44)=spak1k2*abb115(44)
      abb115(56)=-spbk4k3*abb115(70)
      abb115(44)=4.0_ki*abb115(56)+abb115(44)
      abb115(44)=abb115(8)*abb115(44)
      abb115(44)=-abb115(99)+abb115(44)
      abb115(44)=abb115(44)*abb115(38)
      abb115(20)=abb115(20)*abb115(81)
      abb115(32)=spbk4k3*abb115(32)
      abb115(20)=abb115(32)+abb115(20)
      abb115(20)=abb115(20)*abb115(91)
      abb115(20)=abb115(44)+3.0_ki*abb115(20)
      abb115(20)=abb115(20)*abb115(42)
      abb115(32)=abb115(37)*spbk7l6
      abb115(44)=-abb115(92)*abb115(32)
      abb115(56)=abb115(27)*spak1l6
      abb115(64)=spbk7k2*abb115(92)
      abb115(64)=abb115(64)-abb115(56)
      abb115(64)=spbk7l6*abb115(64)
      abb115(66)=abb115(27)*spak1l5
      abb115(70)=-spbk7l5*abb115(66)
      abb115(64)=abb115(70)+abb115(64)
      abb115(64)=spak2k4*abb115(64)
      abb115(44)=abb115(44)+abb115(64)
      abb115(44)=abb115(5)*abb115(44)
      abb115(64)=abb115(40)*abb115(96)
      abb115(44)=abb115(44)+abb115(64)
      abb115(44)=abb115(44)*abb115(57)
      abb115(64)=spbk7l5*spal5k7
      abb115(70)=abb115(64)*spbk7k2
      abb115(14)=abb115(14)*spbk7l6
      abb115(14)=-abb115(16)+abb115(70)+abb115(14)
      abb115(14)=abb115(14)*spak2k4
      abb115(64)=abb115(64)-es71
      abb115(64)=abb115(64)*abb115(37)
      abb115(70)=abb115(32)*spal6k7
      abb115(14)=-abb115(70)+abb115(14)-abb115(64)
      abb115(14)=abb115(14)*abb115(52)
      abb115(64)=abb115(5)*abb115(14)
      abb115(44)=abb115(44)+abb115(64)
      abb115(44)=abb115(8)*abb115(44)
      abb115(64)=abb115(57)*abb115(83)*abb115(37)
      abb115(70)=abb115(5)*abb115(64)
      abb115(44)=abb115(70)+abb115(44)
      abb115(44)=abb115(44)*abb115(38)
      abb115(70)=spbk7k3*abb115(17)
      abb115(10)=abb115(10)+abb115(70)
      abb115(10)=abb115(10)*spak3k4
      abb115(70)=abb115(10)*abb115(6)
      abb115(17)=abb115(17)*spbk7k2
      abb115(16)=abb115(17)+abb115(16)
      abb115(17)=abb115(94)*abb115(16)
      abb115(17)=abb115(70)-abb115(17)
      abb115(17)=abb115(17)*abb115(5)
      abb115(16)=abb115(16)*abb115(89)
      abb115(10)=abb115(10)*abb115(9)
      abb115(10)=abb115(16)-abb115(10)
      abb115(16)=-abb115(7)*abb115(10)
      abb115(16)=abb115(16)+abb115(17)
      abb115(70)=abb115(39)*abb115(5)
      abb115(16)=abb115(16)*abb115(70)
      abb115(16)=abb115(44)+abb115(16)
      abb115(16)=abb115(16)*abb115(42)
      abb115(44)=abb115(96)*abb115(46)
      abb115(75)=abb115(44)*abb115(5)
      abb115(77)=spbk7k2*abb115(19)*abb115(9)
      abb115(24)=abb115(24)*spbk7k2
      abb115(77)=abb115(77)+abb115(24)
      abb115(70)=abb115(77)*abb115(70)
      abb115(73)=abb115(80)+abb115(73)
      abb115(73)=abb115(73)*abb115(88)
      abb115(78)=abb115(73)*abb115(5)
      abb115(70)=abb115(70)-abb115(78)
      abb115(70)=abb115(70)*abb115(59)
      abb115(47)=abb115(48)+abb115(47)
      abb115(47)=abb115(47)*spbk3k2
      abb115(47)=abb115(47)+abb115(54)+abb115(72)
      abb115(47)=abb115(47)*abb115(62)
      abb115(48)=abb115(7)*spbk7k2
      abb115(54)=abb115(48)*abb115(9)
      abb115(72)=-spbk7k2*abb115(98)
      abb115(72)=-abb115(54)+abb115(72)
      abb115(72)=abb115(72)*abb115(60)
      abb115(54)=es34*abb115(54)
      abb115(78)=spbk7k2*abb115(69)
      abb115(54)=abb115(54)+abb115(78)
      abb115(54)=abb115(54)*abb115(61)
      abb115(54)=abb115(72)+abb115(54)
      abb115(54)=abb115(68)*abb115(54)
      abb115(54)=-abb115(47)+abb115(54)
      abb115(54)=abb115(42)*abb115(5)*abb115(54)
      abb115(72)=abb115(76)+abb115(85)
      abb115(76)=abb115(5)*abb115(72)
      abb115(33)=abb115(52)*abb115(33)
      abb115(78)=spak2l6*abb115(82)
      abb115(78)=spbk7l5+abb115(78)
      abb115(78)=spbk3k2*abb115(78)
      abb115(33)=abb115(33)+abb115(76)+abb115(78)
      abb115(33)=abb115(33)*abb115(62)
      abb115(76)=-abb115(91)*abb115(77)*abb115(81)
      abb115(33)=abb115(33)+abb115(76)
      abb115(33)=abb115(33)*abb115(42)
      abb115(40)=-spak2l5*abb115(37)*abb115(40)
      abb115(76)=spak2l5*abb115(84)
      abb115(66)=abb115(76)-abb115(66)
      abb115(66)=spbk7l5*abb115(66)
      abb115(56)=-spbk7l6*abb115(56)
      abb115(56)=abb115(66)+abb115(56)
      abb115(56)=spak2k4*abb115(56)
      abb115(40)=abb115(40)+abb115(56)
      abb115(40)=abb115(7)*abb115(40)
      abb115(56)=abb115(95)*abb115(65)
      abb115(32)=-spak1k7*abb115(32)
      abb115(32)=abb115(40)+abb115(32)+abb115(56)
      abb115(32)=abb115(32)*abb115(57)
      abb115(14)=abb115(7)*abb115(14)
      abb115(14)=abb115(32)+abb115(14)
      abb115(14)=abb115(8)*abb115(14)
      abb115(32)=abb115(7)*abb115(64)
      abb115(14)=abb115(32)+abb115(14)
      abb115(14)=abb115(14)*abb115(38)
      abb115(10)=-abb115(10)*abb115(29)
      abb115(17)=abb115(7)*abb115(17)
      abb115(10)=abb115(10)+abb115(17)
      abb115(10)=abb115(10)*abb115(39)
      abb115(10)=abb115(14)+abb115(10)
      abb115(10)=abb115(10)*abb115(42)
      abb115(14)=abb115(44)*abb115(7)
      abb115(17)=abb115(31)*spbk7k2
      abb115(24)=abb115(24)*abb115(7)
      abb115(17)=abb115(17)+abb115(24)
      abb115(24)=abb115(17)*abb115(39)
      abb115(29)=abb115(73)*abb115(7)
      abb115(24)=abb115(24)-abb115(29)
      abb115(24)=abb115(24)*abb115(59)
      abb115(29)=-abb115(7)*abb115(47)
      abb115(31)=-abb115(98)*abb115(48)
      abb115(30)=abb115(30)*spbk7k2
      abb115(31)=-abb115(30)+abb115(31)
      abb115(31)=abb115(31)*abb115(60)
      abb115(32)=abb115(48)*abb115(69)
      abb115(30)=es34*abb115(30)
      abb115(30)=abb115(30)+abb115(32)
      abb115(30)=abb115(30)*abb115(61)
      abb115(30)=abb115(31)+abb115(30)
      abb115(30)=abb115(30)*abb115(68)
      abb115(29)=abb115(29)+abb115(30)
      abb115(29)=abb115(29)*abb115(42)
      abb115(30)=abb115(7)*abb115(72)
      abb115(31)=abb115(52)*abb115(35)
      abb115(32)=spak2l5*abb115(97)
      abb115(32)=spbk7l6+abb115(32)
      abb115(32)=spbk3k2*abb115(32)
      abb115(30)=abb115(31)+abb115(30)+abb115(32)
      abb115(30)=abb115(30)*abb115(62)
      abb115(17)=-abb115(91)*spbk4k3*abb115(17)
      abb115(17)=abb115(30)+abb115(17)
      abb115(17)=abb115(17)*abb115(42)
      abb115(30)=abb115(23)*spbl6k1
      abb115(31)=abb115(19)*spbl5k1
      abb115(30)=abb115(30)+abb115(31)
      abb115(27)=abb115(60)*spbk3k2*abb115(27)*abb115(30)
      abb115(31)=-abb115(37)*abb115(36)
      abb115(27)=abb115(31)+abb115(27)
      abb115(27)=abb115(27)*abb115(101)
      abb115(18)=abb115(28)*abb115(18)
      abb115(23)=-abb115(23)*abb115(18)
      abb115(28)=abb115(37)*spbk3k2
      abb115(31)=abb115(5)*abb115(28)
      abb115(23)=abb115(31)+abb115(23)
      abb115(23)=abb115(23)*abb115(101)
      abb115(18)=-abb115(19)*abb115(18)
      abb115(19)=abb115(7)*abb115(28)
      abb115(18)=abb115(19)+abb115(18)
      abb115(18)=abb115(18)*abb115(101)
      abb115(19)=-abb115(107)+es12
      abb115(19)=spak2k4*abb115(19)
      abb115(19)=abb115(109)+abb115(19)
      abb115(19)=abb115(5)*abb115(19)
      abb115(19)=abb115(19)-abb115(51)
      abb115(19)=spbk3k2*abb115(19)
      abb115(28)=abb115(49)*abb115(52)
      abb115(31)=-abb115(5)*abb115(28)
      abb115(19)=abb115(19)+abb115(31)
      abb115(13)=abb115(71)*abb115(13)
      abb115(19)=abb115(19)*abb115(13)
      abb115(31)=-abb115(102)+es12
      abb115(31)=spak2k4*abb115(31)
      abb115(31)=abb115(105)+abb115(31)
      abb115(31)=abb115(7)*abb115(31)
      abb115(31)=abb115(31)-abb115(86)
      abb115(31)=spbk3k2*abb115(31)
      abb115(28)=-abb115(7)*abb115(28)
      abb115(28)=abb115(31)+abb115(28)
      abb115(13)=abb115(28)*abb115(13)
      abb115(28)=abb115(46)*spak3k4*abb115(93)
      abb115(30)=-abb115(30)*abb115(46)
      R2d115=0.0_ki
      rat2 = rat2 + R2d115
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='115' value='", &
          & R2d115, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd115h3
