module     p9_csbar_epnebbbarg_abbrevd63h3
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(116), public :: abb63
   complex(ki), public :: R2d63
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
      abb63(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb63(2)=1.0_ki/(es34+es567-es12-es234)
      abb63(3)=NC**(-1)
      abb63(4)=es567**(-1)
      abb63(5)=es56**(-1)
      abb63(6)=spak2l5**(-1)
      abb63(7)=spak2l6**(-1)
      abb63(8)=1.0_ki/(mB**2-es67-es56+es567)
      abb63(9)=sqrt(mB**2)
      abb63(10)=1.0_ki/(-mB**2+es67)
      abb63(11)=1.0_ki/(-es71+es712-es12)
      abb63(12)=spak2k7*abb63(3)
      abb63(13)=NC*spak2k7
      abb63(13)=abb63(12)-abb63(13)
      abb63(14)=abb63(2)**2*i_*spak2e7*CVSC*abb63(1)
      abb63(15)=TR*gW
      abb63(15)=abb63(15)**2
      abb63(16)=abb63(14)*abb63(15)
      abb63(17)=mB*abb63(16)
      abb63(18)=abb63(17)*c3
      abb63(19)=-abb63(18)*abb63(13)
      abb63(20)=spbk7e7*abb63(7)
      abb63(21)=abb63(19)*abb63(20)
      abb63(22)=NC-abb63(3)
      abb63(23)=abb63(22)*abb63(18)
      abb63(24)=abb63(23)*spbe7l6
      abb63(21)=abb63(21)-abb63(24)
      abb63(25)=2.0_ki*abb63(10)
      abb63(26)=spbk3k1*abb63(4)
      abb63(27)=-abb63(25)*abb63(26)*abb63(21)
      abb63(28)=-spak1k4*abb63(27)
      abb63(29)=abb63(20)*spak2k7
      abb63(30)=abb63(29)-spbe7l6
      abb63(31)=c2*abb63(10)
      abb63(32)=2.0_ki*abb63(31)
      abb63(33)=abb63(30)*abb63(32)
      abb63(34)=abb63(3)**2
      abb63(34)=abb63(34)-1.0_ki
      abb63(35)=abb63(34)*abb63(17)
      abb63(36)=abb63(26)*abb63(35)
      abb63(37)=abb63(36)*spak1k4
      abb63(38)=-abb63(37)*abb63(33)
      abb63(39)=abb63(17)*abb63(5)*abb63(4)
      abb63(40)=abb63(39)*spbk3k1
      abb63(41)=-abb63(40)*abb63(22)
      abb63(42)=c1*spak1k4
      abb63(43)=abb63(41)*abb63(42)
      abb63(44)=abb63(40)*c3
      abb63(45)=-abb63(44)*abb63(22)
      abb63(46)=abb63(45)*spak1k4
      abb63(43)=abb63(43)-abb63(46)
      abb63(46)=abb63(43)*spbe7l6
      abb63(28)=abb63(28)-abb63(38)+abb63(46)
      abb63(38)=abb63(28)*spbl5k1
      abb63(46)=abb63(17)*spak2k7
      abb63(47)=-abb63(46)*abb63(22)
      abb63(48)=spbk7e7*abb63(6)
      abb63(49)=abb63(47)*abb63(48)
      abb63(17)=-abb63(17)*abb63(22)
      abb63(50)=-spbe7l5*abb63(17)
      abb63(50)=abb63(50)+abb63(49)
      abb63(51)=2.0_ki*abb63(8)
      abb63(26)=abb63(51)*abb63(26)*abb63(50)
      abb63(50)=-abb63(42)*abb63(26)
      abb63(52)=abb63(48)*spak2k7
      abb63(53)=abb63(52)-spbe7l5
      abb63(54)=c2*abb63(8)
      abb63(55)=2.0_ki*abb63(54)
      abb63(56)=abb63(53)*abb63(55)
      abb63(37)=-abb63(37)*abb63(56)
      abb63(57)=abb63(43)*spbe7l5
      abb63(37)=abb63(50)-abb63(37)-abb63(57)
      abb63(50)=abb63(37)*spbl6k1
      abb63(38)=abb63(38)-abb63(50)
      abb63(50)=c1*spak3k4
      abb63(26)=-abb63(50)*abb63(26)
      abb63(36)=abb63(36)*spak3k4
      abb63(57)=-abb63(36)*abb63(56)
      abb63(41)=abb63(41)*abb63(50)
      abb63(45)=abb63(45)*spak3k4
      abb63(41)=abb63(41)-abb63(45)
      abb63(45)=abb63(41)*spbe7l5
      abb63(26)=abb63(26)-abb63(57)-abb63(45)
      abb63(45)=abb63(26)*spbl6k3
      abb63(27)=-spak3k4*abb63(27)
      abb63(36)=-abb63(36)*abb63(33)
      abb63(57)=abb63(41)*spbe7l6
      abb63(27)=abb63(27)-abb63(36)+abb63(57)
      abb63(36)=abb63(27)*spbl5k3
      abb63(36)=abb63(45)-abb63(36)
      abb63(45)=abb63(5)*spbk3k1
      abb63(57)=abb63(18)*abb63(45)
      abb63(58)=-abb63(57)*abb63(13)
      abb63(59)=abb63(58)*spak1k4
      abb63(60)=abb63(20)*spbl5k1
      abb63(61)=abb63(48)*spbl6k1
      abb63(60)=abb63(60)+abb63(61)
      abb63(61)=abb63(59)*abb63(60)
      abb63(58)=abb63(58)*spak3k4
      abb63(62)=abb63(20)*spbl5k3
      abb63(63)=abb63(48)*spbl6k3
      abb63(62)=abb63(62)+abb63(63)
      abb63(63)=abb63(58)*abb63(62)
      abb63(64)=abb63(61)-abb63(63)
      abb63(65)=2.0_ki*abb63(11)
      abb63(66)=abb63(64)*abb63(65)
      abb63(66)=abb63(66)+abb63(38)+abb63(36)
      abb63(67)=es12*abb63(66)
      abb63(68)=abb63(14)*spbk3k1
      abb63(69)=abb63(15)*abb63(4)
      abb63(70)=abb63(68)*abb63(69)
      abb63(71)=abb63(70)*NC
      abb63(72)=abb63(71)*c3
      abb63(73)=c3*abb63(3)
      abb63(74)=abb63(70)*abb63(73)
      abb63(72)=abb63(72)-abb63(74)
      abb63(74)=abb63(10)*spbe7l6
      abb63(72)=abb63(72)*abb63(74)
      abb63(75)=abb63(70)*abb63(34)
      abb63(31)=abb63(31)*spbe7l6
      abb63(76)=abb63(31)*abb63(75)
      abb63(72)=abb63(72)+abb63(76)
      abb63(76)=spak1k4*abb63(72)
      abb63(77)=abb63(76)*spbl5k1
      abb63(70)=abb63(70)*abb63(3)
      abb63(70)=abb63(70)-abb63(71)
      abb63(71)=abb63(8)*spbe7l5
      abb63(70)=abb63(70)*abb63(71)
      abb63(78)=abb63(70)*abb63(42)
      abb63(54)=abb63(54)*spbe7l5
      abb63(75)=abb63(54)*abb63(75)
      abb63(79)=abb63(75)*spak1k4
      abb63(78)=abb63(79)-abb63(78)
      abb63(79)=abb63(78)*spbl6k1
      abb63(77)=abb63(77)-abb63(79)
      abb63(72)=spak3k4*abb63(72)
      abb63(79)=abb63(72)*spbl5k3
      abb63(70)=abb63(70)*abb63(50)
      abb63(75)=abb63(75)*spak3k4
      abb63(70)=abb63(75)-abb63(70)
      abb63(75)=abb63(70)*spbl6k3
      abb63(75)=abb63(79)-abb63(75)
      abb63(79)=abb63(77)-abb63(75)
      abb63(80)=2.0_ki*abb63(9)
      abb63(81)=abb63(79)*abb63(80)
      abb63(66)=abb63(81)+abb63(66)
      abb63(81)=es234-es34
      abb63(82)=abb63(66)*abb63(81)
      abb63(79)=es12*abb63(79)
      abb63(15)=abb63(68)*abb63(15)
      abb63(68)=abb63(15)*NC
      abb63(83)=abb63(68)*c3
      abb63(84)=abb63(15)*abb63(73)
      abb63(83)=abb63(83)-abb63(84)
      abb63(83)=abb63(83)*abb63(74)
      abb63(84)=abb63(15)*abb63(34)
      abb63(85)=abb63(84)*abb63(31)
      abb63(83)=abb63(83)+abb63(85)
      abb63(85)=spbl5k3*spak3k4
      abb63(86)=-spbl5k1*spak1k4
      abb63(85)=abb63(86)+abb63(85)
      abb63(83)=abb63(83)*abb63(85)
      abb63(15)=abb63(15)*abb63(3)
      abb63(15)=abb63(15)-abb63(68)
      abb63(15)=abb63(15)*abb63(71)
      abb63(68)=abb63(50)*abb63(15)
      abb63(84)=abb63(84)*abb63(54)
      abb63(85)=-spak3k4*abb63(84)
      abb63(68)=abb63(68)+abb63(85)
      abb63(68)=spbl6k3*abb63(68)
      abb63(15)=-abb63(42)*abb63(15)
      abb63(84)=spak1k4*abb63(84)
      abb63(15)=abb63(15)+abb63(84)
      abb63(15)=spbl6k1*abb63(15)
      abb63(15)=abb63(79)+abb63(15)+abb63(68)+abb63(83)
      abb63(15)=abb63(15)*abb63(80)
      abb63(68)=-abb63(45)*abb63(17)
      abb63(79)=abb63(68)*abb63(50)
      abb63(57)=-abb63(57)*abb63(22)
      abb63(83)=abb63(57)*spak3k4
      abb63(79)=abb63(79)+abb63(83)
      abb63(83)=-spbe7l5*abb63(79)
      abb63(84)=-spbk3k1*abb63(22)
      abb63(46)=abb63(48)*abb63(84)*abb63(46)
      abb63(85)=abb63(50)*abb63(46)
      abb63(86)=abb63(17)*spbk3k1
      abb63(87)=abb63(50)*spbe7l5
      abb63(88)=-abb63(86)*abb63(87)
      abb63(85)=abb63(88)+abb63(85)
      abb63(85)=abb63(85)*abb63(51)
      abb63(88)=spbk3k1*abb63(35)
      abb63(89)=abb63(88)*spak3k4
      abb63(90)=-abb63(89)*abb63(56)
      abb63(83)=abb63(90)+abb63(83)+abb63(85)
      abb63(83)=spbl6k3*abb63(83)
      abb63(85)=-spbe7l6*abb63(79)
      abb63(90)=abb63(19)*spbk3k1
      abb63(91)=abb63(20)*spak3k4
      abb63(92)=abb63(90)*abb63(91)
      abb63(18)=abb63(84)*abb63(18)*spbe7l6
      abb63(84)=spak3k4*abb63(18)
      abb63(84)=abb63(84)+abb63(92)
      abb63(84)=abb63(84)*abb63(25)
      abb63(89)=abb63(89)*abb63(33)
      abb63(84)=abb63(89)+abb63(85)+abb63(84)
      abb63(84)=spbl5k3*abb63(84)
      abb63(68)=abb63(68)*abb63(42)
      abb63(57)=abb63(57)*spak1k4
      abb63(57)=abb63(68)+abb63(57)
      abb63(68)=spbe7l5*abb63(57)
      abb63(46)=-abb63(42)*abb63(46)
      abb63(85)=abb63(42)*spbe7l5
      abb63(86)=abb63(86)*abb63(85)
      abb63(46)=abb63(86)+abb63(46)
      abb63(46)=abb63(46)*abb63(51)
      abb63(86)=abb63(88)*spak1k4
      abb63(88)=abb63(86)*abb63(56)
      abb63(46)=abb63(88)+abb63(68)+abb63(46)
      abb63(46)=spbl6k1*abb63(46)
      abb63(68)=spbe7l6*abb63(57)
      abb63(88)=abb63(20)*spak1k4
      abb63(89)=-abb63(90)*abb63(88)
      abb63(18)=-spak1k4*abb63(18)
      abb63(18)=abb63(18)+abb63(89)
      abb63(18)=abb63(18)*abb63(25)
      abb63(86)=-abb63(86)*abb63(33)
      abb63(18)=abb63(86)+abb63(68)+abb63(18)
      abb63(18)=spbl5k1*abb63(18)
      abb63(68)=spbe7l6*abb63(6)
      abb63(86)=abb63(68)*spbl6k3
      abb63(89)=abb63(86)*abb63(41)
      abb63(90)=abb63(68)*spbl6k1
      abb63(92)=abb63(90)*abb63(43)
      abb63(93)=abb63(89)-abb63(92)
      abb63(81)=abb63(81)+es12
      abb63(94)=-abb63(93)*abb63(81)
      abb63(95)=-abb63(79)*abb63(86)
      abb63(96)=abb63(57)*abb63(90)
      abb63(94)=abb63(95)+abb63(96)+abb63(94)
      abb63(94)=spak2l6*abb63(94)
      abb63(95)=spbe7l5*abb63(7)
      abb63(96)=abb63(95)*spbl5k3
      abb63(97)=abb63(96)*abb63(41)
      abb63(98)=abb63(95)*spbl5k1
      abb63(99)=abb63(98)*abb63(43)
      abb63(100)=abb63(97)-abb63(99)
      abb63(101)=-abb63(100)*abb63(81)
      abb63(79)=-abb63(79)*abb63(96)
      abb63(57)=abb63(57)*abb63(98)
      abb63(57)=abb63(79)+abb63(57)+abb63(101)
      abb63(57)=spak2l5*abb63(57)
      abb63(64)=-abb63(11)*abb63(64)
      abb63(79)=abb63(45)*abb63(35)
      abb63(101)=abb63(79)*abb63(52)
      abb63(102)=abb63(101)*spak1k4
      abb63(103)=abb63(102)*spbl6k1
      abb63(79)=abb63(79)*abb63(29)
      abb63(104)=abb63(79)*spak1k4
      abb63(105)=abb63(104)*spbl5k1
      abb63(103)=abb63(103)+abb63(105)
      abb63(101)=abb63(101)*spak3k4
      abb63(105)=abb63(101)*spbl6k3
      abb63(79)=abb63(79)*spak3k4
      abb63(106)=abb63(79)*spbl5k3
      abb63(105)=abb63(105)+abb63(106)
      abb63(106)=abb63(103)-abb63(105)
      abb63(107)=abb63(106)*abb63(11)
      abb63(108)=-c4*abb63(107)
      abb63(64)=abb63(64)+abb63(108)
      abb63(64)=es567*abb63(64)
      abb63(108)=2.0_ki*c4
      abb63(107)=abb63(108)*abb63(107)*abb63(81)
      abb63(40)=-abb63(40)*abb63(13)
      abb63(109)=abb63(40)*abb63(50)
      abb63(13)=-abb63(44)*abb63(13)
      abb63(44)=abb63(13)*spak3k4
      abb63(44)=abb63(109)-abb63(44)
      abb63(109)=abb63(81)*abb63(44)
      abb63(45)=-abb63(45)*abb63(47)
      abb63(110)=abb63(45)*abb63(50)
      abb63(110)=abb63(110)-abb63(58)
      abb63(109)=abb63(109)-abb63(110)
      abb63(111)=spbk7l6*abb63(6)
      abb63(112)=spbk7l5*abb63(7)
      abb63(111)=abb63(111)+abb63(112)
      abb63(112)=2.0_ki*spbe7k3
      abb63(109)=abb63(112)*abb63(109)*abb63(111)
      abb63(113)=abb63(68)+abb63(95)
      abb63(114)=abb63(44)*abb63(113)
      abb63(115)=-abb63(114)*abb63(81)
      abb63(110)=abb63(110)*abb63(113)
      abb63(110)=abb63(115)+abb63(110)
      abb63(110)=spbk7k3*abb63(110)
      abb63(40)=abb63(40)*abb63(42)
      abb63(13)=abb63(13)*spak1k4
      abb63(13)=abb63(40)-abb63(13)
      abb63(40)=abb63(81)*abb63(13)
      abb63(45)=abb63(45)*abb63(42)
      abb63(45)=abb63(45)-abb63(59)
      abb63(40)=abb63(40)-abb63(45)
      abb63(115)=2.0_ki*spbe7k1
      abb63(40)=-abb63(115)*abb63(40)*abb63(111)
      abb63(116)=abb63(13)*abb63(113)
      abb63(81)=abb63(116)*abb63(81)
      abb63(45)=-abb63(45)*abb63(113)
      abb63(45)=abb63(81)+abb63(45)
      abb63(45)=spbk7k1*abb63(45)
      abb63(15)=2.0_ki*abb63(64)+abb63(45)+abb63(40)+abb63(110)+abb63(109)+abb6&
      &3(107)+abb63(57)+abb63(94)+abb63(15)+abb63(18)+abb63(46)+abb63(83)+abb63&
      &(84)+abb63(82)+abb63(67)
      abb63(15)=2.0_ki*abb63(15)
      abb63(18)=abb63(44)*abb63(111)
      abb63(40)=abb63(18)*abb63(112)
      abb63(44)=abb63(114)*spbk7k3
      abb63(40)=abb63(40)-abb63(44)
      abb63(13)=abb63(13)*abb63(111)
      abb63(45)=abb63(13)*abb63(115)
      abb63(46)=abb63(116)*spbk7k1
      abb63(45)=abb63(45)-abb63(46)
      abb63(57)=spak2l6*abb63(93)
      abb63(64)=spak2l5*abb63(100)
      abb63(67)=abb63(65)*c4
      abb63(81)=-abb63(106)*abb63(67)
      abb63(57)=abb63(81)+abb63(64)+abb63(57)-abb63(66)+abb63(45)-abb63(40)
      abb63(57)=8.0_ki*abb63(57)
      abb63(46)=abb63(38)+abb63(46)
      abb63(64)=abb63(75)-2.0_ki*abb63(77)
      abb63(64)=abb63(64)*abb63(80)
      abb63(66)=abb63(63)-2.0_ki*abb63(61)
      abb63(66)=abb63(66)*abb63(65)
      abb63(81)=abb63(89)-2.0_ki*abb63(92)
      abb63(81)=spak2l6*abb63(81)
      abb63(82)=abb63(97)-2.0_ki*abb63(99)
      abb63(82)=spak2l5*abb63(82)
      abb63(83)=abb63(105)-2.0_ki*abb63(103)
      abb63(83)=abb63(83)*abb63(67)
      abb63(84)=spbe7k1*abb63(13)
      abb63(40)=4.0_ki*abb63(84)+abb63(83)+abb63(82)+abb63(81)+abb63(66)+abb63(&
      &64)-abb63(36)-abb63(40)-2.0_ki*abb63(46)
      abb63(40)=4.0_ki*abb63(40)
      abb63(36)=abb63(44)-abb63(36)
      abb63(44)=-2.0_ki*abb63(75)+abb63(77)
      abb63(44)=abb63(44)*abb63(80)
      abb63(46)=-2.0_ki*abb63(63)+abb63(61)
      abb63(46)=abb63(46)*abb63(65)
      abb63(61)=-2.0_ki*abb63(89)+abb63(92)
      abb63(61)=spak2l6*abb63(61)
      abb63(63)=-2.0_ki*abb63(97)+abb63(99)
      abb63(63)=spak2l5*abb63(63)
      abb63(64)=-2.0_ki*abb63(105)+abb63(103)
      abb63(64)=abb63(64)*abb63(67)
      abb63(66)=spbe7k3*abb63(18)
      abb63(36)=4.0_ki*abb63(66)+abb63(64)+abb63(63)+abb63(61)+abb63(46)+abb63(&
      &44)+abb63(38)-abb63(45)-2.0_ki*abb63(36)
      abb63(36)=4.0_ki*abb63(36)
      abb63(38)=abb63(39)*c3
      abb63(44)=abb63(38)*abb63(3)
      abb63(45)=abb63(39)*NC
      abb63(46)=abb63(45)*c3
      abb63(44)=abb63(44)-abb63(46)
      abb63(61)=abb63(44)*spak3k4
      abb63(39)=abb63(39)*abb63(3)
      abb63(39)=abb63(39)-abb63(45)
      abb63(45)=abb63(39)*abb63(50)
      abb63(45)=abb63(61)-abb63(45)
      abb63(61)=spbe7l5*abb63(45)
      abb63(63)=-abb63(4)*abb63(17)
      abb63(64)=-abb63(63)*abb63(87)
      abb63(66)=-abb63(4)*abb63(49)
      abb63(75)=abb63(50)*abb63(66)
      abb63(64)=abb63(64)+abb63(75)
      abb63(64)=abb63(64)*abb63(51)
      abb63(75)=-abb63(4)*abb63(35)
      abb63(53)=-abb63(55)*abb63(75)*abb63(53)
      abb63(55)=spak3k4*abb63(53)
      abb63(55)=abb63(55)+abb63(61)+abb63(64)
      abb63(55)=spbl6k3*abb63(55)
      abb63(61)=spbe7l6*abb63(45)
      abb63(64)=-abb63(4)*abb63(19)
      abb63(77)=abb63(64)*abb63(91)
      abb63(24)=-abb63(4)*abb63(24)
      abb63(81)=-spak3k4*abb63(24)
      abb63(77)=abb63(81)+abb63(77)
      abb63(77)=abb63(77)*abb63(25)
      abb63(30)=-abb63(32)*abb63(75)*abb63(30)
      abb63(32)=-spak3k4*abb63(30)
      abb63(32)=abb63(32)+abb63(61)+abb63(77)
      abb63(32)=spbl5k3*abb63(32)
      abb63(19)=-abb63(5)*abb63(19)
      abb63(61)=abb63(65)*abb63(19)*abb63(62)
      abb63(75)=-abb63(5)*abb63(35)
      abb63(29)=abb63(75)*abb63(29)
      abb63(77)=abb63(29)*spbl5k3
      abb63(52)=abb63(75)*abb63(52)
      abb63(75)=abb63(52)*spbl6k3
      abb63(75)=abb63(77)+abb63(75)
      abb63(77)=abb63(75)*abb63(67)
      abb63(81)=abb63(77)+abb63(61)
      abb63(81)=spak3k4*abb63(81)
      abb63(82)=spak2k7*abb63(39)
      abb63(83)=abb63(82)*abb63(50)
      abb63(12)=abb63(12)*abb63(38)
      abb63(38)=abb63(46)*spak2k7
      abb63(12)=abb63(12)-abb63(38)
      abb63(38)=abb63(12)*spak3k4
      abb63(38)=abb63(83)-abb63(38)
      abb63(46)=abb63(111)*abb63(112)
      abb63(83)=spbk7k3*abb63(113)
      abb63(83)=abb63(83)-abb63(46)
      abb63(38)=abb63(38)*abb63(83)
      abb63(83)=abb63(86)*spak2l6
      abb63(84)=abb63(96)*spak2l5
      abb63(83)=abb63(83)+abb63(84)
      abb63(45)=abb63(45)*abb63(83)
      abb63(14)=abb63(69)*abb63(14)
      abb63(69)=abb63(14)*abb63(3)
      abb63(84)=abb63(14)*NC
      abb63(69)=abb63(69)-abb63(84)
      abb63(69)=abb63(69)*abb63(71)
      abb63(50)=-abb63(50)*abb63(69)
      abb63(87)=abb63(14)*abb63(34)
      abb63(89)=abb63(87)*abb63(54)
      abb63(91)=spak3k4*abb63(89)
      abb63(50)=abb63(50)+abb63(91)
      abb63(50)=spbl6k3*abb63(50)
      abb63(84)=abb63(84)*c3
      abb63(14)=abb63(14)*abb63(73)
      abb63(14)=abb63(84)-abb63(14)
      abb63(14)=abb63(14)*abb63(74)
      abb63(73)=abb63(87)*abb63(31)
      abb63(14)=abb63(14)+abb63(73)
      abb63(73)=abb63(14)*spbl5k3
      abb63(84)=-spak3k4*abb63(73)
      abb63(50)=abb63(50)+abb63(84)
      abb63(50)=abb63(50)*abb63(80)
      abb63(32)=abb63(50)+abb63(55)+abb63(32)+abb63(45)+abb63(38)+abb63(81)
      abb63(32)=spbk4k1*abb63(32)
      abb63(38)=abb63(39)*c1
      abb63(38)=abb63(38)-abb63(44)
      abb63(45)=abb63(38)*spbe7l5
      abb63(50)=abb63(66)*c1
      abb63(55)=spbe7l5*c1
      abb63(81)=abb63(55)*abb63(63)
      abb63(50)=abb63(50)-abb63(81)
      abb63(50)=abb63(50)*abb63(51)
      abb63(45)=abb63(53)+abb63(50)-abb63(45)
      abb63(50)=abb63(45)*spbl6k1
      abb63(81)=abb63(38)*spbe7l6
      abb63(84)=abb63(64)*abb63(20)
      abb63(84)=abb63(84)-abb63(24)
      abb63(84)=abb63(84)*abb63(25)
      abb63(81)=-abb63(30)+abb63(84)-abb63(81)
      abb63(84)=abb63(81)*spbl5k1
      abb63(87)=abb63(19)*abb63(60)
      abb63(91)=abb63(87)*abb63(65)
      abb63(50)=abb63(91)+abb63(50)+abb63(84)
      abb63(84)=-es12*abb63(50)
      abb63(14)=abb63(14)*spbl5k1
      abb63(92)=abb63(69)*c1
      abb63(92)=abb63(92)-abb63(89)
      abb63(93)=abb63(92)*spbl6k1
      abb63(93)=abb63(93)+abb63(14)
      abb63(94)=abb63(93)*abb63(80)
      abb63(50)=abb63(94)-abb63(50)
      abb63(50)=es234*abb63(50)
      abb63(94)=abb63(82)*c1
      abb63(94)=abb63(94)-abb63(12)
      abb63(97)=abb63(94)*es12
      abb63(47)=-c1*abb63(5)*abb63(47)
      abb63(19)=abb63(47)+abb63(19)
      abb63(47)=abb63(19)+abb63(97)
      abb63(99)=abb63(6)*abb63(47)
      abb63(100)=abb63(94)*abb63(6)
      abb63(103)=es234*abb63(100)
      abb63(99)=abb63(103)+abb63(99)
      abb63(99)=spbk7l6*abb63(99)
      abb63(47)=abb63(7)*abb63(47)
      abb63(103)=abb63(94)*abb63(7)
      abb63(105)=es234*abb63(103)
      abb63(47)=abb63(105)+abb63(47)
      abb63(47)=spbk7l5*abb63(47)
      abb63(47)=abb63(99)+abb63(47)
      abb63(47)=abb63(47)*abb63(115)
      abb63(99)=-c1*abb63(17)
      abb63(23)=abb63(99)-abb63(23)
      abb63(23)=abb63(5)*abb63(23)
      abb63(99)=spbe7l5*abb63(23)
      abb63(17)=abb63(17)*abb63(55)
      abb63(49)=-c1*abb63(49)
      abb63(17)=abb63(17)+abb63(49)
      abb63(17)=abb63(17)*abb63(51)
      abb63(49)=abb63(35)*abb63(56)
      abb63(17)=abb63(49)+abb63(99)+abb63(17)
      abb63(17)=spbl6k1*abb63(17)
      abb63(49)=spbe7l6*abb63(23)
      abb63(21)=-abb63(21)*abb63(25)
      abb63(33)=-abb63(35)*abb63(33)
      abb63(21)=abb63(33)+abb63(49)+abb63(21)
      abb63(21)=spbl5k1*abb63(21)
      abb63(33)=es12*abb63(93)
      abb63(22)=abb63(22)*abb63(16)
      abb63(35)=c1*abb63(71)*abb63(22)
      abb63(16)=abb63(34)*abb63(16)
      abb63(34)=abb63(16)*abb63(54)
      abb63(34)=abb63(35)+abb63(34)
      abb63(34)=spbl6k1*abb63(34)
      abb63(22)=-abb63(74)*c3*abb63(22)
      abb63(16)=-abb63(16)*abb63(31)
      abb63(16)=abb63(22)+abb63(16)
      abb63(16)=spbl5k1*abb63(16)
      abb63(16)=abb63(33)+abb63(34)+abb63(16)
      abb63(16)=abb63(16)*abb63(80)
      abb63(22)=es234+es12
      abb63(31)=abb63(22)*abb63(38)
      abb63(23)=abb63(31)+abb63(23)
      abb63(31)=abb63(90)*spak2l6
      abb63(33)=abb63(98)*spak2l5
      abb63(31)=abb63(31)+abb63(33)
      abb63(23)=abb63(23)*abb63(31)
      abb63(33)=abb63(94)*abb63(113)
      abb63(34)=-abb63(33)*abb63(22)
      abb63(19)=-abb63(19)*abb63(113)
      abb63(19)=abb63(19)+abb63(34)
      abb63(19)=spbk7k1*abb63(19)
      abb63(29)=abb63(29)*spbl5k1
      abb63(34)=abb63(52)*spbl6k1
      abb63(29)=abb63(29)+abb63(34)
      abb63(34)=abb63(108)*abb63(11)
      abb63(22)=-abb63(29)*abb63(22)*abb63(34)
      abb63(16)=abb63(32)+abb63(19)+abb63(47)+abb63(22)+abb63(50)+abb63(16)+abb&
      &63(17)+abb63(21)+abb63(84)+abb63(23)
      abb63(17)=-abb63(70)*abb63(80)
      abb63(19)=abb63(58)*abb63(65)
      abb63(21)=abb63(48)*abb63(19)
      abb63(22)=abb63(68)*spak2l6
      abb63(23)=abb63(41)*abb63(22)
      abb63(32)=abb63(67)*abb63(101)
      abb63(17)=abb63(32)+abb63(23)+abb63(21)+abb63(17)-abb63(26)
      abb63(17)=spbl6k4*abb63(17)
      abb63(21)=abb63(72)*abb63(80)
      abb63(23)=abb63(20)*abb63(19)
      abb63(32)=abb63(95)*spak2l5
      abb63(35)=abb63(41)*abb63(32)
      abb63(47)=abb63(67)*abb63(79)
      abb63(21)=abb63(47)+abb63(35)+abb63(23)+abb63(21)+abb63(27)
      abb63(21)=spbl5k4*abb63(21)
      abb63(23)=c4*abb63(29)
      abb63(23)=abb63(87)+abb63(23)
      abb63(23)=es567*abb63(11)*abb63(23)
      abb63(35)=2.0_ki*spbe7k4
      abb63(47)=-abb63(18)*abb63(35)
      abb63(49)=spbk7k4*abb63(114)
      abb63(16)=abb63(49)+abb63(47)+4.0_ki*abb63(23)+abb63(21)+2.0_ki*abb63(16)&
      &+abb63(17)
      abb63(16)=2.0_ki*abb63(16)
      abb63(17)=abb63(45)*spbl6k3
      abb63(21)=abb63(81)*spbl5k3
      abb63(23)=abb63(33)*spbk7k3
      abb63(33)=spak2l5*abb63(96)*abb63(38)
      abb63(38)=spak2l6*abb63(86)*abb63(38)
      abb63(45)=abb63(92)*spbl6k3
      abb63(45)=abb63(45)+abb63(73)
      abb63(45)=abb63(45)*abb63(80)
      abb63(17)=abb63(33)-abb63(23)+abb63(38)-abb63(17)-abb63(21)+abb63(45)-abb&
      &63(61)
      abb63(21)=-abb63(75)*abb63(34)
      abb63(21)=abb63(21)+abb63(17)
      abb63(23)=es34-es12
      abb63(21)=abb63(23)*abb63(21)
      abb63(23)=abb63(94)*abb63(46)
      abb63(17)=abb63(23)-abb63(77)+abb63(17)
      abb63(23)=-es23+es123
      abb63(17)=abb63(17)*abb63(23)
      abb63(23)=abb63(44)*spak1k4
      abb63(33)=abb63(39)*abb63(42)
      abb63(23)=abb63(23)-abb63(33)
      abb63(33)=spbe7l5*abb63(23)
      abb63(34)=-abb63(63)*abb63(85)
      abb63(38)=abb63(42)*abb63(66)
      abb63(34)=abb63(34)+abb63(38)
      abb63(34)=abb63(34)*abb63(51)
      abb63(38)=spak1k4*abb63(53)
      abb63(33)=abb63(38)+abb63(33)+abb63(34)
      abb63(33)=spbl6k1*abb63(33)
      abb63(34)=spbe7l6*abb63(23)
      abb63(38)=abb63(64)*abb63(88)
      abb63(24)=-spak1k4*abb63(24)
      abb63(24)=abb63(24)+abb63(38)
      abb63(24)=abb63(24)*abb63(25)
      abb63(25)=-spak1k4*abb63(30)
      abb63(24)=abb63(25)+abb63(34)+abb63(24)
      abb63(24)=spbl5k1*abb63(24)
      abb63(25)=abb63(67)*abb63(29)
      abb63(25)=abb63(25)+abb63(91)
      abb63(25)=spak1k4*abb63(25)
      abb63(29)=abb63(82)*abb63(42)
      abb63(12)=abb63(12)*spak1k4
      abb63(12)=abb63(29)-abb63(12)
      abb63(29)=-abb63(115)*abb63(111)
      abb63(30)=spbk7k1*abb63(113)
      abb63(29)=abb63(30)+abb63(29)
      abb63(12)=abb63(12)*abb63(29)
      abb63(23)=abb63(23)*abb63(31)
      abb63(29)=-abb63(42)*abb63(69)
      abb63(30)=spak1k4*abb63(89)
      abb63(29)=abb63(29)+abb63(30)
      abb63(29)=spbl6k1*abb63(29)
      abb63(14)=-spak1k4*abb63(14)
      abb63(14)=abb63(29)+abb63(14)
      abb63(14)=abb63(14)*abb63(80)
      abb63(12)=abb63(14)+abb63(33)+abb63(24)+abb63(23)+abb63(12)+abb63(25)
      abb63(12)=spbk4k3*abb63(12)
      abb63(14)=-abb63(6)*abb63(97)
      abb63(23)=es34*abb63(100)
      abb63(14)=abb63(14)+abb63(23)
      abb63(14)=spbk7l6*abb63(14)
      abb63(23)=-abb63(7)*abb63(97)
      abb63(24)=es34*abb63(103)
      abb63(23)=abb63(23)+abb63(24)
      abb63(23)=spbk7l5*abb63(23)
      abb63(14)=abb63(14)+abb63(23)
      abb63(14)=abb63(14)*abb63(112)
      abb63(12)=abb63(12)+abb63(14)+abb63(17)+abb63(21)
      abb63(14)=abb63(78)*abb63(80)
      abb63(17)=abb63(59)*abb63(65)
      abb63(21)=-abb63(48)*abb63(17)
      abb63(22)=-abb63(43)*abb63(22)
      abb63(23)=-abb63(67)*abb63(102)
      abb63(14)=abb63(23)+abb63(22)+abb63(21)+abb63(14)+abb63(37)
      abb63(14)=spbl6k4*abb63(14)
      abb63(21)=-abb63(76)*abb63(80)
      abb63(20)=-abb63(20)*abb63(17)
      abb63(22)=-abb63(43)*abb63(32)
      abb63(23)=-abb63(67)*abb63(104)
      abb63(20)=abb63(23)+abb63(22)+abb63(20)+abb63(21)-abb63(28)
      abb63(20)=spbl5k4*abb63(20)
      abb63(21)=abb63(13)*abb63(35)
      abb63(22)=-spbk7k4*abb63(116)
      abb63(12)=abb63(22)+abb63(21)+abb63(20)+2.0_ki*abb63(12)+abb63(14)
      abb63(12)=2.0_ki*abb63(12)
      abb63(14)=-spbl6k3*abb63(37)
      abb63(20)=spbl5k3*abb63(28)
      abb63(21)=-spbl6k3*abb63(78)
      abb63(22)=spbl5k3*abb63(76)
      abb63(21)=abb63(21)+abb63(22)
      abb63(21)=abb63(21)*abb63(80)
      abb63(13)=-abb63(13)*abb63(112)
      abb63(22)=spbk7k3*abb63(116)
      abb63(23)=abb63(43)*abb63(83)
      abb63(17)=abb63(62)*abb63(17)
      abb63(24)=spbl6k3*abb63(102)
      abb63(25)=spbl5k3*abb63(104)
      abb63(24)=abb63(24)+abb63(25)
      abb63(24)=abb63(24)*abb63(67)
      abb63(13)=abb63(22)+abb63(13)+abb63(24)+abb63(17)+abb63(21)+abb63(14)+abb&
      &63(20)+abb63(23)
      abb63(13)=2.0_ki*abb63(13)
      abb63(14)=-spbl6k1*abb63(26)
      abb63(17)=spbl5k1*abb63(27)
      abb63(20)=-spbl6k1*abb63(70)
      abb63(21)=spbl5k1*abb63(72)
      abb63(20)=abb63(20)+abb63(21)
      abb63(20)=abb63(20)*abb63(80)
      abb63(18)=-abb63(18)*abb63(115)
      abb63(21)=spbk7k1*abb63(114)
      abb63(22)=abb63(41)*abb63(31)
      abb63(19)=abb63(60)*abb63(19)
      abb63(23)=spbl6k1*abb63(101)
      abb63(24)=spbl5k1*abb63(79)
      abb63(23)=abb63(23)+abb63(24)
      abb63(23)=abb63(23)*abb63(67)
      abb63(14)=abb63(21)+abb63(18)+abb63(23)+abb63(19)+abb63(20)+abb63(14)+abb&
      &63(17)+abb63(22)
      abb63(14)=2.0_ki*abb63(14)
      R2d63=0.0_ki
      rat2 = rat2 + R2d63
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='63' value='", &
          & R2d63, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd63h3
