module     p0_dbaru_epnebbbarg_abbrevd315h3
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(100), public :: abb315
   complex(ki), public :: R2d315
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
      abb315(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb315(2)=sqrt(mB**2)
      abb315(3)=NC**(-1)
      abb315(4)=es234**(-1)
      abb315(5)=spak2l6**(-1)
      abb315(6)=spak2l5**(-1)
      abb315(7)=spbl6k2**(-1)
      abb315(8)=i_*CVDU
      abb315(9)=abb315(8)*abb315(1)
      abb315(10)=TR*gW
      abb315(10)=abb315(10)**2
      abb315(11)=abb315(10)*abb315(4)*abb315(9)
      abb315(12)=mB*abb315(3)
      abb315(13)=abb315(11)*abb315(12)
      abb315(14)=abb315(13)*c1
      abb315(15)=abb315(14)*abb315(6)
      abb315(16)=abb315(11)*abb315(6)
      abb315(17)=c2*abb315(3)**2
      abb315(18)=mB*abb315(17)
      abb315(19)=abb315(18)*abb315(16)
      abb315(13)=abb315(13)*c3
      abb315(20)=abb315(13)*abb315(6)
      abb315(15)=abb315(20)+abb315(15)-abb315(19)
      abb315(20)=-abb315(15)*spbk3k2
      abb315(21)=spbe7k3*spak3k4
      abb315(22)=abb315(20)*abb315(21)
      abb315(13)=abb315(13)+abb315(14)
      abb315(14)=spak2k4*spbk3k2
      abb315(23)=abb315(13)*abb315(14)*abb315(6)
      abb315(19)=abb315(19)*abb315(14)
      abb315(19)=abb315(23)-abb315(19)
      abb315(23)=abb315(19)*spbe7k2
      abb315(22)=abb315(23)+abb315(22)
      abb315(23)=abb315(2)**2
      abb315(24)=abb315(23)*spak1k2
      abb315(25)=-spak1e7*abb315(24)*abb315(22)
      abb315(26)=abb315(11)*spbk3k2
      abb315(27)=abb315(2)*abb315(3)
      abb315(28)=abb315(27)*abb315(26)
      abb315(29)=c1+c3
      abb315(30)=spbk7e7*abb315(29)
      abb315(31)=abb315(28)*abb315(30)
      abb315(32)=abb315(17)*abb315(2)
      abb315(33)=abb315(32)*abb315(26)
      abb315(34)=abb315(33)*spbk7e7
      abb315(31)=-abb315(34)+abb315(31)
      abb315(34)=spbl5k3*spak3k4
      abb315(35)=abb315(34)*spak1e7
      abb315(36)=-abb315(31)*abb315(35)
      abb315(37)=abb315(11)*spak2k4
      abb315(38)=abb315(37)*spbk3k2
      abb315(39)=abb315(32)*abb315(38)
      abb315(40)=abb315(39)*spbk7e7
      abb315(41)=abb315(38)*abb315(27)
      abb315(42)=abb315(30)*abb315(41)
      abb315(40)=abb315(40)-abb315(42)
      abb315(42)=spbl5k2*spak1e7
      abb315(43)=-abb315(40)*abb315(42)
      abb315(36)=abb315(36)+abb315(43)
      abb315(36)=spak1k7*abb315(36)
      abb315(25)=abb315(36)+abb315(25)
      abb315(25)=spbl6k1*abb315(25)
      abb315(36)=abb315(14)*abb315(13)
      abb315(43)=abb315(38)*abb315(18)
      abb315(36)=abb315(36)-abb315(43)
      abb315(36)=abb315(36)*spbl5k2
      abb315(43)=spbk3k2*abb315(13)
      abb315(44)=abb315(18)*abb315(26)
      abb315(43)=abb315(43)-abb315(44)
      abb315(43)=abb315(43)*abb315(34)
      abb315(36)=abb315(36)-abb315(43)
      abb315(43)=spbe7l6*spak1e7
      abb315(44)=-abb315(43)*abb315(23)*abb315(36)
      abb315(45)=mB**2
      abb315(46)=abb315(45)*abb315(29)
      abb315(47)=abb315(5)*spbk3k2
      abb315(48)=abb315(47)*abb315(11)
      abb315(49)=abb315(46)*abb315(27)*abb315(48)
      abb315(50)=spbk7e7*abb315(49)
      abb315(12)=abb315(12)**2
      abb315(51)=c2*abb315(12)*abb315(2)
      abb315(52)=abb315(48)*spbk7e7*abb315(51)
      abb315(50)=-abb315(52)+abb315(50)
      abb315(50)=abb315(50)*abb315(35)
      abb315(53)=spbk7e7*spak2k4
      abb315(49)=-abb315(53)*abb315(49)
      abb315(52)=spak2k4*abb315(52)
      abb315(49)=abb315(52)+abb315(49)
      abb315(49)=abb315(49)*abb315(42)
      abb315(49)=abb315(50)+abb315(49)
      abb315(49)=spak2k7*abb315(49)
      abb315(47)=abb315(47)*abb315(13)
      abb315(50)=abb315(24)*abb315(47)
      abb315(52)=abb315(18)*abb315(48)
      abb315(54)=spak1k2*abb315(52)
      abb315(55)=abb315(54)*abb315(23)
      abb315(50)=abb315(50)-abb315(55)
      abb315(55)=abb315(50)*abb315(35)
      abb315(56)=abb315(50)*spak2k4
      abb315(57)=-abb315(56)*abb315(42)
      abb315(55)=abb315(55)+abb315(57)
      abb315(55)=spbe7k1*abb315(55)
      abb315(52)=abb315(47)-abb315(52)
      abb315(57)=abb315(34)*spak2e7
      abb315(58)=abb315(52)*abb315(57)*spbe7l6
      abb315(59)=spak2k4*abb315(52)
      abb315(60)=spbl5k2*spak2e7
      abb315(61)=abb315(59)*abb315(60)*spbe7l6
      abb315(58)=abb315(58)-abb315(61)
      abb315(61)=-spak1l6*abb315(23)*abb315(58)
      abb315(62)=abb315(48)*abb315(6)
      abb315(63)=abb315(62)*spak1k2**2
      abb315(64)=abb315(29)*abb315(27)*abb315(45)*abb315(63)
      abb315(51)=abb315(51)*abb315(63)
      abb315(51)=-abb315(51)+abb315(64)
      abb315(63)=spbe7k1*spae7k7
      abb315(64)=abb315(51)*abb315(63)
      abb315(65)=abb315(27)*spak1k2
      abb315(45)=abb315(65)*abb315(45)
      abb315(66)=abb315(29)*abb315(45)
      abb315(67)=spak1k2*abb315(2)
      abb315(12)=abb315(12)*abb315(67)*c2
      abb315(66)=abb315(66)-abb315(12)
      abb315(68)=-abb315(16)*spbk3k2*abb315(66)
      abb315(69)=spae7k7*spbe7l6
      abb315(70)=-abb315(68)*abb315(69)
      abb315(70)=abb315(70)+abb315(64)
      abb315(70)=spbk7k3*spak3k4*abb315(70)
      abb315(64)=-spak2k4*abb315(64)
      abb315(14)=-abb315(66)*abb315(14)*abb315(16)
      abb315(71)=abb315(14)*abb315(69)
      abb315(64)=abb315(71)+abb315(64)
      abb315(64)=spbk7k2*abb315(64)
      abb315(25)=abb315(64)+abb315(70)+abb315(61)+abb315(25)+abb315(55)+abb315(&
      &49)+abb315(44)
      abb315(25)=4.0_ki*abb315(25)
      abb315(44)=-spbl5k2*spak2k4
      abb315(44)=abb315(34)+abb315(44)
      abb315(44)=-abb315(44)*abb315(48)*abb315(66)
      abb315(48)=-spbk3k1*spak3k4*abb315(51)
      abb315(49)=abb315(45)*abb315(62)
      abb315(51)=-abb315(29)*abb315(49)*spak2k4
      abb315(55)=abb315(12)*abb315(62)
      abb315(61)=abb315(55)*spak2k4
      abb315(51)=abb315(61)+abb315(51)
      abb315(61)=-es12*abb315(51)
      abb315(62)=spbl6k3*spak3k4
      abb315(64)=-abb315(68)*abb315(62)
      abb315(14)=spbl6k2*abb315(14)
      abb315(14)=abb315(61)+abb315(48)+abb315(14)+abb315(64)+abb315(44)
      abb315(14)=8.0_ki*abb315(14)
      abb315(44)=abb315(49)*abb315(30)
      abb315(48)=abb315(55)*spbk7e7
      abb315(44)=abb315(44)-abb315(48)
      abb315(48)=spak2k7*spak4e7
      abb315(61)=spak4k7*spak2e7
      abb315(48)=abb315(48)-abb315(61)
      abb315(64)=-abb315(44)*abb315(48)
      abb315(66)=spbe7l5*spak4e7
      abb315(68)=abb315(50)*abb315(66)
      abb315(70)=-abb315(23)*abb315(19)
      abb315(71)=abb315(70)*abb315(43)
      abb315(72)=abb315(31)*spbl6l5
      abb315(73)=spak4k7*spak1e7
      abb315(74)=abb315(72)*abb315(73)
      abb315(64)=-abb315(74)-abb315(71)+abb315(68)+abb315(64)
      abb315(68)=8.0_ki*abb315(64)
      abb315(28)=abb315(28)*abb315(29)
      abb315(28)=abb315(28)-abb315(33)
      abb315(33)=spak1k4*spbl6l5
      abb315(71)=abb315(28)*abb315(33)
      abb315(74)=abb315(71)+2.0_ki*abb315(51)
      abb315(74)=16.0_ki*abb315(74)
      abb315(75)=abb315(17)*abb315(26)
      abb315(76)=abb315(5)**2*mB**3
      abb315(77)=abb315(76)*abb315(75)
      abb315(78)=abb315(77)*spbk7e7
      abb315(79)=abb315(76)*abb315(3)
      abb315(80)=abb315(79)*abb315(26)
      abb315(81)=abb315(30)*abb315(80)
      abb315(78)=abb315(78)-abb315(81)
      abb315(81)=-abb315(78)*abb315(35)
      abb315(76)=abb315(76)*abb315(38)
      abb315(82)=abb315(17)*spbk7e7
      abb315(83)=abb315(76)*abb315(82)
      abb315(38)=abb315(79)*abb315(38)
      abb315(79)=abb315(30)*abb315(38)
      abb315(79)=abb315(83)-abb315(79)
      abb315(83)=abb315(79)*abb315(42)
      abb315(81)=abb315(81)+abb315(83)
      abb315(83)=abb315(7)*spak2k7
      abb315(81)=abb315(81)*abb315(83)
      abb315(64)=abb315(81)+abb315(64)
      abb315(64)=8.0_ki*abb315(64)
      abb315(80)=-abb315(80)*abb315(29)
      abb315(77)=abb315(77)+abb315(80)
      abb315(77)=abb315(34)*abb315(77)
      abb315(38)=abb315(38)*abb315(29)
      abb315(76)=-abb315(17)*abb315(76)
      abb315(38)=abb315(76)+abb315(38)
      abb315(38)=spbl5k2*abb315(38)
      abb315(38)=abb315(77)+abb315(38)
      abb315(38)=abb315(7)*spak1k2*abb315(38)
      abb315(38)=abb315(38)+abb315(71)+abb315(51)
      abb315(38)=16.0_ki*abb315(38)
      abb315(71)=-spak1k2*abb315(20)
      abb315(76)=abb315(71)*spak3k4
      abb315(77)=abb315(76)*spbk7k3
      abb315(80)=-spak1k2*abb315(19)
      abb315(81)=abb315(80)*spbk7k2
      abb315(77)=abb315(81)+abb315(77)
      abb315(81)=abb315(69)*abb315(77)
      abb315(84)=spbk7e7*abb315(52)
      abb315(85)=abb315(84)*spak2e7
      abb315(86)=abb315(85)*abb315(34)
      abb315(87)=abb315(53)*abb315(52)
      abb315(88)=abb315(60)*abb315(87)
      abb315(86)=abb315(86)-abb315(88)
      abb315(88)=spak1k7*abb315(86)
      abb315(81)=abb315(88)+abb315(81)
      abb315(81)=8.0_ki*abb315(81)
      abb315(88)=abb315(71)*abb315(62)
      abb315(47)=spak1k2*abb315(47)
      abb315(47)=abb315(47)-abb315(54)
      abb315(54)=abb315(47)*abb315(34)
      abb315(89)=abb315(47)*spak2k4
      abb315(90)=-spbl5k2*abb315(89)
      abb315(91)=spbl6k2*abb315(80)
      abb315(54)=abb315(91)+abb315(88)+abb315(54)+abb315(90)
      abb315(54)=16.0_ki*abb315(54)
      abb315(88)=abb315(43)*abb315(36)
      abb315(90)=-abb315(47)*abb315(35)
      abb315(91)=abb315(89)*abb315(42)
      abb315(90)=abb315(90)+abb315(91)
      abb315(90)=spbe7k1*abb315(90)
      abb315(71)=-abb315(71)*abb315(21)
      abb315(80)=-spbe7k2*abb315(80)
      abb315(71)=abb315(71)+abb315(80)
      abb315(71)=spbl6k1*spak1e7*abb315(71)
      abb315(58)=spak1l6*abb315(58)
      abb315(58)=abb315(58)+abb315(71)+abb315(90)+abb315(88)
      abb315(58)=4.0_ki*abb315(58)
      abb315(71)=abb315(19)*abb315(43)
      abb315(80)=abb315(47)*abb315(66)
      abb315(71)=abb315(71)+abb315(80)
      abb315(71)=8.0_ki*abb315(71)
      abb315(80)=-spbk7e7*abb315(19)
      abb315(80)=8.0_ki*abb315(80)
      abb315(88)=abb315(80)*spak1k7
      abb315(90)=-abb315(50)*abb315(21)
      abb315(56)=spbe7k2*abb315(56)
      abb315(56)=abb315(90)+abb315(56)
      abb315(56)=4.0_ki*abb315(56)
      abb315(90)=abb315(47)*abb315(21)
      abb315(89)=-spbe7k2*abb315(89)
      abb315(89)=abb315(90)+abb315(89)
      abb315(89)=4.0_ki*abb315(89)
      abb315(90)=abb315(62)*spak1e7
      abb315(91)=abb315(20)*abb315(90)
      abb315(92)=abb315(23)*abb315(91)
      abb315(93)=spbl6k2*spak1e7
      abb315(70)=-abb315(70)*abb315(93)
      abb315(70)=abb315(92)+abb315(70)
      abb315(70)=4.0_ki*abb315(70)
      abb315(92)=-abb315(19)*abb315(93)
      abb315(91)=-abb315(91)+abb315(92)
      abb315(91)=4.0_ki*abb315(91)
      abb315(80)=abb315(80)*spak1e7
      abb315(90)=abb315(31)*abb315(90)
      abb315(40)=abb315(40)*abb315(93)
      abb315(40)=abb315(90)+abb315(40)
      abb315(40)=4.0_ki*abb315(40)
      abb315(90)=-8.0_ki*spak1e7*abb315(87)
      abb315(16)=abb315(16)*abb315(5)
      abb315(45)=abb315(16)*abb315(45)
      abb315(92)=abb315(45)*abb315(30)
      abb315(16)=abb315(16)*abb315(12)
      abb315(93)=abb315(16)*spbk7e7
      abb315(92)=abb315(92)-abb315(93)
      abb315(48)=abb315(48)*abb315(92)
      abb315(13)=abb315(5)*abb315(13)
      abb315(24)=abb315(13)*abb315(24)
      abb315(18)=abb315(18)*abb315(5)
      abb315(92)=abb315(18)*abb315(11)*spak1k2
      abb315(93)=abb315(92)*abb315(23)
      abb315(24)=abb315(93)-abb315(24)
      abb315(93)=-abb315(24)*abb315(66)
      abb315(27)=abb315(29)*abb315(27)
      abb315(32)=abb315(32)-abb315(27)
      abb315(94)=abb315(11)*spbk7e7
      abb315(32)=abb315(73)*abb315(94)*abb315(32)
      abb315(95)=spbl6l5*abb315(32)
      abb315(93)=abb315(95)+abb315(93)-abb315(48)
      abb315(93)=spbk4k2*abb315(93)
      abb315(95)=abb315(15)*es34
      abb315(9)=mB*abb315(9)
      abb315(96)=abb315(9)*abb315(10)*abb315(6)
      abb315(97)=abb315(96)*abb315(3)
      abb315(98)=-abb315(97)*abb315(29)
      abb315(99)=abb315(96)*abb315(17)
      abb315(98)=abb315(95)+abb315(99)+abb315(98)
      abb315(99)=abb315(43)*abb315(23)*abb315(98)
      abb315(100)=spak2e7*abb315(44)
      abb315(72)=-spak1e7*abb315(72)
      abb315(72)=abb315(100)+abb315(72)
      abb315(72)=spak3k7*abb315(72)
      abb315(44)=-spak2k7*abb315(44)
      abb315(100)=spbe7l5*abb315(50)
      abb315(44)=abb315(44)+abb315(100)
      abb315(44)=spak3e7*abb315(44)
      abb315(44)=abb315(44)+abb315(72)+abb315(93)+abb315(99)
      abb315(44)=4.0_ki*abb315(44)
      abb315(45)=abb315(29)*abb315(45)
      abb315(16)=abb315(45)-abb315(16)
      abb315(45)=es34*abb315(16)
      abb315(46)=abb315(67)*abb315(46)*abb315(3)
      abb315(12)=-abb315(12)+abb315(46)
      abb315(10)=abb315(10)*abb315(5)
      abb315(8)=abb315(10)*abb315(6)*abb315(1)*abb315(8)*abb315(12)
      abb315(8)=abb315(8)-abb315(45)
      abb315(12)=abb315(11)*abb315(27)
      abb315(11)=abb315(11)*abb315(17)
      abb315(27)=abb315(11)*abb315(2)
      abb315(12)=abb315(12)-abb315(27)
      abb315(12)=abb315(12)*abb315(33)
      abb315(27)=spbk4k2*abb315(12)
      abb315(33)=spak1k3*spbl6l5*abb315(28)
      abb315(8)=abb315(33)+abb315(27)+2.0_ki*abb315(8)
      abb315(8)=8.0_ki*abb315(8)
      abb315(27)=-abb315(43)*abb315(98)
      abb315(33)=abb315(13)*spak1k2
      abb315(33)=abb315(33)-abb315(92)
      abb315(45)=-spbk4k2*abb315(33)*abb315(66)
      abb315(46)=-spak3e7*spbe7l5*abb315(47)
      abb315(27)=abb315(46)+abb315(45)+abb315(27)
      abb315(27)=4.0_ki*abb315(27)
      abb315(45)=spbk7e7*abb315(95)
      abb315(46)=abb315(96)*abb315(82)
      abb315(30)=abb315(30)*abb315(97)
      abb315(30)=abb315(45)+abb315(46)-abb315(30)
      abb315(30)=4.0_ki*abb315(30)
      abb315(45)=-spak1k7*abb315(30)
      abb315(30)=spak1e7*abb315(30)
      abb315(46)=spak2k4*abb315(15)
      abb315(23)=-abb315(43)*abb315(23)*abb315(46)
      abb315(23)=abb315(23)+abb315(48)
      abb315(23)=spbk4k3*abb315(23)
      abb315(48)=-spak2e7*abb315(50)
      abb315(50)=spak4e7*spbk4k3
      abb315(24)=abb315(24)*abb315(50)
      abb315(24)=abb315(48)+abb315(24)
      abb315(24)=spbe7l5*abb315(24)
      abb315(32)=-spbk4k3*abb315(32)
      abb315(31)=abb315(31)*spak2k7*spak1e7
      abb315(31)=abb315(32)+abb315(31)
      abb315(31)=spbl6l5*abb315(31)
      abb315(23)=abb315(31)+abb315(24)+abb315(23)
      abb315(23)=4.0_ki*abb315(23)
      abb315(16)=spak2k4*abb315(16)
      abb315(12)=-abb315(12)+2.0_ki*abb315(16)
      abb315(12)=spbk4k3*abb315(12)
      abb315(16)=-abb315(65)*abb315(26)*abb315(29)
      abb315(24)=abb315(67)*abb315(75)
      abb315(16)=abb315(24)+abb315(16)
      abb315(16)=spbl6l5*abb315(16)
      abb315(12)=abb315(16)+abb315(12)
      abb315(12)=8.0_ki*abb315(12)
      abb315(16)=abb315(46)*spbk4k3
      abb315(24)=abb315(43)*abb315(16)
      abb315(26)=spak2e7*abb315(47)
      abb315(31)=abb315(33)*abb315(50)
      abb315(26)=abb315(26)+abb315(31)
      abb315(26)=spbe7l5*abb315(26)
      abb315(24)=abb315(24)+abb315(26)
      abb315(24)=4.0_ki*abb315(24)
      abb315(15)=abb315(15)*abb315(53)
      abb315(26)=4.0_ki*spak1k7
      abb315(31)=spbk4k3*abb315(15)*abb315(26)
      abb315(32)=4.0_ki*spbk4k3
      abb315(15)=-spak1e7*abb315(15)*abb315(32)
      abb315(32)=abb315(29)*abb315(49)
      abb315(32)=abb315(32)-abb315(55)
      abb315(21)=-abb315(32)*abb315(21)
      abb315(33)=-spbe7k2*abb315(51)
      abb315(21)=abb315(21)+abb315(33)
      abb315(33)=4.0_ki*spae7k7
      abb315(21)=abb315(21)*abb315(33)
      abb315(35)=abb315(35)*abb315(84)
      abb315(42)=abb315(87)*abb315(42)
      abb315(35)=abb315(35)-abb315(42)
      abb315(42)=4.0_ki*spal6k7*abb315(35)
      abb315(34)=-abb315(52)*abb315(34)
      abb315(43)=spbl5k2*abb315(59)
      abb315(34)=abb315(34)+abb315(43)
      abb315(34)=8.0_ki*spak1l6*abb315(34)
      abb315(43)=8.0_ki*abb315(84)
      abb315(46)=abb315(43)*abb315(73)
      abb315(48)=-abb315(52)*spak1k4
      abb315(48)=16.0_ki*abb315(48)
      abb315(49)=spbk7e7*abb315(13)
      abb315(50)=abb315(18)*abb315(94)
      abb315(49)=abb315(49)-abb315(50)
      abb315(50)=abb315(49)*abb315(73)
      abb315(51)=-spbk4k2*abb315(50)
      abb315(53)=abb315(84)*spak1e7
      abb315(55)=-spak3k7*abb315(53)
      abb315(51)=abb315(51)+abb315(55)
      abb315(51)=4.0_ki*abb315(51)
      abb315(11)=mB*abb315(11)*abb315(5)
      abb315(11)=abb315(11)-abb315(13)
      abb315(55)=abb315(11)*spak1k4
      abb315(65)=-spbk4k2*abb315(55)
      abb315(66)=spak1k3*abb315(52)
      abb315(65)=abb315(65)+abb315(66)
      abb315(65)=8.0_ki*abb315(65)
      abb315(50)=spbk4k3*abb315(50)
      abb315(66)=spak2k7*abb315(53)
      abb315(50)=abb315(50)+abb315(66)
      abb315(50)=4.0_ki*abb315(50)
      abb315(55)=spbk4k3*abb315(55)
      abb315(47)=abb315(55)-abb315(47)
      abb315(47)=8.0_ki*abb315(47)
      abb315(55)=8.0_ki*spak3k4
      abb315(32)=-abb315(32)*abb315(55)
      abb315(66)=4.0_ki*spak3k4
      abb315(53)=abb315(53)*abb315(66)
      abb315(26)=-abb315(35)*abb315(26)
      abb315(35)=abb315(69)*abb315(19)
      abb315(67)=8.0_ki*abb315(35)
      abb315(69)=4.0_ki*abb315(69)
      abb315(72)=-abb315(98)*abb315(69)
      abb315(73)=abb315(16)*abb315(69)
      abb315(63)=-abb315(63)*abb315(77)
      abb315(75)=-spal6k7*abb315(86)
      abb315(63)=abb315(75)+abb315(63)
      abb315(63)=4.0_ki*abb315(63)
      abb315(75)=spbk3k1*abb315(76)
      abb315(76)=-es12*abb315(19)
      abb315(36)=abb315(76)+abb315(75)-abb315(36)
      abb315(36)=8.0_ki*abb315(36)
      abb315(75)=16.0_ki*abb315(19)
      abb315(76)=8.0_ki*abb315(98)
      abb315(16)=-8.0_ki*abb315(16)
      abb315(22)=-abb315(22)*abb315(33)
      abb315(33)=-abb315(20)*abb315(55)
      abb315(28)=abb315(28)*abb315(62)
      abb315(41)=-abb315(41)*abb315(29)
      abb315(39)=abb315(39)+abb315(41)
      abb315(39)=spbl6k2*abb315(39)
      abb315(28)=abb315(28)+abb315(39)
      abb315(28)=8.0_ki*abb315(28)
      abb315(39)=abb315(43)*abb315(61)
      abb315(41)=16.0_ki*abb315(59)
      abb315(43)=-32.0_ki*abb315(59)
      abb315(49)=abb315(49)*abb315(61)
      abb315(61)=spbk4k2*abb315(49)
      abb315(62)=spak3k7*abb315(85)
      abb315(61)=abb315(61)+abb315(62)
      abb315(61)=4.0_ki*abb315(61)
      abb315(29)=abb315(29)*abb315(3)
      abb315(17)=-abb315(17)+abb315(29)
      abb315(9)=abb315(10)*abb315(9)*abb315(17)
      abb315(10)=es34*abb315(11)
      abb315(9)=abb315(10)+abb315(9)
      abb315(9)=8.0_ki*abb315(9)
      abb315(10)=-spbk4k3*abb315(49)
      abb315(11)=-spak2k7*abb315(85)
      abb315(10)=abb315(10)+abb315(11)
      abb315(10)=4.0_ki*abb315(10)
      abb315(11)=spak2k4*abb315(13)
      abb315(13)=-abb315(37)*abb315(18)
      abb315(11)=abb315(13)+abb315(11)
      abb315(11)=8.0_ki*spbk4k3*abb315(11)
      abb315(13)=-abb315(55)*abb315(52)
      abb315(17)=-abb315(85)*abb315(66)
      abb315(18)=spak3k4*abb315(20)*abb315(69)
      abb315(20)=abb315(78)*abb315(57)
      abb315(29)=-abb315(79)*abb315(60)
      abb315(20)=abb315(20)+abb315(29)
      abb315(20)=4.0_ki*abb315(20)*abb315(83)
      abb315(29)=4.0_ki*spak2e7*abb315(87)
      abb315(35)=4.0_ki*abb315(35)
      abb315(19)=8.0_ki*abb315(19)
      abb315(37)=8.0_ki*abb315(59)
      R2d315=0.0_ki
      rat2 = rat2 + R2d315
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='315' value='", &
          & R2d315, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd315h3