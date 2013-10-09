module     p1_dbarc_epnebbbarg_abbrevd336h1
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(123), public :: abb336
   complex(ki), public :: R2d336
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
      abb336(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb336(2)=1.0_ki/(mB**2-es67-es56+es567)
      abb336(3)=es234**(-1)
      abb336(4)=es567**(-1)
      abb336(5)=spak2l5**(-1)
      abb336(6)=spbl6k2**(-1)
      abb336(7)=spbl5k2**(-1)
      abb336(8)=sqrt(mB**2)
      abb336(9)=1.0_ki/(es34+es567-es12-es234)
      abb336(10)=NC*c1
      abb336(10)=c2-abb336(10)
      abb336(11)=TR*gW
      abb336(10)=abb336(10)*abb336(11)**2*i_*CVDC*abb336(4)*abb336(2)
      abb336(11)=-abb336(1)*abb336(10)
      abb336(12)=spak1k4*abb336(9)
      abb336(13)=abb336(12)*spbe7l5
      abb336(14)=abb336(11)*abb336(13)
      abb336(15)=spbk3k1*spak1l6
      abb336(16)=abb336(14)*abb336(15)
      abb336(17)=abb336(3)*abb336(1)
      abb336(18)=abb336(17)*spbk3k2
      abb336(19)=-abb336(18)*abb336(10)
      abb336(20)=abb336(19)*spak1l6
      abb336(21)=spak2k4*spbe7l5
      abb336(22)=abb336(21)*abb336(20)
      abb336(16)=abb336(16)-abb336(22)
      abb336(22)=spbl5k2*spal5e7
      abb336(23)=abb336(16)*abb336(22)
      abb336(17)=abb336(17)*spbk3k2**2
      abb336(24)=-abb336(17)*abb336(10)
      abb336(25)=abb336(24)*abb336(5)
      abb336(26)=mB**2
      abb336(27)=-abb336(26)*abb336(25)
      abb336(28)=abb336(27)*spak1l6
      abb336(29)=abb336(7)*spak2e7
      abb336(30)=spbe7l5*spak3k4
      abb336(31)=abb336(29)*abb336(30)
      abb336(32)=abb336(28)*abb336(31)
      abb336(33)=abb336(30)*spal5e7
      abb336(34)=abb336(33)*spbl5k3
      abb336(35)=abb336(34)*abb336(20)
      abb336(23)=abb336(23)+abb336(35)+abb336(32)
      abb336(35)=-spbk7k2*spae7k7*abb336(16)
      abb336(36)=abb336(14)*spbk4k3
      abb336(37)=spbk7k2*spae7k7
      abb336(38)=abb336(37)*abb336(36)
      abb336(39)=abb336(36)*abb336(22)
      abb336(40)=abb336(38)-abb336(39)
      abb336(40)=abb336(40)*spak4l6
      abb336(41)=-mB*abb336(10)
      abb336(42)=abb336(18)*abb336(5)
      abb336(43)=-abb336(8)*abb336(42)*abb336(41)
      abb336(44)=spak1l6*spak3k4
      abb336(45)=abb336(43)*abb336(44)
      abb336(46)=spak2e7*abb336(45)*spbe7k3
      abb336(47)=-abb336(17)*abb336(41)
      abb336(48)=abb336(30)*abb336(8)
      abb336(49)=abb336(48)*abb336(6)
      abb336(50)=abb336(47)*abb336(49)
      abb336(51)=abb336(50)*spak1e7
      abb336(52)=abb336(20)*abb336(30)
      abb336(53)=abb336(52)*spae7k7
      abb336(54)=abb336(53)*spbk7k3
      abb336(55)=abb336(6)*spak3k4
      abb336(56)=abb336(55)*spbk7e7
      abb336(57)=abb336(56)*abb336(27)
      abb336(58)=abb336(57)*spak2e7
      abb336(59)=abb336(58)*spak1k7
      abb336(60)=abb336(30)*spak2e7
      abb336(61)=abb336(27)*abb336(60)
      abb336(62)=spak1l5*abb336(6)
      abb336(63)=abb336(61)*abb336(62)
      abb336(40)=abb336(54)-abb336(59)-abb336(35)-abb336(23)-abb336(51)+abb336(&
      &63)+abb336(46)+abb336(40)
      abb336(46)=2.0_ki*abb336(40)
      abb336(51)=spae7k7*spbk7l5
      abb336(54)=abb336(51)*spbe7k2
      abb336(59)=2.0_ki*abb336(7)
      abb336(64)=abb336(54)*abb336(59)
      abb336(26)=-abb336(26)*abb336(10)
      abb336(65)=abb336(5)*abb336(1)
      abb336(66)=-abb336(65)*abb336(26)
      abb336(67)=abb336(66)*abb336(12)
      abb336(68)=abb336(64)*abb336(67)
      abb336(69)=spak4l6*spbk4k3
      abb336(70)=abb336(68)*abb336(69)
      abb336(71)=abb336(51)*abb336(7)
      abb336(72)=abb336(71)*abb336(67)
      abb336(73)=abb336(72)*abb336(15)
      abb336(74)=-abb336(42)*abb336(26)
      abb336(71)=abb336(71)*abb336(74)
      abb336(75)=spak2k4*spak1l6
      abb336(76)=abb336(71)*abb336(75)
      abb336(73)=abb336(73)-abb336(76)
      abb336(76)=2.0_ki*spbe7k2
      abb336(77)=abb336(73)*abb336(76)
      abb336(78)=mB**3
      abb336(79)=abb336(5)**2
      abb336(80)=-abb336(19)*abb336(78)*abb336(79)
      abb336(81)=abb336(44)*abb336(8)
      abb336(82)=abb336(81)*abb336(29)
      abb336(83)=2.0_ki*spbe7k3
      abb336(84)=abb336(80)*abb336(83)*abb336(82)
      abb336(85)=mB**4
      abb336(86)=abb336(85)*abb336(79)
      abb336(87)=-abb336(86)*abb336(24)
      abb336(88)=2.0_ki*abb336(87)
      abb336(89)=abb336(56)*abb336(29)
      abb336(90)=spak1k7*abb336(89)*abb336(88)
      abb336(91)=spak1l6*abb336(60)*abb336(87)*abb336(7)**2
      abb336(62)=abb336(31)*abb336(88)*abb336(62)
      abb336(70)=-abb336(62)-abb336(84)+abb336(70)+abb336(77)+abb336(90)-abb336&
      &(91)
      abb336(77)=es71+es12-es712
      abb336(70)=-abb336(70)*abb336(77)
      abb336(24)=-spbk7e7*abb336(82)*abb336(79)*abb336(24)*abb336(78)
      abb336(79)=abb336(74)*spak1l6
      abb336(82)=abb336(43)*spak1l6
      abb336(84)=abb336(79)+abb336(82)
      abb336(88)=-spak2k4*spbk7l5*abb336(84)
      abb336(90)=abb336(67)*spak1l6
      abb336(65)=-abb336(65)*abb336(41)
      abb336(92)=abb336(12)*abb336(8)
      abb336(93)=abb336(65)*abb336(92)
      abb336(94)=abb336(93)*spak1l6
      abb336(95)=abb336(90)+abb336(94)
      abb336(96)=spbk3k1*spbk7l5
      abb336(95)=abb336(95)*abb336(96)
      abb336(88)=abb336(88)+abb336(95)
      abb336(88)=spal5e7*abb336(88)*abb336(76)
      abb336(95)=spal5e7*spbk7l5
      abb336(97)=abb336(95)*abb336(30)
      abb336(28)=abb336(7)*abb336(28)*abb336(97)
      abb336(98)=abb336(93)*abb336(15)
      abb336(99)=abb336(75)*abb336(43)
      abb336(99)=abb336(99)-abb336(98)
      abb336(100)=2.0_ki*spbk7e7
      abb336(99)=abb336(99)*abb336(100)*abb336(22)
      abb336(24)=abb336(88)+abb336(99)+abb336(28)+3.0_ki*abb336(24)
      abb336(24)=spak2k7*abb336(24)
      abb336(16)=-abb336(16)*abb336(95)
      abb336(28)=abb336(43)*spak2e7
      abb336(88)=abb336(75)*abb336(28)
      abb336(98)=-spak2e7*abb336(98)
      abb336(88)=abb336(88)+abb336(98)
      abb336(88)=spbk7e7*abb336(88)
      abb336(16)=abb336(16)+abb336(88)
      abb336(16)=spbl5k2*abb336(16)
      abb336(84)=spak2e7*abb336(84)
      abb336(88)=2.0_ki*abb336(51)
      abb336(98)=-abb336(20)*abb336(88)
      abb336(84)=abb336(84)+abb336(98)
      abb336(84)=spak2k4*spbe7l5*abb336(84)
      abb336(98)=abb336(66)*abb336(13)
      abb336(65)=abb336(8)*abb336(65)*abb336(13)
      abb336(99)=abb336(98)+abb336(65)
      abb336(99)=abb336(99)*spak2e7
      abb336(100)=abb336(88)*abb336(14)
      abb336(99)=abb336(99)-abb336(100)
      abb336(100)=-spbk3k1*spak1l6*abb336(99)
      abb336(84)=abb336(84)+abb336(100)
      abb336(84)=spbk7k2*abb336(84)
      abb336(36)=abb336(36)*abb336(95)
      abb336(100)=abb336(93)*spbk4k3
      abb336(101)=spbk7e7*spak2e7
      abb336(102)=-abb336(101)*abb336(100)
      abb336(102)=-abb336(36)+abb336(102)
      abb336(102)=spbl5k2*abb336(102)
      abb336(99)=-spbk7k2*spbk4k3*abb336(99)
      abb336(99)=abb336(102)+abb336(99)
      abb336(99)=spak4l6*abb336(99)
      abb336(102)=2.0_ki*spbk7l5
      abb336(32)=-abb336(32)*abb336(102)
      abb336(16)=abb336(99)+abb336(84)+abb336(32)+abb336(16)
      abb336(16)=spal5k7*abb336(16)
      abb336(32)=-abb336(78)*abb336(25)
      abb336(84)=abb336(55)*abb336(8)
      abb336(99)=abb336(84)*abb336(32)
      abb336(102)=abb336(64)*abb336(99)
      abb336(103)=abb336(87)*spak2k7
      abb336(104)=abb336(103)*abb336(59)
      abb336(105)=abb336(95)*spbe7k2
      abb336(106)=abb336(55)*abb336(104)*abb336(105)
      abb336(31)=abb336(31)*spbk7k2
      abb336(107)=spal5k7*abb336(6)
      abb336(108)=-abb336(87)*abb336(31)*abb336(107)
      abb336(49)=abb336(32)*abb336(49)
      abb336(109)=abb336(37)*abb336(7)
      abb336(110)=abb336(49)*abb336(109)
      abb336(102)=abb336(108)+abb336(106)+abb336(110)+abb336(102)
      abb336(102)=spak1k2*abb336(102)
      abb336(106)=abb336(11)*abb336(12)
      abb336(108)=abb336(106)*abb336(15)
      abb336(110)=abb336(20)*spak2k4
      abb336(108)=abb336(108)-abb336(110)
      abb336(110)=-abb336(51)*abb336(108)
      abb336(111)=abb336(76)*abb336(110)
      abb336(35)=abb336(35)+abb336(111)
      abb336(111)=abb336(8)**2
      abb336(35)=abb336(111)*abb336(35)
      abb336(112)=spbk4k3*abb336(106)
      abb336(113)=abb336(112)*abb336(54)
      abb336(38)=-abb336(38)-2.0_ki*abb336(113)
      abb336(38)=abb336(111)*abb336(38)
      abb336(114)=abb336(93)+abb336(67)
      abb336(115)=abb336(114)*spbk4k3
      abb336(116)=abb336(115)*abb336(105)
      abb336(117)=-spbk7e7*abb336(22)*abb336(100)
      abb336(116)=abb336(117)+abb336(116)
      abb336(117)=2.0_ki*spak2k7
      abb336(116)=abb336(116)*abb336(117)
      abb336(38)=abb336(116)+abb336(38)
      abb336(38)=spak4l6*abb336(38)
      abb336(116)=abb336(57)*abb336(117)
      abb336(118)=-abb336(116)+abb336(50)
      abb336(118)=abb336(95)*abb336(118)
      abb336(58)=abb336(111)*abb336(58)
      abb336(119)=abb336(29)*spbk7k2
      abb336(120)=abb336(49)*abb336(119)
      abb336(58)=abb336(120)+abb336(58)+abb336(118)
      abb336(58)=spak1k7*abb336(58)
      abb336(118)=-abb336(20)*abb336(97)
      abb336(120)=-abb336(79)*abb336(31)
      abb336(121)=-abb336(45)*abb336(101)
      abb336(118)=abb336(120)+abb336(118)+abb336(121)
      abb336(118)=spal5k7*abb336(118)
      abb336(120)=abb336(74)*abb336(7)
      abb336(105)=abb336(44)*abb336(120)*abb336(105)
      abb336(121)=-spbk7e7*spal5e7*abb336(45)
      abb336(105)=abb336(121)+abb336(105)
      abb336(105)=abb336(105)*abb336(117)
      abb336(105)=abb336(105)+abb336(118)
      abb336(105)=spbl5k3*abb336(105)
      abb336(118)=abb336(6)*abb336(27)*abb336(117)*abb336(97)
      abb336(121)=3.0_ki*abb336(51)
      abb336(122)=abb336(121)*abb336(50)
      abb336(61)=-spbk7l5*abb336(61)*abb336(107)
      abb336(61)=abb336(61)+abb336(122)+abb336(118)
      abb336(61)=spak1l5*abb336(61)
      abb336(118)=abb336(74)*abb336(44)
      abb336(122)=-spak2k7*abb336(64)*abb336(118)
      abb336(123)=-abb336(60)*abb336(82)
      abb336(52)=abb336(88)*abb336(52)
      abb336(52)=abb336(123)+abb336(52)
      abb336(52)=spal5k7*abb336(52)
      abb336(53)=-abb336(111)*abb336(53)
      abb336(52)=abb336(52)+abb336(53)+abb336(122)
      abb336(52)=spbk7k3*abb336(52)
      abb336(53)=abb336(111)*abb336(57)
      abb336(57)=-spbe7k2*abb336(7)*spbk7l5*abb336(99)
      abb336(53)=abb336(53)+abb336(57)
      abb336(53)=spak2k7*abb336(53)
      abb336(57)=spal5k7*spbk7l5
      abb336(50)=-abb336(50)*abb336(57)
      abb336(50)=abb336(53)+abb336(50)
      abb336(50)=spak1e7*abb336(50)
      abb336(53)=abb336(19)*abb336(44)
      abb336(99)=-abb336(111)*abb336(51)*abb336(53)
      abb336(95)=spak2k7*abb336(95)*abb336(45)
      abb336(95)=abb336(99)+abb336(95)
      abb336(83)=abb336(95)*abb336(83)
      abb336(16)=abb336(52)+abb336(83)+abb336(61)+2.0_ki*abb336(50)+abb336(105)&
      &+abb336(58)+abb336(102)+abb336(16)+abb336(38)+abb336(24)+abb336(70)+abb3&
      &36(35)
      abb336(16)=2.0_ki*abb336(16)
      abb336(24)=5.0_ki*abb336(93)
      abb336(35)=abb336(24)-abb336(67)
      abb336(35)=abb336(35)*abb336(69)
      abb336(38)=-abb336(79)+5.0_ki*abb336(82)
      abb336(38)=abb336(38)*spak2k4
      abb336(24)=abb336(24)*spak1l6
      abb336(24)=abb336(24)-abb336(90)
      abb336(24)=abb336(24)*spbk3k1
      abb336(50)=abb336(55)*spak1k2
      abb336(52)=abb336(50)*abb336(87)
      abb336(58)=abb336(52)*abb336(59)
      abb336(24)=abb336(35)-abb336(38)+abb336(24)+abb336(58)
      abb336(24)=abb336(24)*abb336(77)
      abb336(35)=-abb336(18)*abb336(41)
      abb336(38)=2.0_ki*abb336(35)
      abb336(58)=-spak1l6*abb336(38)
      abb336(61)=3.0_ki*abb336(8)
      abb336(20)=abb336(20)*abb336(61)
      abb336(20)=abb336(58)+abb336(20)
      abb336(20)=abb336(8)*abb336(20)
      abb336(18)=-abb336(18)*abb336(26)
      abb336(58)=spak1l6*abb336(18)
      abb336(20)=abb336(58)+abb336(20)
      abb336(20)=spak2k4*abb336(20)
      abb336(58)=abb336(11)*abb336(92)
      abb336(41)=-abb336(1)*abb336(41)
      abb336(70)=abb336(41)*abb336(12)
      abb336(58)=-3.0_ki*abb336(58)+2.0_ki*abb336(70)
      abb336(58)=abb336(58)*abb336(8)
      abb336(12)=abb336(12)*abb336(26)*abb336(1)
      abb336(12)=abb336(58)+abb336(12)
      abb336(58)=spbk3k1*spak1l6*abb336(12)
      abb336(12)=abb336(12)*abb336(69)
      abb336(12)=abb336(12)+abb336(20)+abb336(58)
      abb336(12)=spbl5k2*abb336(12)
      abb336(17)=-abb336(17)*abb336(26)
      abb336(20)=abb336(8)*abb336(47)
      abb336(20)=abb336(17)-5.0_ki*abb336(20)
      abb336(20)=spak1k7*abb336(20)*abb336(55)
      abb336(26)=abb336(27)*abb336(44)
      abb336(58)=-spak2k7*abb336(59)*abb336(26)
      abb336(70)=abb336(27)*abb336(55)
      abb336(83)=abb336(70)*spak1l5
      abb336(87)=abb336(117)*abb336(83)
      abb336(20)=abb336(87)+abb336(20)+abb336(58)
      abb336(20)=spbk7l5*abb336(20)
      abb336(38)=abb336(44)*abb336(38)
      abb336(58)=abb336(19)*abb336(81)
      abb336(38)=abb336(38)-3.0_ki*abb336(58)
      abb336(38)=abb336(8)*abb336(38)
      abb336(44)=-abb336(18)*abb336(44)
      abb336(57)=abb336(53)*abb336(57)
      abb336(38)=-2.0_ki*abb336(57)+abb336(44)+abb336(38)
      abb336(38)=spbl5k3*abb336(38)
      abb336(44)=abb336(112)*spak4l6
      abb336(44)=abb336(108)+abb336(44)
      abb336(57)=spbl5k2*abb336(44)
      abb336(58)=2.0_ki*spal5k7
      abb336(58)=-abb336(58)*spbk7l5*abb336(57)
      abb336(61)=abb336(27)*abb336(61)
      abb336(61)=2.0_ki*abb336(32)+abb336(61)
      abb336(61)=abb336(8)*abb336(61)
      abb336(25)=-abb336(85)*abb336(25)
      abb336(61)=-abb336(25)+abb336(61)
      abb336(61)=spak1k2*abb336(6)*spak3k4*abb336(61)
      abb336(85)=-abb336(118)+5.0_ki*abb336(45)
      abb336(87)=spbk7k3*spak2k7
      abb336(85)=abb336(85)*abb336(87)
      abb336(12)=abb336(85)+abb336(38)+abb336(61)+abb336(58)+abb336(20)+abb336(&
      &12)+abb336(24)
      abb336(12)=4.0_ki*abb336(12)
      abb336(20)=abb336(113)+abb336(39)
      abb336(20)=abb336(20)*spak4l6
      abb336(24)=abb336(110)*spbe7k2
      abb336(20)=-abb336(63)+abb336(20)-abb336(24)+abb336(23)
      abb336(23)=abb336(47)*abb336(48)
      abb336(17)=abb336(17)*abb336(30)
      abb336(17)=abb336(23)+abb336(17)
      abb336(17)=abb336(17)*abb336(6)
      abb336(17)=abb336(17)-abb336(116)
      abb336(17)=abb336(17)*spak1e7
      abb336(23)=abb336(118)+abb336(45)
      abb336(23)=abb336(23)*spak2e7
      abb336(24)=abb336(88)*abb336(53)
      abb336(23)=abb336(23)-abb336(24)
      abb336(23)=abb336(23)*spbe7k3
      abb336(17)=abb336(17)-abb336(23)+2.0_ki*abb336(20)
      abb336(17)=4.0_ki*abb336(17)
      abb336(20)=abb336(53)*spbl5k3
      abb336(20)=abb336(20)+abb336(57)
      abb336(23)=abb336(50)*abb336(27)
      abb336(24)=-abb336(23)+abb336(20)
      abb336(24)=32.0_ki*abb336(24)
      abb336(20)=-2.0_ki*abb336(23)+abb336(20)
      abb336(20)=16.0_ki*abb336(20)
      abb336(23)=spbe7l5*abb336(74)*abb336(75)
      abb336(15)=-abb336(15)*abb336(98)
      abb336(15)=abb336(23)+abb336(15)
      abb336(15)=spal5e7*abb336(15)
      abb336(23)=-spbe7k2*abb336(73)
      abb336(27)=abb336(13)*spbk4k3
      abb336(38)=abb336(27)*abb336(66)
      abb336(39)=abb336(38)*spal5e7
      abb336(50)=-spbk4k3*abb336(7)*abb336(67)*abb336(54)
      abb336(50)=-abb336(39)+abb336(50)
      abb336(50)=spak4l6*abb336(50)
      abb336(34)=-spak1l6*abb336(120)*abb336(34)
      abb336(15)=abb336(34)+abb336(50)+abb336(23)+abb336(91)+abb336(15)
      abb336(23)=abb336(25)*abb336(30)
      abb336(25)=abb336(32)*abb336(48)
      abb336(23)=abb336(23)+abb336(25)
      abb336(23)=abb336(6)*abb336(7)*abb336(23)
      abb336(25)=-abb336(56)*abb336(104)
      abb336(23)=abb336(23)+abb336(25)
      abb336(23)=spak1e7*abb336(23)
      abb336(25)=abb336(86)*abb336(53)
      abb336(32)=-abb336(80)*abb336(81)
      abb336(25)=abb336(25)+abb336(32)
      abb336(25)=abb336(25)*abb336(29)
      abb336(32)=abb336(118)*abb336(59)
      abb336(34)=-abb336(51)*abb336(32)
      abb336(25)=abb336(25)+abb336(34)
      abb336(25)=spbe7k3*abb336(25)
      abb336(15)=abb336(25)-abb336(62)+2.0_ki*abb336(15)+abb336(23)
      abb336(15)=4.0_ki*abb336(15)
      abb336(23)=2.0_ki*abb336(79)-abb336(82)
      abb336(23)=spak2k4*abb336(23)
      abb336(25)=-2.0_ki*abb336(90)+abb336(94)
      abb336(25)=spbk3k1*abb336(25)
      abb336(34)=-2.0_ki*abb336(67)+abb336(93)
      abb336(34)=abb336(34)*abb336(69)
      abb336(50)=-abb336(7)*abb336(52)
      abb336(32)=-spbl5k3*abb336(32)
      abb336(23)=abb336(32)+abb336(50)+abb336(34)+abb336(23)+abb336(25)
      abb336(23)=16.0_ki*abb336(23)
      abb336(25)=-4.0_ki*abb336(40)
      abb336(32)=-spbk7k2*abb336(44)
      abb336(34)=-spbk7k3*abb336(53)
      abb336(32)=abb336(34)+abb336(32)
      abb336(32)=8.0_ki*abb336(32)
      abb336(34)=abb336(74)*spak3k4
      abb336(40)=abb336(43)*spak3k4
      abb336(44)=abb336(34)+abb336(40)
      abb336(44)=abb336(44)*abb336(101)
      abb336(31)=abb336(31)*abb336(74)
      abb336(50)=abb336(19)*abb336(97)
      abb336(31)=abb336(44)+abb336(31)-abb336(50)
      abb336(44)=-spak1k7*abb336(31)
      abb336(50)=abb336(30)*abb336(37)*abb336(120)
      abb336(51)=abb336(34)*abb336(64)
      abb336(33)=abb336(33)*abb336(74)
      abb336(33)=abb336(50)+abb336(33)+abb336(51)
      abb336(50)=spak1k2*abb336(33)
      abb336(51)=abb336(117)*spbk7e7
      abb336(52)=abb336(40)*abb336(51)
      abb336(48)=abb336(35)*abb336(48)
      abb336(52)=abb336(52)-abb336(48)
      abb336(53)=-spak1e7*abb336(52)
      abb336(57)=abb336(43)*abb336(60)
      abb336(58)=abb336(121)*abb336(19)
      abb336(59)=abb336(58)*abb336(30)
      abb336(57)=abb336(57)+abb336(59)
      abb336(59)=-spak1l5*abb336(57)
      abb336(44)=abb336(59)+abb336(53)+abb336(50)+abb336(44)
      abb336(44)=2.0_ki*abb336(44)
      abb336(34)=abb336(34)-abb336(40)
      abb336(40)=spak1k2*abb336(34)
      abb336(19)=abb336(19)*spbk7l5
      abb336(50)=spak3k4*abb336(19)
      abb336(53)=spak1k7*abb336(50)
      abb336(40)=abb336(40)+abb336(53)
      abb336(40)=16.0_ki*abb336(40)
      abb336(53)=abb336(120)*abb336(21)
      abb336(13)=abb336(13)*spbk3k1
      abb336(59)=abb336(13)*abb336(66)
      abb336(61)=abb336(59)*abb336(7)
      abb336(53)=abb336(53)-abb336(61)
      abb336(53)=abb336(53)*abb336(37)
      abb336(61)=abb336(72)*spbk3k1
      abb336(62)=abb336(71)*spak2k4
      abb336(61)=abb336(61)-abb336(62)
      abb336(61)=abb336(61)*abb336(76)
      abb336(62)=abb336(21)*abb336(74)
      abb336(59)=abb336(62)-abb336(59)
      abb336(62)=abb336(59)*spal5e7
      abb336(53)=-abb336(53)+abb336(61)-abb336(62)
      abb336(61)=spak1k2*abb336(53)
      abb336(62)=abb336(43)+abb336(74)
      abb336(62)=abb336(62)*spak2k4
      abb336(63)=abb336(114)*spbk3k1
      abb336(62)=abb336(62)-abb336(63)
      abb336(62)=abb336(62)*abb336(101)
      abb336(11)=spbk7l5*abb336(13)*abb336(11)
      abb336(19)=spak2k4*abb336(19)
      abb336(63)=abb336(19)*spbe7l5
      abb336(11)=abb336(11)-abb336(63)
      abb336(11)=abb336(11)*spal5e7
      abb336(59)=abb336(59)*abb336(119)
      abb336(11)=abb336(62)+abb336(11)+abb336(59)
      abb336(59)=spak1k7*abb336(11)
      abb336(62)=abb336(68)*spbk4k3
      abb336(63)=abb336(109)*abb336(38)
      abb336(39)=abb336(62)+abb336(63)+abb336(39)
      abb336(62)=-spak2k4*abb336(39)
      abb336(63)=abb336(43)*spak2k4
      abb336(64)=abb336(93)*spbk3k1
      abb336(63)=abb336(63)-abb336(64)
      abb336(63)=abb336(63)*abb336(51)
      abb336(35)=abb336(35)*abb336(8)
      abb336(64)=abb336(35)*abb336(21)
      abb336(41)=abb336(41)*abb336(8)
      abb336(13)=abb336(41)*abb336(13)
      abb336(13)=abb336(63)-abb336(64)+abb336(13)
      abb336(63)=spak1e7*abb336(13)
      abb336(28)=abb336(28)+abb336(58)
      abb336(21)=abb336(28)*abb336(21)
      abb336(14)=abb336(121)*abb336(14)
      abb336(28)=abb336(65)*spak2e7
      abb336(14)=abb336(14)+abb336(28)
      abb336(28)=abb336(14)*spbk3k1
      abb336(21)=abb336(21)-abb336(28)
      abb336(28)=spak1l5*abb336(21)
      abb336(58)=abb336(115)*abb336(101)
      abb336(38)=abb336(119)*abb336(38)
      abb336(36)=-abb336(36)+abb336(58)+abb336(38)
      abb336(38)=-spak4k7*abb336(36)
      abb336(27)=abb336(41)*abb336(27)
      abb336(41)=abb336(100)*abb336(51)
      abb336(27)=abb336(27)-abb336(41)
      abb336(41)=spak4e7*abb336(27)
      abb336(14)=abb336(14)*spbk4k3
      abb336(51)=-spak4l5*abb336(14)
      abb336(28)=abb336(51)+abb336(41)+abb336(38)+abb336(28)+abb336(63)+abb336(&
      &59)+abb336(61)+abb336(62)
      abb336(28)=2.0_ki*abb336(28)
      abb336(38)=abb336(43)-abb336(74)
      abb336(38)=abb336(38)*spak2k4
      abb336(41)=abb336(93)-abb336(67)
      abb336(43)=abb336(41)*spbk3k1
      abb336(38)=abb336(38)-abb336(43)
      abb336(43)=spak1k2*abb336(38)
      abb336(41)=abb336(41)*spbk4k3
      abb336(51)=spak2k4*abb336(41)
      abb336(58)=abb336(96)*abb336(106)
      abb336(19)=abb336(58)-abb336(19)
      abb336(58)=spak1k7*abb336(19)
      abb336(59)=abb336(112)*spbk7l5
      abb336(61)=spak4k7*abb336(59)
      abb336(43)=abb336(61)+abb336(58)+abb336(51)+abb336(43)
      abb336(43)=16.0_ki*abb336(43)
      abb336(36)=spal6k7*abb336(36)
      abb336(39)=spak2l6*abb336(39)
      abb336(27)=-spal6e7*abb336(27)
      abb336(14)=-spal5l6*abb336(14)
      abb336(14)=abb336(14)+abb336(27)+abb336(36)+abb336(39)
      abb336(14)=2.0_ki*abb336(14)
      abb336(27)=-spak2l6*abb336(41)
      abb336(36)=-spal6k7*abb336(59)
      abb336(27)=abb336(36)+abb336(27)
      abb336(27)=16.0_ki*abb336(27)
      abb336(36)=8.0_ki*spak1k7*abb336(70)
      abb336(26)=-abb336(7)*abb336(26)
      abb336(26)=abb336(26)+abb336(83)
      abb336(26)=8.0_ki*abb336(26)
      abb336(39)=8.0_ki*abb336(45)
      abb336(41)=-8.0_ki*abb336(47)*abb336(84)
      abb336(31)=spal6k7*abb336(31)
      abb336(33)=spak2l6*abb336(33)
      abb336(30)=abb336(18)*abb336(30)
      abb336(45)=abb336(30)-abb336(48)
      abb336(45)=abb336(45)*abb336(6)
      abb336(47)=abb336(56)*abb336(74)
      abb336(51)=abb336(117)*abb336(47)
      abb336(51)=abb336(51)-abb336(45)
      abb336(22)=abb336(22)*abb336(51)
      abb336(30)=abb336(30)+abb336(48)
      abb336(30)=abb336(30)*abb336(6)
      abb336(37)=abb336(37)*abb336(30)
      abb336(48)=spbl5k2*spak2e7*abb336(47)
      abb336(51)=abb336(60)*abb336(74)
      abb336(56)=-spbk7k2*abb336(6)*abb336(51)
      abb336(48)=abb336(48)+abb336(56)
      abb336(48)=spal5k7*abb336(48)
      abb336(52)=spal6e7*abb336(52)
      abb336(56)=-spal5l6*abb336(57)
      abb336(57)=abb336(35)*abb336(55)
      abb336(54)=abb336(54)*abb336(57)
      abb336(22)=abb336(56)+abb336(52)+abb336(33)+abb336(31)+abb336(48)+2.0_ki*&
      &abb336(54)+abb336(37)+abb336(22)
      abb336(22)=2.0_ki*abb336(22)
      abb336(18)=abb336(35)-abb336(18)
      abb336(18)=abb336(18)*abb336(55)
      abb336(31)=spbl5k2*abb336(18)
      abb336(33)=spak2l6*abb336(34)
      abb336(34)=abb336(74)*abb336(55)
      abb336(35)=-abb336(34)*abb336(77)
      abb336(37)=-spal6k7*abb336(50)
      abb336(31)=abb336(33)+abb336(31)+abb336(37)+abb336(35)
      abb336(31)=16.0_ki*abb336(31)
      abb336(11)=-spal6k7*abb336(11)
      abb336(33)=spak2l6*abb336(53)
      abb336(35)=-spal5e7*abb336(117)
      abb336(37)=-spal5k7*spak2e7
      abb336(35)=abb336(37)+abb336(35)
      abb336(35)=abb336(47)*abb336(35)
      abb336(37)=spal5e7*abb336(45)
      abb336(35)=abb336(37)+abb336(35)
      abb336(35)=spbl5k3*abb336(35)
      abb336(10)=-spak2e7*abb336(84)*abb336(78)*abb336(42)*abb336(10)
      abb336(37)=-abb336(88)*abb336(57)
      abb336(10)=abb336(10)+abb336(37)
      abb336(10)=spbe7k3*abb336(10)
      abb336(13)=-spal6e7*abb336(13)
      abb336(21)=spal5l6*abb336(21)
      abb336(37)=abb336(89)*abb336(103)
      abb336(30)=-spae7k7*abb336(30)
      abb336(42)=abb336(107)*abb336(51)
      abb336(30)=abb336(30)+abb336(42)
      abb336(30)=spbk7k3*abb336(30)
      abb336(29)=abb336(29)*abb336(49)
      abb336(10)=abb336(21)+abb336(13)+abb336(30)+abb336(10)+abb336(33)+abb336(&
      &11)+abb336(35)+abb336(29)+3.0_ki*abb336(37)
      abb336(10)=2.0_ki*abb336(10)
      abb336(11)=spak2l6*abb336(38)
      abb336(13)=-spbl5k3*abb336(18)
      abb336(18)=-spal6k7*abb336(19)
      abb336(19)=abb336(34)*abb336(87)
      abb336(11)=abb336(19)+abb336(11)+abb336(13)+abb336(18)
      abb336(11)=16.0_ki*abb336(11)
      R2d336=abb336(46)
      rat2 = rat2 + R2d336
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='336' value='", &
          & R2d336, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd336h1
