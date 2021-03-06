module     p0_dbaru_epnebbbarg_abbrevd84h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(81), public :: abb84
   complex(ki), public :: R2d84
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
      abb84(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb84(2)=sqrt2**(-1)
      abb84(3)=es56**(-1)
      abb84(4)=spbl5k2**(-1)
      abb84(5)=spak2k7**(-1)
      abb84(6)=spbl6k2**(-1)
      abb84(7)=spak4l5*spbk4k3
      abb84(8)=spak1l5*spbk3k1
      abb84(7)=abb84(7)+abb84(8)
      abb84(9)=es12-es712
      abb84(10)=-abb84(7)*abb84(9)
      abb84(11)=abb84(7)*es71
      abb84(10)=abb84(10)-abb84(11)
      abb84(12)=-abb84(6)*abb84(10)
      abb84(13)=spak4l6*spbk4k3
      abb84(14)=spak1l6*spbk3k1
      abb84(13)=abb84(13)+abb84(14)
      abb84(15)=-abb84(13)*abb84(9)
      abb84(16)=abb84(13)*es71
      abb84(15)=abb84(15)-abb84(16)
      abb84(17)=-abb84(4)*abb84(15)
      abb84(12)=abb84(12)+abb84(17)
      abb84(17)=gW*TR
      abb84(17)=abb84(3)*abb84(1)*abb84(2)*abb84(5)*CVDU*mB*abb84(17)**2*c2*i_
      abb84(18)=8.0_ki*abb84(17)
      abb84(19)=abb84(18)*spbk7k2
      abb84(12)=abb84(19)*spak1k4*es71*abb84(12)
      abb84(20)=spbk3k2*es71
      abb84(21)=spbk7k3*spak1k7
      abb84(22)=abb84(21)*spbk2k1
      abb84(20)=abb84(20)-abb84(22)
      abb84(22)=abb84(20)*spak1k4
      abb84(23)=spbk3k2*spak3k4
      abb84(24)=abb84(23)*abb84(21)
      abb84(22)=abb84(22)-abb84(24)
      abb84(25)=abb84(6)*spak2l5*abb84(22)
      abb84(22)=abb84(4)*spak2l6*abb84(22)
      abb84(22)=abb84(25)+abb84(22)
      abb84(25)=abb84(17)*spbk7k2
      abb84(26)=16.0_ki*abb84(25)
      abb84(22)=abb84(22)*abb84(26)
      abb84(27)=abb84(9)+es71
      abb84(28)=-spak4l6*abb84(27)
      abb84(29)=abb84(28)*abb84(4)
      abb84(30)=-spak4l5*abb84(27)
      abb84(31)=abb84(30)*abb84(6)
      abb84(29)=abb84(29)+abb84(31)
      abb84(29)=abb84(26)*abb84(29)*abb84(21)
      abb84(31)=spbk7k3*es12
      abb84(32)=spak1k2*spbk7k1
      abb84(33)=abb84(32)*spbk3k2
      abb84(33)=abb84(31)+abb84(33)
      abb84(34)=spal5k7*abb84(33)
      abb84(11)=2.0_ki*abb84(11)+abb84(34)
      abb84(11)=spak1k4*abb84(11)
      abb84(34)=spbk7k3*spak1k2
      abb84(35)=abb84(34)*abb84(23)
      abb84(36)=spal5k7*abb84(35)
      abb84(11)=abb84(36)+abb84(11)
      abb84(11)=abb84(6)*abb84(11)
      abb84(36)=spal6k7*abb84(33)
      abb84(16)=2.0_ki*abb84(16)+abb84(36)
      abb84(16)=spak1k4*abb84(16)
      abb84(36)=spal6k7*abb84(35)
      abb84(16)=abb84(36)+abb84(16)
      abb84(16)=abb84(4)*abb84(16)
      abb84(11)=abb84(11)+abb84(16)
      abb84(11)=abb84(11)*abb84(19)
      abb84(16)=abb84(6)*spak4l5
      abb84(36)=abb84(4)*spak4l6
      abb84(16)=abb84(16)+abb84(36)
      abb84(36)=abb84(25)*abb84(16)*abb84(21)
      abb84(36)=32.0_ki*abb84(36)
      abb84(37)=spak1k4*abb84(10)
      abb84(38)=2.0_ki*abb84(21)
      abb84(39)=-abb84(30)*abb84(38)
      abb84(37)=abb84(39)+abb84(37)
      abb84(37)=abb84(6)*abb84(37)
      abb84(39)=spak1k4*abb84(15)
      abb84(40)=-abb84(28)*abb84(38)
      abb84(39)=abb84(40)+abb84(39)
      abb84(39)=abb84(4)*abb84(39)
      abb84(37)=abb84(37)+abb84(39)
      abb84(37)=abb84(37)*abb84(19)
      abb84(39)=abb84(6)*spak2l5
      abb84(40)=abb84(4)*spak2l6
      abb84(39)=abb84(39)+abb84(40)
      abb84(40)=spak1k4*spbk3k2
      abb84(41)=abb84(40)*abb84(39)
      abb84(42)=-abb84(41)*abb84(26)
      abb84(43)=abb84(13)*spak1k4
      abb84(44)=abb84(38)*spak4l6
      abb84(43)=abb84(44)-abb84(43)
      abb84(43)=abb84(43)*abb84(4)
      abb84(44)=abb84(7)*spak1k4
      abb84(45)=abb84(38)*spak4l5
      abb84(44)=abb84(45)-abb84(44)
      abb84(44)=abb84(44)*abb84(6)
      abb84(43)=abb84(43)+abb84(44)
      abb84(44)=abb84(43)*abb84(26)
      abb84(45)=-spal5k7*abb84(32)
      abb84(46)=es71*spak2l5
      abb84(45)=abb84(45)+abb84(46)
      abb84(46)=2.0_ki*spbk3k2
      abb84(45)=abb84(45)*abb84(46)
      abb84(47)=-es12*spal5k7
      abb84(48)=spak1k7*spbk2k1
      abb84(49)=-spak2l5*abb84(48)
      abb84(47)=abb84(47)+abb84(49)
      abb84(49)=2.0_ki*spbk7k3
      abb84(47)=abb84(47)*abb84(49)
      abb84(10)=abb84(47)+abb84(45)+abb84(10)
      abb84(10)=spak1k4*abb84(10)
      abb84(45)=spak1k2*spak3k4
      abb84(47)=-spal5k7*abb84(45)
      abb84(50)=spak1k7*spak3k4
      abb84(51)=-spak2l5*abb84(50)
      abb84(47)=abb84(47)+abb84(51)
      abb84(47)=spbk3k2*abb84(47)
      abb84(30)=abb84(30)*spak1k7
      abb84(47)=-abb84(30)+abb84(47)
      abb84(47)=abb84(47)*abb84(49)
      abb84(10)=abb84(47)+abb84(10)
      abb84(10)=abb84(6)*abb84(10)
      abb84(47)=-spal6k7*abb84(32)
      abb84(51)=es71*spak2l6
      abb84(47)=abb84(47)+abb84(51)
      abb84(46)=abb84(47)*abb84(46)
      abb84(47)=-es12*spal6k7
      abb84(51)=-spak2l6*abb84(48)
      abb84(47)=abb84(47)+abb84(51)
      abb84(47)=abb84(47)*abb84(49)
      abb84(15)=abb84(47)+abb84(46)+abb84(15)
      abb84(15)=spak1k4*abb84(15)
      abb84(46)=-spal6k7*abb84(45)
      abb84(47)=-spak2l6*abb84(50)
      abb84(46)=abb84(46)+abb84(47)
      abb84(46)=spbk3k2*abb84(46)
      abb84(28)=abb84(28)*spak1k7
      abb84(46)=-abb84(28)+abb84(46)
      abb84(46)=abb84(46)*abb84(49)
      abb84(15)=abb84(46)+abb84(15)
      abb84(15)=abb84(4)*abb84(15)
      abb84(10)=abb84(10)+abb84(15)
      abb84(15)=4.0_ki*abb84(25)
      abb84(10)=abb84(10)*abb84(15)
      abb84(25)=abb84(41)*abb84(19)
      abb84(43)=abb84(43)*abb84(19)
      abb84(41)=-abb84(41)*abb84(15)
      abb84(46)=spak2l5*abb84(33)
      abb84(47)=2.0_ki*spak1k2
      abb84(47)=abb84(47)*spbk7k1
      abb84(49)=abb84(7)*abb84(47)
      abb84(46)=abb84(49)+abb84(46)
      abb84(46)=spak1k4*abb84(46)
      abb84(49)=spak2l5*abb84(35)
      abb84(46)=abb84(49)+abb84(46)
      abb84(46)=abb84(6)*abb84(46)
      abb84(49)=spak2l6*abb84(33)
      abb84(47)=abb84(13)*abb84(47)
      abb84(47)=abb84(47)+abb84(49)
      abb84(47)=spak1k4*abb84(47)
      abb84(49)=spak2l6*abb84(35)
      abb84(47)=abb84(49)+abb84(47)
      abb84(47)=abb84(4)*abb84(47)
      abb84(46)=abb84(46)+abb84(47)
      abb84(46)=abb84(46)*abb84(15)
      abb84(47)=abb84(34)*abb84(16)
      abb84(49)=abb84(47)*abb84(26)
      abb84(47)=-abb84(47)*abb84(19)
      abb84(51)=abb84(45)*es71
      abb84(9)=-spak3k4*abb84(9)
      abb84(52)=abb84(9)*spak1k2
      abb84(51)=abb84(51)-abb84(52)
      abb84(51)=abb84(51)*spbk3k2
      abb84(52)=es71*spak3k4
      abb84(9)=abb84(52)-abb84(9)
      abb84(9)=abb84(9)*abb84(38)
      abb84(9)=abb84(51)+abb84(9)
      abb84(9)=abb84(9)*spbk7k3
      abb84(32)=spbk3k2*abb84(32)*abb84(27)
      abb84(31)=abb84(27)*abb84(31)
      abb84(31)=abb84(32)+abb84(31)
      abb84(31)=abb84(31)*spak1k4
      abb84(9)=abb84(9)+abb84(31)
      abb84(31)=abb84(17)*abb84(4)
      abb84(32)=4.0_ki*abb84(31)
      abb84(38)=-abb84(9)*abb84(32)
      abb84(33)=abb84(33)*spak1k4
      abb84(33)=abb84(33)+abb84(35)
      abb84(35)=16.0_ki*abb84(17)
      abb84(51)=abb84(35)*abb84(4)
      abb84(52)=abb84(33)*abb84(51)
      abb84(53)=spbk7k3**2
      abb84(50)=abb84(50)*abb84(53)
      abb84(54)=-abb84(51)*abb84(50)
      abb84(55)=spak1k4*spbk7k3
      abb84(56)=abb84(27)*abb84(55)
      abb84(57)=abb84(18)*abb84(4)
      abb84(58)=-abb84(57)*abb84(56)
      abb84(59)=-abb84(55)*abb84(51)
      abb84(60)=-abb84(56)*abb84(32)
      abb84(61)=-abb84(55)*abb84(57)
      abb84(45)=abb84(53)*abb84(45)
      abb84(53)=abb84(57)*abb84(45)
      abb84(62)=abb84(17)*abb84(6)
      abb84(63)=4.0_ki*abb84(62)
      abb84(9)=-abb84(9)*abb84(63)
      abb84(64)=abb84(35)*abb84(6)
      abb84(33)=abb84(33)*abb84(64)
      abb84(50)=-abb84(64)*abb84(50)
      abb84(65)=abb84(18)*abb84(6)
      abb84(66)=-abb84(65)*abb84(56)
      abb84(67)=-abb84(55)*abb84(64)
      abb84(56)=-abb84(56)*abb84(63)
      abb84(55)=-abb84(55)*abb84(65)
      abb84(45)=abb84(65)*abb84(45)
      abb84(68)=abb84(27)*abb84(21)
      abb84(69)=spak3l5*abb84(68)
      abb84(70)=abb84(27)*es71
      abb84(71)=spak1l5*abb84(70)
      abb84(30)=-spbk7k4*abb84(30)
      abb84(30)=abb84(69)+abb84(71)+abb84(30)
      abb84(30)=abb84(6)*abb84(30)
      abb84(68)=spak3l6*abb84(68)
      abb84(69)=spak1l6*abb84(70)
      abb84(28)=-spbk7k4*abb84(28)
      abb84(28)=abb84(68)+abb84(69)+abb84(28)
      abb84(28)=abb84(4)*abb84(28)
      abb84(28)=abb84(30)+abb84(28)
      abb84(28)=abb84(28)*abb84(19)
      abb84(30)=spbk7k2**2
      abb84(68)=-abb84(30)*abb84(35)*spak1k7*abb84(39)
      abb84(69)=es71*spak1l5
      abb84(70)=spak4l5*spbk7k4
      abb84(71)=spak1k7*abb84(70)
      abb84(72)=spak3l5*abb84(21)
      abb84(69)=abb84(72)+abb84(69)+abb84(71)
      abb84(69)=abb84(6)*abb84(69)
      abb84(71)=es71*spak1l6
      abb84(72)=spak4l6*spbk7k4
      abb84(73)=spak1k7*abb84(72)
      abb84(21)=spak3l6*abb84(21)
      abb84(21)=abb84(21)+abb84(71)+abb84(73)
      abb84(21)=abb84(4)*abb84(21)
      abb84(21)=abb84(69)+abb84(21)
      abb84(69)=abb84(6)*spal5k7
      abb84(71)=abb84(4)*spal6k7
      abb84(69)=abb84(69)+abb84(71)
      abb84(71)=abb84(69)*spbk7k2
      abb84(73)=spak1k2*abb84(71)
      abb84(21)=2.0_ki*abb84(21)+abb84(73)
      abb84(21)=abb84(21)*abb84(19)
      abb84(73)=spak1k7*spak2l5
      abb84(74)=-spak1k2*spal5k7
      abb84(73)=abb84(74)-abb84(73)
      abb84(73)=abb84(6)*abb84(73)
      abb84(74)=spak1k7*spak2l6
      abb84(75)=-spak1k2*spal6k7
      abb84(74)=abb84(75)-abb84(74)
      abb84(74)=abb84(4)*abb84(74)
      abb84(73)=abb84(73)+abb84(74)
      abb84(30)=abb84(73)*abb84(30)*abb84(18)
      abb84(73)=spak1l5*spbk7k1
      abb84(70)=abb84(73)-abb84(70)
      abb84(70)=spak1k2*abb84(70)
      abb84(73)=-spak3l5*abb84(34)
      abb84(70)=abb84(70)+abb84(73)
      abb84(70)=abb84(6)*abb84(70)
      abb84(73)=spak1l6*spbk7k1
      abb84(72)=abb84(73)-abb84(72)
      abb84(72)=spak1k2*abb84(72)
      abb84(34)=-spak3l6*abb84(34)
      abb84(34)=abb84(72)+abb84(34)
      abb84(34)=abb84(4)*abb84(34)
      abb84(34)=abb84(70)+abb84(34)
      abb84(39)=spbk7k2*spak1k2*abb84(39)
      abb84(34)=2.0_ki*abb84(34)+abb84(39)
      abb84(34)=abb84(34)*abb84(15)
      abb84(15)=abb84(15)*spak1k2*abb84(27)
      abb84(27)=-abb84(4)*abb84(15)
      abb84(39)=abb84(26)*spak1k2
      abb84(70)=abb84(4)*abb84(39)
      abb84(15)=-abb84(6)*abb84(15)
      abb84(39)=abb84(6)*abb84(39)
      abb84(72)=spal5k7*abb84(20)
      abb84(7)=-abb84(7)*abb84(48)
      abb84(7)=abb84(7)+abb84(72)
      abb84(7)=spak1k4*abb84(7)
      abb84(72)=-spal5k7*abb84(24)
      abb84(7)=abb84(72)+abb84(7)
      abb84(7)=abb84(6)*abb84(7)
      abb84(72)=spal6k7*abb84(20)
      abb84(13)=-abb84(13)*abb84(48)
      abb84(13)=abb84(13)+abb84(72)
      abb84(13)=spak1k4*abb84(13)
      abb84(48)=-spal6k7*abb84(24)
      abb84(13)=abb84(48)+abb84(13)
      abb84(13)=abb84(4)*abb84(13)
      abb84(7)=abb84(7)+abb84(13)
      abb84(7)=abb84(7)*abb84(19)
      abb84(13)=abb84(6)*spak1l5
      abb84(48)=abb84(4)*spak1l6
      abb84(13)=abb84(13)+abb84(48)
      abb84(48)=abb84(13)*spak3k4*spbk3k2**2
      abb84(72)=abb84(48)*abb84(35)
      abb84(73)=spbk3k2*spak1k7
      abb84(16)=abb84(26)*abb84(16)*abb84(73)
      abb84(26)=abb84(40)*spal5k7
      abb84(74)=2.0_ki*abb84(73)
      abb84(75)=abb84(74)*spak4l5
      abb84(76)=-abb84(75)+abb84(26)
      abb84(76)=abb84(6)*abb84(76)
      abb84(77)=abb84(40)*spal6k7
      abb84(74)=abb84(74)*spak4l6
      abb84(78)=-abb84(74)+abb84(77)
      abb84(78)=abb84(4)*abb84(78)
      abb84(76)=abb84(76)+abb84(78)
      abb84(76)=abb84(76)*abb84(19)
      abb84(26)=-abb84(75)-abb84(26)
      abb84(26)=abb84(6)*abb84(26)
      abb84(74)=-abb84(74)-abb84(77)
      abb84(74)=abb84(4)*abb84(74)
      abb84(26)=abb84(26)+abb84(74)
      abb84(26)=spbk7k2*abb84(26)
      abb84(26)=2.0_ki*abb84(48)+abb84(26)
      abb84(17)=4.0_ki*abb84(26)*abb84(17)
      abb84(26)=spbk3k2*spbk7k1
      abb84(48)=spbk7k3*spbk2k1
      abb84(26)=abb84(26)+abb84(48)
      abb84(26)=abb84(26)*spak1k4
      abb84(48)=abb84(23)*spbk7k3
      abb84(26)=abb84(26)+abb84(48)
      abb84(48)=abb84(6)*spak1l5*abb84(26)
      abb84(26)=abb84(4)*spak1l6*abb84(26)
      abb84(26)=abb84(48)+abb84(26)
      abb84(26)=abb84(26)*abb84(18)
      abb84(48)=spak1k4*spbk2k1
      abb84(74)=abb84(48)*spbk4k3
      abb84(20)=abb84(74)+3.0_ki*abb84(20)
      abb84(20)=abb84(20)*spak1k4
      abb84(20)=abb84(20)-abb84(24)
      abb84(24)=abb84(20)*abb84(57)
      abb84(75)=abb84(51)*abb84(40)
      abb84(77)=24.0_ki*abb84(40)
      abb84(31)=abb84(31)*abb84(77)
      abb84(32)=abb84(40)*abb84(32)
      abb84(20)=abb84(20)*abb84(65)
      abb84(78)=abb84(64)*abb84(40)
      abb84(62)=abb84(62)*abb84(77)
      abb84(40)=abb84(40)*abb84(63)
      abb84(63)=-spak1l5*spbk2k1
      abb84(77)=-spak4l5*spbk4k2
      abb84(63)=abb84(63)+abb84(77)
      abb84(63)=spak1k7*abb84(63)
      abb84(77)=-spak3l5*abb84(73)
      abb84(63)=abb84(63)+abb84(77)
      abb84(63)=abb84(6)*abb84(63)
      abb84(77)=-spak1l6*spbk2k1
      abb84(79)=-spak4l6*spbk4k2
      abb84(77)=abb84(77)+abb84(79)
      abb84(77)=spak1k7*abb84(77)
      abb84(73)=-spak3l6*abb84(73)
      abb84(73)=abb84(77)+abb84(73)
      abb84(73)=abb84(4)*abb84(73)
      abb84(77)=-spak1k7*abb84(71)
      abb84(63)=abb84(77)+abb84(63)+abb84(73)
      abb84(63)=abb84(63)*abb84(19)
      abb84(73)=abb84(13)*abb84(19)
      abb84(77)=spbk3k2*spak1k3
      abb84(79)=spak1k4*spbk4k2
      abb84(80)=spbk7k2*spak1k7
      abb84(77)=-3.0_ki*abb84(80)+abb84(77)+abb84(79)
      abb84(77)=abb84(77)*abb84(18)
      abb84(79)=abb84(4)*abb84(77)
      abb84(77)=abb84(6)*abb84(77)
      abb84(80)=abb84(13)*abb84(18)
      abb84(74)=-abb84(74)*abb84(80)
      abb84(81)=spbk3k2*abb84(13)
      abb84(35)=abb84(81)*abb84(35)
      abb84(81)=abb84(81)*abb84(18)
      abb84(80)=-spbk4k2*abb84(80)
      abb84(23)=abb84(48)+abb84(23)
      abb84(19)=abb84(19)*abb84(23)*abb84(69)
      abb84(69)=abb84(23)*abb84(57)
      abb84(23)=abb84(23)*abb84(65)
      abb84(8)=-abb84(6)*abb84(8)
      abb84(14)=-abb84(4)*abb84(14)
      abb84(8)=abb84(8)+abb84(14)
      abb84(8)=abb84(18)*abb84(48)*abb84(8)
      abb84(14)=spak1k4*spbk3k1
      abb84(48)=-abb84(51)*abb84(14)
      abb84(14)=-abb84(64)*abb84(14)
      abb84(13)=-spbk2k1*abb84(13)
      abb84(13)=abb84(71)+abb84(13)
      abb84(13)=abb84(13)*abb84(18)
      R2d84=0.0_ki
      rat2 = rat2 + R2d84
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='84' value='", &
          & R2d84, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd84h0
