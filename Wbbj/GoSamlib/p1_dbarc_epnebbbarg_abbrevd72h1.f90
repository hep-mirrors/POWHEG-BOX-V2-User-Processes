module     p1_dbarc_epnebbbarg_abbrevd72h1
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(122), public :: abb72
   complex(ki), public :: R2d72
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
      abb72(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb72(2)=1.0_ki/(mB**2-es67-es56+es567)
      abb72(3)=NC**(-1)
      abb72(4)=spak2l5**(-1)
      abb72(5)=spak2l6**(-1)
      abb72(6)=spbl6k2**(-1)
      abb72(7)=sqrt(mB**2)
      abb72(8)=mB**2
      abb72(9)=TR*gW
      abb72(9)=abb72(9)**2*i_*CVDC*abb72(2)*abb72(1)
      abb72(10)=abb72(9)*spak1l6
      abb72(11)=abb72(8)*abb72(10)
      abb72(12)=abb72(7)*mB
      abb72(13)=abb72(12)*abb72(10)
      abb72(14)=abb72(11)-abb72(13)
      abb72(15)=abb72(3)**2
      abb72(16)=abb72(15)*spbe7l5
      abb72(17)=-abb72(16)*abb72(14)
      abb72(18)=spak2e7*abb72(4)
      abb72(19)=abb72(18)*spak1k4
      abb72(20)=abb72(19)*c2
      abb72(21)=abb72(20)*abb72(17)
      abb72(22)=c1*spbe7l5
      abb72(23)=abb72(10)*abb72(22)
      abb72(24)=abb72(23)*abb72(12)
      abb72(25)=abb72(23)*abb72(8)
      abb72(26)=abb72(24)-abb72(25)
      abb72(27)=NC*spak1k4
      abb72(28)=abb72(27)*abb72(18)
      abb72(29)=abb72(28)*abb72(26)
      abb72(30)=abb72(25)*abb72(3)
      abb72(31)=abb72(23)*abb72(3)
      abb72(32)=abb72(31)*abb72(12)
      abb72(30)=abb72(30)-abb72(32)
      abb72(32)=2.0_ki*abb72(19)
      abb72(33)=abb72(32)*abb72(30)
      abb72(21)=abb72(33)+abb72(21)+abb72(29)
      abb72(29)=spak4l5*abb72(21)
      abb72(14)=-c1*abb72(14)
      abb72(28)=abb72(28)*abb72(14)
      abb72(33)=abb72(8)-abb72(12)
      abb72(34)=abb72(33)*abb72(10)
      abb72(35)=-abb72(15)*abb72(34)
      abb72(20)=abb72(20)*abb72(35)
      abb72(34)=-c1*abb72(3)*abb72(34)
      abb72(32)=abb72(32)*abb72(34)
      abb72(20)=-abb72(32)+abb72(20)+abb72(28)
      abb72(28)=spak4k7*spbk7e7
      abb72(32)=-abb72(20)*abb72(28)
      abb72(22)=abb72(22)*abb72(9)
      abb72(36)=2.0_ki*abb72(3)
      abb72(37)=NC-abb72(36)
      abb72(37)=abb72(22)*abb72(37)
      abb72(38)=abb72(12)*abb72(6)
      abb72(39)=abb72(38)*abb72(37)
      abb72(40)=abb72(9)*abb72(12)
      abb72(15)=abb72(15)*c2
      abb72(41)=abb72(15)*spbe7l5
      abb72(42)=abb72(40)*abb72(41)
      abb72(43)=abb72(42)*abb72(6)
      abb72(39)=abb72(43)+abb72(39)
      abb72(43)=spbk7k2*spae7k7
      abb72(44)=spbl5k2*spal5e7
      abb72(43)=abb72(43)-abb72(44)
      abb72(44)=spak1k4**2
      abb72(45)=-abb72(39)*abb72(43)*abb72(44)
      abb72(29)=abb72(29)+abb72(32)+abb72(45)
      abb72(29)=spbk2k1*abb72(29)
      abb72(32)=abb72(6)*spak1k4
      abb72(45)=abb72(36)*abb72(32)
      abb72(46)=abb72(32)*NC
      abb72(45)=abb72(46)-abb72(45)
      abb72(25)=abb72(25)*abb72(45)
      abb72(45)=abb72(41)*abb72(10)
      abb72(47)=abb72(8)*abb72(45)*abb72(32)
      abb72(47)=abb72(47)+abb72(25)
      abb72(48)=abb72(47)*spbk2k1
      abb72(49)=spak2k4*abb72(5)
      abb72(50)=abb72(43)*abb72(49)
      abb72(51)=abb72(48)*abb72(50)
      abb72(29)=abb72(51)+abb72(29)
      abb72(29)=spbk4k3*abb72(29)
      abb72(51)=abb72(36)*spak1k4
      abb72(51)=abb72(51)-abb72(27)
      abb72(52)=abb72(18)*c1
      abb72(53)=abb72(40)*abb72(52)
      abb72(54)=-abb72(53)*abb72(51)
      abb72(15)=abb72(15)*abb72(18)
      abb72(55)=abb72(15)*spak1k4
      abb72(56)=abb72(55)*abb72(40)
      abb72(54)=abb72(56)+abb72(54)
      abb72(56)=abb72(54)*spbe7k3
      abb72(57)=spbk2k1*abb72(56)
      abb72(58)=abb72(54)*spbk3k2
      abb72(59)=spbe7k1*abb72(58)
      abb72(60)=-abb72(22)*abb72(51)
      abb72(61)=abb72(41)*abb72(9)
      abb72(62)=spak1k4*abb72(61)
      abb72(62)=abb72(60)+abb72(62)
      abb72(63)=abb72(43)*abb72(62)
      abb72(64)=-spbk3k1*abb72(63)
      abb72(57)=abb72(59)+abb72(64)+abb72(57)
      abb72(59)=spak1l6**2
      abb72(57)=abb72(59)*abb72(57)
      abb72(64)=abb72(52)*abb72(13)
      abb72(65)=-abb72(64)*abb72(51)
      abb72(66)=abb72(55)*abb72(13)
      abb72(65)=abb72(65)+abb72(66)
      abb72(66)=abb72(65)*spbe7k3
      abb72(67)=spbk4k2*spak4l6
      abb72(68)=abb72(67)*abb72(66)
      abb72(69)=-abb72(23)*abb72(51)
      abb72(70)=abb72(45)*spak1k4
      abb72(70)=abb72(70)+abb72(69)
      abb72(71)=abb72(43)*abb72(70)
      abb72(72)=spbk4k3*spak4l6
      abb72(73)=-abb72(71)*abb72(72)
      abb72(57)=abb72(68)+abb72(73)+abb72(57)
      abb72(57)=spbl6k1*abb72(57)
      abb72(21)=spak1l5*abb72(21)
      abb72(68)=spak1k7*spbk7e7
      abb72(20)=-abb72(20)*abb72(68)
      abb72(73)=abb72(7)-mB
      abb72(31)=-abb72(31)*abb72(73)
      abb72(74)=2.0_ki*abb72(7)
      abb72(74)=abb72(31)*abb72(74)
      abb72(75)=mB*abb72(10)
      abb72(76)=abb72(10)*abb72(7)
      abb72(75)=abb72(75)-abb72(76)
      abb72(75)=c2*abb72(7)*abb72(16)*abb72(75)
      abb72(74)=abb72(74)-abb72(75)
      abb72(77)=abb72(74)*spak1k4
      abb72(73)=-abb72(7)*abb72(23)*abb72(73)
      abb72(27)=abb72(73)*abb72(27)
      abb72(27)=abb72(77)-abb72(27)
      abb72(77)=-spak1e7*abb72(27)
      abb72(20)=abb72(77)+abb72(21)+abb72(20)
      abb72(20)=spbk3k1*abb72(20)
      abb72(21)=abb72(52)*abb72(36)
      abb72(21)=abb72(21)-abb72(15)
      abb72(77)=abb72(52)*NC
      abb72(77)=abb72(21)-abb72(77)
      abb72(76)=abb72(76)*mB**3
      abb72(78)=-abb72(77)*abb72(76)*abb72(32)
      abb72(79)=abb72(5)*abb72(78)*spbe7k3
      abb72(80)=es234-es23-es34
      abb72(80)=abb72(79)*abb72(80)
      abb72(27)=-spak4e7*spbk4k3*abb72(27)
      abb72(20)=abb72(27)+abb72(80)+abb72(20)
      abb72(20)=spbk2k1*abb72(20)
      abb72(27)=abb72(6)*spbk3k2
      abb72(80)=abb72(76)*abb72(27)
      abb72(81)=-abb72(51)*abb72(80)*abb72(52)
      abb72(82)=abb72(80)*abb72(55)
      abb72(81)=abb72(82)+abb72(81)
      abb72(82)=abb72(81)*spbe7k1
      abb72(47)=-abb72(47)*abb72(43)*spbk3k1
      abb72(47)=abb72(82)+abb72(47)
      abb72(47)=abb72(5)*abb72(47)
      abb72(79)=spbk2k1*abb72(79)
      abb72(47)=abb72(79)+abb72(47)
      abb72(47)=es12*abb72(47)
      abb72(79)=abb72(65)*spbk3k2
      abb72(83)=abb72(79)*spbl6k1
      abb72(84)=-spak4l6*abb72(83)
      abb72(49)=spbk2k1*abb72(81)*abb72(49)
      abb72(49)=abb72(84)+abb72(49)
      abb72(49)=spbe7k4*abb72(49)
      abb72(20)=abb72(49)+abb72(47)+abb72(20)+abb72(57)+abb72(29)
      abb72(20)=4.0_ki*abb72(20)
      abb72(15)=abb72(15)*abb72(13)
      abb72(29)=abb72(64)*abb72(36)
      abb72(15)=abb72(29)-abb72(15)
      abb72(29)=abb72(64)*NC
      abb72(29)=-abb72(29)+abb72(15)
      abb72(47)=abb72(29)*spbl6k2
      abb72(49)=abb72(47)*spbe7k3
      abb72(57)=abb72(23)*NC
      abb72(36)=abb72(23)*abb72(36)
      abb72(81)=abb72(57)-abb72(36)
      abb72(84)=abb72(81)+abb72(45)
      abb72(85)=-abb72(84)*abb72(43)
      abb72(86)=abb72(85)*spbl6k3
      abb72(15)=-spbk3k2*abb72(15)
      abb72(87)=NC*spbk3k2
      abb72(64)=abb72(64)*abb72(87)
      abb72(15)=abb72(64)+abb72(15)
      abb72(64)=abb72(15)*spbe7l6
      abb72(49)=abb72(64)+abb72(49)-abb72(86)
      abb72(64)=spak4l6*abb72(49)
      abb72(86)=abb72(18)*spbk3k2
      abb72(88)=abb72(86)*c2
      abb72(89)=abb72(17)*abb72(88)
      abb72(90)=2.0_ki*abb72(86)
      abb72(91)=abb72(30)*abb72(90)
      abb72(92)=abb72(87)*abb72(18)
      abb72(93)=abb72(26)*abb72(92)
      abb72(89)=abb72(93)+abb72(89)+abb72(91)
      abb72(91)=abb72(89)*spak4l5
      abb72(93)=abb72(27)*abb72(8)
      abb72(94)=-abb72(93)*abb72(81)
      abb72(95)=abb72(45)*abb72(93)
      abb72(94)=abb72(94)-abb72(95)
      abb72(50)=-abb72(94)*abb72(50)
      abb72(96)=abb72(14)*abb72(92)
      abb72(88)=abb72(35)*abb72(88)
      abb72(90)=abb72(34)*abb72(90)
      abb72(88)=-abb72(90)+abb72(88)+abb72(96)
      abb72(90)=abb72(88)*abb72(28)
      abb72(96)=abb72(27)*abb72(12)
      abb72(97)=-abb72(96)*abb72(60)
      abb72(98)=abb72(42)*abb72(27)
      abb72(99)=abb72(98)*spak1k4
      abb72(97)=abb72(97)-abb72(99)
      abb72(99)=-abb72(97)*abb72(43)
      abb72(31)=abb72(31)*abb72(7)
      abb72(31)=-abb72(75)+2.0_ki*abb72(31)
      abb72(31)=spbk3k2*abb72(31)
      abb72(75)=abb72(73)*abb72(87)
      abb72(31)=-abb72(75)+abb72(31)
      abb72(75)=abb72(31)*spak4e7
      abb72(50)=-abb72(75)-abb72(99)+abb72(91)+abb72(50)-abb72(90)+abb72(64)
      abb72(64)=8.0_ki*abb72(50)
      abb72(75)=spae7k7*abb72(48)
      abb72(90)=spak3k4*spae7k7
      abb72(91)=abb72(94)*abb72(90)
      abb72(75)=abb72(75)+abb72(91)
      abb72(75)=spbk7k3*abb72(75)
      abb72(48)=-spal5e7*abb72(48)
      abb72(91)=spak3k4*spal5e7
      abb72(94)=-abb72(94)*abb72(91)
      abb72(48)=abb72(48)+abb72(94)
      abb72(48)=spbl5k3*abb72(48)
      abb72(94)=spbk7k1*spae7k7
      abb72(99)=spbl5k1*spal5e7
      abb72(94)=abb72(94)-abb72(99)
      abb72(99)=abb72(94)*abb72(70)*abb72(93)
      abb72(78)=-spbk2k1*abb72(78)
      abb72(80)=-spak3k4*abb72(80)*abb72(77)
      abb72(78)=abb72(78)+abb72(80)
      abb72(78)=spbe7k3*abb72(78)
      abb72(48)=-abb72(82)+abb72(48)+abb72(78)+abb72(75)+abb72(99)
      abb72(48)=8.0_ki*abb72(5)*abb72(48)
      abb72(71)=spbk3k1*abb72(71)
      abb72(72)=abb72(63)*abb72(72)
      abb72(71)=abb72(72)+abb72(71)-abb72(50)
      abb72(71)=8.0_ki*abb72(71)
      abb72(50)=4.0_ki*abb72(50)
      abb72(72)=spbk3k2**2
      abb72(38)=abb72(38)*abb72(72)*abb72(81)
      abb72(13)=abb72(41)*abb72(13)
      abb72(75)=abb72(72)*abb72(6)
      abb72(78)=abb72(13)*abb72(75)
      abb72(38)=abb72(78)+abb72(38)
      abb72(78)=4.0_ki*spak3k4
      abb72(38)=abb72(38)*abb72(78)
      abb72(80)=-spbk2k1*abb72(65)
      abb72(82)=-spak3k4*abb72(15)
      abb72(80)=abb72(80)+abb72(82)
      abb72(80)=spbl6k3*abb72(80)
      abb72(80)=abb72(80)-abb72(83)
      abb72(80)=4.0_ki*abb72(80)
      abb72(82)=8.0_ki*abb72(58)
      abb72(83)=abb72(7)**2
      abb72(99)=abb72(70)*abb72(83)
      abb72(100)=-spbk2k1*abb72(99)
      abb72(101)=abb72(36)-abb72(45)
      abb72(102)=abb72(83)*spbk3k2
      abb72(103)=abb72(102)*abb72(101)
      abb72(23)=abb72(87)*abb72(23)
      abb72(83)=-abb72(83)*abb72(23)
      abb72(83)=abb72(83)+abb72(103)
      abb72(83)=spak3k4*abb72(83)
      abb72(83)=abb72(100)+abb72(83)
      abb72(83)=4.0_ki*abb72(83)
      abb72(100)=abb72(32)*abb72(12)
      abb72(103)=-abb72(100)*abb72(81)
      abb72(104)=-abb72(32)*abb72(13)
      abb72(103)=abb72(104)+abb72(103)
      abb72(103)=spbk2k1*abb72(103)
      abb72(104)=abb72(96)*abb72(81)
      abb72(105)=abb72(13)*abb72(27)
      abb72(104)=abb72(105)+abb72(104)
      abb72(104)=spak3k4*abb72(104)
      abb72(103)=abb72(103)+abb72(104)
      abb72(103)=spbl6k3*abb72(103)
      abb72(99)=spbk3k1*abb72(99)
      abb72(104)=-abb72(96)*abb72(69)
      abb72(105)=-spak1k4*abb72(105)
      abb72(104)=abb72(105)+abb72(104)
      abb72(104)=spbl6k1*abb72(104)
      abb72(99)=abb72(104)+abb72(103)+2.0_ki*abb72(99)
      abb72(99)=4.0_ki*abb72(99)
      abb72(103)=-abb72(77)*abb72(78)
      abb72(75)=abb72(5)*abb72(75)*abb72(76)*abb72(103)
      abb72(76)=-4.0_ki*abb72(102)*abb72(70)
      abb72(102)=abb72(9)*abb72(6)
      abb72(104)=abb72(102)*abb72(12)**2
      abb72(105)=-abb72(104)*abb72(72)*abb72(103)
      abb72(106)=abb72(8)*abb72(6)
      abb72(107)=abb72(72)*abb72(106)
      abb72(103)=spbk7e7*abb72(107)*abb72(10)*abb72(103)
      abb72(108)=spbk7e7*spbk2k1
      abb72(109)=-abb72(65)*abb72(108)
      abb72(110)=spak3k4*spbk7e7
      abb72(15)=-abb72(15)*abb72(110)
      abb72(15)=abb72(109)+abb72(15)
      abb72(15)=4.0_ki*abb72(15)
      abb72(109)=abb72(32)*abb72(21)
      abb72(111)=-abb72(52)*abb72(46)
      abb72(109)=abb72(111)+abb72(109)
      abb72(11)=abb72(108)*abb72(11)*abb72(109)
      abb72(10)=abb72(93)*abb72(10)
      abb72(77)=-abb72(110)*abb72(10)*abb72(77)
      abb72(11)=abb72(11)+abb72(77)
      abb72(11)=spbl6k3*abb72(11)
      abb72(77)=-abb72(52)*abb72(51)
      abb72(77)=abb72(77)+abb72(55)
      abb72(10)=-spbl6k1*spbk7e7*abb72(10)*abb72(77)
      abb72(10)=abb72(11)+abb72(10)
      abb72(10)=4.0_ki*abb72(10)
      abb72(11)=4.0_ki*spbk7e7
      abb72(79)=-abb72(79)*abb72(11)
      abb72(109)=abb72(70)*spae7k7
      abb72(111)=spbk2k1*abb72(109)
      abb72(112)=abb72(101)*spbk3k2
      abb72(23)=abb72(112)-abb72(23)
      abb72(112)=-abb72(23)*abb72(90)
      abb72(111)=abb72(111)+abb72(112)
      abb72(111)=spbl6k3*abb72(111)
      abb72(112)=spbl6k1*abb72(70)*spbk3k2
      abb72(113)=spae7k7*abb72(112)
      abb72(111)=abb72(111)+abb72(113)
      abb72(111)=4.0_ki*abb72(111)
      abb72(113)=-spbk3k2*abb72(62)
      abb72(114)=abb72(113)*spae7k7
      abb72(115)=8.0_ki*abb72(114)
      abb72(70)=abb72(70)*spal5e7
      abb72(116)=-spbk2k1*abb72(70)
      abb72(23)=abb72(23)*abb72(91)
      abb72(23)=abb72(116)+abb72(23)
      abb72(23)=spbl6k3*abb72(23)
      abb72(112)=-spal5e7*abb72(112)
      abb72(23)=abb72(23)+abb72(112)
      abb72(23)=4.0_ki*abb72(23)
      abb72(112)=abb72(113)*spal5e7
      abb72(113)=-8.0_ki*abb72(112)
      abb72(116)=-8.0_ki*abb72(63)
      abb72(63)=-4.0_ki*abb72(63)
      abb72(117)=abb72(54)*spbk2k1
      abb72(118)=-abb72(40)*abb72(21)
      abb72(119)=abb72(118)*spbk3k2
      abb72(120)=abb72(53)*abb72(87)
      abb72(119)=abb72(119)+abb72(120)
      abb72(119)=abb72(119)*spak3k4
      abb72(117)=abb72(119)+abb72(117)
      abb72(117)=4.0_ki*abb72(117)
      abb72(65)=spbe7k1*abb72(65)
      abb72(119)=spbe7k3*spak3k4
      abb72(120)=abb72(29)*abb72(119)
      abb72(121)=-spbk7k1*abb72(109)
      abb72(122)=spbl5k1*abb72(70)
      abb72(65)=abb72(122)+abb72(121)+abb72(65)+abb72(120)
      abb72(65)=spbl6k3*abb72(65)
      abb72(66)=-spbl6k1*abb72(66)
      abb72(120)=abb72(84)*spbl6k3
      abb72(121)=abb72(90)*abb72(120)
      abb72(109)=spbl6k1*abb72(109)
      abb72(109)=abb72(121)+abb72(109)
      abb72(109)=spbk7k3*abb72(109)
      abb72(120)=-abb72(91)*abb72(120)
      abb72(70)=-spbl6k1*abb72(70)
      abb72(70)=abb72(120)+abb72(70)
      abb72(70)=spbl5k3*abb72(70)
      abb72(65)=abb72(70)+abb72(109)+abb72(66)+abb72(65)
      abb72(65)=4.0_ki*abb72(65)
      abb72(66)=abb72(62)*spal5e7
      abb72(70)=abb72(66)*spbl5k3
      abb72(62)=abb72(62)*spae7k7
      abb72(109)=abb72(62)*spbk7k3
      abb72(56)=abb72(56)+abb72(70)-abb72(109)
      abb72(70)=8.0_ki*abb72(56)
      abb72(61)=abb72(61)+abb72(37)
      abb72(109)=abb72(43)*abb72(61)
      abb72(120)=4.0_ki*abb72(109)
      abb72(44)=spbk4k3*abb72(44)*abb72(120)
      abb72(58)=-4.0_ki*abb72(58)
      abb72(107)=abb72(84)*abb72(107)
      abb72(78)=-abb72(78)*abb72(18)*abb72(107)
      abb72(36)=-abb72(12)*abb72(36)
      abb72(36)=abb72(36)+abb72(13)
      abb72(36)=abb72(86)*abb72(36)
      abb72(24)=abb72(92)*abb72(24)
      abb72(24)=abb72(24)+abb72(36)
      abb72(24)=spak3k4*abb72(24)
      abb72(36)=abb72(12)*abb72(18)
      abb72(92)=abb72(36)*abb72(69)
      abb72(121)=abb72(19)*abb72(13)
      abb72(92)=abb72(121)+abb72(92)
      abb72(92)=spbk2k1*abb72(92)
      abb72(24)=abb72(92)+abb72(24)
      abb72(24)=4.0_ki*abb72(24)
      abb72(25)=abb72(18)*abb72(25)
      abb72(92)=abb72(8)*abb72(18)
      abb72(121)=abb72(92)*abb72(32)
      abb72(45)=abb72(45)*abb72(121)
      abb72(25)=abb72(45)+abb72(25)
      abb72(25)=spbk2k1*abb72(25)
      abb72(45)=abb72(93)*abb72(18)
      abb72(122)=-spak3k4*abb72(45)*abb72(84)
      abb72(25)=abb72(25)+abb72(122)
      abb72(25)=spbl6k3*abb72(25)
      abb72(122)=abb72(45)*abb72(69)
      abb72(19)=abb72(19)*abb72(95)
      abb72(19)=abb72(19)+abb72(122)
      abb72(19)=spbl6k1*abb72(19)
      abb72(19)=abb72(25)+abb72(19)
      abb72(19)=4.0_ki*abb72(19)
      abb72(12)=abb72(12)*abb72(69)
      abb72(25)=abb72(13)*spak1k4
      abb72(12)=abb72(25)+abb72(12)
      abb72(12)=4.0_ki*abb72(86)*abb72(12)
      abb72(25)=abb72(18)*NC
      abb72(26)=abb72(25)*abb72(26)
      abb72(69)=abb72(18)*c2
      abb72(17)=abb72(69)*abb72(17)
      abb72(86)=2.0_ki*abb72(18)
      abb72(30)=abb72(86)*abb72(30)
      abb72(17)=abb72(30)+abb72(26)+abb72(17)
      abb72(26)=-spak4l5*abb72(17)
      abb72(9)=abb72(9)*abb72(8)
      abb72(9)=abb72(9)-abb72(40)
      abb72(9)=c2*abb72(16)*abb72(9)
      abb72(16)=abb72(22)*abb72(33)
      abb72(22)=-abb72(3)*abb72(16)
      abb72(9)=abb72(9)+2.0_ki*abb72(22)
      abb72(22)=abb72(9)*abb72(32)
      abb72(30)=abb72(16)*abb72(46)
      abb72(22)=abb72(30)+abb72(22)
      abb72(22)=-abb72(22)*abb72(43)
      abb72(14)=abb72(25)*abb72(14)
      abb72(25)=abb72(69)*abb72(35)
      abb72(30)=abb72(86)*abb72(34)
      abb72(14)=-abb72(30)+abb72(14)+abb72(25)
      abb72(25)=abb72(14)*abb72(28)
      abb72(30)=abb72(73)*NC
      abb72(30)=abb72(30)-abb72(74)
      abb72(33)=-spak4e7*abb72(30)
      abb72(22)=abb72(33)+abb72(26)+abb72(25)+abb72(22)
      abb72(22)=spbk4k2*abb72(22)
      abb72(25)=-spak1l5*abb72(17)
      abb72(26)=-spak1e7*abb72(30)
      abb72(25)=abb72(26)+abb72(25)
      abb72(25)=spbk2k1*abb72(25)
      abb72(26)=-spak3l6*abb72(49)
      abb72(33)=-spak3l5*abb72(89)
      abb72(34)=-spbe7k4*abb72(47)
      abb72(35)=spbl6k4*abb72(85)
      abb72(34)=abb72(35)+abb72(34)
      abb72(34)=spak4l6*abb72(34)
      abb72(35)=abb72(53)*NC
      abb72(35)=abb72(35)+abb72(118)
      abb72(40)=abb72(35)*abb72(59)
      abb72(46)=-spbk2k1*abb72(40)
      abb72(49)=abb72(29)*abb72(67)
      abb72(46)=abb72(46)+abb72(49)
      abb72(46)=spbe7l6*abb72(46)
      abb72(49)=abb72(108)*spak1k7
      abb72(53)=abb72(14)*abb72(49)
      abb72(16)=abb72(16)*NC
      abb72(9)=abb72(16)+abb72(9)
      abb72(9)=-spak1k3*abb72(43)*abb72(9)*abb72(27)
      abb72(16)=abb72(37)*abb72(106)
      abb72(8)=abb72(8)*abb72(102)
      abb72(27)=abb72(8)*abb72(41)
      abb72(27)=abb72(27)+abb72(16)
      abb72(27)=abb72(67)*abb72(27)
      abb72(67)=abb72(37)*abb72(93)
      abb72(69)=abb72(8)*spbk3k2
      abb72(73)=abb72(69)*abb72(41)
      abb72(67)=abb72(73)+abb72(67)
      abb72(67)=spak3l6*abb72(67)
      abb72(27)=abb72(27)+abb72(67)
      abb72(27)=spak1k2*abb72(5)*abb72(43)*abb72(27)
      abb72(67)=spak3k7*spbk7e7
      abb72(73)=abb72(88)*abb72(67)
      abb72(59)=spbl6k1*abb72(59)*abb72(109)
      abb72(40)=-spbe7k1*spbl6k2*abb72(40)
      abb72(57)=-abb72(101)+abb72(57)
      abb72(57)=abb72(5)*abb72(43)*abb72(106)*abb72(57)
      abb72(74)=es12*abb72(57)
      abb72(31)=spak3e7*abb72(31)
      abb72(9)=abb72(33)+abb72(73)+abb72(31)+abb72(27)+abb72(74)+abb72(9)+abb72&
      &(53)+abb72(26)+abb72(40)+abb72(46)+abb72(59)+abb72(22)+abb72(25)+abb72(3&
      &4)
      abb72(9)=4.0_ki*abb72(9)
      abb72(22)=-8.0_ki*abb72(57)
      abb72(25)=8.0_ki*abb72(85)
      abb72(26)=-4.0_ki*abb72(47)
      abb72(27)=4.0_ki*abb72(30)
      abb72(14)=-abb72(14)*abb72(11)
      abb72(30)=abb72(84)*spbl6k2
      abb72(31)=4.0_ki*spae7k7
      abb72(31)=-abb72(30)*abb72(31)
      abb72(33)=4.0_ki*spal5e7
      abb72(30)=abb72(30)*abb72(33)
      abb72(33)=spak1k3*abb72(120)
      abb72(34)=-spbk7l6*spae7k7
      abb72(40)=-spbl6l5*spal5e7
      abb72(34)=abb72(40)+abb72(34)
      abb72(34)=abb72(84)*abb72(34)
      abb72(40)=-spbe7l6*abb72(29)
      abb72(34)=abb72(40)+abb72(34)
      abb72(34)=4.0_ki*abb72(34)
      abb72(40)=8.0_ki*abb72(35)
      abb72(17)=4.0_ki*abb72(17)
      abb72(46)=-abb72(29)*abb72(68)
      abb72(36)=abb72(81)*abb72(36)
      abb72(13)=abb72(13)*abb72(18)
      abb72(13)=abb72(13)+abb72(36)
      abb72(36)=-spak1l5*abb72(13)
      abb72(36)=abb72(46)+abb72(36)
      abb72(46)=8.0_ki*spbk3k1
      abb72(36)=abb72(36)*abb72(46)
      abb72(47)=abb72(5)*abb72(107)
      abb72(53)=4.0_ki*abb72(90)
      abb72(57)=-abb72(53)*abb72(47)
      abb72(59)=4.0_ki*abb72(91)
      abb72(47)=abb72(59)*abb72(47)
      abb72(68)=abb72(39)*abb72(72)
      abb72(53)=abb72(68)*abb72(53)
      abb72(72)=abb72(62)*spbk2k1
      abb72(73)=-spbk3k2*abb72(61)
      abb72(74)=abb72(73)*abb72(90)
      abb72(72)=abb72(72)-abb72(74)
      abb72(72)=4.0_ki*abb72(72)
      abb72(74)=-4.0_ki*abb72(114)
      abb72(81)=8.0_ki*abb72(61)
      abb72(84)=abb72(81)*spae7k7
      abb72(59)=-abb72(68)*abb72(59)
      abb72(68)=abb72(66)*spbk2k1
      abb72(73)=abb72(73)*abb72(91)
      abb72(68)=abb72(68)-abb72(73)
      abb72(68)=4.0_ki*abb72(68)
      abb72(73)=4.0_ki*abb72(112)
      abb72(81)=abb72(81)*spal5e7
      abb72(85)=-abb72(109)*spak4l6
      abb72(86)=4.0_ki*abb72(85)
      abb72(85)=8.0_ki*abb72(85)
      abb72(54)=abb72(54)*spbe7k1
      abb72(88)=abb72(91)*spbl5k3
      abb72(89)=abb72(90)*spbk7k3
      abb72(88)=abb72(88)-abb72(89)
      abb72(61)=abb72(88)*abb72(61)
      abb72(66)=abb72(66)*spbl5k1
      abb72(62)=abb72(62)*spbk7k1
      abb72(35)=abb72(119)*abb72(35)
      abb72(35)=-abb72(61)+abb72(66)-abb72(62)+abb72(54)-abb72(35)
      abb72(35)=4.0_ki*abb72(35)
      abb72(54)=spak3l6*abb72(120)
      abb72(29)=abb72(29)*abb72(28)
      abb72(13)=spak4l5*abb72(13)
      abb72(13)=abb72(29)+abb72(13)
      abb72(29)=abb72(8)*abb72(52)
      abb72(51)=-abb72(29)*abb72(51)
      abb72(61)=abb72(55)*abb72(8)
      abb72(61)=abb72(61)+abb72(51)
      abb72(62)=-abb72(61)*abb72(49)
      abb72(66)=abb72(121)*abb72(37)
      abb72(41)=abb72(102)*abb72(92)*abb72(41)
      abb72(88)=abb72(41)*spak1k4
      abb72(66)=abb72(88)+abb72(66)
      abb72(88)=abb72(66)*spbk2k1
      abb72(89)=spak1l5*abb72(88)
      abb72(92)=abb72(100)*abb72(37)
      abb72(32)=abb72(42)*abb72(32)
      abb72(32)=abb72(32)+abb72(92)
      abb72(42)=abb72(32)*spbk2k1
      abb72(92)=-spak1e7*abb72(42)
      abb72(13)=abb72(92)+abb72(89)+abb72(62)+2.0_ki*abb72(13)
      abb72(13)=spbk3k1*abb72(13)
      abb72(62)=-spbk2k1*abb72(61)*abb72(28)
      abb72(89)=spak4l5*abb72(88)
      abb72(92)=-spak4e7*abb72(42)
      abb72(62)=abb72(92)+abb72(62)+abb72(89)
      abb72(62)=spbk4k3*abb72(62)
      abb72(89)=spbk3k2*abb72(104)
      abb72(92)=abb72(89)*abb72(21)
      abb72(52)=-abb72(52)*abb72(87)*abb72(104)
      abb72(52)=abb72(52)+abb72(92)
      abb72(52)=spak3k4*abb72(52)
      abb72(92)=spbk2k1*abb72(104)*abb72(77)
      abb72(52)=abb72(92)+abb72(52)
      abb72(52)=spbe7k3*abb72(52)
      abb72(92)=-spae7k7*abb72(42)
      abb72(93)=abb72(96)*abb72(37)
      abb72(93)=abb72(98)+abb72(93)
      abb72(90)=abb72(93)*abb72(90)
      abb72(90)=abb72(92)+abb72(90)
      abb72(90)=spbk7k3*abb72(90)
      abb72(92)=spal5e7*abb72(42)
      abb72(91)=-abb72(93)*abb72(91)
      abb72(91)=abb72(92)+abb72(91)
      abb72(91)=spbl5k3*abb72(91)
      abb72(92)=abb72(97)*abb72(94)
      abb72(77)=spbe7k1*abb72(89)*abb72(77)
      abb72(13)=abb72(77)+abb72(91)+abb72(90)+abb72(52)+abb72(13)+abb72(92)+abb&
      &72(62)
      abb72(13)=4.0_ki*abb72(13)
      abb72(37)=-abb72(45)*abb72(37)
      abb72(52)=abb72(41)*spbk3k2
      abb72(37)=abb72(37)-abb72(52)
      abb72(62)=abb72(37)*spak4l5
      abb72(77)=abb72(93)*spak4e7
      abb72(89)=-abb72(69)*abb72(21)
      abb72(87)=abb72(29)*abb72(87)
      abb72(87)=abb72(87)+abb72(89)
      abb72(89)=abb72(87)*abb72(28)
      abb72(62)=abb72(62)+abb72(77)+abb72(89)
      abb72(77)=8.0_ki*abb72(62)
      abb72(62)=-4.0_ki*abb72(62)
      abb72(89)=-spak3k4*abb72(93)
      abb72(42)=-abb72(42)+abb72(89)
      abb72(42)=4.0_ki*abb72(42)
      abb72(32)=abb72(32)*abb72(46)
      abb72(89)=4.0_ki*abb72(97)
      abb72(90)=-abb72(61)*abb72(108)
      abb72(91)=-abb72(87)*abb72(110)
      abb72(90)=abb72(90)+abb72(91)
      abb72(90)=4.0_ki*abb72(90)
      abb72(61)=spbk7e7*abb72(61)*abb72(46)
      abb72(51)=-spbk3k2*abb72(51)
      abb72(55)=-abb72(55)*abb72(69)
      abb72(51)=abb72(55)+abb72(51)
      abb72(51)=abb72(51)*abb72(11)
      abb72(55)=-4.0_ki*abb72(56)
      abb72(56)=-spak3k4*abb72(37)
      abb72(56)=abb72(88)+abb72(56)
      abb72(56)=4.0_ki*abb72(56)
      abb72(46)=-abb72(66)*abb72(46)
      abb72(45)=abb72(45)*abb72(60)
      abb72(52)=spak1k4*abb72(52)
      abb72(45)=abb72(52)+abb72(45)
      abb72(45)=4.0_ki*abb72(45)
      abb72(8)=-abb72(8)*abb72(21)
      abb72(21)=abb72(29)*NC
      abb72(8)=abb72(8)+abb72(21)
      abb72(21)=abb72(8)*abb72(28)
      abb72(16)=-abb72(18)*abb72(16)
      abb72(16)=abb72(16)-abb72(41)
      abb72(18)=spak4l5*abb72(16)
      abb72(28)=spak4e7*abb72(39)
      abb72(18)=abb72(28)+abb72(21)+abb72(18)
      abb72(18)=spbk4k2*abb72(18)
      abb72(21)=spak3l5*abb72(37)
      abb72(28)=spak1e7*spbk2k1
      abb72(28)=abb72(28)+abb72(43)
      abb72(28)=abb72(39)*abb72(28)
      abb72(29)=abb72(8)*abb72(49)
      abb72(37)=spak1l5*spbk2k1*abb72(16)
      abb72(41)=spak3e7*abb72(93)
      abb72(43)=abb72(87)*abb72(67)
      abb72(18)=abb72(21)+abb72(43)+abb72(41)+abb72(37)+abb72(29)+abb72(18)+abb&
      &72(28)
      abb72(18)=4.0_ki*abb72(18)
      abb72(21)=-4.0_ki*abb72(39)
      abb72(8)=-abb72(8)*abb72(11)
      abb72(11)=-4.0_ki*abb72(16)
      R2d72=0.0_ki
      rat2 = rat2 + R2d72
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='72' value='", &
          & R2d72, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd72h1