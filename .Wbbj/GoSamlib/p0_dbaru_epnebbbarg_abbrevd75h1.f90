module     p0_dbaru_epnebbbarg_abbrevd75h1
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(130), public :: abb75
   complex(ki), public :: R2d75
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
      abb75(1)=1.0_ki/(-mB**2+es67)
      abb75(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb75(3)=NC**(-1)
      abb75(4)=spak2l6**(-1)
      abb75(5)=spbl6k2**(-1)
      abb75(6)=sqrt(mB**2)
      abb75(7)=spak2l5**(-1)
      abb75(8)=spbl5k2**(-1)
      abb75(9)=c2*abb75(3)**2
      abb75(10)=TR*gW
      abb75(10)=abb75(10)**2*i_*CVDU*abb75(2)*abb75(1)
      abb75(11)=abb75(9)*abb75(10)*spal6e7
      abb75(12)=2.0_ki*abb75(3)
      abb75(13)=abb75(10)*c3
      abb75(14)=abb75(13)*spal6e7
      abb75(15)=abb75(12)*abb75(14)
      abb75(16)=abb75(14)*NC
      abb75(17)=-abb75(15)+abb75(16)+abb75(11)
      abb75(18)=-spbe7k2*abb75(17)
      abb75(19)=spbl5k2*mB
      abb75(20)=abb75(19)*spbk3k2
      abb75(21)=abb75(20)*abb75(18)
      abb75(22)=spbl5k2*spbk3k2
      abb75(23)=abb75(18)*abb75(22)
      abb75(24)=-abb75(6)*abb75(23)
      abb75(25)=abb75(13)*NC
      abb75(13)=abb75(13)*abb75(3)
      abb75(13)=-abb75(25)+2.0_ki*abb75(13)
      abb75(25)=spbe7k2*abb75(5)
      abb75(26)=abb75(25)*abb75(20)
      abb75(27)=-abb75(26)*abb75(13)
      abb75(28)=abb75(10)*abb75(5)
      abb75(29)=abb75(28)*spbe7k2
      abb75(30)=abb75(9)*spbk3k2
      abb75(31)=abb75(29)*abb75(30)
      abb75(32)=abb75(31)*abb75(19)
      abb75(27)=abb75(32)+abb75(27)
      abb75(32)=spbk7k2*spae7k7
      abb75(33)=abb75(27)*abb75(32)
      abb75(21)=abb75(33)+abb75(24)+abb75(21)
      abb75(24)=spak2k4*abb75(6)
      abb75(33)=abb75(24)*spak1k2
      abb75(21)=abb75(33)*abb75(21)
      abb75(34)=-spbk3k2*abb75(17)
      abb75(35)=abb75(34)*spak2k4
      abb75(36)=spbl5k2**2
      abb75(37)=abb75(36)*abb75(35)
      abb75(38)=-abb75(22)*abb75(17)
      abb75(39)=spbl5k3*spak3k4
      abb75(40)=abb75(38)*abb75(39)
      abb75(37)=abb75(37)-abb75(40)
      abb75(40)=spak1l6*spbe7l6
      abb75(41)=spak1k7*spbk7e7
      abb75(40)=abb75(40)-abb75(41)
      abb75(37)=-abb75(37)*abb75(40)
      abb75(41)=-abb75(36)*abb75(17)
      abb75(42)=mB**2
      abb75(43)=abb75(42)*spbk3k2
      abb75(44)=abb75(43)*abb75(25)
      abb75(45)=spak1k2*spak2k4
      abb75(46)=-abb75(45)*abb75(44)*abb75(41)
      abb75(15)=-abb75(16)+abb75(15)-abb75(11)
      abb75(15)=spbl5k2*abb75(15)
      abb75(16)=abb75(15)*abb75(44)
      abb75(47)=abb75(39)*spak1k2
      abb75(48)=abb75(16)*abb75(47)
      abb75(46)=abb75(46)+abb75(48)
      abb75(46)=abb75(4)*abb75(46)
      abb75(37)=abb75(46)+abb75(37)
      abb75(37)=spak2l5*abb75(37)
      abb75(46)=spbk7k3*spae7k7
      abb75(48)=-abb75(27)*abb75(46)
      abb75(26)=spbl6k3*abb75(26)*abb75(17)
      abb75(26)=abb75(26)+abb75(48)
      abb75(48)=spak1k2*spak3k4
      abb75(26)=abb75(48)*abb75(6)*abb75(26)
      abb75(49)=abb75(25)*mB
      abb75(50)=-abb75(49)*abb75(13)
      abb75(51)=spbk3k2*abb75(50)
      abb75(31)=abb75(31)*mB
      abb75(31)=abb75(31)+abb75(51)
      abb75(51)=-abb75(33)*abb75(36)*abb75(31)
      abb75(52)=abb75(39)*abb75(6)
      abb75(53)=spak1k2*abb75(27)*abb75(52)
      abb75(51)=abb75(51)+abb75(53)
      abb75(51)=spal5e7*abb75(51)
      abb75(53)=abb75(38)*abb75(48)
      abb75(54)=abb75(53)*spbe7k3
      abb75(55)=abb75(6)**2
      abb75(56)=abb75(55)*abb75(54)
      abb75(21)=abb75(51)+abb75(37)+abb75(56)+abb75(21)+abb75(26)
      abb75(21)=4.0_ki*abb75(21)
      abb75(26)=-abb75(5)*abb75(13)
      abb75(37)=abb75(9)*abb75(28)
      abb75(37)=abb75(26)+abb75(37)
      abb75(51)=spbk3k2**2
      abb75(56)=abb75(37)*abb75(51)*abb75(42)
      abb75(57)=spbl5k2*abb75(56)
      abb75(58)=abb75(19)*abb75(37)
      abb75(59)=abb75(58)*abb75(6)
      abb75(60)=abb75(51)*abb75(59)
      abb75(60)=abb75(60)-abb75(57)
      abb75(60)=abb75(60)*abb75(48)
      abb75(22)=-abb75(22)*abb75(13)
      abb75(10)=abb75(9)*abb75(10)
      abb75(61)=spbk3k2*abb75(10)
      abb75(62)=abb75(61)*spbl5k2
      abb75(22)=abb75(22)+abb75(62)
      abb75(62)=spbk7k2*abb75(45)
      abb75(63)=-spbk7k3*abb75(48)
      abb75(62)=abb75(62)+abb75(63)
      abb75(62)=spal6k7*abb75(22)*abb75(62)
      abb75(60)=abb75(60)+abb75(62)
      abb75(60)=8.0_ki*abb75(60)
      abb75(23)=abb75(23)*abb75(45)
      abb75(23)=abb75(23)-abb75(54)
      abb75(23)=8.0_ki*abb75(23)
      abb75(54)=abb75(34)*abb75(39)
      abb75(62)=abb75(38)*spak2k4
      abb75(54)=abb75(54)-abb75(62)
      abb75(54)=-abb75(54)*abb75(40)
      abb75(63)=abb75(16)*abb75(45)
      abb75(44)=-abb75(44)*abb75(17)
      abb75(47)=-abb75(44)*abb75(47)
      abb75(47)=abb75(63)+abb75(47)
      abb75(47)=abb75(4)*abb75(47)
      abb75(63)=-abb75(27)*abb75(24)
      abb75(64)=abb75(31)*abb75(52)
      abb75(63)=abb75(63)+abb75(64)
      abb75(63)=spak1e7*abb75(63)
      abb75(47)=abb75(47)+abb75(63)+abb75(54)
      abb75(47)=8.0_ki*abb75(47)
      abb75(54)=abb75(40)*abb75(15)
      abb75(63)=abb75(25)*abb75(42)
      abb75(64)=-abb75(63)*abb75(15)
      abb75(65)=abb75(4)*spak1k2
      abb75(66)=abb75(64)*abb75(65)
      abb75(54)=abb75(54)-abb75(66)
      abb75(66)=-spak4l5*spbl5k3*abb75(54)
      abb75(67)=-abb75(25)*abb75(13)
      abb75(9)=abb75(29)*abb75(9)
      abb75(68)=abb75(67)+abb75(9)
      abb75(69)=-abb75(19)*abb75(68)
      abb75(70)=abb75(69)*abb75(6)
      abb75(71)=abb75(70)*spak1k4
      abb75(72)=spbl5k3*abb75(71)*spal5e7
      abb75(66)=abb75(66)+abb75(72)
      abb75(72)=abb75(42)*abb75(7)
      abb75(73)=abb75(72)*spbk3k2
      abb75(67)=-abb75(73)*abb75(67)
      abb75(74)=abb75(30)*abb75(72)
      abb75(29)=abb75(74)*abb75(29)
      abb75(29)=abb75(67)-abb75(29)
      abb75(67)=2.0_ki*abb75(29)
      abb75(75)=abb75(67)*abb75(6)
      abb75(76)=mB**3
      abb75(77)=abb75(7)*spbk3k2
      abb75(78)=abb75(76)*abb75(77)
      abb75(68)=-abb75(78)*abb75(68)
      abb75(75)=abb75(75)+abb75(68)
      abb75(79)=abb75(24)*spak1e7
      abb75(80)=abb75(75)*abb75(79)
      abb75(81)=abb75(7)*mB
      abb75(82)=abb75(6)*abb75(81)
      abb75(82)=abb75(72)-abb75(82)
      abb75(82)=abb75(18)*abb75(82)
      abb75(83)=spbl5k3*spak2k4
      abb75(84)=-abb75(82)*abb75(83)
      abb75(85)=-abb75(81)*abb75(17)
      abb75(86)=abb75(85)*spbe7k3
      abb75(87)=-abb75(52)*abb75(86)
      abb75(84)=abb75(84)+abb75(87)
      abb75(84)=spak1l5*abb75(84)
      abb75(87)=abb75(72)*abb75(25)
      abb75(88)=-abb75(87)*abb75(13)
      abb75(89)=abb75(9)*abb75(72)
      abb75(88)=abb75(88)+abb75(89)
      abb75(89)=abb75(88)*spak1l5
      abb75(90)=abb75(39)*abb75(89)
      abb75(90)=-abb75(71)+abb75(90)
      abb75(90)=abb75(90)*abb75(46)
      abb75(91)=-abb75(25)*abb75(17)
      abb75(92)=abb75(91)*abb75(19)
      abb75(93)=abb75(6)*abb75(92)*spak1k4
      abb75(94)=abb75(87)*abb75(17)
      abb75(95)=-spak1l5*abb75(94)*abb75(39)
      abb75(95)=abb75(93)+abb75(95)
      abb75(95)=spbl6k3*abb75(95)
      abb75(96)=spak1k2*abb75(6)
      abb75(75)=abb75(75)*abb75(96)
      abb75(97)=spak1l5*abb75(70)*spbl5k3
      abb75(75)=abb75(75)-abb75(97)
      abb75(75)=spak4e7*abb75(75)
      abb75(98)=abb75(73)*abb75(17)
      abb75(99)=-abb75(98)*abb75(40)
      abb75(100)=mB**4
      abb75(101)=abb75(91)*abb75(100)*abb75(77)
      abb75(102)=abb75(101)*abb75(65)
      abb75(99)=abb75(102)+abb75(99)
      abb75(99)=abb75(39)*abb75(99)
      abb75(102)=spak1e7*abb75(68)*abb75(52)
      abb75(99)=abb75(102)+abb75(99)
      abb75(99)=abb75(8)*abb75(99)
      abb75(16)=spak2k4*abb75(16)*abb75(65)
      abb75(102)=abb75(65)*spak3k4
      abb75(103)=abb75(43)*abb75(5)
      abb75(104)=-spbe7k3*abb75(102)*abb75(103)*abb75(15)
      abb75(105)=spak1k4*spbe7k3
      abb75(106)=abb75(105)*abb75(15)
      abb75(107)=-abb75(55)*abb75(106)
      abb75(108)=abb75(89)*abb75(32)
      abb75(109)=-abb75(83)*abb75(108)
      abb75(16)=abb75(99)+abb75(75)+abb75(95)+abb75(90)+abb75(109)+abb75(84)+ab&
      &b75(80)+abb75(107)+abb75(16)+abb75(104)+abb75(66)
      abb75(16)=8.0_ki*abb75(16)
      abb75(20)=-abb75(20)*abb75(26)
      abb75(30)=abb75(30)*abb75(28)
      abb75(75)=abb75(30)*abb75(19)
      abb75(20)=abb75(20)-abb75(75)
      abb75(20)=abb75(20)*abb75(6)
      abb75(43)=abb75(37)*abb75(43)
      abb75(75)=spbl5k2*abb75(43)
      abb75(80)=abb75(20)+abb75(75)
      abb75(84)=abb75(13)-abb75(10)
      abb75(90)=-spbl5k2*abb75(84)
      abb75(95)=abb75(90)*spal6k7
      abb75(99)=abb75(95)*spbk7k3
      abb75(99)=abb75(99)+abb75(80)
      abb75(104)=-abb75(73)*abb75(26)
      abb75(28)=abb75(74)*abb75(28)
      abb75(28)=abb75(104)-abb75(28)
      abb75(74)=2.0_ki*abb75(28)
      abb75(104)=-es12+es712-es71
      abb75(104)=abb75(74)*abb75(104)
      abb75(107)=abb75(73)*abb75(13)
      abb75(109)=abb75(61)*abb75(72)
      abb75(107)=-abb75(109)+abb75(107)
      abb75(109)=2.0_ki*abb75(107)
      abb75(110)=-spak2l6*abb75(109)
      abb75(104)=abb75(110)+abb75(104)+abb75(99)
      abb75(104)=spak1k4*abb75(104)
      abb75(110)=spak1k7*spbk7k2
      abb75(111)=spak2k4*abb75(110)
      abb75(112)=spak4k7*spbk7k2*spak1k2
      abb75(111)=abb75(112)+abb75(111)
      abb75(111)=abb75(74)*abb75(111)
      abb75(112)=spak1l6*spak2k4
      abb75(113)=spak4l6*spak1k2
      abb75(112)=abb75(113)+abb75(112)
      abb75(109)=abb75(109)*abb75(112)
      abb75(104)=abb75(104)+abb75(109)+abb75(111)
      abb75(104)=16.0_ki*abb75(104)
      abb75(67)=spak1k2*abb75(67)*spak4e7
      abb75(109)=abb75(29)*spak1e7
      abb75(111)=abb75(109)*spak2k4
      abb75(67)=abb75(67)-abb75(106)+2.0_ki*abb75(111)
      abb75(67)=16.0_ki*abb75(67)
      abb75(112)=spbe7k2*abb75(100)*abb75(5)**2
      abb75(113)=-abb75(13)*abb75(112)*abb75(77)
      abb75(114)=abb75(112)*abb75(7)
      abb75(115)=abb75(114)*abb75(61)
      abb75(113)=abb75(113)+abb75(115)
      abb75(115)=abb75(113)*spak1e7
      abb75(116)=abb75(4)*spak2k4
      abb75(117)=abb75(115)*abb75(116)
      abb75(118)=abb75(113)*abb75(65)
      abb75(119)=spak4e7*abb75(118)
      abb75(119)=abb75(117)+abb75(119)
      abb75(120)=abb75(42)*abb75(5)
      abb75(121)=abb75(15)*abb75(120)
      abb75(122)=abb75(4)*abb75(121)*abb75(105)
      abb75(119)=abb75(122)+2.0_ki*abb75(119)
      abb75(119)=16.0_ki*abb75(119)
      abb75(77)=abb75(77)*mB
      abb75(123)=-abb75(77)*abb75(17)
      abb75(124)=abb75(123)*abb75(6)
      abb75(98)=abb75(124)+abb75(98)
      abb75(98)=-abb75(98)*abb75(40)
      abb75(78)=abb75(91)*abb75(78)
      abb75(124)=-abb75(6)*abb75(78)
      abb75(101)=abb75(124)+abb75(101)
      abb75(101)=abb75(101)*abb75(65)
      abb75(98)=abb75(101)+abb75(98)
      abb75(98)=spak2k4*abb75(98)
      abb75(101)=abb75(111)-abb75(106)
      abb75(106)=-abb75(55)*abb75(101)
      abb75(111)=spak1l5*spak2k4
      abb75(124)=abb75(111)*spbl5k2*abb75(88)
      abb75(71)=abb75(71)+abb75(124)
      abb75(71)=abb75(71)*abb75(46)
      abb75(87)=abb75(111)*abb75(87)*abb75(15)
      abb75(87)=-abb75(93)+abb75(87)
      abb75(87)=spbl6k3*abb75(87)
      abb75(68)=-abb75(68)*abb75(96)
      abb75(68)=abb75(68)+abb75(97)
      abb75(68)=spak4e7*abb75(68)
      abb75(93)=abb75(17)*spbe7k3
      abb75(96)=spak1l5*abb75(24)*abb75(19)*abb75(7)*abb75(93)
      abb75(66)=abb75(68)+abb75(87)+abb75(71)+abb75(96)+abb75(98)+abb75(106)-ab&
      &b75(66)
      abb75(66)=4.0_ki*abb75(66)
      abb75(68)=-abb75(77)*abb75(13)
      abb75(71)=abb75(61)*abb75(81)
      abb75(68)=abb75(68)+abb75(71)
      abb75(71)=abb75(68)*abb75(6)
      abb75(71)=abb75(71)+abb75(107)
      abb75(71)=abb75(71)*spak1l6
      abb75(87)=-abb75(28)*abb75(110)
      abb75(87)=abb75(87)-abb75(71)
      abb75(87)=spak2k4*abb75(87)
      abb75(96)=-spak1k4*abb75(99)
      abb75(87)=abb75(96)+abb75(87)
      abb75(87)=8.0_ki*abb75(87)
      abb75(96)=8.0_ki*abb75(101)
      abb75(97)=-abb75(122)-abb75(117)
      abb75(97)=8.0_ki*abb75(97)
      abb75(98)=-abb75(32)*abb75(45)
      abb75(99)=abb75(48)*abb75(46)
      abb75(98)=abb75(98)+abb75(99)
      abb75(22)=abb75(22)*abb75(98)
      abb75(53)=spbl6k3*abb75(53)
      abb75(57)=spak2e7*abb75(57)*abb75(102)
      abb75(45)=-spbl6k2*abb75(38)*abb75(45)
      abb75(22)=abb75(45)+abb75(57)+abb75(53)+abb75(22)
      abb75(22)=4.0_ki*abb75(22)
      abb75(45)=spak2e7*abb75(4)
      abb75(53)=abb75(45)*abb75(75)
      abb75(57)=spbl6k3*abb75(15)
      abb75(98)=abb75(46)*abb75(90)
      abb75(53)=abb75(53)+abb75(57)+abb75(98)
      abb75(53)=spak1k4*abb75(53)
      abb75(57)=-8.0_ki*abb75(53)
      abb75(79)=abb75(68)*abb75(79)
      abb75(53)=abb75(79)+abb75(53)
      abb75(53)=4.0_ki*abb75(53)
      abb75(27)=-abb75(27)*abb75(33)
      abb75(20)=-abb75(20)*abb75(48)*spbe7k3
      abb75(20)=abb75(27)+abb75(20)
      abb75(20)=4.0_ki*abb75(20)
      abb75(27)=spak2k4*abb75(40)
      abb75(33)=spak4k7*spbk7e7
      abb75(48)=spak4l6*spbe7l6
      abb75(33)=abb75(33)-abb75(48)
      abb75(48)=-spak1k2*abb75(33)
      abb75(79)=spak2l6*spbe7l6
      abb75(98)=spak2k7*spbk7e7
      abb75(79)=abb75(79)-abb75(98)
      abb75(98)=-spak1k4*abb75(79)
      abb75(27)=abb75(98)+abb75(48)+abb75(27)
      abb75(27)=abb75(74)*abb75(27)
      abb75(48)=abb75(59)*abb75(105)
      abb75(27)=-abb75(48)+abb75(27)
      abb75(27)=8.0_ki*abb75(27)
      abb75(74)=-abb75(28)*abb75(40)
      abb75(74)=abb75(118)+abb75(74)
      abb75(74)=spak2k4*abb75(74)
      abb75(48)=abb75(48)+abb75(74)
      abb75(48)=4.0_ki*abb75(48)
      abb75(74)=-abb75(17)*spak3k4*abb75(40)
      abb75(98)=-abb75(63)*abb75(17)
      abb75(99)=-abb75(98)*abb75(102)
      abb75(101)=abb75(9)*mB
      abb75(50)=abb75(101)+abb75(50)
      abb75(101)=spak3k4*abb75(6)
      abb75(105)=abb75(101)*spak1e7
      abb75(106)=abb75(50)*abb75(105)
      abb75(99)=abb75(99)+abb75(106)-abb75(74)
      abb75(99)=4.0_ki*abb75(99)*spbl5k3**2
      abb75(19)=-abb75(19)*abb75(18)
      abb75(106)=abb75(15)*spbe7k2
      abb75(107)=abb75(6)*abb75(106)
      abb75(36)=spal5e7*abb75(36)*abb75(50)
      abb75(19)=abb75(36)+abb75(107)+abb75(19)
      abb75(19)=abb75(6)*abb75(19)
      abb75(36)=spal5k7*spbk7e7
      abb75(107)=-spal5l6*spbe7l6
      abb75(36)=abb75(107)+abb75(36)
      abb75(36)=abb75(41)*abb75(36)
      abb75(107)=abb75(32)*abb75(70)
      abb75(19)=abb75(107)+abb75(36)+abb75(19)
      abb75(19)=spak1k2*abb75(19)
      abb75(36)=spak1l5*abb75(79)
      abb75(107)=spak2l5*abb75(65)*abb75(63)
      abb75(36)=abb75(107)+abb75(36)
      abb75(36)=abb75(41)*abb75(36)
      abb75(19)=abb75(19)+abb75(36)
      abb75(19)=4.0_ki*abb75(19)
      abb75(36)=8.0_ki*spak1k2
      abb75(41)=-spbk7k2*abb75(95)*abb75(36)
      abb75(36)=abb75(36)*abb75(106)
      abb75(95)=-spak1e7*abb75(70)
      abb75(54)=abb75(95)-abb75(54)
      abb75(54)=8.0_ki*abb75(54)
      abb75(63)=abb75(63)*spbl5k2
      abb75(25)=abb75(25)*abb75(7)
      abb75(95)=abb75(100)*abb75(25)
      abb75(63)=abb75(63)+abb75(95)
      abb75(12)=NC-abb75(12)
      abb75(12)=abb75(12)*abb75(14)*abb75(63)
      abb75(11)=abb75(63)*abb75(11)
      abb75(14)=abb75(76)*abb75(25)
      abb75(25)=-abb75(6)*abb75(14)*abb75(17)
      abb75(11)=abb75(25)+abb75(11)+abb75(12)
      abb75(11)=abb75(11)*abb75(65)
      abb75(12)=abb75(17)*abb75(72)
      abb75(25)=abb75(85)*abb75(6)
      abb75(12)=abb75(12)+abb75(25)
      abb75(12)=abb75(12)*abb75(40)
      abb75(63)=spbe7l5*abb75(25)
      abb75(100)=spbl6l5*abb75(94)
      abb75(63)=abb75(100)+abb75(63)
      abb75(63)=spak1l5*abb75(63)
      abb75(14)=abb75(13)*abb75(14)
      abb75(9)=abb75(7)*abb75(76)*abb75(9)
      abb75(9)=abb75(9)-abb75(14)
      abb75(14)=-abb75(6)*abb75(88)
      abb75(14)=abb75(14)+abb75(9)
      abb75(76)=spak1e7*abb75(6)
      abb75(14)=abb75(14)*abb75(76)
      abb75(100)=spbk7l5*spae7k7
      abb75(89)=-abb75(89)*abb75(100)
      abb75(11)=abb75(89)+abb75(11)+abb75(14)+abb75(63)+abb75(12)
      abb75(11)=8.0_ki*abb75(11)
      abb75(12)=abb75(13)*abb75(81)
      abb75(10)=abb75(10)*abb75(7)
      abb75(14)=abb75(10)*mB
      abb75(12)=abb75(12)-abb75(14)
      abb75(14)=-abb75(6)*abb75(12)
      abb75(63)=abb75(72)*abb75(13)
      abb75(81)=-abb75(42)*abb75(10)
      abb75(14)=abb75(14)+abb75(81)+abb75(63)
      abb75(14)=spak1l6*abb75(14)
      abb75(63)=abb75(37)*abb75(72)
      abb75(81)=-abb75(63)*abb75(110)
      abb75(14)=abb75(14)+abb75(81)
      abb75(14)=16.0_ki*abb75(14)
      abb75(81)=16.0_ki*spak1e7
      abb75(89)=abb75(81)*abb75(88)
      abb75(10)=abb75(10)*abb75(112)
      abb75(106)=abb75(13)*abb75(114)
      abb75(10)=abb75(10)-abb75(106)
      abb75(81)=abb75(4)*abb75(10)*abb75(81)
      abb75(106)=abb75(90)*abb75(32)
      abb75(107)=spbl6k2*abb75(15)
      abb75(106)=abb75(106)+abb75(107)
      abb75(107)=4.0_ki*spak1k2
      abb75(106)=abb75(106)*abb75(107)
      abb75(12)=8.0_ki*abb75(12)*abb75(76)
      abb75(76)=-abb75(70)*abb75(107)
      abb75(63)=-abb75(63)*abb75(40)
      abb75(10)=-abb75(10)*abb75(65)
      abb75(10)=abb75(10)+abb75(63)
      abb75(10)=8.0_ki*abb75(10)
      abb75(63)=-8.0_ki*abb75(25)
      abb75(107)=abb75(32)*spak2k4
      abb75(111)=abb75(46)*spak3k4
      abb75(112)=abb75(107)-abb75(111)
      abb75(114)=abb75(29)*abb75(112)
      abb75(77)=abb75(6)*abb75(77)
      abb75(77)=abb75(77)-abb75(73)
      abb75(77)=spak2k4*abb75(18)*abb75(77)
      abb75(117)=abb75(123)*abb75(101)
      abb75(118)=-spbe7k3*abb75(117)
      abb75(73)=abb75(91)*abb75(73)
      abb75(91)=abb75(73)*spbl6k3*spak3k4
      abb75(77)=abb75(91)+abb75(114)+abb75(77)+abb75(118)
      abb75(77)=spak1l5*abb75(77)
      abb75(72)=abb75(72)*abb75(74)
      abb75(9)=-abb75(105)*abb75(9)
      abb75(9)=abb75(9)+abb75(72)
      abb75(9)=abb75(51)*abb75(9)
      abb75(72)=-abb75(102)*abb75(95)*abb75(17)*abb75(51)
      abb75(9)=abb75(72)+abb75(9)
      abb75(9)=abb75(8)*abb75(9)
      abb75(9)=abb75(9)+abb75(77)
      abb75(9)=4.0_ki*abb75(9)
      abb75(72)=spak1l5*abb75(82)
      abb75(72)=abb75(72)+abb75(108)
      abb75(72)=4.0_ki*abb75(72)
      abb75(74)=-abb75(117)*abb75(40)
      abb75(65)=-abb75(78)*abb75(65)*abb75(101)
      abb75(77)=abb75(109)*spak3k4
      abb75(78)=-abb75(55)*abb75(77)
      abb75(65)=abb75(65)+abb75(78)+abb75(74)
      abb75(65)=4.0_ki*abb75(65)
      abb75(71)=-spak3k4*abb75(71)
      abb75(28)=abb75(28)*spak3k4
      abb75(74)=-abb75(110)*abb75(28)
      abb75(71)=abb75(71)+abb75(74)
      abb75(71)=8.0_ki*abb75(71)
      abb75(74)=8.0_ki*abb75(77)
      abb75(77)=abb75(4)*spak3k4
      abb75(78)=-8.0_ki*abb75(115)*abb75(77)
      abb75(68)=4.0_ki*abb75(68)*abb75(105)
      abb75(28)=-abb75(28)*abb75(40)
      abb75(40)=abb75(113)*abb75(102)
      abb75(28)=abb75(40)+abb75(28)
      abb75(28)=4.0_ki*abb75(28)
      abb75(40)=abb75(88)*spae7k7
      abb75(91)=8.0_ki*abb75(40)
      abb75(95)=-8.0_ki*abb75(94)
      abb75(102)=-abb75(31)*abb75(46)
      abb75(105)=-spbl6k3*abb75(49)*abb75(34)
      abb75(102)=abb75(105)+abb75(102)
      abb75(102)=abb75(101)*abb75(102)
      abb75(105)=spbk3k2*mB
      abb75(108)=abb75(105)*abb75(18)
      abb75(109)=abb75(18)*spbk3k2
      abb75(110)=-abb75(6)*abb75(109)
      abb75(108)=abb75(110)+abb75(108)
      abb75(108)=abb75(108)*abb75(24)
      abb75(34)=abb75(34)*spak3k4
      abb75(110)=abb75(34)*spbe7k3
      abb75(113)=abb75(55)*abb75(110)
      abb75(114)=abb75(31)*abb75(24)
      abb75(115)=abb75(32)*abb75(114)
      abb75(102)=abb75(115)+abb75(108)+abb75(113)+abb75(102)
      abb75(102)=4.0_ki*abb75(102)
      abb75(108)=abb75(37)*mB
      abb75(113)=abb75(108)*abb75(6)
      abb75(51)=abb75(51)*abb75(113)
      abb75(51)=abb75(51)-abb75(56)
      abb75(51)=spak3k4*abb75(51)
      abb75(13)=-spbk3k2*abb75(13)
      abb75(13)=abb75(13)+abb75(61)
      abb75(61)=spbk7k2*spak2k4
      abb75(115)=-spbk7k3*spak3k4
      abb75(61)=abb75(61)+abb75(115)
      abb75(61)=spal6k7*abb75(13)*abb75(61)
      abb75(51)=abb75(51)+abb75(61)
      abb75(51)=8.0_ki*abb75(51)
      abb75(61)=abb75(109)*spak2k4
      abb75(61)=abb75(61)-abb75(110)
      abb75(61)=8.0_ki*abb75(61)
      abb75(109)=abb75(44)*abb75(116)
      abb75(93)=abb75(77)*abb75(103)*abb75(93)
      abb75(93)=abb75(109)+abb75(93)
      abb75(93)=8.0_ki*abb75(93)
      abb75(13)=-abb75(13)*abb75(112)
      abb75(103)=spbl6k3*abb75(34)
      abb75(56)=spak3k4*abb75(56)*abb75(45)
      abb75(110)=-spbl6k2*abb75(35)
      abb75(13)=abb75(110)+abb75(56)+abb75(103)+abb75(13)
      abb75(13)=4.0_ki*abb75(13)
      abb75(30)=abb75(30)*mB
      abb75(26)=abb75(26)*abb75(105)
      abb75(26)=abb75(30)+abb75(26)
      abb75(30)=abb75(26)*abb75(101)*spbe7k3
      abb75(30)=-abb75(114)+abb75(30)
      abb75(30)=4.0_ki*abb75(30)
      abb75(56)=abb75(6)-mB
      abb75(56)=abb75(56)*abb75(18)
      abb75(103)=abb75(6)*abb75(56)
      abb75(105)=abb75(50)*abb75(6)
      abb75(110)=-abb75(32)*abb75(105)
      abb75(103)=abb75(103)+abb75(110)
      abb75(103)=4.0_ki*abb75(103)
      abb75(110)=abb75(84)*spal6k7
      abb75(112)=8.0_ki*spbk7k2*abb75(110)
      abb75(115)=8.0_ki*abb75(18)
      abb75(98)=abb75(98)*abb75(4)
      abb75(118)=-16.0_ki*abb75(98)
      abb75(122)=abb75(84)*abb75(32)
      abb75(124)=abb75(17)*spbl6k2
      abb75(122)=abb75(122)+abb75(124)
      abb75(124)=-4.0_ki*abb75(122)
      abb75(125)=8.0_ki*abb75(105)
      abb75(126)=4.0_ki*abb75(17)
      abb75(127)=abb75(126)*spbk7e7
      abb75(126)=abb75(126)*spbe7l6
      abb75(128)=4.0_ki*spak3k4
      abb75(38)=-abb75(38)*abb75(79)*abb75(128)
      abb75(33)=-abb75(15)*abb75(33)
      abb75(70)=abb75(70)*spak4e7
      abb75(33)=abb75(33)+abb75(70)
      abb75(70)=abb75(39)*abb75(98)
      abb75(86)=abb75(101)*abb75(86)
      abb75(111)=-abb75(88)*abb75(111)
      abb75(129)=abb75(94)*spbl6k3
      abb75(130)=spak3k4*abb75(129)
      abb75(70)=abb75(130)+abb75(111)+abb75(70)+abb75(86)+abb75(33)
      abb75(70)=8.0_ki*abb75(70)
      abb75(82)=-spak2k4*abb75(82)
      abb75(64)=-abb75(64)*abb75(116)
      abb75(86)=-abb75(88)*abb75(107)
      abb75(33)=abb75(86)+abb75(82)+abb75(64)-abb75(33)
      abb75(33)=4.0_ki*abb75(33)
      abb75(31)=-4.0_ki*abb75(31)*abb75(101)
      abb75(64)=abb75(69)*abb75(24)
      abb75(69)=abb75(50)*abb75(52)
      abb75(64)=abb75(64)-abb75(69)
      abb75(69)=4.0_ki*abb75(64)
      abb75(82)=4.0_ki*abb75(117)
      abb75(86)=4.0_ki*spbk7e7
      abb75(101)=-abb75(34)*abb75(86)
      abb75(107)=abb75(15)*spak2k4
      abb75(111)=abb75(17)*abb75(39)
      abb75(107)=abb75(107)-abb75(111)
      abb75(111)=-abb75(107)*abb75(86)
      abb75(116)=4.0_ki*spbe7l6
      abb75(34)=abb75(34)*abb75(116)
      abb75(117)=abb75(107)*abb75(116)
      abb75(29)=abb75(29)*spae7k7
      abb75(130)=abb75(128)*abb75(29)
      abb75(128)=-abb75(73)*abb75(128)
      abb75(44)=4.0_ki*abb75(44)
      abb75(44)=abb75(77)*abb75(44)
      abb75(32)=abb75(50)*abb75(32)
      abb75(32)=abb75(32)-abb75(56)
      abb75(32)=abb75(24)*spbl5k3*abb75(32)
      abb75(50)=abb75(107)*spbe7k3
      abb75(56)=abb75(55)*abb75(50)
      abb75(64)=abb75(64)*abb75(46)
      abb75(77)=-abb75(92)*abb75(24)
      abb75(49)=abb75(17)*abb75(49)
      abb75(92)=abb75(49)*abb75(52)
      abb75(77)=abb75(77)+abb75(92)
      abb75(77)=spbl6k3*abb75(77)
      abb75(62)=abb75(62)*abb75(79)
      abb75(32)=abb75(77)+abb75(64)+abb75(56)+abb75(62)+abb75(32)
      abb75(32)=4.0_ki*abb75(32)
      abb75(56)=-spak2k4*abb75(80)
      abb75(26)=abb75(6)*abb75(26)
      abb75(26)=abb75(26)-abb75(43)
      abb75(26)=abb75(26)*abb75(39)
      abb75(62)=abb75(84)*abb75(39)
      abb75(64)=abb75(90)*spak2k4
      abb75(62)=abb75(62)-abb75(64)
      abb75(64)=spbk7k3*abb75(62)
      abb75(77)=-abb75(83)*abb75(84)*spbk7k2
      abb75(64)=abb75(77)+abb75(64)
      abb75(64)=spal6k7*abb75(64)
      abb75(26)=abb75(64)+abb75(56)+abb75(26)
      abb75(26)=8.0_ki*abb75(26)
      abb75(18)=abb75(18)*abb75(83)
      abb75(18)=abb75(50)-abb75(18)
      abb75(18)=8.0_ki*abb75(18)
      abb75(50)=abb75(88)*abb75(46)
      abb75(50)=-abb75(129)+abb75(50)
      abb75(50)=spak2k4*abb75(50)
      abb75(56)=-spak2k4*abb75(121)
      abb75(64)=abb75(17)*abb75(120)
      abb75(77)=abb75(64)*abb75(39)
      abb75(56)=abb75(56)+abb75(77)
      abb75(56)=abb75(4)*abb75(56)
      abb75(77)=-abb75(85)*abb75(24)
      abb75(56)=abb75(77)+abb75(56)
      abb75(56)=spbe7k3*abb75(56)
      abb75(50)=abb75(56)+abb75(50)
      abb75(50)=8.0_ki*abb75(50)
      abb75(56)=abb75(83)*abb75(122)
      abb75(46)=-abb75(62)*abb75(46)
      abb75(62)=spbl6k3*abb75(107)
      abb75(75)=spak2k4*abb75(75)
      abb75(39)=abb75(43)*abb75(39)
      abb75(39)=abb75(75)+abb75(39)
      abb75(39)=abb75(39)*abb75(45)
      abb75(39)=abb75(39)+abb75(62)+abb75(46)+abb75(56)
      abb75(39)=4.0_ki*abb75(39)
      abb75(43)=4.0_ki*abb75(114)
      abb75(46)=abb75(58)*abb75(24)
      abb75(52)=abb75(108)*abb75(52)
      abb75(46)=abb75(46)+abb75(52)
      abb75(46)=4.0_ki*spbe7k3*abb75(46)
      abb75(24)=-4.0_ki*abb75(123)*abb75(24)
      abb75(52)=abb75(86)*abb75(35)
      abb75(56)=-abb75(83)*abb75(127)
      abb75(35)=-abb75(116)*abb75(35)
      abb75(58)=abb75(83)*abb75(126)
      abb75(15)=-abb75(15)*abb75(79)
      abb75(62)=abb75(17)*spbe7l5
      abb75(55)=abb75(55)*abb75(62)
      abb75(75)=abb75(105)*abb75(100)
      abb75(49)=-spbl6l5*abb75(6)*abb75(49)
      abb75(15)=abb75(49)+abb75(75)+abb75(55)+abb75(15)
      abb75(15)=4.0_ki*abb75(15)
      abb75(37)=abb75(42)*abb75(37)*spbl5k2
      abb75(42)=-spbk7l5*abb75(110)
      abb75(42)=abb75(42)-abb75(59)+abb75(37)
      abb75(42)=8.0_ki*abb75(42)
      abb75(49)=8.0_ki*abb75(62)
      abb75(55)=-8.0_ki*spbe7l5*abb75(4)*abb75(64)
      abb75(37)=-abb75(37)*abb75(45)
      abb75(45)=abb75(84)*abb75(100)
      abb75(17)=spbl6l5*abb75(17)
      abb75(17)=abb75(17)+abb75(37)+abb75(45)
      abb75(17)=4.0_ki*abb75(17)
      abb75(37)=-4.0_ki*abb75(105)
      abb75(45)=-4.0_ki*spbe7l5*abb75(113)
      abb75(25)=4.0_ki*abb75(25)
      abb75(59)=4.0_ki*spak2k4
      abb75(29)=-abb75(29)*abb75(59)
      abb75(40)=-4.0_ki*abb75(40)
      abb75(59)=abb75(73)*abb75(59)
      abb75(62)=4.0_ki*abb75(94)
      abb75(64)=-4.0_ki*abb75(109)
      abb75(73)=4.0_ki*abb75(98)
      R2d75=0.0_ki
      rat2 = rat2 + R2d75
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='75' value='", &
          & R2d75, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd75h1
