module     p5_usbar_epnebbbarg_abbrevd92h2
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(97), public :: abb92
   complex(ki), public :: R2d92
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
      abb92(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb92(2)=1.0_ki/(-es71+es56-es567+es234)
      abb92(3)=NC**(-1)
      abb92(4)=es234**(-1)
      abb92(5)=spbl5k2**(-1)
      abb92(6)=spak2l6**(-1)
      abb92(7)=spbl6k2**(-1)
      abb92(8)=spak2l5**(-1)
      abb92(9)=sqrt(mB**2)
      abb92(10)=1.0_ki/(-es71+es712-es12)
      abb92(11)=spak2k4*abb92(4)
      abb92(12)=i_*CVSU*abb92(2)*abb92(1)
      abb92(13)=abb92(12)*c3
      abb92(14)=abb92(13)*abb92(11)
      abb92(15)=spbk3k2*spak2e7
      abb92(16)=abb92(15)*abb92(14)
      abb92(17)=spbk4k3*spak4e7
      abb92(18)=abb92(17)*abb92(14)
      abb92(19)=abb92(16)+abb92(18)
      abb92(20)=TR*gW
      abb92(21)=abb92(20)**2
      abb92(22)=abb92(21)*mB
      abb92(23)=abb92(22)*abb92(5)
      abb92(24)=abb92(23)*abb92(19)
      abb92(25)=NC*spbl6k1
      abb92(26)=abb92(24)*abb92(25)
      abb92(27)=abb92(14)*abb92(3)
      abb92(28)=abb92(27)*abb92(15)
      abb92(29)=abb92(18)*abb92(3)
      abb92(28)=abb92(28)+abb92(29)
      abb92(30)=abb92(23)*abb92(28)
      abb92(31)=2.0_ki*spbl6k1
      abb92(32)=abb92(30)*abb92(31)
      abb92(12)=abb92(12)*abb92(3)**2
      abb92(11)=abb92(12)*abb92(11)
      abb92(33)=abb92(11)*abb92(15)
      abb92(17)=abb92(11)*abb92(17)
      abb92(34)=abb92(33)+abb92(17)
      abb92(35)=abb92(23)*abb92(34)
      abb92(36)=c4*spbl6k1
      abb92(37)=abb92(35)*abb92(36)
      abb92(26)=abb92(37)+abb92(26)-abb92(32)
      abb92(26)=abb92(26)*abb92(9)
      abb92(20)=abb92(20)*mB
      abb92(20)=abb92(20)**2
      abb92(32)=abb92(20)*abb92(5)
      abb92(37)=abb92(33)*abb92(32)
      abb92(38)=abb92(17)*abb92(32)
      abb92(37)=abb92(37)+abb92(38)
      abb92(39)=abb92(37)*abb92(36)
      abb92(40)=abb92(16)*abb92(32)
      abb92(41)=abb92(18)*abb92(32)
      abb92(40)=abb92(40)+abb92(41)
      abb92(42)=abb92(40)*abb92(25)
      abb92(43)=abb92(32)*abb92(28)
      abb92(44)=abb92(43)*abb92(31)
      abb92(39)=-abb92(44)+abb92(39)+abb92(42)
      abb92(42)=abb92(26)-abb92(39)
      abb92(42)=abb92(42)*spbe7l5
      abb92(44)=spak1l5*abb92(42)
      abb92(45)=2.0_ki*abb92(3)
      abb92(46)=abb92(45)-NC
      abb92(47)=abb92(10)*spak4k7*spbk7e7
      abb92(13)=-abb92(46)*abb92(47)*abb92(13)*spak2e7
      abb92(48)=-spbl6k1*abb92(13)
      abb92(49)=abb92(23)*abb92(48)
      abb92(12)=abb92(47)*c4*spak2e7*abb92(12)
      abb92(47)=abb92(21)*abb92(12)
      abb92(50)=abb92(47)*spbl6k1
      abb92(51)=abb92(5)*mB
      abb92(52)=abb92(51)*abb92(50)
      abb92(49)=-abb92(52)+abb92(49)
      abb92(49)=abb92(49)*abb92(9)
      abb92(52)=spbl6k1*abb92(12)
      abb92(52)=abb92(48)-abb92(52)
      abb92(53)=-abb92(32)*abb92(52)
      abb92(54)=abb92(49)+abb92(53)
      abb92(55)=-spak1l5*abb92(54)
      abb92(56)=abb92(5)**2
      abb92(57)=abb92(56)*abb92(21)
      abb92(58)=mB**4
      abb92(59)=abb92(58)*abb92(6)
      abb92(60)=abb92(59)*abb92(57)
      abb92(61)=abb92(60)*abb92(13)
      abb92(59)=abb92(59)*abb92(56)
      abb92(62)=abb92(59)*abb92(47)
      abb92(61)=abb92(62)+abb92(61)
      abb92(62)=es12*abb92(61)
      abb92(55)=abb92(55)+abb92(62)
      abb92(55)=spbl5k3*abb92(55)
      abb92(62)=abb92(26)*spbe7l6
      abb92(63)=abb92(49)*spbl6k3
      abb92(62)=abb92(63)-abb92(62)
      abb92(63)=-spak1l6*abb92(62)
      abb92(44)=abb92(63)+abb92(55)+abb92(44)
      abb92(44)=spbk2k1*abb92(44)
      abb92(55)=abb92(57)*abb92(58)
      abb92(63)=abb92(55)*abb92(18)
      abb92(64)=abb92(15)*abb92(21)
      abb92(65)=abb92(64)*abb92(14)
      abb92(58)=abb92(58)*abb92(56)
      abb92(66)=abb92(65)*abb92(58)
      abb92(63)=abb92(63)+abb92(66)
      abb92(63)=abb92(63)*NC
      abb92(66)=abb92(55)*abb92(17)
      abb92(67)=abb92(64)*abb92(11)
      abb92(68)=abb92(67)*abb92(58)
      abb92(66)=abb92(66)+abb92(68)
      abb92(66)=abb92(66)*c4
      abb92(68)=abb92(55)*abb92(29)
      abb92(64)=abb92(64)*abb92(27)
      abb92(69)=abb92(64)*abb92(58)
      abb92(68)=abb92(68)+abb92(69)
      abb92(63)=-abb92(66)-abb92(63)+2.0_ki*abb92(68)
      abb92(66)=abb92(8)*spbe7l6
      abb92(63)=abb92(63)*abb92(66)
      abb92(68)=abb92(60)*abb92(18)
      abb92(69)=abb92(59)*abb92(65)
      abb92(68)=abb92(68)+abb92(69)
      abb92(68)=abb92(68)*NC
      abb92(69)=abb92(60)*abb92(29)
      abb92(70)=abb92(59)*abb92(64)
      abb92(69)=abb92(69)+abb92(70)
      abb92(60)=abb92(60)*abb92(17)
      abb92(59)=abb92(59)*abb92(67)
      abb92(59)=abb92(60)+abb92(59)
      abb92(59)=abb92(59)*c4
      abb92(59)=-abb92(59)-abb92(68)+2.0_ki*abb92(69)
      abb92(60)=abb92(59)*spbe7l5
      abb92(60)=abb92(63)+abb92(60)
      abb92(63)=-spbk2k1*abb92(60)
      abb92(68)=es12*abb92(8)
      abb92(59)=spbe7k1*abb92(59)*abb92(68)
      abb92(69)=spbe7k1*abb92(8)
      abb92(70)=abb92(69)*abb92(39)
      abb92(71)=-spak1l5*abb92(70)
      abb92(72)=mB**3
      abb92(57)=abb92(72)*abb92(57)
      abb92(73)=abb92(57)*spbk3k2
      abb92(74)=abb92(48)*abb92(73)
      abb92(56)=abb92(72)*abb92(56)
      abb92(75)=spbk3k2*abb92(50)
      abb92(76)=abb92(56)*abb92(75)
      abb92(74)=abb92(74)-abb92(76)
      abb92(76)=abb92(8)*abb92(9)
      abb92(77)=abb92(74)*abb92(76)
      abb92(63)=-abb92(59)+abb92(63)+abb92(77)+abb92(71)
      abb92(63)=es12*abb92(63)
      abb92(71)=abb92(32)*abb92(6)
      abb92(15)=abb92(71)*abb92(15)
      abb92(14)=abb92(15)*abb92(14)
      abb92(77)=abb92(71)*abb92(18)
      abb92(14)=abb92(77)+abb92(14)
      abb92(14)=abb92(14)*NC
      abb92(11)=abb92(15)*abb92(11)
      abb92(77)=abb92(17)*abb92(71)
      abb92(11)=abb92(77)+abb92(11)
      abb92(11)=abb92(11)*c4
      abb92(15)=abb92(15)*abb92(27)
      abb92(27)=abb92(29)*abb92(71)
      abb92(15)=abb92(27)+abb92(15)
      abb92(11)=-abb92(11)-abb92(14)+2.0_ki*abb92(15)
      abb92(14)=abb92(11)*spbe7k1
      abb92(15)=abb92(14)*es12
      abb92(27)=abb92(32)*spbk3k2
      abb92(77)=-abb92(52)*abb92(27)
      abb92(78)=-abb92(15)-abb92(77)
      abb92(78)=spak1l5*abb92(78)
      abb92(79)=abb92(18)*abb92(21)
      abb92(65)=abb92(79)+abb92(65)
      abb92(79)=abb92(65)*abb92(25)
      abb92(29)=abb92(29)*abb92(21)
      abb92(29)=abb92(29)+abb92(64)
      abb92(31)=abb92(29)*abb92(31)
      abb92(64)=abb92(17)*abb92(21)
      abb92(64)=abb92(64)+abb92(67)
      abb92(67)=abb92(64)*abb92(36)
      abb92(31)=abb92(67)+abb92(79)-abb92(31)
      abb92(67)=spak1l5**2
      abb92(79)=-spbe7k1*abb92(31)*abb92(67)
      abb92(37)=abb92(37)*c4
      abb92(40)=abb92(40)*NC
      abb92(37)=-abb92(40)-abb92(37)+2.0_ki*abb92(43)
      abb92(40)=abb92(37)*spbe7l6
      abb92(43)=spbk2k1*spak1l5
      abb92(80)=-abb92(43)*abb92(40)
      abb92(78)=abb92(80)+abb92(79)+abb92(78)
      abb92(78)=spbl5k1*abb92(78)
      abb92(79)=abb92(61)*abb92(68)
      abb92(53)=abb92(53)*abb92(8)
      abb92(80)=spak1l5*abb92(53)
      abb92(80)=abb92(80)-abb92(79)
      abb92(80)=es12*abb92(80)
      abb92(81)=-abb92(21)*abb92(48)
      abb92(50)=abb92(81)+abb92(50)
      abb92(67)=abb92(50)*abb92(67)
      abb92(12)=abb92(13)+abb92(12)
      abb92(71)=-abb92(71)*abb92(12)
      abb92(81)=abb92(71)*es12
      abb92(82)=spak1l5*abb92(81)
      abb92(67)=abb92(67)+abb92(82)
      abb92(67)=spbl5k1*abb92(67)
      abb92(67)=abb92(80)+abb92(67)
      abb92(67)=spbk3k1*abb92(67)
      abb92(80)=abb92(11)*spbe7l5
      abb92(82)=abb92(71)*spbl5k3
      abb92(82)=abb92(82)+abb92(80)
      abb92(83)=abb92(82)*spak2l5
      abb92(84)=spbl5k1*spak1l5
      abb92(85)=abb92(84)*spbk2k1
      abb92(86)=-abb92(85)*abb92(83)
      abb92(87)=abb92(36)*abb92(17)
      abb92(72)=abb92(5)*abb92(72)*abb92(6)
      abb92(88)=abb92(21)*abb92(72)
      abb92(89)=abb92(87)*abb92(88)
      abb92(90)=abb92(88)*abb92(18)
      abb92(45)=abb92(45)*spbl6k1
      abb92(25)=abb92(45)-abb92(25)
      abb92(45)=abb92(25)*abb92(90)
      abb92(45)=abb92(89)-abb92(45)
      abb92(89)=es12*abb92(9)
      abb92(91)=abb92(45)*abb92(89)
      abb92(92)=abb92(20)*abb92(6)
      abb92(93)=abb92(92)*abb92(18)
      abb92(94)=-abb92(93)*abb92(25)
      abb92(95)=abb92(87)*abb92(92)
      abb92(94)=abb92(94)+abb92(95)
      abb92(95)=abb92(84)*spak2l5
      abb92(96)=abb92(94)*abb92(95)
      abb92(91)=abb92(91)+abb92(96)
      abb92(91)=spbe7k2*abb92(91)
      abb92(96)=abb92(88)*spbk3k2
      abb92(48)=abb92(48)*abb92(96)
      abb92(75)=abb92(72)*abb92(75)
      abb92(48)=abb92(75)-abb92(48)
      abb92(75)=-abb92(48)*abb92(89)
      abb92(89)=abb92(92)*spbk3k2
      abb92(52)=-abb92(52)*abb92(89)
      abb92(95)=-abb92(52)*abb92(95)
      abb92(75)=abb92(91)+abb92(75)+abb92(95)
      abb92(75)=abb92(7)*abb92(75)
      abb92(91)=abb92(31)*spbe7l6
      abb92(95)=abb92(50)*spbl6k3
      abb92(91)=abb92(91)+abb92(95)
      abb92(91)=abb92(91)*spal5l6
      abb92(95)=-abb92(84)*abb92(91)
      abb92(39)=abb92(66)*abb92(39)
      abb92(97)=abb92(53)*spbl6k3
      abb92(39)=abb92(39)+abb92(97)
      abb92(39)=abb92(39)*spak2l6
      abb92(97)=-abb92(43)*abb92(39)
      abb92(58)=abb92(58)*abb92(47)
      abb92(55)=abb92(13)*abb92(55)
      abb92(55)=abb92(58)+abb92(55)
      abb92(58)=spbk2k1*abb92(55)*abb92(68)
      abb92(32)=-abb92(32)*abb92(12)
      abb92(85)=-abb92(32)*abb92(85)
      abb92(58)=abb92(58)+abb92(85)
      abb92(58)=spbl6k3*abb92(58)
      abb92(85)=abb92(87)*abb92(57)
      abb92(18)=abb92(57)*abb92(18)
      abb92(87)=abb92(25)*abb92(18)
      abb92(85)=abb92(85)-abb92(87)
      abb92(68)=abb92(9)*abb92(85)*abb92(68)
      abb92(25)=-abb92(41)*abb92(25)
      abb92(36)=abb92(38)*abb92(36)
      abb92(25)=abb92(36)+abb92(25)
      abb92(36)=abb92(25)*abb92(84)
      abb92(36)=abb92(68)+abb92(36)
      abb92(36)=spbe7k2*abb92(36)
      abb92(36)=abb92(97)+abb92(95)+abb92(75)+abb92(36)+abb92(86)+abb92(67)+abb&
      &92(58)+abb92(78)+abb92(63)+abb92(44)
      abb92(36)=4.0_ki*abb92(36)
      abb92(31)=abb92(31)*spak1l5
      abb92(44)=-spbe7k1*abb92(31)
      abb92(58)=abb92(94)*spbe7k2
      abb92(52)=abb92(58)-abb92(52)
      abb92(52)=abb92(52)*abb92(7)
      abb92(58)=spak2l5*abb92(52)
      abb92(50)=abb92(50)*spak1l5
      abb92(63)=spbk3k1*abb92(50)
      abb92(67)=spbe7k2*abb92(25)
      abb92(44)=-abb92(91)+abb92(58)+abb92(67)+abb92(63)+abb92(44)-abb92(77)
      abb92(44)=8.0_ki*abb92(44)
      abb92(55)=abb92(55)*spbl6k3*abb92(8)
      abb92(58)=spbl5k3*abb92(61)
      abb92(55)=abb92(58)+abb92(55)-abb92(60)
      abb92(55)=spbk2k1*abb92(55)
      abb92(58)=spbe7k2*abb92(85)
      abb92(58)=abb92(58)+abb92(74)
      abb92(58)=abb92(76)*abb92(58)
      abb92(60)=-spbk3k1*abb92(79)
      abb92(45)=spbe7k2*abb92(45)
      abb92(45)=-abb92(48)+abb92(45)
      abb92(45)=abb92(7)*abb92(9)*abb92(45)
      abb92(45)=abb92(45)+abb92(60)-abb92(59)+abb92(55)+abb92(58)
      abb92(45)=8.0_ki*abb92(45)
      abb92(24)=abb92(24)*NC
      abb92(35)=abb92(35)*c4
      abb92(24)=-abb92(35)-abb92(24)+2.0_ki*abb92(30)
      abb92(30)=abb92(24)*abb92(9)
      abb92(35)=-spbl6k2*abb92(30)
      abb92(35)=abb92(35)-abb92(31)
      abb92(35)=spbe7k1*abb92(35)
      abb92(48)=abb92(81)+abb92(50)
      abb92(23)=-abb92(23)*abb92(13)
      abb92(50)=abb92(51)*abb92(47)
      abb92(23)=abb92(23)-abb92(50)
      abb92(50)=abb92(23)*abb92(9)
      abb92(51)=spbl6k2*abb92(50)
      abb92(51)=abb92(51)+abb92(48)
      abb92(51)=spbk3k1*abb92(51)
      abb92(15)=abb92(51)-abb92(15)+abb92(35)
      abb92(15)=8.0_ki*abb92(15)
      abb92(35)=abb92(71)*spbk3k1
      abb92(35)=abb92(35)-abb92(14)
      abb92(51)=32.0_ki*abb92(35)
      abb92(55)=-4.0_ki*abb92(62)
      abb92(58)=spbe7l6*abb92(31)
      abb92(11)=abb92(11)*spbe7l6
      abb92(59)=es12*abb92(11)
      abb92(24)=spbe7l6*abb92(24)
      abb92(23)=spbl6k3*abb92(23)
      abb92(23)=abb92(24)+abb92(23)
      abb92(23)=spbl6k2*abb92(9)*abb92(23)
      abb92(24)=spbl6k3*abb92(48)
      abb92(23)=abb92(23)+abb92(24)+abb92(58)+abb92(59)
      abb92(23)=4.0_ki*abb92(23)
      abb92(24)=abb92(71)*spbl6k3
      abb92(11)=abb92(24)+abb92(11)
      abb92(24)=16.0_ki*abb92(11)
      abb92(58)=abb92(65)*NC
      abb92(59)=abb92(64)*c4
      abb92(29)=-abb92(59)-abb92(58)+2.0_ki*abb92(29)
      abb92(58)=abb92(29)*spbe7k1
      abb92(21)=-abb92(21)*abb92(13)
      abb92(21)=abb92(21)-abb92(47)
      abb92(59)=abb92(21)*spbk3k1
      abb92(58)=abb92(59)-abb92(58)
      abb92(59)=-8.0_ki*abb92(58)
      abb92(60)=abb92(29)*spbe7l6
      abb92(61)=abb92(21)*spbl6k3
      abb92(60)=abb92(61)+abb92(60)
      abb92(61)=-4.0_ki*abb92(60)
      abb92(62)=abb92(32)*spbl6k3
      abb92(40)=-abb92(83)-abb92(62)-abb92(40)
      abb92(40)=spbl5k1*abb92(40)
      abb92(14)=-spbl5k1*abb92(14)
      abb92(63)=spbl5k1*abb92(71)
      abb92(53)=abb92(53)+abb92(63)
      abb92(53)=spbk3k1*abb92(53)
      abb92(14)=abb92(53)-abb92(70)+abb92(14)
      abb92(14)=spak1k2*abb92(14)
      abb92(53)=-spbl5k3*abb92(54)
      abb92(14)=-abb92(39)+abb92(14)+abb92(53)+abb92(42)+abb92(40)
      abb92(14)=4.0_ki*abb92(14)
      abb92(39)=spak1l5*abb92(58)
      abb92(40)=-spal5l6*abb92(60)
      abb92(38)=abb92(38)*c4
      abb92(41)=abb92(46)*abb92(41)
      abb92(38)=abb92(38)-abb92(41)
      abb92(38)=abb92(38)*spbe7k2
      abb92(27)=abb92(12)*abb92(27)
      abb92(27)=abb92(38)-abb92(27)
      abb92(38)=abb92(92)*abb92(17)
      abb92(41)=abb92(38)*c4
      abb92(42)=abb92(46)*abb92(93)
      abb92(41)=abb92(41)-abb92(42)
      abb92(41)=abb92(41)*spbe7k2
      abb92(42)=abb92(12)*abb92(89)
      abb92(41)=abb92(41)-abb92(42)
      abb92(41)=abb92(41)*abb92(7)
      abb92(42)=-spak2l5*abb92(41)
      abb92(39)=abb92(40)+abb92(42)+abb92(39)-abb92(27)
      abb92(39)=spbl6l5*abb92(39)
      abb92(30)=abb92(30)-abb92(37)
      abb92(30)=spbe7l5*abb92(30)
      abb92(40)=-abb92(37)*abb92(66)
      abb92(42)=-abb92(8)*abb92(62)
      abb92(40)=abb92(40)+abb92(42)
      abb92(40)=spak2l6*abb92(40)
      abb92(30)=abb92(40)+abb92(30)
      abb92(30)=spbl6k2*abb92(30)
      abb92(19)=abb92(19)*NC
      abb92(34)=abb92(34)*c4
      abb92(19)=-2.0_ki*abb92(28)+abb92(19)+abb92(34)
      abb92(34)=-abb92(20)*abb92(19)
      abb92(40)=abb92(9)*abb92(22)*abb92(19)
      abb92(34)=abb92(40)+abb92(34)
      abb92(34)=spbe7l6*abb92(34)
      abb92(40)=abb92(22)*abb92(6)
      abb92(19)=-abb92(9)*abb92(40)*abb92(19)
      abb92(33)=abb92(33)*abb92(92)
      abb92(33)=abb92(33)+abb92(38)
      abb92(33)=abb92(33)*c4
      abb92(16)=abb92(16)*abb92(92)
      abb92(16)=abb92(16)+abb92(93)
      abb92(16)=abb92(16)*NC
      abb92(28)=abb92(28)*abb92(92)
      abb92(16)=abb92(19)-2.0_ki*abb92(28)+abb92(33)+abb92(16)
      abb92(19)=-spbe7l5*abb92(16)
      abb92(28)=abb92(13)*abb92(40)
      abb92(33)=abb92(47)*mB
      abb92(38)=abb92(33)*abb92(6)
      abb92(28)=abb92(28)+abb92(38)
      abb92(28)=abb92(28)*abb92(9)
      abb92(38)=abb92(12)*abb92(92)
      abb92(28)=abb92(28)-abb92(38)
      abb92(38)=spbl5k3*abb92(28)
      abb92(19)=abb92(19)+abb92(38)
      abb92(19)=spak2l5*abb92(19)
      abb92(16)=-spbe7k1*abb92(16)
      abb92(37)=-spbl6k2*abb92(37)*abb92(69)
      abb92(38)=spbl6k2*abb92(32)*abb92(8)
      abb92(28)=abb92(38)-abb92(28)
      abb92(28)=spbk3k1*abb92(28)
      abb92(16)=abb92(28)+abb92(16)+abb92(37)
      abb92(16)=spak1k2*abb92(16)
      abb92(28)=spbe7l5*abb92(31)
      abb92(31)=es12*abb92(80)
      abb92(32)=abb92(50)-abb92(32)
      abb92(32)=spbl6k2*abb92(32)
      abb92(32)=abb92(32)+abb92(48)
      abb92(32)=spbl5k3*abb92(32)
      abb92(12)=-abb92(20)*abb92(12)
      abb92(20)=abb92(22)*abb92(13)
      abb92(20)=abb92(33)+abb92(20)
      abb92(20)=abb92(9)*abb92(20)
      abb92(12)=abb92(20)+abb92(12)
      abb92(12)=spbl6k3*abb92(12)
      abb92(12)=abb92(16)+abb92(19)+abb92(32)+abb92(12)+abb92(31)+abb92(34)+abb&
      &92(28)+abb92(39)+abb92(30)
      abb92(12)=4.0_ki*abb92(12)
      abb92(16)=16.0_ki*abb92(82)
      abb92(19)=-spbe7l5*abb92(29)
      abb92(20)=-spbl5k3*abb92(21)
      abb92(19)=abb92(19)+abb92(20)
      abb92(19)=4.0_ki*abb92(19)
      abb92(20)=-abb92(43)*abb92(82)
      abb92(21)=abb92(90)*abb92(46)
      abb92(17)=abb92(17)*c4
      abb92(22)=-abb92(88)*abb92(17)
      abb92(21)=abb92(22)+abb92(21)
      abb92(21)=abb92(9)*abb92(21)
      abb92(18)=abb92(18)*abb92(46)
      abb92(17)=-abb92(57)*abb92(17)
      abb92(17)=abb92(17)+abb92(18)
      abb92(18)=abb92(76)*spbl6k2
      abb92(17)=abb92(17)*abb92(18)
      abb92(22)=abb92(8)*spak1l5
      abb92(25)=abb92(25)*abb92(22)
      abb92(17)=abb92(17)+abb92(21)+abb92(25)
      abb92(17)=spbe7k2*abb92(17)
      abb92(21)=-spak1l6*spbk2k1*abb92(11)
      abb92(25)=abb92(73)*abb92(13)
      abb92(28)=abb92(47)*spbk3k2
      abb92(29)=abb92(56)*abb92(28)
      abb92(25)=abb92(29)+abb92(25)
      abb92(18)=abb92(25)*abb92(18)
      abb92(25)=spak1l5*abb92(52)
      abb92(13)=abb92(96)*abb92(13)
      abb92(28)=abb92(72)*abb92(28)
      abb92(13)=abb92(28)+abb92(13)
      abb92(13)=abb92(9)*abb92(13)
      abb92(22)=-abb92(77)*abb92(22)
      abb92(13)=abb92(21)+abb92(25)+abb92(17)+abb92(18)+abb92(13)+abb92(22)+abb&
      &92(20)
      abb92(13)=4.0_ki*abb92(13)
      abb92(11)=-8.0_ki*abb92(11)
      abb92(17)=abb92(8)*abb92(27)
      abb92(17)=abb92(41)+abb92(17)
      abb92(17)=4.0_ki*abb92(17)
      abb92(18)=-8.0_ki*abb92(82)
      abb92(20)=-spbe7k1*abb92(26)
      abb92(21)=-spbk3k1*abb92(49)
      abb92(20)=abb92(20)+abb92(21)
      abb92(20)=4.0_ki*abb92(20)
      abb92(21)=-8.0_ki*abb92(35)
      R2d92=0.0_ki
      rat2 = rat2 + R2d92
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='92' value='", &
          & R2d92, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd92h2
