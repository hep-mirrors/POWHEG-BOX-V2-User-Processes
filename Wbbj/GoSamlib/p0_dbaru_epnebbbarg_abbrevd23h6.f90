module     p0_dbaru_epnebbbarg_abbrevd23h6
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh6
   implicit none
   private
   complex(ki), dimension(72), public :: abb23
   complex(ki), public :: R2d23
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
      abb23(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb23(2)=1.0_ki/(es34+es567-es12-es234)
      abb23(3)=NC**(-1)
      abb23(4)=sqrt2**(-1)
      abb23(5)=es567**(-1)
      abb23(6)=es56**(-1)
      abb23(7)=spbk7k2**(-1)
      abb23(8)=1.0_ki/(mB**2-es67-es56+es567)
      abb23(9)=1.0_ki/(es71+es34+es56-es712-es234)
      abb23(10)=1.0_ki/(-mB**2+es67)
      abb23(11)=spak2l5**(-1)
      abb23(12)=spbl5k2**(-1)
      abb23(13)=spak2l6**(-1)
      abb23(14)=NC-abb23(3)
      abb23(15)=abb23(14)*c1
      abb23(16)=-c3*abb23(14)
      abb23(17)=abb23(15)+abb23(16)
      abb23(18)=spal5k7*spbl6k2
      abb23(19)=abb23(18)*spak1k4
      abb23(20)=abb23(4)*i_*CVDU*abb23(2)*abb23(1)
      abb23(21)=abb23(20)*abb23(6)
      abb23(22)=TR*gW
      abb23(22)=abb23(22)**2
      abb23(23)=abb23(22)*abb23(5)
      abb23(24)=-abb23(17)*abb23(23)*abb23(19)*abb23(21)
      abb23(25)=NC*spak1k4
      abb23(26)=spak1k4*abb23(3)
      abb23(25)=abb23(25)-abb23(26)
      abb23(27)=abb23(20)*spal5k7
      abb23(28)=abb23(27)*abb23(23)
      abb23(29)=abb23(28)*spbl6k2
      abb23(30)=2.0_ki*abb23(8)
      abb23(31)=abb23(30)*c1
      abb23(32)=-abb23(31)*abb23(29)*abb23(25)
      abb23(24)=abb23(32)+abb23(24)
      abb23(32)=abb23(24)*spbk4k3
      abb23(20)=abb23(20)*abb23(22)*abb23(7)
      abb23(33)=abb23(20)*abb23(6)
      abb23(34)=spbl6k2**2
      abb23(35)=abb23(34)*abb23(33)
      abb23(36)=-abb23(35)*abb23(16)
      abb23(37)=-spak1k4*abb23(36)
      abb23(38)=abb23(9)*abb23(37)*spbk4k3
      abb23(39)=abb23(3)**2
      abb23(39)=abb23(39)-1.0_ki
      abb23(40)=abb23(35)*abb23(39)
      abb23(41)=abb23(40)*spbk4k3
      abb23(42)=c4*abb23(9)
      abb23(43)=abb23(42)*spak1k4
      abb23(44)=abb23(41)*abb23(43)
      abb23(38)=abb23(38)-abb23(44)
      abb23(44)=2.0_ki*spal5l6
      abb23(38)=abb23(38)*abb23(44)
      abb23(30)=abb23(30)*c2
      abb23(45)=abb23(39)*abb23(30)
      abb23(46)=abb23(29)*abb23(45)
      abb23(47)=spbk4k3*spak1k4
      abb23(48)=abb23(46)*abb23(47)
      abb23(32)=abb23(38)-abb23(48)+abb23(32)
      abb23(38)=abb23(32)*spak4k7
      abb23(48)=abb23(20)*abb23(5)
      abb23(49)=abb23(34)*abb23(48)
      abb23(50)=abb23(49)*spak1k4
      abb23(51)=2.0_ki*spal6k7
      abb23(52)=-abb23(51)*abb23(17)*abb23(50)*abb23(6)
      abb23(53)=abb23(48)*abb23(18)
      abb23(54)=spbl5k2*abb23(31)
      abb23(55)=abb23(54)*abb23(53)
      abb23(56)=-abb23(25)*abb23(55)
      abb23(57)=abb23(48)*abb23(6)
      abb23(58)=abb23(57)*abb23(18)
      abb23(59)=-abb23(17)*abb23(58)*spak1k4
      abb23(60)=abb23(59)*spbl5k2
      abb23(52)=abb23(52)+abb23(56)+abb23(60)
      abb23(56)=spbk3k1*spak1l5
      abb23(60)=abb23(52)*abb23(56)
      abb23(52)=abb23(52)*spbk4k3
      abb23(30)=abb23(30)*spbl5k2
      abb23(53)=abb23(53)*abb23(39)*abb23(30)
      abb23(61)=abb23(53)*abb23(47)
      abb23(52)=abb23(61)-abb23(52)
      abb23(61)=abb23(52)*spak4l5
      abb23(62)=abb23(40)*spak1k7
      abb23(63)=abb23(62)*abb23(43)
      abb23(64)=spak1k7*abb23(9)
      abb23(37)=abb23(37)*abb23(64)
      abb23(37)=abb23(37)-abb23(63)
      abb23(37)=abb23(44)*abb23(37)
      abb23(63)=spal5k7*abb23(6)
      abb23(65)=-abb23(17)*abb23(50)*abb23(63)
      abb23(66)=abb23(65)*spak1l6
      abb23(37)=abb23(37)-abb23(66)
      abb23(37)=spbk3k1*abb23(37)
      abb23(66)=c2*spal6k7
      abb23(67)=abb23(66)*abb23(49)*abb23(39)
      abb23(68)=abb23(56)*spak1k4
      abb23(69)=abb23(68)*abb23(67)
      abb23(47)=abb23(67)*abb23(47)
      abb23(70)=abb23(16)*spal6k7
      abb23(50)=-abb23(50)*abb23(70)
      abb23(71)=abb23(50)*spbk4k3
      abb23(47)=abb23(47)+abb23(71)
      abb23(71)=abb23(47)*spak4l5
      abb23(50)=abb23(50)*abb23(56)
      abb23(50)=abb23(71)+abb23(69)+abb23(50)
      abb23(69)=2.0_ki*abb23(10)
      abb23(50)=abb23(50)*abb23(69)
      abb23(24)=abb23(24)*spbk3k1
      abb23(71)=abb23(46)*spbk3k1
      abb23(72)=abb23(71)*spak1k4
      abb23(24)=abb23(24)-abb23(72)
      abb23(24)=abb23(24)*spak1k7
      abb23(68)=abb23(68)*abb23(53)
      abb23(65)=abb23(65)*spbk4k3
      abb23(72)=abb23(65)*spak4l6
      abb23(24)=abb23(50)-abb23(68)+abb23(38)+abb23(60)-abb23(72)+abb23(24)-abb&
      &23(61)+abb23(37)
      abb23(37)=-2.0_ki*abb23(24)
      abb23(38)=8.0_ki*abb23(24)
      abb23(24)=4.0_ki*abb23(24)
      abb23(50)=-abb23(51)*abb23(17)*abb23(49)*abb23(6)
      abb23(58)=-abb23(58)*abb23(17)
      abb23(60)=abb23(58)*spbl5k2
      abb23(55)=-abb23(14)*abb23(55)
      abb23(50)=-abb23(53)+abb23(50)+abb23(55)+abb23(60)
      abb23(53)=-abb23(49)*abb23(70)
      abb23(53)=abb23(53)+abb23(67)
      abb23(55)=abb23(53)*abb23(69)
      abb23(55)=abb23(55)+abb23(50)
      abb23(60)=spak1l5*abb23(55)
      abb23(61)=abb23(62)*abb23(42)
      abb23(62)=abb23(64)*abb23(36)
      abb23(61)=abb23(61)+abb23(62)
      abb23(61)=abb23(61)*abb23(44)
      abb23(49)=-abb23(17)*abb23(49)*abb23(63)
      abb23(62)=abb23(49)*spak1l6
      abb23(62)=abb23(61)+abb23(62)
      abb23(21)=abb23(18)*abb23(21)
      abb23(23)=-abb23(17)*abb23(21)*abb23(23)
      abb23(31)=abb23(14)*abb23(31)
      abb23(29)=-abb23(29)*abb23(31)
      abb23(23)=abb23(29)+abb23(23)
      abb23(29)=abb23(23)-abb23(46)
      abb23(46)=abb23(29)*spak1k7
      abb23(46)=abb23(46)+abb23(60)-abb23(62)
      abb23(60)=es234+es12
      abb23(60)=abb23(46)*abb23(60)
      abb23(50)=spak4l5*abb23(50)
      abb23(64)=abb23(49)*spak4l6
      abb23(50)=-abb23(64)+abb23(50)
      abb23(67)=spak1k3*spbk4k3
      abb23(50)=abb23(67)*abb23(50)
      abb23(68)=-abb23(20)*abb23(14)
      abb23(54)=-abb23(54)*abb23(68)
      abb23(70)=abb23(39)*abb23(20)
      abb23(30)=abb23(30)*abb23(70)
      abb23(30)=abb23(30)+abb23(54)
      abb23(30)=abb23(18)*abb23(30)
      abb23(35)=abb23(35)*abb23(15)
      abb23(35)=abb23(35)-abb23(36)
      abb23(35)=abb23(35)*abb23(51)
      abb23(18)=abb23(33)*abb23(18)
      abb23(51)=-abb23(18)*abb23(16)
      abb23(15)=abb23(18)*abb23(15)
      abb23(15)=abb23(15)-abb23(51)
      abb23(15)=spbl5k2*abb23(15)
      abb23(15)=abb23(35)+abb23(15)+abb23(30)
      abb23(15)=spak1l5*abb23(15)
      abb23(30)=-abb23(47)*abb23(69)
      abb23(30)=abb23(30)+abb23(52)
      abb23(30)=spak3l5*abb23(30)
      abb23(32)=-spak3k7*abb23(32)
      abb23(31)=abb23(45)+abb23(31)
      abb23(27)=abb23(31)*abb23(22)*abb23(27)*spbl6k2
      abb23(21)=abb23(17)*abb23(21)*abb23(22)
      abb23(21)=abb23(21)+abb23(27)
      abb23(21)=spak1k7*abb23(21)
      abb23(20)=abb23(20)*c3
      abb23(22)=-spal6k7*abb23(20)*abb23(14)
      abb23(27)=-abb23(66)*abb23(70)
      abb23(22)=abb23(22)+abb23(27)
      abb23(22)=spak1l5*abb23(34)*abb23(22)
      abb23(27)=spak4l5*abb23(67)*abb23(53)
      abb23(22)=abb23(27)+abb23(22)
      abb23(22)=abb23(22)*abb23(69)
      abb23(27)=abb23(67)*abb23(29)
      abb23(31)=spak1k3*abb23(9)
      abb23(35)=-spbk4k3*abb23(36)*abb23(31)
      abb23(45)=abb23(42)*spak1k3
      abb23(41)=-abb23(45)*abb23(41)
      abb23(35)=abb23(35)+abb23(41)
      abb23(35)=abb23(35)*abb23(44)
      abb23(27)=abb23(35)+abb23(27)
      abb23(27)=spak4k7*abb23(27)
      abb23(20)=abb23(20)*abb23(63)
      abb23(35)=-abb23(20)*abb23(14)
      abb23(41)=c1*abb23(63)*abb23(68)
      abb23(41)=abb23(41)-abb23(35)
      abb23(34)=spak1l6*abb23(34)*abb23(41)
      abb23(41)=spak3l6*abb23(65)
      abb23(47)=es567*abb23(61)
      abb23(15)=abb23(47)+abb23(41)+abb23(32)+abb23(30)+abb23(34)+abb23(27)+abb&
      &23(22)+abb23(21)+abb23(60)+abb23(15)+abb23(50)
      abb23(15)=4.0_ki*abb23(15)
      abb23(21)=-spbk4k2*abb23(59)
      abb23(22)=abb23(58)*spak1k3
      abb23(27)=-spbk3k2*abb23(22)
      abb23(21)=abb23(21)+abb23(27)
      abb23(21)=16.0_ki*abb23(21)
      abb23(27)=abb23(16)*abb23(33)
      abb23(19)=-abb23(19)*abb23(27)
      abb23(30)=2.0_ki*abb23(9)
      abb23(32)=abb23(19)*abb23(30)
      abb23(18)=abb23(18)*abb23(39)
      abb23(34)=abb23(18)*abb23(43)
      abb23(32)=2.0_ki*abb23(34)+abb23(32)+abb23(59)
      abb23(32)=abb23(32)*spbk4k2
      abb23(30)=abb23(30)*abb23(51)
      abb23(30)=abb23(30)+abb23(58)
      abb23(30)=abb23(30)*spak1k3
      abb23(18)=abb23(18)*abb23(45)
      abb23(30)=abb23(30)+2.0_ki*abb23(18)
      abb23(30)=abb23(30)*spbk3k2
      abb23(30)=abb23(30)+abb23(32)
      abb23(30)=16.0_ki*abb23(30)
      abb23(32)=16.0_ki*abb23(46)
      abb23(41)=abb23(51)*abb23(31)
      abb23(18)=abb23(41)+abb23(18)
      abb23(18)=abb23(18)*spbk3k2
      abb23(19)=abb23(19)*abb23(9)
      abb23(19)=abb23(19)+abb23(34)
      abb23(19)=abb23(19)*spbk4k2
      abb23(18)=abb23(18)+abb23(19)
      abb23(19)=mB**2
      abb23(34)=abb23(19)*abb23(12)
      abb23(41)=abb23(34)*abb23(11)
      abb23(41)=abb23(41)-1.0_ki
      abb23(18)=abb23(18)*abb23(41)
      abb23(20)=-abb23(9)*abb23(20)*abb23(25)
      abb23(41)=abb23(63)*abb23(70)
      abb23(47)=abb23(41)*abb23(43)
      abb23(47)=abb23(47)-abb23(20)
      abb23(47)=abb23(47)*spbk4k2
      abb23(50)=abb23(41)*abb23(45)
      abb23(51)=abb23(35)*abb23(31)
      abb23(50)=abb23(50)-abb23(51)
      abb23(50)=abb23(50)*spbk3k2
      abb23(47)=abb23(47)+abb23(50)
      abb23(19)=abb23(19)*abb23(13)
      abb23(50)=abb23(47)*abb23(19)
      abb23(18)=abb23(50)+abb23(18)
      abb23(18)=32.0_ki*abb23(18)
      abb23(46)=-8.0_ki*abb23(46)
      abb23(50)=abb23(8)*c1
      abb23(51)=abb23(50)*abb23(28)
      abb23(25)=abb23(25)*abb23(51)
      abb23(28)=abb23(28)*abb23(39)
      abb23(52)=c2*abb23(8)
      abb23(53)=abb23(52)*spak1k4
      abb23(54)=abb23(28)*abb23(53)
      abb23(25)=abb23(54)+abb23(25)
      abb23(54)=spbk4k2*abb23(25)
      abb23(14)=spak1k3*abb23(14)*abb23(51)
      abb23(51)=abb23(52)*spak1k3
      abb23(28)=abb23(28)*abb23(51)
      abb23(14)=abb23(14)+abb23(28)
      abb23(28)=spbk3k2*abb23(14)
      abb23(28)=abb23(54)+abb23(28)
      abb23(28)=16.0_ki*abb23(28)
      abb23(52)=abb23(33)*abb23(39)
      abb23(54)=abb23(52)*abb23(43)
      abb23(58)=abb23(9)*spak1k4
      abb23(60)=-abb23(27)*abb23(58)
      abb23(54)=abb23(54)+abb23(60)
      abb23(54)=abb23(54)*spbk4k2
      abb23(52)=abb23(52)*abb23(45)
      abb23(27)=-abb23(27)*abb23(31)
      abb23(27)=abb23(52)+abb23(27)
      abb23(27)=abb23(27)*spbk3k2
      abb23(27)=abb23(54)+abb23(27)
      abb23(19)=abb23(27)*abb23(19)
      abb23(27)=abb23(33)*spbl6k2
      abb23(33)=abb23(27)*abb23(39)
      abb23(43)=abb23(33)*abb23(43)
      abb23(27)=-abb23(27)*abb23(16)
      abb23(52)=-abb23(27)*abb23(58)
      abb23(43)=abb23(43)-abb23(52)
      abb23(54)=abb23(43)*spbk4k2
      abb23(45)=abb23(33)*abb23(45)
      abb23(31)=abb23(27)*abb23(31)
      abb23(31)=abb23(45)+abb23(31)
      abb23(45)=abb23(31)*spbk3k2
      abb23(45)=abb23(54)+abb23(45)
      abb23(19)=abb23(19)-abb23(45)
      abb23(54)=spak2l5*abb23(19)
      abb23(34)=abb23(34)*abb23(45)
      abb23(43)=spal5l6*abb23(43)
      abb23(25)=abb23(43)+abb23(25)
      abb23(25)=spbl6k4*abb23(25)
      abb23(31)=spal5l6*abb23(31)
      abb23(14)=abb23(31)+abb23(14)
      abb23(14)=spbl6k3*abb23(14)
      abb23(14)=abb23(54)+abb23(34)+abb23(25)+abb23(14)
      abb23(25)=-spbk7k4*abb23(59)
      abb23(31)=-spbk7k3*abb23(22)
      abb23(14)=abb23(31)+2.0_ki*abb23(14)+abb23(25)
      abb23(14)=8.0_ki*abb23(14)
      abb23(25)=spbl6k4*abb23(59)
      abb23(31)=spbl6k3*abb23(22)
      abb23(25)=abb23(25)+abb23(31)
      abb23(25)=8.0_ki*abb23(25)
      abb23(31)=abb23(48)*NC
      abb23(43)=abb23(31)*c3
      abb23(45)=spak1k4*spbl6k2
      abb23(54)=abb23(43)*abb23(45)
      abb23(58)=abb23(48)*c3
      abb23(60)=abb23(26)*abb23(58)
      abb23(61)=abb23(60)*spbl6k2
      abb23(54)=abb23(54)-abb23(61)
      abb23(54)=abb23(54)*spal6k7
      abb23(39)=abb23(48)*abb23(39)
      abb23(61)=-abb23(66)*spbl6k2*abb23(39)
      abb23(65)=abb23(61)*spak1k4
      abb23(54)=abb23(54)-abb23(65)
      abb23(54)=abb23(54)*abb23(10)
      abb23(48)=abb23(48)*abb23(3)
      abb23(65)=abb23(48)-abb23(31)
      abb23(65)=spal5k7*abb23(65)
      abb23(50)=spbl5k2*abb23(50)
      abb23(66)=abb23(50)*spak1k4*abb23(65)
      abb23(39)=-spbl5k2*spal5k7*abb23(39)
      abb23(53)=abb23(39)*abb23(53)
      abb23(53)=abb23(54)+abb23(66)+abb23(53)
      abb23(48)=abb23(48)*abb23(63)
      abb23(31)=abb23(31)*abb23(63)
      abb23(48)=abb23(48)-abb23(31)
      abb23(48)=abb23(48)*c1
      abb23(31)=abb23(31)*c3
      abb23(31)=abb23(48)+abb23(31)
      abb23(48)=spak1k4*abb23(31)
      abb23(54)=abb23(60)*abb23(63)
      abb23(48)=-abb23(54)+abb23(48)
      abb23(20)=abb23(20)-abb23(48)
      abb23(20)=spbl5k2*abb23(20)
      abb23(54)=abb23(57)*spbl6k2
      abb23(26)=abb23(54)*abb23(26)
      abb23(45)=abb23(45)*abb23(57)
      abb23(57)=abb23(45)*NC
      abb23(26)=abb23(26)-abb23(57)
      abb23(26)=abb23(26)*c1
      abb23(16)=abb23(16)*abb23(45)
      abb23(16)=abb23(26)-abb23(16)
      abb23(26)=abb23(52)-abb23(16)
      abb23(26)=spal6k7*abb23(26)
      abb23(33)=abb23(33)*spal6k7
      abb23(41)=abb23(41)*spbl5k2
      abb23(33)=abb23(33)+abb23(41)
      abb23(33)=abb23(42)*abb23(33)
      abb23(41)=-spak1k4*abb23(33)
      abb23(20)=abb23(41)+abb23(26)+abb23(20)-abb23(53)
      abb23(20)=spbk4k2*abb23(20)
      abb23(26)=-abb23(65)*abb23(50)
      abb23(17)=abb23(54)*abb23(17)
      abb23(27)=-abb23(9)*abb23(27)
      abb23(27)=abb23(27)+abb23(17)
      abb23(27)=spal6k7*abb23(27)
      abb23(41)=abb23(58)*abb23(3)
      abb23(45)=abb23(41)*abb23(63)
      abb23(31)=-abb23(45)+abb23(31)
      abb23(35)=abb23(9)*abb23(35)
      abb23(35)=abb23(35)-abb23(31)
      abb23(35)=spbl5k2*abb23(35)
      abb23(27)=-abb23(33)+abb23(26)+abb23(27)+abb23(35)
      abb23(27)=spak1k3*abb23(27)
      abb23(33)=abb23(41)-abb23(43)
      abb23(33)=spal6k7*abb23(33)*spbl6k2
      abb23(33)=abb23(33)+abb23(61)
      abb23(33)=abb23(10)*abb23(33)*spak1k3
      abb23(35)=abb23(51)*abb23(39)
      abb23(33)=abb23(33)-abb23(35)
      abb23(27)=abb23(27)+abb23(33)
      abb23(27)=spbk3k2*abb23(27)
      abb23(20)=abb23(20)+abb23(27)
      abb23(20)=16.0_ki*abb23(20)
      abb23(27)=-abb23(11)*abb23(34)
      abb23(19)=abb23(27)-abb23(19)
      abb23(19)=spak2k7*abb23(19)
      abb23(16)=-spal6k7*abb23(16)
      abb23(27)=-spbl5k2*abb23(48)
      abb23(16)=abb23(16)+abb23(27)-abb23(53)
      abb23(16)=spbl6k4*abb23(16)
      abb23(17)=spal6k7*abb23(17)
      abb23(27)=-spbl5k2*abb23(31)
      abb23(17)=abb23(26)+abb23(17)+abb23(27)
      abb23(17)=spak1k3*abb23(17)
      abb23(17)=abb23(17)+abb23(33)
      abb23(17)=spbl6k3*abb23(17)
      abb23(26)=-spbl6l5*abb23(47)
      abb23(16)=abb23(26)+abb23(16)+abb23(17)+abb23(19)
      abb23(17)=spbl5k4*abb23(59)
      abb23(19)=spbl5k3*abb23(22)
      abb23(16)=abb23(19)+2.0_ki*abb23(16)+abb23(17)
      abb23(16)=8.0_ki*abb23(16)
      abb23(17)=abb23(55)*spak4l5
      abb23(19)=abb23(36)*abb23(9)
      abb23(22)=abb23(40)*abb23(42)
      abb23(19)=abb23(19)+abb23(22)
      abb23(19)=abb23(19)*abb23(44)
      abb23(19)=abb23(19)-abb23(29)
      abb23(22)=abb23(19)*spak4k7
      abb23(17)=-abb23(64)+abb23(17)-abb23(22)
      abb23(22)=-4.0_ki*abb23(17)
      abb23(26)=abb23(56)*abb23(55)
      abb23(27)=-spbk3k1*abb23(62)
      abb23(23)=spbk3k1*abb23(23)
      abb23(23)=abb23(23)-abb23(71)
      abb23(23)=spak1k7*abb23(23)
      abb23(23)=abb23(23)+abb23(26)+abb23(27)
      abb23(23)=spak3k4*abb23(23)
      abb23(17)=es34*abb23(17)
      abb23(17)=abb23(23)+abb23(17)
      abb23(17)=4.0_ki*abb23(17)
      abb23(23)=-spak3l5*abb23(55)
      abb23(19)=spak3k7*abb23(19)
      abb23(26)=spak3l6*abb23(49)
      abb23(19)=abb23(26)+abb23(23)+abb23(19)
      abb23(19)=4.0_ki*abb23(19)
      R2d23=abb23(37)
      rat2 = rat2 + R2d23
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='23' value='", &
          & R2d23, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd23h6