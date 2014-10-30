module     p0_dbaru_epnebbbarg_abbrevd313h6
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh6
   implicit none
   private
   complex(ki), dimension(105), public :: abb313
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
      abb313(4)=sqrt2**(-1)
      abb313(5)=es234**(-1)
      abb313(6)=spbl5k2**(-1)
      abb313(7)=spak2l6**(-1)
      abb313(8)=spbk7k2**(-1)
      abb313(9)=spak2l5**(-1)
      abb313(10)=TR*gW
      abb313(10)=abb313(10)**2*i_*CVDU*abb313(4)*abb313(1)
      abb313(11)=abb313(8)*abb313(5)
      abb313(12)=abb313(10)*abb313(11)*spbk3k2
      abb313(13)=abb313(12)*spak1l5
      abb313(14)=abb313(13)*abb313(3)
      abb313(15)=abb313(14)*spbl6k2
      abb313(16)=abb313(15)*abb313(2)
      abb313(17)=abb313(16)*spak1k7
      abb313(18)=spbk3k2*abb313(5)
      abb313(19)=abb313(10)*abb313(3)
      abb313(20)=abb313(18)*abb313(19)
      abb313(21)=spbl6k2*abb313(6)
      abb313(22)=abb313(21)*abb313(20)
      abb313(23)=spak1k7**2
      abb313(24)=abb313(23)*mB
      abb313(25)=abb313(24)*abb313(22)
      abb313(17)=abb313(17)+abb313(25)
      abb313(25)=c1+c3
      abb313(26)=abb313(2)*abb313(25)
      abb313(17)=-abb313(17)*abb313(26)
      abb313(27)=abb313(18)*spbl6k2
      abb313(28)=abb313(10)*abb313(6)
      abb313(29)=abb313(27)*abb313(28)
      abb313(30)=abb313(29)*abb313(24)
      abb313(31)=abb313(13)*spbl6k2
      abb313(32)=abb313(31)*abb313(2)
      abb313(33)=spak1k7*abb313(32)
      abb313(33)=abb313(30)+abb313(33)
      abb313(34)=c4*abb313(2)
      abb313(33)=abb313(33)*abb313(34)
      abb313(35)=abb313(3)**2
      abb313(30)=abb313(35)*abb313(30)
      abb313(36)=abb313(32)*abb313(35)
      abb313(37)=spak1k7*abb313(36)
      abb313(30)=abb313(30)+abb313(37)
      abb313(37)=c2*abb313(2)
      abb313(30)=abb313(30)*abb313(37)
      abb313(17)=abb313(30)+abb313(33)+abb313(17)
      abb313(30)=spbk2k1*spak2k4
      abb313(17)=abb313(17)*abb313(30)
      abb313(33)=abb313(24)*abb313(20)*spak3k4*abb313(6)
      abb313(38)=abb313(14)*spak3k4
      abb313(39)=abb313(2)*spak1k7
      abb313(40)=abb313(39)*abb313(38)
      abb313(33)=abb313(33)+abb313(40)
      abb313(33)=abb313(33)*abb313(26)
      abb313(40)=abb313(18)*spak3k4
      abb313(24)=abb313(24)*abb313(40)
      abb313(41)=-abb313(28)*abb313(24)
      abb313(42)=abb313(13)*spak3k4
      abb313(43)=-abb313(42)*abb313(39)
      abb313(41)=abb313(41)+abb313(43)
      abb313(41)=abb313(41)*abb313(34)
      abb313(43)=abb313(35)*abb313(28)
      abb313(24)=-abb313(24)*abb313(43)
      abb313(44)=abb313(42)*abb313(35)
      abb313(39)=-abb313(44)*abb313(39)
      abb313(24)=abb313(24)+abb313(39)
      abb313(24)=abb313(24)*abb313(37)
      abb313(24)=abb313(24)+abb313(41)+abb313(33)
      abb313(24)=spbk2k1*abb313(24)
      abb313(33)=abb313(35)*c2
      abb313(33)=abb313(33)+c4
      abb313(39)=abb313(33)*abb313(10)*spak1k7
      abb313(41)=-abb313(40)*abb313(39)
      abb313(45)=abb313(20)*spak1k7
      abb313(46)=spak3k4*abb313(25)
      abb313(47)=abb313(45)*abb313(46)
      abb313(41)=abb313(47)+abb313(41)
      abb313(47)=abb313(2)*mB
      abb313(41)=spal5k7*abb313(47)*abb313(41)
      abb313(24)=abb313(24)+abb313(41)
      abb313(24)=spbl6k3*abb313(24)
      abb313(41)=mB**2
      abb313(48)=abb313(41)*spak1k7
      abb313(49)=abb313(48)*abb313(11)
      abb313(50)=abb313(10)*abb313(7)
      abb313(51)=abb313(50)*abb313(6)
      abb313(52)=abb313(33)*abb313(51)*abb313(49)
      abb313(53)=spbk3k2**2
      abb313(54)=abb313(53)*spak3k4
      abb313(55)=abb313(54)*abb313(52)
      abb313(56)=abb313(6)*abb313(7)
      abb313(57)=abb313(48)*abb313(56)
      abb313(58)=abb313(57)*abb313(25)
      abb313(59)=abb313(19)*abb313(11)
      abb313(60)=abb313(54)*abb313(59)
      abb313(61)=abb313(60)*abb313(58)
      abb313(55)=abb313(55)-abb313(61)
      abb313(61)=abb313(2)**2
      abb313(62)=abb313(55)*abb313(61)
      abb313(63)=-es12*abb313(62)
      abb313(64)=abb313(31)*abb313(33)
      abb313(65)=abb313(15)*abb313(25)
      abb313(65)=abb313(64)-abb313(65)
      abb313(66)=abb313(65)*abb313(61)
      abb313(67)=spal5k7*spak2k4
      abb313(68)=abb313(66)*abb313(67)
      abb313(69)=abb313(42)*abb313(33)
      abb313(70)=abb313(14)*abb313(25)
      abb313(71)=spak3k4*abb313(70)
      abb313(71)=abb313(69)-abb313(71)
      abb313(72)=spbl6k3*spal5k7
      abb313(73)=-abb313(72)*abb313(61)*abb313(71)
      abb313(68)=abb313(68)+abb313(73)
      abb313(68)=spbl5k2*abb313(68)
      abb313(49)=-abb313(33)*abb313(50)*abb313(54)*abb313(49)
      abb313(73)=abb313(59)*abb313(25)
      abb313(74)=abb313(48)*spak3k4
      abb313(75)=abb313(74)*abb313(7)
      abb313(53)=abb313(73)*abb313(75)*abb313(53)
      abb313(49)=abb313(53)+abb313(49)
      abb313(49)=abb313(49)*spak2l5
      abb313(53)=-abb313(61)*abb313(49)
      abb313(39)=abb313(27)*abb313(39)
      abb313(45)=-abb313(45)*spbl6k2*abb313(25)
      abb313(39)=abb313(45)+abb313(39)
      abb313(39)=abb313(67)*abb313(47)*abb313(39)
      abb313(17)=abb313(53)+abb313(68)+abb313(24)+abb313(39)+abb313(63)+abb313(&
      &17)
      abb313(17)=8.0_ki*abb313(17)
      abb313(24)=abb313(71)*spbl6k3
      abb313(39)=spbk2k1*abb313(24)
      abb313(45)=abb313(30)*abb313(65)
      abb313(39)=abb313(39)-abb313(45)
      abb313(39)=spak1k7*abb313(39)
      abb313(45)=abb313(24)*spal5k7
      abb313(53)=abb313(65)*abb313(67)
      abb313(45)=abb313(45)-abb313(53)
      abb313(53)=abb313(45)*spbl5k2
      abb313(39)=abb313(53)+abb313(49)+abb313(39)
      abb313(49)=-es12*abb313(55)
      abb313(49)=abb313(49)-abb313(39)
      abb313(49)=16.0_ki*abb313(49)
      abb313(53)=spak1k7*mB
      abb313(61)=abb313(53)*abb313(28)
      abb313(63)=abb313(61)*abb313(27)
      abb313(32)=abb313(63)+abb313(32)
      abb313(32)=abb313(32)*abb313(34)
      abb313(68)=abb313(21)*abb313(53)
      abb313(76)=abb313(68)*abb313(20)
      abb313(16)=abb313(76)+abb313(16)
      abb313(16)=abb313(16)*abb313(26)
      abb313(63)=abb313(63)*abb313(35)
      abb313(36)=abb313(63)+abb313(36)
      abb313(36)=abb313(36)*abb313(37)
      abb313(16)=abb313(32)-abb313(16)+abb313(36)
      abb313(32)=abb313(16)*spak4k7
      abb313(36)=16.0_ki*abb313(32)
      abb313(63)=abb313(65)*spak4k7
      abb313(76)=32.0_ki*abb313(63)
      abb313(56)=abb313(56)*abb313(41)
      abb313(77)=abb313(20)*abb313(56)
      abb313(78)=abb313(77)*abb313(25)
      abb313(79)=abb313(51)*abb313(33)
      abb313(80)=abb313(79)*abb313(41)
      abb313(81)=-abb313(18)*abb313(80)
      abb313(78)=abb313(78)+abb313(81)
      abb313(78)=abb313(30)*abb313(23)*abb313(78)
      abb313(81)=abb313(48)*abb313(33)
      abb313(82)=abb313(18)*abb313(50)
      abb313(83)=abb313(81)*abb313(82)
      abb313(84)=abb313(48)*abb313(19)
      abb313(85)=abb313(7)*abb313(84)*abb313(18)
      abb313(86)=abb313(25)*abb313(85)
      abb313(83)=abb313(86)-abb313(83)
      abb313(86)=abb313(83)*abb313(67)
      abb313(32)=abb313(86)+abb313(78)+abb313(32)+abb313(62)
      abb313(32)=16.0_ki*abb313(32)
      abb313(62)=abb313(55)+abb313(63)
      abb313(78)=32.0_ki*abb313(62)
      abb313(86)=abb313(51)*abb313(18)
      abb313(87)=-abb313(86)*abb313(81)
      abb313(88)=abb313(20)*abb313(58)
      abb313(87)=abb313(88)+abb313(87)
      abb313(88)=abb313(87)*spak4k7
      abb313(88)=32.0_ki*abb313(88)
      abb313(89)=es712-es71
      abb313(90)=abb313(55)*abb313(89)
      abb313(39)=abb313(90)+abb313(39)
      abb313(39)=8.0_ki*abb313(39)
      abb313(63)=16.0_ki*abb313(63)
      abb313(62)=-16.0_ki*abb313(62)
      abb313(90)=abb313(11)*abb313(54)
      abb313(10)=abb313(10)*spak1l5
      abb313(91)=abb313(90)*abb313(10)
      abb313(92)=abb313(91)*abb313(2)
      abb313(61)=abb313(61)*abb313(5)
      abb313(93)=abb313(61)*abb313(54)
      abb313(92)=abb313(92)+abb313(93)
      abb313(37)=abb313(37)*abb313(35)
      abb313(34)=abb313(37)+abb313(34)
      abb313(37)=-abb313(92)*abb313(34)
      abb313(92)=abb313(54)*abb313(6)
      abb313(93)=abb313(19)*abb313(5)
      abb313(53)=abb313(53)*abb313(92)*abb313(93)
      abb313(60)=spak1l5*abb313(60)*abb313(2)
      abb313(53)=abb313(53)+abb313(60)
      abb313(53)=abb313(53)*abb313(26)
      abb313(37)=abb313(53)+abb313(37)
      abb313(37)=8.0_ki*abb313(37)
      abb313(53)=abb313(33)*abb313(91)
      abb313(60)=spak1l5*abb313(73)
      abb313(91)=abb313(54)*abb313(60)
      abb313(53)=abb313(53)-abb313(91)
      abb313(94)=-16.0_ki*abb313(53)
      abb313(53)=8.0_ki*abb313(53)
      abb313(95)=abb313(20)*abb313(57)
      abb313(96)=abb313(3)*abb313(47)
      abb313(97)=abb313(96)*abb313(7)
      abb313(98)=abb313(97)*abb313(13)
      abb313(99)=abb313(95)-abb313(98)
      abb313(100)=-abb313(99)*abb313(25)
      abb313(86)=abb313(86)*abb313(48)
      abb313(101)=abb313(47)*abb313(7)
      abb313(102)=-abb313(13)*abb313(101)
      abb313(102)=abb313(86)+abb313(102)
      abb313(102)=c4*abb313(102)
      abb313(103)=abb313(86)*abb313(35)
      abb313(35)=abb313(35)*abb313(13)
      abb313(104)=-abb313(35)*abb313(101)
      abb313(104)=abb313(103)+abb313(104)
      abb313(104)=c2*abb313(104)
      abb313(100)=abb313(104)+abb313(102)+abb313(100)
      abb313(100)=es12*abb313(100)
      abb313(102)=abb313(47)*abb313(31)
      abb313(104)=abb313(29)*abb313(48)
      abb313(102)=abb313(102)-abb313(104)
      abb313(102)=-abb313(102)*abb313(33)
      abb313(31)=abb313(96)*abb313(31)
      abb313(84)=abb313(84)*abb313(6)
      abb313(27)=abb313(84)*abb313(27)
      abb313(27)=abb313(31)-abb313(27)
      abb313(27)=abb313(27)*abb313(25)
      abb313(27)=abb313(100)+abb313(27)+abb313(102)
      abb313(27)=spak2k4*abb313(27)
      abb313(31)=abb313(96)*abb313(42)
      abb313(84)=abb313(84)*abb313(40)
      abb313(31)=abb313(31)-abb313(84)
      abb313(31)=-abb313(31)*abb313(25)
      abb313(84)=abb313(74)*abb313(18)
      abb313(100)=-abb313(28)*abb313(84)
      abb313(102)=abb313(42)*abb313(47)
      abb313(100)=abb313(100)+abb313(102)
      abb313(100)=c4*abb313(100)
      abb313(43)=-abb313(84)*abb313(43)
      abb313(84)=abb313(47)*abb313(44)
      abb313(43)=abb313(43)+abb313(84)
      abb313(43)=c2*abb313(43)
      abb313(31)=abb313(43)+abb313(100)+abb313(31)
      abb313(31)=spbl6k3*abb313(31)
      abb313(43)=abb313(41)*abb313(6)
      abb313(84)=abb313(43)*abb313(20)*abb313(46)
      abb313(28)=abb313(28)*abb313(33)
      abb313(100)=-abb313(40)*abb313(28)*abb313(41)
      abb313(84)=abb313(100)+abb313(84)
      abb313(72)=abb313(84)*abb313(72)
      abb313(22)=-abb313(22)*abb313(25)
      abb313(29)=abb313(29)*abb313(33)
      abb313(22)=abb313(29)+abb313(22)
      abb313(22)=abb313(67)*abb313(41)*abb313(22)
      abb313(22)=abb313(22)+abb313(72)
      abb313(22)=abb313(9)*abb313(22)
      abb313(29)=abb313(97)*abb313(42)
      abb313(67)=abb313(25)*abb313(29)
      abb313(69)=abb313(69)*abb313(101)
      abb313(67)=abb313(67)-abb313(69)
      abb313(69)=-spbk3k1*abb313(67)
      abb313(22)=abb313(69)+abb313(22)
      abb313(22)=spak1k2*abb313(22)
      abb313(69)=abb313(13)*abb313(33)
      abb313(72)=abb313(101)*abb313(69)
      abb313(84)=-abb313(98)*abb313(25)
      abb313(72)=abb313(84)+abb313(72)
      abb313(72)=spbl5k2*abb313(72)
      abb313(72)=abb313(83)+abb313(72)
      abb313(72)=spak2k4*abb313(72)
      abb313(67)=spbl5k3*abb313(67)
      abb313(67)=abb313(67)+abb313(72)
      abb313(67)=spak2l5*abb313(67)
      abb313(72)=abb313(65)*spak2k4
      abb313(24)=abb313(72)-abb313(24)
      abb313(72)=es71*abb313(24)
      abb313(83)=abb313(12)*spak3k4
      abb313(84)=-abb313(33)*abb313(57)*abb313(83)
      abb313(97)=abb313(12)*abb313(3)
      abb313(100)=abb313(97)*abb313(58)
      abb313(102)=spak3k4*abb313(100)
      abb313(84)=abb313(102)+abb313(84)
      abb313(102)=es12*abb313(84)
      abb313(104)=-abb313(81)*abb313(83)*abb313(7)
      abb313(97)=abb313(97)*abb313(25)
      abb313(75)=abb313(75)*abb313(97)
      abb313(75)=abb313(75)+abb313(104)
      abb313(104)=-spak2l5*abb313(75)
      abb313(102)=abb313(102)+abb313(104)
      abb313(102)=spbk7k3*abb313(102)
      abb313(45)=-spbk7l5*abb313(45)
      abb313(22)=abb313(45)+abb313(102)+abb313(72)+abb313(31)+abb313(67)+abb313&
      &(22)+abb313(27)
      abb313(22)=8.0_ki*abb313(22)
      abb313(27)=2.0_ki*abb313(101)
      abb313(31)=abb313(27)*abb313(13)
      abb313(31)=abb313(31)-abb313(86)
      abb313(31)=abb313(31)*c4
      abb313(27)=abb313(27)*abb313(35)
      abb313(27)=abb313(27)-abb313(103)
      abb313(27)=abb313(27)*c2
      abb313(45)=-abb313(95)+2.0_ki*abb313(98)
      abb313(45)=abb313(25)*abb313(45)
      abb313(27)=-abb313(45)+abb313(31)+abb313(27)
      abb313(27)=abb313(27)*spak2k4
      abb313(31)=abb313(33)*abb313(47)
      abb313(45)=abb313(25)*abb313(96)
      abb313(31)=abb313(31)-abb313(45)
      abb313(31)=abb313(31)*abb313(12)*abb313(21)
      abb313(45)=abb313(31)*spak1k4
      abb313(67)=abb313(70)-abb313(69)
      abb313(69)=abb313(67)*spbk7l6
      abb313(70)=abb313(69)*spak4k7
      abb313(45)=abb313(45)+abb313(70)
      abb313(27)=abb313(27)-abb313(45)
      abb313(27)=16.0_ki*abb313(27)
      abb313(70)=abb313(41)*abb313(7)
      abb313(14)=abb313(70)*abb313(14)
      abb313(14)=abb313(14)-abb313(99)
      abb313(14)=-abb313(14)*abb313(25)
      abb313(72)=abb313(70)+abb313(101)
      abb313(13)=abb313(13)*abb313(72)
      abb313(13)=-abb313(86)+abb313(13)
      abb313(13)=c4*abb313(13)
      abb313(35)=abb313(35)*abb313(72)
      abb313(35)=-abb313(103)+abb313(35)
      abb313(35)=c2*abb313(35)
      abb313(72)=abb313(43)*abb313(9)
      abb313(86)=-abb313(65)*abb313(72)
      abb313(13)=abb313(86)+abb313(35)+abb313(13)+abb313(14)
      abb313(13)=spak2k4*abb313(13)
      abb313(13)=-abb313(45)+abb313(13)
      abb313(13)=16.0_ki*abb313(13)
      abb313(14)=abb313(56)*abb313(97)
      abb313(35)=abb313(33)*abb313(56)*abb313(12)
      abb313(35)=abb313(35)-abb313(14)
      abb313(45)=abb313(35)*spak1k4
      abb313(45)=32.0_ki*abb313(45)
      abb313(86)=abb313(56)*abb313(73)
      abb313(54)=-abb313(54)*abb313(86)
      abb313(95)=abb313(90)*abb313(80)
      abb313(54)=abb313(95)+abb313(54)
      abb313(54)=spak1k2*abb313(54)
      abb313(24)=abb313(54)-abb313(24)
      abb313(24)=8.0_ki*abb313(24)
      abb313(18)=abb313(18)*abb313(10)*abb313(33)
      abb313(20)=-abb313(20)*spak1l5*abb313(25)
      abb313(18)=abb313(20)+abb313(18)
      abb313(18)=spak2k4*abb313(18)
      abb313(20)=-spbk7k3*abb313(71)
      abb313(18)=abb313(18)+abb313(20)
      abb313(18)=8.0_ki*abb313(18)
      abb313(20)=abb313(67)*spak2k4
      abb313(54)=spbl5k2*abb313(20)
      abb313(95)=spbl5k3*abb313(71)
      abb313(54)=abb313(54)+abb313(95)
      abb313(54)=8.0_ki*abb313(54)
      abb313(89)=abb313(89)-es12
      abb313(95)=8.0_ki*abb313(89)
      abb313(75)=-abb313(75)*abb313(95)
      abb313(96)=abb313(33)*abb313(12)
      abb313(98)=abb313(96)-abb313(97)
      abb313(98)=spak1k2*abb313(70)*abb313(98)
      abb313(99)=spak3k4*abb313(98)
      abb313(102)=spbl6l5*abb313(71)
      abb313(99)=abb313(99)+abb313(102)
      abb313(99)=8.0_ki*abb313(99)
      abb313(12)=abb313(12)*abb313(81)
      abb313(81)=abb313(97)*abb313(48)
      abb313(12)=abb313(12)-abb313(81)
      abb313(12)=-spak2k4*abb313(95)*abb313(7)*abb313(12)
      abb313(81)=-spak2k4*abb313(98)
      abb313(97)=spbl6l5*abb313(20)
      abb313(81)=abb313(81)+abb313(97)
      abb313(81)=8.0_ki*abb313(81)
      abb313(97)=16.0_ki*abb313(67)
      abb313(16)=spak3k7*abb313(16)
      abb313(10)=abb313(10)*abb313(11)
      abb313(98)=abb313(10)*spbl6k2
      abb313(102)=abb313(98)*abb313(2)
      abb313(61)=abb313(61)*spbl6k2
      abb313(61)=abb313(102)+abb313(61)
      abb313(34)=abb313(61)*abb313(34)
      abb313(61)=spbl6k2*spak1l5
      abb313(102)=abb313(2)*abb313(59)*abb313(61)
      abb313(68)=abb313(68)*abb313(93)
      abb313(68)=abb313(102)+abb313(68)
      abb313(26)=abb313(26)*abb313(68)
      abb313(26)=-abb313(26)+abb313(34)
      abb313(34)=spbk4k2*spak4k7
      abb313(68)=abb313(26)*abb313(34)
      abb313(16)=abb313(68)+abb313(16)
      abb313(16)=8.0_ki*abb313(16)
      abb313(68)=abb313(65)*spak3k7
      abb313(98)=-abb313(98)*abb313(33)
      abb313(61)=abb313(61)*abb313(73)
      abb313(61)=abb313(61)+abb313(98)
      abb313(98)=abb313(61)*abb313(34)
      abb313(68)=abb313(68)-abb313(98)
      abb313(98)=16.0_ki*abb313(68)
      abb313(87)=spak3k7*abb313(87)
      abb313(102)=abb313(48)*abb313(5)
      abb313(79)=abb313(79)*abb313(102)
      abb313(103)=abb313(58)*abb313(93)
      abb313(79)=abb313(79)-abb313(103)
      abb313(103)=-abb313(79)*abb313(34)
      abb313(87)=abb313(103)+abb313(87)
      abb313(87)=16.0_ki*abb313(87)
      abb313(68)=-8.0_ki*abb313(68)
      abb313(103)=abb313(47)*abb313(11)
      abb313(104)=abb313(28)*abb313(103)*spbl6k2
      abb313(21)=abb313(73)*abb313(21)*abb313(47)
      abb313(21)=abb313(104)-abb313(21)
      abb313(21)=abb313(21)*spak1k4
      abb313(104)=-spbk4k2*abb313(21)
      abb313(105)=2.0_ki*spak1l5
      abb313(50)=abb313(105)*abb313(50)
      abb313(103)=abb313(50)*abb313(103)
      abb313(102)=abb313(51)*abb313(102)
      abb313(102)=abb313(102)-abb313(103)
      abb313(102)=-abb313(102)*abb313(33)
      abb313(103)=abb313(105)*abb313(101)
      abb313(105)=abb313(103)*abb313(59)
      abb313(93)=abb313(93)*abb313(57)
      abb313(93)=abb313(93)-abb313(105)
      abb313(93)=abb313(25)*abb313(93)
      abb313(93)=abb313(93)+abb313(102)
      abb313(102)=es34*abb313(93)
      abb313(50)=abb313(8)*abb313(50)*abb313(47)
      abb313(48)=abb313(51)*abb313(48)
      abb313(48)=abb313(50)-abb313(48)
      abb313(48)=-abb313(48)*abb313(33)
      abb313(50)=abb313(103)*abb313(8)
      abb313(50)=abb313(50)-abb313(57)
      abb313(19)=abb313(25)*abb313(50)*abb313(19)
      abb313(10)=abb313(10)*abb313(33)
      abb313(10)=abb313(10)-abb313(60)
      abb313(50)=abb313(10)*spbk7l6
      abb313(34)=abb313(34)*abb313(50)
      abb313(51)=-spak3k7*abb313(69)
      abb313(60)=-spak1k3*abb313(31)
      abb313(19)=abb313(102)+abb313(60)+abb313(51)+abb313(34)+abb313(104)+abb31&
      &3(19)+abb313(48)
      abb313(19)=8.0_ki*abb313(19)
      abb313(34)=spak1k3*abb313(35)
      abb313(11)=abb313(11)*abb313(80)
      abb313(11)=abb313(11)-abb313(86)
      abb313(48)=abb313(11)*spak1k4
      abb313(51)=spbk4k2*abb313(48)
      abb313(34)=abb313(51)+abb313(34)
      abb313(34)=16.0_ki*abb313(34)
      abb313(10)=8.0_ki*abb313(10)
      abb313(51)=-spbk4k2*abb313(10)
      abb313(60)=spbk4k3*spak4k7
      abb313(26)=-abb313(26)*abb313(60)
      abb313(86)=abb313(89)*abb313(31)*spak1k7
      abb313(66)=-spak2k7*abb313(66)
      abb313(26)=abb313(66)+abb313(26)+abb313(86)
      abb313(26)=8.0_ki*abb313(26)
      abb313(65)=abb313(65)*spak2k7
      abb313(61)=abb313(61)*abb313(60)
      abb313(61)=abb313(65)-abb313(61)
      abb313(65)=-16.0_ki*abb313(61)
      abb313(57)=abb313(96)*abb313(57)
      abb313(57)=abb313(100)-abb313(57)
      abb313(57)=-abb313(57)*abb313(89)
      abb313(66)=16.0_ki*abb313(57)
      abb313(79)=abb313(79)*abb313(60)
      abb313(79)=abb313(79)-abb313(57)
      abb313(79)=16.0_ki*abb313(79)
      abb313(61)=8.0_ki*abb313(61)
      abb313(86)=-spak2k4*abb313(93)
      abb313(21)=abb313(21)+abb313(86)
      abb313(21)=spbk4k3*abb313(21)
      abb313(31)=spak1k2*abb313(31)
      abb313(50)=-abb313(60)*abb313(50)
      abb313(60)=spak2k7*abb313(69)
      abb313(21)=abb313(60)+abb313(50)+abb313(31)+abb313(21)
      abb313(21)=8.0_ki*abb313(21)
      abb313(31)=abb313(35)*spak1k2
      abb313(50)=16.0_ki*abb313(31)
      abb313(48)=-spbk4k3*abb313(48)
      abb313(48)=-abb313(31)+abb313(48)
      abb313(48)=16.0_ki*abb313(48)
      abb313(10)=spbk4k3*abb313(10)
      abb313(58)=abb313(59)*abb313(58)
      abb313(52)=-abb313(52)+abb313(58)
      abb313(58)=8.0_ki*spbk4k2
      abb313(59)=abb313(52)*abb313(89)*abb313(58)
      abb313(11)=abb313(11)*spak1k2
      abb313(58)=-abb313(11)*abb313(58)
      abb313(52)=-abb313(52)*spbk4k3*abb313(95)
      abb313(60)=8.0_ki*spbk4k3
      abb313(11)=abb313(11)*abb313(60)
      abb313(60)=8.0_ki*abb313(67)
      abb313(57)=8.0_ki*abb313(57)
      abb313(31)=-8.0_ki*abb313(31)
      abb313(55)=-8.0_ki*abb313(55)
      abb313(28)=abb313(28)*abb313(90)
      abb313(41)=-abb313(41)*spak1l5*abb313(28)
      abb313(43)=abb313(43)*abb313(91)
      abb313(41)=abb313(43)+abb313(41)
      abb313(41)=8.0_ki*abb313(9)*abb313(41)
      abb313(43)=-abb313(77)*abb313(46)
      abb313(40)=abb313(40)*abb313(80)
      abb313(40)=abb313(43)+abb313(40)
      abb313(23)=spbk2k1*abb313(23)*abb313(40)
      abb313(40)=abb313(82)*abb313(74)*abb313(33)
      abb313(43)=-abb313(85)*abb313(46)
      abb313(40)=abb313(43)+abb313(40)
      abb313(40)=spal5k7*abb313(40)
      abb313(23)=abb313(23)+abb313(40)
      abb313(23)=8.0_ki*abb313(23)
      abb313(40)=-c4*abb313(42)
      abb313(42)=-c2*abb313(44)
      abb313(40)=abb313(42)+abb313(40)
      abb313(42)=abb313(70)-abb313(101)
      abb313(40)=abb313(42)*abb313(40)
      abb313(38)=abb313(70)*abb313(38)
      abb313(29)=abb313(38)-abb313(29)
      abb313(25)=abb313(29)*abb313(25)
      abb313(29)=spak3k4*abb313(64)
      abb313(15)=-abb313(15)*abb313(46)
      abb313(15)=abb313(15)+abb313(29)
      abb313(15)=abb313(15)*abb313(72)
      abb313(15)=abb313(15)+abb313(25)+abb313(40)
      abb313(15)=8.0_ki*abb313(15)
      abb313(25)=abb313(92)*abb313(73)
      abb313(25)=abb313(25)-abb313(28)
      abb313(25)=abb313(47)*abb313(25)
      abb313(28)=abb313(67)*abb313(30)
      abb313(29)=spbk3k1*abb313(71)
      abb313(25)=abb313(29)+abb313(28)+abb313(25)
      abb313(25)=8.0_ki*abb313(25)
      abb313(28)=-abb313(84)*spbk2k1*abb313(95)
      abb313(14)=-spak3k4*abb313(14)
      abb313(29)=abb313(83)*abb313(56)*abb313(33)
      abb313(14)=abb313(29)+abb313(14)
      abb313(14)=es12*abb313(14)
      abb313(29)=-spbl6k1*abb313(71)
      abb313(14)=abb313(14)+abb313(29)
      abb313(14)=8.0_ki*abb313(14)
      abb313(29)=-abb313(30)*abb313(57)
      abb313(30)=-es12*spak2k4*abb313(35)
      abb313(20)=-spbl6k1*abb313(20)
      abb313(20)=abb313(30)+abb313(20)
      abb313(20)=8.0_ki*abb313(20)
      R2d313=0.0_ki
      rat2 = rat2 + R2d313
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='313' value='", &
          & R2d313, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd313h6