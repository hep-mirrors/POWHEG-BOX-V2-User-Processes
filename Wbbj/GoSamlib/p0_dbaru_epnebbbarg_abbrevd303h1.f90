module     p0_dbaru_epnebbbarg_abbrevd303h1
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(100), public :: abb303
   complex(ki), public :: R2d303
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
      abb303(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb303(2)=1.0_ki/(es34+es567-es12-es234)
      abb303(3)=sqrt(mB**2)
      abb303(4)=NC**(-1)
      abb303(5)=spak2l5**(-1)
      abb303(6)=spbl6k2**(-1)
      abb303(7)=spak2l6**(-1)
      abb303(8)=CVDU*i_*spak1k4*abb303(2)*abb303(1)
      abb303(9)=TR*gW
      abb303(9)=abb303(9)**2
      abb303(10)=abb303(8)*abb303(9)*c3
      abb303(11)=abb303(10)*spbk4k3
      abb303(12)=abb303(11)*NC
      abb303(9)=abb303(9)*abb303(4)
      abb303(13)=abb303(9)*c1
      abb303(14)=abb303(8)*spbk4k3
      abb303(15)=abb303(13)*abb303(14)
      abb303(15)=abb303(12)+abb303(15)
      abb303(16)=abb303(11)*abb303(4)
      abb303(17)=abb303(15)-abb303(16)
      abb303(18)=spak2k4*abb303(7)
      abb303(19)=abb303(17)*abb303(18)
      abb303(10)=abb303(10)*spbk3k1
      abb303(20)=abb303(10)*NC
      abb303(8)=abb303(8)*spbk3k1
      abb303(13)=abb303(13)*abb303(8)
      abb303(13)=abb303(20)+abb303(13)
      abb303(21)=abb303(10)*abb303(4)
      abb303(22)=abb303(13)-abb303(21)
      abb303(23)=spak1k2*abb303(7)
      abb303(24)=abb303(22)*abb303(23)
      abb303(19)=abb303(19)-abb303(24)
      abb303(24)=abb303(3)*spbe7k2*mB**3
      abb303(25)=abb303(6)*spbl5k2
      abb303(26)=-abb303(19)*abb303(24)*abb303(25)
      abb303(27)=abb303(3)*mB
      abb303(28)=abb303(27)*spbe7k2
      abb303(29)=abb303(28)*abb303(15)
      abb303(30)=abb303(28)*abb303(16)
      abb303(29)=abb303(29)-abb303(30)
      abb303(31)=spak4k7*abb303(29)
      abb303(32)=abb303(28)*abb303(13)
      abb303(33)=abb303(28)*abb303(21)
      abb303(32)=abb303(32)-abb303(33)
      abb303(34)=spak1k7*abb303(32)
      abb303(31)=abb303(31)+abb303(34)
      abb303(31)=spbk7l5*abb303(31)
      abb303(34)=abb303(32)*spak1l6
      abb303(35)=abb303(29)*spak4l6
      abb303(34)=abb303(34)+abb303(35)
      abb303(35)=-spbl6l5*abb303(34)
      abb303(26)=abb303(35)+abb303(31)+abb303(26)
      abb303(26)=spal6e7*abb303(26)
      abb303(31)=abb303(28)*abb303(25)
      abb303(8)=abb303(8)*abb303(9)
      abb303(35)=abb303(31)*abb303(8)
      abb303(36)=abb303(24)*abb303(5)
      abb303(37)=abb303(6)*abb303(36)
      abb303(38)=abb303(37)*abb303(8)
      abb303(38)=abb303(38)-abb303(35)
      abb303(38)=abb303(38)*c1
      abb303(39)=abb303(31)*abb303(10)
      abb303(40)=abb303(37)*abb303(10)
      abb303(40)=abb303(40)-abb303(39)
      abb303(40)=abb303(40)*NC
      abb303(41)=abb303(31)*abb303(21)
      abb303(42)=abb303(37)*abb303(21)
      abb303(38)=abb303(41)+abb303(38)+abb303(40)-abb303(42)
      abb303(40)=abb303(38)*spak1e7
      abb303(9)=abb303(14)*abb303(9)
      abb303(14)=abb303(31)*abb303(9)
      abb303(43)=abb303(37)*abb303(9)
      abb303(43)=abb303(43)-abb303(14)
      abb303(43)=abb303(43)*c1
      abb303(44)=abb303(31)*abb303(11)
      abb303(45)=abb303(37)*abb303(11)
      abb303(45)=abb303(45)-abb303(44)
      abb303(45)=abb303(45)*NC
      abb303(46)=abb303(31)*abb303(16)
      abb303(47)=abb303(37)*abb303(16)
      abb303(43)=abb303(46)+abb303(43)+abb303(45)-abb303(47)
      abb303(45)=abb303(43)*spak4e7
      abb303(40)=abb303(40)+abb303(45)
      abb303(45)=es71+es12-es712
      abb303(45)=2.0_ki*abb303(45)
      abb303(40)=abb303(40)*abb303(45)
      abb303(45)=abb303(9)*spbl5k2
      abb303(48)=-abb303(28)*abb303(45)
      abb303(49)=abb303(9)*abb303(36)
      abb303(48)=abb303(48)+abb303(49)
      abb303(48)=c1*abb303(48)
      abb303(49)=abb303(11)*spbl5k2
      abb303(50)=-abb303(28)*abb303(49)
      abb303(51)=abb303(11)*abb303(36)
      abb303(50)=abb303(50)+abb303(51)
      abb303(50)=NC*abb303(50)
      abb303(51)=abb303(16)*spbl5k2
      abb303(52)=abb303(28)*abb303(51)
      abb303(53)=-abb303(16)*abb303(36)
      abb303(48)=abb303(50)+abb303(48)+abb303(52)+abb303(53)
      abb303(48)=spak4e7*abb303(48)
      abb303(50)=abb303(8)*spbl5k2
      abb303(52)=-abb303(28)*abb303(50)
      abb303(53)=abb303(8)*abb303(36)
      abb303(52)=abb303(52)+abb303(53)
      abb303(52)=c1*abb303(52)
      abb303(53)=abb303(10)*spbl5k2
      abb303(54)=-abb303(28)*abb303(53)
      abb303(55)=abb303(10)*abb303(36)
      abb303(54)=abb303(54)+abb303(55)
      abb303(54)=NC*abb303(54)
      abb303(55)=abb303(21)*spbl5k2
      abb303(56)=abb303(28)*abb303(55)
      abb303(36)=-abb303(21)*abb303(36)
      abb303(36)=abb303(54)+abb303(52)+abb303(56)+abb303(36)
      abb303(36)=spak1e7*abb303(36)
      abb303(36)=abb303(48)+abb303(36)
      abb303(36)=spak2l6*abb303(36)
      abb303(48)=abb303(31)*abb303(15)
      abb303(48)=abb303(48)-abb303(46)
      abb303(52)=-spak4k7*abb303(48)
      abb303(31)=abb303(31)*abb303(13)
      abb303(31)=abb303(31)-abb303(41)
      abb303(54)=-spak1k7*abb303(31)
      abb303(52)=abb303(52)+abb303(54)
      abb303(52)=spbk7l5*abb303(52)
      abb303(54)=spak4l6*abb303(48)
      abb303(56)=spak1l6*abb303(31)
      abb303(54)=abb303(54)+abb303(56)
      abb303(54)=spbl6l5*abb303(54)
      abb303(56)=abb303(19)*abb303(24)*abb303(25)**2
      abb303(52)=abb303(54)+abb303(52)+abb303(56)
      abb303(52)=spal5e7*abb303(52)
      abb303(25)=abb303(25)*abb303(27)
      abb303(54)=abb303(13)*abb303(25)
      abb303(56)=abb303(25)*abb303(21)
      abb303(54)=abb303(54)-abb303(56)
      abb303(54)=abb303(54)*spak1e7
      abb303(57)=abb303(15)*abb303(25)
      abb303(58)=abb303(25)*abb303(16)
      abb303(57)=abb303(57)-abb303(58)
      abb303(57)=abb303(57)*spak4e7
      abb303(54)=abb303(54)+abb303(57)
      abb303(57)=spal5k7*abb303(54)
      abb303(59)=abb303(17)*spak4e7
      abb303(60)=abb303(22)*spak1e7
      abb303(59)=abb303(59)+abb303(60)
      abb303(60)=-spal6k7*abb303(27)*abb303(59)
      abb303(57)=abb303(57)+abb303(60)
      abb303(60)=2.0_ki*spbe7l5
      abb303(57)=abb303(60)*spbk7k2*abb303(57)
      abb303(61)=spak1l5*abb303(22)
      abb303(62)=spak4l5*abb303(17)
      abb303(61)=abb303(61)+abb303(62)
      abb303(62)=abb303(27)*abb303(6)
      abb303(63)=spbl5k2**2
      abb303(61)=abb303(61)*abb303(62)*abb303(63)
      abb303(64)=spbl5k2*abb303(15)
      abb303(64)=abb303(64)-abb303(51)
      abb303(65)=abb303(64)*abb303(27)
      abb303(66)=abb303(65)*spak4l6
      abb303(67)=spbl5k2*abb303(13)
      abb303(67)=abb303(67)-abb303(55)
      abb303(68)=abb303(67)*abb303(27)
      abb303(69)=abb303(68)*spak1l6
      abb303(61)=abb303(61)-abb303(66)-abb303(69)
      abb303(66)=spbe7l6*spal6e7
      abb303(69)=2.0_ki*abb303(66)
      abb303(70)=abb303(69)*abb303(61)
      abb303(65)=spak4e7*abb303(65)
      abb303(68)=spak1e7*abb303(68)
      abb303(65)=abb303(65)+abb303(68)
      abb303(68)=spal5l6*spbe7l5
      abb303(65)=abb303(65)*abb303(68)
      abb303(26)=abb303(52)+abb303(65)+abb303(36)+abb303(70)+abb303(40)+abb303(&
      &57)+abb303(26)
      abb303(26)=2.0_ki*abb303(26)
      abb303(36)=mB**2
      abb303(40)=abb303(36)*abb303(6)
      abb303(52)=-abb303(19)*abb303(63)*abb303(40)
      abb303(57)=abb303(67)*spak1k7
      abb303(63)=abb303(64)*spak4k7
      abb303(57)=abb303(57)+abb303(63)
      abb303(57)=abb303(57)*spbk7l5
      abb303(63)=abb303(67)*spak1l6
      abb303(65)=abb303(64)*spak4l6
      abb303(63)=abb303(63)+abb303(65)
      abb303(65)=abb303(63)*spbl6l5
      abb303(52)=-abb303(65)+abb303(57)+abb303(52)
      abb303(57)=-spal5l6*abb303(52)
      abb303(65)=abb303(36)*abb303(5)
      abb303(70)=abb303(65)*abb303(11)
      abb303(71)=abb303(70)-abb303(49)
      abb303(71)=abb303(71)*NC
      abb303(72)=abb303(9)*abb303(65)
      abb303(73)=abb303(72)-abb303(45)
      abb303(73)=abb303(73)*c1
      abb303(74)=abb303(16)*abb303(65)
      abb303(71)=-abb303(74)+abb303(51)+abb303(71)+abb303(73)
      abb303(73)=abb303(71)*spak2l6
      abb303(75)=spak4l6*abb303(73)
      abb303(76)=abb303(65)*abb303(10)
      abb303(77)=abb303(76)-abb303(53)
      abb303(77)=abb303(77)*NC
      abb303(78)=abb303(8)*abb303(65)
      abb303(79)=abb303(78)-abb303(50)
      abb303(79)=abb303(79)*c1
      abb303(80)=abb303(21)*abb303(65)
      abb303(77)=-abb303(80)+abb303(55)+abb303(77)+abb303(79)
      abb303(79)=abb303(77)*spak2l6
      abb303(81)=spak1l6*abb303(79)
      abb303(75)=abb303(75)+abb303(81)
      abb303(75)=spbl6k2*abb303(75)
      abb303(81)=spak4k7*spbk7k2
      abb303(82)=-abb303(81)*abb303(73)
      abb303(83)=spak1k7*spbk7k2
      abb303(84)=-abb303(83)*abb303(79)
      abb303(57)=abb303(75)+abb303(84)+abb303(82)+abb303(57)-2.0_ki*abb303(61)
      abb303(57)=4.0_ki*abb303(57)
      abb303(61)=abb303(72)*spbe7k2
      abb303(72)=abb303(45)*spbe7k2
      abb303(61)=abb303(61)-abb303(72)
      abb303(61)=abb303(61)*c1
      abb303(70)=abb303(70)*spbe7k2
      abb303(75)=abb303(49)*spbe7k2
      abb303(70)=abb303(70)-abb303(75)
      abb303(70)=abb303(70)*NC
      abb303(82)=abb303(74)*spbe7k2
      abb303(84)=abb303(51)*spbe7k2
      abb303(61)=-abb303(82)+abb303(84)+abb303(61)+abb303(70)
      abb303(61)=abb303(61)*spak4e7
      abb303(70)=abb303(78)*spbe7k2
      abb303(78)=abb303(50)*spbe7k2
      abb303(70)=abb303(70)-abb303(78)
      abb303(70)=abb303(70)*c1
      abb303(76)=abb303(76)*spbe7k2
      abb303(82)=abb303(53)*spbe7k2
      abb303(76)=abb303(76)-abb303(82)
      abb303(76)=abb303(76)*NC
      abb303(85)=abb303(80)*spbe7k2
      abb303(86)=abb303(55)*spbe7k2
      abb303(70)=-abb303(85)+abb303(86)+abb303(70)+abb303(76)
      abb303(70)=abb303(70)*spak1e7
      abb303(61)=abb303(61)+abb303(70)
      abb303(70)=spak2l6*abb303(61)
      abb303(76)=abb303(67)*spak1e7
      abb303(85)=abb303(64)*spak4e7
      abb303(76)=abb303(76)+abb303(85)
      abb303(85)=abb303(68)*abb303(76)
      abb303(70)=abb303(70)+abb303(85)
      abb303(70)=8.0_ki*abb303(70)
      abb303(87)=abb303(31)*spak1e7
      abb303(88)=abb303(48)*spak4e7
      abb303(87)=abb303(87)+abb303(88)
      abb303(88)=abb303(28)*abb303(5)
      abb303(89)=abb303(22)*abb303(88)
      abb303(90)=abb303(89)*spak1k2
      abb303(88)=abb303(17)*abb303(88)
      abb303(91)=abb303(88)*spak2k4
      abb303(90)=abb303(90)-abb303(91)
      abb303(90)=abb303(90)*spal6e7
      abb303(91)=-abb303(90)-abb303(87)
      abb303(91)=4.0_ki*abb303(91)
      abb303(92)=-8.0_ki*abb303(63)
      abb303(93)=mB**4
      abb303(94)=spbe7k2*abb303(6)
      abb303(95)=abb303(93)*abb303(94)
      abb303(96)=abb303(24)*abb303(6)
      abb303(95)=-abb303(95)+2.0_ki*abb303(96)
      abb303(95)=abb303(95)*abb303(5)
      abb303(96)=-abb303(9)*abb303(95)
      abb303(97)=abb303(40)*spbe7k2
      abb303(98)=-abb303(97)*abb303(45)
      abb303(14)=abb303(96)+abb303(98)+2.0_ki*abb303(14)
      abb303(14)=c1*abb303(14)
      abb303(96)=-abb303(11)*abb303(95)
      abb303(98)=-abb303(97)*abb303(49)
      abb303(44)=abb303(96)+abb303(98)+2.0_ki*abb303(44)
      abb303(44)=NC*abb303(44)
      abb303(96)=abb303(16)*abb303(95)
      abb303(98)=abb303(97)*abb303(51)
      abb303(14)=abb303(44)+abb303(14)+abb303(96)+abb303(98)-2.0_ki*abb303(46)
      abb303(14)=spak4e7*abb303(14)
      abb303(44)=-abb303(8)*abb303(95)
      abb303(46)=-abb303(97)*abb303(50)
      abb303(35)=abb303(44)+abb303(46)+2.0_ki*abb303(35)
      abb303(35)=c1*abb303(35)
      abb303(44)=-abb303(10)*abb303(95)
      abb303(46)=-abb303(97)*abb303(53)
      abb303(39)=abb303(44)+abb303(46)+2.0_ki*abb303(39)
      abb303(39)=NC*abb303(39)
      abb303(44)=abb303(21)*abb303(95)
      abb303(46)=abb303(97)*abb303(55)
      abb303(35)=abb303(39)+abb303(35)+abb303(44)+abb303(46)-2.0_ki*abb303(41)
      abb303(35)=spak1e7*abb303(35)
      abb303(39)=abb303(27)*abb303(5)
      abb303(41)=-abb303(39)*abb303(17)
      abb303(44)=-spak4e7*abb303(41)
      abb303(46)=-abb303(39)*abb303(22)
      abb303(95)=-spak1e7*abb303(46)
      abb303(44)=abb303(44)+abb303(95)
      abb303(44)=spal6k7*abb303(44)
      abb303(95)=abb303(41)*spal6e7
      abb303(96)=-spak4k7*abb303(95)
      abb303(98)=abb303(46)*spal6e7
      abb303(99)=-spak1k7*abb303(98)
      abb303(44)=2.0_ki*abb303(44)+abb303(96)+abb303(99)
      abb303(44)=spbk7e7*abb303(44)
      abb303(96)=-abb303(37)*abb303(15)
      abb303(47)=abb303(47)+abb303(96)
      abb303(18)=abb303(47)*abb303(18)
      abb303(37)=abb303(37)*abb303(13)
      abb303(37)=-abb303(42)+abb303(37)
      abb303(23)=abb303(37)*abb303(23)
      abb303(18)=abb303(23)+abb303(18)
      abb303(18)=spal6e7*abb303(18)
      abb303(23)=-spak4l5*abb303(95)
      abb303(37)=-spak1l5*abb303(98)
      abb303(23)=abb303(37)+abb303(23)
      abb303(23)=spbe7l5*abb303(23)
      abb303(37)=spak4l6*abb303(41)
      abb303(41)=spak1l6*abb303(46)
      abb303(37)=abb303(41)+abb303(37)
      abb303(37)=abb303(66)*abb303(37)
      abb303(41)=abb303(40)*spbl5k2
      abb303(42)=abb303(41)*abb303(13)
      abb303(46)=abb303(55)*abb303(40)
      abb303(42)=abb303(42)-abb303(46)
      abb303(47)=abb303(42)*spak1e7
      abb303(96)=abb303(41)*abb303(15)
      abb303(99)=abb303(51)*abb303(40)
      abb303(96)=abb303(96)-abb303(99)
      abb303(100)=abb303(96)*spak4e7
      abb303(47)=abb303(47)+abb303(100)
      abb303(47)=abb303(47)*abb303(7)
      abb303(68)=abb303(68)*abb303(47)
      abb303(14)=abb303(68)+abb303(14)+abb303(35)+abb303(37)+abb303(44)+abb303(&
      &23)+abb303(18)
      abb303(14)=4.0_ki*abb303(14)
      abb303(18)=-abb303(36)+2.0_ki*abb303(27)
      abb303(18)=abb303(18)*abb303(5)
      abb303(23)=-abb303(16)*abb303(18)
      abb303(35)=abb303(9)*abb303(18)
      abb303(35)=abb303(45)+abb303(35)
      abb303(35)=c1*abb303(35)
      abb303(37)=abb303(11)*abb303(18)
      abb303(37)=abb303(49)+abb303(37)
      abb303(37)=NC*abb303(37)
      abb303(23)=abb303(37)+abb303(35)-abb303(51)+abb303(23)
      abb303(23)=spak4l6*abb303(23)
      abb303(35)=-abb303(21)*abb303(18)
      abb303(37)=abb303(8)*abb303(18)
      abb303(37)=abb303(50)+abb303(37)
      abb303(37)=c1*abb303(37)
      abb303(18)=abb303(10)*abb303(18)
      abb303(18)=abb303(53)+abb303(18)
      abb303(18)=NC*abb303(18)
      abb303(18)=abb303(18)+abb303(37)-abb303(55)+abb303(35)
      abb303(18)=spak1l6*abb303(18)
      abb303(18)=abb303(23)+abb303(18)
      abb303(18)=8.0_ki*abb303(18)
      abb303(23)=abb303(36)*spbe7k2
      abb303(35)=abb303(16)*abb303(23)
      abb303(30)=abb303(35)-abb303(30)
      abb303(30)=abb303(5)*abb303(30)
      abb303(28)=abb303(23)-abb303(28)
      abb303(28)=abb303(28)*abb303(5)
      abb303(35)=-abb303(9)*abb303(28)
      abb303(35)=abb303(72)+abb303(35)
      abb303(35)=c1*abb303(35)
      abb303(37)=-abb303(11)*abb303(28)
      abb303(37)=abb303(75)+abb303(37)
      abb303(37)=NC*abb303(37)
      abb303(30)=abb303(37)+abb303(35)-abb303(84)+abb303(30)
      abb303(30)=spak4e7*abb303(30)
      abb303(23)=abb303(21)*abb303(23)
      abb303(23)=abb303(23)-abb303(33)
      abb303(23)=abb303(5)*abb303(23)
      abb303(33)=-abb303(8)*abb303(28)
      abb303(33)=abb303(78)+abb303(33)
      abb303(33)=c1*abb303(33)
      abb303(28)=-abb303(10)*abb303(28)
      abb303(28)=abb303(82)+abb303(28)
      abb303(28)=NC*abb303(28)
      abb303(23)=abb303(28)+abb303(33)-abb303(86)+abb303(23)
      abb303(23)=spak1e7*abb303(23)
      abb303(23)=abb303(30)+abb303(23)
      abb303(23)=spak2l6*abb303(23)
      abb303(23)=-abb303(85)-2.0_ki*abb303(87)+abb303(23)-abb303(90)
      abb303(23)=2.0_ki*abb303(23)
      abb303(28)=-4.0_ki*abb303(63)
      abb303(30)=-spak4l6*abb303(71)
      abb303(33)=-spak1l6*abb303(77)
      abb303(30)=abb303(30)+abb303(33)
      abb303(30)=spbl6k2*abb303(30)
      abb303(33)=abb303(71)*abb303(81)
      abb303(35)=abb303(77)*abb303(83)
      abb303(30)=abb303(30)+abb303(33)+abb303(35)
      abb303(30)=spak2e7*abb303(30)
      abb303(33)=spal5e7*abb303(52)
      abb303(30)=abb303(33)+abb303(30)
      abb303(30)=2.0_ki*abb303(30)
      abb303(33)=4.0_ki*abb303(76)
      abb303(35)=abb303(27)-abb303(36)
      abb303(35)=abb303(35)*abb303(5)
      abb303(37)=abb303(16)*abb303(35)
      abb303(44)=-abb303(9)*abb303(35)
      abb303(44)=-abb303(45)+abb303(44)
      abb303(44)=c1*abb303(44)
      abb303(11)=-abb303(11)*abb303(35)
      abb303(11)=-abb303(49)+abb303(11)
      abb303(11)=NC*abb303(11)
      abb303(11)=abb303(11)+abb303(44)+abb303(51)+abb303(37)
      abb303(11)=spak4e7*abb303(11)
      abb303(37)=abb303(21)*abb303(35)
      abb303(44)=-abb303(8)*abb303(35)
      abb303(44)=-abb303(50)+abb303(44)
      abb303(44)=c1*abb303(44)
      abb303(10)=-abb303(10)*abb303(35)
      abb303(10)=-abb303(53)+abb303(10)
      abb303(10)=NC*abb303(10)
      abb303(10)=abb303(10)+abb303(44)+abb303(55)+abb303(37)
      abb303(10)=spak1e7*abb303(10)
      abb303(10)=abb303(11)+abb303(10)
      abb303(10)=4.0_ki*abb303(10)
      abb303(11)=2.0_ki*abb303(76)
      abb303(27)=abb303(94)*abb303(27)
      abb303(35)=abb303(15)*abb303(27)
      abb303(37)=abb303(27)*abb303(16)
      abb303(35)=abb303(35)-abb303(37)
      abb303(44)=-abb303(35)*abb303(81)
      abb303(52)=abb303(13)*abb303(27)
      abb303(63)=abb303(27)*abb303(21)
      abb303(52)=abb303(52)-abb303(63)
      abb303(68)=-abb303(52)*abb303(83)
      abb303(48)=spak4l5*abb303(48)
      abb303(31)=spak1l5*abb303(31)
      abb303(31)=abb303(31)+abb303(48)+abb303(68)+abb303(44)+abb303(34)
      abb303(31)=2.0_ki*abb303(31)
      abb303(34)=abb303(17)*spak4l6
      abb303(44)=abb303(22)*spak1l6
      abb303(34)=abb303(34)+abb303(44)
      abb303(44)=abb303(34)*spbl6k2
      abb303(48)=abb303(17)*abb303(81)
      abb303(68)=abb303(22)*abb303(83)
      abb303(44)=-abb303(68)+abb303(44)-abb303(48)
      abb303(48)=abb303(67)*spak1l5
      abb303(68)=abb303(64)*spak4l5
      abb303(48)=abb303(48)+abb303(68)
      abb303(68)=-abb303(48)-abb303(44)
      abb303(68)=2.0_ki*abb303(68)
      abb303(45)=-c1*abb303(45)
      abb303(49)=-NC*abb303(49)
      abb303(45)=abb303(49)+abb303(45)+abb303(51)
      abb303(49)=abb303(6)**2
      abb303(24)=abb303(49)*abb303(24)
      abb303(49)=spbe7k2*abb303(93)*abb303(49)
      abb303(24)=abb303(24)+abb303(49)
      abb303(45)=abb303(7)*abb303(24)*abb303(45)
      abb303(43)=abb303(45)-abb303(43)
      abb303(43)=spak2k4*abb303(43)
      abb303(45)=c1*abb303(50)
      abb303(50)=NC*abb303(53)
      abb303(45)=abb303(50)+abb303(45)-abb303(55)
      abb303(24)=abb303(7)*abb303(24)*abb303(45)
      abb303(24)=abb303(24)+abb303(38)
      abb303(24)=spak1k2*abb303(24)
      abb303(9)=abb303(9)*c1
      abb303(38)=abb303(9)+abb303(12)
      abb303(27)=abb303(27)+abb303(97)
      abb303(45)=-abb303(27)*abb303(38)
      abb303(50)=abb303(97)*abb303(16)
      abb303(37)=abb303(50)+abb303(37)+abb303(45)
      abb303(45)=-spak4k7*abb303(37)
      abb303(8)=abb303(8)*c1
      abb303(51)=abb303(8)+abb303(20)
      abb303(27)=-abb303(27)*abb303(51)
      abb303(53)=abb303(97)*abb303(21)
      abb303(27)=abb303(53)+abb303(63)+abb303(27)
      abb303(55)=-spak1k7*abb303(27)
      abb303(45)=abb303(45)+abb303(55)
      abb303(45)=spbk7l5*abb303(45)
      abb303(37)=spak4l6*abb303(37)
      abb303(27)=spak1l6*abb303(27)
      abb303(27)=abb303(37)+abb303(27)
      abb303(27)=spbl6l5*abb303(27)
      abb303(24)=abb303(27)+abb303(45)+abb303(43)+abb303(24)
      abb303(24)=2.0_ki*abb303(24)
      abb303(27)=abb303(40)*abb303(5)
      abb303(37)=abb303(27)*spbe7k2
      abb303(43)=-abb303(37)*abb303(22)
      abb303(45)=abb303(43)*spak1k2
      abb303(37)=-abb303(37)*abb303(17)
      abb303(55)=abb303(37)*spak2k4
      abb303(45)=abb303(45)-abb303(55)
      abb303(55)=4.0_ki*abb303(45)
      abb303(19)=-abb303(19)*abb303(49)*abb303(5)
      abb303(49)=-abb303(27)*abb303(17)
      abb303(63)=-spak4k7*abb303(49)
      abb303(72)=-abb303(27)*abb303(22)
      abb303(75)=-spak1k7*abb303(72)
      abb303(63)=abb303(63)+abb303(75)
      abb303(63)=spbk7e7*abb303(63)
      abb303(75)=-spak1l6*spbe7l6
      abb303(78)=-spak1l5*spbe7l5
      abb303(75)=abb303(78)+abb303(75)
      abb303(75)=abb303(72)*abb303(75)
      abb303(78)=-spak4l6*spbe7l6
      abb303(82)=-spak4l5*spbe7l5
      abb303(78)=abb303(82)+abb303(78)
      abb303(78)=abb303(49)*abb303(78)
      abb303(19)=abb303(63)+abb303(78)+abb303(75)+abb303(19)
      abb303(19)=4.0_ki*abb303(19)
      abb303(45)=2.0_ki*abb303(45)
      abb303(63)=abb303(17)*spak4k7
      abb303(75)=abb303(22)*spak1k7
      abb303(63)=abb303(63)+abb303(75)
      abb303(63)=abb303(63)*spbk7l5
      abb303(34)=abb303(34)*spbl6l5
      abb303(34)=abb303(63)-abb303(34)
      abb303(63)=abb303(96)*abb303(7)
      abb303(75)=abb303(63)+abb303(71)
      abb303(75)=spak2k4*abb303(75)
      abb303(42)=abb303(42)*abb303(7)
      abb303(78)=-abb303(42)-abb303(77)
      abb303(78)=spak1k2*abb303(78)
      abb303(75)=abb303(75)+abb303(78)-abb303(34)
      abb303(75)=2.0_ki*abb303(75)
      abb303(39)=spal6e7*abb303(39)*abb303(48)
      abb303(78)=-spak4l6*abb303(95)
      abb303(82)=-spak1l6*abb303(98)
      abb303(78)=abb303(78)+abb303(82)
      abb303(78)=spbl6k2*abb303(78)
      abb303(82)=abb303(81)*abb303(95)
      abb303(84)=abb303(83)*abb303(98)
      abb303(39)=abb303(78)+abb303(82)+abb303(84)+abb303(39)
      abb303(39)=2.0_ki*abb303(39)
      abb303(27)=abb303(27)*abb303(48)
      abb303(78)=abb303(65)*abb303(15)
      abb303(74)=-abb303(74)+abb303(78)
      abb303(74)=spak4l6*abb303(74)
      abb303(65)=abb303(65)*abb303(13)
      abb303(65)=-abb303(80)+abb303(65)
      abb303(65)=spak1l6*abb303(65)
      abb303(78)=abb303(49)*abb303(81)
      abb303(80)=abb303(72)*abb303(83)
      abb303(27)=abb303(80)+abb303(78)+abb303(74)+abb303(65)+abb303(27)
      abb303(27)=2.0_ki*abb303(27)
      abb303(35)=spak4e7*abb303(35)
      abb303(52)=spak1e7*abb303(52)
      abb303(35)=abb303(35)+abb303(52)
      abb303(52)=4.0_ki*spbk7k2
      abb303(35)=abb303(35)*abb303(52)
      abb303(9)=-abb303(9)-abb303(12)+abb303(16)
      abb303(12)=abb303(62)+abb303(40)
      abb303(9)=spak4e7*abb303(12)*abb303(9)
      abb303(8)=-abb303(8)-abb303(20)+abb303(21)
      abb303(8)=spak1e7*abb303(12)*abb303(8)
      abb303(8)=abb303(9)+abb303(8)
      abb303(8)=spbe7l5*abb303(8)*abb303(52)
      abb303(9)=abb303(72)*spak1e7
      abb303(12)=abb303(49)*spak4e7
      abb303(9)=abb303(9)+abb303(12)
      abb303(12)=-8.0_ki*spbk7e7*abb303(9)
      abb303(16)=-spak2k7*abb303(61)
      abb303(20)=-spal5k7*spbe7l5*abb303(76)
      abb303(16)=abb303(20)+abb303(16)
      abb303(16)=4.0_ki*abb303(16)
      abb303(20)=spbe7k2*abb303(59)
      abb303(21)=-4.0_ki*abb303(20)
      abb303(40)=abb303(59)*spbe7l5
      abb303(52)=4.0_ki*abb303(40)
      abb303(61)=-abb303(69)*abb303(48)
      abb303(29)=spak4e7*abb303(29)
      abb303(32)=spak1e7*abb303(32)
      abb303(29)=abb303(29)+abb303(32)+abb303(61)
      abb303(29)=2.0_ki*abb303(29)
      abb303(32)=abb303(44)+3.0_ki*abb303(48)
      abb303(32)=4.0_ki*abb303(32)
      abb303(44)=8.0_ki*abb303(20)
      abb303(13)=abb303(13)*abb303(97)
      abb303(13)=abb303(13)-abb303(53)
      abb303(13)=abb303(13)*spak1e7
      abb303(15)=abb303(15)*abb303(97)
      abb303(15)=abb303(15)-abb303(50)
      abb303(15)=abb303(15)*spak4e7
      abb303(13)=abb303(13)+abb303(15)
      abb303(13)=abb303(13)*abb303(7)
      abb303(15)=4.0_ki*abb303(13)
      abb303(20)=-2.0_ki*abb303(20)
      abb303(48)=spak2k4*abb303(71)
      abb303(50)=-spak1k2*abb303(77)
      abb303(48)=abb303(50)+abb303(48)
      abb303(48)=abb303(69)*abb303(48)
      abb303(36)=-abb303(36)*abb303(59)
      abb303(47)=spak2l5*abb303(47)
      abb303(36)=abb303(47)+abb303(36)
      abb303(36)=spbe7l5*abb303(36)
      abb303(36)=abb303(48)+abb303(36)
      abb303(36)=2.0_ki*abb303(36)
      abb303(47)=-3.0_ki*abb303(71)-abb303(63)
      abb303(47)=spak2k4*abb303(47)
      abb303(42)=3.0_ki*abb303(77)+abb303(42)
      abb303(42)=spak1k2*abb303(42)
      abb303(34)=abb303(47)+abb303(42)+abb303(34)
      abb303(34)=4.0_ki*abb303(34)
      abb303(40)=-8.0_ki*abb303(40)
      abb303(9)=4.0_ki*spbe7l6*abb303(9)
      abb303(42)=abb303(59)*abb303(60)
      abb303(47)=-abb303(54)*abb303(60)
      abb303(48)=abb303(64)*spal5l6
      abb303(50)=4.0_ki*abb303(66)
      abb303(53)=-abb303(48)*abb303(50)
      abb303(48)=8.0_ki*abb303(48)
      abb303(54)=8.0_ki*abb303(66)
      abb303(59)=abb303(17)*abb303(54)
      abb303(17)=16.0_ki*abb303(17)
      abb303(25)=abb303(25)+abb303(41)
      abb303(38)=-abb303(25)*abb303(38)
      abb303(38)=abb303(73)+abb303(58)+abb303(99)+abb303(38)
      abb303(41)=-abb303(38)*abb303(50)
      abb303(38)=8.0_ki*abb303(38)
      abb303(58)=-abb303(49)*abb303(54)
      abb303(49)=16.0_ki*abb303(49)
      abb303(60)=spak4e7*abb303(88)
      abb303(61)=spak1e7*abb303(89)
      abb303(60)=abb303(60)+abb303(61)
      abb303(60)=4.0_ki*spal6k7*abb303(60)
      abb303(43)=abb303(43)*spak1e7
      abb303(37)=abb303(37)*spak4e7
      abb303(37)=abb303(43)+abb303(37)
      abb303(43)=-4.0_ki*abb303(37)
      abb303(37)=-2.0_ki*abb303(37)
      abb303(13)=-2.0_ki*abb303(13)
      abb303(61)=abb303(67)*spal5l6
      abb303(62)=-abb303(61)*abb303(50)
      abb303(61)=8.0_ki*abb303(61)
      abb303(63)=abb303(22)*abb303(54)
      abb303(22)=16.0_ki*abb303(22)
      abb303(25)=abb303(25)*abb303(51)
      abb303(25)=-abb303(79)-abb303(46)-abb303(56)+abb303(25)
      abb303(46)=abb303(25)*abb303(50)
      abb303(25)=-8.0_ki*abb303(25)
      abb303(50)=-abb303(72)*abb303(54)
      abb303(51)=16.0_ki*abb303(72)
      R2d303=0.0_ki
      rat2 = rat2 + R2d303
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='303' value='", &
          & R2d303, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd303h1