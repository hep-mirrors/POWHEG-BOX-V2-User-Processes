module     p5_usbar_epnebbbarg_abbrevd335h1
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(98), public :: abb335
   complex(ki), public :: R2d335
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
      abb335(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb335(2)=1.0_ki/(mB**2-es67-es56+es567)
      abb335(3)=NC**(-1)
      abb335(4)=es234**(-1)
      abb335(5)=es567**(-1)
      abb335(6)=spak2l5**(-1)
      abb335(7)=spbl5k2**(-1)
      abb335(8)=spbl6k2**(-1)
      abb335(9)=sqrt(mB**2)
      abb335(10)=1.0_ki/(es34+es567-es12-es234)
      abb335(11)=abb335(4)*abb335(1)
      abb335(12)=abb335(11)*spak2k4
      abb335(13)=TR*gW
      abb335(13)=abb335(13)**2*i_*CVSU*abb335(5)*abb335(2)
      abb335(14)=abb335(12)*abb335(13)
      abb335(15)=c1*abb335(3)
      abb335(16)=abb335(14)*abb335(15)
      abb335(17)=mB**2
      abb335(18)=abb335(16)*abb335(17)
      abb335(19)=abb335(18)*abb335(6)
      abb335(20)=abb335(13)*c2
      abb335(21)=mB*abb335(3)
      abb335(22)=abb335(20)*abb335(21)**2
      abb335(23)=abb335(12)*abb335(6)
      abb335(24)=abb335(22)*abb335(23)
      abb335(19)=abb335(19)-abb335(24)
      abb335(24)=abb335(19)*abb335(7)
      abb335(25)=spbk2k1*spbk4k3
      abb335(26)=abb335(24)*abb335(25)
      abb335(27)=abb335(26)*spak4l6
      abb335(28)=abb335(25)*abb335(8)
      abb335(29)=abb335(28)*abb335(19)
      abb335(30)=abb335(29)*spak4l5
      abb335(31)=-abb335(30)+abb335(27)
      abb335(32)=spak2e7*spbe7l5
      abb335(31)=abb335(32)*abb335(31)
      abb335(33)=abb335(22)*abb335(12)
      abb335(18)=abb335(33)-abb335(18)
      abb335(18)=abb335(18)*abb335(8)
      abb335(21)=abb335(21)*c1
      abb335(14)=abb335(21)*abb335(14)
      abb335(20)=abb335(20)*abb335(3)**2
      abb335(33)=abb335(20)*mB
      abb335(34)=abb335(33)*abb335(12)
      abb335(34)=abb335(14)-abb335(34)
      abb335(35)=abb335(9)*abb335(8)
      abb335(36)=abb335(34)*abb335(35)
      abb335(37)=abb335(18)+abb335(36)
      abb335(38)=abb335(37)*spbk3k2
      abb335(15)=abb335(15)*abb335(13)
      abb335(17)=abb335(17)*abb335(15)
      abb335(17)=abb335(17)-abb335(22)
      abb335(22)=spbk3k1*abb335(10)
      abb335(39)=abb335(22)*abb335(8)
      abb335(40)=-abb335(39)*abb335(1)*abb335(17)
      abb335(13)=abb335(21)*abb335(13)
      abb335(13)=abb335(13)-abb335(33)
      abb335(21)=abb335(1)*abb335(13)
      abb335(41)=abb335(21)*abb335(39)*abb335(9)
      abb335(42)=abb335(40)+abb335(41)
      abb335(43)=abb335(42)*spak1k4
      abb335(38)=abb335(38)-abb335(43)
      abb335(43)=spbk2k1*spak2e7
      abb335(44)=abb335(43)*spbe7l5
      abb335(45)=abb335(44)*abb335(38)
      abb335(46)=spbk3k2*spak2l6
      abb335(47)=abb335(19)*abb335(46)
      abb335(48)=abb335(6)*abb335(1)
      abb335(49)=-abb335(48)*abb335(17)
      abb335(50)=abb335(22)*spak2l6
      abb335(51)=abb335(50)*spak1k4
      abb335(52)=abb335(49)*abb335(51)
      abb335(47)=abb335(47)+abb335(52)
      abb335(44)=abb335(44)*abb335(47)
      abb335(50)=abb335(50)*spak3k4
      abb335(52)=abb335(49)*abb335(50)
      abb335(32)=abb335(32)*spbk3k2
      abb335(53)=abb335(32)*abb335(52)
      abb335(44)=abb335(44)+abb335(53)
      abb335(44)=abb335(44)*abb335(7)
      abb335(53)=abb335(19)*abb335(8)
      abb335(54)=abb335(53)*spbk3k2
      abb335(39)=abb335(49)*abb335(39)
      abb335(55)=abb335(39)*spak1k4
      abb335(54)=abb335(54)+abb335(55)
      abb335(43)=abb335(43)*abb335(54)
      abb335(39)=abb335(39)*spak3k4
      abb335(56)=spak2e7*spbk3k2
      abb335(57)=abb335(39)*abb335(56)
      abb335(43)=abb335(57)+abb335(43)
      abb335(57)=spak2k7*spbk7e7
      abb335(43)=abb335(43)*abb335(57)
      abb335(58)=abb335(42)*spak3k4
      abb335(32)=abb335(58)*abb335(32)
      abb335(31)=-abb335(32)+abb335(45)+abb335(31)+abb335(44)+abb335(43)
      abb335(12)=abb335(20)*abb335(12)
      abb335(12)=abb335(12)-abb335(16)
      abb335(16)=spak4l6*spbk4k3
      abb335(32)=abb335(16)*abb335(12)
      abb335(43)=abb335(32)*spbl5k1
      abb335(44)=abb335(43)*spbe7l5
      abb335(45)=abb335(12)*abb335(46)
      abb335(15)=abb335(20)-abb335(15)
      abb335(20)=-abb335(1)*abb335(15)
      abb335(59)=abb335(20)*abb335(51)
      abb335(45)=abb335(45)+abb335(59)
      abb335(59)=spbe7l5*abb335(45)
      abb335(60)=abb335(59)*spbl5k1
      abb335(61)=abb335(20)*abb335(50)
      abb335(62)=abb335(61)*spbl5k3
      abb335(63)=spbe7l5*abb335(62)
      abb335(44)=abb335(63)-abb335(44)-abb335(60)
      abb335(44)=spal5e7*abb335(44)
      abb335(44)=abb335(44)+abb335(31)
      abb335(14)=abb335(6)*abb335(14)
      abb335(23)=abb335(33)*abb335(23)
      abb335(14)=abb335(14)-abb335(23)
      abb335(23)=spak2e7*abb335(9)
      abb335(33)=abb335(23)*abb335(14)
      abb335(60)=abb335(33)*abb335(16)
      abb335(63)=abb335(33)*abb335(46)
      abb335(48)=abb335(48)*abb335(13)
      abb335(23)=abb335(48)*abb335(23)
      abb335(64)=abb335(23)*abb335(51)
      abb335(63)=abb335(64)-abb335(63)
      abb335(60)=abb335(60)-abb335(63)
      abb335(64)=abb335(60)*spbe7k1
      abb335(65)=spae7k7*spbe7l5
      abb335(66)=abb335(32)*abb335(65)
      abb335(67)=abb335(59)*spae7k7
      abb335(66)=abb335(66)+abb335(67)
      abb335(66)=abb335(66)*spbk7k1
      abb335(67)=spak4k7*spbk7e7
      abb335(68)=spak2e7*abb335(67)
      abb335(69)=abb335(68)*abb335(29)
      abb335(70)=abb335(61)*spbk7k3
      abb335(71)=abb335(70)*abb335(65)
      abb335(66)=-abb335(71)+abb335(66)+abb335(69)
      abb335(69)=abb335(36)*abb335(25)
      abb335(71)=abb335(69)*spbe7l5
      abb335(72)=abb335(71)*spak4e7
      abb335(73)=abb335(23)*abb335(50)
      abb335(74)=abb335(73)*spbe7k3
      abb335(64)=abb335(74)+abb335(64)+abb335(44)+abb335(72)+abb335(66)
      abb335(72)=-2.0_ki*abb335(64)
      abb335(74)=abb335(9)**2
      abb335(31)=-abb335(74)*abb335(31)
      abb335(75)=abb335(14)*abb335(9)
      abb335(76)=abb335(75)*abb335(57)
      abb335(77)=abb335(76)*spbk4k3
      abb335(78)=abb335(12)*spbk4k3
      abb335(79)=abb335(74)*spbe7l5
      abb335(80)=abb335(78)*abb335(79)
      abb335(80)=abb335(80)-abb335(77)
      abb335(80)=spak4l6*abb335(80)
      abb335(59)=abb335(74)*abb335(59)
      abb335(81)=abb335(75)*abb335(46)
      abb335(82)=abb335(48)*abb335(9)
      abb335(83)=abb335(82)*abb335(51)
      abb335(81)=abb335(81)-abb335(83)
      abb335(83)=-abb335(81)*abb335(57)
      abb335(59)=abb335(80)+abb335(83)+abb335(59)
      abb335(59)=spal5e7*abb335(59)
      abb335(80)=spal5k7*spbk7e7
      abb335(60)=abb335(60)*abb335(80)
      abb335(59)=abb335(60)+abb335(59)
      abb335(59)=spbl5k1*abb335(59)
      abb335(60)=abb335(9)**3
      abb335(83)=abb335(60)*spak2e7
      abb335(84)=-spbk4k3*abb335(14)*abb335(83)
      abb335(85)=spbk7l5*spae7k7
      abb335(86)=abb335(85)*abb335(78)
      abb335(87)=-abb335(74)*abb335(86)
      abb335(84)=abb335(84)+abb335(87)
      abb335(84)=spak4l6*abb335(84)
      abb335(14)=-abb335(14)*abb335(46)
      abb335(51)=abb335(48)*abb335(51)
      abb335(14)=abb335(14)+abb335(51)
      abb335(14)=abb335(83)*abb335(14)
      abb335(51)=abb335(45)*abb335(85)
      abb335(87)=-abb335(74)*abb335(51)
      abb335(14)=abb335(84)+abb335(87)+abb335(14)
      abb335(14)=spbe7k1*abb335(14)
      abb335(84)=spbe7k2*spbk7l5
      abb335(87)=abb335(7)*spae7k7
      abb335(88)=abb335(84)*abb335(87)
      abb335(89)=abb335(87)*spbe7l5
      abb335(90)=abb335(89)*spbk7k2
      abb335(88)=abb335(90)-abb335(88)
      abb335(11)=abb335(11)*spak2k4**2
      abb335(90)=abb335(6)*abb335(11)
      abb335(91)=-abb335(15)*abb335(90)*mB**3
      abb335(92)=-abb335(91)*abb335(25)*abb335(35)*abb335(88)
      abb335(60)=-spbe7l5*abb335(34)*abb335(60)*abb335(28)
      abb335(93)=abb335(29)*abb335(57)
      abb335(94)=-abb335(74)*abb335(93)
      abb335(60)=abb335(60)+abb335(94)
      abb335(60)=spak4e7*abb335(60)
      abb335(79)=-abb335(61)*abb335(79)
      abb335(94)=abb335(82)*abb335(50)
      abb335(95)=-abb335(57)*abb335(94)
      abb335(79)=abb335(79)+abb335(95)
      abb335(79)=spal5e7*abb335(79)
      abb335(95)=abb335(80)*abb335(73)
      abb335(79)=abb335(79)+abb335(95)
      abb335(79)=spbl5k3*abb335(79)
      abb335(48)=-abb335(83)*abb335(48)*abb335(50)
      abb335(50)=abb335(85)*abb335(61)
      abb335(74)=abb335(74)*abb335(50)
      abb335(48)=abb335(48)+abb335(74)
      abb335(48)=spbe7k3*abb335(48)
      abb335(14)=abb335(48)+abb335(60)+abb335(79)+abb335(14)+abb335(92)+abb335(&
      &31)+abb335(59)
      abb335(14)=4.0_ki*abb335(14)
      abb335(31)=abb335(18)-abb335(36)
      abb335(31)=spbk3k2*abb335(31)
      abb335(48)=abb335(40)-abb335(41)
      abb335(59)=-spak1k4*abb335(48)
      abb335(31)=abb335(59)+abb335(31)
      abb335(31)=spbk2k1*abb335(31)
      abb335(59)=spbk2k1*abb335(47)
      abb335(60)=abb335(52)*spbk3k2
      abb335(59)=abb335(59)+abb335(60)
      abb335(59)=abb335(59)*abb335(7)
      abb335(60)=spak3k4*spbk3k2
      abb335(48)=-abb335(48)*abb335(60)
      abb335(31)=abb335(59)+abb335(48)+abb335(31)
      abb335(31)=spak2k7*abb335(31)
      abb335(48)=abb335(45)*spbl5k1
      abb335(43)=abb335(48)+abb335(43)
      abb335(48)=abb335(43)*spal5k7
      abb335(74)=abb335(69)*spak4k7
      abb335(31)=-abb335(48)-abb335(74)+abb335(31)
      abb335(31)=spbk7l5*abb335(31)
      abb335(48)=abb335(75)*abb335(16)
      abb335(79)=abb335(81)+abb335(48)
      abb335(79)=abb335(79)*spbk7k1
      abb335(81)=abb335(94)*spbk7k3
      abb335(79)=abb335(79)+abb335(81)
      abb335(81)=-spak2k7*abb335(79)
      abb335(83)=abb335(12)*abb335(9)
      abb335(34)=abb335(83)-abb335(34)
      abb335(83)=abb335(34)*abb335(46)
      abb335(92)=abb335(20)*abb335(9)
      abb335(21)=abb335(92)+abb335(21)
      abb335(21)=abb335(21)*abb335(22)
      abb335(92)=spak1k4*spak2l6
      abb335(94)=abb335(21)*abb335(92)
      abb335(83)=abb335(83)+abb335(94)
      abb335(94)=2.0_ki*spbl5k1
      abb335(95)=abb335(94)*abb335(9)
      abb335(83)=abb335(83)*abb335(95)
      abb335(34)=spbk4k3*abb335(34)*abb335(95)
      abb335(95)=spbk7l5*spak2k7
      abb335(26)=abb335(26)*abb335(95)
      abb335(26)=abb335(26)+abb335(34)
      abb335(26)=spak4l6*abb335(26)
      abb335(34)=abb335(6)**2*mB**4
      abb335(11)=-abb335(15)*abb335(34)*abb335(11)
      abb335(15)=abb335(28)*abb335(7)
      abb335(96)=abb335(11)*abb335(15)
      abb335(97)=es71+es12-es712
      abb335(98)=abb335(96)*abb335(97)
      abb335(17)=-abb335(90)*abb335(17)
      abb335(35)=abb335(17)*abb335(35)
      abb335(91)=-abb335(8)*abb335(91)
      abb335(35)=abb335(91)+abb335(35)
      abb335(91)=2.0_ki*abb335(9)
      abb335(25)=abb335(35)*abb335(25)*abb335(91)
      abb335(35)=spak3k4*spak2l6
      abb335(21)=-abb335(21)*abb335(35)*abb335(91)
      abb335(61)=spal5k7*spbk7l5*abb335(61)
      abb335(21)=abb335(21)+abb335(61)
      abb335(21)=spbl5k3*abb335(21)
      abb335(61)=-abb335(30)*abb335(95)
      abb335(21)=abb335(61)+abb335(21)+abb335(26)+abb335(83)+abb335(25)+abb335(&
      &98)+abb335(31)+abb335(81)
      abb335(21)=8.0_ki*abb335(21)
      abb335(25)=abb335(33)*spbk4k3
      abb335(26)=-abb335(25)-abb335(86)
      abb335(26)=spak4l6*abb335(26)
      abb335(26)=abb335(26)-abb335(51)+abb335(63)
      abb335(26)=spbe7k1*abb335(26)
      abb335(31)=-abb335(71)-abb335(93)
      abb335(31)=spak4e7*abb335(31)
      abb335(51)=-abb335(73)+abb335(50)
      abb335(51)=spbe7k3*abb335(51)
      abb335(26)=abb335(51)+abb335(31)+abb335(26)-abb335(44)
      abb335(26)=8.0_ki*abb335(26)
      abb335(31)=abb335(43)-abb335(62)
      abb335(43)=abb335(17)*abb335(28)
      abb335(44)=abb335(43)+abb335(31)
      abb335(44)=32.0_ki*abb335(44)
      abb335(32)=abb335(45)+abb335(32)
      abb335(45)=abb335(85)*spbe7k1
      abb335(51)=-abb335(32)*abb335(45)
      abb335(61)=-spak4e7*abb335(93)
      abb335(50)=spbe7k3*abb335(50)
      abb335(50)=abb335(50)+abb335(61)+abb335(51)+abb335(66)
      abb335(50)=8.0_ki*abb335(50)
      abb335(43)=2.0_ki*abb335(43)+abb335(31)
      abb335(43)=16.0_ki*abb335(43)
      abb335(51)=abb335(53)*abb335(56)
      abb335(55)=abb335(55)*spak2e7
      abb335(51)=abb335(51)+abb335(55)
      abb335(51)=abb335(51)*abb335(80)
      abb335(55)=abb335(57)*spal5e7
      abb335(61)=abb335(54)*abb335(55)
      abb335(51)=abb335(51)-abb335(61)
      abb335(61)=-spbl5k1*abb335(51)
      abb335(62)=abb335(47)*abb335(87)
      abb335(63)=abb335(36)*spbk3k2
      abb335(66)=abb335(41)*spak1k4
      abb335(63)=abb335(66)-abb335(63)
      abb335(66)=abb335(63)*spae7k7
      abb335(62)=abb335(66)-abb335(62)
      abb335(66)=abb335(16)*abb335(19)
      abb335(71)=abb335(87)*abb335(66)
      abb335(71)=-abb335(62)+abb335(71)
      abb335(71)=spbe7k1*abb335(71)
      abb335(73)=abb335(52)*abb335(87)
      abb335(81)=abb335(41)*spak3k4
      abb335(83)=abb335(81)*spae7k7
      abb335(73)=abb335(73)-abb335(83)
      abb335(83)=-spbe7k3*abb335(73)
      abb335(71)=abb335(83)+abb335(71)
      abb335(71)=spbk7l5*abb335(71)
      abb335(83)=spak4e7*abb335(57)
      abb335(68)=-abb335(68)+abb335(83)
      abb335(15)=abb335(15)*abb335(68)*abb335(12)*abb335(34)
      abb335(34)=-spbe7l5*abb335(62)
      abb335(66)=-abb335(89)*abb335(66)
      abb335(66)=abb335(66)-abb335(34)
      abb335(66)=spbk7k1*abb335(66)
      abb335(68)=abb335(80)*spak2e7
      abb335(55)=abb335(68)-abb335(55)
      abb335(68)=abb335(55)*abb335(39)
      abb335(83)=spbl5k3*abb335(68)
      abb335(86)=abb335(89)*abb335(52)
      abb335(81)=abb335(81)*abb335(65)
      abb335(81)=abb335(86)-abb335(81)
      abb335(86)=spbk7k3*abb335(81)
      abb335(15)=abb335(86)+abb335(83)+abb335(66)+abb335(15)+abb335(61)+abb335(&
      &71)
      abb335(15)=8.0_ki*abb335(15)
      abb335(47)=-abb335(7)*abb335(47)
      abb335(16)=-abb335(16)*abb335(24)
      abb335(16)=abb335(16)+abb335(47)-abb335(38)
      abb335(16)=abb335(94)*abb335(16)
      abb335(24)=2.0_ki*abb335(54)
      abb335(47)=spbk7k1*abb335(24)
      abb335(61)=2.0_ki*abb335(39)
      abb335(66)=-spbk7k3*abb335(61)
      abb335(47)=abb335(66)+abb335(47)
      abb335(47)=spak2k7*abb335(47)
      abb335(52)=abb335(7)*abb335(52)
      abb335(52)=-abb335(58)+abb335(52)
      abb335(52)=spbl5k3*abb335(52)
      abb335(16)=2.0_ki*abb335(52)-abb335(96)+abb335(16)+abb335(47)
      abb335(16)=16.0_ki*abb335(16)
      abb335(47)=4.0_ki*abb335(64)
      abb335(31)=abb335(80)*abb335(31)
      abb335(27)=abb335(59)+abb335(27)
      abb335(52)=spbk2k1*abb335(63)
      abb335(41)=abb335(41)*abb335(60)
      abb335(41)=-abb335(27)+abb335(41)+abb335(52)
      abb335(41)=abb335(57)*abb335(41)
      abb335(52)=-spbk7e7*abb335(74)
      abb335(31)=abb335(52)+abb335(41)+abb335(31)
      abb335(31)=4.0_ki*abb335(31)
      abb335(41)=spak1k4*spbk2k1
      abb335(41)=abb335(41)+abb335(60)
      abb335(40)=abb335(40)*abb335(41)
      abb335(18)=-spbk2k1*spbk3k2*abb335(18)
      abb335(18)=abb335(30)+abb335(18)+abb335(40)
      abb335(18)=abb335(85)*abb335(18)
      abb335(40)=-spae7k7*abb335(79)
      abb335(11)=-spbk7k2*abb335(11)*abb335(28)*abb335(87)
      abb335(11)=abb335(11)+abb335(18)+abb335(40)
      abb335(11)=4.0_ki*abb335(11)
      abb335(18)=-spbk7k1*abb335(32)
      abb335(18)=abb335(18)+abb335(70)
      abb335(18)=8.0_ki*abb335(18)
      abb335(28)=abb335(22)*spak3k4
      abb335(32)=abb335(20)*abb335(28)
      abb335(40)=-16.0_ki*abb335(95)*abb335(32)
      abb335(41)=abb335(17)*abb335(88)
      abb335(52)=spak4e7*abb335(76)
      abb335(33)=-abb335(33)*abb335(67)
      abb335(33)=abb335(33)+abb335(52)+abb335(41)
      abb335(33)=4.0_ki*spbk4k3*abb335(33)
      abb335(13)=abb335(9)*abb335(90)*abb335(13)
      abb335(13)=abb335(13)+abb335(17)
      abb335(13)=spbk4k3*abb335(13)
      abb335(12)=abb335(12)*spbk3k2
      abb335(17)=abb335(22)*spak1k4
      abb335(20)=abb335(20)*abb335(17)
      abb335(12)=abb335(20)+abb335(12)
      abb335(20)=abb335(12)*abb335(95)
      abb335(41)=spak4k7*spbk7l5*abb335(78)
      abb335(13)=abb335(41)+abb335(13)+abb335(20)
      abb335(13)=16.0_ki*abb335(13)
      abb335(20)=8.0_ki*abb335(69)
      abb335(41)=abb335(53)*spbk4k3
      abb335(52)=abb335(55)*abb335(41)
      abb335(53)=-spbl5k1*abb335(52)
      abb335(36)=abb335(36)*spbk4k3
      abb335(55)=-spbk7k1*abb335(65)
      abb335(45)=abb335(55)+abb335(45)
      abb335(45)=abb335(36)*abb335(45)
      abb335(45)=abb335(45)+abb335(53)
      abb335(45)=4.0_ki*abb335(45)
      abb335(37)=abb335(37)*spbk4k3
      abb335(53)=-spbl5k1*abb335(37)
      abb335(55)=spbk7k1*spak2k7*abb335(41)
      abb335(53)=abb335(53)+abb335(55)
      abb335(53)=16.0_ki*abb335(53)
      abb335(55)=abb335(65)*abb335(36)
      abb335(59)=spbk4k3*spak2l6
      abb335(63)=abb335(59)*abb335(19)
      abb335(64)=abb335(89)*abb335(63)
      abb335(55)=abb335(55)+abb335(64)
      abb335(55)=spbk7k2*abb335(55)
      abb335(36)=-spae7k7*abb335(36)
      abb335(63)=-abb335(87)*abb335(63)
      abb335(36)=abb335(36)+abb335(63)
      abb335(36)=abb335(36)*abb335(84)
      abb335(52)=spbl5k2*abb335(52)
      abb335(63)=spal6k7*spbk7e7
      abb335(25)=abb335(63)*abb335(25)
      abb335(64)=-spal6e7*abb335(77)
      abb335(25)=abb335(64)+abb335(25)+abb335(36)+abb335(52)+abb335(55)
      abb335(25)=4.0_ki*abb335(25)
      abb335(36)=-abb335(75)+abb335(19)
      abb335(36)=abb335(36)*abb335(59)
      abb335(37)=spbl5k2*abb335(37)
      abb335(41)=-abb335(41)*abb335(97)
      abb335(52)=spal6k7*spbk7l5
      abb335(55)=-abb335(78)*abb335(52)
      abb335(36)=abb335(55)+abb335(36)+abb335(37)+abb335(41)
      abb335(36)=16.0_ki*abb335(36)
      abb335(37)=-spbk2k1*abb335(54)
      abb335(39)=-spbk3k2*abb335(39)
      abb335(37)=abb335(39)+abb335(37)
      abb335(37)=spak2k7*abb335(37)
      abb335(29)=-spak4k7*abb335(29)
      abb335(29)=abb335(37)+abb335(29)
      abb335(29)=8.0_ki*abb335(29)
      abb335(37)=spbk2k1*abb335(38)
      abb335(39)=-abb335(42)*abb335(60)
      abb335(27)=-abb335(30)+abb335(39)+abb335(37)+abb335(27)
      abb335(27)=8.0_ki*abb335(27)
      abb335(30)=abb335(23)*abb335(63)
      abb335(37)=abb335(57)*spal6e7
      abb335(39)=-abb335(82)*abb335(37)
      abb335(30)=abb335(39)+abb335(30)
      abb335(28)=abb335(28)*abb335(30)
      abb335(30)=-spbl5k2*abb335(68)
      abb335(39)=-spbk7k2*abb335(81)
      abb335(41)=abb335(73)*abb335(84)
      abb335(28)=abb335(41)+abb335(30)+abb335(39)+abb335(28)
      abb335(28)=4.0_ki*abb335(28)
      abb335(30)=abb335(61)*abb335(97)
      abb335(39)=abb335(82)+2.0_ki*abb335(49)
      abb335(22)=abb335(39)*abb335(22)
      abb335(35)=-abb335(22)*abb335(35)
      abb335(39)=2.0_ki*spbl5k2
      abb335(41)=abb335(58)*abb335(39)
      abb335(42)=2.0_ki*abb335(52)
      abb335(32)=abb335(32)*abb335(42)
      abb335(30)=abb335(32)+abb335(35)+abb335(41)+abb335(30)
      abb335(30)=8.0_ki*abb335(30)
      abb335(32)=spbl5k2*abb335(51)
      abb335(34)=spbk7k2*abb335(34)
      abb335(35)=abb335(62)*abb335(84)
      abb335(41)=abb335(56)*abb335(75)
      abb335(23)=-abb335(17)*abb335(23)
      abb335(23)=abb335(41)+abb335(23)
      abb335(23)=abb335(23)*abb335(63)
      abb335(41)=-spbk3k2*abb335(75)
      abb335(17)=abb335(17)*abb335(82)
      abb335(17)=abb335(41)+abb335(17)
      abb335(17)=abb335(17)*abb335(37)
      abb335(17)=abb335(17)+abb335(23)+abb335(35)+abb335(32)+abb335(34)
      abb335(17)=4.0_ki*abb335(17)
      abb335(23)=-abb335(24)*abb335(97)
      abb335(19)=2.0_ki*abb335(19)-abb335(75)
      abb335(19)=abb335(19)*abb335(46)
      abb335(24)=abb335(38)*abb335(39)
      abb335(22)=abb335(22)*abb335(92)
      abb335(12)=-abb335(12)*abb335(42)
      abb335(12)=abb335(12)+abb335(24)+abb335(48)+abb335(19)+abb335(22)+abb335(&
      &23)
      abb335(12)=8.0_ki*abb335(12)
      R2d335=abb335(72)
      rat2 = rat2 + R2d335
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='335' value='", &
          & R2d335, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd335h1
