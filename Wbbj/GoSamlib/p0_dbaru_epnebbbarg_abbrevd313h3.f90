module     p0_dbaru_epnebbbarg_abbrevd313h3
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(121), public :: abb313
   complex(ki), public :: R2d313
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
      abb313(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb313(2)=sqrt(mB**2)
      abb313(3)=NC**(-1)
      abb313(4)=es234**(-1)
      abb313(5)=spak2l5**(-1)
      abb313(6)=spak2l6**(-1)
      abb313(7)=spbl5k2**(-1)
      abb313(8)=abb313(1)*i_*CVDU
      abb313(9)=TR*gW
      abb313(9)=abb313(9)**2
      abb313(10)=abb313(9)*abb313(4)*abb313(8)
      abb313(11)=abb313(10)*mB
      abb313(12)=spbk3k2*abb313(11)
      abb313(13)=abb313(12)*abb313(3)
      abb313(14)=abb313(13)*c3
      abb313(13)=abb313(13)*c1
      abb313(15)=abb313(14)+abb313(13)
      abb313(16)=-spak1e7*abb313(15)
      abb313(17)=abb313(12)*spak1e7
      abb313(18)=c2*abb313(3)**2
      abb313(19)=abb313(18)+c4
      abb313(20)=abb313(17)*abb313(19)
      abb313(16)=abb313(20)+abb313(16)
      abb313(20)=abb313(2)**2
      abb313(21)=abb313(20)*spbe7l5
      abb313(22)=-abb313(16)*abb313(21)
      abb313(23)=c3*abb313(3)
      abb313(24)=c1*abb313(3)
      abb313(25)=abb313(23)-abb313(18)+abb313(24)-c4
      abb313(26)=spak2k7*spbk7e7
      abb313(27)=-abb313(25)*abb313(26)
      abb313(28)=abb313(10)*abb313(5)
      abb313(29)=abb313(2)*spbk3k2
      abb313(30)=abb313(29)*abb313(28)
      abb313(31)=mB**2
      abb313(32)=abb313(30)*abb313(31)
      abb313(33)=abb313(27)*abb313(32)
      abb313(34)=-spak1e7*abb313(33)
      abb313(22)=abb313(22)+abb313(34)
      abb313(22)=spbl6k3*abb313(22)
      abb313(34)=abb313(31)*abb313(29)
      abb313(35)=-abb313(25)*abb313(34)
      abb313(36)=abb313(10)*spak1k2
      abb313(37)=abb313(36)*abb313(6)
      abb313(38)=-abb313(37)*abb313(35)
      abb313(39)=spae7k7*spbe7l5
      abb313(40)=abb313(38)*abb313(39)
      abb313(41)=spak1k2**2
      abb313(32)=abb313(6)*abb313(41)*abb313(25)*abb313(32)
      abb313(42)=spbe7k1*spae7k7
      abb313(43)=abb313(32)*abb313(42)
      abb313(40)=abb313(40)+abb313(43)
      abb313(40)=spbk7k3*abb313(40)
      abb313(22)=abb313(40)+abb313(22)
      abb313(22)=spak3k4*abb313(22)
      abb313(40)=spak1k2*abb313(5)
      abb313(43)=abb313(40)*abb313(12)
      abb313(18)=abb313(18)*abb313(43)
      abb313(13)=abb313(13)*abb313(40)
      abb313(14)=abb313(14)*abb313(40)
      abb313(40)=abb313(43)*c4
      abb313(13)=abb313(13)-abb313(18)+abb313(14)-abb313(40)
      abb313(14)=-abb313(20)*abb313(13)
      abb313(18)=spak2k4*spak1e7
      abb313(40)=abb313(18)*spbl6k2
      abb313(43)=spbl6k3*spak3k4
      abb313(44)=abb313(43)*spak1e7
      abb313(40)=abb313(40)-abb313(44)
      abb313(44)=spbe7k1*abb313(14)*abb313(40)
      abb313(45)=abb313(10)*spak2k4
      abb313(46)=abb313(29)*spak1e7
      abb313(47)=abb313(19)*abb313(46)*abb313(45)
      abb313(48)=c1+c3
      abb313(49)=abb313(48)*abb313(10)*abb313(3)
      abb313(50)=abb313(29)*abb313(49)
      abb313(51)=abb313(50)*abb313(18)
      abb313(47)=abb313(47)-abb313(51)
      abb313(51)=-spbl6k2*abb313(47)
      abb313(52)=abb313(29)*abb313(19)
      abb313(53)=abb313(10)*spak1e7
      abb313(54)=abb313(53)*abb313(52)
      abb313(46)=abb313(46)*abb313(49)
      abb313(46)=abb313(54)-abb313(46)
      abb313(54)=abb313(46)*abb313(43)
      abb313(51)=abb313(51)+abb313(54)
      abb313(54)=spak1k7*spbk7e7
      abb313(51)=abb313(54)*abb313(51)
      abb313(55)=spak1e7*abb313(6)
      abb313(56)=abb313(55)*spak2k4
      abb313(57)=abb313(56)*abb313(15)
      abb313(58)=abb313(12)*abb313(6)
      abb313(59)=abb313(58)*spak1e7
      abb313(60)=spak2k4*abb313(19)
      abb313(61)=abb313(59)*abb313(60)
      abb313(57)=abb313(61)-abb313(57)
      abb313(61)=abb313(20)*spak1k2
      abb313(62)=spbe7k2*abb313(61)*abb313(57)
      abb313(51)=abb313(62)+abb313(51)
      abb313(51)=spbl5k1*abb313(51)
      abb313(62)=abb313(18)*abb313(15)
      abb313(63)=-abb313(17)*abb313(60)
      abb313(62)=abb313(62)+abb313(63)
      abb313(63)=-abb313(62)*abb313(21)
      abb313(64)=abb313(18)*abb313(33)
      abb313(63)=abb313(63)+abb313(64)
      abb313(63)=spbl6k2*abb313(63)
      abb313(64)=spak2k4*abb313(15)
      abb313(65)=abb313(5)*abb313(64)
      abb313(66)=abb313(12)*spak2k4
      abb313(67)=abb313(5)*abb313(19)
      abb313(68)=abb313(66)*abb313(67)
      abb313(65)=abb313(68)-abb313(65)
      abb313(68)=abb313(65)*spbl6k2
      abb313(69)=spak2e7*spbe7l5
      abb313(70)=abb313(68)*abb313(69)
      abb313(71)=abb313(5)*abb313(15)
      abb313(72)=abb313(12)*abb313(67)
      abb313(72)=-abb313(72)+abb313(71)
      abb313(69)=abb313(72)*abb313(69)*abb313(43)
      abb313(69)=abb313(70)+abb313(69)
      abb313(70)=-spak1l5*abb313(20)*abb313(69)
      abb313(73)=spak2k4*abb313(6)
      abb313(74)=abb313(31)*abb313(73)
      abb313(30)=abb313(25)*abb313(74)*abb313(30)
      abb313(41)=-abb313(42)*abb313(41)*abb313(30)
      abb313(35)=-abb313(36)*abb313(73)*abb313(35)
      abb313(75)=-abb313(35)*abb313(39)
      abb313(41)=abb313(75)+abb313(41)
      abb313(41)=spbk7k2*abb313(41)
      abb313(75)=abb313(55)*abb313(15)
      abb313(59)=abb313(59)*abb313(19)
      abb313(59)=abb313(59)-abb313(75)
      abb313(75)=spbl5k1*spak3k4
      abb313(76)=abb313(75)*spbe7k3
      abb313(61)=-abb313(76)*abb313(61)*abb313(59)
      abb313(22)=abb313(41)+abb313(70)+abb313(61)+abb313(44)+abb313(63)+abb313(&
      &51)+abb313(22)
      abb313(22)=4.0_ki*abb313(22)
      abb313(41)=spak2k4*abb313(13)
      abb313(44)=abb313(41)*spbl6k2
      abb313(51)=abb313(13)*abb313(43)
      abb313(44)=abb313(44)-abb313(51)
      abb313(23)=abb313(23)+abb313(24)
      abb313(24)=abb313(5)**2*mB**3
      abb313(51)=abb313(24)*abb313(36)*spbk3k2
      abb313(61)=abb313(51)*abb313(23)
      abb313(63)=abb313(51)*abb313(19)
      abb313(63)=abb313(63)-abb313(61)
      abb313(70)=abb313(63)*abb313(43)
      abb313(61)=spak2k4*abb313(61)
      abb313(51)=-abb313(51)*abb313(60)
      abb313(51)=abb313(61)+abb313(51)
      abb313(61)=abb313(51)*spbl6k2
      abb313(70)=abb313(70)+abb313(61)
      abb313(70)=abb313(70)*abb313(7)
      abb313(77)=-abb313(70)-abb313(44)
      abb313(77)=es71*abb313(77)
      abb313(66)=-abb313(66)*abb313(19)
      abb313(64)=abb313(66)+abb313(64)
      abb313(64)=spbl6k2*abb313(64)
      abb313(12)=abb313(12)*abb313(19)
      abb313(12)=abb313(12)-abb313(15)
      abb313(12)=abb313(12)*abb313(43)
      abb313(12)=abb313(64)+abb313(12)
      abb313(12)=spak1k7*abb313(12)
      abb313(64)=abb313(72)*abb313(43)
      abb313(64)=abb313(68)+abb313(64)
      abb313(64)=spak1l5*spak2k7*abb313(64)
      abb313(12)=abb313(64)+abb313(12)
      abb313(12)=spbk7l5*abb313(12)
      abb313(64)=abb313(28)*spak1k2
      abb313(34)=abb313(34)*abb313(64)
      abb313(66)=abb313(25)*abb313(34)
      abb313(68)=-abb313(73)*abb313(66)
      abb313(78)=-abb313(70)-abb313(68)
      abb313(78)=es12*abb313(78)
      abb313(79)=-abb313(43)*abb313(25)
      abb313(80)=spak2k4*abb313(23)
      abb313(80)=abb313(80)-abb313(60)
      abb313(80)=spbl6k2*abb313(80)
      abb313(79)=abb313(80)+abb313(79)
      abb313(34)=abb313(34)*abb313(79)
      abb313(79)=spak1k2*abb313(15)
      abb313(80)=abb313(6)*abb313(79)
      abb313(81)=abb313(58)*spak1k2
      abb313(82)=abb313(81)*abb313(19)
      abb313(80)=abb313(80)-abb313(82)
      abb313(82)=abb313(80)*abb313(75)
      abb313(83)=-spbk7k3*abb313(82)
      abb313(79)=-abb313(73)*abb313(79)
      abb313(81)=abb313(81)*abb313(60)
      abb313(79)=abb313(81)+abb313(79)
      abb313(81)=abb313(79)*spbl5k1
      abb313(84)=-spbk7k2*abb313(81)
      abb313(83)=abb313(84)+abb313(83)
      abb313(83)=spak1k7*abb313(83)
      abb313(70)=es712*abb313(70)
      abb313(84)=spbl5k3*spak3k4
      abb313(38)=abb313(38)*abb313(84)
      abb313(35)=-spbl5k2*abb313(35)
      abb313(32)=-spbk3k1*spak3k4*abb313(32)
      abb313(12)=abb313(70)+abb313(32)+abb313(78)+abb313(77)+abb313(35)+abb313(&
      &38)+abb313(12)+abb313(83)+abb313(34)
      abb313(12)=8.0_ki*abb313(12)
      abb313(32)=spbe7k1*abb313(13)*abb313(40)
      abb313(34)=abb313(69)*spak1l5
      abb313(16)=abb313(16)*abb313(43)
      abb313(35)=abb313(62)*spbl6k2
      abb313(16)=abb313(16)+abb313(35)
      abb313(16)=abb313(16)*spbe7l5
      abb313(16)=abb313(32)+abb313(34)+abb313(16)
      abb313(32)=abb313(57)*spbl5k1
      abb313(34)=spak1k2*abb313(32)
      abb313(35)=spbe7k2*abb313(34)
      abb313(38)=abb313(59)*spak1k2
      abb313(40)=-abb313(38)*abb313(76)
      abb313(35)=abb313(40)+abb313(35)-abb313(16)
      abb313(35)=8.0_ki*abb313(35)
      abb313(40)=spak4e7*spbe7l6
      abb313(43)=abb313(14)*abb313(40)
      abb313(62)=abb313(54)*spak2e7
      abb313(30)=abb313(30)*abb313(62)
      abb313(69)=abb313(46)*spbl6l5
      abb313(70)=spak4k7*spbk7e7
      abb313(76)=abb313(69)*abb313(70)
      abb313(33)=-abb313(56)*abb313(33)
      abb313(77)=abb313(57)*abb313(20)
      abb313(78)=abb313(77)*spbe7l5
      abb313(30)=abb313(43)+abb313(76)-abb313(33)+abb313(78)+abb313(30)
      abb313(33)=8.0_ki*abb313(30)
      abb313(43)=abb313(13)*spbk7l6
      abb313(76)=abb313(43)*spak4k7
      abb313(78)=abb313(73)*abb313(15)
      abb313(83)=abb313(58)*abb313(60)
      abb313(78)=abb313(83)-abb313(78)
      abb313(83)=spbk7l5*spak1k7
      abb313(85)=abb313(78)*abb313(83)
      abb313(86)=abb313(10)*abb313(52)
      abb313(86)=abb313(86)-abb313(50)
      abb313(87)=spak1k4*spbl6l5
      abb313(88)=abb313(86)*abb313(87)
      abb313(76)=-abb313(88)+abb313(76)-abb313(85)
      abb313(85)=-abb313(76)+2.0_ki*abb313(68)
      abb313(85)=16.0_ki*abb313(85)
      abb313(88)=abb313(40)*abb313(13)
      abb313(89)=abb313(57)*spbe7l5
      abb313(88)=abb313(88)-abb313(89)
      abb313(89)=16.0_ki*abb313(88)
      abb313(90)=abb313(54)*abb313(32)
      abb313(91)=spbe7k2*abb313(7)
      abb313(92)=spbk7l6*spae7k7
      abb313(93)=abb313(91)*abb313(92)
      abb313(94)=-abb313(51)*abb313(93)
      abb313(30)=abb313(94)+abb313(90)-abb313(30)
      abb313(30)=8.0_ki*abb313(30)
      abb313(61)=abb313(7)*abb313(61)
      abb313(61)=abb313(61)+abb313(68)-abb313(76)
      abb313(61)=16.0_ki*abb313(61)
      abb313(76)=abb313(41)*abb313(92)
      abb313(34)=-abb313(76)-abb313(34)
      abb313(34)=spbe7k2*abb313(34)
      abb313(90)=abb313(13)*spak3k4
      abb313(94)=abb313(90)*abb313(92)
      abb313(38)=abb313(38)*abb313(75)
      abb313(38)=abb313(94)+abb313(38)
      abb313(38)=spbe7k3*abb313(38)
      abb313(95)=abb313(59)*abb313(26)
      abb313(96)=-abb313(84)*abb313(95)
      abb313(57)=abb313(57)*spbl5k2
      abb313(97)=abb313(26)*abb313(57)
      abb313(16)=abb313(38)+abb313(97)+abb313(96)+abb313(34)+abb313(16)
      abb313(16)=4.0_ki*abb313(16)
      abb313(34)=-abb313(80)*abb313(84)
      abb313(38)=-spbl5k2*abb313(79)
      abb313(34)=abb313(38)+abb313(34)+abb313(44)
      abb313(34)=8.0_ki*abb313(34)
      abb313(38)=8.0_ki*abb313(88)
      abb313(44)=abb313(41)*spbe7k2
      abb313(79)=abb313(20)*abb313(44)
      abb313(88)=spbe7k3*spak3k4
      abb313(96)=abb313(14)*abb313(88)
      abb313(79)=abb313(79)+abb313(96)
      abb313(79)=4.0_ki*abb313(79)
      abb313(96)=abb313(90)*spbe7k3
      abb313(44)=abb313(96)-abb313(44)
      abb313(96)=-8.0_ki*abb313(44)
      abb313(44)=4.0_ki*abb313(44)
      abb313(97)=8.0_ki*abb313(13)
      abb313(98)=abb313(97)*abb313(92)
      abb313(99)=abb313(59)*abb313(84)
      abb313(100)=abb313(20)*abb313(99)
      abb313(77)=-spbl5k2*abb313(77)
      abb313(77)=abb313(100)+abb313(77)
      abb313(77)=4.0_ki*abb313(77)
      abb313(57)=abb313(99)-abb313(57)
      abb313(99)=8.0_ki*abb313(57)
      abb313(57)=-4.0_ki*abb313(57)
      abb313(46)=-abb313(46)*abb313(84)
      abb313(47)=spbl5k2*abb313(47)
      abb313(46)=abb313(46)+abb313(47)
      abb313(46)=4.0_ki*spbk7e7*abb313(46)
      abb313(47)=abb313(90)*spbk7k3
      abb313(100)=abb313(41)*spbk7k2
      abb313(47)=abb313(47)-abb313(100)
      abb313(100)=8.0_ki*abb313(47)
      abb313(47)=4.0_ki*abb313(47)
      abb313(39)=-abb313(39)*abb313(47)
      abb313(101)=-spbl5k3*abb313(90)
      abb313(102)=spbl5k2*abb313(41)
      abb313(101)=abb313(101)+abb313(102)
      abb313(101)=8.0_ki*abb313(101)
      abb313(92)=4.0_ki*abb313(92)
      abb313(102)=abb313(92)*spbe7l5
      abb313(103)=abb313(90)*abb313(102)
      abb313(104)=8.0_ki*spbl6l5
      abb313(105)=-abb313(90)*abb313(104)
      abb313(102)=-abb313(41)*abb313(102)
      abb313(104)=abb313(41)*abb313(104)
      abb313(71)=-spak1e7*abb313(71)
      abb313(17)=abb313(17)*abb313(67)
      abb313(17)=abb313(17)+abb313(71)
      abb313(17)=abb313(17)*abb313(26)
      abb313(67)=abb313(72)*abb313(62)
      abb313(17)=abb313(17)+abb313(67)
      abb313(67)=8.0_ki*abb313(17)
      abb313(71)=16.0_ki*abb313(13)
      abb313(72)=8.0_ki*abb313(95)
      abb313(106)=16.0_ki*abb313(80)
      abb313(107)=mB*abb313(49)
      abb313(108)=-abb313(55)*abb313(107)
      abb313(11)=abb313(6)*abb313(11)
      abb313(109)=abb313(11)*abb313(19)*spak1e7
      abb313(108)=abb313(109)+abb313(108)
      abb313(109)=-abb313(108)*abb313(21)
      abb313(110)=abb313(28)*abb313(2)
      abb313(111)=abb313(27)*abb313(110)*abb313(31)
      abb313(112)=-abb313(55)*abb313(111)
      abb313(110)=-abb313(110)*abb313(25)*abb313(62)
      abb313(113)=abb313(31)*abb313(6)
      abb313(114)=abb313(113)*abb313(110)
      abb313(109)=abb313(114)+abb313(109)+abb313(112)
      abb313(109)=es34*abb313(109)
      abb313(14)=abb313(14)*spbe7l6
      abb313(112)=-spak3e7*abb313(14)
      abb313(114)=abb313(9)*abb313(3)
      abb313(115)=abb313(48)*abb313(114)
      abb313(116)=abb313(5)*abb313(8)
      abb313(31)=abb313(116)*abb313(31)*abb313(2)
      abb313(117)=-abb313(31)*abb313(55)*abb313(115)
      abb313(118)=abb313(9)*abb313(6)
      abb313(31)=abb313(19)*abb313(31)*abb313(118)
      abb313(119)=spak1e7*abb313(31)
      abb313(117)=abb313(119)+abb313(117)
      abb313(117)=abb313(117)*abb313(26)
      abb313(116)=abb313(116)*abb313(113)
      abb313(115)=abb313(115)*abb313(116)*abb313(2)
      abb313(31)=-abb313(31)+abb313(115)
      abb313(31)=abb313(31)*abb313(62)
      abb313(49)=abb313(2)*abb313(49)
      abb313(115)=abb313(49)*spak1e7
      abb313(119)=abb313(2)*abb313(19)
      abb313(53)=abb313(119)*abb313(53)
      abb313(53)=abb313(115)-abb313(53)
      abb313(53)=abb313(53)*abb313(70)*spbl6l5
      abb313(115)=-abb313(25)*mB
      abb313(120)=-abb313(64)*abb313(115)
      abb313(20)=abb313(40)*abb313(120)*abb313(20)
      abb313(20)=abb313(53)+abb313(20)
      abb313(53)=spbk4k2*abb313(20)
      abb313(8)=mB*abb313(8)
      abb313(48)=abb313(48)*abb313(8)*abb313(114)
      abb313(55)=abb313(55)*abb313(48)
      abb313(8)=abb313(8)*abb313(118)
      abb313(114)=-abb313(19)*abb313(8)*spak1e7
      abb313(55)=abb313(55)+abb313(114)
      abb313(114)=-abb313(55)*abb313(21)
      abb313(118)=spak3k7*spbk7e7
      abb313(121)=-abb313(69)*abb313(118)
      abb313(31)=abb313(121)+abb313(112)+abb313(109)+abb313(53)+abb313(31)+abb3&
      &13(114)+abb313(117)
      abb313(31)=4.0_ki*abb313(31)
      abb313(53)=-spak3k7*abb313(43)
      abb313(109)=abb313(2)*abb313(23)
      abb313(109)=abb313(109)-abb313(119)
      abb313(64)=abb313(109)*abb313(64)
      abb313(112)=-abb313(64)*abb313(113)
      abb313(113)=abb313(11)*abb313(19)
      abb313(114)=abb313(6)*abb313(107)
      abb313(114)=abb313(114)-abb313(113)
      abb313(117)=-abb313(114)*abb313(83)
      abb313(112)=2.0_ki*abb313(112)+abb313(117)
      abb313(112)=es34*abb313(112)
      abb313(9)=abb313(109)*abb313(116)*abb313(9)*spak1k2
      abb313(109)=abb313(120)*spbk4k2
      abb313(116)=spak4k7*spbk7l6
      abb313(117)=-abb313(109)*abb313(116)
      abb313(48)=abb313(6)*abb313(48)
      abb313(8)=-abb313(8)*abb313(19)
      abb313(8)=abb313(48)+abb313(8)
      abb313(8)=abb313(8)*abb313(83)
      abb313(10)=abb313(119)*abb313(10)
      abb313(10)=abb313(10)-abb313(49)
      abb313(10)=abb313(10)*abb313(87)
      abb313(48)=spbk4k2*abb313(10)
      abb313(49)=spak1k3*spbl6l5*abb313(86)
      abb313(8)=abb313(49)+abb313(53)+abb313(112)+abb313(48)+abb313(8)+2.0_ki*a&
      &bb313(9)+abb313(117)
      abb313(8)=8.0_ki*abb313(8)
      abb313(9)=abb313(13)*spbe7l6
      abb313(48)=abb313(9)*spak3e7
      abb313(49)=es34*abb313(108)*spbe7l5
      abb313(53)=abb313(109)*abb313(40)
      abb313(55)=abb313(55)*spbe7l5
      abb313(48)=-abb313(55)-abb313(49)+abb313(53)+abb313(48)
      abb313(49)=8.0_ki*abb313(48)
      abb313(48)=-4.0_ki*abb313(48)
      abb313(53)=abb313(92)*abb313(109)
      abb313(13)=abb313(13)*abb313(92)
      abb313(55)=-abb313(62)*abb313(115)
      abb313(27)=-mB*abb313(27)*spak1e7
      abb313(27)=abb313(55)-abb313(27)
      abb313(27)=abb313(28)*abb313(27)
      abb313(27)=4.0_ki*abb313(27)
      abb313(28)=spbk4k2*abb313(27)
      abb313(55)=8.0_ki*abb313(109)
      abb313(62)=4.0_ki*abb313(108)
      abb313(87)=abb313(62)*abb313(26)
      abb313(109)=-spbk4k2*abb313(87)
      abb313(37)=-abb313(37)*abb313(115)
      abb313(112)=-8.0_ki*spbk4k2*abb313(37)
      abb313(18)=-abb313(18)*abb313(113)
      abb313(113)=abb313(56)*abb313(107)
      abb313(18)=abb313(113)+abb313(18)
      abb313(21)=-abb313(18)*abb313(21)
      abb313(56)=abb313(56)*abb313(111)
      abb313(110)=-abb313(74)*abb313(110)
      abb313(20)=-abb313(20)+abb313(110)+abb313(21)+abb313(56)
      abb313(20)=spbk4k3*abb313(20)
      abb313(14)=spak2e7*abb313(14)
      abb313(21)=abb313(26)*abb313(69)
      abb313(14)=abb313(21)+abb313(14)+abb313(20)
      abb313(14)=4.0_ki*abb313(14)
      abb313(20)=abb313(74)*abb313(64)
      abb313(21)=abb313(73)*abb313(107)
      abb313(11)=-abb313(11)*abb313(60)
      abb313(11)=abb313(11)+abb313(21)
      abb313(11)=abb313(11)*abb313(83)
      abb313(10)=-abb313(10)+abb313(11)+2.0_ki*abb313(20)
      abb313(10)=spbk4k3*abb313(10)
      abb313(11)=spak2k7*abb313(43)
      abb313(20)=abb313(29)*abb313(23)
      abb313(20)=abb313(20)-abb313(52)
      abb313(20)=spbl6l5*abb313(36)*abb313(20)
      abb313(21)=abb313(120)*spbk4k3
      abb313(23)=abb313(21)*abb313(116)
      abb313(10)=abb313(23)+abb313(20)+abb313(11)+abb313(10)
      abb313(10)=8.0_ki*abb313(10)
      abb313(9)=abb313(9)*spak2e7
      abb313(11)=abb313(21)*abb313(40)
      abb313(18)=spbe7l5*abb313(18)*spbk4k3
      abb313(9)=abb313(18)+abb313(11)+abb313(9)
      abb313(11)=-8.0_ki*abb313(9)
      abb313(9)=4.0_ki*abb313(9)
      abb313(18)=-abb313(92)*abb313(21)
      abb313(20)=-spbk4k3*abb313(27)
      abb313(21)=-8.0_ki*abb313(21)
      abb313(23)=spbk4k3*abb313(87)
      abb313(27)=8.0_ki*spbk4k3
      abb313(29)=abb313(37)*abb313(27)
      abb313(17)=4.0_ki*abb313(17)
      abb313(37)=-4.0_ki*abb313(95)
      abb313(40)=-8.0_ki*abb313(80)
      abb313(43)=-spbe7k2*abb313(68)
      abb313(56)=abb313(6)*abb313(66)
      abb313(60)=-abb313(56)*abb313(88)
      abb313(43)=abb313(43)+abb313(60)
      abb313(60)=4.0_ki*spae7k7
      abb313(43)=abb313(43)*abb313(60)
      abb313(15)=abb313(6)*abb313(15)
      abb313(19)=abb313(58)*abb313(19)
      abb313(15)=abb313(15)-abb313(19)
      abb313(19)=abb313(15)*abb313(84)
      abb313(58)=spbl5k2*abb313(78)
      abb313(19)=abb313(19)+abb313(58)
      abb313(19)=8.0_ki*spak1k7*abb313(19)
      abb313(58)=abb313(63)*spak3k4
      abb313(63)=spbk7k3*abb313(58)
      abb313(51)=spbk7k2*abb313(51)
      abb313(51)=abb313(63)+abb313(51)
      abb313(51)=abb313(91)*abb313(51)*abb313(60)
      abb313(24)=8.0_ki*abb313(7)*spak3k4*abb313(24)*spbk3k2**2*abb313(25)*abb3&
      &13(36)
      abb313(25)=abb313(59)*abb313(70)
      abb313(25)=8.0_ki*abb313(25)
      abb313(36)=abb313(15)*spak1k4
      abb313(36)=16.0_ki*abb313(36)
      abb313(60)=spbk4k2*abb313(108)*abb313(70)
      abb313(63)=abb313(59)*abb313(118)
      abb313(60)=abb313(60)+abb313(63)
      abb313(60)=4.0_ki*abb313(60)
      abb313(63)=abb313(114)*spak1k4
      abb313(64)=spbk4k2*abb313(63)
      abb313(15)=spak1k3*abb313(15)
      abb313(15)=abb313(64)+abb313(15)
      abb313(15)=8.0_ki*abb313(15)
      abb313(62)=-abb313(70)*abb313(62)*spbk4k3
      abb313(27)=-abb313(63)*abb313(27)
      abb313(54)=-abb313(59)*abb313(54)*abb313(75)
      abb313(59)=-abb313(58)*abb313(93)
      abb313(54)=abb313(54)+abb313(59)
      abb313(54)=4.0_ki*abb313(54)
      abb313(56)=-spak3k4*abb313(56)
      abb313(58)=abb313(7)*spbl6k2*abb313(58)
      abb313(56)=abb313(56)+abb313(58)
      abb313(56)=8.0_ki*abb313(56)
      abb313(42)=abb313(42)*abb313(47)
      abb313(47)=-spbk3k1*abb313(90)
      abb313(58)=-abb313(86)*abb313(84)
      abb313(45)=abb313(45)*abb313(52)
      abb313(50)=-spak2k4*abb313(50)
      abb313(45)=abb313(45)+abb313(50)
      abb313(45)=spbl5k2*abb313(45)
      abb313(50)=-es12*abb313(65)
      abb313(45)=abb313(47)+abb313(50)+abb313(58)+abb313(45)
      abb313(45)=8.0_ki*abb313(45)
      abb313(47)=-spbe7k1*abb313(94)
      abb313(50)=abb313(75)*abb313(95)
      abb313(47)=abb313(50)+abb313(47)
      abb313(47)=4.0_ki*abb313(47)
      abb313(50)=spbl6k1*abb313(90)
      abb313(50)=abb313(82)+abb313(50)
      abb313(50)=8.0_ki*abb313(50)
      abb313(52)=spbe7k1*abb313(76)
      abb313(26)=-abb313(26)*abb313(32)
      abb313(26)=abb313(26)+abb313(52)
      abb313(26)=4.0_ki*abb313(26)
      abb313(32)=-spbl6k1*abb313(41)
      abb313(32)=abb313(81)+abb313(32)
      abb313(32)=8.0_ki*abb313(32)
      R2d313=0.0_ki
      rat2 = rat2 + R2d313
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='313' value='", &
          & R2d313, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd313h3
