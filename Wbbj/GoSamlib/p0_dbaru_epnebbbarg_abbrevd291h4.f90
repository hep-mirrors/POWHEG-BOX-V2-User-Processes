module     p0_dbaru_epnebbbarg_abbrevd291h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(110), public :: abb291
   complex(ki), public :: R2d291
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
      abb291(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb291(2)=NC**(-1)
      abb291(3)=sqrt2**(-1)
      abb291(4)=spak2l5**(-1)
      abb291(5)=spbl5k2**(-1)
      abb291(6)=spbl6k2**(-1)
      abb291(7)=spbk7k2**(-1)
      abb291(8)=sqrt(mB**2)
      abb291(9)=spak2l6**(-1)
      abb291(10)=TR*gW
      abb291(10)=abb291(10)**2*i_*CVDU*abb291(3)*abb291(1)
      abb291(11)=abb291(10)*spak1l5
      abb291(12)=abb291(11)*spbk3k2
      abb291(13)=abb291(8)*abb291(2)
      abb291(14)=abb291(12)*abb291(13)
      abb291(15)=spak1k7*spbk2k1
      abb291(16)=abb291(14)*abb291(15)
      abb291(17)=mB**2
      abb291(18)=abb291(17)*abb291(5)
      abb291(19)=abb291(16)*abb291(18)
      abb291(20)=abb291(15)*spbk3k2
      abb291(21)=abb291(11)*abb291(2)
      abb291(22)=abb291(20)*abb291(21)
      abb291(23)=mB**3
      abb291(24)=abb291(23)*abb291(5)
      abb291(25)=abb291(22)*abb291(24)
      abb291(19)=abb291(19)-abb291(25)
      abb291(25)=c1+c3
      abb291(19)=abb291(19)*abb291(25)
      abb291(26)=abb291(2)**2
      abb291(27)=abb291(12)*abb291(26)
      abb291(28)=abb291(24)*abb291(15)
      abb291(29)=abb291(28)*abb291(27)
      abb291(30)=abb291(11)*abb291(8)
      abb291(31)=abb291(20)*abb291(30)
      abb291(32)=abb291(31)*abb291(26)
      abb291(33)=-abb291(18)*abb291(32)
      abb291(29)=abb291(29)+abb291(33)
      abb291(29)=c4*abb291(29)
      abb291(33)=abb291(12)*abb291(28)
      abb291(34)=-abb291(18)*abb291(31)
      abb291(33)=abb291(33)+abb291(34)
      abb291(33)=c2*abb291(33)
      abb291(19)=abb291(33)+abb291(29)+abb291(19)
      abb291(19)=spak4k7*abb291(19)
      abb291(29)=abb291(10)*abb291(7)
      abb291(33)=spbk3k2*abb291(29)
      abb291(34)=abb291(33)*spak1l5
      abb291(35)=abb291(34)*abb291(8)
      abb291(36)=abb291(35)*abb291(2)
      abb291(37)=abb291(18)*abb291(36)
      abb291(38)=abb291(34)*abb291(2)
      abb291(39)=abb291(24)*abb291(38)
      abb291(37)=abb291(37)-abb291(39)
      abb291(40)=spak1k4*abb291(25)
      abb291(41)=spbk2k1**2
      abb291(42)=abb291(41)*spak1k7
      abb291(43)=abb291(40)*abb291(42)
      abb291(44)=-abb291(37)*abb291(43)
      abb291(45)=abb291(26)*abb291(34)
      abb291(46)=abb291(45)*abb291(24)
      abb291(47)=abb291(17)*abb291(35)
      abb291(48)=abb291(47)*abb291(26)
      abb291(49)=abb291(48)*abb291(5)
      abb291(46)=abb291(46)-abb291(49)
      abb291(50)=c4*spak1k4
      abb291(51)=abb291(50)*abb291(42)
      abb291(52)=-abb291(46)*abb291(51)
      abb291(53)=abb291(24)*abb291(34)
      abb291(54)=abb291(47)*abb291(5)
      abb291(55)=abb291(53)-abb291(54)
      abb291(56)=c2*spak1k4
      abb291(57)=abb291(56)*abb291(42)
      abb291(58)=-abb291(55)*abb291(57)
      abb291(19)=abb291(19)+abb291(58)+abb291(52)+abb291(44)
      abb291(19)=abb291(4)*abb291(19)
      abb291(44)=abb291(12)*abb291(15)
      abb291(52)=mB*abb291(2)
      abb291(58)=abb291(44)*abb291(52)
      abb291(58)=abb291(58)-abb291(16)
      abb291(58)=abb291(58)*abb291(25)
      abb291(59)=abb291(26)*mB
      abb291(60)=-abb291(59)*abb291(44)
      abb291(60)=abb291(60)+abb291(32)
      abb291(60)=c4*abb291(60)
      abb291(44)=-mB*abb291(44)
      abb291(44)=abb291(44)+abb291(31)
      abb291(44)=c2*abb291(44)
      abb291(44)=abb291(44)+abb291(60)+abb291(58)
      abb291(44)=spak4k7*abb291(44)
      abb291(58)=abb291(52)*abb291(34)
      abb291(60)=abb291(58)-abb291(36)
      abb291(61)=-abb291(60)*abb291(43)
      abb291(62)=abb291(35)*abb291(26)
      abb291(63)=abb291(45)*mB
      abb291(62)=abb291(62)-abb291(63)
      abb291(63)=-abb291(62)*abb291(51)
      abb291(64)=abb291(34)*mB
      abb291(65)=abb291(64)-abb291(35)
      abb291(66)=abb291(65)*abb291(57)
      abb291(19)=abb291(19)+abb291(44)+abb291(66)+abb291(63)+abb291(61)
      abb291(19)=spak2l6*abb291(19)
      abb291(16)=abb291(16)*abb291(17)
      abb291(44)=abb291(22)*abb291(23)
      abb291(16)=abb291(16)-abb291(44)
      abb291(16)=abb291(16)*abb291(25)
      abb291(44)=abb291(23)*abb291(15)
      abb291(61)=abb291(44)*abb291(27)
      abb291(32)=-abb291(17)*abb291(32)
      abb291(32)=abb291(61)+abb291(32)
      abb291(32)=c4*abb291(32)
      abb291(61)=abb291(12)*abb291(44)
      abb291(31)=-abb291(17)*abb291(31)
      abb291(31)=abb291(61)+abb291(31)
      abb291(31)=c2*abb291(31)
      abb291(16)=abb291(31)+abb291(32)+abb291(16)
      abb291(16)=spak4k7*abb291(16)
      abb291(31)=abb291(38)*abb291(23)
      abb291(32)=abb291(36)*abb291(17)
      abb291(61)=abb291(31)-abb291(32)
      abb291(63)=abb291(61)*abb291(43)
      abb291(45)=abb291(45)*abb291(23)
      abb291(45)=abb291(45)-abb291(48)
      abb291(66)=-abb291(45)*abb291(51)
      abb291(67)=abb291(23)*abb291(34)
      abb291(68)=abb291(67)-abb291(47)
      abb291(69)=-abb291(68)*abb291(57)
      abb291(16)=abb291(16)+abb291(69)+abb291(66)+abb291(63)
      abb291(16)=abb291(6)*abb291(16)
      abb291(63)=abb291(13)*abb291(11)
      abb291(66)=abb291(63)*abb291(15)
      abb291(69)=abb291(15)*abb291(11)
      abb291(70)=abb291(69)*abb291(52)
      abb291(66)=abb291(66)-abb291(70)
      abb291(66)=-abb291(66)*abb291(25)
      abb291(70)=-abb291(69)*abb291(59)
      abb291(71)=abb291(26)*abb291(15)
      abb291(72)=abb291(30)*abb291(71)
      abb291(70)=abb291(70)+abb291(72)
      abb291(70)=c4*abb291(70)
      abb291(69)=-mB*abb291(69)
      abb291(72)=abb291(15)*abb291(30)
      abb291(69)=abb291(69)+abb291(72)
      abb291(69)=c2*abb291(69)
      abb291(66)=abb291(69)+abb291(70)+abb291(66)
      abb291(66)=spak4k7*abb291(66)
      abb291(69)=abb291(11)*abb291(7)
      abb291(70)=abb291(69)*abb291(52)
      abb291(13)=abb291(69)*abb291(13)
      abb291(72)=abb291(70)-abb291(13)
      abb291(43)=-abb291(72)*abb291(43)
      abb291(73)=abb291(30)*abb291(7)
      abb291(74)=abb291(73)*abb291(26)
      abb291(75)=abb291(59)*abb291(69)
      abb291(76)=abb291(74)-abb291(75)
      abb291(51)=-abb291(76)*abb291(51)
      abb291(77)=abb291(69)*mB
      abb291(78)=abb291(77)-abb291(73)
      abb291(57)=abb291(78)*abb291(57)
      abb291(43)=abb291(66)+abb291(57)+abb291(51)+abb291(43)
      abb291(51)=spal5l6*spbl5k3
      abb291(43)=abb291(43)*abb291(51)
      abb291(16)=abb291(43)+abb291(16)+abb291(19)
      abb291(16)=8.0_ki*abb291(16)
      abb291(19)=abb291(35)*abb291(15)
      abb291(43)=abb291(19)*abb291(26)
      abb291(57)=abb291(34)*abb291(15)
      abb291(66)=abb291(59)*abb291(57)
      abb291(43)=abb291(43)-abb291(66)
      abb291(43)=abb291(43)*c4
      abb291(66)=abb291(57)*mB
      abb291(79)=abb291(66)-abb291(19)
      abb291(79)=abb291(79)*c2
      abb291(80)=abb291(57)*abb291(52)
      abb291(81)=abb291(36)*abb291(15)
      abb291(82)=abb291(80)-abb291(81)
      abb291(82)=abb291(82)*abb291(25)
      abb291(43)=-abb291(43)+abb291(79)-abb291(82)
      abb291(79)=16.0_ki*spak4l6
      abb291(82)=abb291(43)*abb291(79)
      abb291(83)=abb291(43)*spak4l6
      abb291(54)=abb291(54)*abb291(15)
      abb291(84)=abb291(24)*abb291(57)
      abb291(54)=abb291(54)-abb291(84)
      abb291(54)=abb291(54)*c2
      abb291(49)=abb291(49)*abb291(15)
      abb291(84)=abb291(84)*abb291(26)
      abb291(49)=abb291(49)-abb291(84)
      abb291(49)=abb291(49)*c4
      abb291(84)=abb291(81)*abb291(18)
      abb291(85)=abb291(28)*abb291(38)
      abb291(84)=abb291(84)-abb291(85)
      abb291(84)=abb291(25)*abb291(84)
      abb291(49)=-abb291(84)+abb291(54)+abb291(49)
      abb291(54)=spak4l6*abb291(49)
      abb291(84)=abb291(23)*abb291(5)**2
      abb291(85)=abb291(84)*abb291(33)
      abb291(86)=abb291(26)*c4
      abb291(87)=abb291(86)*spak1k4
      abb291(87)=abb291(87)+abb291(56)
      abb291(88)=abb291(85)*abb291(87)
      abb291(89)=abb291(33)*abb291(2)
      abb291(90)=abb291(89)*spak1k4
      abb291(91)=abb291(90)*abb291(25)
      abb291(92)=abb291(84)*abb291(91)
      abb291(88)=abb291(88)-abb291(92)
      abb291(92)=-abb291(42)*abb291(88)
      abb291(86)=abb291(86)+c2
      abb291(93)=abb291(10)*spak1k7
      abb291(94)=abb291(93)*spbk2k1
      abb291(95)=abb291(94)*abb291(86)
      abb291(96)=abb291(84)*spbk3k2
      abb291(97)=abb291(96)*abb291(95)
      abb291(98)=abb291(10)*abb291(2)
      abb291(20)=abb291(20)*abb291(98)
      abb291(99)=abb291(25)*abb291(20)
      abb291(100)=-abb291(84)*abb291(99)
      abb291(97)=abb291(100)+abb291(97)
      abb291(97)=spak4k7*abb291(97)
      abb291(92)=abb291(97)+abb291(92)
      abb291(92)=spak1l6*abb291(92)
      abb291(54)=abb291(54)+abb291(92)
      abb291(54)=abb291(4)*abb291(54)
      abb291(48)=abb291(48)*abb291(15)
      abb291(92)=abb291(57)*abb291(23)
      abb291(97)=abb291(92)*abb291(26)
      abb291(48)=abb291(48)-abb291(97)
      abb291(48)=abb291(48)*c4
      abb291(47)=abb291(47)*abb291(15)
      abb291(47)=abb291(47)-abb291(92)
      abb291(47)=abb291(47)*c2
      abb291(92)=abb291(44)*abb291(38)
      abb291(32)=abb291(32)*abb291(15)
      abb291(32)=abb291(92)-abb291(32)
      abb291(32)=abb291(25)*abb291(32)
      abb291(32)=abb291(48)+abb291(47)+abb291(32)
      abb291(47)=spak4l6*abb291(32)
      abb291(48)=abb291(33)*abb291(5)
      abb291(92)=abb291(23)*abb291(48)
      abb291(97)=abb291(92)*abb291(87)
      abb291(100)=-abb291(24)*abb291(91)
      abb291(97)=abb291(97)+abb291(100)
      abb291(100)=-abb291(42)*abb291(97)
      abb291(101)=abb291(24)*spbk3k2
      abb291(102)=abb291(101)*abb291(95)
      abb291(99)=-abb291(24)*abb291(99)
      abb291(99)=abb291(99)+abb291(102)
      abb291(99)=spak4k7*abb291(99)
      abb291(99)=abb291(99)+abb291(100)
      abb291(99)=spak1l6*abb291(99)
      abb291(47)=abb291(47)+abb291(99)
      abb291(99)=abb291(9)*abb291(6)
      abb291(47)=abb291(47)*abb291(99)
      abb291(100)=abb291(48)*mB
      abb291(102)=abb291(100)*abb291(87)
      abb291(103)=abb291(5)*mB
      abb291(104)=abb291(103)*abb291(25)
      abb291(105)=abb291(90)*abb291(104)
      abb291(102)=abb291(102)-abb291(105)
      abb291(105)=abb291(42)*abb291(102)
      abb291(20)=abb291(20)*abb291(104)
      abb291(106)=abb291(103)*abb291(86)
      abb291(94)=abb291(94)*abb291(106)
      abb291(107)=-spbk3k2*abb291(94)
      abb291(20)=abb291(20)+abb291(107)
      abb291(20)=spak4k7*abb291(20)
      abb291(20)=abb291(20)+abb291(105)
      abb291(20)=spak1l6*abb291(20)
      abb291(20)=abb291(47)+abb291(54)+abb291(83)+abb291(20)
      abb291(20)=16.0_ki*abb291(20)
      abb291(47)=-8.0_ki*abb291(83)
      abb291(54)=abb291(23)*spbk3k2
      abb291(83)=abb291(54)*abb291(21)
      abb291(105)=abb291(14)*abb291(17)
      abb291(83)=abb291(83)-abb291(105)
      abb291(83)=-abb291(83)*abb291(25)
      abb291(105)=abb291(23)*abb291(27)
      abb291(107)=abb291(30)*spbk3k2
      abb291(108)=abb291(107)*abb291(26)
      abb291(109)=-abb291(17)*abb291(108)
      abb291(105)=abb291(105)+abb291(109)
      abb291(105)=c4*abb291(105)
      abb291(23)=abb291(23)*abb291(12)
      abb291(109)=-abb291(17)*abb291(107)
      abb291(23)=abb291(23)+abb291(109)
      abb291(23)=c2*abb291(23)
      abb291(23)=abb291(23)+abb291(105)+abb291(83)
      abb291(23)=spak4k7*abb291(23)
      abb291(83)=abb291(40)*spbk2k1
      abb291(105)=abb291(61)*abb291(83)
      abb291(50)=abb291(50)*spbk2k1
      abb291(109)=-abb291(45)*abb291(50)
      abb291(56)=abb291(56)*spbk2k1
      abb291(110)=-abb291(68)*abb291(56)
      abb291(23)=abb291(23)+abb291(110)+abb291(109)+abb291(105)
      abb291(23)=abb291(6)*abb291(23)
      abb291(105)=abb291(101)*abb291(21)
      abb291(109)=abb291(14)*abb291(18)
      abb291(105)=abb291(105)-abb291(109)
      abb291(105)=-abb291(105)*abb291(25)
      abb291(27)=abb291(24)*abb291(27)
      abb291(109)=-abb291(18)*abb291(108)
      abb291(27)=abb291(27)+abb291(109)
      abb291(27)=c4*abb291(27)
      abb291(109)=abb291(24)*abb291(12)
      abb291(110)=-abb291(18)*abb291(107)
      abb291(109)=abb291(109)+abb291(110)
      abb291(109)=c2*abb291(109)
      abb291(27)=abb291(109)+abb291(27)+abb291(105)
      abb291(27)=spak4k7*abb291(27)
      abb291(105)=-abb291(37)*abb291(83)
      abb291(109)=-abb291(46)*abb291(50)
      abb291(110)=-abb291(55)*abb291(56)
      abb291(27)=abb291(27)+abb291(110)+abb291(109)+abb291(105)
      abb291(27)=abb291(4)*abb291(27)
      abb291(105)=abb291(12)*abb291(52)
      abb291(105)=abb291(105)-abb291(14)
      abb291(105)=abb291(105)*abb291(25)
      abb291(109)=-abb291(12)*abb291(59)
      abb291(108)=abb291(109)+abb291(108)
      abb291(108)=c4*abb291(108)
      abb291(109)=-mB*abb291(12)
      abb291(109)=abb291(109)+abb291(107)
      abb291(109)=c2*abb291(109)
      abb291(105)=abb291(109)+abb291(108)+abb291(105)
      abb291(105)=spak4k7*abb291(105)
      abb291(108)=-abb291(62)*abb291(50)
      abb291(109)=-abb291(60)*abb291(83)
      abb291(110)=abb291(65)*abb291(56)
      abb291(27)=abb291(27)+abb291(105)+abb291(110)+abb291(108)+abb291(109)
      abb291(27)=spak2l6*abb291(27)
      abb291(52)=abb291(52)*abb291(11)
      abb291(52)=abb291(52)-abb291(63)
      abb291(52)=abb291(52)*abb291(25)
      abb291(59)=-abb291(11)*abb291(59)
      abb291(26)=abb291(26)*abb291(30)
      abb291(26)=abb291(59)+abb291(26)
      abb291(26)=c4*abb291(26)
      abb291(59)=-mB*abb291(11)
      abb291(59)=abb291(59)+abb291(30)
      abb291(59)=c2*abb291(59)
      abb291(26)=abb291(59)+abb291(26)+abb291(52)
      abb291(26)=spak4k7*abb291(26)
      abb291(52)=-abb291(72)*abb291(83)
      abb291(50)=-abb291(76)*abb291(50)
      abb291(56)=abb291(78)*abb291(56)
      abb291(26)=abb291(26)+abb291(56)+abb291(50)+abb291(52)
      abb291(26)=abb291(26)*abb291(51)
      abb291(23)=abb291(26)+abb291(23)+abb291(27)
      abb291(23)=8.0_ki*abb291(23)
      abb291(26)=abb291(62)*c4
      abb291(27)=abb291(65)*c2
      abb291(50)=abb291(60)*abb291(25)
      abb291(26)=abb291(50)+abb291(26)-abb291(27)
      abb291(27)=abb291(26)*abb291(79)
      abb291(37)=-abb291(37)*abb291(25)
      abb291(46)=-c4*abb291(46)
      abb291(50)=-c2*abb291(55)
      abb291(37)=abb291(50)+abb291(46)+abb291(37)
      abb291(37)=spak4l6*abb291(37)
      abb291(46)=-spbk2k1*abb291(88)
      abb291(50)=abb291(86)*abb291(96)*abb291(10)
      abb291(51)=abb291(98)*spbk3k2
      abb291(52)=abb291(51)*abb291(84)
      abb291(55)=abb291(25)*abb291(52)
      abb291(50)=abb291(50)-abb291(55)
      abb291(55)=spak4k7*abb291(50)
      abb291(46)=abb291(55)+abb291(46)
      abb291(46)=spak1l6*abb291(46)
      abb291(37)=abb291(37)+abb291(46)
      abb291(37)=abb291(4)*abb291(37)
      abb291(46)=abb291(61)*abb291(25)
      abb291(45)=-c4*abb291(45)
      abb291(55)=-c2*abb291(68)
      abb291(45)=abb291(55)+abb291(45)+abb291(46)
      abb291(45)=spak4l6*abb291(45)
      abb291(46)=-spbk2k1*abb291(97)
      abb291(10)=abb291(10)*abb291(5)
      abb291(54)=abb291(86)*abb291(54)*abb291(10)
      abb291(55)=abb291(51)*abb291(24)
      abb291(56)=abb291(25)*abb291(55)
      abb291(54)=abb291(54)-abb291(56)
      abb291(56)=spak4k7*abb291(54)
      abb291(46)=abb291(56)+abb291(46)
      abb291(46)=spak1l6*abb291(46)
      abb291(45)=abb291(45)+abb291(46)
      abb291(45)=abb291(45)*abb291(99)
      abb291(26)=abb291(26)*spak4l6
      abb291(46)=spbk2k1*abb291(102)
      abb291(10)=abb291(10)*mB
      abb291(56)=abb291(10)*abb291(86)
      abb291(59)=abb291(56)*spbk3k2
      abb291(51)=abb291(51)*abb291(104)
      abb291(59)=abb291(59)-abb291(51)
      abb291(60)=-spak4k7*abb291(59)
      abb291(46)=abb291(60)+abb291(46)
      abb291(46)=spak1l6*abb291(46)
      abb291(37)=abb291(45)+abb291(37)-abb291(26)+abb291(46)
      abb291(37)=16.0_ki*abb291(37)
      abb291(26)=8.0_ki*abb291(26)
      abb291(45)=-abb291(36)*abb291(25)
      abb291(46)=abb291(35)*abb291(86)
      abb291(45)=abb291(46)+abb291(45)
      abb291(45)=abb291(45)*spak4k7
      abb291(46)=-8.0_ki*abb291(45)
      abb291(60)=abb291(103)*spak1k4
      abb291(61)=abb291(60)*abb291(86)
      abb291(62)=abb291(34)*abb291(61)
      abb291(65)=abb291(104)*spak1k4
      abb291(68)=abb291(65)*abb291(38)
      abb291(62)=-abb291(68)+abb291(62)
      abb291(68)=-abb291(42)*abb291(62)
      abb291(22)=-abb291(22)*abb291(104)
      abb291(83)=abb291(103)*abb291(15)
      abb291(105)=abb291(86)*abb291(83)
      abb291(108)=abb291(12)*abb291(105)
      abb291(22)=abb291(22)+abb291(108)
      abb291(22)=spak4k7*abb291(22)
      abb291(80)=-abb291(80)*abb291(25)
      abb291(66)=abb291(66)*abb291(86)
      abb291(66)=abb291(66)+abb291(80)
      abb291(66)=spak4l5*abb291(66)
      abb291(57)=abb291(106)*abb291(57)
      abb291(80)=abb291(15)*abb291(104)
      abb291(108)=abb291(80)*abb291(38)
      abb291(57)=abb291(108)-abb291(57)
      abb291(108)=spbl6k2*spak4l6
      abb291(109)=-abb291(57)*abb291(108)
      abb291(22)=abb291(109)+abb291(66)+abb291(22)+abb291(68)
      abb291(22)=8.0_ki*abb291(22)
      abb291(62)=-spbk2k1*abb291(62)
      abb291(66)=abb291(104)*abb291(21)
      abb291(68)=-spbk3k2*abb291(66)
      abb291(12)=abb291(12)*abb291(106)
      abb291(12)=abb291(12)+abb291(68)
      abb291(12)=spak4k7*abb291(12)
      abb291(64)=abb291(86)*abb291(64)
      abb291(58)=abb291(25)*abb291(58)
      abb291(58)=abb291(64)-abb291(58)
      abb291(64)=spak4l5*abb291(58)
      abb291(34)=abb291(106)*abb291(34)
      abb291(38)=abb291(104)*abb291(38)
      abb291(34)=abb291(34)-abb291(38)
      abb291(38)=abb291(34)*abb291(108)
      abb291(12)=abb291(38)+abb291(64)+abb291(12)+abb291(62)
      abb291(12)=8.0_ki*abb291(12)
      abb291(38)=abb291(73)*abb291(86)
      abb291(62)=abb291(13)*abb291(25)
      abb291(38)=abb291(38)-abb291(62)
      abb291(62)=-spbl5k2*spak4l5
      abb291(62)=abb291(62)-abb291(108)
      abb291(62)=8.0_ki*abb291(38)*abb291(62)
      abb291(49)=abb291(4)*abb291(49)
      abb291(32)=abb291(32)*abb291(99)
      abb291(32)=abb291(32)+abb291(49)+abb291(43)
      abb291(32)=spak2k4*abb291(32)
      abb291(43)=abb291(90)*abb291(15)
      abb291(49)=abb291(43)*abb291(104)
      abb291(64)=abb291(100)*abb291(15)
      abb291(68)=abb291(64)*abb291(87)
      abb291(49)=abb291(49)-abb291(68)
      abb291(68)=abb291(15)*abb291(85)
      abb291(90)=abb291(87)*abb291(68)
      abb291(43)=abb291(25)*abb291(43)
      abb291(109)=abb291(84)*abb291(43)
      abb291(90)=abb291(90)-abb291(109)
      abb291(93)=abb291(93)*abb291(86)
      abb291(96)=-abb291(96)*abb291(93)
      abb291(109)=spak1k7*abb291(25)
      abb291(52)=abb291(52)*abb291(109)
      abb291(52)=abb291(52)+abb291(96)
      abb291(52)=spak4k7*abb291(52)
      abb291(52)=abb291(52)+abb291(90)
      abb291(52)=abb291(4)*abb291(52)
      abb291(44)=abb291(44)*abb291(48)
      abb291(96)=abb291(87)*abb291(44)
      abb291(43)=abb291(24)*abb291(43)
      abb291(43)=abb291(96)-abb291(43)
      abb291(96)=-abb291(101)*abb291(93)
      abb291(55)=abb291(55)*abb291(109)
      abb291(55)=abb291(55)+abb291(96)
      abb291(55)=spak4k7*abb291(55)
      abb291(55)=abb291(55)+abb291(43)
      abb291(55)=abb291(55)*abb291(99)
      abb291(51)=-spak1k7*abb291(51)
      abb291(96)=abb291(103)*spbk3k2*abb291(93)
      abb291(51)=abb291(96)+abb291(51)
      abb291(51)=spak4k7*abb291(51)
      abb291(51)=abb291(55)+abb291(52)+abb291(51)+abb291(49)
      abb291(51)=es12*abb291(51)
      abb291(52)=spbl6l5*abb291(57)
      abb291(55)=spak1k7*abb291(86)
      abb291(57)=abb291(35)*abb291(55)
      abb291(96)=-abb291(36)*abb291(109)
      abb291(57)=abb291(96)+abb291(57)
      abb291(96)=-spbl6k1*abb291(57)
      abb291(52)=abb291(96)+abb291(52)
      abb291(52)=spak4l6*abb291(52)
      abb291(65)=abb291(65)*abb291(2)
      abb291(61)=abb291(65)-abb291(61)
      abb291(61)=abb291(61)*abb291(69)
      abb291(65)=abb291(42)*abb291(61)
      abb291(21)=-abb291(21)*abb291(80)
      abb291(69)=abb291(11)*abb291(105)
      abb291(21)=abb291(69)+abb291(21)
      abb291(21)=spak4k7*abb291(21)
      abb291(21)=abb291(21)+abb291(65)
      abb291(21)=spbl5k3*abb291(21)
      abb291(65)=abb291(73)*abb291(15)
      abb291(69)=abb291(65)*abb291(87)
      abb291(30)=-abb291(30)*abb291(55)
      abb291(63)=abb291(63)*abb291(109)
      abb291(30)=abb291(63)+abb291(30)
      abb291(30)=spak4k7*abb291(30)
      abb291(63)=abb291(13)*abb291(15)
      abb291(96)=-abb291(63)*abb291(40)
      abb291(30)=abb291(30)+abb291(69)+abb291(96)
      abb291(30)=spbk3k1*abb291(30)
      abb291(69)=abb291(57)*spak4l5
      abb291(96)=-spbl5k1*abb291(69)
      abb291(21)=abb291(96)+abb291(30)+abb291(51)+2.0_ki*abb291(21)+abb291(32)+&
      &abb291(52)
      abb291(21)=8.0_ki*abb291(21)
      abb291(30)=abb291(89)*abb291(25)
      abb291(32)=-abb291(30)*abb291(8)*spak1k7
      abb291(33)=abb291(33)*abb291(8)
      abb291(51)=abb291(33)*abb291(55)
      abb291(32)=abb291(51)+abb291(32)
      abb291(32)=abb291(32)*spak4l5
      abb291(51)=abb291(8)*abb291(91)
      abb291(52)=abb291(33)*abb291(87)
      abb291(89)=abb291(52)-abb291(51)
      abb291(96)=abb291(89)*spal5k7
      abb291(32)=abb291(32)+abb291(96)-abb291(45)
      abb291(45)=16.0_ki*abb291(32)
      abb291(96)=16.0_ki*abb291(49)
      abb291(90)=abb291(4)*abb291(90)
      abb291(43)=abb291(43)*abb291(99)
      abb291(43)=abb291(43)+abb291(90)+abb291(49)
      abb291(43)=16.0_ki*abb291(43)
      abb291(32)=-abb291(49)+abb291(32)
      abb291(32)=8.0_ki*abb291(32)
      abb291(49)=-abb291(4)*abb291(50)
      abb291(50)=-abb291(54)*abb291(99)
      abb291(49)=abb291(50)+abb291(59)+abb291(49)
      abb291(49)=spak4k7*abb291(49)
      abb291(50)=abb291(30)*abb291(8)
      abb291(54)=abb291(18)*abb291(50)
      abb291(59)=abb291(17)*abb291(8)
      abb291(48)=abb291(59)*abb291(48)
      abb291(90)=-abb291(48)*abb291(86)
      abb291(54)=abb291(90)+abb291(54)
      abb291(54)=abb291(4)*abb291(54)
      abb291(33)=abb291(86)*abb291(33)
      abb291(90)=-abb291(17)*abb291(33)
      abb291(101)=abb291(59)*abb291(30)
      abb291(90)=abb291(101)+abb291(90)
      abb291(90)=abb291(90)*abb291(99)
      abb291(33)=abb291(90)+abb291(54)+abb291(33)-abb291(50)
      abb291(33)=spak4l5*abb291(33)
      abb291(33)=abb291(33)+abb291(49)
      abb291(33)=spak1k2*abb291(33)
      abb291(39)=abb291(39)*abb291(25)
      abb291(49)=-abb291(53)*abb291(86)
      abb291(39)=abb291(49)+abb291(39)
      abb291(39)=abb291(4)*abb291(39)
      abb291(31)=abb291(31)*abb291(25)
      abb291(49)=-abb291(67)*abb291(86)
      abb291(31)=abb291(49)+abb291(31)
      abb291(31)=abb291(31)*abb291(99)
      abb291(31)=abb291(31)+abb291(39)+abb291(58)
      abb291(31)=spak2k4*abb291(31)
      abb291(39)=abb291(88)*abb291(4)
      abb291(49)=abb291(97)*abb291(99)
      abb291(39)=-abb291(39)+abb291(102)-abb291(49)
      abb291(49)=-es12*abb291(39)
      abb291(50)=spbk2k1*abb291(61)
      abb291(11)=abb291(11)*abb291(106)
      abb291(11)=-abb291(66)+abb291(11)
      abb291(11)=spak4k7*abb291(11)
      abb291(11)=abb291(11)+abb291(50)
      abb291(38)=spak4l5*abb291(38)
      abb291(11)=abb291(38)+2.0_ki*abb291(11)
      abb291(11)=spbl5k3*abb291(11)
      abb291(38)=abb291(93)*abb291(7)
      abb291(50)=-abb291(8)*abb291(38)
      abb291(53)=abb291(98)*abb291(7)
      abb291(54)=abb291(53)*abb291(8)
      abb291(58)=abb291(54)*abb291(109)
      abb291(50)=abb291(58)+abb291(50)
      abb291(50)=spak4l5*abb291(50)
      abb291(58)=abb291(8)*abb291(29)
      abb291(61)=abb291(87)*abb291(58)
      abb291(66)=abb291(40)*abb291(54)
      abb291(61)=abb291(61)-abb291(66)
      abb291(66)=-spal5k7*abb291(61)
      abb291(50)=abb291(50)+abb291(66)
      abb291(50)=spbk7k3*abb291(50)
      abb291(54)=-abb291(54)*abb291(25)
      abb291(58)=abb291(58)*abb291(86)
      abb291(54)=abb291(58)+abb291(54)
      abb291(54)=spak4l5*spak1l6*abb291(54)
      abb291(58)=spal5l6*abb291(61)
      abb291(54)=abb291(54)+abb291(58)
      abb291(54)=spbl6k3*abb291(54)
      abb291(17)=abb291(17)*abb291(52)
      abb291(52)=-abb291(59)*abb291(91)
      abb291(17)=abb291(52)+abb291(17)
      abb291(17)=abb291(17)*abb291(99)
      abb291(17)=abb291(17)-abb291(89)
      abb291(17)=spak2l5*abb291(17)
      abb291(48)=abb291(48)*abb291(87)
      abb291(52)=-abb291(13)*abb291(40)
      abb291(58)=abb291(73)*abb291(87)
      abb291(52)=abb291(58)+abb291(52)
      abb291(52)=spbk3k1*abb291(52)
      abb291(34)=-spbl6l5*spak4l6*abb291(34)
      abb291(18)=-abb291(18)*abb291(51)
      abb291(11)=abb291(17)+abb291(54)+abb291(50)+abb291(34)+abb291(52)+abb291(&
      &33)+abb291(49)+abb291(31)+abb291(48)+abb291(18)+abb291(11)
      abb291(11)=8.0_ki*abb291(11)
      abb291(17)=16.0_ki*abb291(102)
      abb291(18)=-16.0_ki*abb291(39)
      abb291(31)=8.0_ki*abb291(102)
      abb291(19)=-abb291(19)*abb291(87)
      abb291(14)=-abb291(14)*abb291(109)
      abb291(33)=abb291(107)*abb291(55)
      abb291(14)=abb291(33)+abb291(14)
      abb291(14)=spak4k7*abb291(14)
      abb291(33)=spbl5k2*abb291(69)
      abb291(34)=abb291(57)*abb291(108)
      abb291(39)=abb291(81)*abb291(40)
      abb291(14)=abb291(34)+abb291(33)+abb291(14)+abb291(39)+abb291(19)
      abb291(14)=8.0_ki*abb291(14)
      abb291(19)=-abb291(35)*abb291(87)
      abb291(33)=abb291(36)*abb291(40)
      abb291(19)=abb291(33)+abb291(19)
      abb291(19)=8.0_ki*abb291(19)
      abb291(33)=abb291(80)*abb291(98)
      abb291(33)=abb291(33)-abb291(94)
      abb291(33)=abb291(33)*spak4k7
      abb291(34)=abb291(60)*abb291(41)*abb291(38)
      abb291(35)=abb291(104)*abb291(53)
      abb291(36)=spak1k4*abb291(35)
      abb291(38)=abb291(36)*abb291(42)
      abb291(33)=abb291(33)+abb291(34)-abb291(38)
      abb291(34)=8.0_ki*spak1l6
      abb291(38)=abb291(34)*spbl5k3
      abb291(39)=abb291(33)*abb291(38)
      abb291(10)=abb291(10)*abb291(7)
      abb291(40)=abb291(87)*abb291(10)
      abb291(36)=abb291(40)-abb291(36)
      abb291(36)=spbk2k1*abb291(36)
      abb291(40)=abb291(104)*abb291(98)
      abb291(40)=abb291(40)-abb291(56)
      abb291(40)=abb291(40)*spak4k7
      abb291(36)=abb291(40)+abb291(36)
      abb291(38)=abb291(36)*abb291(38)
      abb291(40)=abb291(70)*abb291(15)
      abb291(41)=abb291(40)-abb291(63)
      abb291(41)=-abb291(41)*abb291(25)
      abb291(42)=abb291(71)*abb291(73)
      abb291(48)=abb291(75)*abb291(15)
      abb291(49)=abb291(48)-abb291(42)
      abb291(49)=c4*abb291(49)
      abb291(50)=abb291(77)*abb291(15)
      abb291(51)=abb291(50)-abb291(65)
      abb291(51)=c2*abb291(51)
      abb291(41)=abb291(51)+abb291(49)+abb291(41)
      abb291(49)=spbl5k2*spal5l6
      abb291(49)=8.0_ki*abb291(49)
      abb291(41)=abb291(41)*abb291(49)
      abb291(51)=-abb291(72)*abb291(25)
      abb291(52)=-c4*abb291(76)
      abb291(54)=c2*abb291(78)
      abb291(51)=abb291(54)+abb291(52)+abb291(51)
      abb291(49)=abb291(51)*abb291(49)
      abb291(40)=-abb291(63)+2.0_ki*abb291(40)
      abb291(40)=abb291(40)*abb291(25)
      abb291(42)=-2.0_ki*abb291(48)+abb291(42)
      abb291(42)=c4*abb291(42)
      abb291(48)=-2.0_ki*abb291(50)+abb291(65)
      abb291(48)=c2*abb291(48)
      abb291(40)=abb291(48)+abb291(42)+abb291(40)
      abb291(40)=8.0_ki*abb291(40)
      abb291(13)=-abb291(13)+2.0_ki*abb291(70)
      abb291(13)=abb291(13)*abb291(25)
      abb291(42)=abb291(74)-2.0_ki*abb291(75)
      abb291(42)=c4*abb291(42)
      abb291(48)=abb291(73)-2.0_ki*abb291(77)
      abb291(48)=c2*abb291(48)
      abb291(13)=abb291(48)+abb291(42)+abb291(13)
      abb291(13)=8.0_ki*abb291(13)
      abb291(42)=abb291(7)*abb291(95)
      abb291(25)=abb291(25)*abb291(53)
      abb291(48)=-abb291(15)*abb291(25)
      abb291(42)=abb291(48)+abb291(42)
      abb291(42)=abb291(34)*mB*abb291(42)
      abb291(29)=abb291(86)*abb291(29)
      abb291(25)=-abb291(25)+abb291(29)
      abb291(25)=abb291(34)*mB*abb291(25)
      abb291(29)=abb291(83)*abb291(30)
      abb291(48)=abb291(64)*abb291(86)
      abb291(29)=abb291(48)-abb291(29)
      abb291(48)=16.0_ki*spak1l6
      abb291(50)=abb291(48)*abb291(29)
      abb291(28)=abb291(30)*abb291(28)
      abb291(44)=abb291(86)*abb291(44)
      abb291(28)=abb291(28)-abb291(44)
      abb291(28)=abb291(28)*abb291(99)
      abb291(44)=abb291(86)*abb291(68)
      abb291(51)=abb291(84)*abb291(30)
      abb291(15)=abb291(51)*abb291(15)
      abb291(15)=abb291(44)-abb291(15)
      abb291(15)=abb291(15)*abb291(4)
      abb291(15)=abb291(29)+abb291(28)-abb291(15)
      abb291(28)=abb291(15)*abb291(48)
      abb291(44)=-abb291(29)*abb291(34)
      abb291(52)=abb291(100)*abb291(86)
      abb291(54)=abb291(103)*abb291(30)
      abb291(52)=abb291(52)-abb291(54)
      abb291(54)=abb291(48)*abb291(52)
      abb291(24)=abb291(30)*abb291(24)
      abb291(30)=abb291(86)*abb291(92)
      abb291(24)=abb291(24)-abb291(30)
      abb291(24)=abb291(24)*abb291(99)
      abb291(30)=abb291(86)*abb291(85)
      abb291(30)=abb291(30)-abb291(51)
      abb291(30)=abb291(30)*abb291(4)
      abb291(24)=abb291(52)+abb291(24)-abb291(30)
      abb291(30)=abb291(24)*abb291(48)
      abb291(34)=-abb291(52)*abb291(34)
      abb291(48)=abb291(29)*abb291(79)
      abb291(51)=abb291(52)*abb291(79)
      abb291(55)=8.0_ki*spak4l5
      abb291(29)=abb291(29)*abb291(55)
      abb291(52)=abb291(52)*abb291(55)
      abb291(33)=-8.0_ki*abb291(33)
      abb291(36)=-8.0_ki*abb291(36)
      abb291(55)=8.0_ki*spak2k4
      abb291(15)=abb291(15)*abb291(55)
      abb291(24)=abb291(24)*abb291(55)
      abb291(55)=-abb291(7)*abb291(94)
      abb291(53)=abb291(53)*abb291(80)
      abb291(53)=abb291(53)+abb291(55)
      abb291(53)=8.0_ki*abb291(53)
      abb291(10)=-abb291(10)*abb291(86)
      abb291(10)=abb291(10)+abb291(35)
      abb291(10)=8.0_ki*abb291(10)
      R2d291=0.0_ki
      rat2 = rat2 + R2d291
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='291' value='", &
          & R2d291, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd291h4
