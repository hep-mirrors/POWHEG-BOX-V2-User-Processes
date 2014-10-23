module     p0_dbaru_epnebbbarg_abbrevd322h3
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(151), public :: abb322
   complex(ki), public :: R2d322
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
      abb322(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb322(2)=sqrt2**(-1)
      abb322(3)=es234**(-1)
      abb322(4)=es567**(-1)
      abb322(5)=spak2l6**(-1)
      abb322(6)=spak2l5**(-1)
      abb322(7)=spbl5k2**(-1)
      abb322(8)=spak2k7**(-1)
      abb322(9)=spbl6k2**(-1)
      abb322(10)=sqrt(mB**2)
      abb322(11)=1.0_ki/(es34+es567-es12-es234)
      abb322(12)=mB**2
      abb322(13)=abb322(12)*abb322(6)
      abb322(14)=abb322(3)*spbk3k2**2
      abb322(15)=spak3k4*abb322(10)
      abb322(16)=TR*gW
      abb322(16)=abb322(16)**2*CVDU*abb322(4)*abb322(2)*abb322(1)
      abb322(17)=abb322(16)*spbk7l6
      abb322(18)=i_*c4
      abb322(19)=abb322(18)*spak1k2
      abb322(20)=-spbk7l5*abb322(19)*abb322(17)*abb322(15)*abb322(14)*abb322(13)
      abb322(21)=spbk3k1*spak1k2
      abb322(22)=abb322(21)*abb322(17)
      abb322(23)=spbk4k3*abb322(16)*spak2k4
      abb322(24)=abb322(23)*spbk7l6
      abb322(22)=abb322(22)-abb322(24)
      abb322(25)=spak1k4*abb322(11)
      abb322(26)=abb322(18)*abb322(8)
      abb322(27)=abb322(25)*abb322(26)
      abb322(28)=mB**3
      abb322(29)=abb322(28)*abb322(27)
      abb322(30)=abb322(6)**2
      abb322(31)=abb322(30)*abb322(29)
      abb322(32)=-abb322(31)*abb322(22)
      abb322(33)=spbk3k2*abb322(3)
      abb322(34)=abb322(33)*abb322(16)
      abb322(35)=abb322(26)*spak1k2
      abb322(36)=abb322(34)*abb322(35)
      abb322(37)=abb322(36)*abb322(28)
      abb322(38)=abb322(37)*spak2k4
      abb322(39)=abb322(30)*spbk7l6
      abb322(40)=abb322(38)*abb322(39)
      abb322(32)=abb322(40)+abb322(32)
      abb322(40)=abb322(32)*es712
      abb322(41)=2.0_ki*es71
      abb322(42)=abb322(32)*abb322(41)
      abb322(42)=abb322(42)-abb322(40)
      abb322(42)=es712*abb322(42)
      abb322(43)=abb322(32)*es71
      abb322(40)=abb322(43)-abb322(40)
      abb322(43)=abb322(32)*es12
      abb322(44)=-2.0_ki*abb322(40)-abb322(43)
      abb322(44)=es12*abb322(44)
      abb322(40)=abb322(40)+abb322(43)
      abb322(43)=spak2l6*spbl6k2
      abb322(45)=-abb322(40)*abb322(43)
      abb322(46)=-abb322(32)*es71**2
      abb322(20)=abb322(45)+abb322(44)+abb322(42)+abb322(20)+abb322(46)
      abb322(42)=2.0_ki*abb322(7)
      abb322(20)=abb322(42)*abb322(20)
      abb322(44)=abb322(16)*abb322(26)*mB
      abb322(45)=abb322(44)*abb322(25)
      abb322(46)=spbk7l6*abb322(6)
      abb322(47)=abb322(46)*abb322(45)
      abb322(48)=abb322(47)*spak1k2
      abb322(49)=spbk7l5*abb322(5)
      abb322(50)=abb322(49)*abb322(45)
      abb322(51)=spak1k2*abb322(50)
      abb322(52)=-abb322(51)+2.0_ki*abb322(48)
      abb322(52)=abb322(52)*spbk3k1
      abb322(53)=abb322(45)*spak2k4
      abb322(54)=2.0_ki*abb322(46)
      abb322(55)=abb322(54)*abb322(53)
      abb322(56)=abb322(53)*abb322(49)
      abb322(55)=abb322(55)-abb322(56)
      abb322(55)=abb322(55)*spbk4k3
      abb322(57)=abb322(44)*spak1k2
      abb322(58)=abb322(33)*spak2k4
      abb322(59)=abb322(57)*abb322(58)
      abb322(60)=abb322(59)*abb322(49)
      abb322(61)=abb322(44)*abb322(6)
      abb322(62)=abb322(61)*abb322(58)
      abb322(63)=abb322(62)*spak1k2
      abb322(64)=abb322(63)*spbk7l6
      abb322(52)=-abb322(52)+abb322(55)-abb322(60)+2.0_ki*abb322(64)
      abb322(55)=-es12+es712-es71
      abb322(52)=abb322(55)*abb322(52)
      abb322(65)=abb322(10)**2
      abb322(66)=abb322(65)*abb322(52)
      abb322(67)=abb322(18)*mB
      abb322(68)=abb322(34)*abb322(67)
      abb322(69)=abb322(68)*spak1k2
      abb322(70)=abb322(69)*abb322(54)
      abb322(69)=abb322(69)*abb322(49)
      abb322(70)=abb322(70)-abb322(69)
      abb322(71)=spak3k4*abb322(70)*abb322(65)
      abb322(72)=abb322(28)*abb322(19)
      abb322(73)=spak3k4*abb322(34)*abb322(72)
      abb322(74)=abb322(73)*abb322(39)
      abb322(75)=abb322(55)*abb322(42)
      abb322(76)=-abb322(74)*abb322(75)
      abb322(77)=abb322(34)*spbk7l6
      abb322(78)=abb322(77)*spbk7l5
      abb322(79)=abb322(78)*abb322(18)
      abb322(80)=2.0_ki*spak1k7
      abb322(81)=-abb322(15)*abb322(80)*abb322(79)
      abb322(71)=abb322(81)+abb322(71)+abb322(76)
      abb322(71)=spbk7k3*abb322(71)
      abb322(76)=abb322(67)*spbk7l5
      abb322(81)=abb322(25)*abb322(6)
      abb322(82)=abb322(76)*abb322(81)
      abb322(83)=abb322(17)*spbk3k1
      abb322(84)=abb322(82)*abb322(83)
      abb322(85)=abb322(68)*abb322(46)
      abb322(86)=abb322(85)*spak2k4
      abb322(87)=abb322(86)*spbk7l5
      abb322(84)=abb322(84)-abb322(87)
      abb322(87)=2.0_ki*spak1l5
      abb322(84)=-abb322(87)*abb322(84)
      abb322(88)=2.0_ki*spak4l5
      abb322(89)=abb322(17)*spbk4k3
      abb322(82)=-abb322(88)*abb322(82)*abb322(89)
      abb322(82)=abb322(82)+abb322(84)
      abb322(84)=abb322(55)-abb322(43)
      abb322(82)=abb322(84)*abb322(82)
      abb322(90)=abb322(15)*abb322(26)
      abb322(91)=abb322(90)*abb322(78)
      abb322(92)=-spak1k7*abb322(91)
      abb322(93)=abb322(37)*spak3k4
      abb322(39)=abb322(93)*abb322(39)
      abb322(94)=-abb322(7)*abb322(39)*abb322(55)
      abb322(95)=abb322(68)*spak3k4
      abb322(96)=abb322(95)*abb322(46)
      abb322(97)=spak1l5*spbk7l5
      abb322(98)=abb322(96)*abb322(97)
      abb322(92)=abb322(92)+abb322(94)+abb322(98)
      abb322(94)=spbl6k3*spak2l6
      abb322(92)=abb322(92)*abb322(94)
      abb322(98)=abb322(27)*spbk7l5
      abb322(99)=abb322(22)*abb322(98)
      abb322(100)=abb322(36)*spak2k4
      abb322(101)=abb322(100)*spbk7l6
      abb322(102)=abb322(101)*spbk7l5
      abb322(99)=abb322(102)-abb322(99)
      abb322(102)=spbl5k2*abb322(10)
      abb322(103)=-abb322(99)*abb322(102)
      abb322(104)=abb322(36)*spak3k4
      abb322(105)=abb322(10)*spbk7l5
      abb322(106)=abb322(105)*abb322(104)
      abb322(107)=spbl5k3*abb322(106)*spbk7l6
      abb322(103)=abb322(103)+abb322(107)
      abb322(103)=spal5k7*abb322(103)
      abb322(92)=abb322(92)+abb322(103)
      abb322(103)=abb322(14)*abb322(9)
      abb322(107)=abb322(103)*abb322(15)
      abb322(19)=abb322(12)*abb322(19)*abb322(49)*abb322(107)
      abb322(108)=abb322(49)*abb322(67)
      abb322(109)=spak2l5*spbl5k2
      abb322(110)=abb322(108)*abb322(109)
      abb322(111)=abb322(25)*spbk4k3
      abb322(112)=-spak4l6*abb322(111)*abb322(110)
      abb322(19)=abb322(112)+abb322(19)
      abb322(19)=abb322(17)*abb322(19)
      abb322(112)=abb322(98)*abb322(83)
      abb322(113)=abb322(26)*spak2k4
      abb322(78)=abb322(78)*abb322(113)
      abb322(78)=abb322(112)-abb322(78)
      abb322(112)=abb322(109)+2.0_ki*abb322(84)
      abb322(78)=abb322(112)*abb322(78)*abb322(10)
      abb322(114)=spbl5k3*spak2l5
      abb322(91)=abb322(114)*abb322(91)
      abb322(78)=abb322(91)+abb322(78)
      abb322(78)=spak1k7*abb322(78)
      abb322(91)=abb322(25)*spbk3k1
      abb322(115)=abb322(91)*abb322(17)
      abb322(116)=abb322(77)*spak2k4
      abb322(115)=abb322(115)-abb322(116)
      abb322(110)=-abb322(115)*abb322(110)
      abb322(116)=abb322(77)*spak3k4
      abb322(108)=-abb322(108)*abb322(114)*abb322(116)
      abb322(108)=abb322(110)+abb322(108)
      abb322(108)=spak1l6*abb322(108)
      abb322(110)=abb322(23)*abb322(29)
      abb322(117)=abb322(29)*spbk3k1
      abb322(118)=abb322(16)*spak1k2
      abb322(119)=abb322(117)*abb322(118)
      abb322(119)=abb322(119)-abb322(110)
      abb322(120)=abb322(5)**2
      abb322(121)=abb322(120)*spbk7l5
      abb322(122)=-abb322(121)*abb322(119)
      abb322(123)=abb322(121)*abb322(38)
      abb322(122)=abb322(122)+abb322(123)
      abb322(124)=abb322(109)*abb322(122)
      abb322(125)=abb322(93)*abb322(121)
      abb322(126)=abb322(114)*abb322(125)
      abb322(126)=abb322(126)-abb322(124)
      abb322(126)=abb322(9)*abb322(55)*abb322(126)
      abb322(127)=abb322(89)*abb322(10)
      abb322(112)=spak4k7*abb322(112)*abb322(127)*abb322(98)
      abb322(128)=spbl6k2*abb322(10)
      abb322(99)=abb322(99)*abb322(128)
      abb322(129)=abb322(106)*spbl6k3
      abb322(130)=-spbk7l6*abb322(129)
      abb322(99)=abb322(99)+abb322(130)
      abb322(99)=spal6k7*abb322(99)
      abb322(130)=abb322(95)*spbk7k3
      abb322(131)=abb322(130)*abb322(54)
      abb322(97)=spak2k7*abb322(131)*abb322(97)
      abb322(19)=abb322(97)+abb322(99)+abb322(112)+abb322(108)+abb322(71)+abb32&
      &2(78)+abb322(66)+abb322(20)+abb322(19)+abb322(126)+2.0_ki*abb322(92)+abb&
      &322(82)
      abb322(19)=4.0_ki*abb322(19)
      abb322(20)=abb322(45)*spbk3k1
      abb322(66)=abb322(20)*spak1k2
      abb322(45)=abb322(45)*spbk4k3
      abb322(71)=abb322(45)*spak2k4
      abb322(66)=abb322(66)-abb322(71)
      abb322(78)=-abb322(49)*abb322(66)
      abb322(78)=abb322(78)+abb322(60)
      abb322(82)=abb322(78)*abb322(109)
      abb322(92)=-abb322(59)+abb322(66)
      abb322(97)=spbl6k2*abb322(92)*spbk7l5
      abb322(82)=abb322(82)-abb322(97)
      abb322(22)=-abb322(27)*abb322(22)
      abb322(22)=abb322(22)+abb322(101)
      abb322(97)=abb322(22)*abb322(10)
      abb322(92)=abb322(92)*spbk7l6
      abb322(97)=abb322(97)+abb322(92)
      abb322(97)=abb322(97)*spbl5k2
      abb322(66)=abb322(46)*abb322(66)
      abb322(66)=-abb322(64)+abb322(66)
      abb322(99)=es12-es712
      abb322(41)=-abb322(41)-2.0_ki*abb322(99)
      abb322(99)=abb322(66)*abb322(41)
      abb322(108)=abb322(57)*abb322(33)
      abb322(112)=abb322(108)*spbk7l6
      abb322(126)=abb322(36)*abb322(10)
      abb322(132)=abb322(126)*spbk7l6
      abb322(112)=abb322(112)-abb322(132)
      abb322(133)=-spak3k4*abb322(112)
      abb322(134)=abb322(49)*abb322(57)
      abb322(135)=abb322(33)*spak3k4
      abb322(136)=abb322(134)*abb322(135)
      abb322(137)=abb322(136)*spak2l5
      abb322(133)=abb322(133)-abb322(137)
      abb322(133)=spbl5k3*abb322(133)
      abb322(138)=-spak1k2*abb322(131)
      abb322(139)=abb322(57)*spbk7l5
      abb322(140)=abb322(135)*spbl6k3
      abb322(141)=-abb322(140)*abb322(139)
      abb322(99)=abb322(141)+abb322(138)+abb322(133)-abb322(97)+abb322(99)+abb3&
      &22(82)
      abb322(99)=8.0_ki*abb322(99)
      abb322(133)=abb322(118)*spbk3k1
      abb322(138)=abb322(133)-abb322(23)
      abb322(98)=abb322(138)*abb322(98)
      abb322(141)=abb322(100)*spbk7l5
      abb322(98)=abb322(141)-abb322(98)
      abb322(141)=-abb322(98)*abb322(128)
      abb322(142)=spbl5k3*spak3k4
      abb322(112)=-abb322(112)*abb322(142)
      abb322(143)=spbk7k3*spak3k4
      abb322(70)=-abb322(70)*abb322(143)
      abb322(52)=abb322(129)+abb322(70)+abb322(112)+abb322(141)-abb322(97)-abb3&
      &22(52)
      abb322(52)=8.0_ki*abb322(52)
      abb322(70)=spbl5k3*abb322(104)*abb322(10)
      abb322(97)=abb322(61)*spak1k2
      abb322(112)=abb322(140)*abb322(97)
      abb322(129)=spak2l6*abb322(112)
      abb322(70)=abb322(129)+abb322(70)
      abb322(70)=spbk7l6*abb322(70)
      abb322(129)=-abb322(66)*abb322(84)
      abb322(22)=-abb322(22)*abb322(102)
      abb322(141)=spak1k2*abb322(46)*abb322(130)
      abb322(22)=abb322(141)+abb322(22)+abb322(129)+abb322(70)
      abb322(22)=8.0_ki*abb322(22)
      abb322(70)=2.0_ki*abb322(5)
      abb322(129)=spak1k2*abb322(6)
      abb322(141)=abb322(17)*abb322(70)*abb322(129)
      abb322(118)=abb322(121)*abb322(118)
      abb322(118)=abb322(141)-abb322(118)
      abb322(118)=spbk3k1*abb322(29)*abb322(118)
      abb322(141)=abb322(54)*abb322(5)
      abb322(121)=abb322(141)-abb322(121)
      abb322(144)=-abb322(121)*abb322(110)
      abb322(141)=abb322(141)*abb322(38)
      abb322(118)=-abb322(144)-abb322(118)+abb322(141)-abb322(123)
      abb322(118)=-abb322(118)*abb322(55)
      abb322(123)=abb322(12)*abb322(5)
      abb322(101)=-abb322(123)*abb322(101)
      abb322(141)=abb322(12)*abb322(27)
      abb322(144)=abb322(141)*abb322(5)
      abb322(145)=-abb322(24)*abb322(144)
      abb322(146)=abb322(141)*abb322(83)
      abb322(147)=abb322(5)*spak1k2
      abb322(148)=abb322(147)*abb322(146)
      abb322(101)=abb322(148)+abb322(101)+abb322(145)
      abb322(101)=abb322(10)*abb322(101)
      abb322(145)=spbk7l6*abb322(38)
      abb322(24)=abb322(29)*abb322(24)
      abb322(24)=abb322(145)+abb322(24)
      abb322(24)=abb322(5)*abb322(24)
      abb322(29)=abb322(117)*abb322(147)
      abb322(117)=-abb322(17)*abb322(29)
      abb322(24)=abb322(101)+abb322(117)+abb322(24)
      abb322(24)=spbl5k2*abb322(24)
      abb322(24)=-abb322(124)+abb322(24)+abb322(118)
      abb322(24)=abb322(9)*abb322(24)
      abb322(32)=-abb322(32)*abb322(43)
      abb322(39)=abb322(39)*abb322(94)
      abb322(32)=abb322(39)+abb322(32)-abb322(40)
      abb322(32)=abb322(7)*abb322(32)
      abb322(23)=abb322(141)*abb322(23)
      abb322(39)=-abb322(12)*abb322(100)
      abb322(39)=abb322(39)-abb322(23)
      abb322(39)=abb322(46)*abb322(39)
      abb322(40)=-abb322(10)*abb322(78)
      abb322(94)=abb322(129)*abb322(146)
      abb322(39)=abb322(40)+abb322(94)+abb322(39)
      abb322(39)=abb322(10)*abb322(39)
      abb322(40)=-abb322(9)*abb322(121)*abb322(73)
      abb322(74)=abb322(7)*abb322(74)
      abb322(40)=abb322(40)+abb322(74)
      abb322(40)=spbk7k3*abb322(40)
      abb322(37)=abb322(37)*abb322(5)
      abb322(74)=-spbk7l6*abb322(37)
      abb322(94)=abb322(123)*abb322(132)
      abb322(74)=abb322(74)+abb322(94)
      abb322(74)=spak3k4*abb322(74)
      abb322(94)=spak2l5*abb322(125)
      abb322(74)=abb322(94)+abb322(74)
      abb322(74)=abb322(9)*abb322(74)
      abb322(12)=abb322(12)*abb322(104)
      abb322(94)=abb322(7)*abb322(10)*abb322(46)*abb322(12)
      abb322(74)=abb322(94)+abb322(74)
      abb322(74)=spbl5k3*abb322(74)
      abb322(24)=abb322(40)+abb322(74)+abb322(39)+abb322(32)+abb322(24)
      abb322(24)=8.0_ki*abb322(24)
      abb322(32)=16.0_ki*abb322(78)
      abb322(39)=16.0_ki*abb322(9)*abb322(122)
      abb322(40)=-3.0_ki*abb322(48)+2.0_ki*abb322(51)
      abb322(40)=abb322(40)*spbk3k1
      abb322(48)=abb322(53)*abb322(46)
      abb322(48)=-3.0_ki*abb322(48)+2.0_ki*abb322(56)
      abb322(48)=abb322(48)*spbk4k3
      abb322(40)=-2.0_ki*abb322(60)+3.0_ki*abb322(64)+abb322(40)-abb322(48)
      abb322(40)=-abb322(40)*abb322(55)
      abb322(48)=-spbl5k2*abb322(92)
      abb322(51)=-abb322(66)*abb322(43)
      abb322(53)=-abb322(135)*abb322(57)*spbk7l6
      abb322(53)=abb322(53)+abb322(137)
      abb322(53)=spbl5k3*abb322(53)
      abb322(56)=spak1k2*abb322(85)
      abb322(56)=-3.0_ki*abb322(56)+2.0_ki*abb322(69)
      abb322(56)=abb322(56)*abb322(143)
      abb322(60)=abb322(135)*abb322(139)
      abb322(64)=abb322(135)*abb322(97)
      abb322(66)=-spak2l6*spbk7l6*abb322(64)
      abb322(60)=abb322(60)+abb322(66)
      abb322(60)=spbl6k3*abb322(60)
      abb322(40)=abb322(60)+abb322(56)+abb322(53)+abb322(51)+abb322(48)+abb322(&
      &40)-abb322(82)
      abb322(40)=4.0_ki*abb322(40)
      abb322(48)=8.0_ki*abb322(78)
      abb322(51)=-spbk7k2*abb322(10)*abb322(98)
      abb322(53)=spbk7k3*abb322(106)
      abb322(51)=abb322(51)+abb322(53)
      abb322(51)=4.0_ki*abb322(51)
      abb322(53)=abb322(16)*spbk7l5
      abb322(56)=abb322(53)*abb322(27)
      abb322(60)=abb322(56)*abb322(10)*spbk4k3
      abb322(66)=-4.0_ki*abb322(109)*abb322(60)
      abb322(17)=abb322(17)*abb322(76)
      abb322(69)=abb322(16)*abb322(6)
      abb322(74)=abb322(69)*abb322(67)
      abb322(82)=spak2l6*spbk7l6**2
      abb322(85)=-abb322(82)*abb322(74)
      abb322(17)=abb322(85)+abb322(17)
      abb322(17)=abb322(111)*abb322(17)
      abb322(25)=abb322(18)*abb322(25)
      abb322(85)=2.0_ki*abb322(105)
      abb322(92)=-abb322(89)*abb322(25)*abb322(85)
      abb322(17)=abb322(92)+abb322(17)
      abb322(92)=abb322(45)*spbk7l6
      abb322(94)=abb322(127)*abb322(27)
      abb322(98)=abb322(92)-abb322(94)
      abb322(101)=spbl6l5*spak2l6
      abb322(105)=abb322(98)*abb322(101)
      abb322(17)=2.0_ki*abb322(17)+abb322(105)
      abb322(17)=4.0_ki*abb322(17)
      abb322(105)=abb322(13)*abb322(36)
      abb322(106)=abb322(97)*abb322(33)*abb322(10)
      abb322(105)=abb322(105)-abb322(106)
      abb322(15)=abb322(105)*abb322(15)
      abb322(43)=abb322(43)+abb322(55)
      abb322(105)=abb322(93)*abb322(30)
      abb322(43)=abb322(43)*abb322(105)*abb322(42)
      abb322(12)=abb322(9)*abb322(70)*abb322(102)*abb322(12)
      abb322(95)=abb322(95)*abb322(6)
      abb322(106)=abb322(95)*spbk7l5
      abb322(117)=abb322(135)*abb322(61)
      abb322(118)=abb322(101)*abb322(117)
      abb322(118)=-abb322(106)+abb322(118)
      abb322(118)=abb322(118)*abb322(87)
      abb322(90)=abb322(90)*abb322(34)
      abb322(121)=abb322(90)*spbk7l5
      abb322(122)=-abb322(80)*abb322(121)
      abb322(12)=abb322(122)+abb322(118)-abb322(15)+abb322(12)+abb322(43)
      abb322(12)=spbl6k3*abb322(12)
      abb322(43)=abb322(77)*abb322(113)
      abb322(118)=abb322(83)*abb322(27)
      abb322(43)=abb322(43)-abb322(118)
      abb322(43)=abb322(43)*abb322(10)
      abb322(118)=abb322(44)*spbk7l6
      abb322(122)=abb322(118)*abb322(58)
      abb322(124)=abb322(20)*spbk7l6
      abb322(122)=abb322(122)-abb322(124)
      abb322(124)=-abb322(43)-abb322(122)
      abb322(124)=spbl5k2*abb322(124)
      abb322(46)=abb322(20)*abb322(46)
      abb322(127)=abb322(62)*spbk7l6
      abb322(46)=abb322(46)-abb322(127)
      abb322(46)=abb322(41)*abb322(46)
      abb322(113)=abb322(34)*abb322(113)
      abb322(132)=abb322(113)*spbk7l5
      abb322(56)=abb322(56)*spbk3k1
      abb322(56)=abb322(132)-abb322(56)
      abb322(132)=abb322(56)*abb322(128)
      abb322(118)=abb322(118)*abb322(33)
      abb322(26)=abb322(26)*abb322(10)
      abb322(77)=abb322(26)*abb322(77)
      abb322(137)=abb322(118)+abb322(77)
      abb322(137)=abb322(137)*abb322(142)
      abb322(124)=abb322(137)+2.0_ki*abb322(132)+abb322(124)-abb322(46)
      abb322(124)=spak1k7*abb322(124)
      abb322(27)=abb322(27)*abb322(16)
      abb322(132)=spbk3k1*abb322(27)
      abb322(113)=abb322(132)-abb322(113)
      abb322(132)=-abb322(113)*abb322(128)
      abb322(137)=abb322(20)*abb322(5)
      abb322(139)=abb322(44)*abb322(5)
      abb322(143)=abb322(139)*abb322(58)
      abb322(137)=abb322(137)-abb322(143)
      abb322(145)=-abb322(137)*abb322(109)
      abb322(146)=-spbl6k3*abb322(90)
      abb322(148)=abb322(135)*spbl5k3
      abb322(149)=abb322(148)*abb322(139)
      abb322(150)=-spak2l5*abb322(149)
      abb322(132)=abb322(146)+abb322(150)+abb322(132)+abb322(145)
      abb322(145)=2.0_ki*spak1l6
      abb322(132)=abb322(145)*abb322(132)
      abb322(27)=spbk4k3*abb322(27)
      abb322(146)=-abb322(128)*abb322(27)
      abb322(150)=abb322(45)*abb322(5)
      abb322(151)=-abb322(109)*abb322(150)
      abb322(146)=abb322(146)+abb322(151)
      abb322(146)=spak4l6*abb322(146)
      abb322(132)=2.0_ki*abb322(146)+abb322(132)
      abb322(132)=spbl6l5*abb322(132)
      abb322(21)=abb322(69)*abb322(141)*abb322(21)
      abb322(141)=abb322(13)*abb322(100)
      abb322(146)=abb322(23)*abb322(6)
      abb322(21)=-abb322(21)+abb322(141)+abb322(146)
      abb322(129)=abb322(20)*abb322(129)
      abb322(141)=abb322(71)*abb322(6)
      abb322(63)=-abb322(63)+abb322(129)-abb322(141)
      abb322(129)=abb322(63)*abb322(10)
      abb322(141)=abb322(129)-abb322(21)
      abb322(141)=abb322(141)*abb322(128)
      abb322(13)=abb322(104)*abb322(42)*abb322(128)*abb322(13)
      abb322(36)=-abb322(36)*abb322(123)
      abb322(104)=abb322(10)*abb322(70)*abb322(108)
      abb322(36)=abb322(36)+abb322(104)
      abb322(36)=abb322(10)*abb322(36)
      abb322(36)=-abb322(37)+abb322(36)
      abb322(36)=spak3k4*abb322(36)
      abb322(104)=abb322(93)*abb322(120)
      abb322(108)=2.0_ki*abb322(9)
      abb322(128)=abb322(109)*abb322(108)*abb322(104)
      abb322(13)=abb322(128)+abb322(36)+abb322(13)
      abb322(13)=spbl5k3*abb322(13)
      abb322(36)=abb322(20)*abb322(6)
      abb322(36)=abb322(36)-abb322(62)
      abb322(62)=abb322(84)*abb322(36)
      abb322(128)=abb322(113)*abb322(102)
      abb322(90)=spbl5k3*abb322(90)
      abb322(90)=abb322(90)+abb322(128)-abb322(62)
      abb322(90)=spbl6l5*abb322(90)
      abb322(68)=abb322(6)*abb322(68)*spak2k4
      abb322(128)=spbk7l5*abb322(68)
      abb322(146)=abb322(76)*abb322(69)
      abb322(151)=-abb322(91)*abb322(146)
      abb322(128)=abb322(128)+abb322(151)
      abb322(128)=spbl6k2*abb322(128)
      abb322(90)=abb322(128)+abb322(90)
      abb322(90)=abb322(90)*abb322(87)
      abb322(100)=abb322(123)*abb322(100)
      abb322(23)=abb322(23)*abb322(5)
      abb322(128)=abb322(144)*abb322(133)
      abb322(23)=-abb322(128)+abb322(100)+abb322(23)
      abb322(59)=-abb322(59)-abb322(71)
      abb322(59)=abb322(5)*abb322(59)
      abb322(71)=abb322(20)*abb322(147)
      abb322(59)=abb322(71)+abb322(59)
      abb322(71)=2.0_ki*abb322(10)
      abb322(100)=abb322(59)*abb322(71)
      abb322(100)=abb322(100)-abb322(23)
      abb322(100)=abb322(10)*abb322(100)
      abb322(119)=abb322(119)-abb322(38)
      abb322(128)=abb322(119)*abb322(5)
      abb322(100)=abb322(100)-abb322(128)
      abb322(100)=spbl5k2*abb322(100)
      abb322(72)=abb322(120)*abb322(103)*abb322(53)*spak3k4*abb322(72)
      abb322(133)=abb322(7)*spbl6k2
      abb322(144)=abb322(30)*abb322(133)
      abb322(147)=abb322(5)*abb322(6)
      abb322(144)=-abb322(147)+abb322(144)
      abb322(73)=abb322(73)*abb322(144)
      abb322(144)=spak1l5*spbl6l5*abb322(95)
      abb322(151)=spak1k7*abb322(96)
      abb322(73)=abb322(151)+abb322(144)+abb322(73)
      abb322(73)=spbk7k3*abb322(73)
      abb322(54)=abb322(55)*abb322(54)*abb322(45)
      abb322(92)=abb322(92)+abb322(94)
      abb322(92)=spbl5k2*abb322(92)
      abb322(60)=spbl6k2*abb322(60)
      abb322(60)=-2.0_ki*abb322(60)+abb322(92)-abb322(54)
      abb322(60)=spak4k7*abb322(60)
      abb322(92)=abb322(38)+abb322(110)
      abb322(92)=abb322(147)*abb322(92)
      abb322(29)=abb322(29)*abb322(69)
      abb322(29)=abb322(92)-abb322(29)
      abb322(29)=abb322(41)*abb322(29)
      abb322(31)=abb322(31)*abb322(138)
      abb322(38)=abb322(38)*abb322(30)
      abb322(31)=abb322(31)-abb322(38)
      abb322(38)=spak2l6*spbl6k2**2*abb322(31)*abb322(42)
      abb322(41)=abb322(108)*abb322(119)*abb322(120)
      abb322(92)=spak2l5*spbl5k2**2*abb322(41)
      abb322(94)=abb322(45)*abb322(6)
      abb322(84)=abb322(84)*abb322(94)
      abb322(102)=abb322(102)*abb322(27)
      abb322(102)=abb322(102)-abb322(84)
      abb322(102)=spbl6l5*abb322(102)
      abb322(110)=-spbl6k2*abb322(111)*abb322(146)
      abb322(102)=abb322(110)+abb322(102)
      abb322(102)=abb322(102)*abb322(88)
      abb322(78)=spbl6k2*abb322(78)
      abb322(110)=-abb322(134)*abb322(140)
      abb322(78)=abb322(78)+abb322(110)
      abb322(78)=spal6k7*abb322(78)
      abb322(12)=abb322(78)+abb322(60)+abb322(102)+abb322(12)+2.0_ki*abb322(73)&
      &+abb322(124)+abb322(90)+abb322(13)+abb322(92)+abb322(38)+abb322(72)+abb3&
      &22(141)+abb322(100)-abb322(29)+abb322(132)
      abb322(12)=4.0_ki*abb322(12)
      abb322(13)=abb322(63)*spbl6k2
      abb322(13)=abb322(13)+abb322(112)
      abb322(38)=abb322(59)*spbl5k2
      abb322(57)=abb322(148)*abb322(57)
      abb322(59)=abb322(57)*abb322(5)
      abb322(59)=abb322(59)+abb322(38)
      abb322(60)=-abb322(13)-abb322(59)
      abb322(60)=16.0_ki*abb322(60)
      abb322(59)=-16.0_ki*abb322(59)
      abb322(57)=abb322(57)*abb322(70)
      abb322(38)=abb322(57)+2.0_ki*abb322(38)
      abb322(57)=-abb322(13)+abb322(38)
      abb322(57)=8.0_ki*abb322(57)
      abb322(47)=abb322(50)-abb322(47)
      abb322(50)=spbk3k1*abb322(47)
      abb322(72)=abb322(143)*spbk7l5
      abb322(50)=abb322(50)+abb322(127)-abb322(72)
      abb322(50)=abb322(50)*abb322(80)
      abb322(73)=abb322(137)*abb322(145)
      abb322(70)=spak4l6*abb322(45)*abb322(70)
      abb322(70)=abb322(70)+abb322(73)
      abb322(70)=spbl6l5*abb322(70)
      abb322(41)=-spbl5k2*abb322(41)
      abb322(73)=abb322(31)*abb322(133)
      abb322(78)=abb322(147)*abb322(93)
      abb322(80)=abb322(108)*abb322(78)
      abb322(90)=abb322(7)*abb322(105)
      abb322(90)=-abb322(80)+abb322(90)
      abb322(90)=spbl6k3*abb322(90)
      abb322(47)=spak4k7*spbk4k3*abb322(47)
      abb322(42)=-spbl5k3*abb322(42)*abb322(78)
      abb322(41)=2.0_ki*abb322(47)+abb322(90)+abb322(50)+abb322(42)+abb322(41)+&
      &abb322(73)+abb322(70)
      abb322(41)=8.0_ki*abb322(41)
      abb322(13)=-abb322(13)-abb322(38)
      abb322(13)=4.0_ki*abb322(13)
      abb322(38)=abb322(63)*spbk7k2
      abb322(42)=abb322(64)*spbk7k3
      abb322(38)=abb322(38)+abb322(42)
      abb322(42)=8.0_ki*abb322(38)
      abb322(47)=-spbl5k2*abb322(63)
      abb322(50)=-abb322(97)*abb322(148)
      abb322(47)=abb322(47)+abb322(50)
      abb322(47)=8.0_ki*abb322(47)
      abb322(50)=-spbl5k2*abb322(45)
      abb322(50)=abb322(50)-abb322(84)
      abb322(50)=8.0_ki*abb322(50)
      abb322(63)=abb322(150)*abb322(55)
      abb322(64)=-spbl6k2*abb322(45)
      abb322(63)=abb322(64)+abb322(63)
      abb322(63)=8.0_ki*abb322(63)
      abb322(64)=3.0_ki*abb322(10)
      abb322(27)=-abb322(27)*abb322(64)
      abb322(27)=abb322(45)+abb322(27)
      abb322(27)=spbl6l5*abb322(27)
      abb322(67)=abb322(81)*abb322(67)
      abb322(70)=abb322(89)*abb322(67)
      abb322(27)=4.0_ki*abb322(70)+abb322(27)
      abb322(27)=4.0_ki*abb322(27)
      abb322(70)=abb322(137)*spbl5k2
      abb322(70)=abb322(70)+abb322(149)
      abb322(73)=spak1k7*abb322(70)
      abb322(81)=abb322(150)*spbl5k2
      abb322(84)=spak4k7*abb322(81)
      abb322(73)=abb322(73)+abb322(84)
      abb322(73)=8.0_ki*abb322(73)
      abb322(23)=abb322(10)*abb322(23)
      abb322(23)=abb322(23)+abb322(128)
      abb322(23)=spbl5k2*abb322(23)
      abb322(84)=-abb322(123)*abb322(126)
      abb322(37)=abb322(37)+abb322(84)
      abb322(37)=abb322(37)*abb322(142)
      abb322(23)=abb322(37)+abb322(23)+abb322(29)
      abb322(23)=abb322(9)*abb322(23)
      abb322(21)=abb322(129)+abb322(21)
      abb322(21)=abb322(10)*abb322(21)
      abb322(29)=-abb322(31)*abb322(75)
      abb322(21)=abb322(29)+abb322(21)+abb322(23)
      abb322(21)=spbk7k2*abb322(21)
      abb322(23)=abb322(43)-abb322(122)
      abb322(29)=spbl5k2*abb322(23)
      abb322(37)=abb322(49)*abb322(20)
      abb322(37)=-abb322(72)+abb322(37)
      abb322(37)=abb322(37)*abb322(109)
      abb322(43)=abb322(118)-abb322(77)
      abb322(43)=abb322(43)*spak3k4
      abb322(72)=abb322(135)*abb322(139)
      abb322(77)=spak2l5*spbk7l5*abb322(72)
      abb322(77)=abb322(43)+abb322(77)
      abb322(77)=spbl5k3*abb322(77)
      abb322(29)=abb322(131)+abb322(77)+abb322(37)+abb322(29)-abb322(46)
      abb322(29)=spak1l6*abb322(29)
      abb322(37)=-abb322(105)*abb322(75)
      abb322(46)=-abb322(55)*abb322(80)
      abb322(75)=abb322(87)*abb322(106)
      abb322(15)=abb322(75)+abb322(37)-abb322(15)+abb322(46)
      abb322(15)=spbk7k3*abb322(15)
      abb322(37)=spbl5k2*abb322(98)
      abb322(45)=abb322(49)*abb322(45)*abb322(109)
      abb322(37)=abb322(45)+abb322(37)-abb322(54)
      abb322(37)=spak4l6*abb322(37)
      abb322(45)=-abb322(35)*abb322(53)*abb322(123)*abb322(107)
      abb322(46)=-abb322(87)*abb322(36)
      abb322(49)=-abb322(88)*abb322(94)
      abb322(46)=abb322(49)+abb322(46)
      abb322(46)=abb322(46)*abb322(55)*spbk7l5
      abb322(15)=abb322(37)+abb322(29)+abb322(15)+abb322(45)+abb322(21)+abb322(&
      &46)
      abb322(15)=4.0_ki*abb322(15)
      abb322(21)=spbk7k2*abb322(31)
      abb322(29)=spbk7k3*abb322(105)
      abb322(21)=abb322(21)+abb322(29)
      abb322(21)=8.0_ki*abb322(7)*abb322(21)
      abb322(29)=-4.0_ki*abb322(38)
      abb322(14)=abb322(14)*abb322(7)
      abb322(16)=abb322(30)*abb322(16)*abb322(14)
      abb322(30)=abb322(69)*abb322(5)
      abb322(31)=-abb322(103)*abb322(30)
      abb322(16)=abb322(31)+abb322(16)
      abb322(28)=abb322(35)*abb322(28)*spak3k4
      abb322(16)=abb322(28)*abb322(16)
      abb322(31)=spak1l6*abb322(70)
      abb322(35)=spak4l6*abb322(81)
      abb322(16)=abb322(35)+abb322(31)+abb322(16)
      abb322(16)=8.0_ki*abb322(16)
      abb322(31)=8.0_ki*abb322(94)
      abb322(35)=spbl6k2*abb322(36)
      abb322(37)=abb322(140)*abb322(61)
      abb322(35)=abb322(37)+abb322(35)-abb322(70)
      abb322(35)=spak1l5*abb322(35)
      abb322(14)=-abb322(28)*abb322(14)*abb322(30)
      abb322(28)=spbl6k2*abb322(94)
      abb322(28)=-abb322(81)+abb322(28)
      abb322(28)=spak4l5*abb322(28)
      abb322(14)=abb322(28)+abb322(14)+abb322(35)
      abb322(14)=8.0_ki*abb322(14)
      abb322(28)=8.0_ki*abb322(150)
      abb322(30)=4.0_ki*abb322(136)
      abb322(35)=abb322(65)*abb322(30)
      abb322(38)=8.0_ki*abb322(136)
      abb322(45)=-8.0_ki*abb322(9)*abb322(125)
      abb322(46)=-abb322(61)*spbk7l6
      abb322(49)=spbk7l5*abb322(139)
      abb322(46)=abb322(46)+abb322(49)
      abb322(46)=spak1k7*spak3k4*abb322(33)*abb322(46)
      abb322(49)=-abb322(9)*spbl5k2*abb322(104)
      abb322(53)=spak1l6*spbl6l5*abb322(72)
      abb322(46)=abb322(53)+abb322(46)+2.0_ki*abb322(78)+abb322(49)
      abb322(46)=8.0_ki*abb322(46)
      abb322(49)=abb322(10)*abb322(56)*abb322(109)
      abb322(53)=-abb322(114)*abb322(121)
      abb322(49)=abb322(49)+abb322(53)
      abb322(49)=4.0_ki*abb322(49)
      abb322(53)=abb322(58)*abb322(44)
      abb322(20)=abb322(20)-abb322(53)
      abb322(53)=-spbl5k2*abb322(20)
      abb322(54)=-abb322(44)*abb322(148)
      abb322(56)=abb322(6)*abb322(130)
      abb322(37)=spak2l6*abb322(37)
      abb322(37)=abb322(37)+abb322(56)+abb322(54)+abb322(53)-abb322(62)
      abb322(37)=8.0_ki*abb322(37)
      abb322(53)=abb322(137)*abb322(55)
      abb322(54)=-spbl6k2*abb322(20)
      abb322(55)=-abb322(5)*abb322(130)
      abb322(56)=-abb322(44)*abb322(140)
      abb322(53)=abb322(56)+abb322(55)+abb322(54)+abb322(53)
      abb322(53)=8.0_ki*abb322(53)
      abb322(18)=-abb322(18)*abb322(85)
      abb322(18)=abb322(76)+abb322(18)
      abb322(18)=abb322(18)*abb322(116)
      abb322(54)=-abb322(95)*abb322(82)
      abb322(18)=abb322(18)+abb322(54)
      abb322(43)=abb322(101)*abb322(43)
      abb322(18)=2.0_ki*abb322(18)+abb322(43)
      abb322(18)=4.0_ki*abb322(18)
      abb322(33)=abb322(33)*abb322(44)
      abb322(26)=abb322(34)*abb322(26)
      abb322(26)=abb322(33)-3.0_ki*abb322(26)
      abb322(26)=spbl6l5*spak3k4*abb322(26)
      abb322(26)=4.0_ki*abb322(96)+abb322(26)
      abb322(26)=4.0_ki*abb322(26)
      abb322(33)=8.0_ki*abb322(117)
      abb322(34)=8.0_ki*abb322(72)
      abb322(43)=abb322(76)*abb322(115)
      abb322(44)=spak2k4*abb322(79)
      abb322(25)=-spbk7l5*abb322(83)*abb322(25)
      abb322(25)=abb322(44)+abb322(25)
      abb322(25)=abb322(25)*abb322(71)
      abb322(44)=-abb322(91)*abb322(74)
      abb322(44)=abb322(68)+abb322(44)
      abb322(44)=abb322(44)*abb322(82)
      abb322(25)=abb322(44)+abb322(25)+abb322(43)
      abb322(23)=abb322(23)*abb322(101)
      abb322(23)=2.0_ki*abb322(25)+abb322(23)
      abb322(23)=4.0_ki*abb322(23)
      abb322(25)=-abb322(113)*abb322(64)
      abb322(20)=abb322(25)+abb322(20)
      abb322(20)=spbl6l5*abb322(20)
      abb322(25)=abb322(83)*abb322(67)
      abb322(25)=-abb322(86)+abb322(25)
      abb322(20)=4.0_ki*abb322(25)+abb322(20)
      abb322(20)=4.0_ki*abb322(20)
      abb322(25)=8.0_ki*abb322(36)
      abb322(36)=8.0_ki*abb322(137)
      R2d322=0.0_ki
      rat2 = rat2 + R2d322
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='322' value='", &
          & R2d322, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd322h3
