module     p9_csbar_epnebbbarg_abbrevd67h2
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(164), public :: abb67
   complex(ki), public :: R2d67
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
      abb67(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb67(2)=es56**(-1)
      abb67(3)=spbl5k2**(-1)
      abb67(4)=spak2l6**(-1)
      abb67(5)=spbl6k2**(-1)
      abb67(6)=c2-c4
      abb67(7)=NC*c1
      abb67(7)=abb67(6)+abb67(7)
      abb67(8)=TR*gW
      abb67(8)=abb67(8)**2
      abb67(9)=abb67(8)*abb67(1)
      abb67(10)=i_*CVSC
      abb67(11)=abb67(10)*abb67(2)*abb67(9)
      abb67(12)=abb67(11)*spbk3k1
      abb67(13)=abb67(7)*abb67(12)
      abb67(14)=-abb67(13)*spbl6k1
      abb67(15)=spak1k4*spak2l5
      abb67(16)=abb67(14)*abb67(15)
      abb67(17)=spak3k4*spak2l5
      abb67(18)=abb67(17)*spbl6k3
      abb67(19)=-abb67(18)*abb67(13)
      abb67(20)=abb67(16)-abb67(19)
      abb67(21)=spbe7l5*spal5e7
      abb67(22)=abb67(20)*abb67(21)
      abb67(23)=-spbe7l6*abb67(20)
      abb67(24)=spal6e7*abb67(23)
      abb67(24)=abb67(22)-abb67(24)
      abb67(24)=4.0_ki*abb67(24)
      abb67(24)=es71*abb67(24)
      abb67(25)=mB**2
      abb67(26)=abb67(25)*abb67(3)
      abb67(27)=abb67(26)*abb67(4)
      abb67(28)=abb67(13)*abb67(27)
      abb67(29)=spbe7k1*abb67(28)
      abb67(30)=abb67(29)*spak1e7
      abb67(31)=es712-es12
      abb67(32)=-abb67(30)*abb67(31)
      abb67(33)=spbe7k1*abb67(7)
      abb67(12)=abb67(12)*abb67(33)
      abb67(34)=abb67(12)*spak1e7
      abb67(35)=spal5k7*spbk7l6
      abb67(36)=abb67(34)*abb67(35)
      abb67(32)=abb67(32)-abb67(36)
      abb67(36)=spak2k7*spak1k4
      abb67(37)=-abb67(36)*abb67(32)
      abb67(38)=abb67(30)*es71
      abb67(39)=spal5e7*spbe7l6
      abb67(40)=-abb67(13)*abb67(39)
      abb67(41)=2.0_ki*es71
      abb67(42)=abb67(41)*abb67(40)
      abb67(43)=abb67(38)-abb67(42)
      abb67(43)=abb67(43)*spak2k7
      abb67(44)=-spak1k4*abb67(43)
      abb67(37)=abb67(44)+abb67(37)
      abb67(37)=spbk7k1*abb67(37)
      abb67(44)=spak2k7*spak3k4
      abb67(45)=abb67(44)*abb67(32)
      abb67(43)=spak3k4*abb67(43)
      abb67(43)=abb67(43)+abb67(45)
      abb67(43)=spbk7k3*abb67(43)
      abb67(32)=abb67(32)+abb67(38)
      abb67(38)=abb67(42)+abb67(32)
      abb67(45)=abb67(17)*spbl5k3
      abb67(46)=abb67(15)*spbl5k1
      abb67(47)=abb67(45)-abb67(46)
      abb67(38)=abb67(38)*abb67(47)
      abb67(48)=spbe7k3*spak3k4
      abb67(49)=abb67(28)*abb67(48)
      abb67(50)=abb67(29)*spak1k4
      abb67(49)=abb67(49)-abb67(50)
      abb67(51)=spak2e7*es71
      abb67(52)=4.0_ki*abb67(51)
      abb67(53)=abb67(52)*abb67(49)
      abb67(54)=spbl6k3*spak3k4
      abb67(55)=spbl6k1*spak1k4
      abb67(56)=abb67(54)-abb67(55)
      abb67(57)=abb67(56)*abb67(26)
      abb67(58)=-abb67(12)*abb67(57)
      abb67(59)=abb67(58)*spak1e7
      abb67(60)=abb67(53)-abb67(59)
      abb67(60)=-abb67(60)*abb67(31)
      abb67(61)=4.0_ki*spak2e7
      abb67(62)=abb67(61)*es71**2
      abb67(63)=abb67(49)*abb67(62)
      abb67(8)=abb67(6)*abb67(8)
      abb67(64)=abb67(10)*spbk3k1
      abb67(65)=abb67(8)*abb67(64)*abb67(1)
      abb67(66)=NC*c1*abb67(9)
      abb67(64)=abb67(66)*abb67(64)
      abb67(64)=abb67(65)+abb67(64)
      abb67(65)=abb67(15)*spbl6k1
      abb67(67)=abb67(65)-abb67(18)
      abb67(68)=abb67(67)*spbe7k1*abb67(64)
      abb67(58)=-es71*abb67(58)
      abb67(58)=2.0_ki*abb67(68)+abb67(58)
      abb67(58)=spak1e7*abb67(58)
      abb67(68)=-abb67(48)*abb67(13)
      abb67(69)=abb67(12)*spak1k4
      abb67(68)=abb67(68)+abb67(69)
      abb67(70)=abb67(68)*abb67(52)
      abb67(71)=abb67(35)*abb67(70)
      abb67(72)=-abb67(13)*abb67(54)
      abb67(73)=abb67(14)*spak1k4
      abb67(72)=abb67(72)-abb67(73)
      abb67(74)=-abb67(72)*abb67(39)
      abb67(75)=-abb67(41)*abb67(74)
      abb67(56)=abb67(56)*abb67(34)
      abb67(76)=-abb67(35)*abb67(56)
      abb67(75)=abb67(75)+abb67(76)
      abb67(75)=spak2l6*abb67(75)
      abb67(76)=-abb67(12)*abb67(67)
      abb67(77)=abb67(76)*spak1e7
      abb67(78)=2.0_ki*es567
      abb67(79)=abb67(77)*abb67(78)
      abb67(24)=abb67(79)+abb67(75)+abb67(43)+abb67(37)+abb67(71)+abb67(63)+abb&
      &67(58)+abb67(24)+abb67(60)+abb67(38)
      abb67(37)=abb67(72)*spak2l6
      abb67(38)=-spbl6k1*abb67(37)
      abb67(16)=2.0_ki*abb67(19)-abb67(16)
      abb67(16)=spbl5k1*abb67(16)
      abb67(19)=abb67(36)*spbk7k1
      abb67(36)=spbk7k3*spak2k7
      abb67(43)=abb67(36)*spak3k4
      abb67(58)=abb67(19)-abb67(43)
      abb67(45)=-abb67(45)-abb67(58)
      abb67(45)=abb67(14)*abb67(45)
      abb67(16)=abb67(16)+abb67(38)+abb67(45)
      abb67(38)=2.0_ki*spak1l5
      abb67(16)=abb67(16)*abb67(38)
      abb67(45)=es712-es71
      abb67(60)=-abb67(28)*abb67(45)
      abb67(63)=-abb67(13)*abb67(35)
      abb67(63)=abb67(60)+abb67(63)
      abb67(71)=abb67(28)*es12
      abb67(72)=abb67(63)-abb67(71)
      abb67(44)=-spbk7k3*abb67(44)
      abb67(44)=abb67(44)+abb67(19)
      abb67(44)=abb67(72)*abb67(44)
      abb67(72)=4.0_ki*spbl6k1
      abb67(75)=-spak1l6*abb67(72)
      abb67(75)=abb67(75)-abb67(78)
      abb67(75)=abb67(20)*abb67(75)
      abb67(79)=abb67(60)+3.0_ki*abb67(71)
      abb67(80)=-abb67(17)*abb67(79)
      abb67(81)=-abb67(13)*abb67(17)
      abb67(82)=-abb67(35)*abb67(81)
      abb67(80)=abb67(82)+abb67(80)
      abb67(80)=spbl5k3*abb67(80)
      abb67(82)=-abb67(35)*abb67(37)
      abb67(79)=abb67(15)*abb67(79)
      abb67(83)=-abb67(13)*abb67(15)
      abb67(84)=abb67(35)*abb67(83)
      abb67(79)=abb67(84)+abb67(79)
      abb67(79)=spbl5k1*abb67(79)
      abb67(27)=abb67(27)*abb67(11)
      abb67(84)=-abb67(27)*abb67(7)
      abb67(85)=spbk3k1**2
      abb67(86)=-abb67(85)*abb67(84)
      abb67(87)=abb67(45)-es12
      abb67(88)=abb67(86)*abb67(87)
      abb67(89)=-abb67(11)*abb67(7)
      abb67(85)=abb67(89)*abb67(85)
      abb67(90)=-abb67(85)*abb67(35)
      abb67(88)=abb67(90)+abb67(88)
      abb67(90)=4.0_ki*spak1k2
      abb67(90)=abb67(90)*spak3k4
      abb67(88)=abb67(88)*abb67(90)
      abb67(57)=-abb67(13)*abb67(57)
      abb67(91)=abb67(45)-7.0_ki*es12
      abb67(92)=-abb67(57)*abb67(91)
      abb67(64)=-abb67(64)*abb67(67)
      abb67(25)=abb67(25)*abb67(4)
      abb67(93)=abb67(13)*abb67(67)*abb67(25)
      abb67(94)=abb67(5)*es12
      abb67(95)=abb67(93)*abb67(94)
      abb67(16)=abb67(16)+4.0_ki*abb67(95)+abb67(88)+abb67(79)+abb67(82)+abb67(&
      &80)+2.0_ki*abb67(64)+abb67(92)+abb67(75)+abb67(44)
      abb67(16)=2.0_ki*abb67(16)
      abb67(44)=abb67(31)*spak2e7
      abb67(44)=abb67(44)-abb67(51)
      abb67(64)=-abb67(49)*abb67(44)
      abb67(75)=abb67(35)*spak2e7
      abb67(79)=abb67(68)*abb67(75)
      abb67(64)=abb67(79)+abb67(64)
      abb67(22)=2.0_ki*abb67(22)
      abb67(79)=-abb67(58)-abb67(47)
      abb67(80)=-abb67(40)*abb67(79)
      abb67(82)=-spak2l6*abb67(74)
      abb67(88)=2.0_ki*spal6e7
      abb67(92)=-abb67(23)*abb67(88)
      abb67(64)=abb67(92)+abb67(22)+abb67(82)+2.0_ki*abb67(64)+abb67(80)
      abb67(64)=4.0_ki*abb67(64)
      abb67(77)=4.0_ki*abb67(77)
      abb67(80)=8.0_ki*abb67(20)
      abb67(82)=2.0_ki*spak2k4
      abb67(92)=abb67(82)*abb67(40)
      abb67(95)=es71*abb67(92)
      abb67(96)=3.0_ki*spak2k4
      abb67(97)=abb67(96)*spak1e7
      abb67(98)=abb67(97)*abb67(12)
      abb67(99)=abb67(98)*abb67(35)
      abb67(100)=abb67(30)*abb67(96)
      abb67(101)=abb67(87)*abb67(100)
      abb67(95)=-abb67(101)+abb67(95)-abb67(99)
      abb67(95)=2.0_ki*abb67(95)
      abb67(99)=abb67(63)*abb67(96)
      abb67(101)=spak1l5*abb67(82)*abb67(14)
      abb67(102)=abb67(71)*spak2k4
      abb67(99)=abb67(99)+abb67(101)+5.0_ki*abb67(102)
      abb67(99)=4.0_ki*abb67(99)
      abb67(103)=abb67(40)*spak2k4
      abb67(104)=8.0_ki*abb67(103)
      abb67(105)=abb67(30)*abb67(47)
      abb67(106)=3.0_ki*abb67(30)
      abb67(106)=abb67(106)*abb67(58)
      abb67(107)=2.0_ki*abb67(5)
      abb67(67)=abb67(67)*abb67(107)
      abb67(108)=-abb67(25)*abb67(34)*abb67(67)
      abb67(53)=abb67(108)-abb67(53)-3.0_ki*abb67(59)+abb67(106)+abb67(105)
      abb67(53)=2.0_ki*abb67(53)
      abb67(59)=abb67(47)-abb67(58)
      abb67(59)=abb67(28)*abb67(59)
      abb67(86)=abb67(86)*abb67(90)
      abb67(93)=-abb67(93)*abb67(107)
      abb67(57)=abb67(93)+abb67(86)-3.0_ki*abb67(57)+abb67(59)
      abb67(57)=4.0_ki*abb67(57)
      abb67(59)=16.0_ki*spak2e7
      abb67(86)=-abb67(49)*abb67(59)
      abb67(93)=4.0_ki*spak2k4
      abb67(105)=abb67(93)*abb67(30)
      abb67(106)=abb67(28)*spak2k4
      abb67(108)=24.0_ki*abb67(106)
      abb67(109)=abb67(84)*spbe7k3
      abb67(110)=abb67(109)*spak2e7
      abb67(111)=abb67(110)*abb67(31)
      abb67(112)=abb67(51)*abb67(109)
      abb67(113)=abb67(89)*spbe7k3
      abb67(114)=abb67(113)*abb67(35)
      abb67(115)=abb67(114)*spak2e7
      abb67(111)=-abb67(112)+abb67(115)+abb67(111)
      abb67(112)=abb67(40)*spak1k2
      abb67(115)=abb67(89)*abb67(39)
      abb67(116)=abb67(115)*spak2k4
      abb67(117)=abb67(116)*spbk4k3
      abb67(111)=abb67(112)-abb67(117)+2.0_ki*abb67(111)
      abb67(112)=abb67(36)*abb67(115)
      abb67(117)=abb67(89)*spak2l5
      abb67(118)=2.0_ki*abb67(117)
      abb67(119)=abb67(118)*spbl6k3
      abb67(120)=abb67(119)*abb67(21)
      abb67(121)=abb67(115)*spak2l6
      abb67(122)=abb67(121)*spbl6k3
      abb67(123)=abb67(117)*abb67(39)
      abb67(124)=abb67(123)*spbl5k3
      abb67(112)=abb67(124)+abb67(122)-abb67(120)-abb67(112)+abb67(111)
      abb67(120)=2.0_ki*spak4k7
      abb67(120)=abb67(120)*abb67(112)*spbk7k1
      abb67(27)=abb67(27)*abb67(33)
      abb67(33)=abb67(27)*es12
      abb67(122)=abb67(27)*es712
      abb67(7)=-abb67(7)*abb67(11)*spbe7k1
      abb67(11)=abb67(7)*abb67(35)
      abb67(33)=-abb67(33)+abb67(122)-abb67(11)
      abb67(122)=abb67(27)*es71
      abb67(122)=abb67(33)-abb67(122)
      abb67(124)=abb67(122)*abb67(36)
      abb67(125)=-abb67(26)*abb67(7)
      abb67(126)=abb67(125)*spbl6k3
      abb67(127)=abb67(87)*abb67(126)
      abb67(8)=abb67(8)*abb67(1)
      abb67(8)=abb67(8)+abb67(66)
      abb67(8)=abb67(8)*abb67(10)*spbe7k1
      abb67(128)=2.0_ki*spak2l5
      abb67(129)=abb67(8)*abb67(128)
      abb67(130)=abb67(129)*spbl6k3
      abb67(124)=abb67(124)+abb67(130)+abb67(127)
      abb67(124)=abb67(124)*spak4e7
      abb67(127)=spak4e7*abb67(122)*spak2l5
      abb67(130)=abb67(40)*abb67(17)
      abb67(127)=abb67(127)+abb67(130)
      abb67(127)=abb67(127)*spbl5k3
      abb67(130)=spbk4k3*spak2k4
      abb67(131)=abb67(130)*abb67(122)
      abb67(132)=3.0_ki*spak4e7
      abb67(133)=abb67(132)*abb67(131)
      abb67(134)=spak4k7*spbk7k1
      abb67(135)=spbe7l6*abb67(134)*abb67(119)
      abb67(23)=abb67(135)+abb67(23)
      abb67(23)=abb67(23)*abb67(88)
      abb67(135)=spak4e7*spbl6k3
      abb67(136)=abb67(135)*abb67(11)
      abb67(74)=abb67(136)+abb67(74)
      abb67(74)=abb67(74)*spak2l6
      abb67(136)=abb67(87)*abb67(29)
      abb67(137)=abb67(12)*abb67(35)
      abb67(136)=abb67(136)+abb67(137)
      abb67(137)=spak1k2*spak4e7
      abb67(138)=3.0_ki*abb67(137)
      abb67(136)=abb67(136)*abb67(138)
      abb67(138)=abb67(49)*abb67(51)
      abb67(139)=abb67(103)*es71
      abb67(138)=abb67(139)-abb67(138)
      abb67(139)=2.0_ki*spak2e7
      abb67(140)=abb67(68)*abb67(139)
      abb67(98)=abb67(98)+abb67(140)
      abb67(98)=abb67(98)*abb67(35)
      abb67(49)=abb67(139)*abb67(49)
      abb67(141)=abb67(49)-abb67(100)
      abb67(141)=abb67(31)*abb67(141)
      abb67(142)=-abb67(58)+abb67(46)
      abb67(142)=abb67(142)*abb67(40)
      abb67(143)=abb67(7)*spak4e7
      abb67(144)=abb67(143)*spbl6k3
      abb67(145)=abb67(144)*abb67(128)
      abb67(146)=abb67(145)*es567
      abb67(22)=-abb67(74)-2.0_ki*abb67(138)+abb67(136)+abb67(98)+abb67(124)-ab&
      &b67(133)+abb67(146)-abb67(141)+abb67(22)+abb67(120)-abb67(142)+abb67(127&
      &)-abb67(23)
      abb67(23)=-es71*abb67(100)
      abb67(23)=abb67(23)+abb67(22)
      abb67(23)=2.0_ki*abb67(23)
      abb67(74)=abb67(89)*spbl6k1
      abb67(98)=abb67(130)+abb67(36)
      abb67(98)=abb67(98)*abb67(74)
      abb67(100)=abb67(14)*spak1k2
      abb67(120)=abb67(119)*spbl5k1
      abb67(124)=abb67(117)*spbl6k1
      abb67(127)=abb67(124)*spbl5k3
      abb67(133)=abb67(74)*spak2l6
      abb67(136)=abb67(133)*spbl6k3
      abb67(98)=-abb67(98)+abb67(100)-abb67(120)+abb67(127)+abb67(136)
      abb67(100)=2.0_ki*spak4l5
      abb67(98)=abb67(98)*abb67(100)
      abb67(26)=-abb67(26)*abb67(89)
      abb67(100)=abb67(26)*abb67(96)
      abb67(120)=-abb67(25)*abb67(89)
      abb67(127)=abb67(128)*abb67(5)
      abb67(136)=abb67(127)*abb67(120)
      abb67(138)=abb67(136)*spak2k4
      abb67(100)=abb67(100)+abb67(138)
      abb67(100)=abb67(100)*spbl6k3
      abb67(138)=abb67(84)*spak2k4
      abb67(141)=spbl5k3*spak2l5
      abb67(142)=abb67(141)-abb67(36)
      abb67(142)=abb67(142)*abb67(138)
      abb67(146)=spbk4k3*abb67(84)*spak2k4**2
      abb67(100)=-abb67(100)+abb67(142)-abb67(146)
      abb67(142)=2.0_ki*spbk2k1
      abb67(100)=abb67(100)*abb67(142)
      abb67(142)=4.0_ki*abb67(124)
      abb67(146)=spbl6k3*abb67(142)*spak4l6
      abb67(98)=-abb67(146)+abb67(101)+abb67(100)+abb67(98)
      abb67(100)=-abb67(13)*spak2k4
      abb67(101)=abb67(100)*abb67(35)
      abb67(101)=abb67(101)+abb67(102)
      abb67(102)=7.0_ki*abb67(60)
      abb67(102)=spak2k4*abb67(102)
      abb67(102)=abb67(20)+abb67(102)+abb67(98)+7.0_ki*abb67(101)
      abb67(102)=4.0_ki*abb67(102)
      abb67(146)=abb67(144)*spak2l5
      abb67(147)=8.0_ki*abb67(146)
      abb67(148)=4.0_ki*abb67(103)
      abb67(149)=abb67(36)*abb67(27)
      abb67(126)=abb67(149)-abb67(126)
      abb67(126)=abb67(126)*abb67(132)
      abb67(132)=abb67(30)*spak2k4
      abb67(149)=abb67(137)*abb67(29)
      abb67(25)=-abb67(25)*abb67(7)
      abb67(127)=abb67(25)*abb67(127)
      abb67(135)=abb67(127)*abb67(135)
      abb67(150)=4.0_ki*abb67(110)
      abb67(151)=abb67(150)*abb67(134)
      abb67(141)=abb67(141)+abb67(130)
      abb67(152)=abb67(141)*abb67(27)*spak4e7
      abb67(49)=abb67(151)+abb67(126)+abb67(132)-abb67(152)-abb67(49)+abb67(149&
      &)-abb67(135)
      abb67(126)=4.0_ki*abb67(49)
      abb67(106)=-56.0_ki*abb67(106)
      abb67(29)=es71*abb67(29)*abb67(96)
      abb67(29)=-2.0_ki*abb67(76)+abb67(29)
      abb67(29)=spak1e7*abb67(29)
      abb67(22)=abb67(29)-abb67(22)
      abb67(29)=spak2k4*abb67(60)
      abb67(20)=abb67(20)+abb67(29)-abb67(98)+abb67(101)
      abb67(20)=2.0_ki*abb67(20)
      abb67(29)=4.0_ki*abb67(146)
      abb67(49)=-2.0_ki*abb67(49)
      abb67(60)=-abb67(28)*abb67(93)
      abb67(76)=abb67(103)-abb67(146)
      abb67(76)=4.0_ki*abb67(76)
      abb67(98)=-abb67(103)+abb67(145)
      abb67(101)=abb67(48)*abb67(84)
      abb67(103)=abb67(27)*spak1k4
      abb67(132)=abb67(101)-abb67(103)
      abb67(135)=-abb67(132)*abb67(87)
      abb67(145)=abb67(113)*spak3k4
      abb67(146)=abb67(7)*spak1k4
      abb67(149)=abb67(145)+abb67(146)
      abb67(151)=-abb67(149)*abb67(35)
      abb67(135)=abb67(151)+abb67(135)
      abb67(135)=abb67(135)*abb67(36)
      abb67(151)=abb67(27)*abb67(15)
      abb67(152)=abb67(109)*abb67(17)
      abb67(151)=abb67(151)-abb67(152)
      abb67(152)=abb67(151)*abb67(87)
      abb67(153)=abb67(7)*abb67(15)
      abb67(154)=abb67(113)*abb67(17)
      abb67(153)=abb67(153)+abb67(154)
      abb67(154)=-abb67(153)*abb67(35)
      abb67(152)=abb67(154)+abb67(152)
      abb67(152)=spbl5k3*abb67(152)
      abb67(131)=-spak1k4*abb67(131)
      abb67(154)=es71-abb67(31)
      abb67(154)=abb67(109)*abb67(154)
      abb67(154)=abb67(154)-abb67(114)
      abb67(155)=-abb67(46)-abb67(19)
      abb67(155)=abb67(154)*abb67(155)
      abb67(48)=abb67(26)*abb67(48)
      abb67(156)=abb67(125)*spak1k4
      abb67(48)=abb67(48)+abb67(156)
      abb67(48)=abb67(48)*spbl6k3
      abb67(55)=abb67(26)*abb67(55)
      abb67(156)=abb67(55)*spbe7k3
      abb67(48)=abb67(48)-abb67(156)
      abb67(156)=abb67(48)*abb67(87)
      abb67(157)=abb67(149)*spbl6k3
      abb67(158)=abb67(74)*spak1k4
      abb67(159)=abb67(158)*spbe7k3
      abb67(157)=abb67(159)-abb67(157)
      abb67(157)=abb67(157)*spak2l6
      abb67(159)=abb67(35)*abb67(157)
      abb67(160)=abb67(50)*abb67(87)
      abb67(161)=abb67(35)*abb67(69)
      abb67(160)=abb67(161)+abb67(160)
      abb67(161)=3.0_ki*spak1k2
      abb67(160)=abb67(160)*abb67(161)
      abb67(162)=abb67(153)*spbl6k3
      abb67(163)=abb67(74)*abb67(15)
      abb67(164)=abb67(163)*spbe7k3
      abb67(162)=abb67(164)-abb67(162)
      abb67(78)=-abb67(162)*abb67(78)
      abb67(8)=abb67(8)*abb67(15)
      abb67(6)=abb67(9)*abb67(6)
      abb67(6)=abb67(66)+abb67(6)
      abb67(6)=abb67(10)*abb67(6)
      abb67(9)=abb67(6)*spbe7k3
      abb67(10)=abb67(17)*abb67(9)
      abb67(8)=abb67(8)+abb67(10)
      abb67(8)=spbl6k3*abb67(8)
      abb67(9)=-abb67(65)*abb67(9)
      abb67(8)=abb67(8)+abb67(9)
      abb67(8)=abb67(78)+3.0_ki*abb67(131)+abb67(160)+abb67(159)+abb67(152)+abb&
      &67(135)+2.0_ki*abb67(8)+abb67(156)+abb67(155)
      abb67(9)=4.0_ki*abb67(162)
      abb67(10)=abb67(87)*abb67(109)
      abb67(10)=abb67(114)+abb67(10)
      abb67(10)=spak2k4*abb67(10)
      abb67(10)=6.0_ki*abb67(10)
      abb67(66)=-abb67(132)*abb67(36)
      abb67(78)=abb67(109)*abb67(19)
      abb67(48)=abb67(66)+abb67(78)-abb67(48)
      abb67(66)=-spbl5k3*abb67(151)
      abb67(25)=-abb67(25)*abb67(15)
      abb67(78)=abb67(120)*spbe7k3
      abb67(114)=-abb67(17)*abb67(78)
      abb67(25)=abb67(25)+abb67(114)
      abb67(25)=spbl6k3*abb67(25)
      abb67(65)=abb67(65)*abb67(78)
      abb67(25)=abb67(25)+abb67(65)
      abb67(25)=abb67(25)*abb67(107)
      abb67(65)=-abb67(109)*abb67(46)
      abb67(50)=spak1k2*abb67(50)
      abb67(78)=-abb67(130)*abb67(103)
      abb67(25)=abb67(25)+abb67(78)+abb67(50)+abb67(65)+3.0_ki*abb67(48)+abb67(&
      &66)
      abb67(25)=2.0_ki*abb67(25)
      abb67(48)=abb67(93)*abb67(109)
      abb67(50)=abb67(96)*abb67(154)
      abb67(50)=2.0_ki*abb67(162)+abb67(50)
      abb67(65)=-abb67(109)*abb67(82)
      abb67(66)=spbk7k1*spak1k4
      abb67(78)=abb67(66)*abb67(111)
      abb67(101)=abb67(101)+abb67(103)
      abb67(44)=abb67(101)*abb67(44)
      abb67(103)=abb67(145)-abb67(146)
      abb67(75)=abb67(103)*abb67(75)
      abb67(44)=abb67(75)+abb67(44)
      abb67(43)=-abb67(115)*abb67(43)
      abb67(43)=2.0_ki*abb67(44)+abb67(43)
      abb67(43)=spbk7k3*abb67(43)
      abb67(44)=abb67(15)*spbk7k1
      abb67(75)=abb67(115)*abb67(44)
      abb67(111)=abb67(115)*spbk7k3
      abb67(114)=abb67(17)*abb67(111)
      abb67(75)=abb67(75)+abb67(114)
      abb67(75)=spbl5k3*abb67(75)
      abb67(114)=abb67(89)*abb67(54)
      abb67(131)=abb67(114)-abb67(158)
      abb67(131)=spbk7k3*abb67(131)*abb67(39)
      abb67(132)=spbl6k3*abb67(115)*abb67(66)
      abb67(131)=abb67(132)+abb67(131)
      abb67(131)=spak2l6*abb67(131)
      abb67(18)=abb67(18)*abb67(89)
      abb67(132)=abb67(18)-abb67(163)
      abb67(132)=abb67(132)*spbk7k3
      abb67(135)=abb67(89)*spbl6k3
      abb67(44)=abb67(44)*abb67(135)
      abb67(44)=abb67(132)+abb67(44)
      abb67(132)=-abb67(44)*abb67(21)
      abb67(44)=-abb67(88)*spbe7l6*abb67(44)
      abb67(88)=-abb67(46)*abb67(111)
      abb67(43)=abb67(44)+2.0_ki*abb67(132)+abb67(88)+abb67(131)+abb67(75)+abb6&
      &7(43)+abb67(78)
      abb67(43)=2.0_ki*abb67(43)
      abb67(44)=abb67(116)*spbk7k3
      abb67(44)=4.0_ki*abb67(44)
      abb67(75)=spbk7k3*spak2e7*abb67(101)
      abb67(78)=abb67(110)*abb67(66)
      abb67(75)=abb67(78)+abb67(75)
      abb67(75)=8.0_ki*abb67(75)
      abb67(78)=abb67(82)*abb67(111)
      abb67(88)=abb67(89)*spbl6k3**2
      abb67(17)=-8.0_ki*abb67(17)*abb67(88)
      abb67(47)=-abb67(47)-3.0_ki*abb67(58)
      abb67(47)=abb67(34)*abb67(47)
      abb67(56)=-spak2l6*abb67(56)
      abb67(47)=abb67(56)-abb67(70)+abb67(47)
      abb67(56)=abb67(13)*abb67(58)
      abb67(58)=spbl5k3*abb67(81)
      abb67(70)=-spbl5k1*abb67(83)
      abb67(81)=abb67(85)*abb67(90)
      abb67(37)=abb67(81)+abb67(70)+abb67(37)+abb67(58)+abb67(56)
      abb67(37)=2.0_ki*abb67(37)
      abb67(56)=8.0_ki*spak2e7
      abb67(58)=-abb67(68)*abb67(56)
      abb67(68)=abb67(34)*abb67(82)
      abb67(70)=12.0_ki*abb67(100)
      abb67(81)=-abb67(141)+3.0_ki*abb67(36)
      abb67(81)=abb67(81)*abb67(143)
      abb67(83)=abb67(34)*spak2k4
      abb67(85)=abb67(144)*spak2l6
      abb67(90)=abb67(61)*abb67(113)
      abb67(101)=abb67(90)*abb67(134)
      abb67(12)=abb67(12)*abb67(137)
      abb67(12)=-abb67(81)+abb67(83)+abb67(12)+abb67(140)+abb67(85)+abb67(101)
      abb67(81)=-2.0_ki*abb67(12)
      abb67(83)=-28.0_ki*abb67(100)
      abb67(85)=-2.0_ki*abb67(100)
      abb67(100)=abb67(149)*abb67(36)
      abb67(101)=-abb67(113)*abb67(19)
      abb67(100)=abb67(101)+abb67(100)
      abb67(101)=-spbl5k3*abb67(153)
      abb67(131)=abb67(113)*abb67(46)
      abb67(69)=-spak1k2*abb67(69)
      abb67(132)=-abb67(130)*abb67(146)
      abb67(69)=abb67(132)+abb67(69)+abb67(131)+abb67(157)+3.0_ki*abb67(100)+ab&
      &b67(101)
      abb67(100)=abb67(82)*abb67(113)
      abb67(101)=spak2k4*abb67(113)
      abb67(103)=-spbk7k3*abb67(103)
      abb67(66)=-abb67(113)*abb67(66)
      abb67(66)=abb67(66)+abb67(103)
      abb67(66)=abb67(66)*abb67(61)
      abb67(103)=-abb67(114)-abb67(158)
      abb67(103)=abb67(103)*abb67(36)
      abb67(18)=-abb67(18)+3.0_ki*abb67(163)
      abb67(18)=spbl5k3*abb67(18)
      abb67(19)=-3.0_ki*abb67(46)+abb67(19)
      abb67(19)=abb67(135)*abb67(19)
      abb67(46)=spak2l6*spak3k4*abb67(88)
      abb67(73)=spak1k2*abb67(73)
      abb67(88)=-abb67(130)*abb67(158)
      abb67(18)=abb67(88)+abb67(73)+abb67(46)+abb67(18)+abb67(103)+abb67(19)
      abb67(18)=4.0_ki*abb67(18)
      abb67(19)=abb67(135)*spak2k4
      abb67(19)=8.0_ki*abb67(19)
      abb67(46)=abb67(93)*abb67(135)
      abb67(73)=-spak1e7*abb67(122)
      abb67(41)=abb67(41)*abb67(115)
      abb67(73)=-abb67(41)+abb67(73)
      abb67(88)=spbk7k1*spak2k7
      abb67(73)=abb67(73)*abb67(88)
      abb67(93)=spak1e7*spak2l5
      abb67(103)=-abb67(93)*abb67(122)
      abb67(39)=es71*abb67(39)*abb67(118)
      abb67(39)=abb67(39)+abb67(103)
      abb67(39)=spbl5k1*abb67(39)
      abb67(97)=abb67(97)*abb67(122)
      abb67(82)=-es71*abb67(115)*abb67(82)
      abb67(82)=abb67(82)+abb67(97)
      abb67(82)=spbk4k1*abb67(82)
      abb67(97)=es71*abb67(125)
      abb67(103)=-es567*abb67(7)*abb67(128)
      abb67(97)=abb67(103)-abb67(129)+abb67(97)
      abb67(103)=spak1e7*spbl6k1
      abb67(97)=abb67(103)*abb67(97)
      abb67(114)=abb67(52)*abb67(27)
      abb67(125)=abb67(103)*abb67(125)
      abb67(114)=abb67(114)+abb67(125)
      abb67(31)=-abb67(114)*abb67(31)
      abb67(41)=spbl6k1*abb67(41)
      abb67(114)=abb67(11)*abb67(103)
      abb67(41)=abb67(41)+abb67(114)
      abb67(41)=spak2l6*abb67(41)
      abb67(32)=-abb67(42)-3.0_ki*abb67(32)
      abb67(32)=spak2k3*abb67(32)
      abb67(42)=spal6e7*spbe7l6
      abb67(21)=abb67(21)+abb67(42)
      abb67(114)=-abb67(142)*es71*abb67(21)
      abb67(62)=abb67(27)*abb67(62)
      abb67(11)=abb67(11)*abb67(52)
      abb67(11)=abb67(82)+abb67(32)+abb67(39)+abb67(41)+abb67(73)+abb67(11)+abb&
      &67(62)+abb67(114)+abb67(31)+abb67(97)
      abb67(31)=spbk4k1*spak2k4
      abb67(32)=abb67(31)+abb67(88)
      abb67(32)=abb67(74)*abb67(32)
      abb67(39)=spbl6k1**2
      abb67(41)=-spak2l6*abb67(89)*abb67(39)
      abb67(62)=spbl5k1*abb67(124)
      abb67(14)=spak2k3*abb67(14)
      abb67(14)=abb67(14)+abb67(62)+abb67(41)+abb67(32)
      abb67(14)=abb67(14)*abb67(38)
      abb67(32)=abb67(89)*abb67(35)
      abb67(38)=abb67(32)*spak2k7
      abb67(41)=abb67(84)*spak2k7
      abb67(62)=-es12-abb67(45)
      abb67(62)=abb67(41)*abb67(62)
      abb67(62)=-abb67(38)+abb67(62)
      abb67(62)=spbk7k1*abb67(62)
      abb67(73)=abb67(117)*abb67(35)
      abb67(82)=abb67(84)*spak2l5
      abb67(97)=3.0_ki*es12-abb67(45)
      abb67(97)=abb67(82)*abb67(97)
      abb67(97)=-abb67(73)+abb67(97)
      abb67(97)=spbl5k1*abb67(97)
      abb67(114)=5.0_ki*abb67(71)+3.0_ki*abb67(63)
      abb67(114)=spak2k3*abb67(114)
      abb67(129)=abb67(84)*abb67(45)
      abb67(129)=abb67(32)+abb67(129)
      abb67(129)=abb67(96)*abb67(129)
      abb67(130)=es12*abb67(138)
      abb67(129)=-5.0_ki*abb67(130)+abb67(129)
      abb67(129)=spbk4k1*abb67(129)
      abb67(91)=abb67(26)*abb67(91)
      abb67(6)=abb67(6)*abb67(128)
      abb67(91)=abb67(6)+abb67(91)
      abb67(91)=spbl6k1*abb67(91)
      abb67(35)=-abb67(35)*abb67(133)
      abb67(128)=abb67(120)*spak2l5
      abb67(72)=-abb67(72)*abb67(128)*abb67(94)
      abb67(94)=abb67(118)*spbl6k1
      abb67(130)=es567*abb67(94)
      abb67(131)=4.0_ki*abb67(117)
      abb67(39)=spak1l6*abb67(39)*abb67(131)
      abb67(14)=abb67(39)+abb67(130)+abb67(14)+abb67(129)+abb67(72)+abb67(114)+&
      &abb67(97)+abb67(35)+abb67(62)+abb67(91)
      abb67(14)=2.0_ki*abb67(14)
      abb67(35)=-abb67(94)*abb67(21)
      abb67(39)=abb67(40)*spak2k3
      abb67(40)=abb67(88)*abb67(115)
      abb67(62)=abb67(116)*spbk4k1
      abb67(72)=abb67(121)*spbl6k1
      abb67(91)=abb67(123)*spbl5k1
      abb67(35)=-abb67(62)-abb67(39)-abb67(40)+abb67(72)+abb67(91)+abb67(35)
      abb67(33)=abb67(33)*spak2e7
      abb67(39)=abb67(51)*abb67(27)
      abb67(33)=abb67(39)-abb67(33)
      abb67(39)=abb67(35)+2.0_ki*abb67(33)
      abb67(40)=4.0_ki*abb67(39)
      abb67(51)=abb67(7)*spak2l5
      abb67(62)=abb67(103)*abb67(51)
      abb67(72)=4.0_ki*abb67(62)
      abb67(91)=8.0_ki*abb67(124)
      abb67(31)=-abb67(31)+3.0_ki*abb67(88)
      abb67(31)=abb67(31)*spak1e7
      abb67(31)=abb67(31)+abb67(52)
      abb67(52)=spbl5k1*abb67(93)
      abb67(52)=abb67(52)-abb67(31)
      abb67(52)=abb67(27)*abb67(52)
      abb67(30)=spak2k3*abb67(30)
      abb67(93)=abb67(103)*abb67(127)
      abb67(30)=abb67(93)+abb67(30)+3.0_ki*abb67(125)+abb67(52)
      abb67(30)=2.0_ki*abb67(30)
      abb67(52)=3.0_ki*abb67(26)
      abb67(93)=abb67(52)+abb67(136)
      abb67(97)=spbl6k1*abb67(93)
      abb67(96)=abb67(96)*spbk4k1
      abb67(88)=abb67(96)-abb67(88)
      abb67(96)=abb67(84)*abb67(88)
      abb67(114)=-spbl5k1*abb67(82)
      abb67(124)=3.0_ki*spak2k3
      abb67(125)=-abb67(28)*abb67(124)
      abb67(96)=abb67(125)+abb67(114)+abb67(96)+abb67(97)
      abb67(96)=4.0_ki*abb67(96)
      abb67(59)=-abb67(27)*abb67(59)
      abb67(39)=2.0_ki*abb67(39)
      abb67(97)=-abb67(27)*abb67(56)
      abb67(33)=abb67(62)-abb67(33)
      abb67(33)=2.0_ki*abb67(33)-abb67(35)
      abb67(35)=abb67(27)*abb67(61)
      abb67(62)=abb67(26)*abb67(87)
      abb67(114)=-spak2l6*abb67(32)
      abb67(125)=es567*abb67(118)
      abb67(6)=abb67(125)+abb67(114)+abb67(6)+abb67(62)
      abb67(6)=spbe7l6*abb67(6)
      abb67(62)=-abb67(122)*abb67(161)
      abb67(114)=-abb67(82)*abb67(87)
      abb67(73)=-abb67(73)+abb67(114)
      abb67(73)=spbe7l5*abb67(73)
      abb67(114)=-abb67(154)*abb67(124)
      abb67(122)=abb67(41)*abb67(87)
      abb67(38)=abb67(38)+abb67(122)
      abb67(38)=spbk7e7*abb67(38)
      abb67(122)=abb67(138)*abb67(87)
      abb67(125)=spak2k4*abb67(32)
      abb67(122)=abb67(125)+abb67(122)
      abb67(122)=spbe7k4*abb67(122)
      abb67(6)=3.0_ki*abb67(122)+abb67(38)+abb67(114)+abb67(73)+abb67(62)+abb67&
      &(6)
      abb67(38)=abb67(131)*spbe7l6
      abb67(62)=-spbe7l6*abb67(93)
      abb67(27)=-spak1k2*abb67(27)
      abb67(73)=spbe7l5*abb67(82)
      abb67(82)=spak2k3*abb67(109)
      abb67(93)=3.0_ki*spbk7e7
      abb67(41)=abb67(41)*abb67(93)
      abb67(109)=spbe7k4*abb67(138)
      abb67(27)=abb67(109)+abb67(41)+abb67(82)+abb67(73)+abb67(27)+abb67(62)
      abb67(27)=2.0_ki*abb67(27)
      abb67(41)=-spbe7l6*abb67(118)
      abb67(21)=-abb67(118)*abb67(21)
      abb67(21)=abb67(121)+abb67(21)
      abb67(21)=spbk7l6*abb67(21)
      abb67(62)=abb67(84)*spak2e7
      abb67(73)=abb67(62)*abb67(87)
      abb67(82)=spak2e7*abb67(32)
      abb67(73)=abb67(82)+abb67(73)
      abb67(73)=spbk7e7*abb67(73)
      abb67(82)=-spak1k2*spbk7k1*abb67(115)
      abb67(87)=-spak2k3*abb67(111)
      abb67(109)=spbk7l5*abb67(123)
      abb67(111)=-spbk7k4*abb67(116)
      abb67(21)=abb67(111)+abb67(109)+2.0_ki*abb67(73)+abb67(87)+abb67(82)+abb6&
      &7(21)
      abb67(21)=2.0_ki*abb67(21)
      abb67(62)=8.0_ki*spbk7e7*abb67(62)
      abb67(73)=spak2l6*abb67(103)
      abb67(31)=abb67(73)-abb67(31)
      abb67(31)=abb67(7)*abb67(31)
      abb67(51)=spbl5k1*spak1e7*abb67(51)
      abb67(34)=-spak2k3*abb67(34)
      abb67(31)=abb67(34)+abb67(51)+abb67(31)
      abb67(34)=-abb67(89)*abb67(88)
      abb67(51)=spbl5k1*abb67(117)
      abb67(73)=abb67(13)*abb67(124)
      abb67(34)=abb67(73)+abb67(51)+abb67(133)+abb67(34)
      abb67(34)=2.0_ki*abb67(34)
      abb67(51)=-abb67(7)*abb67(56)
      abb67(56)=-abb67(7)*abb67(61)
      abb67(73)=abb67(7)*abb67(139)
      abb67(82)=-spak2l6*spbe7l6
      abb67(87)=-spak2k7*abb67(93)
      abb67(88)=-spbe7k4*spak2k4
      abb67(82)=abb67(88)+abb67(87)+abb67(82)
      abb67(82)=abb67(89)*abb67(82)
      abb67(7)=-spak1k2*abb67(7)
      abb67(87)=-spbe7l5*abb67(117)
      abb67(88)=-spak2k3*abb67(113)
      abb67(7)=abb67(88)+abb67(87)+abb67(7)+abb67(82)
      abb67(61)=-spbk7e7*abb67(89)*abb67(61)
      abb67(82)=spbk7l6*spak2k7
      abb67(87)=-spbl6k4*spak2k4
      abb67(82)=abb67(87)+abb67(82)
      abb67(82)=abb67(89)*abb67(82)
      abb67(74)=-spak1k2*abb67(74)
      abb67(87)=-spak2k3*abb67(135)
      abb67(88)=spbl6l5*abb67(117)
      abb67(74)=3.0_ki*abb67(88)+abb67(87)+abb67(74)+abb67(82)
      abb67(74)=4.0_ki*abb67(74)
      abb67(82)=abb67(63)+abb67(71)
      abb67(87)=16.0_ki*spak1k2
      abb67(88)=abb67(82)*abb67(87)
      abb67(93)=-32.0_ki*spak1k2*abb67(28)
      abb67(42)=abb67(42)*abb67(119)
      abb67(42)=abb67(42)-abb67(112)
      abb67(103)=2.0_ki*abb67(42)
      abb67(109)=spbl6k3*abb67(131)
      abb67(110)=-8.0_ki*abb67(110)
      abb67(87)=abb67(13)*abb67(87)
      abb67(111)=-abb67(113)*abb67(139)
      abb67(82)=8.0_ki*spak3k4*abb67(82)
      abb67(28)=16.0_ki*abb67(28)
      abb67(112)=-spak3k4*abb67(28)
      abb67(13)=-8.0_ki*abb67(13)
      abb67(113)=-spak3k4*abb67(13)
      abb67(114)=spbl6k3*abb67(52)
      abb67(36)=abb67(84)*abb67(36)
      abb67(115)=spbk4k3*abb67(138)
      abb67(36)=abb67(115)+abb67(114)+abb67(36)
      abb67(36)=spak1k4*abb67(36)
      abb67(114)=-spbl5k3*abb67(84)
      abb67(107)=spbl6k3*abb67(120)*abb67(107)
      abb67(107)=abb67(107)+abb67(114)
      abb67(15)=abb67(15)*abb67(107)
      abb67(15)=abb67(36)+abb67(15)
      abb67(15)=spbk2k1*abb67(15)
      abb67(36)=-abb67(84)*abb67(79)
      abb67(26)=-abb67(26)*abb67(54)
      abb67(26)=abb67(26)+abb67(55)
      abb67(54)=abb67(120)*abb67(67)
      abb67(26)=abb67(54)+3.0_ki*abb67(26)+abb67(36)
      abb67(26)=spbk3k2*abb67(26)
      abb67(36)=-abb67(71)-2.0_ki*abb67(63)
      abb67(36)=spak1k4*abb67(36)
      abb67(15)=abb67(26)+abb67(15)+abb67(36)
      abb67(15)=4.0_ki*abb67(15)
      abb67(26)=abb67(138)*spbk3k2
      abb67(36)=8.0_ki*abb67(26)
      abb67(28)=spak1k4*abb67(28)
      abb67(26)=4.0_ki*abb67(26)
      abb67(13)=spak1k4*abb67(13)
      abb67(45)=es234-es34+2.0_ki*es12-abb67(45)
      abb67(45)=abb67(84)*abb67(45)
      abb67(52)=-spbl6k2*abb67(52)
      abb67(32)=abb67(52)-2.0_ki*abb67(32)-3.0_ki*abb67(128)+abb67(45)
      abb67(32)=4.0_ki*abb67(32)
      abb67(45)=-16.0_ki*abb67(84)
      abb67(52)=8.0_ki*abb67(89)
      R2d67=0.0_ki
      rat2 = rat2 + R2d67
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='67' value='", &
          & R2d67, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd67h2
