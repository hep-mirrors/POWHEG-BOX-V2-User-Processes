module     p0_dbaru_epnebbbarg_abbrevd300h3
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(140), public :: abb300
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
      abb300(5)=spak2l6**(-1)
      abb300(6)=spak2k7**(-1)
      abb300(7)=spbl6k2**(-1)
      abb300(8)=spak2l5**(-1)
      abb300(9)=spbl5k2**(-1)
      abb300(10)=c2*abb300(3)**2
      abb300(11)=abb300(10)*abb300(6)
      abb300(12)=TR*gW
      abb300(12)=abb300(12)**2*i_*CVDU*abb300(4)*abb300(1)
      abb300(13)=abb300(12)*mB
      abb300(14)=abb300(11)*abb300(13)
      abb300(15)=abb300(12)*abb300(6)*abb300(3)
      abb300(16)=abb300(15)*mB
      abb300(17)=abb300(16)*c3
      abb300(16)=abb300(16)*c1
      abb300(18)=-abb300(14)+abb300(17)+abb300(16)
      abb300(19)=spak1k2*abb300(5)
      abb300(20)=abb300(19)*abb300(18)
      abb300(21)=abb300(20)*spbl5k2
      abb300(22)=spak1k4*spbl5k3
      abb300(23)=abb300(22)*spbk7k1
      abb300(24)=spbk7l6*spbl5k3
      abb300(25)=abb300(24)*spak4l6
      abb300(26)=abb300(23)+abb300(25)
      abb300(26)=abb300(21)*abb300(26)
      abb300(27)=abb300(12)*spak1k2
      abb300(28)=abb300(11)*abb300(27)
      abb300(29)=abb300(15)*spak1k2
      abb300(30)=abb300(29)*c1
      abb300(31)=abb300(29)*c3
      abb300(30)=-abb300(28)+abb300(30)+abb300(31)
      abb300(32)=abb300(5)**2
      abb300(33)=mB**3
      abb300(34)=abb300(33)*spak2k4
      abb300(35)=abb300(32)*abb300(34)
      abb300(36)=-abb300(35)*abb300(30)
      abb300(37)=spbk7k2*spbl5k3
      abb300(38)=abb300(37)*abb300(7)
      abb300(39)=abb300(36)*abb300(38)
      abb300(40)=abb300(39)*spbl5k2
      abb300(26)=abb300(40)+abb300(26)
      abb300(40)=abb300(26)*spak2l5
      abb300(41)=abb300(29)*abb300(5)
      abb300(42)=abb300(41)*c1
      abb300(43)=abb300(41)*c3
      abb300(44)=abb300(42)+abb300(43)
      abb300(44)=abb300(34)*abb300(44)
      abb300(45)=abb300(33)*abb300(5)
      abb300(46)=abb300(45)*spak2k4
      abb300(47)=abb300(46)*abb300(28)
      abb300(44)=-abb300(47)+abb300(44)
      abb300(44)=abb300(44)*abb300(37)
      abb300(18)=spak1k2*abb300(18)
      abb300(47)=abb300(18)*spbk7k2
      abb300(48)=abb300(22)*spbl6k1
      abb300(49)=abb300(48)*abb300(47)
      abb300(50)=spak4k7*spbk7l6
      abb300(51)=abb300(50)*abb300(37)
      abb300(52)=abb300(51)*abb300(18)
      abb300(40)=abb300(40)-abb300(44)+abb300(49)-abb300(52)
      abb300(44)=abb300(2)**2
      abb300(49)=abb300(44)*abb300(40)
      abb300(52)=mB**4
      abb300(53)=abb300(30)*abb300(52)
      abb300(54)=abb300(2)*abb300(38)*spak2k4*abb300(32)*abb300(53)
      abb300(55)=mB**2
      abb300(56)=abb300(28)*abb300(55)
      abb300(57)=abb300(56)*abb300(5)
      abb300(58)=abb300(41)*abb300(55)
      abb300(59)=abb300(58)*c3
      abb300(57)=abb300(57)-abb300(59)
      abb300(60)=abb300(58)*c1
      abb300(61)=-abb300(60)+abb300(57)
      abb300(62)=abb300(61)*abb300(2)
      abb300(63)=abb300(62)*abb300(25)
      abb300(54)=abb300(54)+abb300(63)
      abb300(63)=es712-es71
      abb300(64)=-es12+abb300(63)
      abb300(54)=abb300(54)*abb300(64)
      abb300(65)=abb300(64)*abb300(62)
      abb300(23)=abb300(65)*abb300(23)
      abb300(23)=abb300(23)+abb300(54)+abb300(49)
      abb300(23)=8.0_ki*abb300(23)
      abb300(49)=-16.0_ki*abb300(40)
      abb300(54)=spak2k4*abb300(8)
      abb300(18)=-abb300(54)*abb300(18)
      abb300(66)=spbl6k3*spbk7k2
      abb300(67)=abb300(18)*abb300(66)
      abb300(68)=-spak2k4*abb300(20)
      abb300(69)=spbk7k3*spbl5k2
      abb300(70)=abb300(68)*abb300(69)
      abb300(67)=abb300(67)+abb300(70)
      abb300(70)=abb300(67)*abb300(44)
      abb300(59)=abb300(60)+abb300(59)
      abb300(59)=-abb300(54)*abb300(59)
      abb300(60)=abb300(54)*abb300(5)
      abb300(71)=abb300(56)*abb300(60)
      abb300(59)=abb300(71)+abb300(59)
      abb300(71)=spbk7k3*abb300(2)
      abb300(72)=abb300(64)*abb300(59)*abb300(71)
      abb300(70)=abb300(72)-abb300(70)
      abb300(72)=-16.0_ki*abb300(70)
      abb300(73)=-32.0_ki*abb300(67)
      abb300(25)=abb300(25)*abb300(20)
      abb300(74)=abb300(20)*spbk7k1
      abb300(75)=abb300(74)*abb300(22)
      abb300(25)=abb300(39)+abb300(25)+abb300(75)
      abb300(39)=abb300(45)*abb300(54)
      abb300(75)=abb300(39)*abb300(28)
      abb300(76)=abb300(33)*abb300(54)
      abb300(77)=abb300(76)*abb300(43)
      abb300(42)=abb300(54)*abb300(42)
      abb300(78)=abb300(42)*abb300(33)
      abb300(75)=-abb300(78)+abb300(75)-abb300(77)
      abb300(77)=abb300(75)*spbk7k3
      abb300(14)=-abb300(16)+abb300(14)-abb300(17)
      abb300(16)=-abb300(14)*abb300(8)
      abb300(17)=spak1k2*abb300(16)
      abb300(78)=abb300(17)*spbk7k3
      abb300(79)=abb300(78)*abb300(50)
      abb300(80)=spak4l5*spbl6k3
      abb300(81)=abb300(80)*abb300(17)
      abb300(82)=abb300(81)*spbk7l5
      abb300(83)=abb300(78)*spak1k4
      abb300(84)=abb300(83)*spbl6k1
      abb300(79)=-abb300(77)-abb300(25)-abb300(84)+abb300(79)-abb300(82)
      abb300(82)=abb300(44)*abb300(79)
      abb300(84)=abb300(32)*abb300(54)
      abb300(53)=abb300(84)*abb300(53)
      abb300(85)=abb300(64)*abb300(7)
      abb300(86)=-abb300(53)*abb300(71)*abb300(85)
      abb300(82)=abb300(82)+abb300(86)
      abb300(82)=16.0_ki*abb300(82)
      abb300(86)=-32.0_ki*abb300(79)
      abb300(87)=abb300(14)*abb300(22)
      abb300(88)=abb300(64)*spbk7l6
      abb300(89)=16.0_ki*abb300(87)*abb300(88)
      abb300(90)=abb300(10)*abb300(13)
      abb300(13)=abb300(13)*abb300(3)
      abb300(91)=abb300(13)*c3
      abb300(90)=abb300(91)-abb300(90)
      abb300(91)=abb300(8)*abb300(90)
      abb300(92)=c1*abb300(8)
      abb300(93)=abb300(13)*abb300(92)
      abb300(91)=abb300(93)+abb300(91)
      abb300(93)=abb300(91)*spbk7l6
      abb300(94)=32.0_ki*spak1k4
      abb300(94)=-spbk7k3*abb300(93)*abb300(94)
      abb300(40)=-abb300(40)+abb300(70)
      abb300(40)=8.0_ki*abb300(40)
      abb300(70)=16.0_ki*abb300(67)
      abb300(79)=-16.0_ki*abb300(79)
      abb300(67)=8.0_ki*abb300(67)
      abb300(95)=abb300(30)*abb300(9)
      abb300(96)=abb300(8)**2
      abb300(97)=abb300(96)*abb300(34)
      abb300(98)=abb300(97)*abb300(95)
      abb300(18)=abb300(98)+abb300(18)
      abb300(18)=spbk7k2*spbk7k3*abb300(18)
      abb300(98)=abb300(7)*spbk7k2
      abb300(77)=-abb300(98)*abb300(77)
      abb300(99)=spbk7l5*spak4l5
      abb300(100)=spak4l6*spbk7l6
      abb300(101)=abb300(99)+abb300(100)
      abb300(78)=-abb300(78)*abb300(101)
      abb300(83)=-spbk7k1*abb300(83)
      abb300(18)=abb300(83)+abb300(77)+abb300(78)+abb300(18)
      abb300(18)=16.0_ki*abb300(18)
      abb300(77)=c1*abb300(55)
      abb300(78)=abb300(55)*c3
      abb300(77)=abb300(77)+abb300(78)
      abb300(83)=abb300(27)*abb300(3)
      abb300(77)=abb300(77)*abb300(83)*abb300(60)
      abb300(102)=abb300(55)*abb300(27)
      abb300(103)=abb300(10)*abb300(102)*abb300(60)
      abb300(77)=-abb300(103)+abb300(77)
      abb300(77)=abb300(77)*abb300(71)
      abb300(103)=8.0_ki*abb300(77)
      abb300(104)=spbk7l6*abb300(103)
      abb300(103)=spbk7l5*abb300(103)
      abb300(105)=spbk7l5*abb300(21)*spak2l5
      abb300(47)=abb300(47)*spbl6l5
      abb300(47)=abb300(105)+abb300(47)
      abb300(105)=abb300(44)*abb300(47)
      abb300(65)=spbk7l5*abb300(65)
      abb300(65)=abb300(65)+abb300(105)
      abb300(65)=8.0_ki*abb300(65)
      abb300(105)=-16.0_ki*abb300(47)
      abb300(106)=abb300(20)*spbk7l5
      abb300(107)=abb300(17)*spbk7l6
      abb300(108)=abb300(106)-abb300(107)
      abb300(109)=16.0_ki*abb300(108)
      abb300(110)=-abb300(44)*abb300(109)
      abb300(108)=32.0_ki*abb300(108)
      abb300(47)=-8.0_ki*abb300(47)
      abb300(111)=abb300(27)*abb300(5)
      abb300(112)=abb300(111)*abb300(3)
      abb300(113)=-abb300(78)*abb300(112)
      abb300(111)=abb300(111)*abb300(55)
      abb300(114)=abb300(10)*abb300(111)
      abb300(115)=abb300(111)*abb300(3)
      abb300(116)=-c1*abb300(115)
      abb300(113)=abb300(116)+abb300(113)+abb300(114)
      abb300(113)=spbk7l5*abb300(113)
      abb300(114)=abb300(55)*abb300(92)
      abb300(78)=abb300(78)*abb300(8)
      abb300(116)=abb300(78)+abb300(114)
      abb300(117)=-abb300(83)*abb300(116)
      abb300(118)=abb300(10)*abb300(8)
      abb300(102)=abb300(118)*abb300(102)
      abb300(102)=abb300(102)+abb300(117)
      abb300(102)=spbk7l6*abb300(102)
      abb300(116)=-abb300(116)*abb300(3)
      abb300(117)=abb300(55)*abb300(118)
      abb300(116)=abb300(117)+abb300(116)
      abb300(117)=spak1k2**2
      abb300(119)=abb300(12)*abb300(5)
      abb300(116)=spbk7k1*abb300(117)*abb300(119)*abb300(116)
      abb300(102)=abb300(113)+abb300(102)+abb300(116)
      abb300(102)=8.0_ki*abb300(71)*abb300(102)
      abb300(111)=abb300(111)*abb300(118)
      abb300(78)=abb300(78)*abb300(112)
      abb300(112)=abb300(115)*abb300(92)
      abb300(78)=-abb300(112)+abb300(111)-abb300(78)
      abb300(111)=abb300(78)*abb300(2)
      abb300(27)=abb300(27)*abb300(45)*abb300(118)
      abb300(112)=abb300(45)*abb300(92)
      abb300(45)=abb300(45)*abb300(8)
      abb300(113)=abb300(45)*c3
      abb300(112)=abb300(112)+abb300(113)
      abb300(83)=abb300(112)*abb300(83)
      abb300(13)=abb300(13)*c1
      abb300(13)=abb300(13)+abb300(90)
      abb300(13)=abb300(13)*spbl5k2
      abb300(19)=abb300(19)*abb300(13)
      abb300(19)=abb300(19)-abb300(83)+abb300(27)-abb300(111)
      abb300(27)=-spbk7k1*spak1k4
      abb300(27)=abb300(27)-abb300(100)
      abb300(19)=abb300(27)*abb300(19)
      abb300(27)=spbl5k2*abb300(2)
      abb300(61)=abb300(61)*abb300(27)
      abb300(83)=-spak2k4*abb300(61)
      abb300(19)=abb300(83)+abb300(19)
      abb300(19)=spbk3k2*abb300(19)
      abb300(83)=-abb300(54)*abb300(43)
      abb300(60)=abb300(28)*abb300(60)
      abb300(42)=-abb300(42)+abb300(83)+abb300(60)
      abb300(42)=abb300(52)*abb300(42)
      abb300(52)=-abb300(2)*abb300(75)
      abb300(42)=abb300(52)+abb300(42)
      abb300(52)=spbk3k2*abb300(2)
      abb300(42)=abb300(42)*abb300(52)
      abb300(53)=abb300(53)*abb300(2)
      abb300(60)=-abb300(30)*abb300(84)*mB**5
      abb300(53)=abb300(53)+abb300(60)
      abb300(53)=abb300(53)*spbk3k2
      abb300(83)=spbk3k2*abb300(36)*spbl5k2
      abb300(53)=abb300(53)-abb300(83)
      abb300(53)=abb300(53)*abb300(7)
      abb300(63)=-abb300(63)*abb300(53)
      abb300(56)=abb300(56)*abb300(8)
      abb300(29)=abb300(114)*abb300(29)
      abb300(84)=abb300(55)*abb300(8)
      abb300(31)=abb300(84)*abb300(31)
      abb300(29)=-abb300(31)+abb300(56)-abb300(29)
      abb300(31)=abb300(17)*abb300(2)
      abb300(31)=abb300(31)+abb300(29)
      abb300(56)=abb300(31)*abb300(52)
      abb300(30)=abb300(30)*abb300(27)
      abb300(90)=abb300(30)*spbk3k2
      abb300(56)=abb300(90)+abb300(56)
      abb300(90)=spbk7l6*abb300(56)
      abb300(111)=-abb300(37)*abb300(62)
      abb300(90)=abb300(90)+abb300(111)
      abb300(90)=spak4k7*abb300(90)
      abb300(111)=c1+c3
      abb300(15)=abb300(15)*abb300(111)
      abb300(112)=abb300(15)*abb300(55)*abb300(5)
      abb300(113)=abb300(11)*abb300(119)
      abb300(114)=abb300(113)*abb300(55)
      abb300(114)=abb300(112)-abb300(114)
      abb300(115)=-abb300(2)*abb300(114)*abb300(22)
      abb300(53)=abb300(115)+abb300(53)
      abb300(53)=es12*abb300(53)
      abb300(71)=abb300(78)*abb300(71)
      abb300(78)=-spbl6k3*abb300(17)*abb300(44)
      abb300(78)=abb300(71)+abb300(78)
      abb300(115)=spak4l5*spbl5k2
      abb300(78)=abb300(78)*abb300(115)
      abb300(46)=-abb300(46)*abb300(15)
      abb300(34)=abb300(113)*abb300(34)
      abb300(34)=abb300(34)+abb300(46)
      abb300(46)=abb300(34)*abb300(37)
      abb300(51)=abb300(14)*abb300(51)
      abb300(46)=abb300(46)+abb300(51)
      abb300(46)=spak1k7*abb300(46)
      abb300(51)=-spak1k4*abb300(56)
      abb300(56)=spak1k7*spbk7k2
      abb300(116)=-abb300(87)*abb300(56)
      abb300(51)=abb300(51)+abb300(116)
      abb300(51)=spbl6k1*abb300(51)
      abb300(116)=abb300(11)*abb300(12)
      abb300(118)=abb300(15)-abb300(116)
      abb300(120)=abb300(118)*abb300(27)
      abb300(121)=abb300(24)*spak4k7
      abb300(48)=abb300(48)-abb300(121)
      abb300(121)=-abb300(120)*abb300(48)
      abb300(114)=spak2k4*abb300(114)
      abb300(122)=spbl5k3*abb300(114)*abb300(27)
      abb300(121)=abb300(122)+abb300(121)
      abb300(121)=spak1l5*abb300(121)
      abb300(26)=-spal5k7*abb300(26)
      abb300(122)=spak4l6*spbl5k3
      abb300(123)=-spbl6k2*abb300(62)*abb300(122)
      abb300(19)=abb300(26)+abb300(121)+abb300(123)+abb300(51)+abb300(46)+abb30&
      &0(78)+abb300(53)+abb300(90)+abb300(42)+abb300(63)+abb300(19)
      abb300(19)=8.0_ki*abb300(19)
      abb300(26)=spbk3k2*abb300(75)
      abb300(42)=abb300(81)*spbl5k2
      abb300(46)=spak1k4*spbk3k2
      abb300(51)=abb300(46)*spbl6k1
      abb300(53)=abb300(50)*spbk3k2
      abb300(63)=abb300(51)-abb300(53)
      abb300(78)=abb300(17)*abb300(63)
      abb300(26)=abb300(42)+abb300(26)+abb300(78)
      abb300(26)=16.0_ki*abb300(26)
      abb300(78)=-abb300(54)*abb300(14)
      abb300(66)=spak1k7*abb300(66)*abb300(78)
      abb300(81)=spbl6k3*spak1k4
      abb300(90)=abb300(81)*abb300(120)
      abb300(66)=abb300(66)-abb300(90)
      abb300(59)=abb300(59)*abb300(2)
      abb300(90)=spbk3k2*abb300(59)
      abb300(121)=abb300(21)*spbk7k3
      abb300(123)=spak4k7*abb300(121)
      abb300(90)=abb300(90)+abb300(123)-abb300(66)
      abb300(90)=16.0_ki*abb300(90)
      abb300(39)=abb300(39)*abb300(15)
      abb300(123)=abb300(113)*abb300(76)
      abb300(39)=abb300(39)-abb300(123)
      abb300(123)=abb300(39)*spbk7k3
      abb300(124)=abb300(16)*spbk7k3
      abb300(125)=abb300(50)*abb300(124)
      abb300(126)=-spbk7l5*abb300(16)*abb300(80)
      abb300(127)=abb300(124)*spak1k4
      abb300(128)=-spbl6k1*abb300(127)
      abb300(125)=abb300(128)+abb300(126)+abb300(123)+abb300(125)
      abb300(125)=spak1k7*abb300(125)
      abb300(60)=spbk3k2*abb300(60)
      abb300(35)=abb300(35)*abb300(15)
      abb300(126)=abb300(33)*abb300(11)
      abb300(128)=abb300(12)*spak2k4
      abb300(129)=abb300(126)*abb300(128)
      abb300(32)=abb300(129)*abb300(32)
      abb300(32)=abb300(35)-abb300(32)
      abb300(35)=abb300(32)*spbl5k2
      abb300(130)=spak1l5*spbl5k3
      abb300(131)=abb300(35)*abb300(130)
      abb300(60)=abb300(131)+abb300(60)-abb300(83)
      abb300(60)=abb300(7)*abb300(60)
      abb300(41)=abb300(41)*abb300(92)
      abb300(43)=abb300(8)*abb300(43)
      abb300(41)=abb300(43)+abb300(41)
      abb300(41)=abb300(33)*abb300(41)
      abb300(28)=abb300(45)*abb300(28)
      abb300(28)=-abb300(28)+abb300(41)
      abb300(21)=abb300(28)-abb300(21)
      abb300(41)=spak4k7*spbk7k3*abb300(21)
      abb300(43)=abb300(55)*abb300(8)*abb300(116)
      abb300(83)=abb300(84)*abb300(15)
      abb300(83)=-abb300(43)+abb300(83)
      abb300(83)=abb300(2)*abb300(83)
      abb300(83)=abb300(83)-abb300(120)
      abb300(81)=abb300(83)*abb300(81)
      abb300(41)=abb300(81)+abb300(41)+abb300(125)+abb300(60)
      abb300(41)=16.0_ki*abb300(41)
      abb300(60)=abb300(16)*spbl6k3
      abb300(81)=abb300(60)*spak1k4
      abb300(83)=-32.0_ki*abb300(81)
      abb300(84)=-abb300(46)*abb300(93)
      abb300(116)=-abb300(5)*abb300(14)
      abb300(125)=abb300(116)*spbl5k2
      abb300(131)=abb300(125)*spak2l5
      abb300(132)=abb300(22)*abb300(131)
      abb300(133)=-spbl6k2*abb300(87)
      abb300(84)=abb300(133)+abb300(84)+abb300(132)
      abb300(84)=16.0_ki*abb300(84)
      abb300(132)=-abb300(116)*abb300(22)
      abb300(81)=abb300(132)-abb300(81)
      abb300(81)=32.0_ki*abb300(81)
      abb300(132)=-abb300(59)+abb300(75)
      abb300(132)=spbk3k2*abb300(132)
      abb300(107)=-spbk3k2*abb300(107)
      abb300(107)=-abb300(121)+abb300(107)
      abb300(107)=spak4k7*abb300(107)
      abb300(133)=abb300(17)*abb300(51)
      abb300(42)=abb300(133)+abb300(42)+abb300(132)+abb300(107)+abb300(66)
      abb300(42)=8.0_ki*abb300(42)
      abb300(66)=-16.0_ki*abb300(127)
      abb300(36)=abb300(98)*abb300(36)
      abb300(107)=abb300(100)*abb300(20)
      abb300(36)=abb300(107)+abb300(36)
      abb300(36)=spbk3k2*abb300(36)
      abb300(74)=abb300(74)*abb300(46)
      abb300(107)=abb300(121)*spak4l5
      abb300(36)=abb300(107)+abb300(74)+abb300(36)
      abb300(74)=8.0_ki*abb300(36)
      abb300(68)=spbl5k2*abb300(68)
      abb300(68)=abb300(68)-abb300(59)-abb300(75)
      abb300(68)=spbk7k3*abb300(68)
      abb300(25)=abb300(68)-abb300(25)
      abb300(25)=8.0_ki*abb300(25)
      abb300(68)=8.0_ki*abb300(59)
      abb300(75)=-spbl6k3*abb300(68)
      abb300(107)=16.0_ki*abb300(16)
      abb300(121)=abb300(22)*abb300(107)
      abb300(68)=spbl5k3*abb300(68)
      abb300(132)=abb300(96)*abb300(33)
      abb300(95)=abb300(132)*abb300(95)
      abb300(95)=abb300(95)-abb300(17)
      abb300(95)=spbk3k2*abb300(95)
      abb300(133)=abb300(7)*spbk3k2
      abb300(28)=-abb300(28)*abb300(133)
      abb300(134)=spak1k7*abb300(124)
      abb300(130)=-abb300(16)*abb300(130)
      abb300(135)=spak1l6*abb300(60)
      abb300(28)=abb300(135)+abb300(130)+abb300(134)+abb300(28)+abb300(95)
      abb300(28)=16.0_ki*abb300(28)
      abb300(57)=-abb300(8)*abb300(57)
      abb300(58)=abb300(58)*abb300(92)
      abb300(57)=abb300(58)+abb300(57)
      abb300(58)=abb300(57)*abb300(2)
      abb300(92)=abb300(58)-abb300(21)
      abb300(95)=-abb300(92)*abb300(64)
      abb300(31)=abb300(2)*abb300(31)
      abb300(30)=abb300(31)+abb300(30)
      abb300(30)=spbl6k2*abb300(30)
      abb300(31)=-abb300(14)*abb300(56)
      abb300(130)=-spak1l5*abb300(120)
      abb300(31)=abb300(31)+abb300(130)
      abb300(31)=spbl6l5*abb300(31)
      abb300(130)=spak1k7*abb300(131)
      abb300(13)=-spak1l5*abb300(5)*abb300(13)
      abb300(13)=abb300(13)+abb300(130)
      abb300(13)=spbk7l5*abb300(13)
      abb300(13)=abb300(31)+abb300(30)-abb300(61)+abb300(95)+abb300(13)
      abb300(13)=8.0_ki*abb300(13)
      abb300(17)=abb300(17)*spbl6k2
      abb300(30)=-16.0_ki*abb300(17)
      abb300(31)=spak1k7*spbk7l6*abb300(16)
      abb300(21)=abb300(31)-abb300(58)-abb300(21)
      abb300(21)=16.0_ki*abb300(21)
      abb300(17)=-8.0_ki*abb300(17)
      abb300(20)=abb300(20)*spbk7k2
      abb300(31)=8.0_ki*abb300(20)
      abb300(58)=-8.0_ki*abb300(106)
      abb300(29)=spbl6k3*abb300(29)
      abb300(61)=abb300(8)*abb300(112)
      abb300(95)=abb300(8)*abb300(113)
      abb300(106)=-abb300(55)*abb300(95)
      abb300(61)=abb300(106)+abb300(61)
      abb300(61)=spbk3k1*abb300(117)*abb300(61)
      abb300(29)=abb300(61)+abb300(29)
      abb300(29)=abb300(2)*abb300(29)
      abb300(61)=-spbl5k3*abb300(62)
      abb300(29)=abb300(61)+abb300(71)+abb300(29)
      abb300(29)=8.0_ki*abb300(29)
      abb300(61)=-spbl5k2*abb300(80)
      abb300(51)=-abb300(51)+abb300(61)+abb300(53)
      abb300(51)=abb300(16)*abb300(51)
      abb300(61)=spbk3k2*abb300(39)
      abb300(51)=abb300(61)+abb300(51)
      abb300(51)=spak1k7*abb300(51)
      abb300(61)=spbk3k2*abb300(92)
      abb300(62)=-spak4k7*abb300(61)
      abb300(71)=abb300(125)*spak1l5
      abb300(92)=spak4k7*spbl5k3
      abb300(106)=-abb300(92)*abb300(71)
      abb300(51)=abb300(106)+abb300(62)+abb300(51)
      abb300(51)=8.0_ki*abb300(51)
      abb300(62)=8.0_ki*abb300(16)
      abb300(106)=spbl6k2*spak1k7*abb300(62)
      abb300(98)=-abb300(98)*abb300(123)
      abb300(101)=abb300(124)*abb300(101)
      abb300(112)=abb300(78)*spbk7k3
      abb300(113)=spbk7k2*abb300(112)
      abb300(98)=abb300(113)+abb300(98)+abb300(101)
      abb300(98)=spak1k7*abb300(98)
      abb300(101)=-es71*abb300(127)
      abb300(97)=abb300(97)*abb300(15)
      abb300(113)=abb300(129)*abb300(96)
      abb300(97)=abb300(97)-abb300(113)
      abb300(113)=abb300(9)*abb300(97)*spbk7k3
      abb300(56)=-abb300(56)*abb300(113)
      abb300(56)=abb300(56)+abb300(101)+abb300(98)
      abb300(56)=16.0_ki*abb300(56)
      abb300(98)=-spak4l6*abb300(61)
      abb300(101)=-abb300(122)*abb300(71)
      abb300(98)=abb300(98)+abb300(101)
      abb300(98)=8.0_ki*abb300(98)
      abb300(101)=-abb300(132)*abb300(15)
      abb300(12)=abb300(96)*abb300(12)*abb300(126)
      abb300(12)=abb300(12)+abb300(101)
      abb300(12)=abb300(9)*abb300(12)
      abb300(33)=abb300(95)*abb300(33)
      abb300(45)=abb300(15)*abb300(45)
      abb300(33)=abb300(33)-abb300(45)
      abb300(45)=-abb300(7)*abb300(33)
      abb300(12)=abb300(12)+abb300(16)+abb300(45)
      abb300(12)=16.0_ki*abb300(46)*abb300(12)
      abb300(45)=-abb300(46)*abb300(107)
      abb300(95)=-abb300(44)*abb300(74)
      abb300(36)=16.0_ki*abb300(36)
      abb300(44)=abb300(44)*abb300(31)
      abb300(20)=-16.0_ki*abb300(20)
      abb300(96)=16.0_ki*abb300(116)
      abb300(101)=-abb300(46)*abb300(96)
      abb300(117)=-8.0_ki*abb300(71)
      abb300(123)=8.0_ki*spak4l5
      abb300(57)=-abb300(57)*abb300(27)*abb300(123)
      abb300(124)=abb300(125)*spak1k4
      abb300(126)=16.0_ki*abb300(124)
      abb300(33)=-abb300(125)-abb300(33)
      abb300(127)=16.0_ki*spak1k4
      abb300(33)=abb300(33)*abb300(127)
      abb300(124)=-8.0_ki*abb300(124)
      abb300(61)=-spak1k4*abb300(61)
      abb300(71)=-abb300(22)*abb300(71)
      abb300(61)=abb300(61)+abb300(71)
      abb300(61)=8.0_ki*abb300(61)
      abb300(71)=abb300(14)*spak4k7
      abb300(127)=8.0_ki*abb300(71)*abb300(24)*abb300(64)
      abb300(129)=abb300(91)*spbk7k3
      abb300(50)=-16.0_ki*abb300(50)*abb300(129)
      abb300(130)=16.0_ki*abb300(93)
      abb300(53)=-abb300(91)*abb300(53)
      abb300(132)=abb300(131)*abb300(92)
      abb300(134)=-spbl6k2*spbl5k3*abb300(71)
      abb300(53)=abb300(134)+abb300(53)+abb300(132)
      abb300(53)=8.0_ki*abb300(53)
      abb300(132)=-abb300(116)*abb300(92)
      abb300(134)=-spak4k7*abb300(60)
      abb300(132)=abb300(132)+abb300(134)
      abb300(132)=16.0_ki*abb300(132)
      abb300(134)=spbk3k2*abb300(62)*spak4k7
      abb300(135)=8.0_ki*abb300(116)
      abb300(136)=abb300(135)*spbk3k2
      abb300(137)=abb300(136)*spak4k7
      abb300(38)=abb300(34)*abb300(38)*abb300(64)
      abb300(138)=-abb300(87)*abb300(64)*spbk7k1
      abb300(38)=abb300(138)+abb300(38)
      abb300(38)=8.0_ki*abb300(38)
      abb300(112)=abb300(64)*abb300(112)
      abb300(138)=-16.0_ki*abb300(112)
      abb300(100)=-abb300(100)*abb300(129)
      abb300(113)=-abb300(64)*abb300(113)
      abb300(100)=abb300(113)+abb300(100)+abb300(112)
      abb300(100)=16.0_ki*abb300(100)
      abb300(112)=8.0_ki*abb300(112)
      abb300(113)=8.0_ki*spbk7l5
      abb300(113)=-abb300(113)*abb300(14)*abb300(64)
      abb300(129)=abb300(39)*abb300(133)
      abb300(139)=abb300(129)*abb300(64)
      abb300(69)=spak4l5*abb300(69)
      abb300(140)=spbk7k1*abb300(46)
      abb300(69)=abb300(140)+abb300(69)
      abb300(69)=abb300(91)*abb300(69)
      abb300(37)=abb300(37)*abb300(71)
      abb300(71)=abb300(131)*abb300(122)
      abb300(87)=-spbk2k1*abb300(87)
      abb300(37)=abb300(87)+abb300(71)+abb300(37)+abb300(139)+abb300(69)
      abb300(37)=8.0_ki*abb300(37)
      abb300(69)=16.0_ki*spbk3k2*abb300(78)
      abb300(71)=abb300(116)*abb300(122)
      abb300(71)=abb300(71)+abb300(129)
      abb300(87)=abb300(9)*abb300(97)
      abb300(87)=abb300(87)-abb300(78)
      abb300(87)=spbk3k2*abb300(87)
      abb300(60)=-spak4l6*abb300(60)
      abb300(91)=-spbk3k1*spak1k4*abb300(16)
      abb300(60)=abb300(91)+abb300(60)+abb300(87)-abb300(71)
      abb300(60)=16.0_ki*abb300(60)
      abb300(87)=8.0_ki*spbk3k2
      abb300(87)=-abb300(78)*abb300(87)
      abb300(16)=abb300(16)*abb300(64)
      abb300(64)=spbl5k2*abb300(14)
      abb300(16)=abb300(64)+abb300(16)
      abb300(16)=8.0_ki*abb300(16)
      abb300(64)=abb300(136)*spak4l6
      abb300(91)=abb300(62)*abb300(115)
      abb300(97)=abb300(46)*abb300(62)
      abb300(115)=8.0_ki*abb300(14)*abb300(88)
      abb300(118)=abb300(118)*abb300(2)
      abb300(63)=abb300(118)*abb300(63)
      abb300(52)=-abb300(114)*abb300(52)
      abb300(80)=abb300(80)*abb300(120)
      abb300(52)=abb300(80)+abb300(52)+abb300(63)
      abb300(52)=8.0_ki*abb300(52)
      abb300(32)=abb300(32)*abb300(133)
      abb300(63)=-16.0_ki*abb300(32)
      abb300(14)=-abb300(118)-abb300(14)
      abb300(14)=spbl6k2*abb300(14)
      abb300(14)=abb300(131)+abb300(14)
      abb300(14)=8.0_ki*abb300(14)
      abb300(80)=-32.0_ki*abb300(116)
      abb300(116)=abb300(123)*abb300(125)
      abb300(46)=abb300(46)*abb300(135)
      abb300(88)=abb300(78)*abb300(88)
      abb300(120)=16.0_ki*abb300(88)
      abb300(99)=-abb300(99)*abb300(130)
      abb300(88)=-8.0_ki*abb300(88)
      abb300(122)=-spbl5k2*abb300(93)*abb300(123)
      abb300(78)=abb300(78)*spbl6k2
      abb300(123)=spak2k4*abb300(125)
      abb300(78)=abb300(78)+abb300(123)
      abb300(125)=-16.0_ki*abb300(78)
      abb300(107)=-spbl6l5*spak4l5*abb300(107)
      abb300(78)=8.0_ki*abb300(78)
      abb300(77)=-spbk7k1*abb300(77)
      abb300(24)=-abb300(34)*abb300(24)*abb300(85)
      abb300(24)=abb300(77)+abb300(24)
      abb300(24)=8.0_ki*abb300(24)
      abb300(77)=abb300(111)*abb300(3)
      abb300(10)=abb300(77)-abb300(10)
      abb300(10)=spbk7l6*abb300(10)*abb300(76)*abb300(119)
      abb300(76)=16.0_ki*abb300(7)
      abb300(77)=spbk7k3*abb300(76)*abb300(10)
      abb300(85)=-abb300(2)*abb300(114)
      abb300(35)=-spak2l5*abb300(7)*abb300(35)
      abb300(34)=abb300(35)+abb300(85)+abb300(34)
      abb300(34)=spbl5k3*abb300(34)
      abb300(35)=-abb300(55)*abb300(54)*abb300(15)
      abb300(43)=spak2k4*abb300(43)
      abb300(35)=abb300(43)+abb300(35)
      abb300(35)=abb300(2)*abb300(35)
      abb300(15)=spak2k4*abb300(15)
      abb300(11)=-abb300(128)*abb300(11)
      abb300(11)=abb300(11)+abb300(15)
      abb300(11)=abb300(11)*abb300(27)
      abb300(11)=abb300(35)+abb300(11)
      abb300(11)=spbl6k3*abb300(11)
      abb300(15)=abb300(118)*abb300(48)
      abb300(10)=abb300(133)*abb300(10)
      abb300(27)=-spbk3k1*abb300(59)
      abb300(10)=abb300(27)+abb300(11)+abb300(10)+abb300(15)+abb300(34)
      abb300(10)=8.0_ki*abb300(10)
      abb300(11)=spbl6k3*abb300(39)*abb300(76)
      abb300(15)=spbl6l5*abb300(118)
      abb300(15)=abb300(93)+abb300(15)
      abb300(15)=8.0_ki*abb300(15)
      abb300(27)=abb300(135)*abb300(92)
      abb300(34)=8.0_ki*abb300(71)
      abb300(32)=8.0_ki*abb300(32)
      abb300(35)=abb300(123)-abb300(39)
      abb300(35)=8.0_ki*abb300(35)
      abb300(22)=abb300(22)*abb300(135)
      R2d300=0.0_ki
      rat2 = rat2 + R2d300
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='300' value='", &
          & R2d300, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd300h3
