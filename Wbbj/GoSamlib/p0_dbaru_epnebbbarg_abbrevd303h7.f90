module     p0_dbaru_epnebbbarg_abbrevd303h7
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh7
   implicit none
   private
   complex(ki), dimension(123), public :: abb303
   complex(ki), public :: R2d303
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
      abb303(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb303(2)=1.0_ki/(es34+es567-es12-es234)
      abb303(3)=sqrt(mB**2)
      abb303(4)=NC**(-1)
      abb303(5)=sqrt2**(-1)
      abb303(6)=spak2l5**(-1)
      abb303(7)=spbk7k2**(-1)
      abb303(8)=spak2l6**(-1)
      abb303(9)=spbl6k2**(-1)
      abb303(10)=TR*gW
      abb303(10)=CVDU*i_*spak1k4*abb303(5)*abb303(2)*abb303(1)*abb303(10)**2
      abb303(11)=abb303(10)*c3*abb303(7)
      abb303(12)=abb303(11)*spbk4k3
      abb303(13)=abb303(12)*NC
      abb303(14)=abb303(12)*abb303(4)
      abb303(15)=abb303(13)-abb303(14)
      abb303(16)=abb303(3)*spbl6k2
      abb303(17)=mB**2
      abb303(18)=abb303(16)*abb303(17)
      abb303(19)=-abb303(18)*abb303(15)
      abb303(20)=abb303(4)*abb303(7)
      abb303(21)=abb303(20)*c1
      abb303(22)=abb303(10)*spbk4k3
      abb303(23)=abb303(21)*abb303(22)
      abb303(24)=abb303(23)*abb303(18)
      abb303(19)=abb303(19)-abb303(24)
      abb303(19)=abb303(19)*abb303(6)
      abb303(25)=abb303(10)*abb303(8)
      abb303(26)=abb303(25)*abb303(20)
      abb303(27)=2.0_ki*abb303(26)
      abb303(28)=abb303(27)*abb303(17)
      abb303(29)=spbk4k3*spbl5k2
      abb303(30)=abb303(28)*abb303(29)
      abb303(31)=abb303(22)*abb303(20)
      abb303(32)=spbl6k2*spbl5k2
      abb303(33)=abb303(31)*abb303(32)
      abb303(30)=abb303(30)+abb303(33)
      abb303(34)=c1*abb303(3)
      abb303(30)=abb303(30)*abb303(34)
      abb303(35)=abb303(17)*abb303(8)
      abb303(36)=2.0_ki*abb303(35)
      abb303(37)=abb303(14)*spbl5k2
      abb303(38)=abb303(36)*abb303(37)
      abb303(39)=abb303(32)*abb303(14)
      abb303(38)=abb303(38)+abb303(39)
      abb303(38)=abb303(38)*abb303(3)
      abb303(40)=abb303(12)*spbl5k2
      abb303(41)=abb303(36)*abb303(40)
      abb303(42)=abb303(32)*abb303(12)
      abb303(41)=abb303(41)+abb303(42)
      abb303(43)=NC*abb303(3)
      abb303(41)=abb303(41)*abb303(43)
      abb303(30)=abb303(30)-abb303(38)+abb303(41)+abb303(19)
      abb303(30)=abb303(30)*spak4k7
      abb303(11)=abb303(11)*spbk3k1
      abb303(38)=abb303(11)*NC
      abb303(41)=abb303(11)*abb303(4)
      abb303(44)=abb303(38)-abb303(41)
      abb303(45)=-abb303(18)*abb303(44)
      abb303(46)=abb303(10)*spbk3k1
      abb303(47)=abb303(21)*abb303(46)
      abb303(48)=abb303(47)*abb303(18)
      abb303(45)=abb303(45)-abb303(48)
      abb303(45)=abb303(45)*abb303(6)
      abb303(49)=spbk3k1*spbl5k2
      abb303(28)=abb303(28)*abb303(49)
      abb303(50)=abb303(46)*abb303(20)
      abb303(51)=abb303(50)*abb303(32)
      abb303(28)=abb303(28)+abb303(51)
      abb303(28)=abb303(28)*abb303(34)
      abb303(34)=abb303(41)*spbl5k2
      abb303(52)=abb303(36)*abb303(34)
      abb303(53)=abb303(32)*abb303(41)
      abb303(52)=abb303(52)+abb303(53)
      abb303(52)=abb303(52)*abb303(3)
      abb303(54)=abb303(11)*spbl5k2
      abb303(36)=abb303(36)*abb303(54)
      abb303(55)=abb303(32)*abb303(11)
      abb303(36)=abb303(36)+abb303(55)
      abb303(36)=abb303(36)*abb303(43)
      abb303(28)=abb303(28)-abb303(52)+abb303(36)+abb303(45)
      abb303(28)=abb303(28)*spak1k7
      abb303(28)=abb303(30)+abb303(28)
      abb303(30)=es71+es12-es712
      abb303(28)=abb303(28)*abb303(30)
      abb303(36)=abb303(26)*abb303(17)
      abb303(52)=abb303(36)*abb303(29)
      abb303(56)=-abb303(52)-abb303(33)
      abb303(56)=c1*abb303(56)
      abb303(57)=abb303(35)*abb303(37)
      abb303(56)=abb303(56)+abb303(57)+abb303(39)
      abb303(56)=abb303(16)*abb303(56)
      abb303(57)=spbl6k2**2
      abb303(17)=abb303(17)*abb303(3)
      abb303(58)=abb303(6)*abb303(57)*abb303(17)
      abb303(59)=abb303(23)+abb303(13)
      abb303(60)=abb303(59)-abb303(14)
      abb303(61)=abb303(60)*abb303(58)
      abb303(62)=-abb303(40)*abb303(35)
      abb303(62)=abb303(62)-abb303(42)
      abb303(63)=abb303(16)*NC
      abb303(62)=abb303(62)*abb303(63)
      abb303(56)=abb303(61)+abb303(62)+abb303(56)
      abb303(56)=spak2k4*abb303(56)
      abb303(36)=abb303(36)*abb303(49)
      abb303(62)=abb303(36)+abb303(51)
      abb303(62)=c1*abb303(62)
      abb303(64)=-abb303(35)*abb303(34)
      abb303(62)=abb303(62)+abb303(64)-abb303(53)
      abb303(62)=abb303(16)*abb303(62)
      abb303(64)=abb303(47)+abb303(38)
      abb303(65)=abb303(64)-abb303(41)
      abb303(58)=abb303(65)*abb303(58)
      abb303(66)=abb303(54)*abb303(35)
      abb303(66)=abb303(66)+abb303(55)
      abb303(66)=abb303(66)*abb303(63)
      abb303(62)=-abb303(58)+abb303(66)+abb303(62)
      abb303(62)=spak1k2*abb303(62)
      abb303(66)=abb303(16)*spbl5k2
      abb303(67)=abb303(23)*abb303(66)
      abb303(68)=abb303(63)*abb303(40)
      abb303(69)=abb303(66)*abb303(14)
      abb303(67)=-abb303(69)+abb303(67)+abb303(68)
      abb303(68)=spak4l5*spbl6l5
      abb303(70)=-abb303(67)*abb303(68)
      abb303(71)=abb303(47)*abb303(66)
      abb303(72)=abb303(63)*abb303(54)
      abb303(73)=abb303(66)*abb303(41)
      abb303(71)=-abb303(73)+abb303(71)+abb303(72)
      abb303(72)=spak1l5*spbl6l5
      abb303(74)=-abb303(71)*abb303(72)
      abb303(56)=abb303(74)+abb303(70)+abb303(62)+abb303(56)
      abb303(62)=2.0_ki*spal6k7
      abb303(56)=abb303(62)*abb303(56)
      abb303(70)=spak4l6*abb303(67)
      abb303(74)=spak1l6*abb303(71)
      abb303(70)=abb303(74)+abb303(70)
      abb303(70)=spbl6l5*abb303(70)
      abb303(74)=abb303(71)*spak1k7
      abb303(75)=abb303(67)*spak4k7
      abb303(74)=abb303(74)+abb303(75)
      abb303(75)=-spbk7l5*abb303(74)
      abb303(76)=abb303(21)*abb303(25)
      abb303(77)=spbl5k2**2
      abb303(78)=abb303(76)*abb303(17)*abb303(77)
      abb303(79)=abb303(78)*spbk4k3
      abb303(80)=abb303(17)*abb303(8)
      abb303(81)=abb303(80)*abb303(77)
      abb303(82)=abb303(15)*abb303(81)
      abb303(79)=abb303(79)+abb303(82)
      abb303(82)=spak2k4*abb303(79)
      abb303(78)=abb303(78)*spbk3k1
      abb303(81)=abb303(44)*abb303(81)
      abb303(78)=abb303(78)+abb303(81)
      abb303(81)=-spak1k2*abb303(78)
      abb303(83)=spak4k7*abb303(60)
      abb303(84)=spak1k7*abb303(65)
      abb303(83)=abb303(83)+abb303(84)
      abb303(83)=abb303(83)*abb303(77)*abb303(3)
      abb303(84)=2.0_ki*spbk7l6
      abb303(85)=abb303(83)*abb303(84)
      abb303(70)=abb303(85)+abb303(75)+abb303(70)+abb303(82)+abb303(81)
      abb303(70)=spal5k7*abb303(70)
      abb303(75)=spak4k7*abb303(79)
      abb303(78)=spak1k7*abb303(78)
      abb303(75)=abb303(75)+abb303(78)
      abb303(75)=spak2l5*abb303(75)
      abb303(78)=abb303(40)*NC
      abb303(78)=abb303(78)-abb303(37)
      abb303(79)=-spbl5k2*abb303(23)
      abb303(79)=abb303(79)-abb303(78)
      abb303(81)=abb303(57)*abb303(3)
      abb303(79)=abb303(81)*abb303(79)
      abb303(61)=abb303(61)+abb303(79)
      abb303(61)=spak4l6*abb303(61)
      abb303(79)=abb303(54)*NC
      abb303(79)=abb303(79)-abb303(34)
      abb303(82)=-spbl5k2*abb303(47)
      abb303(82)=abb303(82)-abb303(79)
      abb303(82)=abb303(81)*abb303(82)
      abb303(58)=abb303(58)+abb303(82)
      abb303(58)=spak1l6*abb303(58)
      abb303(58)=abb303(61)+abb303(58)
      abb303(58)=spak2k7*abb303(58)
      abb303(61)=abb303(18)*abb303(78)
      abb303(24)=spbl5k2*abb303(24)
      abb303(24)=abb303(24)+abb303(61)
      abb303(24)=spak4k7*abb303(24)
      abb303(61)=abb303(18)*abb303(79)
      abb303(48)=spbl5k2*abb303(48)
      abb303(48)=abb303(48)+abb303(61)
      abb303(48)=spak1k7*abb303(48)
      abb303(24)=abb303(58)+abb303(75)+abb303(24)+abb303(48)+abb303(70)+abb303(&
      &56)+abb303(28)
      abb303(24)=4.0_ki*abb303(24)
      abb303(28)=abb303(8)*mB
      abb303(48)=abb303(41)*abb303(28)
      abb303(56)=abb303(28)*NC
      abb303(58)=abb303(56)*abb303(11)
      abb303(48)=abb303(48)-abb303(58)
      abb303(58)=-abb303(77)*abb303(48)
      abb303(25)=abb303(25)*mB
      abb303(61)=abb303(25)*abb303(21)
      abb303(70)=abb303(61)*abb303(77)
      abb303(75)=abb303(70)*spbk3k1
      abb303(58)=abb303(58)+abb303(75)
      abb303(58)=abb303(58)*spak1k7
      abb303(75)=abb303(14)*abb303(28)
      abb303(82)=abb303(56)*abb303(12)
      abb303(75)=abb303(75)-abb303(82)
      abb303(82)=-abb303(77)*abb303(75)
      abb303(70)=abb303(70)*spbk4k3
      abb303(70)=abb303(82)+abb303(70)
      abb303(70)=abb303(70)*spak4k7
      abb303(58)=abb303(58)+abb303(70)
      abb303(70)=abb303(58)*spak2l5
      abb303(10)=abb303(10)*mB
      abb303(21)=abb303(21)*abb303(10)
      abb303(82)=spbl6k2*abb303(21)
      abb303(85)=abb303(82)*abb303(29)
      abb303(86)=abb303(32)*mB
      abb303(87)=abb303(86)*abb303(13)
      abb303(88)=abb303(86)*abb303(14)
      abb303(85)=-abb303(88)+abb303(85)+abb303(87)
      abb303(87)=spak4k7*abb303(85)
      abb303(89)=abb303(82)*abb303(49)
      abb303(90)=abb303(86)*abb303(38)
      abb303(91)=abb303(86)*abb303(41)
      abb303(89)=-abb303(91)+abb303(89)+abb303(90)
      abb303(90)=spak1k7*abb303(89)
      abb303(87)=abb303(70)+abb303(87)+abb303(90)
      abb303(87)=16.0_ki*abb303(87)
      abb303(90)=8.0_ki*abb303(70)
      abb303(74)=-8.0_ki*abb303(74)
      abb303(27)=abb303(27)*abb303(17)
      abb303(92)=abb303(27)*spbk4k3
      abb303(93)=mB**3
      abb303(94)=abb303(26)*abb303(93)
      abb303(95)=abb303(94)*spbk4k3
      abb303(92)=abb303(92)+abb303(95)
      abb303(92)=abb303(92)*c1
      abb303(96)=2.0_ki*abb303(80)
      abb303(97)=abb303(96)*abb303(12)
      abb303(98)=abb303(93)*abb303(8)
      abb303(99)=abb303(98)*abb303(12)
      abb303(97)=abb303(97)+abb303(99)
      abb303(97)=abb303(97)*NC
      abb303(100)=abb303(96)*abb303(14)
      abb303(101)=abb303(98)*abb303(14)
      abb303(92)=abb303(92)+abb303(97)-abb303(100)-abb303(101)
      abb303(92)=abb303(92)*abb303(6)
      abb303(28)=abb303(28)*spbl5k2
      abb303(97)=abb303(28)*abb303(14)
      abb303(100)=abb303(56)*abb303(40)
      abb303(102)=abb303(61)*abb303(29)
      abb303(97)=-abb303(102)+abb303(97)-abb303(100)
      abb303(92)=abb303(92)+abb303(97)
      abb303(92)=abb303(92)*spak4k7
      abb303(27)=abb303(27)*spbk3k1
      abb303(100)=abb303(94)*spbk3k1
      abb303(27)=abb303(27)+abb303(100)
      abb303(27)=abb303(27)*c1
      abb303(103)=abb303(96)*abb303(11)
      abb303(104)=abb303(98)*abb303(11)
      abb303(103)=abb303(103)+abb303(104)
      abb303(103)=abb303(103)*NC
      abb303(96)=abb303(96)*abb303(41)
      abb303(105)=abb303(98)*abb303(41)
      abb303(27)=abb303(27)+abb303(103)-abb303(96)-abb303(105)
      abb303(27)=abb303(27)*abb303(6)
      abb303(28)=abb303(28)*abb303(41)
      abb303(56)=abb303(56)*abb303(54)
      abb303(96)=abb303(61)*abb303(49)
      abb303(28)=-abb303(96)+abb303(28)-abb303(56)
      abb303(27)=abb303(27)+abb303(28)
      abb303(27)=abb303(27)*spak1k7
      abb303(27)=abb303(92)+abb303(27)
      abb303(27)=abb303(27)*abb303(30)
      abb303(18)=abb303(18)*abb303(26)
      abb303(30)=-spbk4k3*abb303(18)
      abb303(56)=-spbl6k2*abb303(95)
      abb303(30)=abb303(56)+abb303(30)
      abb303(30)=c1*abb303(30)
      abb303(56)=abb303(98)*spbl6k2
      abb303(92)=-abb303(12)*abb303(56)
      abb303(103)=abb303(16)*abb303(12)
      abb303(106)=-abb303(35)*abb303(103)
      abb303(92)=abb303(92)+abb303(106)
      abb303(92)=NC*abb303(92)
      abb303(106)=abb303(14)*abb303(56)
      abb303(107)=abb303(14)*abb303(16)
      abb303(108)=abb303(35)*abb303(107)
      abb303(30)=abb303(92)+abb303(30)+abb303(106)+abb303(108)
      abb303(30)=abb303(6)*abb303(30)
      abb303(92)=-abb303(32)*abb303(75)
      abb303(102)=abb303(102)*spbl6k2
      abb303(92)=abb303(102)+abb303(92)
      abb303(30)=abb303(30)+abb303(92)
      abb303(30)=spak2k4*abb303(30)
      abb303(18)=spbk3k1*abb303(18)
      abb303(102)=spbl6k2*abb303(100)
      abb303(18)=abb303(102)+abb303(18)
      abb303(18)=c1*abb303(18)
      abb303(102)=abb303(11)*abb303(56)
      abb303(106)=abb303(16)*abb303(11)
      abb303(108)=abb303(35)*abb303(106)
      abb303(102)=abb303(102)+abb303(108)
      abb303(102)=NC*abb303(102)
      abb303(108)=-abb303(41)*abb303(56)
      abb303(109)=abb303(41)*abb303(16)
      abb303(110)=-abb303(35)*abb303(109)
      abb303(18)=abb303(102)+abb303(18)+abb303(108)+abb303(110)
      abb303(18)=abb303(6)*abb303(18)
      abb303(32)=-abb303(32)*abb303(48)
      abb303(96)=abb303(96)*spbl6k2
      abb303(32)=abb303(96)+abb303(32)
      abb303(18)=abb303(18)-abb303(32)
      abb303(18)=spak1k2*abb303(18)
      abb303(18)=abb303(18)+abb303(30)
      abb303(18)=abb303(62)*abb303(18)
      abb303(30)=spak4l6*abb303(97)
      abb303(62)=spak1l6*abb303(28)
      abb303(30)=abb303(62)+abb303(30)
      abb303(30)=spbl6l5*abb303(30)
      abb303(62)=abb303(28)*spak1k7
      abb303(96)=abb303(97)*spak4k7
      abb303(62)=abb303(62)+abb303(96)
      abb303(96)=-spbk7l5*abb303(62)
      abb303(102)=spak2k4*abb303(60)
      abb303(108)=spak1k2*abb303(65)
      abb303(102)=abb303(102)-abb303(108)
      abb303(77)=abb303(9)*abb303(102)*abb303(8)**2*abb303(93)*abb303(77)
      abb303(30)=-abb303(77)+abb303(96)+abb303(30)
      abb303(30)=spal5k7*abb303(30)
      abb303(96)=abb303(94)*abb303(29)
      abb303(102)=abb303(31)*abb303(66)
      abb303(108)=abb303(96)+abb303(102)
      abb303(108)=c1*abb303(108)
      abb303(110)=abb303(37)*abb303(98)
      abb303(111)=abb303(98)+abb303(16)
      abb303(111)=abb303(111)*NC
      abb303(112)=abb303(40)*abb303(111)
      abb303(108)=abb303(112)+abb303(108)-abb303(110)-abb303(69)
      abb303(108)=spak4k7*abb303(108)
      abb303(94)=abb303(94)*abb303(49)
      abb303(66)=abb303(50)*abb303(66)
      abb303(112)=abb303(94)+abb303(66)
      abb303(112)=c1*abb303(112)
      abb303(113)=abb303(34)*abb303(98)
      abb303(111)=abb303(54)*abb303(111)
      abb303(111)=abb303(111)+abb303(112)-abb303(113)-abb303(73)
      abb303(111)=spak1k7*abb303(111)
      abb303(112)=-abb303(56)*abb303(15)
      abb303(76)=spbl6k2*abb303(93)*abb303(76)
      abb303(93)=-spbk4k3*abb303(76)
      abb303(93)=abb303(93)+abb303(112)
      abb303(93)=abb303(6)*abb303(93)
      abb303(93)=abb303(93)+abb303(92)
      abb303(93)=spak4l6*abb303(93)
      abb303(56)=-abb303(56)*abb303(44)
      abb303(76)=-spbk3k1*abb303(76)
      abb303(56)=abb303(76)+abb303(56)
      abb303(56)=abb303(6)*abb303(56)
      abb303(56)=abb303(56)+abb303(32)
      abb303(56)=spak1l6*abb303(56)
      abb303(56)=abb303(93)+abb303(56)
      abb303(56)=spak2k7*abb303(56)
      abb303(18)=abb303(56)+abb303(108)+abb303(111)+abb303(30)+abb303(18)+abb30&
      &3(27)
      abb303(18)=8.0_ki*abb303(18)
      abb303(27)=spbl6k2*mB
      abb303(13)=abb303(13)*abb303(27)
      abb303(30)=abb303(82)*spbk4k3
      abb303(56)=abb303(27)*abb303(14)
      abb303(13)=-abb303(56)+abb303(13)+abb303(30)
      abb303(30)=abb303(13)*abb303(6)
      abb303(76)=abb303(30)-abb303(97)
      abb303(93)=spak4k7*abb303(76)
      abb303(38)=abb303(38)*abb303(27)
      abb303(82)=abb303(82)*spbk3k1
      abb303(108)=abb303(27)*abb303(41)
      abb303(38)=-abb303(108)+abb303(38)+abb303(82)
      abb303(82)=abb303(38)*abb303(6)
      abb303(111)=abb303(82)-abb303(28)
      abb303(112)=spak1k7*abb303(111)
      abb303(93)=abb303(93)+abb303(112)
      abb303(93)=32.0_ki*abb303(93)
      abb303(112)=16.0_ki*abb303(62)
      abb303(17)=abb303(26)*abb303(17)
      abb303(26)=abb303(17)*spbk4k3
      abb303(114)=2.0_ki*abb303(95)-abb303(26)
      abb303(114)=c1*abb303(114)
      abb303(115)=abb303(80)*abb303(12)
      abb303(116)=2.0_ki*abb303(99)-abb303(115)
      abb303(116)=NC*abb303(116)
      abb303(117)=abb303(80)*abb303(14)
      abb303(114)=abb303(116)+abb303(114)-2.0_ki*abb303(101)+abb303(117)
      abb303(114)=abb303(6)*abb303(114)
      abb303(114)=abb303(114)+abb303(97)
      abb303(114)=spak4k7*abb303(114)
      abb303(17)=abb303(17)*spbk3k1
      abb303(116)=2.0_ki*abb303(100)-abb303(17)
      abb303(116)=c1*abb303(116)
      abb303(118)=abb303(80)*abb303(11)
      abb303(119)=2.0_ki*abb303(104)-abb303(118)
      abb303(119)=NC*abb303(119)
      abb303(80)=abb303(80)*abb303(41)
      abb303(116)=abb303(119)+abb303(116)-2.0_ki*abb303(105)+abb303(80)
      abb303(116)=abb303(6)*abb303(116)
      abb303(116)=abb303(116)+abb303(28)
      abb303(116)=spak1k7*abb303(116)
      abb303(114)=abb303(114)+abb303(116)
      abb303(114)=16.0_ki*abb303(114)
      abb303(20)=abb303(10)*abb303(20)
      abb303(116)=spbl6k2*abb303(20)
      abb303(119)=-abb303(29)*abb303(116)
      abb303(102)=abb303(119)-2.0_ki*abb303(102)
      abb303(102)=c1*abb303(102)
      abb303(119)=-abb303(12)*abb303(86)
      abb303(120)=2.0_ki*abb303(16)
      abb303(121)=-abb303(40)*abb303(120)
      abb303(119)=abb303(119)+abb303(121)
      abb303(119)=NC*abb303(119)
      abb303(69)=abb303(119)+abb303(102)+abb303(88)+2.0_ki*abb303(69)
      abb303(69)=spak4k7*abb303(69)
      abb303(88)=-abb303(49)*abb303(116)
      abb303(66)=abb303(88)-2.0_ki*abb303(66)
      abb303(66)=c1*abb303(66)
      abb303(86)=-abb303(11)*abb303(86)
      abb303(88)=-abb303(54)*abb303(120)
      abb303(86)=abb303(86)+abb303(88)
      abb303(86)=NC*abb303(86)
      abb303(66)=abb303(86)+abb303(66)+abb303(91)+2.0_ki*abb303(73)
      abb303(66)=spak1k7*abb303(66)
      abb303(66)=-abb303(70)+abb303(69)+abb303(66)
      abb303(66)=4.0_ki*abb303(66)
      abb303(69)=-spak4k7*abb303(30)
      abb303(70)=-spak1k7*abb303(82)
      abb303(69)=abb303(69)+abb303(70)
      abb303(69)=8.0_ki*abb303(69)
      abb303(70)=c1*abb303(4)
      abb303(73)=abb303(4)-NC
      abb303(73)=abb303(73)*c3
      abb303(73)=abb303(73)-abb303(70)
      abb303(10)=abb303(10)*abb303(73)
      abb303(73)=abb303(10)*spak4k7
      abb303(86)=abb303(29)*abb303(73)
      abb303(10)=abb303(10)*spak1k7
      abb303(88)=abb303(49)*abb303(10)
      abb303(86)=abb303(86)+abb303(88)
      abb303(86)=8.0_ki*abb303(86)
      abb303(10)=spbk3k1*abb303(10)
      abb303(73)=spbk4k3*abb303(73)
      abb303(10)=abb303(10)+abb303(73)
      abb303(73)=16.0_ki*abb303(6)*abb303(10)
      abb303(67)=spak4l5*abb303(67)
      abb303(71)=spak1l5*abb303(71)
      abb303(88)=spak4l6*abb303(60)
      abb303(91)=spak1l6*abb303(65)
      abb303(88)=abb303(91)+abb303(88)
      abb303(88)=abb303(81)*abb303(88)
      abb303(22)=spak4k7*abb303(22)
      abb303(46)=spak1k7*abb303(46)
      abb303(22)=abb303(22)+abb303(46)
      abb303(46)=c3*abb303(4)
      abb303(46)=abb303(70)-abb303(46)
      abb303(70)=-abb303(46)*abb303(16)
      abb303(63)=abb303(63)*c3
      abb303(63)=abb303(70)-abb303(63)
      abb303(22)=abb303(63)*abb303(22)
      abb303(22)=abb303(71)+abb303(67)+abb303(22)+abb303(88)
      abb303(22)=4.0_ki*abb303(22)
      abb303(63)=abb303(28)*spak1l5
      abb303(67)=abb303(97)*spak4l5
      abb303(63)=abb303(63)+abb303(67)
      abb303(67)=spak4k7*spbk4k3
      abb303(70)=spak1k7*spbk3k1
      abb303(67)=-abb303(70)-abb303(67)
      abb303(70)=NC*c3
      abb303(46)=abb303(70)+abb303(46)
      abb303(25)=abb303(67)*abb303(46)*abb303(25)
      abb303(46)=-spbl6k2*abb303(48)
      abb303(67)=abb303(61)*spbl6k2
      abb303(70)=abb303(67)*spbk3k1
      abb303(46)=abb303(70)+abb303(46)
      abb303(70)=abb303(46)*spak1l6
      abb303(71)=-spbl6k2*abb303(75)
      abb303(67)=abb303(67)*spbk4k3
      abb303(67)=abb303(67)+abb303(71)
      abb303(71)=abb303(67)*spak4l6
      abb303(25)=abb303(70)+abb303(71)+abb303(25)
      abb303(70)=-abb303(25)+abb303(63)
      abb303(70)=8.0_ki*abb303(70)
      abb303(71)=abb303(27)*abb303(12)
      abb303(88)=abb303(71)+abb303(103)
      abb303(88)=abb303(88)*NC
      abb303(91)=abb303(31)*abb303(16)
      abb303(102)=abb303(116)*spbk4k3
      abb303(119)=abb303(91)+abb303(102)
      abb303(119)=abb303(119)*c1
      abb303(88)=-abb303(107)-abb303(56)+abb303(88)+abb303(119)
      abb303(119)=spak4k7*abb303(88)
      abb303(27)=abb303(27)*abb303(11)
      abb303(120)=abb303(27)+abb303(106)
      abb303(120)=abb303(120)*NC
      abb303(121)=abb303(50)*abb303(16)
      abb303(116)=abb303(116)*spbk3k1
      abb303(122)=abb303(121)+abb303(116)
      abb303(122)=abb303(122)*c1
      abb303(120)=-abb303(109)-abb303(108)+abb303(120)+abb303(122)
      abb303(122)=spak1k7*abb303(120)
      abb303(123)=-spak2l5*abb303(62)
      abb303(119)=abb303(123)+abb303(119)+abb303(122)
      abb303(119)=spbk7l5*abb303(119)
      abb303(122)=abb303(97)*spak2l5
      abb303(88)=-abb303(88)+abb303(122)
      abb303(88)=spak4l6*abb303(88)
      abb303(123)=abb303(28)*spak2l5
      abb303(120)=-abb303(120)+abb303(123)
      abb303(120)=spak1l6*abb303(120)
      abb303(88)=abb303(120)+abb303(88)
      abb303(88)=spbl6l5*abb303(88)
      abb303(35)=3.0_ki*abb303(35)
      abb303(120)=abb303(37)*abb303(35)
      abb303(39)=abb303(120)+abb303(39)
      abb303(39)=abb303(3)*abb303(39)
      abb303(33)=-3.0_ki*abb303(52)-abb303(33)
      abb303(33)=abb303(3)*abb303(33)
      abb303(33)=-abb303(96)+abb303(33)
      abb303(33)=c1*abb303(33)
      abb303(52)=-abb303(40)*abb303(35)
      abb303(42)=abb303(52)-abb303(42)
      abb303(42)=abb303(3)*abb303(42)
      abb303(52)=-abb303(40)*abb303(98)
      abb303(42)=abb303(52)+abb303(42)
      abb303(42)=NC*abb303(42)
      abb303(19)=-abb303(19)+abb303(42)+abb303(33)+abb303(110)+abb303(39)
      abb303(19)=spak2k4*abb303(19)
      abb303(33)=-abb303(34)*abb303(35)
      abb303(33)=abb303(33)-abb303(53)
      abb303(33)=abb303(3)*abb303(33)
      abb303(36)=3.0_ki*abb303(36)+abb303(51)
      abb303(36)=abb303(3)*abb303(36)
      abb303(36)=abb303(94)+abb303(36)
      abb303(36)=c1*abb303(36)
      abb303(35)=abb303(54)*abb303(35)
      abb303(35)=abb303(35)+abb303(55)
      abb303(35)=abb303(3)*abb303(35)
      abb303(39)=abb303(54)*abb303(98)
      abb303(35)=abb303(39)+abb303(35)
      abb303(35)=NC*abb303(35)
      abb303(33)=abb303(45)+abb303(35)+abb303(36)-abb303(113)+abb303(33)
      abb303(33)=spak1k2*abb303(33)
      abb303(35)=abb303(43)*abb303(40)
      abb303(36)=abb303(3)*spbl5k2
      abb303(23)=abb303(36)*abb303(23)
      abb303(37)=abb303(37)*abb303(3)
      abb303(23)=-abb303(23)+abb303(37)-abb303(35)
      abb303(35)=abb303(23)*abb303(68)
      abb303(37)=abb303(43)*abb303(54)
      abb303(36)=abb303(36)*abb303(47)
      abb303(34)=abb303(34)*abb303(3)
      abb303(34)=-abb303(36)+abb303(34)-abb303(37)
      abb303(36)=abb303(34)*abb303(72)
      abb303(35)=abb303(35)+abb303(36)
      abb303(23)=spak4k7*abb303(23)
      abb303(34)=spak1k7*abb303(34)
      abb303(23)=abb303(23)+abb303(34)
      abb303(23)=abb303(23)*abb303(84)
      abb303(34)=-spak2l5*abb303(77)
      abb303(19)=abb303(34)+abb303(23)+abb303(119)+abb303(19)+abb303(33)+abb303&
      &(88)+2.0_ki*abb303(35)
      abb303(19)=4.0_ki*abb303(19)
      abb303(23)=abb303(76)*spak2k4
      abb303(33)=abb303(111)*spak1k2
      abb303(23)=abb303(23)-abb303(33)
      abb303(33)=8.0_ki*abb303(23)
      abb303(26)=-abb303(95)-abb303(26)
      abb303(26)=c1*abb303(26)
      abb303(34)=-abb303(99)-abb303(115)
      abb303(34)=NC*abb303(34)
      abb303(26)=abb303(34)+abb303(26)+abb303(101)+abb303(117)
      abb303(34)=2.0_ki*abb303(6)
      abb303(26)=abb303(26)*abb303(34)
      abb303(26)=abb303(26)-abb303(97)
      abb303(26)=spak2k4*abb303(26)
      abb303(17)=abb303(100)+abb303(17)
      abb303(17)=c1*abb303(17)
      abb303(35)=abb303(104)+abb303(118)
      abb303(35)=NC*abb303(35)
      abb303(17)=abb303(35)+abb303(17)-abb303(105)-abb303(80)
      abb303(17)=abb303(17)*abb303(34)
      abb303(17)=abb303(17)+abb303(28)
      abb303(17)=spak1k2*abb303(17)
      abb303(15)=-mB*abb303(15)
      abb303(28)=abb303(21)*spbk4k3
      abb303(15)=abb303(15)-abb303(28)
      abb303(15)=abb303(15)*abb303(6)
      abb303(28)=-spak4k7*abb303(15)
      abb303(34)=mB*abb303(44)
      abb303(35)=abb303(21)*spbk3k1
      abb303(34)=abb303(35)+abb303(34)
      abb303(34)=abb303(34)*abb303(6)
      abb303(35)=spak1k7*abb303(34)
      abb303(28)=abb303(28)+abb303(35)
      abb303(28)=spbk7l6*abb303(28)
      abb303(35)=-abb303(68)*abb303(15)
      abb303(36)=abb303(72)*abb303(34)
      abb303(17)=abb303(28)+abb303(36)+abb303(35)+abb303(26)+abb303(17)
      abb303(17)=8.0_ki*abb303(17)
      abb303(23)=4.0_ki*abb303(23)
      abb303(26)=-4.0_ki*abb303(83)
      abb303(28)=8.0_ki*spal6k7
      abb303(35)=abb303(85)*abb303(28)
      abb303(29)=abb303(29)*abb303(21)
      abb303(36)=abb303(78)*mB
      abb303(29)=abb303(29)+abb303(36)
      abb303(36)=8.0_ki*abb303(29)
      abb303(20)=abb303(57)*abb303(20)
      abb303(37)=-spbk4k3*abb303(20)
      abb303(31)=abb303(81)*abb303(31)
      abb303(31)=abb303(37)+abb303(31)
      abb303(31)=c1*abb303(31)
      abb303(37)=-spak2l5*abb303(92)
      abb303(39)=abb303(57)*mB
      abb303(39)=abb303(39)-abb303(81)
      abb303(14)=abb303(14)*abb303(39)
      abb303(40)=abb303(39)*NC
      abb303(12)=-abb303(12)*abb303(40)
      abb303(12)=abb303(37)+abb303(12)+abb303(31)+abb303(14)
      abb303(12)=abb303(12)*abb303(28)
      abb303(14)=abb303(67)*spal6k7
      abb303(31)=-32.0_ki*abb303(14)
      abb303(37)=-abb303(102)+abb303(91)
      abb303(37)=c1*abb303(37)
      abb303(42)=-abb303(71)+abb303(103)
      abb303(42)=NC*abb303(42)
      abb303(37)=abb303(122)+abb303(42)+abb303(37)+abb303(56)-abb303(107)
      abb303(37)=8.0_ki*abb303(37)
      abb303(42)=abb303(61)*spbk4k3
      abb303(42)=abb303(75)-abb303(42)
      abb303(43)=32.0_ki*abb303(42)
      abb303(44)=-abb303(16)*abb303(59)
      abb303(44)=abb303(107)+abb303(44)
      abb303(45)=abb303(28)*spbl6l5
      abb303(44)=abb303(44)*abb303(45)
      abb303(47)=8.0_ki*spbl6l5
      abb303(47)=abb303(47)*abb303(3)
      abb303(51)=-abb303(60)*abb303(47)
      abb303(52)=8.0_ki*spal5k7*abb303(58)
      abb303(53)=8.0_ki*abb303(62)
      abb303(54)=4.0_ki*spal5l6*abb303(58)
      abb303(13)=spak4l6*abb303(13)
      abb303(38)=spak1l6*abb303(38)
      abb303(29)=spak4l5*abb303(29)
      abb303(21)=abb303(49)*abb303(21)
      abb303(49)=abb303(79)*mB
      abb303(21)=abb303(21)+abb303(49)
      abb303(49)=spak1l5*abb303(21)
      abb303(10)=abb303(49)+abb303(29)+abb303(38)+abb303(13)+abb303(10)
      abb303(10)=4.0_ki*abb303(6)*abb303(10)
      abb303(13)=4.0_ki*abb303(62)
      abb303(29)=abb303(28)*abb303(30)
      abb303(15)=-8.0_ki*abb303(15)
      abb303(30)=spak4l5*abb303(92)
      abb303(38)=spak1l5*abb303(32)
      abb303(30)=abb303(30)+abb303(38)
      abb303(30)=abb303(30)*abb303(28)
      abb303(25)=abb303(25)-3.0_ki*abb303(63)
      abb303(25)=4.0_ki*abb303(25)
      abb303(14)=16.0_ki*abb303(14)
      abb303(38)=-16.0_ki*abb303(42)
      abb303(42)=abb303(89)*abb303(28)
      abb303(21)=8.0_ki*abb303(21)
      abb303(20)=-spbk3k1*abb303(20)
      abb303(49)=abb303(81)*abb303(50)
      abb303(20)=abb303(20)+abb303(49)
      abb303(20)=c1*abb303(20)
      abb303(32)=-spak2l5*abb303(32)
      abb303(39)=abb303(41)*abb303(39)
      abb303(11)=-abb303(11)*abb303(40)
      abb303(11)=abb303(32)+abb303(11)+abb303(20)+abb303(39)
      abb303(11)=abb303(11)*abb303(28)
      abb303(20)=abb303(46)*spal6k7
      abb303(32)=-32.0_ki*abb303(20)
      abb303(39)=-abb303(116)+abb303(121)
      abb303(39)=c1*abb303(39)
      abb303(27)=-abb303(27)+abb303(106)
      abb303(27)=NC*abb303(27)
      abb303(27)=abb303(123)+abb303(27)+abb303(39)+abb303(108)-abb303(109)
      abb303(27)=8.0_ki*abb303(27)
      abb303(39)=abb303(61)*spbk3k1
      abb303(39)=abb303(48)-abb303(39)
      abb303(40)=32.0_ki*abb303(39)
      abb303(16)=-abb303(16)*abb303(64)
      abb303(16)=abb303(109)+abb303(16)
      abb303(16)=abb303(16)*abb303(45)
      abb303(41)=-abb303(65)*abb303(47)
      abb303(28)=abb303(28)*abb303(82)
      abb303(34)=8.0_ki*abb303(34)
      abb303(20)=16.0_ki*abb303(20)
      abb303(39)=-16.0_ki*abb303(39)
      R2d303=0.0_ki
      rat2 = rat2 + R2d303
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='303' value='", &
          & R2d303, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd303h7
