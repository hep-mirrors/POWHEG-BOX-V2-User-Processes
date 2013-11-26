module     p0_dbaru_epnebbbarg_abbrevd137h1
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(77), public :: abb137
   complex(ki), public :: R2d137
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
      abb137(1)=1.0_ki/(-es71+es712-es12)
      abb137(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb137(3)=1.0_ki/(-es71+es56-es567+es234)
      abb137(4)=NC**(-1)
      abb137(5)=es56**(-1)
      abb137(6)=spak2l5**(-1)
      abb137(7)=spak2l6**(-1)
      abb137(8)=spbl6k2**(-1)
      abb137(9)=1.0_ki/(es34+es567-es12-es234)
      abb137(10)=abb137(5)*i_*CVDU*abb137(2)*abb137(1)
      abb137(11)=abb137(10)*spbe7k2
      abb137(12)=abb137(11)*spae7k7
      abb137(13)=c4*spak1k4
      abb137(14)=abb137(12)*abb137(13)
      abb137(15)=TR*gW
      abb137(16)=abb137(15)**2
      abb137(17)=abb137(14)*abb137(16)
      abb137(18)=abb137(17)*abb137(4)
      abb137(19)=abb137(16)*spak1k4
      abb137(20)=abb137(12)*abb137(19)
      abb137(21)=abb137(20)*c1
      abb137(18)=abb137(18)-abb137(21)
      abb137(21)=abb137(18)*abb137(4)
      abb137(22)=NC*c1
      abb137(20)=abb137(20)*abb137(22)
      abb137(17)=abb137(20)-abb137(17)
      abb137(20)=abb137(21)+abb137(17)
      abb137(21)=spbk4k3*abb137(9)
      abb137(23)=abb137(21)*spak4l6
      abb137(20)=abb137(20)*abb137(23)
      abb137(24)=abb137(16)*spak1l6
      abb137(14)=abb137(14)*abb137(24)
      abb137(25)=abb137(14)*abb137(4)
      abb137(12)=abb137(12)*abb137(24)
      abb137(26)=c1*spak1k4
      abb137(27)=abb137(12)*abb137(26)
      abb137(25)=abb137(25)-abb137(27)
      abb137(27)=abb137(25)*abb137(4)
      abb137(28)=abb137(22)*spak1k4
      abb137(12)=abb137(12)*abb137(28)
      abb137(12)=abb137(12)-abb137(14)
      abb137(14)=abb137(27)+abb137(12)
      abb137(27)=spbk3k1*abb137(9)
      abb137(14)=abb137(14)*abb137(27)
      abb137(14)=abb137(20)+abb137(14)
      abb137(14)=abb137(14)*spbk7l5
      abb137(20)=abb137(10)*abb137(3)
      abb137(15)=abb137(15)*mB
      abb137(15)=abb137(15)**2
      abb137(29)=abb137(20)*abb137(15)*abb137(6)
      abb137(30)=spae7k7*spbe7k2
      abb137(31)=abb137(30)*spbk7k3
      abb137(32)=abb137(31)*abb137(29)
      abb137(33)=abb137(32)*c1
      abb137(34)=abb137(29)*c4
      abb137(35)=abb137(34)*abb137(31)
      abb137(36)=abb137(35)*abb137(4)
      abb137(36)=abb137(33)-abb137(36)
      abb137(36)=abb137(36)*abb137(4)
      abb137(37)=abb137(32)*abb137(22)
      abb137(38)=abb137(37)-abb137(35)
      abb137(36)=abb137(36)-abb137(38)
      abb137(39)=spak1k2*spak4l6
      abb137(36)=abb137(36)*abb137(39)
      abb137(20)=abb137(20)*spak1l6
      abb137(40)=abb137(20)*abb137(16)
      abb137(41)=abb137(40)*abb137(31)
      abb137(42)=abb137(26)*abb137(41)
      abb137(43)=abb137(41)*abb137(13)
      abb137(44)=abb137(43)*abb137(4)
      abb137(42)=abb137(42)-abb137(44)
      abb137(42)=abb137(42)*abb137(4)
      abb137(44)=abb137(28)*abb137(41)
      abb137(43)=abb137(44)-abb137(43)
      abb137(42)=abb137(42)-abb137(43)
      abb137(42)=abb137(42)*spbl5k1
      abb137(20)=abb137(20)*abb137(15)
      abb137(44)=abb137(8)*c4
      abb137(45)=abb137(20)*abb137(44)
      abb137(46)=abb137(45)*abb137(31)
      abb137(47)=abb137(46)*abb137(4)
      abb137(20)=abb137(20)*abb137(8)
      abb137(48)=abb137(20)*c1
      abb137(49)=abb137(48)*abb137(31)
      abb137(47)=abb137(47)-abb137(49)
      abb137(47)=abb137(47)*abb137(4)
      abb137(20)=abb137(20)*abb137(22)
      abb137(49)=abb137(20)*abb137(31)
      abb137(46)=abb137(49)-abb137(46)
      abb137(47)=abb137(47)+abb137(46)
      abb137(49)=abb137(7)*spak2k4*spbl5k2
      abb137(47)=abb137(47)*abb137(49)
      abb137(50)=abb137(8)*spak1k4
      abb137(51)=abb137(35)*abb137(50)
      abb137(52)=abb137(51)*abb137(4)
      abb137(53)=abb137(33)*abb137(50)
      abb137(52)=abb137(52)-abb137(53)
      abb137(52)=abb137(52)*abb137(4)
      abb137(53)=abb137(50)*abb137(22)
      abb137(54)=abb137(53)*abb137(32)
      abb137(51)=abb137(54)-abb137(51)
      abb137(52)=abb137(52)+abb137(51)
      abb137(52)=abb137(52)*es12
      abb137(35)=abb137(35)*spak1l6
      abb137(54)=abb137(35)*abb137(4)
      abb137(33)=abb137(33)*spak1l6
      abb137(33)=abb137(54)-abb137(33)
      abb137(33)=abb137(33)*abb137(4)
      abb137(37)=abb137(37)*spak1l6
      abb137(35)=abb137(37)-abb137(35)
      abb137(33)=abb137(33)+abb137(35)
      abb137(33)=abb137(33)*spak2k4
      abb137(32)=abb137(32)*abb137(44)
      abb137(37)=abb137(32)*abb137(4)
      abb137(54)=abb137(29)*abb137(8)
      abb137(55)=abb137(54)*c1
      abb137(56)=abb137(55)*abb137(31)
      abb137(37)=abb137(37)-abb137(56)
      abb137(37)=abb137(37)*abb137(4)
      abb137(54)=abb137(54)*abb137(22)
      abb137(31)=abb137(54)*abb137(31)
      abb137(31)=abb137(31)-abb137(32)
      abb137(32)=abb137(37)+abb137(31)
      abb137(37)=spak4l5*spak1k2*spbl5k2
      abb137(32)=abb137(32)*abb137(37)
      abb137(15)=abb137(6)*abb137(50)*abb137(15)*abb137(10)
      abb137(56)=abb137(30)*abb137(15)
      abb137(57)=abb137(4)*c4
      abb137(57)=abb137(57)-c1
      abb137(58)=abb137(57)*abb137(4)
      abb137(59)=-abb137(56)*abb137(58)
      abb137(60)=abb137(22)-c4
      abb137(56)=-abb137(56)*abb137(60)
      abb137(59)=abb137(59)+abb137(56)
      abb137(61)=abb137(27)*spak1k2
      abb137(21)=abb137(21)*spak2k4
      abb137(21)=abb137(61)-abb137(21)
      abb137(61)=abb137(21)*spbk7k2
      abb137(59)=-abb137(59)*abb137(61)
      abb137(62)=-abb137(41)*abb137(58)
      abb137(41)=-abb137(41)*abb137(60)
      abb137(62)=abb137(62)+abb137(41)
      abb137(63)=spbl6l5*spak4l6
      abb137(62)=abb137(62)*abb137(63)
      abb137(14)=abb137(36)+abb137(52)-abb137(62)+abb137(42)+abb137(47)+abb137(&
      &33)-abb137(32)-abb137(14)+abb137(59)
      abb137(32)=-2.0_ki*abb137(14)
      abb137(17)=abb137(17)*abb137(23)
      abb137(12)=abb137(12)*abb137(27)
      abb137(12)=abb137(17)+abb137(12)
      abb137(12)=abb137(12)*spbk7l5
      abb137(17)=-spbk7k2*abb137(56)*abb137(21)
      abb137(33)=abb137(43)*spbl5k1
      abb137(36)=abb137(46)*abb137(49)
      abb137(31)=abb137(31)*abb137(37)
      abb137(35)=abb137(35)*spak2k4
      abb137(42)=abb137(51)*es12
      abb137(38)=abb137(38)*abb137(39)
      abb137(41)=abb137(41)*abb137(63)
      abb137(12)=-abb137(38)+abb137(35)+abb137(42)-abb137(41)-abb137(31)-abb137&
      &(33)+abb137(36)+abb137(17)-abb137(12)
      abb137(17)=es712-es71
      abb137(31)=abb137(17)-es12
      abb137(33)=-4.0_ki*abb137(12)*abb137(31)
      abb137(35)=abb137(53)*abb137(29)
      abb137(36)=abb137(34)*abb137(50)
      abb137(35)=abb137(36)-abb137(35)
      abb137(36)=es12*spbk3k2
      abb137(38)=abb137(35)*abb137(36)
      abb137(41)=abb137(22)*abb137(29)
      abb137(41)=abb137(41)-abb137(34)
      abb137(42)=spak1l6*abb137(41)
      abb137(43)=spak2k4*spbk3k2
      abb137(46)=abb137(42)*abb137(43)
      abb137(47)=abb137(39)*spbk3k2
      abb137(51)=abb137(41)*abb137(47)
      abb137(10)=abb137(10)*spak1k4
      abb137(52)=abb137(24)*abb137(10)
      abb137(53)=-abb137(52)*abb137(60)
      abb137(56)=abb137(27)*spbl5k2
      abb137(59)=abb137(53)*abb137(56)
      abb137(10)=abb137(10)*abb137(16)
      abb137(62)=-abb137(10)*abb137(60)
      abb137(64)=abb137(23)*spbl5k2
      abb137(65)=abb137(62)*abb137(64)
      abb137(38)=-abb137(59)-abb137(65)+abb137(51)+abb137(38)-abb137(46)
      abb137(46)=abb137(28)*abb137(40)
      abb137(51)=abb137(40)*abb137(13)
      abb137(46)=abb137(46)-abb137(51)
      abb137(59)=abb137(46)*spbl5k1
      abb137(44)=abb137(44)*abb137(29)
      abb137(54)=abb137(44)-abb137(54)
      abb137(65)=abb137(54)*abb137(37)
      abb137(20)=abb137(20)-abb137(45)
      abb137(66)=abb137(20)*abb137(49)
      abb137(67)=-abb137(40)*abb137(60)
      abb137(68)=abb137(67)*abb137(63)
      abb137(59)=-abb137(66)-abb137(65)+abb137(68)+abb137(59)
      abb137(65)=abb137(59)*spbk3k2
      abb137(65)=abb137(65)+abb137(38)
      abb137(17)=-abb137(65)*abb137(17)
      abb137(38)=es12*abb137(38)
      abb137(59)=abb137(36)*abb137(59)
      abb137(17)=abb137(59)+abb137(38)+abb137(17)
      abb137(17)=4.0_ki*abb137(17)
      abb137(38)=-8.0_ki*abb137(14)
      abb137(12)=-8.0_ki*abb137(12)
      abb137(45)=abb137(45)*abb137(4)
      abb137(45)=abb137(45)-abb137(48)
      abb137(48)=abb137(45)*abb137(4)
      abb137(59)=abb137(48)-abb137(20)
      abb137(59)=abb137(59)*abb137(49)
      abb137(44)=abb137(44)*abb137(4)
      abb137(44)=abb137(44)-abb137(55)
      abb137(55)=abb137(44)*abb137(4)
      abb137(65)=-abb137(55)-abb137(54)
      abb137(65)=abb137(65)*abb137(37)
      abb137(51)=abb137(51)*abb137(4)
      abb137(26)=abb137(26)*abb137(40)
      abb137(26)=abb137(51)-abb137(26)
      abb137(51)=abb137(26)*abb137(4)
      abb137(66)=-abb137(51)+abb137(46)
      abb137(66)=spbl5k1*abb137(66)
      abb137(40)=-abb137(40)*abb137(57)
      abb137(68)=abb137(40)*abb137(4)
      abb137(69)=-abb137(68)+abb137(67)
      abb137(69)=abb137(69)*abb137(63)
      abb137(59)=abb137(66)+abb137(65)+abb137(69)+abb137(59)
      abb137(59)=spbk3k2*abb137(59)
      abb137(29)=abb137(29)*c1
      abb137(34)=abb137(34)*abb137(4)
      abb137(29)=abb137(29)-abb137(34)
      abb137(34)=-spak1l6*abb137(29)
      abb137(65)=abb137(34)*abb137(4)
      abb137(66)=abb137(65)-abb137(42)
      abb137(66)=abb137(66)*abb137(43)
      abb137(69)=abb137(29)*abb137(4)
      abb137(70)=abb137(69)+abb137(41)
      abb137(70)=abb137(70)*abb137(47)
      abb137(50)=abb137(29)*abb137(50)
      abb137(71)=-abb137(50)*abb137(4)
      abb137(72)=abb137(71)+abb137(35)
      abb137(72)=abb137(72)*abb137(36)
      abb137(10)=-abb137(10)*abb137(57)
      abb137(73)=abb137(10)*abb137(4)
      abb137(74)=abb137(73)-abb137(62)
      abb137(75)=abb137(74)*abb137(64)
      abb137(52)=-abb137(52)*abb137(57)
      abb137(57)=abb137(52)*abb137(4)
      abb137(76)=abb137(57)-abb137(53)
      abb137(77)=abb137(76)*abb137(56)
      abb137(59)=abb137(77)+abb137(75)+abb137(72)+abb137(66)+abb137(70)+abb137(&
      &59)
      abb137(59)=16.0_ki*abb137(59)
      abb137(14)=4.0_ki*abb137(14)
      abb137(66)=2.0_ki*abb137(4)
      abb137(70)=-abb137(34)*abb137(66)
      abb137(70)=abb137(70)+abb137(42)
      abb137(70)=abb137(70)*abb137(43)
      abb137(72)=-abb137(29)*abb137(66)
      abb137(72)=abb137(72)-abb137(41)
      abb137(72)=abb137(72)*abb137(47)
      abb137(75)=abb137(50)*abb137(66)
      abb137(75)=abb137(75)-abb137(35)
      abb137(75)=abb137(75)*abb137(36)
      abb137(10)=-abb137(10)*abb137(66)
      abb137(10)=abb137(10)+abb137(62)
      abb137(10)=abb137(10)*abb137(64)
      abb137(52)=-abb137(52)*abb137(66)
      abb137(52)=abb137(52)+abb137(53)
      abb137(52)=abb137(52)*abb137(56)
      abb137(10)=abb137(52)+abb137(10)+abb137(75)+abb137(70)+abb137(72)
      abb137(10)=spbk7e7*abb137(10)
      abb137(52)=spak2k4*abb137(42)
      abb137(70)=-abb137(39)*abb137(41)
      abb137(72)=-es12*abb137(35)
      abb137(52)=abb137(72)+abb137(52)+abb137(70)
      abb137(70)=spbk7k3*spbe7k2
      abb137(52)=abb137(70)*abb137(52)
      abb137(16)=abb137(16)*abb137(13)
      abb137(19)=-abb137(22)*abb137(19)
      abb137(16)=abb137(16)+abb137(19)
      abb137(16)=abb137(23)*abb137(16)
      abb137(13)=abb137(13)-abb137(28)
      abb137(13)=abb137(27)*abb137(24)*abb137(13)
      abb137(13)=abb137(16)+abb137(13)
      abb137(11)=spbk7l5*abb137(11)*abb137(13)
      abb137(13)=-abb137(45)*abb137(66)
      abb137(13)=abb137(13)+abb137(20)
      abb137(16)=spbk7e7*spbk3k2
      abb137(13)=abb137(13)*abb137(16)
      abb137(19)=abb137(70)*abb137(20)
      abb137(13)=abb137(19)+abb137(13)
      abb137(13)=abb137(13)*abb137(49)
      abb137(19)=abb137(44)*abb137(66)
      abb137(19)=abb137(19)+abb137(54)
      abb137(19)=abb137(19)*abb137(16)
      abb137(22)=abb137(70)*abb137(54)
      abb137(19)=abb137(22)+abb137(19)
      abb137(19)=abb137(19)*abb137(37)
      abb137(22)=abb137(26)*abb137(66)
      abb137(22)=abb137(22)-abb137(46)
      abb137(22)=abb137(22)*abb137(16)
      abb137(24)=-abb137(70)*abb137(46)
      abb137(22)=abb137(22)+abb137(24)
      abb137(22)=spbl5k1*abb137(22)
      abb137(24)=abb137(40)*abb137(66)
      abb137(24)=abb137(24)-abb137(67)
      abb137(24)=abb137(24)*abb137(16)
      abb137(28)=-abb137(70)*abb137(67)
      abb137(24)=abb137(28)+abb137(24)
      abb137(24)=abb137(24)*abb137(63)
      abb137(10)=abb137(22)+abb137(19)+abb137(24)+abb137(13)+abb137(11)+abb137(&
      &10)+abb137(52)
      abb137(10)=spak2k7*abb137(10)
      abb137(11)=abb137(60)*abb137(15)
      abb137(13)=-abb137(31)*abb137(21)*spbe7k2*abb137(11)
      abb137(10)=abb137(10)+abb137(13)
      abb137(10)=2.0_ki*abb137(10)
      abb137(13)=abb137(65)+abb137(42)
      abb137(13)=abb137(13)*abb137(43)
      abb137(19)=abb137(69)-abb137(41)
      abb137(19)=abb137(19)*abb137(47)
      abb137(21)=abb137(71)-abb137(35)
      abb137(21)=abb137(21)*abb137(36)
      abb137(22)=abb137(73)+abb137(62)
      abb137(22)=abb137(22)*abb137(64)
      abb137(24)=abb137(57)+abb137(53)
      abb137(24)=abb137(24)*abb137(56)
      abb137(13)=abb137(24)+abb137(22)+abb137(21)+abb137(13)+abb137(19)
      abb137(13)=spbk7e7*abb137(13)
      abb137(19)=abb137(48)+abb137(20)
      abb137(19)=abb137(19)*abb137(49)
      abb137(21)=-abb137(55)+abb137(54)
      abb137(21)=abb137(21)*abb137(37)
      abb137(22)=-abb137(51)-abb137(46)
      abb137(22)=spbl5k1*abb137(22)
      abb137(24)=-abb137(68)-abb137(67)
      abb137(24)=abb137(24)*abb137(63)
      abb137(19)=abb137(22)+abb137(21)+abb137(24)+abb137(19)
      abb137(16)=abb137(16)*abb137(19)
      abb137(13)=abb137(13)+abb137(16)
      abb137(13)=4.0_ki*spak2e7*abb137(13)
      abb137(16)=-spbk7k3*abb137(42)
      abb137(19)=abb137(4)*spbk7k3
      abb137(21)=abb137(34)*abb137(19)
      abb137(16)=abb137(21)+abb137(16)
      abb137(16)=spak2k4*abb137(16)
      abb137(21)=spbk7k3*abb137(41)
      abb137(22)=abb137(29)*abb137(19)
      abb137(21)=abb137(22)+abb137(21)
      abb137(21)=abb137(21)*abb137(39)
      abb137(22)=spbk7k3*abb137(35)
      abb137(24)=-abb137(50)*abb137(19)
      abb137(22)=abb137(24)+abb137(22)
      abb137(22)=es12*abb137(22)
      abb137(23)=abb137(74)*abb137(23)
      abb137(24)=abb137(76)*abb137(27)
      abb137(23)=abb137(23)+abb137(24)
      abb137(23)=spbk7l5*abb137(23)
      abb137(15)=abb137(15)*abb137(58)
      abb137(11)=abb137(15)-abb137(11)
      abb137(11)=abb137(11)*abb137(61)
      abb137(15)=-spbk7k3*abb137(20)
      abb137(20)=abb137(45)*abb137(19)
      abb137(15)=abb137(20)+abb137(15)
      abb137(15)=abb137(15)*abb137(49)
      abb137(20)=-spbk7k3*abb137(54)
      abb137(24)=-abb137(44)*abb137(19)
      abb137(20)=abb137(24)+abb137(20)
      abb137(20)=abb137(20)*abb137(37)
      abb137(24)=spbk7k3*abb137(46)
      abb137(27)=-abb137(26)*abb137(19)
      abb137(24)=abb137(27)+abb137(24)
      abb137(24)=spbl5k1*abb137(24)
      abb137(27)=spbk7k3*abb137(67)
      abb137(19)=-abb137(40)*abb137(19)
      abb137(19)=abb137(19)+abb137(27)
      abb137(19)=abb137(19)*abb137(63)
      abb137(11)=abb137(24)+abb137(20)+abb137(19)+abb137(15)+abb137(11)+abb137(&
      &23)+abb137(22)+abb137(16)+abb137(21)
      abb137(11)=8.0_ki*abb137(11)
      abb137(15)=-abb137(49)*abb137(45)
      abb137(16)=abb137(37)*abb137(44)
      abb137(19)=spbl5k1*abb137(26)
      abb137(20)=abb137(63)*abb137(40)
      abb137(15)=abb137(19)+abb137(16)+abb137(20)+abb137(15)
      abb137(15)=spbk3k2*abb137(30)*abb137(15)
      abb137(16)=-abb137(43)*abb137(34)
      abb137(19)=abb137(36)*abb137(50)
      abb137(16)=abb137(19)+abb137(16)
      abb137(16)=abb137(30)*abb137(16)
      abb137(19)=-abb137(47)*abb137(29)*abb137(30)
      abb137(18)=abb137(18)*abb137(64)
      abb137(20)=abb137(25)*abb137(56)
      abb137(15)=abb137(20)+abb137(18)+abb137(19)+abb137(15)+abb137(16)
      abb137(15)=4.0_ki*abb137(4)*abb137(15)
      R2d137=abb137(32)
      rat2 = rat2 + R2d137
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='137' value='", &
          & R2d137, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd137h1
