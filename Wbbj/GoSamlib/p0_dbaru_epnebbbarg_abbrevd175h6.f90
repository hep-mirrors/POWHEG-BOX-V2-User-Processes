module     p0_dbaru_epnebbbarg_abbrevd175h6
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh6
   implicit none
   private
   complex(ki), dimension(94), public :: abb175
   complex(ki), public :: R2d175
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
      abb175(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb175(2)=1.0_ki/(mB**2-es67-es56+es567)
      abb175(3)=sqrt2**(-1)
      abb175(4)=es234**(-1)
      abb175(5)=es567**(-1)
      abb175(6)=spbk7k2**(-1)
      abb175(7)=sqrt(mB**2)
      abb175(8)=spak2l6**(-1)
      abb175(9)=1.0_ki/(es34+es567-es12-es234)
      abb175(10)=spak2l5**(-1)
      abb175(11)=spbl5k2**(-1)
      abb175(12)=spbl6k2**(-1)
      abb175(13)=i_*CVDU*abb175(5)*abb175(3)*abb175(2)*abb175(1)
      abb175(14)=TR*gW
      abb175(14)=abb175(14)**2
      abb175(15)=abb175(13)*abb175(14)*spal5k7
      abb175(16)=abb175(15)*c2
      abb175(17)=spbk3k2*abb175(4)
      abb175(18)=abb175(16)*abb175(17)
      abb175(19)=abb175(17)*abb175(15)
      abb175(20)=NC*c1
      abb175(21)=abb175(19)*abb175(20)
      abb175(18)=abb175(18)-abb175(21)
      abb175(21)=spak1k7*spak3k4
      abb175(22)=abb175(21)*abb175(18)
      abb175(23)=abb175(15)*abb175(6)
      abb175(24)=abb175(20)*abb175(23)
      abb175(25)=abb175(24)*abb175(17)
      abb175(26)=abb175(23)*abb175(17)
      abb175(27)=abb175(26)*c2
      abb175(25)=abb175(25)-abb175(27)
      abb175(28)=abb175(25)*spbl5k2
      abb175(29)=spak1l5*spak3k4
      abb175(30)=abb175(29)*abb175(28)
      abb175(31)=abb175(22)-abb175(30)
      abb175(31)=abb175(31)*spbl6k3
      abb175(32)=spak2k4*spbl6k2
      abb175(33)=abb175(18)*abb175(32)
      abb175(15)=abb175(20)*abb175(15)
      abb175(15)=abb175(15)-abb175(16)
      abb175(34)=abb175(9)*spak1k4
      abb175(35)=abb175(34)*spbl6k2
      abb175(36)=abb175(35)*spbk3k1
      abb175(37)=abb175(15)*abb175(36)
      abb175(33)=abb175(33)+abb175(37)
      abb175(37)=abb175(33)*spak1k7
      abb175(38)=abb175(28)*abb175(32)
      abb175(23)=abb175(23)*c2
      abb175(39)=abb175(23)-abb175(24)
      abb175(40)=abb175(39)*spbl5k2
      abb175(41)=abb175(40)*abb175(36)
      abb175(38)=abb175(38)+abb175(41)
      abb175(41)=abb175(38)*spak1l5
      abb175(42)=abb175(35)*spbk4k3
      abb175(43)=abb175(40)*abb175(42)
      abb175(44)=abb175(43)*spak4l5
      abb175(45)=abb175(15)*abb175(42)
      abb175(46)=abb175(45)*spak4k7
      abb175(47)=-mB*abb175(39)
      abb175(48)=abb175(4)*spbk3k2**2
      abb175(49)=-abb175(48)*abb175(47)
      abb175(50)=abb175(8)*abb175(7)
      abb175(51)=abb175(50)*spak3k4
      abb175(52)=abb175(51)*spak1k2
      abb175(53)=abb175(49)*abb175(52)
      abb175(31)=-abb175(31)-abb175(41)-abb175(44)+abb175(37)+abb175(46)-abb175&
      &(53)
      abb175(37)=4.0_ki*abb175(31)
      abb175(41)=3.0_ki*abb175(7)
      abb175(44)=abb175(15)*abb175(41)
      abb175(46)=-mB*abb175(15)
      abb175(44)=abb175(44)-abb175(46)
      abb175(54)=-abb175(44)*abb175(36)
      abb175(55)=abb175(17)*mB
      abb175(16)=abb175(55)*abb175(16)
      abb175(56)=abb175(20)*mB
      abb175(19)=abb175(56)*abb175(19)
      abb175(16)=abb175(16)-abb175(19)
      abb175(19)=-abb175(18)*abb175(41)
      abb175(19)=abb175(19)-abb175(16)
      abb175(19)=abb175(19)*abb175(32)
      abb175(19)=abb175(54)+abb175(19)
      abb175(19)=spak1k7*abb175(19)
      abb175(54)=abb175(25)*abb175(7)
      abb175(55)=abb175(55)*abb175(24)
      abb175(57)=c2*mB
      abb175(26)=abb175(57)*abb175(26)
      abb175(26)=abb175(55)-abb175(26)
      abb175(55)=-abb175(54)-abb175(26)
      abb175(58)=spbl5k2*spak3k4
      abb175(55)=spak1l5*abb175(55)*abb175(58)
      abb175(59)=abb175(7)*abb175(18)
      abb175(59)=abb175(59)+abb175(16)
      abb175(59)=abb175(59)*abb175(21)
      abb175(55)=abb175(55)+abb175(59)
      abb175(55)=spbl6k3*abb175(55)
      abb175(19)=abb175(55)+abb175(19)
      abb175(19)=abb175(7)*abb175(19)
      abb175(55)=abb175(51)*abb175(26)
      abb175(59)=2.0_ki*spak1l5
      abb175(60)=abb175(59)*abb175(55)
      abb175(61)=es712-es71
      abb175(62)=abb175(61)-es12
      abb175(63)=-abb175(60)*abb175(62)
      abb175(64)=abb175(7)**2
      abb175(65)=abb175(64)*abb175(25)
      abb175(66)=abb175(65)*spbl6k2
      abb175(67)=2.0_ki*abb175(29)
      abb175(68)=-abb175(66)*abb175(67)
      abb175(69)=spal5k7**2
      abb175(70)=abb175(69)*abb175(13)*abb175(17)
      abb175(71)=abb175(70)*abb175(14)
      abb175(56)=abb175(57)-abb175(56)
      abb175(56)=abb175(56)*abb175(52)
      abb175(57)=-abb175(71)*abb175(56)
      abb175(72)=spak1k7*abb175(16)*abb175(51)
      abb175(73)=2.0_ki*spak2l5
      abb175(74)=abb175(73)*abb175(72)
      abb175(57)=abb175(74)+abb175(68)+abb175(57)+abb175(63)
      abb175(57)=spbl5k3*abb175(57)
      abb175(63)=abb175(26)*abb175(50)
      abb175(68)=abb175(32)*abb175(63)
      abb175(74)=abb175(47)*abb175(50)
      abb175(75)=abb175(74)*abb175(36)
      abb175(68)=abb175(68)-abb175(75)
      abb175(75)=abb175(55)*spbl6k3
      abb175(76)=abb175(68)-abb175(75)
      abb175(77)=-abb175(76)*abb175(62)
      abb175(76)=abb175(76)*spbl5k2
      abb175(78)=abb175(76)*abb175(73)
      abb175(77)=abb175(78)+2.0_ki*abb175(77)
      abb175(77)=spak1l6*abb175(77)
      abb175(78)=abb175(14)*abb175(6)
      abb175(70)=abb175(70)*abb175(78)
      abb175(56)=abb175(70)*abb175(56)
      abb175(60)=-spak2k7*abb175(60)
      abb175(56)=abb175(60)+abb175(56)
      abb175(56)=spbl5k2*abb175(56)
      abb175(60)=2.0_ki*abb175(21)
      abb175(79)=-abb175(66)*abb175(60)
      abb175(80)=2.0_ki*spak1k7
      abb175(81)=spak2l5*spbl5k2
      abb175(82)=abb175(55)*abb175(81)*abb175(80)
      abb175(56)=abb175(82)+abb175(79)+abb175(56)
      abb175(56)=spbk7k3*abb175(56)
      abb175(44)=-spak4k7*abb175(7)*abb175(44)
      abb175(79)=abb175(41)*abb175(39)
      abb175(82)=abb175(47)-abb175(79)
      abb175(83)=spbl5k2*abb175(7)
      abb175(84)=-spak4l5*abb175(82)*abb175(83)
      abb175(44)=abb175(84)+abb175(44)
      abb175(44)=abb175(42)*abb175(44)
      abb175(82)=-abb175(82)*abb175(36)
      abb175(41)=abb175(25)*abb175(41)
      abb175(41)=abb175(41)+abb175(26)
      abb175(41)=abb175(41)*abb175(32)
      abb175(41)=abb175(82)+abb175(41)
      abb175(41)=spak1l5*abb175(83)*abb175(41)
      abb175(82)=abb175(39)*abb175(48)
      abb175(83)=-mB**3*abb175(82)
      abb175(84)=mB**2
      abb175(23)=abb175(84)*abb175(23)
      abb175(24)=abb175(84)*abb175(24)
      abb175(23)=abb175(23)-abb175(24)
      abb175(85)=-abb175(48)*abb175(23)
      abb175(86)=-abb175(7)*abb175(85)
      abb175(86)=abb175(86)-abb175(83)
      abb175(86)=abb175(86)*abb175(52)
      abb175(87)=abb175(83)*abb175(52)
      abb175(88)=abb175(62)*abb175(11)
      abb175(89)=abb175(87)*abb175(10)*abb175(88)
      abb175(86)=abb175(86)+abb175(89)
      abb175(89)=-abb175(46)*abb175(36)
      abb175(90)=abb175(16)*abb175(32)
      abb175(89)=abb175(89)+abb175(90)
      abb175(89)=spak1k2*abb175(89)
      abb175(90)=spak2k4*abb175(46)*abb175(42)
      abb175(89)=abb175(90)+abb175(89)
      abb175(50)=abb175(50)*abb175(89)
      abb175(52)=-spbl6k3*abb175(16)*abb175(52)
      abb175(50)=abb175(52)+abb175(50)
      abb175(52)=2.0_ki*spal6k7
      abb175(50)=abb175(50)*abb175(52)
      abb175(76)=spak1k2*abb175(76)
      abb175(89)=abb175(74)*abb175(42)
      abb175(90)=spak2k4*spbl5k2
      abb175(91)=abb175(89)*abb175(90)
      abb175(76)=abb175(91)+abb175(76)
      abb175(91)=2.0_ki*spal5l6
      abb175(76)=abb175(76)*abb175(91)
      abb175(92)=-spbk7l6*abb175(60)
      abb175(93)=spbl6l5*abb175(67)
      abb175(92)=abb175(93)+abb175(92)
      abb175(82)=abb175(64)*abb175(92)*abb175(82)
      abb175(89)=abb175(89)*spak4l6
      abb175(61)=-abb175(61)+abb175(81)+es12
      abb175(81)=-abb175(61)*abb175(89)
      abb175(19)=2.0_ki*abb175(81)+abb175(76)+abb175(50)+abb175(57)+abb175(41)+&
      &abb175(82)+abb175(44)+abb175(56)+abb175(77)+abb175(19)+3.0_ki*abb175(86)
      abb175(19)=4.0_ki*abb175(19)
      abb175(41)=16.0_ki*abb175(31)
      abb175(44)=-8.0_ki*abb175(53)
      abb175(50)=abb175(63)*spak1k4
      abb175(53)=-abb175(61)*abb175(50)
      abb175(56)=spbl6k2*spak1k4
      abb175(57)=abb175(65)*abb175(56)
      abb175(53)=abb175(53)+abb175(57)
      abb175(53)=32.0_ki*abb175(53)
      abb175(65)=abb175(47)*abb175(7)
      abb175(76)=abb175(23)+2.0_ki*abb175(65)
      abb175(77)=abb175(34)*spbk3k1
      abb175(81)=abb175(77)*spbl5k2
      abb175(82)=-abb175(76)*abb175(81)
      abb175(86)=abb175(26)*abb175(7)
      abb175(17)=abb175(24)*abb175(17)
      abb175(24)=abb175(27)*abb175(84)
      abb175(17)=abb175(17)-abb175(24)
      abb175(24)=2.0_ki*abb175(86)-abb175(17)
      abb175(24)=abb175(24)*abb175(90)
      abb175(24)=abb175(82)+abb175(24)
      abb175(24)=spak1l5*abb175(24)
      abb175(27)=-abb175(84)*abb175(15)
      abb175(82)=2.0_ki*abb175(7)
      abb175(46)=abb175(82)*abb175(46)
      abb175(46)=abb175(46)-abb175(27)
      abb175(92)=abb175(46)*abb175(77)
      abb175(84)=-abb175(84)*abb175(18)
      abb175(16)=-abb175(16)*abb175(82)
      abb175(16)=abb175(16)-abb175(84)
      abb175(16)=spak2k4*abb175(16)
      abb175(16)=abb175(92)+abb175(16)
      abb175(16)=spak1k7*abb175(16)
      abb175(16)=abb175(16)+abb175(24)
      abb175(16)=abb175(8)*abb175(16)
      abb175(24)=-abb175(27)*abb175(36)
      abb175(82)=-abb175(84)*abb175(32)
      abb175(24)=abb175(24)+abb175(82)
      abb175(24)=abb175(24)*abb175(80)
      abb175(60)=spbl6k3*abb175(84)*abb175(60)
      abb175(24)=abb175(60)+abb175(24)+abb175(87)
      abb175(24)=abb175(11)*abb175(24)
      abb175(60)=spbl6k3*abb175(17)*abb175(67)
      abb175(24)=abb175(24)+abb175(60)
      abb175(24)=abb175(10)*abb175(24)
      abb175(60)=abb175(23)*abb175(36)
      abb175(67)=abb175(17)*abb175(32)
      abb175(60)=abb175(60)+abb175(67)
      abb175(60)=abb175(60)*abb175(10)
      abb175(59)=-abb175(59)*abb175(60)
      abb175(67)=abb175(75)+abb175(68)
      abb175(67)=spak1l6*abb175(67)
      abb175(68)=abb175(58)*abb175(8)
      abb175(75)=abb175(17)*abb175(68)*spak1l5
      abb175(80)=abb175(8)*abb175(84)*abb175(21)
      abb175(75)=abb175(75)+abb175(80)
      abb175(75)=spbl6k3*abb175(75)
      abb175(80)=-spak1k2*spak3k4*abb175(7)*abb175(83)*abb175(8)**2
      abb175(75)=abb175(80)+abb175(75)
      abb175(75)=abb175(12)*abb175(75)
      abb175(80)=abb175(34)*spbk4k3
      abb175(46)=abb175(8)*abb175(46)*abb175(80)
      abb175(42)=abb175(42)*abb175(10)
      abb175(82)=abb175(11)*abb175(27)*abb175(42)
      abb175(46)=abb175(46)-2.0_ki*abb175(82)
      abb175(46)=spak4k7*abb175(46)
      abb175(82)=abb175(80)*spbl5k2
      abb175(76)=-abb175(8)*abb175(76)*abb175(82)
      abb175(42)=abb175(42)*abb175(23)
      abb175(76)=abb175(76)-2.0_ki*abb175(42)
      abb175(76)=spak4l5*abb175(76)
      abb175(83)=-spbl5k3*spak1l5
      abb175(84)=-spbk7k3*spak1k7
      abb175(83)=abb175(84)+abb175(83)
      abb175(83)=abb175(55)*abb175(83)
      abb175(84)=4.0_ki*abb175(61)
      abb175(84)=abb175(50)*abb175(84)
      abb175(16)=-abb175(89)+abb175(76)+abb175(46)+abb175(75)+abb175(67)+abb175&
      &(59)-4.0_ki*abb175(57)+abb175(84)+abb175(83)+abb175(24)+abb175(16)
      abb175(16)=8.0_ki*abb175(16)
      abb175(24)=32.0_ki*abb175(50)
      abb175(31)=-8.0_ki*abb175(31)
      abb175(46)=abb175(90)*abb175(18)
      abb175(50)=abb175(15)*abb175(81)
      abb175(46)=abb175(46)+abb175(50)
      abb175(50)=-spak1l5*abb175(46)
      abb175(57)=spbl6k3*spak3k4
      abb175(59)=abb175(57)*abb175(18)
      abb175(33)=abb175(59)-abb175(33)
      abb175(59)=spak1l6*abb175(33)
      abb175(67)=-2.0_ki*abb175(30)+abb175(22)
      abb175(67)=spbk7k3*abb175(67)
      abb175(75)=abb175(15)*abb175(77)
      abb175(76)=-spak2k4*abb175(18)
      abb175(76)=-abb175(75)+abb175(76)
      abb175(76)=spak1k7*abb175(76)
      abb175(83)=abb175(15)*spak4k7
      abb175(84)=-abb175(80)*abb175(83)
      abb175(76)=abb175(76)+abb175(84)
      abb175(76)=spbk7k2*abb175(76)
      abb175(27)=-abb175(48)*abb175(27)
      abb175(48)=abb175(10)*spak3k4
      abb175(84)=-abb175(48)*abb175(11)
      abb175(87)=spak3k4*abb175(8)
      abb175(89)=abb175(12)*abb175(87)
      abb175(84)=abb175(89)+abb175(84)
      abb175(84)=abb175(84)*abb175(27)*spak1k2
      abb175(89)=-spak4l5*abb175(15)*abb175(82)
      abb175(92)=-spbl5k3*abb175(18)*abb175(29)
      abb175(93)=-spak4l6*abb175(45)
      abb175(50)=abb175(76)+abb175(93)+abb175(67)+abb175(92)+abb175(89)+abb175(&
      &59)+abb175(50)+abb175(84)
      abb175(50)=4.0_ki*abb175(50)
      abb175(59)=16.0_ki*spak1k4
      abb175(67)=abb175(59)*abb175(18)
      abb175(76)=abb175(48)*abb175(85)
      abb175(84)=abb175(68)*abb175(85)
      abb175(89)=abb175(12)*abb175(84)
      abb175(89)=abb175(89)-abb175(76)
      abb175(89)=spak1k2*abb175(89)
      abb175(92)=spbl5k2**2
      abb175(93)=abb175(92)*abb175(39)
      abb175(94)=abb175(77)*abb175(93)
      abb175(25)=spak2k4*abb175(25)*abb175(92)
      abb175(25)=abb175(94)+abb175(25)
      abb175(25)=spak1l5*abb175(25)
      abb175(46)=-spak1k7*abb175(46)
      abb175(57)=abb175(57)*abb175(28)
      abb175(38)=abb175(57)-abb175(38)
      abb175(57)=-spak1l6*abb175(38)
      abb175(22)=-abb175(30)+2.0_ki*abb175(22)
      abb175(22)=spbl5k3*abb175(22)
      abb175(30)=-abb175(83)*abb175(82)
      abb175(83)=spak4l5*abb175(80)*abb175(93)
      abb175(92)=spbk7k3*abb175(28)*abb175(21)
      abb175(93)=spak4l6*abb175(43)
      abb175(22)=abb175(93)+abb175(92)+abb175(22)+abb175(83)+abb175(30)+abb175(&
      &57)+abb175(25)+abb175(46)+abb175(89)
      abb175(22)=4.0_ki*abb175(22)
      abb175(25)=abb175(59)*abb175(28)
      abb175(30)=-spal6k7*abb175(45)
      abb175(43)=-spal5l6*abb175(43)
      abb175(30)=abb175(30)+abb175(43)
      abb175(30)=8.0_ki*abb175(30)
      abb175(43)=-abb175(4)*abb175(39)
      abb175(45)=abb175(56)*abb175(43)*abb175(64)
      abb175(46)=spak1k4*abb175(4)
      abb175(56)=-abb175(74)*abb175(46)
      abb175(57)=-abb175(56)*abb175(61)
      abb175(57)=-abb175(45)+abb175(57)
      abb175(57)=spbk4k2*abb175(57)
      abb175(59)=abb175(63)*abb175(61)
      abb175(59)=-abb175(66)+abb175(59)
      abb175(59)=spak1k3*abb175(59)
      abb175(57)=abb175(57)+abb175(59)
      abb175(57)=16.0_ki*abb175(57)
      abb175(59)=spbk4k2*abb175(56)
      abb175(61)=-spak1k3*abb175(63)
      abb175(59)=abb175(59)+abb175(61)
      abb175(59)=16.0_ki*abb175(59)
      abb175(46)=abb175(15)*abb175(46)
      abb175(61)=spbk4k2*abb175(46)
      abb175(64)=-spak1k3*abb175(18)
      abb175(61)=abb175(61)+abb175(64)
      abb175(61)=8.0_ki*abb175(61)
      abb175(43)=abb175(43)*spak1k4
      abb175(64)=spbk4k2*spbl5k2*abb175(43)
      abb175(83)=spak1k3*abb175(28)
      abb175(64)=abb175(64)+abb175(83)
      abb175(64)=8.0_ki*abb175(64)
      abb175(65)=abb175(65)-abb175(23)
      abb175(65)=abb175(65)*abb175(8)
      abb175(83)=abb175(65)*abb175(34)
      abb175(83)=-abb175(83)+2.0_ki*abb175(56)
      abb175(83)=abb175(83)*spbk4k3
      abb175(63)=abb175(63)*spak1k2
      abb175(83)=abb175(83)-2.0_ki*abb175(63)
      abb175(89)=-2.0_ki*abb175(62)
      abb175(92)=abb175(73)*spbl5k2
      abb175(92)=abb175(92)+abb175(89)
      abb175(83)=abb175(83)*abb175(92)
      abb175(47)=-abb175(79)+2.0_ki*abb175(47)
      abb175(47)=abb175(47)*abb175(7)
      abb175(23)=abb175(47)+abb175(23)
      abb175(35)=abb175(23)*abb175(35)
      abb175(35)=4.0_ki*abb175(45)+abb175(35)
      abb175(35)=spbk4k3*abb175(35)
      abb175(45)=spak1k2*abb175(66)
      abb175(42)=-abb175(42)*abb175(88)
      abb175(20)=abb175(20)-c2
      abb175(13)=abb175(69)*abb175(13)*abb175(20)
      abb175(47)=abb175(78)*abb175(13)
      abb175(66)=-spbk7l6*abb175(47)*abb175(82)
      abb175(13)=abb175(14)*abb175(13)
      abb175(14)=-spbl6l5*abb175(13)*abb175(80)
      abb175(14)=abb175(14)+abb175(66)+abb175(42)+abb175(35)+4.0_ki*abb175(45)+&
      &abb175(83)
      abb175(14)=4.0_ki*abb175(14)
      abb175(35)=abb175(34)*abb175(74)
      abb175(35)=-abb175(56)+abb175(35)
      abb175(35)=spbk4k3*abb175(35)
      abb175(35)=abb175(35)+abb175(63)
      abb175(35)=16.0_ki*abb175(35)
      abb175(15)=-abb175(15)*abb175(34)
      abb175(15)=-abb175(46)+abb175(15)
      abb175(15)=spbk4k3*abb175(15)
      abb175(18)=spak1k2*abb175(18)
      abb175(15)=abb175(15)+abb175(18)
      abb175(15)=8.0_ki*abb175(15)
      abb175(18)=abb175(39)*abb175(34)
      abb175(18)=-abb175(43)+abb175(18)
      abb175(18)=spbk4k3*spbl5k2*abb175(18)
      abb175(28)=-spak1k2*abb175(28)
      abb175(18)=abb175(18)+abb175(28)
      abb175(18)=8.0_ki*abb175(18)
      abb175(28)=abb175(49)*abb175(51)
      abb175(34)=8.0_ki*abb175(28)
      abb175(39)=spak1k7*abb175(34)
      abb175(29)=abb175(85)*abb175(29)
      abb175(21)=abb175(27)*abb175(21)
      abb175(27)=abb175(11)*abb175(21)
      abb175(27)=abb175(29)+abb175(27)
      abb175(27)=abb175(10)*abb175(27)
      abb175(29)=spak1l5*abb175(84)
      abb175(21)=abb175(8)*abb175(21)
      abb175(21)=abb175(29)+abb175(21)
      abb175(21)=abb175(12)*abb175(21)
      abb175(28)=spak1l6*abb175(28)
      abb175(21)=abb175(21)+2.0_ki*abb175(27)+abb175(28)
      abb175(21)=4.0_ki*abb175(21)
      abb175(27)=spak1l5*abb175(34)
      abb175(28)=-spak1l5*spbl5k2
      abb175(29)=spak1l6*spbl6k2
      abb175(28)=-2.0_ki*abb175(29)+abb175(28)
      abb175(28)=abb175(55)*abb175(28)
      abb175(28)=abb175(72)+abb175(28)
      abb175(28)=4.0_ki*abb175(28)
      abb175(29)=-abb175(71)*abb175(20)
      abb175(34)=spbl5k3*abb175(29)
      abb175(34)=abb175(34)+abb175(85)
      abb175(34)=spak3k4*abb175(34)
      abb175(33)=abb175(33)*abb175(52)
      abb175(38)=abb175(38)*abb175(91)
      abb175(42)=-abb175(76)*abb175(88)
      abb175(43)=-abb175(87)*abb175(62)
      abb175(45)=spak2l5*abb175(68)
      abb175(43)=abb175(45)+abb175(43)
      abb175(43)=abb175(12)*abb175(85)*abb175(43)
      abb175(20)=-abb175(70)*abb175(20)
      abb175(45)=-spbk7k3*abb175(20)*abb175(58)
      abb175(33)=abb175(38)+abb175(33)+abb175(45)+2.0_ki*abb175(43)+abb175(42)+&
      &abb175(34)
      abb175(33)=4.0_ki*abb175(33)
      abb175(34)=abb175(86)-abb175(17)
      abb175(34)=abb175(34)*abb175(8)
      abb175(38)=abb175(34)*abb175(89)
      abb175(26)=-abb175(54)+2.0_ki*abb175(26)
      abb175(26)=abb175(26)*abb175(7)
      abb175(26)=abb175(26)-abb175(17)
      abb175(42)=spbl6k2*abb175(26)
      abb175(43)=spbl6l5*abb175(29)
      abb175(38)=abb175(43)+abb175(42)+abb175(38)
      abb175(38)=spak3k4*abb175(38)
      abb175(42)=abb175(34)*abb175(73)
      abb175(43)=spbk7l6*abb175(20)
      abb175(42)=abb175(43)+abb175(42)
      abb175(42)=abb175(58)*abb175(42)
      abb175(17)=abb175(48)*abb175(17)*spbl6k2*abb175(88)
      abb175(17)=abb175(17)+abb175(38)+abb175(42)
      abb175(17)=4.0_ki*abb175(17)
      abb175(38)=abb175(34)*spak2k4
      abb175(42)=abb175(65)*abb175(77)
      abb175(38)=abb175(38)+abb175(42)
      abb175(38)=-abb175(38)*abb175(89)
      abb175(42)=-abb175(65)*abb175(81)
      abb175(34)=-abb175(34)*abb175(90)
      abb175(34)=abb175(42)+abb175(34)
      abb175(34)=abb175(34)*abb175(73)
      abb175(23)=abb175(23)*abb175(36)
      abb175(26)=-abb175(26)*abb175(32)
      abb175(32)=-abb175(60)*abb175(88)
      abb175(36)=-abb175(47)*abb175(81)
      abb175(20)=-abb175(20)*abb175(90)
      abb175(20)=abb175(36)+abb175(20)
      abb175(20)=spbk7l6*abb175(20)
      abb175(13)=-abb175(13)*abb175(77)
      abb175(29)=-spak2k4*abb175(29)
      abb175(13)=abb175(13)+abb175(29)
      abb175(13)=spbl6l5*abb175(13)
      abb175(13)=abb175(13)+abb175(20)+abb175(34)+abb175(32)+abb175(23)+abb175(&
      &26)+abb175(38)
      abb175(13)=4.0_ki*abb175(13)
      abb175(20)=16.0_ki*abb175(77)*abb175(74)
      abb175(23)=-8.0_ki*abb175(75)
      abb175(26)=8.0_ki*abb175(77)*abb175(40)
      R2d175=abb175(37)
      rat2 = rat2 + R2d175
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='175' value='", &
          & R2d175, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd175h6
