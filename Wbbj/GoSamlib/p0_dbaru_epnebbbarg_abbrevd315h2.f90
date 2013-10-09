module     p0_dbaru_epnebbbarg_abbrevd315h2
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(94), public :: abb315
   complex(ki), public :: R2d315
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
      abb315(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb315(2)=sqrt(mB**2)
      abb315(3)=NC**(-1)
      abb315(4)=es234**(-1)
      abb315(5)=spbl5k2**(-1)
      abb315(6)=spak2l6**(-1)
      abb315(7)=spbl6k2**(-1)
      abb315(8)=c1+c3
      abb315(9)=abb315(3)*spbk3k2**2
      abb315(10)=TR*gW
      abb315(10)=i_*CVDU*abb315(10)**2
      abb315(11)=abb315(4)*abb315(1)*abb315(10)
      abb315(12)=abb315(11)*abb315(5)
      abb315(13)=abb315(8)*abb315(9)*abb315(12)
      abb315(14)=spbk3k2*abb315(3)
      abb315(15)=abb315(14)**2
      abb315(16)=abb315(15)*c2
      abb315(17)=abb315(16)*abb315(12)
      abb315(13)=abb315(13)-abb315(17)
      abb315(17)=spbe7l6*spak1e7
      abb315(18)=abb315(2)*mB
      abb315(19)=abb315(18)**2
      abb315(20)=abb315(17)*abb315(19)*abb315(13)
      abb315(21)=abb315(8)*abb315(19)
      abb315(22)=abb315(11)*abb315(6)
      abb315(23)=abb315(22)*abb315(14)
      abb315(24)=abb315(23)*abb315(21)
      abb315(25)=abb315(3)**2
      abb315(26)=abb315(25)*spbk3k2
      abb315(27)=abb315(26)*c2
      abb315(28)=abb315(22)*abb315(27)
      abb315(29)=abb315(28)*abb315(19)
      abb315(24)=abb315(24)-abb315(29)
      abb315(24)=abb315(24)*spak2l5
      abb315(29)=spbe7k3*spak1e7
      abb315(30)=-abb315(29)*abb315(24)
      abb315(31)=abb315(22)*abb315(5)
      abb315(32)=abb315(19)*abb315(31)
      abb315(33)=abb315(32)*abb315(16)
      abb315(34)=abb315(8)*abb315(31)
      abb315(35)=abb315(34)*abb315(9)
      abb315(36)=abb315(19)*abb315(35)
      abb315(33)=abb315(33)-abb315(36)
      abb315(36)=spak2e7*spbe7l6
      abb315(37)=spak1l6*abb315(33)*abb315(36)
      abb315(20)=abb315(37)+abb315(30)+abb315(20)
      abb315(20)=spak3k4*abb315(20)
      abb315(30)=abb315(8)*abb315(11)*abb315(14)
      abb315(37)=abb315(11)*c2
      abb315(26)=abb315(26)*abb315(37)
      abb315(26)=abb315(30)-abb315(26)
      abb315(38)=spbk7k3*spae7k7
      abb315(39)=abb315(7)*spak2l5
      abb315(40)=abb315(39)*spak3k4
      abb315(41)=abb315(40)*abb315(38)
      abb315(42)=spbk7k2*spak2k4
      abb315(43)=abb315(42)*spae7k7
      abb315(44)=-abb315(39)*abb315(43)
      abb315(41)=abb315(44)+abb315(41)
      abb315(44)=abb315(2)*mB**3
      abb315(45)=abb315(6)**2
      abb315(46)=abb315(44)*abb315(45)
      abb315(47)=spbe7k2*spak1k2
      abb315(41)=-abb315(47)*abb315(41)*abb315(26)*abb315(46)
      abb315(23)=abb315(8)*abb315(23)
      abb315(23)=abb315(23)-abb315(28)
      abb315(23)=abb315(18)*abb315(23)
      abb315(28)=spak3k4*spak1k2
      abb315(48)=abb315(28)*abb315(23)
      abb315(49)=abb315(48)*abb315(38)
      abb315(50)=abb315(23)*spak1k2
      abb315(51)=-abb315(50)*abb315(43)
      abb315(49)=abb315(51)+abb315(49)
      abb315(49)=spak1l5*abb315(49)
      abb315(33)=-abb315(33)*abb315(28)*spak1e7
      abb315(33)=abb315(33)+abb315(49)
      abb315(33)=spbe7k1*abb315(33)
      abb315(49)=abb315(2)**2
      abb315(51)=abb315(49)*abb315(26)
      abb315(52)=spak2k4*spak1e7
      abb315(53)=abb315(52)*spbe7k2
      abb315(54)=-abb315(51)*abb315(53)
      abb315(55)=spak3k4*abb315(51)*spak1e7
      abb315(56)=spbe7k3*abb315(55)
      abb315(54)=abb315(56)+abb315(54)
      abb315(54)=spak1l5*abb315(54)
      abb315(56)=abb315(8)*abb315(9)
      abb315(56)=abb315(56)-abb315(16)
      abb315(12)=abb315(12)*abb315(18)
      abb315(57)=spak1e7*spbk7e7
      abb315(58)=abb315(57)*spak3k4
      abb315(59)=-spak1k7*abb315(58)*abb315(12)*abb315(56)
      abb315(54)=abb315(59)+abb315(54)
      abb315(54)=spbl6k1*abb315(54)
      abb315(59)=spae7k7*spbe7l6
      abb315(60)=abb315(59)*spbk7k3
      abb315(61)=abb315(48)*abb315(60)
      abb315(42)=abb315(42)*abb315(59)
      abb315(62)=-abb315(50)*abb315(42)
      abb315(61)=abb315(61)+abb315(62)
      abb315(61)=spal5l6*abb315(61)
      abb315(24)=abb315(53)*abb315(24)
      abb315(62)=abb315(31)*abb315(16)
      abb315(35)=abb315(62)-abb315(35)
      abb315(35)=abb315(44)*abb315(35)
      abb315(44)=-spak2k7*abb315(35)*abb315(58)
      abb315(20)=abb315(61)+abb315(54)+abb315(33)+abb315(44)+abb315(24)+abb315(&
      &20)+abb315(41)
      abb315(20)=4.0_ki*abb315(20)
      abb315(24)=-spbk3k1*abb315(48)
      abb315(33)=es12*spak2k4*abb315(23)
      abb315(24)=abb315(33)+abb315(24)
      abb315(24)=spak1l5*abb315(24)
      abb315(11)=abb315(11)*abb315(8)
      abb315(33)=abb315(9)*abb315(11)
      abb315(15)=-abb315(15)*abb315(37)
      abb315(15)=abb315(15)+abb315(33)
      abb315(15)=abb315(39)*abb315(46)*abb315(15)
      abb315(15)=abb315(35)+abb315(15)
      abb315(15)=abb315(28)*abb315(15)
      abb315(33)=-abb315(50)*spbl6k2*spak2k4
      abb315(35)=spbl6k3*abb315(48)
      abb315(33)=abb315(33)+abb315(35)
      abb315(33)=spal5l6*abb315(33)
      abb315(15)=abb315(33)+abb315(15)+abb315(24)
      abb315(15)=8.0_ki*abb315(15)
      abb315(24)=-abb315(30)*abb315(18)*abb315(5)
      abb315(30)=abb315(12)*abb315(27)
      abb315(24)=abb315(30)+abb315(24)
      abb315(30)=abb315(24)*spbl6k2
      abb315(33)=abb315(57)*spak4k7
      abb315(35)=abb315(30)*abb315(33)
      abb315(41)=abb315(17)*spak4l5
      abb315(44)=abb315(41)*abb315(51)
      abb315(46)=spal5e7*spbk7e7
      abb315(54)=abb315(46)*abb315(50)
      abb315(61)=abb315(54)*spak4k7
      abb315(21)=abb315(31)*abb315(14)*abb315(21)
      abb315(62)=abb315(32)*abb315(27)
      abb315(21)=abb315(21)-abb315(62)
      abb315(62)=abb315(47)*spak4e7
      abb315(63)=abb315(21)*abb315(62)
      abb315(64)=spbk7e7*spak4e7*spak1k2
      abb315(65)=abb315(64)*spal5k7
      abb315(66)=abb315(65)*abb315(23)
      abb315(35)=-abb315(61)+abb315(35)+abb315(44)+abb315(63)+abb315(66)
      abb315(44)=8.0_ki*abb315(35)
      abb315(61)=abb315(30)*spak1k4
      abb315(63)=2.0_ki*abb315(50)
      abb315(66)=abb315(63)*spak4l5
      abb315(61)=abb315(61)+abb315(66)
      abb315(66)=16.0_ki*abb315(61)
      abb315(45)=abb315(7)*abb315(13)*abb315(45)*mB**4
      abb315(67)=abb315(45)*spak2k7
      abb315(68)=abb315(58)*abb315(67)
      abb315(35)=abb315(68)-abb315(35)
      abb315(35)=8.0_ki*abb315(35)
      abb315(45)=-abb315(28)*abb315(45)
      abb315(45)=abb315(45)+abb315(61)
      abb315(45)=16.0_ki*abb315(45)
      abb315(61)=mB**2
      abb315(31)=abb315(31)*abb315(61)
      abb315(68)=-abb315(8)*abb315(31)*abb315(14)
      abb315(69)=abb315(27)*abb315(31)
      abb315(68)=abb315(69)+abb315(68)
      abb315(69)=16.0_ki*abb315(68)
      abb315(70)=abb315(69)*abb315(33)
      abb315(71)=abb315(68)*spak1k4
      abb315(71)=32.0_ki*abb315(71)
      abb315(72)=abb315(31)*abb315(8)
      abb315(9)=abb315(9)*abb315(72)
      abb315(16)=abb315(16)*abb315(31)
      abb315(9)=-abb315(16)+abb315(9)
      abb315(16)=abb315(9)*spak3k4
      abb315(73)=spak2e7*spbk7e7
      abb315(74)=abb315(16)*abb315(73)
      abb315(75)=spak1k7*abb315(74)
      abb315(76)=-abb315(26)*spak1l5
      abb315(77)=abb315(76)*spak3k4
      abb315(78)=-abb315(77)*abb315(60)
      abb315(79)=abb315(76)*abb315(42)
      abb315(75)=abb315(79)+abb315(75)+abb315(78)
      abb315(75)=8.0_ki*abb315(75)
      abb315(78)=abb315(9)*abb315(28)
      abb315(79)=abb315(76)*spak2k4
      abb315(80)=spbl6k2*abb315(79)
      abb315(81)=-spbl6k3*abb315(77)
      abb315(80)=abb315(81)+abb315(78)+abb315(80)
      abb315(80)=16.0_ki*abb315(80)
      abb315(81)=-abb315(76)*abb315(53)
      abb315(82)=abb315(77)*abb315(29)
      abb315(81)=abb315(81)+abb315(82)
      abb315(81)=spbl6k1*abb315(81)
      abb315(14)=-abb315(14)*abb315(8)
      abb315(14)=abb315(27)+abb315(14)
      abb315(27)=abb315(22)*abb315(61)
      abb315(14)=abb315(27)*abb315(14)
      abb315(82)=abb315(14)*spak2l5
      abb315(29)=-spak3k4*abb315(29)
      abb315(29)=abb315(29)+abb315(53)
      abb315(29)=abb315(82)*abb315(29)
      abb315(13)=spak3k4*abb315(61)*abb315(13)
      abb315(53)=-abb315(17)*abb315(13)
      abb315(78)=-spbe7k1*spak1e7*abb315(78)
      abb315(16)=abb315(16)*spak1l6
      abb315(36)=abb315(16)*abb315(36)
      abb315(29)=abb315(36)+abb315(81)+abb315(78)+abb315(53)+abb315(29)
      abb315(29)=4.0_ki*abb315(29)
      abb315(36)=-abb315(26)*spak4l5
      abb315(53)=abb315(36)*abb315(17)
      abb315(78)=abb315(62)*abb315(68)
      abb315(53)=abb315(53)+abb315(78)
      abb315(53)=8.0_ki*abb315(53)
      abb315(78)=8.0_ki*abb315(36)
      abb315(81)=spak1k7*spbk7e7
      abb315(83)=abb315(81)*abb315(78)
      abb315(52)=spbl6k2*abb315(51)*abb315(52)
      abb315(55)=-spbl6k3*abb315(55)
      abb315(52)=abb315(52)+abb315(55)
      abb315(52)=4.0_ki*abb315(52)
      abb315(55)=-abb315(26)*spak2k4
      abb315(84)=spbl6k2*abb315(55)
      abb315(85)=-abb315(26)*spak3k4
      abb315(86)=-spbl6k3*abb315(85)
      abb315(84)=abb315(84)+abb315(86)
      abb315(84)=4.0_ki*spak1e7*abb315(84)
      abb315(28)=abb315(28)*spbe7k3
      abb315(86)=abb315(47)*spak2k4
      abb315(28)=abb315(28)-abb315(86)
      abb315(28)=4.0_ki*abb315(28)
      abb315(87)=abb315(21)*abb315(28)
      abb315(28)=abb315(68)*abb315(28)
      abb315(88)=abb315(78)*abb315(57)
      abb315(89)=abb315(30)*abb315(57)
      abb315(90)=-spak2k4*abb315(89)
      abb315(91)=spbl6k3*abb315(24)*abb315(58)
      abb315(90)=abb315(90)+abb315(91)
      abb315(90)=4.0_ki*abb315(90)
      abb315(91)=abb315(68)*abb315(57)
      abb315(92)=8.0_ki*spak2k4
      abb315(93)=-abb315(91)*abb315(92)
      abb315(23)=abb315(23)*abb315(86)
      abb315(86)=-spbe7k3*abb315(48)
      abb315(23)=abb315(23)+abb315(86)
      abb315(86)=4.0_ki*spae7k7
      abb315(23)=abb315(23)*abb315(86)
      abb315(48)=-8.0_ki*abb315(48)
      abb315(94)=abb315(50)*abb315(92)
      abb315(19)=abb315(3)*abb315(34)*abb315(19)
      abb315(34)=abb315(25)*c2
      abb315(32)=abb315(32)*abb315(34)
      abb315(19)=abb315(19)-abb315(32)
      abb315(19)=abb315(19)*abb315(62)
      abb315(32)=abb315(3)*abb315(8)*abb315(18)
      abb315(18)=abb315(34)*abb315(18)
      abb315(18)=abb315(32)-abb315(18)
      abb315(18)=abb315(22)*abb315(18)
      abb315(22)=abb315(18)*spak1k2
      abb315(32)=abb315(22)*abb315(46)*spak4k7
      abb315(11)=abb315(3)*abb315(11)
      abb315(25)=abb315(25)*abb315(37)
      abb315(11)=abb315(11)-abb315(25)
      abb315(25)=abb315(41)*abb315(11)*abb315(49)
      abb315(37)=-abb315(8)*abb315(12)*abb315(3)
      abb315(12)=abb315(12)*abb315(34)
      abb315(12)=abb315(12)+abb315(37)
      abb315(12)=abb315(12)*spbl6k2
      abb315(37)=abb315(12)*abb315(33)
      abb315(19)=abb315(19)-abb315(32)+abb315(25)+abb315(37)
      abb315(25)=-abb315(18)*abb315(65)
      abb315(25)=abb315(25)-abb315(19)
      abb315(25)=spbk4k2*abb315(25)
      abb315(32)=abb315(89)-abb315(54)
      abb315(37)=-spak3k7*abb315(32)
      abb315(21)=-abb315(21)*abb315(47)
      abb315(41)=-spal5k7*spbk7e7*abb315(50)
      abb315(21)=abb315(21)+abb315(41)
      abb315(21)=spak3e7*abb315(21)
      abb315(41)=abb315(51)*abb315(17)
      abb315(46)=-spak3l5*abb315(41)
      abb315(21)=abb315(21)+abb315(37)+abb315(46)+abb315(25)
      abb315(21)=4.0_ki*abb315(21)
      abb315(25)=2.0_ki*spak4l5
      abb315(22)=abb315(22)*abb315(25)
      abb315(12)=abb315(12)*spak1k4
      abb315(12)=abb315(22)+abb315(12)
      abb315(22)=spbk4k2*abb315(12)
      abb315(25)=spak3l5*abb315(63)
      abb315(37)=spak1k3*abb315(30)
      abb315(22)=abb315(37)+abb315(25)+abb315(22)
      abb315(22)=8.0_ki*abb315(22)
      abb315(25)=-abb315(3)*abb315(72)
      abb315(31)=abb315(31)*abb315(34)
      abb315(25)=abb315(31)+abb315(25)
      abb315(31)=abb315(25)*spbk4k2
      abb315(37)=-abb315(33)*abb315(31)
      abb315(46)=-spak3k7*abb315(91)
      abb315(37)=abb315(37)+abb315(46)
      abb315(37)=8.0_ki*abb315(37)
      abb315(46)=spak1k4*abb315(31)
      abb315(49)=spak1k3*abb315(68)
      abb315(46)=abb315(46)+abb315(49)
      abb315(46)=16.0_ki*abb315(46)
      abb315(49)=-abb315(26)*spak3l5
      abb315(11)=abb315(11)*spak4l5
      abb315(51)=abb315(11)*spbk4k2
      abb315(49)=abb315(49)-abb315(51)
      abb315(51)=-abb315(17)*abb315(49)
      abb315(54)=-abb315(62)*abb315(31)
      abb315(47)=-spak3e7*abb315(68)*abb315(47)
      abb315(47)=abb315(47)+abb315(54)+abb315(51)
      abb315(47)=4.0_ki*abb315(47)
      abb315(51)=4.0_ki*abb315(49)
      abb315(54)=-abb315(81)*abb315(51)
      abb315(65)=abb315(57)*abb315(51)
      abb315(19)=spbk4k3*abb315(19)
      abb315(18)=spbk4k3*abb315(18)*abb315(64)
      abb315(50)=abb315(73)*abb315(50)
      abb315(18)=abb315(18)+abb315(50)
      abb315(18)=spal5k7*abb315(18)
      abb315(32)=spak2k7*abb315(32)
      abb315(41)=spak2l5*abb315(41)
      abb315(18)=abb315(32)+abb315(18)+abb315(41)+abb315(19)
      abb315(18)=4.0_ki*abb315(18)
      abb315(12)=-spbk4k3*abb315(12)
      abb315(19)=-spak2l5*abb315(63)
      abb315(32)=-spak1k2*abb315(30)
      abb315(12)=abb315(19)+abb315(32)+abb315(12)
      abb315(12)=8.0_ki*abb315(12)
      abb315(19)=abb315(25)*spbk4k3
      abb315(32)=abb315(33)*abb315(19)
      abb315(33)=spak2k7*abb315(91)
      abb315(32)=abb315(32)+abb315(33)
      abb315(32)=8.0_ki*abb315(32)
      abb315(33)=-spak1k2*abb315(68)
      abb315(41)=-spak1k4*abb315(19)
      abb315(33)=abb315(33)+abb315(41)
      abb315(33)=16.0_ki*abb315(33)
      abb315(26)=-abb315(26)*spak2l5
      abb315(11)=abb315(11)*spbk4k3
      abb315(11)=abb315(26)-abb315(11)
      abb315(17)=abb315(17)*abb315(11)
      abb315(26)=abb315(62)*abb315(19)
      abb315(17)=abb315(26)+abb315(17)
      abb315(17)=4.0_ki*abb315(17)
      abb315(26)=4.0_ki*abb315(11)
      abb315(41)=abb315(26)*abb315(81)
      abb315(50)=-abb315(57)*abb315(26)
      abb315(57)=4.0_ki*abb315(58)
      abb315(9)=abb315(57)*abb315(9)
      abb315(58)=spal6k7*abb315(9)
      abb315(16)=-8.0_ki*abb315(16)
      abb315(57)=abb315(68)*abb315(57)
      abb315(9)=-spak1k7*abb315(9)
      abb315(62)=abb315(78)*abb315(59)
      abb315(51)=-abb315(59)*abb315(51)
      abb315(26)=abb315(59)*abb315(26)
      abb315(14)=abb315(14)*abb315(39)
      abb315(39)=abb315(14)*spak3k4
      abb315(63)=-abb315(38)*abb315(39)
      abb315(64)=abb315(14)*abb315(43)
      abb315(63)=abb315(63)+abb315(64)
      abb315(63)=spbe7k2*abb315(63)
      abb315(38)=abb315(77)*abb315(38)
      abb315(43)=-abb315(76)*abb315(43)
      abb315(38)=abb315(38)+abb315(43)
      abb315(38)=spbe7k1*abb315(38)
      abb315(43)=-spal6k7*abb315(74)
      abb315(38)=abb315(43)+abb315(38)+abb315(63)
      abb315(38)=4.0_ki*abb315(38)
      abb315(27)=-abb315(40)*abb315(27)*abb315(56)
      abb315(40)=-spbk3k1*abb315(77)
      abb315(43)=spbk2k1*abb315(79)
      abb315(13)=abb315(43)+abb315(40)+abb315(13)+abb315(27)
      abb315(13)=8.0_ki*abb315(13)
      abb315(27)=16.0_ki*abb315(36)
      abb315(36)=spbe7k2*abb315(55)
      abb315(40)=-spbe7k3*abb315(85)
      abb315(36)=abb315(36)+abb315(40)
      abb315(36)=abb315(36)*abb315(86)
      abb315(40)=8.0_ki*abb315(85)
      abb315(43)=8.0_ki*abb315(55)
      abb315(49)=8.0_ki*abb315(49)
      abb315(11)=-8.0_ki*abb315(11)
      abb315(56)=-spak3k4*abb315(69)
      abb315(63)=abb315(73)*abb315(68)
      abb315(64)=4.0_ki*abb315(63)
      abb315(72)=-spak3k4*abb315(64)
      abb315(59)=4.0_ki*abb315(59)
      abb315(74)=abb315(85)*abb315(59)
      abb315(60)=abb315(39)*abb315(60)
      abb315(14)=-abb315(14)*abb315(42)
      abb315(42)=-spak3k4*abb315(73)*abb315(67)
      abb315(14)=abb315(42)+abb315(60)+abb315(14)
      abb315(14)=4.0_ki*abb315(14)
      abb315(30)=-abb315(82)-abb315(30)
      abb315(30)=spak2k4*abb315(30)
      abb315(24)=spak3k4*abb315(24)
      abb315(24)=abb315(24)+abb315(39)
      abb315(24)=spbl6k3*abb315(24)
      abb315(24)=abb315(24)+abb315(30)
      abb315(24)=8.0_ki*abb315(24)
      abb315(30)=abb315(63)*spak4k7
      abb315(30)=8.0_ki*abb315(30)
      abb315(39)=abb315(69)*spak2k4
      abb315(42)=spak2k4*abb315(64)
      abb315(55)=-abb315(55)*abb315(59)
      abb315(59)=abb315(73)*spak4k7
      abb315(31)=abb315(31)*abb315(59)
      abb315(60)=spak3k7*abb315(63)
      abb315(31)=abb315(31)+abb315(60)
      abb315(31)=4.0_ki*abb315(31)
      abb315(8)=-abb315(3)*abb315(8)*abb315(61)
      abb315(34)=abb315(61)*abb315(34)
      abb315(8)=abb315(34)+abb315(8)
      abb315(8)=abb315(1)*abb315(10)*abb315(5)*abb315(6)*abb315(8)
      abb315(10)=-es34*abb315(25)
      abb315(8)=abb315(10)+abb315(8)
      abb315(8)=8.0_ki*abb315(8)
      abb315(10)=-abb315(19)*abb315(59)
      abb315(25)=-spak2k7*abb315(63)
      abb315(10)=abb315(10)+abb315(25)
      abb315(10)=4.0_ki*abb315(10)
      abb315(19)=abb315(19)*abb315(92)
      abb315(25)=8.0_ki*spak3k4*abb315(68)
      R2d315=0.0_ki
      rat2 = rat2 + R2d315
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='315' value='", &
          & R2d315, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd315h2
