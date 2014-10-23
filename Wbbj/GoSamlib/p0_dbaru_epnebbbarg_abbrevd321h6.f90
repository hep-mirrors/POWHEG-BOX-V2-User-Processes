module     p0_dbaru_epnebbbarg_abbrevd321h6
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh6
   implicit none
   private
   complex(ki), dimension(115), public :: abb321
   complex(ki), public :: R2d321
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
      abb321(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb321(2)=sqrt(mB**2)
      abb321(3)=sqrt2**(-1)
      abb321(4)=es234**(-1)
      abb321(5)=es567**(-1)
      abb321(6)=spbl5k2**(-1)
      abb321(7)=spak2l5**(-1)
      abb321(8)=spbk7k2**(-1)
      abb321(9)=spak2l6**(-1)
      abb321(10)=1.0_ki/(es34+es567-es12-es234)
      abb321(11)=spbl6k2**(-1)
      abb321(12)=spak1l5*spbl5k3
      abb321(13)=spak1k7*spbk7k3
      abb321(14)=abb321(12)-abb321(13)
      abb321(15)=spbl6k3*spak1l6
      abb321(16)=abb321(14)-abb321(15)
      abb321(17)=abb321(16)*spak3k4
      abb321(18)=spak1l5*spak2k4
      abb321(19)=abb321(18)*spbl5k2
      abb321(17)=abb321(17)-abb321(19)
      abb321(17)=abb321(17)*spal5k7
      abb321(20)=spak3k4*spbl6k3
      abb321(21)=abb321(20)*spal5l6
      abb321(22)=2.0_ki*spak1k7
      abb321(23)=abb321(21)*abb321(22)
      abb321(17)=abb321(17)+abb321(23)
      abb321(23)=abb321(2)**2
      abb321(24)=-abb321(23)*abb321(17)
      abb321(25)=abb321(22)*spak2k4
      abb321(26)=abb321(25)*spal5l6
      abb321(27)=abb321(23)*abb321(26)
      abb321(28)=abb321(23)*spal5k7
      abb321(29)=spak2k4*spak1l6
      abb321(30)=-abb321(28)*abb321(29)
      abb321(27)=abb321(27)+abb321(30)
      abb321(27)=spbl6k2*abb321(27)
      abb321(24)=abb321(27)+abb321(24)
      abb321(24)=spbl6k2*abb321(24)
      abb321(27)=spbk3k2*spal5k7
      abb321(30)=2.0_ki*abb321(27)
      abb321(31)=spak3k4*spak1l5
      abb321(32)=spbl6l5*abb321(30)*abb321(31)
      abb321(33)=-abb321(23)*abb321(32)
      abb321(24)=abb321(24)+abb321(33)
      abb321(24)=spbk3k2*abb321(24)
      abb321(33)=spak1l5*spak2k7
      abb321(34)=abb321(33)*abb321(7)
      abb321(35)=-spak1k7+2.0_ki*abb321(34)
      abb321(36)=spak3k4*abb321(6)
      abb321(35)=abb321(35)*abb321(36)
      abb321(37)=-abb321(23)*abb321(35)
      abb321(38)=abb321(36)*spak1k2
      abb321(39)=abb321(38)*abb321(7)
      abb321(40)=abb321(28)*abb321(39)
      abb321(37)=abb321(37)+abb321(40)
      abb321(37)=spbl6k2*abb321(37)
      abb321(40)=2.0_ki*spbl6k2
      abb321(41)=spal6k7*abb321(40)*abb321(38)
      abb321(42)=abb321(22)*spak2l5
      abb321(43)=abb321(42)-abb321(33)
      abb321(44)=es12+es71-es712
      abb321(45)=abb321(44)*abb321(6)
      abb321(46)=spak1k7*abb321(45)
      abb321(46)=abb321(43)+abb321(46)
      abb321(46)=spak3k4*abb321(46)
      abb321(46)=abb321(46)+abb321(41)
      abb321(46)=abb321(9)*abb321(23)*abb321(46)
      abb321(37)=abb321(37)+abb321(46)
      abb321(46)=spbk3k2**2
      abb321(37)=abb321(37)*abb321(46)
      abb321(47)=abb321(22)*spbl6k2
      abb321(48)=spak3k4*abb321(6)**2
      abb321(49)=abb321(7)*abb321(44)
      abb321(50)=-abb321(2)*abb321(49)*abb321(48)*abb321(47)
      abb321(51)=abb321(9)*abb321(2)
      abb321(52)=abb321(44)*abb321(51)
      abb321(53)=abb321(36)*spak1k7
      abb321(54)=-abb321(53)*abb321(52)
      abb321(50)=abb321(50)+abb321(54)
      abb321(54)=abb321(46)*mB
      abb321(50)=abb321(50)*abb321(54)
      abb321(37)=abb321(37)+abb321(50)
      abb321(50)=mB**2
      abb321(37)=abb321(37)*abb321(50)
      abb321(24)=abb321(24)+abb321(37)
      abb321(24)=abb321(4)*abb321(24)
      abb321(37)=spbk4k3*spak4k7
      abb321(55)=spak1k7*spbk3k1
      abb321(37)=abb321(37)+abb321(55)
      abb321(56)=spal5l6*abb321(37)
      abb321(57)=2.0_ki*abb321(10)
      abb321(58)=abb321(56)*abb321(57)
      abb321(59)=-abb321(23)*abb321(58)
      abb321(60)=spbk3k1*spak1l6
      abb321(61)=spbk4k3*spak4l6
      abb321(60)=abb321(60)+abb321(61)
      abb321(61)=abb321(10)*abb321(60)*abb321(28)
      abb321(59)=abb321(59)+abb321(61)
      abb321(61)=spbl6k2*spak1k4
      abb321(59)=abb321(59)*abb321(61)
      abb321(62)=spbk4k3*spak4l5
      abb321(63)=spak1l5*spbk3k1
      abb321(62)=abb321(62)+abb321(63)
      abb321(64)=spbl5k2*abb321(62)
      abb321(65)=spak1k4*abb321(10)
      abb321(66)=abb321(65)*spal5k7
      abb321(67)=abb321(64)*abb321(66)
      abb321(68)=-abb321(23)*abb321(67)
      abb321(59)=abb321(68)+abb321(59)
      abb321(59)=spbl6k2*abb321(59)
      abb321(24)=abb321(59)+abb321(24)
      abb321(24)=abb321(8)*abb321(24)
      abb321(59)=abb321(22)*spbl6k3
      abb321(68)=abb321(36)*abb321(2)
      abb321(69)=abb321(68)*abb321(59)
      abb321(70)=spbl6k2*abb321(6)
      abb321(71)=abb321(70)*abb321(2)
      abb321(72)=-abb321(25)*abb321(71)
      abb321(69)=abb321(72)+abb321(69)
      abb321(69)=spal6k7*abb321(69)
      abb321(72)=spak1k7*spak2k4
      abb321(73)=abb321(72)*spal5k7
      abb321(74)=-abb321(2)*abb321(73)
      abb321(69)=abb321(74)+abb321(69)
      abb321(69)=spbl6k2*abb321(69)
      abb321(74)=-spbl6l5*abb321(27)*abb321(22)*abb321(68)
      abb321(75)=spal5k7*spak3k4
      abb321(76)=abb321(75)*spbl6k3
      abb321(77)=abb321(76)*spak1k7
      abb321(78)=abb321(2)*abb321(77)
      abb321(69)=abb321(74)+abb321(78)+abb321(69)
      abb321(74)=mB*spbk3k2
      abb321(69)=abb321(69)*abb321(74)
      abb321(76)=abb321(76)*abb321(22)
      abb321(78)=-abb321(23)*abb321(76)
      abb321(79)=spbl6k2*abb321(72)*abb321(28)
      abb321(78)=abb321(78)+abb321(79)
      abb321(78)=spbk3k2*abb321(78)
      abb321(69)=abb321(78)+abb321(69)
      abb321(69)=abb321(4)*abb321(69)
      abb321(78)=abb321(70)*abb321(65)
      abb321(79)=2.0_ki*abb321(78)
      abb321(80)=abb321(79)*spal6k7
      abb321(81)=abb321(37)*abb321(80)
      abb321(82)=abb321(37)*abb321(66)
      abb321(81)=abb321(81)+abb321(82)
      abb321(83)=mB*spbl6k2*abb321(2)*abb321(81)
      abb321(84)=abb321(65)*spbl6k2
      abb321(85)=abb321(84)*spal5k7
      abb321(86)=abb321(85)*abb321(37)
      abb321(87)=-abb321(23)*abb321(86)
      abb321(24)=abb321(24)+abb321(69)+abb321(87)+abb321(83)
      abb321(69)=gW*TR
      abb321(69)=abb321(69)**2*abb321(5)*CVDU*c4*i_
      abb321(83)=4.0_ki*abb321(69)
      abb321(87)=abb321(1)*abb321(3)
      abb321(88)=abb321(83)*abb321(87)
      abb321(24)=abb321(24)*abb321(88)
      abb321(89)=abb321(75)*spak1k2
      abb321(90)=-abb321(46)*abb321(51)*abb321(89)
      abb321(91)=-spak3k4*abb321(43)
      abb321(91)=abb321(91)-abb321(41)
      abb321(91)=abb321(9)*abb321(91)
      abb321(92)=abb321(39)*spal5k7
      abb321(35)=abb321(35)-abb321(92)
      abb321(35)=abb321(35)*spbl6k2
      abb321(91)=abb321(35)+abb321(91)
      abb321(91)=abb321(91)*abb321(54)
      abb321(90)=abb321(90)+abb321(91)
      abb321(90)=mB*abb321(90)
      abb321(91)=spal5k7*spak2k4
      abb321(93)=abb321(91)*spak1l6
      abb321(26)=abb321(93)-abb321(26)
      abb321(93)=abb321(26)*spbl6k2
      abb321(17)=abb321(93)+abb321(17)
      abb321(17)=abb321(17)*spbl6k2
      abb321(17)=abb321(17)+abb321(32)
      abb321(17)=abb321(17)*spbk3k2
      abb321(32)=abb321(17)+abb321(90)
      abb321(32)=abb321(4)*abb321(32)
      abb321(90)=spal5k7*abb321(10)
      abb321(93)=abb321(60)*abb321(90)
      abb321(58)=abb321(93)-abb321(58)
      abb321(58)=abb321(58)*abb321(61)
      abb321(58)=abb321(58)-abb321(67)
      abb321(58)=abb321(58)*spbl6k2
      abb321(32)=-abb321(58)+abb321(32)
      abb321(32)=abb321(8)*abb321(32)
      abb321(94)=-spbl6k2*abb321(73)
      abb321(76)=abb321(76)+abb321(94)
      abb321(94)=abb321(4)*spbk3k2
      abb321(76)=abb321(76)*abb321(94)
      abb321(32)=abb321(32)+abb321(86)+abb321(76)
      abb321(76)=8.0_ki*abb321(69)
      abb321(95)=abb321(76)*abb321(87)
      abb321(32)=abb321(32)*abb321(95)
      abb321(96)=abb321(36)*abb321(9)
      abb321(97)=abb321(74)**2
      abb321(98)=abb321(96)*abb321(97)
      abb321(99)=abb321(98)*spak1k7
      abb321(100)=abb321(44)*abb321(99)
      abb321(101)=abb321(87)*abb321(8)
      abb321(102)=abb321(69)*abb321(101)*abb321(4)
      abb321(103)=8.0_ki*abb321(102)
      abb321(104)=abb321(103)*abb321(100)
      abb321(105)=16.0_ki*abb321(102)
      abb321(100)=abb321(105)*abb321(100)
      abb321(106)=abb321(27)*abb321(61)
      abb321(107)=abb321(106)*abb321(105)
      abb321(108)=abb321(107)*abb321(23)
      abb321(109)=32.0_ki*abb321(102)
      abb321(110)=abb321(109)*abb321(106)
      abb321(111)=mB*abb321(9)
      abb321(81)=abb321(81)*abb321(111)
      abb321(112)=abb321(51)*abb321(27)
      abb321(113)=-abb321(72)*abb321(112)
      abb321(114)=-spal6k7*abb321(70)*abb321(25)
      abb321(73)=-abb321(73)+abb321(114)
      abb321(114)=abb321(74)*abb321(9)
      abb321(73)=abb321(73)*abb321(114)
      abb321(73)=abb321(113)+abb321(73)
      abb321(73)=abb321(4)*abb321(73)
      abb321(82)=abb321(51)*abb321(82)
      abb321(73)=abb321(73)+abb321(82)+abb321(81)
      abb321(73)=mB*abb321(73)
      abb321(81)=abb321(99)+2.0_ki*abb321(106)
      abb321(82)=abb321(8)*abb321(4)
      abb321(106)=abb321(23)*abb321(82)
      abb321(113)=-abb321(81)*abb321(106)
      abb321(73)=abb321(113)+abb321(73)
      abb321(73)=abb321(73)*abb321(95)
      abb321(113)=abb321(81)*abb321(105)
      abb321(115)=-abb321(22)*abb321(45)
      abb321(43)=abb321(115)-abb321(43)
      abb321(43)=spak3k4*abb321(43)
      abb321(43)=abb321(43)-abb321(41)
      abb321(43)=abb321(9)*abb321(43)
      abb321(35)=abb321(35)+abb321(43)
      abb321(35)=abb321(35)*abb321(97)
      abb321(17)=abb321(17)+abb321(35)
      abb321(17)=abb321(4)*abb321(17)
      abb321(17)=-abb321(58)+abb321(17)
      abb321(17)=abb321(8)*abb321(17)
      abb321(35)=-spbl6k2*spal5k7*abb321(25)
      abb321(35)=3.0_ki*abb321(77)+abb321(35)
      abb321(35)=abb321(35)*abb321(94)
      abb321(17)=abb321(17)+2.0_ki*abb321(86)+abb321(35)
      abb321(17)=abb321(17)*abb321(88)
      abb321(35)=abb321(81)*abb321(103)
      abb321(43)=abb321(46)*abb321(31)
      abb321(58)=abb321(43)*abb321(106)
      abb321(77)=abb321(4)*abb321(2)*abb321(53)*abb321(54)
      abb321(58)=abb321(77)+abb321(58)
      abb321(58)=abb321(58)*abb321(88)
      abb321(43)=-abb321(103)*abb321(43)
      abb321(77)=4.0_ki*abb321(102)
      abb321(46)=abb321(77)*abb321(46)
      abb321(81)=-abb321(31)*abb321(46)
      abb321(57)=abb321(57)*abb321(37)*spak2l5
      abb321(86)=spbk3k1*spak1k2
      abb321(102)=spbk4k3*spak2k4
      abb321(86)=abb321(86)-abb321(102)
      abb321(90)=abb321(86)*abb321(90)
      abb321(102)=-abb321(57)-abb321(90)
      abb321(102)=spak1k4*abb321(102)
      abb321(80)=-abb321(86)*abb321(80)
      abb321(80)=abb321(102)+abb321(80)
      abb321(80)=abb321(9)*abb321(80)
      abb321(86)=-abb321(37)*abb321(78)
      abb321(80)=abb321(86)+abb321(80)
      abb321(80)=mB*abb321(80)
      abb321(86)=abb321(78)*abb321(2)
      abb321(102)=-abb321(37)*abb321(86)
      abb321(57)=-abb321(2)*abb321(57)
      abb321(106)=3.0_ki*abb321(2)
      abb321(90)=-abb321(106)*abb321(90)
      abb321(57)=abb321(57)+abb321(90)
      abb321(57)=abb321(9)*spak1k4*abb321(57)
      abb321(57)=abb321(80)+abb321(102)+abb321(57)
      abb321(57)=mB*abb321(57)
      abb321(80)=-abb321(6)*abb321(49)*abb321(18)
      abb321(34)=spbk7k3*abb321(36)*abb321(34)
      abb321(34)=abb321(80)+abb321(34)
      abb321(34)=abb321(34)*abb321(40)
      abb321(80)=spak2k7*abb321(31)
      abb321(41)=-abb321(41)-abb321(89)+abb321(80)
      abb321(41)=spbk7k3*abb321(41)
      abb321(80)=abb321(44)*abb321(18)
      abb321(41)=-abb321(80)+abb321(41)
      abb321(41)=abb321(9)*abb321(41)
      abb321(90)=-abb321(53)-abb321(92)
      abb321(90)=spbk7l6*abb321(90)
      abb321(92)=-spbk7l5*abb321(42)
      abb321(102)=-spak1k2*abb321(23)
      abb321(92)=abb321(92)+abb321(102)
      abb321(92)=abb321(92)*abb321(36)
      abb321(102)=spbk7l6*abb321(11)*abb321(89)
      abb321(92)=abb321(92)+abb321(102)
      abb321(92)=abb321(9)*abb321(92)
      abb321(90)=abb321(92)+abb321(90)
      abb321(90)=spbk3k2*abb321(90)
      abb321(34)=abb321(90)+abb321(34)+abb321(41)
      abb321(34)=spbk3k2*abb321(34)
      abb321(38)=abb321(51)*abb321(38)*abb321(54)
      abb321(34)=abb321(34)-6.0_ki*abb321(38)
      abb321(34)=mB*abb321(34)
      abb321(33)=-abb321(42)-abb321(33)
      abb321(33)=spbk7k3*abb321(33)
      abb321(38)=-spak2l5*abb321(15)
      abb321(41)=spak1k2*spal5l6
      abb321(42)=-spbl6k3*abb321(41)
      abb321(38)=abb321(38)+abb321(42)
      abb321(33)=2.0_ki*abb321(38)+abb321(33)
      abb321(33)=spak3k4*abb321(33)
      abb321(38)=spak2l5*spak1l6
      abb321(38)=abb321(38)+abb321(41)
      abb321(41)=spak2k4*abb321(38)*abb321(40)
      abb321(42)=spbk7k3*abb321(89)
      abb321(33)=abb321(41)-3.0_ki*abb321(42)+abb321(80)+abb321(33)
      abb321(33)=abb321(33)*abb321(51)
      abb321(14)=-abb321(14)*abb321(68)
      abb321(41)=abb321(2)*abb321(18)
      abb321(14)=2.0_ki*abb321(41)+abb321(14)
      abb321(14)=spbl6k2*abb321(14)
      abb321(41)=abb321(31)*spbl6k3
      abb321(42)=-abb321(2)*abb321(41)
      abb321(14)=abb321(42)+abb321(14)
      abb321(42)=2.0_ki*spbl6l5
      abb321(54)=-spak1l5*abb321(42)
      abb321(80)=spak1k7*spbk7l6
      abb321(54)=abb321(54)+abb321(80)
      abb321(54)=spbk3k2*abb321(54)*abb321(68)
      abb321(14)=abb321(54)+2.0_ki*abb321(14)+abb321(33)
      abb321(14)=spbk3k2*abb321(14)
      abb321(14)=abb321(14)+abb321(34)
      abb321(14)=mB*abb321(14)
      abb321(13)=abb321(15)+abb321(13)
      abb321(15)=-spbk7l6*abb321(13)
      abb321(33)=spbk7k3*abb321(42)
      abb321(34)=spbk7l6*spbl5k3
      abb321(33)=abb321(33)+abb321(34)
      abb321(33)=spak1l5*abb321(33)
      abb321(15)=abb321(33)+abb321(15)
      abb321(15)=spak3k4*abb321(15)
      abb321(33)=-spbk7l6*abb321(19)
      abb321(15)=abb321(33)+abb321(15)
      abb321(15)=spal5k7*abb321(15)
      abb321(26)=spbk7l6*abb321(26)
      abb321(33)=abb321(23)*abb321(18)
      abb321(26)=abb321(33)+abb321(26)
      abb321(26)=spbl6k2*abb321(26)
      abb321(33)=spak1l5*spbl6k3
      abb321(34)=-abb321(23)*abb321(33)
      abb321(54)=spbk7l6*spal5l6*abb321(59)
      abb321(34)=abb321(54)+abb321(34)
      abb321(34)=spak3k4*abb321(34)
      abb321(15)=abb321(26)+abb321(34)+abb321(15)
      abb321(15)=spbk3k2*abb321(15)
      abb321(14)=abb321(15)+abb321(14)
      abb321(14)=abb321(4)*abb321(14)
      abb321(15)=-spbk3k1*abb321(38)
      abb321(26)=spak2k4*spal5l6
      abb321(34)=-spak2l5*spak4l6
      abb321(34)=abb321(34)+abb321(26)
      abb321(34)=spbk4k3*abb321(34)
      abb321(15)=abb321(15)+abb321(34)
      abb321(34)=2.0_ki*abb321(84)
      abb321(15)=abb321(15)*abb321(34)
      abb321(34)=abb321(44)*abb321(62)
      abb321(38)=-abb321(34)*abb321(65)
      abb321(15)=abb321(38)+abb321(15)
      abb321(15)=abb321(15)*abb321(51)
      abb321(38)=abb321(79)*abb321(49)*abb321(62)
      abb321(49)=abb321(65)*abb321(9)
      abb321(34)=abb321(34)*abb321(49)
      abb321(34)=abb321(38)+abb321(34)
      abb321(34)=mB*abb321(34)
      abb321(38)=abb321(62)*abb321(84)
      abb321(54)=abb321(2)*abb321(38)
      abb321(15)=abb321(34)-4.0_ki*abb321(54)+abb321(15)
      abb321(15)=mB*abb321(15)
      abb321(34)=spbk7l6*abb321(56)
      abb321(54)=-abb321(62)*abb321(23)
      abb321(34)=2.0_ki*abb321(34)+abb321(54)
      abb321(34)=abb321(10)*abb321(34)
      abb321(54)=-spbk7l6*abb321(93)
      abb321(34)=abb321(34)+abb321(54)
      abb321(34)=abb321(34)*abb321(61)
      abb321(54)=spbk7l6*abb321(67)
      abb321(14)=abb321(14)+abb321(15)+abb321(54)+abb321(34)
      abb321(14)=abb321(8)*abb321(14)
      abb321(15)=abb321(53)*spbl6k3
      abb321(34)=-abb321(106)*abb321(15)
      abb321(53)=abb321(72)*abb321(71)
      abb321(54)=spak1k2*abb321(91)*abb321(106)
      abb321(25)=abb321(2)*spak2l5*abb321(25)
      abb321(25)=abb321(25)+abb321(54)
      abb321(25)=abb321(9)*abb321(25)
      abb321(25)=abb321(25)+abb321(34)+abb321(53)
      abb321(25)=spbk3k2*abb321(25)
      abb321(34)=abb321(70)*spak2k4
      abb321(53)=2.0_ki*abb321(34)
      abb321(54)=spal6k7*abb321(53)
      abb321(54)=abb321(54)+abb321(91)
      abb321(54)=spak1k2*abb321(54)
      abb321(20)=-spak1k7*abb321(11)*abb321(20)
      abb321(20)=abb321(72)+abb321(20)
      abb321(20)=spak2l5*abb321(20)
      abb321(20)=2.0_ki*abb321(20)+abb321(54)
      abb321(20)=abb321(9)*abb321(20)
      abb321(54)=abb321(70)*abb321(72)
      abb321(15)=abb321(20)-abb321(15)+abb321(54)
      abb321(15)=abb321(15)*abb321(74)
      abb321(15)=abb321(25)+abb321(15)
      abb321(15)=mB*abb321(15)
      abb321(20)=-abb321(18)*abb321(42)
      abb321(25)=spbk7l6*abb321(72)
      abb321(20)=abb321(20)+abb321(25)
      abb321(20)=abb321(20)*abb321(27)
      abb321(15)=abb321(20)+abb321(15)
      abb321(15)=abb321(4)*abb321(15)
      abb321(20)=abb321(63)*abb321(42)
      abb321(25)=spak4l5*abb321(42)
      abb321(42)=-spbk7l6*spak4k7
      abb321(25)=abb321(25)+abb321(42)
      abb321(25)=spbk4k3*abb321(25)
      abb321(42)=-spbk7l6*abb321(55)
      abb321(20)=abb321(42)+abb321(20)+abb321(25)
      abb321(20)=abb321(20)*abb321(66)
      abb321(14)=abb321(14)+abb321(15)+abb321(20)+abb321(57)
      abb321(14)=abb321(14)*abb321(88)
      abb321(15)=abb321(18)*spbl6k2
      abb321(15)=abb321(15)-abb321(41)
      abb321(15)=abb321(15)*spbk3k2
      abb321(20)=abb321(98)*spak1k2
      abb321(15)=abb321(15)-abb321(20)
      abb321(15)=abb321(15)*abb321(4)
      abb321(15)=abb321(15)-abb321(38)
      abb321(25)=abb321(76)*abb321(101)
      abb321(38)=-abb321(15)*abb321(25)
      abb321(20)=abb321(103)*abb321(20)
      abb321(41)=16.0_ki*abb321(69)
      abb321(41)=abb321(41)*abb321(101)
      abb321(42)=-abb321(15)*abb321(41)
      abb321(54)=spak1k4*spbk7l6
      abb321(55)=abb321(54)*abb321(27)
      abb321(56)=abb321(2)*abb321(61)*abb321(6)
      abb321(51)=abb321(51)*spak2l5
      abb321(57)=abb321(51)*spak1k4
      abb321(56)=abb321(56)-abb321(57)
      abb321(57)=abb321(56)*abb321(74)
      abb321(55)=-abb321(55)+2.0_ki*abb321(57)
      abb321(55)=abb321(55)*abb321(105)
      abb321(57)=abb321(79)*abb321(7)*abb321(62)
      abb321(59)=-abb321(60)*abb321(78)
      abb321(62)=abb321(62)*abb321(65)
      abb321(59)=-abb321(62)+abb321(59)
      abb321(59)=abb321(9)*abb321(59)
      abb321(57)=abb321(57)+abb321(59)
      abb321(57)=abb321(57)*abb321(50)
      abb321(59)=abb321(36)*abb321(33)
      abb321(63)=-abb321(70)*abb321(18)
      abb321(59)=abb321(59)+abb321(63)
      abb321(59)=abb321(7)*abb321(59)
      abb321(16)=-abb321(6)*abb321(16)
      abb321(33)=abb321(11)*abb321(33)
      abb321(16)=abb321(33)+abb321(16)
      abb321(16)=spak3k4*abb321(16)
      abb321(33)=abb321(70)*abb321(29)
      abb321(16)=abb321(33)+abb321(18)+abb321(16)
      abb321(16)=abb321(9)*abb321(16)
      abb321(16)=2.0_ki*abb321(59)+abb321(16)
      abb321(16)=spbk3k2*abb321(16)
      abb321(33)=abb321(7)*abb321(48)
      abb321(48)=-abb321(11)*abb321(96)
      abb321(33)=abb321(33)+abb321(48)
      abb321(33)=abb321(97)*abb321(9)*spak1k2*abb321(33)
      abb321(16)=abb321(16)+abb321(33)
      abb321(16)=mB*abb321(16)
      abb321(33)=spbk3k2*abb321(56)
      abb321(16)=-4.0_ki*abb321(33)+abb321(16)
      abb321(16)=mB*abb321(16)
      abb321(33)=abb321(30)*abb321(54)
      abb321(16)=abb321(33)+abb321(16)
      abb321(16)=abb321(4)*abb321(16)
      abb321(16)=abb321(57)+abb321(16)
      abb321(16)=abb321(8)*abb321(16)
      abb321(33)=abb321(9)*abb321(6)
      abb321(48)=abb321(33)*abb321(50)
      abb321(57)=abb321(48)*abb321(65)
      abb321(59)=-abb321(37)*abb321(57)
      abb321(63)=abb321(94)*abb321(72)
      abb321(67)=abb321(48)*abb321(63)
      abb321(16)=abb321(16)+abb321(59)+abb321(67)
      abb321(16)=abb321(16)*abb321(95)
      abb321(59)=spbk3k2*spak1k4
      abb321(48)=abb321(48)*abb321(109)*abb321(59)
      abb321(67)=abb321(83)*abb321(101)
      abb321(15)=abb321(15)*abb321(67)
      abb321(18)=abb321(18)*abb321(94)
      abb321(69)=-spbk3k2*spbk7k3*abb321(31)*abb321(82)
      abb321(18)=abb321(69)-abb321(62)+abb321(18)
      abb321(18)=abb321(18)*abb321(95)
      abb321(12)=-abb321(12)-abb321(13)
      abb321(12)=spak3k4*abb321(12)
      abb321(13)=spbl6k2*abb321(29)
      abb321(12)=abb321(13)+abb321(19)+abb321(12)
      abb321(12)=spbk3k2*abb321(12)
      abb321(13)=abb321(9)*spak3k4
      abb321(19)=abb321(13)*abb321(11)
      abb321(29)=spak1k2*abb321(19)
      abb321(29)=-abb321(39)+abb321(29)
      abb321(29)=abb321(29)*abb321(97)
      abb321(12)=abb321(12)+abb321(29)
      abb321(12)=abb321(4)*abb321(12)
      abb321(29)=-abb321(64)*abb321(65)
      abb321(39)=-abb321(60)*abb321(84)
      abb321(12)=abb321(12)+abb321(29)+abb321(39)
      abb321(12)=abb321(8)*abb321(12)
      abb321(29)=-abb321(37)*abb321(65)
      abb321(12)=abb321(12)+abb321(29)+abb321(63)
      abb321(12)=abb321(12)*abb321(88)
      abb321(29)=abb321(59)*abb321(105)
      abb321(37)=abb321(66)*spbk4k3
      abb321(39)=abb321(84)*spal5l6
      abb321(59)=abb321(8)*spbk4k3*abb321(39)
      abb321(59)=abb321(37)+abb321(59)
      abb321(59)=abb321(59)*abb321(95)
      abb321(28)=abb321(28)*abb321(61)
      abb321(60)=-spbk4k2*abb321(28)
      abb321(62)=abb321(27)*spbl6k2
      abb321(63)=abb321(62)*abb321(23)
      abb321(64)=-spak1k3*abb321(63)
      abb321(60)=abb321(60)+abb321(64)
      abb321(60)=abb321(60)*abb321(103)
      abb321(64)=abb321(62)*spak1k3
      abb321(61)=abb321(61)*spal5k7
      abb321(69)=abb321(61)*spbk4k2
      abb321(64)=abb321(64)+abb321(69)
      abb321(69)=abb321(64)*abb321(105)
      abb321(64)=abb321(64)*abb321(103)
      abb321(70)=-spbk4k2*abb321(56)
      abb321(71)=abb321(71)-abb321(51)
      abb321(71)=abb321(71)*spbk3k2
      abb321(72)=-spak1k3*abb321(71)
      abb321(70)=abb321(72)+abb321(70)
      abb321(72)=2.0_ki*mB
      abb321(70)=abb321(70)*abb321(72)
      abb321(54)=abb321(54)*spal5k7
      abb321(80)=spbk4k2*abb321(54)
      abb321(84)=abb321(27)*spbk7l6
      abb321(89)=spak1k3*abb321(84)
      abb321(70)=abb321(70)+abb321(80)+abb321(89)
      abb321(70)=abb321(70)*abb321(103)
      abb321(80)=abb321(33)*spak1k4
      abb321(89)=-spbk4k2*abb321(80)
      abb321(33)=abb321(33)*spbk3k2
      abb321(90)=-spak1k3*abb321(33)
      abb321(89)=abb321(89)+abb321(90)
      abb321(89)=abb321(89)*abb321(50)*abb321(105)
      abb321(90)=spak1k4*spbk4k2
      abb321(92)=spbk3k2*spak1k3
      abb321(90)=abb321(90)+abb321(92)
      abb321(90)=abb321(90)*abb321(103)
      abb321(92)=-abb321(44)*abb321(37)
      abb321(93)=spal6k7*abb321(44)
      abb321(79)=abb321(93)*abb321(79)
      abb321(94)=-spbk4k3*abb321(79)
      abb321(92)=abb321(92)+abb321(94)
      abb321(92)=abb321(92)*abb321(111)
      abb321(94)=-abb321(52)*abb321(37)
      abb321(92)=abb321(94)+abb321(92)
      abb321(92)=mB*abb321(92)
      abb321(28)=spbk4k3*abb321(28)
      abb321(94)=spak1k2*abb321(63)
      abb321(28)=abb321(28)+abb321(94)
      abb321(94)=2.0_ki*abb321(4)
      abb321(28)=abb321(28)*abb321(94)
      abb321(95)=abb321(85)*abb321(23)
      abb321(101)=spbk4k3*abb321(95)
      abb321(28)=abb321(28)+abb321(101)+abb321(92)
      abb321(28)=abb321(28)*abb321(67)
      abb321(92)=abb321(62)*spak1k2
      abb321(61)=abb321(61)*spbk4k3
      abb321(61)=abb321(92)+abb321(61)
      abb321(92)=-abb321(4)*abb321(61)
      abb321(101)=abb321(85)*spbk4k3
      abb321(92)=-abb321(101)+abb321(92)
      abb321(92)=abb321(92)*abb321(41)
      abb321(61)=-abb321(61)*abb321(94)
      abb321(61)=-abb321(101)+abb321(61)
      abb321(61)=abb321(61)*abb321(67)
      abb321(101)=abb321(51)*abb321(65)
      abb321(86)=abb321(101)-abb321(86)
      abb321(101)=-spbk4k3*abb321(86)
      abb321(45)=-spak2l5+2.0_ki*abb321(45)
      abb321(49)=abb321(45)*abb321(49)
      abb321(49)=abb321(49)+abb321(78)
      abb321(78)=mB*spbk4k3*abb321(49)
      abb321(78)=3.0_ki*abb321(101)+abb321(78)
      abb321(78)=mB*abb321(78)
      abb321(56)=spbk4k3*abb321(56)
      abb321(101)=spak1k2*abb321(71)
      abb321(56)=abb321(101)+abb321(56)
      abb321(56)=abb321(56)*abb321(72)
      abb321(54)=-spbk4k3*abb321(54)
      abb321(72)=-spak1k2*abb321(84)
      abb321(54)=abb321(56)+abb321(54)+abb321(72)
      abb321(54)=abb321(54)*abb321(94)
      abb321(56)=4.0_ki*spbk7l6
      abb321(37)=-abb321(37)*abb321(56)
      abb321(37)=abb321(54)+abb321(37)+abb321(78)
      abb321(37)=abb321(37)*abb321(67)
      abb321(54)=spbk4k3*abb321(57)
      abb321(72)=spbk4k3*abb321(80)
      abb321(33)=spak1k2*abb321(33)
      abb321(33)=abb321(72)+abb321(33)
      abb321(33)=abb321(4)*abb321(33)*abb321(50)
      abb321(33)=abb321(54)+abb321(33)
      abb321(33)=abb321(33)*abb321(41)
      abb321(54)=spak1k4*spbk4k3
      abb321(72)=-spbk3k2*spak1k2
      abb321(54)=-abb321(54)+abb321(72)
      abb321(54)=abb321(4)*abb321(54)
      abb321(72)=-spbk4k3*abb321(65)
      abb321(54)=abb321(72)+abb321(54)
      abb321(54)=abb321(54)*abb321(25)
      abb321(72)=-abb321(103)*abb321(99)
      abb321(78)=abb321(87)*abb321(4)
      abb321(80)=abb321(99)*abb321(78)
      abb321(84)=-spal6k7*abb321(83)*abb321(80)
      abb321(87)=spak1l5*abb321(11)
      abb321(94)=-abb321(6)*spak1l6
      abb321(87)=abb321(87)+abb321(94)
      abb321(87)=abb321(87)*abb321(13)
      abb321(94)=spak1l5*abb321(7)*abb321(36)
      abb321(87)=2.0_ki*abb321(94)+abb321(87)
      abb321(87)=abb321(87)*abb321(97)*abb321(77)
      abb321(76)=-spal5k7*abb321(76)*abb321(80)
      abb321(80)=-spak1l5*abb321(98)*abb321(103)
      abb321(94)=spak3k4*spak1k7*abb321(112)
      abb321(47)=spal6k7*abb321(36)*abb321(47)
      abb321(98)=spak1k7*abb321(75)
      abb321(47)=abb321(98)+abb321(47)
      abb321(47)=abb321(47)*abb321(114)
      abb321(47)=abb321(94)+abb321(47)
      abb321(47)=mB*abb321(47)*abb321(83)*abb321(78)
      abb321(22)=-abb321(4)*abb321(22)*abb321(96)
      abb321(40)=abb321(40)*abb321(36)
      abb321(78)=-spak1l6*abb321(40)
      abb321(31)=-abb321(31)+abb321(78)
      abb321(31)=abb321(9)*abb321(31)*abb321(82)
      abb321(22)=abb321(22)+abb321(31)
      abb321(22)=abb321(88)*abb321(22)*abb321(50)*spbk3k2
      abb321(31)=abb321(46)*abb321(75)
      abb321(23)=abb321(23)*abb321(31)
      abb321(46)=spbk7k3*abb321(75)
      abb321(26)=-spbl6k2*abb321(26)
      abb321(21)=abb321(26)+abb321(21)+abb321(46)
      abb321(21)=spbk3k2*abb321(21)
      abb321(19)=spak2l5*abb321(19)
      abb321(19)=abb321(36)+2.0_ki*abb321(19)
      abb321(19)=abb321(19)*abb321(97)
      abb321(19)=2.0_ki*abb321(21)+abb321(19)
      abb321(19)=abb321(4)*abb321(19)
      abb321(21)=spbk3k1*abb321(39)
      abb321(19)=2.0_ki*abb321(21)+abb321(19)
      abb321(19)=abb321(8)*abb321(19)
      abb321(21)=abb321(4)*spak2k4
      abb321(26)=-abb321(27)*abb321(21)
      abb321(39)=abb321(66)*spbk3k1
      abb321(26)=abb321(39)+abb321(26)
      abb321(19)=2.0_ki*abb321(26)+abb321(19)
      abb321(19)=abb321(19)*abb321(88)
      abb321(26)=-abb321(44)*abb321(75)
      abb321(40)=-abb321(93)*abb321(40)
      abb321(26)=abb321(26)+abb321(40)
      abb321(26)=abb321(26)*abb321(114)
      abb321(27)=abb321(52)*abb321(27)
      abb321(40)=-spak3k4*abb321(27)
      abb321(26)=abb321(40)+abb321(26)
      abb321(26)=mB*abb321(26)
      abb321(40)=-spak3k4*abb321(63)
      abb321(26)=abb321(40)+abb321(26)
      abb321(26)=abb321(26)*abb321(77)
      abb321(40)=spak3k4*abb321(62)*abb321(77)
      abb321(46)=-spbl6k2*abb321(68)
      abb321(50)=spak3k4*abb321(51)
      abb321(46)=abb321(46)+abb321(50)
      abb321(46)=spbk3k2*abb321(46)
      abb321(13)=abb321(45)*abb321(13)
      abb321(36)=abb321(36)*spbl6k2
      abb321(13)=abb321(36)+abb321(13)
      abb321(13)=abb321(13)*abb321(74)
      abb321(13)=abb321(46)+abb321(13)
      abb321(13)=mB*abb321(13)
      abb321(30)=abb321(30)*spbk7l6
      abb321(36)=-spak3k4*abb321(30)
      abb321(13)=abb321(36)+abb321(13)
      abb321(13)=abb321(13)*abb321(77)
      abb321(36)=-abb321(44)*abb321(39)
      abb321(46)=-spbk3k1*abb321(79)
      abb321(36)=abb321(36)+abb321(46)
      abb321(36)=abb321(36)*abb321(111)
      abb321(46)=-abb321(52)*abb321(39)
      abb321(36)=abb321(46)+abb321(36)
      abb321(36)=mB*abb321(36)
      abb321(44)=abb321(44)*abb321(91)
      abb321(46)=abb321(93)*abb321(53)
      abb321(44)=abb321(44)+abb321(46)
      abb321(44)=abb321(44)*abb321(114)
      abb321(27)=spak2k4*abb321(27)
      abb321(27)=abb321(27)+abb321(44)
      abb321(27)=mB*abb321(27)
      abb321(44)=spak2k4*abb321(63)
      abb321(27)=abb321(44)+abb321(27)
      abb321(27)=abb321(4)*abb321(27)
      abb321(44)=spbk3k1*abb321(95)
      abb321(27)=abb321(27)+abb321(44)+abb321(36)
      abb321(27)=abb321(27)*abb321(67)
      abb321(36)=abb321(41)*spbk3k1
      abb321(41)=-abb321(85)*abb321(36)
      abb321(21)=-abb321(62)*abb321(21)
      abb321(44)=abb321(85)*spbk3k1
      abb321(21)=-abb321(44)+abb321(21)
      abb321(21)=abb321(21)*abb321(67)
      abb321(44)=-spbk3k1*abb321(86)
      abb321(46)=mB*spbk3k1*abb321(49)
      abb321(44)=3.0_ki*abb321(44)+abb321(46)
      abb321(44)=mB*abb321(44)
      abb321(46)=spak2k4*abb321(71)
      abb321(45)=-abb321(9)*spak2k4*abb321(45)
      abb321(34)=-abb321(34)+abb321(45)
      abb321(34)=abb321(34)*abb321(74)
      abb321(34)=abb321(46)+abb321(34)
      abb321(34)=mB*abb321(34)
      abb321(30)=spak2k4*abb321(30)
      abb321(30)=abb321(30)+abb321(34)
      abb321(30)=abb321(4)*abb321(30)
      abb321(34)=-abb321(39)*abb321(56)
      abb321(30)=abb321(30)+abb321(34)+abb321(44)
      abb321(30)=abb321(30)*abb321(67)
      abb321(34)=abb321(57)*abb321(36)
      abb321(25)=-spbk3k1*abb321(65)*abb321(25)
      R2d321=0.0_ki
      rat2 = rat2 + R2d321
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='321' value='", &
          & R2d321, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd321h6
