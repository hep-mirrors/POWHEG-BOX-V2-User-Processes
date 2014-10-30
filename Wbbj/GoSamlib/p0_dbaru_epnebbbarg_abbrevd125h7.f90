module     p0_dbaru_epnebbbarg_abbrevd125h7
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh7
   implicit none
   private
   complex(ki), dimension(84), public :: abb125
   complex(ki), public :: R2d125
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
      abb125(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb125(2)=1.0_ki/(es71+es34+es56-es712-es234)
      abb125(3)=sqrt2**(-1)
      abb125(4)=es56**(-1)
      abb125(5)=spak2l5**(-1)
      abb125(6)=spbk7k2**(-1)
      abb125(7)=spak2l6**(-1)
      abb125(8)=NC*c3
      abb125(8)=abb125(8)-c4
      abb125(9)=TR*gW
      abb125(9)=CVDU*i_*mB*abb125(3)*abb125(2)*abb125(1)*abb125(9)**2
      abb125(10)=abb125(8)*abb125(9)*abb125(6)*abb125(4)
      abb125(11)=-spak1k7*abb125(10)
      abb125(12)=abb125(11)*spak2l5
      abb125(13)=spbl5k2**2
      abb125(14)=abb125(7)*spak1k4
      abb125(15)=abb125(14)*abb125(12)*abb125(13)
      abb125(16)=abb125(11)*abb125(5)
      abb125(17)=spbl6k2**2
      abb125(18)=abb125(16)*abb125(17)
      abb125(19)=spak2l6*spak1k4
      abb125(20)=abb125(18)*abb125(19)
      abb125(21)=spak1k4*spbl5k2
      abb125(22)=abb125(11)*abb125(21)
      abb125(23)=2.0_ki*spbl6k2
      abb125(24)=abb125(22)*abb125(23)
      abb125(15)=abb125(24)+abb125(15)+abb125(20)
      abb125(15)=abb125(15)*spbk3k1
      abb125(17)=abb125(17)*abb125(5)
      abb125(19)=-abb125(19)*abb125(17)
      abb125(13)=abb125(13)*spak2l5
      abb125(20)=-abb125(14)*abb125(13)
      abb125(19)=abb125(19)+abb125(20)
      abb125(19)=abb125(10)*abb125(19)
      abb125(20)=-abb125(10)*abb125(21)
      abb125(24)=abb125(20)*abb125(23)
      abb125(19)=abb125(24)+abb125(19)
      abb125(24)=spbk4k3*spak4k7
      abb125(19)=abb125(19)*abb125(24)
      abb125(15)=abb125(15)+abb125(19)
      abb125(19)=es71*abb125(15)
      abb125(25)=spbk2k1*abb125(10)*spak1k7**2
      abb125(26)=abb125(25)*spbk3k1
      abb125(27)=abb125(5)*spbl6k2
      abb125(28)=abb125(27)*spak1k4
      abb125(29)=abb125(28)*spak2l6
      abb125(30)=abb125(29)+abb125(21)
      abb125(31)=-abb125(30)*abb125(26)
      abb125(32)=abb125(11)*spbk2k1
      abb125(29)=abb125(29)*abb125(32)
      abb125(33)=abb125(32)*abb125(21)
      abb125(29)=abb125(29)+abb125(33)
      abb125(34)=abb125(29)*abb125(24)
      abb125(31)=abb125(31)+abb125(34)
      abb125(31)=spbk7l6*abb125(31)
      abb125(34)=abb125(7)*spbl5k2
      abb125(35)=abb125(34)*spak1k4
      abb125(36)=abb125(35)*spak2l5
      abb125(37)=spak1k4*spbl6k2
      abb125(36)=abb125(36)+abb125(37)
      abb125(26)=-abb125(36)*abb125(26)
      abb125(38)=abb125(32)*abb125(35)
      abb125(39)=abb125(38)*spak2l5
      abb125(40)=abb125(32)*abb125(37)
      abb125(39)=abb125(39)+abb125(40)
      abb125(24)=abb125(39)*abb125(24)
      abb125(24)=abb125(26)+abb125(24)
      abb125(24)=spbk7l5*abb125(24)
      abb125(19)=abb125(24)-2.0_ki*abb125(19)+abb125(31)
      abb125(19)=4.0_ki*abb125(19)
      abb125(24)=abb125(11)*spbk3k2
      abb125(26)=abb125(34)*spak2l5
      abb125(31)=abb125(24)*abb125(26)
      abb125(41)=abb125(24)*spbl6k2
      abb125(31)=abb125(31)+abb125(41)
      abb125(42)=abb125(31)*spak3k4
      abb125(39)=abb125(42)-abb125(39)
      abb125(39)=abb125(39)*spbl5k3
      abb125(36)=spbl5k1*abb125(36)
      abb125(30)=spbl6k1*abb125(30)
      abb125(30)=-abb125(36)-abb125(30)
      abb125(30)=abb125(24)*abb125(30)
      abb125(36)=abb125(27)*spak2l6
      abb125(42)=abb125(36)+spbl5k2
      abb125(24)=abb125(24)*abb125(42)
      abb125(43)=abb125(24)*spak3k4
      abb125(29)=abb125(43)-abb125(29)
      abb125(29)=abb125(29)*spbl6k3
      abb125(29)=abb125(29)+abb125(39)+abb125(30)
      abb125(30)=-8.0_ki*abb125(29)
      abb125(39)=-abb125(28)*abb125(10)
      abb125(43)=-abb125(35)*abb125(10)
      abb125(44)=abb125(39)+abb125(43)
      abb125(45)=abb125(44)*spbk3k2
      abb125(46)=abb125(45)*es71
      abb125(47)=abb125(11)*abb125(35)
      abb125(48)=abb125(11)*abb125(28)
      abb125(47)=abb125(47)+abb125(48)
      abb125(49)=abb125(47)*spbk2k1
      abb125(50)=abb125(49)*spbk7k3
      abb125(46)=abb125(46)-abb125(50)
      abb125(50)=abb125(11)*abb125(34)
      abb125(51)=abb125(11)*abb125(27)
      abb125(52)=abb125(50)+abb125(51)
      abb125(53)=abb125(52)*spbk3k2
      abb125(54)=spak3k4*spbk7k3
      abb125(55)=abb125(54)*abb125(53)
      abb125(46)=-abb125(55)+3.0_ki*abb125(46)
      abb125(46)=abb125(46)*spak2k7
      abb125(47)=spbk3k1*abb125(47)*es12
      abb125(49)=spbk4k3*abb125(49)*spak2k4
      abb125(46)=abb125(46)-abb125(47)+abb125(49)
      abb125(46)=8.0_ki*abb125(46)
      abb125(47)=abb125(11)*abb125(7)
      abb125(49)=abb125(13)*abb125(47)
      abb125(18)=abb125(18)*spak2l6
      abb125(55)=abb125(11)*spbl5k2
      abb125(56)=abb125(55)*abb125(23)
      abb125(18)=abb125(56)+abb125(49)+abb125(18)
      abb125(49)=2.0_ki*abb125(18)
      abb125(56)=abb125(49)*spbk7k3
      abb125(31)=abb125(31)*spbk7l5
      abb125(24)=abb125(24)*spbk7l6
      abb125(24)=abb125(24)+abb125(31)
      abb125(31)=abb125(56)-abb125(24)
      abb125(31)=spak4k7*abb125(31)
      abb125(56)=8.0_ki*abb125(31)
      abb125(53)=abb125(53)*spak2k4
      abb125(57)=16.0_ki*abb125(53)
      abb125(58)=abb125(32)*spak1l6
      abb125(59)=abb125(58)*spbk3k1
      abb125(60)=spak4l6*spbk4k3
      abb125(61)=abb125(60)*abb125(32)
      abb125(59)=abb125(59)+abb125(61)
      abb125(14)=abb125(14)*spbl6l5
      abb125(61)=-abb125(14)*abb125(59)
      abb125(62)=spak4l5*spbk4k3
      abb125(63)=spak1l5*spbk3k1
      abb125(62)=abb125(62)+abb125(63)
      abb125(64)=spbl6l5*abb125(5)
      abb125(65)=abb125(64)*spak1k4
      abb125(66)=abb125(65)*abb125(32)
      abb125(67)=abb125(66)*abb125(62)
      abb125(68)=abb125(32)*spbk7k3
      abb125(69)=-abb125(10)*spbk3k2
      abb125(70)=abb125(69)*es71
      abb125(71)=-abb125(68)+abb125(70)
      abb125(71)=abb125(14)*abb125(71)
      abb125(72)=spbl6l5*spbk3k2
      abb125(73)=abb125(47)*abb125(72)
      abb125(74)=-abb125(54)*abb125(73)
      abb125(71)=3.0_ki*abb125(71)+abb125(74)
      abb125(71)=spal6k7*abb125(71)
      abb125(66)=spbk7k3*abb125(66)
      abb125(74)=-abb125(65)*abb125(70)
      abb125(66)=abb125(66)+abb125(74)
      abb125(16)=abb125(16)*abb125(72)
      abb125(72)=abb125(54)*abb125(16)
      abb125(66)=3.0_ki*abb125(66)+abb125(72)
      abb125(66)=spal5k7*abb125(66)
      abb125(61)=abb125(71)+abb125(66)+abb125(67)+abb125(61)
      abb125(61)=8.0_ki*abb125(61)
      abb125(66)=abb125(16)*spak4l5
      abb125(67)=abb125(73)*spak4l6
      abb125(66)=abb125(66)-abb125(67)
      abb125(67)=16.0_ki*abb125(66)
      abb125(15)=abb125(15)-abb125(31)
      abb125(31)=-8.0_ki*abb125(15)
      abb125(45)=abb125(45)*spak2k7
      abb125(45)=abb125(45)-abb125(53)
      abb125(53)=16.0_ki*abb125(45)
      abb125(71)=abb125(69)*spal5k7
      abb125(72)=abb125(71)*abb125(65)
      abb125(69)=abb125(69)*spal6k7
      abb125(74)=abb125(69)*abb125(14)
      abb125(66)=abb125(66)+abb125(72)-abb125(74)
      abb125(72)=-16.0_ki*abb125(66)
      abb125(15)=abb125(15)-abb125(29)
      abb125(15)=4.0_ki*abb125(15)
      abb125(29)=8.0_ki*abb125(45)
      abb125(45)=8.0_ki*abb125(66)
      abb125(66)=abb125(39)*spak2l6
      abb125(66)=abb125(66)+abb125(20)
      abb125(74)=es71*abb125(66)
      abb125(75)=abb125(11)*abb125(36)
      abb125(75)=abb125(75)+abb125(55)
      abb125(76)=-abb125(75)*abb125(54)
      abb125(74)=abb125(74)+abb125(76)
      abb125(74)=spbl6k3*abb125(74)
      abb125(48)=spak2l6*abb125(48)
      abb125(22)=abb125(22)+abb125(48)
      abb125(22)=spbk7k3*abb125(22)
      abb125(36)=-abb125(36)*abb125(10)
      abb125(48)=-abb125(10)*spbl5k2
      abb125(36)=abb125(36)+abb125(48)
      abb125(76)=spbk4k3*spak1k4**2
      abb125(77)=-abb125(36)*abb125(76)
      abb125(22)=abb125(22)+abb125(77)
      abb125(22)=spbl6k1*abb125(22)
      abb125(77)=abb125(11)*abb125(37)
      abb125(12)=abb125(35)*abb125(12)
      abb125(12)=abb125(77)+abb125(12)
      abb125(12)=spbk7k3*abb125(12)
      abb125(35)=-abb125(26)*abb125(10)
      abb125(77)=-abb125(10)*spbl6k2
      abb125(35)=abb125(35)+abb125(77)
      abb125(76)=-abb125(35)*abb125(76)
      abb125(12)=abb125(12)+abb125(76)
      abb125(12)=spbl5k1*abb125(12)
      abb125(76)=abb125(43)*spak2l5
      abb125(78)=-abb125(10)*abb125(37)
      abb125(76)=abb125(76)+abb125(78)
      abb125(79)=es71*abb125(76)
      abb125(26)=abb125(26)+spbl6k2
      abb125(80)=abb125(11)*abb125(26)
      abb125(81)=-abb125(80)*abb125(54)
      abb125(79)=abb125(79)+abb125(81)
      abb125(79)=spbl5k3*abb125(79)
      abb125(12)=abb125(12)+abb125(22)+abb125(74)+abb125(79)
      abb125(12)=8.0_ki*abb125(12)
      abb125(22)=32.0_ki*spak1k2
      abb125(44)=spbk3k1*abb125(22)*abb125(44)
      abb125(74)=abb125(76)*spbl5k3
      abb125(79)=abb125(66)*spbl6k3
      abb125(74)=abb125(74)+abb125(79)
      abb125(79)=16.0_ki*abb125(74)
      abb125(81)=spak1l6*spbk3k1
      abb125(14)=abb125(14)*abb125(81)
      abb125(65)=-abb125(65)*abb125(63)
      abb125(14)=abb125(14)+abb125(65)
      abb125(65)=32.0_ki*abb125(10)
      abb125(14)=-abb125(14)*abb125(65)
      abb125(82)=-24.0_ki*abb125(74)
      abb125(74)=4.0_ki*abb125(74)
      abb125(83)=-es567-es712+es12
      abb125(49)=abb125(49)*abb125(83)
      abb125(83)=es71*abb125(18)
      abb125(23)=spbl5k2*abb125(23)
      abb125(17)=spak2l6*abb125(17)
      abb125(13)=abb125(7)*abb125(13)
      abb125(13)=abb125(13)+abb125(23)+abb125(17)
      abb125(8)=spak1k7*abb125(9)*abb125(8)
      abb125(9)=-abb125(13)*abb125(6)*abb125(8)
      abb125(9)=abb125(83)+abb125(9)
      abb125(13)=spbk7l6*abb125(42)
      abb125(17)=spbk7l5*abb125(26)
      abb125(13)=abb125(17)+abb125(13)
      abb125(13)=abb125(25)*abb125(13)
      abb125(17)=abb125(75)*spbk7l6
      abb125(23)=abb125(80)*spbk7l5
      abb125(17)=abb125(23)+abb125(17)
      abb125(23)=-spbk4k2*spak4k7*abb125(17)
      abb125(24)=-spak3k7*abb125(24)
      abb125(9)=abb125(24)+abb125(23)+2.0_ki*abb125(9)+abb125(49)+abb125(13)
      abb125(9)=4.0_ki*abb125(9)
      abb125(13)=-8.0_ki*abb125(18)
      abb125(23)=es712-es71
      abb125(23)=es234-es34+4.0_ki*es12-3.0_ki*abb125(23)
      abb125(23)=abb125(23)*abb125(52)
      abb125(23)=8.0_ki*abb125(23)
      abb125(8)=-abb125(4)*abb125(8)
      abb125(24)=abb125(8)*spal6k7
      abb125(25)=abb125(24)*abb125(7)
      abb125(26)=spbl6l5*abb125(25)
      abb125(8)=abb125(8)*spal5k7
      abb125(42)=-abb125(64)*abb125(8)
      abb125(26)=abb125(26)+abb125(42)
      abb125(42)=abb125(47)*spak4l6
      abb125(47)=spbl6l5*abb125(42)
      abb125(49)=abb125(11)*spak4l5
      abb125(52)=-abb125(64)*abb125(49)
      abb125(47)=abb125(47)+abb125(52)
      abb125(47)=spbk4k2*abb125(47)
      abb125(52)=abb125(58)*abb125(7)
      abb125(75)=spbl6l5*abb125(52)
      abb125(32)=abb125(32)*spak1l5
      abb125(80)=-abb125(64)*abb125(32)
      abb125(73)=spak3l6*abb125(73)
      abb125(16)=-spak3l5*abb125(16)
      abb125(16)=abb125(16)+abb125(73)+abb125(47)+abb125(80)+3.0_ki*abb125(26)+&
      &abb125(75)
      abb125(16)=8.0_ki*abb125(16)
      abb125(18)=-4.0_ki*abb125(18)
      abb125(26)=abb125(36)*spbl6k3
      abb125(47)=abb125(35)*spbl5k3
      abb125(26)=abb125(26)+abb125(47)
      abb125(47)=-spak1k3*abb125(26)
      abb125(73)=-spbl6k4*abb125(66)
      abb125(75)=-spbl5k4*abb125(76)
      abb125(17)=abb125(75)+abb125(73)+abb125(47)-abb125(17)
      abb125(17)=8.0_ki*abb125(17)
      abb125(47)=-abb125(10)*abb125(34)
      abb125(10)=-abb125(10)*abb125(27)
      abb125(73)=abb125(47)+abb125(10)
      abb125(22)=abb125(73)*abb125(22)
      abb125(73)=spak1l6*abb125(7)
      abb125(75)=-spbl6l5*abb125(73)
      abb125(64)=spak1l5*abb125(64)
      abb125(64)=abb125(75)+abb125(64)
      abb125(64)=-abb125(64)*abb125(65)
      abb125(59)=abb125(28)*abb125(59)
      abb125(33)=abb125(33)*abb125(5)
      abb125(65)=abb125(33)*abb125(62)
      abb125(28)=abb125(28)*abb125(68)
      abb125(68)=abb125(39)*spbk3k2
      abb125(75)=-es71*abb125(68)
      abb125(28)=abb125(28)+abb125(75)
      abb125(75)=abb125(54)*abb125(11)
      abb125(80)=abb125(27)*spbk3k2
      abb125(83)=abb125(80)*abb125(75)
      abb125(28)=3.0_ki*abb125(28)+abb125(83)
      abb125(28)=spal6k7*abb125(28)
      abb125(33)=spbk7k3*abb125(33)
      abb125(21)=abb125(21)*abb125(5)
      abb125(83)=-abb125(21)*abb125(70)
      abb125(33)=abb125(33)+abb125(83)
      abb125(55)=abb125(55)*abb125(5)
      abb125(83)=spbk3k2*abb125(55)
      abb125(84)=abb125(54)*abb125(83)
      abb125(33)=3.0_ki*abb125(33)+abb125(84)
      abb125(33)=spal5k7*abb125(33)
      abb125(28)=abb125(28)+abb125(33)+abb125(65)+abb125(59)
      abb125(28)=4.0_ki*abb125(28)
      abb125(33)=abb125(11)*abb125(80)
      abb125(59)=spak4l6*abb125(33)
      abb125(65)=abb125(83)*spak4l5
      abb125(59)=abb125(59)+abb125(65)
      abb125(65)=8.0_ki*abb125(59)
      abb125(21)=abb125(71)*abb125(21)
      abb125(68)=abb125(68)*spal6k7
      abb125(21)=abb125(59)+abb125(21)+abb125(68)
      abb125(59)=-8.0_ki*abb125(21)
      abb125(21)=4.0_ki*abb125(21)
      abb125(39)=-abb125(39)*abb125(81)
      abb125(20)=-abb125(5)*abb125(20)*abb125(63)
      abb125(20)=abb125(39)+abb125(20)
      abb125(20)=16.0_ki*abb125(20)
      abb125(24)=-abb125(27)*abb125(24)
      abb125(39)=abb125(5)*spbl5k2
      abb125(68)=-abb125(8)*abb125(39)
      abb125(24)=abb125(24)+abb125(68)
      abb125(51)=-spak4l6*abb125(51)
      abb125(55)=-spak4l5*abb125(55)
      abb125(51)=abb125(51)+abb125(55)
      abb125(51)=spbk4k2*abb125(51)
      abb125(27)=-abb125(27)*abb125(58)
      abb125(39)=-abb125(32)*abb125(39)
      abb125(33)=-spak3l6*abb125(33)
      abb125(55)=-spak3l5*abb125(83)
      abb125(24)=abb125(55)+abb125(33)+abb125(51)+abb125(39)+3.0_ki*abb125(24)+&
      &abb125(27)
      abb125(24)=4.0_ki*abb125(24)
      abb125(10)=spak1l6*abb125(10)
      abb125(27)=spak1l5*abb125(5)*abb125(48)
      abb125(10)=abb125(10)+abb125(27)
      abb125(10)=16.0_ki*abb125(10)
      abb125(27)=abb125(38)*abb125(62)
      abb125(33)=abb125(81)+abb125(60)
      abb125(39)=abb125(40)*abb125(7)
      abb125(33)=abb125(39)*abb125(33)
      abb125(39)=spbk7k3*abb125(39)
      abb125(37)=abb125(37)*abb125(7)
      abb125(40)=-abb125(37)*abb125(70)
      abb125(39)=abb125(39)+abb125(40)
      abb125(40)=abb125(41)*abb125(7)
      abb125(41)=abb125(54)*abb125(40)
      abb125(39)=3.0_ki*abb125(39)+abb125(41)
      abb125(39)=spal6k7*abb125(39)
      abb125(38)=spbk7k3*abb125(38)
      abb125(41)=abb125(43)*spbk3k2
      abb125(48)=-es71*abb125(41)
      abb125(38)=abb125(38)+abb125(48)
      abb125(48)=abb125(34)*spbk3k2
      abb125(51)=abb125(48)*abb125(75)
      abb125(38)=3.0_ki*abb125(38)+abb125(51)
      abb125(38)=spal5k7*abb125(38)
      abb125(27)=abb125(39)+abb125(38)+abb125(33)+abb125(27)
      abb125(27)=4.0_ki*abb125(27)
      abb125(33)=abb125(49)*abb125(48)
      abb125(38)=abb125(40)*spak4l6
      abb125(33)=abb125(33)+abb125(38)
      abb125(38)=8.0_ki*abb125(33)
      abb125(37)=abb125(69)*abb125(37)
      abb125(39)=abb125(41)*spal5k7
      abb125(33)=abb125(33)+abb125(37)+abb125(39)
      abb125(37)=-8.0_ki*abb125(33)
      abb125(33)=4.0_ki*abb125(33)
      abb125(39)=-abb125(7)*abb125(78)*abb125(81)
      abb125(41)=-abb125(43)*abb125(63)
      abb125(39)=abb125(39)+abb125(41)
      abb125(39)=16.0_ki*abb125(39)
      abb125(25)=-spbl6k2*abb125(25)
      abb125(8)=-abb125(34)*abb125(8)
      abb125(8)=abb125(25)+abb125(8)
      abb125(25)=-spbl6k2*abb125(42)
      abb125(41)=-spak4l5*abb125(50)
      abb125(25)=abb125(25)+abb125(41)
      abb125(25)=spbk4k2*abb125(25)
      abb125(41)=-spbl6k2*abb125(52)
      abb125(32)=-abb125(34)*abb125(32)
      abb125(34)=-spak3l6*abb125(40)
      abb125(11)=-spak3l5*abb125(11)*abb125(48)
      abb125(8)=abb125(11)+abb125(34)+abb125(25)+abb125(32)+3.0_ki*abb125(8)+ab&
      &b125(41)
      abb125(8)=4.0_ki*abb125(8)
      abb125(11)=abb125(73)*abb125(77)
      abb125(25)=spak1l5*abb125(47)
      abb125(11)=abb125(11)+abb125(25)
      abb125(11)=16.0_ki*abb125(11)
      abb125(25)=-8.0_ki*abb125(36)
      abb125(32)=-8.0_ki*abb125(35)
      abb125(26)=-spak3k4*abb125(26)
      abb125(34)=spbl6k1*abb125(66)
      abb125(35)=spbl5k1*abb125(76)
      abb125(26)=abb125(35)+abb125(34)+abb125(26)
      abb125(26)=8.0_ki*abb125(26)
      R2d125=0.0_ki
      rat2 = rat2 + R2d125
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='125' value='", &
          & R2d125, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd125h7