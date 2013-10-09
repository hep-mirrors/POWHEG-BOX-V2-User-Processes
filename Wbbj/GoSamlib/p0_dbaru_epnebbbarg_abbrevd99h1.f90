module     p0_dbaru_epnebbbarg_abbrevd99h1
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(95), public :: abb99
   complex(ki), public :: R2d99
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
      abb99(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb99(2)=1.0_ki/(mB**2-es67-es56+es567)
      abb99(3)=NC**(-1)
      abb99(4)=es234**(-1)
      abb99(5)=spak2l5**(-1)
      abb99(6)=spbl6k2**(-1)
      abb99(7)=spbl5k2**(-1)
      abb99(8)=sqrt(mB**2)
      abb99(9)=abb99(4)*i_*CVDU*abb99(2)*abb99(1)
      abb99(10)=TR*gW
      abb99(10)=abb99(10)**2
      abb99(11)=abb99(9)*abb99(10)
      abb99(12)=abb99(3)**2
      abb99(13)=abb99(12)+1.0_ki
      abb99(14)=abb99(11)*abb99(13)
      abb99(15)=spak2e7*abb99(5)
      abb99(16)=abb99(15)*c2
      abb99(17)=abb99(16)*abb99(6)
      abb99(18)=mB**2
      abb99(19)=abb99(17)*abb99(18)*abb99(14)
      abb99(20)=2.0_ki*c1
      abb99(21)=abb99(20)*abb99(3)
      abb99(22)=abb99(9)*abb99(21)
      abb99(23)=abb99(15)*abb99(6)
      abb99(24)=abb99(22)*abb99(23)*abb99(18)
      abb99(25)=abb99(24)*abb99(10)
      abb99(19)=abb99(19)-abb99(25)
      abb99(25)=spbk7e7*spak1k7
      abb99(26)=spbk3k2**2
      abb99(27)=abb99(25)*abb99(26)*abb99(19)
      abb99(28)=abb99(8)*abb99(6)
      abb99(29)=abb99(3)*mB
      abb99(30)=abb99(28)*abb99(29)
      abb99(31)=spbe7l5*abb99(11)
      abb99(32)=abb99(20)*abb99(31)
      abb99(33)=abb99(30)*abb99(32)
      abb99(34)=abb99(31)*abb99(13)
      abb99(35)=mB*abb99(34)
      abb99(36)=abb99(6)*c2
      abb99(37)=abb99(36)*abb99(8)
      abb99(38)=abb99(35)*abb99(37)
      abb99(33)=abb99(38)-abb99(33)
      abb99(38)=spak1e7*abb99(26)*abb99(33)
      abb99(27)=abb99(27)+abb99(38)
      abb99(38)=spak3k4*spak1l5
      abb99(39)=abb99(38)*abb99(27)
      abb99(40)=abb99(31)*spbk3k2
      abb99(41)=abb99(40)*abb99(13)
      abb99(42)=abb99(41)*c2
      abb99(43)=abb99(21)*abb99(40)
      abb99(42)=abb99(42)-abb99(43)
      abb99(43)=abb99(42)*spal5e7
      abb99(44)=abb99(43)*spak1k7
      abb99(45)=spbk7k2*spak1l6*abb99(44)
      abb99(46)=abb99(43)*spak1l6
      abb99(47)=spbl5k2*spak1l5
      abb99(48)=abb99(46)*abb99(47)
      abb99(45)=abb99(45)+abb99(48)
      abb99(45)=spak2k4*abb99(45)
      abb99(48)=abb99(18)*abb99(31)
      abb99(12)=abb99(48)*abb99(12)
      abb99(49)=abb99(12)*abb99(26)
      abb99(50)=abb99(26)*abb99(48)
      abb99(49)=abb99(49)+abb99(50)
      abb99(51)=abb99(49)*abb99(17)
      abb99(50)=abb99(50)*abb99(21)
      abb99(52)=abb99(50)*abb99(23)
      abb99(51)=abb99(52)-abb99(51)
      abb99(52)=spak3k4*abb99(51)*spak1l5**2
      abb99(53)=abb99(5)*c2
      abb99(54)=abb99(49)*abb99(53)
      abb99(55)=abb99(50)*abb99(5)
      abb99(54)=abb99(55)-abb99(54)
      abb99(55)=spak1l6*spak3k4
      abb99(56)=abb99(55)*abb99(7)
      abb99(57)=abb99(56)*spak1k2
      abb99(54)=abb99(54)*abb99(57)
      abb99(58)=-spal5e7*abb99(54)
      abb99(59)=abb99(55)*spbk7k3
      abb99(60)=-abb99(44)*abb99(59)
      abb99(61)=abb99(55)*spbl5k3
      abb99(62)=abb99(61)*spak1l5
      abb99(63)=-abb99(43)*abb99(62)
      abb99(39)=abb99(63)+abb99(60)+abb99(58)+abb99(45)+abb99(52)+abb99(39)
      abb99(39)=spbl5k1*abb99(39)
      abb99(27)=abb99(27)*spak3k4
      abb99(45)=abb99(42)*spae7k7
      abb99(52)=abb99(59)*abb99(45)
      abb99(51)=abb99(51)*abb99(38)
      abb99(27)=abb99(27)+abb99(52)+abb99(51)
      abb99(51)=abb99(45)*spak1l6
      abb99(52)=abb99(51)*spbk7k2
      abb99(58)=spak2k4*abb99(52)
      abb99(58)=abb99(58)-abb99(27)
      abb99(58)=es71*abb99(58)
      abb99(60)=abb99(8)*c2
      abb99(63)=abb99(60)*abb99(14)
      abb99(64)=abb99(22)*abb99(10)
      abb99(65)=-abb99(8)*abb99(64)
      abb99(63)=abb99(63)+abb99(65)
      abb99(65)=mB**3
      abb99(66)=abb99(65)*abb99(26)
      abb99(67)=spak2e7*abb99(5)**2
      abb99(57)=abb99(57)*abb99(67)*abb99(66)*abb99(63)
      abb99(29)=abb99(15)*abb99(29)*abb99(8)
      abb99(63)=abb99(29)*abb99(20)
      abb99(10)=abb99(10)*spbk3k2
      abb99(9)=abb99(10)*abb99(9)
      abb99(68)=abb99(63)*abb99(9)
      abb99(9)=abb99(13)*abb99(9)
      abb99(69)=abb99(16)*abb99(8)
      abb99(70)=abb99(69)*mB
      abb99(71)=abb99(9)*abb99(70)
      abb99(68)=abb99(71)-abb99(68)
      abb99(59)=abb99(59)*spak1k7
      abb99(59)=abb99(59)+abb99(62)
      abb99(62)=-abb99(68)*abb99(59)
      abb99(71)=abb99(68)*spak1l6
      abb99(72)=spbk7k2*spak1k7
      abb99(73)=abb99(72)+abb99(47)
      abb99(73)=spak2k4*abb99(71)*abb99(73)
      abb99(57)=abb99(73)+abb99(57)+abb99(62)
      abb99(57)=spbe7k1*abb99(57)
      abb99(62)=abb99(67)*abb99(36)
      abb99(26)=abb99(26)*mB**4
      abb99(73)=abb99(62)*abb99(14)*abb99(26)
      abb99(74)=abb99(67)*abb99(26)
      abb99(64)=abb99(64)*abb99(74)*abb99(6)
      abb99(64)=abb99(73)-abb99(64)
      abb99(73)=abb99(64)*abb99(25)
      abb99(32)=abb99(32)*abb99(3)
      abb99(75)=abb99(66)*abb99(32)
      abb99(76)=abb99(5)*abb99(75)*abb99(28)
      abb99(28)=abb99(28)*abb99(66)*abb99(34)
      abb99(66)=abb99(28)*abb99(53)
      abb99(66)=abb99(76)-abb99(66)
      abb99(76)=-spak1e7*abb99(66)
      abb99(73)=abb99(76)+abb99(73)
      abb99(76)=abb99(7)*spak3k4
      abb99(73)=abb99(76)*abb99(73)
      abb99(74)=abb99(74)*abb99(32)
      abb99(77)=abb99(74)*abb99(6)
      abb99(26)=abb99(26)*abb99(34)
      abb99(62)=abb99(26)*abb99(62)
      abb99(62)=abb99(77)-abb99(62)
      abb99(62)=abb99(62)*abb99(38)
      abb99(26)=c2*abb99(26)*abb99(67)
      abb99(26)=abb99(26)-abb99(74)
      abb99(74)=abb99(26)*abb99(56)
      abb99(74)=abb99(62)+abb99(74)
      abb99(74)=abb99(7)*abb99(74)
      abb99(73)=abb99(74)+abb99(73)
      abb99(73)=es12*abb99(73)
      abb99(74)=abb99(29)*abb99(40)
      abb99(77)=abb99(40)*abb99(18)
      abb99(78)=abb99(15)*abb99(3)
      abb99(79)=abb99(78)*abb99(77)
      abb99(74)=abb99(74)+abb99(79)
      abb99(74)=abb99(74)*abb99(20)
      abb99(41)=mB*abb99(41)
      abb99(79)=abb99(41)*abb99(69)
      abb99(13)=abb99(77)*abb99(13)
      abb99(80)=abb99(13)*abb99(16)
      abb99(74)=abb99(74)-abb99(79)-abb99(80)
      abb99(74)=abb99(74)*spak1l5
      abb99(77)=abb99(77)*abb99(21)
      abb99(81)=abb99(77)*abb99(15)
      abb99(80)=abb99(81)-abb99(80)
      abb99(81)=abb99(7)*spbk7k2
      abb99(82)=abb99(81)*spak1k7
      abb99(83)=abb99(82)*abb99(80)
      abb99(74)=abb99(74)+abb99(83)
      abb99(83)=abb99(8)**2
      abb99(42)=-abb99(83)*abb99(42)
      abb99(84)=abb99(42)*spak1e7
      abb99(85)=abb99(84)-abb99(74)
      abb99(85)=spak1l6*abb99(85)
      abb99(86)=-abb99(25)*abb99(71)
      abb99(85)=abb99(86)+abb99(85)
      abb99(85)=spak2k4*abb99(85)
      abb99(80)=abb99(80)*abb99(7)
      abb99(59)=abb99(80)*abb99(59)
      abb99(59)=abb99(85)+abb99(59)
      abb99(59)=spbk2k1*abb99(59)
      abb99(85)=abb99(68)*abb99(25)
      abb99(86)=abb99(85)-abb99(84)
      abb99(40)=abb99(40)*abb99(20)
      abb99(87)=abb99(40)*abb99(29)
      abb99(79)=abb99(87)-abb99(79)
      abb99(87)=abb99(79)*spak1l5
      abb99(87)=abb99(86)+abb99(87)
      abb99(88)=spbk3k1*abb99(55)*abb99(87)
      abb99(89)=abb99(45)*spak1l5
      abb99(90)=-spak2k4*spbl5k2*spak1l6
      abb99(90)=abb99(61)+abb99(90)
      abb99(90)=abb99(89)*abb99(90)
      abb99(54)=spae7k7*abb99(54)
      abb99(54)=abb99(54)+abb99(90)
      abb99(54)=spbk7k1*abb99(54)
      abb99(39)=abb99(54)+abb99(88)+abb99(73)+abb99(57)+abb99(58)+abb99(59)+abb&
      &99(39)
      abb99(39)=4.0_ki*abb99(39)
      abb99(54)=abb99(89)+abb99(44)
      abb99(54)=abb99(54)*spbk7l5
      abb99(57)=abb99(77)*abb99(5)
      abb99(58)=abb99(13)*abb99(53)
      abb99(57)=abb99(57)-abb99(58)
      abb99(58)=abb99(81)*spae7k7
      abb99(59)=abb99(58)*abb99(57)
      abb99(73)=abb99(57)*spal5e7
      abb99(59)=abb99(59)-abb99(73)
      abb99(81)=abb99(59)*spak1k2
      abb99(54)=abb99(74)-abb99(54)+abb99(81)
      abb99(74)=-2.0_ki*abb99(84)+abb99(85)+abb99(54)
      abb99(81)=abb99(74)*spak4l6
      abb99(24)=abb99(24)*abb99(10)
      abb99(84)=abb99(18)*abb99(9)
      abb99(85)=abb99(84)*abb99(17)
      abb99(24)=abb99(85)-abb99(24)
      abb99(85)=abb99(24)*abb99(25)
      abb99(30)=abb99(40)*abb99(30)
      abb99(37)=abb99(41)*abb99(37)
      abb99(30)=abb99(37)-abb99(30)
      abb99(37)=abb99(30)*spak1e7
      abb99(40)=abb99(85)+abb99(37)
      abb99(41)=abb99(77)*abb99(23)
      abb99(85)=abb99(13)*abb99(17)
      abb99(41)=abb99(41)-abb99(85)
      abb99(85)=abb99(41)*spak1l5
      abb99(85)=abb99(85)+abb99(40)
      abb99(88)=abb99(85)*spbl5k2
      abb99(90)=abb99(88)*spak4l5
      abb99(91)=spbk7k2*abb99(85)
      abb99(92)=abb99(91)*spak4k7
      abb99(93)=spbl5k2*spal5e7
      abb99(94)=spbk7k2*spae7k7
      abb99(93)=abb99(93)-abb99(94)
      abb99(94)=-abb99(30)*abb99(93)
      abb99(95)=abb99(94)*spak1k4
      abb99(90)=-abb99(92)+abb99(95)-abb99(90)
      abb99(81)=abb99(81)-abb99(90)
      abb99(81)=8.0_ki*abb99(81)
      abb99(54)=-spak4l6*abb99(54)
      abb99(62)=-abb99(7)*abb99(62)
      abb99(64)=-abb99(64)*abb99(76)
      abb99(92)=-spak4l6*abb99(68)
      abb99(64)=abb99(64)+abb99(92)
      abb99(64)=abb99(64)*abb99(25)
      abb99(66)=abb99(66)*abb99(76)
      abb99(42)=spak4l6*abb99(42)
      abb99(42)=abb99(66)+2.0_ki*abb99(42)
      abb99(42)=spak1e7*abb99(42)
      abb99(42)=abb99(42)+abb99(64)+abb99(62)+abb99(54)+abb99(90)
      abb99(42)=8.0_ki*abb99(42)
      abb99(54)=spbl5k2*abb99(46)
      abb99(52)=-abb99(52)+abb99(54)
      abb99(52)=spak2k4*abb99(52)
      abb99(49)=abb99(49)*abb99(16)
      abb99(50)=abb99(50)*abb99(15)
      abb99(49)=abb99(50)-abb99(49)
      abb99(50)=-abb99(49)*abb99(56)
      abb99(54)=-abb99(43)*abb99(61)
      abb99(56)=abb99(68)*spbe7k3
      abb99(61)=-abb99(55)*abb99(56)
      abb99(27)=abb99(61)+abb99(54)+abb99(52)+abb99(50)+abb99(27)
      abb99(27)=4.0_ki*abb99(27)
      abb99(50)=8.0_ki*spak1k4
      abb99(52)=abb99(50)*abb99(68)
      abb99(54)=8.0_ki*abb99(71)
      abb99(61)=-spak2k4*abb99(91)
      abb99(40)=spak3k4*abb99(40)
      abb99(41)=abb99(41)*abb99(38)
      abb99(40)=abb99(41)+abb99(40)
      abb99(41)=spbk7k3*abb99(40)
      abb99(41)=abb99(61)+abb99(41)
      abb99(41)=4.0_ki*abb99(41)
      abb99(61)=abb99(45)*spbk7k3
      abb99(56)=abb99(61)-abb99(56)
      abb99(61)=-spak3k4*abb99(56)
      abb99(62)=abb99(49)*abb99(76)
      abb99(61)=abb99(62)+abb99(61)
      abb99(61)=spak1k7*abb99(61)
      abb99(62)=abb99(45)*abb99(72)
      abb99(64)=-spbl5k2*abb99(44)
      abb99(62)=abb99(62)+abb99(64)
      abb99(62)=spak2k4*abb99(62)
      abb99(44)=spbl5k3*spak3k4*abb99(44)
      abb99(44)=abb99(44)+abb99(62)+abb99(61)
      abb99(44)=4.0_ki*abb99(44)
      abb99(61)=abb99(50)*abb99(45)
      abb99(49)=abb99(7)*abb99(49)
      abb99(62)=spbl5k3*abb99(43)
      abb99(49)=abb99(62)+abb99(49)-abb99(56)
      abb99(49)=abb99(38)*abb99(49)
      abb99(56)=spbk7k2*abb99(89)
      abb99(47)=-abb99(43)*abb99(47)
      abb99(47)=abb99(56)+abb99(47)
      abb99(47)=spak2k4*abb99(47)
      abb99(47)=abb99(47)+abb99(49)
      abb99(47)=4.0_ki*abb99(47)
      abb99(49)=abb99(50)*abb99(43)
      abb99(56)=spak3k4*abb99(86)
      abb99(38)=abb99(79)*abb99(38)
      abb99(38)=abb99(38)+abb99(56)
      abb99(38)=4.0_ki*abb99(38)
      abb99(56)=spbk7k3*spae7k7
      abb99(57)=abb99(57)*abb99(56)
      abb99(62)=-spbl5k3*abb99(73)
      abb99(9)=abb99(60)*abb99(9)
      abb99(10)=abb99(22)*abb99(10)
      abb99(22)=-abb99(8)*abb99(10)
      abb99(9)=abb99(9)+abb99(22)
      abb99(9)=spbe7k3*abb99(67)*abb99(65)*abb99(9)
      abb99(9)=abb99(9)+abb99(62)+abb99(57)
      abb99(9)=abb99(76)*abb99(9)
      abb99(22)=-spak2k4*abb99(59)
      abb99(26)=-spak3k4*abb99(26)*abb99(7)**2
      abb99(9)=abb99(9)+abb99(26)+abb99(22)
      abb99(9)=spak1k2*abb99(9)
      abb99(22)=-spak2k4*abb99(87)
      abb99(9)=abb99(22)+abb99(9)
      abb99(9)=4.0_ki*abb99(9)
      abb99(22)=abb99(50)*abb99(80)
      abb99(26)=-spak2k4*abb99(88)
      abb99(50)=spbl5k3*abb99(40)
      abb99(26)=abb99(26)+abb99(50)
      abb99(26)=4.0_ki*abb99(26)
      abb99(50)=8.0_ki*abb99(51)
      abb99(57)=8.0_ki*abb99(46)
      abb99(29)=abb99(29)*abb99(31)
      abb99(31)=abb99(78)*abb99(48)
      abb99(29)=abb99(29)+abb99(31)
      abb99(20)=abb99(29)*abb99(20)
      abb99(12)=abb99(12)+abb99(48)
      abb99(29)=abb99(12)*abb99(16)
      abb99(31)=abb99(35)*abb99(69)
      abb99(20)=-abb99(20)+abb99(31)+abb99(29)
      abb99(20)=abb99(20)*spak1l5
      abb99(31)=abb99(34)*c2
      abb99(31)=abb99(31)-abb99(32)
      abb99(32)=abb99(31)*spal5e7
      abb99(34)=abb99(32)*spak1k7
      abb99(35)=abb99(31)*spae7k7
      abb99(59)=abb99(35)*spak1l5
      abb99(34)=abb99(34)+abb99(59)
      abb99(34)=abb99(34)*spbk7l5
      abb99(53)=abb99(12)*abb99(53)
      abb99(21)=abb99(21)*abb99(48)
      abb99(48)=abb99(21)*abb99(5)
      abb99(48)=abb99(53)-abb99(48)
      abb99(53)=abb99(58)-spal5e7
      abb99(48)=spak1k2*abb99(53)*abb99(48)
      abb99(15)=abb99(21)*abb99(15)
      abb99(15)=abb99(15)-abb99(29)
      abb99(29)=abb99(15)*abb99(82)
      abb99(11)=abb99(63)*abb99(11)
      abb99(14)=abb99(14)*abb99(70)
      abb99(11)=abb99(14)-abb99(11)
      abb99(14)=abb99(11)*abb99(25)
      abb99(31)=spak1e7*abb99(31)*abb99(83)
      abb99(14)=abb99(34)+abb99(48)-abb99(14)-2.0_ki*abb99(31)+abb99(20)-abb99(&
      &29)
      abb99(14)=spak4l6*abb99(14)
      abb99(19)=abb99(19)*abb99(25)
      abb99(12)=abb99(12)*abb99(17)
      abb99(17)=abb99(21)*abb99(23)
      abb99(12)=abb99(12)-abb99(17)
      abb99(12)=abb99(12)*spak1l5
      abb99(17)=abb99(33)*spak1e7
      abb99(12)=abb99(17)+abb99(19)-abb99(12)
      abb99(17)=spak4k7*spbk7k2
      abb99(19)=spbl5k2*spak4l5
      abb99(17)=-abb99(17)-abb99(19)
      abb99(17)=abb99(12)*abb99(17)
      abb99(19)=spak1k4*abb99(93)*abb99(33)
      abb99(14)=-abb99(19)+abb99(17)+abb99(14)
      abb99(17)=spbk4k2*abb99(14)
      abb99(19)=-spak3l6*abb99(74)
      abb99(20)=-spak3k7*abb99(91)
      abb99(21)=-spak3l5*abb99(88)
      abb99(29)=spak1k3*abb99(94)
      abb99(17)=abb99(21)+abb99(20)+abb99(29)+abb99(19)+abb99(17)
      abb99(17)=4.0_ki*abb99(17)
      abb99(19)=spbk4k2*spak1k4
      abb99(20)=abb99(11)*abb99(19)
      abb99(21)=spak1k3*abb99(68)
      abb99(20)=abb99(20)+abb99(21)
      abb99(20)=4.0_ki*abb99(20)
      abb99(21)=4.0_ki*spak1l6
      abb99(29)=abb99(21)*spbk4k2
      abb99(31)=-abb99(11)*abb99(29)
      abb99(33)=abb99(21)*abb99(68)
      abb99(34)=-abb99(35)*abb99(19)
      abb99(48)=-spak1k3*abb99(45)
      abb99(34)=abb99(34)+abb99(48)
      abb99(34)=4.0_ki*abb99(34)
      abb99(48)=abb99(32)*abb99(19)
      abb99(53)=spak1k3*abb99(43)
      abb99(48)=abb99(48)+abb99(53)
      abb99(48)=4.0_ki*abb99(48)
      abb99(15)=abb99(15)*abb99(7)
      abb99(19)=-abb99(15)*abb99(19)
      abb99(53)=-spak1k3*abb99(80)
      abb99(19)=abb99(19)+abb99(53)
      abb99(19)=4.0_ki*abb99(19)
      abb99(53)=abb99(35)*abb99(29)
      abb99(29)=-abb99(32)*abb99(29)
      abb99(14)=-spbk4k3*abb99(14)
      abb99(58)=spak2l6*abb99(74)
      abb99(13)=-abb99(13)*abb99(36)
      abb99(59)=abb99(6)*abb99(77)
      abb99(13)=abb99(13)+abb99(59)
      abb99(13)=spak1l5*abb99(13)
      abb99(36)=abb99(84)*abb99(36)
      abb99(10)=-abb99(6)*abb99(18)*abb99(10)
      abb99(10)=abb99(36)+abb99(10)
      abb99(10)=abb99(25)*abb99(10)
      abb99(10)=abb99(13)+abb99(10)
      abb99(10)=spak2e7*abb99(10)
      abb99(13)=spak2l5*abb99(37)
      abb99(10)=abb99(13)+abb99(10)
      abb99(10)=spbl5k2*abb99(10)
      abb99(13)=-es712+es12+es71
      abb99(13)=abb99(85)*abb99(13)
      abb99(18)=-spak1k2*abb99(94)
      abb99(10)=abb99(58)+abb99(18)+abb99(14)+abb99(13)+abb99(10)
      abb99(10)=4.0_ki*abb99(10)
      abb99(13)=abb99(80)*spak1l6
      abb99(14)=abb99(13)+abb99(85)
      abb99(18)=8.0_ki*abb99(14)
      abb99(25)=-spak1k2*abb99(68)
      abb99(36)=spbk4k3*spak1k4
      abb99(37)=-abb99(11)*abb99(36)
      abb99(25)=abb99(25)+abb99(37)
      abb99(25)=4.0_ki*abb99(25)
      abb99(37)=abb99(21)*spbk4k3
      abb99(11)=abb99(11)*abb99(37)
      abb99(58)=spak1k2*abb99(45)
      abb99(59)=abb99(35)*abb99(36)
      abb99(58)=abb99(58)+abb99(59)
      abb99(58)=4.0_ki*abb99(58)
      abb99(59)=-spak1k2*abb99(43)
      abb99(60)=-abb99(32)*abb99(36)
      abb99(59)=abb99(59)+abb99(60)
      abb99(59)=4.0_ki*abb99(59)
      abb99(60)=spak1k2*abb99(80)
      abb99(36)=abb99(15)*abb99(36)
      abb99(36)=abb99(60)+abb99(36)
      abb99(36)=4.0_ki*abb99(36)
      abb99(35)=-abb99(35)*abb99(37)
      abb99(32)=abb99(32)*abb99(37)
      abb99(15)=abb99(15)*spak1l6
      abb99(12)=abb99(15)+abb99(12)
      abb99(12)=4.0_ki*abb99(12)
      abb99(15)=spbk4k2*abb99(12)
      abb99(12)=-spbk4k3*abb99(12)
      abb99(37)=abb99(21)*abb99(45)
      abb99(21)=abb99(21)*abb99(43)
      abb99(14)=4.0_ki*abb99(14)
      abb99(43)=spbl5k1*abb99(43)
      abb99(60)=spbe7k1*abb99(68)
      abb99(45)=-spbk7k1*abb99(45)
      abb99(43)=abb99(45)+abb99(60)+abb99(43)
      abb99(43)=abb99(55)*abb99(43)
      abb99(45)=-abb99(55)*abb99(80)
      abb99(45)=abb99(45)+abb99(40)
      abb99(45)=spbk2k1*abb99(45)
      abb99(43)=abb99(45)+abb99(43)
      abb99(43)=4.0_ki*abb99(43)
      abb99(13)=spbk2k1*abb99(13)
      abb99(45)=-spbl5k1*abb99(46)
      abb99(46)=-spbe7k1*abb99(71)
      abb99(51)=spbk7k1*abb99(51)
      abb99(13)=abb99(51)+abb99(46)+abb99(45)+abb99(13)-abb99(94)
      abb99(13)=spak2k4*abb99(13)
      abb99(45)=-spbl5k3*spal5e7
      abb99(45)=abb99(45)+abb99(56)
      abb99(30)=abb99(30)*abb99(45)
      abb99(24)=-spbe7k3*abb99(83)*abb99(24)
      abb99(24)=abb99(24)+abb99(30)
      abb99(24)=spak3k4*abb99(24)
      abb99(16)=abb99(16)*abb99(28)
      abb99(23)=-abb99(8)*abb99(23)*abb99(75)
      abb99(16)=abb99(16)+abb99(23)
      abb99(16)=abb99(16)*abb99(76)
      abb99(23)=-spbk3k1*abb99(40)
      abb99(13)=abb99(23)+abb99(16)+abb99(13)+abb99(24)
      abb99(13)=4.0_ki*abb99(13)
      R2d99=0.0_ki
      rat2 = rat2 + R2d99
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='99' value='", &
          & R2d99, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd99h1
