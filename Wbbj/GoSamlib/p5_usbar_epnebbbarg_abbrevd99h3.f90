module     p5_usbar_epnebbbarg_abbrevd99h3
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(79), public :: abb99
   complex(ki), public :: R2d99
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
      abb99(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb99(2)=1.0_ki/(mB**2-es67-es56+es567)
      abb99(3)=NC**(-1)
      abb99(4)=es234**(-1)
      abb99(5)=spak2l5**(-1)
      abb99(6)=spak2l6**(-1)
      abb99(7)=spbl5k2**(-1)
      abb99(8)=sqrt(mB**2)
      abb99(9)=2.0_ki*abb99(3)
      abb99(10)=abb99(9)-NC
      abb99(11)=TR*gW
      abb99(11)=abb99(11)**2*i_*CVSU*abb99(4)*abb99(2)
      abb99(12)=abb99(11)*c1
      abb99(13)=abb99(10)*abb99(12)
      abb99(14)=spak2k4**2
      abb99(15)=spbe7l5*abb99(1)
      abb99(16)=abb99(15)*spbk4k3
      abb99(17)=abb99(16)*abb99(6)
      abb99(18)=abb99(14)*abb99(17)
      abb99(19)=-abb99(18)*abb99(13)
      abb99(20)=mB**3
      abb99(21)=spak2e7*abb99(5)
      abb99(22)=-abb99(19)*abb99(20)*abb99(21)
      abb99(23)=c2*abb99(3)**2
      abb99(24)=abb99(23)*abb99(11)*spak2e7
      abb99(25)=abb99(20)*abb99(5)
      abb99(18)=abb99(24)*abb99(18)*abb99(25)
      abb99(18)=abb99(22)-abb99(18)
      abb99(22)=abb99(18)*abb99(7)
      abb99(26)=abb99(22)*spbl5k1
      abb99(27)=abb99(5)*spak2k4
      abb99(27)=abb99(27)**2
      abb99(28)=abb99(27)*spak2e7
      abb99(29)=abb99(9)*abb99(20)*abb99(28)*abb99(12)
      abb99(30)=abb99(12)*NC
      abb99(31)=abb99(28)*abb99(30)
      abb99(27)=abb99(24)*abb99(27)
      abb99(31)=abb99(31)+abb99(27)
      abb99(32)=abb99(31)*abb99(20)
      abb99(29)=abb99(29)-abb99(32)
      abb99(32)=-spbl6k1*abb99(29)
      abb99(33)=abb99(7)*abb99(32)*abb99(16)
      abb99(26)=abb99(26)-abb99(33)
      abb99(33)=-spbk2k1*abb99(26)
      abb99(34)=abb99(11)*spak2k4
      abb99(35)=abb99(34)*c1
      abb99(36)=-abb99(10)*abb99(35)*spbl6k1
      abb99(37)=spak2e7*mB
      abb99(38)=abb99(37)*abb99(15)
      abb99(39)=abb99(36)*abb99(38)
      abb99(40)=abb99(23)*mB
      abb99(41)=abb99(34)*spbl6k1
      abb99(42)=spak2e7*abb99(40)*abb99(41)
      abb99(43)=abb99(42)*abb99(15)
      abb99(39)=abb99(43)+abb99(39)
      abb99(39)=abb99(39)*spbk3k2
      abb99(43)=-mB*abb99(19)
      abb99(11)=abb99(16)*abb99(11)
      abb99(14)=abb99(6)*abb99(14)*abb99(11)
      abb99(44)=abb99(14)*abb99(40)
      abb99(43)=abb99(43)-abb99(44)
      abb99(44)=spbk7k1*spae7k7
      abb99(45)=-abb99(44)*abb99(43)
      abb99(46)=-abb99(45)-abb99(39)
      abb99(46)=spbl5k1*abb99(46)
      abb99(47)=abb99(21)*mB
      abb99(48)=abb99(47)*abb99(36)
      abb99(49)=abb99(21)*abb99(34)
      abb99(40)=abb99(40)*abb99(49)
      abb99(50)=abb99(40)*spbl6k1
      abb99(48)=abb99(50)+abb99(48)
      abb99(51)=abb99(16)*abb99(48)
      abb99(52)=spak4k7*spbk7k1
      abb99(53)=spak4l5*spbl5k1
      abb99(52)=abb99(52)+abb99(53)
      abb99(54)=-abb99(51)*abb99(52)
      abb99(55)=-abb99(43)*spal5e7
      abb99(56)=spbl5k1**2*abb99(55)
      abb99(57)=abb99(15)*abb99(48)
      abb99(58)=spak2k7*spbk3k2
      abb99(59)=abb99(57)*abb99(58)
      abb99(60)=-spbk7k1*abb99(59)
      abb99(33)=abb99(60)+abb99(54)+abb99(33)+abb99(56)+abb99(46)
      abb99(33)=spak1l5*abb99(33)
      abb99(46)=abb99(16)*abb99(8)
      abb99(54)=-abb99(46)*abb99(36)
      abb99(41)=abb99(23)*abb99(41)
      abb99(56)=abb99(41)*abb99(46)
      abb99(56)=abb99(54)-abb99(56)
      abb99(52)=-abb99(56)*abb99(52)
      abb99(9)=abb99(9)*abb99(12)
      abb99(12)=abb99(9)-abb99(30)
      abb99(30)=abb99(12)*abb99(16)
      abb99(11)=abb99(23)*abb99(11)
      abb99(30)=abb99(30)-abb99(11)
      abb99(60)=mB*spak2k4
      abb99(60)=abb99(60)**2
      abb99(61)=abb99(60)*abb99(5)
      abb99(62)=spbl6k1*abb99(8)
      abb99(30)=abb99(30)*abb99(61)*abb99(62)
      abb99(63)=spbk2k1*abb99(7)
      abb99(64)=abb99(30)*abb99(63)
      abb99(65)=abb99(15)*abb99(8)
      abb99(66)=-abb99(65)*abb99(36)
      abb99(41)=abb99(41)*abb99(65)
      abb99(41)=abb99(66)-abb99(41)
      abb99(67)=abb99(41)*abb99(58)
      abb99(68)=-spbk7k1*abb99(67)
      abb99(41)=abb99(41)*spbk3k2
      abb99(69)=abb99(41)*spak2l5
      abb99(70)=-spbl5k1*abb99(69)
      abb99(52)=abb99(70)+abb99(68)+abb99(64)+abb99(52)
      abb99(52)=spak1e7*abb99(52)
      abb99(64)=spbk4k3*abb99(1)
      abb99(68)=abb99(47)*abb99(64)
      abb99(70)=-abb99(68)*abb99(36)
      abb99(50)=abb99(50)*abb99(64)
      abb99(50)=abb99(70)-abb99(50)
      abb99(70)=abb99(50)*spbk7e7
      abb99(71)=abb99(70)*spak4k7
      abb99(72)=abb99(1)*abb99(48)
      abb99(73)=abb99(58)*spbk7e7
      abb99(74)=abb99(72)*abb99(73)
      abb99(45)=abb99(45)+abb99(71)-abb99(74)
      abb99(71)=abb99(18)*abb99(63)
      abb99(74)=abb99(8)*abb99(64)*abb99(6)
      abb99(60)=-abb99(12)*abb99(21)*abb99(60)*abb99(74)
      abb99(24)=abb99(74)*abb99(61)*abb99(24)
      abb99(24)=abb99(24)+abb99(60)
      abb99(60)=-spbe7k1*abb99(24)
      abb99(75)=spal5e7*spbl5k1
      abb99(76)=-abb99(75)*abb99(43)
      abb99(60)=abb99(60)+abb99(71)-abb99(76)+abb99(45)
      abb99(60)=es71*abb99(60)
      abb99(71)=mB**2
      abb99(77)=abb99(71)*abb99(21)
      abb99(66)=abb99(66)*abb99(77)
      abb99(49)=abb99(23)*abb99(49)
      abb99(71)=abb99(71)*abb99(49)
      abb99(62)=abb99(71)*abb99(62)
      abb99(78)=abb99(62)*abb99(15)
      abb99(66)=abb99(78)-abb99(66)
      abb99(66)=abb99(66)*spbk3k2
      abb99(14)=abb99(23)*abb99(14)
      abb99(14)=-abb99(19)-abb99(14)
      abb99(14)=abb99(25)*abb99(14)
      abb99(19)=abb99(75)-abb99(44)
      abb99(25)=-abb99(14)*abb99(19)
      abb99(9)=abb99(28)*abb99(9)
      abb99(9)=abb99(9)-abb99(31)
      abb99(9)=abb99(9)*abb99(74)*mB**4
      abb99(31)=-spbe7k1*abb99(9)
      abb99(25)=abb99(31)+abb99(66)+abb99(25)
      abb99(25)=abb99(7)*abb99(25)
      abb99(13)=abb99(28)*abb99(13)
      abb99(13)=abb99(27)-abb99(13)
      abb99(13)=spbk2k1*abb99(7)**2*abb99(13)*abb99(17)*mB**5
      abb99(25)=abb99(13)+abb99(25)
      abb99(25)=es12*abb99(25)
      abb99(27)=abb99(64)*spbk7e7
      abb99(28)=abb99(32)*abb99(27)
      abb99(31)=-abb99(63)*abb99(28)
      abb99(32)=abb99(42)*abb99(1)
      abb99(37)=abb99(37)*abb99(1)
      abb99(36)=abb99(36)*abb99(37)
      abb99(32)=abb99(32)+abb99(36)
      abb99(36)=spbk7e7*spbk3k2
      abb99(32)=abb99(32)*abb99(36)
      abb99(42)=spbl5k1*abb99(32)
      abb99(44)=-abb99(70)*abb99(53)
      abb99(31)=abb99(44)+abb99(42)+abb99(31)
      abb99(31)=spak1k7*abb99(31)
      abb99(42)=-abb99(56)*abb99(19)
      abb99(44)=abb99(54)*abb99(77)
      abb99(53)=abb99(62)*abb99(16)
      abb99(44)=abb99(53)-abb99(44)
      abb99(53)=abb99(44)*abb99(63)
      abb99(42)=abb99(53)+abb99(42)
      abb99(42)=spak1k4*abb99(42)
      abb99(53)=abb99(24)*spbl5k1
      abb99(54)=spak1l5*abb99(53)
      abb99(62)=abb99(8)**2
      abb99(50)=abb99(50)*abb99(62)
      abb99(75)=-spak1k4*abb99(50)
      abb99(54)=abb99(54)+abb99(75)
      abb99(54)=spbe7k1*abb99(54)
      abb99(75)=-abb99(41)*abb99(19)
      abb99(78)=abb99(62)*abb99(1)
      abb99(48)=spbk3k2*abb99(48)*abb99(78)
      abb99(79)=spbe7k1*abb99(48)
      abb99(75)=abb99(79)+abb99(75)
      abb99(75)=spak1k2*abb99(75)
      abb99(25)=abb99(31)+abb99(25)+abb99(60)+abb99(75)+abb99(54)+abb99(42)+abb&
      &99(33)+abb99(52)
      abb99(25)=4.0_ki*abb99(25)
      abb99(31)=8.0_ki*abb99(45)
      abb99(33)=spak4l5*abb99(51)
      abb99(33)=abb99(33)+abb99(39)-abb99(76)
      abb99(33)=8.0_ki*abb99(33)
      abb99(39)=-abb99(7)*abb99(66)
      abb99(13)=abb99(39)-abb99(13)
      abb99(13)=8.0_ki*abb99(13)
      abb99(39)=spak4k7*abb99(56)
      abb99(39)=abb99(39)+abb99(67)
      abb99(39)=4.0_ki*abb99(39)
      abb99(24)=4.0_ki*abb99(24)
      abb99(24)=-spbk7k1*abb99(24)
      abb99(42)=spak4l5*abb99(56)
      abb99(42)=abb99(42)+abb99(69)
      abb99(42)=4.0_ki*abb99(42)
      abb99(45)=-4.0_ki*abb99(53)
      abb99(50)=4.0_ki*abb99(50)
      abb99(52)=4.0_ki*abb99(7)
      abb99(30)=-abb99(30)*abb99(52)
      abb99(9)=abb99(9)*abb99(63)
      abb99(9)=-abb99(48)+abb99(9)
      abb99(9)=4.0_ki*abb99(9)
      abb99(10)=-abb99(35)*abb99(10)
      abb99(35)=-abb99(46)*abb99(10)
      abb99(23)=abb99(23)*abb99(34)
      abb99(34)=abb99(8)*abb99(23)
      abb99(48)=abb99(34)*abb99(16)
      abb99(48)=abb99(48)-abb99(35)
      abb99(53)=spak4l5*abb99(48)
      abb99(54)=-abb99(65)*abb99(10)
      abb99(34)=abb99(34)*abb99(15)
      abb99(34)=abb99(34)-abb99(54)
      abb99(60)=abb99(34)*spbk3k2
      abb99(66)=spak2l5*abb99(60)
      abb99(53)=abb99(66)+abb99(53)
      abb99(53)=spbl6l5*abb99(53)
      abb99(66)=-spak4k7*abb99(48)
      abb99(67)=-abb99(34)*abb99(58)
      abb99(66)=abb99(66)+abb99(67)
      abb99(66)=spbk7l6*abb99(66)
      abb99(67)=abb99(62)*abb99(43)
      abb99(12)=abb99(46)*abb99(12)
      abb99(11)=-abb99(8)*abb99(11)
      abb99(11)=abb99(11)+abb99(12)
      abb99(12)=spbl6k2*abb99(7)
      abb99(11)=abb99(12)*abb99(61)*abb99(11)
      abb99(11)=abb99(11)+abb99(66)+abb99(67)+abb99(53)
      abb99(11)=4.0_ki*abb99(11)
      abb99(53)=-spbk7k1*abb99(55)
      abb99(61)=spak4l5*abb99(70)
      abb99(32)=abb99(61)-abb99(32)+abb99(53)
      abb99(32)=4.0_ki*abb99(32)
      abb99(28)=abb99(7)*abb99(28)
      abb99(53)=spbk7k1*abb99(22)
      abb99(28)=abb99(28)+abb99(53)
      abb99(28)=4.0_ki*abb99(28)
      abb99(53)=abb99(68)*abb99(10)
      abb99(61)=abb99(40)*abb99(64)
      abb99(53)=abb99(61)+abb99(53)
      abb99(61)=abb99(53)*spbk7e7
      abb99(64)=-spak4k7*abb99(61)
      abb99(47)=-abb99(47)*abb99(10)
      abb99(40)=abb99(47)-abb99(40)
      abb99(47)=abb99(40)*abb99(1)
      abb99(66)=abb99(47)*abb99(73)
      abb99(64)=abb99(64)+abb99(66)
      abb99(64)=spbk7l6*abb99(64)
      abb99(37)=abb99(37)*abb99(10)
      abb99(23)=mB*abb99(23)
      abb99(66)=abb99(23)*spak2e7
      abb99(67)=abb99(1)*abb99(66)
      abb99(37)=abb99(67)+abb99(37)
      abb99(37)=abb99(37)*abb99(36)
      abb99(67)=spak4l5*abb99(61)
      abb99(37)=abb99(37)+abb99(67)
      abb99(37)=spbl6l5*abb99(37)
      abb99(29)=abb99(29)*abb99(12)
      abb99(27)=abb99(29)*abb99(27)
      abb99(22)=-spbk7k2*abb99(22)
      abb99(55)=spbk7l5*abb99(55)
      abb99(22)=abb99(22)+abb99(55)+abb99(27)+abb99(64)+abb99(37)
      abb99(22)=4.0_ki*abb99(22)
      abb99(27)=-abb99(43)*spae7k7
      abb99(37)=spbl5k1*abb99(27)
      abb99(43)=spak4k7*abb99(51)
      abb99(37)=abb99(59)+abb99(37)+abb99(43)
      abb99(37)=4.0_ki*abb99(37)
      abb99(26)=4.0_ki*abb99(26)
      abb99(43)=-abb99(16)*abb99(40)
      abb99(55)=spak4k7*abb99(43)
      abb99(59)=abb99(40)*abb99(15)
      abb99(58)=-abb99(59)*abb99(58)
      abb99(55)=abb99(55)+abb99(58)
      abb99(55)=spbk7l6*abb99(55)
      abb99(38)=-abb99(38)*abb99(10)
      abb99(15)=-abb99(15)*abb99(66)
      abb99(15)=abb99(15)+abb99(38)
      abb99(15)=spbk3k2*abb99(15)
      abb99(38)=-spak4l5*abb99(43)
      abb99(15)=abb99(15)+abb99(38)
      abb99(15)=spbl6l5*abb99(15)
      abb99(16)=-abb99(16)*abb99(29)
      abb99(27)=spbk7l5*abb99(27)
      abb99(15)=abb99(27)+abb99(16)+abb99(15)+abb99(55)-abb99(18)
      abb99(15)=4.0_ki*abb99(15)
      abb99(16)=4.0_ki*abb99(56)
      abb99(18)=-spae7k7*abb99(16)
      abb99(16)=spal5e7*abb99(16)
      abb99(27)=-abb99(44)*abb99(52)
      abb99(29)=abb99(10)*abb99(77)*abb99(74)
      abb99(38)=abb99(71)*abb99(74)
      abb99(29)=abb99(38)+abb99(29)
      abb99(38)=abb99(29)*spbe7k1
      abb99(44)=-abb99(10)*mB
      abb99(23)=abb99(44)-abb99(23)
      abb99(23)=abb99(17)*abb99(23)
      abb99(19)=abb99(19)*abb99(23)
      abb99(19)=abb99(38)-abb99(19)
      abb99(38)=spak1k2*abb99(19)
      abb99(17)=abb99(20)*abb99(17)
      abb99(10)=abb99(10)*abb99(17)*abb99(21)
      abb99(17)=abb99(17)*abb99(49)
      abb99(10)=abb99(17)+abb99(10)
      abb99(17)=abb99(10)*abb99(7)
      abb99(20)=es12*abb99(17)
      abb99(21)=spbk7l6*spae7k7
      abb99(44)=spbl6l5*spal5e7
      abb99(21)=abb99(21)+abb99(44)
      abb99(44)=abb99(48)*abb99(21)
      abb99(49)=spak1l5*abb99(51)
      abb99(51)=spak1e7*abb99(56)
      abb99(35)=-abb99(77)*abb99(35)
      abb99(46)=abb99(46)*abb99(71)
      abb99(35)=abb99(46)+abb99(35)
      abb99(35)=abb99(35)*abb99(12)
      abb99(46)=spak1k7*abb99(70)
      abb99(52)=-spbe7l6*abb99(62)*abb99(53)
      abb99(20)=abb99(52)+abb99(46)+abb99(35)+abb99(20)+abb99(38)+abb99(51)+abb&
      &99(49)+abb99(44)
      abb99(20)=4.0_ki*abb99(20)
      abb99(35)=-16.0_ki*abb99(17)
      abb99(38)=4.0_ki*abb99(48)
      abb99(29)=8.0_ki*abb99(29)
      abb99(44)=4.0_ki*abb99(61)
      abb99(43)=-4.0_ki*abb99(43)
      abb99(46)=abb99(14)*abb99(63)
      abb99(46)=abb99(46)+abb99(41)
      abb99(46)=4.0_ki*abb99(46)
      abb99(48)=-spae7k7*abb99(46)
      abb99(23)=8.0_ki*abb99(23)
      abb99(49)=abb99(23)*spae7k7
      abb99(46)=spal5e7*abb99(46)
      abb99(23)=abb99(23)*spal5e7
      abb99(21)=abb99(34)*abb99(21)
      abb99(34)=spak1l5*abb99(57)
      abb99(51)=-abb99(77)*abb99(54)
      abb99(52)=abb99(65)*abb99(71)
      abb99(51)=abb99(52)+abb99(51)
      abb99(12)=abb99(51)*abb99(12)
      abb99(51)=-spak1k7*spbk7e7*abb99(72)
      abb99(40)=spbe7l6*abb99(78)*abb99(40)
      abb99(12)=abb99(40)+abb99(51)+abb99(12)+abb99(34)+abb99(21)
      abb99(12)=spbk3k2*abb99(12)
      abb99(10)=-abb99(10)*abb99(63)
      abb99(10)=abb99(10)-abb99(19)
      abb99(10)=spak1k4*abb99(10)
      abb99(19)=-spbk7k2*spae7k7*abb99(7)
      abb99(19)=abb99(19)+spal5e7
      abb99(14)=abb99(14)*abb99(19)
      abb99(19)=spak1e7*abb99(41)
      abb99(10)=abb99(19)+abb99(12)+abb99(14)+abb99(10)
      abb99(10)=4.0_ki*abb99(10)
      abb99(12)=4.0_ki*abb99(60)
      abb99(14)=-4.0_ki*abb99(47)*abb99(36)
      abb99(19)=4.0_ki*spbk3k2
      abb99(19)=abb99(59)*abb99(19)
      abb99(17)=8.0_ki*abb99(17)
      R2d99=0.0_ki
      rat2 = rat2 + R2d99
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='99' value='", &
          & R2d99, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd99h3
