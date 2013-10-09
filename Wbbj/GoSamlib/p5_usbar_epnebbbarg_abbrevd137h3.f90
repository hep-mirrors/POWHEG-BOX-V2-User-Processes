module     p5_usbar_epnebbbarg_abbrevd137h3
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(101), public :: abb137
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
      abb137(7)=spak2l6**(-1)
      abb137(8)=1.0_ki/(es34+es567-es12-es234)
      abb137(9)=spbl5k2**(-1)
      abb137(10)=spbl6k2**(-1)
      abb137(11)=TR*gW
      abb137(11)=abb137(11)**2*i_*CVSU*abb137(5)*abb137(2)
      abb137(12)=mB*abb137(1)
      abb137(13)=abb137(11)*abb137(12)*abb137(3)
      abb137(14)=abb137(13)*c3
      abb137(15)=spbk3k1*spbk7e7
      abb137(16)=abb137(15)*abb137(14)
      abb137(13)=abb137(13)*c4
      abb137(17)=abb137(13)*abb137(4)
      abb137(18)=abb137(17)*abb137(15)
      abb137(16)=abb137(16)-abb137(18)
      abb137(19)=abb137(4)*abb137(6)
      abb137(20)=-abb137(16)*abb137(19)
      abb137(21)=abb137(15)*abb137(13)
      abb137(22)=abb137(21)*abb137(6)
      abb137(22)=abb137(22)-abb137(20)
      abb137(23)=spbl6k1*spak2e7
      abb137(22)=abb137(22)*abb137(23)
      abb137(24)=abb137(4)*abb137(7)
      abb137(16)=-abb137(16)*abb137(24)
      abb137(21)=abb137(21)*abb137(7)
      abb137(21)=abb137(21)-abb137(16)
      abb137(25)=spbl5k1*spak2e7
      abb137(21)=abb137(21)*abb137(25)
      abb137(26)=spak2e7*spbk7e7
      abb137(27)=abb137(26)*spbl5k1
      abb137(28)=abb137(27)*abb137(7)
      abb137(29)=abb137(26)*spbl6k1
      abb137(30)=abb137(29)*abb137(6)
      abb137(31)=abb137(28)+abb137(30)
      abb137(32)=abb137(14)*spbk3k1
      abb137(33)=NC*abb137(32)*abb137(31)
      abb137(21)=-abb137(33)+abb137(22)+abb137(21)
      abb137(22)=spak1k2*spak4k7
      abb137(21)=abb137(21)*abb137(22)
      abb137(12)=abb137(12)*spak2k7
      abb137(34)=abb137(12)*spbk3k1
      abb137(35)=abb137(11)*c3
      abb137(36)=abb137(34)*abb137(35)
      abb137(37)=abb137(36)*abb137(7)
      abb137(38)=abb137(37)*spbk7e7
      abb137(11)=abb137(11)*c4
      abb137(34)=abb137(34)*abb137(11)
      abb137(39)=abb137(34)*abb137(4)
      abb137(40)=abb137(7)*spbk7e7
      abb137(41)=abb137(40)*abb137(39)
      abb137(38)=abb137(38)-abb137(41)
      abb137(38)=abb137(38)*abb137(4)
      abb137(41)=abb137(40)*abb137(34)
      abb137(38)=abb137(38)+abb137(41)
      abb137(41)=abb137(38)*abb137(25)
      abb137(42)=abb137(36)*abb137(6)
      abb137(43)=abb137(42)*spbk7e7
      abb137(44)=abb137(6)*spbk7e7
      abb137(45)=abb137(44)*abb137(39)
      abb137(43)=abb137(43)-abb137(45)
      abb137(43)=abb137(43)*abb137(4)
      abb137(45)=abb137(44)*abb137(34)
      abb137(43)=abb137(43)+abb137(45)
      abb137(45)=abb137(43)*abb137(23)
      abb137(46)=abb137(37)*abb137(27)
      abb137(47)=abb137(42)*abb137(29)
      abb137(46)=abb137(46)+abb137(47)
      abb137(46)=abb137(46)*NC
      abb137(41)=-abb137(46)+abb137(41)+abb137(45)
      abb137(45)=spak1k4*abb137(8)
      abb137(41)=abb137(41)*abb137(45)
      abb137(38)=abb137(38)*spak2e7
      abb137(47)=abb137(26)*NC
      abb137(48)=abb137(37)*abb137(47)
      abb137(38)=abb137(38)-abb137(48)
      abb137(49)=spbl5k3*abb137(8)
      abb137(38)=abb137(38)*abb137(49)
      abb137(43)=abb137(43)*spak2e7
      abb137(50)=abb137(42)*abb137(47)
      abb137(43)=abb137(43)-abb137(50)
      abb137(51)=spbl6k3*abb137(8)
      abb137(43)=abb137(43)*abb137(51)
      abb137(38)=abb137(38)+abb137(43)
      abb137(38)=abb137(38)*spak3k4
      abb137(38)=abb137(38)-abb137(41)
      abb137(41)=abb137(17)-abb137(14)
      abb137(43)=-abb137(4)*spbk7e7*abb137(41)
      abb137(52)=abb137(13)*spbk7e7
      abb137(52)=abb137(52)+abb137(43)
      abb137(53)=abb137(52)*abb137(25)
      abb137(54)=abb137(14)*NC
      abb137(55)=abb137(27)*abb137(54)
      abb137(53)=abb137(53)-abb137(55)
      abb137(53)=abb137(53)*spbl6k3
      abb137(52)=abb137(52)*abb137(23)
      abb137(56)=abb137(29)*abb137(54)
      abb137(52)=abb137(52)-abb137(56)
      abb137(52)=abb137(52)*spbl5k3
      abb137(52)=abb137(53)+abb137(52)
      abb137(52)=abb137(52)*spak4k7
      abb137(53)=-abb137(7)*abb137(43)
      abb137(40)=abb137(40)*abb137(13)
      abb137(40)=abb137(40)-abb137(53)
      abb137(40)=abb137(40)*abb137(25)
      abb137(57)=abb137(28)*abb137(54)
      abb137(40)=abb137(40)-abb137(57)
      abb137(58)=spak2l5*spbl5k3
      abb137(59)=abb137(58)*spak4k7
      abb137(40)=abb137(40)*abb137(59)
      abb137(60)=-abb137(6)*abb137(43)
      abb137(44)=abb137(44)*abb137(13)
      abb137(44)=abb137(44)-abb137(60)
      abb137(44)=abb137(44)*abb137(23)
      abb137(61)=abb137(30)*abb137(54)
      abb137(44)=abb137(44)-abb137(61)
      abb137(62)=spak2l6*spbl6k3
      abb137(63)=abb137(62)*spak4k7
      abb137(44)=abb137(44)*abb137(63)
      abb137(21)=-abb137(21)+abb137(52)+abb137(38)+abb137(40)+abb137(44)
      abb137(40)=-2.0_ki*abb137(21)
      abb137(44)=abb137(34)*abb137(31)
      abb137(44)=abb137(44)-abb137(46)
      abb137(44)=abb137(44)*abb137(45)
      abb137(46)=abb137(34)*abb137(26)
      abb137(52)=abb137(7)*abb137(46)
      abb137(48)=abb137(52)-abb137(48)
      abb137(52)=abb137(48)*abb137(49)
      abb137(46)=abb137(6)*abb137(46)
      abb137(46)=abb137(46)-abb137(50)
      abb137(50)=abb137(46)*abb137(51)
      abb137(50)=abb137(52)+abb137(50)
      abb137(50)=abb137(50)*spak3k4
      abb137(44)=abb137(44)-abb137(50)
      abb137(50)=abb137(13)*spbk3k1
      abb137(31)=abb137(50)*abb137(31)
      abb137(31)=abb137(31)-abb137(33)
      abb137(31)=abb137(31)*abb137(22)
      abb137(33)=abb137(27)*abb137(13)
      abb137(33)=abb137(33)-abb137(55)
      abb137(33)=abb137(33)*spbl6k3
      abb137(52)=abb137(29)*abb137(13)
      abb137(52)=abb137(52)-abb137(56)
      abb137(52)=abb137(52)*spbl5k3
      abb137(33)=abb137(33)+abb137(52)
      abb137(33)=abb137(33)*spak4k7
      abb137(30)=abb137(30)*abb137(13)
      abb137(30)=abb137(30)-abb137(61)
      abb137(30)=abb137(30)*abb137(63)
      abb137(28)=abb137(28)*abb137(13)
      abb137(28)=abb137(28)-abb137(57)
      abb137(28)=abb137(28)*abb137(59)
      abb137(28)=abb137(31)-abb137(33)+abb137(44)-abb137(30)-abb137(28)
      abb137(30)=-es12+es712-es71
      abb137(28)=4.0_ki*abb137(28)*abb137(30)
      abb137(31)=spak2k4*abb137(6)
      abb137(33)=abb137(32)*abb137(31)
      abb137(52)=abb137(31)*spbk3k1
      abb137(57)=abb137(52)*abb137(17)
      abb137(33)=abb137(33)-abb137(57)
      abb137(33)=abb137(33)*abb137(4)
      abb137(57)=abb137(52)*abb137(13)
      abb137(57)=abb137(57)-abb137(33)
      abb137(57)=abb137(57)*spbl6k1
      abb137(61)=abb137(14)*spbl6k1
      abb137(52)=abb137(52)*abb137(61)
      abb137(64)=abb137(14)*spbl5k1
      abb137(65)=spak2k4*abb137(7)
      abb137(66)=abb137(65)*spbk3k1
      abb137(67)=abb137(66)*abb137(64)
      abb137(52)=abb137(52)+abb137(67)
      abb137(52)=abb137(52)*NC
      abb137(67)=abb137(32)*abb137(65)
      abb137(68)=abb137(66)*abb137(17)
      abb137(67)=abb137(67)-abb137(68)
      abb137(67)=abb137(67)*abb137(4)
      abb137(66)=abb137(66)*abb137(13)
      abb137(66)=abb137(66)-abb137(67)
      abb137(66)=abb137(66)*spbl5k1
      abb137(52)=-abb137(57)+abb137(52)-abb137(66)
      abb137(52)=abb137(52)*spak1k2
      abb137(41)=abb137(41)*abb137(4)
      abb137(57)=-abb137(65)*abb137(41)
      abb137(66)=abb137(65)*abb137(13)
      abb137(66)=abb137(66)-abb137(57)
      abb137(66)=abb137(66)*spbl5k1
      abb137(68)=abb137(54)*spbl5k1
      abb137(69)=abb137(68)*abb137(65)
      abb137(66)=abb137(66)-abb137(69)
      abb137(66)=abb137(66)*abb137(58)
      abb137(69)=-abb137(31)*abb137(41)
      abb137(70)=abb137(31)*abb137(13)
      abb137(70)=abb137(70)-abb137(69)
      abb137(70)=abb137(70)*spbl6k1
      abb137(71)=abb137(54)*spbl6k1
      abb137(72)=abb137(71)*abb137(31)
      abb137(70)=abb137(70)-abb137(72)
      abb137(70)=abb137(70)*abb137(62)
      abb137(72)=-spak2k4*abb137(41)
      abb137(73)=abb137(13)*spak2k4
      abb137(73)=abb137(72)-abb137(73)
      abb137(74)=abb137(73)*spbl5k1
      abb137(75)=abb137(68)*spak2k4
      abb137(74)=abb137(75)+abb137(74)
      abb137(74)=abb137(74)*spbl6k3
      abb137(73)=abb137(73)*spbl6k1
      abb137(75)=abb137(71)*spak2k4
      abb137(73)=abb137(75)+abb137(73)
      abb137(73)=abb137(73)*spbl5k3
      abb137(52)=abb137(52)+abb137(66)+abb137(70)-abb137(74)-abb137(73)
      abb137(30)=-8.0_ki*abb137(52)*abb137(30)
      abb137(66)=abb137(7)*spak2k7
      abb137(70)=abb137(18)*abb137(66)
      abb137(73)=abb137(66)*abb137(14)
      abb137(74)=abb137(73)*abb137(15)
      abb137(70)=abb137(70)-abb137(74)
      abb137(70)=abb137(70)*abb137(4)
      abb137(74)=abb137(66)*abb137(13)
      abb137(75)=abb137(74)*abb137(15)
      abb137(70)=abb137(70)-abb137(75)
      abb137(70)=abb137(70)*spbl5k1
      abb137(75)=abb137(6)*spak2k7
      abb137(18)=abb137(18)*abb137(75)
      abb137(76)=abb137(75)*abb137(14)
      abb137(77)=abb137(76)*abb137(15)
      abb137(18)=abb137(18)-abb137(77)
      abb137(18)=abb137(18)*abb137(4)
      abb137(77)=abb137(75)*abb137(13)
      abb137(78)=abb137(77)*abb137(15)
      abb137(18)=abb137(18)-abb137(78)
      abb137(18)=abb137(18)*spbl6k1
      abb137(78)=abb137(64)*abb137(66)
      abb137(79)=abb137(61)*abb137(75)
      abb137(78)=abb137(78)+abb137(79)
      abb137(78)=abb137(78)*NC
      abb137(15)=abb137(15)*abb137(78)
      abb137(15)=abb137(15)+abb137(70)+abb137(18)
      abb137(15)=abb137(15)*spak1k2
      abb137(18)=abb137(75)*abb137(43)
      abb137(70)=abb137(77)*spbk7e7
      abb137(18)=abb137(70)+abb137(18)
      abb137(18)=abb137(18)*spbl6k1
      abb137(70)=abb137(71)*abb137(75)
      abb137(79)=abb137(70)*spbk7e7
      abb137(18)=abb137(18)-abb137(79)
      abb137(18)=abb137(18)*abb137(62)
      abb137(79)=abb137(66)*abb137(43)
      abb137(80)=abb137(74)*spbk7e7
      abb137(79)=abb137(80)+abb137(79)
      abb137(79)=abb137(79)*spbl5k1
      abb137(80)=abb137(68)*abb137(66)
      abb137(81)=abb137(80)*spbk7e7
      abb137(79)=abb137(79)-abb137(81)
      abb137(79)=abb137(79)*abb137(58)
      abb137(81)=-spak2k7*abb137(43)
      abb137(82)=abb137(13)*spak2k7
      abb137(83)=abb137(82)*spbk7e7
      abb137(81)=abb137(81)-abb137(83)
      abb137(83)=abb137(81)*spbl5k1
      abb137(84)=abb137(68)*spak2k7
      abb137(85)=spbk7e7*abb137(84)
      abb137(83)=abb137(85)+abb137(83)
      abb137(83)=abb137(83)*spbl6k3
      abb137(81)=abb137(81)*spbl6k1
      abb137(85)=abb137(71)*spak2k7
      abb137(86)=abb137(85)*spbk7e7
      abb137(81)=abb137(81)+abb137(86)
      abb137(81)=abb137(81)*spbl5k3
      abb137(15)=abb137(15)-abb137(83)-abb137(81)+abb137(18)+abb137(79)
      abb137(15)=abb137(15)*spak4e7
      abb137(18)=-abb137(15)-abb137(38)
      abb137(18)=8.0_ki*abb137(18)
      abb137(38)=32.0_ki*abb137(52)
      abb137(79)=abb137(65)*spak2k7
      abb137(81)=abb137(79)*abb137(14)
      abb137(83)=abb137(81)*abb137(27)
      abb137(86)=abb137(31)*spak2k7
      abb137(14)=abb137(86)*abb137(14)
      abb137(87)=abb137(14)*abb137(29)
      abb137(83)=abb137(83)+abb137(87)
      abb137(83)=abb137(83)*NC
      abb137(87)=abb137(82)*abb137(31)
      abb137(88)=abb137(87)*abb137(29)
      abb137(89)=abb137(82)*abb137(65)
      abb137(90)=abb137(89)*abb137(27)
      abb137(83)=abb137(83)-abb137(88)-abb137(90)
      abb137(83)=abb137(83)*spbk3k2
      abb137(88)=12.0_ki*abb137(83)
      abb137(90)=abb137(79)*abb137(17)
      abb137(81)=abb137(90)-abb137(81)
      abb137(81)=abb137(81)*abb137(4)
      abb137(81)=abb137(81)+abb137(89)
      abb137(81)=abb137(81)*spbl5k1
      abb137(89)=abb137(86)*abb137(17)
      abb137(14)=abb137(89)-abb137(14)
      abb137(14)=abb137(14)*abb137(4)
      abb137(14)=abb137(14)+abb137(87)
      abb137(14)=abb137(14)*spbl6k1
      abb137(86)=abb137(86)*abb137(61)
      abb137(79)=abb137(79)*abb137(64)
      abb137(79)=abb137(86)+abb137(79)
      abb137(79)=abb137(79)*NC
      abb137(14)=abb137(81)+abb137(14)-abb137(79)
      abb137(14)=abb137(14)*spbk7k3
      abb137(79)=32.0_ki*abb137(14)
      abb137(81)=abb137(36)*abb137(65)
      abb137(86)=abb137(81)*abb137(47)
      abb137(87)=abb137(34)*abb137(65)
      abb137(89)=abb137(87)*abb137(26)
      abb137(86)=abb137(86)-abb137(89)
      abb137(89)=spbl5k2*abb137(8)
      abb137(86)=abb137(86)*abb137(89)
      abb137(36)=abb137(36)*abb137(31)
      abb137(90)=abb137(36)*abb137(47)
      abb137(91)=abb137(34)*abb137(31)
      abb137(92)=abb137(91)*abb137(26)
      abb137(90)=abb137(90)-abb137(92)
      abb137(92)=spbl6k2*abb137(8)
      abb137(90)=abb137(90)*abb137(92)
      abb137(86)=abb137(86)+abb137(90)
      abb137(90)=12.0_ki*abb137(86)
      abb137(93)=abb137(39)*abb137(31)
      abb137(93)=abb137(93)-abb137(36)
      abb137(93)=abb137(93)*abb137(4)
      abb137(36)=abb137(36)*NC
      abb137(36)=abb137(91)+abb137(93)-abb137(36)
      abb137(91)=spbk7l6*abb137(8)
      abb137(36)=abb137(36)*abb137(91)
      abb137(93)=abb137(39)*abb137(65)
      abb137(93)=abb137(93)-abb137(81)
      abb137(93)=abb137(93)*abb137(4)
      abb137(81)=abb137(81)*NC
      abb137(81)=abb137(87)+abb137(93)-abb137(81)
      abb137(87)=spbk7l5*abb137(8)
      abb137(81)=abb137(81)*abb137(87)
      abb137(36)=abb137(36)+abb137(81)
      abb137(81)=32.0_ki*abb137(36)
      abb137(20)=-abb137(23)*abb137(20)
      abb137(16)=-abb137(25)*abb137(16)
      abb137(16)=abb137(20)+abb137(16)
      abb137(16)=abb137(16)*abb137(22)
      abb137(20)=-spbl6k3*abb137(25)
      abb137(93)=-spbl5k3*abb137(23)
      abb137(20)=abb137(20)+abb137(93)
      abb137(20)=spak4k7*abb137(43)*abb137(20)
      abb137(23)=abb137(23)*abb137(63)*abb137(60)
      abb137(25)=abb137(25)*abb137(59)*abb137(53)
      abb137(15)=abb137(15)+abb137(25)+abb137(23)+abb137(20)+abb137(16)-abb137(&
      &44)
      abb137(16)=abb137(3)*abb137(1)*mB**3
      abb137(20)=abb137(16)*abb137(75)*abb137(65)
      abb137(23)=abb137(11)*abb137(20)
      abb137(25)=abb137(27)*abb137(23)
      abb137(20)=abb137(35)*abb137(20)
      abb137(43)=-abb137(27)*abb137(20)
      abb137(16)=abb137(16)*spak2k4*spak2k7
      abb137(44)=abb137(16)*abb137(35)
      abb137(53)=abb137(6)**2
      abb137(60)=abb137(44)*abb137(53)
      abb137(93)=-abb137(29)*abb137(60)
      abb137(43)=abb137(93)+abb137(43)
      abb137(43)=NC*abb137(43)
      abb137(16)=abb137(16)*abb137(11)
      abb137(53)=abb137(16)*abb137(53)
      abb137(93)=abb137(29)*abb137(53)
      abb137(25)=abb137(43)+abb137(93)+abb137(25)
      abb137(43)=abb137(9)*spbk3k2
      abb137(25)=abb137(25)*abb137(43)
      abb137(93)=abb137(29)*abb137(23)
      abb137(94)=-abb137(29)*abb137(20)
      abb137(95)=abb137(7)**2
      abb137(44)=abb137(44)*abb137(95)
      abb137(96)=-abb137(27)*abb137(44)
      abb137(94)=abb137(94)+abb137(96)
      abb137(94)=NC*abb137(94)
      abb137(16)=abb137(16)*abb137(95)
      abb137(95)=abb137(27)*abb137(16)
      abb137(93)=abb137(94)+abb137(93)+abb137(95)
      abb137(94)=abb137(10)*spbk3k2
      abb137(93)=abb137(93)*abb137(94)
      abb137(25)=abb137(25)+abb137(93)
      abb137(15)=2.0_ki*abb137(15)+3.0_ki*abb137(25)
      abb137(15)=4.0_ki*abb137(15)
      abb137(25)=abb137(23)*abb137(4)
      abb137(25)=abb137(25)-abb137(20)
      abb137(25)=abb137(25)*abb137(4)
      abb137(25)=abb137(25)+abb137(23)
      abb137(93)=-spbl5k1*abb137(25)
      abb137(95)=abb137(53)*abb137(4)
      abb137(95)=abb137(95)-abb137(60)
      abb137(95)=abb137(95)*abb137(4)
      abb137(95)=abb137(95)+abb137(53)
      abb137(96)=-spbl6k1*abb137(95)
      abb137(97)=spbl5k1*abb137(20)
      abb137(98)=spbl6k1*abb137(60)
      abb137(97)=abb137(98)+abb137(97)
      abb137(97)=NC*abb137(97)
      abb137(93)=abb137(97)+abb137(96)+abb137(93)
      abb137(96)=abb137(9)*spbk7k3
      abb137(93)=abb137(93)*abb137(96)
      abb137(97)=-spbl6k1*abb137(25)
      abb137(98)=abb137(16)*abb137(4)
      abb137(98)=abb137(98)-abb137(44)
      abb137(98)=abb137(98)*abb137(4)
      abb137(98)=abb137(98)+abb137(16)
      abb137(99)=-spbl5k1*abb137(98)
      abb137(100)=spbl6k1*abb137(20)
      abb137(101)=spbl5k1*abb137(44)
      abb137(100)=abb137(100)+abb137(101)
      abb137(100)=NC*abb137(100)
      abb137(97)=abb137(100)+abb137(97)+abb137(99)
      abb137(99)=abb137(10)*spbk7k3
      abb137(97)=abb137(97)*abb137(99)
      abb137(93)=abb137(93)+abb137(97)
      abb137(52)=-abb137(52)+2.0_ki*abb137(93)
      abb137(52)=16.0_ki*abb137(52)
      abb137(83)=abb137(83)-abb137(86)
      abb137(83)=12.0_ki*abb137(83)
      abb137(14)=abb137(14)-abb137(36)
      abb137(14)=32.0_ki*abb137(14)
      abb137(21)=4.0_ki*abb137(21)
      abb137(33)=-spbl6k1*abb137(33)
      abb137(36)=-spbl5k1*abb137(67)
      abb137(33)=abb137(33)+abb137(36)
      abb137(33)=spak1k2*abb137(33)
      abb137(36)=spbl6k3*spbl5k1
      abb137(67)=spbl5k3*spbl6k1
      abb137(36)=abb137(36)+abb137(67)
      abb137(36)=abb137(72)*abb137(36)
      abb137(62)=spbl6k1*abb137(62)*abb137(69)
      abb137(57)=spbl5k1*abb137(58)*abb137(57)
      abb137(33)=abb137(57)+abb137(62)+abb137(33)+abb137(36)
      abb137(33)=4.0_ki*spbk7k2*spae7k7*abb137(33)
      abb137(36)=abb137(76)*abb137(29)
      abb137(57)=abb137(73)*abb137(27)
      abb137(36)=abb137(36)+abb137(57)
      abb137(36)=abb137(36)*NC
      abb137(57)=abb137(77)*abb137(29)
      abb137(58)=abb137(74)*abb137(27)
      abb137(36)=abb137(36)-abb137(57)-abb137(58)
      abb137(62)=-es12*abb137(36)
      abb137(67)=abb137(56)*abb137(75)
      abb137(57)=abb137(67)-abb137(57)
      abb137(67)=spak2l6*abb137(57)
      abb137(69)=-abb137(27)*abb137(82)
      abb137(72)=spak2k7*abb137(55)
      abb137(67)=abb137(67)+abb137(69)+abb137(72)
      abb137(67)=spbl6k2*abb137(67)
      abb137(69)=abb137(55)*abb137(66)
      abb137(58)=abb137(69)-abb137(58)
      abb137(69)=spak2l5*abb137(58)
      abb137(72)=-abb137(29)*abb137(82)
      abb137(86)=spak2k7*abb137(56)
      abb137(69)=abb137(69)+abb137(72)+abb137(86)
      abb137(69)=spbl5k2*abb137(69)
      abb137(72)=abb137(89)*abb137(48)
      abb137(86)=abb137(92)*abb137(46)
      abb137(72)=abb137(72)+abb137(86)
      abb137(86)=spak2k3*abb137(72)
      abb137(65)=abb137(65)*abb137(12)
      abb137(93)=abb137(65)*abb137(11)
      abb137(97)=abb137(93)*abb137(26)
      abb137(65)=abb137(65)*abb137(35)
      abb137(100)=abb137(65)*abb137(47)
      abb137(97)=abb137(97)-abb137(100)
      abb137(89)=abb137(97)*abb137(89)
      abb137(12)=abb137(31)*abb137(12)
      abb137(11)=abb137(12)*abb137(11)
      abb137(31)=abb137(11)*abb137(26)
      abb137(12)=abb137(12)*abb137(35)
      abb137(35)=abb137(12)*abb137(47)
      abb137(31)=abb137(31)-abb137(35)
      abb137(31)=abb137(31)*abb137(92)
      abb137(31)=abb137(89)+abb137(31)
      abb137(35)=spbk4k1*abb137(31)
      abb137(35)=abb137(35)+abb137(86)+abb137(69)+abb137(62)+abb137(67)
      abb137(35)=6.0_ki*abb137(35)
      abb137(62)=abb137(17)*abb137(66)
      abb137(62)=abb137(62)-abb137(73)
      abb137(62)=abb137(62)*abb137(4)
      abb137(62)=abb137(62)+abb137(74)
      abb137(67)=abb137(62)*spbl5k1
      abb137(69)=abb137(17)*abb137(75)
      abb137(69)=abb137(69)-abb137(76)
      abb137(69)=abb137(69)*abb137(4)
      abb137(69)=abb137(69)+abb137(77)
      abb137(73)=abb137(69)*spbl6k1
      abb137(76)=-abb137(73)+abb137(78)-abb137(67)
      abb137(78)=-spbk7k1*spak1k2*abb137(76)
      abb137(86)=abb137(93)*abb137(4)
      abb137(86)=abb137(86)-abb137(65)
      abb137(86)=abb137(86)*abb137(4)
      abb137(65)=abb137(65)*NC
      abb137(65)=abb137(86)-abb137(65)+abb137(93)
      abb137(65)=abb137(65)*abb137(87)
      abb137(86)=abb137(11)*abb137(4)
      abb137(86)=abb137(86)-abb137(12)
      abb137(86)=abb137(86)*abb137(4)
      abb137(12)=abb137(12)*NC
      abb137(11)=abb137(86)-abb137(12)+abb137(11)
      abb137(11)=abb137(11)*abb137(91)
      abb137(11)=abb137(65)+abb137(11)
      abb137(12)=-spbk4k1*abb137(11)
      abb137(65)=spak2k7*abb137(41)
      abb137(65)=abb137(65)+abb137(82)
      abb137(82)=spbl5k1*abb137(65)
      abb137(70)=abb137(70)-abb137(73)
      abb137(73)=-spak2l6*abb137(70)
      abb137(73)=abb137(73)+abb137(82)-abb137(84)
      abb137(73)=spbk7l6*abb137(73)
      abb137(65)=spbl6k1*abb137(65)
      abb137(67)=abb137(80)-abb137(67)
      abb137(80)=-spak2l5*abb137(67)
      abb137(65)=abb137(80)+abb137(65)-abb137(85)
      abb137(65)=spbk7l5*abb137(65)
      abb137(80)=abb137(39)*abb137(7)
      abb137(80)=abb137(80)-abb137(37)
      abb137(80)=abb137(80)*abb137(4)
      abb137(82)=abb137(34)*abb137(7)
      abb137(80)=abb137(80)+abb137(82)
      abb137(82)=abb137(37)*NC
      abb137(82)=abb137(82)-abb137(80)
      abb137(84)=abb137(82)*abb137(87)
      abb137(39)=abb137(39)*abb137(6)
      abb137(39)=abb137(39)-abb137(42)
      abb137(39)=abb137(39)*abb137(4)
      abb137(34)=abb137(34)*abb137(6)
      abb137(34)=abb137(39)+abb137(34)
      abb137(39)=abb137(42)*NC
      abb137(39)=abb137(39)-abb137(34)
      abb137(85)=abb137(39)*abb137(91)
      abb137(84)=abb137(84)+abb137(85)
      abb137(85)=spak2k3*abb137(84)
      abb137(12)=abb137(12)+abb137(85)+abb137(78)+abb137(73)+abb137(65)
      abb137(12)=16.0_ki*abb137(12)
      abb137(65)=spak1k2*abb137(72)
      abb137(31)=-spbk4k3*abb137(31)
      abb137(31)=abb137(31)+abb137(65)
      abb137(31)=6.0_ki*abb137(31)
      abb137(11)=spbk4k3*abb137(11)
      abb137(65)=spak1k2*abb137(84)
      abb137(11)=abb137(11)+abb137(65)
      abb137(11)=16.0_ki*abb137(11)
      abb137(17)=abb137(17)*spbk3k1
      abb137(17)=abb137(17)-abb137(32)
      abb137(19)=-abb137(17)*abb137(19)
      abb137(32)=-abb137(6)*abb137(50)
      abb137(19)=abb137(32)+abb137(19)
      abb137(19)=spbl6k1*abb137(19)
      abb137(17)=-abb137(17)*abb137(24)
      abb137(24)=-abb137(7)*abb137(50)
      abb137(17)=abb137(24)+abb137(17)
      abb137(17)=spbl5k1*abb137(17)
      abb137(24)=abb137(6)*abb137(61)
      abb137(32)=abb137(7)*abb137(64)
      abb137(24)=abb137(24)+abb137(32)
      abb137(24)=NC*spbk3k1*abb137(24)
      abb137(17)=abb137(24)+abb137(19)+abb137(17)
      abb137(17)=abb137(17)*abb137(22)
      abb137(19)=-spbl6k1*abb137(34)
      abb137(22)=-spbl5k1*abb137(80)
      abb137(24)=spbl6k1*abb137(42)
      abb137(32)=spbl5k1*abb137(37)
      abb137(24)=abb137(24)+abb137(32)
      abb137(24)=NC*abb137(24)
      abb137(19)=abb137(24)+abb137(19)+abb137(22)
      abb137(19)=abb137(19)*abb137(45)
      abb137(13)=abb137(41)+abb137(13)
      abb137(22)=spbl5k1*abb137(13)
      abb137(22)=abb137(22)-abb137(68)
      abb137(22)=spbl6k3*abb137(22)
      abb137(24)=spbl6k1*abb137(13)
      abb137(24)=abb137(24)-abb137(71)
      abb137(24)=spbl5k3*abb137(24)
      abb137(22)=abb137(22)+abb137(24)
      abb137(22)=spak4k7*abb137(22)
      abb137(24)=-abb137(39)*abb137(51)
      abb137(32)=-abb137(82)*abb137(49)
      abb137(24)=abb137(24)+abb137(32)
      abb137(24)=spak3k4*abb137(24)
      abb137(32)=spbl6k1*abb137(6)*abb137(13)
      abb137(34)=-abb137(6)*abb137(71)
      abb137(32)=abb137(32)+abb137(34)
      abb137(32)=abb137(32)*abb137(63)
      abb137(13)=spbl5k1*abb137(7)*abb137(13)
      abb137(34)=-abb137(7)*abb137(68)
      abb137(13)=abb137(13)+abb137(34)
      abb137(13)=abb137(13)*abb137(59)
      abb137(13)=abb137(13)+abb137(32)+abb137(24)+abb137(19)+abb137(22)+abb137(&
      &17)
      abb137(13)=8.0_ki*abb137(13)
      abb137(17)=spak3k4*abb137(8)
      abb137(19)=abb137(46)*abb137(17)
      abb137(22)=-spak4l6*abb137(57)
      abb137(24)=abb137(27)*abb137(77)
      abb137(27)=-abb137(75)*abb137(55)
      abb137(24)=abb137(24)+abb137(27)
      abb137(24)=spak4l5*abb137(24)
      abb137(19)=abb137(24)+abb137(22)+abb137(19)
      abb137(19)=spbk3k2*abb137(19)
      abb137(22)=abb137(20)*abb137(47)
      abb137(23)=abb137(23)*abb137(26)
      abb137(22)=abb137(22)-abb137(23)
      abb137(23)=abb137(22)*abb137(94)
      abb137(24)=abb137(60)*abb137(47)
      abb137(27)=abb137(53)*abb137(26)
      abb137(24)=abb137(24)-abb137(27)
      abb137(24)=abb137(24)*abb137(43)
      abb137(27)=abb137(46)*abb137(45)
      abb137(23)=abb137(23)+abb137(27)+abb137(24)
      abb137(23)=spbk2k1*abb137(23)
      abb137(19)=abb137(23)+abb137(19)
      abb137(19)=6.0_ki*abb137(19)
      abb137(23)=abb137(39)*abb137(17)
      abb137(27)=spak4l6*abb137(70)
      abb137(32)=-spbl5k1*abb137(69)
      abb137(34)=abb137(75)*abb137(68)
      abb137(32)=abb137(32)+abb137(34)
      abb137(32)=spak4l5*abb137(32)
      abb137(23)=abb137(32)+abb137(27)+abb137(23)
      abb137(23)=spbk7k3*abb137(23)
      abb137(20)=abb137(20)*NC
      abb137(20)=abb137(20)-abb137(25)
      abb137(25)=-abb137(20)*abb137(99)
      abb137(27)=abb137(60)*NC
      abb137(27)=abb137(27)-abb137(95)
      abb137(32)=-abb137(27)*abb137(96)
      abb137(25)=abb137(32)+abb137(25)
      abb137(25)=spbk2k1*abb137(25)
      abb137(32)=abb137(45)*spbk7k1
      abb137(34)=-abb137(39)*abb137(32)
      abb137(23)=abb137(34)+abb137(25)+abb137(23)
      abb137(23)=16.0_ki*abb137(23)
      abb137(25)=abb137(48)*abb137(17)
      abb137(29)=abb137(29)*abb137(74)
      abb137(34)=-abb137(66)*abb137(56)
      abb137(29)=abb137(29)+abb137(34)
      abb137(29)=spak4l6*abb137(29)
      abb137(34)=-spak4l5*abb137(58)
      abb137(25)=abb137(34)+abb137(29)+abb137(25)
      abb137(25)=spbk3k2*abb137(25)
      abb137(29)=abb137(22)*abb137(43)
      abb137(34)=abb137(44)*abb137(47)
      abb137(16)=abb137(16)*abb137(26)
      abb137(16)=abb137(34)-abb137(16)
      abb137(16)=abb137(16)*abb137(94)
      abb137(34)=abb137(48)*abb137(45)
      abb137(29)=abb137(16)+abb137(34)+abb137(29)
      abb137(29)=spbk2k1*abb137(29)
      abb137(25)=abb137(29)+abb137(25)
      abb137(25)=6.0_ki*abb137(25)
      abb137(17)=abb137(82)*abb137(17)
      abb137(29)=-spbl6k1*abb137(62)
      abb137(34)=abb137(66)*abb137(71)
      abb137(29)=abb137(29)+abb137(34)
      abb137(29)=spak4l6*abb137(29)
      abb137(34)=spak4l5*abb137(67)
      abb137(17)=abb137(34)+abb137(29)+abb137(17)
      abb137(17)=spbk7k3*abb137(17)
      abb137(29)=-abb137(20)*abb137(96)
      abb137(34)=abb137(44)*NC
      abb137(34)=abb137(34)-abb137(98)
      abb137(37)=-abb137(34)*abb137(99)
      abb137(29)=abb137(29)+abb137(37)
      abb137(29)=spbk2k1*abb137(29)
      abb137(32)=-abb137(82)*abb137(32)
      abb137(17)=abb137(32)+abb137(29)+abb137(17)
      abb137(17)=16.0_ki*abb137(17)
      abb137(29)=-spak1k4*abb137(36)
      abb137(32)=abb137(54)*abb137(66)
      abb137(36)=-abb137(74)+abb137(32)
      abb137(36)=spak4l6*abb137(36)
      abb137(37)=abb137(54)*abb137(75)
      abb137(39)=abb137(77)-abb137(37)
      abb137(39)=spak4l5*abb137(39)
      abb137(36)=abb137(36)+abb137(39)
      abb137(26)=spbl6l5*abb137(26)*abb137(36)
      abb137(22)=abb137(26)+2.0_ki*abb137(22)+abb137(29)
      abb137(22)=spbk3k2*abb137(22)
      abb137(24)=spbl6k2*abb137(24)
      abb137(16)=spbl5k2*abb137(16)
      abb137(16)=abb137(16)+abb137(24)+abb137(22)
      abb137(16)=6.0_ki*abb137(16)
      abb137(22)=spak1k4*abb137(76)
      abb137(24)=-abb137(32)+abb137(62)
      abb137(24)=spak4l6*abb137(24)
      abb137(26)=abb137(37)-abb137(69)
      abb137(26)=spak4l5*abb137(26)
      abb137(24)=abb137(24)+abb137(26)
      abb137(24)=spbl6l5*abb137(24)
      abb137(26)=-spbl6k2*abb137(9)*abb137(27)
      abb137(27)=-spbl5k2*abb137(10)*abb137(34)
      abb137(20)=abb137(24)+abb137(27)+abb137(26)-2.0_ki*abb137(20)+abb137(22)
      abb137(20)=16.0_ki*spbk7k3*abb137(20)
      R2d137=abb137(40)
      rat2 = rat2 + R2d137
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='137' value='", &
          & R2d137, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd137h3
