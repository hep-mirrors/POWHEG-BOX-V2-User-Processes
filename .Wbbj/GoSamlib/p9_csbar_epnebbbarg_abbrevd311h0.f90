module     p9_csbar_epnebbbarg_abbrevd311h0
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(127), public :: abb311
   complex(ki), public :: R2d311
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
      abb311(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb311(2)=sqrt(mB**2)
      abb311(3)=NC**(-1)
      abb311(4)=es234**(-1)
      abb311(5)=spbl5k2**(-1)
      abb311(6)=spak2l5**(-1)
      abb311(7)=spbl6k2**(-1)
      abb311(8)=spak2l6**(-1)
      abb311(9)=NC-abb311(3)
      abb311(10)=TR*gW
      abb311(10)=abb311(10)**2*i_*CVSC*abb311(4)*abb311(1)
      abb311(11)=abb311(10)*c3*spak2k4
      abb311(12)=-abb311(11)*abb311(9)
      abb311(13)=spbk3k2*abb311(7)
      abb311(14)=mB**2
      abb311(15)=abb311(13)*abb311(14)
      abb311(16)=-abb311(12)*abb311(15)*spbk2k1
      abb311(17)=c1*abb311(3)*spak2k4
      abb311(18)=abb311(17)*abb311(10)
      abb311(19)=spbk2k1*abb311(18)
      abb311(20)=abb311(19)*abb311(15)
      abb311(16)=abb311(20)+abb311(16)
      abb311(20)=spbe7k1*abb311(2)
      abb311(21)=abb311(20)*spak2e7
      abb311(22)=-abb311(16)*abb311(21)
      abb311(23)=spbk2k1*abb311(7)
      abb311(24)=abb311(23)*abb311(14)
      abb311(25)=spak2k4**2
      abb311(26)=abb311(10)*spbk4k3
      abb311(27)=abb311(25)*abb311(26)
      abb311(28)=abb311(27)*c3
      abb311(29)=abb311(28)*NC
      abb311(30)=abb311(24)*abb311(29)
      abb311(31)=abb311(28)*abb311(23)
      abb311(32)=abb311(14)*abb311(3)
      abb311(33)=abb311(31)*abb311(32)
      abb311(27)=abb311(27)*c1
      abb311(34)=abb311(27)*abb311(32)
      abb311(35)=abb311(34)*abb311(23)
      abb311(30)=abb311(35)+abb311(30)-abb311(33)
      abb311(30)=abb311(30)*abb311(8)
      abb311(33)=spal6e7*abb311(2)
      abb311(35)=abb311(33)*spbe7k1
      abb311(36)=-abb311(35)*abb311(30)
      abb311(37)=-abb311(12)+abb311(18)
      abb311(37)=spbk3k2*abb311(37)
      abb311(38)=abb311(37)*abb311(35)
      abb311(39)=spak2l6*abb311(38)
      abb311(40)=abb311(11)*spbk4k3
      abb311(41)=-abb311(40)*abb311(9)
      abb311(42)=abb311(17)*abb311(26)
      abb311(41)=abb311(41)-abb311(42)
      abb311(43)=abb311(41)*abb311(35)
      abb311(44)=-spak4l6*abb311(43)
      abb311(39)=abb311(39)+abb311(44)
      abb311(39)=spbl6k1*abb311(39)
      abb311(24)=abb311(41)*abb311(24)
      abb311(20)=abb311(20)*spak4e7
      abb311(44)=abb311(24)*abb311(20)
      abb311(45)=spak4k7*spbk7k1
      abb311(46)=abb311(45)*abb311(43)
      abb311(47)=spak2k7*spbk7k1
      abb311(48)=-abb311(47)*abb311(38)
      abb311(22)=abb311(39)+abb311(48)+abb311(46)+abb311(36)+abb311(44)+abb311(&
      &22)
      abb311(22)=spak1l5*abb311(22)
      abb311(36)=abb311(11)*abb311(5)
      abb311(39)=abb311(36)*spbk2k1
      abb311(44)=abb311(3)*abb311(39)
      abb311(46)=abb311(39)*NC
      abb311(44)=abb311(44)-abb311(46)
      abb311(44)=abb311(15)*abb311(44)
      abb311(10)=abb311(17)*abb311(10)*abb311(5)
      abb311(17)=abb311(15)*abb311(10)
      abb311(48)=abb311(17)*spbk2k1
      abb311(44)=-abb311(48)+abb311(44)
      abb311(48)=spbe7k2*abb311(2)
      abb311(49)=abb311(44)*abb311(48)
      abb311(50)=abb311(49)*spak2l6
      abb311(51)=abb311(36)*spbk4k3
      abb311(52)=abb311(51)*abb311(23)
      abb311(53)=abb311(52)*abb311(32)
      abb311(54)=spbk2k1*abb311(5)
      abb311(55)=abb311(42)*abb311(54)
      abb311(56)=abb311(14)*abb311(7)
      abb311(57)=abb311(56)*abb311(55)
      abb311(58)=abb311(14)*NC
      abb311(59)=abb311(51)*abb311(58)
      abb311(60)=abb311(59)*abb311(23)
      abb311(53)=-abb311(60)+abb311(53)-abb311(57)
      abb311(57)=abb311(53)*abb311(48)
      abb311(60)=abb311(57)*spak4l6
      abb311(50)=abb311(50)+abb311(60)
      abb311(60)=spbl6k1*abb311(50)
      abb311(61)=abb311(28)*abb311(3)
      abb311(62)=abb311(27)*abb311(3)
      abb311(61)=-abb311(61)+abb311(62)+abb311(29)
      abb311(63)=mB**4
      abb311(64)=abb311(63)*abb311(48)*abb311(8)
      abb311(65)=abb311(23)**2
      abb311(66)=abb311(65)*abb311(5)*abb311(61)*abb311(64)
      abb311(67)=-abb311(45)*abb311(57)
      abb311(68)=-abb311(47)*abb311(49)
      abb311(60)=abb311(68)+abb311(67)+abb311(66)+abb311(60)
      abb311(60)=spak1e7*abb311(60)
      abb311(66)=spak2e7*abb311(2)
      abb311(67)=abb311(66)*abb311(44)
      abb311(68)=spak4e7*abb311(2)
      abb311(69)=abb311(68)*abb311(53)
      abb311(67)=abb311(67)+abb311(69)
      abb311(67)=abb311(67)*spbe7l5
      abb311(69)=spal5k7*abb311(67)
      abb311(70)=abb311(20)*abb311(53)
      abb311(71)=abb311(44)*abb311(21)
      abb311(70)=abb311(70)+abb311(71)
      abb311(70)=2.0_ki*abb311(70)
      abb311(71)=spak1k7*abb311(70)
      abb311(69)=abb311(71)-2.0_ki*abb311(69)
      abb311(69)=spbk7k2*abb311(69)
      abb311(57)=spak4k7*abb311(57)
      abb311(49)=spak2k7*abb311(49)
      abb311(49)=abb311(57)+abb311(49)
      abb311(49)=spbk7l5*abb311(49)
      abb311(50)=-spbl6l5*abb311(50)
      abb311(57)=abb311(7)**2
      abb311(71)=abb311(57)*abb311(28)
      abb311(72)=abb311(71)*abb311(3)
      abb311(73)=abb311(29)*abb311(57)
      abb311(72)=abb311(72)-abb311(73)
      abb311(74)=-spbk2k1*abb311(72)
      abb311(75)=abb311(57)*spbk2k1
      abb311(76)=abb311(62)*abb311(75)
      abb311(74)=abb311(76)+abb311(74)
      abb311(64)=abb311(74)*abb311(64)
      abb311(49)=abb311(50)+abb311(49)+abb311(64)
      abb311(49)=spal5e7*abb311(49)
      abb311(50)=abb311(59)*abb311(7)
      abb311(64)=abb311(42)*abb311(5)
      abb311(74)=abb311(64)*abb311(56)
      abb311(76)=abb311(51)*abb311(7)
      abb311(77)=abb311(76)*abb311(32)
      abb311(50)=-abb311(77)+abb311(50)+abb311(74)
      abb311(74)=spbk2k1**2
      abb311(77)=spak1k4*abb311(50)*abb311(74)
      abb311(16)=abb311(16)*spak2l5
      abb311(24)=abb311(24)*spak4l5
      abb311(16)=abb311(77)+abb311(24)-abb311(16)
      abb311(24)=abb311(39)*spbk3k2
      abb311(77)=abb311(24)*abb311(32)
      abb311(78)=abb311(14)*spbk3k2
      abb311(79)=abb311(78)*abb311(46)
      abb311(80)=spbk3k2*spbk2k1
      abb311(81)=abb311(10)*abb311(80)
      abb311(82)=abb311(81)*abb311(14)
      abb311(77)=-abb311(82)+abb311(77)-abb311(79)
      abb311(79)=spak2l6*abb311(77)
      abb311(82)=abb311(46)*spbk4k3
      abb311(82)=abb311(82)+abb311(55)
      abb311(83)=-abb311(14)*abb311(82)
      abb311(84)=abb311(39)*spbk4k3
      abb311(85)=abb311(32)*abb311(84)
      abb311(83)=abb311(85)+abb311(83)
      abb311(85)=spak4l6*abb311(83)
      abb311(79)=abb311(85)+abb311(79)-abb311(16)
      abb311(85)=abb311(33)*spbe7l6
      abb311(86)=2.0_ki*abb311(85)
      abb311(79)=abb311(86)*abb311(79)
      abb311(87)=abb311(5)**2
      abb311(88)=abb311(63)*abb311(87)
      abb311(89)=abb311(88)*abb311(23)
      abb311(90)=-abb311(89)*abb311(41)
      abb311(91)=2.0_ki*abb311(6)
      abb311(92)=abb311(48)*spak4e7
      abb311(93)=abb311(92)*abb311(90)*abb311(91)
      abb311(94)=-abb311(36)*abb311(9)
      abb311(95)=abb311(94)-abb311(10)
      abb311(96)=-abb311(78)*abb311(95)
      abb311(97)=abb311(96)*abb311(35)
      abb311(93)=abb311(93)+abb311(97)
      abb311(86)=abb311(44)*abb311(86)
      abb311(86)=abb311(86)+abb311(93)
      abb311(86)=es12*abb311(86)
      abb311(98)=abb311(21)*abb311(37)
      abb311(99)=abb311(20)*abb311(41)
      abb311(98)=abb311(98)-abb311(99)
      abb311(99)=abb311(98)*spak1l5
      abb311(100)=abb311(32)*abb311(51)
      abb311(101)=abb311(64)*abb311(14)
      abb311(59)=-abb311(59)+abb311(100)-abb311(101)
      abb311(100)=abb311(59)*abb311(92)
      abb311(100)=abb311(100)+abb311(99)
      abb311(101)=2.0_ki*spal6k7
      abb311(100)=spbk7k1*abb311(100)*abb311(101)
      abb311(102)=abb311(52)*abb311(9)
      abb311(103)=abb311(7)*abb311(55)
      abb311(102)=abb311(103)+abb311(102)
      abb311(102)=abb311(63)*abb311(102)
      abb311(103)=abb311(6)*spak2l6
      abb311(88)=-abb311(103)*abb311(88)*spbk2k1*abb311(41)
      abb311(88)=abb311(102)+abb311(88)
      abb311(88)=abb311(92)*abb311(88)
      abb311(102)=es712-es71
      abb311(93)=-abb311(93)*abb311(102)
      abb311(104)=-abb311(77)*abb311(66)
      abb311(105)=-abb311(83)*abb311(68)
      abb311(104)=abb311(105)+abb311(104)
      abb311(105)=spal5l6*spbe7l5
      abb311(104)=abb311(104)*abb311(105)
      abb311(106)=abb311(77)*abb311(21)
      abb311(107)=abb311(83)*abb311(20)
      abb311(106)=abb311(107)+abb311(106)
      abb311(106)=spak1l6*abb311(106)
      abb311(35)=abb311(59)*abb311(35)
      abb311(107)=spbk7k2*spak4k7
      abb311(108)=-abb311(107)*abb311(35)
      abb311(109)=spak4l6*abb311(35)
      abb311(110)=-spak2l6*abb311(97)
      abb311(109)=abb311(110)+abb311(109)
      abb311(109)=spbl6k2*abb311(109)
      abb311(22)=abb311(100)+abb311(109)+abb311(60)+abb311(86)+abb311(108)+abb3&
      &11(106)+abb311(104)+abb311(79)+abb311(49)+abb311(93)+abb311(88)+abb311(6&
      &9)+abb311(22)
      abb311(22)=2.0_ki*abb311(22)
      abb311(49)=-mB*abb311(9)
      abb311(60)=-abb311(84)*abb311(49)
      abb311(42)=abb311(42)*mB
      abb311(69)=abb311(42)*abb311(54)
      abb311(60)=abb311(69)+abb311(60)
      abb311(69)=abb311(60)*spak4l6
      abb311(79)=-abb311(24)*abb311(49)
      abb311(86)=mB*abb311(10)
      abb311(88)=abb311(86)*abb311(80)
      abb311(79)=abb311(79)+abb311(88)
      abb311(88)=abb311(79)*spak2l6
      abb311(69)=abb311(69)+abb311(88)
      abb311(88)=abb311(69)*spbl6k1
      abb311(93)=mB**3
      abb311(100)=abb311(93)*NC
      abb311(104)=abb311(93)*abb311(3)
      abb311(106)=abb311(100)-abb311(104)
      abb311(26)=abb311(26)*abb311(7)
      abb311(108)=abb311(26)*abb311(25)*c3
      abb311(109)=abb311(106)*abb311(108)
      abb311(25)=abb311(26)*abb311(25)*c1
      abb311(26)=abb311(104)*abb311(25)
      abb311(26)=abb311(109)+abb311(26)
      abb311(74)=abb311(8)*abb311(26)*abb311(74)*abb311(5)
      abb311(109)=abb311(47)*abb311(79)
      abb311(110)=abb311(45)*abb311(60)
      abb311(74)=abb311(74)-abb311(88)+abb311(109)+abb311(110)
      abb311(88)=spak1l6*abb311(74)
      abb311(109)=2.0_ki*abb311(2)
      abb311(16)=abb311(109)*abb311(16)
      abb311(77)=-abb311(77)*abb311(109)
      abb311(24)=-abb311(104)*abb311(24)
      abb311(81)=abb311(93)*abb311(81)
      abb311(110)=abb311(93)*spbk3k2
      abb311(111)=abb311(46)*abb311(110)
      abb311(24)=abb311(77)+abb311(111)+abb311(24)+abb311(81)
      abb311(24)=spak2l6*abb311(24)
      abb311(77)=abb311(44)*abb311(109)
      abb311(39)=abb311(104)*abb311(39)
      abb311(81)=abb311(93)*spbk2k1
      abb311(10)=abb311(81)*abb311(10)
      abb311(10)=abb311(10)-abb311(39)
      abb311(10)=abb311(13)*abb311(10)
      abb311(39)=abb311(93)*abb311(13)
      abb311(46)=abb311(39)*abb311(46)
      abb311(10)=abb311(10)+abb311(46)
      abb311(46)=-abb311(12)*abb311(80)
      abb311(19)=spbk3k2*abb311(19)
      abb311(19)=abb311(46)+abb311(19)
      abb311(46)=abb311(87)*abb311(93)
      abb311(19)=abb311(46)*abb311(19)
      abb311(80)=abb311(19)*abb311(103)
      abb311(111)=abb311(10)+abb311(80)
      abb311(112)=-abb311(77)-abb311(111)
      abb311(112)=es12*abb311(112)
      abb311(113)=abb311(69)*spbl6l5
      abb311(31)=abb311(106)*abb311(31)
      abb311(27)=abb311(27)*abb311(104)
      abb311(114)=abb311(27)*abb311(23)
      abb311(31)=abb311(114)+abb311(31)
      abb311(31)=abb311(31)*abb311(8)
      abb311(31)=abb311(31)+abb311(113)
      abb311(113)=spal5l6*abb311(31)
      abb311(111)=abb311(111)*abb311(102)
      abb311(83)=-abb311(83)*abb311(109)
      abb311(82)=abb311(93)*abb311(82)
      abb311(84)=-abb311(84)*abb311(104)
      abb311(82)=abb311(83)+abb311(84)+abb311(82)
      abb311(82)=spak4l6*abb311(82)
      abb311(11)=abb311(11)*mB
      abb311(83)=-abb311(9)*abb311(11)
      abb311(84)=mB*abb311(18)
      abb311(83)=abb311(83)-abb311(84)
      abb311(13)=abb311(13)*abb311(83)
      abb311(83)=-spbk2k1*abb311(13)
      abb311(114)=abb311(83)*spak1l5
      abb311(115)=-spak2l6*abb311(114)
      abb311(40)=abb311(49)*abb311(40)
      abb311(40)=abb311(42)-abb311(40)
      abb311(116)=abb311(23)*abb311(40)
      abb311(117)=abb311(116)*spak1l5
      abb311(118)=-spak4l6*abb311(117)
      abb311(115)=abb311(115)+abb311(118)
      abb311(115)=spbl6k1*abb311(115)
      abb311(46)=abb311(46)*spbk2k1
      abb311(118)=-abb311(46)*abb311(41)
      abb311(103)=abb311(118)*abb311(103)
      abb311(52)=-abb311(52)*abb311(106)
      abb311(119)=abb311(93)*abb311(7)
      abb311(55)=abb311(119)*abb311(55)
      abb311(52)=abb311(52)-abb311(55)
      abb311(55)=abb311(103)-abb311(52)
      abb311(120)=-abb311(55)*abb311(107)
      abb311(121)=abb311(6)*abb311(19)*spak2l6**2
      abb311(122)=spak4l6*abb311(103)
      abb311(121)=abb311(121)+abb311(122)
      abb311(121)=spbl6k2*abb311(121)
      abb311(122)=abb311(60)*spal5l6
      abb311(123)=-spak4k7*abb311(122)
      abb311(124)=abb311(79)*spal5l6
      abb311(125)=-spak2k7*abb311(124)
      abb311(123)=abb311(123)+abb311(125)
      abb311(123)=spbk7l5*abb311(123)
      abb311(125)=abb311(28)*abb311(106)
      abb311(125)=abb311(27)+abb311(125)
      abb311(65)=abb311(8)*spak1l5*abb311(65)*abb311(125)
      abb311(125)=abb311(45)*abb311(117)
      abb311(126)=abb311(47)*abb311(114)
      abb311(16)=abb311(123)+abb311(121)+abb311(112)+abb311(120)+abb311(88)+abb&
      &311(126)+abb311(125)+abb311(115)+abb311(65)+abb311(24)+abb311(82)+abb311&
      &(16)+abb311(111)+abb311(113)
      abb311(16)=4.0_ki*abb311(16)
      abb311(24)=spak2e7*spbe7k1
      abb311(65)=abb311(24)*abb311(79)
      abb311(82)=spak4e7*spbe7k1
      abb311(88)=abb311(82)*abb311(60)
      abb311(65)=abb311(65)+abb311(88)
      abb311(88)=abb311(65)*spak1l6
      abb311(111)=abb311(116)*abb311(82)
      abb311(112)=abb311(83)*abb311(24)
      abb311(111)=abb311(111)+abb311(112)
      abb311(111)=abb311(111)*spak1l5
      abb311(88)=abb311(88)+abb311(111)
      abb311(112)=spbe7k2*spak4e7
      abb311(113)=abb311(112)*abb311(55)
      abb311(115)=abb311(60)*spak4e7
      abb311(120)=abb311(79)*spak2e7
      abb311(115)=abb311(115)+abb311(120)
      abb311(120)=abb311(115)*spbe7l5
      abb311(121)=spal5l6*abb311(120)
      abb311(113)=abb311(121)+abb311(113)-abb311(88)
      abb311(113)=8.0_ki*abb311(113)
      abb311(121)=-abb311(52)*abb311(112)
      abb311(111)=abb311(121)-abb311(111)
      abb311(111)=4.0_ki*abb311(111)
      abb311(121)=abb311(92)*abb311(53)
      abb311(123)=abb311(38)*spak2l5
      abb311(125)=abb311(43)*spak4l5
      abb311(123)=abb311(123)-abb311(125)
      abb311(121)=abb311(121)+abb311(123)
      abb311(121)=4.0_ki*abb311(121)
      abb311(125)=abb311(116)*spak4l5
      abb311(83)=abb311(83)*spak2l5
      abb311(69)=abb311(69)+abb311(125)+abb311(83)
      abb311(83)=8.0_ki*abb311(69)
      abb311(125)=abb311(52)*spak4e7
      abb311(126)=abb311(10)*spak2e7
      abb311(125)=abb311(125)-abb311(126)
      abb311(105)=-abb311(125)*abb311(105)
      abb311(126)=abb311(52)*abb311(82)
      abb311(127)=-abb311(10)*abb311(24)
      abb311(126)=abb311(126)+abb311(127)
      abb311(126)=spak1l6*abb311(126)
      abb311(105)=abb311(126)+abb311(105)
      abb311(105)=abb311(8)*abb311(105)
      abb311(23)=-abb311(41)*abb311(87)*abb311(23)*mB**5
      abb311(87)=-abb311(90)*abb311(109)
      abb311(23)=abb311(87)+abb311(23)
      abb311(87)=abb311(112)*abb311(6)
      abb311(23)=abb311(23)*abb311(87)
      abb311(44)=-abb311(44)*abb311(33)
      abb311(90)=-spal6e7*abb311(80)
      abb311(44)=abb311(44)+abb311(90)
      abb311(90)=2.0_ki*spbe7l6
      abb311(44)=abb311(44)*abb311(90)
      abb311(126)=spak4l5*abb311(6)
      abb311(35)=-abb311(35)*abb311(126)
      abb311(23)=abb311(35)+abb311(44)+abb311(97)+abb311(23)+abb311(105)
      abb311(23)=4.0_ki*abb311(23)
      abb311(35)=abb311(118)*spak4l6
      abb311(44)=-abb311(6)*abb311(35)
      abb311(52)=abb311(52)*abb311(126)
      abb311(10)=abb311(52)+abb311(44)+abb311(80)+abb311(77)-abb311(10)
      abb311(10)=8.0_ki*abb311(10)
      abb311(44)=abb311(53)*abb311(109)
      abb311(44)=abb311(44)-abb311(55)
      abb311(44)=abb311(112)*abb311(44)
      abb311(52)=-abb311(120)-abb311(98)
      abb311(52)=spal5l6*abb311(52)
      abb311(44)=abb311(52)+abb311(123)+abb311(44)+abb311(88)
      abb311(44)=2.0_ki*abb311(44)
      abb311(52)=-4.0_ki*abb311(69)
      abb311(55)=-spak1e7*abb311(74)
      abb311(69)=spak4k7*abb311(60)
      abb311(74)=spak2k7*abb311(79)
      abb311(69)=abb311(69)+abb311(74)
      abb311(69)=spbk7l5*abb311(69)
      abb311(31)=abb311(69)-abb311(31)
      abb311(31)=spal5e7*abb311(31)
      abb311(69)=abb311(102)-es12
      abb311(74)=-abb311(19)*abb311(69)
      abb311(77)=abb311(118)*abb311(107)
      abb311(74)=abb311(77)+abb311(74)
      abb311(77)=abb311(6)*spak2e7
      abb311(74)=abb311(77)*abb311(74)
      abb311(80)=-spak2e7*abb311(80)
      abb311(35)=-abb311(77)*abb311(35)
      abb311(35)=abb311(80)+abb311(35)
      abb311(35)=spbl6k2*abb311(35)
      abb311(31)=abb311(35)+abb311(55)+abb311(74)+abb311(31)
      abb311(31)=2.0_ki*abb311(31)
      abb311(35)=4.0_ki*abb311(115)
      abb311(55)=spak4e7*abb311(118)
      abb311(19)=spak2e7*abb311(19)
      abb311(19)=abb311(55)+abb311(19)
      abb311(19)=4.0_ki*abb311(6)*abb311(19)
      abb311(55)=2.0_ki*abb311(115)
      abb311(28)=abb311(28)*abb311(32)
      abb311(14)=abb311(29)*abb311(14)
      abb311(14)=-abb311(34)+abb311(28)-abb311(14)
      abb311(14)=abb311(14)*abb311(6)
      abb311(28)=-abb311(54)*abb311(14)
      abb311(28)=abb311(28)+abb311(30)
      abb311(28)=abb311(33)*abb311(28)
      abb311(29)=abb311(37)*abb311(33)
      abb311(30)=-spak2l6*abb311(29)
      abb311(34)=abb311(41)*abb311(33)
      abb311(74)=spak4l6*abb311(34)
      abb311(30)=abb311(30)+abb311(74)
      abb311(30)=spbl6k1*abb311(30)
      abb311(74)=abb311(29)*spak2l5
      abb311(77)=abb311(34)*spak4l5
      abb311(74)=abb311(74)-abb311(77)
      abb311(77)=-spbl5k1*abb311(74)
      abb311(80)=-abb311(45)*abb311(34)
      abb311(88)=abb311(47)*abb311(29)
      abb311(28)=abb311(77)+abb311(88)+abb311(80)+abb311(30)+abb311(28)
      abb311(28)=2.0_ki*abb311(28)
      abb311(30)=abb311(39)*abb311(95)
      abb311(39)=abb311(30)*abb311(69)
      abb311(69)=spak2l6*abb311(110)*abb311(95)
      abb311(77)=-abb311(51)*abb311(106)
      abb311(80)=-abb311(93)*abb311(64)
      abb311(77)=abb311(80)+abb311(77)
      abb311(77)=spak4l6*abb311(77)
      abb311(76)=-abb311(76)*abb311(106)
      abb311(64)=abb311(119)*abb311(64)
      abb311(64)=abb311(76)-abb311(64)
      abb311(76)=-abb311(64)*abb311(107)
      abb311(39)=abb311(76)+abb311(77)+abb311(69)+abb311(39)
      abb311(39)=spbe7k1*abb311(39)
      abb311(62)=-abb311(57)*abb311(62)
      abb311(62)=abb311(62)+abb311(72)
      abb311(62)=abb311(48)*abb311(63)*abb311(54)*abb311(62)
      abb311(63)=abb311(73)*abb311(81)
      abb311(69)=abb311(75)*abb311(27)
      abb311(72)=abb311(71)*abb311(104)
      abb311(73)=abb311(72)*spbk2k1
      abb311(63)=-abb311(73)+abb311(63)+abb311(69)
      abb311(69)=spak1l5*spbe7k1
      abb311(73)=-abb311(63)*abb311(69)
      abb311(62)=abb311(62)+abb311(73)
      abb311(62)=abb311(8)*abb311(62)
      abb311(73)=-abb311(15)*abb311(94)
      abb311(17)=abb311(73)+abb311(17)
      abb311(73)=abb311(17)*abb311(48)
      abb311(75)=spak2l6*abb311(73)
      abb311(76)=abb311(50)*abb311(48)
      abb311(77)=abb311(7)*abb311(40)
      abb311(80)=abb311(69)*abb311(77)
      abb311(80)=abb311(80)+abb311(76)
      abb311(81)=spak4l6*abb311(80)
      abb311(88)=abb311(13)*spak2l6
      abb311(93)=-abb311(69)*abb311(88)
      abb311(75)=abb311(81)+abb311(75)+abb311(93)
      abb311(75)=spbl6k1*abb311(75)
      abb311(76)=spak4l5*abb311(76)
      abb311(81)=spak2l5*abb311(73)
      abb311(76)=abb311(76)+abb311(81)
      abb311(76)=spbl5k1*abb311(76)
      abb311(81)=-abb311(6)*abb311(48)*abb311(89)*abb311(61)
      abb311(80)=-abb311(80)*abb311(45)
      abb311(69)=abb311(13)*abb311(69)
      abb311(69)=-abb311(73)+abb311(69)
      abb311(69)=abb311(69)*abb311(47)
      abb311(39)=abb311(76)+abb311(69)+abb311(80)+abb311(75)+abb311(62)+abb311(&
      &81)+abb311(39)
      abb311(39)=2.0_ki*abb311(39)
      abb311(62)=abb311(77)*spak4l5
      abb311(69)=abb311(13)*spak2l5
      abb311(62)=abb311(62)-abb311(69)
      abb311(69)=-spbe7k1*abb311(62)
      abb311(73)=4.0_ki*abb311(69)
      abb311(75)=-abb311(64)*abb311(126)
      abb311(75)=-abb311(30)+abb311(75)
      abb311(75)=4.0_ki*spbe7k1*abb311(75)
      abb311(69)=-2.0_ki*abb311(69)
      abb311(36)=abb311(9)*spbk3k2*abb311(36)*mB
      abb311(76)=abb311(86)*spbk3k2
      abb311(36)=abb311(76)+abb311(36)
      abb311(76)=abb311(36)*spak2l5
      abb311(49)=-abb311(51)*abb311(49)
      abb311(42)=abb311(42)*abb311(5)
      abb311(42)=abb311(49)+abb311(42)
      abb311(49)=abb311(42)*spak4l5
      abb311(49)=abb311(76)+abb311(49)
      abb311(49)=abb311(49)*spbl5k1
      abb311(51)=abb311(36)*spak2l6
      abb311(76)=abb311(42)*spak4l6
      abb311(51)=abb311(51)+abb311(76)
      abb311(76)=abb311(51)*spbl6k1
      abb311(80)=abb311(47)*abb311(36)
      abb311(81)=abb311(45)*abb311(42)
      abb311(54)=-abb311(54)*abb311(26)
      abb311(86)=abb311(54)*abb311(8)
      abb311(49)=abb311(49)-abb311(80)-abb311(81)+abb311(76)+abb311(86)
      abb311(46)=abb311(46)*abb311(61)
      abb311(61)=abb311(46)*abb311(6)
      abb311(76)=abb311(61)-abb311(49)
      abb311(76)=2.0_ki*abb311(76)
      abb311(80)=abb311(62)*spbl5k1
      abb311(81)=abb311(77)*spak4l6
      abb311(81)=abb311(81)-abb311(88)
      abb311(86)=abb311(81)*spbl6k1
      abb311(63)=abb311(63)*abb311(8)
      abb311(47)=abb311(47)*abb311(13)
      abb311(45)=abb311(45)*abb311(77)
      abb311(54)=abb311(54)*abb311(6)
      abb311(45)=abb311(54)+abb311(80)+abb311(86)-abb311(63)+abb311(47)-abb311(&
      &45)
      abb311(47)=-2.0_ki*abb311(45)
      abb311(54)=2.0_ki*es12
      abb311(63)=abb311(102)-abb311(54)
      abb311(80)=-abb311(17)*abb311(63)
      abb311(86)=spak4l6*abb311(59)
      abb311(88)=abb311(50)*abb311(107)
      abb311(89)=-spak1k4*abb311(53)
      abb311(93)=-spak2l6*abb311(96)
      abb311(56)=abb311(41)*abb311(56)
      abb311(94)=spak4l5*abb311(56)
      abb311(12)=abb311(12)*abb311(15)
      abb311(15)=abb311(7)*abb311(78)*abb311(18)
      abb311(12)=abb311(15)-abb311(12)
      abb311(15)=-spak2l5*abb311(12)
      abb311(15)=abb311(89)+abb311(88)+abb311(15)+abb311(94)+abb311(93)+abb311(&
      &86)+abb311(80)
      abb311(15)=2.0_ki*abb311(48)*abb311(15)
      abb311(18)=abb311(51)*spbl6k2
      abb311(48)=abb311(107)*abb311(42)
      abb311(9)=abb311(9)*abb311(11)*spbk3k2
      abb311(11)=abb311(84)*spbk3k2
      abb311(9)=abb311(11)+abb311(9)
      abb311(11)=abb311(9)*spak2l5
      abb311(51)=abb311(40)*spak4l5
      abb311(11)=abb311(18)-abb311(48)+abb311(11)+abb311(51)
      abb311(18)=abb311(60)*spak1k4
      abb311(48)=abb311(36)*abb311(63)
      abb311(48)=-abb311(18)+abb311(48)+abb311(11)
      abb311(48)=2.0_ki*abb311(48)
      abb311(51)=abb311(50)*abb311(20)
      abb311(17)=abb311(17)*abb311(21)
      abb311(17)=abb311(51)+abb311(17)
      abb311(17)=spbk7k2*abb311(17)
      abb311(51)=abb311(24)*abb311(13)
      abb311(78)=abb311(82)*abb311(77)
      abb311(51)=abb311(51)-abb311(78)
      abb311(78)=abb311(51)*spak1l5
      abb311(80)=abb311(64)*abb311(112)
      abb311(78)=abb311(78)-abb311(80)
      abb311(84)=-spbk7k1*abb311(78)
      abb311(17)=abb311(84)+abb311(17)
      abb311(17)=4.0_ki*abb311(17)
      abb311(50)=-4.0_ki*spbk7k2*abb311(50)*abb311(92)
      abb311(84)=-spal5k7*abb311(120)
      abb311(65)=spak1k7*abb311(65)
      abb311(86)=-spak2k7*abb311(118)*abb311(87)
      abb311(65)=abb311(65)+abb311(86)+abb311(84)
      abb311(65)=4.0_ki*abb311(65)
      abb311(84)=abb311(24)*abb311(36)
      abb311(86)=abb311(42)*abb311(82)
      abb311(84)=abb311(84)+abb311(86)
      abb311(86)=-4.0_ki*abb311(84)
      abb311(87)=abb311(42)*abb311(112)
      abb311(88)=4.0_ki*abb311(87)
      abb311(89)=spbe7l6*spal6e7
      abb311(93)=abb311(89)*abb311(60)
      abb311(94)=-spak4l5*abb311(93)
      abb311(95)=abb311(79)*spak2l5
      abb311(97)=-abb311(89)*abb311(95)
      abb311(94)=abb311(94)+abb311(97)
      abb311(94)=4.0_ki*abb311(94)
      abb311(97)=spak4l5*abb311(60)
      abb311(95)=abb311(97)+abb311(95)
      abb311(95)=8.0_ki*abb311(95)
      abb311(97)=-spbe7l5*spak2l5*abb311(125)
      abb311(64)=-abb311(64)*abb311(82)
      abb311(24)=-abb311(30)*abb311(24)
      abb311(24)=abb311(64)+abb311(24)
      abb311(24)=es12*abb311(24)
      abb311(24)=abb311(24)+abb311(97)
      abb311(24)=abb311(8)*abb311(24)
      abb311(30)=-abb311(59)*abb311(20)
      abb311(46)=abb311(46)*abb311(89)*abb311(91)
      abb311(59)=-spbl6k1*abb311(78)
      abb311(64)=abb311(96)*abb311(21)
      abb311(24)=abb311(59)+abb311(46)+abb311(30)+abb311(64)+abb311(24)
      abb311(24)=2.0_ki*abb311(24)
      abb311(30)=-3.0_ki*abb311(61)+abb311(49)
      abb311(30)=4.0_ki*abb311(30)
      abb311(46)=8.0_ki*abb311(84)
      abb311(49)=-2.0_ki*abb311(84)
      abb311(54)=-abb311(36)*abb311(89)*abb311(54)
      abb311(59)=spak1k4*abb311(93)
      abb311(54)=-2.0_ki*abb311(59)-abb311(99)+abb311(54)
      abb311(54)=2.0_ki*abb311(54)
      abb311(59)=4.0_ki*es12-abb311(102)
      abb311(59)=abb311(36)*abb311(59)
      abb311(11)=3.0_ki*abb311(18)+abb311(59)-abb311(11)
      abb311(11)=4.0_ki*abb311(11)
      abb311(18)=-8.0_ki*abb311(87)
      abb311(59)=4.0_ki*abb311(89)
      abb311(61)=abb311(59)*abb311(36)
      abb311(64)=abb311(80)*abb311(8)
      abb311(61)=abb311(61)+abb311(64)
      abb311(64)=4.0_ki*abb311(61)
      abb311(78)=-32.0_ki*abb311(36)
      abb311(80)=2.0_ki*abb311(87)
      abb311(82)=-4.0_ki*spal6k7*abb311(98)
      abb311(84)=4.0_ki*abb311(51)
      abb311(87)=2.0_ki*abb311(51)
      abb311(20)=-abb311(56)*abb311(20)
      abb311(12)=abb311(12)*abb311(21)
      abb311(12)=abb311(67)+abb311(20)+abb311(12)
      abb311(12)=2.0_ki*abb311(12)
      abb311(20)=4.0_ki*abb311(45)
      abb311(21)=-8.0_ki*abb311(51)
      abb311(45)=abb311(66)*abb311(37)
      abb311(51)=abb311(41)*abb311(68)
      abb311(45)=abb311(45)-abb311(51)
      abb311(51)=-abb311(45)*abb311(101)
      abb311(34)=spak4k7*abb311(34)
      abb311(29)=-spak2k7*abb311(29)
      abb311(29)=abb311(51)+abb311(34)+abb311(29)
      abb311(29)=spbk7e7*abb311(29)
      abb311(14)=-abb311(5)*abb311(14)
      abb311(34)=abb311(58)-abb311(32)
      abb311(34)=abb311(108)*abb311(34)
      abb311(25)=abb311(32)*abb311(25)
      abb311(25)=abb311(25)+abb311(34)
      abb311(25)=abb311(8)*abb311(25)
      abb311(14)=abb311(25)+abb311(14)
      abb311(14)=abb311(33)*spbe7k2*abb311(14)
      abb311(25)=spak2l6*abb311(37)
      abb311(32)=-spak4l6*abb311(41)
      abb311(25)=abb311(32)+abb311(25)
      abb311(25)=abb311(85)*abb311(25)
      abb311(32)=-spbe7l5*abb311(74)
      abb311(34)=abb311(56)*abb311(92)
      abb311(43)=spak1k4*abb311(43)
      abb311(38)=-spak1k2*abb311(38)
      abb311(14)=abb311(38)+abb311(43)+abb311(32)+abb311(34)+abb311(25)+abb311(&
      &14)+abb311(29)
      abb311(14)=2.0_ki*abb311(14)
      abb311(25)=-abb311(37)*abb311(109)
      abb311(9)=abb311(25)-abb311(9)
      abb311(9)=spak2l6*abb311(9)
      abb311(25)=abb311(41)*abb311(109)
      abb311(25)=abb311(25)-abb311(40)
      abb311(25)=spak4l6*abb311(25)
      abb311(29)=-spbl5k2*abb311(62)
      abb311(32)=abb311(13)*abb311(63)
      abb311(34)=abb311(77)*abb311(107)
      abb311(37)=spak1k4*abb311(116)
      abb311(9)=abb311(29)+abb311(37)+abb311(34)+abb311(9)+abb311(25)+abb311(32)
      abb311(9)=4.0_ki*abb311(9)
      abb311(25)=abb311(112)*abb311(77)
      abb311(29)=-8.0_ki*abb311(25)
      abb311(32)=-4.0_ki*abb311(25)
      abb311(25)=2.0_ki*abb311(25)
      abb311(34)=2.0_ki*abb311(45)
      abb311(37)=-spak1k4*abb311(77)
      abb311(38)=spak1k2*abb311(13)
      abb311(37)=abb311(38)+abb311(37)
      abb311(37)=spbe7k1*abb311(37)
      abb311(27)=abb311(57)*abb311(27)
      abb311(38)=abb311(100)*abb311(71)
      abb311(27)=abb311(38)-abb311(72)+abb311(27)
      abb311(27)=abb311(8)*abb311(27)
      abb311(26)=abb311(6)*abb311(5)*abb311(26)
      abb311(26)=abb311(27)+abb311(26)
      abb311(26)=spbe7k2*abb311(26)
      abb311(27)=-spbe7l6*abb311(81)
      abb311(38)=-spbe7l5*abb311(62)
      abb311(40)=-spak4k7*abb311(77)
      abb311(41)=spak2k7*abb311(13)
      abb311(40)=abb311(40)+abb311(41)
      abb311(40)=spbk7e7*abb311(40)
      abb311(26)=abb311(40)+abb311(38)+abb311(27)+abb311(26)+abb311(37)
      abb311(26)=2.0_ki*abb311(26)
      abb311(27)=abb311(77)*spak4e7
      abb311(37)=abb311(13)*spak2e7
      abb311(27)=abb311(27)-abb311(37)
      abb311(37)=-4.0_ki*spbk7e7*abb311(27)
      abb311(27)=abb311(27)*abb311(90)
      abb311(38)=-abb311(59)*abb311(122)
      abb311(40)=8.0_ki*abb311(122)
      abb311(33)=-abb311(53)*abb311(33)
      abb311(41)=-spal6e7*abb311(103)
      abb311(33)=abb311(33)+abb311(41)
      abb311(33)=4.0_ki*spbe7l6*abb311(33)
      abb311(41)=abb311(2)*abb311(53)
      abb311(41)=abb311(41)+abb311(103)
      abb311(41)=8.0_ki*abb311(41)
      abb311(43)=abb311(42)*abb311(89)
      abb311(43)=8.0_ki*abb311(43)
      abb311(42)=16.0_ki*abb311(42)
      abb311(45)=abb311(89)*abb311(117)
      abb311(51)=spak1l6*abb311(93)
      abb311(45)=abb311(45)+abb311(51)
      abb311(45)=4.0_ki*abb311(45)
      abb311(51)=-spak1l6*abb311(60)
      abb311(51)=-abb311(117)+abb311(51)
      abb311(51)=8.0_ki*abb311(51)
      abb311(53)=-abb311(77)*abb311(59)
      abb311(56)=8.0_ki*abb311(77)
      abb311(57)=-abb311(59)*abb311(124)
      abb311(58)=8.0_ki*abb311(124)
      abb311(60)=abb311(79)*spak1l6
      abb311(60)=abb311(60)+abb311(114)
      abb311(62)=abb311(60)*abb311(59)
      abb311(60)=-8.0_ki*abb311(60)
      abb311(61)=-2.0_ki*abb311(61)
      abb311(36)=16.0_ki*abb311(36)
      abb311(59)=abb311(13)*abb311(59)
      abb311(13)=-8.0_ki*abb311(13)
      R2d311=0.0_ki
      rat2 = rat2 + R2d311
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='311' value='", &
          & R2d311, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd311h0
