module     p0_dbaru_epnebbbarg_abbrevd21h7
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh7
   implicit none
   private
   complex(ki), dimension(148), public :: abb21
   complex(ki), public :: R2d21
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
      abb21(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb21(2)=1.0_ki/(-es71+es56-es567+es234)
      abb21(3)=NC**(-1)
      abb21(4)=sqrt2**(-1)
      abb21(5)=es234**(-1)
      abb21(6)=es56**(-1)
      abb21(7)=spak2l5**(-1)
      abb21(8)=spbl5k2**(-1)
      abb21(9)=spbk7k2**(-1)
      abb21(10)=spak2l6**(-1)
      abb21(11)=spbl6k2**(-1)
      abb21(12)=spbk3k2**2
      abb21(13)=TR*gW
      abb21(13)=abb21(6)*abb21(13)**2*abb21(9)*i_*CVDU*abb21(5)*abb21(4)*abb21(&
      &2)*abb21(1)
      abb21(14)=abb21(13)*spak3k4
      abb21(15)=abb21(12)*abb21(14)
      abb21(16)=mB**3
      abb21(17)=abb21(16)*spak1k2
      abb21(18)=abb21(17)*abb21(15)
      abb21(19)=abb21(18)*c1
      abb21(20)=abb21(7)**2
      abb21(21)=abb21(19)*abb21(20)
      abb21(22)=abb21(15)*c4
      abb21(23)=abb21(22)*abb21(17)
      abb21(24)=abb21(23)*abb21(20)
      abb21(25)=abb21(24)*abb21(3)
      abb21(21)=abb21(21)-abb21(25)
      abb21(21)=abb21(21)*abb21(3)
      abb21(25)=NC*c1
      abb21(26)=abb21(18)*abb21(25)
      abb21(27)=abb21(26)*abb21(20)
      abb21(27)=abb21(27)-abb21(24)
      abb21(28)=abb21(21)-abb21(27)
      abb21(29)=abb21(8)*spbl6k2
      abb21(30)=abb21(29)*spak2k7
      abb21(28)=abb21(28)*abb21(30)
      abb21(31)=abb21(10)**2
      abb21(32)=abb21(19)*abb21(31)
      abb21(33)=abb21(23)*abb21(31)
      abb21(34)=abb21(33)*abb21(3)
      abb21(32)=abb21(32)-abb21(34)
      abb21(32)=abb21(32)*abb21(3)
      abb21(34)=abb21(26)*abb21(31)
      abb21(34)=abb21(34)-abb21(33)
      abb21(35)=abb21(32)-abb21(34)
      abb21(36)=abb21(11)*spbl5k2
      abb21(37)=abb21(36)*spak2k7
      abb21(35)=abb21(35)*abb21(37)
      abb21(28)=abb21(28)+abb21(35)
      abb21(12)=abb21(12)*spak3k4
      abb21(35)=abb21(13)*mB
      abb21(38)=abb21(35)*c4
      abb21(39)=abb21(12)*abb21(38)
      abb21(40)=abb21(39)*abb21(3)
      abb21(41)=abb21(35)*c1
      abb21(12)=abb21(12)*abb21(41)
      abb21(40)=abb21(40)-abb21(12)
      abb21(42)=abb21(40)*abb21(3)
      abb21(43)=spak1k2*abb21(10)
      abb21(44)=-abb21(43)*abb21(42)
      abb21(12)=abb21(12)*NC
      abb21(45)=abb21(12)*abb21(43)
      abb21(46)=abb21(39)*abb21(43)
      abb21(45)=abb21(45)-abb21(46)
      abb21(47)=abb21(44)-abb21(45)
      abb21(48)=spbl5k1*spak1k7
      abb21(47)=abb21(47)*abb21(48)
      abb21(49)=spak1k2*abb21(7)
      abb21(50)=-abb21(49)*abb21(42)
      abb21(51)=abb21(12)*abb21(49)
      abb21(52)=abb21(39)*abb21(49)
      abb21(51)=abb21(51)-abb21(52)
      abb21(53)=abb21(50)-abb21(51)
      abb21(54)=spbl6k1*spak1k7
      abb21(53)=abb21(53)*abb21(54)
      abb21(55)=abb21(10)*abb21(7)
      abb21(23)=abb21(23)*abb21(55)
      abb21(56)=abb21(23)*abb21(3)
      abb21(19)=abb21(19)*abb21(55)
      abb21(19)=abb21(56)-abb21(19)
      abb21(19)=abb21(19)*abb21(3)
      abb21(26)=abb21(26)*abb21(55)
      abb21(26)=abb21(26)-abb21(23)
      abb21(56)=abb21(19)+abb21(26)
      abb21(56)=2.0_ki*abb21(56)
      abb21(57)=abb21(56)*spak2k7
      abb21(58)=abb21(44)+abb21(46)
      abb21(58)=abb21(58)*spbl6l5
      abb21(59)=abb21(12)*spbl6l5
      abb21(60)=abb21(59)*abb21(43)
      abb21(58)=abb21(58)-abb21(60)
      abb21(58)=abb21(58)*spal6k7
      abb21(61)=abb21(50)+abb21(52)
      abb21(61)=abb21(61)*spbl6l5
      abb21(62)=abb21(59)*abb21(49)
      abb21(61)=abb21(61)-abb21(62)
      abb21(61)=abb21(61)*spal5k7
      abb21(47)=-abb21(61)+abb21(58)+abb21(53)+abb21(47)+abb21(57)-abb21(28)
      abb21(53)=4.0_ki*abb21(47)
      abb21(57)=spak1l6*abb21(34)
      abb21(58)=3.0_ki*abb21(26)
      abb21(61)=-spak1l5*abb21(58)
      abb21(57)=abb21(57)+abb21(61)
      abb21(57)=spak2k7*abb21(57)
      abb21(61)=spak1l6*spbl6k2
      abb21(63)=abb21(26)*abb21(61)
      abb21(64)=2.0_ki*spak1l5
      abb21(65)=abb21(64)*spbl6k2
      abb21(66)=-abb21(27)*abb21(65)
      abb21(63)=abb21(63)+abb21(66)
      abb21(66)=abb21(8)*spak2k7
      abb21(63)=abb21(63)*abb21(66)
      abb21(67)=abb21(8)*abb21(26)
      abb21(68)=abb21(11)*abb21(34)
      abb21(67)=abb21(67)+abb21(68)
      abb21(68)=es12*spak1k7
      abb21(67)=abb21(67)*abb21(68)
      abb21(69)=spak1l6*abb21(45)
      abb21(70)=spak1l5*abb21(51)
      abb21(69)=abb21(69)+abb21(70)
      abb21(69)=abb21(69)*abb21(54)
      abb21(70)=abb21(11)*spak2k7
      abb21(71)=spak1l5*spbl5k2
      abb21(72)=abb21(70)*abb21(71)
      abb21(73)=-abb21(34)*abb21(72)
      abb21(74)=abb21(48)*spak1l5
      abb21(75)=abb21(45)*abb21(74)
      abb21(57)=abb21(75)+abb21(69)+abb21(67)+abb21(73)+abb21(57)+abb21(63)
      abb21(57)=spbl5k1*abb21(57)
      abb21(58)=-spak1l6*abb21(58)
      abb21(63)=spak1l5*abb21(27)
      abb21(58)=abb21(58)+abb21(63)
      abb21(58)=spak2k7*abb21(58)
      abb21(63)=2.0_ki*spak1l6
      abb21(67)=abb21(63)*spbl5k2
      abb21(69)=-abb21(34)*abb21(67)
      abb21(73)=abb21(26)*abb21(71)
      abb21(69)=abb21(69)+abb21(73)
      abb21(69)=abb21(69)*abb21(70)
      abb21(73)=abb21(8)*abb21(27)
      abb21(75)=abb21(11)*abb21(26)
      abb21(73)=abb21(73)+abb21(75)
      abb21(73)=abb21(73)*abb21(68)
      abb21(75)=abb21(66)*abb21(61)
      abb21(76)=-abb21(27)*abb21(75)
      abb21(77)=abb21(54)*spak1l6
      abb21(78)=abb21(51)*abb21(77)
      abb21(58)=abb21(78)+abb21(73)+abb21(69)+abb21(58)+abb21(76)
      abb21(58)=spbl6k1*abb21(58)
      abb21(69)=abb21(15)*abb21(16)
      abb21(73)=abb21(69)*abb21(25)
      abb21(76)=abb21(73)*abb21(55)
      abb21(78)=abb21(22)*abb21(16)
      abb21(79)=abb21(78)*abb21(55)
      abb21(76)=abb21(76)-abb21(79)
      abb21(80)=spak1k2**2
      abb21(81)=-abb21(80)*abb21(76)
      abb21(46)=abb21(46)*spbl6l5
      abb21(46)=abb21(46)-abb21(60)
      abb21(60)=-abb21(46)*abb21(63)
      abb21(52)=abb21(52)*spbl6l5
      abb21(52)=abb21(52)-abb21(62)
      abb21(62)=spak1l5*abb21(52)
      abb21(82)=abb21(73)*abb21(20)
      abb21(83)=abb21(78)*abb21(20)
      abb21(82)=abb21(82)-abb21(83)
      abb21(84)=-abb21(80)*abb21(82)
      abb21(85)=abb21(84)*abb21(29)
      abb21(60)=abb21(85)+abb21(62)+abb21(60)+abb21(81)
      abb21(60)=spbl6k1*abb21(60)
      abb21(62)=abb21(78)-abb21(73)
      abb21(85)=abb21(43)**2
      abb21(62)=abb21(85)*abb21(62)
      abb21(86)=-spak1l5*abb21(46)
      abb21(87)=abb21(81)*abb21(29)
      abb21(86)=abb21(87)+abb21(86)+abb21(62)
      abb21(86)=spbl5k1*abb21(86)
      abb21(23)=abb21(23)*spbl6l5
      abb21(87)=abb21(25)*spbl6l5
      abb21(18)=abb21(87)*abb21(18)
      abb21(88)=abb21(18)*abb21(55)
      abb21(23)=abb21(23)-abb21(88)
      abb21(88)=-abb21(8)*abb21(23)
      abb21(33)=-spbl6l5*abb21(33)
      abb21(89)=abb21(31)*abb21(18)
      abb21(33)=abb21(33)+abb21(89)
      abb21(33)=abb21(11)*abb21(33)
      abb21(33)=abb21(88)+abb21(33)
      abb21(88)=2.0_ki*es12
      abb21(33)=abb21(33)*abb21(88)
      abb21(33)=abb21(86)+abb21(33)+abb21(60)
      abb21(33)=spal6k7*abb21(33)
      abb21(46)=-spak1l6*abb21(46)
      abb21(60)=abb21(52)*abb21(64)
      abb21(86)=abb21(62)*abb21(36)
      abb21(46)=abb21(86)+abb21(60)+abb21(46)+abb21(81)
      abb21(46)=spbl5k1*abb21(46)
      abb21(52)=spak1l6*abb21(52)
      abb21(60)=abb21(81)*abb21(36)
      abb21(52)=abb21(60)+abb21(52)+abb21(84)
      abb21(52)=spbl6k1*abb21(52)
      abb21(24)=spbl6l5*abb21(24)
      abb21(18)=-abb21(20)*abb21(18)
      abb21(18)=abb21(24)+abb21(18)
      abb21(18)=abb21(8)*abb21(18)
      abb21(23)=abb21(11)*abb21(23)
      abb21(18)=abb21(18)+abb21(23)
      abb21(18)=abb21(18)*abb21(88)
      abb21(18)=abb21(46)+abb21(18)+abb21(52)
      abb21(18)=spal5k7*abb21(18)
      abb21(23)=mB**5
      abb21(15)=abb21(23)*abb21(15)
      abb21(24)=abb21(15)*abb21(25)
      abb21(46)=abb21(20)*abb21(43)
      abb21(52)=abb21(24)*abb21(46)
      abb21(22)=abb21(23)*abb21(22)
      abb21(23)=abb21(46)*abb21(22)
      abb21(52)=abb21(52)-abb21(23)
      abb21(60)=3.0_ki*spak2k7
      abb21(86)=-abb21(52)*abb21(60)
      abb21(89)=abb21(25)*spak1k2
      abb21(90)=abb21(15)*abb21(89)
      abb21(91)=abb21(7)**3
      abb21(92)=abb21(90)*abb21(91)
      abb21(93)=abb21(22)*spak1k2
      abb21(94)=abb21(93)*abb21(91)
      abb21(92)=abb21(92)-abb21(94)
      abb21(95)=-abb21(92)*abb21(30)
      abb21(86)=abb21(86)+abb21(95)
      abb21(86)=abb21(8)*abb21(86)
      abb21(95)=abb21(49)*abb21(31)
      abb21(24)=abb21(24)*abb21(95)
      abb21(22)=abb21(95)*abb21(22)
      abb21(24)=abb21(24)-abb21(22)
      abb21(60)=-abb21(24)*abb21(60)
      abb21(96)=abb21(10)**3
      abb21(90)=abb21(90)*abb21(96)
      abb21(93)=abb21(93)*abb21(96)
      abb21(90)=abb21(90)-abb21(93)
      abb21(97)=-abb21(90)*abb21(37)
      abb21(60)=abb21(60)+abb21(97)
      abb21(60)=abb21(11)*abb21(60)
      abb21(60)=abb21(86)+abb21(60)
      abb21(60)=abb21(60)*abb21(88)
      abb21(18)=abb21(18)+abb21(33)+abb21(57)+abb21(60)+abb21(58)
      abb21(18)=4.0_ki*abb21(18)
      abb21(33)=-abb21(7)*abb21(42)
      abb21(57)=abb21(39)*abb21(7)
      abb21(58)=abb21(57)+abb21(33)
      abb21(58)=abb21(58)*spbl6l5
      abb21(60)=abb21(59)*abb21(7)
      abb21(58)=abb21(58)-abb21(60)
      abb21(58)=abb21(58)*spak1l5
      abb21(42)=-abb21(10)*abb21(42)
      abb21(39)=abb21(39)*abb21(10)
      abb21(86)=abb21(39)+abb21(42)
      abb21(86)=abb21(86)*spbl6l5
      abb21(59)=abb21(59)*abb21(10)
      abb21(86)=abb21(86)-abb21(59)
      abb21(86)=abb21(86)*spak1l6
      abb21(58)=abb21(58)-abb21(86)
      abb21(56)=abb21(58)-abb21(56)
      abb21(56)=abb21(56)*spak2k7
      abb21(86)=abb21(44)+abb21(45)
      abb21(86)=abb21(86)*abb21(48)
      abb21(88)=abb21(50)+abb21(51)
      abb21(88)=abb21(88)*abb21(54)
      abb21(28)=-abb21(56)+abb21(86)+abb21(88)-abb21(28)
      abb21(28)=16.0_ki*abb21(28)
      abb21(56)=abb21(25)-c4
      abb21(13)=abb21(17)*abb21(13)*abb21(56)
      abb21(17)=-spbk3k2*abb21(13)
      abb21(56)=-abb21(31)*abb21(17)
      abb21(86)=abb21(56)*abb21(11)
      abb21(88)=spbl5k2*spak4k7
      abb21(97)=abb21(86)*abb21(88)
      abb21(98)=-abb21(20)*abb21(17)
      abb21(99)=abb21(98)*abb21(8)
      abb21(100)=spbl6k2*spak4k7
      abb21(101)=abb21(99)*abb21(100)
      abb21(102)=-abb21(55)*abb21(17)
      abb21(102)=2.0_ki*abb21(102)
      abb21(103)=abb21(102)*spak4k7
      abb21(35)=abb21(35)*spbk3k2
      abb21(104)=abb21(35)*abb21(7)
      abb21(105)=abb21(87)*abb21(104)
      abb21(106)=abb21(35)*c4
      abb21(107)=abb21(106)*abb21(7)
      abb21(108)=abb21(107)*spbl6l5
      abb21(108)=abb21(108)-abb21(105)
      abb21(109)=spak1l5*spak4k7
      abb21(110)=abb21(108)*abb21(109)
      abb21(111)=abb21(35)*abb21(10)
      abb21(112)=abb21(87)*abb21(111)
      abb21(113)=abb21(106)*abb21(10)
      abb21(114)=abb21(113)*spbl6l5
      abb21(114)=abb21(114)-abb21(112)
      abb21(115)=spak1l6*spak4k7
      abb21(116)=abb21(114)*abb21(115)
      abb21(97)=abb21(103)+abb21(116)-abb21(110)+abb21(97)+abb21(101)
      abb21(101)=3.0_ki*es12
      abb21(97)=abb21(97)*abb21(101)
      abb21(103)=spbl6k2**2
      abb21(99)=abb21(99)*abb21(103)
      abb21(110)=3.0_ki*spak4k7
      abb21(116)=abb21(99)*abb21(110)
      abb21(117)=abb21(107)*abb21(3)
      abb21(118)=abb21(104)*c1
      abb21(117)=abb21(117)-abb21(118)
      abb21(119)=abb21(117)*abb21(3)
      abb21(120)=abb21(119)-abb21(107)
      abb21(120)=abb21(120)*spbl6l5
      abb21(120)=abb21(120)+abb21(105)
      abb21(121)=abb21(64)*abb21(100)
      abb21(122)=abb21(121)*abb21(120)
      abb21(116)=abb21(116)+abb21(122)
      abb21(116)=abb21(116)*spak2l6
      abb21(122)=spbl5k2**2
      abb21(86)=abb21(86)*abb21(122)
      abb21(123)=abb21(86)*abb21(110)
      abb21(124)=abb21(106)*abb21(3)
      abb21(125)=abb21(124)*abb21(10)
      abb21(126)=abb21(111)*c1
      abb21(125)=abb21(125)-abb21(126)
      abb21(127)=abb21(125)*abb21(3)
      abb21(128)=abb21(127)-abb21(113)
      abb21(128)=abb21(128)*spbl6l5
      abb21(128)=abb21(128)+abb21(112)
      abb21(129)=abb21(63)*abb21(88)
      abb21(130)=abb21(129)*abb21(128)
      abb21(123)=abb21(123)-abb21(130)
      abb21(123)=abb21(123)*spak2l5
      abb21(130)=abb21(124)*abb21(43)
      abb21(126)=abb21(126)*spak1k2
      abb21(126)=abb21(130)-abb21(126)
      abb21(130)=2.0_ki*abb21(3)
      abb21(126)=abb21(126)*abb21(130)
      abb21(131)=abb21(43)*abb21(106)
      abb21(132)=abb21(126)+abb21(131)
      abb21(132)=abb21(132)*spbl6l5
      abb21(133)=abb21(112)*spak1k2
      abb21(132)=abb21(132)-abb21(133)
      abb21(134)=abb21(132)*abb21(88)
      abb21(135)=abb21(124)*abb21(49)
      abb21(118)=abb21(118)*spak1k2
      abb21(118)=abb21(135)-abb21(118)
      abb21(118)=abb21(118)*abb21(130)
      abb21(135)=abb21(49)*abb21(106)
      abb21(136)=abb21(118)+abb21(135)
      abb21(136)=abb21(136)*spbl6l5
      abb21(137)=abb21(105)*spak1k2
      abb21(136)=abb21(136)-abb21(137)
      abb21(138)=abb21(136)*abb21(100)
      abb21(134)=abb21(134)+abb21(138)
      abb21(134)=abb21(134)*spal5l6
      abb21(138)=-abb21(7)*abb21(17)
      abb21(139)=abb21(138)*abb21(100)
      abb21(17)=-abb21(10)*abb21(17)
      abb21(140)=abb21(17)*abb21(88)
      abb21(139)=abb21(139)+abb21(140)
      abb21(140)=abb21(35)*c1
      abb21(124)=abb21(140)-abb21(124)
      abb21(140)=abb21(124)*abb21(3)
      abb21(140)=abb21(140)+abb21(106)
      abb21(140)=abb21(140)*spbl6l5
      abb21(35)=abb21(87)*abb21(35)
      abb21(140)=abb21(140)-abb21(35)
      abb21(140)=2.0_ki*abb21(140)
      abb21(141)=abb21(88)*spak1l5
      abb21(142)=abb21(100)*spak1l6
      abb21(143)=abb21(141)-abb21(142)
      abb21(144)=-abb21(140)*abb21(143)
      abb21(97)=abb21(116)-abb21(97)+abb21(144)+9.0_ki*abb21(139)+abb21(123)-ab&
      &b21(134)
      abb21(116)=abb21(89)*abb21(111)
      abb21(123)=abb21(116)-abb21(131)
      abb21(134)=abb21(141)+abb21(142)
      abb21(139)=abb21(123)*abb21(134)
      abb21(141)=abb21(139)*spbl5k1
      abb21(142)=abb21(89)*abb21(104)
      abb21(144)=abb21(142)-abb21(135)
      abb21(145)=abb21(144)*abb21(134)
      abb21(146)=abb21(145)*spbl6k1
      abb21(141)=abb21(141)+abb21(97)+abb21(146)
      abb21(141)=8.0_ki*abb21(141)
      abb21(15)=abb21(15)*c1
      abb21(46)=-abb21(46)*abb21(15)
      abb21(23)=abb21(3)*abb21(23)
      abb21(23)=abb21(46)+abb21(23)
      abb21(23)=abb21(3)*abb21(23)
      abb21(23)=abb21(23)+abb21(52)
      abb21(46)=abb21(69)*abb21(55)
      abb21(52)=abb21(46)*c1
      abb21(146)=abb21(79)*abb21(3)
      abb21(52)=abb21(52)-abb21(146)
      abb21(52)=abb21(52)*abb21(3)
      abb21(79)=abb21(52)+abb21(79)
      abb21(79)=abb21(79)*spbl6l5
      abb21(46)=abb21(46)*abb21(87)
      abb21(46)=abb21(79)-abb21(46)
      abb21(79)=spak1l6*abb21(46)
      abb21(146)=abb21(78)*abb21(3)
      abb21(147)=abb21(69)*c1
      abb21(146)=abb21(146)-abb21(147)
      abb21(147)=abb21(146)*abb21(3)
      abb21(148)=-abb21(20)*abb21(147)
      abb21(83)=-abb21(83)-abb21(148)
      abb21(83)=spbl6l5*abb21(83)
      abb21(69)=abb21(87)*abb21(69)
      abb21(87)=abb21(20)*abb21(69)
      abb21(83)=abb21(83)+abb21(87)
      abb21(83)=spak1l5*abb21(83)
      abb21(23)=abb21(83)+3.0_ki*abb21(23)+abb21(79)
      abb21(23)=spak2k7*abb21(23)
      abb21(79)=abb21(15)*spak1k2
      abb21(83)=-abb21(91)*abb21(79)
      abb21(87)=abb21(3)*abb21(94)
      abb21(83)=abb21(83)+abb21(87)
      abb21(83)=abb21(3)*abb21(83)
      abb21(83)=abb21(83)+abb21(92)
      abb21(83)=abb21(83)*abb21(30)
      abb21(23)=abb21(23)+abb21(83)
      abb21(23)=abb21(8)*abb21(23)
      abb21(15)=-abb21(95)*abb21(15)
      abb21(22)=abb21(3)*abb21(22)
      abb21(15)=abb21(15)+abb21(22)
      abb21(15)=abb21(3)*abb21(15)
      abb21(15)=abb21(15)+abb21(24)
      abb21(22)=-abb21(31)*abb21(147)
      abb21(24)=abb21(78)*abb21(31)
      abb21(78)=abb21(24)+abb21(22)
      abb21(78)=spbl6l5*abb21(78)
      abb21(69)=-abb21(31)*abb21(69)
      abb21(69)=abb21(78)+abb21(69)
      abb21(69)=spak1l6*abb21(69)
      abb21(46)=-spak1l5*abb21(46)
      abb21(15)=abb21(46)+3.0_ki*abb21(15)+abb21(69)
      abb21(15)=spak2k7*abb21(15)
      abb21(46)=-abb21(96)*abb21(79)
      abb21(69)=abb21(3)*abb21(93)
      abb21(46)=abb21(46)+abb21(69)
      abb21(46)=abb21(3)*abb21(46)
      abb21(46)=abb21(46)+abb21(90)
      abb21(46)=abb21(46)*abb21(37)
      abb21(15)=abb21(15)+abb21(46)
      abb21(15)=abb21(11)*abb21(15)
      abb21(15)=abb21(23)+abb21(15)
      abb21(19)=abb21(19)-abb21(26)
      abb21(23)=abb21(19)*abb21(11)
      abb21(21)=abb21(21)+abb21(27)
      abb21(46)=abb21(21)*abb21(8)
      abb21(23)=abb21(23)-abb21(46)
      abb21(46)=2.0_ki*spak1k7
      abb21(69)=-abb21(23)*abb21(46)
      abb21(69)=abb21(69)-abb21(145)
      abb21(69)=spbl6k1*abb21(69)
      abb21(78)=abb21(19)*abb21(8)
      abb21(32)=abb21(32)+abb21(34)
      abb21(79)=abb21(32)*abb21(11)
      abb21(78)=abb21(78)-abb21(79)
      abb21(46)=-abb21(78)*abb21(46)
      abb21(46)=abb21(46)-abb21(139)
      abb21(46)=spbl5k1*abb21(46)
      abb21(15)=abb21(46)+abb21(69)-abb21(97)+2.0_ki*abb21(15)
      abb21(15)=8.0_ki*abb21(15)
      abb21(26)=-2.0_ki*abb21(26)+abb21(58)
      abb21(26)=spak2k7*abb21(26)
      abb21(27)=-abb21(27)*abb21(30)
      abb21(34)=-abb21(34)*abb21(37)
      abb21(46)=-abb21(51)*abb21(54)
      abb21(45)=-abb21(45)*abb21(48)
      abb21(51)=spal6k7*spbl6l5
      abb21(44)=abb21(44)*abb21(51)
      abb21(58)=spal5k7*spbl6l5
      abb21(50)=-abb21(50)*abb21(58)
      abb21(26)=abb21(50)+abb21(44)+abb21(45)+abb21(46)+abb21(34)+abb21(26)+abb&
      &21(27)
      abb21(26)=16.0_ki*abb21(26)
      abb21(27)=-8.0_ki*abb21(47)
      abb21(34)=abb21(142)*spak3k4
      abb21(44)=abb21(135)*spak3k4
      abb21(34)=abb21(34)-abb21(44)
      abb21(34)=abb21(34)*spbl6k1
      abb21(45)=abb21(116)*spak3k4
      abb21(46)=abb21(131)*spak3k4
      abb21(45)=abb21(45)-abb21(46)
      abb21(45)=abb21(45)*spbl5k1
      abb21(34)=abb21(34)+abb21(45)
      abb21(45)=spak1l6*abb21(34)
      abb21(14)=spbk3k2*abb21(16)*abb21(14)
      abb21(16)=abb21(14)*abb21(25)
      abb21(47)=abb21(16)*abb21(49)
      abb21(50)=abb21(14)*spak1k2
      abb21(69)=abb21(50)*c4
      abb21(79)=abb21(7)*abb21(69)
      abb21(47)=abb21(47)-abb21(79)
      abb21(79)=abb21(3)*spak3k4
      abb21(83)=abb21(124)*abb21(79)
      abb21(87)=abb21(106)*spak3k4
      abb21(83)=abb21(87)+abb21(83)
      abb21(83)=abb21(83)*spbl6l5
      abb21(35)=abb21(35)*spak3k4
      abb21(35)=abb21(83)-abb21(35)
      abb21(83)=spak1l6*abb21(35)
      abb21(83)=3.0_ki*abb21(47)+abb21(83)
      abb21(87)=-abb21(117)*abb21(79)
      abb21(90)=abb21(107)*spak3k4
      abb21(91)=-abb21(90)-abb21(87)
      abb21(91)=spbl6l5*abb21(91)
      abb21(92)=spak3k4*abb21(105)
      abb21(91)=abb21(91)+abb21(92)
      abb21(64)=abb21(91)*abb21(64)
      abb21(89)=abb21(14)*abb21(89)
      abb21(69)=abb21(89)-abb21(69)
      abb21(89)=3.0_ki*abb21(29)
      abb21(91)=abb21(89)*abb21(20)*abb21(69)
      abb21(64)=abb21(64)+abb21(91)
      abb21(64)=spak2l6*abb21(64)
      abb21(91)=abb21(16)*abb21(43)
      abb21(92)=c4*abb21(10)
      abb21(50)=abb21(50)*abb21(92)
      abb21(50)=abb21(91)-abb21(50)
      abb21(91)=3.0_ki*abb21(36)
      abb21(93)=abb21(50)*abb21(91)
      abb21(94)=-spak3k4*abb21(118)
      abb21(94)=-abb21(44)+abb21(94)
      abb21(94)=spbl6l5*abb21(94)
      abb21(95)=abb21(137)*spak3k4
      abb21(94)=abb21(94)+abb21(95)
      abb21(94)=spal5l6*abb21(94)
      abb21(45)=abb21(64)+abb21(94)+2.0_ki*abb21(83)+abb21(93)+abb21(45)
      abb21(45)=spbl6k3*abb21(45)
      abb21(34)=spak1l5*abb21(34)
      abb21(35)=-spak1l5*abb21(35)
      abb21(35)=3.0_ki*abb21(50)+abb21(35)
      abb21(50)=-abb21(125)*abb21(79)
      abb21(64)=abb21(113)*spak3k4
      abb21(79)=abb21(64)+abb21(50)
      abb21(79)=spbl6l5*abb21(79)
      abb21(83)=-spak3k4*abb21(112)
      abb21(79)=abb21(79)+abb21(83)
      abb21(63)=abb21(79)*abb21(63)
      abb21(69)=abb21(91)*abb21(31)*abb21(69)
      abb21(63)=abb21(63)+abb21(69)
      abb21(63)=spak2l5*abb21(63)
      abb21(47)=abb21(47)*abb21(89)
      abb21(69)=-spak3k4*abb21(126)
      abb21(69)=-abb21(46)+abb21(69)
      abb21(69)=spbl6l5*abb21(69)
      abb21(79)=abb21(133)*spak3k4
      abb21(69)=abb21(69)+abb21(79)
      abb21(69)=spal5l6*abb21(69)
      abb21(34)=abb21(63)+abb21(69)+2.0_ki*abb21(35)+abb21(47)+abb21(34)
      abb21(34)=spbl5k3*abb21(34)
      abb21(35)=spbl6k1*abb21(144)
      abb21(47)=spbl5k1*abb21(123)
      abb21(35)=abb21(35)+abb21(47)
      abb21(47)=abb21(61)+abb21(71)
      abb21(35)=abb21(47)*abb21(35)
      abb21(63)=abb21(132)*spbl5k2
      abb21(69)=abb21(136)*spbl6k2
      abb21(63)=abb21(63)+abb21(69)
      abb21(63)=abb21(63)*spal5l6
      abb21(69)=abb21(138)*spbl6k2
      abb21(17)=abb21(17)*spbl5k2
      abb21(17)=abb21(69)+abb21(17)
      abb21(61)=abb21(71)-abb21(61)
      abb21(61)=abb21(140)*abb21(61)
      abb21(17)=-abb21(63)-abb21(61)+9.0_ki*abb21(17)+abb21(35)
      abb21(35)=abb21(108)*spak1l5
      abb21(61)=abb21(114)*spak1l6
      abb21(35)=-abb21(102)+abb21(35)-abb21(61)
      abb21(61)=abb21(98)*abb21(29)
      abb21(63)=abb21(56)*abb21(36)
      abb21(61)=-abb21(35)+abb21(61)+abb21(63)
      abb21(61)=abb21(61)*abb21(101)
      abb21(61)=abb21(61)-abb21(17)
      abb21(63)=abb21(65)*abb21(120)
      abb21(65)=abb21(63)+3.0_ki*abb21(99)
      abb21(69)=-spak2l6*abb21(65)
      abb21(67)=abb21(67)*abb21(128)
      abb21(71)=-abb21(67)+3.0_ki*abb21(86)
      abb21(83)=-spak2l5*abb21(71)
      abb21(69)=abb21(83)+abb21(69)+abb21(61)
      abb21(69)=spak2k4*abb21(69)
      abb21(83)=abb21(29)*abb21(80)*abb21(20)
      abb21(85)=abb21(36)*abb21(85)
      abb21(83)=abb21(85)+abb21(83)
      abb21(85)=abb21(14)*c4
      abb21(85)=abb21(85)-abb21(16)
      abb21(83)=abb21(85)*abb21(83)
      abb21(14)=abb21(7)*abb21(92)*abb21(14)
      abb21(16)=-abb21(55)*abb21(16)
      abb21(14)=abb21(14)+abb21(16)
      abb21(14)=abb21(80)*abb21(14)
      abb21(16)=-spbl6l5*abb21(46)
      abb21(16)=abb21(16)+abb21(79)
      abb21(16)=spak1l6*abb21(16)
      abb21(44)=spbl6l5*abb21(44)
      abb21(44)=abb21(44)-abb21(95)
      abb21(44)=spak1l5*abb21(44)
      abb21(14)=abb21(44)+2.0_ki*abb21(14)+abb21(16)+abb21(83)
      abb21(14)=spbk3k1*abb21(14)
      abb21(16)=abb21(8)*abb21(84)
      abb21(44)=abb21(11)*abb21(81)
      abb21(16)=abb21(16)+abb21(44)
      abb21(16)=spbl6k1*abb21(16)
      abb21(44)=abb21(8)*abb21(81)
      abb21(46)=abb21(11)*abb21(62)
      abb21(44)=abb21(44)+abb21(46)
      abb21(44)=spbl5k1*abb21(44)
      abb21(14)=3.0_ki*abb21(14)+abb21(34)+abb21(45)+abb21(16)+abb21(44)+abb21(&
      &69)
      abb21(14)=4.0_ki*abb21(14)
      abb21(16)=abb21(11)*abb21(31)*abb21(13)
      abb21(34)=abb21(16)*abb21(88)
      abb21(20)=abb21(8)*abb21(20)*abb21(13)
      abb21(44)=abb21(20)*abb21(100)
      abb21(45)=-spak4k7*abb21(13)*abb21(55)
      abb21(46)=abb21(38)*abb21(10)
      abb21(55)=abb21(46)*spbl6l5
      abb21(62)=abb21(41)*NC
      abb21(69)=abb21(62)*spbl6l5
      abb21(79)=abb21(69)*abb21(10)
      abb21(55)=abb21(55)-abb21(79)
      abb21(55)=abb21(55)*abb21(115)
      abb21(80)=abb21(38)*abb21(7)
      abb21(81)=abb21(80)*spbl6l5
      abb21(83)=abb21(69)*abb21(7)
      abb21(81)=abb21(81)-abb21(83)
      abb21(81)=abb21(81)*abb21(109)
      abb21(34)=-abb21(81)+abb21(55)-2.0_ki*abb21(45)+abb21(34)+abb21(44)
      abb21(34)=abb21(34)*abb21(101)
      abb21(44)=abb21(62)*abb21(49)
      abb21(45)=abb21(49)*abb21(38)
      abb21(44)=abb21(44)-abb21(45)
      abb21(44)=spbl6k1*abb21(44)
      abb21(55)=abb21(62)*abb21(43)
      abb21(81)=abb21(43)*abb21(38)
      abb21(55)=abb21(55)-abb21(81)
      abb21(55)=spbl5k1*abb21(55)
      abb21(44)=-abb21(44)-abb21(55)
      abb21(44)=abb21(134)*abb21(44)
      abb21(55)=abb21(38)*abb21(3)
      abb21(41)=abb21(55)-abb21(41)
      abb21(55)=abb21(41)*abb21(130)
      abb21(84)=abb21(49)*abb21(55)
      abb21(45)=abb21(84)+abb21(45)
      abb21(45)=abb21(45)*spbl6l5
      abb21(49)=abb21(69)*abb21(49)
      abb21(45)=abb21(45)-abb21(49)
      abb21(45)=abb21(45)*abb21(100)
      abb21(49)=abb21(43)*abb21(55)
      abb21(49)=abb21(49)+abb21(81)
      abb21(49)=abb21(49)*spbl6l5
      abb21(43)=abb21(69)*abb21(43)
      abb21(43)=abb21(49)-abb21(43)
      abb21(43)=abb21(43)*abb21(88)
      abb21(43)=abb21(45)+abb21(43)
      abb21(43)=abb21(43)*spal5l6
      abb21(45)=-abb21(100)*abb21(7)
      abb21(49)=-abb21(88)*abb21(10)
      abb21(45)=abb21(45)+abb21(49)
      abb21(13)=abb21(13)*abb21(45)
      abb21(41)=abb21(41)*abb21(3)
      abb21(38)=abb21(41)-abb21(38)
      abb21(38)=abb21(38)*spbl6l5
      abb21(38)=abb21(38)+abb21(69)
      abb21(38)=2.0_ki*abb21(38)
      abb21(38)=abb21(143)*abb21(38)
      abb21(13)=abb21(43)+abb21(34)+9.0_ki*abb21(13)-abb21(38)+abb21(44)
      abb21(34)=spbk4k2*abb21(13)
      abb21(38)=spak3k7*abb21(61)
      abb21(43)=-spak3k7*abb21(65)
      abb21(44)=-abb21(7)*abb21(41)
      abb21(45)=abb21(44)+abb21(80)
      abb21(45)=abb21(45)*spbl6l5
      abb21(45)=abb21(45)-abb21(83)
      abb21(45)=abb21(45)*abb21(121)
      abb21(20)=abb21(20)*abb21(103)*abb21(110)
      abb21(20)=abb21(45)-abb21(20)
      abb21(45)=spbk4k2*abb21(20)
      abb21(43)=abb21(43)+abb21(45)
      abb21(43)=spak2l6*abb21(43)
      abb21(45)=-spak3k7*abb21(71)
      abb21(41)=-abb21(10)*abb21(41)
      abb21(49)=abb21(41)+abb21(46)
      abb21(49)=abb21(49)*spbl6l5
      abb21(49)=abb21(49)-abb21(79)
      abb21(49)=abb21(49)*abb21(129)
      abb21(16)=abb21(110)*abb21(16)*abb21(122)
      abb21(16)=abb21(49)+abb21(16)
      abb21(49)=-spbk4k2*abb21(16)
      abb21(45)=abb21(45)+abb21(49)
      abb21(45)=spak2l5*abb21(45)
      abb21(34)=abb21(45)+abb21(43)+abb21(38)+abb21(34)
      abb21(34)=4.0_ki*abb21(34)
      abb21(13)=-spbk4k3*abb21(13)
      abb21(17)=spak2k7*abb21(17)
      abb21(35)=spak2k7*abb21(35)
      abb21(38)=-abb21(98)*abb21(30)
      abb21(43)=-abb21(56)*abb21(37)
      abb21(35)=abb21(43)+abb21(35)+abb21(38)
      abb21(35)=abb21(35)*abb21(101)
      abb21(20)=-spbk4k3*abb21(20)
      abb21(38)=spak2k7*abb21(63)
      abb21(43)=abb21(98)*abb21(103)*abb21(66)
      abb21(20)=abb21(20)+abb21(38)+3.0_ki*abb21(43)
      abb21(20)=spak2l6*abb21(20)
      abb21(16)=spbk4k3*abb21(16)
      abb21(38)=-spak2k7*abb21(67)
      abb21(43)=abb21(56)*abb21(122)*abb21(70)
      abb21(16)=abb21(16)+abb21(38)+3.0_ki*abb21(43)
      abb21(16)=spak2l5*abb21(16)
      abb21(13)=abb21(16)+abb21(20)+abb21(13)+abb21(35)+abb21(17)
      abb21(13)=4.0_ki*abb21(13)
      abb21(16)=abb21(52)+abb21(76)
      abb21(17)=spak1l6*abb21(16)
      abb21(20)=abb21(148)+abb21(82)
      abb21(35)=spak1l5*abb21(20)
      abb21(17)=abb21(17)+abb21(35)
      abb21(17)=spak2k7*abb21(17)
      abb21(35)=abb21(16)*abb21(11)
      abb21(38)=abb21(20)*abb21(8)
      abb21(35)=abb21(35)+abb21(38)
      abb21(38)=-abb21(35)*abb21(68)
      abb21(43)=-abb21(21)*abb21(29)
      abb21(45)=abb21(57)-abb21(33)
      abb21(49)=abb21(45)*spbl6l5
      abb21(49)=abb21(49)-abb21(60)
      abb21(52)=spak1l5*abb21(49)
      abb21(43)=abb21(43)+abb21(52)+abb21(19)
      abb21(43)=spal6k7*abb21(43)
      abb21(52)=abb21(19)*abb21(36)
      abb21(49)=-spak1l6*abb21(49)
      abb21(21)=abb21(52)+abb21(49)-abb21(21)
      abb21(21)=spal5k7*abb21(21)
      abb21(49)=abb21(20)*abb21(75)
      abb21(52)=abb21(16)*abb21(72)
      abb21(55)=abb21(12)*abb21(7)
      abb21(45)=abb21(55)-abb21(45)
      abb21(55)=abb21(77)+abb21(74)
      abb21(56)=-abb21(45)*abb21(55)
      abb21(17)=abb21(21)+abb21(43)+abb21(38)+abb21(52)+abb21(17)+abb21(49)+abb&
      &21(56)
      abb21(17)=8.0_ki*abb21(17)
      abb21(21)=32.0_ki*spak1k7
      abb21(38)=abb21(21)*abb21(45)
      abb21(43)=abb21(104)*abb21(25)
      abb21(49)=abb21(107)+abb21(119)-abb21(43)
      abb21(52)=abb21(49)*abb21(134)
      abb21(56)=32.0_ki*abb21(52)
      abb21(35)=-spak1k7*abb21(35)
      abb21(35)=abb21(35)-abb21(52)
      abb21(35)=32.0_ki*abb21(35)
      abb21(52)=16.0_ki*spak1k7
      abb21(57)=abb21(45)*abb21(52)
      abb21(43)=abb21(43)*spak3k4
      abb21(43)=abb21(43)+abb21(87)-abb21(90)
      abb21(60)=spbl6k3*spak1l6
      abb21(61)=spbl5k3*spak1l5
      abb21(60)=abb21(60)+abb21(61)
      abb21(43)=-abb21(43)*abb21(60)
      abb21(49)=abb21(49)*abb21(47)
      abb21(61)=-spak2k4*abb21(49)
      abb21(23)=abb21(61)-abb21(23)+abb21(43)
      abb21(23)=16.0_ki*abb21(23)
      abb21(43)=-spak3k7*abb21(49)
      abb21(61)=abb21(62)*abb21(7)
      abb21(44)=-abb21(80)+abb21(61)+abb21(44)
      abb21(44)=abb21(134)*abb21(44)
      abb21(61)=spbk4k2*abb21(44)
      abb21(43)=abb21(43)+abb21(61)
      abb21(43)=16.0_ki*abb21(43)
      abb21(49)=spak2k7*abb21(49)
      abb21(44)=-spbk4k3*abb21(44)
      abb21(44)=abb21(49)+abb21(44)
      abb21(44)=16.0_ki*abb21(44)
      abb21(31)=abb21(73)*abb21(31)
      abb21(24)=-abb21(31)+abb21(24)-abb21(22)
      abb21(31)=-spak1l6*abb21(24)
      abb21(49)=spak1l5*abb21(16)
      abb21(31)=abb21(31)+abb21(49)
      abb21(31)=spak2k7*abb21(31)
      abb21(49)=abb21(16)*abb21(8)
      abb21(61)=abb21(24)*abb21(11)
      abb21(49)=abb21(49)-abb21(61)
      abb21(61)=-abb21(49)*abb21(68)
      abb21(29)=abb21(19)*abb21(29)
      abb21(39)=abb21(39)-abb21(42)
      abb21(63)=abb21(39)*spbl6l5
      abb21(59)=abb21(63)-abb21(59)
      abb21(63)=spak1l5*abb21(59)
      abb21(29)=abb21(29)+abb21(63)-abb21(32)
      abb21(29)=spal6k7*abb21(29)
      abb21(32)=-abb21(32)*abb21(36)
      abb21(36)=-spak1l6*abb21(59)
      abb21(19)=abb21(32)+abb21(36)+abb21(19)
      abb21(19)=spal5k7*abb21(19)
      abb21(32)=abb21(16)*abb21(75)
      abb21(36)=-abb21(24)*abb21(72)
      abb21(12)=abb21(12)*abb21(10)
      abb21(12)=abb21(12)-abb21(39)
      abb21(39)=-abb21(12)*abb21(55)
      abb21(19)=abb21(19)+abb21(29)+abb21(61)+abb21(36)+abb21(31)+abb21(32)+abb&
      &21(39)
      abb21(19)=8.0_ki*abb21(19)
      abb21(21)=abb21(21)*abb21(12)
      abb21(25)=abb21(111)*abb21(25)
      abb21(29)=-abb21(25)+abb21(127)+abb21(113)
      abb21(31)=abb21(29)*abb21(134)
      abb21(32)=32.0_ki*abb21(31)
      abb21(36)=-spak1k7*abb21(49)
      abb21(31)=abb21(36)-abb21(31)
      abb21(31)=32.0_ki*abb21(31)
      abb21(36)=abb21(12)*abb21(52)
      abb21(25)=abb21(25)*spak3k4
      abb21(25)=abb21(25)+abb21(50)-abb21(64)
      abb21(25)=-abb21(25)*abb21(60)
      abb21(29)=abb21(29)*abb21(47)
      abb21(39)=-spak2k4*abb21(29)
      abb21(25)=abb21(39)-abb21(78)+abb21(25)
      abb21(25)=16.0_ki*abb21(25)
      abb21(39)=-spak3k7*abb21(29)
      abb21(47)=abb21(62)*abb21(10)
      abb21(41)=-abb21(46)+abb21(47)+abb21(41)
      abb21(41)=abb21(134)*abb21(41)
      abb21(46)=spbk4k2*abb21(41)
      abb21(39)=abb21(39)+abb21(46)
      abb21(39)=16.0_ki*abb21(39)
      abb21(29)=spak2k7*abb21(29)
      abb21(41)=-spbk4k3*abb21(41)
      abb21(29)=abb21(29)+abb21(41)
      abb21(29)=16.0_ki*abb21(29)
      abb21(41)=abb21(51)+abb21(48)
      abb21(46)=-abb21(40)*abb21(41)
      abb21(47)=abb21(146)*abb21(10)
      abb21(48)=abb21(47)*abb21(37)
      abb21(46)=abb21(48)+abb21(46)
      abb21(46)=abb21(3)*abb21(46)
      abb21(48)=abb21(58)-abb21(54)
      abb21(33)=-abb21(33)*abb21(48)
      abb21(49)=-abb21(30)*abb21(148)
      abb21(33)=abb21(49)+abb21(33)
      abb21(33)=spak2l6*abb21(33)
      abb21(49)=abb21(146)*abb21(7)
      abb21(50)=abb21(130)*spak2k7
      abb21(51)=abb21(49)*abb21(50)
      abb21(33)=abb21(33)+abb21(51)+abb21(46)
      abb21(33)=8.0_ki*abb21(33)
      abb21(45)=8.0_ki*abb21(45)
      abb21(46)=spal6k7*abb21(45)
      abb21(12)=8.0_ki*abb21(12)
      abb21(51)=spal6k7*abb21(12)
      abb21(40)=abb21(40)*abb21(48)
      abb21(30)=abb21(49)*abb21(30)
      abb21(30)=abb21(30)+abb21(40)
      abb21(30)=abb21(3)*abb21(30)
      abb21(40)=abb21(42)*abb21(41)
      abb21(22)=-abb21(37)*abb21(22)
      abb21(22)=abb21(22)+abb21(40)
      abb21(22)=spak2l5*abb21(22)
      abb21(37)=abb21(47)*abb21(50)
      abb21(22)=abb21(22)+abb21(37)+abb21(30)
      abb21(22)=8.0_ki*abb21(22)
      abb21(30)=spal5k7*abb21(45)
      abb21(12)=spal5k7*abb21(12)
      abb21(20)=abb21(20)*abb21(66)
      abb21(37)=abb21(16)*abb21(70)
      abb21(20)=abb21(20)+abb21(37)
      abb21(20)=8.0_ki*abb21(20)
      abb21(16)=abb21(16)*abb21(66)
      abb21(24)=-abb21(24)*abb21(70)
      abb21(16)=abb21(16)+abb21(24)
      abb21(16)=8.0_ki*abb21(16)
      R2d21=abb21(53)
      rat2 = rat2 + R2d21
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='21' value='", &
          & R2d21, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd21h7
