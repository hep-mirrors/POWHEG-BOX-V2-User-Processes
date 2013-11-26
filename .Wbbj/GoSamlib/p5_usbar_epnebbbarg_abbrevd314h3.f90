module     p5_usbar_epnebbbarg_abbrevd314h3
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(75), public :: abb314
   complex(ki), public :: R2d314
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
      abb314(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb314(2)=NC**(-1)
      abb314(3)=es234**(-1)
      abb314(4)=spak2l5**(-1)
      abb314(5)=spak2l6**(-1)
      abb314(6)=spbl5k2**(-1)
      abb314(7)=sqrt(mB**2)
      abb314(8)=mB*spak2k4
      abb314(9)=abb314(8)*c3
      abb314(10)=TR*gW
      abb314(10)=abb314(10)**2*i_*CVSU*abb314(3)*abb314(1)
      abb314(11)=abb314(10)*abb314(2)
      abb314(12)=abb314(9)*abb314(11)
      abb314(13)=abb314(10)*c1
      abb314(14)=abb314(13)*NC
      abb314(15)=abb314(14)*abb314(8)
      abb314(16)=abb314(13)*abb314(8)*abb314(2)
      abb314(12)=-abb314(16)+abb314(12)+abb314(15)
      abb314(12)=abb314(12)*spbk3k2
      abb314(15)=abb314(2)*spak2k4
      abb314(13)=abb314(15)*abb314(13)
      abb314(11)=abb314(11)*c3
      abb314(17)=abb314(11)*spak2k4
      abb314(18)=abb314(14)*spak2k4
      abb314(13)=-abb314(18)+abb314(13)-abb314(17)
      abb314(17)=abb314(7)*spbk3k2
      abb314(18)=-abb314(13)*abb314(17)
      abb314(18)=abb314(18)-abb314(12)
      abb314(19)=abb314(18)*spbl6k1
      abb314(20)=spbe7l5*spak2e7
      abb314(21)=abb314(19)*abb314(20)
      abb314(22)=c1*spak2k4
      abb314(23)=abb314(22)*NC
      abb314(15)=abb314(15)*c3
      abb314(15)=abb314(23)+abb314(15)
      abb314(10)=abb314(10)*spbk4k3
      abb314(23)=abb314(10)*abb314(15)
      abb314(24)=abb314(10)*abb314(2)
      abb314(22)=abb314(24)*abb314(22)
      abb314(23)=-abb314(22)+abb314(23)
      abb314(23)=abb314(23)*abb314(7)
      abb314(25)=abb314(23)*spbl6k1
      abb314(26)=spak4e7*spbe7l5
      abb314(27)=abb314(25)*abb314(26)
      abb314(28)=abb314(24)*abb314(5)
      abb314(29)=abb314(28)*c1
      abb314(30)=abb314(28)*c3
      abb314(30)=abb314(29)-abb314(30)
      abb314(31)=spbe7k1*abb314(4)
      abb314(32)=abb314(30)*abb314(31)
      abb314(33)=abb314(8)**2
      abb314(34)=abb314(33)*abb314(32)
      abb314(35)=c1*abb314(10)*NC
      abb314(36)=abb314(35)*spbe7k1
      abb314(37)=abb314(36)*abb314(5)
      abb314(33)=abb314(33)*abb314(4)
      abb314(38)=abb314(37)*abb314(33)
      abb314(34)=abb314(34)-abb314(38)
      abb314(34)=abb314(34)*abb314(7)
      abb314(38)=abb314(34)*spak2e7
      abb314(39)=c3-c1
      abb314(40)=spak2k4**2
      abb314(41)=-abb314(39)*mB*abb314(28)*abb314(40)
      abb314(42)=abb314(40)*abb314(5)
      abb314(43)=abb314(42)*abb314(35)
      abb314(44)=abb314(43)*mB
      abb314(44)=abb314(44)-abb314(41)
      abb314(45)=abb314(44)*spbe7l5
      abb314(46)=abb314(45)*spal5e7
      abb314(47)=abb314(46)*spbl5k1
      abb314(21)=abb314(21)-abb314(38)+abb314(27)+abb314(47)
      abb314(27)=-abb314(24)*abb314(39)
      abb314(38)=mB**3
      abb314(47)=abb314(38)*abb314(40)
      abb314(48)=abb314(47)*abb314(4)**2
      abb314(49)=-abb314(27)*spbe7k1*abb314(48)
      abb314(50)=abb314(48)*abb314(36)
      abb314(49)=abb314(50)+abb314(49)
      abb314(49)=abb314(49)*abb314(6)
      abb314(50)=spbk7l6*spae7k7
      abb314(51)=abb314(49)*abb314(50)
      abb314(32)=-abb314(47)*abb314(32)
      abb314(42)=abb314(36)*abb314(42)
      abb314(38)=abb314(38)*abb314(4)
      abb314(52)=abb314(42)*abb314(38)
      abb314(32)=abb314(32)+abb314(52)
      abb314(52)=abb314(32)*abb314(6)
      abb314(53)=spae7k7*spbk7l5
      abb314(54)=abb314(52)*abb314(53)
      abb314(51)=abb314(51)+abb314(54)
      abb314(54)=abb314(49)*spbl6k1
      abb314(55)=2.0_ki*spak1e7
      abb314(56)=-abb314(55)*abb314(54)
      abb314(56)=abb314(56)+2.0_ki*abb314(51)-abb314(21)
      abb314(56)=es71*abb314(56)
      abb314(12)=-spbe7k1*abb314(12)
      abb314(13)=abb314(17)*spbe7k1*abb314(13)
      abb314(12)=abb314(13)-abb314(12)
      abb314(13)=spak1e7*spbl6k1
      abb314(17)=abb314(13)-abb314(50)
      abb314(57)=spbk7l5*spak2k7
      abb314(58)=abb314(17)*abb314(57)
      abb314(59)=abb314(12)*abb314(58)
      abb314(41)=-spbe7k1*abb314(41)
      abb314(42)=abb314(42)*mB
      abb314(41)=abb314(41)+abb314(42)
      abb314(42)=abb314(41)*spbl5k1
      abb314(60)=-spak1e7*spbk7l5*abb314(42)
      abb314(61)=spae7k7*abb314(41)*spbk7l5**2
      abb314(60)=abb314(60)+abb314(61)
      abb314(60)=spal5k7*abb314(60)
      abb314(59)=abb314(59)+abb314(60)
      abb314(13)=abb314(13)*abb314(49)
      abb314(13)=abb314(13)-abb314(51)
      abb314(49)=es712-es12
      abb314(49)=2.0_ki*abb314(49)
      abb314(13)=abb314(13)*abb314(49)
      abb314(49)=c1*abb314(8)
      abb314(49)=abb314(9)-abb314(49)
      abb314(24)=abb314(24)*abb314(4)
      abb314(49)=abb314(24)*abb314(49)
      abb314(60)=spbe7k1*abb314(49)
      abb314(61)=abb314(8)*abb314(4)
      abb314(62)=abb314(36)*abb314(61)
      abb314(60)=abb314(62)+abb314(60)
      abb314(58)=abb314(60)*abb314(58)
      abb314(62)=abb314(61)*abb314(35)
      abb314(49)=abb314(62)+abb314(49)
      abb314(62)=abb314(49)*spbl6k1
      abb314(63)=es71*abb314(20)*abb314(62)
      abb314(58)=2.0_ki*abb314(58)+abb314(63)
      abb314(58)=spak4l5*abb314(58)
      abb314(63)=-abb314(57)*abb314(55)*abb314(52)
      abb314(47)=-abb314(4)*abb314(30)*abb314(47)
      abb314(38)=abb314(43)*abb314(38)
      abb314(38)=abb314(47)+abb314(38)
      abb314(43)=abb314(38)*abb314(6)
      abb314(47)=abb314(43)*abb314(20)
      abb314(64)=-es71*abb314(47)
      abb314(63)=abb314(63)+abb314(64)
      abb314(63)=spbk2k1*abb314(63)
      abb314(10)=-abb314(15)*abb314(10)*spbe7k1
      abb314(15)=abb314(22)*spbe7k1
      abb314(10)=abb314(15)+abb314(10)
      abb314(10)=abb314(10)*abb314(7)
      abb314(15)=2.0_ki*spak4k7
      abb314(17)=abb314(15)*abb314(10)*spbk7l5*abb314(17)
      abb314(22)=spbk7k1*spak2k7
      abb314(64)=abb314(22)*abb314(55)
      abb314(65)=abb314(34)*abb314(64)
      abb314(13)=abb314(63)+abb314(65)+abb314(17)+abb314(58)+abb314(56)+abb314(&
      &13)+2.0_ki*abb314(59)
      abb314(13)=2.0_ki*abb314(13)
      abb314(17)=abb314(62)*spak4l5
      abb314(56)=abb314(17)-abb314(19)
      abb314(58)=spak1k2*abb314(56)
      abb314(59)=-spak1k4*abb314(25)
      abb314(58)=abb314(59)+abb314(58)
      abb314(58)=spbl5k1*abb314(58)
      abb314(59)=abb314(18)*spbl5k1
      abb314(63)=abb314(35)-abb314(27)
      abb314(48)=abb314(6)*abb314(48)*abb314(63)
      abb314(63)=spbk2k1*abb314(48)
      abb314(63)=abb314(63)+abb314(59)
      abb314(65)=spbk7l6*spak2k7
      abb314(63)=abb314(65)*abb314(63)
      abb314(19)=-abb314(57)*abb314(19)
      abb314(66)=abb314(57)*abb314(62)
      abb314(67)=abb314(65)*abb314(49)
      abb314(68)=-spbl5k1*abb314(67)
      abb314(66)=abb314(66)+abb314(68)
      abb314(66)=spak4l5*abb314(66)
      abb314(68)=-spbk7l5*abb314(25)
      abb314(69)=spbk7l6*spbl5k1*abb314(23)
      abb314(68)=abb314(68)+abb314(69)
      abb314(68)=spak4k7*abb314(68)
      abb314(69)=abb314(43)*spbl5k1
      abb314(70)=abb314(48)*spbl6k1
      abb314(71)=-2.0_ki*abb314(70)-abb314(69)
      abb314(71)=es12*abb314(71)
      abb314(72)=es712-es71
      abb314(73)=abb314(70)*abb314(72)
      abb314(74)=abb314(35)*abb314(5)
      abb314(30)=-abb314(30)+abb314(74)
      abb314(30)=abb314(7)*abb314(33)*abb314(30)
      abb314(33)=-2.0_ki*abb314(30)+abb314(38)
      abb314(33)=abb314(33)*abb314(22)
      abb314(75)=-spak1l5*abb314(44)*spbl5k1**2
      abb314(19)=abb314(75)+abb314(71)+abb314(33)+abb314(68)+abb314(66)+abb314(&
      &19)+abb314(73)+abb314(63)+abb314(58)
      abb314(19)=8.0_ki*abb314(19)
      abb314(17)=abb314(17)*abb314(20)
      abb314(33)=abb314(47)*spbk2k1
      abb314(17)=abb314(17)-abb314(33)-abb314(21)
      abb314(21)=4.0_ki*abb314(17)
      abb314(24)=abb314(24)*abb314(39)
      abb314(33)=abb314(35)*abb314(4)
      abb314(24)=abb314(24)+abb314(33)
      abb314(24)=abb314(40)*mB*abb314(24)
      abb314(33)=-spbe7k1*abb314(24)
      abb314(39)=abb314(33)*spbl6k1
      abb314(39)=abb314(39)-abb314(42)
      abb314(39)=abb314(39)*spak1e7
      abb314(40)=abb314(41)*abb314(53)
      abb314(33)=abb314(33)*abb314(50)
      abb314(33)=abb314(39)+abb314(40)-abb314(33)
      abb314(39)=-4.0_ki*abb314(33)
      abb314(40)=abb314(44)*spbl5k1
      abb314(41)=-abb314(24)*spbl6k1
      abb314(42)=-abb314(41)-abb314(40)
      abb314(42)=8.0_ki*abb314(42)
      abb314(44)=spbl5k1*abb314(52)
      abb314(44)=abb314(54)+abb314(44)
      abb314(44)=spak1e7*abb314(44)
      abb314(44)=abb314(44)-abb314(51)
      abb314(44)=4.0_ki*abb314(44)
      abb314(51)=-abb314(70)+abb314(69)
      abb314(51)=8.0_ki*abb314(51)
      abb314(17)=-abb314(17)-abb314(33)
      abb314(17)=2.0_ki*abb314(17)
      abb314(33)=-abb314(41)+abb314(40)
      abb314(33)=4.0_ki*abb314(33)
      abb314(40)=abb314(49)*spak4l5
      abb314(41)=abb314(40)-abb314(18)
      abb314(52)=abb314(57)*abb314(41)
      abb314(54)=-es12+abb314(72)
      abb314(54)=abb314(48)*abb314(54)
      abb314(58)=spak4k7*spbk7l5
      abb314(63)=-abb314(23)*abb314(58)
      abb314(52)=abb314(63)+abb314(54)+abb314(52)
      abb314(52)=spbe7l6*abb314(52)
      abb314(54)=-spal5k7*spbk7l5*abb314(45)
      abb314(63)=-spbe7k2*abb314(57)*abb314(43)
      abb314(66)=spbk7e7*spak2k7
      abb314(68)=abb314(30)*abb314(66)
      abb314(52)=abb314(63)+abb314(54)+abb314(68)+abb314(52)
      abb314(52)=4.0_ki*abb314(52)
      abb314(24)=-abb314(24)*spbe7l6
      abb314(24)=abb314(24)-abb314(45)
      abb314(45)=-4.0_ki*abb314(24)
      abb314(54)=spbe7l5*abb314(43)
      abb314(63)=spbe7l6*abb314(48)
      abb314(54)=abb314(54)+abb314(63)
      abb314(54)=4.0_ki*abb314(54)
      abb314(24)=-2.0_ki*abb314(24)
      abb314(9)=abb314(9)*abb314(28)
      abb314(28)=abb314(29)*abb314(8)
      abb314(9)=abb314(9)-abb314(28)
      abb314(28)=abb314(74)*abb314(8)
      abb314(28)=abb314(28)+abb314(9)
      abb314(29)=abb314(57)*abb314(28)
      abb314(29)=abb314(29)+abb314(67)
      abb314(29)=2.0_ki*abb314(29)
      abb314(27)=-abb314(8)*abb314(27)
      abb314(35)=abb314(35)*abb314(8)
      abb314(35)=abb314(35)+abb314(27)
      abb314(63)=abb314(35)-abb314(23)
      abb314(67)=spbl6l5*abb314(63)
      abb314(67)=-abb314(29)+abb314(67)
      abb314(67)=2.0_ki*abb314(67)
      abb314(68)=-spbl6l5*abb314(18)
      abb314(38)=abb314(30)-abb314(38)
      abb314(69)=abb314(58)*abb314(28)
      abb314(69)=2.0_ki*abb314(69)
      abb314(11)=abb314(11)+abb314(14)
      abb314(11)=abb314(61)*abb314(11)
      abb314(14)=abb314(16)*abb314(4)
      abb314(14)=-abb314(14)+abb314(11)
      abb314(14)=abb314(14)*spbk3k2
      abb314(61)=2.0_ki*abb314(14)
      abb314(70)=-abb314(65)*abb314(61)
      abb314(68)=abb314(69)+abb314(68)+abb314(70)-abb314(38)
      abb314(68)=2.0_ki*abb314(68)
      abb314(41)=-abb314(20)*abb314(41)
      abb314(70)=abb314(23)*abb314(26)
      abb314(41)=abb314(70)+abb314(41)
      abb314(41)=spbk7l6*abb314(41)
      abb314(46)=spbk7l5*abb314(46)
      abb314(47)=spbk7k2*abb314(47)
      abb314(70)=spbk7e7*spak2e7
      abb314(30)=abb314(30)*abb314(70)
      abb314(30)=abb314(47)+abb314(46)+abb314(30)+abb314(41)
      abb314(30)=4.0_ki*abb314(30)
      abb314(9)=-spbe7k1*abb314(9)
      abb314(37)=abb314(37)*abb314(8)
      abb314(9)=abb314(9)-abb314(37)
      abb314(37)=abb314(9)*abb314(57)
      abb314(41)=-spae7k7*abb314(37)
      abb314(46)=abb314(50)*spak2k7
      abb314(47)=abb314(60)*abb314(46)
      abb314(41)=abb314(41)+abb314(47)
      abb314(27)=spbe7k1*abb314(27)
      abb314(8)=abb314(36)*abb314(8)
      abb314(8)=abb314(10)+abb314(8)+abb314(27)
      abb314(10)=abb314(8)*spbl6l5
      abb314(27)=-spae7k7*abb314(10)
      abb314(27)=2.0_ki*abb314(41)+abb314(27)
      abb314(27)=2.0_ki*abb314(27)
      abb314(36)=abb314(28)*spbl5k1
      abb314(41)=abb314(36)+abb314(62)
      abb314(47)=8.0_ki*spak2k7*abb314(41)
      abb314(20)=abb314(28)*abb314(20)
      abb314(50)=spbe7l6*spak2e7
      abb314(57)=abb314(50)*abb314(49)
      abb314(20)=abb314(20)+abb314(57)
      abb314(57)=4.0_ki*abb314(20)
      abb314(62)=spak1e7*spbl5k1
      abb314(62)=abb314(62)-abb314(53)
      abb314(8)=-abb314(8)*abb314(62)
      abb314(71)=abb314(60)*spak2e7
      abb314(72)=-es71*abb314(71)
      abb314(73)=-abb314(60)*abb314(64)
      abb314(8)=abb314(73)+abb314(72)+abb314(8)
      abb314(8)=2.0_ki*abb314(8)
      abb314(72)=-spbl5k1*abb314(63)
      abb314(22)=4.0_ki*abb314(22)
      abb314(73)=-abb314(49)*abb314(22)
      abb314(72)=abb314(72)+abb314(73)
      abb314(72)=4.0_ki*abb314(72)
      abb314(73)=4.0_ki*abb314(71)
      abb314(71)=2.0_ki*abb314(71)
      abb314(63)=-spbe7l5*abb314(63)
      abb314(74)=abb314(49)*abb314(66)
      abb314(63)=abb314(63)+2.0_ki*abb314(74)
      abb314(63)=2.0_ki*abb314(63)
      abb314(70)=4.0_ki*abb314(70)
      abb314(74)=abb314(49)*abb314(70)
      abb314(25)=-8.0_ki*abb314(25)
      abb314(60)=abb314(60)*abb314(65)
      abb314(37)=-abb314(37)+abb314(60)
      abb314(10)=-abb314(10)+2.0_ki*abb314(37)
      abb314(10)=spak1e7*abb314(10)
      abb314(37)=es71*abb314(20)
      abb314(10)=abb314(37)+abb314(10)
      abb314(10)=2.0_ki*abb314(10)
      abb314(23)=3.0_ki*abb314(23)-abb314(35)
      abb314(23)=spbl6l5*abb314(23)
      abb314(35)=spak1k2*abb314(41)
      abb314(23)=2.0_ki*abb314(35)+abb314(29)+abb314(23)
      abb314(23)=4.0_ki*abb314(23)
      abb314(20)=-2.0_ki*abb314(20)
      abb314(29)=abb314(12)*spbl6l5
      abb314(29)=abb314(29)+abb314(34)+abb314(32)
      abb314(32)=-spae7k7*abb314(29)
      abb314(11)=-spbe7k1*abb314(11)
      abb314(16)=abb314(16)*abb314(31)
      abb314(11)=abb314(16)+abb314(11)
      abb314(11)=abb314(11)*spbk3k2
      abb314(16)=abb314(11)*abb314(46)
      abb314(15)=abb314(9)*abb314(53)*abb314(15)
      abb314(15)=abb314(15)-2.0_ki*abb314(16)+abb314(32)
      abb314(15)=2.0_ki*abb314(15)
      abb314(16)=spak2k7*spbl6k1*abb314(14)
      abb314(31)=-spak4k7*abb314(36)
      abb314(16)=abb314(16)+abb314(31)
      abb314(16)=8.0_ki*abb314(16)
      abb314(26)=abb314(26)*abb314(28)
      abb314(31)=abb314(50)*abb314(14)
      abb314(26)=abb314(26)-abb314(31)
      abb314(31)=4.0_ki*abb314(26)
      abb314(12)=-abb314(12)*abb314(62)
      abb314(32)=spak2e7*abb314(11)
      abb314(34)=es71*abb314(32)
      abb314(35)=abb314(64)*abb314(11)
      abb314(12)=abb314(35)+abb314(34)+abb314(12)
      abb314(12)=2.0_ki*abb314(12)
      abb314(22)=-abb314(14)*abb314(22)
      abb314(22)=abb314(59)+abb314(22)
      abb314(22)=4.0_ki*abb314(22)
      abb314(34)=4.0_ki*abb314(32)
      abb314(32)=-2.0_ki*abb314(32)
      abb314(35)=spbe7l5*abb314(18)
      abb314(37)=abb314(61)*abb314(66)
      abb314(35)=abb314(35)+abb314(37)
      abb314(35)=2.0_ki*abb314(35)
      abb314(37)=abb314(14)*abb314(70)
      abb314(41)=8.0_ki*abb314(49)
      abb314(43)=-spbk2k1*abb314(43)
      abb314(43)=abb314(43)+abb314(56)
      abb314(43)=8.0_ki*abb314(43)
      abb314(28)=16.0_ki*abb314(28)
      abb314(29)=-spak1e7*abb314(29)
      abb314(46)=-es71*abb314(26)
      abb314(11)=-abb314(65)*abb314(11)
      abb314(9)=abb314(9)*abb314(58)
      abb314(9)=abb314(9)+abb314(11)
      abb314(9)=abb314(55)*abb314(9)
      abb314(9)=abb314(9)+abb314(46)+abb314(29)
      abb314(9)=2.0_ki*abb314(9)
      abb314(11)=spak1k4*abb314(36)
      abb314(29)=spbl6k2*abb314(48)
      abb314(11)=abb314(11)-abb314(29)
      abb314(18)=-2.0_ki*abb314(40)+3.0_ki*abb314(18)
      abb314(18)=spbl6l5*abb314(18)
      abb314(29)=spak1k2*spbl6k1
      abb314(29)=abb314(29)+abb314(65)
      abb314(29)=abb314(61)*abb314(29)
      abb314(11)=-abb314(69)+3.0_ki*abb314(38)+abb314(29)+abb314(18)-2.0_ki*abb&
      &314(11)
      abb314(11)=4.0_ki*abb314(11)
      abb314(18)=2.0_ki*abb314(26)
      abb314(14)=8.0_ki*abb314(14)
      R2d314=0.0_ki
      rat2 = rat2 + R2d314
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='314' value='", &
          & R2d314, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd314h3
