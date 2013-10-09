module     p9_csbar_epnebbbarg_abbrevd90h1
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(110), public :: abb90
   complex(ki), public :: R2d90
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
      abb90(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb90(2)=1.0_ki/(es71+es34+es56-es712-es234)
      abb90(3)=NC**(-1)
      abb90(4)=es71**(-1)
      abb90(5)=spbl6k2**(-1)
      abb90(6)=1.0_ki/(es34+es567-es12-es234)
      abb90(7)=sqrt(mB**2)
      abb90(8)=spak2l5**(-1)
      abb90(9)=spbl5k2**(-1)
      abb90(10)=spak2l6**(-1)
      abb90(11)=TR*gW
      abb90(11)=abb90(11)**2*i_*CVSC*abb90(2)*abb90(1)
      abb90(12)=abb90(11)*abb90(3)
      abb90(13)=2.0_ki*c1
      abb90(14)=abb90(13)*abb90(12)
      abb90(15)=abb90(6)*spbk3k1
      abb90(16)=abb90(15)*spak2l6
      abb90(17)=abb90(16)*abb90(14)
      abb90(18)=spbl5k2*spbe7k1
      abb90(19)=abb90(18)*abb90(17)
      abb90(20)=abb90(3)**2
      abb90(20)=abb90(20)+1.0_ki
      abb90(20)=abb90(11)*abb90(20)
      abb90(21)=spak2l6*c4
      abb90(22)=abb90(20)*abb90(21)
      abb90(23)=abb90(15)*abb90(22)
      abb90(24)=abb90(18)*abb90(23)
      abb90(19)=abb90(19)-abb90(24)
      abb90(19)=abb90(19)*spak1k4
      abb90(25)=abb90(17)*spbl5k2
      abb90(26)=abb90(23)*spbl5k2
      abb90(25)=abb90(25)-abb90(26)
      abb90(27)=spbe7k3*spak3k4
      abb90(25)=abb90(25)*abb90(27)
      abb90(19)=abb90(19)-abb90(25)
      abb90(25)=spal6e7*spbl6l5
      abb90(28)=-abb90(25)*abb90(19)
      abb90(29)=abb90(4)*spbe7k1
      abb90(30)=abb90(21)*abb90(29)
      abb90(31)=abb90(30)*abb90(20)
      abb90(32)=spbl5k2*spbk3k1
      abb90(33)=abb90(32)*abb90(31)
      abb90(34)=abb90(29)*spak2l6
      abb90(35)=abb90(34)*abb90(14)
      abb90(36)=abb90(32)*abb90(35)
      abb90(36)=abb90(36)-abb90(33)
      abb90(36)=abb90(36)*spak1e7
      abb90(37)=abb90(31)*spbl5k2
      abb90(38)=abb90(35)*spbl5k2
      abb90(38)=abb90(38)-abb90(37)
      abb90(39)=spbk7k3*spae7k7
      abb90(38)=abb90(38)*abb90(39)
      abb90(36)=abb90(36)-abb90(38)
      abb90(38)=spak4l6*spbl6l5
      abb90(40)=abb90(38)*abb90(36)
      abb90(28)=abb90(40)+abb90(28)
      abb90(28)=spak2l5*abb90(28)
      abb90(40)=abb90(20)*c4
      abb90(41)=abb90(15)*abb90(40)
      abb90(42)=abb90(41)*spbe7k1
      abb90(43)=mB**2
      abb90(44)=abb90(43)*abb90(5)
      abb90(45)=abb90(42)*abb90(44)
      abb90(46)=abb90(23)*spbe7k1
      abb90(47)=abb90(45)-abb90(46)
      abb90(48)=spbl5k2**2
      abb90(49)=-abb90(48)*abb90(47)
      abb90(50)=abb90(11)*abb90(15)
      abb90(51)=abb90(44)*abb90(3)
      abb90(52)=abb90(51)*abb90(50)
      abb90(12)=spak2l6*abb90(12)
      abb90(53)=abb90(12)*abb90(15)
      abb90(52)=abb90(52)-abb90(53)
      abb90(54)=abb90(52)*spbe7k1
      abb90(55)=abb90(48)*abb90(13)
      abb90(56)=abb90(54)*abb90(55)
      abb90(49)=abb90(56)+abb90(49)
      abb90(49)=spak2l5*abb90(49)
      abb90(56)=abb90(14)*abb90(43)
      abb90(57)=abb90(56)*abb90(16)
      abb90(58)=abb90(23)*abb90(43)
      abb90(57)=abb90(57)-abb90(58)
      abb90(58)=abb90(18)*abb90(57)
      abb90(49)=abb90(49)+abb90(58)
      abb90(58)=spak2e7*spak1k4
      abb90(49)=abb90(49)*abb90(58)
      abb90(59)=abb90(31)*spbk3k1
      abb90(60)=abb90(29)*c4
      abb90(61)=abb90(60)*abb90(20)
      abb90(62)=abb90(61)*abb90(44)
      abb90(63)=abb90(62)*spbk3k1
      abb90(64)=abb90(63)-abb90(59)
      abb90(65)=-abb90(48)*abb90(64)
      abb90(66)=abb90(11)*abb90(29)
      abb90(67)=abb90(51)*abb90(66)
      abb90(68)=abb90(67)*spbk3k1
      abb90(69)=abb90(29)*spbk3k1
      abb90(70)=abb90(12)*abb90(69)
      abb90(68)=abb90(68)-abb90(70)
      abb90(71)=abb90(68)*abb90(55)
      abb90(65)=abb90(71)+abb90(65)
      abb90(65)=spak2l5*abb90(65)
      abb90(71)=abb90(20)*abb90(43)
      abb90(30)=abb90(71)*abb90(30)
      abb90(72)=abb90(56)*abb90(34)
      abb90(30)=abb90(72)-abb90(30)
      abb90(72)=abb90(32)*abb90(30)
      abb90(65)=abb90(65)+abb90(72)
      abb90(72)=spak2k4*spak1e7
      abb90(65)=abb90(65)*abb90(72)
      abb90(73)=abb90(41)*abb90(44)
      abb90(74)=abb90(73)-abb90(23)
      abb90(75)=abb90(48)*abb90(74)
      abb90(76)=-abb90(52)*abb90(55)
      abb90(75)=abb90(76)+abb90(75)
      abb90(75)=spak2l5*abb90(75)
      abb90(76)=-spbl5k2*abb90(57)
      abb90(75)=abb90(75)+abb90(76)
      abb90(76)=abb90(27)*spak2e7
      abb90(75)=abb90(75)*abb90(76)
      abb90(77)=abb90(62)-abb90(31)
      abb90(48)=abb90(48)*abb90(77)
      abb90(78)=abb90(12)*abb90(29)
      abb90(67)=abb90(78)-abb90(67)
      abb90(55)=abb90(67)*abb90(55)
      abb90(48)=abb90(55)+abb90(48)
      abb90(48)=spak2l5*abb90(48)
      abb90(55)=-spbl5k2*abb90(30)
      abb90(48)=abb90(48)+abb90(55)
      abb90(55)=abb90(39)*spak2k4
      abb90(48)=abb90(48)*abb90(55)
      abb90(28)=abb90(48)+abb90(75)+abb90(49)+abb90(65)+abb90(28)
      abb90(28)=4.0_ki*abb90(28)
      abb90(48)=abb90(5)*spbl5k2
      abb90(49)=abb90(48)*mB
      abb90(65)=abb90(23)*abb90(49)
      abb90(75)=abb90(49)*abb90(14)
      abb90(16)=abb90(75)*abb90(16)
      abb90(16)=abb90(65)-abb90(16)
      abb90(65)=-spak3k4*abb90(16)
      abb90(79)=abb90(4)*spak2l6
      abb90(80)=abb90(79)*abb90(75)
      abb90(81)=abb90(49)*abb90(20)
      abb90(82)=abb90(81)*abb90(21)
      abb90(83)=abb90(82)*abb90(4)
      abb90(80)=abb90(80)-abb90(83)
      abb90(83)=spbk7k1*spak4k7
      abb90(84)=abb90(80)*abb90(83)
      abb90(65)=abb90(65)+abb90(84)
      abb90(65)=spbl6k3*abb90(65)
      abb90(84)=spbl6k1*spak1k4*abb90(16)
      abb90(65)=abb90(84)+abb90(65)
      abb90(65)=abb90(7)*abb90(65)
      abb90(84)=abb90(41)*abb90(49)
      abb90(85)=abb90(75)*abb90(15)
      abb90(84)=abb90(84)-abb90(85)
      abb90(86)=abb90(7)*spak2l5
      abb90(87)=abb90(84)*abb90(86)
      abb90(88)=spbl5k3*spak3k4
      abb90(89)=spbl5k1*spak1k4
      abb90(88)=abb90(88)-abb90(89)
      abb90(89)=-abb90(87)*abb90(88)
      abb90(90)=c4*abb90(81)
      abb90(90)=abb90(75)-abb90(90)
      abb90(91)=abb90(86)*spbl5k3
      abb90(90)=abb90(91)*abb90(4)*abb90(90)
      abb90(92)=abb90(83)*abb90(90)
      abb90(65)=abb90(92)+abb90(89)+abb90(65)
      abb90(65)=8.0_ki*abb90(65)
      abb90(89)=abb90(31)*abb90(49)
      abb90(34)=abb90(75)*abb90(34)
      abb90(34)=abb90(89)-abb90(34)
      abb90(34)=abb90(34)*abb90(7)
      abb90(89)=spbl6k3*abb90(34)
      abb90(92)=abb90(75)*abb90(29)
      abb90(93)=abb90(61)*abb90(49)
      abb90(92)=abb90(92)-abb90(93)
      abb90(91)=abb90(91)*abb90(92)
      abb90(89)=abb90(89)-abb90(91)
      abb90(89)=spak4e7*abb90(89)
      abb90(94)=8.0_ki*abb90(89)
      abb90(95)=abb90(75)*abb90(69)
      abb90(93)=abb90(93)*spbk3k1
      abb90(93)=abb90(95)-abb90(93)
      abb90(93)=abb90(93)*abb90(72)
      abb90(49)=abb90(42)*abb90(49)
      abb90(85)=abb90(85)*spbe7k1
      abb90(49)=abb90(49)-abb90(85)
      abb90(49)=abb90(49)*abb90(58)
      abb90(84)=abb90(84)*abb90(76)
      abb90(85)=abb90(92)*abb90(55)
      abb90(49)=abb90(84)-abb90(85)+abb90(93)-abb90(49)
      abb90(49)=abb90(49)*abb90(7)
      abb90(49)=8.0_ki*abb90(49)
      abb90(23)=abb90(17)-abb90(23)
      abb90(84)=-abb90(23)*abb90(88)
      abb90(85)=abb90(79)*abb90(14)
      abb90(93)=abb90(22)*abb90(4)
      abb90(85)=abb90(85)-abb90(93)
      abb90(95)=abb90(83)*spbl5k3
      abb90(96)=-abb90(85)*abb90(95)
      abb90(84)=abb90(96)+abb90(84)
      abb90(84)=16.0_ki*abb90(84)
      abb90(31)=abb90(35)-abb90(31)
      abb90(96)=spbl5k3*spak4e7
      abb90(97)=abb90(96)*abb90(31)
      abb90(98)=16.0_ki*abb90(97)
      abb90(99)=spbe7l5*spak4e7
      abb90(100)=abb90(87)*abb90(99)
      abb90(101)=spbe7l6*abb90(7)
      abb90(16)=abb90(16)*abb90(101)
      abb90(102)=abb90(16)*spak4e7
      abb90(100)=abb90(100)+abb90(102)
      abb90(102)=8.0_ki*abb90(100)
      abb90(103)=abb90(23)*abb90(99)
      abb90(104)=16.0_ki*abb90(103)
      abb90(105)=abb90(48)*abb90(43)
      abb90(106)=abb90(105)*abb90(3)
      abb90(50)=abb90(106)*abb90(50)
      abb90(107)=abb90(53)*spbl5k2
      abb90(107)=abb90(107)-abb90(50)
      abb90(107)=abb90(107)*abb90(13)
      abb90(108)=abb90(105)*abb90(41)
      abb90(109)=abb90(57)*abb90(8)
      abb90(26)=-abb90(109)+abb90(107)+abb90(108)-abb90(26)
      abb90(26)=abb90(26)*abb90(76)
      abb90(66)=abb90(106)*abb90(66)
      abb90(78)=abb90(78)*spbl5k2
      abb90(78)=abb90(78)-abb90(66)
      abb90(78)=abb90(78)*abb90(13)
      abb90(106)=abb90(30)*abb90(8)
      abb90(60)=abb90(71)*abb90(60)
      abb90(107)=abb90(60)*abb90(48)
      abb90(37)=-abb90(106)+abb90(78)+abb90(107)-abb90(37)
      abb90(37)=abb90(37)*abb90(55)
      abb90(50)=abb90(50)*spbe7k1
      abb90(53)=abb90(18)*abb90(53)
      abb90(50)=abb90(53)-abb90(50)
      abb90(50)=abb90(50)*abb90(13)
      abb90(53)=abb90(105)*abb90(42)
      abb90(24)=abb90(50)+abb90(53)-abb90(24)
      abb90(24)=abb90(24)*abb90(58)
      abb90(50)=abb90(66)*spbk3k1
      abb90(66)=abb90(70)*spbl5k2
      abb90(50)=abb90(50)-abb90(66)
      abb90(50)=abb90(50)*abb90(13)
      abb90(66)=abb90(107)*spbk3k1
      abb90(33)=abb90(50)-abb90(66)+abb90(33)
      abb90(33)=abb90(33)*abb90(72)
      abb90(50)=-spbe7k1*abb90(57)
      abb90(70)=abb90(50)*abb90(58)
      abb90(78)=-spbk3k1*abb90(30)
      abb90(105)=abb90(78)*abb90(72)
      abb90(70)=abb90(70)+abb90(105)
      abb90(70)=abb90(70)*abb90(8)
      abb90(24)=-abb90(37)-abb90(26)+abb90(70)+abb90(24)-abb90(33)
      abb90(26)=abb90(5)*mB
      abb90(33)=-abb90(42)*abb90(26)
      abb90(37)=abb90(14)*abb90(26)
      abb90(70)=abb90(37)*abb90(15)
      abb90(105)=spbe7k1*abb90(70)
      abb90(33)=abb90(33)+abb90(105)
      abb90(33)=spak1k4*abb90(33)
      abb90(105)=abb90(41)*abb90(26)
      abb90(70)=abb90(105)-abb90(70)
      abb90(70)=abb90(70)*abb90(27)
      abb90(33)=abb90(33)+abb90(70)
      abb90(33)=abb90(25)*abb90(33)
      abb90(70)=abb90(61)*spbk3k1
      abb90(105)=abb90(70)*abb90(26)
      abb90(110)=-abb90(69)*abb90(37)
      abb90(105)=abb90(105)+abb90(110)
      abb90(105)=spak1e7*abb90(105)
      abb90(26)=-abb90(61)*abb90(26)
      abb90(37)=abb90(29)*abb90(37)
      abb90(26)=abb90(26)+abb90(37)
      abb90(26)=abb90(26)*abb90(39)
      abb90(26)=abb90(105)+abb90(26)
      abb90(26)=abb90(38)*abb90(26)
      abb90(26)=abb90(26)+abb90(33)
      abb90(26)=abb90(7)*abb90(26)
      abb90(26)=-abb90(24)+abb90(26)
      abb90(26)=8.0_ki*abb90(26)
      abb90(33)=-abb90(100)-abb90(89)
      abb90(33)=8.0_ki*abb90(33)
      abb90(37)=-abb90(103)-abb90(97)
      abb90(37)=16.0_ki*abb90(37)
      abb90(17)=abb90(17)*spbe7k1
      abb90(17)=abb90(17)-abb90(46)
      abb90(17)=abb90(17)*spak1k4
      abb90(46)=abb90(23)*abb90(27)
      abb90(17)=abb90(17)-abb90(46)
      abb90(46)=-abb90(17)*abb90(25)
      abb90(35)=abb90(35)*spbk3k1
      abb90(35)=abb90(35)-abb90(59)
      abb90(35)=abb90(35)*spak1e7
      abb90(59)=abb90(31)*abb90(39)
      abb90(35)=abb90(35)-abb90(59)
      abb90(59)=abb90(35)*abb90(38)
      abb90(24)=abb90(59)+abb90(46)-abb90(24)
      abb90(24)=4.0_ki*abb90(24)
      abb90(17)=8.0_ki*abb90(17)
      abb90(46)=abb90(54)*abb90(13)
      abb90(46)=-abb90(46)+abb90(47)
      abb90(46)=spak1k4*abb90(46)
      abb90(47)=abb90(52)*abb90(13)
      abb90(47)=abb90(47)-abb90(74)
      abb90(52)=abb90(47)*abb90(27)
      abb90(50)=abb90(8)*spak1k4*abb90(50)
      abb90(54)=abb90(27)*abb90(109)
      abb90(50)=abb90(50)+abb90(54)
      abb90(50)=abb90(9)*abb90(50)
      abb90(46)=abb90(50)+abb90(46)+abb90(52)
      abb90(46)=8.0_ki*abb90(46)
      abb90(50)=-spak1k4*abb90(34)
      abb90(52)=spbk7e7*spak4k7
      abb90(54)=-abb90(7)*abb90(80)*abb90(52)
      abb90(50)=abb90(50)+abb90(54)
      abb90(50)=spbl6k3*abb90(50)
      abb90(54)=spak1k4*abb90(91)
      abb90(59)=-abb90(52)*abb90(90)
      abb90(50)=abb90(50)+abb90(54)+abb90(59)
      abb90(50)=4.0_ki*abb90(50)
      abb90(54)=-spak1k4*abb90(31)
      abb90(59)=abb90(85)*abb90(52)
      abb90(54)=abb90(54)+abb90(59)
      abb90(54)=8.0_ki*spbl5k3*abb90(54)
      abb90(59)=abb90(56)*abb90(15)
      abb90(74)=abb90(59)*spbe7k1
      abb90(80)=abb90(48)*abb90(74)
      abb90(53)=-abb90(53)+abb90(80)
      abb90(53)=abb90(53)*abb90(58)
      abb90(80)=abb90(69)*abb90(56)
      abb90(85)=abb90(48)*abb90(80)
      abb90(66)=-abb90(66)+abb90(85)
      abb90(66)=abb90(66)*abb90(72)
      abb90(85)=-abb90(48)*abb90(59)
      abb90(85)=abb90(108)+abb90(85)
      abb90(85)=abb90(85)*abb90(76)
      abb90(89)=abb90(56)*abb90(29)
      abb90(48)=-abb90(48)*abb90(89)
      abb90(48)=abb90(107)+abb90(48)
      abb90(48)=abb90(48)*abb90(55)
      abb90(48)=abb90(48)+abb90(85)+abb90(53)+abb90(66)
      abb90(48)=abb90(10)*spak2l5*abb90(48)
      abb90(53)=abb90(42)*abb90(43)
      abb90(53)=abb90(53)-abb90(74)
      abb90(66)=spbl5k2*abb90(42)
      abb90(15)=abb90(14)*abb90(15)
      abb90(18)=-abb90(15)*abb90(18)
      abb90(18)=abb90(66)+abb90(18)
      abb90(18)=spak2l5*abb90(18)
      abb90(18)=abb90(18)-abb90(53)
      abb90(18)=abb90(18)*abb90(58)
      abb90(66)=abb90(60)*spbk3k1
      abb90(66)=abb90(66)-abb90(80)
      abb90(32)=abb90(61)*abb90(32)
      abb90(69)=abb90(69)*abb90(14)
      abb90(74)=-spbl5k2*abb90(69)
      abb90(32)=abb90(32)+abb90(74)
      abb90(32)=spak2l5*abb90(32)
      abb90(32)=abb90(32)-abb90(66)
      abb90(32)=abb90(32)*abb90(72)
      abb90(43)=abb90(41)*abb90(43)
      abb90(43)=abb90(43)-abb90(59)
      abb90(41)=abb90(15)-abb90(41)
      abb90(59)=abb90(41)*spak2l5
      abb90(74)=spbl5k2*abb90(59)
      abb90(74)=abb90(74)+abb90(43)
      abb90(74)=abb90(74)*abb90(76)
      abb90(60)=abb90(89)-abb90(60)
      abb90(29)=abb90(14)*abb90(29)
      abb90(61)=abb90(29)-abb90(61)
      abb90(80)=abb90(61)*spak2l5
      abb90(85)=spbl5k2*abb90(80)
      abb90(85)=abb90(85)-abb90(60)
      abb90(85)=abb90(85)*abb90(55)
      abb90(89)=abb90(15)*spbe7k1
      abb90(42)=abb90(89)-abb90(42)
      abb90(90)=-spak1k4*spak2l5*abb90(42)
      abb90(27)=abb90(27)*abb90(59)
      abb90(27)=abb90(90)+abb90(27)
      abb90(25)=abb90(27)*abb90(25)
      abb90(27)=abb90(70)-abb90(69)
      abb90(70)=-spak1e7*spak2l5*abb90(27)
      abb90(90)=-abb90(39)*abb90(80)
      abb90(70)=abb90(70)+abb90(90)
      abb90(38)=abb90(70)*abb90(38)
      abb90(18)=abb90(48)+abb90(38)+abb90(25)+abb90(85)+abb90(74)+abb90(18)+abb&
      &90(32)
      abb90(18)=4.0_ki*abb90(18)
      abb90(25)=abb90(59)*abb90(88)
      abb90(32)=abb90(14)*abb90(4)
      abb90(38)=abb90(4)*abb90(40)
      abb90(32)=abb90(32)-abb90(38)
      abb90(32)=abb90(32)*spak2l5
      abb90(40)=abb90(95)*abb90(32)
      abb90(25)=abb90(40)+abb90(25)
      abb90(25)=8.0_ki*abb90(25)
      abb90(40)=abb90(96)*abb90(80)
      abb90(48)=-8.0_ki*abb90(40)
      abb90(41)=abb90(76)*abb90(41)
      abb90(61)=abb90(61)*abb90(55)
      abb90(27)=abb90(27)*abb90(72)
      abb90(42)=abb90(42)*abb90(58)
      abb90(27)=-abb90(42)+abb90(27)+abb90(41)+abb90(61)
      abb90(41)=8.0_ki*abb90(27)
      abb90(42)=abb90(59)*abb90(99)
      abb90(61)=8.0_ki*abb90(42)
      abb90(53)=-abb90(53)*abb90(58)
      abb90(66)=-abb90(66)*abb90(72)
      abb90(43)=abb90(43)*abb90(76)
      abb90(60)=-abb90(60)*abb90(55)
      abb90(43)=abb90(60)+abb90(43)+abb90(53)+abb90(66)
      abb90(53)=abb90(9)*abb90(8)
      abb90(43)=abb90(43)*abb90(53)
      abb90(60)=abb90(44)*abb90(89)
      abb90(45)=-abb90(45)+abb90(60)
      abb90(45)=abb90(45)*abb90(58)
      abb90(58)=abb90(44)*abb90(69)
      abb90(58)=-abb90(63)+abb90(58)
      abb90(58)=abb90(58)*abb90(72)
      abb90(15)=-abb90(44)*abb90(15)
      abb90(15)=abb90(73)+abb90(15)
      abb90(15)=abb90(15)*abb90(76)
      abb90(29)=-abb90(44)*abb90(29)
      abb90(29)=abb90(62)+abb90(29)
      abb90(29)=abb90(29)*abb90(55)
      abb90(15)=abb90(29)+abb90(15)+abb90(45)+abb90(58)
      abb90(15)=abb90(10)*abb90(15)
      abb90(15)=abb90(15)+abb90(43)+abb90(27)
      abb90(15)=8.0_ki*abb90(15)
      abb90(27)=abb90(42)+abb90(40)
      abb90(27)=8.0_ki*abb90(27)
      abb90(29)=spak1k4*abb90(80)
      abb90(32)=-abb90(52)*abb90(32)
      abb90(29)=abb90(29)+abb90(32)
      abb90(29)=4.0_ki*spbl5k3*abb90(29)
      abb90(32)=8.0_ki*abb90(35)
      abb90(35)=abb90(68)*abb90(13)
      abb90(35)=-abb90(35)+abb90(64)
      abb90(35)=spak1e7*abb90(35)
      abb90(40)=abb90(67)*abb90(13)
      abb90(40)=abb90(40)+abb90(77)
      abb90(42)=-abb90(40)*abb90(39)
      abb90(43)=abb90(8)*spak1e7*abb90(78)
      abb90(39)=abb90(39)*abb90(106)
      abb90(39)=abb90(43)+abb90(39)
      abb90(39)=abb90(9)*abb90(39)
      abb90(35)=abb90(39)+abb90(35)+abb90(42)
      abb90(35)=8.0_ki*abb90(35)
      abb90(39)=-spbe7l5*abb90(87)
      abb90(39)=abb90(39)-abb90(16)
      abb90(39)=spak3e7*abb90(39)
      abb90(42)=abb90(75)*abb90(6)
      abb90(43)=abb90(6)*c4
      abb90(45)=abb90(43)*abb90(81)
      abb90(42)=abb90(42)-abb90(45)
      abb90(42)=abb90(42)*abb90(99)*abb90(86)
      abb90(45)=spak2l6*abb90(6)
      abb90(55)=abb90(45)*abb90(75)
      abb90(58)=abb90(82)*abb90(6)
      abb90(55)=abb90(55)-abb90(58)
      abb90(55)=abb90(55)*abb90(101)*spak4e7
      abb90(42)=abb90(42)+abb90(55)
      abb90(55)=spbk4k1*abb90(42)
      abb90(58)=spbl5k1*spak1e7
      abb90(60)=spbk7l5*spae7k7
      abb90(58)=abb90(58)-abb90(60)
      abb90(60)=-abb90(92)*abb90(86)*abb90(58)
      abb90(62)=spbl6k1*spak1e7
      abb90(63)=-spbk7l6*spae7k7
      abb90(62)=abb90(63)+abb90(62)
      abb90(34)=abb90(34)*abb90(62)
      abb90(34)=abb90(39)+abb90(55)+abb90(34)+abb90(60)
      abb90(34)=4.0_ki*abb90(34)
      abb90(31)=abb90(31)*abb90(58)
      abb90(39)=spak3e7*spbe7l5
      abb90(55)=-abb90(23)*abb90(39)
      abb90(60)=abb90(45)*abb90(14)
      abb90(22)=abb90(22)*abb90(6)
      abb90(60)=abb90(60)-abb90(22)
      abb90(62)=abb90(99)*spbk4k1
      abb90(63)=-abb90(60)*abb90(62)
      abb90(31)=abb90(55)+abb90(63)+abb90(31)
      abb90(31)=8.0_ki*abb90(31)
      abb90(55)=-abb90(80)*abb90(58)
      abb90(39)=abb90(59)*abb90(39)
      abb90(14)=abb90(14)*abb90(6)
      abb90(20)=abb90(43)*abb90(20)
      abb90(14)=abb90(14)-abb90(20)
      abb90(14)=abb90(14)*spak2l5
      abb90(43)=abb90(62)*abb90(14)
      abb90(39)=abb90(39)+abb90(43)+abb90(55)
      abb90(39)=4.0_ki*abb90(39)
      abb90(42)=-spbk4k3*abb90(42)
      abb90(43)=spbe7l5*spak1e7
      abb90(55)=abb90(87)*abb90(43)
      abb90(16)=spak1e7*abb90(16)
      abb90(16)=abb90(42)+abb90(55)+abb90(16)
      abb90(16)=4.0_ki*abb90(16)
      abb90(23)=abb90(23)*abb90(43)
      abb90(42)=abb90(99)*spbk4k3
      abb90(55)=abb90(60)*abb90(42)
      abb90(23)=abb90(23)+abb90(55)
      abb90(23)=8.0_ki*abb90(23)
      abb90(43)=-abb90(59)*abb90(43)
      abb90(14)=-abb90(42)*abb90(14)
      abb90(14)=abb90(43)+abb90(14)
      abb90(14)=4.0_ki*abb90(14)
      abb90(42)=spal6e7*abb90(19)
      abb90(43)=-spak4l6*abb90(36)
      abb90(42)=abb90(42)+abb90(43)
      abb90(42)=4.0_ki*abb90(42)
      abb90(19)=spal5e7*abb90(19)
      abb90(36)=-spak4l5*abb90(36)
      abb90(19)=abb90(19)+abb90(36)
      abb90(19)=4.0_ki*abb90(19)
      abb90(36)=abb90(79)*abb90(56)
      abb90(21)=abb90(71)*abb90(21)
      abb90(43)=abb90(21)*abb90(4)
      abb90(36)=abb90(36)-abb90(43)
      abb90(36)=abb90(36)*abb90(53)
      abb90(38)=abb90(38)*abb90(44)
      abb90(11)=abb90(51)*abb90(11)
      abb90(11)=abb90(11)-abb90(12)
      abb90(11)=abb90(11)*abb90(13)
      abb90(12)=abb90(4)*abb90(11)
      abb90(12)=-abb90(36)-abb90(93)+abb90(38)-abb90(12)
      abb90(13)=-abb90(12)*abb90(83)
      abb90(36)=abb90(57)*abb90(53)
      abb90(36)=abb90(47)+abb90(36)
      abb90(38)=spak3k4*abb90(36)
      abb90(13)=abb90(38)+abb90(13)
      abb90(13)=spbk3k2*abb90(13)
      abb90(38)=spbk2k1*spak1k4*abb90(36)
      abb90(13)=abb90(38)+abb90(13)
      abb90(13)=8.0_ki*abb90(13)
      abb90(38)=abb90(40)*spak4e7
      abb90(43)=abb90(53)*spak4e7
      abb90(47)=abb90(30)*abb90(43)
      abb90(38)=abb90(38)-abb90(47)
      abb90(38)=abb90(38)*spbk3k2
      abb90(47)=8.0_ki*abb90(38)
      abb90(51)=spbe7k2*spak4e7*abb90(36)
      abb90(55)=8.0_ki*abb90(51)
      abb90(38)=-abb90(51)-abb90(38)
      abb90(38)=8.0_ki*abb90(38)
      abb90(12)=abb90(12)*abb90(52)
      abb90(30)=abb90(30)*abb90(53)
      abb90(30)=abb90(30)-abb90(40)
      abb90(40)=spak1k4*abb90(30)
      abb90(12)=abb90(40)+abb90(12)
      abb90(12)=4.0_ki*spbk3k2*abb90(12)
      abb90(40)=-spak3e7*abb90(36)
      abb90(20)=abb90(20)*abb90(44)
      abb90(11)=abb90(6)*abb90(11)
      abb90(11)=-abb90(22)+abb90(20)-abb90(11)
      abb90(11)=abb90(11)*spak4e7
      abb90(20)=abb90(45)*abb90(56)
      abb90(21)=abb90(21)*abb90(6)
      abb90(20)=abb90(20)-abb90(21)
      abb90(20)=abb90(20)*abb90(43)
      abb90(11)=abb90(11)-abb90(20)
      abb90(20)=spbk4k1*abb90(11)
      abb90(20)=abb90(40)+abb90(20)
      abb90(20)=spbe7k2*abb90(20)
      abb90(21)=spbk2k1*spak1e7
      abb90(22)=-spbk7k2*spae7k7
      abb90(21)=abb90(22)+abb90(21)
      abb90(21)=abb90(30)*abb90(21)
      abb90(20)=abb90(20)+abb90(21)
      abb90(20)=4.0_ki*abb90(20)
      abb90(21)=spak1e7*abb90(36)
      abb90(11)=-spbk4k3*abb90(11)
      abb90(11)=abb90(21)+abb90(11)
      abb90(11)=4.0_ki*spbe7k2*abb90(11)
      R2d90=0.0_ki
      rat2 = rat2 + R2d90
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='90' value='", &
          & R2d90, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd90h1
