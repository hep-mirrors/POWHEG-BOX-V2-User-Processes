module     p0_dbaru_epnebbbarg_abbrevd299h3
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(144), public :: abb299
   complex(ki), public :: R2d299
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
      abb299(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb299(2)=sqrt(mB**2)
      abb299(3)=NC**(-1)
      abb299(4)=sqrt2**(-1)
      abb299(5)=spak2l5**(-1)
      abb299(6)=spak2l6**(-1)
      abb299(7)=spak2k7**(-1)
      abb299(8)=spbl5k2**(-1)
      abb299(9)=spbl6k2**(-1)
      abb299(10)=mB**3
      abb299(11)=TR*gW
      abb299(11)=abb299(11)**2*i_*CVDU*abb299(4)*abb299(1)
      abb299(12)=abb299(11)*spak1k2*abb299(7)
      abb299(13)=abb299(12)*spak2k4
      abb299(14)=abb299(10)*abb299(13)
      abb299(15)=abb299(5)*abb299(3)
      abb299(16)=c2*abb299(15)**2
      abb299(17)=abb299(16)*abb299(14)
      abb299(18)=abb299(5)**2
      abb299(19)=abb299(18)*abb299(3)
      abb299(20)=abb299(19)*abb299(14)
      abb299(21)=abb299(20)*c3
      abb299(20)=abb299(20)*c1
      abb299(22)=abb299(18)*c4
      abb299(23)=abb299(14)*abb299(22)
      abb299(17)=-abb299(17)+abb299(21)+abb299(20)-abb299(23)
      abb299(20)=abb299(17)*abb299(8)
      abb299(21)=abb299(2)**2
      abb299(23)=abb299(21)*spbk7k3
      abb299(24)=spbl6k2*abb299(23)*abb299(20)
      abb299(16)=abb299(16)+abb299(22)
      abb299(22)=c1+c3
      abb299(25)=abb299(19)*abb299(22)
      abb299(25)=abb299(16)-abb299(25)
      abb299(26)=spbk7k2*abb299(8)
      abb299(27)=abb299(26)*spbl6k3
      abb299(28)=mB**4
      abb299(29)=abb299(28)*abb299(2)
      abb299(30)=abb299(27)*abb299(25)*abb299(29)*abb299(13)
      abb299(31)=abb299(15)*abb299(22)
      abb299(32)=c4*abb299(5)
      abb299(33)=abb299(3)**2
      abb299(34)=abb299(33)*c2
      abb299(35)=abb299(34)*abb299(5)
      abb299(35)=-abb299(31)+abb299(32)+abb299(35)
      abb299(36)=abb299(12)*abb299(6)
      abb299(37)=abb299(36)*spak2k4
      abb299(38)=abb299(37)*abb299(10)
      abb299(39)=abb299(35)*abb299(38)
      abb299(40)=abb299(23)*abb299(39)
      abb299(24)=abb299(30)-abb299(24)+abb299(40)
      abb299(30)=abb299(2)*spbk7k3
      abb299(41)=abb299(30)*abb299(37)
      abb299(42)=-abb299(8)*abb299(25)*abb299(28)*abb299(41)
      abb299(43)=abb299(42)*es12
      abb299(44)=-abb299(43)+abb299(24)
      abb299(44)=es12*abb299(44)
      abb299(24)=-abb299(24)+2.0_ki*abb299(43)
      abb299(45)=abb299(42)*es71
      abb299(46)=-abb299(45)-abb299(24)
      abb299(46)=es71*abb299(46)
      abb299(42)=abb299(42)*es712
      abb299(24)=-abb299(42)+2.0_ki*abb299(45)+abb299(24)
      abb299(24)=es712*abb299(24)
      abb299(47)=mB**2
      abb299(48)=abb299(47)*abb299(2)
      abb299(49)=abb299(22)*abb299(48)*abb299(15)*abb299(12)
      abb299(50)=abb299(12)*abb299(34)
      abb299(51)=abb299(12)*c4
      abb299(51)=abb299(51)+abb299(50)
      abb299(52)=-abb299(51)*abb299(48)*abb299(5)
      abb299(49)=abb299(52)+abb299(49)
      abb299(52)=abb299(49)*spbl6k3
      abb299(53)=abb299(34)+c4
      abb299(54)=abb299(22)*abb299(3)
      abb299(55)=abb299(53)-abb299(54)
      abb299(56)=abb299(48)*abb299(6)
      abb299(57)=abb299(55)*abb299(56)
      abb299(58)=abb299(11)*abb299(5)
      abb299(59)=abb299(58)*spbk7k3
      abb299(60)=abb299(59)*spak1k2
      abb299(61)=-abb299(60)*abb299(57)
      abb299(52)=abb299(52)+abb299(61)
      abb299(62)=es712-es71
      abb299(63)=abb299(62)-es12
      abb299(64)=-abb299(52)*abb299(63)
      abb299(65)=c4*mB
      abb299(66)=abb299(3)*mB
      abb299(67)=abb299(66)*c3
      abb299(68)=abb299(66)*c1
      abb299(69)=abb299(34)*mB
      abb299(65)=abb299(67)-abb299(65)+abb299(68)-abb299(69)
      abb299(67)=-abb299(60)*abb299(65)
      abb299(68)=abb299(67)*abb299(21)
      abb299(69)=-spbl6k2*abb299(68)
      abb299(64)=abb299(69)+abb299(64)
      abb299(69)=spak4l5*spbk7l5
      abb299(64)=abb299(64)*abb299(69)
      abb299(70)=spbl6k3*spak1k4
      abb299(71)=abb299(49)*abb299(70)
      abb299(72)=abb299(61)*spak1k4
      abb299(71)=abb299(71)+abb299(72)
      abb299(71)=-abb299(71)*abb299(63)
      abb299(73)=spbl6k2*spak1k4
      abb299(68)=-abb299(68)*abb299(73)
      abb299(68)=abb299(68)+abb299(71)
      abb299(68)=spbk7k1*abb299(68)
      abb299(71)=abb299(17)*abb299(21)
      abb299(74)=spbl6k3*spbl6k2
      abb299(75)=abb299(74)*abb299(26)
      abb299(76)=-abb299(71)*abb299(75)
      abb299(77)=abb299(12)*mB
      abb299(78)=abb299(22)*abb299(77)*abb299(15)
      abb299(79)=abb299(5)*mB
      abb299(80)=abb299(79)*c4
      abb299(81)=abb299(80)*abb299(12)
      abb299(50)=abb299(50)*abb299(79)
      abb299(50)=-abb299(50)+abb299(78)-abb299(81)
      abb299(81)=abb299(21)*abb299(50)
      abb299(82)=abb299(74)*abb299(69)
      abb299(83)=abb299(70)*spbk7k1
      abb299(84)=abb299(83)*spbl6k2
      abb299(84)=abb299(84)+abb299(82)
      abb299(85)=abb299(81)*abb299(84)
      abb299(76)=abb299(76)+abb299(85)
      abb299(76)=spak2l6*abb299(76)
      abb299(85)=abb299(65)*abb299(21)
      abb299(86)=abb299(36)*spbk7k3
      abb299(87)=abb299(86)*spak1k4
      abb299(88)=abb299(85)*abb299(87)
      abb299(89)=-abb299(88)*abb299(63)
      abb299(90)=-abb299(55)*spbk7k2
      abb299(77)=abb299(90)*abb299(77)
      abb299(91)=abb299(21)*abb299(77)
      abb299(92)=abb299(70)*abb299(91)
      abb299(89)=abb299(92)+abb299(89)
      abb299(89)=spbl5k1*abb299(89)
      abb299(92)=spbk7k2*spbl6k3
      abb299(14)=abb299(92)*abb299(35)*abb299(14)
      abb299(93)=abb299(21)*abb299(14)
      abb299(24)=abb299(76)+abb299(89)+abb299(68)+abb299(64)+abb299(24)+abb299(&
      &46)+abb299(93)+abb299(44)
      abb299(24)=8.0_ki*abb299(24)
      abb299(44)=abb299(75)*abb299(17)
      abb299(46)=abb299(50)*spbl6k2
      abb299(64)=abb299(83)*abb299(46)
      abb299(68)=abb299(82)*abb299(50)
      abb299(44)=-abb299(44)+abb299(64)+abb299(68)
      abb299(44)=abb299(44)*spak2l6
      abb299(34)=abb299(34)*abb299(79)
      abb299(34)=abb299(34)+abb299(80)
      abb299(64)=-abb299(34)*abb299(23)*abb299(13)
      abb299(68)=spbk7k3*spak2k4
      abb299(76)=abb299(68)*abb299(78)
      abb299(79)=abb299(21)*abb299(76)
      abb299(64)=abb299(79)+abb299(64)
      abb299(64)=abb299(64)*spbl6k2
      abb299(79)=spbl5k3*spbk7k2
      abb299(80)=abb299(79)*abb299(37)
      abb299(85)=abb299(85)*abb299(80)
      abb299(64)=abb299(64)+abb299(85)
      abb299(85)=-abb299(65)*abb299(87)
      abb299(87)=abb299(63)*abb299(85)
      abb299(89)=-abb299(77)*abb299(70)
      abb299(87)=abb299(89)-abb299(87)
      abb299(87)=abb299(87)*spbl5k1
      abb299(14)=-abb299(44)+abb299(87)-abb299(14)+abb299(64)
      abb299(44)=spbk7k3*abb299(17)
      abb299(87)=abb299(44)*abb299(8)
      abb299(89)=abb299(87)*spbl6k2
      abb299(41)=abb299(41)*abb299(47)
      abb299(93)=abb299(38)*spbk7k3
      abb299(94)=abb299(41)+abb299(93)
      abb299(95)=-abb299(22)*abb299(15)*abb299(94)
      abb299(96)=abb299(33)*abb299(5)
      abb299(97)=c2*abb299(96)
      abb299(32)=abb299(97)+abb299(32)
      abb299(32)=abb299(94)*abb299(32)
      abb299(32)=-abb299(89)+abb299(32)+abb299(95)
      abb299(32)=abb299(32)*abb299(63)
      abb299(94)=spbl6k2*abb299(69)
      abb299(95)=spbk7k1*abb299(73)
      abb299(94)=abb299(95)+abb299(94)
      abb299(94)=abb299(67)*abb299(94)
      abb299(32)=abb299(32)+abb299(94)+abb299(14)
      abb299(32)=16.0_ki*abb299(32)
      abb299(80)=-abb299(65)*abb299(80)
      abb299(94)=abb299(34)*abb299(13)
      abb299(95)=spbk7k3*abb299(94)
      abb299(76)=abb299(95)-abb299(76)
      abb299(76)=abb299(76)*spbl6k2
      abb299(80)=abb299(80)+abb299(76)
      abb299(95)=32.0_ki*abb299(80)
      abb299(97)=abb299(27)*abb299(17)
      abb299(98)=abb299(50)*spbl6k3
      abb299(99)=abb299(98)*abb299(69)
      abb299(100)=abb299(50)*abb299(70)
      abb299(101)=-spbk7k1*abb299(100)
      abb299(41)=abb299(41)*abb299(35)
      abb299(101)=abb299(101)-abb299(99)+abb299(41)+abb299(97)
      abb299(101)=abb299(63)*abb299(101)
      abb299(64)=abb299(64)+abb299(101)
      abb299(64)=16.0_ki*abb299(64)
      abb299(101)=abb299(8)*spbk3k2
      abb299(102)=abb299(63)*abb299(101)
      abb299(103)=-abb299(17)*abb299(102)
      abb299(104)=spbk3k2*abb299(69)
      abb299(105)=spbk3k2*spak1k4
      abb299(106)=spbk7k1*abb299(105)
      abb299(104)=abb299(106)+abb299(104)
      abb299(106)=abb299(10)*abb299(58)
      abb299(107)=spak1k2*abb299(106)*abb299(6)
      abb299(104)=-abb299(104)*abb299(55)*abb299(107)
      abb299(108)=mB**5
      abb299(109)=abb299(108)*abb299(37)
      abb299(25)=abb299(109)*abb299(25)
      abb299(102)=-abb299(25)*abb299(102)
      abb299(102)=abb299(102)+abb299(104)
      abb299(102)=abb299(9)*abb299(102)
      abb299(104)=abb299(36)*abb299(65)
      abb299(110)=abb299(21)*abb299(104)
      abb299(111)=abb299(110)*spbl5k3
      abb299(112)=spak4l6*abb299(111)
      abb299(113)=abb299(55)*spak1k4
      abb299(114)=-abb299(48)*abb299(59)*abb299(113)
      abb299(23)=abb299(23)*abb299(78)
      abb299(34)=abb299(34)*abb299(12)*spbk7k3
      abb299(21)=-abb299(21)*abb299(34)
      abb299(21)=abb299(23)+abb299(21)
      abb299(23)=-spak4k7*abb299(21)
      abb299(57)=-abb299(68)*abb299(58)*abb299(57)
      abb299(115)=-spak1l6*abb299(57)
      abb299(23)=abb299(102)+abb299(115)+abb299(112)+abb299(23)+abb299(114)+abb&
      &299(103)
      abb299(23)=spbk7l6*abb299(23)
      abb299(102)=spbl6k3*abb299(81)
      abb299(103)=abb299(58)*spak1k2
      abb299(112)=abb299(103)*abb299(65)
      abb299(114)=abb299(112)*spbk7l6
      abb299(115)=-spbk3k2*abb299(114)
      abb299(102)=abb299(102)+abb299(115)
      abb299(102)=spak4l5*abb299(102)
      abb299(115)=abb299(53)*abb299(11)
      abb299(116)=abb299(6)*abb299(115)
      abb299(117)=abb299(11)*abb299(3)
      abb299(118)=abb299(117)*abb299(22)
      abb299(119)=abb299(6)*abb299(118)
      abb299(119)=-abb299(116)+abb299(119)
      abb299(119)=spak1k4*abb299(30)*abb299(47)*abb299(119)
      abb299(57)=-spak1l5*abb299(57)
      abb299(57)=abb299(102)+abb299(57)+abb299(119)
      abb299(57)=spbk7l5*abb299(57)
      abb299(27)=-abb299(71)*abb299(27)
      abb299(102)=abb299(81)*abb299(70)
      abb299(119)=-abb299(105)*abb299(114)
      abb299(72)=abb299(119)+abb299(72)+abb299(102)
      abb299(72)=spbk7k1*abb299(72)
      abb299(88)=spbl5k1*abb299(88)
      abb299(23)=abb299(88)+abb299(72)+abb299(42)-abb299(45)-abb299(43)+abb299(&
      &27)+abb299(40)+abb299(23)+abb299(57)
      abb299(23)=16.0_ki*abb299(23)
      abb299(27)=abb299(83)*abb299(50)
      abb299(40)=spbk7k3*abb299(78)
      abb299(34)=-abb299(40)+abb299(34)
      abb299(40)=abb299(34)*spak4k7
      abb299(42)=abb299(40)*spbk7l6
      abb299(27)=-abb299(97)+abb299(42)+abb299(99)+abb299(27)
      abb299(42)=abb299(104)*spbl5k3
      abb299(43)=spak4l6*spbk7l6
      abb299(45)=abb299(43)*abb299(42)
      abb299(57)=abb299(85)*spbl5k1
      abb299(72)=abb299(35)*abb299(93)
      abb299(45)=abb299(45)+abb299(72)+abb299(27)-abb299(57)
      abb299(72)=-32.0_ki*abb299(45)
      abb299(41)=abb299(41)+abb299(76)
      abb299(41)=abb299(41)*abb299(63)
      abb299(67)=abb299(67)*spbk7l6
      abb299(85)=spak4l6*spbl6k2
      abb299(88)=-abb299(85)*abb299(67)
      abb299(14)=abb299(88)+abb299(41)+abb299(14)
      abb299(14)=8.0_ki*abb299(14)
      abb299(41)=16.0_ki*abb299(80)
      abb299(45)=-16.0_ki*abb299(45)
      abb299(80)=8.0_ki*abb299(80)
      abb299(44)=abb299(44)*abb299(26)*abb299(63)
      abb299(88)=-abb299(34)*abb299(63)
      abb299(93)=spbk7k1*spak1k4
      abb299(93)=abb299(93)+abb299(69)
      abb299(97)=-abb299(88)*abb299(93)
      abb299(44)=abb299(44)+abb299(97)
      abb299(44)=8.0_ki*abb299(44)
      abb299(97)=abb299(63)*spbk7l6
      abb299(87)=-abb299(87)*abb299(97)
      abb299(93)=abb299(67)*abb299(93)
      abb299(87)=abb299(87)+abb299(93)
      abb299(87)=8.0_ki*abb299(87)
      abb299(93)=-abb299(20)*spbl6k3*abb299(97)
      abb299(99)=-spbl6k3*abb299(69)
      abb299(83)=-abb299(83)+abb299(99)
      abb299(83)=abb299(114)*abb299(83)
      abb299(83)=abb299(93)+abb299(83)
      abb299(83)=8.0_ki*abb299(83)
      abb299(93)=16.0_ki*abb299(88)
      abb299(99)=abb299(63)*abb299(9)
      abb299(102)=abb299(10)*abb299(99)*abb299(35)*abb299(86)
      abb299(102)=abb299(102)+abb299(88)
      abb299(102)=16.0_ki*abb299(102)
      abb299(88)=-8.0_ki*abb299(88)
      abb299(114)=abb299(110)*spbk7l5
      abb299(119)=-abb299(63)*abb299(114)
      abb299(97)=abb299(49)*abb299(97)
      abb299(120)=spak2l6*spbk7l6
      abb299(121)=-spbl6k2*abb299(81)*abb299(120)
      abb299(91)=spbl6l5*abb299(91)
      abb299(91)=abb299(91)+abb299(121)+abb299(119)+abb299(97)
      abb299(91)=8.0_ki*abb299(91)
      abb299(97)=abb299(120)*abb299(46)
      abb299(119)=abb299(104)*spbk7l5
      abb299(121)=abb299(63)*abb299(119)
      abb299(77)=-abb299(77)*spbl6l5
      abb299(77)=abb299(121)+abb299(77)+abb299(97)
      abb299(97)=16.0_ki*abb299(77)
      abb299(121)=abb299(63)*abb299(50)
      abb299(122)=16.0_ki*spbk7l6*abb299(121)
      abb299(123)=abb299(10)*abb299(36)
      abb299(124)=abb299(123)*abb299(35)
      abb299(99)=abb299(99)*abb299(124)
      abb299(99)=abb299(99)-abb299(81)
      abb299(121)=abb299(121)+abb299(99)
      abb299(121)=spbk7l6*abb299(121)
      abb299(114)=abb299(114)+abb299(121)
      abb299(114)=16.0_ki*abb299(114)
      abb299(121)=abb299(50)*spbk7l6
      abb299(125)=abb299(121)-abb299(119)
      abb299(126)=32.0_ki*abb299(125)
      abb299(77)=8.0_ki*abb299(77)
      abb299(125)=16.0_ki*abb299(125)
      abb299(127)=8.0_ki*abb299(112)*spbk7l6**2
      abb299(128)=16.0_ki*abb299(67)
      abb299(129)=abb299(10)*abb299(6)
      abb299(60)=abb299(9)*spbk7l6*abb299(129)*abb299(55)*abb299(60)
      abb299(60)=-abb299(67)+abb299(60)
      abb299(60)=16.0_ki*abb299(60)
      abb299(67)=8.0_ki*abb299(67)
      abb299(130)=abb299(28)*abb299(37)*abb299(15)
      abb299(131)=abb299(38)*abb299(15)
      abb299(132)=abb299(131)*abb299(2)
      abb299(130)=abb299(132)-abb299(130)
      abb299(130)=-abb299(130)*abb299(22)
      abb299(132)=abb299(37)*abb299(5)
      abb299(28)=abb299(132)*abb299(28)
      abb299(133)=abb299(38)*abb299(5)
      abb299(134)=abb299(2)*abb299(133)
      abb299(134)=-abb299(28)+abb299(134)
      abb299(134)=c4*abb299(134)
      abb299(28)=-abb299(33)*abb299(28)
      abb299(38)=abb299(96)*abb299(38)
      abb299(135)=abb299(2)*abb299(38)
      abb299(28)=abb299(28)+abb299(135)
      abb299(28)=c2*abb299(28)
      abb299(28)=abb299(28)+abb299(134)+abb299(130)
      abb299(28)=abb299(2)*abb299(28)
      abb299(130)=-spbl6k2*abb299(112)
      abb299(103)=abb299(103)*abb299(56)
      abb299(103)=abb299(103)+abb299(107)
      abb299(103)=abb299(103)*abb299(55)
      abb299(107)=abb299(130)-abb299(103)
      abb299(107)=abb299(107)*abb299(69)
      abb299(112)=-abb299(112)*abb299(73)
      abb299(103)=-spak1k4*abb299(103)
      abb299(103)=abb299(103)+abb299(112)
      abb299(103)=spbk7k1*abb299(103)
      abb299(112)=abb299(35)*abb299(48)
      abb299(13)=spbl6k2*abb299(13)*abb299(112)
      abb299(13)=abb299(103)+abb299(107)+abb299(13)+abb299(28)
      abb299(13)=spbk3k2*abb299(13)
      abb299(28)=abb299(17)*spbl6k2
      abb299(103)=abb299(108)+abb299(29)
      abb299(19)=-abb299(22)*abb299(103)*abb299(19)*abb299(37)
      abb299(29)=abb299(29)*abb299(37)
      abb299(29)=abb299(29)+abb299(109)
      abb299(29)=abb299(29)*abb299(16)
      abb299(19)=abb299(28)+abb299(29)+abb299(19)
      abb299(19)=abb299(19)*abb299(101)
      abb299(29)=-abb299(19)*abb299(62)
      abb299(62)=abb299(58)*abb299(7)
      abb299(103)=-abb299(55)*abb299(62)*abb299(48)
      abb299(107)=abb299(70)*abb299(103)
      abb299(56)=abb299(56)*abb299(59)
      abb299(108)=-abb299(56)*abb299(113)
      abb299(19)=abb299(19)+abb299(108)+abb299(107)
      abb299(19)=es12*abb299(19)
      abb299(108)=abb299(36)*abb299(2)
      abb299(66)=abb299(108)*abb299(66)
      abb299(36)=abb299(47)*abb299(36)
      abb299(109)=abb299(36)*abb299(3)
      abb299(66)=abb299(66)-abb299(109)
      abb299(66)=abb299(22)*abb299(66)
      abb299(109)=abb299(108)*mB
      abb299(36)=abb299(109)-abb299(36)
      abb299(36)=-abb299(36)*abb299(53)
      abb299(36)=abb299(66)+abb299(36)
      abb299(36)=abb299(36)*abb299(2)
      abb299(66)=spak1k4*abb299(36)
      abb299(12)=abb299(12)*abb299(54)
      abb299(12)=abb299(12)-abb299(51)
      abb299(51)=abb299(12)*abb299(2)
      abb299(54)=abb299(51)*abb299(73)
      abb299(54)=abb299(66)+abb299(54)
      abb299(54)=spbk3k2*abb299(54)
      abb299(66)=abb299(6)*abb299(7)
      abb299(109)=abb299(11)*mB
      abb299(113)=-abb299(55)*abb299(66)*abb299(109)
      abb299(130)=abb299(113)*spak1k4
      abb299(134)=spbk7k3*abb299(130)
      abb299(135)=-abb299(134)*abb299(63)
      abb299(115)=abb299(115)-abb299(118)
      abb299(115)=abb299(115)*abb299(7)
      abb299(30)=-abb299(73)*abb299(30)*abb299(115)
      abb299(109)=abb299(109)*abb299(7)
      abb299(90)=abb299(109)*abb299(90)
      abb299(136)=abb299(70)*abb299(90)
      abb299(30)=abb299(30)+abb299(136)+abb299(135)
      abb299(30)=spak1k7*abb299(30)
      abb299(30)=abb299(54)+abb299(30)
      abb299(30)=spbl5k1*abb299(30)
      abb299(54)=spak2k4*abb299(7)
      abb299(135)=abb299(54)*abb299(10)
      abb299(136)=abb299(22)*abb299(135)*abb299(117)
      abb299(18)=abb299(18)*abb299(136)
      abb299(135)=abb299(135)*abb299(11)
      abb299(16)=abb299(135)*abb299(16)
      abb299(16)=abb299(18)-abb299(16)
      abb299(18)=-abb299(16)*abb299(75)
      abb299(75)=abb299(65)*abb299(62)
      abb299(82)=abb299(75)*abb299(82)
      abb299(18)=abb299(18)+abb299(82)
      abb299(18)=spak1k7*abb299(18)
      abb299(82)=abb299(75)*abb299(70)
      abb299(137)=abb299(82)*spbl6k2
      abb299(138)=-es71*abb299(137)
      abb299(18)=abb299(138)+abb299(18)
      abb299(18)=spak2l6*abb299(18)
      abb299(138)=abb299(65)*abb299(58)
      abb299(84)=-abb299(138)*abb299(84)
      abb299(16)=-abb299(16)*abb299(8)*abb299(63)
      abb299(139)=-spak2k4*abb299(103)
      abb299(16)=abb299(139)+abb299(16)
      abb299(16)=abb299(74)*abb299(16)
      abb299(140)=abb299(2)*abb299(7)
      abb299(11)=abb299(140)*abb299(11)
      abb299(141)=abb299(11)*abb299(53)
      abb299(117)=abb299(140)*abb299(117)
      abb299(140)=abb299(117)*abb299(22)
      abb299(140)=abb299(141)-abb299(140)
      abb299(141)=abb299(140)*spbl6k2
      abb299(70)=abb299(70)*spbl5k1
      abb299(142)=-abb299(70)*abb299(141)
      abb299(16)=abb299(142)+abb299(16)+abb299(84)
      abb299(16)=spak1l6*abb299(16)
      abb299(62)=abb299(62)*spak2k4
      abb299(84)=-abb299(92)*abb299(62)*abb299(10)
      abb299(92)=abb299(106)*abb299(66)
      abb299(142)=abb299(92)*abb299(68)
      abb299(143)=abb299(63)*abb299(142)
      abb299(84)=abb299(84)+abb299(143)
      abb299(84)=-abb299(55)*abb299(84)
      abb299(103)=-spbl6k2*abb299(68)*abb299(103)
      abb299(84)=abb299(103)+abb299(84)
      abb299(84)=spak1k7*abb299(84)
      abb299(103)=abb299(110)*abb299(79)
      abb299(86)=abb299(63)*abb299(86)*abb299(112)
      abb299(86)=abb299(103)+abb299(86)
      abb299(86)=spak4k7*abb299(86)
      abb299(61)=abb299(61)+abb299(111)
      abb299(61)=abb299(61)*abb299(85)
      abb299(103)=spbl5k2*spak4l5
      abb299(52)=-abb299(52)*abb299(103)
      abb299(13)=abb299(52)+abb299(16)+abb299(18)+abb299(61)+abb299(86)+abb299(&
      &30)+abb299(84)+abb299(19)+abb299(13)+abb299(29)
      abb299(13)=8.0_ki*abb299(13)
      abb299(16)=abb299(42)*abb299(85)
      abb299(18)=abb299(105)*spbl5k1
      abb299(19)=abb299(79)*spak4k7
      abb299(18)=abb299(18)+abb299(19)
      abb299(19)=abb299(18)*abb299(104)
      abb299(16)=abb299(16)+abb299(19)
      abb299(19)=abb299(75)*spbl6k2
      abb299(29)=abb299(68)*abb299(19)
      abb299(30)=abb299(113)*spak2k4
      abb299(52)=abb299(30)*abb299(79)
      abb299(61)=abb299(29)+abb299(52)
      abb299(61)=abb299(61)*spak1k7
      abb299(79)=abb299(65)*abb299(59)
      abb299(84)=abb299(140)*spbl5k3
      abb299(86)=abb299(84)+abb299(79)
      abb299(86)=abb299(73)*abb299(86)
      abb299(61)=abb299(61)-abb299(86)
      abb299(37)=abb299(48)*abb299(37)
      abb299(110)=abb299(37)*abb299(15)
      abb299(111)=abb299(110)-abb299(131)
      abb299(111)=-abb299(111)*abb299(22)
      abb299(112)=abb299(132)*abb299(48)
      abb299(132)=-abb299(133)+abb299(112)
      abb299(132)=c4*abb299(132)
      abb299(143)=abb299(112)*abb299(33)
      abb299(144)=-abb299(38)+abb299(143)
      abb299(144)=c2*abb299(144)
      abb299(111)=abb299(144)+abb299(132)+abb299(111)
      abb299(111)=spbk3k2*abb299(111)
      abb299(111)=abb299(111)+abb299(61)-abb299(16)
      abb299(111)=16.0_ki*abb299(111)
      abb299(82)=es12*abb299(82)
      abb299(132)=-abb299(98)*abb299(103)
      abb299(31)=-abb299(37)*abb299(31)
      abb299(37)=abb299(112)*abb299(53)
      abb299(31)=abb299(31)+abb299(37)
      abb299(31)=spbk3k2*abb299(31)
      abb299(31)=abb299(132)+abb299(82)+abb299(31)+abb299(61)
      abb299(31)=16.0_ki*abb299(31)
      abb299(37)=abb299(48)*abb299(58)
      abb299(58)=abb299(37)*abb299(66)
      abb299(61)=abb299(58)*abb299(68)
      abb299(61)=abb299(61)+abb299(142)
      abb299(61)=abb299(61)*abb299(53)
      abb299(37)=abb299(37)+abb299(106)
      abb299(37)=abb299(37)*abb299(66)*abb299(3)
      abb299(68)=-abb299(22)*abb299(68)*abb299(37)
      abb299(82)=spbl5k1*abb299(134)
      abb299(106)=abb299(113)*spbl5k3
      abb299(43)=abb299(106)*abb299(43)
      abb299(29)=abb299(43)+2.0_ki*abb299(82)-abb299(29)+abb299(68)+abb299(61)
      abb299(29)=spak1k7*abb299(29)
      abb299(43)=abb299(28)+abb299(25)
      abb299(43)=abb299(43)*abb299(101)
      abb299(59)=abb299(129)*abb299(59)
      abb299(56)=abb299(59)-abb299(56)
      abb299(56)=abb299(56)*abb299(55)
      abb299(47)=abb299(108)*abb299(47)
      abb299(35)=-abb299(47)*abb299(35)
      abb299(59)=spbk3k1*abb299(35)
      abb299(56)=abb299(59)+abb299(56)
      abb299(56)=spak1k4*abb299(56)
      abb299(58)=abb299(58)*spak2k4
      abb299(59)=abb299(92)*spak2k4
      abb299(61)=abb299(58)+abb299(59)
      abb299(61)=abb299(61)*abb299(53)
      abb299(37)=-abb299(22)*spak2k4*abb299(37)
      abb299(37)=abb299(37)+abb299(61)
      abb299(37)=spbl6k3*abb299(37)
      abb299(61)=abb299(113)*abb299(70)
      abb299(37)=abb299(37)+abb299(61)
      abb299(37)=spak1l6*abb299(37)
      abb299(61)=abb299(50)*spbk3k2
      abb299(68)=abb299(124)*spbk3k2
      abb299(82)=abb299(68)*abb299(9)
      abb299(82)=abb299(82)+abb299(61)
      abb299(108)=abb299(82)*spak4l5
      abb299(129)=-spbl6l5*abb299(108)
      abb299(132)=abb299(105)*abb299(50)
      abb299(134)=abb299(124)*abb299(105)
      abb299(142)=-abb299(9)*abb299(134)
      abb299(142)=-abb299(132)+abb299(142)
      abb299(142)=spbl6k1*abb299(142)
      abb299(58)=-spak1l5*spbl5k3*abb299(58)*abb299(55)
      abb299(29)=abb299(58)+abb299(142)+abb299(129)+abb299(37)+abb299(43)+abb29&
      &9(107)+abb299(29)+abb299(86)+abb299(56)
      abb299(29)=16.0_ki*abb299(29)
      abb299(37)=abb299(106)*spak1k4
      abb299(43)=32.0_ki*abb299(37)
      abb299(56)=abb299(6)**2
      abb299(10)=spbl5k3*abb299(56)*abb299(10)
      abb299(58)=-abb299(9)*spak1k4*abb299(115)*abb299(10)
      abb299(58)=-abb299(37)+abb299(58)
      abb299(58)=32.0_ki*abb299(58)
      abb299(86)=-abb299(110)+2.0_ki*abb299(131)
      abb299(86)=abb299(86)*abb299(22)
      abb299(107)=-2.0_ki*abb299(133)+abb299(112)
      abb299(107)=c4*abb299(107)
      abb299(38)=-2.0_ki*abb299(38)+abb299(143)
      abb299(38)=c2*abb299(38)
      abb299(78)=-spak2k4*abb299(78)
      abb299(78)=abb299(94)+abb299(78)
      abb299(78)=spbl6k2*abb299(78)
      abb299(38)=abb299(78)+abb299(38)+abb299(107)+abb299(86)
      abb299(38)=spbk3k2*abb299(38)
      abb299(28)=-abb299(101)*abb299(28)
      abb299(62)=-abb299(65)*abb299(62)
      abb299(65)=-spak1l5*spbl6k2*abb299(62)
      abb299(11)=abb299(109)-abb299(11)
      abb299(11)=abb299(11)*abb299(53)
      abb299(78)=abb299(109)*abb299(3)
      abb299(78)=abb299(78)-abb299(117)
      abb299(78)=-abb299(78)*abb299(22)
      abb299(11)=abb299(78)+abb299(11)
      abb299(11)=abb299(11)*abb299(73)
      abb299(11)=abb299(65)+abb299(11)
      abb299(11)=spbl5k3*abb299(11)
      abb299(65)=spak2l6*abb299(137)
      abb299(62)=spak1l6*abb299(62)*abb299(74)
      abb299(73)=spbk3k1*spak1k4*abb299(46)
      abb299(52)=spak1k7*abb299(52)
      abb299(11)=abb299(73)+abb299(62)+abb299(65)+abb299(52)+abb299(38)+abb299(&
      &28)+abb299(11)-abb299(16)
      abb299(11)=8.0_ki*abb299(11)
      abb299(16)=16.0_ki*abb299(37)
      abb299(26)=abb299(26)*spbk3k2
      abb299(17)=abb299(17)*abb299(26)
      abb299(28)=abb299(61)*abb299(69)
      abb299(37)=abb299(132)*spbk7k1
      abb299(38)=abb299(85)*abb299(34)
      abb299(40)=abb299(40)*spbk7k2
      abb299(28)=-abb299(17)-abb299(40)+abb299(37)+abb299(28)-abb299(38)
      abb299(37)=es12*spak1k4*abb299(7)*abb299(79)
      abb299(38)=abb299(34)*abb299(103)
      abb299(37)=abb299(38)+abb299(37)+abb299(28)
      abb299(37)=8.0_ki*abb299(37)
      abb299(38)=spbl6l5*spak4l5
      abb299(40)=spbl6k1*spak1k4
      abb299(40)=abb299(40)+abb299(38)
      abb299(34)=abb299(34)*abb299(40)
      abb299(27)=abb299(57)-abb299(76)+abb299(89)+abb299(27)+abb299(34)
      abb299(27)=8.0_ki*abb299(27)
      abb299(20)=abb299(74)*abb299(20)
      abb299(34)=-abb299(104)*abb299(70)
      abb299(38)=-abb299(98)*abb299(38)
      abb299(40)=-spbl6k1*abb299(100)
      abb299(39)=-spbl6k3*abb299(39)
      abb299(20)=abb299(40)+abb299(38)+abb299(34)+abb299(39)+abb299(20)
      abb299(20)=8.0_ki*abb299(20)
      abb299(34)=16.0_ki*abb299(61)
      abb299(38)=16.0_ki*abb299(82)
      abb299(39)=-8.0_ki*abb299(61)
      abb299(40)=2.0_ki*abb299(47)
      abb299(52)=abb299(40)*abb299(15)
      abb299(57)=abb299(123)*abb299(15)
      abb299(52)=abb299(52)+abb299(57)
      abb299(52)=abb299(52)*abb299(22)
      abb299(62)=abb299(40)*abb299(5)
      abb299(65)=abb299(123)*abb299(5)
      abb299(62)=abb299(62)+abb299(65)
      abb299(62)=abb299(62)*c4
      abb299(40)=abb299(40)*abb299(96)
      abb299(33)=abb299(65)*abb299(33)
      abb299(40)=abb299(40)+abb299(33)
      abb299(40)=abb299(40)*c2
      abb299(40)=-abb299(52)+abb299(62)+abb299(40)+abb299(46)
      abb299(40)=abb299(40)*abb299(63)
      abb299(52)=spak1l6*spbk7l6*abb299(138)
      abb299(49)=abb299(52)+abb299(49)
      abb299(49)=spbl6k2*abb299(49)
      abb299(52)=-abb299(113)*abb299(63)
      abb299(52)=-abb299(141)+abb299(52)
      abb299(52)=spbk7l5*abb299(52)
      abb299(19)=-abb299(120)*abb299(19)
      abb299(19)=abb299(19)+abb299(52)
      abb299(19)=spak1k7*abb299(19)
      abb299(51)=spbl6k2*abb299(51)
      abb299(36)=abb299(51)+abb299(36)
      abb299(36)=spbl5k2*abb299(36)
      abb299(51)=-spak1l6*abb299(141)
      abb299(52)=spak1k7*abb299(90)
      abb299(51)=abb299(52)+abb299(51)
      abb299(51)=spbl6l5*abb299(51)
      abb299(19)=abb299(51)+abb299(36)+abb299(40)+abb299(19)+abb299(49)
      abb299(19)=8.0_ki*abb299(19)
      abb299(36)=abb299(104)*spbl5k2
      abb299(40)=-16.0_ki*abb299(36)
      abb299(49)=16.0_ki*abb299(46)
      abb299(15)=abb299(47)*abb299(15)
      abb299(15)=abb299(15)+abb299(57)
      abb299(15)=abb299(15)*abb299(22)
      abb299(22)=spak1k7*spbk7l5
      abb299(51)=spbl6l5*spak1l6
      abb299(22)=abb299(51)+2.0_ki*abb299(22)
      abb299(22)=abb299(113)*abb299(22)
      abb299(51)=-abb299(5)*abb299(47)
      abb299(51)=-abb299(65)+abb299(51)
      abb299(51)=c4*abb299(51)
      abb299(47)=-abb299(47)*abb299(96)
      abb299(33)=-abb299(33)+abb299(47)
      abb299(33)=c2*abb299(33)
      abb299(15)=-abb299(46)+abb299(33)+abb299(51)+abb299(22)+abb299(15)
      abb299(15)=16.0_ki*abb299(15)
      abb299(22)=2.0_ki*abb299(46)-abb299(36)
      abb299(22)=8.0_ki*abb299(22)
      abb299(33)=abb299(50)*spbk7k2
      abb299(36)=16.0_ki*abb299(33)
      abb299(46)=-abb299(119)-2.0_ki*abb299(121)
      abb299(46)=8.0_ki*abb299(46)
      abb299(47)=8.0_ki*spbl6l5
      abb299(47)=-abb299(104)*abb299(47)
      abb299(42)=abb299(42)+abb299(98)
      abb299(50)=16.0_ki*abb299(42)
      abb299(51)=spbl6k3*abb299(124)
      abb299(10)=-abb299(12)*abb299(10)
      abb299(10)=abb299(51)+abb299(10)
      abb299(10)=abb299(9)*abb299(10)
      abb299(10)=abb299(10)+abb299(42)
      abb299(10)=16.0_ki*abb299(10)
      abb299(12)=-8.0_ki*abb299(42)
      abb299(42)=abb299(113)*abb299(18)
      abb299(51)=-abb299(55)*abb299(59)
      abb299(52)=-spbk3k2*abb299(51)
      abb299(57)=abb299(85)*abb299(106)
      abb299(42)=abb299(57)+abb299(52)+abb299(42)
      abb299(42)=8.0_ki*spak1k7*abb299(42)
      abb299(52)=8.0_ki*abb299(113)
      abb299(57)=spbl5k2*spak1k7*abb299(52)
      abb299(17)=abb299(17)*abb299(63)
      abb299(59)=-abb299(71)*abb299(26)
      abb299(61)=-abb299(61)*abb299(63)
      abb299(62)=spbk3k2*abb299(81)
      abb299(61)=abb299(62)+abb299(61)
      abb299(61)=abb299(61)*abb299(69)
      abb299(62)=-abb299(132)*abb299(63)
      abb299(65)=abb299(81)*abb299(105)
      abb299(62)=abb299(65)+abb299(62)
      abb299(62)=spbk7k1*abb299(62)
      abb299(25)=abb299(25)*abb299(26)
      abb299(26)=-abb299(69)*abb299(68)
      abb299(65)=-spbk7k1*abb299(134)
      abb299(25)=abb299(65)+abb299(26)+abb299(25)
      abb299(25)=abb299(9)*abb299(63)*abb299(25)
      abb299(26)=spak4k7*spbk7k2
      abb299(26)=abb299(26)+abb299(85)
      abb299(21)=abb299(21)*abb299(26)
      abb299(17)=abb299(25)+abb299(62)+abb299(61)+abb299(59)+abb299(17)+abb299(&
      &21)
      abb299(17)=8.0_ki*abb299(17)
      abb299(21)=-16.0_ki*abb299(28)
      abb299(25)=-8.0_ki*abb299(28)
      abb299(28)=-spbk7k2*abb299(99)
      abb299(59)=-abb299(33)*abb299(63)
      abb299(28)=abb299(59)+abb299(28)
      abb299(28)=8.0_ki*abb299(28)
      abb299(33)=-8.0_ki*abb299(33)
      abb299(55)=abb299(92)*abb299(55)*abb299(9)
      abb299(55)=abb299(75)+abb299(55)
      abb299(55)=abb299(105)*es12*abb299(55)
      abb299(59)=-spbl5k2*abb299(108)
      abb299(55)=abb299(59)+abb299(55)
      abb299(55)=8.0_ki*abb299(55)
      abb299(35)=8.0_ki*abb299(35)
      abb299(59)=-spak4l5*spbk3k2*abb299(35)
      abb299(26)=-abb299(26)*abb299(35)
      abb299(35)=-abb299(105)*abb299(35)
      abb299(18)=-abb299(140)*abb299(18)
      abb299(61)=spbk3k2*abb299(139)
      abb299(62)=-abb299(85)*abb299(84)
      abb299(18)=abb299(62)+abb299(61)+abb299(18)
      abb299(18)=8.0_ki*abb299(18)
      abb299(61)=8.0_ki*abb299(140)
      abb299(62)=-spbl5k2*abb299(61)
      abb299(54)=abb299(54)*abb299(116)
      abb299(63)=-abb299(118)*abb299(66)*spak2k4
      abb299(54)=abb299(63)+abb299(54)
      abb299(48)=abb299(48)*abb299(54)
      abb299(54)=-spak2k4*abb299(141)
      abb299(48)=abb299(54)+abb299(48)
      abb299(48)=spbl5k3*abb299(48)
      abb299(54)=spbl6k3*abb299(139)
      abb299(63)=-abb299(140)*abb299(70)
      abb299(65)=spak4k7*spbk7l6*abb299(84)
      abb299(48)=abb299(65)+abb299(63)+abb299(54)+abb299(48)
      abb299(48)=8.0_ki*abb299(48)
      abb299(53)=abb299(135)*abb299(53)
      abb299(53)=abb299(53)-abb299(136)
      abb299(53)=abb299(9)*abb299(56)*abb299(53)
      abb299(30)=abb299(30)+abb299(53)
      abb299(30)=16.0_ki*spbl5k3*abb299(30)
      abb299(53)=-spbl6l5*abb299(61)
      abb299(54)=8.0_ki*abb299(106)
      abb299(56)=spak4k7*abb299(54)
      abb299(54)=spak4l6*abb299(54)
      abb299(61)=spbl5k1*abb299(130)
      abb299(51)=abb299(61)-abb299(51)
      abb299(51)=8.0_ki*abb299(51)
      R2d299=0.0_ki
      rat2 = rat2 + R2d299
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='299' value='", &
          & R2d299, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd299h3
