module     p5_usbar_epnebbbarg_abbrevd120h0
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(85), public :: abb120
   complex(ki), public :: R2d120
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
      abb120(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb120(2)=1.0_ki/(mB**2-es67-es56+es567)
      abb120(3)=NC**(-1)
      abb120(4)=es234**(-1)
      abb120(5)=spbl5k2**(-1)
      abb120(6)=spbl6k2**(-1)
      abb120(7)=spak2l6**(-1)
      abb120(8)=spak2l5**(-1)
      abb120(9)=sqrt(mB**2)
      abb120(10)=spak2k4**2
      abb120(11)=TR*gW
      abb120(11)=abb120(11)**2
      abb120(12)=abb120(10)*abb120(11)
      abb120(13)=spal5e7*abb120(12)
      abb120(14)=abb120(3)**2
      abb120(14)=abb120(14)+1.0_ki
      abb120(15)=abb120(4)*i_*CVSU*abb120(2)*abb120(1)
      abb120(16)=abb120(15)*abb120(14)*abb120(13)
      abb120(17)=mB**2
      abb120(18)=abb120(17)*abb120(16)
      abb120(19)=abb120(18)*abb120(9)
      abb120(20)=spbk4k3*c2
      abb120(21)=-abb120(20)*abb120(19)
      abb120(22)=abb120(15)*abb120(3)
      abb120(13)=abb120(13)*abb120(22)
      abb120(23)=abb120(13)*abb120(17)
      abb120(24)=2.0_ki*c1
      abb120(25)=abb120(24)*abb120(9)
      abb120(26)=abb120(23)*abb120(25)
      abb120(27)=spbk4k3*abb120(26)
      abb120(21)=abb120(21)+abb120(27)
      abb120(27)=spbk2k1*abb120(6)
      abb120(21)=abb120(7)*abb120(27)*abb120(21)
      abb120(28)=spak2k4*abb120(15)*abb120(11)
      abb120(29)=abb120(28)*abb120(3)
      abb120(30)=abb120(29)*abb120(24)
      abb120(31)=abb120(30)*abb120(9)
      abb120(32)=abb120(31)*spal5e7
      abb120(33)=abb120(32)*spbk4k3
      abb120(34)=abb120(28)*abb120(14)
      abb120(35)=spal5e7*abb120(34)
      abb120(36)=abb120(35)*abb120(9)
      abb120(37)=abb120(36)*abb120(20)
      abb120(33)=abb120(33)-abb120(37)
      abb120(38)=spak4l6*spbl6k1
      abb120(39)=-abb120(33)*abb120(38)
      abb120(32)=abb120(32)*spbk3k2
      abb120(40)=spbk3k2*c2
      abb120(41)=abb120(36)*abb120(40)
      abb120(32)=abb120(32)-abb120(41)
      abb120(41)=spak2l6*spbl6k1
      abb120(42)=-abb120(32)*abb120(41)
      abb120(21)=abb120(42)+abb120(21)+abb120(39)
      abb120(21)=spbe7k1*abb120(21)
      abb120(12)=abb120(14)*abb120(15)*abb120(12)
      abb120(15)=mB**3
      abb120(39)=abb120(15)*abb120(12)
      abb120(42)=abb120(5)*spbe7k2
      abb120(43)=abb120(42)*spbk4k3
      abb120(44)=abb120(43)*c2
      abb120(45)=abb120(44)*abb120(27)
      abb120(46)=-abb120(39)*abb120(45)
      abb120(10)=abb120(10)*abb120(22)*abb120(11)
      abb120(11)=abb120(15)*abb120(10)
      abb120(22)=abb120(27)*abb120(43)
      abb120(47)=abb120(24)*abb120(22)*abb120(11)
      abb120(46)=abb120(46)+abb120(47)
      abb120(46)=spae7k7*abb120(7)*abb120(46)
      abb120(47)=abb120(30)*mB
      abb120(48)=abb120(47)*abb120(43)
      abb120(49)=mB*abb120(34)
      abb120(50)=abb120(49)*abb120(44)
      abb120(48)=abb120(48)-abb120(50)
      abb120(50)=abb120(48)*spae7k7
      abb120(51)=-abb120(38)*abb120(50)
      abb120(52)=abb120(40)*abb120(42)
      abb120(53)=abb120(49)*abb120(52)
      abb120(42)=abb120(42)*spbk3k2
      abb120(47)=abb120(47)*abb120(42)
      abb120(47)=abb120(47)-abb120(53)
      abb120(53)=abb120(47)*spae7k7
      abb120(54)=-abb120(41)*abb120(53)
      abb120(46)=abb120(54)+abb120(46)+abb120(51)
      abb120(46)=spbk7k1*abb120(46)
      abb120(51)=abb120(15)*abb120(16)
      abb120(54)=abb120(51)*abb120(44)
      abb120(55)=abb120(54)*abb120(27)
      abb120(56)=abb120(13)*abb120(15)
      abb120(57)=abb120(56)*abb120(24)
      abb120(58)=abb120(57)*abb120(22)
      abb120(55)=abb120(55)-abb120(58)
      abb120(58)=abb120(7)*abb120(55)
      abb120(28)=abb120(28)*spal5e7*mB
      abb120(59)=abb120(28)*abb120(3)
      abb120(60)=abb120(24)*abb120(59)
      abb120(61)=abb120(60)*abb120(43)
      abb120(14)=abb120(28)*abb120(14)
      abb120(28)=abb120(14)*abb120(44)
      abb120(28)=abb120(61)-abb120(28)
      abb120(61)=abb120(28)*abb120(38)
      abb120(62)=abb120(52)*abb120(14)
      abb120(63)=abb120(60)*abb120(42)
      abb120(62)=abb120(63)-abb120(62)
      abb120(63)=abb120(62)*abb120(41)
      abb120(58)=abb120(63)+abb120(58)+abb120(61)
      abb120(58)=spbl5k1*abb120(58)
      abb120(21)=abb120(58)+abb120(21)+abb120(46)
      abb120(21)=spak1l6*abb120(21)
      abb120(46)=abb120(27)**2
      abb120(58)=abb120(46)*abb120(20)
      abb120(61)=abb120(58)*abb120(51)
      abb120(63)=abb120(46)*spbk4k3
      abb120(57)=abb120(63)*abb120(57)
      abb120(57)=abb120(61)-abb120(57)
      abb120(57)=abb120(57)*abb120(7)
      abb120(61)=abb120(14)*abb120(20)
      abb120(64)=abb120(27)*abb120(61)
      abb120(65)=abb120(60)*abb120(27)
      abb120(66)=abb120(65)*spbk4k3
      abb120(64)=abb120(64)-abb120(66)
      abb120(66)=abb120(38)*abb120(64)
      abb120(67)=abb120(14)*abb120(40)
      abb120(68)=abb120(67)*abb120(27)
      abb120(65)=abb120(65)*spbk3k2
      abb120(65)=abb120(68)-abb120(65)
      abb120(68)=abb120(65)*abb120(41)
      abb120(57)=abb120(57)-abb120(66)-abb120(68)
      abb120(66)=-spak1k7*abb120(57)
      abb120(68)=abb120(15)*abb120(35)
      abb120(58)=abb120(58)*abb120(68)
      abb120(15)=abb120(15)*abb120(30)*spal5e7
      abb120(30)=abb120(63)*abb120(15)
      abb120(30)=abb120(58)-abb120(30)
      abb120(30)=abb120(30)*spak1k4
      abb120(58)=spbk2k1*abb120(6)**2
      abb120(63)=abb120(68)*abb120(58)
      abb120(40)=abb120(63)*abb120(40)
      abb120(69)=abb120(15)*abb120(58)
      abb120(70)=abb120(69)*spbk3k2
      abb120(40)=abb120(40)-abb120(70)
      abb120(70)=abb120(40)*es12
      abb120(30)=abb120(30)+abb120(70)
      abb120(30)=abb120(30)*abb120(7)
      abb120(70)=spak2k7*abb120(30)
      abb120(71)=abb120(60)*spbk3k2
      abb120(67)=abb120(67)-abb120(71)
      abb120(67)=abb120(6)*abb120(67)
      abb120(71)=es12*spbl6k1
      abb120(72)=abb120(71)*abb120(67)
      abb120(73)=spak1k4*spbl6k1
      abb120(74)=abb120(73)*abb120(64)
      abb120(72)=abb120(72)+abb120(74)
      abb120(74)=spal6k7*abb120(72)
      abb120(66)=abb120(74)+abb120(66)+abb120(70)
      abb120(66)=spbk7e7*abb120(66)
      abb120(57)=spak1l5*abb120(57)
      abb120(30)=-spak2l5*abb120(30)
      abb120(70)=spal5l6*abb120(72)
      abb120(30)=abb120(70)+abb120(57)+abb120(30)
      abb120(30)=spbe7l5*abb120(30)
      abb120(57)=spbe7k1*abb120(9)**2
      abb120(70)=abb120(64)*abb120(57)
      abb120(72)=abb120(31)*abb120(17)
      abb120(74)=abb120(22)*abb120(72)
      abb120(75)=abb120(17)*abb120(34)
      abb120(76)=abb120(44)*abb120(9)
      abb120(77)=abb120(75)*abb120(76)
      abb120(78)=abb120(77)*abb120(27)
      abb120(78)=abb120(78)-abb120(74)
      abb120(79)=spbk7k1*spae7k7
      abb120(80)=abb120(78)*abb120(79)
      abb120(74)=spal5e7*abb120(74)
      abb120(35)=abb120(17)*abb120(35)
      abb120(81)=abb120(35)*abb120(76)
      abb120(82)=-abb120(27)*abb120(81)
      abb120(74)=abb120(82)+abb120(74)
      abb120(74)=spbl5k1*abb120(74)
      abb120(70)=abb120(74)+abb120(70)+abb120(80)
      abb120(70)=spak1k4*abb120(70)
      abb120(74)=abb120(9)*abb120(6)
      abb120(80)=abb120(74)*abb120(52)
      abb120(82)=abb120(35)*abb120(80)
      abb120(42)=abb120(72)*abb120(42)
      abb120(83)=abb120(6)*abb120(42)
      abb120(84)=abb120(83)*spal5e7
      abb120(82)=abb120(84)-abb120(82)
      abb120(82)=abb120(82)*spbl5k1
      abb120(80)=abb120(80)*abb120(75)
      abb120(80)=abb120(80)-abb120(83)
      abb120(83)=abb120(80)*abb120(79)
      abb120(84)=abb120(67)*abb120(57)
      abb120(82)=abb120(82)+abb120(83)+abb120(84)
      abb120(83)=es12*abb120(82)
      abb120(45)=abb120(68)*abb120(45)
      abb120(22)=-abb120(22)*abb120(15)
      abb120(22)=abb120(45)+abb120(22)
      abb120(22)=spak1k4*abb120(22)*abb120(41)
      abb120(45)=abb120(43)*abb120(24)
      abb120(13)=abb120(13)*abb120(45)
      abb120(16)=abb120(44)*abb120(16)
      abb120(13)=abb120(13)-abb120(16)
      abb120(13)=abb120(58)*abb120(13)*mB**5
      abb120(16)=-abb120(7)*abb120(13)
      abb120(84)=abb120(44)*abb120(6)
      abb120(68)=-abb120(68)*abb120(84)
      abb120(85)=abb120(43)*abb120(6)
      abb120(15)=abb120(15)*abb120(85)
      abb120(15)=abb120(68)+abb120(15)
      abb120(15)=abb120(15)*abb120(38)
      abb120(15)=abb120(16)+abb120(15)
      abb120(15)=es12*abb120(15)
      abb120(15)=abb120(22)+abb120(15)
      abb120(15)=abb120(8)*abb120(15)
      abb120(16)=mB**4
      abb120(22)=abb120(16)*abb120(76)
      abb120(12)=abb120(12)*abb120(22)
      abb120(16)=abb120(16)*abb120(43)
      abb120(10)=-abb120(25)*abb120(16)*abb120(10)
      abb120(10)=abb120(12)+abb120(10)
      abb120(10)=abb120(7)*abb120(46)*abb120(10)
      abb120(12)=-abb120(78)*abb120(38)
      abb120(38)=-abb120(75)*abb120(52)*abb120(9)
      abb120(38)=abb120(38)+abb120(42)
      abb120(27)=abb120(41)*abb120(27)*abb120(38)
      abb120(10)=abb120(27)+abb120(10)+abb120(12)
      abb120(10)=spak1e7*abb120(10)
      abb120(12)=-abb120(78)*abb120(73)
      abb120(27)=-abb120(80)*abb120(71)
      abb120(12)=abb120(12)+abb120(27)
      abb120(12)=spal6e7*abb120(12)
      abb120(10)=abb120(12)+abb120(10)+abb120(21)+abb120(15)+abb120(70)+abb120(&
      &83)+abb120(30)+abb120(66)
      abb120(10)=4.0_ki*abb120(10)
      abb120(12)=abb120(33)*spak4l6
      abb120(15)=abb120(32)*spak2l6
      abb120(12)=abb120(12)+abb120(15)
      abb120(15)=abb120(12)*spbe7k1
      abb120(21)=abb120(28)*spak4l6
      abb120(27)=abb120(62)*spak2l6
      abb120(21)=abb120(21)+abb120(27)
      abb120(27)=abb120(21)*spbl5k1
      abb120(30)=abb120(53)*spak2l6
      abb120(38)=abb120(50)*spak4l6
      abb120(30)=abb120(30)+abb120(38)
      abb120(38)=abb120(30)*spbk7k1
      abb120(15)=abb120(38)+abb120(15)-abb120(27)
      abb120(27)=-8.0_ki*abb120(15)
      abb120(13)=-abb120(8)*abb120(13)
      abb120(22)=-abb120(34)*abb120(22)
      abb120(16)=abb120(31)*abb120(16)
      abb120(16)=abb120(22)+abb120(16)
      abb120(16)=spak4e7*abb120(58)*abb120(16)
      abb120(20)=abb120(63)*abb120(20)
      abb120(22)=abb120(69)*spbk4k3
      abb120(20)=abb120(20)-abb120(22)
      abb120(22)=spak4k7*spbk7e7
      abb120(31)=spak4l5*spbe7l5
      abb120(22)=abb120(22)-abb120(31)
      abb120(20)=abb120(20)*abb120(22)
      abb120(31)=spak2k7*spbk7e7
      abb120(34)=spak2l5*spbe7l5
      abb120(31)=abb120(31)-abb120(34)
      abb120(34)=abb120(40)*abb120(31)
      abb120(13)=abb120(16)+abb120(13)+abb120(34)+abb120(20)
      abb120(13)=abb120(7)*abb120(13)
      abb120(13)=abb120(13)+abb120(82)
      abb120(13)=8.0_ki*abb120(13)
      abb120(16)=abb120(55)*abb120(8)
      abb120(20)=abb120(78)*spak4e7
      abb120(34)=abb120(22)*abb120(64)
      abb120(38)=abb120(31)*abb120(65)
      abb120(16)=abb120(34)-abb120(20)+abb120(16)+abb120(38)
      abb120(15)=-abb120(15)+abb120(16)
      abb120(15)=8.0_ki*abb120(15)
      abb120(16)=8.0_ki*abb120(16)
      abb120(20)=abb120(54)*abb120(6)
      abb120(34)=abb120(45)*abb120(6)
      abb120(38)=abb120(34)*abb120(56)
      abb120(20)=abb120(20)-abb120(38)
      abb120(38)=abb120(8)*abb120(20)
      abb120(40)=abb120(6)*spbk4k3
      abb120(41)=abb120(60)*abb120(40)
      abb120(42)=abb120(40)*c2
      abb120(46)=abb120(42)*abb120(14)
      abb120(41)=abb120(41)-abb120(46)
      abb120(46)=-abb120(41)*abb120(22)
      abb120(52)=abb120(67)*abb120(31)
      abb120(55)=abb120(77)*abb120(6)
      abb120(58)=abb120(72)*abb120(85)
      abb120(55)=abb120(55)-abb120(58)
      abb120(60)=-spak4e7*abb120(55)
      abb120(38)=abb120(60)+abb120(38)+abb120(52)+abb120(46)
      abb120(38)=spbl6k1*abb120(38)
      abb120(39)=abb120(39)*abb120(84)
      abb120(11)=abb120(11)*abb120(34)
      abb120(11)=abb120(39)-abb120(11)
      abb120(34)=-abb120(11)*abb120(79)
      abb120(20)=spbl5k1*abb120(20)
      abb120(19)=-abb120(42)*abb120(19)
      abb120(26)=abb120(40)*abb120(26)
      abb120(19)=abb120(19)+abb120(26)
      abb120(19)=spbe7k1*abb120(19)
      abb120(19)=abb120(20)+abb120(19)+abb120(34)
      abb120(19)=abb120(7)*abb120(19)
      abb120(19)=abb120(38)+abb120(19)
      abb120(19)=4.0_ki*abb120(19)
      abb120(20)=abb120(40)*spbe7k2
      abb120(26)=-abb120(51)*abb120(20)
      abb120(34)=abb120(20)*abb120(9)
      abb120(38)=abb120(18)*abb120(34)
      abb120(26)=abb120(26)+abb120(38)
      abb120(26)=c2*abb120(26)
      abb120(38)=spbk7k2*spae7k7
      abb120(11)=abb120(11)*abb120(38)
      abb120(39)=abb120(56)*abb120(20)
      abb120(40)=-abb120(34)*abb120(23)
      abb120(39)=abb120(39)+abb120(40)
      abb120(39)=abb120(39)*abb120(24)
      abb120(11)=abb120(11)+abb120(39)+abb120(26)
      abb120(11)=abb120(7)*abb120(11)
      abb120(26)=-spbe7k1*abb120(33)
      abb120(39)=-abb120(48)*abb120(79)
      abb120(40)=spbl5k1*abb120(28)
      abb120(26)=abb120(40)+abb120(26)+abb120(39)
      abb120(26)=spak1k4*abb120(26)
      abb120(18)=abb120(18)*abb120(76)
      abb120(23)=-abb120(9)*abb120(23)
      abb120(23)=abb120(56)+abb120(23)
      abb120(23)=abb120(23)*abb120(45)
      abb120(18)=abb120(23)-abb120(54)+abb120(18)
      abb120(18)=abb120(8)*abb120(18)
      abb120(23)=-spbe7k1*abb120(32)
      abb120(39)=-abb120(47)*abb120(79)
      abb120(40)=spbl5k1*abb120(62)
      abb120(23)=abb120(40)+abb120(23)+abb120(39)
      abb120(23)=spak1k2*abb120(23)
      abb120(39)=abb120(29)*spal5e7
      abb120(40)=abb120(39)*abb120(9)
      abb120(40)=abb120(40)-abb120(59)
      abb120(24)=abb120(40)*abb120(24)
      abb120(36)=abb120(36)*c2
      abb120(14)=abb120(14)*c2
      abb120(36)=-abb120(24)+abb120(36)-abb120(14)
      abb120(31)=abb120(31)*abb120(36)*spbk3k2
      abb120(24)=spbk4k3*abb120(24)
      abb120(24)=-abb120(37)+abb120(61)+abb120(24)
      abb120(22)=-abb120(24)*abb120(22)
      abb120(24)=abb120(9)*mB
      abb120(24)=-abb120(17)+abb120(24)
      abb120(24)=abb120(25)*abb120(43)*abb120(29)*abb120(24)
      abb120(29)=abb120(75)*abb120(44)
      abb120(36)=-abb120(49)*abb120(76)
      abb120(29)=abb120(29)+abb120(36)
      abb120(29)=abb120(9)*abb120(29)
      abb120(24)=abb120(29)+abb120(24)
      abb120(24)=spak4e7*abb120(24)
      abb120(12)=spbe7l6*abb120(12)
      abb120(29)=spbk7l6*abb120(30)
      abb120(21)=spbl6l5*abb120(21)
      abb120(11)=abb120(21)+abb120(29)+abb120(12)+abb120(23)+abb120(24)+abb120(&
      &18)+abb120(26)+abb120(11)+abb120(22)+abb120(31)
      abb120(11)=4.0_ki*abb120(11)
      abb120(12)=-abb120(41)*abb120(57)
      abb120(18)=abb120(55)*abb120(79)
      abb120(21)=-abb120(6)*abb120(81)
      abb120(22)=spal5e7*abb120(58)
      abb120(21)=abb120(21)+abb120(22)
      abb120(21)=spbl5k1*abb120(21)
      abb120(12)=abb120(21)+abb120(12)+abb120(18)
      abb120(12)=4.0_ki*abb120(12)
      abb120(18)=abb120(35)*c2
      abb120(21)=abb120(20)*abb120(18)
      abb120(22)=-abb120(14)*abb120(34)
      abb120(21)=abb120(21)+abb120(22)
      abb120(21)=abb120(9)*abb120(21)
      abb120(17)=abb120(39)*abb120(17)
      abb120(20)=-abb120(20)*abb120(17)
      abb120(22)=abb120(59)*abb120(34)
      abb120(20)=abb120(20)+abb120(22)
      abb120(20)=abb120(20)*abb120(25)
      abb120(22)=-abb120(55)*abb120(38)
      abb120(20)=abb120(22)+abb120(21)+abb120(20)
      abb120(20)=4.0_ki*abb120(20)
      abb120(21)=-4.0_ki*abb120(33)
      abb120(22)=-4.0_ki*abb120(50)
      abb120(23)=4.0_ki*abb120(28)
      abb120(18)=abb120(6)*abb120(18)
      abb120(14)=-abb120(74)*abb120(14)
      abb120(14)=abb120(18)+abb120(14)
      abb120(14)=abb120(9)*abb120(14)
      abb120(17)=-abb120(6)*abb120(17)
      abb120(18)=abb120(74)*abb120(59)
      abb120(17)=abb120(17)+abb120(18)
      abb120(17)=abb120(25)*abb120(17)
      abb120(14)=abb120(14)+abb120(17)
      abb120(14)=spbk3k2*spbe7k2*abb120(14)
      abb120(17)=-abb120(80)*abb120(38)
      abb120(14)=abb120(17)+abb120(14)
      abb120(14)=4.0_ki*abb120(14)
      abb120(17)=-4.0_ki*abb120(32)
      abb120(18)=-4.0_ki*abb120(53)
      abb120(24)=4.0_ki*abb120(62)
      R2d120=0.0_ki
      rat2 = rat2 + R2d120
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='120' value='", &
          & R2d120, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd120h0
