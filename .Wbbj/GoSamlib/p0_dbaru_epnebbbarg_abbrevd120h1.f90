module     p0_dbaru_epnebbbarg_abbrevd120h1
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(133), public :: abb120
   complex(ki), public :: R2d120
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
      abb120(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb120(2)=1.0_ki/(mB**2-es67-es56+es567)
      abb120(3)=NC**(-1)
      abb120(4)=es234**(-1)
      abb120(5)=spak2l5**(-1)
      abb120(6)=spbl5k2**(-1)
      abb120(7)=spbl6k2**(-1)
      abb120(8)=spak2l6**(-1)
      abb120(9)=sqrt(mB**2)
      abb120(10)=spbk3k2**2
      abb120(11)=spbe7l5*abb120(4)
      abb120(12)=abb120(10)*abb120(11)
      abb120(13)=mB**3
      abb120(14)=abb120(13)*abb120(12)
      abb120(15)=abb120(3)**2
      abb120(16)=abb120(15)*c2
      abb120(17)=TR*gW
      abb120(17)=abb120(17)**2*i_*CVDU*abb120(2)*abb120(1)
      abb120(18)=abb120(17)*abb120(9)
      abb120(19)=abb120(18)*abb120(14)*abb120(16)
      abb120(20)=abb120(17)*c1
      abb120(21)=abb120(20)*abb120(3)
      abb120(22)=abb120(21)*abb120(11)
      abb120(23)=2.0_ki*abb120(9)
      abb120(24)=abb120(22)*abb120(23)
      abb120(25)=abb120(13)*abb120(10)
      abb120(26)=abb120(24)*abb120(25)
      abb120(14)=abb120(14)*abb120(9)
      abb120(27)=abb120(20)*NC
      abb120(28)=abb120(14)*abb120(27)
      abb120(19)=abb120(19)+abb120(28)-abb120(26)
      abb120(28)=-spak1e7*abb120(19)
      abb120(29)=abb120(10)*abb120(4)
      abb120(30)=abb120(29)*abb120(21)
      abb120(31)=abb120(5)*spak2e7
      abb120(32)=mB**4
      abb120(33)=abb120(32)*abb120(31)
      abb120(34)=abb120(30)*abb120(33)
      abb120(35)=abb120(17)*abb120(31)
      abb120(36)=abb120(35)*abb120(16)
      abb120(37)=abb120(32)*abb120(36)
      abb120(38)=abb120(37)*abb120(29)
      abb120(39)=abb120(31)*abb120(20)
      abb120(40)=abb120(39)*abb120(4)
      abb120(41)=abb120(40)*abb120(10)
      abb120(42)=abb120(41)*NC
      abb120(43)=abb120(42)*abb120(32)
      abb120(34)=-2.0_ki*abb120(34)+abb120(38)+abb120(43)
      abb120(38)=spak1k7*spbk7e7
      abb120(43)=-abb120(34)*abb120(38)
      abb120(44)=abb120(12)*abb120(39)
      abb120(45)=abb120(44)*NC
      abb120(32)=abb120(45)*abb120(32)
      abb120(37)=abb120(37)*abb120(12)
      abb120(32)=abb120(32)+abb120(37)
      abb120(37)=2.0_ki*abb120(22)
      abb120(46)=abb120(10)*abb120(33)*abb120(37)
      abb120(46)=abb120(46)-abb120(32)
      abb120(47)=-spak1l5*abb120(46)
      abb120(28)=abb120(47)+abb120(43)+abb120(28)
      abb120(43)=spak3k4*abb120(8)*abb120(7)**2
      abb120(28)=abb120(43)*abb120(28)
      abb120(32)=abb120(32)*spak1l6
      abb120(47)=2.0_ki*spak1l6
      abb120(48)=abb120(22)*abb120(47)
      abb120(49)=abb120(48)*abb120(10)
      abb120(33)=abb120(33)*abb120(49)
      abb120(32)=abb120(33)-abb120(32)
      abb120(33)=spak3k4*abb120(7)
      abb120(50)=abb120(33)*abb120(8)
      abb120(32)=abb120(32)*abb120(50)*abb120(6)
      abb120(51)=abb120(11)*spbk3k2
      abb120(52)=abb120(20)*abb120(51)
      abb120(53)=abb120(52)*spak1l6
      abb120(54)=abb120(53)*NC
      abb120(55)=2.0_ki*abb120(3)
      abb120(56)=abb120(53)*abb120(55)
      abb120(57)=abb120(54)-abb120(56)
      abb120(58)=mB**2
      abb120(59)=-abb120(58)*abb120(57)
      abb120(51)=abb120(51)*abb120(17)
      abb120(60)=abb120(51)*c2
      abb120(61)=abb120(3)*mB
      abb120(62)=abb120(61)**2
      abb120(63)=abb120(62)*spak1l6
      abb120(64)=abb120(63)*abb120(60)
      abb120(59)=abb120(59)-abb120(64)
      abb120(65)=abb120(8)*abb120(7)
      abb120(66)=abb120(65)*spak2k4
      abb120(67)=abb120(59)*abb120(66)
      abb120(68)=abb120(67)*spae7k7
      abb120(69)=-spbk7k2*abb120(68)
      abb120(67)=abb120(67)*spal5e7
      abb120(70)=spbl5k2*abb120(67)
      abb120(28)=abb120(70)+abb120(32)+abb120(69)+abb120(28)
      abb120(28)=es12*abb120(28)
      abb120(69)=spbk3k2*abb120(4)
      abb120(70)=abb120(35)*abb120(69)
      abb120(71)=abb120(9)*mB
      abb120(72)=abb120(16)*abb120(71)
      abb120(73)=abb120(70)*abb120(72)
      abb120(74)=abb120(39)*abb120(69)
      abb120(75)=abb120(71)*NC
      abb120(76)=abb120(75)*abb120(74)
      abb120(73)=abb120(73)+abb120(76)
      abb120(76)=abb120(23)*abb120(61)
      abb120(77)=abb120(76)*abb120(74)
      abb120(78)=abb120(73)-abb120(77)
      abb120(79)=spak1l6**2
      abb120(80)=-abb120(79)*abb120(78)
      abb120(81)=abb120(80)*spbe7l6
      abb120(73)=spak1l6*abb120(73)
      abb120(77)=abb120(77)*spak1l6
      abb120(73)=abb120(73)-abb120(77)
      abb120(82)=abb120(73)*spbk7e7
      abb120(83)=-spak1k7*abb120(82)
      abb120(84)=abb120(16)*abb120(51)
      abb120(85)=abb120(84)*spak1l6
      abb120(54)=abb120(85)+abb120(54)
      abb120(85)=abb120(71)*abb120(31)
      abb120(86)=abb120(85)*abb120(54)
      abb120(87)=abb120(76)*abb120(53)
      abb120(88)=abb120(87)*abb120(31)
      abb120(86)=abb120(86)-abb120(88)
      abb120(89)=spak1l5*abb120(86)
      abb120(90)=abb120(54)-abb120(56)
      abb120(91)=abb120(9)**2
      abb120(92)=abb120(90)*abb120(91)
      abb120(93)=-spak1e7*abb120(92)
      abb120(83)=abb120(89)+abb120(83)-abb120(81)+abb120(93)
      abb120(83)=spbk3k1*spak3k4*abb120(83)
      abb120(89)=abb120(53)*abb120(61)
      abb120(93)=abb120(53)*abb120(9)
      abb120(94)=-abb120(3)*abb120(93)
      abb120(94)=abb120(89)+abb120(94)
      abb120(94)=abb120(94)*abb120(23)
      abb120(95)=abb120(15)*abb120(51)
      abb120(96)=abb120(95)*spak1l6
      abb120(97)=abb120(96)*mB
      abb120(98)=abb120(9)*abb120(96)
      abb120(98)=-abb120(97)+abb120(98)
      abb120(99)=c2*abb120(9)
      abb120(98)=abb120(98)*abb120(99)
      abb120(100)=abb120(53)*mB
      abb120(93)=-abb120(100)+abb120(93)
      abb120(101)=NC*abb120(9)
      abb120(93)=abb120(93)*abb120(101)
      abb120(93)=abb120(93)+abb120(94)+abb120(98)
      abb120(93)=spak1e7*abb120(93)
      abb120(81)=abb120(81)+abb120(93)
      abb120(93)=spbk2k1*spak2k4
      abb120(81)=abb120(93)*abb120(81)
      abb120(94)=abb120(58)*abb120(31)
      abb120(98)=abb120(94)*abb120(21)
      abb120(69)=abb120(98)*abb120(69)
      abb120(102)=abb120(69)*spak1l6
      abb120(103)=abb120(74)*spak1l6
      abb120(104)=abb120(61)*abb120(9)
      abb120(105)=-abb120(103)*abb120(104)
      abb120(105)=abb120(102)+abb120(105)
      abb120(106)=abb120(63)*abb120(70)
      abb120(107)=abb120(70)*abb120(15)
      abb120(108)=spak1l6*abb120(71)*abb120(107)
      abb120(108)=-abb120(106)+abb120(108)
      abb120(108)=c2*abb120(108)
      abb120(109)=abb120(58)*spak1l6
      abb120(110)=abb120(74)*abb120(109)
      abb120(103)=abb120(71)*abb120(103)
      abb120(103)=-abb120(110)+abb120(103)
      abb120(103)=NC*abb120(103)
      abb120(103)=abb120(103)+2.0_ki*abb120(105)+abb120(108)
      abb120(103)=abb120(103)*abb120(93)
      abb120(105)=-abb120(47)*abb120(69)
      abb120(108)=c2*abb120(106)
      abb120(111)=abb120(74)*NC
      abb120(112)=abb120(109)*abb120(111)
      abb120(105)=abb120(112)+abb120(105)+abb120(108)
      abb120(108)=spbk2k1*abb120(33)*spbl6k3
      abb120(105)=abb120(105)*abb120(108)
      abb120(103)=abb120(103)+abb120(105)
      abb120(103)=abb120(103)*abb120(38)
      abb120(105)=abb120(94)*abb120(53)
      abb120(112)=abb120(105)*abb120(3)
      abb120(113)=abb120(104)*abb120(53)*abb120(31)
      abb120(113)=-abb120(112)+abb120(113)
      abb120(114)=abb120(85)*abb120(53)
      abb120(115)=abb120(105)-abb120(114)
      abb120(115)=NC*abb120(115)
      abb120(85)=-abb120(85)*abb120(96)
      abb120(116)=abb120(63)*abb120(51)
      abb120(117)=abb120(116)*abb120(31)
      abb120(85)=abb120(117)+abb120(85)
      abb120(85)=c2*abb120(85)
      abb120(85)=abb120(115)+2.0_ki*abb120(113)+abb120(85)
      abb120(85)=abb120(85)*abb120(93)
      abb120(57)=-abb120(94)*abb120(57)
      abb120(64)=abb120(64)*abb120(31)
      abb120(57)=abb120(57)-abb120(64)
      abb120(64)=abb120(57)*abb120(108)
      abb120(64)=abb120(85)+abb120(64)
      abb120(64)=spak1l5*abb120(64)
      abb120(85)=abb120(62)*c2
      abb120(113)=abb120(85)*abb120(35)
      abb120(115)=abb120(113)*abb120(12)
      abb120(118)=abb120(58)*NC
      abb120(119)=abb120(44)*abb120(118)
      abb120(120)=abb120(37)*abb120(94)
      abb120(10)=abb120(120)*abb120(10)
      abb120(10)=-abb120(10)+abb120(115)+abb120(119)
      abb120(115)=-abb120(6)*spak3k4*abb120(79)*abb120(10)
      abb120(55)=abb120(55)*abb120(52)
      abb120(119)=abb120(52)*NC
      abb120(121)=abb120(55)-abb120(119)
      abb120(122)=-abb120(121)+abb120(84)
      abb120(79)=abb120(79)*abb120(122)
      abb120(122)=spbk7k2*spae7k7
      abb120(123)=spbl5k2*spal5e7
      abb120(122)=abb120(122)-abb120(123)
      abb120(123)=abb120(79)*spak2k4*abb120(122)
      abb120(115)=abb120(115)+abb120(123)
      abb120(115)=spbl6k1*abb120(115)
      abb120(123)=spbl6k2*spak2k4
      abb120(124)=spbl6k3*spak3k4
      abb120(123)=abb120(123)-abb120(124)
      abb120(80)=abb120(80)*abb120(123)
      abb120(30)=abb120(30)*abb120(23)*abb120(31)
      abb120(125)=abb120(36)*abb120(9)*abb120(29)
      abb120(30)=-abb120(30)+abb120(125)
      abb120(30)=abb120(30)*abb120(13)*spak1l6
      abb120(125)=abb120(40)*spak1l6
      abb120(25)=abb120(101)*abb120(25)*abb120(125)
      abb120(25)=abb120(25)+abb120(30)
      abb120(30)=-spak1k2*abb120(25)*abb120(50)
      abb120(30)=abb120(30)+abb120(80)
      abb120(30)=spbe7k1*abb120(30)
      abb120(50)=es12*abb120(50)*abb120(59)
      abb120(59)=spak3k4*abb120(79)*spbl6k1
      abb120(50)=abb120(50)-abb120(59)
      abb120(59)=spbk7k3*spae7k7
      abb120(79)=-spbl5k3*spal5e7
      abb120(59)=abb120(79)+abb120(59)
      abb120(50)=abb120(50)*abb120(59)
      abb120(54)=abb120(71)*abb120(54)
      abb120(54)=-abb120(87)+abb120(54)
      abb120(54)=spak1e7*abb120(54)*abb120(108)
      abb120(28)=abb120(30)+abb120(115)+abb120(83)+abb120(28)+abb120(64)+abb120&
      &(103)+abb120(54)+abb120(81)+abb120(50)
      abb120(28)=4.0_ki*abb120(28)
      abb120(30)=abb120(73)*spbe7l6
      abb120(50)=abb120(90)*spal5e7
      abb120(54)=abb120(50)*spbl6l5
      abb120(59)=abb120(90)*spae7k7
      abb120(64)=abb120(59)*spbk7l6
      abb120(54)=-abb120(30)+abb120(54)+abb120(64)
      abb120(54)=abb120(54)*spak4l6
      abb120(64)=abb120(23)*abb120(53)
      abb120(79)=abb120(64)-abb120(100)
      abb120(79)=abb120(79)*abb120(101)
      abb120(56)=abb120(56)*abb120(9)
      abb120(80)=abb120(56)-abb120(89)
      abb120(80)=abb120(80)*abb120(23)
      abb120(81)=abb120(96)*abb120(23)
      abb120(83)=abb120(81)-abb120(97)
      abb120(83)=abb120(83)*abb120(99)
      abb120(79)=abb120(83)+abb120(79)-abb120(80)
      abb120(80)=abb120(79)*spak4e7
      abb120(83)=abb120(112)-abb120(88)
      abb120(87)=-abb120(105)+2.0_ki*abb120(114)
      abb120(87)=abb120(87)*NC
      abb120(88)=abb120(47)*abb120(71)
      abb120(90)=abb120(31)*abb120(88)*abb120(95)
      abb120(90)=abb120(90)-abb120(117)
      abb120(90)=abb120(90)*c2
      abb120(83)=2.0_ki*abb120(83)+abb120(87)+abb120(90)
      abb120(87)=abb120(83)*spak4l5
      abb120(74)=abb120(88)*abb120(74)
      abb120(74)=abb120(74)-abb120(110)
      abb120(74)=abb120(74)*NC
      abb120(90)=abb120(107)*abb120(88)
      abb120(90)=abb120(90)-abb120(106)
      abb120(90)=abb120(90)*c2
      abb120(77)=abb120(102)-abb120(77)
      abb120(74)=abb120(90)+abb120(74)+2.0_ki*abb120(77)
      abb120(77)=spak4k7*spbk7e7
      abb120(90)=abb120(74)*abb120(77)
      abb120(84)=abb120(84)+abb120(119)
      abb120(96)=abb120(71)*abb120(84)
      abb120(102)=abb120(76)*abb120(52)
      abb120(96)=abb120(96)-abb120(102)
      abb120(102)=abb120(96)*spak1k4
      abb120(103)=spal5e7*abb120(7)
      abb120(105)=abb120(102)*abb120(103)
      abb120(67)=abb120(105)+abb120(67)
      abb120(67)=abb120(67)*spbl5k2
      abb120(105)=spae7k7*abb120(7)
      abb120(102)=abb120(102)*abb120(105)
      abb120(68)=abb120(102)+abb120(68)
      abb120(68)=abb120(68)*spbk7k2
      abb120(102)=abb120(57)*spbl6k2
      abb120(106)=abb120(6)*spak4l6
      abb120(107)=abb120(102)*abb120(106)
      abb120(54)=-abb120(54)-abb120(90)+abb120(107)-abb120(80)+abb120(87)+abb12&
      &0(67)-abb120(68)
      abb120(67)=8.0_ki*abb120(54)
      abb120(32)=abb120(32)+abb120(54)
      abb120(32)=8.0_ki*abb120(32)
      abb120(10)=spak1l5*abb120(10)
      abb120(18)=abb120(18)*mB
      abb120(54)=abb120(18)*abb120(16)
      abb120(68)=abb120(71)*abb120(27)
      abb120(54)=abb120(54)+abb120(68)
      abb120(54)=abb120(12)*abb120(54)
      abb120(68)=2.0_ki*abb120(20)
      abb120(80)=abb120(104)*abb120(68)
      abb120(87)=abb120(80)*abb120(12)
      abb120(54)=-abb120(87)+abb120(54)
      abb120(90)=-spak1e7*abb120(54)
      abb120(107)=abb120(113)*abb120(29)
      abb120(41)=abb120(41)*abb120(118)
      abb120(108)=abb120(29)*abb120(98)
      abb120(41)=-abb120(41)-abb120(107)+2.0_ki*abb120(108)
      abb120(38)=abb120(41)*abb120(38)
      abb120(10)=abb120(10)+abb120(38)+abb120(90)
      abb120(10)=abb120(33)*abb120(10)
      abb120(38)=abb120(45)*abb120(109)
      abb120(45)=abb120(49)*abb120(94)
      abb120(90)=abb120(63)*c2
      abb120(107)=abb120(90)*abb120(35)
      abb120(110)=abb120(107)*abb120(12)
      abb120(38)=abb120(110)+abb120(38)-abb120(45)
      abb120(45)=-abb120(6)*abb120(38)
      abb120(110)=spbe7k3*abb120(73)
      abb120(112)=-spbk7k3*abb120(59)
      abb120(114)=spbl5k3*abb120(50)
      abb120(45)=abb120(110)+abb120(114)+abb120(112)+abb120(45)
      abb120(45)=spak3k4*abb120(45)
      abb120(110)=spbk7k2*abb120(59)
      abb120(112)=-spbl5k2*abb120(50)
      abb120(110)=abb120(112)+abb120(110)
      abb120(110)=spak2k4*abb120(110)
      abb120(10)=abb120(45)+abb120(10)+abb120(110)
      abb120(10)=8.0_ki*abb120(10)
      abb120(45)=abb120(17)*spak1l6
      abb120(110)=-abb120(45)*abb120(72)
      abb120(20)=abb120(20)*spak1l6
      abb120(112)=-abb120(20)*abb120(75)
      abb120(110)=abb120(112)+abb120(110)
      abb120(110)=abb120(12)*abb120(110)
      abb120(87)=spak1l6*abb120(87)
      abb120(87)=abb120(87)+abb120(110)
      abb120(110)=4.0_ki*abb120(33)
      abb120(87)=abb120(87)*abb120(110)
      abb120(112)=4.0_ki*abb120(123)
      abb120(73)=-abb120(73)*abb120(112)
      abb120(114)=8.0_ki*spak1k4
      abb120(115)=abb120(114)*abb120(78)
      abb120(117)=4.0_ki*spak3k4
      abb120(119)=abb120(92)*abb120(117)
      abb120(43)=abb120(43)*spak1k2
      abb120(19)=-abb120(19)*abb120(43)
      abb120(92)=-spak2k4*abb120(92)
      abb120(19)=abb120(92)+abb120(19)
      abb120(19)=4.0_ki*abb120(19)
      abb120(92)=abb120(110)*abb120(8)
      abb120(25)=-abb120(25)*abb120(92)
      abb120(41)=-abb120(110)*abb120(91)*abb120(41)
      abb120(91)=8.0_ki*spak4l6
      abb120(123)=abb120(91)*abb120(78)
      abb120(108)=abb120(47)*abb120(108)
      abb120(29)=-abb120(29)*abb120(107)
      abb120(42)=-abb120(109)*abb120(42)
      abb120(29)=abb120(42)+abb120(108)+abb120(29)
      abb120(29)=spbk7e7*abb120(29)*abb120(110)
      abb120(42)=abb120(117)*abb120(82)
      abb120(82)=-spak2k4*abb120(82)
      abb120(34)=-spbk7e7*abb120(34)*abb120(43)
      abb120(34)=abb120(82)+abb120(34)
      abb120(34)=4.0_ki*abb120(34)
      abb120(82)=abb120(59)*abb120(112)
      abb120(55)=-abb120(55)+abb120(84)
      abb120(84)=abb120(55)*spae7k7
      abb120(107)=abb120(114)*abb120(84)
      abb120(108)=-abb120(50)*abb120(112)
      abb120(55)=abb120(55)*spal5e7
      abb120(112)=abb120(114)*abb120(55)
      abb120(126)=abb120(78)*abb120(117)
      abb120(102)=abb120(102)*abb120(6)
      abb120(127)=spak2k4*abb120(102)
      abb120(57)=-abb120(6)*abb120(57)*abb120(124)
      abb120(57)=abb120(127)+abb120(57)
      abb120(57)=4.0_ki*abb120(57)
      abb120(121)=-abb120(94)*abb120(121)
      abb120(60)=abb120(31)*abb120(62)*abb120(60)
      abb120(60)=abb120(121)+abb120(60)
      abb120(121)=abb120(60)*abb120(6)
      abb120(114)=abb120(121)*abb120(114)
      abb120(124)=4.0_ki*spak2k4
      abb120(127)=abb120(124)*abb120(78)
      abb120(38)=abb120(38)*abb120(110)
      abb120(128)=-abb120(86)*abb120(117)
      abb120(86)=spak2k4*abb120(86)
      abb120(43)=-abb120(46)*abb120(43)
      abb120(43)=abb120(86)+abb120(43)
      abb120(43)=4.0_ki*abb120(43)
      abb120(22)=abb120(22)*abb120(94)
      abb120(39)=abb120(39)*abb120(11)
      abb120(46)=abb120(39)*abb120(76)
      abb120(22)=abb120(22)-abb120(46)
      abb120(22)=abb120(22)*spak1l6
      abb120(46)=abb120(88)*abb120(39)
      abb120(86)=abb120(39)*abb120(109)
      abb120(46)=abb120(46)-abb120(86)
      abb120(46)=abb120(46)*NC
      abb120(129)=abb120(35)*abb120(88)
      abb120(130)=abb120(15)*abb120(11)
      abb120(131)=abb120(129)*abb120(130)
      abb120(132)=abb120(35)*abb120(11)
      abb120(133)=abb120(132)*abb120(63)
      abb120(131)=abb120(133)-abb120(131)
      abb120(131)=abb120(131)*c2
      abb120(22)=2.0_ki*abb120(22)+abb120(46)-abb120(131)
      abb120(22)=abb120(22)*spak4l5
      abb120(46)=abb120(23)-mB
      abb120(46)=abb120(99)*abb120(46)*abb120(130)*abb120(45)
      abb120(68)=abb120(11)*abb120(68)*abb120(9)*spak1l6
      abb120(99)=abb120(20)*abb120(11)
      abb120(130)=abb120(99)*mB
      abb120(68)=abb120(68)-abb120(130)
      abb120(68)=abb120(68)*abb120(101)
      abb120(61)=abb120(99)*abb120(61)
      abb120(24)=abb120(24)*spak1l6
      abb120(24)=abb120(61)-abb120(24)
      abb120(23)=abb120(24)*abb120(23)
      abb120(23)=abb120(68)+abb120(46)+abb120(23)
      abb120(23)=abb120(23)*spak4e7
      abb120(15)=abb120(4)*abb120(129)*abb120(15)
      abb120(24)=abb120(35)*abb120(4)
      abb120(35)=abb120(24)*abb120(63)
      abb120(15)=abb120(15)-abb120(35)
      abb120(15)=abb120(15)*c2
      abb120(35)=abb120(88)-abb120(109)
      abb120(35)=NC*abb120(35)*abb120(40)
      abb120(46)=abb120(40)*abb120(76)
      abb120(61)=abb120(46)*spak1l6
      abb120(63)=abb120(98)*abb120(4)
      abb120(68)=abb120(63)*spak1l6
      abb120(68)=abb120(68)-abb120(61)
      abb120(15)=abb120(15)+abb120(35)+2.0_ki*abb120(68)
      abb120(15)=abb120(15)*abb120(77)
      abb120(35)=abb120(48)*abb120(94)
      abb120(68)=abb120(90)*abb120(132)
      abb120(76)=abb120(86)*NC
      abb120(35)=-abb120(76)+abb120(35)-abb120(68)
      abb120(35)=abb120(35)*abb120(106)*spbl6k2
      abb120(15)=-abb120(22)+abb120(23)+abb120(15)-abb120(35)
      abb120(22)=-spbk4k2*abb120(15)
      abb120(21)=abb120(58)*abb120(47)*abb120(21)
      abb120(23)=abb120(85)*abb120(45)
      abb120(20)=abb120(118)*abb120(20)
      abb120(20)=abb120(20)+abb120(23)
      abb120(21)=abb120(21)-abb120(20)
      abb120(21)=abb120(65)*abb120(21)*spbe7l5
      abb120(35)=spae7k7*abb120(21)
      abb120(27)=abb120(27)*abb120(11)
      abb120(47)=abb120(27)*abb120(71)
      abb120(68)=abb120(80)*abb120(11)
      abb120(16)=abb120(16)*abb120(11)
      abb120(18)=abb120(18)*abb120(16)
      abb120(18)=abb120(18)+abb120(47)-abb120(68)
      abb120(47)=spbk4k2*spak1k4
      abb120(68)=abb120(18)*abb120(47)
      abb120(76)=-abb120(105)*abb120(68)
      abb120(35)=abb120(35)+abb120(76)
      abb120(35)=spbk7k2*abb120(35)
      abb120(21)=-spal5e7*abb120(21)
      abb120(68)=abb120(103)*abb120(68)
      abb120(21)=abb120(21)+abb120(68)
      abb120(21)=spbl5k2*abb120(21)
      abb120(68)=-spak3e7*abb120(79)
      abb120(74)=abb120(74)*spbk7e7
      abb120(76)=-spak3k7*abb120(74)
      abb120(79)=spak3l5*abb120(83)
      abb120(24)=abb120(24)*abb120(72)
      abb120(72)=abb120(24)*spak1l6
      abb120(80)=abb120(125)*abb120(75)
      abb120(61)=-abb120(61)+abb120(80)+abb120(72)
      abb120(61)=abb120(61)*spbe7l6
      abb120(72)=spbk4k2*spak4l6
      abb120(80)=abb120(72)*abb120(61)
      abb120(30)=abb120(102)+abb120(30)
      abb120(83)=spak3l6*abb120(30)
      abb120(45)=abb120(16)*abb120(45)
      abb120(86)=abb120(99)*NC
      abb120(45)=-abb120(48)+abb120(45)+abb120(86)
      abb120(86)=abb120(45)*abb120(72)
      abb120(88)=-spae7k7*abb120(86)
      abb120(90)=-spak3l6*abb120(59)
      abb120(88)=abb120(88)+abb120(90)
      abb120(88)=spbk7l6*abb120(88)
      abb120(86)=-spal5e7*abb120(86)
      abb120(90)=-spak3l6*abb120(50)
      abb120(86)=abb120(86)+abb120(90)
      abb120(86)=spbl6l5*abb120(86)
      abb120(90)=abb120(103)*spbl5k2
      abb120(94)=abb120(105)*spbk7k2
      abb120(90)=abb120(90)-abb120(94)
      abb120(90)=abb120(90)*abb120(96)
      abb120(94)=spak1k3*abb120(90)
      abb120(98)=abb120(99)*abb120(118)
      abb120(23)=abb120(11)*abb120(23)
      abb120(48)=abb120(48)*abb120(58)
      abb120(23)=-abb120(48)+abb120(98)+abb120(23)
      abb120(48)=es34*abb120(23)*abb120(65)*abb120(122)
      abb120(21)=abb120(48)+abb120(79)+abb120(76)+abb120(68)+abb120(94)+abb120(&
      &86)+abb120(88)+abb120(83)+abb120(80)+abb120(35)+abb120(21)+abb120(22)
      abb120(21)=4.0_ki*abb120(21)
      abb120(22)=abb120(40)*abb120(75)
      abb120(22)=-abb120(46)+abb120(22)+abb120(24)
      abb120(24)=-abb120(22)*abb120(47)
      abb120(35)=-spak1k3*abb120(78)
      abb120(24)=abb120(24)+abb120(35)
      abb120(24)=4.0_ki*abb120(24)
      abb120(35)=-abb120(22)*abb120(72)
      abb120(46)=-spak3l6*abb120(78)
      abb120(35)=abb120(35)+abb120(46)
      abb120(35)=4.0_ki*abb120(35)
      abb120(16)=abb120(16)*abb120(17)
      abb120(16)=abb120(16)+abb120(27)-abb120(37)
      abb120(17)=abb120(16)*spae7k7
      abb120(27)=abb120(47)*abb120(17)
      abb120(37)=spak1k3*abb120(84)
      abb120(27)=abb120(27)+abb120(37)
      abb120(27)=4.0_ki*abb120(27)
      abb120(37)=abb120(16)*spal5e7
      abb120(46)=-abb120(47)*abb120(37)
      abb120(48)=-spak1k3*abb120(55)
      abb120(46)=abb120(46)+abb120(48)
      abb120(46)=4.0_ki*abb120(46)
      abb120(39)=abb120(39)*abb120(118)
      abb120(11)=abb120(113)*abb120(11)
      abb120(11)=-abb120(120)+abb120(39)+abb120(11)
      abb120(39)=abb120(11)*abb120(6)
      abb120(47)=-abb120(47)*abb120(39)
      abb120(48)=-spak1k3*abb120(121)
      abb120(47)=abb120(47)+abb120(48)
      abb120(47)=4.0_ki*abb120(47)
      abb120(48)=abb120(18)*spak1k4
      abb120(65)=abb120(105)*abb120(48)
      abb120(23)=abb120(23)*abb120(66)
      abb120(66)=-spae7k7*abb120(23)
      abb120(65)=abb120(65)+abb120(66)
      abb120(65)=spbk7k2*abb120(65)
      abb120(48)=-abb120(103)*abb120(48)
      abb120(23)=spal5e7*abb120(23)
      abb120(23)=abb120(48)+abb120(23)
      abb120(23)=spbl5k2*abb120(23)
      abb120(48)=-spak4l6*abb120(61)
      abb120(15)=abb120(48)+abb120(23)+abb120(65)+abb120(15)
      abb120(15)=spbk4k3*abb120(15)
      abb120(23)=spak2k7*abb120(74)
      abb120(48)=-spak1k2*abb120(90)
      abb120(30)=-spak2l6*abb120(30)
      abb120(61)=spbk4k3*spak4l6
      abb120(45)=abb120(45)*abb120(61)
      abb120(65)=spae7k7*abb120(45)
      abb120(59)=spak2l6*abb120(59)
      abb120(59)=abb120(65)+abb120(59)
      abb120(59)=spbk7l6*abb120(59)
      abb120(45)=spal5e7*abb120(45)
      abb120(50)=spak2l6*abb120(50)
      abb120(45)=abb120(45)+abb120(50)
      abb120(45)=spbl6l5*abb120(45)
      abb120(50)=3.0_ki*spak2e7
      abb120(65)=abb120(89)*abb120(50)
      abb120(56)=-spak2e7*abb120(56)
      abb120(56)=abb120(65)+abb120(56)
      abb120(56)=abb120(9)*abb120(56)
      abb120(53)=spak2e7*abb120(53)*abb120(58)
      abb120(65)=-abb120(3)*abb120(53)
      abb120(56)=abb120(65)+abb120(56)
      abb120(65)=-abb120(97)*abb120(50)
      abb120(66)=spak2e7*abb120(81)
      abb120(65)=abb120(65)+abb120(66)
      abb120(65)=abb120(9)*abb120(65)
      abb120(66)=spak2e7*abb120(116)
      abb120(65)=abb120(66)+abb120(65)
      abb120(65)=c2*abb120(65)
      abb120(50)=-abb120(100)*abb120(50)
      abb120(64)=spak2e7*abb120(64)
      abb120(50)=abb120(50)+abb120(64)
      abb120(50)=abb120(9)*abb120(50)
      abb120(50)=abb120(53)+abb120(50)
      abb120(50)=NC*abb120(50)
      abb120(15)=abb120(23)+abb120(45)+abb120(59)+abb120(30)+abb120(48)+abb120(&
      &50)+2.0_ki*abb120(56)+abb120(65)+abb120(15)
      abb120(15)=4.0_ki*abb120(15)
      abb120(23)=spbk4k3*spak1k4
      abb120(30)=abb120(22)*abb120(23)
      abb120(45)=spak1k2*abb120(78)
      abb120(30)=abb120(30)+abb120(45)
      abb120(30)=4.0_ki*abb120(30)
      abb120(22)=abb120(22)*abb120(61)
      abb120(45)=spak2l6*abb120(78)
      abb120(22)=abb120(22)+abb120(45)
      abb120(22)=4.0_ki*abb120(22)
      abb120(16)=abb120(16)*abb120(23)
      abb120(45)=-spae7k7*abb120(16)
      abb120(48)=-spak1k2*abb120(84)
      abb120(45)=abb120(45)+abb120(48)
      abb120(45)=4.0_ki*abb120(45)
      abb120(16)=spal5e7*abb120(16)
      abb120(48)=spak1k2*abb120(55)
      abb120(16)=abb120(16)+abb120(48)
      abb120(16)=4.0_ki*abb120(16)
      abb120(23)=abb120(23)*abb120(39)
      abb120(39)=spak1k2*abb120(121)
      abb120(23)=abb120(23)+abb120(39)
      abb120(23)=4.0_ki*abb120(23)
      abb120(12)=abb120(20)*abb120(12)
      abb120(20)=abb120(49)*abb120(58)
      abb120(12)=abb120(20)-abb120(12)
      abb120(12)=abb120(12)*abb120(92)
      abb120(20)=-spae7k7*abb120(12)
      abb120(12)=spal5e7*abb120(12)
      abb120(39)=abb120(54)*abb120(110)
      abb120(48)=-spae7k7*abb120(39)
      abb120(49)=abb120(91)*abb120(84)
      abb120(50)=abb120(84)*abb120(117)
      abb120(53)=abb120(124)*abb120(84)
      abb120(54)=abb120(72)*abb120(17)
      abb120(56)=spak3l6*abb120(84)
      abb120(54)=abb120(54)+abb120(56)
      abb120(54)=4.0_ki*abb120(54)
      abb120(17)=-abb120(61)*abb120(17)
      abb120(56)=-spak2l6*abb120(84)
      abb120(17)=abb120(17)+abb120(56)
      abb120(17)=4.0_ki*abb120(17)
      abb120(39)=spal5e7*abb120(39)
      abb120(56)=abb120(91)*abb120(55)
      abb120(59)=abb120(55)*abb120(117)
      abb120(64)=abb120(124)*abb120(55)
      abb120(65)=-abb120(72)*abb120(37)
      abb120(66)=-spak3l6*abb120(55)
      abb120(65)=abb120(65)+abb120(66)
      abb120(65)=4.0_ki*abb120(65)
      abb120(37)=abb120(61)*abb120(37)
      abb120(55)=spak2l6*abb120(55)
      abb120(37)=abb120(37)+abb120(55)
      abb120(37)=4.0_ki*abb120(37)
      abb120(55)=abb120(96)*abb120(110)
      abb120(61)=abb120(111)*abb120(58)
      abb120(66)=abb120(85)*abb120(70)
      abb120(61)=-abb120(66)-abb120(61)+2.0_ki*abb120(69)
      abb120(66)=abb120(61)*spbk7e7
      abb120(68)=abb120(66)*abb120(110)
      abb120(69)=abb120(121)*abb120(117)
      abb120(70)=abb120(60)*abb120(110)
      abb120(72)=abb120(66)*spak1k7
      abb120(74)=spak1e7*abb120(96)
      abb120(75)=-spak1l5*abb120(60)
      abb120(74)=abb120(75)+abb120(74)-abb120(72)
      abb120(74)=spbk3k1*abb120(74)
      abb120(26)=-abb120(31)*abb120(26)
      abb120(14)=abb120(36)*abb120(14)
      abb120(13)=abb120(13)*abb120(101)*abb120(44)
      abb120(13)=abb120(13)+abb120(26)+abb120(14)
      abb120(13)=abb120(6)*abb120(13)
      abb120(13)=abb120(74)+abb120(13)
      abb120(13)=abb120(33)*abb120(13)
      abb120(14)=abb120(96)*abb120(7)
      abb120(26)=-spak1e7*abb120(14)
      abb120(31)=abb120(7)*abb120(72)
      abb120(33)=abb120(60)*abb120(7)
      abb120(36)=spak1l5*abb120(33)
      abb120(26)=abb120(36)+abb120(31)+abb120(26)
      abb120(26)=abb120(93)*abb120(26)
      abb120(13)=abb120(26)+abb120(13)
      abb120(13)=4.0_ki*abb120(13)
      abb120(26)=abb120(121)*spak4l6
      abb120(31)=abb120(7)*abb120(61)*abb120(77)
      abb120(14)=abb120(14)*spak4e7
      abb120(33)=abb120(33)*spak4l5
      abb120(14)=abb120(33)-abb120(14)+abb120(26)+abb120(31)
      abb120(14)=8.0_ki*abb120(14)
      abb120(26)=abb120(40)*abb120(118)
      abb120(31)=abb120(113)*abb120(4)
      abb120(26)=-abb120(31)-abb120(26)+2.0_ki*abb120(63)
      abb120(26)=abb120(26)*abb120(77)
      abb120(18)=abb120(18)*spak4e7
      abb120(31)=abb120(11)*spak4l5
      abb120(18)=abb120(26)-abb120(18)+abb120(31)
      abb120(26)=-spbk4k2*abb120(18)
      abb120(31)=spak3e7*abb120(96)
      abb120(33)=-spak3k7*abb120(66)
      abb120(36)=-spak3l5*abb120(60)
      abb120(26)=abb120(36)+abb120(33)+abb120(31)+abb120(26)
      abb120(26)=abb120(7)*abb120(26)
      abb120(11)=abb120(11)*abb120(106)
      abb120(31)=-spbk4k2*abb120(11)
      abb120(33)=-spak3l6*abb120(121)
      abb120(26)=abb120(33)+abb120(31)+abb120(26)
      abb120(26)=4.0_ki*abb120(26)
      abb120(18)=spbk4k3*abb120(18)
      abb120(31)=abb120(58)*abb120(52)
      abb120(33)=-abb120(3)*abb120(31)
      abb120(36)=abb120(52)*abb120(104)
      abb120(33)=abb120(33)+abb120(36)
      abb120(36)=abb120(51)*abb120(62)
      abb120(40)=-abb120(71)*abb120(95)
      abb120(36)=abb120(36)+abb120(40)
      abb120(36)=c2*abb120(36)
      abb120(40)=-abb120(52)*abb120(71)
      abb120(31)=abb120(31)+abb120(40)
      abb120(31)=NC*abb120(31)
      abb120(31)=abb120(31)+2.0_ki*abb120(33)+abb120(36)
      abb120(31)=spak2e7*abb120(31)
      abb120(33)=spak2k7*abb120(66)
      abb120(18)=abb120(33)+abb120(18)+abb120(31)
      abb120(18)=abb120(7)*abb120(18)
      abb120(11)=spbk4k3*abb120(11)
      abb120(31)=spak2l6*abb120(121)
      abb120(11)=abb120(31)+abb120(11)+abb120(18)
      abb120(11)=4.0_ki*abb120(11)
      R2d120=0.0_ki
      rat2 = rat2 + R2d120
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='120' value='", &
          & R2d120, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd120h1
