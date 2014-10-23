module     p0_dbaru_epnebbbarg_abbrevd93h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(75), public :: abb93
   complex(ki), public :: R2d93
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
      abb93(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb93(2)=1.0_ki/(-es71+es56-es567+es234)
      abb93(3)=NC**(-1)
      abb93(4)=sqrt2**(-1)
      abb93(5)=es234**(-1)
      abb93(6)=spbl5k2**(-1)
      abb93(7)=spbk7k2**(-1)
      abb93(8)=spak2l5**(-1)
      abb93(9)=spak2l6**(-1)
      abb93(10)=spbl6k2**(-1)
      abb93(11)=sqrt(mB**2)
      abb93(12)=c4*abb93(3)**2
      abb93(13)=TR*gW
      abb93(13)=abb93(13)**2*abb93(7)*i_*CVDU*abb93(5)*abb93(4)*abb93(2)*abb93(&
      &1)
      abb93(14)=abb93(12)*abb93(13)
      abb93(15)=mB*abb93(14)
      abb93(16)=2.0_ki*abb93(3)
      abb93(17)=abb93(13)*c1
      abb93(18)=abb93(17)*mB
      abb93(19)=abb93(16)*abb93(18)
      abb93(20)=abb93(18)*NC
      abb93(21)=-abb93(15)+abb93(19)-abb93(20)
      abb93(22)=spbk3k2**2
      abb93(23)=abb93(22)*spak3k4
      abb93(24)=abb93(23)*abb93(6)
      abb93(21)=abb93(24)*abb93(21)
      abb93(25)=spak1l6**2
      abb93(26)=abb93(21)*abb93(25)
      abb93(27)=spbl6k2*abb93(26)
      abb93(16)=abb93(16)-NC
      abb93(28)=abb93(17)*spak1l6
      abb93(29)=-abb93(16)*abb93(28)*abb93(23)
      abb93(12)=abb93(12)*abb93(13)*spak3k4
      abb93(13)=abb93(12)*abb93(22)
      abb93(30)=abb93(13)*spak1l6
      abb93(29)=abb93(29)+abb93(30)
      abb93(30)=abb93(29)*abb93(11)
      abb93(31)=-spak1l5*abb93(30)
      abb93(27)=abb93(27)+abb93(31)
      abb93(27)=spal6k7*abb93(27)
      abb93(19)=-abb93(19)+abb93(15)+abb93(20)
      abb93(20)=abb93(19)*abb93(23)
      abb93(31)=-spak1l6*abb93(20)
      abb93(32)=spak1l5*spbk2k1
      abb93(33)=abb93(32)*abb93(10)
      abb93(34)=abb93(31)*abb93(33)
      abb93(26)=spbk2k1*abb93(26)
      abb93(26)=abb93(26)+abb93(34)
      abb93(26)=spak1k7*abb93(26)
      abb93(35)=-spal5k7*abb93(25)*abb93(20)
      abb93(26)=abb93(26)+abb93(35)+abb93(27)
      abb93(26)=spbl6k1*abb93(26)
      abb93(27)=-abb93(28)*abb93(16)
      abb93(28)=mB**3
      abb93(35)=abb93(24)*abb93(28)
      abb93(36)=abb93(35)*abb93(27)
      abb93(37)=abb93(13)*abb93(28)
      abb93(38)=abb93(6)*spak1l6
      abb93(39)=abb93(37)*abb93(38)
      abb93(36)=abb93(39)+abb93(36)
      abb93(39)=abb93(17)*abb93(3)
      abb93(17)=abb93(17)*NC
      abb93(17)=-abb93(17)+2.0_ki*abb93(39)
      abb93(39)=abb93(28)*abb93(23)
      abb93(40)=abb93(39)*abb93(17)
      abb93(40)=-abb93(37)+abb93(40)
      abb93(41)=abb93(40)*abb93(10)*spak1l5
      abb93(41)=abb93(41)-abb93(36)
      abb93(41)=spal6k7*abb93(41)
      abb93(42)=-spbk2k1*abb93(36)
      abb93(43)=abb93(40)*abb93(33)
      abb93(42)=abb93(42)+abb93(43)
      abb93(43)=spak1k7*abb93(10)
      abb93(42)=abb93(42)*abb93(43)
      abb93(44)=-abb93(39)*abb93(27)
      abb93(45)=abb93(37)*spak1l6
      abb93(44)=abb93(44)-abb93(45)
      abb93(45)=spal5k7*abb93(10)
      abb93(46)=abb93(44)*abb93(45)
      abb93(41)=abb93(42)+abb93(46)+abb93(41)
      abb93(41)=es12*abb93(9)*abb93(41)
      abb93(42)=abb93(10)**2*abb93(40)*abb93(9)
      abb93(46)=abb93(42)*spbl5k2
      abb93(47)=es12*abb93(46)
      abb93(48)=-spbl5k1*abb93(30)
      abb93(47)=abb93(48)+abb93(47)
      abb93(47)=spak1l5*abb93(47)
      abb93(34)=-spbl6l5*abb93(34)
      abb93(34)=abb93(34)+abb93(47)
      abb93(34)=spal5k7*abb93(34)
      abb93(47)=mB**2
      abb93(48)=abb93(47)*abb93(29)
      abb93(49)=-abb93(11)*abb93(48)
      abb93(49)=-abb93(44)+abb93(49)
      abb93(50)=spak2k7*abb93(9)
      abb93(49)=abb93(50)*abb93(33)*abb93(49)
      abb93(24)=abb93(47)*abb93(24)
      abb93(51)=-abb93(24)*abb93(27)
      abb93(13)=abb93(47)*abb93(13)
      abb93(52)=abb93(13)*abb93(38)
      abb93(51)=abb93(51)-abb93(52)
      abb93(52)=abb93(11)*abb93(51)
      abb93(52)=abb93(36)+abb93(52)
      abb93(53)=abb93(8)*spak2k7
      abb93(52)=abb93(53)*abb93(32)*abb93(52)
      abb93(26)=abb93(41)+abb93(26)+abb93(49)+abb93(52)+abb93(34)
      abb93(26)=8.0_ki*abb93(26)
      abb93(34)=2.0_ki*abb93(11)
      abb93(29)=-abb93(29)*abb93(34)
      abb93(29)=abb93(29)-abb93(31)
      abb93(29)=spal5k7*abb93(29)
      abb93(41)=-spak1l6*abb93(21)
      abb93(49)=spal6k7*spbl6k2
      abb93(52)=abb93(49)*abb93(41)
      abb93(29)=abb93(29)-abb93(52)
      abb93(29)=16.0_ki*abb93(29)
      abb93(54)=abb93(30)+abb93(31)
      abb93(55)=abb93(54)*spal5k7
      abb93(52)=-abb93(55)-abb93(52)
      abb93(52)=16.0_ki*abb93(52)
      abb93(16)=-abb93(16)*abb93(18)*spbk3k2
      abb93(18)=-spak1l6*abb93(16)
      abb93(56)=spak1l6*spbk3k2
      abb93(57)=abb93(15)*abb93(56)
      abb93(18)=abb93(18)-abb93(57)
      abb93(58)=-spbk3k2*abb93(27)
      abb93(14)=spak1l6*abb93(14)
      abb93(59)=abb93(14)*spbk3k2
      abb93(59)=abb93(58)-abb93(59)
      abb93(60)=abb93(59)*abb93(11)
      abb93(60)=abb93(18)-abb93(60)
      abb93(61)=2.0_ki*spal5l6
      abb93(60)=abb93(60)*abb93(61)
      abb93(62)=spbl6k2*spak4k7
      abb93(63)=abb93(62)*abb93(60)
      abb93(59)=abb93(59)*abb93(34)
      abb93(59)=abb93(18)-abb93(59)
      abb93(64)=abb93(32)*spak4k7
      abb93(65)=abb93(64)*abb93(59)
      abb93(15)=abb93(15)*spbk3k2
      abb93(15)=abb93(16)+abb93(15)
      abb93(25)=abb93(25)*abb93(6)
      abb93(66)=-abb93(25)*abb93(15)
      abb93(67)=abb93(62)*spbk2k1
      abb93(68)=abb93(67)*abb93(66)
      abb93(63)=-abb93(63)+abb93(65)-abb93(68)
      abb93(65)=16.0_ki*abb93(63)
      abb93(68)=abb93(43)*spbk2k1
      abb93(69)=-abb93(68)-2.0_ki*spal6k7
      abb93(69)=abb93(36)*abb93(69)
      abb93(70)=abb93(48)*abb93(34)
      abb93(71)=-abb93(45)*abb93(70)
      abb93(69)=abb93(71)+abb93(69)
      abb93(69)=abb93(9)*abb93(69)
      abb93(71)=abb93(51)*abb93(34)
      abb93(72)=abb93(71)+abb93(36)
      abb93(72)=spal5k7*abb93(72)
      abb93(73)=abb93(6)**2
      abb93(39)=abb93(73)*abb93(39)
      abb93(74)=-abb93(39)*abb93(27)
      abb93(37)=abb93(73)*abb93(37)
      abb93(73)=abb93(37)*spak1l6
      abb93(73)=abb93(74)-abb93(73)
      abb93(49)=abb93(73)*abb93(49)
      abb93(49)=abb93(72)+abb93(49)
      abb93(49)=abb93(8)*abb93(49)
      abb93(49)=abb93(49)+abb93(69)-abb93(63)
      abb93(49)=16.0_ki*abb93(49)
      abb93(63)=-abb93(20)*spal6k7
      abb93(69)=-abb93(45)*abb93(20)
      abb93(72)=spbl5k2*abb93(69)
      abb93(72)=abb93(72)+abb93(63)
      abb93(72)=spak1l5*abb93(72)
      abb93(74)=-spbk2k1*abb93(41)
      abb93(75)=-abb93(20)*abb93(33)
      abb93(74)=abb93(74)+abb93(75)
      abb93(74)=spak1k7*abb93(74)
      abb93(55)=abb93(74)+2.0_ki*abb93(55)+abb93(72)
      abb93(55)=16.0_ki*abb93(55)
      abb93(60)=spbl6k2*abb93(60)
      abb93(59)=abb93(32)*abb93(59)
      abb93(66)=abb93(66)*spbl6k2
      abb93(72)=spbk2k1*abb93(66)
      abb93(59)=-abb93(60)+abb93(59)-abb93(72)
      abb93(60)=-spak2k4*abb93(59)
      abb93(56)=abb93(12)*abb93(56)
      abb93(58)=abb93(58)*spak3k4
      abb93(56)=abb93(56)-abb93(58)
      abb93(56)=abb93(56)*abb93(34)
      abb93(18)=abb93(18)*spak3k4
      abb93(18)=abb93(56)+abb93(18)
      abb93(56)=-spbl6k3*abb93(18)
      abb93(16)=-abb93(38)*abb93(16)
      abb93(57)=abb93(57)*abb93(6)
      abb93(16)=abb93(16)-abb93(57)
      abb93(57)=abb93(16)*spak3k4
      abb93(58)=-spbl5k3*spbl6k2*abb93(57)
      abb93(56)=abb93(58)+abb93(56)
      abb93(56)=spal5l6*abb93(56)
      abb93(18)=spak1l5*abb93(18)
      abb93(58)=-spak3k4*abb93(66)
      abb93(18)=abb93(58)+abb93(18)
      abb93(18)=spbk3k1*abb93(18)
      abb93(44)=-abb93(44)-abb93(70)
      abb93(58)=abb93(9)*abb93(10)
      abb93(44)=spak2l5*abb93(44)*abb93(58)
      abb93(66)=abb93(73)*spbl6k2
      abb93(70)=spak2l6*abb93(8)*abb93(66)
      abb93(18)=abb93(70)+abb93(44)+abb93(18)+abb93(71)+abb93(60)+abb93(56)
      abb93(18)=8.0_ki*abb93(18)
      abb93(44)=-spbl6k1*spak1k7
      abb93(56)=spbl6l5*spal5k7
      abb93(44)=abb93(56)+abb93(44)
      abb93(41)=abb93(41)*abb93(44)
      abb93(36)=abb93(36)*abb93(50)
      abb93(44)=-abb93(53)*abb93(66)
      abb93(36)=abb93(36)+abb93(44)+abb93(41)
      abb93(36)=8.0_ki*abb93(36)
      abb93(41)=abb93(21)*spak1k7
      abb93(44)=16.0_ki*abb93(41)
      abb93(50)=abb93(16)*abb93(62)
      abb93(56)=abb93(15)*spak1l5
      abb93(60)=spak4k7*abb93(56)
      abb93(50)=abb93(50)-abb93(60)
      abb93(60)=16.0_ki*abb93(50)
      abb93(35)=-abb93(35)*abb93(17)
      abb93(12)=abb93(22)*abb93(6)*abb93(12)
      abb93(22)=abb93(28)*abb93(12)
      abb93(22)=abb93(35)+abb93(22)
      abb93(28)=abb93(9)*abb93(22)*abb93(43)
      abb93(35)=-abb93(39)*abb93(17)
      abb93(35)=abb93(35)+abb93(37)
      abb93(37)=abb93(35)*abb93(8)
      abb93(39)=spak1k7*abb93(37)
      abb93(28)=abb93(39)+abb93(28)+abb93(50)
      abb93(28)=16.0_ki*abb93(28)
      abb93(39)=32.0_ki*abb93(41)
      abb93(50)=abb93(16)*spbl6k2
      abb93(50)=abb93(50)-abb93(56)
      abb93(56)=spak2k4*abb93(50)
      abb93(66)=abb93(22)*abb93(58)
      abb93(70)=-abb93(66)-abb93(37)
      abb93(70)=spak1k2*abb93(70)
      abb93(71)=-spbl6k3*abb93(57)
      abb93(72)=abb93(15)*spak3k4
      abb93(73)=spbl5k3*abb93(6)*abb93(72)
      abb93(74)=spak1l5*abb93(73)
      abb93(56)=abb93(74)+abb93(70)+abb93(56)+abb93(71)
      abb93(56)=8.0_ki*abb93(56)
      abb93(54)=spal6k7*abb93(54)
      abb93(70)=spbl5k2*abb93(45)
      abb93(70)=abb93(70)+abb93(68)
      abb93(31)=abb93(31)*abb93(70)
      abb93(31)=abb93(54)+abb93(31)
      abb93(31)=8.0_ki*abb93(31)
      abb93(48)=spak2k7*abb93(48)*abb93(58)
      abb93(51)=-abb93(51)*abb93(53)
      abb93(48)=abb93(48)+abb93(51)
      abb93(48)=abb93(11)*abb93(48)
      abb93(40)=abb93(40)*abb93(58)*spal6k7
      abb93(46)=spal5k7*abb93(46)
      abb93(40)=abb93(40)+abb93(46)
      abb93(40)=spak1k2*abb93(40)
      abb93(46)=spak1k7*abb93(42)*es12
      abb93(40)=abb93(40)+abb93(46)+abb93(48)
      abb93(40)=8.0_ki*abb93(40)
      abb93(20)=-abb93(43)*abb93(20)
      abb93(43)=16.0_ki*abb93(20)
      abb93(30)=-8.0_ki*spak1k7*abb93(30)
      abb93(46)=-spak3k7*abb93(59)
      abb93(48)=abb93(19)*spak1l6
      abb93(14)=abb93(14)+abb93(27)
      abb93(27)=abb93(14)*abb93(11)
      abb93(27)=abb93(27)-abb93(48)
      abb93(27)=abb93(27)*abb93(61)*abb93(62)
      abb93(14)=abb93(14)*abb93(34)
      abb93(14)=abb93(14)-abb93(48)
      abb93(14)=abb93(14)*abb93(64)
      abb93(25)=abb93(67)*abb93(19)*abb93(25)
      abb93(14)=abb93(27)-abb93(14)-abb93(25)
      abb93(25)=spbk4k2*abb93(14)
      abb93(25)=abb93(46)+abb93(25)
      abb93(25)=8.0_ki*abb93(25)
      abb93(27)=spak3k7*abb93(50)
      abb93(34)=abb93(19)*spak4k7
      abb93(46)=abb93(34)*spak1l5
      abb93(38)=-abb93(38)*abb93(19)
      abb93(48)=abb93(38)*abb93(62)
      abb93(46)=abb93(46)-abb93(48)
      abb93(48)=-spbk4k2*abb93(46)
      abb93(27)=abb93(27)+abb93(48)
      abb93(27)=8.0_ki*abb93(27)
      abb93(48)=spak2k7*abb93(59)
      abb93(14)=-spbk4k3*abb93(14)
      abb93(14)=abb93(48)+abb93(14)
      abb93(14)=8.0_ki*abb93(14)
      abb93(48)=-spak2k7*abb93(50)
      abb93(46)=spbk4k3*abb93(46)
      abb93(46)=abb93(48)+abb93(46)
      abb93(46)=8.0_ki*abb93(46)
      abb93(48)=abb93(21)*spal6k7
      abb93(50)=-8.0_ki*abb93(48)
      abb93(51)=abb93(63)*abb93(10)
      abb93(54)=8.0_ki*abb93(51)
      abb93(21)=abb93(21)*spal5k7
      abb93(21)=8.0_ki*abb93(21)
      abb93(58)=-8.0_ki*abb93(69)
      abb93(51)=-spbl6k1*abb93(51)
      abb93(59)=-spbl5k1*abb93(69)
      abb93(51)=abb93(59)+abb93(51)
      abb93(51)=spak1l5*abb93(51)
      abb93(24)=abb93(17)*abb93(24)
      abb93(12)=abb93(47)*abb93(12)
      abb93(12)=abb93(12)-abb93(24)
      abb93(24)=abb93(68)+spal6k7
      abb93(12)=abb93(12)*abb93(24)
      abb93(17)=-abb93(47)*abb93(23)*abb93(17)
      abb93(13)=abb93(13)+abb93(17)
      abb93(13)=abb93(13)*abb93(45)
      abb93(12)=abb93(13)+abb93(12)
      abb93(12)=abb93(11)*abb93(12)
      abb93(13)=-spak2k7*abb93(32)*abb93(42)
      abb93(17)=abb93(22)*abb93(33)*abb93(53)
      abb93(12)=abb93(17)+abb93(13)+abb93(12)+abb93(51)
      abb93(12)=8.0_ki*abb93(12)
      abb93(13)=-abb93(69)+2.0_ki*abb93(48)
      abb93(13)=16.0_ki*abb93(13)
      abb93(17)=16.0_ki*abb93(48)
      abb93(23)=-abb93(61)+abb93(33)
      abb93(15)=abb93(15)*abb93(23)
      abb93(16)=abb93(16)*spbk2k1
      abb93(15)=abb93(16)+abb93(15)
      abb93(16)=-spak4k7*abb93(15)
      abb93(23)=16.0_ki*abb93(16)
      abb93(22)=abb93(22)*abb93(45)
      abb93(24)=-spal6k7*abb93(35)
      abb93(22)=abb93(22)+abb93(24)
      abb93(22)=abb93(8)*abb93(22)
      abb93(24)=abb93(42)*spal5k7
      abb93(32)=-spal6k7*abb93(66)
      abb93(16)=abb93(22)+abb93(32)-abb93(24)-abb93(16)
      abb93(16)=16.0_ki*abb93(16)
      abb93(22)=abb93(69)-abb93(48)
      abb93(22)=16.0_ki*abb93(22)
      abb93(24)=abb93(10)*abb93(72)
      abb93(32)=spbl6k3*abb93(24)
      abb93(32)=abb93(73)+abb93(32)
      abb93(32)=spal5l6*abb93(32)
      abb93(35)=spak2k4*abb93(15)
      abb93(24)=-spak1l5*abb93(24)
      abb93(24)=abb93(24)-abb93(57)
      abb93(24)=spbk3k1*abb93(24)
      abb93(42)=-spak2l5*abb93(42)
      abb93(37)=-spak2l6*abb93(37)
      abb93(24)=abb93(37)+abb93(42)+abb93(35)+abb93(24)+abb93(32)
      abb93(24)=8.0_ki*abb93(24)
      abb93(32)=-8.0_ki*abb93(41)
      abb93(20)=-8.0_ki*abb93(20)
      abb93(35)=spak3k7*abb93(15)
      abb93(37)=abb93(38)*spbk2k1
      abb93(19)=abb93(19)*abb93(33)
      abb93(19)=abb93(37)+abb93(19)
      abb93(19)=abb93(19)*spak4k7
      abb93(33)=abb93(34)*abb93(61)
      abb93(19)=abb93(19)-abb93(33)
      abb93(33)=spbk4k2*abb93(19)
      abb93(33)=abb93(35)+abb93(33)
      abb93(33)=8.0_ki*abb93(33)
      abb93(15)=-spak2k7*abb93(15)
      abb93(19)=-spbk4k3*abb93(19)
      abb93(15)=abb93(15)+abb93(19)
      abb93(15)=8.0_ki*abb93(15)
      R2d93=0.0_ki
      rat2 = rat2 + R2d93
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='93' value='", &
          & R2d93, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd93h4
