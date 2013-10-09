module     p5_usbar_epnebbbarg_abbrevd77h3
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(88), public :: abb77
   complex(ki), public :: R2d77
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p5_usbar_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_color, only: TR
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb77(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb77(2)=sqrt(mB**2)
      abb77(3)=NC**(-1)
      abb77(4)=es71**(-1)
      abb77(5)=spak2l6**(-1)
      abb77(6)=spak2l5**(-1)
      abb77(7)=spbl6k2**(-1)
      abb77(8)=spbl5k2**(-1)
      abb77(9)=abb77(1)*i_*CVSU
      abb77(10)=TR*gW
      abb77(10)=abb77(10)**2
      abb77(11)=abb77(10)*abb77(4)*abb77(9)
      abb77(12)=abb77(11)*spbe7k1
      abb77(13)=abb77(12)*c1
      abb77(14)=-NC+2.0_ki*abb77(3)
      abb77(15)=-abb77(14)*spak2k4*abb77(13)
      abb77(16)=abb77(3)**2
      abb77(17)=abb77(16)*abb77(12)*c4
      abb77(18)=spak2k4*abb77(17)
      abb77(18)=abb77(15)+abb77(18)
      abb77(19)=abb77(18)*abb77(2)
      abb77(20)=spbk7k3*spae7k7
      abb77(21)=abb77(20)*spak2k7
      abb77(22)=spbk3k1*spak1k2
      abb77(23)=abb77(22)*spae7k7
      abb77(21)=abb77(21)-abb77(23)
      abb77(24)=abb77(21)*spbk7l5
      abb77(25)=abb77(19)*abb77(24)
      abb77(26)=abb77(19)*spak1e7
      abb77(27)=spbk7k3*spak2k7
      abb77(28)=abb77(27)-abb77(22)
      abb77(29)=abb77(28)*spbl5k1
      abb77(30)=-abb77(26)*abb77(29)
      abb77(25)=abb77(25)+abb77(30)
      abb77(25)=spbl6k2*abb77(25)
      abb77(30)=spbl5k3*abb77(2)
      abb77(31)=abb77(30)*abb77(18)
      abb77(32)=abb77(31)*spbl6k2
      abb77(33)=mB**2
      abb77(34)=-abb77(33)*abb77(18)
      abb77(35)=abb77(30)*abb77(5)
      abb77(36)=abb77(35)*abb77(34)
      abb77(37)=abb77(32)+abb77(36)
      abb77(38)=spbk7l5*spae7k7
      abb77(39)=spbl5k1*spak1e7
      abb77(38)=abb77(38)-abb77(39)
      abb77(37)=spak2l5*abb77(38)*abb77(37)
      abb77(34)=abb77(34)*abb77(2)
      abb77(39)=abb77(34)*abb77(5)
      abb77(24)=abb77(39)*abb77(24)
      abb77(40)=abb77(5)*spak1e7
      abb77(34)=abb77(34)*abb77(40)
      abb77(29)=-abb77(34)*abb77(29)
      abb77(24)=abb77(37)+abb77(25)+abb77(24)+abb77(29)
      abb77(24)=4.0_ki*abb77(24)
      abb77(25)=abb77(11)*c1
      abb77(29)=-abb77(25)*abb77(14)
      abb77(16)=abb77(16)*c4
      abb77(11)=abb77(16)*abb77(11)
      abb77(29)=abb77(29)+abb77(11)
      abb77(37)=spbl6k3*abb77(2)
      abb77(41)=abb77(29)*abb77(37)
      abb77(42)=spak4k7*spbk7l5
      abb77(43)=spak1k4*spbl5k1
      abb77(42)=abb77(42)-abb77(43)
      abb77(43)=-abb77(41)*abb77(42)
      abb77(44)=abb77(25)*spak2k4
      abb77(45)=-abb77(44)*abb77(14)
      abb77(46)=spak2k4*abb77(11)
      abb77(45)=abb77(45)+abb77(46)
      abb77(30)=abb77(45)*abb77(30)
      abb77(47)=spbl6k2*abb77(30)
      abb77(43)=abb77(47)+abb77(43)
      abb77(47)=spbk7k1*spak2k7
      abb77(43)=abb77(47)*abb77(43)
      abb77(48)=abb77(37)*abb77(33)*abb77(6)
      abb77(33)=abb77(35)*abb77(33)
      abb77(33)=abb77(48)+abb77(33)
      abb77(33)=spak2k7*abb77(45)*abb77(33)
      abb77(35)=-spbk7k1*abb77(33)
      abb77(35)=abb77(35)+abb77(43)
      abb77(35)=8.0_ki*abb77(35)
      abb77(43)=-abb77(18)*abb77(48)
      abb77(36)=abb77(43)+abb77(36)
      abb77(13)=-abb77(13)*abb77(14)
      abb77(13)=abb77(13)+abb77(17)
      abb77(17)=abb77(13)*abb77(37)
      abb77(48)=abb77(42)*abb77(17)
      abb77(32)=-abb77(32)+abb77(48)-abb77(36)
      abb77(32)=abb77(32)*spak2e7
      abb77(37)=-abb77(38)*abb77(18)*abb77(37)
      abb77(32)=abb77(32)+abb77(37)
      abb77(32)=8.0_ki*abb77(32)
      abb77(48)=abb77(6)*mB
      abb77(49)=-abb77(48)*abb77(14)
      abb77(44)=-abb77(44)*abb77(49)
      abb77(46)=abb77(46)*abb77(48)
      abb77(44)=abb77(44)-abb77(46)
      abb77(46)=abb77(44)*abb77(47)
      abb77(50)=16.0_ki*spbl6k3
      abb77(51)=abb77(46)*abb77(50)
      abb77(15)=-abb77(48)*abb77(15)
      abb77(12)=abb77(48)*abb77(12)
      abb77(52)=abb77(16)*abb77(12)
      abb77(53)=abb77(52)*spak2k4
      abb77(15)=abb77(15)-abb77(53)
      abb77(53)=abb77(15)*spak2e7
      abb77(54)=abb77(53)*spbl6k3
      abb77(55)=16.0_ki*abb77(54)
      abb77(56)=8.0_ki*abb77(37)
      abb77(57)=abb77(23)*abb77(15)
      abb77(58)=-mB*abb77(18)
      abb77(59)=spbl5k3*spae7k7
      abb77(60)=abb77(58)*abb77(59)
      abb77(57)=abb77(57)-abb77(60)
      abb77(60)=mB**3
      abb77(61)=-abb77(60)*abb77(18)
      abb77(59)=abb77(5)*abb77(61)*abb77(59)
      abb77(62)=abb77(5)*abb77(60)*abb77(6)
      abb77(63)=-abb77(18)*abb77(62)
      abb77(21)=-abb77(63)*abb77(21)
      abb77(21)=-abb77(59)+abb77(21)
      abb77(21)=abb77(7)*abb77(21)
      abb77(64)=abb77(20)*abb77(15)
      abb77(65)=spak2k7*abb77(64)
      abb77(21)=abb77(21)+abb77(65)-abb77(57)
      abb77(21)=spbk7l6*abb77(21)
      abb77(40)=spbl5k3*abb77(61)*abb77(40)
      abb77(61)=abb77(63)*spak1e7
      abb77(65)=abb77(61)*abb77(28)
      abb77(65)=abb77(40)+abb77(65)
      abb77(65)=abb77(7)*abb77(65)
      abb77(58)=spak1e7*abb77(58)*spbl5k3
      abb77(66)=abb77(15)*spak1e7
      abb77(67)=-abb77(66)*abb77(28)
      abb77(65)=abb77(65)-abb77(58)+abb77(67)
      abb77(65)=spbl6k1*abb77(65)
      abb77(43)=abb77(43)*abb77(8)
      abb77(67)=abb77(38)*abb77(43)
      abb77(21)=abb77(67)+abb77(21)+abb77(65)
      abb77(21)=8.0_ki*abb77(21)
      abb77(65)=abb77(45)*abb77(62)
      abb77(67)=abb77(7)*abb77(65)*abb77(47)
      abb77(67)=abb77(67)+abb77(46)
      abb77(50)=abb77(67)*abb77(50)
      abb77(68)=abb77(63)*abb77(7)
      abb77(69)=abb77(68)*spak2e7
      abb77(70)=abb77(69)*spbl6k3
      abb77(54)=abb77(70)-abb77(54)
      abb77(54)=16.0_ki*abb77(54)
      abb77(37)=-4.0_ki*abb77(37)
      abb77(70)=abb77(17)*spak1k2
      abb77(71)=spbk7e7*spak2k7
      abb77(41)=abb77(41)*abb77(71)
      abb77(41)=abb77(70)-abb77(41)
      abb77(41)=-abb77(41)*abb77(42)
      abb77(36)=spak1k2*abb77(36)
      abb77(33)=spbk7e7*abb77(33)
      abb77(31)=spak1k2*abb77(31)
      abb77(30)=-abb77(71)*abb77(30)
      abb77(30)=abb77(31)+abb77(30)
      abb77(30)=spbl6k2*abb77(30)
      abb77(30)=abb77(30)+abb77(33)+abb77(36)+abb77(41)
      abb77(30)=4.0_ki*abb77(30)
      abb77(31)=abb77(15)*spak1k2
      abb77(33)=abb77(44)*abb77(71)
      abb77(31)=abb77(31)-abb77(33)
      abb77(36)=abb77(31)*spbl6k3
      abb77(41)=8.0_ki*abb77(36)
      abb77(42)=abb77(63)*spak1k2
      abb77(44)=abb77(65)*abb77(71)
      abb77(42)=abb77(42)+abb77(44)
      abb77(42)=abb77(42)*abb77(7)
      abb77(44)=-spbl6k3*abb77(42)
      abb77(36)=abb77(44)+abb77(36)
      abb77(36)=8.0_ki*abb77(36)
      abb77(44)=8.0_ki*abb77(46)
      abb77(46)=-spbk7k3*abb77(44)
      abb77(65)=8.0_ki*abb77(53)
      abb77(70)=abb77(65)*spbk7k3
      abb77(72)=4.0_ki*abb77(31)
      abb77(73)=-spbk7k3*abb77(72)
      abb77(74)=-spbl5k3*abb77(44)
      abb77(75)=abb77(65)*spbl5k3
      abb77(72)=-spbl5k3*abb77(72)
      abb77(76)=spbl5k3*spak2k7*mB*abb77(29)
      abb77(25)=-abb77(25)*abb77(49)
      abb77(11)=abb77(11)*abb77(48)
      abb77(11)=abb77(25)-abb77(11)
      abb77(25)=spbk7k3*spak2k7**2
      abb77(77)=abb77(11)*abb77(25)
      abb77(77)=abb77(77)-abb77(76)
      abb77(77)=spbk7k1*abb77(77)
      abb77(78)=abb77(11)*abb77(47)
      abb77(79)=-spak2l6*spbl6k3
      abb77(79)=abb77(79)-abb77(22)
      abb77(79)=abb77(78)*abb77(79)
      abb77(77)=abb77(77)+abb77(79)
      abb77(77)=8.0_ki*abb77(77)
      abb77(12)=-abb77(14)*abb77(12)*c1
      abb77(12)=abb77(12)+abb77(52)
      abb77(52)=abb77(12)*spak2e7
      abb77(79)=abb77(52)*spbl6k3
      abb77(80)=abb77(79)*spak2l6
      abb77(28)=abb77(28)*abb77(52)
      abb77(81)=mB*abb77(13)
      abb77(82)=abb77(81)*spbl5k3
      abb77(83)=abb77(82)*spak2e7
      abb77(28)=-abb77(80)+abb77(28)+abb77(83)
      abb77(28)=8.0_ki*abb77(28)
      abb77(80)=spak2k7*abb77(22)
      abb77(25)=abb77(80)-abb77(25)
      abb77(25)=abb77(11)*abb77(25)
      abb77(25)=abb77(76)+abb77(25)
      abb77(25)=spbk7e7*abb77(25)
      abb77(11)=abb77(11)*abb77(71)
      abb77(76)=abb77(12)*spak1k2
      abb77(11)=abb77(11)+abb77(76)
      abb77(80)=abb77(11)*spbl6k3
      abb77(83)=spak2l6*abb77(80)
      abb77(84)=-abb77(76)*abb77(27)
      abb77(82)=-spak1k2*abb77(82)
      abb77(85)=spbk3k1*abb77(12)*spak1k2**2
      abb77(25)=abb77(83)+abb77(25)+abb77(85)+abb77(84)+abb77(82)
      abb77(25)=4.0_ki*abb77(25)
      abb77(13)=abb77(13)*abb77(2)
      abb77(82)=abb77(13)*spak2k7
      abb77(83)=spbk7l6*spae7k7
      abb77(84)=-abb77(83)*abb77(82)
      abb77(85)=abb77(13)*spak1k2
      abb77(86)=spbl6k1*spae7k7*abb77(85)
      abb77(84)=abb77(84)+abb77(86)
      abb77(84)=spbk7l5*abb77(84)
      abb77(82)=spbk7l6*spak1e7*abb77(82)
      abb77(86)=spbl6k1*spak1e7
      abb77(87)=-abb77(86)*abb77(85)
      abb77(82)=abb77(82)+abb77(87)
      abb77(82)=spbl5k1*abb77(82)
      abb77(87)=spak2l5*spbl6l5*abb77(13)*abb77(38)
      abb77(82)=abb77(87)+abb77(84)+abb77(82)
      abb77(82)=4.0_ki*abb77(82)
      abb77(29)=abb77(29)*abb77(2)
      abb77(84)=8.0_ki*spbl6l5
      abb77(87)=abb77(47)*abb77(84)*abb77(29)
      abb77(84)=spak2e7*abb77(84)*abb77(13)
      abb77(29)=-abb77(71)*abb77(29)
      abb77(29)=abb77(85)+abb77(29)
      abb77(29)=4.0_ki*spbl6l5*abb77(29)
      abb77(12)=abb77(12)*spak2k7
      abb77(85)=abb77(86)-abb77(83)
      abb77(86)=4.0_ki*abb77(85)
      abb77(88)=abb77(12)*abb77(86)
      abb77(23)=-abb77(63)*abb77(23)
      abb77(23)=abb77(59)+abb77(23)
      abb77(23)=abb77(7)*abb77(23)
      abb77(23)=abb77(23)+abb77(57)
      abb77(23)=spbk7k2*abb77(23)
      abb77(57)=-abb77(27)*abb77(61)
      abb77(40)=abb77(57)-abb77(40)
      abb77(40)=abb77(7)*abb77(40)
      abb77(27)=abb77(66)*abb77(27)
      abb77(27)=abb77(40)+abb77(27)+abb77(58)
      abb77(27)=spbk2k1*abb77(27)
      abb77(40)=abb77(20)*abb77(63)
      abb77(57)=spbk3k1*abb77(61)
      abb77(40)=abb77(40)+abb77(57)
      abb77(40)=abb77(7)*abb77(40)
      abb77(57)=abb77(66)*spbk3k1
      abb77(40)=abb77(40)-abb77(64)-abb77(57)
      abb77(40)=es12*abb77(40)
      abb77(9)=spak2k4*abb77(10)*spbe7k1*abb77(9)
      abb77(10)=c1*abb77(9)
      abb77(49)=abb77(10)*abb77(49)
      abb77(9)=abb77(16)*abb77(9)
      abb77(10)=abb77(10)*abb77(14)
      abb77(10)=-abb77(9)+abb77(10)
      abb77(10)=abb77(7)*abb77(10)*abb77(62)
      abb77(9)=abb77(48)*abb77(9)
      abb77(9)=abb77(10)+abb77(9)+abb77(49)
      abb77(9)=abb77(20)*abb77(9)
      abb77(10)=-abb77(20)*abb77(68)
      abb77(10)=abb77(64)+abb77(10)
      abb77(10)=es712*abb77(10)
      abb77(9)=abb77(10)+abb77(40)+abb77(27)+abb77(23)+abb77(9)
      abb77(9)=4.0_ki*abb77(9)
      abb77(10)=abb77(60)*abb77(6)**2
      abb77(14)=abb77(10)*abb77(45)
      abb77(16)=abb77(8)*abb77(14)*abb77(47)
      abb77(23)=-abb77(16)+abb77(67)
      abb77(23)=spbk3k2*abb77(23)
      abb77(27)=spak4l6*spbl6k3*abb77(78)
      abb77(23)=abb77(23)+abb77(27)
      abb77(23)=8.0_ki*abb77(23)
      abb77(10)=-abb77(10)*abb77(18)
      abb77(18)=spak2e7*abb77(10)*abb77(8)
      abb77(27)=abb77(53)+abb77(18)-abb77(69)
      abb77(27)=abb77(27)*spbk3k2
      abb77(40)=abb77(57)-abb77(64)
      abb77(45)=abb77(79)*spak4l6
      abb77(27)=abb77(27)-abb77(45)+abb77(40)
      abb77(27)=8.0_ki*abb77(27)
      abb77(45)=-8.0_ki*abb77(40)
      abb77(47)=8.0_ki*abb77(8)
      abb77(47)=abb77(47)*abb77(10)
      abb77(48)=-spbk3k1*spak1e7
      abb77(48)=abb77(20)+abb77(48)
      abb77(48)=abb77(48)*abb77(47)
      abb77(40)=4.0_ki*abb77(40)
      abb77(10)=abb77(10)*spak1k2
      abb77(14)=abb77(14)*abb77(71)
      abb77(10)=abb77(10)+abb77(14)
      abb77(10)=abb77(10)*abb77(8)
      abb77(14)=abb77(10)-abb77(42)+abb77(31)
      abb77(14)=spbk3k2*abb77(14)
      abb77(31)=-spak4l6*abb77(80)
      abb77(14)=abb77(14)+abb77(31)
      abb77(14)=4.0_ki*abb77(14)
      abb77(12)=-spak1e7*abb77(12)
      abb77(31)=spae7k7*abb77(76)
      abb77(12)=abb77(12)+abb77(31)
      abb77(12)=spbk7k1*abb77(12)
      abb77(31)=abb77(81)*abb77(38)
      abb77(12)=abb77(12)+abb77(31)
      abb77(12)=4.0_ki*abb77(12)
      abb77(31)=-8.0_ki*abb77(78)
      abb77(42)=8.0_ki*abb77(52)
      abb77(49)=4.0_ki*abb77(11)
      abb77(53)=spak4k7*spak1e7
      abb77(57)=-spak1k4*spae7k7
      abb77(53)=abb77(57)+abb77(53)
      abb77(53)=spbk7k1*abb77(53)
      abb77(38)=-spak4l5*abb77(38)
      abb77(38)=abb77(38)+abb77(53)
      abb77(17)=abb77(17)*abb77(38)
      abb77(19)=-abb77(20)*abb77(19)
      abb77(26)=spbk3k1*abb77(26)
      abb77(19)=abb77(19)+abb77(26)
      abb77(19)=spbl6k2*abb77(19)
      abb77(26)=-spbk7k2*spae7k7
      abb77(38)=spbk2k1*spak1e7
      abb77(26)=abb77(38)+abb77(26)
      abb77(26)=abb77(26)*abb77(43)
      abb77(20)=-abb77(20)*abb77(39)
      abb77(34)=spbk3k1*abb77(34)
      abb77(17)=abb77(19)+abb77(20)+abb77(34)+abb77(26)+abb77(17)
      abb77(17)=4.0_ki*abb77(17)
      abb77(13)=abb77(81)-abb77(13)
      abb77(13)=abb77(13)*abb77(86)
      abb77(19)=spak4k7*spbk7l6
      abb77(20)=spak1k4*spbl6k1
      abb77(26)=spak4l5*spbl6l5
      abb77(19)=-abb77(26)+abb77(19)-abb77(20)
      abb77(20)=-abb77(78)*abb77(19)
      abb77(16)=spbl6k2*abb77(16)
      abb77(16)=abb77(16)+abb77(20)
      abb77(16)=8.0_ki*abb77(16)
      abb77(20)=abb77(19)*abb77(52)
      abb77(26)=abb77(66)*spbl6k1
      abb77(34)=abb77(83)*abb77(15)
      abb77(26)=abb77(26)-abb77(34)
      abb77(18)=abb77(18)*spbl6k2
      abb77(18)=-abb77(18)+abb77(20)-abb77(26)
      abb77(18)=8.0_ki*abb77(18)
      abb77(20)=8.0_ki*abb77(26)
      abb77(34)=abb77(85)*abb77(47)
      abb77(26)=-4.0_ki*abb77(26)
      abb77(11)=abb77(11)*abb77(19)
      abb77(10)=-spbl6k2*abb77(10)
      abb77(10)=abb77(10)+abb77(11)
      abb77(10)=4.0_ki*abb77(10)
      abb77(11)=abb77(76)*abb77(86)
      abb77(19)=-spbk3k1*abb77(44)
      abb77(38)=abb77(65)*spbk3k1
      abb77(15)=-abb77(15)*abb77(22)
      abb77(22)=spbk3k1*abb77(33)
      abb77(15)=abb77(15)+abb77(22)
      abb77(15)=4.0_ki*abb77(15)
      R2d77=0.0_ki
      rat2 = rat2 + R2d77
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='77' value='", &
          & R2d77, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd77h3
