module     p0_dbaru_epnebbbarg_abbrevd314h3
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(180), public :: abb314
   complex(ki), public :: R2d314
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
      abb314(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb314(2)=NC**(-1)
      abb314(3)=es234**(-1)
      abb314(4)=spak2l5**(-1)
      abb314(5)=spak2l6**(-1)
      abb314(6)=spbl5k2**(-1)
      abb314(7)=sqrt(mB**2)
      abb314(8)=i_*CVDU
      abb314(9)=abb314(8)*abb314(1)
      abb314(10)=TR*gW
      abb314(10)=abb314(10)**2
      abb314(11)=abb314(10)*abb314(3)*abb314(9)
      abb314(12)=abb314(11)*abb314(2)
      abb314(13)=abb314(12)*c3
      abb314(12)=abb314(12)*c1
      abb314(14)=abb314(13)-abb314(12)
      abb314(15)=spbk3k2*mB
      abb314(16)=-abb314(15)*abb314(14)
      abb314(17)=abb314(11)*abb314(15)
      abb314(18)=abb314(17)*c4
      abb314(19)=abb314(17)*c2
      abb314(20)=abb314(18)-abb314(19)
      abb314(16)=abb314(16)+abb314(20)
      abb314(21)=spak2k4*abb314(5)
      abb314(22)=abb314(21)*spbe7l5
      abb314(23)=-abb314(22)*abb314(16)
      abb314(24)=spbl5k2*spak1k2
      abb314(25)=abb314(24)*abb314(23)
      abb314(26)=spbe7l5*abb314(5)
      abb314(27)=abb314(26)*spak3k4
      abb314(28)=-abb314(27)*abb314(16)
      abb314(29)=spbl5k3*spak1k2
      abb314(30)=abb314(29)*abb314(28)
      abb314(25)=abb314(25)-abb314(30)
      abb314(25)=abb314(25)*spal5e7
      abb314(30)=abb314(11)*spak2k4
      abb314(31)=c2-c4
      abb314(32)=abb314(31)*abb314(30)
      abb314(33)=mB**3
      abb314(34)=abb314(33)*abb314(4)**2
      abb314(35)=spak1e7*spbk3k2
      abb314(36)=abb314(34)*abb314(35)
      abb314(37)=abb314(36)*abb314(32)
      abb314(38)=-abb314(35)*abb314(14)
      abb314(39)=abb314(34)*spak2k4
      abb314(40)=-abb314(39)*abb314(38)
      abb314(37)=abb314(37)+abb314(40)
      abb314(40)=abb314(6)*spak1k2
      abb314(41)=abb314(40)*spbe7k1
      abb314(42)=abb314(41)*abb314(37)
      abb314(43)=abb314(37)*abb314(6)
      abb314(44)=2.0_ki*spak2k7
      abb314(45)=abb314(44)*spbk7e7
      abb314(46)=abb314(43)*abb314(45)
      abb314(47)=spbe7l5*spak2k4
      abb314(48)=-abb314(47)*abb314(38)
      abb314(49)=-abb314(35)*abb314(32)
      abb314(50)=-spbe7l5*abb314(49)
      abb314(48)=abb314(50)+abb314(48)
      abb314(48)=abb314(48)*abb314(7)
      abb314(46)=-2.0_ki*abb314(42)+abb314(48)+abb314(46)
      abb314(46)=spbl6k2*abb314(46)
      abb314(50)=-abb314(4)*abb314(14)
      abb314(51)=-abb314(31)*abb314(11)*abb314(4)
      abb314(52)=abb314(50)+abb314(51)
      abb314(53)=mB**2
      abb314(54)=abb314(52)*abb314(53)
      abb314(55)=spak3k4*abb314(5)
      abb314(56)=-abb314(55)*spbk3k2*abb314(54)
      abb314(57)=abb314(7)*spak1k2
      abb314(58)=abb314(56)*abb314(57)
      abb314(59)=abb314(58)*spak2e7
      abb314(60)=abb314(59)*spbe7k3
      abb314(61)=-abb314(33)*abb314(52)
      abb314(62)=spbk3k2**2
      abb314(63)=abb314(40)*abb314(62)
      abb314(64)=spak2e7*abb314(61)*abb314(27)*abb314(63)
      abb314(65)=abb314(52)*abb314(53)*abb314(21)
      abb314(66)=-abb314(35)*abb314(65)
      abb314(67)=abb314(66)*abb314(7)
      abb314(68)=abb314(67)*abb314(45)
      abb314(69)=2.0_ki*abb314(57)
      abb314(70)=-abb314(69)*abb314(66)*spbe7k1
      abb314(46)=-abb314(25)+abb314(60)+abb314(46)+abb314(70)-abb314(64)+abb314&
      &(68)
      abb314(46)=es71*abb314(46)
      abb314(17)=-abb314(31)*abb314(17)*spak1e7
      abb314(68)=abb314(15)*spak1e7
      abb314(12)=abb314(12)*abb314(68)
      abb314(13)=abb314(13)*abb314(68)
      abb314(12)=abb314(12)+abb314(17)-abb314(13)
      abb314(13)=-abb314(55)*abb314(12)
      abb314(70)=spbk7l5*spak2k7
      abb314(71)=abb314(70)*spbk7e7
      abb314(72)=-abb314(13)*abb314(71)
      abb314(73)=spbe7k1*spak1k2
      abb314(74)=abb314(73)*abb314(13)
      abb314(75)=spbk7l5*abb314(74)
      abb314(72)=abb314(72)+abb314(75)
      abb314(72)=spbl5k3*abb314(72)
      abb314(75)=-abb314(21)*abb314(12)
      abb314(76)=abb314(75)*abb314(71)
      abb314(77)=abb314(73)*abb314(75)
      abb314(78)=-spbk7l5*abb314(77)
      abb314(76)=abb314(76)+abb314(78)
      abb314(76)=spbl5k2*abb314(76)
      abb314(78)=spak2k4*abb314(4)
      abb314(79)=-abb314(78)*abb314(12)
      abb314(80)=abb314(79)*spbl6k2
      abb314(68)=-abb314(68)*abb314(50)
      abb314(81)=-spak3k4*abb314(68)
      abb314(82)=spak3k4*abb314(4)
      abb314(83)=abb314(82)*abb314(17)
      abb314(81)=abb314(81)+abb314(83)
      abb314(83)=spbl6k3*abb314(81)
      abb314(83)=abb314(80)+abb314(83)
      abb314(71)=abb314(71)*abb314(83)
      abb314(71)=abb314(76)+abb314(72)+abb314(71)
      abb314(71)=spal5k7*abb314(71)
      abb314(72)=-abb314(55)*abb314(52)
      abb314(62)=abb314(72)*abb314(62)
      abb314(76)=-abb314(70)*abb314(41)
      abb314(83)=spbk7e7*spak2k7**2
      abb314(84)=spbk7l5*abb314(6)*abb314(83)
      abb314(76)=abb314(84)+abb314(76)
      abb314(84)=abb314(33)*spak1e7
      abb314(76)=abb314(76)*abb314(84)*abb314(62)
      abb314(85)=spak2k4*abb314(38)
      abb314(49)=abb314(49)+abb314(85)
      abb314(49)=abb314(49)*abb314(7)
      abb314(85)=spak1k7*spbk7l5
      abb314(86)=abb314(85)*spbl6k2
      abb314(87)=-spbe7k1*abb314(49)*abb314(86)
      abb314(71)=abb314(71)+abb314(87)+abb314(76)
      abb314(76)=spbk7e7*spak2k7
      abb314(43)=abb314(43)*abb314(76)
      abb314(42)=abb314(43)-abb314(42)
      abb314(42)=abb314(42)*spbl6k2
      abb314(43)=abb314(11)*spak3k4
      abb314(87)=abb314(31)*abb314(43)
      abb314(36)=-abb314(36)*abb314(87)
      abb314(88)=abb314(34)*spak3k4
      abb314(89)=-abb314(88)*abb314(38)
      abb314(36)=abb314(36)-abb314(89)
      abb314(89)=abb314(36)*abb314(6)
      abb314(90)=abb314(89)*abb314(76)
      abb314(36)=abb314(36)*abb314(41)
      abb314(90)=abb314(90)-abb314(36)
      abb314(90)=abb314(90)*spbl6k3
      abb314(42)=abb314(42)+abb314(90)
      abb314(90)=abb314(67)*abb314(76)
      abb314(66)=abb314(66)*abb314(57)
      abb314(91)=abb314(66)*spbe7k1
      abb314(90)=abb314(42)+abb314(90)-abb314(91)
      abb314(91)=es12-es712
      abb314(92)=-2.0_ki*abb314(91)
      abb314(90)=-abb314(90)*abb314(92)
      abb314(93)=abb314(38)*spak3k4
      abb314(94)=abb314(43)*abb314(35)
      abb314(95)=c2*abb314(94)
      abb314(94)=c4*abb314(94)
      abb314(93)=abb314(94)+abb314(93)-abb314(95)
      abb314(94)=-abb314(7)*spbe7l5*abb314(93)
      abb314(95)=abb314(89)*abb314(45)
      abb314(36)=-2.0_ki*abb314(36)-abb314(94)+abb314(95)
      abb314(36)=es71*abb314(36)
      abb314(95)=spak1k7*abb314(7)
      abb314(96)=2.0_ki*spbk7l5
      abb314(97)=spbe7k1*abb314(93)*abb314(96)*abb314(95)
      abb314(36)=abb314(97)+abb314(36)
      abb314(36)=spbl6k3*abb314(36)
      abb314(97)=2.0_ki*abb314(70)
      abb314(98)=abb314(97)*spbe7k1
      abb314(80)=-abb314(98)*abb314(80)
      abb314(99)=abb314(16)*abb314(78)
      abb314(100)=-spbe7l5*abb314(99)
      abb314(101)=spak2e7*abb314(100)*spbl6k2
      abb314(102)=-es71*abb314(101)
      abb314(15)=-abb314(15)*abb314(50)
      abb314(103)=-spak3k4*abb314(15)
      abb314(19)=abb314(82)*abb314(19)
      abb314(18)=abb314(82)*abb314(18)
      abb314(18)=abb314(18)+abb314(103)-abb314(19)
      abb314(19)=-spbe7l5*abb314(18)
      abb314(82)=abb314(19)*spak2e7
      abb314(103)=es71*abb314(82)
      abb314(104)=-abb314(81)*abb314(98)
      abb314(103)=abb314(104)+abb314(103)
      abb314(103)=spbl6k3*abb314(103)
      abb314(80)=abb314(103)+abb314(80)+abb314(102)
      abb314(80)=spak1l5*abb314(80)
      abb314(102)=-abb314(72)*abb314(53)*abb314(35)
      abb314(83)=abb314(7)*abb314(83)
      abb314(103)=-spbe7k1*spak2k7*abb314(57)
      abb314(83)=abb314(83)+abb314(103)
      abb314(103)=2.0_ki*spbk7k3
      abb314(83)=abb314(103)*abb314(102)*abb314(83)
      abb314(36)=abb314(83)+abb314(80)+abb314(36)+abb314(90)+abb314(46)+2.0_ki*&
      &abb314(71)
      abb314(36)=2.0_ki*abb314(36)
      abb314(46)=abb314(18)*spak1k2
      abb314(71)=abb314(46)*spbl6k3
      abb314(80)=-abb314(99)*spak1k2
      abb314(83)=abb314(80)*spbl6k2
      abb314(90)=-abb314(21)*abb314(16)
      abb314(104)=abb314(90)*abb314(24)
      abb314(55)=-abb314(55)*abb314(16)
      abb314(29)=abb314(29)*abb314(55)
      abb314(29)=abb314(71)+abb314(83)+abb314(104)-abb314(29)
      abb314(71)=-spak1l5*abb314(29)
      abb314(62)=abb314(33)*abb314(62)
      abb314(83)=spak1k2**2
      abb314(104)=-abb314(6)*abb314(62)*abb314(83)
      abb314(71)=abb314(104)+abb314(71)
      abb314(71)=spbl5k1*abb314(71)
      abb314(104)=abb314(55)*spbl5k3
      abb314(105)=abb314(90)*spbl5k2
      abb314(104)=abb314(104)-abb314(105)
      abb314(105)=-spbl6k2*abb314(99)
      abb314(106)=spbl6k3*abb314(18)
      abb314(105)=abb314(105)+abb314(106)-abb314(104)
      abb314(105)=spak1l5*abb314(105)
      abb314(62)=abb314(62)*abb314(40)
      abb314(62)=abb314(105)+abb314(62)
      abb314(62)=abb314(70)*abb314(62)
      abb314(105)=-spak3k4*abb314(16)
      abb314(106)=-spbk3k2*abb314(14)
      abb314(107)=abb314(106)*spak3k4
      abb314(108)=abb314(43)*spbk3k2
      abb314(109)=abb314(31)*abb314(108)
      abb314(107)=abb314(107)-abb314(109)
      abb314(109)=abb314(7)*abb314(107)
      abb314(105)=abb314(109)+abb314(105)
      abb314(105)=abb314(105)*abb314(85)
      abb314(109)=abb314(106)*abb314(88)
      abb314(110)=-abb314(34)*abb314(31)
      abb314(108)=abb314(110)*abb314(108)
      abb314(108)=abb314(109)+abb314(108)
      abb314(108)=abb314(108)*abb314(40)
      abb314(109)=es71*abb314(108)
      abb314(105)=abb314(105)+abb314(109)
      abb314(105)=spbl6k3*abb314(105)
      abb314(30)=-abb314(31)*abb314(34)*abb314(30)
      abb314(109)=-spbk3k2*abb314(30)
      abb314(111)=-abb314(39)*abb314(106)
      abb314(109)=abb314(109)+abb314(111)
      abb314(111)=abb314(40)*spbl6k2
      abb314(109)=abb314(109)*abb314(111)
      abb314(112)=-spbk3k2*abb314(65)
      abb314(113)=abb314(112)*abb314(57)
      abb314(113)=abb314(113)+abb314(109)
      abb314(108)=-spbl6k3*abb314(108)
      abb314(108)=abb314(108)-abb314(113)
      abb314(108)=es712*abb314(108)
      abb314(114)=spak2k4*abb314(16)
      abb314(115)=abb314(106)*spak2k4
      abb314(116)=-abb314(32)*spbk3k2
      abb314(115)=abb314(115)+abb314(116)
      abb314(116)=-abb314(7)*abb314(115)
      abb314(114)=abb314(116)+abb314(114)
      abb314(86)=abb314(114)*abb314(86)
      abb314(114)=es71*abb314(113)
      abb314(116)=-spbk7k3*spak2k7*abb314(58)
      abb314(83)=spbk3k1*abb314(7)*abb314(56)*abb314(83)
      abb314(62)=abb314(83)+abb314(71)+abb314(116)+abb314(108)+abb314(105)+abb3&
      &14(114)+abb314(86)+abb314(62)
      abb314(62)=8.0_ki*abb314(62)
      abb314(71)=abb314(82)*spbl6k3
      abb314(71)=abb314(71)-abb314(101)
      abb314(71)=abb314(71)*spak1l5
      abb314(25)=-abb314(64)+abb314(71)-abb314(25)
      abb314(64)=abb314(94)*spbl6k3
      abb314(71)=abb314(48)*spbl6k2
      abb314(60)=abb314(71)-abb314(64)+abb314(25)+abb314(60)
      abb314(60)=4.0_ki*abb314(60)
      abb314(64)=abb314(13)*abb314(76)
      abb314(64)=abb314(64)-abb314(74)
      abb314(64)=abb314(64)*spbl5k3
      abb314(71)=abb314(75)*abb314(76)
      abb314(71)=abb314(71)-abb314(77)
      abb314(71)=abb314(71)*spbl5k2
      abb314(64)=abb314(64)-abb314(71)
      abb314(71)=abb314(73)-abb314(76)
      abb314(73)=abb314(71)*abb314(79)
      abb314(74)=spbl6k2*abb314(73)
      abb314(71)=abb314(71)*abb314(81)
      abb314(77)=spbl6k3*abb314(71)
      abb314(74)=abb314(74)+abb314(77)+abb314(64)
      abb314(74)=4.0_ki*abb314(74)
      abb314(77)=spbe7l5*spbk3k2
      abb314(82)=-abb314(77)*abb314(14)
      abb314(83)=abb314(11)*c4
      abb314(86)=abb314(11)*c2
      abb314(101)=abb314(83)-abb314(86)
      abb314(105)=-abb314(77)*abb314(101)
      abb314(105)=abb314(105)-abb314(82)
      abb314(108)=spak4e7*spak1k7
      abb314(114)=abb314(7)*abb314(108)*spbk7l6
      abb314(116)=abb314(105)*abb314(114)
      abb314(20)=-abb314(4)*abb314(20)
      abb314(15)=abb314(15)+abb314(20)
      abb314(20)=spak1k7*spak2e7
      abb314(117)=abb314(20)*spbk7l6
      abb314(118)=abb314(117)*abb314(15)*spbe7l5
      abb314(17)=-abb314(4)*abb314(17)
      abb314(17)=abb314(68)+abb314(17)
      abb314(68)=abb314(70)*spbe7l6
      abb314(119)=abb314(68)*abb314(17)
      abb314(118)=abb314(118)-abb314(119)
      abb314(119)=abb314(118)*spak4l5
      abb314(116)=abb314(116)-abb314(119)
      abb314(119)=abb314(67)*spak2k7
      abb314(120)=abb314(20)*abb314(7)
      abb314(121)=abb314(112)*abb314(120)
      abb314(122)=abb314(119)+abb314(121)
      abb314(122)=abb314(122)*spbk7e7
      abb314(86)=abb314(86)*abb314(35)
      abb314(83)=abb314(83)*abb314(35)
      abb314(38)=abb314(83)+abb314(38)-abb314(86)
      abb314(38)=abb314(38)*abb314(7)
      abb314(83)=spbe7l6*spbk7l5
      abb314(86)=abb314(83)*spak4k7
      abb314(123)=abb314(86)*abb314(38)
      abb314(124)=abb314(23)*spal5e7
      abb314(125)=abb314(124)*abb314(85)
      abb314(126)=-abb314(22)*abb314(12)
      abb314(127)=abb314(126)*spal5k7
      abb314(128)=abb314(127)*spbk7l5
      abb314(129)=spbe7l6*abb314(6)
      abb314(130)=abb314(37)*abb314(129)
      abb314(131)=abb314(91)+es71
      abb314(132)=abb314(131)*abb314(130)
      abb314(133)=abb314(61)*spbk3k2
      abb314(134)=abb314(20)*abb314(6)
      abb314(135)=abb314(134)*spbk7k2
      abb314(136)=abb314(135)*abb314(22)
      abb314(137)=abb314(133)*abb314(136)
      abb314(35)=abb314(33)*abb314(35)
      abb314(138)=-abb314(52)*abb314(35)*abb314(21)
      abb314(139)=spbe7k2*abb314(6)
      abb314(140)=abb314(139)*abb314(70)
      abb314(141)=abb314(138)*abb314(140)
      abb314(122)=-abb314(122)-abb314(123)-abb314(125)+abb314(128)-abb314(137)+&
      &abb314(141)+abb314(132)-abb314(116)
      abb314(122)=8.0_ki*abb314(122)
      abb314(123)=abb314(15)*spak1k2
      abb314(125)=spak4l5*spbl6l5
      abb314(128)=abb314(125)*abb314(123)
      abb314(132)=-spbk3k2*abb314(101)
      abb314(106)=abb314(132)-abb314(106)
      abb314(132)=spbl6l5*abb314(7)
      abb314(137)=abb314(132)*spak1k4
      abb314(141)=abb314(106)*abb314(137)
      abb314(128)=abb314(128)-abb314(141)
      abb314(141)=abb314(61)*spak1k2
      abb314(142)=abb314(141)*abb314(21)
      abb314(143)=spbk3k2*abb314(142)
      abb314(112)=abb314(69)*abb314(112)
      abb314(109)=abb314(143)-abb314(112)+abb314(128)-abb314(109)
      abb314(109)=16.0_ki*abb314(109)
      abb314(112)=abb314(79)*spbe7l6
      abb314(143)=abb314(112)+abb314(126)
      abb314(144)=8.0_ki*abb314(143)
      abb314(145)=2.0_ki*abb314(130)
      abb314(146)=abb314(145)+abb314(126)
      abb314(146)=es71*abb314(146)
      abb314(145)=abb314(145)*abb314(91)
      abb314(147)=-3.0_ki*abb314(119)-2.0_ki*abb314(121)
      abb314(147)=spbk7e7*abb314(147)
      abb314(148)=abb314(96)*spak1k7
      abb314(149)=abb314(75)*abb314(148)
      abb314(66)=abb314(66)+abb314(149)
      abb314(66)=spbe7k1*abb314(66)
      abb314(149)=-abb314(35)*abb314(72)
      abb314(150)=abb314(149)*abb314(6)
      abb314(151)=-abb314(76)*abb314(150)
      abb314(41)=abb314(149)*abb314(41)
      abb314(41)=abb314(151)+abb314(41)
      abb314(41)=spbl5k3*abb314(41)
      abb314(151)=-abb314(124)*abb314(148)
      abb314(127)=abb314(96)*abb314(127)
      abb314(133)=-abb314(134)*abb314(103)*abb314(27)*abb314(133)
      abb314(134)=abb314(96)*spak4k7
      abb314(152)=-spbe7l6*abb314(38)*abb314(134)
      abb314(150)=abb314(150)*spbe7k3
      abb314(153)=-abb314(97)*abb314(150)
      abb314(41)=abb314(152)+abb314(133)+abb314(127)+abb314(151)+abb314(41)+abb&
      &314(153)+abb314(146)+abb314(147)+abb314(66)-abb314(42)+abb314(145)-2.0_k&
      &i*abb314(116)
      abb314(41)=4.0_ki*abb314(41)
      abb314(42)=abb314(90)*abb314(85)
      abb314(40)=spbl5k3*abb314(40)*spbk3k2*abb314(72)*abb314(33)
      abb314(40)=abb314(40)+abb314(42)-abb314(113)+abb314(128)
      abb314(40)=16.0_ki*abb314(40)
      abb314(42)=8.0_ki*abb314(126)
      abb314(35)=abb314(22)*abb314(35)*abb314(52)*abb314(6)
      abb314(35)=abb314(35)-abb314(130)
      abb314(35)=8.0_ki*abb314(35)
      abb314(66)=spbe7l6*abb314(18)
      abb314(66)=-abb314(28)+abb314(66)
      abb314(66)=abb314(103)*abb314(66)
      abb314(72)=-abb314(99)*spbe7l6
      abb314(23)=abb314(72)+abb314(23)
      abb314(72)=spbk7k2*abb314(23)
      abb314(66)=2.0_ki*abb314(72)+abb314(66)
      abb314(66)=abb314(20)*abb314(66)
      abb314(72)=spak3k4*abb314(12)
      abb314(93)=-abb314(93)*abb314(7)
      abb314(72)=abb314(93)+abb314(72)
      abb314(103)=abb314(72)*spbl6l5
      abb314(113)=abb314(44)*spbk7l6
      abb314(116)=abb314(81)*abb314(113)
      abb314(103)=abb314(116)-abb314(103)
      abb314(116)=abb314(13)*abb314(97)
      abb314(116)=abb314(116)-abb314(103)
      abb314(59)=-abb314(59)+abb314(116)
      abb314(59)=spbe7k3*abb314(59)
      abb314(127)=abb314(113)*abb314(79)
      abb314(128)=spak2k4*abb314(12)
      abb314(128)=-abb314(49)+abb314(128)
      abb314(130)=abb314(128)*spbl6l5
      abb314(127)=abb314(127)+abb314(130)
      abb314(130)=abb314(75)*abb314(97)
      abb314(130)=abb314(130)+abb314(127)
      abb314(133)=-spbe7k2*abb314(130)
      abb314(48)=-abb314(48)+abb314(73)
      abb314(48)=spbl6k2*abb314(48)
      abb314(71)=abb314(94)+abb314(71)
      abb314(71)=spbl6k3*abb314(71)
      abb314(25)=abb314(133)+abb314(59)+abb314(71)+abb314(48)-abb314(25)+abb314&
      &(64)+abb314(66)
      abb314(25)=2.0_ki*abb314(25)
      abb314(29)=-8.0_ki*abb314(29)
      abb314(48)=4.0_ki*abb314(143)
      abb314(59)=-2.0_ki*abb314(126)-abb314(112)
      abb314(59)=4.0_ki*abb314(59)
      abb314(64)=-spak3k4*abb314(82)
      abb314(66)=abb314(77)*abb314(87)
      abb314(64)=abb314(66)+abb314(64)
      abb314(64)=spbk7k3*abb314(64)
      abb314(66)=spak2k4*abb314(82)
      abb314(32)=-abb314(77)*abb314(32)
      abb314(32)=abb314(32)+abb314(66)
      abb314(32)=spbk7k2*abb314(32)
      abb314(32)=abb314(64)+abb314(32)
      abb314(32)=4.0_ki*abb314(95)*abb314(32)
      abb314(64)=abb314(38)-abb314(12)
      abb314(66)=-abb314(64)*spbl6l5
      abb314(71)=abb314(17)*abb314(113)
      abb314(66)=abb314(66)+abb314(71)
      abb314(71)=-abb314(5)*abb314(12)
      abb314(73)=abb314(71)*abb314(97)
      abb314(73)=abb314(73)+abb314(66)
      abb314(77)=4.0_ki*abb314(73)
      abb314(56)=-spbk7k3*abb314(56)*abb314(120)
      abb314(82)=spbk7k2*abb314(121)
      abb314(56)=abb314(56)+abb314(82)
      abb314(56)=4.0_ki*abb314(56)
      abb314(82)=abb314(134)*abb314(71)
      abb314(67)=-abb314(67)+abb314(82)+abb314(138)
      abb314(67)=4.0_ki*abb314(67)
      abb314(72)=abb314(72)*spbl5k3
      abb314(82)=abb314(128)*spbl5k2
      abb314(72)=abb314(72)-abb314(82)
      abb314(82)=spbk7e7*abb314(72)
      abb314(87)=es71*spbk7e7*abb314(79)
      abb314(93)=-spbe7k3*spbk7l5*abb314(93)
      abb314(87)=abb314(87)+abb314(93)
      abb314(93)=2.0_ki*spbk7e7
      abb314(94)=abb314(93)*abb314(79)*abb314(91)
      abb314(49)=-spbe7k2*abb314(96)*abb314(49)
      abb314(112)=abb314(81)*spbk7k3
      abb314(45)=abb314(45)*abb314(112)
      abb314(45)=abb314(45)+abb314(49)+2.0_ki*abb314(87)+abb314(94)+abb314(82)
      abb314(45)=2.0_ki*abb314(45)
      abb314(49)=spbk7k3*abb314(46)
      abb314(82)=spbk7k2*abb314(80)
      abb314(49)=abb314(49)+abb314(82)
      abb314(49)=8.0_ki*abb314(49)
      abb314(82)=abb314(116)*abb314(93)
      abb314(87)=abb314(55)*spak1k2
      abb314(94)=spbk7l5*abb314(87)
      abb314(116)=-spbk7l6*abb314(46)
      abb314(94)=abb314(94)+abb314(116)
      abb314(94)=8.0_ki*abb314(94)
      abb314(116)=-abb314(130)*abb314(93)
      abb314(90)=abb314(90)*spak1k2
      abb314(121)=-spbk7l5*abb314(90)
      abb314(126)=-spbk7l6*abb314(80)
      abb314(121)=abb314(121)+abb314(126)
      abb314(121)=8.0_ki*abb314(121)
      abb314(19)=-spbk7k3*abb314(19)
      abb314(100)=spbk7k2*abb314(100)
      abb314(19)=abb314(100)+abb314(19)
      abb314(19)=abb314(20)*abb314(19)
      abb314(100)=abb314(79)*spbe7k2
      abb314(81)=abb314(81)*spbe7k3
      abb314(81)=abb314(100)+abb314(81)
      abb314(70)=-abb314(70)*abb314(81)
      abb314(19)=abb314(70)+abb314(19)
      abb314(19)=4.0_ki*abb314(19)
      abb314(70)=-spbl5k3*abb314(46)
      abb314(24)=abb314(99)*abb314(24)
      abb314(24)=abb314(70)+abb314(24)
      abb314(24)=8.0_ki*abb314(24)
      abb314(70)=-abb314(26)*abb314(16)
      abb314(100)=abb314(70)*abb314(20)
      abb314(15)=abb314(15)*abb314(20)
      abb314(126)=abb314(15)*spbe7l6
      abb314(100)=abb314(100)+abb314(126)
      abb314(128)=8.0_ki*abb314(100)
      abb314(130)=-spbe7l5*abb314(64)
      abb314(17)=abb314(17)*spak2k7
      abb314(15)=abb314(17)+abb314(15)
      abb314(15)=abb314(15)*abb314(93)
      abb314(15)=abb314(15)+abb314(130)
      abb314(17)=4.0_ki*abb314(15)
      abb314(130)=16.0_ki*abb314(123)
      abb314(133)=-abb314(5)*abb314(16)
      abb314(143)=16.0_ki*abb314(133)
      abb314(145)=abb314(143)*spak1k2
      abb314(146)=spak1e7*mB
      abb314(50)=-abb314(146)*abb314(50)
      abb314(51)=-abb314(146)*abb314(51)
      abb314(50)=abb314(50)+abb314(51)
      abb314(147)=abb314(50)*abb314(68)
      abb314(151)=spbe7l5*mB
      abb314(152)=abb314(117)*abb314(52)*abb314(151)
      abb314(147)=abb314(147)+abb314(152)
      abb314(147)=abb314(147)*spak4l5
      abb314(101)=abb314(101)-abb314(14)
      abb314(114)=abb314(114)*abb314(101)*spbe7l5
      abb314(152)=-spak1e7*abb314(14)
      abb314(153)=abb314(11)*spak1e7
      abb314(154)=-abb314(153)*abb314(31)
      abb314(155)=abb314(154)+abb314(152)
      abb314(155)=abb314(155)*abb314(7)
      abb314(86)=abb314(155)*abb314(86)
      abb314(86)=abb314(114)-abb314(86)
      abb314(114)=-abb314(147)+abb314(86)
      abb314(114)=spbk4k2*abb314(114)
      abb314(54)=-abb314(54)*abb314(5)
      abb314(156)=spak1e7*abb314(54)
      abb314(157)=spak2k7*abb314(7)
      abb314(158)=-abb314(156)*abb314(157)
      abb314(159)=-abb314(54)*abb314(120)
      abb314(158)=abb314(158)+abb314(159)
      abb314(158)=spbk7e7*abb314(158)
      abb314(159)=-abb314(34)*abb314(152)
      abb314(153)=-abb314(153)*abb314(110)
      abb314(153)=abb314(153)+abb314(159)
      abb314(153)=abb314(153)*abb314(129)
      abb314(159)=es71*abb314(153)
      abb314(84)=abb314(52)*abb314(84)
      abb314(160)=abb314(5)*abb314(84)
      abb314(161)=-abb314(160)*abb314(140)
      abb314(158)=abb314(161)+abb314(158)+abb314(159)
      abb314(158)=es34*abb314(158)
      abb314(159)=spak1e7*abb314(9)
      abb314(161)=abb314(10)*abb314(5)
      abb314(162)=-abb314(31)*abb314(161)*abb314(151)*abb314(159)
      abb314(163)=c1-c3
      abb314(164)=abb314(163)*abb314(10)*abb314(2)
      abb314(165)=-abb314(159)*abb314(164)
      abb314(166)=abb314(26)*mB
      abb314(167)=-abb314(166)*abb314(165)
      abb314(162)=abb314(167)+abb314(162)
      abb314(11)=abb314(11)*abb314(5)
      abb314(167)=-abb314(31)*abb314(146)*abb314(11)
      abb314(168)=-spbe7l5*abb314(167)
      abb314(146)=-abb314(146)*abb314(14)
      abb314(169)=-abb314(26)*abb314(146)
      abb314(168)=abb314(169)+abb314(168)
      abb314(169)=es34*abb314(168)
      abb314(169)=abb314(162)+abb314(169)
      abb314(170)=spal5k7*spbk7l5
      abb314(169)=abb314(169)*abb314(170)
      abb314(171)=abb314(153)*es34
      abb314(172)=abb314(110)*abb314(159)*abb314(10)
      abb314(173)=-abb314(34)*abb314(165)
      abb314(172)=abb314(173)+abb314(172)
      abb314(172)=abb314(172)*abb314(129)
      abb314(171)=abb314(171)+abb314(172)
      abb314(91)=abb314(171)*abb314(91)
      abb314(171)=abb314(10)*abb314(4)
      abb314(159)=abb314(159)*abb314(171)
      abb314(173)=abb314(159)*abb314(5)
      abb314(174)=abb314(31)*abb314(173)
      abb314(165)=abb314(165)*abb314(4)
      abb314(175)=-abb314(5)*abb314(165)
      abb314(174)=abb314(174)-abb314(175)
      abb314(174)=abb314(174)*abb314(53)
      abb314(176)=abb314(174)*abb314(157)
      abb314(161)=abb314(161)*abb314(1)
      abb314(177)=abb314(161)*abb314(8)*abb314(4)
      abb314(178)=abb314(31)*abb314(177)
      abb314(163)=abb314(163)*abb314(2)*abb314(9)
      abb314(171)=abb314(163)*abb314(171)
      abb314(179)=-abb314(5)*abb314(171)
      abb314(178)=abb314(178)+abb314(179)
      abb314(53)=abb314(178)*abb314(53)
      abb314(178)=abb314(53)*abb314(120)
      abb314(176)=abb314(176)+abb314(178)
      abb314(176)=spbk7e7*abb314(176)
      abb314(164)=-abb314(26)*abb314(1)*abb314(164)
      abb314(161)=abb314(161)*spbe7l5*abb314(31)
      abb314(161)=abb314(161)+abb314(164)
      abb314(8)=abb314(161)*abb314(8)*mB
      abb314(161)=-abb314(166)*abb314(14)
      abb314(11)=-abb314(11)*abb314(31)
      abb314(164)=-abb314(151)*abb314(11)
      abb314(161)=abb314(161)-abb314(164)
      abb314(166)=es34*abb314(161)
      abb314(8)=abb314(8)+abb314(166)
      abb314(166)=abb314(85)*spal5e7
      abb314(8)=abb314(8)*abb314(166)
      abb314(178)=-es34*abb314(61)
      abb314(171)=-abb314(33)*abb314(171)
      abb314(171)=abb314(178)+abb314(171)
      abb314(171)=abb314(26)*abb314(171)
      abb314(178)=-abb314(33)*abb314(31)
      abb314(177)=abb314(178)*abb314(177)
      abb314(180)=-spbe7l5*abb314(177)
      abb314(171)=abb314(180)+abb314(171)
      abb314(135)=abb314(171)*abb314(135)
      abb314(118)=spak3l5*abb314(118)
      abb314(95)=-spak3e7*spbk7l6*abb314(105)*abb314(95)
      abb314(38)=-spak3k7*abb314(38)*abb314(83)
      abb314(83)=es71*abb314(172)
      abb314(171)=abb314(178)*abb314(173)
      abb314(173)=abb314(175)*abb314(33)
      abb314(171)=abb314(171)+abb314(173)
      abb314(173)=abb314(171)*abb314(140)
      abb314(8)=abb314(38)+abb314(95)+abb314(118)+abb314(135)+abb314(169)+abb31&
      &4(8)+abb314(158)+abb314(173)+abb314(176)+abb314(83)+abb314(114)+abb314(9&
      &1)
      abb314(8)=4.0_ki*abb314(8)
      abb314(38)=abb314(111)*abb314(34)*abb314(101)
      abb314(83)=abb314(5)*abb314(141)
      abb314(54)=-abb314(54)*abb314(69)
      abb314(38)=abb314(38)+abb314(83)+abb314(54)
      abb314(38)=es34*abb314(38)
      abb314(54)=abb314(101)*abb314(137)
      abb314(52)=-mB*abb314(52)
      abb314(83)=spak1k2*abb314(125)*abb314(52)
      abb314(54)=abb314(83)+abb314(54)
      abb314(83)=spbk4k2*abb314(54)
      abb314(91)=spak3l5*spbl6l5*abb314(123)
      abb314(95)=-spak1k3*abb314(106)*abb314(132)
      abb314(101)=-abb314(33)*abb314(179)
      abb314(101)=abb314(177)+abb314(101)
      abb314(101)=spak1k2*abb314(101)
      abb314(53)=abb314(53)*abb314(69)
      abb314(9)=-abb314(110)*abb314(9)
      abb314(34)=-abb314(34)*abb314(163)
      abb314(9)=abb314(34)+abb314(9)
      abb314(9)=abb314(111)*abb314(10)*abb314(9)
      abb314(9)=abb314(95)+abb314(91)+abb314(38)+abb314(9)+abb314(101)+abb314(5&
      &3)+abb314(83)
      abb314(9)=8.0_ki*abb314(9)
      abb314(10)=abb314(50)*spbe7l6
      abb314(10)=abb314(10)+abb314(168)
      abb314(10)=abb314(10)*es34
      abb314(31)=abb314(31)*abb314(159)
      abb314(31)=abb314(31)+abb314(165)
      abb314(31)=spbe7l6*abb314(31)*mB
      abb314(10)=-abb314(162)+abb314(31)-abb314(10)
      abb314(31)=4.0_ki*abb314(10)
      abb314(34)=abb314(84)*abb314(6)
      abb314(38)=abb314(26)*abb314(34)
      abb314(38)=abb314(38)-abb314(153)
      abb314(38)=es34*abb314(38)
      abb314(53)=-abb314(159)*abb314(178)
      abb314(33)=abb314(33)*abb314(165)
      abb314(33)=abb314(53)+abb314(33)
      abb314(26)=abb314(6)*abb314(26)*abb314(33)
      abb314(26)=abb314(38)+abb314(26)-abb314(172)
      abb314(26)=4.0_ki*abb314(26)
      abb314(10)=2.0_ki*abb314(10)
      abb314(33)=abb314(155)-abb314(146)
      abb314(38)=abb314(154)*mB
      abb314(38)=abb314(38)-abb314(33)
      abb314(38)=abb314(38)*spbl6l5
      abb314(53)=-abb314(5)*abb314(146)
      abb314(53)=abb314(53)-abb314(167)
      abb314(83)=abb314(53)*abb314(97)
      abb314(91)=abb314(50)*abb314(113)
      abb314(38)=abb314(38)+abb314(91)+abb314(83)
      abb314(83)=2.0_ki*spbk4k2
      abb314(91)=abb314(38)*abb314(83)
      abb314(73)=2.0_ki*abb314(73)
      abb314(95)=abb314(7)*abb314(156)
      abb314(95)=abb314(95)+abb314(160)
      abb314(95)=es34*abb314(95)
      abb314(53)=abb314(53)*abb314(134)
      abb314(97)=-spbk4k2*abb314(53)
      abb314(71)=-spak3k7*abb314(71)*abb314(96)
      abb314(96)=-abb314(7)*abb314(174)
      abb314(71)=abb314(71)+abb314(97)+abb314(95)+abb314(96)-abb314(171)
      abb314(71)=2.0_ki*abb314(71)
      abb314(95)=abb314(161)*abb314(20)
      abb314(20)=abb314(52)*abb314(20)
      abb314(96)=abb314(20)*spbe7l6
      abb314(95)=abb314(95)-abb314(96)
      abb314(96)=4.0_ki*spbk4k2*abb314(95)
      abb314(33)=spbe7l5*abb314(33)
      abb314(50)=abb314(50)*spak2k7
      abb314(20)=abb314(50)+abb314(20)
      abb314(20)=abb314(20)*abb314(93)
      abb314(50)=abb314(154)*abb314(151)
      abb314(20)=-abb314(20)-abb314(50)+abb314(33)
      abb314(33)=abb314(20)*abb314(83)
      abb314(50)=8.0_ki*spak1k2
      abb314(52)=abb314(50)*abb314(52)
      abb314(83)=-spbk4k2*abb314(52)
      abb314(93)=abb314(14)*abb314(5)*mB
      abb314(11)=-mB*abb314(11)
      abb314(11)=abb314(11)+abb314(93)
      abb314(93)=abb314(11)*abb314(50)
      abb314(97)=spbk4k2*abb314(93)
      abb314(101)=-spak1e7*abb314(30)
      abb314(113)=-abb314(39)*abb314(152)
      abb314(101)=abb314(113)+abb314(101)
      abb314(101)=abb314(101)*abb314(129)
      abb314(113)=-abb314(101)*abb314(131)
      abb314(114)=-abb314(65)*spak1e7
      abb314(118)=abb314(114)*abb314(157)
      abb314(120)=-abb314(65)*abb314(120)
      abb314(118)=abb314(118)+abb314(120)
      abb314(118)=spbk7e7*abb314(118)
      abb314(47)=-abb314(47)*abb314(167)
      abb314(120)=-abb314(22)*abb314(146)
      abb314(47)=abb314(120)+abb314(47)
      abb314(120)=-abb314(47)*abb314(170)
      abb314(21)=abb314(21)*abb314(84)
      abb314(84)=abb314(21)*abb314(140)
      abb314(125)=abb314(22)*mB*abb314(14)
      abb314(129)=spak2k4*abb314(164)
      abb314(125)=abb314(125)+abb314(129)
      abb314(125)=abb314(125)*abb314(166)
      abb314(61)=abb314(61)*abb314(136)
      abb314(61)=abb314(147)+abb314(61)+abb314(120)+abb314(125)+abb314(84)+abb3&
      &14(118)+abb314(113)-abb314(86)
      abb314(61)=spbk4k3*abb314(61)
      abb314(64)=abb314(64)*abb314(68)
      abb314(68)=abb314(16)*spbe7l5
      abb314(84)=abb314(7)*abb314(105)
      abb314(68)=abb314(84)+abb314(68)
      abb314(68)=abb314(68)*abb314(117)
      abb314(61)=abb314(68)+abb314(64)+abb314(61)
      abb314(61)=4.0_ki*abb314(61)
      abb314(39)=abb314(39)*abb314(14)
      abb314(30)=abb314(39)-abb314(30)
      abb314(30)=abb314(30)*abb314(111)
      abb314(39)=-abb314(65)*abb314(69)
      abb314(30)=abb314(30)-abb314(54)-abb314(142)+abb314(39)
      abb314(30)=spbk4k3*abb314(30)
      abb314(16)=spak1k2*abb314(16)
      abb314(39)=abb314(106)*abb314(57)
      abb314(16)=abb314(16)+abb314(39)
      abb314(16)=spbl6l5*abb314(16)
      abb314(16)=abb314(16)+abb314(30)
      abb314(16)=8.0_ki*abb314(16)
      abb314(30)=abb314(146)*abb314(78)
      abb314(39)=abb314(51)*spak2k4
      abb314(30)=abb314(39)-abb314(30)
      abb314(30)=abb314(30)*spbe7l6
      abb314(30)=abb314(30)+abb314(47)
      abb314(39)=4.0_ki*spbk4k3
      abb314(47)=abb314(30)*abb314(39)
      abb314(22)=-abb314(22)*abb314(34)
      abb314(22)=abb314(22)+abb314(101)
      abb314(22)=abb314(22)*abb314(39)
      abb314(34)=2.0_ki*spbk4k3
      abb314(30)=abb314(30)*abb314(34)
      abb314(38)=-abb314(38)*abb314(34)
      abb314(51)=-abb314(7)*abb314(114)
      abb314(21)=abb314(53)+abb314(51)-abb314(21)
      abb314(21)=spbk4k3*abb314(21)
      abb314(21)=-abb314(66)+abb314(21)
      abb314(21)=2.0_ki*abb314(21)
      abb314(39)=-abb314(95)*abb314(39)
      abb314(20)=-abb314(20)*abb314(34)
      abb314(34)=spbk4k3*abb314(52)
      abb314(51)=-spbk4k3*abb314(93)
      abb314(52)=-4.0_ki*abb314(100)
      abb314(15)=2.0_ki*abb314(15)
      abb314(53)=8.0_ki*abb314(123)
      abb314(50)=abb314(133)*abb314(50)
      abb314(54)=-spbe7k3*abb314(102)*abb314(157)
      abb314(64)=-spbe7k2*abb314(119)
      abb314(54)=abb314(54)+abb314(64)
      abb314(54)=4.0_ki*abb314(54)
      abb314(64)=abb314(70)*abb314(108)
      abb314(64)=8.0_ki*abb314(64)
      abb314(65)=spak3e7*spak1k7*abb314(70)
      abb314(66)=abb314(161)*abb314(108)
      abb314(68)=-spbk4k2*abb314(66)
      abb314(65)=abb314(68)+abb314(65)
      abb314(65)=4.0_ki*abb314(65)
      abb314(66)=spbk4k3*abb314(66)
      abb314(66)=abb314(126)+abb314(66)
      abb314(66)=4.0_ki*abb314(66)
      abb314(37)=abb314(139)*abb314(37)
      abb314(68)=abb314(89)*spbe7k3
      abb314(37)=abb314(37)+abb314(68)
      abb314(37)=4.0_ki*abb314(37)
      abb314(68)=-abb314(131)*abb314(37)
      abb314(43)=abb314(43)*abb314(110)
      abb314(14)=-abb314(88)*abb314(14)
      abb314(14)=abb314(14)+abb314(43)
      abb314(14)=8.0_ki*abb314(14)*abb314(63)
      abb314(43)=4.0_ki*abb314(81)
      abb314(63)=2.0_ki*abb314(81)
      abb314(69)=-spbk7k3*spal5e7*abb314(28)
      abb314(70)=spbk7k2*abb314(124)
      abb314(69)=abb314(70)+abb314(69)
      abb314(69)=spak1k7*abb314(69)
      abb314(70)=abb314(13)*spbe7k3
      abb314(78)=abb314(75)*spbe7k2
      abb314(70)=abb314(70)-abb314(78)
      abb314(78)=abb314(70)*abb314(170)
      abb314(69)=abb314(78)+abb314(69)
      abb314(69)=4.0_ki*abb314(69)
      abb314(78)=8.0_ki*spak1l5*abb314(104)
      abb314(81)=-4.0_ki*abb314(70)
      abb314(84)=abb314(143)*spak1k4
      abb314(86)=abb314(138)*abb314(139)
      abb314(86)=abb314(150)+abb314(86)
      abb314(86)=4.0_ki*abb314(86)
      abb314(70)=-2.0_ki*abb314(70)
      abb314(88)=-spak1k3*abb314(133)
      abb314(11)=abb314(11)*spak1k4
      abb314(89)=-spbk4k2*abb314(11)
      abb314(88)=abb314(89)+abb314(88)
      abb314(88)=8.0_ki*abb314(88)
      abb314(11)=8.0_ki*spbk4k3*abb314(11)
      abb314(89)=-abb314(13)*abb314(148)
      abb314(93)=-spak1k2*abb314(149)
      abb314(57)=abb314(102)*abb314(57)
      abb314(57)=abb314(89)+abb314(93)+abb314(57)
      abb314(57)=spbe7k1*abb314(57)
      abb314(89)=-abb314(7)*abb314(102)
      abb314(89)=abb314(89)+abb314(149)
      abb314(76)=abb314(89)*abb314(76)
      abb314(12)=abb314(12)*abb314(27)
      abb314(27)=es71*abb314(12)
      abb314(27)=abb314(27)+abb314(76)+abb314(57)
      abb314(27)=2.0_ki*abb314(27)
      abb314(55)=-abb314(55)*abb314(85)
      abb314(55)=-abb314(58)+abb314(55)
      abb314(55)=8.0_ki*abb314(55)
      abb314(57)=4.0_ki*abb314(12)
      abb314(12)=-2.0_ki*abb314(12)
      abb314(58)=2.0_ki*es71-abb314(92)
      abb314(58)=abb314(79)*abb314(58)
      abb314(44)=abb314(44)*abb314(112)
      abb314(44)=abb314(44)+abb314(58)+abb314(72)
      abb314(44)=spbe7k1*abb314(44)
      abb314(18)=abb314(18)*spak2e7
      abb314(58)=abb314(18)*spbe7k3
      abb314(72)=es71*abb314(58)
      abb314(44)=abb314(72)+abb314(44)
      abb314(44)=2.0_ki*abb314(44)
      abb314(72)=-spbl5k3*abb314(107)
      abb314(76)=spbl5k2*abb314(115)
      abb314(72)=abb314(72)+abb314(76)
      abb314(72)=abb314(7)*abb314(72)
      abb314(76)=-es12*abb314(99)
      abb314(79)=spbk3k1*abb314(46)
      abb314(72)=abb314(79)+abb314(76)+abb314(72)
      abb314(72)=8.0_ki*abb314(72)
      abb314(76)=4.0_ki*abb314(58)
      abb314(58)=-2.0_ki*abb314(58)
      abb314(79)=-spbe7k1*abb314(103)
      abb314(18)=abb314(18)*spbe7l6
      abb314(28)=abb314(28)*spak2e7
      abb314(18)=abb314(18)-abb314(28)
      abb314(28)=-es71*abb314(18)
      abb314(13)=abb314(13)*abb314(98)
      abb314(13)=abb314(28)+abb314(13)+abb314(79)
      abb314(13)=2.0_ki*abb314(13)
      abb314(28)=spbl5k1*abb314(87)
      abb314(46)=-spbl6k1*abb314(46)
      abb314(28)=abb314(28)+abb314(46)
      abb314(28)=8.0_ki*abb314(28)
      abb314(46)=4.0_ki*abb314(18)
      abb314(18)=2.0_ki*abb314(18)
      abb314(79)=-spbe7k1*abb314(127)
      abb314(23)=spak2e7*abb314(23)
      abb314(85)=-es71*abb314(23)
      abb314(75)=-abb314(75)*abb314(98)
      abb314(75)=abb314(85)+abb314(75)+abb314(79)
      abb314(75)=2.0_ki*abb314(75)
      abb314(79)=-spbl5k1*abb314(90)
      abb314(80)=-spbl6k1*abb314(80)
      abb314(79)=abb314(79)+abb314(80)
      abb314(79)=8.0_ki*abb314(79)
      abb314(80)=4.0_ki*abb314(23)
      abb314(23)=2.0_ki*abb314(23)
      R2d314=0.0_ki
      rat2 = rat2 + R2d314
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='314' value='", &
          & R2d314, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd314h3