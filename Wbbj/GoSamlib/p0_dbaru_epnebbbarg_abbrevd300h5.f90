module     p0_dbaru_epnebbbarg_abbrevd300h5
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh5
   implicit none
   private
   complex(ki), dimension(144), public :: abb300
   complex(ki), public :: R2d300
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
      abb300(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb300(2)=sqrt(mB**2)
      abb300(3)=NC**(-1)
      abb300(4)=sqrt2**(-1)
      abb300(5)=spbl6k2**(-1)
      abb300(6)=spak2l5**(-1)
      abb300(7)=spbk7k2**(-1)
      abb300(8)=spak2l6**(-1)
      abb300(9)=spbl5k2**(-1)
      abb300(10)=mB**3
      abb300(11)=TR*gW
      abb300(11)=abb300(11)**2*i_*CVDU*abb300(4)*abb300(1)
      abb300(12)=abb300(11)*spbk3k2
      abb300(13)=abb300(6)*abb300(10)*abb300(12)
      abb300(14)=abb300(3)**2
      abb300(15)=abb300(13)*abb300(14)
      abb300(16)=abb300(11)*spbl5k2
      abb300(17)=abb300(14)*abb300(16)
      abb300(18)=spbk3k2*mB
      abb300(19)=abb300(18)*abb300(17)
      abb300(15)=abb300(15)-abb300(19)
      abb300(15)=abb300(15)*c2
      abb300(13)=abb300(13)*abb300(3)
      abb300(19)=mB*abb300(3)
      abb300(20)=abb300(19)*abb300(16)
      abb300(21)=abb300(20)*spbk3k2
      abb300(13)=abb300(13)-abb300(21)
      abb300(22)=c1+c3
      abb300(13)=abb300(13)*abb300(22)
      abb300(13)=abb300(15)-abb300(13)
      abb300(15)=spak1k7*abb300(5)
      abb300(23)=abb300(13)*abb300(15)
      abb300(24)=mB**2
      abb300(25)=abb300(11)*abb300(6)
      abb300(26)=abb300(24)*abb300(25)
      abb300(27)=spbk3k2*abb300(7)
      abb300(28)=abb300(14)*abb300(27)
      abb300(29)=abb300(26)*abb300(28)
      abb300(30)=abb300(28)*abb300(16)
      abb300(29)=abb300(29)-abb300(30)
      abb300(29)=abb300(29)*c2
      abb300(31)=abb300(24)*abb300(6)
      abb300(32)=abb300(11)*abb300(7)*abb300(3)
      abb300(33)=abb300(32)*spbk3k2
      abb300(34)=abb300(31)*abb300(33)
      abb300(35)=abb300(33)*spbl5k2
      abb300(36)=abb300(34)-abb300(35)
      abb300(36)=abb300(36)*abb300(22)
      abb300(29)=abb300(36)-abb300(29)
      abb300(36)=abb300(2)*spak1l6
      abb300(37)=abb300(29)*abb300(36)
      abb300(23)=abb300(23)-abb300(37)
      abb300(37)=spak4k7*abb300(2)
      abb300(38)=abb300(23)*abb300(37)
      abb300(39)=abb300(30)*mB
      abb300(28)=abb300(28)*abb300(25)
      abb300(40)=abb300(10)*abb300(28)
      abb300(39)=abb300(39)-abb300(40)
      abb300(39)=abb300(39)*c2
      abb300(40)=abb300(33)*abb300(6)
      abb300(10)=abb300(10)*abb300(40)
      abb300(41)=abb300(35)*mB
      abb300(10)=abb300(10)-abb300(41)
      abb300(10)=abb300(10)*abb300(22)
      abb300(10)=abb300(39)+abb300(10)
      abb300(39)=abb300(10)*abb300(2)
      abb300(42)=spak4l6*spak1k7
      abb300(43)=abb300(42)*abb300(39)
      abb300(44)=spbk2k1*spak1k4
      abb300(45)=abb300(44)*abb300(15)
      abb300(46)=-abb300(39)*abb300(45)
      abb300(43)=abb300(46)+abb300(43)-abb300(38)
      abb300(46)=es712-es71
      abb300(47)=abb300(46)-es12
      abb300(43)=abb300(47)*abb300(43)
      abb300(20)=-abb300(20)*abb300(22)
      abb300(48)=abb300(14)*c2
      abb300(49)=abb300(48)*abb300(16)
      abb300(50)=abb300(49)*mB
      abb300(20)=abb300(50)+abb300(20)
      abb300(50)=abb300(20)*abb300(15)
      abb300(51)=abb300(32)*spbl5k2
      abb300(52)=abb300(51)*abb300(22)
      abb300(53)=abb300(48)*abb300(7)
      abb300(54)=abb300(53)*abb300(16)
      abb300(52)=abb300(52)-abb300(54)
      abb300(54)=abb300(52)*abb300(36)
      abb300(50)=abb300(50)-abb300(54)
      abb300(54)=spbl5k3*spak1k4
      abb300(55)=abb300(54)*spbk2k1
      abb300(56)=abb300(50)*abb300(55)
      abb300(57)=spak4l6*spbl5k3
      abb300(58)=abb300(57)*spak1k7
      abb300(59)=-abb300(20)*abb300(58)
      abb300(56)=abb300(56)+abb300(59)
      abb300(56)=abb300(2)*abb300(56)
      abb300(59)=abb300(22)*abb300(3)
      abb300(60)=abb300(16)*abb300(59)
      abb300(60)=abb300(60)-abb300(49)
      abb300(61)=spak4k7*spak1l6
      abb300(62)=abb300(61)*spbl5k3
      abb300(63)=abb300(62)*abb300(60)
      abb300(64)=abb300(2)**2
      abb300(65)=abb300(64)*abb300(63)
      abb300(66)=spbl5k3*spak4k7
      abb300(20)=abb300(20)*abb300(66)
      abb300(67)=abb300(15)*abb300(2)
      abb300(68)=abb300(67)*spbk7k2
      abb300(69)=-abb300(20)*abb300(68)
      abb300(56)=abb300(69)+abb300(65)+abb300(56)
      abb300(56)=spal5k7*abb300(56)
      abb300(65)=abb300(29)*spak4l6
      abb300(69)=spak2k7*spak1l6
      abb300(70)=abb300(69)*abb300(65)
      abb300(71)=abb300(52)*spak1l6
      abb300(72)=abb300(71)*spal5k7
      abb300(73)=abb300(72)*abb300(57)
      abb300(70)=abb300(70)-abb300(73)
      abb300(73)=abb300(70)*spbl6k2
      abb300(74)=abb300(29)*abb300(69)*abb300(44)
      abb300(73)=abb300(73)-abb300(74)
      abb300(74)=-abb300(64)*abb300(73)
      abb300(43)=abb300(56)+abb300(43)+abb300(74)
      abb300(43)=8.0_ki*abb300(43)
      abb300(56)=abb300(55)*abb300(71)
      abb300(56)=abb300(56)-abb300(63)
      abb300(56)=abb300(56)*spal5k7
      abb300(63)=abb300(29)*abb300(61)
      abb300(74)=abb300(47)*abb300(63)
      abb300(56)=abb300(56)-abb300(74)+abb300(73)
      abb300(73)=16.0_ki*abb300(56)
      abb300(74)=abb300(65)*abb300(47)
      abb300(75)=abb300(60)*spal5k7
      abb300(76)=abb300(57)*abb300(75)
      abb300(74)=abb300(76)+abb300(74)
      abb300(76)=16.0_ki*spak1k7
      abb300(74)=abb300(74)*abb300(76)
      abb300(21)=abb300(21)*abb300(22)
      abb300(18)=abb300(18)*abb300(49)
      abb300(18)=abb300(21)-abb300(18)
      abb300(18)=abb300(18)*abb300(15)
      abb300(21)=abb300(35)*abb300(22)
      abb300(49)=abb300(49)*abb300(27)
      abb300(21)=-abb300(49)+abb300(21)
      abb300(77)=abb300(21)*abb300(36)
      abb300(18)=abb300(18)+abb300(77)
      abb300(37)=abb300(18)*abb300(37)
      abb300(77)=-16.0_ki*abb300(37)
      abb300(78)=abb300(21)*abb300(61)
      abb300(79)=32.0_ki*abb300(78)
      abb300(38)=16.0_ki*abb300(38)
      abb300(80)=32.0_ki*abb300(63)
      abb300(81)=abb300(29)*spak1k4
      abb300(82)=-spal6k7*abb300(47)
      abb300(83)=abb300(81)*abb300(82)
      abb300(84)=abb300(75)*spal6k7
      abb300(85)=-abb300(54)*abb300(84)
      abb300(83)=abb300(85)+abb300(83)
      abb300(83)=16.0_ki*abb300(83)
      abb300(37)=abb300(37)+abb300(56)
      abb300(37)=8.0_ki*abb300(37)
      abb300(56)=16.0_ki*abb300(78)
      abb300(63)=16.0_ki*abb300(63)
      abb300(78)=-8.0_ki*abb300(78)
      abb300(18)=spak4l5*abb300(18)
      abb300(85)=-abb300(22)*abb300(19)*abb300(12)
      abb300(86)=abb300(48)*abb300(12)
      abb300(87)=abb300(86)*mB
      abb300(85)=abb300(87)+abb300(85)
      abb300(87)=-abb300(85)*abb300(42)
      abb300(88)=abb300(85)*abb300(15)
      abb300(89)=abb300(48)*abb300(11)
      abb300(90)=abb300(89)*abb300(27)
      abb300(91)=abb300(33)*c1
      abb300(90)=abb300(91)-abb300(90)
      abb300(91)=abb300(33)*c3
      abb300(91)=abb300(91)+abb300(90)
      abb300(92)=-abb300(91)*abb300(36)
      abb300(88)=abb300(88)+abb300(92)
      abb300(88)=abb300(88)*abb300(44)
      abb300(18)=abb300(18)+abb300(88)+abb300(87)
      abb300(18)=abb300(2)*abb300(18)
      abb300(12)=abb300(12)*abb300(59)
      abb300(12)=abb300(12)-abb300(86)
      abb300(86)=abb300(12)*abb300(61)
      abb300(87)=abb300(91)*spak1l6
      abb300(88)=abb300(87)*spak4l6
      abb300(92)=abb300(88)*spbl6k2
      abb300(86)=abb300(92)+abb300(86)
      abb300(92)=abb300(64)*abb300(86)
      abb300(85)=abb300(85)*spak4k7
      abb300(68)=-abb300(85)*abb300(68)
      abb300(18)=abb300(68)+abb300(18)+abb300(92)
      abb300(18)=8.0_ki*abb300(18)
      abb300(68)=spak1l6*abb300(21)*spak4l5
      abb300(92)=abb300(87)*abb300(44)
      abb300(68)=-abb300(68)+abb300(92)-abb300(86)
      abb300(86)=16.0_ki*abb300(68)
      abb300(92)=16.0_ki*abb300(12)*abb300(42)
      abb300(93)=16.0_ki*spak1k4
      abb300(94)=-spal6k7*abb300(12)*abb300(93)
      abb300(68)=8.0_ki*abb300(68)
      abb300(19)=-abb300(22)*abb300(19)*abb300(11)
      abb300(95)=abb300(89)*mB
      abb300(19)=abb300(95)+abb300(19)
      abb300(95)=-spak1l6*abb300(19)
      abb300(96)=abb300(11)*abb300(59)
      abb300(89)=abb300(96)-abb300(89)
      abb300(96)=abb300(89)*abb300(36)
      abb300(95)=abb300(95)+abb300(96)
      abb300(95)=abb300(95)*abb300(66)
      abb300(23)=spak2k4*abb300(23)
      abb300(11)=abb300(53)*abb300(11)
      abb300(96)=abb300(32)*c3
      abb300(97)=abb300(32)*c1
      abb300(96)=abb300(97)+abb300(96)-abb300(11)
      abb300(97)=abb300(96)*abb300(36)
      abb300(98)=-mB*abb300(96)
      abb300(99)=abb300(98)*spak1l6
      abb300(97)=abb300(97)-abb300(99)
      abb300(99)=spbl6k2*abb300(97)*abb300(57)
      abb300(23)=abb300(99)+abb300(23)+abb300(95)
      abb300(23)=abb300(2)*abb300(23)
      abb300(30)=abb300(30)*abb300(24)
      abb300(95)=mB**4
      abb300(28)=abb300(95)*abb300(28)
      abb300(28)=abb300(30)-abb300(28)
      abb300(28)=abb300(28)*c2
      abb300(30)=abb300(35)*abb300(24)
      abb300(99)=abb300(95)*abb300(40)
      abb300(30)=abb300(30)-abb300(99)
      abb300(30)=abb300(30)*abb300(22)
      abb300(28)=abb300(28)-abb300(30)
      abb300(30)=abb300(8)*spak2k4
      abb300(100)=abb300(30)*abb300(5)
      abb300(101)=abb300(28)*abb300(100)
      abb300(46)=abb300(101)*abb300(46)
      abb300(102)=-abb300(24)*abb300(60)
      abb300(103)=abb300(102)*spal5k7
      abb300(104)=abb300(100)*spbl5k3
      abb300(105)=abb300(103)*abb300(104)
      abb300(46)=-abb300(105)+abb300(46)
      abb300(46)=spak1l6*abb300(46)
      abb300(106)=abb300(24)*abb300(89)
      abb300(107)=-abb300(2)*abb300(19)
      abb300(107)=abb300(106)+abb300(107)
      abb300(58)=abb300(107)*abb300(58)
      abb300(107)=-spak1l6*abb300(101)
      abb300(108)=abb300(2)*abb300(5)
      abb300(109)=abb300(108)*spak1k4
      abb300(110)=abb300(109)*abb300(10)
      abb300(107)=-abb300(110)+abb300(107)
      abb300(107)=es12*abb300(107)
      abb300(111)=abb300(19)*abb300(15)
      abb300(97)=abb300(111)-abb300(97)
      abb300(97)=abb300(2)*abb300(97)
      abb300(111)=abb300(106)*abb300(15)
      abb300(97)=-abb300(111)+abb300(97)
      abb300(97)=abb300(97)*abb300(55)
      abb300(13)=-spak4k7*abb300(13)*abb300(108)
      abb300(39)=spak4l6*abb300(39)
      abb300(13)=abb300(13)+abb300(39)
      abb300(13)=spak1k2*abb300(13)
      abb300(39)=-mB*abb300(52)
      abb300(112)=-abb300(108)*abb300(55)
      abb300(113)=abb300(2)*abb300(57)
      abb300(112)=abb300(112)+abb300(113)
      abb300(112)=abb300(39)*abb300(112)
      abb300(20)=abb300(108)*abb300(20)
      abb300(20)=abb300(20)+abb300(112)
      abb300(20)=spak1l5*abb300(20)
      abb300(70)=spbk7l6*abb300(70)
      abb300(72)=-abb300(54)*abb300(72)
      abb300(69)=abb300(81)*abb300(69)
      abb300(69)=abb300(72)+abb300(69)
      abb300(69)=spbk7k1*abb300(69)
      abb300(67)=abb300(19)*abb300(67)
      abb300(72)=abb300(111)-abb300(67)
      abb300(72)=abb300(72)*abb300(66)*spbk7k2
      abb300(13)=abb300(72)+abb300(69)+abb300(70)+abb300(20)+abb300(13)+abb300(&
      &97)+abb300(107)+abb300(58)+abb300(23)+abb300(46)
      abb300(13)=8.0_ki*abb300(13)
      abb300(20)=abb300(96)*spak1l6
      abb300(23)=abb300(20)*abb300(55)
      abb300(46)=abb300(62)*abb300(89)
      abb300(58)=abb300(20)*abb300(57)
      abb300(62)=abb300(58)*spbl6k2
      abb300(23)=-abb300(62)+abb300(23)-abb300(46)
      abb300(46)=abb300(29)*spak1l6
      abb300(62)=spak2k4*abb300(46)
      abb300(62)=abb300(62)+abb300(23)
      abb300(62)=16.0_ki*abb300(62)
      abb300(69)=abb300(89)*spak1k7
      abb300(70)=abb300(52)*spak1l5
      abb300(69)=abb300(69)-abb300(70)
      abb300(72)=abb300(57)*abb300(69)
      abb300(97)=spak1k2*abb300(65)
      abb300(72)=abb300(97)+abb300(72)
      abb300(72)=16.0_ki*abb300(72)
      abb300(97)=c3*mB
      abb300(35)=abb300(97)*abb300(35)
      abb300(49)=abb300(49)*mB
      abb300(41)=abb300(41)*c1
      abb300(35)=-abb300(49)+abb300(35)+abb300(41)
      abb300(41)=abb300(35)*abb300(109)
      abb300(49)=spbk7k3*abb300(52)*abb300(61)
      abb300(41)=abb300(41)+abb300(49)
      abb300(49)=abb300(15)*abb300(12)*abb300(31)
      abb300(61)=c1*mB
      abb300(61)=abb300(61)+abb300(97)
      abb300(40)=abb300(40)*abb300(61)
      abb300(27)=abb300(48)*abb300(27)
      abb300(107)=abb300(25)*mB
      abb300(109)=abb300(107)*abb300(27)
      abb300(40)=-abb300(109)+abb300(40)
      abb300(40)=abb300(40)*abb300(36)
      abb300(49)=abb300(49)+abb300(40)
      abb300(109)=-spak2k4*abb300(49)
      abb300(109)=abb300(109)+abb300(41)
      abb300(109)=16.0_ki*abb300(109)
      abb300(48)=abb300(59)-abb300(48)
      abb300(48)=abb300(15)*abb300(48)*abb300(26)
      abb300(14)=abb300(26)*abb300(14)
      abb300(14)=abb300(14)-abb300(17)
      abb300(14)=abb300(14)*c2
      abb300(17)=-abb300(7)*abb300(14)
      abb300(111)=abb300(32)*abb300(6)
      abb300(112)=abb300(111)*abb300(24)
      abb300(51)=abb300(112)-abb300(51)
      abb300(51)=abb300(51)*abb300(22)
      abb300(17)=abb300(17)+abb300(51)
      abb300(51)=abb300(17)*spak1l6
      abb300(113)=abb300(51)-abb300(48)
      abb300(113)=spak4k7*abb300(113)
      abb300(112)=-abb300(112)*abb300(22)
      abb300(114)=abb300(53)*abb300(26)
      abb300(112)=abb300(114)+abb300(112)
      abb300(42)=abb300(45)-abb300(42)
      abb300(45)=-abb300(112)*abb300(42)
      abb300(45)=abb300(113)+abb300(45)
      abb300(45)=spbk7k3*abb300(45)
      abb300(113)=abb300(27)*abb300(26)
      abb300(34)=abb300(34)*abb300(22)
      abb300(34)=abb300(34)-abb300(113)
      abb300(113)=abb300(15)*spak4l5
      abb300(114)=-spbk7l5*abb300(34)*abb300(113)
      abb300(45)=abb300(114)+abb300(110)+abb300(45)
      abb300(45)=16.0_ki*abb300(45)
      abb300(110)=abb300(34)*abb300(5)
      abb300(114)=abb300(5)*abb300(9)*abb300(91)*abb300(95)*abb300(6)**2
      abb300(114)=abb300(114)-abb300(110)
      abb300(25)=abb300(25)*abb300(27)*abb300(95)
      abb300(27)=abb300(99)*abb300(22)
      abb300(25)=abb300(27)-abb300(25)
      abb300(25)=abb300(25)*abb300(5)**2
      abb300(27)=abb300(25)*abb300(8)
      abb300(27)=abb300(114)-abb300(27)
      abb300(95)=32.0_ki*spak1k4*abb300(27)
      abb300(99)=abb300(89)*spal6k7
      abb300(115)=abb300(52)*spal5l6
      abb300(99)=abb300(99)+abb300(115)
      abb300(116)=-abb300(54)*abb300(99)
      abb300(117)=spak2l6*abb300(81)
      abb300(116)=abb300(117)+abb300(116)
      abb300(116)=16.0_ki*abb300(116)
      abb300(46)=abb300(46)+abb300(49)
      abb300(46)=spak2k4*abb300(46)
      abb300(23)=abb300(46)-abb300(41)+abb300(23)
      abb300(23)=8.0_ki*abb300(23)
      abb300(41)=abb300(12)*abb300(24)
      abb300(46)=abb300(41)*abb300(100)
      abb300(117)=spak1l6*abb300(46)
      abb300(118)=-spbk7k3*spak4l5*abb300(71)
      abb300(88)=-spbk7l6*abb300(88)
      abb300(87)=-spbk7k1*spak1k4*abb300(87)
      abb300(87)=abb300(87)+abb300(88)+abb300(117)+abb300(118)
      abb300(87)=8.0_ki*abb300(87)
      abb300(61)=-abb300(111)*abb300(61)
      abb300(53)=abb300(107)*abb300(53)
      abb300(53)=abb300(53)+abb300(61)
      abb300(53)=abb300(53)*abb300(36)
      abb300(51)=abb300(51)-abb300(53)
      abb300(51)=spbk7k3*spak2k4*abb300(51)
      abb300(61)=abb300(104)*abb300(106)
      abb300(88)=spak1l6*abb300(61)
      abb300(58)=-spbk7l6*abb300(58)
      abb300(107)=-spbk7k1*abb300(54)*abb300(20)
      abb300(51)=abb300(107)+abb300(58)+abb300(88)+abb300(51)
      abb300(51)=8.0_ki*abb300(51)
      abb300(58)=abb300(112)*abb300(5)
      abb300(88)=abb300(93)*abb300(58)
      abb300(107)=-spbk7k3*abb300(88)
      abb300(29)=abb300(29)*spak4k7
      abb300(111)=abb300(29)*abb300(47)
      abb300(117)=abb300(66)*abb300(75)
      abb300(111)=abb300(117)+abb300(111)
      abb300(117)=8.0_ki*spak1k7
      abb300(111)=abb300(111)*abb300(117)
      abb300(118)=abb300(12)*abb300(117)
      abb300(119)=spak4k7*abb300(118)
      abb300(120)=abb300(66)*abb300(69)
      abb300(121)=spak1k2*abb300(29)
      abb300(120)=abb300(121)+abb300(120)
      abb300(120)=8.0_ki*abb300(120)
      abb300(121)=-abb300(91)*abb300(93)
      abb300(122)=abb300(60)*spak4k7
      abb300(123)=16.0_ki*abb300(122)
      abb300(124)=-spak1k7*abb300(123)
      abb300(16)=abb300(16)-abb300(26)
      abb300(16)=abb300(16)*abb300(59)
      abb300(14)=abb300(14)+abb300(16)
      abb300(16)=abb300(14)*spak4k7
      abb300(26)=abb300(16)*abb300(76)
      abb300(59)=abb300(117)*abb300(122)
      abb300(60)=abb300(60)*spak4l5
      abb300(76)=abb300(117)*abb300(60)
      abb300(125)=abb300(14)*spak2k4
      abb300(126)=abb300(117)*abb300(125)
      abb300(127)=abb300(52)*abb300(93)
      abb300(93)=abb300(17)*abb300(93)
      abb300(128)=8.0_ki*abb300(52)
      abb300(129)=-spak1k4*abb300(128)
      abb300(130)=-abb300(28)*abb300(47)
      abb300(103)=spbl5k3*abb300(103)
      abb300(103)=abb300(103)+abb300(130)
      abb300(130)=abb300(30)*abb300(15)
      abb300(131)=8.0_ki*abb300(130)
      abb300(103)=abb300(103)*abb300(131)
      abb300(41)=-abb300(41)*abb300(131)
      abb300(131)=-spak1k2*abb300(101)
      abb300(130)=-spbl5k3*abb300(106)*abb300(130)
      abb300(132)=abb300(52)*abb300(24)
      abb300(104)=abb300(132)*abb300(104)
      abb300(133)=spak1l5*abb300(104)
      abb300(134)=abb300(53)*spak2k4
      abb300(135)=-spbl6k3*abb300(134)
      abb300(130)=abb300(135)+abb300(133)+abb300(130)+abb300(131)
      abb300(130)=8.0_ki*abb300(130)
      abb300(88)=-spbl6k3*abb300(88)
      abb300(131)=16.0_ki*abb300(96)
      abb300(133)=-abb300(54)*abb300(131)
      abb300(135)=abb300(81)*abb300(47)
      abb300(136)=abb300(54)*abb300(75)
      abb300(135)=abb300(136)+abb300(135)
      abb300(135)=abb300(135)*abb300(117)
      abb300(118)=spak1k4*abb300(118)
      abb300(136)=abb300(54)*abb300(69)
      abb300(81)=spak1k2*abb300(81)
      abb300(81)=abb300(81)+abb300(136)
      abb300(81)=8.0_ki*abb300(81)
      abb300(136)=8.0_ki*spbl5k3*abb300(134)
      abb300(137)=16.0_ki*abb300(58)
      abb300(138)=abb300(54)*abb300(137)
      abb300(139)=spbl5k2**2
      abb300(140)=abb300(139)*abb300(96)
      abb300(141)=spak1k7*abb300(140)*spal5l6
      abb300(140)=abb300(140)*spak1l5
      abb300(142)=spal6k7*abb300(140)
      abb300(141)=abb300(141)+abb300(142)
      abb300(64)=abb300(64)*abb300(141)
      abb300(67)=-spal5k7*abb300(139)*abb300(67)
      abb300(64)=abb300(67)+abb300(64)
      abb300(64)=8.0_ki*abb300(64)
      abb300(67)=-16.0_ki*abb300(141)
      abb300(139)=-8.0_ki*abb300(141)
      abb300(141)=-spak1l6*abb300(39)
      abb300(50)=abb300(141)-abb300(50)
      abb300(50)=abb300(2)*abb300(50)
      abb300(70)=-spal6k7*abb300(70)
      abb300(115)=-spak1k7*abb300(115)
      abb300(70)=abb300(70)+abb300(115)
      abb300(70)=spbk7l5*abb300(70)
      abb300(115)=spak1k2*spal6k7
      abb300(141)=spak2l6*spak1k7
      abb300(115)=abb300(141)+abb300(115)
      abb300(14)=abb300(14)*abb300(115)
      abb300(102)=-abb300(102)*abb300(15)
      abb300(115)=-abb300(108)*mB*abb300(140)
      abb300(14)=abb300(70)+abb300(115)+abb300(102)+abb300(50)+abb300(14)
      abb300(14)=8.0_ki*abb300(14)
      abb300(50)=-16.0_ki*abb300(71)
      abb300(48)=-abb300(48)+abb300(53)
      abb300(48)=16.0_ki*abb300(48)
      abb300(70)=-8.0_ki*abb300(71)
      abb300(71)=8.0_ki*spak1l6*abb300(89)
      abb300(20)=-8.0_ki*spbk7l5*abb300(20)
      abb300(102)=abb300(75)*abb300(117)
      abb300(69)=8.0_ki*abb300(69)
      abb300(47)=-abb300(17)*abb300(47)*abb300(117)
      abb300(115)=-abb300(89)*abb300(117)
      abb300(117)=8.0_ki*abb300(17)
      abb300(140)=-spak1k2*abb300(117)
      abb300(141)=spbk7k3*spak2k7
      abb300(142)=spbl6k3*spak2l6
      abb300(143)=-spbk3k1*spak1k2
      abb300(141)=abb300(143)+abb300(142)+abb300(141)
      abb300(53)=abb300(53)*abb300(141)
      abb300(141)=-spbl5k3*abb300(98)*abb300(36)
      abb300(53)=abb300(141)+abb300(53)
      abb300(53)=8.0_ki*abb300(53)
      abb300(27)=-spak1k2*abb300(27)
      abb300(141)=-spak1l5*spbl5k3
      abb300(142)=spbl6k3*spak1l6
      abb300(141)=abb300(142)+abb300(141)
      abb300(141)=abb300(58)*abb300(141)
      abb300(15)=spbk7k3*abb300(112)*abb300(15)
      abb300(15)=abb300(15)+abb300(141)+abb300(27)
      abb300(15)=16.0_ki*abb300(15)
      abb300(27)=-spak4k7*abb300(49)
      abb300(34)=abb300(34)*abb300(42)
      abb300(21)=-abb300(113)*abb300(31)*abb300(21)
      abb300(21)=abb300(21)+abb300(27)+abb300(34)
      abb300(21)=8.0_ki*abb300(21)
      abb300(27)=8.0_ki*abb300(40)
      abb300(34)=-spak4l6*abb300(27)
      abb300(40)=8.0_ki*spak4l5
      abb300(36)=abb300(36)*abb300(40)*abb300(6)*abb300(39)
      abb300(27)=-spak1k4*abb300(27)
      abb300(42)=abb300(29)*abb300(82)
      abb300(49)=-abb300(66)*abb300(84)
      abb300(42)=abb300(49)+abb300(42)
      abb300(42)=8.0_ki*abb300(42)
      abb300(49)=8.0_ki*spal6k7
      abb300(12)=abb300(12)*abb300(49)
      abb300(112)=-spak4k7*abb300(12)
      abb300(113)=-abb300(66)*abb300(99)
      abb300(29)=spak2l6*abb300(29)
      abb300(29)=abb300(29)+abb300(113)
      abb300(29)=8.0_ki*abb300(29)
      abb300(113)=8.0_ki*abb300(91)
      abb300(141)=abb300(113)*spak4k7
      abb300(96)=8.0_ki*abb300(96)
      abb300(142)=abb300(96)*abb300(66)
      abb300(143)=abb300(65)*abb300(82)
      abb300(84)=-abb300(57)*abb300(84)
      abb300(84)=abb300(84)+abb300(143)
      abb300(84)=8.0_ki*abb300(84)
      abb300(12)=-spak4l6*abb300(12)
      abb300(143)=-abb300(57)*abb300(99)
      abb300(65)=spak2l6*abb300(65)
      abb300(65)=abb300(65)+abb300(143)
      abb300(65)=8.0_ki*abb300(65)
      abb300(143)=-spak4l6*abb300(113)
      abb300(144)=-abb300(57)*abb300(96)
      abb300(90)=abb300(90)*mB
      abb300(33)=abb300(97)*abb300(33)
      abb300(33)=abb300(90)+abb300(33)
      abb300(44)=-abb300(33)*abb300(44)
      abb300(35)=spak4l5*abb300(35)
      abb300(35)=abb300(35)+abb300(44)-abb300(85)
      abb300(35)=abb300(108)*abb300(35)
      abb300(33)=spak4l6*abb300(2)*abb300(33)
      abb300(33)=abb300(33)+abb300(35)
      abb300(33)=8.0_ki*abb300(33)
      abb300(35)=16.0_ki*spak4l6
      abb300(44)=abb300(91)*abb300(35)
      abb300(85)=abb300(128)*spak4l5
      abb300(90)=8.0_ki*abb300(100)
      abb300(90)=abb300(90)*abb300(91)*abb300(24)
      abb300(91)=spak1k4*abb300(113)
      abb300(75)=-abb300(75)*abb300(49)
      abb300(97)=-8.0_ki*abb300(99)
      abb300(99)=spal6k7*abb300(123)
      abb300(100)=16.0_ki*spal6k7
      abb300(16)=-abb300(16)*abb300(100)
      abb300(100)=-abb300(49)*abb300(122)
      abb300(60)=-abb300(49)*abb300(60)
      abb300(113)=-abb300(49)*abb300(125)
      abb300(122)=abb300(52)*abb300(35)
      abb300(35)=abb300(17)*abb300(35)
      abb300(123)=-spak4l6*abb300(128)
      abb300(125)=abb300(117)*spak2k4
      abb300(101)=-abb300(101)*abb300(82)
      abb300(105)=-spal6k7*abb300(105)
      abb300(101)=abb300(105)+abb300(101)
      abb300(101)=8.0_ki*abb300(101)
      abb300(46)=abb300(49)*abb300(46)
      abb300(105)=abb300(5)*abb300(106)
      abb300(19)=-abb300(19)*abb300(108)
      abb300(19)=abb300(105)+abb300(19)
      abb300(19)=abb300(19)*abb300(66)
      abb300(22)=abb300(22)*abb300(32)
      abb300(11)=abb300(11)-abb300(22)
      abb300(11)=abb300(24)*abb300(11)
      abb300(22)=-abb300(2)*abb300(98)
      abb300(22)=abb300(22)-abb300(11)
      abb300(22)=abb300(22)*abb300(57)
      abb300(24)=-abb300(5)*abb300(28)
      abb300(10)=-abb300(10)*abb300(108)
      abb300(10)=abb300(24)+abb300(10)
      abb300(10)=spak2k4*abb300(10)
      abb300(11)=abb300(5)*abb300(11)
      abb300(24)=abb300(98)*abb300(108)
      abb300(11)=abb300(11)+abb300(24)
      abb300(11)=abb300(11)*abb300(55)
      abb300(24)=spal6k7*abb300(61)
      abb300(28)=spal5l6*abb300(104)
      abb300(32)=-spbk3k1*abb300(134)
      abb300(10)=abb300(32)+abb300(28)+abb300(11)+abb300(24)+abb300(10)+abb300(&
      &19)+abb300(22)
      abb300(10)=8.0_ki*abb300(10)
      abb300(11)=abb300(57)*abb300(131)
      abb300(19)=-16.0_ki*spak2k4*abb300(110)
      abb300(22)=-spak2k4*abb300(114)
      abb300(24)=abb300(30)*abb300(25)
      abb300(25)=-spbk3k1*spak1k4*abb300(58)
      abb300(22)=abb300(25)+abb300(24)+abb300(22)
      abb300(22)=16.0_ki*abb300(22)
      abb300(24)=8.0_ki*abb300(110)
      abb300(25)=spak2k4*abb300(24)
      abb300(28)=abb300(54)*abb300(96)
      abb300(30)=-abb300(82)*abb300(117)
      abb300(32)=abb300(89)*abb300(49)
      abb300(49)=abb300(5)*abb300(132)
      abb300(39)=-abb300(39)*abb300(108)
      abb300(17)=-spak2l6*abb300(17)
      abb300(17)=abb300(17)+abb300(49)+abb300(39)
      abb300(17)=8.0_ki*abb300(17)
      abb300(39)=-spak4k7*abb300(24)
      abb300(49)=-spak4l6*abb300(24)
      abb300(31)=-abb300(5)*abb300(40)*abb300(31)*abb300(52)
      abb300(24)=-spak1k4*abb300(24)
      R2d300=0.0_ki
      rat2 = rat2 + R2d300
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='300' value='", &
          & R2d300, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd300h5