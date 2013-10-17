module     p5_usbar_epnebbbarg_abbrevd315h3
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(74), public :: abb315
   complex(ki), public :: R2d315
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
      abb315(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb315(2)=sqrt(mB**2)
      abb315(3)=NC**(-1)
      abb315(4)=es234**(-1)
      abb315(5)=spak2l5**(-1)
      abb315(6)=spak2l6**(-1)
      abb315(7)=spbl6k2**(-1)
      abb315(8)=mB*spak2k4
      abb315(9)=abb315(8)*abb315(6)
      abb315(10)=abb315(9)*spbl5k1
      abb315(11)=abb315(2)**2
      abb315(12)=abb315(10)*abb315(11)
      abb315(13)=TR*gW
      abb315(13)=abb315(13)**2*i_*CVSU*abb315(4)*abb315(1)
      abb315(14)=abb315(13)*spbk4k3
      abb315(15)=abb315(14)*abb315(3)
      abb315(16)=abb315(12)*abb315(15)
      abb315(17)=abb315(14)*abb315(5)
      abb315(18)=abb315(17)*spbl6k1
      abb315(19)=abb315(18)*abb315(8)
      abb315(20)=abb315(19)*abb315(3)
      abb315(21)=abb315(20)*abb315(11)
      abb315(16)=abb315(16)+abb315(21)
      abb315(22)=c1+c3
      abb315(16)=abb315(16)*abb315(22)
      abb315(23)=abb315(19)*abb315(11)
      abb315(24)=-abb315(14)*abb315(12)
      abb315(24)=-abb315(23)+abb315(24)
      abb315(24)=c4*abb315(24)
      abb315(25)=abb315(3)**2
      abb315(26)=abb315(25)*abb315(14)
      abb315(27)=-abb315(12)*abb315(26)
      abb315(28)=-abb315(25)*abb315(23)
      abb315(27)=abb315(28)+abb315(27)
      abb315(27)=c2*abb315(27)
      abb315(16)=abb315(27)+abb315(24)+abb315(16)
      abb315(24)=spak4e7*spbe7k1
      abb315(16)=abb315(16)*abb315(24)
      abb315(27)=abb315(22)*abb315(13)*abb315(3)
      abb315(28)=spbk3k2*abb315(27)
      abb315(29)=abb315(28)*abb315(12)
      abb315(30)=abb315(13)*abb315(8)
      abb315(31)=abb315(30)*abb315(6)
      abb315(32)=spbl5k1*spbk3k2
      abb315(33)=abb315(31)*abb315(32)
      abb315(34)=abb315(25)*c2
      abb315(35)=abb315(34)+c4
      abb315(36)=abb315(33)*abb315(35)
      abb315(37)=abb315(36)*abb315(11)
      abb315(29)=abb315(37)-abb315(29)
      abb315(37)=spbe7k1*spak2e7
      abb315(38)=-abb315(29)*abb315(37)
      abb315(16)=abb315(38)+abb315(16)
      abb315(16)=spak1k2*abb315(16)
      abb315(38)=abb315(2)*abb315(8)**2
      abb315(39)=abb315(3)*abb315(38)
      abb315(40)=abb315(22)*abb315(39)*abb315(17)
      abb315(41)=abb315(6)*abb315(40)
      abb315(42)=abb315(38)*abb315(17)
      abb315(43)=abb315(6)*abb315(35)
      abb315(44)=abb315(43)*abb315(42)
      abb315(41)=abb315(44)-abb315(41)
      abb315(41)=abb315(41)*spbk7k1
      abb315(44)=spak1k2*abb315(41)
      abb315(42)=abb315(42)*abb315(35)
      abb315(40)=abb315(42)-abb315(40)
      abb315(40)=spbk7l6*abb315(40)
      abb315(40)=abb315(40)+abb315(44)
      abb315(42)=spae7k7*spbe7k1
      abb315(40)=abb315(42)*abb315(40)
      abb315(44)=abb315(34)*spbk3k2
      abb315(45)=c4*spbk3k2
      abb315(44)=abb315(44)+abb315(45)
      abb315(46)=abb315(30)*abb315(44)
      abb315(47)=abb315(11)*abb315(46)
      abb315(48)=abb315(11)*abb315(8)
      abb315(49)=-abb315(48)*abb315(28)
      abb315(47)=abb315(49)+abb315(47)
      abb315(49)=abb315(37)*spbl6l5
      abb315(47)=abb315(47)*abb315(49)
      abb315(50)=abb315(14)*spbl6k1
      abb315(51)=abb315(50)*abb315(35)
      abb315(52)=abb315(2)*spak2k4
      abb315(53)=abb315(52)*spbk7e7
      abb315(54)=abb315(53)*abb315(51)
      abb315(55)=abb315(22)*abb315(15)
      abb315(56)=abb315(53)*spbl6k1
      abb315(57)=-abb315(56)*abb315(55)
      abb315(54)=abb315(57)+abb315(54)
      abb315(57)=spak4k7*spbl6l5
      abb315(54)=abb315(54)*abb315(57)
      abb315(58)=-abb315(56)*abb315(28)
      abb315(59)=abb315(13)*abb315(52)
      abb315(60)=abb315(59)*spbl6k1
      abb315(61)=spbk7e7*abb315(35)
      abb315(62)=abb315(61)*spbk3k2
      abb315(63)=abb315(60)*abb315(62)
      abb315(58)=abb315(63)+abb315(58)
      abb315(63)=spak2k7*spbl6l5
      abb315(58)=abb315(58)*abb315(63)
      abb315(54)=abb315(54)+abb315(58)
      abb315(54)=spal6e7*abb315(54)
      abb315(58)=abb315(53)*spbl5k1
      abb315(64)=abb315(58)*abb315(51)
      abb315(65)=abb315(56)*spbl5k1
      abb315(66)=-abb315(65)*abb315(55)
      abb315(64)=abb315(66)+abb315(64)
      abb315(64)=spak4k7*abb315(64)
      abb315(32)=abb315(59)*abb315(32)
      abb315(66)=abb315(61)*abb315(32)
      abb315(67)=spbl6k1*abb315(66)
      abb315(65)=-abb315(65)*abb315(28)
      abb315(65)=abb315(65)+abb315(67)
      abb315(65)=spak2k7*abb315(65)
      abb315(64)=abb315(64)+abb315(65)
      abb315(64)=spak1e7*abb315(64)
      abb315(50)=abb315(43)*abb315(50)
      abb315(65)=mB**2
      abb315(67)=abb315(65)*abb315(53)
      abb315(68)=-abb315(67)*abb315(50)
      abb315(56)=abb315(6)*abb315(56)*abb315(65)
      abb315(65)=abb315(56)*abb315(55)
      abb315(65)=abb315(65)+abb315(68)
      abb315(68)=spak4k7*spak2e7
      abb315(65)=abb315(65)*abb315(68)
      abb315(13)=-abb315(44)*abb315(13)
      abb315(13)=abb315(28)+abb315(13)
      abb315(69)=spak2k7*spak2e7
      abb315(13)=abb315(69)*abb315(56)*abb315(13)
      abb315(13)=abb315(65)+abb315(13)
      abb315(56)=spbl5k2*abb315(7)
      abb315(13)=abb315(13)*abb315(56)
      abb315(21)=-abb315(21)*abb315(22)
      abb315(23)=abb315(23)*abb315(35)
      abb315(21)=abb315(23)+abb315(21)
      abb315(23)=spak4l6*spak2e7
      abb315(65)=spak2l6*spak4e7
      abb315(23)=abb315(23)-abb315(65)
      abb315(23)=abb315(23)*spbe7l6
      abb315(65)=abb315(37)*spak1k4
      abb315(23)=abb315(23)+abb315(65)
      abb315(21)=abb315(21)*abb315(23)
      abb315(65)=abb315(14)*abb315(35)
      abb315(65)=abb315(55)-abb315(65)
      abb315(70)=abb315(65)*abb315(24)*spbl6l5
      abb315(48)=-abb315(48)*abb315(70)
      abb315(13)=abb315(13)+abb315(64)+abb315(54)+abb315(16)+abb315(47)+abb315(&
      &48)+abb315(21)+abb315(40)
      abb315(13)=4.0_ki*abb315(13)
      abb315(16)=spbl6k1*abb315(55)
      abb315(21)=abb315(16)-abb315(51)
      abb315(40)=-spak4l6*abb315(52)*abb315(21)
      abb315(44)=abb315(60)*abb315(44)
      abb315(47)=-abb315(52)*spbl6k1*abb315(28)
      abb315(44)=abb315(44)+abb315(47)
      abb315(44)=spak2l6*abb315(44)
      abb315(40)=abb315(44)+abb315(40)
      abb315(40)=spbl6l5*abb315(40)
      abb315(44)=-abb315(38)*abb315(35)
      abb315(39)=abb315(39)*abb315(22)
      abb315(39)=abb315(39)+abb315(44)
      abb315(39)=abb315(18)*abb315(39)
      abb315(32)=abb315(35)*abb315(32)
      abb315(44)=abb315(52)*spbl5k1
      abb315(47)=abb315(28)*abb315(44)
      abb315(32)=abb315(32)-abb315(47)
      abb315(47)=-spak1k2*spbl6k1*abb315(32)
      abb315(21)=spak1k4*abb315(44)*abb315(21)
      abb315(16)=-abb315(6)*abb315(16)
      abb315(16)=abb315(50)+abb315(16)
      abb315(16)=abb315(56)*abb315(38)*abb315(16)
      abb315(16)=abb315(16)+abb315(21)+abb315(47)+abb315(39)+abb315(40)
      abb315(16)=8.0_ki*abb315(16)
      abb315(21)=spak2k4**2
      abb315(39)=abb315(21)*abb315(17)
      abb315(40)=-abb315(35)*abb315(39)*mB
      abb315(47)=abb315(22)*abb315(17)*abb315(3)
      abb315(48)=abb315(21)*mB
      abb315(50)=abb315(48)*abb315(47)
      abb315(40)=abb315(50)+abb315(40)
      abb315(50)=abb315(40)*abb315(42)
      abb315(51)=-8.0_ki*spbk7l6*abb315(50)
      abb315(18)=abb315(48)*abb315(18)
      abb315(54)=abb315(35)*abb315(18)
      abb315(56)=abb315(3)*abb315(18)
      abb315(60)=abb315(22)*abb315(56)
      abb315(54)=abb315(54)-abb315(60)
      abb315(54)=16.0_ki*abb315(54)
      abb315(60)=abb315(10)*spbk7e7
      abb315(64)=abb315(65)*abb315(60)
      abb315(71)=abb315(64)*abb315(68)
      abb315(60)=abb315(28)*abb315(60)
      abb315(33)=abb315(61)*abb315(33)
      abb315(33)=abb315(60)-abb315(33)
      abb315(60)=abb315(33)*abb315(69)
      abb315(69)=abb315(40)*spbe7l6
      abb315(72)=abb315(69)*spae7k7
      abb315(73)=-spbk7k1*abb315(72)
      abb315(60)=abb315(73)+abb315(71)+abb315(60)
      abb315(60)=8.0_ki*abb315(60)
      abb315(71)=abb315(48)*abb315(6)
      abb315(73)=abb315(71)*spbl5k1
      abb315(74)=abb315(73)*abb315(15)
      abb315(56)=abb315(74)+abb315(56)
      abb315(56)=-abb315(56)*abb315(22)
      abb315(74)=abb315(14)*abb315(73)
      abb315(74)=abb315(18)+abb315(74)
      abb315(74)=c4*abb315(74)
      abb315(18)=abb315(25)*abb315(18)
      abb315(73)=abb315(73)*abb315(26)
      abb315(18)=abb315(18)+abb315(73)
      abb315(18)=c2*abb315(18)
      abb315(18)=abb315(18)+abb315(74)+abb315(56)
      abb315(18)=16.0_ki*abb315(18)
      abb315(15)=abb315(10)*abb315(15)
      abb315(15)=abb315(15)+abb315(20)
      abb315(15)=-abb315(15)*abb315(22)
      abb315(56)=abb315(14)*abb315(10)
      abb315(56)=abb315(19)+abb315(56)
      abb315(56)=c4*abb315(56)
      abb315(73)=abb315(25)*abb315(19)
      abb315(74)=abb315(10)*abb315(26)
      abb315(73)=abb315(73)+abb315(74)
      abb315(73)=c2*abb315(73)
      abb315(15)=abb315(73)+abb315(56)+abb315(15)
      abb315(15)=abb315(15)*abb315(24)
      abb315(24)=abb315(10)*abb315(28)
      abb315(24)=abb315(24)-abb315(36)
      abb315(36)=-abb315(24)*abb315(37)
      abb315(15)=abb315(36)+abb315(15)
      abb315(15)=spak1k2*abb315(15)
      abb315(20)=abb315(20)*abb315(22)
      abb315(22)=abb315(20)*spbk7e7
      abb315(36)=abb315(61)*abb315(19)
      abb315(22)=abb315(22)-abb315(36)
      abb315(36)=spak2k7*spak4e7
      abb315(36)=abb315(36)-abb315(68)
      abb315(22)=abb315(22)*abb315(36)
      abb315(19)=abb315(19)*abb315(35)
      abb315(19)=abb315(19)-abb315(20)
      abb315(19)=-abb315(19)*abb315(23)
      abb315(20)=abb315(8)*abb315(28)
      abb315(20)=abb315(20)-abb315(46)
      abb315(20)=abb315(20)*abb315(49)
      abb315(23)=abb315(8)*abb315(70)
      abb315(15)=abb315(15)+abb315(20)+abb315(23)+abb315(19)+abb315(22)
      abb315(15)=4.0_ki*abb315(15)
      abb315(19)=abb315(35)*abb315(17)
      abb315(19)=abb315(19)-abb315(47)
      abb315(19)=abb315(52)**2*mB*abb315(19)
      abb315(20)=-spbe7k1*abb315(19)
      abb315(22)=spak4k7*abb315(58)*abb315(65)
      abb315(23)=abb315(58)*abb315(28)
      abb315(23)=abb315(23)-abb315(66)
      abb315(23)=spak2k7*abb315(23)
      abb315(20)=abb315(23)+abb315(20)+abb315(22)
      abb315(20)=4.0_ki*abb315(20)
      abb315(22)=4.0_ki*abb315(40)
      abb315(22)=-spbe7k1*abb315(22)
      abb315(23)=spak2e7*abb315(29)
      abb315(29)=abb315(65)*spak4e7
      abb315(12)=-abb315(12)*abb315(29)
      abb315(37)=-spae7k7*abb315(41)
      abb315(12)=abb315(37)+abb315(23)+abb315(12)
      abb315(12)=4.0_ki*abb315(12)
      abb315(23)=spak2e7*abb315(24)
      abb315(10)=abb315(65)*abb315(10)
      abb315(37)=spak4e7*abb315(10)
      abb315(23)=abb315(23)+abb315(37)
      abb315(23)=4.0_ki*abb315(23)
      abb315(37)=abb315(57)*abb315(53)*abb315(65)
      abb315(40)=abb315(53)*abb315(28)
      abb315(41)=-abb315(59)*abb315(62)
      abb315(40)=abb315(41)+abb315(40)
      abb315(40)=abb315(40)*abb315(63)
      abb315(19)=spbe7l6*abb315(19)
      abb315(19)=abb315(19)+abb315(37)+abb315(40)
      abb315(19)=4.0_ki*abb315(19)
      abb315(37)=4.0_ki*abb315(69)
      abb315(40)=abb315(9)*spbk7e7
      abb315(41)=abb315(65)*abb315(40)
      abb315(46)=spbl6l5*abb315(41)*abb315(68)
      abb315(31)=abb315(31)*spbk3k2
      abb315(49)=-abb315(31)*abb315(61)
      abb315(40)=abb315(40)*abb315(28)
      abb315(40)=abb315(40)+abb315(49)
      abb315(49)=abb315(40)*abb315(63)
      abb315(53)=spak2e7*abb315(49)
      abb315(56)=spbk7l6*abb315(72)
      abb315(46)=abb315(56)+abb315(46)+abb315(53)
      abb315(46)=4.0_ki*abb315(46)
      abb315(48)=abb315(48)*abb315(14)*abb315(43)
      abb315(53)=-abb315(71)*abb315(55)
      abb315(48)=abb315(53)+abb315(48)
      abb315(53)=8.0_ki*spbl6l5
      abb315(48)=abb315(48)*abb315(53)
      abb315(44)=-8.0_ki*abb315(44)*abb315(65)
      abb315(53)=-abb315(53)*abb315(52)*abb315(65)
      abb315(56)=mB**3
      abb315(39)=-abb315(43)*abb315(56)*abb315(39)
      abb315(21)=abb315(6)*abb315(56)*abb315(21)
      abb315(56)=abb315(21)*abb315(47)
      abb315(39)=abb315(56)+abb315(39)
      abb315(39)=abb315(39)*abb315(7)
      abb315(56)=abb315(39)*spbk7k2
      abb315(42)=4.0_ki*abb315(42)
      abb315(42)=-abb315(56)*abb315(42)
      abb315(39)=spbk2k1*abb315(39)
      abb315(32)=abb315(39)+abb315(32)
      abb315(32)=8.0_ki*abb315(32)
      abb315(39)=spak4k7*abb315(41)
      abb315(40)=spak2k7*abb315(40)
      abb315(39)=abb315(39)+abb315(40)
      abb315(39)=4.0_ki*abb315(39)
      abb315(40)=abb315(65)*abb315(9)
      abb315(58)=-8.0_ki*abb315(40)
      abb315(17)=abb315(43)*abb315(17)
      abb315(43)=abb315(47)*abb315(6)
      abb315(17)=abb315(17)-abb315(43)
      abb315(17)=-abb315(36)*abb315(17)*abb315(67)
      abb315(36)=-abb315(41)*abb315(57)
      abb315(36)=abb315(36)-abb315(49)
      abb315(36)=spal6e7*abb315(36)
      abb315(41)=abb315(11)*abb315(9)
      abb315(43)=-abb315(41)*abb315(28)
      abb315(31)=abb315(31)*abb315(35)
      abb315(11)=abb315(11)*abb315(31)
      abb315(11)=abb315(43)+abb315(11)
      abb315(11)=spak2e7*abb315(11)
      abb315(29)=-abb315(41)*abb315(29)
      abb315(11)=abb315(11)+abb315(29)
      abb315(11)=spbe7l5*abb315(11)
      abb315(29)=-spak4k7*abb315(64)
      abb315(33)=-spak2k7*abb315(33)
      abb315(29)=abb315(29)+abb315(33)
      abb315(29)=spak1e7*abb315(29)
      abb315(33)=spbe7l6*spae7k7*abb315(56)
      abb315(11)=abb315(33)+abb315(29)+abb315(11)+abb315(36)+abb315(17)
      abb315(11)=4.0_ki*abb315(11)
      abb315(8)=abb315(52)+abb315(8)
      abb315(8)=-abb315(8)*abb315(27)
      abb315(17)=abb315(59)+abb315(30)
      abb315(27)=abb315(17)*abb315(34)
      abb315(8)=abb315(27)+abb315(8)
      abb315(8)=spbk3k2*abb315(8)
      abb315(17)=abb315(17)*abb315(45)
      abb315(27)=-spak4l6*abb315(40)
      abb315(8)=abb315(27)+abb315(17)+abb315(8)
      abb315(8)=spbl6l5*abb315(8)
      abb315(17)=abb315(38)*abb315(6)
      abb315(27)=abb315(17)+abb315(21)
      abb315(27)=abb315(27)*abb315(55)
      abb315(17)=abb315(14)*abb315(17)
      abb315(14)=-abb315(14)*abb315(21)
      abb315(14)=abb315(14)-abb315(17)
      abb315(14)=c4*abb315(14)
      abb315(21)=-abb315(21)*abb315(26)
      abb315(17)=-abb315(25)*abb315(17)
      abb315(17)=abb315(21)+abb315(17)
      abb315(17)=c2*abb315(17)
      abb315(14)=abb315(17)+abb315(14)+abb315(27)
      abb315(14)=abb315(5)*abb315(14)
      abb315(17)=spak1k2*abb315(24)
      abb315(10)=spak1k4*abb315(10)
      abb315(8)=abb315(10)+abb315(17)+abb315(14)+abb315(8)
      abb315(8)=8.0_ki*abb315(8)
      abb315(9)=abb315(28)*abb315(9)
      abb315(9)=abb315(9)-abb315(31)
      abb315(10)=spak2e7*abb315(9)
      abb315(14)=spak4e7*abb315(40)
      abb315(10)=abb315(10)+abb315(14)
      abb315(10)=4.0_ki*spbe7l5*abb315(10)
      abb315(9)=-8.0_ki*abb315(9)
      abb315(14)=4.0_ki*spbk7k1*abb315(50)
      R2d315=0.0_ki
      rat2 = rat2 + R2d315
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='315' value='", &
          & R2d315, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd315h3