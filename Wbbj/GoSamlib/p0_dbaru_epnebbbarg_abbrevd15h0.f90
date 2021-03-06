module     p0_dbaru_epnebbbarg_abbrevd15h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(100), public :: abb15
   complex(ki), public :: R2d15
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
      abb15(1)=1.0_ki/(-es71+es712-es12)
      abb15(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb15(3)=NC**(-1)
      abb15(4)=sqrt2**(-1)
      abb15(5)=es56**(-1)
      abb15(6)=spbl5k2**(-1)
      abb15(7)=spak2k7**(-1)
      abb15(8)=spbl6k2**(-1)
      abb15(9)=spak2l5**(-1)
      abb15(10)=spak2l6**(-1)
      abb15(11)=c1*abb15(3)
      abb15(12)=c4*abb15(3)**2
      abb15(11)=abb15(11)-abb15(12)
      abb15(12)=TR*gW
      abb15(12)=abb15(12)**2*abb15(7)*i_*CVDU*abb15(5)*abb15(4)*abb15(2)*abb15(&
      &1)
      abb15(13)=abb15(12)*mB
      abb15(14)=-abb15(13)*abb15(11)
      abb15(15)=-abb15(6)*abb15(14)
      abb15(16)=spak1k4*spbk3k2
      abb15(17)=abb15(16)*es71
      abb15(18)=abb15(17)*abb15(15)
      abb15(19)=abb15(16)*es12
      abb15(20)=abb15(19)*abb15(15)
      abb15(18)=abb15(18)+abb15(20)
      abb15(21)=-es12*abb15(18)
      abb15(22)=es71+es12
      abb15(22)=spbk3k2*abb15(22)
      abb15(23)=es712*spbk3k2
      abb15(23)=abb15(22)-abb15(23)
      abb15(24)=-spak1k2*abb15(23)*abb15(14)
      abb15(25)=spak4l5*abb15(24)
      abb15(20)=es712*abb15(20)
      abb15(20)=abb15(25)+abb15(21)+abb15(20)
      abb15(20)=spak1l6*abb15(20)
      abb15(21)=-abb15(8)*abb15(14)
      abb15(25)=abb15(17)*abb15(21)
      abb15(26)=abb15(19)*abb15(21)
      abb15(25)=abb15(25)+abb15(26)
      abb15(27)=-es12*abb15(25)
      abb15(24)=spak4l6*abb15(24)
      abb15(26)=es712*abb15(26)
      abb15(24)=abb15(24)+abb15(27)+abb15(26)
      abb15(24)=spak1l5*abb15(24)
      abb15(20)=abb15(24)+abb15(20)
      abb15(20)=spbk7k1*abb15(20)
      abb15(24)=abb15(15)*spak1k4
      abb15(26)=spbk7k3*es71**2
      abb15(27)=abb15(26)*abb15(24)
      abb15(28)=es71*spbk7k3
      abb15(29)=abb15(15)*abb15(28)
      abb15(30)=abb15(29)*spak1k4
      abb15(31)=es712-es12
      abb15(32)=abb15(31)*abb15(30)
      abb15(27)=abb15(27)-abb15(32)
      abb15(32)=spak1l6*abb15(27)
      abb15(33)=abb15(21)*spak1k4
      abb15(34)=abb15(26)*abb15(33)
      abb15(35)=abb15(21)*abb15(28)
      abb15(36)=abb15(35)*spak1k4
      abb15(37)=abb15(31)*abb15(36)
      abb15(34)=abb15(34)-abb15(37)
      abb15(37)=spak1l5*abb15(34)
      abb15(32)=abb15(32)+abb15(37)
      abb15(32)=spbk2k1*abb15(32)
      abb15(37)=-abb15(23)*abb15(15)
      abb15(38)=spbk7k1*spak1k2
      abb15(39)=-abb15(37)*abb15(38)
      abb15(40)=abb15(29)*abb15(31)
      abb15(41)=-abb15(15)*abb15(26)
      abb15(39)=abb15(39)+abb15(41)+abb15(40)
      abb15(40)=spbl6k2*spak1l6
      abb15(39)=spak4l6*abb15(39)*abb15(40)
      abb15(41)=-abb15(23)*abb15(21)
      abb15(42)=-abb15(41)*abb15(38)
      abb15(43)=abb15(35)*abb15(31)
      abb15(44)=-abb15(21)*abb15(26)
      abb15(42)=abb15(42)+abb15(44)+abb15(43)
      abb15(43)=spbl5k2*spak1l5
      abb15(42)=spak4l5*abb15(42)*abb15(43)
      abb15(26)=abb15(26)*abb15(14)
      abb15(44)=abb15(14)*abb15(28)
      abb15(45)=abb15(31)*abb15(44)
      abb15(26)=abb15(26)-abb15(45)
      abb15(45)=spak4l6*spak1l5
      abb15(46)=spak4l5*spak1l6
      abb15(45)=abb15(45)+abb15(46)
      abb15(26)=abb15(26)*abb15(45)
      abb15(20)=abb15(42)+abb15(39)+abb15(32)+abb15(20)+abb15(26)
      abb15(20)=8.0_ki*abb15(20)
      abb15(26)=-abb15(8)*abb15(11)
      abb15(13)=abb15(13)*spbk7k2
      abb15(32)=-abb15(13)*abb15(26)
      abb15(39)=abb15(32)*spak1k4
      abb15(42)=abb15(39)*es12
      abb15(45)=spbk7k2**2
      abb15(46)=-abb15(45)*abb15(21)
      abb15(47)=spak1k7*spak2k4
      abb15(48)=-abb15(46)*abb15(47)
      abb15(13)=abb15(11)*abb15(13)
      abb15(49)=-2.0_ki*abb15(13)
      abb15(50)=spak1l6*spak2k4
      abb15(51)=abb15(50)*abb15(49)
      abb15(48)=abb15(51)-abb15(42)+abb15(48)
      abb15(48)=spak1l5*abb15(48)
      abb15(51)=abb15(6)*abb15(13)
      abb15(52)=abb15(51)*spak1k4
      abb15(53)=abb15(52)*es12
      abb15(54)=-abb15(45)*abb15(15)
      abb15(55)=-abb15(54)*abb15(47)
      abb15(55)=-abb15(53)+abb15(55)
      abb15(55)=spak1l6*abb15(55)
      abb15(48)=abb15(55)+abb15(48)
      abb15(48)=spbk3k1*abb15(48)
      abb15(55)=spbl6k3*spal5l6
      abb15(56)=abb15(46)*abb15(55)
      abb15(57)=spbl5k3*spal5l6
      abb15(58)=abb15(54)*abb15(57)
      abb15(56)=abb15(56)-abb15(58)
      abb15(58)=abb15(47)*abb15(56)
      abb15(59)=mB**3
      abb15(60)=-abb15(59)*abb15(12)*abb15(11)
      abb15(61)=-abb15(8)*abb15(6)*abb15(60)
      abb15(62)=-abb15(45)*abb15(61)
      abb15(63)=2.0_ki*abb15(62)
      abb15(64)=abb15(47)*spbk3k2
      abb15(65)=abb15(64)*abb15(63)
      abb15(66)=abb15(6)**2
      abb15(67)=abb15(66)*abb15(60)
      abb15(68)=-abb15(45)*abb15(67)
      abb15(69)=-abb15(9)*abb15(68)*abb15(64)
      abb15(13)=-spak1k4*abb15(13)*spbk3k1
      abb15(70)=abb15(13)*spak1l5
      abb15(69)=abb15(69)-abb15(70)
      abb15(69)=spak2l6*abb15(69)
      abb15(71)=abb15(8)**2
      abb15(60)=abb15(71)*abb15(60)
      abb15(45)=-abb15(45)*abb15(60)
      abb15(64)=-abb15(10)*abb15(45)*abb15(64)
      abb15(13)=abb15(13)*spak1l6
      abb15(64)=abb15(64)-abb15(13)
      abb15(64)=spak2l5*abb15(64)
      abb15(72)=abb15(51)*spak1l6**2
      abb15(73)=spbk3k1*spak2k4
      abb15(74)=-abb15(72)*abb15(73)
      abb15(75)=abb15(52)*spbk3k1
      abb15(76)=abb15(75)*spak1l6
      abb15(77)=spak2l6*abb15(76)
      abb15(74)=abb15(74)+abb15(77)
      abb15(74)=spbl6k2*abb15(74)
      abb15(77)=abb15(32)*spak1l5**2
      abb15(73)=-abb15(77)*abb15(73)
      abb15(78)=abb15(39)*spbk3k1
      abb15(79)=abb15(78)*spak1l5
      abb15(80)=spak2l5*abb15(79)
      abb15(73)=abb15(73)+abb15(80)
      abb15(73)=spbl5k2*abb15(73)
      abb15(80)=abb15(51)*abb15(22)
      abb15(81)=abb15(80)*abb15(50)
      abb15(22)=abb15(32)*abb15(22)
      abb15(82)=spak1l5*spak2k4
      abb15(83)=abb15(22)*abb15(82)
      abb15(48)=abb15(73)+abb15(74)+abb15(64)+abb15(69)+abb15(48)+abb15(83)+abb&
      &15(65)+abb15(81)+abb15(58)
      abb15(48)=16.0_ki*abb15(48)
      abb15(58)=-spbk7k3*abb15(31)
      abb15(28)=abb15(58)+abb15(28)
      abb15(64)=-abb15(28)*spak1k7
      abb15(65)=-abb15(51)*abb15(64)
      abb15(69)=abb15(51)*spbk3k2
      abb15(73)=abb15(69)*es712
      abb15(73)=abb15(73)-abb15(80)
      abb15(74)=abb15(73)*spak1k2
      abb15(65)=abb15(65)-abb15(74)
      abb15(74)=abb15(65)*spak4l6
      abb15(64)=-abb15(32)*abb15(64)
      abb15(81)=abb15(32)*spbk3k2
      abb15(83)=abb15(81)*es712
      abb15(83)=abb15(83)-abb15(22)
      abb15(84)=abb15(83)*spak1k2
      abb15(64)=abb15(64)-abb15(84)
      abb15(84)=abb15(64)*spak4l5
      abb15(74)=abb15(74)+abb15(84)
      abb15(84)=16.0_ki*abb15(74)
      abb15(85)=abb15(50)*abb15(69)
      abb15(86)=abb15(82)*abb15(81)
      abb15(87)=abb15(51)*abb15(16)
      abb15(88)=abb15(87)*spak2l6
      abb15(89)=abb15(32)*abb15(16)
      abb15(90)=abb15(89)*spak2l5
      abb15(85)=-abb15(90)-abb15(88)+abb15(85)+abb15(86)
      abb15(86)=32.0_ki*abb15(85)
      abb15(12)=abb15(59)*abb15(12)*spbk7k2
      abb15(11)=abb15(11)*abb15(12)
      abb15(59)=-abb15(71)*abb15(11)
      abb15(71)=spak2l5*abb15(10)
      abb15(88)=abb15(71)*abb15(59)
      abb15(11)=-abb15(66)*abb15(11)
      abb15(66)=spak2l6*abb15(9)
      abb15(90)=abb15(66)*abb15(11)
      abb15(12)=-abb15(26)*abb15(12)*abb15(6)
      abb15(26)=-2.0_ki*abb15(12)+abb15(88)+abb15(90)
      abb15(88)=abb15(16)*es712
      abb15(17)=-abb15(19)+abb15(88)-abb15(17)
      abb15(19)=-abb15(17)*abb15(26)
      abb15(90)=es712-es71
      abb15(91)=-abb15(39)*abb15(90)
      abb15(42)=abb15(91)+abb15(42)
      abb15(91)=abb15(42)*spak1l5
      abb15(90)=-abb15(52)*abb15(90)
      abb15(53)=abb15(90)+abb15(53)
      abb15(90)=abb15(53)*spak1l6
      abb15(90)=abb15(91)+abb15(90)
      abb15(90)=abb15(90)*spbk3k1
      abb15(91)=abb15(88)*abb15(15)
      abb15(18)=abb15(91)-abb15(18)
      abb15(91)=abb15(18)*spak1l6
      abb15(88)=abb15(88)*abb15(21)
      abb15(25)=abb15(88)-abb15(25)
      abb15(88)=abb15(25)*spak1l5
      abb15(88)=abb15(91)+abb15(88)
      abb15(91)=abb15(88)*spbk7k1
      abb15(42)=abb15(42)*abb15(55)
      abb15(53)=abb15(53)*abb15(57)
      abb15(19)=abb15(90)+abb15(91)-abb15(42)+abb15(53)+abb15(19)
      abb15(42)=abb15(28)*abb15(11)
      abb15(53)=spak1k7*abb15(42)
      abb15(90)=-abb15(23)*abb15(11)
      abb15(91)=-spak1k2*abb15(90)
      abb15(53)=abb15(53)+abb15(91)
      abb15(53)=spak4l6*abb15(53)
      abb15(91)=abb15(12)*abb15(23)
      abb15(92)=abb15(91)*spak1k2
      abb15(93)=abb15(12)*abb15(28)
      abb15(94)=abb15(93)*spak1k7
      abb15(92)=abb15(92)+abb15(94)
      abb15(94)=-spak4l5*abb15(92)
      abb15(53)=abb15(53)+abb15(94)
      abb15(53)=abb15(9)*abb15(53)
      abb15(92)=-spak4l6*abb15(92)
      abb15(94)=abb15(28)*abb15(59)
      abb15(95)=spak1k7*abb15(94)
      abb15(23)=-abb15(23)*abb15(59)
      abb15(96)=-spak1k2*abb15(23)
      abb15(95)=abb15(95)+abb15(96)
      abb15(95)=spak4l5*abb15(95)
      abb15(92)=abb15(92)+abb15(95)
      abb15(92)=abb15(10)*abb15(92)
      abb15(53)=abb15(92)+abb15(53)-abb15(19)
      abb15(53)=16.0_ki*abb15(53)
      abb15(92)=abb15(16)*abb15(26)
      abb15(95)=abb15(11)*spbk3k2
      abb15(96)=-abb15(50)*abb15(95)
      abb15(97)=abb15(12)*spbk3k2
      abb15(98)=abb15(82)*abb15(97)
      abb15(96)=abb15(96)+abb15(98)
      abb15(96)=abb15(9)*abb15(96)
      abb15(98)=abb15(50)*abb15(97)
      abb15(99)=abb15(59)*spbk3k2
      abb15(100)=-abb15(82)*abb15(99)
      abb15(98)=abb15(98)+abb15(100)
      abb15(98)=abb15(10)*abb15(98)
      abb15(92)=abb15(98)+abb15(96)+abb15(92)
      abb15(92)=32.0_ki*abb15(92)
      abb15(14)=abb15(58)*abb15(14)
      abb15(14)=abb15(14)+abb15(44)
      abb15(44)=spak1l5*abb15(14)
      abb15(44)=abb15(44)+abb15(65)
      abb15(44)=spak4l6*abb15(44)
      abb15(14)=spak1l6*abb15(14)
      abb15(14)=abb15(14)+abb15(64)
      abb15(14)=spak4l5*abb15(14)
      abb15(24)=-abb15(24)*abb15(58)
      abb15(24)=abb15(24)-abb15(30)
      abb15(30)=-spak1l6*abb15(24)
      abb15(33)=-abb15(33)*abb15(58)
      abb15(33)=abb15(33)-abb15(36)
      abb15(36)=-spak1l5*abb15(33)
      abb15(30)=abb15(30)+abb15(36)
      abb15(30)=spbk2k1*abb15(30)
      abb15(36)=abb15(73)*abb15(50)
      abb15(64)=abb15(83)*abb15(82)
      abb15(65)=-abb15(15)*abb15(58)
      abb15(29)=abb15(65)-abb15(29)
      abb15(65)=abb15(29)*spak4l6
      abb15(40)=abb15(65)*abb15(40)
      abb15(58)=-abb15(21)*abb15(58)
      abb15(35)=abb15(58)-abb15(35)
      abb15(58)=abb15(35)*spak4l5
      abb15(43)=abb15(58)*abb15(43)
      abb15(14)=abb15(43)+abb15(40)+abb15(30)+abb15(14)+abb15(44)+abb15(36)+abb&
      &15(64)
      abb15(14)=16.0_ki*abb15(14)
      abb15(19)=-abb15(74)-abb15(19)
      abb15(19)=8.0_ki*abb15(19)
      abb15(30)=16.0_ki*abb15(85)
      abb15(36)=abb15(29)*spak1k7
      abb15(37)=abb15(37)*spak1k2
      abb15(36)=abb15(36)+abb15(37)
      abb15(37)=spbk7l6*spak4l6
      abb15(40)=spbk7l5*spak4l5
      abb15(37)=abb15(37)+abb15(40)
      abb15(36)=-abb15(36)*abb15(37)
      abb15(40)=abb15(42)*abb15(47)
      abb15(42)=spak1k2*spak2k4
      abb15(43)=-abb15(90)*abb15(42)
      abb15(40)=abb15(40)+abb15(43)
      abb15(40)=abb15(9)*abb15(40)
      abb15(43)=abb15(91)*abb15(42)
      abb15(44)=abb15(93)*abb15(47)
      abb15(43)=abb15(43)+abb15(44)
      abb15(44)=-abb15(10)*abb15(43)
      abb15(64)=-abb15(18)*abb15(38)
      abb15(27)=abb15(64)+abb15(44)+abb15(40)-abb15(27)+abb15(36)
      abb15(27)=8.0_ki*abb15(27)
      abb15(36)=abb15(12)*abb15(10)
      abb15(11)=abb15(11)*abb15(9)
      abb15(36)=abb15(36)-abb15(11)
      abb15(40)=spbk3k2*abb15(42)
      abb15(44)=-abb15(40)*abb15(36)
      abb15(64)=abb15(51)*abb15(50)
      abb15(73)=-spak2l6*abb15(52)
      abb15(64)=abb15(64)+abb15(73)
      abb15(64)=spbl6k3*abb15(64)
      abb15(73)=abb15(51)*abb15(82)
      abb15(74)=-spak2l5*abb15(52)
      abb15(73)=abb15(73)+abb15(74)
      abb15(73)=spbl5k3*abb15(73)
      abb15(74)=abb15(47)*spbk7k3
      abb15(83)=-abb15(51)*abb15(74)
      abb15(85)=-abb15(69)*abb15(42)
      abb15(93)=spak1k2*abb15(75)
      abb15(44)=abb15(73)+abb15(64)+abb15(93)+abb15(83)+abb15(85)+abb15(44)
      abb15(44)=16.0_ki*abb15(44)
      abb15(64)=16.0_ki*abb15(24)
      abb15(24)=-8.0_ki*abb15(24)
      abb15(73)=abb15(35)*spak1k7
      abb15(41)=abb15(41)*spak1k2
      abb15(41)=abb15(73)+abb15(41)
      abb15(37)=-abb15(41)*abb15(37)
      abb15(41)=-abb15(9)*abb15(43)
      abb15(43)=abb15(94)*abb15(47)
      abb15(47)=-abb15(23)*abb15(42)
      abb15(43)=abb15(43)+abb15(47)
      abb15(43)=abb15(10)*abb15(43)
      abb15(38)=-abb15(25)*abb15(38)
      abb15(34)=abb15(38)+abb15(43)+abb15(41)-abb15(34)+abb15(37)
      abb15(34)=8.0_ki*abb15(34)
      abb15(12)=abb15(12)*abb15(9)
      abb15(37)=abb15(59)*abb15(10)
      abb15(12)=abb15(12)-abb15(37)
      abb15(38)=-abb15(40)*abb15(12)
      abb15(40)=abb15(32)*abb15(50)
      abb15(41)=-spak2l6*abb15(39)
      abb15(40)=abb15(40)+abb15(41)
      abb15(40)=spbl6k3*abb15(40)
      abb15(41)=abb15(32)*abb15(82)
      abb15(43)=-spak2l5*abb15(39)
      abb15(41)=abb15(41)+abb15(43)
      abb15(41)=spbl5k3*abb15(41)
      abb15(43)=-abb15(32)*abb15(74)
      abb15(42)=-abb15(81)*abb15(42)
      abb15(47)=spak1k2*abb15(78)
      abb15(38)=abb15(41)+abb15(40)+abb15(47)+abb15(43)+abb15(42)+abb15(38)
      abb15(38)=16.0_ki*abb15(38)
      abb15(40)=16.0_ki*abb15(33)
      abb15(33)=-8.0_ki*abb15(33)
      abb15(41)=abb15(32)*es71
      abb15(42)=abb15(32)*es12
      abb15(41)=abb15(41)+abb15(42)
      abb15(43)=abb15(32)*es712
      abb15(43)=abb15(43)-abb15(41)
      abb15(47)=spbk7l6*abb15(43)
      abb15(59)=abb15(51)*es71
      abb15(73)=abb15(51)*es12
      abb15(59)=abb15(59)+abb15(73)
      abb15(74)=abb15(51)*es712
      abb15(74)=abb15(74)-abb15(59)
      abb15(83)=-spbk7l5*abb15(74)
      abb15(47)=abb15(83)+abb15(47)
      abb15(47)=spal5l6*abb15(47)
      abb15(31)=abb15(31)-es71
      abb15(62)=abb15(62)*abb15(31)
      abb15(83)=-abb15(68)*abb15(31)*abb15(66)
      abb15(85)=-abb15(45)*abb15(31)*abb15(71)
      abb15(47)=abb15(85)+abb15(83)+2.0_ki*abb15(62)+abb15(47)
      abb15(47)=spak1k7*abb15(47)
      abb15(59)=es12*abb15(59)
      abb15(62)=-es712*abb15(73)
      abb15(59)=abb15(59)+abb15(62)
      abb15(59)=spak1l6*abb15(59)
      abb15(41)=es12*abb15(41)
      abb15(62)=-es712*abb15(42)
      abb15(41)=abb15(41)+abb15(62)
      abb15(41)=spak1l5*abb15(41)
      abb15(41)=abb15(41)+abb15(59)+abb15(47)
      abb15(41)=8.0_ki*abb15(41)
      abb15(47)=spak1l6*abb15(73)
      abb15(42)=spak1l5*abb15(42)
      abb15(42)=abb15(47)+abb15(42)
      abb15(42)=32.0_ki*abb15(42)
      abb15(47)=spak1l6*abb15(74)
      abb15(59)=spak1l5*abb15(43)
      abb15(47)=abb15(47)+abb15(59)
      abb15(47)=16.0_ki*abb15(47)
      abb15(59)=8.0_ki*abb15(74)
      abb15(62)=spak1k2*abb15(59)
      abb15(73)=32.0_ki*spak1k2
      abb15(83)=-abb15(51)*abb15(73)
      abb15(85)=8.0_ki*abb15(43)
      abb15(93)=spak1k2*abb15(85)
      abb15(73)=-abb15(32)*abb15(73)
      abb15(68)=abb15(68)*abb15(66)
      abb15(45)=abb15(45)*abb15(71)
      abb15(45)=-abb15(45)-abb15(68)
      abb15(45)=spbk3k2*abb15(45)
      abb15(63)=spbk3k2*abb15(63)
      abb15(45)=abb15(63)+abb15(45)+abb15(56)
      abb15(45)=spak1k7*abb15(45)
      abb15(46)=-spak1k7*abb15(46)
      abb15(49)=spak1l6*abb15(49)
      abb15(46)=abb15(46)+abb15(49)
      abb15(46)=spak1l5*abb15(46)
      abb15(49)=-spak1l6*spak1k7*abb15(54)
      abb15(54)=-spbl6k2*abb15(72)
      abb15(56)=-spbl5k2*abb15(77)
      abb15(46)=abb15(49)+abb15(46)+abb15(56)+abb15(54)
      abb15(46)=spbk3k1*abb15(46)
      abb15(49)=spak1l6*abb15(80)
      abb15(22)=spak1l5*abb15(22)
      abb15(22)=abb15(22)+abb15(49)+abb15(46)+abb15(45)
      abb15(22)=spak4k7*abb15(22)
      abb15(45)=spak1l6*abb15(52)
      abb15(46)=spak1l5*abb15(39)
      abb15(45)=abb15(45)+abb15(46)
      abb15(45)=spbk3k1*spak1k7*abb15(45)
      abb15(45)=abb15(45)+abb15(88)
      abb15(45)=spbk2k1*abb15(45)
      abb15(46)=spbl6k2*abb15(76)
      abb15(46)=-abb15(70)+abb15(46)
      abb15(46)=spal6k7*abb15(46)
      abb15(49)=spbl5k2*abb15(79)
      abb15(13)=-abb15(13)+abb15(49)
      abb15(13)=spal5k7*abb15(13)
      abb15(13)=abb15(13)+abb15(46)+abb15(45)+abb15(22)
      abb15(13)=8.0_ki*abb15(13)
      abb15(22)=abb15(69)*spak1l6
      abb15(45)=abb15(81)*spak1l5
      abb15(22)=abb15(22)+abb15(45)
      abb15(22)=abb15(22)*spak4k7
      abb15(45)=abb15(87)*spal6k7
      abb15(46)=abb15(89)*spal5k7
      abb15(22)=-abb15(46)+abb15(22)-abb15(45)
      abb15(45)=16.0_ki*abb15(22)
      abb15(36)=-spal6k7*abb15(36)
      abb15(12)=-spal5k7*abb15(12)
      abb15(12)=abb15(12)+abb15(36)
      abb15(12)=abb15(16)*abb15(12)
      abb15(16)=-spak1l6*abb15(95)
      abb15(36)=spak1l5*abb15(97)
      abb15(16)=abb15(16)+abb15(36)
      abb15(16)=abb15(9)*abb15(16)
      abb15(36)=spak1l6*abb15(97)
      abb15(46)=-spak1l5*abb15(99)
      abb15(36)=abb15(36)+abb15(46)
      abb15(36)=abb15(10)*abb15(36)
      abb15(16)=abb15(16)+abb15(36)
      abb15(16)=spak4k7*abb15(16)
      abb15(12)=abb15(16)+abb15(12)
      abb15(12)=16.0_ki*abb15(12)
      abb15(16)=8.0_ki*abb15(22)
      abb15(11)=spbk3k2*abb15(11)
      abb15(22)=-abb15(10)*abb15(97)
      abb15(11)=abb15(22)+abb15(11)-abb15(69)
      abb15(11)=spak1k2*abb15(11)
      abb15(22)=spbl6k3*spak1l6
      abb15(36)=spbl5k3*spak1l5
      abb15(22)=abb15(22)+abb15(36)
      abb15(36)=abb15(51)*abb15(22)
      abb15(46)=abb15(51)*spak1k7
      abb15(49)=-spbk7k3*abb15(46)
      abb15(11)=abb15(36)+abb15(49)+abb15(11)
      abb15(11)=spak4k7*abb15(11)
      abb15(36)=abb15(9)*abb15(67)*abb15(17)
      abb15(49)=abb15(17)*abb15(61)
      abb15(51)=-abb15(10)*abb15(49)
      abb15(54)=spal6k7*spbl6k3
      abb15(56)=spal5k7*spbl5k3
      abb15(54)=abb15(54)+abb15(56)
      abb15(52)=-abb15(52)*abb15(54)
      abb15(56)=-spak1k7*abb15(75)
      abb15(11)=abb15(56)+abb15(51)+abb15(36)-abb15(18)+abb15(11)+abb15(52)
      abb15(11)=8.0_ki*abb15(11)
      abb15(18)=-abb15(9)*abb15(97)
      abb15(36)=spbk3k2*abb15(37)
      abb15(18)=abb15(36)+abb15(18)-abb15(81)
      abb15(18)=spak1k2*abb15(18)
      abb15(22)=abb15(32)*abb15(22)
      abb15(32)=abb15(32)*spak1k7
      abb15(36)=-spbk7k3*abb15(32)
      abb15(18)=abb15(22)+abb15(36)+abb15(18)
      abb15(18)=spak4k7*abb15(18)
      abb15(22)=-abb15(9)*abb15(49)
      abb15(17)=abb15(10)*abb15(60)*abb15(17)
      abb15(36)=-abb15(39)*abb15(54)
      abb15(37)=-spak1k7*abb15(78)
      abb15(17)=abb15(37)+abb15(17)+abb15(22)-abb15(25)+abb15(18)+abb15(36)
      abb15(17)=8.0_ki*abb15(17)
      abb15(18)=-spak1l6*abb15(46)
      abb15(22)=-spak1l5*abb15(32)
      abb15(18)=abb15(18)+abb15(22)
      abb15(18)=16.0_ki*spbk2k1*abb15(18)
      abb15(22)=16.0_ki*abb15(46)
      abb15(25)=16.0_ki*abb15(32)
      abb15(15)=abb15(31)*abb15(15)
      abb15(32)=8.0_ki*abb15(15)
      abb15(21)=abb15(31)*abb15(21)
      abb15(36)=8.0_ki*abb15(21)
      abb15(37)=8.0_ki*abb15(65)
      abb15(35)=8.0_ki*spak4l6*abb15(35)
      abb15(29)=8.0_ki*spak4l5*abb15(29)
      abb15(39)=8.0_ki*abb15(58)
      abb15(46)=spak2k4*abb15(59)
      abb15(49)=spak2k4*abb15(85)
      abb15(51)=-abb15(90)*abb15(66)
      abb15(23)=-abb15(23)*abb15(71)
      abb15(52)=abb15(43)*abb15(55)
      abb15(54)=-abb15(74)*abb15(57)
      abb15(23)=abb15(54)+abb15(52)+abb15(23)+abb15(51)-2.0_ki*abb15(91)
      abb15(23)=spak2k4*abb15(23)
      abb15(50)=-abb15(74)*abb15(50)
      abb15(43)=-abb15(43)*abb15(82)
      abb15(43)=abb15(50)+abb15(43)
      abb15(43)=spbk3k1*abb15(43)
      abb15(23)=abb15(43)+abb15(23)
      abb15(23)=8.0_ki*abb15(23)
      abb15(43)=abb15(58)+abb15(65)
      abb15(50)=16.0_ki*abb15(43)
      abb15(51)=abb15(28)*abb15(67)
      abb15(52)=-spak4l6*abb15(51)
      abb15(54)=abb15(61)*abb15(28)
      abb15(55)=spak4l5*abb15(54)
      abb15(52)=abb15(52)+abb15(55)
      abb15(52)=abb15(9)*abb15(52)
      abb15(55)=spak4l6*abb15(54)
      abb15(28)=abb15(28)*abb15(60)
      abb15(56)=-spak4l5*abb15(28)
      abb15(55)=abb15(55)+abb15(56)
      abb15(55)=abb15(10)*abb15(55)
      abb15(52)=abb15(52)+abb15(55)
      abb15(52)=16.0_ki*abb15(52)
      abb15(43)=-8.0_ki*abb15(43)
      abb15(51)=-abb15(9)*abb15(51)
      abb15(55)=abb15(10)*abb15(54)
      abb15(51)=abb15(51)+abb15(55)
      abb15(55)=8.0_ki*spak2k4
      abb15(51)=abb15(51)*abb15(55)
      abb15(54)=abb15(9)*abb15(54)
      abb15(28)=-abb15(10)*abb15(28)
      abb15(28)=abb15(54)+abb15(28)
      abb15(28)=abb15(28)*abb15(55)
      abb15(26)=-abb15(31)*abb15(26)
      abb15(31)=-spbk7l6*abb15(21)
      abb15(54)=spbk7l5*abb15(15)
      abb15(31)=abb15(54)+abb15(31)
      abb15(31)=spal5l6*abb15(31)
      abb15(15)=-spak1l6*abb15(15)
      abb15(21)=-spak1l5*abb15(21)
      abb15(15)=abb15(15)+abb15(21)
      abb15(15)=spbk7k1*abb15(15)
      abb15(15)=abb15(15)+abb15(31)+abb15(26)
      abb15(15)=8.0_ki*abb15(15)
      R2d15=0.0_ki
      rat2 = rat2 + R2d15
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='15' value='", &
          & R2d15, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd15h0
