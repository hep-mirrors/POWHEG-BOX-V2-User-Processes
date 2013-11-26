module     p1_dbarc_epnebbbarg_abbrevd77h2
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(107), public :: abb77
   complex(ki), public :: R2d77
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
      abb77(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb77(2)=sqrt(mB**2)
      abb77(3)=NC**(-1)
      abb77(4)=es71**(-1)
      abb77(5)=spbl5k2**(-1)
      abb77(6)=spak2l6**(-1)
      abb77(7)=spbl6k2**(-1)
      abb77(8)=spak2l5**(-1)
      abb77(9)=abb77(3)**2
      abb77(9)=abb77(9)+1.0_ki
      abb77(10)=TR*gW
      abb77(10)=abb77(10)**2*i_*spak1e7*CVDC*abb77(1)
      abb77(11)=abb77(10)*abb77(4)
      abb77(12)=abb77(11)*abb77(9)
      abb77(13)=mB**3
      abb77(14)=abb77(13)*abb77(12)
      abb77(15)=abb77(2)*c4
      abb77(16)=abb77(14)*abb77(15)
      abb77(17)=abb77(11)*abb77(3)
      abb77(18)=abb77(13)*abb77(17)
      abb77(19)=2.0_ki*c3
      abb77(20)=abb77(19)*abb77(2)
      abb77(21)=abb77(18)*abb77(20)
      abb77(22)=abb77(16)-abb77(21)
      abb77(23)=spbk7e7*spbk3k2
      abb77(24)=abb77(23)*abb77(6)
      abb77(25)=abb77(24)*abb77(22)
      abb77(26)=abb77(10)*abb77(3)
      abb77(27)=mB*abb77(4)
      abb77(28)=abb77(26)*abb77(27)
      abb77(29)=abb77(28)*abb77(20)
      abb77(30)=abb77(29)*abb77(23)
      abb77(10)=abb77(10)*abb77(9)
      abb77(27)=abb77(27)*abb77(10)
      abb77(31)=abb77(27)*abb77(15)
      abb77(32)=abb77(31)*abb77(23)
      abb77(30)=abb77(30)-abb77(32)
      abb77(33)=spbl6k2*abb77(30)
      abb77(25)=abb77(33)+abb77(25)
      abb77(25)=spak4l5*abb77(25)
      abb77(33)=abb77(23)*abb77(5)
      abb77(34)=abb77(33)*abb77(6)
      abb77(35)=-abb77(34)*abb77(22)
      abb77(36)=abb77(31)-abb77(29)
      abb77(37)=-abb77(33)*abb77(36)
      abb77(38)=abb77(37)*spbl6k2
      abb77(39)=abb77(35)-abb77(38)
      abb77(40)=spbk2k1*spak1k4
      abb77(41)=abb77(39)*abb77(40)
      abb77(25)=abb77(25)+abb77(41)
      abb77(25)=spak2k7*abb77(25)
      abb77(41)=abb77(6)*spbk3k2
      abb77(42)=abb77(41)*spbe7k1
      abb77(22)=abb77(22)*abb77(42)
      abb77(43)=abb77(2)*spbe7k1
      abb77(44)=spbk3k2*c4
      abb77(45)=abb77(43)*abb77(44)
      abb77(27)=abb77(45)*abb77(27)
      abb77(46)=spbe7k1*spbk3k2
      abb77(47)=abb77(29)*abb77(46)
      abb77(47)=abb77(47)-abb77(27)
      abb77(48)=-spbl6k2*abb77(47)
      abb77(48)=abb77(48)-abb77(22)
      abb77(48)=spak4l5*abb77(48)
      abb77(22)=-abb77(5)*abb77(22)
      abb77(49)=abb77(27)*abb77(5)
      abb77(50)=abb77(46)*abb77(5)
      abb77(51)=abb77(50)*abb77(29)
      abb77(49)=abb77(51)-abb77(49)
      abb77(51)=abb77(49)*spbl6k2
      abb77(52)=abb77(22)-abb77(51)
      abb77(53)=spbk7k2*spak4k7
      abb77(54)=abb77(52)*abb77(53)
      abb77(48)=abb77(48)+abb77(54)
      abb77(48)=spak1k2*abb77(48)
      abb77(54)=abb77(39)*spak4k7
      abb77(55)=-spak1k4*abb77(52)
      abb77(55)=-abb77(54)+abb77(55)
      abb77(55)=es12*abb77(55)
      abb77(56)=abb77(31)*spbe7k1
      abb77(57)=abb77(29)*spbe7k1
      abb77(58)=abb77(56)-abb77(57)
      abb77(59)=abb77(58)*spak1l5
      abb77(60)=-spbk7e7*abb77(36)
      abb77(61)=abb77(60)*spal5k7
      abb77(59)=abb77(59)+abb77(61)
      abb77(61)=spak4k7*spbl6k3
      abb77(62)=abb77(61)*spbk7k2
      abb77(63)=abb77(40)*spbl6k3
      abb77(64)=abb77(62)-abb77(63)
      abb77(65)=spak4l5*spbl6k3
      abb77(66)=-spbl5k2*abb77(65)
      abb77(66)=abb77(66)-abb77(64)
      abb77(66)=abb77(59)*abb77(66)
      abb77(15)=abb77(10)*abb77(15)
      abb77(20)=abb77(20)*abb77(26)
      abb77(15)=abb77(15)-abb77(20)
      abb77(13)=abb77(34)*abb77(13)*abb77(15)
      abb77(15)=-spbl6k2*abb77(33)*mB*abb77(15)
      abb77(13)=abb77(15)+abb77(13)
      abb77(13)=spak4k7*abb77(13)
      abb77(15)=abb77(5)*spbk7e7
      abb77(20)=-abb77(15)*abb77(36)
      abb77(67)=abb77(20)*spbl6k2
      abb77(68)=abb77(67)*abb77(64)
      abb77(60)=abb77(60)*abb77(65)
      abb77(69)=spbl6k2*abb77(60)
      abb77(68)=abb77(69)+abb77(68)
      abb77(68)=spal6k7*abb77(68)
      abb77(58)=abb77(58)*abb77(65)
      abb77(69)=abb77(5)*spbe7k1
      abb77(70)=-abb77(69)*abb77(36)
      abb77(71)=abb77(64)*abb77(70)
      abb77(58)=abb77(58)-abb77(71)
      abb77(71)=spak1l6*spbl6k2*abb77(58)
      abb77(54)=es712*abb77(54)
      abb77(13)=abb77(54)+abb77(55)+abb77(71)+abb77(68)+abb77(48)+abb77(25)+abb&
      &77(13)+abb77(66)
      abb77(13)=4.0_ki*abb77(13)
      abb77(25)=abb77(38)*spak4k7
      abb77(48)=abb77(51)*spak1k4
      abb77(25)=abb77(25)-abb77(48)
      abb77(48)=-abb77(24)*abb77(36)
      abb77(54)=abb77(48)*spal5k7
      abb77(36)=-abb77(42)*abb77(36)
      abb77(55)=abb77(36)*spak1l5
      abb77(54)=abb77(54)-abb77(55)
      abb77(55)=abb77(54)*spak2k4
      abb77(66)=abb77(12)*c4
      abb77(68)=abb77(17)*abb77(19)
      abb77(66)=abb77(66)-abb77(68)
      abb77(71)=-spbk7e7*abb77(66)
      abb77(72)=abb77(71)*spal5k7
      abb77(73)=abb77(68)*spbe7k1
      abb77(74)=spbe7k1*c4
      abb77(75)=abb77(12)*abb77(74)
      abb77(73)=abb77(73)-abb77(75)
      abb77(75)=abb77(73)*spak1l5
      abb77(76)=abb77(72)-abb77(75)
      abb77(77)=abb77(76)*abb77(61)
      abb77(78)=-spbk7k2*abb77(77)
      abb77(79)=-spbl6k3*abb77(76)
      abb77(80)=-abb77(79)*abb77(40)
      abb77(76)=abb77(76)*abb77(65)
      abb77(81)=-spbl5k2*abb77(76)
      abb77(78)=abb77(81)+abb77(80)+abb77(78)-abb77(55)+abb77(25)
      abb77(78)=8.0_ki*abb77(78)
      abb77(80)=abb77(6)**2
      abb77(81)=abb77(16)*abb77(80)
      abb77(21)=abb77(21)*abb77(80)
      abb77(81)=abb77(21)-abb77(81)
      abb77(81)=abb77(23)*abb77(81)
      abb77(82)=-abb77(7)*abb77(81)
      abb77(82)=abb77(48)+abb77(82)
      abb77(82)=spak2k7*abb77(82)
      abb77(14)=abb77(80)*abb77(45)*abb77(14)
      abb77(21)=abb77(21)*abb77(46)
      abb77(14)=abb77(14)-abb77(21)
      abb77(21)=-abb77(7)*abb77(14)
      abb77(21)=-abb77(36)+abb77(21)
      abb77(21)=spak1k2*abb77(21)
      abb77(45)=spbk7e7*abb77(6)
      abb77(29)=abb77(45)*abb77(29)
      abb77(31)=abb77(45)*abb77(31)
      abb77(29)=abb77(29)-abb77(31)
      abb77(83)=abb77(29)*spal5k7
      abb77(57)=abb77(57)*abb77(6)
      abb77(56)=abb77(56)*abb77(6)
      abb77(57)=abb77(57)-abb77(56)
      abb77(84)=abb77(57)*spak1l5
      abb77(84)=abb77(83)-abb77(84)
      abb77(85)=-spbl5k3*abb77(84)
      abb77(21)=abb77(85)+abb77(21)+abb77(82)
      abb77(21)=spak4l5*abb77(21)
      abb77(82)=mB**4
      abb77(85)=abb77(82)*abb77(12)
      abb77(86)=abb77(6)*c4
      abb77(87)=abb77(85)*abb77(23)*abb77(86)
      abb77(88)=-abb77(24)*abb77(16)
      abb77(87)=abb77(87)+abb77(88)
      abb77(87)=abb77(5)*abb77(87)
      abb77(17)=abb77(82)*abb77(17)
      abb77(88)=abb77(2)*abb77(18)
      abb77(88)=-abb77(17)+abb77(88)
      abb77(89)=abb77(19)*abb77(5)
      abb77(88)=abb77(89)*abb77(24)*abb77(88)
      abb77(90)=mB**2
      abb77(11)=abb77(90)*abb77(11)
      abb77(91)=abb77(11)*abb77(3)
      abb77(92)=abb77(19)*abb77(91)
      abb77(93)=abb77(33)*abb77(92)
      abb77(9)=abb77(11)*abb77(9)
      abb77(11)=abb77(33)*c4
      abb77(94)=abb77(11)*abb77(9)
      abb77(93)=abb77(93)-abb77(94)
      abb77(94)=spbl6k2*abb77(93)
      abb77(87)=abb77(94)+abb77(87)+abb77(88)
      abb77(87)=spal5k7*abb77(87)
      abb77(88)=-abb77(85)*abb77(41)*abb77(74)
      abb77(16)=abb77(42)*abb77(16)
      abb77(16)=abb77(88)+abb77(16)
      abb77(16)=abb77(5)*abb77(16)
      abb77(18)=-abb77(41)*abb77(43)*abb77(18)
      abb77(17)=abb77(42)*abb77(17)
      abb77(17)=abb77(17)+abb77(18)
      abb77(17)=abb77(17)*abb77(89)
      abb77(18)=abb77(69)*abb77(44)
      abb77(88)=abb77(18)*abb77(9)
      abb77(50)=abb77(50)*abb77(92)
      abb77(50)=abb77(50)-abb77(88)
      abb77(88)=-spbl6k2*abb77(50)
      abb77(16)=abb77(88)+abb77(16)+abb77(17)
      abb77(16)=spak1l5*abb77(16)
      abb77(16)=abb77(87)+abb77(16)
      abb77(16)=spak2k4*abb77(16)
      abb77(17)=spak2k7*spak4l5
      abb77(35)=abb77(35)*abb77(17)
      abb77(87)=spak1k2*spak4l5
      abb77(22)=-abb77(22)*abb77(87)
      abb77(16)=abb77(22)+abb77(16)+abb77(35)
      abb77(16)=abb77(8)*abb77(16)
      abb77(22)=-spal5k7*abb77(81)
      abb77(35)=-spak1l5*abb77(14)
      abb77(22)=abb77(22)+abb77(35)
      abb77(22)=abb77(7)*abb77(22)
      abb77(22)=abb77(22)+abb77(54)
      abb77(22)=spak2k4*abb77(22)
      abb77(35)=spak4k7*abb77(81)
      abb77(14)=spak1k4*abb77(14)
      abb77(14)=abb77(35)+abb77(14)
      abb77(14)=abb77(7)*abb77(14)
      abb77(35)=-spak4k7*abb77(48)
      abb77(36)=spak1k4*abb77(36)
      abb77(14)=abb77(14)+abb77(35)+abb77(36)
      abb77(14)=spak2l5*abb77(14)
      abb77(35)=abb77(42)*abb77(92)
      abb77(36)=abb77(9)*abb77(74)
      abb77(41)=abb77(36)*abb77(41)
      abb77(35)=abb77(35)-abb77(41)
      abb77(41)=abb77(35)*spak1l5
      abb77(24)=abb77(24)*abb77(92)
      abb77(42)=abb77(9)*abb77(86)
      abb77(48)=abb77(42)*abb77(23)
      abb77(24)=abb77(24)-abb77(48)
      abb77(48)=abb77(24)*spal5k7
      abb77(41)=abb77(41)-abb77(48)
      abb77(41)=abb77(41)*abb77(7)
      abb77(48)=-abb77(23)*abb77(66)
      abb77(66)=abb77(48)*spal5k7
      abb77(44)=abb77(44)*spbe7k1
      abb77(12)=abb77(44)*abb77(12)
      abb77(74)=abb77(68)*abb77(46)
      abb77(12)=abb77(12)-abb77(74)
      abb77(81)=abb77(12)*spak1l5
      abb77(66)=abb77(66)+abb77(81)
      abb77(41)=abb77(41)+abb77(66)
      abb77(81)=spak4k7*abb77(41)
      abb77(88)=spbk7l6*abb77(81)
      abb77(94)=spak4l5*abb77(41)
      abb77(95)=-spbl6l5*abb77(94)
      abb77(96)=abb77(41)*spak1k4
      abb77(97)=-spbl6k1*abb77(96)
      abb77(98)=abb77(6)*abb77(91)
      abb77(99)=abb77(98)*spbk7e7
      abb77(100)=abb77(2)*abb77(28)
      abb77(101)=abb77(100)*abb77(45)
      abb77(99)=abb77(99)+abb77(101)
      abb77(99)=abb77(99)*abb77(19)
      abb77(101)=abb77(42)*spbk7e7
      abb77(31)=abb77(99)-abb77(101)-abb77(31)
      abb77(99)=abb77(31)*abb77(65)
      abb77(102)=abb77(5)*abb77(6)
      abb77(103)=abb77(102)*spbk7e7
      abb77(104)=abb77(103)*abb77(92)
      abb77(105)=abb77(42)*abb77(15)
      abb77(104)=abb77(104)-abb77(105)
      abb77(105)=abb77(104)*abb77(64)
      abb77(99)=abb77(99)+abb77(105)
      abb77(99)=spal6k7*abb77(99)
      abb77(28)=abb77(6)*abb77(28)*abb77(43)
      abb77(43)=abb77(98)*spbe7k1
      abb77(28)=abb77(28)+abb77(43)
      abb77(28)=abb77(28)*abb77(19)
      abb77(43)=abb77(36)*abb77(6)
      abb77(28)=abb77(28)-abb77(43)-abb77(56)
      abb77(56)=-abb77(28)*abb77(65)
      abb77(98)=abb77(92)*spbe7k1
      abb77(105)=abb77(98)-abb77(36)
      abb77(102)=abb77(102)*abb77(105)
      abb77(105)=-abb77(102)*abb77(64)
      abb77(56)=abb77(56)+abb77(105)
      abb77(56)=spak1l6*abb77(56)
      abb77(83)=-spak4k7*abb77(83)
      abb77(105)=abb77(57)*spak1k4
      abb77(106)=spal5k7*abb77(105)
      abb77(83)=abb77(83)+abb77(106)
      abb77(83)=spbk7k3*abb77(83)
      abb77(106)=spak4k7*abb77(29)
      abb77(106)=abb77(106)-abb77(105)
      abb77(106)=spbk3k1*spak1l5*abb77(106)
      abb77(107)=abb77(29)*abb77(61)
      abb77(105)=-spbl6k3*abb77(105)
      abb77(105)=abb77(107)+abb77(105)
      abb77(105)=spal5l6*abb77(105)
      abb77(57)=spbk7k3*abb77(57)
      abb77(29)=-spbk3k1*abb77(29)
      abb77(29)=abb77(57)+abb77(29)
      abb77(57)=spak1k7*spak4l5
      abb77(29)=abb77(29)*abb77(57)
      abb77(14)=abb77(29)+abb77(105)+abb77(106)+abb77(97)+abb77(83)+abb77(95)+a&
      &bb77(88)+abb77(14)+abb77(56)+abb77(99)+abb77(16)+abb77(22)-abb77(25)+abb&
      &77(21)
      abb77(14)=8.0_ki*abb77(14)
      abb77(16)=abb77(42)*abb77(33)
      abb77(21)=abb77(34)*abb77(92)
      abb77(16)=abb77(16)-abb77(21)
      abb77(21)=abb77(16)*spak4k7
      abb77(22)=-abb77(5)*abb77(35)
      abb77(25)=abb77(22)*spak1k4
      abb77(21)=abb77(21)-abb77(25)
      abb77(25)=-16.0_ki*abb77(21)
      abb77(29)=abb77(82)*abb77(80)
      abb77(34)=abb77(5)*abb77(29)*abb77(74)
      abb77(42)=abb77(85)*abb77(80)
      abb77(18)=abb77(18)*abb77(42)
      abb77(18)=abb77(34)-abb77(18)
      abb77(34)=-spak1k4*abb77(18)
      abb77(29)=abb77(68)*abb77(29)*abb77(33)
      abb77(11)=abb77(11)*abb77(42)
      abb77(11)=abb77(29)-abb77(11)
      abb77(29)=spak4k7*abb77(11)
      abb77(29)=abb77(29)+abb77(34)
      abb77(29)=abb77(7)*abb77(29)
      abb77(29)=abb77(29)+abb77(21)
      abb77(29)=16.0_ki*abb77(29)
      abb77(33)=abb77(9)*c4
      abb77(34)=abb77(23)*abb77(33)
      abb77(32)=abb77(34)-abb77(32)
      abb77(32)=abb77(5)*abb77(32)
      abb77(34)=abb77(91)-abb77(100)
      abb77(34)=abb77(34)*abb77(89)
      abb77(23)=-abb77(23)*abb77(34)
      abb77(23)=abb77(32)+abb77(23)
      abb77(23)=spak4k7*abb77(23)
      abb77(9)=-abb77(9)*abb77(44)
      abb77(9)=abb77(9)+abb77(27)
      abb77(9)=abb77(5)*abb77(9)
      abb77(27)=abb77(46)*abb77(34)
      abb77(9)=abb77(9)+abb77(27)
      abb77(9)=spak1k4*abb77(9)
      abb77(27)=abb77(93)*abb77(17)
      abb77(32)=-abb77(50)*abb77(87)
      abb77(27)=abb77(27)+abb77(32)
      abb77(27)=abb77(8)*abb77(27)
      abb77(9)=abb77(27)+abb77(23)+abb77(9)
      abb77(9)=spbl6k2*abb77(9)
      abb77(23)=abb77(48)*spbl6k2
      abb77(23)=abb77(23)-abb77(24)
      abb77(24)=-spak4k7*abb77(23)
      abb77(12)=abb77(12)*spbl6k2
      abb77(12)=abb77(35)+abb77(12)
      abb77(27)=-spak1k4*abb77(12)
      abb77(24)=abb77(24)+abb77(27)
      abb77(24)=spak2l5*abb77(24)
      abb77(27)=abb77(71)*spbl6k2
      abb77(32)=spal6k7*abb77(27)
      abb77(34)=abb77(73)*spbl6k2
      abb77(35)=-spak1l6*abb77(34)
      abb77(32)=abb77(35)+abb77(32)
      abb77(32)=abb77(65)*abb77(32)
      abb77(17)=abb77(23)*abb77(17)
      abb77(12)=abb77(12)*abb77(87)
      abb77(23)=abb77(72)*spbl6k2
      abb77(35)=-spak4k7*abb77(23)
      abb77(42)=abb77(34)*spak1k4
      abb77(44)=spal5k7*abb77(42)
      abb77(35)=abb77(35)+abb77(44)
      abb77(35)=spbk7k3*abb77(35)
      abb77(44)=spak1l5*spak4k7*abb77(27)
      abb77(46)=abb77(75)*spbl6k2
      abb77(48)=-spak1k4*abb77(46)
      abb77(44)=abb77(44)+abb77(48)
      abb77(44)=spbk3k1*abb77(44)
      abb77(48)=abb77(61)*abb77(27)
      abb77(42)=-spbl6k3*abb77(42)
      abb77(42)=abb77(48)+abb77(42)
      abb77(42)=spal5l6*abb77(42)
      abb77(23)=abb77(46)-abb77(23)
      abb77(46)=spbl5k3*spak4l5*abb77(23)
      abb77(48)=spbk7k3*abb77(34)
      abb77(50)=-spbk3k1*abb77(27)
      abb77(48)=abb77(48)+abb77(50)
      abb77(48)=abb77(48)*abb77(57)
      abb77(9)=abb77(48)+abb77(46)+abb77(42)+abb77(44)+abb77(35)+abb77(24)+abb7&
      &7(12)+abb77(17)-abb77(55)+abb77(32)+abb77(9)
      abb77(9)=4.0_ki*abb77(9)
      abb77(12)=-8.0_ki*abb77(21)
      abb77(17)=abb77(53)-abb77(40)
      abb77(21)=-abb77(37)*abb77(17)
      abb77(24)=-spak4l5*abb77(30)
      abb77(30)=-spak4l6*abb77(38)
      abb77(21)=abb77(30)+abb77(24)+abb77(21)
      abb77(21)=4.0_ki*abb77(21)
      abb77(24)=spak2k4*abb77(39)
      abb77(30)=-abb77(20)*abb77(64)
      abb77(24)=-abb77(60)+abb77(24)+abb77(30)
      abb77(24)=4.0_ki*abb77(24)
      abb77(11)=abb77(11)*abb77(7)
      abb77(11)=abb77(11)+abb77(16)
      abb77(30)=8.0_ki*spak2k4
      abb77(32)=abb77(11)*abb77(30)
      abb77(10)=abb77(86)*abb77(15)*abb77(10)
      abb77(19)=-abb77(26)*abb77(19)*abb77(103)
      abb77(10)=abb77(10)+abb77(19)
      abb77(10)=abb77(90)*abb77(10)
      abb77(19)=es712*abb77(104)
      abb77(10)=abb77(19)+abb77(10)
      abb77(10)=abb77(61)*abb77(10)
      abb77(19)=abb77(45)*abb77(92)
      abb77(19)=abb77(19)-abb77(101)
      abb77(26)=-abb77(19)*abb77(65)
      abb77(35)=abb77(104)*abb77(63)
      abb77(26)=abb77(26)+abb77(35)
      abb77(26)=spak2k7*abb77(26)
      abb77(35)=abb77(98)*abb77(6)
      abb77(35)=abb77(35)-abb77(43)
      abb77(37)=abb77(35)*abb77(65)
      abb77(38)=abb77(102)*abb77(62)
      abb77(37)=abb77(37)+abb77(38)
      abb77(37)=spak1k2*abb77(37)
      abb77(33)=-abb77(33)+abb77(92)
      abb77(15)=spal5k7*abb77(15)*abb77(33)
      abb77(33)=abb77(5)*abb77(36)
      abb77(36)=-abb77(92)*abb77(69)
      abb77(33)=abb77(33)+abb77(36)
      abb77(33)=spak1l5*abb77(33)
      abb77(15)=abb77(15)+abb77(33)
      abb77(15)=abb77(8)*spak2k4*spbl6k3*spbl6k2*abb77(15)
      abb77(33)=spbk7l6*abb77(77)
      abb77(36)=-spbl6l5*abb77(76)
      abb77(38)=spbl6k1*spak1k4*abb77(79)
      abb77(39)=-abb77(104)*abb77(61)
      abb77(40)=-abb77(102)*spak1k4*spbl6k3
      abb77(39)=abb77(39)+abb77(40)
      abb77(39)=es12*abb77(39)
      abb77(10)=abb77(39)+abb77(38)+abb77(36)+abb77(33)+abb77(15)+abb77(37)+abb&
      &77(26)+abb77(10)
      abb77(10)=4.0_ki*abb77(10)
      abb77(15)=-8.0_ki*abb77(66)
      abb77(26)=8.0_ki*abb77(41)
      abb77(33)=-4.0_ki*abb77(66)
      abb77(36)=spbl6k2*abb77(59)
      abb77(20)=-spal6k7*abb77(20)
      abb77(37)=spak1l6*abb77(70)
      abb77(20)=abb77(37)+abb77(20)
      abb77(20)=abb77(20)*spbl6k2**2
      abb77(20)=abb77(20)+abb77(36)
      abb77(20)=4.0_ki*abb77(20)
      abb77(23)=8.0_ki*abb77(23)
      abb77(36)=-spal6k7*abb77(104)
      abb77(37)=spak1l6*abb77(102)
      abb77(36)=abb77(37)+abb77(36)
      abb77(36)=spbl6k2*abb77(36)
      abb77(27)=-abb77(27)+abb77(31)
      abb77(27)=spal5k7*abb77(27)
      abb77(28)=abb77(34)-abb77(28)
      abb77(28)=spak1l5*abb77(28)
      abb77(27)=abb77(27)+abb77(28)+abb77(36)
      abb77(27)=8.0_ki*abb77(27)
      abb77(28)=4.0_ki*abb77(67)
      abb77(31)=8.0_ki*abb77(104)
      abb77(34)=spak2k7*abb77(104)
      abb77(36)=-spak1k2*abb77(102)
      abb77(34)=abb77(34)+abb77(36)
      abb77(36)=4.0_ki*spbl6k2
      abb77(34)=abb77(34)*abb77(36)
      abb77(37)=abb77(16)*spak2k7
      abb77(38)=abb77(22)*spak1k2
      abb77(37)=abb77(79)+abb77(37)-abb77(38)
      abb77(38)=8.0_ki*abb77(37)
      abb77(39)=-spal5k7*abb77(19)
      abb77(40)=spak1l5*abb77(35)
      abb77(39)=abb77(39)+abb77(40)
      abb77(39)=abb77(7)*spbl6k3*abb77(39)
      abb77(11)=-spak2k7*abb77(11)
      abb77(18)=abb77(18)*abb77(7)
      abb77(18)=abb77(18)+abb77(22)
      abb77(40)=spak1k2*abb77(18)
      abb77(11)=abb77(40)+abb77(11)+abb77(39)-abb77(79)
      abb77(11)=8.0_ki*abb77(11)
      abb77(37)=4.0_ki*abb77(37)
      abb77(39)=4.0_ki*abb77(54)
      abb77(40)=-spak4k7*abb77(39)
      abb77(41)=-spbk7k2*abb77(81)
      abb77(42)=spbk2k1*abb77(96)
      abb77(43)=-spbl5k2*abb77(94)
      abb77(41)=abb77(43)+abb77(41)+abb77(42)
      abb77(41)=4.0_ki*abb77(41)
      abb77(42)=4.0_ki*spak4l6
      abb77(16)=abb77(16)*abb77(42)
      abb77(43)=-spak4l5*abb77(39)
      abb77(44)=-abb77(42)*spbl6k2*abb77(84)
      abb77(45)=-abb77(104)*abb77(17)
      abb77(19)=-spak4l5*abb77(19)
      abb77(19)=abb77(19)+abb77(45)
      abb77(19)=4.0_ki*abb77(19)
      abb77(39)=-spak1k4*abb77(39)
      abb77(45)=-abb77(49)*abb77(17)
      abb77(46)=-spak4l5*abb77(47)
      abb77(47)=-spak4l6*abb77(51)
      abb77(45)=abb77(47)+abb77(46)+abb77(45)
      abb77(45)=4.0_ki*abb77(45)
      abb77(46)=spak2k4*abb77(52)
      abb77(46)=abb77(46)+abb77(58)
      abb77(46)=4.0_ki*abb77(46)
      abb77(18)=abb77(18)*abb77(30)
      abb77(30)=abb77(70)*abb77(36)
      abb77(36)=8.0_ki*abb77(102)
      abb77(22)=abb77(22)*abb77(42)
      abb77(17)=-abb77(102)*abb77(17)
      abb77(35)=-spak4l5*abb77(35)
      abb77(17)=abb77(35)+abb77(17)
      abb77(17)=4.0_ki*abb77(17)
      R2d77=0.0_ki
      rat2 = rat2 + R2d77
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='77' value='", &
          & R2d77, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd77h2
