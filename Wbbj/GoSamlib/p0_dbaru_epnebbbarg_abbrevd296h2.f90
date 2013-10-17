module     p0_dbaru_epnebbbarg_abbrevd296h2
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(165), public :: abb296
   complex(ki), public :: R2d296
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
      abb296(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb296(2)=NC**(-1)
      abb296(3)=spbl5k2**(-1)
      abb296(4)=spak2l6**(-1)
      abb296(5)=spak2l5**(-1)
      abb296(6)=sqrt(mB**2)
      abb296(7)=spbl6k2**(-1)
      abb296(8)=c1+c3
      abb296(9)=TR*gW
      abb296(9)=abb296(1)*i_*CVDU*abb296(9)**2
      abb296(10)=abb296(2)*abb296(9)
      abb296(11)=abb296(10)*abb296(8)
      abb296(12)=abb296(9)*abb296(2)**2
      abb296(13)=abb296(12)*c4
      abb296(14)=abb296(9)*c2
      abb296(15)=abb296(11)-abb296(13)-abb296(14)
      abb296(16)=-spbl6k2*abb296(15)
      abb296(17)=-spbe7k2*abb296(16)
      abb296(18)=mB**2
      abb296(19)=abb296(18)*abb296(4)
      abb296(20)=abb296(17)*abb296(19)
      abb296(21)=spbl6k2**2
      abb296(22)=abb296(21)*abb296(18)
      abb296(23)=-abb296(15)*abb296(22)
      abb296(24)=spbe7k2*abb296(3)
      abb296(25)=abb296(24)*abb296(23)
      abb296(26)=-abb296(5)*abb296(25)
      abb296(26)=abb296(26)+abb296(20)
      abb296(27)=spbk7k3*spae7k7
      abb296(28)=abb296(27)*spak2k4
      abb296(29)=spal5l6*spak1k2
      abb296(26)=abb296(28)*abb296(29)*abb296(26)
      abb296(20)=spak2l5*abb296(20)
      abb296(20)=abb296(20)-abb296(25)
      abb296(25)=spak1l6*spak2k4
      abb296(20)=abb296(25)*abb296(20)
      abb296(30)=-spbe7k2*abb296(15)
      abb296(31)=abb296(6)*mB
      abb296(32)=abb296(31)*abb296(3)
      abb296(33)=abb296(21)*abb296(32)
      abb296(34)=spak4l6*spak1k2
      abb296(35)=abb296(34)*abb296(33)*abb296(30)
      abb296(20)=abb296(35)+abb296(20)
      abb296(20)=abb296(27)*abb296(20)
      abb296(35)=spak2l5*spak1l6
      abb296(35)=abb296(35)+abb296(29)
      abb296(36)=abb296(17)*abb296(35)
      abb296(37)=abb296(27)*spak4l5
      abb296(38)=-spbl6l5*abb296(37)
      abb296(39)=abb296(27)*spak1k4
      abb296(40)=-spbl6k1*abb296(39)
      abb296(38)=abb296(40)+abb296(38)
      abb296(38)=abb296(36)*abb296(38)
      abb296(40)=abb296(37)*spak1k2
      abb296(41)=-abb296(40)*abb296(31)*abb296(17)
      abb296(42)=abb296(3)*spbl6k2
      abb296(43)=abb296(42)*abb296(31)
      abb296(44)=-abb296(43)*abb296(30)
      abb296(45)=es12*abb296(44)*abb296(39)
      abb296(20)=abb296(45)+abb296(41)+abb296(20)+abb296(26)+abb296(38)
      abb296(20)=4.0_ki*abb296(20)
      abb296(26)=abb296(3)*spbk3k2
      abb296(38)=abb296(26)*abb296(31)
      abb296(41)=-abb296(38)*abb296(16)
      abb296(45)=spak1k2*abb296(41)
      abb296(46)=abb296(16)*spak1l6
      abb296(47)=abb296(46)*spbl6k3
      abb296(48)=-spak2l5*abb296(47)
      abb296(49)=-spbl6k3*abb296(16)*abb296(29)
      abb296(45)=abb296(49)+abb296(45)+abb296(48)
      abb296(48)=spbk7k2*spak4k7
      abb296(45)=abb296(45)*abb296(48)
      abb296(49)=spbk3k2*spbl6k2
      abb296(50)=abb296(49)*abb296(15)
      abb296(51)=spbl6l5*spak4l5
      abb296(52)=abb296(50)*abb296(51)
      abb296(53)=abb296(50)*spak1k4
      abb296(54)=spbl6k1*abb296(53)
      abb296(52)=abb296(54)+abb296(52)
      abb296(52)=abb296(35)*abb296(52)
      abb296(54)=abb296(19)*spbk3k2
      abb296(55)=-abb296(16)*abb296(54)
      abb296(56)=-spak2k4*abb296(55)
      abb296(23)=abb296(26)*abb296(23)
      abb296(57)=abb296(5)*spak2k4
      abb296(58)=abb296(23)*abb296(57)
      abb296(56)=abb296(58)+abb296(56)
      abb296(29)=abb296(29)*abb296(56)
      abb296(55)=-spak2l5*abb296(55)
      abb296(23)=abb296(55)+abb296(23)
      abb296(23)=abb296(25)*abb296(23)
      abb296(55)=spak1k2*spak4l5
      abb296(56)=abb296(31)*spbk3k2
      abb296(58)=-abb296(55)*abb296(56)*abb296(16)
      abb296(59)=-abb296(38)*abb296(15)
      abb296(34)=-abb296(34)*abb296(21)*abb296(59)
      abb296(60)=-es12*spak1k4*abb296(41)
      abb296(23)=abb296(60)+abb296(45)+abb296(34)+abb296(58)+abb296(23)+abb296(&
      &29)+abb296(52)
      abb296(23)=8.0_ki*abb296(23)
      abb296(29)=spak4e7*spbl6k3
      abb296(34)=abb296(29)*abb296(17)
      abb296(45)=-abb296(34)*abb296(35)
      abb296(52)=abb296(38)*spbe7k2
      abb296(58)=abb296(16)*abb296(52)
      abb296(60)=spak1k2*abb296(58)*spak4e7
      abb296(45)=abb296(60)+abb296(45)
      abb296(45)=8.0_ki*abb296(45)
      abb296(61)=-abb296(19)*abb296(15)
      abb296(62)=spbe7k2*spak1l5
      abb296(63)=-abb296(62)*abb296(61)
      abb296(11)=-abb296(13)+abb296(11)-abb296(14)
      abb296(11)=abb296(62)*abb296(11)
      abb296(14)=abb296(42)*abb296(18)
      abb296(42)=abb296(5)*abb296(14)*abb296(11)
      abb296(42)=abb296(63)+abb296(42)
      abb296(42)=abb296(28)*abb296(42)
      abb296(64)=abb296(11)*abb296(37)
      abb296(65)=-spbl6l5*abb296(64)
      abb296(66)=abb296(11)*abb296(39)
      abb296(67)=-spbl6k1*abb296(66)
      abb296(42)=abb296(67)+abb296(65)+abb296(42)
      abb296(42)=8.0_ki*abb296(42)
      abb296(65)=-spak1l5*abb296(15)
      abb296(67)=abb296(65)*spbl6k3
      abb296(68)=abb296(48)*abb296(67)
      abb296(69)=-abb296(54)*abb296(65)
      abb296(70)=abb296(69)*spak2k4
      abb296(71)=spak1l5*abb296(16)
      abb296(72)=abb296(26)*abb296(18)
      abb296(73)=abb296(71)*abb296(72)
      abb296(74)=abb296(73)*abb296(57)
      abb296(75)=spak1l5*spbk3k2
      abb296(76)=-abb296(75)*abb296(15)
      abb296(77)=abb296(76)*spak4l5
      abb296(78)=-spbl6l5*abb296(77)
      abb296(79)=abb296(76)*spbl6k1
      abb296(80)=-spak1k4*abb296(79)
      abb296(74)=abb296(80)+abb296(78)-abb296(68)-abb296(70)+abb296(74)
      abb296(74)=16.0_ki*abb296(74)
      abb296(78)=abb296(11)*abb296(29)
      abb296(80)=16.0_ki*abb296(78)
      abb296(81)=abb296(19)*abb296(10)
      abb296(82)=abb296(75)*abb296(81)
      abb296(83)=abb296(31)*abb296(4)
      abb296(84)=abb296(83)*spbk3k2
      abb296(85)=abb296(10)*spak1l5
      abb296(86)=abb296(84)*abb296(85)
      abb296(82)=abb296(82)+abb296(86)
      abb296(82)=abb296(82)*abb296(8)
      abb296(87)=abb296(9)*spak1l5
      abb296(88)=abb296(84)*abb296(87)
      abb296(89)=abb296(19)*abb296(9)
      abb296(90)=-abb296(89)*abb296(75)
      abb296(90)=abb296(90)-abb296(88)
      abb296(90)=c2*abb296(90)
      abb296(91)=abb296(75)*abb296(83)
      abb296(92)=-spak1l5*abb296(54)
      abb296(92)=abb296(92)-abb296(91)
      abb296(92)=abb296(92)*abb296(13)
      abb296(82)=abb296(90)+abb296(92)+abb296(82)
      abb296(82)=spak2e7*abb296(82)
      abb296(90)=abb296(15)*abb296(54)
      abb296(92)=-spak1k2*abb296(90)
      abb296(92)=abb296(92)-abb296(47)
      abb296(92)=spal5e7*abb296(92)
      abb296(93)=abb296(41)*spak1e7
      abb296(94)=spak2l5*spak1e7
      abb296(95)=-abb296(90)*abb296(94)
      abb296(82)=abb296(95)+abb296(92)-abb296(93)+abb296(82)
      abb296(82)=spak4k7*abb296(82)
      abb296(92)=abb296(84)*abb296(15)
      abb296(95)=spak2e7*spak1k4
      abb296(96)=-spal5k7*abb296(95)
      abb296(97)=spak2e7*spak4l5
      abb296(98)=-spak1k7*abb296(97)
      abb296(96)=abb296(98)+abb296(96)
      abb296(96)=abb296(92)*abb296(96)
      abb296(82)=abb296(82)+abb296(96)
      abb296(82)=spbk7e7*abb296(82)
      abb296(96)=abb296(9)*spbl6k2
      abb296(98)=abb296(96)*c2
      abb296(99)=abb296(12)*spbl6k2
      abb296(100)=abb296(99)*c4
      abb296(98)=abb296(98)+abb296(100)
      abb296(100)=abb296(19)+abb296(83)
      abb296(100)=spak1l5*abb296(100)
      abb296(101)=abb296(100)*abb296(98)
      abb296(102)=abb296(10)*spbl6k2
      abb296(100)=-abb296(8)*abb296(102)*abb296(100)
      abb296(100)=abb296(100)+abb296(101)
      abb296(100)=spbe7k3*abb296(100)
      abb296(101)=abb296(26)*abb296(19)
      abb296(103)=-abb296(101)*abb296(16)
      abb296(104)=abb296(103)*spak1l6
      abb296(105)=-abb296(104)+abb296(69)
      abb296(105)=spbe7l6*abb296(105)
      abb296(100)=abb296(100)+abb296(105)
      abb296(100)=spak2e7*abb296(100)
      abb296(105)=abb296(19)*abb296(3)
      abb296(106)=abb296(105)*abb296(16)
      abb296(107)=abb296(106)*spak1l6
      abb296(108)=-abb296(19)*abb296(65)
      abb296(109)=abb296(107)+abb296(108)
      abb296(110)=abb296(27)*spbe7l6
      abb296(111)=-abb296(109)*abb296(110)
      abb296(33)=abb296(15)*abb296(33)
      abb296(112)=spak1e7*spbe7k3
      abb296(113)=abb296(33)*abb296(112)
      abb296(114)=-abb296(19)*abb296(16)
      abb296(115)=spal5e7*spak1k2
      abb296(116)=spbe7k3*abb296(114)*abb296(115)
      abb296(100)=abb296(116)+abb296(100)+abb296(113)+abb296(111)
      abb296(100)=spak4l6*abb296(100)
      abb296(111)=spak1k4*spbe7k3
      abb296(116)=abb296(108)*abb296(111)
      abb296(117)=-abb296(101)*abb296(15)
      abb296(118)=spbe7l6*spak1l6
      abb296(119)=abb296(118)*abb296(117)
      abb296(120)=-spak1k4*abb296(119)
      abb296(116)=abb296(116)+abb296(120)
      abb296(116)=spak2e7*abb296(116)
      abb296(43)=-abb296(43)*abb296(15)
      abb296(120)=abb296(43)*abb296(111)
      abb296(121)=abb296(120)*spak1e7
      abb296(122)=-abb296(105)*abb296(15)
      abb296(123)=abb296(118)*abb296(122)
      abb296(124)=abb296(39)*abb296(123)
      abb296(125)=abb296(94)*abb296(111)
      abb296(126)=abb296(61)*abb296(125)
      abb296(116)=abb296(126)+abb296(116)+abb296(121)+abb296(124)
      abb296(116)=spbk2k1*abb296(116)
      abb296(124)=abb296(34)*spak1k2
      abb296(126)=abb296(17)*spbl6k3
      abb296(127)=spak2k4*spak1e7
      abb296(128)=abb296(126)*abb296(127)
      abb296(129)=abb296(112)*spak2k4
      abb296(130)=abb296(129)*abb296(114)
      abb296(131)=abb296(16)*spak1e7
      abb296(132)=spbk7e7*spak4k7
      abb296(133)=abb296(132)*spbl6k3
      abb296(134)=abb296(133)*abb296(131)
      abb296(124)=-abb296(124)-abb296(128)+abb296(130)-abb296(134)
      abb296(128)=-abb296(16)*abb296(83)
      abb296(130)=abb296(128)*abb296(111)
      abb296(134)=spbe7l6*spak1k4
      abb296(135)=-abb296(92)*abb296(134)
      abb296(130)=abb296(130)+abb296(135)
      abb296(130)=spak2e7*abb296(130)
      abb296(135)=-abb296(83)*abb296(15)
      abb296(136)=-abb296(135)*abb296(39)*spbe7l6
      abb296(130)=abb296(130)+abb296(136)-abb296(124)
      abb296(130)=spal5l6*abb296(130)
      abb296(136)=abb296(83)*abb296(9)
      abb296(137)=abb296(136)+abb296(89)
      abb296(137)=abb296(137)*c2
      abb296(138)=abb296(83)*abb296(12)
      abb296(139)=abb296(12)*abb296(19)
      abb296(140)=abb296(138)+abb296(139)
      abb296(140)=abb296(140)*c4
      abb296(141)=abb296(83)*abb296(10)
      abb296(142)=abb296(141)+abb296(81)
      abb296(142)=abb296(142)*abb296(8)
      abb296(137)=-abb296(142)+abb296(137)+abb296(140)
      abb296(140)=-abb296(137)*abb296(37)*abb296(118)
      abb296(34)=abb296(34)*spak1l6
      abb296(142)=-abb296(30)*abb296(54)
      abb296(143)=abb296(142)*abb296(127)
      abb296(144)=spak4l6*abb296(114)*abb296(112)
      abb296(143)=abb296(34)+abb296(143)+abb296(144)
      abb296(143)=spak2l5*abb296(143)
      abb296(144)=-spak2l5*abb296(39)
      abb296(144)=abb296(144)+abb296(40)
      abb296(144)=-abb296(144)*abb296(30)
      abb296(145)=abb296(28)*abb296(11)
      abb296(144)=abb296(145)+abb296(144)
      abb296(145)=abb296(6)*mB**3
      abb296(146)=abb296(145)*abb296(4)**2
      abb296(144)=abb296(146)*abb296(144)
      abb296(147)=abb296(108)*spbe7l6
      abb296(148)=abb296(39)*abb296(147)
      abb296(149)=abb296(69)*spbe7l6
      abb296(150)=-abb296(95)*abb296(149)
      abb296(148)=abb296(148)+abb296(150)
      abb296(148)=spbk2k1*abb296(148)
      abb296(144)=abb296(148)+abb296(144)
      abb296(144)=abb296(7)*abb296(144)
      abb296(145)=abb296(145)*abb296(4)
      abb296(24)=abb296(145)*abb296(24)
      abb296(148)=abb296(24)*abb296(85)
      abb296(150)=abb296(62)*abb296(3)
      abb296(18)=abb296(150)*abb296(18)
      abb296(151)=abb296(18)*abb296(102)
      abb296(148)=abb296(148)+abb296(151)
      abb296(148)=abb296(148)*abb296(8)
      abb296(151)=-abb296(62)*abb296(14)
      abb296(150)=-abb296(145)*abb296(150)
      abb296(150)=abb296(151)+abb296(150)
      abb296(150)=abb296(150)*abb296(13)
      abb296(18)=-abb296(96)*abb296(18)
      abb296(151)=-abb296(87)*abb296(24)
      abb296(18)=abb296(18)+abb296(151)
      abb296(18)=c2*abb296(18)
      abb296(18)=abb296(18)+abb296(150)+abb296(148)
      abb296(18)=abb296(18)*abb296(28)
      abb296(22)=abb296(22)*abb296(3)
      abb296(148)=abb296(15)*abb296(22)
      abb296(129)=abb296(129)*spal5l6
      abb296(150)=abb296(25)*spbe7k3
      abb296(151)=spal5e7*abb296(150)
      abb296(151)=-abb296(129)+abb296(151)
      abb296(151)=abb296(148)*abb296(151)
      abb296(24)=-abb296(15)*abb296(24)
      abb296(40)=-abb296(24)*abb296(40)
      abb296(18)=abb296(18)+abb296(40)+abb296(151)
      abb296(18)=abb296(5)*abb296(18)
      abb296(40)=-abb296(37)*abb296(147)
      abb296(151)=abb296(97)*abb296(149)
      abb296(40)=abb296(40)+abb296(151)
      abb296(40)=abb296(7)*abb296(40)
      abb296(151)=spak4l5*spbe7k3
      abb296(152)=abb296(61)*abb296(151)
      abb296(115)=abb296(115)+abb296(94)
      abb296(153)=-abb296(152)*abb296(115)
      abb296(154)=abb296(151)*spak2e7
      abb296(155)=-abb296(108)*abb296(154)
      abb296(40)=abb296(40)+abb296(155)+abb296(153)
      abb296(40)=spbl5k2*abb296(40)
      abb296(153)=abb296(16)*abb296(31)
      abb296(155)=abb296(151)*spak1e7
      abb296(156)=abb296(153)*abb296(155)
      abb296(60)=abb296(156)+abb296(60)
      abb296(156)=abb296(63)*abb296(27)
      abb296(58)=-spak1e7*abb296(58)
      abb296(58)=abb296(156)+abb296(58)
      abb296(58)=spak2k4*abb296(58)
      abb296(156)=abb296(81)*spbk3k2
      abb296(10)=abb296(84)*abb296(10)
      abb296(10)=abb296(156)+abb296(10)
      abb296(10)=-abb296(10)*abb296(8)
      abb296(156)=spbk3k2*abb296(89)
      abb296(9)=abb296(9)*abb296(84)
      abb296(9)=abb296(156)+abb296(9)
      abb296(9)=c2*abb296(9)
      abb296(84)=abb296(54)+abb296(84)
      abb296(13)=abb296(84)*abb296(13)
      abb296(9)=abb296(9)+abb296(13)+abb296(10)
      abb296(9)=spak4l5*abb296(9)*abb296(118)
      abb296(10)=abb296(128)*abb296(151)*spak1l6
      abb296(9)=abb296(10)+abb296(9)
      abb296(9)=spak2e7*abb296(9)
      abb296(10)=abb296(150)*abb296(114)
      abb296(13)=abb296(126)*abb296(25)
      abb296(10)=abb296(10)-abb296(13)
      abb296(13)=spak1k2*spak2k4
      abb296(84)=abb296(142)*abb296(13)
      abb296(84)=abb296(84)+abb296(10)
      abb296(84)=spal5e7*abb296(84)
      abb296(118)=abb296(16)*spal5e7
      abb296(126)=abb296(118)*spak1l6
      abb296(128)=abb296(131)*spal5l6
      abb296(126)=abb296(126)-abb296(128)
      abb296(126)=abb296(126)*abb296(151)
      abb296(142)=-abb296(64)+abb296(126)
      abb296(142)=spbl6l5*abb296(142)
      abb296(156)=abb296(128)*abb296(111)
      abb296(157)=abb296(118)*abb296(111)
      abb296(158)=abb296(157)*spak1l6
      abb296(156)=abb296(156)-abb296(158)
      abb296(158)=-abb296(66)-abb296(156)
      abb296(158)=spbl6k1*abb296(158)
      abb296(159)=abb296(83)*abb296(65)
      abb296(160)=-abb296(159)*abb296(37)
      abb296(161)=abb296(91)*abb296(15)
      abb296(162)=-abb296(161)*abb296(97)
      abb296(160)=abb296(160)+abb296(162)
      abb296(160)=spbe7l5*abb296(160)
      abb296(162)=-abb296(159)*abb296(39)
      abb296(163)=-abb296(161)*abb296(95)
      abb296(162)=abb296(162)+abb296(163)
      abb296(162)=spbe7k1*abb296(162)
      abb296(24)=abb296(24)*abb296(39)
      abb296(163)=abb296(111)*spal5e7
      abb296(164)=abb296(163)*es12
      abb296(165)=abb296(61)*abb296(164)
      abb296(9)=abb296(162)+abb296(160)+abb296(165)+abb296(40)+abb296(158)+abb2&
      &96(142)+abb296(18)+abb296(144)+abb296(130)+abb296(116)+abb296(143)+abb29&
      &6(100)+abb296(84)+abb296(9)+abb296(140)+abb296(58)+abb296(24)+abb296(82)&
      &-abb296(60)
      abb296(9)=8.0_ki*abb296(9)
      abb296(18)=abb296(145)*abb296(26)
      abb296(24)=-abb296(15)*abb296(18)
      abb296(26)=spal5l6*spbl6k3
      abb296(40)=spal5k7*spbk7k3
      abb296(26)=abb296(26)-abb296(40)
      abb296(58)=-abb296(135)*abb296(26)
      abb296(82)=spak2l5*abb296(92)
      abb296(84)=abb296(122)*spbk2k1
      abb296(100)=spbl6k3*spak1l6*abb296(84)
      abb296(116)=spbk3k1*abb296(159)
      abb296(58)=abb296(116)-abb296(79)+abb296(100)+abb296(82)-abb296(24)+abb29&
      &6(58)
      abb296(58)=spak1k4*abb296(58)
      abb296(79)=-spak1l6*abb296(137)
      abb296(82)=-spbl5k2*abb296(7)*abb296(108)
      abb296(79)=abb296(82)+abb296(79)
      abb296(79)=spbl6k3*abb296(79)
      abb296(82)=-spbl6l5*abb296(76)
      abb296(100)=spak1k7*spbk7k3
      abb296(116)=abb296(135)*abb296(100)
      abb296(130)=-spbl5k3*abb296(159)
      abb296(79)=abb296(130)+abb296(116)+abb296(82)+abb296(79)
      abb296(79)=spak4l5*abb296(79)
      abb296(82)=abb296(18)*abb296(85)
      abb296(116)=abb296(72)*spak1l5
      abb296(130)=abb296(116)*abb296(102)
      abb296(82)=abb296(82)+abb296(130)
      abb296(82)=-abb296(82)*abb296(8)
      abb296(130)=abb296(99)*abb296(116)
      abb296(140)=spak1l5*abb296(12)*abb296(18)
      abb296(130)=abb296(130)+abb296(140)
      abb296(130)=c4*abb296(130)
      abb296(116)=abb296(96)*abb296(116)
      abb296(18)=abb296(87)*abb296(18)
      abb296(18)=abb296(116)+abb296(18)
      abb296(18)=c2*abb296(18)
      abb296(18)=abb296(18)+abb296(130)+abb296(82)
      abb296(18)=spak2k4*abb296(18)
      abb296(24)=abb296(24)*abb296(55)
      abb296(18)=abb296(18)+abb296(24)
      abb296(18)=abb296(5)*abb296(18)
      abb296(24)=-spak4l6*spbl6k3*abb296(109)
      abb296(82)=-spak2l5*spak1k4
      abb296(82)=abb296(82)+abb296(55)
      abb296(82)=-abb296(82)*abb296(15)*spbk3k2
      abb296(109)=spak2k4*abb296(76)
      abb296(82)=abb296(109)+abb296(82)
      abb296(82)=abb296(146)*abb296(82)
      abb296(109)=spbk2k1*spak1k4
      abb296(116)=spbl6k3*abb296(108)*abb296(109)
      abb296(82)=abb296(116)+abb296(82)
      abb296(82)=abb296(7)*abb296(82)
      abb296(116)=abb296(117)*spak1l6
      abb296(69)=abb296(69)*abb296(7)
      abb296(130)=abb296(116)+abb296(69)
      abb296(140)=spbk7l6*spak4k7
      abb296(130)=abb296(130)*abb296(140)
      abb296(25)=abb296(103)*abb296(25)
      abb296(92)=-abb296(92)*abb296(55)
      abb296(18)=abb296(130)-abb296(68)+abb296(18)+abb296(82)+abb296(24)+abb296&
      &(92)+abb296(25)-2.0_ki*abb296(70)+abb296(58)+abb296(79)
      abb296(18)=16.0_ki*abb296(18)
      abb296(24)=abb296(11)*spbl6k3
      abb296(25)=abb296(119)+abb296(24)
      abb296(25)=abb296(25)*spak4e7
      abb296(58)=spak4e7*spbe7l6
      abb296(68)=abb296(58)*abb296(69)
      abb296(25)=abb296(25)+abb296(68)
      abb296(68)=-abb296(155)-abb296(163)
      abb296(68)=abb296(135)*abb296(68)
      abb296(68)=abb296(68)-abb296(25)
      abb296(68)=16.0_ki*abb296(68)
      abb296(70)=abb296(132)*abb296(117)
      abb296(79)=abb296(122)*abb296(111)
      abb296(82)=abb296(79)*spbk2k1
      abb296(70)=abb296(70)+abb296(82)
      abb296(82)=-spak1e7*abb296(70)
      abb296(92)=abb296(106)*spak4l6
      abb296(119)=abb296(92)*abb296(112)
      abb296(101)=abb296(101)*abb296(30)
      abb296(130)=abb296(101)*abb296(127)
      abb296(25)=abb296(130)+abb296(119)+abb296(25)+abb296(82)
      abb296(82)=abb296(137)*abb296(155)
      abb296(119)=abb296(135)*abb296(163)
      abb296(82)=abb296(119)+abb296(82)+abb296(25)
      abb296(82)=16.0_ki*abb296(82)
      abb296(119)=abb296(104)+abb296(161)
      abb296(119)=spak2e7*abb296(119)
      abb296(130)=abb296(81)-abb296(102)
      abb296(137)=abb296(130)*abb296(8)
      abb296(142)=abb296(139)-abb296(99)
      abb296(143)=abb296(142)*c4
      abb296(144)=abb296(89)-abb296(96)
      abb296(145)=abb296(144)*c2
      abb296(137)=-abb296(137)+abb296(143)+abb296(145)
      abb296(143)=abb296(137)*spbk3k2
      abb296(145)=spak1k2*abb296(143)
      abb296(145)=abb296(145)-abb296(47)
      abb296(145)=spal5e7*abb296(145)
      abb296(143)=abb296(143)*abb296(94)
      abb296(93)=abb296(143)+abb296(145)-abb296(93)+abb296(119)
      abb296(93)=abb296(93)*abb296(132)
      abb296(119)=-spal5l6*abb296(124)
      abb296(124)=abb296(61)*spbe7k2
      abb296(143)=-abb296(30)*abb296(14)
      abb296(145)=abb296(5)*abb296(143)
      abb296(145)=abb296(145)-abb296(124)
      abb296(145)=abb296(127)*abb296(145)
      abb296(146)=spak4l6*spbe7l6
      abb296(158)=abb296(131)*abb296(146)
      abb296(145)=abb296(158)+abb296(145)
      abb296(145)=spal5k7*abb296(145)
      abb296(158)=spak2k4*abb296(124)
      abb296(143)=-abb296(143)*abb296(57)
      abb296(143)=abb296(143)+abb296(158)
      abb296(143)=spal5e7*abb296(143)
      abb296(146)=-abb296(118)*abb296(146)
      abb296(143)=abb296(146)+abb296(143)
      abb296(143)=spak1k7*abb296(143)
      abb296(143)=abb296(143)+abb296(145)
      abb296(143)=spbk7k3*abb296(143)
      abb296(145)=abb296(83)*abb296(71)
      abb296(146)=spak1l6*abb296(21)*abb296(122)
      abb296(145)=abb296(145)+abb296(146)
      abb296(145)=spak2e7*spbe7k3*abb296(145)
      abb296(146)=abb296(137)*spbl6k2
      abb296(158)=spak1k2*spbe7k3
      abb296(160)=-abb296(146)*abb296(158)
      abb296(162)=abb296(50)*spbe7l6
      abb296(165)=spak1k2*abb296(162)
      abb296(160)=abb296(160)+abb296(165)
      abb296(160)=spal5e7*abb296(160)
      abb296(113)=abb296(160)+abb296(113)+abb296(145)
      abb296(113)=spak4l6*abb296(113)
      abb296(112)=-abb296(146)*abb296(112)
      abb296(145)=spak1e7*abb296(162)
      abb296(112)=abb296(112)+abb296(145)
      abb296(112)=spak4l6*abb296(112)
      abb296(49)=-abb296(30)*abb296(49)
      abb296(145)=-abb296(49)*abb296(127)
      abb296(34)=abb296(34)+abb296(145)+abb296(112)
      abb296(34)=spak2l5*abb296(34)
      abb296(112)=-abb296(159)-abb296(107)
      abb296(112)=spak2e7*abb296(111)*abb296(112)
      abb296(125)=abb296(137)*abb296(125)
      abb296(112)=abb296(125)+abb296(121)+abb296(112)
      abb296(112)=spbk2k1*abb296(112)
      abb296(121)=-abb296(8)*abb296(102)
      abb296(98)=abb296(121)+abb296(98)
      abb296(121)=abb296(72)*spbe7k2
      abb296(52)=abb296(121)-abb296(52)
      abb296(52)=abb296(127)*abb296(52)*abb296(98)
      abb296(49)=-abb296(49)*abb296(13)
      abb296(10)=abb296(49)+abb296(10)
      abb296(10)=spal5e7*abb296(10)
      abb296(49)=abb296(148)*abb296(150)
      abb296(13)=-abb296(13)*abb296(72)*abb296(17)
      abb296(13)=abb296(49)+abb296(13)
      abb296(13)=spal5e7*abb296(13)
      abb296(49)=-abb296(148)*abb296(129)
      abb296(13)=abb296(13)+abb296(49)
      abb296(13)=abb296(5)*abb296(13)
      abb296(49)=spbl6l5*abb296(126)
      abb296(98)=-spbl6k1*abb296(156)
      abb296(121)=-abb296(137)*abb296(115)
      abb296(125)=spak2e7*abb296(159)
      abb296(121)=abb296(125)+abb296(121)
      abb296(121)=spbl5k2*abb296(151)*abb296(121)
      abb296(125)=abb296(137)*abb296(164)
      abb296(126)=abb296(100)*abb296(118)
      abb296(40)=abb296(40)*abb296(131)
      abb296(40)=abb296(126)-abb296(40)
      abb296(126)=abb296(50)*abb296(94)
      abb296(126)=abb296(126)-abb296(40)
      abb296(126)=spak4l5*abb296(126)
      abb296(50)=spal5e7*abb296(50)*abb296(55)
      abb296(50)=abb296(50)+abb296(126)
      abb296(50)=spbe7l5*abb296(50)
      abb296(40)=-spak1k4*abb296(40)
      abb296(53)=abb296(53)*abb296(115)
      abb296(40)=abb296(53)+abb296(40)
      abb296(40)=spbe7k1*abb296(40)
      abb296(53)=-spak1l6*abb296(114)*abb296(154)
      abb296(10)=abb296(40)+abb296(50)+abb296(125)+abb296(121)+abb296(98)+abb29&
      &6(49)+abb296(13)+abb296(119)+abb296(93)+abb296(112)+abb296(34)+abb296(11&
      &3)+abb296(10)+abb296(53)+abb296(52)-abb296(60)+abb296(143)
      abb296(10)=4.0_ki*abb296(10)
      abb296(13)=-abb296(16)*abb296(100)
      abb296(34)=spbl5k3*abb296(71)
      abb296(13)=abb296(34)+abb296(13)+abb296(47)
      abb296(13)=spak4l5*abb296(13)
      abb296(26)=abb296(72)+abb296(26)
      abb296(26)=abb296(16)*abb296(26)
      abb296(34)=abb296(89)+abb296(96)
      abb296(40)=abb296(34)*c2
      abb296(47)=abb296(81)+abb296(102)
      abb296(49)=abb296(8)*abb296(47)
      abb296(50)=abb296(139)+abb296(99)
      abb296(52)=abb296(50)*c4
      abb296(40)=-abb296(49)+abb296(40)+abb296(52)
      abb296(40)=spbk3k2*abb296(40)
      abb296(49)=spak2l5*abb296(40)
      abb296(52)=-spbk3k1*abb296(71)
      abb296(26)=abb296(52)+abb296(49)+abb296(26)
      abb296(26)=spak1k4*abb296(26)
      abb296(16)=-abb296(5)*abb296(72)*abb296(16)
      abb296(16)=abb296(16)-abb296(40)
      abb296(16)=abb296(55)*abb296(16)
      abb296(13)=abb296(26)+abb296(13)+abb296(16)
      abb296(13)=8.0_ki*abb296(13)
      abb296(16)=abb296(131)*abb296(151)
      abb296(16)=abb296(16)+abb296(157)
      abb296(26)=8.0_ki*abb296(16)
      abb296(40)=8.0_ki*abb296(78)
      abb296(49)=abb296(141)+abb296(130)
      abb296(49)=-abb296(49)*abb296(8)
      abb296(52)=abb296(138)+abb296(142)
      abb296(52)=c4*abb296(52)
      abb296(53)=abb296(136)+abb296(144)
      abb296(53)=c2*abb296(53)
      abb296(49)=abb296(53)+abb296(52)+abb296(49)
      abb296(49)=abb296(49)*abb296(155)
      abb296(52)=abb296(141)-abb296(102)
      abb296(52)=-abb296(52)*abb296(8)
      abb296(53)=-abb296(99)+abb296(138)
      abb296(53)=c4*abb296(53)
      abb296(55)=-abb296(96)+abb296(136)
      abb296(55)=c2*abb296(55)
      abb296(52)=abb296(55)+abb296(53)+abb296(52)
      abb296(52)=abb296(52)*abb296(163)
      abb296(25)=abb296(52)+abb296(49)+abb296(25)
      abb296(25)=8.0_ki*abb296(25)
      abb296(16)=-4.0_ki*abb296(16)
      abb296(49)=spbe7k3*abb296(71)*spak4l6
      abb296(52)=abb296(76)*abb296(132)
      abb296(53)=abb296(75)*abb296(30)
      abb296(55)=abb296(53)*spak2k4
      abb296(60)=abb296(65)*abb296(151)
      abb296(72)=abb296(60)*spbl5k2
      abb296(78)=abb296(65)*abb296(111)
      abb296(93)=abb296(78)*spbk2k1
      abb296(49)=abb296(55)+abb296(49)-abb296(52)+abb296(72)-abb296(93)
      abb296(52)=-8.0_ki*abb296(49)
      abb296(49)=-4.0_ki*abb296(49)
      abb296(55)=abb296(117)*spak1k2
      abb296(55)=abb296(55)+abb296(67)
      abb296(55)=abb296(55)*abb296(132)
      abb296(72)=abb296(101)*spak2k4
      abb296(72)=abb296(72)+abb296(152)
      abb296(72)=abb296(72)*spak1k2
      abb296(93)=spak2k4*spbe7k3
      abb296(98)=abb296(93)*abb296(108)
      abb296(79)=abb296(79)*es12
      abb296(24)=abb296(24)*spak2k4
      abb296(60)=abb296(60)*spbl6l5
      abb296(78)=abb296(78)*spbl6k1
      abb296(100)=abb296(158)*abb296(92)
      abb296(14)=abb296(65)*abb296(14)
      abb296(57)=abb296(14)*abb296(57)
      abb296(108)=abb296(57)*spbe7k3
      abb296(24)=-abb296(108)-abb296(55)-abb296(24)+abb296(60)+abb296(78)+abb29&
      &6(100)+abb296(72)+abb296(98)-abb296(79)
      abb296(55)=-8.0_ki*abb296(24)
      abb296(24)=-4.0_ki*abb296(24)
      abb296(19)=abb296(93)*abb296(19)
      abb296(19)=abb296(133)+abb296(19)
      abb296(19)=abb296(71)*abb296(19)
      abb296(60)=spak2k4*abb296(149)
      abb296(19)=abb296(60)+abb296(19)
      abb296(19)=spak2e7*abb296(19)
      abb296(22)=abb296(93)*abb296(22)*abb296(65)
      abb296(60)=-spbe7l6*spak2k4*abb296(73)
      abb296(22)=abb296(22)+abb296(60)
      abb296(22)=spak2e7*abb296(22)
      abb296(14)=spbe7l6*abb296(14)*abb296(28)
      abb296(14)=abb296(14)+abb296(22)
      abb296(14)=abb296(5)*abb296(14)
      abb296(22)=-abb296(71)*abb296(151)
      abb296(60)=spbe7l6*abb296(77)
      abb296(22)=abb296(22)+abb296(60)
      abb296(22)=spak2e7*abb296(22)
      abb296(60)=abb296(65)*spbe7l6
      abb296(65)=-abb296(37)*abb296(60)
      abb296(22)=abb296(65)+abb296(22)
      abb296(22)=spbl6l5*abb296(22)
      abb296(65)=-abb296(71)*abb296(111)
      abb296(72)=abb296(76)*abb296(134)
      abb296(65)=abb296(65)+abb296(72)
      abb296(65)=spak2e7*abb296(65)
      abb296(72)=-abb296(39)*abb296(60)
      abb296(65)=abb296(72)+abb296(65)
      abb296(65)=spbl6k1*abb296(65)
      abb296(28)=-abb296(28)*abb296(147)
      abb296(14)=abb296(65)+abb296(22)+abb296(14)+abb296(28)+abb296(19)
      abb296(14)=4.0_ki*abb296(14)
      abb296(19)=spak2k4*spak1l5*abb296(137)
      abb296(19)=abb296(19)+abb296(57)
      abb296(19)=spbl6k3*abb296(19)
      abb296(22)=spbl6k1*spak1k4
      abb296(22)=abb296(140)-abb296(22)-abb296(51)
      abb296(22)=abb296(67)*abb296(22)
      abb296(19)=abb296(22)+abb296(19)
      abb296(19)=8.0_ki*abb296(19)
      abb296(22)=abb296(60)*abb296(29)
      abb296(28)=8.0_ki*abb296(22)
      abb296(22)=4.0_ki*abb296(22)
      abb296(29)=-spbk7k2*spak1k2*abb296(44)
      abb296(36)=spbk7l6*abb296(36)
      abb296(29)=abb296(29)+abb296(36)
      abb296(29)=4.0_ki*spae7k7*abb296(29)
      abb296(21)=-8.0_ki*abb296(35)*abb296(15)*abb296(21)
      abb296(35)=abb296(11)*spae7k7
      abb296(36)=abb296(35)*spbk7l6
      abb296(51)=8.0_ki*abb296(36)
      abb296(57)=16.0_ki*abb296(71)
      abb296(65)=abb296(89)*spbe7k2
      abb296(67)=2.0_ki*spbe7k2
      abb296(71)=abb296(136)*abb296(67)
      abb296(65)=abb296(65)+abb296(71)
      abb296(65)=abb296(65)*c2
      abb296(71)=abb296(139)*spbe7k2
      abb296(72)=abb296(67)*abb296(138)
      abb296(71)=abb296(71)+abb296(72)
      abb296(71)=abb296(71)*c4
      abb296(72)=abb296(81)*spbe7k2
      abb296(67)=abb296(67)*abb296(141)
      abb296(67)=abb296(72)+abb296(67)
      abb296(67)=abb296(8)*abb296(67)
      abb296(65)=-abb296(67)+abb296(65)+abb296(71)
      abb296(67)=-spak1k2*abb296(65)
      abb296(46)=abb296(46)*spbe7l6
      abb296(67)=abb296(67)-abb296(46)
      abb296(67)=spal5e7*abb296(67)
      abb296(65)=-abb296(65)*abb296(94)
      abb296(71)=abb296(128)*spbe7l6
      abb296(72)=abb296(44)*spak1e7
      abb296(71)=abb296(71)+abb296(72)
      abb296(72)=-abb296(7)*abb296(147)
      abb296(72)=-abb296(123)+abb296(72)
      abb296(72)=spbk7k2*spae7k7*abb296(72)
      abb296(73)=spal5k7*spak1e7
      abb296(78)=-spak1k7*spal5e7
      abb296(73)=abb296(78)+abb296(73)
      abb296(73)=abb296(135)*spbk7e7*abb296(73)
      abb296(36)=abb296(36)+abb296(72)+abb296(65)+abb296(67)+abb296(73)+abb296(&
      &71)
      abb296(36)=8.0_ki*abb296(36)
      abb296(47)=abb296(47)*spak1l5
      abb296(65)=abb296(83)*abb296(85)
      abb296(47)=abb296(47)-abb296(65)
      abb296(47)=-abb296(47)*abb296(8)
      abb296(50)=abb296(50)-abb296(138)
      abb296(50)=c4*spak1l5*abb296(50)
      abb296(67)=abb296(83)*abb296(87)
      abb296(34)=spak1l5*abb296(34)
      abb296(34)=abb296(34)-abb296(67)
      abb296(34)=c2*abb296(34)
      abb296(34)=-abb296(107)+abb296(34)+abb296(50)+abb296(47)
      abb296(34)=16.0_ki*abb296(34)
      abb296(47)=-abb296(105)*abb296(30)
      abb296(50)=abb296(47)*spak1e7
      abb296(72)=-16.0_ki*abb296(50)
      abb296(73)=-spal5k7*abb296(131)
      abb296(78)=spak1k7*abb296(118)
      abb296(73)=abb296(78)+abb296(73)
      abb296(73)=spbk7e7*abb296(73)
      abb296(78)=-abb296(89)+2.0_ki*abb296(96)
      abb296(78)=abb296(78)*c2
      abb296(79)=-abb296(139)+2.0_ki*abb296(99)
      abb296(79)=abb296(79)*c4
      abb296(81)=-abb296(81)+2.0_ki*abb296(102)
      abb296(81)=abb296(8)*abb296(81)
      abb296(78)=-abb296(81)+abb296(78)+abb296(79)
      abb296(78)=abb296(78)*spbe7k2
      abb296(79)=spak1k2*abb296(78)
      abb296(46)=abb296(79)-abb296(46)
      abb296(46)=spal5e7*abb296(46)
      abb296(78)=abb296(78)*abb296(94)
      abb296(46)=abb296(78)+abb296(46)+abb296(73)+abb296(71)
      abb296(46)=4.0_ki*abb296(46)
      abb296(50)=-8.0_ki*abb296(50)
      abb296(71)=8.0_ki*abb296(11)
      abb296(73)=4.0_ki*abb296(11)
      abb296(78)=abb296(47)*spak1k2
      abb296(78)=abb296(78)+abb296(60)
      abb296(79)=8.0_ki*abb296(78)
      abb296(78)=4.0_ki*abb296(78)
      abb296(81)=4.0_ki*spae7k7
      abb296(60)=spbk7l6*abb296(60)*abb296(81)
      abb296(83)=abb296(83)*abb296(11)
      abb296(85)=-abb296(83)*abb296(81)
      abb296(87)=abb296(130)*abb296(62)
      abb296(65)=abb296(65)*spbe7k2
      abb296(65)=abb296(87)-abb296(65)
      abb296(65)=abb296(65)*abb296(8)
      abb296(87)=-abb296(142)+abb296(138)
      abb296(87)=c4*abb296(62)*abb296(87)
      abb296(62)=-abb296(144)*abb296(62)
      abb296(67)=spbe7k2*abb296(67)
      abb296(62)=abb296(62)+abb296(67)
      abb296(62)=c2*abb296(62)
      abb296(17)=-spak1l6*abb296(105)*abb296(17)
      abb296(17)=abb296(17)+abb296(62)+abb296(87)+abb296(65)
      abb296(62)=abb296(27)*spak4l6
      abb296(17)=abb296(17)*abb296(62)
      abb296(47)=abb296(47)*spak1l6
      abb296(63)=abb296(63)*abb296(7)
      abb296(47)=abb296(47)-abb296(63)
      abb296(65)=abb296(39)*abb296(47)
      abb296(65)=abb296(66)+abb296(65)
      abb296(65)=spbk2k1*abb296(65)
      abb296(63)=abb296(37)*abb296(63)
      abb296(63)=-abb296(64)+abb296(63)
      abb296(63)=spbl5k2*abb296(63)
      abb296(64)=spak1l6*abb296(124)*abb296(37)
      abb296(17)=abb296(63)+abb296(64)+abb296(17)+abb296(65)
      abb296(17)=4.0_ki*abb296(17)
      abb296(63)=abb296(130)*abb296(75)
      abb296(63)=abb296(63)-abb296(86)
      abb296(8)=-abb296(63)*abb296(8)
      abb296(63)=abb296(142)*abb296(75)
      abb296(12)=-abb296(12)*abb296(91)
      abb296(12)=abb296(63)+abb296(12)
      abb296(12)=c4*abb296(12)
      abb296(63)=abb296(144)*abb296(75)
      abb296(63)=abb296(63)-abb296(88)
      abb296(63)=c2*abb296(63)
      abb296(8)=abb296(104)+abb296(63)+abb296(12)+abb296(8)
      abb296(8)=spak4l6*abb296(8)
      abb296(12)=abb296(69)+abb296(116)+abb296(76)
      abb296(63)=abb296(109)-abb296(48)
      abb296(12)=abb296(12)*abb296(63)
      abb296(64)=-spak4l5*abb296(69)
      abb296(64)=-abb296(77)+abb296(64)
      abb296(64)=spbl5k2*abb296(64)
      abb296(65)=spak1l6*spak4l5*abb296(90)
      abb296(8)=abb296(64)+abb296(65)+abb296(8)+abb296(12)
      abb296(8)=8.0_ki*abb296(8)
      abb296(12)=abb296(101)*spak1l6
      abb296(11)=abb296(7)*abb296(11)*abb296(54)
      abb296(11)=abb296(11)+abb296(12)+abb296(53)
      abb296(11)=spak4e7*abb296(11)
      abb296(12)=8.0_ki*abb296(11)
      abb296(11)=-4.0_ki*abb296(11)
      abb296(47)=-spae7k7*abb296(47)
      abb296(35)=-abb296(35)+abb296(47)
      abb296(35)=4.0_ki*spbk7k2*abb296(35)
      abb296(47)=4.0_ki*abb296(83)
      abb296(53)=-abb296(37)*abb296(47)
      abb296(54)=8.0_ki*abb296(161)
      abb296(64)=spak4l5*abb296(54)
      abb296(48)=-8.0_ki*abb296(159)*abb296(48)
      abb296(65)=8.0_ki*spak4e7
      abb296(66)=abb296(83)*abb296(65)
      abb296(67)=spak4e7*abb296(47)
      abb296(47)=-abb296(39)*abb296(47)
      abb296(54)=spak1k4*abb296(54)
      abb296(69)=-abb296(37)*abb296(31)*abb296(30)
      abb296(44)=abb296(44)*abb296(62)
      abb296(62)=-abb296(30)*abb296(32)
      abb296(75)=-spbk2k1*abb296(62)*abb296(39)
      abb296(44)=abb296(75)+abb296(69)+abb296(44)
      abb296(44)=4.0_ki*abb296(44)
      abb296(56)=-spak4l5*abb296(15)*abb296(56)
      abb296(63)=-abb296(59)*abb296(63)
      abb296(69)=-spak4l6*abb296(41)
      abb296(63)=abb296(56)+abb296(69)+abb296(63)
      abb296(63)=8.0_ki*abb296(63)
      abb296(30)=abb296(30)*abb296(38)
      abb296(38)=abb296(30)*abb296(65)
      abb296(69)=4.0_ki*spak4e7
      abb296(30)=abb296(30)*abb296(69)
      abb296(75)=abb296(81)*spbk7k2
      abb296(62)=abb296(62)*abb296(75)
      abb296(76)=abb296(153)*abb296(151)
      abb296(56)=-spbe7l6*abb296(56)
      abb296(77)=abb296(41)*abb296(132)
      abb296(56)=abb296(77)+abb296(76)+abb296(56)
      abb296(56)=spak2e7*abb296(56)
      abb296(33)=-spbe7k3*abb296(33)
      abb296(76)=spbe7l6*abb296(41)
      abb296(33)=abb296(33)+abb296(76)
      abb296(33)=spak2e7*abb296(33)
      abb296(76)=abb296(43)*abb296(110)
      abb296(33)=abb296(76)+abb296(33)
      abb296(33)=spak4l6*abb296(33)
      abb296(76)=abb296(59)*abb296(134)
      abb296(76)=-abb296(120)+abb296(76)
      abb296(76)=spak2e7*abb296(76)
      abb296(32)=abb296(15)*abb296(32)
      abb296(77)=abb296(32)*spbe7l6
      abb296(81)=abb296(39)*abb296(77)
      abb296(76)=abb296(81)+abb296(76)
      abb296(76)=spbk2k1*abb296(76)
      abb296(15)=-abb296(15)*abb296(31)
      abb296(31)=spbe7l6*abb296(15)*abb296(37)
      abb296(31)=abb296(76)+abb296(33)+abb296(31)+abb296(56)
      abb296(31)=4.0_ki*abb296(31)
      abb296(15)=spak4l5*abb296(15)
      abb296(33)=spak4l6*abb296(43)
      abb296(32)=abb296(32)*abb296(109)
      abb296(15)=abb296(32)+abb296(33)+abb296(15)
      abb296(15)=spbl6k3*abb296(15)
      abb296(32)=-spak2k4*abb296(41)
      abb296(33)=-abb296(59)*abb296(140)
      abb296(15)=abb296(33)+abb296(32)+abb296(15)
      abb296(15)=8.0_ki*abb296(15)
      abb296(32)=spbe7l6*abb296(59)*abb296(65)
      abb296(33)=-spbe7k3*abb296(92)
      abb296(33)=-abb296(152)+abb296(33)+abb296(70)
      abb296(33)=spak2e7*abb296(33)
      abb296(41)=abb296(58)*abb296(59)
      abb296(33)=-abb296(41)+abb296(33)
      abb296(33)=8.0_ki*abb296(33)
      abb296(56)=-16.0_ki*spak2k4*abb296(117)
      abb296(41)=-4.0_ki*abb296(41)
      abb296(27)=abb296(106)*abb296(27)
      abb296(58)=spak2e7*abb296(103)
      abb296(27)=abb296(27)+abb296(58)
      abb296(27)=spak4l6*abb296(27)
      abb296(39)=abb296(122)*abb296(39)
      abb296(58)=abb296(117)*abb296(95)
      abb296(39)=-abb296(39)+abb296(58)
      abb296(39)=spbk2k1*abb296(39)
      abb296(37)=abb296(61)*abb296(37)
      abb296(58)=abb296(90)*abb296(97)
      abb296(27)=abb296(39)+abb296(27)+abb296(37)+abb296(58)
      abb296(27)=4.0_ki*abb296(27)
      abb296(37)=abb296(65)*abb296(117)
      abb296(39)=-abb296(117)*abb296(69)
      abb296(58)=-abb296(75)*abb296(77)
      abb296(43)=8.0_ki*abb296(43)
      abb296(59)=-16.0_ki*abb296(122)
      abb296(65)=abb296(122)*abb296(75)
      abb296(69)=-8.0_ki*spak4k7*abb296(117)
      abb296(61)=-spak4l5*abb296(61)
      abb296(70)=spak1k4*abb296(84)
      abb296(61)=abb296(70)+abb296(61)-abb296(92)
      abb296(61)=8.0_ki*abb296(61)
      R2d296=0.0_ki
      rat2 = rat2 + R2d296
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='296' value='", &
          & R2d296, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd296h2