module     p5_usbar_epnebbbarg_abbrevd137h1
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(103), public :: abb137
   complex(ki), public :: R2d137
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
      abb137(1)=1.0_ki/(-es71+es712-es12)
      abb137(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb137(3)=1.0_ki/(-es71+es56-es567+es234)
      abb137(4)=NC**(-1)
      abb137(5)=es56**(-1)
      abb137(6)=spak2l5**(-1)
      abb137(7)=spbl5k2**(-1)
      abb137(8)=spbl6k2**(-1)
      abb137(9)=1.0_ki/(es34+es567-es12-es234)
      abb137(10)=spak2l6**(-1)
      abb137(11)=i_*CVSU*abb137(5)*abb137(2)
      abb137(12)=abb137(11)*abb137(3)*abb137(1)
      abb137(13)=abb137(12)*c4
      abb137(14)=TR*gW
      abb137(15)=abb137(14)**2
      abb137(16)=abb137(13)*abb137(15)
      abb137(17)=abb137(16)*abb137(4)
      abb137(18)=abb137(12)*c3
      abb137(19)=abb137(18)*abb137(15)
      abb137(17)=abb137(17)-abb137(19)
      abb137(17)=abb137(17)*abb137(4)
      abb137(20)=abb137(17)-abb137(16)
      abb137(21)=spak2e7*spbk7e7
      abb137(22)=abb137(21)*spbk3k1
      abb137(23)=abb137(22)*spbl5k1
      abb137(24)=abb137(23)*abb137(20)
      abb137(25)=abb137(21)*spbl5k1
      abb137(26)=NC*spbk3k1
      abb137(27)=abb137(26)*abb137(25)*abb137(19)
      abb137(24)=abb137(24)+abb137(27)
      abb137(24)=abb137(24)*spak1l6
      abb137(14)=abb137(14)*mB
      abb137(14)=abb137(14)**2
      abb137(28)=abb137(14)*abb137(12)*abb137(8)
      abb137(29)=abb137(28)*c4
      abb137(30)=abb137(29)*abb137(4)
      abb137(28)=abb137(28)*c3
      abb137(30)=abb137(30)-abb137(28)
      abb137(30)=abb137(30)*abb137(4)
      abb137(31)=abb137(30)-abb137(29)
      abb137(32)=abb137(31)*abb137(21)
      abb137(33)=abb137(21)*NC
      abb137(34)=abb137(28)*abb137(33)
      abb137(32)=abb137(32)+abb137(34)
      abb137(35)=spbl5k3*spbk2k1
      abb137(32)=abb137(32)*abb137(35)
      abb137(36)=abb137(31)*abb137(25)
      abb137(37)=abb137(34)*spbl5k1
      abb137(36)=abb137(36)+abb137(37)
      abb137(36)=abb137(36)*spbk3k2
      abb137(38)=abb137(20)*abb137(25)
      abb137(39)=abb137(19)*spbl5k1
      abb137(40)=abb137(39)*abb137(33)
      abb137(38)=abb137(38)+abb137(40)
      abb137(41)=spal5l6*spbl5k3
      abb137(38)=abb137(38)*abb137(41)
      abb137(14)=abb137(14)*abb137(6)
      abb137(42)=abb137(14)*abb137(8)
      abb137(12)=abb137(12)*abb137(42)
      abb137(43)=abb137(12)*c4
      abb137(44)=abb137(43)*abb137(4)
      abb137(12)=abb137(12)*c3
      abb137(44)=abb137(44)-abb137(12)
      abb137(44)=abb137(44)*abb137(4)
      abb137(45)=abb137(44)-abb137(43)
      abb137(46)=abb137(45)*abb137(21)
      abb137(47)=abb137(12)*abb137(33)
      abb137(46)=abb137(46)+abb137(47)
      abb137(48)=spak2l6*spbk2k1
      abb137(49)=abb137(48)*spbl6k3
      abb137(46)=abb137(46)*abb137(49)
      abb137(50)=abb137(45)*abb137(22)
      abb137(51)=abb137(12)*abb137(26)
      abb137(52)=abb137(51)*abb137(21)
      abb137(50)=abb137(50)+abb137(52)
      abb137(50)=abb137(50)*es12
      abb137(53)=abb137(13)*abb137(4)
      abb137(53)=abb137(18)-abb137(53)
      abb137(53)=abb137(4)*abb137(14)*abb137(53)
      abb137(13)=abb137(13)*abb137(14)
      abb137(54)=abb137(53)+abb137(13)
      abb137(55)=abb137(54)*abb137(25)
      abb137(14)=abb137(18)*abb137(14)*NC
      abb137(18)=abb137(14)*abb137(25)
      abb137(55)=abb137(55)-abb137(18)
      abb137(56)=spak2l6*spbk3k2
      abb137(57)=abb137(56)*abb137(7)
      abb137(55)=abb137(55)*abb137(57)
      abb137(24)=abb137(38)+abb137(46)+abb137(24)+abb137(55)-abb137(50)+abb137(&
      &32)-abb137(36)
      abb137(24)=abb137(24)*spak4k7
      abb137(15)=abb137(15)*abb137(1)
      abb137(32)=abb137(11)*c4
      abb137(36)=abb137(15)*abb137(32)
      abb137(38)=abb137(36)*abb137(4)
      abb137(11)=abb137(11)*c3
      abb137(15)=abb137(15)*abb137(11)
      abb137(38)=abb137(38)-abb137(15)
      abb137(38)=abb137(38)*abb137(4)
      abb137(46)=abb137(38)-abb137(36)
      abb137(50)=abb137(9)*spbk3k1
      abb137(46)=abb137(46)*abb137(50)
      abb137(55)=abb137(46)*abb137(21)
      abb137(58)=abb137(15)*abb137(50)
      abb137(33)=abb137(58)*abb137(33)
      abb137(55)=abb137(55)+abb137(33)
      abb137(59)=spak3k4*spbl5k3
      abb137(55)=abb137(55)*abb137(59)
      abb137(60)=abb137(46)*abb137(25)
      abb137(61)=abb137(33)*spbl5k1
      abb137(60)=abb137(60)+abb137(61)
      abb137(60)=abb137(60)*spak1k4
      abb137(55)=abb137(55)-abb137(60)
      abb137(55)=abb137(55)*spal6k7
      abb137(42)=abb137(1)*abb137(42)
      abb137(11)=abb137(42)*abb137(11)
      abb137(32)=abb137(42)*abb137(32)
      abb137(42)=abb137(32)*abb137(4)
      abb137(42)=abb137(42)-abb137(11)
      abb137(42)=abb137(42)*abb137(4)
      abb137(60)=abb137(42)-abb137(32)
      abb137(62)=abb137(21)*spak2k7
      abb137(63)=abb137(62)*abb137(50)
      abb137(60)=abb137(60)*abb137(63)
      abb137(64)=abb137(50)*abb137(11)
      abb137(65)=NC*spak2k7
      abb137(66)=abb137(65)*abb137(21)
      abb137(67)=abb137(64)*abb137(66)
      abb137(60)=abb137(60)+abb137(67)
      abb137(68)=spak3k4*spbk3k2
      abb137(69)=spak1k4*spbk2k1
      abb137(70)=abb137(68)+abb137(69)
      abb137(60)=abb137(60)*abb137(70)
      abb137(24)=abb137(24)-abb137(55)-abb137(60)
      abb137(55)=-2.0_ki*abb137(24)
      abb137(71)=abb137(43)*abb137(22)
      abb137(52)=abb137(71)-abb137(52)
      abb137(52)=abb137(52)*es12
      abb137(71)=abb137(29)*abb137(21)
      abb137(34)=abb137(71)-abb137(34)
      abb137(34)=abb137(34)*abb137(35)
      abb137(71)=abb137(25)*abb137(29)
      abb137(37)=abb137(71)-abb137(37)
      abb137(37)=abb137(37)*spbk3k2
      abb137(34)=abb137(37)+abb137(52)-abb137(34)
      abb137(34)=abb137(34)*spak4k7
      abb137(37)=abb137(63)*abb137(32)
      abb137(37)=abb137(37)-abb137(67)
      abb137(52)=abb137(37)*abb137(69)
      abb137(34)=abb137(34)+abb137(52)
      abb137(67)=-es12+es712-es71
      abb137(34)=-abb137(34)*abb137(67)
      abb137(71)=abb137(67)*spak3k4
      abb137(72)=-abb137(37)*spbk3k2*abb137(71)
      abb137(73)=abb137(36)*abb137(50)
      abb137(74)=abb137(73)*abb137(25)
      abb137(61)=abb137(74)-abb137(61)
      abb137(61)=spak1k4*abb137(61)*abb137(67)
      abb137(73)=abb137(73)*abb137(21)
      abb137(33)=abb137(73)-abb137(33)
      abb137(33)=-spbl5k3*abb137(33)*abb137(71)
      abb137(33)=abb137(33)+abb137(61)
      abb137(33)=spal6k7*abb137(33)
      abb137(61)=abb137(13)*abb137(25)
      abb137(18)=abb137(61)-abb137(18)
      abb137(61)=abb137(67)*abb137(7)
      abb137(73)=abb137(56)*spak4k7
      abb137(18)=-abb137(73)*abb137(18)*abb137(61)
      abb137(74)=abb137(23)*abb137(16)
      abb137(27)=abb137(74)-abb137(27)
      abb137(74)=abb137(67)*spak1l6
      abb137(27)=spak4k7*abb137(27)*abb137(74)
      abb137(75)=abb137(25)*abb137(16)
      abb137(40)=abb137(75)-abb137(40)
      abb137(75)=abb137(67)*spal5l6
      abb137(76)=spak4k7*spbl5k3
      abb137(40)=abb137(76)*abb137(40)*abb137(75)
      abb137(77)=abb137(43)*abb137(21)
      abb137(47)=abb137(77)-abb137(47)
      abb137(77)=abb137(67)*spbl6k3
      abb137(78)=abb137(48)*spak4k7
      abb137(47)=abb137(78)*abb137(47)*abb137(77)
      abb137(18)=abb137(33)+abb137(47)+abb137(40)+abb137(27)+abb137(18)+abb137(&
      &72)+abb137(34)
      abb137(18)=4.0_ki*abb137(18)
      abb137(27)=abb137(30)+abb137(29)
      abb137(33)=abb137(27)*spak2k4
      abb137(34)=NC*spak2k4
      abb137(40)=abb137(34)*abb137(28)
      abb137(40)=abb137(40)-abb137(33)
      abb137(40)=abb137(40)*abb137(35)
      abb137(47)=spak2k4*spbl5k1
      abb137(72)=abb137(27)*abb137(47)
      abb137(79)=NC*spbl5k1
      abb137(80)=abb137(79)*spak2k4
      abb137(81)=abb137(80)*abb137(28)
      abb137(72)=abb137(72)-abb137(81)
      abb137(72)=abb137(72)*spbk3k2
      abb137(81)=abb137(44)+abb137(43)
      abb137(82)=abb137(81)*spak2k4
      abb137(83)=abb137(82)*spbk3k1
      abb137(84)=abb137(51)*spak2k4
      abb137(83)=abb137(83)-abb137(84)
      abb137(83)=abb137(83)*es12
      abb137(84)=abb137(38)+abb137(36)
      abb137(85)=abb137(84)*abb137(50)
      abb137(86)=abb137(85)*spbl5k1
      abb137(87)=abb137(58)*abb137(79)
      abb137(86)=abb137(87)-abb137(86)
      abb137(87)=spak1k4*spak2l6
      abb137(88)=abb137(86)*abb137(87)
      abb137(40)=abb137(88)+abb137(83)+abb137(40)+abb137(72)
      abb137(72)=-abb137(40)*abb137(67)
      abb137(83)=abb137(58)*NC
      abb137(83)=abb137(83)-abb137(85)
      abb137(88)=abb137(83)*spak2l6
      abb137(89)=abb137(88)*spbl5k3
      abb137(71)=abb137(89)*abb137(71)
      abb137(13)=abb137(13)-abb137(14)
      abb137(90)=abb137(53)-abb137(13)
      abb137(91)=abb137(47)*abb137(90)
      abb137(56)=abb137(91)*abb137(56)
      abb137(92)=abb137(56)*abb137(61)
      abb137(93)=abb137(17)+abb137(16)
      abb137(94)=abb137(93)*abb137(47)
      abb137(95)=abb137(94)*spbk3k1
      abb137(26)=abb137(39)*abb137(26)
      abb137(96)=abb137(26)*spak2k4
      abb137(95)=abb137(95)-abb137(96)
      abb137(74)=abb137(95)*abb137(74)
      abb137(80)=abb137(80)*abb137(19)
      abb137(80)=abb137(80)-abb137(94)
      abb137(75)=-abb137(80)*spbl5k3*abb137(75)
      abb137(94)=abb137(34)*abb137(12)
      abb137(94)=abb137(94)-abb137(82)
      abb137(77)=-abb137(94)*abb137(48)*abb137(77)
      abb137(71)=abb137(77)+abb137(75)+abb137(74)+abb137(92)+abb137(71)+abb137(&
      &72)
      abb137(71)=8.0_ki*abb137(71)
      abb137(72)=spbl5k1*spak2k7
      abb137(74)=abb137(72)*spbk7e7
      abb137(20)=abb137(20)*abb137(74)
      abb137(75)=abb137(65)*spbk7e7
      abb137(77)=abb137(75)*abb137(39)
      abb137(20)=abb137(77)+abb137(20)
      abb137(77)=spak1l6*abb137(20)
      abb137(92)=spbk7e7*spak2k7
      abb137(45)=abb137(45)*abb137(92)
      abb137(96)=abb137(12)*abb137(65)
      abb137(97)=abb137(96)*spbk7e7
      abb137(45)=abb137(97)+abb137(45)
      abb137(97)=es12*abb137(45)
      abb137(77)=-abb137(77)+abb137(97)
      abb137(77)=spbk3k1*abb137(77)
      abb137(14)=abb137(54)-abb137(14)
      abb137(14)=abb137(57)*abb137(14)*abb137(74)
      abb137(54)=abb137(31)*abb137(92)
      abb137(97)=abb137(75)*abb137(28)
      abb137(54)=abb137(97)+abb137(54)
      abb137(54)=abb137(54)*abb137(35)
      abb137(31)=abb137(31)*abb137(74)
      abb137(97)=abb137(65)*spbl5k1
      abb137(98)=abb137(97)*spbk7e7
      abb137(99)=abb137(98)*abb137(28)
      abb137(31)=abb137(31)+abb137(99)
      abb137(31)=abb137(31)*spbk3k2
      abb137(14)=-abb137(54)-abb137(14)+abb137(31)+abb137(77)
      abb137(31)=-abb137(20)*abb137(41)
      abb137(54)=-abb137(45)*abb137(49)
      abb137(31)=abb137(54)+abb137(31)+abb137(14)
      abb137(31)=spak4e7*abb137(31)
      abb137(54)=abb137(46)*abb137(92)
      abb137(75)=abb137(75)*abb137(58)
      abb137(54)=abb137(75)+abb137(54)
      abb137(54)=abb137(54)*abb137(59)
      abb137(46)=abb137(46)*abb137(74)
      abb137(74)=abb137(98)*abb137(58)
      abb137(46)=abb137(46)+abb137(74)
      abb137(46)=abb137(46)*spak1k4
      abb137(46)=abb137(54)-abb137(46)
      abb137(46)=abb137(46)*spal6e7
      abb137(31)=abb137(46)+abb137(31)+abb137(60)
      abb137(31)=8.0_ki*abb137(31)
      abb137(54)=abb137(95)*spak1l6
      abb137(60)=abb137(94)*abb137(49)
      abb137(74)=abb137(80)*abb137(41)
      abb137(40)=abb137(60)-abb137(54)+abb137(74)+abb137(40)
      abb137(54)=-abb137(59)*abb137(88)
      abb137(60)=-abb137(91)*abb137(57)
      abb137(54)=abb137(60)+abb137(54)+abb137(40)
      abb137(54)=32.0_ki*abb137(54)
      abb137(60)=abb137(66)*abb137(12)
      abb137(74)=abb137(60)*spak2k4
      abb137(75)=abb137(62)*spak2k4
      abb137(77)=abb137(75)*abb137(43)
      abb137(74)=abb137(77)-abb137(74)
      abb137(77)=spbk3k2*spbk2k1
      abb137(74)=abb137(74)*abb137(77)
      abb137(80)=abb137(39)*abb137(66)
      abb137(88)=abb137(62)*spbl5k1
      abb137(91)=abb137(88)*abb137(16)
      abb137(80)=abb137(80)-abb137(91)
      abb137(91)=spak4l6*spbk3k2
      abb137(92)=abb137(80)*abb137(91)
      abb137(74)=abb137(74)-abb137(92)
      abb137(92)=12.0_ki*abb137(74)
      abb137(82)=abb137(82)*spak2k7
      abb137(94)=abb137(96)*spak2k4
      abb137(82)=abb137(94)-abb137(82)
      abb137(94)=spbk7k3*spbk2k1
      abb137(82)=abb137(82)*abb137(94)
      abb137(95)=abb137(93)*abb137(72)
      abb137(39)=abb137(39)*abb137(65)
      abb137(39)=abb137(95)-abb137(39)
      abb137(95)=spak4l6*spbk7k3
      abb137(98)=abb137(39)*abb137(95)
      abb137(82)=abb137(82)-abb137(98)
      abb137(98)=32.0_ki*abb137(82)
      abb137(99)=abb137(58)*abb137(66)
      abb137(63)=abb137(63)*abb137(36)
      abb137(63)=abb137(99)-abb137(63)
      abb137(99)=abb137(63)*spbl5k2
      abb137(100)=abb137(99)*spak4l6
      abb137(101)=12.0_ki*abb137(100)
      abb137(32)=abb137(42)+abb137(32)
      abb137(42)=abb137(32)*abb137(50)
      abb137(102)=abb137(42)*spak2k4
      abb137(103)=abb137(34)*abb137(64)
      abb137(102)=abb137(103)-abb137(102)
      abb137(102)=abb137(67)*abb137(102)
      abb137(85)=abb137(85)*spak2k7
      abb137(58)=abb137(58)*abb137(65)
      abb137(58)=abb137(58)-abb137(85)
      abb137(85)=abb137(58)*spbk7l5
      abb137(103)=abb137(85)*spak4l6
      abb137(102)=abb137(102)-abb137(103)
      abb137(103)=32.0_ki*abb137(102)
      abb137(14)=spak4e7*abb137(14)
      abb137(76)=-abb137(25)*abb137(17)*abb137(76)
      abb137(20)=spak4e7*spbl5k3*abb137(20)
      abb137(20)=abb137(76)+abb137(20)
      abb137(20)=spal5l6*abb137(20)
      abb137(76)=-abb137(21)*abb137(44)*abb137(78)
      abb137(45)=spak4e7*abb137(45)*abb137(48)
      abb137(45)=abb137(76)+abb137(45)
      abb137(45)=spbl6k3*abb137(45)
      abb137(38)=abb137(38)*abb137(50)
      abb137(50)=abb137(21)*abb137(59)
      abb137(76)=-spak1k4*abb137(25)
      abb137(50)=abb137(76)+abb137(50)
      abb137(50)=spal6k7*abb137(38)*abb137(50)
      abb137(14)=abb137(50)-abb137(46)-abb137(14)+abb137(20)+abb137(45)
      abb137(20)=-abb137(21)*abb137(35)
      abb137(21)=spbk3k2*abb137(25)
      abb137(20)=abb137(21)+abb137(20)
      abb137(20)=abb137(30)*abb137(20)
      abb137(21)=es12*abb137(22)*abb137(44)
      abb137(22)=spak1l6*abb137(17)*abb137(23)
      abb137(20)=-abb137(22)+abb137(21)+abb137(20)
      abb137(20)=2.0_ki*abb137(20)
      abb137(20)=spak4k7*abb137(20)
      abb137(21)=abb137(66)*abb137(28)
      abb137(22)=spbl5k1*abb137(21)
      abb137(23)=-abb137(29)*abb137(88)
      abb137(22)=abb137(23)+abb137(22)
      abb137(22)=abb137(10)*abb137(22)
      abb137(23)=abb137(43)*abb137(62)
      abb137(23)=abb137(23)-abb137(60)
      abb137(45)=-spbl6k1*abb137(23)
      abb137(22)=abb137(45)+abb137(22)
      abb137(45)=3.0_ki*abb137(91)
      abb137(22)=abb137(45)*abb137(22)
      abb137(37)=-abb137(37)*abb137(68)
      abb137(25)=abb137(25)*abb137(53)*abb137(73)
      abb137(45)=-abb137(45)*abb137(88)*abb137(13)
      abb137(25)=-2.0_ki*abb137(25)+abb137(45)
      abb137(25)=abb137(7)*abb137(25)
      abb137(45)=spbl5k1*abb137(60)
      abb137(43)=-abb137(43)*abb137(88)
      abb137(43)=abb137(43)+abb137(45)
      abb137(45)=spak4l5*spbk3k2
      abb137(43)=abb137(43)*abb137(45)
      abb137(14)=3.0_ki*abb137(43)+abb137(25)+abb137(37)-abb137(52)+abb137(22)+&
      &abb137(20)+2.0_ki*abb137(14)
      abb137(14)=4.0_ki*abb137(14)
      abb137(20)=abb137(27)*abb137(72)
      abb137(22)=-abb137(28)*abb137(97)
      abb137(20)=abb137(20)+abb137(22)
      abb137(20)=abb137(10)*abb137(20)
      abb137(22)=abb137(81)*spak2k7
      abb137(22)=abb137(22)-abb137(96)
      abb137(25)=spbl6k1*abb137(22)
      abb137(20)=abb137(25)+abb137(20)
      abb137(25)=2.0_ki*abb137(95)
      abb137(20)=abb137(25)*abb137(20)
      abb137(37)=abb137(42)*spak2k7
      abb137(43)=abb137(64)*abb137(65)
      abb137(37)=abb137(43)-abb137(37)
      abb137(43)=2.0_ki*abb137(37)
      abb137(46)=-spbk7k3*abb137(43)
      abb137(46)=abb137(89)+abb137(46)
      abb137(46)=spak3k4*abb137(46)
      abb137(25)=-abb137(25)*abb137(72)*abb137(90)
      abb137(25)=abb137(56)+abb137(25)
      abb137(25)=abb137(7)*abb137(25)
      abb137(50)=abb137(81)*abb137(72)
      abb137(52)=-abb137(12)*abb137(97)
      abb137(50)=abb137(50)+abb137(52)
      abb137(52)=spak4l5*spbk7k3
      abb137(50)=abb137(50)*abb137(52)
      abb137(56)=spbk7k1*spak1k4
      abb137(43)=abb137(56)*abb137(43)
      abb137(20)=abb137(43)+2.0_ki*abb137(50)+abb137(25)+abb137(46)+abb137(20)-&
      &abb137(40)
      abb137(20)=16.0_ki*abb137(20)
      abb137(25)=abb137(100)+abb137(74)
      abb137(25)=12.0_ki*abb137(25)
      abb137(40)=abb137(102)+abb137(82)
      abb137(40)=32.0_ki*abb137(40)
      abb137(24)=4.0_ki*abb137(24)
      abb137(43)=-es12*spbk3k1
      abb137(43)=abb137(49)+abb137(43)
      abb137(43)=abb137(44)*abb137(43)
      abb137(44)=abb137(30)*abb137(35)
      abb137(43)=abb137(44)+abb137(43)
      abb137(43)=spak2k4*abb137(43)
      abb137(44)=spak1l6*spbk3k1
      abb137(44)=abb137(41)+abb137(44)
      abb137(17)=abb137(17)*abb137(44)
      abb137(30)=-spbk3k2*abb137(30)
      abb137(44)=abb137(53)*abb137(57)
      abb137(17)=abb137(44)+abb137(30)+abb137(17)
      abb137(17)=abb137(47)*abb137(17)
      abb137(30)=spbl5k1*abb137(87)
      abb137(44)=-spak2l6*abb137(59)
      abb137(30)=abb137(44)+abb137(30)
      abb137(30)=abb137(38)*abb137(30)
      abb137(17)=abb137(17)+abb137(43)+abb137(30)
      abb137(17)=4.0_ki*spbk7k2*spae7k7*abb137(17)
      abb137(30)=-abb137(63)*abb137(70)
      abb137(38)=abb137(13)*abb137(75)
      abb137(43)=-abb137(7)*abb137(38)
      abb137(44)=abb137(28)*spak2k4
      abb137(46)=abb137(44)*abb137(66)
      abb137(47)=abb137(75)*abb137(29)
      abb137(46)=abb137(46)-abb137(47)
      abb137(47)=abb137(10)*abb137(46)
      abb137(43)=abb137(47)+abb137(43)
      abb137(43)=abb137(77)*abb137(43)
      abb137(47)=-abb137(80)*abb137(45)
      abb137(50)=abb137(66)*abb137(19)
      abb137(16)=abb137(16)*abb137(62)
      abb137(16)=abb137(16)-abb137(50)
      abb137(16)=abb137(16)*abb137(91)
      abb137(50)=spbl6k1*abb137(16)
      abb137(30)=abb137(50)+abb137(47)+abb137(43)+abb137(30)
      abb137(30)=6.0_ki*abb137(30)
      abb137(43)=abb137(90)*spak2k7
      abb137(47)=spak2k4*abb137(43)
      abb137(50)=-abb137(7)*abb137(47)
      abb137(33)=abb137(33)*spak2k7
      abb137(44)=abb137(44)*abb137(65)
      abb137(33)=abb137(44)-abb137(33)
      abb137(44)=-abb137(10)*abb137(33)
      abb137(44)=abb137(44)+abb137(50)
      abb137(44)=abb137(94)*abb137(44)
      abb137(50)=spak3k4*spbk7k3
      abb137(50)=-abb137(56)+abb137(50)
      abb137(50)=abb137(58)*abb137(50)
      abb137(53)=-abb137(39)*abb137(52)
      abb137(56)=abb137(93)*spak2k7
      abb137(58)=abb137(19)*abb137(65)
      abb137(56)=abb137(58)-abb137(56)
      abb137(56)=abb137(56)*abb137(95)
      abb137(58)=spbl6k1*abb137(56)
      abb137(44)=abb137(58)+abb137(53)+abb137(44)+abb137(50)
      abb137(44)=16.0_ki*abb137(44)
      abb137(50)=-spak1k4*abb137(80)
      abb137(53)=abb137(10)*spbl5k2
      abb137(46)=abb137(46)*abb137(53)
      abb137(38)=abb137(46)-abb137(38)+abb137(50)
      abb137(38)=spbk3k2*abb137(38)
      abb137(16)=-spbl6l5*abb137(16)
      abb137(16)=abb137(16)+abb137(38)
      abb137(16)=6.0_ki*abb137(16)
      abb137(38)=-spak1k4*abb137(39)
      abb137(33)=-abb137(33)*abb137(53)
      abb137(33)=abb137(33)+abb137(38)-abb137(47)
      abb137(33)=spbk7k3*abb137(33)
      abb137(38)=-spbl6l5*abb137(56)
      abb137(33)=abb137(38)+abb137(33)
      abb137(33)=16.0_ki*abb137(33)
      abb137(29)=abb137(62)*abb137(29)
      abb137(21)=abb137(29)-abb137(21)
      abb137(21)=spbk2k1*abb137(21)
      abb137(29)=-spal5l6*abb137(80)
      abb137(15)=abb137(15)*abb137(9)
      abb137(38)=abb137(15)*abb137(66)
      abb137(36)=abb137(9)*abb137(36)*abb137(62)
      abb137(36)=abb137(36)-abb137(38)
      abb137(36)=abb137(36)*spak4l6
      abb137(38)=-spbk4k1*abb137(36)
      abb137(21)=abb137(38)+abb137(21)+abb137(29)
      abb137(21)=spbl5k2*abb137(21)
      abb137(29)=-es12*abb137(23)
      abb137(38)=-spak1l6*abb137(80)
      abb137(29)=abb137(38)+abb137(29)
      abb137(29)=spbk2k1*abb137(29)
      abb137(38)=spak3l6*abb137(99)
      abb137(13)=abb137(13)*abb137(62)
      abb137(46)=abb137(13)*abb137(48)
      abb137(21)=abb137(38)+abb137(46)+abb137(21)+abb137(29)
      abb137(21)=6.0_ki*abb137(21)
      abb137(29)=-spak2k7*abb137(27)
      abb137(38)=abb137(65)*abb137(28)
      abb137(29)=abb137(29)+abb137(38)
      abb137(29)=spbk2k1*abb137(29)
      abb137(38)=-spal5l6*abb137(39)
      abb137(29)=abb137(29)+abb137(38)
      abb137(29)=spbk7l5*abb137(29)
      abb137(38)=spak2k7*abb137(84)*abb137(9)
      abb137(15)=abb137(15)*abb137(65)
      abb137(15)=abb137(38)-abb137(15)
      abb137(15)=abb137(15)*spbk7l5*spak4l6
      abb137(32)=abb137(32)*spak2k4
      abb137(11)=abb137(34)*abb137(11)
      abb137(11)=abb137(11)-abb137(32)
      abb137(11)=abb137(67)*abb137(9)*abb137(11)
      abb137(11)=abb137(15)+abb137(11)
      abb137(15)=spbk4k1*abb137(11)
      abb137(32)=-es12*abb137(22)
      abb137(34)=spak1l6*abb137(39)
      abb137(32)=abb137(32)+abb137(34)
      abb137(32)=spbk7k1*abb137(32)
      abb137(34)=abb137(27)*spbl5k1
      abb137(38)=abb137(28)*abb137(79)
      abb137(34)=abb137(34)-abb137(38)
      abb137(38)=abb137(34)*abb137(67)
      abb137(39)=spbl5k1*abb137(90)
      abb137(46)=-abb137(39)*spak2l6*abb137(61)
      abb137(47)=abb137(64)*NC
      abb137(42)=abb137(47)-abb137(42)
      abb137(42)=abb137(67)*abb137(42)
      abb137(47)=spak2k3*abb137(42)
      abb137(50)=-spak3l6*abb137(85)
      abb137(48)=-spbk7l6*abb137(22)*abb137(48)
      abb137(15)=abb137(48)+abb137(50)+abb137(47)+abb137(32)+abb137(15)+abb137(&
      &29)+abb137(46)+abb137(38)
      abb137(15)=16.0_ki*abb137(15)
      abb137(29)=-spak1l6*abb137(99)
      abb137(32)=spbk4k3*spbl5k2*abb137(36)
      abb137(29)=abb137(29)+abb137(32)
      abb137(29)=6.0_ki*abb137(29)
      abb137(11)=-spbk4k3*abb137(11)
      abb137(32)=spak1l6*abb137(85)
      abb137(36)=spak1k2*abb137(42)
      abb137(11)=abb137(36)+abb137(32)+abb137(11)
      abb137(11)=16.0_ki*abb137(11)
      abb137(32)=spbk3k2*abb137(34)
      abb137(28)=NC*abb137(28)
      abb137(27)=abb137(28)-abb137(27)
      abb137(27)=abb137(27)*abb137(35)
      abb137(28)=spbk3k1*abb137(81)
      abb137(28)=abb137(28)-abb137(51)
      abb137(28)=es12*abb137(28)
      abb137(34)=-abb137(39)*abb137(57)
      abb137(35)=abb137(93)*spbl5k1
      abb137(36)=-spbk3k1*abb137(35)
      abb137(26)=abb137(36)+abb137(26)
      abb137(26)=spak1l6*abb137(26)
      abb137(19)=abb137(79)*abb137(19)
      abb137(19)=-abb137(35)+abb137(19)
      abb137(19)=abb137(19)*abb137(41)
      abb137(12)=NC*abb137(12)
      abb137(12)=abb137(12)-abb137(81)
      abb137(12)=abb137(12)*abb137(49)
      abb137(12)=abb137(12)+abb137(19)+abb137(26)+abb137(34)+abb137(28)+abb137(&
      &32)+abb137(27)
      abb137(12)=spak4k7*abb137(12)
      abb137(19)=spak1k4*abb137(86)
      abb137(26)=-abb137(83)*abb137(59)
      abb137(19)=abb137(19)+abb137(26)
      abb137(19)=spal6k7*abb137(19)
      abb137(26)=-abb137(37)*abb137(70)
      abb137(12)=abb137(19)+abb137(12)+abb137(26)
      abb137(12)=8.0_ki*abb137(12)
      abb137(19)=-spbk3k2*abb137(69)
      abb137(26)=spbl5k2*abb137(45)
      abb137(19)=abb137(26)+abb137(19)
      abb137(19)=abb137(23)*abb137(19)
      abb137(13)=abb137(13)*abb137(91)
      abb137(13)=abb137(13)+abb137(19)
      abb137(13)=6.0_ki*abb137(13)
      abb137(19)=spbk7k3*abb137(69)
      abb137(23)=-spbl5k2*abb137(52)
      abb137(19)=abb137(23)+abb137(19)
      abb137(19)=abb137(22)*abb137(19)
      abb137(22)=abb137(95)*abb137(43)
      abb137(19)=abb137(22)+abb137(19)
      abb137(19)=16.0_ki*abb137(19)
      R2d137=abb137(55)
      rat2 = rat2 + R2d137
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='137' value='", &
          & R2d137, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd137h1
