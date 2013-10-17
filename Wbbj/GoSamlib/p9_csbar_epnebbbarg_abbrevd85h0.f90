module     p9_csbar_epnebbbarg_abbrevd85h0
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(104), public :: abb85
   complex(ki), public :: R2d85
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p9_csbar_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_color, only: TR
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb85(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb85(2)=es56**(-1)
      abb85(3)=spbl5k2**(-1)
      abb85(4)=spbl6k2**(-1)
      abb85(5)=TR*gW
      abb85(5)=i_*c2*abb85(5)**2*mB*CVSC*abb85(2)*abb85(1)
      abb85(6)=abb85(3)*abb85(5)
      abb85(7)=abb85(6)*spbe7k1
      abb85(8)=spbk3k2*spak2k4
      abb85(9)=abb85(7)*abb85(8)
      abb85(10)=es712-es71
      abb85(11)=abb85(10)-es12
      abb85(12)=-abb85(9)*abb85(11)
      abb85(13)=spak1e7*spbk2k1
      abb85(14)=spbk7k2*spae7k7
      abb85(15)=abb85(13)-abb85(14)
      abb85(16)=-spak2l6*abb85(12)*abb85(15)
      abb85(5)=abb85(4)*abb85(5)
      abb85(17)=abb85(5)*spbe7k1
      abb85(18)=abb85(17)*abb85(8)
      abb85(19)=-abb85(18)*abb85(11)
      abb85(20)=-spak2l5*abb85(19)*abb85(15)
      abb85(21)=abb85(17)*spak4l5
      abb85(22)=abb85(7)*spak4l6
      abb85(21)=abb85(21)+abb85(22)
      abb85(22)=spbk2k1*spak2k4
      abb85(23)=spak1e7*abb85(22)*abb85(21)
      abb85(24)=es12-es712
      abb85(25)=abb85(24)+es71
      abb85(26)=-abb85(25)*abb85(23)
      abb85(14)=abb85(14)*spak2k4*abb85(21)
      abb85(27)=-abb85(11)*abb85(14)
      abb85(26)=abb85(26)+abb85(27)
      abb85(26)=spbk4k3*abb85(26)
      abb85(16)=abb85(26)+abb85(16)+abb85(20)
      abb85(16)=4.0_ki*abb85(16)
      abb85(20)=abb85(5)*spbk2k1
      abb85(26)=abb85(20)*spak2l5
      abb85(27)=abb85(6)*spbk2k1
      abb85(28)=abb85(27)*spak2l6
      abb85(26)=abb85(26)+abb85(28)
      abb85(28)=abb85(26)*abb85(8)
      abb85(29)=abb85(6)*spak4l6
      abb85(30)=abb85(5)*spak4l5
      abb85(29)=abb85(29)+abb85(30)
      abb85(30)=spbk2k1*abb85(29)
      abb85(31)=spbk4k3*spak2k4*abb85(30)
      abb85(28)=abb85(28)+abb85(31)
      abb85(32)=es12*abb85(28)
      abb85(33)=abb85(6)*abb85(8)
      abb85(34)=abb85(33)*es12
      abb85(35)=-abb85(33)*abb85(10)
      abb85(34)=abb85(34)+abb85(35)
      abb85(36)=spak2k7*spbk7k3
      abb85(37)=spak3k4*spbk3k2
      abb85(38)=abb85(36)*abb85(37)
      abb85(39)=abb85(38)*abb85(6)
      abb85(40)=abb85(34)+abb85(39)
      abb85(41)=spal6k7*spbk7k1
      abb85(42)=abb85(40)*abb85(41)
      abb85(43)=abb85(5)*abb85(8)
      abb85(44)=abb85(43)*es12
      abb85(45)=-abb85(43)*abb85(10)
      abb85(44)=abb85(44)+abb85(45)
      abb85(46)=abb85(38)*abb85(5)
      abb85(47)=abb85(44)+abb85(46)
      abb85(48)=spal5k7*spbk7k1
      abb85(49)=abb85(47)*abb85(48)
      abb85(32)=abb85(49)+abb85(42)+abb85(32)
      abb85(32)=8.0_ki*abb85(32)
      abb85(42)=abb85(38)*abb85(7)
      abb85(12)=abb85(42)+abb85(12)
      abb85(42)=abb85(12)*spal6e7
      abb85(38)=abb85(38)*abb85(17)
      abb85(19)=abb85(38)+abb85(19)
      abb85(38)=abb85(19)*spal5e7
      abb85(38)=abb85(42)+abb85(38)
      abb85(42)=-8.0_ki*abb85(38)
      abb85(49)=abb85(27)*abb85(8)
      abb85(50)=abb85(37)*abb85(6)
      abb85(51)=abb85(50)*spbk3k1
      abb85(52)=-abb85(49)-abb85(51)
      abb85(52)=spak2l6*abb85(52)
      abb85(8)=abb85(20)*abb85(8)
      abb85(37)=abb85(37)*abb85(5)
      abb85(53)=abb85(37)*spbk3k1
      abb85(54)=-abb85(8)-abb85(53)
      abb85(54)=spak2l5*abb85(54)
      abb85(52)=abb85(52)+abb85(54)
      abb85(52)=16.0_ki*abb85(52)
      abb85(54)=2.0_ki*spae7k7
      abb85(55)=abb85(54)*abb85(11)
      abb85(56)=2.0_ki*spak1e7
      abb85(57)=abb85(56)*spak2k7
      abb85(58)=abb85(57)*spbk2k1
      abb85(58)=abb85(58)+abb85(55)
      abb85(58)=abb85(58)*spbk7k3*abb85(21)
      abb85(59)=spbe7k3*spak2e7
      abb85(60)=abb85(29)*abb85(59)
      abb85(61)=spbk2k1*abb85(60)
      abb85(62)=es71*abb85(61)
      abb85(58)=abb85(62)+abb85(58)
      abb85(62)=4.0_ki*abb85(58)
      abb85(63)=es71*abb85(29)
      abb85(64)=abb85(29)*es712
      abb85(64)=abb85(63)-abb85(64)
      abb85(65)=abb85(64)*spbk3k1
      abb85(66)=abb85(30)*abb85(36)
      abb85(65)=abb85(66)-abb85(65)
      abb85(66)=16.0_ki*abb85(65)
      abb85(67)=8.0_ki*abb85(61)
      abb85(68)=spak2l5*abb85(18)
      abb85(69)=spak2l6*abb85(9)
      abb85(68)=abb85(68)+abb85(69)
      abb85(68)=abb85(15)*abb85(68)
      abb85(14)=abb85(23)-abb85(14)
      abb85(14)=abb85(14)*spbk4k3
      abb85(14)=abb85(14)-abb85(58)+abb85(68)
      abb85(23)=-4.0_ki*abb85(14)
      abb85(58)=abb85(48)*abb85(43)
      abb85(68)=abb85(41)*abb85(33)
      abb85(58)=abb85(58)+abb85(68)
      abb85(65)=2.0_ki*abb85(65)
      abb85(28)=-abb85(65)-abb85(28)-abb85(58)
      abb85(28)=8.0_ki*abb85(28)
      abb85(68)=abb85(9)*spal6e7
      abb85(69)=abb85(18)*spal5e7
      abb85(68)=abb85(68)+abb85(69)
      abb85(69)=abb85(68)-abb85(61)
      abb85(70)=-8.0_ki*abb85(69)
      abb85(38)=2.0_ki*abb85(38)
      abb85(71)=abb85(50)*abb85(59)
      abb85(72)=abb85(71)*abb85(41)
      abb85(73)=abb85(37)*abb85(59)
      abb85(74)=abb85(73)*abb85(48)
      abb85(72)=abb85(72)+abb85(74)
      abb85(74)=-abb85(72)+abb85(38)
      abb85(74)=4.0_ki*abb85(74)
      abb85(68)=abb85(68)+abb85(61)
      abb85(75)=8.0_ki*abb85(68)
      abb85(14)=-abb85(14)+2.0_ki*abb85(72)-abb85(38)
      abb85(14)=2.0_ki*abb85(14)
      abb85(38)=-abb85(49)-2.0_ki*abb85(51)
      abb85(38)=spak2l6*abb85(38)
      abb85(8)=-abb85(8)-2.0_ki*abb85(53)
      abb85(8)=spak2l5*abb85(8)
      abb85(8)=abb85(31)+abb85(8)-abb85(65)+abb85(38)+abb85(58)
      abb85(8)=4.0_ki*abb85(8)
      abb85(31)=-4.0_ki*abb85(69)
      abb85(38)=4.0_ki*abb85(61)
      abb85(49)=4.0_ki*abb85(68)
      abb85(58)=-2.0_ki*abb85(68)
      abb85(34)=spak2l6*abb85(34)
      abb85(44)=spak2l5*abb85(44)
      abb85(34)=abb85(34)+abb85(44)
      abb85(34)=spbe7k2*abb85(34)
      abb85(44)=es71*spak2k4
      abb85(61)=abb85(44)*abb85(29)
      abb85(65)=spak2k4*abb85(29)
      abb85(68)=abb85(65)*abb85(24)
      abb85(61)=abb85(68)+abb85(61)
      abb85(68)=spbk4k3*spbe7k2
      abb85(61)=abb85(61)*abb85(68)
      abb85(69)=spal6k7*spbk7e7
      abb85(40)=-abb85(40)*abb85(69)
      abb85(72)=spal5k7*spbk7e7
      abb85(47)=-abb85(47)*abb85(72)
      abb85(12)=spak1l6*abb85(12)
      abb85(19)=spak1l5*abb85(19)
      abb85(12)=abb85(19)+abb85(12)+abb85(47)+abb85(40)+abb85(34)+abb85(61)
      abb85(12)=4.0_ki*abb85(12)
      abb85(19)=abb85(29)*abb85(36)
      abb85(34)=abb85(19)*spbe7k2
      abb85(34)=8.0_ki*abb85(34)
      abb85(40)=abb85(43)*spak2l5
      abb85(47)=abb85(33)*spak2l6
      abb85(19)=-abb85(47)-abb85(40)+2.0_ki*abb85(19)
      abb85(19)=abb85(19)*spbe7k2
      abb85(9)=abb85(9)*spak1l6
      abb85(18)=abb85(18)*spak1l5
      abb85(40)=abb85(72)*abb85(43)
      abb85(47)=abb85(69)*abb85(33)
      abb85(61)=abb85(68)*abb85(65)
      abb85(9)=-abb85(61)+abb85(19)-abb85(9)-abb85(18)+abb85(40)+abb85(47)
      abb85(18)=-4.0_ki*abb85(9)
      abb85(9)=-2.0_ki*abb85(9)
      abb85(19)=-spak1l6*abb85(71)
      abb85(40)=-spak1l5*abb85(73)
      abb85(19)=abb85(19)+abb85(40)
      abb85(19)=2.0_ki*spbk7k1*abb85(19)
      abb85(40)=-spbk7k3*abb85(50)
      abb85(47)=-spbk7k2*abb85(33)
      abb85(40)=abb85(40)+abb85(47)
      abb85(40)=spak2l6*abb85(40)
      abb85(47)=-spbk7k3*abb85(37)
      abb85(61)=-spbk7k2*abb85(43)
      abb85(47)=abb85(47)+abb85(61)
      abb85(47)=spak2l5*abb85(47)
      abb85(40)=abb85(40)+abb85(47)
      abb85(40)=8.0_ki*abb85(40)
      abb85(47)=spbk7k2*abb85(60)
      abb85(60)=8.0_ki*abb85(47)
      abb85(47)=4.0_ki*abb85(47)
      abb85(54)=spak2k7*abb85(54)*spbk7k3**2
      abb85(61)=abb85(7)*abb85(54)
      abb85(65)=abb85(59)*abb85(6)
      abb85(68)=spbk3k1*es71
      abb85(76)=-abb85(65)*abb85(68)
      abb85(61)=abb85(61)+abb85(76)
      abb85(61)=spak3k4*abb85(61)
      abb85(76)=spak3k4*spbk3k1
      abb85(22)=abb85(76)-abb85(22)
      abb85(77)=abb85(36)*abb85(7)
      abb85(78)=-abb85(77)*abb85(22)
      abb85(79)=-abb85(7)*abb85(24)
      abb85(80)=abb85(7)*es71
      abb85(79)=-abb85(80)+abb85(79)
      abb85(81)=spbk3k1*spak2k4
      abb85(82)=abb85(79)*abb85(81)
      abb85(78)=abb85(82)+abb85(78)
      abb85(78)=abb85(78)*abb85(56)
      abb85(82)=abb85(27)*abb85(59)
      abb85(83)=abb85(82)*abb85(44)
      abb85(61)=abb85(78)+abb85(83)+abb85(61)
      abb85(61)=2.0_ki*abb85(61)
      abb85(78)=abb85(36)*abb85(27)
      abb85(83)=-spak2k4*abb85(78)
      abb85(84)=abb85(25)*spbk3k1
      abb85(85)=abb85(6)*spak2k4
      abb85(86)=abb85(85)*abb85(84)
      abb85(83)=abb85(83)+abb85(86)
      abb85(86)=spak3k4*spak1k2*spbk3k1**2
      abb85(87)=abb85(6)*abb85(86)
      abb85(83)=2.0_ki*abb85(83)+abb85(87)
      abb85(83)=8.0_ki*abb85(83)
      abb85(87)=abb85(76)*abb85(65)
      abb85(88)=abb85(82)*spak2k4
      abb85(87)=abb85(87)-abb85(88)
      abb85(88)=4.0_ki*abb85(87)
      abb85(89)=spae7k7*spak2k4
      abb85(90)=abb85(7)*spbk7k3
      abb85(91)=abb85(89)*abb85(90)
      abb85(92)=spak1e7*abb85(81)
      abb85(93)=abb85(92)*abb85(7)
      abb85(91)=abb85(91)-abb85(93)
      abb85(93)=4.0_ki*abb85(91)
      abb85(94)=abb85(85)*spbk3k1
      abb85(95)=-8.0_ki*abb85(94)
      abb85(87)=abb85(87)+abb85(91)
      abb85(87)=2.0_ki*abb85(87)
      abb85(91)=4.0_ki*abb85(94)
      abb85(94)=spak3k4*spbe7k3
      abb85(96)=abb85(6)*abb85(94)
      abb85(97)=-spbe7k2*abb85(85)
      abb85(96)=abb85(97)+abb85(96)
      abb85(96)=abb85(36)*abb85(96)
      abb85(85)=abb85(85)*spbe7k3
      abb85(97)=abb85(85)*abb85(25)
      abb85(96)=abb85(97)+abb85(96)
      abb85(96)=4.0_ki*abb85(96)
      abb85(97)=4.0_ki*abb85(85)
      abb85(85)=2.0_ki*abb85(85)
      abb85(98)=spak3k4*spbk7k3
      abb85(99)=spbk7k2*spak2k4
      abb85(98)=abb85(98)-abb85(99)
      abb85(98)=4.0_ki*abb85(98)
      abb85(99)=-abb85(65)*abb85(98)
      abb85(51)=-spak1k2*abb85(51)
      abb85(35)=abb85(51)+abb85(39)+abb85(35)
      abb85(35)=8.0_ki*abb85(35)
      abb85(39)=4.0_ki*abb85(71)
      abb85(51)=16.0_ki*abb85(33)
      abb85(71)=2.0_ki*abb85(71)
      abb85(33)=-8.0_ki*abb85(33)
      abb85(54)=abb85(17)*abb85(54)
      abb85(100)=abb85(59)*abb85(5)
      abb85(68)=-abb85(100)*abb85(68)
      abb85(54)=abb85(54)+abb85(68)
      abb85(54)=spak3k4*abb85(54)
      abb85(68)=abb85(36)*abb85(17)
      abb85(22)=-abb85(68)*abb85(22)
      abb85(24)=-abb85(17)*abb85(24)
      abb85(101)=abb85(17)*es71
      abb85(24)=-abb85(101)+abb85(24)
      abb85(81)=abb85(24)*abb85(81)
      abb85(22)=abb85(81)+abb85(22)
      abb85(22)=abb85(22)*abb85(56)
      abb85(59)=abb85(20)*abb85(59)
      abb85(44)=abb85(59)*abb85(44)
      abb85(22)=abb85(22)+abb85(44)+abb85(54)
      abb85(22)=2.0_ki*abb85(22)
      abb85(44)=abb85(36)*abb85(20)
      abb85(54)=-spak2k4*abb85(44)
      abb85(81)=abb85(5)*spak2k4
      abb85(84)=abb85(81)*abb85(84)
      abb85(54)=abb85(54)+abb85(84)
      abb85(84)=abb85(5)*abb85(86)
      abb85(54)=2.0_ki*abb85(54)+abb85(84)
      abb85(54)=8.0_ki*abb85(54)
      abb85(84)=abb85(76)*abb85(100)
      abb85(86)=abb85(59)*spak2k4
      abb85(84)=abb85(84)-abb85(86)
      abb85(86)=4.0_ki*abb85(84)
      abb85(102)=abb85(17)*spbk7k3
      abb85(89)=abb85(89)*abb85(102)
      abb85(92)=abb85(92)*abb85(17)
      abb85(89)=abb85(89)-abb85(92)
      abb85(92)=4.0_ki*abb85(89)
      abb85(103)=abb85(81)*spbk3k1
      abb85(104)=-8.0_ki*abb85(103)
      abb85(84)=abb85(84)+abb85(89)
      abb85(84)=2.0_ki*abb85(84)
      abb85(89)=4.0_ki*abb85(103)
      abb85(94)=abb85(5)*abb85(94)
      abb85(103)=-spbe7k2*abb85(81)
      abb85(94)=abb85(103)+abb85(94)
      abb85(94)=abb85(36)*abb85(94)
      abb85(81)=abb85(81)*spbe7k3
      abb85(25)=abb85(81)*abb85(25)
      abb85(25)=abb85(25)+abb85(94)
      abb85(25)=4.0_ki*abb85(25)
      abb85(94)=4.0_ki*abb85(81)
      abb85(81)=2.0_ki*abb85(81)
      abb85(98)=-abb85(100)*abb85(98)
      abb85(53)=-spak1k2*abb85(53)
      abb85(45)=abb85(53)+abb85(46)+abb85(45)
      abb85(45)=8.0_ki*abb85(45)
      abb85(46)=4.0_ki*abb85(73)
      abb85(53)=16.0_ki*abb85(43)
      abb85(73)=2.0_ki*abb85(73)
      abb85(43)=-8.0_ki*abb85(43)
      abb85(103)=spak2l6*abb85(79)*abb85(15)
      abb85(15)=spak2l5*abb85(24)*abb85(15)
      abb85(11)=abb85(11)*spae7k7
      abb85(13)=spak2k7*abb85(13)
      abb85(11)=abb85(13)+abb85(11)
      abb85(11)=spbk7k4*abb85(21)*abb85(11)
      abb85(11)=abb85(11)+abb85(103)+abb85(15)
      abb85(13)=abb85(90)*abb85(55)
      abb85(15)=es71*abb85(82)
      abb85(21)=abb85(56)*spbk2k1
      abb85(56)=abb85(77)*abb85(21)
      abb85(13)=abb85(56)+abb85(15)+abb85(13)
      abb85(13)=spak3l6*abb85(13)
      abb85(15)=abb85(102)*abb85(55)
      abb85(55)=es71*abb85(59)
      abb85(21)=abb85(68)*abb85(21)
      abb85(15)=abb85(21)+abb85(55)+abb85(15)
      abb85(15)=spak3l5*abb85(15)
      abb85(21)=spak2e7*spbk2k1
      abb85(55)=abb85(63)*abb85(21)*spbe7k4
      abb85(11)=abb85(55)+abb85(15)+abb85(13)+2.0_ki*abb85(11)
      abb85(11)=2.0_ki*abb85(11)
      abb85(13)=-abb85(6)*abb85(10)
      abb85(15)=spbk3k1*abb85(13)
      abb85(15)=-abb85(78)+abb85(15)
      abb85(15)=spak3l6*abb85(15)
      abb85(10)=-abb85(5)*abb85(10)
      abb85(55)=spbk3k1*abb85(10)
      abb85(44)=-abb85(44)+abb85(55)
      abb85(44)=spak3l5*abb85(44)
      abb85(55)=spbk4k1*abb85(64)
      abb85(56)=es12*abb85(26)
      abb85(63)=abb85(6)*es12
      abb85(63)=abb85(63)+abb85(13)
      abb85(64)=abb85(63)*abb85(41)
      abb85(68)=abb85(5)*es12
      abb85(68)=abb85(68)+abb85(10)
      abb85(77)=abb85(68)*abb85(48)
      abb85(78)=spbk7k4*spak2k7
      abb85(90)=-abb85(30)*abb85(78)
      abb85(15)=abb85(55)+abb85(90)+abb85(44)+abb85(15)+abb85(77)+abb85(64)+abb&
      &85(56)
      abb85(15)=8.0_ki*abb85(15)
      abb85(44)=abb85(29)*spbe7k4
      abb85(21)=abb85(21)*abb85(44)
      abb85(55)=abb85(82)*spak3l6
      abb85(56)=abb85(59)*spak3l5
      abb85(21)=abb85(21)+abb85(55)+abb85(56)
      abb85(55)=abb85(79)*spal6e7
      abb85(56)=abb85(24)*spal5e7
      abb85(55)=abb85(55)+abb85(56)
      abb85(55)=2.0_ki*abb85(55)
      abb85(56)=abb85(55)+abb85(21)
      abb85(56)=4.0_ki*abb85(56)
      abb85(59)=-16.0_ki*abb85(26)
      abb85(64)=-abb85(6)*abb85(41)
      abb85(77)=-abb85(5)*abb85(48)
      abb85(64)=abb85(77)+abb85(64)-abb85(26)
      abb85(64)=16.0_ki*abb85(64)
      abb85(21)=abb85(21)-abb85(55)
      abb85(55)=4.0_ki*abb85(21)
      abb85(21)=-2.0_ki*abb85(21)
      abb85(26)=-8.0_ki*abb85(26)
      abb85(77)=-spak3l6*abb85(6)
      abb85(82)=-spak3l5*abb85(5)
      abb85(77)=abb85(82)+abb85(77)
      abb85(36)=abb85(36)*abb85(77)
      abb85(77)=spak2l6*abb85(63)
      abb85(82)=spak2l5*abb85(68)
      abb85(29)=-abb85(29)*abb85(78)
      abb85(29)=abb85(29)+abb85(36)+abb85(77)+abb85(82)
      abb85(29)=spbe7k2*abb85(29)
      abb85(36)=-abb85(63)*abb85(69)
      abb85(63)=-abb85(68)*abb85(72)
      abb85(68)=-spak1l6*abb85(79)
      abb85(24)=-spak1l5*abb85(24)
      abb85(24)=abb85(24)+abb85(68)+abb85(63)+abb85(36)+abb85(29)
      abb85(24)=4.0_ki*abb85(24)
      abb85(29)=spak3l6*abb85(65)
      abb85(36)=spak3l5*abb85(100)
      abb85(44)=spak2e7*abb85(44)
      abb85(29)=abb85(44)+abb85(29)+abb85(36)
      abb85(29)=4.0_ki*spbk7k2*abb85(29)
      abb85(36)=abb85(6)*spak2l6
      abb85(44)=abb85(5)*spak2l5
      abb85(36)=abb85(36)+abb85(44)
      abb85(44)=8.0_ki*abb85(36)
      abb85(63)=-spbk7k2*abb85(44)
      abb85(57)=abb85(57)*spbk7k1
      abb85(65)=-abb85(7)*abb85(57)
      abb85(68)=-spak2e7*abb85(80)
      abb85(65)=abb85(68)+abb85(65)
      abb85(65)=2.0_ki*abb85(65)
      abb85(68)=16.0_ki*spbk7k1
      abb85(68)=abb85(68)*spak2k7
      abb85(69)=abb85(6)*abb85(68)
      abb85(72)=4.0_ki*spak2e7
      abb85(77)=abb85(72)*abb85(7)
      abb85(78)=2.0_ki*spak2e7
      abb85(7)=abb85(7)*abb85(78)
      abb85(79)=4.0_ki*spak2k7
      abb85(79)=abb85(79)*spbk7e7
      abb85(80)=-abb85(6)*abb85(79)
      abb85(82)=abb85(72)*spbk7e7
      abb85(90)=-abb85(6)*abb85(82)
      abb85(100)=es234-es34
      abb85(102)=abb85(6)*abb85(100)
      abb85(13)=abb85(13)+abb85(102)
      abb85(13)=8.0_ki*abb85(13)
      abb85(57)=-abb85(17)*abb85(57)
      abb85(101)=-spak2e7*abb85(101)
      abb85(57)=abb85(101)+abb85(57)
      abb85(57)=2.0_ki*abb85(57)
      abb85(68)=abb85(5)*abb85(68)
      abb85(72)=abb85(72)*abb85(17)
      abb85(17)=abb85(17)*abb85(78)
      abb85(78)=-abb85(5)*abb85(79)
      abb85(79)=-abb85(5)*abb85(82)
      abb85(82)=abb85(5)*abb85(100)
      abb85(10)=abb85(10)+abb85(82)
      abb85(10)=8.0_ki*abb85(10)
      abb85(36)=spbk3k2*abb85(36)
      abb85(82)=16.0_ki*abb85(36)
      abb85(36)=8.0_ki*abb85(36)
      abb85(44)=spbk4k2*abb85(44)
      abb85(100)=8.0_ki*abb85(30)
      abb85(41)=-abb85(50)*abb85(41)
      abb85(37)=-abb85(37)*abb85(48)
      abb85(37)=abb85(41)+abb85(37)
      abb85(37)=8.0_ki*abb85(37)
      abb85(30)=16.0_ki*abb85(30)
      abb85(41)=-abb85(6)*abb85(76)
      abb85(48)=abb85(27)*spak2k4
      abb85(41)=abb85(48)+abb85(41)
      abb85(41)=8.0_ki*abb85(41)
      abb85(48)=-abb85(5)*abb85(76)
      abb85(50)=abb85(20)*spak2k4
      abb85(48)=abb85(50)+abb85(48)
      abb85(48)=8.0_ki*abb85(48)
      abb85(27)=spak3l6*abb85(27)
      abb85(20)=spak3l5*abb85(20)
      abb85(20)=abb85(27)+abb85(20)
      abb85(20)=8.0_ki*abb85(20)
      abb85(6)=8.0_ki*abb85(6)
      abb85(5)=8.0_ki*abb85(5)
      R2d85=0.0_ki
      rat2 = rat2 + R2d85
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='85' value='", &
          & R2d85, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd85h0