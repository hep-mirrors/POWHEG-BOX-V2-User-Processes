module     p0_dbaru_epnebbbarg_abbrevd85h2
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(101), public :: abb85
   complex(ki), public :: R2d85
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
      abb85(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb85(2)=es56**(-1)
      abb85(3)=spbl5k2**(-1)
      abb85(4)=spak2l6**(-1)
      abb85(5)=es71-es712
      abb85(6)=abb85(5)+es12
      abb85(7)=spbe7k1*abb85(6)
      abb85(8)=spak1l5*spbl6k3
      abb85(9)=abb85(8)*spak3k4
      abb85(10)=abb85(7)*abb85(9)
      abb85(11)=spak1l5*spbl6k2
      abb85(12)=abb85(7)*abb85(11)
      abb85(13)=abb85(6)*spbk7e7
      abb85(14)=spal5k7*abb85(13)
      abb85(15)=abb85(14)*spbl6k2
      abb85(12)=abb85(12)-abb85(15)
      abb85(15)=-spak2k4*abb85(12)
      abb85(16)=-spak2k7*abb85(13)
      abb85(7)=spak1k2*abb85(7)
      abb85(7)=abb85(16)+abb85(7)
      abb85(16)=mB**2*abb85(3)*abb85(4)
      abb85(17)=abb85(16)*spbk3k2
      abb85(18)=abb85(17)*spak3k4
      abb85(7)=abb85(7)*abb85(18)
      abb85(14)=-spak3k4*spbl6k3*abb85(14)
      abb85(7)=abb85(7)+abb85(15)+abb85(14)+abb85(10)
      abb85(10)=gW*TR
      abb85(10)=abb85(10)**2*abb85(1)*abb85(2)*CVDU*c2
      abb85(14)=4.0_ki*abb85(10)
      abb85(15)=i_*spak1e7
      abb85(14)=abb85(14)*abb85(15)
      abb85(19)=abb85(14)*spbk3k2
      abb85(7)=abb85(7)*abb85(19)
      abb85(20)=2.0_ki*es12
      abb85(21)=abb85(20)-es71
      abb85(22)=-abb85(21)*abb85(9)
      abb85(21)=abb85(21)*abb85(11)
      abb85(23)=spak1k2*spbl6k2
      abb85(24)=spbk7k2*spal5k7*abb85(23)
      abb85(24)=-2.0_ki*abb85(24)+abb85(21)
      abb85(24)=spak2k4*abb85(24)
      abb85(25)=abb85(17)*spak1k2
      abb85(26)=abb85(25)*spak3k4
      abb85(27)=2.0_ki*es712
      abb85(28)=-abb85(27)+3.0_ki*es71
      abb85(28)=abb85(28)*abb85(26)
      abb85(29)=spbl6k3*spal5k7
      abb85(30)=abb85(29)*spbk7k2
      abb85(31)=spak3k4*spak1k2*abb85(30)
      abb85(22)=abb85(28)+abb85(24)+2.0_ki*abb85(31)+abb85(22)
      abb85(24)=abb85(10)*i_
      abb85(28)=4.0_ki*abb85(24)
      abb85(22)=spbk3k2*abb85(22)*abb85(28)
      abb85(31)=spbk7e7*spal5k7
      abb85(32)=abb85(31)*spbl6k3
      abb85(33)=abb85(32)*spak3k4
      abb85(34)=abb85(9)*spbe7k1
      abb85(33)=abb85(33)-abb85(34)
      abb85(34)=abb85(11)*spbe7k1
      abb85(35)=abb85(31)*spbl6k2
      abb85(34)=abb85(34)-abb85(35)
      abb85(36)=abb85(34)*spak2k4
      abb85(37)=spbk7e7*spak2k7
      abb85(38)=spak1k2*spbe7k1
      abb85(37)=abb85(37)-abb85(38)
      abb85(39)=abb85(37)*abb85(18)
      abb85(36)=abb85(36)+abb85(39)+abb85(33)
      abb85(39)=8.0_ki*i_
      abb85(39)=abb85(10)*abb85(39)
      abb85(40)=abb85(39)*spak1e7
      abb85(41)=abb85(40)*spbk3k2
      abb85(42)=-abb85(36)*abb85(41)
      abb85(43)=abb85(11)*spak2k4
      abb85(9)=-abb85(9)+abb85(43)-abb85(26)
      abb85(43)=abb85(39)*spbk3k2
      abb85(44)=abb85(9)*abb85(43)
      abb85(45)=spbe7k2*spak2k4
      abb85(46)=abb85(45)*abb85(16)
      abb85(47)=abb85(6)*abb85(46)
      abb85(48)=spak4l5*spbe7l6
      abb85(49)=abb85(6)*abb85(48)
      abb85(47)=abb85(47)+abb85(49)
      abb85(47)=abb85(47)*abb85(41)
      abb85(50)=spbk7k2*spak1k7
      abb85(51)=abb85(50)*spak2k4
      abb85(52)=abb85(51)*abb85(16)
      abb85(53)=abb85(23)*spak4l5
      abb85(54)=spak1k7*spbk7l6
      abb85(55)=abb85(54)*spak4l5
      abb85(53)=abb85(53)-abb85(55)
      abb85(52)=abb85(52)-abb85(53)
      abb85(56)=16.0_ki*abb85(24)
      abb85(57)=abb85(56)*spbk3k2
      abb85(52)=abb85(52)*abb85(57)
      abb85(58)=abb85(46)+abb85(48)
      abb85(59)=abb85(58)*spbk3k2
      abb85(60)=16.0_ki*abb85(15)
      abb85(60)=abb85(60)*abb85(10)*abb85(59)
      abb85(61)=abb85(46)*spbk4k3
      abb85(62)=2.0_ki*spak4e7
      abb85(63)=abb85(50)*abb85(62)*abb85(61)
      abb85(64)=spak1k2*es71
      abb85(65)=abb85(64)*abb85(16)
      abb85(66)=abb85(54)*spak2l5
      abb85(66)=2.0_ki*abb85(66)
      abb85(65)=abb85(65)+abb85(66)
      abb85(67)=spbe7k2*spak4e7
      abb85(65)=spbk3k2*abb85(65)*abb85(67)
      abb85(62)=spbk4k3*abb85(62)*abb85(55)
      abb85(68)=abb85(8)*es71
      abb85(69)=abb85(68)*spak4e7
      abb85(62)=abb85(62)+abb85(69)
      abb85(62)=abb85(62)*spbe7k2
      abb85(62)=abb85(63)+abb85(65)+abb85(62)
      abb85(63)=spbe7l6*spak2l5
      abb85(65)=spbk7k2*spak4k7
      abb85(69)=abb85(63)*abb85(65)
      abb85(49)=abb85(69)-abb85(49)
      abb85(36)=abb85(36)+2.0_ki*abb85(49)
      abb85(49)=abb85(38)*abb85(65)
      abb85(69)=spak4k7*abb85(13)
      abb85(49)=abb85(69)-abb85(49)
      abb85(69)=spak3k4*spbe7k3
      abb85(70)=abb85(6)*abb85(69)
      abb85(70)=abb85(70)-abb85(49)
      abb85(71)=2.0_ki*abb85(16)
      abb85(70)=abb85(70)*abb85(71)
      abb85(70)=abb85(70)-abb85(36)
      abb85(70)=spbk3k2*abb85(70)
      abb85(72)=abb85(48)*spbk4k3
      abb85(32)=abb85(72)+abb85(32)
      abb85(72)=abb85(8)*spbe7k1
      abb85(61)=-abb85(61)+abb85(72)-abb85(32)
      abb85(72)=abb85(61)*abb85(65)
      abb85(72)=2.0_ki*abb85(72)
      abb85(70)=abb85(72)+abb85(70)
      abb85(70)=spak1e7*abb85(70)
      abb85(70)=abb85(70)+abb85(62)
      abb85(70)=abb85(70)*abb85(28)
      abb85(73)=spak1k7*spbk7k3
      abb85(74)=-spak3k4*abb85(16)*abb85(73)
      abb85(26)=abb85(26)+abb85(74)+abb85(53)
      abb85(26)=spbk3k2*abb85(26)
      abb85(74)=spbk7k3*spak1k4
      abb85(75)=spbl6k2*spal5k7
      abb85(76)=abb85(75)*abb85(74)
      abb85(77)=spak1k4*spbk3k1
      abb85(78)=-abb85(11)*abb85(77)
      abb85(26)=abb85(26)+abb85(76)+abb85(78)
      abb85(26)=abb85(26)*abb85(56)
      abb85(76)=abb85(25)+abb85(8)
      abb85(78)=abb85(67)*abb85(76)
      abb85(79)=abb85(69)*abb85(16)
      abb85(79)=abb85(79)+abb85(48)
      abb85(79)=abb85(79)*spbk3k2
      abb85(80)=2.0_ki*spak1e7
      abb85(80)=abb85(80)*abb85(79)
      abb85(80)=abb85(80)-abb85(78)
      abb85(80)=abb85(80)*abb85(39)
      abb85(58)=abb85(41)*abb85(58)
      abb85(81)=spak1k4*abb85(24)*abb85(17)
      abb85(81)=32.0_ki*abb85(81)
      abb85(65)=abb85(65)*spbe7k3
      abb85(82)=abb85(65)*abb85(71)
      abb85(79)=abb85(82)+abb85(79)
      abb85(79)=spak1e7*abb85(79)
      abb85(67)=abb85(73)*abb85(67)
      abb85(83)=abb85(67)*abb85(71)
      abb85(79)=-abb85(83)+abb85(79)
      abb85(79)=abb85(79)*abb85(39)
      abb85(84)=abb85(78)*abb85(39)
      abb85(85)=abb85(6)*abb85(45)
      abb85(49)=abb85(85)-abb85(49)
      abb85(49)=abb85(49)*abb85(71)
      abb85(36)=abb85(49)-abb85(36)
      abb85(36)=spbk3k2*abb85(36)
      abb85(36)=abb85(72)+abb85(36)
      abb85(36)=spak1e7*abb85(36)
      abb85(36)=abb85(36)+abb85(62)
      abb85(24)=2.0_ki*abb85(24)
      abb85(36)=abb85(36)*abb85(24)
      abb85(49)=-spbl6k2*spak1k4*spak2l5
      abb85(49)=abb85(49)+abb85(53)
      abb85(53)=spak1k4*abb85(5)
      abb85(53)=-abb85(51)+abb85(53)
      abb85(53)=abb85(53)*abb85(71)
      abb85(9)=abb85(53)+2.0_ki*abb85(49)+abb85(9)
      abb85(9)=spbk3k2*abb85(9)
      abb85(49)=spak4l5*spbl6k2
      abb85(53)=abb85(49)*spbk4k3
      abb85(30)=abb85(53)-abb85(30)
      abb85(53)=-spbk2k1*abb85(8)
      abb85(53)=abb85(53)-abb85(30)
      abb85(53)=spak1k4*abb85(53)
      abb85(9)=2.0_ki*abb85(53)+abb85(9)
      abb85(9)=abb85(9)*abb85(28)
      abb85(53)=abb85(59)*spak1e7
      abb85(62)=2.0_ki*abb85(53)-abb85(78)
      abb85(62)=abb85(62)*abb85(28)
      abb85(59)=abb85(59)*abb85(14)
      abb85(72)=abb85(69)+abb85(45)
      abb85(85)=abb85(72)*abb85(16)
      abb85(86)=2.0_ki*abb85(48)+abb85(85)
      abb85(86)=spbk3k2*abb85(86)
      abb85(82)=abb85(82)+abb85(86)
      abb85(82)=spak1e7*abb85(82)
      abb85(82)=abb85(82)-abb85(83)-abb85(78)
      abb85(82)=abb85(82)*abb85(28)
      abb85(83)=abb85(78)*abb85(28)
      abb85(53)=abb85(53)-abb85(78)
      abb85(53)=abb85(53)*abb85(24)
      abb85(78)=abb85(69)*abb85(8)
      abb85(86)=spak2k4*spbe7k3
      abb85(87)=abb85(86)*abb85(11)
      abb85(78)=abb85(78)-abb85(87)
      abb85(87)=es71*abb85(78)
      abb85(88)=abb85(16)*spbe7k2
      abb85(89)=abb85(88)*spak2k4**2
      abb85(90)=2.0_ki*spbk4k3
      abb85(91)=abb85(50)*abb85(90)*abb85(89)
      abb85(92)=abb85(45)*abb85(66)
      abb85(85)=abb85(64)*abb85(85)
      abb85(85)=abb85(92)+abb85(85)
      abb85(85)=spbk3k2*abb85(85)
      abb85(90)=abb85(55)*abb85(90)
      abb85(68)=abb85(90)+abb85(68)
      abb85(68)=abb85(68)*abb85(45)
      abb85(68)=abb85(85)+abb85(91)+abb85(68)+abb85(87)
      abb85(68)=abb85(68)*abb85(24)
      abb85(85)=abb85(72)*abb85(25)
      abb85(87)=abb85(8)*abb85(45)
      abb85(78)=abb85(85)+abb85(87)+abb85(78)
      abb85(85)=abb85(78)*abb85(28)
      abb85(87)=abb85(86)*abb85(50)
      abb85(90)=abb85(87)*abb85(16)
      abb85(91)=abb85(55)*spbe7k3
      abb85(90)=abb85(90)+abb85(91)
      abb85(90)=abb85(90)*abb85(39)
      abb85(72)=abb85(72)*abb85(73)
      abb85(92)=-abb85(72)*abb85(16)
      abb85(92)=-abb85(91)+abb85(92)
      abb85(92)=abb85(92)*abb85(39)
      abb85(93)=-abb85(71)*abb85(87)
      abb85(78)=abb85(93)-2.0_ki*abb85(91)-abb85(78)
      abb85(78)=abb85(78)*abb85(24)
      abb85(32)=-spbk7k2*abb85(32)
      abb85(91)=-spbl6k2*spbk7k3
      abb85(93)=spbl6k3*spbk7k2
      abb85(91)=abb85(91)+abb85(93)
      abb85(93)=spak1l5*spbe7k1
      abb85(91)=abb85(91)*abb85(93)
      abb85(35)=spbk7k3*abb85(35)
      abb85(32)=abb85(91)+abb85(35)+abb85(32)
      abb85(32)=spak2k4*abb85(32)
      abb85(35)=-spak3k4*spbk7k3*abb85(37)
      abb85(38)=abb85(38)*spbk7k2
      abb85(13)=abb85(38)-abb85(13)
      abb85(38)=spak2k4*abb85(13)
      abb85(35)=abb85(35)+abb85(38)
      abb85(35)=abb85(35)*abb85(16)
      abb85(38)=-spak2k4*spbk7k2*abb85(63)
      abb85(35)=abb85(38)+abb85(35)
      abb85(35)=spbk3k2*abb85(35)
      abb85(33)=-spbk7k3*abb85(33)
      abb85(38)=-spbk7k2*spbk4k3*abb85(89)
      abb85(32)=abb85(35)+abb85(38)+abb85(32)+abb85(33)
      abb85(32)=abb85(32)*abb85(14)
      abb85(33)=abb85(46)*spbk7k3
      abb85(35)=abb85(48)*spbk7k3
      abb85(33)=abb85(33)+abb85(35)
      abb85(38)=abb85(33)*abb85(40)
      abb85(46)=abb85(86)*spbk7k2
      abb85(86)=spbk7k3*abb85(69)
      abb85(86)=abb85(86)+abb85(46)
      abb85(86)=abb85(86)*abb85(16)
      abb85(35)=abb85(35)+abb85(86)
      abb85(35)=abb85(35)*abb85(40)
      abb85(33)=abb85(33)*abb85(14)
      abb85(45)=abb85(69)-abb85(45)
      abb85(19)=-abb85(19)*abb85(6)*abb85(45)
      abb85(69)=-spbk3k2*spak1k2
      abb85(69)=abb85(69)+abb85(73)
      abb85(69)=spak3k4*abb85(69)
      abb85(69)=-abb85(51)+abb85(69)
      abb85(69)=abb85(69)*abb85(43)
      abb85(41)=-abb85(45)*abb85(41)
      abb85(73)=abb85(45)*spbk3k2
      abb85(65)=abb85(73)+2.0_ki*abb85(65)
      abb85(65)=abb85(65)*spak1e7
      abb85(65)=abb85(65)-2.0_ki*abb85(67)
      abb85(67)=-abb85(65)*abb85(28)
      abb85(73)=spak1k4*abb85(57)
      abb85(65)=-abb85(65)*abb85(24)
      abb85(86)=-spak1k4*abb85(43)
      abb85(72)=-abb85(87)+abb85(72)
      abb85(72)=abb85(72)*abb85(28)
      abb85(45)=-spbk7k3*abb85(45)
      abb85(45)=-abb85(46)+abb85(45)
      abb85(45)=abb85(45)*abb85(14)
      abb85(46)=spbl6k3*spak1k4
      abb85(87)=abb85(46)*abb85(56)
      abb85(46)=abb85(39)*abb85(46)
      abb85(89)=abb85(48)*spbk4k2
      abb85(91)=spak3l5*spbk3k2*spbe7l6
      abb85(89)=abb85(89)+abb85(91)
      abb85(91)=es34-es234
      abb85(94)=abb85(91)*abb85(88)
      abb85(95)=abb85(94)+abb85(89)
      abb85(95)=abb85(6)*abb85(95)
      abb85(12)=-abb85(12)+abb85(95)
      abb85(12)=abb85(12)*abb85(14)
      abb85(71)=-abb85(91)*abb85(50)*abb85(71)
      abb85(95)=-spbk7k2*abb85(75)
      abb85(49)=spbk4k2*abb85(49)
      abb85(49)=abb85(95)+abb85(49)
      abb85(49)=spak1k2*abb85(49)
      abb85(95)=-spbk4k2*abb85(55)
      abb85(49)=abb85(95)+abb85(49)
      abb85(95)=abb85(23)-abb85(54)
      abb85(96)=2.0_ki*spbk3k2
      abb85(96)=abb85(96)*spak3l5*abb85(95)
      abb85(21)=abb85(96)+abb85(71)+2.0_ki*abb85(49)+abb85(21)
      abb85(21)=abb85(21)*abb85(28)
      abb85(34)=-abb85(34)+abb85(89)
      abb85(49)=abb85(94)+abb85(34)
      abb85(71)=abb85(49)*abb85(40)
      abb85(89)=abb85(11)*abb85(39)
      abb85(27)=-2.0_ki*es71-abb85(20)+abb85(27)+abb85(91)
      abb85(27)=abb85(27)*abb85(88)
      abb85(27)=abb85(27)+abb85(34)
      abb85(27)=abb85(27)*abb85(14)
      abb85(34)=spak1k4*abb85(16)*spbk4k2
      abb85(94)=spak1k3*abb85(17)
      abb85(34)=abb85(94)+abb85(11)+abb85(34)
      abb85(34)=abb85(34)*abb85(56)
      abb85(10)=abb85(10)*abb85(15)
      abb85(15)=-16.0_ki*abb85(10)*abb85(88)
      abb85(94)=-abb85(40)*abb85(88)
      abb85(10)=2.0_ki*abb85(10)
      abb85(49)=abb85(49)*abb85(10)
      abb85(11)=abb85(11)*abb85(28)
      abb85(96)=-abb85(14)*abb85(88)
      abb85(54)=-spbe7k3*spak3l5*abb85(54)
      abb85(55)=-spbe7k4*abb85(55)
      abb85(54)=abb85(54)+abb85(55)
      abb85(55)=-spbe7k3*spak2k3*abb85(50)
      abb85(51)=-spbe7k4*abb85(51)
      abb85(51)=abb85(55)+abb85(51)
      abb85(55)=spbe7k2*abb85(64)
      abb85(51)=2.0_ki*abb85(51)+abb85(55)
      abb85(51)=abb85(51)*abb85(16)
      abb85(55)=spak1l5*spbe7l6
      abb85(64)=-es71*abb85(55)
      abb85(66)=spbe7k2*abb85(66)
      abb85(51)=abb85(51)+abb85(66)+2.0_ki*abb85(54)+abb85(64)
      abb85(51)=abb85(51)*abb85(24)
      abb85(54)=abb85(88)*spak1k2
      abb85(54)=abb85(54)-abb85(55)
      abb85(55)=abb85(54)*abb85(28)
      abb85(64)=spbk7e7*spak1k7
      abb85(66)=-abb85(39)*abb85(16)*abb85(64)
      abb85(24)=-abb85(54)*abb85(24)
      abb85(54)=spbk7k3*spak2k3
      abb85(88)=spak2k4*spbk7k4
      abb85(54)=abb85(54)+abb85(88)
      abb85(54)=spbe7k2*abb85(54)
      abb85(13)=abb85(54)+abb85(13)
      abb85(13)=abb85(13)*abb85(16)
      abb85(31)=-abb85(93)+abb85(31)
      abb85(31)=spbk7l6*abb85(31)
      abb85(54)=spbk7k3*spak3l5
      abb85(88)=-spbk7k2*spak2l5
      abb85(54)=abb85(54)+abb85(88)
      abb85(54)=spbe7l6*abb85(54)
      abb85(48)=spbk7k4*abb85(48)
      abb85(13)=abb85(13)+abb85(48)+abb85(54)+abb85(31)
      abb85(13)=abb85(13)*abb85(14)
      abb85(31)=-spak1l5*spbk7l6
      abb85(48)=abb85(16)*spak1k2
      abb85(54)=spbk7k2*abb85(48)
      abb85(31)=abb85(31)+abb85(54)
      abb85(31)=abb85(31)*abb85(39)
      abb85(54)=abb85(40)*abb85(16)
      abb85(88)=-spbk7e7*abb85(54)
      abb85(93)=abb85(14)*spbe7k2
      abb85(6)=abb85(6)*abb85(93)
      abb85(50)=-abb85(39)*abb85(50)
      abb85(40)=spbe7k2*abb85(40)
      abb85(97)=spbe7k2*abb85(10)
      abb85(28)=abb85(28)*abb85(64)
      abb85(64)=spbk7e7*abb85(14)
      abb85(98)=spak1k4*spbl6k4
      abb85(99)=spbl6k3*spak1k3
      abb85(95)=abb85(99)+abb85(98)-abb85(95)
      abb85(95)=abb85(95)*abb85(39)
      abb85(98)=spbk7k3*spak1k3
      abb85(99)=abb85(29)*abb85(98)
      abb85(100)=-spbk7k3*abb85(75)
      abb85(30)=abb85(100)-abb85(30)
      abb85(30)=spak1k2*abb85(30)
      abb85(100)=es123-es23
      abb85(20)=-abb85(20)+abb85(100)
      abb85(20)=spbl6k3*abb85(20)
      abb85(101)=spbk3k1*abb85(23)
      abb85(20)=abb85(20)+abb85(101)
      abb85(20)=spak1l5*abb85(20)
      abb85(5)=-es12+abb85(5)+abb85(100)
      abb85(5)=spak1k2*abb85(5)
      abb85(98)=spak2k7*abb85(98)
      abb85(5)=abb85(98)+abb85(5)
      abb85(5)=abb85(5)*abb85(16)
      abb85(23)=-spak2l5*abb85(23)
      abb85(5)=abb85(23)+abb85(5)
      abb85(5)=spbk3k2*abb85(5)
      abb85(5)=abb85(5)+abb85(20)+abb85(99)+abb85(30)
      abb85(5)=abb85(5)*abb85(39)
      abb85(20)=abb85(76)*abb85(56)
      abb85(23)=abb85(37)*abb85(16)
      abb85(23)=abb85(23)+abb85(63)
      abb85(23)=abb85(23)*spbk3k2
      abb85(23)=abb85(23)-abb85(61)
      abb85(30)=-abb85(23)*abb85(14)
      abb85(25)=-abb85(8)+abb85(25)
      abb85(25)=abb85(25)*abb85(56)
      abb85(37)=spbe7k3*abb85(54)
      abb85(23)=-abb85(23)*abb85(10)
      abb85(54)=abb85(76)*abb85(39)
      abb85(14)=abb85(14)*spbe7k3
      abb85(61)=abb85(16)*abb85(14)
      abb85(63)=-spak1k2*abb85(57)
      abb85(10)=-spbe7k3*abb85(10)
      abb85(76)=-spak1l5*spbl6k4
      abb85(48)=-spbk4k2*abb85(48)
      abb85(48)=abb85(76)+abb85(48)
      abb85(48)=abb85(48)*abb85(39)
      abb85(76)=-abb85(29)*abb85(74)
      abb85(8)=abb85(8)*abb85(77)
      abb85(74)=-spak2k7*abb85(74)
      abb85(77)=spak1k2*abb85(77)
      abb85(74)=abb85(74)+abb85(77)
      abb85(74)=abb85(74)*abb85(17)
      abb85(8)=abb85(74)+abb85(76)+abb85(8)
      abb85(8)=abb85(8)*abb85(39)
      abb85(29)=-spak3k4*abb85(29)
      abb85(74)=spak2k4*abb85(75)
      abb85(76)=-spak2k7*abb85(18)
      abb85(29)=abb85(76)+abb85(29)+abb85(74)
      abb85(29)=abb85(29)*abb85(43)
      abb85(74)=abb85(39)*abb85(75)
      abb85(57)=abb85(57)*spak4l5
      abb85(75)=-spak4l5*abb85(43)
      abb85(76)=spbk3k2*spak3l5
      abb85(77)=-spak4l5*spbk4k2
      abb85(76)=abb85(77)-abb85(76)
      abb85(76)=abb85(76)*abb85(39)
      abb85(18)=-abb85(56)*abb85(18)
      abb85(77)=spak3k4*abb85(43)
      abb85(17)=abb85(17)*spak2k4
      abb85(98)=abb85(17)*abb85(56)
      abb85(17)=-abb85(39)*abb85(17)
      abb85(43)=-spak2k4*abb85(43)
      abb85(91)=es12-abb85(91)
      abb85(91)=abb85(91)*abb85(16)
      abb85(99)=-spak1l5*spbl6k1
      abb85(91)=abb85(99)+abb85(91)
      abb85(91)=abb85(91)*abb85(39)
      abb85(16)=-abb85(16)*abb85(56)
      R2d85=0.0_ki
      rat2 = rat2 + R2d85
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='85' value='", &
          & R2d85, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd85h2
