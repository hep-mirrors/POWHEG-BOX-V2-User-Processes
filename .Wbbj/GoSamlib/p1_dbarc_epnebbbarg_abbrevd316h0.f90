module     p1_dbarc_epnebbbarg_abbrevd316h0
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(136), public :: abb316
   complex(ki), public :: R2d316
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p1_dbarc_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_color, only: TR
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb316(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb316(2)=NC**(-1)
      abb316(3)=es234**(-1)
      abb316(4)=spbl6k2**(-1)
      abb316(5)=spbl5k2**(-1)
      abb316(6)=spak2l6**(-1)
      abb316(7)=sqrt(mB**2)
      abb316(8)=TR*gW
      abb316(8)=abb316(8)**2
      abb316(9)=i_*CVDC
      abb316(10)=abb316(8)*abb316(9)*abb316(3)*abb316(1)
      abb316(11)=abb316(10)*c3
      abb316(12)=spbk3k2*mB
      abb316(13)=abb316(11)*abb316(12)
      abb316(14)=abb316(13)*abb316(2)
      abb316(10)=c1*abb316(10)*abb316(2)
      abb316(15)=abb316(10)*abb316(12)
      abb316(16)=abb316(11)*NC
      abb316(17)=abb316(16)*abb316(12)
      abb316(15)=-abb316(17)+abb316(14)-abb316(15)
      abb316(17)=-spbe7k2*abb316(15)
      abb316(18)=abb316(16)+abb316(10)
      abb316(19)=spbk3k2*abb316(18)
      abb316(20)=spbe7k2*abb316(19)
      abb316(21)=abb316(11)*spbe7k2
      abb316(22)=spbk3k2*abb316(21)*abb316(2)
      abb316(20)=abb316(20)-abb316(22)
      abb316(20)=abb316(20)*abb316(7)
      abb316(17)=abb316(17)-abb316(20)
      abb316(20)=spak1l5*spak2k4
      abb316(17)=abb316(17)*abb316(20)
      abb316(22)=abb316(11)*abb316(2)
      abb316(23)=abb316(22)*spbk3k2
      abb316(23)=abb316(23)-abb316(19)
      abb316(24)=abb316(23)*abb316(7)
      abb316(25)=spak1l5*spak3k4
      abb316(26)=abb316(25)*spbe7k3
      abb316(27)=abb316(26)*abb316(24)
      abb316(17)=-abb316(17)+abb316(27)
      abb316(17)=spal6e7*abb316(17)
      abb316(27)=spak1e7*abb316(18)
      abb316(28)=abb316(12)**2
      abb316(29)=spbe7k2*abb316(5)
      abb316(30)=abb316(29)*abb316(4)
      abb316(31)=-abb316(27)*abb316(28)*abb316(30)
      abb316(32)=abb316(11)*abb316(5)
      abb316(33)=spak1e7*abb316(2)
      abb316(34)=abb316(32)*abb316(33)
      abb316(35)=spbe7k2*abb316(4)
      abb316(36)=abb316(34)*abb316(35)
      abb316(37)=abb316(36)*abb316(28)
      abb316(31)=abb316(37)+abb316(31)
      abb316(37)=abb316(7)*spak3k4
      abb316(31)=abb316(31)*abb316(37)
      abb316(38)=abb316(5)*abb316(18)
      abb316(32)=abb316(32)*abb316(2)
      abb316(38)=abb316(38)-abb316(32)
      abb316(39)=spbk3k2**2
      abb316(40)=abb316(39)*mB
      abb316(41)=abb316(40)*abb316(38)
      abb316(42)=spak1l6*spak3k4
      abb316(43)=abb316(41)*abb316(42)
      abb316(44)=spbe7l6*spal6e7
      abb316(45)=abb316(44)*abb316(43)
      abb316(17)=abb316(31)-abb316(45)+abb316(17)
      abb316(31)=abb316(5)*abb316(27)
      abb316(31)=abb316(31)-abb316(34)
      abb316(45)=mB**3
      abb316(39)=abb316(39)*abb316(45)
      abb316(46)=abb316(39)*abb316(4)
      abb316(47)=-abb316(46)*abb316(31)
      abb316(48)=abb316(6)*spak3k4
      abb316(49)=abb316(47)*abb316(48)
      abb316(50)=spal6k7*spbk7e7
      abb316(51)=abb316(49)*abb316(50)
      abb316(52)=abb316(33)*abb316(11)
      abb316(52)=abb316(27)-abb316(52)
      abb316(53)=abb316(4)**2
      abb316(54)=abb316(39)*abb316(53)
      abb316(55)=-abb316(54)*abb316(52)
      abb316(56)=abb316(25)*spbe7k1
      abb316(57)=abb316(6)*abb316(55)*abb316(56)
      abb316(58)=abb316(51)-abb316(57)
      abb316(58)=-abb316(17)+2.0_ki*abb316(58)
      abb316(58)=es71*abb316(58)
      abb316(55)=abb316(55)*abb316(48)
      abb316(59)=spal5k7*spbk7e7
      abb316(60)=abb316(55)*abb316(59)
      abb316(57)=abb316(60)-abb316(57)
      abb316(51)=abb316(57)+abb316(51)
      abb316(60)=2.0_ki*es12
      abb316(61)=-abb316(60)+2.0_ki*es712
      abb316(51)=-abb316(51)*abb316(61)
      abb316(62)=abb316(27)*abb316(12)
      abb316(63)=-spbk3k2*abb316(52)
      abb316(64)=abb316(63)*abb316(7)
      abb316(65)=abb316(13)*abb316(33)
      abb316(66)=-abb316(65)+abb316(62)+abb316(64)
      abb316(67)=spal6k7*spbk7k2
      abb316(68)=abb316(66)*abb316(67)
      abb316(69)=abb316(20)*abb316(68)
      abb316(28)=abb316(28)*abb316(4)
      abb316(70)=abb316(31)*abb316(28)
      abb316(71)=abb316(70)*abb316(37)
      abb316(72)=spak1k7*spbk7k2
      abb316(73)=abb316(72)*abb316(71)
      abb316(69)=abb316(73)+abb316(69)
      abb316(73)=2.0_ki*spbe7k1
      abb316(69)=abb316(69)*abb316(73)
      abb316(68)=-spak2k4*abb316(68)
      abb316(55)=es71*abb316(55)
      abb316(55)=abb316(68)+abb316(55)
      abb316(55)=abb316(55)*abb316(59)
      abb316(68)=-abb316(40)*abb316(31)
      abb316(74)=abb316(68)*spak3k4
      abb316(75)=spbk7e7*spal6k7**2*abb316(74)
      abb316(68)=abb316(68)*abb316(42)
      abb316(76)=abb316(68)*spbe7k1
      abb316(77)=-spal6k7*abb316(76)
      abb316(75)=abb316(75)+abb316(77)
      abb316(77)=2.0_ki*spbk7l6
      abb316(75)=abb316(75)*abb316(77)
      abb316(78)=abb316(64)*spal6k7
      abb316(79)=-abb316(56)*abb316(78)
      abb316(80)=abb316(63)*abb316(59)*abb316(37)
      abb316(81)=spal6k7*abb316(80)
      abb316(79)=abb316(79)+abb316(81)
      abb316(81)=2.0_ki*spbk7k3
      abb316(79)=abb316(79)*abb316(81)
      abb316(82)=abb316(12)*abb316(4)
      abb316(83)=abb316(82)*abb316(27)
      abb316(13)=abb316(13)*abb316(4)
      abb316(84)=abb316(13)*abb316(33)
      abb316(83)=abb316(83)-abb316(84)
      abb316(84)=abb316(67)*abb316(83)
      abb316(85)=abb316(59)*spak3k4
      abb316(86)=abb316(85)-abb316(56)
      abb316(87)=2.0_ki*abb316(86)
      abb316(87)=abb316(84)*abb316(87)
      abb316(82)=abb316(82)*abb316(18)
      abb316(88)=spbe7k2*abb316(82)
      abb316(14)=abb316(14)*abb316(35)
      abb316(14)=-abb316(14)+abb316(88)
      abb316(88)=abb316(14)*abb316(25)*spal6e7
      abb316(89)=-es71*abb316(88)
      abb316(87)=abb316(89)+abb316(87)
      abb316(87)=spbl6k3*abb316(87)
      abb316(89)=-abb316(18)*abb316(39)*abb316(30)
      abb316(32)=abb316(32)*abb316(35)
      abb316(39)=abb316(32)*abb316(39)
      abb316(39)=abb316(39)+abb316(89)
      abb316(39)=abb316(39)*spal6e7
      abb316(89)=-es71*abb316(48)*abb316(39)
      abb316(90)=-abb316(67)*abb316(49)*abb316(73)
      abb316(89)=abb316(90)+abb316(89)
      abb316(89)=spak1k2*abb316(89)
      abb316(51)=abb316(89)+abb316(87)+abb316(79)+abb316(75)+2.0_ki*abb316(55)+&
      &abb316(69)+abb316(58)+abb316(51)
      abb316(51)=2.0_ki*abb316(51)
      abb316(28)=abb316(37)*abb316(38)*abb316(28)
      abb316(37)=abb316(46)*abb316(38)
      abb316(46)=-spak3k4*abb316(37)
      abb316(46)=abb316(46)+abb316(28)
      abb316(46)=abb316(46)*abb316(72)
      abb316(37)=abb316(37)*abb316(48)
      abb316(55)=-abb316(67)*abb316(37)
      abb316(22)=abb316(22)-abb316(18)
      abb316(54)=abb316(22)*abb316(54)
      abb316(58)=spal5k7*spbk7k2
      abb316(69)=abb316(54)*abb316(48)*abb316(58)
      abb316(55)=abb316(55)+abb316(69)
      abb316(55)=spak1k2*abb316(55)
      abb316(69)=abb316(15)-abb316(24)
      abb316(75)=-abb316(69)*abb316(20)
      abb316(13)=abb316(13)*abb316(2)
      abb316(13)=abb316(82)-abb316(13)
      abb316(79)=-abb316(25)*abb316(13)*spbl6k3
      abb316(75)=abb316(75)+abb316(79)
      abb316(75)=spbk2k1*spak1l6*abb316(75)
      abb316(79)=spbl6k1*spak3k4*abb316(41)*spak1l6**2
      abb316(46)=abb316(79)+abb316(75)+abb316(46)+abb316(55)
      abb316(55)=2.0_ki*spak2k4
      abb316(55)=spak1l6*abb316(69)*abb316(55)
      abb316(69)=abb316(42)*spbl6k3
      abb316(75)=abb316(13)*abb316(69)
      abb316(55)=2.0_ki*abb316(75)+abb316(55)
      abb316(55)=abb316(58)*abb316(55)
      abb316(75)=abb316(40)*abb316(4)
      abb316(79)=abb316(75)*abb316(18)
      abb316(11)=abb316(11)*abb316(4)
      abb316(40)=abb316(40)*abb316(11)
      abb316(87)=abb316(40)*abb316(2)
      abb316(79)=abb316(79)-abb316(87)
      abb316(87)=abb316(79)*abb316(25)
      abb316(87)=abb316(87)+abb316(43)
      abb316(89)=es71*abb316(87)
      abb316(90)=-abb316(6)*abb316(54)*abb316(25)
      abb316(91)=spak1l6*abb316(37)
      abb316(90)=abb316(90)+abb316(91)
      abb316(60)=abb316(90)*abb316(60)
      abb316(90)=2.0_ki*abb316(7)
      abb316(91)=abb316(23)*abb316(90)
      abb316(92)=spbk7k3*spal5k7*abb316(42)
      abb316(93)=abb316(25)*spbk3k1
      abb316(94)=-spak1l6*abb316(93)
      abb316(92)=abb316(94)+abb316(92)
      abb316(92)=abb316(91)*abb316(92)
      abb316(94)=abb316(77)*spal6k7
      abb316(43)=-abb316(43)*abb316(94)
      abb316(43)=abb316(60)+abb316(43)+abb316(89)+abb316(55)+abb316(92)+2.0_ki*&
      &abb316(46)
      abb316(43)=4.0_ki*abb316(43)
      abb316(46)=abb316(48)*spak1k2
      abb316(39)=abb316(39)*abb316(46)
      abb316(55)=abb316(88)*spbl6k3
      abb316(17)=abb316(17)+abb316(39)+abb316(55)
      abb316(39)=abb316(75)*abb316(27)
      abb316(40)=abb316(40)*abb316(33)
      abb316(39)=abb316(39)-abb316(40)
      abb316(40)=abb316(39)*abb316(85)
      abb316(55)=abb316(50)*abb316(74)
      abb316(40)=abb316(40)-abb316(55)
      abb316(25)=abb316(39)*abb316(25)
      abb316(25)=abb316(25)-abb316(68)
      abb316(39)=abb316(25)*abb316(73)
      abb316(39)=abb316(39)-abb316(17)-2.0_ki*abb316(40)
      abb316(39)=4.0_ki*abb316(39)
      abb316(60)=8.0_ki*abb316(87)
      abb316(55)=-abb316(55)+abb316(76)
      abb316(55)=4.0_ki*abb316(55)
      abb316(68)=abb316(29)*abb316(27)
      abb316(75)=abb316(4)*spbk3k2
      abb316(76)=abb316(75)*abb316(45)
      abb316(85)=-abb316(76)*abb316(68)
      abb316(88)=abb316(45)*spbk3k2
      abb316(89)=abb316(36)*abb316(88)
      abb316(85)=abb316(89)+abb316(85)
      abb316(89)=spak2k4*abb316(6)
      abb316(85)=abb316(85)*abb316(89)
      abb316(92)=abb316(85)*spbk7k2
      abb316(95)=spbk7e7*spak4l5
      abb316(96)=abb316(64)*abb316(95)
      abb316(92)=abb316(92)-abb316(96)
      abb316(92)=abb316(92)*spal6k7
      abb316(97)=spbe7k2*spak1e7
      abb316(10)=abb316(10)*abb316(97)
      abb316(21)=abb316(21)*abb316(33)
      abb316(16)=abb316(97)*abb316(16)
      abb316(10)=abb316(10)+abb316(16)-abb316(21)
      abb316(16)=abb316(88)*abb316(53)
      abb316(10)=abb316(16)*abb316(10)
      abb316(98)=abb316(6)*spak4l5
      abb316(99)=abb316(10)*abb316(98)
      abb316(100)=es712-es12
      abb316(101)=abb316(100)-es71
      abb316(102)=abb316(101)*abb316(99)
      abb316(103)=abb316(84)*spak4l5
      abb316(104)=abb316(12)*abb316(38)
      abb316(105)=abb316(104)*abb316(72)
      abb316(106)=abb316(105)*spak4l6
      abb316(107)=abb316(106)*spal6e7
      abb316(103)=abb316(103)-abb316(107)
      abb316(103)=abb316(103)*spbe7l6
      abb316(107)=spal6e7*spak1k7
      abb316(108)=abb316(24)*abb316(107)
      abb316(109)=abb316(108)*abb316(95)
      abb316(103)=abb316(103)-abb316(109)
      abb316(62)=abb316(29)*abb316(62)
      abb316(34)=abb316(34)*spbe7k2
      abb316(109)=abb316(34)*abb316(12)
      abb316(62)=abb316(62)-abb316(109)
      abb316(109)=abb316(62)*spak4l6
      abb316(110)=abb316(109)*spal6k7
      abb316(111)=abb316(14)*abb316(107)
      abb316(112)=abb316(111)*spak4l5
      abb316(110)=abb316(110)-abb316(112)
      abb316(112)=abb316(110)*spbk7l6
      abb316(113)=mB**2
      abb316(114)=abb316(113)*abb316(75)
      abb316(115)=abb316(114)*abb316(68)
      abb316(116)=abb316(36)*abb316(113)
      abb316(117)=abb316(116)*spbk3k2
      abb316(115)=abb316(115)-abb316(117)
      abb316(117)=abb316(115)*abb316(7)
      abb316(118)=spak4k7*spbk7k2
      abb316(119)=abb316(118)*abb316(117)
      abb316(29)=abb316(75)*abb316(29)
      abb316(75)=abb316(18)*abb316(29)*abb316(113)
      abb316(120)=abb316(113)*abb316(32)
      abb316(121)=abb316(120)*spbk3k2
      abb316(75)=abb316(75)-abb316(121)
      abb316(121)=abb316(72)*spak4e7
      abb316(122)=abb316(121)*abb316(7)
      abb316(123)=abb316(122)*abb316(75)
      abb316(29)=-abb316(18)*abb316(29)*abb316(45)
      abb316(88)=abb316(32)*abb316(88)
      abb316(29)=abb316(88)+abb316(29)
      abb316(88)=abb316(72)*spal6e7
      abb316(124)=abb316(89)*abb316(88)
      abb316(125)=abb316(29)*abb316(124)
      abb316(92)=abb316(92)-abb316(102)+abb316(103)+abb316(112)-abb316(125)+abb&
      &316(119)-abb316(123)
      abb316(92)=8.0_ki*abb316(92)
      abb316(102)=abb316(13)*abb316(72)
      abb316(112)=abb316(102)*spak4l5
      abb316(119)=abb316(104)*spak4l6
      abb316(123)=spbl6k2*spak1l6
      abb316(125)=abb316(123)*abb316(119)
      abb316(106)=abb316(106)+abb316(112)-abb316(125)
      abb316(112)=abb316(15)*spak4l5
      abb316(125)=abb316(7)*spak4l5
      abb316(126)=2.0_ki*abb316(125)
      abb316(23)=abb316(126)*abb316(23)
      abb316(23)=abb316(112)-abb316(23)
      abb316(112)=abb316(23)*spak1l6
      abb316(112)=abb316(112)-abb316(106)
      abb316(112)=16.0_ki*abb316(112)
      abb316(82)=abb316(97)*abb316(82)
      abb316(65)=abb316(65)*abb316(35)
      abb316(65)=abb316(82)-abb316(65)
      abb316(82)=abb316(65)*spak4l5
      abb316(82)=abb316(82)+abb316(109)
      abb316(127)=16.0_ki*abb316(82)
      abb316(109)=8.0_ki*abb316(109)
      abb316(96)=-spal6k7*abb316(96)
      abb316(128)=abb316(48)*spbe7k3
      abb316(76)=abb316(128)*abb316(31)*abb316(76)
      abb316(129)=-abb316(67)*abb316(76)
      abb316(96)=abb316(129)+abb316(96)+abb316(103)
      abb316(61)=-abb316(61)+2.0_ki*es71
      abb316(61)=abb316(99)*abb316(61)
      abb316(77)=abb316(110)*abb316(77)
      abb316(29)=-abb316(29)*abb316(48)*abb316(107)*abb316(81)
      abb316(48)=abb316(75)*abb316(90)
      abb316(103)=-abb316(121)*abb316(48)
      abb316(110)=abb316(115)*abb316(90)
      abb316(115)=abb316(118)*abb316(110)
      abb316(29)=abb316(115)+abb316(103)+abb316(29)+abb316(77)+2.0_ki*abb316(96&
      &)+abb316(61)-abb316(57)
      abb316(29)=4.0_ki*abb316(29)
      abb316(23)=abb316(37)+abb316(23)
      abb316(23)=spak1l6*abb316(23)
      abb316(23)=abb316(23)-abb316(106)
      abb316(23)=16.0_ki*abb316(23)
      abb316(37)=8.0_ki*abb316(99)
      abb316(57)=4.0_ki*abb316(17)
      abb316(25)=-spbe7k1*abb316(25)
      abb316(19)=abb316(19)*abb316(97)
      abb316(61)=abb316(21)*spbk3k2
      abb316(19)=abb316(61)-abb316(19)
      abb316(19)=abb316(19)*spak2k4*abb316(7)
      abb316(61)=spbe7k3*spak3k4
      abb316(77)=-abb316(61)*abb316(64)
      abb316(77)=abb316(19)+abb316(77)
      abb316(77)=spal5l6*abb316(77)
      abb316(17)=abb316(77)+abb316(25)+abb316(17)+abb316(40)
      abb316(17)=2.0_ki*abb316(17)
      abb316(25)=-4.0_ki*abb316(87)
      abb316(40)=4.0_ki*abb316(82)
      abb316(77)=2.0_ki*abb316(74)
      abb316(82)=es71*abb316(77)
      abb316(74)=4.0_ki*abb316(74)
      abb316(63)=abb316(63)*abb316(125)
      abb316(87)=2.0_ki*abb316(105)
      abb316(96)=abb316(87)*spak4e7
      abb316(63)=abb316(63)+abb316(96)
      abb316(63)=4.0_ki*abb316(63)
      abb316(96)=abb316(88)*spak2k4
      abb316(99)=-abb316(24)*abb316(96)
      abb316(103)=spbk7k3*spak3k4
      abb316(106)=abb316(103)*abb316(108)
      abb316(99)=abb316(99)+abb316(106)
      abb316(99)=4.0_ki*abb316(99)
      abb316(106)=abb316(14)*abb316(20)
      abb316(26)=abb316(26)*abb316(13)
      abb316(26)=abb316(106)-abb316(26)
      abb316(106)=-es71*abb316(26)
      abb316(115)=-spak2k4*abb316(72)
      abb316(129)=spak1k7*abb316(103)
      abb316(115)=abb316(129)+abb316(115)
      abb316(48)=abb316(48)*abb316(115)
      abb316(48)=abb316(106)+abb316(48)
      abb316(48)=2.0_ki*abb316(48)
      abb316(106)=4.0_ki*abb316(26)
      abb316(115)=abb316(13)*spak1k7
      abb316(129)=8.0_ki*abb316(95)
      abb316(130)=abb316(129)*abb316(115)
      abb316(26)=2.0_ki*abb316(26)
      abb316(131)=abb316(103)*abb316(104)
      abb316(132)=abb316(131)*spak1k7
      abb316(133)=spak2k4*abb316(105)
      abb316(133)=abb316(133)-abb316(132)
      abb316(133)=4.0_ki*abb316(133)
      abb316(134)=abb316(115)*abb316(103)
      abb316(135)=spak2k4*abb316(102)
      abb316(135)=abb316(135)-abb316(134)
      abb316(135)=4.0_ki*abb316(135)
      abb316(73)=-abb316(20)*abb316(73)
      abb316(59)=abb316(59)*spak2k4
      abb316(73)=2.0_ki*abb316(59)+abb316(73)
      abb316(73)=abb316(83)*abb316(73)
      abb316(136)=spak2k4*abb316(110)
      abb316(31)=abb316(31)*abb316(61)
      abb316(114)=-abb316(90)*abb316(114)*abb316(31)
      abb316(73)=abb316(114)+abb316(136)+abb316(73)
      abb316(73)=spbk7k2*abb316(73)
      abb316(71)=-spbk7e7*abb316(71)
      abb316(86)=abb316(86)*abb316(83)
      abb316(81)=-abb316(86)*abb316(81)
      abb316(71)=abb316(81)+abb316(71)+abb316(73)
      abb316(71)=2.0_ki*abb316(71)
      abb316(73)=abb316(129)*abb316(83)
      abb316(81)=spbe7k1*spak1k7*abb316(74)
      abb316(114)=8.0_ki*spak3k4
      abb316(129)=-spak1k7*abb316(41)*abb316(114)
      abb316(136)=abb316(62)*spak4k7
      abb316(136)=8.0_ki*abb316(136)
      abb316(12)=abb316(12)*abb316(31)
      abb316(31)=abb316(62)*spak2k4
      abb316(12)=abb316(12)-abb316(31)
      abb316(31)=4.0_ki*abb316(12)
      abb316(56)=abb316(64)*abb316(56)
      abb316(56)=abb316(56)-abb316(80)
      abb316(56)=2.0_ki*abb316(56)
      abb316(80)=-spbe7k1*abb316(20)
      abb316(59)=abb316(59)+abb316(80)
      abb316(59)=abb316(66)*abb316(59)
      abb316(66)=-abb316(12)*abb316(94)
      abb316(80)=-spak2k4*abb316(44)*abb316(87)
      abb316(94)=spbe7l6*abb316(107)*abb316(131)
      abb316(86)=-spbl6k3*abb316(86)
      abb316(47)=spbe7k1*abb316(47)*abb316(46)
      abb316(49)=-spak2k7*spbk7e7*abb316(49)
      abb316(47)=abb316(49)+abb316(47)+abb316(86)+2.0_ki*abb316(94)+abb316(66)+&
      &abb316(80)+abb316(59)
      abb316(47)=2.0_ki*abb316(47)
      abb316(49)=abb316(104)*spak1l6
      abb316(59)=abb316(49)*spbl6k2
      abb316(59)=abb316(59)-abb316(105)
      abb316(66)=spak2k4*abb316(59)
      abb316(69)=-abb316(104)*abb316(69)
      abb316(66)=abb316(69)+abb316(132)+abb316(66)
      abb316(66)=8.0_ki*abb316(66)
      abb316(69)=-8.0_ki*abb316(12)
      abb316(80)=abb316(83)*spbe7l6
      abb316(86)=abb316(80)*spak4l5
      abb316(85)=abb316(86)+abb316(85)
      abb316(85)=4.0_ki*abb316(85)
      abb316(94)=abb316(104)*spak1k4
      abb316(94)=16.0_ki*abb316(94)
      abb316(76)=-abb316(86)+abb316(76)
      abb316(76)=4.0_ki*abb316(76)
      abb316(12)=2.0_ki*abb316(12)
      abb316(19)=spal6k7*abb316(19)
      abb316(78)=-abb316(61)*abb316(78)
      abb316(19)=abb316(19)+abb316(78)
      abb316(19)=4.0_ki*abb316(19)
      abb316(78)=abb316(61)*abb316(83)
      abb316(86)=abb316(65)*spak2k4
      abb316(78)=abb316(78)-abb316(86)
      abb316(131)=4.0_ki*abb316(78)
      abb316(14)=-abb316(14)*abb316(96)
      abb316(86)=abb316(67)*abb316(86)
      abb316(61)=-abb316(61)*abb316(84)
      abb316(96)=abb316(103)*abb316(111)
      abb316(14)=abb316(96)+abb316(61)+abb316(14)+abb316(86)
      abb316(14)=4.0_ki*abb316(14)
      abb316(42)=8.0_ki*abb316(42)
      abb316(61)=abb316(79)*abb316(42)
      abb316(86)=2.0_ki*abb316(78)
      abb316(42)=abb316(24)*abb316(42)
      abb316(96)=abb316(89)*abb316(10)
      abb316(16)=-abb316(128)*abb316(16)*abb316(52)
      abb316(16)=abb316(16)+abb316(96)
      abb316(16)=4.0_ki*abb316(16)
      abb316(96)=-abb316(101)*abb316(16)
      abb316(24)=-spak1l6*abb316(24)
      abb316(24)=-abb316(102)+abb316(24)
      abb316(24)=spak2k4*abb316(24)
      abb316(46)=-abb316(54)*abb316(46)
      abb316(24)=abb316(46)+abb316(134)+abb316(24)
      abb316(24)=8.0_ki*abb316(24)
      abb316(46)=-8.0_ki*abb316(78)
      abb316(10)=abb316(10)*abb316(6)
      abb316(54)=abb316(10)*es71
      abb316(78)=abb316(84)*spbe7l6
      abb316(50)=abb316(50)*abb316(64)
      abb316(84)=abb316(111)*spbk7l6
      abb316(101)=abb316(108)*spbk7e7
      abb316(50)=abb316(101)-abb316(54)-abb316(78)+abb316(50)+abb316(84)
      abb316(54)=-spak3l5*abb316(50)
      abb316(78)=abb316(8)*abb316(5)*abb316(45)*abb316(35)
      abb316(84)=c3*abb316(1)
      abb316(101)=abb316(78)*abb316(84)
      abb316(108)=c1*abb316(1)
      abb316(78)=-abb316(78)*abb316(108)
      abb316(78)=abb316(101)+abb316(78)
      abb316(111)=abb316(9)*abb316(2)
      abb316(78)=abb316(111)*abb316(78)
      abb316(9)=abb316(9)*abb316(101)*NC
      abb316(78)=-abb316(9)+abb316(78)
      abb316(78)=abb316(78)*abb316(88)
      abb316(84)=-abb316(108)+abb316(84)
      abb316(101)=abb316(30)*abb316(45)
      abb316(8)=abb316(84)*abb316(111)*abb316(101)*abb316(8)*spak1e7
      abb316(9)=spak1e7*abb316(9)
      abb316(8)=-abb316(9)+abb316(8)
      abb316(9)=-abb316(8)*abb316(67)
      abb316(84)=abb316(18)*abb316(101)
      abb316(32)=abb316(32)*abb316(45)
      abb316(32)=abb316(32)-abb316(84)
      abb316(84)=-abb316(32)*abb316(88)
      abb316(101)=-abb316(101)*abb316(27)
      abb316(36)=abb316(36)*abb316(45)
      abb316(36)=abb316(36)+abb316(101)
      abb316(101)=abb316(36)*abb316(67)
      abb316(84)=abb316(84)+abb316(101)
      abb316(84)=es34*abb316(84)
      abb316(9)=abb316(84)+abb316(78)+abb316(9)
      abb316(9)=abb316(6)*abb316(9)
      abb316(35)=abb316(35)*mB
      abb316(78)=abb316(18)*abb316(35)
      abb316(11)=abb316(11)*mB
      abb316(84)=abb316(11)*abb316(2)
      abb316(101)=abb316(84)*spbe7k2
      abb316(78)=abb316(101)-abb316(78)
      abb316(78)=abb316(78)*abb316(107)*spak4l5
      abb316(34)=-abb316(34)+abb316(68)
      abb316(34)=mB*abb316(34)
      abb316(68)=abb316(34)*spak4l6
      abb316(101)=abb316(68)*spal6k7
      abb316(78)=abb316(78)+abb316(101)
      abb316(78)=abb316(78)*spbk7l6
      abb316(38)=mB*abb316(38)
      abb316(101)=abb316(38)*spak4l6
      abb316(88)=abb316(101)*abb316(88)
      abb316(108)=abb316(4)*mB
      abb316(111)=abb316(108)*abb316(27)
      abb316(11)=abb316(11)*abb316(33)
      abb316(33)=abb316(111)-abb316(11)
      abb316(111)=abb316(33)*spak4l5
      abb316(67)=abb316(111)*abb316(67)
      abb316(67)=abb316(88)-abb316(67)
      abb316(67)=abb316(67)*spbe7l6
      abb316(30)=abb316(113)*abb316(30)
      abb316(88)=abb316(30)*abb316(27)
      abb316(88)=abb316(88)-abb316(116)
      abb316(113)=abb316(7)*abb316(88)*abb316(118)
      abb316(30)=abb316(18)*abb316(30)
      abb316(30)=abb316(30)-abb316(120)
      abb316(30)=abb316(30)*abb316(122)
      abb316(30)=abb316(78)-abb316(67)+abb316(113)-abb316(30)
      abb316(67)=abb316(22)*abb316(107)
      abb316(78)=spal6k7*abb316(52)
      abb316(78)=-abb316(67)+abb316(78)
      abb316(107)=abb316(95)*abb316(7)
      abb316(78)=abb316(107)*abb316(78)
      abb316(97)=abb316(18)*abb316(97)
      abb316(21)=abb316(97)-abb316(21)
      abb316(21)=abb316(98)*abb316(21)*abb316(53)*abb316(45)
      abb316(45)=es71*abb316(21)
      abb316(45)=abb316(45)+abb316(78)+abb316(30)
      abb316(45)=spbk4k2*abb316(45)
      abb316(53)=abb316(10)*spak3l5
      abb316(78)=abb316(21)*spbk4k2
      abb316(53)=abb316(53)+abb316(78)
      abb316(78)=-abb316(53)*abb316(100)
      abb316(97)=spal6k7*abb316(62)*spbk7l6
      abb316(44)=abb316(44)*abb316(105)
      abb316(44)=abb316(97)-abb316(44)
      abb316(97)=spak3l6*abb316(44)
      abb316(75)=-spak3e7*abb316(7)*abb316(75)*abb316(72)
      abb316(98)=spak3k7*spbk7k2*abb316(117)
      abb316(9)=abb316(98)+abb316(75)+abb316(97)+abb316(54)+abb316(45)+abb316(7&
      &8)+abb316(9)
      abb316(9)=4.0_ki*abb316(9)
      abb316(18)=abb316(108)*abb316(18)
      abb316(18)=abb316(18)-abb316(84)
      abb316(45)=abb316(18)*spak4l5
      abb316(54)=abb316(45)+abb316(101)
      abb316(54)=abb316(54)*abb316(72)
      abb316(72)=spak4l5*mB
      abb316(72)=abb316(72)-abb316(126)
      abb316(22)=spak1l6*abb316(22)*abb316(72)
      abb316(22)=abb316(22)-abb316(54)
      abb316(54)=spbk4k2*abb316(22)
      abb316(15)=abb316(91)-abb316(15)
      abb316(15)=abb316(15)*spak1l6
      abb316(15)=abb316(15)+abb316(102)
      abb316(72)=-spak3l5*abb316(15)
      abb316(75)=spbk4k2*spak1l6*abb316(101)
      abb316(49)=spak3l6*abb316(49)
      abb316(49)=abb316(75)+abb316(49)
      abb316(49)=spbl6k2*abb316(49)
      abb316(75)=-spak3l6*abb316(105)
      abb316(49)=abb316(49)+abb316(75)+abb316(54)+abb316(72)
      abb316(49)=8.0_ki*abb316(49)
      abb316(27)=abb316(35)*abb316(27)
      abb316(11)=abb316(11)*spbe7k2
      abb316(11)=abb316(27)-abb316(11)
      abb316(11)=abb316(11)*spak4l5
      abb316(11)=abb316(11)+abb316(68)
      abb316(27)=abb316(11)*spbk4k2
      abb316(35)=abb316(65)*spak3l5
      abb316(54)=abb316(62)*spak3l6
      abb316(27)=abb316(54)+abb316(35)+abb316(27)
      abb316(35)=8.0_ki*abb316(27)
      abb316(72)=-spbk4k2*abb316(68)
      abb316(54)=abb316(72)-abb316(54)
      abb316(54)=4.0_ki*abb316(54)
      abb316(53)=-4.0_ki*abb316(53)
      abb316(27)=-2.0_ki*abb316(27)
      abb316(72)=abb316(121)*abb316(38)
      abb316(75)=abb316(52)*abb316(125)
      abb316(72)=-abb316(75)+2.0_ki*abb316(72)
      abb316(75)=spbk4k2*abb316(72)
      abb316(78)=spak3l5*abb316(64)
      abb316(84)=spak3e7*abb316(87)
      abb316(75)=abb316(84)+abb316(78)+abb316(75)
      abb316(75)=2.0_ki*abb316(75)
      abb316(18)=spak1k7*abb316(18)*abb316(95)
      abb316(78)=spbk4k2*abb316(18)
      abb316(84)=abb316(115)*spbk7e7
      abb316(91)=spak3l5*abb316(84)
      abb316(78)=abb316(78)+abb316(91)
      abb316(78)=4.0_ki*abb316(78)
      abb316(33)=abb316(33)*abb316(95)
      abb316(91)=spbk4k2*abb316(33)
      abb316(83)=abb316(83)*spbk7e7
      abb316(95)=spak3l5*abb316(83)
      abb316(91)=abb316(91)+abb316(95)
      abb316(91)=4.0_ki*abb316(91)
      abb316(34)=abb316(34)*spak4k7
      abb316(95)=-spbk4k2*abb316(34)
      abb316(97)=-spak3k7*abb316(62)
      abb316(95)=abb316(95)+abb316(97)
      abb316(95)=4.0_ki*abb316(95)
      abb316(97)=-es34*abb316(36)
      abb316(8)=abb316(97)+abb316(8)
      abb316(8)=abb316(6)*abb316(8)
      abb316(97)=abb316(111)*spbe7l6
      abb316(98)=-spbk4k2*abb316(97)
      abb316(102)=-spak3l5*abb316(80)
      abb316(8)=abb316(102)+abb316(98)+abb316(8)
      abb316(8)=2.0_ki*abb316(8)
      abb316(38)=abb316(38)*spak1k4
      abb316(98)=spbk4k2*abb316(38)
      abb316(102)=spak1k3*abb316(104)
      abb316(98)=abb316(98)+abb316(102)
      abb316(98)=8.0_ki*abb316(98)
      abb316(50)=spak2l5*abb316(50)
      abb316(36)=abb316(36)*abb316(89)
      abb316(89)=-spbk7k2*abb316(36)
      abb316(52)=-abb316(52)*abb316(107)
      abb316(52)=abb316(89)+abb316(52)
      abb316(52)=spal6k7*abb316(52)
      abb316(32)=abb316(32)*abb316(124)
      abb316(67)=abb316(107)*abb316(67)
      abb316(30)=-abb316(30)+abb316(52)+abb316(32)+abb316(67)
      abb316(30)=spbk4k3*abb316(30)
      abb316(10)=abb316(10)*spak2l5
      abb316(21)=abb316(21)*spbk4k3
      abb316(10)=abb316(10)+abb316(21)
      abb316(32)=abb316(10)+abb316(117)
      abb316(32)=abb316(32)*abb316(100)
      abb316(21)=-abb316(117)-abb316(21)
      abb316(21)=es71*abb316(21)
      abb316(44)=-spak2l6*abb316(44)
      abb316(21)=abb316(44)+abb316(50)+abb316(21)+abb316(30)+abb316(32)
      abb316(21)=4.0_ki*abb316(21)
      abb316(30)=-abb316(101)*abb316(123)
      abb316(22)=abb316(30)-abb316(22)
      abb316(22)=spbk4k3*abb316(22)
      abb316(15)=spak2l5*abb316(15)
      abb316(30)=-spak2l6*abb316(59)
      abb316(15)=abb316(30)+abb316(15)+abb316(22)
      abb316(15)=8.0_ki*abb316(15)
      abb316(11)=abb316(11)*spbk4k3
      abb316(22)=abb316(65)*spak2l5
      abb316(30)=abb316(62)*spak2l6
      abb316(11)=abb316(30)+abb316(22)+abb316(11)
      abb316(22)=-8.0_ki*abb316(11)
      abb316(32)=spbk4k3*abb316(68)
      abb316(30)=abb316(32)+abb316(30)
      abb316(30)=4.0_ki*abb316(30)
      abb316(32)=4.0_ki*abb316(117)
      abb316(10)=4.0_ki*abb316(10)
      abb316(11)=2.0_ki*abb316(11)
      abb316(44)=-spbk4k3*abb316(72)
      abb316(50)=-spak2l5*abb316(64)
      abb316(52)=-spak2e7*abb316(87)
      abb316(44)=abb316(52)+abb316(50)+abb316(44)
      abb316(44)=2.0_ki*abb316(44)
      abb316(18)=-spbk4k3*abb316(18)
      abb316(50)=-spak2l5*abb316(84)
      abb316(18)=abb316(18)+abb316(50)
      abb316(18)=4.0_ki*abb316(18)
      abb316(33)=-spbk4k3*abb316(33)
      abb316(50)=-spak2l5*abb316(83)
      abb316(33)=abb316(33)+abb316(50)
      abb316(33)=4.0_ki*abb316(33)
      abb316(34)=spbk4k3*abb316(34)
      abb316(50)=spak2k7*abb316(62)
      abb316(34)=abb316(34)+abb316(50)
      abb316(34)=4.0_ki*abb316(34)
      abb316(36)=abb316(36)+abb316(97)
      abb316(36)=spbk4k3*abb316(36)
      abb316(50)=spak2l5*abb316(80)
      abb316(36)=abb316(50)+abb316(36)
      abb316(36)=2.0_ki*abb316(36)
      abb316(50)=-spak1k2*abb316(104)
      abb316(38)=-spbk4k3*abb316(38)
      abb316(38)=abb316(50)+abb316(38)
      abb316(38)=8.0_ki*abb316(38)
      abb316(50)=abb316(88)*abb316(90)
      abb316(52)=-spbk4k2*abb316(50)
      abb316(50)=spbk4k3*abb316(50)
      abb316(41)=spal6k7*abb316(41)
      abb316(59)=spal5k7*abb316(79)
      abb316(41)=abb316(41)+abb316(59)
      abb316(41)=abb316(41)*abb316(114)
      abb316(59)=abb316(114)*abb316(104)
      abb316(62)=abb316(114)*abb316(13)
      abb316(64)=-spbe7k1*spak3k4*abb316(70)*abb316(90)
      abb316(58)=-spak2k4*abb316(58)
      abb316(65)=spal5k7*abb316(103)
      abb316(20)=spbk2k1*abb316(20)
      abb316(20)=-abb316(93)+abb316(20)+abb316(65)+abb316(58)
      abb316(20)=abb316(13)*abb316(20)
      abb316(20)=-abb316(28)+abb316(20)
      abb316(20)=8.0_ki*abb316(20)
      abb316(28)=abb316(13)*spak4l5
      abb316(28)=abb316(28)-abb316(119)
      abb316(28)=16.0_ki*abb316(28)
      abb316(45)=abb316(45)-abb316(101)
      abb316(58)=-spbk4k2*abb316(45)
      abb316(65)=-spak3l5*abb316(13)
      abb316(67)=spak3l6*abb316(104)
      abb316(58)=abb316(67)+abb316(58)+abb316(65)
      abb316(58)=8.0_ki*abb316(58)
      abb316(45)=spbk4k3*abb316(45)
      abb316(13)=spak2l5*abb316(13)
      abb316(65)=-spak2l6*abb316(104)
      abb316(13)=abb316(65)+abb316(45)+abb316(13)
      abb316(13)=8.0_ki*abb316(13)
      R2d316=0.0_ki
      rat2 = rat2 + R2d316
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='316' value='", &
          & R2d316, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd316h0
