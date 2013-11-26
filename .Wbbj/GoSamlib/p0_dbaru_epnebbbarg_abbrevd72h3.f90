module     p0_dbaru_epnebbbarg_abbrevd72h3
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(117), public :: abb72
   complex(ki), public :: R2d72
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
      abb72(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb72(2)=1.0_ki/(mB**2-es67-es56+es567)
      abb72(3)=NC**(-1)
      abb72(4)=spak2l5**(-1)
      abb72(5)=spak2l6**(-1)
      abb72(6)=spbl6k2**(-1)
      abb72(7)=sqrt(mB**2)
      abb72(8)=TR*gW
      abb72(8)=abb72(8)**2*i_*CVDU*abb72(2)*abb72(1)
      abb72(9)=c1*spbe7l5
      abb72(10)=abb72(8)*abb72(9)
      abb72(11)=abb72(10)*abb72(7)
      abb72(12)=2.0_ki*abb72(3)
      abb72(13)=abb72(12)-NC
      abb72(14)=-abb72(11)*abb72(13)
      abb72(15)=c2*abb72(3)**2
      abb72(16)=abb72(15)*spbe7l5
      abb72(17)=abb72(8)*abb72(7)
      abb72(18)=abb72(16)*abb72(17)
      abb72(14)=abb72(14)+abb72(18)
      abb72(19)=spbk7k2*spae7k7
      abb72(20)=spbl5k2*spal5e7
      abb72(19)=abb72(19)-abb72(20)
      abb72(20)=spak1k4**2
      abb72(21)=abb72(14)*abb72(19)*abb72(20)
      abb72(22)=abb72(12)*spak1k4
      abb72(23)=NC*spak1k4
      abb72(24)=abb72(22)-abb72(23)
      abb72(25)=abb72(8)*mB
      abb72(26)=abb72(25)*abb72(5)
      abb72(27)=abb72(26)*abb72(9)
      abb72(28)=-abb72(27)*abb72(24)
      abb72(26)=abb72(16)*abb72(26)
      abb72(29)=spak1k4*abb72(26)
      abb72(28)=abb72(28)+abb72(29)
      abb72(29)=-abb72(28)*abb72(19)
      abb72(30)=-spak1k2*abb72(29)
      abb72(31)=-spak4l6*abb72(30)
      abb72(21)=abb72(31)+abb72(21)
      abb72(21)=spbl6k1*abb72(21)
      abb72(31)=spak2e7*abb72(4)
      abb72(32)=abb72(31)*abb72(25)
      abb72(33)=abb72(15)*spak1k4
      abb72(34)=abb72(33)*abb72(32)
      abb72(35)=abb72(32)*c1
      abb72(36)=abb72(35)*abb72(23)
      abb72(22)=abb72(35)*abb72(22)
      abb72(22)=-abb72(22)+abb72(34)+abb72(36)
      abb72(34)=abb72(22)*spbk7e7
      abb72(36)=spak1l6*spbl6k2
      abb72(37)=abb72(36)*spbl6k1
      abb72(38)=abb72(34)*abb72(37)
      abb72(39)=abb72(5)*mB**2
      abb72(40)=abb72(8)*abb72(39)
      abb72(41)=abb72(40)*abb72(31)*c1
      abb72(42)=-abb72(24)*abb72(41)*abb72(7)
      abb72(43)=abb72(31)*abb72(7)
      abb72(40)=abb72(40)*abb72(43)
      abb72(44)=abb72(40)*abb72(33)
      abb72(42)=abb72(44)+abb72(42)
      abb72(44)=abb72(42)*es12
      abb72(45)=abb72(44)*spbk7e7
      abb72(38)=abb72(38)+abb72(45)
      abb72(46)=-spak4k7*abb72(38)
      abb72(9)=abb72(25)*abb72(9)
      abb72(47)=abb72(9)*abb72(31)
      abb72(48)=-abb72(47)*abb72(24)
      abb72(49)=abb72(16)*spak1k4
      abb72(50)=abb72(49)*abb72(32)
      abb72(48)=abb72(48)+abb72(50)
      abb72(50)=abb72(48)*abb72(37)
      abb72(39)=abb72(10)*abb72(43)*abb72(39)
      abb72(43)=-abb72(39)*abb72(24)
      abb72(49)=abb72(49)*abb72(40)
      abb72(43)=abb72(49)+abb72(43)
      abb72(49)=abb72(43)*es12
      abb72(50)=abb72(50)+abb72(49)
      abb72(51)=spak4l5*abb72(50)
      abb72(52)=abb72(5)**2
      abb72(53)=abb72(52)*mB**3
      abb72(10)=abb72(10)*abb72(53)
      abb72(54)=-abb72(10)*abb72(24)
      abb72(53)=abb72(8)*abb72(16)*abb72(53)
      abb72(55)=spak1k4*abb72(53)
      abb72(54)=abb72(54)+abb72(55)
      abb72(55)=es12*abb72(6)
      abb72(56)=abb72(54)*abb72(55)
      abb72(57)=abb72(19)*spak2k4
      abb72(58)=abb72(56)*abb72(57)
      abb72(59)=-abb72(11)*abb72(24)
      abb72(18)=abb72(18)*spak1k4
      abb72(18)=abb72(59)+abb72(18)
      abb72(59)=abb72(37)*abb72(18)
      abb72(60)=abb72(7)**2
      abb72(61)=abb72(60)*abb72(28)
      abb72(62)=abb72(61)*es12
      abb72(59)=abb72(59)+abb72(62)
      abb72(63)=-spak4e7*abb72(59)
      abb72(21)=abb72(63)+abb72(58)+abb72(51)+abb72(46)+abb72(21)
      abb72(21)=spbk4k3*abb72(21)
      abb72(46)=-spak1k2*abb72(19)*abb72(56)
      abb72(38)=-spak1k7*abb72(38)
      abb72(50)=spak1l5*abb72(50)
      abb72(51)=-spak1e7*abb72(59)
      abb72(58)=-spbl6k1*spak1l6*abb72(30)
      abb72(38)=abb72(51)+abb72(50)+abb72(38)+abb72(58)+abb72(46)
      abb72(38)=spbk3k1*abb72(38)
      abb72(8)=mB**4*abb72(52)*abb72(8)*abb72(31)
      abb72(31)=abb72(8)*abb72(7)
      abb72(24)=-abb72(24)*c1
      abb72(24)=abb72(24)+abb72(33)
      abb72(24)=abb72(31)*abb72(24)
      abb72(33)=abb72(24)*abb72(55)
      abb72(46)=abb72(42)*spbl6k1
      abb72(50)=spak1l6*abb72(46)
      abb72(50)=abb72(50)+abb72(33)
      abb72(50)=es12*abb72(50)
      abb72(51)=es234-es34
      abb72(52)=-es23+abb72(51)
      abb72(52)=abb72(33)*abb72(52)
      abb72(58)=abb72(46)*spak1k2
      abb72(59)=spbk4k2*spak4l6*abb72(58)
      abb72(50)=abb72(59)+abb72(50)+abb72(52)
      abb72(50)=spbe7k3*abb72(50)
      abb72(52)=spbk3k2*spak1k2
      abb72(46)=abb72(46)*abb72(52)
      abb72(59)=spak1l6*abb72(46)
      abb72(63)=abb72(52)*abb72(33)
      abb72(59)=abb72(59)+abb72(63)
      abb72(59)=spbe7k1*abb72(59)
      abb72(63)=spak2k4*spbk3k2*abb72(33)
      abb72(64)=-spak4l6*abb72(46)
      abb72(63)=abb72(63)+abb72(64)
      abb72(63)=spbe7k4*abb72(63)
      abb72(21)=abb72(63)+abb72(59)+abb72(21)+abb72(50)+abb72(38)
      abb72(21)=4.0_ki*abb72(21)
      abb72(38)=-abb72(7)*abb72(13)
      abb72(41)=-abb72(41)*abb72(38)
      abb72(50)=abb72(40)*abb72(15)
      abb72(41)=abb72(41)-abb72(50)
      abb72(50)=abb72(41)*abb72(52)
      abb72(59)=abb72(50)*spbe7l6
      abb72(63)=abb72(41)*spak1k2
      abb72(64)=abb72(63)*spbl6k2
      abb72(65)=abb72(64)*spbe7k3
      abb72(59)=abb72(59)-abb72(65)
      abb72(65)=abb72(27)*NC
      abb72(27)=abb72(27)*abb72(12)
      abb72(26)=-abb72(27)+abb72(26)+abb72(65)
      abb72(27)=abb72(26)*spak1k2
      abb72(65)=abb72(19)*abb72(27)
      abb72(66)=-spbl6k3*abb72(65)
      abb72(66)=abb72(66)+abb72(59)
      abb72(66)=spak4l6*abb72(66)
      abb72(67)=-abb72(60)*abb72(26)
      abb72(68)=abb72(67)*abb72(52)
      abb72(69)=abb72(36)*spbl6k3
      abb72(70)=abb72(69)*abb72(14)
      abb72(70)=abb72(70)+abb72(68)
      abb72(71)=abb72(70)*spak4e7
      abb72(47)=-abb72(47)*abb72(13)
      abb72(72)=abb72(16)*abb72(32)
      abb72(47)=abb72(47)+abb72(72)
      abb72(72)=abb72(69)*abb72(47)
      abb72(39)=-abb72(39)*abb72(13)
      abb72(40)=abb72(40)*abb72(16)
      abb72(39)=abb72(40)+abb72(39)
      abb72(40)=abb72(39)*abb72(52)
      abb72(72)=abb72(72)-abb72(40)
      abb72(73)=abb72(72)*spak4l5
      abb72(32)=abb72(32)*abb72(15)
      abb72(74)=abb72(35)*NC
      abb72(12)=abb72(35)*abb72(12)
      abb72(12)=-abb72(12)+abb72(32)+abb72(74)
      abb72(32)=abb72(12)*spbk7e7
      abb72(35)=abb72(69)*abb72(32)
      abb72(69)=abb72(50)*spbk7e7
      abb72(35)=abb72(35)+abb72(69)
      abb72(74)=abb72(35)*spak4k7
      abb72(10)=-abb72(10)*abb72(13)
      abb72(10)=abb72(10)+abb72(53)
      abb72(13)=abb72(10)*abb72(52)
      abb72(53)=-abb72(6)*abb72(13)*abb72(57)
      abb72(57)=abb72(18)*spbl6k3
      abb72(75)=-abb72(57)*abb72(19)
      abb72(53)=abb72(53)-abb72(75)-abb72(71)+abb72(73)-abb72(74)+abb72(66)
      abb72(66)=8.0_ki*abb72(53)
      abb72(71)=abb72(6)*spak3k4
      abb72(13)=abb72(71)*abb72(13)
      abb72(13)=abb72(13)-abb72(56)
      abb72(56)=spbk7k3*spae7k7
      abb72(73)=spbl5k3*spal5e7
      abb72(56)=abb72(56)-abb72(73)
      abb72(13)=-abb72(13)*abb72(56)
      abb72(73)=spbk7k1*spae7k7
      abb72(74)=spbl5k1*spal5e7
      abb72(73)=abb72(73)-abb72(74)
      abb72(54)=abb72(54)*abb72(73)
      abb72(24)=-spbe7k1*abb72(24)
      abb72(24)=abb72(24)+abb72(54)
      abb72(24)=abb72(52)*abb72(6)*abb72(24)
      abb72(15)=abb72(31)*abb72(15)
      abb72(8)=abb72(38)*abb72(8)*c1
      abb72(8)=abb72(15)+abb72(8)
      abb72(15)=abb72(8)*abb72(52)*abb72(71)
      abb72(15)=abb72(15)-abb72(33)
      abb72(15)=spbe7k3*abb72(15)
      abb72(13)=abb72(15)+abb72(24)+abb72(13)
      abb72(13)=8.0_ki*abb72(13)
      abb72(15)=spak1k7*abb72(34)
      abb72(24)=-spak1l5*abb72(48)
      abb72(31)=spak1e7*abb72(18)
      abb72(15)=abb72(31)+abb72(24)+abb72(15)
      abb72(15)=spbl6k2*abb72(15)
      abb72(15)=abb72(30)+abb72(15)
      abb72(15)=spbk3k1*abb72(15)
      abb72(24)=spak4k7*abb72(34)
      abb72(30)=-spak4l5*abb72(48)
      abb72(31)=spak4e7*abb72(18)
      abb72(24)=abb72(31)+abb72(24)+abb72(30)
      abb72(24)=spbl6k2*abb72(24)
      abb72(30)=spak2k4*abb72(29)
      abb72(24)=abb72(30)+abb72(24)
      abb72(24)=spbk4k3*abb72(24)
      abb72(15)=abb72(24)+abb72(15)+abb72(53)
      abb72(15)=8.0_ki*abb72(15)
      abb72(24)=abb72(42)*spbe7k3
      abb72(30)=abb72(28)*spal5e7
      abb72(31)=abb72(30)*spbl5k3
      abb72(28)=abb72(28)*spae7k7
      abb72(33)=abb72(28)*spbk7k3
      abb72(24)=-abb72(33)+abb72(24)+abb72(31)
      abb72(31)=16.0_ki*abb72(24)
      abb72(33)=-4.0_ki*abb72(53)
      abb72(38)=abb72(18)*spbl6k1
      abb72(53)=spak3k4*spbl6k3
      abb72(54)=abb72(53)*abb72(14)
      abb72(74)=abb72(38)+abb72(54)
      abb72(75)=spak1l6*spbk3k2
      abb72(76)=abb72(75)*abb72(74)
      abb72(77)=abb72(57)*spbk2k1
      abb72(78)=spak1l6*abb72(77)
      abb72(76)=abb72(78)+abb72(76)
      abb72(76)=4.0_ki*abb72(76)
      abb72(78)=8.0_ki*spbk3k2
      abb72(79)=-abb72(18)*abb72(78)
      abb72(50)=abb72(53)*abb72(50)
      abb72(44)=-spbl6k3*abb72(44)
      abb72(44)=abb72(44)+abb72(50)-abb72(46)
      abb72(44)=4.0_ki*abb72(44)
      abb72(46)=spak3k4*abb72(68)
      abb72(46)=abb72(46)-abb72(62)
      abb72(46)=4.0_ki*abb72(46)
      abb72(50)=spak1l6*spak3k4*spbl6k3**2
      abb72(62)=abb72(14)*abb72(50)
      abb72(68)=spbk3k1*spak1k2*abb72(61)
      abb72(62)=abb72(62)+2.0_ki*abb72(68)
      abb72(62)=4.0_ki*abb72(62)
      abb72(68)=-8.0_ki*abb72(57)
      abb72(71)=abb72(71)*spbk3k2**2
      abb72(71)=4.0_ki*abb72(71)
      abb72(8)=spak1k2*abb72(8)*abb72(71)
      abb72(80)=abb72(42)*abb72(78)
      abb72(81)=4.0_ki*abb72(52)
      abb72(61)=-abb72(61)*abb72(81)
      abb72(12)=-abb72(60)*abb72(12)
      abb72(82)=abb72(53)*spbk3k2
      abb72(83)=abb72(12)*abb72(82)
      abb72(22)=-abb72(60)*abb72(22)
      abb72(60)=abb72(22)*spbl6k1
      abb72(84)=spbk3k2*abb72(60)
      abb72(22)=abb72(22)*spbl6k3
      abb72(85)=spbk2k1*abb72(22)
      abb72(83)=abb72(85)+abb72(83)+abb72(84)
      abb72(83)=4.0_ki*abb72(83)
      abb72(82)=abb72(82)*spak1l6
      abb72(84)=abb72(32)*abb72(82)
      abb72(75)=abb72(75)*spbl6k1
      abb72(85)=abb72(34)*abb72(75)
      abb72(86)=abb72(34)*spbk2k1
      abb72(87)=spak1l6*spbl6k3
      abb72(88)=abb72(86)*abb72(87)
      abb72(84)=abb72(88)+abb72(84)+abb72(85)
      abb72(84)=4.0_ki*abb72(84)
      abb72(85)=-abb72(34)*abb72(78)
      abb72(69)=spak3k4*abb72(69)
      abb72(45)=abb72(69)-abb72(45)
      abb72(45)=4.0_ki*abb72(45)
      abb72(69)=4.0_ki*abb72(32)
      abb72(88)=abb72(50)*abb72(69)
      abb72(89)=8.0_ki*spbl6k3
      abb72(90)=-abb72(34)*abb72(89)
      abb72(91)=-abb72(81)*abb72(42)*spbk7e7
      abb72(92)=abb72(26)*spae7k7
      abb72(93)=abb72(53)*abb72(52)
      abb72(94)=abb72(92)*abb72(93)
      abb72(95)=es12*spbl6k3
      abb72(52)=abb72(52)*spbl6k1
      abb72(52)=abb72(95)+abb72(52)
      abb72(95)=abb72(28)*abb72(52)
      abb72(94)=abb72(94)+abb72(95)
      abb72(94)=4.0_ki*abb72(94)
      abb72(95)=abb72(26)*spal5e7
      abb72(93)=-abb72(95)*abb72(93)
      abb72(52)=-abb72(30)*abb72(52)
      abb72(52)=abb72(93)+abb72(52)
      abb72(52)=4.0_ki*abb72(52)
      abb72(93)=abb72(42)*spbe7k1
      abb72(96)=abb72(30)*spbl5k1
      abb72(97)=abb72(28)*spbk7k1
      abb72(93)=-abb72(97)+abb72(93)+abb72(96)
      abb72(96)=spbl6k3*spak1k2*abb72(93)
      abb72(97)=abb72(53)*abb72(63)
      abb72(58)=abb72(97)-abb72(58)
      abb72(58)=spbe7k3*abb72(58)
      abb72(97)=abb72(27)*spae7k7
      abb72(98)=abb72(53)*abb72(97)
      abb72(99)=spbl6k1*spak1k2
      abb72(100)=abb72(28)*abb72(99)
      abb72(98)=abb72(98)+abb72(100)
      abb72(98)=spbk7k3*abb72(98)
      abb72(27)=abb72(27)*spal5e7
      abb72(100)=-abb72(53)*abb72(27)
      abb72(99)=-abb72(30)*abb72(99)
      abb72(99)=abb72(100)+abb72(99)
      abb72(99)=spbl5k3*abb72(99)
      abb72(58)=abb72(99)+abb72(58)+abb72(98)+abb72(96)
      abb72(58)=4.0_ki*abb72(58)
      abb72(82)=-abb72(47)*abb72(82)
      abb72(75)=-abb72(48)*abb72(75)
      abb72(96)=abb72(48)*spbk2k1
      abb72(98)=-abb72(96)*abb72(87)
      abb72(75)=abb72(98)+abb72(82)+abb72(75)
      abb72(75)=4.0_ki*abb72(75)
      abb72(82)=abb72(48)*abb72(78)
      abb72(40)=spak3k4*abb72(40)
      abb72(40)=abb72(40)+abb72(49)
      abb72(40)=4.0_ki*abb72(40)
      abb72(49)=4.0_ki*abb72(47)
      abb72(50)=-abb72(50)*abb72(49)
      abb72(89)=abb72(48)*abb72(89)
      abb72(43)=abb72(43)*abb72(81)
      abb72(81)=abb72(32)*spak4k7
      abb72(98)=abb72(14)*spak4e7
      abb72(99)=abb72(47)*spak4l5
      abb72(81)=-abb72(98)+abb72(99)-abb72(81)
      abb72(98)=abb72(36)*abb72(81)
      abb72(9)=abb72(11)-abb72(9)
      abb72(11)=-abb72(3)*abb72(9)
      abb72(17)=abb72(25)-abb72(17)
      abb72(16)=abb72(17)*abb72(16)
      abb72(11)=-abb72(16)+2.0_ki*abb72(11)
      abb72(16)=-spak1k4*abb72(11)
      abb72(17)=abb72(9)*abb72(23)
      abb72(16)=abb72(16)-abb72(17)
      abb72(16)=-abb72(16)*abb72(19)
      abb72(17)=abb72(19)*abb72(26)
      abb72(23)=abb72(17)*spak2k4
      abb72(25)=spak1l6*abb72(23)
      abb72(16)=abb72(25)+abb72(98)+abb72(16)
      abb72(16)=spbl6k4*abb72(16)
      abb72(25)=abb72(39)*spak1k2
      abb72(26)=abb72(25)*spak4l5
      abb72(98)=abb72(63)*spbk7e7
      abb72(99)=abb72(98)*spak4k7
      abb72(26)=abb72(26)+abb72(99)
      abb72(99)=abb72(67)*spak1k2
      abb72(100)=-spak4e7*abb72(99)
      abb72(101)=abb72(63)*spbe7l6
      abb72(102)=spak4l6*abb72(101)
      abb72(100)=abb72(102)+abb72(100)-abb72(26)
      abb72(100)=spbk4k2*abb72(100)
      abb72(102)=spbl6k1*abb72(65)
      abb72(103)=abb72(41)*es12
      abb72(104)=spbe7l6*abb72(103)
      abb72(102)=abb72(104)+abb72(102)
      abb72(102)=spak1l6*abb72(102)
      abb72(104)=abb72(32)*abb72(37)
      abb72(103)=-spbk7e7*abb72(103)
      abb72(103)=abb72(104)+abb72(103)
      abb72(103)=spak1k7*abb72(103)
      abb72(104)=-abb72(47)*abb72(37)
      abb72(39)=-es12*abb72(39)
      abb72(39)=abb72(104)+abb72(39)
      abb72(39)=spak1l5*abb72(39)
      abb72(67)=-es12*abb72(67)
      abb72(37)=abb72(14)*abb72(37)
      abb72(37)=abb72(37)+abb72(67)
      abb72(37)=spak1e7*abb72(37)
      abb72(9)=abb72(9)*NC
      abb72(9)=abb72(9)+abb72(11)
      abb72(9)=spak1k3*abb72(9)*abb72(19)*spbl6k3
      abb72(11)=-spak3e7*abb72(70)
      abb72(35)=-spak3k7*abb72(35)
      abb72(67)=spak3l5*abb72(72)
      abb72(70)=abb72(17)*spak2k3
      abb72(72)=abb72(87)*abb72(70)
      abb72(59)=spak3l6*abb72(59)
      abb72(10)=abb72(10)*spak1k2
      abb72(19)=-abb72(10)*abb72(19)
      abb72(87)=abb72(19)*abb72(6)
      abb72(51)=-abb72(87)*abb72(51)
      abb72(19)=-abb72(19)*abb72(55)
      abb72(55)=spbe7k1*abb72(36)*abb72(63)
      abb72(63)=-spbe7k4*abb72(64)*spak4l6
      abb72(9)=abb72(59)+abb72(63)+abb72(72)+abb72(67)+abb72(35)+abb72(11)+abb7&
      &2(9)+abb72(100)+abb72(37)+abb72(55)+abb72(39)+abb72(103)+abb72(16)+abb72&
      &(19)+abb72(51)+abb72(102)
      abb72(9)=4.0_ki*abb72(9)
      abb72(11)=8.0_ki*abb72(87)
      abb72(16)=abb72(32)*spak1k7
      abb72(19)=abb72(47)*spak1l5
      abb72(35)=abb72(14)*spak1e7
      abb72(16)=-abb72(35)+abb72(19)-abb72(16)
      abb72(19)=spbl6k2*abb72(16)
      abb72(19)=abb72(19)-abb72(65)
      abb72(19)=8.0_ki*abb72(19)
      abb72(35)=4.0_ki*abb72(36)
      abb72(35)=-abb72(14)*abb72(35)
      abb72(37)=-4.0_ki*abb72(64)
      abb72(39)=4.0_ki*abb72(99)
      abb72(51)=4.0_ki*spbl6k2
      abb72(55)=-abb72(12)*abb72(51)
      abb72(59)=-16.0_ki*abb72(41)
      abb72(63)=-abb72(36)*abb72(69)
      abb72(64)=4.0_ki*abb72(98)
      abb72(65)=-abb72(51)*abb72(97)
      abb72(67)=abb72(51)*abb72(27)
      abb72(72)=-spbk7l6*abb72(97)
      abb72(27)=-spbl6l5*abb72(27)
      abb72(27)=abb72(27)-abb72(101)+abb72(72)
      abb72(27)=4.0_ki*abb72(27)
      abb72(36)=abb72(36)*abb72(49)
      abb72(72)=4.0_ki*abb72(25)
      abb72(87)=-spak1k7*abb72(98)
      abb72(25)=-spak1l5*abb72(25)
      abb72(25)=abb72(87)+abb72(25)
      abb72(87)=8.0_ki*spbk3k1
      abb72(25)=abb72(25)*abb72(87)
      abb72(10)=abb72(71)*abb72(10)
      abb72(71)=-spae7k7*abb72(10)
      abb72(97)=-abb72(28)*abb72(78)
      abb72(10)=spal5e7*abb72(10)
      abb72(78)=abb72(30)*abb72(78)
      abb72(98)=4.0_ki*abb72(29)
      abb72(29)=8.0_ki*abb72(29)
      abb72(99)=spak3k4*spbk3k2
      abb72(100)=abb72(99)*abb72(41)
      abb72(101)=abb72(42)*spbk2k1
      abb72(100)=abb72(100)-abb72(101)
      abb72(100)=4.0_ki*abb72(100)
      abb72(17)=4.0_ki*abb72(17)
      abb72(101)=spak1k3*abb72(17)
      abb72(17)=spbk4k3*abb72(20)*abb72(17)
      abb72(20)=4.0_ki*spbk3k2
      abb72(42)=-abb72(42)*abb72(20)
      abb72(102)=abb72(74)*spbk3k2
      abb72(77)=abb72(102)+abb72(77)
      abb72(77)=4.0_ki*abb72(77)
      abb72(102)=spae7k7*abb72(77)
      abb72(51)=abb72(14)*abb72(51)
      abb72(103)=-spae7k7*abb72(51)
      abb72(104)=-16.0_ki*abb72(92)
      abb72(105)=abb72(92)*abb72(99)
      abb72(106)=abb72(28)*spbk2k1
      abb72(105)=abb72(106)+abb72(105)
      abb72(105)=4.0_ki*abb72(105)
      abb72(28)=abb72(28)*abb72(20)
      abb72(106)=spak1k7*abb72(86)
      abb72(107)=-spak1l5*abb72(96)
      abb72(108)=abb72(18)*spbk2k1
      abb72(109)=spak1e7*abb72(108)
      abb72(106)=abb72(109)+abb72(107)+abb72(106)
      abb72(106)=spbk3k1*abb72(106)
      abb72(107)=spak4k7*abb72(86)
      abb72(109)=-spak4l5*abb72(96)
      abb72(110)=spak4e7*abb72(108)
      abb72(107)=abb72(110)+abb72(107)+abb72(109)
      abb72(107)=spbk4k3*abb72(107)
      abb72(106)=abb72(107)+abb72(106)
      abb72(106)=4.0_ki*abb72(106)
      abb72(107)=-spbk3k2*abb72(81)
      abb72(109)=8.0_ki*abb72(107)
      abb72(107)=4.0_ki*abb72(107)
      abb72(110)=abb72(14)*abb72(99)
      abb72(108)=abb72(110)+abb72(108)
      abb72(108)=4.0_ki*abb72(108)
      abb72(110)=-abb72(18)*abb72(87)
      abb72(18)=abb72(18)*abb72(20)
      abb72(111)=abb72(99)*abb72(32)
      abb72(86)=abb72(111)+abb72(86)
      abb72(86)=4.0_ki*abb72(86)
      abb72(111)=-abb72(34)*abb72(87)
      abb72(112)=abb72(34)*abb72(20)
      abb72(113)=abb72(99)*abb72(47)
      abb72(96)=abb72(113)+abb72(96)
      abb72(96)=4.0_ki*abb72(96)
      abb72(87)=abb72(48)*abb72(87)
      abb72(113)=-abb72(48)*abb72(20)
      abb72(114)=abb72(32)*spak3k7
      abb72(115)=abb72(47)*spak3l5
      abb72(116)=abb72(14)*spak3e7
      abb72(114)=-abb72(116)+abb72(115)-abb72(114)
      abb72(115)=spbk3k2*abb72(114)
      abb72(16)=spbk2k1*abb72(16)
      abb72(116)=spbk4k2*abb72(81)
      abb72(16)=abb72(116)+abb72(16)+abb72(115)
      abb72(16)=4.0_ki*abb72(16)
      abb72(77)=-spal5e7*abb72(77)
      abb72(51)=spal5e7*abb72(51)
      abb72(115)=16.0_ki*abb72(95)
      abb72(99)=abb72(95)*abb72(99)
      abb72(116)=abb72(30)*spbk2k1
      abb72(99)=abb72(116)+abb72(99)
      abb72(99)=4.0_ki*abb72(99)
      abb72(20)=-abb72(30)*abb72(20)
      abb72(30)=-spbl6k2*abb72(81)
      abb72(23)=abb72(30)-abb72(23)
      abb72(30)=4.0_ki*abb72(23)
      abb72(23)=8.0_ki*abb72(23)
      abb72(81)=abb72(95)*spbl5k3
      abb72(116)=abb72(92)*spbk7k3
      abb72(117)=abb72(41)*spbe7k3
      abb72(81)=abb72(116)+abb72(117)-abb72(81)
      abb72(81)=abb72(81)*spak3k4
      abb72(81)=abb72(81)+abb72(93)
      abb72(93)=-8.0_ki*abb72(81)
      abb72(38)=-abb72(54)+abb72(38)
      abb72(38)=4.0_ki*abb72(38)
      abb72(32)=-abb72(32)*abb72(53)
      abb72(34)=spbl6k1*abb72(34)
      abb72(32)=abb72(32)+abb72(34)
      abb72(32)=4.0_ki*abb72(32)
      abb72(34)=abb72(47)*abb72(53)
      abb72(47)=-spbl6k1*abb72(48)
      abb72(34)=abb72(34)+abb72(47)
      abb72(34)=4.0_ki*abb72(34)
      abb72(47)=-spbl6k2*abb72(114)
      abb72(47)=-abb72(70)+abb72(47)
      abb72(47)=4.0_ki*abb72(47)
      abb72(48)=abb72(12)*abb72(53)
      abb72(48)=abb72(48)+abb72(60)
      abb72(48)=spbe7k3*abb72(48)
      abb72(53)=abb72(74)*abb72(56)
      abb72(26)=spbk3k1*abb72(26)
      abb72(22)=-spbe7k1*abb72(22)
      abb72(54)=-abb72(57)*abb72(73)
      abb72(22)=abb72(22)+2.0_ki*abb72(26)+abb72(48)+abb72(54)+abb72(53)
      abb72(22)=4.0_ki*abb72(22)
      abb72(12)=-spbe7l6*abb72(12)
      abb72(26)=-spbk7l6*spae7k7
      abb72(48)=-spbl6l5*spal5e7
      abb72(26)=abb72(48)+abb72(26)
      abb72(26)=abb72(14)*abb72(26)
      abb72(12)=abb72(12)+abb72(26)
      abb72(12)=4.0_ki*abb72(12)
      abb72(14)=4.0_ki*abb72(14)
      abb72(26)=8.0_ki*abb72(41)
      abb72(41)=8.0_ki*abb72(92)
      abb72(48)=-8.0_ki*abb72(95)
      abb72(53)=4.0_ki*abb72(81)
      abb72(24)=-4.0_ki*abb72(24)
      R2d72=0.0_ki
      rat2 = rat2 + R2d72
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='72' value='", &
          & R2d72, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd72h3
