module     p1_dbarc_epnebbbarg_abbrevd72h2
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(129), public :: abb72
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
      abb72(5)=spbl5k2**(-1)
      abb72(6)=spak2l6**(-1)
      abb72(7)=spbl6k2**(-1)
      abb72(8)=sqrt(mB**2)
      abb72(9)=TR*gW
      abb72(9)=abb72(9)**2*i_*CVDC*abb72(2)*abb72(1)
      abb72(10)=abb72(9)*c1*spal5e7
      abb72(11)=abb72(10)*abb72(3)
      abb72(12)=abb72(11)*spbe7k2
      abb72(13)=abb72(12)*abb72(8)
      abb72(14)=abb72(10)*spbe7k2
      abb72(15)=abb72(14)*abb72(3)*mB
      abb72(13)=abb72(13)-abb72(15)
      abb72(13)=abb72(13)*abb72(8)
      abb72(15)=abb72(9)*mB
      abb72(16)=abb72(9)*abb72(8)
      abb72(15)=abb72(16)-abb72(15)
      abb72(17)=abb72(3)**2
      abb72(18)=abb72(17)*spal5e7
      abb72(19)=abb72(18)*spbe7k2
      abb72(15)=abb72(8)*abb72(19)*abb72(15)
      abb72(20)=-c2*abb72(15)
      abb72(21)=mB-abb72(8)
      abb72(14)=abb72(8)*abb72(14)*abb72(21)
      abb72(21)=NC*abb72(14)
      abb72(20)=abb72(21)+2.0_ki*abb72(13)+abb72(20)
      abb72(21)=spak1k4**2
      abb72(20)=abb72(21)*abb72(20)
      abb72(22)=2.0_ki*abb72(3)
      abb72(23)=abb72(22)*abb72(10)
      abb72(24)=abb72(10)*NC
      abb72(23)=abb72(24)-abb72(23)
      abb72(25)=spak1k4*abb72(23)
      abb72(26)=mB**2
      abb72(27)=abb72(5)*spbe7k2
      abb72(28)=abb72(26)*abb72(27)
      abb72(29)=-abb72(28)*abb72(25)
      abb72(30)=abb72(27)*abb72(9)
      abb72(31)=abb72(17)*c2
      abb72(32)=abb72(31)*spal5e7
      abb72(33)=abb72(32)*abb72(30)
      abb72(34)=abb72(33)*abb72(26)
      abb72(35)=abb72(34)*spak1k4
      abb72(29)=abb72(29)-abb72(35)
      abb72(29)=abb72(29)*abb72(4)
      abb72(35)=spak1l6*spbl6k2
      abb72(36)=abb72(29)*abb72(35)
      abb72(37)=spak2k4*abb72(36)
      abb72(38)=abb72(30)*c1
      abb72(39)=abb72(38)*NC
      abb72(40)=abb72(31)*abb72(30)
      abb72(40)=abb72(39)+abb72(40)
      abb72(41)=abb72(38)*abb72(22)
      abb72(42)=abb72(40)-abb72(41)
      abb72(43)=abb72(8)*mB
      abb72(44)=abb72(43)*abb72(42)
      abb72(45)=spbk7k2*spae7k7
      abb72(46)=-abb72(44)*abb72(21)*abb72(45)
      abb72(20)=abb72(46)+abb72(37)+abb72(20)
      abb72(20)=spbl6k1*abb72(20)
      abb72(37)=mB**4
      abb72(46)=abb72(6)**2
      abb72(47)=abb72(37)*abb72(46)
      abb72(48)=abb72(47)*abb72(40)
      abb72(49)=-spak1k4*abb72(48)
      abb72(50)=abb72(22)*spak1k4
      abb72(51)=abb72(50)*abb72(38)
      abb72(52)=abb72(51)*abb72(47)
      abb72(49)=abb72(52)+abb72(49)
      abb72(52)=abb72(49)*abb72(45)
      abb72(53)=abb72(32)*abb72(9)
      abb72(54)=spak1k4*abb72(53)
      abb72(54)=abb72(25)+abb72(54)
      abb72(55)=abb72(46)*spbe7k2
      abb72(56)=abb72(54)*abb72(55)*abb72(37)
      abb72(52)=abb72(52)+abb72(56)
      abb72(52)=abb72(7)*spak2k4*abb72(52)
      abb72(57)=mB**3
      abb72(58)=abb72(57)*abb72(8)
      abb72(59)=abb72(10)*abb72(6)
      abb72(60)=abb72(27)*abb72(58)*abb72(59)
      abb72(61)=NC*spak1k4
      abb72(62)=abb72(61)-abb72(50)
      abb72(63)=-abb72(60)*abb72(62)
      abb72(64)=abb72(30)*abb72(6)
      abb72(65)=abb72(64)*abb72(58)*abb72(32)
      abb72(66)=abb72(65)*spak1k4
      abb72(63)=abb72(63)-abb72(66)
      abb72(66)=spak2k4*abb72(4)
      abb72(67)=abb72(63)*abb72(66)
      abb72(52)=abb72(67)+abb72(52)
      abb72(52)=es12*abb72(52)
      abb72(67)=abb72(59)*abb72(43)
      abb72(50)=abb72(67)*abb72(50)
      abb72(68)=abb72(9)*abb72(6)
      abb72(69)=abb72(32)*abb72(68)
      abb72(70)=abb72(43)*spak1k4
      abb72(71)=abb72(69)*abb72(70)
      abb72(72)=abb72(67)*NC
      abb72(73)=abb72(72)*spak1k4
      abb72(50)=-abb72(73)+abb72(50)-abb72(71)
      abb72(71)=abb72(50)*es12
      abb72(73)=abb72(71)*spbk7e7
      abb72(74)=abb72(54)*spbk7e7
      abb72(75)=abb72(35)*spbl6k1
      abb72(76)=abb72(75)*abb72(74)
      abb72(76)=abb72(76)-abb72(73)
      abb72(77)=-spak4k7*abb72(76)
      abb72(78)=abb72(71)*spbe7l5
      abb72(79)=abb72(54)*spbe7l5
      abb72(80)=abb72(75)*abb72(79)
      abb72(80)=abb72(80)-abb72(78)
      abb72(81)=spak4l5*abb72(80)
      abb72(82)=abb72(70)*abb72(40)
      abb72(83)=abb72(51)*abb72(43)
      abb72(82)=abb72(82)-abb72(83)
      abb72(83)=abb72(75)*abb72(82)
      abb72(84)=abb72(43)**2
      abb72(31)=abb72(31)*abb72(84)*abb72(64)
      abb72(64)=abb72(84)*abb72(6)
      abb72(39)=abb72(64)*abb72(39)
      abb72(31)=abb72(31)+abb72(39)
      abb72(39)=-spak1k4*abb72(31)
      abb72(84)=abb72(64)*abb72(51)
      abb72(39)=abb72(84)+abb72(39)
      abb72(84)=abb72(39)*es12
      abb72(83)=abb72(83)-abb72(84)
      abb72(85)=spak4e7*abb72(83)
      abb72(86)=abb72(26)*spbe7k2
      abb72(87)=abb72(86)*abb72(59)
      abb72(88)=abb72(62)*abb72(87)
      abb72(89)=abb72(86)*abb72(69)
      abb72(90)=abb72(89)*spak1k4
      abb72(88)=abb72(90)+abb72(88)
      abb72(90)=spbl6k1*spak1k2
      abb72(91)=-abb72(88)*abb72(90)
      abb72(92)=abb72(26)*abb72(6)
      abb72(93)=abb72(92)*spak1k4
      abb72(40)=abb72(93)*abb72(40)
      abb72(51)=abb72(51)*abb72(92)
      abb72(40)=abb72(40)-abb72(51)
      abb72(51)=abb72(45)*spak1k2
      abb72(94)=abb72(51)*abb72(40)
      abb72(95)=spbl6k1*abb72(94)
      abb72(91)=abb72(91)+abb72(95)
      abb72(91)=spak4l6*abb72(91)
      abb72(20)=abb72(91)+abb72(85)+abb72(81)+abb72(77)+abb72(52)+abb72(20)
      abb72(20)=spbk4k3*abb72(20)
      abb72(52)=abb72(63)*abb72(4)
      abb72(63)=-spak1k2*abb72(52)
      abb72(51)=abb72(51)*abb72(7)
      abb72(77)=-abb72(49)*abb72(51)
      abb72(81)=abb72(7)*spak1k2
      abb72(56)=-abb72(56)*abb72(81)
      abb72(56)=abb72(77)+abb72(63)+abb72(56)
      abb72(56)=es12*abb72(56)
      abb72(63)=-spak1l6*abb72(88)
      abb72(36)=abb72(63)-abb72(36)
      abb72(36)=abb72(36)*abb72(90)
      abb72(63)=-spak1k7*abb72(76)
      abb72(76)=spak1l5*abb72(80)
      abb72(77)=spak1e7*abb72(83)
      abb72(80)=spbl6k1*spak1l6
      abb72(83)=abb72(80)*abb72(94)
      abb72(36)=abb72(77)+abb72(76)+abb72(63)+abb72(56)+abb72(36)+abb72(83)
      abb72(36)=spbk3k1*abb72(36)
      abb72(56)=abb72(58)*abb72(46)
      abb72(63)=-abb72(56)*abb72(25)
      abb72(16)=abb72(16)*abb72(57)*abb72(46)
      abb72(32)=abb72(16)*abb72(32)
      abb72(46)=abb72(32)*spak1k4
      abb72(46)=abb72(63)-abb72(46)
      abb72(57)=es12*abb72(7)
      abb72(63)=abb72(46)*abb72(57)
      abb72(76)=-abb72(50)*abb72(80)
      abb72(76)=abb72(76)-abb72(63)
      abb72(76)=es12*abb72(76)
      abb72(77)=es234-es34
      abb72(83)=es23-abb72(77)
      abb72(83)=abb72(63)*abb72(83)
      abb72(85)=abb72(90)*abb72(50)
      abb72(88)=-spbk4k2*spak4l6*abb72(85)
      abb72(76)=abb72(88)+abb72(76)+abb72(83)
      abb72(76)=spbe7k3*abb72(76)
      abb72(83)=spbk3k2*spak1k2
      abb72(88)=abb72(50)*abb72(83)
      abb72(91)=-abb72(80)*abb72(88)
      abb72(95)=abb72(83)*abb72(7)
      abb72(96)=-es12*abb72(46)*abb72(95)
      abb72(91)=abb72(91)+abb72(96)
      abb72(91)=spbe7k1*abb72(91)
      abb72(96)=spak2k4*spbk3k2
      abb72(97)=-abb72(63)*abb72(96)
      abb72(98)=abb72(88)*spbl6k1
      abb72(99)=spak4l6*abb72(98)
      abb72(97)=abb72(97)+abb72(99)
      abb72(97)=spbe7k4*abb72(97)
      abb72(20)=abb72(97)+abb72(91)+abb72(76)+abb72(20)+abb72(36)
      abb72(20)=4.0_ki*abb72(20)
      abb72(36)=-abb72(92)*abb72(42)
      abb72(42)=abb72(36)*abb72(45)
      abb72(76)=abb72(22)-NC
      abb72(91)=-abb72(87)*abb72(76)
      abb72(89)=abb72(91)+abb72(89)
      abb72(91)=abb72(89)+abb72(42)
      abb72(97)=spbl6k3*spak1k2
      abb72(99)=abb72(97)*abb72(91)
      abb72(22)=abb72(67)*abb72(22)
      abb72(69)=abb72(69)*abb72(43)
      abb72(22)=-abb72(72)+abb72(22)-abb72(69)
      abb72(69)=abb72(22)*abb72(83)
      abb72(72)=abb72(69)*spbe7l6
      abb72(100)=abb72(22)*spak1k2
      abb72(101)=abb72(100)*spbl6k2
      abb72(102)=abb72(101)*spbe7k3
      abb72(99)=-abb72(102)-abb72(99)+abb72(72)
      abb72(99)=spak4l6*abb72(99)
      abb72(103)=abb72(9)*abb72(47)
      abb72(16)=abb72(103)-abb72(16)
      abb72(16)=c2*abb72(19)*abb72(16)
      abb72(103)=abb72(47)-abb72(56)
      abb72(103)=abb72(12)*abb72(103)
      abb72(37)=abb72(37)-abb72(58)
      abb72(24)=abb72(37)*abb72(55)*abb72(24)
      abb72(16)=-abb72(16)-abb72(24)+2.0_ki*abb72(103)
      abb72(24)=abb72(95)*spak2k4
      abb72(37)=abb72(16)*abb72(24)
      abb72(55)=abb72(14)*abb72(61)
      abb72(58)=2.0_ki*spak1k4
      abb72(103)=abb72(13)*abb72(58)
      abb72(104)=c2*spak1k4
      abb72(105)=abb72(15)*abb72(104)
      abb72(55)=-abb72(105)+abb72(55)+abb72(103)
      abb72(55)=abb72(55)*spbl6k3
      abb72(103)=abb72(47)*abb72(41)
      abb72(48)=abb72(103)-abb72(48)
      abb72(103)=abb72(48)*spae7k7
      abb72(24)=abb72(103)*abb72(24)
      abb72(105)=abb72(82)*spae7k7
      abb72(106)=abb72(105)*spbl6k3
      abb72(24)=abb72(24)+abb72(106)
      abb72(24)=abb72(24)*spbk7k2
      abb72(60)=-abb72(60)*abb72(76)
      abb72(60)=abb72(60)+abb72(65)
      abb72(65)=abb72(60)*abb72(83)
      abb72(107)=abb72(28)*abb72(23)
      abb72(34)=abb72(107)+abb72(34)
      abb72(107)=abb72(35)*spbl6k3
      abb72(108)=abb72(107)*abb72(34)
      abb72(65)=abb72(108)-abb72(65)
      abb72(65)=abb72(65)*abb72(66)
      abb72(24)=-abb72(65)+abb72(37)+abb72(55)-abb72(24)+abb72(99)
      abb72(37)=-abb72(23)-abb72(53)
      abb72(53)=abb72(107)*abb72(37)
      abb72(53)=abb72(53)-abb72(69)
      abb72(55)=abb72(53)*spbe7l5
      abb72(65)=abb72(55)*spak4l5
      abb72(53)=abb72(53)*spbk7e7
      abb72(66)=abb72(53)*spak4k7
      abb72(99)=abb72(107)*abb72(44)
      abb72(41)=abb72(64)*abb72(41)
      abb72(31)=-abb72(41)+abb72(31)
      abb72(41)=abb72(31)*abb72(83)
      abb72(64)=abb72(99)-abb72(41)
      abb72(99)=abb72(64)*spak4e7
      abb72(65)=abb72(24)-abb72(65)+abb72(66)+abb72(99)
      abb72(66)=8.0_ki*abb72(65)
      abb72(46)=spbe7k1*abb72(46)
      abb72(49)=abb72(49)*spae7k7
      abb72(99)=spbk7k1*abb72(49)
      abb72(25)=abb72(25)*abb72(47)*abb72(27)
      abb72(108)=abb72(47)*abb72(33)
      abb72(109)=abb72(108)*spak1k4
      abb72(25)=abb72(25)+abb72(109)
      abb72(109)=spbl5k1*abb72(25)
      abb72(46)=abb72(109)+abb72(99)+abb72(46)
      abb72(46)=abb72(95)*abb72(46)
      abb72(56)=-abb72(23)*abb72(56)
      abb72(32)=abb72(56)-abb72(32)
      abb72(56)=abb72(95)*spak3k4
      abb72(95)=-abb72(32)*abb72(56)
      abb72(63)=abb72(95)+abb72(63)
      abb72(63)=spbe7k3*abb72(63)
      abb72(95)=-abb72(103)*abb72(56)
      abb72(49)=abb72(57)*abb72(49)
      abb72(49)=abb72(95)+abb72(49)
      abb72(49)=spbk7k3*abb72(49)
      abb72(23)=abb72(27)*abb72(23)
      abb72(27)=abb72(23)*abb72(47)
      abb72(27)=abb72(27)+abb72(108)
      abb72(47)=-abb72(27)*abb72(56)
      abb72(25)=abb72(25)*abb72(57)
      abb72(25)=abb72(47)+abb72(25)
      abb72(25)=spbl5k3*abb72(25)
      abb72(34)=abb72(34)*abb72(4)
      abb72(47)=spak1l6*spbl6k3**2
      abb72(56)=abb72(47)*spak3k4
      abb72(57)=-abb72(34)*abb72(56)
      abb72(25)=abb72(25)+abb72(49)+abb72(57)+abb72(63)+abb72(46)
      abb72(25)=8.0_ki*abb72(25)
      abb72(46)=abb72(82)*spak1e7
      abb72(49)=abb72(79)*spak1l5
      abb72(57)=abb72(74)*spak1k7
      abb72(46)=-abb72(57)+abb72(46)+abb72(49)
      abb72(49)=-spbl6k2*abb72(46)
      abb72(57)=abb72(67)*spbe7k2
      abb72(57)=abb72(57)-abb72(87)
      abb72(63)=abb72(57)*abb72(61)
      abb72(19)=abb72(19)*abb72(43)
      abb72(18)=abb72(86)*abb72(18)
      abb72(19)=abb72(18)-abb72(19)
      abb72(19)=abb72(68)*abb72(19)
      abb72(67)=abb72(104)*abb72(19)
      abb72(68)=abb72(6)*abb72(43)
      abb72(68)=abb72(68)-abb72(92)
      abb72(12)=abb72(12)*abb72(68)
      abb72(68)=abb72(58)*abb72(12)
      abb72(63)=-abb72(68)+abb72(63)-abb72(67)
      abb72(67)=abb72(29)*spbl6k2
      abb72(67)=abb72(67)-abb72(63)
      abb72(68)=spak1k2*abb72(67)
      abb72(49)=abb72(49)-abb72(94)+abb72(68)
      abb72(49)=spbk3k1*abb72(49)
      abb72(68)=abb72(40)*abb72(45)
      abb72(67)=-abb72(67)+abb72(68)
      abb72(67)=spbk4k3*spak2k4*abb72(67)
      abb72(87)=spbk4k3*spbl6k2
      abb72(94)=abb72(74)*abb72(87)
      abb72(94)=abb72(53)+abb72(94)
      abb72(94)=spak4k7*abb72(94)
      abb72(95)=-abb72(79)*abb72(87)
      abb72(95)=-abb72(55)+abb72(95)
      abb72(95)=spak4l5*abb72(95)
      abb72(87)=-abb72(82)*abb72(87)
      abb72(87)=abb72(87)+abb72(64)
      abb72(87)=spak4e7*abb72(87)
      abb72(24)=abb72(87)+abb72(95)+abb72(94)+abb72(67)+abb72(49)+abb72(24)
      abb72(24)=8.0_ki*abb72(24)
      abb72(49)=abb72(50)*spbe7k3
      abb72(40)=abb72(40)*spae7k7
      abb72(67)=abb72(40)*spbk7k3
      abb72(28)=abb72(28)*abb72(59)
      abb72(59)=-abb72(28)*abb72(62)
      abb72(62)=abb72(93)*abb72(33)
      abb72(59)=abb72(59)-abb72(62)
      abb72(62)=abb72(59)*spbl5k3
      abb72(49)=-abb72(62)+abb72(49)-abb72(67)
      abb72(62)=-spbl6k3*abb72(29)
      abb72(62)=abb72(62)-abb72(49)
      abb72(62)=16.0_ki*abb72(62)
      abb72(65)=-4.0_ki*abb72(65)
      abb72(67)=spak1l6*spbl6k3
      abb72(87)=abb72(67)*spbk2k1
      abb72(93)=abb72(80)*spbk3k2
      abb72(87)=abb72(87)+abb72(93)
      abb72(93)=-abb72(82)*abb72(87)
      abb72(94)=spak3k4*spbk3k2
      abb72(95)=abb72(67)*abb72(94)
      abb72(99)=-abb72(44)*abb72(95)
      abb72(93)=abb72(99)+abb72(93)
      abb72(93)=4.0_ki*abb72(93)
      abb72(99)=8.0_ki*spbk3k2
      abb72(108)=abb72(82)*abb72(99)
      abb72(109)=spak3k4*spbl6k3
      abb72(110)=abb72(69)*abb72(109)
      abb72(71)=spbl6k3*abb72(71)
      abb72(71)=abb72(71)+abb72(110)+abb72(98)
      abb72(71)=4.0_ki*abb72(71)
      abb72(41)=spak3k4*abb72(41)
      abb72(41)=abb72(41)-abb72(84)
      abb72(41)=4.0_ki*abb72(41)
      abb72(56)=-abb72(44)*abb72(56)
      abb72(84)=spbk3k1*spak1k2*abb72(39)
      abb72(56)=abb72(56)+2.0_ki*abb72(84)
      abb72(56)=4.0_ki*abb72(56)
      abb72(84)=8.0_ki*spbl6k3
      abb72(98)=abb72(82)*abb72(84)
      abb72(110)=4.0_ki*spak3k4
      abb72(111)=spbk3k2**2*abb72(110)*abb72(81)
      abb72(32)=-abb72(32)*abb72(111)
      abb72(112)=-abb72(50)*abb72(99)
      abb72(39)=-4.0_ki*abb72(39)*abb72(83)
      abb72(113)=abb72(8)**2
      abb72(114)=-abb72(113)*abb72(37)
      abb72(115)=abb72(94)*spbl6k3
      abb72(116)=-abb72(114)*abb72(115)
      abb72(54)=-abb72(113)*abb72(54)
      abb72(113)=spbl6k1*spbk3k2
      abb72(117)=abb72(54)*abb72(113)
      abb72(118)=abb72(54)*spbl6k3
      abb72(119)=spbk2k1*abb72(118)
      abb72(116)=abb72(119)+abb72(116)+abb72(117)
      abb72(116)=4.0_ki*abb72(116)
      abb72(117)=abb72(74)*abb72(87)
      abb72(119)=abb72(37)*spbk7e7
      abb72(120)=-abb72(119)*abb72(95)
      abb72(117)=abb72(120)+abb72(117)
      abb72(117)=4.0_ki*abb72(117)
      abb72(120)=-abb72(74)*abb72(99)
      abb72(69)=abb72(69)*spak3k4
      abb72(121)=spbk7e7*abb72(69)
      abb72(73)=abb72(121)+abb72(73)
      abb72(73)=4.0_ki*abb72(73)
      abb72(47)=abb72(47)*abb72(110)
      abb72(110)=-abb72(119)*abb72(47)
      abb72(121)=-abb72(74)*abb72(84)
      abb72(88)=4.0_ki*abb72(88)
      abb72(122)=spbk7e7*abb72(88)
      abb72(123)=es12*spbl6k3
      abb72(124)=abb72(83)*spbl6k1
      abb72(123)=abb72(123)+abb72(124)
      abb72(124)=-abb72(40)*abb72(123)
      abb72(36)=abb72(36)*spae7k7
      abb72(125)=abb72(109)*abb72(83)
      abb72(126)=abb72(36)*abb72(125)
      abb72(124)=abb72(126)+abb72(124)
      abb72(124)=4.0_ki*abb72(124)
      abb72(123)=-abb72(59)*abb72(123)
      abb72(28)=-abb72(28)*abb72(76)
      abb72(76)=abb72(33)*abb72(92)
      abb72(28)=abb72(76)+abb72(28)
      abb72(76)=abb72(28)*abb72(125)
      abb72(76)=abb72(76)+abb72(123)
      abb72(76)=4.0_ki*abb72(76)
      abb72(92)=abb72(50)*spbe7k1
      abb72(123)=abb72(40)*spbk7k1
      abb72(125)=abb72(59)*spbl5k1
      abb72(92)=-abb72(125)+abb72(92)-abb72(123)
      abb72(97)=-abb72(97)*abb72(92)
      abb72(123)=abb72(100)*abb72(109)
      abb72(85)=abb72(123)+abb72(85)
      abb72(85)=spbe7k3*abb72(85)
      abb72(123)=abb72(36)*spak1k2
      abb72(125)=abb72(109)*abb72(123)
      abb72(126)=-abb72(40)*abb72(90)
      abb72(125)=abb72(125)+abb72(126)
      abb72(125)=spbk7k3*abb72(125)
      abb72(126)=abb72(28)*spak1k2
      abb72(127)=abb72(109)*abb72(126)
      abb72(128)=-abb72(59)*abb72(90)
      abb72(127)=abb72(127)+abb72(128)
      abb72(127)=spbl5k3*abb72(127)
      abb72(85)=abb72(127)+abb72(85)+abb72(125)+abb72(97)
      abb72(85)=4.0_ki*abb72(85)
      abb72(97)=-abb72(79)*abb72(87)
      abb72(37)=abb72(37)*spbe7l5
      abb72(125)=abb72(37)*abb72(95)
      abb72(97)=abb72(125)+abb72(97)
      abb72(97)=4.0_ki*abb72(97)
      abb72(125)=abb72(79)*abb72(99)
      abb72(69)=-spbe7l5*abb72(69)
      abb72(69)=abb72(69)-abb72(78)
      abb72(69)=4.0_ki*abb72(69)
      abb72(47)=abb72(37)*abb72(47)
      abb72(78)=abb72(79)*abb72(84)
      abb72(84)=-spbe7l5*abb72(88)
      abb72(88)=abb72(44)*spak4e7
      abb72(127)=abb72(37)*spak4l5
      abb72(128)=abb72(119)*spak4k7
      abb72(88)=abb72(128)+abb72(88)-abb72(127)
      abb72(127)=abb72(35)*abb72(88)
      abb72(26)=abb72(26)-abb72(43)
      abb72(38)=-abb72(38)*abb72(26)
      abb72(128)=abb72(38)*abb72(3)
      abb72(129)=abb72(128)*abb72(58)
      abb72(17)=abb72(26)*abb72(17)*abb72(30)
      abb72(26)=abb72(17)*abb72(104)
      abb72(30)=-abb72(38)*abb72(61)
      abb72(26)=abb72(30)+abb72(129)+abb72(26)
      abb72(26)=spae7k7*abb72(26)
      abb72(30)=spak2k4*spak1l6*abb72(36)
      abb72(26)=abb72(26)+abb72(30)
      abb72(26)=spbk7k2*abb72(26)
      abb72(30)=abb72(34)*abb72(35)
      abb72(89)=abb72(89)*spak1l6
      abb72(30)=abb72(30)-abb72(89)
      abb72(89)=-spak2k4*abb72(30)
      abb72(11)=abb72(86)*abb72(11)
      abb72(11)=abb72(11)+abb72(13)
      abb72(13)=abb72(11)*abb72(58)
      abb72(9)=abb72(18)*abb72(9)
      abb72(9)=abb72(9)+abb72(15)
      abb72(15)=-abb72(9)*abb72(104)
      abb72(10)=abb72(86)*abb72(10)
      abb72(10)=abb72(10)-abb72(14)
      abb72(14)=-abb72(10)*abb72(61)
      abb72(13)=abb72(26)+abb72(89)+abb72(14)+abb72(13)+abb72(15)+abb72(127)
      abb72(13)=spbl6k4*abb72(13)
      abb72(14)=abb72(16)*abb72(81)
      abb72(15)=abb72(51)*abb72(48)
      abb72(16)=abb72(60)*abb72(4)
      abb72(18)=abb72(16)*spak1k2
      abb72(14)=abb72(18)+abb72(14)-abb72(15)
      abb72(15)=abb72(77)+es12
      abb72(26)=-abb72(14)*abb72(15)
      abb72(48)=abb72(100)*spbk7e7
      abb72(51)=-spak4k7*abb72(48)
      abb72(58)=abb72(100)*spbe7l5
      abb72(60)=spak4l5*abb72(58)
      abb72(61)=abb72(100)*spbe7l6
      abb72(77)=spak4l6*abb72(61)
      abb72(81)=abb72(31)*spak1k2
      abb72(86)=-spak4e7*abb72(81)
      abb72(51)=abb72(77)+abb72(86)+abb72(51)+abb72(60)
      abb72(51)=spbk4k2*abb72(51)
      abb72(17)=c2*abb72(17)
      abb72(38)=-NC*abb72(38)
      abb72(17)=abb72(38)+2.0_ki*abb72(128)+abb72(17)
      abb72(17)=abb72(17)*abb72(45)
      abb72(9)=-c2*abb72(9)
      abb72(10)=-NC*abb72(10)
      abb72(9)=abb72(17)+abb72(10)+2.0_ki*abb72(11)+abb72(9)
      abb72(9)=spak1k3*spbl6k3*abb72(9)
      abb72(10)=-abb72(102)+abb72(72)
      abb72(10)=spak3l6*abb72(10)
      abb72(11)=-abb72(30)*abb72(90)
      abb72(17)=abb72(22)*es12
      abb72(30)=spbe7l6*spak1l6*abb72(17)
      abb72(38)=-spbk7e7*abb72(17)
      abb72(45)=-abb72(119)*abb72(75)
      abb72(38)=abb72(45)+abb72(38)
      abb72(38)=spak1k7*abb72(38)
      abb72(17)=spbe7l5*abb72(17)
      abb72(45)=abb72(37)*abb72(75)
      abb72(17)=abb72(45)+abb72(17)
      abb72(17)=spak1l5*abb72(17)
      abb72(45)=spbe7k1*abb72(35)*abb72(100)
      abb72(60)=-abb72(44)*abb72(75)
      abb72(31)=-es12*abb72(31)
      abb72(31)=abb72(60)+abb72(31)
      abb72(31)=spak1e7*abb72(31)
      abb72(60)=abb72(67)*abb72(91)
      abb72(67)=-abb72(107)*abb72(34)
      abb72(60)=abb72(67)+abb72(60)
      abb72(60)=spak2k3*abb72(60)
      abb72(64)=spak3e7*abb72(64)
      abb72(53)=spak3k7*abb72(53)
      abb72(55)=-spak3l5*abb72(55)
      abb72(67)=-spbe7k4*abb72(101)*spak4l6
      abb72(72)=spak1k2*abb72(42)*abb72(80)
      abb72(9)=abb72(10)+abb72(67)+abb72(55)+abb72(53)+abb72(64)+abb72(60)+abb7&
      &2(9)+abb72(51)+abb72(31)+abb72(45)+abb72(17)+abb72(38)+abb72(30)+abb72(1&
      &3)+abb72(11)+abb72(72)+abb72(26)
      abb72(9)=4.0_ki*abb72(9)
      abb72(10)=8.0_ki*abb72(14)
      abb72(11)=abb72(57)*NC
      abb72(13)=abb72(19)*c2
      abb72(11)=abb72(13)-abb72(11)+2.0_ki*abb72(12)
      abb72(12)=abb72(34)*spbl6k2
      abb72(12)=abb72(42)-abb72(12)+abb72(11)
      abb72(13)=-spak1k2*abb72(12)
      abb72(14)=abb72(44)*spak1e7
      abb72(17)=abb72(37)*spak1l5
      abb72(19)=abb72(119)*spak1k7
      abb72(14)=abb72(19)+abb72(14)-abb72(17)
      abb72(17)=spbl6k2*abb72(14)
      abb72(13)=abb72(17)+abb72(13)
      abb72(13)=8.0_ki*abb72(13)
      abb72(17)=4.0_ki*abb72(35)
      abb72(19)=abb72(44)*abb72(17)
      abb72(26)=-4.0_ki*abb72(101)
      abb72(30)=4.0_ki*abb72(81)
      abb72(31)=4.0_ki*spbl6k2
      abb72(35)=abb72(114)*abb72(31)
      abb72(38)=-16.0_ki*abb72(22)
      abb72(45)=abb72(119)*abb72(17)
      abb72(48)=4.0_ki*abb72(48)
      abb72(51)=-abb72(31)*abb72(123)
      abb72(53)=-abb72(31)*abb72(126)
      abb72(55)=-spbk7l6*abb72(123)
      abb72(57)=spbl6l5*abb72(126)
      abb72(55)=abb72(57)-abb72(61)+abb72(55)
      abb72(55)=4.0_ki*abb72(55)
      abb72(57)=-abb72(37)*abb72(17)
      abb72(58)=-4.0_ki*abb72(58)
      abb72(60)=abb72(100)*spbk3k1
      abb72(61)=-spak1k7*spbk7e7
      abb72(64)=spak1l5*spbe7l5
      abb72(61)=abb72(64)+abb72(61)
      abb72(61)=abb72(60)*abb72(61)
      abb72(64)=-spbk3k1*spak1k2**2*abb72(16)
      abb72(61)=abb72(64)+abb72(61)
      abb72(61)=8.0_ki*abb72(61)
      abb72(64)=-abb72(103)*abb72(111)
      abb72(67)=abb72(40)*abb72(99)
      abb72(72)=abb72(29)*abb72(87)
      abb72(75)=-abb72(34)*abb72(95)
      abb72(72)=abb72(75)+abb72(72)
      abb72(72)=4.0_ki*abb72(72)
      abb72(75)=-abb72(29)*abb72(99)
      abb72(17)=abb72(34)*abb72(17)
      abb72(27)=-abb72(27)*abb72(111)
      abb72(77)=abb72(59)*abb72(99)
      abb72(63)=abb72(68)+abb72(63)
      abb72(68)=4.0_ki*abb72(63)
      abb72(16)=spak3k4*abb72(83)*abb72(16)
      abb72(80)=-es12*abb72(52)
      abb72(16)=abb72(16)+abb72(80)
      abb72(16)=4.0_ki*abb72(16)
      abb72(63)=8.0_ki*abb72(63)
      abb72(80)=abb72(94)*abb72(22)
      abb72(81)=abb72(50)*spbk2k1
      abb72(80)=abb72(80)+abb72(81)
      abb72(80)=4.0_ki*abb72(80)
      abb72(11)=abb72(42)+abb72(11)
      abb72(42)=4.0_ki*spak1k3*abb72(11)
      abb72(52)=-abb72(83)*abb72(52)
      abb72(11)=spbk4k3*abb72(21)*abb72(11)
      abb72(11)=abb72(52)+abb72(11)
      abb72(11)=4.0_ki*abb72(11)
      abb72(21)=4.0_ki*spbk3k2
      abb72(50)=abb72(50)*abb72(21)
      abb72(52)=abb72(44)*spae7k7
      abb72(81)=-abb72(52)*abb72(115)
      abb72(83)=-abb72(105)*abb72(113)
      abb72(86)=-spbk2k1*abb72(106)
      abb72(81)=abb72(86)+abb72(81)+abb72(83)
      abb72(81)=4.0_ki*abb72(81)
      abb72(83)=abb72(31)*abb72(52)
      abb72(86)=-16.0_ki*abb72(36)
      abb72(87)=abb72(40)*spbk2k1
      abb72(89)=abb72(36)*abb72(94)
      abb72(87)=abb72(87)-abb72(89)
      abb72(87)=4.0_ki*abb72(87)
      abb72(40)=-abb72(40)*abb72(21)
      abb72(89)=abb72(29)*spak2k4
      abb72(90)=spak4k7*abb72(74)
      abb72(91)=-spak4l5*abb72(79)
      abb72(95)=-spak4e7*abb72(82)
      abb72(89)=abb72(95)+abb72(91)+abb72(90)-abb72(89)
      abb72(89)=spbk4k3*abb72(89)
      abb72(46)=-spbk3k1*abb72(46)
      abb72(46)=abb72(89)+abb72(46)
      abb72(46)=spbk2k1*abb72(46)
      abb72(89)=abb72(29)*spbk3k1
      abb72(90)=es12*abb72(89)
      abb72(46)=abb72(90)+abb72(46)
      abb72(46)=4.0_ki*abb72(46)
      abb72(90)=spbk3k2*abb72(88)
      abb72(91)=abb72(96)*abb72(34)
      abb72(90)=abb72(90)-abb72(91)
      abb72(91)=8.0_ki*abb72(90)
      abb72(89)=-16.0_ki*abb72(89)
      abb72(90)=-4.0_ki*abb72(90)
      abb72(95)=abb72(94)*abb72(44)
      abb72(96)=abb72(82)*spbk2k1
      abb72(95)=abb72(95)+abb72(96)
      abb72(95)=4.0_ki*abb72(95)
      abb72(96)=8.0_ki*spbk3k1
      abb72(99)=abb72(82)*abb72(96)
      abb72(100)=-abb72(82)*abb72(21)
      abb72(101)=abb72(94)*abb72(119)
      abb72(102)=abb72(74)*spbk2k1
      abb72(101)=abb72(101)-abb72(102)
      abb72(101)=4.0_ki*abb72(101)
      abb72(102)=-abb72(74)*abb72(96)
      abb72(103)=abb72(74)*abb72(21)
      abb72(104)=abb72(94)*abb72(37)
      abb72(107)=abb72(79)*spbk2k1
      abb72(104)=abb72(104)-abb72(107)
      abb72(104)=4.0_ki*abb72(104)
      abb72(96)=abb72(79)*abb72(96)
      abb72(107)=-abb72(79)*abb72(21)
      abb72(111)=abb72(44)*spak3e7
      abb72(123)=abb72(37)*spak3l5
      abb72(126)=abb72(119)*spak3k7
      abb72(111)=abb72(126)+abb72(111)-abb72(123)
      abb72(123)=spbk3k2*abb72(111)
      abb72(14)=spbk2k1*abb72(14)
      abb72(126)=spbk4k2*abb72(88)
      abb72(15)=abb72(34)*abb72(15)
      abb72(14)=abb72(126)+abb72(15)+abb72(14)+abb72(123)
      abb72(14)=4.0_ki*abb72(14)
      abb72(15)=abb72(34)*abb72(94)
      abb72(123)=abb72(29)*spbk2k1
      abb72(15)=abb72(15)-abb72(123)
      abb72(15)=4.0_ki*abb72(15)
      abb72(123)=abb72(29)*abb72(21)
      abb72(23)=-abb72(33)-abb72(23)
      abb72(33)=-abb72(70)*abb72(23)
      abb72(70)=spbk2k1*spbl6k3
      abb72(70)=abb72(70)+abb72(113)
      abb72(70)=abb72(33)*abb72(70)
      abb72(23)=-abb72(43)*abb72(23)
      abb72(43)=abb72(23)*abb72(115)
      abb72(43)=abb72(43)+abb72(70)
      abb72(43)=4.0_ki*abb72(43)
      abb72(31)=-abb72(23)*abb72(31)
      abb72(70)=-16.0_ki*abb72(28)
      abb72(113)=abb72(59)*spbk2k1
      abb72(94)=abb72(28)*abb72(94)
      abb72(94)=abb72(113)-abb72(94)
      abb72(94)=4.0_ki*abb72(94)
      abb72(21)=-abb72(59)*abb72(21)
      abb72(59)=spak2k4*abb72(12)
      abb72(88)=spbl6k2*abb72(88)
      abb72(59)=abb72(88)+abb72(59)
      abb72(88)=4.0_ki*abb72(59)
      abb72(59)=8.0_ki*abb72(59)
      abb72(113)=abb72(22)*spbe7k3
      abb72(115)=abb72(36)*spbk7k3
      abb72(126)=abb72(28)*spbl5k3
      abb72(113)=abb72(126)+abb72(113)+abb72(115)
      abb72(113)=abb72(113)*spak3k4
      abb72(92)=abb72(113)-abb72(92)
      abb72(113)=abb72(34)*abb72(109)
      abb72(29)=spbl6k1*abb72(29)
      abb72(29)=abb72(113)+abb72(29)-abb72(92)
      abb72(29)=8.0_ki*abb72(29)
      abb72(113)=abb72(44)*abb72(109)
      abb72(82)=-spbl6k1*abb72(82)
      abb72(82)=abb72(113)+abb72(82)
      abb72(82)=4.0_ki*abb72(82)
      abb72(113)=abb72(119)*abb72(109)
      abb72(74)=spbl6k1*abb72(74)
      abb72(74)=abb72(113)+abb72(74)
      abb72(74)=4.0_ki*abb72(74)
      abb72(113)=-abb72(37)*abb72(109)
      abb72(79)=-spbl6k1*abb72(79)
      abb72(79)=abb72(113)+abb72(79)
      abb72(79)=4.0_ki*abb72(79)
      abb72(111)=-spbl6k2*abb72(111)
      abb72(12)=-spak2k3*abb72(12)
      abb72(12)=abb72(12)+abb72(111)
      abb72(12)=4.0_ki*abb72(12)
      abb72(111)=spak4k7*spbk7e7
      abb72(113)=-spak4l5*spbe7l5
      abb72(111)=abb72(113)+abb72(111)
      abb72(60)=abb72(60)*abb72(111)
      abb72(18)=-spbk3k1*spak2k4*abb72(18)
      abb72(18)=abb72(18)+abb72(60)
      abb72(60)=-abb72(114)*abb72(109)
      abb72(54)=spbl6k1*abb72(54)
      abb72(54)=abb72(60)+abb72(54)
      abb72(54)=spbe7k3*abb72(54)
      abb72(60)=-abb72(109)*abb72(52)
      abb72(105)=-spbl6k1*abb72(105)
      abb72(60)=abb72(60)+abb72(105)
      abb72(60)=spbk7k3*abb72(60)
      abb72(105)=abb72(23)*abb72(109)
      abb72(109)=spbl6k1*abb72(33)
      abb72(105)=abb72(105)+abb72(109)
      abb72(105)=spbl5k3*abb72(105)
      abb72(109)=-spbe7k1*abb72(118)
      abb72(106)=spbk7k1*abb72(106)
      abb72(33)=-spbl5k1*spbl6k3*abb72(33)
      abb72(18)=abb72(33)+abb72(106)+abb72(109)+abb72(105)+abb72(60)+2.0_ki*abb&
      &72(18)+abb72(54)
      abb72(18)=4.0_ki*abb72(18)
      abb72(33)=spbe7l6*abb72(114)
      abb72(52)=spbk7l6*abb72(52)
      abb72(23)=spbl6l5*abb72(23)
      abb72(23)=abb72(23)+abb72(33)+abb72(52)
      abb72(23)=4.0_ki*abb72(23)
      abb72(33)=-4.0_ki*abb72(44)
      abb72(22)=8.0_ki*abb72(22)
      abb72(44)=-4.0_ki*abb72(119)
      abb72(37)=4.0_ki*abb72(37)
      abb72(36)=8.0_ki*abb72(36)
      abb72(34)=-4.0_ki*abb72(34)
      abb72(28)=8.0_ki*abb72(28)
      abb72(52)=4.0_ki*abb72(92)
      abb72(49)=4.0_ki*abb72(49)
      R2d72=0.0_ki
      rat2 = rat2 + R2d72
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='72' value='", &
          & R2d72, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd72h2