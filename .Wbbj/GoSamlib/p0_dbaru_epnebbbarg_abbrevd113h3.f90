module     p0_dbaru_epnebbbarg_abbrevd113h3
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(139), public :: abb113
   complex(ki), public :: R2d113
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
      abb113(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb113(2)=1.0_ki/(es34+es567-es12-es234)
      abb113(3)=es56**(-1)
      abb113(4)=spak2l5**(-1)
      abb113(5)=spak2l6**(-1)
      abb113(6)=NC**(-1)
      abb113(7)=spbl5k2**(-1)
      abb113(8)=spbl6k2**(-1)
      abb113(9)=TR*gW
      abb113(9)=abb113(9)**2*i_*spak1k4*CVDU*abb113(2)
      abb113(10)=abb113(3)*abb113(1)
      abb113(11)=abb113(9)*abb113(10)*mB
      abb113(12)=abb113(11)*spbk3k1
      abb113(13)=abb113(12)*abb113(5)
      abb113(14)=spbe7l5*c1
      abb113(15)=abb113(14)*abb113(13)
      abb113(16)=abb113(12)*abb113(4)
      abb113(17)=spbe7l6*c1
      abb113(18)=abb113(17)*abb113(16)
      abb113(19)=abb113(15)+abb113(18)
      abb113(20)=abb113(19)*NC
      abb113(21)=abb113(13)*c2
      abb113(22)=abb113(13)*c4
      abb113(23)=abb113(21)-abb113(22)
      abb113(24)=abb113(23)*spbe7l5
      abb113(25)=abb113(16)*c2
      abb113(26)=abb113(16)*c4
      abb113(27)=abb113(25)-abb113(26)
      abb113(28)=abb113(27)*spbe7l6
      abb113(29)=abb113(20)+abb113(24)+abb113(28)
      abb113(30)=abb113(29)*spak2e7
      abb113(31)=spak1l5*abb113(30)*spbl5k2
      abb113(32)=spak1l6*abb113(30)*spbl6k2
      abb113(11)=abb113(11)*spbk4k3
      abb113(33)=abb113(11)*abb113(5)
      abb113(34)=abb113(14)*abb113(33)
      abb113(35)=abb113(11)*abb113(4)
      abb113(36)=abb113(17)*abb113(35)
      abb113(37)=abb113(34)+abb113(36)
      abb113(38)=abb113(37)*NC
      abb113(39)=abb113(33)*c2
      abb113(40)=abb113(33)*c4
      abb113(41)=abb113(39)-abb113(40)
      abb113(42)=abb113(41)*spbe7l5
      abb113(43)=abb113(35)*c2
      abb113(44)=abb113(35)*c4
      abb113(45)=abb113(43)-abb113(44)
      abb113(46)=abb113(45)*spbe7l6
      abb113(47)=abb113(38)+abb113(42)+abb113(46)
      abb113(48)=abb113(47)*spak2e7
      abb113(49)=spak4l5*abb113(48)*spbl5k2
      abb113(50)=spak4l6*abb113(48)*spbl6k2
      abb113(51)=NC*c1
      abb113(52)=abb113(51)*abb113(35)
      abb113(45)=abb113(52)+abb113(45)
      abb113(53)=spbe7l5*abb113(45)
      abb113(54)=abb113(53)*spak2k4
      abb113(55)=abb113(51)*abb113(16)
      abb113(27)=abb113(55)+abb113(27)
      abb113(56)=spbe7l5*abb113(27)
      abb113(57)=abb113(56)*spak1k2
      abb113(54)=abb113(54)-abb113(57)
      abb113(57)=abb113(54)*spbl6k2
      abb113(58)=abb113(51)*abb113(33)
      abb113(59)=abb113(58)*spbe7l5
      abb113(42)=abb113(59)+abb113(42)
      abb113(59)=abb113(42)*spak2k4
      abb113(60)=abb113(51)*abb113(13)
      abb113(61)=abb113(60)*spbe7l5
      abb113(24)=abb113(61)+abb113(24)
      abb113(61)=abb113(24)*spak1k2
      abb113(59)=abb113(59)-abb113(61)
      abb113(61)=abb113(59)*spbl5k2
      abb113(57)=abb113(57)+abb113(61)
      abb113(61)=2.0_ki*spal5e7
      abb113(57)=abb113(61)*abb113(57)
      abb113(41)=abb113(58)+abb113(41)
      abb113(62)=spbe7l6*abb113(41)
      abb113(63)=abb113(62)*spak2k4
      abb113(23)=abb113(60)+abb113(23)
      abb113(64)=spbe7l6*abb113(23)
      abb113(65)=abb113(64)*spak1k2
      abb113(63)=abb113(63)-abb113(65)
      abb113(65)=abb113(63)*spbl5k2
      abb113(66)=abb113(55)*spbe7l6
      abb113(28)=abb113(66)+abb113(28)
      abb113(66)=abb113(28)*spak1k2
      abb113(67)=abb113(52)*spbe7l6
      abb113(46)=abb113(67)+abb113(46)
      abb113(67)=abb113(46)*spak2k4
      abb113(66)=abb113(66)-abb113(67)
      abb113(67)=abb113(66)*spbl6k2
      abb113(65)=abb113(65)-abb113(67)
      abb113(67)=2.0_ki*spal6e7
      abb113(65)=abb113(67)*abb113(65)
      abb113(31)=abb113(31)+abb113(32)+abb113(49)+abb113(50)+abb113(57)+abb113(&
      &65)
      abb113(32)=spak1k7*abb113(30)*spbk7k2
      abb113(49)=spak4k7*abb113(48)*spbk7k2
      abb113(32)=abb113(32)+abb113(49)
      abb113(49)=spbk7l6*spak2k7
      abb113(50)=abb113(49)*spbe7k2
      abb113(57)=abb113(50)*abb113(45)
      abb113(65)=spbk7l5*spak2k7
      abb113(68)=abb113(65)*spbe7k2
      abb113(69)=abb113(68)*abb113(41)
      abb113(57)=abb113(57)+abb113(69)
      abb113(69)=abb113(57)*spak4e7
      abb113(70)=abb113(50)*abb113(27)
      abb113(71)=abb113(68)*abb113(23)
      abb113(70)=abb113(70)+abb113(71)
      abb113(71)=abb113(70)*spak1e7
      abb113(69)=abb113(69)+abb113(71)
      abb113(71)=abb113(31)-abb113(32)+2.0_ki*abb113(69)
      abb113(72)=es71+es12-es712
      abb113(73)=-2.0_ki*abb113(72)*abb113(71)
      abb113(74)=abb113(41)*spbk7l5
      abb113(75)=abb113(45)*spbk7l6
      abb113(74)=abb113(74)+abb113(75)
      abb113(74)=spak4k7*abb113(74)
      abb113(75)=abb113(23)*spbk7l5
      abb113(76)=abb113(27)*spbk7l6
      abb113(75)=abb113(75)+abb113(76)
      abb113(75)=spak1k7*abb113(75)
      abb113(74)=abb113(75)+abb113(74)
      abb113(74)=abb113(72)*abb113(74)
      abb113(75)=abb113(41)*spak2k4
      abb113(76)=abb113(23)*spak1k2
      abb113(75)=abb113(75)-abb113(76)
      abb113(76)=abb113(75)*spbl5k2
      abb113(77)=abb113(45)*spak2k4
      abb113(78)=abb113(27)*spak1k2
      abb113(77)=abb113(77)-abb113(78)
      abb113(78)=abb113(77)*spbl6k2
      abb113(76)=abb113(76)+abb113(78)
      abb113(78)=2.0_ki*abb113(76)
      abb113(79)=es567*abb113(78)
      abb113(80)=abb113(41)*abb113(65)
      abb113(81)=abb113(45)*abb113(49)
      abb113(80)=abb113(80)+abb113(81)
      abb113(81)=spak4l6*spbl6k2
      abb113(82)=spak4l5*spbl5k2
      abb113(81)=abb113(81)+abb113(82)
      abb113(82)=abb113(80)*abb113(81)
      abb113(83)=abb113(23)*abb113(65)
      abb113(84)=abb113(27)*abb113(49)
      abb113(83)=abb113(83)+abb113(84)
      abb113(84)=spak1l6*spbl6k2
      abb113(85)=spak1l5*spbl5k2
      abb113(84)=abb113(84)+abb113(85)
      abb113(85)=abb113(83)*abb113(84)
      abb113(86)=abb113(11)*c2
      abb113(87)=abb113(11)*c4
      abb113(88)=abb113(11)*abb113(51)
      abb113(88)=abb113(88)-abb113(87)+abb113(86)
      abb113(88)=spak2k4*abb113(88)
      abb113(89)=abb113(51)-c4
      abb113(90)=-abb113(12)*abb113(89)
      abb113(91)=abb113(12)*c2
      abb113(90)=-abb113(91)+abb113(90)
      abb113(90)=spak1k2*abb113(90)
      abb113(88)=abb113(88)+abb113(90)
      abb113(90)=4.0_ki*spbl6k2
      abb113(88)=abb113(88)*abb113(90)
      abb113(92)=abb113(9)*spbk4k3
      abb113(93)=mB*abb113(1)
      abb113(94)=abb113(92)*abb113(93)
      abb113(95)=abb113(94)*abb113(5)
      abb113(89)=c2+abb113(89)
      abb113(96)=-spak2k4*abb113(95)*abb113(89)
      abb113(93)=abb113(93)*spbk3k1
      abb113(97)=abb113(9)*abb113(5)
      abb113(98)=abb113(93)*abb113(97)
      abb113(89)=abb113(89)*spak1k2
      abb113(99)=abb113(98)*abb113(89)
      abb113(88)=abb113(88)+abb113(96)+abb113(99)
      abb113(88)=spbl5k2*abb113(88)
      abb113(96)=c2-c4
      abb113(99)=abb113(4)*abb113(96)
      abb113(100)=abb113(51)*abb113(4)
      abb113(101)=-abb113(100)-abb113(99)
      abb113(101)=spak2k4*abb113(94)*abb113(101)
      abb113(93)=abb113(93)*abb113(9)*abb113(4)
      abb113(89)=abb113(93)*abb113(89)
      abb113(89)=abb113(101)+abb113(89)
      abb113(89)=spbl6k2*abb113(89)
      abb113(88)=abb113(89)+abb113(88)
      abb113(89)=4.0_ki*spak2l6
      abb113(77)=abb113(77)*spbl6k2**2*abb113(89)
      abb113(101)=4.0_ki*spak2l5
      abb113(75)=abb113(75)*spbl5k2**2*abb113(101)
      abb113(74)=abb113(79)+abb113(75)+abb113(77)+2.0_ki*abb113(88)+abb113(74)+&
      &abb113(85)+abb113(82)
      abb113(74)=2.0_ki*abb113(74)
      abb113(71)=-4.0_ki*abb113(71)
      abb113(75)=8.0_ki*abb113(76)
      abb113(31)=-abb113(31)+3.0_ki*abb113(32)
      abb113(32)=-5.0_ki*abb113(69)+abb113(31)
      abb113(32)=2.0_ki*abb113(32)
      abb113(58)=abb113(58)-abb113(40)
      abb113(33)=abb113(33)*c1
      abb113(69)=abb113(40)*abb113(6)
      abb113(33)=abb113(33)-abb113(69)
      abb113(77)=abb113(33)*abb113(6)
      abb113(79)=-2.0_ki*abb113(77)+abb113(39)-abb113(58)
      abb113(79)=spak4l6*abb113(79)
      abb113(52)=abb113(52)-abb113(44)
      abb113(82)=abb113(44)*abb113(6)
      abb113(35)=abb113(35)*c1
      abb113(35)=abb113(82)-abb113(35)
      abb113(85)=abb113(35)*abb113(6)
      abb113(88)=-2.0_ki*abb113(85)-abb113(43)+abb113(52)
      abb113(88)=spak4l5*abb113(88)
      abb113(60)=abb113(60)-abb113(22)
      abb113(13)=abb113(13)*c1
      abb113(102)=abb113(22)*abb113(6)
      abb113(13)=abb113(13)-abb113(102)
      abb113(103)=abb113(13)*abb113(6)
      abb113(104)=-2.0_ki*abb113(103)+abb113(21)-abb113(60)
      abb113(104)=spak1l6*abb113(104)
      abb113(55)=abb113(55)-abb113(26)
      abb113(105)=abb113(26)*abb113(6)
      abb113(16)=abb113(16)*c1
      abb113(16)=abb113(105)-abb113(16)
      abb113(106)=abb113(16)*abb113(6)
      abb113(107)=-2.0_ki*abb113(106)-abb113(25)+abb113(55)
      abb113(107)=spak1l5*abb113(107)
      abb113(79)=abb113(107)+abb113(104)+abb113(79)+abb113(88)
      abb113(79)=spbl6l5*abb113(79)
      abb113(88)=4.0_ki*abb113(6)
      abb113(35)=abb113(88)*abb113(35)
      abb113(104)=abb113(35)+5.0_ki*abb113(43)+abb113(52)
      abb113(104)=spbk7l6*abb113(104)
      abb113(33)=abb113(33)*abb113(88)
      abb113(107)=-abb113(33)+5.0_ki*abb113(39)+abb113(58)
      abb113(107)=spbk7l5*abb113(107)
      abb113(104)=abb113(104)+abb113(107)
      abb113(104)=spak4k7*abb113(104)
      abb113(16)=abb113(88)*abb113(16)
      abb113(107)=abb113(16)+5.0_ki*abb113(25)+abb113(55)
      abb113(107)=spbk7l6*abb113(107)
      abb113(13)=abb113(13)*abb113(88)
      abb113(88)=-abb113(13)+5.0_ki*abb113(21)+abb113(60)
      abb113(88)=spbk7l5*abb113(88)
      abb113(88)=abb113(107)+abb113(88)
      abb113(88)=spak1k7*abb113(88)
      abb113(79)=abb113(79)+abb113(104)+abb113(88)
      abb113(10)=abb113(10)*mB**3
      abb113(88)=abb113(92)*abb113(10)
      abb113(92)=abb113(88)*abb113(5)
      abb113(104)=abb113(100)*abb113(92)
      abb113(107)=-abb113(92)*abb113(99)
      abb113(104)=abb113(104)-abb113(107)
      abb113(108)=-spak2k4*abb113(104)
      abb113(10)=spbk3k1*abb113(10)
      abb113(97)=abb113(10)*abb113(97)
      abb113(100)=abb113(100)*abb113(97)
      abb113(109)=-abb113(97)*abb113(99)
      abb113(100)=abb113(100)-abb113(109)
      abb113(110)=spak1k2*abb113(100)
      abb113(108)=abb113(108)+abb113(110)
      abb113(110)=abb113(88)*c2
      abb113(111)=abb113(4)**2
      abb113(112)=abb113(110)*abb113(111)
      abb113(113)=abb113(111)*abb113(88)
      abb113(114)=abb113(113)*c4
      abb113(112)=abb113(112)-abb113(114)
      abb113(114)=abb113(113)*abb113(51)
      abb113(114)=abb113(114)+abb113(112)
      abb113(115)=-spak2k4*abb113(114)
      abb113(9)=abb113(10)*abb113(9)
      abb113(10)=c1*abb113(9)
      abb113(116)=abb113(10)*NC
      abb113(117)=abb113(116)*abb113(111)
      abb113(9)=abb113(96)*abb113(9)
      abb113(118)=-abb113(111)*abb113(9)
      abb113(117)=abb113(117)-abb113(118)
      abb113(119)=spak1k2*abb113(117)
      abb113(115)=abb113(115)+abb113(119)
      abb113(90)=abb113(7)*abb113(115)*abb113(90)
      abb113(115)=abb113(5)**2
      abb113(110)=abb113(110)*abb113(115)
      abb113(88)=abb113(115)*abb113(88)
      abb113(119)=abb113(88)*c4
      abb113(110)=abb113(110)-abb113(119)
      abb113(51)=abb113(88)*abb113(51)
      abb113(51)=abb113(51)+abb113(110)
      abb113(119)=-spak2k4*abb113(51)
      abb113(116)=abb113(116)*abb113(115)
      abb113(9)=-abb113(115)*abb113(9)
      abb113(116)=abb113(116)-abb113(9)
      abb113(120)=spak1k2*abb113(116)
      abb113(119)=abb113(119)+abb113(120)
      abb113(119)=abb113(8)*spbl5k2*abb113(119)
      abb113(76)=4.0_ki*abb113(119)+abb113(90)+8.0_ki*abb113(108)+abb113(76)+2.&
      &0_ki*abb113(79)
      abb113(76)=4.0_ki*abb113(76)
      abb113(79)=abb113(44)*spbe7l6
      abb113(90)=abb113(40)*spbe7l5
      abb113(79)=abb113(79)+abb113(90)
      abb113(79)=abb113(79)*abb113(6)
      abb113(37)=abb113(79)-abb113(37)
      abb113(37)=abb113(37)*abb113(6)
      abb113(79)=abb113(43)*spbe7l6
      abb113(90)=abb113(39)*spbe7l5
      abb113(108)=abb113(37)+abb113(79)+abb113(90)
      abb113(119)=abb113(108)*spak4e7
      abb113(120)=abb113(26)*spbe7l6
      abb113(121)=abb113(22)*spbe7l5
      abb113(120)=abb113(120)+abb113(121)
      abb113(120)=abb113(120)*abb113(6)
      abb113(19)=abb113(120)-abb113(19)
      abb113(19)=abb113(19)*abb113(6)
      abb113(120)=abb113(25)*spbe7l6
      abb113(121)=abb113(21)*spbe7l5
      abb113(122)=abb113(19)+abb113(120)+abb113(121)
      abb113(123)=abb113(122)*spak1e7
      abb113(119)=abb113(119)+abb113(123)
      abb113(123)=-16.0_ki*abb113(119)
      abb113(124)=4.0_ki*abb113(72)
      abb113(125)=-abb113(119)*abb113(124)
      abb113(87)=abb113(87)*abb113(6)
      abb113(11)=abb113(11)*c1
      abb113(11)=abb113(87)-abb113(11)
      abb113(11)=abb113(11)*abb113(6)
      abb113(11)=abb113(11)+abb113(86)
      abb113(86)=-spbe7l5*abb113(11)
      abb113(87)=spbl6k2*abb113(86)
      abb113(126)=-spbe7l6*abb113(11)
      abb113(127)=spbl5k2*abb113(126)
      abb113(87)=abb113(87)+abb113(127)
      abb113(57)=4.0_ki*abb113(87)-5.0_ki*abb113(57)
      abb113(57)=spak4e7*abb113(57)
      abb113(87)=abb113(6)*c4
      abb113(87)=abb113(87)-c1
      abb113(12)=abb113(6)*abb113(12)*abb113(87)
      abb113(12)=abb113(12)+abb113(91)
      abb113(87)=-spbe7l5*abb113(12)
      abb113(91)=spbl6k2*abb113(87)
      abb113(127)=-spbe7l6*abb113(12)
      abb113(128)=spbl5k2*abb113(127)
      abb113(91)=abb113(91)+abb113(128)
      abb113(70)=4.0_ki*abb113(91)-5.0_ki*abb113(70)
      abb113(70)=spak1e7*abb113(70)
      abb113(91)=abb113(77)-abb113(39)
      abb113(128)=abb113(91)*spbl5k2
      abb113(129)=abb113(85)+abb113(43)
      abb113(130)=abb113(129)*spbl6k2
      abb113(128)=abb113(128)-abb113(130)
      abb113(130)=spak4e7*abb113(128)
      abb113(131)=abb113(103)-abb113(21)
      abb113(132)=abb113(131)*spbl5k2
      abb113(133)=abb113(106)+abb113(25)
      abb113(134)=abb113(133)*spbl6k2
      abb113(132)=abb113(132)-abb113(134)
      abb113(134)=spak1e7*abb113(132)
      abb113(130)=abb113(130)+abb113(134)
      abb113(134)=4.0_ki*spbk7e7
      abb113(130)=abb113(134)*spak2k7*abb113(130)
      abb113(82)=abb113(82)*spbe7l6
      abb113(36)=abb113(82)-abb113(36)
      abb113(36)=abb113(36)*abb113(6)
      abb113(36)=abb113(36)+abb113(79)
      abb113(79)=abb113(36)*spak4e7
      abb113(82)=abb113(105)*spbe7l6
      abb113(18)=abb113(82)-abb113(18)
      abb113(18)=abb113(18)*abb113(6)
      abb113(18)=abb113(18)+abb113(120)
      abb113(82)=abb113(18)*spak1e7
      abb113(79)=abb113(79)+abb113(82)
      abb113(82)=-abb113(89)*spbl6k2*abb113(79)
      abb113(69)=abb113(69)*spbe7l5
      abb113(34)=abb113(69)-abb113(34)
      abb113(34)=abb113(34)*abb113(6)
      abb113(34)=abb113(34)+abb113(90)
      abb113(69)=abb113(34)*spak4e7
      abb113(90)=abb113(102)*spbe7l5
      abb113(15)=abb113(90)-abb113(15)
      abb113(15)=abb113(15)*abb113(6)
      abb113(15)=abb113(15)+abb113(121)
      abb113(90)=abb113(15)*spak1e7
      abb113(69)=abb113(69)+abb113(90)
      abb113(90)=-abb113(101)*spbl5k2*abb113(69)
      abb113(31)=abb113(90)+abb113(82)+abb113(130)+abb113(57)+abb113(70)+abb113&
      &(125)+abb113(31)
      abb113(57)=-8.0_ki*abb113(119)
      abb113(70)=3.0_ki*abb113(43)
      abb113(82)=abb113(35)+abb113(70)-abb113(52)
      abb113(82)=abb113(82)*abb113(49)
      abb113(90)=3.0_ki*abb113(39)
      abb113(102)=-abb113(33)+abb113(90)-abb113(58)
      abb113(102)=abb113(102)*abb113(65)
      abb113(82)=abb113(82)+abb113(102)
      abb113(82)=spak4k7*abb113(82)
      abb113(102)=3.0_ki*abb113(25)
      abb113(105)=abb113(16)+abb113(102)-abb113(55)
      abb113(105)=abb113(105)*abb113(49)
      abb113(119)=3.0_ki*abb113(21)
      abb113(120)=-abb113(13)+abb113(119)-abb113(60)
      abb113(120)=abb113(120)*abb113(65)
      abb113(105)=abb113(105)+abb113(120)
      abb113(105)=spak1k7*abb113(105)
      abb113(82)=abb113(82)+abb113(105)
      abb113(82)=spbk7e7*abb113(82)
      abb113(29)=abb113(29)*spak1k2
      abb113(47)=abb113(47)*spak2k4
      abb113(29)=abb113(29)-abb113(47)
      abb113(47)=2.0_ki*es567
      abb113(47)=-abb113(29)*abb113(47)
      abb113(105)=abb113(126)*spbk7l5
      abb113(86)=abb113(86)*spbk7l6
      abb113(86)=abb113(105)+abb113(86)
      abb113(105)=spak4k7*abb113(86)
      abb113(120)=abb113(127)*spbk7l5
      abb113(87)=abb113(87)*spbk7l6
      abb113(87)=abb113(120)+abb113(87)
      abb113(120)=spak1k7*abb113(87)
      abb113(105)=abb113(105)+abb113(120)
      abb113(120)=abb113(27)*spbe7k2
      abb113(121)=abb113(120)*spak1k2
      abb113(125)=abb113(45)*spbe7k2
      abb113(126)=abb113(125)*spak2k4
      abb113(121)=abb113(121)-abb113(126)
      abb113(126)=abb113(121)*abb113(49)
      abb113(127)=abb113(23)*spbe7k2
      abb113(130)=abb113(127)*spak1k2
      abb113(135)=spak2k4*spbe7k2
      abb113(136)=abb113(135)*abb113(41)
      abb113(130)=abb113(130)-abb113(136)
      abb113(136)=abb113(130)*abb113(65)
      abb113(126)=abb113(126)+abb113(136)
      abb113(136)=c1*abb113(4)
      abb113(137)=abb113(136)*spbe7l6
      abb113(138)=-abb113(94)*abb113(137)
      abb113(139)=-abb113(14)*abb113(95)
      abb113(138)=abb113(138)+abb113(139)
      abb113(138)=NC*abb113(138)
      abb113(94)=-spbe7l6*abb113(94)*abb113(99)
      abb113(99)=abb113(96)*spbe7l5
      abb113(95)=-abb113(95)*abb113(99)
      abb113(94)=abb113(138)+abb113(94)+abb113(95)
      abb113(94)=spak2k4*abb113(94)
      abb113(95)=abb113(17)*abb113(93)
      abb113(138)=abb113(14)*abb113(98)
      abb113(95)=abb113(95)+abb113(138)
      abb113(95)=NC*abb113(95)
      abb113(93)=spbe7l6*abb113(93)*abb113(96)
      abb113(96)=abb113(98)*abb113(99)
      abb113(93)=abb113(95)+abb113(93)+abb113(96)
      abb113(93)=spak1k2*abb113(93)
      abb113(93)=abb113(94)+abb113(93)
      abb113(94)=abb113(114)*abb113(135)
      abb113(95)=spak1k2*spbe7k2
      abb113(96)=abb113(117)*abb113(95)
      abb113(94)=abb113(94)-abb113(96)
      abb113(96)=-abb113(94)*abb113(49)
      abb113(98)=abb113(104)*abb113(135)
      abb113(99)=abb113(100)*abb113(95)
      abb113(98)=abb113(98)-abb113(99)
      abb113(99)=-abb113(98)*abb113(65)
      abb113(96)=abb113(96)+abb113(99)
      abb113(96)=abb113(7)*abb113(96)
      abb113(99)=-abb113(98)*abb113(49)
      abb113(51)=abb113(51)*abb113(135)
      abb113(95)=abb113(116)*abb113(95)
      abb113(51)=abb113(51)-abb113(95)
      abb113(95)=-abb113(51)*abb113(65)
      abb113(95)=abb113(99)+abb113(95)
      abb113(95)=abb113(8)*abb113(95)
      abb113(99)=abb113(46)*abb113(49)
      abb113(100)=abb113(62)*abb113(65)
      abb113(99)=abb113(99)+abb113(100)
      abb113(99)=spak4l6*abb113(99)
      abb113(100)=abb113(53)*abb113(49)
      abb113(104)=abb113(42)*abb113(65)
      abb113(100)=abb113(100)+abb113(104)
      abb113(100)=spak4l5*abb113(100)
      abb113(104)=abb113(28)*abb113(49)
      abb113(114)=abb113(64)*abb113(65)
      abb113(104)=abb113(104)+abb113(114)
      abb113(104)=spak1l6*abb113(104)
      abb113(114)=abb113(56)*abb113(49)
      abb113(116)=abb113(24)*abb113(65)
      abb113(114)=abb113(114)+abb113(116)
      abb113(114)=spak1l5*abb113(114)
      abb113(36)=-spak4k7*abb113(36)
      abb113(18)=-spak1k7*abb113(18)
      abb113(18)=abb113(36)+abb113(18)
      abb113(18)=abb113(89)*spbk7l6*abb113(18)
      abb113(34)=-spak4k7*abb113(34)
      abb113(15)=-spak1k7*abb113(15)
      abb113(15)=abb113(34)+abb113(15)
      abb113(15)=abb113(101)*spbk7l5*abb113(15)
      abb113(15)=abb113(47)+abb113(15)+abb113(18)+abb113(95)+abb113(96)+abb113(&
      &114)+abb113(104)+abb113(100)+abb113(99)+abb113(82)+2.0_ki*abb113(93)+3.0&
      &_ki*abb113(126)+4.0_ki*abb113(105)
      abb113(18)=-spak2k4*abb113(108)
      abb113(34)=spak1k2*abb113(122)
      abb113(18)=abb113(18)+abb113(34)
      abb113(18)=8.0_ki*abb113(18)
      abb113(29)=4.0_ki*abb113(29)
      abb113(34)=spbe7l6*abb113(10)*abb113(111)
      abb113(36)=abb113(136)*spbe7l5
      abb113(47)=abb113(36)*abb113(97)
      abb113(34)=abb113(34)+abb113(47)
      abb113(34)=abb113(34)*NC
      abb113(47)=abb113(109)*spbe7l5
      abb113(82)=abb113(118)*spbe7l6
      abb113(34)=abb113(34)-abb113(47)-abb113(82)
      abb113(34)=abb113(34)*spak1k2
      abb113(17)=abb113(113)*abb113(17)
      abb113(36)=abb113(36)*abb113(92)
      abb113(17)=abb113(17)+abb113(36)
      abb113(17)=abb113(17)*NC
      abb113(36)=abb113(112)*spbe7l6
      abb113(47)=abb113(107)*spbe7l5
      abb113(17)=abb113(17)-abb113(47)+abb113(36)
      abb113(17)=abb113(17)*spak2k4
      abb113(17)=abb113(34)-abb113(17)
      abb113(17)=abb113(17)*abb113(7)
      abb113(10)=spbe7l5*abb113(10)*abb113(115)
      abb113(34)=abb113(137)*abb113(97)
      abb113(10)=abb113(10)+abb113(34)
      abb113(10)=abb113(10)*NC
      abb113(34)=abb113(109)*spbe7l6
      abb113(9)=abb113(9)*spbe7l5
      abb113(9)=abb113(10)-abb113(34)-abb113(9)
      abb113(9)=abb113(9)*spak1k2
      abb113(10)=abb113(88)*abb113(14)
      abb113(14)=abb113(137)*abb113(92)
      abb113(10)=abb113(10)+abb113(14)
      abb113(10)=abb113(10)*NC
      abb113(14)=abb113(110)*spbe7l5
      abb113(34)=abb113(107)*spbe7l6
      abb113(10)=abb113(10)-abb113(34)+abb113(14)
      abb113(10)=abb113(10)*spak2k4
      abb113(9)=abb113(9)-abb113(10)
      abb113(9)=abb113(9)*abb113(8)
      abb113(9)=abb113(17)+abb113(9)
      abb113(10)=4.0_ki*abb113(9)
      abb113(14)=abb113(44)-abb113(70)
      abb113(14)=spbe7l6*abb113(14)
      abb113(17)=abb113(40)-abb113(90)
      abb113(17)=spbe7l5*abb113(17)
      abb113(14)=-2.0_ki*abb113(37)-abb113(38)+abb113(14)+abb113(17)
      abb113(14)=spak2k4*abb113(14)
      abb113(17)=-abb113(26)+abb113(102)
      abb113(17)=spbe7l6*abb113(17)
      abb113(22)=-abb113(22)+abb113(119)
      abb113(22)=spbe7l5*abb113(22)
      abb113(17)=2.0_ki*abb113(19)+abb113(20)+abb113(17)+abb113(22)
      abb113(17)=spak1k2*abb113(17)
      abb113(14)=abb113(14)+abb113(17)
      abb113(14)=2.0_ki*abb113(14)
      abb113(17)=abb113(85)+abb113(52)+2.0_ki*abb113(43)
      abb113(19)=-abb113(17)*abb113(49)
      abb113(20)=-abb113(77)+abb113(58)+2.0_ki*abb113(39)
      abb113(22)=-abb113(20)*abb113(65)
      abb113(19)=abb113(19)+abb113(22)
      abb113(19)=spak4e7*abb113(19)
      abb113(22)=abb113(106)+abb113(55)+2.0_ki*abb113(25)
      abb113(26)=-abb113(22)*abb113(49)
      abb113(34)=-abb113(103)+abb113(60)+2.0_ki*abb113(21)
      abb113(36)=-abb113(34)*abb113(65)
      abb113(26)=abb113(26)+abb113(36)
      abb113(26)=spak1e7*abb113(26)
      abb113(19)=abb113(19)+abb113(26)
      abb113(19)=spbk7e7*abb113(19)
      abb113(26)=-spak4e7*abb113(86)
      abb113(36)=-spak1e7*abb113(87)
      abb113(37)=spak2l6*spbk7l6*abb113(79)
      abb113(38)=spak2l5*spbk7l5*abb113(69)
      abb113(19)=abb113(19)+abb113(26)+abb113(36)+abb113(37)+abb113(38)
      abb113(9)=-spak2e7*abb113(9)
      abb113(26)=spak2k4*abb113(48)
      abb113(36)=-spak1k2*abb113(30)
      abb113(9)=abb113(26)+abb113(36)+abb113(9)
      abb113(9)=spbk7k2*abb113(9)
      abb113(26)=-spak4l6*spbk7l6
      abb113(36)=-spak4l5*spbk7l5
      abb113(26)=abb113(36)+abb113(26)
      abb113(26)=abb113(48)*abb113(26)
      abb113(36)=-spak1l6*spbk7l6
      abb113(37)=-spak1l5*spbk7l5
      abb113(36)=abb113(37)+abb113(36)
      abb113(36)=abb113(30)*abb113(36)
      abb113(37)=spbk7l6*abb113(66)
      abb113(38)=-spbk7l5*abb113(63)
      abb113(37)=abb113(37)+abb113(38)
      abb113(37)=abb113(37)*abb113(67)
      abb113(38)=-spbk7l6*abb113(54)
      abb113(40)=-spbk7l5*abb113(59)
      abb113(38)=abb113(38)+abb113(40)
      abb113(38)=abb113(38)*abb113(61)
      abb113(9)=abb113(38)+abb113(37)+abb113(9)+abb113(36)+abb113(26)+2.0_ki*ab&
      &b113(19)
      abb113(9)=2.0_ki*abb113(9)
      abb113(19)=spak2k4*abb113(129)
      abb113(26)=-spak1k2*abb113(133)
      abb113(19)=abb113(19)+abb113(26)
      abb113(19)=spbk7l6*abb113(19)
      abb113(26)=-spak2k4*abb113(91)
      abb113(36)=spak1k2*abb113(131)
      abb113(26)=abb113(26)+abb113(36)
      abb113(26)=spbk7l5*abb113(26)
      abb113(19)=abb113(19)+abb113(26)
      abb113(19)=16.0_ki*abb113(19)
      abb113(26)=spak2k4*abb113(20)
      abb113(36)=-spak1k2*abb113(34)
      abb113(26)=abb113(26)+abb113(36)
      abb113(36)=8.0_ki*spbl6l5
      abb113(26)=abb113(26)*abb113(36)
      abb113(37)=-spak2k4*abb113(17)
      abb113(38)=spak1k2*abb113(22)
      abb113(37)=abb113(37)+abb113(38)
      abb113(36)=abb113(37)*abb113(36)
      abb113(37)=abb113(129)*abb113(50)
      abb113(38)=-abb113(91)*abb113(68)
      abb113(37)=abb113(37)+abb113(38)
      abb113(38)=4.0_ki*spae7k7
      abb113(37)=abb113(37)*abb113(38)
      abb113(40)=8.0_ki*spak2k7
      abb113(44)=-abb113(128)*abb113(40)
      abb113(47)=spae7k7*spbe7k2
      abb113(49)=abb113(47)*spbk7l5
      abb113(54)=abb113(11)*abb113(49)
      abb113(59)=abb113(47)*spbk7l6
      abb113(61)=abb113(59)*spak2l6
      abb113(63)=abb113(129)*abb113(61)
      abb113(54)=abb113(54)+abb113(63)
      abb113(54)=4.0_ki*abb113(54)
      abb113(63)=spak2l6*spbl6k2
      abb113(63)=abb113(63)-abb113(72)
      abb113(65)=abb113(129)*abb113(63)
      abb113(66)=spbl5k2*abb113(11)
      abb113(65)=abb113(66)+abb113(65)
      abb113(65)=8.0_ki*abb113(65)
      abb113(66)=abb113(11)*abb113(59)
      abb113(67)=abb113(49)*spak2l5
      abb113(69)=-abb113(91)*abb113(67)
      abb113(66)=abb113(66)+abb113(69)
      abb113(66)=4.0_ki*abb113(66)
      abb113(69)=spak2l5*spbl5k2
      abb113(69)=abb113(69)-abb113(72)
      abb113(70)=-abb113(91)*abb113(69)
      abb113(11)=spbl6k2*abb113(11)
      abb113(11)=abb113(11)+abb113(70)
      abb113(11)=8.0_ki*abb113(11)
      abb113(70)=-8.0_ki*abb113(80)
      abb113(72)=2.0_ki*abb113(48)
      abb113(79)=abb113(120)*spak1e7
      abb113(80)=abb113(125)*spak4e7
      abb113(79)=abb113(79)+abb113(80)
      abb113(80)=-abb113(79)*abb113(124)
      abb113(82)=spak4k7*spbk7k2
      abb113(81)=abb113(82)+abb113(81)
      abb113(45)=abb113(45)*abb113(81)
      abb113(82)=spak1k7*spbk7k2
      abb113(82)=abb113(82)+abb113(84)
      abb113(27)=abb113(27)*abb113(82)
      abb113(27)=abb113(27)+abb113(45)
      abb113(27)=2.0_ki*abb113(27)
      abb113(45)=-8.0_ki*abb113(79)
      abb113(79)=-6.0_ki*abb113(79)
      abb113(84)=-3.0_ki*abb113(52)
      abb113(86)=-abb113(35)-7.0_ki*abb113(43)+abb113(84)
      abb113(87)=spak4e7*spbe7k2
      abb113(86)=abb113(86)*abb113(87)
      abb113(88)=-3.0_ki*abb113(55)
      abb113(89)=-abb113(16)-7.0_ki*abb113(25)+abb113(88)
      abb113(90)=spak1e7*spbe7k2
      abb113(89)=abb113(89)*abb113(90)
      abb113(86)=abb113(86)+abb113(89)
      abb113(35)=abb113(35)+abb113(43)+abb113(84)
      abb113(35)=spak4k7*abb113(35)
      abb113(16)=abb113(16)+abb113(25)+abb113(88)
      abb113(16)=spak1k7*abb113(16)
      abb113(16)=abb113(35)+abb113(16)
      abb113(16)=spbk7e7*abb113(16)
      abb113(25)=abb113(7)*abb113(94)
      abb113(35)=abb113(8)*abb113(98)
      abb113(43)=-spak4l6*abb113(46)
      abb113(46)=-spak4l5*abb113(53)
      abb113(28)=-spak1l6*abb113(28)
      abb113(53)=-spak1l5*abb113(56)
      abb113(16)=abb113(35)+abb113(25)+abb113(53)+abb113(28)+abb113(46)+abb113(&
      &43)+abb113(16)+abb113(121)
      abb113(17)=-spak4e7*abb113(17)
      abb113(22)=-spak1e7*abb113(22)
      abb113(17)=abb113(17)+abb113(22)
      abb113(17)=abb113(17)*abb113(134)
      abb113(22)=4.0_ki*abb113(47)
      abb113(25)=abb113(129)*abb113(22)
      abb113(28)=abb113(85)-abb113(52)
      abb113(28)=8.0_ki*abb113(28)
      abb113(35)=abb113(127)*spak1e7
      abb113(43)=abb113(87)*abb113(41)
      abb113(35)=abb113(35)+abb113(43)
      abb113(43)=-abb113(35)*abb113(124)
      abb113(41)=abb113(41)*abb113(81)
      abb113(23)=abb113(23)*abb113(82)
      abb113(23)=abb113(23)+abb113(41)
      abb113(23)=2.0_ki*abb113(23)
      abb113(41)=-8.0_ki*abb113(35)
      abb113(35)=-6.0_ki*abb113(35)
      abb113(46)=-3.0_ki*abb113(58)
      abb113(47)=abb113(33)-7.0_ki*abb113(39)+abb113(46)
      abb113(47)=abb113(47)*abb113(87)
      abb113(52)=-3.0_ki*abb113(60)
      abb113(53)=abb113(13)-7.0_ki*abb113(21)+abb113(52)
      abb113(53)=abb113(53)*abb113(90)
      abb113(47)=abb113(47)+abb113(53)
      abb113(33)=-abb113(33)+abb113(39)+abb113(46)
      abb113(33)=spak4k7*abb113(33)
      abb113(13)=-abb113(13)+abb113(21)+abb113(52)
      abb113(13)=spak1k7*abb113(13)
      abb113(13)=abb113(33)+abb113(13)
      abb113(13)=spbk7e7*abb113(13)
      abb113(21)=abb113(7)*abb113(98)
      abb113(33)=abb113(8)*abb113(51)
      abb113(39)=-spak4l6*abb113(62)
      abb113(42)=-spak4l5*abb113(42)
      abb113(46)=-spak1l6*abb113(64)
      abb113(24)=-spak1l5*abb113(24)
      abb113(13)=abb113(33)+abb113(21)+abb113(24)+abb113(46)+abb113(42)+abb113(&
      &39)+abb113(13)+abb113(130)
      abb113(20)=-spak4e7*abb113(20)
      abb113(21)=-spak1e7*abb113(34)
      abb113(20)=abb113(20)+abb113(21)
      abb113(20)=abb113(20)*abb113(134)
      abb113(21)=-abb113(91)*abb113(22)
      abb113(24)=-abb113(77)-abb113(58)
      abb113(24)=8.0_ki*abb113(24)
      abb113(33)=abb113(133)*abb113(50)
      abb113(34)=-abb113(131)*abb113(68)
      abb113(33)=abb113(33)+abb113(34)
      abb113(33)=abb113(33)*abb113(38)
      abb113(34)=-abb113(132)*abb113(40)
      abb113(38)=abb113(133)*abb113(22)
      abb113(22)=-abb113(131)*abb113(22)
      abb113(39)=abb113(12)*abb113(49)
      abb113(40)=abb113(133)*abb113(61)
      abb113(39)=abb113(39)+abb113(40)
      abb113(39)=4.0_ki*abb113(39)
      abb113(40)=abb113(133)*abb113(63)
      abb113(42)=spbl5k2*abb113(12)
      abb113(40)=abb113(42)+abb113(40)
      abb113(40)=8.0_ki*abb113(40)
      abb113(42)=abb113(12)*abb113(59)
      abb113(46)=-abb113(131)*abb113(67)
      abb113(42)=abb113(42)+abb113(46)
      abb113(42)=4.0_ki*abb113(42)
      abb113(46)=-abb113(131)*abb113(69)
      abb113(12)=spbl6k2*abb113(12)
      abb113(12)=abb113(12)+abb113(46)
      abb113(12)=8.0_ki*abb113(12)
      abb113(46)=-8.0_ki*abb113(83)
      abb113(49)=2.0_ki*abb113(30)
      abb113(50)=abb113(106)-abb113(55)
      abb113(50)=8.0_ki*abb113(50)
      abb113(51)=-abb113(103)-abb113(60)
      abb113(51)=8.0_ki*abb113(51)
      R2d113=0.0_ki
      rat2 = rat2 + R2d113
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='113' value='", &
          & R2d113, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd113h3
