module     p5_usbar_epnebbbarg_abbrevd175h2
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(166), public :: abb175
   complex(ki), public :: R2d175
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
      abb175(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb175(2)=1.0_ki/(mB**2-es67-es56+es567)
      abb175(3)=es234**(-1)
      abb175(4)=es567**(-1)
      abb175(5)=spbl5k2**(-1)
      abb175(6)=spak2l6**(-1)
      abb175(7)=spak2l5**(-1)
      abb175(8)=sqrt(mB**2)
      abb175(9)=1.0_ki/(es34+es567-es12-es234)
      abb175(10)=spbl6k2**(-1)
      abb175(11)=NC*c1
      abb175(11)=c2-abb175(11)
      abb175(12)=TR*gW
      abb175(11)=abb175(11)*abb175(12)**2*i_*CVSU*abb175(4)*abb175(2)
      abb175(12)=-mB*abb175(11)
      abb175(13)=spak2k4**2
      abb175(14)=spal5e7*abb175(1)
      abb175(15)=abb175(14)*abb175(3)
      abb175(16)=abb175(13)*abb175(15)
      abb175(17)=abb175(6)*spbk4k3
      abb175(18)=abb175(17)*abb175(8)
      abb175(19)=-abb175(18)*abb175(16)*abb175(12)
      abb175(20)=abb175(19)*spbe7k1
      abb175(21)=mB**2
      abb175(22)=abb175(21)*abb175(5)
      abb175(23)=-abb175(11)*abb175(16)*abb175(22)
      abb175(24)=spbk4k3*spbe7k2
      abb175(25)=abb175(24)*abb175(6)
      abb175(26)=abb175(25)*spbl5k1
      abb175(27)=abb175(26)*abb175(23)
      abb175(21)=-abb175(21)*abb175(11)
      abb175(28)=abb175(5)*abb175(1)
      abb175(29)=-abb175(28)*abb175(21)
      abb175(13)=abb175(13)*abb175(3)
      abb175(30)=-abb175(13)*abb175(29)
      abb175(31)=abb175(25)*spae7k7
      abb175(32)=abb175(30)*abb175(31)*spbk7k1
      abb175(20)=abb175(27)+abb175(20)-abb175(32)
      abb175(27)=spbk7e7*spak2k7
      abb175(32)=abb175(27)*spbl6k1
      abb175(33)=spak2l5*spbe7l5
      abb175(34)=abb175(33)*spbl6k1
      abb175(35)=abb175(32)-abb175(34)
      abb175(15)=abb175(15)*spak2k4
      abb175(36)=-abb175(15)*abb175(11)
      abb175(37)=abb175(36)*spbk3k2
      abb175(38)=-abb175(37)*abb175(35)
      abb175(39)=-abb175(14)*abb175(11)
      abb175(40)=spbk3k1*abb175(9)
      abb175(41)=abb175(39)*abb175(40)
      abb175(42)=abb175(33)*abb175(41)
      abb175(43)=abb175(40)*spak2k7
      abb175(44)=abb175(43)*spbk7e7
      abb175(45)=abb175(44)*abb175(39)
      abb175(46)=abb175(42)-abb175(45)
      abb175(47)=spak1k4*spbl6k1
      abb175(48)=spbl6k3*spak3k4
      abb175(49)=abb175(47)-abb175(48)
      abb175(46)=-abb175(46)*abb175(49)
      abb175(50)=abb175(24)*abb175(7)
      abb175(51)=abb175(50)*spbl6k1
      abb175(52)=abb175(51)*abb175(23)
      abb175(53)=abb175(3)*spak2k4
      abb175(54)=abb175(28)*abb175(53)
      abb175(55)=-abb175(54)*abb175(12)
      abb175(56)=spbl6k1*abb175(8)
      abb175(57)=abb175(56)*abb175(55)
      abb175(58)=abb175(57)*abb175(24)
      abb175(59)=abb175(58)*spak4e7
      abb175(60)=abb175(36)*spbk4k3
      abb175(61)=abb175(60)*spak4l5
      abb175(62)=spbe7l5*spbl6k1
      abb175(63)=abb175(61)*abb175(62)
      abb175(64)=abb175(60)*spak4k7
      abb175(65)=spbk7e7*spbl6k1
      abb175(66)=abb175(64)*abb175(65)
      abb175(38)=-abb175(59)+abb175(63)+abb175(20)-abb175(66)-abb175(52)+abb175&
      &(46)+abb175(38)
      abb175(46)=2.0_ki*abb175(38)
      abb175(52)=-mB*abb175(36)
      abb175(59)=-abb175(5)*abb175(52)
      abb175(63)=spbe7k2*abb175(8)
      abb175(66)=abb175(63)*spbk3k2
      abb175(67)=spak2k7*abb175(59)*abb175(66)
      abb175(68)=-abb175(14)*abb175(12)
      abb175(69)=-abb175(5)*abb175(68)
      abb175(70)=abb175(69)*abb175(63)
      abb175(71)=abb175(43)*spak1k4
      abb175(72)=abb175(70)*abb175(71)
      abb175(67)=abb175(67)-abb175(72)
      abb175(72)=-spbl6k1*abb175(67)
      abb175(66)=abb175(66)*abb175(55)
      abb175(73)=abb175(66)*spak2l5
      abb175(74)=spbl6k1*abb175(73)
      abb175(75)=-abb175(28)*abb175(12)
      abb175(76)=abb175(75)*abb175(63)
      abb175(77)=abb175(40)*spak2l5
      abb175(78)=abb175(76)*abb175(77)
      abb175(47)=-abb175(78)*abb175(47)
      abb175(47)=abb175(74)+abb175(47)
      abb175(47)=spae7k7*abb175(47)
      abb175(74)=-spak4k7*abb175(59)*abb175(56)*abb175(24)
      abb175(79)=abb175(24)*spae7k7
      abb175(57)=spak4l5*abb175(79)*abb175(57)
      abb175(80)=abb175(43)*spak3k4
      abb175(70)=abb175(70)*abb175(80)
      abb175(81)=abb175(78)*spak3k4
      abb175(82)=abb175(81)*spae7k7
      abb175(70)=abb175(70)-abb175(82)
      abb175(82)=-spbl6k3*abb175(70)
      abb175(47)=abb175(82)+abb175(57)+abb175(74)+abb175(47)+abb175(72)
      abb175(47)=spbk7l5*abb175(47)
      abb175(57)=abb175(7)*spbk4k3
      abb175(72)=abb175(57)*abb175(23)
      abb175(74)=abb175(72)*spbk2k1
      abb175(82)=-abb175(16)*abb175(21)
      abb175(83)=abb175(82)*abb175(17)
      abb175(84)=abb175(10)*spbk2k1
      abb175(85)=abb175(83)*abb175(84)
      abb175(74)=abb175(74)+abb175(85)
      abb175(85)=abb175(61)*spbl5k1
      abb175(86)=abb175(64)*spbk7k1
      abb175(87)=-abb175(85)-abb175(86)+abb175(74)
      abb175(88)=abb175(8)**2
      abb175(87)=abb175(88)*abb175(87)
      abb175(89)=abb175(71)*abb175(39)
      abb175(90)=abb175(89)*abb175(88)
      abb175(91)=abb175(37)*abb175(88)
      abb175(92)=abb175(91)*spak2k7
      abb175(90)=abb175(90)-abb175(92)
      abb175(92)=spbk7k1*abb175(90)
      abb175(93)=abb175(41)*spak1k4
      abb175(94)=abb175(93)-abb175(37)
      abb175(95)=abb175(88)*spak2l5
      abb175(96)=abb175(94)*abb175(95)
      abb175(97)=spbl5k1*abb175(96)
      abb175(87)=abb175(92)+abb175(97)+abb175(87)
      abb175(87)=spbe7l6*abb175(87)
      abb175(92)=abb175(5)**2
      abb175(97)=abb175(11)*abb175(92)*abb175(1)
      abb175(98)=mB**3
      abb175(99)=abb175(13)*abb175(98)
      abb175(100)=-abb175(99)*abb175(97)
      abb175(101)=abb175(100)*spae7k7
      abb175(102)=spbk7k1*abb175(101)
      abb175(92)=-abb175(92)*abb175(11)
      abb175(103)=abb175(98)*abb175(16)
      abb175(104)=abb175(92)*abb175(103)
      abb175(105)=-spbl5k1*abb175(104)
      abb175(102)=abb175(102)+abb175(105)
      abb175(105)=abb175(50)*abb175(8)
      abb175(102)=abb175(105)*abb175(102)
      abb175(72)=spbe7k1*abb175(88)*abb175(72)
      abb175(72)=abb175(72)+abb175(102)
      abb175(72)=spbl6k2*abb175(72)
      abb175(102)=-spbl6l5*abb175(70)
      abb175(106)=abb175(80)*abb175(39)
      abb175(107)=abb175(88)*spbe7l6
      abb175(108)=-abb175(107)*abb175(106)
      abb175(102)=abb175(102)+abb175(108)
      abb175(102)=spbk7k3*abb175(102)
      abb175(70)=-spbk7l6*abb175(70)
      abb175(108)=abb175(107)*abb175(41)
      abb175(109)=-spak3k4*spak2l5*abb175(108)
      abb175(70)=abb175(70)+abb175(109)
      abb175(70)=spbl5k3*abb175(70)
      abb175(70)=abb175(87)+abb175(102)+abb175(70)+abb175(72)
      abb175(72)=-abb175(5)*abb175(11)
      abb175(87)=-abb175(103)*abb175(72)
      abb175(102)=2.0_ki*abb175(87)
      abb175(109)=abb175(23)*abb175(8)
      abb175(110)=-abb175(102)-abb175(109)
      abb175(110)=spbl5k1*abb175(110)
      abb175(103)=-abb175(103)*abb175(11)
      abb175(82)=-abb175(8)*abb175(82)
      abb175(82)=abb175(82)-abb175(103)
      abb175(111)=2.0_ki*abb175(10)
      abb175(112)=abb175(111)*spbl6k1
      abb175(82)=abb175(82)*abb175(112)
      abb175(82)=abb175(82)+abb175(110)
      abb175(110)=abb175(6)*abb175(8)
      abb175(113)=abb175(110)*abb175(24)
      abb175(82)=abb175(113)*abb175(82)
      abb175(78)=abb175(78)*spak1k4
      abb175(73)=abb175(78)-abb175(73)
      abb175(78)=abb175(73)*spae7k7
      abb175(67)=abb175(67)+abb175(78)
      abb175(78)=-spbl5k1*abb175(67)
      abb175(105)=abb175(105)*spbk2k1
      abb175(114)=abb175(105)*abb175(101)
      abb175(28)=-abb175(28)*abb175(11)
      abb175(99)=-abb175(99)*abb175(28)
      abb175(115)=abb175(79)*abb175(110)
      abb175(116)=abb175(115)*abb175(99)
      abb175(117)=abb175(84)*abb175(116)
      abb175(78)=abb175(117)+abb175(78)+abb175(114)
      abb175(114)=2.0_ki*spbk7l6
      abb175(78)=abb175(78)*abb175(114)
      abb175(67)=-spbk7k1*abb175(67)
      abb175(104)=abb175(104)*abb175(105)
      abb175(117)=abb175(113)*abb175(84)
      abb175(118)=abb175(87)*abb175(117)
      abb175(67)=abb175(118)+abb175(67)+abb175(104)
      abb175(104)=2.0_ki*spbl6l5
      abb175(67)=abb175(67)*abb175(104)
      abb175(118)=abb175(18)*abb175(52)
      abb175(119)=-abb175(33)*abb175(118)
      abb175(120)=abb175(24)*abb175(8)
      abb175(121)=abb175(59)*abb175(120)
      abb175(122)=-spbl6l5*abb175(121)
      abb175(119)=abb175(122)+abb175(119)
      abb175(122)=2.0_ki*spbk7k1
      abb175(119)=abb175(122)*abb175(119)
      abb175(123)=-spak2l5*spbk7e7*abb175(118)
      abb175(121)=-spbk7l6*abb175(121)
      abb175(121)=abb175(121)+abb175(123)
      abb175(123)=2.0_ki*spbl5k1
      abb175(121)=abb175(123)*abb175(121)
      abb175(124)=abb175(36)*abb175(8)
      abb175(125)=abb175(124)-abb175(52)
      abb175(126)=spbk4k3*abb175(8)
      abb175(125)=abb175(125)*abb175(126)
      abb175(127)=abb175(65)*abb175(125)
      abb175(119)=abb175(127)+abb175(121)+abb175(119)
      abb175(119)=spak4k7*abb175(119)
      abb175(121)=abb175(27)*abb175(123)
      abb175(127)=abb175(122)*spak2k7
      abb175(128)=spbe7l5*abb175(127)
      abb175(121)=abb175(121)+abb175(128)
      abb175(121)=abb175(118)*abb175(121)
      abb175(128)=abb175(55)*abb175(8)
      abb175(129)=abb175(128)*abb175(79)
      abb175(130)=spbk7l6*abb175(123)
      abb175(131)=spbl6l5*abb175(122)
      abb175(130)=abb175(131)+abb175(130)
      abb175(130)=abb175(129)*abb175(130)
      abb175(125)=-abb175(62)*abb175(125)
      abb175(121)=abb175(125)+abb175(130)+abb175(121)
      abb175(121)=spak4l5*abb175(121)
      abb175(64)=abb175(64)*abb175(114)
      abb175(61)=-abb175(61)*abb175(104)
      abb175(61)=abb175(61)+abb175(64)-abb175(83)
      abb175(61)=abb175(88)*abb175(61)
      abb175(64)=-abb175(90)*abb175(114)
      abb175(83)=abb175(96)*abb175(104)
      abb175(61)=abb175(83)+abb175(64)+abb175(61)
      abb175(61)=spbe7k1*abb175(61)
      abb175(64)=2.0_ki*spal5l6
      abb175(83)=abb175(64)*abb175(62)
      abb175(90)=2.0_ki*spal6k7
      abb175(96)=abb175(90)*abb175(65)
      abb175(83)=abb175(83)+abb175(96)
      abb175(96)=-spbk7k1*spbe7l5
      abb175(104)=-spbl5k1*spbk7e7
      abb175(96)=abb175(96)+abb175(104)
      abb175(96)=spal5k7*abb175(96)
      abb175(96)=abb175(96)-abb175(83)
      abb175(19)=abb175(19)*abb175(96)
      abb175(96)=abb175(8)*abb175(9)
      abb175(104)=abb175(96)*abb175(39)
      abb175(114)=3.0_ki*abb175(9)
      abb175(125)=abb175(114)*abb175(68)
      abb175(104)=abb175(104)-abb175(125)
      abb175(125)=-spak1k4*abb175(56)
      abb175(130)=abb175(48)*abb175(8)
      abb175(125)=abb175(130)+abb175(125)
      abb175(130)=abb175(33)-abb175(27)
      abb175(131)=-spbk3k1*abb175(130)
      abb175(104)=abb175(125)*abb175(131)*abb175(104)
      abb175(102)=-abb175(102)+abb175(109)
      abb175(102)=abb175(102)*abb175(50)
      abb175(109)=3.0_ki*abb175(52)
      abb175(124)=abb175(109)-abb175(124)
      abb175(124)=spbk3k2*abb175(124)*abb175(130)
      abb175(102)=abb175(102)+abb175(124)
      abb175(102)=abb175(56)*abb175(102)
      abb175(124)=abb175(8)*abb175(30)
      abb175(124)=abb175(124)-abb175(99)
      abb175(115)=abb175(124)*abb175(115)
      abb175(124)=spak2k7*abb175(87)*abb175(110)*abb175(50)
      abb175(115)=abb175(115)-3.0_ki*abb175(124)
      abb175(115)=spbk7k1*abb175(115)
      abb175(124)=abb175(25)*abb175(88)*abb175(127)
      abb175(125)=abb175(88)*spbl6k1
      abb175(127)=abb175(24)*abb175(125)
      abb175(132)=abb175(26)*abb175(95)
      abb175(124)=2.0_ki*abb175(132)+abb175(127)+abb175(124)
      abb175(54)=-abb175(54)*abb175(21)
      abb175(124)=spak4e7*abb175(54)*abb175(124)
      abb175(127)=2.0_ki*spal6e7
      abb175(30)=-abb175(30)*abb175(25)*abb175(127)*abb175(125)
      abb175(125)=abb175(56)*abb175(50)
      abb175(101)=abb175(101)*abb175(125)
      abb175(112)=-abb175(116)*abb175(112)
      abb175(101)=abb175(101)+abb175(112)
      abb175(101)=spbk7k2*abb175(101)
      abb175(112)=spbk2k1*abb175(87)*abb175(18)
      abb175(116)=-abb175(7)*abb175(27)
      abb175(116)=spbe7l5+abb175(116)
      abb175(116)=abb175(116)*abb175(112)
      abb175(132)=2.0_ki*spak4l6
      abb175(133)=-abb175(132)*abb175(118)*abb175(35)
      abb175(106)=spbk7l6*abb175(88)*abb175(106)
      abb175(95)=-spbl6l5*spak3k4*abb175(41)*abb175(95)
      abb175(95)=abb175(106)+abb175(95)
      abb175(106)=2.0_ki*spbe7k3
      abb175(95)=abb175(95)*abb175(106)
      abb175(19)=abb175(101)+abb175(95)+abb175(30)+abb175(47)+abb175(124)+abb17&
      &5(133)+abb175(61)+abb175(121)+abb175(119)+abb175(67)+abb175(78)+3.0_ki*a&
      &bb175(116)+abb175(115)+abb175(102)+abb175(82)+abb175(104)+abb175(19)+2.0&
      &_ki*abb175(70)
      abb175(19)=2.0_ki*abb175(19)
      abb175(30)=8.0_ki*abb175(38)
      abb175(20)=4.0_ki*abb175(20)
      abb175(47)=spbe7l5*abb175(77)
      abb175(47)=abb175(47)-abb175(44)
      abb175(61)=abb175(14)*spak2k4
      abb175(12)=-abb175(61)*abb175(12)
      abb175(67)=abb175(12)*abb175(110)
      abb175(47)=abb175(67)*abb175(47)
      abb175(70)=-abb175(28)*spak2k4*mB
      abb175(78)=abb175(63)*abb175(40)
      abb175(82)=abb175(70)*abb175(78)
      abb175(95)=spbk7l6*spae7k7
      abb175(101)=abb175(95)*abb175(82)
      abb175(102)=-abb175(5)*abb175(12)
      abb175(104)=abb175(78)*spbl6l5
      abb175(115)=abb175(102)*abb175(104)
      abb175(61)=-abb175(61)*abb175(11)
      abb175(107)=abb175(107)*abb175(61)
      abb175(116)=abb175(107)*abb175(40)
      abb175(47)=-abb175(101)+abb175(115)+abb175(116)+abb175(47)
      abb175(47)=16.0_ki*abb175(47)
      abb175(15)=-abb175(15)*abb175(21)
      abb175(101)=spbk3k2*abb175(6)
      abb175(115)=abb175(101)*abb175(15)
      abb175(35)=abb175(115)*abb175(35)
      abb175(14)=-abb175(14)*abb175(21)
      abb175(21)=abb175(14)*abb175(44)
      abb175(116)=abb175(21)*abb175(6)
      abb175(119)=-spbl6k1*abb175(116)
      abb175(121)=abb175(14)*abb175(40)*abb175(6)
      abb175(34)=abb175(34)*abb175(121)
      abb175(34)=abb175(119)+abb175(34)
      abb175(34)=spak1k4*abb175(34)
      abb175(119)=mB**4
      abb175(16)=abb175(119)*abb175(16)
      abb175(72)=-abb175(16)*abb175(72)
      abb175(124)=abb175(25)*abb175(7)
      abb175(133)=abb175(72)*abb175(124)
      abb175(134)=spbl6k1*abb175(133)
      abb175(34)=abb175(134)+abb175(34)+abb175(35)
      abb175(34)=abb175(10)*abb175(34)
      abb175(35)=-abb175(16)*abb175(92)
      abb175(92)=abb175(35)*abb175(51)
      abb175(134)=-abb175(22)*abb175(36)
      abb175(135)=abb175(134)*spbk3k2
      abb175(32)=abb175(135)*abb175(32)
      abb175(136)=-abb175(22)*abb175(39)
      abb175(137)=abb175(136)*spak1k4
      abb175(138)=abb175(137)*spbl6k1
      abb175(139)=-abb175(44)*abb175(138)
      abb175(32)=abb175(92)+abb175(32)+abb175(139)
      abb175(32)=abb175(7)*abb175(32)
      abb175(92)=-abb175(62)*abb175(135)
      abb175(139)=abb175(40)*spbe7l5
      abb175(138)=abb175(139)*abb175(138)
      abb175(32)=abb175(32)+abb175(92)+abb175(138)
      abb175(92)=abb175(7)*abb175(44)
      abb175(92)=abb175(139)-abb175(92)
      abb175(138)=abb175(136)*spak3k4
      abb175(92)=abb175(138)*abb175(92)
      abb175(121)=abb175(121)*abb175(33)
      abb175(116)=abb175(116)-abb175(121)
      abb175(140)=abb175(10)*spak3k4*abb175(116)
      abb175(140)=-2.0_ki*abb175(92)+abb175(140)
      abb175(140)=spbl6k3*abb175(140)
      abb175(53)=abb175(98)*abb175(53)
      abb175(98)=-abb175(97)*abb175(53)
      abb175(98)=2.0_ki*abb175(98)
      abb175(125)=abb175(125)*abb175(98)
      abb175(53)=abb175(28)*abb175(53)
      abb175(113)=abb175(10)*spbl6k1*abb175(53)*abb175(113)
      abb175(113)=abb175(125)+abb175(113)
      abb175(113)=spak4e7*abb175(113)
      abb175(125)=abb175(15)*abb175(17)
      abb175(141)=abb175(125)*abb175(10)
      abb175(57)=abb175(57)*abb175(134)
      abb175(142)=2.0_ki*abb175(57)
      abb175(141)=abb175(141)+abb175(142)
      abb175(143)=spak4k7*abb175(65)
      abb175(144)=-spak4l5*abb175(62)
      abb175(143)=abb175(144)+abb175(143)
      abb175(141)=abb175(141)*abb175(143)
      abb175(32)=abb175(113)+abb175(140)+2.0_ki*abb175(32)+abb175(34)+abb175(14&
      &1)
      abb175(32)=4.0_ki*abb175(32)
      abb175(34)=-4.0_ki*abb175(38)
      abb175(38)=abb175(66)*spbl6k1
      abb175(78)=abb175(75)*abb175(78)
      abb175(113)=abb175(49)*abb175(78)
      abb175(38)=abb175(38)-abb175(113)
      abb175(113)=spak2l6*abb175(38)
      abb175(140)=abb175(120)*abb175(55)
      abb175(141)=spak4k7*spbk7k1
      abb175(143)=spak4l5*spbl5k1
      abb175(144)=abb175(141)+abb175(143)
      abb175(145)=-abb175(140)*abb175(144)
      abb175(146)=-spak2k7*abb175(66)
      abb175(147)=abb175(76)*abb175(71)
      abb175(146)=abb175(146)+abb175(147)
      abb175(146)=spbk7k1*abb175(146)
      abb175(73)=spbl5k1*abb175(73)
      abb175(100)=-abb175(100)*abb175(105)
      abb175(99)=-abb175(99)*abb175(117)
      abb175(147)=spak4l6*abb175(58)
      abb175(148)=abb175(80)*spbk7k3
      abb175(76)=-abb175(76)*abb175(148)
      abb175(81)=-spbl5k3*abb175(81)
      abb175(73)=abb175(113)+abb175(81)+abb175(76)+abb175(147)+abb175(99)+abb17&
      &5(100)+abb175(146)+abb175(73)+abb175(145)
      abb175(73)=2.0_ki*abb175(73)
      abb175(76)=8.0_ki*abb175(82)
      abb175(81)=abb175(68)*abb175(40)*abb175(8)
      abb175(82)=-abb175(81)*abb175(49)
      abb175(99)=spak4l6*spbl6k1
      abb175(100)=abb175(99)-abb175(144)
      abb175(100)=abb175(118)*abb175(100)
      abb175(113)=abb175(68)*abb175(110)
      abb175(144)=abb175(71)*abb175(113)
      abb175(145)=abb175(52)*spbk3k2
      abb175(110)=abb175(145)*abb175(110)
      abb175(146)=abb175(110)*spak2k7
      abb175(144)=abb175(144)-abb175(146)
      abb175(146)=spbk7k1*abb175(144)
      abb175(147)=abb175(113)*abb175(77)
      abb175(149)=abb175(147)*spak1k4
      abb175(150)=abb175(110)*spak2l5
      abb175(149)=abb175(149)-abb175(150)
      abb175(150)=spbl5k1*abb175(149)
      abb175(112)=abb175(7)*abb175(112)
      abb175(151)=abb175(6)**2
      abb175(152)=abb175(151)*abb175(84)
      abb175(153)=abb175(103)*abb175(126)*abb175(152)
      abb175(56)=abb175(56)*abb175(145)
      abb175(154)=-abb175(113)*abb175(148)
      abb175(155)=abb175(147)*spak3k4
      abb175(156)=-spbl5k3*abb175(155)
      abb175(56)=abb175(156)+abb175(154)+abb175(153)+abb175(112)+abb175(150)+ab&
      &b175(146)+abb175(56)+abb175(100)+abb175(82)
      abb175(56)=2.0_ki*abb175(56)
      abb175(82)=8.0_ki*abb175(40)
      abb175(100)=abb175(82)*abb175(67)
      abb175(23)=abb175(23)*abb175(50)
      abb175(23)=2.0_ki*abb175(23)
      abb175(112)=abb175(27)-2.0_ki*abb175(33)
      abb175(112)=abb175(37)*abb175(112)
      abb175(146)=-abb175(45)+2.0_ki*abb175(42)
      abb175(150)=spak1k4*abb175(146)
      abb175(112)=abb175(23)+abb175(150)+abb175(112)
      abb175(112)=spbk7k1*abb175(112)
      abb175(86)=abb175(86)+abb175(74)
      abb175(86)=spbk7e7*abb175(86)
      abb175(150)=abb175(93)*spbk7e7
      abb175(153)=abb175(37)*spbk7e7
      abb175(150)=abb175(150)-abb175(153)
      abb175(154)=abb175(150)*spbl5k1
      abb175(156)=abb175(41)*spbk7e7
      abb175(157)=abb175(156)*spak3k4
      abb175(158)=-spbl5k3*abb175(157)
      abb175(158)=abb175(158)+abb175(154)
      abb175(158)=spak2l5*abb175(158)
      abb175(159)=abb175(60)*spbk7e7
      abb175(160)=abb175(159)*spbl5k1
      abb175(161)=abb175(60)*spbe7l5
      abb175(162)=-abb175(122)*abb175(161)
      abb175(162)=abb175(162)-abb175(160)
      abb175(162)=spak4l5*abb175(162)
      abb175(146)=-spbk7k3*spak3k4*abb175(146)
      abb175(140)=abb175(140)*spak4e7
      abb175(163)=abb175(122)*abb175(140)
      abb175(164)=abb175(94)*abb175(65)
      abb175(165)=abb175(156)*abb175(48)
      abb175(164)=abb175(165)-abb175(164)
      abb175(165)=spak2l6*abb175(164)
      abb175(166)=abb175(60)*spak4l6
      abb175(65)=abb175(65)*abb175(166)
      abb175(65)=abb175(165)+abb175(163)+abb175(146)+abb175(65)+abb175(162)+abb&
      &175(112)+abb175(86)+abb175(158)
      abb175(65)=2.0_ki*abb175(65)
      abb175(86)=abb175(61)*spbk7e7
      abb175(112)=abb175(86)*abb175(82)
      abb175(33)=2.0_ki*abb175(27)-abb175(33)
      abb175(33)=abb175(37)*abb175(33)
      abb175(42)=-abb175(42)+2.0_ki*abb175(45)
      abb175(45)=-spak1k4*abb175(42)
      abb175(23)=abb175(23)+abb175(45)+abb175(33)
      abb175(23)=spbl5k1*abb175(23)
      abb175(33)=abb175(39)*abb175(148)
      abb175(33)=abb175(33)-abb175(85)-abb175(74)
      abb175(33)=spbe7l5*abb175(33)
      abb175(37)=abb175(37)*spbe7l5
      abb175(39)=spak2k7*abb175(37)
      abb175(45)=-spbe7l5*abb175(89)
      abb175(39)=abb175(39)+abb175(45)
      abb175(39)=spbk7k1*abb175(39)
      abb175(45)=abb175(161)*spbk7k1
      abb175(74)=abb175(123)*abb175(159)
      abb175(74)=abb175(45)+abb175(74)
      abb175(74)=spak4k7*abb175(74)
      abb175(42)=abb175(42)*spbl5k3*spak3k4
      abb175(85)=abb175(123)*abb175(140)
      abb175(89)=abb175(94)*abb175(62)
      abb175(41)=abb175(41)*spbe7l5
      abb175(94)=abb175(41)*abb175(48)
      abb175(89)=abb175(94)-abb175(89)
      abb175(94)=-spak2l6*abb175(89)
      abb175(62)=-abb175(62)*abb175(166)
      abb175(23)=abb175(94)+abb175(85)+abb175(42)+abb175(62)+abb175(74)+abb175(&
      &39)+abb175(23)+abb175(33)
      abb175(23)=2.0_ki*abb175(23)
      abb175(33)=abb175(61)*abb175(139)
      abb175(33)=8.0_ki*abb175(33)
      abb175(39)=abb175(125)*abb175(84)
      abb175(42)=abb175(130)*abb175(39)
      abb175(51)=abb175(51)*abb175(134)
      abb175(62)=spak2l6*abb175(51)
      abb175(42)=abb175(42)-abb175(62)
      abb175(60)=abb175(60)*abb175(83)
      abb175(62)=abb175(134)*abb175(50)
      abb175(74)=abb175(62)*spak2k7
      abb175(83)=-abb175(129)-abb175(74)
      abb175(83)=spbk7k1*abb175(83)
      abb175(84)=abb175(59)*abb175(8)
      abb175(85)=-abb175(84)-abb175(134)
      abb175(85)=spbl5k1*abb175(85)*abb175(24)
      abb175(57)=abb175(57)*abb175(27)
      abb175(94)=spbe7l5*spbk4k3
      abb175(123)=abb175(94)*abb175(134)
      abb175(57)=abb175(57)-abb175(123)
      abb175(123)=-spbk2k1*abb175(57)
      abb175(45)=abb175(45)+abb175(160)
      abb175(45)=spal5k7*abb175(45)
      abb175(58)=abb175(58)*abb175(127)
      abb175(42)=abb175(58)+abb175(45)+abb175(123)+abb175(83)+abb175(85)+abb175&
      &(60)+2.0_ki*abb175(42)
      abb175(42)=2.0_ki*abb175(42)
      abb175(45)=abb175(95)*abb175(78)
      abb175(58)=abb175(104)*abb175(69)
      abb175(60)=abb175(113)*abb175(44)
      abb175(83)=abb175(147)*spbe7l5
      abb175(45)=-abb175(45)-abb175(60)+abb175(83)+abb175(58)+abb175(108)
      abb175(58)=-spak2k3*abb175(45)
      abb175(60)=abb175(70)*abb175(95)
      abb175(83)=-spbl6l5*abb175(102)
      abb175(60)=abb175(83)+abb175(60)
      abb175(60)=abb175(63)*abb175(60)
      abb175(83)=-abb175(67)*abb175(130)
      abb175(60)=-abb175(107)+abb175(83)+abb175(60)
      abb175(83)=spbk4k1*abb175(9)
      abb175(60)=abb175(60)*abb175(83)
      abb175(58)=abb175(58)+abb175(60)
      abb175(58)=8.0_ki*abb175(58)
      abb175(60)=-spak2k3*abb175(78)
      abb175(63)=-abb175(70)*abb175(63)*abb175(83)
      abb175(60)=abb175(60)+abb175(63)
      abb175(60)=4.0_ki*abb175(60)
      abb175(63)=abb175(40)*spak2k3
      abb175(85)=-abb175(113)*abb175(63)
      abb175(67)=-abb175(67)*abb175(83)
      abb175(67)=abb175(85)+abb175(67)
      abb175(67)=4.0_ki*abb175(67)
      abb175(85)=-spak2k3*abb175(156)
      abb175(86)=-abb175(83)*abb175(86)
      abb175(85)=abb175(85)+abb175(86)
      abb175(85)=4.0_ki*abb175(85)
      abb175(86)=spak2k3*abb175(41)
      abb175(95)=spbe7l5*abb175(61)*abb175(83)
      abb175(86)=abb175(86)+abb175(95)
      abb175(86)=4.0_ki*abb175(86)
      abb175(45)=spak1k2*abb175(45)
      abb175(95)=2.0_ki*abb175(9)
      abb175(104)=-abb175(70)*abb175(95)
      abb175(104)=abb175(104)-abb175(55)
      abb175(104)=abb175(8)*abb175(104)
      abb175(104)=abb175(104)-abb175(54)
      abb175(104)=abb175(104)*abb175(79)
      abb175(74)=2.0_ki*abb175(104)+abb175(74)
      abb175(74)=spbk7l6*abb175(74)
      abb175(104)=abb175(95)*abb175(12)
      abb175(104)=abb175(52)+abb175(104)
      abb175(104)=abb175(104)*abb175(8)
      abb175(104)=abb175(104)+abb175(15)
      abb175(17)=abb175(17)*abb175(104)*abb175(130)
      abb175(102)=abb175(102)*abb175(95)
      abb175(59)=abb175(102)+abb175(59)
      abb175(59)=abb175(8)*abb175(59)
      abb175(102)=3.0_ki*abb175(134)
      abb175(59)=-abb175(102)+2.0_ki*abb175(59)
      abb175(59)=spbl6l5*abb175(59)*abb175(24)
      abb175(104)=abb175(61)*abb175(9)
      abb175(107)=3.0_ki*abb175(36)+4.0_ki*abb175(104)
      abb175(107)=abb175(8)*abb175(107)
      abb175(107)=-2.0_ki*abb175(52)+abb175(107)
      abb175(107)=spbe7l6*abb175(107)*abb175(126)
      abb175(123)=-spbk7l6*abb175(161)
      abb175(125)=spbl6l5*abb175(159)
      abb175(123)=abb175(123)+abb175(125)
      abb175(123)=spal5k7*abb175(123)
      abb175(125)=abb175(54)*abb175(31)
      abb175(126)=-spak2l5*abb175(125)
      abb175(129)=abb175(134)*abb175(25)
      abb175(140)=-spak2k7*abb175(129)
      abb175(126)=abb175(140)+abb175(126)
      abb175(126)=spbk7l5*abb175(126)
      abb175(57)=-spbl6k2*abb175(57)
      abb175(17)=abb175(57)-4.0_ki*abb175(45)+abb175(126)+abb175(123)+abb175(10&
      &7)+abb175(59)+2.0_ki*abb175(17)+abb175(74)
      abb175(17)=2.0_ki*abb175(17)
      abb175(45)=abb175(9)*abb175(70)
      abb175(45)=abb175(45)+abb175(55)
      abb175(45)=abb175(45)*abb175(120)
      abb175(55)=-spak1k2*abb175(78)
      abb175(45)=abb175(45)+abb175(55)
      abb175(45)=4.0_ki*abb175(45)
      abb175(12)=abb175(9)*abb175(12)
      abb175(12)=abb175(12)+abb175(52)
      abb175(12)=abb175(12)*abb175(18)
      abb175(18)=abb175(40)*spak1k2
      abb175(52)=-abb175(113)*abb175(18)
      abb175(12)=abb175(12)+abb175(52)
      abb175(12)=4.0_ki*abb175(12)
      abb175(36)=abb175(104)+abb175(36)
      abb175(52)=spbk7e7*spbk4k3*abb175(36)
      abb175(55)=-spak1k2*abb175(156)
      abb175(52)=abb175(52)+abb175(55)
      abb175(52)=4.0_ki*abb175(52)
      abb175(36)=-abb175(36)*abb175(94)
      abb175(55)=spak1k2*abb175(41)
      abb175(36)=abb175(36)+abb175(55)
      abb175(36)=4.0_ki*abb175(36)
      abb175(40)=abb175(40)*spbe7k2
      abb175(49)=-abb175(49)*abb175(29)*abb175(40)
      abb175(55)=abb175(54)*spbk3k2
      abb175(57)=spbl6k1*spbe7k2*abb175(55)
      abb175(59)=abb175(6)*spbe7k2
      abb175(70)=abb175(55)*abb175(59)
      abb175(74)=spak2k7*abb175(70)
      abb175(94)=abb175(29)*abb175(59)
      abb175(71)=-abb175(71)*abb175(94)
      abb175(71)=abb175(74)+abb175(71)
      abb175(71)=spbk7k1*abb175(71)
      abb175(49)=abb175(71)+abb175(57)+abb175(49)
      abb175(49)=spae7k7*abb175(49)
      abb175(43)=abb175(43)*abb175(59)
      abb175(57)=abb175(43)*abb175(137)
      abb175(71)=abb175(135)*abb175(59)
      abb175(74)=abb175(71)*spak2k7
      abb175(57)=abb175(74)-abb175(57)
      abb175(70)=abb175(70)*spak2l5
      abb175(74)=spak1k4*abb175(94)*abb175(77)
      abb175(70)=abb175(74)-abb175(70)
      abb175(74)=spae7k7*abb175(70)
      abb175(74)=-2.0_ki*abb175(57)+abb175(74)
      abb175(74)=spbl5k1*abb175(74)
      abb175(94)=abb175(99)-abb175(143)
      abb175(94)=abb175(125)*abb175(94)
      abb175(13)=abb175(119)*abb175(13)
      abb175(97)=-abb175(7)*abb175(31)*abb175(97)*abb175(13)
      abb175(99)=-spbk2k1*abb175(97)
      abb175(13)=abb175(79)*abb175(28)*abb175(13)
      abb175(28)=abb175(152)*abb175(13)
      abb175(79)=abb175(125)*spbk7k1
      abb175(26)=abb175(26)*abb175(134)
      abb175(104)=abb175(79)-2.0_ki*abb175(26)
      abb175(104)=spak4k7*abb175(104)
      abb175(107)=spak4k7*abb175(118)
      abb175(107)=abb175(107)-abb175(144)
      abb175(119)=2.0_ki*spbe7k1
      abb175(107)=abb175(107)*abb175(119)
      abb175(43)=abb175(43)*abb175(138)
      abb175(120)=abb175(59)*spae7k7
      abb175(123)=abb175(120)*abb175(29)
      abb175(126)=abb175(123)*abb175(77)
      abb175(140)=-spak3k4*abb175(126)
      abb175(140)=-2.0_ki*abb175(43)+abb175(140)
      abb175(140)=spbl5k3*abb175(140)
      abb175(80)=abb175(113)*abb175(80)*abb175(106)
      abb175(113)=abb175(123)*abb175(148)
      abb175(28)=abb175(80)+abb175(140)+abb175(113)+abb175(107)+abb175(104)+abb&
      &175(28)+abb175(99)+abb175(74)+abb175(49)+abb175(94)
      abb175(28)=2.0_ki*abb175(28)
      abb175(49)=-spak2k4*abb175(29)
      abb175(74)=abb175(49)*abb175(120)
      abb175(80)=abb175(74)*abb175(82)
      abb175(94)=-abb175(123)*abb175(63)
      abb175(74)=abb175(83)*abb175(74)
      abb175(74)=abb175(94)+abb175(74)
      abb175(74)=4.0_ki*abb175(74)
      abb175(49)=-abb175(9)*abb175(49)
      abb175(49)=abb175(49)+abb175(54)
      abb175(31)=abb175(49)*abb175(31)
      abb175(49)=-abb175(123)*abb175(18)
      abb175(31)=abb175(31)+abb175(49)
      abb175(31)=4.0_ki*abb175(31)
      abb175(49)=spbe7k1*abb175(118)
      abb175(49)=abb175(49)-abb175(26)+abb175(51)+abb175(79)
      abb175(49)=spak4l6*abb175(49)
      abb175(51)=-abb175(128)+abb175(54)
      abb175(54)=spbk3k2*spbe7k2
      abb175(51)=abb175(51)*abb175(54)
      abb175(75)=abb175(96)*abb175(75)
      abb175(29)=abb175(29)*abb175(9)
      abb175(29)=abb175(75)-abb175(29)
      abb175(75)=spbk3k1*spbe7k2
      abb175(79)=abb175(75)*spak1k4
      abb175(94)=abb175(29)*abb175(79)
      abb175(51)=abb175(51)+abb175(94)
      abb175(51)=spae7k7*abb175(51)
      abb175(94)=abb175(137)*abb175(40)
      abb175(99)=abb175(135)*spbe7k2
      abb175(94)=abb175(94)-abb175(99)
      abb175(104)=abb175(94)*abb175(7)
      abb175(107)=spak2k7*abb175(104)
      abb175(51)=abb175(51)+2.0_ki*abb175(107)
      abb175(51)=spbk7k1*abb175(51)
      abb175(102)=-abb175(102)-abb175(84)
      abb175(102)=abb175(102)*abb175(54)
      abb175(113)=abb175(114)*abb175(136)
      abb175(69)=abb175(69)*abb175(96)
      abb175(113)=abb175(113)+abb175(69)
      abb175(114)=abb175(113)*abb175(79)
      abb175(102)=abb175(102)+abb175(114)
      abb175(102)=spbl5k1*abb175(102)
      abb175(27)=abb175(135)*abb175(27)
      abb175(44)=abb175(137)*abb175(44)
      abb175(27)=abb175(27)-abb175(44)
      abb175(44)=-abb175(35)*abb175(50)
      abb175(44)=-3.0_ki*abb175(27)+abb175(44)
      abb175(44)=abb175(7)*abb175(44)
      abb175(114)=abb175(135)*spbe7l5
      abb175(123)=abb175(137)*abb175(139)
      abb175(114)=abb175(114)-abb175(123)
      abb175(44)=3.0_ki*abb175(114)+abb175(44)
      abb175(44)=spbk2k1*abb175(44)
      abb175(115)=abb175(115)*abb175(130)
      abb175(116)=spak1k4*abb175(116)
      abb175(115)=abb175(116)+abb175(115)
      abb175(115)=3.0_ki*abb175(115)-2.0_ki*abb175(133)
      abb175(115)=spbk2k1*abb175(115)
      abb175(21)=abb175(101)*abb175(21)
      abb175(116)=-spbk3k2*abb175(121)
      abb175(21)=abb175(21)+abb175(116)
      abb175(21)=spak3k4*abb175(21)
      abb175(21)=3.0_ki*abb175(21)+abb175(115)
      abb175(21)=abb175(10)*abb175(21)
      abb175(115)=abb175(93)*spbe7l5
      abb175(115)=abb175(115)-abb175(37)
      abb175(116)=-spbk7k1*abb175(115)
      abb175(116)=abb175(116)-abb175(154)
      abb175(116)=spal5k7*abb175(116)
      abb175(98)=-abb175(105)*abb175(98)
      abb175(53)=-abb175(53)*abb175(117)
      abb175(53)=abb175(98)+abb175(53)
      abb175(53)=spak4e7*abb175(53)
      abb175(38)=abb175(38)*abb175(127)
      abb175(98)=-spbk3k2*abb175(92)
      abb175(105)=abb175(142)*spbk2k1
      abb175(39)=abb175(39)+abb175(105)
      abb175(105)=-spbk7e7*abb175(39)
      abb175(117)=-spbk7k1*abb175(62)
      abb175(105)=abb175(117)+abb175(105)
      abb175(105)=spak4k7*abb175(105)
      abb175(39)=spbe7l5*abb175(39)
      abb175(62)=-spbl5k1*abb175(62)
      abb175(39)=abb175(62)+abb175(39)
      abb175(39)=spak4l5*abb175(39)
      abb175(62)=abb175(8)*abb175(145)
      abb175(117)=-spak1k4*abb175(81)
      abb175(62)=abb175(62)+abb175(117)
      abb175(62)=spbe7k1*abb175(62)
      abb175(29)=-abb175(29)*spae7k7*abb175(75)
      abb175(117)=spal5k7*abb175(41)
      abb175(29)=abb175(117)+abb175(29)
      abb175(29)=spak3k4*abb175(29)
      abb175(117)=abb175(40)*abb175(7)
      abb175(121)=spak2k7*abb175(117)*abb175(138)
      abb175(29)=-2.0_ki*abb175(121)+abb175(29)
      abb175(29)=spbk7k3*abb175(29)
      abb175(113)=-spak3k4*abb175(113)*abb175(75)
      abb175(123)=spal5k7*abb175(157)
      abb175(113)=abb175(113)+abb175(123)
      abb175(113)=spbl5k3*abb175(113)
      abb175(104)=spbl6k1*abb175(104)
      abb175(123)=abb175(117)*abb175(136)
      abb175(127)=-abb175(48)*abb175(123)
      abb175(104)=abb175(104)+abb175(127)
      abb175(104)=spak2l6*abb175(104)
      abb175(90)=abb175(164)*abb175(90)
      abb175(64)=abb175(89)*abb175(64)
      abb175(81)=spbe7k3*spak3k4*abb175(81)
      abb175(21)=abb175(64)+abb175(90)+abb175(81)+abb175(38)+abb175(104)+abb175&
      &(53)+abb175(113)+abb175(29)+abb175(49)+abb175(116)+abb175(62)+abb175(39)&
      &+abb175(105)+abb175(21)+abb175(44)+abb175(102)+3.0_ki*abb175(98)+abb175(&
      &51)
      abb175(21)=2.0_ki*abb175(21)
      abb175(22)=-abb175(22)*abb175(61)
      abb175(29)=abb175(117)*abb175(22)
      abb175(29)=8.0_ki*abb175(29)
      abb175(38)=-spak2k3*abb175(123)
      abb175(39)=-abb175(7)*spbe7k2*abb175(22)*abb175(83)
      abb175(38)=abb175(38)+abb175(39)
      abb175(38)=4.0_ki*abb175(38)
      abb175(39)=abb175(22)*abb175(9)
      abb175(39)=abb175(39)+abb175(134)
      abb175(44)=abb175(39)*abb175(50)
      abb175(49)=-spak1k2*abb175(123)
      abb175(44)=abb175(44)+abb175(49)
      abb175(44)=4.0_ki*abb175(44)
      abb175(49)=2.0_ki*spae7k7
      abb175(50)=-abb175(70)*abb175(49)
      abb175(50)=abb175(50)+abb175(57)
      abb175(50)=spbk7k1*abb175(50)
      abb175(51)=-spak4l6*abb175(129)
      abb175(51)=abb175(51)+abb175(94)
      abb175(51)=spbl6k1*abb175(51)
      abb175(53)=abb175(77)*abb175(59)
      abb175(57)=abb175(137)*abb175(53)
      abb175(61)=-spak2l5*abb175(71)
      abb175(57)=abb175(61)+abb175(57)
      abb175(57)=spbl5k1*abb175(57)
      abb175(35)=-spbk2k1*abb175(35)*abb175(124)
      abb175(61)=abb175(72)*abb175(24)*abb175(152)
      abb175(62)=abb175(125)*abb175(122)
      abb175(26)=abb175(62)-abb175(26)
      abb175(26)=spak4l5*abb175(26)
      abb175(40)=-abb175(136)*abb175(40)*abb175(48)
      abb175(48)=spak4l5*abb175(118)
      abb175(48)=abb175(48)-abb175(149)
      abb175(48)=abb175(48)*abb175(119)
      abb175(62)=2.0_ki*spak3k4
      abb175(62)=abb175(62)*abb175(126)
      abb175(43)=abb175(43)+abb175(62)
      abb175(43)=spbk7k3*abb175(43)
      abb175(53)=-spbl5k3*abb175(138)*abb175(53)
      abb175(62)=abb175(129)*abb175(141)
      abb175(64)=abb175(106)*abb175(155)
      abb175(26)=abb175(64)+abb175(53)+abb175(43)+abb175(48)+abb175(40)+abb175(&
      &26)+abb175(62)+abb175(61)+abb175(35)+abb175(57)+abb175(50)+abb175(51)
      abb175(26)=2.0_ki*abb175(26)
      abb175(22)=abb175(22)*abb175(59)
      abb175(35)=abb175(22)*abb175(82)
      abb175(40)=abb175(136)*abb175(59)
      abb175(43)=abb175(63)*abb175(40)
      abb175(22)=abb175(83)*abb175(22)
      abb175(22)=abb175(43)+abb175(22)
      abb175(22)=4.0_ki*abb175(22)
      abb175(25)=-abb175(39)*abb175(25)
      abb175(18)=abb175(18)*abb175(40)
      abb175(18)=abb175(25)+abb175(18)
      abb175(18)=4.0_ki*abb175(18)
      abb175(25)=abb175(96)*abb175(68)
      abb175(14)=abb175(95)*abb175(14)
      abb175(14)=abb175(25)-abb175(14)
      abb175(14)=abb175(131)*abb175(14)*abb175(6)
      abb175(25)=abb175(136)*abb175(9)
      abb175(25)=abb175(25)+2.0_ki*abb175(69)
      abb175(39)=-spbl6l5*abb175(25)*abb175(75)
      abb175(39)=-abb175(108)+abb175(39)+abb175(14)
      abb175(39)=spak3k4*abb175(39)
      abb175(40)=spak3k4*abb175(78)*abb175(49)
      abb175(40)=abb175(40)+abb175(121)
      abb175(40)=spbk7l6*abb175(40)
      abb175(41)=-spbk7l6*spak3k4*abb175(41)
      abb175(43)=spbl6l5*abb175(157)
      abb175(41)=abb175(41)+abb175(43)
      abb175(41)=spal5k7*abb175(41)
      abb175(43)=spbl6k2*abb175(92)
      abb175(39)=abb175(43)+abb175(41)+abb175(40)+abb175(39)
      abb175(39)=2.0_ki*abb175(39)
      abb175(40)=-abb175(8)*abb175(87)
      abb175(40)=abb175(40)+abb175(72)
      abb175(40)=abb175(40)*abb175(124)
      abb175(11)=abb175(16)*abb175(11)
      abb175(16)=abb175(8)*abb175(103)
      abb175(11)=abb175(16)+abb175(11)
      abb175(16)=abb175(111)*abb175(151)
      abb175(11)=abb175(11)*abb175(24)*abb175(16)
      abb175(24)=-spak1k4*abb175(78)
      abb175(24)=-abb175(66)+abb175(24)
      abb175(24)=abb175(24)*abb175(49)
      abb175(24)=abb175(24)-abb175(107)
      abb175(24)=spbk7l6*abb175(24)
      abb175(41)=2.0_ki*abb175(84)-abb175(134)
      abb175(41)=abb175(41)*abb175(54)
      abb175(25)=abb175(25)*abb175(79)
      abb175(25)=abb175(41)+abb175(25)
      abb175(25)=spbl6l5*abb175(25)
      abb175(41)=spbk7l6*abb175(115)
      abb175(43)=-spbl6l5*abb175(150)
      abb175(41)=abb175(41)+abb175(43)
      abb175(41)=spal5k7*abb175(41)
      abb175(43)=spbk7l6*abb175(125)
      abb175(48)=spbl6l5*abb175(129)
      abb175(49)=spbe7l6*abb175(118)
      abb175(43)=abb175(49)+abb175(43)+abb175(48)
      abb175(43)=abb175(43)*abb175(132)
      abb175(27)=-abb175(7)*abb175(27)
      abb175(27)=abb175(27)+abb175(114)
      abb175(27)=spbl6k2*abb175(27)
      abb175(13)=abb175(16)*abb175(13)
      abb175(13)=abb175(97)+abb175(13)
      abb175(13)=spbk7k2*abb175(13)
      abb175(16)=-spak4k7*spbk7e7
      abb175(48)=spak4l5*spbe7l5
      abb175(16)=abb175(48)+abb175(16)
      abb175(16)=abb175(118)*abb175(16)
      abb175(48)=abb175(109)*abb175(8)
      abb175(15)=abb175(48)+2.0_ki*abb175(15)
      abb175(15)=abb175(101)*abb175(15)*abb175(130)
      abb175(14)=-spak1k4*abb175(14)
      abb175(48)=abb175(88)*abb175(93)
      abb175(48)=3.0_ki*abb175(91)+abb175(48)
      abb175(48)=spbe7l6*abb175(48)
      abb175(49)=spak4l5*abb175(125)
      abb175(50)=spak4k7*abb175(129)
      abb175(49)=abb175(50)+abb175(49)
      abb175(49)=spbk7l5*abb175(49)
      abb175(11)=abb175(13)+abb175(27)+abb175(49)+abb175(43)+abb175(41)+abb175(&
      &48)+abb175(25)+abb175(24)+abb175(11)+abb175(40)+abb175(14)+abb175(15)+ab&
      &b175(16)
      abb175(11)=2.0_ki*abb175(11)
      abb175(13)=4.0_ki*abb175(66)
      abb175(14)=4.0_ki*abb175(110)
      abb175(15)=4.0_ki*abb175(153)
      abb175(16)=-4.0_ki*abb175(37)
      abb175(24)=4.0_ki*abb175(120)*abb175(55)
      abb175(25)=4.0_ki*abb175(7)*abb175(99)
      abb175(27)=-4.0_ki*abb175(71)
      R2d175=abb175(46)
      rat2 = rat2 + R2d175
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='175' value='", &
          & R2d175, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd175h2
