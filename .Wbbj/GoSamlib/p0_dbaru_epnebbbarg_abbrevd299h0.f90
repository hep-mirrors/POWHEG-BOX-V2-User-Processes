module     p0_dbaru_epnebbbarg_abbrevd299h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(104), public :: abb299
   complex(ki), public :: R2d299
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
      abb299(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb299(2)=sqrt(mB**2)
      abb299(3)=NC**(-1)
      abb299(4)=spak2l5**(-1)
      abb299(5)=spbl5k2**(-1)
      abb299(6)=spbl6k2**(-1)
      abb299(7)=spak2l6**(-1)
      abb299(8)=mB**2
      abb299(9)=abb299(8)*spbe7k2
      abb299(10)=TR*gW
      abb299(10)=abb299(10)**2
      abb299(11)=abb299(10)*abb299(1)
      abb299(12)=abb299(11)*abb299(2)
      abb299(13)=i_*CVDU
      abb299(14)=abb299(13)*abb299(5)
      abb299(15)=abb299(14)*abb299(9)*abb299(12)
      abb299(16)=abb299(3)**2
      abb299(17)=abb299(16)*c2
      abb299(18)=abb299(17)+c4
      abb299(19)=abb299(18)*abb299(15)
      abb299(20)=c1+c3
      abb299(10)=abb299(1)*abb299(10)*abb299(3)
      abb299(21)=abb299(20)*spbe7k2*abb299(14)*abb299(10)
      abb299(22)=abb299(8)*abb299(2)
      abb299(23)=abb299(22)*abb299(21)
      abb299(19)=abb299(19)-abb299(23)
      abb299(23)=spbk7k3*spal6k7
      abb299(24)=spae7k7*spak1l5
      abb299(25)=abb299(24)*spbk7k2
      abb299(26)=abb299(23)*abb299(25)
      abb299(27)=abb299(19)*abb299(26)
      abb299(28)=abb299(13)*spbk3k2*abb299(11)
      abb299(29)=abb299(20)*abb299(28)*abb299(3)
      abb299(30)=abb299(2)*abb299(29)
      abb299(31)=-spbe7k2*abb299(30)
      abb299(32)=abb299(18)*abb299(28)*spbe7k2
      abb299(33)=abb299(2)*abb299(32)
      abb299(31)=abb299(33)+abb299(31)
      abb299(33)=abb299(25)*abb299(6)
      abb299(31)=abb299(33)*abb299(5)*abb299(31)*mB**4
      abb299(34)=abb299(22)*abb299(5)
      abb299(32)=abb299(34)*abb299(32)
      abb299(35)=abb299(34)*abb299(29)
      abb299(36)=abb299(35)*spbe7k2
      abb299(32)=abb299(32)-abb299(36)
      abb299(36)=abb299(25)*spak2l6
      abb299(37)=-abb299(32)*abb299(36)
      abb299(27)=abb299(37)+abb299(31)+abb299(27)
      abb299(31)=abb299(4)*spak2k4
      abb299(27)=abb299(27)*abb299(31)
      abb299(37)=abb299(28)*abb299(18)
      abb299(38)=abb299(37)-abb299(29)
      abb299(39)=abb299(38)*abb299(22)
      abb299(40)=abb299(6)*spak4l5
      abb299(41)=abb299(39)*abb299(40)
      abb299(42)=-abb299(25)*abb299(41)
      abb299(43)=abb299(12)*abb299(13)
      abb299(44)=abb299(18)*abb299(43)
      abb299(45)=abb299(13)*abb299(3)
      abb299(12)=abb299(12)*abb299(45)
      abb299(46)=abb299(12)*abb299(20)
      abb299(47)=abb299(44)-abb299(46)
      abb299(48)=abb299(47)*spak4l5
      abb299(49)=-abb299(48)*abb299(26)
      abb299(50)=abb299(2)*abb299(37)
      abb299(50)=abb299(50)-abb299(30)
      abb299(51)=abb299(50)*spak4l5
      abb299(52)=abb299(36)*abb299(51)
      abb299(42)=abb299(52)+abb299(42)+abb299(49)
      abb299(42)=spbe7l5*abb299(42)
      abb299(49)=abb299(22)*spak1k4
      abb299(52)=-abb299(49)*abb299(29)
      abb299(53)=abb299(18)*abb299(28)*spak1k4
      abb299(54)=abb299(22)*abb299(53)
      abb299(52)=abb299(54)+abb299(52)
      abb299(54)=-abb299(52)*abb299(33)
      abb299(46)=-spak1k4*abb299(46)
      abb299(55)=spak1k4*abb299(18)
      abb299(56)=abb299(43)*abb299(55)
      abb299(46)=abb299(56)+abb299(46)
      abb299(26)=-abb299(46)*abb299(26)
      abb299(56)=-abb299(2)*abb299(53)
      abb299(30)=spak1k4*abb299(30)
      abb299(30)=abb299(30)+abb299(56)
      abb299(56)=-abb299(30)*abb299(36)
      abb299(26)=abb299(56)+abb299(54)+abb299(26)
      abb299(26)=spbe7k1*abb299(26)
      abb299(54)=abb299(28)*spak1e7
      abb299(56)=abb299(54)*spbe7k2
      abb299(57)=mB**3
      abb299(58)=abb299(40)*abb299(57)*abb299(56)
      abb299(59)=c3*abb299(3)
      abb299(60)=c1*abb299(3)
      abb299(17)=-abb299(17)+abb299(59)+abb299(60)-c4
      abb299(61)=abb299(2)**2
      abb299(62)=abb299(17)*abb299(61)
      abb299(63)=abb299(62)*abb299(58)
      abb299(62)=abb299(62)*spak4l5
      abb299(64)=spak1e7*abb299(11)
      abb299(13)=abb299(13)*mB
      abb299(65)=abb299(64)*abb299(13)
      abb299(66)=spbe7k2*abb299(65)
      abb299(67)=abb299(66)*abb299(62)
      abb299(59)=abb299(59)+abb299(60)
      abb299(60)=spak1k4*abb299(59)
      abb299(60)=abb299(55)-abb299(60)
      abb299(68)=abb299(60)*spbk2k1
      abb299(14)=abb299(14)*mB
      abb299(69)=abb299(14)*abb299(64)
      abb299(70)=abb299(69)*spbe7k2
      abb299(71)=abb299(70)*abb299(61)
      abb299(72)=abb299(71)*abb299(68)
      abb299(67)=abb299(67)+abb299(72)
      abb299(67)=abb299(67)*abb299(23)
      abb299(72)=abb299(56)*mB
      abb299(62)=-abb299(72)*abb299(62)
      abb299(73)=abb299(5)*mB
      abb299(74)=abb299(54)*abb299(73)
      abb299(75)=abb299(74)*spbe7k2
      abb299(76)=abb299(75)*abb299(61)
      abb299(77)=-abb299(76)*abb299(68)
      abb299(62)=abb299(62)+abb299(77)
      abb299(62)=spak2l6*abb299(62)
      abb299(77)=spbk2k1*abb299(6)
      abb299(60)=abb299(60)*abb299(77)
      abb299(78)=abb299(57)*abb299(5)
      abb299(56)=abb299(78)*abb299(56)
      abb299(79)=abb299(56)*abb299(61)
      abb299(80)=abb299(79)*abb299(60)
      abb299(26)=abb299(26)+abb299(42)+abb299(27)+abb299(62)+abb299(67)+abb299(&
      &63)+abb299(80)
      abb299(26)=4.0_ki*abb299(26)
      abb299(27)=abb299(40)*abb299(57)
      abb299(40)=abb299(38)*abb299(27)
      abb299(42)=-abb299(78)*abb299(53)
      abb299(62)=abb299(78)*spak1k4
      abb299(63)=abb299(62)*abb299(29)
      abb299(42)=abb299(63)+abb299(42)
      abb299(63)=abb299(42)*abb299(77)
      abb299(40)=abb299(40)+abb299(63)
      abb299(63)=abb299(10)*abb299(20)
      abb299(67)=abb299(11)*abb299(18)
      abb299(63)=abb299(63)-abb299(67)
      abb299(67)=spak4l5*abb299(63)*abb299(13)
      abb299(14)=abb299(63)*abb299(14)
      abb299(63)=spbk2k1*spak1k4*abb299(14)
      abb299(67)=abb299(67)-abb299(63)
      abb299(80)=abb299(23)*abb299(67)
      abb299(80)=abb299(80)-abb299(40)
      abb299(80)=spak1k7*spbk7k2*abb299(80)
      abb299(81)=-abb299(52)*abb299(77)
      abb299(82)=-spbk2k1*abb299(46)*abb299(23)
      abb299(81)=abb299(81)+abb299(82)
      abb299(81)=spak1l5*abb299(81)
      abb299(82)=spak4l5*abb299(38)*mB
      abb299(83)=abb299(73)*abb299(29)
      abb299(84)=spak1k4*abb299(83)
      abb299(73)=abb299(28)*abb299(73)
      abb299(85)=abb299(73)*abb299(55)
      abb299(84)=abb299(84)-abb299(85)
      abb299(85)=abb299(84)*spbk2k1
      abb299(82)=abb299(82)+abb299(85)
      abb299(85)=spak1k7*spbk7k2
      abb299(86)=abb299(82)*abb299(85)
      abb299(87)=abb299(30)*spak1l5
      abb299(88)=-spbk2k1*abb299(87)
      abb299(86)=abb299(88)+abb299(86)
      abb299(86)=spak2l6*abb299(86)
      abb299(88)=abb299(23)*abb299(48)
      abb299(41)=abb299(41)+abb299(88)
      abb299(41)=spak1l5*abb299(41)
      abb299(50)=abb299(50)*spak1l5
      abb299(88)=abb299(50)*spak4l5
      abb299(89)=-spak2l6*abb299(88)
      abb299(41)=abb299(89)+abb299(41)
      abb299(41)=spbl5k2*abb299(41)
      abb299(41)=abb299(41)+abb299(86)+abb299(80)+abb299(81)
      abb299(41)=8.0_ki*abb299(41)
      abb299(80)=-abb299(17)*spak4l5
      abb299(72)=-abb299(72)*abb299(80)
      abb299(81)=abb299(75)*abb299(59)
      abb299(86)=abb299(81)*spak1k4
      abb299(89)=abb299(55)*abb299(75)
      abb299(86)=abb299(89)-abb299(86)
      abb299(86)=abb299(86)*spbk2k1
      abb299(72)=abb299(72)+abb299(86)
      abb299(72)=abb299(72)*spak2l6
      abb299(86)=abb299(70)*abb299(68)
      abb299(66)=-abb299(66)*abb299(80)
      abb299(66)=abb299(86)+abb299(66)
      abb299(66)=abb299(66)*abb299(23)
      abb299(58)=abb299(17)*abb299(58)
      abb299(80)=abb299(47)*abb299(25)
      abb299(86)=abb299(80)*spbe7k3
      abb299(89)=abb299(86)*spak4l6
      abb299(76)=abb299(76)*abb299(17)
      abb299(90)=abb299(76)*spak4l6
      abb299(89)=abb299(89)-abb299(90)
      abb299(60)=abb299(56)*abb299(60)
      abb299(58)=-abb299(72)+abb299(66)-abb299(89)+abb299(60)+abb299(58)
      abb299(60)=-8.0_ki*abb299(58)
      abb299(66)=-abb299(73)*abb299(18)
      abb299(66)=abb299(83)+abb299(66)
      abb299(72)=abb299(66)*spak4l6
      abb299(73)=abb299(72)*spak1k7
      abb299(83)=abb299(73)*spbk7k2
      abb299(50)=abb299(50)*spak4l6
      abb299(83)=abb299(83)+abb299(50)
      abb299(91)=16.0_ki*abb299(83)
      abb299(75)=-abb299(75)*abb299(18)
      abb299(75)=abb299(81)+abb299(75)
      abb299(81)=abb299(75)*spak4l6
      abb299(92)=16.0_ki*abb299(81)
      abb299(89)=8.0_ki*abb299(89)
      abb299(93)=abb299(54)*abb299(59)
      abb299(94)=-abb299(54)*abb299(18)
      abb299(94)=abb299(93)+abb299(94)
      abb299(95)=spak4l5*mB*abb299(94)
      abb299(96)=abb299(74)*abb299(59)
      abb299(97)=-spak1k4*abb299(96)
      abb299(98)=abb299(74)*abb299(55)
      abb299(97)=abb299(98)+abb299(97)
      abb299(97)=abb299(97)*spbk2k1
      abb299(97)=abb299(97)+abb299(95)
      abb299(98)=spal6k7*spbk7e7
      abb299(99)=-abb299(97)*abb299(98)
      abb299(27)=abb299(94)*abb299(27)
      abb299(62)=abb299(93)*abb299(62)
      abb299(54)=abb299(78)*abb299(54)
      abb299(94)=abb299(55)*abb299(54)
      abb299(62)=abb299(94)-abb299(62)
      abb299(62)=abb299(62)*abb299(77)
      abb299(27)=abb299(27)+abb299(62)
      abb299(62)=abb299(27)*abb299(98)
      abb299(77)=abb299(17)*abb299(79)
      abb299(79)=-spak4l6*abb299(6)*abb299(77)
      abb299(62)=abb299(79)+abb299(62)
      abb299(62)=abb299(7)*abb299(62)
      abb299(79)=abb299(80)*spak4l6
      abb299(80)=abb299(47)*abb299(8)
      abb299(94)=abb299(7)*abb299(6)
      abb299(100)=abb299(94)*spak4l6
      abb299(25)=abb299(80)*abb299(25)*abb299(100)
      abb299(25)=-abb299(79)+abb299(25)
      abb299(25)=spbe7k3*abb299(25)
      abb299(25)=abb299(25)+abb299(62)+abb299(90)+abb299(99)
      abb299(25)=8.0_ki*abb299(25)
      abb299(40)=-abb299(7)*abb299(40)
      abb299(40)=abb299(40)+abb299(82)
      abb299(40)=spak1l6*abb299(40)
      abb299(38)=abb299(38)*abb299(78)
      abb299(62)=abb299(38)*abb299(100)
      abb299(62)=abb299(72)+abb299(62)
      abb299(62)=abb299(62)*abb299(85)
      abb299(39)=-spak1l5*abb299(39)*abb299(100)
      abb299(39)=abb299(40)+abb299(62)+abb299(50)+abb299(39)
      abb299(39)=16.0_ki*abb299(39)
      abb299(40)=abb299(17)*abb299(56)
      abb299(50)=abb299(40)*abb299(100)
      abb299(50)=abb299(50)-abb299(81)
      abb299(56)=16.0_ki*abb299(50)
      abb299(58)=-4.0_ki*abb299(58)
      abb299(62)=-8.0_ki*abb299(83)
      abb299(79)=8.0_ki*abb299(81)
      abb299(50)=8.0_ki*abb299(50)
      abb299(81)=4.0_ki*abb299(81)
      abb299(83)=abb299(61)*abb299(74)
      abb299(85)=abb299(17)*abb299(83)
      abb299(90)=spbl6k2*spak4l6
      abb299(99)=spak4k7*spbk7k2
      abb299(100)=abb299(90)+abb299(99)
      abb299(101)=abb299(85)*abb299(100)
      abb299(95)=abb299(61)*abb299(95)
      abb299(68)=abb299(83)*abb299(68)
      abb299(68)=abb299(95)+abb299(68)+abb299(101)
      abb299(68)=4.0_ki*abb299(68)
      abb299(74)=abb299(74)*abb299(18)
      abb299(74)=abb299(74)-abb299(96)
      abb299(83)=abb299(99)*abb299(74)
      abb299(95)=abb299(74)*spak4l6
      abb299(96)=abb299(95)*spbl6k2
      abb299(83)=-abb299(97)+abb299(83)+abb299(96)
      abb299(96)=8.0_ki*abb299(83)
      abb299(83)=4.0_ki*abb299(83)
      abb299(59)=-abb299(59)*abb299(69)*spak1k4
      abb299(101)=abb299(69)*abb299(55)
      abb299(59)=abb299(101)+abb299(59)
      abb299(59)=abb299(59)*spbk2k1
      abb299(65)=-spak4l5*abb299(17)*abb299(65)
      abb299(59)=abb299(59)-abb299(65)
      abb299(65)=4.0_ki*spbk7e7
      abb299(101)=-abb299(65)*abb299(59)
      abb299(23)=abb299(23)*abb299(101)
      abb299(67)=8.0_ki*abb299(67)
      abb299(102)=-spak1l6*spbk7k3*abb299(67)
      abb299(103)=abb299(74)*spbk7e7
      abb299(104)=8.0_ki*spak4l6*abb299(103)
      abb299(31)=abb299(32)*abb299(31)
      abb299(32)=-abb299(90)*abb299(47)*spbe7k3
      abb299(51)=-spbe7l5*abb299(51)
      abb299(90)=spbe7k1*abb299(30)
      abb299(31)=abb299(90)+abb299(51)+abb299(32)+abb299(31)
      abb299(31)=abb299(24)*abb299(31)
      abb299(32)=-spak4k7*abb299(86)
      abb299(31)=abb299(32)+abb299(31)
      abb299(31)=4.0_ki*abb299(31)
      abb299(32)=abb299(66)*abb299(99)
      abb299(32)=-abb299(82)+abb299(32)
      abb299(32)=spak1k7*abb299(32)
      abb299(51)=spbl6k2*abb299(73)
      abb299(32)=abb299(51)+abb299(32)
      abb299(32)=8.0_ki*abb299(32)
      abb299(51)=abb299(103)*spak4k7
      abb299(82)=4.0_ki*abb299(51)
      abb299(86)=8.0_ki*abb299(88)
      abb299(88)=abb299(47)*spak1l5
      abb299(90)=8.0_ki*abb299(88)*abb299(100)
      abb299(61)=abb299(61)*abb299(59)
      abb299(80)=-spak4l5*abb299(80)*abb299(94)
      abb299(80)=abb299(48)+abb299(80)
      abb299(80)=spak1k2*abb299(80)
      abb299(8)=abb299(94)*abb299(8)
      abb299(8)=-1.0_ki+abb299(8)
      abb299(8)=spak2l5*abb299(46)*abb299(8)
      abb299(8)=abb299(8)+abb299(80)
      abb299(8)=abb299(8)*spae7k7*spbk7k2
      abb299(80)=abb299(46)*spal5l6
      abb299(99)=abb299(48)*spak1l6
      abb299(80)=abb299(80)+abb299(99)
      abb299(99)=-spbk7l6*spae7k7*abb299(80)
      abb299(8)=abb299(99)+abb299(8)+abb299(61)
      abb299(8)=spbe7k3*abb299(8)
      abb299(61)=spak1k2*spak4l5
      abb299(19)=-abb299(4)*abb299(19)*abb299(61)
      abb299(21)=-abb299(49)*abb299(21)
      abb299(15)=abb299(15)*abb299(55)
      abb299(15)=abb299(19)+abb299(15)+abb299(21)
      abb299(15)=spae7k7*abb299(15)
      abb299(19)=-spbe7l5*abb299(48)
      abb299(21)=-spbe7k1*abb299(46)
      abb299(19)=abb299(21)+abb299(19)
      abb299(19)=abb299(24)*abb299(19)
      abb299(15)=abb299(19)+abb299(15)
      abb299(15)=spbk7k3*abb299(15)
      abb299(19)=-abb299(7)*abb299(27)
      abb299(19)=abb299(97)+abb299(19)
      abb299(19)=spak2k7*spbk7e7*abb299(19)
      abb299(21)=-abb299(77)*abb299(94)
      abb299(21)=abb299(21)+abb299(76)
      abb299(21)=spak2k4*abb299(21)
      abb299(27)=-spak4k7*spbk7e7
      abb299(49)=spbe7l6*spak4l6
      abb299(27)=abb299(49)+abb299(27)
      abb299(27)=abb299(85)*abb299(27)
      abb299(8)=abb299(19)+abb299(21)+abb299(8)+abb299(15)+abb299(27)
      abb299(8)=4.0_ki*abb299(8)
      abb299(13)=2.0_ki*abb299(13)
      abb299(11)=abb299(13)*abb299(11)
      abb299(11)=abb299(11)+abb299(43)
      abb299(11)=-abb299(11)*abb299(18)
      abb299(10)=abb299(13)*abb299(10)
      abb299(10)=abb299(10)+abb299(12)
      abb299(10)=abb299(10)*abb299(20)
      abb299(10)=abb299(10)+abb299(11)
      abb299(10)=spak4l5*abb299(10)
      abb299(10)=abb299(10)-2.0_ki*abb299(63)
      abb299(10)=spbk7k3*abb299(10)
      abb299(11)=abb299(38)*abb299(94)
      abb299(11)=abb299(11)+abb299(66)
      abb299(12)=abb299(11)*spak2k4
      abb299(13)=spbk7k2*abb299(12)
      abb299(10)=abb299(13)+abb299(10)
      abb299(10)=spak1k7*abb299(10)
      abb299(13)=c4*abb299(28)
      abb299(15)=abb299(16)*abb299(28)
      abb299(19)=c2*abb299(15)
      abb299(13)=abb299(19)+abb299(13)-abb299(29)
      abb299(19)=abb299(22)+abb299(57)
      abb299(13)=abb299(94)*abb299(19)*abb299(13)
      abb299(19)=abb299(28)*abb299(2)
      abb299(21)=-mB*abb299(28)
      abb299(21)=abb299(21)-abb299(19)
      abb299(21)=c4*abb299(21)
      abb299(15)=-mB*abb299(15)
      abb299(16)=-abb299(16)*abb299(19)
      abb299(15)=abb299(15)+abb299(16)
      abb299(15)=c2*abb299(15)
      abb299(16)=mB+abb299(2)
      abb299(16)=abb299(16)*abb299(29)
      abb299(13)=abb299(13)+abb299(15)+abb299(21)+abb299(16)
      abb299(13)=abb299(13)*abb299(61)
      abb299(15)=-abb299(52)*abb299(94)
      abb299(15)=abb299(15)-abb299(30)
      abb299(15)=spak2l5*abb299(15)
      abb299(16)=-spbl6k3*abb299(80)
      abb299(19)=abb299(42)*abb299(94)
      abb299(19)=abb299(19)-abb299(84)
      abb299(21)=es12*abb299(19)
      abb299(22)=-spal5k7*spbk7k3
      abb299(27)=-spbk3k1*spak1l5
      abb299(22)=abb299(27)+abb299(22)
      abb299(22)=abb299(46)*abb299(22)
      abb299(27)=abb299(37)*abb299(34)
      abb299(27)=abb299(27)-abb299(35)
      abb299(28)=-spak2k4*spak1l5
      abb299(28)=abb299(28)-abb299(61)
      abb299(27)=abb299(4)*abb299(27)*abb299(28)
      abb299(28)=spbk7l6*abb299(73)
      abb299(29)=spbl5k3*spak1l5*abb299(48)
      abb299(30)=-spak1k4*abb299(35)
      abb299(34)=abb299(34)*abb299(53)
      abb299(10)=abb299(29)+abb299(21)+abb299(16)+abb299(28)+abb299(15)+abb299(&
      &27)+abb299(13)+abb299(22)+abb299(34)+abb299(10)+abb299(30)
      abb299(10)=8.0_ki*abb299(10)
      abb299(13)=abb299(40)*abb299(94)
      abb299(13)=abb299(13)-abb299(75)
      abb299(13)=abb299(13)*spak2k4
      abb299(15)=-abb299(59)*spbe7k3
      abb299(16)=abb299(95)*spbe7l6
      abb299(13)=-abb299(13)-abb299(15)-abb299(16)+2.0_ki*abb299(51)
      abb299(15)=-8.0_ki*abb299(13)
      abb299(16)=16.0_ki*abb299(84)
      abb299(21)=-8.0_ki*abb299(51)
      abb299(22)=abb299(78)*abb299(93)
      abb299(18)=-abb299(54)*abb299(18)
      abb299(18)=abb299(18)+abb299(22)
      abb299(18)=abb299(18)*abb299(94)
      abb299(22)=abb299(18)*spbk7e7
      abb299(22)=abb299(22)+abb299(103)
      abb299(27)=8.0_ki*spak4k7
      abb299(28)=abb299(22)*abb299(27)
      abb299(19)=16.0_ki*abb299(19)
      abb299(13)=-4.0_ki*abb299(13)
      abb299(29)=8.0_ki*abb299(84)
      abb299(22)=4.0_ki*spak2k4*abb299(22)
      abb299(30)=-8.0_ki*abb299(87)
      abb299(9)=-abb299(33)*abb299(9)*abb299(47)
      abb299(33)=abb299(17)*abb299(71)
      abb299(34)=spal6k7*spbk7k2
      abb299(35)=-abb299(33)*abb299(34)
      abb299(37)=abb299(47)*spbe7k2
      abb299(36)=abb299(37)*abb299(36)
      abb299(9)=abb299(36)+abb299(9)+abb299(35)
      abb299(9)=4.0_ki*abb299(9)
      abb299(35)=-abb299(88)*abb299(34)
      abb299(36)=abb299(14)*spak1k7
      abb299(38)=-spal6k7*spbk7k2**2*abb299(36)
      abb299(35)=abb299(35)+abb299(38)
      abb299(35)=8.0_ki*abb299(35)
      abb299(38)=abb299(17)*abb299(70)
      abb299(34)=abb299(34)*abb299(38)
      abb299(40)=8.0_ki*abb299(34)
      abb299(34)=4.0_ki*abb299(34)
      abb299(17)=abb299(17)*abb299(69)
      abb299(42)=4.0_ki*spbk7k2*abb299(17)*abb299(98)
      abb299(43)=8.0_ki*spak1l6
      abb299(43)=abb299(43)*abb299(14)*spbk7k2
      abb299(24)=-4.0_ki*abb299(37)*abb299(24)
      abb299(20)=abb299(64)*abb299(45)*abb299(2)*abb299(20)
      abb299(37)=-spak1e7*abb299(44)
      abb299(20)=abb299(20)+abb299(37)
      abb299(20)=spal5k7*abb299(20)
      abb299(37)=spal5e7*spak1k7*abb299(47)
      abb299(20)=abb299(37)+abb299(20)
      abb299(20)=spbk7e7*abb299(20)
      abb299(20)=-abb299(33)+abb299(20)
      abb299(20)=4.0_ki*abb299(20)
      abb299(33)=spbk7k2*abb299(36)
      abb299(33)=-abb299(88)-2.0_ki*abb299(33)
      abb299(33)=8.0_ki*abb299(33)
      abb299(36)=8.0_ki*abb299(38)
      abb299(37)=4.0_ki*abb299(38)
      abb299(17)=abb299(17)*abb299(65)
      abb299(38)=abb299(98)*abb299(74)
      abb299(44)=8.0_ki*abb299(38)
      abb299(45)=abb299(66)*spak1l6
      abb299(46)=16.0_ki*abb299(45)
      abb299(18)=-abb299(98)*abb299(18)
      abb299(18)=-abb299(38)+abb299(18)
      abb299(18)=8.0_ki*abb299(18)
      abb299(11)=16.0_ki*spak1l6*abb299(11)
      abb299(38)=4.0_ki*abb299(38)
      abb299(45)=-8.0_ki*abb299(45)
      abb299(47)=16.0_ki*abb299(72)
      abb299(27)=abb299(66)*abb299(27)
      abb299(12)=8.0_ki*abb299(12)
      abb299(14)=8.0_ki*abb299(14)
      R2d299=0.0_ki
      rat2 = rat2 + R2d299
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='299' value='", &
          & R2d299, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd299h0
