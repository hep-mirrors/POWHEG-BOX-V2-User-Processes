module     p0_dbaru_epnebbbarg_abbrevd84h1
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(105), public :: abb84
   complex(ki), public :: R2d84
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
      abb84(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb84(2)=sqrt2**(-1)
      abb84(3)=es56**(-1)
      abb84(4)=spak2k7**(-1)
      abb84(5)=spak2l5**(-1)
      abb84(6)=spbl6k2**(-1)
      abb84(7)=spak1l6*spbk3k1
      abb84(8)=abb84(7)*es712
      abb84(9)=abb84(7)*es12
      abb84(8)=abb84(8)-abb84(9)
      abb84(10)=-abb84(8)*spbl5k2*spbk7k1
      abb84(11)=es71*spbl5k2
      abb84(12)=abb84(11)*abb84(7)
      abb84(13)=spbk7k1*abb84(12)
      abb84(14)=es12-es712
      abb84(15)=abb84(14)*spbl5k2
      abb84(15)=abb84(15)+abb84(11)
      abb84(16)=spbk4k3*spbk7k1
      abb84(17)=spak4l6*abb84(16)*abb84(15)
      abb84(18)=es71-es712
      abb84(19)=-spbk3k1*abb84(18)
      abb84(20)=es12*spbk3k1
      abb84(19)=abb84(19)-abb84(20)
      abb84(21)=mB**2*abb84(5)*abb84(6)
      abb84(22)=abb84(21)*spbk7k2
      abb84(23)=abb84(22)*es71
      abb84(24)=2.0_ki*abb84(23)
      abb84(25)=-abb84(19)*abb84(24)
      abb84(10)=abb84(25)+abb84(17)+abb84(10)+abb84(13)
      abb84(10)=spak1k2*abb84(10)
      abb84(13)=es712*spbk4k3
      abb84(17)=es12*spbk4k3
      abb84(13)=abb84(13)-abb84(17)
      abb84(13)=abb84(13)*spbk7l5
      abb84(25)=es71*spbk7l5
      abb84(26)=abb84(25)*spbk4k3
      abb84(13)=abb84(13)-abb84(26)
      abb84(13)=abb84(13)*spak4l6
      abb84(8)=abb84(8)*spbk7l5
      abb84(26)=abb84(25)*abb84(7)
      abb84(8)=abb84(13)+abb84(8)-abb84(26)
      abb84(13)=es71*abb84(8)
      abb84(27)=abb84(18)+es12
      abb84(28)=spak2k4*spbk4k3
      abb84(29)=abb84(27)*abb84(28)
      abb84(23)=-abb84(29)*abb84(23)
      abb84(13)=abb84(23)+abb84(13)
      abb84(10)=2.0_ki*abb84(13)+abb84(10)
      abb84(13)=gW*TR
      abb84(13)=abb84(1)*abb84(2)*abb84(3)*abb84(4)*CVDU*c2*i_*abb84(13)**2
      abb84(23)=abb84(13)*spak1k4
      abb84(30)=4.0_ki*abb84(23)
      abb84(10)=abb84(10)*abb84(30)
      abb84(31)=spbk7k3*spbl5k1
      abb84(32)=spbk7k2*spak1k7
      abb84(33)=abb84(32)*spak2l6
      abb84(34)=abb84(33)*abb84(31)
      abb84(35)=spbk7k2*spbl5k3
      abb84(36)=abb84(35)*spak2l6
      abb84(37)=abb84(36)*es71
      abb84(34)=abb84(37)+abb84(34)
      abb84(38)=spak4l6*spbl5k2
      abb84(39)=abb84(16)*abb84(38)
      abb84(40)=abb84(7)*spbl5k2
      abb84(41)=spbk7k1*abb84(40)
      abb84(39)=abb84(41)+abb84(39)
      abb84(41)=-spak1k2*abb84(39)
      abb84(34)=2.0_ki*abb84(34)+abb84(41)
      abb84(34)=spak1k4*abb84(34)
      abb84(41)=spak3k4*spbl5k3
      abb84(42)=abb84(33)*abb84(41)
      abb84(43)=2.0_ki*spbk7k3
      abb84(44)=-abb84(43)*abb84(42)
      abb84(34)=abb84(44)+abb84(34)
      abb84(44)=8.0_ki*abb84(13)
      abb84(34)=abb84(34)*abb84(44)
      abb84(45)=abb84(14)+es71
      abb84(46)=abb84(22)*spak1k7
      abb84(47)=-abb84(46)*spak2k4*abb84(45)
      abb84(48)=abb84(14)*spbk7l5
      abb84(49)=abb84(48)+abb84(25)
      abb84(50)=spak1k7*spak4l6
      abb84(49)=abb84(49)*abb84(50)
      abb84(49)=abb84(47)-abb84(49)
      abb84(51)=abb84(49)*abb84(43)
      abb84(52)=abb84(15)*spak4l6
      abb84(53)=spak1k2*spbk7k3
      abb84(54)=abb84(52)*abb84(53)
      abb84(51)=abb84(51)-abb84(54)
      abb84(54)=abb84(51)*abb84(44)
      abb84(55)=abb84(53)*abb84(38)
      abb84(56)=16.0_ki*abb84(13)
      abb84(57)=abb84(55)*abb84(56)
      abb84(58)=spbk7k2*spal6k7
      abb84(59)=-abb84(31)*abb84(58)
      abb84(35)=abb84(35)*spal6k7
      abb84(60)=spbk7k1*abb84(35)
      abb84(61)=spbk3k1*abb84(24)
      abb84(59)=abb84(59)+abb84(61)+abb84(60)-abb84(39)
      abb84(59)=spak1k2*abb84(59)
      abb84(60)=abb84(22)*spak2k4
      abb84(61)=abb84(60)*spbk4k3
      abb84(62)=spak4l6*spbk7l5
      abb84(63)=abb84(62)*spbk4k3
      abb84(61)=abb84(61)+abb84(63)
      abb84(64)=-es71*abb84(61)
      abb84(26)=-abb84(26)+abb84(64)
      abb84(26)=2.0_ki*abb84(26)+abb84(59)
      abb84(26)=spak1k4*abb84(26)
      abb84(59)=es71*spak3k4
      abb84(64)=-spak3k4*abb84(14)
      abb84(59)=abb84(59)-abb84(64)
      abb84(65)=spbk7k3**2
      abb84(66)=2.0_ki*abb84(65)
      abb84(59)=abb84(59)*abb84(66)
      abb84(66)=abb84(21)*spak1k7
      abb84(67)=-abb84(66)*abb84(59)
      abb84(68)=abb84(53)*spak3k4
      abb84(69)=abb84(35)*abb84(68)
      abb84(26)=abb84(26)+abb84(67)+abb84(69)
      abb84(26)=abb84(26)*abb84(44)
      abb84(67)=abb84(21)*spbk3k2
      abb84(69)=abb84(68)*abb84(67)
      abb84(70)=abb84(21)*spbk7k3
      abb84(71)=es12*abb84(70)
      abb84(72)=abb84(67)*spak1k2
      abb84(73)=spbk7k1*abb84(72)
      abb84(71)=abb84(71)+abb84(73)
      abb84(71)=spak1k4*abb84(71)
      abb84(71)=abb84(69)+abb84(71)
      abb84(73)=32.0_ki*abb84(13)
      abb84(71)=abb84(71)*abb84(73)
      abb84(74)=abb84(60)+abb84(62)
      abb84(75)=spak1k7*abb84(74)
      abb84(76)=abb84(75)*abb84(43)
      abb84(76)=abb84(76)-abb84(55)
      abb84(77)=abb84(76)*abb84(56)
      abb84(65)=abb84(65)*spak3k4
      abb84(78)=-abb84(66)*abb84(65)*abb84(73)
      abb84(29)=abb84(29)*abb84(22)
      abb84(8)=abb84(8)-abb84(29)
      abb84(29)=abb84(22)*spak1k2
      abb84(79)=abb84(19)*abb84(29)
      abb84(79)=abb84(79)-abb84(8)
      abb84(79)=spak1k4*abb84(79)
      abb84(51)=abb84(79)+abb84(51)
      abb84(51)=abb84(51)*abb84(44)
      abb84(79)=abb84(36)*spak1k4
      abb84(80)=abb84(79)-abb84(55)
      abb84(81)=-abb84(80)*abb84(56)
      abb84(82)=abb84(45)*abb84(70)
      abb84(83)=abb84(29)*spbk3k1
      abb84(84)=abb84(7)*spbk7l5
      abb84(61)=abb84(82)-abb84(61)+abb84(83)-abb84(84)
      abb84(61)=abb84(61)*spak1k4
      abb84(61)=abb84(61)+abb84(76)
      abb84(76)=-abb84(61)*abb84(56)
      abb84(82)=32.0_ki*abb84(23)
      abb84(85)=-abb84(70)*abb84(82)
      abb84(86)=abb84(14)*spbk3k2
      abb84(87)=es71*spbk3k2
      abb84(86)=abb84(86)+abb84(87)
      abb84(88)=spbk7k1*abb84(86)
      abb84(19)=spbk7k2*abb84(19)
      abb84(19)=-2.0_ki*abb84(88)+abb84(19)
      abb84(19)=abb84(19)*abb84(21)
      abb84(89)=2.0_ki*spbk7k1
      abb84(90)=-abb84(35)*abb84(89)
      abb84(91)=abb84(58)*spbl5k1
      abb84(92)=abb84(43)*abb84(91)
      abb84(19)=abb84(92)+abb84(19)+abb84(90)+abb84(39)
      abb84(19)=spak1k2*abb84(19)
      abb84(39)=abb84(45)*es12
      abb84(90)=-abb84(39)*abb84(21)
      abb84(92)=spbl5k1*abb84(33)
      abb84(90)=abb84(92)+abb84(90)
      abb84(90)=abb84(90)*abb84(43)
      abb84(8)=abb84(19)+abb84(90)+2.0_ki*abb84(37)-abb84(8)
      abb84(8)=spak1k4*abb84(8)
      abb84(19)=-abb84(42)+abb84(49)
      abb84(19)=abb84(19)*abb84(43)
      abb84(37)=abb84(87)*spak3k4
      abb84(42)=abb84(64)*spbk3k2
      abb84(37)=abb84(37)-abb84(42)
      abb84(42)=abb84(37)*abb84(21)
      abb84(49)=abb84(35)*spak3k4
      abb84(42)=abb84(49)+abb84(42)
      abb84(49)=-abb84(52)-2.0_ki*abb84(42)
      abb84(49)=abb84(49)*abb84(53)
      abb84(8)=abb84(8)+abb84(19)+abb84(49)
      abb84(13)=4.0_ki*abb84(13)
      abb84(8)=abb84(8)*abb84(13)
      abb84(19)=-abb84(80)*abb84(44)
      abb84(49)=abb84(55)*abb84(44)
      abb84(52)=-abb84(61)*abb84(44)
      abb84(61)=abb84(56)*spak1k4
      abb84(64)=-abb84(61)*abb84(70)
      abb84(55)=abb84(79)+abb84(55)
      abb84(70)=-abb84(55)*abb84(44)
      abb84(55)=-abb84(55)*abb84(13)
      abb84(79)=-abb84(62)*abb84(16)
      abb84(80)=-spbk7k1*abb84(84)
      abb84(79)=abb84(80)+abb84(79)
      abb84(60)=2.0_ki*abb84(60)
      abb84(16)=-abb84(16)*abb84(60)
      abb84(80)=spbk7k2*spak2l6
      abb84(90)=-abb84(31)*abb84(80)
      abb84(83)=abb84(83)*abb84(89)
      abb84(92)=spbk7k1*abb84(36)
      abb84(16)=abb84(83)+abb84(90)+abb84(16)+2.0_ki*abb84(79)+abb84(92)
      abb84(79)=spak1k4*spak1k2
      abb84(16)=abb84(16)*abb84(79)
      abb84(36)=abb84(36)*abb84(68)
      abb84(16)=abb84(36)+abb84(16)
      abb84(16)=abb84(16)*abb84(13)
      abb84(36)=abb84(74)*abb84(53)
      abb84(68)=abb84(36)*abb84(56)
      abb84(74)=abb84(21)*spak1k2
      abb84(83)=abb84(56)*abb84(65)*abb84(74)
      abb84(36)=abb84(44)*abb84(36)
      abb84(59)=spak1k7*abb84(59)
      abb84(90)=abb84(37)*abb84(53)
      abb84(88)=spak1k2*abb84(88)
      abb84(39)=spbk7k3*abb84(39)
      abb84(39)=abb84(39)+abb84(88)
      abb84(39)=spak1k4*abb84(39)
      abb84(39)=abb84(39)+abb84(59)+abb84(90)
      abb84(39)=abb84(39)*abb84(13)
      abb84(59)=spbk7k3*es12
      abb84(88)=spak1k2*spbk3k2
      abb84(90)=abb84(88)*spbk7k1
      abb84(59)=abb84(59)+abb84(90)
      abb84(59)=abb84(59)*spak1k4
      abb84(92)=spbk3k2*spak3k4
      abb84(93)=abb84(92)*abb84(53)
      abb84(59)=abb84(59)+abb84(93)
      abb84(94)=-abb84(59)*abb84(44)
      abb84(95)=2.0_ki*spak1k7
      abb84(95)=abb84(65)*abb84(95)
      abb84(59)=abb84(95)-abb84(59)
      abb84(59)=abb84(59)*abb84(44)
      abb84(95)=abb84(44)*spak1k4
      abb84(96)=abb84(95)*spbk7k3
      abb84(97)=abb84(45)*abb84(96)
      abb84(98)=spbk7k3*abb84(61)
      abb84(99)=abb84(18)+2.0_ki*es12
      abb84(100)=spbk7k3*abb84(99)
      abb84(90)=abb84(100)+abb84(90)
      abb84(90)=spak1k4*abb84(90)
      abb84(90)=abb84(93)+abb84(90)
      abb84(90)=abb84(90)*abb84(13)
      abb84(93)=abb84(44)*spak1k2
      abb84(65)=-abb84(93)*abb84(65)
      abb84(100)=spbl5k3*spbk7k1
      abb84(31)=abb84(100)-abb84(31)
      abb84(31)=abb84(31)*abb84(79)
      abb84(53)=abb84(41)*abb84(53)
      abb84(31)=abb84(31)+abb84(53)
      abb84(53)=abb84(31)*abb84(44)
      abb84(31)=abb84(31)*abb84(13)
      abb84(79)=abb84(14)*spak3l6
      abb84(100)=-spbk7l5*abb84(79)
      abb84(101)=-spak3l6*abb84(25)
      abb84(100)=abb84(100)+abb84(101)
      abb84(100)=spak1k7*abb84(100)
      abb84(101)=abb84(46)*spak2k3
      abb84(102)=-abb84(27)*abb84(101)
      abb84(100)=abb84(100)+abb84(102)
      abb84(100)=spbk7k3*abb84(100)
      abb84(102)=abb84(25)*spak1l6
      abb84(48)=-spak1l6*abb84(48)
      abb84(48)=abb84(48)-abb84(102)
      abb84(48)=es71*abb84(48)
      abb84(14)=abb84(14)*spbk7k4
      abb84(103)=-spbk7l5*abb84(14)
      abb84(25)=-spbk7k4*abb84(25)
      abb84(25)=abb84(103)+abb84(25)
      abb84(25)=abb84(25)*abb84(50)
      abb84(47)=spbk7k4*abb84(47)
      abb84(25)=abb84(100)+abb84(47)+abb84(48)+abb84(25)
      abb84(47)=spak1l6*spbk7k1
      abb84(15)=abb84(47)*abb84(15)
      abb84(14)=-spbl5k2*abb84(14)
      abb84(48)=-spbk7k4*abb84(11)
      abb84(14)=abb84(14)+abb84(48)
      abb84(14)=spak4l6*abb84(14)
      abb84(48)=abb84(45)*abb84(24)
      abb84(50)=-spbl5k2*abb84(79)
      abb84(79)=-spak3l6*abb84(11)
      abb84(50)=abb84(50)+abb84(79)
      abb84(50)=spbk7k3*abb84(50)
      abb84(14)=abb84(50)+abb84(48)+abb84(14)+abb84(15)
      abb84(14)=spak1k2*abb84(14)
      abb84(14)=2.0_ki*abb84(25)+abb84(14)
      abb84(14)=abb84(14)*abb84(13)
      abb84(15)=abb84(38)*spbk7k4
      abb84(25)=spbl5k2*spak1l6
      abb84(48)=abb84(25)*spbk7k1
      abb84(50)=spbl5k2*spak3l6
      abb84(79)=abb84(50)*spbk7k3
      abb84(15)=abb84(79)+abb84(15)-abb84(48)
      abb84(48)=spak1k2*abb84(15)
      abb84(79)=2.0_ki*spbk7l5
      abb84(33)=abb84(79)*abb84(33)
      abb84(48)=abb84(33)+abb84(48)
      abb84(48)=abb84(48)*abb84(44)
      abb84(100)=-spbk7k4*abb84(75)
      abb84(103)=spak1k7*spbk7l5
      abb84(104)=-spak3l6*abb84(103)
      abb84(101)=abb84(104)-abb84(101)
      abb84(101)=spbk7k3*abb84(101)
      abb84(100)=abb84(101)-abb84(102)+abb84(100)
      abb84(101)=-spbk7l5*abb84(58)
      abb84(24)=abb84(24)+abb84(101)+abb84(15)
      abb84(24)=spak1k2*abb84(24)
      abb84(24)=2.0_ki*abb84(100)+abb84(24)
      abb84(24)=abb84(24)*abb84(44)
      abb84(73)=abb84(29)*abb84(73)
      abb84(79)=abb84(58)*abb84(79)
      abb84(100)=abb84(45)*abb84(22)
      abb84(15)=-2.0_ki*abb84(100)+abb84(79)-abb84(15)
      abb84(15)=spak1k2*abb84(15)
      abb84(15)=abb84(33)+abb84(15)
      abb84(15)=abb84(15)*abb84(13)
      abb84(33)=-spbk7l5*abb84(47)
      abb84(47)=spbk7k4*abb84(62)
      abb84(33)=abb84(33)+abb84(47)
      abb84(47)=spbk7l5*spak3l6
      abb84(22)=spak2k3*abb84(22)
      abb84(22)=abb84(47)+abb84(22)
      abb84(22)=abb84(22)*abb84(43)
      abb84(43)=abb84(29)*abb84(89)
      abb84(47)=-spbk7l5*abb84(80)
      abb84(60)=spbk7k4*abb84(60)
      abb84(22)=abb84(43)+abb84(22)+abb84(60)+2.0_ki*abb84(33)+abb84(47)
      abb84(33)=abb84(13)*spak1k2
      abb84(22)=abb84(22)*abb84(33)
      abb84(43)=abb84(33)*spbk7k2
      abb84(45)=abb84(45)*abb84(43)
      abb84(47)=abb84(93)*spbk7k2
      abb84(60)=abb84(93)*spbk7l5
      abb84(33)=-spbk7l5*abb84(33)
      abb84(62)=es71*abb84(86)
      abb84(28)=spbk2k1*abb84(28)
      abb84(28)=abb84(28)-abb84(20)
      abb84(28)=abb84(28)*abb84(32)
      abb84(28)=abb84(62)+abb84(28)
      abb84(28)=abb84(28)*abb84(21)
      abb84(62)=spbl5k2*abb84(17)
      abb84(79)=-spbk4k3*abb84(11)
      abb84(62)=abb84(62)+abb84(79)
      abb84(62)=spak4l6*abb84(62)
      abb84(63)=abb84(84)+abb84(63)
      abb84(63)=spak1k7*spbk2k1*abb84(63)
      abb84(27)=abb84(27)*spbk2k1
      abb84(79)=-abb84(27)*abb84(66)
      abb84(80)=abb84(32)*spal6k7
      abb84(84)=spbl5k1*abb84(80)
      abb84(79)=abb84(84)+abb84(79)
      abb84(79)=spbk7k3*abb84(79)
      abb84(9)=spbl5k2*abb84(9)
      abb84(84)=es71*abb84(35)
      abb84(9)=abb84(79)+abb84(28)+abb84(84)+abb84(63)+abb84(62)+abb84(9)-abb84&
      &(12)
      abb84(9)=spak1k4*abb84(9)
      abb84(12)=-abb84(41)*abb84(80)
      abb84(28)=-abb84(37)*abb84(66)
      abb84(12)=abb84(12)+abb84(28)
      abb84(12)=spbk7k3*abb84(12)
      abb84(9)=abb84(12)+abb84(9)
      abb84(9)=abb84(9)*abb84(44)
      abb84(12)=spak3k4*spbk3k2**2
      abb84(28)=abb84(12)*abb84(74)
      abb84(37)=spak1l6*spbl5k3
      abb84(62)=abb84(37)*spbk2k1
      abb84(63)=spak1l6*spbl5k1
      abb84(79)=abb84(63)*spbk3k2
      abb84(62)=abb84(62)+abb84(79)
      abb84(79)=-spak1k4*abb84(62)
      abb84(84)=abb84(41)*spak1l6
      abb84(89)=abb84(84)*spbk3k2
      abb84(28)=abb84(79)+abb84(89)+abb84(28)
      abb84(28)=abb84(28)*abb84(56)
      abb84(75)=spbk3k2*abb84(75)
      abb84(79)=spbk7k3*spak1k7
      abb84(93)=abb84(79)*abb84(38)
      abb84(75)=abb84(75)-abb84(93)
      abb84(93)=abb84(88)*abb84(38)
      abb84(93)=abb84(93)+abb84(75)
      abb84(100)=abb84(93)*abb84(56)
      abb84(66)=abb84(66)*spbk7k3
      abb84(101)=-abb84(92)*abb84(66)
      abb84(102)=es71*abb84(67)
      abb84(66)=-spbk2k1*abb84(66)
      abb84(66)=abb84(102)+abb84(66)
      abb84(102)=abb84(21)*spak1k4
      abb84(104)=abb84(102)*spbk2k1
      abb84(105)=spbk4k3*abb84(104)
      abb84(66)=3.0_ki*abb84(66)+abb84(105)
      abb84(66)=spak1k4*abb84(66)
      abb84(66)=abb84(101)+abb84(66)
      abb84(66)=abb84(66)*abb84(56)
      abb84(101)=abb84(82)*abb84(67)
      abb84(86)=abb84(86)*abb84(21)
      abb84(105)=abb84(38)*spbk4k3
      abb84(35)=-abb84(40)-abb84(105)+abb84(86)+abb84(35)
      abb84(40)=spak1k4*abb84(35)
      abb84(40)=2.0_ki*abb84(93)+abb84(40)
      abb84(40)=abb84(40)*abb84(44)
      abb84(23)=48.0_ki*abb84(67)*abb84(23)
      abb84(35)=-2.0_ki*abb84(62)-abb84(35)
      abb84(35)=spak1k4*abb84(35)
      abb84(62)=abb84(21)*abb84(12)
      abb84(86)=spbk3k2*abb84(38)
      abb84(62)=abb84(86)+abb84(62)
      abb84(62)=spak1k2*abb84(62)
      abb84(62)=abb84(62)+abb84(89)+abb84(75)
      abb84(35)=2.0_ki*abb84(62)+abb84(35)
      abb84(13)=abb84(35)*abb84(13)
      abb84(35)=abb84(67)*abb84(95)
      abb84(37)=abb84(72)+abb84(37)
      abb84(62)=spbk7k1*abb84(37)
      abb84(72)=es12*abb84(21)
      abb84(72)=-abb84(63)+abb84(72)
      abb84(72)=spbk7k3*abb84(72)
      abb84(62)=abb84(72)+abb84(62)
      abb84(62)=spak1k4*abb84(62)
      abb84(72)=spbk7k3*abb84(84)
      abb84(62)=abb84(62)+abb84(72)+abb84(69)
      abb84(62)=abb84(62)*abb84(44)
      abb84(69)=spbk2k1*abb84(79)
      abb84(69)=-abb84(87)+abb84(69)
      abb84(69)=spak1k4*abb84(69)
      abb84(12)=-spak1k2*abb84(12)
      abb84(12)=abb84(12)+2.0_ki*abb84(69)
      abb84(12)=abb84(12)*abb84(44)
      abb84(69)=-spbk3k2*abb84(95)
      abb84(30)=spbk3k2*abb84(30)
      abb84(72)=abb84(79)+abb84(88)
      abb84(41)=-abb84(41)*abb84(72)
      abb84(75)=-spak1k4*spbk4k3
      abb84(72)=abb84(75)+abb84(72)
      abb84(72)=spbl5k1*abb84(72)
      abb84(75)=es12+es71
      abb84(75)=spbl5k3*abb84(75)
      abb84(72)=abb84(72)+abb84(75)
      abb84(72)=spak1k4*abb84(72)
      abb84(41)=abb84(72)+abb84(41)
      abb84(41)=abb84(41)*abb84(44)
      abb84(72)=abb84(61)*spbl5k3
      abb84(75)=spbl5k3*abb84(95)
      abb84(84)=spak1l6*spbk2k1
      abb84(86)=spbk3k2*spak3l6
      abb84(84)=abb84(84)+abb84(86)
      abb84(84)=spbk7l5*abb84(84)
      abb84(86)=spbk7l5*spbk4k2
      abb84(87)=-spbl5k2*spbk7k4
      abb84(86)=abb84(86)+abb84(87)
      abb84(86)=spak4l6*abb84(86)
      abb84(84)=abb84(84)+abb84(86)
      abb84(84)=spak1k7*abb84(84)
      abb84(86)=-es234+es34-abb84(99)
      abb84(46)=abb84(86)*abb84(46)
      abb84(79)=-abb84(79)*abb84(50)
      abb84(86)=spbk3k2*abb84(50)
      abb84(87)=spbk4k2*abb84(38)
      abb84(86)=abb84(86)+abb84(87)
      abb84(86)=spak1k2*abb84(86)
      abb84(87)=es12*abb84(25)
      abb84(11)=-spak1l6*abb84(11)
      abb84(80)=spbk7l5*abb84(80)
      abb84(11)=abb84(86)+abb84(79)+abb84(46)+abb84(80)+abb84(84)+abb84(87)+abb&
      &84(11)
      abb84(11)=abb84(11)*abb84(44)
      abb84(46)=abb84(25)*abb84(56)
      abb84(79)=spbk3k2*spak1k3
      abb84(79)=abb84(79)-3.0_ki*abb84(32)
      abb84(79)=abb84(79)*abb84(21)
      abb84(80)=spbk4k2*abb84(102)
      abb84(79)=abb84(79)+abb84(80)
      abb84(79)=abb84(79)*abb84(56)
      abb84(25)=-abb84(44)*abb84(25)
      abb84(80)=spbk7l5*spak1l6
      abb84(29)=-abb84(80)+abb84(29)
      abb84(29)=abb84(29)*abb84(44)
      abb84(32)=abb84(32)*abb84(56)
      abb84(80)=spbl5k3*spak1k3
      abb84(84)=spak1k2*spbl5k2
      abb84(86)=spak1k4*spbl5k4
      abb84(80)=abb84(86)+abb84(84)+abb84(80)+abb84(103)
      abb84(80)=abb84(80)*abb84(44)
      abb84(17)=-abb84(21)*abb84(17)
      abb84(84)=spbk4k3*abb84(63)
      abb84(17)=abb84(84)+abb84(17)
      abb84(17)=abb84(17)*abb84(95)
      abb84(84)=abb84(37)*abb84(56)
      abb84(37)=abb84(37)*abb84(44)
      abb84(86)=-spak1l6*spbl5k4
      abb84(74)=-spbk4k2*abb84(74)
      abb84(74)=abb84(86)+abb84(74)
      abb84(74)=abb84(74)*abb84(44)
      abb84(58)=-abb84(44)*abb84(58)
      abb84(86)=abb84(44)*abb84(38)
      abb84(27)=abb84(27)*abb84(21)
      abb84(27)=-abb84(91)+abb84(27)
      abb84(27)=spak1k4*abb84(27)
      abb84(27)=abb84(27)+abb84(42)
      abb84(27)=abb84(27)*abb84(44)
      abb84(38)=abb84(56)*abb84(38)
      abb84(42)=spak3k4*abb84(67)
      abb84(42)=abb84(42)+abb84(104)
      abb84(42)=abb84(42)*abb84(56)
      abb84(67)=spak1k4*spbk2k1
      abb84(67)=-abb84(92)-abb84(67)
      abb84(67)=abb84(67)*abb84(44)
      abb84(50)=abb84(44)*abb84(50)
      abb84(20)=-abb84(21)*abb84(20)
      abb84(7)=spbl5k1*abb84(7)
      abb84(7)=abb84(7)+abb84(20)
      abb84(7)=abb84(7)*abb84(95)
      abb84(20)=-spbk3k1*abb84(21)*abb84(82)
      abb84(61)=spbk3k1*abb84(61)
      abb84(18)=abb84(18)*abb84(21)
      abb84(18)=abb84(63)+abb84(18)
      abb84(18)=abb84(18)*abb84(44)
      abb84(21)=-abb84(21)*abb84(56)
      R2d84=0.0_ki
      rat2 = rat2 + R2d84
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='84' value='", &
          & R2d84, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd84h1
