module     p5_usbar_epnebbbarg_abbrevd78h0
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(92), public :: abb78
   complex(ki), public :: R2d78
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
      abb78(1)=1.0_ki/(-es71+es712-es12)
      abb78(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb78(3)=sqrt(mB**2)
      abb78(4)=NC**(-1)
      abb78(5)=spbl5k2**(-1)
      abb78(6)=spbl6k2**(-1)
      abb78(7)=spak2l5**(-1)
      abb78(8)=spak2l6**(-1)
      abb78(9)=TR*gW
      abb78(9)=spbk7e7*i_*spak2e7*CVSU*abb78(2)*abb78(1)*abb78(9)**2
      abb78(10)=abb78(9)*c3
      abb78(11)=abb78(10)*abb78(4)
      abb78(12)=2.0_ki*abb78(11)
      abb78(13)=abb78(12)*spbk3k2
      abb78(14)=abb78(3)*mB**2
      abb78(15)=abb78(13)*abb78(14)
      abb78(16)=spbk2k1*abb78(5)
      abb78(17)=-abb78(16)*abb78(15)
      abb78(18)=c4*abb78(4)**2
      abb78(19)=abb78(18)*abb78(9)
      abb78(20)=abb78(5)*abb78(19)
      abb78(21)=abb78(14)*spbk3k2
      abb78(22)=abb78(21)*abb78(20)
      abb78(23)=spbk2k1*abb78(22)
      abb78(10)=abb78(10)*NC
      abb78(24)=abb78(16)*abb78(10)
      abb78(25)=abb78(24)*abb78(21)
      abb78(17)=abb78(25)+abb78(17)+abb78(23)
      abb78(17)=spak2k4*abb78(17)
      abb78(23)=abb78(6)*spbk2k1
      abb78(25)=abb78(20)*abb78(23)
      abb78(26)=abb78(12)*abb78(6)
      abb78(27)=abb78(26)*abb78(16)
      abb78(25)=abb78(25)-abb78(27)
      abb78(27)=abb78(10)*abb78(6)
      abb78(28)=abb78(27)*abb78(16)
      abb78(28)=abb78(25)+abb78(28)
      abb78(29)=mB**4
      abb78(30)=spbk3k2*abb78(3)
      abb78(31)=abb78(29)*abb78(30)
      abb78(32)=abb78(8)*spak2k4
      abb78(33)=-abb78(32)*abb78(31)*abb78(28)
      abb78(17)=abb78(17)+abb78(33)
      abb78(17)=spal6k7*abb78(17)
      abb78(33)=abb78(24)*abb78(14)
      abb78(34)=abb78(14)*abb78(12)
      abb78(35)=abb78(34)*abb78(16)
      abb78(36)=abb78(14)*abb78(20)
      abb78(37)=abb78(36)*spbk2k1
      abb78(33)=abb78(37)+abb78(33)-abb78(35)
      abb78(35)=spal5k7*spbl5k3
      abb78(37)=spak4l6*abb78(35)
      abb78(38)=spak4l6*spbk3k1
      abb78(39)=spak1k7*abb78(38)
      abb78(37)=abb78(39)+abb78(37)
      abb78(37)=abb78(33)*abb78(37)
      abb78(39)=abb78(10)-abb78(12)
      abb78(40)=abb78(3)*abb78(39)
      abb78(41)=-spbk2k1*abb78(40)
      abb78(9)=abb78(18)*abb78(9)*spbk2k1
      abb78(18)=-abb78(3)*abb78(9)
      abb78(18)=abb78(18)+abb78(41)
      abb78(18)=spak2k4*abb78(18)
      abb78(41)=abb78(23)*abb78(10)
      abb78(42)=abb78(9)*abb78(6)
      abb78(43)=-abb78(41)-abb78(42)
      abb78(43)=abb78(14)*abb78(43)
      abb78(44)=abb78(34)*abb78(23)
      abb78(43)=abb78(44)+abb78(43)
      abb78(44)=-abb78(43)*abb78(32)
      abb78(18)=abb78(18)+abb78(44)
      abb78(44)=spal6k7*spbk3k1
      abb78(18)=spak1l5*abb78(44)*abb78(18)
      abb78(45)=abb78(10)*abb78(5)
      abb78(46)=abb78(21)*abb78(45)
      abb78(15)=abb78(15)*abb78(5)
      abb78(15)=-abb78(46)+abb78(15)-abb78(22)
      abb78(22)=abb78(15)*spal6k7
      abb78(46)=-spak4k7*abb78(22)
      abb78(47)=abb78(3)*abb78(19)
      abb78(40)=abb78(47)+abb78(40)
      abb78(48)=abb78(40)*spal6k7
      abb78(49)=abb78(48)*spak1l5
      abb78(50)=spbk3k1*spak4k7
      abb78(51)=-abb78(50)*abb78(49)
      abb78(46)=abb78(46)+abb78(51)
      abb78(46)=spbk7k1*abb78(46)
      abb78(51)=-spak4l6*abb78(22)
      abb78(49)=-abb78(38)*abb78(49)
      abb78(49)=abb78(51)+abb78(49)
      abb78(49)=spbl6k1*abb78(49)
      abb78(51)=abb78(39)*abb78(23)
      abb78(42)=abb78(51)+abb78(42)
      abb78(51)=abb78(5)**2
      abb78(31)=abb78(31)*abb78(51)
      abb78(52)=abb78(7)*spak4k7
      abb78(42)=abb78(52)*abb78(31)*abb78(42)
      abb78(53)=-es12+es712-es71
      abb78(53)=abb78(53)*abb78(42)
      abb78(54)=-abb78(39)*spbk2k1
      abb78(54)=-abb78(9)+abb78(54)
      abb78(55)=spak4l6*abb78(7)
      abb78(56)=abb78(55)*spak2k7
      abb78(31)=abb78(56)*abb78(31)*abb78(54)
      abb78(54)=abb78(28)*abb78(14)
      abb78(57)=spak4k7*abb78(35)
      abb78(58)=spak1k7*abb78(50)
      abb78(57)=abb78(57)+abb78(58)
      abb78(57)=spbk7k2*abb78(54)*abb78(57)
      abb78(17)=abb78(49)+abb78(46)+abb78(57)+abb78(31)+abb78(18)+abb78(53)+abb&
      &78(37)+abb78(17)
      abb78(17)=4.0_ki*abb78(17)
      abb78(18)=spbk2k1*mB
      abb78(31)=abb78(20)*abb78(18)
      abb78(37)=abb78(12)*mB
      abb78(16)=abb78(37)*abb78(16)
      abb78(46)=abb78(24)*mB
      abb78(16)=abb78(46)+abb78(31)-abb78(16)
      abb78(31)=abb78(16)*spak1l6
      abb78(46)=abb78(27)-abb78(26)
      abb78(46)=-abb78(18)*abb78(46)
      abb78(49)=abb78(6)*mB
      abb78(53)=abb78(9)*abb78(49)
      abb78(46)=abb78(46)-abb78(53)
      abb78(53)=abb78(46)*spak1l5
      abb78(31)=abb78(31)-abb78(53)
      abb78(53)=abb78(50)*abb78(31)
      abb78(57)=spbk3k2*abb78(6)
      abb78(58)=mB**3
      abb78(59)=abb78(57)*abb78(58)
      abb78(60)=abb78(59)*abb78(24)
      abb78(61)=abb78(58)*spbk3k2
      abb78(62)=abb78(25)*abb78(61)
      abb78(60)=abb78(60)+abb78(62)
      abb78(62)=-spak4k7*abb78(60)
      abb78(63)=abb78(16)*spak4k7
      abb78(64)=spal5l6*spbl5k3
      abb78(65)=abb78(63)*abb78(64)
      abb78(66)=abb78(51)*abb78(58)
      abb78(67)=abb78(9)*abb78(66)
      abb78(66)=abb78(66)*spbk2k1
      abb78(68)=abb78(66)*abb78(10)
      abb78(67)=abb78(67)+abb78(68)
      abb78(68)=-spbk3k2*abb78(67)
      abb78(69)=abb78(66)*abb78(13)
      abb78(68)=abb78(69)+abb78(68)
      abb78(69)=abb78(68)*spak2l6
      abb78(70)=abb78(52)*abb78(69)
      abb78(53)=abb78(70)+abb78(65)+abb78(62)+abb78(53)
      abb78(53)=8.0_ki*abb78(53)
      abb78(62)=abb78(16)*spak4l6
      abb78(65)=-abb78(35)*abb78(62)
      abb78(70)=abb78(16)*spak1k7
      abb78(71)=-abb78(38)*abb78(70)
      abb78(56)=-abb78(68)*abb78(56)
      abb78(56)=abb78(71)+abb78(65)+abb78(56)
      abb78(56)=8.0_ki*abb78(56)
      abb78(25)=abb78(21)*abb78(25)
      abb78(65)=abb78(57)*abb78(14)
      abb78(24)=abb78(65)*abb78(24)
      abb78(24)=abb78(24)+abb78(25)
      abb78(25)=abb78(24)*spak4k7
      abb78(40)=abb78(44)*abb78(40)
      abb78(71)=abb78(40)*spak4l5
      abb78(71)=abb78(71)-abb78(25)
      abb78(72)=-8.0_ki*abb78(71)
      abb78(73)=abb78(14)*abb78(45)
      abb78(36)=abb78(73)+abb78(36)
      abb78(34)=abb78(34)*abb78(5)
      abb78(34)=abb78(34)-abb78(36)
      abb78(73)=spak4l5*abb78(7)
      abb78(74)=abb78(34)*abb78(44)*abb78(73)
      abb78(42)=abb78(42)+abb78(74)
      abb78(42)=8.0_ki*abb78(42)
      abb78(25)=-8.0_ki*abb78(25)
      abb78(71)=-4.0_ki*abb78(71)
      abb78(74)=abb78(38)*abb78(31)
      abb78(60)=-spak4l6*abb78(60)
      abb78(75)=abb78(62)*abb78(64)
      abb78(76)=abb78(55)*abb78(69)
      abb78(60)=abb78(76)+abb78(75)+abb78(60)+abb78(74)
      abb78(60)=4.0_ki*abb78(60)
      abb78(74)=abb78(46)*spak4l5
      abb78(62)=abb78(74)-abb78(62)
      abb78(74)=8.0_ki*abb78(62)
      abb78(12)=abb78(66)*abb78(12)
      abb78(12)=abb78(12)-abb78(67)
      abb78(55)=-abb78(12)*abb78(55)
      abb78(28)=-abb78(58)*abb78(28)
      abb78(66)=-abb78(28)*abb78(73)
      abb78(55)=abb78(55)+abb78(66)
      abb78(55)=8.0_ki*abb78(55)
      abb78(62)=-4.0_ki*abb78(62)
      abb78(66)=spbk2k1*abb78(10)
      abb78(66)=abb78(66)+abb78(9)
      abb78(29)=abb78(29)*abb78(51)
      abb78(67)=abb78(3)*abb78(6)
      abb78(75)=abb78(67)*abb78(29)
      abb78(51)=abb78(51)*mB**5
      abb78(76)=abb78(51)*abb78(6)
      abb78(75)=abb78(76)+abb78(75)
      abb78(66)=abb78(75)*abb78(66)
      abb78(29)=-abb78(3)*abb78(29)
      abb78(29)=-abb78(51)+abb78(29)
      abb78(11)=abb78(23)*abb78(11)*abb78(29)
      abb78(11)=2.0_ki*abb78(11)+abb78(66)
      abb78(11)=spbk3k2*abb78(11)
      abb78(11)=abb78(69)+abb78(11)
      abb78(29)=abb78(7)*spak2k4
      abb78(11)=abb78(29)*abb78(11)
      abb78(66)=abb78(16)*spak2k4
      abb78(69)=abb78(28)*abb78(32)
      abb78(66)=abb78(66)+abb78(69)
      abb78(64)=abb78(66)*abb78(64)
      abb78(69)=spbk3k1*abb78(66)
      abb78(75)=spak1l6*abb78(69)
      abb78(20)=abb78(20)+abb78(45)
      abb78(45)=abb78(59)*abb78(20)
      abb78(59)=abb78(26)*abb78(5)
      abb78(76)=abb78(59)*abb78(61)
      abb78(45)=abb78(45)-abb78(76)
      abb78(76)=spak4k7*abb78(45)
      abb78(49)=abb78(49)*abb78(10)
      abb78(77)=abb78(6)*abb78(19)
      abb78(78)=abb78(77)*mB
      abb78(79)=abb78(37)*abb78(6)
      abb78(49)=-abb78(78)+abb78(79)-abb78(49)
      abb78(79)=abb78(50)*abb78(49)
      abb78(80)=spak1l5*abb78(79)
      abb78(76)=abb78(76)+abb78(80)
      abb78(76)=spbk7k1*abb78(76)
      abb78(80)=spak4l6*abb78(45)
      abb78(81)=abb78(49)*abb78(38)*spak1l5
      abb78(80)=abb78(80)+abb78(81)
      abb78(80)=spbl6k1*abb78(80)
      abb78(34)=abb78(34)*abb78(38)
      abb78(81)=abb78(20)*abb78(65)
      abb78(82)=abb78(59)*abb78(21)
      abb78(81)=abb78(82)-abb78(81)
      abb78(82)=spbl5k1*spak4l5
      abb78(83)=abb78(81)*abb78(82)
      abb78(36)=-abb78(6)*abb78(36)
      abb78(84)=abb78(14)*abb78(59)
      abb78(36)=abb78(84)+abb78(36)
      abb78(36)=spbk7k2*abb78(36)*abb78(50)
      abb78(11)=abb78(80)+abb78(76)+abb78(36)+abb78(75)+abb78(83)+abb78(64)+abb&
      &78(34)+abb78(11)
      abb78(11)=4.0_ki*abb78(11)
      abb78(34)=mB*abb78(20)
      abb78(36)=abb78(37)*abb78(5)
      abb78(34)=abb78(34)-abb78(36)
      abb78(36)=8.0_ki*abb78(34)
      abb78(64)=abb78(38)*abb78(36)
      abb78(75)=abb78(49)*spbk3k1
      abb78(76)=abb78(75)*spak4l5
      abb78(80)=8.0_ki*abb78(76)
      abb78(83)=-abb78(6)*abb78(20)
      abb78(83)=abb78(59)+abb78(83)
      abb78(73)=8.0_ki*spbk3k1*abb78(73)*abb78(58)*abb78(83)
      abb78(76)=4.0_ki*abb78(76)
      abb78(26)=abb78(77)-abb78(26)
      abb78(21)=-abb78(21)*abb78(26)
      abb78(65)=abb78(65)*abb78(10)
      abb78(21)=abb78(21)-abb78(65)
      abb78(65)=spbk7k3*abb78(48)
      abb78(65)=abb78(65)-abb78(21)
      abb78(65)=spak4l5*abb78(65)
      abb78(15)=-spak4l6*abb78(15)
      abb78(24)=-spak1k4*abb78(24)
      abb78(77)=-spbk7k2*spak4k7*abb78(81)
      abb78(15)=abb78(24)+abb78(77)+abb78(15)+abb78(65)
      abb78(15)=4.0_ki*abb78(15)
      abb78(24)=-spbk3k2*abb78(34)
      abb78(65)=abb78(24)*spak4l6
      abb78(77)=8.0_ki*abb78(65)
      abb78(81)=-abb78(35)*abb78(63)
      abb78(83)=-abb78(50)*abb78(70)
      abb78(84)=-spak2k7*abb78(68)*abb78(52)
      abb78(81)=abb78(83)+abb78(81)+abb78(84)
      abb78(81)=4.0_ki*abb78(81)
      abb78(83)=4.0_ki*abb78(34)
      abb78(84)=abb78(50)*abb78(83)
      abb78(85)=abb78(24)*spak4k7
      abb78(86)=4.0_ki*abb78(85)
      abb78(87)=8.0_ki*abb78(63)
      abb78(88)=8.0_ki*abb78(12)*abb78(52)
      abb78(63)=-4.0_ki*abb78(63)
      abb78(89)=abb78(12)*abb78(29)
      abb78(34)=abb78(82)*abb78(34)
      abb78(34)=abb78(34)+abb78(89)
      abb78(34)=4.0_ki*abb78(34)
      abb78(89)=abb78(16)*spak1k4
      abb78(90)=mB*abb78(19)
      abb78(91)=abb78(10)*mB
      abb78(37)=abb78(91)-abb78(37)
      abb78(90)=abb78(90)+abb78(37)
      abb78(90)=abb78(90)*spak4l5
      abb78(89)=abb78(90)-abb78(89)
      abb78(89)=4.0_ki*abb78(89)
      abb78(66)=-abb78(66)*abb78(35)
      abb78(23)=abb78(23)*abb78(13)
      abb78(9)=-abb78(57)*abb78(9)
      abb78(41)=-spbk3k2*abb78(41)
      abb78(9)=abb78(41)+abb78(23)+abb78(9)
      abb78(9)=abb78(7)*abb78(32)*abb78(51)*abb78(9)
      abb78(23)=-abb78(68)*abb78(29)
      abb78(9)=abb78(23)+abb78(9)
      abb78(9)=spak2k7*abb78(9)
      abb78(23)=-spak1k7*abb78(69)
      abb78(9)=abb78(23)+abb78(66)+abb78(9)
      abb78(9)=4.0_ki*abb78(9)
      abb78(23)=-abb78(50)*abb78(36)
      abb78(41)=-abb78(38)*abb78(83)
      abb78(51)=abb78(45)*abb78(32)
      abb78(24)=abb78(24)*spak2k4
      abb78(24)=abb78(51)+abb78(24)
      abb78(24)=4.0_ki*abb78(24)
      abb78(51)=4.0_ki*abb78(48)
      abb78(66)=abb78(51)*spak4l5
      abb78(68)=spbl6k3*abb78(66)
      abb78(69)=-8.0_ki*abb78(85)
      abb78(65)=-4.0_ki*abb78(65)
      abb78(83)=abb78(50)*abb78(51)
      abb78(85)=4.0_ki*abb78(49)
      abb78(50)=abb78(85)*abb78(50)
      abb78(90)=abb78(38)*abb78(51)
      abb78(38)=abb78(85)*abb78(38)
      abb78(33)=abb78(33)*spal6k7
      abb78(91)=-abb78(29)*abb78(33)
      abb78(92)=abb78(48)*abb78(82)
      abb78(91)=abb78(91)+abb78(92)
      abb78(91)=4.0_ki*abb78(91)
      abb78(28)=abb78(28)*abb78(29)
      abb78(29)=abb78(82)*abb78(49)
      abb78(28)=abb78(28)-abb78(29)
      abb78(28)=4.0_ki*abb78(28)
      abb78(26)=-abb78(27)-abb78(26)
      abb78(14)=abb78(44)*abb78(32)*abb78(14)*abb78(26)
      abb78(26)=spak2k4*abb78(40)
      abb78(14)=abb78(26)+abb78(14)
      abb78(14)=4.0_ki*abb78(14)
      abb78(26)=8.0_ki*abb78(79)
      abb78(27)=-spbl5k3*abb78(66)
      abb78(29)=-abb78(57)*abb78(37)
      abb78(37)=abb78(78)*spbk3k2
      abb78(29)=abb78(29)-abb78(37)
      abb78(37)=abb78(29)*spak4k7
      abb78(44)=-8.0_ki*abb78(37)
      abb78(10)=abb78(10)+abb78(19)
      abb78(19)=abb78(6)**2
      abb78(10)=abb78(10)*abb78(19)*abb78(61)
      abb78(13)=abb78(58)*abb78(19)*abb78(13)
      abb78(10)=-abb78(13)+abb78(10)
      abb78(13)=abb78(10)*abb78(8)
      abb78(19)=-spak4k7*abb78(13)
      abb78(52)=abb78(45)*abb78(52)
      abb78(19)=abb78(19)-abb78(37)+abb78(52)
      abb78(19)=8.0_ki*abb78(19)
      abb78(37)=-4.0_ki*spak4l6*abb78(29)
      abb78(46)=spak1k4*abb78(46)
      abb78(52)=-spbl5k2*spak4l5*abb78(49)
      abb78(46)=abb78(46)+abb78(52)
      abb78(46)=4.0_ki*abb78(46)
      abb78(10)=-abb78(10)*abb78(32)
      abb78(32)=-spak2k4*abb78(29)
      abb78(52)=-spbk7k3*spak4k7*abb78(49)
      abb78(10)=abb78(52)+abb78(32)+abb78(10)
      abb78(10)=4.0_ki*abb78(10)
      abb78(32)=abb78(85)*spak4k7
      abb78(52)=-spbl6k3*abb78(32)
      abb78(32)=spbl5k3*abb78(32)
      abb78(43)=spal5k7*abb78(43)
      abb78(20)=-abb78(67)*abb78(20)
      abb78(57)=abb78(3)*abb78(59)
      abb78(20)=abb78(57)+abb78(20)
      abb78(18)=spak1k7*abb78(20)*abb78(18)**2
      abb78(18)=abb78(18)+abb78(33)+abb78(43)
      abb78(18)=4.0_ki*abb78(18)
      abb78(16)=4.0_ki*abb78(16)
      abb78(20)=-spal5l6*abb78(16)
      abb78(12)=abb78(12)*abb78(7)
      abb78(33)=spak2l6*abb78(12)
      abb78(33)=abb78(33)+abb78(54)
      abb78(33)=4.0_ki*abb78(33)
      abb78(31)=4.0_ki*abb78(31)
      abb78(16)=spal5k7*abb78(16)
      abb78(12)=-4.0_ki*spak2k7*abb78(12)
      abb78(43)=-4.0_ki*abb78(70)
      abb78(45)=-abb78(7)*abb78(45)
      abb78(13)=abb78(13)+abb78(45)+abb78(29)
      abb78(13)=spak2k7*abb78(13)
      abb78(29)=spbl6k3*spal6k7
      abb78(29)=abb78(29)-abb78(35)
      abb78(29)=abb78(49)*abb78(29)
      abb78(35)=-spak1k7*abb78(75)
      abb78(13)=abb78(35)+abb78(13)+abb78(29)
      abb78(13)=4.0_ki*abb78(13)
      abb78(21)=abb78(21)*abb78(8)
      abb78(29)=abb78(47)*spbk3k2
      abb78(30)=-abb78(39)*abb78(30)
      abb78(21)=abb78(21)+abb78(29)-abb78(30)
      abb78(21)=abb78(21)*spal6k7
      abb78(29)=-spak2l5*abb78(21)
      abb78(30)=spbl6k3*spal5l6
      abb78(35)=spbk7k3*spal5k7
      abb78(30)=abb78(35)+abb78(30)
      abb78(30)=abb78(48)*abb78(30)
      abb78(35)=spak1l5*abb78(40)
      abb78(29)=abb78(29)+abb78(22)+abb78(35)+abb78(30)
      abb78(29)=4.0_ki*abb78(29)
      abb78(22)=-abb78(7)*abb78(22)
      abb78(21)=abb78(22)+abb78(21)
      abb78(21)=4.0_ki*spak4l5*abb78(21)
      R2d78=0.0_ki
      rat2 = rat2 + R2d78
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='78' value='", &
          & R2d78, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd78h0