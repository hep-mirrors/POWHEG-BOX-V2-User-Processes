module     p9_csbar_epnebbbarg_abbrevd76h1
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(89), public :: abb76
   complex(ki), public :: R2d76
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p9_csbar_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_color, only: TR
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb76(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb76(2)=sqrt(mB**2)
      abb76(3)=NC**(-1)
      abb76(4)=es71**(-1)
      abb76(5)=spak2l5**(-1)
      abb76(6)=spbl6k2**(-1)
      abb76(7)=spak2l6**(-1)
      abb76(8)=abb76(1)*i_*CVSC
      abb76(9)=TR*gW
      abb76(9)=abb76(9)**2
      abb76(10)=abb76(9)*abb76(4)*abb76(8)
      abb76(11)=abb76(10)*spbe7k1
      abb76(12)=abb76(3)**2
      abb76(12)=abb76(12)+1.0_ki
      abb76(13)=abb76(11)*abb76(12)
      abb76(14)=spak2k4*c4
      abb76(15)=abb76(13)*abb76(14)
      abb76(16)=2.0_ki*c1
      abb76(16)=abb76(16)*abb76(3)
      abb76(17)=abb76(11)*abb76(16)
      abb76(18)=abb76(17)*spak2k4
      abb76(19)=abb76(15)-abb76(18)
      abb76(20)=abb76(2)*abb76(6)
      abb76(21)=abb76(20)*mB
      abb76(22)=-abb76(21)*abb76(19)
      abb76(23)=abb76(22)*spbl5k2
      abb76(20)=abb76(5)*abb76(20)*mB**3
      abb76(24)=-abb76(19)*abb76(20)
      abb76(23)=abb76(23)-abb76(24)
      abb76(25)=-spak1e7*abb76(23)
      abb76(26)=spbk2k1*spak2k7
      abb76(27)=-abb76(25)*abb76(26)
      abb76(24)=abb76(24)*spae7k7
      abb76(28)=spbl5k2*spae7k7
      abb76(22)=abb76(22)*abb76(28)
      abb76(22)=abb76(24)-abb76(22)
      abb76(24)=-es712*abb76(22)
      abb76(29)=abb76(9)*abb76(12)
      abb76(30)=spbe7k1*abb76(8)
      abb76(31)=abb76(30)*abb76(29)
      abb76(32)=abb76(31)*abb76(21)
      abb76(33)=abb76(14)*abb76(32)
      abb76(9)=abb76(16)*abb76(9)
      abb76(30)=abb76(30)*abb76(9)
      abb76(34)=abb76(30)*abb76(21)
      abb76(35)=-spak2k4*abb76(34)
      abb76(33)=abb76(33)+abb76(35)
      abb76(33)=abb76(33)*abb76(28)
      abb76(31)=abb76(31)*abb76(14)
      abb76(30)=spak2k4*abb76(30)
      abb76(30)=-abb76(31)+abb76(30)
      abb76(30)=spae7k7*abb76(30)*abb76(20)
      abb76(24)=abb76(24)+abb76(27)+abb76(33)+abb76(30)
      abb76(24)=spbk7k3*abb76(24)
      abb76(27)=abb76(22)*spbk7k3
      abb76(25)=abb76(25)*spbk3k1
      abb76(30)=abb76(27)+abb76(25)
      abb76(30)=es12*abb76(30)
      abb76(31)=spbk7k2*spak1k2
      abb76(22)=-spbk3k1*abb76(22)*abb76(31)
      abb76(33)=spak1e7*spak2l6
      abb76(35)=abb76(33)*spbk2k1
      abb76(36)=spae7k7*spak2l6
      abb76(37)=abb76(36)*spbk7k2
      abb76(35)=abb76(35)-abb76(37)
      abb76(37)=spbl6k3*abb76(23)*abb76(35)
      abb76(22)=abb76(37)+abb76(30)+abb76(22)+abb76(24)
      abb76(22)=4.0_ki*abb76(22)
      abb76(12)=abb76(10)*abb76(12)
      abb76(14)=abb76(12)*abb76(14)
      abb76(10)=abb76(16)*abb76(10)
      abb76(24)=abb76(10)*spak2k4
      abb76(14)=abb76(14)-abb76(24)
      abb76(20)=abb76(14)*abb76(20)
      abb76(24)=abb76(14)*spbl5k2
      abb76(30)=abb76(21)*abb76(24)
      abb76(20)=abb76(20)-abb76(30)
      abb76(30)=spbk3k2*abb76(20)
      abb76(37)=abb76(21)*spbl5k3
      abb76(38)=abb76(37)*abb76(10)
      abb76(39)=spbl5k3*c4
      abb76(40)=abb76(12)*abb76(39)
      abb76(41)=abb76(40)*abb76(21)
      abb76(38)=abb76(38)-abb76(41)
      abb76(41)=spak1k4*abb76(38)*spbk2k1
      abb76(42)=abb76(10)*spbl5k3
      abb76(40)=abb76(40)-abb76(42)
      abb76(42)=abb76(2)*mB
      abb76(43)=abb76(40)*abb76(42)
      abb76(44)=-spak4l6*abb76(43)
      abb76(30)=abb76(30)-abb76(41)+abb76(44)
      abb76(30)=spak2k7*abb76(30)
      abb76(38)=abb76(38)*spak4k7
      abb76(44)=es712-es12
      abb76(45)=-abb76(38)*abb76(44)
      abb76(29)=abb76(39)*abb76(21)*abb76(29)
      abb76(9)=abb76(37)*abb76(9)
      abb76(9)=abb76(9)-abb76(29)
      abb76(8)=abb76(8)*abb76(9)
      abb76(9)=spak4k7*abb76(8)
      abb76(9)=abb76(9)+abb76(30)+abb76(45)
      abb76(29)=8.0_ki*spbk7k1
      abb76(9)=abb76(9)*abb76(29)
      abb76(30)=abb76(13)*abb76(39)
      abb76(39)=abb76(17)*spbl5k3
      abb76(45)=abb76(30)-abb76(39)
      abb76(46)=-abb76(21)*abb76(45)
      abb76(47)=abb76(46)*spak1k4
      abb76(48)=abb76(47)*spak2e7
      abb76(18)=abb76(37)*abb76(18)
      abb76(15)=abb76(15)*abb76(37)
      abb76(18)=abb76(18)-abb76(15)
      abb76(49)=abb76(18)*spak1e7
      abb76(48)=abb76(48)-abb76(49)
      abb76(48)=abb76(48)*spbk2k1
      abb76(50)=abb76(46)*spak4k7
      abb76(51)=abb76(50)*spak2e7
      abb76(18)=abb76(18)*spae7k7
      abb76(51)=abb76(51)-abb76(18)
      abb76(51)=abb76(51)*spbk7k2
      abb76(52)=abb76(23)*spbk3k2
      abb76(42)=-abb76(42)*abb76(45)
      abb76(53)=abb76(42)*spak4l6
      abb76(52)=abb76(53)+abb76(52)
      abb76(52)=abb76(52)*spak2e7
      abb76(48)=-abb76(52)+abb76(48)-abb76(51)
      abb76(51)=mB**2
      abb76(52)=-abb76(51)*abb76(19)*abb76(5)
      abb76(53)=abb76(19)*spbl5k2
      abb76(53)=abb76(52)+abb76(53)
      abb76(54)=abb76(36)*abb76(53)
      abb76(55)=abb76(54)*spbk7k3
      abb76(56)=abb76(55)+abb76(48)
      abb76(56)=8.0_ki*abb76(56)
      abb76(57)=abb76(40)*spak2l6
      abb76(58)=spak4k7*spbk7k1
      abb76(59)=-16.0_ki*abb76(57)*abb76(58)
      abb76(49)=-spbk2k1*abb76(49)
      abb76(18)=spbk7k2*abb76(18)
      abb76(18)=abb76(49)+abb76(18)
      abb76(18)=8.0_ki*abb76(18)
      abb76(49)=16.0_ki*spak4l6
      abb76(60)=spbk7k1*spak2k7*abb76(40)*abb76(49)
      abb76(61)=abb76(45)*spak2e7
      abb76(49)=abb76(49)*abb76(61)
      abb76(62)=-spak1e7*abb76(50)
      abb76(63)=spae7k7*abb76(47)
      abb76(62)=abb76(63)+abb76(62)
      abb76(62)=spbk7k1*abb76(62)
      abb76(63)=spbk7l6*spae7k7
      abb76(64)=-spbl6k1*spak1e7
      abb76(63)=abb76(64)+abb76(63)
      abb76(46)=abb76(46)*spak4l6*abb76(63)
      abb76(25)=abb76(25)-abb76(27)+abb76(46)+abb76(62)
      abb76(25)=8.0_ki*abb76(25)
      abb76(27)=abb76(33)*abb76(53)
      abb76(46)=abb76(27)*spbk3k1
      abb76(48)=abb76(46)-abb76(48)
      abb76(48)=8.0_ki*abb76(48)
      abb76(62)=abb76(6)*spak2k4
      abb76(63)=abb76(51)*abb76(62)
      abb76(64)=abb76(63)*spbl5k3
      abb76(37)=abb76(37)*spak2k4
      abb76(37)=abb76(37)+abb76(64)
      abb76(11)=abb76(16)*abb76(11)*abb76(37)
      abb76(16)=abb76(30)*abb76(63)
      abb76(11)=abb76(11)-abb76(15)-abb76(16)
      abb76(15)=spbk2k1*spak1e7
      abb76(30)=-spbk7k2*spae7k7
      abb76(15)=abb76(30)+abb76(15)
      abb76(11)=abb76(11)*abb76(15)
      abb76(15)=spbl6k1*spak4l6
      abb76(15)=abb76(15)+abb76(58)
      abb76(15)=abb76(33)*abb76(15)
      abb76(30)=-spak1k4*spbk7k1
      abb76(37)=-spbk7l6*spak4l6
      abb76(30)=abb76(37)+abb76(30)
      abb76(30)=abb76(36)*abb76(30)
      abb76(15)=abb76(30)+abb76(15)
      abb76(15)=abb76(45)*abb76(15)
      abb76(11)=abb76(46)-abb76(55)+abb76(15)+abb76(11)
      abb76(11)=4.0_ki*abb76(11)
      abb76(15)=8.0_ki*abb76(45)
      abb76(30)=abb76(15)*spak2l6
      abb76(37)=abb76(30)*spak4k7
      abb76(30)=abb76(30)*spak4l6
      abb76(46)=spak2l6*abb76(53)
      abb76(55)=8.0_ki*abb76(46)
      abb76(39)=abb76(63)*abb76(39)
      abb76(16)=abb76(39)-abb76(16)
      abb76(39)=8.0_ki*abb76(16)
      abb76(58)=spbk7e7*spak2k7
      abb76(20)=-abb76(20)*abb76(58)
      abb76(23)=spak1k2*abb76(23)
      abb76(20)=abb76(20)+abb76(23)
      abb76(20)=spbk3k2*abb76(20)
      abb76(23)=abb76(43)*abb76(58)
      abb76(42)=spak1k2*abb76(42)
      abb76(23)=abb76(23)+abb76(42)
      abb76(23)=spak4l6*abb76(23)
      abb76(38)=abb76(38)*spbk7e7
      abb76(42)=-abb76(38)-abb76(47)
      abb76(42)=es12*abb76(42)
      abb76(43)=spak4k7*spbk7e7
      abb76(8)=-abb76(8)*abb76(43)
      abb76(41)=abb76(58)*abb76(41)
      abb76(47)=abb76(50)*abb76(31)
      abb76(38)=es712*abb76(38)
      abb76(8)=abb76(38)+abb76(42)+abb76(20)+abb76(47)+abb76(41)+abb76(8)+abb76&
      &(23)
      abb76(8)=4.0_ki*abb76(8)
      abb76(20)=abb76(57)*abb76(43)
      abb76(23)=spak1k4*spak2l6*abb76(45)
      abb76(20)=abb76(20)+abb76(23)
      abb76(20)=8.0_ki*abb76(20)
      abb76(23)=abb76(45)*spak1k2
      abb76(38)=abb76(58)*abb76(40)
      abb76(23)=abb76(23)-abb76(38)
      abb76(38)=8.0_ki*spak4l6*abb76(23)
      abb76(41)=abb76(57)*abb76(29)
      abb76(42)=-spak4l6*abb76(41)
      abb76(43)=4.0_ki*spbk7e7
      abb76(47)=abb76(43)*abb76(57)
      abb76(50)=spak4l6*abb76(47)
      abb76(14)=abb76(5)*abb76(51)*abb76(14)
      abb76(14)=abb76(14)-abb76(24)
      abb76(24)=abb76(14)*spak2l6
      abb76(57)=abb76(24)*abb76(29)
      abb76(24)=-abb76(24)*abb76(43)
      abb76(64)=-abb76(63)*abb76(40)
      abb76(65)=-abb76(64)*abb76(29)
      abb76(66)=abb76(64)*abb76(43)
      abb76(27)=4.0_ki*spbk7k3*abb76(27)
      abb76(41)=-spak1k4*abb76(41)
      abb76(47)=spak1k4*abb76(47)
      abb76(52)=abb76(52)*spae7k7
      abb76(67)=abb76(19)*abb76(28)
      abb76(52)=abb76(52)+abb76(67)
      abb76(67)=spbk7k3*spak2k7
      abb76(68)=spbk3k1*spak1k2
      abb76(67)=abb76(67)-abb76(68)
      abb76(67)=4.0_ki*abb76(67)
      abb76(52)=-abb76(52)*abb76(67)
      abb76(68)=abb76(29)*spak2k7
      abb76(40)=abb76(40)*abb76(68)
      abb76(69)=spak4k7*abb76(40)
      abb76(70)=abb76(61)*spak4k7
      abb76(19)=-spbl5k3*abb76(19)
      abb76(71)=abb76(19)*spae7k7
      abb76(70)=abb76(70)+abb76(71)
      abb76(70)=8.0_ki*abb76(70)
      abb76(72)=-8.0_ki*abb76(71)
      abb76(73)=abb76(16)*abb76(7)
      abb76(74)=8.0_ki*abb76(73)
      abb76(75)=-spae7k7*abb76(74)
      abb76(71)=4.0_ki*abb76(71)
      abb76(23)=4.0_ki*abb76(23)
      abb76(76)=spak4k7*abb76(23)
      abb76(77)=-abb76(14)*abb76(68)
      abb76(78)=8.0_ki*spak2e7
      abb76(79)=abb76(53)*abb76(78)
      abb76(14)=abb76(14)*abb76(58)
      abb76(80)=spak1k2*abb76(53)
      abb76(14)=abb76(14)+abb76(80)
      abb76(14)=4.0_ki*abb76(14)
      abb76(80)=abb76(7)*abb76(64)*abb76(68)
      abb76(73)=abb76(73)*abb76(78)
      abb76(81)=spak1k2*abb76(16)
      abb76(64)=-abb76(64)*abb76(58)
      abb76(64)=abb76(64)+abb76(81)
      abb76(64)=4.0_ki*abb76(7)*abb76(64)
      abb76(53)=-abb76(53)*spak1e7*abb76(67)
      abb76(40)=spak1k4*abb76(40)
      abb76(61)=abb76(61)*spak1k4
      abb76(19)=abb76(19)*spak1e7
      abb76(61)=abb76(61)+abb76(19)
      abb76(61)=8.0_ki*abb76(61)
      abb76(67)=-8.0_ki*abb76(19)
      abb76(74)=-spak1e7*abb76(74)
      abb76(19)=4.0_ki*abb76(19)
      abb76(23)=spak1k4*abb76(23)
      abb76(81)=abb76(15)*abb76(36)
      abb76(51)=abb76(51)*abb76(6)
      abb76(82)=abb76(45)*abb76(51)
      abb76(82)=8.0_ki*abb76(82)
      abb76(83)=-spae7k7*abb76(82)
      abb76(45)=4.0_ki*abb76(45)
      abb76(84)=abb76(36)*abb76(45)
      abb76(32)=-c4*abb76(32)
      abb76(32)=abb76(32)+abb76(34)
      abb76(32)=spae7k7*abb76(32)
      abb76(13)=abb76(13)*c4
      abb76(13)=abb76(13)-abb76(17)
      abb76(17)=abb76(21)*abb76(13)
      abb76(34)=abb76(17)*spak1e7
      abb76(26)=abb76(34)*abb76(26)
      abb76(26)=abb76(32)+abb76(26)
      abb76(26)=spbk7l5*abb76(26)
      abb76(32)=abb76(17)*spae7k7
      abb76(31)=abb76(32)*abb76(31)
      abb76(85)=-es12*abb76(34)
      abb76(31)=abb76(31)+abb76(85)
      abb76(31)=spbl5k1*abb76(31)
      abb76(32)=abb76(32)*spbk7l5
      abb76(44)=abb76(32)*abb76(44)
      abb76(35)=spbl6l5*abb76(17)*abb76(35)
      abb76(26)=abb76(35)+abb76(31)+abb76(26)+abb76(44)
      abb76(26)=4.0_ki*abb76(26)
      abb76(12)=abb76(12)*c4
      abb76(10)=abb76(12)-abb76(10)
      abb76(12)=spbl5k2*abb76(10)*abb76(21)
      abb76(21)=abb76(68)*abb76(12)
      abb76(31)=abb76(13)*spbk7l5
      abb76(35)=abb76(31)*abb76(36)
      abb76(17)=abb76(17)*spbl5k2
      abb76(44)=abb76(17)*spak2e7
      abb76(85)=-abb76(44)-abb76(35)
      abb76(85)=8.0_ki*abb76(85)
      abb76(34)=-spbl5k1*abb76(34)
      abb76(32)=abb76(32)+abb76(34)
      abb76(32)=8.0_ki*abb76(32)
      abb76(34)=abb76(13)*spbl5k1
      abb76(86)=abb76(34)*abb76(33)
      abb76(44)=abb76(44)-abb76(86)
      abb76(44)=8.0_ki*abb76(44)
      abb76(35)=abb76(35)-abb76(86)
      abb76(35)=4.0_ki*abb76(35)
      abb76(86)=abb76(13)*spak2l6
      abb76(87)=8.0_ki*abb76(86)
      abb76(12)=-abb76(58)*abb76(12)
      abb76(17)=spak1k2*abb76(17)
      abb76(12)=abb76(12)+abb76(17)
      abb76(12)=4.0_ki*abb76(12)
      abb76(17)=abb76(10)*spak2l6
      abb76(29)=abb76(29)*abb76(17)
      abb76(17)=-abb76(43)*abb76(17)
      abb76(43)=-4.0_ki*abb76(33)*abb76(31)
      abb76(88)=abb76(34)*spak1k2
      abb76(31)=abb76(31)*spak2k7
      abb76(31)=abb76(88)-abb76(31)
      abb76(31)=4.0_ki*abb76(31)
      abb76(88)=-spae7k7*abb76(31)
      abb76(68)=-abb76(10)*abb76(68)
      abb76(78)=abb76(13)*abb76(78)
      abb76(10)=abb76(10)*abb76(58)
      abb76(58)=-spak1k2*abb76(13)
      abb76(10)=abb76(10)+abb76(58)
      abb76(10)=4.0_ki*abb76(10)
      abb76(31)=-spak1e7*abb76(31)
      abb76(15)=abb76(15)*abb76(33)
      abb76(58)=-spak1e7*abb76(82)
      abb76(33)=abb76(33)*abb76(45)
      abb76(63)=abb76(13)*abb76(63)
      abb76(82)=-abb76(63)*abb76(28)
      abb76(62)=abb76(5)*abb76(13)*abb76(62)*mB**4
      abb76(89)=spae7k7*abb76(62)
      abb76(82)=abb76(82)+abb76(89)
      abb76(89)=4.0_ki*spbk3k2
      abb76(82)=abb76(82)*abb76(89)
      abb76(13)=-abb76(51)*abb76(13)
      abb76(13)=4.0_ki*abb76(13)
      abb76(28)=-abb76(28)*abb76(13)
      abb76(51)=-spbl5k2*abb76(63)
      abb76(51)=abb76(51)+abb76(62)
      abb76(51)=abb76(89)*spak1e7*abb76(51)
      abb76(13)=-spbl5k2*spak1e7*abb76(13)
      abb76(54)=4.0_ki*spbk3k1*abb76(54)
      abb76(45)=abb76(45)*spak2l6
      abb76(62)=spak4k7*abb76(45)
      abb76(34)=-4.0_ki*abb76(36)*abb76(34)
      abb76(36)=spak4l6*abb76(45)
      abb76(45)=-4.0_ki*abb76(86)
      abb76(46)=4.0_ki*abb76(46)
      abb76(16)=4.0_ki*abb76(16)
      R2d76=0.0_ki
      rat2 = rat2 + R2d76
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='76' value='", &
          & R2d76, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd76h1
