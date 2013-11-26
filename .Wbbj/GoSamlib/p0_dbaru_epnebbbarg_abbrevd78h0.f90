module     p0_dbaru_epnebbbarg_abbrevd78h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(136), public :: abb78
   complex(ki), public :: R2d78
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
      abb78(1)=1.0_ki/(-es71+es712-es12)
      abb78(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb78(3)=sqrt(mB**2)
      abb78(4)=NC**(-1)
      abb78(5)=spbl6k2**(-1)
      abb78(6)=spak2l5**(-1)
      abb78(7)=spbl5k2**(-1)
      abb78(8)=spak2l6**(-1)
      abb78(9)=abb78(4)**2
      abb78(9)=abb78(9)+1.0_ki
      abb78(10)=TR*gW
      abb78(10)=abb78(10)**2*i_*CVDU*abb78(2)*abb78(1)
      abb78(11)=abb78(10)*spbe7k2
      abb78(12)=abb78(11)*abb78(9)
      abb78(13)=mB**4
      abb78(14)=abb78(13)*abb78(12)
      abb78(15)=spak1l5*spae7k7
      abb78(16)=abb78(5)*c4
      abb78(17)=abb78(15)*abb78(16)
      abb78(18)=abb78(7)*spbk3k2
      abb78(19)=abb78(18)*abb78(3)
      abb78(20)=abb78(14)*abb78(19)*abb78(17)
      abb78(21)=mB**2
      abb78(22)=abb78(21)*abb78(12)
      abb78(23)=abb78(3)*c4
      abb78(24)=abb78(22)*abb78(23)
      abb78(25)=2.0_ki*c1
      abb78(25)=abb78(25)*abb78(4)
      abb78(26)=abb78(25)*abb78(11)
      abb78(27)=abb78(26)*abb78(3)
      abb78(28)=abb78(27)*abb78(21)
      abb78(24)=abb78(24)-abb78(28)
      abb78(24)=spbk7k3*abb78(24)*abb78(15)*abb78(7)
      abb78(29)=spal6k7*abb78(24)
      abb78(30)=abb78(28)*abb78(18)
      abb78(31)=abb78(19)*c4
      abb78(32)=abb78(31)*abb78(22)
      abb78(30)=abb78(30)-abb78(32)
      abb78(32)=spak2l6*abb78(15)*abb78(30)
      abb78(13)=abb78(13)*abb78(27)
      abb78(33)=abb78(18)*spae7k7
      abb78(34)=abb78(13)*abb78(33)
      abb78(35)=spak1l5*abb78(5)
      abb78(36)=-abb78(35)*abb78(34)
      abb78(20)=abb78(32)+abb78(29)+abb78(20)+abb78(36)
      abb78(29)=spak2k4*spbk7k2
      abb78(20)=abb78(6)*abb78(29)*abb78(20)
      abb78(32)=spae7k7*abb78(3)
      abb78(14)=abb78(14)*abb78(32)
      abb78(36)=abb78(5)**2
      abb78(37)=spbk3k2*c4
      abb78(38)=abb78(36)*abb78(37)
      abb78(39)=abb78(38)*abb78(14)
      abb78(40)=abb78(36)*spbk3k2
      abb78(13)=-spae7k7*abb78(40)*abb78(13)
      abb78(13)=abb78(39)+abb78(13)
      abb78(13)=abb78(8)*abb78(13)
      abb78(39)=abb78(22)*abb78(32)
      abb78(41)=abb78(37)*abb78(5)
      abb78(42)=-abb78(39)*abb78(41)
      abb78(43)=abb78(5)*spbk3k2
      abb78(44)=abb78(28)*abb78(43)
      abb78(45)=spae7k7*abb78(44)
      abb78(13)=abb78(13)+abb78(42)+abb78(45)
      abb78(42)=spak4l5*spbk7k2
      abb78(45)=abb78(42)*spak1k2
      abb78(13)=abb78(13)*abb78(45)
      abb78(46)=abb78(28)*abb78(5)
      abb78(47)=abb78(46)*spae7k7
      abb78(48)=abb78(22)*abb78(16)
      abb78(32)=abb78(48)*abb78(32)
      abb78(47)=abb78(47)-abb78(32)
      abb78(49)=abb78(42)*spak1l6
      abb78(50)=abb78(47)*abb78(49)
      abb78(51)=-abb78(7)*abb78(47)
      abb78(52)=abb78(51)*spbk2k1
      abb78(53)=spbk7k2*spak1k4
      abb78(54)=spak1l6*abb78(53)*abb78(52)
      abb78(50)=abb78(50)+abb78(54)
      abb78(50)=spbl6k3*abb78(50)
      abb78(54)=abb78(15)*abb78(27)
      abb78(55)=abb78(54)*spbk3k2
      abb78(56)=abb78(37)*abb78(3)
      abb78(57)=abb78(56)*abb78(12)
      abb78(58)=abb78(57)*abb78(15)
      abb78(55)=abb78(55)-abb78(58)
      abb78(55)=abb78(55)*spak2l6
      abb78(58)=abb78(35)*abb78(37)
      abb78(59)=abb78(39)*abb78(58)
      abb78(60)=abb78(44)*abb78(15)
      abb78(55)=abb78(55)+abb78(59)-abb78(60)
      abb78(59)=-spak4l5*abb78(55)
      abb78(60)=abb78(12)*abb78(23)
      abb78(61)=abb78(60)*abb78(15)
      abb78(54)=abb78(61)-abb78(54)
      abb78(61)=spbk7k3*spak4l5
      abb78(62)=abb78(54)*abb78(61)
      abb78(63)=-spal6k7*abb78(62)
      abb78(59)=abb78(63)+abb78(59)
      abb78(59)=spbk7l5*abb78(59)
      abb78(55)=-spak1k4*abb78(55)
      abb78(63)=spbk7k3*spak1k4
      abb78(64)=abb78(63)*abb78(54)
      abb78(65)=-spal6k7*abb78(64)
      abb78(55)=abb78(65)+abb78(55)
      abb78(55)=spbk7k1*abb78(55)
      abb78(65)=abb78(18)*c4
      abb78(14)=abb78(14)*abb78(65)
      abb78(14)=abb78(14)-abb78(34)
      abb78(14)=abb78(36)*abb78(14)
      abb78(34)=abb78(8)*abb78(14)*abb78(53)
      abb78(66)=abb78(46)*abb78(33)
      abb78(32)=abb78(32)*abb78(18)
      abb78(32)=abb78(66)-abb78(32)
      abb78(66)=abb78(32)*abb78(53)
      abb78(34)=abb78(34)+abb78(66)
      abb78(67)=-es12*abb78(34)
      abb78(68)=abb78(42)*spak1k7
      abb78(69)=abb78(68)*spbk7k3
      abb78(70)=abb78(47)*abb78(69)
      abb78(71)=spbk2k1*spak1k7
      abb78(72)=abb78(71)*abb78(53)
      abb78(73)=spbk7k3*abb78(51)*abb78(72)
      abb78(13)=abb78(67)+abb78(55)+abb78(59)+abb78(50)+abb78(73)+abb78(70)+abb&
      &78(13)+abb78(20)
      abb78(13)=4.0_ki*abb78(13)
      abb78(20)=abb78(10)*abb78(25)
      abb78(50)=abb78(21)*abb78(20)*abb78(19)
      abb78(55)=abb78(10)*abb78(9)
      abb78(59)=abb78(21)*abb78(55)
      abb78(31)=abb78(59)*abb78(31)
      abb78(31)=abb78(31)-abb78(50)
      abb78(67)=abb78(20)*abb78(3)
      abb78(23)=abb78(55)*abb78(23)
      abb78(23)=abb78(67)-abb78(23)
      abb78(70)=spal5k7*spbk7k3
      abb78(73)=-abb78(23)*abb78(70)
      abb78(74)=abb78(23)*spbl6k3
      abb78(75)=-spal5l6*abb78(74)
      abb78(76)=spak1l5*abb78(23)
      abb78(77)=-spbk3k1*abb78(76)
      abb78(73)=-abb78(31)+abb78(77)+abb78(75)+abb78(73)
      abb78(73)=abb78(53)*abb78(73)
      abb78(21)=abb78(43)*abb78(21)*abb78(67)
      abb78(75)=abb78(56)*abb78(5)
      abb78(77)=abb78(59)*abb78(75)
      abb78(21)=abb78(21)-abb78(77)
      abb78(77)=abb78(21)*abb78(8)
      abb78(56)=abb78(55)*abb78(56)
      abb78(67)=abb78(67)*spbk3k2
      abb78(56)=abb78(77)+abb78(56)-abb78(67)
      abb78(67)=abb78(53)*spak2l5
      abb78(67)=-abb78(67)+abb78(45)
      abb78(67)=abb78(56)*abb78(67)
      abb78(77)=abb78(6)*spak1k2
      abb78(78)=abb78(31)*abb78(77)
      abb78(79)=spbl5k3*abb78(76)
      abb78(79)=abb78(79)+abb78(78)
      abb78(79)=abb78(42)*abb78(79)
      abb78(80)=-abb78(23)*abb78(69)
      abb78(81)=-abb78(74)*abb78(49)
      abb78(67)=abb78(81)+abb78(79)+abb78(80)+abb78(67)+abb78(73)
      abb78(67)=spal6k7*abb78(67)
      abb78(59)=abb78(16)*abb78(59)*abb78(19)
      abb78(50)=abb78(50)*abb78(5)
      abb78(50)=abb78(59)-abb78(50)
      abb78(59)=spak1k7*spbk7k2**2
      abb78(73)=spak4k7*abb78(59)
      abb78(73)=abb78(73)-abb78(72)
      abb78(73)=abb78(50)*abb78(73)
      abb78(79)=-abb78(21)*abb78(68)
      abb78(80)=spak1k7*spbk7k2
      abb78(81)=spak4l6*abb78(31)*abb78(80)
      abb78(67)=abb78(81)+abb78(79)+abb78(67)+abb78(73)
      abb78(67)=8.0_ki*abb78(67)
      abb78(73)=abb78(75)*abb78(22)
      abb78(44)=abb78(73)-abb78(44)
      abb78(73)=abb78(8)*spak4l5
      abb78(75)=abb78(73)*abb78(44)
      abb78(79)=abb78(27)*spbk3k2
      abb78(57)=abb78(79)-abb78(57)
      abb78(79)=abb78(57)*spak4l5
      abb78(75)=abb78(75)+abb78(79)
      abb78(75)=abb78(75)*spak1k2
      abb78(79)=abb78(8)*spak1k4
      abb78(81)=abb78(79)*abb78(44)
      abb78(82)=abb78(57)*spak1k4
      abb78(81)=abb78(81)+abb78(82)
      abb78(81)=abb78(81)*spak2l5
      abb78(83)=abb78(30)*spak1k4
      abb78(27)=abb78(60)-abb78(27)
      abb78(84)=abb78(61)*spak1k7
      abb78(85)=abb78(84)*abb78(27)
      abb78(83)=abb78(83)+abb78(85)
      abb78(85)=abb78(27)*spbl6k3
      abb78(86)=abb78(85)*spak1k4
      abb78(87)=abb78(86)*spal5l6
      abb78(88)=-spak1l5*abb78(27)
      abb78(89)=spbl5k3*abb78(88)*spak4l5
      abb78(90)=spbk3k1*abb78(88)*spak1k4
      abb78(27)=abb78(63)*abb78(27)
      abb78(91)=abb78(27)*spal5k7
      abb78(75)=abb78(89)-abb78(75)+abb78(83)+abb78(81)+abb78(87)-abb78(90)+abb&
      &78(91)
      abb78(81)=abb78(77)*spak4l5
      abb78(87)=abb78(81)*abb78(30)
      abb78(89)=spak1l6*spak4l5
      abb78(85)=abb78(85)*abb78(89)
      abb78(87)=abb78(87)-abb78(85)
      abb78(90)=abb78(87)-abb78(75)
      abb78(90)=spal6e7*abb78(90)
      abb78(91)=abb78(30)*spak4l6
      abb78(92)=abb78(44)*spak4l5
      abb78(19)=abb78(48)*abb78(19)
      abb78(46)=abb78(46)*abb78(18)
      abb78(19)=abb78(19)-abb78(46)
      abb78(46)=spbk2k1*spak1k4
      abb78(48)=abb78(46)*abb78(19)
      abb78(93)=abb78(19)*spbk7k2
      abb78(94)=abb78(93)*spak4k7
      abb78(48)=-abb78(94)+abb78(48)+abb78(91)-abb78(92)
      abb78(48)=abb78(48)*spak1e7
      abb78(91)=abb78(11)*mB
      abb78(92)=abb78(25)*abb78(91)
      abb78(94)=abb78(92)*spae7k7
      abb78(95)=abb78(94)*abb78(35)
      abb78(96)=abb78(91)*abb78(9)
      abb78(97)=abb78(96)*abb78(16)
      abb78(98)=abb78(97)*abb78(15)
      abb78(95)=abb78(95)-abb78(98)
      abb78(98)=abb78(95)*spak1k4
      abb78(99)=abb78(94)*abb78(7)
      abb78(100)=abb78(96)*c4
      abb78(101)=abb78(100)*abb78(7)
      abb78(102)=abb78(101)*spae7k7
      abb78(99)=abb78(99)-abb78(102)
      abb78(102)=spak1l6*spak1k4
      abb78(103)=abb78(99)*abb78(102)
      abb78(98)=abb78(98)+abb78(103)
      abb78(98)=abb78(98)*spbk2k1*spbk7k3
      abb78(103)=abb78(54)*spak4l6
      abb78(104)=abb78(103)*spbk7k3
      abb78(66)=abb78(104)+abb78(66)
      abb78(104)=abb78(100)*spae7k7
      abb78(94)=abb78(104)-abb78(94)
      abb78(104)=spak1l6*abb78(94)*abb78(61)
      abb78(105)=abb78(95)*abb78(61)
      abb78(106)=abb78(105)*spbl5k2
      abb78(98)=abb78(98)+abb78(104)-abb78(106)+abb78(66)
      abb78(90)=abb78(90)+abb78(48)-abb78(98)
      abb78(90)=8.0_ki*abb78(90)
      abb78(10)=abb78(10)*mB
      abb78(104)=abb78(25)*abb78(10)
      abb78(106)=abb78(104)*abb78(18)
      abb78(9)=abb78(10)*abb78(9)
      abb78(10)=abb78(9)*abb78(65)
      abb78(10)=abb78(106)-abb78(10)
      abb78(106)=spak1l6*spbk7k2
      abb78(107)=abb78(106)*abb78(10)
      abb78(108)=abb78(58)*abb78(9)
      abb78(109)=abb78(104)*abb78(43)
      abb78(110)=abb78(109)*spak1l5
      abb78(108)=abb78(108)-abb78(110)
      abb78(110)=abb78(108)*spbk7k2
      abb78(107)=abb78(107)-abb78(110)
      abb78(110)=-16.0_ki*spak4k7*abb78(107)
      abb78(66)=-8.0_ki*abb78(66)
      abb78(111)=abb78(80)*abb78(10)
      abb78(112)=16.0_ki*spak4l6
      abb78(113)=abb78(112)*abb78(111)
      abb78(114)=abb78(92)*abb78(18)
      abb78(115)=abb78(65)*abb78(96)
      abb78(114)=abb78(114)-abb78(115)
      abb78(115)=abb78(114)*spak1e7
      abb78(112)=abb78(112)*abb78(115)
      abb78(75)=abb78(85)+abb78(75)
      abb78(75)=spal6e7*abb78(75)
      abb78(22)=abb78(3)*abb78(17)*abb78(22)
      abb78(85)=abb78(35)*spae7k7
      abb78(116)=abb78(85)*abb78(28)
      abb78(22)=abb78(22)-abb78(116)
      abb78(116)=-abb78(8)*abb78(22)
      abb78(116)=abb78(54)+abb78(116)
      abb78(116)=spak4l6*spbk7k3*abb78(116)
      abb78(117)=mB**3
      abb78(118)=abb78(117)*abb78(12)
      abb78(17)=abb78(118)*abb78(17)
      abb78(119)=abb78(18)*abb78(17)
      abb78(120)=abb78(117)*abb78(26)
      abb78(121)=abb78(120)*abb78(33)
      abb78(122)=-abb78(35)*abb78(121)
      abb78(119)=abb78(119)+abb78(122)
      abb78(119)=spbk7k2*abb78(119)
      abb78(12)=-abb78(65)*abb78(12)
      abb78(26)=abb78(26)*abb78(18)
      abb78(12)=abb78(12)+abb78(26)
      abb78(26)=abb78(36)*abb78(15)
      abb78(65)=abb78(8)*spbk7k2
      abb78(12)=abb78(65)*abb78(26)*abb78(12)*mB**5
      abb78(12)=abb78(119)+abb78(12)
      abb78(12)=spak2k4*abb78(12)
      abb78(119)=spak1k2*spak4l5
      abb78(122)=-spal6e7*abb78(30)*abb78(119)
      abb78(12)=abb78(12)+abb78(122)
      abb78(12)=abb78(6)*abb78(12)
      abb78(122)=abb78(118)*abb78(37)
      abb78(123)=abb78(122)*abb78(26)
      abb78(124)=abb78(26)*abb78(120)
      abb78(125)=abb78(124)*spbk3k2
      abb78(123)=abb78(123)-abb78(125)
      abb78(125)=abb78(123)*abb78(73)
      abb78(58)=abb78(58)*abb78(96)
      abb78(126)=abb78(58)*spae7k7
      abb78(127)=abb78(92)*abb78(43)
      abb78(128)=abb78(127)*abb78(15)
      abb78(126)=abb78(128)-abb78(126)
      abb78(128)=abb78(126)*spak4l5
      abb78(125)=abb78(128)+abb78(125)
      abb78(128)=spbk7l5*abb78(125)
      abb78(129)=abb78(123)*abb78(79)
      abb78(130)=abb78(126)*spak1k4
      abb78(129)=abb78(130)+abb78(129)
      abb78(129)=spbk7k1*abb78(129)
      abb78(12)=abb78(129)+abb78(128)+abb78(12)+abb78(116)+abb78(75)-abb78(48)+&
      &abb78(34)
      abb78(12)=8.0_ki*abb78(12)
      abb78(34)=-spbk7k2*abb78(123)
      abb78(48)=abb78(16)*abb78(118)*abb78(33)
      abb78(75)=abb78(121)*abb78(5)
      abb78(48)=abb78(48)-abb78(75)
      abb78(75)=-abb78(48)*abb78(106)
      abb78(34)=abb78(34)+abb78(75)
      abb78(34)=abb78(8)*abb78(34)
      abb78(75)=-spbk7k2*abb78(126)
      abb78(116)=abb78(100)-abb78(92)
      abb78(33)=-abb78(33)*abb78(116)
      abb78(121)=-abb78(33)*abb78(106)
      abb78(34)=abb78(34)+abb78(75)+abb78(121)
      abb78(34)=spak2k4*abb78(34)
      abb78(75)=abb78(33)*spak1l6
      abb78(75)=abb78(75)+abb78(126)
      abb78(121)=spbk7l6*spak4l6
      abb78(126)=-abb78(75)*abb78(121)
      abb78(34)=abb78(126)+abb78(34)+abb78(98)
      abb78(34)=4.0_ki*abb78(34)
      abb78(98)=abb78(114)*spak1l6
      abb78(126)=abb78(127)*spak1l5
      abb78(58)=-abb78(58)+abb78(126)+abb78(98)
      abb78(98)=8.0_ki*abb78(58)
      abb78(126)=abb78(98)*spak4k7
      abb78(98)=abb78(98)*spak4l6
      abb78(128)=abb78(92)*abb78(7)
      abb78(101)=abb78(128)-abb78(101)
      abb78(128)=abb78(102)*abb78(101)
      abb78(129)=abb78(92)*abb78(35)
      abb78(131)=abb78(97)*spak1l5
      abb78(129)=abb78(129)-abb78(131)
      abb78(131)=abb78(129)*spak1k4
      abb78(128)=abb78(128)+abb78(131)
      abb78(128)=abb78(128)*spbk2k1
      abb78(132)=abb78(116)*abb78(89)
      abb78(133)=abb78(129)*spak4l5
      abb78(134)=abb78(133)*spbl5k2
      abb78(128)=abb78(128)+abb78(132)-abb78(134)
      abb78(132)=8.0_ki*abb78(128)
      abb78(57)=-abb78(57)*abb78(119)
      abb78(82)=spak2l5*abb78(82)
      abb78(57)=abb78(82)+abb78(57)+abb78(83)-abb78(87)
      abb78(57)=spak2l6*abb78(57)
      abb78(82)=spbk7e7*spak4l5
      abb78(83)=-abb78(82)*abb78(56)*spak1k2
      abb78(87)=spbk7e7*spak1k4
      abb78(134)=abb78(31)*abb78(87)
      abb78(135)=abb78(84)*spbk7e7
      abb78(136)=abb78(23)*abb78(135)
      abb78(83)=abb78(83)+abb78(134)+abb78(136)
      abb78(83)=spal6k7*abb78(83)
      abb78(134)=spak1l6*abb78(74)
      abb78(78)=-abb78(78)+abb78(134)
      abb78(78)=spal6k7*abb78(78)
      abb78(21)=spak1k7*abb78(21)
      abb78(21)=abb78(21)+abb78(78)
      abb78(21)=abb78(82)*abb78(21)
      abb78(78)=abb78(71)*abb78(87)
      abb78(134)=abb78(50)*abb78(78)
      abb78(136)=spak1k7*spbk7e7
      abb78(31)=-abb78(31)*abb78(136)
      abb78(30)=spak1k2*abb78(30)
      abb78(30)=abb78(31)+abb78(30)
      abb78(30)=spak4l6*abb78(30)
      abb78(31)=-spbk7e7*abb78(50)*abb78(80)
      abb78(50)=-spak1k2*abb78(93)
      abb78(31)=abb78(31)+abb78(50)
      abb78(31)=spak4k7*abb78(31)
      abb78(50)=abb78(87)*spal6k7
      abb78(56)=abb78(56)*abb78(50)
      abb78(93)=spak1k4*abb78(44)
      abb78(56)=abb78(93)+abb78(56)
      abb78(56)=spak2l5*abb78(56)
      abb78(23)=spbk7k3*abb78(23)*abb78(50)
      abb78(27)=spak2l6*abb78(27)
      abb78(23)=abb78(23)+abb78(27)
      abb78(23)=spal5k7*abb78(23)
      abb78(27)=abb78(74)*abb78(50)
      abb78(50)=spak2l6*abb78(86)
      abb78(27)=abb78(27)+abb78(50)
      abb78(27)=spal5l6*abb78(27)
      abb78(50)=abb78(76)*spal6k7
      abb78(74)=-abb78(82)*abb78(50)
      abb78(76)=abb78(88)*spak2l6
      abb78(86)=spak4l5*abb78(76)
      abb78(74)=abb78(74)+abb78(86)
      abb78(74)=spbl5k3*abb78(74)
      abb78(86)=abb78(87)*abb78(50)
      abb78(93)=-spak1k4*abb78(76)
      abb78(86)=abb78(86)+abb78(93)
      abb78(86)=spbk3k1*abb78(86)
      abb78(44)=abb78(44)*abb78(119)
      abb78(93)=es12*spak1k4
      abb78(19)=abb78(19)*abb78(93)
      abb78(19)=abb78(19)+abb78(86)+abb78(74)+abb78(27)+abb78(23)+abb78(57)+abb&
      &78(56)+abb78(31)+abb78(30)+abb78(83)+abb78(134)-2.0_ki*abb78(44)+abb78(2&
      &1)
      abb78(19)=4.0_ki*abb78(19)
      abb78(21)=abb78(122)*abb78(36)
      abb78(23)=abb78(40)*abb78(120)
      abb78(21)=abb78(21)-abb78(23)
      abb78(23)=spak1l5*abb78(21)
      abb78(27)=abb78(16)*abb78(18)
      abb78(30)=abb78(27)*abb78(118)
      abb78(18)=abb78(18)*abb78(5)
      abb78(31)=abb78(18)*abb78(120)
      abb78(30)=abb78(30)-abb78(31)
      abb78(31)=spak1l6*abb78(30)
      abb78(23)=abb78(31)+abb78(23)
      abb78(23)=abb78(8)*abb78(23)
      abb78(23)=abb78(23)+abb78(58)
      abb78(23)=spak2k4*abb78(23)
      abb78(31)=abb78(63)*spal5k7
      abb78(36)=spbl6k3*abb78(89)
      abb78(44)=spal5l6*spbl6k3
      abb78(56)=spak1k4*abb78(44)
      abb78(31)=abb78(56)+abb78(31)+abb78(36)+abb78(84)
      abb78(36)=abb78(92)*abb78(5)
      abb78(36)=abb78(36)-abb78(97)
      abb78(31)=abb78(36)*abb78(31)
      abb78(36)=abb78(41)*abb78(96)
      abb78(36)=abb78(36)-abb78(127)
      abb78(56)=-spak4l5*abb78(36)
      abb78(57)=abb78(21)*abb78(73)
      abb78(56)=abb78(56)+abb78(57)
      abb78(56)=spak1k2*abb78(56)
      abb78(57)=abb78(10)*spak1l6
      abb78(57)=abb78(57)-abb78(108)
      abb78(57)=abb78(57)*spbk7e7
      abb78(74)=spak4k7*abb78(57)
      abb78(36)=spak1k4*abb78(36)
      abb78(21)=-abb78(21)*abb78(79)
      abb78(21)=abb78(36)+abb78(21)
      abb78(21)=spak2l5*abb78(21)
      abb78(36)=-abb78(81)+spak1k4
      abb78(36)=abb78(30)*abb78(36)
      abb78(81)=-spbl5k3*abb78(133)
      abb78(83)=spbk3k1*abb78(131)
      abb78(21)=abb78(83)+abb78(81)+abb78(21)+abb78(74)+abb78(56)+abb78(23)+abb&
      &78(31)+abb78(36)
      abb78(21)=8.0_ki*abb78(21)
      abb78(23)=abb78(114)*spak1k2
      abb78(31)=abb78(136)*abb78(10)
      abb78(23)=abb78(23)+abb78(31)
      abb78(31)=8.0_ki*spak4l6
      abb78(36)=-abb78(23)*abb78(31)
      abb78(31)=-abb78(107)*abb78(31)
      abb78(56)=4.0_ki*spak4l6
      abb78(56)=abb78(57)*abb78(56)
      abb78(74)=abb78(104)*abb78(7)
      abb78(81)=abb78(7)*c4
      abb78(83)=abb78(81)*abb78(9)
      abb78(74)=abb78(74)-abb78(83)
      abb78(83)=abb78(74)*spak1l6
      abb78(35)=abb78(104)*abb78(35)
      abb78(16)=abb78(9)*abb78(16)
      abb78(86)=abb78(16)*spak1l5
      abb78(35)=abb78(35)-abb78(86)
      abb78(86)=abb78(35)+abb78(83)
      abb78(86)=spbk2k1*abb78(53)*abb78(86)
      abb78(97)=abb78(9)*c4
      abb78(97)=abb78(97)-abb78(104)
      abb78(108)=abb78(97)*abb78(49)
      abb78(127)=abb78(35)*spbl5k2
      abb78(131)=-abb78(42)*abb78(127)
      abb78(86)=abb78(131)+abb78(108)+abb78(86)
      abb78(86)=8.0_ki*abb78(86)
      abb78(108)=-spak1l6*abb78(97)
      abb78(108)=abb78(127)+abb78(108)
      abb78(108)=abb78(82)*abb78(108)
      abb78(127)=-spak1k4*abb78(35)
      abb78(131)=-abb78(74)*abb78(102)
      abb78(127)=abb78(127)+abb78(131)
      abb78(127)=spbk2k1*spbk7e7*abb78(127)
      abb78(108)=abb78(127)+abb78(108)
      abb78(108)=4.0_ki*abb78(108)
      abb78(85)=abb78(85)*abb78(120)
      abb78(17)=abb78(85)-abb78(17)
      abb78(17)=abb78(29)*abb78(17)*abb78(7)
      abb78(29)=-abb78(6)*spbk7k3*abb78(17)
      abb78(85)=spbk7l5*abb78(105)
      abb78(105)=spbk7k1*abb78(95)*abb78(63)
      abb78(29)=abb78(105)+abb78(29)+abb78(85)
      abb78(29)=4.0_ki*abb78(29)
      abb78(55)=abb78(117)*abb78(55)
      abb78(38)=abb78(38)*abb78(55)
      abb78(20)=abb78(20)*abb78(117)
      abb78(40)=abb78(40)*abb78(20)
      abb78(38)=abb78(38)-abb78(40)
      abb78(40)=abb78(38)*spak1l5
      abb78(85)=-spbk7k2*abb78(40)
      abb78(27)=abb78(55)*abb78(27)
      abb78(18)=abb78(20)*abb78(18)
      abb78(18)=abb78(18)-abb78(27)
      abb78(20)=abb78(18)*abb78(106)
      abb78(20)=abb78(85)+abb78(20)
      abb78(20)=abb78(8)*abb78(20)
      abb78(20)=abb78(20)-abb78(107)
      abb78(20)=spak2k4*abb78(20)
      abb78(27)=abb78(70)+abb78(44)
      abb78(44)=-abb78(53)*abb78(27)
      abb78(49)=-spbl6k3*abb78(49)
      abb78(44)=abb78(49)-abb78(69)+abb78(44)
      abb78(49)=abb78(104)*abb78(5)
      abb78(16)=abb78(49)-abb78(16)
      abb78(44)=abb78(16)*abb78(44)
      abb78(38)=abb78(38)*abb78(8)
      abb78(9)=abb78(41)*abb78(9)
      abb78(9)=abb78(38)-abb78(9)+abb78(109)
      abb78(38)=-abb78(9)*abb78(45)
      abb78(41)=abb78(9)*spak2l5
      abb78(45)=abb78(53)*abb78(41)
      abb78(49)=spbl5k3*abb78(42)
      abb78(55)=-spbk3k1*abb78(53)
      abb78(49)=abb78(55)+abb78(49)
      abb78(49)=abb78(35)*abb78(49)
      abb78(42)=-abb78(42)*abb78(77)
      abb78(42)=abb78(42)+abb78(53)
      abb78(42)=abb78(18)*abb78(42)
      abb78(20)=abb78(45)+abb78(38)+abb78(20)+abb78(44)+abb78(42)+abb78(49)
      abb78(20)=8.0_ki*abb78(20)
      abb78(38)=-spak1l6*abb78(18)
      abb78(38)=abb78(38)+abb78(40)
      abb78(38)=abb78(8)*spbk7e7*abb78(38)
      abb78(38)=abb78(57)+abb78(38)
      abb78(38)=spak2k4*abb78(38)
      abb78(27)=abb78(87)*abb78(27)
      abb78(40)=spbl6k3*spak1l6*abb78(82)
      abb78(27)=abb78(40)+abb78(135)+abb78(27)
      abb78(16)=abb78(16)*abb78(27)
      abb78(9)=abb78(82)*abb78(9)*spak1k2
      abb78(27)=-abb78(87)*abb78(41)
      abb78(40)=-spbl5k3*abb78(82)
      abb78(41)=spbk3k1*abb78(87)
      abb78(40)=abb78(41)+abb78(40)
      abb78(40)=abb78(35)*abb78(40)
      abb78(41)=abb78(82)*abb78(77)
      abb78(41)=abb78(41)-abb78(87)
      abb78(41)=abb78(18)*abb78(41)
      abb78(9)=abb78(27)+abb78(9)+abb78(38)+abb78(16)+abb78(41)+abb78(40)
      abb78(9)=4.0_ki*abb78(9)
      abb78(16)=spbk3k2*abb78(92)
      abb78(27)=abb78(96)*abb78(37)
      abb78(16)=abb78(16)-abb78(27)
      abb78(16)=abb78(16)*spae7k7
      abb78(27)=-spak4l5*abb78(16)
      abb78(37)=abb78(120)*abb78(43)
      abb78(38)=abb78(122)*abb78(5)
      abb78(37)=abb78(37)-abb78(38)
      abb78(37)=abb78(37)*spae7k7
      abb78(38)=abb78(37)*abb78(73)
      abb78(27)=abb78(27)+abb78(38)
      abb78(27)=spak1k2*abb78(27)
      abb78(38)=abb78(48)*abb78(79)
      abb78(40)=abb78(33)*spak1k4
      abb78(38)=abb78(38)+abb78(40)
      abb78(41)=es12*abb78(38)
      abb78(42)=abb78(95)*spbl6k3
      abb78(43)=spbl5k2*spak4l5
      abb78(43)=abb78(43)-abb78(46)
      abb78(43)=abb78(42)*abb78(43)
      abb78(44)=abb78(94)*abb78(84)
      abb78(45)=abb78(99)*abb78(63)*abb78(71)
      abb78(27)=abb78(41)+abb78(45)+abb78(44)+abb78(27)+abb78(43)
      abb78(27)=4.0_ki*abb78(27)
      abb78(41)=8.0_ki*spak4k7*abb78(111)
      abb78(43)=abb78(115)*spak4k7
      abb78(44)=abb78(43)-abb78(40)
      abb78(44)=-8.0_ki*abb78(44)
      abb78(45)=8.0_ki*abb78(40)
      abb78(38)=abb78(43)-abb78(38)
      abb78(38)=8.0_ki*abb78(38)
      abb78(40)=-4.0_ki*abb78(40)
      abb78(43)=4.0_ki*spak4k7
      abb78(23)=-abb78(23)*abb78(43)
      abb78(43)=4.0_ki*abb78(62)
      abb78(49)=spbk7k2*abb78(54)
      abb78(53)=-abb78(22)*abb78(65)
      abb78(49)=abb78(49)+abb78(53)
      abb78(49)=spak2k4*abb78(49)
      abb78(53)=spbk7l6*abb78(103)
      abb78(49)=abb78(49)+abb78(53)
      abb78(49)=4.0_ki*abb78(49)
      abb78(53)=-abb78(97)*abb78(68)
      abb78(55)=-abb78(74)*abb78(72)
      abb78(53)=abb78(53)+abb78(55)
      abb78(53)=8.0_ki*abb78(53)
      abb78(55)=abb78(116)*spak4l5
      abb78(46)=abb78(46)*abb78(101)
      abb78(46)=abb78(55)+abb78(46)
      abb78(55)=8.0_ki*spak1e7
      abb78(46)=abb78(46)*abb78(55)
      abb78(57)=spak1k7*abb78(97)*abb78(82)
      abb78(62)=abb78(116)*abb78(119)
      abb78(68)=abb78(74)*abb78(78)
      abb78(69)=abb78(101)*abb78(93)
      abb78(57)=abb78(69)+abb78(68)+abb78(57)+abb78(62)
      abb78(57)=4.0_ki*abb78(57)
      abb78(24)=-spak2k4*abb78(24)
      abb78(17)=-spbl6k3*abb78(17)
      abb78(17)=abb78(24)+abb78(17)
      abb78(17)=abb78(6)*abb78(17)
      abb78(24)=spbk7l5*spak4l5
      abb78(62)=spbk7k1*spak1k4
      abb78(24)=abb78(62)+abb78(24)
      abb78(24)=abb78(42)*abb78(24)
      abb78(17)=abb78(17)+abb78(24)
      abb78(17)=4.0_ki*abb78(17)
      abb78(24)=spbk7k2*abb78(10)
      abb78(42)=-abb78(18)*abb78(65)
      abb78(24)=abb78(24)+abb78(42)
      abb78(42)=spak1k7*spak2k4
      abb78(24)=8.0_ki*abb78(24)*abb78(42)
      abb78(30)=abb78(30)*abb78(8)
      abb78(30)=abb78(30)+abb78(114)
      abb78(30)=abb78(30)*spak2k4
      abb78(62)=abb78(30)*abb78(55)
      abb78(18)=abb78(8)*abb78(18)
      abb78(10)=-abb78(10)+abb78(18)
      abb78(10)=abb78(42)*spbk7e7*abb78(10)
      abb78(18)=-spak1k2*abb78(30)
      abb78(10)=abb78(10)+abb78(18)
      abb78(10)=4.0_ki*abb78(10)
      abb78(18)=4.0_ki*abb78(64)
      abb78(30)=8.0_ki*abb78(75)
      abb78(42)=spak1l6*abb78(48)
      abb78(42)=abb78(42)+abb78(123)
      abb78(42)=abb78(8)*abb78(42)
      abb78(42)=abb78(42)+abb78(75)
      abb78(42)=8.0_ki*abb78(42)
      abb78(64)=4.0_ki*abb78(75)
      abb78(54)=-spak2l6*abb78(54)
      abb78(22)=abb78(54)+abb78(22)
      abb78(22)=spbk7k2*abb78(22)
      abb78(39)=-abb78(81)*abb78(39)
      abb78(28)=spae7k7*abb78(7)*abb78(28)
      abb78(28)=abb78(39)+abb78(28)
      abb78(28)=abb78(28)*abb78(106)
      abb78(39)=-abb78(51)*abb78(59)
      abb78(22)=abb78(39)+abb78(28)+abb78(22)
      abb78(22)=4.0_ki*abb78(22)
      abb78(28)=16.0_ki*spbk7k2*abb78(50)
      abb78(39)=abb78(99)*abb78(106)
      abb78(54)=abb78(95)*spbk7k2
      abb78(39)=abb78(39)+abb78(54)
      abb78(59)=abb78(88)*spal6e7
      abb78(59)=2.0_ki*abb78(59)
      abb78(68)=-abb78(59)+abb78(39)
      abb78(68)=8.0_ki*abb78(68)
      abb78(26)=c4*abb78(26)*abb78(118)
      abb78(26)=abb78(26)-abb78(124)
      abb78(69)=-abb78(26)*abb78(65)
      abb78(54)=abb78(59)-abb78(54)+abb78(69)
      abb78(54)=8.0_ki*abb78(54)
      abb78(39)=-4.0_ki*abb78(39)
      abb78(50)=-spbk7e7*abb78(50)
      abb78(50)=abb78(50)+abb78(76)
      abb78(50)=8.0_ki*abb78(50)
      abb78(59)=spak1l6*abb78(101)
      abb78(59)=abb78(59)-abb78(129)
      abb78(59)=8.0_ki*abb78(59)
      abb78(69)=spbk7k2*abb78(35)
      abb78(70)=-abb78(74)*abb78(106)
      abb78(69)=abb78(69)+abb78(70)
      abb78(69)=8.0_ki*abb78(69)
      abb78(35)=abb78(83)-abb78(35)
      abb78(35)=4.0_ki*spbk7e7*abb78(35)
      abb78(11)=-abb78(3)*abb78(11)
      abb78(11)=abb78(91)+abb78(11)
      abb78(11)=abb78(11)*abb78(25)
      abb78(11)=abb78(11)-abb78(100)+abb78(60)
      abb78(11)=abb78(15)*abb78(11)
      abb78(15)=-abb78(99)*abb78(80)
      abb78(11)=abb78(15)+abb78(11)
      abb78(11)=4.0_ki*abb78(11)
      abb78(15)=4.0_ki*spbk7l6*abb78(95)
      abb78(25)=8.0_ki*abb78(80)
      abb78(25)=abb78(74)*abb78(25)
      abb78(55)=abb78(55)*abb78(101)
      abb78(60)=-abb78(74)*abb78(136)
      abb78(70)=-spak1k2*abb78(101)
      abb78(60)=abb78(60)+abb78(70)
      abb78(60)=4.0_ki*abb78(60)
      abb78(70)=abb78(95)*spbk7k3
      abb78(71)=8.0_ki*abb78(70)
      abb78(26)=abb78(8)*spbk7k3*abb78(26)
      abb78(26)=abb78(70)+abb78(26)
      abb78(26)=8.0_ki*abb78(26)
      abb78(70)=4.0_ki*abb78(70)
      abb78(72)=-spak1k4*abb78(123)
      abb78(48)=-abb78(48)*abb78(102)
      abb78(48)=abb78(72)+abb78(48)
      abb78(48)=abb78(8)*abb78(48)
      abb78(33)=-abb78(33)*abb78(102)
      abb78(33)=abb78(48)-abb78(130)+abb78(33)
      abb78(33)=spbk2k1*abb78(33)
      abb78(37)=-abb78(8)*abb78(37)
      abb78(16)=abb78(16)+abb78(37)
      abb78(16)=abb78(89)*abb78(16)
      abb78(37)=spbl5k2*abb78(125)
      abb78(16)=abb78(37)+abb78(33)+abb78(16)
      abb78(16)=4.0_ki*abb78(16)
      abb78(33)=4.0_ki*abb78(58)
      abb78(37)=spak4k7*abb78(33)
      abb78(33)=spak4l6*abb78(33)
      abb78(48)=-4.0_ki*abb78(128)
      abb78(58)=-spbk7k2*abb78(32)
      abb78(14)=-abb78(14)*abb78(65)
      abb78(14)=abb78(58)+abb78(14)
      abb78(14)=spak2k4*abb78(14)
      abb78(47)=-abb78(47)*abb78(61)
      abb78(52)=-abb78(63)*abb78(52)
      abb78(32)=-abb78(32)*abb78(121)
      abb78(14)=abb78(32)+abb78(52)+abb78(47)+abb78(14)
      abb78(14)=4.0_ki*abb78(14)
      abb78(32)=4.0_ki*spbk7k2*abb78(51)
      R2d78=0.0_ki
      rat2 = rat2 + R2d78
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='78' value='", &
          & R2d78, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd78h0
