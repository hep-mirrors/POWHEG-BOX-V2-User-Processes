module     p0_dbaru_epnebbbarg_abbrevd128h5
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh5
   implicit none
   private
   complex(ki), dimension(133), public :: abb128
   complex(ki), public :: R2d128
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
      abb128(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb128(2)=NC**(-1)
      abb128(3)=sqrt2**(-1)
      abb128(4)=es567**(-1)
      abb128(5)=es56**(-1)
      abb128(6)=spbk7k2**(-1)
      abb128(7)=spak2l5**(-1)
      abb128(8)=spbl6k2**(-1)
      abb128(9)=spak2l6**(-1)
      abb128(10)=1.0_ki/(mB**2-es67-es56+es567)
      abb128(11)=sqrt(mB**2)
      abb128(12)=1.0_ki/(-mB**2+es67)
      abb128(13)=TR*gW
      abb128(13)=abb128(13)**2*i_*CVDU*abb128(4)*abb128(3)
      abb128(14)=abb128(6)*abb128(1)
      abb128(15)=abb128(13)*abb128(14)*abb128(2)
      abb128(16)=abb128(15)*abb128(5)
      abb128(17)=abb128(16)*spal6k7
      abb128(18)=abb128(17)*spbk3k2
      abb128(19)=c3*spbl5k2
      abb128(20)=abb128(19)*abb128(18)
      abb128(21)=c1*spbl5k2
      abb128(22)=abb128(18)*abb128(21)
      abb128(20)=abb128(20)-abb128(22)
      abb128(23)=abb128(15)*spbk3k2
      abb128(24)=abb128(23)*c3
      abb128(25)=spal6k7*spbl5k2
      abb128(26)=abb128(25)*abb128(24)
      abb128(27)=c2*abb128(2)**2
      abb128(28)=abb128(13)*spal6k7
      abb128(29)=abb128(27)*abb128(28)
      abb128(30)=abb128(14)*spbk3k2
      abb128(31)=abb128(29)*abb128(30)
      abb128(32)=abb128(31)*spbl5k2
      abb128(26)=abb128(26)-abb128(32)
      abb128(32)=2.0_ki*abb128(12)
      abb128(33)=abb128(26)*abb128(32)
      abb128(33)=abb128(20)+abb128(33)
      abb128(34)=spbl6k2*spak1l6
      abb128(33)=abb128(33)*abb128(34)
      abb128(35)=abb128(2)*abb128(1)
      abb128(25)=abb128(35)*abb128(25)*abb128(13)*abb128(5)
      abb128(36)=c3*spbk3k2
      abb128(37)=abb128(25)*abb128(36)
      abb128(38)=abb128(25)*c1
      abb128(39)=abb128(38)*spbk3k2
      abb128(37)=abb128(37)-abb128(39)
      abb128(39)=abb128(29)*abb128(1)
      abb128(40)=abb128(39)*spbk3k2
      abb128(41)=abb128(40)*spbl5k2
      abb128(28)=abb128(28)*abb128(35)
      abb128(35)=abb128(28)*abb128(19)
      abb128(42)=abb128(35)*spbk3k2
      abb128(41)=abb128(41)-abb128(42)
      abb128(42)=abb128(41)*abb128(32)
      abb128(42)=abb128(42)-abb128(37)
      abb128(42)=abb128(42)*spak1k7
      abb128(43)=abb128(16)*spbk3k2
      abb128(44)=c3-c1
      abb128(45)=spbl5k2**2
      abb128(46)=-abb128(44)*abb128(45)*abb128(43)
      abb128(47)=abb128(45)*abb128(13)
      abb128(30)=abb128(30)*abb128(27)*abb128(10)
      abb128(48)=abb128(47)*abb128(30)
      abb128(23)=abb128(23)*abb128(10)
      abb128(49)=abb128(23)*c1
      abb128(50)=abb128(45)*abb128(49)
      abb128(46)=-abb128(48)+abb128(50)+abb128(46)
      abb128(48)=2.0_ki*spal5k7
      abb128(50)=abb128(48)*spak1l6
      abb128(51)=abb128(50)*abb128(46)
      abb128(33)=-abb128(51)+abb128(33)-abb128(42)
      abb128(33)=abb128(33)*spak2k4
      abb128(42)=abb128(17)*c3
      abb128(51)=abb128(42)*spbl5k2
      abb128(52)=abb128(21)*abb128(17)
      abb128(51)=abb128(51)-abb128(52)
      abb128(52)=mB**2
      abb128(53)=abb128(52)*abb128(8)
      abb128(54)=-abb128(9)*abb128(53)*abb128(51)
      abb128(55)=spak3k4*spak1k2
      abb128(56)=spbk3k2**2
      abb128(57)=-abb128(55)*abb128(56)*abb128(54)
      abb128(33)=abb128(33)-abb128(57)
      abb128(58)=-es12*abb128(33)
      abb128(16)=abb128(16)*abb128(44)
      abb128(59)=abb128(53)*abb128(7)
      abb128(60)=-abb128(59)*abb128(16)
      abb128(61)=-abb128(56)*abb128(60)
      abb128(27)=abb128(27)*abb128(14)
      abb128(62)=abb128(27)*abb128(10)
      abb128(63)=abb128(13)*abb128(7)
      abb128(64)=abb128(63)*abb128(62)
      abb128(65)=abb128(64)*abb128(53)
      abb128(66)=abb128(65)*abb128(56)
      abb128(67)=abb128(15)*c1
      abb128(68)=abb128(59)*abb128(10)
      abb128(69)=abb128(68)*abb128(67)
      abb128(70)=abb128(69)*abb128(56)
      abb128(66)=-abb128(70)+abb128(66)+abb128(61)
      abb128(71)=2.0_ki*spak1k7
      abb128(72)=abb128(66)*abb128(71)
      abb128(73)=es712-es71
      abb128(74)=abb128(73)*abb128(72)
      abb128(75)=spbl6k3*spak1l6
      abb128(76)=spbk7k3*spak1k7
      abb128(75)=abb128(75)-abb128(76)
      abb128(75)=abb128(75)*abb128(20)
      abb128(17)=abb128(17)*c1
      abb128(17)=abb128(17)-abb128(42)
      abb128(42)=-abb128(56)*abb128(17)
      abb128(77)=abb128(42)*spbk7l5
      abb128(78)=abb128(77)*abb128(71)
      abb128(67)=abb128(67)*abb128(10)
      abb128(79)=abb128(52)*abb128(7)
      abb128(80)=abb128(67)*abb128(79)
      abb128(81)=abb128(64)*abb128(52)
      abb128(80)=abb128(80)-abb128(81)
      abb128(81)=-abb128(56)*abb128(80)
      abb128(82)=2.0_ki*spak2k7
      abb128(83)=abb128(82)*spak1l6
      abb128(84)=abb128(81)*abb128(83)
      abb128(74)=abb128(75)+abb128(78)+abb128(84)+abb128(74)
      abb128(15)=abb128(15)*spal6k7
      abb128(75)=abb128(15)*c3
      abb128(14)=abb128(29)*abb128(14)
      abb128(29)=abb128(75)-abb128(14)
      abb128(75)=abb128(7)*mB
      abb128(78)=-abb128(75)*abb128(29)
      abb128(84)=-abb128(56)*abb128(78)
      abb128(85)=abb128(12)*spak1k2
      abb128(86)=abb128(84)*abb128(85)
      abb128(87)=abb128(67)*spbl5k2
      abb128(13)=abb128(13)*spbl5k2
      abb128(88)=abb128(62)*abb128(13)
      abb128(87)=abb128(87)-abb128(88)
      abb128(88)=abb128(8)*mB
      abb128(89)=-abb128(88)*abb128(87)
      abb128(90)=-abb128(56)*abb128(89)
      abb128(91)=abb128(90)*spak1k7
      abb128(92)=abb128(67)*abb128(75)
      abb128(64)=abb128(64)*mB
      abb128(64)=abb128(92)-abb128(64)
      abb128(92)=-abb128(56)*abb128(64)
      abb128(93)=spak2k7*spak1l6
      abb128(94)=abb128(92)*abb128(93)
      abb128(86)=abb128(94)+abb128(86)+abb128(91)
      abb128(91)=2.0_ki*abb128(11)
      abb128(86)=abb128(86)*abb128(91)
      abb128(94)=abb128(86)-abb128(74)
      abb128(95)=spak3k4*es12
      abb128(94)=abb128(95)*abb128(94)
      abb128(23)=abb128(23)*abb128(21)
      abb128(96)=abb128(30)*abb128(13)
      abb128(23)=abb128(23)-abb128(96)
      abb128(21)=abb128(19)-abb128(21)
      abb128(96)=-abb128(43)*abb128(21)
      abb128(96)=abb128(23)+abb128(96)
      abb128(96)=abb128(96)*spal5k7
      abb128(97)=abb128(96)*spak1l6
      abb128(36)=abb128(28)*abb128(36)
      abb128(36)=abb128(36)-abb128(40)
      abb128(40)=abb128(36)*abb128(12)
      abb128(98)=abb128(40)*spak1k7
      abb128(97)=abb128(98)-abb128(97)
      abb128(98)=2.0_ki*spbl5k3
      abb128(97)=abb128(97)*abb128(98)
      abb128(72)=abb128(72)*es12
      abb128(99)=abb128(18)*c3
      abb128(18)=abb128(18)*c1
      abb128(100)=abb128(99)-abb128(18)
      abb128(24)=spal6k7*abb128(24)
      abb128(24)=abb128(24)-abb128(31)
      abb128(31)=abb128(24)*abb128(12)
      abb128(31)=abb128(31)+abb128(100)
      abb128(101)=abb128(98)*abb128(34)
      abb128(102)=abb128(31)*abb128(101)
      abb128(103)=-abb128(79)*abb128(17)
      abb128(104)=3.0_ki*spak1k2
      abb128(104)=-abb128(104)*abb128(56)*abb128(103)
      abb128(105)=abb128(48)*spak1k2
      abb128(61)=-abb128(105)*spbl5k2*abb128(61)
      abb128(61)=abb128(61)+abb128(104)
      abb128(72)=abb128(97)+abb128(102)+abb128(72)-abb128(61)
      abb128(97)=spak3k4*es12*abb128(72)
      abb128(102)=abb128(20)*spbl5k3
      abb128(13)=abb128(68)*abb128(27)*abb128(13)
      abb128(27)=abb128(13)*abb128(56)
      abb128(68)=abb128(70)*spbl5k2
      abb128(27)=abb128(68)-abb128(27)
      abb128(68)=abb128(27)*abb128(82)
      abb128(68)=abb128(102)+abb128(68)
      abb128(70)=-abb128(95)*abb128(68)
      abb128(95)=-abb128(45)*abb128(100)
      abb128(102)=abb128(95)*spak2k4
      abb128(104)=-es12*abb128(102)
      abb128(70)=abb128(104)+abb128(70)
      abb128(70)=spak1l5*abb128(70)
      abb128(58)=abb128(70)+abb128(97)+abb128(94)+abb128(58)
      abb128(58)=4.0_ki*abb128(58)
      abb128(55)=8.0_ki*abb128(55)
      abb128(70)=-abb128(55)*abb128(56)*abb128(51)
      abb128(94)=abb128(46)*abb128(105)
      abb128(97)=abb128(32)*spak1k2
      abb128(104)=abb128(26)*abb128(97)
      abb128(106)=abb128(20)*spak1k2
      abb128(107)=abb128(104)+abb128(106)
      abb128(108)=abb128(107)*spbl6k2
      abb128(94)=abb128(94)-abb128(108)
      abb128(108)=abb128(94)*spak4l6
      abb128(37)=abb128(37)*spak1k2
      abb128(41)=abb128(41)*abb128(97)
      abb128(37)=abb128(37)-abb128(41)
      abb128(41)=abb128(37)*spak4k7
      abb128(109)=abb128(95)*spak1k2
      abb128(110)=abb128(109)*spak4l5
      abb128(41)=abb128(41)+abb128(110)-abb128(108)
      abb128(108)=8.0_ki*abb128(41)
      abb128(67)=abb128(67)-abb128(16)
      abb128(67)=abb128(45)*abb128(67)
      abb128(47)=abb128(47)*abb128(62)
      abb128(47)=-abb128(47)+abb128(67)
      abb128(50)=abb128(50)*abb128(47)
      abb128(25)=abb128(25)*c3
      abb128(25)=abb128(25)-abb128(38)
      abb128(38)=abb128(25)*spak1k7
      abb128(45)=-abb128(45)*abb128(17)
      abb128(62)=abb128(45)*spak1l5
      abb128(50)=abb128(62)+abb128(50)-abb128(38)
      abb128(62)=spak1k4*abb128(50)
      abb128(15)=abb128(19)*abb128(15)
      abb128(14)=abb128(14)*spbl5k2
      abb128(14)=abb128(15)-abb128(14)
      abb128(15)=abb128(32)*spak1k4
      abb128(19)=abb128(14)*abb128(15)
      abb128(67)=abb128(51)*spak1k4
      abb128(19)=abb128(19)+abb128(67)
      abb128(110)=-abb128(19)*abb128(34)
      abb128(111)=abb128(39)*spbl5k2
      abb128(35)=abb128(111)-abb128(35)
      abb128(111)=abb128(35)*spak1k7
      abb128(112)=abb128(15)*abb128(111)
      abb128(62)=abb128(110)+abb128(112)+abb128(62)
      abb128(62)=spbk3k1*abb128(62)
      abb128(84)=abb128(11)*abb128(84)*abb128(97)
      abb128(61)=-abb128(61)+abb128(84)
      abb128(61)=spak3k4*abb128(61)
      abb128(57)=abb128(57)+abb128(41)+abb128(62)+abb128(61)
      abb128(57)=8.0_ki*abb128(57)
      abb128(61)=abb128(20)*spak1k4
      abb128(62)=16.0_ki*abb128(61)
      abb128(84)=-abb128(9)*abb128(53)*abb128(20)
      abb128(110)=abb128(84)*spak1k4
      abb128(43)=abb128(59)*abb128(43)
      abb128(21)=-abb128(43)*abb128(21)
      abb128(112)=abb128(21)*abb128(48)
      abb128(113)=abb128(112)*spak1k4
      abb128(114)=-abb128(75)*abb128(24)
      abb128(115)=abb128(114)*abb128(11)
      abb128(116)=abb128(115)*abb128(15)
      abb128(110)=abb128(113)+abb128(110)+abb128(116)
      abb128(113)=abb128(99)*abb128(79)
      abb128(18)=abb128(18)*abb128(79)
      abb128(113)=abb128(113)-abb128(18)
      abb128(113)=3.0_ki*abb128(113)
      abb128(116)=abb128(113)*spak1k4
      abb128(116)=abb128(116)-abb128(110)
      abb128(116)=16.0_ki*abb128(116)
      abb128(72)=-abb128(86)+abb128(74)-abb128(72)
      abb128(72)=spak3k4*abb128(72)
      abb128(68)=spak3k4*abb128(68)
      abb128(68)=abb128(102)+abb128(68)
      abb128(68)=spak1l5*abb128(68)
      abb128(33)=abb128(68)+abb128(72)+abb128(33)
      abb128(33)=8.0_ki*abb128(33)
      abb128(43)=-abb128(43)*abb128(44)
      abb128(44)=abb128(49)*abb128(59)
      abb128(30)=abb128(30)*abb128(63)
      abb128(53)=abb128(53)*abb128(30)
      abb128(43)=abb128(43)+abb128(44)-abb128(53)
      abb128(44)=abb128(43)*es71
      abb128(53)=abb128(43)*es712
      abb128(63)=abb128(44)-abb128(53)
      abb128(63)=-spak1k7*abb128(63)
      abb128(68)=abb128(43)*es12
      abb128(72)=abb128(68)*spak1k7
      abb128(74)=-abb128(88)*abb128(23)
      abb128(86)=abb128(74)*spak1k7
      abb128(75)=abb128(75)*abb128(49)
      abb128(88)=abb128(30)*mB
      abb128(75)=abb128(75)-abb128(88)
      abb128(88)=abb128(75)*spak2k7
      abb128(102)=abb128(88)*spak1l6
      abb128(86)=abb128(86)+abb128(102)
      abb128(102)=-abb128(11)*abb128(86)
      abb128(49)=abb128(49)*abb128(79)
      abb128(30)=abb128(30)*abb128(52)
      abb128(30)=abb128(49)-abb128(30)
      abb128(49)=abb128(93)*abb128(30)
      abb128(52)=abb128(102)+abb128(49)-abb128(72)+abb128(63)
      abb128(52)=spak1k4*abb128(52)
      abb128(28)=abb128(28)*c3
      abb128(28)=abb128(28)-abb128(39)
      abb128(39)=abb128(28)*abb128(12)
      abb128(63)=abb128(39)*spak1k7
      abb128(16)=-spbl5k2*abb128(16)
      abb128(16)=abb128(87)+abb128(16)
      abb128(16)=abb128(16)*spal5k7
      abb128(87)=abb128(16)*spak1l6
      abb128(63)=abb128(63)-abb128(87)
      abb128(87)=abb128(63)*spak1k4
      abb128(102)=abb128(29)*abb128(12)
      abb128(117)=abb128(102)*spak1k4
      abb128(118)=abb128(17)*spak1k4
      abb128(117)=abb128(117)-abb128(118)
      abb128(119)=abb128(117)*abb128(34)
      abb128(119)=abb128(119)+abb128(87)
      abb128(119)=spbl5k3*abb128(119)
      abb128(52)=abb128(119)+abb128(52)
      abb128(23)=abb128(59)*abb128(23)
      abb128(59)=abb128(23)*abb128(82)
      abb128(119)=abb128(59)*spak1k4
      abb128(120)=abb128(67)*spbl5k3
      abb128(119)=abb128(119)+abb128(120)
      abb128(121)=abb128(119)*spak1l5
      abb128(122)=abb128(76)*abb128(67)
      abb128(123)=abb128(67)*spbl6k3
      abb128(124)=abb128(123)*spak1l6
      abb128(121)=-abb128(121)+abb128(122)-abb128(124)
      abb128(122)=abb128(100)*spbk7l5
      abb128(124)=abb128(122)*abb128(71)
      abb128(125)=-spak1k4*abb128(124)
      abb128(52)=abb128(125)+2.0_ki*abb128(52)+abb128(121)
      abb128(52)=spbk2k1*abb128(52)
      abb128(125)=spbl5k2+3.0_ki*abb128(79)
      abb128(125)=abb128(125)*abb128(99)
      abb128(125)=abb128(125)-abb128(22)-3.0_ki*abb128(18)
      abb128(125)=spak1k4*abb128(125)
      abb128(26)=abb128(26)*abb128(15)
      abb128(110)=abb128(125)+abb128(26)-abb128(110)
      abb128(110)=es12*abb128(110)
      abb128(125)=abb128(48)*spak1k4
      abb128(126)=-abb128(47)*abb128(125)
      abb128(19)=spbl6k2*abb128(19)
      abb128(19)=abb128(126)+abb128(19)
      abb128(19)=spak4l6*abb128(19)
      abb128(126)=spak1k4*abb128(25)
      abb128(127)=-abb128(35)*abb128(15)
      abb128(126)=abb128(126)+abb128(127)
      abb128(126)=spak4k7*abb128(126)
      abb128(127)=-spak4l5*spak1k4*abb128(45)
      abb128(19)=abb128(127)+abb128(126)+abb128(19)
      abb128(19)=spbk4k3*abb128(19)
      abb128(46)=-abb128(46)*abb128(125)
      abb128(26)=abb128(26)+abb128(61)
      abb128(61)=spbl6k2*abb128(26)
      abb128(46)=abb128(46)+abb128(61)
      abb128(46)=spak2l6*abb128(46)
      abb128(26)=-abb128(26)*abb128(73)
      abb128(61)=spak2l5*spak1k4*abb128(95)
      abb128(19)=abb128(61)+abb128(46)+abb128(19)-abb128(41)+abb128(52)+abb128(&
      &110)+abb128(26)
      abb128(19)=4.0_ki*abb128(19)
      abb128(26)=8.0_ki*abb128(20)
      abb128(41)=abb128(26)*spak1k4
      abb128(46)=abb128(85)*abb128(56)
      abb128(52)=8.0_ki*spak3k4
      abb128(61)=-abb128(52)*abb128(28)*abb128(46)
      abb128(95)=abb128(40)*spak1k4
      abb128(110)=-16.0_ki*abb128(95)
      abb128(95)=-8.0_ki*abb128(95)
      abb128(125)=es12-abb128(73)
      abb128(66)=abb128(66)*abb128(125)
      abb128(90)=abb128(11)*abb128(90)
      abb128(66)=-abb128(77)+abb128(90)+abb128(66)
      abb128(66)=abb128(66)*abb128(55)
      abb128(74)=abb128(74)*abb128(11)
      abb128(44)=abb128(68)+abb128(74)+abb128(44)
      abb128(68)=abb128(44)-abb128(53)+abb128(122)
      abb128(74)=abb128(68)*spak1k4
      abb128(77)=spbl5k3*spak1k4
      abb128(90)=abb128(77)*abb128(39)
      abb128(74)=abb128(74)-abb128(90)
      abb128(125)=abb128(67)*spbk7k3
      abb128(74)=-abb128(125)+2.0_ki*abb128(74)
      abb128(74)=8.0_ki*abb128(74)
      abb128(28)=abb128(15)*abb128(28)
      abb128(126)=-spbl5k3*abb128(28)
      abb128(126)=abb128(126)-abb128(125)
      abb128(126)=8.0_ki*abb128(126)
      abb128(127)=-2.0_ki*abb128(68)
      abb128(127)=spak1k4*abb128(127)
      abb128(90)=abb128(90)+abb128(127)
      abb128(90)=2.0_ki*abb128(90)+abb128(125)
      abb128(90)=4.0_ki*abb128(90)
      abb128(42)=-spak1k2*abb128(42)
      abb128(29)=-abb128(29)*abb128(46)
      abb128(29)=abb128(42)+abb128(29)
      abb128(29)=spbl6k2*abb128(29)
      abb128(42)=spak1k2*abb128(56)*abb128(16)
      abb128(29)=abb128(42)+abb128(29)
      abb128(29)=abb128(29)*abb128(52)
      abb128(31)=abb128(31)*spbl6k2
      abb128(31)=abb128(31)-abb128(96)
      abb128(42)=-spak1k4*abb128(31)
      abb128(46)=16.0_ki*abb128(42)
      abb128(42)=8.0_ki*abb128(42)
      abb128(56)=-spak2k7*abb128(81)
      abb128(81)=abb128(11)*spak2k7
      abb128(92)=abb128(92)*abb128(81)
      abb128(56)=abb128(56)+abb128(92)
      abb128(56)=abb128(56)*abb128(55)
      abb128(92)=abb128(30)*spak2k7
      abb128(88)=abb128(88)*abb128(11)
      abb128(88)=abb128(92)-abb128(88)
      abb128(92)=abb128(88)*spak1k4
      abb128(125)=abb128(117)*spbl6k2
      abb128(127)=abb128(125)*spbl5k3
      abb128(77)=abb128(77)*abb128(16)
      abb128(77)=abb128(77)-abb128(127)
      abb128(92)=abb128(92)-abb128(77)
      abb128(92)=-abb128(123)+2.0_ki*abb128(92)
      abb128(92)=8.0_ki*abb128(92)
      abb128(127)=2.0_ki*abb128(77)+abb128(123)
      abb128(127)=8.0_ki*abb128(127)
      abb128(75)=-abb128(11)*abb128(75)
      abb128(75)=abb128(75)+abb128(30)
      abb128(75)=abb128(82)*spak1k4*abb128(75)
      abb128(75)=-abb128(77)+abb128(75)
      abb128(75)=2.0_ki*abb128(75)-abb128(123)
      abb128(75)=4.0_ki*abb128(75)
      abb128(27)=-spak2k7*abb128(27)*abb128(55)
      abb128(55)=8.0_ki*abb128(119)
      abb128(77)=8.0_ki*abb128(120)
      abb128(23)=abb128(23)*spak2k7
      abb128(119)=spak1k4*abb128(23)
      abb128(119)=-abb128(120)-4.0_ki*abb128(119)
      abb128(119)=4.0_ki*abb128(119)
      abb128(120)=abb128(14)*abb128(32)
      abb128(120)=abb128(120)+abb128(51)
      abb128(120)=abb128(120)*abb128(34)
      abb128(123)=abb128(111)*abb128(32)
      abb128(50)=-abb128(120)+abb128(123)+abb128(50)
      abb128(120)=-es12*abb128(50)
      abb128(123)=abb128(51)*spak1k2
      abb128(14)=abb128(14)*abb128(97)
      abb128(14)=abb128(123)+abb128(14)
      abb128(123)=abb128(14)*spbl6k2
      abb128(47)=abb128(47)*abb128(105)
      abb128(123)=abb128(123)-abb128(47)
      abb128(128)=abb128(123)*spak4l6
      abb128(25)=abb128(25)*spak1k2
      abb128(35)=abb128(35)*abb128(97)
      abb128(25)=abb128(35)-abb128(25)
      abb128(35)=abb128(25)*spak4k7
      abb128(35)=abb128(35)-abb128(128)
      abb128(128)=-spbk4k2*abb128(35)
      abb128(129)=-spak3l6*abb128(94)
      abb128(37)=spak3k7*abb128(37)
      abb128(45)=abb128(45)*spak1k2
      abb128(130)=spak4l5*spbk4k2
      abb128(131)=-abb128(45)*abb128(130)
      abb128(132)=spak3l5*abb128(109)
      abb128(37)=abb128(132)+abb128(129)+abb128(37)+abb128(131)+abb128(128)+abb&
      &128(120)
      abb128(37)=4.0_ki*abb128(37)
      abb128(115)=abb128(115)*abb128(32)
      abb128(112)=abb128(84)+abb128(115)+abb128(112)-abb128(113)
      abb128(115)=spak1k3*abb128(112)
      abb128(103)=3.0_ki*abb128(103)
      abb128(120)=-spbl5k2*abb128(60)
      abb128(48)=abb128(120)*abb128(48)
      abb128(48)=abb128(54)-abb128(48)-abb128(103)
      abb128(128)=spak1k4*abb128(48)
      abb128(129)=abb128(78)*abb128(11)
      abb128(15)=abb128(15)*abb128(129)
      abb128(15)=abb128(15)+abb128(128)
      abb128(15)=spbk4k2*abb128(15)
      abb128(15)=abb128(115)+abb128(15)+abb128(50)
      abb128(15)=8.0_ki*abb128(15)
      abb128(50)=8.0_ki*abb128(50)
      abb128(115)=-spbl5k3*abb128(39)
      abb128(115)=abb128(115)+abb128(68)
      abb128(128)=abb128(51)*spbk7k3
      abb128(115)=-abb128(128)+2.0_ki*abb128(115)
      abb128(115)=spak1k3*abb128(115)
      abb128(60)=abb128(65)-abb128(69)-abb128(60)
      abb128(65)=es71+es12
      abb128(131)=abb128(65)-es712
      abb128(60)=abb128(60)*abb128(131)
      abb128(131)=abb128(89)*abb128(11)
      abb128(131)=abb128(131)-abb128(60)
      abb128(132)=spak1k4*abb128(131)
      abb128(118)=-spbk7l5*abb128(118)
      abb128(118)=abb128(118)+abb128(132)
      abb128(132)=2.0_ki*spbk4k2
      abb128(118)=abb128(132)*abb128(118)
      abb128(28)=-spbl5k4*abb128(28)
      abb128(133)=-spbk7k4*abb128(67)
      abb128(25)=abb128(133)+abb128(28)-abb128(25)+abb128(118)+abb128(115)
      abb128(25)=4.0_ki*abb128(25)
      abb128(28)=abb128(102)-abb128(17)
      abb128(102)=abb128(28)*spbl6k2
      abb128(102)=abb128(102)-abb128(16)
      abb128(115)=-spbl5k3*abb128(102)
      abb128(115)=-abb128(88)+abb128(115)
      abb128(118)=spbl6k3*abb128(51)
      abb128(115)=abb128(118)+2.0_ki*abb128(115)
      abb128(115)=spak1k3*abb128(115)
      abb128(118)=abb128(80)*spak2k7
      abb128(81)=abb128(81)*abb128(64)
      abb128(81)=abb128(118)-abb128(81)
      abb128(118)=-abb128(132)*spak1k4*abb128(81)
      abb128(16)=spak1k4*abb128(16)
      abb128(16)=abb128(16)-abb128(125)
      abb128(16)=spbl5k4*abb128(16)
      abb128(125)=spbl6k4*abb128(67)
      abb128(16)=abb128(125)+2.0_ki*abb128(16)+abb128(118)+abb128(123)+abb128(1&
      &15)
      abb128(16)=4.0_ki*abb128(16)
      abb128(115)=abb128(51)*spbl5k3
      abb128(115)=abb128(115)+abb128(59)
      abb128(118)=spak1k3*abb128(115)
      abb128(69)=abb128(69)*spbl5k2
      abb128(13)=abb128(69)-abb128(13)
      abb128(69)=abb128(13)*abb128(82)
      abb128(82)=spbk4k2*spak1k4*abb128(69)
      abb128(67)=spbl5k4*abb128(67)
      abb128(67)=abb128(67)+abb128(118)-abb128(45)+abb128(82)
      abb128(67)=4.0_ki*abb128(67)
      abb128(82)=spal5k7*abb128(21)
      abb128(79)=-spbl5k2-6.0_ki*abb128(79)
      abb128(79)=abb128(79)*abb128(99)
      abb128(18)=4.0_ki*abb128(82)+abb128(79)+abb128(22)+6.0_ki*abb128(18)
      abb128(18)=spak1k2*abb128(18)
      abb128(22)=spak1k7*abb128(122)
      abb128(22)=abb128(49)-abb128(22)
      abb128(49)=4.0_ki*abb128(72)
      abb128(72)=4.0_ki*spbl5k3
      abb128(79)=-abb128(72)*abb128(63)
      abb128(28)=abb128(28)*abb128(34)
      abb128(72)=-abb128(28)*abb128(72)
      abb128(82)=abb128(85)*abb128(114)
      abb128(99)=abb128(86)+abb128(82)
      abb128(114)=abb128(11)*abb128(99)
      abb128(84)=abb128(84)*spak1k2
      abb128(18)=4.0_ki*abb128(114)+abb128(79)+2.0_ki*abb128(84)+abb128(72)+abb&
      &128(49)-abb128(104)+abb128(18)-4.0_ki*abb128(22)
      abb128(18)=es12*abb128(18)
      abb128(22)=abb128(43)*abb128(71)
      abb128(43)=abb128(22)*abb128(65)
      abb128(22)=abb128(22)*es712
      abb128(30)=abb128(83)*abb128(30)
      abb128(22)=-abb128(43)+abb128(22)+abb128(30)
      abb128(28)=abb128(63)+abb128(28)
      abb128(30)=abb128(98)*abb128(28)
      abb128(43)=abb128(115)*spak1l5
      abb128(30)=-abb128(124)+abb128(30)-abb128(43)+abb128(22)
      abb128(43)=abb128(99)*abb128(91)
      abb128(21)=abb128(21)*abb128(105)
      abb128(63)=abb128(113)*spak1k2
      abb128(21)=abb128(21)-abb128(63)
      abb128(63)=abb128(21)+abb128(84)
      abb128(65)=abb128(43)-abb128(30)+abb128(63)
      abb128(72)=es23-es123
      abb128(79)=abb128(65)*abb128(72)
      abb128(38)=spak1k2*abb128(38)
      abb128(47)=-spak1l6*abb128(47)
      abb128(14)=abb128(14)*abb128(34)
      abb128(34)=-abb128(97)*abb128(111)
      abb128(14)=abb128(14)+abb128(47)+abb128(38)+abb128(34)
      abb128(14)=spbk3k1*abb128(14)
      abb128(34)=abb128(49)-abb128(107)
      abb128(34)=-abb128(34)*abb128(73)
      abb128(38)=spak4l5*abb128(45)
      abb128(35)=abb128(38)+abb128(35)
      abb128(35)=spbk4k3*abb128(35)
      abb128(38)=spak2l6*abb128(94)
      abb128(47)=es12*abb128(115)
      abb128(45)=-spbk3k1*abb128(45)
      abb128(45)=2.0_ki*abb128(47)+abb128(45)
      abb128(45)=spak1l5*abb128(45)
      abb128(47)=-spak1k7*abb128(72)
      abb128(49)=-es12*abb128(71)
      abb128(47)=abb128(49)+abb128(47)
      abb128(47)=abb128(47)*abb128(128)
      abb128(49)=abb128(51)*spak1l6
      abb128(73)=abb128(49)*spbl6k3
      abb128(72)=2.0_ki*es12+abb128(72)
      abb128(72)=abb128(72)*abb128(73)
      abb128(94)=-spak2l5*abb128(109)
      abb128(14)=abb128(94)+abb128(38)+abb128(35)+abb128(72)+abb128(47)+abb128(&
      &45)+abb128(14)+abb128(79)+abb128(34)+abb128(18)
      abb128(14)=4.0_ki*abb128(14)
      abb128(18)=16.0_ki*abb128(106)
      abb128(34)=abb128(76)*abb128(51)
      abb128(34)=abb128(73)-abb128(34)
      abb128(35)=abb128(34)+abb128(65)
      abb128(38)=8.0_ki*abb128(35)
      abb128(45)=abb128(82)-abb128(86)
      abb128(45)=abb128(45)*abb128(91)
      abb128(30)=abb128(45)+abb128(63)+abb128(30)-abb128(34)
      abb128(30)=8.0_ki*abb128(30)
      abb128(34)=4.0_ki*abb128(35)
      abb128(35)=16.0_ki*abb128(36)*abb128(85)
      abb128(45)=16.0_ki*spak1k2
      abb128(47)=abb128(68)*abb128(45)
      abb128(63)=-spak1k2*abb128(96)
      abb128(65)=spak1k2*abb128(100)
      abb128(24)=abb128(24)*abb128(85)
      abb128(24)=abb128(65)+abb128(24)
      abb128(24)=spbl6k2*abb128(24)
      abb128(24)=abb128(63)+abb128(24)
      abb128(24)=16.0_ki*abb128(24)
      abb128(63)=-abb128(88)*abb128(45)
      abb128(45)=abb128(23)*abb128(45)
      abb128(54)=-abb128(54)+abb128(103)
      abb128(54)=spak1k2*abb128(54)
      abb128(17)=abb128(17)*spbk7l5
      abb128(60)=abb128(60)+abb128(17)
      abb128(65)=abb128(71)*abb128(60)
      abb128(64)=abb128(64)*abb128(93)
      abb128(71)=abb128(89)*spak1k7
      abb128(64)=abb128(64)+abb128(71)
      abb128(71)=-abb128(78)*abb128(85)
      abb128(71)=abb128(71)-abb128(64)
      abb128(71)=abb128(71)*abb128(91)
      abb128(72)=abb128(80)*abb128(83)
      abb128(73)=-spak1l5*abb128(69)
      abb128(76)=abb128(120)*abb128(105)
      abb128(54)=abb128(73)+abb128(71)+abb128(72)+abb128(76)+abb128(65)+abb128(&
      &54)
      abb128(54)=spbk4k2*abb128(54)
      abb128(65)=abb128(51)*spak1l5
      abb128(28)=-abb128(65)+2.0_ki*abb128(28)
      abb128(65)=spbl5k4*abb128(28)
      abb128(71)=spbk7k4*spak1k7*abb128(51)
      abb128(72)=-spbl6k4*abb128(49)
      abb128(54)=abb128(72)+abb128(71)+abb128(65)+abb128(54)
      abb128(54)=4.0_ki*abb128(54)
      abb128(21)=-abb128(43)-abb128(21)+abb128(22)-abb128(84)-abb128(124)
      abb128(21)=spak1k4*abb128(21)
      abb128(22)=abb128(87)*abb128(98)
      abb128(43)=abb128(117)*abb128(101)
      abb128(21)=abb128(43)+abb128(22)+abb128(21)+abb128(121)
      abb128(21)=4.0_ki*spbk3k1*abb128(21)
      abb128(22)=abb128(26)*spak4k7
      abb128(43)=4.0_ki*abb128(20)
      abb128(65)=-spak4k7*abb128(43)
      abb128(71)=abb128(51)*spbk4k2
      abb128(72)=spak4k7*abb128(71)
      abb128(73)=spak3k7*abb128(20)
      abb128(72)=abb128(72)+abb128(73)
      abb128(72)=4.0_ki*abb128(72)
      abb128(73)=abb128(26)*spak4l6
      abb128(43)=spak4l6*abb128(43)
      abb128(76)=-spak4l6*abb128(71)
      abb128(78)=-spak3l6*abb128(20)
      abb128(76)=abb128(76)+abb128(78)
      abb128(76)=4.0_ki*abb128(76)
      abb128(78)=abb128(31)*spak4l6
      abb128(79)=abb128(40)*spak4k7
      abb128(78)=abb128(79)+abb128(78)
      abb128(79)=abb128(20)*spak4l5
      abb128(78)=-abb128(79)+2.0_ki*abb128(78)
      abb128(79)=8.0_ki*abb128(78)
      abb128(78)=-4.0_ki*abb128(78)
      abb128(82)=2.0_ki*spak3l6
      abb128(83)=abb128(31)*abb128(82)
      abb128(84)=spak4l6*abb128(102)
      abb128(85)=spak4k7*abb128(39)
      abb128(84)=abb128(85)+abb128(84)
      abb128(84)=abb128(84)*abb128(132)
      abb128(71)=-spak4l5*abb128(71)
      abb128(36)=spak3k7*abb128(36)*abb128(32)
      abb128(20)=-spak3l5*abb128(20)
      abb128(20)=abb128(20)+abb128(83)+abb128(36)+abb128(84)+abb128(71)
      abb128(20)=4.0_ki*abb128(20)
      abb128(36)=abb128(26)*spak3k4
      abb128(71)=-abb128(112)*abb128(52)
      abb128(83)=-abb128(40)*abb128(52)
      abb128(84)=-abb128(68)*abb128(52)
      abb128(85)=-abb128(31)*abb128(52)
      abb128(86)=abb128(88)*abb128(52)
      abb128(52)=-abb128(23)*abb128(52)
      abb128(26)=abb128(26)*spak2k4
      abb128(87)=spak2k4*abb128(112)
      abb128(44)=abb128(44)-abb128(53)
      abb128(53)=-spak4k7*abb128(44)
      abb128(89)=abb128(88)*spak4l6
      abb128(91)=abb128(122)*spak4k7
      abb128(53)=-abb128(91)+abb128(53)+abb128(89)
      abb128(89)=abb128(59)*spak4l5
      abb128(87)=-abb128(89)+2.0_ki*abb128(53)+abb128(87)
      abb128(89)=8.0_ki*abb128(87)
      abb128(91)=spak4l5*abb128(23)
      abb128(53)=abb128(91)-abb128(53)
      abb128(53)=16.0_ki*abb128(53)
      abb128(87)=4.0_ki*abb128(87)
      abb128(91)=8.0_ki*spak2k4
      abb128(40)=abb128(40)*abb128(91)
      abb128(44)=abb128(44)+abb128(122)
      abb128(44)=abb128(44)*abb128(91)
      abb128(31)=abb128(31)*abb128(91)
      abb128(94)=-abb128(88)*abb128(91)
      abb128(23)=abb128(23)*abb128(91)
      abb128(60)=-spak1k7*abb128(60)
      abb128(64)=abb128(11)*abb128(64)
      abb128(80)=-abb128(80)*abb128(93)
      abb128(13)=abb128(13)*spak2k7
      abb128(91)=spak1l5*abb128(13)
      abb128(60)=abb128(91)+abb128(64)+abb128(80)+abb128(60)
      abb128(60)=spbk2k1*abb128(60)
      abb128(64)=spak3k7*abb128(68)
      abb128(60)=abb128(60)+abb128(64)
      abb128(17)=abb128(131)-abb128(17)
      abb128(64)=spak4k7*abb128(17)
      abb128(68)=-spak4l6*abb128(81)
      abb128(64)=abb128(68)+abb128(64)
      abb128(64)=abb128(132)*abb128(64)
      abb128(28)=spbl5k1*abb128(28)
      abb128(32)=abb128(129)*abb128(32)
      abb128(32)=-abb128(32)-abb128(48)
      abb128(48)=-es234+es34-es12
      abb128(48)=abb128(32)*abb128(48)
      abb128(68)=-abb128(88)*abb128(82)
      abb128(80)=-es71*abb128(51)
      abb128(69)=abb128(69)*abb128(130)
      abb128(59)=spak3l5*abb128(59)
      abb128(49)=-spbl6k1*abb128(49)
      abb128(28)=abb128(49)+abb128(59)+abb128(28)+abb128(68)+abb128(69)+abb128(&
      &80)+abb128(48)+abb128(64)+2.0_ki*abb128(60)
      abb128(28)=4.0_ki*abb128(28)
      abb128(48)=8.0_ki*abb128(51)
      abb128(32)=-8.0_ki*abb128(32)
      abb128(39)=8.0_ki*abb128(39)
      abb128(17)=8.0_ki*abb128(17)
      abb128(49)=8.0_ki*abb128(102)
      abb128(51)=-8.0_ki*abb128(81)
      abb128(13)=8.0_ki*abb128(13)
      R2d128=0.0_ki
      rat2 = rat2 + R2d128
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='128' value='", &
          & R2d128, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd128h5