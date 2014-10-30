module     p0_dbaru_epnebbbarg_abbrevd310h5
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh5
   implicit none
   private
   complex(ki), dimension(104), public :: abb310
   complex(ki), public :: R2d310
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
      abb310(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb310(2)=NC**(-1)
      abb310(3)=sqrt2**(-1)
      abb310(4)=es234**(-1)
      abb310(5)=spbl6k2**(-1)
      abb310(6)=spbk7k2**(-1)
      abb310(7)=spak2l5**(-1)
      abb310(8)=spak2l6**(-1)
      abb310(9)=sqrt(mB**2)
      abb310(10)=TR*gW
      abb310(10)=abb310(10)**2*i_*CVDU*abb310(3)*abb310(1)
      abb310(11)=abb310(6)*abb310(4)
      abb310(12)=abb310(10)*abb310(11)*spbk3k2
      abb310(13)=c4*abb310(2)**2
      abb310(14)=abb310(13)*abb310(12)
      abb310(15)=spak1k7*abb310(14)
      abb310(16)=abb310(12)*abb310(2)
      abb310(17)=abb310(16)*c1
      abb310(18)=abb310(17)*spak1k7
      abb310(16)=abb310(16)*c3
      abb310(19)=abb310(16)*spak1k7
      abb310(20)=-abb310(19)+abb310(15)-abb310(18)
      abb310(21)=abb310(7)*spak1l6
      abb310(22)=abb310(21)*mB
      abb310(23)=-abb310(22)*abb310(20)
      abb310(24)=abb310(9)*spak3k4
      abb310(25)=spbk3k1*abb310(23)*abb310(24)
      abb310(15)=-abb310(15)+abb310(19)+abb310(18)
      abb310(15)=spak1l6*abb310(15)
      abb310(18)=spbk2k1*spak2k4
      abb310(19)=mB**2
      abb310(26)=abb310(19)*abb310(7)
      abb310(27)=-abb310(18)*abb310(26)*abb310(15)
      abb310(28)=abb310(10)*spak1k7
      abb310(29)=abb310(11)*abb310(2)
      abb310(30)=abb310(28)*abb310(29)
      abb310(31)=spbk3k2**2
      abb310(32)=abb310(30)*abb310(31)
      abb310(33)=c1+c3
      abb310(34)=abb310(32)*abb310(33)
      abb310(35)=abb310(13)*abb310(11)
      abb310(36)=abb310(35)*abb310(28)
      abb310(37)=abb310(36)*abb310(31)
      abb310(38)=abb310(34)-abb310(37)
      abb310(39)=abb310(8)*spak3k4
      abb310(40)=abb310(5)**2*mB**4
      abb310(41)=-es12*abb310(39)*abb310(38)*abb310(40)*abb310(7)
      abb310(41)=abb310(41)+abb310(27)
      abb310(23)=abb310(9)*abb310(23)*abb310(18)
      abb310(42)=abb310(25)-abb310(41)-abb310(23)
      abb310(43)=es712-es71
      abb310(42)=abb310(43)*abb310(42)
      abb310(19)=abb310(19)*abb310(5)
      abb310(44)=-abb310(19)*abb310(15)
      abb310(45)=spak2k4*spbl5k2
      abb310(46)=abb310(45)*abb310(8)
      abb310(47)=abb310(46)*spbk2k1
      abb310(48)=abb310(44)*abb310(47)
      abb310(49)=spbl5k3*spak3k4
      abb310(50)=abb310(49)*abb310(8)
      abb310(44)=-spbk2k1*abb310(44)*abb310(50)
      abb310(51)=abb310(19)*abb310(28)
      abb310(52)=abb310(2)*abb310(33)
      abb310(53)=spbk3k2*abb310(4)
      abb310(54)=-abb310(52)*abb310(51)*abb310(53)
      abb310(55)=abb310(28)*abb310(53)
      abb310(56)=abb310(19)*abb310(13)
      abb310(57)=abb310(55)*abb310(56)
      abb310(54)=abb310(57)+abb310(54)
      abb310(57)=abb310(50)-abb310(46)
      abb310(57)=abb310(57)*spal6k7
      abb310(58)=abb310(54)*abb310(57)
      abb310(44)=abb310(58)+abb310(48)+abb310(44)
      abb310(44)=es12*abb310(44)
      abb310(58)=abb310(53)*spak1k7**2
      abb310(59)=abb310(10)*abb310(2)
      abb310(60)=abb310(58)*abb310(59)
      abb310(61)=abb310(33)*abb310(60)
      abb310(62)=abb310(10)*abb310(13)
      abb310(58)=abb310(62)*abb310(58)
      abb310(61)=abb310(61)-abb310(58)
      abb310(63)=abb310(9)*spbk2k1
      abb310(64)=abb310(5)*mB
      abb310(65)=-abb310(63)*abb310(64)*abb310(61)
      abb310(66)=abb310(19)*abb310(33)
      abb310(60)=abb310(66)*abb310(60)
      abb310(58)=abb310(58)*abb310(19)
      abb310(58)=abb310(58)-abb310(60)
      abb310(60)=spbk2k1*abb310(58)
      abb310(60)=abb310(60)-abb310(65)
      abb310(60)=abb310(60)*abb310(49)
      abb310(67)=abb310(49)*spbk2k1
      abb310(68)=abb310(45)*spbk2k1
      abb310(67)=abb310(67)-abb310(68)
      abb310(69)=spak1l6**2
      abb310(70)=-abb310(67)*abb310(20)*abb310(69)
      abb310(71)=abb310(52)-abb310(13)
      abb310(55)=abb310(71)*abb310(55)
      abb310(49)=abb310(49)-abb310(45)
      abb310(72)=abb310(49)*spal6k7
      abb310(73)=abb310(55)*abb310(72)
      abb310(74)=-spak1l6*abb310(73)
      abb310(70)=abb310(74)+abb310(70)
      abb310(70)=spbl6k1*abb310(70)
      abb310(74)=abb310(21)*abb310(19)
      abb310(75)=-spak3k4*abb310(43)
      abb310(76)=abb310(75)*spbl6k3
      abb310(77)=-spbk2k1*abb310(20)*abb310(74)*abb310(76)
      abb310(58)=-abb310(58)*abb310(68)
      abb310(65)=abb310(45)*abb310(65)
      abb310(42)=abb310(77)+abb310(70)+abb310(44)+abb310(60)+abb310(58)+abb310(&
      &65)+abb310(42)
      abb310(42)=8.0_ki*abb310(42)
      abb310(44)=abb310(31)*abb310(33)
      abb310(58)=abb310(10)*spak1l6
      abb310(60)=abb310(58)*abb310(29)
      abb310(65)=abb310(7)*mB
      abb310(68)=abb310(60)*abb310(65)
      abb310(70)=-abb310(68)*abb310(44)
      abb310(77)=abb310(35)*abb310(31)
      abb310(78)=abb310(65)*abb310(58)
      abb310(79)=abb310(77)*abb310(78)
      abb310(70)=abb310(79)+abb310(70)
      abb310(79)=abb310(24)*spak2k7
      abb310(70)=abb310(70)*abb310(79)
      abb310(16)=abb310(16)+abb310(17)
      abb310(17)=spak1l6*abb310(16)
      abb310(12)=abb310(12)*spak1l6
      abb310(80)=abb310(12)*abb310(13)
      abb310(81)=abb310(17)-abb310(80)
      abb310(82)=abb310(81)*abb310(49)
      abb310(83)=abb310(82)*spal6k7
      abb310(84)=abb310(83)*spbl6k2
      abb310(70)=abb310(70)-abb310(84)
      abb310(84)=-16.0_ki*abb310(70)
      abb310(85)=abb310(15)*spbl6k2
      abb310(86)=spbl5k1*spak4l6
      abb310(87)=abb310(85)*abb310(86)
      abb310(88)=spak4l6*spbl5k2
      abb310(89)=abb310(88)*spbl6k1
      abb310(90)=abb310(89)*abb310(15)
      abb310(91)=-abb310(64)*abb310(20)
      abb310(92)=spak1k4*spbl5k2
      abb310(93)=abb310(9)*abb310(92)
      abb310(94)=abb310(93)*spbk2k1
      abb310(95)=abb310(91)*abb310(94)
      abb310(96)=abb310(22)*abb310(16)
      abb310(65)=abb310(80)*abb310(65)
      abb310(65)=abb310(96)-abb310(65)
      abb310(96)=2.0_ki*abb310(9)
      abb310(97)=abb310(65)*abb310(96)
      abb310(98)=spak4k7*es12
      abb310(99)=spak2k7*spbk2k1
      abb310(100)=abb310(99)*spak1k4
      abb310(98)=abb310(98)-abb310(100)
      abb310(100)=-abb310(97)*abb310(98)
      abb310(48)=-abb310(48)-abb310(95)-abb310(90)+abb310(87)+abb310(100)
      abb310(27)=abb310(48)+abb310(27)
      abb310(27)=16.0_ki*abb310(27)
      abb310(23)=abb310(25)-abb310(23)+abb310(41)+abb310(48)
      abb310(23)=16.0_ki*abb310(23)
      abb310(25)=-abb310(15)*abb310(67)
      abb310(41)=abb310(19)*abb310(7)
      abb310(48)=abb310(41)*abb310(38)
      abb310(67)=abb310(48)*abb310(75)
      abb310(25)=abb310(73)+abb310(70)+abb310(67)+abb310(25)
      abb310(25)=16.0_ki*abb310(25)
      abb310(67)=abb310(20)*abb310(88)
      abb310(73)=32.0_ki*abb310(67)
      abb310(87)=spak3k4*abb310(48)
      abb310(67)=abb310(87)-abb310(67)
      abb310(67)=32.0_ki*abb310(67)
      abb310(70)=-8.0_ki*abb310(70)
      abb310(17)=-abb310(19)*abb310(17)
      abb310(12)=abb310(56)*abb310(12)
      abb310(12)=abb310(12)+abb310(17)
      abb310(17)=abb310(12)*abb310(46)
      abb310(12)=abb310(12)*abb310(50)
      abb310(12)=-abb310(17)+abb310(12)
      abb310(12)=es12*abb310(12)
      abb310(50)=abb310(64)*abb310(55)
      abb310(55)=abb310(9)*abb310(50)
      abb310(55)=abb310(54)+abb310(55)
      abb310(45)=abb310(45)*abb310(55)
      abb310(55)=abb310(65)*abb310(9)
      abb310(87)=abb310(55)*spak2k4
      abb310(90)=spak2k4*abb310(26)*abb310(81)
      abb310(87)=abb310(87)-abb310(90)
      abb310(95)=abb310(87)*abb310(43)
      abb310(54)=-spak3k4*abb310(54)
      abb310(50)=-abb310(50)*abb310(24)
      abb310(50)=abb310(54)+abb310(50)
      abb310(50)=spbl5k3*abb310(50)
      abb310(54)=abb310(10)*abb310(7)
      abb310(100)=abb310(54)*abb310(29)
      abb310(101)=abb310(100)*abb310(31)
      abb310(102)=abb310(33)*abb310(101)
      abb310(103)=abb310(77)*abb310(54)
      abb310(102)=abb310(102)-abb310(103)
      abb310(39)=abb310(39)*abb310(40)*abb310(102)
      abb310(40)=-abb310(39)*abb310(43)
      abb310(102)=abb310(62)*abb310(19)
      abb310(104)=abb310(66)*abb310(59)
      abb310(102)=abb310(102)-abb310(104)
      abb310(53)=-abb310(57)*abb310(53)*abb310(102)
      abb310(40)=abb310(53)+abb310(40)
      abb310(40)=spak1k2*abb310(40)
      abb310(24)=-spbk3k1*spak1k2*abb310(24)
      abb310(53)=spbk7k3*abb310(79)
      abb310(24)=abb310(53)+abb310(24)
      abb310(24)=abb310(65)*abb310(24)
      abb310(14)=abb310(16)-abb310(14)
      abb310(53)=-spbl6k1*abb310(69)*abb310(49)*abb310(14)
      abb310(16)=abb310(16)*abb310(74)
      abb310(57)=abb310(80)*abb310(41)
      abb310(16)=abb310(57)-abb310(16)
      abb310(16)=abb310(16)*abb310(76)
      abb310(57)=spbk7l6*abb310(83)
      abb310(12)=abb310(57)+abb310(16)+abb310(40)+abb310(53)+abb310(12)+abb310(&
      &50)+abb310(95)+abb310(24)+abb310(45)
      abb310(12)=8.0_ki*abb310(12)
      abb310(16)=-abb310(81)*spbl6l5
      abb310(24)=abb310(16)*spak4l6
      abb310(40)=abb310(64)*abb310(14)
      abb310(45)=abb310(40)*abb310(93)
      abb310(17)=abb310(17)+abb310(24)+abb310(45)
      abb310(24)=abb310(97)*spak2k4
      abb310(24)=-abb310(24)+abb310(17)+abb310(90)
      abb310(24)=16.0_ki*abb310(24)
      abb310(39)=spak1k2*abb310(39)
      abb310(17)=abb310(39)+abb310(17)-abb310(87)
      abb310(17)=16.0_ki*abb310(17)
      abb310(39)=abb310(66)*abb310(101)
      abb310(45)=abb310(103)*abb310(19)
      abb310(39)=abb310(45)-abb310(39)
      abb310(45)=-spak1k2*spak3k4*abb310(39)
      abb310(45)=abb310(45)+abb310(82)
      abb310(45)=16.0_ki*abb310(45)
      abb310(50)=-abb310(20)*abb310(49)
      abb310(53)=8.0_ki*abb310(50)
      abb310(57)=spbk3k1*spak3k4
      abb310(65)=abb310(57)-abb310(18)
      abb310(69)=-abb310(85)*abb310(65)
      abb310(76)=spak1l6*abb310(33)
      abb310(79)=abb310(32)*abb310(76)
      abb310(37)=-spak1l6*abb310(37)
      abb310(37)=abb310(37)+abb310(79)
      abb310(37)=spbl6k1*spak3k4*abb310(37)
      abb310(37)=abb310(37)+abb310(69)
      abb310(37)=8.0_ki*abb310(37)
      abb310(69)=16.0_ki*spak3k4
      abb310(79)=-abb310(38)*abb310(69)
      abb310(80)=spbl6k2*spak2k4
      abb310(82)=-spbl6k3*spak3k4
      abb310(80)=abb310(80)+abb310(82)
      abb310(80)=-8.0_ki*abb310(81)*abb310(80)
      abb310(81)=-16.0_ki*abb310(14)
      abb310(82)=abb310(81)*spak1k4
      abb310(50)=16.0_ki*abb310(50)
      abb310(83)=abb310(20)*spbl5k1
      abb310(87)=16.0_ki*spak1k4
      abb310(87)=abb310(87)*abb310(83)
      abb310(49)=-8.0_ki*abb310(61)*abb310(49)
      abb310(61)=abb310(20)*abb310(92)
      abb310(61)=16.0_ki*abb310(61)
      abb310(90)=abb310(30)*abb310(76)
      abb310(95)=abb310(36)*spak1l6
      abb310(95)=abb310(95)-abb310(90)
      abb310(101)=abb310(86)*spbl6k2
      abb310(89)=abb310(101)-abb310(89)
      abb310(89)=abb310(89)*abb310(95)
      abb310(95)=abb310(78)*abb310(35)
      abb310(68)=-abb310(68)*abb310(33)
      abb310(68)=abb310(95)+abb310(68)
      abb310(68)=abb310(68)*abb310(96)
      abb310(95)=abb310(98)*abb310(68)
      abb310(30)=abb310(30)*abb310(33)
      abb310(30)=abb310(30)-abb310(36)
      abb310(94)=abb310(94)*abb310(30)*abb310(64)
      abb310(89)=abb310(94)+abb310(89)-abb310(95)
      abb310(94)=-spbk4k2*abb310(89)
      abb310(15)=spbl5k2*abb310(15)*spbl6k1
      abb310(85)=abb310(85)*spbl5k1
      abb310(15)=abb310(15)-abb310(85)
      abb310(85)=-spak3l6*abb310(15)
      abb310(95)=abb310(26)*spak1l6
      abb310(36)=abb310(95)*abb310(36)
      abb310(98)=abb310(90)*abb310(26)
      abb310(36)=abb310(36)-abb310(98)
      abb310(98)=abb310(51)*spak1l6
      abb310(101)=abb310(98)*abb310(35)
      abb310(90)=abb310(90)*abb310(19)
      abb310(90)=abb310(101)-abb310(90)
      abb310(101)=abb310(8)*spbl5k2
      abb310(102)=-abb310(90)*abb310(101)
      abb310(102)=abb310(36)+abb310(102)
      abb310(102)=es34*abb310(102)
      abb310(52)=-abb310(98)*abb310(6)*abb310(52)
      abb310(28)=abb310(28)*abb310(6)
      abb310(103)=spak1l6*abb310(56)*abb310(28)
      abb310(52)=abb310(103)+abb310(52)
      abb310(52)=abb310(52)*abb310(101)
      abb310(28)=abb310(71)*abb310(28)
      abb310(71)=abb310(95)*abb310(28)
      abb310(52)=abb310(102)+abb310(71)+abb310(52)
      abb310(52)=spbk2k1*abb310(52)
      abb310(71)=-spbl5k2*abb310(91)*abb310(63)
      abb310(95)=abb310(97)*abb310(99)
      abb310(71)=abb310(71)+abb310(95)
      abb310(71)=spak1k3*abb310(71)
      abb310(95)=-spak3k7*es12*abb310(97)
      abb310(52)=abb310(95)+abb310(71)+abb310(85)+abb310(94)+abb310(52)
      abb310(52)=8.0_ki*abb310(52)
      abb310(71)=abb310(20)*spbl5k2
      abb310(85)=-spak3l6*abb310(71)
      abb310(94)=abb310(30)*spbk4k2
      abb310(95)=abb310(88)*abb310(94)
      abb310(85)=abb310(95)+abb310(85)
      abb310(85)=16.0_ki*abb310(85)
      abb310(95)=abb310(33)*abb310(60)
      abb310(97)=abb310(35)*abb310(58)
      abb310(95)=abb310(95)-abb310(97)
      abb310(99)=abb310(95)*spbl6l5*spak4l6
      abb310(10)=abb310(29)*abb310(10)*abb310(33)
      abb310(11)=abb310(62)*abb310(11)
      abb310(10)=abb310(10)-abb310(11)
      abb310(11)=abb310(10)*abb310(64)
      abb310(29)=abb310(93)*abb310(11)
      abb310(29)=abb310(99)-abb310(29)
      abb310(62)=-spbk4k2*abb310(29)
      abb310(93)=-abb310(26)*abb310(95)
      abb310(68)=-abb310(68)+abb310(93)
      abb310(93)=abb310(60)*abb310(66)
      abb310(95)=abb310(97)*abb310(19)
      abb310(95)=abb310(95)-abb310(93)
      abb310(97)=abb310(95)*abb310(101)
      abb310(97)=abb310(97)-abb310(68)
      abb310(97)=es34*abb310(97)
      abb310(59)=abb310(59)*abb310(6)
      abb310(99)=-abb310(59)*abb310(76)
      abb310(13)=abb310(13)*abb310(6)
      abb310(102)=abb310(58)*abb310(13)
      abb310(99)=abb310(102)+abb310(99)
      abb310(26)=abb310(26)*abb310(99)
      abb310(33)=abb310(33)*abb310(59)
      abb310(99)=abb310(22)*abb310(33)
      abb310(13)=-abb310(78)*abb310(13)
      abb310(13)=abb310(13)+abb310(99)
      abb310(13)=abb310(13)*abb310(96)
      abb310(76)=abb310(76)*abb310(19)
      abb310(59)=abb310(59)*abb310(76)
      abb310(56)=abb310(56)*abb310(6)
      abb310(78)=-abb310(58)*abb310(56)
      abb310(59)=abb310(78)+abb310(59)
      abb310(59)=abb310(59)*abb310(101)
      abb310(78)=spak3l6*abb310(16)
      abb310(96)=abb310(9)*spbl5k2
      abb310(40)=abb310(96)*abb310(40)
      abb310(99)=spak1k3*abb310(40)
      abb310(13)=abb310(99)+abb310(78)+abb310(97)+abb310(59)+abb310(13)+abb310(&
      &26)+abb310(62)
      abb310(13)=8.0_ki*abb310(13)
      abb310(26)=abb310(10)*spbk4k2
      abb310(59)=spak1k4*abb310(26)
      abb310(62)=spak1k3*abb310(14)
      abb310(59)=abb310(59)+abb310(62)
      abb310(59)=8.0_ki*abb310(59)
      abb310(62)=spak1k3*abb310(83)
      abb310(78)=spbl5k1*spak1k4
      abb310(97)=-abb310(94)*abb310(78)
      abb310(62)=abb310(97)+abb310(62)
      abb310(62)=8.0_ki*abb310(62)
      abb310(97)=-spak1k3*abb310(71)
      abb310(99)=abb310(92)*abb310(94)
      abb310(97)=abb310(99)+abb310(97)
      abb310(97)=8.0_ki*abb310(97)
      abb310(36)=-abb310(36)*abb310(18)
      abb310(47)=abb310(90)*abb310(47)
      abb310(36)=abb310(47)+abb310(36)+abb310(89)
      abb310(36)=spbk4k3*abb310(36)
      abb310(15)=spak2l6*abb310(15)
      abb310(47)=es12*abb310(91)*abb310(96)
      abb310(15)=abb310(15)+abb310(47)+abb310(36)
      abb310(15)=8.0_ki*abb310(15)
      abb310(36)=spak2l6*abb310(71)
      abb310(47)=abb310(30)*spbk4k3
      abb310(88)=-abb310(88)*abb310(47)
      abb310(36)=abb310(88)+abb310(36)
      abb310(36)=16.0_ki*abb310(36)
      abb310(68)=spak2k4*abb310(68)
      abb310(46)=-abb310(95)*abb310(46)
      abb310(29)=abb310(46)+abb310(68)+abb310(29)
      abb310(29)=spbk4k3*abb310(29)
      abb310(40)=-spak1k2*abb310(40)
      abb310(16)=-spak2l6*abb310(16)
      abb310(16)=abb310(16)+abb310(40)+abb310(29)
      abb310(16)=8.0_ki*abb310(16)
      abb310(10)=abb310(10)*spbk4k3
      abb310(29)=-spak1k4*abb310(10)
      abb310(40)=-spak1k2*abb310(14)
      abb310(29)=abb310(29)+abb310(40)
      abb310(29)=8.0_ki*abb310(29)
      abb310(40)=-spak1k2*abb310(83)
      abb310(46)=abb310(47)*abb310(78)
      abb310(40)=abb310(46)+abb310(40)
      abb310(40)=8.0_ki*abb310(40)
      abb310(46)=spak1k2*abb310(71)
      abb310(47)=-abb310(92)*abb310(47)
      abb310(46)=abb310(47)+abb310(46)
      abb310(46)=8.0_ki*abb310(46)
      abb310(34)=-abb310(74)*abb310(34)
      abb310(21)=abb310(21)*abb310(51)*abb310(77)
      abb310(21)=abb310(21)+abb310(34)
      abb310(34)=8.0_ki*spak3k4
      abb310(21)=abb310(21)*abb310(34)*spbk2k1
      abb310(44)=abb310(60)*abb310(44)
      abb310(47)=abb310(77)*abb310(58)
      abb310(44)=-abb310(47)+abb310(44)
      abb310(44)=abb310(34)*abb310(41)*abb310(44)
      abb310(32)=abb310(32)*abb310(76)
      abb310(51)=-abb310(77)*abb310(98)
      abb310(32)=abb310(51)+abb310(32)
      abb310(51)=abb310(34)*abb310(8)
      abb310(32)=spbk2k1*abb310(32)*abb310(51)
      abb310(58)=-abb310(31)*abb310(93)
      abb310(47)=abb310(19)*abb310(47)
      abb310(47)=abb310(47)+abb310(58)
      abb310(47)=abb310(47)*abb310(51)
      abb310(51)=-abb310(34)*abb310(55)
      abb310(55)=abb310(34)*abb310(9)
      abb310(22)=-abb310(55)*abb310(22)*abb310(38)
      abb310(58)=abb310(14)*abb310(72)
      abb310(60)=spak2k7*spak3k4
      abb310(39)=-abb310(39)*abb310(60)
      abb310(39)=abb310(58)+abb310(39)
      abb310(39)=8.0_ki*abb310(39)
      abb310(38)=-abb310(38)*abb310(34)
      abb310(63)=abb310(63)*abb310(64)*abb310(38)
      abb310(11)=abb310(55)*abb310(31)*abb310(11)
      abb310(31)=abb310(81)*spak4l6
      abb310(55)=-abb310(14)*abb310(34)
      abb310(64)=abb310(65)*abb310(20)
      abb310(64)=8.0_ki*abb310(64)
      abb310(65)=8.0_ki*spak2k4
      abb310(68)=-abb310(14)*abb310(65)
      abb310(26)=spak4l6*abb310(26)
      abb310(71)=spak3l6*abb310(14)
      abb310(26)=abb310(26)+abb310(71)
      abb310(26)=8.0_ki*abb310(26)
      abb310(10)=-spak4l6*abb310(10)
      abb310(71)=-spak2l6*abb310(14)
      abb310(10)=abb310(10)+abb310(71)
      abb310(10)=8.0_ki*abb310(10)
      abb310(14)=abb310(41)*abb310(14)
      abb310(69)=abb310(14)*abb310(69)
      abb310(20)=-abb310(41)*abb310(20)
      abb310(71)=abb310(20)*abb310(18)
      abb310(72)=-abb310(71)*abb310(43)
      abb310(20)=-spbk3k1*abb310(20)*abb310(75)
      abb310(20)=abb310(20)+abb310(72)
      abb310(20)=8.0_ki*abb310(20)
      abb310(72)=16.0_ki*abb310(58)
      abb310(74)=abb310(83)*spak4l6
      abb310(71)=abb310(74)+abb310(71)
      abb310(71)=16.0_ki*abb310(71)
      abb310(58)=-8.0_ki*abb310(58)
      abb310(57)=-spak1k2*abb310(57)
      abb310(60)=spbk7k3*abb310(60)
      abb310(57)=abb310(60)+abb310(57)
      abb310(57)=abb310(14)*abb310(57)
      abb310(60)=abb310(14)*spak2k4
      abb310(43)=abb310(60)*abb310(43)
      abb310(43)=abb310(43)+abb310(57)
      abb310(43)=8.0_ki*abb310(43)
      abb310(57)=16.0_ki*abb310(60)
      abb310(60)=spak3l6*abb310(83)
      abb310(74)=abb310(30)*abb310(41)
      abb310(75)=es34*abb310(74)
      abb310(28)=-abb310(41)*abb310(28)
      abb310(28)=abb310(75)+abb310(28)
      abb310(28)=spbk2k1*abb310(28)
      abb310(75)=-abb310(86)*abb310(94)
      abb310(28)=abb310(60)+abb310(75)+abb310(28)
      abb310(28)=8.0_ki*abb310(28)
      abb310(19)=abb310(54)*abb310(35)*abb310(19)
      abb310(35)=abb310(66)*abb310(100)
      abb310(19)=abb310(19)-abb310(35)
      abb310(35)=es34*abb310(19)
      abb310(33)=abb310(41)*abb310(33)
      abb310(41)=-abb310(54)*abb310(56)
      abb310(33)=abb310(35)+abb310(41)+abb310(33)
      abb310(33)=8.0_ki*abb310(33)
      abb310(18)=-abb310(74)*abb310(18)
      abb310(30)=abb310(30)*abb310(86)
      abb310(18)=abb310(18)+abb310(30)
      abb310(18)=spbk4k3*abb310(18)
      abb310(30)=-spak2l6*abb310(83)
      abb310(18)=abb310(18)+abb310(30)
      abb310(18)=8.0_ki*abb310(18)
      abb310(19)=-spbk4k3*abb310(19)*abb310(65)
      abb310(14)=-abb310(14)*abb310(34)
      abb310(30)=-abb310(48)*abb310(34)
      R2d310=0.0_ki
      rat2 = rat2 + R2d310
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='310' value='", &
          & R2d310, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd310h5