module     p0_dbaru_epnebbbarg_abbrevd219h6
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh6
   implicit none
   private
   complex(ki), dimension(139), public :: abb219
   complex(ki), public :: R2d219
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
      abb219(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb219(2)=1.0_ki/(mB**2-es67-es56+es567)
      abb219(3)=1.0_ki/(2.0_ki*mB**2-es67-es56+es567-3.0_ki*sqrt(mB**2)**2)
      abb219(4)=sqrt(mB**2)
      abb219(5)=NC**(-1)
      abb219(6)=sqrt2**(-1)
      abb219(7)=es234**(-1)
      abb219(8)=es567**(-1)
      abb219(9)=spak2l6**(-1)
      abb219(10)=spbk7k2**(-1)
      abb219(11)=spak2l5**(-1)
      abb219(12)=spbl5k2**(-1)
      abb219(13)=1.0_ki/(es34+es567-es12-es234)
      abb219(14)=1.0_ki/(sqrt(mB**2)**2)
      abb219(15)=spak1l5*spak2k4
      abb219(16)=c1*spbl5k2
      abb219(17)=abb219(15)*abb219(16)
      abb219(18)=spbl5k2*spak1l5
      abb219(19)=abb219(18)*spak2k4
      abb219(20)=abb219(5)*c2
      abb219(21)=abb219(19)*abb219(20)
      abb219(17)=abb219(17)-abb219(21)
      abb219(17)=abb219(17)*abb219(5)
      abb219(21)=c2*spbl5k2
      abb219(22)=abb219(15)*abb219(21)
      abb219(23)=c1*NC
      abb219(24)=abb219(19)*abb219(23)
      abb219(17)=abb219(17)+abb219(22)-abb219(24)
      abb219(22)=es67+es56
      abb219(24)=abb219(22)*abb219(3)
      abb219(25)=-spbl6k2*abb219(24)*abb219(17)
      abb219(26)=c2*spak3k4
      abb219(27)=abb219(26)*abb219(5)
      abb219(28)=c1*spak3k4
      abb219(29)=abb219(27)-abb219(28)
      abb219(18)=abb219(18)*spbl6k3
      abb219(30)=-abb219(5)*abb219(18)*abb219(29)
      abb219(31)=abb219(28)*NC
      abb219(32)=abb219(31)-abb219(26)
      abb219(33)=-abb219(18)*abb219(32)
      abb219(30)=abb219(30)+abb219(33)
      abb219(33)=abb219(24)*abb219(30)
      abb219(25)=abb219(25)+abb219(33)
      abb219(25)=deltaOS*abb219(25)
      abb219(33)=spbl6k2*abb219(3)*abb219(17)
      abb219(34)=abb219(29)*abb219(5)
      abb219(35)=abb219(34)+abb219(32)
      abb219(36)=abb219(35)*abb219(18)*abb219(3)
      abb219(33)=abb219(33)+abb219(36)
      abb219(36)=mB**2
      abb219(37)=abb219(36)*deltaOS
      abb219(38)=-abb219(33)*abb219(37)
      abb219(25)=abb219(25)+abb219(38)
      abb219(25)=abb219(10)*abb219(25)
      abb219(38)=spak1k7*spbl6k3
      abb219(29)=-abb219(5)*abb219(38)*abb219(29)
      abb219(32)=-abb219(38)*abb219(32)
      abb219(29)=abb219(29)+abb219(32)
      abb219(32)=abb219(24)*abb219(29)
      abb219(39)=spak1k7*spak2k4
      abb219(40)=abb219(39)*abb219(20)
      abb219(41)=abb219(39)*c1
      abb219(41)=abb219(41)-abb219(40)
      abb219(42)=abb219(41)*abb219(5)
      abb219(43)=abb219(39)*abb219(23)
      abb219(44)=abb219(39)*c2
      abb219(44)=abb219(44)-abb219(43)
      abb219(42)=abb219(42)+abb219(44)
      abb219(45)=-spbl6k2*abb219(24)*abb219(42)
      abb219(32)=abb219(45)+abb219(32)
      abb219(32)=deltaOS*abb219(32)
      abb219(45)=-abb219(3)*abb219(29)
      abb219(46)=spbl6k2*abb219(3)*abb219(42)
      abb219(45)=abb219(46)+abb219(45)
      abb219(46)=-abb219(45)*abb219(37)
      abb219(25)=abb219(25)+abb219(32)+abb219(46)
      abb219(32)=abb219(4)**2
      abb219(46)=2.0_ki*abb219(32)
      abb219(25)=abb219(25)*abb219(46)
      abb219(47)=spak1k2*abb219(9)
      abb219(48)=abb219(28)*abb219(47)
      abb219(49)=abb219(48)*abb219(24)
      abb219(50)=abb219(47)*abb219(3)
      abb219(51)=abb219(50)*abb219(27)
      abb219(52)=-abb219(22)*abb219(51)
      abb219(49)=abb219(49)+abb219(52)
      abb219(49)=abb219(5)*abb219(49)
      abb219(52)=abb219(50)*abb219(31)
      abb219(53)=-abb219(22)*abb219(52)
      abb219(54)=abb219(26)*abb219(47)
      abb219(55)=abb219(54)*abb219(24)
      abb219(49)=abb219(49)+abb219(53)+abb219(55)
      abb219(49)=deltaOS*abb219(49)
      abb219(53)=abb219(48)*abb219(3)
      abb219(51)=abb219(53)-abb219(51)
      abb219(51)=abb219(51)*abb219(5)
      abb219(53)=abb219(54)*abb219(3)
      abb219(51)=abb219(51)+abb219(53)-abb219(52)
      abb219(52)=abb219(51)*abb219(37)
      abb219(49)=abb219(49)+abb219(52)
      abb219(52)=abb219(10)*mB
      abb219(49)=abb219(49)*abb219(32)*abb219(52)
      abb219(53)=abb219(50)*abb219(22)
      abb219(55)=abb219(11)*abb219(12)
      abb219(56)=abb219(55)*abb219(47)
      abb219(57)=es12+es71-es712
      abb219(58)=abb219(57)*abb219(56)
      abb219(59)=abb219(22)*abb219(58)
      abb219(60)=abb219(59)*abb219(3)
      abb219(53)=abb219(53)+abb219(60)
      abb219(34)=abb219(34)-abb219(26)
      abb219(60)=abb219(34)+abb219(31)
      abb219(53)=-deltaOS*abb219(53)*abb219(60)
      abb219(61)=abb219(58)*abb219(3)
      abb219(50)=abb219(61)+abb219(50)
      abb219(50)=abb219(50)*abb219(60)
      abb219(61)=-abb219(50)*abb219(37)
      abb219(53)=abb219(53)+abb219(61)
      abb219(61)=mB**3
      abb219(62)=abb219(61)*abb219(10)
      abb219(53)=abb219(53)*abb219(62)
      abb219(49)=abb219(53)+abb219(49)
      abb219(53)=spbk3k2*abb219(4)
      abb219(49)=abb219(49)*abb219(53)
      abb219(25)=abb219(25)+abb219(49)
      abb219(49)=abb219(7)*spbk3k2
      abb219(25)=abb219(25)*abb219(49)
      abb219(63)=spbk4k3*spak4l5
      abb219(64)=spak1l5*spbk3k1
      abb219(63)=abb219(63)+abb219(64)
      abb219(65)=abb219(3)*abb219(63)
      abb219(66)=abb219(13)*spak1k4
      abb219(67)=abb219(16)*abb219(66)
      abb219(68)=abb219(65)*abb219(67)
      abb219(69)=abb219(65)*spbl5k2
      abb219(70)=abb219(66)*abb219(20)
      abb219(71)=abb219(69)*abb219(70)
      abb219(68)=abb219(68)-abb219(71)
      abb219(68)=abb219(68)*abb219(5)
      abb219(71)=abb219(21)*abb219(66)
      abb219(65)=abb219(65)*abb219(71)
      abb219(72)=abb219(23)*abb219(66)
      abb219(69)=abb219(69)*abb219(72)
      abb219(65)=abb219(68)+abb219(65)-abb219(69)
      abb219(68)=abb219(37)*spbl6k2
      abb219(69)=abb219(65)*abb219(68)
      abb219(73)=abb219(70)*spbl5k2
      abb219(73)=abb219(73)-abb219(67)
      abb219(73)=abb219(73)*abb219(5)
      abb219(74)=abb219(72)*spbl5k2
      abb219(73)=abb219(73)+abb219(74)-abb219(71)
      abb219(74)=abb219(24)*abb219(64)
      abb219(75)=spak4l5*abb219(22)
      abb219(76)=abb219(3)*spbk4k3
      abb219(77)=abb219(75)*abb219(76)
      abb219(74)=abb219(74)+abb219(77)
      abb219(77)=deltaOS*spbl6k2
      abb219(74)=-abb219(77)*abb219(74)*abb219(73)
      abb219(69)=abb219(74)+abb219(69)
      abb219(69)=abb219(10)*abb219(69)
      abb219(74)=abb219(66)*c1
      abb219(78)=abb219(74)-abb219(70)
      abb219(78)=abb219(78)*abb219(5)
      abb219(79)=abb219(66)*c2
      abb219(80)=abb219(78)+abb219(79)-abb219(72)
      abb219(81)=spak1k7*spbk3k1
      abb219(24)=abb219(24)*abb219(81)
      abb219(82)=spak4k7*abb219(22)
      abb219(76)=abb219(82)*abb219(76)
      abb219(24)=abb219(24)+abb219(76)
      abb219(24)=abb219(77)*abb219(24)*abb219(80)
      abb219(76)=spbk4k3*spak4k7
      abb219(76)=abb219(76)+abb219(81)
      abb219(83)=abb219(80)*abb219(3)*abb219(76)
      abb219(84)=abb219(83)*abb219(68)
      abb219(24)=abb219(69)+abb219(24)+abb219(84)
      abb219(24)=abb219(24)*abb219(46)
      abb219(24)=abb219(24)+abb219(25)
      abb219(24)=abb219(8)*abb219(24)
      abb219(25)=abb219(10)*deltaOS
      abb219(69)=abb219(25)*spbl6k2
      abb219(65)=-abb219(65)*abb219(69)
      abb219(83)=-abb219(83)*abb219(77)
      abb219(65)=abb219(83)+abb219(65)
      abb219(65)=abb219(65)*abb219(46)
      abb219(45)=deltaOS*abb219(45)
      abb219(33)=abb219(33)*abb219(25)
      abb219(33)=abb219(45)+abb219(33)
      abb219(33)=abb219(33)*abb219(46)
      abb219(45)=abb219(25)*mB
      abb219(83)=abb219(45)*abb219(32)
      abb219(84)=-abb219(51)*abb219(83)
      abb219(85)=abb219(61)*abb219(25)
      abb219(50)=abb219(50)*abb219(85)
      abb219(50)=abb219(50)+abb219(84)
      abb219(50)=abb219(50)*abb219(53)
      abb219(33)=abb219(33)+abb219(50)
      abb219(33)=abb219(33)*abb219(49)
      abb219(24)=abb219(24)+abb219(65)+abb219(33)
      abb219(33)=TR**2
      abb219(24)=abb219(24)*abb219(33)
      abb219(50)=spbl5k3*abb219(22)
      abb219(65)=-deltaOS*abb219(50)*abb219(51)
      abb219(84)=spbl5k3*abb219(51)
      abb219(86)=-abb219(84)*abb219(37)
      abb219(65)=abb219(65)+abb219(86)
      abb219(65)=mB*abb219(65)
      abb219(86)=spbl5k2*spbk7k3
      abb219(87)=abb219(22)*abb219(86)
      abb219(88)=deltaOS*abb219(87)*abb219(51)
      abb219(51)=abb219(86)*abb219(51)
      abb219(89)=abb219(51)*abb219(37)
      abb219(88)=abb219(88)+abb219(89)
      abb219(88)=abb219(88)*abb219(52)
      abb219(65)=abb219(65)+abb219(88)
      abb219(65)=abb219(8)*abb219(65)
      abb219(88)=mB*deltaOS
      abb219(84)=abb219(84)*abb219(88)
      abb219(51)=-abb219(51)*abb219(45)
      abb219(51)=abb219(65)+abb219(84)+abb219(51)
      abb219(65)=abb219(49)*abb219(4)
      abb219(84)=abb219(33)*spal5k7
      abb219(51)=abb219(84)*abb219(65)*abb219(51)
      abb219(24)=abb219(24)+abb219(51)
      abb219(51)=abb219(2)*gW
      abb219(51)=abb219(51)**2
      abb219(89)=8.0_ki*abb219(51)
      abb219(90)=abb219(1)*abb219(6)*CVDU*spal5k7
      abb219(89)=abb219(89)*abb219(90)
      abb219(24)=abb219(89)*i_*abb219(24)
      abb219(91)=abb219(17)*spbl6k2
      abb219(91)=abb219(91)-abb219(30)
      abb219(92)=abb219(23)*abb219(14)
      abb219(93)=c2*abb219(14)
      abb219(92)=abb219(92)-abb219(93)
      abb219(94)=-abb219(19)*abb219(92)
      abb219(95)=abb219(22)*abb219(94)
      abb219(96)=abb219(20)*abb219(14)
      abb219(97)=c1*abb219(14)
      abb219(96)=abb219(96)-abb219(97)
      abb219(98)=-abb219(19)*abb219(96)
      abb219(99)=abb219(22)*abb219(5)
      abb219(100)=abb219(98)*abb219(99)
      abb219(95)=abb219(100)+abb219(95)
      abb219(95)=spbl6k2*abb219(95)
      abb219(100)=abb219(28)*abb219(14)
      abb219(101)=abb219(100)*NC
      abb219(26)=abb219(26)*abb219(14)
      abb219(101)=abb219(101)-abb219(26)
      abb219(102)=-abb219(18)*abb219(101)
      abb219(103)=-abb219(22)*abb219(102)
      abb219(104)=abb219(27)*abb219(14)
      abb219(104)=abb219(104)-abb219(100)
      abb219(105)=-abb219(18)*abb219(104)
      abb219(106)=-abb219(105)*abb219(99)
      abb219(95)=abb219(95)+abb219(106)+abb219(103)
      abb219(95)=deltaOS*abb219(95)
      abb219(98)=abb219(98)*abb219(5)
      abb219(94)=abb219(98)+abb219(94)
      abb219(94)=abb219(94)*spbl6k2
      abb219(98)=abb219(105)*abb219(5)
      abb219(94)=abb219(94)-abb219(98)-abb219(102)
      abb219(98)=2.0_ki*abb219(37)
      abb219(102)=-abb219(94)*abb219(98)
      abb219(95)=abb219(102)+abb219(95)-abb219(91)
      abb219(95)=abb219(10)*abb219(95)
      abb219(94)=abb219(94)*abb219(25)
      abb219(102)=abb219(39)*abb219(93)
      abb219(103)=abb219(43)*abb219(14)
      abb219(102)=abb219(102)-abb219(103)
      abb219(103)=abb219(39)*abb219(97)
      abb219(105)=abb219(40)*abb219(14)
      abb219(103)=abb219(103)-abb219(105)
      abb219(105)=abb219(103)*abb219(5)
      abb219(105)=abb219(105)+abb219(102)
      abb219(105)=abb219(105)*spbl6k2
      abb219(106)=-abb219(38)*abb219(101)
      abb219(107)=-abb219(38)*abb219(104)
      abb219(108)=abb219(107)*abb219(5)
      abb219(105)=abb219(105)-abb219(106)-abb219(108)
      abb219(108)=abb219(105)*deltaOS
      abb219(94)=abb219(94)+abb219(108)
      abb219(108)=abb219(94)*abb219(32)
      abb219(109)=abb219(42)*spbl6k2
      abb219(109)=-abb219(109)+abb219(29)
      abb219(110)=abb219(22)*abb219(102)
      abb219(111)=abb219(103)*abb219(99)
      abb219(110)=abb219(111)+abb219(110)
      abb219(110)=spbl6k2*abb219(110)
      abb219(111)=-abb219(22)*abb219(106)
      abb219(99)=-abb219(107)*abb219(99)
      abb219(99)=abb219(110)+abb219(99)+abb219(111)
      abb219(99)=deltaOS*abb219(99)
      abb219(105)=-abb219(105)*abb219(98)
      abb219(95)=abb219(108)+abb219(95)+abb219(105)+abb219(99)+abb219(109)
      abb219(99)=3.0_ki*abb219(32)
      abb219(95)=abb219(95)*abb219(99)
      abb219(105)=abb219(57)*abb219(55)
      abb219(105)=abb219(105)+1.0_ki
      abb219(108)=abb219(34)*abb219(38)*abb219(105)
      abb219(110)=abb219(20)-c1
      abb219(110)=abb219(110)*abb219(5)
      abb219(111)=abb219(110)-c2
      abb219(112)=-abb219(111)*abb219(39)*abb219(105)
      abb219(113)=NC*abb219(105)
      abb219(114)=abb219(113)*c1
      abb219(115)=-abb219(39)*abb219(114)
      abb219(112)=abb219(115)+abb219(112)
      abb219(112)=spbl6k2*abb219(112)
      abb219(28)=abb219(113)*abb219(28)
      abb219(38)=abb219(38)*abb219(28)
      abb219(38)=abb219(112)+abb219(38)+abb219(108)
      abb219(38)=abb219(38)*abb219(36)
      abb219(108)=abb219(11)*spbl6k3
      abb219(112)=abb219(108)*spak1l5
      abb219(115)=abb219(112)*abb219(57)
      abb219(18)=abb219(115)+abb219(18)
      abb219(18)=abb219(18)*abb219(60)
      abb219(60)=-abb219(23)-abb219(111)
      abb219(115)=abb219(15)*abb219(11)
      abb219(116)=abb219(115)*abb219(57)
      abb219(19)=abb219(116)+abb219(19)
      abb219(19)=spbl6k2*abb219(19)*abb219(60)
      abb219(18)=abb219(19)+abb219(18)
      abb219(19)=abb219(36)*abb219(10)
      abb219(18)=abb219(18)*abb219(19)
      abb219(18)=abb219(95)+abb219(38)+abb219(18)
      abb219(38)=abb219(27)*abb219(47)
      abb219(60)=abb219(38)-abb219(48)
      abb219(60)=abb219(60)*abb219(5)
      abb219(95)=abb219(31)*abb219(47)
      abb219(60)=abb219(60)+abb219(95)-abb219(54)
      abb219(95)=4.0_ki*abb219(60)
      abb219(38)=abb219(14)*abb219(38)
      abb219(116)=abb219(100)*abb219(47)
      abb219(117)=abb219(38)-abb219(116)
      abb219(117)=abb219(117)*abb219(5)
      abb219(118)=abb219(26)*abb219(47)
      abb219(119)=abb219(116)*NC
      abb219(118)=abb219(118)-abb219(119)
      abb219(117)=abb219(117)-abb219(118)
      abb219(119)=deltaOS*abb219(22)*abb219(117)
      abb219(104)=abb219(104)*abb219(5)
      abb219(26)=abb219(104)-abb219(26)
      abb219(120)=abb219(58)-abb219(47)
      abb219(120)=abb219(120)*abb219(26)
      abb219(121)=abb219(58)*NC
      abb219(122)=abb219(47)*NC
      abb219(123)=-abb219(122)+abb219(121)
      abb219(123)=abb219(123)*abb219(100)
      abb219(120)=abb219(123)+abb219(120)
      abb219(123)=3.0_ki*abb219(37)
      abb219(120)=abb219(120)*abb219(123)
      abb219(119)=abb219(120)-abb219(95)+3.0_ki*abb219(119)
      abb219(119)=abb219(119)*abb219(52)
      abb219(120)=abb219(117)*abb219(45)*abb219(99)
      abb219(119)=abb219(119)+abb219(120)
      abb219(119)=abb219(119)*abb219(32)
      abb219(124)=abb219(22)*abb219(47)
      abb219(124)=abb219(124)+abb219(59)
      abb219(124)=abb219(124)*abb219(26)
      abb219(125)=abb219(22)*abb219(122)
      abb219(59)=NC*abb219(59)
      abb219(59)=abb219(125)+abb219(59)
      abb219(59)=abb219(59)*abb219(100)
      abb219(59)=abb219(59)+abb219(124)
      abb219(59)=deltaOS*abb219(59)
      abb219(58)=abb219(58)+abb219(47)
      abb219(58)=-abb219(58)*abb219(26)
      abb219(121)=abb219(121)+abb219(122)
      abb219(121)=abb219(121)*abb219(100)
      abb219(58)=-abb219(121)+abb219(58)
      abb219(121)=abb219(58)*abb219(98)
      abb219(59)=abb219(59)+abb219(121)
      abb219(59)=abb219(59)*abb219(62)
      abb219(59)=3.0_ki*abb219(59)+abb219(119)
      abb219(59)=abb219(59)*abb219(53)
      abb219(18)=2.0_ki*abb219(18)+abb219(59)
      abb219(18)=abb219(18)*abb219(49)
      abb219(59)=abb219(76)*abb219(72)
      abb219(119)=abb219(79)*abb219(76)
      abb219(119)=abb219(119)-abb219(59)
      abb219(121)=abb219(76)*abb219(70)
      abb219(124)=abb219(74)*abb219(76)
      abb219(124)=abb219(124)-abb219(121)
      abb219(125)=abb219(124)*abb219(5)
      abb219(125)=abb219(125)+abb219(119)
      abb219(126)=abb219(76)*abb219(14)
      abb219(127)=abb219(126)*abb219(72)
      abb219(128)=abb219(76)*abb219(66)
      abb219(129)=abb219(128)*abb219(93)
      abb219(127)=abb219(129)-abb219(127)
      abb219(126)=abb219(126)*abb219(70)
      abb219(129)=abb219(128)*abb219(97)
      abb219(126)=abb219(129)-abb219(126)
      abb219(129)=abb219(126)*abb219(5)
      abb219(129)=abb219(129)+abb219(127)
      abb219(130)=abb219(129)*abb219(98)
      abb219(130)=abb219(130)+abb219(125)
      abb219(130)=spbl6k2*abb219(130)
      abb219(131)=abb219(63)*abb219(70)
      abb219(132)=abb219(131)*spbl5k2
      abb219(133)=abb219(67)*abb219(63)
      abb219(132)=abb219(132)-abb219(133)
      abb219(132)=abb219(132)*abb219(5)
      abb219(133)=abb219(63)*abb219(72)
      abb219(134)=abb219(133)*spbl5k2
      abb219(135)=abb219(71)*abb219(63)
      abb219(132)=abb219(132)+abb219(134)-abb219(135)
      abb219(134)=abb219(14)*spbl5k2
      abb219(135)=abb219(131)*abb219(134)
      abb219(136)=abb219(66)*spbl5k2
      abb219(137)=abb219(63)*abb219(136)
      abb219(138)=abb219(137)*abb219(97)
      abb219(135)=abb219(135)-abb219(138)
      abb219(135)=abb219(135)*abb219(5)
      abb219(138)=abb219(133)*abb219(134)
      abb219(137)=abb219(137)*abb219(93)
      abb219(135)=abb219(135)+abb219(138)-abb219(137)
      abb219(137)=-abb219(135)*abb219(98)
      abb219(137)=abb219(137)-abb219(132)
      abb219(137)=spbl6k2*abb219(137)
      abb219(138)=-abb219(97)*abb219(136)
      abb219(139)=abb219(134)*abb219(70)
      abb219(138)=abb219(138)+abb219(139)
      abb219(138)=abb219(5)*abb219(138)
      abb219(134)=abb219(134)*abb219(72)
      abb219(136)=-abb219(93)*abb219(136)
      abb219(134)=abb219(138)+abb219(134)+abb219(136)
      abb219(64)=abb219(22)*abb219(64)
      abb219(75)=abb219(75)*spbk4k3
      abb219(64)=abb219(64)+abb219(75)
      abb219(64)=abb219(77)*abb219(64)*abb219(134)
      abb219(64)=abb219(64)+abb219(137)
      abb219(64)=abb219(10)*abb219(64)
      abb219(75)=abb219(129)*abb219(77)
      abb219(69)=abb219(135)*abb219(69)
      abb219(69)=abb219(75)-abb219(69)
      abb219(75)=-abb219(69)*abb219(32)
      abb219(129)=-abb219(66)*abb219(97)
      abb219(134)=abb219(14)*abb219(70)
      abb219(129)=abb219(129)+abb219(134)
      abb219(129)=abb219(5)*abb219(129)
      abb219(134)=abb219(14)*abb219(72)
      abb219(135)=-abb219(66)*abb219(93)
      abb219(129)=abb219(129)+abb219(134)+abb219(135)
      abb219(22)=abb219(22)*abb219(81)
      abb219(81)=abb219(82)*spbk4k3
      abb219(22)=abb219(22)+abb219(81)
      abb219(22)=abb219(77)*abb219(22)*abb219(129)
      abb219(22)=abb219(75)+abb219(64)+abb219(22)+abb219(130)
      abb219(22)=abb219(22)*abb219(99)
      abb219(64)=-abb219(11)*abb219(57)*abb219(63)
      abb219(75)=abb219(63)*spbl5k2
      abb219(64)=abb219(64)-abb219(75)
      abb219(75)=abb219(78)+abb219(79)
      abb219(77)=abb219(74)*NC
      abb219(77)=abb219(77)-abb219(75)
      abb219(78)=abb219(10)*spbl6k2
      abb219(81)=abb219(78)*abb219(36)
      abb219(64)=-abb219(81)*abb219(64)*abb219(77)
      abb219(82)=abb219(55)*abb219(57)*abb219(76)
      abb219(82)=abb219(76)+abb219(82)
      abb219(129)=abb219(36)*spbl6k2
      abb219(77)=abb219(129)*abb219(82)*abb219(77)
      abb219(22)=abb219(22)+abb219(77)+abb219(64)
      abb219(18)=2.0_ki*abb219(22)+abb219(18)
      abb219(18)=abb219(8)*abb219(18)
      abb219(22)=abb219(69)*abb219(46)
      abb219(46)=-abb219(94)*abb219(46)
      abb219(64)=-abb219(117)*abb219(83)
      abb219(77)=abb219(58)*abb219(85)
      abb219(64)=abb219(77)+abb219(64)
      abb219(64)=abb219(64)*abb219(53)
      abb219(46)=abb219(46)+abb219(64)
      abb219(46)=abb219(46)*abb219(49)
      abb219(22)=abb219(22)+abb219(46)
      abb219(18)=3.0_ki*abb219(22)+abb219(18)
      abb219(18)=abb219(18)*abb219(33)
      abb219(22)=-deltaOS*abb219(50)*abb219(117)
      abb219(46)=abb219(116)*spbl5k3
      abb219(50)=abb219(38)*spbl5k3
      abb219(46)=abb219(46)-abb219(50)
      abb219(46)=abb219(46)*abb219(5)
      abb219(64)=-spbl5k3*abb219(118)
      abb219(46)=abb219(46)-abb219(64)
      abb219(64)=-abb219(46)*abb219(98)
      abb219(22)=abb219(22)+abb219(64)
      abb219(22)=mB*abb219(22)
      abb219(64)=deltaOS*abb219(87)*abb219(117)
      abb219(77)=-abb219(86)*abb219(117)
      abb219(82)=abb219(77)*abb219(98)
      abb219(64)=abb219(64)+abb219(82)
      abb219(64)=abb219(64)*abb219(52)
      abb219(46)=abb219(46)*abb219(88)
      abb219(45)=abb219(77)*abb219(45)
      abb219(45)=abb219(46)-abb219(45)
      abb219(46)=abb219(45)*abb219(32)
      abb219(22)=abb219(46)+abb219(22)+abb219(64)
      abb219(46)=3.0_ki*abb219(4)
      abb219(22)=abb219(22)*abb219(46)
      abb219(17)=spbl6k2*spbk7l5*abb219(17)
      abb219(30)=-spbk7l5*abb219(30)
      abb219(17)=abb219(17)+abb219(30)
      abb219(17)=abb219(10)*abb219(17)
      abb219(30)=-spbk7l5*abb219(29)
      abb219(42)=spbl6k2*spbk7l5*abb219(42)
      abb219(17)=abb219(17)+abb219(42)+abb219(30)
      abb219(17)=2.0_ki*abb219(17)+abb219(22)
      abb219(17)=abb219(17)*abb219(49)
      abb219(22)=abb219(78)*abb219(73)*spbk7l5*abb219(63)
      abb219(30)=-spbl6k2*abb219(80)*spbk7l5*abb219(76)
      abb219(22)=abb219(30)+abb219(22)
      abb219(17)=2.0_ki*abb219(22)+abb219(17)
      abb219(17)=abb219(8)*abb219(17)
      abb219(22)=abb219(45)*abb219(65)
      abb219(17)=-3.0_ki*abb219(22)+abb219(17)
      abb219(17)=abb219(17)*abb219(84)
      abb219(17)=abb219(18)+abb219(17)
      abb219(18)=abb219(90)*abb219(51)
      abb219(17)=4.0_ki*abb219(18)*i_*abb219(17)
      abb219(22)=abb219(69)*abb219(99)
      abb219(30)=abb219(132)*abb219(78)
      abb219(42)=abb219(125)*spbl6k2
      abb219(51)=abb219(22)-abb219(42)+2.0_ki*abb219(30)
      abb219(64)=abb219(94)*abb219(99)
      abb219(65)=abb219(91)*abb219(10)
      abb219(69)=-abb219(64)+2.0_ki*abb219(65)-abb219(109)
      abb219(58)=abb219(58)*abb219(123)
      abb219(58)=abb219(58)+abb219(95)
      abb219(58)=abb219(58)*abb219(52)
      abb219(58)=abb219(58)-abb219(120)
      abb219(58)=abb219(58)*abb219(53)
      abb219(69)=2.0_ki*abb219(69)+abb219(58)
      abb219(69)=abb219(69)*abb219(49)
      abb219(51)=2.0_ki*abb219(51)+abb219(69)
      abb219(33)=abb219(33)*i_*abb219(8)
      abb219(51)=abb219(51)*abb219(33)
      abb219(69)=abb219(33)*abb219(49)
      abb219(73)=abb219(69)*spal5k7
      abb219(46)=abb219(46)*abb219(73)
      abb219(45)=abb219(46)*abb219(45)
      abb219(51)=abb219(51)-abb219(45)
      abb219(51)=abb219(51)*abb219(89)
      abb219(22)=abb219(22)-2.0_ki*abb219(42)+abb219(30)
      abb219(30)=-abb219(64)-2.0_ki*abb219(109)+abb219(65)
      abb219(30)=2.0_ki*abb219(30)+abb219(58)
      abb219(30)=abb219(30)*abb219(49)
      abb219(22)=2.0_ki*abb219(22)+abb219(30)
      abb219(22)=abb219(22)*abb219(33)
      abb219(22)=abb219(22)-abb219(45)
      abb219(22)=abb219(22)*abb219(89)
      abb219(30)=-abb219(55)*abb219(119)
      abb219(42)=abb219(55)*abb219(5)
      abb219(45)=-abb219(124)*abb219(42)
      abb219(30)=abb219(45)+abb219(30)
      abb219(30)=abb219(30)*abb219(129)
      abb219(45)=abb219(11)*abb219(133)
      abb219(58)=abb219(11)*abb219(131)
      abb219(64)=abb219(74)*abb219(11)
      abb219(65)=-abb219(63)*abb219(64)
      abb219(58)=abb219(65)+abb219(58)
      abb219(58)=abb219(5)*abb219(58)
      abb219(65)=abb219(79)*abb219(11)
      abb219(76)=-abb219(63)*abb219(65)
      abb219(45)=abb219(58)+abb219(45)+abb219(76)
      abb219(45)=abb219(45)*abb219(81)
      abb219(30)=abb219(30)+abb219(45)
      abb219(45)=abb219(55)*abb219(127)
      abb219(58)=abb219(126)*abb219(42)
      abb219(45)=abb219(58)+abb219(45)
      abb219(45)=abb219(45)*abb219(68)
      abb219(58)=-abb219(14)*abb219(133)
      abb219(68)=-abb219(14)*abb219(131)
      abb219(66)=abb219(63)*abb219(66)
      abb219(76)=abb219(97)*abb219(66)
      abb219(68)=abb219(76)+abb219(68)
      abb219(68)=abb219(5)*abb219(68)
      abb219(66)=abb219(93)*abb219(66)
      abb219(58)=abb219(68)+abb219(58)+abb219(66)
      abb219(58)=abb219(25)*abb219(129)*abb219(11)*abb219(58)
      abb219(45)=abb219(45)+abb219(58)
      abb219(45)=abb219(45)*abb219(99)
      abb219(30)=2.0_ki*abb219(30)+abb219(45)
      abb219(45)=-abb219(55)*abb219(102)
      abb219(58)=-abb219(103)*abb219(42)
      abb219(45)=abb219(58)+abb219(45)
      abb219(45)=spbl6k2*abb219(45)
      abb219(58)=abb219(55)*abb219(106)
      abb219(66)=abb219(107)*abb219(42)
      abb219(45)=abb219(45)+abb219(66)+abb219(58)
      abb219(37)=abb219(45)*abb219(37)
      abb219(45)=-abb219(104)-abb219(101)
      abb219(45)=abb219(112)*abb219(45)
      abb219(58)=abb219(5)*abb219(96)
      abb219(58)=abb219(58)+abb219(92)
      abb219(58)=spbl6k2*abb219(115)*abb219(58)
      abb219(45)=abb219(58)+abb219(45)
      abb219(25)=abb219(45)*abb219(36)*abb219(25)
      abb219(25)=abb219(37)+abb219(25)
      abb219(25)=abb219(25)*abb219(99)
      abb219(37)=-abb219(55)*abb219(29)
      abb219(44)=abb219(55)*abb219(44)
      abb219(41)=abb219(41)*abb219(42)
      abb219(41)=abb219(41)+abb219(44)
      abb219(41)=spbl6k2*abb219(41)
      abb219(37)=abb219(41)+abb219(37)
      abb219(37)=abb219(37)*abb219(36)
      abb219(41)=abb219(112)*abb219(35)
      abb219(42)=abb219(110)+abb219(23)-c2
      abb219(44)=-spbl6k2*abb219(115)*abb219(42)
      abb219(41)=abb219(44)+abb219(41)
      abb219(41)=abb219(41)*abb219(19)
      abb219(37)=abb219(37)+abb219(41)
      abb219(25)=2.0_ki*abb219(37)+abb219(25)
      abb219(37)=-abb219(55)*abb219(48)
      abb219(27)=abb219(27)*abb219(56)
      abb219(27)=abb219(37)+abb219(27)
      abb219(27)=abb219(5)*abb219(27)
      abb219(31)=abb219(31)*abb219(56)
      abb219(37)=-abb219(55)*abb219(54)
      abb219(27)=abb219(27)+abb219(31)+abb219(37)
      abb219(31)=abb219(11)*abb219(57)*abb219(12)**2
      abb219(31)=abb219(31)+abb219(12)
      abb219(31)=abb219(31)*abb219(11)
      abb219(26)=-abb219(26)*abb219(47)*abb219(31)
      abb219(31)=-abb219(100)*abb219(122)*abb219(31)
      abb219(26)=abb219(31)+abb219(26)
      abb219(26)=abb219(26)*abb219(123)
      abb219(26)=2.0_ki*abb219(27)+abb219(26)
      abb219(26)=abb219(26)*abb219(62)
      abb219(27)=-abb219(56)*abb219(101)
      abb219(31)=abb219(100)*abb219(56)
      abb219(37)=-abb219(55)*abb219(38)
      abb219(31)=abb219(31)+abb219(37)
      abb219(31)=abb219(5)*abb219(31)
      abb219(27)=abb219(31)+abb219(27)
      abb219(27)=abb219(27)*abb219(99)*abb219(85)
      abb219(26)=abb219(26)+abb219(27)
      abb219(26)=abb219(26)*abb219(53)
      abb219(25)=2.0_ki*abb219(25)+abb219(26)
      abb219(25)=abb219(25)*abb219(49)
      abb219(25)=2.0_ki*abb219(30)+abb219(25)
      abb219(25)=abb219(25)*abb219(33)
      abb219(26)=abb219(56)*spbl5k3
      abb219(27)=abb219(26)*abb219(101)
      abb219(26)=-abb219(100)*abb219(26)
      abb219(30)=abb219(55)*abb219(50)
      abb219(26)=abb219(26)+abb219(30)
      abb219(26)=abb219(5)*abb219(26)
      abb219(26)=abb219(26)+abb219(27)
      abb219(26)=deltaOS*abb219(26)*abb219(61)
      abb219(27)=-abb219(85)*abb219(117)*abb219(11)*spbk7k3
      abb219(26)=abb219(26)+abb219(27)
      abb219(26)=abb219(26)*abb219(46)
      abb219(25)=abb219(25)+abb219(26)
      abb219(25)=abb219(25)*abb219(89)
      abb219(26)=abb219(63)*abb219(74)
      abb219(26)=abb219(26)-abb219(131)
      abb219(26)=abb219(5)*abb219(26)
      abb219(27)=abb219(63)*abb219(79)
      abb219(26)=abb219(26)-abb219(133)+abb219(27)
      abb219(26)=spbl6k2*abb219(26)
      abb219(27)=-abb219(35)*spak1l5*spbl6k3
      abb219(15)=spbl6k2*abb219(15)*abb219(42)
      abb219(15)=abb219(15)+abb219(27)
      abb219(15)=abb219(15)*abb219(49)
      abb219(15)=abb219(26)+abb219(15)
      abb219(26)=abb219(89)*abb219(33)
      abb219(15)=abb219(15)*abb219(26)
      abb219(27)=abb219(89)*abb219(69)*abb219(4)
      abb219(30)=-mB*abb219(60)*abb219(27)
      abb219(31)=abb219(52)*abb219(4)
      abb219(37)=abb219(31)*spbk7k3*abb219(60)
      abb219(38)=abb219(55)*spak1k2
      abb219(41)=-abb219(35)*abb219(38)*spbl6k3
      abb219(38)=spbl6k2*abb219(42)*abb219(38)*spak2k4
      abb219(38)=abb219(38)+abb219(41)
      abb219(36)=abb219(38)*abb219(36)
      abb219(36)=abb219(36)+abb219(37)
      abb219(36)=abb219(36)*abb219(49)
      abb219(37)=abb219(70)*abb219(11)
      abb219(37)=abb219(37)-abb219(64)
      abb219(37)=abb219(37)*abb219(5)
      abb219(38)=abb219(64)*NC
      abb219(37)=-abb219(65)+abb219(38)+abb219(37)
      abb219(38)=spak2k4*spbk4k3
      abb219(41)=spak1k2*spbk3k1
      abb219(38)=abb219(38)-abb219(41)
      abb219(41)=abb219(129)*abb219(37)*abb219(12)*abb219(38)
      abb219(36)=abb219(41)+abb219(36)
      abb219(36)=abb219(36)*abb219(26)
      abb219(41)=-spbl5k2*abb219(59)
      abb219(44)=-spbl5k2*abb219(121)
      abb219(45)=abb219(16)*abb219(128)
      abb219(44)=abb219(45)+abb219(44)
      abb219(44)=abb219(5)*abb219(44)
      abb219(45)=abb219(21)*abb219(128)
      abb219(41)=abb219(44)+abb219(41)+abb219(45)
      abb219(41)=abb219(41)*abb219(78)
      abb219(44)=-abb219(16)*abb219(39)
      abb219(40)=spbl5k2*abb219(40)
      abb219(40)=abb219(44)+abb219(40)
      abb219(40)=abb219(5)*abb219(40)
      abb219(43)=spbl5k2*abb219(43)
      abb219(39)=-abb219(21)*abb219(39)
      abb219(39)=abb219(40)+abb219(43)+abb219(39)
      abb219(39)=spbl6k2*abb219(39)
      abb219(29)=spbl5k2*abb219(29)
      abb219(29)=abb219(39)+abb219(29)
      abb219(29)=abb219(10)*abb219(29)*abb219(49)
      abb219(29)=abb219(41)+abb219(29)
      abb219(29)=abb219(29)*abb219(26)
      abb219(27)=-abb219(52)*abb219(27)*spbl5k2*abb219(60)
      abb219(37)=abb219(81)*abb219(38)*abb219(37)
      abb219(31)=abb219(31)*spbl5k3*abb219(60)
      abb219(38)=-abb219(35)*abb219(108)*spak1k2
      abb219(39)=spbl6k2*abb219(42)*abb219(11)*spak1k2*spak2k4
      abb219(38)=abb219(39)+abb219(38)
      abb219(38)=abb219(38)*abb219(19)
      abb219(31)=abb219(38)+abb219(31)
      abb219(31)=abb219(31)*abb219(49)
      abb219(31)=abb219(37)+abb219(31)
      abb219(31)=abb219(31)*abb219(26)
      abb219(37)=spbl5k2*spbk7l6
      abb219(38)=abb219(37)*abb219(70)
      abb219(39)=abb219(67)*spbk7l6
      abb219(38)=abb219(38)-abb219(39)
      abb219(38)=abb219(38)*abb219(5)
      abb219(39)=abb219(37)*abb219(72)
      abb219(40)=abb219(71)*spbk7l6
      abb219(38)=abb219(38)+abb219(39)-abb219(40)
      abb219(39)=-abb219(10)*spbk4k3*abb219(38)
      abb219(40)=abb219(80)*spbk4k3*spbl6l5
      abb219(39)=abb219(39)+abb219(40)
      abb219(40)=2.0_ki*spal5k7
      abb219(39)=abb219(39)*abb219(40)
      abb219(41)=abb219(75)*spbk4k3*abb219(105)
      abb219(43)=abb219(113)*abb219(74)
      abb219(44)=-spbk4k3*abb219(43)
      abb219(41)=abb219(44)+abb219(41)
      abb219(44)=2.0_ki*abb219(81)
      abb219(41)=abb219(41)*abb219(44)
      abb219(45)=abb219(78)*abb219(32)
      abb219(46)=-abb219(45)*spbk4k3*abb219(80)
      abb219(39)=abb219(39)+abb219(41)+abb219(46)
      abb219(39)=abb219(39)*abb219(26)
      abb219(34)=abb219(105)*abb219(34)
      abb219(28)=abb219(28)+abb219(34)
      abb219(19)=abb219(28)*abb219(19)
      abb219(32)=abb219(32)*abb219(10)
      abb219(34)=-abb219(35)*abb219(32)
      abb219(19)=abb219(19)+abb219(34)
      abb219(19)=abb219(7)*abb219(19)*spbk3k2**2*abb219(33)
      abb219(33)=-spbl5k3*abb219(35)
      abb219(34)=abb219(10)*abb219(86)*abb219(35)
      abb219(33)=abb219(34)+abb219(33)
      abb219(33)=abb219(33)*abb219(73)
      abb219(19)=abb219(19)+abb219(33)
      abb219(18)=16.0_ki*abb219(18)
      abb219(19)=abb219(19)*abb219(18)
      abb219(28)=-abb219(28)*abb219(81)
      abb219(33)=abb219(35)*abb219(45)
      abb219(28)=abb219(28)+abb219(33)
      abb219(28)=abb219(28)*abb219(69)
      abb219(33)=-spbl6l5*abb219(35)
      abb219(34)=-abb219(10)*abb219(37)*abb219(35)
      abb219(33)=abb219(34)+abb219(33)
      abb219(33)=abb219(33)*abb219(73)
      abb219(28)=abb219(28)+abb219(33)
      abb219(18)=abb219(28)*abb219(18)
      abb219(28)=-abb219(10)*spbk3k1*abb219(38)
      abb219(33)=abb219(80)*spbk3k1*spbl6l5
      abb219(23)=abb219(23)*abb219(37)
      abb219(20)=abb219(20)*abb219(37)
      abb219(16)=-spbk7l6*abb219(16)
      abb219(16)=abb219(16)+abb219(20)
      abb219(16)=abb219(5)*abb219(16)
      abb219(20)=-spbk7l6*abb219(21)
      abb219(16)=abb219(16)+abb219(23)+abb219(20)
      abb219(16)=abb219(10)*spak2k4*abb219(16)
      abb219(20)=abb219(42)*spak2k4*spbl6l5
      abb219(16)=abb219(16)+abb219(20)
      abb219(16)=abb219(16)*abb219(49)
      abb219(16)=abb219(16)+abb219(28)+abb219(33)
      abb219(16)=abb219(16)*abb219(40)
      abb219(20)=abb219(111)*spak2k4*abb219(105)
      abb219(21)=spak2k4*abb219(114)
      abb219(20)=abb219(21)+abb219(20)
      abb219(20)=abb219(20)*abb219(44)
      abb219(21)=-spbl6k3*abb219(35)
      abb219(23)=-spbl6k2*spak2k4*abb219(42)
      abb219(21)=abb219(23)+abb219(21)
      abb219(21)=abb219(21)*abb219(32)
      abb219(20)=abb219(20)+abb219(21)
      abb219(20)=abb219(20)*abb219(49)
      abb219(21)=abb219(75)*spbk3k1*abb219(105)
      abb219(23)=-spbk3k1*abb219(43)
      abb219(21)=abb219(23)+abb219(21)
      abb219(21)=abb219(21)*abb219(44)
      abb219(23)=-abb219(45)*spbk3k1*abb219(80)
      abb219(16)=abb219(16)+abb219(20)+abb219(21)+abb219(23)
      abb219(16)=abb219(16)*abb219(26)
      R2d219=abb219(24)
      rat2 = rat2 + R2d219
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='219' value='", &
          & R2d219, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd219h6
