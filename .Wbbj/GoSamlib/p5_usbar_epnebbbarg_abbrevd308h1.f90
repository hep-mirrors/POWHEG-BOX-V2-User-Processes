module     p5_usbar_epnebbbarg_abbrevd308h1
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(112), public :: abb308
   complex(ki), public :: R2d308
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
      abb308(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb308(2)=1.0_ki/(es34+es567-es12-es234)
      abb308(3)=NC**(-1)
      abb308(4)=spak2l5**(-1)
      abb308(5)=spbl6k2**(-1)
      abb308(6)=spak2l6**(-1)
      abb308(7)=sqrt(mB**2)
      abb308(8)=2.0_ki*spbl6k1
      abb308(9)=es71+es12-es712
      abb308(10)=spak1k4*abb308(9)
      abb308(8)=abb308(8)*abb308(10)
      abb308(11)=2.0_ki*spbl6k3
      abb308(12)=spak3k4*abb308(9)
      abb308(11)=abb308(11)*abb308(12)
      abb308(8)=abb308(8)-abb308(11)
      abb308(11)=NC-abb308(3)
      abb308(13)=TR*gW
      abb308(13)=abb308(13)**2*i_*CVSU*abb308(2)*abb308(1)
      abb308(14)=-abb308(11)*abb308(13)*c3*spbk3k1
      abb308(15)=mB**2
      abb308(16)=abb308(15)*abb308(5)
      abb308(17)=-abb308(16)*abb308(14)
      abb308(18)=abb308(13)*abb308(5)
      abb308(19)=abb308(18)*abb308(15)
      abb308(20)=c1*abb308(3)*spbk3k1
      abb308(21)=abb308(19)*abb308(20)
      abb308(17)=abb308(17)+abb308(21)
      abb308(22)=abb308(4)*spak2e7
      abb308(23)=abb308(22)*abb308(17)
      abb308(24)=spal6k7*spbk7e7
      abb308(25)=abb308(8)*abb308(24)*abb308(23)
      abb308(26)=-spak2e7*abb308(14)
      abb308(27)=abb308(16)*abb308(26)
      abb308(28)=abb308(21)*spak2e7
      abb308(27)=abb308(28)+abb308(27)
      abb308(28)=abb308(27)*abb308(6)
      abb308(29)=spbl5k3*spak3k4
      abb308(30)=spbl5k1*spak1k4
      abb308(29)=abb308(29)-abb308(30)
      abb308(30)=abb308(29)*abb308(28)
      abb308(31)=-abb308(24)*abb308(30)
      abb308(32)=abb308(13)*abb308(20)
      abb308(32)=abb308(14)-abb308(32)
      abb308(33)=abb308(32)*spak2l6
      abb308(34)=abb308(29)*abb308(33)
      abb308(35)=-spbe7l6*spal6e7*abb308(34)
      abb308(31)=-abb308(35)+2.0_ki*abb308(31)
      abb308(31)=-abb308(31)*abb308(9)
      abb308(36)=-abb308(22)*abb308(14)
      abb308(37)=abb308(13)*spak2e7
      abb308(38)=abb308(20)*abb308(37)
      abb308(39)=abb308(38)*abb308(4)
      abb308(36)=abb308(36)+abb308(39)
      abb308(39)=-abb308(6)*abb308(36)*abb308(5)**2*mB**4
      abb308(40)=spbk7e7*spak2k7
      abb308(41)=abb308(39)*abb308(40)
      abb308(42)=-spbk3k2*abb308(12)
      abb308(43)=-spbk2k1*abb308(10)
      abb308(42)=abb308(42)+abb308(43)
      abb308(42)=2.0_ki*abb308(42)
      abb308(42)=abb308(41)*abb308(42)
      abb308(36)=-mB*abb308(36)
      abb308(43)=abb308(36)*abb308(7)
      abb308(44)=abb308(43)*spal6k7
      abb308(45)=spbk7k3*spak3k4
      abb308(46)=spbk7k1*spak1k4
      abb308(45)=abb308(45)-abb308(46)
      abb308(46)=-2.0_ki*abb308(45)
      abb308(46)=abb308(44)*abb308(40)*abb308(46)
      abb308(38)=abb308(38)+abb308(26)
      abb308(47)=-abb308(38)*abb308(29)
      abb308(48)=2.0_ki*spbk7l6
      abb308(49)=-abb308(48)*spbk7e7*abb308(47)*spal6k7**2
      abb308(25)=abb308(49)+abb308(31)+abb308(46)+abb308(25)+abb308(42)
      abb308(25)=2.0_ki*abb308(25)
      abb308(31)=abb308(5)*mB
      abb308(42)=-abb308(31)*abb308(14)
      abb308(46)=abb308(18)*mB
      abb308(49)=abb308(20)*abb308(46)
      abb308(42)=abb308(42)+abb308(49)
      abb308(50)=abb308(42)*abb308(7)
      abb308(51)=abb308(50)-abb308(17)
      abb308(52)=-spak3k4*abb308(51)
      abb308(53)=abb308(33)*spak3k4
      abb308(54)=-abb308(53)+2.0_ki*abb308(52)
      abb308(54)=abb308(54)*spbl5k3
      abb308(55)=-spak1k4*abb308(51)
      abb308(56)=abb308(33)*spak1k4
      abb308(57)=-abb308(56)+2.0_ki*abb308(55)
      abb308(57)=abb308(57)*spbl5k1
      abb308(54)=abb308(54)-abb308(57)
      abb308(54)=abb308(54)*abb308(9)
      abb308(14)=abb308(14)*abb308(4)
      abb308(16)=-abb308(16)*abb308(14)
      abb308(21)=abb308(21)*abb308(4)
      abb308(16)=abb308(16)+abb308(21)
      abb308(21)=abb308(16)*spak2l6
      abb308(8)=abb308(21)*abb308(8)
      abb308(57)=mB*abb308(14)
      abb308(58)=abb308(13)*abb308(4)
      abb308(59)=abb308(58)*mB
      abb308(60)=abb308(59)*abb308(20)
      abb308(57)=abb308(57)-abb308(60)
      abb308(60)=abb308(57)*abb308(7)
      abb308(61)=abb308(60)*spak2l6
      abb308(62)=-spak2k7*abb308(45)
      abb308(63)=2.0_ki*abb308(62)
      abb308(63)=abb308(61)*abb308(63)
      abb308(48)=-abb308(48)*spal6k7*abb308(34)
      abb308(64)=-abb308(32)*abb308(29)
      abb308(65)=-spbl6k2*abb308(64)*spak2l6**2
      abb308(8)=2.0_ki*abb308(65)+abb308(48)+abb308(54)+abb308(63)+abb308(8)
      abb308(8)=4.0_ki*abb308(8)
      abb308(48)=abb308(23)*abb308(40)
      abb308(54)=2.0_ki*abb308(48)
      abb308(63)=spbk3k2*spak3k4
      abb308(65)=spbk2k1*spak1k4
      abb308(63)=abb308(63)+abb308(65)
      abb308(65)=abb308(54)*abb308(63)
      abb308(66)=-abb308(24)*abb308(47)
      abb308(65)=2.0_ki*abb308(66)-abb308(35)+abb308(65)
      abb308(65)=4.0_ki*abb308(65)
      abb308(67)=8.0_ki*abb308(34)
      abb308(68)=-4.0_ki*abb308(66)
      abb308(69)=abb308(6)*spak2k4
      abb308(70)=abb308(69)*spbe7l5
      abb308(27)=abb308(70)*abb308(27)
      abb308(71)=abb308(23)*spbe7l6
      abb308(72)=abb308(71)*spak2k4
      abb308(27)=abb308(27)-abb308(72)
      abb308(72)=spbk7k2*spal6k7
      abb308(73)=-abb308(27)*abb308(72)
      abb308(74)=abb308(16)*spak2k4
      abb308(75)=spal6e7*spak2k7
      abb308(76)=abb308(75)*spbe7k2
      abb308(77)=abb308(74)*abb308(76)
      abb308(78)=abb308(38)*spbe7l5
      abb308(79)=abb308(78)*spak4l6
      abb308(80)=abb308(79)*spal6k7
      abb308(77)=abb308(77)-abb308(80)
      abb308(77)=abb308(77)*spbk7l6
      abb308(50)=abb308(50)*spbe7k2
      abb308(80)=spbk7l5*spak2k7
      abb308(81)=abb308(80)*spak4e7
      abb308(82)=abb308(50)*abb308(81)
      abb308(83)=abb308(7)*spak2k4
      abb308(57)=abb308(57)*abb308(83)
      abb308(84)=abb308(75)*spbk7e7
      abb308(85)=abb308(57)*abb308(84)
      abb308(36)=abb308(36)*abb308(83)
      abb308(86)=abb308(36)*abb308(24)
      abb308(87)=abb308(17)*abb308(76)
      abb308(88)=abb308(87)*spbk7l5
      abb308(89)=abb308(88)*abb308(69)
      abb308(90)=abb308(75)*spbe7l6
      abb308(91)=abb308(90)*abb308(32)
      abb308(92)=abb308(91)*spbk7l5
      abb308(93)=abb308(92)*spak4l6
      abb308(26)=-abb308(31)*abb308(26)
      abb308(31)=abb308(49)*spak2e7
      abb308(26)=abb308(26)-abb308(31)
      abb308(31)=spbe7l5*abb308(7)
      abb308(49)=abb308(26)*abb308(31)
      abb308(94)=abb308(49)*spbk7k2
      abb308(95)=abb308(94)*spak4k7
      abb308(73)=abb308(73)+abb308(89)-abb308(86)-abb308(77)-abb308(82)-abb308(&
      &85)+abb308(93)-abb308(95)
      abb308(73)=8.0_ki*abb308(73)
      abb308(14)=-abb308(15)*abb308(14)
      abb308(15)=abb308(58)*abb308(15)
      abb308(20)=abb308(15)*abb308(20)
      abb308(14)=abb308(14)+abb308(20)
      abb308(20)=abb308(14)*spak2k4
      abb308(20)=abb308(20)+2.0_ki*abb308(57)
      abb308(20)=abb308(20)*spak2l6
      abb308(17)=abb308(17)*spak2k4
      abb308(42)=abb308(42)*abb308(83)
      abb308(17)=abb308(17)-abb308(42)
      abb308(17)=abb308(17)*spbl5k2
      abb308(42)=abb308(33)*spbl6l5
      abb308(57)=abb308(80)*abb308(32)
      abb308(42)=abb308(42)-abb308(57)
      abb308(42)=spak4l6*abb308(42)
      abb308(77)=abb308(9)*abb308(74)
      abb308(17)=-abb308(17)+abb308(20)+abb308(42)+abb308(77)
      abb308(17)=16.0_ki*abb308(17)
      abb308(20)=16.0_ki*abb308(79)
      abb308(42)=8.0_ki*abb308(79)
      abb308(12)=-spbe7k3*abb308(12)
      abb308(10)=spbe7k1*abb308(10)
      abb308(10)=abb308(12)+abb308(10)
      abb308(10)=2.0_ki*abb308(10)
      abb308(10)=abb308(39)*abb308(10)
      abb308(12)=abb308(41)*abb308(63)
      abb308(10)=abb308(35)+abb308(12)+abb308(10)
      abb308(10)=4.0_ki*abb308(10)
      abb308(12)=4.0_ki*abb308(62)
      abb308(41)=abb308(12)*abb308(16)
      abb308(77)=abb308(34)+abb308(41)
      abb308(77)=8.0_ki*abb308(77)
      abb308(82)=spbe7k3*spak3k4
      abb308(85)=spbe7k1*spak1k4
      abb308(82)=abb308(82)-abb308(85)
      abb308(85)=-abb308(23)*abb308(82)
      abb308(86)=-16.0_ki*abb308(85)
      abb308(89)=32.0_ki*abb308(74)
      abb308(39)=8.0_ki*abb308(39)*abb308(82)
      abb308(93)=abb308(43)*spak2l6*abb308(82)
      abb308(95)=-abb308(48)*abb308(63)
      abb308(26)=abb308(26)*abb308(7)
      abb308(96)=abb308(82)*abb308(26)
      abb308(97)=-spbl5k2*abb308(96)
      abb308(35)=abb308(97)+abb308(35)-abb308(66)+abb308(95)+abb308(93)
      abb308(35)=2.0_ki*abb308(35)
      abb308(34)=-4.0_ki*abb308(34)
      abb308(66)=4.0_ki*abb308(79)
      abb308(79)=4.0_ki*abb308(85)
      abb308(93)=2.0_ki*abb308(47)
      abb308(95)=abb308(9)*abb308(93)
      abb308(47)=4.0_ki*abb308(47)
      abb308(97)=2.0_ki*abb308(57)
      abb308(98)=abb308(97)*spak4e7
      abb308(36)=abb308(98)-abb308(36)
      abb308(36)=4.0_ki*abb308(36)
      abb308(12)=-abb308(50)*abb308(12)
      abb308(62)=abb308(62)*abb308(32)
      abb308(98)=-4.0_ki*abb308(62)
      abb308(74)=abb308(74)*abb308(40)
      abb308(74)=8.0_ki*abb308(74)
      abb308(75)=-4.0_ki*abb308(60)*abb308(75)*abb308(45)
      abb308(96)=4.0_ki*spbk7k2*abb308(96)
      abb308(26)=-abb308(26)*spbk7e7*abb308(29)
      abb308(29)=abb308(54)*abb308(45)
      abb308(26)=abb308(29)+abb308(26)
      abb308(26)=2.0_ki*abb308(26)
      abb308(23)=abb308(23)*spbk7e7
      abb308(29)=abb308(23)*spak2k4
      abb308(29)=8.0_ki*abb308(29)
      abb308(54)=8.0_ki*spak2k7*abb308(64)
      abb308(99)=abb308(78)*spak4k7
      abb308(99)=8.0_ki*abb308(99)
      abb308(38)=-abb308(38)*abb308(82)
      abb308(100)=4.0_ki*abb308(38)
      abb308(91)=-abb308(91)*abb308(45)
      abb308(101)=spbk7l6*spal6k7
      abb308(102)=abb308(38)*abb308(101)
      abb308(91)=abb308(102)+abb308(91)
      abb308(91)=4.0_ki*abb308(91)
      abb308(53)=spbl6k3*abb308(53)
      abb308(56)=-spbl6k1*abb308(56)
      abb308(53)=abb308(56)+abb308(53)+abb308(62)
      abb308(53)=8.0_ki*abb308(53)
      abb308(56)=8.0_ki*abb308(38)
      abb308(62)=16.0_ki*abb308(32)
      abb308(102)=abb308(62)*spak2k4
      abb308(38)=-2.0_ki*abb308(38)
      abb308(103)=2.0_ki*abb308(43)
      abb308(103)=abb308(103)*abb308(40)
      abb308(104)=spak3k4*abb308(103)
      abb308(30)=-abb308(40)*abb308(30)
      abb308(105)=spbl6k3*spak3k4
      abb308(106)=-spbl6k1*spak1k4
      abb308(105)=abb308(106)+abb308(105)
      abb308(48)=abb308(48)*abb308(105)
      abb308(30)=abb308(48)+abb308(30)
      abb308(30)=2.0_ki*abb308(30)
      abb308(27)=4.0_ki*abb308(27)
      abb308(48)=-spak1k4*abb308(103)
      abb308(103)=NC*spak2e7
      abb308(105)=spak2e7*abb308(3)
      abb308(103)=abb308(103)-abb308(105)
      abb308(106)=abb308(19)*c3
      abb308(107)=-abb308(106)*abb308(103)
      abb308(105)=abb308(105)*c1
      abb308(108)=abb308(19)*abb308(105)
      abb308(107)=abb308(107)-abb308(108)
      abb308(70)=abb308(107)*abb308(70)
      abb308(107)=c3*abb308(11)
      abb308(108)=c1*abb308(3)
      abb308(107)=abb308(108)+abb308(107)
      abb308(22)=abb308(107)*abb308(22)*abb308(19)
      abb308(109)=spak2k4*abb308(22)*spbe7l6
      abb308(70)=abb308(70)+abb308(109)
      abb308(109)=abb308(70)*spal6k7
      abb308(110)=mB*c3
      abb308(18)=abb308(110)*abb308(18)
      abb308(103)=-abb308(18)*abb308(103)
      abb308(105)=abb308(46)*abb308(105)
      abb308(103)=abb308(103)-abb308(105)
      abb308(31)=abb308(103)*abb308(31)
      abb308(103)=abb308(31)*spak4k7
      abb308(103)=abb308(109)-abb308(103)
      abb308(103)=abb308(103)*spbk7k2
      abb308(105)=-abb308(106)*abb308(11)
      abb308(109)=abb308(108)*abb308(19)
      abb308(105)=abb308(105)-abb308(109)
      abb308(69)=abb308(69)*abb308(105)*abb308(76)
      abb308(109)=c3-c1
      abb308(109)=abb308(109)*abb308(3)
      abb308(111)=c3*NC
      abb308(109)=abb308(109)-abb308(111)
      abb308(13)=abb308(13)*abb308(109)
      abb308(109)=abb308(13)*spak4l6
      abb308(90)=abb308(109)*abb308(90)
      abb308(69)=-abb308(90)+abb308(69)
      abb308(69)=spbk7l5*abb308(69)
      abb308(18)=-abb308(18)*abb308(11)
      abb308(46)=abb308(46)*abb308(108)
      abb308(18)=abb308(18)-abb308(46)
      abb308(46)=abb308(7)*spbe7k2*abb308(18)*abb308(81)
      abb308(58)=abb308(11)*abb308(110)*abb308(58)
      abb308(59)=abb308(59)*abb308(108)
      abb308(58)=abb308(59)+abb308(58)
      abb308(58)=abb308(58)*abb308(83)
      abb308(59)=abb308(58)*abb308(84)
      abb308(90)=NC*abb308(4)
      abb308(111)=abb308(4)*abb308(3)
      abb308(90)=abb308(90)-abb308(111)
      abb308(110)=abb308(90)*abb308(110)*abb308(37)
      abb308(111)=abb308(111)*c1
      abb308(112)=mB*abb308(111)*abb308(37)
      abb308(110)=abb308(112)+abb308(110)
      abb308(110)=abb308(110)*abb308(83)
      abb308(112)=abb308(110)*abb308(24)
      abb308(46)=-abb308(46)-abb308(59)-abb308(112)-abb308(103)+abb308(69)
      abb308(59)=-spbk4k1*abb308(46)
      abb308(69)=spbe7l5*abb308(28)
      abb308(69)=abb308(69)-abb308(71)
      abb308(71)=abb308(69)*abb308(72)
      abb308(24)=abb308(43)*abb308(24)
      abb308(84)=abb308(84)*abb308(60)
      abb308(88)=abb308(88)*abb308(6)
      abb308(103)=abb308(76)*abb308(16)
      abb308(112)=abb308(103)*spbk7l6
      abb308(24)=-abb308(71)-abb308(24)-abb308(84)+abb308(88)-abb308(112)
      abb308(71)=spak2k3*abb308(24)
      abb308(11)=abb308(11)*abb308(37)*c3
      abb308(37)=abb308(108)*abb308(37)
      abb308(11)=abb308(37)+abb308(11)
      abb308(37)=abb308(11)*spak4l6*spbe7l5
      abb308(84)=abb308(37)*spbk4k1
      abb308(88)=spal6k7*abb308(84)
      abb308(90)=-abb308(106)*abb308(90)
      abb308(19)=abb308(111)*abb308(19)
      abb308(19)=abb308(90)-abb308(19)
      abb308(19)=abb308(19)*spak2k4
      abb308(90)=abb308(19)*spbk4k1
      abb308(106)=abb308(76)*abb308(90)
      abb308(88)=abb308(88)+abb308(106)
      abb308(88)=spbk7l6*abb308(88)
      abb308(101)=abb308(78)*abb308(101)
      abb308(92)=abb308(101)+abb308(92)
      abb308(101)=spak3l6*abb308(92)
      abb308(50)=abb308(50)*abb308(80)
      abb308(106)=-spak3e7*abb308(50)
      abb308(108)=-spak3k7*abb308(94)
      abb308(59)=abb308(108)+abb308(106)+abb308(101)+abb308(71)+abb308(88)+abb3&
      &08(59)
      abb308(59)=4.0_ki*abb308(59)
      abb308(71)=abb308(105)*spak2k4
      abb308(18)=abb308(18)*abb308(83)
      abb308(18)=abb308(71)-abb308(18)
      abb308(71)=-spbk4k1*abb308(18)
      abb308(83)=-spak2k3*abb308(51)
      abb308(71)=abb308(71)+abb308(83)
      abb308(71)=spbl5k2*abb308(71)
      abb308(15)=spak2k4*abb308(107)*abb308(15)
      abb308(15)=abb308(15)-2.0_ki*abb308(58)
      abb308(15)=abb308(15)*spak2l6
      abb308(58)=abb308(109)*abb308(80)
      abb308(15)=abb308(15)-abb308(58)
      abb308(58)=-spbk4k1*abb308(15)
      abb308(14)=abb308(14)+2.0_ki*abb308(60)
      abb308(14)=abb308(14)*spak2l6
      abb308(60)=abb308(9)*abb308(16)
      abb308(14)=abb308(14)+abb308(60)
      abb308(60)=-spak2k3*abb308(14)
      abb308(80)=abb308(90)*abb308(9)
      abb308(83)=spak3l6*abb308(57)
      abb308(88)=-spak3l6*abb308(33)
      abb308(101)=abb308(109)*spbk4k1
      abb308(105)=-spak2l6*abb308(101)
      abb308(88)=abb308(105)+abb308(88)
      abb308(88)=spbl6l5*abb308(88)
      abb308(58)=abb308(88)+abb308(83)+abb308(71)+abb308(60)+abb308(58)+abb308(&
      &80)
      abb308(58)=8.0_ki*abb308(58)
      abb308(60)=abb308(78)*spak3l6
      abb308(60)=abb308(60)+abb308(84)
      abb308(71)=8.0_ki*abb308(60)
      abb308(80)=-4.0_ki*abb308(60)
      abb308(83)=abb308(16)*spak2k3
      abb308(83)=abb308(83)-abb308(90)
      abb308(84)=-16.0_ki*abb308(83)
      abb308(60)=-2.0_ki*abb308(60)
      abb308(81)=abb308(13)*abb308(81)
      abb308(81)=abb308(110)+2.0_ki*abb308(81)
      abb308(88)=-spbk4k1*abb308(81)
      abb308(90)=spak2k3*abb308(43)
      abb308(105)=-spak3e7*abb308(97)
      abb308(88)=abb308(105)+abb308(90)+abb308(88)
      abb308(88)=2.0_ki*abb308(88)
      abb308(40)=4.0_ki*abb308(40)
      abb308(83)=abb308(83)*abb308(40)
      abb308(22)=abb308(22)*spbk7e7
      abb308(90)=spbk4k1*spak2k4
      abb308(105)=abb308(90)*abb308(22)
      abb308(106)=spak2k3*abb308(23)
      abb308(105)=abb308(105)+abb308(106)
      abb308(105)=4.0_ki*abb308(105)
      abb308(11)=abb308(11)*spak4k7*spbe7l5
      abb308(106)=-spbk4k1*abb308(11)
      abb308(107)=-spak3k7*abb308(78)
      abb308(106)=abb308(106)+abb308(107)
      abb308(106)=4.0_ki*abb308(106)
      abb308(107)=-spak2k3*abb308(32)
      abb308(90)=-abb308(13)*abb308(90)
      abb308(90)=abb308(90)+abb308(107)
      abb308(90)=8.0_ki*abb308(90)
      abb308(107)=-spbk4k1*abb308(70)
      abb308(108)=spak2k3*abb308(69)
      abb308(107)=abb308(107)+abb308(108)
      abb308(107)=2.0_ki*abb308(107)
      abb308(108)=4.0_ki*abb308(49)
      abb308(31)=2.0_ki*abb308(31)
      abb308(110)=spbk4k1*abb308(31)
      abb308(46)=spbk4k3*abb308(46)
      abb308(24)=spak1k2*abb308(24)
      abb308(37)=abb308(37)*spbk4k3
      abb308(111)=-spal6k7*abb308(37)
      abb308(19)=abb308(19)*spbk4k3
      abb308(76)=-abb308(76)*abb308(19)
      abb308(76)=abb308(111)+abb308(76)
      abb308(76)=spbk7l6*abb308(76)
      abb308(92)=-spak1l6*abb308(92)
      abb308(50)=spak1e7*abb308(50)
      abb308(94)=spak1k7*abb308(94)
      abb308(24)=abb308(94)+abb308(50)+abb308(92)+abb308(24)+abb308(76)+abb308(&
      &46)
      abb308(24)=4.0_ki*abb308(24)
      abb308(18)=spbk4k3*abb308(18)
      abb308(46)=-spak1k2*abb308(51)
      abb308(18)=abb308(18)+abb308(46)
      abb308(18)=spbl5k2*abb308(18)
      abb308(15)=spbk4k3*abb308(15)
      abb308(14)=-spak1k2*abb308(14)
      abb308(9)=-abb308(19)*abb308(9)
      abb308(46)=-spak1l6*abb308(57)
      abb308(33)=spak1l6*abb308(33)
      abb308(50)=abb308(109)*spbk4k3
      abb308(51)=spak2l6*abb308(50)
      abb308(33)=abb308(51)+abb308(33)
      abb308(33)=spbl6l5*abb308(33)
      abb308(9)=abb308(33)+abb308(46)+abb308(18)+abb308(14)+abb308(15)+abb308(9)
      abb308(9)=8.0_ki*abb308(9)
      abb308(14)=abb308(78)*spak1l6
      abb308(14)=abb308(14)+abb308(37)
      abb308(15)=-8.0_ki*abb308(14)
      abb308(18)=4.0_ki*abb308(14)
      abb308(33)=abb308(16)*spak1k2
      abb308(19)=abb308(33)+abb308(19)
      abb308(33)=-16.0_ki*abb308(19)
      abb308(14)=2.0_ki*abb308(14)
      abb308(37)=spbk4k3*abb308(81)
      abb308(43)=spak1k2*abb308(43)
      abb308(46)=spak1e7*abb308(97)
      abb308(37)=abb308(46)+abb308(43)+abb308(37)
      abb308(37)=2.0_ki*abb308(37)
      abb308(19)=abb308(19)*abb308(40)
      abb308(40)=spbk4k3*spak2k4
      abb308(22)=-abb308(40)*abb308(22)
      abb308(23)=spak1k2*abb308(23)
      abb308(22)=abb308(22)+abb308(23)
      abb308(22)=4.0_ki*abb308(22)
      abb308(11)=spbk4k3*abb308(11)
      abb308(23)=spak1k7*abb308(78)
      abb308(11)=abb308(11)+abb308(23)
      abb308(11)=4.0_ki*abb308(11)
      abb308(23)=-spak1k2*abb308(32)
      abb308(13)=abb308(13)*abb308(40)
      abb308(13)=abb308(13)+abb308(23)
      abb308(13)=8.0_ki*abb308(13)
      abb308(23)=spbk4k3*abb308(70)
      abb308(40)=spak1k2*abb308(69)
      abb308(23)=abb308(23)+abb308(40)
      abb308(23)=2.0_ki*abb308(23)
      abb308(31)=-spbk4k3*abb308(31)
      abb308(40)=2.0_ki*abb308(49)
      abb308(43)=4.0_ki*abb308(44)*abb308(82)
      abb308(44)=-spal6k7*abb308(64)
      abb308(16)=-abb308(16)*spak2k7*abb308(63)
      abb308(16)=abb308(16)+abb308(44)
      abb308(16)=8.0_ki*abb308(16)
      abb308(44)=-abb308(103)*abb308(45)
      abb308(46)=-abb308(72)*abb308(85)
      abb308(44)=abb308(46)+abb308(44)
      abb308(44)=4.0_ki*abb308(44)
      abb308(21)=-8.0_ki*abb308(21)*abb308(63)
      abb308(46)=2.0_ki*abb308(85)
      abb308(45)=abb308(87)*abb308(6)*abb308(45)
      abb308(28)=abb308(82)*abb308(28)
      abb308(49)=-abb308(72)*abb308(28)
      abb308(45)=abb308(49)+abb308(45)
      abb308(45)=4.0_ki*abb308(45)
      abb308(49)=spbk3k2*abb308(52)
      abb308(51)=spbk2k1*abb308(55)
      abb308(49)=abb308(49)+abb308(51)
      abb308(49)=8.0_ki*abb308(49)
      abb308(51)=abb308(62)*spak4l6
      abb308(52)=8.0_ki*abb308(32)
      abb308(55)=abb308(52)*spak3k4
      abb308(28)=2.0_ki*abb308(28)
      abb308(52)=abb308(52)*spak1k4
      abb308(57)=-spak3l6*abb308(32)
      abb308(57)=-abb308(101)+abb308(57)
      abb308(57)=8.0_ki*abb308(57)
      abb308(32)=spak1l6*abb308(32)
      abb308(32)=abb308(50)+abb308(32)
      abb308(32)=8.0_ki*abb308(32)
      abb308(50)=8.0_ki*abb308(61)
      abb308(61)=-spak3k4*abb308(50)
      abb308(50)=spak1k4*abb308(50)
      R2d308=0.0_ki
      rat2 = rat2 + R2d308
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='308' value='", &
          & R2d308, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd308h1
