module     p0_dbaru_epnebbbarg_abbrevd85h2
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(98), public :: abb85
   complex(ki), public :: R2d85
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
      abb85(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb85(2)=sqrt2**(-1)
      abb85(3)=es56**(-1)
      abb85(4)=spak2k7**(-1)
      abb85(5)=spbl5k2**(-1)
      abb85(6)=spak2l6**(-1)
      abb85(7)=spak1l5*spbl6k3
      abb85(8)=abb85(7)*spbk7k1
      abb85(9)=abb85(8)*spak3k4
      abb85(10)=spak1l5*spbl6k2
      abb85(11)=abb85(10)*spak2k4
      abb85(12)=abb85(11)*spbk7k1
      abb85(9)=abb85(9)-abb85(12)
      abb85(12)=abb85(9)*spbk3k2
      abb85(13)=spbk3k2**2
      abb85(14)=mB**2*abb85(5)*abb85(6)
      abb85(15)=abb85(14)*spak3k4
      abb85(16)=abb85(13)*abb85(15)
      abb85(17)=abb85(16)*spak1k2
      abb85(18)=abb85(17)*spbk7k1
      abb85(12)=abb85(12)+abb85(18)
      abb85(18)=abb85(1)*abb85(2)*abb85(3)*CVDU*c2*i_
      abb85(19)=gW*TR
      abb85(19)=abb85(19)**2
      abb85(20)=abb85(18)*abb85(19)*abb85(4)
      abb85(21)=8.0_ki*abb85(20)
      abb85(22)=abb85(21)*spak1k2
      abb85(23)=es12-es712
      abb85(24)=abb85(23)+es71
      abb85(25)=abb85(22)*abb85(24)*abb85(12)
      abb85(26)=16.0_ki*abb85(20)
      abb85(27)=abb85(26)*spak1k2
      abb85(12)=abb85(12)*abb85(27)
      abb85(28)=spbk7k2*spak2k4
      abb85(29)=abb85(28)*abb85(14)
      abb85(30)=spbk7l6*spak4l5
      abb85(31)=abb85(29)+abb85(30)
      abb85(32)=spak1k2*spbk3k2
      abb85(33)=abb85(26)*abb85(32)
      abb85(34)=abb85(33)*abb85(31)*abb85(24)
      abb85(31)=abb85(31)*abb85(32)
      abb85(35)=abb85(31)*abb85(20)
      abb85(35)=32.0_ki*abb85(35)
      abb85(36)=2.0_ki*abb85(30)
      abb85(37)=abb85(36)*abb85(24)
      abb85(38)=2.0_ki*spak4k7
      abb85(39)=abb85(38)*spbk7k2
      abb85(40)=spbk7l6*spak2l5
      abb85(41)=abb85(39)*abb85(40)
      abb85(9)=-abb85(41)+abb85(9)+abb85(37)
      abb85(37)=3.0_ki*es71
      abb85(23)=2.0_ki*abb85(23)
      abb85(41)=abb85(23)+abb85(37)
      abb85(42)=abb85(15)*spbk7k3
      abb85(41)=abb85(41)*abb85(42)
      abb85(41)=abb85(41)+abb85(9)
      abb85(41)=spbk3k2*abb85(41)
      abb85(43)=abb85(30)*spbk4k3
      abb85(43)=abb85(43)-abb85(8)
      abb85(44)=spbk7k2*abb85(43)
      abb85(45)=abb85(14)*spak2k4
      abb85(46)=abb85(45)*spbk7k2**2*spbk4k3
      abb85(44)=abb85(44)+abb85(46)
      abb85(44)=spak4k7*abb85(44)
      abb85(46)=abb85(14)*spbk7k2
      abb85(38)=abb85(38)*abb85(46)
      abb85(47)=abb85(15)*spbk3k2
      abb85(48)=abb85(38)+abb85(47)
      abb85(48)=abb85(32)*abb85(48)*spbk7k1
      abb85(44)=-abb85(48)+2.0_ki*abb85(44)
      abb85(41)=abb85(41)-abb85(44)
      abb85(41)=spak1k2*abb85(41)
      abb85(48)=spbk7k3*spak3k4
      abb85(49)=abb85(48)*abb85(7)
      abb85(50)=abb85(11)*spbk7k3
      abb85(49)=abb85(49)-abb85(50)
      abb85(51)=es71*abb85(49)
      abb85(41)=abb85(41)+abb85(51)
      abb85(41)=abb85(41)*abb85(21)
      abb85(51)=abb85(36)+abb85(42)
      abb85(51)=abb85(51)*abb85(32)
      abb85(51)=abb85(51)-abb85(49)
      abb85(51)=abb85(51)*abb85(26)
      abb85(52)=spbk7k3*spak1k7
      abb85(53)=abb85(52)*abb85(29)
      abb85(54)=abb85(52)*abb85(30)
      abb85(53)=abb85(53)+abb85(54)
      abb85(53)=-abb85(31)+2.0_ki*abb85(53)
      abb85(53)=abb85(53)*abb85(26)
      abb85(55)=spbk7k3**2
      abb85(56)=-spak1k7*abb85(55)*abb85(15)
      abb85(54)=-abb85(54)+abb85(56)
      abb85(38)=abb85(38)*spbk7k3
      abb85(56)=abb85(30)+abb85(42)
      abb85(56)=spbk3k2*abb85(56)
      abb85(56)=abb85(38)+abb85(56)
      abb85(56)=spak1k2*abb85(56)
      abb85(54)=2.0_ki*abb85(54)+abb85(56)
      abb85(54)=abb85(54)*abb85(26)
      abb85(42)=abb85(32)*abb85(42)
      abb85(42)=abb85(42)+abb85(49)
      abb85(42)=abb85(42)*abb85(26)
      abb85(23)=abb85(23)+es71
      abb85(23)=abb85(23)*abb85(29)
      abb85(9)=abb85(23)+abb85(9)
      abb85(9)=spbk3k2*abb85(9)
      abb85(9)=abb85(9)-abb85(44)
      abb85(9)=spak1k2*abb85(9)
      abb85(23)=spbk4k3*abb85(14)*abb85(28)**2
      abb85(44)=spbk3k2*spbk7l6
      abb85(56)=abb85(44)*spak2l5
      abb85(57)=-abb85(28)*abb85(56)
      abb85(57)=abb85(57)-abb85(23)
      abb85(58)=2.0_ki*spak1k7
      abb85(57)=abb85(58)*abb85(57)
      abb85(59)=-es71*abb85(7)
      abb85(60)=abb85(30)*spak1k7
      abb85(61)=2.0_ki*abb85(60)
      abb85(62)=-spbk4k3*abb85(61)
      abb85(59)=abb85(59)+abb85(62)
      abb85(59)=abb85(59)*abb85(28)
      abb85(9)=abb85(9)+abb85(59)+abb85(57)
      abb85(57)=4.0_ki*abb85(20)
      abb85(9)=abb85(9)*abb85(57)
      abb85(59)=abb85(7)*abb85(28)
      abb85(62)=abb85(36)+3.0_ki*abb85(29)
      abb85(62)=abb85(62)*abb85(32)
      abb85(62)=abb85(59)+abb85(62)
      abb85(62)=abb85(62)*abb85(21)
      abb85(31)=abb85(31)*abb85(21)
      abb85(63)=abb85(36)+abb85(29)
      abb85(63)=spbk3k2*abb85(63)
      abb85(38)=abb85(38)+abb85(63)
      abb85(38)=spak1k2*abb85(38)
      abb85(36)=-abb85(52)*abb85(36)
      abb85(36)=abb85(38)+abb85(36)-abb85(49)
      abb85(36)=abb85(36)*abb85(21)
      abb85(38)=-abb85(32)*abb85(29)
      abb85(38)=-abb85(59)+abb85(38)
      abb85(38)=abb85(38)*abb85(21)
      abb85(49)=abb85(30)+2.0_ki*abb85(29)
      abb85(49)=abb85(49)*abb85(32)
      abb85(49)=abb85(59)+abb85(49)
      abb85(49)=abb85(49)*abb85(57)
      abb85(59)=abb85(32)*abb85(14)
      abb85(63)=abb85(59)*spbk7k1
      abb85(64)=abb85(48)+abb85(28)
      abb85(64)=abb85(64)*abb85(63)
      abb85(43)=abb85(43)+abb85(56)
      abb85(56)=-abb85(28)*abb85(43)
      abb85(8)=abb85(48)*abb85(8)
      abb85(50)=-spbk7k1*abb85(50)
      abb85(8)=abb85(64)-abb85(23)+abb85(8)+abb85(50)+abb85(56)
      abb85(8)=abb85(8)*abb85(22)
      abb85(23)=abb85(29)*spbk7k3
      abb85(50)=abb85(30)*spbk7k3
      abb85(23)=abb85(23)+abb85(50)
      abb85(56)=abb85(23)*abb85(27)
      abb85(55)=abb85(55)*spak3k4
      abb85(64)=spbk7k3*abb85(28)
      abb85(64)=abb85(55)+abb85(64)
      abb85(64)=abb85(64)*abb85(14)
      abb85(50)=abb85(50)+abb85(64)
      abb85(50)=abb85(50)*abb85(27)
      abb85(23)=abb85(23)*abb85(22)
      abb85(48)=abb85(48)-abb85(28)
      abb85(64)=-abb85(32)*abb85(21)*abb85(24)*abb85(48)
      abb85(65)=-abb85(48)*abb85(33)
      abb85(48)=abb85(48)*spbk3k2
      abb85(39)=abb85(39)*spbk7k3
      abb85(39)=abb85(39)+abb85(48)
      abb85(39)=abb85(39)*spak1k2
      abb85(66)=abb85(52)*abb85(28)
      abb85(67)=spak1k7*abb85(55)
      abb85(67)=abb85(67)-abb85(66)
      abb85(67)=2.0_ki*abb85(67)-abb85(39)
      abb85(67)=abb85(67)*abb85(21)
      abb85(39)=-2.0_ki*abb85(66)-abb85(39)
      abb85(39)=abb85(39)*abb85(57)
      abb85(55)=-abb85(22)*abb85(55)
      abb85(30)=abb85(30)*spbk4k2
      abb85(44)=abb85(44)*spak3l5
      abb85(30)=abb85(30)+abb85(44)
      abb85(66)=es34-es234
      abb85(68)=abb85(66)*abb85(46)
      abb85(69)=abb85(68)+abb85(30)
      abb85(70)=es71-es712
      abb85(71)=abb85(70)+es12
      abb85(69)=abb85(71)*abb85(69)
      abb85(71)=abb85(10)*spbk7k1
      abb85(72)=-abb85(24)*abb85(71)
      abb85(69)=abb85(72)+abb85(69)
      abb85(69)=abb85(69)*abb85(22)
      abb85(30)=-abb85(71)+abb85(30)
      abb85(71)=abb85(30)+abb85(68)
      abb85(72)=abb85(71)*abb85(27)
      abb85(73)=2.0_ki*es712
      abb85(74)=2.0_ki*es12
      abb85(75)=-es71-abb85(74)+abb85(73)+abb85(66)
      abb85(75)=abb85(75)*abb85(46)
      abb85(30)=abb85(75)+abb85(30)
      abb85(30)=spak1k2*abb85(30)
      abb85(75)=spak4l5*spbk7k4
      abb85(76)=-spak1k7*abb85(75)
      abb85(77)=-spak3l5*abb85(52)
      abb85(76)=abb85(76)+abb85(77)
      abb85(77)=-spak1l5*es71
      abb85(76)=2.0_ki*abb85(76)+abb85(77)
      abb85(76)=spbk7l6*abb85(76)
      abb85(40)=abb85(40)*spbk7k2
      abb85(77)=abb85(58)*abb85(40)
      abb85(78)=-spak2k3*abb85(52)
      abb85(79)=spak2k4*spbk7k4
      abb85(80)=-spak1k7*abb85(79)
      abb85(78)=abb85(78)+abb85(80)
      abb85(78)=abb85(78)*abb85(46)
      abb85(30)=abb85(30)+2.0_ki*abb85(78)+abb85(76)+abb85(77)
      abb85(30)=abb85(30)*abb85(21)
      abb85(76)=spbk7l6*spak1l5
      abb85(77)=abb85(46)*spak1k2
      abb85(78)=abb85(76)-3.0_ki*abb85(77)
      abb85(78)=abb85(78)*abb85(26)
      abb85(80)=-abb85(46)*abb85(27)
      abb85(81)=abb85(76)-abb85(77)
      abb85(82)=-abb85(81)*abb85(26)
      abb85(83)=abb85(20)*spak1k2
      abb85(83)=4.0_ki*abb85(83)
      abb85(71)=abb85(71)*abb85(83)
      abb85(76)=abb85(76)-2.0_ki*abb85(77)
      abb85(76)=abb85(76)*abb85(21)
      abb85(84)=spbk7k3*spak3l5
      abb85(85)=-spak1l5*spbk7k1
      abb85(75)=abb85(85)+abb85(75)+abb85(84)
      abb85(75)=spbk7l6*abb85(75)
      abb85(84)=spbk7k3*spak2k3
      abb85(79)=abb85(84)+abb85(79)
      abb85(46)=abb85(79)*abb85(46)
      abb85(77)=spbk7k1*abb85(77)
      abb85(40)=abb85(77)+abb85(46)+abb85(75)-abb85(40)
      abb85(40)=abb85(40)*abb85(22)
      abb85(46)=abb85(22)*spbk7k2
      abb85(24)=abb85(24)*abb85(46)
      abb85(75)=spbk7k2*abb85(27)
      abb85(77)=spbk7k2*abb85(83)
      abb85(79)=abb85(29)*spbk4k3
      abb85(43)=abb85(43)+abb85(79)-abb85(63)
      abb85(63)=-abb85(43)*abb85(22)
      abb85(79)=abb85(14)*spbk7k3
      abb85(27)=abb85(79)*abb85(27)
      abb85(43)=-abb85(43)*abb85(83)
      abb85(84)=abb85(79)*abb85(22)
      abb85(22)=-spbk7k3*abb85(22)
      abb85(83)=-spbk7k3*abb85(83)
      abb85(85)=spbl6k2*spal5k7
      abb85(86)=abb85(85)*spak2k4
      abb85(87)=spbl6k3*spal5k7
      abb85(88)=abb85(87)*spak3k4
      abb85(86)=abb85(86)-abb85(88)
      abb85(88)=spbk7k2*abb85(86)
      abb85(37)=-abb85(73)+abb85(37)
      abb85(37)=abb85(37)*abb85(47)
      abb85(37)=-2.0_ki*abb85(88)+abb85(37)
      abb85(37)=abb85(37)*abb85(32)
      abb85(73)=abb85(7)*spak3k4
      abb85(11)=abb85(73)-abb85(11)
      abb85(73)=abb85(11)*spbk3k2
      abb85(88)=abb85(74)-es71
      abb85(89)=-abb85(88)*abb85(73)
      abb85(37)=abb85(89)+abb85(37)
      abb85(37)=abb85(37)*abb85(57)
      abb85(17)=abb85(73)+abb85(17)
      abb85(17)=abb85(17)*abb85(21)
      abb85(29)=abb85(29)*spak1k7
      abb85(29)=abb85(29)+abb85(60)
      abb85(29)=abb85(29)*spbk3k2
      abb85(73)=spak4l5*spbl6k2
      abb85(89)=abb85(73)*abb85(32)
      abb85(29)=abb85(29)-abb85(89)
      abb85(29)=abb85(29)*abb85(26)
      abb85(89)=spak1k4*spbk3k1
      abb85(90)=-abb85(10)*abb85(89)
      abb85(52)=-abb85(15)*abb85(52)
      abb85(52)=-abb85(60)+abb85(52)
      abb85(52)=spbk3k2*abb85(52)
      abb85(60)=abb85(73)+abb85(47)
      abb85(60)=abb85(60)*abb85(32)
      abb85(91)=abb85(85)*spbk7k3
      abb85(92)=spak1k4*abb85(91)
      abb85(52)=abb85(60)+abb85(52)+abb85(92)+abb85(90)
      abb85(52)=abb85(52)*abb85(26)
      abb85(60)=abb85(14)*spak1k4
      abb85(20)=abb85(60)*abb85(20)*spbk3k2
      abb85(20)=32.0_ki*abb85(20)
      abb85(90)=spak1k4*abb85(70)
      abb85(28)=-spak1k7*abb85(28)
      abb85(28)=abb85(28)+abb85(90)
      abb85(28)=abb85(28)*abb85(14)
      abb85(90)=spbl6k2*spak2l5
      abb85(92)=spak1k4*abb85(90)
      abb85(28)=abb85(92)-abb85(28)
      abb85(11)=-abb85(61)-abb85(11)-2.0_ki*abb85(28)
      abb85(11)=spbk3k2*abb85(11)
      abb85(28)=abb85(73)*spbk4k3
      abb85(92)=-spbk2k1*abb85(7)
      abb85(92)=-abb85(28)+abb85(92)
      abb85(92)=spak1k4*abb85(92)
      abb85(93)=spbl6k3*spak1k4
      abb85(94)=abb85(93)*spal5k7
      abb85(95)=spbk7k2*abb85(94)
      abb85(92)=abb85(95)+abb85(92)
      abb85(47)=2.0_ki*abb85(73)-abb85(47)
      abb85(32)=abb85(47)*abb85(32)
      abb85(11)=abb85(32)+2.0_ki*abb85(92)+abb85(11)
      abb85(11)=abb85(11)*abb85(57)
      abb85(32)=spak1k7*abb85(48)
      abb85(13)=-spak3k4*abb85(13)*spak1k2
      abb85(13)=abb85(32)+abb85(13)
      abb85(13)=abb85(13)*abb85(21)
      abb85(32)=abb85(26)*spbk3k2
      abb85(47)=spak1k4*abb85(32)
      abb85(48)=abb85(21)*spbk3k2
      abb85(92)=-spak1k4*abb85(48)
      abb85(95)=abb85(93)*abb85(26)
      abb85(93)=abb85(21)*abb85(93)
      abb85(73)=spbk4k2*abb85(73)
      abb85(96)=-spbk7k2*abb85(85)
      abb85(97)=spbk3k2*spak3l5
      abb85(98)=spbl6k2*abb85(97)
      abb85(73)=abb85(98)+abb85(73)+abb85(96)
      abb85(73)=spak1k2*abb85(73)
      abb85(44)=abb85(44)+abb85(68)
      abb85(44)=-abb85(58)*abb85(44)
      abb85(58)=abb85(88)*abb85(10)
      abb85(61)=-spbk4k2*abb85(61)
      abb85(44)=2.0_ki*abb85(73)+abb85(58)+abb85(61)+abb85(44)
      abb85(44)=abb85(44)*abb85(57)
      abb85(58)=abb85(10)*abb85(21)
      abb85(60)=spbk4k2*abb85(60)
      abb85(61)=abb85(14)*spbk3k2*spak1k3
      abb85(60)=abb85(61)+abb85(10)+abb85(60)
      abb85(60)=abb85(60)*abb85(26)
      abb85(57)=abb85(10)*abb85(57)
      abb85(61)=-abb85(81)*abb85(21)
      abb85(68)=-spbk7k2*spak1k7*abb85(21)
      abb85(73)=spak1k4*spbl6k4
      abb85(81)=spbl6k3*spak1k3
      abb85(88)=spbk7l6*spak1k7
      abb85(96)=-spak1k2*spbl6k2
      abb85(73)=abb85(96)+abb85(88)+abb85(73)+abb85(81)
      abb85(73)=abb85(73)*abb85(21)
      abb85(81)=es123-es23
      abb85(70)=-es12+abb85(70)+abb85(81)
      abb85(70)=abb85(70)*abb85(14)
      abb85(70)=-abb85(90)+abb85(70)
      abb85(70)=spbk3k2*abb85(70)
      abb85(10)=spbk3k1*abb85(10)
      abb85(88)=spbk7k2*abb85(87)
      abb85(10)=abb85(70)+abb85(88)+abb85(10)-abb85(28)-abb85(91)
      abb85(10)=spak1k2*abb85(10)
      abb85(28)=-abb85(74)+abb85(81)
      abb85(28)=abb85(28)*abb85(7)
      abb85(70)=spbk7k3*spak1k3*abb85(87)
      abb85(10)=abb85(10)+abb85(70)+abb85(28)
      abb85(10)=abb85(4)*abb85(10)
      abb85(28)=abb85(79)*spbk3k2
      abb85(70)=spak1k3*abb85(28)
      abb85(10)=abb85(70)+abb85(10)
      abb85(19)=8.0_ki*abb85(19)
      abb85(18)=abb85(19)*abb85(18)
      abb85(10)=abb85(10)*abb85(18)
      abb85(19)=abb85(59)+abb85(7)
      abb85(70)=abb85(19)*abb85(26)
      abb85(7)=-abb85(7)+abb85(59)
      abb85(7)=abb85(7)*abb85(26)
      abb85(59)=abb85(19)*abb85(21)
      abb85(74)=-spak1l5*spbl6k4
      abb85(79)=-spak1k2*spbk4k2*abb85(14)
      abb85(74)=abb85(74)+abb85(79)
      abb85(74)=abb85(74)*abb85(21)
      abb85(19)=abb85(89)*abb85(19)
      abb85(79)=-spbk7k3*abb85(94)
      abb85(19)=abb85(79)+abb85(19)
      abb85(19)=abb85(4)*abb85(19)
      abb85(28)=-spak1k4*abb85(28)
      abb85(19)=abb85(28)+abb85(19)
      abb85(19)=abb85(19)*abb85(18)
      abb85(28)=abb85(4)*spbk3k2*abb85(86)
      abb85(16)=-abb85(16)+abb85(28)
      abb85(16)=abb85(16)*abb85(18)
      abb85(18)=abb85(21)*abb85(85)
      abb85(28)=abb85(32)*spak4l5
      abb85(79)=-spak4l5*abb85(48)
      abb85(81)=-spak4l5*spbk4k2
      abb85(81)=abb85(81)-abb85(97)
      abb85(81)=abb85(81)*abb85(21)
      abb85(15)=-abb85(15)*abb85(32)
      abb85(85)=spak3k4*abb85(48)
      abb85(32)=abb85(45)*abb85(32)
      abb85(45)=-abb85(48)*abb85(45)
      abb85(48)=-spak2k4*abb85(48)
      abb85(66)=es12-abb85(66)
      abb85(66)=abb85(66)*abb85(14)
      abb85(86)=-spak1l5*spbl6k1
      abb85(66)=abb85(86)+abb85(66)
      abb85(66)=abb85(66)*abb85(21)
      abb85(14)=-abb85(14)*abb85(26)
      R2d85=0.0_ki
      rat2 = rat2 + R2d85
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='85' value='", &
          & R2d85, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd85h2
