module     p5_usbar_epnebbbarg_abbrevd124h0
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(77), public :: abb124
   complex(ki), public :: R2d124
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p5_usbar_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_color, only: TR
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb124(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb124(2)=1.0_ki/(-es71+es56-es567+es234)
      abb124(3)=NC**(-1)
      abb124(4)=es56**(-1)
      abb124(5)=spbl5k2**(-1)
      abb124(6)=spbl6k2**(-1)
      abb124(7)=spak2l5**(-1)
      abb124(8)=spak2l6**(-1)
      abb124(9)=c3*abb124(3)
      abb124(10)=c4*abb124(3)**2
      abb124(9)=abb124(9)-abb124(10)
      abb124(10)=TR*gW
      abb124(10)=abb124(10)**2*i_*CVSU*abb124(4)*abb124(2)
      abb124(11)=abb124(10)*spbk2k1*abb124(1)
      abb124(12)=abb124(9)*abb124(11)*mB
      abb124(13)=-abb124(5)*abb124(12)
      abb124(14)=abb124(13)*spak1l6
      abb124(12)=-abb124(6)*abb124(12)
      abb124(15)=abb124(12)*spak1l5
      abb124(14)=abb124(14)+abb124(15)
      abb124(15)=spak2k7*spbk7k3
      abb124(16)=abb124(15)*spak4k7
      abb124(17)=abb124(16)*abb124(14)
      abb124(18)=spak2k4*abb124(14)
      abb124(19)=spbk4k3*spak4k7
      abb124(20)=abb124(18)*abb124(19)
      abb124(17)=abb124(20)+abb124(17)
      abb124(17)=spbk7k1*abb124(17)
      abb124(20)=abb124(12)*spal5l6
      abb124(21)=abb124(20)*spbk7l6
      abb124(22)=abb124(13)*spal5l6
      abb124(23)=abb124(22)*spbk7l5
      abb124(21)=abb124(21)-abb124(23)
      abb124(19)=spak2k4*abb124(19)
      abb124(16)=abb124(19)+abb124(16)
      abb124(16)=abb124(16)*abb124(21)
      abb124(11)=abb124(11)*abb124(9)*mB**3
      abb124(19)=-abb124(8)*abb124(11)*abb124(6)**2
      abb124(23)=abb124(19)*spak2l5
      abb124(24)=-abb124(7)*abb124(11)*abb124(5)**2
      abb124(25)=abb124(24)*spak2l6
      abb124(23)=abb124(23)+abb124(25)
      abb124(11)=-abb124(11)*abb124(6)*abb124(5)
      abb124(25)=2.0_ki*abb124(11)
      abb124(26)=abb124(23)+abb124(25)
      abb124(27)=-es12+es712-es71
      abb124(28)=abb124(27)*abb124(26)*spak4k7*spbk7k3
      abb124(29)=spak4k7*abb124(23)
      abb124(30)=-spak2k4*abb124(29)
      abb124(31)=abb124(25)*spak2k4
      abb124(32)=-spak4k7*abb124(31)
      abb124(30)=abb124(32)+abb124(30)
      abb124(30)=spbk7k2*spbk4k3*abb124(30)
      abb124(16)=abb124(30)+abb124(17)+abb124(28)+abb124(16)
      abb124(16)=8.0_ki*abb124(16)
      abb124(17)=spbk4k3*spak4e7*spak2k4
      abb124(28)=abb124(15)*spak4e7
      abb124(30)=spae7k7*spbk7k3
      abb124(32)=abb124(30)*spak2k4
      abb124(33)=abb124(17)+abb124(28)+abb124(32)
      abb124(34)=spbe7k1*abb124(14)*abb124(33)
      abb124(33)=spbe7k2*abb124(26)*abb124(33)
      abb124(17)=abb124(17)+abb124(28)
      abb124(28)=abb124(17)*abb124(20)
      abb124(35)=abb124(20)*abb124(32)
      abb124(28)=abb124(28)+abb124(35)
      abb124(28)=abb124(28)*spbe7l6
      abb124(17)=abb124(17)*abb124(22)
      abb124(36)=abb124(22)*abb124(32)
      abb124(17)=abb124(17)+abb124(36)
      abb124(17)=abb124(17)*spbe7l5
      abb124(17)=abb124(28)-abb124(17)+abb124(34)-abb124(33)
      abb124(28)=-8.0_ki*abb124(17)
      abb124(23)=spak2k4*abb124(23)
      abb124(23)=abb124(23)+abb124(31)
      abb124(23)=abb124(23)*spbk3k2
      abb124(31)=abb124(20)*spbl6k3
      abb124(33)=abb124(22)*spbl5k3
      abb124(31)=abb124(31)-abb124(33)
      abb124(33)=-spak2k4*abb124(31)
      abb124(34)=abb124(18)*spbk3k1
      abb124(23)=abb124(23)-abb124(33)-abb124(34)
      abb124(33)=16.0_ki*abb124(23)
      abb124(34)=abb124(13)*spak4l6
      abb124(37)=abb124(12)*spak4l5
      abb124(34)=abb124(34)+abb124(37)
      abb124(37)=abb124(30)*spbe7k3
      abb124(38)=abb124(37)*spak2k3
      abb124(39)=abb124(34)*abb124(38)
      abb124(40)=spbe7k3*spak2k4
      abb124(41)=abb124(40)*abb124(30)
      abb124(42)=abb124(41)*spak3l5
      abb124(43)=abb124(42)*abb124(12)
      abb124(44)=abb124(41)*spak3l6
      abb124(45)=abb124(44)*abb124(13)
      abb124(39)=-abb124(45)+abb124(39)-abb124(43)
      abb124(39)=8.0_ki*abb124(39)
      abb124(34)=abb124(15)*abb124(34)
      abb124(43)=spbk7k3*spak2k4
      abb124(45)=abb124(43)*spal5k7
      abb124(46)=abb124(45)*abb124(12)
      abb124(47)=abb124(43)*spal6k7
      abb124(48)=abb124(47)*abb124(13)
      abb124(34)=abb124(48)+abb124(34)+abb124(46)
      abb124(34)=32.0_ki*abb124(34)
      abb124(46)=abb124(40)*spal6e7
      abb124(48)=spak2e7*spbe7k3
      abb124(49)=abb124(48)*spak4l6
      abb124(46)=abb124(46)+abb124(49)
      abb124(49)=abb124(13)*abb124(46)
      abb124(50)=abb124(40)*spal5e7
      abb124(51)=abb124(48)*spak4l5
      abb124(50)=abb124(50)+abb124(51)
      abb124(51)=abb124(12)*abb124(50)
      abb124(49)=abb124(51)+abb124(49)
      abb124(51)=16.0_ki*abb124(49)
      abb124(52)=abb124(26)*spbe7k2
      abb124(53)=abb124(14)*spbe7k1
      abb124(54)=abb124(52)-abb124(53)
      abb124(32)=abb124(32)*abb124(54)
      abb124(36)=abb124(36)*spbe7l5
      abb124(35)=abb124(35)*spbe7l6
      abb124(32)=abb124(36)-abb124(35)+abb124(32)
      abb124(32)=8.0_ki*abb124(32)
      abb124(35)=abb124(11)*abb124(8)
      abb124(24)=abb124(35)+abb124(24)
      abb124(35)=-spak3l6*abb124(24)
      abb124(11)=abb124(11)*abb124(7)
      abb124(11)=abb124(11)+abb124(19)
      abb124(19)=-spak3l5*abb124(11)
      abb124(19)=abb124(19)+abb124(35)
      abb124(19)=abb124(41)*abb124(19)
      abb124(35)=abb124(11)*spak4l5
      abb124(36)=abb124(24)*spak4l6
      abb124(35)=abb124(35)+abb124(36)
      abb124(36)=spak2k3*abb124(37)*abb124(35)
      abb124(19)=abb124(36)+abb124(19)
      abb124(19)=8.0_ki*abb124(19)
      abb124(36)=-abb124(15)*abb124(35)
      abb124(37)=abb124(24)*spal6k7
      abb124(54)=-spal5k7*abb124(11)
      abb124(54)=abb124(54)-abb124(37)
      abb124(54)=abb124(43)*abb124(54)
      abb124(36)=abb124(54)+abb124(36)
      abb124(36)=32.0_ki*abb124(36)
      abb124(24)=abb124(24)*spal6e7
      abb124(54)=spal5e7*abb124(11)
      abb124(54)=abb124(24)+abb124(54)
      abb124(54)=abb124(40)*abb124(54)
      abb124(35)=abb124(48)*abb124(35)
      abb124(35)=abb124(35)+abb124(54)
      abb124(54)=16.0_ki*abb124(35)
      abb124(17)=-4.0_ki*abb124(17)
      abb124(23)=8.0_ki*abb124(23)
      abb124(49)=8.0_ki*abb124(49)
      abb124(35)=8.0_ki*abb124(35)
      abb124(55)=abb124(14)*spbk7k1
      abb124(55)=abb124(55)+abb124(21)
      abb124(56)=abb124(30)*spak4k7
      abb124(57)=-abb124(56)*abb124(55)
      abb124(58)=abb124(14)*spbk3k1
      abb124(58)=abb124(58)-abb124(31)
      abb124(59)=abb124(30)*abb124(58)
      abb124(60)=abb124(26)*abb124(30)
      abb124(61)=-spbk3k2*abb124(60)
      abb124(59)=abb124(61)+abb124(59)
      abb124(59)=spak3k4*abb124(59)
      abb124(61)=abb124(30)*abb124(29)
      abb124(56)=abb124(25)*abb124(56)
      abb124(56)=abb124(56)+abb124(61)
      abb124(56)=spbk7k2*abb124(56)
      abb124(56)=abb124(56)+abb124(59)+abb124(57)
      abb124(56)=4.0_ki*abb124(56)
      abb124(57)=abb124(26)*spbk3k2
      abb124(57)=abb124(57)-abb124(58)
      abb124(59)=-spak4e7*abb124(57)
      abb124(61)=-8.0_ki*abb124(59)
      abb124(59)=-4.0_ki*abb124(59)
      abb124(9)=abb124(10)*abb124(9)*mB*abb124(1)
      abb124(10)=-abb124(5)*abb124(9)
      abb124(62)=abb124(10)*spbl5k1
      abb124(63)=abb124(38)*spak4l5
      abb124(42)=abb124(63)-abb124(42)
      abb124(63)=-abb124(62)*abb124(42)
      abb124(64)=abb124(38)*spak4l6
      abb124(44)=abb124(64)-abb124(44)
      abb124(64)=abb124(10)*spbl6k1
      abb124(65)=-abb124(64)*abb124(44)
      abb124(63)=abb124(65)+abb124(63)
      abb124(63)=4.0_ki*abb124(63)
      abb124(65)=abb124(15)*spak4l5
      abb124(45)=abb124(65)+abb124(45)
      abb124(65)=abb124(62)*abb124(45)
      abb124(66)=abb124(15)*spak4l6
      abb124(47)=abb124(66)+abb124(47)
      abb124(66)=abb124(64)*abb124(47)
      abb124(65)=abb124(66)+abb124(65)
      abb124(65)=16.0_ki*abb124(65)
      abb124(66)=abb124(10)*abb124(46)
      abb124(67)=abb124(66)*spbl6k1
      abb124(68)=abb124(50)*abb124(62)
      abb124(67)=abb124(67)+abb124(68)
      abb124(68)=-8.0_ki*abb124(67)
      abb124(67)=-4.0_ki*abb124(67)
      abb124(41)=abb124(41)*spak1k3
      abb124(38)=abb124(38)*spak1k4
      abb124(38)=abb124(41)-abb124(38)
      abb124(41)=abb124(13)*abb124(38)
      abb124(69)=-abb124(9)*abb124(42)
      abb124(70)=abb124(10)*spbl6k2
      abb124(71)=abb124(70)*abb124(44)
      abb124(41)=abb124(71)+abb124(69)+abb124(41)
      abb124(41)=4.0_ki*abb124(41)
      abb124(15)=abb124(15)*spak1k4
      abb124(43)=abb124(43)*spak1k7
      abb124(15)=abb124(15)-abb124(43)
      abb124(43)=abb124(13)*abb124(15)
      abb124(69)=abb124(9)*abb124(45)
      abb124(71)=-abb124(47)*abb124(70)
      abb124(43)=abb124(71)+abb124(69)+abb124(43)
      abb124(43)=16.0_ki*abb124(43)
      abb124(66)=abb124(66)*spbl6k2
      abb124(69)=abb124(9)*abb124(50)
      abb124(40)=abb124(40)*spak1e7
      abb124(48)=abb124(48)*spak1k4
      abb124(40)=abb124(40)-abb124(48)
      abb124(48)=abb124(40)*abb124(13)
      abb124(48)=-abb124(66)+abb124(69)-abb124(48)
      abb124(66)=-8.0_ki*abb124(48)
      abb124(48)=-4.0_ki*abb124(48)
      abb124(69)=-abb124(6)*abb124(9)
      abb124(71)=abb124(69)*spbl5k1
      abb124(72)=-abb124(71)*abb124(42)
      abb124(73)=abb124(69)*spbl6k1
      abb124(74)=-abb124(73)*abb124(44)
      abb124(72)=abb124(74)+abb124(72)
      abb124(72)=4.0_ki*abb124(72)
      abb124(74)=abb124(71)*abb124(45)
      abb124(75)=abb124(73)*abb124(47)
      abb124(74)=abb124(75)+abb124(74)
      abb124(74)=16.0_ki*abb124(74)
      abb124(50)=abb124(69)*abb124(50)
      abb124(75)=abb124(50)*spbl5k1
      abb124(76)=abb124(46)*abb124(73)
      abb124(75)=abb124(75)+abb124(76)
      abb124(76)=-8.0_ki*abb124(75)
      abb124(75)=-4.0_ki*abb124(75)
      abb124(38)=abb124(12)*abb124(38)
      abb124(44)=-abb124(9)*abb124(44)
      abb124(77)=abb124(69)*spbl5k2
      abb124(42)=abb124(77)*abb124(42)
      abb124(38)=abb124(42)+abb124(44)+abb124(38)
      abb124(38)=4.0_ki*abb124(38)
      abb124(15)=abb124(12)*abb124(15)
      abb124(42)=abb124(9)*abb124(47)
      abb124(44)=-abb124(45)*abb124(77)
      abb124(15)=abb124(44)+abb124(42)+abb124(15)
      abb124(15)=16.0_ki*abb124(15)
      abb124(42)=abb124(50)*spbl5k2
      abb124(44)=abb124(9)*abb124(46)
      abb124(40)=abb124(40)*abb124(12)
      abb124(40)=-abb124(42)+abb124(44)-abb124(40)
      abb124(42)=-8.0_ki*abb124(40)
      abb124(40)=-4.0_ki*abb124(40)
      abb124(44)=abb124(20)*spbe7l6
      abb124(45)=abb124(22)*spbe7l5
      abb124(44)=abb124(44)-abb124(45)
      abb124(45)=abb124(53)+abb124(44)
      abb124(30)=abb124(45)*abb124(30)*spak2k3
      abb124(44)=-abb124(52)+abb124(44)
      abb124(44)=abb124(44)*spae7k7*spak2k4
      abb124(45)=spbe7k1*spae7k7*abb124(18)
      abb124(44)=abb124(45)+abb124(44)
      abb124(44)=spbk7k4*abb124(44)
      abb124(45)=-spbe7k2*spak2k3*abb124(60)
      abb124(30)=abb124(44)+abb124(45)+abb124(30)
      abb124(30)=4.0_ki*abb124(30)
      abb124(44)=spak2k7*abb124(55)
      abb124(45)=spak2k3*abb124(58)
      abb124(46)=-spbl6k4*abb124(20)
      abb124(47)=spbl5k4*abb124(22)
      abb124(46)=abb124(47)+abb124(46)
      abb124(46)=spak2k4*abb124(46)
      abb124(27)=es234-es34+abb124(27)
      abb124(27)=abb124(26)*abb124(27)
      abb124(18)=spbk4k1*abb124(18)
      abb124(18)=abb124(18)+abb124(27)+abb124(46)+abb124(45)+abb124(44)
      abb124(18)=8.0_ki*abb124(18)
      abb124(27)=spbk7e7*spak2e7
      abb124(44)=abb124(27)*spal6k7
      abb124(45)=spbk7e7*spak2k7
      abb124(46)=abb124(45)*spal6e7
      abb124(44)=abb124(44)-abb124(46)
      abb124(46)=-abb124(13)*abb124(44)
      abb124(47)=abb124(27)*spal5k7
      abb124(50)=abb124(45)*spal5e7
      abb124(47)=abb124(47)-abb124(50)
      abb124(50)=-abb124(12)*abb124(47)
      abb124(46)=abb124(50)+abb124(46)
      abb124(46)=8.0_ki*abb124(46)
      abb124(50)=abb124(13)*spak2l6
      abb124(52)=abb124(12)*spak2l5
      abb124(50)=abb124(50)+abb124(52)
      abb124(50)=32.0_ki*abb124(50)
      abb124(52)=spal5e7*spak2k7
      abb124(53)=-spal5k7*spak2e7
      abb124(52)=abb124(53)+abb124(52)
      abb124(11)=abb124(11)*abb124(52)
      abb124(24)=spak2k7*abb124(24)
      abb124(37)=-spak2e7*abb124(37)
      abb124(11)=abb124(37)+abb124(24)+abb124(11)
      abb124(11)=8.0_ki*spbk7e7*abb124(11)
      abb124(24)=-16.0_ki*abb124(26)
      abb124(26)=spbk7k2*abb124(26)
      abb124(26)=abb124(26)-abb124(55)
      abb124(26)=4.0_ki*spae7k7*abb124(26)
      abb124(37)=abb124(62)*abb124(47)
      abb124(52)=abb124(64)*abb124(44)
      abb124(37)=abb124(52)+abb124(37)
      abb124(37)=4.0_ki*abb124(37)
      abb124(52)=spak2l6*abb124(64)
      abb124(53)=spak2l5*abb124(62)
      abb124(52)=abb124(52)+abb124(53)
      abb124(52)=16.0_ki*abb124(52)
      abb124(27)=abb124(27)*spak1k7
      abb124(45)=abb124(45)*spak1e7
      abb124(27)=abb124(27)-abb124(45)
      abb124(13)=-abb124(13)*abb124(27)
      abb124(45)=abb124(9)*abb124(47)
      abb124(53)=-abb124(44)*abb124(70)
      abb124(13)=abb124(53)+abb124(45)+abb124(13)
      abb124(13)=4.0_ki*abb124(13)
      abb124(45)=spak2l5*abb124(9)
      abb124(53)=-spak2l6*abb124(70)
      abb124(10)=es12*abb124(10)
      abb124(10)=abb124(10)+abb124(45)+abb124(53)
      abb124(10)=16.0_ki*abb124(10)
      abb124(45)=abb124(71)*abb124(47)
      abb124(53)=abb124(73)*abb124(44)
      abb124(45)=abb124(53)+abb124(45)
      abb124(45)=4.0_ki*abb124(45)
      abb124(53)=spak2l6*abb124(73)
      abb124(55)=spak2l5*abb124(71)
      abb124(53)=abb124(53)+abb124(55)
      abb124(53)=16.0_ki*abb124(53)
      abb124(12)=-abb124(12)*abb124(27)
      abb124(27)=abb124(9)*abb124(44)
      abb124(44)=-abb124(47)*abb124(77)
      abb124(12)=abb124(44)+abb124(27)+abb124(12)
      abb124(12)=4.0_ki*abb124(12)
      abb124(9)=spak2l6*abb124(9)
      abb124(27)=-spak2l5*abb124(77)
      abb124(44)=es12*abb124(69)
      abb124(9)=abb124(44)+abb124(9)+abb124(27)
      abb124(9)=16.0_ki*abb124(9)
      abb124(27)=-spak4k7*abb124(31)
      abb124(25)=abb124(25)*spak4k7
      abb124(25)=abb124(25)+abb124(29)
      abb124(29)=-spbk3k2*abb124(25)
      abb124(31)=abb124(14)*spak4k7
      abb124(44)=spbk3k1*abb124(31)
      abb124(27)=abb124(29)+abb124(44)+abb124(27)
      abb124(27)=8.0_ki*abb124(27)
      abb124(20)=-8.0_ki*abb124(20)
      abb124(22)=8.0_ki*abb124(22)
      abb124(29)=-spak3k4*abb124(57)
      abb124(21)=-spak4k7*abb124(21)
      abb124(25)=spbk7k2*abb124(25)
      abb124(31)=-spbk7k1*abb124(31)
      abb124(21)=abb124(31)+abb124(25)+abb124(29)+abb124(21)
      abb124(21)=8.0_ki*abb124(21)
      abb124(14)=-8.0_ki*abb124(14)
      R2d124=0.0_ki
      rat2 = rat2 + R2d124
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='124' value='", &
          & R2d124, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd124h0
