module     p0_dbaru_epnebbbarg_abbrevd81h3
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(108), public :: abb81
   complex(ki), public :: R2d81
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
      abb81(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb81(2)=NC**(-1)
      abb81(3)=sqrt2**(-1)
      abb81(4)=es56**(-1)
      abb81(5)=spak2l5**(-1)
      abb81(6)=spak2k7**(-1)
      abb81(7)=spak2l6**(-1)
      abb81(8)=c4*abb81(2)**2
      abb81(9)=c3*abb81(2)
      abb81(10)=c2+abb81(8)-abb81(9)
      abb81(11)=TR*gW
      abb81(11)=CVDU*i_*mB*abb81(4)*abb81(3)*abb81(1)*abb81(11)**2
      abb81(12)=abb81(11)*spak1k2*abb81(6)
      abb81(13)=abb81(12)*abb81(7)
      abb81(14)=abb81(13)*abb81(10)
      abb81(15)=abb81(14)*spbl5k2
      abb81(12)=abb81(12)*abb81(5)
      abb81(16)=abb81(12)*abb81(10)
      abb81(17)=abb81(16)*spbl6k2
      abb81(15)=abb81(15)+abb81(17)
      abb81(17)=spbk4k3*spbk7k2
      abb81(18)=spak2k4**2
      abb81(19)=abb81(17)*abb81(15)*abb81(18)
      abb81(20)=16.0_ki*abb81(19)
      abb81(8)=-abb81(9)+c2+abb81(8)
      abb81(8)=spbk7k3*abb81(8)
      abb81(9)=-abb81(13)*abb81(8)
      abb81(13)=spbl5k2*spak2k4
      abb81(21)=abb81(13)*abb81(9)
      abb81(12)=-abb81(12)*abb81(8)
      abb81(22)=spbl6k2*spak2k4
      abb81(23)=abb81(22)*abb81(12)
      abb81(21)=abb81(21)+abb81(23)
      abb81(23)=es712-es71
      abb81(21)=abb81(23)*abb81(21)
      abb81(24)=abb81(9)*es12
      abb81(25)=abb81(24)*abb81(13)
      abb81(26)=abb81(12)*es12
      abb81(27)=abb81(26)*abb81(22)
      abb81(21)=-abb81(21)+abb81(25)+abb81(27)
      abb81(21)=16.0_ki*abb81(21)
      abb81(25)=spbk7l5*spak4k7
      abb81(27)=abb81(25)*abb81(9)
      abb81(28)=spbk7l6*spak4k7
      abb81(29)=abb81(28)*abb81(12)
      abb81(27)=abb81(27)+abb81(29)
      abb81(29)=spbl5k3*spak3k4
      abb81(30)=abb81(29)*abb81(9)
      abb81(31)=spbl6k3*spak3k4
      abb81(32)=abb81(31)*abb81(12)
      abb81(30)=abb81(27)+abb81(30)+abb81(32)
      abb81(30)=-abb81(30)*abb81(23)
      abb81(32)=es12*abb81(27)
      abb81(33)=abb81(24)*abb81(29)
      abb81(34)=abb81(26)*abb81(31)
      abb81(30)=abb81(30)+abb81(34)+abb81(32)+abb81(33)
      abb81(32)=16.0_ki*abb81(30)
      abb81(33)=abb81(11)*abb81(7)
      abb81(34)=abb81(33)*abb81(6)
      abb81(35)=-abb81(34)*abb81(10)
      abb81(36)=spbk7l5*spak2k4
      abb81(37)=abb81(36)*abb81(35)
      abb81(11)=abb81(11)*abb81(5)
      abb81(38)=abb81(11)*abb81(6)
      abb81(39)=abb81(38)*abb81(10)
      abb81(40)=spbk7l6*spak2k4
      abb81(41)=abb81(40)*abb81(39)
      abb81(37)=abb81(37)-abb81(41)
      abb81(41)=spbk4k3*spak1k4
      abb81(37)=abb81(37)*abb81(41)
      abb81(34)=abb81(34)*abb81(8)
      abb81(42)=abb81(36)*abb81(34)
      abb81(38)=-abb81(38)*abb81(8)
      abb81(43)=abb81(40)*abb81(38)
      abb81(42)=abb81(42)-abb81(43)
      abb81(42)=abb81(42)*spak1k7
      abb81(43)=-abb81(11)*abb81(8)
      abb81(44)=abb81(43)*spbk7l6
      abb81(45)=-abb81(33)*abb81(8)
      abb81(46)=abb81(45)*spbk7l5
      abb81(44)=abb81(44)+abb81(46)
      abb81(46)=abb81(44)*spak1k4
      abb81(47)=abb81(16)*spak2k4
      abb81(48)=abb81(47)*spbl6k3
      abb81(49)=abb81(14)*spbl5k3
      abb81(50)=abb81(49)*spak2k4
      abb81(48)=abb81(48)+abb81(50)
      abb81(50)=spbk7k2*abb81(48)
      abb81(37)=-abb81(46)+abb81(50)+abb81(37)-abb81(42)
      abb81(42)=-32.0_ki*abb81(37)
      abb81(46)=32.0_ki*spak1k4
      abb81(51)=abb81(44)*abb81(46)
      abb81(52)=-32.0_ki*abb81(50)
      abb81(19)=-abb81(19)+abb81(30)
      abb81(19)=8.0_ki*abb81(19)
      abb81(30)=16.0_ki*abb81(50)
      abb81(37)=16.0_ki*abb81(37)
      abb81(50)=-8.0_ki*abb81(50)
      abb81(36)=abb81(36)*abb81(9)
      abb81(40)=abb81(40)*abb81(12)
      abb81(36)=abb81(36)+abb81(40)
      abb81(40)=16.0_ki*abb81(36)
      abb81(36)=-8.0_ki*abb81(36)
      abb81(53)=abb81(12)*spbl6k2
      abb81(54)=abb81(9)*spbl5k2
      abb81(53)=abb81(53)+abb81(54)
      abb81(54)=abb81(23)*abb81(53)
      abb81(55)=-spbl6k2*abb81(26)
      abb81(56)=-spbl5k2*abb81(24)
      abb81(55)=abb81(55)+abb81(56)+abb81(54)
      abb81(55)=spak2k3*abb81(55)
      abb81(56)=abb81(13)*abb81(14)
      abb81(57)=abb81(22)*abb81(16)
      abb81(56)=abb81(56)+abb81(57)
      abb81(57)=abb81(23)-es12
      abb81(58)=-spbk7k4*abb81(56)*abb81(57)
      abb81(55)=abb81(58)+abb81(55)
      abb81(55)=8.0_ki*abb81(55)
      abb81(58)=abb81(16)*spbk7l6
      abb81(59)=abb81(14)*spbk7l5
      abb81(58)=abb81(58)+abb81(59)
      abb81(60)=-abb81(58)*abb81(57)
      abb81(61)=abb81(10)*abb81(11)
      abb81(62)=-abb81(61)*spbk7l6
      abb81(63)=abb81(33)*abb81(10)
      abb81(64)=abb81(63)*spbk7l5
      abb81(62)=abb81(62)-abb81(64)
      abb81(64)=-spbk7k4*spak1k4*abb81(62)
      abb81(44)=-spak1k3*abb81(44)
      abb81(44)=abb81(44)+abb81(64)-abb81(60)
      abb81(44)=16.0_ki*abb81(44)
      abb81(64)=-16.0_ki*abb81(60)
      abb81(60)=8.0_ki*abb81(60)
      abb81(65)=abb81(47)*spbk7l6
      abb81(59)=abb81(59)*spak2k4
      abb81(59)=abb81(65)+abb81(59)
      abb81(59)=abb81(59)*spbk4k3
      abb81(65)=abb81(33)*spak1k2
      abb81(66)=-abb81(65)*abb81(8)
      abb81(67)=abb81(66)*spbk7l5
      abb81(68)=abb81(11)*spak1k2
      abb81(8)=-abb81(68)*abb81(8)
      abb81(69)=abb81(8)*spbk7l6
      abb81(67)=abb81(67)+abb81(69)
      abb81(59)=abb81(59)+abb81(67)
      abb81(69)=-16.0_ki*abb81(59)
      abb81(70)=16.0_ki*abb81(67)
      abb81(59)=8.0_ki*abb81(59)
      abb81(65)=spbk7l5*abb81(65)
      abb81(68)=spbk7l6*abb81(68)
      abb81(65)=abb81(65)+abb81(68)
      abb81(65)=abb81(10)*abb81(65)
      abb81(68)=-8.0_ki*spbk7k4*abb81(65)
      abb81(67)=8.0_ki*abb81(67)
      abb81(17)=abb81(17)*abb81(56)
      abb81(17)=abb81(17)+abb81(54)
      abb81(17)=spak4k7*abb81(17)
      abb81(54)=es12*spak4k7
      abb81(53)=-abb81(54)*abb81(53)
      abb81(17)=abb81(53)+abb81(17)
      abb81(17)=8.0_ki*abb81(17)
      abb81(53)=16.0_ki*spbk3k2
      abb81(71)=abb81(56)*abb81(53)
      abb81(72)=abb81(16)*spbl6k3
      abb81(73)=spbk7k2*spak4k7
      abb81(74)=spbk3k2*spak3k4
      abb81(75)=abb81(74)+abb81(73)
      abb81(75)=abb81(75)*abb81(72)
      abb81(76)=abb81(74)*abb81(14)
      abb81(77)=abb81(14)*spbk7k2
      abb81(78)=abb81(77)*spak4k7
      abb81(76)=abb81(76)+abb81(78)
      abb81(76)=abb81(76)*spbl5k3
      abb81(75)=abb81(75)+abb81(76)
      abb81(76)=abb81(25)*abb81(14)
      abb81(78)=abb81(28)*abb81(16)
      abb81(76)=abb81(76)+abb81(78)
      abb81(78)=abb81(76)*spbk3k2
      abb81(78)=abb81(78)+abb81(75)
      abb81(79)=abb81(39)*abb81(28)
      abb81(80)=-abb81(35)*abb81(25)
      abb81(79)=abb81(79)+abb81(80)
      abb81(41)=abb81(79)*abb81(41)
      abb81(79)=-abb81(38)*abb81(28)
      abb81(80)=abb81(34)*abb81(25)
      abb81(79)=abb81(79)+abb81(80)
      abb81(79)=spak1k7*abb81(79)
      abb81(41)=abb81(79)+abb81(41)-abb81(78)
      abb81(41)=16.0_ki*abb81(41)
      abb81(79)=abb81(35)*spbl5k3
      abb81(80)=abb81(39)*spbl6k3
      abb81(79)=abb81(79)-abb81(80)
      abb81(80)=abb81(79)*abb81(46)
      abb81(78)=-16.0_ki*abb81(78)
      abb81(56)=-abb81(56)+abb81(76)
      abb81(56)=spbk3k2*abb81(56)
      abb81(56)=abb81(56)+abb81(75)
      abb81(56)=8.0_ki*abb81(56)
      abb81(75)=16.0_ki*spak1k4
      abb81(81)=-abb81(79)*abb81(75)
      abb81(27)=8.0_ki*abb81(27)
      abb81(82)=8.0_ki*abb81(15)
      abb81(83)=es234-es34+abb81(57)
      abb81(83)=abb81(83)*abb81(82)
      abb81(84)=spbl6k4*abb81(39)
      abb81(85)=-spbl5k4*abb81(35)
      abb81(84)=abb81(85)+abb81(84)
      abb81(84)=spak1k4*abb81(84)
      abb81(85)=-spbk7l6*abb81(39)
      abb81(86)=spbk7l5*abb81(35)
      abb81(85)=abb81(85)+abb81(86)
      abb81(85)=spak1k7*abb81(85)
      abb81(86)=-spak1k3*abb81(79)
      abb81(84)=abb81(86)+abb81(85)+abb81(15)+abb81(84)
      abb81(84)=16.0_ki*abb81(84)
      abb81(15)=16.0_ki*abb81(15)
      abb81(58)=8.0_ki*abb81(58)
      abb81(85)=-8.0_ki*spbk4k3*abb81(76)
      abb81(72)=abb81(72)+abb81(49)
      abb81(86)=16.0_ki*abb81(72)
      abb81(87)=8.0_ki*abb81(72)
      abb81(88)=-spbl6k4*abb81(16)
      abb81(89)=-spbl5k4*abb81(14)
      abb81(88)=abb81(88)+abb81(89)
      abb81(88)=8.0_ki*abb81(88)
      abb81(73)=abb81(73)-abb81(74)
      abb81(89)=abb81(23)*abb81(73)
      abb81(90)=abb81(54)*spbk7k2
      abb81(89)=abb81(89)-abb81(90)
      abb81(90)=-abb81(12)*abb81(89)
      abb81(26)=-abb81(74)*abb81(26)
      abb81(26)=abb81(26)+abb81(90)
      abb81(26)=8.0_ki*abb81(26)
      abb81(47)=abb81(47)*spbk7k2
      abb81(90)=-abb81(47)*abb81(53)
      abb81(91)=abb81(38)*abb81(46)
      abb81(92)=8.0_ki*spbk3k2
      abb81(47)=abb81(47)*abb81(92)
      abb81(93)=abb81(75)*abb81(38)
      abb81(57)=8.0_ki*abb81(57)
      abb81(94)=-abb81(16)*spbk7k2*abb81(57)
      abb81(10)=abb81(10)*spbk7k3**2
      abb81(11)=abb81(11)*abb81(10)
      abb81(11)=8.0_ki*abb81(11)
      abb81(95)=-spak1k3*abb81(11)
      abb81(96)=-16.0_ki*abb81(12)
      abb81(12)=8.0_ki*abb81(12)
      abb81(11)=spak1k4*abb81(11)
      abb81(97)=spak3k4*spbk3k2**2
      abb81(97)=8.0_ki*abb81(97)
      abb81(98)=-abb81(16)*abb81(97)
      abb81(99)=16.0_ki*spak1k7
      abb81(100)=abb81(38)*abb81(99)
      abb81(89)=-abb81(9)*abb81(89)
      abb81(24)=-abb81(74)*abb81(24)
      abb81(24)=abb81(24)+abb81(89)
      abb81(24)=8.0_ki*abb81(24)
      abb81(53)=abb81(53)*spak2k4
      abb81(89)=-abb81(77)*abb81(53)
      abb81(46)=-abb81(34)*abb81(46)
      abb81(101)=abb81(92)*spak2k4
      abb81(102)=abb81(77)*abb81(101)
      abb81(75)=abb81(75)*abb81(34)
      abb81(57)=-abb81(77)*abb81(57)
      abb81(10)=abb81(33)*abb81(10)
      abb81(10)=8.0_ki*abb81(10)
      abb81(33)=-spak1k3*abb81(10)
      abb81(77)=-16.0_ki*abb81(9)
      abb81(9)=8.0_ki*abb81(9)
      abb81(10)=spak1k4*abb81(10)
      abb81(97)=-abb81(14)*abb81(97)
      abb81(99)=-abb81(34)*abb81(99)
      abb81(28)=abb81(31)+abb81(28)
      abb81(103)=-abb81(43)*abb81(28)
      abb81(25)=abb81(29)+abb81(25)
      abb81(29)=-abb81(45)*abb81(25)
      abb81(29)=abb81(29)+abb81(103)
      abb81(29)=8.0_ki*es12*abb81(29)
      abb81(103)=abb81(35)*spbl5k2
      abb81(104)=abb81(39)*spbl6k2
      abb81(103)=abb81(103)-abb81(104)
      abb81(18)=spbk4k3*abb81(103)*abb81(18)
      abb81(104)=abb81(79)*es12*spak2k4
      abb81(18)=abb81(18)-abb81(104)
      abb81(104)=-16.0_ki*abb81(18)
      abb81(105)=abb81(43)*abb81(22)
      abb81(106)=abb81(45)*abb81(13)
      abb81(105)=abb81(105)+abb81(106)
      abb81(105)=16.0_ki*abb81(105)
      abb81(18)=8.0_ki*abb81(18)
      abb81(62)=es12*abb81(62)
      abb81(106)=abb81(61)*abb81(22)
      abb81(107)=abb81(63)*abb81(13)
      abb81(106)=abb81(106)+abb81(107)
      abb81(106)=spbk7k4*abb81(106)
      abb81(107)=abb81(43)*spbl6k2
      abb81(108)=abb81(45)*spbl5k2
      abb81(107)=abb81(107)+abb81(108)
      abb81(108)=-spak2k3*abb81(107)
      abb81(62)=abb81(108)+abb81(106)+abb81(62)
      abb81(62)=8.0_ki*abb81(62)
      abb81(13)=abb81(35)*abb81(13)
      abb81(22)=abb81(39)*abb81(22)
      abb81(13)=abb81(13)-abb81(22)
      abb81(22)=-spbk4k3*abb81(13)
      abb81(22)=abb81(22)-abb81(107)
      abb81(22)=spak4k7*abb81(22)
      abb81(79)=abb81(54)*abb81(79)
      abb81(22)=abb81(79)+abb81(22)
      abb81(22)=8.0_ki*abb81(22)
      abb81(61)=-spbl6k2*abb81(61)
      abb81(63)=-spbl5k2*abb81(63)
      abb81(61)=abb81(61)+abb81(63)
      abb81(61)=8.0_ki*abb81(61)
      abb81(63)=abb81(23)*spak4k7
      abb81(54)=abb81(63)-abb81(54)
      abb81(38)=-abb81(38)*abb81(54)
      abb81(43)=-abb81(43)*abb81(74)
      abb81(38)=abb81(43)+abb81(38)
      abb81(38)=8.0_ki*abb81(38)
      abb81(43)=-abb81(39)*abb81(53)
      abb81(63)=abb81(39)*abb81(101)
      abb81(79)=-abb81(39)*abb81(23)
      abb81(106)=abb81(39)*es12
      abb81(79)=abb81(106)+abb81(79)
      abb81(79)=8.0_ki*abb81(79)
      abb81(92)=abb81(92)*spak4k7
      abb81(107)=-abb81(39)*abb81(92)
      abb81(34)=abb81(34)*abb81(54)
      abb81(45)=-abb81(45)*abb81(74)
      abb81(34)=abb81(45)+abb81(34)
      abb81(34)=8.0_ki*abb81(34)
      abb81(45)=abb81(35)*abb81(53)
      abb81(53)=-abb81(35)*abb81(101)
      abb81(23)=abb81(35)*abb81(23)
      abb81(54)=abb81(35)*es12
      abb81(23)=-abb81(54)+abb81(23)
      abb81(23)=8.0_ki*abb81(23)
      abb81(74)=abb81(35)*abb81(92)
      abb81(92)=8.0_ki*abb81(106)
      abb81(101)=-8.0_ki*abb81(54)
      abb81(108)=8.0_ki*abb81(13)
      abb81(106)=-abb81(106)*abb81(28)
      abb81(54)=abb81(54)*abb81(25)
      abb81(54)=abb81(54)+abb81(106)
      abb81(54)=8.0_ki*abb81(54)
      abb81(13)=16.0_ki*abb81(13)
      abb81(103)=8.0_ki*spak2k3*abb81(103)
      abb81(73)=8.0_ki*abb81(73)
      abb81(106)=abb81(39)*abb81(73)
      abb81(73)=-abb81(35)*abb81(73)
      abb81(25)=abb81(66)*abb81(25)
      abb81(8)=abb81(8)*abb81(28)
      abb81(8)=abb81(8)+abb81(25)
      abb81(25)=8.0_ki*spbk7k1
      abb81(8)=abb81(8)*abb81(25)
      abb81(28)=16.0_ki*spbk7k1*abb81(48)
      abb81(48)=-abb81(48)*abb81(25)
      abb81(25)=abb81(65)*abb81(25)
      abb81(31)=abb81(16)*abb81(31)
      abb81(49)=spak3k4*abb81(49)
      abb81(31)=abb81(49)+abb81(31)+abb81(76)
      abb81(31)=spbk3k1*abb81(31)
      abb81(49)=spbk7k1*spak4k7*abb81(72)
      abb81(31)=abb81(49)+abb81(31)
      abb81(31)=8.0_ki*abb81(31)
      abb81(16)=-spbl6k1*abb81(16)
      abb81(14)=-spbl5k1*abb81(14)
      abb81(14)=abb81(16)+abb81(14)
      abb81(14)=8.0_ki*abb81(14)
      abb81(16)=8.0_ki*abb81(39)
      abb81(35)=8.0_ki*abb81(35)
      R2d81=0.0_ki
      rat2 = rat2 + R2d81
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='81' value='", &
          & R2d81, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd81h3
