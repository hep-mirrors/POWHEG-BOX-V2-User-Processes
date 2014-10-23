module     p0_dbaru_epnebbbarg_abbrevd297h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(102), public :: abb297
   complex(ki), public :: R2d297
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
      abb297(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb297(2)=sqrt(mB**2)
      abb297(3)=NC**(-1)
      abb297(4)=sqrt2**(-1)
      abb297(5)=spbk7k2**(-1)
      abb297(6)=spak2l6**(-1)
      abb297(7)=spbl6k2**(-1)
      abb297(8)=spbl5k2**(-1)
      abb297(9)=spak2l5**(-1)
      abb297(10)=c1-c3
      abb297(11)=TR*gW
      abb297(11)=abb297(11)**2*i_*CVDU*abb297(4)*abb297(1)
      abb297(12)=abb297(11)*abb297(5)
      abb297(13)=spbk3k2*abb297(12)
      abb297(14)=abb297(13)*abb297(3)
      abb297(15)=-abb297(14)*abb297(10)
      abb297(16)=-spak4l5*abb297(15)
      abb297(17)=spak1l5*abb297(2)
      abb297(18)=abb297(17)*spal6k7
      abb297(19)=mB**2
      abb297(20)=abb297(18)*abb297(19)
      abb297(21)=-abb297(20)*abb297(16)
      abb297(22)=abb297(13)*spal6k7
      abb297(23)=abb297(17)*abb297(22)
      abb297(24)=abb297(23)*abb297(19)
      abb297(25)=c2-c4
      abb297(26)=-spak4l5*abb297(25)
      abb297(27)=abb297(24)*abb297(26)
      abb297(21)=abb297(21)+abb297(27)
      abb297(27)=abb297(7)*abb297(6)
      abb297(28)=abb297(21)*abb297(27)
      abb297(29)=-abb297(18)*abb297(16)
      abb297(30)=-abb297(23)*abb297(26)
      abb297(29)=abb297(29)-abb297(30)
      abb297(28)=abb297(28)-abb297(29)
      abb297(28)=abb297(28)*spbl5k2
      abb297(30)=-spak1k4*abb297(15)
      abb297(31)=abb297(20)*abb297(30)
      abb297(32)=c4*spak1k4
      abb297(33)=c2*spak1k4
      abb297(34)=abb297(32)-abb297(33)
      abb297(35)=-abb297(24)*abb297(34)
      abb297(31)=abb297(35)+abb297(31)
      abb297(31)=abb297(31)*spbk2k1
      abb297(35)=abb297(31)*abb297(27)
      abb297(28)=abb297(28)+abb297(35)
      abb297(35)=-abb297(23)*abb297(34)
      abb297(36)=-abb297(18)*abb297(30)
      abb297(35)=abb297(36)-abb297(35)
      abb297(36)=abb297(35)*spbk2k1
      abb297(37)=abb297(28)+abb297(36)
      abb297(38)=es712-es71
      abb297(39)=abb297(38)-es12
      abb297(37)=abb297(37)*abb297(39)
      abb297(40)=abb297(11)*abb297(3)
      abb297(41)=abb297(40)*abb297(5)
      abb297(42)=-abb297(41)*abb297(10)
      abb297(43)=-spak1k4*abb297(42)
      abb297(44)=spal6k7**2
      abb297(45)=abb297(44)*abb297(17)
      abb297(46)=-abb297(45)*abb297(43)
      abb297(47)=abb297(11)*abb297(2)
      abb297(48)=abb297(47)*abb297(5)
      abb297(49)=abb297(48)*spak1l5
      abb297(50)=abb297(49)*abb297(44)
      abb297(51)=abb297(50)*abb297(34)
      abb297(46)=abb297(51)+abb297(46)
      abb297(51)=spbk2k1*spbl6k2
      abb297(46)=abb297(46)*abb297(51)
      abb297(52)=abb297(45)*spak4l5
      abb297(53)=-abb297(52)*abb297(42)
      abb297(50)=-abb297(50)*abb297(26)
      abb297(50)=abb297(50)+abb297(53)
      abb297(50)=spbl5k2*spbl6k2*abb297(50)
      abb297(46)=abb297(46)+abb297(50)
      abb297(46)=spbk7k3*abb297(46)
      abb297(40)=-abb297(40)*abb297(10)
      abb297(45)=-abb297(45)*spak1k4*abb297(40)
      abb297(47)=abb297(47)*spak1l5
      abb297(44)=abb297(47)*abb297(44)
      abb297(50)=-abb297(44)*abb297(34)
      abb297(45)=abb297(50)+abb297(45)
      abb297(45)=spbk2k1*abb297(45)
      abb297(50)=abb297(52)*abb297(40)
      abb297(44)=abb297(44)*abb297(26)
      abb297(44)=abb297(50)+abb297(44)
      abb297(44)=spbl5k2*abb297(44)
      abb297(44)=abb297(45)+abb297(44)
      abb297(44)=spbl6k3*abb297(44)
      abb297(45)=abb297(29)*spbl5k2
      abb297(36)=abb297(45)-abb297(36)
      abb297(45)=spak2l6*spbl6k2
      abb297(50)=abb297(36)*abb297(45)
      abb297(21)=-spbl5k2*abb297(21)
      abb297(21)=abb297(50)+abb297(44)+abb297(46)-abb297(31)+abb297(21)+abb297(&
      &37)
      abb297(21)=4.0_ki*abb297(21)
      abb297(31)=-8.0_ki*abb297(36)
      abb297(37)=-abb297(17)*abb297(25)
      abb297(44)=abb297(11)*spal6k7
      abb297(46)=-abb297(37)*abb297(44)*spbk3k2
      abb297(50)=-spbk3k2*abb297(40)
      abb297(52)=-abb297(18)*abb297(50)
      abb297(52)=abb297(52)-abb297(46)
      abb297(53)=2.0_ki*spak4k7
      abb297(54)=abb297(52)*abb297(53)
      abb297(23)=abb297(23)*abb297(25)
      abb297(55)=-abb297(18)*abb297(15)
      abb297(23)=abb297(55)+abb297(23)
      abb297(55)=abb297(23)*spak4l6
      abb297(56)=2.0_ki*spbl6k2
      abb297(57)=abb297(55)*abb297(56)
      abb297(36)=-abb297(54)+abb297(57)-abb297(36)
      abb297(54)=-8.0_ki*abb297(36)
      abb297(57)=abb297(8)*mB
      abb297(58)=-abb297(57)*abb297(15)
      abb297(59)=spak1l6*spak1k4
      abb297(60)=-abb297(59)*abb297(58)
      abb297(61)=spal6k7*abb297(60)
      abb297(62)=-spal6k7*abb297(34)
      abb297(63)=abb297(13)*abb297(8)
      abb297(64)=abb297(63)*mB
      abb297(65)=abb297(64)*spak1l6
      abb297(66)=-abb297(65)*abb297(62)
      abb297(61)=abb297(66)+abb297(61)
      abb297(61)=abb297(61)*abb297(56)
      abb297(66)=mB**3
      abb297(67)=abb297(66)*spak1l6
      abb297(68)=abb297(67)*abb297(63)
      abb297(69)=abb297(68)*abb297(62)
      abb297(70)=abb297(67)*abb297(8)
      abb297(71)=-abb297(70)*abb297(30)
      abb297(72)=-spal6k7*abb297(71)
      abb297(69)=abb297(69)+abb297(72)
      abb297(72)=2.0_ki*abb297(6)
      abb297(69)=abb297(69)*abb297(72)
      abb297(61)=abb297(69)+abb297(61)+abb297(35)
      abb297(61)=spbk2k1*abb297(61)
      abb297(69)=spak1l6*spak4l5
      abb297(73)=-abb297(69)*abb297(25)
      abb297(74)=abb297(13)*mB
      abb297(75)=-abb297(74)*abb297(73)
      abb297(76)=abb297(69)*mB
      abb297(77)=-abb297(76)*abb297(15)
      abb297(75)=abb297(77)+abb297(75)
      abb297(77)=abb297(75)*spbl6k2
      abb297(78)=spal6k7*abb297(77)
      abb297(79)=abb297(69)*abb297(66)
      abb297(80)=-abb297(79)*abb297(15)
      abb297(81)=-spal6k7*abb297(80)
      abb297(79)=abb297(25)*abb297(79)
      abb297(82)=-abb297(22)*abb297(79)
      abb297(81)=abb297(82)+abb297(81)
      abb297(81)=abb297(6)*abb297(81)
      abb297(78)=abb297(78)+abb297(81)
      abb297(81)=abb297(23)*spbl6k2
      abb297(82)=-abb297(20)*abb297(15)
      abb297(24)=-abb297(24)*abb297(25)
      abb297(24)=abb297(24)-abb297(82)
      abb297(82)=abb297(24)*abb297(6)
      abb297(81)=abb297(81)+abb297(82)
      abb297(82)=spak4l6*abb297(81)
      abb297(83)=abb297(50)*abb297(20)
      abb297(46)=abb297(46)*abb297(19)
      abb297(46)=abb297(46)+abb297(83)
      abb297(46)=abb297(46)*abb297(27)
      abb297(46)=abb297(46)+abb297(52)
      abb297(52)=-spak4k7*abb297(46)
      abb297(28)=abb297(52)+abb297(82)+2.0_ki*abb297(78)+abb297(61)+abb297(28)
      abb297(28)=8.0_ki*abb297(28)
      abb297(36)=-4.0_ki*abb297(36)
      abb297(52)=-abb297(13)*abb297(79)
      abb297(52)=abb297(52)-abb297(80)
      abb297(61)=abb297(52)*abb297(6)
      abb297(78)=-abb297(68)*abb297(34)
      abb297(71)=abb297(78)-abb297(71)
      abb297(78)=spbk2k1*abb297(6)
      abb297(79)=abb297(71)*abb297(78)
      abb297(61)=abb297(61)+abb297(79)
      abb297(61)=abb297(61)*abb297(7)
      abb297(79)=abb297(65)*abb297(34)
      abb297(60)=abb297(60)+abb297(79)
      abb297(79)=abb297(60)*spbk2k1
      abb297(75)=abb297(79)+abb297(75)
      abb297(61)=abb297(61)+abb297(75)
      abb297(39)=abb297(61)*abb297(39)
      abb297(79)=abb297(30)*abb297(17)
      abb297(80)=abb297(37)*abb297(13)
      abb297(82)=-spak1k4*abb297(80)
      abb297(79)=abb297(79)+abb297(82)
      abb297(60)=spbl6k2*abb297(60)
      abb297(60)=-2.0_ki*abb297(79)+abb297(60)
      abb297(60)=spbk2k1*abb297(60)
      abb297(83)=abb297(16)*abb297(17)
      abb297(84)=spak4l5*abb297(80)
      abb297(83)=abb297(83)-abb297(84)
      abb297(85)=2.0_ki*spbl5k2
      abb297(86)=abb297(83)*abb297(85)
      abb297(60)=abb297(86)+abb297(77)+abb297(60)
      abb297(60)=spak2l6*abb297(60)
      abb297(77)=abb297(19)*abb297(17)
      abb297(86)=abb297(77)*abb297(30)
      abb297(82)=abb297(19)*abb297(82)
      abb297(82)=abb297(86)+abb297(82)
      abb297(82)=spbk2k1*abb297(82)
      abb297(86)=-abb297(77)*abb297(16)
      abb297(84)=abb297(19)*abb297(84)
      abb297(84)=abb297(86)+abb297(84)
      abb297(84)=abb297(84)*abb297(85)
      abb297(82)=abb297(84)+2.0_ki*abb297(82)
      abb297(82)=abb297(7)*abb297(82)
      abb297(46)=-spak2k4*abb297(46)
      abb297(84)=-spal6k7*abb297(42)
      abb297(85)=abb297(44)*abb297(5)
      abb297(86)=abb297(85)*abb297(25)
      abb297(86)=abb297(86)+abb297(84)
      abb297(86)=spbl6k2*abb297(76)*abb297(86)
      abb297(87)=abb297(84)*abb297(57)
      abb297(88)=-abb297(59)*abb297(87)
      abb297(11)=abb297(11)*abb297(8)
      abb297(89)=abb297(11)*mB
      abb297(90)=abb297(62)*abb297(89)*spak1l6
      abb297(91)=-abb297(5)*abb297(90)
      abb297(88)=abb297(91)+abb297(88)
      abb297(88)=abb297(88)*abb297(51)
      abb297(86)=abb297(86)+abb297(88)
      abb297(86)=spbk7k3*abb297(86)
      abb297(88)=abb297(40)*spal6k7
      abb297(91)=-abb297(44)*abb297(25)
      abb297(91)=abb297(91)+abb297(88)
      abb297(76)=abb297(76)*abb297(91)
      abb297(59)=-abb297(59)*abb297(57)*abb297(88)
      abb297(59)=abb297(59)+abb297(90)
      abb297(59)=spbk2k1*abb297(59)
      abb297(59)=abb297(59)+abb297(76)
      abb297(59)=spbl6k3*abb297(59)
      abb297(71)=spbk2k1*abb297(71)
      abb297(55)=spbk7l6*abb297(55)
      abb297(39)=abb297(55)+abb297(60)+abb297(59)+abb297(86)+abb297(46)+abb297(&
      &71)+abb297(52)+abb297(39)+abb297(82)
      abb297(39)=4.0_ki*abb297(39)
      abb297(46)=-spak1l6*abb297(58)
      abb297(52)=-abb297(65)*abb297(25)
      abb297(46)=abb297(46)+abb297(52)
      abb297(52)=abb297(46)*spbl6k2
      abb297(55)=-abb297(17)*abb297(15)
      abb297(55)=abb297(55)-abb297(80)
      abb297(59)=-abb297(52)+abb297(55)
      abb297(60)=2.0_ki*spak4l6
      abb297(59)=abb297(59)*abb297(60)
      abb297(59)=abb297(59)+abb297(75)
      abb297(59)=8.0_ki*abb297(59)
      abb297(60)=abb297(50)*abb297(57)
      abb297(65)=abb297(89)*spbk3k2
      abb297(71)=abb297(65)*c4
      abb297(65)=abb297(65)*c2
      abb297(60)=abb297(65)+abb297(60)-abb297(71)
      abb297(65)=-spak1l6*abb297(60)
      abb297(71)=abb297(65)*abb297(53)
      abb297(55)=2.0_ki*abb297(55)
      abb297(76)=abb297(55)*spak4l6
      abb297(71)=abb297(71)+abb297(76)-abb297(75)
      abb297(75)=8.0_ki*abb297(71)
      abb297(68)=abb297(68)*abb297(25)
      abb297(76)=-abb297(70)*abb297(15)
      abb297(68)=abb297(76)+abb297(68)
      abb297(76)=abb297(68)*abb297(6)
      abb297(52)=abb297(76)+abb297(52)
      abb297(76)=-abb297(77)*abb297(15)
      abb297(80)=-abb297(19)*abb297(80)
      abb297(76)=abb297(76)+abb297(80)
      abb297(76)=abb297(76)*abb297(27)
      abb297(55)=2.0_ki*abb297(76)-abb297(55)+abb297(52)
      abb297(55)=spak4l6*abb297(55)
      abb297(11)=abb297(25)*abb297(11)*spbk3k2
      abb297(67)=abb297(67)*abb297(11)
      abb297(70)=abb297(50)*abb297(70)
      abb297(67)=abb297(67)+abb297(70)
      abb297(67)=abb297(67)*abb297(27)
      abb297(65)=abb297(67)+abb297(65)
      abb297(67)=-spak4k7*abb297(65)
      abb297(55)=abb297(67)+abb297(55)-abb297(61)
      abb297(55)=8.0_ki*abb297(55)
      abb297(61)=4.0_ki*abb297(71)
      abb297(65)=-spak2k4*abb297(65)
      abb297(67)=-spbk7l6*spak4l6*abb297(46)
      abb297(65)=abb297(65)+abb297(67)
      abb297(65)=4.0_ki*abb297(65)
      abb297(67)=8.0_ki*spbl6k2
      abb297(29)=-abb297(29)*abb297(67)
      abb297(70)=-8.0_ki*abb297(83)
      abb297(71)=abb297(42)*abb297(18)
      abb297(76)=-abb297(85)*abb297(37)
      abb297(71)=abb297(71)-abb297(76)
      abb297(76)=-spak4l6*abb297(71)*spbl6k2**2
      abb297(80)=-abb297(44)*abb297(37)
      abb297(82)=-abb297(18)*abb297(40)
      abb297(80)=abb297(82)+abb297(80)
      abb297(80)=spak4k7*spbl6k2*abb297(80)
      abb297(76)=abb297(76)+abb297(80)
      abb297(76)=8.0_ki*abb297(76)
      abb297(80)=abb297(25)*abb297(49)
      abb297(82)=-abb297(17)*abb297(42)
      abb297(80)=abb297(80)+abb297(82)
      abb297(83)=-spak4l6*spbl6k2*abb297(80)
      abb297(40)=abb297(17)*abb297(40)
      abb297(47)=-abb297(47)*abb297(25)
      abb297(40)=abb297(47)+abb297(40)
      abb297(40)=spak4k7*abb297(40)
      abb297(40)=abb297(83)+abb297(40)
      abb297(40)=8.0_ki*abb297(40)
      abb297(47)=abb297(89)*abb297(5)
      abb297(83)=abb297(62)*abb297(47)
      abb297(86)=abb297(57)*spak1k4
      abb297(90)=abb297(84)*abb297(86)
      abb297(83)=abb297(83)+abb297(90)
      abb297(51)=abb297(83)*abb297(51)
      abb297(83)=spal6k7*mB
      abb297(90)=abb297(2)*spal6k7
      abb297(83)=abb297(83)+2.0_ki*abb297(90)
      abb297(10)=-spak4l5*abb297(10)
      abb297(41)=abb297(10)*abb297(83)*abb297(41)
      abb297(83)=abb297(85)*mB
      abb297(91)=abb297(85)*abb297(2)
      abb297(92)=abb297(83)+2.0_ki*abb297(91)
      abb297(92)=abb297(92)*abb297(26)
      abb297(41)=abb297(92)+abb297(41)
      abb297(41)=spbl6k2*abb297(41)
      abb297(41)=abb297(41)+abb297(51)
      abb297(41)=spbk7k3*abb297(41)
      abb297(92)=-abb297(86)*abb297(15)
      abb297(33)=abb297(33)*abb297(64)
      abb297(32)=abb297(32)*abb297(64)
      abb297(32)=-abb297(32)+abb297(92)+abb297(33)
      abb297(33)=abb297(32)*spbk2k1
      abb297(92)=abb297(74)*abb297(26)
      abb297(93)=-mB*abb297(16)
      abb297(33)=abb297(33)+abb297(93)+abb297(92)
      abb297(45)=abb297(33)*abb297(45)
      abb297(92)=abb297(66)*abb297(13)
      abb297(93)=abb297(92)*abb297(26)
      abb297(94)=-abb297(66)*abb297(16)
      abb297(93)=abb297(94)+abb297(93)
      abb297(94)=abb297(66)*abb297(63)
      abb297(95)=-abb297(94)*abb297(34)
      abb297(96)=abb297(66)*abb297(8)
      abb297(97)=-abb297(96)*abb297(30)
      abb297(95)=abb297(97)-abb297(95)
      abb297(98)=spbk2k1*abb297(95)
      abb297(41)=abb297(45)+abb297(41)+abb297(98)-abb297(93)
      abb297(41)=spak1k7*abb297(41)
      abb297(45)=abb297(34)*abb297(91)
      abb297(98)=abb297(43)*abb297(90)
      abb297(45)=abb297(45)-abb297(98)
      abb297(98)=spal5k7*spbk7k3
      abb297(99)=spal5l6*spbl6k3
      abb297(98)=abb297(99)+abb297(98)
      abb297(45)=abb297(45)*abb297(98)
      abb297(98)=abb297(34)*abb297(63)
      abb297(99)=abb297(30)*abb297(8)
      abb297(98)=abb297(98)-abb297(99)
      abb297(99)=abb297(19)*abb297(90)
      abb297(100)=-abb297(99)*abb297(98)
      abb297(101)=-spbl5k3*spak4l5*abb297(71)
      abb297(85)=abb297(85)*abb297(17)*abb297(34)
      abb297(18)=-abb297(18)*abb297(43)
      abb297(18)=abb297(85)+abb297(18)
      abb297(18)=spbk3k1*abb297(18)
      abb297(18)=abb297(18)+abb297(101)+abb297(100)+abb297(45)
      abb297(18)=abb297(56)*abb297(18)
      abb297(45)=abb297(95)*abb297(78)
      abb297(78)=abb297(93)*abb297(6)
      abb297(45)=abb297(45)-abb297(78)
      abb297(45)=abb297(45)*abb297(7)*spak1k7
      abb297(33)=abb297(33)*spak1k7
      abb297(45)=abb297(45)+abb297(33)
      abb297(38)=abb297(45)*abb297(38)
      abb297(78)=-spal6k7*abb297(32)
      abb297(85)=abb297(78)*spbl6k2
      abb297(93)=abb297(62)*abb297(94)
      abb297(97)=abb297(97)*spal6k7
      abb297(93)=abb297(93)-abb297(97)
      abb297(93)=abb297(93)*abb297(6)
      abb297(85)=abb297(93)+abb297(85)
      abb297(85)=2.0_ki*abb297(85)
      abb297(93)=-abb297(85)-abb297(45)
      abb297(93)=es12*abb297(93)
      abb297(81)=-spak2k4*abb297(81)
      abb297(62)=-abb297(89)*abb297(62)
      abb297(89)=abb297(86)*abb297(88)
      abb297(62)=abb297(89)+abb297(62)
      abb297(62)=spbk2k1*abb297(62)
      abb297(89)=abb297(26)*mB
      abb297(44)=-abb297(44)*abb297(89)
      abb297(97)=spak4l5*mB
      abb297(88)=-abb297(97)*abb297(88)
      abb297(44)=abb297(62)+abb297(88)+abb297(44)
      abb297(44)=spak1k7*abb297(44)
      abb297(62)=abb297(69)*abb297(90)*abb297(42)
      abb297(88)=abb297(91)*abb297(73)
      abb297(62)=abb297(88)+abb297(62)
      abb297(62)=abb297(62)*abb297(56)
      abb297(44)=abb297(62)+abb297(44)
      abb297(44)=spbl6k3*abb297(44)
      abb297(62)=abb297(66)*abb297(22)
      abb297(88)=abb297(19)*abb297(2)
      abb297(91)=abb297(88)*abb297(22)
      abb297(62)=abb297(62)+abb297(91)
      abb297(62)=-abb297(62)*abb297(26)
      abb297(100)=abb297(14)*spal6k7
      abb297(101)=abb297(100)*abb297(66)
      abb297(102)=abb297(99)*abb297(14)
      abb297(101)=abb297(101)+abb297(102)
      abb297(101)=-abb297(101)*abb297(10)
      abb297(62)=abb297(101)+abb297(62)
      abb297(62)=abb297(6)*abb297(62)
      abb297(101)=abb297(74)*spal6k7
      abb297(22)=abb297(22)*abb297(2)
      abb297(101)=abb297(101)+abb297(22)
      abb297(101)=abb297(101)*abb297(26)
      abb297(102)=abb297(90)*abb297(14)
      abb297(100)=abb297(100)*mB
      abb297(100)=abb297(102)+abb297(100)
      abb297(100)=abb297(100)*abb297(10)
      abb297(100)=abb297(100)+abb297(101)
      abb297(100)=spbl6k2*abb297(100)
      abb297(62)=abb297(100)+abb297(62)
      abb297(100)=2.0_ki*spak1k2
      abb297(62)=abb297(62)*abb297(100)
      abb297(101)=abb297(15)*abb297(8)
      abb297(102)=-abb297(63)*abb297(25)
      abb297(102)=abb297(102)+abb297(101)
      abb297(20)=spak2k4*abb297(20)*abb297(102)
      abb297(102)=abb297(26)*abb297(63)
      abb297(16)=abb297(16)*abb297(8)
      abb297(16)=abb297(102)-abb297(16)
      abb297(16)=abb297(16)*spak1k2
      abb297(102)=abb297(99)*abb297(16)
      abb297(20)=abb297(20)+abb297(102)
      abb297(102)=2.0_ki*abb297(9)
      abb297(20)=abb297(102)*spbl6k2*abb297(20)
      abb297(99)=-abb297(99)*abb297(30)
      abb297(91)=abb297(91)*abb297(34)
      abb297(91)=abb297(91)+abb297(99)
      abb297(91)=abb297(6)*abb297(91)
      abb297(90)=abb297(90)*abb297(30)
      abb297(22)=-abb297(22)*abb297(34)
      abb297(22)=abb297(22)+abb297(90)
      abb297(22)=spbl6k2*abb297(22)
      abb297(22)=abb297(22)+abb297(91)
      abb297(90)=2.0_ki*spak2l5
      abb297(22)=abb297(22)*abb297(90)
      abb297(91)=spbk7l6*spak4k7
      abb297(99)=abb297(23)*abb297(91)
      abb297(18)=abb297(22)+abb297(20)+abb297(99)+abb297(62)+abb297(44)+abb297(&
      &93)+abb297(81)+abb297(18)+abb297(41)+abb297(38)
      abb297(18)=4.0_ki*abb297(18)
      abb297(20)=abb297(78)*abb297(56)
      abb297(22)=-abb297(64)*abb297(25)
      abb297(22)=abb297(58)-abb297(22)
      abb297(38)=abb297(22)*spak1k7
      abb297(41)=abb297(38)*spak4l6
      abb297(44)=-abb297(56)*abb297(41)
      abb297(44)=abb297(44)+abb297(20)+abb297(33)
      abb297(44)=8.0_ki*abb297(44)
      abb297(58)=-abb297(60)*spak1k7
      abb297(53)=abb297(58)*abb297(53)
      abb297(20)=-abb297(53)+abb297(20)-abb297(33)
      abb297(33)=8.0_ki*abb297(20)
      abb297(53)=-abb297(94)*abb297(25)
      abb297(15)=-abb297(96)*abb297(15)
      abb297(15)=abb297(53)-abb297(15)
      abb297(53)=abb297(15)*abb297(6)
      abb297(60)=abb297(22)*spbl6k2
      abb297(60)=abb297(53)+abb297(60)
      abb297(60)=abb297(60)*spak1k7
      abb297(62)=spak4l6*abb297(60)
      abb297(11)=abb297(66)*abb297(11)
      abb297(50)=abb297(50)*abb297(96)
      abb297(11)=abb297(11)+abb297(50)
      abb297(50)=abb297(27)*spak1k7
      abb297(11)=abb297(11)*abb297(50)
      abb297(11)=abb297(11)+abb297(58)
      abb297(58)=spak4k7*abb297(11)
      abb297(45)=abb297(58)+abb297(62)-abb297(85)+abb297(45)
      abb297(45)=8.0_ki*abb297(45)
      abb297(20)=4.0_ki*abb297(20)
      abb297(58)=abb297(95)*abb297(27)
      abb297(58)=abb297(58)+abb297(32)
      abb297(62)=es12*abb297(58)
      abb297(64)=abb297(88)*abb297(98)
      abb297(78)=-spak4l5*abb297(82)
      abb297(81)=abb297(49)*abb297(26)
      abb297(78)=abb297(81)+abb297(78)
      abb297(78)=spbl5k3*abb297(78)
      abb297(17)=abb297(17)*abb297(43)
      abb297(49)=-abb297(49)*abb297(34)
      abb297(17)=abb297(49)+abb297(17)
      abb297(17)=spbk3k1*abb297(17)
      abb297(17)=abb297(64)-abb297(62)+abb297(78)+abb297(17)
      abb297(11)=abb297(52)+abb297(11)
      abb297(11)=spak2k4*abb297(11)
      abb297(49)=abb297(42)*abb297(2)
      abb297(52)=-spak4l5*abb297(49)
      abb297(62)=-abb297(48)*abb297(26)
      abb297(52)=abb297(62)+abb297(52)
      abb297(52)=spak1k7*abb297(52)
      abb297(62)=abb297(34)*abb297(48)
      abb297(43)=abb297(43)*abb297(2)
      abb297(43)=abb297(62)-abb297(43)
      abb297(43)=2.0_ki*abb297(43)
      abb297(62)=-spal5k7*abb297(43)
      abb297(52)=abb297(62)+2.0_ki*abb297(52)
      abb297(52)=spbk7k3*abb297(52)
      abb297(49)=-abb297(69)*abb297(49)
      abb297(48)=-abb297(48)*abb297(73)
      abb297(48)=abb297(48)+abb297(49)
      abb297(43)=-spal5l6*abb297(43)
      abb297(43)=abb297(43)+2.0_ki*abb297(48)
      abb297(43)=spbl6k3*abb297(43)
      abb297(10)=abb297(10)*abb297(14)
      abb297(14)=abb297(88)+abb297(66)
      abb297(14)=abb297(14)*abb297(10)
      abb297(13)=abb297(13)*abb297(2)
      abb297(48)=abb297(19)*abb297(13)
      abb297(49)=abb297(48)+abb297(92)
      abb297(49)=abb297(49)*abb297(26)
      abb297(14)=abb297(49)+abb297(14)
      abb297(14)=abb297(14)*abb297(27)
      abb297(49)=abb297(2)+mB
      abb297(10)=-abb297(49)*abb297(10)
      abb297(49)=abb297(13)+abb297(74)
      abb297(49)=-abb297(49)*abb297(26)
      abb297(10)=abb297(14)+abb297(49)+abb297(10)
      abb297(10)=abb297(10)*abb297(100)
      abb297(14)=-spak4k7*abb297(46)
      abb297(14)=-abb297(41)+abb297(14)
      abb297(14)=spbk7l6*abb297(14)
      abb297(19)=-abb297(19)*abb297(63)*abb297(37)
      abb297(37)=-abb297(77)*abb297(101)
      abb297(19)=abb297(37)+abb297(19)
      abb297(19)=spak2k4*abb297(19)
      abb297(16)=-abb297(88)*abb297(16)
      abb297(16)=abb297(19)+abb297(16)
      abb297(16)=abb297(16)*abb297(102)
      abb297(19)=-abb297(48)*abb297(34)
      abb297(37)=abb297(88)*abb297(30)
      abb297(19)=abb297(19)+abb297(37)
      abb297(19)=abb297(19)*abb297(27)
      abb297(30)=-abb297(2)*abb297(30)
      abb297(13)=abb297(13)*abb297(34)
      abb297(13)=abb297(19)+abb297(13)+abb297(30)
      abb297(13)=abb297(13)*abb297(90)
      abb297(10)=abb297(13)+abb297(16)+abb297(14)+abb297(10)+abb297(11)+abb297(&
      &43)+abb297(52)+2.0_ki*abb297(17)
      abb297(10)=4.0_ki*abb297(10)
      abb297(11)=16.0_ki*abb297(32)
      abb297(13)=-16.0_ki*abb297(58)
      abb297(14)=8.0_ki*abb297(32)
      abb297(16)=spak2k4*abb297(60)
      abb297(17)=-abb297(38)*abb297(91)
      abb297(16)=abb297(16)+abb297(17)
      abb297(16)=4.0_ki*abb297(16)
      abb297(17)=-abb297(35)*abb297(67)
      abb297(19)=-8.0_ki*abb297(79)
      abb297(30)=abb297(71)*abb297(67)
      abb297(32)=8.0_ki*abb297(80)
      abb297(35)=abb297(56)*abb297(46)*spal6k7
      abb297(23)=abb297(35)-abb297(23)
      abb297(35)=8.0_ki*abb297(23)
      abb297(37)=abb297(72)*spal6k7*abb297(68)
      abb297(24)=-abb297(24)*abb297(27)
      abb297(24)=abb297(24)+abb297(37)+abb297(23)
      abb297(24)=8.0_ki*abb297(24)
      abb297(23)=-4.0_ki*abb297(23)
      abb297(37)=8.0_ki*abb297(46)
      abb297(41)=-abb297(68)*abb297(27)
      abb297(41)=abb297(41)-abb297(46)
      abb297(41)=8.0_ki*abb297(41)
      abb297(43)=4.0_ki*abb297(46)
      abb297(46)=8.0_ki*abb297(38)
      abb297(48)=abb297(15)*abb297(50)
      abb297(48)=abb297(38)+abb297(48)
      abb297(48)=8.0_ki*abb297(48)
      abb297(38)=-4.0_ki*abb297(38)
      abb297(49)=abb297(22)*spal6k7
      abb297(50)=abb297(49)*spbl6k2
      abb297(52)=16.0_ki*spak4l6
      abb297(56)=-abb297(50)*abb297(52)
      abb297(52)=abb297(22)*abb297(52)
      abb297(49)=-spak4k7*abb297(49)*abb297(67)
      abb297(58)=8.0_ki*spak4k7*abb297(22)
      abb297(60)=-abb297(97)*abb297(84)
      abb297(26)=abb297(83)*abb297(26)
      abb297(26)=abb297(26)+abb297(60)
      abb297(26)=spbl6k2*abb297(26)
      abb297(26)=abb297(26)+abb297(51)
      abb297(26)=8.0_ki*abb297(26)
      abb297(51)=abb297(86)*abb297(42)
      abb297(34)=abb297(47)*abb297(34)
      abb297(34)=abb297(34)+abb297(51)
      abb297(34)=spbk2k1*abb297(34)
      abb297(12)=-abb297(89)*abb297(12)
      abb297(51)=-abb297(97)*abb297(42)
      abb297(12)=abb297(34)+abb297(51)+abb297(12)
      abb297(12)=8.0_ki*abb297(12)
      abb297(34)=-spal6k7*abb297(53)
      abb297(34)=-abb297(50)+abb297(34)
      abb297(50)=8.0_ki*spak2k4
      abb297(34)=abb297(34)*abb297(50)
      abb297(15)=abb297(15)*abb297(27)
      abb297(15)=abb297(15)+abb297(22)
      abb297(15)=abb297(15)*abb297(50)
      abb297(22)=abb297(47)*abb297(25)
      abb297(25)=spal6k7*abb297(22)
      abb297(25)=abb297(25)+abb297(87)
      abb297(25)=abb297(25)*abb297(67)
      abb297(27)=abb297(57)*abb297(42)
      abb297(22)=-abb297(22)+abb297(27)
      abb297(22)=8.0_ki*abb297(22)
      R2d297=0.0_ki
      rat2 = rat2 + R2d297
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='297' value='", &
          & R2d297, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd297h4
