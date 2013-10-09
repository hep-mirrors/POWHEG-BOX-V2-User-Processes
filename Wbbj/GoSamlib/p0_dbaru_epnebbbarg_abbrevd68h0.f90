module     p0_dbaru_epnebbbarg_abbrevd68h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(161), public :: abb68
   complex(ki), public :: R2d68
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
      abb68(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb68(2)=NC**(-1)
      abb68(3)=es56**(-1)
      abb68(4)=spbl5k2**(-1)
      abb68(5)=spbl6k2**(-1)
      abb68(6)=spak2l5**(-1)
      abb68(7)=spak2l6**(-1)
      abb68(8)=c1*abb68(2)
      abb68(9)=c4*abb68(2)**2
      abb68(10)=-c2+abb68(8)-abb68(9)
      abb68(11)=TR*gW
      abb68(11)=abb68(11)**2*i_*CVDU*abb68(3)*abb68(1)
      abb68(12)=abb68(11)*mB
      abb68(13)=abb68(12)*spbk3k2
      abb68(14)=abb68(13)*abb68(5)
      abb68(15)=-abb68(14)*abb68(10)
      abb68(16)=abb68(15)*spak1l5
      abb68(17)=abb68(13)*abb68(4)
      abb68(18)=-abb68(17)*abb68(10)
      abb68(19)=abb68(18)*spak1l6
      abb68(20)=abb68(16)+abb68(19)
      abb68(21)=abb68(20)*spbk2k1
      abb68(22)=spak1e7*spbe7k3
      abb68(23)=abb68(22)*abb68(21)
      abb68(24)=-abb68(13)*abb68(10)
      abb68(25)=spal6e7*spbe7k3
      abb68(26)=abb68(24)*abb68(25)
      abb68(27)=abb68(26)*spak1l5
      abb68(28)=spal5e7*spbe7k3
      abb68(24)=abb68(24)*abb68(28)
      abb68(29)=abb68(24)*spak1l6
      abb68(23)=abb68(23)+abb68(27)+abb68(29)
      abb68(27)=es12*spak3k4
      abb68(29)=-abb68(27)*abb68(23)
      abb68(8)=-abb68(8)+c2+abb68(9)
      abb68(8)=spbe7k2*abb68(8)
      abb68(9)=-abb68(17)*abb68(8)
      abb68(17)=spak1l6*spak1e7
      abb68(30)=abb68(9)*abb68(17)
      abb68(14)=-abb68(14)*abb68(8)
      abb68(31)=spak1l5*spak1e7
      abb68(32)=abb68(14)*abb68(31)
      abb68(30)=abb68(30)+abb68(32)
      abb68(30)=abb68(30)*spbk2k1
      abb68(32)=spal6e7*spak1l5
      abb68(33)=spal5e7*spak1l6
      abb68(32)=abb68(32)+abb68(33)
      abb68(13)=-abb68(13)*abb68(8)
      abb68(33)=abb68(32)*abb68(13)
      abb68(30)=abb68(30)+abb68(33)
      abb68(30)=abb68(30)*spak2k4
      abb68(33)=-es12*abb68(30)
      abb68(34)=abb68(19)*abb68(25)
      abb68(35)=-abb68(27)*abb68(34)
      abb68(36)=abb68(9)*spal6e7
      abb68(37)=abb68(36)*spak2k4
      abb68(38)=abb68(37)*spak1l6
      abb68(39)=-es12*abb68(38)
      abb68(35)=abb68(35)+abb68(39)
      abb68(35)=spbl6k2*abb68(35)
      abb68(16)=abb68(16)*abb68(28)
      abb68(39)=-abb68(27)*abb68(16)
      abb68(40)=abb68(14)*spal5e7
      abb68(41)=abb68(40)*spak2k4
      abb68(42)=abb68(41)*spak1l5
      abb68(43)=-es12*abb68(42)
      abb68(39)=abb68(39)+abb68(43)
      abb68(39)=spbl5k2*abb68(39)
      abb68(29)=abb68(39)+abb68(35)+abb68(33)+abb68(29)
      abb68(29)=4.0_ki*abb68(29)
      abb68(33)=abb68(12)*abb68(5)
      abb68(35)=-abb68(33)*abb68(10)
      abb68(39)=spbk3k2**2
      abb68(43)=abb68(35)*abb68(39)
      abb68(44)=abb68(43)*spak1l5
      abb68(45)=abb68(12)*abb68(4)
      abb68(46)=-abb68(45)*abb68(10)
      abb68(47)=abb68(46)*abb68(39)
      abb68(48)=abb68(47)*spak1l6
      abb68(44)=abb68(44)+abb68(48)
      abb68(48)=8.0_ki*abb68(44)*abb68(27)
      abb68(49)=abb68(9)*spak1l6
      abb68(50)=abb68(14)*spak1l5
      abb68(49)=abb68(49)+abb68(50)
      abb68(50)=8.0_ki*spak4e7
      abb68(51)=abb68(49)*abb68(50)
      abb68(52)=abb68(51)*es12
      abb68(33)=abb68(33)*abb68(8)
      abb68(53)=abb68(31)*abb68(33)
      abb68(45)=abb68(45)*abb68(8)
      abb68(54)=abb68(45)*spak1l6
      abb68(55)=abb68(54)*spak1e7
      abb68(53)=abb68(53)+abb68(55)
      abb68(55)=abb68(53)*spbk2k1
      abb68(12)=abb68(10)*abb68(12)
      abb68(56)=-spbe7k2*abb68(12)
      abb68(32)=abb68(56)*abb68(32)
      abb68(57)=abb68(55)+abb68(32)
      abb68(58)=spak1k4*abb68(57)
      abb68(59)=abb68(54)*spak1k4
      abb68(60)=spbl6k2*spal6e7
      abb68(61)=abb68(59)*abb68(60)
      abb68(62)=abb68(33)*spak1l5
      abb68(63)=abb68(62)*spak1k4
      abb68(64)=spbl5k2*spal5e7
      abb68(65)=abb68(63)*abb68(64)
      abb68(58)=abb68(65)+abb68(61)+abb68(58)
      abb68(58)=spbk3k1*abb68(58)
      abb68(61)=abb68(49)*spak4e7
      abb68(65)=abb68(61)*es12
      abb68(58)=abb68(65)+abb68(58)
      abb68(58)=8.0_ki*abb68(58)
      abb68(66)=spak1k4*abb68(20)
      abb68(67)=abb68(66)*spbk2k1
      abb68(68)=16.0_ki*abb68(67)
      abb68(36)=abb68(36)+abb68(40)
      abb68(40)=spak1k4*abb68(36)
      abb68(69)=16.0_ki*abb68(40)
      abb68(70)=mB**3
      abb68(71)=spbk3k2*abb68(70)*abb68(11)
      abb68(72)=abb68(71)*abb68(5)*abb68(4)
      abb68(73)=-abb68(72)*abb68(8)
      abb68(74)=abb68(73)*spal6e7
      abb68(75)=abb68(5)**2
      abb68(76)=abb68(75)*abb68(71)
      abb68(77)=-abb68(76)*abb68(8)
      abb68(78)=abb68(77)*spal5e7
      abb68(74)=abb68(74)+abb68(78)
      abb68(74)=abb68(74)*abb68(7)
      abb68(78)=abb68(73)*spal5e7
      abb68(79)=abb68(4)**2
      abb68(71)=abb68(79)*abb68(71)
      abb68(8)=-abb68(71)*abb68(8)
      abb68(80)=abb68(8)*spal6e7
      abb68(78)=abb68(78)+abb68(80)
      abb68(78)=abb68(78)*abb68(6)
      abb68(74)=abb68(74)+abb68(78)
      abb68(78)=-16.0_ki*spak1k4*abb68(74)
      abb68(23)=spak3k4*abb68(23)
      abb68(34)=spak3k4*abb68(34)
      abb68(34)=abb68(34)+abb68(38)
      abb68(34)=spbl6k2*abb68(34)
      abb68(16)=spak3k4*abb68(16)
      abb68(16)=abb68(16)+abb68(42)
      abb68(16)=spbl5k2*abb68(16)
      abb68(16)=abb68(16)+abb68(34)+abb68(30)+abb68(23)
      abb68(16)=8.0_ki*abb68(16)
      abb68(23)=-16.0_ki*spak3k4*abb68(44)
      abb68(30)=16.0_ki*abb68(61)
      abb68(34)=-abb68(61)+abb68(40)
      abb68(34)=16.0_ki*abb68(34)
      abb68(38)=abb68(35)*spak1l5
      abb68(42)=abb68(38)*spbl5k2
      abb68(44)=-abb68(12)*spak1l6
      abb68(61)=abb68(42)+abb68(44)
      abb68(80)=spak1k4*spbe7k3
      abb68(81)=abb68(80)*spal5e7
      abb68(61)=abb68(81)*abb68(61)
      abb68(82)=abb68(46)*spak1l6
      abb68(83)=abb68(82)*spbl6k2
      abb68(84)=-abb68(12)*spak1l5
      abb68(85)=abb68(83)+abb68(84)
      abb68(86)=abb68(80)*spal6e7
      abb68(85)=abb68(86)*abb68(85)
      abb68(87)=abb68(35)*abb68(80)
      abb68(88)=abb68(87)*abb68(31)
      abb68(89)=abb68(46)*abb68(80)
      abb68(90)=abb68(89)*abb68(17)
      abb68(88)=abb68(88)+abb68(90)
      abb68(88)=abb68(88)*spbk2k1
      abb68(61)=abb68(88)+abb68(85)+abb68(61)
      abb68(59)=abb68(59)+abb68(63)
      abb68(63)=spbk4k3*spak4e7
      abb68(85)=-abb68(59)*abb68(63)
      abb68(85)=abb68(85)-abb68(61)
      abb68(85)=spbk2k1*abb68(85)
      abb68(65)=-abb68(65)+abb68(85)
      abb68(65)=4.0_ki*abb68(65)
      abb68(67)=8.0_ki*abb68(67)
      abb68(40)=8.0_ki*abb68(40)
      abb68(85)=spak2l6*abb68(6)
      abb68(88)=abb68(8)*abb68(85)
      abb68(90)=spak2l5*abb68(7)
      abb68(91)=abb68(77)*abb68(90)
      abb68(88)=abb68(88)+abb68(91)
      abb68(91)=abb68(15)*spal5l6
      abb68(92)=abb68(91)*spbe7l6
      abb68(93)=abb68(18)*spal5l6
      abb68(94)=abb68(93)*spbe7l5
      abb68(92)=abb68(92)-abb68(94)
      abb68(94)=abb68(92)+abb68(88)
      abb68(73)=2.0_ki*abb68(73)
      abb68(95)=abb68(94)+abb68(73)
      abb68(95)=abb68(95)*spak1k4
      abb68(59)=abb68(59)*spbk3k1
      abb68(66)=abb68(66)*spbe7k1
      abb68(59)=abb68(95)-abb68(59)+abb68(66)
      abb68(66)=8.0_ki*abb68(59)
      abb68(59)=4.0_ki*abb68(59)
      abb68(27)=abb68(27)*abb68(22)
      abb68(95)=-abb68(18)*abb68(27)
      abb68(96)=spak1k2*spal5e7
      abb68(97)=-abb68(13)*abb68(96)
      abb68(98)=es12*spak1e7
      abb68(99)=-abb68(9)*abb68(98)
      abb68(97)=abb68(97)+abb68(99)
      abb68(97)=spak2k4*abb68(97)
      abb68(99)=abb68(25)*abb68(18)
      abb68(100)=spak3k4*spak1k2
      abb68(101)=-abb68(99)*abb68(100)
      abb68(102)=-spak1k2*abb68(37)
      abb68(101)=abb68(101)+abb68(102)
      abb68(101)=spbl6k2*abb68(101)
      abb68(24)=-abb68(100)*abb68(24)
      abb68(24)=abb68(101)+abb68(97)+abb68(24)+abb68(95)
      abb68(24)=4.0_ki*abb68(24)
      abb68(95)=8.0_ki*abb68(100)
      abb68(47)=abb68(47)*abb68(95)
      abb68(97)=abb68(50)*spak1k2
      abb68(101)=abb68(97)*abb68(9)
      abb68(102)=abb68(45)*spak1e7
      abb68(103)=abb68(102)*spbk3k1
      abb68(104)=abb68(45)*spal6e7
      abb68(105)=spbl6k3*abb68(104)
      abb68(106)=abb68(45)*spal5e7
      abb68(107)=spbl5k3*abb68(106)
      abb68(105)=abb68(107)+abb68(105)+abb68(103)
      abb68(105)=spak1k4*abb68(105)
      abb68(107)=spak1k2*spak4e7
      abb68(108)=abb68(107)*abb68(9)
      abb68(105)=abb68(108)+abb68(105)
      abb68(105)=8.0_ki*abb68(105)
      abb68(109)=abb68(18)*spak1k4
      abb68(110)=16.0_ki*abb68(109)
      abb68(111)=abb68(18)*spak3k4
      abb68(112)=abb68(22)*abb68(111)
      abb68(113)=abb68(9)*spak2k4
      abb68(114)=spak1e7*abb68(113)
      abb68(112)=abb68(112)+abb68(114)
      abb68(112)=8.0_ki*abb68(112)
      abb68(114)=abb68(12)*abb68(81)
      abb68(115)=abb68(89)*spak1e7
      abb68(116)=-spbk2k1*abb68(115)
      abb68(117)=abb68(46)*spbl6k2
      abb68(118)=-abb68(86)*abb68(117)
      abb68(119)=abb68(63)*abb68(45)
      abb68(120)=-spak1k4*abb68(119)
      abb68(108)=abb68(120)+abb68(118)+abb68(116)+abb68(114)-abb68(108)
      abb68(108)=4.0_ki*abb68(108)
      abb68(109)=8.0_ki*abb68(109)
      abb68(114)=8.0_ki*abb68(89)
      abb68(89)=-4.0_ki*abb68(89)
      abb68(116)=abb68(50)*abb68(18)
      abb68(118)=4.0_ki*spak4e7
      abb68(120)=abb68(18)*abb68(118)
      abb68(27)=-abb68(15)*abb68(27)
      abb68(121)=spak1k2*spal6e7
      abb68(13)=-abb68(13)*abb68(121)
      abb68(98)=-abb68(14)*abb68(98)
      abb68(13)=abb68(13)+abb68(98)
      abb68(13)=spak2k4*abb68(13)
      abb68(98)=abb68(28)*abb68(15)
      abb68(122)=-abb68(98)*abb68(100)
      abb68(123)=-spak1k2*abb68(41)
      abb68(122)=abb68(122)+abb68(123)
      abb68(122)=spbl5k2*abb68(122)
      abb68(26)=-abb68(100)*abb68(26)
      abb68(13)=abb68(122)+abb68(13)+abb68(26)+abb68(27)
      abb68(13)=4.0_ki*abb68(13)
      abb68(26)=abb68(43)*abb68(95)
      abb68(27)=abb68(97)*abb68(14)
      abb68(43)=abb68(33)*spak1e7
      abb68(95)=abb68(43)*spbk3k1
      abb68(97)=abb68(33)*spal6e7
      abb68(100)=spbl6k3*abb68(97)
      abb68(122)=abb68(33)*spal5e7
      abb68(123)=spbl5k3*abb68(122)
      abb68(100)=abb68(123)+abb68(100)+abb68(95)
      abb68(100)=spak1k4*abb68(100)
      abb68(107)=abb68(107)*abb68(14)
      abb68(100)=abb68(107)+abb68(100)
      abb68(100)=8.0_ki*abb68(100)
      abb68(123)=abb68(15)*spak1k4
      abb68(124)=16.0_ki*abb68(123)
      abb68(125)=abb68(15)*spak3k4
      abb68(126)=abb68(22)*abb68(125)
      abb68(127)=abb68(14)*spak2k4
      abb68(128)=spak1e7*abb68(127)
      abb68(126)=abb68(126)+abb68(128)
      abb68(126)=8.0_ki*abb68(126)
      abb68(128)=abb68(12)*abb68(86)
      abb68(129)=abb68(87)*spak1e7
      abb68(130)=-spbk2k1*abb68(129)
      abb68(131)=abb68(35)*spbl5k2
      abb68(132)=-abb68(81)*abb68(131)
      abb68(133)=abb68(63)*abb68(33)
      abb68(134)=-spak1k4*abb68(133)
      abb68(107)=abb68(134)+abb68(132)+abb68(130)+abb68(128)-abb68(107)
      abb68(107)=4.0_ki*abb68(107)
      abb68(123)=8.0_ki*abb68(123)
      abb68(128)=8.0_ki*abb68(87)
      abb68(87)=-4.0_ki*abb68(87)
      abb68(50)=abb68(50)*abb68(15)
      abb68(118)=abb68(15)*abb68(118)
      abb68(49)=abb68(49)*spak3e7
      abb68(130)=abb68(62)+abb68(54)
      abb68(132)=spbk4k2*spak4e7
      abb68(134)=abb68(130)*abb68(132)
      abb68(64)=abb68(64)*abb68(62)
      abb68(60)=abb68(60)*abb68(54)
      abb68(49)=-abb68(64)-abb68(60)+abb68(49)-abb68(134)-abb68(57)
      abb68(57)=4.0_ki*es12*abb68(49)
      abb68(55)=8.0_ki*abb68(55)
      abb68(49)=-8.0_ki*abb68(49)
      abb68(60)=spak1l6*abb68(84)
      abb68(64)=spak1l6**2*abb68(117)
      abb68(134)=spak1l5**2*abb68(131)
      abb68(60)=abb68(134)+abb68(64)+2.0_ki*abb68(60)
      abb68(60)=spbe7k1*abb68(60)
      abb68(64)=abb68(20)*spbe7k1
      abb68(64)=abb68(64)+abb68(73)
      abb68(134)=-spak1k3*abb68(64)
      abb68(8)=-spak1k3*abb68(8)
      abb68(135)=abb68(11)*spbe7k2
      abb68(136)=-abb68(10)*abb68(70)*abb68(135)
      abb68(137)=abb68(79)*abb68(136)
      abb68(138)=spbk4k2*spak1k4
      abb68(139)=abb68(137)*abb68(138)
      abb68(8)=abb68(8)+abb68(139)
      abb68(8)=abb68(8)*abb68(85)
      abb68(77)=-spak1k3*abb68(77)
      abb68(136)=abb68(75)*abb68(136)
      abb68(139)=abb68(136)*abb68(138)
      abb68(77)=abb68(77)+abb68(139)
      abb68(77)=abb68(77)*abb68(90)
      abb68(139)=es234-es567
      abb68(139)=abb68(130)*abb68(139)
      abb68(140)=abb68(82)+abb68(38)
      abb68(141)=abb68(140)*spbe7k1
      abb68(142)=abb68(10)*abb68(5)*abb68(70)*abb68(4)
      abb68(135)=-abb68(135)*abb68(142)
      abb68(143)=2.0_ki*abb68(135)
      abb68(141)=abb68(141)-abb68(143)
      abb68(144)=-spbk4k2*spak1k4*abb68(141)
      abb68(145)=-spak1k3*abb68(91)
      abb68(138)=abb68(138)*spal5l6
      abb68(146)=-abb68(35)*abb68(138)
      abb68(145)=abb68(145)+abb68(146)
      abb68(145)=spbe7l6*abb68(145)
      abb68(146)=spak1k3*abb68(93)
      abb68(138)=abb68(46)*abb68(138)
      abb68(138)=abb68(146)+abb68(138)
      abb68(138)=spbe7l5*abb68(138)
      abb68(8)=abb68(77)+abb68(8)+abb68(138)+abb68(145)+abb68(144)+abb68(134)+a&
      &bb68(60)+abb68(139)
      abb68(8)=4.0_ki*abb68(8)
      abb68(60)=8.0_ki*abb68(130)
      abb68(77)=spak1l6*abb68(137)
      abb68(134)=spak1l5*abb68(135)
      abb68(77)=abb68(77)+abb68(134)
      abb68(77)=abb68(6)*abb68(77)
      abb68(134)=spak1l5*abb68(136)
      abb68(138)=spak1l6*abb68(135)
      abb68(134)=abb68(138)+abb68(134)
      abb68(134)=abb68(7)*abb68(134)
      abb68(77)=abb68(77)+abb68(134)
      abb68(77)=8.0_ki*abb68(77)
      abb68(134)=-4.0_ki*abb68(130)
      abb68(138)=-abb68(45)*abb68(132)
      abb68(9)=spak3e7*abb68(9)
      abb68(9)=abb68(9)+abb68(138)
      abb68(9)=spak1k2*abb68(9)
      abb68(138)=abb68(104)*spak1k2
      abb68(139)=abb68(46)*abb68(17)
      abb68(144)=-spbe7k1*abb68(139)
      abb68(144)=-abb68(138)+abb68(144)
      abb68(144)=spbl6k2*abb68(144)
      abb68(145)=-abb68(56)*abb68(96)
      abb68(146)=-es12*abb68(102)
      abb68(147)=-abb68(12)*spbe7k1
      abb68(148)=-abb68(31)*abb68(147)
      abb68(9)=abb68(144)+abb68(148)+abb68(145)+abb68(146)+abb68(9)
      abb68(9)=4.0_ki*abb68(9)
      abb68(144)=8.0_ki*abb68(102)
      abb68(145)=16.0_ki*abb68(102)
      abb68(102)=4.0_ki*abb68(102)
      abb68(146)=-abb68(6)*abb68(137)
      abb68(148)=-abb68(7)*abb68(135)
      abb68(146)=abb68(148)-abb68(45)+abb68(146)
      abb68(146)=spak1k2*abb68(146)
      abb68(148)=abb68(46)*spak1k3
      abb68(149)=spbe7k3*abb68(148)
      abb68(150)=-spbe7l6*abb68(82)
      abb68(151)=abb68(46)*spbe7l5
      abb68(152)=-spak1l5*abb68(151)
      abb68(153)=spbe7k4*spak1k4
      abb68(154)=abb68(46)*abb68(153)
      abb68(146)=abb68(154)+abb68(152)+abb68(150)+abb68(149)+abb68(146)
      abb68(146)=4.0_ki*abb68(146)
      abb68(149)=-abb68(46)*abb68(132)
      abb68(150)=-spak3e7*abb68(18)
      abb68(149)=abb68(149)+abb68(150)
      abb68(149)=4.0_ki*abb68(149)
      abb68(150)=4.0_ki*spak1e7
      abb68(152)=abb68(150)*abb68(46)
      abb68(154)=spbe7l6*abb68(152)
      abb68(155)=-abb68(33)*abb68(132)
      abb68(14)=spak3e7*abb68(14)
      abb68(14)=abb68(14)+abb68(155)
      abb68(14)=spak1k2*abb68(14)
      abb68(155)=abb68(122)*spak1k2
      abb68(156)=abb68(35)*abb68(31)
      abb68(157)=-spbe7k1*abb68(156)
      abb68(157)=-abb68(155)+abb68(157)
      abb68(157)=spbl5k2*abb68(157)
      abb68(56)=-abb68(56)*abb68(121)
      abb68(158)=-es12*abb68(43)
      abb68(17)=-abb68(17)*abb68(147)
      abb68(14)=abb68(157)+abb68(17)+abb68(56)+abb68(158)+abb68(14)
      abb68(14)=4.0_ki*abb68(14)
      abb68(17)=8.0_ki*abb68(43)
      abb68(56)=16.0_ki*abb68(43)
      abb68(43)=4.0_ki*abb68(43)
      abb68(147)=-abb68(7)*abb68(136)
      abb68(157)=-abb68(6)*abb68(135)
      abb68(147)=abb68(147)-abb68(33)+abb68(157)
      abb68(147)=spak1k2*abb68(147)
      abb68(157)=abb68(35)*spak1k3
      abb68(158)=spbe7k3*abb68(157)
      abb68(159)=abb68(35)*spbe7l6
      abb68(160)=-spak1l6*abb68(159)
      abb68(161)=-spbe7l5*abb68(38)
      abb68(153)=abb68(35)*abb68(153)
      abb68(147)=abb68(153)+abb68(161)+abb68(160)+abb68(158)+abb68(147)
      abb68(147)=4.0_ki*abb68(147)
      abb68(153)=-abb68(35)*abb68(132)
      abb68(158)=-spak3e7*abb68(15)
      abb68(153)=abb68(153)+abb68(158)
      abb68(153)=4.0_ki*abb68(153)
      abb68(158)=abb68(159)+abb68(151)
      abb68(158)=abb68(158)*abb68(150)
      abb68(150)=abb68(150)*abb68(35)
      abb68(160)=spbe7l5*abb68(150)
      abb68(161)=abb68(140)*abb68(22)*spbk2k1
      abb68(84)=abb68(84)*abb68(25)
      abb68(44)=abb68(44)*abb68(28)
      abb68(44)=abb68(161)+abb68(84)+abb68(44)
      abb68(83)=abb68(83)*abb68(25)
      abb68(42)=abb68(42)*abb68(28)
      abb68(42)=abb68(44)+abb68(83)+abb68(42)
      abb68(83)=es23-es123
      abb68(42)=abb68(42)*abb68(83)
      abb68(84)=2.0_ki*es12
      abb68(44)=abb68(84)*abb68(44)
      abb68(32)=-spak1k2*abb68(32)
      abb68(161)=-es12*abb68(53)
      abb68(32)=abb68(32)+abb68(161)
      abb68(32)=spbk3k1*abb68(32)
      abb68(82)=abb68(25)*abb68(82)*abb68(84)
      abb68(54)=-spbk3k1*abb68(54)*abb68(121)
      abb68(54)=abb68(82)+abb68(54)
      abb68(54)=spbl6k2*abb68(54)
      abb68(38)=abb68(28)*abb68(38)*abb68(84)
      abb68(62)=-spbk3k1*abb68(62)*abb68(96)
      abb68(38)=abb68(38)+abb68(62)
      abb68(38)=spbl5k2*abb68(38)
      abb68(62)=es12*abb68(130)*abb68(63)
      abb68(32)=abb68(62)+abb68(38)+abb68(54)+abb68(32)+abb68(44)+abb68(42)
      abb68(32)=4.0_ki*abb68(32)
      abb68(38)=abb68(85)*abb68(79)
      abb68(42)=abb68(90)*abb68(75)
      abb68(38)=abb68(42)+abb68(38)
      abb68(11)=abb68(39)*abb68(11)
      abb68(38)=abb68(38)*abb68(10)*abb68(70)*abb68(11)
      abb68(39)=abb68(91)*spbl6k3
      abb68(42)=abb68(93)*spbl5k3
      abb68(38)=abb68(42)-abb68(39)+abb68(38)
      abb68(39)=spak1k3*abb68(38)
      abb68(42)=-es12*abb68(20)
      abb68(11)=abb68(11)*abb68(142)
      abb68(44)=spak1k3*abb68(11)
      abb68(42)=abb68(42)+abb68(44)
      abb68(39)=2.0_ki*abb68(42)+abb68(39)
      abb68(39)=8.0_ki*abb68(39)
      abb68(42)=abb68(98)+abb68(99)
      abb68(44)=abb68(42)*spak1k3
      abb68(54)=abb68(36)*spak1k2
      abb68(44)=abb68(44)+abb68(54)
      abb68(54)=8.0_ki*abb68(44)
      abb68(62)=abb68(88)+abb68(92)+abb68(73)
      abb68(62)=spak1e7*abb68(62)
      abb68(31)=abb68(31)*abb68(15)
      abb68(19)=abb68(19)*spak1e7
      abb68(19)=abb68(31)+abb68(19)
      abb68(19)=abb68(19)*spbe7k1
      abb68(31)=abb68(53)*spbk3k1
      abb68(19)=-abb68(31)+abb68(19)+abb68(62)
      abb68(31)=8.0_ki*abb68(19)
      abb68(62)=spak1k2*abb68(74)
      abb68(63)=-abb68(72)*abb68(10)
      abb68(70)=abb68(63)*abb68(28)
      abb68(71)=-abb68(71)*abb68(10)
      abb68(72)=abb68(71)*abb68(25)
      abb68(70)=abb68(70)+abb68(72)
      abb68(70)=abb68(70)*abb68(6)
      abb68(72)=abb68(63)*abb68(25)
      abb68(10)=-abb68(76)*abb68(10)
      abb68(73)=abb68(10)*abb68(28)
      abb68(72)=abb68(72)+abb68(73)
      abb68(72)=abb68(72)*abb68(7)
      abb68(70)=abb68(70)+abb68(72)
      abb68(72)=spak1k3*abb68(70)
      abb68(62)=abb68(72)+abb68(19)+abb68(62)
      abb68(62)=8.0_ki*abb68(62)
      abb68(44)=-abb68(19)-abb68(44)
      abb68(44)=4.0_ki*abb68(44)
      abb68(72)=-abb68(12)*abb68(28)
      abb68(73)=abb68(25)*abb68(117)
      abb68(72)=abb68(119)+abb68(73)-abb68(103)+abb68(72)
      abb68(72)=spak1k2*abb68(72)
      abb68(73)=abb68(63)*spbe7k3
      abb68(75)=abb68(73)*abb68(7)
      abb68(76)=abb68(71)*abb68(6)
      abb68(79)=abb68(76)*spbe7k3
      abb68(75)=abb68(75)+abb68(79)
      abb68(79)=spak2e7*spak1k3
      abb68(82)=-abb68(75)*abb68(79)
      abb68(83)=abb68(84)+abb68(83)
      abb68(84)=abb68(22)*abb68(46)
      abb68(88)=abb68(84)*abb68(83)
      abb68(91)=abb68(25)*abb68(148)
      abb68(91)=-abb68(138)+abb68(91)
      abb68(91)=spbl6k3*abb68(91)
      abb68(45)=-abb68(45)*abb68(96)
      abb68(92)=abb68(28)*abb68(148)
      abb68(45)=abb68(45)+abb68(92)
      abb68(45)=spbl5k3*abb68(45)
      abb68(45)=abb68(45)+abb68(91)+abb68(82)+abb68(72)+abb68(88)
      abb68(45)=4.0_ki*abb68(45)
      abb68(72)=16.0_ki*abb68(18)
      abb68(72)=-spak1k2*abb68(72)
      abb68(82)=8.0_ki*abb68(84)
      abb68(84)=4.0_ki*abb68(84)
      abb68(12)=-abb68(12)*abb68(25)
      abb68(88)=abb68(28)*abb68(131)
      abb68(12)=abb68(133)+abb68(88)-abb68(95)+abb68(12)
      abb68(12)=spak1k2*abb68(12)
      abb68(73)=abb68(73)*abb68(6)
      abb68(88)=abb68(10)*abb68(7)
      abb68(91)=abb68(88)*spbe7k3
      abb68(73)=abb68(73)+abb68(91)
      abb68(79)=-abb68(73)*abb68(79)
      abb68(22)=abb68(22)*abb68(35)
      abb68(83)=abb68(22)*abb68(83)
      abb68(33)=-abb68(33)*abb68(121)
      abb68(91)=abb68(25)*abb68(157)
      abb68(33)=abb68(33)+abb68(91)
      abb68(33)=spbl6k3*abb68(33)
      abb68(91)=abb68(28)*abb68(157)
      abb68(91)=-abb68(155)+abb68(91)
      abb68(91)=spbl5k3*abb68(91)
      abb68(12)=abb68(91)+abb68(33)+abb68(79)+abb68(12)+abb68(83)
      abb68(12)=4.0_ki*abb68(12)
      abb68(33)=16.0_ki*abb68(15)
      abb68(33)=-spak1k2*abb68(33)
      abb68(79)=8.0_ki*abb68(22)
      abb68(22)=4.0_ki*abb68(22)
      abb68(83)=abb68(151)-abb68(159)
      abb68(83)=abb68(83)*spal5l6
      abb68(90)=abb68(136)*abb68(90)
      abb68(85)=abb68(137)*abb68(85)
      abb68(83)=abb68(83)+abb68(90)+abb68(85)
      abb68(85)=-abb68(83)-abb68(143)
      abb68(85)=spak1e7*abb68(85)
      abb68(90)=abb68(139)+abb68(156)
      abb68(90)=abb68(90)*spbe7k1
      abb68(85)=abb68(90)+abb68(85)
      abb68(85)=spbk4k2*abb68(85)
      abb68(53)=-spbk4k1*abb68(53)
      abb68(53)=abb68(53)+abb68(85)
      abb68(53)=4.0_ki*abb68(53)
      abb68(85)=-spbe7k4*abb68(152)
      abb68(91)=-spbe7k4*abb68(150)
      abb68(61)=-4.0_ki*spbk3k1*abb68(61)
      abb68(11)=abb68(38)+2.0_ki*abb68(11)
      abb68(38)=-8.0_ki*spak1k4*abb68(11)
      abb68(92)=abb68(81)*abb68(15)
      abb68(93)=abb68(86)*abb68(18)
      abb68(92)=abb68(92)+abb68(93)
      abb68(93)=8.0_ki*abb68(92)
      abb68(71)=-abb68(71)*abb68(86)
      abb68(95)=-abb68(63)*abb68(81)
      abb68(71)=abb68(71)+abb68(95)
      abb68(71)=abb68(6)*abb68(71)
      abb68(95)=-abb68(63)*abb68(86)
      abb68(10)=-abb68(10)*abb68(81)
      abb68(10)=abb68(95)+abb68(10)
      abb68(10)=abb68(7)*abb68(10)
      abb68(10)=abb68(71)+abb68(10)
      abb68(10)=8.0_ki*abb68(10)
      abb68(71)=4.0_ki*abb68(92)
      abb68(92)=abb68(7)*abb68(63)
      abb68(76)=abb68(76)+abb68(92)
      abb68(80)=abb68(80)*spak2e7
      abb68(76)=abb68(76)*abb68(80)
      abb68(81)=abb68(81)*spbl5k3
      abb68(86)=abb68(86)*spbl6k3
      abb68(81)=abb68(81)+abb68(86)
      abb68(86)=-abb68(46)*abb68(81)
      abb68(92)=-spbk3k1*abb68(115)
      abb68(76)=abb68(92)+abb68(76)+abb68(86)
      abb68(76)=4.0_ki*abb68(76)
      abb68(63)=abb68(6)*abb68(63)
      abb68(63)=abb68(63)+abb68(88)
      abb68(63)=abb68(63)*abb68(80)
      abb68(80)=-abb68(35)*abb68(81)
      abb68(81)=-spbk3k1*abb68(129)
      abb68(63)=abb68(81)+abb68(63)+abb68(80)
      abb68(63)=4.0_ki*abb68(63)
      abb68(19)=4.0_ki*abb68(19)
      abb68(80)=-spak3k4*abb68(99)
      abb68(37)=abb68(80)-abb68(37)
      abb68(37)=4.0_ki*abb68(37)
      abb68(25)=-abb68(25)*abb68(125)
      abb68(80)=-spal6e7*abb68(127)
      abb68(25)=abb68(25)+abb68(80)
      abb68(25)=4.0_ki*abb68(25)
      abb68(80)=-4.0_ki*abb68(104)
      abb68(81)=-4.0_ki*abb68(97)
      abb68(28)=-abb68(28)*abb68(111)
      abb68(86)=-spal5e7*abb68(113)
      abb68(28)=abb68(28)+abb68(86)
      abb68(28)=4.0_ki*abb68(28)
      abb68(86)=-spak3k4*abb68(98)
      abb68(41)=abb68(86)-abb68(41)
      abb68(41)=4.0_ki*abb68(41)
      abb68(86)=-4.0_ki*abb68(106)
      abb68(88)=-4.0_ki*abb68(122)
      abb68(92)=8.0_ki*abb68(111)
      abb68(95)=8.0_ki*abb68(125)
      abb68(20)=spbk3k1*abb68(20)
      abb68(11)=abb68(20)+abb68(11)
      abb68(11)=spak3k4*abb68(11)
      abb68(20)=-spak2k4*abb68(21)
      abb68(11)=abb68(20)+abb68(11)
      abb68(11)=8.0_ki*abb68(11)
      abb68(20)=abb68(42)*spak3k4
      abb68(21)=abb68(36)*spak2k4
      abb68(20)=abb68(20)+abb68(21)
      abb68(21)=8.0_ki*abb68(20)
      abb68(36)=abb68(94)+abb68(64)
      abb68(42)=abb68(36)*spak4e7
      abb68(64)=8.0_ki*abb68(42)
      abb68(70)=spak3k4*abb68(70)
      abb68(74)=spak2k4*abb68(74)
      abb68(70)=abb68(74)-abb68(42)+abb68(70)
      abb68(70)=8.0_ki*abb68(70)
      abb68(20)=abb68(42)-abb68(20)
      abb68(20)=4.0_ki*abb68(20)
      abb68(42)=4.0_ki*spak2e7
      abb68(42)=abb68(42)*spak3k4
      abb68(74)=-abb68(75)*abb68(42)
      abb68(18)=8.0_ki*abb68(18)
      abb68(18)=-spak2k4*abb68(18)
      abb68(42)=-abb68(73)*abb68(42)
      abb68(15)=8.0_ki*abb68(15)
      abb68(15)=-spak2k4*abb68(15)
      abb68(73)=-abb68(141)+abb68(83)
      abb68(73)=abb68(132)*abb68(73)
      abb68(36)=-spak3e7*abb68(36)
      abb68(75)=-spbk2k1*abb68(90)
      abb68(36)=abb68(36)+abb68(75)+abb68(73)
      abb68(36)=4.0_ki*abb68(36)
      abb68(73)=8.0_ki*spbk2k1
      abb68(73)=-abb68(140)*abb68(73)
      abb68(75)=abb68(104)+abb68(122)
      abb68(83)=8.0_ki*abb68(75)
      abb68(90)=spal6e7*abb68(137)
      abb68(94)=spal5e7*abb68(135)
      abb68(90)=abb68(90)+abb68(94)
      abb68(90)=abb68(6)*abb68(90)
      abb68(94)=spal5e7*abb68(136)
      abb68(96)=spal6e7*abb68(135)
      abb68(94)=abb68(96)+abb68(94)
      abb68(94)=abb68(7)*abb68(94)
      abb68(90)=abb68(90)+abb68(94)
      abb68(90)=8.0_ki*abb68(90)
      abb68(75)=-4.0_ki*abb68(75)
      abb68(94)=-spbe7k1*abb68(152)
      abb68(46)=-8.0_ki*abb68(46)
      abb68(96)=-spbe7k1*abb68(150)
      abb68(35)=-8.0_ki*abb68(35)
      R2d68=0.0_ki
      rat2 = rat2 + R2d68
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='68' value='", &
          & R2d68, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd68h0
