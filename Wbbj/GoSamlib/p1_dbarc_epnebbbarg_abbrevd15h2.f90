module     p1_dbarc_epnebbbarg_abbrevd15h2
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(147), public :: abb15
   complex(ki), public :: R2d15
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
      abb15(1)=1.0_ki/(-es71+es712-es12)
      abb15(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb15(3)=NC**(-1)
      abb15(4)=es56**(-1)
      abb15(5)=spak2l5**(-1)
      abb15(6)=spbl5k2**(-1)
      abb15(7)=spak2l6**(-1)
      abb15(8)=spbl6k2**(-1)
      abb15(9)=spak1l5*abb15(7)
      abb15(10)=abb15(5)*abb15(6)
      abb15(11)=abb15(10)*spak1l5
      abb15(12)=abb15(11)*spbl6k2
      abb15(13)=abb15(12)+abb15(9)
      abb15(14)=c1*abb15(3)
      abb15(15)=c4*abb15(3)**2
      abb15(14)=abb15(15)-abb15(14)
      abb15(15)=TR*gW
      abb15(14)=abb15(14)*abb15(15)**2*i_*CVDC*abb15(4)*abb15(2)
      abb15(15)=abb15(14)*abb15(1)*mB**2
      abb15(16)=-spbe7k2*abb15(15)
      abb15(17)=spbk7k3*spae7k7
      abb15(18)=abb15(17)*spak2k4
      abb15(19)=abb15(18)*abb15(16)
      abb15(13)=abb15(19)*abb15(13)
      abb15(20)=abb15(7)*abb15(6)
      abb15(21)=abb15(20)*spak1k4
      abb15(22)=abb15(16)*abb15(21)
      abb15(23)=abb15(22)*abb15(17)
      abb15(24)=abb15(23)*es12
      abb15(25)=spak1k2*abb15(7)
      abb15(26)=abb15(16)*abb15(25)
      abb15(27)=abb15(17)*spak4l5
      abb15(28)=-abb15(26)*abb15(27)
      abb15(13)=abb15(28)+abb15(24)+abb15(13)
      abb15(13)=es71*abb15(13)
      abb15(28)=abb15(16)*spak2k4
      abb15(29)=spak1k2*abb15(6)
      abb15(30)=abb15(29)*spbk3k2
      abb15(31)=abb15(5)*spbl6k2
      abb15(32)=-abb15(31)*abb15(28)*abb15(30)
      abb15(33)=abb15(25)*spbk3k2
      abb15(34)=abb15(33)*abb15(28)
      abb15(32)=abb15(32)-abb15(34)
      abb15(32)=spae7k7*spak1l5*abb15(32)
      abb15(35)=abb15(20)*spak1k2
      abb15(36)=abb15(35)*spbk3k2
      abb15(37)=abb15(36)*abb15(16)
      abb15(38)=abb15(37)*spae7k7
      abb15(39)=es12*spak1k4
      abb15(40)=-abb15(39)*abb15(38)
      abb15(41)=abb15(16)*spae7k7
      abb15(42)=abb15(41)*spak1k2**2
      abb15(43)=spbk3k2*abb15(7)
      abb15(44)=spak4l5*abb15(43)*abb15(42)
      abb15(32)=abb15(44)+abb15(40)+abb15(32)
      abb15(32)=spbk7k1*abb15(32)
      abb15(40)=-abb15(1)*abb15(14)*spbe7k2
      abb15(44)=abb15(40)*spak1l5
      abb15(45)=abb15(44)*es71
      abb15(46)=-abb15(27)*abb15(45)
      abb15(47)=abb15(40)*spae7k7
      abb15(48)=spbk3k2*spak1k2
      abb15(49)=abb15(47)*abb15(48)
      abb15(50)=abb15(49)*spbk7k1
      abb15(51)=abb15(50)*spak1l5
      abb15(52)=spak4l5*abb15(51)
      abb15(46)=abb15(46)+abb15(52)
      abb15(46)=spbl6l5*abb15(46)
      abb15(45)=-abb15(17)*abb15(45)
      abb15(45)=abb15(45)+abb15(51)
      abb15(51)=spbl6k1*spak1k4
      abb15(45)=abb15(45)*abb15(51)
      abb15(52)=abb15(16)*abb15(35)
      abb15(53)=abb15(52)*spbl6k2
      abb15(54)=abb15(53)*abb15(17)
      abb15(55)=-es71*abb15(54)
      abb15(56)=abb15(20)*spbk3k2
      abb15(42)=spbk7k1*spbl6k2*abb15(56)*abb15(42)
      abb15(42)=abb15(55)+abb15(42)
      abb15(42)=spak4l6*abb15(42)
      abb15(13)=abb15(42)+abb15(45)+abb15(46)+abb15(32)+abb15(13)
      abb15(13)=4.0_ki*abb15(13)
      abb15(32)=spbl6k3*abb15(6)
      abb15(42)=abb15(35)*spbk3k1
      abb15(32)=-abb15(32)+abb15(42)
      abb15(32)=spak1k7*abb15(32)
      abb15(45)=abb15(20)*spak1k7
      abb15(46)=-spbl5k3*spak2l5*abb15(45)
      abb15(32)=abb15(46)+abb15(32)
      abb15(32)=-abb15(32)*abb15(15)*spbk7k2**2
      abb15(46)=spbk3k1*spak1l5
      abb15(55)=2.0_ki*abb15(46)
      abb15(57)=abb15(55)*abb15(25)
      abb15(58)=-abb15(15)*spbk7k2
      abb15(59)=-abb15(58)*abb15(57)
      abb15(60)=abb15(58)*abb15(30)
      abb15(14)=abb15(14)*abb15(1)
      abb15(61)=-abb15(14)*abb15(46)
      abb15(62)=abb15(61)*spbk7k2
      abb15(63)=-spak1k2*abb15(62)
      abb15(60)=abb15(60)+abb15(63)
      abb15(60)=spbl6k2*abb15(60)
      abb15(63)=spbk3k2*abb15(6)
      abb15(64)=abb15(63)*abb15(58)
      abb15(62)=abb15(64)-abb15(62)
      abb15(64)=spbk7l6*spak1k7
      abb15(62)=abb15(62)*abb15(64)
      abb15(32)=abb15(62)+abb15(60)+abb15(59)+abb15(32)
      abb15(32)=spak4k7*abb15(32)
      abb15(59)=abb15(43)*abb15(8)
      abb15(60)=abb15(59)*abb15(64)
      abb15(62)=spak4k7*spbk7k2
      abb15(65)=-abb15(62)*abb15(15)
      abb15(66)=abb15(65)*abb15(60)
      abb15(67)=abb15(65)*abb15(33)
      abb15(68)=-abb15(39)*abb15(15)
      abb15(69)=-abb15(43)*abb15(68)
      abb15(66)=abb15(66)+abb15(67)+abb15(69)
      abb15(66)=spak2l5*abb15(66)
      abb15(69)=-abb15(15)*spak1k4
      abb15(70)=abb15(69)*abb15(63)
      abb15(71)=spbk3k1*spak1k4
      abb15(72)=abb15(71)*spak1l5
      abb15(73)=-abb15(72)*abb15(14)
      abb15(74)=abb15(70)-abb15(73)
      abb15(74)=abb15(74)*spbl6k2
      abb15(75)=abb15(72)*abb15(7)
      abb15(76)=-abb15(75)*abb15(15)
      abb15(76)=abb15(74)-abb15(76)
      abb15(77)=spbl6k3*spak1l5
      abb15(78)=-abb15(14)*abb15(77)
      abb15(36)=-abb15(36)*abb15(15)
      abb15(78)=abb15(78)+abb15(36)
      abb15(79)=abb15(78)*abb15(62)
      abb15(56)=abb15(56)*spak1k4
      abb15(80)=-abb15(56)*abb15(15)
      abb15(81)=abb15(80)*es12
      abb15(79)=abb15(79)-abb15(81)
      abb15(82)=spak1k7*spbk7k2
      abb15(83)=-abb15(82)*abb15(15)
      abb15(84)=abb15(83)*spbk3k1
      abb15(85)=abb15(21)*abb15(84)
      abb15(85)=abb15(85)-abb15(76)+abb15(79)
      abb15(85)=es12*abb15(85)
      abb15(86)=abb15(43)*spak2l5
      abb15(87)=abb15(86)*abb15(69)
      abb15(88)=-abb15(15)*spbl6k2
      abb15(89)=abb15(88)*abb15(72)
      abb15(90)=abb15(89)*abb15(10)
      abb15(76)=-abb15(87)+abb15(90)-abb15(76)
      abb15(87)=abb15(79)+abb15(76)
      abb15(87)=es71*abb15(87)
      abb15(76)=abb15(81)-abb15(76)
      abb15(76)=es712*abb15(76)
      abb15(90)=-spak1l6*abb15(62)*abb15(42)
      abb15(91)=abb15(35)*spbk7k2
      abb15(92)=abb15(91)*spal6k7
      abb15(93)=abb15(71)*abb15(92)
      abb15(90)=abb15(93)+abb15(90)
      abb15(90)=abb15(88)*abb15(90)
      abb15(93)=abb15(46)*abb15(29)
      abb15(94)=-abb15(62)*abb15(88)*abb15(93)
      abb15(89)=es12*abb15(6)*abb15(89)
      abb15(89)=abb15(94)+abb15(89)
      abb15(89)=abb15(5)*abb15(89)
      abb15(94)=abb15(58)*spal5k7
      abb15(95)=abb15(71)*abb15(25)*abb15(94)
      abb15(96)=spbl6k2*spak1k2
      abb15(97)=abb15(96)+abb15(64)
      abb15(98)=-abb15(62)*abb15(14)
      abb15(99)=abb15(97)*abb15(98)*spbl6k3
      abb15(100)=spbl6k3*spak1k4
      abb15(101)=-abb15(14)*abb15(100)
      abb15(102)=abb15(101)*spbl6k2
      abb15(103)=es712-es71
      abb15(104)=abb15(103)-es12
      abb15(105)=abb15(102)*abb15(104)
      abb15(99)=abb15(105)+abb15(99)
      abb15(99)=spal5l6*abb15(99)
      abb15(105)=spbk3k1*spak1l5**2
      abb15(98)=-abb15(105)*abb15(98)
      abb15(106)=abb15(73)*spal5k7
      abb15(107)=spbk7k2*abb15(106)
      abb15(98)=abb15(98)+abb15(107)
      abb15(98)=spbl6l5*abb15(98)
      abb15(107)=-spbl6k1*abb15(82)*abb15(73)
      abb15(108)=spbk2k1*abb15(101)*spak1l5
      abb15(109)=abb15(104)*abb15(108)
      abb15(32)=abb15(109)+abb15(107)+abb15(98)+abb15(99)+abb15(76)+abb15(95)+a&
      &bb15(87)+abb15(89)+abb15(85)+abb15(32)+abb15(90)+abb15(66)
      abb15(32)=8.0_ki*abb15(32)
      abb15(66)=abb15(16)*abb15(6)
      abb15(76)=spbl6k3*abb15(66)*spbk7k2
      abb15(85)=abb15(91)*spbk3k1
      abb15(87)=abb15(85)*abb15(16)
      abb15(76)=abb15(76)-abb15(87)
      abb15(76)=abb15(76)*spak1k7
      abb15(55)=abb15(55)*abb15(26)
      abb15(55)=abb15(76)+abb15(55)
      abb15(76)=abb15(16)*abb15(63)
      abb15(87)=abb15(40)*abb15(46)
      abb15(76)=abb15(76)-abb15(87)
      abb15(89)=abb15(76)*abb15(64)
      abb15(90)=abb15(40)*spak1k2
      abb15(46)=abb15(90)*abb15(46)
      abb15(91)=abb15(16)*abb15(29)
      abb15(95)=spbk3k2*abb15(91)
      abb15(46)=abb15(46)-abb15(95)
      abb15(98)=abb15(46)*spbl6k2
      abb15(89)=abb15(98)+abb15(55)-abb15(89)
      abb15(89)=abb15(89)*spak4e7
      abb15(93)=abb15(93)*abb15(31)
      abb15(60)=abb15(60)+abb15(33)
      abb15(60)=abb15(60)*spak2l5
      abb15(98)=spak1l6*spbl6k2
      abb15(99)=abb15(98)*abb15(42)
      abb15(60)=-abb15(60)+abb15(93)+abb15(99)
      abb15(99)=abb15(16)*spak4e7
      abb15(60)=abb15(99)*abb15(60)
      abb15(107)=abb15(72)*abb15(40)
      abb15(109)=abb15(107)*spal5e7
      abb15(110)=abb15(40)*spak4e7
      abb15(111)=abb15(105)*abb15(110)
      abb15(109)=abb15(109)-abb15(111)
      abb15(109)=abb15(109)*spbl6l5
      abb15(111)=abb15(110)*spbl6k3
      abb15(112)=spal5l6*abb15(97)*abb15(111)
      abb15(113)=abb15(99)*abb15(20)
      abb15(114)=abb15(113)*spbl5k3
      abb15(115)=spak2l5*abb15(114)*abb15(82)
      abb15(116)=abb15(52)*abb15(71)
      abb15(117)=spbl6k2*abb15(116)*spal6e7
      abb15(118)=spbl6k1*spak1e7
      abb15(119)=abb15(118)*abb15(107)
      abb15(120)=abb15(22)*es12
      abb15(121)=spak1e7*spbk3k1
      abb15(122)=abb15(121)*abb15(120)
      abb15(123)=abb15(26)*abb15(71)
      abb15(124)=abb15(123)*spal5e7
      abb15(60)=abb15(119)-abb15(122)-abb15(112)-abb15(124)+abb15(115)-abb15(11&
      &7)+abb15(89)-abb15(109)+abb15(60)
      abb15(89)=abb15(40)*abb15(77)
      abb15(109)=abb15(89)+abb15(37)
      abb15(112)=abb15(109)*spak4e7
      abb15(115)=-es71-es12
      abb15(115)=abb15(112)*abb15(115)
      abb15(115)=abb15(115)+abb15(60)
      abb15(115)=8.0_ki*abb15(115)
      abb15(117)=abb15(17)*spak1k7
      abb15(119)=abb15(117)*abb15(40)
      abb15(49)=abb15(119)+abb15(49)
      abb15(119)=abb15(49)*spbk7l6
      abb15(122)=abb15(119)*spak4l5
      abb15(124)=abb15(16)*abb15(20)
      abb15(125)=abb15(124)*abb15(18)
      abb15(126)=abb15(125)*abb15(82)
      abb15(127)=spbk7k2*spae7k7
      abb15(128)=abb15(127)*spak2k4
      abb15(129)=abb15(128)*abb15(37)
      abb15(122)=abb15(122)+abb15(126)+abb15(129)
      abb15(126)=8.0_ki*abb15(122)
      abb15(129)=abb15(101)*spal5k7
      abb15(130)=abb15(129)*spbk7k2
      abb15(80)=-abb15(80)*abb15(103)
      abb15(79)=-abb15(79)+abb15(130)+abb15(80)
      abb15(103)=16.0_ki*abb15(79)
      abb15(130)=abb15(40)*abb15(100)
      abb15(131)=abb15(130)*spal5e7
      abb15(131)=abb15(112)-abb15(131)
      abb15(132)=16.0_ki*abb15(131)
      abb15(95)=spae7k7*abb15(95)
      abb15(133)=abb15(117)*abb15(66)
      abb15(95)=abb15(95)+abb15(133)
      abb15(95)=abb15(5)*abb15(95)
      abb15(133)=spae7k7*spbk3k2*abb15(26)
      abb15(117)=abb15(7)*abb15(16)*abb15(117)
      abb15(117)=abb15(133)+abb15(117)
      abb15(117)=abb15(8)*abb15(117)
      abb15(95)=abb15(95)+abb15(117)
      abb15(95)=spbk7l6*abb15(95)
      abb15(117)=abb15(16)*abb15(17)
      abb15(133)=abb15(117)*abb15(45)
      abb15(133)=abb15(133)+abb15(38)
      abb15(134)=spbk7l5*abb15(133)
      abb15(95)=abb15(134)+abb15(95)
      abb15(95)=spak4l5*abb15(95)
      abb15(134)=es12*abb15(112)
      abb15(112)=abb15(112)-abb15(23)
      abb15(112)=es71*abb15(112)
      abb15(133)=spak4l6*spbk7l6*abb15(133)
      abb15(38)=spbk7k1*spak1k4*abb15(38)
      abb15(38)=abb15(133)+abb15(38)+abb15(112)+abb15(134)+abb15(95)-abb15(60)
      abb15(38)=8.0_ki*abb15(38)
      abb15(58)=abb15(58)*spbl6k3
      abb15(60)=-spal6k7*abb15(58)
      abb15(60)=abb15(60)-abb15(84)
      abb15(60)=abb15(21)*abb15(60)
      abb15(84)=abb15(8)*abb15(7)
      abb15(95)=abb15(84)+abb15(10)
      abb15(112)=abb15(95)*abb15(77)
      abb15(133)=abb15(45)*spbk7k3
      abb15(112)=abb15(133)-abb15(112)
      abb15(134)=spak1l6*spbl6k3
      abb15(135)=spbl5k3*spak1l5
      abb15(135)=abb15(135)+abb15(134)
      abb15(136)=abb15(20)*abb15(135)
      abb15(136)=abb15(136)-abb15(112)
      abb15(136)=abb15(65)*abb15(136)
      abb15(137)=abb15(84)*abb15(100)
      abb15(138)=abb15(10)*abb15(100)
      abb15(137)=abb15(137)+abb15(138)
      abb15(139)=abb15(21)*spbl5k3
      abb15(140)=-abb15(139)-abb15(137)
      abb15(140)=abb15(140)*abb15(94)
      abb15(141)=-abb15(62)*abb15(36)
      abb15(60)=abb15(140)+abb15(81)+abb15(141)+abb15(136)+abb15(80)+abb15(60)
      abb15(60)=16.0_ki*abb15(60)
      abb15(80)=abb15(138)*abb15(16)
      abb15(81)=abb15(22)*spbl5k3
      abb15(136)=abb15(16)*abb15(84)
      abb15(138)=abb15(136)*abb15(100)
      abb15(80)=abb15(138)+abb15(81)+abb15(80)
      abb15(80)=abb15(80)*spal5e7
      abb15(81)=-abb15(99)*abb15(112)
      abb15(112)=spal6e7*spbl6k3
      abb15(112)=abb15(112)+abb15(121)
      abb15(112)=abb15(112)*abb15(22)
      abb15(121)=abb15(37)*spak4e7
      abb15(114)=abb15(114)*spak1l5
      abb15(113)=abb15(134)*abb15(113)
      abb15(80)=-abb15(80)-abb15(112)-abb15(121)+abb15(113)+abb15(114)+abb15(81)
      abb15(80)=16.0_ki*abb15(80)
      abb15(51)=-abb15(17)*abb15(51)
      abb15(81)=-spbl6l5*abb15(27)
      abb15(51)=abb15(51)+abb15(81)
      abb15(51)=abb15(44)*abb15(51)
      abb15(81)=-2.0_ki*abb15(37)-abb15(89)
      abb15(81)=abb15(81)*abb15(128)
      abb15(9)=abb15(41)*abb15(9)
      abb15(89)=abb15(20)*spae7k7
      abb15(112)=abb15(16)*abb15(89)
      abb15(113)=-abb15(82)*abb15(112)
      abb15(9)=abb15(9)+abb15(113)
      abb15(9)=spbk7k3*spak2k4*abb15(9)
      abb15(26)=-abb15(17)*abb15(26)
      abb15(26)=abb15(26)-abb15(119)
      abb15(26)=spak4l5*abb15(26)
      abb15(113)=abb15(19)*abb15(12)
      abb15(54)=-spak4l6*abb15(54)
      abb15(9)=abb15(54)+abb15(26)+abb15(113)+abb15(24)+abb15(81)+abb15(9)+abb1&
      &5(51)
      abb15(9)=8.0_ki*abb15(9)
      abb15(23)=abb15(23)+abb15(131)
      abb15(24)=-16.0_ki*abb15(23)
      abb15(26)=abb15(16)*spak2l5
      abb15(51)=abb15(59)*spak1k4
      abb15(54)=abb15(51)*abb15(26)
      abb15(81)=-spal5l6*abb15(130)
      abb15(81)=abb15(81)-abb15(54)
      abb15(81)=spae7k7*abb15(81)
      abb15(113)=abb15(63)*spak1k4
      abb15(114)=-abb15(41)*abb15(113)
      abb15(121)=abb15(72)*abb15(47)
      abb15(81)=abb15(81)+abb15(114)+abb15(121)
      abb15(81)=spbk7l6*abb15(81)
      abb15(114)=abb15(37)*spak1k4
      abb15(121)=abb15(130)*spak1l5
      abb15(114)=abb15(114)+abb15(121)
      abb15(121)=spbk7k1*spae7k7
      abb15(138)=abb15(114)*abb15(121)
      abb15(140)=abb15(127)*abb15(16)
      abb15(141)=abb15(140)*abb15(6)
      abb15(142)=abb15(100)*abb15(141)
      abb15(143)=abb15(140)*abb15(35)
      abb15(144)=-abb15(71)*abb15(143)
      abb15(145)=abb15(140)*spak2l5
      abb15(139)=abb15(145)*abb15(139)
      abb15(81)=abb15(138)+abb15(139)+abb15(142)+abb15(144)+abb15(81)+abb15(122)
      abb15(81)=4.0_ki*abb15(81)
      abb15(79)=-8.0_ki*abb15(79)
      abb15(122)=-8.0_ki*abb15(131)
      abb15(23)=8.0_ki*abb15(23)
      abb15(16)=-abb15(16)*abb15(113)
      abb15(16)=-abb15(54)+abb15(16)+abb15(107)
      abb15(16)=spbk7l6*abb15(16)
      abb15(54)=abb15(108)+abb15(74)
      abb15(54)=spbk7e7*abb15(54)
      abb15(74)=-spbl6k2*abb15(10)*abb15(72)
      abb15(86)=spak1k4*abb15(86)
      abb15(74)=abb15(86)+abb15(74)-abb15(75)
      abb15(75)=-abb15(15)*spbk7e7
      abb15(74)=abb15(75)*abb15(74)
      abb15(86)=spbk7k1*abb15(114)
      abb15(56)=abb15(75)*abb15(56)
      abb15(108)=es12*abb15(56)
      abb15(16)=abb15(86)+abb15(108)+abb15(74)+abb15(16)+abb15(54)
      abb15(16)=spak2k7*abb15(16)
      abb15(54)=-abb15(15)*abb15(63)
      abb15(74)=-abb15(54)+abb15(61)
      abb15(86)=spak4k7*spbk7e7
      abb15(74)=abb15(74)*abb15(86)
      abb15(76)=spak2k4*abb15(76)
      abb15(108)=-abb15(86)*abb15(15)
      abb15(28)=abb15(108)-abb15(28)
      abb15(114)=-spak2l5*abb15(28)*abb15(59)
      abb15(74)=abb15(114)+abb15(74)+abb15(76)
      abb15(74)=spbk7l6*spak1k7*abb15(74)
      abb15(76)=-abb15(86)*abb15(14)
      abb15(114)=abb15(76)*spbl6k3
      abb15(131)=abb15(40)*spbl6k3
      abb15(138)=abb15(131)*spak2k4
      abb15(114)=abb15(114)-abb15(138)
      abb15(139)=-abb15(114)*abb15(96)
      abb15(142)=-abb15(14)*spak1k7
      abb15(144)=abb15(142)*abb15(86)
      abb15(146)=-spbl6k3*abb15(144)
      abb15(138)=spak1k7*abb15(138)
      abb15(138)=abb15(146)+abb15(138)
      abb15(138)=spbk7l6*abb15(138)
      abb15(102)=spbk7e7*abb15(102)
      abb15(146)=-spbk7l6*abb15(130)
      abb15(102)=abb15(102)+abb15(146)
      abb15(102)=spak2k7*abb15(102)
      abb15(102)=abb15(102)+abb15(139)+abb15(138)
      abb15(102)=spal5l6*abb15(102)
      abb15(57)=-abb15(15)*abb15(57)
      abb15(58)=abb15(6)*abb15(58)
      abb15(85)=abb15(15)*abb15(85)
      abb15(58)=abb15(58)+abb15(85)
      abb15(58)=spak1k7*abb15(58)
      abb15(57)=abb15(57)+abb15(58)
      abb15(57)=abb15(57)*abb15(86)
      abb15(58)=abb15(61)*spak1k2
      abb15(15)=abb15(15)*abb15(30)
      abb15(15)=abb15(15)+abb15(58)
      abb15(15)=abb15(15)*abb15(86)
      abb15(46)=-spak2k4*abb15(46)
      abb15(58)=abb15(71)*abb15(91)
      abb15(15)=abb15(46)+abb15(58)+abb15(15)
      abb15(15)=spbl6k2*abb15(15)
      abb15(46)=abb15(78)*abb15(86)
      abb15(58)=abb15(109)*spak2k4
      abb15(46)=abb15(46)-abb15(58)
      abb15(58)=abb15(66)*abb15(100)
      abb15(61)=abb15(58)-abb15(46)
      abb15(78)=abb15(75)*abb15(21)
      abb15(85)=spak1k7*spbk3k1
      abb15(109)=-abb15(78)*abb15(85)
      abb15(109)=abb15(109)-2.0_ki*abb15(116)+abb15(61)
      abb15(109)=es12*abb15(109)
      abb15(61)=-abb15(116)+abb15(61)
      abb15(61)=es71*abb15(61)
      abb15(21)=abb15(26)*abb15(21)
      abb15(138)=-spbl5k3*abb15(21)
      abb15(138)=abb15(138)-abb15(58)+abb15(116)
      abb15(138)=es712*abb15(138)
      abb15(139)=abb15(40)*spak2k4
      abb15(146)=abb15(76)-abb15(139)
      abb15(105)=abb15(105)*abb15(146)
      abb15(107)=spak2l5*abb15(107)
      abb15(106)=-spbk7e7*abb15(106)
      abb15(105)=abb15(106)+abb15(107)+abb15(105)
      abb15(105)=spbl6l5*abb15(105)
      abb15(35)=spbl6k2*abb15(35)*spal6k7
      abb15(106)=abb15(25)*spal5k7
      abb15(106)=-abb15(35)-abb15(106)
      abb15(106)=abb15(75)*abb15(71)*abb15(106)
      abb15(55)=-spak2k4*abb15(55)
      abb15(93)=abb15(28)*abb15(93)
      abb15(107)=abb15(33)*abb15(108)
      abb15(34)=abb15(107)-abb15(34)
      abb15(107)=abb15(123)-abb15(34)
      abb15(107)=spak2l5*abb15(107)
      abb15(123)=abb15(124)*spak2k4
      abb15(147)=abb15(108)*abb15(20)
      abb15(123)=abb15(123)-abb15(147)
      abb15(147)=-abb15(82)*abb15(123)
      abb15(120)=abb15(120)+abb15(147)
      abb15(120)=spak2l5*abb15(120)
      abb15(147)=es71*abb15(21)
      abb15(120)=abb15(120)+abb15(147)
      abb15(120)=spbl5k3*abb15(120)
      abb15(108)=abb15(108)*abb15(42)
      abb15(147)=-spak2k4*spbk3k1*abb15(52)
      abb15(108)=abb15(108)+abb15(147)
      abb15(108)=abb15(108)*abb15(98)
      abb15(72)=abb15(72)*abb15(90)
      abb15(73)=spak1k7*abb15(73)*spbk7e7
      abb15(72)=abb15(72)+abb15(73)
      abb15(72)=spbl6k1*abb15(72)
      abb15(15)=abb15(72)+abb15(105)+abb15(108)+abb15(102)+abb15(138)+abb15(120&
      &)+abb15(61)+abb15(107)+abb15(93)+abb15(109)+abb15(15)+abb15(57)+abb15(55&
      &)+abb15(16)+abb15(106)+abb15(74)
      abb15(15)=4.0_ki*abb15(15)
      abb15(16)=abb15(130)*spak2l5
      abb15(55)=abb15(129)*spbk7e7
      abb15(57)=abb15(56)*spak2k7
      abb15(16)=abb15(46)-abb15(57)+abb15(16)-abb15(55)
      abb15(46)=8.0_ki*abb15(16)
      abb15(55)=spal6k7*spbl6k3
      abb15(55)=abb15(55)+abb15(85)
      abb15(55)=abb15(78)*abb15(55)
      abb15(57)=abb15(28)*abb15(133)
      abb15(61)=abb15(28)*abb15(77)
      abb15(72)=-abb15(61)*abb15(10)
      abb15(73)=-abb15(100)*abb15(26)
      abb15(61)=abb15(73)-abb15(61)
      abb15(61)=abb15(61)*abb15(84)
      abb15(73)=spak1l5*abb15(123)
      abb15(21)=-abb15(21)+abb15(73)
      abb15(21)=spbl5k3*abb15(21)
      abb15(22)=spbk7k3*abb15(22)
      abb15(22)=-abb15(56)+abb15(22)
      abb15(22)=spak2k7*abb15(22)
      abb15(56)=abb15(75)*abb15(137)
      abb15(73)=spbl5k3*abb15(78)
      abb15(56)=abb15(73)+abb15(56)
      abb15(56)=spal5k7*abb15(56)
      abb15(73)=abb15(123)*abb15(134)
      abb15(36)=abb15(86)*abb15(36)
      abb15(37)=-spak2k4*abb15(37)
      abb15(21)=abb15(73)+abb15(56)+abb15(22)+abb15(21)+abb15(61)+abb15(72)+abb&
      &15(57)+abb15(37)+abb15(36)-2.0_ki*abb15(58)+abb15(116)+abb15(55)
      abb15(21)=8.0_ki*abb15(21)
      abb15(16)=-4.0_ki*abb15(16)
      abb15(22)=abb15(82)*abb15(18)*abb15(66)
      abb15(36)=abb15(140)*spak2k4
      abb15(37)=abb15(30)*abb15(36)
      abb15(22)=abb15(37)+abb15(22)
      abb15(22)=abb15(5)*abb15(22)
      abb15(36)=abb15(33)*abb15(36)
      abb15(37)=abb15(7)*abb15(82)*abb15(19)
      abb15(36)=abb15(36)+abb15(37)
      abb15(36)=abb15(8)*abb15(36)
      abb15(37)=-spak4l6*abb15(119)
      abb15(49)=-spbk7l5*abb15(49)*spak4l5
      abb15(55)=abb15(40)*abb15(17)
      abb15(56)=abb15(55)*spak1k4
      abb15(57)=es71*abb15(56)
      abb15(50)=-spak1k4*abb15(50)
      abb15(22)=abb15(49)+abb15(37)+abb15(50)+abb15(36)+abb15(22)+abb15(57)
      abb15(22)=4.0_ki*abb15(22)
      abb15(36)=abb15(48)-abb15(135)
      abb15(36)=abb15(62)*abb15(36)
      abb15(37)=abb15(71)*abb15(82)
      abb15(49)=-spbk3k2*abb15(39)
      abb15(50)=spal5k7*spbl5k3
      abb15(57)=spbk7k2*spak1k4*abb15(50)
      abb15(36)=abb15(57)+abb15(49)+abb15(37)+abb15(36)
      abb15(36)=-abb15(14)*abb15(36)
      abb15(37)=abb15(65)*abb15(30)
      abb15(39)=-abb15(39)*abb15(54)
      abb15(37)=abb15(37)+abb15(39)
      abb15(37)=abb15(5)*abb15(37)
      abb15(39)=abb15(70)*abb15(5)
      abb15(49)=-abb15(14)*spak1k4
      abb15(54)=abb15(49)*spbk3k2
      abb15(39)=abb15(39)+abb15(54)
      abb15(57)=-es71*abb15(39)
      abb15(58)=-es71*abb15(69)
      abb15(58)=abb15(58)-abb15(68)
      abb15(43)=abb15(43)*abb15(58)
      abb15(43)=abb15(67)+abb15(43)
      abb15(43)=abb15(8)*abb15(43)
      abb15(58)=abb15(69)*abb15(59)
      abb15(39)=abb15(58)+abb15(39)
      abb15(39)=es712*abb15(39)
      abb15(58)=spbk7k3*abb15(62)*abb15(142)
      abb15(61)=abb15(101)*spal6k7
      abb15(62)=spbk7k2*abb15(61)
      abb15(36)=abb15(62)+abb15(39)+abb15(43)+abb15(57)+abb15(37)+abb15(58)+abb&
      &15(36)
      abb15(36)=8.0_ki*abb15(36)
      abb15(37)=abb15(5)*abb15(30)
      abb15(33)=abb15(33)*abb15(8)
      abb15(33)=-abb15(33)-abb15(37)
      abb15(33)=abb15(99)*abb15(33)
      abb15(37)=spbk7k3*spak1k7
      abb15(37)=abb15(37)+abb15(48)
      abb15(37)=abb15(37)*abb15(110)
      abb15(39)=abb15(44)*spak4e7
      abb15(43)=abb15(40)*spak1k4
      abb15(57)=abb15(43)*spal5e7
      abb15(39)=abb15(39)-abb15(57)
      abb15(39)=abb15(39)*spbl5k3
      abb15(57)=abb15(130)*spal6e7
      abb15(58)=abb15(111)*spak1l6
      abb15(40)=abb15(40)*spak1e7
      abb15(62)=abb15(40)*abb15(71)
      abb15(33)=-abb15(37)-abb15(57)+abb15(58)-abb15(62)+abb15(39)+abb15(33)
      abb15(33)=8.0_ki*abb15(33)
      abb15(37)=8.0_ki*abb15(56)
      abb15(39)=-4.0_ki*abb15(56)
      abb15(56)=-abb15(71)*abb15(142)
      abb15(49)=-abb15(49)*abb15(50)
      abb15(49)=-abb15(61)+abb15(49)+abb15(56)
      abb15(49)=spbk7e7*abb15(49)
      abb15(50)=spak1l5*abb15(76)
      abb15(56)=-spak2k4*abb15(44)
      abb15(57)=spak2l5*abb15(43)
      abb15(50)=abb15(57)+abb15(50)+abb15(56)
      abb15(50)=spbl5k3*abb15(50)
      abb15(56)=abb15(5)*abb15(113)
      abb15(51)=abb15(51)+abb15(56)
      abb15(51)=abb15(75)*abb15(51)
      abb15(54)=spbk7e7*abb15(54)
      abb15(43)=-spbk7k3*abb15(43)
      abb15(43)=abb15(54)+abb15(43)+abb15(51)
      abb15(43)=spak2k7*abb15(43)
      abb15(48)=-abb15(48)*abb15(146)
      abb15(51)=spak1k7*abb15(139)
      abb15(51)=-abb15(144)+abb15(51)
      abb15(51)=spbk7k3*abb15(51)
      abb15(28)=-abb15(30)*abb15(28)*abb15(5)
      abb15(30)=-abb15(8)*abb15(34)
      abb15(34)=spak1l6*abb15(114)
      abb15(54)=-abb15(71)*abb15(90)
      abb15(56)=spak2l6*abb15(130)
      abb15(28)=abb15(56)+abb15(34)+abb15(43)+abb15(50)+abb15(30)+abb15(28)+abb&
      &15(51)+abb15(54)+abb15(49)+abb15(48)
      abb15(28)=4.0_ki*abb15(28)
      abb15(30)=-abb15(64)*abb15(84)
      abb15(25)=abb15(30)-abb15(25)
      abb15(25)=abb15(145)*abb15(25)
      abb15(30)=abb15(47)*spak1l5
      abb15(34)=abb15(30)*spbk7l6
      abb15(34)=abb15(34)-abb15(143)
      abb15(43)=-es12*abb15(34)
      abb15(48)=abb15(47)*spal5l6*spbk7l6
      abb15(49)=abb15(97)*abb15(48)
      abb15(50)=-spbl6k2*abb15(29)*abb15(140)
      abb15(51)=abb15(64)*abb15(141)
      abb15(30)=abb15(30)*spbk7k1
      abb15(54)=-abb15(96)*abb15(30)
      abb15(26)=abb15(26)*abb15(89)
      abb15(56)=abb15(26)*spbk7l5
      abb15(57)=-abb15(82)*abb15(56)
      abb15(25)=abb15(57)+abb15(54)+abb15(49)+abb15(43)+abb15(50)-2.0_ki*abb15(&
      &51)+abb15(25)
      abb15(25)=4.0_ki*abb15(25)
      abb15(11)=abb15(11)*abb15(104)
      abb15(43)=-spak1l6*abb15(20)*abb15(104)
      abb15(11)=abb15(43)-abb15(92)+abb15(11)
      abb15(11)=abb15(88)*abb15(11)
      abb15(29)=abb15(31)*abb15(29)
      abb15(43)=abb15(29)*abb15(94)
      abb15(49)=abb15(83)*abb15(20)
      abb15(50)=2.0_ki*es12
      abb15(51)=-abb15(50)*abb15(49)
      abb15(14)=-abb15(82)*abb15(14)
      abb15(54)=2.0_ki*spbl6k1
      abb15(57)=spak1l5*abb15(54)*abb15(14)
      abb15(11)=abb15(57)+abb15(43)+abb15(51)+abb15(11)
      abb15(11)=8.0_ki*abb15(11)
      abb15(31)=spal5e7*abb15(91)*abb15(31)
      abb15(43)=abb15(53)*spal6e7
      abb15(51)=abb15(118)*abb15(44)
      abb15(53)=abb15(124)*spak1e7
      abb15(57)=abb15(50)*abb15(53)
      abb15(31)=-abb15(31)-2.0_ki*abb15(51)+abb15(43)+abb15(57)
      abb15(43)=8.0_ki*abb15(31)
      abb15(31)=-abb15(143)-abb15(31)
      abb15(31)=8.0_ki*abb15(31)
      abb15(49)=32.0_ki*abb15(49)
      abb15(51)=32.0_ki*abb15(53)
      abb15(34)=8.0_ki*abb15(34)
      abb15(29)=abb15(29)*spal5k7
      abb15(20)=-abb15(20)*abb15(98)
      abb15(12)=abb15(20)+abb15(12)
      abb15(12)=abb15(12)*spak2k7
      abb15(12)=abb15(12)+abb15(35)-abb15(29)
      abb15(12)=abb15(75)*abb15(12)
      abb15(20)=abb15(75)*abb15(45)
      abb15(20)=abb15(20)+abb15(52)
      abb15(29)=abb15(20)*abb15(50)
      abb15(35)=-spak1k2*abb15(44)
      abb15(44)=abb15(142)*spbk7e7
      abb15(45)=-spak1l5*abb15(44)
      abb15(35)=abb15(35)+abb15(45)
      abb15(35)=abb15(35)*abb15(54)
      abb15(12)=abb15(35)+abb15(29)+abb15(12)
      abb15(12)=4.0_ki*abb15(12)
      abb15(20)=-16.0_ki*abb15(20)
      abb15(29)=4.0_ki*abb15(127)
      abb15(35)=abb15(90)*abb15(29)
      abb15(14)=-16.0_ki*abb15(14)
      abb15(40)=16.0_ki*abb15(40)
      abb15(44)=abb15(90)+abb15(44)
      abb15(44)=8.0_ki*abb15(44)
      abb15(45)=8.0_ki*abb15(112)
      abb15(47)=4.0_ki*abb15(47)
      abb15(50)=abb15(63)*abb15(140)
      abb15(53)=-abb15(127)*abb15(87)
      abb15(54)=abb15(59)*abb15(145)
      abb15(50)=abb15(54)+abb15(50)+abb15(53)
      abb15(50)=spak2k4*abb15(50)
      abb15(53)=spal5l6*abb15(131)*abb15(128)
      abb15(50)=abb15(53)+abb15(50)
      abb15(50)=4.0_ki*abb15(50)
      abb15(53)=abb15(55)*spak4l5
      abb15(54)=8.0_ki*abb15(53)
      abb15(57)=-spak4l5*abb15(117)*abb15(95)
      abb15(17)=-abb15(124)*abb15(17)*spak4l6
      abb15(17)=abb15(57)+abb15(17)
      abb15(17)=8.0_ki*abb15(17)
      abb15(53)=4.0_ki*abb15(53)
      abb15(55)=4.0_ki*spak4l6*abb15(55)
      abb15(57)=abb15(84)*abb15(145)
      abb15(30)=-abb15(30)-abb15(48)+abb15(141)+abb15(57)
      abb15(30)=4.0_ki*abb15(30)
      abb15(27)=-8.0_ki*abb15(124)*abb15(27)
      abb15(48)=spak2k4*spbk7k2
      abb15(57)=-abb15(48)*abb15(45)
      abb15(29)=abb15(139)*abb15(29)
      abb15(58)=-spbl6k3*abb15(141)
      abb15(42)=abb15(140)*abb15(42)
      abb15(42)=abb15(58)+abb15(42)
      abb15(42)=spak2k4*abb15(42)
      abb15(26)=-spbl5k3*abb15(48)*abb15(26)
      abb15(26)=abb15(42)+abb15(26)
      abb15(26)=4.0_ki*abb15(26)
      abb15(42)=8.0_ki*abb15(125)
      abb15(48)=-4.0_ki*abb15(125)
      abb15(10)=-abb15(10)*abb15(19)
      abb15(18)=-abb15(18)*abb15(136)
      abb15(10)=abb15(10)+abb15(18)
      abb15(10)=4.0_ki*abb15(10)
      abb15(18)=spbk7l6*abb15(6)*abb15(41)
      abb15(19)=abb15(52)*abb15(121)
      abb15(18)=abb15(56)+abb15(18)+abb15(19)
      abb15(18)=4.0_ki*abb15(18)
      R2d15=0.0_ki
      rat2 = rat2 + R2d15
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='15' value='", &
          & R2d15, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd15h2