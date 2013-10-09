module     p1_dbarc_epnebbbarg_abbrevd334h2
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(100), public :: abb334
   complex(ki), public :: R2d334
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p1_dbarc_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_color, only: TR
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb334(1)=1.0_ki/(-mB**2+es67)
      abb334(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb334(3)=es234**(-1)
      abb334(4)=es567**(-1)
      abb334(5)=spbl5k2**(-1)
      abb334(6)=spak2l6**(-1)
      abb334(7)=spbl6k2**(-1)
      abb334(8)=sqrt(mB**2)
      abb334(9)=1.0_ki/(es34+es567-es12-es234)
      abb334(10)=NC*c3
      abb334(10)=abb334(10)-c2
      abb334(11)=TR*gW
      abb334(11)=abb334(11)**2*i_*CVDC*abb334(4)*abb334(2)
      abb334(12)=abb334(10)*abb334(11)
      abb334(13)=abb334(12)*abb334(1)
      abb334(14)=spbk4k3*spak4l5
      abb334(15)=spak1k4*abb334(9)
      abb334(16)=abb334(14)*abb334(15)
      abb334(17)=abb334(13)*abb334(16)
      abb334(18)=spak1l5*abb334(1)
      abb334(12)=abb334(18)*abb334(12)
      abb334(19)=abb334(15)*spbk3k1
      abb334(20)=abb334(12)*abb334(19)
      abb334(21)=-abb334(3)*abb334(13)
      abb334(22)=spak1l5*spbk3k2
      abb334(23)=-abb334(22)*abb334(21)
      abb334(24)=abb334(23)*spak2k4
      abb334(17)=-abb334(24)+abb334(17)+abb334(20)
      abb334(20)=spae7k7*spbe7l6
      abb334(24)=-spbk7k2*abb334(20)*abb334(17)
      abb334(25)=abb334(17)*spbl6k2
      abb334(26)=abb334(23)*spak3k4
      abb334(27)=abb334(26)*spbl6k3
      abb334(27)=abb334(25)+abb334(27)
      abb334(28)=spal6e7*spbe7l6
      abb334(29)=abb334(28)*abb334(27)
      abb334(30)=abb334(26)*abb334(20)
      abb334(31)=abb334(30)*spbk7k3
      abb334(32)=abb334(21)*mB
      abb334(33)=spbk3k2**2
      abb334(34)=abb334(33)*abb334(32)
      abb334(35)=abb334(5)*spak3k4
      abb334(36)=abb334(35)*abb334(8)
      abb334(37)=abb334(34)*abb334(36)
      abb334(38)=abb334(37)*spak1e7
      abb334(39)=abb334(38)*spbe7l6
      abb334(40)=mB**2
      abb334(41)=-abb334(40)*abb334(21)
      abb334(42)=abb334(33)*abb334(6)
      abb334(43)=-abb334(42)*abb334(41)
      abb334(44)=-spak1l5*abb334(43)
      abb334(45)=spak2e7*abb334(7)
      abb334(46)=abb334(44)*abb334(45)
      abb334(47)=spbe7l6*spak3k4
      abb334(48)=abb334(46)*abb334(47)
      abb334(29)=abb334(39)-abb334(31)+abb334(24)-abb334(48)+abb334(29)
      abb334(31)=spak1l6*spbe7l6
      abb334(39)=spak1k7*spbk7e7
      abb334(49)=abb334(31)-abb334(39)
      abb334(50)=abb334(35)*spak2e7
      abb334(51)=abb334(43)*abb334(50)
      abb334(52)=-abb334(51)*abb334(49)
      abb334(53)=abb334(6)*spbk3k2
      abb334(54)=abb334(53)*spak1l5
      abb334(32)=-abb334(8)*abb334(54)*abb334(32)
      abb334(55)=abb334(32)*spak3k4
      abb334(56)=abb334(55)*spbe7k3
      abb334(57)=abb334(56)*spak2e7
      abb334(52)=abb334(52)+abb334(57)
      abb334(57)=abb334(52)+abb334(29)
      abb334(58)=2.0_ki*abb334(57)
      abb334(59)=-abb334(40)*abb334(10)
      abb334(11)=abb334(11)*abb334(6)
      abb334(60)=abb334(11)*abb334(1)
      abb334(61)=-abb334(60)*abb334(59)
      abb334(62)=abb334(61)*abb334(15)
      abb334(10)=abb334(10)*mB
      abb334(60)=-abb334(60)*abb334(10)
      abb334(63)=abb334(15)*abb334(8)
      abb334(64)=abb334(60)*abb334(63)
      abb334(65)=abb334(62)-abb334(64)
      abb334(66)=spak2e7*spbe7l6
      abb334(67)=-abb334(65)*abb334(66)
      abb334(68)=2.0_ki*spbk7l6
      abb334(69)=abb334(68)*abb334(20)
      abb334(70)=abb334(69)*abb334(15)
      abb334(71)=-abb334(13)*abb334(70)
      abb334(67)=abb334(67)+abb334(71)
      abb334(67)=abb334(67)*abb334(14)
      abb334(54)=-abb334(54)*abb334(41)
      abb334(71)=abb334(54)-abb334(32)
      abb334(72)=-abb334(71)*abb334(66)
      abb334(69)=abb334(23)*abb334(69)
      abb334(69)=abb334(72)+abb334(69)
      abb334(69)=spak2k4*abb334(69)
      abb334(11)=abb334(11)*abb334(18)
      abb334(18)=-abb334(11)*abb334(59)
      abb334(59)=abb334(18)*abb334(15)
      abb334(10)=-abb334(11)*abb334(10)
      abb334(11)=abb334(10)*abb334(63)
      abb334(72)=abb334(59)-abb334(11)
      abb334(66)=-abb334(72)*abb334(66)
      abb334(70)=-abb334(12)*abb334(70)
      abb334(66)=abb334(66)+abb334(70)
      abb334(66)=spbk3k1*abb334(66)
      abb334(66)=abb334(66)+abb334(67)+abb334(69)
      abb334(66)=spbk7k2*abb334(66)
      abb334(67)=abb334(28)*spbk7l6
      abb334(69)=abb334(67)*abb334(25)
      abb334(48)=-abb334(68)*abb334(48)
      abb334(48)=abb334(69)+abb334(48)+abb334(66)
      abb334(48)=spal6k7*abb334(48)
      abb334(66)=abb334(72)*spbk3k1
      abb334(65)=abb334(65)*abb334(14)
      abb334(69)=abb334(71)*spak2k4
      abb334(65)=abb334(69)+abb334(66)+abb334(65)
      abb334(65)=abb334(65)*spbe7k2
      abb334(66)=abb334(68)*spal6e7
      abb334(69)=abb334(66)*abb334(65)
      abb334(70)=mB**3
      abb334(71)=abb334(21)*abb334(70)
      abb334(72)=abb334(8)*spak3k4
      abb334(73)=abb334(72)*abb334(45)
      abb334(53)=abb334(53)**2
      abb334(74)=-abb334(73)*spak1l5*abb334(53)*abb334(71)
      abb334(60)=abb334(60)*abb334(16)
      abb334(10)=abb334(10)*abb334(19)
      abb334(10)=abb334(60)+abb334(10)
      abb334(10)=abb334(8)*abb334(10)
      abb334(60)=abb334(32)*spak2k4
      abb334(10)=abb334(60)+abb334(10)
      abb334(60)=abb334(10)*spbl6k2
      abb334(75)=spal6e7*abb334(60)
      abb334(76)=3.0_ki*abb334(74)+2.0_ki*abb334(75)
      abb334(76)=spbk7e7*abb334(76)
      abb334(44)=spak3k4*abb334(44)*abb334(7)
      abb334(77)=abb334(67)*abb334(44)
      abb334(69)=abb334(76)+abb334(77)+abb334(69)
      abb334(69)=spak2k7*abb334(69)
      abb334(76)=abb334(8)**2
      abb334(77)=abb334(76)*spbk7l6
      abb334(78)=spbe7k2*spae7k7
      abb334(79)=abb334(17)*abb334(77)*abb334(78)
      abb334(71)=-abb334(42)*abb334(71)
      abb334(36)=abb334(71)*abb334(36)
      abb334(80)=spbe7k2*abb334(7)
      abb334(81)=abb334(36)*abb334(80)
      abb334(82)=-spbk7l6*abb334(81)
      abb334(83)=abb334(43)*abb334(35)
      abb334(84)=-spbk7e7*abb334(76)*abb334(83)
      abb334(82)=abb334(82)+abb334(84)
      abb334(82)=spak2k7*abb334(82)
      abb334(84)=spal6k7*spbk7l6
      abb334(85)=abb334(84)*spbe7l6
      abb334(86)=abb334(37)*abb334(85)
      abb334(82)=abb334(86)+abb334(82)
      abb334(82)=spak1e7*abb334(82)
      abb334(79)=abb334(79)+abb334(82)
      abb334(18)=abb334(18)*abb334(19)
      abb334(61)=abb334(61)*abb334(16)
      abb334(82)=abb334(54)*spak2k4
      abb334(18)=abb334(61)+abb334(82)+abb334(18)
      abb334(61)=abb334(80)*spae7k7
      abb334(82)=abb334(61)*abb334(68)
      abb334(86)=abb334(82)*abb334(18)
      abb334(87)=abb334(21)*mB**4
      abb334(53)=-abb334(53)*abb334(87)
      abb334(35)=abb334(53)*abb334(35)
      abb334(88)=abb334(35)*abb334(45)
      abb334(89)=2.0_ki*abb334(88)
      abb334(49)=-abb334(89)*abb334(49)
      abb334(89)=abb334(47)*spak2e7
      abb334(90)=-abb334(89)*abb334(7)**2*spak1l5*abb334(53)
      abb334(86)=abb334(49)+abb334(86)+abb334(90)
      abb334(91)=es71+es12-es712
      abb334(86)=-abb334(86)*abb334(91)
      abb334(24)=-abb334(76)*abb334(24)
      abb334(45)=abb334(45)*spbk7k2
      abb334(92)=abb334(54)*abb334(47)*abb334(45)
      abb334(93)=abb334(26)*abb334(67)
      abb334(92)=abb334(93)+abb334(92)
      abb334(92)=spal6k7*abb334(92)
      abb334(93)=abb334(54)*spak3k4
      abb334(94)=abb334(93)*abb334(80)
      abb334(95)=spbk7l6*spal6e7
      abb334(96)=-abb334(94)*abb334(95)
      abb334(97)=abb334(55)*spal6e7
      abb334(98)=-spbk7e7*abb334(97)
      abb334(96)=abb334(96)+abb334(98)
      abb334(96)=spak2k7*abb334(96)
      abb334(98)=spbk7e7*spal6k7
      abb334(99)=abb334(98)*spak2e7
      abb334(100)=-abb334(55)*abb334(99)
      abb334(92)=2.0_ki*abb334(96)+abb334(92)+abb334(100)
      abb334(92)=spbl6k3*abb334(92)
      abb334(96)=-abb334(76)*abb334(51)
      abb334(66)=abb334(66)*spak2k7
      abb334(100)=abb334(83)*abb334(66)
      abb334(96)=abb334(100)+abb334(96)
      abb334(96)=spbk7e7*abb334(96)
      abb334(67)=-abb334(37)*abb334(67)
      abb334(100)=spbe7l6*abb334(36)
      abb334(45)=abb334(100)*abb334(45)
      abb334(45)=abb334(67)+abb334(45)+abb334(96)
      abb334(45)=spak1k7*abb334(45)
      abb334(67)=-spak2k7*abb334(28)*abb334(68)*abb334(83)
      abb334(96)=spbk7l6*abb334(20)*abb334(37)
      abb334(51)=abb334(51)*abb334(85)
      abb334(51)=abb334(67)-3.0_ki*abb334(96)+abb334(51)
      abb334(51)=spak1l6*abb334(51)
      abb334(67)=-abb334(32)*abb334(89)
      abb334(68)=-abb334(68)*abb334(30)
      abb334(67)=abb334(67)+abb334(68)
      abb334(67)=spal6k7*abb334(67)
      abb334(68)=spak2k7*abb334(82)*abb334(93)
      abb334(30)=abb334(76)*abb334(30)
      abb334(30)=abb334(68)+abb334(30)+abb334(67)
      abb334(30)=spbk7k3*abb334(30)
      abb334(67)=abb334(20)*abb334(7)
      abb334(68)=spbk7k2*abb334(67)
      abb334(68)=abb334(82)+abb334(68)
      abb334(36)=abb334(36)*abb334(68)
      abb334(68)=abb334(88)*spbk7k2
      abb334(76)=-spal6k7*spbe7l6*abb334(68)
      abb334(82)=abb334(35)*abb334(80)
      abb334(66)=abb334(66)*abb334(82)
      abb334(36)=abb334(66)+abb334(76)+abb334(36)
      abb334(36)=spak1k2*abb334(36)
      abb334(66)=-abb334(73)*abb334(23)*abb334(70)*abb334(6)**2
      abb334(70)=-abb334(66)*abb334(91)
      abb334(73)=spae7k7*abb334(26)*abb334(77)
      abb334(76)=spak2k7*spbk7l6*abb334(97)
      abb334(70)=abb334(73)+abb334(76)+abb334(70)
      abb334(73)=2.0_ki*spbe7k3
      abb334(70)=abb334(70)*abb334(73)
      abb334(60)=abb334(60)*abb334(99)
      abb334(24)=abb334(70)+abb334(36)+abb334(30)+abb334(51)+abb334(45)+abb334(&
      &92)+abb334(69)+abb334(60)+abb334(48)+abb334(24)+abb334(86)+2.0_ki*abb334&
      &(79)
      abb334(24)=2.0_ki*abb334(24)
      abb334(30)=abb334(17)*spal6k7
      abb334(36)=-spbk7l6*abb334(30)
      abb334(45)=2.0_ki*abb334(15)
      abb334(45)=abb334(45)*mB
      abb334(45)=abb334(45)+3.0_ki*abb334(63)
      abb334(48)=abb334(8)*abb334(13)*abb334(45)
      abb334(13)=abb334(13)*abb334(40)
      abb334(51)=-abb334(13)*abb334(15)
      abb334(48)=abb334(51)+abb334(48)
      abb334(48)=abb334(48)*abb334(14)
      abb334(51)=abb334(23)*mB
      abb334(51)=2.0_ki*abb334(51)
      abb334(60)=3.0_ki*abb334(23)
      abb334(63)=-abb334(8)*abb334(60)
      abb334(63)=-abb334(51)+abb334(63)
      abb334(63)=abb334(8)*abb334(63)
      abb334(22)=-abb334(22)*abb334(41)
      abb334(41)=abb334(63)-abb334(22)
      abb334(41)=spak2k4*abb334(41)
      abb334(45)=abb334(8)*abb334(12)*abb334(45)
      abb334(12)=abb334(12)*abb334(40)
      abb334(15)=-abb334(12)*abb334(15)
      abb334(15)=abb334(15)+abb334(45)
      abb334(15)=spbk3k1*abb334(15)
      abb334(15)=abb334(36)+abb334(15)+abb334(48)+abb334(41)
      abb334(15)=spbl6k2*abb334(15)
      abb334(32)=abb334(54)+2.0_ki*abb334(32)
      abb334(32)=abb334(32)*spak2k4
      abb334(11)=abb334(59)+2.0_ki*abb334(11)
      abb334(11)=abb334(11)*spbk3k1
      abb334(36)=abb334(62)+2.0_ki*abb334(64)
      abb334(14)=abb334(36)*abb334(14)
      abb334(11)=abb334(14)+abb334(32)+abb334(11)
      abb334(11)=-abb334(11)*abb334(91)
      abb334(14)=abb334(83)*spak1l6
      abb334(32)=abb334(44)+abb334(14)
      abb334(36)=spbk7l6*abb334(32)
      abb334(41)=abb334(93)+2.0_ki*abb334(55)
      abb334(41)=spbk7k3*abb334(41)
      abb334(36)=abb334(41)+abb334(36)
      abb334(36)=spak2k7*abb334(36)
      abb334(41)=spak3k4*abb334(51)
      abb334(45)=abb334(72)*abb334(60)
      abb334(41)=abb334(41)+abb334(45)
      abb334(41)=abb334(8)*abb334(41)
      abb334(45)=abb334(22)*spak3k4
      abb334(48)=-abb334(26)*abb334(84)
      abb334(41)=abb334(48)+abb334(45)+abb334(41)
      abb334(41)=spbl6k3*abb334(41)
      abb334(21)=abb334(21)*abb334(33)*abb334(40)
      abb334(33)=-spak3k4*abb334(21)
      abb334(34)=abb334(34)*abb334(72)
      abb334(33)=abb334(33)+2.0_ki*abb334(34)
      abb334(33)=spak1k7*spbk7l6*abb334(5)*abb334(33)
      abb334(34)=spak3k4*abb334(71)
      abb334(40)=3.0_ki*abb334(72)
      abb334(40)=-abb334(43)*abb334(40)
      abb334(34)=2.0_ki*abb334(34)+abb334(40)
      abb334(34)=abb334(8)*abb334(34)
      abb334(40)=spak3k4*abb334(42)*abb334(87)
      abb334(34)=abb334(40)+abb334(34)
      abb334(34)=abb334(5)*abb334(34)
      abb334(40)=abb334(35)*abb334(7)
      abb334(42)=-abb334(40)*abb334(91)
      abb334(34)=abb334(34)+abb334(42)
      abb334(34)=spak1k2*abb334(34)
      abb334(11)=abb334(34)+abb334(33)+abb334(41)+abb334(36)+abb334(15)+abb334(&
      &11)
      abb334(11)=4.0_ki*abb334(11)
      abb334(15)=8.0_ki*abb334(57)
      abb334(29)=-abb334(52)-2.0_ki*abb334(29)
      abb334(29)=4.0_ki*abb334(29)
      abb334(33)=-16.0_ki*abb334(27)
      abb334(34)=abb334(18)*spbk7k2
      abb334(36)=abb334(93)*spbk7k3
      abb334(34)=abb334(34)-abb334(36)
      abb334(36)=abb334(67)*abb334(34)
      abb334(41)=spbl6k3*abb334(7)*abb334(93)
      abb334(41)=abb334(41)-abb334(18)
      abb334(41)=abb334(28)*abb334(41)
      abb334(42)=abb334(66)*abb334(73)
      abb334(43)=spak1e7*abb334(7)*abb334(100)
      abb334(36)=abb334(43)+abb334(42)-abb334(90)+abb334(41)+abb334(49)+abb334(&
      &36)
      abb334(36)=4.0_ki*abb334(36)
      abb334(41)=-spak1k2*abb334(40)
      abb334(41)=abb334(41)+abb334(10)
      abb334(41)=16.0_ki*abb334(41)
      abb334(42)=-4.0_ki*abb334(57)
      abb334(18)=-abb334(91)*abb334(80)*abb334(18)
      abb334(13)=-abb334(13)*abb334(16)
      abb334(16)=-spak2k4*abb334(22)
      abb334(12)=-abb334(12)*abb334(19)
      abb334(12)=abb334(12)+abb334(16)+abb334(13)
      abb334(12)=spbe7k2*abb334(12)
      abb334(13)=-spbk7k2*spbe7l6*abb334(30)
      abb334(16)=abb334(98)*abb334(25)
      abb334(19)=abb334(31)+abb334(39)
      abb334(19)=abb334(37)*abb334(19)
      abb334(21)=abb334(7)*abb334(47)*spak1l5*abb334(21)
      abb334(22)=abb334(80)*abb334(45)
      abb334(25)=abb334(26)*abb334(98)
      abb334(22)=abb334(22)+abb334(25)
      abb334(22)=spbl6k3*abb334(22)
      abb334(23)=-spal6k7*abb334(23)*abb334(47)
      abb334(25)=spak2k7*abb334(94)
      abb334(23)=abb334(23)+abb334(25)
      abb334(23)=spbk7k3*abb334(23)
      abb334(25)=-spak2k7*spbk7e7*abb334(44)
      abb334(30)=-spak1k2*abb334(81)
      abb334(12)=abb334(30)+abb334(23)+abb334(22)+abb334(25)+abb334(16)+abb334(&
      &13)+abb334(21)+abb334(12)+abb334(18)+abb334(19)
      abb334(12)=2.0_ki*abb334(12)
      abb334(13)=-spbk7k2*abb334(10)
      abb334(16)=spbk7k3*abb334(55)
      abb334(13)=abb334(16)+abb334(13)
      abb334(13)=spae7k7*abb334(13)
      abb334(16)=abb334(83)*abb334(95)
      abb334(16)=abb334(16)-abb334(68)
      abb334(16)=spak1k7*abb334(16)
      abb334(18)=-abb334(53)*abb334(50)
      abb334(19)=-spbk7l6*spae7k7*abb334(83)
      abb334(18)=abb334(18)+abb334(19)
      abb334(18)=spak1l6*abb334(18)
      abb334(19)=spal6e7*abb334(35)
      abb334(21)=spbk7k2*spae7k7*abb334(40)
      abb334(19)=abb334(19)+abb334(21)
      abb334(19)=spak1k2*abb334(19)
      abb334(21)=spbl6k3*abb334(97)
      abb334(13)=abb334(19)+abb334(18)+abb334(16)+abb334(21)-abb334(75)-abb334(&
      &74)+abb334(13)
      abb334(13)=2.0_ki*abb334(13)
      abb334(16)=spal6e7*abb334(27)
      abb334(18)=-spak3k4*abb334(46)
      abb334(16)=abb334(38)+abb334(18)+abb334(16)
      abb334(16)=4.0_ki*spbk7e7*abb334(16)
      abb334(17)=abb334(17)*spbk7k2
      abb334(18)=-spbk7k3*abb334(26)
      abb334(17)=-abb334(17)+abb334(18)
      abb334(17)=8.0_ki*abb334(17)
      abb334(10)=-abb334(78)*abb334(10)
      abb334(18)=-abb334(20)*abb334(14)
      abb334(19)=abb334(61)*abb334(35)*spak1k2
      abb334(20)=spae7k7*abb334(56)
      abb334(10)=abb334(20)+abb334(19)+abb334(18)+abb334(10)
      abb334(10)=4.0_ki*abb334(10)
      abb334(18)=8.0_ki*spak1k7*abb334(83)
      abb334(19)=spbl6k3*abb334(94)
      abb334(20)=-abb334(83)*abb334(39)
      abb334(21)=-spak1k2*abb334(82)
      abb334(19)=-abb334(56)+abb334(21)+abb334(20)+abb334(19)-abb334(65)
      abb334(19)=spal6e7*abb334(19)
      abb334(20)=abb334(61)*abb334(34)
      abb334(14)=abb334(28)*abb334(14)
      abb334(21)=spak1e7*abb334(81)
      abb334(14)=abb334(21)+abb334(14)+abb334(19)+abb334(20)
      abb334(14)=2.0_ki*abb334(14)
      abb334(19)=8.0_ki*abb334(32)
      abb334(20)=-8.0_ki*abb334(55)
      abb334(21)=-8.0_ki*abb334(37)
      R2d334=abb334(58)
      rat2 = rat2 + R2d334
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='334' value='", &
          & R2d334, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd334h2
