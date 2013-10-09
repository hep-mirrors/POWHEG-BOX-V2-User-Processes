module     p5_usbar_epnebbbarg_abbrevd101h3
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(111), public :: abb101
   complex(ki), public :: R2d101
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
      abb101(1)=1.0_ki/(-mB**2+es67)
      abb101(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb101(3)=NC**(-1)
      abb101(4)=es234**(-1)
      abb101(5)=spak2l6**(-1)
      abb101(6)=spak2l5**(-1)
      abb101(7)=spbl6k2**(-1)
      abb101(8)=sqrt(mB**2)
      abb101(9)=abb101(3)**2
      abb101(10)=abb101(9)+1.0_ki
      abb101(11)=abb101(4)*i_*CVSU*abb101(2)*abb101(1)
      abb101(12)=abb101(10)*abb101(11)
      abb101(13)=TR*gW
      abb101(13)=abb101(13)**2
      abb101(14)=abb101(13)*spbk4k3
      abb101(15)=abb101(14)*spak2k4**2
      abb101(16)=mB**3
      abb101(17)=abb101(15)*abb101(16)
      abb101(18)=abb101(17)*abb101(12)
      abb101(19)=spak2e7*abb101(5)**2
      abb101(20)=spbe7l6*c2
      abb101(21)=abb101(20)*spbl5k1
      abb101(22)=abb101(21)*abb101(18)*abb101(19)
      abb101(23)=2.0_ki*c3
      abb101(24)=abb101(23)*abb101(11)*abb101(3)
      abb101(25)=abb101(24)*abb101(17)
      abb101(26)=abb101(25)*abb101(19)
      abb101(27)=spbl5k1*spbe7l6
      abb101(28)=abb101(26)*abb101(27)
      abb101(22)=abb101(22)-abb101(28)
      abb101(28)=spbk2k1*abb101(7)
      abb101(29)=abb101(22)*abb101(28)
      abb101(13)=abb101(11)*abb101(13)*spak2k4
      abb101(30)=abb101(13)*mB
      abb101(31)=abb101(23)*abb101(3)
      abb101(32)=abb101(31)*abb101(30)
      abb101(33)=abb101(27)*spak2e7
      abb101(34)=abb101(33)*abb101(32)
      abb101(35)=abb101(30)*abb101(10)
      abb101(36)=abb101(35)*abb101(21)
      abb101(37)=abb101(36)*spak2e7
      abb101(34)=abb101(34)-abb101(37)
      abb101(38)=spbl6k1*spbk3k2
      abb101(39)=abb101(34)*abb101(38)
      abb101(40)=spak2e7*abb101(5)
      abb101(41)=abb101(32)*abb101(40)
      abb101(42)=abb101(41)*abb101(27)
      abb101(36)=abb101(36)*abb101(40)
      abb101(36)=abb101(42)-abb101(36)
      abb101(42)=spak2k7*spbk3k2
      abb101(43)=abb101(42)*spbk7k1
      abb101(44)=abb101(36)*abb101(43)
      abb101(45)=abb101(13)*spbk4k3
      abb101(46)=abb101(45)*mB
      abb101(47)=abb101(46)*abb101(10)
      abb101(48)=abb101(47)*abb101(40)
      abb101(49)=abb101(48)*abb101(21)
      abb101(50)=abb101(46)*abb101(40)
      abb101(51)=abb101(50)*abb101(31)
      abb101(52)=abb101(51)*abb101(27)
      abb101(49)=abb101(49)-abb101(52)
      abb101(52)=spak4k7*spbk7k1
      abb101(53)=-abb101(49)*abb101(52)
      abb101(54)=abb101(49)*spak4l6
      abb101(55)=-spbl6k1*abb101(54)
      abb101(29)=abb101(29)+abb101(55)+abb101(53)+abb101(39)+abb101(44)
      abb101(29)=spak1l6*abb101(29)
      abb101(39)=abb101(15)*abb101(24)*abb101(19)
      abb101(44)=spbe7l6*abb101(39)
      abb101(11)=abb101(15)*abb101(11)
      abb101(15)=abb101(11)*abb101(10)*abb101(19)
      abb101(53)=abb101(20)*abb101(15)
      abb101(44)=abb101(44)-abb101(53)
      abb101(44)=abb101(6)*spbk2k1*abb101(7)**2*abb101(44)*mB**5
      abb101(53)=mB**2
      abb101(55)=abb101(53)*abb101(40)
      abb101(56)=abb101(31)*abb101(13)
      abb101(27)=abb101(27)*abb101(8)
      abb101(57)=abb101(56)*abb101(27)
      abb101(58)=abb101(55)*abb101(57)
      abb101(59)=abb101(9)*abb101(13)
      abb101(60)=abb101(59)+abb101(13)
      abb101(61)=abb101(53)*abb101(60)
      abb101(21)=abb101(21)*abb101(8)
      abb101(62)=abb101(21)*abb101(40)
      abb101(63)=abb101(61)*abb101(62)
      abb101(58)=abb101(58)-abb101(63)
      abb101(63)=abb101(7)*spbk3k2
      abb101(58)=abb101(58)*abb101(63)
      abb101(44)=abb101(44)+abb101(58)
      abb101(58)=abb101(18)*abb101(20)
      abb101(64)=abb101(25)*spbe7l6
      abb101(58)=abb101(58)-abb101(64)
      abb101(64)=-abb101(5)*abb101(58)
      abb101(65)=abb101(7)*abb101(6)
      abb101(66)=abb101(64)*abb101(65)
      abb101(67)=spae7k7*spbk7k1
      abb101(68)=spal6e7*spbl6k1
      abb101(67)=abb101(67)-abb101(68)
      abb101(69)=abb101(66)*abb101(67)
      abb101(39)=abb101(8)*abb101(39)
      abb101(70)=abb101(8)*c2
      abb101(15)=abb101(70)*abb101(15)
      abb101(15)=abb101(39)-abb101(15)
      abb101(15)=abb101(15)*mB**4
      abb101(39)=-spbe7k1*abb101(15)
      abb101(9)=abb101(45)*abb101(9)
      abb101(71)=abb101(9)*abb101(16)
      abb101(72)=abb101(16)*abb101(45)
      abb101(71)=abb101(71)+abb101(72)
      abb101(73)=abb101(71)*abb101(20)
      abb101(74)=abb101(31)*abb101(45)
      abb101(75)=spbe7l6*abb101(74)*abb101(16)
      abb101(73)=abb101(73)-abb101(75)
      abb101(75)=-abb101(40)*abb101(73)
      abb101(76)=spak4l6*spbl6k1
      abb101(52)=abb101(52)+abb101(76)
      abb101(77)=abb101(75)*abb101(52)
      abb101(39)=abb101(39)+abb101(77)
      abb101(39)=abb101(65)*abb101(39)
      abb101(39)=abb101(39)+abb101(69)-abb101(44)
      abb101(39)=es12*abb101(39)
      abb101(69)=abb101(31)*spbe7l6
      abb101(77)=abb101(69)*abb101(46)
      abb101(78)=abb101(47)*abb101(20)
      abb101(77)=abb101(77)-abb101(78)
      abb101(78)=abb101(77)*abb101(6)
      abb101(79)=spae7k7*abb101(78)*spbk7k1**2
      abb101(80)=spbk7k1*abb101(6)
      abb101(77)=abb101(77)*abb101(80)
      abb101(68)=abb101(68)*abb101(77)
      abb101(68)=abb101(79)-abb101(68)
      abb101(9)=abb101(9)+abb101(45)
      abb101(79)=abb101(53)*abb101(9)
      abb101(81)=abb101(70)*abb101(40)
      abb101(82)=abb101(79)*abb101(81)
      abb101(53)=abb101(53)*abb101(74)
      abb101(83)=abb101(40)*abb101(8)
      abb101(84)=abb101(53)*abb101(83)
      abb101(82)=abb101(82)-abb101(84)
      abb101(84)=abb101(82)*abb101(80)
      abb101(85)=-spbe7k1*abb101(84)
      abb101(85)=-abb101(68)+abb101(85)
      abb101(85)=spak4k7*abb101(85)
      abb101(78)=spal6e7*abb101(78)*spbl6k1**2
      abb101(77)=spbl6k1*spae7k7*abb101(77)
      abb101(77)=abb101(78)-abb101(77)
      abb101(78)=spbl6k1*abb101(6)
      abb101(82)=-abb101(78)*abb101(82)*spbe7k1
      abb101(82)=abb101(77)+abb101(82)
      abb101(82)=spak4l6*abb101(82)
      abb101(82)=abb101(82)+abb101(85)
      abb101(82)=spak1k2*abb101(82)
      abb101(85)=abb101(31)*spbl5k1
      abb101(86)=abb101(50)*abb101(85)
      abb101(87)=spbl5k1*c2
      abb101(88)=abb101(48)*abb101(87)
      abb101(86)=abb101(86)-abb101(88)
      abb101(88)=abb101(8)**2
      abb101(89)=abb101(86)*abb101(88)
      abb101(90)=abb101(79)*abb101(70)
      abb101(53)=-abb101(8)*abb101(53)
      abb101(53)=abb101(90)+abb101(53)
      abb101(53)=abb101(78)*spak2e7*abb101(53)
      abb101(53)=abb101(53)-abb101(89)
      abb101(53)=spak1k4*abb101(53)
      abb101(90)=spak2k7*spak1k4
      abb101(84)=abb101(90)*abb101(84)
      abb101(91)=abb101(35)*abb101(87)
      abb101(92)=abb101(85)*abb101(30)
      abb101(92)=abb101(91)-abb101(92)
      abb101(93)=abb101(40)*abb101(92)
      abb101(94)=abb101(93)*abb101(88)
      abb101(95)=spak1k2*spbk3k2
      abb101(96)=abb101(94)*abb101(95)
      abb101(53)=abb101(96)+abb101(53)+abb101(84)
      abb101(53)=spbe7k1*abb101(53)
      abb101(84)=mB*spak2k4
      abb101(14)=abb101(14)*abb101(84)**2
      abb101(12)=abb101(14)*abb101(12)
      abb101(84)=abb101(12)*abb101(5)
      abb101(96)=abb101(84)*abb101(21)
      abb101(97)=abb101(14)*abb101(24)
      abb101(98)=abb101(97)*abb101(5)
      abb101(99)=abb101(98)*abb101(27)
      abb101(96)=abb101(96)-abb101(99)
      abb101(99)=-abb101(96)*abb101(28)
      abb101(100)=abb101(9)*abb101(21)
      abb101(101)=abb101(27)*abb101(74)
      abb101(100)=abb101(100)-abb101(101)
      abb101(52)=abb101(100)*abb101(52)
      abb101(21)=abb101(60)*abb101(21)
      abb101(57)=abb101(21)-abb101(57)
      abb101(102)=abb101(57)*abb101(43)
      abb101(52)=abb101(99)+abb101(102)+abb101(52)
      abb101(52)=spak1e7*abb101(52)
      abb101(99)=abb101(19)*abb101(87)
      abb101(102)=abb101(99)*abb101(18)
      abb101(103)=abb101(26)*spbl5k1
      abb101(102)=abb101(102)-abb101(103)
      abb101(102)=abb101(102)*spbk7e7
      abb101(28)=-abb101(28)*abb101(102)
      abb101(103)=spak2e7*spbk7e7*spbk3k2
      abb101(104)=-abb101(92)*abb101(103)
      abb101(105)=-spbl6k1*abb101(104)
      abb101(106)=abb101(86)*spbk7e7
      abb101(76)=-abb101(106)*abb101(76)
      abb101(28)=abb101(28)+abb101(105)+abb101(76)
      abb101(28)=spak1k7*abb101(28)
      abb101(68)=abb101(68)*abb101(90)
      abb101(76)=abb101(55)*abb101(101)
      abb101(62)=abb101(62)*abb101(79)
      abb101(62)=abb101(76)-abb101(62)
      abb101(76)=-abb101(7)*abb101(62)
      abb101(73)=spbl6k1*abb101(65)*spak2e7*abb101(73)
      abb101(73)=abb101(76)+abb101(73)
      abb101(73)=spak1k4*abb101(73)
      abb101(76)=abb101(90)*spbk7k1
      abb101(75)=-abb101(75)*abb101(65)*abb101(76)
      abb101(73)=abb101(73)+abb101(75)
      abb101(73)=spbk2k1*abb101(73)
      abb101(75)=-spak1k4*abb101(77)
      abb101(77)=abb101(57)*spbk3k2
      abb101(90)=spak1e7*spbl6k1*abb101(77)
      abb101(75)=abb101(75)+abb101(90)
      abb101(75)=spak2l6*abb101(75)
      abb101(90)=abb101(106)*spak4k7
      abb101(101)=abb101(42)*spbk7e7
      abb101(105)=abb101(101)*abb101(93)
      abb101(90)=abb101(90)-abb101(105)
      abb101(105)=es71*abb101(90)
      abb101(107)=abb101(67)*spak1k4
      abb101(108)=-abb101(100)*abb101(107)
      abb101(67)=abb101(67)*spak1k2
      abb101(109)=-abb101(77)*abb101(67)
      abb101(28)=abb101(105)+abb101(28)+abb101(29)+abb101(75)+abb101(52)+abb101&
      &(39)+abb101(73)+abb101(53)+abb101(109)+abb101(108)+abb101(68)+abb101(82)
      abb101(28)=4.0_ki*abb101(28)
      abb101(29)=abb101(45)*abb101(8)
      abb101(39)=abb101(29)-abb101(46)
      abb101(39)=abb101(39)*abb101(23)
      abb101(45)=spbl5k1*abb101(3)
      abb101(52)=abb101(45)*abb101(39)
      abb101(53)=abb101(87)*abb101(8)
      abb101(68)=abb101(53)*abb101(9)
      abb101(73)=abb101(47)*abb101(87)
      abb101(52)=abb101(52)-abb101(68)+abb101(73)
      abb101(75)=-spak1k4*spbl6k1*abb101(52)
      abb101(45)=abb101(45)*abb101(30)
      abb101(82)=abb101(13)*abb101(3)
      abb101(87)=abb101(82)*abb101(8)
      abb101(105)=abb101(87)*spbl5k1
      abb101(45)=abb101(45)-abb101(105)
      abb101(45)=abb101(45)*abb101(23)
      abb101(53)=abb101(53)*abb101(60)
      abb101(45)=abb101(45)+abb101(53)-abb101(91)
      abb101(38)=abb101(45)*abb101(38)
      abb101(91)=abb101(5)*abb101(92)
      abb101(43)=-abb101(91)*abb101(43)
      abb101(38)=abb101(38)+abb101(43)
      abb101(38)=spak1k2*abb101(38)
      abb101(43)=abb101(73)*abb101(5)
      abb101(46)=abb101(46)*abb101(5)
      abb101(73)=abb101(46)*abb101(85)
      abb101(43)=abb101(43)-abb101(73)
      abb101(73)=-abb101(43)*abb101(76)
      abb101(38)=abb101(38)+abb101(75)+abb101(73)
      abb101(38)=8.0_ki*abb101(38)
      abb101(73)=abb101(93)*spbk3k2
      abb101(75)=abb101(73)*spak1k2
      abb101(76)=abb101(86)*spak1k4
      abb101(75)=abb101(75)-abb101(76)
      abb101(75)=abb101(75)*spbe7k1
      abb101(11)=mB*abb101(11)
      abb101(10)=abb101(11)*abb101(10)
      abb101(76)=abb101(10)*abb101(20)
      abb101(92)=abb101(11)*abb101(69)
      abb101(76)=abb101(76)-abb101(92)
      abb101(92)=abb101(76)*spae7k7
      abb101(93)=abb101(92)*abb101(80)
      abb101(90)=abb101(93)+abb101(90)
      abb101(93)=abb101(75)+abb101(90)
      abb101(93)=8.0_ki*abb101(93)
      abb101(105)=abb101(76)*spal6e7
      abb101(108)=abb101(105)*abb101(78)
      abb101(54)=abb101(108)-abb101(54)
      abb101(34)=-spbk3k2*abb101(34)
      abb101(34)=abb101(75)+abb101(34)-abb101(54)
      abb101(34)=8.0_ki*abb101(34)
      abb101(75)=abb101(71)*abb101(99)
      abb101(108)=abb101(19)*abb101(85)
      abb101(72)=abb101(108)*abb101(72)
      abb101(72)=abb101(75)-abb101(72)
      abb101(72)=abb101(72)*abb101(7)
      abb101(75)=abb101(72)*spak1k4
      abb101(109)=abb101(16)*abb101(13)
      abb101(108)=abb101(109)*abb101(108)
      abb101(59)=abb101(16)*abb101(59)
      abb101(59)=abb101(59)+abb101(109)
      abb101(99)=abb101(59)*abb101(99)
      abb101(99)=abb101(108)-abb101(99)
      abb101(99)=abb101(99)*abb101(63)
      abb101(108)=-spak1k2*abb101(99)
      abb101(108)=abb101(75)+abb101(108)
      abb101(108)=spbe7k1*abb101(108)
      abb101(44)=abb101(108)+abb101(44)
      abb101(44)=8.0_ki*abb101(44)
      abb101(27)=spak2e7*abb101(27)*abb101(82)
      abb101(82)=abb101(30)*abb101(3)
      abb101(33)=abb101(82)*abb101(33)
      abb101(27)=abb101(27)-abb101(33)
      abb101(27)=abb101(27)*abb101(23)
      abb101(21)=abb101(21)*spak2e7
      abb101(21)=abb101(27)-abb101(21)+abb101(37)
      abb101(21)=abb101(21)*spbk3k2
      abb101(27)=abb101(97)*abb101(83)
      abb101(12)=abb101(81)*abb101(12)
      abb101(12)=abb101(27)-abb101(12)
      abb101(27)=abb101(6)*abb101(12)*spbe7k1
      abb101(33)=-abb101(40)*abb101(58)
      abb101(37)=abb101(33)*abb101(65)
      abb101(81)=abb101(37)*spbk2k1
      abb101(83)=abb101(100)*spak4e7
      abb101(21)=abb101(21)+abb101(81)+abb101(27)-abb101(83)+abb101(90)-abb101(&
      &54)
      abb101(27)=8.0_ki*abb101(21)
      abb101(21)=-4.0_ki*abb101(21)
      abb101(54)=-abb101(57)*abb101(42)
      abb101(57)=-spak4k7*abb101(100)
      abb101(54)=abb101(54)+abb101(57)
      abb101(54)=4.0_ki*abb101(54)
      abb101(12)=4.0_ki*abb101(12)
      abb101(57)=abb101(80)*abb101(12)
      abb101(29)=abb101(29)*abb101(85)
      abb101(29)=abb101(29)-abb101(68)
      abb101(68)=spak1k4*abb101(29)
      abb101(13)=abb101(8)*abb101(85)*abb101(13)
      abb101(13)=abb101(13)-abb101(53)
      abb101(53)=abb101(13)*abb101(95)
      abb101(53)=abb101(68)+abb101(53)
      abb101(53)=spbe7k1*abb101(53)
      abb101(68)=-spak4l6*abb101(100)
      abb101(81)=-spak2l6*abb101(77)
      abb101(53)=abb101(81)+abb101(53)+abb101(68)
      abb101(53)=4.0_ki*abb101(53)
      abb101(12)=abb101(78)*abb101(12)
      abb101(68)=4.0_ki*abb101(89)
      abb101(81)=8.0_ki*abb101(86)
      abb101(83)=-8.0_ki*abb101(72)
      abb101(29)=-4.0_ki*abb101(29)
      abb101(85)=4.0_ki*abb101(7)
      abb101(86)=abb101(96)*abb101(85)
      abb101(15)=abb101(15)*abb101(65)
      abb101(15)=abb101(15)-abb101(75)
      abb101(15)=spbk2k1*abb101(15)
      abb101(75)=es12*abb101(99)
      abb101(89)=-spbk3k2*abb101(94)
      abb101(90)=abb101(43)*abb101(107)
      abb101(94)=abb101(91)*spbk3k2
      abb101(67)=abb101(94)*abb101(67)
      abb101(15)=abb101(75)+abb101(15)+abb101(67)+abb101(89)+abb101(90)
      abb101(15)=4.0_ki*abb101(15)
      abb101(67)=8.0_ki*abb101(73)
      abb101(73)=4.0_ki*spbk3k2
      abb101(13)=-abb101(13)*abb101(73)
      abb101(75)=abb101(20)*abb101(8)
      abb101(89)=abb101(9)*abb101(75)
      abb101(90)=abb101(8)*spbe7l6
      abb101(95)=abb101(90)*abb101(74)
      abb101(89)=abb101(89)-abb101(95)
      abb101(96)=-spak4l6*abb101(89)
      abb101(97)=abb101(60)*abb101(75)
      abb101(99)=abb101(56)*abb101(90)
      abb101(97)=abb101(97)-abb101(99)
      abb101(107)=-spak2l6*spbk3k2*abb101(97)
      abb101(96)=abb101(107)+abb101(96)
      abb101(96)=spbl6l5*abb101(96)
      abb101(107)=-abb101(97)*abb101(42)
      abb101(108)=-spak4k7*abb101(89)
      abb101(107)=abb101(107)+abb101(108)
      abb101(107)=spbk7l5*abb101(107)
      abb101(108)=-abb101(75)*abb101(84)
      abb101(90)=abb101(90)*abb101(98)
      abb101(90)=abb101(108)+abb101(90)
      abb101(108)=spbl5k2*abb101(7)
      abb101(90)=abb101(90)*abb101(108)
      abb101(76)=abb101(76)*abb101(6)
      abb101(109)=-abb101(88)*abb101(76)
      abb101(90)=abb101(90)+abb101(107)+abb101(109)+abb101(96)
      abb101(90)=4.0_ki*abb101(90)
      abb101(96)=8.0_ki*abb101(76)
      abb101(107)=8.0_ki*abb101(66)
      abb101(84)=abb101(84)*abb101(70)
      abb101(98)=abb101(8)*abb101(98)
      abb101(98)=-abb101(84)+abb101(98)
      abb101(109)=4.0_ki*abb101(6)
      abb101(98)=abb101(98)*abb101(109)
      abb101(80)=-abb101(80)*abb101(105)
      abb101(106)=spak4l6*abb101(106)
      abb101(80)=abb101(106)+abb101(80)+abb101(104)
      abb101(80)=4.0_ki*abb101(80)
      abb101(104)=spbk7k1*abb101(37)
      abb101(102)=abb101(7)*abb101(102)
      abb101(102)=abb101(104)+abb101(102)
      abb101(102)=4.0_ki*abb101(102)
      abb101(104)=abb101(35)*c2
      abb101(32)=abb101(104)-abb101(32)
      abb101(103)=-abb101(32)*abb101(103)
      abb101(106)=abb101(48)*c2
      abb101(51)=abb101(106)-abb101(51)
      abb101(106)=abb101(51)*spbk7e7
      abb101(110)=-spak4l6*abb101(106)
      abb101(103)=abb101(103)+abb101(110)
      abb101(103)=spbl6l5*abb101(103)
      abb101(110)=abb101(104)*abb101(40)
      abb101(41)=abb101(110)-abb101(41)
      abb101(101)=-abb101(41)*abb101(101)
      abb101(106)=-spak4k7*abb101(106)
      abb101(101)=abb101(101)+abb101(106)
      abb101(101)=spbk7l5*abb101(101)
      abb101(106)=abb101(19)*c2
      abb101(110)=-abb101(18)*abb101(106)
      abb101(26)=abb101(110)+abb101(26)
      abb101(26)=spbk7e7*abb101(26)*abb101(108)
      abb101(110)=-spbk7k2*abb101(37)
      abb101(111)=spbk7l6*abb101(6)
      abb101(105)=abb101(105)*abb101(111)
      abb101(26)=abb101(110)+abb101(105)+abb101(26)+abb101(103)+abb101(101)
      abb101(26)=4.0_ki*abb101(26)
      abb101(11)=abb101(11)*abb101(31)
      abb101(10)=abb101(10)*c2
      abb101(10)=abb101(11)-abb101(10)
      abb101(11)=-8.0_ki*abb101(10)*abb101(111)
      abb101(10)=spbk7e7*abb101(10)*abb101(109)
      abb101(78)=abb101(78)*abb101(92)
      abb101(36)=-abb101(36)*abb101(42)
      abb101(49)=spak4k7*abb101(49)
      abb101(36)=abb101(49)+abb101(78)+abb101(36)
      abb101(36)=4.0_ki*abb101(36)
      abb101(22)=-abb101(7)*abb101(22)
      abb101(37)=spbl6k1*abb101(37)
      abb101(22)=abb101(22)+abb101(37)
      abb101(22)=4.0_ki*abb101(22)
      abb101(33)=-abb101(6)*abb101(33)
      abb101(30)=abb101(69)*abb101(30)
      abb101(35)=abb101(35)*abb101(20)
      abb101(30)=abb101(30)-abb101(35)
      abb101(35)=-spbk3k2*spak2e7*abb101(30)
      abb101(37)=abb101(50)*abb101(69)
      abb101(20)=abb101(48)*abb101(20)
      abb101(20)=abb101(37)-abb101(20)
      abb101(37)=-spak4l6*abb101(20)
      abb101(35)=abb101(35)+abb101(37)
      abb101(35)=spbl6l5*abb101(35)
      abb101(30)=-abb101(42)*abb101(40)*abb101(30)
      abb101(20)=-spak4k7*abb101(20)
      abb101(20)=abb101(30)+abb101(20)
      abb101(20)=spbk7l5*abb101(20)
      abb101(30)=abb101(108)*abb101(19)*abb101(58)
      abb101(37)=abb101(92)*abb101(111)
      abb101(20)=abb101(37)+abb101(30)+abb101(20)+abb101(33)+abb101(35)
      abb101(20)=4.0_ki*abb101(20)
      abb101(30)=4.0_ki*abb101(76)
      abb101(33)=4.0_ki*spae7k7
      abb101(35)=abb101(100)*abb101(33)
      abb101(37)=8.0_ki*spak2k7*abb101(43)
      abb101(48)=-abb101(43)*abb101(33)
      abb101(49)=4.0_ki*spal6e7
      abb101(50)=-abb101(100)*abb101(49)
      abb101(52)=8.0_ki*abb101(52)
      abb101(43)=abb101(43)*abb101(49)
      abb101(58)=abb101(62)*abb101(85)
      abb101(62)=4.0_ki*abb101(72)
      abb101(40)=abb101(75)*abb101(40)
      abb101(69)=abb101(79)*abb101(40)
      abb101(72)=-abb101(55)*abb101(95)
      abb101(69)=abb101(69)+abb101(72)
      abb101(69)=abb101(69)*abb101(108)
      abb101(72)=spbl6l5*spal6e7
      abb101(75)=spbk7l5*spae7k7
      abb101(72)=abb101(72)-abb101(75)
      abb101(75)=-abb101(89)*abb101(72)
      abb101(76)=abb101(88)*spbe7l5
      abb101(78)=-abb101(51)*abb101(76)
      abb101(69)=abb101(69)+abb101(78)+abb101(75)
      abb101(69)=4.0_ki*abb101(69)
      abb101(9)=abb101(70)*abb101(9)
      abb101(39)=abb101(3)*abb101(39)
      abb101(75)=c2*abb101(47)
      abb101(39)=abb101(39)+abb101(75)-abb101(9)
      abb101(39)=spbl6l5*abb101(39)
      abb101(31)=abb101(46)*abb101(31)
      abb101(46)=abb101(5)*c2
      abb101(47)=abb101(46)*abb101(47)
      abb101(31)=abb101(31)-abb101(47)
      abb101(47)=-spbk7l5*spak2k7*abb101(31)
      abb101(39)=abb101(39)+abb101(47)
      abb101(39)=8.0_ki*abb101(39)
      abb101(47)=8.0_ki*spbe7l5
      abb101(51)=abb101(51)*abb101(47)
      abb101(16)=abb101(19)*abb101(16)
      abb101(19)=abb101(16)*abb101(74)
      abb101(71)=abb101(106)*abb101(71)
      abb101(19)=abb101(19)-abb101(71)
      abb101(71)=abb101(7)*abb101(19)*abb101(47)
      abb101(74)=-abb101(8)*abb101(74)
      abb101(9)=abb101(9)+abb101(74)
      abb101(9)=4.0_ki*spbe7l5*abb101(9)
      abb101(19)=abb101(19)*abb101(108)
      abb101(31)=-abb101(31)*abb101(72)
      abb101(19)=abb101(19)+abb101(31)
      abb101(19)=4.0_ki*abb101(19)
      abb101(31)=abb101(66)*spbk2k1
      abb101(31)=abb101(31)-abb101(77)
      abb101(31)=4.0_ki*abb101(31)
      abb101(74)=-spae7k7*abb101(31)
      abb101(75)=8.0_ki*abb101(91)*abb101(42)
      abb101(33)=-abb101(94)*abb101(33)
      abb101(31)=spal6e7*abb101(31)
      abb101(45)=-8.0_ki*spbk3k2*abb101(45)
      abb101(49)=abb101(94)*abb101(49)
      abb101(40)=abb101(61)*abb101(40)
      abb101(55)=-abb101(55)*abb101(99)
      abb101(40)=abb101(40)+abb101(55)
      abb101(40)=abb101(40)*abb101(108)
      abb101(55)=-abb101(97)*abb101(72)
      abb101(61)=-abb101(41)*abb101(76)
      abb101(40)=abb101(40)+abb101(61)+abb101(55)
      abb101(40)=spbk3k2*abb101(40)
      abb101(55)=spal6e7*abb101(6)*abb101(64)
      abb101(61)=-spbk7k2*spae7k7*abb101(66)
      abb101(40)=abb101(61)+abb101(55)+abb101(40)
      abb101(40)=4.0_ki*abb101(40)
      abb101(18)=abb101(46)*abb101(18)
      abb101(14)=-abb101(8)*abb101(14)
      abb101(14)=abb101(17)+abb101(14)
      abb101(14)=abb101(5)*abb101(14)*abb101(24)
      abb101(14)=abb101(14)-abb101(18)+abb101(84)
      abb101(14)=abb101(6)*abb101(14)
      abb101(17)=abb101(70)*abb101(60)
      abb101(24)=-abb101(82)+abb101(87)
      abb101(23)=abb101(24)*abb101(23)
      abb101(23)=abb101(23)+abb101(104)-abb101(17)
      abb101(23)=spbl6l5*spbk3k2*abb101(23)
      abb101(24)=-abb101(5)*abb101(32)
      abb101(32)=-spbk7l5*abb101(24)*abb101(42)
      abb101(14)=abb101(32)+abb101(14)+abb101(23)
      abb101(14)=8.0_ki*abb101(14)
      abb101(23)=spbk3k2*abb101(41)*abb101(47)
      abb101(16)=abb101(16)*abb101(56)
      abb101(32)=abb101(59)*abb101(106)
      abb101(16)=abb101(16)-abb101(32)
      abb101(32)=abb101(16)*abb101(63)*abb101(47)
      abb101(25)=-abb101(5)*abb101(25)
      abb101(18)=abb101(18)+abb101(25)
      abb101(18)=spbe7k2*abb101(18)*abb101(65)
      abb101(25)=-abb101(8)*abb101(56)
      abb101(17)=abb101(17)+abb101(25)
      abb101(17)=spbe7l5*spbk3k2*abb101(17)
      abb101(17)=abb101(17)+abb101(18)
      abb101(17)=4.0_ki*abb101(17)
      abb101(16)=abb101(16)*abb101(108)
      abb101(18)=-abb101(24)*abb101(72)
      abb101(16)=abb101(16)+abb101(18)
      abb101(16)=abb101(16)*abb101(73)
      R2d101=0.0_ki
      rat2 = rat2 + R2d101
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='101' value='", &
          & R2d101, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd101h3
