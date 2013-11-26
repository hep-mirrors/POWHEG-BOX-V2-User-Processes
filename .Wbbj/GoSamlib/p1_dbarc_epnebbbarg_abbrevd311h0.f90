module     p1_dbarc_epnebbbarg_abbrevd311h0
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(165), public :: abb311
   complex(ki), public :: R2d311
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
      abb311(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb311(2)=sqrt(mB**2)
      abb311(3)=NC**(-1)
      abb311(4)=es234**(-1)
      abb311(5)=spbl6k2**(-1)
      abb311(6)=spak2l6**(-1)
      abb311(7)=spak2l5**(-1)
      abb311(8)=spbl5k2**(-1)
      abb311(9)=TR*gW
      abb311(9)=abb311(9)**2
      abb311(10)=i_*CVDC
      abb311(11)=abb311(9)*abb311(10)*abb311(4)*abb311(1)
      abb311(12)=abb311(11)*abb311(2)
      abb311(13)=c2-c4
      abb311(14)=-abb311(12)*abb311(13)
      abb311(15)=abb311(5)*spbk3k2
      abb311(16)=mB**2
      abb311(17)=abb311(15)*abb311(16)
      abb311(18)=abb311(14)*abb311(17)
      abb311(19)=-spbe7k2*abb311(18)
      abb311(20)=abb311(11)*abb311(3)
      abb311(21)=c1-c3
      abb311(22)=-abb311(20)*abb311(21)
      abb311(23)=spbe7k2*abb311(2)
      abb311(24)=abb311(17)*abb311(23)
      abb311(25)=-abb311(24)*abb311(22)
      abb311(19)=abb311(19)+abb311(25)
      abb311(25)=spbk7k2*spak2k4
      abb311(26)=abb311(19)*abb311(25)
      abb311(17)=abb311(17)*abb311(2)
      abb311(27)=abb311(22)*abb311(17)
      abb311(18)=abb311(18)+abb311(27)
      abb311(27)=spbe7k3*spak3k4
      abb311(18)=abb311(18)*abb311(27)
      abb311(28)=spbk7k2*abb311(18)
      abb311(26)=abb311(26)+abb311(28)
      abb311(28)=2.0_ki*spak1k7
      abb311(26)=abb311(26)*abb311(28)
      abb311(28)=-abb311(16)*abb311(22)
      abb311(29)=spbe7k2*abb311(5)
      abb311(30)=spak1l5*spbk3k2
      abb311(31)=abb311(30)*abb311(2)
      abb311(32)=abb311(28)*abb311(29)*abb311(31)
      abb311(33)=-abb311(16)*abb311(13)
      abb311(34)=abb311(12)*abb311(30)
      abb311(35)=abb311(33)*abb311(34)
      abb311(36)=-abb311(29)*abb311(35)
      abb311(32)=abb311(36)+abb311(32)
      abb311(36)=spak2k4*abb311(32)
      abb311(35)=-abb311(5)*abb311(35)
      abb311(37)=abb311(28)*abb311(31)*abb311(5)
      abb311(35)=abb311(35)+abb311(37)
      abb311(37)=-abb311(35)*abb311(27)
      abb311(36)=abb311(36)+abb311(37)
      abb311(36)=spbl5k2*abb311(36)
      abb311(37)=abb311(23)*abb311(16)
      abb311(38)=abb311(37)*spbk3k2
      abb311(39)=abb311(22)*abb311(38)
      abb311(40)=abb311(16)*spbe7k2
      abb311(41)=abb311(40)*abb311(14)*spbk3k2
      abb311(39)=abb311(41)+abb311(39)
      abb311(41)=spak2k4*spak1l6
      abb311(42)=-abb311(39)*abb311(41)
      abb311(43)=abb311(14)*abb311(16)
      abb311(44)=spbk3k2*abb311(43)
      abb311(45)=spbk3k2*abb311(16)*abb311(2)
      abb311(46)=abb311(45)*abb311(22)
      abb311(44)=abb311(46)+abb311(44)
      abb311(44)=spak1l6*abb311(44)*abb311(27)
      abb311(26)=abb311(36)+abb311(26)+abb311(42)+abb311(44)
      abb311(26)=spal5e7*abb311(26)
      abb311(36)=spbe7k2*abb311(8)
      abb311(42)=-abb311(36)*abb311(22)
      abb311(44)=-abb311(17)*abb311(42)
      abb311(46)=abb311(11)*abb311(8)
      abb311(47)=-abb311(46)*abb311(13)
      abb311(24)=-abb311(24)*abb311(47)
      abb311(24)=abb311(44)-abb311(24)
      abb311(44)=spak1e7*spak3k4
      abb311(48)=abb311(44)*spbk2k1
      abb311(49)=abb311(48)*abb311(24)
      abb311(50)=-abb311(34)*abb311(13)
      abb311(51)=-abb311(31)*abb311(22)
      abb311(50)=abb311(50)-abb311(51)
      abb311(52)=-abb311(50)*spal6e7
      abb311(53)=abb311(52)*spbe7k1
      abb311(54)=-spak3k4*abb311(53)
      abb311(54)=-abb311(49)+abb311(54)
      abb311(54)=spak1k7*abb311(54)
      abb311(55)=abb311(46)*spbe7k2
      abb311(56)=abb311(33)*abb311(55)
      abb311(57)=-abb311(31)*abb311(56)
      abb311(58)=abb311(16)*abb311(36)
      abb311(51)=-abb311(58)*abb311(51)
      abb311(51)=abb311(57)-abb311(51)
      abb311(57)=abb311(51)*spal6e7
      abb311(59)=abb311(7)*spak3k4
      abb311(60)=abb311(57)*abb311(59)*spak2k7
      abb311(54)=abb311(60)+abb311(54)
      abb311(54)=spbk7k3*abb311(54)
      abb311(60)=-abb311(27)*abb311(50)
      abb311(61)=-spbe7k2*abb311(50)
      abb311(62)=abb311(61)*spak2k4
      abb311(60)=abb311(60)-abb311(62)
      abb311(62)=-spbk7l5*spal5e7*abb311(60)
      abb311(63)=spak2k4*spak1e7
      abb311(64)=abb311(63)*abb311(61)
      abb311(65)=abb311(44)*spbe7k3
      abb311(66)=-abb311(50)*abb311(65)
      abb311(64)=abb311(64)-abb311(66)
      abb311(66)=-spbk7k1*abb311(64)
      abb311(67)=-abb311(8)*abb311(22)
      abb311(67)=abb311(67)-abb311(47)
      abb311(68)=abb311(7)*abb311(27)*spak2e7
      abb311(69)=abb311(67)*abb311(68)*spbk7k2
      abb311(31)=abb311(31)*abb311(16)
      abb311(70)=-abb311(69)*abb311(31)
      abb311(62)=abb311(66)+abb311(62)+abb311(70)
      abb311(66)=2.0_ki*spal6k7
      abb311(62)=abb311(66)*abb311(62)
      abb311(70)=spak1e7*abb311(32)
      abb311(71)=abb311(22)*abb311(58)*abb311(2)
      abb311(72)=-spbk3k2*abb311(71)
      abb311(38)=-abb311(38)*abb311(47)
      abb311(38)=abb311(72)+abb311(38)
      abb311(72)=abb311(38)*spak1e7
      abb311(73)=spak1l6*abb311(72)
      abb311(70)=abb311(70)+2.0_ki*abb311(73)
      abb311(73)=spbk2k1*spak2k4
      abb311(70)=abb311(70)*abb311(73)
      abb311(49)=spak1l6*abb311(49)
      abb311(74)=abb311(19)*abb311(44)
      abb311(75)=abb311(52)*spbe7l5
      abb311(76)=abb311(75)*spak3k4
      abb311(74)=abb311(74)+abb311(76)
      abb311(76)=-spal5l6*abb311(74)
      abb311(77)=spak1l6*spak3k4
      abb311(78)=abb311(77)*abb311(53)
      abb311(49)=abb311(76)+abb311(49)+abb311(78)
      abb311(49)=spbl6k3*abb311(49)
      abb311(57)=-spbl6k3*abb311(57)
      abb311(76)=abb311(2)*spak1l5
      abb311(78)=spbk3k2*mB
      abb311(79)=abb311(78)**2
      abb311(80)=abb311(67)*abb311(76)*abb311(79)
      abb311(81)=spbe7l6*spal6e7
      abb311(82)=2.0_ki*abb311(81)
      abb311(83)=-abb311(80)*abb311(82)
      abb311(57)=abb311(57)+abb311(83)
      abb311(57)=abb311(59)*abb311(57)
      abb311(83)=spak2k4*spal6e7
      abb311(84)=abb311(83)*abb311(7)
      abb311(85)=abb311(84)*abb311(51)
      abb311(86)=spbl6k2*abb311(85)
      abb311(57)=abb311(86)+abb311(57)
      abb311(57)=spak2l6*abb311(57)
      abb311(86)=abb311(19)*spak2k4
      abb311(87)=spbk7k2*spak1e7
      abb311(88)=-abb311(87)*abb311(86)
      abb311(74)=spbk7k3*abb311(74)
      abb311(89)=-abb311(25)*abb311(75)
      abb311(74)=abb311(74)+abb311(88)+abb311(89)
      abb311(74)=spal5k7*abb311(74)
      abb311(88)=es712-es71
      abb311(89)=abb311(85)*abb311(88)
      abb311(90)=abb311(5)*spak1l5
      abb311(91)=abb311(14)*abb311(79)*abb311(90)
      abb311(92)=-abb311(90)*abb311(22)
      abb311(93)=abb311(79)*abb311(2)
      abb311(94)=-abb311(93)*abb311(92)
      abb311(91)=abb311(94)+abb311(91)
      abb311(94)=spal6e7*spak3k4
      abb311(95)=abb311(91)*abb311(94)
      abb311(96)=abb311(41)*spbk2k1
      abb311(97)=-abb311(52)*abb311(96)
      abb311(97)=-abb311(95)+abb311(97)
      abb311(98)=2.0_ki*spbe7l6
      abb311(97)=abb311(97)*abb311(98)
      abb311(45)=-spak1l6*abb311(45)*abb311(67)
      abb311(45)=-abb311(35)+abb311(45)
      abb311(45)=spbk2k1*abb311(45)*abb311(65)
      abb311(65)=spbk2k1*spak1e7
      abb311(99)=abb311(24)*abb311(65)
      abb311(100)=-abb311(25)*abb311(99)
      abb311(101)=abb311(48)*spbe7k3
      abb311(17)=abb311(101)*abb311(67)*abb311(17)
      abb311(102)=2.0_ki*spbk7k2
      abb311(102)=-abb311(102)*abb311(17)
      abb311(100)=abb311(100)+abb311(102)
      abb311(100)=spak1k7*abb311(100)
      abb311(102)=-abb311(82)*abb311(50)
      abb311(103)=-spbl5k2*abb311(102)
      abb311(104)=spbl6k2*abb311(75)
      abb311(103)=abb311(104)+abb311(103)
      abb311(103)=spak2k4*abb311(103)
      abb311(39)=-abb311(39)*abb311(63)
      abb311(39)=abb311(39)+abb311(103)
      abb311(39)=spal5l6*abb311(39)
      abb311(103)=abb311(15)**2
      abb311(104)=abb311(103)*mB**4
      abb311(23)=abb311(104)*abb311(23)
      abb311(105)=abb311(23)*abb311(22)
      abb311(106)=abb311(104)*abb311(14)*spbe7k2
      abb311(105)=abb311(105)+abb311(106)
      abb311(106)=abb311(44)*abb311(6)
      abb311(105)=abb311(105)*abb311(106)
      abb311(95)=abb311(95)*abb311(6)
      abb311(107)=spbe7l5*abb311(95)
      abb311(105)=abb311(105)+abb311(107)
      abb311(105)=spak2l5*abb311(105)
      abb311(23)=abb311(47)*abb311(23)
      abb311(104)=abb311(42)*abb311(104)*abb311(2)
      abb311(23)=abb311(23)-abb311(104)
      abb311(104)=-abb311(23)*abb311(106)
      abb311(104)=abb311(104)-abb311(85)
      abb311(104)=es12*abb311(104)
      abb311(107)=abb311(25)*spak1k7
      abb311(108)=-spbl6k2*abb311(41)
      abb311(108)=abb311(108)+abb311(107)
      abb311(108)=abb311(53)*abb311(108)
      abb311(109)=spbl5k3*spak3k4
      abb311(110)=spal5l6*abb311(109)
      abb311(111)=spbk3k1*abb311(77)
      abb311(110)=abb311(111)+abb311(110)
      abb311(102)=abb311(102)*abb311(110)
      abb311(110)=spak1k2*spbe7k1
      abb311(95)=abb311(95)*abb311(110)
      abb311(26)=abb311(104)+abb311(105)+abb311(74)+abb311(57)+abb311(95)+abb31&
      &1(49)+abb311(39)+abb311(100)+abb311(45)+abb311(70)+abb311(97)+abb311(62)&
      &+abb311(102)+abb311(108)+abb311(89)+abb311(54)+abb311(26)
      abb311(26)=2.0_ki*abb311(26)
      abb311(39)=abb311(11)*abb311(78)
      abb311(45)=abb311(39)*spak1l5
      abb311(49)=abb311(45)+2.0_ki*abb311(34)
      abb311(49)=abb311(13)*abb311(49)
      abb311(54)=spak1l5*abb311(20)*abb311(78)
      abb311(57)=abb311(20)*abb311(2)
      abb311(62)=abb311(57)*abb311(30)
      abb311(70)=abb311(54)+2.0_ki*abb311(62)
      abb311(70)=abb311(21)*abb311(70)
      abb311(49)=abb311(49)+abb311(70)
      abb311(70)=spbl5k2*spak2k4*abb311(49)
      abb311(39)=abb311(13)*abb311(39)
      abb311(74)=abb311(22)*abb311(78)
      abb311(39)=abb311(39)-abb311(74)
      abb311(74)=-abb311(39)*abb311(41)
      abb311(78)=-spbl6k2*abb311(74)
      abb311(89)=-2.0_ki*abb311(50)
      abb311(95)=-abb311(109)*abb311(89)
      abb311(70)=abb311(95)+abb311(70)+abb311(78)
      abb311(70)=spal5l6*abb311(70)
      abb311(78)=abb311(8)*abb311(39)
      abb311(95)=abb311(77)*abb311(78)
      abb311(97)=-abb311(90)*abb311(39)
      abb311(100)=abb311(97)*spak3k4
      abb311(95)=abb311(95)-abb311(100)
      abb311(95)=abb311(95)*spbk2k1
      abb311(102)=-spak1l6*abb311(95)
      abb311(104)=abb311(100)*spbl5k2
      abb311(105)=-abb311(39)*abb311(77)
      abb311(104)=abb311(104)+abb311(105)
      abb311(105)=spal5l6*abb311(104)
      abb311(102)=abb311(102)+abb311(105)
      abb311(102)=spbl6k3*abb311(102)
      abb311(105)=abb311(97)*spbl5k2
      abb311(108)=-abb311(39)*spak1l6
      abb311(105)=abb311(105)+abb311(108)
      abb311(109)=abb311(25)*abb311(105)
      abb311(111)=-spbk7k3*abb311(104)
      abb311(109)=abb311(111)+abb311(109)
      abb311(109)=spal5k7*abb311(109)
      abb311(93)=-abb311(93)*abb311(67)
      abb311(89)=-spbk3k1*abb311(89)
      abb311(89)=abb311(89)+abb311(93)
      abb311(89)=abb311(77)*abb311(89)
      abb311(49)=abb311(49)*abb311(96)
      abb311(93)=abb311(78)*spak1l6
      abb311(96)=abb311(93)-abb311(97)
      abb311(111)=-abb311(96)*abb311(73)
      abb311(112)=abb311(2)*abb311(5)
      abb311(79)=abb311(79)*abb311(112)
      abb311(113)=abb311(67)*abb311(79)
      abb311(114)=abb311(113)*spak3k4
      abb311(111)=-2.0_ki*abb311(114)+abb311(111)
      abb311(115)=spak1k7*spbk7k2
      abb311(111)=abb311(111)*abb311(115)
      abb311(116)=spbk7k3*spak1k7
      abb311(117)=abb311(95)*abb311(116)
      abb311(118)=-abb311(11)*abb311(13)
      abb311(118)=abb311(22)+abb311(118)
      abb311(119)=mB**3
      abb311(120)=abb311(119)*abb311(5)
      abb311(121)=spbk3k2**2
      abb311(122)=abb311(120)*abb311(121)
      abb311(123)=abb311(118)*abb311(122)
      abb311(124)=abb311(6)*abb311(123)*abb311(77)
      abb311(125)=abb311(119)*spak1l5
      abb311(103)=-spak3k4*abb311(118)*abb311(125)*abb311(103)
      abb311(126)=abb311(103)*abb311(6)
      abb311(127)=-spbl5k2*abb311(126)
      abb311(124)=abb311(124)+abb311(127)
      abb311(124)=spak2l5*abb311(124)
      abb311(122)=abb311(122)*abb311(67)
      abb311(127)=abb311(122)*abb311(77)
      abb311(128)=abb311(103)+abb311(127)
      abb311(128)=es12*abb311(6)*abb311(128)
      abb311(91)=spak3k4*abb311(91)
      abb311(129)=spbl6k2*abb311(78)*spak1l6**2*abb311(73)
      abb311(130)=-spbk7k3*spak3k4
      abb311(130)=abb311(25)+abb311(130)
      abb311(130)=-abb311(66)*abb311(50)*abb311(130)
      abb311(131)=2.0_ki*abb311(59)
      abb311(80)=spak2l6*abb311(80)*abb311(131)
      abb311(49)=abb311(128)+abb311(124)+abb311(109)+abb311(80)+abb311(130)+abb&
      &311(102)+abb311(117)+abb311(129)+abb311(111)+abb311(49)+3.0_ki*abb311(91&
      &)+abb311(89)+abb311(70)
      abb311(49)=4.0_ki*abb311(49)
      abb311(70)=-abb311(36)*abb311(39)
      abb311(80)=abb311(70)*spak1l6
      abb311(89)=spbe7k2*abb311(97)
      abb311(80)=abb311(80)+abb311(89)
      abb311(91)=abb311(73)*abb311(80)*spak1e7
      abb311(102)=abb311(100)*spbe7k3
      abb311(109)=abb311(89)*spak2k4
      abb311(102)=abb311(102)-abb311(109)
      abb311(111)=abb311(102)*spal5e7
      abb311(117)=abb311(111)*spbl5k2
      abb311(124)=abb311(91)-abb311(117)
      abb311(128)=-abb311(13)*abb311(79)*abb311(55)
      abb311(79)=-abb311(79)*abb311(42)
      abb311(79)=abb311(79)+abb311(128)
      abb311(79)=abb311(79)*abb311(44)
      abb311(61)=abb311(61)*abb311(83)
      abb311(61)=abb311(79)+abb311(61)
      abb311(79)=abb311(93)*abb311(44)
      abb311(128)=abb311(97)*abb311(44)
      abb311(79)=abb311(79)-abb311(128)
      abb311(79)=abb311(79)*spbk2k1
      abb311(129)=abb311(52)*spak3k4
      abb311(130)=abb311(129)-2.0_ki*abb311(79)
      abb311(130)=spbe7k3*abb311(130)
      abb311(108)=abb311(108)*abb311(27)
      abb311(132)=-abb311(39)*spbe7k2
      abb311(133)=abb311(132)*abb311(41)
      abb311(108)=abb311(108)-abb311(133)
      abb311(133)=2.0_ki*spal5e7
      abb311(134)=abb311(108)*abb311(133)
      abb311(124)=abb311(134)+abb311(130)-abb311(61)-2.0_ki*abb311(124)
      abb311(124)=4.0_ki*abb311(124)
      abb311(130)=abb311(90)*mB
      abb311(134)=abb311(13)*abb311(11)*abb311(130)
      abb311(135)=-abb311(130)*abb311(22)
      abb311(134)=abb311(134)+abb311(135)
      abb311(136)=spak3k4*abb311(134)*abb311(121)
      abb311(121)=abb311(67)*abb311(121)
      abb311(137)=mB*abb311(121)
      abb311(77)=abb311(137)*abb311(77)
      abb311(138)=abb311(136)+abb311(77)
      abb311(139)=-8.0_ki*abb311(138)
      abb311(61)=abb311(61)+abb311(117)
      abb311(117)=abb311(97)*abb311(48)
      abb311(117)=-abb311(129)+abb311(117)
      abb311(117)=spbe7k3*abb311(117)
      abb311(140)=-abb311(65)*abb311(109)
      abb311(117)=abb311(117)+abb311(140)+abb311(61)
      abb311(117)=4.0_ki*abb311(117)
      abb311(77)=-2.0_ki*abb311(136)-abb311(77)
      abb311(77)=8.0_ki*abb311(77)
      abb311(38)=abb311(38)*spak1l6
      abb311(38)=abb311(38)+abb311(32)
      abb311(136)=abb311(38)*spak4e7
      abb311(140)=spak4k7*spbk7k2
      abb311(141)=abb311(140)*spak1e7
      abb311(142)=abb311(65)*spak1k4
      abb311(141)=abb311(141)+abb311(142)
      abb311(143)=abb311(24)*abb311(141)
      abb311(144)=spak4l5*spak1e7
      abb311(145)=abb311(19)*abb311(144)
      abb311(146)=abb311(24)*spak4e7
      abb311(115)=2.0_ki*abb311(115)
      abb311(147)=abb311(115)*abb311(146)
      abb311(148)=3.0_ki*abb311(81)
      abb311(149)=-abb311(148)*abb311(50)
      abb311(72)=abb311(149)-abb311(72)
      abb311(149)=abb311(72)*spak4l6
      abb311(150)=spbe7l5*spak4l5
      abb311(151)=spbe7k1*spak1k4
      abb311(150)=abb311(150)+abb311(151)
      abb311(151)=spbk7e7*spak4k7
      abb311(151)=abb311(151)+abb311(150)
      abb311(152)=abb311(151)*abb311(52)
      abb311(153)=-abb311(50)*spak4e7
      abb311(66)=abb311(66)*spbk7e7
      abb311(154)=abb311(66)*abb311(153)
      abb311(136)=abb311(136)-abb311(149)+abb311(154)-abb311(147)+abb311(152)+a&
      &bb311(145)+abb311(143)
      abb311(143)=abb311(83)*abb311(6)
      abb311(32)=abb311(143)*abb311(32)
      abb311(32)=abb311(85)+abb311(32)-abb311(136)
      abb311(32)=4.0_ki*abb311(32)
      abb311(85)=spak4l5*abb311(105)
      abb311(145)=spak1k4*spbk2k1
      abb311(145)=abb311(145)+abb311(140)
      abb311(147)=abb311(96)*abb311(145)
      abb311(149)=abb311(54)+4.0_ki*abb311(62)
      abb311(149)=-abb311(149)*abb311(21)
      abb311(152)=abb311(45)+4.0_ki*abb311(34)
      abb311(152)=-abb311(152)*abb311(13)
      abb311(149)=abb311(149)+abb311(152)
      abb311(152)=abb311(149)*spak4l6
      abb311(154)=spbl6k2*spak4l6
      abb311(155)=abb311(154)*abb311(93)
      abb311(85)=abb311(152)-abb311(155)+abb311(147)+abb311(85)
      abb311(147)=8.0_ki*abb311(85)
      abb311(152)=abb311(80)*spak4e7
      abb311(155)=16.0_ki*abb311(152)
      abb311(156)=8.0_ki*spak4e7
      abb311(157)=abb311(156)*abb311(89)
      abb311(35)=-abb311(35)*abb311(94)
      abb311(15)=abb311(119)*abb311(15)
      abb311(158)=abb311(67)*abb311(15)
      abb311(159)=-abb311(158)*abb311(48)*spak1l6
      abb311(35)=abb311(35)+abb311(159)
      abb311(35)=spbe7k3*abb311(35)
      abb311(23)=abb311(23)*abb311(44)
      abb311(55)=abb311(13)*abb311(55)
      abb311(55)=abb311(42)+abb311(55)
      abb311(159)=-abb311(15)*abb311(55)
      abb311(160)=-abb311(159)*abb311(65)*abb311(41)
      abb311(23)=abb311(35)+abb311(23)+abb311(160)
      abb311(23)=abb311(6)*abb311(23)
      abb311(35)=-abb311(51)*abb311(83)
      abb311(51)=abb311(119)*abb311(90)
      abb311(121)=abb311(51)*abb311(121)
      abb311(160)=spak3k4*abb311(121)*abb311(82)
      abb311(35)=abb311(35)+abb311(160)
      abb311(35)=abb311(7)*abb311(35)
      abb311(160)=spbe7k2*abb311(22)
      abb311(161)=abb311(13)*abb311(11)*spbe7k2
      abb311(160)=-abb311(161)+abb311(160)
      abb311(162)=abb311(160)*abb311(15)
      abb311(163)=-abb311(6)*abb311(162)*abb311(41)
      abb311(164)=abb311(118)*abb311(27)*abb311(6)
      abb311(15)=abb311(15)*abb311(164)
      abb311(165)=spak1l6*abb311(15)
      abb311(163)=abb311(163)+abb311(165)
      abb311(163)=spal5e7*abb311(163)
      abb311(23)=abb311(163)+abb311(35)+abb311(136)+abb311(23)
      abb311(23)=4.0_ki*abb311(23)
      abb311(35)=-abb311(103)-2.0_ki*abb311(127)
      abb311(35)=abb311(6)*abb311(35)
      abb311(103)=-abb311(121)*abb311(131)
      abb311(35)=abb311(103)+abb311(35)-abb311(85)
      abb311(35)=8.0_ki*abb311(35)
      abb311(85)=abb311(159)*abb311(6)
      abb311(103)=abb311(85)*spak1l6
      abb311(121)=abb311(103)*abb311(156)
      abb311(127)=abb311(138)*abb311(82)
      abb311(79)=abb311(129)+abb311(79)
      abb311(79)=spbe7k3*abb311(79)
      abb311(108)=-spal5e7*abb311(108)
      abb311(61)=abb311(108)+abb311(79)+abb311(127)+abb311(91)-abb311(61)
      abb311(61)=2.0_ki*abb311(61)
      abb311(79)=4.0_ki*abb311(152)
      abb311(91)=abb311(65)*abb311(107)
      abb311(107)=-abb311(48)*abb311(116)
      abb311(91)=abb311(107)+abb311(91)
      abb311(91)=abb311(78)*abb311(91)
      abb311(107)=-spak2l5*abb311(123)
      abb311(108)=-es12*abb311(122)
      abb311(107)=abb311(108)+abb311(107)
      abb311(107)=abb311(106)*abb311(107)
      abb311(48)=abb311(93)*abb311(48)
      abb311(108)=-abb311(39)*spal5l6
      abb311(116)=-abb311(44)*abb311(108)
      abb311(48)=abb311(48)+abb311(116)
      abb311(48)=spbl6k3*abb311(48)
      abb311(116)=abb311(93)*spbl6k2
      abb311(123)=abb311(65)*spak2k4
      abb311(127)=-abb311(123)*abb311(116)
      abb311(108)=spbl6k2*abb311(63)*abb311(108)
      abb311(129)=abb311(87)*spak2k4
      abb311(131)=spbk7k3*abb311(44)
      abb311(129)=-abb311(129)+abb311(131)
      abb311(129)=-spal5k7*abb311(39)*abb311(129)
      abb311(48)=abb311(129)+abb311(48)+abb311(108)+abb311(127)+abb311(107)+abb&
      &311(91)
      abb311(48)=2.0_ki*abb311(48)
      abb311(44)=abb311(137)*abb311(44)
      abb311(91)=4.0_ki*abb311(44)
      abb311(107)=abb311(78)*spak1e7
      abb311(108)=-abb311(154)+abb311(140)
      abb311(108)=abb311(107)*abb311(108)
      abb311(127)=abb311(142)*abb311(78)
      abb311(129)=-abb311(39)*abb311(144)
      abb311(108)=-abb311(153)+abb311(129)+abb311(127)+abb311(108)
      abb311(127)=4.0_ki*abb311(108)
      abb311(129)=abb311(122)*abb311(106)
      abb311(108)=abb311(129)+abb311(108)
      abb311(108)=4.0_ki*abb311(108)
      abb311(44)=-2.0_ki*abb311(44)
      abb311(129)=abb311(100)*spbk7k3
      abb311(25)=abb311(25)*abb311(97)
      abb311(25)=abb311(129)-abb311(25)
      abb311(129)=-spal5k7*abb311(25)
      abb311(131)=-abb311(39)*spak1l5
      abb311(136)=-spal5l6*spak2k4*abb311(131)
      abb311(138)=-spak2l5*abb311(126)
      abb311(129)=abb311(129)+abb311(138)+abb311(136)
      abb311(129)=spbe7l5*abb311(129)
      abb311(136)=spak1k7*abb311(25)
      abb311(41)=abb311(131)*abb311(41)
      abb311(126)=-spak1k2*abb311(126)
      abb311(41)=abb311(126)+abb311(41)+abb311(136)
      abb311(41)=spbe7k1*abb311(41)
      abb311(30)=abb311(119)*abb311(30)
      abb311(126)=-abb311(47)*abb311(30)*abb311(29)
      abb311(131)=abb311(30)*abb311(5)
      abb311(136)=-abb311(131)*abb311(42)
      abb311(126)=abb311(126)-abb311(136)
      abb311(136)=abb311(7)*spak2k4
      abb311(138)=abb311(126)*abb311(136)
      abb311(140)=-es12+abb311(88)
      abb311(140)=abb311(138)*abb311(140)
      abb311(59)=abb311(59)*abb311(126)
      abb311(126)=-spbl6k3*abb311(59)
      abb311(142)=abb311(136)*abb311(30)*abb311(55)
      abb311(126)=abb311(142)+abb311(126)
      abb311(126)=spak2l6*abb311(126)
      abb311(59)=spak2k7*spbk7k3*abb311(59)
      abb311(142)=abb311(100)*spbl6k3
      abb311(152)=-spbe7k1*spak1l6
      abb311(153)=spal5l6*spbe7l5
      abb311(152)=abb311(152)+abb311(153)
      abb311(152)=abb311(152)*abb311(142)
      abb311(41)=abb311(59)+abb311(126)+abb311(152)+abb311(140)+abb311(41)+abb3&
      &11(129)
      abb311(41)=2.0_ki*abb311(41)
      abb311(59)=4.0_ki*abb311(102)
      abb311(126)=abb311(97)*abb311(150)
      abb311(129)=abb311(97)*spbk7e7
      abb311(140)=abb311(129)*spak4k7
      abb311(150)=abb311(97)*spbe7l6
      abb311(152)=abb311(150)*spak4l6
      abb311(126)=abb311(138)+abb311(140)+abb311(152)+abb311(126)
      abb311(138)=abb311(5)**2
      abb311(140)=abb311(138)*abb311(30)
      abb311(152)=abb311(6)*spak2k4
      abb311(153)=abb311(152)*abb311(160)*abb311(140)
      abb311(153)=abb311(153)-abb311(126)
      abb311(153)=4.0_ki*abb311(153)
      abb311(140)=abb311(140)*abb311(164)
      abb311(126)=abb311(140)-abb311(126)
      abb311(126)=4.0_ki*abb311(126)
      abb311(102)=-2.0_ki*abb311(102)
      abb311(140)=spbk7l5*abb311(111)
      abb311(109)=abb311(109)*spak1e7
      abb311(128)=abb311(128)*spbe7k3
      abb311(109)=abb311(109)-abb311(128)
      abb311(128)=spbk7k1*abb311(109)
      abb311(69)=-abb311(131)*abb311(69)
      abb311(69)=abb311(128)+abb311(69)+abb311(140)
      abb311(69)=4.0_ki*abb311(69)
      abb311(25)=8.0_ki*abb311(25)
      abb311(128)=abb311(129)*abb311(156)
      abb311(131)=spak2k4*abb311(132)
      abb311(27)=abb311(39)*abb311(27)
      abb311(27)=abb311(131)+abb311(27)
      abb311(27)=spal5e7*abb311(27)
      abb311(123)=abb311(70)*abb311(123)
      abb311(101)=abb311(78)*abb311(101)
      abb311(27)=abb311(27)+abb311(123)+abb311(101)
      abb311(27)=4.0_ki*spak1k7*abb311(27)
      abb311(101)=8.0_ki*spak1k7*spak3k4*abb311(137)
      abb311(70)=abb311(70)*spak1k7
      abb311(123)=abb311(70)*abb311(156)
      abb311(60)=abb311(60)*abb311(133)
      abb311(131)=abb311(54)-abb311(62)
      abb311(131)=-abb311(131)*abb311(21)
      abb311(132)=abb311(45)-abb311(34)
      abb311(132)=-abb311(132)*abb311(13)
      abb311(131)=abb311(132)+abb311(131)
      abb311(132)=4.0_ki*abb311(81)
      abb311(133)=spak3k4*abb311(131)*abb311(132)
      abb311(54)=-abb311(62)+2.0_ki*abb311(54)
      abb311(54)=abb311(54)*abb311(21)
      abb311(34)=-abb311(34)+2.0_ki*abb311(45)
      abb311(34)=abb311(34)*abb311(13)
      abb311(34)=abb311(34)+abb311(54)
      abb311(34)=4.0_ki*spak3k4*abb311(34)
      abb311(45)=abb311(131)*spak2k4
      abb311(54)=-abb311(82)*abb311(45)
      abb311(131)=abb311(162)*abb311(152)
      abb311(15)=abb311(131)-abb311(15)
      abb311(15)=spak1k2*spal5e7*abb311(15)
      abb311(63)=abb311(85)*abb311(63)
      abb311(106)=spbe7k3*abb311(158)*abb311(106)
      abb311(63)=abb311(63)+abb311(106)
      abb311(63)=es12*abb311(63)
      abb311(106)=abb311(30)*abb311(20)
      abb311(16)=abb311(62)*abb311(16)
      abb311(16)=abb311(16)-abb311(106)
      abb311(16)=abb311(21)*abb311(8)*abb311(16)
      abb311(30)=abb311(31)-abb311(30)
      abb311(30)=abb311(13)*abb311(46)*abb311(30)
      abb311(16)=abb311(30)+abb311(16)
      abb311(16)=abb311(16)*abb311(68)
      abb311(30)=spbl6l5*abb311(111)
      abb311(31)=spbl6k1*abb311(109)
      abb311(15)=abb311(31)+abb311(30)+abb311(16)+abb311(63)+abb311(54)+abb311(&
      &15)
      abb311(15)=2.0_ki*abb311(15)
      abb311(16)=spak3k4*abb311(122)*spak1k2*abb311(6)
      abb311(16)=abb311(16)+abb311(45)+abb311(142)
      abb311(16)=4.0_ki*abb311(16)
      abb311(30)=abb311(85)*spak1k2
      abb311(30)=abb311(150)+abb311(30)
      abb311(30)=spak4e7*abb311(30)
      abb311(31)=abb311(78)*spak1k4
      abb311(45)=abb311(31)*abb311(82)
      abb311(30)=abb311(30)+abb311(45)
      abb311(30)=4.0_ki*abb311(30)
      abb311(31)=16.0_ki*abb311(31)
      abb311(45)=2.0_ki*abb311(64)
      abb311(46)=-abb311(104)*abb311(132)
      abb311(54)=8.0_ki*abb311(104)
      abb311(62)=abb311(100)*spbl5k3
      abb311(62)=abb311(62)+abb311(74)
      abb311(63)=abb311(62)*abb311(132)
      abb311(62)=-8.0_ki*abb311(62)
      abb311(40)=abb311(14)*abb311(40)*abb311(90)
      abb311(64)=-abb311(37)*abb311(92)
      abb311(40)=abb311(64)+abb311(40)
      abb311(64)=abb311(6)*abb311(40)
      abb311(68)=-abb311(37)*abb311(47)
      abb311(74)=abb311(68)*spak1l5
      abb311(76)=-abb311(76)*abb311(22)
      abb311(90)=abb311(76)*abb311(58)
      abb311(74)=abb311(74)+abb311(90)
      abb311(90)=-abb311(7)*abb311(74)
      abb311(64)=abb311(64)+abb311(90)
      abb311(64)=es34*abb311(64)
      abb311(90)=abb311(10)*abb311(3)
      abb311(92)=spak1l5*abb311(1)
      abb311(37)=abb311(21)*abb311(37)*abb311(90)*abb311(92)
      abb311(104)=abb311(9)*abb311(5)
      abb311(106)=abb311(104)*abb311(37)
      abb311(33)=abb311(33)*abb311(92)*abb311(9)*abb311(2)
      abb311(109)=abb311(10)*spbe7k2
      abb311(111)=abb311(5)*abb311(109)
      abb311(122)=-abb311(111)*abb311(33)
      abb311(106)=abb311(122)+abb311(106)
      abb311(106)=abb311(6)*abb311(106)
      abb311(122)=abb311(9)*abb311(8)
      abb311(37)=abb311(122)*abb311(37)
      abb311(33)=-abb311(8)*abb311(33)*abb311(109)
      abb311(33)=abb311(33)+abb311(37)
      abb311(33)=abb311(7)*abb311(33)
      abb311(33)=abb311(64)+abb311(33)+abb311(106)
      abb311(33)=spal6e7*abb311(33)
      abb311(22)=-abb311(22)*abb311(58)
      abb311(22)=abb311(22)-abb311(56)
      abb311(22)=abb311(112)*abb311(22)
      abb311(37)=abb311(115)*abb311(22)
      abb311(56)=-abb311(71)+abb311(68)
      abb311(58)=abb311(56)*spak1l6
      abb311(37)=abb311(37)+abb311(58)-abb311(40)
      abb311(58)=spbk4k2*spak4e7
      abb311(64)=abb311(58)*abb311(37)
      abb311(56)=abb311(56)*spak1e7
      abb311(14)=-spak1l5*abb311(14)
      abb311(14)=abb311(76)+abb311(14)
      abb311(68)=abb311(148)*abb311(14)
      abb311(56)=abb311(68)-abb311(56)
      abb311(56)=abb311(56)*spak4l6
      abb311(68)=abb311(141)*abb311(22)
      abb311(28)=abb311(28)*abb311(112)*spbe7k2
      abb311(43)=abb311(29)*abb311(43)
      abb311(28)=abb311(28)-abb311(43)
      abb311(28)=abb311(28)*abb311(144)
      abb311(43)=abb311(151)*abb311(14)*spal6e7
      abb311(28)=abb311(43)-abb311(68)+abb311(28)-abb311(56)
      abb311(43)=spbk4k2*abb311(28)
      abb311(56)=-abb311(24)*abb311(115)
      abb311(38)=abb311(56)+abb311(38)
      abb311(38)=spak3e7*abb311(38)
      abb311(56)=-abb311(50)*spak3e7
      abb311(68)=abb311(14)*abb311(58)
      abb311(56)=abb311(56)+abb311(68)
      abb311(68)=abb311(56)*abb311(66)
      abb311(71)=abb311(99)+abb311(53)
      abb311(71)=spak1k3*abb311(71)
      abb311(76)=-spak3l6*abb311(72)
      abb311(106)=abb311(24)*abb311(87)
      abb311(52)=abb311(52)*spbk7e7
      abb311(106)=abb311(106)+abb311(52)
      abb311(106)=spak3k7*abb311(106)
      abb311(19)=abb311(19)*spak1e7
      abb311(19)=abb311(19)+abb311(75)
      abb311(75)=spak3l5*abb311(19)
      abb311(33)=abb311(75)+abb311(106)+abb311(76)+abb311(71)+abb311(68)+abb311&
      &(38)+abb311(43)+abb311(64)+abb311(33)
      abb311(33)=2.0_ki*abb311(33)
      abb311(38)=abb311(118)*mB
      abb311(43)=abb311(38)*spak1l6
      abb311(64)=abb311(134)*spbl5k2
      abb311(43)=abb311(43)-abb311(64)
      abb311(43)=abb311(43)*spak4l5
      abb311(64)=spak1l5*mB
      abb311(11)=abb311(64)*abb311(11)
      abb311(68)=4.0_ki*spak1l5
      abb311(12)=abb311(68)*abb311(12)
      abb311(11)=abb311(11)+abb311(12)
      abb311(11)=abb311(13)*abb311(11)
      abb311(12)=abb311(64)*abb311(20)
      abb311(20)=abb311(68)*abb311(57)
      abb311(12)=abb311(12)+abb311(20)
      abb311(12)=abb311(21)*abb311(12)
      abb311(11)=abb311(11)+abb311(12)
      abb311(11)=abb311(11)*spak4l6
      abb311(12)=abb311(67)*mB
      abb311(20)=abb311(12)*spak1l6
      abb311(57)=abb311(20)+abb311(134)
      abb311(57)=abb311(145)*abb311(57)
      abb311(64)=abb311(154)*abb311(20)
      abb311(11)=abb311(57)-abb311(64)+abb311(43)-abb311(11)
      abb311(43)=-spbk4k2*abb311(11)
      abb311(57)=-spak1k3*spbk2k1
      abb311(64)=-spak3k7*spbk7k2
      abb311(57)=abb311(64)+abb311(57)
      abb311(57)=abb311(96)*abb311(57)
      abb311(64)=abb311(116)-abb311(149)
      abb311(67)=spak3l6*abb311(64)
      abb311(68)=-spak3l5*abb311(105)
      abb311(43)=abb311(68)+abb311(67)+abb311(43)+abb311(57)
      abb311(43)=4.0_ki*abb311(43)
      abb311(57)=mB*abb311(55)
      abb311(67)=abb311(57)*spak1l6
      abb311(68)=-abb311(130)*abb311(161)
      abb311(71)=-spbe7k2*abb311(135)
      abb311(68)=abb311(68)+abb311(71)
      abb311(67)=abb311(67)-abb311(68)
      abb311(71)=abb311(67)*abb311(58)
      abb311(75)=abb311(80)*spak3e7
      abb311(71)=abb311(71)-abb311(75)
      abb311(75)=8.0_ki*abb311(71)
      abb311(76)=-abb311(68)*abb311(58)
      abb311(80)=-spak3e7*abb311(89)
      abb311(76)=abb311(76)+abb311(80)
      abb311(76)=4.0_ki*abb311(76)
      abb311(29)=abb311(29)*abb311(119)*abb311(47)
      abb311(42)=-abb311(120)*abb311(42)
      abb311(29)=abb311(42)+abb311(29)
      abb311(29)=abb311(29)*abb311(6)
      abb311(42)=abb311(29)*abb311(58)
      abb311(47)=-spak1l6*abb311(42)
      abb311(80)=-spak3e7*abb311(103)
      abb311(47)=abb311(47)+abb311(80)
      abb311(47)=4.0_ki*abb311(47)
      abb311(71)=-2.0_ki*abb311(71)
      abb311(80)=abb311(12)*spbk4k2
      abb311(89)=abb311(154)*spak1e7
      abb311(89)=abb311(89)-abb311(141)
      abb311(103)=-abb311(80)*abb311(89)
      abb311(38)=abb311(38)*abb311(144)
      abb311(106)=spbk4k2*abb311(38)
      abb311(109)=abb311(78)*spak1k3
      abb311(65)=abb311(65)*abb311(109)
      abb311(112)=-spak3l6*spbl6k2*abb311(107)
      abb311(87)=spak3k7*abb311(78)*abb311(87)
      abb311(39)=-abb311(39)*spak1e7
      abb311(115)=spak3l5*abb311(39)
      abb311(56)=abb311(115)+abb311(87)+abb311(112)+abb311(65)+abb311(106)+abb3&
      &11(103)-abb311(56)
      abb311(56)=2.0_ki*abb311(56)
      abb311(21)=abb311(21)*abb311(90)
      abb311(36)=abb311(36)*abb311(104)*abb311(21)
      abb311(65)=abb311(111)*abb311(122)*abb311(13)
      abb311(36)=abb311(65)+abb311(36)
      abb311(36)=abb311(7)*abb311(36)
      abb311(10)=abb311(10)*abb311(13)
      abb311(10)=abb311(21)+abb311(10)
      abb311(9)=abb311(6)*abb311(138)*abb311(10)*abb311(9)*spbe7k2
      abb311(9)=abb311(36)+abb311(9)
      abb311(9)=abb311(9)*abb311(119)*abb311(92)
      abb311(10)=abb311(160)*abb311(138)*abb311(125)
      abb311(13)=abb311(6)*abb311(10)
      abb311(21)=-abb311(55)*abb311(51)
      abb311(36)=abb311(7)*abb311(21)
      abb311(13)=abb311(13)+abb311(36)
      abb311(13)=es34*abb311(13)
      abb311(36)=-spak1k3*spbe7k1
      abb311(51)=-spak3l5*spbe7l5
      abb311(36)=abb311(51)+abb311(36)
      abb311(36)=abb311(97)*abb311(36)
      abb311(51)=spak4l6*spbe7l6
      abb311(51)=abb311(51)+abb311(151)
      abb311(51)=abb311(51)*abb311(134)
      abb311(55)=spbk4k2*abb311(51)
      abb311(65)=-spak3l6*abb311(150)
      abb311(87)=-spak3k7*abb311(129)
      abb311(9)=abb311(13)+abb311(87)+abb311(65)+abb311(55)+abb311(36)+abb311(9)
      abb311(9)=2.0_ki*abb311(9)
      abb311(13)=abb311(134)*abb311(58)
      abb311(36)=spbk7e7*abb311(13)
      abb311(55)=-spak3e7*abb311(129)
      abb311(36)=abb311(36)+abb311(55)
      abb311(36)=4.0_ki*abb311(36)
      abb311(55)=abb311(57)*spak1k7
      abb311(57)=-abb311(58)*abb311(55)
      abb311(65)=spak3e7*abb311(70)
      abb311(57)=abb311(57)+abb311(65)
      abb311(57)=4.0_ki*abb311(57)
      abb311(65)=abb311(80)*spak1k4
      abb311(65)=abb311(65)+abb311(109)
      abb311(70)=abb311(82)*abb311(65)
      abb311(80)=spak3e7*abb311(85)
      abb311(42)=abb311(42)+abb311(80)
      abb311(42)=spak1k2*abb311(42)
      abb311(13)=-spbe7l6*abb311(13)
      abb311(80)=spak3e7*abb311(150)
      abb311(13)=abb311(42)+abb311(80)+abb311(13)+abb311(70)
      abb311(13)=2.0_ki*abb311(13)
      abb311(42)=-8.0_ki*abb311(65)
      abb311(65)=-abb311(14)*abb311(66)
      abb311(37)=abb311(65)-abb311(37)
      abb311(65)=spbk4k3*spak4e7
      abb311(37)=abb311(65)*abb311(37)
      abb311(40)=-abb311(40)*abb311(143)
      abb311(70)=abb311(74)*abb311(84)
      abb311(28)=abb311(70)+abb311(40)-abb311(28)
      abb311(28)=spbk4k3*abb311(28)
      abb311(40)=-abb311(88)+2.0_ki*es12
      abb311(70)=-abb311(24)*spak1e7*abb311(40)
      abb311(72)=spak2l6*abb311(72)
      abb311(19)=-spak2l5*abb311(19)
      abb311(53)=-spak1k2*abb311(53)
      abb311(50)=-abb311(50)*spak2e7
      abb311(66)=-abb311(66)*abb311(50)
      abb311(52)=-spak2k7*abb311(52)
      abb311(19)=abb311(52)+abb311(66)+abb311(19)+abb311(72)+abb311(53)+abb311(&
      &28)+abb311(37)+abb311(70)
      abb311(19)=2.0_ki*abb311(19)
      abb311(11)=spbk4k3*abb311(11)
      abb311(28)=abb311(96)*abb311(40)
      abb311(37)=-spak2l6*abb311(64)
      abb311(52)=spak2l5*abb311(105)
      abb311(11)=abb311(52)+abb311(37)+abb311(11)+abb311(28)
      abb311(11)=4.0_ki*abb311(11)
      abb311(28)=abb311(67)*abb311(65)
      abb311(37)=-8.0_ki*abb311(28)
      abb311(52)=4.0_ki*abb311(65)
      abb311(53)=abb311(68)*abb311(52)
      abb311(64)=abb311(93)+abb311(97)
      abb311(66)=8.0_ki*abb311(64)
      abb311(67)=abb311(66)*abb311(81)
      abb311(68)=16.0_ki*abb311(64)
      abb311(70)=abb311(52)*abb311(29)*spak1l6
      abb311(28)=2.0_ki*abb311(28)
      abb311(12)=abb311(12)*spbk4k3
      abb311(72)=abb311(12)*abb311(89)
      abb311(74)=spak2l6*spbl6k2
      abb311(40)=abb311(74)-abb311(40)
      abb311(40)=abb311(107)*abb311(40)
      abb311(14)=abb311(14)*abb311(65)
      abb311(38)=-spbk4k3*abb311(38)
      abb311(39)=-spak2l5*abb311(39)
      abb311(14)=abb311(50)+abb311(39)+abb311(38)+abb311(14)+abb311(40)+abb311(&
      &72)
      abb311(14)=2.0_ki*abb311(14)
      abb311(10)=-abb311(10)*abb311(152)
      abb311(21)=-abb311(21)*abb311(136)
      abb311(10)=abb311(21)+abb311(10)-abb311(51)
      abb311(10)=spbk4k3*abb311(10)
      abb311(21)=spak2l5*spbe7l5
      abb311(21)=abb311(21)+abb311(110)
      abb311(21)=abb311(97)*abb311(21)
      abb311(38)=spak2l6*abb311(150)
      abb311(39)=spak2k7*abb311(129)
      abb311(10)=abb311(39)+abb311(38)+abb311(10)+abb311(21)
      abb311(10)=2.0_ki*abb311(10)
      abb311(21)=abb311(134)*abb311(65)
      abb311(38)=-spbk7e7*abb311(21)
      abb311(39)=spak2e7*abb311(129)
      abb311(38)=abb311(38)+abb311(39)
      abb311(38)=4.0_ki*abb311(38)
      abb311(39)=abb311(52)*abb311(55)
      abb311(40)=-abb311(78)*abb311(82)
      abb311(29)=-abb311(65)*abb311(29)
      abb311(29)=abb311(40)+abb311(29)
      abb311(29)=spak1k2*abb311(29)
      abb311(21)=spbe7l6*abb311(21)
      abb311(12)=abb311(12)*spak1k4
      abb311(40)=-abb311(82)*abb311(12)
      abb311(50)=-spak2e7*abb311(150)
      abb311(21)=abb311(50)+abb311(29)+abb311(21)+abb311(40)
      abb311(21)=2.0_ki*abb311(21)
      abb311(29)=spak1k2*abb311(78)
      abb311(12)=abb311(12)+abb311(29)
      abb311(12)=8.0_ki*abb311(12)
      abb311(20)=abb311(20)-abb311(134)
      abb311(29)=abb311(20)*abb311(132)
      abb311(40)=-spbk4k2*abb311(29)
      abb311(20)=8.0_ki*abb311(20)
      abb311(50)=spbk4k2*abb311(20)
      abb311(29)=spbk4k3*abb311(29)
      abb311(20)=-spbk4k3*abb311(20)
      abb311(51)=-abb311(64)*abb311(132)
      abb311(52)=abb311(132)*abb311(95)
      abb311(55)=-8.0_ki*abb311(95)
      abb311(18)=-abb311(86)-abb311(18)
      abb311(18)=spal5e7*abb311(18)
      abb311(64)=spak2k4*abb311(99)
      abb311(72)=abb311(113)*abb311(94)
      abb311(74)=-spbk2k1*abb311(93)*abb311(83)
      abb311(72)=abb311(72)+abb311(74)
      abb311(72)=abb311(72)*abb311(98)
      abb311(74)=abb311(100)*spbk3k1
      abb311(78)=abb311(82)*abb311(74)
      abb311(17)=abb311(78)+abb311(18)+abb311(17)+abb311(64)+abb311(72)
      abb311(17)=2.0_ki*abb311(17)
      abb311(18)=2.0_ki*abb311(73)
      abb311(18)=abb311(93)*abb311(18)
      abb311(18)=-2.0_ki*abb311(74)-abb311(114)+abb311(18)
      abb311(18)=4.0_ki*abb311(18)
      abb311(64)=4.0_ki*abb311(146)
      abb311(58)=-abb311(22)*abb311(58)
      abb311(24)=spak3e7*abb311(24)
      abb311(24)=abb311(58)+abb311(24)
      abb311(24)=2.0_ki*abb311(24)
      abb311(58)=2.0_ki*abb311(65)
      abb311(22)=abb311(22)*abb311(58)
      R2d311=0.0_ki
      rat2 = rat2 + R2d311
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='311' value='", &
          & R2d311, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd311h0
