module     p0_dbaru_epnebbbarg_abbrevd67h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(136), public :: abb67
   complex(ki), public :: R2d67
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
      abb67(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb67(2)=sqrt2**(-1)
      abb67(3)=es56**(-1)
      abb67(4)=spbl5k2**(-1)
      abb67(5)=spak2k7**(-1)
      abb67(6)=spbl6k2**(-1)
      abb67(7)=TR*gW
      abb67(7)=CVDU*i_*mB*abb67(5)*abb67(2)*abb67(1)*abb67(7)**2
      abb67(8)=abb67(7)*abb67(3)
      abb67(9)=abb67(8)*abb67(4)
      abb67(10)=abb67(9)*spak1k4
      abb67(11)=spbk7k2**2
      abb67(12)=abb67(10)*abb67(11)
      abb67(13)=NC*c3
      abb67(14)=-c4+abb67(13)+c2
      abb67(15)=-abb67(12)*abb67(14)
      abb67(16)=spak2l6*spak1k7
      abb67(17)=abb67(15)*abb67(16)
      abb67(18)=abb67(8)*abb67(6)
      abb67(19)=abb67(18)*spak1k4
      abb67(20)=abb67(19)*abb67(11)
      abb67(21)=-abb67(20)*abb67(14)
      abb67(22)=spak2l5*spak1k7
      abb67(23)=abb67(21)*abb67(22)
      abb67(24)=spbk7k2*abb67(8)
      abb67(25)=abb67(24)*spak1k4
      abb67(26)=-abb67(25)*abb67(14)
      abb67(27)=spak1l5*spak2l6
      abb67(28)=abb67(26)*abb67(27)
      abb67(17)=-abb67(28)+abb67(17)+abb67(23)
      abb67(13)=abb67(13)+c2-c4
      abb67(23)=-spak1k2*abb67(13)
      abb67(28)=-abb67(23)*spal6k7
      abb67(12)=abb67(12)*abb67(28)
      abb67(29)=-abb67(23)*spal5k7
      abb67(20)=abb67(20)*abb67(29)
      abb67(12)=abb67(12)+abb67(20)
      abb67(20)=abb67(26)*spak2l5
      abb67(30)=2.0_ki*spak1l6
      abb67(31)=abb67(20)*abb67(30)
      abb67(31)=abb67(31)+3.0_ki*abb67(12)-2.0_ki*abb67(17)
      abb67(31)=spbk3k1*abb67(31)
      abb67(26)=abb67(26)*spbk4k3
      abb67(32)=abb67(26)*spak2l5
      abb67(33)=spak4l6*abb67(32)
      abb67(26)=abb67(26)*spak2l6
      abb67(34)=spak4l5*abb67(26)
      abb67(33)=abb67(33)+abb67(34)
      abb67(31)=abb67(31)+2.0_ki*abb67(33)
      abb67(31)=es71*abb67(31)
      abb67(33)=spbk4k3*spbk7k1
      abb67(34)=abb67(12)*abb67(33)
      abb67(35)=abb67(15)*spak2l6
      abb67(36)=abb67(21)*spak2l5
      abb67(35)=abb67(35)+abb67(36)
      abb67(35)=abb67(35)*spbk4k3
      abb67(36)=2.0_ki*es71
      abb67(37)=-abb67(36)*abb67(35)
      abb67(34)=abb67(34)+abb67(37)
      abb67(34)=spak4k7*abb67(34)
      abb67(37)=spbk3k1*spbk7k1
      abb67(38)=abb67(37)*spak1l6
      abb67(39)=abb67(33)*spak4l6
      abb67(38)=abb67(38)+abb67(39)
      abb67(40)=abb67(25)*abb67(4)
      abb67(41)=-abb67(40)*abb67(23)
      abb67(42)=abb67(41)*spal6k7
      abb67(43)=abb67(42)*abb67(38)
      abb67(44)=-abb67(40)*abb67(14)
      abb67(45)=abb67(44)*spak2l6
      abb67(46)=spak1l6*abb67(45)*spbk3k1
      abb67(47)=abb67(45)*spbk4k3
      abb67(48)=spak4l6*abb67(47)
      abb67(48)=abb67(46)+abb67(48)
      abb67(48)=abb67(48)*abb67(36)
      abb67(43)=abb67(48)+abb67(43)
      abb67(43)=spbl6k2*abb67(43)
      abb67(48)=abb67(37)*spak1l5
      abb67(49)=abb67(33)*spak4l5
      abb67(48)=abb67(48)+abb67(49)
      abb67(50)=abb67(25)*abb67(6)
      abb67(51)=-abb67(50)*abb67(23)
      abb67(52)=abb67(51)*spal5k7
      abb67(53)=abb67(52)*abb67(48)
      abb67(54)=-abb67(50)*abb67(14)
      abb67(55)=abb67(54)*spak2l5
      abb67(56)=spak1l5*abb67(55)*spbk3k1
      abb67(57)=abb67(55)*spbk4k3
      abb67(58)=spak4l5*abb67(57)
      abb67(58)=abb67(56)+abb67(58)
      abb67(58)=abb67(58)*abb67(36)
      abb67(53)=abb67(58)+abb67(53)
      abb67(53)=spbl5k2*abb67(53)
      abb67(58)=spak1l6*spal5k7
      abb67(59)=spak1l5*spal6k7
      abb67(58)=abb67(58)+abb67(59)
      abb67(59)=abb67(37)*abb67(58)
      abb67(39)=spal5k7*abb67(39)
      abb67(49)=spal6k7*abb67(49)
      abb67(39)=abb67(59)+abb67(49)+abb67(39)
      abb67(25)=-abb67(39)*abb67(25)*abb67(23)
      abb67(15)=abb67(15)*spal6k7
      abb67(21)=abb67(21)*spal5k7
      abb67(15)=abb67(15)+abb67(21)
      abb67(21)=4.0_ki*spak2k4
      abb67(39)=spbk4k3*abb67(21)*es71
      abb67(49)=abb67(15)*abb67(39)
      abb67(25)=abb67(49)+abb67(53)+abb67(43)+abb67(34)+abb67(31)+abb67(25)
      abb67(25)=2.0_ki*abb67(25)
      abb67(31)=spal6k7*spbk3k2
      abb67(34)=abb67(41)*abb67(31)
      abb67(43)=spal5k7*spbk3k2
      abb67(49)=abb67(51)*abb67(43)
      abb67(34)=abb67(34)+abb67(49)
      abb67(34)=abb67(34)*spbk7k1
      abb67(49)=-spbk7k3*abb67(13)
      abb67(53)=-abb67(40)*abb67(49)
      abb67(59)=abb67(53)*spal6k7
      abb67(60)=-abb67(50)*abb67(49)
      abb67(61)=abb67(60)*spal5k7
      abb67(59)=abb67(59)+abb67(61)
      abb67(61)=abb67(59)*es12
      abb67(34)=abb67(34)+abb67(61)
      abb67(45)=abb67(45)+abb67(55)
      abb67(55)=spbk3k2*abb67(45)
      abb67(61)=abb67(55)*abb67(36)
      abb67(62)=abb67(53)*abb67(16)
      abb67(63)=abb67(60)*abb67(22)
      abb67(62)=abb67(62)+abb67(63)
      abb67(62)=2.0_ki*abb67(62)
      abb67(63)=abb67(62)*spbk2k1
      abb67(61)=abb67(61)+abb67(63)
      abb67(13)=-abb67(13)*spbk7k3*spak1k2
      abb67(63)=abb67(24)*abb67(4)
      abb67(64)=-abb67(63)*abb67(13)
      abb67(65)=abb67(64)*spal6k7
      abb67(66)=abb67(24)*abb67(6)
      abb67(67)=-abb67(66)*abb67(13)
      abb67(68)=abb67(67)*spal5k7
      abb67(69)=abb67(65)+abb67(68)
      abb67(70)=spbk3k2*abb67(69)
      abb67(71)=-abb67(63)*abb67(49)
      abb67(72)=abb67(71)*abb67(16)
      abb67(73)=-abb67(66)*abb67(49)
      abb67(74)=abb67(73)*abb67(22)
      abb67(75)=abb67(72)+abb67(74)
      abb67(76)=spbk3k2*abb67(75)
      abb67(76)=2.0_ki*abb67(76)
      abb67(77)=abb67(76)-abb67(70)
      abb67(77)=spak3k4*abb67(77)
      abb67(77)=abb67(77)+abb67(61)-abb67(34)
      abb67(77)=4.0_ki*abb67(77)
      abb67(70)=abb67(70)+abb67(76)
      abb67(70)=abb67(70)*spak3k4
      abb67(70)=abb67(70)+abb67(34)+abb67(61)
      abb67(70)=4.0_ki*abb67(70)
      abb67(78)=abb67(11)*abb67(9)
      abb67(79)=abb67(78)*spal6k7
      abb67(80)=abb67(11)*abb67(18)
      abb67(81)=spal5k7*abb67(80)
      abb67(79)=-abb67(81)-abb67(79)
      abb67(79)=-abb67(13)*abb67(79)
      abb67(81)=-abb67(80)*abb67(49)
      abb67(82)=abb67(81)*abb67(22)
      abb67(83)=-abb67(78)*abb67(49)
      abb67(84)=abb67(83)*abb67(16)
      abb67(82)=abb67(82)+abb67(84)
      abb67(79)=2.0_ki*abb67(82)+abb67(79)
      abb67(82)=abb67(79)*spak4k7
      abb67(84)=abb67(24)*spbk7k3
      abb67(85)=-abb67(84)*abb67(23)
      abb67(86)=abb67(85)*spal6k7
      abb67(84)=-abb67(84)*abb67(14)
      abb67(84)=2.0_ki*abb67(84)
      abb67(87)=abb67(84)*abb67(16)
      abb67(86)=abb67(86)-abb67(87)
      abb67(87)=abb67(86)*spak4l5
      abb67(85)=abb67(85)*spal5k7
      abb67(84)=abb67(84)*abb67(22)
      abb67(84)=abb67(85)-abb67(84)
      abb67(85)=abb67(84)*spak4l6
      abb67(68)=abb67(68)+2.0_ki*abb67(74)
      abb67(74)=spbl5k2*spak4l5
      abb67(88)=abb67(68)*abb67(74)
      abb67(65)=abb67(65)+2.0_ki*abb67(72)
      abb67(72)=spbl6k2*spak4l6
      abb67(89)=abb67(65)*abb67(72)
      abb67(90)=spal5k7*spak1k7
      abb67(81)=abb67(81)*abb67(90)
      abb67(91)=spal6k7*spak1k7
      abb67(83)=abb67(83)*abb67(91)
      abb67(81)=abb67(81)+abb67(83)
      abb67(83)=abb67(81)*abb67(21)
      abb67(82)=abb67(87)+abb67(85)+abb67(88)+abb67(89)+abb67(83)-abb67(82)
      abb67(82)=4.0_ki*abb67(82)
      abb67(83)=-abb67(63)*abb67(14)
      abb67(85)=spbk7k3**2
      abb67(87)=abb67(83)*abb67(85)
      abb67(88)=-abb67(87)*abb67(91)
      abb67(89)=-abb67(66)*abb67(14)
      abb67(92)=abb67(89)*abb67(85)
      abb67(93)=-abb67(92)*abb67(90)
      abb67(88)=abb67(88)+abb67(93)
      abb67(93)=16.0_ki*spak3k4
      abb67(88)=abb67(88)*abb67(93)
      abb67(20)=abb67(20)*spak1l6
      abb67(12)=abb67(20)+2.0_ki*abb67(12)-abb67(17)
      abb67(12)=abb67(12)*spbk3k1
      abb67(15)=abb67(15)*spbk4k3
      abb67(15)=abb67(15)+2.0_ki*abb67(81)
      abb67(17)=2.0_ki*spak2k4
      abb67(15)=abb67(15)*abb67(17)
      abb67(20)=abb67(35)+abb67(79)
      abb67(20)=abb67(20)*spak4k7
      abb67(35)=abb67(57)+abb67(68)
      abb67(35)=abb67(35)*spak4l5
      abb67(35)=abb67(35)+abb67(56)
      abb67(35)=abb67(35)*spbl5k2
      abb67(47)=abb67(47)+abb67(65)
      abb67(47)=abb67(47)*spak4l6
      abb67(46)=abb67(47)+abb67(46)
      abb67(46)=abb67(46)*spbl6k2
      abb67(26)=abb67(26)+abb67(86)
      abb67(26)=abb67(26)*spak4l5
      abb67(32)=abb67(32)+abb67(84)
      abb67(32)=abb67(32)*spak4l6
      abb67(12)=abb67(32)+abb67(12)+abb67(35)+abb67(46)+abb67(15)-abb67(20)+abb&
      &67(26)
      abb67(15)=4.0_ki*abb67(12)
      abb67(20)=8.0_ki*abb67(55)
      abb67(26)=-16.0_ki*abb67(59)
      abb67(32)=3.0_ki*abb67(69)
      abb67(35)=-spbk3k2*abb67(32)
      abb67(35)=-abb67(76)+abb67(35)
      abb67(35)=spak3k4*abb67(35)
      abb67(12)=abb67(35)-abb67(61)-abb67(12)-3.0_ki*abb67(34)
      abb67(12)=2.0_ki*abb67(12)
      abb67(34)=4.0_ki*abb67(55)
      abb67(35)=8.0_ki*abb67(59)
      abb67(46)=2.0_ki*abb67(55)
      abb67(47)=-abb67(63)*abb67(23)
      abb67(55)=abb67(47)*spal6k7
      abb67(56)=-abb67(66)*abb67(23)
      abb67(57)=abb67(56)*spal5k7
      abb67(59)=abb67(55)+abb67(57)
      abb67(61)=-abb67(85)*abb67(59)
      abb67(63)=-abb67(87)*abb67(16)
      abb67(66)=-abb67(92)*abb67(22)
      abb67(63)=abb67(63)+abb67(66)
      abb67(61)=2.0_ki*abb67(63)+abb67(61)
      abb67(61)=2.0_ki*spak3k4*abb67(61)
      abb67(63)=abb67(53)*spak2l6
      abb67(66)=abb67(60)*spak2l5
      abb67(63)=abb67(63)+abb67(66)
      abb67(66)=-4.0_ki*abb67(63)
      abb67(63)=2.0_ki*abb67(63)
      abb67(75)=2.0_ki*abb67(75)
      abb67(69)=abb67(69)+abb67(75)
      abb67(69)=abb67(69)*spak3k4
      abb67(42)=abb67(42)+abb67(52)
      abb67(52)=abb67(42)*spbk7k1
      abb67(76)=abb67(45)*abb67(36)
      abb67(52)=abb67(76)+abb67(69)+abb67(52)
      abb67(69)=-spbl6k3*abb67(52)
      abb67(79)=3.0_ki*spak4k7
      abb67(87)=abb67(79)*abb67(33)
      abb67(92)=es71*spbk3k1
      abb67(87)=abb67(92)+abb67(87)
      abb67(92)=-abb67(41)*abb67(87)
      abb67(94)=abb67(8)*spak1k2
      abb67(95)=abb67(14)*abb67(94)
      abb67(96)=-spak1k4*abb67(95)
      abb67(97)=-abb67(96)*abb67(48)
      abb67(98)=-abb67(10)*abb67(23)
      abb67(99)=spbl6k2*abb67(98)*abb67(38)
      abb67(40)=spal6k7*abb67(40)
      abb67(50)=spal5k7*abb67(50)
      abb67(40)=abb67(40)+abb67(50)
      abb67(40)=abb67(13)*abb67(40)
      abb67(40)=-abb67(62)+abb67(40)
      abb67(50)=-spbl6k1*abb67(40)
      abb67(62)=-abb67(44)*abb67(39)
      abb67(50)=abb67(50)+abb67(69)+abb67(62)+abb67(99)+abb67(97)+abb67(92)
      abb67(50)=2.0_ki*abb67(50)
      abb67(62)=-abb67(9)*abb67(13)
      abb67(69)=spak3k4*spbk3k2
      abb67(92)=abb67(69)*abb67(62)
      abb67(97)=spbk7k1*spbk3k2
      abb67(99)=abb67(97)*abb67(98)
      abb67(100)=-abb67(10)*abb67(49)
      abb67(101)=abb67(100)*es12
      abb67(92)=abb67(101)+abb67(92)+abb67(99)
      abb67(99)=12.0_ki*abb67(92)
      abb67(101)=4.0_ki*abb67(92)
      abb67(102)=abb67(72)*abb67(62)
      abb67(64)=abb67(79)*abb67(64)
      abb67(94)=-abb67(94)*abb67(49)
      abb67(103)=abb67(94)*spak4l5
      abb67(64)=abb67(103)+abb67(102)-abb67(64)
      abb67(102)=abb67(21)*spak1k7
      abb67(103)=abb67(102)*abb67(71)
      abb67(103)=abb67(103)-abb67(64)
      abb67(103)=4.0_ki*abb67(103)
      abb67(93)=abb67(85)*abb67(93)*spak1k7
      abb67(104)=-abb67(9)*abb67(14)
      abb67(105)=abb67(104)*abb67(93)
      abb67(106)=abb67(44)*spbk4k3
      abb67(107)=2.0_ki*spak1k7
      abb67(108)=abb67(71)*abb67(107)
      abb67(106)=abb67(106)+abb67(108)
      abb67(106)=abb67(106)*abb67(17)
      abb67(108)=abb67(45)*spbl6k3
      abb67(109)=2.0_ki*spbk3k1
      abb67(41)=abb67(109)*abb67(41)
      abb67(41)=-abb67(64)+abb67(106)+abb67(108)+abb67(41)
      abb67(64)=-4.0_ki*abb67(41)
      abb67(106)=16.0_ki*abb67(100)
      abb67(41)=abb67(92)+abb67(41)
      abb67(41)=2.0_ki*abb67(41)
      abb67(92)=-8.0_ki*abb67(100)
      abb67(108)=6.0_ki*spak3k4
      abb67(85)=abb67(108)*abb67(85)
      abb67(108)=-abb67(9)*abb67(23)
      abb67(110)=abb67(108)*abb67(85)
      abb67(111)=abb67(62)*spak3k4
      abb67(112)=abb67(98)*spbk7k1
      abb67(111)=abb67(111)+abb67(112)
      abb67(112)=-spbl6k3*abb67(111)
      abb67(113)=abb67(13)*abb67(10)
      abb67(114)=-spbl6k1*abb67(113)
      abb67(112)=abb67(112)+abb67(114)
      abb67(112)=2.0_ki*abb67(112)
      abb67(52)=-spbl5k3*abb67(52)
      abb67(87)=-abb67(51)*abb67(87)
      abb67(38)=-abb67(96)*abb67(38)
      abb67(96)=-abb67(19)*abb67(23)
      abb67(48)=spbl5k2*abb67(96)*abb67(48)
      abb67(40)=-spbl5k1*abb67(40)
      abb67(39)=-abb67(54)*abb67(39)
      abb67(38)=abb67(40)+abb67(52)+abb67(39)+abb67(48)+abb67(38)+abb67(87)
      abb67(38)=2.0_ki*abb67(38)
      abb67(39)=-abb67(18)*abb67(13)
      abb67(40)=abb67(69)*abb67(39)
      abb67(48)=abb67(97)*abb67(96)
      abb67(52)=-abb67(19)*abb67(49)
      abb67(87)=abb67(52)*es12
      abb67(40)=abb67(87)+abb67(40)+abb67(48)
      abb67(48)=12.0_ki*abb67(40)
      abb67(87)=4.0_ki*abb67(40)
      abb67(97)=abb67(74)*abb67(39)
      abb67(67)=abb67(79)*abb67(67)
      abb67(79)=abb67(94)*spak4l6
      abb67(67)=abb67(79)+abb67(97)-abb67(67)
      abb67(79)=abb67(102)*abb67(73)
      abb67(79)=abb67(79)-abb67(67)
      abb67(79)=4.0_ki*abb67(79)
      abb67(97)=abb67(18)*abb67(14)
      abb67(93)=-abb67(97)*abb67(93)
      abb67(114)=abb67(54)*spbk4k3
      abb67(115)=abb67(73)*abb67(107)
      abb67(114)=abb67(114)+abb67(115)
      abb67(17)=abb67(114)*abb67(17)
      abb67(114)=abb67(45)*spbl5k3
      abb67(51)=abb67(109)*abb67(51)
      abb67(17)=-abb67(67)+abb67(17)+abb67(114)+abb67(51)
      abb67(51)=-4.0_ki*abb67(17)
      abb67(67)=16.0_ki*abb67(52)
      abb67(17)=abb67(40)+abb67(17)
      abb67(17)=2.0_ki*abb67(17)
      abb67(40)=-8.0_ki*abb67(52)
      abb67(114)=-abb67(18)*abb67(23)
      abb67(85)=abb67(114)*abb67(85)
      abb67(115)=abb67(39)*spak3k4
      abb67(116)=abb67(96)*spbk7k1
      abb67(115)=abb67(115)+abb67(116)
      abb67(116)=-spbl6k3*abb67(115)
      abb67(111)=-spbl5k3*abb67(111)
      abb67(13)=abb67(13)*abb67(19)
      abb67(117)=-spbl6k1*abb67(13)
      abb67(113)=-spbl5k1*abb67(113)
      abb67(111)=abb67(113)+abb67(117)+abb67(116)+abb67(111)
      abb67(111)=2.0_ki*abb67(111)
      abb67(113)=-spbl5k3*abb67(115)
      abb67(13)=-spbl5k1*abb67(13)
      abb67(13)=abb67(113)+abb67(13)
      abb67(13)=2.0_ki*abb67(13)
      abb67(113)=-abb67(24)*abb67(14)
      abb67(115)=2.0_ki*abb67(113)
      abb67(116)=-abb67(22)*abb67(115)
      abb67(24)=-abb67(24)*abb67(23)
      abb67(117)=spal5k7*abb67(24)
      abb67(116)=abb67(116)+abb67(117)
      abb67(116)=spak4l6*abb67(116)
      abb67(117)=-abb67(16)*abb67(115)
      abb67(118)=spal6k7*abb67(24)
      abb67(117)=abb67(117)+abb67(118)
      abb67(117)=spak4l5*abb67(117)
      abb67(118)=abb67(83)*abb67(16)
      abb67(119)=-2.0_ki*abb67(118)+abb67(55)
      abb67(119)=abb67(119)*abb67(72)
      abb67(120)=abb67(89)*abb67(22)
      abb67(121)=-2.0_ki*abb67(120)+abb67(57)
      abb67(121)=abb67(121)*abb67(74)
      abb67(122)=-abb67(80)*abb67(14)
      abb67(123)=abb67(90)*abb67(122)
      abb67(124)=-abb67(78)*abb67(14)
      abb67(125)=abb67(91)*abb67(124)
      abb67(123)=abb67(123)+abb67(125)
      abb67(21)=-abb67(123)*abb67(21)
      abb67(21)=abb67(21)+abb67(121)+abb67(119)+abb67(116)+abb67(117)
      abb67(21)=spbk7k4*abb67(21)
      abb67(29)=abb67(80)*abb67(29)
      abb67(28)=abb67(78)*abb67(28)
      abb67(28)=abb67(29)+abb67(28)
      abb67(29)=abb67(122)*abb67(22)
      abb67(78)=abb67(124)*abb67(16)
      abb67(29)=abb67(29)+abb67(78)
      abb67(29)=2.0_ki*abb67(29)
      abb67(78)=abb67(28)+abb67(29)
      abb67(80)=-es12+es567+es712
      abb67(116)=-abb67(78)*abb67(80)
      abb67(117)=-abb67(29)+3.0_ki*abb67(28)
      abb67(113)=-spak2l5*abb67(113)*abb67(30)
      abb67(27)=-abb67(115)*abb67(27)
      abb67(27)=abb67(27)+abb67(113)-abb67(117)
      abb67(27)=es71*abb67(27)
      abb67(65)=spbl6k2*abb67(65)
      abb67(65)=abb67(65)+abb67(84)
      abb67(65)=spak3l6*abb67(65)
      abb67(68)=spbl5k2*abb67(68)
      abb67(68)=abb67(68)+abb67(86)
      abb67(68)=spak3l5*abb67(68)
      abb67(84)=abb67(7)*abb67(4)
      abb67(86)=abb67(11)*abb67(84)
      abb67(113)=-spal6k7*abb67(86)
      abb67(7)=abb67(7)*abb67(6)
      abb67(11)=abb67(11)*abb67(7)
      abb67(115)=-spal5k7*abb67(11)
      abb67(113)=abb67(115)+abb67(113)
      abb67(113)=abb67(23)*abb67(113)
      abb67(16)=-abb67(16)*abb67(86)
      abb67(11)=-abb67(22)*abb67(11)
      abb67(11)=abb67(16)+abb67(11)
      abb67(11)=abb67(14)*abb67(11)
      abb67(16)=-spbk7k1*abb67(24)*abb67(58)
      abb67(22)=spbk7k1*spak1l6
      abb67(24)=-abb67(55)*abb67(22)
      abb67(55)=abb67(83)*spak1l6
      abb67(58)=-spak2l6*abb67(36)*abb67(55)
      abb67(24)=abb67(24)+abb67(58)
      abb67(24)=spbl6k2*abb67(24)
      abb67(58)=spbk7k1*spak1l5
      abb67(57)=-abb67(57)*abb67(58)
      abb67(86)=abb67(89)*spak1l5
      abb67(115)=-spak2l5*abb67(36)*abb67(86)
      abb67(57)=abb67(57)+abb67(115)
      abb67(57)=spbl5k2*abb67(57)
      abb67(115)=4.0_ki*spak2k3
      abb67(81)=abb67(81)*abb67(115)
      abb67(11)=abb67(81)+abb67(68)+abb67(65)+abb67(21)+abb67(57)+abb67(24)+abb&
      &67(27)+abb67(16)+2.0_ki*abb67(11)+abb67(116)+abb67(113)
      abb67(11)=2.0_ki*abb67(11)
      abb67(16)=4.0_ki*abb67(78)
      abb67(21)=abb67(28)-abb67(29)
      abb67(21)=4.0_ki*abb67(21)
      abb67(24)=2.0_ki*abb67(117)
      abb67(27)=spak4l5*abb67(95)
      abb67(28)=abb67(108)*abb67(72)
      abb67(29)=abb67(83)*abb67(102)
      abb67(27)=abb67(29)+abb67(27)+abb67(28)
      abb67(27)=spbk7k4*abb67(27)
      abb67(28)=abb67(120)+abb67(118)
      abb67(28)=2.0_ki*abb67(28)
      abb67(29)=abb67(28)-abb67(59)
      abb67(57)=spbk7l6*abb67(29)
      abb67(65)=-abb67(108)*abb67(22)
      abb67(68)=spak3l6*abb67(62)
      abb67(65)=abb67(68)+abb67(65)
      abb67(65)=spbl6k2*abb67(65)
      abb67(68)=es71+3.0_ki*abb67(80)
      abb67(78)=abb67(47)*abb67(68)
      abb67(23)=abb67(23)*spbk7k2
      abb67(80)=abb67(84)*abb67(23)
      abb67(81)=-abb67(95)*abb67(58)
      abb67(84)=spak3l5*abb67(94)
      abb67(113)=abb67(115)*spak1k7
      abb67(115)=-abb67(71)*abb67(113)
      abb67(27)=abb67(115)+abb67(57)+abb67(84)+abb67(27)+3.0_ki*abb67(80)+abb67&
      &(81)+abb67(78)+abb67(65)
      abb67(27)=2.0_ki*abb67(27)
      abb67(57)=-12.0_ki*abb67(47)
      abb67(65)=4.0_ki*abb67(47)
      abb67(47)=-2.0_ki*abb67(47)
      abb67(78)=2.0_ki*abb67(108)
      abb67(80)=-spbk7l6*abb67(78)
      abb67(81)=spak4l6*abb67(95)
      abb67(84)=abb67(114)*abb67(74)
      abb67(102)=abb67(89)*abb67(102)
      abb67(81)=abb67(102)+abb67(81)+abb67(84)
      abb67(81)=spbk7k4*abb67(81)
      abb67(29)=spbk7l5*abb67(29)
      abb67(58)=-abb67(114)*abb67(58)
      abb67(84)=spak3l5*abb67(39)
      abb67(58)=abb67(84)+abb67(58)
      abb67(58)=spbl5k2*abb67(58)
      abb67(68)=abb67(56)*abb67(68)
      abb67(7)=abb67(7)*abb67(23)
      abb67(22)=-abb67(95)*abb67(22)
      abb67(23)=spak3l6*abb67(94)
      abb67(84)=-abb67(73)*abb67(113)
      abb67(7)=abb67(84)+abb67(29)+abb67(23)+abb67(81)+3.0_ki*abb67(7)+abb67(22&
      &)+abb67(68)+abb67(58)
      abb67(7)=2.0_ki*abb67(7)
      abb67(22)=-12.0_ki*abb67(56)
      abb67(23)=4.0_ki*abb67(56)
      abb67(29)=-2.0_ki*abb67(56)
      abb67(56)=-spbk7l6*abb67(114)
      abb67(58)=-spbk7l5*abb67(108)
      abb67(56)=abb67(56)+abb67(58)
      abb67(56)=2.0_ki*abb67(56)
      abb67(58)=2.0_ki*abb67(114)
      abb67(68)=-spbk7l5*abb67(58)
      abb67(42)=3.0_ki*abb67(42)
      abb67(81)=abb67(33)*abb67(42)
      abb67(84)=spbk4k3*abb67(76)
      abb67(81)=abb67(81)+abb67(84)
      abb67(81)=2.0_ki*abb67(81)
      abb67(32)=abb67(32)+abb67(75)
      abb67(75)=4.0_ki*abb67(32)
      abb67(84)=abb67(45)*spbk4k3
      abb67(84)=abb67(84)+abb67(32)
      abb67(94)=4.0_ki*abb67(84)
      abb67(84)=-2.0_ki*abb67(84)
      abb67(95)=2.0_ki*abb67(98)
      abb67(98)=-abb67(33)*abb67(95)
      abb67(102)=4.0_ki*abb67(62)
      abb67(62)=2.0_ki*abb67(62)
      abb67(96)=2.0_ki*abb67(96)
      abb67(33)=-abb67(33)*abb67(96)
      abb67(108)=4.0_ki*abb67(39)
      abb67(39)=2.0_ki*abb67(39)
      abb67(28)=-abb67(28)+3.0_ki*abb67(59)
      abb67(28)=2.0_ki*spbk7k4*abb67(28)
      abb67(113)=-spbk7k4*abb67(78)
      abb67(114)=-spbk7k4*abb67(58)
      abb67(32)=2.0_ki*abb67(32)
      abb67(115)=spak4l6*spak1l5
      abb67(116)=spak4l5*spak1l6
      abb67(115)=abb67(115)+abb67(116)
      abb67(8)=-abb67(8)*abb67(14)
      abb67(116)=abb67(8)*spak1k4
      abb67(117)=abb67(116)*abb67(115)
      abb67(118)=abb67(44)*spak1l6
      abb67(119)=-spak1l5*abb67(54)
      abb67(119)=-abb67(118)+abb67(119)
      abb67(119)=spak4k7*abb67(119)
      abb67(117)=abb67(119)+abb67(117)
      abb67(117)=spbk4k3*abb67(117)
      abb67(119)=abb67(83)*spal6k7
      abb67(120)=abb67(89)*spal5k7
      abb67(119)=abb67(119)+abb67(120)
      abb67(120)=spak1k4**2
      abb67(121)=spbk4k3*abb67(120)*abb67(119)
      abb67(53)=abb67(53)*abb67(91)
      abb67(60)=abb67(60)*abb67(90)
      abb67(53)=abb67(121)+abb67(53)+abb67(60)
      abb67(60)=-spak1k7*abb67(54)
      abb67(90)=abb67(116)*abb67(30)
      abb67(60)=abb67(60)+abb67(90)
      abb67(60)=spak1l5*abb67(60)
      abb67(90)=-spak1k7*abb67(118)
      abb67(60)=abb67(90)+abb67(60)
      abb67(60)=spbk3k1*abb67(60)
      abb67(10)=-abb67(10)*abb67(14)
      abb67(90)=abb67(10)*spbk3k1
      abb67(91)=spak1l6**2
      abb67(116)=abb67(91)*abb67(90)
      abb67(118)=abb67(10)*spak1l6
      abb67(121)=spak4l6*spbk4k3*abb67(118)
      abb67(116)=abb67(116)+abb67(121)
      abb67(116)=spbl6k2*abb67(116)
      abb67(14)=abb67(19)*abb67(14)
      abb67(19)=abb67(14)*spbk3k1
      abb67(121)=spak1l5**2
      abb67(122)=-abb67(121)*abb67(19)
      abb67(124)=abb67(14)*spak1l5
      abb67(125)=-spak4l5*spbk4k3*abb67(124)
      abb67(122)=abb67(122)+abb67(125)
      abb67(122)=spbl5k2*abb67(122)
      abb67(53)=abb67(122)+abb67(116)+2.0_ki*abb67(53)+abb67(60)+abb67(117)
      abb67(53)=spbk2k1*abb67(53)
      abb67(60)=abb67(71)*abb67(31)
      abb67(71)=abb67(73)*abb67(43)
      abb67(60)=abb67(60)+abb67(71)
      abb67(60)=spak3k4*spak1k7*abb67(60)
      abb67(71)=abb67(43)*abb67(54)
      abb67(73)=abb67(31)*abb67(44)
      abb67(71)=abb67(71)+abb67(73)
      abb67(73)=es71*abb67(71)
      abb67(60)=abb67(60)+abb67(73)
      abb67(53)=2.0_ki*abb67(60)+abb67(53)
      abb67(53)=4.0_ki*abb67(53)
      abb67(60)=abb67(104)*spak1l6
      abb67(73)=abb67(97)*spak1l5
      abb67(116)=abb67(60)-abb67(73)
      abb67(117)=-abb67(116)*spak3k4*spbk3k2**2
      abb67(122)=8.0_ki*abb67(117)
      abb67(125)=spak1l5*spbk3k2
      abb67(126)=abb67(89)*abb67(125)
      abb67(127)=spak1l6*spbk3k2
      abb67(128)=abb67(83)*abb67(127)
      abb67(126)=abb67(126)+abb67(128)
      abb67(128)=abb67(126)*spak4k7
      abb67(129)=abb67(97)*abb67(125)
      abb67(130)=abb67(129)*abb67(74)
      abb67(131)=abb67(104)*abb67(127)
      abb67(132)=abb67(131)*abb67(72)
      abb67(133)=abb67(8)*abb67(127)
      abb67(134)=abb67(133)*spak4l5
      abb67(135)=abb67(8)*abb67(125)
      abb67(136)=abb67(135)*spak4l6
      abb67(128)=-abb67(136)-abb67(134)+abb67(128)+abb67(130)-abb67(132)
      abb67(130)=-abb67(128)+2.0_ki*abb67(71)
      abb67(130)=8.0_ki*abb67(130)
      abb67(132)=-3.0_ki*abb67(71)+abb67(128)
      abb67(132)=8.0_ki*abb67(132)
      abb67(71)=abb67(71)-abb67(117)-abb67(128)
      abb67(71)=4.0_ki*abb67(71)
      abb67(9)=abb67(49)*abb67(9)
      abb67(117)=-abb67(9)*abb67(127)
      abb67(18)=abb67(49)*abb67(18)
      abb67(49)=-abb67(18)*abb67(125)
      abb67(49)=abb67(117)+abb67(49)
      abb67(49)=spak3k4*abb67(49)
      abb67(117)=abb67(14)*abb67(125)
      abb67(125)=abb67(10)*abb67(127)
      abb67(117)=abb67(117)-abb67(125)
      abb67(125)=-spbk7k1*abb67(117)
      abb67(127)=-spak1l6*abb67(100)
      abb67(128)=-spak1l5*abb67(52)
      abb67(127)=abb67(127)+abb67(128)
      abb67(127)=spbk2k1*abb67(127)
      abb67(49)=abb67(127)+abb67(125)+abb67(49)
      abb67(49)=4.0_ki*abb67(49)
      abb67(100)=-spak1k7*abb67(100)
      abb67(120)=abb67(120)*spbk4k3
      abb67(125)=-abb67(104)*abb67(120)
      abb67(100)=abb67(100)+abb67(125)
      abb67(100)=spbk2k1*abb67(100)
      abb67(125)=abb67(69)*spak1k7
      abb67(9)=abb67(9)*abb67(125)
      abb67(127)=abb67(10)*spbk3k2
      abb67(128)=-es71*abb67(127)
      abb67(9)=abb67(100)+abb67(9)+abb67(128)
      abb67(100)=abb67(131)-abb67(129)
      abb67(128)=abb67(100)*spak3k4
      abb67(118)=abb67(124)-abb67(118)
      abb67(118)=abb67(118)*spbk2k1
      abb67(124)=abb67(128)+abb67(118)
      abb67(128)=spbl6k3*abb67(124)
      abb67(134)=spbl6k1*abb67(117)
      abb67(9)=abb67(134)+2.0_ki*abb67(9)+abb67(128)
      abb67(9)=4.0_ki*abb67(9)
      abb67(128)=16.0_ki*abb67(127)
      abb67(134)=24.0_ki*abb67(127)
      abb67(127)=-4.0_ki*abb67(127)
      abb67(52)=-spak1k7*abb67(52)
      abb67(120)=abb67(97)*abb67(120)
      abb67(52)=abb67(52)+abb67(120)
      abb67(52)=spbk2k1*abb67(52)
      abb67(18)=abb67(18)*abb67(125)
      abb67(120)=abb67(14)*spbk3k2
      abb67(125)=es71*abb67(120)
      abb67(18)=abb67(52)+abb67(18)+abb67(125)
      abb67(52)=spbl5k3*abb67(124)
      abb67(117)=spbl5k1*abb67(117)
      abb67(18)=abb67(117)+2.0_ki*abb67(18)+abb67(52)
      abb67(18)=4.0_ki*abb67(18)
      abb67(52)=16.0_ki*abb67(120)
      abb67(117)=-24.0_ki*abb67(120)
      abb67(120)=4.0_ki*abb67(120)
      abb67(115)=-abb67(8)*abb67(115)
      abb67(44)=abb67(44)*spal6k7
      abb67(54)=abb67(54)*spal5k7
      abb67(44)=abb67(44)+abb67(54)
      abb67(54)=abb67(86)+abb67(55)
      abb67(86)=spak4k7*abb67(54)
      abb67(72)=-abb67(72)*abb67(60)
      abb67(74)=abb67(74)*abb67(73)
      abb67(72)=abb67(74)+abb67(72)+abb67(86)-2.0_ki*abb67(44)+abb67(115)
      abb67(72)=spbk4k2*abb67(72)
      abb67(74)=spak1k7*abb67(89)
      abb67(30)=-abb67(8)*abb67(30)
      abb67(30)=abb67(74)+abb67(30)
      abb67(30)=spak1l5*abb67(30)
      abb67(55)=spak1k7*abb67(55)
      abb67(74)=-spbl6k2*abb67(104)*abb67(91)
      abb67(86)=spbl5k2*abb67(97)*abb67(121)
      abb67(30)=abb67(86)+abb67(74)+abb67(55)+abb67(30)
      abb67(30)=spbk2k1*abb67(30)
      abb67(55)=-spbl6k2*abb67(131)
      abb67(55)=-abb67(135)+abb67(55)
      abb67(55)=spak3l6*abb67(55)
      abb67(74)=spbl5k2*abb67(129)
      abb67(74)=-abb67(133)+abb67(74)
      abb67(74)=spak3l5*abb67(74)
      abb67(31)=abb67(83)*abb67(31)
      abb67(43)=abb67(89)*abb67(43)
      abb67(31)=abb67(31)+abb67(43)
      abb67(43)=2.0_ki*spak1k3
      abb67(86)=-abb67(31)*abb67(43)
      abb67(91)=spak3k7*abb67(126)
      abb67(30)=abb67(91)+abb67(86)+abb67(74)+abb67(55)+abb67(72)+2.0_ki*abb67(&
      &123)+abb67(30)
      abb67(30)=4.0_ki*abb67(30)
      abb67(54)=-4.0_ki*abb67(54)
      abb67(55)=-abb67(83)*abb67(107)
      abb67(72)=spak1l5*abb67(8)
      abb67(60)=spbl6k2*abb67(60)
      abb67(74)=2.0_ki*spbk4k2
      abb67(86)=abb67(10)*abb67(74)
      abb67(43)=abb67(43)*spbk3k2
      abb67(91)=abb67(104)*abb67(43)
      abb67(55)=abb67(91)+abb67(86)+abb67(60)+abb67(55)+abb67(72)
      abb67(55)=4.0_ki*abb67(55)
      abb67(60)=-abb67(89)*abb67(107)
      abb67(8)=spak1l6*abb67(8)
      abb67(72)=-spbl5k2*abb67(73)
      abb67(73)=-abb67(14)*abb67(74)
      abb67(43)=-abb67(97)*abb67(43)
      abb67(8)=abb67(43)+abb67(73)+abb67(72)+abb67(60)+abb67(8)
      abb67(8)=4.0_ki*abb67(8)
      abb67(43)=-4.0_ki*spbk4k3*abb67(118)
      abb67(60)=8.0_ki*abb67(100)
      abb67(72)=4.0_ki*abb67(100)
      abb67(73)=-4.0_ki*spbk4k2*abb67(116)
      abb67(31)=-spak3k4*abb67(31)
      abb67(74)=-spbk2k1*abb67(44)
      abb67(31)=abb67(31)+abb67(74)
      abb67(31)=8.0_ki*abb67(31)
      abb67(74)=abb67(104)*abb67(69)
      abb67(10)=spbk2k1*abb67(10)
      abb67(10)=abb67(74)+abb67(10)
      abb67(10)=8.0_ki*abb67(10)
      abb67(69)=-abb67(97)*abb67(69)
      abb67(14)=-spbk2k1*abb67(14)
      abb67(14)=abb67(69)+abb67(14)
      abb67(14)=8.0_ki*abb67(14)
      abb67(42)=abb67(37)*abb67(42)
      abb67(69)=spbk3k1*abb67(76)
      abb67(42)=abb67(42)+abb67(69)
      abb67(42)=2.0_ki*abb67(42)
      abb67(69)=4.0_ki*spbk3k1
      abb67(74)=abb67(45)*abb67(69)
      abb67(45)=-abb67(45)*abb67(109)
      abb67(76)=-abb67(37)*abb67(95)
      abb67(37)=-abb67(37)*abb67(96)
      abb67(59)=spbk7k1*abb67(59)
      abb67(83)=-spak2l6*abb67(83)
      abb67(86)=-spak2l5*abb67(89)
      abb67(83)=abb67(83)+abb67(86)
      abb67(36)=abb67(83)*abb67(36)
      abb67(36)=-3.0_ki*abb67(59)+abb67(36)
      abb67(36)=2.0_ki*abb67(36)
      abb67(59)=spbk7k1*abb67(78)
      abb67(58)=spbk7k1*abb67(58)
      abb67(44)=4.0_ki*abb67(44)-abb67(118)
      abb67(44)=abb67(44)*abb67(69)
      abb67(69)=-16.0_ki*abb67(90)
      abb67(19)=16.0_ki*abb67(19)
      abb67(78)=-spbk2k1*abb67(116)
      abb67(78)=-2.0_ki*abb67(119)+abb67(78)
      abb67(78)=4.0_ki*abb67(78)
      abb67(83)=8.0_ki*abb67(104)
      abb67(86)=-8.0_ki*abb67(97)
      R2d67=0.0_ki
      rat2 = rat2 + R2d67
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='67' value='", &
          & R2d67, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd67h0
