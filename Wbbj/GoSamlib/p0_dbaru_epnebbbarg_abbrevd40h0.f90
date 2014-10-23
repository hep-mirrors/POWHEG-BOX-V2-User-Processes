module     p0_dbaru_epnebbbarg_abbrevd40h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(73), public :: abb40
   complex(ki), public :: R2d40
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
      abb40(1)=1.0_ki/(-es71+es712-es12)
      abb40(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb40(3)=1.0_ki/(es34+es567-es12-es234)
      abb40(4)=NC**(-1)
      abb40(5)=sqrt2**(-1)
      abb40(6)=es56**(-1)
      abb40(7)=spbl5k2**(-1)
      abb40(8)=spak2k7**(-1)
      abb40(9)=spbl6k2**(-1)
      abb40(10)=spak2l5**(-1)
      abb40(11)=spak2l6**(-1)
      abb40(12)=es71-es712
      abb40(13)=-spak4l6*abb40(12)
      abb40(14)=es12*spak4l6
      abb40(14)=abb40(14)-abb40(13)
      abb40(15)=abb40(14)*NC
      abb40(16)=es71+es12-es712
      abb40(16)=abb40(4)*abb40(16)
      abb40(17)=abb40(16)*spak4l6
      abb40(15)=abb40(15)-abb40(17)
      abb40(15)=abb40(15)*c1
      abb40(17)=abb40(12)+es12
      abb40(18)=abb40(17)*c4
      abb40(19)=abb40(4)**2
      abb40(20)=abb40(19)-1.0_ki
      abb40(20)=abb40(18)*abb40(20)
      abb40(21)=spak4l6*abb40(20)
      abb40(15)=abb40(15)+abb40(21)
      abb40(15)=abb40(15)*spbk4k3
      abb40(21)=-spak1l6*abb40(12)
      abb40(22)=es12*spak1l6
      abb40(22)=abb40(22)-abb40(21)
      abb40(23)=abb40(22)*NC
      abb40(24)=abb40(16)*spak1l6
      abb40(23)=abb40(23)-abb40(24)
      abb40(23)=abb40(23)*c1
      abb40(24)=spak1l6*abb40(20)
      abb40(23)=abb40(23)+abb40(24)
      abb40(23)=abb40(23)*spbk3k1
      abb40(15)=abb40(15)+abb40(23)
      abb40(15)=abb40(15)*abb40(7)
      abb40(23)=-spak4l5*abb40(12)
      abb40(24)=es12*spak4l5
      abb40(24)=abb40(24)-abb40(23)
      abb40(25)=abb40(24)*NC
      abb40(26)=abb40(16)*spak4l5
      abb40(25)=abb40(25)-abb40(26)
      abb40(25)=abb40(25)*c1
      abb40(26)=spak4l5*abb40(20)
      abb40(25)=abb40(25)+abb40(26)
      abb40(25)=abb40(25)*spbk4k3
      abb40(12)=-spak1l5*abb40(12)
      abb40(26)=es12*spak1l5
      abb40(26)=abb40(26)-abb40(12)
      abb40(27)=abb40(26)*NC
      abb40(28)=abb40(16)*spak1l5
      abb40(27)=abb40(27)-abb40(28)
      abb40(27)=abb40(27)*c1
      abb40(20)=spak1l5*abb40(20)
      abb40(20)=abb40(27)+abb40(20)
      abb40(20)=abb40(20)*spbk3k1
      abb40(20)=abb40(25)+abb40(20)
      abb40(20)=abb40(20)*abb40(9)
      abb40(15)=abb40(15)+abb40(20)
      abb40(20)=abb40(3)*abb40(1)*abb40(2)*abb40(5)*abb40(6)*abb40(8)*CVDU
      abb40(25)=mB*abb40(20)
      abb40(27)=gW*TR
      abb40(27)=abb40(27)**2
      abb40(28)=abb40(25)*abb40(27)
      abb40(29)=spak1k4*i_
      abb40(30)=abb40(29)*spbk7k2
      abb40(31)=abb40(28)*abb40(30)
      abb40(32)=4.0_ki*abb40(31)
      abb40(33)=-abb40(15)*abb40(32)
      abb40(34)=spak2l5*spbl5k2
      abb40(35)=spal5k7*spbk7l5
      abb40(36)=spal6k7*spbk7l6
      abb40(37)=2.0_ki*abb40(36)+abb40(34)+abb40(35)
      abb40(38)=abb40(37)*spak1l5
      abb40(39)=spak1l6*spbk7l6
      abb40(40)=abb40(39)*spal5k7
      abb40(38)=abb40(40)-abb40(38)
      abb40(40)=c1*NC
      abb40(40)=abb40(40)-c4
      abb40(41)=abb40(40)*spbk3k1
      abb40(42)=abb40(41)*abb40(17)
      abb40(38)=abb40(38)*abb40(42)
      abb40(37)=abb40(37)*spak4l5
      abb40(43)=spak4l6*spbk7l6
      abb40(44)=abb40(43)*spal5k7
      abb40(37)=abb40(44)-abb40(37)
      abb40(44)=abb40(40)*spbk4k3
      abb40(45)=abb40(44)*abb40(17)
      abb40(37)=abb40(37)*abb40(45)
      abb40(37)=abb40(38)+abb40(37)
      abb40(37)=abb40(9)*abb40(37)
      abb40(38)=spak2l6*spbl6k2
      abb40(35)=2.0_ki*abb40(35)+abb40(38)+abb40(36)
      abb40(36)=abb40(35)*spak1l6
      abb40(46)=spak1l5*spbk7l5
      abb40(47)=abb40(46)*spal6k7
      abb40(36)=abb40(47)-abb40(36)
      abb40(36)=abb40(36)*abb40(42)
      abb40(35)=abb40(35)*spak4l6
      abb40(47)=spak4l5*spbk7l5
      abb40(48)=abb40(47)*spal6k7
      abb40(35)=abb40(48)-abb40(35)
      abb40(35)=abb40(35)*abb40(45)
      abb40(35)=abb40(36)+abb40(35)
      abb40(35)=abb40(7)*abb40(35)
      abb40(36)=spak1l5*spak2l6
      abb40(48)=spak1l6*spak2l5
      abb40(36)=abb40(36)+abb40(48)
      abb40(48)=-abb40(36)*abb40(42)
      abb40(49)=spak4l5*spak2l6
      abb40(50)=spak4l6*spak2l5
      abb40(49)=abb40(49)+abb40(50)
      abb40(50)=-abb40(49)*abb40(45)
      abb40(35)=abb40(35)+abb40(37)+abb40(48)+abb40(50)
      abb40(37)=TR**2
      abb40(48)=abb40(30)*abb40(37)
      abb40(35)=abb40(35)*abb40(48)
      abb40(50)=spak1l5*abb40(10)
      abb40(51)=spak1l6*abb40(11)
      abb40(50)=abb40(50)+abb40(51)
      abb40(51)=abb40(50)*es12
      abb40(52)=abb40(50)*es712
      abb40(51)=abb40(51)-abb40(52)
      abb40(53)=abb40(50)*es71
      abb40(54)=abb40(53)+2.0_ki*abb40(51)
      abb40(54)=abb40(54)*es71
      abb40(55)=2.0_ki*es12
      abb40(56)=abb40(55)*abb40(50)
      abb40(52)=abb40(56)-abb40(52)
      abb40(52)=abb40(52)*es712
      abb40(56)=es12**2
      abb40(50)=abb40(56)*abb40(50)
      abb40(50)=-abb40(54)+abb40(52)-abb40(50)
      abb40(50)=abb40(50)*abb40(41)
      abb40(52)=spak4l5*abb40(10)
      abb40(54)=spak4l6*abb40(11)
      abb40(52)=abb40(52)+abb40(54)
      abb40(54)=abb40(52)*es12
      abb40(57)=abb40(52)*es712
      abb40(54)=abb40(54)-abb40(57)
      abb40(58)=abb40(52)*es71
      abb40(59)=abb40(58)+2.0_ki*abb40(54)
      abb40(59)=abb40(59)*es71
      abb40(60)=abb40(55)*abb40(52)
      abb40(57)=abb40(60)-abb40(57)
      abb40(57)=abb40(57)*es712
      abb40(52)=abb40(56)*abb40(52)
      abb40(52)=-abb40(59)+abb40(57)-abb40(52)
      abb40(52)=abb40(52)*abb40(44)
      abb40(50)=abb40(50)+abb40(52)
      abb40(50)=abb40(9)*abb40(50)
      abb40(52)=es712*abb40(10)
      abb40(57)=abb40(52)*spak1l6
      abb40(59)=es12*abb40(10)
      abb40(60)=abb40(59)*spak1l6
      abb40(61)=-abb40(57)+2.0_ki*abb40(60)
      abb40(61)=abb40(61)*es712
      abb40(57)=abb40(57)-abb40(60)
      abb40(60)=es71*abb40(10)
      abb40(62)=abb40(60)*spak1l6
      abb40(63)=-abb40(62)+2.0_ki*abb40(57)
      abb40(63)=abb40(63)*es71
      abb40(64)=abb40(56)*abb40(10)
      abb40(65)=abb40(64)*spak1l6
      abb40(61)=-abb40(65)+abb40(61)+abb40(63)
      abb40(61)=abb40(61)*abb40(41)
      abb40(63)=abb40(52)*spak4l6
      abb40(65)=abb40(59)*spak4l6
      abb40(66)=-abb40(63)+2.0_ki*abb40(65)
      abb40(66)=abb40(66)*es712
      abb40(63)=abb40(63)-abb40(65)
      abb40(65)=abb40(60)*spak4l6
      abb40(67)=-abb40(65)+2.0_ki*abb40(63)
      abb40(67)=abb40(67)*es71
      abb40(64)=abb40(64)*spak4l6
      abb40(64)=-abb40(64)+abb40(66)+abb40(67)
      abb40(64)=abb40(64)*abb40(44)
      abb40(61)=abb40(61)+abb40(64)
      abb40(61)=abb40(7)*abb40(61)
      abb40(50)=abb40(50)+abb40(61)
      abb40(50)=abb40(7)*abb40(50)
      abb40(61)=es712*abb40(11)
      abb40(64)=abb40(61)*spak1l5
      abb40(66)=es12*abb40(11)
      abb40(67)=abb40(66)*spak1l5
      abb40(68)=-abb40(64)+2.0_ki*abb40(67)
      abb40(68)=abb40(68)*es712
      abb40(64)=abb40(64)-abb40(67)
      abb40(67)=es71*abb40(11)
      abb40(69)=abb40(67)*spak1l5
      abb40(70)=-abb40(69)+2.0_ki*abb40(64)
      abb40(70)=abb40(70)*es71
      abb40(56)=abb40(56)*abb40(11)
      abb40(71)=abb40(56)*spak1l5
      abb40(68)=-abb40(71)+abb40(68)+abb40(70)
      abb40(68)=abb40(68)*abb40(41)
      abb40(70)=abb40(61)*spak4l5
      abb40(71)=abb40(66)*spak4l5
      abb40(72)=-abb40(70)+2.0_ki*abb40(71)
      abb40(72)=abb40(72)*es712
      abb40(70)=abb40(70)-abb40(71)
      abb40(71)=abb40(67)*spak4l5
      abb40(73)=-abb40(71)+2.0_ki*abb40(70)
      abb40(73)=abb40(73)*es71
      abb40(56)=abb40(56)*spak4l5
      abb40(56)=abb40(72)+abb40(73)-abb40(56)
      abb40(56)=abb40(56)*abb40(44)
      abb40(56)=abb40(68)+abb40(56)
      abb40(68)=abb40(9)**2
      abb40(56)=abb40(56)*abb40(68)
      abb40(50)=abb40(56)+abb40(50)
      abb40(56)=-abb40(61)+abb40(67)+abb40(66)
      abb40(61)=-abb40(44)*spak2k4*abb40(56)
      abb40(66)=-abb40(41)*spak1k2*abb40(56)
      abb40(61)=abb40(61)-abb40(66)
      abb40(66)=abb40(68)*spal5k7*abb40(61)
      abb40(52)=-abb40(52)+abb40(60)+abb40(59)
      abb40(59)=abb40(44)*spak2k4
      abb40(60)=abb40(52)*abb40(59)
      abb40(67)=-abb40(41)*spak1k2*abb40(52)
      abb40(60)=abb40(60)+abb40(67)
      abb40(67)=-abb40(7)*spal6k7*abb40(60)
      abb40(42)=spak1k2*abb40(42)
      abb40(45)=-spak2k4*abb40(45)
      abb40(42)=abb40(42)+abb40(45)
      abb40(45)=abb40(11)*spal6k7
      abb40(72)=abb40(10)*spal5k7
      abb40(45)=abb40(45)+abb40(72)
      abb40(42)=abb40(9)*abb40(45)*abb40(42)
      abb40(42)=abb40(42)+abb40(67)
      abb40(42)=abb40(7)*abb40(42)
      abb40(42)=abb40(66)+abb40(42)
      abb40(42)=spbk7k2*abb40(42)
      abb40(42)=2.0_ki*abb40(50)+abb40(42)
      abb40(45)=abb40(48)*mB**2
      abb40(42)=abb40(42)*abb40(45)
      abb40(35)=abb40(35)+abb40(42)
      abb40(25)=abb40(25)*gW**2
      abb40(42)=4.0_ki*abb40(25)
      abb40(35)=abb40(35)*abb40(42)
      abb40(36)=abb40(36)*abb40(41)
      abb40(49)=abb40(49)*abb40(44)
      abb40(36)=abb40(36)+abb40(49)
      abb40(34)=abb40(55)+3.0_ki*abb40(34)
      abb40(49)=abb40(34)*spak1l5
      abb40(12)=abb40(49)-2.0_ki*abb40(12)
      abb40(12)=abb40(12)*abb40(41)
      abb40(34)=abb40(34)*spak4l5
      abb40(23)=abb40(34)-2.0_ki*abb40(23)
      abb40(23)=abb40(23)*abb40(44)
      abb40(12)=abb40(12)+abb40(23)
      abb40(12)=abb40(9)*abb40(12)
      abb40(23)=abb40(55)+3.0_ki*abb40(38)
      abb40(34)=abb40(23)*spak1l6
      abb40(21)=abb40(34)-2.0_ki*abb40(21)
      abb40(21)=abb40(21)*abb40(41)
      abb40(23)=abb40(23)*spak4l6
      abb40(13)=abb40(23)-2.0_ki*abb40(13)
      abb40(13)=abb40(13)*abb40(44)
      abb40(13)=abb40(21)+abb40(13)
      abb40(13)=abb40(7)*abb40(13)
      abb40(21)=-spbk4k3*spak4k7*abb40(40)
      abb40(23)=-spbk3k1*spak1k7*abb40(40)
      abb40(21)=abb40(21)+abb40(23)
      abb40(23)=abb40(9)*spak2l5*abb40(21)
      abb40(21)=abb40(7)*spak2l6*abb40(21)
      abb40(21)=abb40(23)+abb40(21)
      abb40(21)=spbk7k2*abb40(21)
      abb40(12)=abb40(21)+abb40(13)+3.0_ki*abb40(36)+abb40(12)
      abb40(13)=8.0_ki*abb40(31)
      abb40(12)=abb40(12)*abb40(13)
      abb40(14)=-abb40(14)*abb40(44)
      abb40(21)=-abb40(22)*abb40(41)
      abb40(14)=abb40(14)+abb40(21)
      abb40(14)=abb40(14)*abb40(7)
      abb40(21)=-abb40(26)*abb40(41)
      abb40(22)=-abb40(24)*abb40(44)
      abb40(21)=abb40(21)+abb40(22)
      abb40(21)=abb40(21)*abb40(9)
      abb40(14)=abb40(14)+abb40(21)
      abb40(21)=16.0_ki*abb40(31)
      abb40(22)=abb40(14)*abb40(21)
      abb40(14)=abb40(14)*abb40(48)
      abb40(23)=abb40(51)+abb40(53)
      abb40(23)=-abb40(23)*abb40(41)
      abb40(24)=abb40(54)+abb40(58)
      abb40(24)=-abb40(24)*abb40(44)
      abb40(23)=abb40(23)+abb40(24)
      abb40(23)=abb40(9)*abb40(23)
      abb40(24)=abb40(57)-abb40(62)
      abb40(24)=abb40(24)*abb40(41)
      abb40(26)=abb40(63)-abb40(65)
      abb40(26)=abb40(26)*abb40(44)
      abb40(24)=abb40(24)+abb40(26)
      abb40(24)=abb40(7)*abb40(24)
      abb40(23)=abb40(23)+abb40(24)
      abb40(23)=abb40(7)*abb40(23)
      abb40(24)=abb40(64)-abb40(69)
      abb40(24)=abb40(24)*abb40(41)
      abb40(26)=abb40(70)-abb40(71)
      abb40(26)=abb40(26)*abb40(44)
      abb40(24)=abb40(24)+abb40(26)
      abb40(24)=abb40(24)*abb40(68)
      abb40(23)=abb40(24)+abb40(23)
      abb40(23)=abb40(23)*abb40(45)
      abb40(14)=abb40(14)+2.0_ki*abb40(23)
      abb40(14)=8.0_ki*abb40(14)*abb40(25)
      abb40(15)=abb40(15)*abb40(13)
      abb40(23)=abb40(60)*abb40(7)
      abb40(24)=abb40(9)*abb40(61)
      abb40(24)=abb40(24)-abb40(23)
      abb40(24)=abb40(24)*abb40(45)
      abb40(25)=abb40(46)+abb40(39)
      abb40(25)=-abb40(25)*abb40(41)
      abb40(26)=abb40(47)+abb40(43)
      abb40(26)=-abb40(26)*abb40(44)
      abb40(25)=-abb40(25)-abb40(26)
      abb40(25)=-abb40(17)*abb40(25)
      abb40(26)=-spak1k2*abb40(41)
      abb40(26)=abb40(26)+abb40(59)
      abb40(26)=-spbk7k2*abb40(17)*abb40(26)
      abb40(25)=abb40(26)+abb40(25)
      abb40(25)=abb40(25)*abb40(29)*abb40(37)
      abb40(24)=-abb40(25)+abb40(24)
      abb40(24)=abb40(42)*abb40(7)*abb40(24)
      abb40(26)=NC+abb40(4)
      abb40(26)=abb40(26)*c1
      abb40(34)=abb40(19)+1.0_ki
      abb40(34)=abb40(34)*c4
      abb40(26)=abb40(26)-abb40(34)
      abb40(36)=spbk4k3*spak2k4*abb40(26)
      abb40(37)=spbk3k1*spak1k2*abb40(26)
      abb40(36)=abb40(36)-abb40(37)
      abb40(31)=32.0_ki*abb40(31)
      abb40(31)=abb40(36)*abb40(31)
      abb40(36)=-abb40(7)*abb40(31)
      abb40(37)=abb40(61)*abb40(68)
      abb40(23)=-abb40(9)*abb40(23)
      abb40(23)=abb40(37)+abb40(23)
      abb40(23)=abb40(23)*abb40(45)
      abb40(25)=-abb40(9)*abb40(25)
      abb40(23)=abb40(25)+abb40(23)
      abb40(23)=abb40(23)*abb40(42)
      abb40(25)=-abb40(9)*abb40(31)
      abb40(31)=abb40(17)*NC
      abb40(31)=abb40(31)+abb40(16)
      abb40(31)=abb40(31)*c1
      abb40(34)=abb40(17)*abb40(34)
      abb40(31)=abb40(31)-abb40(34)
      abb40(28)=abb40(28)*abb40(29)
      abb40(28)=8.0_ki*abb40(28)
      abb40(28)=abb40(31)*abb40(28)
      abb40(29)=abb40(7)*spbk4k3
      abb40(31)=abb40(29)*abb40(28)
      abb40(34)=abb40(9)*spbk4k3
      abb40(37)=abb40(34)*abb40(28)
      abb40(38)=abb40(19)*c4
      abb40(17)=abb40(17)*abb40(38)
      abb40(16)=abb40(16)*c1
      abb40(17)=abb40(17)-abb40(16)
      abb40(13)=abb40(13)*spal5l6*abb40(17)
      abb40(17)=abb40(13)*abb40(34)
      abb40(39)=-abb40(13)*abb40(29)
      abb40(42)=c1*abb40(4)
      abb40(38)=abb40(42)-abb40(38)
      abb40(42)=-abb40(68)*abb40(56)*spak2l5*abb40(38)
      abb40(43)=-spbk4k3*abb40(42)
      abb40(38)=abb40(52)*spak2l6*abb40(38)
      abb40(29)=abb40(38)*abb40(29)
      abb40(18)=abb40(19)*abb40(18)
      abb40(16)=abb40(18)-abb40(16)
      abb40(16)=2.0_ki*abb40(16)
      abb40(18)=-abb40(34)*abb40(16)
      abb40(18)=abb40(18)+abb40(29)
      abb40(18)=abb40(7)*abb40(18)
      abb40(18)=abb40(43)+abb40(18)
      abb40(19)=abb40(27)*mB**3*abb40(30)*abb40(20)
      abb40(19)=8.0_ki*abb40(19)
      abb40(18)=abb40(18)*abb40(19)
      abb40(20)=spak1l5*spal6k7
      abb40(27)=spak1l6*spal5k7
      abb40(20)=abb40(20)+abb40(27)
      abb40(20)=abb40(20)*abb40(41)
      abb40(27)=spak4l5*spal6k7
      abb40(29)=spak4l6*spal5k7
      abb40(27)=abb40(27)+abb40(29)
      abb40(27)=abb40(27)*abb40(44)
      abb40(29)=-spbk3k1*spak1l5
      abb40(30)=-spbk4k3*spak4l5
      abb40(29)=abb40(29)+abb40(30)
      abb40(30)=-spal5k7*abb40(40)
      abb40(29)=abb40(9)*abb40(29)*abb40(30)*spbl5k2
      abb40(34)=-spbk3k1*spak1l6
      abb40(41)=-spbk4k3*spak4l6
      abb40(34)=abb40(34)+abb40(41)
      abb40(40)=-spal6k7*abb40(40)
      abb40(34)=abb40(7)*abb40(34)*abb40(40)*spbl6k2
      abb40(20)=abb40(34)+abb40(29)+abb40(20)+abb40(27)
      abb40(27)=spbk3k1*spak1k7
      abb40(29)=spbk4k3*spak4k7
      abb40(27)=abb40(27)+abb40(29)
      abb40(29)=abb40(9)*abb40(30)*abb40(27)
      abb40(27)=abb40(7)*abb40(40)*abb40(27)
      abb40(27)=abb40(29)+abb40(27)
      abb40(27)=spbk7k2*abb40(27)
      abb40(20)=3.0_ki*abb40(20)+abb40(27)
      abb40(20)=abb40(20)*abb40(32)
      abb40(27)=spbk4k3*spak4k7*abb40(26)
      abb40(26)=spbk3k1*spak1k7*abb40(26)
      abb40(26)=abb40(27)+abb40(26)
      abb40(21)=abb40(26)*abb40(21)
      abb40(26)=-abb40(7)*abb40(21)
      abb40(21)=-abb40(9)*abb40(21)
      abb40(27)=abb40(7)*spbk3k1
      abb40(29)=abb40(27)*abb40(28)
      abb40(30)=abb40(9)*spbk3k1
      abb40(28)=abb40(30)*abb40(28)
      abb40(32)=abb40(13)*abb40(30)
      abb40(13)=-abb40(13)*abb40(27)
      abb40(34)=-spbk3k1*abb40(42)
      abb40(27)=abb40(38)*abb40(27)
      abb40(16)=-abb40(30)*abb40(16)
      abb40(16)=abb40(16)+abb40(27)
      abb40(16)=abb40(7)*abb40(16)
      abb40(16)=abb40(34)+abb40(16)
      abb40(16)=abb40(16)*abb40(19)
      R2d40=abb40(33)
      rat2 = rat2 + R2d40
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='40' value='", &
          & R2d40, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd40h0
