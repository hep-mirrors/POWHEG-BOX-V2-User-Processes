module     p0_dbaru_epnebbbarg_abbrevd93h7
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh7
   implicit none
   private
   complex(ki), dimension(112), public :: abb93
   complex(ki), public :: R2d93
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
      abb93(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb93(2)=1.0_ki/(-es71+es56-es567+es234)
      abb93(3)=NC**(-1)
      abb93(4)=sqrt2**(-1)
      abb93(5)=es234**(-1)
      abb93(6)=spak2l5**(-1)
      abb93(7)=spbl5k2**(-1)
      abb93(8)=spbk7k2**(-1)
      abb93(9)=spak2l6**(-1)
      abb93(10)=spbl6k2**(-1)
      abb93(11)=sqrt(mB**2)
      abb93(12)=TR*gW
      abb93(12)=abb93(8)*i_*CVDU*abb93(5)*abb93(4)*abb93(2)*abb93(12)**2
      abb93(13)=abb93(12)*c1*abb93(1)
      abb93(14)=2.0_ki*abb93(13)
      abb93(15)=abb93(14)*abb93(3)
      abb93(13)=abb93(13)*NC
      abb93(15)=abb93(15)-abb93(13)
      abb93(16)=-abb93(15)*spak3k4*spbk3k2**2
      abb93(17)=abb93(6)*spak1k2
      abb93(18)=mB**3
      abb93(19)=abb93(17)*abb93(18)
      abb93(20)=abb93(19)*abb93(9)
      abb93(21)=-abb93(20)*abb93(16)
      abb93(22)=abb93(3)*spbk3k2
      abb93(23)=abb93(22)**2*c4*abb93(1)
      abb93(24)=abb93(23)*spak3k4
      abb93(25)=abb93(12)*abb93(9)
      abb93(26)=abb93(25)*abb93(24)
      abb93(27)=abb93(26)*abb93(19)
      abb93(21)=abb93(21)-abb93(27)
      abb93(27)=spak2k7*abb93(21)
      abb93(28)=abb93(9)**2
      abb93(29)=abb93(18)*spak1k2
      abb93(30)=abb93(28)*abb93(29)
      abb93(31)=-abb93(30)*abb93(16)
      abb93(32)=abb93(28)*abb93(18)
      abb93(33)=abb93(12)*spak1k2
      abb93(34)=abb93(32)*abb93(33)
      abb93(35)=abb93(34)*abb93(24)
      abb93(31)=abb93(31)-abb93(35)
      abb93(35)=abb93(10)*spbl5k2
      abb93(36)=abb93(31)*abb93(35)
      abb93(37)=abb93(36)*spak2k7
      abb93(38)=abb93(17)*mB
      abb93(39)=abb93(38)*abb93(16)
      abb93(40)=abb93(24)*abb93(33)
      abb93(41)=abb93(6)*mB
      abb93(42)=abb93(40)*abb93(41)
      abb93(39)=abb93(42)+abb93(39)
      abb93(42)=spbl6k1*spak1k7
      abb93(43)=abb93(39)*abb93(42)
      abb93(27)=abb93(43)+2.0_ki*abb93(27)+abb93(37)
      abb93(27)=spak1l6*abb93(27)
      abb93(43)=spak1k7*abb93(10)
      abb93(44)=abb93(43)*es12
      abb93(45)=-abb93(21)*abb93(44)
      abb93(46)=abb93(18)*abb93(6)
      abb93(47)=abb93(46)*abb93(9)
      abb93(48)=abb93(47)*abb93(16)
      abb93(49)=abb93(26)*abb93(46)
      abb93(48)=abb93(49)+abb93(48)
      abb93(49)=spak1k2**2
      abb93(50)=abb93(48)*abb93(49)
      abb93(51)=abb93(50)*abb93(35)
      abb93(52)=-abb93(39)*spak1l6*spbl6l5
      abb93(51)=abb93(51)+abb93(52)
      abb93(51)=spal5k7*abb93(51)
      abb93(52)=abb93(18)*abb93(33)
      abb93(53)=abb93(24)*abb93(52)
      abb93(54)=abb93(16)*abb93(29)
      abb93(53)=abb93(53)+abb93(54)
      abb93(54)=abb93(6)**2
      abb93(53)=abb93(54)*abb93(53)
      abb93(55)=spak1l6*spbl6k2
      abb93(56)=abb93(7)*spak2k7
      abb93(57)=-abb93(53)*abb93(56)*abb93(55)
      abb93(27)=abb93(51)+abb93(57)+abb93(45)+abb93(27)
      abb93(27)=spbl6k1*abb93(27)
      abb93(45)=abb93(16)*abb93(28)*abb93(17)
      abb93(28)=abb93(6)*abb93(28)*abb93(40)
      abb93(28)=abb93(45)+abb93(28)
      abb93(45)=mB**5
      abb93(51)=abb93(45)*abb93(28)
      abb93(57)=abb93(16)*spak1k2
      abb93(57)=abb93(40)+abb93(57)
      abb93(45)=abb93(35)*abb93(57)*abb93(45)*abb93(9)**3
      abb93(57)=mB**4
      abb93(28)=abb93(11)*abb93(57)*abb93(28)
      abb93(28)=abb93(45)+abb93(28)+abb93(51)
      abb93(45)=es12*spak2k7
      abb93(51)=abb93(45)*abb93(10)
      abb93(58)=-abb93(28)*abb93(51)
      abb93(59)=-abb93(9)*abb93(16)
      abb93(59)=abb93(59)-abb93(26)
      abb93(60)=mB**2
      abb93(61)=abb93(60)*abb93(6)
      abb93(62)=abb93(49)*abb93(61)
      abb93(63)=abb93(11)*abb93(59)*abb93(62)
      abb93(64)=abb93(9)*mB
      abb93(65)=abb93(64)*spak1k2
      abb93(66)=-abb93(65)*abb93(16)
      abb93(67)=abb93(25)*mB
      abb93(68)=abb93(24)*abb93(67)
      abb93(69)=abb93(68)*spak1k2
      abb93(66)=abb93(66)-abb93(69)
      abb93(69)=abb93(66)*spbl6l5
      abb93(70)=-spak1l6*abb93(69)
      abb93(50)=abb93(70)+abb93(63)+abb93(50)
      abb93(50)=spbl6k1*abb93(50)
      abb93(70)=abb93(31)*abb93(10)
      abb93(71)=spbl6l5*es12
      abb93(72)=-abb93(71)*abb93(70)
      abb93(50)=abb93(72)+abb93(50)
      abb93(50)=spal6k7*abb93(50)
      abb93(72)=-abb93(31)*abb93(44)
      abb93(73)=abb93(66)*abb93(42)
      abb93(74)=-spak1l6*abb93(73)
      abb93(63)=spal5k7*abb93(63)
      abb93(63)=abb93(63)+abb93(72)+abb93(74)
      abb93(63)=spbl5k1*abb93(63)
      abb93(72)=spak1k2*abb93(26)
      abb93(74)=spak1k2*abb93(9)
      abb93(75)=abb93(16)*abb93(74)
      abb93(72)=abb93(72)+abb93(75)
      abb93(57)=abb93(11)*abb93(72)*abb93(57)*abb93(54)
      abb93(72)=-es12*abb93(56)*abb93(57)
      abb93(27)=abb93(63)+abb93(50)+abb93(58)+abb93(72)+abb93(27)
      abb93(27)=8.0_ki*abb93(27)
      abb93(17)=abb93(60)*abb93(17)
      abb93(50)=abb93(9)*abb93(17)
      abb93(58)=abb93(50)*abb93(16)
      abb93(63)=abb93(26)*abb93(17)
      abb93(58)=abb93(63)+abb93(58)
      abb93(63)=2.0_ki*abb93(11)
      abb93(72)=abb93(58)*abb93(63)
      abb93(75)=abb93(72)+abb93(21)
      abb93(75)=abb93(75)*spak2k7
      abb93(76)=abb93(69)*spal6k7
      abb93(77)=abb93(12)*spak3k4
      abb93(23)=abb93(23)*abb93(77)
      abb93(23)=abb93(16)+abb93(23)
      abb93(78)=spbl6l5*abb93(11)
      abb93(79)=abb93(78)*spak1k7
      abb93(80)=abb93(23)*abb93(79)
      abb93(37)=-abb93(75)-abb93(76)+abb93(80)+abb93(37)
      abb93(37)=16.0_ki*abb93(37)
      abb93(14)=abb93(14)*abb93(22)
      abb93(13)=abb93(13)*spbk3k2
      abb93(13)=abb93(13)-abb93(14)
      abb93(14)=-spak4k7*abb93(13)
      abb93(22)=-abb93(50)*abb93(14)
      abb93(75)=abb93(1)*c4*abb93(3)**2
      abb93(76)=spbk3k2*abb93(75)
      abb93(81)=abb93(76)*abb93(25)
      abb93(82)=abb93(81)*spak4k7
      abb93(83)=abb93(82)*abb93(17)
      abb93(22)=abb93(22)+abb93(83)
      abb93(22)=abb93(22)*abb93(63)
      abb93(83)=-abb93(20)*abb93(14)
      abb93(84)=abb93(82)*abb93(19)
      abb93(22)=abb93(22)-abb93(83)-abb93(84)
      abb93(22)=abb93(22)*es12
      abb93(83)=abb93(64)*spak4k7
      abb93(84)=-abb93(83)*abb93(13)
      abb93(85)=abb93(67)*abb93(76)
      abb93(86)=abb93(85)*spak4k7
      abb93(84)=abb93(84)-abb93(86)
      abb93(86)=abb93(84)*abb93(71)
      abb93(87)=abb93(12)*spak4k7
      abb93(88)=abb93(76)*abb93(87)
      abb93(88)=abb93(88)-abb93(14)
      abb93(89)=abb93(78)*spbl6k2
      abb93(90)=abb93(88)*abb93(89)
      abb93(86)=abb93(86)+abb93(90)
      abb93(86)=abb93(86)*spak1l6
      abb93(90)=-abb93(17)*abb93(14)
      abb93(91)=abb93(61)*abb93(33)
      abb93(92)=abb93(76)*spak4k7
      abb93(93)=abb93(91)*abb93(92)
      abb93(90)=abb93(90)+abb93(93)
      abb93(90)=abb93(90)*abb93(63)
      abb93(93)=-abb93(19)*abb93(14)
      abb93(52)=abb93(52)*abb93(6)
      abb93(94)=abb93(52)*abb93(92)
      abb93(90)=abb93(90)-abb93(93)-abb93(94)
      abb93(90)=abb93(90)*spbl6k2
      abb93(93)=abb93(60)*abb93(74)
      abb93(94)=-abb93(93)*abb93(14)
      abb93(95)=abb93(60)*spak1k2
      abb93(82)=abb93(82)*abb93(95)
      abb93(82)=abb93(94)+abb93(82)
      abb93(94)=abb93(63)*spbl5k2
      abb93(82)=abb93(82)*abb93(94)
      abb93(96)=spal5l6*spbl6l5*spbl5k2
      abb93(97)=abb93(96)*abb93(84)*spak1k2
      abb93(98)=spak1l5*abb93(78)*spbl5k2
      abb93(88)=abb93(98)*abb93(88)
      abb93(99)=-abb93(30)*abb93(14)
      abb93(100)=abb93(34)*abb93(92)
      abb93(99)=abb93(99)+abb93(100)
      abb93(100)=spak2l5*abb93(10)*spbl5k2**2
      abb93(101)=abb93(100)*abb93(99)
      abb93(22)=abb93(86)-abb93(82)-abb93(90)+abb93(97)+abb93(88)+abb93(22)-abb&
      &93(101)
      abb93(82)=abb93(35)*es12
      abb93(86)=abb93(99)*abb93(82)
      abb93(86)=abb93(86)+abb93(22)
      abb93(86)=16.0_ki*abb93(86)
      abb93(28)=-spak2k7*abb93(28)
      abb93(88)=spal5k7*spbl6l5
      abb93(88)=abb93(88)-abb93(42)
      abb93(90)=abb93(21)*abb93(88)
      abb93(97)=-es12*spbl5k2*abb93(99)
      abb93(60)=abb93(59)*abb93(60)
      abb93(99)=-abb93(60)*abb93(79)
      abb93(28)=abb93(99)+abb93(90)+abb93(97)+abb93(28)
      abb93(28)=abb93(10)*abb93(28)
      abb93(57)=-spak2k7*abb93(57)
      abb93(90)=abb93(23)*abb93(61)
      abb93(79)=abb93(90)*abb93(79)
      abb93(57)=abb93(57)+abb93(79)
      abb93(57)=abb93(7)*abb93(57)
      abb93(79)=abb93(21)*abb93(7)
      abb93(70)=abb93(79)+abb93(70)
      abb93(79)=-spal6k7*spbl6l5*abb93(70)
      abb93(22)=abb93(79)+abb93(57)+abb93(28)-abb93(22)
      abb93(22)=16.0_ki*abb93(22)
      abb93(28)=3.0_ki*abb93(21)+abb93(72)
      abb93(28)=spak2k7*abb93(28)
      abb93(57)=-abb93(39)*abb93(88)
      abb93(72)=abb93(56)*spbl6k2
      abb93(53)=-abb93(53)*abb93(72)
      abb93(66)=-spbl5k1*spak1k7*abb93(66)
      abb93(28)=abb93(66)+abb93(53)+abb93(28)-abb93(80)+abb93(57)
      abb93(28)=16.0_ki*abb93(28)
      abb93(53)=abb93(50)*abb93(13)
      abb93(57)=abb93(17)*abb93(81)
      abb93(53)=abb93(57)+abb93(53)
      abb93(53)=abb93(53)*abb93(63)
      abb93(57)=abb93(20)*abb93(13)
      abb93(66)=abb93(81)*abb93(19)
      abb93(53)=-abb93(53)+abb93(66)+abb93(57)
      abb93(57)=abb93(53)*es12
      abb93(66)=-abb93(64)*abb93(13)
      abb93(79)=abb93(66)-abb93(85)
      abb93(80)=abb93(71)*abb93(79)
      abb93(88)=abb93(76)*abb93(12)
      abb93(88)=abb93(88)+abb93(13)
      abb93(97)=abb93(88)*abb93(89)
      abb93(80)=abb93(80)+abb93(97)
      abb93(80)=abb93(80)*spak1l6
      abb93(97)=-abb93(17)*abb93(13)
      abb93(99)=abb93(91)*abb93(76)
      abb93(97)=abb93(97)-abb93(99)
      abb93(97)=abb93(97)*abb93(63)
      abb93(99)=-abb93(19)*abb93(13)
      abb93(101)=abb93(52)*abb93(76)
      abb93(97)=-abb93(97)+abb93(99)-abb93(101)
      abb93(99)=abb93(97)*spbl6k2
      abb93(102)=-abb93(30)*abb93(13)
      abb93(103)=abb93(34)*abb93(76)
      abb93(102)=abb93(102)-abb93(103)
      abb93(103)=abb93(102)*abb93(82)
      abb93(104)=-abb93(93)*abb93(13)
      abb93(105)=abb93(95)*abb93(81)
      abb93(104)=abb93(104)-abb93(105)
      abb93(104)=abb93(104)*abb93(94)
      abb93(57)=-abb93(80)+abb93(103)+abb93(99)+abb93(57)-abb93(104)
      abb93(80)=-abb93(102)*abb93(100)
      abb93(99)=-abb93(88)*abb93(98)
      abb93(103)=-abb93(65)*abb93(13)
      abb93(105)=abb93(85)*spak1k2
      abb93(103)=abb93(103)-abb93(105)
      abb93(105)=-abb93(103)*abb93(96)
      abb93(80)=abb93(105)+abb93(99)+abb93(80)+abb93(57)
      abb93(80)=spak2k4*abb93(80)
      abb93(99)=-spak3k4*abb93(13)
      abb93(105)=abb93(30)*abb93(99)
      abb93(33)=abb93(76)*abb93(33)*spak3k4
      abb93(106)=-abb93(32)*abb93(33)
      abb93(105)=abb93(106)+abb93(105)
      abb93(105)=spak2l5*abb93(105)*abb93(35)
      abb93(106)=abb93(99)*abb93(9)
      abb93(81)=abb93(81)*spak3k4
      abb93(106)=abb93(106)-abb93(81)
      abb93(107)=-abb93(29)*abb93(106)
      abb93(108)=abb93(93)*abb93(99)
      abb93(109)=-abb93(95)*abb93(81)
      abb93(108)=abb93(109)+abb93(108)
      abb93(108)=abb93(108)*abb93(63)
      abb93(77)=abb93(76)*abb93(77)
      abb93(77)=abb93(77)-abb93(99)
      abb93(109)=abb93(77)*abb93(78)
      abb93(110)=spak1l5*abb93(109)
      abb93(65)=-abb93(65)*abb93(99)
      abb93(85)=abb93(85)*spak3k4
      abb93(111)=abb93(85)*spak1k2
      abb93(65)=abb93(65)+abb93(111)
      abb93(111)=abb93(65)*spbl6l5
      abb93(112)=-spal5l6*abb93(111)
      abb93(105)=abb93(112)+abb93(110)+abb93(105)+abb93(108)+abb93(107)
      abb93(105)=spbl5k3*abb93(105)
      abb93(108)=-abb93(19)*abb93(99)
      abb93(110)=abb93(17)*abb93(99)
      abb93(112)=-abb93(61)*abb93(33)
      abb93(110)=abb93(112)+abb93(110)
      abb93(110)=abb93(110)*abb93(63)
      abb93(107)=-abb93(107)*abb93(35)
      abb93(109)=spak1l6*abb93(109)
      abb93(101)=spak3k4*abb93(101)
      abb93(101)=abb93(109)+abb93(107)+abb93(110)+abb93(101)+abb93(108)
      abb93(101)=spbl6k3*abb93(101)
      abb93(74)=abb93(35)*abb93(18)*abb93(77)*abb93(74)**2
      abb93(47)=abb93(47)*abb93(99)
      abb93(46)=-abb93(46)*abb93(81)
      abb93(46)=abb93(46)+abb93(47)
      abb93(46)=abb93(49)*abb93(46)
      abb93(47)=-abb93(63)*abb93(62)*abb93(106)
      abb93(49)=-spak1l6*abb93(111)
      abb93(46)=abb93(49)+abb93(74)+abb93(47)+abb93(46)
      abb93(46)=spbk3k1*abb93(46)
      abb93(29)=-abb93(29)*abb93(59)
      abb93(47)=-abb93(93)*abb93(16)
      abb93(26)=-abb93(26)*abb93(95)
      abb93(26)=abb93(26)+abb93(47)
      abb93(26)=abb93(11)*abb93(26)
      abb93(26)=abb93(26)+abb93(29)
      abb93(26)=abb93(10)*abb93(26)
      abb93(29)=abb93(19)*abb93(16)
      abb93(47)=-abb93(17)*abb93(16)
      abb93(40)=-abb93(61)*abb93(40)
      abb93(40)=abb93(40)+abb93(47)
      abb93(40)=abb93(11)*abb93(40)
      abb93(47)=abb93(24)*abb93(52)
      abb93(29)=abb93(40)+abb93(47)+abb93(29)
      abb93(29)=abb93(7)*abb93(29)
      abb93(26)=abb93(29)+abb93(26)
      abb93(26)=spbl6l5*abb93(26)
      abb93(26)=abb93(46)+abb93(101)+abb93(105)+abb93(80)+abb93(26)
      abb93(26)=8.0_ki*abb93(26)
      abb93(21)=abb93(21)*abb93(72)
      abb93(29)=abb93(31)*spak2k7
      abb93(40)=spal5k7*abb93(69)
      abb93(21)=abb93(40)-abb93(73)+abb93(29)+abb93(21)
      abb93(21)=8.0_ki*abb93(21)
      abb93(29)=spak3k7*abb93(57)
      abb93(40)=spak4k7*abb93(75)
      abb93(25)=abb93(40)*abb93(25)
      abb93(46)=abb93(25)*abb93(17)
      abb93(47)=-spak4k7*abb93(15)
      abb93(49)=abb93(47)*abb93(50)
      abb93(46)=abb93(46)+abb93(49)
      abb93(46)=abb93(46)*abb93(63)
      abb93(49)=abb93(25)*abb93(19)
      abb93(20)=abb93(47)*abb93(20)
      abb93(20)=abb93(46)-abb93(49)-abb93(20)
      abb93(20)=abb93(20)*es12
      abb93(17)=abb93(47)*abb93(17)
      abb93(46)=abb93(91)*abb93(40)
      abb93(17)=abb93(46)+abb93(17)
      abb93(17)=abb93(17)*abb93(63)
      abb93(19)=abb93(47)*abb93(19)
      abb93(46)=abb93(52)*abb93(40)
      abb93(17)=abb93(17)-abb93(46)-abb93(19)
      abb93(17)=abb93(17)*spbl6k2
      abb93(19)=abb93(87)*abb93(75)
      abb93(19)=abb93(19)+abb93(47)
      abb93(46)=abb93(19)*abb93(89)
      abb93(49)=-abb93(83)*abb93(15)
      abb93(50)=abb93(40)*abb93(67)
      abb93(49)=abb93(49)+abb93(50)
      abb93(50)=abb93(49)*abb93(71)
      abb93(46)=abb93(46)-abb93(50)
      abb93(46)=abb93(46)*spak1l6
      abb93(50)=abb93(47)*abb93(93)
      abb93(25)=abb93(25)*abb93(95)
      abb93(25)=abb93(25)+abb93(50)
      abb93(25)=abb93(25)*abb93(94)
      abb93(30)=abb93(30)*abb93(47)
      abb93(34)=abb93(34)*abb93(40)
      abb93(30)=abb93(34)+abb93(30)
      abb93(34)=abb93(30)*abb93(82)
      abb93(17)=-abb93(20)+abb93(17)-abb93(34)+abb93(25)-abb93(46)
      abb93(20)=spbk4k2*abb93(17)
      abb93(25)=-spak3k7*abb93(102)
      abb93(34)=spbk4k2*abb93(30)
      abb93(25)=abb93(25)+abb93(34)
      abb93(25)=abb93(25)*abb93(100)
      abb93(34)=-spak3k7*abb93(88)
      abb93(46)=-spbk4k2*abb93(19)
      abb93(34)=abb93(34)+abb93(46)
      abb93(34)=abb93(34)*abb93(98)
      abb93(46)=-spak3k7*abb93(103)
      abb93(50)=abb93(49)*spak1k2
      abb93(52)=spbk4k2*abb93(50)
      abb93(46)=abb93(46)+abb93(52)
      abb93(46)=abb93(46)*abb93(96)
      abb93(20)=abb93(46)+abb93(34)+abb93(25)+abb93(29)+abb93(20)
      abb93(20)=8.0_ki*abb93(20)
      abb93(17)=-spbk4k3*abb93(17)
      abb93(25)=-abb93(102)*abb93(35)
      abb93(25)=abb93(25)-abb93(53)
      abb93(25)=abb93(45)*abb93(25)
      abb93(29)=spbl6k2*spak2k7
      abb93(34)=-abb93(97)*abb93(29)
      abb93(35)=abb93(45)*abb93(79)
      abb93(46)=spbl6l5*abb93(35)
      abb93(52)=abb93(88)*abb93(78)*abb93(29)
      abb93(46)=abb93(46)+abb93(52)
      abb93(46)=spak1l6*abb93(46)
      abb93(52)=spak2k7*abb93(102)
      abb93(30)=-spbk4k3*abb93(30)
      abb93(30)=abb93(52)+abb93(30)
      abb93(30)=abb93(30)*abb93(100)
      abb93(52)=spak2k7*abb93(88)
      abb93(19)=spbk4k3*abb93(19)
      abb93(19)=abb93(52)+abb93(19)
      abb93(19)=abb93(19)*abb93(98)
      abb93(52)=spak2k7*abb93(103)
      abb93(50)=-spbk4k3*abb93(50)
      abb93(50)=abb93(52)+abb93(50)
      abb93(50)=abb93(50)*abb93(96)
      abb93(52)=spak2k7*abb93(104)
      abb93(17)=abb93(50)+abb93(19)+abb93(30)+abb93(17)+abb93(46)+abb93(34)+abb&
      &93(52)+abb93(25)
      abb93(17)=8.0_ki*abb93(17)
      abb93(19)=-spak2k7*abb93(48)
      abb93(25)=-abb93(41)*abb93(16)
      abb93(12)=abb93(12)*mB
      abb93(30)=abb93(12)*abb93(6)
      abb93(24)=abb93(30)*abb93(24)
      abb93(24)=abb93(25)-abb93(24)
      abb93(25)=-abb93(24)*abb93(42)
      abb93(34)=abb93(24)*spal5k7
      abb93(46)=spbl6l5*abb93(34)
      abb93(19)=abb93(46)+abb93(25)+abb93(19)
      abb93(19)=spak1l6*abb93(19)
      abb93(18)=abb93(56)*abb93(23)*abb93(54)*abb93(18)
      abb93(25)=-abb93(55)*abb93(18)
      abb93(46)=abb93(58)*abb93(11)
      abb93(50)=spal6k7*abb93(46)
      abb93(19)=abb93(50)+abb93(25)+abb93(19)
      abb93(19)=8.0_ki*abb93(19)
      abb93(25)=abb93(24)*spak1k7
      abb93(50)=-16.0_ki*abb93(25)
      abb93(36)=abb93(46)-abb93(36)
      abb93(36)=spal5k7*abb93(36)
      abb93(32)=-abb93(32)*abb93(23)
      abb93(44)=-abb93(32)*abb93(44)
      abb93(31)=-spal6k7*abb93(31)
      abb93(31)=abb93(36)+abb93(44)+abb93(31)
      abb93(31)=8.0_ki*abb93(31)
      abb93(16)=-abb93(64)*abb93(16)
      abb93(16)=abb93(16)-abb93(68)
      abb93(36)=abb93(16)*spak1k7
      abb93(44)=16.0_ki*abb93(36)
      abb93(52)=abb93(84)*spbl5k2
      abb93(53)=abb93(52)*spak1l5
      abb93(54)=abb93(84)*abb93(55)
      abb93(53)=abb93(53)+abb93(54)
      abb93(54)=16.0_ki*abb93(53)
      abb93(43)=abb93(32)*abb93(43)
      abb93(57)=-abb93(7)*spak1k7*abb93(48)
      abb93(43)=abb93(57)+abb93(43)-abb93(53)
      abb93(43)=16.0_ki*abb93(43)
      abb93(53)=-32.0_ki*abb93(36)
      abb93(57)=abb93(79)*spbl5k2
      abb93(58)=abb93(57)*spak2k4
      abb93(59)=-spak3k4*abb93(66)
      abb93(59)=abb93(59)+abb93(85)
      abb93(61)=abb93(59)*spbl5k3
      abb93(58)=abb93(58)+abb93(61)
      abb93(61)=-spak1l5*abb93(58)
      abb93(62)=abb93(55)*abb93(79)
      abb93(63)=-spak2k4*abb93(62)
      abb93(59)=-spbl6k3*spak1l6*abb93(59)
      abb93(59)=abb93(59)+abb93(63)+abb93(61)-abb93(70)
      abb93(59)=8.0_ki*abb93(59)
      abb93(61)=abb93(57)*spak3k7
      abb93(63)=abb93(49)*spbl5k2
      abb93(64)=abb93(63)*spbk4k2
      abb93(61)=abb93(61)-abb93(64)
      abb93(64)=-spak1l5*abb93(61)
      abb93(66)=-spak3k7*abb93(62)
      abb93(55)=abb93(49)*abb93(55)
      abb93(67)=spbk4k2*abb93(55)
      abb93(64)=abb93(64)+abb93(66)+abb93(67)
      abb93(64)=8.0_ki*abb93(64)
      abb93(57)=abb93(57)*spak2k7
      abb93(63)=abb93(63)*spbk4k3
      abb93(57)=abb93(57)-abb93(63)
      abb93(63)=spak1l5*abb93(57)
      abb93(62)=spak2k7*abb93(62)
      abb93(55)=-spbk4k3*abb93(55)
      abb93(55)=abb93(63)+abb93(62)+abb93(55)
      abb93(55)=8.0_ki*abb93(55)
      abb93(62)=8.0_ki*spak1k7
      abb93(46)=-abb93(46)*abb93(62)
      abb93(62)=-es12*abb93(18)
      abb93(63)=-spal6k7*spbl6k1
      abb93(66)=-spbl5k1*spal5k7
      abb93(63)=abb93(66)+abb93(63)
      abb93(39)=abb93(39)*abb93(63)
      abb93(51)=-abb93(48)*abb93(51)
      abb93(39)=abb93(51)+abb93(62)+abb93(39)
      abb93(39)=8.0_ki*abb93(39)
      abb93(51)=16.0_ki*spak2k7
      abb93(24)=abb93(51)*abb93(24)
      abb93(14)=-abb93(41)*abb93(14)
      abb93(62)=abb93(30)*abb93(92)
      abb93(14)=abb93(14)+abb93(62)
      abb93(62)=spak2l6*spbl6k2
      abb93(63)=-abb93(62)+es12
      abb93(14)=abb93(14)*abb93(63)
      abb93(63)=spak4k7*mB
      abb93(66)=-abb93(63)*abb93(13)
      abb93(67)=abb93(92)*abb93(12)
      abb93(66)=abb93(66)-abb93(67)
      abb93(67)=abb93(66)*spbl5k2
      abb93(14)=abb93(67)+abb93(14)
      abb93(14)=16.0_ki*abb93(14)
      abb93(67)=-abb93(41)*abb93(13)
      abb93(68)=abb93(30)*abb93(76)
      abb93(67)=abb93(67)-abb93(68)
      abb93(69)=abb93(67)*es12
      abb93(13)=-mB*abb93(13)
      abb93(70)=abb93(76)*abb93(12)
      abb93(13)=abb93(13)-abb93(70)
      abb93(71)=abb93(13)*spbl5k2
      abb93(69)=abb93(69)-abb93(71)
      abb93(73)=-abb93(67)*abb93(62)
      abb93(73)=abb93(69)+abb93(73)
      abb93(73)=spak2k4*abb93(73)
      abb93(70)=abb93(70)*spak3k4
      abb93(74)=abb93(99)*mB
      abb93(70)=abb93(70)-abb93(74)
      abb93(74)=-spbl5k3*abb93(70)
      abb93(75)=abb93(41)*abb93(99)
      abb93(68)=-spak3k4*abb93(68)
      abb93(68)=abb93(68)+abb93(75)
      abb93(68)=spbl6k3*spak2l6*abb93(68)
      abb93(38)=-abb93(38)*abb93(99)
      abb93(33)=abb93(41)*abb93(33)
      abb93(33)=abb93(33)+abb93(38)
      abb93(33)=spbk3k1*abb93(33)
      abb93(33)=abb93(33)+abb93(68)+abb93(74)+abb93(73)
      abb93(33)=8.0_ki*abb93(33)
      abb93(38)=spak3k7*abb93(69)
      abb93(41)=abb93(41)*abb93(47)
      abb93(30)=abb93(30)*abb93(40)
      abb93(30)=abb93(30)+abb93(41)
      abb93(41)=abb93(30)*es12
      abb93(15)=-abb93(63)*abb93(15)
      abb93(12)=abb93(40)*abb93(12)
      abb93(12)=abb93(15)+abb93(12)
      abb93(15)=abb93(12)*spbl5k2
      abb93(15)=abb93(41)-abb93(15)
      abb93(40)=-spbk4k2*abb93(15)
      abb93(41)=-spak3k7*abb93(67)
      abb93(47)=spbk4k2*abb93(30)
      abb93(41)=abb93(41)+abb93(47)
      abb93(41)=abb93(41)*abb93(62)
      abb93(38)=abb93(41)+abb93(38)+abb93(40)
      abb93(38)=8.0_ki*abb93(38)
      abb93(15)=spbk4k3*abb93(15)
      abb93(40)=abb93(67)*abb93(29)
      abb93(30)=-spbk4k3*spbl6k2*abb93(30)
      abb93(30)=abb93(40)+abb93(30)
      abb93(30)=spak2l6*abb93(30)
      abb93(40)=spak2k7*abb93(71)
      abb93(41)=-abb93(67)*abb93(45)
      abb93(15)=abb93(30)+abb93(15)+abb93(40)+abb93(41)
      abb93(15)=8.0_ki*abb93(15)
      abb93(30)=abb93(16)*spal6k7
      abb93(30)=abb93(30)-abb93(34)
      abb93(30)=8.0_ki*abb93(30)
      abb93(25)=8.0_ki*abb93(25)
      abb93(34)=spak2k7*abb93(60)
      abb93(40)=-abb93(90)*abb93(72)
      abb93(41)=abb93(23)*abb93(42)
      abb93(34)=abb93(41)+abb93(34)+abb93(40)
      abb93(34)=abb93(11)*abb93(34)
      abb93(23)=-spal5k7*abb93(23)*abb93(78)
      abb93(23)=abb93(23)+abb93(34)
      abb93(23)=8.0_ki*abb93(23)
      abb93(16)=abb93(51)*abb93(16)
      abb93(34)=abb93(52)*spak2l5
      abb93(40)=abb93(84)*es12
      abb93(41)=abb93(66)*spbl6k2
      abb93(34)=abb93(41)+abb93(34)-abb93(40)
      abb93(40)=16.0_ki*abb93(34)
      abb93(41)=abb93(10)*spak2k7
      abb93(32)=abb93(41)*abb93(32)
      abb93(42)=abb93(48)*abb93(56)
      abb93(32)=abb93(32)-abb93(42)
      abb93(34)=abb93(34)-2.0_ki*abb93(32)
      abb93(34)=16.0_ki*abb93(34)
      abb93(42)=spak2l5*abb93(58)
      abb93(45)=abb93(79)*es12
      abb93(47)=abb93(13)*spbl6k2
      abb93(45)=abb93(45)-abb93(47)
      abb93(47)=-spak2k4*abb93(45)
      abb93(51)=spbl6k3*abb93(70)
      abb93(52)=-spbk3k1*abb93(65)
      abb93(42)=abb93(52)+abb93(51)+abb93(47)+abb93(42)
      abb93(42)=8.0_ki*abb93(42)
      abb93(45)=-spak3k7*abb93(45)
      abb93(12)=abb93(12)*spbl6k2
      abb93(47)=abb93(49)*es12
      abb93(12)=abb93(12)-abb93(47)
      abb93(47)=-spbk4k2*abb93(12)
      abb93(49)=spak2l5*abb93(61)
      abb93(45)=abb93(49)+abb93(45)+abb93(47)
      abb93(45)=8.0_ki*abb93(45)
      abb93(12)=spbk4k3*abb93(12)
      abb93(47)=-spak2l5*abb93(57)
      abb93(13)=-abb93(13)*abb93(29)
      abb93(12)=abb93(47)+abb93(12)+abb93(35)+abb93(13)
      abb93(12)=8.0_ki*abb93(12)
      abb93(13)=8.0_ki*abb93(36)
      abb93(29)=-abb93(48)*abb93(41)
      abb93(18)=abb93(29)-abb93(18)
      abb93(18)=8.0_ki*abb93(18)
      abb93(29)=8.0_ki*abb93(32)
      R2d93=0.0_ki
      rat2 = rat2 + R2d93
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='93' value='", &
          & R2d93, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd93h7