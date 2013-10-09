module     p1_dbarc_epnebbbarg_abbrevd292h2
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(131), public :: abb292
   complex(ki), public :: R2d292
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
      abb292(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb292(2)=NC**(-1)
      abb292(3)=spak2l6**(-1)
      abb292(4)=sqrt(mB**2)
      abb292(5)=spak2l5**(-1)
      abb292(6)=spbl5k2**(-1)
      abb292(7)=spbl6k2**(-1)
      abb292(8)=c3+c1
      abb292(9)=abb292(1)*i_*CVDC
      abb292(10)=TR*gW
      abb292(10)=abb292(10)**2
      abb292(8)=abb292(8)*abb292(10)*abb292(2)*abb292(9)
      abb292(11)=abb292(8)*abb292(3)
      abb292(9)=abb292(10)*abb292(2)**2*c4*abb292(9)
      abb292(10)=abb292(3)*abb292(9)
      abb292(11)=abb292(11)-abb292(10)
      abb292(12)=mB*abb292(11)
      abb292(13)=abb292(12)*abb292(4)*es12*spak1k4
      abb292(14)=spak2l5*abb292(13)
      abb292(9)=abb292(8)-abb292(9)
      abb292(15)=mB**2
      abb292(16)=abb292(15)*abb292(9)
      abb292(17)=abb292(16)*spbl6k2*spak2k4
      abb292(18)=spak1l5*abb292(17)
      abb292(19)=abb292(4)*spak1k2
      abb292(20)=abb292(12)*abb292(19)
      abb292(21)=spbl6k2*spak2l5
      abb292(22)=abb292(21)*abb292(20)
      abb292(23)=spak4l6*abb292(22)
      abb292(23)=-abb292(14)+abb292(23)-abb292(18)
      abb292(24)=spbk7k3*spbe7k2
      abb292(25)=abb292(24)*spae7k7
      abb292(23)=abb292(25)*abb292(23)
      abb292(26)=abb292(20)*spak4l5
      abb292(27)=abb292(26)*abb292(24)
      abb292(8)=-abb292(8)*abb292(15)*abb292(3)
      abb292(10)=abb292(10)*abb292(15)
      abb292(8)=abb292(10)+abb292(8)
      abb292(10)=abb292(8)*spak1l5
      abb292(15)=abb292(24)*spak2k4
      abb292(24)=abb292(10)*abb292(15)
      abb292(24)=abb292(27)+abb292(24)
      abb292(24)=abb292(24)*spae7k7
      abb292(27)=spbl5k2*spak2l5
      abb292(28)=abb292(24)*abb292(27)
      abb292(29)=-abb292(9)*spak4l5
      abb292(30)=abb292(29)*abb292(25)
      abb292(31)=spbl5k2*spak1l5
      abb292(32)=spbl6l5*abb292(31)*spak2l5
      abb292(33)=-abb292(30)*abb292(32)
      abb292(34)=-abb292(9)*spak1k4
      abb292(35)=abb292(34)*abb292(25)
      abb292(36)=abb292(31)*spbl6k1
      abb292(37)=abb292(36)*spak2l5
      abb292(38)=-abb292(35)*abb292(37)
      abb292(23)=abb292(38)+abb292(33)+abb292(28)+abb292(23)
      abb292(23)=4.0_ki*abb292(23)
      abb292(28)=spak2k4*spbk3k2
      abb292(10)=abb292(10)*abb292(28)
      abb292(33)=-spak2l5*abb292(10)
      abb292(38)=abb292(19)*spbk3k2
      abb292(12)=abb292(12)*abb292(38)
      abb292(39)=abb292(12)*spak2l5
      abb292(40)=-spak4l5*abb292(39)
      abb292(33)=abb292(33)+abb292(40)
      abb292(33)=spbl5k2*abb292(33)
      abb292(40)=-abb292(31)*abb292(9)
      abb292(41)=abb292(40)*spbl6k3
      abb292(42)=spak2l5*abb292(41)
      abb292(42)=-abb292(39)+abb292(42)
      abb292(43)=spbk7k2*spak4k7
      abb292(42)=abb292(42)*abb292(43)
      abb292(44)=abb292(16)*spbl6k2
      abb292(45)=spak1l5*abb292(28)*abb292(44)
      abb292(46)=abb292(12)*spak4l6
      abb292(47)=-abb292(21)*abb292(46)
      abb292(48)=-abb292(9)*spbk3k2
      abb292(49)=abb292(48)*spak4l5
      abb292(32)=abb292(49)*abb292(32)
      abb292(50)=abb292(34)*spbk3k2
      abb292(37)=abb292(50)*abb292(37)
      abb292(51)=spbk3k2*abb292(14)
      abb292(32)=abb292(51)+abb292(37)+abb292(42)+abb292(32)+abb292(47)+abb292(&
      &45)+abb292(33)
      abb292(32)=8.0_ki*abb292(32)
      abb292(33)=spak2l5*spbe7k2
      abb292(37)=abb292(33)*spak4e7
      abb292(42)=abb292(37)*abb292(12)
      abb292(45)=-abb292(37)*abb292(41)
      abb292(45)=abb292(42)+abb292(45)
      abb292(45)=8.0_ki*abb292(45)
      abb292(47)=abb292(5)*abb292(6)
      abb292(51)=abb292(47)*spak2k4
      abb292(52)=abb292(51)*abb292(16)
      abb292(53)=abb292(52)*spbl6k2
      abb292(54)=-abb292(25)*abb292(53)
      abb292(55)=-spbl6l5*abb292(30)
      abb292(56)=-spbl6k1*abb292(35)
      abb292(54)=abb292(56)+abb292(55)+abb292(54)
      abb292(54)=spak1l5*abb292(54)
      abb292(24)=abb292(24)+abb292(54)
      abb292(24)=8.0_ki*abb292(24)
      abb292(16)=abb292(16)*abb292(47)
      abb292(54)=abb292(16)*abb292(28)
      abb292(55)=abb292(54)*spbl6k2
      abb292(56)=spbl6l5*abb292(49)
      abb292(57)=spbl6k1*abb292(50)
      abb292(56)=abb292(57)+abb292(56)+abb292(55)
      abb292(56)=spak1l5*abb292(56)
      abb292(57)=-spak4l5*abb292(12)
      abb292(58)=-abb292(9)*spak1l5
      abb292(59)=abb292(58)*spbl6k3
      abb292(60)=abb292(43)*abb292(59)
      abb292(56)=abb292(60)-abb292(10)+abb292(57)+abb292(56)
      abb292(56)=16.0_ki*abb292(56)
      abb292(57)=-abb292(9)*spak4e7
      abb292(60)=abb292(57)*spbe7k2
      abb292(61)=spbl6k3*spak1l5
      abb292(62)=abb292(60)*abb292(61)
      abb292(62)=16.0_ki*abb292(62)
      abb292(63)=spak2k4*spbe7k2
      abb292(64)=abb292(63)*spal5e7
      abb292(65)=abb292(64)-abb292(37)
      abb292(66)=abb292(65)*abb292(41)
      abb292(67)=spbe7k3*spal5e7
      abb292(68)=abb292(34)*abb292(67)
      abb292(36)=abb292(36)*abb292(68)
      abb292(36)=abb292(66)+abb292(36)+abb292(42)
      abb292(42)=abb292(8)*spak2k4
      abb292(66)=abb292(42)*abb292(67)
      abb292(69)=abb292(29)*spbl6l5
      abb292(70)=-abb292(67)*abb292(69)
      abb292(70)=abb292(70)+abb292(66)
      abb292(70)=abb292(31)*abb292(70)
      abb292(71)=-abb292(67)*abb292(18)
      abb292(72)=mB**3
      abb292(11)=abb292(72)*abb292(11)
      abb292(73)=abb292(11)*abb292(38)
      abb292(74)=abb292(73)*abb292(6)
      abb292(75)=-abb292(64)*abb292(74)
      abb292(71)=abb292(71)+abb292(75)
      abb292(71)=abb292(5)*abb292(71)
      abb292(75)=abb292(12)*spal5e7
      abb292(76)=spbe7k1*spak1k4
      abb292(77)=spak4l6*spbe7l6
      abb292(78)=abb292(76)+abb292(77)
      abb292(79)=spbe7l5*spak4l5
      abb292(80)=abb292(79)+abb292(78)
      abb292(80)=abb292(75)*abb292(80)
      abb292(72)=abb292(7)*abb292(9)*abb292(72)*abb292(3)**2
      abb292(38)=abb292(72)*abb292(38)
      abb292(81)=-abb292(64)*abb292(38)
      abb292(82)=spbk7e7*spak4k7
      abb292(83)=abb292(82)*spal5e7
      abb292(84)=abb292(41)*abb292(83)
      abb292(70)=abb292(84)+abb292(81)+abb292(71)+abb292(80)+abb292(70)-abb292(&
      &36)
      abb292(70)=8.0_ki*abb292(70)
      abb292(71)=abb292(47)*abb292(73)
      abb292(71)=abb292(38)+abb292(12)+abb292(71)
      abb292(71)=16.0_ki*spak4l5*abb292(71)
      abb292(80)=8.0_ki*abb292(34)
      abb292(81)=abb292(80)*abb292(25)
      abb292(84)=-abb292(21)*abb292(81)
      abb292(85)=16.0_ki*abb292(50)
      abb292(86)=abb292(21)*abb292(85)
      abb292(87)=16.0_ki*abb292(34)
      abb292(88)=abb292(67)*spbl6k2
      abb292(89)=-abb292(88)*abb292(87)
      abb292(18)=abb292(18)*abb292(5)
      abb292(90)=-abb292(31)*abb292(69)
      abb292(13)=-abb292(13)+abb292(90)-abb292(18)
      abb292(13)=abb292(67)*abb292(13)
      abb292(90)=spak1l5*abb292(66)
      abb292(91)=abb292(67)*abb292(26)
      abb292(90)=abb292(90)+abb292(91)
      abb292(90)=spbl5k2*abb292(90)
      abb292(91)=spal5e7*abb292(41)
      abb292(75)=-abb292(75)+abb292(91)
      abb292(75)=abb292(75)*abb292(82)
      abb292(64)=abb292(12)*abb292(64)
      abb292(91)=abb292(88)*abb292(20)*spak4l6
      abb292(13)=abb292(75)+abb292(91)+abb292(64)+abb292(90)+abb292(13)-abb292(&
      &36)
      abb292(13)=4.0_ki*abb292(13)
      abb292(36)=-8.0_ki*abb292(9)
      abb292(64)=abb292(36)*spak4e7
      abb292(75)=abb292(64)*spbe7k2
      abb292(90)=abb292(61)*abb292(75)
      abb292(91)=-abb292(88)*abb292(80)
      abb292(47)=abb292(11)*abb292(47)
      abb292(47)=abb292(47)+abb292(72)
      abb292(47)=abb292(47)*abb292(15)*abb292(19)
      abb292(92)=abb292(20)*spbk7k3
      abb292(78)=abb292(78)*abb292(92)
      abb292(93)=spbe7l5*spbk7k3
      abb292(94)=abb292(93)*abb292(26)
      abb292(47)=abb292(47)-abb292(78)-abb292(94)
      abb292(78)=spal5k7*abb292(47)
      abb292(94)=spak2l5*abb292(38)
      abb292(74)=abb292(94)+abb292(74)
      abb292(94)=-abb292(63)*abb292(74)
      abb292(76)=abb292(76)+abb292(82)+abb292(79)-abb292(63)
      abb292(76)=abb292(39)*abb292(76)
      abb292(22)=-spbe7k3*abb292(22)
      abb292(79)=spbe7l6*abb292(39)
      abb292(22)=abb292(22)+abb292(79)
      abb292(22)=spak4l6*abb292(22)
      abb292(79)=abb292(26)*spbe7k3
      abb292(27)=-abb292(79)*abb292(27)
      abb292(14)=spbe7k3*abb292(14)
      abb292(14)=abb292(14)+abb292(78)+abb292(22)+abb292(27)+abb292(76)+abb292(&
      &94)
      abb292(14)=4.0_ki*abb292(14)
      abb292(22)=8.0_ki*abb292(79)
      abb292(27)=4.0_ki*abb292(79)
      abb292(47)=-4.0_ki*spal5e7*abb292(47)
      abb292(76)=8.0_ki*abb292(26)
      abb292(78)=spbk7k3*abb292(76)
      abb292(76)=-spbl6k3*abb292(76)
      abb292(79)=4.0_ki*abb292(20)
      abb292(94)=abb292(79)*abb292(25)
      abb292(95)=spak4l6*abb292(94)
      abb292(46)=-8.0_ki*abb292(46)
      abb292(96)=8.0_ki*abb292(20)
      abb292(97)=-abb292(96)*abb292(43)
      abb292(98)=spak4e7*spbe7k2
      abb292(99)=abb292(98)*abb292(96)
      abb292(98)=-abb292(79)*abb292(98)
      abb292(53)=abb292(53)-abb292(42)
      abb292(100)=spae7k7*spbk7k3
      abb292(101)=abb292(100)*spak1l5
      abb292(102)=abb292(101)*abb292(53)
      abb292(55)=-spak1l5*abb292(55)
      abb292(10)=abb292(10)+abb292(55)
      abb292(10)=spak2e7*abb292(10)
      abb292(10)=abb292(10)+abb292(102)
      abb292(10)=spbe7l5*abb292(10)
      abb292(55)=-abb292(31)*abb292(42)
      abb292(18)=abb292(55)+abb292(18)
      abb292(18)=spbe7k3*abb292(18)
      abb292(55)=-abb292(82)*abb292(41)
      abb292(18)=abb292(55)+abb292(18)
      abb292(18)=spak2e7*abb292(18)
      abb292(11)=-abb292(11)*abb292(51)
      abb292(55)=-spak2k4*abb292(72)
      abb292(11)=abb292(55)+abb292(11)
      abb292(11)=abb292(25)*abb292(19)*abb292(11)
      abb292(19)=abb292(29)*abb292(101)
      abb292(55)=spak2e7*spak1l5
      abb292(72)=-abb292(49)*abb292(55)
      abb292(19)=abb292(19)+abb292(72)
      abb292(19)=spbe7l5*abb292(19)
      abb292(72)=abb292(29)*spbe7k3
      abb292(102)=abb292(31)*spak2e7
      abb292(103)=abb292(72)*abb292(102)
      abb292(19)=abb292(103)+abb292(19)
      abb292(19)=spbl6l5*abb292(19)
      abb292(101)=abb292(34)*abb292(101)
      abb292(103)=-abb292(50)*abb292(55)
      abb292(101)=abb292(101)+abb292(103)
      abb292(101)=spbe7l5*abb292(101)
      abb292(103)=abb292(34)*spbe7k3
      abb292(102)=abb292(103)*abb292(102)
      abb292(101)=abb292(102)+abb292(101)
      abb292(101)=spbl6k1*abb292(101)
      abb292(10)=abb292(101)+abb292(19)+abb292(10)+abb292(11)+abb292(18)
      abb292(10)=4.0_ki*abb292(10)
      abb292(11)=spbl6k1*abb292(34)
      abb292(11)=abb292(11)+abb292(69)+abb292(53)
      abb292(11)=spak1l5*abb292(11)
      abb292(11)=-abb292(26)+abb292(11)
      abb292(11)=spbl5k3*abb292(11)
      abb292(18)=abb292(38)+abb292(41)
      abb292(18)=spak2k4*abb292(18)
      abb292(19)=abb292(51)*abb292(73)
      abb292(38)=-spbk7l5*spak4k7*abb292(59)
      abb292(11)=abb292(38)+abb292(11)+abb292(19)+abb292(18)
      abb292(11)=8.0_ki*abb292(11)
      abb292(18)=abb292(61)*spbe7l5
      abb292(19)=abb292(18)*abb292(64)
      abb292(38)=abb292(87)*spbl6k3
      abb292(41)=spbl6k2*abb292(103)
      abb292(51)=-spbe7l6*abb292(50)
      abb292(41)=abb292(41)+abb292(51)
      abb292(41)=spak2e7*abb292(41)
      abb292(51)=abb292(100)*spbe7l6
      abb292(59)=abb292(34)*abb292(51)
      abb292(41)=abb292(59)+abb292(41)
      abb292(41)=8.0_ki*abb292(41)
      abb292(57)=4.0_ki*abb292(57)
      abb292(18)=-abb292(18)*abb292(57)
      abb292(59)=abb292(48)*spbe7l6
      abb292(61)=-abb292(9)*spbl6k2
      abb292(69)=abb292(61)*spbe7k3
      abb292(59)=abb292(59)-abb292(69)
      abb292(69)=abb292(59)*spak4l6
      abb292(73)=abb292(8)*abb292(7)
      abb292(16)=abb292(73)-abb292(16)
      abb292(87)=-spbk3k2*abb292(16)
      abb292(100)=abb292(87)-abb292(48)
      abb292(63)=abb292(100)*abb292(63)
      abb292(101)=abb292(50)*spbe7k1
      abb292(102)=abb292(82)*abb292(48)
      abb292(104)=abb292(49)*spbe7l5
      abb292(105)=abb292(29)*spbl5k2
      abb292(106)=abb292(105)*spbe7k3
      abb292(63)=abb292(69)+abb292(101)+abb292(102)+abb292(63)+abb292(104)-abb2&
      &92(106)
      abb292(69)=-spak1k2*abb292(63)
      abb292(15)=abb292(16)*abb292(15)
      abb292(16)=spbk7k3*abb292(34)*spbe7k1
      abb292(93)=abb292(93)*abb292(29)
      abb292(101)=-abb292(9)*spbk7k3
      abb292(77)=abb292(101)*abb292(77)
      abb292(15)=-abb292(16)-abb292(77)+abb292(15)-abb292(93)
      abb292(16)=spak1k7*abb292(15)
      abb292(77)=-es12*abb292(103)
      abb292(16)=abb292(77)+abb292(16)+abb292(69)
      abb292(16)=4.0_ki*abb292(16)
      abb292(69)=8.0_ki*abb292(103)
      abb292(77)=-4.0_ki*abb292(103)
      abb292(93)=4.0_ki*spak1e7
      abb292(15)=-abb292(15)*abb292(93)
      abb292(102)=-spbk7k3*abb292(80)
      abb292(80)=spbl5k3*abb292(80)
      abb292(94)=spak1k4*abb292(94)
      abb292(12)=8.0_ki*abb292(12)
      abb292(12)=-spak1k4*abb292(12)
      abb292(100)=-spak1k2*abb292(100)
      abb292(104)=-spbl5k3*abb292(58)
      abb292(101)=spak1k7*abb292(101)
      abb292(106)=-abb292(9)*spbl6k3
      abb292(107)=-spak1l6*abb292(106)
      abb292(100)=abb292(107)+abb292(101)+abb292(104)+abb292(100)
      abb292(100)=8.0_ki*abb292(100)
      abb292(101)=abb292(36)*spak1e7
      abb292(104)=abb292(101)*spbe7k3
      abb292(107)=-4.0_ki*abb292(9)
      abb292(108)=abb292(107)*spak1e7
      abb292(109)=spbe7k3*abb292(108)
      abb292(110)=spbk7k2*abb292(20)
      abb292(111)=spbk7l6*abb292(40)
      abb292(110)=abb292(110)+abb292(111)
      abb292(111)=spae7k7*spbe7k2
      abb292(112)=abb292(111)*spak2l5
      abb292(110)=4.0_ki*abb292(112)*abb292(110)
      abb292(113)=abb292(21)*abb292(36)
      abb292(31)=-abb292(31)*abb292(113)
      abb292(114)=spbk7l6*spak1l5*abb292(111)*abb292(36)
      abb292(115)=-16.0_ki*spak1l5*abb292(61)
      abb292(116)=spal5e7*spbe7k2
      abb292(117)=abb292(116)*abb292(20)
      abb292(40)=abb292(40)*spbe7l6
      abb292(118)=abb292(40)*spal5e7
      abb292(119)=-abb292(117)+abb292(118)
      abb292(119)=8.0_ki*abb292(119)
      abb292(117)=abb292(117)+abb292(118)
      abb292(117)=4.0_ki*abb292(117)
      abb292(118)=spal5k7*spbk7e7
      abb292(33)=-2.0_ki*abb292(33)+abb292(118)
      abb292(33)=abb292(33)*abb292(79)
      abb292(118)=abb292(36)*spbl6k2
      abb292(120)=-spal5e7*abb292(118)
      abb292(121)=4.0_ki*abb292(61)
      abb292(122)=-spal5e7*abb292(121)
      abb292(123)=-spbk7e7*spal5e7*abb292(79)
      abb292(124)=abb292(111)*abb292(79)
      abb292(55)=abb292(61)*abb292(55)
      abb292(125)=-spbk7l6*spae7k7*abb292(58)
      abb292(55)=abb292(125)+abb292(55)
      abb292(55)=spbe7l5*abb292(55)
      abb292(40)=-spak2e7*abb292(40)
      abb292(40)=abb292(40)+abb292(55)
      abb292(40)=4.0_ki*abb292(40)
      abb292(55)=spbl6l5*abb292(58)
      abb292(55)=-abb292(20)+abb292(55)
      abb292(55)=8.0_ki*abb292(55)
      abb292(58)=spak1k2*spbe7k2
      abb292(125)=spak1k7*spbk7e7
      abb292(58)=2.0_ki*abb292(58)+abb292(125)
      abb292(58)=abb292(58)*abb292(107)
      abb292(125)=abb292(121)*spak2e7
      abb292(108)=-spbk7e7*abb292(108)
      abb292(126)=spbk3k1*spak1l5
      abb292(127)=-spal5l6*spbl6k3
      abb292(126)=abb292(127)+abb292(126)
      abb292(20)=abb292(20)*abb292(126)
      abb292(92)=spal5k7*abb292(92)
      abb292(20)=abb292(92)-abb292(39)+abb292(20)-abb292(74)
      abb292(20)=8.0_ki*abb292(20)
      abb292(39)=abb292(96)*abb292(67)
      abb292(74)=abb292(67)*abb292(79)
      abb292(79)=spbk2k1*abb292(103)
      abb292(63)=abb292(79)+abb292(63)
      abb292(63)=abb292(63)*abb292(93)
      abb292(79)=spak1k4*abb292(87)
      abb292(79)=-abb292(50)+abb292(79)
      abb292(79)=8.0_ki*abb292(79)
      abb292(87)=-spbe7k2*abb292(101)
      abb292(92)=-abb292(112)*abb292(121)
      abb292(93)=abb292(107)*abb292(111)
      abb292(96)=abb292(107)*spbe7l6
      abb292(101)=spae7k7*abb292(96)
      abb292(103)=spbl5k2*abb292(30)
      abb292(111)=-spbk2k1*abb292(35)
      abb292(103)=abb292(103)+abb292(111)
      abb292(103)=4.0_ki*spak2l5*abb292(103)
      abb292(111)=-spbl5k2*abb292(49)
      abb292(121)=-abb292(48)*abb292(43)
      abb292(126)=spbk2k1*abb292(50)
      abb292(111)=abb292(126)+abb292(111)+abb292(121)
      abb292(111)=8.0_ki*spak2l5*abb292(111)
      abb292(121)=8.0_ki*abb292(48)*abb292(37)
      abb292(126)=abb292(36)*spak4l5
      abb292(127)=abb292(25)*abb292(126)
      abb292(128)=-16.0_ki*abb292(49)
      abb292(68)=abb292(68)*spbk2k1
      abb292(67)=abb292(105)*abb292(67)
      abb292(65)=abb292(83)-abb292(65)
      abb292(48)=abb292(65)*abb292(48)
      abb292(48)=abb292(48)+abb292(68)-abb292(67)
      abb292(67)=-8.0_ki*abb292(48)
      abb292(48)=-4.0_ki*abb292(48)
      abb292(43)=abb292(43)*abb292(36)
      abb292(60)=4.0_ki*abb292(60)
      abb292(68)=abb292(52)*abb292(25)
      abb292(83)=abb292(42)*abb292(25)
      abb292(105)=abb292(83)*abb292(7)
      abb292(68)=abb292(68)-abb292(105)
      abb292(59)=-spak2e7*abb292(59)
      abb292(105)=-abb292(9)*abb292(51)
      abb292(59)=abb292(105)+abb292(59)
      abb292(59)=spak4l6*abb292(59)
      abb292(59)=abb292(59)+abb292(68)
      abb292(59)=4.0_ki*abb292(59)
      abb292(73)=abb292(73)*abb292(28)
      abb292(73)=abb292(73)-abb292(54)
      abb292(105)=spak4l6*abb292(106)
      abb292(34)=spbk3k1*abb292(34)
      abb292(34)=abb292(34)+abb292(105)+abb292(73)
      abb292(34)=8.0_ki*abb292(34)
      abb292(35)=4.0_ki*abb292(35)
      abb292(50)=-8.0_ki*abb292(50)
      abb292(105)=spbk7k2*abb292(107)*abb292(112)
      abb292(106)=abb292(36)*abb292(116)
      abb292(107)=abb292(107)*abb292(116)
      abb292(30)=4.0_ki*abb292(30)
      abb292(112)=-abb292(21)*abb292(30)
      abb292(116)=8.0_ki*abb292(49)
      abb292(129)=abb292(21)*abb292(116)
      abb292(130)=-abb292(88)*abb292(126)
      abb292(131)=-4.0_ki*abb292(29)*abb292(88)
      abb292(72)=spbl6k2*abb292(72)
      abb292(49)=-spbe7l6*abb292(49)
      abb292(49)=abb292(72)+abb292(49)
      abb292(49)=spak2e7*abb292(49)
      abb292(29)=abb292(29)*abb292(51)
      abb292(29)=abb292(29)+abb292(49)
      abb292(29)=4.0_ki*abb292(29)
      abb292(49)=spbl6k3*abb292(126)
      abb292(21)=abb292(21)*abb292(43)
      abb292(37)=-abb292(37)*abb292(118)
      abb292(65)=abb292(65)*abb292(61)
      abb292(72)=8.0_ki*abb292(65)
      abb292(65)=4.0_ki*abb292(65)
      abb292(82)=-abb292(82)*abb292(125)
      abb292(61)=spak2k4*abb292(61)
      abb292(9)=spbk7l6*spak4k7*abb292(9)
      abb292(9)=abb292(61)+abb292(9)
      abb292(9)=8.0_ki*abb292(9)
      abb292(61)=abb292(64)*spbe7l6
      abb292(57)=-spbe7l6*abb292(57)
      abb292(64)=spak2l5*abb292(83)
      abb292(17)=-abb292(6)*abb292(25)*abb292(17)
      abb292(17)=abb292(64)+abb292(17)
      abb292(17)=4.0_ki*abb292(17)
      abb292(25)=-spak2l5*abb292(8)
      abb292(44)=abb292(6)*abb292(44)
      abb292(25)=abb292(25)+abb292(44)
      abb292(25)=abb292(28)*abb292(25)
      abb292(26)=-spbk3k1*abb292(26)
      abb292(25)=abb292(26)+abb292(25)
      abb292(25)=8.0_ki*abb292(25)
      abb292(26)=abb292(88)*abb292(52)
      abb292(26)=abb292(26)-abb292(66)
      abb292(44)=-8.0_ki*abb292(26)
      abb292(26)=-4.0_ki*abb292(26)
      abb292(64)=-4.0_ki*abb292(68)
      abb292(66)=-8.0_ki*abb292(73)
      abb292(53)=spbe7k3*abb292(53)
      abb292(54)=-spbe7l6*abb292(54)
      abb292(53)=abb292(54)+abb292(53)
      abb292(53)=spak2e7*abb292(53)
      abb292(54)=-abb292(42)*abb292(51)
      abb292(8)=abb292(8)*abb292(28)*spak2e7*spbe7l6
      abb292(8)=abb292(54)+abb292(8)
      abb292(8)=abb292(7)*abb292(8)
      abb292(28)=abb292(52)*abb292(51)
      abb292(8)=abb292(8)+abb292(28)+abb292(53)
      abb292(8)=4.0_ki*abb292(8)
      abb292(28)=abb292(42)*abb292(7)
      abb292(28)=abb292(52)-abb292(28)
      abb292(28)=8.0_ki*spbl6k3*abb292(28)
      abb292(42)=spak2e7*abb292(96)
      R2d292=0.0_ki
      rat2 = rat2 + R2d292
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='292' value='", &
          & R2d292, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd292h2
