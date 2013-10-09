module     p9_csbar_epnebbbarg_abbrevd93h1
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(100), public :: abb93
   complex(ki), public :: R2d93
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
      abb93(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb93(2)=1.0_ki/(-es71+es56-es567+es234)
      abb93(3)=NC**(-1)
      abb93(4)=es234**(-1)
      abb93(5)=spak2l5**(-1)
      abb93(6)=spbl5k2**(-1)
      abb93(7)=spbl6k2**(-1)
      abb93(8)=spak2l6**(-1)
      abb93(9)=sqrt(mB**2)
      abb93(10)=1.0_ki/(-es71+es712-es12)
      abb93(11)=spbk3k2*spak2e7
      abb93(12)=spak2k4*abb93(4)
      abb93(13)=abb93(11)*abb93(12)
      abb93(12)=spak4e7*abb93(12)*spbk4k3
      abb93(14)=abb93(13)+abb93(12)
      abb93(15)=TR*gW
      abb93(15)=abb93(15)**2*i_*CVSC*abb93(2)*abb93(1)
      abb93(16)=abb93(15)*abb93(3)
      abb93(17)=abb93(7)**2
      abb93(18)=abb93(17)*abb93(16)
      abb93(19)=mB**4
      abb93(20)=abb93(18)*abb93(19)
      abb93(21)=abb93(20)*abb93(14)
      abb93(22)=2.0_ki*c3
      abb93(23)=abb93(22)*abb93(5)
      abb93(24)=abb93(21)*abb93(23)
      abb93(25)=abb93(3)**2
      abb93(25)=abb93(25)+1.0_ki
      abb93(26)=abb93(15)*abb93(25)
      abb93(27)=abb93(17)*c4
      abb93(19)=abb93(27)*abb93(19)*abb93(26)
      abb93(28)=abb93(19)*abb93(14)
      abb93(29)=abb93(28)*abb93(5)
      abb93(24)=abb93(24)-abb93(29)
      abb93(29)=es12*abb93(8)
      abb93(30)=spbe7k1*abb93(29)
      abb93(31)=spbe7l6*spbk2k1
      abb93(30)=abb93(30)+abb93(31)
      abb93(24)=abb93(24)*abb93(30)
      abb93(21)=abb93(21)*abb93(22)
      abb93(21)=abb93(21)-abb93(28)
      abb93(28)=spbk2k1*spbe7l5
      abb93(21)=abb93(21)*abb93(28)
      abb93(30)=abb93(10)*spak4k7*spbk7e7
      abb93(11)=abb93(30)*abb93(11)
      abb93(32)=mB**3
      abb93(33)=abb93(32)*abb93(26)
      abb93(34)=spbl5k1*c4
      abb93(35)=abb93(33)*abb93(34)
      abb93(36)=abb93(35)*abb93(11)
      abb93(37)=abb93(22)*abb93(11)
      abb93(38)=abb93(37)*abb93(32)
      abb93(39)=abb93(16)*spbl5k1
      abb93(40)=abb93(38)*abb93(39)
      abb93(36)=abb93(40)-abb93(36)
      abb93(17)=abb93(17)*abb93(9)
      abb93(36)=abb93(36)*abb93(17)
      abb93(21)=abb93(36)-abb93(21)
      abb93(36)=-abb93(8)*abb93(21)
      abb93(40)=spbl5k1*abb93(7)
      abb93(41)=abb93(40)*abb93(13)
      abb93(42)=abb93(40)*abb93(12)
      abb93(41)=abb93(42)+abb93(41)
      abb93(15)=abb93(15)*mB**2
      abb93(43)=abb93(15)*abb93(3)
      abb93(44)=abb93(43)*abb93(22)
      abb93(41)=abb93(41)*abb93(44)
      abb93(15)=abb93(15)*abb93(25)
      abb93(25)=abb93(7)*c4
      abb93(45)=abb93(25)*spbl5k1
      abb93(46)=abb93(45)*abb93(15)
      abb93(47)=abb93(46)*abb93(13)
      abb93(48)=abb93(15)*abb93(12)
      abb93(49)=abb93(48)*abb93(45)
      abb93(41)=-abb93(41)+abb93(47)+abb93(49)
      abb93(47)=abb93(41)*abb93(8)
      abb93(50)=spbe7k1*spak1l6
      abb93(51)=abb93(47)*abb93(50)
      abb93(52)=abb93(12)*abb93(7)
      abb93(53)=abb93(52)*abb93(43)
      abb93(54)=abb93(43)*abb93(7)
      abb93(55)=abb93(54)*abb93(13)
      abb93(53)=abb93(53)+abb93(55)
      abb93(55)=abb93(53)*abb93(23)
      abb93(56)=abb93(15)*abb93(25)
      abb93(57)=abb93(56)*abb93(13)
      abb93(58)=abb93(56)*abb93(12)
      abb93(57)=abb93(57)+abb93(58)
      abb93(59)=abb93(57)*abb93(5)
      abb93(55)=abb93(55)-abb93(59)
      abb93(59)=abb93(55)*spbe7k1
      abb93(60)=spbl6k1*spak1l6
      abb93(61)=abb93(60)*abb93(59)
      abb93(36)=abb93(61)+abb93(36)+abb93(51)+abb93(24)
      abb93(36)=es12*abb93(36)
      abb93(51)=mB*abb93(16)
      abb93(61)=abb93(42)*abb93(51)
      abb93(62)=abb93(51)*abb93(13)
      abb93(63)=abb93(62)*abb93(40)
      abb93(61)=abb93(61)+abb93(63)
      abb93(61)=abb93(61)*abb93(22)
      abb93(63)=mB*abb93(26)
      abb93(64)=abb93(63)*abb93(45)
      abb93(65)=abb93(64)*abb93(14)
      abb93(61)=abb93(61)-abb93(65)
      abb93(61)=abb93(61)*abb93(9)
      abb93(65)=abb93(28)*abb93(61)
      abb93(66)=spak2l6*spbk2k1
      abb93(67)=abb93(66)*abb93(55)
      abb93(68)=spbl6k1*spbe7l5
      abb93(69)=abb93(67)*abb93(68)
      abb93(30)=abb93(30)*spak2e7
      abb93(64)=abb93(64)*abb93(30)
      abb93(70)=abb93(30)*abb93(22)
      abb93(71)=abb93(70)*abb93(51)
      abb93(72)=abb93(40)*abb93(71)
      abb93(64)=abb93(64)-abb93(72)
      abb93(64)=abb93(64)*abb93(9)
      abb93(72)=-spbk2k1*abb93(64)
      abb93(73)=abb93(23)*abb93(30)
      abb93(74)=abb93(73)*abb93(54)
      abb93(75)=abb93(30)*abb93(5)
      abb93(76)=abb93(75)*abb93(56)
      abb93(74)=abb93(74)-abb93(76)
      abb93(66)=abb93(66)*abb93(74)
      abb93(76)=spbl6k1*abb93(66)
      abb93(72)=abb93(72)+abb93(76)
      abb93(72)=spbl5k3*abb93(72)
      abb93(65)=abb93(72)+abb93(65)+abb93(69)
      abb93(65)=spak1l5*abb93(65)
      abb93(41)=abb93(61)+abb93(41)
      abb93(31)=abb93(41)*abb93(31)
      abb93(69)=abb93(28)*abb93(47)
      abb93(72)=abb93(46)*abb93(30)
      abb93(76)=abb93(44)*abb93(30)
      abb93(77)=abb93(76)*abb93(40)
      abb93(72)=abb93(72)-abb93(77)
      abb93(77)=abb93(72)*abb93(8)
      abb93(78)=spbl5k3*spbk2k1
      abb93(79)=abb93(78)*abb93(77)
      abb93(69)=abb93(69)+abb93(79)
      abb93(69)=spak2l5*abb93(69)
      abb93(31)=abb93(69)+abb93(31)
      abb93(31)=spak1l6*abb93(31)
      abb93(69)=abb93(20)*abb93(73)
      abb93(79)=abb93(19)*abb93(75)
      abb93(69)=abb93(69)-abb93(79)
      abb93(79)=-abb93(69)*abb93(29)
      abb93(80)=-spak1l6*abb93(77)
      abb93(81)=-abb93(74)*abb93(60)
      abb93(79)=abb93(79)+abb93(80)+abb93(81)
      abb93(79)=es12*abb93(79)
      abb93(80)=abb93(26)*abb93(34)
      abb93(81)=abb93(80)*abb93(30)
      abb93(82)=abb93(70)*abb93(39)
      abb93(81)=abb93(81)-abb93(82)
      abb93(82)=spak1l6**2
      abb93(83)=-spbl6k1*abb93(81)*abb93(82)
      abb93(79)=abb93(83)+abb93(79)
      abb93(79)=spbk3k1*abb93(79)
      abb93(83)=abb93(16)*abb93(32)*abb93(23)
      abb93(84)=abb93(83)*abb93(42)
      abb93(45)=abb93(33)*abb93(45)
      abb93(85)=abb93(5)*abb93(45)*abb93(12)
      abb93(84)=abb93(85)-abb93(84)
      abb93(85)=es12*abb93(9)
      abb93(86)=-abb93(84)*abb93(85)
      abb93(87)=abb93(43)*abb93(12)
      abb93(88)=abb93(87)*abb93(23)
      abb93(89)=abb93(88)*spbl5k1
      abb93(90)=abb93(48)*abb93(5)
      abb93(91)=abb93(90)*abb93(34)
      abb93(89)=abb93(89)-abb93(91)
      abb93(91)=abb93(60)*abb93(89)*spak2l6
      abb93(86)=abb93(86)+abb93(91)
      abb93(86)=spbe7k2*abb93(86)
      abb93(91)=abb93(5)*abb93(11)
      abb93(45)=abb93(45)*abb93(91)
      abb93(92)=abb93(5)*abb93(38)*abb93(16)
      abb93(93)=abb93(92)*abb93(40)
      abb93(45)=abb93(45)-abb93(93)
      abb93(85)=abb93(45)*abb93(85)
      abb93(34)=abb93(34)*abb93(91)*abb93(15)
      abb93(93)=abb93(37)*abb93(43)
      abb93(94)=abb93(93)*abb93(5)
      abb93(95)=abb93(94)*spbl5k1
      abb93(34)=abb93(34)-abb93(95)
      abb93(95)=abb93(34)*spak2l6
      abb93(96)=abb93(60)*abb93(95)
      abb93(85)=abb93(86)+abb93(85)+abb93(96)
      abb93(85)=abb93(6)*abb93(85)
      abb93(72)=abb93(64)-abb93(72)
      abb93(86)=-spak1l6*abb93(72)
      abb93(96)=es12*abb93(69)
      abb93(86)=abb93(86)+abb93(96)
      abb93(86)=spbk2k1*abb93(86)
      abb93(96)=abb93(60)*abb93(66)
      abb93(86)=abb93(96)+abb93(86)
      abb93(86)=spbl6k3*abb93(86)
      abb93(68)=-es12*abb93(55)*abb93(68)
      abb93(96)=-abb93(81)*abb93(60)
      abb93(97)=abb93(74)*es12
      abb93(98)=-spbl6k1*abb93(97)
      abb93(96)=abb93(96)+abb93(98)
      abb93(96)=spbl5k3*abb93(96)
      abb93(80)=abb93(80)*abb93(14)
      abb93(98)=abb93(14)*abb93(22)
      abb93(99)=abb93(39)*abb93(98)
      abb93(80)=abb93(99)-abb93(80)
      abb93(99)=abb93(80)*spbe7l5
      abb93(100)=abb93(60)*abb93(99)
      abb93(68)=abb93(96)+abb93(100)+abb93(68)
      abb93(68)=spal5l6*abb93(68)
      abb93(46)=abb93(11)*abb93(46)
      abb93(40)=abb93(93)*abb93(40)
      abb93(40)=abb93(40)-abb93(46)
      abb93(46)=-spak1l6*abb93(40)
      abb93(82)=-spbe7k1*abb93(80)*abb93(82)
      abb93(46)=abb93(46)+abb93(82)
      abb93(46)=spbl6k1*abb93(46)
      abb93(67)=abb93(67)*spbe7l6
      abb93(82)=abb93(60)*abb93(67)
      abb93(20)=abb93(20)*abb93(70)
      abb93(19)=abb93(19)*abb93(30)
      abb93(19)=abb93(20)-abb93(19)
      abb93(19)=abb93(19)*abb93(78)
      abb93(20)=abb93(29)*abb93(19)
      abb93(42)=abb93(42)*abb93(44)
      abb93(42)=abb93(42)-abb93(49)
      abb93(49)=abb93(42)*abb93(60)
      abb93(32)=abb93(32)*abb93(22)
      abb93(39)=abb93(32)*abb93(39)
      abb93(35)=abb93(39)-abb93(35)
      abb93(17)=abb93(35)*abb93(12)*abb93(17)
      abb93(35)=abb93(29)*abb93(17)
      abb93(35)=abb93(49)+abb93(35)
      abb93(35)=spbe7k2*abb93(35)
      abb93(20)=abb93(65)+abb93(68)+abb93(86)+abb93(85)+abb93(79)+abb93(35)+abb&
      &93(20)+abb93(82)+abb93(36)+abb93(46)+abb93(31)
      abb93(20)=4.0_ki*abb93(20)
      abb93(31)=abb93(42)*spbe7k2
      abb93(31)=abb93(31)-abb93(40)
      abb93(35)=abb93(89)*spbe7k2
      abb93(36)=abb93(35)*spak2l6
      abb93(36)=abb93(36)+abb93(95)
      abb93(36)=abb93(36)*abb93(6)
      abb93(39)=abb93(81)*spbl5k3
      abb93(39)=abb93(39)-abb93(99)
      abb93(40)=abb93(39)*spal5l6
      abb93(42)=abb93(50)*abb93(80)
      abb93(36)=abb93(36)-abb93(42)-abb93(40)+abb93(31)
      abb93(40)=abb93(81)*spak1l6
      abb93(42)=-spbk3k1*abb93(40)
      abb93(42)=abb93(42)+abb93(36)
      abb93(42)=8.0_ki*abb93(42)
      abb93(17)=spbe7k2*abb93(17)
      abb93(17)=abb93(17)+abb93(19)-abb93(21)
      abb93(17)=abb93(8)*abb93(17)
      abb93(19)=-spbk3k1*abb93(29)
      abb93(21)=spbl6k3*spbk2k1
      abb93(19)=abb93(21)+abb93(19)
      abb93(19)=abb93(69)*abb93(19)
      abb93(21)=-spbe7k2*abb93(84)
      abb93(21)=abb93(45)+abb93(21)
      abb93(21)=abb93(6)*abb93(9)*abb93(21)
      abb93(17)=abb93(21)+abb93(17)+abb93(19)+abb93(24)
      abb93(17)=8.0_ki*abb93(17)
      abb93(19)=abb93(53)*abb93(22)
      abb93(19)=abb93(19)-abb93(57)
      abb93(21)=abb93(19)*abb93(28)
      abb93(24)=abb93(59)*es12
      abb93(28)=abb93(76)*abb93(7)
      abb93(29)=abb93(56)*abb93(30)
      abb93(28)=abb93(28)-abb93(29)
      abb93(29)=abb93(78)*abb93(28)
      abb93(45)=abb93(66)*spbl6k3
      abb93(21)=abb93(67)+abb93(21)+abb93(29)+abb93(45)+abb93(24)
      abb93(24)=abb93(71)*abb93(7)
      abb93(29)=abb93(63)*abb93(30)
      abb93(45)=abb93(29)*abb93(25)
      abb93(24)=abb93(24)-abb93(45)
      abb93(45)=spbl5k2*abb93(9)
      abb93(46)=-abb93(24)*abb93(45)
      abb93(46)=abb93(46)-abb93(40)-abb93(97)
      abb93(46)=spbk3k1*abb93(46)
      abb93(49)=abb93(51)*abb93(52)
      abb93(53)=abb93(62)*abb93(7)
      abb93(49)=abb93(49)+abb93(53)
      abb93(49)=abb93(49)*abb93(22)
      abb93(53)=abb93(63)*abb93(14)
      abb93(57)=abb93(25)*abb93(53)
      abb93(49)=abb93(49)-abb93(57)
      abb93(45)=spbe7k1*abb93(49)*abb93(45)
      abb93(36)=abb93(46)+abb93(45)+abb93(36)+abb93(21)
      abb93(36)=8.0_ki*abb93(36)
      abb93(45)=-spbk3k1*abb93(97)
      abb93(21)=abb93(45)+abb93(21)
      abb93(21)=8.0_ki*abb93(21)
      abb93(45)=abb93(70)*abb93(16)
      abb93(26)=abb93(26)*c4
      abb93(46)=abb93(26)*abb93(30)
      abb93(45)=abb93(45)-abb93(46)
      abb93(46)=abb93(45)*spbk3k1
      abb93(14)=abb93(26)*abb93(14)
      abb93(16)=abb93(16)*abb93(98)
      abb93(14)=abb93(16)-abb93(14)
      abb93(16)=-spbe7k1*abb93(14)
      abb93(16)=abb93(16)+abb93(46)
      abb93(16)=8.0_ki*abb93(16)
      abb93(26)=spbe7k1*abb93(47)
      abb93(57)=spbl6k1*abb93(59)
      abb93(59)=abb93(74)*spbl6k1
      abb93(60)=-abb93(77)-abb93(59)
      abb93(60)=spbk3k1*abb93(60)
      abb93(26)=abb93(60)+abb93(26)+abb93(57)
      abb93(26)=spak1k2*abb93(26)
      abb93(57)=abb93(19)*spbe7l5
      abb93(60)=abb93(28)*spbl5k3
      abb93(57)=abb93(57)+abb93(60)
      abb93(55)=spak2l6*spbe7l6*abb93(55)
      abb93(55)=abb93(55)+abb93(57)
      abb93(55)=spbl6k1*abb93(55)
      abb93(41)=spbe7l6*abb93(41)
      abb93(59)=spak2l6*abb93(59)
      abb93(59)=abb93(59)-abb93(72)
      abb93(59)=spbl6k3*abb93(59)
      abb93(47)=spbe7l5*abb93(47)
      abb93(60)=spbl5k3*abb93(77)
      abb93(47)=abb93(47)+abb93(60)
      abb93(47)=spak2l5*abb93(47)
      abb93(26)=abb93(47)+abb93(59)+abb93(41)+abb93(55)+abb93(26)
      abb93(26)=4.0_ki*abb93(26)
      abb93(41)=abb93(51)*abb93(12)
      abb93(41)=abb93(41)+abb93(62)
      abb93(47)=abb93(41)*abb93(23)
      abb93(53)=c4*abb93(53)
      abb93(55)=abb93(53)*abb93(5)
      abb93(47)=abb93(47)-abb93(55)
      abb93(47)=abb93(47)*abb93(9)
      abb93(55)=abb93(43)*abb93(13)
      abb93(55)=abb93(55)+abb93(87)
      abb93(23)=abb93(55)*abb93(23)
      abb93(15)=abb93(15)*c4
      abb93(13)=abb93(15)*abb93(13)
      abb93(48)=abb93(48)*c4
      abb93(13)=abb93(48)+abb93(13)
      abb93(48)=abb93(13)*abb93(5)
      abb93(23)=abb93(47)-abb93(23)+abb93(48)
      abb93(47)=spbl5k2*abb93(8)
      abb93(48)=abb93(19)*abb93(47)
      abb93(48)=abb93(48)+abb93(23)
      abb93(48)=spbe7k1*abb93(48)
      abb93(31)=abb93(8)*abb93(31)
      abb93(59)=c4*abb93(75)*abb93(63)
      abb93(51)=abb93(73)*abb93(51)
      abb93(51)=abb93(59)-abb93(51)
      abb93(51)=abb93(51)*abb93(9)
      abb93(43)=abb93(73)*abb93(43)
      abb93(59)=abb93(15)*abb93(75)
      abb93(43)=abb93(51)+abb93(43)-abb93(59)
      abb93(51)=-abb93(28)*abb93(47)
      abb93(51)=abb93(51)+abb93(43)
      abb93(51)=spbk3k1*abb93(51)
      abb93(34)=abb93(34)+abb93(35)
      abb93(34)=abb93(6)*abb93(34)
      abb93(31)=abb93(34)+abb93(51)+abb93(48)+abb93(31)
      abb93(31)=spak1k2*abb93(31)
      abb93(34)=abb93(44)*abb93(52)
      abb93(34)=abb93(34)-abb93(58)
      abb93(34)=abb93(34)*spbe7k2
      abb93(35)=abb93(11)*abb93(56)
      abb93(37)=abb93(37)*abb93(54)
      abb93(34)=abb93(34)-abb93(37)+abb93(35)
      abb93(35)=abb93(90)*c4
      abb93(35)=abb93(35)-abb93(88)
      abb93(35)=abb93(35)*spbe7k2
      abb93(37)=abb93(15)*abb93(91)
      abb93(35)=abb93(35)-abb93(37)+abb93(94)
      abb93(35)=abb93(35)*abb93(6)
      abb93(37)=-spak2l6*abb93(35)
      abb93(44)=abb93(45)*spbl5k3
      abb93(48)=abb93(14)*spbe7l5
      abb93(44)=abb93(44)+abb93(48)
      abb93(48)=spal5l6*abb93(44)
      abb93(50)=-abb93(14)*abb93(50)
      abb93(46)=spak1l6*abb93(46)
      abb93(37)=abb93(48)+abb93(37)+abb93(46)+abb93(50)+abb93(34)
      abb93(37)=spbl6l5*abb93(37)
      abb93(23)=spak2l6*abb93(23)
      abb93(46)=abb93(49)*abb93(9)
      abb93(19)=-abb93(46)+abb93(19)
      abb93(19)=spbl5k2*abb93(19)
      abb93(48)=spak1l6*abb93(80)
      abb93(19)=abb93(19)+abb93(23)+abb93(48)
      abb93(19)=spbe7l6*abb93(19)
      abb93(23)=abb93(41)*abb93(22)
      abb93(23)=abb93(23)-abb93(53)
      abb93(23)=abb93(9)*abb93(23)
      abb93(22)=-abb93(55)*abb93(22)
      abb93(13)=abb93(23)+abb93(22)+abb93(13)
      abb93(13)=spbe7l5*abb93(13)
      abb93(22)=-spak2l6*abb93(43)
      abb93(23)=abb93(24)*abb93(9)
      abb93(24)=-abb93(23)+abb93(28)
      abb93(24)=spbl5k2*abb93(24)
      abb93(22)=abb93(24)-abb93(40)+abb93(22)
      abb93(22)=spbl6k3*abb93(22)
      abb93(24)=-c4*abb93(29)
      abb93(24)=abb93(24)+abb93(71)
      abb93(24)=abb93(9)*abb93(24)
      abb93(15)=abb93(30)*abb93(15)
      abb93(15)=abb93(24)+abb93(15)-abb93(76)
      abb93(15)=spbl5k3*abb93(15)
      abb93(24)=spak2l5*abb93(57)*abb93(47)
      abb93(28)=-spak1l5*abb93(39)
      abb93(13)=abb93(28)+abb93(24)+abb93(37)+abb93(22)+abb93(15)+abb93(13)+abb&
      &93(19)+abb93(31)
      abb93(13)=4.0_ki*abb93(13)
      abb93(14)=spbe7l6*abb93(14)
      abb93(15)=spbl6k3*abb93(45)
      abb93(14)=abb93(14)+abb93(15)
      abb93(14)=4.0_ki*abb93(14)
      abb93(15)=spbe7l5*abb93(61)
      abb93(19)=-spbl5k3*abb93(64)
      abb93(15)=abb93(15)+abb93(19)
      abb93(15)=4.0_ki*abb93(15)
      abb93(19)=-spbe7l5*abb93(46)
      abb93(22)=-spbl5k3*abb93(23)
      abb93(19)=abb93(19)+abb93(22)
      abb93(19)=4.0_ki*spbl5k2*abb93(19)
      abb93(22)=4.0_ki*abb93(44)
      abb93(11)=-abb93(33)*abb93(27)*abb93(11)
      abb93(23)=abb93(18)*abb93(38)
      abb93(11)=abb93(11)+abb93(23)
      abb93(11)=abb93(11)*abb93(47)
      abb93(23)=-abb93(52)*abb93(83)
      abb93(18)=-abb93(12)*abb93(18)*abb93(32)
      abb93(12)=abb93(33)*abb93(12)
      abb93(24)=abb93(27)*abb93(12)
      abb93(18)=abb93(24)+abb93(18)
      abb93(18)=abb93(18)*abb93(47)
      abb93(12)=abb93(5)*abb93(25)*abb93(12)
      abb93(12)=abb93(18)+abb93(12)+abb93(23)
      abb93(12)=spbe7k2*abb93(12)
      abb93(18)=-abb93(33)*abb93(25)*abb93(91)
      abb93(23)=abb93(7)*abb93(92)
      abb93(11)=abb93(12)+abb93(11)+abb93(18)+abb93(23)
      abb93(11)=4.0_ki*abb93(9)*abb93(11)
      abb93(12)=abb93(8)*abb93(34)
      abb93(12)=-abb93(35)+abb93(12)
      abb93(12)=4.0_ki*abb93(12)
      abb93(18)=-spbe7k1*abb93(61)
      abb93(23)=-spbk3k1*abb93(64)
      abb93(18)=abb93(18)+abb93(23)
      abb93(18)=4.0_ki*abb93(18)
      R2d93=0.0_ki
      rat2 = rat2 + R2d93
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='93' value='", &
          & R2d93, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd93h1
