module     p0_dbaru_epnebbbarg_abbrevd316h5
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh5
   implicit none
   private
   complex(ki), dimension(134), public :: abb316
   complex(ki), public :: R2d316
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p0_dbaru_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_color, only: TR
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb316(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb316(2)=NC**(-1)
      abb316(3)=sqrt2**(-1)
      abb316(4)=es234**(-1)
      abb316(5)=spbk7k2**(-1)
      abb316(6)=spak2l5**(-1)
      abb316(7)=spbl6k2**(-1)
      abb316(8)=spak2l6**(-1)
      abb316(9)=sqrt(mB**2)
      abb316(10)=TR*gW
      abb316(10)=abb316(10)**2*i_*CVDU*abb316(3)*abb316(1)
      abb316(11)=c1*abb316(10)*abb316(2)
      abb316(12)=abb316(11)*spak1k7
      abb316(10)=abb316(10)*c3
      abb316(13)=abb316(10)*NC
      abb316(14)=abb316(13)*spak1k7
      abb316(14)=abb316(12)+abb316(14)
      abb316(15)=spbk3k2*abb316(4)
      abb316(16)=abb316(15)*abb316(14)
      abb316(17)=mB**2
      abb316(18)=abb316(17)*abb316(6)
      abb316(19)=abb316(18)*abb316(16)
      abb316(20)=abb316(10)*abb316(6)
      abb316(21)=spak1k7*abb316(2)
      abb316(22)=abb316(20)*abb316(21)
      abb316(23)=abb316(22)*abb316(17)
      abb316(24)=abb316(23)*abb316(15)
      abb316(19)=abb316(19)-abb316(24)
      abb316(24)=spal6k7*spak2k4
      abb316(19)=abb316(19)*abb316(24)
      abb316(25)=abb316(10)*spbl5k2
      abb316(26)=abb316(25)*abb316(21)
      abb316(27)=abb316(17)*abb316(7)
      abb316(28)=abb316(27)*abb316(15)
      abb316(29)=abb316(26)*abb316(28)
      abb316(30)=abb316(27)*spbl5k2
      abb316(31)=abb316(30)*abb316(16)
      abb316(29)=abb316(31)-abb316(29)
      abb316(31)=abb316(24)*abb316(8)
      abb316(32)=abb316(29)*abb316(31)
      abb316(19)=abb316(19)-abb316(32)
      abb316(32)=abb316(6)*mB
      abb316(33)=abb316(32)*abb316(16)
      abb316(34)=abb316(22)*mB
      abb316(35)=abb316(34)*abb316(15)
      abb316(33)=abb316(33)-abb316(35)
      abb316(33)=abb316(33)*abb316(24)
      abb316(35)=abb316(33)*abb316(9)
      abb316(35)=abb316(35)-abb316(19)
      abb316(36)=abb316(10)*abb316(7)
      abb316(37)=abb316(36)*abb316(21)
      abb316(38)=abb316(17)*abb316(15)
      abb316(39)=abb316(37)*abb316(38)
      abb316(40)=abb316(27)*abb316(16)
      abb316(39)=abb316(40)-abb316(39)
      abb316(40)=spbl5k3*spak3k4
      abb316(41)=abb316(40)*spal6k7
      abb316(42)=abb316(41)*abb316(8)
      abb316(43)=abb316(39)*abb316(42)
      abb316(43)=abb316(43)-abb316(35)
      abb316(44)=spbk3k2**2
      abb316(45)=abb316(5)*abb316(4)
      abb316(46)=abb316(44)*abb316(45)
      abb316(47)=abb316(46)*abb316(7)**2*mB**4
      abb316(48)=abb316(6)*abb316(47)
      abb316(49)=abb316(48)*abb316(14)
      abb316(50)=abb316(47)*abb316(22)
      abb316(49)=abb316(49)-abb316(50)
      abb316(50)=abb316(8)*spak3k4
      abb316(49)=abb316(49)*abb316(50)
      abb316(51)=abb316(49)*es712
      abb316(52)=abb316(49)*es71
      abb316(53)=-abb316(51)+2.0_ki*abb316(52)+abb316(43)
      abb316(53)=es712*abb316(53)
      abb316(43)=-abb316(52)-abb316(43)
      abb316(43)=es71*abb316(43)
      abb316(54)=abb316(45)*spbk3k2
      abb316(55)=abb316(54)*spbl5k2
      abb316(56)=abb316(55)*abb316(14)
      abb316(57)=abb316(10)*abb316(54)
      abb316(58)=abb316(57)*abb316(21)
      abb316(59)=abb316(58)*spbl5k2
      abb316(56)=abb316(56)-abb316(59)
      abb316(60)=-spak1l6*abb316(56)*abb316(24)
      abb316(61)=abb316(54)*abb316(14)
      abb316(62)=abb316(61)-abb316(58)
      abb316(63)=abb316(40)*spak1l6
      abb316(64)=abb316(63)*abb316(62)
      abb316(65)=spal6k7*abb316(64)
      abb316(60)=abb316(60)+abb316(65)
      abb316(60)=spbk7l6*abb316(60)
      abb316(13)=abb316(11)+abb316(13)
      abb316(65)=abb316(7)*mB
      abb316(66)=abb316(65)*spbl5k2
      abb316(67)=-abb316(66)*abb316(13)
      abb316(68)=abb316(25)*abb316(2)
      abb316(69)=abb316(65)*abb316(68)
      abb316(67)=abb316(69)+abb316(67)
      abb316(69)=abb316(9)*spak2k4
      abb316(67)=abb316(69)*abb316(67)
      abb316(70)=abb316(65)*abb316(13)
      abb316(71)=abb316(36)*abb316(2)
      abb316(72)=abb316(71)*mB
      abb316(70)=-abb316(72)+abb316(70)
      abb316(72)=abb316(40)*abb316(9)
      abb316(70)=abb316(72)*abb316(70)
      abb316(67)=abb316(67)+abb316(70)
      abb316(70)=spak1k7**2
      abb316(67)=abb316(67)*abb316(70)*abb316(15)
      abb316(60)=abb316(60)+abb316(67)
      abb316(60)=spbk2k1*abb316(60)
      abb316(43)=abb316(60)+abb316(43)+abb316(53)
      abb316(51)=abb316(51)-abb316(52)
      abb316(52)=2.0_ki*es12
      abb316(53)=abb316(51)*abb316(52)
      abb316(60)=-abb316(32)*abb316(62)
      abb316(67)=2.0_ki*spbk7k3
      abb316(73)=spal6k7*spak3k4
      abb316(74)=abb316(73)*abb316(9)
      abb316(75)=-abb316(67)*abb316(74)*abb316(60)
      abb316(76)=abb316(28)*abb316(22)
      abb316(77)=abb316(27)*abb316(6)
      abb316(78)=abb316(77)*abb316(16)
      abb316(76)=abb316(78)-abb316(76)
      abb316(78)=2.0_ki*spbl6k3
      abb316(79)=-abb316(78)*abb316(76)*abb316(73)
      abb316(75)=abb316(79)+abb316(75)
      abb316(79)=es712-es71
      abb316(75)=abb316(79)*abb316(75)
      abb316(80)=abb316(54)*abb316(13)
      abb316(81)=abb316(54)*abb316(2)
      abb316(82)=abb316(81)*abb316(10)
      abb316(82)=abb316(80)-abb316(82)
      abb316(83)=abb316(82)*spak1l6
      abb316(84)=abb316(41)*abb316(83)
      abb316(85)=spbl5k2*abb316(80)
      abb316(86)=abb316(25)*abb316(81)
      abb316(85)=abb316(85)-abb316(86)
      abb316(87)=abb316(85)*abb316(24)
      abb316(88)=abb316(87)*spak1l6
      abb316(84)=abb316(84)-abb316(88)
      abb316(88)=abb316(84)*spbl6k2
      abb316(89)=abb316(13)*abb316(32)
      abb316(90)=abb316(20)*abb316(2)
      abb316(91)=abb316(90)*mB
      abb316(89)=abb316(89)-abb316(91)
      abb316(89)=abb316(74)*spak1k2*abb316(46)*abb316(89)
      abb316(88)=abb316(89)+abb316(88)
      abb316(89)=-es71*abb316(88)
      abb316(92)=spbl5k2*abb316(16)
      abb316(93)=abb316(26)*abb316(15)
      abb316(92)=abb316(92)-abb316(93)
      abb316(94)=spak2k4*abb316(92)
      abb316(21)=abb316(21)*abb316(10)
      abb316(95)=abb316(21)*abb316(15)
      abb316(95)=abb316(16)-abb316(95)
      abb316(96)=-abb316(95)*abb316(40)
      abb316(94)=abb316(94)+abb316(96)
      abb316(96)=2.0_ki*spbk7l6
      abb316(94)=abb316(96)*abb316(94)*spal6k7**2
      abb316(43)=abb316(53)+abb316(94)+abb316(89)+abb316(75)+2.0_ki*abb316(43)
      abb316(43)=4.0_ki*abb316(43)
      abb316(53)=abb316(45)*abb316(14)
      abb316(75)=abb316(77)*abb316(44)
      abb316(89)=abb316(75)*abb316(53)
      abb316(94)=abb316(27)*abb316(45)
      abb316(97)=abb316(94)*abb316(44)
      abb316(98)=abb316(97)*abb316(22)
      abb316(89)=abb316(89)-abb316(98)
      abb316(98)=abb316(89)*spak3k4
      abb316(99)=abb316(79)*abb316(98)
      abb316(100)=spak1l6*spak2k4
      abb316(101)=abb316(100)*abb316(56)
      abb316(64)=abb316(101)-abb316(64)
      abb316(64)=abb316(64)*spbk2k1
      abb316(101)=abb316(95)*abb316(41)
      abb316(92)=abb316(92)*abb316(24)
      abb316(92)=abb316(101)-abb316(92)
      abb316(99)=-abb316(64)+abb316(99)-abb316(92)
      abb316(101)=-abb316(88)+2.0_ki*abb316(99)
      abb316(101)=8.0_ki*abb316(101)
      abb316(64)=abb316(64)+abb316(92)
      abb316(64)=8.0_ki*abb316(64)
      abb316(92)=abb316(56)*spak4l6
      abb316(102)=spbk7l6*spal6k7
      abb316(103)=abb316(102)*abb316(92)
      abb316(104)=abb316(62)*spbk7l5
      abb316(105)=abb316(104)*spak4l6
      abb316(106)=spbl6k2*spal6k7
      abb316(107)=abb316(105)*abb316(106)
      abb316(103)=abb316(103)-abb316(107)
      abb316(107)=2.0_ki*abb316(9)
      abb316(33)=abb316(33)*abb316(107)
      abb316(108)=abb316(66)*abb316(16)
      abb316(93)=abb316(93)*abb316(65)
      abb316(93)=abb316(108)-abb316(93)
      abb316(108)=spak4k7*abb316(9)
      abb316(109)=abb316(108)*abb316(93)
      abb316(19)=-abb316(33)+abb316(109)+abb316(19)+abb316(103)
      abb316(19)=16.0_ki*abb316(19)
      abb316(33)=32.0_ki*abb316(92)
      abb316(109)=16.0_ki*abb316(92)
      abb316(35)=abb316(103)-abb316(35)
      abb316(103)=spak4k7*abb316(93)
      abb316(110)=spbk7k3*abb316(60)*abb316(73)
      abb316(103)=abb316(110)+abb316(103)
      abb316(103)=abb316(107)*abb316(103)
      abb316(110)=abb316(49)*abb316(52)
      abb316(35)=abb316(110)+abb316(103)-3.0_ki*abb316(51)+2.0_ki*abb316(35)
      abb316(35)=8.0_ki*abb316(35)
      abb316(51)=abb316(98)+abb316(92)
      abb316(103)=32.0_ki*abb316(51)
      abb316(49)=-16.0_ki*abb316(49)
      abb316(110)=8.0_ki*abb316(88)
      abb316(111)=abb316(26)*abb316(65)
      abb316(112)=-abb316(46)*abb316(111)
      abb316(113)=abb316(34)*abb316(46)
      abb316(114)=abb316(44)*abb316(53)
      abb316(115)=abb316(114)*abb316(32)
      abb316(113)=abb316(113)-abb316(115)
      abb316(115)=spak2l6*abb316(113)
      abb316(116)=abb316(66)*abb316(114)
      abb316(112)=abb316(115)+abb316(112)+abb316(116)
      abb316(115)=abb316(9)*spak3k4
      abb316(112)=abb316(115)*abb316(112)
      abb316(88)=abb316(88)+abb316(112)-abb316(99)
      abb316(88)=4.0_ki*abb316(88)
      abb316(92)=8.0_ki*abb316(92)
      abb316(51)=-8.0_ki*abb316(51)
      abb316(99)=abb316(4)*abb316(14)
      abb316(112)=-abb316(65)*abb316(99)
      abb316(116)=abb316(37)*mB
      abb316(117)=abb316(4)*abb316(116)
      abb316(112)=abb316(117)+abb316(112)
      abb316(117)=8.0_ki*spak3k4
      abb316(118)=abb316(117)*abb316(9)
      abb316(112)=abb316(118)*abb316(44)*abb316(112)
      abb316(48)=abb316(48)*abb316(13)
      abb316(47)=abb316(47)*abb316(90)
      abb316(47)=abb316(48)-abb316(47)
      abb316(47)=abb316(47)*abb316(50)
      abb316(48)=abb316(47)*abb316(79)
      abb316(119)=abb316(30)*abb316(15)*abb316(13)
      abb316(120)=-abb316(28)*abb316(68)
      abb316(119)=abb316(120)+abb316(119)
      abb316(119)=abb316(119)*abb316(31)
      abb316(28)=-abb316(28)*abb316(13)
      abb316(38)=abb316(38)*abb316(71)
      abb316(28)=abb316(38)+abb316(28)
      abb316(28)=abb316(28)*abb316(42)
      abb316(28)=abb316(119)+abb316(28)+abb316(48)
      abb316(28)=spak1k2*abb316(28)
      abb316(38)=abb316(18)*abb316(80)
      abb316(20)=abb316(20)*abb316(81)
      abb316(42)=abb316(20)*abb316(17)
      abb316(38)=abb316(38)-abb316(42)
      abb316(38)=abb316(38)*spak2k4
      abb316(48)=abb316(32)*abb316(80)
      abb316(119)=abb316(20)*mB
      abb316(48)=abb316(48)-abb316(119)
      abb316(119)=abb316(48)*abb316(69)
      abb316(120)=abb316(38)-abb316(119)
      abb316(120)=abb316(120)*spak1l6
      abb316(76)=abb316(76)*spak2k4
      abb316(121)=-abb316(76)+abb316(120)
      abb316(121)=es712*abb316(121)
      abb316(122)=abb316(82)*abb316(40)
      abb316(123)=abb316(85)*spak2k4
      abb316(122)=abb316(122)-abb316(123)
      abb316(123)=spbl6k1*abb316(122)*spak1l6**2
      abb316(29)=spak2k4*abb316(29)
      abb316(28)=abb316(29)+abb316(121)+abb316(28)+abb316(123)
      abb316(29)=abb316(18)*abb316(54)
      abb316(54)=-2.0_ki*abb316(29)-abb316(55)
      abb316(11)=abb316(54)*abb316(11)
      abb316(54)=abb316(57)*NC
      abb316(57)=-spbl5k2-2.0_ki*abb316(18)
      abb316(57)=abb316(57)*abb316(54)
      abb316(11)=abb316(57)+abb316(11)+2.0_ki*abb316(42)+abb316(86)
      abb316(11)=spak2k4*abb316(11)
      abb316(42)=2.0_ki*abb316(119)
      abb316(11)=abb316(11)+abb316(42)
      abb316(11)=spak1l6*abb316(11)
      abb316(57)=abb316(83)*abb316(40)
      abb316(11)=abb316(57)+2.0_ki*abb316(76)+abb316(11)
      abb316(11)=es71*abb316(11)
      abb316(39)=spak3k4*abb316(39)
      abb316(16)=abb316(65)*abb316(16)
      abb316(15)=-abb316(15)*abb316(116)
      abb316(15)=abb316(15)+abb316(16)
      abb316(15)=abb316(15)*abb316(115)
      abb316(15)=-2.0_ki*abb316(39)+abb316(15)
      abb316(15)=spbl5k3*abb316(15)
      abb316(16)=-abb316(84)*abb316(96)
      abb316(39)=abb316(30)*abb316(80)
      abb316(84)=abb316(86)*abb316(27)
      abb316(39)=abb316(39)-abb316(84)
      abb316(84)=abb316(100)*abb316(8)
      abb316(39)=abb316(39)*abb316(84)
      abb316(36)=-abb316(17)*abb316(81)*abb316(36)
      abb316(81)=abb316(27)*abb316(80)
      abb316(36)=abb316(36)+abb316(81)
      abb316(36)=abb316(8)*abb316(36)*abb316(63)
      abb316(36)=-abb316(39)+abb316(36)
      abb316(36)=abb316(36)*abb316(52)
      abb316(48)=abb316(48)*spak1l6
      abb316(52)=spbk7k3*spak3k4
      abb316(63)=abb316(52)*spak2k7
      abb316(81)=spak1k2*spak3k4
      abb316(96)=abb316(81)*spbk3k1
      abb316(63)=abb316(63)-abb316(96)
      abb316(96)=-abb316(48)*abb316(107)*abb316(63)
      abb316(115)=-abb316(93)*abb316(69)
      abb316(116)=-spak3k4*abb316(79)
      abb316(119)=-abb316(116)*abb316(77)*abb316(62)
      abb316(67)=abb316(119)*abb316(67)
      abb316(121)=abb316(77)*abb316(80)
      abb316(20)=abb316(20)*abb316(27)
      abb316(20)=abb316(121)-abb316(20)
      abb316(78)=abb316(78)*abb316(20)*spak1l6*abb316(116)
      abb316(11)=abb316(36)+abb316(78)+abb316(67)+abb316(16)+abb316(11)+abb316(&
      &15)+abb316(115)+abb316(96)+2.0_ki*abb316(28)
      abb316(11)=4.0_ki*abb316(11)
      abb316(15)=abb316(85)*abb316(100)
      abb316(15)=abb316(15)-abb316(57)
      abb316(16)=-8.0_ki*abb316(15)
      abb316(28)=spak4l6*abb316(83)*spbl6l5
      abb316(36)=abb316(66)*abb316(80)
      abb316(57)=abb316(86)*abb316(65)
      abb316(36)=abb316(36)-abb316(57)
      abb316(57)=spak1k4*abb316(9)
      abb316(67)=abb316(36)*abb316(57)
      abb316(28)=-abb316(105)+abb316(76)-abb316(67)+abb316(28)+abb316(39)
      abb316(38)=abb316(42)-abb316(38)
      abb316(38)=abb316(38)*spak1l6
      abb316(38)=abb316(38)+abb316(28)
      abb316(38)=16.0_ki*abb316(38)
      abb316(39)=spak1k2*abb316(47)
      abb316(28)=abb316(39)+abb316(120)-abb316(28)
      abb316(28)=16.0_ki*abb316(28)
      abb316(39)=abb316(46)*abb316(13)
      abb316(42)=-abb316(77)*abb316(39)
      abb316(47)=abb316(97)*abb316(90)
      abb316(42)=abb316(47)+abb316(42)
      abb316(47)=abb316(42)*abb316(81)
      abb316(47)=-2.0_ki*abb316(47)-abb316(15)
      abb316(47)=8.0_ki*abb316(47)
      abb316(15)=4.0_ki*abb316(15)
      abb316(67)=-8.0_ki*spbk2k1*abb316(70)*abb316(122)
      abb316(70)=abb316(56)*spak4k7
      abb316(70)=16.0_ki*abb316(70)
      abb316(76)=abb316(46)*abb316(21)
      abb316(76)=abb316(76)-abb316(114)
      abb316(78)=abb316(76)*abb316(117)
      abb316(80)=abb316(56)*spak2k4
      abb316(81)=abb316(62)*abb316(40)
      abb316(80)=abb316(80)-abb316(81)
      abb316(81)=8.0_ki*abb316(80)
      abb316(85)=spbk7l6*abb316(76)
      abb316(86)=spbk7k3*spbl6k2*abb316(62)
      abb316(85)=abb316(86)+abb316(85)
      abb316(85)=abb316(73)*abb316(85)
      abb316(86)=-spbl6k2*abb316(95)*abb316(24)
      abb316(85)=abb316(86)+abb316(85)
      abb316(85)=8.0_ki*abb316(85)
      abb316(76)=abb316(76)*spak3k4
      abb316(86)=16.0_ki*abb316(76)
      abb316(76)=-4.0_ki*abb316(76)
      abb316(95)=abb316(95)*spak2k4
      abb316(52)=abb316(62)*abb316(52)
      abb316(52)=abb316(95)-abb316(52)
      abb316(95)=-spbl6k2*spak2k4
      abb316(96)=spbl6k3*spak3k4
      abb316(95)=abb316(96)+abb316(95)
      abb316(95)=abb316(83)*abb316(95)
      abb316(95)=abb316(95)+abb316(52)
      abb316(95)=8.0_ki*abb316(95)
      abb316(96)=16.0_ki*abb316(82)
      abb316(100)=abb316(96)*spak1k4
      abb316(105)=4.0_ki*abb316(9)
      abb316(114)=-abb316(60)*abb316(116)*abb316(105)
      abb316(58)=abb316(58)*abb316(18)
      abb316(29)=abb316(29)+abb316(55)
      abb316(12)=abb316(29)*abb316(12)
      abb316(29)=abb316(18)+spbl5k2
      abb316(29)=abb316(54)*spak1k7*abb316(29)
      abb316(12)=abb316(29)+abb316(12)-abb316(58)-abb316(59)
      abb316(12)=spak2k4*abb316(12)
      abb316(29)=abb316(8)*spak2k4
      abb316(54)=-abb316(29)*abb316(27)*abb316(56)
      abb316(55)=abb316(60)*abb316(69)
      abb316(54)=abb316(54)+abb316(55)
      abb316(55)=-spak3k4*abb316(62)
      abb316(59)=abb316(62)*abb316(27)
      abb316(60)=abb316(59)*abb316(50)
      abb316(55)=abb316(55)+abb316(60)
      abb316(55)=spbl5k3*abb316(55)
      abb316(12)=abb316(55)+abb316(12)+abb316(54)
      abb316(12)=es71*abb316(12)
      abb316(55)=abb316(18)*abb316(61)
      abb316(55)=abb316(55)-abb316(58)
      abb316(55)=abb316(55)*spak2k4
      abb316(54)=abb316(55)+abb316(54)
      abb316(40)=-abb316(8)*abb316(59)*abb316(40)
      abb316(40)=abb316(40)-abb316(54)
      abb316(40)=es712*abb316(40)
      abb316(55)=spbl6k3*abb316(119)
      abb316(12)=abb316(55)+abb316(12)+abb316(40)
      abb316(12)=4.0_ki*abb316(12)
      abb316(40)=2.0_ki*abb316(104)
      abb316(55)=abb316(40)*spak4k7
      abb316(54)=abb316(55)+abb316(54)
      abb316(54)=8.0_ki*abb316(54)
      abb316(55)=-4.0_ki*abb316(80)
      abb316(52)=-8.0_ki*abb316(52)
      abb316(58)=abb316(34)*abb316(4)
      abb316(59)=abb316(99)*abb316(32)
      abb316(58)=abb316(58)-abb316(59)
      abb316(58)=abb316(58)*abb316(107)
      abb316(59)=abb316(23)*abb316(4)
      abb316(60)=abb316(99)*abb316(18)
      abb316(58)=abb316(58)-abb316(59)+abb316(60)
      abb316(59)=abb316(27)*abb316(4)
      abb316(60)=abb316(59)*abb316(26)
      abb316(61)=abb316(99)*abb316(30)
      abb316(60)=abb316(60)-abb316(61)
      abb316(61)=abb316(8)*abb316(60)
      abb316(61)=abb316(61)+abb316(58)
      abb316(61)=es34*abb316(61)
      abb316(80)=abb316(32)*abb316(14)
      abb316(80)=-abb316(34)+abb316(80)
      abb316(80)=abb316(80)*abb316(107)
      abb316(115)=abb316(26)*abb316(27)
      abb316(116)=abb316(30)*abb316(14)
      abb316(116)=-abb316(115)+abb316(116)
      abb316(116)=abb316(8)*abb316(116)
      abb316(119)=-abb316(18)*abb316(14)
      abb316(61)=abb316(61)+abb316(116)+abb316(80)+abb316(23)+abb316(119)
      abb316(61)=spal6k7*abb316(61)
      abb316(80)=abb316(111)*abb316(4)
      abb316(111)=abb316(99)*abb316(66)
      abb316(80)=abb316(80)-abb316(111)
      abb316(80)=abb316(80)*abb316(108)
      abb316(21)=abb316(21)*abb316(45)
      abb316(21)=abb316(21)-abb316(53)
      abb316(21)=abb316(21)*spbk7l5
      abb316(108)=abb316(21)*abb316(106)
      abb316(111)=spak4l6*abb316(108)
      abb316(116)=spbl5k2*abb316(53)
      abb316(119)=abb316(26)*abb316(45)
      abb316(116)=abb316(116)-abb316(119)
      abb316(120)=abb316(116)*spak4l6
      abb316(121)=abb316(120)*abb316(102)
      abb316(111)=abb316(121)+abb316(111)-abb316(80)
      abb316(111)=spbk4k2*abb316(111)
      abb316(121)=abb316(102)*abb316(56)
      abb316(106)=abb316(106)*abb316(104)
      abb316(106)=abb316(121)-abb316(106)
      abb316(121)=spak3l6*abb316(106)
      abb316(93)=spak3k7*abb316(9)*abb316(93)
      abb316(61)=abb316(93)+abb316(121)+abb316(111)+abb316(61)
      abb316(61)=8.0_ki*abb316(61)
      abb316(93)=abb316(56)*spak3l6
      abb316(111)=abb316(120)*spbk4k2
      abb316(93)=abb316(93)+abb316(111)
      abb316(111)=16.0_ki*abb316(93)
      abb316(121)=-8.0_ki*abb316(93)
      abb316(93)=-4.0_ki*abb316(93)
      abb316(30)=abb316(30)*abb316(5)
      abb316(122)=abb316(30)*abb316(13)
      abb316(123)=-abb316(68)*abb316(27)*abb316(5)
      abb316(122)=abb316(123)+abb316(122)
      abb316(122)=abb316(8)*abb316(122)
      abb316(123)=abb316(18)*abb316(5)
      abb316(124)=-abb316(123)*abb316(13)
      abb316(125)=abb316(90)*abb316(17)
      abb316(126)=abb316(5)*abb316(125)
      abb316(127)=abb316(32)*abb316(5)
      abb316(128)=abb316(127)*abb316(13)
      abb316(129)=-abb316(5)*abb316(91)
      abb316(128)=abb316(129)+abb316(128)
      abb316(128)=abb316(128)*abb316(107)
      abb316(122)=abb316(122)+abb316(128)+abb316(126)+abb316(124)
      abb316(122)=spak1l6*abb316(122)
      abb316(124)=abb316(125)*abb316(45)
      abb316(125)=abb316(45)*abb316(13)
      abb316(126)=abb316(125)*abb316(18)
      abb316(124)=abb316(124)-abb316(126)
      abb316(91)=abb316(91)*abb316(45)
      abb316(126)=abb316(125)*abb316(32)
      abb316(91)=abb316(91)-abb316(126)
      abb316(107)=abb316(91)*abb316(107)
      abb316(126)=abb316(94)*spbl5k2
      abb316(128)=abb316(13)*abb316(126)
      abb316(68)=abb316(68)*abb316(94)
      abb316(68)=abb316(68)-abb316(128)
      abb316(128)=abb316(8)*abb316(68)
      abb316(107)=abb316(128)+abb316(107)-abb316(124)
      abb316(107)=spak1l6*abb316(107)
      abb316(128)=abb316(99)*abb316(77)
      abb316(59)=abb316(59)*abb316(22)
      abb316(128)=abb316(128)-abb316(59)
      abb316(107)=abb316(107)-abb316(128)
      abb316(107)=es34*abb316(107)
      abb316(129)=abb316(45)*abb316(2)
      abb316(25)=abb316(25)*abb316(129)*abb316(65)
      abb316(130)=abb316(125)*abb316(66)
      abb316(25)=abb316(25)-abb316(130)
      abb316(25)=abb316(25)*abb316(57)
      abb316(57)=abb316(21)*spak4l6
      abb316(57)=-abb316(25)-abb316(57)
      abb316(57)=spbk4k2*abb316(57)
      abb316(10)=abb316(129)*abb316(10)
      abb316(10)=abb316(10)-abb316(125)
      abb316(129)=abb316(10)*spbk4k2
      abb316(130)=abb316(129)*spak4l6
      abb316(131)=spak1l6*abb316(130)
      abb316(132)=-spak3l6*abb316(83)
      abb316(131)=abb316(131)+abb316(132)
      abb316(131)=spbl6l5*abb316(131)
      abb316(132)=spak3l6*abb316(104)
      abb316(36)=abb316(36)*abb316(9)
      abb316(133)=spak1k3*abb316(36)
      abb316(134)=abb316(77)*abb316(14)
      abb316(22)=-abb316(27)*abb316(22)
      abb316(22)=abb316(133)+abb316(131)+abb316(132)+abb316(107)+abb316(22)+abb&
      &316(134)+abb316(57)+abb316(122)
      abb316(22)=8.0_ki*abb316(22)
      abb316(57)=abb316(116)*spak4k7
      abb316(107)=-spbk4k2*abb316(57)
      abb316(116)=-spak3k7*abb316(56)
      abb316(107)=abb316(107)+abb316(116)
      abb316(107)=8.0_ki*abb316(107)
      abb316(116)=spak1k4*abb316(129)
      abb316(122)=-spak1k3*abb316(82)
      abb316(116)=abb316(116)+abb316(122)
      abb316(116)=8.0_ki*abb316(116)
      abb316(26)=abb316(26)*abb316(94)
      abb316(122)=abb316(14)*abb316(126)
      abb316(26)=abb316(26)-abb316(122)
      abb316(122)=-abb316(8)*abb316(26)
      abb316(126)=abb316(23)*abb316(45)
      abb316(18)=abb316(53)*abb316(18)
      abb316(18)=abb316(126)-abb316(18)
      abb316(45)=abb316(34)*abb316(45)
      abb316(32)=abb316(53)*abb316(32)
      abb316(32)=abb316(45)-abb316(32)
      abb316(45)=-abb316(9)*abb316(32)
      abb316(45)=abb316(122)+abb316(45)+abb316(18)
      abb316(45)=es34*abb316(45)
      abb316(122)=-abb316(127)*abb316(14)
      abb316(34)=abb316(5)*abb316(34)
      abb316(34)=abb316(34)+abb316(122)
      abb316(34)=abb316(9)*abb316(34)
      abb316(30)=-abb316(30)*abb316(14)
      abb316(115)=abb316(5)*abb316(115)
      abb316(30)=abb316(115)+abb316(30)
      abb316(30)=abb316(8)*abb316(30)
      abb316(115)=2.0_ki*spak4k7
      abb316(115)=abb316(115)*abb316(21)
      abb316(122)=spbk4k2*abb316(115)
      abb316(126)=-spak3k7*abb316(40)
      abb316(123)=abb316(123)*abb316(14)
      abb316(23)=-abb316(5)*abb316(23)
      abb316(23)=abb316(126)+abb316(45)+abb316(122)+abb316(30)+abb316(34)+abb31&
      &6(23)+abb316(123)
      abb316(23)=4.0_ki*abb316(23)
      abb316(24)=-abb316(24)*abb316(58)
      abb316(30)=-abb316(60)*abb316(31)
      abb316(24)=abb316(80)+abb316(30)+abb316(24)
      abb316(24)=spbk4k3*abb316(24)
      abb316(30)=-spak2l6*abb316(106)
      abb316(31)=-abb316(65)*abb316(56)
      abb316(34)=abb316(31)*abb316(9)
      abb316(45)=es12-abb316(79)
      abb316(45)=abb316(34)*abb316(45)
      abb316(58)=spbk4k3*spak4l6
      abb316(60)=-abb316(58)*abb316(108)
      abb316(80)=abb316(120)*spbk4k3
      abb316(102)=-abb316(102)*abb316(80)
      abb316(24)=abb316(30)+abb316(102)+abb316(60)+abb316(45)+abb316(24)
      abb316(24)=8.0_ki*abb316(24)
      abb316(30)=abb316(56)*spak2l6
      abb316(30)=abb316(30)+abb316(80)
      abb316(45)=-16.0_ki*abb316(30)
      abb316(60)=8.0_ki*abb316(30)
      abb316(80)=8.0_ki*abb316(34)
      abb316(30)=4.0_ki*abb316(30)
      abb316(102)=spak2k4*abb316(124)
      abb316(91)=abb316(91)*abb316(69)
      abb316(91)=abb316(102)-2.0_ki*abb316(91)
      abb316(91)=spak1l6*abb316(91)
      abb316(102)=spak2k4*abb316(128)
      abb316(68)=-abb316(68)*abb316(84)
      abb316(25)=abb316(25)+abb316(68)+abb316(102)+abb316(91)
      abb316(25)=spbk4k3*abb316(25)
      abb316(68)=abb316(10)*abb316(58)
      abb316(84)=-spak1l6*abb316(68)
      abb316(83)=spak2l6*abb316(83)
      abb316(83)=abb316(84)+abb316(83)
      abb316(83)=spbl6l5*abb316(83)
      abb316(21)=abb316(21)*abb316(58)
      abb316(36)=-spak1k2*abb316(36)
      abb316(58)=-spak2l6*abb316(104)
      abb316(21)=abb316(83)+abb316(58)+abb316(36)+abb316(21)+abb316(25)
      abb316(21)=8.0_ki*abb316(21)
      abb316(25)=spbk4k3*abb316(57)
      abb316(36)=spak2k7*abb316(56)
      abb316(25)=abb316(25)+abb316(36)
      abb316(25)=8.0_ki*abb316(25)
      abb316(36)=spak1k2*abb316(82)
      abb316(10)=-spak1k4*spbk4k3*abb316(10)
      abb316(10)=abb316(36)+abb316(10)
      abb316(10)=8.0_ki*abb316(10)
      abb316(26)=abb316(26)*abb316(29)
      abb316(18)=-spak2k4*abb316(18)
      abb316(29)=abb316(32)*abb316(69)
      abb316(18)=-abb316(115)+abb316(26)+abb316(18)+abb316(29)
      abb316(18)=spbk4k3*abb316(18)
      abb316(26)=spak2k7*abb316(40)
      abb316(18)=abb316(26)+abb316(18)
      abb316(18)=4.0_ki*abb316(18)
      abb316(26)=abb316(119)*abb316(65)
      abb316(29)=abb316(53)*abb316(66)
      abb316(26)=abb316(26)-abb316(29)
      abb316(26)=abb316(26)*abb316(105)
      abb316(29)=spbk4k2*abb316(26)
      abb316(26)=-spbk4k3*abb316(26)
      abb316(32)=4.0_ki*abb316(34)
      abb316(34)=8.0_ki*abb316(113)*abb316(74)
      abb316(36)=-abb316(89)*abb316(117)
      abb316(40)=abb316(75)*abb316(99)
      abb316(53)=-abb316(44)*abb316(59)
      abb316(40)=abb316(53)+abb316(40)
      abb316(53)=8.0_ki*abb316(73)
      abb316(40)=abb316(40)*abb316(53)
      abb316(56)=-spak1l6*abb316(42)*abb316(117)
      abb316(57)=-4.0_ki*abb316(98)
      abb316(58)=-abb316(27)*abb316(99)
      abb316(37)=abb316(37)*abb316(17)
      abb316(59)=abb316(4)*abb316(37)
      abb316(58)=abb316(59)+abb316(58)
      abb316(44)=abb316(8)*abb316(53)*abb316(44)*abb316(58)
      abb316(53)=-abb316(97)*abb316(13)
      abb316(58)=abb316(71)*abb316(46)
      abb316(17)=abb316(17)*abb316(58)
      abb316(17)=abb316(17)+abb316(53)
      abb316(17)=8.0_ki*spak1l6*abb316(17)*abb316(50)
      abb316(14)=abb316(97)*abb316(14)
      abb316(37)=-abb316(46)*abb316(37)
      abb316(14)=abb316(37)+abb316(14)
      abb316(14)=4.0_ki*abb316(14)*abb316(50)
      abb316(37)=-abb316(48)*abb316(118)
      abb316(41)=abb316(82)*abb316(41)
      abb316(42)=-spak2k7*spak3k4*abb316(42)
      abb316(41)=abb316(42)-abb316(87)+abb316(41)
      abb316(41)=8.0_ki*abb316(41)
      abb316(39)=abb316(65)*abb316(39)
      abb316(42)=-mB*abb316(58)
      abb316(39)=abb316(42)+abb316(39)
      abb316(39)=abb316(39)*abb316(118)
      abb316(42)=abb316(96)*spak4l6
      abb316(46)=abb316(117)*abb316(82)
      abb316(48)=8.0_ki*spak2k4
      abb316(50)=abb316(48)*abb316(82)
      abb316(53)=-spak3l6*abb316(82)
      abb316(53)=abb316(130)+abb316(53)
      abb316(53)=8.0_ki*abb316(53)
      abb316(58)=spak2l6*abb316(82)
      abb316(58)=-abb316(68)+abb316(58)
      abb316(58)=8.0_ki*abb316(58)
      abb316(59)=16.0_ki*spak3k4
      abb316(59)=-abb316(20)*abb316(59)
      abb316(31)=-abb316(31)*abb316(69)
      abb316(62)=-abb316(72)*abb316(65)*abb316(62)
      abb316(31)=abb316(31)+abb316(62)
      abb316(31)=4.0_ki*spbk2k1*abb316(31)
      abb316(62)=abb316(20)*abb316(63)
      abb316(63)=abb316(20)*spak2k4
      abb316(65)=abb316(63)*abb316(79)
      abb316(62)=abb316(65)+abb316(62)
      abb316(62)=8.0_ki*abb316(62)
      abb316(63)=16.0_ki*abb316(63)
      abb316(13)=-abb316(77)*abb316(13)
      abb316(27)=abb316(27)*abb316(90)
      abb316(13)=abb316(27)+abb316(13)
      abb316(13)=abb316(5)*abb316(13)
      abb316(27)=abb316(90)*abb316(94)
      abb316(65)=abb316(125)*abb316(77)
      abb316(27)=abb316(27)-abb316(65)
      abb316(65)=-es34*abb316(27)
      abb316(13)=abb316(65)+abb316(13)
      abb316(13)=8.0_ki*abb316(13)
      abb316(27)=spbk4k3*abb316(27)*abb316(48)
      abb316(20)=abb316(20)*abb316(117)
      R2d316=0.0_ki
      rat2 = rat2 + R2d316
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='316' value='", &
          & R2d316, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd316h5
