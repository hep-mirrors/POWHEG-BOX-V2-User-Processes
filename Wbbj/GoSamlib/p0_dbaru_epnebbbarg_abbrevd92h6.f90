module     p0_dbaru_epnebbbarg_abbrevd92h6
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh6
   implicit none
   private
   complex(ki), dimension(111), public :: abb92
   complex(ki), public :: R2d92
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
      abb92(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb92(2)=1.0_ki/(-es71+es56-es567+es234)
      abb92(3)=NC**(-1)
      abb92(4)=sqrt2**(-1)
      abb92(5)=es234**(-1)
      abb92(6)=spak2l5**(-1)
      abb92(7)=spbl5k2**(-1)
      abb92(8)=spbk7k2**(-1)
      abb92(9)=spak2l6**(-1)
      abb92(10)=spbl6k2**(-1)
      abb92(11)=sqrt(mB**2)
      abb92(12)=abb92(3)*spbk3k2
      abb92(13)=abb92(12)**2
      abb92(14)=spbk3k2**2
      abb92(13)=abb92(13)+abb92(14)
      abb92(15)=TR*gW
      abb92(15)=abb92(15)**2*abb92(8)*i_*CVDU*abb92(5)*abb92(4)*abb92(2)*abb92(&
      &1)
      abb92(16)=abb92(15)*spak1l5
      abb92(17)=mB**2
      abb92(18)=abb92(16)*abb92(17)
      abb92(19)=abb92(18)*abb92(13)
      abb92(20)=abb92(7)*spak3k4
      abb92(21)=abb92(9)*c4
      abb92(22)=abb92(20)*abb92(21)
      abb92(23)=abb92(22)*abb92(19)
      abb92(24)=2.0_ki*c1
      abb92(25)=abb92(24)*abb92(9)
      abb92(26)=abb92(25)*abb92(18)
      abb92(27)=abb92(14)*spak3k4
      abb92(28)=abb92(27)*abb92(3)
      abb92(29)=abb92(28)*abb92(7)
      abb92(30)=abb92(29)*abb92(26)
      abb92(23)=abb92(23)-abb92(30)
      abb92(30)=abb92(23)*es12
      abb92(31)=abb92(15)*abb92(13)
      abb92(32)=spak1l5**2
      abb92(33)=spak3k4*c4
      abb92(34)=abb92(33)*abb92(31)*abb92(32)
      abb92(35)=abb92(15)*c1
      abb92(35)=2.0_ki*abb92(35)
      abb92(36)=abb92(32)*abb92(35)
      abb92(37)=abb92(36)*abb92(28)
      abb92(34)=abb92(37)-abb92(34)
      abb92(37)=spbl6k1*abb92(34)
      abb92(37)=abb92(37)+abb92(30)
      abb92(37)=spak1k7*abb92(37)
      abb92(17)=abb92(17)*abb92(15)
      abb92(38)=abb92(27)*abb92(7)
      abb92(39)=abb92(24)*abb92(3)
      abb92(40)=-abb92(32)*abb92(17)*abb92(39)*abb92(38)
      abb92(41)=abb92(17)*abb92(13)
      abb92(42)=abb92(41)*abb92(32)
      abb92(43)=abb92(33)*abb92(7)
      abb92(44)=abb92(42)*abb92(43)
      abb92(40)=abb92(44)+abb92(40)
      abb92(44)=abb92(6)*spbl6k2
      abb92(40)=abb92(40)*abb92(44)
      abb92(45)=abb92(21)*spak3k4
      abb92(42)=abb92(42)*abb92(45)
      abb92(25)=abb92(25)*abb92(17)
      abb92(46)=abb92(25)*abb92(28)
      abb92(47)=-abb92(32)*abb92(46)
      abb92(40)=abb92(40)+abb92(42)+abb92(47)
      abb92(40)=spak2k7*abb92(40)
      abb92(42)=spak3k4*abb92(9)
      abb92(14)=abb92(42)*abb92(14)
      abb92(47)=abb92(24)*abb92(16)
      abb92(48)=abb92(3)*mB
      abb92(49)=abb92(47)*abb92(48)
      abb92(50)=abb92(49)*abb92(14)
      abb92(13)=abb92(16)*abb92(13)
      abb92(51)=abb92(45)*mB*abb92(13)
      abb92(50)=abb92(51)-abb92(50)
      abb92(51)=abb92(50)*abb92(11)
      abb92(52)=abb92(51)*spak1k2
      abb92(34)=-spbl6l5*abb92(34)
      abb92(34)=abb92(52)+abb92(34)
      abb92(34)=spal5k7*abb92(34)
      abb92(34)=abb92(34)+abb92(40)+abb92(37)
      abb92(34)=spbl5k1*abb92(34)
      abb92(14)=abb92(3)*abb92(14)
      abb92(37)=mB**3
      abb92(40)=abb92(14)*abb92(37)*abb92(7)
      abb92(53)=abb92(47)*abb92(40)
      abb92(54)=abb92(37)*abb92(13)
      abb92(55)=abb92(54)*abb92(22)
      abb92(53)=abb92(53)-abb92(55)
      abb92(53)=abb92(53)*abb92(11)
      abb92(55)=-es12*abb92(53)
      abb92(56)=abb92(28)*abb92(47)
      abb92(57)=abb92(7)**2
      abb92(58)=mB**4
      abb92(59)=abb92(57)*abb92(56)*abb92(58)
      abb92(60)=abb92(58)*abb92(13)
      abb92(61)=abb92(57)*abb92(33)
      abb92(62)=abb92(60)*abb92(61)
      abb92(59)=abb92(59)-abb92(62)
      abb92(62)=abb92(44)*es12
      abb92(63)=-abb92(59)*abb92(62)
      abb92(55)=abb92(55)+abb92(63)
      abb92(63)=spak2k7*abb92(6)
      abb92(55)=abb92(55)*abb92(63)
      abb92(64)=abb92(58)*abb92(31)
      abb92(65)=abb92(64)*abb92(22)
      abb92(66)=abb92(35)*abb92(58)
      abb92(14)=abb92(66)*abb92(14)
      abb92(67)=abb92(14)*abb92(7)
      abb92(65)=abb92(65)-abb92(67)
      abb92(65)=abb92(65)*spak1k2*abb92(6)
      abb92(67)=abb92(19)*abb92(43)
      abb92(39)=abb92(39)*abb92(18)
      abb92(68)=abb92(39)*abb92(38)
      abb92(67)=abb92(67)-abb92(68)
      abb92(68)=abb92(67)*abb92(6)
      abb92(69)=abb92(68)*spbl6l5
      abb92(65)=abb92(65)+abb92(69)
      abb92(65)=abb92(65)*spal5k7
      abb92(69)=es12*abb92(65)
      abb92(70)=abb92(9)**2
      abb92(71)=abb92(70)*abb92(33)
      abb92(54)=abb92(54)*abb92(71)
      abb92(72)=abb92(70)*abb92(56)
      abb92(73)=abb92(72)*abb92(37)
      abb92(54)=abb92(73)-abb92(54)
      abb92(54)=abb92(54)*abb92(11)
      abb92(60)=abb92(60)*abb92(71)
      abb92(58)=abb92(72)*abb92(58)
      abb92(54)=abb92(54)-abb92(58)+abb92(60)
      abb92(58)=spak2k7*es12
      abb92(60)=-abb92(10)*abb92(54)*abb92(58)
      abb92(71)=abb92(45)*abb92(64)
      abb92(14)=abb92(71)-abb92(14)
      abb92(14)=abb92(57)*abb92(14)
      abb92(71)=abb92(14)*spak1k2
      abb92(72)=abb92(62)*abb92(71)
      abb92(30)=spbl6l5*abb92(30)
      abb92(30)=abb92(72)+abb92(30)
      abb92(30)=spal6k7*abb92(30)
      abb92(72)=abb92(68)*spak1k7
      abb92(73)=-es12*abb92(72)
      abb92(52)=spal6k7*abb92(52)
      abb92(52)=abb92(73)+abb92(52)
      abb92(52)=spbl6k1*abb92(52)
      abb92(73)=abb92(14)*abb92(6)
      abb92(74)=spak1k7*es12**2*abb92(73)
      abb92(30)=abb92(34)+abb92(52)+abb92(30)+abb92(60)+abb92(69)+abb92(55)+abb&
      &92(74)
      abb92(30)=8.0_ki*abb92(30)
      abb92(34)=2.0_ki*abb92(11)
      abb92(50)=abb92(50)*abb92(34)
      abb92(52)=abb92(67)*abb92(44)
      abb92(55)=abb92(19)*abb92(45)
      abb92(60)=abb92(26)*abb92(28)
      abb92(55)=abb92(60)-abb92(55)
      abb92(50)=abb92(55)+abb92(50)+abb92(52)
      abb92(50)=abb92(50)*spak2k7
      abb92(13)=abb92(13)*abb92(33)
      abb92(13)=abb92(13)-abb92(56)
      abb92(56)=abb92(13)*spal5k7
      abb92(60)=abb92(56)*spbl6l5
      abb92(50)=abb92(50)+abb92(60)
      abb92(60)=mB*abb92(31)
      abb92(69)=abb92(60)*abb92(43)
      abb92(48)=abb92(35)*abb92(48)
      abb92(38)=abb92(48)*abb92(38)
      abb92(38)=abb92(69)-abb92(38)
      abb92(69)=abb92(11)*spbl6k2
      abb92(74)=abb92(38)*abb92(69)
      abb92(75)=abb92(74)*spak1k7
      abb92(75)=abb92(75)-abb92(50)
      abb92(75)=16.0_ki*abb92(75)
      abb92(76)=abb92(3)**2
      abb92(76)=abb92(76)+1.0_ki
      abb92(77)=abb92(76)*abb92(16)
      abb92(78)=mB*spbk3k2
      abb92(79)=abb92(78)*abb92(77)
      abb92(80)=abb92(21)*spak4k7
      abb92(81)=abb92(79)*abb92(80)
      abb92(82)=abb92(47)*abb92(3)
      abb92(83)=abb92(82)*abb92(78)
      abb92(84)=abb92(83)*abb92(9)
      abb92(85)=abb92(84)*spak4k7
      abb92(81)=abb92(81)-abb92(85)
      abb92(81)=abb92(81)*abb92(34)
      abb92(85)=abb92(76)*spbk3k2
      abb92(86)=abb92(18)*abb92(85)
      abb92(87)=abb92(86)*abb92(80)
      abb92(88)=abb92(12)*abb92(26)
      abb92(89)=abb92(88)*spak4k7
      abb92(87)=abb92(87)-abb92(89)
      abb92(81)=abb92(81)-abb92(87)
      abb92(89)=spak2l5*spbl5k2
      abb92(89)=abb92(89)-es12
      abb92(81)=abb92(81)*abb92(89)
      abb92(24)=abb92(18)*abb92(24)*abb92(12)
      abb92(90)=spak4k7*abb92(7)
      abb92(91)=abb92(24)*abb92(90)
      abb92(92)=abb92(90)*c4
      abb92(93)=abb92(92)*abb92(86)
      abb92(91)=abb92(93)-abb92(91)
      abb92(93)=spbl6k2**2
      abb92(94)=spak2l6*abb92(93)*abb92(6)
      abb92(95)=abb92(94)-abb92(62)
      abb92(91)=abb92(91)*abb92(95)
      abb92(95)=spak4k7*c4
      abb92(96)=abb92(79)*abb92(95)
      abb92(97)=abb92(83)*spak4k7
      abb92(96)=abb92(96)-abb92(97)
      abb92(96)=abb92(96)*abb92(69)
      abb92(97)=abb92(36)*abb92(12)
      abb92(98)=abb92(97)*spak4k7
      abb92(15)=abb92(76)*abb92(15)
      abb92(32)=abb92(15)*abb92(32)
      abb92(99)=spbk3k2*abb92(32)
      abb92(100)=abb92(99)*abb92(95)
      abb92(98)=abb92(98)-abb92(100)
      abb92(100)=spbk2k1*spbl6l5
      abb92(98)=abb92(98)*abb92(100)
      abb92(101)=abb92(35)*abb92(78)
      abb92(102)=abb92(90)*abb92(3)
      abb92(103)=abb92(101)*abb92(102)
      abb92(78)=abb92(78)*abb92(15)
      abb92(104)=abb92(78)*abb92(92)
      abb92(103)=abb92(103)-abb92(104)
      abb92(93)=abb92(93)*abb92(11)
      abb92(104)=abb92(93)*spak1l6
      abb92(103)=abb92(103)*abb92(104)
      abb92(47)=abb92(47)*abb92(12)
      abb92(105)=abb92(47)*spak4k7
      abb92(16)=abb92(16)*abb92(85)
      abb92(106)=abb92(16)*abb92(95)
      abb92(105)=abb92(105)-abb92(106)
      abb92(106)=spal5l6*spbl6l5*spbl6k2
      abb92(107)=abb92(106)*abb92(105)
      abb92(81)=abb92(103)+abb92(96)+abb92(98)-abb92(107)+abb92(81)+abb92(91)
      abb92(91)=16.0_ki*abb92(81)
      abb92(96)=abb92(105)*spbl6k2
      abb92(98)=32.0_ki*abb92(96)
      abb92(59)=-abb92(59)*abb92(44)
      abb92(53)=-abb92(53)+abb92(59)
      abb92(53)=abb92(53)*abb92(63)
      abb92(28)=abb92(57)*abb92(37)*abb92(35)*abb92(28)
      abb92(31)=abb92(37)*abb92(31)
      abb92(37)=abb92(31)*abb92(61)
      abb92(28)=abb92(28)-abb92(37)
      abb92(37)=abb92(28)*abb92(69)
      abb92(14)=es12*abb92(14)
      abb92(14)=abb92(37)+abb92(14)
      abb92(14)=abb92(6)*abb92(14)
      abb92(31)=abb92(31)*abb92(22)
      abb92(35)=abb92(35)*abb92(40)
      abb92(31)=abb92(35)-abb92(31)
      abb92(35)=abb92(11)*abb92(31)
      abb92(14)=abb92(35)+abb92(14)
      abb92(14)=spak1k7*abb92(14)
      abb92(35)=-spak2k7*abb92(54)
      abb92(37)=-spal5k7*spbl6l5*abb92(55)
      abb92(35)=abb92(35)+abb92(37)
      abb92(35)=abb92(10)*abb92(35)
      abb92(37)=spal6k7*abb92(44)*abb92(71)
      abb92(14)=abb92(37)+abb92(35)+abb92(65)+abb92(14)+abb92(53)-abb92(81)
      abb92(14)=16.0_ki*abb92(14)
      abb92(35)=abb92(41)*abb92(22)
      abb92(37)=abb92(29)*abb92(25)
      abb92(35)=abb92(37)-abb92(35)
      abb92(37)=abb92(35)*spak1k7
      abb92(40)=abb92(96)+abb92(37)
      abb92(40)=32.0_ki*abb92(40)
      abb92(53)=32.0_ki*abb92(37)
      abb92(54)=abb92(17)*abb92(85)
      abb92(57)=abb92(54)*abb92(21)
      abb92(12)=abb92(25)*abb92(12)
      abb92(57)=abb92(57)-abb92(12)
      abb92(59)=-abb92(90)*abb92(57)
      abb92(61)=spak1l6*spbl6k2
      abb92(65)=abb92(61)*abb92(59)
      abb92(65)=abb92(65)-abb92(87)
      abb92(71)=32.0_ki*abb92(65)
      abb92(29)=abb92(29)*abb92(66)
      abb92(64)=abb92(43)*abb92(64)
      abb92(29)=abb92(29)-abb92(64)
      abb92(29)=abb92(10)*abb92(70)*abb92(29)
      abb92(29)=abb92(29)-abb92(73)
      abb92(64)=spak1k7*abb92(29)
      abb92(64)=-abb92(65)+abb92(64)
      abb92(64)=32.0_ki*abb92(64)
      abb92(65)=abb92(35)*es12
      abb92(66)=abb92(74)-abb92(65)
      abb92(66)=spak1k7*abb92(66)
      abb92(70)=abb92(13)*spak1k7
      abb92(73)=abb92(70)*spbl6k1
      abb92(50)=-abb92(73)+abb92(66)-abb92(50)
      abb92(50)=16.0_ki*abb92(50)
      abb92(66)=abb92(52)-abb92(55)
      abb92(66)=spak2k7*abb92(66)
      abb92(81)=abb92(13)*spbl6l5
      abb92(41)=abb92(41)*abb92(45)
      abb92(41)=abb92(41)-abb92(46)
      abb92(41)=spak1k2*abb92(41)
      abb92(41)=abb92(41)+abb92(81)
      abb92(41)=spal5k7*abb92(41)
      abb92(37)=-es12*abb92(37)
      abb92(46)=spak1k2*spbl6k2
      abb92(85)=-spal6k7*abb92(35)*abb92(46)
      abb92(37)=-abb92(73)+abb92(85)+abb92(41)+abb92(66)+abb92(37)
      abb92(37)=8.0_ki*abb92(37)
      abb92(13)=16.0_ki*abb92(13)
      abb92(41)=abb92(55)*abb92(10)
      abb92(66)=abb92(41)-abb92(68)
      abb92(73)=-16.0_ki*abb92(66)
      abb92(85)=spak3k4*abb92(24)
      abb92(87)=abb92(79)*abb92(33)
      abb92(96)=-spak3k4*abb92(83)
      abb92(87)=abb92(87)+abb92(96)
      abb92(87)=abb92(87)*abb92(34)
      abb92(96)=-abb92(78)*abb92(43)
      abb92(101)=abb92(101)*abb92(3)
      abb92(103)=abb92(20)*abb92(101)
      abb92(96)=abb92(96)+abb92(103)
      abb92(96)=spak1l6*abb92(96)*abb92(69)
      abb92(103)=abb92(47)*spak3k4
      abb92(107)=abb92(16)*abb92(33)
      abb92(103)=abb92(103)-abb92(107)
      abb92(107)=-spal5l6*spbl6l5*abb92(103)
      abb92(108)=abb92(24)*abb92(20)
      abb92(109)=abb92(86)*abb92(43)
      abb92(108)=abb92(109)-abb92(108)
      abb92(109)=abb92(108)*abb92(44)
      abb92(110)=spak2l6*abb92(109)
      abb92(111)=-abb92(86)*abb92(33)
      abb92(85)=abb92(110)+abb92(107)+abb92(96)+abb92(87)+abb92(111)+abb92(85)
      abb92(85)=spbl6k3*abb92(85)
      abb92(87)=abb92(79)*abb92(21)
      abb92(84)=abb92(87)-abb92(84)
      abb92(84)=abb92(84)*abb92(34)
      abb92(87)=abb92(86)*abb92(21)
      abb92(87)=abb92(87)-abb92(88)
      abb92(84)=abb92(84)-abb92(87)
      abb92(84)=abb92(84)*abb92(89)
      abb92(96)=abb92(99)*c4
      abb92(96)=abb92(96)-abb92(97)
      abb92(96)=abb92(96)*abb92(100)
      abb92(107)=abb92(79)*c4
      abb92(107)=abb92(107)-abb92(83)
      abb92(107)=abb92(107)*abb92(69)
      abb92(24)=abb92(7)*abb92(24)
      abb92(110)=abb92(7)*c4
      abb92(111)=abb92(110)*abb92(86)
      abb92(24)=abb92(24)-abb92(111)
      abb92(111)=abb92(24)*abb92(62)
      abb92(84)=-abb92(96)+abb92(107)+abb92(111)+abb92(84)
      abb92(78)=abb92(78)*abb92(110)
      abb92(96)=abb92(101)*abb92(7)
      abb92(78)=abb92(78)-abb92(96)
      abb92(96)=abb92(78)*abb92(104)
      abb92(16)=abb92(16)*c4
      abb92(16)=abb92(16)-abb92(47)
      abb92(47)=-abb92(16)*abb92(106)
      abb92(101)=abb92(24)*abb92(94)
      abb92(47)=abb92(101)+abb92(47)+abb92(96)-abb92(84)
      abb92(47)=spak2k4*abb92(47)
      abb92(96)=abb92(79)*abb92(45)
      abb92(42)=abb92(83)*abb92(42)
      abb92(42)=abb92(96)-abb92(42)
      abb92(42)=abb92(42)*abb92(34)
      abb92(45)=abb92(86)*abb92(45)
      abb92(96)=abb92(88)*spak3k4
      abb92(42)=abb92(42)-abb92(45)+abb92(96)
      abb92(45)=spak2l5*abb92(42)
      abb92(96)=spbl6k2*abb92(108)
      abb92(43)=-abb92(79)*abb92(43)
      abb92(79)=abb92(20)*abb92(83)
      abb92(43)=abb92(43)+abb92(79)
      abb92(43)=abb92(43)*abb92(69)
      abb92(43)=abb92(45)+abb92(96)+abb92(43)
      abb92(43)=spbl5k3*abb92(43)
      abb92(45)=-spak2l5*abb92(41)
      abb92(45)=abb92(45)+abb92(67)
      abb92(45)=spbl6l5*abb92(45)
      abb92(28)=-abb92(28)*abb92(44)
      abb92(28)=-abb92(31)+abb92(28)
      abb92(28)=spak1k2*abb92(11)*abb92(28)
      abb92(31)=-abb92(109)-abb92(42)
      abb92(31)=spak1k2*abb92(31)
      abb92(42)=-abb92(99)*abb92(33)
      abb92(44)=spak3k4*abb92(97)
      abb92(42)=abb92(42)+abb92(44)
      abb92(42)=spbl6l5*abb92(42)
      abb92(31)=abb92(31)+abb92(42)
      abb92(31)=spbk3k1*abb92(31)
      abb92(28)=abb92(31)+abb92(43)+abb92(85)+abb92(28)+abb92(47)+abb92(45)
      abb92(28)=8.0_ki*abb92(28)
      abb92(31)=-spak1k2*abb92(35)
      abb92(42)=abb92(16)*spak2k4
      abb92(43)=-spbl6k2*abb92(42)
      abb92(44)=-spbl6k3*abb92(103)
      abb92(31)=abb92(44)+abb92(31)+abb92(43)
      abb92(31)=16.0_ki*abb92(31)
      abb92(43)=16.0_ki*spak1k2
      abb92(35)=abb92(43)*abb92(35)
      abb92(44)=-spak1k2*abb92(29)
      abb92(45)=spak2k4*abb92(87)
      abb92(47)=-abb92(7)*abb92(57)
      abb92(67)=abb92(47)*spak2k4
      abb92(79)=-abb92(61)*abb92(67)
      abb92(83)=abb92(54)*abb92(22)
      abb92(85)=abb92(12)*abb92(20)
      abb92(83)=abb92(85)-abb92(83)
      abb92(85)=spbl6k3*spak1l6*abb92(83)
      abb92(22)=-abb92(86)*abb92(22)
      abb92(20)=abb92(20)*abb92(88)
      abb92(20)=abb92(22)+abb92(20)
      abb92(20)=spbl5k3*abb92(20)
      abb92(20)=abb92(20)+abb92(85)+abb92(79)+abb92(45)+abb92(44)
      abb92(20)=16.0_ki*abb92(20)
      abb92(22)=16.0_ki*abb92(59)
      abb92(44)=abb92(22)*abb92(46)
      abb92(45)=abb92(47)*abb92(46)
      abb92(59)=spak2k4*abb92(45)
      abb92(79)=abb92(83)*spak1k2
      abb92(83)=-spbl6k3*abb92(79)
      abb92(59)=abb92(59)+abb92(83)
      abb92(59)=8.0_ki*abb92(59)
      abb92(19)=abb92(19)*abb92(33)
      abb92(83)=abb92(39)*abb92(27)
      abb92(19)=abb92(19)-abb92(83)
      abb92(63)=abb92(19)*abb92(63)
      abb92(41)=abb92(41)*spak2k7
      abb92(83)=-spbl5k2*abb92(41)
      abb92(81)=-spal6k7*abb92(81)
      abb92(70)=-spbl5k1*abb92(70)
      abb92(63)=abb92(70)+abb92(81)+abb92(63)+abb92(83)
      abb92(63)=8.0_ki*abb92(63)
      abb92(70)=16.0_ki*abb92(105)
      abb92(81)=abb92(70)*spbl5k2
      abb92(83)=-spbl5k2*abb92(42)
      abb92(85)=-spbl5k3*abb92(103)
      abb92(83)=abb92(83)+abb92(85)
      abb92(83)=8.0_ki*abb92(83)
      abb92(12)=abb92(12)*spak4k7
      abb92(54)=abb92(54)*abb92(80)
      abb92(12)=abb92(12)-abb92(54)
      abb92(12)=abb92(12)*abb92(43)
      abb92(43)=-spak2k4*spak1k2*abb92(57)
      abb92(54)=-spbl5k3*abb92(79)
      abb92(43)=abb92(43)+abb92(54)
      abb92(43)=8.0_ki*abb92(43)
      abb92(54)=-spak3k7*abb92(84)
      abb92(49)=abb92(49)*spak4k7
      abb92(85)=abb92(49)*abb92(9)
      abb92(86)=mB*abb92(77)
      abb92(88)=abb92(86)*abb92(80)
      abb92(85)=abb92(85)-abb92(88)
      abb92(34)=abb92(85)*abb92(34)
      abb92(85)=spak4k7*abb92(3)
      abb92(26)=abb92(85)*abb92(26)
      abb92(18)=abb92(76)*abb92(18)
      abb92(88)=abb92(18)*abb92(80)
      abb92(26)=abb92(26)-abb92(88)
      abb92(34)=abb92(34)-abb92(26)
      abb92(34)=-abb92(34)*abb92(89)
      abb92(36)=abb92(85)*abb92(36)
      abb92(32)=abb92(95)*abb92(32)
      abb92(32)=abb92(36)-abb92(32)
      abb92(32)=abb92(32)*abb92(100)
      abb92(36)=abb92(86)*abb92(95)
      abb92(36)=abb92(36)-abb92(49)
      abb92(36)=abb92(36)*abb92(69)
      abb92(39)=abb92(39)*abb92(90)
      abb92(18)=abb92(18)*abb92(92)
      abb92(18)=abb92(39)-abb92(18)
      abb92(39)=abb92(18)*abb92(62)
      abb92(32)=abb92(39)+abb92(32)+abb92(36)+abb92(34)
      abb92(34)=-spbk4k2*abb92(32)
      abb92(36)=abb92(78)*abb92(93)
      abb92(39)=spak3k7*abb92(36)
      abb92(15)=abb92(92)*mB*abb92(15)
      abb92(49)=abb92(48)*abb92(90)
      abb92(15)=abb92(15)-abb92(49)
      abb92(15)=abb92(15)*abb92(93)
      abb92(49)=spbk4k2*abb92(15)
      abb92(39)=abb92(39)+abb92(49)
      abb92(39)=spak1l6*abb92(39)
      abb92(49)=abb92(16)*spak3k7
      abb92(62)=abb92(77)*abb92(95)
      abb92(69)=abb92(82)*spak4k7
      abb92(62)=abb92(62)-abb92(69)
      abb92(69)=abb92(62)*spbk4k2
      abb92(49)=abb92(49)+abb92(69)
      abb92(69)=-abb92(49)*abb92(106)
      abb92(77)=spak3k7*abb92(24)
      abb92(78)=spbk4k2*abb92(18)
      abb92(77)=abb92(77)+abb92(78)
      abb92(77)=abb92(77)*abb92(94)
      abb92(34)=abb92(77)+abb92(69)+abb92(39)+abb92(54)+abb92(34)
      abb92(34)=8.0_ki*abb92(34)
      abb92(39)=16.0_ki*spbl6k2
      abb92(54)=-abb92(49)*abb92(39)
      abb92(69)=abb92(47)*spak3k7
      abb92(17)=abb92(76)*abb92(17)
      abb92(21)=abb92(17)*abb92(90)*abb92(21)
      abb92(76)=abb92(102)*abb92(25)
      abb92(21)=abb92(76)-abb92(21)
      abb92(76)=abb92(21)*spbk4k2
      abb92(69)=abb92(69)+abb92(76)
      abb92(77)=-abb92(69)*abb92(61)
      abb92(78)=spak3k7*abb92(87)
      abb92(82)=-spbk4k2*abb92(26)
      abb92(77)=abb92(77)+abb92(78)+abb92(82)
      abb92(77)=16.0_ki*abb92(77)
      abb92(78)=spak3k7*abb92(45)
      abb92(76)=abb92(46)*abb92(76)
      abb92(76)=abb92(78)+abb92(76)
      abb92(76)=8.0_ki*abb92(76)
      abb92(49)=8.0_ki*abb92(49)
      abb92(78)=-spbl5k2*abb92(49)
      abb92(82)=-spak3k7*abb92(57)
      abb92(25)=abb92(85)*abb92(25)
      abb92(17)=abb92(17)*abb92(80)
      abb92(17)=abb92(25)-abb92(17)
      abb92(25)=spbk4k2*abb92(17)
      abb92(25)=abb92(82)+abb92(25)
      abb92(80)=8.0_ki*spak1k2
      abb92(25)=abb92(25)*abb92(80)
      abb92(82)=spak2k7*abb92(84)
      abb92(32)=spbk4k3*abb92(32)
      abb92(36)=-spak2k7*abb92(36)
      abb92(15)=-spbk4k3*abb92(15)
      abb92(15)=abb92(36)+abb92(15)
      abb92(15)=spak1l6*abb92(15)
      abb92(16)=abb92(16)*spak2k7
      abb92(36)=abb92(62)*spbk4k3
      abb92(16)=abb92(16)+abb92(36)
      abb92(36)=abb92(16)*abb92(106)
      abb92(24)=-spak2k7*abb92(24)
      abb92(18)=-spbk4k3*abb92(18)
      abb92(18)=abb92(24)+abb92(18)
      abb92(18)=abb92(18)*abb92(94)
      abb92(15)=abb92(18)+abb92(36)+abb92(15)+abb92(32)+abb92(82)
      abb92(15)=8.0_ki*abb92(15)
      abb92(18)=abb92(16)*abb92(39)
      abb92(21)=abb92(21)*spbk4k3
      abb92(24)=spak2k7*abb92(47)
      abb92(24)=abb92(24)+abb92(21)
      abb92(24)=abb92(24)*abb92(61)
      abb92(32)=-spak2k7*abb92(87)
      abb92(26)=spbk4k3*abb92(26)
      abb92(24)=abb92(24)+abb92(32)+abb92(26)
      abb92(24)=16.0_ki*abb92(24)
      abb92(26)=-spak2k7*abb92(45)
      abb92(32)=-abb92(46)*abb92(21)
      abb92(26)=abb92(26)+abb92(32)
      abb92(26)=8.0_ki*abb92(26)
      abb92(16)=8.0_ki*abb92(16)
      abb92(32)=spbl5k2*abb92(16)
      abb92(36)=spak2k7*abb92(57)
      abb92(17)=-spbk4k3*abb92(17)
      abb92(17)=abb92(36)+abb92(17)
      abb92(17)=abb92(17)*abb92(80)
      abb92(36)=-abb92(51)-abb92(52)
      abb92(36)=spal6k7*abb92(36)
      abb92(39)=-spbk2k1*abb92(72)
      abb92(19)=-spal5k7*abb92(6)*abb92(19)
      abb92(19)=abb92(36)+abb92(39)+abb92(19)
      abb92(19)=8.0_ki*abb92(19)
      abb92(36)=8.0_ki*abb92(66)
      abb92(39)=-abb92(51)-abb92(55)
      abb92(39)=spal5k7*abb92(39)
      abb92(45)=spbk2k1*spak1k7
      abb92(46)=spal6k7*spbl6k2
      abb92(45)=abb92(46)+abb92(45)
      abb92(23)=abb92(23)*abb92(45)
      abb92(23)=abb92(39)+abb92(23)
      abb92(23)=8.0_ki*abb92(23)
      abb92(39)=8.0_ki*spak1k7*abb92(51)
      abb92(45)=abb92(68)*spak2k7
      abb92(41)=abb92(45)-abb92(41)
      abb92(38)=spak1k7*abb92(11)*abb92(38)
      abb92(38)=abb92(38)-abb92(41)
      abb92(38)=spbk2k1*abb92(38)
      abb92(45)=abb92(74)+abb92(65)
      abb92(45)=spal6k7*abb92(45)
      abb92(33)=abb92(60)*abb92(33)
      abb92(27)=-abb92(27)*abb92(48)
      abb92(27)=abb92(33)+abb92(27)
      abb92(27)=spal5k7*abb92(11)*abb92(27)
      abb92(33)=-spbl5k1*abb92(56)
      abb92(27)=abb92(33)+abb92(45)+abb92(27)+abb92(38)
      abb92(27)=8.0_ki*abb92(27)
      abb92(33)=abb92(70)*spbk2k1
      abb92(38)=-spbk2k1*abb92(42)
      abb92(42)=-spbk3k1*abb92(103)
      abb92(38)=abb92(38)+abb92(42)
      abb92(38)=8.0_ki*abb92(38)
      abb92(42)=-spbk2k1*abb92(49)
      abb92(16)=spbk2k1*abb92(16)
      abb92(45)=spal5k7*abb92(65)
      abb92(46)=spbl6k1*abb92(56)
      abb92(45)=abb92(45)+abb92(46)
      abb92(45)=8.0_ki*abb92(45)
      abb92(29)=abb92(58)*abb92(29)
      abb92(41)=spbl6k1*abb92(41)
      abb92(29)=abb92(41)+abb92(29)
      abb92(29)=8.0_ki*abb92(29)
      abb92(22)=abb92(22)*es12
      abb92(41)=es12*abb92(67)
      abb92(46)=-spbk3k1*abb92(79)
      abb92(41)=abb92(41)+abb92(46)
      abb92(41)=8.0_ki*abb92(41)
      abb92(46)=8.0_ki*es12*abb92(69)
      abb92(47)=-abb92(47)*abb92(58)
      abb92(21)=-es12*abb92(21)
      abb92(21)=abb92(47)+abb92(21)
      abb92(21)=8.0_ki*abb92(21)
      R2d92=0.0_ki
      rat2 = rat2 + R2d92
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='92' value='", &
          & R2d92, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd92h6
