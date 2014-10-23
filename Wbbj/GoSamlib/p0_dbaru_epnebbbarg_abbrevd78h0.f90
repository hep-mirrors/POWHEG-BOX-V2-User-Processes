module     p0_dbaru_epnebbbarg_abbrevd78h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(101), public :: abb78
   complex(ki), public :: R2d78
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
      abb78(1)=1.0_ki/(-es71+es712-es12)
      abb78(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb78(3)=sqrt(mB**2)
      abb78(4)=NC**(-1)
      abb78(5)=sqrt2**(-1)
      abb78(6)=spbl6k2**(-1)
      abb78(7)=spak2k7**(-1)
      abb78(8)=spak2l5**(-1)
      abb78(9)=spbl5k2**(-1)
      abb78(10)=spak2l6**(-1)
      abb78(11)=abb78(4)**2
      abb78(11)=abb78(11)+1.0_ki
      abb78(12)=TR*gW
      abb78(12)=abb78(7)*i_*CVDU*abb78(5)*abb78(2)*abb78(1)*abb78(12)**2
      abb78(13)=abb78(12)*abb78(11)
      abb78(14)=spbk7k2*c4
      abb78(15)=abb78(14)*abb78(3)
      abb78(16)=abb78(13)*abb78(15)
      abb78(17)=abb78(12)*abb78(4)
      abb78(18)=2.0_ki*c1
      abb78(19)=abb78(17)*abb78(18)
      abb78(20)=abb78(3)*spbk7k2
      abb78(21)=abb78(19)*abb78(20)
      abb78(16)=abb78(16)-abb78(21)
      abb78(22)=abb78(16)*mB**4
      abb78(23)=abb78(9)*spbk3k2
      abb78(24)=abb78(22)*abb78(23)
      abb78(25)=es712-es71
      abb78(26)=abb78(25)-es12
      abb78(27)=spak1l5*abb78(6)
      abb78(28)=-abb78(24)*abb78(26)*abb78(27)
      abb78(29)=mB**2
      abb78(20)=abb78(20)*abb78(29)
      abb78(30)=abb78(20)*abb78(19)
      abb78(31)=abb78(29)*abb78(13)
      abb78(32)=abb78(31)*abb78(15)
      abb78(30)=abb78(30)-abb78(32)
      abb78(33)=-abb78(23)*abb78(30)
      abb78(34)=spak2l6*abb78(26)*spak1l5*abb78(33)
      abb78(35)=abb78(30)*abb78(26)
      abb78(36)=spal6k7*spbk7k3
      abb78(37)=abb78(9)*spak1l5
      abb78(38)=abb78(36)*abb78(37)*abb78(35)
      abb78(28)=abb78(38)+abb78(34)+abb78(28)
      abb78(34)=abb78(8)*spak2k4
      abb78(28)=abb78(34)*abb78(28)
      abb78(38)=abb78(18)*abb78(6)
      abb78(39)=abb78(38)*abb78(17)
      abb78(20)=abb78(20)*abb78(39)
      abb78(32)=abb78(32)*abb78(6)
      abb78(20)=abb78(32)-abb78(20)
      abb78(32)=abb78(26)*abb78(20)
      abb78(40)=spak4l5*spbk7k3
      abb78(41)=abb78(32)*abb78(40)
      abb78(42)=-abb78(9)*abb78(20)
      abb78(43)=-spak1k4*abb78(25)
      abb78(44)=es12*spak1k4
      abb78(45)=abb78(43)+abb78(44)
      abb78(46)=abb78(45)*abb78(42)
      abb78(47)=spbk2k1*spbk7k3
      abb78(48)=-abb78(46)*abb78(47)
      abb78(41)=abb78(41)+abb78(48)
      abb78(41)=spak1k7*abb78(41)
      abb78(48)=abb78(10)*spak4l5
      abb78(49)=abb78(6)**2
      abb78(50)=abb78(49)*spbk3k2
      abb78(22)=-abb78(48)*abb78(50)*abb78(26)*abb78(22)
      abb78(51)=-spbk3k2*abb78(20)
      abb78(52)=abb78(51)*spak4l5
      abb78(53)=-abb78(26)*abb78(52)
      abb78(22)=abb78(53)+abb78(22)
      abb78(22)=spak1k2*abb78(22)
      abb78(53)=spak1l6*spak4l5
      abb78(32)=abb78(32)*abb78(53)
      abb78(46)=-spbk2k1*spak1l6*abb78(46)
      abb78(32)=abb78(32)+abb78(46)
      abb78(32)=spbl6k3*abb78(32)
      abb78(46)=abb78(13)*spak1l5
      abb78(54)=abb78(3)*c4
      abb78(55)=abb78(46)*abb78(54)
      abb78(17)=abb78(17)*abb78(3)
      abb78(56)=abb78(17)*abb78(18)
      abb78(57)=abb78(56)*spak1l5
      abb78(58)=abb78(55)-abb78(57)
      abb78(59)=-spak2l6*spbk3k2*abb78(58)
      abb78(31)=abb78(31)*abb78(54)
      abb78(54)=abb78(56)*abb78(29)
      abb78(54)=abb78(54)-abb78(31)
      abb78(56)=abb78(27)*spbk3k2
      abb78(60)=-abb78(56)*abb78(54)
      abb78(59)=abb78(59)+abb78(60)
      abb78(60)=spak4l5*abb78(26)*abb78(59)
      abb78(61)=-abb78(58)*abb78(26)
      abb78(62)=abb78(61)*abb78(40)
      abb78(63)=-spal6k7*abb78(62)
      abb78(60)=abb78(63)+abb78(60)
      abb78(60)=spbk7l5*abb78(60)
      abb78(59)=-abb78(45)*abb78(59)
      abb78(58)=abb78(45)*abb78(58)
      abb78(36)=-abb78(58)*abb78(36)
      abb78(36)=abb78(36)+abb78(59)
      abb78(36)=spbk7k1*abb78(36)
      abb78(20)=-abb78(23)*abb78(20)
      abb78(59)=abb78(20)*abb78(44)
      abb78(63)=abb78(59)*abb78(25)
      abb78(64)=spak1k4*es12**2
      abb78(65)=-abb78(20)*abb78(64)
      abb78(24)=-abb78(49)*abb78(24)
      abb78(66)=abb78(24)*abb78(10)
      abb78(67)=-abb78(44)*abb78(25)
      abb78(67)=abb78(64)+abb78(67)
      abb78(67)=abb78(67)*abb78(66)
      abb78(22)=abb78(36)+abb78(60)+abb78(32)+abb78(22)+abb78(41)+abb78(67)+abb&
      &78(65)+abb78(28)+abb78(63)
      abb78(22)=8.0_ki*abb78(22)
      abb78(21)=abb78(21)*spak1l5
      abb78(15)=abb78(46)*abb78(15)
      abb78(15)=abb78(21)-abb78(15)
      abb78(21)=spbl5k3*spak4l5
      abb78(28)=spbk3k1*spak1k4
      abb78(21)=abb78(21)-abb78(28)
      abb78(21)=abb78(21)*abb78(15)
      abb78(28)=abb78(16)*spbl6k3
      abb78(32)=abb78(28)*abb78(53)
      abb78(36)=abb78(40)*spak1k7
      abb78(41)=abb78(36)*abb78(16)
      abb78(46)=spal5l6*spak1k4
      abb78(28)=abb78(46)*abb78(28)
      abb78(60)=spak1k4*spal5k7*spbk7k3
      abb78(63)=abb78(16)*abb78(60)
      abb78(65)=spak1k2*spak4l5
      abb78(67)=abb78(65)*abb78(8)
      abb78(67)=abb78(67)-spak1k4
      abb78(68)=abb78(67)*abb78(33)
      abb78(21)=abb78(21)+abb78(28)+abb78(63)+abb78(68)+abb78(32)+abb78(41)
      abb78(16)=-spbk3k2*abb78(16)
      abb78(28)=-abb78(16)*abb78(65)
      abb78(28)=abb78(28)+abb78(21)
      abb78(28)=spak2l6*abb78(28)
      abb78(12)=abb78(12)*mB
      abb78(11)=abb78(12)*abb78(11)
      abb78(32)=abb78(11)*c4
      abb78(12)=abb78(12)*abb78(4)
      abb78(41)=abb78(18)*abb78(12)
      abb78(63)=abb78(32)-abb78(41)
      abb78(68)=abb78(45)*abb78(9)
      abb78(69)=spbk7k3*abb78(63)*abb78(68)
      abb78(70)=abb78(69)*spak1l6
      abb78(71)=abb78(27)*abb78(32)
      abb78(72)=abb78(41)*abb78(27)
      abb78(71)=abb78(71)-abb78(72)
      abb78(73)=abb78(71)*abb78(45)
      abb78(74)=abb78(73)*spbk7k3
      abb78(70)=abb78(70)+abb78(74)
      abb78(70)=abb78(70)*spbk2k1
      abb78(75)=abb78(61)*spak4l6
      abb78(76)=abb78(75)*spbk7k3
      abb78(77)=-abb78(20)*abb78(43)
      abb78(76)=abb78(76)-abb78(77)
      abb78(71)=-abb78(71)*abb78(26)
      abb78(78)=abb78(71)*abb78(40)
      abb78(79)=abb78(78)*spbl5k2
      abb78(80)=abb78(26)*abb78(63)
      abb78(81)=abb78(40)*abb78(80)
      abb78(82)=abb78(81)*spak1l6
      abb78(70)=abb78(70)-abb78(79)+abb78(82)-abb78(76)
      abb78(33)=abb78(33)*spak4l6
      abb78(38)=abb78(29)*abb78(17)*abb78(38)
      abb78(79)=abb78(6)*abb78(31)
      abb78(38)=abb78(38)-abb78(79)
      abb78(79)=-abb78(23)*abb78(38)
      abb78(82)=spbk7k2**2
      abb78(83)=spak4k7*abb78(79)*abb78(82)
      abb78(33)=abb78(33)+abb78(83)
      abb78(83)=2.0_ki*abb78(52)-abb78(33)
      abb78(83)=spak1k2*abb78(83)
      abb78(84)=spak2l6*abb78(16)
      abb78(84)=-abb78(51)+abb78(84)
      abb78(84)=spak2l5*spak1k4*abb78(84)
      abb78(28)=abb78(84)-2.0_ki*abb78(59)+abb78(28)+abb78(83)+abb78(70)
      abb78(28)=16.0_ki*abb78(28)
      abb78(76)=abb78(76)+abb78(59)
      abb78(76)=-16.0_ki*abb78(76)
      abb78(83)=abb78(14)*abb78(23)
      abb78(84)=abb78(83)*abb78(11)
      abb78(85)=abb78(23)*spbk7k2
      abb78(86)=abb78(85)*abb78(41)
      abb78(84)=abb78(86)-abb78(84)
      abb78(86)=abb78(84)*spak4l6
      abb78(87)=-32.0_ki*spak1k2*abb78(86)
      abb78(88)=abb78(26)*abb78(10)
      abb78(54)=-abb78(27)*abb78(54)*abb78(88)
      abb78(54)=abb78(61)+abb78(54)
      abb78(54)=spak4l6*spbk7k3*abb78(54)
      abb78(61)=mB**3
      abb78(89)=abb78(61)*abb78(13)
      abb78(90)=abb78(89)*abb78(83)
      abb78(91)=abb78(90)*abb78(27)
      abb78(92)=abb78(19)*abb78(61)
      abb78(93)=abb78(92)*abb78(27)
      abb78(94)=abb78(93)*abb78(85)
      abb78(91)=abb78(91)-abb78(94)
      abb78(91)=-abb78(91)*abb78(26)
      abb78(13)=abb78(83)*abb78(13)
      abb78(19)=abb78(19)*abb78(85)
      abb78(13)=abb78(13)-abb78(19)
      abb78(19)=abb78(49)*spak1l5
      abb78(13)=abb78(88)*abb78(19)*abb78(13)*mB**5
      abb78(13)=abb78(13)+abb78(91)
      abb78(13)=abb78(13)*abb78(34)
      abb78(49)=abb78(32)*abb78(56)
      abb78(83)=abb78(72)*spbk3k2
      abb78(49)=abb78(49)-abb78(83)
      abb78(91)=-abb78(49)*abb78(26)
      abb78(94)=abb78(91)*spak4l5
      abb78(95)=abb78(89)*c4
      abb78(96)=abb78(19)*spbk3k2
      abb78(97)=abb78(95)*abb78(96)
      abb78(98)=abb78(92)*abb78(96)
      abb78(97)=abb78(97)-abb78(98)
      abb78(99)=abb78(26)*abb78(97)
      abb78(100)=abb78(99)*abb78(48)
      abb78(94)=abb78(94)+abb78(100)
      abb78(100)=-spbk7l5*abb78(94)
      abb78(49)=abb78(45)*abb78(49)
      abb78(97)=abb78(45)*abb78(97)
      abb78(101)=abb78(10)*abb78(97)
      abb78(101)=abb78(101)-abb78(49)
      abb78(101)=spbk7k1*abb78(101)
      abb78(45)=-abb78(45)*abb78(66)
      abb78(13)=abb78(101)+abb78(100)+abb78(13)+abb78(54)+abb78(45)-abb78(77)+a&
      &bb78(59)
      abb78(13)=16.0_ki*abb78(13)
      abb78(45)=abb78(90)*abb78(6)
      abb78(39)=abb78(39)*abb78(61)
      abb78(54)=abb78(39)*abb78(85)
      abb78(45)=abb78(54)-abb78(45)
      abb78(54)=abb78(45)*spak1l6
      abb78(61)=abb78(98)*spbk7k2
      abb78(66)=abb78(89)*abb78(14)
      abb78(77)=abb78(66)*abb78(96)
      abb78(61)=abb78(61)-abb78(77)
      abb78(54)=abb78(54)+abb78(61)
      abb78(54)=abb78(54)*abb78(10)
      abb78(77)=abb78(84)*spak1l6
      abb78(11)=abb78(11)*abb78(14)
      abb78(14)=abb78(11)*abb78(56)
      abb78(56)=abb78(83)*spbk7k2
      abb78(14)=abb78(14)-abb78(56)
      abb78(56)=abb78(77)-abb78(14)
      abb78(54)=abb78(54)-abb78(56)
      abb78(54)=abb78(54)*spak2k4
      abb78(46)=abb78(46)+abb78(53)
      abb78(46)=spbl6k3*abb78(46)
      abb78(36)=abb78(60)+abb78(36)+abb78(46)
      abb78(41)=abb78(41)*spbk7k2
      abb78(41)=abb78(41)-abb78(11)
      abb78(46)=-abb78(6)*abb78(41)
      abb78(36)=abb78(36)*abb78(46)
      abb78(60)=abb78(92)*spbk7k2
      abb78(60)=abb78(60)-abb78(66)
      abb78(50)=-abb78(50)*abb78(60)
      abb78(77)=abb78(50)*abb78(48)
      abb78(46)=-spbk3k2*abb78(46)
      abb78(83)=abb78(46)*spak4l5
      abb78(77)=abb78(77)+abb78(83)
      abb78(77)=abb78(77)*spak1k2
      abb78(46)=abb78(46)*spak1k4
      abb78(83)=abb78(10)*spak1k4
      abb78(50)=abb78(83)*abb78(50)
      abb78(46)=abb78(46)+abb78(50)
      abb78(46)=abb78(46)*spak2l5
      abb78(50)=abb78(72)*spbk7k2
      abb78(11)=abb78(11)*abb78(27)
      abb78(11)=abb78(50)-abb78(11)
      abb78(50)=abb78(11)*spak4l5
      abb78(72)=abb78(50)*spbl5k3
      abb78(85)=abb78(11)*spak1k4
      abb78(89)=abb78(85)*spbk3k1
      abb78(67)=abb78(67)*abb78(45)
      abb78(36)=abb78(46)+abb78(54)+abb78(36)-abb78(77)-abb78(67)+abb78(72)-abb&
      &78(89)
      abb78(46)=-32.0_ki*abb78(36)
      abb78(54)=-abb78(61)*abb78(26)
      abb78(61)=abb78(26)*spak1l6
      abb78(67)=-abb78(45)*abb78(61)
      abb78(54)=abb78(67)+abb78(54)
      abb78(54)=abb78(10)*abb78(54)
      abb78(14)=-abb78(14)*abb78(26)
      abb78(67)=abb78(84)*abb78(61)
      abb78(14)=abb78(54)+abb78(67)+abb78(14)
      abb78(14)=spak2k4*abb78(14)
      abb78(54)=-abb78(23)*abb78(63)
      abb78(63)=-abb78(54)*abb78(61)
      abb78(63)=abb78(63)-abb78(91)
      abb78(67)=spbk7l6*spak4l6
      abb78(72)=-abb78(63)*abb78(67)
      abb78(14)=abb78(72)+abb78(14)+abb78(59)-abb78(70)
      abb78(14)=8.0_ki*abb78(14)
      abb78(59)=abb78(66)*abb78(27)
      abb78(66)=abb78(93)*spbk7k2
      abb78(59)=abb78(59)-abb78(66)
      abb78(59)=abb78(26)*abb78(9)*abb78(59)
      abb78(66)=-spbk7k3*abb78(59)*abb78(34)
      abb78(70)=-spbk7l5*abb78(78)
      abb78(72)=-spbk7k1*abb78(74)
      abb78(66)=abb78(72)+abb78(66)+abb78(70)
      abb78(66)=8.0_ki*abb78(66)
      abb78(70)=spbk2k1*abb78(73)
      abb78(72)=abb78(71)*spak4l5
      abb78(74)=-spbl5k2*abb78(72)
      abb78(70)=abb78(74)+abb78(70)
      abb78(70)=spbl6k3*abb78(70)
      abb78(74)=abb78(95)*abb78(6)
      abb78(39)=abb78(74)-abb78(39)
      abb78(23)=-abb78(23)*abb78(39)
      abb78(74)=abb78(23)*abb78(44)
      abb78(77)=abb78(74)*abb78(25)
      abb78(78)=-abb78(23)*abb78(64)
      abb78(77)=abb78(78)+abb78(77)
      abb78(77)=abb78(10)*abb78(77)
      abb78(69)=-spbk2k1*abb78(69)
      abb78(69)=-abb78(81)+abb78(69)
      abb78(69)=spak1k7*abb78(69)
      abb78(78)=-spbk3k2*abb78(80)
      abb78(80)=spak4l5*abb78(78)
      abb78(39)=-abb78(26)*spbk3k2*abb78(39)
      abb78(81)=-abb78(39)*abb78(48)
      abb78(80)=abb78(80)+abb78(81)
      abb78(80)=spak1k2*abb78(80)
      abb78(81)=abb78(54)*abb78(44)
      abb78(25)=-abb78(81)*abb78(25)
      abb78(64)=abb78(54)*abb78(64)
      abb78(25)=abb78(80)+abb78(69)+abb78(77)+abb78(64)+abb78(25)+abb78(70)
      abb78(25)=8.0_ki*abb78(25)
      abb78(54)=-abb78(54)*abb78(43)
      abb78(54)=abb78(54)-abb78(81)
      abb78(64)=abb78(84)*spak4k7
      abb78(69)=-spak1k2*abb78(64)
      abb78(69)=abb78(69)-abb78(54)
      abb78(69)=16.0_ki*abb78(69)
      abb78(70)=-16.0_ki*abb78(54)
      abb78(43)=abb78(43)*abb78(23)
      abb78(43)=abb78(43)+abb78(74)
      abb78(74)=abb78(10)*abb78(43)
      abb78(74)=abb78(74)+abb78(54)
      abb78(74)=16.0_ki*abb78(74)
      abb78(77)=8.0_ki*abb78(54)
      abb78(62)=8.0_ki*abb78(62)
      abb78(80)=abb78(26)*abb78(15)
      abb78(27)=-abb78(27)*abb78(35)
      abb78(35)=abb78(10)*abb78(27)
      abb78(35)=abb78(35)+abb78(80)
      abb78(35)=spak2k4*abb78(35)
      abb78(75)=spbk7l6*abb78(75)
      abb78(35)=abb78(35)+abb78(75)
      abb78(35)=8.0_ki*abb78(35)
      abb78(75)=-abb78(9)*abb78(41)
      abb78(44)=-abb78(75)*abb78(44)
      abb78(65)=-abb78(41)*abb78(65)
      abb78(44)=abb78(44)+abb78(65)
      abb78(44)=16.0_ki*abb78(44)
      abb78(65)=-spbk7l5*abb78(72)
      abb78(72)=-spbk7k1*abb78(73)
      abb78(65)=abb78(72)+abb78(65)
      abb78(65)=spbl6k3*abb78(65)
      abb78(29)=abb78(9)*abb78(57)*abb78(29)
      abb78(31)=abb78(37)*abb78(31)
      abb78(29)=abb78(29)-abb78(31)
      abb78(29)=-spbk7k3*abb78(29)*abb78(26)
      abb78(31)=-spbl6k3*abb78(59)
      abb78(29)=abb78(29)+abb78(31)
      abb78(29)=abb78(29)*abb78(34)
      abb78(29)=abb78(29)+abb78(65)
      abb78(29)=8.0_ki*abb78(29)
      abb78(31)=abb78(45)*abb78(10)
      abb78(31)=abb78(31)-abb78(84)
      abb78(31)=abb78(31)*spak2k4
      abb78(34)=16.0_ki*spak1k2
      abb78(37)=abb78(34)*abb78(31)
      abb78(45)=8.0_ki*spbk7k3*abb78(58)
      abb78(57)=16.0_ki*abb78(63)
      abb78(23)=abb78(23)*abb78(61)
      abb78(23)=abb78(23)-abb78(99)
      abb78(23)=abb78(10)*abb78(23)
      abb78(23)=abb78(23)+abb78(63)
      abb78(23)=16.0_ki*abb78(23)
      abb78(58)=8.0_ki*abb78(63)
      abb78(30)=-abb78(30)*abb78(61)
      abb78(59)=abb78(26)*abb78(38)
      abb78(61)=-spak1k7*abb78(82)*abb78(59)
      abb78(30)=abb78(61)+abb78(30)
      abb78(30)=abb78(9)*abb78(30)
      abb78(61)=-spak2l6*abb78(80)
      abb78(27)=abb78(61)-abb78(27)+abb78(30)
      abb78(27)=8.0_ki*abb78(27)
      abb78(30)=abb78(26)*abb78(75)
      abb78(61)=abb78(30)*spak1l6
      abb78(63)=abb78(26)*abb78(11)
      abb78(61)=abb78(61)-abb78(63)
      abb78(65)=spak2l6*abb78(15)
      abb78(65)=2.0_ki*abb78(65)+abb78(61)
      abb78(65)=16.0_ki*abb78(65)
      abb78(19)=abb78(88)*abb78(19)
      abb78(60)=-abb78(60)*abb78(19)
      abb78(60)=abb78(60)+abb78(63)
      abb78(60)=16.0_ki*abb78(60)
      abb78(63)=abb78(75)*spak1l6
      abb78(11)=abb78(63)+abb78(11)
      abb78(72)=-32.0_ki*abb78(11)
      abb78(61)=-8.0_ki*abb78(61)
      abb78(12)=abb78(12)-abb78(17)
      abb78(12)=abb78(18)*spak1l5*abb78(12)
      abb78(17)=abb78(32)*spak1l5
      abb78(12)=abb78(12)-abb78(17)+abb78(55)
      abb78(12)=-abb78(12)*abb78(26)
      abb78(17)=-spak1k7*abb78(30)
      abb78(12)=abb78(17)+abb78(12)
      abb78(12)=8.0_ki*abb78(12)
      abb78(17)=-8.0_ki*spbk7l6*abb78(71)
      abb78(18)=abb78(75)*abb78(34)
      abb78(30)=abb78(71)*spbk7k3
      abb78(32)=16.0_ki*abb78(30)
      abb78(34)=abb78(92)-abb78(95)
      abb78(19)=spbk7k3*abb78(34)*abb78(19)
      abb78(19)=-abb78(30)+abb78(19)
      abb78(19)=16.0_ki*abb78(19)
      abb78(30)=-8.0_ki*abb78(30)
      abb78(34)=-spak4l5*abb78(16)
      abb78(48)=abb78(51)*abb78(48)
      abb78(34)=abb78(34)+abb78(48)
      abb78(34)=spak1k2*abb78(34)
      abb78(16)=spak1k4*abb78(16)
      abb78(48)=-abb78(51)*abb78(83)
      abb78(16)=abb78(16)+abb78(48)
      abb78(16)=spak2l5*abb78(16)
      abb78(16)=abb78(16)+abb78(34)+abb78(21)
      abb78(16)=spal6k7*abb78(16)
      abb78(21)=spbk2k1*spak1k4
      abb78(34)=abb78(20)*abb78(21)
      abb78(33)=-abb78(52)+abb78(34)+abb78(33)
      abb78(33)=spak1k7*abb78(33)
      abb78(34)=spak1l6*abb78(54)
      abb78(43)=spak1l6*abb78(43)
      abb78(43)=abb78(43)-abb78(97)
      abb78(43)=abb78(10)*abb78(43)
      abb78(34)=abb78(43)+abb78(34)+abb78(49)
      abb78(34)=spbk2k1*abb78(34)
      abb78(39)=abb78(10)*abb78(39)
      abb78(39)=-abb78(78)+abb78(39)
      abb78(39)=abb78(53)*abb78(39)
      abb78(43)=-spbl5k2*abb78(94)
      abb78(16)=abb78(43)+abb78(34)+abb78(16)+abb78(39)+abb78(33)
      abb78(16)=8.0_ki*abb78(16)
      abb78(33)=16.0_ki*spak1k7*abb78(86)
      abb78(34)=abb78(56)*spak4l6
      abb78(39)=-8.0_ki*abb78(34)
      abb78(43)=abb78(63)*spak1k4
      abb78(43)=abb78(43)-abb78(85)
      abb78(43)=abb78(43)*spbk2k1
      abb78(48)=abb78(50)*spbl5k2
      abb78(49)=abb78(41)*abb78(53)
      abb78(43)=abb78(43)+abb78(48)+abb78(49)
      abb78(48)=-8.0_ki*abb78(43)
      abb78(36)=8.0_ki*abb78(36)
      abb78(49)=8.0_ki*spak1k7
      abb78(50)=abb78(49)*abb78(64)
      abb78(41)=spak4l5*abb78(41)
      abb78(21)=abb78(75)*abb78(21)
      abb78(21)=abb78(41)+abb78(21)
      abb78(21)=abb78(21)*abb78(49)
      abb78(31)=-abb78(49)*abb78(31)
      abb78(15)=16.0_ki*spal6k7*abb78(15)
      abb78(11)=8.0_ki*abb78(11)
      abb78(41)=-abb78(75)*abb78(49)
      abb78(34)=16.0_ki*abb78(34)
      abb78(43)=16.0_ki*abb78(43)
      abb78(20)=abb78(20)*abb78(26)
      abb78(24)=-abb78(24)*abb78(88)
      abb78(20)=abb78(24)+abb78(20)
      abb78(20)=spak2k4*abb78(20)
      abb78(24)=abb78(40)*abb78(59)
      abb78(38)=abb78(47)*abb78(38)*abb78(68)
      abb78(40)=-abb78(67)*abb78(79)*abb78(26)
      abb78(20)=abb78(40)+abb78(38)+abb78(24)+abb78(20)
      abb78(20)=8.0_ki*abb78(20)
      abb78(24)=8.0_ki*abb78(42)*abb78(26)
      R2d78=0.0_ki
      rat2 = rat2 + R2d78
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='78' value='", &
          & R2d78, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd78h0
