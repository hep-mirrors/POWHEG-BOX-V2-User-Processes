module     p0_dbaru_epnebbbarg_abbrevd64h7
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh7
   implicit none
   private
   complex(ki), dimension(63), public :: abb64
   complex(ki), public :: R2d64
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
      abb64(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb64(2)=1.0_ki/(es71+es34+es56-es712-es234)
      abb64(3)=NC**(-1)
      abb64(4)=sqrt2**(-1)
      abb64(5)=es56**(-1)
      abb64(6)=es71**(-1)
      abb64(7)=spak2l5**(-1)
      abb64(8)=spbl5k2**(-1)
      abb64(9)=spak2l6**(-1)
      abb64(10)=spbl6k2**(-1)
      abb64(11)=spbk7k2**(-1)
      abb64(12)=1.0_ki/(es34+es567-es12-es234)
      abb64(13)=spbl5k3*NC
      abb64(14)=abb64(13)*spak2l5
      abb64(15)=spbl6k3*NC
      abb64(16)=abb64(15)*spak2l6
      abb64(14)=abb64(14)+abb64(16)
      abb64(14)=abb64(14)*c3
      abb64(16)=spak2l5*spbl5k3
      abb64(17)=spak2l6*spbl6k3
      abb64(16)=abb64(16)+abb64(17)
      abb64(17)=-c4*abb64(16)
      abb64(17)=abb64(14)+abb64(17)
      abb64(17)=spak4k7*abb64(17)
      abb64(18)=spak4k7*c3
      abb64(19)=abb64(3)*c4
      abb64(20)=abb64(19)*spak4k7
      abb64(18)=abb64(18)-abb64(20)
      abb64(18)=abb64(18)*abb64(3)
      abb64(21)=-abb64(16)*abb64(18)
      abb64(17)=abb64(17)+abb64(21)
      abb64(21)=2.0_ki*spbl5k2
      abb64(17)=abb64(17)*abb64(21)
      abb64(22)=spak2l6**2
      abb64(23)=abb64(7)*spbl6k3
      abb64(24)=abb64(22)*abb64(23)
      abb64(25)=NC*abb64(24)
      abb64(26)=spak2l6*abb64(13)
      abb64(25)=abb64(26)+abb64(25)
      abb64(25)=c3*abb64(25)
      abb64(26)=spak2l6*spbl5k3
      abb64(26)=abb64(26)+abb64(24)
      abb64(27)=-c4*abb64(26)
      abb64(25)=abb64(25)+abb64(27)
      abb64(25)=spak4k7*abb64(25)
      abb64(26)=-abb64(26)*abb64(18)
      abb64(25)=abb64(25)+abb64(26)
      abb64(25)=spbl6k2*abb64(25)
      abb64(26)=spal5l6*spbl6l5
      abb64(27)=-abb64(26)*abb64(13)
      abb64(28)=abb64(26)*NC
      abb64(29)=abb64(7)*spak2l6
      abb64(30)=abb64(29)*spbl6k3
      abb64(31)=-abb64(30)*abb64(28)
      abb64(27)=abb64(27)+abb64(31)
      abb64(27)=c3*abb64(27)
      abb64(31)=abb64(30)+spbl5k3
      abb64(32)=abb64(26)*abb64(31)
      abb64(33)=c4*abb64(32)
      abb64(27)=abb64(27)+abb64(33)
      abb64(27)=spak4k7*abb64(27)
      abb64(32)=abb64(32)*abb64(18)
      abb64(17)=abb64(25)+abb64(17)+abb64(27)+abb64(32)
      abb64(17)=spbl6k2*abb64(17)
      abb64(25)=spak2l5**2
      abb64(27)=abb64(9)*spbl5k3
      abb64(32)=abb64(25)*abb64(27)
      abb64(33)=NC*abb64(32)
      abb64(34)=spak2l5*abb64(15)
      abb64(33)=abb64(34)+abb64(33)
      abb64(33)=c3*abb64(33)
      abb64(34)=spak2l5*spbl6k3
      abb64(34)=abb64(34)+abb64(32)
      abb64(35)=-c4*abb64(34)
      abb64(33)=abb64(33)+abb64(35)
      abb64(33)=spak4k7*abb64(33)
      abb64(34)=-abb64(34)*abb64(18)
      abb64(33)=abb64(33)+abb64(34)
      abb64(33)=spbl5k2*abb64(33)
      abb64(28)=abb64(28)*c3
      abb64(34)=abb64(9)*spak2l5
      abb64(35)=abb64(34)*spbl5k3
      abb64(36)=abb64(35)+spbl6k3
      abb64(37)=-abb64(36)*abb64(28)
      abb64(38)=abb64(26)*abb64(36)
      abb64(39)=c4*abb64(38)
      abb64(37)=abb64(37)+abb64(39)
      abb64(37)=spak4k7*abb64(37)
      abb64(38)=abb64(38)*abb64(18)
      abb64(33)=abb64(33)+abb64(37)+abb64(38)
      abb64(33)=spbl5k2*abb64(33)
      abb64(17)=abb64(33)+abb64(17)
      abb64(17)=abb64(6)*abb64(17)
      abb64(33)=abb64(19)*abb64(12)
      abb64(37)=c3*abb64(12)
      abb64(33)=abb64(33)-abb64(37)
      abb64(33)=abb64(3)*spbk3k1*abb64(33)
      abb64(38)=abb64(37)*NC
      abb64(39)=c4*abb64(12)
      abb64(38)=abb64(38)-abb64(39)
      abb64(39)=-spbk3k1*abb64(38)
      abb64(33)=abb64(33)-abb64(39)
      abb64(39)=abb64(26)*abb64(29)
      abb64(40)=abb64(39)*abb64(33)
      abb64(41)=3.0_ki*spbl5k2
      abb64(42)=-abb64(41)*spak2l6*abb64(33)
      abb64(22)=abb64(22)*abb64(7)
      abb64(43)=-spbl6k2*abb64(22)*abb64(33)
      abb64(40)=abb64(43)+abb64(42)+abb64(40)
      abb64(40)=spbl6k2*abb64(40)
      abb64(42)=abb64(26)*abb64(33)
      abb64(43)=-abb64(41)*spak2l5*abb64(33)
      abb64(42)=2.0_ki*abb64(42)+abb64(43)
      abb64(42)=spbl5k2*abb64(42)
      abb64(40)=abb64(42)+abb64(40)
      abb64(40)=spbl6k2*abb64(40)
      abb64(42)=spbk2k1*spbl6k3
      abb64(43)=abb64(42)*abb64(29)
      abb64(44)=spbk2k1*spbl5k3
      abb64(45)=abb64(43)+abb64(44)
      abb64(46)=abb64(19)-c3
      abb64(46)=abb64(46)*abb64(3)
      abb64(47)=abb64(46)-c4
      abb64(48)=abb64(47)*abb64(26)*abb64(45)
      abb64(16)=-abb64(47)*abb64(16)*spbk2k1
      abb64(14)=-spbk2k1*abb64(14)
      abb64(14)=abb64(14)+abb64(16)
      abb64(14)=abb64(14)*abb64(21)
      abb64(16)=c3*NC
      abb64(21)=abb64(47)+abb64(16)
      abb64(49)=abb64(24)*spbk2k1
      abb64(50)=abb64(44)*spak2l6
      abb64(50)=abb64(50)+abb64(49)
      abb64(50)=-spbl6k2*abb64(50)*abb64(21)
      abb64(51)=abb64(45)*abb64(28)
      abb64(14)=abb64(50)+abb64(14)+abb64(51)+abb64(48)
      abb64(14)=spbl6k2*abb64(14)
      abb64(48)=abb64(44)*abb64(34)
      abb64(50)=abb64(48)+abb64(42)
      abb64(51)=abb64(47)*abb64(26)*abb64(50)
      abb64(25)=abb64(25)*abb64(9)
      abb64(52)=abb64(25)*abb64(44)
      abb64(53)=abb64(42)*spak2l5
      abb64(53)=abb64(53)+abb64(52)
      abb64(53)=-spbl5k2*abb64(53)*abb64(21)
      abb64(54)=abb64(50)*abb64(28)
      abb64(51)=abb64(53)+abb64(54)+abb64(51)
      abb64(51)=spbl5k2*abb64(51)
      abb64(14)=abb64(51)+abb64(14)
      abb64(14)=abb64(6)*abb64(14)
      abb64(51)=abb64(26)*abb64(34)
      abb64(53)=abb64(51)*abb64(33)
      abb64(54)=-spbl5k2*abb64(25)*abb64(33)
      abb64(53)=abb64(54)+abb64(53)
      abb64(54)=spbl5k2**2
      abb64(53)=abb64(53)*abb64(54)
      abb64(14)=abb64(14)+abb64(53)+abb64(40)
      abb64(40)=abb64(11)*spak1k4
      abb64(14)=abb64(14)*abb64(40)
      abb64(14)=abb64(17)+abb64(14)
      abb64(14)=spak1k7*abb64(14)
      abb64(17)=spak2l6*abb64(8)
      abb64(53)=abb64(17)*abb64(44)
      abb64(49)=abb64(49)*abb64(8)
      abb64(49)=abb64(53)+abb64(49)
      abb64(53)=c3*abb64(7)
      abb64(55)=abb64(49)*abb64(53)
      abb64(49)=abb64(49)*abb64(7)
      abb64(56)=abb64(19)*abb64(49)
      abb64(56)=-abb64(55)+abb64(56)
      abb64(56)=abb64(3)*abb64(56)
      abb64(55)=NC*abb64(55)
      abb64(49)=-c4*abb64(49)
      abb64(49)=abb64(56)+abb64(55)+abb64(49)
      abb64(49)=spbl6k2*abb64(49)
      abb64(45)=abb64(45)*abb64(21)
      abb64(45)=3.0_ki*abb64(45)+abb64(49)
      abb64(45)=spbl6k2*abb64(45)
      abb64(49)=abb64(19)*abb64(9)
      abb64(55)=c3*abb64(9)
      abb64(49)=abb64(49)-abb64(55)
      abb64(49)=abb64(49)*abb64(3)
      abb64(56)=c4*abb64(9)
      abb64(57)=abb64(55)*NC
      abb64(57)=abb64(49)+abb64(57)-abb64(56)
      abb64(58)=spak2l5*abb64(10)
      abb64(59)=abb64(58)*abb64(42)
      abb64(52)=abb64(52)*abb64(10)
      abb64(52)=abb64(59)+abb64(52)
      abb64(52)=spbl5k2*abb64(52)*abb64(57)
      abb64(50)=abb64(50)*abb64(21)
      abb64(50)=3.0_ki*abb64(50)+abb64(52)
      abb64(50)=spbl5k2*abb64(50)
      abb64(45)=abb64(50)+abb64(45)
      abb64(45)=abb64(6)*abb64(45)
      abb64(50)=abb64(34)*abb64(33)
      abb64(52)=abb64(10)*abb64(34)**2
      abb64(57)=spbl5k2*abb64(52)*abb64(33)
      abb64(57)=4.0_ki*abb64(50)+abb64(57)
      abb64(57)=abb64(57)*abb64(54)
      abb64(59)=-abb64(29)*abb64(33)
      abb64(60)=abb64(8)*abb64(29)**2
      abb64(61)=spbl6k2*abb64(60)*abb64(33)
      abb64(61)=-4.0_ki*abb64(59)+abb64(61)
      abb64(61)=spbl6k2*abb64(61)
      abb64(62)=6.0_ki*spbl5k2
      abb64(63)=abb64(33)*abb64(62)
      abb64(61)=abb64(63)+abb64(61)
      abb64(61)=spbl6k2*abb64(61)
      abb64(45)=abb64(45)+abb64(57)+abb64(61)
      abb64(45)=abb64(45)*abb64(40)
      abb64(57)=-abb64(58)*abb64(15)
      abb64(32)=abb64(32)*abb64(10)
      abb64(61)=-NC*abb64(32)
      abb64(57)=abb64(57)+abb64(61)
      abb64(57)=abb64(57)*abb64(55)
      abb64(61)=abb64(58)*spbl6k3
      abb64(32)=abb64(61)+abb64(32)
      abb64(61)=abb64(32)*abb64(56)
      abb64(57)=abb64(57)+abb64(61)
      abb64(57)=spak4k7*abb64(57)
      abb64(32)=abb64(32)*abb64(9)*abb64(18)
      abb64(32)=abb64(57)+abb64(32)
      abb64(32)=spbl5k2*abb64(32)
      abb64(57)=abb64(35)*NC
      abb64(61)=-abb64(15)-abb64(57)
      abb64(61)=c3*abb64(61)
      abb64(63)=c4*abb64(36)
      abb64(61)=abb64(61)+abb64(63)
      abb64(61)=spak4k7*abb64(61)
      abb64(36)=abb64(36)*abb64(18)
      abb64(36)=abb64(61)+abb64(36)
      abb64(32)=3.0_ki*abb64(36)+abb64(32)
      abb64(32)=spbl5k2*abb64(32)
      abb64(36)=-abb64(13)*abb64(17)
      abb64(24)=abb64(24)*abb64(8)
      abb64(61)=-NC*abb64(24)
      abb64(36)=abb64(36)+abb64(61)
      abb64(36)=abb64(36)*abb64(53)
      abb64(61)=abb64(17)*spbl5k3
      abb64(24)=abb64(61)+abb64(24)
      abb64(24)=abb64(24)*abb64(7)
      abb64(61)=c4*abb64(24)
      abb64(36)=abb64(36)+abb64(61)
      abb64(36)=spak4k7*abb64(36)
      abb64(24)=abb64(24)*abb64(18)
      abb64(24)=abb64(36)+abb64(24)
      abb64(24)=spbl6k2*abb64(24)
      abb64(36)=abb64(30)*NC
      abb64(61)=-abb64(13)-abb64(36)
      abb64(61)=c3*abb64(61)
      abb64(63)=c4*abb64(31)
      abb64(61)=abb64(61)+abb64(63)
      abb64(61)=spak4k7*abb64(61)
      abb64(31)=abb64(31)*abb64(18)
      abb64(31)=abb64(61)+abb64(31)
      abb64(24)=3.0_ki*abb64(31)+abb64(24)
      abb64(24)=spbl6k2*abb64(24)
      abb64(24)=abb64(32)+abb64(24)
      abb64(24)=abb64(6)*abb64(24)
      abb64(24)=abb64(24)+abb64(45)
      abb64(24)=spak1k7*abb64(24)
      abb64(31)=-spak4k7*spbk4k3*abb64(38)
      abb64(20)=abb64(20)*abb64(12)
      abb64(32)=spak4k7*abb64(37)
      abb64(20)=abb64(20)-abb64(32)
      abb64(20)=abb64(3)*spbk4k3*abb64(20)
      abb64(20)=abb64(31)-abb64(20)
      abb64(31)=abb64(34)*abb64(20)
      abb64(32)=-spbl5k2*abb64(52)*abb64(20)
      abb64(32)=-4.0_ki*abb64(31)+abb64(32)
      abb64(32)=abb64(32)*abb64(54)
      abb64(37)=abb64(29)*abb64(20)
      abb64(38)=-spbl6k2*abb64(60)*abb64(20)
      abb64(38)=-4.0_ki*abb64(37)+abb64(38)
      abb64(38)=spbl6k2*abb64(38)
      abb64(45)=-abb64(20)*abb64(62)
      abb64(38)=abb64(45)+abb64(38)
      abb64(38)=spbl6k2*abb64(38)
      abb64(32)=abb64(32)+abb64(38)
      abb64(32)=abb64(32)*abb64(40)
      abb64(24)=abb64(32)+abb64(24)
      abb64(32)=mB**2
      abb64(24)=abb64(24)*abb64(32)
      abb64(38)=-abb64(39)*abb64(20)
      abb64(39)=abb64(41)*spak2l6*abb64(20)
      abb64(22)=spbl6k2*abb64(22)*abb64(20)
      abb64(22)=abb64(22)+abb64(39)+abb64(38)
      abb64(22)=spbl6k2*abb64(22)
      abb64(38)=-abb64(26)*abb64(20)
      abb64(39)=abb64(41)*spak2l5*abb64(20)
      abb64(38)=2.0_ki*abb64(38)+abb64(39)
      abb64(38)=spbl5k2*abb64(38)
      abb64(22)=abb64(38)+abb64(22)
      abb64(22)=spbl6k2*abb64(22)
      abb64(38)=-abb64(51)*abb64(20)
      abb64(25)=spbl5k2*abb64(25)*abb64(20)
      abb64(25)=abb64(25)+abb64(38)
      abb64(25)=abb64(25)*abb64(54)
      abb64(22)=abb64(25)+abb64(22)
      abb64(22)=abb64(22)*abb64(40)
      abb64(14)=abb64(24)+abb64(22)+abb64(14)
      abb64(22)=abb64(2)*gW
      abb64(22)=abb64(5)*abb64(4)*abb64(1)*abb64(22)**2*CVDU*mB
      abb64(24)=8.0_ki*abb64(22)
      abb64(25)=i_*TR**2
      abb64(14)=abb64(24)*abb64(25)*abb64(14)
      abb64(38)=abb64(33)*abb64(41)
      abb64(39)=abb64(59)*spbl6k2
      abb64(45)=abb64(38)-abb64(39)
      abb64(45)=spbl6k2*abb64(45)
      abb64(51)=abb64(42)+2.0_ki*abb64(48)
      abb64(51)=abb64(51)*abb64(47)
      abb64(52)=2.0_ki*NC
      abb64(59)=abb64(48)*abb64(52)
      abb64(60)=NC*abb64(42)
      abb64(59)=abb64(60)+abb64(59)
      abb64(59)=c3*abb64(59)
      abb64(51)=abb64(59)+abb64(51)
      abb64(51)=spbl5k2*abb64(51)
      abb64(59)=abb64(44)*abb64(52)
      abb64(60)=NC*abb64(43)
      abb64(59)=abb64(59)+abb64(60)
      abb64(59)=c3*abb64(59)
      abb64(60)=abb64(43)+2.0_ki*abb64(44)
      abb64(60)=abb64(60)*abb64(47)
      abb64(59)=abb64(59)+abb64(60)
      abb64(59)=spbl6k2*abb64(59)
      abb64(51)=abb64(51)+abb64(59)
      abb64(51)=abb64(6)*abb64(51)
      abb64(59)=abb64(50)*abb64(54)
      abb64(45)=abb64(51)+2.0_ki*abb64(59)+abb64(45)
      abb64(45)=abb64(45)*abb64(40)
      abb64(36)=-2.0_ki*abb64(13)-abb64(36)
      abb64(36)=c3*abb64(36)
      abb64(51)=2.0_ki*spbl5k3
      abb64(60)=abb64(51)+abb64(30)
      abb64(61)=c4*abb64(60)
      abb64(36)=abb64(36)+abb64(61)
      abb64(36)=spak4k7*abb64(36)
      abb64(60)=abb64(60)*abb64(18)
      abb64(36)=abb64(36)+abb64(60)
      abb64(36)=spbl6k2*abb64(36)
      abb64(60)=-abb64(35)*abb64(52)
      abb64(60)=-abb64(15)+abb64(60)
      abb64(60)=c3*abb64(60)
      abb64(61)=spbl6k3+2.0_ki*abb64(35)
      abb64(62)=c4*abb64(61)
      abb64(60)=abb64(60)+abb64(62)
      abb64(60)=spak4k7*abb64(60)
      abb64(61)=abb64(61)*abb64(18)
      abb64(60)=abb64(60)+abb64(61)
      abb64(60)=spbl5k2*abb64(60)
      abb64(36)=abb64(60)+abb64(36)
      abb64(36)=abb64(6)*abb64(36)
      abb64(36)=abb64(36)+abb64(45)
      abb64(36)=spak1k7*abb64(36)
      abb64(41)=abb64(20)*abb64(41)
      abb64(37)=abb64(37)*spbl6k2
      abb64(45)=-abb64(41)-abb64(37)
      abb64(45)=spbl6k2*abb64(45)
      abb64(60)=abb64(31)*abb64(54)
      abb64(45)=-2.0_ki*abb64(60)+abb64(45)
      abb64(45)=abb64(45)*abb64(40)
      abb64(36)=abb64(45)+abb64(36)
      abb64(22)=abb64(22)*abb64(25)
      abb64(45)=16.0_ki*abb64(22)
      abb64(36)=abb64(36)*abb64(45)
      abb64(38)=abb64(38)-2.0_ki*abb64(39)
      abb64(38)=spbl6k2*abb64(38)
      abb64(61)=abb64(42)*abb64(52)
      abb64(62)=NC*abb64(48)
      abb64(61)=abb64(61)+abb64(62)
      abb64(61)=c3*abb64(61)
      abb64(48)=abb64(48)+2.0_ki*abb64(42)
      abb64(48)=abb64(48)*abb64(47)
      abb64(48)=abb64(61)+abb64(48)
      abb64(48)=spbl5k2*abb64(48)
      abb64(61)=abb64(44)+2.0_ki*abb64(43)
      abb64(61)=abb64(61)*abb64(47)
      abb64(43)=abb64(43)*abb64(52)
      abb64(62)=NC*abb64(44)
      abb64(43)=abb64(62)+abb64(43)
      abb64(43)=c3*abb64(43)
      abb64(43)=abb64(43)+abb64(61)
      abb64(43)=spbl6k2*abb64(43)
      abb64(43)=abb64(48)+abb64(43)
      abb64(43)=abb64(6)*abb64(43)
      abb64(38)=abb64(43)+abb64(59)+abb64(38)
      abb64(38)=abb64(38)*abb64(40)
      abb64(43)=-2.0_ki*abb64(15)-abb64(57)
      abb64(43)=c3*abb64(43)
      abb64(35)=abb64(35)+2.0_ki*spbl6k3
      abb64(48)=c4*abb64(35)
      abb64(43)=abb64(43)+abb64(48)
      abb64(43)=spak4k7*abb64(43)
      abb64(35)=abb64(35)*abb64(18)
      abb64(35)=abb64(43)+abb64(35)
      abb64(35)=spbl5k2*abb64(35)
      abb64(43)=-abb64(30)*abb64(52)
      abb64(43)=-abb64(13)+abb64(43)
      abb64(43)=c3*abb64(43)
      abb64(30)=spbl5k3+2.0_ki*abb64(30)
      abb64(48)=c4*abb64(30)
      abb64(43)=abb64(43)+abb64(48)
      abb64(43)=spak4k7*abb64(43)
      abb64(30)=abb64(30)*abb64(18)
      abb64(30)=abb64(43)+abb64(30)
      abb64(30)=spbl6k2*abb64(30)
      abb64(30)=abb64(35)+abb64(30)
      abb64(30)=abb64(6)*abb64(30)
      abb64(30)=abb64(30)+abb64(38)
      abb64(30)=spak1k7*abb64(30)
      abb64(35)=-abb64(41)-2.0_ki*abb64(37)
      abb64(35)=spbl6k2*abb64(35)
      abb64(35)=-abb64(60)+abb64(35)
      abb64(35)=abb64(35)*abb64(40)
      abb64(30)=abb64(35)+abb64(30)
      abb64(30)=abb64(30)*abb64(45)
      abb64(35)=abb64(26)*abb64(9)
      abb64(38)=-spbl5k2*abb64(35)*abb64(33)
      abb64(41)=abb64(26)*abb64(7)
      abb64(43)=-spbl6k2*abb64(41)*abb64(33)
      abb64(45)=abb64(23)*spbk2k1
      abb64(48)=abb64(44)*abb64(9)
      abb64(52)=abb64(45)+abb64(48)
      abb64(47)=-abb64(47)*abb64(26)*abb64(52)
      abb64(52)=-abb64(52)*abb64(28)
      abb64(47)=abb64(52)+abb64(47)
      abb64(47)=abb64(6)*abb64(47)
      abb64(38)=abb64(47)+abb64(38)+abb64(43)
      abb64(38)=abb64(38)*abb64(40)
      abb64(43)=abb64(27)+abb64(23)
      abb64(28)=abb64(43)*abb64(28)
      abb64(26)=abb64(26)*abb64(43)
      abb64(43)=-c4*abb64(26)
      abb64(28)=abb64(28)+abb64(43)
      abb64(28)=spak4k7*abb64(28)
      abb64(26)=-abb64(26)*abb64(18)
      abb64(26)=abb64(28)+abb64(26)
      abb64(26)=abb64(6)*abb64(26)
      abb64(26)=abb64(26)+abb64(38)
      abb64(26)=spak1k7*abb64(26)
      abb64(28)=spbl5k2*abb64(35)*abb64(20)
      abb64(35)=spbl6k2*abb64(41)*abb64(20)
      abb64(28)=abb64(28)+abb64(35)
      abb64(28)=abb64(28)*abb64(40)
      abb64(26)=abb64(28)+abb64(26)
      abb64(26)=32.0_ki*abb64(26)*abb64(22)
      abb64(28)=spbl5k2*abb64(31)
      abb64(31)=spbl6k2*abb64(20)
      abb64(28)=abb64(28)+abb64(31)
      abb64(28)=spbl6k2*abb64(28)*abb64(40)
      abb64(31)=-spbl5k2*abb64(50)
      abb64(35)=-spbl6k2*abb64(33)
      abb64(31)=abb64(31)+abb64(35)
      abb64(31)=spbl6k2*abb64(31)
      abb64(35)=abb64(16)-c4
      abb64(38)=abb64(35)+abb64(46)
      abb64(41)=-spbl5k2*abb64(38)*abb64(42)*abb64(34)
      abb64(42)=-spbl6k2*abb64(42)*abb64(38)
      abb64(41)=abb64(41)+abb64(42)
      abb64(41)=abb64(6)*abb64(41)
      abb64(31)=abb64(31)+abb64(41)
      abb64(31)=abb64(31)*abb64(40)
      abb64(41)=abb64(35)*spak4k7
      abb64(41)=abb64(41)-abb64(18)
      abb64(34)=spbl5k2*abb64(41)*abb64(34)*spbl6k3
      abb64(42)=spbl6k2*spbl6k3*abb64(41)
      abb64(34)=abb64(34)+abb64(42)
      abb64(34)=abb64(6)*abb64(34)
      abb64(31)=abb64(34)+abb64(31)
      abb64(31)=spak1k7*abb64(31)
      abb64(28)=abb64(28)+abb64(31)
      abb64(22)=8.0_ki*abb64(22)
      abb64(28)=abb64(28)*abb64(22)
      abb64(31)=-abb64(33)*abb64(54)
      abb64(33)=spbl5k2*abb64(39)
      abb64(34)=-spbl6k2*abb64(38)*abb64(44)*abb64(29)
      abb64(39)=-spbl5k2*abb64(44)*abb64(38)
      abb64(34)=abb64(39)+abb64(34)
      abb64(34)=abb64(6)*abb64(34)
      abb64(31)=abb64(34)+abb64(31)+abb64(33)
      abb64(31)=abb64(31)*abb64(40)
      abb64(33)=spbl5k2*spbl5k3*abb64(41)
      abb64(29)=spbl6k2*abb64(41)*abb64(29)*spbl5k3
      abb64(29)=abb64(33)+abb64(29)
      abb64(29)=abb64(6)*abb64(29)
      abb64(29)=abb64(29)+abb64(31)
      abb64(29)=spak1k7*abb64(29)
      abb64(20)=abb64(20)*abb64(54)
      abb64(31)=spbl5k2*abb64(37)
      abb64(20)=abb64(20)+abb64(31)
      abb64(20)=abb64(20)*abb64(40)
      abb64(20)=abb64(20)+abb64(29)
      abb64(20)=abb64(20)*abb64(22)
      abb64(22)=2.0_ki*spal5l6
      abb64(13)=abb64(22)*abb64(13)
      abb64(29)=spak2l6*spbk3k2
      abb64(31)=abb64(29)*NC
      abb64(13)=abb64(13)+abb64(31)
      abb64(13)=abb64(13)*abb64(53)
      abb64(31)=abb64(51)*spal5l6
      abb64(29)=abb64(31)+abb64(29)
      abb64(31)=abb64(29)*abb64(7)
      abb64(33)=abb64(31)*c4
      abb64(13)=abb64(13)-abb64(33)
      abb64(33)=-spak4k7*abb64(13)
      abb64(34)=abb64(31)*abb64(18)
      abb64(33)=abb64(33)+abb64(34)
      abb64(33)=spbl6k2*abb64(33)
      abb64(23)=abb64(22)*abb64(23)
      abb64(23)=abb64(23)-spbk3k2
      abb64(34)=-abb64(23)*abb64(18)
      abb64(23)=spak4k7*abb64(23)*abb64(35)
      abb64(23)=abb64(23)+abb64(34)
      abb64(23)=spbl5k2*abb64(23)
      abb64(23)=abb64(23)+abb64(33)
      abb64(23)=abb64(6)*abb64(23)
      abb64(29)=-abb64(29)*abb64(53)
      abb64(31)=abb64(19)*abb64(31)
      abb64(29)=abb64(29)+abb64(31)
      abb64(29)=abb64(3)*abb64(29)
      abb64(13)=abb64(29)+abb64(13)
      abb64(13)=spbl6k2*spbk2k1*abb64(13)
      abb64(29)=abb64(45)*abb64(22)
      abb64(31)=spbk2k1*spbk3k2
      abb64(29)=abb64(29)-abb64(31)
      abb64(29)=-spbl5k2*abb64(29)*abb64(21)
      abb64(13)=abb64(29)+abb64(13)
      abb64(29)=abb64(40)*abb64(6)
      abb64(13)=abb64(13)*abb64(29)
      abb64(13)=abb64(23)+abb64(13)
      abb64(23)=abb64(25)*spak1k7
      abb64(13)=abb64(13)*abb64(23)
      abb64(25)=abb64(7)*spbk3k2
      abb64(33)=abb64(25)*abb64(41)
      abb64(34)=abb64(9)*abb64(10)
      abb64(37)=spbl5k2*abb64(41)*abb64(34)*spbk3k2
      abb64(17)=abb64(17)*abb64(7)**2
      abb64(39)=spbl6k2*abb64(41)*abb64(17)*spbk3k2
      abb64(33)=abb64(39)+2.0_ki*abb64(33)+abb64(37)
      abb64(33)=abb64(6)*abb64(33)
      abb64(34)=-spbl5k2*abb64(38)*abb64(34)*abb64(31)
      abb64(17)=-spbl6k2*abb64(38)*abb64(17)*abb64(31)
      abb64(37)=abb64(31)*abb64(7)
      abb64(39)=-abb64(37)*abb64(38)
      abb64(17)=abb64(17)+2.0_ki*abb64(39)+abb64(34)
      abb64(17)=abb64(17)*abb64(29)
      abb64(17)=abb64(33)+abb64(17)
      abb64(32)=abb64(32)*abb64(23)
      abb64(17)=abb64(17)*abb64(32)
      abb64(13)=abb64(13)+abb64(17)
      abb64(13)=abb64(13)*abb64(24)
      abb64(15)=abb64(15)*abb64(22)
      abb64(17)=spak2l5*spbk3k2
      abb64(33)=abb64(17)*NC
      abb64(15)=abb64(33)-abb64(15)
      abb64(15)=abb64(15)*abb64(55)
      abb64(33)=abb64(22)*spbl6k3
      abb64(17)=abb64(33)-abb64(17)
      abb64(33)=-abb64(17)*abb64(56)
      abb64(33)=-abb64(15)+abb64(33)
      abb64(33)=spak4k7*abb64(33)
      abb64(34)=abb64(17)*abb64(9)
      abb64(39)=-abb64(34)*abb64(18)
      abb64(33)=abb64(33)+abb64(39)
      abb64(33)=spbl5k2*abb64(33)
      abb64(27)=abb64(22)*abb64(27)
      abb64(27)=abb64(27)+spbk3k2
      abb64(39)=abb64(27)*abb64(18)
      abb64(27)=-spak4k7*abb64(27)*abb64(35)
      abb64(27)=abb64(27)+abb64(39)
      abb64(27)=spbl6k2*abb64(27)
      abb64(27)=abb64(33)+abb64(27)
      abb64(27)=abb64(6)*abb64(27)
      abb64(17)=abb64(17)*spbk2k1
      abb64(33)=abb64(55)*abb64(17)
      abb64(19)=-spbk2k1*abb64(19)*abb64(34)
      abb64(19)=abb64(33)+abb64(19)
      abb64(19)=abb64(3)*abb64(19)
      abb64(15)=spbk2k1*abb64(15)
      abb64(17)=abb64(56)*abb64(17)
      abb64(15)=abb64(19)+abb64(15)+abb64(17)
      abb64(15)=spbl5k2*abb64(15)
      abb64(17)=abb64(48)*abb64(22)
      abb64(17)=abb64(17)+abb64(31)
      abb64(17)=spbl6k2*abb64(17)*abb64(21)
      abb64(15)=abb64(15)+abb64(17)
      abb64(15)=abb64(15)*abb64(29)
      abb64(15)=abb64(27)+abb64(15)
      abb64(15)=abb64(15)*abb64(23)
      abb64(17)=abb64(9)*spbk3k2
      abb64(19)=abb64(16)*abb64(17)
      abb64(21)=-spbk3k2*abb64(56)
      abb64(19)=abb64(19)+abb64(21)
      abb64(19)=spak4k7*abb64(19)
      abb64(17)=-abb64(17)*abb64(18)
      abb64(17)=abb64(19)+abb64(17)
      abb64(18)=abb64(58)*abb64(9)**2
      abb64(19)=spbl5k2*abb64(41)*abb64(18)*spbk3k2
      abb64(21)=spbl6k2*abb64(41)*abb64(25)*abb64(8)
      abb64(17)=abb64(21)+2.0_ki*abb64(17)+abb64(19)
      abb64(17)=abb64(6)*abb64(17)
      abb64(16)=-abb64(9)*abb64(16)
      abb64(16)=-abb64(49)+abb64(16)+abb64(56)
      abb64(16)=abb64(31)*abb64(16)
      abb64(18)=-spbl5k2*abb64(38)*abb64(18)*abb64(31)
      abb64(19)=-spbl6k2*abb64(38)*abb64(37)*abb64(8)
      abb64(16)=abb64(19)+2.0_ki*abb64(16)+abb64(18)
      abb64(16)=abb64(16)*abb64(29)
      abb64(16)=abb64(17)+abb64(16)
      abb64(16)=abb64(16)*abb64(32)
      abb64(15)=abb64(15)+abb64(16)
      abb64(15)=abb64(15)*abb64(24)
      R2d64=0.0_ki
      rat2 = rat2 + R2d64
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='64' value='", &
          & R2d64, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd64h7
