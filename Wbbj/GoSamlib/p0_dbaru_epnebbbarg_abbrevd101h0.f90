module     p0_dbaru_epnebbbarg_abbrevd101h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(127), public :: abb101
   complex(ki), public :: R2d101
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
      abb101(1)=1.0_ki/(-mB**2+es67)
      abb101(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb101(3)=NC**(-1)
      abb101(4)=es234**(-1)
      abb101(5)=spbl5k2**(-1)
      abb101(6)=spbl6k2**(-1)
      abb101(7)=spak2l6**(-1)
      abb101(8)=sqrt(mB**2)
      abb101(9)=TR*gW
      abb101(9)=abb101(9)**2*i_*CVDU*abb101(2)*abb101(1)
      abb101(10)=abb101(9)*spbe7k2
      abb101(11)=c3*abb101(4)
      abb101(12)=abb101(10)*abb101(11)
      abb101(13)=abb101(12)*abb101(6)
      abb101(14)=mB**3
      abb101(15)=abb101(5)*spal6e7
      abb101(16)=abb101(14)*abb101(15)
      abb101(17)=abb101(13)*abb101(16)
      abb101(18)=-NC+2.0_ki*abb101(3)
      abb101(19)=spbk3k2**2
      abb101(20)=-abb101(19)*abb101(18)
      abb101(21)=-abb101(17)*abb101(20)
      abb101(22)=c2*abb101(3)**2
      abb101(23)=abb101(22)*abb101(6)
      abb101(24)=abb101(10)*abb101(4)
      abb101(25)=abb101(24)*abb101(23)
      abb101(26)=abb101(25)*abb101(16)
      abb101(27)=abb101(26)*abb101(19)
      abb101(21)=abb101(21)-abb101(27)
      abb101(27)=spak1k2*abb101(7)
      abb101(28)=abb101(21)*abb101(27)
      abb101(29)=mB**2
      abb101(30)=abb101(29)*abb101(5)
      abb101(31)=abb101(13)*abb101(30)
      abb101(32)=-abb101(31)*abb101(20)
      abb101(33)=abb101(25)*abb101(30)
      abb101(34)=abb101(33)*abb101(19)
      abb101(32)=abb101(32)-abb101(34)
      abb101(34)=spak1e7*abb101(8)
      abb101(32)=abb101(32)*abb101(34)
      abb101(35)=abb101(9)*mB
      abb101(36)=abb101(35)*abb101(11)
      abb101(37)=abb101(36)*abb101(15)
      abb101(38)=-abb101(37)*abb101(20)
      abb101(39)=abb101(22)*abb101(15)
      abb101(40)=abb101(4)*abb101(39)*abb101(35)
      abb101(41)=abb101(40)*abb101(19)
      abb101(38)=abb101(38)-abb101(41)
      abb101(41)=spbk7e7*spak1k7
      abb101(42)=-abb101(38)*abb101(41)
      abb101(28)=abb101(42)+abb101(32)+abb101(28)
      abb101(42)=spak1l6*spak3k4
      abb101(28)=abb101(42)*abb101(28)
      abb101(43)=abb101(22)*abb101(4)
      abb101(44)=abb101(43)*abb101(10)
      abb101(45)=abb101(6)**2
      abb101(46)=abb101(45)*abb101(14)
      abb101(47)=abb101(44)*abb101(46)
      abb101(48)=abb101(47)*abb101(19)
      abb101(49)=abb101(46)*abb101(12)
      abb101(50)=abb101(20)*abb101(49)
      abb101(48)=abb101(48)+abb101(50)
      abb101(50)=abb101(27)*spak3k4
      abb101(48)=abb101(48)*abb101(50)
      abb101(51)=-spal6e7*abb101(48)
      abb101(52)=abb101(9)*spbk3k2*abb101(4)
      abb101(53)=abb101(52)*c3
      abb101(54)=-abb101(18)*abb101(53)*mB
      abb101(55)=abb101(54)*spal6e7*spbe7k2
      abb101(56)=abb101(52)*spbe7k2
      abb101(57)=abb101(22)*abb101(56)
      abb101(58)=abb101(57)*mB
      abb101(59)=abb101(58)*spal6e7
      abb101(55)=abb101(59)+abb101(55)
      abb101(59)=-spak1l6*abb101(55)
      abb101(60)=abb101(6)*spbe7k2
      abb101(61)=-abb101(60)*abb101(54)
      abb101(56)=abb101(23)*abb101(56)
      abb101(62)=abb101(56)*mB
      abb101(61)=abb101(61)-abb101(62)
      abb101(62)=-spal6e7*abb101(61)
      abb101(63)=spak1k7*spbk7k2
      abb101(64)=-abb101(62)*abb101(63)
      abb101(59)=abb101(59)+abb101(64)
      abb101(59)=spak2k4*abb101(59)
      abb101(51)=abb101(51)+abb101(59)
      abb101(51)=spak1l5*abb101(51)
      abb101(38)=abb101(38)*spak3k4
      abb101(59)=spbe7l6*spak1l6**2*abb101(38)
      abb101(64)=abb101(62)*spak1k7
      abb101(65)=spak1l5*spak3k4
      abb101(66)=abb101(65)*spbk7k3
      abb101(67)=abb101(64)*abb101(66)
      abb101(68)=abb101(65)*spbl6k3
      abb101(69)=abb101(68)*spak1l6
      abb101(70)=abb101(62)*abb101(69)
      abb101(28)=abb101(70)+abb101(67)+abb101(51)+abb101(59)+abb101(28)
      abb101(28)=spbl6k1*abb101(28)
      abb101(21)=abb101(21)*abb101(50)
      abb101(51)=abb101(61)*spae7k7
      abb101(59)=abb101(66)*abb101(51)
      abb101(67)=spbe7l6*spak1l6
      abb101(41)=abb101(67)-abb101(41)
      abb101(38)=abb101(41)*abb101(38)
      abb101(32)=abb101(32)*spak3k4
      abb101(21)=abb101(59)+abb101(38)+abb101(21)+abb101(32)
      abb101(32)=spae7k7*spbk7k2
      abb101(38)=abb101(32)*abb101(61)
      abb101(59)=spak1l5*spak2k4
      abb101(67)=abb101(59)*abb101(38)
      abb101(67)=abb101(67)-abb101(21)
      abb101(67)=es71*abb101(67)
      abb101(70)=abb101(9)*spal6e7
      abb101(71)=abb101(70)*abb101(11)
      abb101(72)=abb101(20)*abb101(71)*abb101(6)
      abb101(73)=abb101(23)*abb101(4)
      abb101(74)=abb101(73)*abb101(19)
      abb101(75)=abb101(74)*abb101(70)
      abb101(72)=abb101(72)+abb101(75)
      abb101(75)=spak3k4*abb101(7)
      abb101(76)=abb101(14)*abb101(5)
      abb101(77)=-abb101(75)*abb101(76)*abb101(72)
      abb101(78)=abb101(77)*abb101(41)
      abb101(79)=abb101(20)*abb101(12)
      abb101(80)=abb101(19)*abb101(44)
      abb101(79)=abb101(80)+abb101(79)
      abb101(79)=abb101(79)*abb101(5)*abb101(45)*mB**4
      abb101(80)=-abb101(79)*abb101(34)*abb101(75)
      abb101(81)=abb101(12)*abb101(15)
      abb101(82)=abb101(20)*abb101(81)
      abb101(24)=abb101(24)*abb101(39)
      abb101(19)=abb101(19)*abb101(24)
      abb101(19)=abb101(19)+abb101(82)
      abb101(19)=spak3k4*abb101(7)**2*abb101(19)*abb101(45)*mB**5
      abb101(45)=-spak1k2*abb101(19)
      abb101(53)=-abb101(53)*abb101(18)
      abb101(82)=abb101(60)*spal6e7
      abb101(83)=-abb101(53)*abb101(82)
      abb101(84)=abb101(56)*spal6e7
      abb101(83)=abb101(83)-abb101(84)
      abb101(83)=abb101(29)*abb101(83)
      abb101(85)=abb101(83)*abb101(8)
      abb101(86)=-abb101(7)*abb101(59)*abb101(85)
      abb101(45)=abb101(86)+abb101(80)+abb101(45)+abb101(78)
      abb101(45)=es12*abb101(45)
      abb101(78)=abb101(61)*spak1e7
      abb101(80)=abb101(8)**2
      abb101(86)=abb101(78)*abb101(80)
      abb101(87)=abb101(86)*spak3k4
      abb101(88)=spak3k4*abb101(8)
      abb101(89)=abb101(88)*abb101(27)
      abb101(83)=abb101(89)*abb101(83)
      abb101(90)=-spal6e7*abb101(53)
      abb101(91)=abb101(52)*spal6e7
      abb101(92)=abb101(22)*abb101(91)
      abb101(92)=abb101(90)-abb101(92)
      abb101(92)=abb101(92)*abb101(8)
      abb101(93)=abb101(92)*spak3k4
      abb101(94)=abb101(41)*abb101(93)
      abb101(83)=abb101(87)+abb101(83)+abb101(94)
      abb101(87)=spbk3k1*spak1l5
      abb101(94)=abb101(83)*abb101(87)
      abb101(95)=-spbl6k2*spak1l6*abb101(59)
      abb101(66)=spak1k7*abb101(66)
      abb101(66)=abb101(69)+abb101(66)+abb101(95)
      abb101(66)=abb101(92)*abb101(66)
      abb101(72)=abb101(89)*abb101(29)*abb101(72)
      abb101(95)=abb101(92)*spak2k4
      abb101(96)=-abb101(63)*abb101(95)
      abb101(72)=abb101(72)+abb101(96)
      abb101(72)=spak1l5*abb101(72)
      abb101(66)=abb101(72)+abb101(66)
      abb101(66)=spbe7k1*abb101(66)
      abb101(72)=abb101(41)*abb101(95)
      abb101(96)=-spak2k4*abb101(86)
      abb101(96)=abb101(96)-abb101(72)
      abb101(97)=spbk2k1*spak1l5
      abb101(96)=abb101(96)*abb101(97)
      abb101(98)=spbe7k2*abb101(54)
      abb101(98)=abb101(58)+abb101(98)
      abb101(98)=spak2k4*spak1l6*abb101(98)
      abb101(48)=abb101(48)+abb101(98)
      abb101(48)=spak1l5*spae7k7*abb101(48)
      abb101(69)=abb101(51)*abb101(69)
      abb101(48)=abb101(48)+abb101(69)
      abb101(48)=spbk7k1*abb101(48)
      abb101(28)=abb101(48)+abb101(66)+abb101(28)+abb101(45)+abb101(67)+abb101(&
      &94)+abb101(96)
      abb101(28)=4.0_ki*abb101(28)
      abb101(45)=abb101(52)*mB
      abb101(48)=abb101(22)*abb101(45)
      abb101(48)=abb101(54)+abb101(48)
      abb101(22)=abb101(22)*abb101(52)
      abb101(52)=abb101(53)+abb101(22)
      abb101(66)=abb101(52)*abb101(8)
      abb101(66)=-abb101(66)+abb101(48)
      abb101(67)=abb101(42)*abb101(66)
      abb101(69)=abb101(6)*abb101(54)
      abb101(94)=abb101(23)*abb101(45)
      abb101(69)=abb101(94)+abb101(69)
      abb101(94)=abb101(63)*abb101(69)
      abb101(96)=abb101(94)*spak3k4
      abb101(67)=abb101(96)+abb101(67)
      abb101(96)=abb101(67)*abb101(87)
      abb101(98)=abb101(66)*spak1l6
      abb101(98)=abb101(98)+abb101(94)
      abb101(99)=abb101(59)*spbk2k1
      abb101(100)=-abb101(98)*abb101(99)
      abb101(96)=abb101(96)+abb101(100)
      abb101(96)=8.0_ki*abb101(96)
      abb101(100)=abb101(65)*spbk3k1
      abb101(99)=abb101(100)-abb101(99)
      abb101(100)=abb101(99)*abb101(78)
      abb101(100)=8.0_ki*abb101(100)
      abb101(54)=-abb101(15)*abb101(54)
      abb101(39)=abb101(39)*abb101(45)
      abb101(39)=abb101(39)-abb101(54)
      abb101(45)=-abb101(39)*abb101(41)
      abb101(101)=abb101(45)*spbl6k2
      abb101(102)=-spbe7k2*abb101(53)
      abb101(102)=abb101(102)-abb101(57)
      abb101(103)=-abb101(16)*abb101(102)
      abb101(104)=abb101(103)*abb101(27)
      abb101(105)=abb101(34)*abb101(30)
      abb101(106)=-abb101(102)*abb101(105)
      abb101(104)=abb101(101)-abb101(104)-abb101(106)
      abb101(107)=spak4l6*abb101(104)
      abb101(60)=abb101(60)*abb101(53)
      abb101(56)=abb101(56)+abb101(60)
      abb101(60)=abb101(30)*abb101(56)
      abb101(108)=abb101(60)*abb101(34)
      abb101(109)=abb101(16)*abb101(56)
      abb101(110)=abb101(109)*abb101(27)
      abb101(45)=abb101(45)-abb101(108)-abb101(110)
      abb101(108)=-spbk7k2*abb101(45)
      abb101(111)=abb101(108)*spak4k7
      abb101(112)=spak1l6*spak4l5
      abb101(113)=abb101(112)*abb101(51)
      abb101(114)=abb101(64)*spak4l5
      abb101(113)=abb101(113)-abb101(114)
      abb101(113)=abb101(113)*spbk7l6
      abb101(114)=abb101(46)*spbe7k2
      abb101(115)=-abb101(114)*abb101(53)
      abb101(46)=abb101(46)*abb101(57)
      abb101(57)=abb101(115)-abb101(46)
      abb101(115)=abb101(57)*abb101(27)
      abb101(116)=abb101(115)*abb101(32)
      abb101(117)=abb101(116)*spak4l5
      abb101(118)=abb101(29)*abb101(15)
      abb101(119)=-abb101(118)*abb101(102)
      abb101(54)=-spbe7k2*abb101(54)
      abb101(15)=abb101(58)*abb101(15)
      abb101(15)=abb101(54)+abb101(15)
      abb101(54)=abb101(15)*abb101(8)
      abb101(54)=abb101(119)-abb101(54)
      abb101(54)=abb101(54)*abb101(8)
      abb101(58)=abb101(60)*abb101(8)
      abb101(119)=abb101(58)*abb101(32)
      abb101(54)=abb101(54)-abb101(119)
      abb101(119)=abb101(54)*spak1k4
      abb101(107)=abb101(107)-abb101(119)-abb101(111)-abb101(113)-abb101(117)
      abb101(82)=abb101(53)*abb101(82)*abb101(14)
      abb101(84)=abb101(84)*abb101(14)
      abb101(82)=abb101(84)+abb101(82)
      abb101(84)=abb101(82)-abb101(85)
      abb101(85)=abb101(27)*spak4l5
      abb101(111)=abb101(84)*abb101(85)
      abb101(113)=2.0_ki*spak1e7
      abb101(117)=abb101(113)*spak4l5
      abb101(119)=abb101(117)*abb101(61)
      abb101(120)=abb101(119)*abb101(80)
      abb101(121)=abb101(92)*spak4l5
      abb101(122)=abb101(41)*abb101(121)
      abb101(111)=-abb101(111)+abb101(120)+abb101(122)+abb101(107)
      abb101(111)=8.0_ki*abb101(111)
      abb101(66)=abb101(66)*abb101(112)
      abb101(94)=abb101(94)*spak4l5
      abb101(66)=abb101(94)+abb101(66)
      abb101(48)=-abb101(5)*abb101(48)
      abb101(94)=abb101(48)*spbk7k2
      abb101(120)=spal6k7*spak1k4*abb101(94)
      abb101(66)=abb101(120)+2.0_ki*abb101(66)
      abb101(66)=16.0_ki*abb101(66)
      abb101(120)=abb101(15)*spak1k4
      abb101(119)=abb101(120)+abb101(119)
      abb101(119)=16.0_ki*abb101(119)
      abb101(77)=abb101(77)+abb101(121)
      abb101(77)=-abb101(77)*abb101(41)
      abb101(57)=abb101(57)*abb101(7)
      abb101(120)=abb101(57)*spak1e7
      abb101(122)=abb101(120)*abb101(99)
      abb101(123)=2.0_ki*spak4l5
      abb101(124)=-abb101(61)*abb101(80)*abb101(123)
      abb101(79)=abb101(7)*abb101(79)*abb101(88)
      abb101(79)=abb101(124)+abb101(79)
      abb101(79)=spak1e7*abb101(79)
      abb101(124)=abb101(7)*spak4l5*abb101(84)
      abb101(19)=abb101(124)+abb101(19)
      abb101(19)=spak1k2*abb101(19)
      abb101(19)=abb101(79)+abb101(19)-abb101(107)+abb101(122)+abb101(77)
      abb101(19)=8.0_ki*abb101(19)
      abb101(77)=abb101(57)*abb101(117)
      abb101(79)=abb101(109)*abb101(7)
      abb101(107)=abb101(79)*spak1k4
      abb101(77)=abb101(77)+abb101(107)
      abb101(77)=16.0_ki*abb101(77)
      abb101(102)=abb101(8)*abb101(102)*spal6e7
      abb101(38)=abb101(38)+abb101(102)+abb101(55)
      abb101(38)=spak2k4*abb101(38)
      abb101(55)=spak1l5*abb101(38)
      abb101(68)=-abb101(62)*abb101(68)
      abb101(102)=abb101(92)*spbe7k3
      abb101(65)=-abb101(65)*abb101(102)
      abb101(21)=abb101(65)+abb101(68)+abb101(55)-abb101(21)
      abb101(21)=8.0_ki*abb101(21)
      abb101(52)=abb101(52)*abb101(34)
      abb101(55)=4.0_ki*abb101(52)*abb101(99)
      abb101(65)=abb101(39)*spbl6k2
      abb101(68)=abb101(48)*abb101(32)
      abb101(65)=abb101(65)+abb101(68)
      abb101(99)=spak1k4*abb101(65)
      abb101(107)=abb101(123)*abb101(52)
      abb101(99)=-abb101(107)+abb101(99)
      abb101(99)=8.0_ki*abb101(99)
      abb101(69)=-abb101(69)*abb101(41)
      abb101(107)=abb101(69)+abb101(115)
      abb101(109)=abb101(107)*spak3k4
      abb101(87)=-abb101(109)*abb101(87)
      abb101(59)=es12*abb101(57)*abb101(59)
      abb101(69)=abb101(97)*spak2k4*abb101(69)
      abb101(59)=abb101(59)+abb101(87)+abb101(69)
      abb101(59)=4.0_ki*abb101(59)
      abb101(69)=-spak4l5*abb101(107)
      abb101(87)=abb101(58)*spak1k4
      abb101(69)=abb101(87)+2.0_ki*abb101(69)
      abb101(69)=8.0_ki*abb101(69)
      abb101(87)=8.0_ki*abb101(121)
      abb101(97)=spak2k4*abb101(108)
      abb101(121)=abb101(45)*spak3k4
      abb101(122)=spbk7k3*abb101(121)
      abb101(97)=abb101(122)+abb101(97)
      abb101(97)=4.0_ki*abb101(97)
      abb101(122)=-spak2k4*abb101(104)
      abb101(121)=spbl6k3*abb101(121)
      abb101(121)=abb101(121)+abb101(122)
      abb101(121)=4.0_ki*abb101(121)
      abb101(122)=abb101(51)*spbk7k3
      abb101(124)=-spak3k4*abb101(122)
      abb101(125)=-spbe7k3*abb101(93)
      abb101(124)=abb101(125)+abb101(124)+abb101(38)
      abb101(124)=spak1k7*abb101(124)
      abb101(125)=-spbl6k3*spak3k4*abb101(64)
      abb101(124)=abb101(125)+abb101(124)
      abb101(124)=4.0_ki*abb101(124)
      abb101(38)=spak1l6*abb101(38)
      abb101(125)=-spbl6k3*abb101(62)
      abb101(102)=-abb101(102)+abb101(125)-abb101(122)
      abb101(42)=abb101(42)*abb101(102)
      abb101(38)=abb101(42)+abb101(38)
      abb101(38)=4.0_ki*abb101(38)
      abb101(42)=4.0_ki*abb101(83)
      abb101(67)=8.0_ki*abb101(67)
      abb101(83)=abb101(78)*spak3k4
      abb101(83)=8.0_ki*abb101(83)
      abb101(102)=8.0_ki*spak3k4
      abb101(122)=abb101(120)*abb101(102)
      abb101(125)=4.0_ki*spak3k4
      abb101(126)=abb101(52)*abb101(125)
      abb101(109)=-4.0_ki*abb101(109)
      abb101(82)=abb101(82)*abb101(27)
      abb101(82)=abb101(116)-abb101(86)+abb101(82)
      abb101(82)=spak2k4*abb101(82)
      abb101(86)=spbk7k3*spae7k7
      abb101(127)=abb101(86)*spak3k4
      abb101(115)=-abb101(115)*abb101(127)
      abb101(114)=abb101(114)*abb101(90)
      abb101(46)=-spal6e7*abb101(46)
      abb101(46)=abb101(46)+abb101(114)
      abb101(46)=spbl6k3*abb101(46)*abb101(50)
      abb101(50)=abb101(29)*abb101(6)
      abb101(90)=-abb101(50)*abb101(90)
      abb101(91)=abb101(23)*abb101(91)
      abb101(114)=abb101(29)*abb101(91)
      abb101(90)=abb101(114)+abb101(90)
      abb101(89)=spbe7k3*abb101(90)*abb101(89)
      abb101(46)=abb101(89)+abb101(46)+abb101(115)-abb101(72)+abb101(82)
      abb101(46)=4.0_ki*abb101(46)
      abb101(72)=8.0_ki*spak2k4
      abb101(82)=-abb101(98)*abb101(72)
      abb101(78)=abb101(72)*abb101(78)
      abb101(72)=-abb101(120)*abb101(72)
      abb101(89)=4.0_ki*spak2k4
      abb101(90)=-abb101(52)*abb101(89)
      abb101(114)=abb101(107)*abb101(89)
      abb101(12)=-abb101(12)*abb101(18)
      abb101(44)=abb101(12)+abb101(44)
      abb101(44)=abb101(44)*abb101(105)
      abb101(105)=abb101(12)*abb101(16)
      abb101(115)=abb101(24)*abb101(14)
      abb101(105)=abb101(115)+abb101(105)
      abb101(105)=abb101(105)*abb101(27)
      abb101(37)=-abb101(37)*abb101(18)
      abb101(37)=abb101(37)+abb101(40)
      abb101(40)=-abb101(37)*abb101(41)
      abb101(115)=abb101(40)*spbl6k2
      abb101(44)=-abb101(115)+abb101(44)+abb101(105)
      abb101(44)=abb101(44)*spak4l6
      abb101(17)=-abb101(17)*abb101(18)
      abb101(17)=abb101(17)+abb101(26)
      abb101(26)=abb101(17)*abb101(27)
      abb101(31)=-abb101(31)*abb101(18)
      abb101(31)=abb101(31)+abb101(33)
      abb101(33)=abb101(31)*abb101(34)
      abb101(26)=-abb101(40)+abb101(33)+abb101(26)
      abb101(26)=spak4k7*abb101(26)*spbk7k2
      abb101(33)=-mB*abb101(18)
      abb101(40)=-abb101(81)*abb101(33)
      abb101(81)=abb101(24)*mB
      abb101(40)=abb101(40)-abb101(81)
      abb101(81)=abb101(40)*abb101(8)
      abb101(12)=abb101(12)*abb101(118)
      abb101(24)=abb101(24)*abb101(29)
      abb101(12)=abb101(12)+abb101(24)+abb101(81)
      abb101(12)=abb101(12)*abb101(8)
      abb101(24)=abb101(31)*abb101(8)
      abb101(31)=abb101(24)*abb101(32)
      abb101(12)=abb101(12)-abb101(31)
      abb101(12)=abb101(12)*spak1k4
      abb101(31)=abb101(13)*spal6e7
      abb101(81)=abb101(18)*abb101(31)
      abb101(105)=abb101(25)*spal6e7
      abb101(81)=abb101(81)-abb101(105)
      abb101(105)=-abb101(14)*abb101(81)
      abb101(81)=-abb101(8)*abb101(29)*abb101(81)
      abb101(81)=abb101(81)+abb101(105)
      abb101(81)=abb101(81)*abb101(85)
      abb101(49)=-abb101(49)*abb101(18)
      abb101(47)=abb101(49)+abb101(47)
      abb101(49)=abb101(47)*abb101(85)
      abb101(85)=abb101(49)*abb101(32)
      abb101(13)=-abb101(13)*abb101(33)
      abb101(25)=mB*abb101(25)
      abb101(13)=abb101(13)-abb101(25)
      abb101(105)=abb101(13)*abb101(117)
      abb101(115)=abb101(105)*abb101(80)
      abb101(71)=-abb101(71)*abb101(18)
      abb101(70)=abb101(43)*abb101(70)
      abb101(70)=abb101(70)+abb101(71)
      abb101(70)=abb101(70)*spak4l5*abb101(8)
      abb101(71)=abb101(41)*abb101(70)
      abb101(12)=abb101(44)+abb101(26)+abb101(12)+abb101(81)+abb101(71)-abb101(&
      &115)-abb101(85)
      abb101(26)=spbk4k2*abb101(12)
      abb101(27)=abb101(84)*abb101(27)
      abb101(44)=abb101(61)*abb101(113)
      abb101(61)=abb101(44)*abb101(80)
      abb101(71)=abb101(41)*abb101(92)
      abb101(27)=-abb101(27)+abb101(61)+abb101(71)-abb101(116)
      abb101(61)=-spak3l5*abb101(27)
      abb101(13)=abb101(13)*spae7k7
      abb101(71)=abb101(13)*abb101(112)
      abb101(31)=-abb101(31)*abb101(33)
      abb101(25)=abb101(25)*spal6e7
      abb101(25)=abb101(31)-abb101(25)
      abb101(25)=abb101(25)*spak4l5
      abb101(31)=abb101(25)*spak1k7
      abb101(31)=abb101(71)+abb101(31)
      abb101(33)=spbk4k2*abb101(31)
      abb101(71)=abb101(51)*spak1l6
      abb101(64)=abb101(71)-abb101(64)
      abb101(71)=spak3l5*abb101(64)
      abb101(33)=abb101(33)+abb101(71)
      abb101(33)=spbk7l6*abb101(33)
      abb101(71)=spak3k7*abb101(108)
      abb101(81)=-spak3l6*abb101(104)
      abb101(84)=spak1k3*abb101(54)
      abb101(26)=abb101(81)+abb101(71)+abb101(84)+abb101(33)+abb101(61)+abb101(&
      &26)
      abb101(26)=4.0_ki*abb101(26)
      abb101(33)=-abb101(18)*abb101(9)*abb101(11)
      abb101(61)=abb101(43)*abb101(9)
      abb101(33)=abb101(61)+abb101(33)
      abb101(61)=abb101(33)*abb101(8)
      abb101(36)=-abb101(36)*abb101(18)
      abb101(43)=abb101(43)*abb101(35)
      abb101(43)=abb101(43)+abb101(36)
      abb101(61)=abb101(61)-abb101(43)
      abb101(61)=abb101(61)*abb101(112)
      abb101(36)=abb101(6)*abb101(36)
      abb101(35)=abb101(73)*abb101(35)
      abb101(35)=abb101(35)+abb101(36)
      abb101(35)=abb101(35)*spak4l5
      abb101(36)=abb101(35)*abb101(63)
      abb101(36)=abb101(61)-abb101(36)
      abb101(61)=spbk4k2*abb101(36)
      abb101(63)=-spak3l5*abb101(98)
      abb101(61)=abb101(61)+abb101(63)
      abb101(43)=-spak1k4*abb101(5)*abb101(43)
      abb101(63)=abb101(43)*spbk7k2
      abb101(71)=-spbk4k2*abb101(63)
      abb101(73)=-spak1k3*abb101(94)
      abb101(71)=abb101(71)+abb101(73)
      abb101(71)=spal6k7*abb101(71)
      abb101(61)=2.0_ki*abb101(61)+abb101(71)
      abb101(61)=8.0_ki*abb101(61)
      abb101(40)=abb101(40)*spak1k4
      abb101(40)=abb101(40)-abb101(105)
      abb101(71)=abb101(40)*spbk4k2
      abb101(73)=abb101(15)*spak1k3
      abb101(81)=abb101(44)*spak3l5
      abb101(71)=-abb101(71)+abb101(73)+abb101(81)
      abb101(71)=8.0_ki*abb101(71)
      abb101(47)=abb101(7)*abb101(47)*abb101(117)
      abb101(17)=abb101(17)*abb101(7)
      abb101(73)=abb101(17)*spak1k4
      abb101(47)=abb101(47)-abb101(73)
      abb101(73)=spbk4k2*abb101(47)
      abb101(57)=abb101(57)*abb101(113)
      abb101(81)=-spak3l5*abb101(57)
      abb101(84)=-spak1k3*abb101(79)
      abb101(73)=abb101(84)+abb101(73)+abb101(81)
      abb101(73)=8.0_ki*abb101(73)
      abb101(33)=abb101(34)*abb101(33)*abb101(123)
      abb101(32)=abb101(43)*abb101(32)
      abb101(32)=abb101(33)-abb101(32)
      abb101(33)=abb101(37)*spak1k4
      abb101(34)=spbl6k2*abb101(33)
      abb101(34)=-abb101(32)+abb101(34)
      abb101(34)=spbk4k2*abb101(34)
      abb101(43)=spak1k3*abb101(65)
      abb101(52)=2.0_ki*abb101(52)
      abb101(81)=-spak3l5*abb101(52)
      abb101(34)=abb101(43)+abb101(81)+abb101(34)
      abb101(34)=4.0_ki*abb101(34)
      abb101(35)=abb101(41)*abb101(35)
      abb101(35)=abb101(35)+abb101(49)
      abb101(41)=abb101(24)*spak1k4
      abb101(35)=abb101(41)+2.0_ki*abb101(35)
      abb101(41)=-spbk4k2*abb101(35)
      abb101(43)=2.0_ki*abb101(107)
      abb101(49)=spak3l5*abb101(43)
      abb101(81)=-spak1k3*abb101(58)
      abb101(41)=abb101(81)+abb101(41)+abb101(49)
      abb101(41)=4.0_ki*abb101(41)
      abb101(49)=spbk4k2*abb101(70)
      abb101(81)=-spak3l5*abb101(92)
      abb101(49)=abb101(49)+abb101(81)
      abb101(49)=4.0_ki*abb101(49)
      abb101(12)=-spbk4k3*abb101(12)
      abb101(27)=spak2l5*abb101(27)
      abb101(81)=es712-es12-es71
      abb101(45)=-abb101(45)*abb101(81)
      abb101(31)=-spbk4k3*abb101(31)
      abb101(64)=-spak2l5*abb101(64)
      abb101(31)=abb101(31)+abb101(64)
      abb101(31)=spbk7l6*abb101(31)
      abb101(64)=-abb101(103)-abb101(54)
      abb101(64)=spak1k2*abb101(64)
      abb101(81)=-abb101(106)+abb101(101)
      abb101(81)=spak2l6*abb101(81)
      abb101(12)=abb101(81)+abb101(31)+abb101(27)+abb101(12)+abb101(45)+abb101(&
      &64)
      abb101(12)=4.0_ki*abb101(12)
      abb101(27)=-spbk4k3*abb101(36)
      abb101(31)=spak2l5*abb101(98)
      abb101(27)=abb101(27)+abb101(31)
      abb101(31)=spak1k2*abb101(94)
      abb101(36)=spbk4k3*abb101(63)
      abb101(31)=abb101(31)+abb101(36)
      abb101(31)=spal6k7*abb101(31)
      abb101(27)=2.0_ki*abb101(27)+abb101(31)
      abb101(27)=8.0_ki*abb101(27)
      abb101(31)=abb101(40)*spbk4k3
      abb101(36)=abb101(15)*spak1k2
      abb101(40)=abb101(44)*spak2l5
      abb101(31)=-abb101(31)+abb101(36)+abb101(40)
      abb101(31)=8.0_ki*abb101(31)
      abb101(36)=-spbk4k3*abb101(47)
      abb101(40)=spak2l5*abb101(57)
      abb101(36)=abb101(40)+abb101(110)+abb101(36)
      abb101(36)=8.0_ki*abb101(36)
      abb101(32)=spbk4k3*abb101(32)
      abb101(40)=-spak1k2*abb101(39)
      abb101(33)=-spbk4k3*abb101(33)
      abb101(33)=abb101(40)+abb101(33)
      abb101(33)=spbl6k2*abb101(33)
      abb101(40)=-spak1k2*abb101(68)
      abb101(44)=spak2l5*abb101(52)
      abb101(32)=abb101(44)+abb101(33)+abb101(40)+abb101(32)
      abb101(32)=4.0_ki*abb101(32)
      abb101(33)=spbk4k3*abb101(35)
      abb101(35)=-spak2l5*abb101(43)
      abb101(40)=spak1k2*abb101(58)
      abb101(33)=abb101(35)+abb101(40)+abb101(33)
      abb101(33)=4.0_ki*abb101(33)
      abb101(35)=-spbk4k3*abb101(70)
      abb101(40)=spak2l5*abb101(92)
      abb101(35)=abb101(35)+abb101(40)
      abb101(35)=4.0_ki*abb101(35)
      abb101(40)=8.0_ki*spak4l5
      abb101(43)=abb101(40)*abb101(51)
      abb101(13)=abb101(13)*spak4l5
      abb101(44)=-spbk4k2*abb101(13)
      abb101(45)=-spak3l5*abb101(51)
      abb101(44)=abb101(44)+abb101(45)
      abb101(44)=4.0_ki*abb101(44)
      abb101(13)=spbk4k3*abb101(13)
      abb101(45)=spak2l5*abb101(51)
      abb101(13)=abb101(13)+abb101(45)
      abb101(13)=4.0_ki*abb101(13)
      abb101(40)=abb101(40)*abb101(62)
      abb101(45)=spbk4k2*abb101(25)
      abb101(47)=-spak3l5*abb101(62)
      abb101(45)=abb101(45)+abb101(47)
      abb101(45)=4.0_ki*abb101(45)
      abb101(25)=-spbk4k3*abb101(25)
      abb101(47)=spak2l5*abb101(62)
      abb101(25)=abb101(25)+abb101(47)
      abb101(25)=4.0_ki*abb101(25)
      abb101(47)=abb101(79)*abb101(102)
      abb101(52)=4.0_ki*abb101(93)
      abb101(57)=4.0_ki*abb101(88)
      abb101(63)=abb101(60)*abb101(57)
      abb101(64)=abb101(39)*spbk7e7
      abb101(68)=-abb101(64)*abb101(125)
      abb101(70)=abb101(39)*spbe7l6
      abb101(81)=abb101(70)*abb101(125)
      abb101(84)=abb101(51)*abb101(125)
      abb101(85)=abb101(62)*abb101(125)
      abb101(54)=-spak2k4*abb101(54)
      abb101(60)=-abb101(60)*abb101(86)
      abb101(56)=spbl6k3*abb101(118)*abb101(56)
      abb101(56)=abb101(56)+abb101(60)
      abb101(56)=abb101(88)*abb101(56)
      abb101(39)=abb101(39)*spak3k4
      abb101(60)=abb101(39)*spbe7k3
      abb101(80)=-abb101(80)*abb101(60)
      abb101(54)=abb101(80)+abb101(56)+abb101(54)
      abb101(54)=4.0_ki*abb101(54)
      abb101(9)=abb101(9)*abb101(5)
      abb101(11)=abb101(20)*abb101(9)*abb101(11)
      abb101(20)=abb101(6)*abb101(11)
      abb101(9)=abb101(74)*abb101(9)
      abb101(20)=abb101(9)+abb101(20)
      abb101(14)=abb101(14)*abb101(20)
      abb101(11)=-abb101(50)*abb101(11)
      abb101(9)=-abb101(29)*abb101(9)
      abb101(9)=abb101(9)+abb101(11)
      abb101(9)=abb101(8)*abb101(9)
      abb101(9)=abb101(9)+abb101(14)
      abb101(9)=spak3k4*abb101(9)
      abb101(11)=spak2k4*abb101(94)
      abb101(20)=-abb101(48)*spbk7k3*spak3k4
      abb101(11)=abb101(11)+abb101(20)
      abb101(11)=spal6k7*abb101(11)
      abb101(9)=abb101(9)+abb101(11)
      abb101(9)=8.0_ki*abb101(9)
      abb101(11)=abb101(15)*spak2k4
      abb101(11)=abb101(11)-abb101(60)
      abb101(11)=8.0_ki*abb101(11)
      abb101(15)=abb101(58)*spak4e7
      abb101(20)=abb101(79)*spak2k4
      abb101(29)=abb101(70)*spak4l6
      abb101(50)=abb101(64)*spak4k7
      abb101(15)=-abb101(50)+abb101(29)+abb101(15)-abb101(20)
      abb101(20)=8.0_ki*abb101(15)
      abb101(29)=abb101(53)*abb101(6)
      abb101(50)=-abb101(16)*abb101(29)
      abb101(53)=-abb101(76)*abb101(91)
      abb101(50)=abb101(53)+abb101(50)
      abb101(50)=spbe7k3*abb101(50)*abb101(75)
      abb101(15)=abb101(50)-abb101(15)
      abb101(15)=8.0_ki*abb101(15)
      abb101(50)=-spak2k4*abb101(65)
      abb101(48)=abb101(48)*abb101(127)
      abb101(39)=spbl6k3*abb101(39)
      abb101(14)=-spak2e7*abb101(14)*abb101(75)
      abb101(14)=abb101(14)+abb101(39)+abb101(48)+abb101(50)
      abb101(14)=4.0_ki*abb101(14)
      abb101(39)=-4.0_ki*abb101(95)
      abb101(22)=-abb101(6)*abb101(22)
      abb101(22)=abb101(22)-abb101(29)
      abb101(22)=spbe7k3*abb101(57)*abb101(30)*abb101(22)
      abb101(29)=abb101(64)*abb101(89)
      abb101(30)=-abb101(70)*abb101(89)
      abb101(48)=-abb101(51)*abb101(89)
      abb101(50)=-abb101(62)*abb101(89)
      abb101(51)=spak4k7*spbk7e7
      abb101(53)=spak4l6*spbe7l6
      abb101(51)=abb101(51)-abb101(53)
      abb101(37)=abb101(51)*abb101(37)
      abb101(24)=abb101(24)*spak4e7
      abb101(24)=abb101(37)-abb101(24)
      abb101(37)=spbk4k2*abb101(24)
      abb101(51)=es34*abb101(17)
      abb101(18)=c3*abb101(18)*abb101(6)
      abb101(18)=-abb101(23)+abb101(18)
      abb101(10)=abb101(7)*abb101(16)*abb101(10)*abb101(18)
      abb101(16)=spak3k7*abb101(64)
      abb101(18)=-spak3l6*abb101(70)
      abb101(23)=-spak3e7*abb101(58)
      abb101(10)=abb101(51)+abb101(23)+abb101(18)+abb101(16)+abb101(10)+abb101(&
      &37)
      abb101(10)=4.0_ki*abb101(10)
      abb101(16)=-spak2k4*abb101(17)
      abb101(16)=abb101(16)-abb101(24)
      abb101(16)=spbk4k3*abb101(16)
      abb101(17)=spak2l6*abb101(70)
      abb101(18)=-spak2k7*abb101(64)
      abb101(16)=abb101(18)+abb101(17)+abb101(16)
      abb101(16)=4.0_ki*abb101(16)
      R2d101=0.0_ki
      rat2 = rat2 + R2d101
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='101' value='", &
          & R2d101, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd101h0
