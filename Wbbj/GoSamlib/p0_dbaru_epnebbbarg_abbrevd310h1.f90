module     p0_dbaru_epnebbbarg_abbrevd310h1
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(151), public :: abb310
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
      abb310(5)=spak2k7**(-1)
      abb310(6)=spak2l5**(-1)
      abb310(7)=spbl6k2**(-1)
      abb310(8)=spak2l6**(-1)
      abb310(9)=sqrt(mB**2)
      abb310(10)=abb310(5)*abb310(4)
      abb310(11)=abb310(10)*abb310(2)
      abb310(12)=abb310(11)*c3
      abb310(13)=c1*abb310(11)
      abb310(13)=abb310(13)+abb310(12)
      abb310(14)=spbk3k2**2
      abb310(13)=abb310(14)*abb310(13)
      abb310(15)=spbk3k2*abb310(2)
      abb310(16)=c4*abb310(15)**2
      abb310(17)=abb310(16)*abb310(10)
      abb310(13)=-abb310(17)+abb310(13)
      abb310(18)=abb310(6)*mB**4
      abb310(19)=spak1k2*abb310(7)
      abb310(19)=abb310(18)*abb310(19)**2
      abb310(20)=abb310(8)*spak3k4
      abb310(21)=TR*gW
      abb310(21)=abb310(21)**2*i_*CVDU*abb310(3)*abb310(1)
      abb310(13)=abb310(20)*abb310(13)*abb310(21)*abb310(19)
      abb310(22)=abb310(21)*abb310(10)*spbk3k2
      abb310(23)=abb310(22)*abb310(2)
      abb310(24)=abb310(23)*c1
      abb310(25)=abb310(24)*abb310(7)
      abb310(23)=abb310(23)*c3
      abb310(26)=abb310(23)*abb310(7)
      abb310(27)=c4*abb310(2)**2
      abb310(28)=abb310(27)*abb310(22)
      abb310(29)=abb310(7)*abb310(28)
      abb310(30)=-abb310(29)+abb310(25)+abb310(26)
      abb310(31)=mB**2
      abb310(32)=abb310(31)*spak1l6
      abb310(33)=abb310(32)*abb310(6)
      abb310(34)=-abb310(33)*abb310(30)
      abb310(35)=abb310(34)*spak1k2
      abb310(36)=spbl6k3*spak3k4
      abb310(37)=abb310(35)*abb310(36)
      abb310(23)=abb310(23)+abb310(24)
      abb310(24)=spak1k2*abb310(23)
      abb310(38)=abb310(32)*spak2k4
      abb310(39)=abb310(38)*abb310(6)
      abb310(40)=abb310(39)*abb310(24)
      abb310(41)=spak2k4*spak1l6
      abb310(42)=abb310(6)*mB
      abb310(43)=abb310(41)*abb310(42)
      abb310(44)=abb310(43)*abb310(24)
      abb310(45)=abb310(22)*spak2k4
      abb310(46)=abb310(27)*spak1k2
      abb310(47)=abb310(46)*abb310(45)
      abb310(48)=abb310(42)*spak1l6
      abb310(49)=abb310(48)*abb310(47)
      abb310(44)=abb310(44)-abb310(49)
      abb310(49)=-abb310(9)*abb310(44)
      abb310(50)=-abb310(33)*abb310(47)
      abb310(13)=abb310(37)+abb310(13)+abb310(49)+abb310(50)+abb310(40)
      abb310(13)=es12*abb310(13)
      abb310(25)=-abb310(25)+abb310(29)-abb310(26)
      abb310(25)=abb310(38)*abb310(25)
      abb310(26)=-spak1k2*abb310(25)
      abb310(37)=es12*abb310(8)
      abb310(40)=-spbl5k2*abb310(26)*abb310(37)
      abb310(49)=-abb310(32)*abb310(30)
      abb310(50)=abb310(49)*spak1k2
      abb310(51)=spbl5k3*spak3k4
      abb310(37)=abb310(37)*abb310(51)
      abb310(52)=-abb310(50)*abb310(37)
      abb310(53)=abb310(22)*spak1k2
      abb310(54)=abb310(27)*abb310(53)
      abb310(54)=abb310(24)-abb310(54)
      abb310(55)=-abb310(54)*abb310(51)
      abb310(56)=spak2k4*abb310(24)
      abb310(57)=abb310(56)-abb310(47)
      abb310(58)=abb310(57)*spbl5k2
      abb310(55)=abb310(55)+abb310(58)
      abb310(58)=spak1l6**2
      abb310(59)=-spbl6k1*abb310(58)*abb310(55)
      abb310(60)=abb310(23)*abb310(48)
      abb310(22)=abb310(22)*spak1l6
      abb310(61)=abb310(6)*abb310(27)*mB
      abb310(62)=abb310(61)*abb310(22)
      abb310(60)=abb310(62)-abb310(60)
      abb310(62)=spbk3k1*spak3k4
      abb310(63)=spak1k2**2
      abb310(64)=-abb310(9)*abb310(62)*abb310(63)*abb310(60)
      abb310(13)=abb310(59)+abb310(64)+abb310(52)+abb310(40)+abb310(13)
      abb310(13)=8.0_ki*spbk7k1*abb310(13)
      abb310(40)=abb310(41)*abb310(23)
      abb310(52)=abb310(27)*abb310(45)
      abb310(59)=abb310(52)*spak1l6
      abb310(40)=abb310(40)-abb310(59)
      abb310(59)=abb310(40)*spbk7l6
      abb310(64)=abb310(59)*spbl5k2
      abb310(65)=-spak1l6*abb310(23)
      abb310(22)=abb310(27)*abb310(22)
      abb310(22)=abb310(22)+abb310(65)
      abb310(65)=abb310(22)*abb310(51)
      abb310(66)=abb310(65)*spbk7l6
      abb310(64)=abb310(64)+abb310(66)
      abb310(64)=abb310(64)*spak2l6
      abb310(66)=abb310(30)*mB
      abb310(67)=abb310(9)*spbk7k2
      abb310(68)=abb310(66)*abb310(67)
      abb310(69)=spak2k4*spak1k2
      abb310(70)=-spbl5k2*abb310(69)*abb310(68)
      abb310(64)=abb310(64)-abb310(70)
      abb310(70)=-spak1k2*abb310(66)
      abb310(71)=abb310(70)*abb310(67)
      abb310(72)=abb310(71)*abb310(51)
      abb310(72)=abb310(72)+abb310(64)
      abb310(73)=-16.0_ki*abb310(72)
      abb310(74)=spak1k4*abb310(9)
      abb310(75)=abb310(74)*spbk7l5
      abb310(76)=-abb310(75)*abb310(66)
      abb310(77)=-abb310(39)*abb310(30)
      abb310(78)=abb310(77)*spbk7l6
      abb310(76)=abb310(76)+abb310(78)
      abb310(78)=abb310(25)*spbk7l5
      abb310(57)=abb310(57)*spbk7k2
      abb310(18)=abb310(18)*abb310(7)**2
      abb310(79)=-abb310(18)*abb310(57)
      abb310(80)=-abb310(79)+2.0_ki*abb310(78)
      abb310(80)=abb310(80)*abb310(8)
      abb310(80)=abb310(80)-2.0_ki*abb310(76)
      abb310(80)=abb310(80)*es12
      abb310(78)=abb310(79)-abb310(78)
      abb310(78)=abb310(78)*abb310(8)
      abb310(78)=abb310(78)+abb310(76)
      abb310(79)=es712-es71
      abb310(78)=abb310(79)*abb310(78)
      abb310(81)=abb310(74)*spbk7k2
      abb310(82)=abb310(81)*abb310(70)
      abb310(83)=abb310(8)*spbk7k2
      abb310(26)=abb310(26)*abb310(83)
      abb310(84)=-spak1l6*abb310(54)
      abb310(85)=abb310(84)*spbk7l6
      abb310(86)=abb310(85)*spak4l6
      abb310(26)=abb310(26)+abb310(86)+abb310(82)
      abb310(26)=abb310(26)*spbl5k1
      abb310(82)=spbk7k2*abb310(77)*spak1k2
      abb310(86)=spak4l6*spbk7l5
      abb310(87)=abb310(84)*abb310(86)
      abb310(82)=abb310(87)-abb310(82)
      abb310(82)=abb310(82)*spbl6k1
      abb310(87)=2.0_ki*abb310(9)
      abb310(88)=abb310(87)*spbk7k1
      abb310(89)=abb310(44)*abb310(88)
      abb310(15)=abb310(15)*abb310(4)
      abb310(90)=abb310(15)*c3
      abb310(91)=abb310(27)*abb310(4)
      abb310(92)=abb310(91)*spbk3k2
      abb310(90)=abb310(90)-abb310(92)
      abb310(92)=abb310(15)*c1
      abb310(92)=abb310(92)+abb310(90)
      abb310(93)=abb310(21)*spak1l6
      abb310(94)=-abb310(93)*abb310(92)
      abb310(95)=abb310(86)*spbk7l6
      abb310(96)=abb310(95)*abb310(94)
      abb310(26)=abb310(26)+abb310(89)-abb310(82)-abb310(96)
      abb310(78)=abb310(80)+abb310(78)+abb310(26)
      abb310(78)=16.0_ki*abb310(78)
      abb310(25)=abb310(25)*abb310(8)
      abb310(80)=abb310(25)*spbk7l5
      abb310(76)=abb310(80)-abb310(76)
      abb310(80)=abb310(79)-2.0_ki*es12
      abb310(76)=-abb310(76)*abb310(80)
      abb310(82)=abb310(80)*spbk7k3
      abb310(89)=abb310(82)*abb310(20)
      abb310(96)=-abb310(54)*abb310(18)*abb310(89)
      abb310(28)=abb310(23)-abb310(28)
      abb310(97)=abb310(20)*spbk3k1
      abb310(19)=-spbk7k2*abb310(97)*abb310(28)*abb310(19)
      abb310(19)=abb310(19)+abb310(96)+abb310(76)+abb310(26)
      abb310(19)=16.0_ki*abb310(19)
      abb310(26)=abb310(21)*abb310(7)
      abb310(76)=abb310(26)*abb310(11)
      abb310(96)=c1+c3
      abb310(98)=abb310(76)*abb310(96)
      abb310(99)=abb310(31)*abb310(6)
      abb310(100)=abb310(63)*abb310(99)
      abb310(101)=-abb310(100)*abb310(14)*abb310(98)
      abb310(102)=abb310(99)*abb310(26)
      abb310(103)=abb310(17)*abb310(102)
      abb310(104)=abb310(63)*abb310(103)
      abb310(101)=abb310(104)+abb310(101)
      abb310(101)=spak3k4*abb310(101)
      abb310(41)=abb310(24)*abb310(41)
      abb310(47)=abb310(47)*spak1l6
      abb310(41)=abb310(47)-abb310(41)
      abb310(47)=-spbl5k2*abb310(41)
      abb310(47)=abb310(101)+abb310(47)
      abb310(47)=spbk7k1*abb310(47)
      abb310(101)=spbk7k1*abb310(84)
      abb310(101)=abb310(71)+abb310(101)
      abb310(101)=abb310(101)*abb310(51)
      abb310(47)=abb310(101)+abb310(47)+abb310(64)
      abb310(47)=16.0_ki*abb310(47)
      abb310(64)=abb310(30)*abb310(99)
      abb310(101)=-abb310(69)*abb310(64)
      abb310(104)=abb310(101)*spbk7k2
      abb310(105)=-abb310(54)*abb310(86)
      abb310(106)=abb310(104)+abb310(105)
      abb310(106)=32.0_ki*abb310(106)
      abb310(107)=spak1k2*abb310(64)
      abb310(108)=spbk7k3*spak3k4
      abb310(109)=abb310(107)*abb310(108)
      abb310(105)=abb310(105)-abb310(109)
      abb310(105)=32.0_ki*abb310(105)
      abb310(72)=-8.0_ki*abb310(72)
      abb310(110)=16.0_ki*abb310(55)
      abb310(90)=abb310(21)*abb310(90)
      abb310(111)=abb310(21)*c1
      abb310(15)=abb310(15)*abb310(111)
      abb310(15)=abb310(15)+abb310(90)
      abb310(90)=spak1k4*spbk7l5
      abb310(112)=abb310(15)*abb310(90)
      abb310(113)=-abb310(54)*spbl5k1
      abb310(114)=abb310(113)*spak1k4
      abb310(112)=abb310(112)+abb310(114)
      abb310(112)=16.0_ki*abb310(112)
      abb310(55)=-8.0_ki*abb310(55)
      abb310(41)=-spbk7k2*abb310(41)
      abb310(114)=abb310(84)*abb310(108)
      abb310(41)=abb310(41)+abb310(114)
      abb310(41)=spbl6k1*abb310(41)
      abb310(114)=-abb310(59)*abb310(79)
      abb310(115)=-abb310(62)*abb310(85)
      abb310(94)=abb310(94)*spbk7l6
      abb310(116)=abb310(108)*abb310(94)
      abb310(41)=abb310(115)+abb310(41)+abb310(116)+abb310(114)
      abb310(41)=8.0_ki*abb310(41)
      abb310(114)=-abb310(54)*abb310(108)
      abb310(57)=abb310(57)+abb310(114)
      abb310(114)=-16.0_ki*abb310(57)
      abb310(115)=-abb310(54)*abb310(90)
      abb310(115)=16.0_ki*abb310(115)
      abb310(116)=abb310(21)*spak1k2
      abb310(117)=abb310(116)*abb310(18)
      abb310(118)=abb310(27)*abb310(10)
      abb310(119)=abb310(117)*abb310(118)
      abb310(120)=abb310(116)*abb310(11)
      abb310(121)=abb310(18)*abb310(120)
      abb310(122)=abb310(121)*abb310(96)
      abb310(122)=abb310(122)-abb310(119)
      abb310(122)=abb310(122)*spbk7k2
      abb310(123)=abb310(32)*abb310(98)
      abb310(124)=abb310(118)*abb310(26)
      abb310(125)=abb310(124)*abb310(32)
      abb310(125)=abb310(125)-abb310(123)
      abb310(126)=abb310(125)*spbk7l5
      abb310(127)=abb310(122)+abb310(126)
      abb310(127)=abb310(127)*abb310(8)
      abb310(128)=abb310(33)*abb310(98)
      abb310(129)=abb310(124)*abb310(33)
      abb310(129)=abb310(129)-abb310(128)
      abb310(129)=abb310(129)*spbk7l6
      abb310(127)=abb310(127)-abb310(129)
      abb310(127)=-abb310(127)*abb310(79)
      abb310(122)=2.0_ki*abb310(126)+abb310(122)
      abb310(122)=abb310(8)*abb310(122)
      abb310(122)=abb310(122)-2.0_ki*abb310(129)
      abb310(122)=es12*abb310(122)
      abb310(10)=abb310(46)*abb310(10)
      abb310(126)=abb310(10)*abb310(93)
      abb310(129)=abb310(126)*abb310(42)
      abb310(130)=abb310(93)*abb310(11)
      abb310(131)=abb310(130)*abb310(42)
      abb310(132)=spak1k2*abb310(96)
      abb310(133)=abb310(132)*abb310(131)
      abb310(129)=abb310(129)-abb310(133)
      abb310(129)=abb310(129)*abb310(88)
      abb310(133)=abb310(76)*abb310(132)
      abb310(134)=abb310(10)*abb310(26)
      abb310(133)=abb310(133)-abb310(134)
      abb310(134)=abb310(83)*spbl5k1
      abb310(135)=abb310(134)*abb310(32)*abb310(133)
      abb310(122)=-abb310(129)+abb310(135)+abb310(122)+abb310(127)
      abb310(122)=es34*abb310(122)
      abb310(81)=abb310(81)*abb310(133)*mB
      abb310(127)=abb310(130)*abb310(132)
      abb310(126)=abb310(127)-abb310(126)
      abb310(127)=spbk7l6*abb310(126)*spak4l6
      abb310(81)=abb310(81)+abb310(127)
      abb310(127)=-spbl5k1*abb310(81)
      abb310(135)=abb310(21)*abb310(2)
      abb310(136)=abb310(135)*abb310(4)
      abb310(137)=abb310(136)*abb310(96)
      abb310(138)=abb310(137)*spak1l6
      abb310(139)=abb310(91)*abb310(93)
      abb310(138)=abb310(138)-abb310(139)
      abb310(95)=abb310(138)*abb310(95)
      abb310(138)=mB*abb310(98)
      abb310(139)=abb310(124)*mB
      abb310(139)=abb310(139)-abb310(138)
      abb310(75)=abb310(139)*abb310(75)
      abb310(140)=abb310(75)*abb310(80)
      abb310(126)=abb310(126)*abb310(86)
      abb310(141)=spbl6k1*abb310(126)
      abb310(127)=abb310(141)+abb310(127)+abb310(95)+abb310(140)
      abb310(127)=spbk4k2*abb310(127)
      abb310(80)=abb310(80)*abb310(9)*spbk7l5
      abb310(140)=-abb310(66)*abb310(80)
      abb310(141)=spbl5k1*abb310(71)
      abb310(140)=abb310(141)+abb310(140)
      abb310(140)=spak1k3*abb310(140)
      abb310(135)=abb310(135)*abb310(5)
      abb310(18)=-abb310(132)*abb310(18)*abb310(135)
      abb310(27)=abb310(27)*abb310(5)
      abb310(141)=abb310(117)*abb310(27)
      abb310(18)=abb310(141)+abb310(18)
      abb310(18)=abb310(18)*spbk7k2
      abb310(141)=abb310(7)*abb310(96)
      abb310(142)=abb310(135)*abb310(141)
      abb310(143)=abb310(27)*abb310(26)
      abb310(143)=abb310(142)-abb310(143)
      abb310(144)=-abb310(32)*abb310(143)
      abb310(145)=abb310(144)*spbk7l5
      abb310(146)=abb310(18)-abb310(145)
      abb310(146)=abb310(146)*abb310(8)
      abb310(143)=spbk7l6*abb310(143)*abb310(33)
      abb310(146)=abb310(146)-abb310(143)
      abb310(146)=-abb310(146)*abb310(79)
      abb310(18)=-2.0_ki*abb310(145)+abb310(18)
      abb310(18)=abb310(8)*abb310(18)
      abb310(18)=abb310(18)-2.0_ki*abb310(143)
      abb310(18)=es12*abb310(18)
      abb310(85)=abb310(85)*spbl5k1
      abb310(143)=-spbl6k1*abb310(84)
      abb310(143)=abb310(143)-abb310(94)
      abb310(143)=spbk7l5*abb310(143)
      abb310(143)=abb310(85)+abb310(143)
      abb310(143)=spak3l6*abb310(143)
      abb310(145)=abb310(132)*abb310(7)
      abb310(147)=abb310(145)*abb310(135)
      abb310(148)=abb310(46)*abb310(26)*abb310(5)
      abb310(147)=abb310(147)-abb310(148)
      abb310(134)=-abb310(134)*abb310(32)*abb310(147)
      abb310(149)=abb310(93)*abb310(5)
      abb310(46)=abb310(46)*abb310(42)*abb310(149)
      abb310(150)=abb310(48)*abb310(135)
      abb310(151)=-abb310(150)*abb310(132)
      abb310(46)=abb310(46)+abb310(151)
      abb310(46)=abb310(46)*abb310(88)
      abb310(88)=-es34*abb310(133)
      abb310(88)=abb310(88)-abb310(148)
      abb310(88)=abb310(33)*abb310(88)
      abb310(135)=abb310(135)*abb310(33)
      abb310(145)=abb310(135)*abb310(145)
      abb310(88)=abb310(145)+abb310(88)
      abb310(88)=spbl6k1*spbk7k2*abb310(88)
      abb310(18)=abb310(143)+abb310(140)+abb310(127)+abb310(88)+abb310(122)+abb&
      &310(46)+abb310(134)+abb310(18)+abb310(146)
      abb310(18)=8.0_ki*abb310(18)
      abb310(46)=abb310(99)*abb310(147)
      abb310(10)=abb310(102)*abb310(10)
      abb310(76)=abb310(76)*abb310(99)
      abb310(88)=abb310(76)*abb310(132)
      abb310(10)=abb310(10)-abb310(88)
      abb310(10)=abb310(10)*es34
      abb310(10)=abb310(10)+abb310(46)
      abb310(46)=spbk7k2*abb310(10)
      abb310(120)=abb310(120)*abb310(96)
      abb310(122)=abb310(118)*abb310(116)
      abb310(120)=abb310(120)-abb310(122)
      abb310(122)=abb310(120)*abb310(86)
      abb310(127)=-spbk4k2*abb310(122)
      abb310(132)=-abb310(54)*spbk7l5
      abb310(134)=spak3l6*abb310(132)
      abb310(46)=abb310(134)+abb310(127)+abb310(46)
      abb310(46)=16.0_ki*abb310(46)
      abb310(91)=abb310(91)*abb310(21)
      abb310(91)=abb310(91)-abb310(137)
      abb310(127)=abb310(91)*abb310(90)
      abb310(134)=abb310(120)*spbl5k1
      abb310(137)=-spak1k4*abb310(134)
      abb310(137)=-abb310(127)+abb310(137)
      abb310(137)=spbk4k2*abb310(137)
      abb310(140)=abb310(15)*spbk7l5
      abb310(140)=abb310(140)+abb310(113)
      abb310(143)=spak1k3*abb310(140)
      abb310(137)=abb310(137)+abb310(143)
      abb310(137)=8.0_ki*abb310(137)
      abb310(143)=-abb310(90)*abb310(120)*spbk4k2
      abb310(145)=spak1k3*abb310(132)
      abb310(143)=abb310(143)+abb310(145)
      abb310(143)=8.0_ki*abb310(143)
      abb310(98)=abb310(98)-abb310(124)
      abb310(145)=-spbk7l6*abb310(98)*abb310(39)
      abb310(75)=abb310(145)+abb310(75)
      abb310(119)=abb310(119)*spak2k4
      abb310(145)=spak2k4*abb310(96)
      abb310(146)=abb310(121)*abb310(145)
      abb310(119)=-abb310(119)+abb310(146)
      abb310(119)=abb310(119)*spbk7k2
      abb310(146)=abb310(38)*abb310(98)
      abb310(147)=abb310(146)*spbk7l5
      abb310(148)=abb310(119)-abb310(147)
      abb310(148)=abb310(148)*abb310(8)
      abb310(148)=abb310(148)-abb310(75)
      abb310(148)=abb310(148)*abb310(79)
      abb310(119)=2.0_ki*abb310(147)-abb310(119)
      abb310(119)=abb310(8)*abb310(119)
      abb310(75)=abb310(119)+2.0_ki*abb310(75)
      abb310(75)=es12*abb310(75)
      abb310(119)=spak2k4*abb310(129)
      abb310(75)=abb310(119)+abb310(75)-abb310(95)+abb310(148)
      abb310(75)=spbk4k3*abb310(75)
      abb310(95)=abb310(63)*abb310(68)
      abb310(38)=-abb310(83)*abb310(38)*abb310(133)
      abb310(38)=abb310(38)+abb310(81)
      abb310(38)=spbk4k3*abb310(38)
      abb310(38)=abb310(95)+abb310(38)
      abb310(38)=spbl5k1*abb310(38)
      abb310(80)=-abb310(70)*abb310(80)
      abb310(81)=spbk7k2*abb310(39)*abb310(133)
      abb310(81)=abb310(81)-abb310(126)
      abb310(81)=spbk4k3*abb310(81)
      abb310(84)=spak2l6*spbk7l5*abb310(84)
      abb310(81)=abb310(81)+abb310(84)
      abb310(81)=spbl6k1*abb310(81)
      abb310(84)=spbk7l5*abb310(94)
      abb310(84)=abb310(84)-abb310(85)
      abb310(84)=spak2l6*abb310(84)
      abb310(38)=abb310(81)+abb310(84)+abb310(38)+abb310(80)+abb310(75)
      abb310(38)=8.0_ki*abb310(38)
      abb310(75)=abb310(99)*spak2k4
      abb310(80)=abb310(133)*abb310(75)
      abb310(81)=spbk7k2*abb310(80)
      abb310(81)=abb310(81)+abb310(122)
      abb310(81)=spbk4k3*abb310(81)
      abb310(84)=-spak2l6*abb310(132)
      abb310(81)=abb310(81)+abb310(84)
      abb310(81)=16.0_ki*abb310(81)
      abb310(63)=abb310(28)*abb310(63)
      abb310(84)=abb310(120)*spbk4k3
      abb310(85)=spak1k4*abb310(84)
      abb310(85)=abb310(85)+abb310(63)
      abb310(85)=spbl5k1*abb310(85)
      abb310(94)=spbk4k3*abb310(127)
      abb310(95)=-spbk7l5*abb310(116)*abb310(92)
      abb310(85)=abb310(85)+abb310(95)+abb310(94)
      abb310(85)=8.0_ki*abb310(85)
      abb310(63)=spbk7l5*abb310(63)
      abb310(84)=abb310(90)*abb310(84)
      abb310(63)=abb310(63)+abb310(84)
      abb310(63)=8.0_ki*abb310(63)
      abb310(84)=-abb310(96)*abb310(121)*abb310(14)
      abb310(90)=abb310(17)*abb310(117)
      abb310(84)=abb310(90)+abb310(84)
      abb310(84)=abb310(84)*abb310(20)
      abb310(34)=abb310(34)*spak3k4
      abb310(90)=-spbl6k3*abb310(34)
      abb310(39)=abb310(39)*abb310(23)
      abb310(94)=abb310(52)*abb310(33)
      abb310(39)=abb310(39)-abb310(94)
      abb310(90)=abb310(90)+abb310(84)-abb310(39)
      abb310(90)=abb310(79)*abb310(90)
      abb310(94)=abb310(31)*abb310(7)
      abb310(56)=-abb310(94)*abb310(56)
      abb310(29)=abb310(29)*abb310(31)
      abb310(31)=abb310(69)*abb310(29)
      abb310(31)=abb310(31)+abb310(56)
      abb310(31)=abb310(31)*abb310(83)
      abb310(31)=abb310(31)-abb310(59)
      abb310(31)=spbl5k2*abb310(31)
      abb310(56)=abb310(94)*abb310(24)
      abb310(59)=-spak1k2*abb310(29)
      abb310(56)=abb310(59)+abb310(56)
      abb310(56)=abb310(56)*abb310(20)*spbk7k2
      abb310(59)=-spak3k4*abb310(22)*spbk7l6
      abb310(56)=abb310(56)+abb310(59)
      abb310(56)=spbl5k3*abb310(56)
      abb310(31)=abb310(31)+abb310(56)
      abb310(31)=spal6k7*abb310(31)
      abb310(56)=-spak2k4*abb310(68)
      abb310(59)=spak2k4*abb310(23)
      abb310(68)=-abb310(94)*abb310(59)
      abb310(69)=spak2k4*abb310(29)
      abb310(68)=abb310(69)+abb310(68)
      abb310(68)=spbk7k2*abb310(68)
      abb310(68)=abb310(68)-abb310(56)
      abb310(68)=spbl5k2*abb310(68)
      abb310(69)=-abb310(66)*spak3k4
      abb310(83)=abb310(67)*abb310(69)
      abb310(94)=abb310(94)*abb310(23)
      abb310(29)=-abb310(29)+abb310(94)
      abb310(29)=spbk7k2*spak3k4*abb310(29)
      abb310(29)=abb310(29)+abb310(83)
      abb310(29)=spbl5k3*abb310(29)
      abb310(29)=abb310(68)+abb310(29)
      abb310(29)=spak1k7*abb310(29)
      abb310(68)=-spbl5k2*es12*abb310(25)
      abb310(37)=abb310(49)*abb310(37)
      abb310(51)=abb310(28)*abb310(51)
      abb310(52)=abb310(59)-abb310(52)
      abb310(59)=abb310(52)*spbl5k2
      abb310(51)=abb310(51)-abb310(59)
      abb310(58)=-spbl6k1*abb310(58)*abb310(51)
      abb310(29)=abb310(29)+abb310(31)+abb310(58)+abb310(37)+abb310(68)+abb310(&
      &90)
      abb310(29)=8.0_ki*abb310(29)
      abb310(31)=-abb310(66)*abb310(74)
      abb310(31)=abb310(31)-abb310(25)
      abb310(31)=abb310(31)*spbl5k2
      abb310(37)=spak4l6*abb310(22)*spbl6l5
      abb310(31)=abb310(31)-abb310(37)-abb310(39)
      abb310(23)=abb310(43)*abb310(23)
      abb310(37)=spak1l6*abb310(61)
      abb310(39)=abb310(37)*abb310(45)
      abb310(23)=abb310(23)-abb310(39)
      abb310(39)=abb310(23)*abb310(87)
      abb310(39)=abb310(39)+abb310(31)
      abb310(39)=16.0_ki*abb310(39)
      abb310(23)=-abb310(9)*abb310(23)
      abb310(23)=-abb310(84)+abb310(23)-abb310(31)
      abb310(23)=16.0_ki*abb310(23)
      abb310(31)=-spak1k2*abb310(103)
      abb310(43)=abb310(14)*abb310(88)
      abb310(31)=abb310(31)+abb310(43)
      abb310(31)=spak3k4*abb310(31)
      abb310(43)=-spbl5k2*abb310(40)
      abb310(31)=-abb310(65)+abb310(31)+abb310(43)
      abb310(31)=16.0_ki*abb310(31)
      abb310(43)=-8.0_ki*spak1k7*abb310(51)
      abb310(36)=-abb310(22)*abb310(36)
      abb310(40)=-spbl6k2*abb310(40)
      abb310(36)=abb310(36)+abb310(40)
      abb310(36)=8.0_ki*abb310(36)
      abb310(40)=16.0_ki*abb310(28)
      abb310(45)=abb310(40)*spak1k4
      abb310(58)=spak1k3*abb310(9)*abb310(66)
      abb310(59)=-abb310(8)*abb310(144)
      abb310(65)=abb310(139)*abb310(74)
      abb310(66)=-spbk4k2*abb310(65)
      abb310(58)=abb310(58)+abb310(66)+abb310(59)
      abb310(58)=spbl5k2*abb310(58)
      abb310(59)=abb310(118)*abb310(93)
      abb310(42)=abb310(59)*abb310(42)
      abb310(66)=-abb310(131)*abb310(96)
      abb310(66)=abb310(42)+abb310(66)
      abb310(66)=abb310(66)*abb310(87)
      abb310(68)=spbl5k2*abb310(8)*abb310(125)
      abb310(74)=abb310(130)*abb310(99)
      abb310(83)=abb310(74)*abb310(96)
      abb310(84)=-abb310(99)*abb310(59)
      abb310(66)=abb310(68)+abb310(66)+abb310(84)+abb310(83)
      abb310(66)=es34*abb310(66)
      abb310(68)=abb310(96)*abb310(130)
      abb310(68)=abb310(68)-abb310(59)
      abb310(83)=-abb310(68)*spbk4k2*spak4l6
      abb310(84)=spak3l6*abb310(22)
      abb310(83)=abb310(83)+abb310(84)
      abb310(83)=spbl6l5*abb310(83)
      abb310(84)=abb310(93)*abb310(99)*abb310(27)
      abb310(88)=abb310(150)*abb310(96)
      abb310(61)=-abb310(61)*abb310(149)
      abb310(61)=abb310(61)+abb310(88)
      abb310(61)=abb310(61)*abb310(87)
      abb310(88)=-abb310(135)*abb310(96)
      abb310(58)=abb310(83)+abb310(66)+abb310(61)+abb310(84)+abb310(58)+abb310(&
      &88)
      abb310(58)=8.0_ki*abb310(58)
      abb310(12)=abb310(12)-abb310(118)
      abb310(12)=abb310(21)*abb310(12)
      abb310(11)=abb310(111)*abb310(11)
      abb310(11)=abb310(11)+abb310(12)
      abb310(12)=abb310(11)*spbk4k2
      abb310(21)=spak1k4*abb310(12)
      abb310(61)=spak1k3*abb310(28)
      abb310(21)=abb310(21)+abb310(61)
      abb310(21)=8.0_ki*abb310(21)
      abb310(61)=abb310(9)*abb310(70)
      abb310(66)=abb310(8)*abb310(146)
      abb310(65)=abb310(66)+abb310(65)
      abb310(65)=spbk4k3*abb310(65)
      abb310(61)=abb310(61)+abb310(65)
      abb310(61)=spbl5k2*abb310(61)
      abb310(65)=abb310(131)*abb310(145)
      abb310(42)=-spak2k4*abb310(42)
      abb310(42)=abb310(42)+abb310(65)
      abb310(42)=abb310(42)*abb310(87)
      abb310(65)=-abb310(74)*abb310(145)
      abb310(59)=abb310(75)*abb310(59)
      abb310(42)=abb310(42)+abb310(59)+abb310(65)
      abb310(42)=spbk4k3*abb310(42)
      abb310(59)=spbk4k3*spak4l6
      abb310(65)=abb310(68)*abb310(59)
      abb310(22)=-spak2l6*abb310(22)
      abb310(22)=abb310(65)+abb310(22)
      abb310(22)=spbl6l5*abb310(22)
      abb310(22)=abb310(22)+abb310(42)+abb310(61)
      abb310(22)=8.0_ki*abb310(22)
      abb310(42)=-spbk4k3*abb310(11)*spak1k4
      abb310(42)=abb310(42)-abb310(54)
      abb310(42)=8.0_ki*abb310(42)
      abb310(61)=abb310(79)-es12
      abb310(65)=-abb310(77)*abb310(61)
      abb310(35)=abb310(35)*abb310(62)
      abb310(35)=abb310(35)+abb310(65)
      abb310(35)=spbk7k2*abb310(35)
      abb310(34)=abb310(34)*abb310(82)
      abb310(34)=abb310(34)+abb310(35)
      abb310(34)=8.0_ki*abb310(34)
      abb310(35)=abb310(14)*abb310(128)
      abb310(17)=abb310(17)*abb310(26)
      abb310(26)=-abb310(33)*abb310(17)
      abb310(26)=abb310(26)+abb310(35)
      abb310(33)=8.0_ki*spak3k4
      abb310(26)=abb310(26)*abb310(33)
      abb310(25)=abb310(25)*abb310(61)
      abb310(35)=-abb310(50)*abb310(97)
      abb310(25)=abb310(35)+abb310(25)
      abb310(25)=spbk7k2*abb310(25)
      abb310(35)=-abb310(49)*abb310(89)
      abb310(25)=abb310(35)+abb310(25)
      abb310(25)=8.0_ki*abb310(25)
      abb310(35)=-abb310(14)*abb310(123)
      abb310(32)=abb310(32)*abb310(17)
      abb310(32)=abb310(32)+abb310(35)
      abb310(20)=8.0_ki*abb310(32)*abb310(20)
      abb310(32)=abb310(33)*abb310(9)
      abb310(35)=abb310(60)*abb310(32)
      abb310(44)=-abb310(44)*abb310(67)
      abb310(24)=abb310(48)*abb310(24)
      abb310(37)=-abb310(53)*abb310(37)
      abb310(24)=abb310(37)+abb310(24)
      abb310(24)=abb310(9)*abb310(24)*abb310(108)
      abb310(24)=abb310(44)+abb310(24)
      abb310(24)=8.0_ki*abb310(24)
      abb310(37)=abb310(51)*spak2l6
      abb310(44)=16.0_ki*abb310(37)
      abb310(48)=-abb310(75)*abb310(30)
      abb310(49)=abb310(79)*abb310(48)
      abb310(50)=abb310(15)*abb310(86)
      abb310(53)=abb310(113)*spak4l6
      abb310(50)=abb310(50)+abb310(53)
      abb310(49)=abb310(49)+abb310(50)
      abb310(49)=16.0_ki*abb310(49)
      abb310(53)=-abb310(107)*abb310(62)
      abb310(60)=abb310(108)*abb310(102)*abb310(92)
      abb310(50)=abb310(53)+abb310(60)+abb310(50)
      abb310(50)=16.0_ki*abb310(50)
      abb310(37)=8.0_ki*abb310(37)
      abb310(15)=abb310(108)*abb310(15)
      abb310(53)=-abb310(54)*abb310(62)
      abb310(54)=abb310(79)*abb310(52)
      abb310(15)=abb310(54)+abb310(15)+abb310(53)
      abb310(15)=8.0_ki*abb310(15)
      abb310(53)=-es34*abb310(98)*abb310(99)
      abb310(54)=-abb310(99)*abb310(142)
      abb310(27)=abb310(102)*abb310(27)
      abb310(27)=abb310(53)-abb310(27)-abb310(54)
      abb310(53)=abb310(79)*abb310(27)
      abb310(54)=abb310(91)*abb310(86)
      abb310(60)=-spak4l6*abb310(134)
      abb310(60)=-abb310(54)+abb310(60)
      abb310(60)=spbk4k2*abb310(60)
      abb310(65)=spak3l6*abb310(140)
      abb310(53)=abb310(65)+abb310(60)+abb310(53)
      abb310(53)=8.0_ki*abb310(53)
      abb310(60)=-abb310(76)*abb310(145)
      abb310(65)=abb310(124)*abb310(75)
      abb310(60)=abb310(65)+abb310(60)
      abb310(65)=-abb310(60)*abb310(79)
      abb310(54)=abb310(54)+abb310(65)
      abb310(54)=spbk4k3*abb310(54)
      abb310(65)=-spak2l6*abb310(140)
      abb310(66)=abb310(134)*abb310(59)
      abb310(54)=abb310(65)+abb310(54)+abb310(66)
      abb310(54)=8.0_ki*abb310(54)
      abb310(65)=abb310(136)*abb310(14)*abb310(99)*abb310(141)
      abb310(16)=-abb310(4)*abb310(102)*abb310(16)
      abb310(16)=abb310(16)+abb310(65)
      abb310(16)=spak3k4*abb310(16)
      abb310(51)=spal6k7*abb310(51)
      abb310(16)=abb310(16)+abb310(51)
      abb310(16)=8.0_ki*abb310(16)
      abb310(51)=-abb310(56)*abb310(61)
      abb310(56)=abb310(9)*abb310(79)
      abb310(61)=-es12*abb310(87)
      abb310(56)=abb310(61)+abb310(56)
      abb310(56)=spbk7k3*abb310(69)*abb310(56)
      abb310(61)=abb310(62)*abb310(71)
      abb310(51)=abb310(61)+abb310(56)+abb310(51)
      abb310(51)=8.0_ki*abb310(51)
      abb310(56)=8.0_ki*abb310(57)
      abb310(14)=abb310(14)*abb310(138)
      abb310(17)=-mB*abb310(17)
      abb310(14)=abb310(17)+abb310(14)
      abb310(14)=abb310(14)*abb310(32)
      abb310(17)=abb310(40)*spak4l6
      abb310(32)=abb310(28)*abb310(33)
      abb310(40)=8.0_ki*abb310(52)
      abb310(12)=spak4l6*abb310(12)
      abb310(52)=spak3l6*abb310(28)
      abb310(12)=abb310(12)+abb310(52)
      abb310(12)=8.0_ki*abb310(12)
      abb310(11)=-abb310(11)*abb310(59)
      abb310(28)=-spak2l6*abb310(28)
      abb310(11)=abb310(11)+abb310(28)
      abb310(11)=8.0_ki*abb310(11)
      abb310(28)=16.0_ki*spak3k4*abb310(64)
      abb310(52)=abb310(101)*spbk7k1
      abb310(57)=es12*abb310(52)
      abb310(30)=spbk7k1*abb310(62)*abb310(100)*abb310(30)
      abb310(30)=abb310(57)+abb310(30)
      abb310(30)=8.0_ki*abb310(30)
      abb310(52)=32.0_ki*abb310(52)
      abb310(57)=16.0_ki*spbk7k1
      abb310(10)=-abb310(10)*abb310(57)
      abb310(57)=-spbk4k3*abb310(80)*abb310(57)
      abb310(48)=16.0_ki*abb310(48)
      abb310(27)=8.0_ki*abb310(27)
      abb310(59)=-8.0_ki*spbk4k3*abb310(60)
      abb310(33)=-abb310(64)*abb310(33)
      abb310(60)=abb310(104)+abb310(109)
      abb310(60)=8.0_ki*abb310(60)
      R2d310=0.0_ki
      rat2 = rat2 + R2d310
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='310' value='", &
          & R2d310, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd310h1
