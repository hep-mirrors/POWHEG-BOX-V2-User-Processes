module     p0_dbaru_epnebbbarg_abbrevd64h1
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(123), public :: abb64
   complex(ki), public :: R2d64
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
      abb64(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb64(2)=1.0_ki/(es71+es34+es56-es712-es234)
      abb64(3)=NC**(-1)
      abb64(4)=sqrt2**(-1)
      abb64(5)=es56**(-1)
      abb64(6)=es71**(-1)
      abb64(7)=spak2l5**(-1)
      abb64(8)=spak2k7**(-1)
      abb64(9)=spak2l6**(-1)
      abb64(10)=spbl6k2**(-1)
      abb64(11)=spbl5k2**(-1)
      abb64(12)=1.0_ki/(es34+es567-es12-es234)
      abb64(13)=abb64(2)*TR*gW
      abb64(13)=i_*spak1k4*CVDU*abb64(8)*abb64(5)*abb64(4)*abb64(13)**2
      abb64(14)=abb64(13)*abb64(12)*abb64(1)
      abb64(15)=abb64(3)**2
      abb64(15)=abb64(15)-1.0_ki
      abb64(16)=abb64(14)*abb64(15)
      abb64(17)=mB**2
      abb64(18)=abb64(17)*abb64(16)
      abb64(19)=abb64(18)*c4
      abb64(20)=c3*abb64(14)
      abb64(21)=abb64(20)*abb64(17)
      abb64(22)=abb64(21)*abb64(3)
      abb64(19)=abb64(19)-abb64(22)
      abb64(23)=spak2k4*spbk4k3
      abb64(24)=abb64(23)*spal5l6
      abb64(25)=abb64(19)*abb64(24)
      abb64(13)=abb64(13)*spak1k2*abb64(1)
      abb64(26)=abb64(17)*abb64(13)
      abb64(27)=abb64(26)*abb64(12)
      abb64(28)=abb64(27)*abb64(15)
      abb64(29)=abb64(28)*c4
      abb64(30)=c3*abb64(3)
      abb64(31)=abb64(30)*abb64(27)
      abb64(32)=abb64(29)-abb64(31)
      abb64(33)=spbk3k1*spal5l6
      abb64(34)=abb64(32)*abb64(33)
      abb64(25)=abb64(25)-abb64(34)
      abb64(25)=abb64(25)*abb64(7)
      abb64(14)=spbl5k2*abb64(14)
      abb64(34)=abb64(14)*abb64(15)
      abb64(35)=abb64(34)*c4
      abb64(36)=abb64(30)*abb64(14)
      abb64(35)=abb64(35)-abb64(36)
      abb64(37)=abb64(35)*abb64(24)
      abb64(38)=abb64(13)*abb64(12)
      abb64(39)=spbl5k2*abb64(15)*abb64(38)
      abb64(40)=abb64(39)*c4
      abb64(41)=c3*spbl5k2
      abb64(42)=abb64(41)*abb64(3)
      abb64(43)=abb64(42)*abb64(38)
      abb64(40)=abb64(40)-abb64(43)
      abb64(43)=abb64(40)*abb64(33)
      abb64(37)=abb64(37)-abb64(43)
      abb64(25)=abb64(25)-abb64(37)
      abb64(43)=-spak2l6*abb64(25)
      abb64(44)=abb64(24)*abb64(21)
      abb64(45)=abb64(27)*c3
      abb64(46)=abb64(45)*abb64(33)
      abb64(44)=abb64(44)-abb64(46)
      abb64(46)=abb64(44)*abb64(7)
      abb64(47)=abb64(14)*c3
      abb64(48)=abb64(24)*abb64(47)
      abb64(49)=abb64(38)*abb64(41)
      abb64(50)=abb64(33)*abb64(49)
      abb64(48)=abb64(48)-abb64(50)
      abb64(46)=abb64(46)-abb64(48)
      abb64(50)=-NC*spak2l6*abb64(46)
      abb64(43)=abb64(50)+abb64(43)
      abb64(43)=spbk7l5*abb64(43)
      abb64(50)=abb64(15)*abb64(13)*spbl5k2
      abb64(51)=abb64(50)*c4
      abb64(52)=abb64(41)*abb64(13)
      abb64(53)=abb64(52)*abb64(3)
      abb64(51)=abb64(51)-abb64(53)
      abb64(54)=abb64(26)*abb64(15)
      abb64(55)=abb64(54)*c4
      abb64(56)=abb64(30)*abb64(26)
      abb64(57)=abb64(55)-abb64(56)
      abb64(58)=2.0_ki*abb64(7)
      abb64(59)=-abb64(57)*abb64(58)
      abb64(60)=abb64(26)*c3
      abb64(61)=-abb64(60)*abb64(58)
      abb64(61)=abb64(52)+abb64(61)
      abb64(61)=NC*abb64(61)
      abb64(59)=abb64(61)+abb64(51)+abb64(59)
      abb64(61)=spak2l6**2
      abb64(62)=spbk7k1*abb64(6)
      abb64(63)=abb64(61)*abb64(62)
      abb64(59)=spbk3k2*abb64(63)*abb64(59)
      abb64(64)=mB**4
      abb64(65)=abb64(64)*abb64(13)
      abb64(66)=abb64(15)*c4
      abb64(67)=abb64(65)*abb64(66)
      abb64(68)=abb64(13)*c3
      abb64(69)=abb64(3)*abb64(68)
      abb64(70)=abb64(69)*abb64(64)
      abb64(67)=abb64(67)-abb64(70)
      abb64(63)=abb64(67)*abb64(63)
      abb64(71)=abb64(65)*c3
      abb64(72)=abb64(62)*NC
      abb64(73)=abb64(61)*abb64(72)*abb64(71)
      abb64(63)=abb64(63)+abb64(73)
      abb64(63)=spbk3k2*abb64(63)
      abb64(73)=abb64(64)*abb64(16)
      abb64(74)=abb64(73)*c4
      abb64(75)=abb64(20)*abb64(3)
      abb64(76)=abb64(75)*abb64(64)
      abb64(74)=abb64(74)-abb64(76)
      abb64(77)=abb64(23)*spbk7k2
      abb64(78)=abb64(61)*abb64(77)
      abb64(79)=-abb64(74)*abb64(78)
      abb64(80)=abb64(64)*abb64(38)
      abb64(81)=abb64(80)*abb64(66)
      abb64(82)=abb64(80)*abb64(30)
      abb64(81)=abb64(81)-abb64(82)
      abb64(83)=spbk3k1*spbk7k2
      abb64(61)=abb64(61)*abb64(83)
      abb64(84)=abb64(81)*abb64(61)
      abb64(63)=abb64(63)+abb64(79)+abb64(84)
      abb64(79)=abb64(7)**2
      abb64(63)=abb64(79)*abb64(63)
      abb64(84)=-abb64(64)*abb64(20)*abb64(78)
      abb64(85)=abb64(80)*c3
      abb64(86)=abb64(61)*abb64(85)
      abb64(84)=abb64(84)+abb64(86)
      abb64(86)=abb64(79)*NC
      abb64(84)=abb64(84)*abb64(86)
      abb64(63)=abb64(84)+abb64(63)
      abb64(63)=abb64(11)*abb64(63)
      abb64(84)=abb64(19)*abb64(78)
      abb64(87)=-abb64(32)*abb64(61)
      abb64(84)=abb64(84)+abb64(87)
      abb64(84)=abb64(84)*abb64(58)
      abb64(87)=abb64(21)*abb64(78)
      abb64(88)=-abb64(45)*abb64(61)
      abb64(87)=abb64(87)+abb64(88)
      abb64(87)=abb64(87)*abb64(58)
      abb64(88)=abb64(49)*abb64(61)
      abb64(89)=-abb64(47)*abb64(78)
      abb64(87)=abb64(87)+abb64(89)+abb64(88)
      abb64(87)=NC*abb64(87)
      abb64(78)=-abb64(35)*abb64(78)
      abb64(61)=abb64(40)*abb64(61)
      abb64(43)=abb64(63)+abb64(59)+abb64(43)+abb64(87)+abb64(84)+abb64(78)+abb&
      &64(61)
      abb64(43)=spbl6k2*abb64(43)
      abb64(59)=spbl5k2**2
      abb64(61)=abb64(75)*abb64(59)
      abb64(63)=abb64(59)*c4
      abb64(78)=abb64(16)*abb64(63)
      abb64(61)=abb64(61)-abb64(78)
      abb64(78)=-abb64(61)*abb64(24)
      abb64(84)=abb64(30)*abb64(38)
      abb64(87)=abb64(84)*abb64(59)
      abb64(15)=c4*abb64(59)*abb64(15)
      abb64(88)=abb64(38)*abb64(15)
      abb64(87)=abb64(87)-abb64(88)
      abb64(88)=abb64(87)*abb64(33)
      abb64(89)=abb64(24)*abb64(20)
      abb64(90)=abb64(59)*abb64(89)
      abb64(91)=abb64(59)*c3
      abb64(92)=abb64(91)*abb64(38)
      abb64(93)=-abb64(33)*abb64(92)
      abb64(90)=abb64(90)+abb64(93)
      abb64(90)=NC*abb64(90)
      abb64(78)=abb64(90)+abb64(78)+abb64(88)
      abb64(78)=spbk7l5*abb64(78)
      abb64(88)=abb64(69)*abb64(59)
      abb64(90)=abb64(13)*abb64(15)
      abb64(88)=abb64(88)-abb64(90)
      abb64(90)=abb64(62)*spak2l6
      abb64(93)=-abb64(88)*abb64(90)
      abb64(56)=abb64(56)*abb64(59)
      abb64(54)=abb64(54)*abb64(63)
      abb64(54)=abb64(56)-abb64(54)
      abb64(56)=abb64(62)*abb64(10)
      abb64(94)=2.0_ki*abb64(56)
      abb64(94)=abb64(54)*abb64(94)
      abb64(95)=abb64(91)*abb64(13)
      abb64(96)=abb64(90)*abb64(95)
      abb64(97)=abb64(56)*abb64(60)
      abb64(98)=abb64(59)*abb64(97)
      abb64(96)=abb64(96)-2.0_ki*abb64(98)
      abb64(96)=NC*abb64(96)
      abb64(93)=abb64(96)+abb64(93)+abb64(94)
      abb64(93)=spbk3k2*abb64(93)
      abb64(22)=abb64(22)*abb64(59)
      abb64(18)=abb64(18)*abb64(63)
      abb64(18)=abb64(22)-abb64(18)
      abb64(22)=-abb64(18)*abb64(77)
      abb64(31)=abb64(31)*abb64(59)
      abb64(28)=abb64(28)*abb64(63)
      abb64(28)=abb64(31)-abb64(28)
      abb64(31)=abb64(28)*abb64(83)
      abb64(22)=abb64(22)+abb64(31)
      abb64(31)=2.0_ki*abb64(10)
      abb64(22)=abb64(22)*abb64(31)
      abb64(94)=abb64(77)*spak2l6
      abb64(61)=abb64(61)*abb64(94)
      abb64(96)=abb64(83)*spak2l6
      abb64(87)=-abb64(87)*abb64(96)
      abb64(98)=abb64(21)*abb64(77)
      abb64(99)=abb64(45)*abb64(83)
      abb64(98)=abb64(98)-abb64(99)
      abb64(99)=abb64(31)*abb64(98)
      abb64(100)=abb64(94)*abb64(20)
      abb64(99)=abb64(99)-abb64(100)
      abb64(99)=abb64(59)*abb64(99)
      abb64(92)=abb64(96)*abb64(92)
      abb64(92)=abb64(92)+abb64(99)
      abb64(92)=NC*abb64(92)
      abb64(22)=abb64(93)+abb64(78)+abb64(92)+abb64(22)+abb64(61)+abb64(87)
      abb64(22)=spak2l5*abb64(22)
      abb64(61)=abb64(19)*abb64(94)
      abb64(78)=abb64(32)*abb64(96)
      abb64(61)=abb64(61)-abb64(78)
      abb64(78)=abb64(61)*abb64(7)
      abb64(87)=abb64(35)*abb64(94)
      abb64(92)=abb64(40)*abb64(96)
      abb64(87)=abb64(87)-abb64(92)
      abb64(92)=abb64(78)-abb64(87)
      abb64(93)=-spal5l6*abb64(92)
      abb64(99)=abb64(47)*abb64(23)
      abb64(101)=abb64(49)*spbk3k1
      abb64(99)=abb64(99)-abb64(101)
      abb64(99)=abb64(99)*NC
      abb64(101)=abb64(35)*abb64(23)
      abb64(102)=abb64(40)*spbk3k1
      abb64(99)=abb64(99)+abb64(101)-abb64(102)
      abb64(101)=spal5l6**2
      abb64(102)=-spbk7l5*abb64(101)*abb64(99)
      abb64(103)=abb64(51)*abb64(90)
      abb64(104)=abb64(90)*abb64(7)
      abb64(105)=abb64(57)*abb64(104)
      abb64(106)=abb64(103)-abb64(105)
      abb64(107)=abb64(106)*spal5l6
      abb64(55)=-spbl5k2*abb64(55)
      abb64(108)=abb64(42)*abb64(26)
      abb64(55)=abb64(55)+abb64(108)
      abb64(108)=abb64(62)*spal5l6
      abb64(109)=abb64(108)*abb64(10)
      abb64(110)=abb64(109)*abb64(55)
      abb64(111)=abb64(90)*abb64(52)
      abb64(112)=abb64(104)*abb64(60)
      abb64(113)=abb64(111)-abb64(112)
      abb64(114)=abb64(113)*spal5l6
      abb64(26)=abb64(26)*abb64(41)
      abb64(115)=abb64(26)*abb64(109)
      abb64(115)=abb64(115)-abb64(114)
      abb64(115)=NC*abb64(115)
      abb64(115)=abb64(115)-abb64(110)-abb64(107)
      abb64(115)=spbk3k2*abb64(115)
      abb64(30)=abb64(66)-abb64(30)
      abb64(14)=abb64(30)*abb64(14)*abb64(17)
      abb64(30)=abb64(77)*spal5l6
      abb64(116)=abb64(14)*abb64(30)
      abb64(29)=spbl5k2*abb64(29)
      abb64(117)=abb64(42)*abb64(27)
      abb64(29)=abb64(29)-abb64(117)
      abb64(117)=abb64(83)*spal5l6
      abb64(118)=abb64(29)*abb64(117)
      abb64(116)=abb64(116)-abb64(118)
      abb64(116)=abb64(116)*abb64(10)
      abb64(118)=abb64(94)*abb64(21)
      abb64(119)=abb64(45)*abb64(96)
      abb64(118)=abb64(118)-abb64(119)
      abb64(119)=abb64(118)*abb64(7)
      abb64(120)=abb64(96)*abb64(49)
      abb64(121)=abb64(94)*abb64(47)
      abb64(120)=abb64(120)-abb64(121)
      abb64(121)=abb64(119)+abb64(120)
      abb64(122)=-spal5l6*abb64(121)
      abb64(27)=abb64(27)*abb64(41)
      abb64(41)=abb64(117)*abb64(27)
      abb64(17)=abb64(47)*abb64(17)
      abb64(123)=abb64(30)*abb64(17)
      abb64(41)=abb64(41)-abb64(123)
      abb64(123)=abb64(10)*abb64(41)
      abb64(122)=abb64(123)+abb64(122)
      abb64(122)=NC*abb64(122)
      abb64(93)=abb64(115)+abb64(102)+abb64(122)-abb64(116)+abb64(93)
      abb64(93)=spbl6l5*abb64(93)
      abb64(102)=NC*abb64(114)
      abb64(102)=abb64(102)+abb64(107)
      abb64(102)=spbl6k2*abb64(102)
      abb64(54)=abb64(54)*abb64(109)
      abb64(107)=abb64(108)*NC
      abb64(109)=-abb64(59)*abb64(60)*abb64(107)*abb64(10)
      abb64(54)=abb64(54)+abb64(109)
      abb64(109)=abb64(9)*spak2l5
      abb64(54)=abb64(54)*abb64(109)
      abb64(114)=abb64(55)*abb64(108)
      abb64(115)=abb64(107)*abb64(26)
      abb64(114)=abb64(114)-abb64(115)
      abb64(88)=-abb64(88)*abb64(108)
      abb64(95)=abb64(107)*abb64(95)
      abb64(88)=abb64(88)+abb64(95)
      abb64(88)=spak2l5*abb64(88)
      abb64(95)=abb64(51)*abb64(62)
      abb64(122)=abb64(72)*abb64(52)
      abb64(95)=abb64(95)+abb64(122)
      abb64(101)=-spbl6l5*abb64(101)*abb64(95)
      abb64(54)=abb64(54)+abb64(102)+abb64(101)+2.0_ki*abb64(114)+abb64(88)
      abb64(54)=spbl5k3*abb64(54)
      abb64(88)=3.0_ki*abb64(56)
      abb64(101)=abb64(64)*abb64(52)*abb64(88)
      abb64(102)=4.0_ki*abb64(90)
      abb64(114)=-abb64(26)*abb64(102)
      abb64(104)=3.0_ki*abb64(104)
      abb64(123)=abb64(71)*abb64(104)
      abb64(101)=abb64(123)+abb64(114)+abb64(101)
      abb64(101)=NC*abb64(101)
      abb64(102)=abb64(55)*abb64(102)
      abb64(53)=abb64(53)*abb64(64)
      abb64(114)=abb64(64)*c4
      abb64(50)=abb64(50)*abb64(114)
      abb64(50)=abb64(53)-abb64(50)
      abb64(53)=-abb64(50)*abb64(88)
      abb64(88)=abb64(67)*abb64(104)
      abb64(53)=abb64(101)+abb64(88)+abb64(102)+abb64(53)
      abb64(53)=spbk3k2*abb64(53)
      abb64(88)=abb64(65)*abb64(15)
      abb64(70)=-abb64(59)*abb64(70)
      abb64(70)=abb64(88)+abb64(70)
      abb64(70)=abb64(70)*abb64(62)
      abb64(65)=abb64(65)*abb64(91)*abb64(72)
      abb64(65)=abb64(70)+abb64(65)
      abb64(65)=spbk3k2*abb64(65)
      abb64(63)=-abb64(73)*abb64(63)
      abb64(70)=abb64(59)*abb64(76)
      abb64(63)=abb64(63)+abb64(70)
      abb64(63)=abb64(63)*abb64(77)
      abb64(15)=abb64(80)*abb64(15)
      abb64(70)=-abb64(59)*abb64(82)
      abb64(15)=abb64(15)+abb64(70)
      abb64(15)=abb64(15)*abb64(83)
      abb64(70)=abb64(83)*abb64(80)*abb64(91)
      abb64(73)=abb64(77)*abb64(64)
      abb64(20)=abb64(73)*abb64(20)
      abb64(76)=-abb64(59)*abb64(20)
      abb64(70)=abb64(76)+abb64(70)
      abb64(70)=NC*abb64(70)
      abb64(15)=abb64(65)+abb64(70)+abb64(63)+abb64(15)
      abb64(63)=abb64(10)**2
      abb64(15)=abb64(63)*abb64(15)
      abb64(18)=abb64(18)*abb64(24)
      abb64(28)=-abb64(28)*abb64(33)
      abb64(18)=abb64(18)+abb64(28)
      abb64(18)=abb64(10)*abb64(18)
      abb64(28)=NC*abb64(10)
      abb64(44)=-abb64(28)*abb64(59)*abb64(44)
      abb64(18)=abb64(18)+abb64(44)
      abb64(18)=spbk7l5*abb64(18)
      abb64(15)=abb64(18)+abb64(15)
      abb64(15)=abb64(15)*abb64(109)
      abb64(18)=abb64(94)*abb64(17)
      abb64(44)=-abb64(96)*abb64(27)
      abb64(18)=abb64(18)+abb64(44)
      abb64(44)=abb64(73)*abb64(47)
      abb64(59)=abb64(49)*abb64(83)
      abb64(65)=abb64(59)*abb64(64)
      abb64(44)=abb64(44)-abb64(65)
      abb64(65)=3.0_ki*abb64(10)
      abb64(70)=-abb64(44)*abb64(65)
      abb64(73)=abb64(100)*abb64(64)
      abb64(76)=abb64(85)*abb64(96)
      abb64(73)=abb64(73)-abb64(76)
      abb64(76)=3.0_ki*abb64(7)
      abb64(82)=-abb64(73)*abb64(76)
      abb64(18)=abb64(82)+4.0_ki*abb64(18)+abb64(70)
      abb64(18)=NC*abb64(18)
      abb64(70)=abb64(14)*abb64(94)
      abb64(82)=-abb64(29)*abb64(96)
      abb64(70)=abb64(70)+abb64(82)
      abb64(42)=abb64(80)*abb64(42)
      abb64(39)=abb64(39)*abb64(114)
      abb64(39)=abb64(42)-abb64(39)
      abb64(39)=abb64(39)*abb64(83)
      abb64(36)=abb64(36)*abb64(64)
      abb64(34)=abb64(34)*abb64(114)
      abb64(34)=abb64(36)-abb64(34)
      abb64(34)=abb64(34)*abb64(77)
      abb64(34)=abb64(39)-abb64(34)
      abb64(36)=-abb64(34)*abb64(65)
      abb64(39)=abb64(81)*abb64(96)
      abb64(42)=abb64(74)*abb64(94)
      abb64(39)=abb64(39)-abb64(42)
      abb64(42)=abb64(39)*abb64(76)
      abb64(65)=abb64(14)*abb64(24)
      abb64(76)=abb64(29)*abb64(33)
      abb64(65)=abb64(65)-abb64(76)
      abb64(76)=abb64(17)*abb64(24)
      abb64(80)=abb64(27)*abb64(33)
      abb64(76)=abb64(76)-abb64(80)
      abb64(80)=-NC*abb64(76)
      abb64(80)=abb64(80)-abb64(65)
      abb64(82)=2.0_ki*spbk7l5
      abb64(80)=abb64(80)*abb64(82)
      abb64(15)=abb64(54)+abb64(15)+abb64(93)+abb64(22)+abb64(53)+abb64(80)+abb&
      &64(18)+abb64(42)+4.0_ki*abb64(70)+abb64(36)+abb64(43)
      abb64(15)=8.0_ki*abb64(15)
      abb64(18)=abb64(26)*abb64(56)
      abb64(22)=-abb64(18)+abb64(113)
      abb64(22)=abb64(22)*NC
      abb64(26)=abb64(55)*abb64(56)
      abb64(22)=abb64(22)+abb64(26)+abb64(106)
      abb64(36)=abb64(22)*spbk3k2
      abb64(42)=abb64(17)*abb64(77)
      abb64(43)=abb64(27)*abb64(83)
      abb64(42)=abb64(42)-abb64(43)
      abb64(43)=abb64(42)*abb64(10)
      abb64(43)=abb64(43)+abb64(121)
      abb64(43)=abb64(43)*NC
      abb64(53)=abb64(14)*abb64(77)
      abb64(54)=abb64(29)*abb64(83)
      abb64(53)=abb64(53)-abb64(54)
      abb64(54)=abb64(53)*abb64(10)
      abb64(36)=abb64(36)+abb64(43)+abb64(54)+abb64(92)
      abb64(43)=abb64(48)*NC
      abb64(37)=abb64(43)+abb64(37)
      abb64(43)=abb64(37)*spbk7l5
      abb64(48)=abb64(51)*abb64(108)
      abb64(51)=abb64(107)*abb64(52)
      abb64(51)=abb64(51)+abb64(48)
      abb64(55)=abb64(51)*spbl5k3
      abb64(43)=abb64(43)+abb64(55)
      abb64(55)=-abb64(43)-abb64(36)
      abb64(55)=32.0_ki*abb64(55)
      abb64(36)=-abb64(43)-2.0_ki*abb64(36)
      abb64(36)=16.0_ki*abb64(36)
      abb64(43)=-abb64(57)*abb64(90)
      abb64(70)=abb64(67)*abb64(56)
      abb64(43)=abb64(43)+abb64(70)
      abb64(43)=abb64(43)*abb64(58)
      abb64(70)=-abb64(60)*abb64(90)
      abb64(80)=abb64(56)*abb64(71)
      abb64(70)=abb64(70)+abb64(80)
      abb64(70)=abb64(70)*abb64(58)
      abb64(70)=abb64(70)+abb64(111)-2.0_ki*abb64(18)
      abb64(70)=NC*abb64(70)
      abb64(43)=abb64(70)+abb64(43)+abb64(103)+2.0_ki*abb64(26)
      abb64(43)=spbk3k2*abb64(43)
      abb64(70)=-abb64(74)*abb64(77)
      abb64(74)=abb64(81)*abb64(83)
      abb64(70)=abb64(70)+abb64(74)
      abb64(70)=abb64(10)*abb64(70)
      abb64(61)=abb64(70)+abb64(61)
      abb64(61)=abb64(61)*abb64(58)
      abb64(70)=abb64(83)*abb64(85)
      abb64(20)=-abb64(20)+abb64(70)
      abb64(20)=abb64(10)*abb64(20)
      abb64(20)=abb64(20)+abb64(118)
      abb64(20)=abb64(20)*abb64(58)
      abb64(58)=abb64(42)*abb64(31)
      abb64(20)=abb64(20)+abb64(58)+abb64(120)
      abb64(20)=NC*abb64(20)
      abb64(46)=-NC*abb64(46)
      abb64(25)=abb64(46)-abb64(25)
      abb64(25)=abb64(25)*abb64(82)
      abb64(44)=-NC*abb64(44)
      abb64(46)=-abb64(50)*abb64(62)
      abb64(50)=abb64(64)*abb64(122)
      abb64(46)=abb64(46)+abb64(50)
      abb64(46)=spbk3k2*abb64(46)
      abb64(34)=abb64(46)-abb64(34)+abb64(44)
      abb64(34)=abb64(63)*abb64(34)
      abb64(44)=-abb64(10)*abb64(65)
      abb64(46)=-abb64(76)*abb64(28)
      abb64(44)=abb64(44)+abb64(46)
      abb64(44)=abb64(44)*abb64(82)
      abb64(34)=abb64(44)+abb64(34)
      abb64(34)=abb64(9)*abb64(34)
      abb64(44)=abb64(108)*abb64(52)
      abb64(46)=abb64(108)*abb64(7)
      abb64(50)=abb64(46)*abb64(60)
      abb64(44)=abb64(44)-abb64(50)
      abb64(44)=abb64(44)*NC
      abb64(46)=abb64(46)*abb64(57)
      abb64(44)=abb64(44)-abb64(46)+abb64(48)
      abb64(46)=abb64(115)*abb64(10)
      abb64(46)=abb64(46)-abb64(110)
      abb64(48)=-abb64(9)*abb64(46)
      abb64(48)=abb64(48)+abb64(44)
      abb64(48)=spbl5k3*abb64(48)
      abb64(39)=abb64(39)*abb64(79)
      abb64(50)=-abb64(73)*abb64(86)
      abb64(52)=abb64(67)*abb64(79)
      abb64(58)=abb64(71)*abb64(86)
      abb64(52)=abb64(52)+abb64(58)
      abb64(58)=abb64(90)*spbk3k2
      abb64(52)=abb64(52)*abb64(58)
      abb64(39)=abb64(52)+abb64(39)+abb64(50)
      abb64(39)=abb64(11)*abb64(39)
      abb64(31)=abb64(53)*abb64(31)
      abb64(20)=abb64(39)+2.0_ki*abb64(48)+abb64(34)+abb64(43)+abb64(25)+abb64(&
      &20)+abb64(61)+abb64(31)-abb64(87)
      abb64(20)=16.0_ki*abb64(20)
      abb64(25)=-abb64(35)*abb64(77)
      abb64(31)=abb64(40)*abb64(83)
      abb64(34)=-abb64(77)*abb64(47)
      abb64(34)=abb64(34)+abb64(59)
      abb64(34)=NC*abb64(34)
      abb64(39)=spbk3k2*abb64(95)
      abb64(25)=abb64(39)+abb64(34)+abb64(25)+abb64(31)
      abb64(25)=spak2l5*abb64(25)
      abb64(31)=abb64(112)*NC
      abb64(31)=abb64(31)+abb64(105)
      abb64(31)=abb64(31)*spbk3k2
      abb64(34)=abb64(119)*NC
      abb64(31)=abb64(31)-abb64(34)-abb64(78)
      abb64(31)=abb64(31)*abb64(11)
      abb64(34)=abb64(38)*c3
      abb64(39)=abb64(34)*abb64(33)
      abb64(39)=abb64(39)-abb64(89)
      abb64(39)=abb64(39)*NC
      abb64(38)=abb64(38)*abb64(66)
      abb64(38)=abb64(38)-abb64(84)
      abb64(33)=abb64(38)*abb64(33)
      abb64(16)=abb64(16)*c4
      abb64(16)=abb64(16)-abb64(75)
      abb64(24)=abb64(16)*abb64(24)
      abb64(24)=abb64(39)+abb64(33)-abb64(24)
      abb64(24)=abb64(24)*spbk7l5
      abb64(33)=abb64(38)*abb64(96)
      abb64(16)=abb64(16)*abb64(94)
      abb64(16)=abb64(31)+abb64(24)-abb64(33)+abb64(16)
      abb64(24)=abb64(34)*abb64(96)
      abb64(24)=abb64(24)-abb64(100)
      abb64(31)=NC*abb64(24)
      abb64(33)=abb64(68)*abb64(107)
      abb64(13)=abb64(13)*abb64(66)
      abb64(13)=abb64(13)-abb64(69)
      abb64(34)=abb64(13)*abb64(108)
      abb64(33)=abb64(33)+abb64(34)
      abb64(34)=spbl5k3*abb64(33)
      abb64(38)=NC*abb64(68)
      abb64(38)=abb64(13)+abb64(38)
      abb64(38)=abb64(38)*abb64(58)
      abb64(31)=abb64(34)+abb64(38)+abb64(31)-abb64(16)
      abb64(31)=spbl6k2*abb64(31)
      abb64(34)=abb64(19)*abb64(77)
      abb64(38)=abb64(32)*abb64(83)
      abb64(34)=abb64(34)-abb64(38)
      abb64(38)=NC*abb64(98)
      abb64(39)=abb64(57)*abb64(62)
      abb64(43)=abb64(72)*abb64(60)
      abb64(39)=abb64(39)+abb64(43)
      abb64(43)=-spbk3k2*abb64(39)
      abb64(38)=abb64(43)+abb64(38)+abb64(34)
      abb64(42)=abb64(42)*abb64(28)
      abb64(18)=abb64(18)*NC
      abb64(18)=abb64(18)-abb64(26)
      abb64(26)=-spbk3k2*abb64(18)
      abb64(26)=abb64(26)+abb64(54)+abb64(42)
      abb64(26)=abb64(26)*abb64(109)
      abb64(25)=abb64(26)+2.0_ki*abb64(38)+abb64(25)+abb64(31)
      abb64(26)=-spbk7l6*abb64(37)
      abb64(31)=-spbl6k3*abb64(51)
      abb64(25)=abb64(31)+2.0_ki*abb64(25)+abb64(26)
      abb64(25)=8.0_ki*abb64(25)
      abb64(26)=-abb64(10)*abb64(34)
      abb64(31)=-abb64(10)*abb64(98)
      abb64(24)=abb64(31)-abb64(24)
      abb64(24)=NC*abb64(24)
      abb64(31)=abb64(57)*abb64(56)
      abb64(34)=-abb64(90)*abb64(68)
      abb64(34)=abb64(34)+abb64(97)
      abb64(34)=NC*abb64(34)
      abb64(13)=-abb64(13)*abb64(90)
      abb64(13)=abb64(34)+abb64(13)+abb64(31)
      abb64(13)=spbk3k2*abb64(13)
      abb64(13)=abb64(13)+abb64(24)+abb64(26)+abb64(16)
      abb64(13)=spbl6l5*abb64(13)
      abb64(16)=spak2l5*abb64(99)
      abb64(14)=abb64(14)*abb64(23)
      abb64(24)=abb64(29)*spbk3k1
      abb64(14)=abb64(14)-abb64(24)
      abb64(14)=abb64(14)*abb64(10)
      abb64(17)=abb64(17)*abb64(23)
      abb64(24)=abb64(27)*spbk3k1
      abb64(17)=abb64(17)-abb64(24)
      abb64(24)=-abb64(17)*abb64(28)
      abb64(24)=-abb64(14)+abb64(24)
      abb64(24)=abb64(24)*abb64(109)
      abb64(26)=-abb64(19)*abb64(23)
      abb64(27)=spbk3k1*abb64(32)
      abb64(29)=-abb64(23)*abb64(21)
      abb64(31)=spbk3k1*abb64(45)
      abb64(29)=abb64(29)+abb64(31)
      abb64(29)=NC*abb64(29)
      abb64(16)=abb64(24)+abb64(16)+abb64(29)+abb64(26)+abb64(27)
      abb64(16)=spbk7l5*abb64(16)
      abb64(24)=spak2l5*abb64(95)
      abb64(26)=-spbl6l5*abb64(33)
      abb64(18)=-abb64(18)*abb64(109)
      abb64(18)=abb64(18)+abb64(26)+abb64(24)-abb64(39)
      abb64(18)=spbl5k3*abb64(18)
      abb64(13)=abb64(18)+abb64(16)+abb64(13)
      abb64(16)=abb64(23)*spak2l6
      abb64(18)=abb64(16)*abb64(21)
      abb64(23)=spbk3k1*spak2l6
      abb64(24)=abb64(23)*abb64(45)
      abb64(18)=abb64(18)-abb64(24)
      abb64(18)=abb64(18)*abb64(7)
      abb64(17)=abb64(17)*abb64(10)
      abb64(24)=abb64(16)*abb64(47)
      abb64(26)=abb64(23)*abb64(49)
      abb64(17)=-abb64(18)-abb64(17)+abb64(24)-abb64(26)
      abb64(17)=abb64(17)*NC
      abb64(18)=abb64(16)*abb64(19)
      abb64(24)=abb64(23)*abb64(32)
      abb64(18)=abb64(18)-abb64(24)
      abb64(18)=abb64(18)*abb64(7)
      abb64(16)=abb64(16)*abb64(35)
      abb64(23)=abb64(23)*abb64(40)
      abb64(14)=abb64(17)-abb64(18)-abb64(14)+abb64(16)-abb64(23)
      abb64(16)=spbk7l6*abb64(14)
      abb64(17)=spbl6k3*abb64(22)
      abb64(13)=abb64(17)+2.0_ki*abb64(13)+abb64(16)
      abb64(13)=8.0_ki*abb64(13)
      abb64(14)=-spbk7l5*abb64(14)
      abb64(16)=-spbl5k3*abb64(22)
      abb64(14)=abb64(14)+abb64(16)
      abb64(14)=8.0_ki*abb64(14)
      abb64(16)=spbk3k2*abb64(44)
      abb64(17)=-abb64(41)*abb64(28)
      abb64(18)=-spbk3k2*abb64(46)
      abb64(17)=abb64(18)+abb64(116)+abb64(17)
      abb64(17)=abb64(9)*abb64(17)
      abb64(18)=abb64(19)*abb64(30)
      abb64(19)=-abb64(32)*abb64(117)
      abb64(18)=abb64(18)+abb64(19)
      abb64(18)=abb64(7)*abb64(18)
      abb64(19)=abb64(21)*abb64(30)
      abb64(21)=-abb64(45)*abb64(117)
      abb64(19)=abb64(19)+abb64(21)
      abb64(19)=abb64(7)*abb64(19)
      abb64(21)=-abb64(47)*abb64(30)
      abb64(22)=abb64(49)*abb64(117)
      abb64(19)=abb64(19)+abb64(21)+abb64(22)
      abb64(19)=NC*abb64(19)
      abb64(21)=-abb64(35)*abb64(30)
      abb64(22)=abb64(40)*abb64(117)
      abb64(16)=abb64(17)+abb64(16)+abb64(19)+abb64(18)+abb64(21)+abb64(22)
      abb64(16)=8.0_ki*abb64(16)
      R2d64=0.0_ki
      rat2 = rat2 + R2d64
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='64' value='", &
          & R2d64, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd64h1
