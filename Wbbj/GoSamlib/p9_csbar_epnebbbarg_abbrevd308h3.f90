module     p9_csbar_epnebbbarg_abbrevd308h3
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(98), public :: abb308
   complex(ki), public :: R2d308
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
      abb308(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb308(2)=1.0_ki/(es34+es567-es12-es234)
      abb308(3)=NC**(-1)
      abb308(4)=spak2l5**(-1)
      abb308(5)=spak2l6**(-1)
      abb308(6)=spbl6k2**(-1)
      abb308(7)=sqrt(mB**2)
      abb308(8)=TR*gW
      abb308(8)=abb308(8)**2*i_*CVSC*abb308(2)*abb308(1)
      abb308(9)=abb308(8)*c3
      abb308(10)=abb308(9)*NC
      abb308(8)=c1*abb308(8)*abb308(3)
      abb308(8)=abb308(10)+abb308(8)
      abb308(10)=spak2e7*spbk3k1
      abb308(11)=abb308(10)*abb308(8)
      abb308(12)=abb308(10)*abb308(3)
      abb308(13)=abb308(12)*abb308(9)
      abb308(14)=abb308(11)-abb308(13)
      abb308(14)=abb308(14)*abb308(7)
      abb308(10)=abb308(10)*mB
      abb308(15)=abb308(10)*abb308(8)
      abb308(16)=mB*abb308(13)
      abb308(15)=-abb308(14)-abb308(16)+abb308(15)
      abb308(15)=spbe7l6*abb308(15)
      abb308(17)=abb308(15)*spak1k4
      abb308(18)=mB**3
      abb308(19)=abb308(18)*abb308(5)**2
      abb308(20)=abb308(9)*spak2k7
      abb308(21)=abb308(12)*abb308(19)*abb308(20)
      abb308(22)=abb308(19)*abb308(11)
      abb308(23)=spak2k7*abb308(22)
      abb308(21)=abb308(23)-abb308(21)
      abb308(21)=abb308(21)*abb308(6)
      abb308(23)=2.0_ki*spbk7e7
      abb308(24)=abb308(23)*spak1k4
      abb308(25)=abb308(21)*abb308(24)
      abb308(25)=abb308(25)+abb308(17)
      abb308(25)=abb308(25)*spbl5k1
      abb308(15)=abb308(15)*spak3k4
      abb308(26)=abb308(23)*spak3k4
      abb308(27)=abb308(21)*abb308(26)
      abb308(27)=abb308(27)+abb308(15)
      abb308(27)=abb308(27)*spbl5k3
      abb308(25)=abb308(25)-abb308(27)
      abb308(27)=es71+es12-es712
      abb308(25)=-abb308(25)*abb308(27)
      abb308(28)=abb308(4)*abb308(5)
      abb308(29)=abb308(28)*abb308(18)
      abb308(30)=abb308(29)*abb308(11)
      abb308(31)=abb308(9)*abb308(4)
      abb308(32)=abb308(31)*abb308(5)
      abb308(12)=abb308(12)*abb308(32)
      abb308(33)=abb308(12)*abb308(18)
      abb308(30)=abb308(30)-abb308(33)
      abb308(33)=abb308(30)*abb308(6)
      abb308(34)=-spbk3k2*abb308(26)
      abb308(35)=-spbk2k1*abb308(24)
      abb308(34)=abb308(35)+abb308(34)
      abb308(34)=spbk7l6*abb308(34)*abb308(33)
      abb308(35)=mB**2
      abb308(28)=abb308(35)*abb308(28)
      abb308(36)=abb308(28)*abb308(11)
      abb308(37)=abb308(12)*abb308(35)
      abb308(36)=abb308(36)-abb308(37)
      abb308(37)=abb308(36)*abb308(7)
      abb308(38)=spbk7k3*spak3k4
      abb308(39)=spbk7k1*spak1k4
      abb308(38)=abb308(38)-abb308(39)
      abb308(39)=abb308(38)*abb308(23)
      abb308(40)=abb308(37)*abb308(39)
      abb308(34)=abb308(40)+abb308(34)
      abb308(34)=abb308(34)*spak2k7**2
      abb308(40)=spak2k7*abb308(8)
      abb308(10)=abb308(10)*abb308(4)
      abb308(41)=abb308(10)*abb308(40)
      abb308(42)=abb308(16)*abb308(4)
      abb308(43)=abb308(42)*spak2k7
      abb308(41)=abb308(41)-abb308(43)
      abb308(43)=abb308(24)*spbl6k1
      abb308(44)=abb308(26)*spbl6k3
      abb308(43)=abb308(43)-abb308(44)
      abb308(43)=abb308(43)*abb308(41)
      abb308(44)=spal6k7*spbk7l6
      abb308(45)=-abb308(44)*abb308(43)
      abb308(46)=abb308(5)*mB
      abb308(47)=abb308(46)*abb308(11)
      abb308(16)=abb308(16)*abb308(5)
      abb308(16)=abb308(47)-abb308(16)
      abb308(47)=-spak2k7*abb308(16)
      abb308(48)=abb308(47)*spbk7l6
      abb308(49)=spbl5k3*spak3k4
      abb308(50)=spbl5k1*spak1k4
      abb308(49)=abb308(49)-abb308(50)
      abb308(50)=abb308(49)*spbk7e7
      abb308(51)=-spal6k7*abb308(48)*abb308(50)
      abb308(25)=2.0_ki*abb308(51)+abb308(25)+abb308(45)+abb308(34)
      abb308(25)=2.0_ki*abb308(25)
      abb308(34)=spak2k7*spbk3k1
      abb308(45)=abb308(34)*abb308(8)
      abb308(20)=abb308(20)*abb308(3)
      abb308(51)=abb308(20)*spbk3k1
      abb308(51)=abb308(51)-abb308(45)
      abb308(52)=-abb308(51)*spbk7l6*abb308(7)*abb308(49)
      abb308(53)=abb308(4)*mB
      abb308(54)=abb308(8)*abb308(53)
      abb308(55)=abb308(3)*mB
      abb308(31)=abb308(31)*abb308(55)
      abb308(54)=abb308(54)-abb308(31)
      abb308(56)=abb308(34)*abb308(54)
      abb308(57)=abb308(56)*spbk7l6
      abb308(58)=spbl6k3*spak3k4
      abb308(59)=spbl6k1*spak1k4
      abb308(58)=abb308(58)-abb308(59)
      abb308(59)=abb308(58)*spak2l6
      abb308(60)=abb308(57)*abb308(59)
      abb308(52)=abb308(60)+abb308(52)
      abb308(52)=8.0_ki*abb308(52)
      abb308(60)=-abb308(47)*abb308(26)
      abb308(60)=-abb308(15)+abb308(60)
      abb308(60)=spbl5k3*abb308(60)
      abb308(61)=abb308(47)*abb308(24)
      abb308(61)=abb308(17)+abb308(61)
      abb308(61)=spbl5k1*abb308(61)
      abb308(43)=abb308(60)+abb308(61)-abb308(43)
      abb308(43)=4.0_ki*abb308(43)
      abb308(60)=abb308(58)*abb308(41)*spbk7e7
      abb308(61)=-4.0_ki*abb308(60)
      abb308(62)=spbe7l6*spak2k4
      abb308(63)=abb308(30)*abb308(62)
      abb308(13)=abb308(19)*abb308(13)
      abb308(13)=abb308(22)-abb308(13)
      abb308(22)=spbe7l5*spak2k4
      abb308(64)=abb308(13)*abb308(22)
      abb308(63)=abb308(63)-abb308(64)
      abb308(64)=abb308(27)*abb308(6)
      abb308(63)=abb308(63)*abb308(64)
      abb308(65)=spbk7l6*spbe7l5
      abb308(66)=abb308(47)*abb308(65)
      abb308(67)=abb308(47)*spbe7l6
      abb308(68)=abb308(67)*spbk7l5
      abb308(66)=abb308(66)-abb308(68)
      abb308(68)=abb308(66)*spak4l6
      abb308(69)=spal6e7*abb308(57)*abb308(62)
      abb308(70)=abb308(65)*abb308(14)
      abb308(71)=abb308(70)*spak4k7
      abb308(11)=-abb308(11)*abb308(28)*spak2k7
      abb308(72)=abb308(35)*spak2k7
      abb308(12)=abb308(72)*abb308(12)
      abb308(11)=abb308(12)+abb308(11)
      abb308(12)=abb308(7)*spak2k4
      abb308(73)=abb308(12)*abb308(23)
      abb308(74)=abb308(73)*abb308(11)
      abb308(10)=abb308(10)*abb308(8)
      abb308(10)=-abb308(42)+abb308(10)
      abb308(42)=abb308(10)*abb308(62)
      abb308(75)=abb308(44)*abb308(42)
      abb308(76)=abb308(7)*spbe7l6
      abb308(51)=abb308(51)*abb308(76)
      abb308(77)=spak4e7*spbk7l5
      abb308(78)=abb308(51)*abb308(77)
      abb308(63)=abb308(74)+abb308(71)+abb308(78)-abb308(63)-abb308(69)+abb308(&
      &75)+abb308(68)
      abb308(63)=8.0_ki*abb308(63)
      abb308(45)=abb308(46)*abb308(45)
      abb308(55)=abb308(55)*abb308(9)*abb308(5)
      abb308(34)=abb308(55)*abb308(34)
      abb308(34)=-abb308(34)+abb308(45)
      abb308(45)=abb308(34)*spbk7l5
      abb308(68)=abb308(45)+abb308(57)
      abb308(69)=spak2k4*abb308(68)
      abb308(71)=abb308(9)*abb308(3)
      abb308(71)=abb308(8)-abb308(71)
      abb308(74)=-spbk3k1*abb308(71)
      abb308(75)=spbl6l5*abb308(74)*abb308(12)
      abb308(69)=abb308(69)+abb308(75)
      abb308(69)=16.0_ki*abb308(69)
      abb308(75)=abb308(22)*abb308(16)
      abb308(75)=abb308(75)+abb308(42)
      abb308(78)=16.0_ki*abb308(75)
      abb308(42)=8.0_ki*abb308(42)
      abb308(79)=-2.0_ki*abb308(38)
      abb308(80)=spbe7l6*abb308(79)
      abb308(81)=spbe7k3*spak3k4
      abb308(82)=spbe7k1*spak1k4
      abb308(81)=abb308(81)-abb308(82)
      abb308(82)=2.0_ki*spbk7l6
      abb308(83)=abb308(82)*abb308(81)
      abb308(80)=abb308(83)+abb308(80)
      abb308(83)=-spak2k7*abb308(33)
      abb308(80)=abb308(83)*abb308(80)
      abb308(21)=abb308(21)*spbk7e7
      abb308(84)=-spak3k4*abb308(21)
      abb308(84)=abb308(15)+abb308(84)
      abb308(84)=spbl5k3*abb308(84)
      abb308(21)=spak1k4*abb308(21)
      abb308(21)=-abb308(17)+abb308(21)
      abb308(21)=spbl5k1*abb308(21)
      abb308(21)=abb308(84)+abb308(21)+abb308(80)
      abb308(21)=4.0_ki*abb308(21)
      abb308(80)=abb308(13)*abb308(6)
      abb308(84)=abb308(80)*abb308(22)
      abb308(84)=8.0_ki*abb308(84)
      abb308(47)=abb308(47)*spbk7e7
      abb308(85)=spak3k4*abb308(47)
      abb308(15)=abb308(15)+abb308(85)
      abb308(15)=spbl5k3*abb308(15)
      abb308(47)=-spak1k4*abb308(47)
      abb308(17)=-abb308(17)+abb308(47)
      abb308(17)=spbl5k1*abb308(17)
      abb308(47)=spbl6l5*abb308(81)*abb308(14)
      abb308(15)=abb308(47)+abb308(15)+abb308(17)-abb308(60)
      abb308(15)=2.0_ki*abb308(15)
      abb308(17)=4.0_ki*abb308(75)
      abb308(47)=spbk7e7*spak2k4
      abb308(60)=8.0_ki*abb308(47)
      abb308(75)=abb308(60)*abb308(56)
      abb308(85)=4.0_ki*abb308(51)*abb308(38)
      abb308(11)=abb308(11)*abb308(7)
      abb308(79)=abb308(11)*abb308(79)
      abb308(49)=-abb308(16)*abb308(49)
      abb308(86)=abb308(49)*abb308(27)
      abb308(79)=abb308(86)+abb308(79)
      abb308(79)=2.0_ki*abb308(79)
      abb308(86)=4.0_ki*abb308(49)
      abb308(45)=2.0_ki*abb308(45)
      abb308(87)=abb308(45)*spak4e7
      abb308(36)=abb308(36)*abb308(12)
      abb308(36)=abb308(87)-abb308(36)
      abb308(36)=4.0_ki*abb308(36)
      abb308(87)=2.0_ki*abb308(49)
      abb308(88)=-abb308(56)*abb308(38)
      abb308(89)=4.0_ki*abb308(88)
      abb308(34)=abb308(38)*abb308(34)
      abb308(90)=-4.0_ki*abb308(34)
      abb308(50)=-abb308(14)*abb308(50)
      abb308(39)=-abb308(41)*abb308(39)
      abb308(39)=abb308(39)+abb308(50)
      abb308(39)=2.0_ki*abb308(39)
      abb308(41)=abb308(60)*abb308(10)
      abb308(50)=4.0_ki*abb308(81)
      abb308(60)=abb308(14)*spbk7l6*abb308(50)
      abb308(38)=-abb308(67)*abb308(38)
      abb308(48)=abb308(48)*abb308(81)
      abb308(38)=abb308(48)+abb308(38)
      abb308(38)=4.0_ki*abb308(38)
      abb308(14)=abb308(14)*spbe7l5
      abb308(48)=4.0_ki*abb308(14)
      abb308(67)=spak2e7*abb308(8)
      abb308(29)=abb308(29)*abb308(67)
      abb308(91)=abb308(3)*spak2e7
      abb308(32)=abb308(91)*abb308(32)
      abb308(18)=abb308(32)*abb308(18)
      abb308(18)=abb308(29)-abb308(18)
      abb308(18)=abb308(18)*abb308(62)
      abb308(9)=abb308(91)*abb308(9)
      abb308(9)=abb308(67)-abb308(9)
      abb308(19)=abb308(22)*abb308(19)*abb308(9)
      abb308(18)=abb308(18)-abb308(19)
      abb308(18)=abb308(18)*abb308(64)
      abb308(29)=abb308(46)*abb308(40)
      abb308(91)=-spak2e7*abb308(29)
      abb308(92)=abb308(55)*spak2e7
      abb308(93)=abb308(92)*spak2k7
      abb308(91)=abb308(93)+abb308(91)
      abb308(93)=spbk7l5*spbe7l6
      abb308(93)=abb308(93)-abb308(65)
      abb308(91)=spak4l6*abb308(93)*abb308(91)
      abb308(93)=abb308(40)*abb308(28)*spak2e7
      abb308(72)=abb308(32)*abb308(72)
      abb308(72)=abb308(72)-abb308(93)
      abb308(72)=abb308(72)*abb308(73)
      abb308(20)=abb308(40)-abb308(20)
      abb308(20)=abb308(20)*abb308(77)*abb308(76)
      abb308(9)=-abb308(9)*abb308(7)
      abb308(65)=abb308(9)*abb308(65)*spak4k7
      abb308(18)=abb308(91)-abb308(72)+abb308(20)+abb308(65)+abb308(18)
      abb308(20)=spbk4k1*abb308(18)
      abb308(13)=abb308(13)*spbe7l5
      abb308(30)=abb308(30)*spbe7l6
      abb308(13)=abb308(13)-abb308(30)
      abb308(13)=abb308(13)*abb308(64)
      abb308(23)=abb308(11)*abb308(23)
      abb308(13)=abb308(23)+abb308(13)
      abb308(23)=-spak2k3*abb308(13)
      abb308(30)=abb308(10)*spbe7l6
      abb308(64)=abb308(30)*spak2k3
      abb308(65)=-abb308(53)*abb308(67)
      abb308(72)=abb308(31)*spak2e7
      abb308(65)=abb308(72)+abb308(65)
      abb308(72)=abb308(65)*abb308(62)
      abb308(73)=abb308(72)*spbk4k1
      abb308(64)=abb308(64)-abb308(73)
      abb308(73)=-abb308(64)*abb308(44)
      abb308(40)=abb308(53)*abb308(40)
      abb308(76)=abb308(31)*spak2k7
      abb308(40)=-abb308(76)+abb308(40)
      abb308(76)=abb308(40)*spbk7l6
      abb308(62)=abb308(76)*abb308(62)
      abb308(91)=spbk4k1*abb308(62)
      abb308(57)=abb308(57)*spbe7l6
      abb308(93)=spak2k3*abb308(57)
      abb308(91)=abb308(91)+abb308(93)
      abb308(91)=spal6e7*abb308(91)
      abb308(93)=-spak3l6*abb308(66)
      abb308(94)=-spak3k7*abb308(70)
      abb308(51)=abb308(51)*spbk7l5
      abb308(95)=-spak3e7*abb308(51)
      abb308(20)=abb308(94)+abb308(95)+abb308(93)+abb308(91)+abb308(73)+abb308(&
      &23)+abb308(20)
      abb308(20)=4.0_ki*abb308(20)
      abb308(23)=abb308(55)*spak2k7
      abb308(23)=abb308(23)-abb308(29)
      abb308(29)=abb308(23)*spbk7l5
      abb308(29)=abb308(29)-abb308(76)
      abb308(55)=spbk4k1*spak2k4
      abb308(73)=-abb308(55)*abb308(29)
      abb308(76)=spak2k3*abb308(68)
      abb308(71)=abb308(71)*abb308(12)
      abb308(91)=-spbk4k1*abb308(71)
      abb308(74)=abb308(74)*abb308(7)
      abb308(93)=spak2k3*abb308(74)
      abb308(91)=abb308(91)+abb308(93)
      abb308(91)=spbl6l5*abb308(91)
      abb308(73)=abb308(91)+abb308(76)+abb308(73)
      abb308(73)=8.0_ki*abb308(73)
      abb308(46)=abb308(46)*abb308(67)
      abb308(46)=abb308(46)-abb308(92)
      abb308(22)=abb308(46)*abb308(22)
      abb308(22)=abb308(22)-abb308(72)
      abb308(76)=abb308(22)*spbk4k1
      abb308(91)=abb308(16)*spbe7l5
      abb308(92)=abb308(30)+abb308(91)
      abb308(93)=abb308(92)*spak2k3
      abb308(76)=abb308(76)+abb308(93)
      abb308(93)=-8.0_ki*abb308(76)
      abb308(64)=4.0_ki*abb308(64)
      abb308(19)=abb308(19)*abb308(6)
      abb308(94)=spbk4k1*abb308(19)
      abb308(95)=abb308(80)*spbe7l5
      abb308(96)=spak2k3*abb308(95)
      abb308(94)=abb308(94)+abb308(96)
      abb308(94)=4.0_ki*abb308(94)
      abb308(76)=2.0_ki*abb308(76)
      abb308(40)=abb308(40)*abb308(47)
      abb308(96)=-spbk4k1*abb308(40)
      abb308(97)=abb308(56)*spbk7e7
      abb308(98)=-spak2k3*abb308(97)
      abb308(96)=abb308(96)+abb308(98)
      abb308(96)=4.0_ki*abb308(96)
      abb308(28)=abb308(67)*abb308(28)
      abb308(32)=abb308(32)*abb308(35)
      abb308(28)=abb308(32)-abb308(28)
      abb308(12)=abb308(28)*abb308(12)
      abb308(23)=abb308(23)*abb308(77)
      abb308(12)=abb308(12)-2.0_ki*abb308(23)
      abb308(23)=spbk4k1*abb308(12)
      abb308(28)=-spak2k3*abb308(37)
      abb308(32)=spak3e7*abb308(45)
      abb308(23)=abb308(32)+abb308(28)+abb308(23)
      abb308(23)=2.0_ki*abb308(23)
      abb308(28)=abb308(65)*abb308(47)
      abb308(32)=spbk4k1*abb308(28)
      abb308(35)=abb308(10)*spbk7e7
      abb308(47)=-spak2k3*abb308(35)
      abb308(32)=abb308(32)+abb308(47)
      abb308(32)=4.0_ki*abb308(32)
      abb308(9)=abb308(9)*spbe7l5
      abb308(9)=2.0_ki*abb308(9)
      abb308(47)=-spbk4k1*abb308(9)
      abb308(18)=-spbk4k3*abb308(18)
      abb308(13)=-spak1k2*abb308(13)
      abb308(30)=abb308(30)*spak1k2
      abb308(65)=abb308(72)*spbk4k3
      abb308(30)=abb308(30)+abb308(65)
      abb308(44)=-abb308(30)*abb308(44)
      abb308(62)=-spbk4k3*abb308(62)
      abb308(57)=spak1k2*abb308(57)
      abb308(57)=abb308(62)+abb308(57)
      abb308(57)=spal6e7*abb308(57)
      abb308(62)=spak1l6*abb308(66)
      abb308(65)=spak1k7*abb308(70)
      abb308(51)=spak1e7*abb308(51)
      abb308(13)=abb308(65)+abb308(51)+abb308(62)+abb308(57)+abb308(44)+abb308(&
      &13)+abb308(18)
      abb308(13)=4.0_ki*abb308(13)
      abb308(18)=spbk4k3*spak2k4
      abb308(29)=abb308(18)*abb308(29)
      abb308(44)=spak1k2*abb308(68)
      abb308(51)=spbk4k3*abb308(71)
      abb308(57)=spak1k2*abb308(74)
      abb308(51)=abb308(51)+abb308(57)
      abb308(51)=spbl6l5*abb308(51)
      abb308(29)=abb308(51)+abb308(44)+abb308(29)
      abb308(29)=8.0_ki*abb308(29)
      abb308(22)=abb308(22)*spbk4k3
      abb308(44)=abb308(92)*spak1k2
      abb308(22)=abb308(22)-abb308(44)
      abb308(44)=8.0_ki*abb308(22)
      abb308(30)=4.0_ki*abb308(30)
      abb308(19)=-spbk4k3*abb308(19)
      abb308(51)=spak1k2*abb308(95)
      abb308(19)=abb308(19)+abb308(51)
      abb308(19)=4.0_ki*abb308(19)
      abb308(22)=-2.0_ki*abb308(22)
      abb308(40)=spbk4k3*abb308(40)
      abb308(51)=-spak1k2*abb308(97)
      abb308(40)=abb308(40)+abb308(51)
      abb308(40)=4.0_ki*abb308(40)
      abb308(12)=-spbk4k3*abb308(12)
      abb308(37)=-spak1k2*abb308(37)
      abb308(45)=-spak1e7*abb308(45)
      abb308(12)=abb308(45)+abb308(37)+abb308(12)
      abb308(12)=2.0_ki*abb308(12)
      abb308(28)=-spbk4k3*abb308(28)
      abb308(35)=-spak1k2*abb308(35)
      abb308(28)=abb308(28)+abb308(35)
      abb308(28)=4.0_ki*abb308(28)
      abb308(9)=spbk4k3*abb308(9)
      abb308(14)=2.0_ki*abb308(14)
      abb308(35)=abb308(11)*abb308(50)
      abb308(37)=-8.0_ki*abb308(56)*abb308(58)
      abb308(45)=abb308(91)*spak4k7
      abb308(45)=8.0_ki*abb308(45)
      abb308(10)=-abb308(10)*abb308(81)
      abb308(51)=4.0_ki*abb308(10)
      abb308(16)=-abb308(16)*abb308(81)
      abb308(56)=-4.0_ki*abb308(16)
      abb308(46)=abb308(46)*spbe7l5
      abb308(57)=abb308(46)*spak4k7
      abb308(62)=-spbk4k1*abb308(57)
      abb308(65)=-spak3k7*abb308(91)
      abb308(62)=abb308(62)+abb308(65)
      abb308(62)=4.0_ki*abb308(62)
      abb308(57)=spbk4k3*abb308(57)
      abb308(65)=spak1k7*abb308(91)
      abb308(57)=abb308(57)+abb308(65)
      abb308(57)=4.0_ki*abb308(57)
      abb308(49)=spbk7e7*abb308(49)
      abb308(65)=abb308(82)*abb308(10)
      abb308(49)=abb308(65)+abb308(49)
      abb308(49)=spal6k7*abb308(49)
      abb308(65)=-spbk3k2*spak3k4
      abb308(66)=-spbk2k1*spak1k4
      abb308(65)=abb308(66)+abb308(65)
      abb308(65)=abb308(83)*spbk7e7*abb308(65)
      abb308(66)=-spal6e7*spbe7l6*abb308(88)
      abb308(49)=abb308(49)+2.0_ki*abb308(66)+abb308(65)
      abb308(49)=2.0_ki*abb308(49)
      abb308(8)=-abb308(8)*abb308(53)*spbk3k1
      abb308(31)=abb308(31)*spbk3k1
      abb308(8)=abb308(31)+abb308(8)
      abb308(31)=abb308(8)*abb308(59)
      abb308(31)=-2.0_ki*abb308(88)+abb308(31)
      abb308(31)=8.0_ki*abb308(31)
      abb308(53)=8.0_ki*abb308(10)
      abb308(59)=abb308(91)*spak4l6
      abb308(59)=4.0_ki*abb308(59)
      abb308(65)=abb308(8)*spak2k4
      abb308(65)=16.0_ki*abb308(65)
      abb308(33)=abb308(50)*abb308(33)
      abb308(10)=-2.0_ki*abb308(10)
      abb308(66)=2.0_ki*abb308(16)
      abb308(46)=abb308(46)*spak4l6
      abb308(67)=-spbk4k1*abb308(46)
      abb308(68)=-spak3l6*abb308(91)
      abb308(67)=abb308(67)+abb308(68)
      abb308(67)=2.0_ki*abb308(67)
      abb308(55)=abb308(54)*abb308(55)
      abb308(68)=-spak2k3*abb308(8)
      abb308(55)=abb308(55)+abb308(68)
      abb308(55)=8.0_ki*abb308(55)
      abb308(46)=spbk4k3*abb308(46)
      abb308(68)=spak1l6*abb308(91)
      abb308(46)=abb308(46)+abb308(68)
      abb308(46)=2.0_ki*abb308(46)
      abb308(18)=-abb308(54)*abb308(18)
      abb308(8)=-spak1k2*abb308(8)
      abb308(8)=abb308(18)+abb308(8)
      abb308(8)=8.0_ki*abb308(8)
      abb308(18)=-4.0_ki*abb308(81)*abb308(27)*abb308(80)
      abb308(27)=abb308(74)*abb308(58)
      abb308(27)=abb308(27)+abb308(34)
      abb308(27)=8.0_ki*abb308(27)
      abb308(16)=8.0_ki*abb308(16)
      abb308(34)=abb308(80)*abb308(50)
      abb308(26)=abb308(26)*abb308(11)
      abb308(11)=-abb308(24)*abb308(11)
      R2d308=0.0_ki
      rat2 = rat2 + R2d308
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='308' value='", &
          & R2d308, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd308h3
