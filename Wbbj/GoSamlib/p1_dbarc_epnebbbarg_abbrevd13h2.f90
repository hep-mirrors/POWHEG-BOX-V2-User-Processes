module     p1_dbarc_epnebbbarg_abbrevd13h2
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(95), public :: abb13
   complex(ki), public :: R2d13
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
      abb13(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb13(2)=NC**(-1)
      abb13(3)=es56**(-1)
      abb13(4)=es71**(-1)
      abb13(5)=spbl5k2**(-1)
      abb13(6)=spak2l6**(-1)
      abb13(7)=spak2l5**(-1)
      abb13(8)=spbl6k2**(-1)
      abb13(9)=c3*abb13(2)
      abb13(10)=c4*abb13(2)**2
      abb13(9)=abb13(9)-abb13(10)
      abb13(10)=TR*gW
      abb13(11)=abb13(9)*abb13(10)**2
      abb13(12)=CVDC*i_*spak1e7*abb13(3)*abb13(1)
      abb13(13)=abb13(12)*abb13(4)
      abb13(14)=abb13(13)*abb13(11)
      abb13(15)=abb13(14)*spbl6k2
      abb13(16)=spak1k4*spbe7k1
      abb13(17)=abb13(15)*abb13(16)
      abb13(18)=abb13(13)*spbk7e7
      abb13(19)=-abb13(18)*abb13(11)
      abb13(20)=abb13(19)*spbl6k2
      abb13(21)=spak4k7*abb13(20)
      abb13(21)=abb13(21)-abb13(17)
      abb13(22)=es12*spbl6k3
      abb13(21)=abb13(21)*abb13(22)
      abb13(23)=spbk2k1*spbl6k3
      abb13(24)=spak2k7*spak1k4
      abb13(25)=abb13(23)*abb13(24)
      abb13(26)=-abb13(20)*abb13(25)
      abb13(12)=abb13(12)*spbk7e7
      abb13(11)=abb13(12)*abb13(11)
      abb13(27)=spbl6k3*spak4k7
      abb13(28)=abb13(11)*abb13(27)
      abb13(29)=-spbl6k2*abb13(28)
      abb13(30)=abb13(14)*spbe7k1
      abb13(31)=abb13(30)*spbl6k2
      abb13(32)=abb13(31)*spak1k2
      abb13(33)=abb13(27)*spbk7k2
      abb13(34)=abb13(33)*abb13(32)
      abb13(21)=abb13(26)+abb13(34)+abb13(29)+abb13(21)
      abb13(21)=spal5l6*abb13(21)
      abb13(10)=abb13(10)*mB
      abb13(10)=abb13(10)**2
      abb13(13)=-abb13(10)*abb13(9)*abb13(13)
      abb13(26)=spbe7k1*spbk3k2
      abb13(29)=abb13(26)*abb13(13)
      abb13(34)=abb13(29)*abb13(6)
      abb13(35)=abb13(14)*abb13(26)
      abb13(36)=spbl6k2*abb13(35)
      abb13(37)=abb13(36)+abb13(34)
      abb13(38)=abb13(37)*spak1k4
      abb13(39)=spak4k7*spbk3k2
      abb13(40)=abb13(20)*abb13(39)
      abb13(9)=abb13(9)*abb13(10)
      abb13(10)=abb13(18)*abb13(9)
      abb13(18)=abb13(10)*abb13(6)
      abb13(41)=abb13(18)*abb13(39)
      abb13(40)=abb13(40)+abb13(41)
      abb13(42)=abb13(38)-abb13(40)
      abb13(42)=spak2l5*abb13(42)
      abb13(43)=abb13(29)*spak1k4
      abb13(44)=abb13(43)*abb13(5)
      abb13(45)=abb13(44)*spbl6k2
      abb13(46)=abb13(10)*abb13(5)
      abb13(47)=abb13(46)*spbl6k2
      abb13(48)=abb13(47)*abb13(39)
      abb13(42)=abb13(42)-abb13(48)+abb13(45)
      abb13(42)=es12*abb13(42)
      abb13(49)=abb13(29)*spak1k2
      abb13(50)=abb13(49)*abb13(5)
      abb13(51)=abb13(50)*spbl6k2
      abb13(52)=-spak4k7*abb13(51)
      abb13(53)=abb13(34)*spak4k7
      abb13(54)=abb13(36)*spak4k7
      abb13(54)=abb13(54)+abb13(53)
      abb13(54)=abb13(54)*spak2l5
      abb13(55)=-spak1k2*abb13(54)
      abb13(52)=abb13(52)+abb13(55)
      abb13(52)=spbk7k2*abb13(52)
      abb13(40)=abb13(40)*spak2l5
      abb13(55)=abb13(20)*spal5l6
      abb13(56)=abb13(55)*abb13(27)
      abb13(40)=-abb13(48)+abb13(56)-abb13(40)
      abb13(48)=-es712*abb13(40)
      abb13(9)=abb13(12)*abb13(9)
      abb13(12)=abb13(9)*abb13(39)
      abb13(56)=-abb13(6)*abb13(12)
      abb13(11)=abb13(11)*abb13(39)
      abb13(57)=spbl6k2*abb13(11)
      abb13(56)=abb13(56)+abb13(57)
      abb13(56)=spak2l5*abb13(56)
      abb13(57)=spbl6k2*spbk3k2
      abb13(58)=abb13(19)*abb13(57)
      abb13(59)=abb13(18)*spbk3k2
      abb13(60)=abb13(58)+abb13(59)
      abb13(61)=abb13(60)*spak2l5
      abb13(62)=abb13(46)*abb13(57)
      abb13(61)=abb13(61)+abb13(62)
      abb13(24)=abb13(24)*spbk2k1
      abb13(63)=abb13(61)*abb13(24)
      abb13(64)=-spbl6k2*abb13(5)*abb13(12)
      abb13(21)=abb13(48)+abb13(21)+abb13(63)+abb13(52)+abb13(42)+abb13(64)+abb&
      &13(56)
      abb13(21)=4.0_ki*abb13(21)
      abb13(40)=-8.0_ki*abb13(40)
      abb13(26)=abb13(26)*spak1k2
      abb13(15)=abb13(15)*abb13(26)
      abb13(42)=abb13(19)*spak2k7
      abb13(48)=abb13(42)*abb13(57)
      abb13(15)=abb13(15)+abb13(48)
      abb13(48)=8.0_ki*spak4l5
      abb13(52)=abb13(15)*abb13(48)
      abb13(56)=abb13(19)*abb13(39)
      abb13(63)=abb13(46)*abb13(39)
      abb13(64)=-abb13(7)*abb13(63)
      abb13(64)=-abb13(56)+abb13(64)
      abb13(64)=spal5k7*abb13(64)
      abb13(65)=abb13(29)*abb13(5)
      abb13(66)=abb13(65)*abb13(7)
      abb13(67)=-abb13(35)-abb13(66)
      abb13(67)=spak1l5*spak4k7*abb13(67)
      abb13(53)=-spak1l5*abb13(53)
      abb13(68)=-spal5k7*abb13(41)
      abb13(53)=abb13(68)+abb13(53)
      abb13(53)=abb13(8)*abb13(53)
      abb13(53)=abb13(53)+abb13(64)+abb13(67)
      abb13(53)=spbk7l6*abb13(53)
      abb13(64)=abb13(46)*abb13(7)
      abb13(67)=abb13(19)+abb13(64)
      abb13(68)=spak1k4*spbk3k2
      abb13(67)=spal5k7*abb13(68)*abb13(67)
      abb13(69)=abb13(7)*abb13(44)
      abb13(70)=abb13(35)*spak1k4
      abb13(69)=abb13(70)+abb13(69)
      abb13(69)=spak1l5*abb13(69)
      abb13(71)=spak1l5*abb13(34)
      abb13(72)=spal5k7*abb13(59)
      abb13(71)=abb13(72)+abb13(71)
      abb13(71)=abb13(8)*spak1k4*abb13(71)
      abb13(67)=abb13(71)+abb13(67)+abb13(69)
      abb13(67)=spbl6k1*abb13(67)
      abb13(69)=abb13(6)*abb13(5)
      abb13(71)=abb13(13)*abb13(69)
      abb13(72)=abb13(71)*spbe7k1
      abb13(73)=abb13(72)*spak1l5
      abb13(74)=spak4k7*abb13(73)
      abb13(10)=abb13(10)*abb13(69)
      abb13(75)=abb13(10)*spak4k7
      abb13(76)=spal5k7*abb13(75)
      abb13(74)=abb13(76)+abb13(74)
      abb13(74)=spbk7k2*abb13(74)
      abb13(76)=abb13(71)*abb13(16)
      abb13(77)=-spak1l5*abb13(76)
      abb13(78)=abb13(10)*spal5k7
      abb13(79)=-spak1k4*abb13(78)
      abb13(77)=abb13(79)+abb13(77)
      abb13(77)=spbk2k1*abb13(77)
      abb13(74)=abb13(77)+abb13(74)
      abb13(74)=spbl5k3*abb13(74)
      abb13(77)=abb13(60)*spak2k7
      abb13(79)=abb13(37)*spak1k2
      abb13(77)=abb13(77)+abb13(79)
      abb13(79)=spak4l5*abb13(77)
      abb13(80)=abb13(33)*abb13(72)
      abb13(81)=-abb13(76)*abb13(23)
      abb13(81)=abb13(80)+abb13(81)
      abb13(81)=spak1l6*abb13(81)
      abb13(82)=abb13(62)*spak2k7
      abb13(51)=abb13(82)+abb13(51)
      abb13(82)=abb13(7)*spak4l5
      abb13(83)=abb13(51)*abb13(82)
      abb13(84)=abb13(10)*spal6k7
      abb13(23)=-spak1k4*abb13(23)
      abb13(23)=abb13(33)+abb13(23)
      abb13(23)=abb13(23)*abb13(84)
      abb13(23)=abb13(81)+abb13(23)+abb13(67)+abb13(53)+abb13(79)+abb13(83)+abb&
      &13(74)
      abb13(23)=8.0_ki*abb13(23)
      abb13(33)=abb13(10)*abb13(39)
      abb13(53)=-16.0_ki*abb13(33)
      abb13(43)=abb13(43)*abb13(69)
      abb13(67)=abb13(43)+abb13(33)
      abb13(74)=16.0_ki*abb13(67)
      abb13(38)=-spak2l5*abb13(38)
      abb13(17)=spal5l6*spbl6k3*abb13(17)
      abb13(17)=abb13(17)-abb13(45)+abb13(38)
      abb13(17)=8.0_ki*abb13(17)
      abb13(38)=16.0_ki*abb13(43)
      abb13(45)=abb13(59)-abb13(58)
      abb13(45)=spak2k7*abb13(45)
      abb13(36)=abb13(34)-abb13(36)
      abb13(36)=spak1k2*abb13(36)
      abb13(58)=abb13(19)*spal5k7
      abb13(59)=-spbk3k2*abb13(58)
      abb13(79)=-spak1l5*abb13(35)
      abb13(59)=abb13(59)+abb13(79)
      abb13(59)=spbl6l5*abb13(59)
      abb13(36)=abb13(59)+abb13(45)+abb13(36)
      abb13(36)=spak4l5*abb13(36)
      abb13(45)=abb13(30)*spak1l5
      abb13(59)=abb13(45)*abb13(27)
      abb13(79)=abb13(27)*abb13(19)
      abb13(81)=abb13(79)*spal5k7
      abb13(59)=abb13(59)+abb13(81)
      abb13(81)=abb13(49)*abb13(69)
      abb13(83)=spak4k7*abb13(81)
      abb13(83)=abb13(83)-abb13(59)
      abb13(83)=spbk7k2*abb13(83)
      abb13(66)=-spbl6k2*abb13(66)
      abb13(37)=abb13(66)-abb13(37)
      abb13(37)=spak1l5*abb13(37)
      abb13(62)=-abb13(7)*abb13(62)
      abb13(60)=abb13(62)-abb13(60)
      abb13(60)=spal5k7*abb13(60)
      abb13(37)=abb13(60)+abb13(37)
      abb13(37)=spak2k4*abb13(37)
      abb13(43)=abb13(33)-abb13(43)
      abb13(43)=es12*abb13(43)
      abb13(60)=abb13(19)*spbl6k3
      abb13(62)=abb13(60)*spal5k7
      abb13(66)=abb13(62)*spak1k4
      abb13(85)=abb13(14)*abb13(16)
      abb13(86)=spbl6k3*abb13(85)
      abb13(87)=abb13(86)*spak1l5
      abb13(66)=abb13(66)+abb13(87)
      abb13(87)=spak2k7*spbk3k2
      abb13(88)=abb13(87)*spak1k4
      abb13(89)=-abb13(10)*abb13(88)
      abb13(89)=abb13(89)+abb13(66)
      abb13(89)=spbk2k1*abb13(89)
      abb13(90)=spbl6k2*abb13(81)
      abb13(57)=spak2k7*abb13(57)*abb13(10)
      abb13(57)=abb13(57)+abb13(90)
      abb13(57)=spak4l6*abb13(57)
      abb13(12)=abb13(69)*abb13(12)
      abb13(33)=-es712*abb13(33)
      abb13(12)=abb13(57)+abb13(33)+abb13(37)+abb13(89)+abb13(83)+abb13(43)+abb&
      &13(12)+abb13(36)
      abb13(12)=4.0_ki*abb13(12)
      abb13(33)=8.0_ki*abb13(67)
      abb13(36)=abb13(48)*abb13(20)
      abb13(37)=-2.0_ki*abb13(18)-abb13(20)
      abb13(37)=spak4l5*abb13(37)
      abb13(43)=-abb13(47)*abb13(82)
      abb13(57)=abb13(10)*spbl6k2
      abb13(67)=-spak4l6*abb13(57)
      abb13(37)=abb13(67)+abb13(37)+abb13(43)
      abb13(37)=8.0_ki*abb13(37)
      abb13(43)=4.0_ki*spak4l5
      abb13(43)=abb13(20)*abb13(43)
      abb13(67)=abb13(75)+abb13(76)
      abb13(83)=8.0_ki*abb13(67)
      abb13(89)=-spbk7k3*abb13(83)
      abb13(90)=-spbl6k3*abb13(55)
      abb13(61)=abb13(90)+abb13(61)
      abb13(61)=4.0_ki*spak1k4*abb13(61)
      abb13(90)=8.0_ki*abb13(10)
      abb13(91)=-abb13(68)*abb13(90)
      abb13(9)=abb13(9)*abb13(69)
      abb13(92)=es712*abb13(10)
      abb13(92)=abb13(92)-abb13(9)
      abb13(92)=abb13(27)*abb13(92)
      abb13(76)=abb13(75)-abb13(76)
      abb13(22)=-abb13(76)*abb13(22)
      abb13(59)=-spbk7l6*abb13(59)
      abb13(66)=spbl6k1*abb13(66)
      abb13(80)=-spak1k2*abb13(80)
      abb13(25)=abb13(10)*abb13(25)
      abb13(22)=abb13(25)+abb13(80)+abb13(66)+abb13(59)+abb13(22)+abb13(92)
      abb13(22)=4.0_ki*abb13(22)
      abb13(25)=spbl6k3*abb13(83)
      abb13(59)=abb13(56)-abb13(70)
      abb13(59)=es12*abb13(59)
      abb13(15)=spak4l6*abb13(15)
      abb13(66)=abb13(87)*abb13(19)
      abb13(14)=abb13(26)*abb13(14)
      abb13(26)=abb13(66)+abb13(14)
      abb13(80)=spbl5k2*spak4l5
      abb13(92)=abb13(26)*abb13(80)
      abb13(14)=abb13(14)*spak4k7
      abb13(93)=spbk7k2*abb13(14)
      abb13(66)=-spbk2k1*spak1k4*abb13(66)
      abb13(94)=-es712*abb13(56)
      abb13(11)=abb13(92)+abb13(15)+abb13(94)+abb13(66)+abb13(93)-abb13(11)+abb&
      &13(59)
      abb13(11)=4.0_ki*abb13(11)
      abb13(15)=-8.0_ki*abb13(56)
      abb13(44)=abb13(63)+abb13(44)
      abb13(44)=abb13(7)*abb13(44)
      abb13(34)=spak1k4*abb13(34)
      abb13(34)=abb13(41)+abb13(34)
      abb13(34)=abb13(8)*abb13(34)
      abb13(34)=abb13(34)+abb13(44)+abb13(56)+abb13(70)
      abb13(34)=8.0_ki*abb13(34)
      abb13(44)=8.0_ki*abb13(70)
      abb13(56)=-spak4l6*abb13(20)
      abb13(59)=-abb13(19)*abb13(80)
      abb13(56)=abb13(56)+abb13(59)
      abb13(56)=4.0_ki*abb13(56)
      abb13(59)=abb13(19)*spak4k7
      abb13(66)=abb13(85)+abb13(59)
      abb13(70)=4.0_ki*abb13(66)
      abb13(92)=-spbk7k3*abb13(70)
      abb13(93)=4.0_ki*abb13(19)
      abb13(68)=-abb13(68)*abb13(93)
      abb13(66)=abb13(66)*spbl6k3
      abb13(94)=4.0_ki*abb13(66)
      abb13(95)=spak4k7*abb13(50)
      abb13(63)=spak2k7*abb13(63)
      abb13(63)=abb13(63)+abb13(95)
      abb13(63)=abb13(7)*abb13(63)
      abb13(49)=abb13(49)*abb13(6)
      abb13(95)=spak4k7*abb13(49)
      abb13(41)=spak2k7*abb13(41)
      abb13(41)=abb13(41)+abb13(95)
      abb13(41)=abb13(8)*abb13(41)
      abb13(39)=abb13(39)*abb13(42)
      abb13(14)=abb13(41)+abb13(63)+abb13(39)+abb13(14)
      abb13(14)=spbk7l6*abb13(14)
      abb13(39)=-spak1k4*abb13(26)
      abb13(41)=-spak1k4*abb13(50)
      abb13(63)=-abb13(46)*abb13(88)
      abb13(41)=abb13(63)+abb13(41)
      abb13(41)=abb13(7)*abb13(41)
      abb13(63)=-spak1k4*abb13(49)
      abb13(88)=-abb13(18)*abb13(88)
      abb13(63)=abb13(88)+abb13(63)
      abb13(63)=abb13(8)*abb13(63)
      abb13(39)=abb13(63)+abb13(41)+abb13(39)
      abb13(39)=spbl6k1*abb13(39)
      abb13(41)=abb13(59)-abb13(85)
      abb13(41)=spbl6k3*abb13(41)
      abb13(59)=-spbl5k3*abb13(76)
      abb13(41)=abb13(41)+abb13(59)
      abb13(41)=es12*abb13(41)
      abb13(51)=abb13(7)*abb13(51)
      abb13(51)=abb13(51)+abb13(77)
      abb13(51)=spak2k4*abb13(51)
      abb13(59)=spbl5k3*spak4k7
      abb13(63)=-abb13(72)*abb13(59)
      abb13(76)=abb13(27)*abb13(30)
      abb13(63)=abb13(76)+abb13(63)
      abb13(63)=spbk7k2*spak1k2*abb13(63)
      abb13(77)=spbl5k3*abb13(10)
      abb13(77)=-abb13(60)+abb13(77)
      abb13(24)=abb13(77)*abb13(24)
      abb13(75)=spbl5k3*abb13(75)
      abb13(75)=-abb13(79)+abb13(75)
      abb13(75)=es712*abb13(75)
      abb13(77)=spbk7l6*abb13(79)
      abb13(79)=-spbl6k1*spak1k4*abb13(60)
      abb13(77)=abb13(77)+abb13(79)
      abb13(77)=spal6k7*abb13(77)
      abb13(76)=spbk7l6*abb13(76)
      abb13(79)=-spbl6k1*abb13(86)
      abb13(76)=abb13(76)+abb13(79)
      abb13(76)=spak1l6*abb13(76)
      abb13(79)=spbl6l5*spak4l5*abb13(26)
      abb13(9)=-abb13(9)*abb13(59)
      abb13(9)=abb13(79)+abb13(76)+abb13(77)+abb13(75)+abb13(51)+abb13(24)+abb1&
      &3(63)+abb13(39)+abb13(14)+abb13(41)-abb13(28)+abb13(9)
      abb13(9)=4.0_ki*abb13(9)
      abb13(14)=8.0_ki*abb13(66)
      abb13(24)=abb13(13)*abb13(5)
      abb13(28)=abb13(16)*abb13(24)
      abb13(39)=spak4k7*abb13(46)
      abb13(28)=abb13(39)+abb13(28)
      abb13(28)=abb13(7)*abb13(28)
      abb13(13)=abb13(13)*abb13(6)
      abb13(16)=abb13(16)*abb13(13)
      abb13(39)=spak4k7*abb13(18)
      abb13(16)=abb13(39)+abb13(16)
      abb13(16)=abb13(8)*abb13(16)
      abb13(16)=abb13(16)+abb13(28)
      abb13(16)=spbl6k3*abb13(16)
      abb13(28)=spbl5k3*abb13(67)
      abb13(16)=abb13(28)+abb13(66)+abb13(16)
      abb13(16)=8.0_ki*abb13(16)
      abb13(28)=spbl5k3*abb13(70)
      abb13(39)=-spak1k2*abb13(30)
      abb13(39)=-abb13(42)+abb13(39)
      abb13(41)=4.0_ki*spal5l6
      abb13(39)=abb13(41)*abb13(39)*spbl6k2**2
      abb13(41)=abb13(7)*abb13(47)
      abb13(41)=abb13(20)+abb13(41)
      abb13(41)=spal5k7*abb13(41)
      abb13(42)=spbl6k2*spbe7k1
      abb13(51)=abb13(42)*abb13(24)
      abb13(59)=abb13(7)*abb13(51)
      abb13(59)=abb13(31)+abb13(59)
      abb13(59)=spak1l5*abb13(59)
      abb13(42)=abb13(42)*abb13(71)
      abb13(63)=-spak1l6*abb13(42)
      abb13(66)=-spal6k7*abb13(57)
      abb13(41)=abb13(63)+abb13(66)+abb13(41)+abb13(59)
      abb13(41)=8.0_ki*abb13(41)
      abb13(59)=spal5k7*abb13(20)
      abb13(63)=spak1l5*abb13(31)
      abb13(59)=abb13(59)+abb13(63)
      abb13(59)=4.0_ki*abb13(59)
      abb13(55)=4.0_ki*abb13(55)
      abb13(63)=abb13(18)+abb13(20)
      abb13(63)=spak2l5*abb13(63)
      abb13(63)=abb13(47)+abb13(63)
      abb13(63)=4.0_ki*abb13(63)
      abb13(66)=spak1k2*abb13(42)
      abb13(57)=spak2k7*abb13(57)
      abb13(57)=abb13(57)+abb13(66)
      abb13(57)=4.0_ki*abb13(57)
      abb13(20)=-spak2k7*abb13(20)
      abb13(20)=abb13(20)-abb13(32)
      abb13(32)=-spak1k2*abb13(51)
      abb13(47)=-spak2k7*abb13(47)
      abb13(32)=abb13(47)+abb13(32)
      abb13(32)=abb13(7)*abb13(32)
      abb13(20)=2.0_ki*abb13(20)+abb13(32)
      abb13(20)=4.0_ki*abb13(20)
      abb13(32)=abb13(87)*abb13(10)
      abb13(47)=abb13(45)*spbl6k3
      abb13(32)=abb13(81)-abb13(62)+abb13(32)-abb13(47)
      abb13(47)=8.0_ki*abb13(32)
      abb13(13)=spbe7k1*abb13(13)
      abb13(62)=-spak1l5*abb13(13)
      abb13(66)=-spal5k7*abb13(18)
      abb13(62)=abb13(66)+abb13(62)
      abb13(62)=abb13(8)*abb13(62)
      abb13(62)=-abb13(84)+abb13(62)
      abb13(62)=spbl6k3*abb13(62)
      abb13(64)=-spbl6k3*abb13(64)
      abb13(64)=-abb13(60)+abb13(64)
      abb13(64)=spal5k7*abb13(64)
      abb13(66)=spbl6k3*spbe7k1
      abb13(24)=-abb13(7)*abb13(24)*abb13(66)
      abb13(67)=abb13(30)*spbl6k3
      abb13(24)=-abb13(67)+abb13(24)
      abb13(24)=spak1l5*abb13(24)
      abb13(73)=-abb13(78)-abb13(73)
      abb13(73)=spbl5k3*abb13(73)
      abb13(66)=-spak1l6*abb13(71)*abb13(66)
      abb13(71)=spbk7k3*abb13(72)
      abb13(10)=spbk3k1*abb13(10)
      abb13(10)=abb13(71)+abb13(10)
      abb13(10)=spak1k7*abb13(10)
      abb13(10)=abb13(10)+abb13(66)+abb13(73)+abb13(64)+abb13(24)+abb13(62)
      abb13(10)=8.0_ki*abb13(10)
      abb13(24)=-4.0_ki*abb13(32)
      abb13(32)=-abb13(46)*abb13(87)
      abb13(32)=abb13(32)-abb13(50)
      abb13(32)=abb13(7)*abb13(32)
      abb13(45)=-abb13(58)-abb13(45)
      abb13(45)=spbl5k3*abb13(45)
      abb13(18)=-abb13(18)*abb13(87)
      abb13(18)=abb13(18)-abb13(49)
      abb13(18)=abb13(8)*abb13(18)
      abb13(46)=spbk7k3*abb13(30)
      abb13(19)=spbk3k1*abb13(19)
      abb13(19)=abb13(46)+abb13(19)
      abb13(19)=spak1k7*abb13(19)
      abb13(46)=-spal6k7*abb13(60)
      abb13(49)=-spak1l6*abb13(67)
      abb13(18)=abb13(19)+abb13(49)+abb13(46)+abb13(18)+abb13(45)+abb13(32)-abb&
      &13(26)
      abb13(18)=4.0_ki*abb13(18)
      abb13(19)=-spak4k7*abb13(65)*spbl6k2
      abb13(26)=abb13(31)*spal5l6
      abb13(27)=abb13(27)*abb13(26)
      abb13(19)=abb13(27)+abb13(19)-abb13(54)
      abb13(19)=4.0_ki*abb13(19)
      abb13(27)=8.0_ki*spak4k7*abb13(29)*abb13(69)
      abb13(29)=4.0_ki*spak4k7*abb13(35)
      abb13(26)=-4.0_ki*abb13(26)
      abb13(32)=abb13(48)*abb13(31)
      abb13(35)=2.0_ki*abb13(13)+abb13(31)
      abb13(35)=spak4l5*abb13(35)
      abb13(45)=abb13(51)*abb13(82)
      abb13(42)=spak4l6*abb13(42)
      abb13(35)=abb13(42)+abb13(35)+abb13(45)
      abb13(35)=8.0_ki*abb13(35)
      abb13(42)=4.0_ki*abb13(31)
      abb13(42)=-spak4l5*abb13(42)
      abb13(45)=spak4l6*abb13(31)
      abb13(46)=abb13(30)*abb13(80)
      abb13(45)=abb13(45)+abb13(46)
      abb13(45)=4.0_ki*abb13(45)
      abb13(46)=-spbk3k1*abb13(83)
      abb13(48)=-spbk3k1*abb13(70)
      abb13(13)=-abb13(13)-abb13(31)
      abb13(13)=spak2l5*abb13(13)
      abb13(13)=-abb13(51)+abb13(13)
      abb13(13)=4.0_ki*abb13(13)
      abb13(31)=-8.0_ki*abb13(72)
      abb13(30)=-4.0_ki*abb13(30)
      R2d13=0.0_ki
      rat2 = rat2 + R2d13
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='13' value='", &
          & R2d13, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd13h2