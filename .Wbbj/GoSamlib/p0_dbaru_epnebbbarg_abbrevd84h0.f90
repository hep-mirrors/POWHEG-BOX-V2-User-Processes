module     p0_dbaru_epnebbbarg_abbrevd84h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(88), public :: abb84
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
      abb84(2)=es56**(-1)
      abb84(3)=spbl5k2**(-1)
      abb84(4)=spbl6k2**(-1)
      abb84(5)=TR*gW
      abb84(5)=i_*c2*abb84(5)**2*mB*CVDU*abb84(2)*abb84(1)
      abb84(6)=abb84(3)*abb84(5)
      abb84(7)=abb84(6)*spbe7k2
      abb84(8)=abb84(7)*spak1k4
      abb84(9)=abb84(8)*spak4l6
      abb84(5)=abb84(4)*abb84(5)
      abb84(10)=abb84(5)*spbe7k2
      abb84(11)=abb84(10)*spak1k4
      abb84(12)=abb84(11)*spak4l5
      abb84(9)=abb84(9)+abb84(12)
      abb84(12)=spae7k7*spbk7k2
      abb84(13)=spbk4k3*abb84(12)*abb84(9)
      abb84(14)=abb84(8)*spak1l6
      abb84(15)=abb84(11)*spak1l5
      abb84(14)=abb84(14)+abb84(15)
      abb84(15)=spbk3k1*abb84(12)*abb84(14)
      abb84(13)=abb84(13)+abb84(15)
      abb84(15)=4.0_ki*es71*abb84(13)
      abb84(16)=abb84(6)*spbk7k2
      abb84(17)=abb84(16)*spak1k7
      abb84(18)=abb84(17)*spak4l6
      abb84(19)=abb84(5)*spbk7k2
      abb84(20)=abb84(19)*spak1k7
      abb84(21)=abb84(20)*spak4l5
      abb84(18)=abb84(18)+abb84(21)
      abb84(21)=-spbk4k3*abb84(18)
      abb84(22)=-spak1l6*abb84(17)
      abb84(23)=-spak1l5*abb84(20)
      abb84(22)=abb84(22)+abb84(23)
      abb84(22)=spbk3k1*abb84(22)
      abb84(21)=abb84(22)+abb84(21)
      abb84(22)=spbk2k1*spak1k4
      abb84(21)=abb84(22)*abb84(21)
      abb84(23)=spbk7k3*spak1k7
      abb84(24)=abb84(22)*abb84(23)
      abb84(25)=spak3k4*spbk3k2
      abb84(26)=abb84(25)*abb84(23)
      abb84(27)=spbk3k2*spak1k4
      abb84(28)=abb84(27)*es71
      abb84(29)=abb84(26)-abb84(28)
      abb84(24)=abb84(24)+abb84(29)
      abb84(30)=abb84(19)*spal5k7
      abb84(31)=abb84(16)*spal6k7
      abb84(30)=abb84(30)+abb84(31)
      abb84(24)=-abb84(24)*abb84(30)
      abb84(21)=abb84(24)+abb84(21)
      abb84(21)=8.0_ki*abb84(21)
      abb84(24)=abb84(22)+abb84(25)
      abb84(31)=abb84(23)*abb84(7)
      abb84(32)=abb84(31)*abb84(24)
      abb84(33)=abb84(28)*abb84(7)
      abb84(32)=abb84(32)-abb84(33)
      abb84(33)=abb84(32)*spal6e7
      abb84(34)=abb84(23)*abb84(10)
      abb84(35)=abb84(34)*abb84(24)
      abb84(36)=abb84(28)*abb84(10)
      abb84(35)=-abb84(36)+abb84(35)
      abb84(36)=abb84(35)*spal5e7
      abb84(33)=abb84(33)+abb84(36)
      abb84(36)=8.0_ki*abb84(33)
      abb84(37)=abb84(6)*spak1l6
      abb84(38)=abb84(5)*spak1l5
      abb84(37)=abb84(37)+abb84(38)
      abb84(38)=abb84(37)*spak3k4*spbk3k2**2
      abb84(39)=16.0_ki*abb84(38)
      abb84(40)=abb84(31)*spak4l6
      abb84(41)=abb84(34)*spak4l5
      abb84(40)=abb84(40)+abb84(41)
      abb84(41)=abb84(12)*abb84(40)
      abb84(42)=8.0_ki*abb84(41)
      abb84(43)=spbk3k2*abb84(18)
      abb84(44)=16.0_ki*abb84(43)
      abb84(45)=spbe7k3*spak1e7
      abb84(46)=abb84(25)*abb84(45)
      abb84(47)=abb84(46)*abb84(16)
      abb84(48)=abb84(27)*spbe7k1
      abb84(49)=abb84(16)*spak1e7
      abb84(50)=abb84(48)*abb84(49)
      abb84(51)=abb84(45)*abb84(16)
      abb84(52)=abb84(51)*abb84(22)
      abb84(47)=abb84(52)+abb84(47)+abb84(50)
      abb84(50)=abb84(47)*spal6k7
      abb84(52)=abb84(46)*abb84(19)
      abb84(53)=abb84(19)*spak1e7
      abb84(54)=abb84(48)*abb84(53)
      abb84(55)=abb84(45)*abb84(19)
      abb84(22)=abb84(55)*abb84(22)
      abb84(22)=abb84(22)+abb84(52)+abb84(54)
      abb84(52)=abb84(22)*spal5k7
      abb84(50)=abb84(50)+abb84(52)
      abb84(33)=2.0_ki*abb84(33)
      abb84(52)=-abb84(33)+abb84(50)
      abb84(52)=4.0_ki*abb84(52)
      abb84(54)=2.0_ki*abb84(41)-abb84(13)
      abb84(54)=4.0_ki*abb84(54)
      abb84(56)=abb84(27)*abb84(30)
      abb84(57)=-2.0_ki*abb84(43)+abb84(56)
      abb84(57)=8.0_ki*abb84(57)
      abb84(58)=abb84(7)*abb84(27)
      abb84(59)=abb84(58)*spal6e7
      abb84(60)=abb84(10)*abb84(27)
      abb84(61)=abb84(60)*spal5e7
      abb84(59)=abb84(59)+abb84(61)
      abb84(61)=8.0_ki*abb84(59)
      abb84(41)=abb84(41)-abb84(50)
      abb84(13)=2.0_ki*abb84(41)+abb84(33)-abb84(13)
      abb84(13)=2.0_ki*abb84(13)
      abb84(33)=-abb84(43)+abb84(38)
      abb84(33)=2.0_ki*abb84(33)-abb84(56)
      abb84(33)=4.0_ki*abb84(33)
      abb84(38)=4.0_ki*abb84(59)
      abb84(41)=2.0_ki*abb84(59)
      abb84(43)=abb84(6)*spak1k4
      abb84(50)=abb84(43)*spbk2k1
      abb84(56)=abb84(50)*abb84(23)
      abb84(59)=abb84(6)*abb84(29)
      abb84(59)=abb84(56)+abb84(59)
      abb84(59)=spal6k7*abb84(59)
      abb84(62)=abb84(5)*spak1k4
      abb84(63)=abb84(62)*spbk2k1
      abb84(64)=abb84(63)*abb84(23)
      abb84(29)=abb84(5)*abb84(29)
      abb84(29)=abb84(64)+abb84(29)
      abb84(29)=spal5k7*abb84(29)
      abb84(29)=abb84(59)+abb84(29)
      abb84(29)=spbk7e7*abb84(29)
      abb84(9)=abb84(9)*spbk4k3
      abb84(14)=abb84(14)*spbk3k1
      abb84(9)=abb84(9)+abb84(14)
      abb84(14)=es71*abb84(9)
      abb84(32)=-spak2l6*abb84(32)
      abb84(35)=-spak2l5*abb84(35)
      abb84(14)=abb84(35)+abb84(32)+abb84(29)+abb84(14)
      abb84(14)=4.0_ki*abb84(14)
      abb84(29)=8.0_ki*abb84(40)
      abb84(32)=abb84(27)*abb84(5)
      abb84(35)=abb84(32)*spal5k7
      abb84(27)=abb84(27)*abb84(6)
      abb84(59)=abb84(27)*spal6k7
      abb84(35)=abb84(35)+abb84(59)
      abb84(35)=abb84(35)*spbk7e7
      abb84(58)=abb84(58)*spak2l6
      abb84(59)=abb84(60)*spak2l5
      abb84(9)=-abb84(35)+abb84(58)-2.0_ki*abb84(40)+abb84(59)+abb84(9)
      abb84(35)=-4.0_ki*abb84(9)
      abb84(9)=-2.0_ki*abb84(9)
      abb84(40)=spak2l6*abb84(47)
      abb84(22)=spak2l5*abb84(22)
      abb84(47)=abb84(49)*spak4l6
      abb84(58)=abb84(53)*spak4l5
      abb84(47)=abb84(47)+abb84(58)
      abb84(58)=spbk4k3*abb84(47)
      abb84(49)=abb84(49)*spak1l6
      abb84(53)=abb84(53)*spak1l5
      abb84(49)=abb84(49)+abb84(53)
      abb84(53)=spbk3k1*abb84(49)
      abb84(53)=abb84(58)+abb84(53)
      abb84(53)=spbe7k1*spak1k4*abb84(53)
      abb84(22)=abb84(22)+2.0_ki*abb84(53)+abb84(40)
      abb84(22)=2.0_ki*abb84(22)
      abb84(40)=abb84(25)*abb84(6)
      abb84(40)=abb84(40)+abb84(50)
      abb84(53)=spak1l6*abb84(40)
      abb84(25)=abb84(25)*abb84(5)
      abb84(25)=abb84(25)+abb84(63)
      abb84(58)=spak1l5*abb84(25)
      abb84(53)=abb84(53)+abb84(58)
      abb84(53)=spbk7k3*abb84(53)
      abb84(58)=spak1l6*abb84(27)
      abb84(59)=spak1l5*abb84(32)
      abb84(58)=abb84(58)+abb84(59)
      abb84(58)=spbk7k1*abb84(58)
      abb84(53)=abb84(58)+abb84(53)
      abb84(53)=8.0_ki*abb84(53)
      abb84(58)=abb84(51)*spak4l6
      abb84(59)=abb84(55)*spak4l5
      abb84(58)=abb84(58)+abb84(59)
      abb84(59)=8.0_ki*abb84(58)
      abb84(58)=-4.0_ki*abb84(58)
      abb84(60)=abb84(46)*abb84(6)
      abb84(65)=abb84(50)*abb84(45)
      abb84(60)=abb84(60)+abb84(65)
      abb84(48)=abb84(48)*spak1e7
      abb84(65)=abb84(48)*abb84(6)
      abb84(65)=abb84(65)+abb84(60)
      abb84(66)=es12-es712
      abb84(67)=-abb84(65)*abb84(66)
      abb84(60)=-es71*abb84(60)
      abb84(68)=2.0_ki*spae7k7
      abb84(68)=abb84(68)*spbk7k3**2*spak3k4*spak1k7
      abb84(69)=-abb84(7)*abb84(68)
      abb84(70)=spbe7k1*spak1e7
      abb84(71)=abb84(70)*abb84(28)
      abb84(72)=-abb84(6)*abb84(71)
      abb84(60)=abb84(72)+abb84(60)+abb84(69)+abb84(67)
      abb84(60)=2.0_ki*abb84(60)
      abb84(67)=spbk2k1*spbk4k3*spak1k4**2
      abb84(26)=-abb84(26)+abb84(67)+3.0_ki*abb84(28)
      abb84(28)=abb84(6)*abb84(26)
      abb84(28)=-3.0_ki*abb84(56)+abb84(28)
      abb84(28)=8.0_ki*abb84(28)
      abb84(56)=8.0_ki*abb84(65)
      abb84(65)=16.0_ki*abb84(27)
      abb84(67)=spae7k7*spbk7k3
      abb84(8)=abb84(67)*abb84(8)
      abb84(69)=-4.0_ki*abb84(8)
      abb84(72)=24.0_ki*abb84(27)
      abb84(8)=-2.0_ki*abb84(8)
      abb84(27)=4.0_ki*abb84(27)
      abb84(73)=spak3k4*spbe7k3
      abb84(74)=-abb84(6)*abb84(73)
      abb84(75)=spbe7k1*abb84(43)
      abb84(74)=abb84(75)+abb84(74)
      abb84(74)=abb84(23)*abb84(74)
      abb84(75)=abb84(43)*spbe7k3
      abb84(76)=es71*abb84(75)
      abb84(74)=abb84(76)+abb84(74)
      abb84(74)=4.0_ki*abb84(74)
      abb84(76)=-4.0_ki*abb84(75)
      abb84(75)=-2.0_ki*abb84(75)
      abb84(77)=spak3k4*spbk7k3
      abb84(78)=abb84(6)*abb84(77)
      abb84(79)=-spbk7k1*abb84(43)
      abb84(78)=abb84(79)+abb84(78)
      abb84(78)=abb84(45)*abb84(78)
      abb84(70)=abb84(70)*spbk7k3
      abb84(79)=abb84(43)*abb84(70)
      abb84(78)=abb84(79)+abb84(78)
      abb84(78)=4.0_ki*abb84(78)
      abb84(46)=abb84(46)*abb84(5)
      abb84(79)=abb84(63)*abb84(45)
      abb84(46)=abb84(46)+abb84(79)
      abb84(48)=abb84(48)*abb84(5)
      abb84(48)=abb84(48)+abb84(46)
      abb84(79)=-abb84(48)*abb84(66)
      abb84(46)=-es71*abb84(46)
      abb84(68)=-abb84(10)*abb84(68)
      abb84(71)=-abb84(5)*abb84(71)
      abb84(46)=abb84(71)+abb84(46)+abb84(68)+abb84(79)
      abb84(46)=2.0_ki*abb84(46)
      abb84(26)=abb84(5)*abb84(26)
      abb84(26)=-3.0_ki*abb84(64)+abb84(26)
      abb84(26)=8.0_ki*abb84(26)
      abb84(48)=8.0_ki*abb84(48)
      abb84(64)=16.0_ki*abb84(32)
      abb84(11)=abb84(67)*abb84(11)
      abb84(67)=-4.0_ki*abb84(11)
      abb84(68)=24.0_ki*abb84(32)
      abb84(11)=-2.0_ki*abb84(11)
      abb84(32)=4.0_ki*abb84(32)
      abb84(71)=-abb84(5)*abb84(73)
      abb84(73)=spbe7k1*abb84(62)
      abb84(71)=abb84(73)+abb84(71)
      abb84(23)=abb84(23)*abb84(71)
      abb84(71)=abb84(62)*spbe7k3
      abb84(73)=es71*abb84(71)
      abb84(23)=abb84(73)+abb84(23)
      abb84(23)=4.0_ki*abb84(23)
      abb84(73)=-4.0_ki*abb84(71)
      abb84(71)=-2.0_ki*abb84(71)
      abb84(77)=abb84(5)*abb84(77)
      abb84(79)=-spbk7k1*abb84(62)
      abb84(77)=abb84(79)+abb84(77)
      abb84(45)=abb84(45)*abb84(77)
      abb84(70)=abb84(62)*abb84(70)
      abb84(45)=abb84(70)+abb84(45)
      abb84(45)=4.0_ki*abb84(45)
      abb84(70)=abb84(10)*spak1l5
      abb84(77)=abb84(7)*spak1l6
      abb84(70)=abb84(70)+abb84(77)
      abb84(70)=abb84(70)*es71
      abb84(31)=abb84(31)*spak3l6
      abb84(34)=abb84(34)*spak3l5
      abb84(31)=abb84(70)+abb84(31)+abb84(34)
      abb84(12)=abb84(12)*abb84(31)
      abb84(34)=spak1k7*spbk7k2
      abb84(70)=abb84(34)*abb84(7)
      abb84(77)=spak4l6*abb84(70)
      abb84(34)=abb84(34)*abb84(10)
      abb84(79)=spak4l5*abb84(34)
      abb84(77)=abb84(77)+abb84(79)
      abb84(77)=spbk7k4*spae7k7*abb84(77)
      abb84(12)=abb84(77)+abb84(12)
      abb84(12)=4.0_ki*abb84(12)
      abb84(77)=-spak1l6*spbk2k1
      abb84(79)=-spak3l6*spbk3k2
      abb84(77)=abb84(79)+abb84(77)
      abb84(77)=abb84(17)*abb84(77)
      abb84(79)=-spak1l5*spbk2k1
      abb84(80)=-spak3l5*spbk3k2
      abb84(79)=abb84(80)+abb84(79)
      abb84(79)=abb84(20)*abb84(79)
      abb84(80)=abb84(6)*spak1k7
      abb84(81)=-spal6k7*abb84(80)
      abb84(82)=abb84(5)*spak1k7
      abb84(83)=-spal5k7*abb84(82)
      abb84(81)=abb84(83)+abb84(81)
      abb84(81)=abb84(81)*spbk7k2**2
      abb84(18)=-spbk4k2*abb84(18)
      abb84(18)=abb84(18)+abb84(81)+abb84(79)+abb84(77)
      abb84(18)=8.0_ki*abb84(18)
      abb84(77)=abb84(70)*spal6e7
      abb84(79)=abb84(34)*spal5e7
      abb84(77)=abb84(77)+abb84(79)
      abb84(79)=8.0_ki*abb84(77)
      abb84(81)=abb84(10)*spak1e7
      abb84(83)=abb84(81)*spbk7k2
      abb84(84)=abb84(83)*spal5k7
      abb84(85)=abb84(7)*spak1e7
      abb84(86)=abb84(85)*spbk7k2
      abb84(87)=abb84(86)*spal6k7
      abb84(84)=abb84(84)+abb84(87)
      abb84(87)=abb84(84)-2.0_ki*abb84(77)
      abb84(87)=4.0_ki*abb84(87)
      abb84(77)=abb84(77)-abb84(84)
      abb84(77)=4.0_ki*abb84(77)
      abb84(84)=spal6k7*abb84(17)
      abb84(88)=spal5k7*abb84(20)
      abb84(84)=abb84(84)+abb84(88)
      abb84(84)=spbk7e7*abb84(84)
      abb84(70)=-spak2l6*abb84(70)
      abb84(34)=-spak2l5*abb84(34)
      abb84(7)=spak4l6*abb84(7)
      abb84(10)=spak4l5*abb84(10)
      abb84(7)=abb84(7)+abb84(10)
      abb84(7)=spbk7k4*spak1k7*abb84(7)
      abb84(7)=abb84(7)+abb84(34)+abb84(70)+abb84(84)+abb84(31)
      abb84(7)=4.0_ki*abb84(7)
      abb84(10)=spbe7k1*abb84(49)
      abb84(31)=spak3l6*abb84(51)
      abb84(34)=spak3l5*abb84(55)
      abb84(47)=spbe7k4*abb84(47)
      abb84(10)=-abb84(47)-abb84(34)+abb84(10)-abb84(31)
      abb84(31)=spak2l6*abb84(86)
      abb84(34)=spak2l5*abb84(83)
      abb84(10)=abb84(34)+abb84(31)+2.0_ki*abb84(10)
      abb84(10)=2.0_ki*abb84(10)
      abb84(16)=spak1l6*abb84(16)
      abb84(19)=spak1l5*abb84(19)
      abb84(16)=abb84(16)+abb84(19)
      abb84(16)=8.0_ki*abb84(16)
      abb84(19)=abb84(66)+es71
      abb84(19)=2.0_ki*abb84(19)
      abb84(31)=-abb84(85)*abb84(19)
      abb84(34)=spak1k3*spbk3k2
      abb84(47)=abb84(6)*abb84(34)
      abb84(49)=spbk4k2*abb84(43)
      abb84(17)=abb84(47)-3.0_ki*abb84(17)+abb84(49)
      abb84(17)=8.0_ki*abb84(17)
      abb84(47)=8.0_ki*abb84(85)
      abb84(49)=4.0_ki*spbk7e7
      abb84(51)=abb84(80)*abb84(49)
      abb84(55)=abb84(49)*spak1e7
      abb84(66)=abb84(6)*abb84(55)
      abb84(19)=-abb84(81)*abb84(19)
      abb84(34)=abb84(5)*abb84(34)
      abb84(70)=spbk4k2*abb84(62)
      abb84(20)=abb84(34)-3.0_ki*abb84(20)+abb84(70)
      abb84(20)=8.0_ki*abb84(20)
      abb84(34)=8.0_ki*abb84(81)
      abb84(49)=abb84(82)*abb84(49)
      abb84(55)=abb84(5)*abb84(55)
      abb84(50)=abb84(50)*spak1l6
      abb84(63)=abb84(63)*spak1l5
      abb84(50)=abb84(50)+abb84(63)
      abb84(50)=8.0_ki*abb84(50)
      abb84(63)=-spbk4k3*abb84(50)
      abb84(70)=spbk3k2*abb84(37)
      abb84(80)=16.0_ki*abb84(70)
      abb84(70)=8.0_ki*abb84(70)
      abb84(81)=-8.0_ki*spbk4k2*abb84(37)
      abb84(24)=8.0_ki*abb84(24)*abb84(30)
      abb84(40)=8.0_ki*abb84(40)
      abb84(25)=8.0_ki*abb84(25)
      abb84(50)=-spbk3k1*abb84(50)
      abb84(82)=16.0_ki*spbk3k1
      abb84(43)=-abb84(43)*abb84(82)
      abb84(62)=-abb84(62)*abb84(82)
      abb84(37)=-spbk2k1*abb84(37)
      abb84(30)=abb84(37)+abb84(30)
      abb84(30)=8.0_ki*abb84(30)
      abb84(6)=-8.0_ki*abb84(6)
      abb84(5)=-8.0_ki*abb84(5)
      R2d84=0.0_ki
      rat2 = rat2 + R2d84
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='84' value='", &
          & R2d84, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd84h0
