module     p0_dbaru_epnebbbarg_abbrevd101h3
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(99), public :: abb101
   complex(ki), public :: R2d101
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
      abb101(1)=1.0_ki/(-mB**2+es67)
      abb101(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb101(3)=NC**(-1)
      abb101(4)=sqrt2**(-1)
      abb101(5)=es234**(-1)
      abb101(6)=spak2l5**(-1)
      abb101(7)=spak2k7**(-1)
      abb101(8)=spak2l6**(-1)
      abb101(9)=spbl6k2**(-1)
      abb101(10)=sqrt(mB**2)
      abb101(11)=abb101(3)**2
      abb101(12)=abb101(11)*c2
      abb101(13)=abb101(6)*mB
      abb101(14)=abb101(12)*abb101(13)
      abb101(15)=abb101(13)*c3
      abb101(16)=abb101(15)*NC
      abb101(16)=abb101(14)+abb101(16)
      abb101(17)=TR*gW
      abb101(17)=abb101(17)**2*i_*CVDU*abb101(4)*abb101(2)
      abb101(18)=abb101(5)*abb101(1)
      abb101(19)=abb101(17)*abb101(18)*abb101(7)
      abb101(20)=abb101(19)*spbk7l6
      abb101(21)=abb101(20)*spbk3k2
      abb101(22)=spak2k4*spak1k2
      abb101(23)=abb101(22)*abb101(21)
      abb101(24)=abb101(23)*abb101(16)
      abb101(25)=2.0_ki*abb101(3)
      abb101(26)=abb101(15)*abb101(25)
      abb101(27)=abb101(26)*abb101(23)
      abb101(28)=abb101(24)-abb101(27)
      abb101(29)=-spbk7k2*abb101(28)
      abb101(30)=abb101(14)*abb101(21)
      abb101(31)=abb101(15)*abb101(21)
      abb101(32)=abb101(31)*NC
      abb101(33)=abb101(31)*abb101(25)
      abb101(32)=-abb101(33)+abb101(30)+abb101(32)
      abb101(33)=-spak1k2*abb101(32)
      abb101(34)=spbk7k3*spak3k4
      abb101(35)=-abb101(33)*abb101(34)
      abb101(29)=abb101(35)+abb101(29)
      abb101(35)=spak1k7*spak2l6
      abb101(29)=abb101(35)*abb101(29)
      abb101(36)=spbl6k3*spak3k4
      abb101(37)=abb101(36)*spak2l6
      abb101(38)=abb101(37)*abb101(33)
      abb101(25)=abb101(25)-NC
      abb101(39)=abb101(10)*c3
      abb101(40)=-abb101(39)*abb101(25)
      abb101(41)=abb101(12)*abb101(10)
      abb101(40)=abb101(40)+abb101(41)
      abb101(42)=-abb101(40)*abb101(23)
      abb101(43)=-abb101(42)*spbl5k2
      abb101(38)=abb101(43)+abb101(38)
      abb101(43)=spbl6k2*spak2l6
      abb101(44)=-abb101(28)*abb101(43)
      abb101(44)=abb101(44)-abb101(38)
      abb101(44)=spak1l6*abb101(44)
      abb101(45)=mB**3
      abb101(46)=abb101(45)*abb101(6)
      abb101(47)=abb101(46)*abb101(12)
      abb101(48)=c3*abb101(46)
      abb101(49)=-abb101(48)*abb101(25)
      abb101(50)=abb101(47)+abb101(49)
      abb101(51)=spak1k2*spbk3k2
      abb101(51)=abb101(51)**2
      abb101(52)=-spak3k4*abb101(9)*abb101(51)*abb101(20)*abb101(50)
      abb101(29)=abb101(52)+abb101(44)+abb101(29)
      abb101(29)=spbl6k1*abb101(29)
      abb101(44)=es712-es71
      abb101(52)=-abb101(28)*abb101(44)
      abb101(53)=abb101(28)*es12
      abb101(16)=abb101(16)-abb101(26)
      abb101(54)=abb101(18)*spbk7l6
      abb101(55)=abb101(54)*abb101(17)
      abb101(56)=spbk3k2*abb101(55)
      abb101(57)=abb101(16)*abb101(56)
      abb101(58)=-abb101(57)*spak1k2
      abb101(59)=abb101(58)*abb101(34)
      abb101(52)=abb101(59)+abb101(53)+abb101(52)
      abb101(52)=es71*abb101(52)
      abb101(58)=-abb101(58)*abb101(36)
      abb101(60)=-spbl6k2*abb101(22)*abb101(57)
      abb101(58)=abb101(60)+abb101(58)
      abb101(58)=spak1l6*abb101(58)
      abb101(60)=abb101(17)*c3
      abb101(61)=abb101(60)*abb101(54)
      abb101(62)=abb101(61)*abb101(46)*abb101(25)
      abb101(63)=abb101(17)*abb101(6)
      abb101(54)=abb101(63)*abb101(54)
      abb101(45)=abb101(45)*abb101(12)
      abb101(64)=-abb101(45)*abb101(54)
      abb101(62)=abb101(64)+abb101(62)
      abb101(64)=abb101(9)*abb101(8)
      abb101(65)=abb101(64)*spak3k4
      abb101(51)=abb101(65)*abb101(51)*abb101(62)
      abb101(51)=abb101(51)+abb101(58)
      abb101(51)=spbk7k1*abb101(51)
      abb101(58)=abb101(10)**2
      abb101(24)=abb101(24)*abb101(58)
      abb101(27)=abb101(27)*abb101(58)
      abb101(24)=abb101(24)-abb101(27)
      abb101(62)=-es12*abb101(24)
      abb101(66)=mB**2
      abb101(67)=-abb101(66)*abb101(42)
      abb101(68)=abb101(64)*es12
      abb101(69)=-abb101(67)*abb101(68)
      abb101(70)=-es71*abb101(42)
      abb101(69)=abb101(69)+abb101(70)
      abb101(69)=spbl5k2*abb101(69)
      abb101(70)=spak1k2**2
      abb101(71)=abb101(70)*spbk3k1*spak3k4
      abb101(72)=abb101(71)*abb101(32)
      abb101(73)=abb101(58)*abb101(72)
      abb101(74)=-abb101(21)*abb101(25)
      abb101(39)=-abb101(39)*abb101(74)
      abb101(75)=-spak1k2*abb101(39)
      abb101(76)=abb101(21)*abb101(10)
      abb101(77)=abb101(12)*spak1k2
      abb101(78)=abb101(77)*abb101(76)
      abb101(75)=abb101(78)+abb101(75)
      abb101(78)=abb101(68)*abb101(66)
      abb101(79)=spbl6k1*spak1l6
      abb101(78)=abb101(78)+abb101(79)-es71
      abb101(79)=spbl5k3*spak3k4
      abb101(78)=abb101(79)*abb101(75)*abb101(78)
      abb101(29)=abb101(51)+abb101(78)+abb101(29)+abb101(73)+abb101(69)+abb101(&
      &62)+abb101(52)
      abb101(29)=8.0_ki*abb101(29)
      abb101(51)=abb101(72)-abb101(53)
      abb101(51)=16.0_ki*abb101(51)
      abb101(52)=abb101(19)*spbk3k2
      abb101(53)=abb101(52)*spak2k4
      abb101(62)=spbk7l6**2
      abb101(69)=abb101(35)*abb101(16)*abb101(53)*abb101(62)
      abb101(72)=spak4k7*spbk7l5
      abb101(73)=spak4l6*spbl6l5
      abb101(72)=abb101(72)+abb101(73)
      abb101(73)=abb101(75)*abb101(72)
      abb101(78)=abb101(62)*abb101(13)
      abb101(80)=abb101(78)*abb101(60)
      abb101(81)=-spak2k4*abb101(25)
      abb101(82)=-abb101(81)*abb101(80)
      abb101(62)=abb101(62)*mB
      abb101(83)=abb101(62)*abb101(63)
      abb101(84)=abb101(12)*spak2k4
      abb101(85)=abb101(83)*abb101(84)
      abb101(82)=abb101(82)-abb101(85)
      abb101(82)=spak1l6*abb101(82)*abb101(18)*spbk3k2
      abb101(86)=abb101(76)*abb101(12)
      abb101(86)=abb101(39)-abb101(86)
      abb101(87)=spbl6l5*spak1k4
      abb101(88)=abb101(87)*spak2l6
      abb101(89)=abb101(88)*abb101(86)
      abb101(90)=abb101(56)*abb101(40)
      abb101(91)=spbk7l5*spak1k4
      abb101(92)=abb101(90)*abb101(91)
      abb101(93)=abb101(64)*spbl5k2
      abb101(67)=abb101(67)*abb101(93)
      abb101(67)=abb101(69)+abb101(89)-abb101(92)+abb101(82)+abb101(67)+abb101(&
      &73)
      abb101(69)=2.0_ki*abb101(58)
      abb101(73)=abb101(69)*abb101(13)
      abb101(73)=abb101(46)-abb101(73)
      abb101(11)=c2*abb101(11)*abb101(73)
      abb101(15)=abb101(69)*abb101(15)
      abb101(15)=abb101(15)-abb101(48)
      abb101(15)=abb101(15)*NC
      abb101(11)=abb101(11)-abb101(15)
      abb101(15)=-abb101(23)*abb101(11)
      abb101(69)=abb101(48)*abb101(3)
      abb101(73)=abb101(69)*abb101(23)
      abb101(27)=abb101(73)-abb101(27)
      abb101(23)=abb101(64)*abb101(23)*abb101(50)
      abb101(73)=abb101(44)-es12
      abb101(82)=abb101(73)*abb101(23)
      abb101(15)=2.0_ki*abb101(27)+abb101(67)+abb101(82)+abb101(15)
      abb101(15)=16.0_ki*abb101(15)
      abb101(27)=64.0_ki*abb101(28)
      abb101(82)=abb101(49)*spak1k2
      abb101(77)=abb101(77)*abb101(46)
      abb101(82)=abb101(82)+abb101(77)
      abb101(56)=-abb101(34)*abb101(56)*abb101(82)
      abb101(47)=abb101(21)*abb101(47)
      abb101(48)=abb101(74)*abb101(48)
      abb101(47)=abb101(47)+abb101(48)
      abb101(47)=abb101(47)*abb101(71)
      abb101(47)=abb101(47)+abb101(56)
      abb101(47)=abb101(64)*abb101(47)
      abb101(56)=-es12*abb101(23)
      abb101(21)=abb101(77)*abb101(21)
      abb101(48)=spak1k2*abb101(48)
      abb101(21)=abb101(21)+abb101(48)
      abb101(48)=-abb101(9)*abb101(21)*abb101(36)
      abb101(24)=abb101(48)+abb101(56)+abb101(67)+abb101(47)+abb101(24)
      abb101(24)=16.0_ki*abb101(24)
      abb101(47)=32.0_ki*abb101(28)
      abb101(48)=64.0_ki*abb101(23)
      abb101(23)=32.0_ki*abb101(23)
      abb101(56)=abb101(73)-abb101(43)
      abb101(28)=-abb101(28)*abb101(56)
      abb101(67)=-abb101(75)*abb101(79)
      abb101(28)=abb101(67)+abb101(59)+abb101(28)+abb101(38)
      abb101(28)=16.0_ki*abb101(28)
      abb101(38)=-spbk7k2*abb101(42)
      abb101(59)=-abb101(75)*abb101(34)
      abb101(38)=abb101(38)+abb101(59)
      abb101(38)=8.0_ki*abb101(38)
      abb101(59)=-abb101(75)*abb101(36)
      abb101(42)=-spbl6k2*abb101(42)
      abb101(42)=abb101(59)+abb101(42)
      abb101(42)=8.0_ki*abb101(42)
      abb101(59)=abb101(20)*spak1k2
      abb101(67)=abb101(72)*abb101(59)*abb101(40)
      abb101(55)=abb101(41)*abb101(55)
      abb101(71)=-abb101(10)*abb101(25)
      abb101(72)=abb101(71)*abb101(61)
      abb101(55)=abb101(55)+abb101(72)
      abb101(55)=abb101(55)*abb101(91)
      abb101(72)=abb101(20)*c3
      abb101(71)=-abb101(72)*abb101(71)
      abb101(74)=abb101(41)*abb101(20)
      abb101(71)=abb101(71)-abb101(74)
      abb101(74)=abb101(71)*abb101(88)
      abb101(55)=-abb101(67)+abb101(55)-abb101(74)
      abb101(67)=-spbk4k2*abb101(55)
      abb101(26)=abb101(58)*abb101(26)
      abb101(26)=abb101(26)-abb101(69)
      abb101(11)=abb101(11)+2.0_ki*abb101(26)
      abb101(26)=-abb101(59)*abb101(11)
      abb101(69)=abb101(80)*abb101(18)
      abb101(74)=abb101(69)*abb101(25)
      abb101(79)=abb101(83)*abb101(12)
      abb101(83)=-abb101(18)*abb101(79)
      abb101(74)=abb101(83)+abb101(74)
      abb101(74)=spak1l6*abb101(74)
      abb101(83)=abb101(19)*c3
      abb101(88)=-abb101(83)*abb101(25)
      abb101(89)=abb101(78)*abb101(88)
      abb101(92)=abb101(19)*abb101(6)
      abb101(62)=abb101(62)*abb101(92)
      abb101(94)=abb101(12)*abb101(62)
      abb101(89)=abb101(94)+abb101(89)
      abb101(89)=abb101(89)*abb101(35)
      abb101(26)=abb101(89)+abb101(74)+abb101(26)
      abb101(26)=es34*abb101(26)
      abb101(17)=abb101(17)*spbk7l6
      abb101(74)=abb101(7)*abb101(1)
      abb101(89)=abb101(17)*abb101(74)
      abb101(94)=abb101(89)*spak1k2
      abb101(49)=-abb101(94)*abb101(49)
      abb101(77)=abb101(77)*abb101(89)
      abb101(49)=abb101(49)-abb101(77)
      abb101(49)=abb101(49)*abb101(64)
      abb101(77)=abb101(64)*es34
      abb101(95)=-abb101(77)*abb101(59)*abb101(50)
      abb101(49)=abb101(49)-abb101(95)
      abb101(73)=abb101(49)*abb101(73)
      abb101(66)=abb101(40)*abb101(66)
      abb101(95)=-abb101(64)*abb101(94)*abb101(66)
      abb101(96)=abb101(59)*abb101(66)
      abb101(97)=abb101(96)*abb101(77)
      abb101(95)=abb101(95)+abb101(97)
      abb101(95)=spbl5k2*abb101(95)
      abb101(97)=-spbk7l5*abb101(90)
      abb101(98)=spbl6l5*spak2l6*abb101(86)
      abb101(97)=abb101(97)+abb101(98)
      abb101(97)=spak1k3*abb101(97)
      abb101(80)=abb101(25)*abb101(80)
      abb101(79)=abb101(80)-abb101(79)
      abb101(80)=abb101(35)*abb101(74)
      abb101(98)=-spak1l6*abb101(1)
      abb101(80)=abb101(80)+abb101(98)
      abb101(79)=abb101(79)*abb101(80)
      abb101(80)=abb101(94)*abb101(11)
      abb101(98)=spak3k7*spbk7l5
      abb101(99)=spak3l6*spbl6l5
      abb101(98)=abb101(99)+abb101(98)
      abb101(75)=abb101(75)*abb101(98)
      abb101(26)=abb101(97)+abb101(95)+abb101(26)+abb101(67)+abb101(73)+abb101(&
      &75)+abb101(80)+abb101(79)
      abb101(26)=8.0_ki*abb101(26)
      abb101(67)=es34*abb101(59)
      abb101(67)=abb101(67)-abb101(94)
      abb101(67)=abb101(16)*abb101(67)
      abb101(67)=32.0_ki*abb101(67)
      abb101(49)=32.0_ki*abb101(49)
      abb101(66)=-abb101(93)*abb101(66)
      abb101(11)=abb101(66)+abb101(11)
      abb101(59)=abb101(59)*spak2k4
      abb101(11)=abb101(59)*abb101(11)
      abb101(66)=-abb101(59)*abb101(50)
      abb101(73)=abb101(66)*abb101(64)
      abb101(75)=abb101(73)*abb101(44)
      abb101(69)=abb101(69)*abb101(81)
      abb101(18)=abb101(18)*abb101(85)
      abb101(18)=abb101(18)+abb101(69)
      abb101(18)=spak1l6*abb101(18)
      abb101(69)=-abb101(78)*abb101(83)*abb101(81)
      abb101(62)=-abb101(84)*abb101(62)
      abb101(62)=abb101(62)+abb101(69)
      abb101(62)=abb101(62)*abb101(35)
      abb101(66)=-abb101(66)*abb101(68)
      abb101(11)=abb101(66)+abb101(62)+abb101(75)+abb101(55)+abb101(18)+abb101(&
      &11)
      abb101(18)=8.0_ki*spbk4k3
      abb101(11)=abb101(11)*abb101(18)
      abb101(55)=32.0_ki*spbk4k3
      abb101(59)=abb101(55)*abb101(16)*abb101(59)
      abb101(55)=abb101(73)*abb101(55)
      abb101(62)=-abb101(32)*abb101(36)
      abb101(30)=spak2k4*abb101(30)
      abb101(31)=-abb101(25)*abb101(31)*spak2k4
      abb101(30)=abb101(30)+abb101(31)
      abb101(31)=spbl6k2*abb101(30)
      abb101(31)=abb101(31)+abb101(62)
      abb101(31)=abb101(35)*abb101(31)
      abb101(35)=abb101(50)*abb101(52)
      abb101(50)=-abb101(22)*abb101(35)
      abb101(62)=abb101(50)*abb101(8)
      abb101(66)=abb101(30)*spak1k7
      abb101(68)=abb101(62)+2.0_ki*abb101(66)
      abb101(68)=es12*abb101(68)
      abb101(69)=abb101(33)*spak3k4
      abb101(73)=spak1k7*abb101(69)
      abb101(35)=abb101(70)*abb101(35)
      abb101(70)=spak3k4*abb101(8)
      abb101(75)=abb101(35)*abb101(70)
      abb101(73)=abb101(75)+abb101(73)
      abb101(73)=spbk3k1*abb101(73)
      abb101(75)=-abb101(66)*abb101(44)
      abb101(78)=-abb101(57)*abb101(34)
      abb101(79)=spak1k7*abb101(78)
      abb101(31)=abb101(73)+abb101(79)+abb101(68)+abb101(75)+abb101(31)
      abb101(31)=8.0_ki*abb101(31)
      abb101(62)=abb101(62)+abb101(66)
      abb101(66)=abb101(52)*abb101(40)
      abb101(68)=abb101(87)*abb101(66)
      abb101(73)=-abb101(68)+2.0_ki*abb101(62)
      abb101(73)=16.0_ki*abb101(73)
      abb101(62)=abb101(68)-abb101(62)
      abb101(62)=16.0_ki*abb101(62)
      abb101(68)=-abb101(25)*abb101(72)*abb101(13)
      abb101(14)=abb101(20)*abb101(14)
      abb101(14)=abb101(14)+abb101(68)
      abb101(68)=-spak1k7*abb101(14)
      abb101(72)=abb101(45)*abb101(92)
      abb101(75)=abb101(72)*spak1k2
      abb101(79)=abb101(46)*spak1k2
      abb101(80)=abb101(88)*abb101(79)
      abb101(75)=abb101(75)+abb101(80)
      abb101(80)=abb101(8)*abb101(75)
      abb101(68)=abb101(80)+abb101(68)
      abb101(68)=es34*abb101(68)
      abb101(60)=abb101(25)*abb101(79)*abb101(60)
      abb101(45)=abb101(63)*abb101(45)*spak1k2
      abb101(45)=abb101(45)-abb101(60)
      abb101(45)=abb101(74)*abb101(45)
      abb101(60)=-abb101(8)*abb101(45)
      abb101(63)=abb101(16)*abb101(89)
      abb101(74)=spak1k7*abb101(63)
      abb101(60)=abb101(68)+abb101(60)+abb101(74)
      abb101(68)=abb101(10)*abb101(88)
      abb101(19)=abb101(41)*abb101(19)
      abb101(19)=abb101(19)+abb101(68)
      abb101(41)=abb101(19)*spbk4k2
      abb101(68)=abb101(87)*abb101(41)
      abb101(74)=abb101(66)*spak1k3
      abb101(79)=spbl6l5*abb101(74)
      abb101(60)=abb101(79)+2.0_ki*abb101(60)+abb101(68)
      abb101(60)=8.0_ki*abb101(60)
      abb101(46)=abb101(88)*abb101(46)
      abb101(46)=abb101(72)+abb101(46)
      abb101(22)=spbk4k3*abb101(22)*abb101(46)
      abb101(46)=-abb101(8)*abb101(22)
      abb101(20)=abb101(20)*spak2k4
      abb101(68)=spbk4k3*abb101(16)*abb101(20)
      abb101(72)=spak1k7*abb101(68)
      abb101(46)=abb101(46)+abb101(72)
      abb101(19)=spbk4k3*abb101(19)*spak1k4
      abb101(72)=abb101(66)*spak1k2
      abb101(19)=abb101(19)+abb101(72)
      abb101(72)=-spbl6l5*abb101(19)
      abb101(46)=2.0_ki*abb101(46)+abb101(72)
      abb101(46)=8.0_ki*abb101(46)
      abb101(72)=abb101(32)*spak1l6
      abb101(79)=-abb101(37)*abb101(72)
      abb101(80)=spak1l6*abb101(69)
      abb101(83)=abb101(64)*spbk7k2
      abb101(35)=-spak3k4*abb101(35)*abb101(83)
      abb101(35)=abb101(80)+abb101(35)
      abb101(35)=spbk3k1*abb101(35)
      abb101(80)=abb101(30)*spak1l6
      abb101(43)=abb101(43)+2.0_ki*es12-abb101(44)
      abb101(43)=abb101(80)*abb101(43)
      abb101(44)=abb101(50)*abb101(83)
      abb101(50)=-es12*abb101(44)
      abb101(78)=spak1l6*abb101(78)
      abb101(35)=abb101(35)+abb101(79)+abb101(78)+abb101(50)+abb101(43)
      abb101(35)=8.0_ki*abb101(35)
      abb101(43)=abb101(44)-abb101(80)
      abb101(44)=abb101(91)*abb101(66)
      abb101(50)=abb101(44)-2.0_ki*abb101(43)
      abb101(50)=16.0_ki*abb101(50)
      abb101(43)=-abb101(44)+abb101(43)
      abb101(43)=16.0_ki*abb101(43)
      abb101(14)=abb101(14)*es34
      abb101(14)=abb101(14)-abb101(63)
      abb101(44)=-spak1l6*abb101(14)
      abb101(45)=abb101(45)*abb101(64)
      abb101(63)=-abb101(75)*abb101(77)
      abb101(45)=abb101(45)+abb101(63)
      abb101(45)=spbk7k2*abb101(45)
      abb101(44)=abb101(45)+abb101(44)
      abb101(41)=-abb101(91)*abb101(41)
      abb101(45)=-spbk7l5*abb101(74)
      abb101(41)=abb101(45)+2.0_ki*abb101(44)+abb101(41)
      abb101(41)=8.0_ki*abb101(41)
      abb101(44)=spak1l6*abb101(68)
      abb101(22)=abb101(83)*abb101(22)
      abb101(22)=abb101(44)+abb101(22)
      abb101(19)=spbk7l5*abb101(19)
      abb101(19)=abb101(19)+2.0_ki*abb101(22)
      abb101(19)=8.0_ki*abb101(19)
      abb101(22)=8.0_ki*spak3k4
      abb101(44)=abb101(64)*abb101(22)*abb101(96)*spbk3k2**2
      abb101(33)=-abb101(22)*abb101(58)*abb101(33)
      abb101(45)=16.0_ki*abb101(69)
      abb101(21)=16.0_ki*abb101(21)*abb101(65)
      abb101(58)=-spak1k7*abb101(32)*spak3k4
      abb101(52)=abb101(52)*abb101(82)
      abb101(63)=abb101(52)*abb101(70)
      abb101(58)=abb101(63)+abb101(58)
      abb101(58)=8.0_ki*abb101(58)
      abb101(52)=-abb101(52)*abb101(83)
      abb101(52)=-abb101(72)+abb101(52)
      abb101(52)=abb101(52)*abb101(22)
      abb101(63)=-spak2k4*abb101(57)
      abb101(64)=16.0_ki*abb101(63)
      abb101(16)=-abb101(17)*abb101(1)*abb101(16)
      abb101(13)=abb101(13)*abb101(61)
      abb101(17)=-abb101(13)*abb101(25)
      abb101(25)=abb101(54)*mB
      abb101(12)=abb101(12)*abb101(25)
      abb101(12)=abb101(12)+abb101(17)
      abb101(12)=es34*abb101(12)
      abb101(12)=abb101(12)+abb101(16)
      abb101(12)=8.0_ki*abb101(12)
      abb101(13)=-abb101(13)*abb101(81)
      abb101(16)=-abb101(84)*abb101(25)
      abb101(13)=abb101(16)+abb101(13)
      abb101(13)=abb101(13)*abb101(18)
      abb101(16)=abb101(30)*spak2l6
      abb101(17)=16.0_ki*abb101(16)
      abb101(25)=8.0_ki*spak2l6
      abb101(14)=abb101(14)*abb101(25)
      abb101(25)=-abb101(68)*abb101(25)
      abb101(30)=-spak2k4*abb101(39)
      abb101(39)=abb101(84)*abb101(76)
      abb101(30)=abb101(30)+abb101(39)
      abb101(39)=-abb101(30)*abb101(56)
      abb101(54)=-abb101(90)*abb101(34)
      abb101(37)=abb101(86)*abb101(37)
      abb101(37)=abb101(37)+abb101(54)+abb101(39)
      abb101(37)=8.0_ki*abb101(37)
      abb101(39)=16.0_ki*abb101(30)
      abb101(54)=-abb101(89)*abb101(40)
      abb101(56)=-es34*abb101(71)
      abb101(54)=abb101(56)+abb101(54)
      abb101(54)=8.0_ki*abb101(54)
      abb101(18)=-abb101(18)*abb101(20)*abb101(40)
      abb101(20)=abb101(66)*abb101(36)
      abb101(36)=abb101(40)*abb101(53)
      abb101(40)=-spbl6k2*abb101(36)
      abb101(20)=abb101(20)+abb101(40)
      abb101(20)=8.0_ki*abb101(20)
      abb101(36)=spbk7k2*abb101(36)
      abb101(34)=-abb101(66)*abb101(34)
      abb101(34)=abb101(36)+abb101(34)
      abb101(34)=8.0_ki*abb101(34)
      abb101(36)=abb101(57)*abb101(22)
      abb101(32)=spak2l6*abb101(32)*abb101(22)
      abb101(22)=-abb101(86)*abb101(22)
      abb101(40)=8.0_ki*abb101(63)
      abb101(16)=-8.0_ki*abb101(16)
      abb101(30)=-8.0_ki*abb101(30)
      R2d101=0.0_ki
      rat2 = rat2 + R2d101
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='101' value='", &
          & R2d101, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd101h3
