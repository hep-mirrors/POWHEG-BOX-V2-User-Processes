module     p0_dbaru_epnebbbarg_abbrevd75h7
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh7
   implicit none
   private
   complex(ki), dimension(132), public :: abb75
   complex(ki), public :: R2d75
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
      abb75(1)=1.0_ki/(-mB**2+es67)
      abb75(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb75(3)=NC**(-1)
      abb75(4)=sqrt2**(-1)
      abb75(5)=spak2l6**(-1)
      abb75(6)=spbk7k2**(-1)
      abb75(7)=sqrt(mB**2)
      abb75(8)=spak2l5**(-1)
      abb75(9)=spbl5k2**(-1)
      abb75(10)=2.0_ki*abb75(3)
      abb75(11)=abb75(10)*spbl5k2
      abb75(12)=NC*spbl5k2
      abb75(11)=abb75(11)-abb75(12)
      abb75(13)=TR*gW
      abb75(13)=abb75(13)**2*i_*CVDU*abb75(4)*abb75(2)
      abb75(14)=abb75(6)*abb75(1)
      abb75(15)=abb75(13)*abb75(14)*c3
      abb75(16)=abb75(15)*abb75(5)
      abb75(17)=mB**2
      abb75(18)=abb75(17)*abb75(16)
      abb75(19)=abb75(11)*abb75(18)
      abb75(20)=abb75(3)**2
      abb75(21)=abb75(20)*c2
      abb75(22)=abb75(14)*abb75(5)
      abb75(23)=abb75(21)*abb75(22)
      abb75(24)=abb75(23)*abb75(17)
      abb75(25)=abb75(13)*spbl5k2
      abb75(26)=abb75(24)*abb75(25)
      abb75(19)=abb75(26)-abb75(19)
      abb75(26)=spbk3k2**2
      abb75(27)=-abb75(26)*abb75(19)
      abb75(28)=abb75(15)*mB
      abb75(29)=abb75(28)*abb75(5)
      abb75(30)=abb75(29)*spbl5k2
      abb75(31)=abb75(10)-NC
      abb75(32)=-abb75(30)*abb75(31)
      abb75(33)=abb75(14)*mB
      abb75(34)=abb75(21)*abb75(33)
      abb75(35)=abb75(13)*abb75(5)
      abb75(36)=abb75(34)*abb75(35)
      abb75(37)=abb75(36)*spbl5k2
      abb75(37)=abb75(32)+abb75(37)
      abb75(38)=abb75(37)*abb75(26)
      abb75(39)=abb75(7)*abb75(38)
      abb75(27)=abb75(39)+abb75(27)
      abb75(39)=spak3k4*spak2k7
      abb75(27)=abb75(27)*abb75(39)
      abb75(40)=abb75(15)*spbk3k2
      abb75(12)=abb75(12)*abb75(40)
      abb75(41)=abb75(15)*abb75(3)
      abb75(42)=2.0_ki*abb75(41)
      abb75(43)=spbl5k2*spbk3k2
      abb75(44)=abb75(42)*abb75(43)
      abb75(45)=abb75(13)*spbk3k2
      abb75(46)=abb75(21)*abb75(45)
      abb75(47)=abb75(46)*abb75(14)
      abb75(48)=abb75(47)*spbl5k2
      abb75(12)=abb75(48)+abb75(12)-abb75(44)
      abb75(44)=spal6k7*spak2k4
      abb75(48)=spbl6k2**2
      abb75(49)=abb75(44)*abb75(48)
      abb75(50)=-abb75(12)*abb75(49)
      abb75(51)=abb75(40)*NC
      abb75(47)=abb75(51)+abb75(47)
      abb75(51)=spbl6k2*spbl5k2
      abb75(52)=abb75(51)*abb75(47)
      abb75(53)=abb75(42)*spbl6k2
      abb75(54)=abb75(53)*abb75(43)
      abb75(52)=abb75(52)-abb75(54)
      abb75(54)=spbl6k3*spal6k7
      abb75(55)=abb75(54)*spak3k4
      abb75(56)=abb75(52)*abb75(55)
      abb75(27)=abb75(56)+abb75(27)+abb75(50)
      abb75(50)=spak1k2*abb75(7)
      abb75(27)=abb75(50)*abb75(27)
      abb75(56)=-spbk3k2*abb75(32)
      abb75(57)=abb75(43)*abb75(36)
      abb75(56)=abb75(56)-abb75(57)
      abb75(58)=spbl5k3*spak3k4
      abb75(59)=abb75(58)*spak1k7
      abb75(60)=abb75(59)*abb75(56)
      abb75(29)=-abb75(29)*abb75(31)
      abb75(29)=abb75(29)+abb75(36)
      abb75(61)=spbk3k2*abb75(29)
      abb75(62)=spak1k7*spak2k4
      abb75(63)=spbl5k2**2
      abb75(64)=abb75(62)*abb75(61)*abb75(63)
      abb75(60)=abb75(60)+abb75(64)
      abb75(64)=es71+es12-es712
      abb75(60)=-abb75(60)*abb75(64)
      abb75(65)=abb75(63)*abb75(29)
      abb75(66)=spak2k4*spak2k7
      abb75(67)=spbl6k2*spbk3k2
      abb75(68)=-abb75(66)*abb75(67)*abb75(65)
      abb75(69)=-abb75(67)*abb75(32)
      abb75(57)=abb75(57)*spbl6k2
      abb75(57)=abb75(69)-abb75(57)
      abb75(69)=abb75(58)*spak2k7
      abb75(70)=-abb75(57)*abb75(69)
      abb75(68)=abb75(68)+abb75(70)
      abb75(68)=spak1l6*abb75(68)
      abb75(60)=abb75(68)+abb75(60)
      abb75(60)=spak2l5*abb75(60)
      abb75(68)=abb75(63)*spbl6k2
      abb75(70)=abb75(47)*abb75(68)
      abb75(71)=abb75(67)*abb75(42)
      abb75(72)=abb75(71)*abb75(63)
      abb75(70)=abb75(72)-abb75(70)
      abb75(70)=abb75(70)*abb75(7)
      abb75(72)=-abb75(66)*abb75(70)
      abb75(52)=abb75(52)*abb75(7)
      abb75(73)=-abb75(69)*abb75(52)
      abb75(72)=abb75(72)+abb75(73)
      abb75(72)=spak1l5*abb75(72)
      abb75(70)=spak2k4*abb75(70)
      abb75(73)=abb75(58)*abb75(52)
      abb75(70)=abb75(70)+abb75(73)
      abb75(70)=spal5k7*spak1k2*abb75(70)
      abb75(27)=abb75(60)+abb75(70)+abb75(72)+abb75(27)
      abb75(27)=8.0_ki*abb75(27)
      abb75(60)=16.0_ki*abb75(39)
      abb75(38)=spak1k2*abb75(38)*abb75(60)
      abb75(70)=abb75(56)*abb75(62)
      abb75(72)=abb75(61)*abb75(59)
      abb75(70)=abb75(70)+abb75(72)
      abb75(70)=-abb75(70)*abb75(64)
      abb75(72)=-abb75(57)*abb75(66)
      abb75(73)=abb75(67)*abb75(29)
      abb75(74)=-abb75(73)*abb75(69)
      abb75(72)=abb75(72)+abb75(74)
      abb75(72)=spak1l6*abb75(72)
      abb75(74)=-abb75(62)*abb75(52)
      abb75(75)=spbl6k2*abb75(47)
      abb75(71)=abb75(75)-abb75(71)
      abb75(71)=abb75(71)*abb75(7)
      abb75(75)=abb75(59)*abb75(71)
      abb75(70)=abb75(72)+abb75(74)+abb75(75)+abb75(70)
      abb75(70)=16.0_ki*abb75(70)
      abb75(72)=abb75(20)*abb75(45)
      abb75(74)=abb75(72)*abb75(14)
      abb75(75)=abb75(8)*spbl6k2
      abb75(76)=abb75(17)*abb75(75)
      abb75(77)=abb75(74)*abb75(76)
      abb75(78)=abb75(17)*abb75(22)
      abb75(79)=spbl5k2*abb75(78)*abb75(72)
      abb75(77)=abb75(77)+abb75(79)
      abb75(77)=abb75(77)*c2
      abb75(80)=abb75(76)*abb75(40)
      abb75(81)=abb75(18)*abb75(43)
      abb75(80)=abb75(80)+abb75(81)
      abb75(80)=abb75(80)*NC
      abb75(82)=abb75(75)*spbk3k2
      abb75(83)=abb75(82)*abb75(17)
      abb75(84)=abb75(83)*abb75(41)
      abb75(85)=abb75(81)*abb75(3)
      abb75(84)=abb75(84)+abb75(85)
      abb75(77)=-abb75(77)-abb75(80)+2.0_ki*abb75(84)
      abb75(80)=2.0_ki*abb75(75)
      abb75(72)=abb75(33)*abb75(80)*abb75(72)
      abb75(20)=abb75(20)*abb75(33)
      abb75(33)=abb75(35)*abb75(20)
      abb75(35)=abb75(33)*abb75(43)
      abb75(35)=abb75(72)-abb75(35)
      abb75(35)=abb75(35)*c2
      abb75(72)=abb75(80)*abb75(28)*spbk3k2
      abb75(80)=abb75(30)*spbk3k2
      abb75(72)=abb75(72)-abb75(80)
      abb75(72)=abb75(72)*NC
      abb75(80)=abb75(80)*abb75(3)
      abb75(10)=abb75(10)*abb75(28)
      abb75(84)=abb75(82)*abb75(10)
      abb75(80)=abb75(80)-abb75(84)
      abb75(35)=2.0_ki*abb75(80)+abb75(35)+abb75(72)
      abb75(72)=abb75(7)*abb75(35)
      abb75(72)=abb75(72)-abb75(77)
      abb75(80)=spak1k4*spak2k7
      abb75(72)=abb75(72)*abb75(80)
      abb75(86)=abb75(28)*NC
      abb75(87)=abb75(82)*abb75(86)
      abb75(88)=abb75(34)*abb75(45)
      abb75(89)=abb75(88)*abb75(75)
      abb75(84)=-abb75(84)+abb75(87)+abb75(89)
      abb75(87)=2.0_ki*abb75(84)
      abb75(89)=abb75(87)*abb75(7)
      abb75(90)=abb75(76)*abb75(47)
      abb75(83)=abb75(83)*abb75(42)
      abb75(83)=abb75(90)-abb75(83)
      abb75(89)=abb75(89)+abb75(83)
      abb75(90)=-abb75(89)*abb75(62)
      abb75(72)=abb75(72)+abb75(90)
      abb75(72)=abb75(7)*abb75(72)
      abb75(90)=abb75(8)*spbk3k2
      abb75(91)=abb75(18)*abb75(90)
      abb75(92)=-abb75(91)*abb75(31)
      abb75(22)=abb75(46)*abb75(22)
      abb75(93)=abb75(22)*abb75(8)
      abb75(94)=abb75(93)*abb75(17)
      abb75(92)=abb75(92)+abb75(94)
      abb75(92)=abb75(92)*abb75(7)
      abb75(95)=mB**3
      abb75(16)=abb75(95)*abb75(16)
      abb75(96)=abb75(16)*abb75(90)
      abb75(97)=abb75(96)*abb75(31)
      abb75(93)=abb75(93)*abb75(95)
      abb75(97)=-abb75(93)+abb75(97)
      abb75(98)=abb75(92)+abb75(97)
      abb75(99)=-abb75(98)*abb75(69)
      abb75(10)=abb75(86)-abb75(10)
      abb75(86)=abb75(10)*abb75(8)
      abb75(100)=abb75(13)*abb75(8)
      abb75(101)=abb75(34)*abb75(100)
      abb75(86)=abb75(86)+abb75(101)
      abb75(101)=-abb75(48)*abb75(86)
      abb75(102)=abb75(44)*spbl5k3
      abb75(103)=-abb75(101)*abb75(102)
      abb75(104)=-abb75(75)*abb75(10)
      abb75(105)=abb75(13)*spbl6k2
      abb75(106)=abb75(105)*abb75(8)
      abb75(107)=abb75(106)*abb75(34)
      abb75(107)=abb75(107)-abb75(104)
      abb75(108)=-abb75(107)*abb75(58)*abb75(54)
      abb75(99)=abb75(108)+abb75(99)+abb75(103)
      abb75(99)=spak1l5*abb75(99)
      abb75(89)=-abb75(89)*abb75(50)
      abb75(103)=abb75(15)*NC
      abb75(108)=abb75(42)-abb75(103)
      abb75(109)=-abb75(51)*abb75(108)
      abb75(110)=abb75(21)*abb75(14)
      abb75(111)=abb75(110)*abb75(25)
      abb75(112)=abb75(111)*spbl6k2
      abb75(109)=abb75(109)+abb75(112)
      abb75(109)=abb75(109)*abb75(7)
      abb75(112)=spak1l5*abb75(109)*spbl5k3
      abb75(89)=abb75(89)+abb75(112)
      abb75(89)=spak4k7*abb75(89)
      abb75(113)=abb75(64)*abb75(37)*spak1k7
      abb75(32)=spbl6k2*abb75(32)
      abb75(36)=abb75(51)*abb75(36)
      abb75(32)=abb75(36)+abb75(32)
      abb75(36)=abb75(32)*spak2k7
      abb75(114)=abb75(36)*spak1l6
      abb75(113)=abb75(113)+abb75(114)
      abb75(114)=spak4l5*spbl5k3*abb75(113)
      abb75(115)=abb75(109)*spak1k4
      abb75(116)=abb75(56)*spak1k2*spak3k4
      abb75(116)=abb75(116)-abb75(115)
      abb75(116)=abb75(116)*abb75(54)
      abb75(117)=-abb75(7)*abb75(83)
      abb75(118)=-abb75(97)*abb75(64)
      abb75(117)=abb75(117)+abb75(118)
      abb75(59)=abb75(59)*abb75(117)
      abb75(117)=abb75(75)*abb75(22)*abb75(95)
      abb75(118)=-abb75(16)*abb75(31)
      abb75(119)=abb75(118)*abb75(82)
      abb75(117)=abb75(117)+abb75(119)
      abb75(119)=spak1l6*abb75(117)*abb75(69)
      abb75(59)=abb75(119)+abb75(59)
      abb75(59)=abb75(9)*abb75(59)
      abb75(57)=-spak1k2*abb75(57)*abb75(44)
      abb75(119)=spal5k7*spbl5k3
      abb75(120)=-abb75(115)*abb75(119)
      abb75(57)=-abb75(114)+abb75(120)+abb75(59)+abb75(89)+abb75(99)+abb75(116)&
      &+abb75(57)+abb75(72)
      abb75(57)=16.0_ki*abb75(57)
      abb75(35)=abb75(35)*abb75(80)
      abb75(59)=spak4k7*spak1k2
      abb75(72)=abb75(59)+abb75(62)
      abb75(89)=abb75(72)*abb75(87)
      abb75(35)=abb75(35)-abb75(89)
      abb75(35)=32.0_ki*abb75(35)
      abb75(89)=-abb75(62)+abb75(80)
      abb75(59)=2.0_ki*abb75(59)
      abb75(89)=-abb75(59)+2.0_ki*abb75(89)
      abb75(89)=abb75(97)*abb75(89)
      abb75(97)=spak1k4*abb75(37)*abb75(54)
      abb75(89)=abb75(97)+abb75(89)
      abb75(89)=32.0_ki*abb75(89)
      abb75(99)=abb75(84)*abb75(7)**2
      abb75(116)=-abb75(98)*abb75(64)
      abb75(116)=abb75(99)+abb75(116)
      abb75(116)=abb75(62)*abb75(116)
      abb75(120)=abb75(56)*abb75(7)
      abb75(77)=-abb75(120)+abb75(77)
      abb75(77)=abb75(7)*abb75(77)*abb75(80)
      abb75(96)=-abb75(96)*abb75(11)
      abb75(91)=abb75(91)*abb75(11)
      abb75(94)=-spbl5k2*abb75(94)
      abb75(91)=abb75(94)+abb75(91)
      abb75(91)=abb75(7)*abb75(91)
      abb75(93)=spbl5k2*abb75(93)
      abb75(91)=abb75(91)+abb75(93)+abb75(96)
      abb75(91)=abb75(91)*abb75(66)
      abb75(93)=spbl5k2*abb75(104)
      abb75(94)=abb75(34)*abb75(25)
      abb75(96)=-abb75(75)*abb75(94)
      abb75(93)=abb75(96)+abb75(93)
      abb75(93)=spak2k4*abb75(93)*abb75(54)
      abb75(91)=abb75(91)+abb75(93)
      abb75(91)=spak1l5*abb75(91)
      abb75(93)=abb75(76)*abb75(22)
      abb75(96)=-abb75(18)*abb75(31)
      abb75(82)=abb75(96)*abb75(82)
      abb75(82)=abb75(93)+abb75(82)
      abb75(82)=abb75(82)*abb75(7)
      abb75(93)=-abb75(82)+abb75(117)
      abb75(93)=spak1l6*abb75(93)*abb75(66)
      abb75(83)=abb75(83)*abb75(50)
      abb75(83)=abb75(83)-abb75(112)
      abb75(83)=spak4k7*abb75(83)
      abb75(104)=abb75(119)+abb75(54)
      abb75(104)=abb75(115)*abb75(104)
      abb75(77)=abb75(114)+abb75(83)+abb75(93)+abb75(91)+abb75(77)+abb75(116)+a&
      &bb75(104)
      abb75(77)=8.0_ki*abb75(77)
      abb75(83)=abb75(84)*abb75(62)
      abb75(91)=abb75(80)*abb75(56)
      abb75(83)=abb75(83)-abb75(91)
      abb75(83)=16.0_ki*abb75(83)
      abb75(91)=abb75(98)*abb75(62)
      abb75(91)=abb75(91)-abb75(97)
      abb75(91)=16.0_ki*abb75(91)
      abb75(93)=-spbl5k2*abb75(108)
      abb75(93)=abb75(93)+abb75(111)
      abb75(97)=abb75(93)*abb75(50)
      abb75(104)=8.0_ki*spak3k4
      abb75(111)=abb75(104)*abb75(26)
      abb75(112)=abb75(111)*abb75(97)
      abb75(12)=abb75(12)*abb75(7)
      abb75(114)=spak2l6*abb75(87)
      abb75(90)=-abb75(90)*abb75(10)
      abb75(115)=abb75(88)*abb75(8)
      abb75(90)=abb75(90)-abb75(115)
      abb75(115)=2.0_ki*abb75(64)
      abb75(116)=-abb75(90)*abb75(115)
      abb75(114)=abb75(114)-abb75(12)+abb75(116)
      abb75(114)=spak1k4*abb75(114)
      abb75(116)=spak1l6*spak2k4
      abb75(117)=-spak4l6*spak1k2
      abb75(116)=abb75(117)-abb75(116)
      abb75(87)=abb75(87)*abb75(116)
      abb75(116)=mB*abb75(1)
      abb75(117)=abb75(8)*c3
      abb75(45)=-abb75(31)*abb75(45)*abb75(117)*abb75(116)
      abb75(46)=abb75(116)*abb75(46)*abb75(8)
      abb75(45)=abb75(46)+abb75(45)
      abb75(46)=-abb75(59)-2.0_ki*abb75(62)
      abb75(46)=abb75(45)*abb75(46)
      abb75(46)=abb75(114)+abb75(46)+abb75(87)
      abb75(46)=16.0_ki*abb75(46)
      abb75(59)=abb75(45)*abb75(62)
      abb75(87)=spak1k4*abb75(12)
      abb75(114)=abb75(84)*spak1l6
      abb75(119)=spak2k4*abb75(114)
      abb75(59)=abb75(119)+abb75(59)+abb75(87)
      abb75(59)=8.0_ki*abb75(59)
      abb75(87)=abb75(43)*spbl6k2
      abb75(119)=abb75(87)*abb75(10)
      abb75(121)=abb75(88)*abb75(51)
      abb75(119)=abb75(121)+abb75(119)
      abb75(52)=abb75(119)-abb75(52)
      abb75(121)=spak2k4*abb75(52)
      abb75(43)=-abb75(43)*abb75(10)
      abb75(122)=-spbl5k2*abb75(88)
      abb75(43)=abb75(12)+abb75(122)+abb75(43)
      abb75(122)=spbl6k3*spak3k4
      abb75(43)=abb75(43)*abb75(122)
      abb75(123)=abb75(39)*spbk7k3
      abb75(124)=-spak2k4*abb75(64)
      abb75(124)=abb75(123)+abb75(124)
      abb75(124)=abb75(56)*abb75(124)
      abb75(43)=abb75(43)+abb75(121)+abb75(124)
      abb75(121)=8.0_ki*spak1k2
      abb75(43)=abb75(43)*abb75(121)
      abb75(124)=-spbl5k2*abb75(10)
      abb75(93)=abb75(93)*abb75(7)
      abb75(124)=-abb75(94)+abb75(124)+abb75(93)
      abb75(125)=spak1k4*abb75(124)*spbl6k3
      abb75(126)=spbk7k3*abb75(37)*abb75(80)
      abb75(125)=abb75(126)-abb75(125)
      abb75(126)=abb75(90)*spbk7l6
      abb75(72)=abb75(80)-abb75(72)
      abb75(72)=abb75(72)*abb75(126)
      abb75(72)=2.0_ki*abb75(72)+abb75(125)
      abb75(72)=16.0_ki*abb75(72)
      abb75(80)=abb75(98)*spak1k2
      abb75(127)=-spak2k4*abb75(80)
      abb75(62)=abb75(62)*abb75(126)
      abb75(62)=abb75(62)+abb75(127)-abb75(125)
      abb75(62)=8.0_ki*abb75(62)
      abb75(125)=abb75(64)*abb75(29)
      abb75(127)=abb75(110)*abb75(105)
      abb75(53)=abb75(127)-abb75(53)
      abb75(127)=abb75(103)*spbl6k2
      abb75(127)=abb75(127)+abb75(53)
      abb75(127)=abb75(127)*abb75(7)
      abb75(125)=abb75(125)-abb75(127)
      abb75(128)=spak1k7*spak3k4
      abb75(129)=-abb75(128)*abb75(125)
      abb75(130)=spbl6k2*abb75(29)
      abb75(131)=abb75(39)*spak1l6
      abb75(132)=-abb75(130)*abb75(131)
      abb75(129)=abb75(132)+abb75(129)
      abb75(129)=8.0_ki*abb75(129)*spbl5k3**2
      abb75(65)=abb75(65)*abb75(64)
      abb75(132)=abb75(68)*abb75(10)
      abb75(53)=abb75(53)*abb75(63)
      abb75(103)=abb75(68)*abb75(103)
      abb75(53)=abb75(53)+abb75(103)
      abb75(103)=-abb75(7)*abb75(53)
      abb75(105)=abb75(34)*abb75(105)
      abb75(63)=abb75(63)*abb75(105)
      abb75(63)=abb75(65)+abb75(103)+abb75(63)+abb75(132)
      abb75(63)=spak1l5*abb75(63)
      abb75(68)=-spal5l6*spak1k2*abb75(68)*abb75(29)
      abb75(63)=abb75(68)+abb75(63)
      abb75(63)=spak2k7*abb75(63)
      abb75(65)=-spak1k2*abb75(65)
      abb75(50)=abb75(53)*abb75(50)
      abb75(50)=abb75(50)+abb75(65)
      abb75(50)=spal5k7*abb75(50)
      abb75(53)=spal6k7*abb75(48)*abb75(97)
      abb75(50)=abb75(50)+abb75(53)+abb75(63)
      abb75(50)=8.0_ki*abb75(50)
      abb75(53)=spak1k7*abb75(109)
      abb75(53)=abb75(53)-abb75(113)
      abb75(53)=16.0_ki*abb75(53)
      abb75(63)=-abb75(8)*abb75(96)
      abb75(65)=abb75(23)*abb75(100)
      abb75(68)=abb75(65)*abb75(17)
      abb75(63)=abb75(63)-abb75(68)
      abb75(63)=abb75(63)*abb75(7)
      abb75(97)=-abb75(8)*abb75(118)
      abb75(65)=abb75(65)*abb75(95)
      abb75(63)=abb75(63)-abb75(97)+abb75(65)
      abb75(97)=-abb75(63)*abb75(64)
      abb75(100)=abb75(17)*abb75(106)*abb75(110)
      abb75(76)=abb75(108)*abb75(76)
      abb75(76)=abb75(100)-abb75(76)
      abb75(100)=-abb75(7)*abb75(107)
      abb75(100)=abb75(100)+abb75(76)
      abb75(100)=abb75(7)*abb75(100)
      abb75(97)=abb75(100)+abb75(97)
      abb75(97)=spak1k7*abb75(97)
      abb75(11)=abb75(16)*abb75(11)
      abb75(16)=abb75(7)*abb75(19)
      abb75(19)=abb75(23)*abb75(95)
      abb75(23)=-abb75(25)*abb75(19)
      abb75(11)=abb75(16)+abb75(23)+abb75(11)
      abb75(11)=spak2k7*abb75(8)*abb75(11)
      abb75(16)=spbl6l5*spal6k7
      abb75(23)=abb75(107)*abb75(16)
      abb75(11)=abb75(23)+abb75(11)
      abb75(11)=spak1l5*abb75(11)
      abb75(19)=abb75(19)*abb75(106)
      abb75(23)=abb75(118)*abb75(75)
      abb75(19)=abb75(19)+abb75(23)
      abb75(23)=abb75(75)*abb75(96)
      abb75(95)=abb75(106)*abb75(24)
      abb75(23)=abb75(95)+abb75(23)
      abb75(23)=abb75(7)*abb75(23)
      abb75(23)=abb75(23)-abb75(19)
      abb75(23)=spak1l6*spak2k7*abb75(23)
      abb75(95)=-spal6k7*spak1k2*abb75(32)
      abb75(11)=abb75(23)+abb75(95)+abb75(97)+abb75(11)
      abb75(11)=16.0_ki*abb75(11)
      abb75(23)=32.0_ki*spak1k7
      abb75(95)=abb75(23)*abb75(107)
      abb75(23)=abb75(63)*abb75(23)
      abb75(97)=abb75(117)*abb75(31)
      abb75(100)=-abb75(8)*abb75(21)
      abb75(97)=abb75(100)+abb75(97)
      abb75(97)=spak1k7*abb75(97)*abb75(13)*abb75(116)
      abb75(100)=-spak1l6*abb75(107)
      abb75(97)=abb75(97)+abb75(100)
      abb75(97)=16.0_ki*abb75(97)
      abb75(100)=abb75(37)*abb75(64)
      abb75(100)=abb75(100)-abb75(109)
      abb75(103)=abb75(10)*abb75(51)
      abb75(94)=abb75(94)*spbl6k2
      abb75(94)=abb75(94)+abb75(103)
      abb75(103)=-abb75(94)-abb75(100)
      abb75(103)=abb75(103)*abb75(121)
      abb75(63)=-spak1k2*abb75(63)
      abb75(86)=spbk7l6*spak1k7*abb75(86)
      abb75(63)=abb75(63)+abb75(86)
      abb75(63)=16.0_ki*abb75(63)
      abb75(86)=abb75(26)*abb75(8)
      abb75(113)=-abb75(86)*abb75(118)
      abb75(65)=abb75(65)*abb75(26)
      abb75(65)=abb75(113)-abb75(65)
      abb75(86)=-abb75(86)*abb75(96)
      abb75(68)=-abb75(26)*abb75(68)
      abb75(68)=abb75(68)+abb75(86)
      abb75(68)=abb75(7)*abb75(68)
      abb75(68)=abb75(68)-abb75(65)
      abb75(68)=abb75(68)*abb75(39)
      abb75(86)=-abb75(84)*abb75(55)
      abb75(90)=-abb75(90)*abb75(49)
      abb75(68)=abb75(86)+abb75(68)+abb75(90)
      abb75(68)=spak1l5*abb75(68)
      abb75(76)=-abb75(7)*abb75(26)*abb75(76)
      abb75(65)=-abb75(65)*abb75(64)
      abb75(65)=abb75(76)+abb75(65)
      abb75(65)=abb75(128)*abb75(65)
      abb75(19)=abb75(131)*abb75(26)*abb75(19)
      abb75(19)=abb75(19)+abb75(65)
      abb75(19)=abb75(9)*abb75(19)
      abb75(19)=abb75(68)+abb75(19)
      abb75(19)=8.0_ki*abb75(19)
      abb75(65)=8.0_ki*spal6k7
      abb75(68)=spak1l5*abb75(101)*abb75(65)
      abb75(76)=-abb75(92)*abb75(64)
      abb75(76)=abb75(99)+abb75(76)
      abb75(76)=abb75(128)*abb75(76)
      abb75(82)=-abb75(131)*abb75(82)
      abb75(76)=abb75(82)+abb75(76)
      abb75(76)=8.0_ki*abb75(76)
      abb75(82)=16.0_ki*abb75(128)
      abb75(86)=abb75(82)*abb75(84)
      abb75(82)=abb75(98)*abb75(82)
      abb75(45)=abb75(45)*abb75(128)
      abb75(90)=spak3k4*abb75(114)
      abb75(45)=abb75(45)+abb75(90)
      abb75(45)=8.0_ki*abb75(45)
      abb75(80)=-spak3k4*abb75(80)
      abb75(90)=abb75(128)*abb75(126)
      abb75(80)=abb75(80)+abb75(90)
      abb75(80)=8.0_ki*abb75(80)
      abb75(90)=16.0_ki*spal6k7
      abb75(92)=-abb75(107)*abb75(90)
      abb75(24)=-abb75(13)*abb75(24)
      abb75(24)=abb75(24)-abb75(96)
      abb75(24)=abb75(26)*abb75(24)
      abb75(26)=abb75(29)*abb75(26)
      abb75(98)=abb75(7)*abb75(26)
      abb75(24)=abb75(98)+abb75(24)
      abb75(24)=abb75(24)*abb75(39)
      abb75(42)=abb75(42)*spbk3k2
      abb75(42)=abb75(42)-abb75(47)
      abb75(47)=abb75(42)*abb75(49)
      abb75(24)=abb75(24)+abb75(47)
      abb75(24)=abb75(7)*abb75(24)
      abb75(47)=abb75(55)*abb75(71)
      abb75(24)=abb75(47)+abb75(24)
      abb75(24)=8.0_ki*abb75(24)
      abb75(26)=abb75(26)*abb75(60)
      abb75(47)=abb75(73)*abb75(44)
      abb75(49)=-abb75(61)*abb75(55)
      abb75(47)=abb75(47)+abb75(49)
      abb75(47)=16.0_ki*abb75(47)
      abb75(49)=abb75(110)*abb75(13)
      abb75(49)=abb75(49)-abb75(108)
      abb75(60)=abb75(49)*abb75(7)
      abb75(98)=abb75(111)*abb75(60)
      abb75(67)=abb75(67)*abb75(10)
      abb75(99)=spbl6k2*abb75(88)
      abb75(67)=-abb75(71)+abb75(99)+abb75(67)
      abb75(67)=spak2k4*abb75(67)
      abb75(42)=abb75(42)*abb75(7)
      abb75(99)=-spbk3k2*abb75(10)
      abb75(88)=-abb75(42)-abb75(88)+abb75(99)
      abb75(88)=abb75(88)*abb75(122)
      abb75(99)=abb75(64)*abb75(61)
      abb75(108)=spak2k4*abb75(99)
      abb75(110)=-abb75(61)*abb75(123)
      abb75(67)=abb75(110)+abb75(88)+abb75(67)+abb75(108)
      abb75(67)=8.0_ki*abb75(67)
      abb75(48)=abb75(49)*abb75(48)
      abb75(49)=abb75(7)*abb75(48)*abb75(65)
      abb75(88)=-abb75(130)*abb75(90)
      abb75(90)=abb75(10)*spbl6k2
      abb75(90)=abb75(90)+abb75(105)
      abb75(105)=-abb75(29)*abb75(115)
      abb75(105)=2.0_ki*abb75(127)+abb75(105)-abb75(90)
      abb75(105)=8.0_ki*abb75(105)
      abb75(110)=8.0_ki*abb75(130)
      abb75(111)=abb75(110)*spak2k7
      abb75(113)=abb75(56)*abb75(64)
      abb75(52)=-abb75(52)+abb75(113)
      abb75(52)=8.0_ki*abb75(39)*abb75(52)
      abb75(100)=abb75(100)*spak4k7
      abb75(36)=abb75(36)*spak4l6
      abb75(36)=abb75(100)+abb75(36)
      abb75(55)=abb75(107)*abb75(55)
      abb75(55)=abb75(55)+abb75(36)
      abb75(55)=16.0_ki*abb75(55)
      abb75(100)=-abb75(101)*abb75(44)
      abb75(36)=abb75(100)-abb75(36)
      abb75(36)=8.0_ki*abb75(36)
      abb75(99)=-abb75(71)+abb75(99)
      abb75(99)=abb75(99)*abb75(104)
      abb75(100)=abb75(109)*spak2k4
      abb75(101)=abb75(127)*abb75(58)
      abb75(100)=abb75(100)+abb75(101)
      abb75(101)=abb75(37)*spak2k4
      abb75(104)=abb75(29)*abb75(58)
      abb75(101)=abb75(101)+abb75(104)
      abb75(101)=abb75(101)*abb75(64)
      abb75(101)=abb75(101)-abb75(100)
      abb75(101)=8.0_ki*abb75(101)
      abb75(73)=8.0_ki*abb75(73)
      abb75(39)=abb75(39)*abb75(73)
      abb75(32)=abb75(32)*abb75(66)
      abb75(109)=abb75(130)*abb75(69)
      abb75(32)=abb75(32)+abb75(109)
      abb75(32)=8.0_ki*abb75(32)
      abb75(109)=abb75(65)*abb75(84)*spak3k4
      abb75(87)=abb75(41)*abb75(87)
      abb75(85)=abb75(85)+abb75(87)
      abb75(74)=-abb75(51)*abb75(74)
      abb75(74)=-abb75(79)+abb75(74)
      abb75(74)=c2*abb75(74)
      abb75(40)=-abb75(40)*abb75(51)
      abb75(40)=-abb75(81)+abb75(40)
      abb75(40)=NC*abb75(40)
      abb75(40)=-abb75(120)+abb75(40)+2.0_ki*abb75(85)+abb75(74)
      abb75(40)=abb75(7)*abb75(40)
      abb75(40)=abb75(40)+abb75(119)
      abb75(40)=abb75(40)*abb75(66)
      abb75(74)=abb75(7)*abb75(61)
      abb75(79)=-spbk3k2*abb75(96)
      abb75(17)=-abb75(17)*abb75(22)
      abb75(17)=abb75(74)+abb75(17)+abb75(79)
      abb75(17)=abb75(17)*abb75(69)
      abb75(22)=-abb75(48)*abb75(102)
      abb75(17)=abb75(22)+abb75(17)
      abb75(17)=abb75(7)*abb75(17)
      abb75(22)=abb75(100)*abb75(54)
      abb75(48)=abb75(66)*abb75(56)
      abb75(56)=-abb75(48)*abb75(64)
      abb75(17)=abb75(22)+abb75(40)+abb75(56)+abb75(17)
      abb75(17)=8.0_ki*abb75(17)
      abb75(22)=abb75(61)*abb75(69)
      abb75(22)=abb75(22)-abb75(48)
      abb75(22)=16.0_ki*abb75(22)
      abb75(28)=abb75(28)*abb75(75)
      abb75(28)=abb75(28)+abb75(30)
      abb75(28)=abb75(28)*abb75(31)
      abb75(30)=-spbl5k2*abb75(33)
      abb75(20)=-abb75(106)*abb75(20)
      abb75(20)=abb75(30)+abb75(20)
      abb75(20)=c2*abb75(20)
      abb75(20)=abb75(20)+abb75(28)
      abb75(20)=spak2k4*abb75(20)
      abb75(20)=abb75(20)-abb75(104)
      abb75(20)=abb75(20)*abb75(54)
      abb75(28)=abb75(130)*abb75(102)
      abb75(20)=abb75(28)+abb75(20)
      abb75(20)=16.0_ki*abb75(20)
      abb75(12)=spak2k4*abb75(12)
      abb75(28)=-abb75(58)*abb75(42)
      abb75(12)=abb75(12)+abb75(28)
      abb75(12)=8.0_ki*abb75(12)
      abb75(28)=spak2k4*abb75(71)
      abb75(28)=abb75(28)-abb75(108)
      abb75(28)=8.0_ki*abb75(28)
      abb75(30)=spak2k4*abb75(124)
      abb75(13)=abb75(34)*abb75(13)
      abb75(10)=abb75(10)+abb75(13)-abb75(60)
      abb75(13)=-abb75(10)*abb75(58)
      abb75(13)=abb75(30)+abb75(13)
      abb75(13)=spbl6k3*abb75(13)
      abb75(30)=-abb75(37)*abb75(66)
      abb75(31)=-abb75(29)*abb75(69)
      abb75(30)=abb75(30)+abb75(31)
      abb75(30)=spbk7k3*abb75(30)
      abb75(31)=spbl5k3*spak2k4*abb75(90)
      abb75(13)=abb75(30)+abb75(31)+abb75(13)
      abb75(13)=8.0_ki*abb75(13)
      abb75(30)=-abb75(66)*abb75(73)
      abb75(31)=-spbl5k3*abb75(66)*abb75(110)
      abb75(18)=abb75(18)*spbl5k2
      abb75(33)=-abb75(3)*abb75(18)
      abb75(34)=-abb75(41)*abb75(51)
      abb75(33)=abb75(33)+abb75(34)
      abb75(14)=spbl6k2*abb75(14)
      abb75(14)=abb75(78)+abb75(14)
      abb75(14)=abb75(25)*abb75(14)*abb75(21)
      abb75(15)=abb75(15)*abb75(51)
      abb75(15)=abb75(18)+abb75(15)
      abb75(15)=NC*abb75(15)
      abb75(18)=-abb75(7)*abb75(37)
      abb75(14)=abb75(18)+abb75(15)+2.0_ki*abb75(33)+abb75(14)
      abb75(14)=abb75(7)*abb75(14)
      abb75(14)=abb75(14)-abb75(94)
      abb75(14)=spak2k7*abb75(14)
      abb75(15)=abb75(37)*spak2k7
      abb75(18)=-abb75(15)*abb75(64)
      abb75(21)=-abb75(127)*abb75(16)
      abb75(14)=abb75(21)+abb75(14)+abb75(18)
      abb75(14)=8.0_ki*abb75(14)
      abb75(15)=16.0_ki*abb75(15)
      abb75(16)=16.0_ki*abb75(29)*abb75(16)
      abb75(18)=-8.0_ki*abb75(93)
      abb75(21)=8.0_ki*abb75(125)
      abb75(10)=spbl6l5*abb75(10)
      abb75(25)=spbk7l5*spak2k7*abb75(29)
      abb75(10)=abb75(10)+abb75(25)
      abb75(10)=8.0_ki*abb75(10)
      abb75(25)=-8.0_ki*abb75(84)*abb75(44)
      abb75(29)=abb75(107)*abb75(65)
      R2d75=0.0_ki
      rat2 = rat2 + R2d75
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='75' value='", &
          & R2d75, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd75h7
