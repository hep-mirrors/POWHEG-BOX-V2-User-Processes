module     p0_dbaru_epnebbbarg_abbrevd113h5
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh5
   implicit none
   private
   complex(ki), dimension(79), public :: abb113
   complex(ki), public :: R2d113
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
      abb113(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb113(2)=1.0_ki/(es34+es567-es12-es234)
      abb113(3)=sqrt2**(-1)
      abb113(4)=es56**(-1)
      abb113(5)=spbk7k2**(-1)
      abb113(6)=NC**(-1)
      abb113(7)=spak2l5**(-1)
      abb113(8)=spbl6k2**(-1)
      abb113(9)=spak2l6**(-1)
      abb113(10)=NC*c1
      abb113(11)=abb113(10)*spal6k7
      abb113(12)=TR*gW
      abb113(12)=abb113(12)**2*CVDU*i_*spak1k4*abb113(4)*abb113(3)*abb113(2)*ab&
      &b113(1)
      abb113(13)=abb113(12)*spbk4k3
      abb113(14)=abb113(13)*abb113(5)
      abb113(15)=abb113(14)*spbl5k2
      abb113(16)=abb113(11)*abb113(15)
      abb113(17)=c2*spal6k7
      abb113(18)=abb113(17)*abb113(15)
      abb113(19)=c4*spal6k7
      abb113(20)=abb113(19)*abb113(15)
      abb113(16)=abb113(16)+abb113(18)-abb113(20)
      abb113(21)=abb113(16)*spak4l6
      abb113(22)=abb113(12)*spbl5k2
      abb113(23)=spbk3k1*abb113(5)
      abb113(24)=abb113(22)*abb113(23)
      abb113(25)=abb113(11)*abb113(24)
      abb113(26)=abb113(17)*abb113(24)
      abb113(27)=abb113(19)*abb113(24)
      abb113(25)=abb113(25)+abb113(26)-abb113(27)
      abb113(28)=abb113(25)*spak1l6
      abb113(21)=abb113(21)+abb113(28)
      abb113(28)=abb113(21)*spbl6k2
      abb113(29)=spbl5k2**2
      abb113(30)=abb113(29)*abb113(14)
      abb113(31)=abb113(30)*abb113(10)
      abb113(32)=abb113(14)*c2
      abb113(33)=abb113(32)*abb113(29)
      abb113(34)=abb113(14)*c4
      abb113(35)=abb113(34)*abb113(29)
      abb113(31)=-abb113(35)+abb113(31)+abb113(33)
      abb113(36)=abb113(31)*spak4l6
      abb113(23)=abb113(23)*abb113(12)
      abb113(37)=abb113(29)*abb113(23)
      abb113(38)=abb113(10)-c4
      abb113(39)=-abb113(37)*abb113(38)
      abb113(40)=abb113(37)*c2
      abb113(39)=abb113(39)-abb113(40)
      abb113(41)=abb113(39)*spak1l6
      abb113(36)=abb113(41)-abb113(36)
      abb113(41)=2.0_ki*spal5k7
      abb113(42)=abb113(36)*abb113(41)
      abb113(28)=abb113(42)-abb113(28)
      abb113(42)=abb113(10)+c2
      abb113(43)=abb113(14)*spal6k7
      abb113(29)=-abb113(42)*abb113(43)*abb113(29)
      abb113(44)=abb113(35)*spal6k7
      abb113(29)=abb113(44)+abb113(29)
      abb113(29)=abb113(29)*spak4l5
      abb113(11)=-abb113(11)+abb113(19)-abb113(17)
      abb113(17)=-spak1l5*abb113(37)*abb113(11)
      abb113(17)=abb113(29)-abb113(17)
      abb113(19)=abb113(22)*spbk3k1
      abb113(22)=-abb113(19)*abb113(11)
      abb113(29)=abb113(22)*spak1k7
      abb113(44)=abb113(13)*spbl5k2
      abb113(45)=-abb113(44)*abb113(11)
      abb113(46)=abb113(45)*spak4k7
      abb113(29)=abb113(29)+abb113(46)
      abb113(46)=abb113(17)-abb113(28)+abb113(29)
      abb113(47)=es71+es12-es712
      abb113(48)=-4.0_ki*abb113(47)*abb113(46)
      abb113(46)=-8.0_ki*abb113(46)
      abb113(17)=-abb113(28)+abb113(17)+3.0_ki*abb113(29)
      abb113(28)=-4.0_ki*abb113(17)
      abb113(29)=c1*abb113(30)
      abb113(30)=-abb113(6)*abb113(35)
      abb113(29)=abb113(29)+abb113(30)
      abb113(29)=abb113(6)*abb113(29)
      abb113(29)=-abb113(33)+abb113(29)
      abb113(29)=spak4k7*abb113(29)
      abb113(30)=abb113(6)*c4
      abb113(33)=abb113(30)-c1
      abb113(33)=abb113(33)*abb113(6)
      abb113(35)=-abb113(37)*abb113(33)
      abb113(35)=-abb113(40)+abb113(35)
      abb113(35)=spak1k7*abb113(35)
      abb113(29)=abb113(29)+abb113(35)
      abb113(29)=spal5l6*abb113(29)
      abb113(17)=4.0_ki*abb113(29)-abb113(17)
      abb113(17)=2.0_ki*abb113(17)
      abb113(11)=abb113(11)*abb113(23)
      abb113(29)=spak1l6*abb113(11)
      abb113(35)=abb113(42)*abb113(43)
      abb113(37)=abb113(34)*spal6k7
      abb113(35)=abb113(37)-abb113(35)
      abb113(37)=spak4l6*abb113(35)
      abb113(29)=abb113(37)+abb113(29)
      abb113(29)=spbl6k2*abb113(29)
      abb113(37)=abb113(24)*abb113(10)
      abb113(40)=abb113(24)*c4
      abb113(37)=abb113(37)-abb113(40)
      abb113(43)=abb113(24)*c2
      abb113(49)=abb113(43)+abb113(37)
      abb113(50)=abb113(49)*spak1l6
      abb113(51)=abb113(15)*abb113(10)
      abb113(52)=abb113(15)*c4
      abb113(51)=abb113(51)-abb113(52)
      abb113(53)=abb113(15)*c2
      abb113(54)=abb113(53)+abb113(51)
      abb113(55)=abb113(54)*spak4l6
      abb113(50)=abb113(50)+abb113(55)
      abb113(55)=-spal5k7*abb113(50)
      abb113(42)=abb113(42)-c4
      abb113(56)=abb113(42)*spak4k7
      abb113(57)=abb113(13)*spal6k7
      abb113(58)=-abb113(57)*abb113(56)
      abb113(12)=abb113(12)*spbk3k1
      abb113(59)=spal6k7*abb113(12)
      abb113(38)=-abb113(59)*abb113(38)
      abb113(60)=abb113(59)*c2
      abb113(38)=-abb113(60)+abb113(38)
      abb113(38)=spak1k7*abb113(38)
      abb113(29)=abb113(55)+abb113(29)+abb113(58)+abb113(38)
      abb113(29)=spbk7l5*abb113(29)
      abb113(38)=abb113(13)*c2
      abb113(55)=abb113(13)*c4
      abb113(58)=abb113(38)-abb113(55)
      abb113(61)=mB**2
      abb113(62)=abb113(58)*abb113(61)
      abb113(63)=abb113(61)*abb113(10)
      abb113(64)=abb113(63)*abb113(13)
      abb113(62)=abb113(62)+abb113(64)
      abb113(62)=abb113(62)*spak4k7
      abb113(65)=c2*abb113(12)
      abb113(66)=c4*abb113(12)
      abb113(67)=abb113(65)-abb113(66)
      abb113(68)=abb113(67)*abb113(61)
      abb113(12)=c1*abb113(12)
      abb113(69)=abb113(12)*NC
      abb113(70)=abb113(69)*abb113(61)
      abb113(68)=abb113(68)+abb113(70)
      abb113(68)=abb113(68)*spak1k7
      abb113(62)=abb113(62)+abb113(68)
      abb113(68)=abb113(7)*abb113(8)
      abb113(62)=abb113(47)*abb113(68)*abb113(62)
      abb113(36)=spak2l5*abb113(36)
      abb113(29)=abb113(36)+abb113(29)+abb113(62)
      abb113(31)=spak4l5*abb113(31)
      abb113(36)=-spbl6k2*abb113(50)
      abb113(39)=-spak1l5*abb113(39)
      abb113(56)=-abb113(44)*abb113(56)
      abb113(42)=-spak1k7*abb113(19)*abb113(42)
      abb113(31)=abb113(39)+abb113(31)+abb113(36)+abb113(56)+abb113(42)
      abb113(31)=spak2l6*abb113(31)
      abb113(36)=spak4l5*abb113(16)
      abb113(39)=spak1l5*abb113(25)
      abb113(36)=abb113(39)+abb113(36)
      abb113(36)=spbk7l5*abb113(36)
      abb113(39)=c2-c4
      abb113(39)=abb113(39)*abb113(61)
      abb113(39)=abb113(39)+abb113(63)
      abb113(42)=3.0_ki*abb113(7)
      abb113(56)=-abb113(42)*abb113(57)*abb113(39)
      abb113(41)=abb113(41)*abb113(68)
      abb113(44)=-abb113(41)*abb113(44)*abb113(39)
      abb113(44)=abb113(44)+abb113(56)-abb113(45)
      abb113(44)=spak2k4*abb113(44)
      abb113(56)=-c4*abb113(59)
      abb113(56)=abb113(56)+abb113(60)
      abb113(56)=abb113(56)*abb113(61)
      abb113(62)=abb113(63)*abb113(59)
      abb113(56)=abb113(56)+abb113(62)
      abb113(56)=abb113(56)*abb113(42)
      abb113(19)=abb113(41)*abb113(19)*abb113(39)
      abb113(19)=abb113(19)+abb113(56)+abb113(22)
      abb113(19)=spak1k2*abb113(19)
      abb113(21)=spbk7l6*abb113(21)
      abb113(39)=-spak2k4*abb113(45)
      abb113(22)=spak1k2*abb113(22)
      abb113(22)=abb113(39)+abb113(22)
      abb113(22)=abb113(9)*abb113(8)*abb113(61)*abb113(22)
      abb113(19)=abb113(21)+abb113(22)+abb113(31)+abb113(19)+abb113(44)+abb113(&
      &36)+2.0_ki*abb113(29)
      abb113(19)=4.0_ki*abb113(19)
      abb113(21)=abb113(24)*c1
      abb113(22)=abb113(30)*abb113(24)
      abb113(29)=abb113(21)-abb113(22)
      abb113(31)=abb113(29)*abb113(6)
      abb113(36)=abb113(31)-abb113(43)
      abb113(39)=spak1l6*abb113(36)
      abb113(41)=abb113(30)*abb113(15)
      abb113(44)=abb113(15)*c1
      abb113(45)=abb113(41)-abb113(44)
      abb113(56)=abb113(45)*abb113(6)
      abb113(62)=abb113(56)+abb113(53)
      abb113(71)=-spak4l6*abb113(62)
      abb113(39)=abb113(71)+abb113(39)
      abb113(39)=16.0_ki*abb113(39)
      abb113(71)=16.0_ki*abb113(50)
      abb113(72)=-abb113(55)-abb113(38)
      abb113(72)=abb113(72)*abb113(61)
      abb113(64)=abb113(72)+abb113(64)
      abb113(64)=abb113(64)*abb113(68)
      abb113(72)=abb113(68)*abb113(61)
      abb113(73)=abb113(72)*c1
      abb113(74)=abb113(13)*abb113(73)
      abb113(75)=abb113(72)*abb113(6)
      abb113(55)=abb113(75)*abb113(55)
      abb113(55)=abb113(74)-abb113(55)
      abb113(74)=2.0_ki*abb113(6)
      abb113(76)=abb113(55)*abb113(74)
      abb113(64)=abb113(64)+abb113(76)
      abb113(64)=spak4k7*abb113(64)
      abb113(76)=-abb113(66)-abb113(65)
      abb113(76)=abb113(76)*abb113(61)
      abb113(70)=abb113(76)+abb113(70)
      abb113(70)=abb113(70)*abb113(68)
      abb113(66)=abb113(66)*abb113(75)
      abb113(12)=abb113(12)*abb113(72)
      abb113(12)=abb113(66)-abb113(12)
      abb113(66)=-abb113(12)*abb113(74)
      abb113(66)=abb113(70)+abb113(66)
      abb113(66)=spak1k7*abb113(66)
      abb113(70)=abb113(73)*abb113(24)
      abb113(22)=abb113(22)*abb113(72)
      abb113(22)=abb113(70)-abb113(22)
      abb113(22)=abb113(22)*abb113(6)
      abb113(70)=-abb113(72)*abb113(43)
      abb113(70)=abb113(70)+abb113(22)
      abb113(70)=spak1l5*abb113(70)
      abb113(76)=abb113(61)*abb113(8)
      abb113(77)=abb113(53)*abb113(76)
      abb113(45)=-abb113(76)*abb113(45)
      abb113(78)=abb113(45)*abb113(6)
      abb113(77)=abb113(77)-abb113(78)
      abb113(78)=spak4l6*abb113(77)
      abb113(29)=-abb113(76)*abb113(29)
      abb113(79)=abb113(29)*abb113(6)
      abb113(76)=abb113(43)*abb113(76)
      abb113(76)=abb113(76)+abb113(79)
      abb113(79)=spak1l6*abb113(76)
      abb113(78)=abb113(78)+abb113(79)
      abb113(78)=abb113(9)*abb113(78)
      abb113(41)=abb113(41)*abb113(72)
      abb113(79)=abb113(73)*abb113(15)
      abb113(41)=abb113(79)-abb113(41)
      abb113(41)=abb113(41)*abb113(6)
      abb113(79)=-abb113(72)*abb113(53)
      abb113(79)=abb113(79)+abb113(41)
      abb113(79)=spak4l5*abb113(79)
      abb113(64)=abb113(79)+abb113(64)+abb113(66)+abb113(70)+abb113(78)
      abb113(50)=-3.0_ki*abb113(50)+4.0_ki*abb113(64)
      abb113(50)=4.0_ki*abb113(50)
      abb113(31)=4.0_ki*abb113(31)-7.0_ki*abb113(43)-3.0_ki*abb113(37)
      abb113(31)=spak1l6*abb113(31)
      abb113(37)=-4.0_ki*abb113(56)-7.0_ki*abb113(53)-3.0_ki*abb113(51)
      abb113(37)=spak4l6*abb113(37)
      abb113(31)=abb113(37)+abb113(31)
      abb113(31)=2.0_ki*abb113(31)
      abb113(37)=abb113(23)*c1
      abb113(30)=abb113(30)*abb113(23)
      abb113(37)=abb113(37)-abb113(30)
      abb113(37)=abb113(37)*abb113(6)
      abb113(51)=abb113(23)*c2
      abb113(56)=abb113(37)-abb113(51)
      abb113(64)=spak1l6*abb113(56)
      abb113(66)=abb113(34)*abb113(6)
      abb113(70)=abb113(14)*c1
      abb113(66)=abb113(66)-abb113(70)
      abb113(66)=abb113(66)*abb113(6)
      abb113(78)=-abb113(32)-abb113(66)
      abb113(78)=spak4l6*abb113(78)
      abb113(64)=abb113(78)+abb113(64)
      abb113(64)=spbk7l5*abb113(64)
      abb113(55)=abb113(6)*abb113(55)
      abb113(38)=-abb113(72)*abb113(38)
      abb113(38)=abb113(38)+abb113(55)
      abb113(38)=spak2k4*abb113(38)
      abb113(12)=abb113(6)*abb113(12)
      abb113(55)=abb113(72)*abb113(65)
      abb113(12)=abb113(55)+abb113(12)
      abb113(12)=spak1k2*abb113(12)
      abb113(12)=abb113(12)+abb113(64)+abb113(38)
      abb113(12)=16.0_ki*abb113(12)
      abb113(13)=-abb113(13)*abb113(10)
      abb113(13)=abb113(13)-abb113(58)
      abb113(13)=spak4k7*abb113(13)
      abb113(38)=-abb113(69)-abb113(67)
      abb113(38)=spak1k7*abb113(38)
      abb113(13)=abb113(13)+abb113(38)
      abb113(38)=abb113(10)*abb113(23)
      abb113(55)=abb113(23)*c4
      abb113(38)=abb113(38)-abb113(55)
      abb113(58)=abb113(38)+abb113(51)
      abb113(58)=abb113(58)*spak1l6
      abb113(10)=abb113(10)*abb113(14)
      abb113(10)=abb113(10)-abb113(34)
      abb113(64)=abb113(10)+abb113(32)
      abb113(64)=abb113(64)*spak4l6
      abb113(58)=abb113(58)+abb113(64)
      abb113(64)=spbl6k2*abb113(58)
      abb113(65)=spak1l5*abb113(49)
      abb113(67)=spak4l5*abb113(54)
      abb113(13)=abb113(65)+abb113(67)+3.0_ki*abb113(13)+abb113(64)
      abb113(13)=4.0_ki*abb113(13)
      abb113(64)=abb113(36)*spak1k7
      abb113(65)=abb113(62)*spak4k7
      abb113(64)=abb113(64)-abb113(65)
      abb113(65)=-16.0_ki*abb113(64)
      abb113(64)=-8.0_ki*abb113(64)
      abb113(67)=-4.0_ki*abb113(37)+5.0_ki*abb113(51)+abb113(38)
      abb113(67)=spak1k7*abb113(67)
      abb113(69)=4.0_ki*abb113(66)+5.0_ki*abb113(32)+abb113(10)
      abb113(69)=spak4k7*abb113(69)
      abb113(67)=abb113(69)+abb113(67)
      abb113(67)=spbk7l5*abb113(67)
      abb113(69)=abb113(63)*abb113(23)
      abb113(78)=-abb113(55)+abb113(51)
      abb113(78)=abb113(78)*abb113(61)
      abb113(78)=abb113(78)+abb113(69)
      abb113(78)=abb113(78)*abb113(42)
      abb113(49)=abb113(78)+abb113(49)
      abb113(49)=spak1k2*abb113(49)
      abb113(24)=abb113(63)*abb113(24)
      abb113(78)=-abb113(40)-abb113(43)
      abb113(78)=abb113(78)*abb113(61)
      abb113(78)=abb113(78)+abb113(24)
      abb113(78)=abb113(8)*abb113(78)
      abb113(29)=-abb113(29)*abb113(74)
      abb113(29)=abb113(78)+abb113(29)
      abb113(29)=spak1k2*abb113(29)
      abb113(15)=abb113(63)*abb113(15)
      abb113(78)=abb113(52)+abb113(53)
      abb113(78)=abb113(78)*abb113(61)
      abb113(78)=abb113(78)-abb113(15)
      abb113(78)=abb113(8)*abb113(78)
      abb113(45)=-abb113(45)*abb113(74)
      abb113(45)=abb113(78)+abb113(45)
      abb113(45)=spak2k4*abb113(45)
      abb113(29)=abb113(45)+abb113(29)
      abb113(29)=abb113(9)*abb113(29)
      abb113(45)=abb113(63)*abb113(14)
      abb113(63)=abb113(34)-abb113(32)
      abb113(63)=abb113(63)*abb113(61)
      abb113(63)=abb113(63)-abb113(45)
      abb113(42)=abb113(63)*abb113(42)
      abb113(42)=abb113(42)-abb113(54)
      abb113(42)=spak2k4*abb113(42)
      abb113(54)=spbl6l5*abb113(58)
      abb113(29)=-3.0_ki*abb113(54)+abb113(29)+abb113(49)+abb113(67)+abb113(42)
      abb113(29)=4.0_ki*abb113(29)
      abb113(40)=-abb113(40)+2.0_ki*abb113(43)
      abb113(40)=abb113(40)*abb113(61)
      abb113(24)=abb113(40)+abb113(24)
      abb113(24)=abb113(24)*abb113(68)
      abb113(22)=abb113(24)-abb113(22)
      abb113(22)=spak1k2*abb113(22)
      abb113(24)=abb113(52)-2.0_ki*abb113(53)
      abb113(24)=abb113(24)*abb113(61)
      abb113(15)=abb113(24)-abb113(15)
      abb113(15)=abb113(15)*abb113(68)
      abb113(15)=abb113(15)+abb113(41)
      abb113(15)=spak2k4*abb113(15)
      abb113(15)=abb113(15)+abb113(22)
      abb113(15)=8.0_ki*abb113(15)
      abb113(20)=abb113(6)*abb113(20)
      abb113(22)=-spal6k7*abb113(44)
      abb113(20)=abb113(22)+abb113(20)
      abb113(20)=abb113(6)*abb113(20)
      abb113(18)=abb113(18)+abb113(20)
      abb113(18)=8.0_ki*abb113(18)
      abb113(20)=-c2-abb113(33)
      abb113(20)=abb113(57)*abb113(20)
      abb113(22)=-spal5l6*abb113(62)
      abb113(20)=abb113(22)+abb113(20)
      abb113(20)=8.0_ki*abb113(20)
      abb113(22)=-4.0_ki*abb113(16)
      abb113(16)=-2.0_ki*abb113(16)
      abb113(24)=-abb113(34)+2.0_ki*abb113(32)
      abb113(24)=abb113(24)*abb113(61)
      abb113(24)=abb113(24)+abb113(45)
      abb113(24)=abb113(24)*abb113(68)
      abb113(14)=abb113(73)*abb113(14)
      abb113(40)=abb113(75)*abb113(34)
      abb113(14)=abb113(14)-abb113(40)
      abb113(14)=abb113(14)*abb113(6)
      abb113(24)=abb113(24)-abb113(14)
      abb113(24)=abb113(24)*abb113(47)
      abb113(40)=abb113(61)*abb113(7)
      abb113(41)=abb113(40)*abb113(70)
      abb113(34)=abb113(34)*abb113(61)
      abb113(42)=-abb113(7)*abb113(6)*abb113(34)
      abb113(41)=abb113(41)+abb113(42)
      abb113(41)=abb113(6)*abb113(41)
      abb113(32)=-abb113(32)*abb113(40)
      abb113(32)=abb113(32)+abb113(41)
      abb113(32)=spak2l6*abb113(32)
      abb113(35)=spbk7l5*abb113(35)
      abb113(24)=abb113(32)+abb113(35)-abb113(77)+abb113(24)
      abb113(24)=8.0_ki*abb113(24)
      abb113(32)=-abb113(34)+abb113(45)
      abb113(32)=abb113(32)*abb113(68)
      abb113(14)=abb113(32)+abb113(14)
      abb113(14)=16.0_ki*abb113(14)
      abb113(10)=abb113(66)-abb113(10)
      abb113(10)=8.0_ki*abb113(10)
      abb113(21)=-spal6k7*abb113(21)
      abb113(27)=abb113(6)*abb113(27)
      abb113(21)=abb113(21)+abb113(27)
      abb113(21)=abb113(6)*abb113(21)
      abb113(21)=abb113(26)+abb113(21)
      abb113(21)=8.0_ki*abb113(21)
      abb113(26)=spal5l6*abb113(36)
      abb113(27)=-abb113(59)*abb113(33)
      abb113(26)=abb113(26)-abb113(60)+abb113(27)
      abb113(26)=8.0_ki*abb113(26)
      abb113(27)=-4.0_ki*abb113(25)
      abb113(25)=-2.0_ki*abb113(25)
      abb113(32)=-abb113(55)+2.0_ki*abb113(51)
      abb113(32)=abb113(32)*abb113(61)
      abb113(32)=abb113(32)+abb113(69)
      abb113(32)=abb113(32)*abb113(68)
      abb113(23)=abb113(73)*abb113(23)
      abb113(30)=abb113(30)*abb113(72)
      abb113(23)=abb113(23)-abb113(30)
      abb113(23)=abb113(23)*abb113(6)
      abb113(30)=abb113(32)-abb113(23)
      abb113(30)=abb113(30)*abb113(47)
      abb113(11)=spbk7l5*abb113(11)
      abb113(32)=spak2l6*abb113(40)*abb113(56)
      abb113(11)=abb113(32)+abb113(11)+abb113(30)-abb113(76)
      abb113(11)=8.0_ki*abb113(11)
      abb113(30)=-abb113(61)*abb113(55)
      abb113(30)=abb113(30)+abb113(69)
      abb113(30)=abb113(30)*abb113(68)
      abb113(23)=abb113(30)+abb113(23)
      abb113(23)=16.0_ki*abb113(23)
      abb113(30)=-abb113(37)-abb113(38)
      abb113(30)=8.0_ki*abb113(30)
      R2d113=0.0_ki
      rat2 = rat2 + R2d113
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='113' value='", &
          & R2d113, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd113h5
