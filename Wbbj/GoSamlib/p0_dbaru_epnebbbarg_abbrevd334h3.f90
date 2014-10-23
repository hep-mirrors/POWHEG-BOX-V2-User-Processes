module     p0_dbaru_epnebbbarg_abbrevd334h3
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(64), public :: abb334
   complex(ki), public :: R2d334
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
      abb334(1)=1.0_ki/(-mB**2+es67)
      abb334(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb334(3)=sqrt2**(-1)
      abb334(4)=es234**(-1)
      abb334(5)=es567**(-1)
      abb334(6)=spak2l5**(-1)
      abb334(7)=spak2k7**(-1)
      abb334(8)=sqrt(mB**2)
      abb334(9)=1.0_ki/(es34+es567-es12-es234)
      abb334(10)=spbl6k2**(-1)
      abb334(11)=spak2l6**(-1)
      abb334(12)=c3*NC
      abb334(12)=abb334(12)-c2
      abb334(13)=abb334(12)*spbk3k1
      abb334(14)=abb334(9)*spak1k4
      abb334(15)=-abb334(13)*abb334(14)
      abb334(16)=es712-es12
      abb334(17)=abb334(16)-es71
      abb334(18)=spbl6k2*spak2l6
      abb334(19)=abb334(18)-abb334(17)
      abb334(20)=-abb334(19)*abb334(15)
      abb334(21)=abb334(4)*spbk3k2
      abb334(22)=abb334(21)*spak2k4
      abb334(23)=abb334(19)*abb334(22)
      abb334(24)=abb334(21)*spak3k4
      abb334(25)=abb334(24)*spbl6k3
      abb334(26)=abb334(25)*spak2l6
      abb334(23)=abb334(23)-abb334(26)
      abb334(23)=-abb334(23)*abb334(12)
      abb334(20)=abb334(20)+abb334(23)
      abb334(23)=spak1k2*abb334(6)
      abb334(20)=abb334(20)*abb334(23)
      abb334(27)=abb334(12)*spak2k4
      abb334(28)=abb334(14)*abb334(6)
      abb334(29)=-abb334(28)*spbk4k3*abb334(27)
      abb334(19)=-abb334(19)*abb334(29)
      abb334(19)=abb334(20)-abb334(19)
      abb334(20)=mB*spbk7l6
      abb334(19)=abb334(19)*abb334(20)
      abb334(30)=abb334(8)*spbl5k2
      abb334(31)=abb334(14)*abb334(30)*abb334(13)
      abb334(32)=abb334(21)*abb334(8)
      abb334(33)=spak2k4*spbl5k2
      abb334(34)=abb334(32)*abb334(33)
      abb334(35)=abb334(24)*spbl5k3
      abb334(36)=abb334(35)*abb334(8)
      abb334(36)=abb334(36)-abb334(34)
      abb334(37)=abb334(12)*abb334(36)
      abb334(38)=abb334(31)+abb334(37)
      abb334(39)=abb334(38)*spak1k2
      abb334(40)=abb334(12)*spbk4k3
      abb334(41)=abb334(33)*abb334(8)
      abb334(42)=abb334(41)*abb334(40)
      abb334(43)=abb334(42)*abb334(14)
      abb334(39)=abb334(43)-abb334(39)
      abb334(39)=abb334(39)*spbk7l6
      abb334(19)=abb334(19)-abb334(39)
      abb334(19)=abb334(19)*abb334(7)
      abb334(39)=abb334(24)*spbk7k3
      abb334(44)=abb334(39)*abb334(12)
      abb334(45)=abb334(44)*abb334(23)
      abb334(46)=-abb334(20)*abb334(45)
      abb334(19)=abb334(19)-abb334(46)
      abb334(46)=gW*TR
      abb334(46)=abb334(46)**2*abb334(1)*abb334(2)*abb334(3)*abb334(5)*CVDU*i_
      abb334(47)=4.0_ki*abb334(46)
      abb334(48)=-abb334(19)*abb334(47)
      abb334(49)=abb334(11)*abb334(10)
      abb334(50)=abb334(17)*abb334(49)
      abb334(34)=abb334(50)*abb334(34)
      abb334(51)=-spbl5k3*abb334(50)
      abb334(52)=abb334(24)*abb334(8)
      abb334(53)=abb334(51)*abb334(52)
      abb334(34)=abb334(34)+abb334(53)
      abb334(34)=abb334(34)*abb334(12)
      abb334(31)=-abb334(50)*abb334(31)
      abb334(32)=abb334(32)*spak2k4
      abb334(53)=-abb334(32)*abb334(12)*abb334(17)
      abb334(54)=abb334(17)*abb334(8)
      abb334(55)=-abb334(54)*abb334(15)
      abb334(53)=abb334(55)+abb334(53)
      abb334(53)=abb334(6)*abb334(53)
      abb334(31)=2.0_ki*abb334(53)+abb334(31)+abb334(34)
      abb334(31)=spak1k2*abb334(31)
      abb334(34)=abb334(50)*abb334(43)
      abb334(53)=abb334(54)*abb334(29)
      abb334(31)=abb334(31)+abb334(34)+2.0_ki*abb334(53)
      abb334(31)=spbk7l6*abb334(31)
      abb334(34)=-es712+2.0_ki*es12
      abb334(34)=abb334(34)*es712
      abb334(16)=-es71+2.0_ki*abb334(16)
      abb334(16)=abb334(16)*es71
      abb334(53)=es12**2
      abb334(16)=-abb334(53)+abb334(34)+abb334(16)
      abb334(16)=abb334(16)*abb334(49)
      abb334(16)=abb334(16)+abb334(17)
      abb334(34)=abb334(16)*abb334(22)
      abb334(53)=abb334(25)*abb334(10)
      abb334(54)=abb334(17)*abb334(53)
      abb334(34)=abb334(34)-abb334(54)
      abb334(34)=-abb334(34)*abb334(12)
      abb334(54)=abb334(12)*abb334(14)
      abb334(55)=abb334(54)*spbk3k1
      abb334(56)=abb334(16)*abb334(55)
      abb334(34)=abb334(56)+abb334(34)
      abb334(34)=abb334(6)*abb334(34)
      abb334(56)=abb334(33)*abb334(21)
      abb334(57)=abb334(50)*abb334(56)
      abb334(24)=abb334(51)*abb334(24)
      abb334(24)=abb334(57)+abb334(24)
      abb334(24)=-abb334(24)*abb334(12)
      abb334(57)=abb334(50)*spbl5k2
      abb334(58)=-abb334(57)*abb334(15)
      abb334(24)=abb334(34)+abb334(58)+abb334(24)
      abb334(24)=spak1k2*abb334(24)
      abb334(34)=abb334(14)*abb334(33)*abb334(40)
      abb334(58)=-abb334(50)*abb334(34)
      abb334(27)=-spbk4k3*abb334(27)*abb334(28)
      abb334(16)=abb334(16)*abb334(27)
      abb334(16)=abb334(24)+abb334(58)+abb334(16)
      abb334(16)=abb334(16)*abb334(20)
      abb334(16)=abb334(31)+2.0_ki*abb334(16)
      abb334(16)=mB*abb334(16)
      abb334(24)=abb334(8)**2
      abb334(28)=abb334(24)*abb334(17)
      abb334(31)=-abb334(28)*abb334(29)
      abb334(58)=abb334(22)*abb334(12)
      abb334(58)=abb334(15)+abb334(58)
      abb334(28)=abb334(23)*abb334(28)*abb334(58)
      abb334(28)=abb334(31)+abb334(28)
      abb334(31)=2.0_ki*spal6k7
      abb334(58)=-abb334(31)*abb334(17)
      abb334(18)=abb334(18)*spal6k7
      abb334(18)=abb334(18)+abb334(58)
      abb334(58)=-abb334(18)*abb334(29)
      abb334(59)=abb334(18)*abb334(15)
      abb334(18)=abb334(18)*abb334(22)
      abb334(26)=abb334(26)*spal6k7
      abb334(18)=abb334(26)-abb334(18)
      abb334(18)=-abb334(18)*abb334(12)
      abb334(18)=abb334(59)+abb334(18)
      abb334(18)=abb334(18)*abb334(23)
      abb334(18)=abb334(58)+abb334(18)
      abb334(18)=spbk7l6*abb334(18)
      abb334(18)=3.0_ki*abb334(28)+abb334(18)
      abb334(18)=spbk7l6*abb334(18)
      abb334(16)=abb334(18)+abb334(16)
      abb334(16)=mB*abb334(16)
      abb334(18)=spbk4k3*abb334(31)*abb334(41)
      abb334(26)=spbk3k1*spak1k7
      abb334(28)=spbk4k3*spak4k7
      abb334(26)=abb334(26)+abb334(28)
      abb334(28)=abb334(30)*abb334(26)*spak2l6
      abb334(18)=abb334(18)-abb334(28)
      abb334(18)=abb334(18)*abb334(54)
      abb334(28)=-spak1k2*spal6k7*abb334(38)
      abb334(31)=-abb334(12)*spak1k7*abb334(36)
      abb334(36)=spak2l6*abb334(31)
      abb334(18)=2.0_ki*abb334(28)+abb334(18)+abb334(36)
      abb334(28)=spbk7l6**2
      abb334(18)=abb334(18)*abb334(28)
      abb334(16)=abb334(18)+abb334(16)
      abb334(16)=abb334(7)*abb334(16)
      abb334(18)=spbk3k1*spak1l6
      abb334(36)=spbk4k3*spak4l6
      abb334(18)=abb334(18)+abb334(36)
      abb334(36)=abb334(18)*spbl5k2
      abb334(41)=abb334(36)*abb334(54)
      abb334(56)=abb334(35)-abb334(56)
      abb334(56)=abb334(12)*abb334(56)
      abb334(58)=-spak1l6*abb334(56)
      abb334(41)=abb334(41)-abb334(58)
      abb334(58)=-spal6k7*abb334(45)
      abb334(58)=abb334(58)-abb334(41)
      abb334(59)=2.0_ki*spbk7l6
      abb334(58)=abb334(58)*abb334(59)
      abb334(60)=abb334(24)*abb334(45)
      abb334(58)=3.0_ki*abb334(60)+abb334(58)
      abb334(58)=spbk7l6*abb334(58)
      abb334(45)=abb334(50)*abb334(45)
      abb334(60)=abb334(23)*spbk7l6
      abb334(61)=abb334(12)*abb334(60)
      abb334(62)=abb334(4)*spak3k4*spbk3k2**2
      abb334(63)=-abb334(10)*abb334(62)*abb334(61)
      abb334(45)=2.0_ki*abb334(45)+abb334(63)
      abb334(45)=abb334(45)*abb334(20)
      abb334(64)=abb334(52)*spbk7k3
      abb334(61)=-abb334(64)*abb334(61)
      abb334(45)=2.0_ki*abb334(61)+abb334(45)
      abb334(45)=mB*abb334(45)
      abb334(45)=abb334(58)+abb334(45)
      abb334(45)=mB*abb334(45)
      abb334(58)=abb334(54)*abb334(30)
      abb334(18)=abb334(18)*abb334(58)
      abb334(37)=-spak1l6*abb334(37)
      abb334(18)=abb334(18)-abb334(37)
      abb334(28)=abb334(18)*abb334(28)
      abb334(16)=abb334(16)+3.0_ki*abb334(28)+abb334(45)
      abb334(16)=abb334(16)*abb334(47)
      abb334(19)=abb334(19)*abb334(46)
      abb334(28)=16.0_ki*abb334(19)
      abb334(37)=abb334(50)-1.0_ki
      abb334(45)=-abb334(37)*abb334(27)
      abb334(50)=-abb334(37)*abb334(55)
      abb334(37)=abb334(37)*abb334(22)
      abb334(37)=abb334(53)+abb334(37)
      abb334(37)=abb334(37)*abb334(12)
      abb334(37)=abb334(50)+abb334(37)
      abb334(37)=abb334(37)*abb334(23)
      abb334(37)=abb334(45)+abb334(37)
      abb334(20)=abb334(37)*abb334(20)
      abb334(37)=spak1k2*abb334(49)*abb334(38)
      abb334(43)=-abb334(49)*abb334(43)
      abb334(37)=abb334(43)+abb334(37)
      abb334(37)=spbk7l6*abb334(37)
      abb334(20)=abb334(37)+abb334(20)
      abb334(37)=mB**2
      abb334(20)=abb334(7)*abb334(20)*abb334(37)
      abb334(43)=mB**3*abb334(60)*abb334(49)*abb334(44)
      abb334(20)=abb334(43)+abb334(20)
      abb334(20)=8.0_ki*abb334(20)*abb334(46)
      abb334(19)=8.0_ki*abb334(19)
      abb334(43)=abb334(11)*abb334(38)
      abb334(17)=abb334(17)*abb334(11)
      abb334(44)=-spbl6k2+5.0_ki*abb334(17)
      abb334(44)=abb334(8)*abb334(44)
      abb334(45)=abb334(44)*abb334(22)
      abb334(50)=abb334(52)*spbl6k3
      abb334(45)=abb334(50)+abb334(45)
      abb334(45)=abb334(45)*abb334(12)
      abb334(50)=-abb334(44)*abb334(55)
      abb334(45)=abb334(50)+abb334(45)
      abb334(45)=abb334(6)*abb334(45)
      abb334(43)=2.0_ki*abb334(43)+abb334(45)
      abb334(43)=spak1k2*abb334(43)
      abb334(45)=abb334(51)-spbl5k3
      abb334(45)=spak3k4*abb334(45)
      abb334(50)=abb334(57)+spbl5k2
      abb334(51)=abb334(50)*spak2k4
      abb334(45)=abb334(45)+abb334(51)
      abb334(21)=abb334(21)*abb334(11)
      abb334(45)=abb334(12)*abb334(45)*abb334(21)
      abb334(51)=-abb334(11)*abb334(12)
      abb334(50)=abb334(51)*abb334(50)
      abb334(53)=abb334(50)*abb334(14)*spbk3k1
      abb334(45)=abb334(53)+abb334(45)
      abb334(17)=abb334(17)-spbl6k2
      abb334(53)=abb334(17)*abb334(22)
      abb334(53)=abb334(53)+abb334(25)
      abb334(53)=-abb334(53)*abb334(12)
      abb334(55)=abb334(17)*abb334(55)
      abb334(53)=abb334(55)+abb334(53)
      abb334(53)=abb334(6)*abb334(53)
      abb334(45)=2.0_ki*abb334(45)+abb334(53)
      abb334(45)=spak1k2*abb334(45)
      abb334(53)=2.0_ki*abb334(14)
      abb334(50)=-abb334(53)*spak2k4*spbk4k3*abb334(50)
      abb334(17)=abb334(17)*abb334(27)
      abb334(17)=abb334(45)+abb334(50)+abb334(17)
      abb334(17)=mB*abb334(17)
      abb334(42)=-abb334(53)*abb334(11)*abb334(42)
      abb334(27)=-abb334(44)*abb334(27)
      abb334(17)=abb334(17)+abb334(43)+abb334(42)+abb334(27)
      abb334(17)=mB*abb334(17)
      abb334(27)=abb334(25)*abb334(24)
      abb334(42)=abb334(24)*spbl6k2
      abb334(43)=abb334(42)*abb334(22)
      abb334(27)=abb334(27)-abb334(43)
      abb334(27)=abb334(27)*abb334(12)
      abb334(43)=-abb334(42)*abb334(15)
      abb334(27)=abb334(43)+abb334(27)
      abb334(27)=abb334(6)*abb334(27)
      abb334(21)=abb334(21)*abb334(33)
      abb334(33)=abb334(35)*abb334(11)
      abb334(21)=abb334(21)-abb334(33)
      abb334(21)=abb334(12)*abb334(21)
      abb334(33)=-abb334(24)*abb334(21)
      abb334(13)=abb334(14)*spbl5k2*abb334(13)
      abb334(24)=abb334(24)*abb334(11)
      abb334(35)=abb334(24)*abb334(13)
      abb334(27)=abb334(27)+abb334(35)+abb334(33)
      abb334(27)=spak1k2*abb334(27)
      abb334(24)=-abb334(24)*abb334(34)
      abb334(33)=abb334(42)*abb334(29)
      abb334(24)=abb334(27)+abb334(24)+abb334(33)
      abb334(27)=abb334(26)*spbl5k2
      abb334(33)=abb334(27)*abb334(54)
      abb334(35)=spak1k7*abb334(56)
      abb334(33)=abb334(33)+abb334(35)
      abb334(35)=abb334(22)*spbl6k2
      abb334(25)=abb334(35)-abb334(25)
      abb334(25)=abb334(12)*abb334(25)
      abb334(35)=spal6k7*abb334(25)
      abb334(42)=spbl6k2*spal6k7
      abb334(43)=abb334(42)*abb334(15)
      abb334(35)=abb334(43)+abb334(35)
      abb334(35)=abb334(35)*abb334(23)
      abb334(42)=-abb334(42)*abb334(29)
      abb334(33)=abb334(35)+2.0_ki*abb334(33)+abb334(42)
      abb334(33)=spbk7l6*abb334(33)
      abb334(17)=abb334(17)+3.0_ki*abb334(24)+abb334(33)
      abb334(17)=mB*abb334(17)
      abb334(24)=-abb334(26)*abb334(58)
      abb334(24)=abb334(24)+abb334(31)
      abb334(24)=abb334(24)*abb334(59)
      abb334(17)=abb334(24)+abb334(17)
      abb334(17)=abb334(7)*abb334(17)
      abb334(24)=abb334(51)*abb334(14)
      abb334(26)=abb334(36)*abb334(24)
      abb334(31)=-spak1l6*abb334(21)
      abb334(26)=abb334(26)-abb334(31)
      abb334(31)=-abb334(26)*abb334(59)
      abb334(33)=abb334(49)*abb334(12)*abb334(62)
      abb334(35)=abb334(33)*abb334(60)
      abb334(36)=abb334(51)*abb334(23)
      abb334(42)=abb334(39)*abb334(36)
      abb334(35)=abb334(42)+abb334(35)
      abb334(35)=mB*abb334(35)
      abb334(36)=-abb334(64)*abb334(36)
      abb334(35)=5.0_ki*abb334(36)+abb334(35)
      abb334(35)=mB*abb334(35)
      abb334(31)=abb334(31)+abb334(35)
      abb334(31)=mB*abb334(31)
      abb334(17)=abb334(31)+abb334(17)
      abb334(17)=abb334(17)*abb334(47)
      abb334(31)=spbl6k2*abb334(15)
      abb334(25)=abb334(31)+abb334(25)
      abb334(25)=abb334(25)*abb334(23)
      abb334(31)=-spbl6k2*abb334(29)
      abb334(25)=abb334(31)+abb334(25)
      abb334(31)=abb334(46)*abb334(7)
      abb334(35)=16.0_ki*abb334(31)
      abb334(25)=mB*abb334(25)*abb334(35)
      abb334(36)=abb334(10)*abb334(11)**2
      abb334(42)=abb334(36)*abb334(34)
      abb334(13)=abb334(13)+abb334(56)
      abb334(36)=-spak1k2*abb334(36)*abb334(13)
      abb334(36)=abb334(42)+abb334(36)
      abb334(36)=mB*abb334(36)
      abb334(42)=-abb334(32)*abb334(51)
      abb334(43)=abb334(11)*abb334(8)
      abb334(44)=abb334(43)*abb334(15)
      abb334(42)=abb334(44)+abb334(42)
      abb334(42)=abb334(42)*abb334(23)
      abb334(43)=-abb334(43)*abb334(29)
      abb334(36)=abb334(36)+abb334(43)+abb334(42)
      abb334(35)=abb334(36)*abb334(37)*abb334(35)
      abb334(36)=abb334(22)*spbk7k2
      abb334(36)=abb334(36)-abb334(39)
      abb334(36)=abb334(36)*abb334(12)
      abb334(42)=spbk7k2*abb334(15)
      abb334(36)=abb334(42)+abb334(36)
      abb334(36)=abb334(36)*abb334(23)
      abb334(42)=-spbk7k2*abb334(29)
      abb334(36)=abb334(42)+abb334(36)
      abb334(42)=8.0_ki*abb334(31)
      abb334(43)=abb334(42)*mB
      abb334(36)=abb334(36)*abb334(43)
      abb334(14)=abb334(14)*abb334(42)*abb334(30)*abb334(40)
      abb334(24)=abb334(27)*abb334(24)
      abb334(21)=spak1k7*abb334(21)
      abb334(21)=abb334(24)+abb334(21)
      abb334(21)=abb334(21)*abb334(43)
      abb334(24)=spal6k7*spbk7k2
      abb334(22)=abb334(24)*abb334(22)
      abb334(27)=abb334(39)*spal6k7
      abb334(22)=abb334(27)-abb334(22)
      abb334(22)=-abb334(22)*abb334(12)
      abb334(27)=abb334(24)*abb334(15)
      abb334(22)=abb334(27)+abb334(22)
      abb334(22)=abb334(22)*abb334(23)
      abb334(24)=-abb334(24)*abb334(29)
      abb334(22)=abb334(22)+abb334(24)+abb334(41)
      abb334(22)=spbk7l6*abb334(22)
      abb334(24)=abb334(49)*spbk7k2
      abb334(27)=-abb334(24)*abb334(34)
      abb334(13)=spak1k2*abb334(24)*abb334(13)
      abb334(13)=abb334(63)+abb334(27)+abb334(13)
      abb334(13)=mB*abb334(13)
      abb334(24)=abb334(32)*spbk7k2
      abb334(24)=abb334(24)-abb334(64)
      abb334(12)=-abb334(24)*abb334(12)
      abb334(24)=abb334(8)*spbk7k2
      abb334(15)=-abb334(24)*abb334(15)
      abb334(12)=abb334(15)+abb334(12)
      abb334(12)=abb334(12)*abb334(23)
      abb334(15)=abb334(24)*abb334(29)
      abb334(12)=abb334(13)+abb334(15)+abb334(12)
      abb334(12)=mB*abb334(12)
      abb334(12)=abb334(22)+abb334(12)
      abb334(12)=mB*abb334(12)
      abb334(13)=-spbk7l6*abb334(18)
      abb334(12)=abb334(13)+abb334(12)
      abb334(12)=4.0_ki*abb334(12)*abb334(31)
      abb334(13)=abb334(37)*abb334(23)
      abb334(15)=abb334(33)*abb334(13)
      abb334(15)=abb334(15)+abb334(26)
      abb334(15)=abb334(15)*abb334(43)
      abb334(13)=abb334(42)*abb334(13)*abb334(52)*abb334(51)
      abb334(18)=abb334(38)*abb334(42)
      R2d334=abb334(48)
      rat2 = rat2 + R2d334
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='334' value='", &
          & R2d334, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd334h3
