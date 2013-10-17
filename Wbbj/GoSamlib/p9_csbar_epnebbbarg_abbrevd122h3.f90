module     p9_csbar_epnebbbarg_abbrevd122h3
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(123), public :: abb122
   complex(ki), public :: R2d122
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
      abb122(1)=1.0_ki/(-mB**2+es67)
      abb122(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb122(3)=NC**(-1)
      abb122(4)=es234**(-1)
      abb122(5)=spak2l6**(-1)
      abb122(6)=spak2l5**(-1)
      abb122(7)=spbl5k2**(-1)
      abb122(8)=spbl6k2**(-1)
      abb122(9)=sqrt(mB**2)
      abb122(10)=abb122(3)**2
      abb122(11)=abb122(10)*c2
      abb122(12)=2.0_ki*abb122(3)
      abb122(13)=abb122(12)-NC
      abb122(14)=abb122(13)*c3
      abb122(14)=abb122(11)-abb122(14)
      abb122(15)=spbk2k1*abb122(7)
      abb122(16)=abb122(6)*spak2k4
      abb122(16)=abb122(16)**2
      abb122(17)=spak2e7*abb122(5)
      abb122(18)=TR*gW
      abb122(18)=abb122(18)**2*i_*CVSC*abb122(4)*abb122(2)
      abb122(19)=abb122(18)*spbk4k3
      abb122(20)=abb122(15)*abb122(14)*abb122(1)*abb122(17)*abb122(19)*abb122(1&
      &6)*spbe7l6*mB**5
      abb122(21)=abb122(17)*abb122(9)
      abb122(22)=mB**2
      abb122(23)=abb122(21)*abb122(22)
      abb122(24)=mB**3
      abb122(25)=abb122(24)*abb122(17)
      abb122(26)=abb122(25)-abb122(23)
      abb122(27)=spak2k4*abb122(1)
      abb122(28)=abb122(18)*abb122(27)*c3
      abb122(29)=abb122(28)*spbe7l6
      abb122(30)=abb122(29)*spbk3k2
      abb122(31)=abb122(30)*NC
      abb122(26)=abb122(26)*abb122(31)
      abb122(10)=abb122(10)*abb122(27)
      abb122(27)=abb122(18)*spbk3k2
      abb122(32)=spak2e7*abb122(27)
      abb122(33)=abb122(32)*abb122(5)
      abb122(34)=abb122(33)*abb122(10)
      abb122(35)=abb122(24)*spbe7l6
      abb122(36)=abb122(34)*abb122(35)
      abb122(37)=abb122(34)*abb122(22)
      abb122(38)=abb122(9)*spbe7l6
      abb122(39)=abb122(37)*abb122(38)
      abb122(36)=abb122(36)-abb122(39)
      abb122(36)=abb122(36)*c2
      abb122(39)=spbe7l6*abb122(25)
      abb122(40)=abb122(23)*spbe7l6
      abb122(39)=abb122(39)-abb122(40)
      abb122(41)=abb122(28)*spbk3k2
      abb122(42)=abb122(3)*abb122(41)
      abb122(39)=abb122(42)*abb122(39)
      abb122(26)=-2.0_ki*abb122(39)+abb122(26)+abb122(36)
      abb122(36)=spbl5k1*abb122(26)
      abb122(36)=-abb122(20)+abb122(36)
      abb122(36)=abb122(8)*abb122(36)
      abb122(39)=abb122(32)*abb122(10)
      abb122(43)=abb122(6)*spbe7l6
      abb122(44)=abb122(22)*abb122(43)
      abb122(45)=abb122(44)*abb122(9)
      abb122(46)=abb122(39)*abb122(45)
      abb122(47)=abb122(43)*abb122(24)
      abb122(48)=abb122(47)*abb122(39)
      abb122(46)=abb122(46)-abb122(48)
      abb122(46)=abb122(46)*c2
      abb122(49)=abb122(45)*spak2e7
      abb122(50)=abb122(49)*abb122(42)
      abb122(51)=abb122(24)*spak2e7
      abb122(52)=abb122(43)*abb122(51)*abb122(42)
      abb122(50)=abb122(50)-abb122(52)
      abb122(53)=abb122(9)*spbk3k2
      abb122(29)=abb122(53)*abb122(29)
      abb122(54)=abb122(29)*spak2e7
      abb122(55)=abb122(22)*abb122(6)
      abb122(56)=abb122(54)*abb122(55)
      abb122(57)=abb122(6)*abb122(30)*abb122(51)
      abb122(56)=abb122(56)-abb122(57)
      abb122(56)=abb122(56)*NC
      abb122(46)=-abb122(56)-abb122(46)+2.0_ki*abb122(50)
      abb122(50)=spbl5k1*abb122(46)
      abb122(56)=abb122(19)*abb122(1)
      abb122(16)=abb122(16)*abb122(56)
      abb122(14)=spbe7k1*abb122(14)*abb122(16)*abb122(21)*mB**4
      abb122(16)=abb122(35)*abb122(16)
      abb122(35)=-abb122(13)*abb122(16)*c3
      abb122(16)=abb122(16)*abb122(11)
      abb122(16)=abb122(16)+abb122(35)
      abb122(35)=spbl6k1*spal6e7
      abb122(58)=abb122(16)*abb122(35)
      abb122(14)=abb122(14)+abb122(58)
      abb122(50)=abb122(50)-abb122(14)
      abb122(50)=abb122(7)*abb122(50)
      abb122(16)=abb122(16)*abb122(7)
      abb122(58)=spbk7k1*spae7k7
      abb122(59)=abb122(16)*abb122(58)
      abb122(36)=abb122(59)+abb122(50)+abb122(36)
      abb122(36)=es12*abb122(36)
      abb122(50)=abb122(10)*c2
      abb122(60)=abb122(50)*mB
      abb122(61)=abb122(33)*abb122(60)
      abb122(62)=2.0_ki*abb122(42)
      abb122(63)=abb122(17)*mB
      abb122(64)=abb122(63)*abb122(62)
      abb122(65)=mB*abb122(41)
      abb122(66)=abb122(17)*NC
      abb122(67)=abb122(65)*abb122(66)
      abb122(61)=abb122(67)+abb122(61)-abb122(64)
      abb122(64)=spak2k7*spbk7e7
      abb122(68)=abb122(64)*abb122(61)
      abb122(69)=spbe7l6*mB
      abb122(70)=abb122(69)*abb122(17)
      abb122(71)=abb122(50)*abb122(19)
      abb122(72)=abb122(70)*abb122(71)
      abb122(28)=abb122(28)*spbk4k3
      abb122(73)=abb122(28)*spbe7l6
      abb122(74)=mB*abb122(66)*abb122(73)
      abb122(75)=abb122(73)*abb122(12)
      abb122(63)=abb122(75)*abb122(63)
      abb122(63)=-abb122(74)+abb122(63)-abb122(72)
      abb122(72)=abb122(63)*spak4l6
      abb122(74)=abb122(28)*mB
      abb122(76)=abb122(74)*abb122(12)
      abb122(77)=abb122(71)*mB
      abb122(76)=abb122(76)-abb122(77)
      abb122(77)=-abb122(17)*abb122(76)
      abb122(66)=abb122(66)*abb122(74)
      abb122(66)=abb122(66)+abb122(77)
      abb122(77)=spak4k7*spbk7e7
      abb122(78)=abb122(66)*abb122(77)
      abb122(68)=abb122(78)+abb122(68)+abb122(72)
      abb122(72)=abb122(62)*spak2e7
      abb122(78)=abb122(50)*abb122(32)
      abb122(78)=-abb122(72)+abb122(78)
      abb122(78)=abb122(69)*abb122(78)
      abb122(79)=abb122(65)*NC
      abb122(80)=spbe7l6*spak2e7*abb122(79)
      abb122(78)=-abb122(68)+abb122(80)+abb122(78)
      abb122(78)=spak1l5*abb122(78)
      abb122(80)=abb122(50)*spbk3k2
      abb122(81)=abb122(18)*spbe7l6
      abb122(82)=abb122(9)*abb122(80)*abb122(81)
      abb122(83)=abb122(38)*abb122(62)
      abb122(84)=abb122(29)*NC
      abb122(82)=-abb122(82)+abb122(83)-abb122(84)
      abb122(83)=spak1k2*abb122(82)
      abb122(84)=-abb122(13)*abb122(73)*abb122(9)
      abb122(85)=abb122(38)*abb122(71)
      abb122(84)=abb122(84)+abb122(85)
      abb122(85)=-spak1k4*abb122(84)
      abb122(83)=abb122(83)+abb122(85)
      abb122(83)=spal5e7*abb122(83)
      abb122(78)=abb122(83)+abb122(78)
      abb122(83)=spbl5k1**2
      abb122(78)=abb122(83)*abb122(78)
      abb122(85)=spak2l5*abb122(82)
      abb122(86)=-spak4l5*abb122(84)
      abb122(85)=abb122(85)+abb122(86)
      abb122(83)=abb122(83)*abb122(85)
      abb122(85)=abb122(56)*c3
      abb122(86)=-abb122(12)*abb122(85)
      abb122(87)=abb122(11)*abb122(56)
      abb122(86)=abb122(86)+abb122(87)
      abb122(86)=abb122(45)*abb122(86)
      abb122(87)=NC*abb122(9)
      abb122(88)=abb122(85)*abb122(87)*abb122(44)
      abb122(86)=abb122(88)+abb122(86)
      abb122(88)=spak2k4**2
      abb122(86)=spbl5k1*abb122(15)*abb122(88)*abb122(86)
      abb122(83)=abb122(86)+abb122(83)
      abb122(83)=spak1e7*abb122(83)
      abb122(86)=abb122(69)-abb122(38)
      abb122(86)=abb122(42)*abb122(86)
      abb122(89)=abb122(10)*mB
      abb122(90)=spbk3k2*abb122(89)
      abb122(53)=abb122(53)*abb122(10)
      abb122(53)=abb122(90)-abb122(53)
      abb122(53)=c2*abb122(81)*abb122(53)
      abb122(90)=abb122(65)*spbe7l6
      abb122(29)=abb122(90)-abb122(29)
      abb122(29)=abb122(29)*NC
      abb122(29)=-abb122(29)-abb122(53)+2.0_ki*abb122(86)
      abb122(35)=abb122(35)-abb122(58)
      abb122(53)=abb122(35)*abb122(29)
      abb122(58)=spak1k2*spbl5k1
      abb122(91)=-abb122(58)*abb122(53)
      abb122(92)=abb122(41)*NC
      abb122(92)=abb122(92)-abb122(62)
      abb122(93)=abb122(25)*abb122(6)
      abb122(94)=abb122(92)*abb122(93)
      abb122(95)=abb122(24)*abb122(50)
      abb122(96)=abb122(95)*abb122(33)
      abb122(97)=abb122(96)*abb122(6)
      abb122(94)=abb122(97)+abb122(94)
      abb122(94)=abb122(94)*abb122(64)
      abb122(97)=abb122(28)*NC
      abb122(12)=abb122(12)*abb122(28)
      abb122(12)=abb122(97)-abb122(12)
      abb122(98)=abb122(12)+abb122(71)
      abb122(99)=abb122(77)*abb122(98)*abb122(93)
      abb122(25)=abb122(25)*abb122(43)
      abb122(100)=-abb122(25)*abb122(98)
      abb122(101)=abb122(100)*spak4l6
      abb122(94)=abb122(94)+abb122(99)+abb122(101)
      abb122(99)=es12*spbl5k1
      abb122(101)=-abb122(94)*abb122(99)*abb122(7)
      abb122(17)=abb122(22)*abb122(17)
      abb122(102)=abb122(17)*abb122(42)
      abb122(103)=abb122(42)*mB
      abb122(104)=abb122(103)*abb122(21)
      abb122(102)=abb122(104)-abb122(102)
      abb122(104)=2.0_ki*abb122(9)
      abb122(102)=abb122(102)*abb122(104)
      abb122(105)=abb122(89)*abb122(9)
      abb122(106)=abb122(105)*abb122(33)
      abb122(37)=abb122(106)-abb122(37)
      abb122(106)=c2*abb122(9)
      abb122(37)=abb122(37)*abb122(106)
      abb122(17)=abb122(17)*abb122(41)
      abb122(21)=abb122(65)*abb122(21)
      abb122(17)=abb122(21)-abb122(17)
      abb122(17)=abb122(17)*abb122(87)
      abb122(17)=-abb122(17)+abb122(102)-abb122(37)
      abb122(21)=abb122(58)*spbe7k1
      abb122(37)=abb122(17)*abb122(21)
      abb122(102)=abb122(66)*abb122(9)**2
      abb122(107)=abb122(102)*spbe7k1
      abb122(108)=abb122(35)*abb122(84)
      abb122(107)=abb122(107)+abb122(108)
      abb122(73)=NC*abb122(73)
      abb122(73)=abb122(73)-abb122(75)
      abb122(73)=abb122(23)*abb122(73)
      abb122(40)=abb122(40)*abb122(71)
      abb122(40)=abb122(40)+abb122(73)
      abb122(73)=abb122(40)*abb122(8)
      abb122(49)=-abb122(49)*abb122(12)
      abb122(71)=abb122(71)*abb122(43)
      abb122(22)=abb122(9)*abb122(71)*abb122(22)
      abb122(75)=-spak2e7*abb122(22)
      abb122(49)=abb122(75)+abb122(49)
      abb122(49)=abb122(7)*abb122(49)
      abb122(49)=-abb122(73)+abb122(49)
      abb122(49)=spbk2k1*abb122(49)
      abb122(49)=abb122(49)-abb122(107)
      abb122(49)=spak1k4*spbl5k1*abb122(49)
      abb122(75)=-abb122(43)*abb122(76)
      abb122(108)=abb122(74)*abb122(43)
      abb122(109)=abb122(108)*NC
      abb122(75)=abb122(75)+abb122(109)
      abb122(109)=-abb122(75)*abb122(35)
      abb122(110)=-abb122(58)*abb122(109)
      abb122(111)=abb122(23)*abb122(6)
      abb122(112)=-abb122(111)*abb122(98)
      abb122(113)=-abb122(112)*abb122(21)
      abb122(114)=abb122(100)*abb122(8)
      abb122(115)=-abb122(114)*abb122(99)
      abb122(110)=abb122(115)+abb122(113)+abb122(110)
      abb122(110)=spak4l5*abb122(110)
      abb122(36)=abb122(110)+abb122(36)+abb122(49)+abb122(37)+abb122(101)+abb12&
      &2(91)+abb122(83)+abb122(78)
      abb122(36)=4.0_ki*abb122(36)
      abb122(37)=abb122(18)*mB
      abb122(49)=spbk3k2*abb122(37)
      abb122(27)=abb122(9)*abb122(27)
      abb122(49)=abb122(49)-abb122(27)
      abb122(49)=c2*abb122(10)*abb122(49)
      abb122(78)=abb122(41)*abb122(9)
      abb122(78)=abb122(78)-abb122(65)
      abb122(78)=abb122(78)*NC
      abb122(83)=abb122(42)*abb122(9)
      abb122(83)=abb122(83)-abb122(103)
      abb122(49)=abb122(49)-abb122(78)+2.0_ki*abb122(83)
      abb122(78)=abb122(49)*abb122(58)
      abb122(10)=abb122(10)*abb122(19)
      abb122(19)=abb122(10)*mB
      abb122(83)=abb122(10)*abb122(9)
      abb122(19)=abb122(19)-abb122(83)
      abb122(19)=abb122(19)*c2
      abb122(91)=abb122(28)*abb122(9)
      abb122(91)=abb122(91)-abb122(74)
      abb122(91)=abb122(91)*NC
      abb122(101)=abb122(74)*abb122(3)
      abb122(110)=abb122(28)*abb122(3)
      abb122(113)=abb122(110)*abb122(9)
      abb122(101)=abb122(101)-abb122(113)
      abb122(19)=abb122(19)-abb122(91)-2.0_ki*abb122(101)
      abb122(91)=spak1k4*spbl5k1
      abb122(101)=abb122(19)*abb122(91)
      abb122(78)=abb122(78)+abb122(101)
      abb122(78)=spbl6k1*abb122(78)
      abb122(101)=abb122(62)*mB
      abb122(79)=abb122(79)-abb122(101)
      abb122(101)=abb122(60)*spbk3k2
      abb122(18)=abb122(101)*abb122(18)
      abb122(18)=-abb122(79)-abb122(18)
      abb122(18)=abb122(5)*abb122(18)
      abb122(58)=abb122(18)*abb122(58)
      abb122(74)=abb122(74)*NC
      abb122(74)=abb122(76)-abb122(74)
      abb122(76)=-abb122(5)*abb122(74)
      abb122(113)=abb122(76)*abb122(91)
      abb122(113)=-abb122(58)+abb122(113)
      abb122(113)=spak2k7*spbk7k1*abb122(113)
      abb122(78)=abb122(113)+abb122(78)
      abb122(78)=8.0_ki*abb122(78)
      abb122(113)=abb122(21)*abb122(61)
      abb122(115)=abb122(91)*spbe7k1
      abb122(116)=abb122(66)*abb122(115)
      abb122(113)=abb122(113)+abb122(116)
      abb122(113)=8.0_ki*abb122(113)
      abb122(86)=-spak2e7*abb122(86)
      abb122(89)=spbe7l6*abb122(89)*abb122(32)
      abb122(38)=-abb122(38)*abb122(39)
      abb122(38)=abb122(89)+abb122(38)
      abb122(38)=c2*abb122(38)
      abb122(89)=spak2e7*abb122(90)
      abb122(54)=abb122(89)-abb122(54)
      abb122(54)=NC*abb122(54)
      abb122(89)=-spak4e7*abb122(84)
      abb122(38)=abb122(89)-abb122(68)+abb122(54)+2.0_ki*abb122(86)+abb122(38)
      abb122(38)=8.0_ki*spbl5k1*abb122(38)
      abb122(20)=-abb122(8)*abb122(20)
      abb122(54)=abb122(5)**2
      abb122(51)=abb122(51)*abb122(54)
      abb122(68)=-abb122(51)*abb122(92)
      abb122(54)=abb122(32)*abb122(95)*abb122(54)
      abb122(54)=-abb122(54)+abb122(68)
      abb122(68)=abb122(54)*abb122(8)
      abb122(86)=abb122(21)*abb122(68)
      abb122(14)=-abb122(7)*abb122(14)
      abb122(51)=-abb122(51)*abb122(98)
      abb122(89)=abb122(51)*abb122(8)
      abb122(90)=abb122(89)*abb122(115)
      abb122(14)=abb122(90)+abb122(20)+abb122(59)+abb122(86)+abb122(14)
      abb122(14)=8.0_ki*abb122(14)
      abb122(20)=abb122(62)*abb122(9)
      abb122(59)=abb122(87)*abb122(41)
      abb122(27)=abb122(27)*abb122(50)
      abb122(20)=-abb122(27)+abb122(20)-abb122(59)
      abb122(21)=-abb122(20)*abb122(21)
      abb122(27)=abb122(98)*abb122(9)
      abb122(59)=abb122(27)*abb122(115)
      abb122(21)=abb122(21)+abb122(59)
      abb122(21)=4.0_ki*abb122(21)
      abb122(59)=spbk2k1*abb122(8)
      abb122(51)=abb122(51)*abb122(59)
      abb122(86)=abb122(35)*abb122(76)
      abb122(51)=abb122(51)-abb122(86)
      abb122(86)=-abb122(51)*abb122(91)
      abb122(90)=-abb122(68)*abb122(99)
      abb122(58)=-abb122(58)*abb122(35)
      abb122(58)=abb122(90)+abb122(86)+abb122(58)
      abb122(58)=4.0_ki*abb122(58)
      abb122(40)=-abb122(40)*abb122(59)
      abb122(40)=abb122(40)-abb122(107)
      abb122(40)=4.0_ki*abb122(40)
      abb122(86)=spbl6k1*abb122(19)
      abb122(90)=abb122(76)*spak2k7
      abb122(91)=spbk7k1*abb122(90)
      abb122(86)=abb122(86)+abb122(91)
      abb122(86)=8.0_ki*abb122(86)
      abb122(91)=8.0_ki*spbe7k1
      abb122(95)=abb122(66)*abb122(91)
      abb122(99)=abb122(91)*abb122(89)
      abb122(27)=4.0_ki*abb122(27)
      abb122(107)=spbe7k1*abb122(27)
      abb122(51)=-4.0_ki*abb122(51)
      abb122(115)=4.0_ki*abb122(84)
      abb122(116)=4.0_ki*spbk7e7
      abb122(117)=abb122(66)*abb122(116)
      abb122(118)=4.0_ki*abb122(63)
      abb122(119)=abb122(112)*spbe7k1
      abb122(109)=abb122(119)+abb122(109)
      abb122(119)=-spak1k2*abb122(109)
      abb122(73)=-spbl5k2*abb122(73)
      abb122(63)=-spak1l6*spbl5k1*abb122(63)
      abb122(120)=spbl6l5*spal6e7
      abb122(121)=spbk7l5*spae7k7
      abb122(120)=abb122(120)-abb122(121)
      abb122(121)=-spak1e7*spbl5k1
      abb122(121)=abb122(121)+abb122(120)
      abb122(84)=abb122(84)*abb122(121)
      abb122(121)=-es12*abb122(114)
      abb122(102)=spbe7l5*abb122(102)
      abb122(122)=spak1k7*spbk7e7*spbl5k1
      abb122(123)=-abb122(66)*abb122(122)
      abb122(63)=abb122(63)+abb122(123)+abb122(73)+abb122(102)+abb122(121)+abb1&
      &22(84)+abb122(119)
      abb122(63)=4.0_ki*abb122(63)
      abb122(19)=-spbl6l5*abb122(19)
      abb122(73)=-spbk7l5*abb122(90)
      abb122(19)=abb122(19)+abb122(73)
      abb122(19)=8.0_ki*abb122(19)
      abb122(66)=abb122(66)*spbe7l5
      abb122(66)=8.0_ki*abb122(66)
      abb122(73)=-spbe7l5*abb122(89)
      abb122(73)=-abb122(114)+abb122(73)
      abb122(73)=8.0_ki*abb122(73)
      abb122(27)=-spbe7l5*abb122(27)
      abb122(76)=-abb122(76)*abb122(120)
      abb122(84)=-spbl5k2*abb122(89)
      abb122(76)=abb122(84)-abb122(112)+abb122(76)
      abb122(76)=4.0_ki*abb122(76)
      abb122(84)=4.0_ki*abb122(75)
      abb122(89)=abb122(84)*spae7k7
      abb122(84)=abb122(84)*spal6e7
      abb122(26)=abb122(26)*abb122(8)
      abb122(46)=abb122(7)*abb122(46)
      abb122(46)=abb122(26)+abb122(46)
      abb122(46)=spbk2k1*abb122(46)
      abb122(45)=-abb122(45)*abb122(12)
      abb122(22)=-abb122(22)+abb122(45)
      abb122(22)=spak4e7*abb122(22)
      abb122(22)=abb122(22)-abb122(94)
      abb122(15)=abb122(15)*abb122(22)
      abb122(22)=spbe7k1*abb122(17)
      abb122(45)=-abb122(100)*abb122(59)
      abb122(45)=abb122(45)-abb122(109)
      abb122(45)=spak4l5*abb122(45)
      abb122(15)=abb122(45)+abb122(46)+abb122(22)+abb122(15)-abb122(53)
      abb122(15)=4.0_ki*abb122(15)
      abb122(22)=spbl6k1*abb122(49)
      abb122(45)=abb122(18)*spak2k7
      abb122(46)=-spbk7k1*abb122(45)
      abb122(22)=abb122(22)+abb122(46)
      abb122(22)=8.0_ki*abb122(22)
      abb122(46)=abb122(91)*abb122(61)
      abb122(53)=abb122(91)*abb122(68)
      abb122(90)=4.0_ki*spbe7k1
      abb122(90)=-abb122(20)*abb122(90)
      abb122(54)=-abb122(54)*abb122(59)
      abb122(59)=-abb122(18)*abb122(35)
      abb122(54)=abb122(54)+abb122(59)
      abb122(54)=4.0_ki*abb122(54)
      abb122(59)=4.0_ki*abb122(82)
      abb122(91)=abb122(116)*abb122(61)
      abb122(70)=abb122(70)*abb122(62)
      abb122(67)=abb122(67)*spbe7l6
      abb122(33)=abb122(33)*abb122(50)
      abb122(50)=abb122(33)*abb122(69)
      abb122(50)=abb122(50)+abb122(67)-abb122(70)
      abb122(67)=4.0_ki*abb122(50)
      abb122(69)=abb122(75)*spak4l5
      abb122(29)=abb122(69)-abb122(29)
      abb122(29)=-abb122(29)*abb122(120)
      abb122(69)=spak1e7*abb122(82)
      abb122(50)=spak1l6*abb122(50)
      abb122(50)=abb122(50)+abb122(69)
      abb122(50)=spbl5k1*abb122(50)
      abb122(69)=abb122(93)-abb122(111)
      abb122(42)=abb122(42)*abb122(69)
      abb122(70)=abb122(24)*abb122(6)
      abb122(82)=abb122(55)*abb122(9)
      abb122(94)=-abb122(70)+abb122(82)
      abb122(34)=c2*abb122(34)*abb122(94)
      abb122(41)=-abb122(41)*abb122(69)*NC
      abb122(34)=abb122(41)+2.0_ki*abb122(42)+abb122(34)
      abb122(34)=abb122(34)*abb122(64)
      abb122(41)=spak4l5*abb122(112)
      abb122(17)=abb122(41)-abb122(17)
      abb122(17)=spbe7l5*abb122(17)
      abb122(41)=abb122(44)*abb122(110)
      abb122(42)=abb122(108)*abb122(9)
      abb122(94)=-abb122(3)*abb122(42)
      abb122(41)=abb122(41)+abb122(94)
      abb122(41)=abb122(41)*abb122(104)
      abb122(94)=-abb122(10)*abb122(44)
      abb122(83)=mB*abb122(43)*abb122(83)
      abb122(83)=abb122(94)+abb122(83)
      abb122(83)=abb122(83)*abb122(106)
      abb122(28)=-abb122(28)*abb122(44)
      abb122(28)=abb122(28)+abb122(42)
      abb122(28)=abb122(28)*abb122(87)
      abb122(28)=abb122(28)+abb122(41)+abb122(83)
      abb122(28)=spak4e7*abb122(28)
      abb122(41)=-spak4l5*abb122(114)
      abb122(26)=abb122(26)+abb122(41)
      abb122(26)=spbl5k2*abb122(26)
      abb122(41)=-abb122(43)*abb122(79)
      abb122(42)=abb122(6)*abb122(101)*abb122(81)
      abb122(41)=abb122(41)-abb122(42)
      abb122(35)=-abb122(41)*abb122(35)
      abb122(42)=abb122(92)*abb122(111)
      abb122(33)=abb122(33)*abb122(82)
      abb122(33)=abb122(33)+abb122(42)
      abb122(42)=spbe7k1*abb122(33)
      abb122(35)=abb122(42)+abb122(35)
      abb122(35)=spak1k2*abb122(35)
      abb122(42)=abb122(44)*abb122(72)
      abb122(72)=abb122(43)*spak2e7
      abb122(81)=abb122(72)*abb122(9)
      abb122(83)=-abb122(103)*abb122(81)
      abb122(42)=abb122(42)+abb122(83)
      abb122(42)=abb122(9)*abb122(42)
      abb122(42)=-abb122(52)+abb122(42)
      abb122(39)=abb122(44)*abb122(39)
      abb122(32)=abb122(32)*abb122(43)
      abb122(44)=abb122(105)*abb122(32)
      abb122(39)=-2.0_ki*abb122(39)+abb122(44)
      abb122(39)=abb122(9)*abb122(39)
      abb122(39)=abb122(48)+abb122(39)
      abb122(39)=c2*abb122(39)
      abb122(31)=abb122(93)*abb122(31)
      abb122(44)=abb122(25)*abb122(62)
      abb122(48)=abb122(96)*abb122(43)
      abb122(31)=-abb122(31)+abb122(44)-abb122(48)
      abb122(44)=-es12*abb122(8)*abb122(31)
      abb122(10)=abb122(10)*c2
      abb122(10)=-2.0_ki*abb122(110)+abb122(10)+abb122(97)
      abb122(48)=-abb122(77)*abb122(69)*abb122(10)
      abb122(23)=abb122(23)*abb122(43)
      abb122(23)=abb122(23)-abb122(25)
      abb122(10)=-spak4l6*abb122(23)*abb122(10)
      abb122(23)=-abb122(61)*abb122(122)
      abb122(25)=-spbk7k2*spae7k7
      abb122(43)=spbl6k2*spal6e7
      abb122(25)=abb122(43)+abb122(25)
      abb122(16)=abb122(16)*abb122(25)
      abb122(25)=abb122(30)*abb122(55)*spak2e7
      abb122(30)=abb122(65)*abb122(81)
      abb122(25)=-2.0_ki*abb122(25)+abb122(30)
      abb122(25)=abb122(9)*abb122(25)
      abb122(25)=abb122(57)+abb122(25)
      abb122(25)=NC*abb122(25)
      abb122(10)=abb122(23)+abb122(26)+abb122(10)+abb122(48)+abb122(28)+abb122(&
      &17)+abb122(34)+abb122(44)+abb122(25)+2.0_ki*abb122(42)+abb122(39)+abb122&
      &(35)+abb122(16)+abb122(50)+abb122(29)
      abb122(10)=4.0_ki*abb122(10)
      abb122(16)=-spbl6l5*abb122(49)
      abb122(17)=abb122(80)*abb122(37)
      abb122(17)=abb122(17)+abb122(79)
      abb122(17)=abb122(17)*abb122(6)
      abb122(23)=-spak2k7*abb122(17)
      abb122(25)=abb122(74)*abb122(6)
      abb122(26)=spak4k7*abb122(25)
      abb122(23)=abb122(23)+abb122(26)
      abb122(23)=spbk7l6*abb122(23)
      abb122(26)=abb122(88)*abb122(5)
      abb122(28)=abb122(26)*abb122(56)*abb122(70)
      abb122(29)=abb122(28)*c3
      abb122(26)=abb122(82)*abb122(26)
      abb122(30)=abb122(26)*abb122(85)
      abb122(30)=abb122(30)-abb122(29)
      abb122(30)=-abb122(30)*abb122(13)
      abb122(26)=abb122(56)*abb122(26)
      abb122(26)=-abb122(28)+abb122(26)
      abb122(26)=abb122(26)*abb122(11)
      abb122(34)=spbk7l5*abb122(45)
      abb122(16)=abb122(23)+abb122(34)+abb122(16)+abb122(26)+abb122(30)
      abb122(16)=8.0_ki*abb122(16)
      abb122(23)=abb122(61)*spbe7l5
      abb122(26)=abb122(75)*spak4e7
      abb122(30)=abb122(79)*abb122(72)
      abb122(32)=abb122(32)*abb122(60)
      abb122(23)=abb122(23)+abb122(26)+abb122(30)+abb122(32)
      abb122(23)=8.0_ki*abb122(23)
      abb122(12)=abb122(47)*abb122(12)
      abb122(24)=abb122(24)*abb122(71)
      abb122(12)=abb122(24)+abb122(12)
      abb122(24)=spak4e7*abb122(5)
      abb122(12)=abb122(12)*abb122(24)
      abb122(12)=abb122(12)-abb122(31)
      abb122(12)=abb122(8)*abb122(12)
      abb122(26)=-spbe7l5*abb122(68)
      abb122(12)=abb122(26)+abb122(12)
      abb122(12)=8.0_ki*abb122(12)
      abb122(20)=spbe7l5*abb122(20)
      abb122(13)=-abb122(29)*abb122(13)
      abb122(11)=abb122(11)*abb122(28)
      abb122(11)=abb122(11)+abb122(13)
      abb122(11)=spbe7k2*abb122(8)*abb122(11)
      abb122(13)=abb122(17)*abb122(64)
      abb122(17)=-abb122(25)*abb122(77)
      abb122(25)=-spak4l6*abb122(75)
      abb122(26)=spak2l6*abb122(41)
      abb122(11)=abb122(26)+abb122(11)+abb122(25)+abb122(17)+abb122(13)+abb122(&
      &20)
      abb122(11)=4.0_ki*abb122(11)
      abb122(13)=4.0_ki*abb122(112)
      abb122(17)=-spbl5k2*abb122(68)
      abb122(18)=abb122(18)*abb122(120)
      abb122(20)=abb122(82)*abb122(98)*abb122(24)
      abb122(17)=abb122(17)+abb122(20)+abb122(18)+abb122(33)
      abb122(17)=4.0_ki*abb122(17)
      abb122(18)=4.0_ki*abb122(114)
      R2d122=0.0_ki
      rat2 = rat2 + R2d122
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='122' value='", &
          & R2d122, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd122h3