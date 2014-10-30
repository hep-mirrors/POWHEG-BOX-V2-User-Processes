module     p0_dbaru_epnebbbarg_abbrevd321h7
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh7
   implicit none
   private
   complex(ki), dimension(134), public :: abb321
   complex(ki), public :: R2d321
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
      abb321(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb321(2)=sqrt(mB**2)
      abb321(3)=sqrt2**(-1)
      abb321(4)=es234**(-1)
      abb321(5)=es567**(-1)
      abb321(6)=spak2l5**(-1)
      abb321(7)=spbl5k2**(-1)
      abb321(8)=spbk7k2**(-1)
      abb321(9)=spak2l6**(-1)
      abb321(10)=spbl6k2**(-1)
      abb321(11)=1.0_ki/(es34+es567-es12-es234)
      abb321(12)=spbk4k3*spak4l6
      abb321(13)=spbk3k1*spak1l6
      abb321(12)=abb321(12)+abb321(13)
      abb321(14)=spak2k7*spbl6k2
      abb321(15)=abb321(2)**2
      abb321(16)=abb321(14)*abb321(15)
      abb321(17)=abb321(12)*abb321(16)
      abb321(18)=spbk4k3*spak4k7
      abb321(19)=spak1k7*spbk3k1
      abb321(20)=abb321(18)+abb321(19)
      abb321(21)=2.0_ki*spak2l5
      abb321(22)=abb321(21)*abb321(20)
      abb321(23)=abb321(15)*abb321(22)
      abb321(24)=spbk4k3*spak4l5
      abb321(25)=spbk3k1*spak1l5
      abb321(24)=abb321(25)+abb321(24)
      abb321(25)=abb321(15)*spak2k7
      abb321(26)=-abb321(24)*abb321(25)
      abb321(23)=abb321(26)+abb321(23)
      abb321(23)=spbl5k2*abb321(23)
      abb321(26)=es12+es71-es712
      abb321(27)=abb321(26)*abb321(19)
      abb321(28)=spbk4k3*spak4k7*abb321(26)
      abb321(27)=abb321(28)+abb321(27)
      abb321(29)=2.0_ki*abb321(15)
      abb321(30)=abb321(29)*abb321(27)
      abb321(17)=abb321(23)+abb321(17)+abb321(30)
      abb321(23)=spak1k4*abb321(11)
      abb321(30)=abb321(23)*spbl5k2
      abb321(17)=abb321(17)*abb321(30)
      abb321(31)=abb321(26)*spak2k4
      abb321(32)=spak3k4*spbl5k3
      abb321(33)=spak2l5*abb321(32)
      abb321(33)=-abb321(31)+abb321(33)
      abb321(29)=abb321(33)*abb321(29)
      abb321(33)=spak3k4*spbk7k3
      abb321(34)=spak2k7*abb321(33)
      abb321(35)=abb321(15)*abb321(34)
      abb321(29)=abb321(29)+abb321(35)
      abb321(29)=spak1k7*abb321(29)
      abb321(35)=spak2k4*spak1l5
      abb321(36)=abb321(25)*abb321(35)
      abb321(37)=spak1k7*spak2k4
      abb321(38)=abb321(21)*abb321(37)
      abb321(39)=-abb321(15)*abb321(38)
      abb321(36)=abb321(36)+abb321(39)
      abb321(36)=spbl5k2*abb321(36)
      abb321(39)=spbl6k3*spak1l6
      abb321(40)=spbl5k3*spak1l5
      abb321(41)=abb321(39)-abb321(40)
      abb321(41)=abb321(41)*spak3k4
      abb321(42)=spbl6k2*spak2k4
      abb321(43)=abb321(42)*spak1l6
      abb321(44)=abb321(41)-abb321(43)
      abb321(45)=abb321(44)*abb321(25)
      abb321(29)=abb321(36)+abb321(45)+abb321(29)
      abb321(29)=spbl5k2*abb321(29)
      abb321(36)=spak3k4*spak1k2
      abb321(45)=2.0_ki*abb321(36)
      abb321(46)=spbl6l5*spal6k7
      abb321(47)=abb321(45)*abb321(46)
      abb321(48)=abb321(47)*spbk3k2
      abb321(49)=spbl5k3*abb321(26)
      abb321(50)=spak1k7*spak3k4
      abb321(51)=abb321(49)*abb321(50)
      abb321(52)=-abb321(48)+abb321(51)
      abb321(52)=abb321(15)*abb321(52)
      abb321(29)=abb321(29)+abb321(52)
      abb321(52)=abb321(4)*spbk3k2
      abb321(29)=abb321(29)*abb321(52)
      abb321(17)=abb321(17)+abb321(29)
      abb321(17)=abb321(9)*abb321(17)
      abb321(29)=spbl6k2*spak2l6
      abb321(53)=2.0_ki*abb321(29)
      abb321(54)=abb321(53)*spbk3k1
      abb321(55)=abb321(26)*spbk3k1
      abb321(56)=abb321(54)+abb321(55)
      abb321(56)=abb321(56)*spak1k7
      abb321(57)=abb321(53)*abb321(18)
      abb321(56)=abb321(56)+abb321(57)+abb321(28)
      abb321(58)=abb321(15)*spbl6k2
      abb321(59)=-abb321(58)*abb321(56)
      abb321(60)=abb321(24)*spbl5k2
      abb321(61)=-abb321(60)*abb321(16)
      abb321(62)=spbl6k2**2
      abb321(63)=abb321(62)*abb321(12)
      abb321(64)=abb321(25)*abb321(63)
      abb321(59)=abb321(61)+abb321(64)+abb321(59)
      abb321(61)=abb321(23)*abb321(6)
      abb321(59)=abb321(59)*abb321(61)
      abb321(64)=abb321(41)*spbl6k2
      abb321(65)=spak2k4*spak1l6
      abb321(62)=abb321(65)*abb321(62)
      abb321(62)=abb321(64)-abb321(62)
      abb321(25)=abb321(62)*abb321(25)
      abb321(64)=abb321(42)*spak2l6
      abb321(66)=2.0_ki*abb321(64)
      abb321(67)=abb321(66)+abb321(31)
      abb321(67)=abb321(67)*spbl6k2
      abb321(68)=abb321(26)+abb321(29)
      abb321(69)=2.0_ki*spak3k4
      abb321(70)=abb321(69)*spbl6k3
      abb321(71)=abb321(68)*abb321(70)
      abb321(67)=abb321(67)-abb321(71)
      abb321(71)=abb321(67)*abb321(15)
      abb321(72)=abb321(16)*abb321(33)
      abb321(71)=abb321(71)+abb321(72)
      abb321(71)=spak1k7*abb321(71)
      abb321(72)=spbl5k2*spak2k4
      abb321(73)=abb321(72)*spak1l5
      abb321(74)=abb321(73)*abb321(16)
      abb321(25)=abb321(74)+abb321(25)+abb321(71)
      abb321(25)=abb321(6)*abb321(25)
      abb321(71)=spbl6l5*spal5k7
      abb321(74)=abb321(71)*abb321(45)
      abb321(75)=spbk3k2*abb321(6)
      abb321(76)=abb321(74)*abb321(75)
      abb321(77)=abb321(50)*spbl5k2
      abb321(78)=abb321(77)*spbl6k3
      abb321(76)=abb321(78)+abb321(76)
      abb321(78)=-abb321(15)*abb321(76)
      abb321(79)=abb321(50)*spbl5k3
      abb321(80)=abb321(79)*abb321(58)
      abb321(25)=abb321(25)+abb321(80)+abb321(78)
      abb321(25)=abb321(25)*abb321(52)
      abb321(17)=abb321(17)+abb321(59)+abb321(25)
      abb321(17)=abb321(8)*abb321(17)
      abb321(25)=abb321(26)*abb321(42)
      abb321(59)=2.0_ki*spbl6k2
      abb321(49)=-abb321(59)*abb321(7)*abb321(49)
      abb321(78)=abb321(26)*spbl6k3
      abb321(49)=abb321(49)+abb321(78)
      abb321(49)=spak3k4*abb321(49)
      abb321(25)=abb321(25)+abb321(49)
      abb321(49)=spak1k7*abb321(2)
      abb321(80)=abb321(52)*abb321(6)
      abb321(25)=abb321(25)*abb321(80)*abb321(49)
      abb321(81)=-abb321(2)*abb321(51)
      abb321(82)=abb321(10)*abb321(26)
      abb321(83)=abb321(82)*abb321(70)
      abb321(83)=-abb321(31)+abb321(83)
      abb321(84)=abb321(49)*spbl5k2
      abb321(83)=abb321(83)*abb321(84)
      abb321(81)=abb321(81)+abb321(83)
      abb321(81)=abb321(81)*abb321(52)
      abb321(83)=abb321(27)*abb321(2)
      abb321(85)=abb321(83)*abb321(30)
      abb321(81)=abb321(85)+abb321(81)
      abb321(81)=abb321(9)*abb321(81)
      abb321(85)=abb321(27)*abb321(61)
      abb321(86)=abb321(2)*spbl6k2
      abb321(87)=-abb321(86)*abb321(85)
      abb321(25)=abb321(81)+abb321(87)+abb321(25)
      abb321(25)=abb321(8)*abb321(25)
      abb321(81)=abb321(4)*spbk3k2**2
      abb321(87)=abb321(36)*abb321(81)
      abb321(88)=abb321(6)**2
      abb321(89)=abb321(88)*abb321(7)
      abb321(90)=abb321(89)*abb321(87)
      abb321(16)=-abb321(16)*abb321(90)
      abb321(91)=abb321(87)*abb321(10)
      abb321(92)=abb321(91)*abb321(9)**2
      abb321(93)=spbl5k2*spak2k7
      abb321(94)=abb321(93)*abb321(15)
      abb321(95)=abb321(94)*abb321(92)
      abb321(16)=abb321(16)+abb321(95)
      abb321(95)=mB*abb321(8)
      abb321(16)=abb321(16)*abb321(95)
      abb321(16)=abb321(25)+abb321(16)
      abb321(16)=mB*abb321(16)
      abb321(16)=abb321(17)+abb321(16)
      abb321(16)=mB*abb321(16)
      abb321(17)=abb321(86)*abb321(20)
      abb321(25)=-abb321(46)*abb321(17)
      abb321(86)=abb321(20)*spbl5k2
      abb321(96)=abb321(2)*spbl6l5
      abb321(97)=abb321(96)*spal5k7
      abb321(98)=-abb321(97)*abb321(86)
      abb321(25)=abb321(98)+abb321(25)
      abb321(25)=abb321(25)*abb321(23)
      abb321(98)=abb321(42)*abb321(46)
      abb321(99)=-spbl6k3*spal6k7
      abb321(100)=-spbl5k3*spal5k7
      abb321(99)=abb321(99)+abb321(100)
      abb321(100)=spak3k4*spbl6l5
      abb321(99)=abb321(99)*abb321(100)
      abb321(98)=abb321(98)+abb321(99)
      abb321(98)=abb321(98)*abb321(49)
      abb321(99)=abb321(72)*spak1k7
      abb321(97)=abb321(99)*abb321(97)
      abb321(97)=abb321(98)+abb321(97)
      abb321(97)=abb321(97)*abb321(52)
      abb321(25)=abb321(25)+abb321(97)
      abb321(16)=2.0_ki*abb321(25)+abb321(16)
      abb321(25)=gW*TR
      abb321(25)=abb321(25)**2*abb321(5)*CVDU*c4*i_
      abb321(97)=4.0_ki*abb321(25)
      abb321(98)=abb321(1)*abb321(3)
      abb321(97)=abb321(97)*abb321(98)
      abb321(16)=abb321(16)*abb321(97)
      abb321(101)=abb321(60)*abb321(14)
      abb321(63)=abb321(63)*spak2k7
      abb321(63)=abb321(101)-abb321(63)
      abb321(56)=spbl6k2*abb321(56)
      abb321(56)=abb321(56)+abb321(63)
      abb321(56)=abb321(56)*abb321(61)
      abb321(62)=abb321(62)*spak2k7
      abb321(101)=abb321(73)*abb321(14)
      abb321(62)=abb321(101)+abb321(62)
      abb321(33)=abb321(33)*abb321(14)
      abb321(67)=-abb321(33)-abb321(67)
      abb321(67)=spak1k7*abb321(67)
      abb321(67)=abb321(67)-abb321(62)
      abb321(67)=abb321(6)*abb321(67)
      abb321(101)=abb321(79)*spbl6k2
      abb321(76)=abb321(101)-abb321(76)
      abb321(67)=abb321(67)-abb321(76)
      abb321(67)=abb321(67)*abb321(52)
      abb321(101)=abb321(24)*spak2k7
      abb321(101)=abb321(101)-abb321(22)
      abb321(101)=abb321(101)*spbl5k2
      abb321(102)=abb321(12)*abb321(14)
      abb321(101)=abb321(101)-abb321(102)
      abb321(103)=-abb321(27)+abb321(101)
      abb321(103)=abb321(103)*abb321(30)
      abb321(104)=abb321(35)*spak2k7
      abb321(104)=abb321(104)-abb321(38)
      abb321(104)=abb321(104)*spbl5k2
      abb321(105)=abb321(44)*spak2k7
      abb321(104)=abb321(104)+abb321(105)
      abb321(21)=abb321(32)*abb321(21)
      abb321(21)=abb321(21)+abb321(34)
      abb321(105)=abb321(31)-abb321(21)
      abb321(105)=spak1k7*abb321(105)
      abb321(105)=abb321(105)-abb321(104)
      abb321(105)=spbl5k2*abb321(105)
      abb321(105)=abb321(105)+abb321(48)
      abb321(105)=abb321(105)*abb321(52)
      abb321(103)=abb321(103)+abb321(105)
      abb321(103)=abb321(9)*abb321(103)
      abb321(56)=abb321(103)+abb321(56)+abb321(67)
      abb321(56)=abb321(8)*abb321(56)
      abb321(67)=abb321(90)*abb321(14)
      abb321(92)=abb321(92)*abb321(93)
      abb321(67)=abb321(67)-abb321(92)
      abb321(92)=abb321(67)*abb321(95)
      abb321(103)=abb321(6)*spak2k7
      abb321(105)=abb321(87)*abb321(103)
      abb321(106)=abb321(8)*abb321(9)
      abb321(107)=-abb321(2)*abb321(106)*abb321(105)
      abb321(92)=abb321(107)+abb321(92)
      abb321(92)=mB*abb321(92)
      abb321(56)=abb321(56)+abb321(92)
      abb321(56)=mB*abb321(56)
      abb321(92)=spak3k4*spbl6k3
      abb321(107)=-abb321(42)+abb321(92)
      abb321(84)=abb321(107)*abb321(52)*abb321(84)
      abb321(107)=abb321(17)*abb321(30)
      abb321(84)=abb321(107)+abb321(84)
      abb321(84)=abb321(8)*abb321(84)
      abb321(56)=abb321(84)+abb321(56)
      abb321(25)=abb321(25)*abb321(98)
      abb321(84)=8.0_ki*abb321(25)
      abb321(56)=abb321(56)*abb321(84)
      abb321(98)=abb321(26)*abb321(99)
      abb321(98)=abb321(98)-abb321(51)
      abb321(98)=abb321(98)*abb321(52)
      abb321(107)=abb321(27)*abb321(30)
      abb321(98)=abb321(98)-abb321(107)
      abb321(107)=abb321(95)*abb321(25)
      abb321(108)=8.0_ki*abb321(107)
      abb321(109)=abb321(108)*abb321(9)
      abb321(110)=-abb321(98)*abb321(109)
      abb321(111)=16.0_ki*abb321(107)
      abb321(98)=-abb321(9)*abb321(98)*abb321(111)
      abb321(112)=abb321(52)*spak1k4
      abb321(113)=abb321(112)*abb321(9)
      abb321(114)=abb321(94)*abb321(113)
      abb321(115)=abb321(103)*spbl6k2
      abb321(116)=abb321(115)*abb321(15)
      abb321(117)=abb321(116)*abb321(112)
      abb321(114)=abb321(114)+abb321(117)
      abb321(114)=abb321(114)*abb321(111)
      abb321(118)=abb321(113)*abb321(93)
      abb321(119)=abb321(115)*abb321(112)
      abb321(118)=abb321(118)+abb321(119)
      abb321(120)=abb321(118)*abb321(107)
      abb321(120)=32.0_ki*abb321(120)
      abb321(121)=-abb321(82)*abb321(52)*abb321(99)
      abb321(122)=abb321(82)*abb321(19)
      abb321(123)=abb321(10)*abb321(28)
      abb321(122)=abb321(123)+abb321(122)
      abb321(122)=abb321(122)*abb321(30)
      abb321(121)=abb321(122)+abb321(121)
      abb321(122)=2.0_ki*abb321(9)
      abb321(121)=abb321(121)*abb321(122)
      abb321(123)=abb321(37)*abb321(80)
      abb321(124)=-abb321(26)*abb321(123)
      abb321(85)=abb321(121)+abb321(85)+abb321(124)
      abb321(121)=abb321(95)*abb321(9)
      abb321(85)=abb321(85)*abb321(121)
      abb321(83)=abb321(83)*abb321(61)
      abb321(124)=abb321(26)*abb321(2)
      abb321(125)=-abb321(124)*abb321(123)
      abb321(83)=abb321(83)+abb321(125)
      abb321(83)=abb321(83)*abb321(106)
      abb321(83)=abb321(83)+abb321(85)
      abb321(83)=mB*abb321(83)
      abb321(85)=abb321(23)*abb321(20)
      abb321(125)=abb321(37)*abb321(52)
      abb321(85)=abb321(85)-abb321(125)
      abb321(126)=-abb321(122)*abb321(46)*abb321(85)
      abb321(127)=-abb321(15)*abb321(79)
      abb321(128)=2.0_ki*spak1k4
      abb321(129)=-abb321(94)*abb321(128)
      abb321(127)=abb321(127)+abb321(129)
      abb321(129)=abb321(52)*abb321(9)
      abb321(127)=abb321(127)*abb321(129)
      abb321(117)=-2.0_ki*abb321(117)+abb321(127)
      abb321(117)=abb321(8)*abb321(117)
      abb321(83)=abb321(83)+abb321(126)+abb321(117)
      abb321(117)=abb321(84)*mB
      abb321(83)=abb321(83)*abb321(117)
      abb321(126)=abb321(79)-abb321(99)
      abb321(127)=abb321(128)*abb321(93)
      abb321(128)=abb321(127)+abb321(126)
      abb321(128)=abb321(128)*abb321(52)
      abb321(130)=abb321(20)*abb321(30)
      abb321(128)=abb321(130)+abb321(128)
      abb321(128)=abb321(9)*abb321(128)
      abb321(119)=2.0_ki*abb321(119)
      abb321(128)=abb321(119)+abb321(128)
      abb321(128)=abb321(128)*abb321(111)
      abb321(18)=abb321(18)*abb321(29)
      abb321(29)=abb321(29)*spbk3k1
      abb321(29)=abb321(29)+abb321(55)
      abb321(55)=spak1k7*abb321(29)
      abb321(18)=abb321(55)+abb321(28)+abb321(18)
      abb321(18)=abb321(59)*abb321(18)
      abb321(18)=abb321(18)+abb321(63)
      abb321(18)=abb321(18)*abb321(61)
      abb321(55)=abb321(64)+abb321(31)
      abb321(63)=-abb321(55)*abb321(59)
      abb321(53)=spbl6k3*abb321(53)
      abb321(53)=3.0_ki*abb321(78)+abb321(53)
      abb321(53)=spak3k4*abb321(53)
      abb321(33)=-abb321(33)+abb321(63)+abb321(53)
      abb321(33)=spak1k7*abb321(33)
      abb321(33)=abb321(33)-abb321(62)
      abb321(33)=abb321(6)*abb321(33)
      abb321(33)=abb321(33)-abb321(76)
      abb321(33)=abb321(33)*abb321(52)
      abb321(53)=3.0_ki*abb321(31)-abb321(21)
      abb321(53)=spak1k7*abb321(53)
      abb321(53)=abb321(53)-abb321(104)
      abb321(53)=spbl5k2*abb321(53)
      abb321(48)=abb321(48)-2.0_ki*abb321(51)+abb321(53)
      abb321(48)=abb321(48)*abb321(52)
      abb321(51)=abb321(101)-3.0_ki*abb321(27)
      abb321(51)=abb321(51)*abb321(30)
      abb321(48)=abb321(51)+abb321(48)
      abb321(48)=abb321(9)*abb321(48)
      abb321(18)=abb321(48)+abb321(18)+abb321(33)
      abb321(18)=abb321(8)*abb321(18)
      abb321(33)=mB**2
      abb321(48)=abb321(33)*abb321(8)
      abb321(51)=abb321(67)*abb321(48)
      abb321(18)=abb321(18)+abb321(51)
      abb321(51)=mB*abb321(97)
      abb321(18)=abb321(18)*abb321(51)
      abb321(53)=abb321(118)*abb321(111)
      abb321(62)=abb321(79)+abb321(127)
      abb321(62)=abb321(62)*abb321(129)
      abb321(62)=abb321(119)+abb321(62)
      abb321(62)=abb321(62)*abb321(108)
      abb321(63)=abb321(126)*abb321(52)
      abb321(63)=abb321(63)+abb321(130)
      abb321(64)=abb321(2)*abb321(63)
      abb321(67)=abb321(87)*abb321(6)
      abb321(76)=abb321(15)*abb321(95)*abb321(67)
      abb321(64)=abb321(76)+abb321(64)
      abb321(64)=abb321(64)*abb321(97)
      abb321(76)=-abb321(108)*abb321(67)
      abb321(78)=4.0_ki*abb321(107)
      abb321(79)=-abb321(78)*abb321(67)
      abb321(101)=abb321(50)*spbk7k3
      abb321(41)=abb321(101)+abb321(41)
      abb321(41)=abb321(26)*abb321(41)
      abb321(104)=abb321(26)*spak1l6
      abb321(107)=-abb321(104)*abb321(42)
      abb321(118)=abb321(26)*spak1l5
      abb321(119)=abb321(118)*abb321(72)
      abb321(41)=abb321(119)+abb321(107)+abb321(41)
      abb321(41)=abb321(41)*abb321(52)
      abb321(104)=spbk3k1*abb321(104)
      abb321(107)=abb321(26)*spbk4k3
      abb321(119)=spak4l6*abb321(107)
      abb321(104)=abb321(104)+abb321(119)
      abb321(104)=spbl6k2*abb321(104)
      abb321(118)=-spbk3k1*abb321(118)
      abb321(107)=-spak4l5*abb321(107)
      abb321(107)=abb321(118)+abb321(107)
      abb321(107)=spbl5k2*abb321(107)
      abb321(104)=abb321(104)+abb321(107)
      abb321(104)=abb321(104)*abb321(23)
      abb321(41)=abb321(104)+abb321(41)
      abb321(41)=abb321(41)*abb321(106)
      abb321(27)=abb321(27)*abb321(23)
      abb321(104)=-abb321(26)*abb321(125)
      abb321(27)=abb321(27)+abb321(104)
      abb321(27)=abb321(9)*abb321(27)
      abb321(104)=abb321(7)*abb321(26)
      abb321(107)=abb321(104)*abb321(67)
      abb321(87)=-abb321(9)*abb321(82)*abb321(87)
      abb321(87)=abb321(107)+abb321(87)
      abb321(33)=abb321(33)*abb321(106)
      abb321(87)=abb321(87)*abb321(33)
      abb321(27)=abb321(87)+abb321(27)+abb321(41)
      abb321(27)=abb321(27)*abb321(51)
      abb321(41)=abb321(113)*abb321(111)
      abb321(87)=abb321(41)*abb321(26)
      abb321(70)=spak2l6*abb321(70)
      abb321(66)=-abb321(34)+abb321(70)-abb321(66)
      abb321(66)=spbk7l6*abb321(66)
      abb321(70)=abb321(26)*spbk7l6
      abb321(107)=spak2k4*abb321(70)
      abb321(66)=abb321(107)+abb321(66)
      abb321(66)=spak1k7*abb321(66)
      abb321(74)=spbk7k3*abb321(74)
      abb321(107)=abb321(36)*spbl6k3
      abb321(113)=abb321(42)*spak1k2
      abb321(118)=abb321(107)-abb321(113)
      abb321(119)=-abb321(118)*abb321(15)
      abb321(125)=-spak2k7*spbk7l6*abb321(44)
      abb321(126)=-spbk7l6*abb321(93)*abb321(35)
      abb321(66)=abb321(126)+abb321(66)+abb321(125)+abb321(74)+abb321(119)
      abb321(66)=abb321(6)*abb321(66)
      abb321(74)=spbl6k3*spbk7l5
      abb321(119)=spbl5k3*spbk7l6
      abb321(125)=abb321(74)-abb321(119)
      abb321(125)=spak3k4*abb321(125)
      abb321(42)=abb321(42)*spbk7l5
      abb321(125)=-abb321(42)+abb321(125)
      abb321(125)=spak1k7*abb321(125)
      abb321(126)=spbk7l6*abb321(99)
      abb321(66)=abb321(66)+abb321(125)+abb321(126)
      abb321(66)=abb321(66)*abb321(52)
      abb321(125)=spak2k4*spak1k2
      abb321(126)=abb321(15)*abb321(125)
      abb321(127)=spak2k7*spbk7l5
      abb321(35)=-abb321(127)*abb321(35)
      abb321(38)=spbk7l5*abb321(38)
      abb321(35)=abb321(38)+abb321(126)+abb321(35)
      abb321(35)=spbl5k2*abb321(35)
      abb321(38)=spbk7k3*abb321(47)
      abb321(47)=abb321(36)*spbl5k3
      abb321(126)=-abb321(15)*abb321(47)
      abb321(130)=-spak2k7*spbk7l5*abb321(44)
      abb321(21)=-spbk7l5*abb321(21)
      abb321(131)=abb321(26)*spbk7l5
      abb321(132)=spak2k4*abb321(131)
      abb321(21)=abb321(132)+abb321(21)
      abb321(21)=spak1k7*abb321(21)
      abb321(21)=abb321(35)+abb321(21)+abb321(130)+abb321(38)+abb321(126)
      abb321(21)=abb321(21)*abb321(52)
      abb321(22)=-spbk7l5*abb321(22)
      abb321(35)=spbk3k1*spak1k2
      abb321(38)=spak2k4*spbk4k3
      abb321(35)=abb321(35)-abb321(38)
      abb321(38)=-abb321(35)*abb321(15)
      abb321(126)=abb321(24)*abb321(127)
      abb321(22)=abb321(126)+abb321(38)+abb321(22)
      abb321(22)=spbl5k2*abb321(22)
      abb321(28)=abb321(102)+abb321(28)
      abb321(38)=-spbk7l5*abb321(28)
      abb321(102)=-abb321(131)*abb321(19)
      abb321(22)=abb321(22)+abb321(102)+abb321(38)
      abb321(22)=abb321(22)*abb321(23)
      abb321(21)=abb321(22)+abb321(21)
      abb321(21)=abb321(9)*abb321(21)
      abb321(22)=abb321(93)*abb321(24)
      abb321(22)=abb321(22)+abb321(57)-abb321(28)
      abb321(22)=spbk7l6*abb321(22)
      abb321(24)=-abb321(35)*abb321(58)
      abb321(28)=-spbk3k1*abb321(70)
      abb321(38)=spbk7l6*abb321(54)
      abb321(28)=abb321(28)+abb321(38)
      abb321(28)=spak1k7*abb321(28)
      abb321(22)=abb321(28)+abb321(24)+abb321(22)
      abb321(22)=abb321(6)*abb321(22)
      abb321(24)=spbl6k2*spbk7l5*abb321(20)
      abb321(28)=-spbk7l6*abb321(86)
      abb321(22)=abb321(22)+abb321(28)+abb321(24)
      abb321(22)=abb321(22)*abb321(23)
      abb321(21)=abb321(21)+abb321(22)+abb321(66)
      abb321(21)=abb321(8)*abb321(21)
      abb321(22)=abb321(35)*abb321(23)
      abb321(24)=abb321(88)*abb321(59)*abb321(104)*abb321(22)
      abb321(28)=-spbk7l5*abb321(7)
      abb321(38)=abb321(10)*spbk7l6
      abb321(28)=abb321(28)+abb321(38)
      abb321(28)=abb321(28)*abb321(105)
      abb321(38)=abb321(82)*abb321(125)
      abb321(54)=abb321(36)*spbk7k3
      abb321(57)=abb321(54)*spak2k7
      abb321(58)=-abb321(10)*abb321(57)
      abb321(38)=abb321(38)+abb321(58)
      abb321(38)=spbl5k2*abb321(38)
      abb321(58)=abb321(36)*spbk3k2
      abb321(59)=abb321(58)*abb321(10)
      abb321(66)=abb321(127)*abb321(59)
      abb321(38)=2.0_ki*abb321(38)+abb321(66)
      abb321(38)=abb321(38)*abb321(52)
      abb321(66)=abb321(35)*abb321(30)
      abb321(70)=-abb321(82)*abb321(66)
      abb321(38)=2.0_ki*abb321(70)+abb321(38)
      abb321(38)=abb321(9)*abb321(38)
      abb321(28)=abb321(28)+abb321(38)
      abb321(28)=abb321(9)*abb321(28)
      abb321(38)=-abb321(104)*abb321(113)
      abb321(14)=abb321(7)*abb321(14)*abb321(54)
      abb321(14)=abb321(38)+abb321(14)
      abb321(14)=abb321(14)*abb321(88)
      abb321(38)=-spak2k7*spbk7l6*abb321(89)*abb321(58)
      abb321(14)=2.0_ki*abb321(14)+abb321(38)
      abb321(14)=abb321(14)*abb321(52)
      abb321(14)=abb321(28)+abb321(24)+abb321(14)
      abb321(14)=abb321(14)*abb321(95)
      abb321(24)=abb321(107)*abb321(10)
      abb321(28)=3.0_ki*abb321(125)-abb321(24)
      abb321(28)=spbl5k2*abb321(28)
      abb321(38)=-spbl5k3*abb321(45)
      abb321(28)=abb321(38)+abb321(28)
      abb321(28)=abb321(2)*abb321(28)
      abb321(38)=abb321(125)*abb321(124)
      abb321(57)=-abb321(2)*abb321(57)
      abb321(38)=abb321(38)+abb321(57)
      abb321(57)=2.0_ki*abb321(6)
      abb321(38)=abb321(38)*abb321(57)
      abb321(58)=abb321(96)*abb321(59)
      abb321(28)=abb321(58)+abb321(38)+abb321(28)
      abb321(28)=abb321(28)*abb321(52)
      abb321(38)=abb321(57)*abb321(11)
      abb321(58)=-abb321(38)*abb321(26)
      abb321(59)=abb321(11)*spbl5k2
      abb321(58)=-3.0_ki*abb321(59)+abb321(58)
      abb321(58)=spak1k4*abb321(2)*abb321(35)*abb321(58)
      abb321(28)=abb321(58)+abb321(28)
      abb321(28)=abb321(9)*abb321(28)
      abb321(58)=-abb321(7)*abb321(36)*abb321(96)*abb321(75)
      abb321(70)=-spbl5k3*spbl6k2*abb321(7)
      abb321(70)=-2.0_ki*spbl6k3+abb321(70)
      abb321(70)=abb321(70)*abb321(36)
      abb321(70)=3.0_ki*abb321(113)+abb321(70)
      abb321(70)=abb321(6)*abb321(2)*abb321(70)
      abb321(58)=abb321(70)+abb321(58)
      abb321(58)=abb321(58)*abb321(52)
      abb321(70)=abb321(22)*spbl6k2
      abb321(89)=abb321(6)*abb321(70)
      abb321(102)=abb321(2)*abb321(89)
      abb321(28)=abb321(28)-3.0_ki*abb321(102)+abb321(58)
      abb321(58)=2.0_ki*abb321(8)
      abb321(28)=abb321(28)*abb321(58)
      abb321(14)=abb321(28)+abb321(14)
      abb321(14)=mB*abb321(14)
      abb321(28)=abb321(35)*abb321(61)
      abb321(35)=-abb321(80)*abb321(125)
      abb321(35)=abb321(28)+abb321(35)
      abb321(35)=abb321(71)*abb321(35)
      abb321(71)=-abb321(52)*abb321(125)
      abb321(22)=abb321(22)+abb321(71)
      abb321(22)=abb321(9)*abb321(46)*abb321(22)
      abb321(22)=abb321(22)+abb321(35)
      abb321(14)=abb321(14)+2.0_ki*abb321(22)+abb321(21)
      abb321(14)=mB*abb321(14)
      abb321(17)=spbk7l5*abb321(17)
      abb321(21)=abb321(2)*spbk7l6
      abb321(22)=abb321(21)*abb321(86)
      abb321(17)=3.0_ki*abb321(17)+abb321(22)
      abb321(17)=abb321(17)*abb321(23)
      abb321(22)=spbl6l5*spbk7k3
      abb321(22)=-2.0_ki*abb321(22)+3.0_ki*abb321(74)+abb321(119)
      abb321(22)=spak3k4*abb321(22)
      abb321(22)=-3.0_ki*abb321(42)+abb321(22)
      abb321(22)=abb321(22)*abb321(49)
      abb321(21)=-abb321(99)*abb321(21)
      abb321(21)=abb321(22)+abb321(21)
      abb321(21)=abb321(21)*abb321(52)
      abb321(17)=abb321(17)+abb321(21)
      abb321(17)=abb321(8)*abb321(17)
      abb321(21)=-abb321(96)*abb321(85)
      abb321(14)=abb321(14)+2.0_ki*abb321(21)+abb321(17)
      abb321(14)=abb321(14)*abb321(97)
      abb321(17)=abb321(72)*spak1k2
      abb321(21)=abb321(17)-abb321(47)
      abb321(22)=abb321(21)*abb321(52)
      abb321(22)=abb321(22)-abb321(66)
      abb321(35)=abb321(22)*abb321(9)
      abb321(42)=abb321(118)*abb321(80)
      abb321(35)=-abb321(89)+abb321(35)-abb321(42)
      abb321(42)=-abb321(35)*abb321(108)
      abb321(22)=-abb321(22)*abb321(109)
      abb321(47)=-abb321(35)*abb321(111)
      abb321(49)=spak1k4*abb321(127)
      abb321(71)=abb321(49)*abb321(129)
      abb321(74)=abb321(103)*spbk7l6
      abb321(86)=abb321(74)*abb321(112)
      abb321(71)=abb321(71)+abb321(86)
      abb321(71)=abb321(71)*abb321(95)
      abb321(89)=abb321(96)*abb321(112)
      abb321(99)=abb321(89)*abb321(58)
      abb321(71)=abb321(71)+abb321(99)
      abb321(25)=16.0_ki*abb321(25)
      abb321(25)=abb321(71)*abb321(25)
      abb321(71)=spbl6l5*spak4l6
      abb321(99)=spak4k7*spbk7l5
      abb321(71)=abb321(71)+abb321(99)
      abb321(71)=spbk4k3*abb321(71)
      abb321(13)=spbl6l5*abb321(13)
      abb321(19)=spbk7l5*abb321(19)
      abb321(13)=abb321(19)+abb321(13)+abb321(71)
      abb321(13)=abb321(13)*abb321(23)
      abb321(19)=-spbl6l5*abb321(65)
      abb321(37)=-spbk7l5*abb321(37)
      abb321(19)=abb321(49)+abb321(19)+abb321(37)
      abb321(19)=abb321(19)*abb321(52)
      abb321(13)=abb321(13)+abb321(19)
      abb321(13)=abb321(9)*abb321(13)
      abb321(13)=abb321(86)+abb321(13)
      abb321(13)=abb321(13)*abb321(58)
      abb321(19)=abb321(52)*abb321(118)
      abb321(19)=abb321(70)+abb321(19)
      abb321(19)=abb321(88)*abb321(7)*abb321(19)
      abb321(17)=abb321(52)*abb321(17)
      abb321(17)=-abb321(66)+abb321(17)
      abb321(17)=abb321(122)*abb321(10)*abb321(17)
      abb321(24)=abb321(80)*abb321(24)
      abb321(17)=abb321(24)+abb321(17)
      abb321(17)=abb321(9)*abb321(17)
      abb321(17)=2.0_ki*abb321(19)+abb321(17)
      abb321(17)=abb321(17)*abb321(48)
      abb321(13)=abb321(13)+abb321(17)
      abb321(13)=mB*abb321(13)
      abb321(17)=abb321(8)*abb321(89)
      abb321(13)=4.0_ki*abb321(17)+abb321(13)
      abb321(13)=abb321(13)*abb321(84)
      abb321(17)=abb321(35)*abb321(78)
      abb321(19)=-abb321(8)*abb321(54)
      abb321(19)=abb321(19)+abb321(125)
      abb321(19)=abb321(80)*abb321(19)
      abb321(19)=-abb321(28)+abb321(19)
      abb321(19)=abb321(19)*abb321(117)
      abb321(24)=-abb321(6)*abb321(66)
      abb321(21)=abb321(21)*abb321(80)
      abb321(21)=abb321(24)+abb321(21)
      abb321(21)=abb321(21)*abb321(108)
      abb321(24)=abb321(38)*abb321(68)
      abb321(24)=abb321(59)+abb321(24)
      abb321(24)=spak1k4*abb321(78)*spbk4k3*abb321(24)
      abb321(28)=spak1k4*spbk4k2
      abb321(35)=spbk3k2*spak1k3
      abb321(37)=abb321(28)+abb321(35)
      abb321(54)=abb321(37)*abb321(4)
      abb321(65)=-abb321(116)*abb321(54)
      abb321(66)=abb321(9)*abb321(4)
      abb321(68)=abb321(37)*abb321(66)
      abb321(70)=-abb321(94)*abb321(68)
      abb321(65)=abb321(65)+abb321(70)
      abb321(65)=abb321(65)*abb321(108)
      abb321(70)=abb321(115)*abb321(54)
      abb321(68)=abb321(93)*abb321(68)
      abb321(68)=abb321(70)+abb321(68)
      abb321(70)=abb321(68)*abb321(111)
      abb321(68)=abb321(68)*abb321(108)
      abb321(71)=abb321(109)*abb321(4)
      abb321(86)=-abb321(71)*abb321(26)*abb321(37)
      abb321(88)=abb321(58)*abb321(96)*abb321(54)
      abb321(54)=abb321(74)*abb321(54)
      abb321(35)=abb321(35)*abb321(127)
      abb321(89)=spbk4k2*abb321(49)
      abb321(35)=abb321(89)+abb321(35)
      abb321(35)=abb321(35)*abb321(66)
      abb321(35)=abb321(54)+abb321(35)
      abb321(35)=abb321(35)*abb321(95)
      abb321(35)=abb321(88)+abb321(35)
      abb321(35)=abb321(35)*abb321(84)
      abb321(54)=abb321(46)*abb321(26)
      abb321(66)=2.0_ki*abb321(54)
      abb321(84)=abb321(66)+abb321(94)
      abb321(88)=abb321(23)*spbk4k3
      abb321(89)=abb321(84)*abb321(88)
      abb321(99)=spak1k4*spbk4k3
      abb321(102)=spbk3k2*spak1k2
      abb321(104)=abb321(99)+abb321(102)
      abb321(105)=2.0_ki*abb321(4)
      abb321(107)=abb321(104)*abb321(105)
      abb321(112)=abb321(94)*abb321(107)
      abb321(89)=abb321(89)+abb321(112)
      abb321(89)=abb321(9)*abb321(89)
      abb321(112)=abb321(88)+abb321(107)
      abb321(112)=abb321(116)*abb321(112)
      abb321(89)=abb321(89)+abb321(112)
      abb321(89)=abb321(8)*abb321(89)
      abb321(112)=abb321(82)*abb321(93)
      abb321(113)=abb321(112)*abb321(122)
      abb321(118)=abb321(26)*abb321(103)
      abb321(119)=-abb321(118)-abb321(113)
      abb321(119)=abb321(121)*abb321(119)
      abb321(125)=abb321(124)*abb321(103)
      abb321(126)=abb321(125)*abb321(106)
      abb321(119)=-abb321(126)+abb321(119)
      abb321(119)=mB*abb321(88)*abb321(119)
      abb321(89)=abb321(89)+abb321(119)
      abb321(89)=abb321(89)*abb321(51)
      abb321(119)=abb321(88)*abb321(93)
      abb321(130)=abb321(104)*abb321(93)
      abb321(131)=-abb321(4)*abb321(130)
      abb321(131)=-abb321(119)+abb321(131)
      abb321(131)=abb321(9)*abb321(131)
      abb321(132)=abb321(88)*abb321(115)
      abb321(133)=abb321(104)*abb321(115)
      abb321(134)=-abb321(4)*abb321(133)
      abb321(131)=abb321(131)-abb321(132)+abb321(134)
      abb321(131)=abb321(131)*abb321(111)
      abb321(130)=-abb321(130)*abb321(105)
      abb321(119)=-abb321(119)+abb321(130)
      abb321(119)=abb321(9)*abb321(119)
      abb321(105)=-abb321(133)*abb321(105)
      abb321(105)=abb321(119)-abb321(132)+abb321(105)
      abb321(105)=abb321(105)*abb321(78)
      abb321(104)=abb321(104)*abb321(4)
      abb321(119)=abb321(104)+abb321(88)
      abb321(130)=abb321(109)*abb321(26)*abb321(119)
      abb321(132)=2.0_ki*abb321(127)
      abb321(133)=-abb321(88)*abb321(132)
      abb321(102)=-abb321(102)*abb321(127)
      abb321(49)=-spbk4k3*abb321(49)
      abb321(49)=abb321(49)+abb321(102)
      abb321(49)=abb321(4)*abb321(49)
      abb321(49)=abb321(133)+abb321(49)
      abb321(49)=abb321(49)*abb321(122)
      abb321(102)=spbl6l5+4.0_ki*abb321(74)
      abb321(133)=-abb321(102)*abb321(88)
      abb321(107)=-abb321(74)*abb321(107)
      abb321(49)=abb321(49)+abb321(133)+abb321(107)
      abb321(49)=abb321(49)*abb321(95)
      abb321(104)=-3.0_ki*abb321(88)-4.0_ki*abb321(104)
      abb321(104)=abb321(8)*abb321(96)*abb321(104)
      abb321(49)=abb321(104)+abb321(49)
      abb321(49)=abb321(49)*abb321(97)
      abb321(104)=-abb321(63)*abb321(109)
      abb321(107)=-abb321(9)*abb321(51)*spal6k7*abb321(63)
      abb321(133)=abb321(12)*spbl6k2
      abb321(134)=-abb321(133)+abb321(60)
      abb321(134)=abb321(134)*abb321(61)
      abb321(44)=-abb321(73)-abb321(101)-abb321(44)
      abb321(44)=abb321(44)*abb321(80)
      abb321(12)=-abb321(12)*abb321(30)
      abb321(30)=abb321(32)-abb321(72)
      abb321(32)=-abb321(52)*spak1l6*abb321(30)
      abb321(12)=abb321(12)+abb321(32)
      abb321(12)=abb321(9)*abb321(12)
      abb321(12)=abb321(12)+abb321(134)+abb321(44)
      abb321(12)=abb321(8)*abb321(12)
      abb321(32)=abb321(10)*abb321(122)*abb321(67)
      abb321(32)=abb321(90)+abb321(32)
      abb321(32)=abb321(32)*abb321(48)
      abb321(20)=-abb321(20)*abb321(61)
      abb321(12)=abb321(32)+abb321(12)+abb321(20)+abb321(123)
      abb321(12)=abb321(12)*abb321(51)
      abb321(20)=spak1k4*abb321(111)*abb321(80)
      abb321(28)=abb321(6)*abb321(28)
      abb321(32)=spak1k3*abb321(75)
      abb321(28)=abb321(28)+abb321(32)
      abb321(28)=abb321(4)*abb321(28)*abb321(108)
      abb321(32)=-abb321(6)*abb321(99)
      abb321(44)=-spak1k2*abb321(75)
      abb321(32)=abb321(32)+abb321(44)
      abb321(32)=abb321(4)*abb321(32)
      abb321(44)=-abb321(6)*abb321(88)
      abb321(32)=abb321(44)+abb321(32)
      abb321(32)=abb321(32)*abb321(108)
      abb321(44)=-abb321(9)*abb321(117)*spal5k7*abb321(63)
      abb321(39)=-abb321(39)-abb321(40)
      abb321(39)=spak3k4*abb321(39)
      abb321(39)=abb321(73)-abb321(101)+abb321(43)+abb321(39)
      abb321(39)=abb321(39)*abb321(52)
      abb321(40)=-abb321(133)-abb321(60)
      abb321(40)=abb321(40)*abb321(23)
      abb321(39)=abb321(40)+abb321(39)
      abb321(39)=abb321(39)*abb321(106)
      abb321(40)=-abb321(9)*abb321(85)
      abb321(43)=-abb321(7)*abb321(67)
      abb321(48)=abb321(9)*abb321(91)
      abb321(43)=abb321(43)+abb321(48)
      abb321(43)=abb321(43)*abb321(33)
      abb321(39)=abb321(43)+abb321(40)+abb321(39)
      abb321(39)=abb321(39)*abb321(51)
      abb321(37)=abb321(37)*abb321(71)
      abb321(40)=-abb321(119)*abb321(109)
      abb321(43)=abb321(50)*abb321(80)
      abb321(48)=abb321(124)*abb321(106)*abb321(43)
      abb321(43)=abb321(26)*abb321(43)
      abb321(60)=abb321(77)*abb321(129)
      abb321(61)=abb321(82)*abb321(60)
      abb321(43)=abb321(43)+2.0_ki*abb321(61)
      abb321(43)=abb321(43)*abb321(121)
      abb321(43)=abb321(48)+abb321(43)
      abb321(43)=mB*abb321(43)
      abb321(46)=abb321(50)*abb321(46)*abb321(129)
      abb321(48)=abb321(8)*abb321(15)*abb321(60)
      abb321(43)=abb321(43)-2.0_ki*abb321(46)+abb321(48)
      abb321(43)=abb321(43)*abb321(51)
      abb321(46)=-abb321(78)*abb321(60)
      abb321(48)=spak1l6*abb321(100)
      abb321(50)=spbk7l5*abb321(50)
      abb321(48)=abb321(48)+abb321(50)
      abb321(48)=abb321(48)*abb321(129)*abb321(58)
      abb321(36)=-abb321(36)*abb321(80)
      abb321(45)=-spbl5k2*abb321(10)*abb321(129)*abb321(45)
      abb321(36)=abb321(36)+abb321(45)
      abb321(33)=abb321(36)*abb321(33)
      abb321(33)=abb321(48)+abb321(33)
      abb321(33)=abb321(33)*abb321(51)
      abb321(36)=spak3k4*abb321(78)*abb321(103)*abb321(81)
      abb321(15)=abb321(15)*abb321(36)
      abb321(45)=spak2l6*abb321(92)
      abb321(34)=abb321(34)+abb321(45)-abb321(55)
      abb321(34)=abb321(34)*abb321(57)
      abb321(30)=abb321(34)+abb321(30)
      abb321(30)=abb321(30)*abb321(52)
      abb321(29)=abb321(29)*abb321(38)
      abb321(34)=spbk3k1*abb321(59)
      abb321(29)=abb321(34)+abb321(29)
      abb321(29)=spak1k4*abb321(29)
      abb321(29)=abb321(29)+abb321(30)
      abb321(29)=abb321(29)*abb321(78)
      abb321(30)=abb321(54)*abb321(69)
      abb321(34)=-spak3k4*abb321(94)
      abb321(30)=abb321(30)+abb321(34)
      abb321(30)=abb321(30)*abb321(129)
      abb321(34)=abb321(52)*spak3k4
      abb321(38)=-abb321(116)*abb321(34)
      abb321(30)=abb321(38)+abb321(30)
      abb321(30)=abb321(8)*abb321(30)
      abb321(38)=-abb321(129)*abb321(69)*abb321(112)
      abb321(45)=-abb321(34)*abb321(118)
      abb321(38)=abb321(45)+abb321(38)
      abb321(38)=abb321(38)*abb321(121)
      abb321(45)=abb321(129)*spak3k4
      abb321(48)=-abb321(8)*abb321(125)*abb321(45)
      abb321(38)=abb321(48)+abb321(38)
      abb321(38)=mB*abb321(38)
      abb321(30)=abb321(30)+abb321(38)
      abb321(30)=abb321(30)*abb321(51)
      abb321(38)=abb321(115)*abb321(34)
      abb321(45)=abb321(93)*abb321(45)
      abb321(38)=abb321(38)+abb321(45)
      abb321(38)=abb321(38)*abb321(78)
      abb321(45)=-abb321(74)*abb321(69)
      abb321(45)=-abb321(100)+abb321(45)
      abb321(45)=abb321(45)*abb321(52)
      abb321(48)=abb321(52)*abb321(127)
      abb321(50)=-spak3k4*abb321(122)*abb321(48)
      abb321(45)=abb321(45)+abb321(50)
      abb321(45)=abb321(45)*abb321(95)
      abb321(50)=abb321(96)*abb321(8)
      abb321(34)=abb321(34)*abb321(50)
      abb321(34)=abb321(34)+abb321(45)
      abb321(34)=abb321(34)*abb321(97)
      abb321(23)=abb321(23)*spbk3k1
      abb321(45)=abb321(84)*abb321(23)
      abb321(54)=-abb321(66)+abb321(94)
      abb321(55)=abb321(52)*spak2k4
      abb321(54)=abb321(54)*abb321(55)
      abb321(45)=abb321(45)+abb321(54)
      abb321(45)=abb321(9)*abb321(45)
      abb321(54)=abb321(55)+abb321(23)
      abb321(57)=abb321(116)*abb321(54)
      abb321(45)=abb321(45)+abb321(57)
      abb321(45)=abb321(8)*abb321(45)
      abb321(31)=abb321(52)*abb321(103)*abb321(31)
      abb321(52)=abb321(55)-abb321(23)
      abb321(57)=abb321(52)*abb321(113)
      abb321(58)=-abb321(23)*abb321(118)
      abb321(31)=abb321(57)+abb321(58)+abb321(31)
      abb321(31)=abb321(31)*abb321(121)
      abb321(52)=abb321(52)*abb321(126)
      abb321(31)=abb321(52)+abb321(31)
      abb321(31)=mB*abb321(31)
      abb321(31)=abb321(45)+abb321(31)
      abb321(31)=abb321(31)*abb321(51)
      abb321(45)=abb321(93)*abb321(9)
      abb321(45)=abb321(45)+abb321(115)
      abb321(51)=-abb321(111)*abb321(23)*abb321(45)
      abb321(45)=-abb321(78)*abb321(54)*abb321(45)
      abb321(52)=abb321(109)*abb321(23)
      abb321(26)=abb321(26)*abb321(52)
      abb321(54)=-abb321(23)*abb321(132)
      abb321(48)=spak2k4*abb321(48)
      abb321(48)=abb321(54)+abb321(48)
      abb321(48)=abb321(48)*abb321(122)
      abb321(54)=-abb321(102)*abb321(23)
      abb321(57)=spbl6l5+2.0_ki*abb321(74)
      abb321(57)=abb321(57)*abb321(55)
      abb321(48)=abb321(48)+abb321(54)+abb321(57)
      abb321(48)=abb321(48)*abb321(95)
      abb321(54)=-3.0_ki*abb321(23)-abb321(55)
      abb321(50)=abb321(54)*abb321(50)
      abb321(48)=abb321(50)+abb321(48)
      abb321(48)=abb321(48)*abb321(97)
      abb321(23)=-abb321(6)*abb321(108)*abb321(23)
      R2d321=0.0_ki
      rat2 = rat2 + R2d321
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='321' value='", &
          & R2d321, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd321h7