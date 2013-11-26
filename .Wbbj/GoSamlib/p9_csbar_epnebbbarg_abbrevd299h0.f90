module     p9_csbar_epnebbbarg_abbrevd299h0
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(182), public :: abb299
   complex(ki), public :: R2d299
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
      abb299(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb299(2)=sqrt(mB**2)
      abb299(3)=NC**(-1)
      abb299(4)=spbl5k2**(-1)
      abb299(5)=spbl6k2**(-1)
      abb299(6)=spak2l5**(-1)
      abb299(7)=spak2l6**(-1)
      abb299(8)=c3+c1
      abb299(9)=TR*gW
      abb299(9)=abb299(9)**2
      abb299(10)=i_*CVSC
      abb299(8)=abb299(8)*abb299(9)*abb299(10)*abb299(3)*abb299(1)
      abb299(11)=spbk2k1*abb299(8)
      abb299(12)=abb299(5)*abb299(4)
      abb299(13)=mB**3
      abb299(14)=abb299(12)*abb299(13)
      abb299(15)=abb299(14)*abb299(11)
      abb299(9)=abb299(9)*abb299(3)**2
      abb299(16)=abb299(9)*c2
      abb299(17)=abb299(16)*spbk2k1
      abb299(18)=abb299(10)*abb299(5)
      abb299(19)=abb299(17)*abb299(18)
      abb299(20)=abb299(4)*abb299(1)
      abb299(21)=abb299(13)*abb299(20)
      abb299(22)=abb299(19)*abb299(21)
      abb299(15)=abb299(15)-abb299(22)
      abb299(22)=abb299(2)**2
      abb299(23)=abb299(15)*abb299(22)
      abb299(24)=abb299(8)*abb299(4)*mB
      abb299(25)=spbk2k1*abb299(24)
      abb299(26)=abb299(10)*abb299(4)
      abb299(27)=mB*abb299(1)
      abb299(28)=abb299(26)*abb299(17)*abb299(27)
      abb299(25)=abb299(25)-abb299(28)
      abb299(28)=abb299(25)*spak2l6
      abb299(29)=abb299(28)*abb299(22)
      abb299(23)=abb299(23)-abb299(29)
      abb299(30)=spbk3k1*spak2k4
      abb299(31)=abb299(30)*spbe7k2
      abb299(32)=abb299(23)*abb299(31)
      abb299(33)=spak4k7*spbk3k1
      abb299(34)=abb299(33)*spbk7e7
      abb299(35)=abb299(34)*abb299(29)
      abb299(36)=mB**2
      abb299(37)=abb299(36)*abb299(4)
      abb299(38)=-abb299(37)*abb299(11)
      abb299(17)=abb299(10)*abb299(17)
      abb299(39)=abb299(36)*abb299(20)
      abb299(40)=abb299(17)*abb299(39)
      abb299(38)=abb299(40)+abb299(38)
      abb299(40)=spak2k7*spbk7e7
      abb299(41)=abb299(40)*abb299(2)
      abb299(42)=abb299(41)*abb299(38)
      abb299(43)=spak4l6*spbk3k1
      abb299(44)=-abb299(43)*abb299(42)
      abb299(45)=-abb299(11)*abb299(36)*abb299(12)
      abb299(46)=abb299(39)*abb299(19)
      abb299(45)=abb299(46)+abb299(45)
      abb299(46)=abb299(45)*abb299(2)
      abb299(47)=abb299(46)*abb299(34)
      abb299(48)=-es12*abb299(47)
      abb299(32)=abb299(48)+abb299(32)+abb299(35)+abb299(44)
      abb299(32)=spak1e7*abb299(32)
      abb299(35)=spak4k7*spbk7e7
      abb299(44)=abb299(35)*abb299(29)
      abb299(42)=-spak4l6*abb299(42)
      abb299(42)=abb299(44)+abb299(42)
      abb299(42)=spbl5k3*abb299(42)
      abb299(44)=spbl5k3*spak2k4
      abb299(23)=spbe7k2*abb299(23)*abb299(44)
      abb299(23)=abb299(42)+abb299(23)
      abb299(23)=spal5e7*abb299(23)
      abb299(42)=abb299(47)*spak1e7
      abb299(47)=spal5e7*spbl5k3
      abb299(48)=abb299(47)*abb299(35)
      abb299(49)=abb299(48)*abb299(46)
      abb299(50)=abb299(4)**2
      abb299(51)=abb299(11)*abb299(50)*abb299(5)
      abb299(52)=abb299(50)*abb299(1)
      abb299(53)=abb299(52)*abb299(19)
      abb299(51)=abb299(51)-abb299(53)
      abb299(53)=mB**4
      abb299(54)=abb299(53)*abb299(51)
      abb299(55)=spak2e7*spbk3k2
      abb299(56)=abb299(55)*abb299(6)
      abb299(57)=abb299(56)*abb299(35)
      abb299(58)=abb299(2)*abb299(54)*abb299(57)
      abb299(49)=abb299(58)+abb299(49)
      abb299(42)=abb299(42)+abb299(49)
      abb299(58)=es712-es71
      abb299(42)=abb299(42)*abb299(58)
      abb299(14)=abb299(14)*abb299(8)
      abb299(59)=abb299(16)*abb299(18)
      abb299(60)=abb299(21)*abb299(59)
      abb299(14)=abb299(14)-abb299(60)
      abb299(60)=abb299(55)*spbe7k1
      abb299(61)=abb299(60)*abb299(14)
      abb299(62)=-spak4k7*abb299(22)*abb299(61)
      abb299(37)=-abb299(37)*abb299(8)
      abb299(9)=abb299(9)*abb299(10)*c2
      abb299(10)=abb299(39)*abb299(9)
      abb299(10)=abb299(10)+abb299(37)
      abb299(37)=spak2l6*abb299(2)
      abb299(63)=abb299(10)*abb299(37)
      abb299(64)=abb299(12)*abb299(8)
      abb299(65)=abb299(59)*abb299(20)
      abb299(65)=-abb299(65)+abb299(64)
      abb299(66)=abb299(53)*abb299(2)
      abb299(65)=abb299(65)*abb299(66)
      abb299(65)=abb299(65)+abb299(63)
      abb299(67)=spak2k4*spbk3k2
      abb299(68)=spae7k7*spbe7k1
      abb299(65)=abb299(65)*abb299(68)*abb299(67)
      abb299(62)=abb299(62)+abb299(65)
      abb299(62)=spbk7k2*abb299(62)
      abb299(65)=-abb299(50)*abb299(11)
      abb299(52)=abb299(17)*abb299(52)
      abb299(65)=abb299(52)+abb299(65)
      abb299(69)=abb299(56)*spak4l6
      abb299(53)=abb299(69)*abb299(41)*abb299(53)*abb299(65)
      abb299(65)=abb299(13)*abb299(8)
      abb299(70)=abb299(4)*abb299(65)
      abb299(21)=abb299(9)*abb299(21)
      abb299(21)=-abb299(21)+abb299(70)
      abb299(70)=abb299(21)*spak4l6
      abb299(71)=abb299(70)*abb299(60)
      abb299(72)=-abb299(22)*abb299(71)
      abb299(73)=abb299(36)*abb299(5)
      abb299(74)=abb299(73)*abb299(8)
      abb299(75)=abb299(36)*abb299(1)
      abb299(76)=abb299(75)*abb299(59)
      abb299(74)=abb299(74)-abb299(76)
      abb299(76)=abb299(74)*abb299(2)
      abb299(77)=abb299(9)*abb299(1)
      abb299(78)=abb299(77)-abb299(8)
      abb299(79)=abb299(78)*abb299(37)
      abb299(80)=abb299(76)+abb299(79)
      abb299(81)=abb299(80)*abb299(30)
      abb299(82)=-abb299(68)*abb299(81)
      abb299(83)=abb299(5)*mB
      abb299(84)=abb299(83)*abb299(8)
      abb299(16)=abb299(16)*abb299(27)
      abb299(18)=abb299(16)*abb299(18)
      abb299(18)=abb299(84)-abb299(18)
      abb299(84)=abb299(18)*spbe7k1
      abb299(85)=abb299(84)*abb299(33)
      abb299(86)=abb299(22)*spak2e7
      abb299(87)=abb299(86)*abb299(85)
      abb299(82)=abb299(87)+abb299(82)
      abb299(82)=spbk7k2*abb299(82)
      abb299(87)=mB*abb299(8)
      abb299(9)=abb299(27)*abb299(9)
      abb299(9)=abb299(87)-abb299(9)
      abb299(87)=abb299(9)*abb299(43)
      abb299(88)=abb299(87)*abb299(86)
      abb299(89)=spbe7k1*abb299(88)
      abb299(82)=abb299(89)+abb299(82)
      abb299(82)=spak1l5*abb299(82)
      abb299(49)=-es12*abb299(49)
      abb299(89)=abb299(43)*spak1e7
      abb299(90)=abb299(47)*spak4l6
      abb299(89)=abb299(89)+abb299(90)
      abb299(29)=-abb299(29)*abb299(89)
      abb299(8)=abb299(8)*abb299(50)*abb299(13)*spbk2k1
      abb299(50)=abb299(52)*abb299(13)
      abb299(8)=-abb299(50)+abb299(8)
      abb299(50)=abb299(69)*abb299(8)
      abb299(52)=abb299(22)*spak2l6
      abb299(90)=abb299(52)*abb299(50)
      abb299(29)=abb299(90)+abb299(29)
      abb299(29)=spbe7l6*abb299(29)
      abb299(90)=spak4l6*spbk3k2
      abb299(91)=abb299(63)*abb299(90)
      abb299(92)=abb299(79)*spak1l5
      abb299(93)=abb299(92)*abb299(43)
      abb299(91)=abb299(91)-abb299(93)
      abb299(93)=spbk7l6*abb299(68)*abb299(91)
      abb299(94)=abb299(57)*abb299(8)
      abb299(95)=-abb299(52)*abb299(94)
      abb299(23)=abb299(93)+abb299(29)+abb299(32)+abb299(49)+abb299(23)+abb299(&
      &82)+abb299(62)+abb299(72)+abb299(95)+abb299(53)+abb299(42)
      abb299(23)=4.0_ki*abb299(23)
      abb299(29)=spak4k7*spbk3k2
      abb299(32)=abb299(29)*abb299(63)
      abb299(21)=-abb299(21)*abb299(90)*spak2k7
      abb299(42)=abb299(79)*abb299(33)
      abb299(49)=spak2k7*abb299(87)
      abb299(49)=-abb299(42)+abb299(49)
      abb299(49)=spak1l5*abb299(49)
      abb299(53)=abb299(29)*abb299(14)
      abb299(62)=abb299(33)*abb299(18)
      abb299(72)=abb299(62)*spak1l5
      abb299(72)=abb299(72)-abb299(53)
      abb299(82)=es12*abb299(72)
      abb299(21)=abb299(82)+abb299(49)+abb299(32)+abb299(21)
      abb299(21)=spbk7k1*abb299(21)
      abb299(32)=abb299(72)*spbk7k1
      abb299(49)=abb299(51)*mB**5
      abb299(51)=abb299(8)*spak2l6
      abb299(82)=abb299(49)-abb299(51)
      abb299(93)=abb299(6)*spak2k4
      abb299(95)=abb299(93)*spbk3k2
      abb299(96)=abb299(82)*abb299(95)
      abb299(32)=abb299(32)-abb299(96)
      abb299(32)=-abb299(32)*abb299(58)
      abb299(36)=abb299(36)*abb299(64)
      abb299(39)=abb299(39)*abb299(59)
      abb299(36)=abb299(36)-abb299(39)
      abb299(39)=abb299(36)*abb299(2)
      abb299(59)=spbk7k2*abb299(39)*abb299(33)
      abb299(10)=abb299(10)*abb299(2)
      abb299(64)=abb299(10)*abb299(43)
      abb299(59)=abb299(59)-abb299(64)
      abb299(96)=-abb299(96)+abb299(59)
      abb299(96)=es12*abb299(96)
      abb299(97)=abb299(2)*abb299(38)*spak4l6
      abb299(98)=spbk7k2*spak4k7
      abb299(99)=abb299(46)*abb299(98)
      abb299(97)=abb299(97)+abb299(99)
      abb299(99)=spak2l5*spbl5k3
      abb299(97)=abb299(97)*abb299(99)
      abb299(100)=abb299(15)-abb299(28)
      abb299(101)=abb299(100)*abb299(44)
      abb299(102)=spbk7k2*abb299(101)
      abb299(103)=abb299(28)*spbl5k3
      abb299(104)=-spbk7l6*spak4l6*abb299(103)
      abb299(102)=abb299(102)+abb299(104)
      abb299(102)=spal5k7*abb299(102)
      abb299(104)=abb299(30)*spbk7k2
      abb299(105)=abb299(100)*abb299(104)
      abb299(106)=abb299(43)*spbk7l6
      abb299(107)=-abb299(28)*abb299(106)
      abb299(105)=abb299(105)+abb299(107)
      abb299(105)=spak1k7*abb299(105)
      abb299(38)=abb299(38)*abb299(37)
      abb299(12)=abb299(12)*abb299(11)
      abb299(20)=-abb299(20)*abb299(19)
      abb299(12)=abb299(20)+abb299(12)
      abb299(12)=abb299(12)*abb299(66)
      abb299(12)=abb299(12)+abb299(38)
      abb299(12)=abb299(12)*abb299(67)
      abb299(20)=abb299(73)*abb299(11)
      abb299(66)=abb299(75)*abb299(19)
      abb299(20)=abb299(20)-abb299(66)
      abb299(66)=abb299(20)*abb299(2)
      abb299(17)=-abb299(1)*abb299(17)
      abb299(17)=abb299(17)+abb299(11)
      abb299(17)=abb299(17)*abb299(37)
      abb299(17)=-abb299(66)+abb299(17)
      abb299(17)=spak1l5*abb299(17)*abb299(30)
      abb299(37)=spbl6k1*abb299(91)
      abb299(73)=abb299(51)*abb299(6)
      abb299(75)=abb299(90)*spbk7l6
      abb299(91)=spak2k7*abb299(73)*abb299(75)
      abb299(12)=abb299(105)+abb299(37)+abb299(102)+abb299(91)+abb299(97)+abb29&
      &9(21)+abb299(96)+abb299(12)+abb299(17)+abb299(32)
      abb299(12)=8.0_ki*abb299(12)
      abb299(17)=abb299(100)*abb299(31)
      abb299(21)=abb299(34)*abb299(28)
      abb299(17)=abb299(21)+abb299(17)
      abb299(17)=abb299(17)*spak1e7
      abb299(21)=abb299(101)*spbe7k2
      abb299(32)=abb299(103)*abb299(35)
      abb299(21)=abb299(21)+abb299(32)
      abb299(21)=abb299(21)*spal5e7
      abb299(32)=abb299(89)*abb299(28)
      abb299(37)=abb299(69)*abb299(51)
      abb299(32)=abb299(37)-abb299(32)
      abb299(32)=abb299(32)*spbe7l6
      abb299(37)=abb299(9)*spak2e7
      abb299(69)=abb299(37)*abb299(43)
      abb299(91)=abb299(69)*spbe7k1
      abb299(96)=spbk7k2*spak2e7
      abb299(85)=abb299(85)*abb299(96)
      abb299(85)=abb299(91)+abb299(85)
      abb299(85)=abb299(85)*spak1l5
      abb299(61)=abb299(61)*abb299(98)
      abb299(57)=abb299(57)*abb299(51)
      abb299(17)=-abb299(32)-abb299(17)-abb299(85)-abb299(21)+abb299(57)+abb299&
      &(61)
      abb299(21)=abb299(71)+abb299(17)
      abb299(21)=8.0_ki*abb299(21)
      abb299(32)=abb299(25)*abb299(40)
      abb299(57)=abb299(32)*abb299(89)
      abb299(61)=-abb299(40)*abb299(50)
      abb299(57)=abb299(61)+abb299(57)
      abb299(57)=8.0_ki*abb299(57)
      abb299(61)=abb299(25)*spak2l5
      abb299(71)=spbl5k3*spak4l6
      abb299(85)=-abb299(61)*abb299(71)
      abb299(16)=abb299(16)*abb299(26)
      abb299(16)=abb299(24)-abb299(16)
      abb299(24)=abb299(16)*es12
      abb299(26)=abb299(43)*abb299(24)
      abb299(26)=abb299(26)+abb299(85)
      abb299(26)=16.0_ki*abb299(26)
      abb299(85)=abb299(28)*spbe7k3
      abb299(91)=abb299(85)*abb299(22)
      abb299(97)=spbk3k2*abb299(2)
      abb299(45)=abb299(45)*abb299(97)
      abb299(100)=abb299(45)*abb299(40)
      abb299(91)=abb299(91)+abb299(100)
      abb299(100)=abb299(91)*spak4e7
      abb299(101)=abb299(18)*spak4l5
      abb299(60)=abb299(60)*abb299(101)
      abb299(102)=abb299(60)*abb299(22)
      abb299(102)=abb299(102)-abb299(100)
      abb299(103)=abb299(79)*spak4l5
      abb299(105)=abb299(68)*spbk7k3
      abb299(107)=abb299(105)*abb299(103)
      abb299(108)=abb299(107)-abb299(102)
      abb299(108)=8.0_ki*abb299(108)
      abb299(109)=abb299(46)*abb299(67)
      abb299(110)=spbk7k3*spak4k7
      abb299(111)=abb299(110)*abb299(28)
      abb299(112)=spak2k7*spbk3k2
      abb299(113)=abb299(112)*abb299(101)
      abb299(114)=abb299(113)*spbk7k1
      abb299(109)=abb299(114)+abb299(109)-abb299(111)
      abb299(111)=abb299(103)*spbk3k1
      abb299(111)=abb299(111)-abb299(109)
      abb299(114)=16.0_ki*abb299(111)
      abb299(115)=abb299(85)*spak4e7
      abb299(60)=abb299(115)-abb299(60)
      abb299(115)=16.0_ki*abb299(60)
      abb299(116)=spal6k7*spbk7e7
      abb299(117)=abb299(116)*abb299(25)
      abb299(118)=abb299(30)*spak1e7
      abb299(119)=abb299(47)*spak2k4
      abb299(118)=abb299(118)+abb299(119)
      abb299(119)=-abb299(117)*abb299(118)
      abb299(120)=abb299(14)*spak4l5
      abb299(121)=spbe7k1*abb299(120)*abb299(56)
      abb299(122)=-abb299(22)*abb299(121)
      abb299(123)=spak4l5*abb299(63)
      abb299(124)=abb299(123)*abb299(6)
      abb299(125)=abb299(105)*abb299(124)
      abb299(54)=abb299(54)*abb299(97)
      abb299(126)=-abb299(6)*abb299(40)*abb299(54)
      abb299(127)=abb299(8)*abb299(6)
      abb299(52)=abb299(52)*spbe7k3
      abb299(128)=abb299(127)*abb299(52)
      abb299(126)=abb299(126)+abb299(128)
      abb299(126)=spak4e7*abb299(126)
      abb299(128)=abb299(118)*abb299(15)
      abb299(49)=abb299(49)*abb299(93)*abb299(55)
      abb299(49)=abb299(49)-abb299(128)
      abb299(49)=abb299(49)*abb299(7)
      abb299(128)=-abb299(116)*abb299(49)
      abb299(129)=abb299(14)*abb299(90)
      abb299(130)=-abb299(68)*abb299(129)
      abb299(131)=abb299(84)*spak1l5
      abb299(132)=abb299(131)*spae7k7
      abb299(133)=abb299(43)*abb299(132)
      abb299(130)=abb299(130)+abb299(133)
      abb299(130)=spbk7l6*abb299(130)
      abb299(133)=abb299(8)*abb299(93)
      abb299(134)=abb299(133)*abb299(116)
      abb299(135)=abb299(55)*abb299(134)
      abb299(119)=abb299(130)+abb299(128)+abb299(126)+abb299(135)+abb299(122)+a&
      &bb299(125)+abb299(119)
      abb299(119)=8.0_ki*abb299(119)
      abb299(82)=-abb299(82)*abb299(67)
      abb299(122)=spbk3k1*abb299(123)
      abb299(82)=abb299(82)+abb299(122)
      abb299(82)=abb299(6)*abb299(82)
      abb299(120)=abb299(120)*abb299(6)
      abb299(122)=-abb299(112)*abb299(120)
      abb299(72)=abb299(122)+abb299(72)
      abb299(72)=spbk7k1*abb299(72)
      abb299(122)=abb299(15)*abb299(7)
      abb299(122)=abb299(122)-abb299(25)
      abb299(123)=-abb299(44)*abb299(122)
      abb299(125)=-spal5l6*abb299(123)
      abb299(122)=spak1l6*abb299(30)*abb299(122)
      abb299(126)=abb299(36)*abb299(97)
      abb299(128)=spbl5k1*spak4l5
      abb299(130)=abb299(128)*abb299(126)
      abb299(135)=abb299(43)*abb299(18)
      abb299(136)=spak1l5*abb299(135)
      abb299(136)=-abb299(129)+abb299(136)
      abb299(136)=spbl6k1*abb299(136)
      abb299(137)=abb299(73)*abb299(110)
      abb299(59)=abb299(136)+abb299(122)+abb299(125)+abb299(130)+abb299(72)+abb&
      &299(137)+abb299(82)+abb299(59)
      abb299(59)=16.0_ki*abb299(59)
      abb299(72)=abb299(127)*spak4e7
      abb299(82)=spbe7k3*spak2l6
      abb299(122)=abb299(72)*abb299(82)
      abb299(121)=abb299(122)-abb299(121)
      abb299(122)=-16.0_ki*abb299(121)
      abb299(125)=32.0_ki*abb299(16)
      abb299(130)=abb299(43)*abb299(125)
      abb299(136)=abb299(105)*abb299(101)
      abb299(137)=16.0_ki*abb299(136)
      abb299(138)=abb299(101)*spbk3k1
      abb299(139)=32.0_ki*abb299(138)
      abb299(140)=-16.0_ki*abb299(105)*abb299(120)
      abb299(141)=-32.0_ki*spbk3k1*abb299(120)
      abb299(102)=8.0_ki*abb299(102)
      abb299(109)=16.0_ki*abb299(109)
      abb299(70)=abb299(55)*abb299(70)
      abb299(142)=abb299(101)*abb299(55)
      abb299(143)=abb299(142)*abb299(22)
      abb299(70)=abb299(70)+abb299(143)
      abb299(70)=spbe7k1*abb299(70)
      abb299(17)=abb299(70)+abb299(17)-abb299(107)-abb299(100)
      abb299(17)=4.0_ki*abb299(17)
      abb299(70)=-8.0_ki*abb299(111)
      abb299(100)=8.0_ki*abb299(60)
      abb299(107)=abb299(136)-abb299(121)
      abb299(107)=8.0_ki*abb299(107)
      abb299(111)=16.0_ki*abb299(138)
      abb299(60)=4.0_ki*abb299(60)
      abb299(121)=abb299(15)*abb299(93)
      abb299(136)=abb299(121)*abb299(55)
      abb299(138)=-abb299(22)*abb299(136)
      abb299(144)=-spae7k7*abb299(81)
      abb299(145)=abb299(62)*abb299(86)
      abb299(144)=abb299(145)+abb299(144)
      abb299(144)=spbk7k2*abb299(144)
      abb299(145)=abb299(38)*abb299(93)
      abb299(146)=spbk7k3*spae7k7
      abb299(147)=abb299(146)*abb299(145)
      abb299(148)=abb299(146)*abb299(103)
      abb299(143)=abb299(148)-abb299(143)
      abb299(148)=-spbl5k1*abb299(143)
      abb299(149)=abb299(79)*spae7k7
      abb299(150)=-abb299(106)*abb299(149)
      abb299(88)=abb299(150)+abb299(148)+abb299(147)+abb299(144)+abb299(88)+abb&
      &299(138)
      abb299(88)=4.0_ki*abb299(88)
      abb299(138)=abb299(142)*spbl5k1
      abb299(144)=abb299(96)*abb299(62)
      abb299(69)=-abb299(144)-abb299(138)+abb299(136)-abb299(69)
      abb299(136)=8.0_ki*abb299(69)
      abb299(138)=abb299(101)*spbl5k1
      abb299(138)=abb299(138)-abb299(121)
      abb299(144)=abb299(146)*abb299(138)
      abb299(147)=spae7k7*abb299(18)*abb299(106)
      abb299(144)=abb299(147)+abb299(144)
      abb299(144)=8.0_ki*abb299(144)
      abb299(69)=4.0_ki*abb299(69)
      abb299(147)=abb299(58)-es12
      abb299(39)=-abb299(39)*abb299(147)
      abb299(148)=abb299(16)*spak2l6
      abb299(150)=abb299(148)*abb299(22)
      abb299(39)=abb299(150)+abb299(39)
      abb299(39)=abb299(34)*abb299(39)
      abb299(54)=-abb299(93)*abb299(54)
      abb299(54)=-abb299(64)+abb299(54)
      abb299(54)=abb299(54)*abb299(40)
      abb299(64)=abb299(14)*abb299(22)
      abb299(64)=abb299(64)-abb299(150)
      abb299(151)=abb299(64)*abb299(31)
      abb299(152)=abb299(40)*abb299(126)
      abb299(153)=-spbe7k3*abb299(150)
      abb299(152)=abb299(152)+abb299(153)
      abb299(152)=abb299(152)*abb299(128)
      abb299(153)=abb299(133)*abb299(52)
      abb299(154)=abb299(150)*spbe7l6
      abb299(155)=-abb299(43)*abb299(154)
      abb299(39)=abb299(155)+abb299(152)+abb299(151)+abb299(153)+abb299(54)+abb&
      &299(39)
      abb299(39)=4.0_ki*abb299(39)
      abb299(54)=abb299(14)-abb299(148)
      abb299(31)=abb299(54)*abb299(31)
      abb299(34)=abb299(34)*abb299(148)
      abb299(151)=abb299(133)*abb299(82)
      abb299(152)=abb299(148)*spbe7l6
      abb299(153)=abb299(152)*abb299(43)
      abb299(155)=abb299(128)*abb299(148)
      abb299(156)=abb299(155)*spbe7k3
      abb299(31)=abb299(34)-abb299(153)-abb299(156)+abb299(151)+abb299(31)
      abb299(34)=-8.0_ki*abb299(31)
      abb299(151)=abb299(16)*abb299(40)
      abb299(153)=8.0_ki*abb299(151)
      abb299(156)=abb299(43)*abb299(153)
      abb299(157)=abb299(14)*abb299(7)
      abb299(158)=abb299(157)*abb299(30)
      abb299(159)=abb299(116)*abb299(158)
      abb299(160)=abb299(116)*abb299(16)
      abb299(161)=-abb299(30)*abb299(160)
      abb299(159)=abb299(161)+abb299(159)
      abb299(159)=8.0_ki*abb299(159)
      abb299(31)=-4.0_ki*abb299(31)
      abb299(91)=-spak1k4*abb299(91)
      abb299(161)=abb299(126)*abb299(147)
      abb299(162)=-spbk3k2*abb299(150)
      abb299(161)=abb299(162)+abb299(161)
      abb299(161)=abb299(35)*abb299(161)
      abb299(10)=abb299(10)*abb299(90)
      abb299(74)=-spak4l5*abb299(74)*abb299(97)
      abb299(74)=abb299(10)+abb299(74)
      abb299(74)=abb299(74)*abb299(40)
      abb299(64)=-spbe7k2*abb299(64)*abb299(67)
      abb299(97)=abb299(9)*spak4l5
      abb299(52)=abb299(97)*abb299(52)
      abb299(154)=abb299(90)*abb299(154)
      abb299(52)=abb299(154)+abb299(91)+abb299(64)+abb299(52)+abb299(74)+abb299&
      &(161)
      abb299(52)=4.0_ki*abb299(52)
      abb299(64)=abb299(85)*spak1k4
      abb299(74)=abb299(54)*abb299(67)
      abb299(85)=abb299(74)*spbe7k2
      abb299(82)=abb299(97)*abb299(82)
      abb299(91)=abb299(152)*abb299(90)
      abb299(35)=abb299(35)*spbk3k2
      abb299(152)=abb299(35)*abb299(148)
      abb299(64)=-abb299(64)+abb299(91)-abb299(85)+abb299(82)-abb299(152)
      abb299(82)=-8.0_ki*abb299(64)
      abb299(85)=-abb299(90)*abb299(153)
      abb299(91)=abb299(157)*abb299(67)
      abb299(152)=abb299(67)*abb299(16)
      abb299(152)=abb299(152)-abb299(91)
      abb299(153)=8.0_ki*abb299(152)
      abb299(154)=abb299(116)*abb299(153)
      abb299(64)=-4.0_ki*abb299(64)
      abb299(51)=abb299(93)*abb299(51)
      abb299(51)=-abb299(155)+abb299(51)
      abb299(51)=spbk7k3*abb299(51)
      abb299(54)=abb299(54)*abb299(104)
      abb299(104)=-abb299(148)*abb299(106)
      abb299(51)=abb299(104)+abb299(54)+abb299(51)
      abb299(51)=8.0_ki*abb299(51)
      abb299(54)=-abb299(2)*abb299(78)
      abb299(54)=abb299(54)+abb299(9)
      abb299(54)=spak4l5*spak2l6*abb299(54)
      abb299(28)=-spak1k4*abb299(28)
      abb299(28)=abb299(28)+abb299(54)
      abb299(28)=spbk7k3*abb299(28)
      abb299(54)=-spbk7k2*abb299(74)
      abb299(74)=abb299(148)*abb299(75)
      abb299(28)=abb299(74)+abb299(54)+abb299(28)
      abb299(28)=8.0_ki*abb299(28)
      abb299(47)=spak4k7*abb299(47)
      abb299(54)=spak1e7*abb299(33)
      abb299(47)=abb299(54)+abb299(47)
      abb299(47)=abb299(32)*abb299(47)
      abb299(54)=-spak4k7*abb299(8)*abb299(40)*abb299(56)
      abb299(47)=abb299(54)+abb299(47)
      abb299(47)=4.0_ki*abb299(47)
      abb299(54)=spbl5k3*spak4k7
      abb299(56)=-abb299(61)*abb299(54)
      abb299(74)=abb299(33)*abb299(24)
      abb299(56)=abb299(74)+abb299(56)
      abb299(56)=8.0_ki*abb299(56)
      abb299(74)=16.0_ki*abb299(16)
      abb299(75)=abb299(33)*abb299(74)
      abb299(78)=4.0_ki*abb299(151)
      abb299(104)=abb299(33)*abb299(78)
      abb299(106)=-abb299(29)*abb299(78)
      abb299(155)=abb299(32)*spak4e7
      abb299(157)=8.0_ki*abb299(155)
      abb299(161)=abb299(25)*spak2k4
      abb299(162)=16.0_ki*abb299(161)
      abb299(163)=-8.0_ki*abb299(40)*abb299(72)
      abb299(164)=abb299(128)*abb299(74)
      abb299(155)=4.0_ki*abb299(155)
      abb299(161)=-8.0_ki*abb299(161)
      abb299(165)=abb299(133)*abb299(40)
      abb299(166)=abb299(151)*abb299(128)
      abb299(166)=-abb299(165)+abb299(166)
      abb299(166)=4.0_ki*abb299(166)
      abb299(167)=spak1k4*abb299(32)
      abb299(168)=-abb299(40)*abb299(97)
      abb299(167)=abb299(168)+abb299(167)
      abb299(167)=4.0_ki*abb299(167)
      abb299(118)=abb299(32)*abb299(118)
      abb299(49)=abb299(40)*abb299(49)
      abb299(165)=-abb299(55)*abb299(165)
      abb299(49)=abb299(49)+abb299(165)+abb299(118)
      abb299(49)=4.0_ki*abb299(49)
      abb299(118)=-spak2l5*abb299(123)
      abb299(123)=-es12*abb299(158)
      abb299(165)=abb299(30)*abb299(24)
      abb299(118)=abb299(118)+abb299(165)+abb299(123)
      abb299(118)=8.0_ki*abb299(118)
      abb299(123)=-abb299(40)*abb299(158)
      abb299(158)=abb299(30)*abb299(151)
      abb299(123)=abb299(158)+abb299(123)
      abb299(123)=4.0_ki*abb299(123)
      abb299(91)=abb299(40)*abb299(91)
      abb299(67)=-abb299(67)*abb299(151)
      abb299(67)=abb299(67)+abb299(91)
      abb299(67)=4.0_ki*abb299(67)
      abb299(91)=-4.0_ki*spbk7l6*spbe7k3*spae7k7*abb299(103)
      abb299(151)=-8.0_ki*spbl6k3*abb299(103)
      abb299(152)=16.0_ki*abb299(152)
      abb299(121)=-spbk3k2*abb299(121)
      abb299(87)=abb299(87)+abb299(121)
      abb299(87)=spak2k7*abb299(87)
      abb299(121)=-abb299(62)*abb299(147)
      abb299(158)=spbl5k1*abb299(113)
      abb299(42)=abb299(158)-abb299(42)+abb299(87)+abb299(121)
      abb299(42)=8.0_ki*abb299(42)
      abb299(87)=16.0_ki*abb299(62)
      abb299(121)=8.0_ki*abb299(43)
      abb299(121)=-abb299(79)*abb299(121)
      abb299(135)=16.0_ki*abb299(135)
      abb299(158)=-spbl5k1*abb299(103)
      abb299(145)=abb299(145)+abb299(158)
      abb299(145)=8.0_ki*abb299(145)
      abb299(158)=16.0_ki*abb299(138)
      abb299(81)=-8.0_ki*abb299(81)
      abb299(9)=abb299(9)*spak4l6
      abb299(165)=abb299(18)*abb299(98)
      abb299(165)=abb299(9)+abb299(165)
      abb299(165)=spbe7k3*abb299(86)*abb299(165)
      abb299(143)=-spbe7l5*abb299(143)
      abb299(84)=abb299(84)*spak1k4
      abb299(55)=abb299(84)*abb299(55)
      abb299(168)=abb299(22)*abb299(55)
      abb299(143)=abb299(143)+abb299(165)+abb299(168)
      abb299(143)=4.0_ki*abb299(143)
      abb299(95)=abb299(95)*abb299(14)
      abb299(110)=abb299(110)*abb299(18)
      abb299(110)=abb299(110)-abb299(95)
      abb299(110)=-abb299(110)*abb299(147)
      abb299(103)=spbl5k3*abb299(103)
      abb299(165)=spbk7k3*spak2k7
      abb299(9)=abb299(165)*abb299(9)
      abb299(112)=spak1k4*spbk7k1*abb299(18)*abb299(112)
      abb299(113)=spbk7l5*abb299(113)
      abb299(9)=abb299(113)+abb299(112)+abb299(103)+abb299(9)+abb299(110)
      abb299(9)=8.0_ki*abb299(9)
      abb299(103)=spak4k7*abb299(96)*abb299(18)
      abb299(37)=abb299(37)*spak4l6
      abb299(37)=abb299(103)+abb299(37)
      abb299(37)=abb299(37)*spbe7k3
      abb299(103)=abb299(142)*spbe7l5
      abb299(37)=abb299(37)+abb299(103)+abb299(55)
      abb299(55)=-8.0_ki*abb299(37)
      abb299(13)=abb299(13)*abb299(77)
      abb299(13)=abb299(65)-abb299(13)
      abb299(13)=abb299(7)*abb299(13)*abb299(5)**2
      abb299(13)=abb299(13)-abb299(18)
      abb299(13)=abb299(13)*spbe7k3*spak2k4
      abb299(65)=spbk7k2*spae7k7
      abb299(77)=8.0_ki*abb299(65)*abb299(13)
      abb299(95)=-16.0_ki*abb299(95)
      abb299(37)=-4.0_ki*abb299(37)
      abb299(14)=spbe7k2*abb299(14)*abb299(93)
      abb299(93)=abb299(101)*spbe7l5
      abb299(84)=abb299(93)+abb299(84)
      abb299(14)=abb299(14)-abb299(84)
      abb299(93)=-abb299(165)*abb299(14)
      abb299(103)=abb299(13)*abb299(147)
      abb299(110)=abb299(18)*spbe7k3
      abb299(112)=abb299(110)*spak4l6
      abb299(113)=abb299(112)*spbk7l6
      abb299(142)=spak2k7*abb299(113)
      abb299(93)=abb299(142)+abb299(93)+abb299(103)
      abb299(93)=4.0_ki*abb299(93)
      abb299(13)=abb299(96)*abb299(13)
      abb299(84)=-spbk7k3*abb299(84)
      abb299(84)=-abb299(113)+abb299(84)
      abb299(84)=spak2e7*abb299(84)
      abb299(13)=abb299(84)+abb299(13)
      abb299(13)=4.0_ki*abb299(13)
      abb299(84)=8.0_ki*abb299(18)
      abb299(96)=abb299(84)*spak2k4
      abb299(103)=-spbk7k3*abb299(96)
      abb299(96)=-spbl6k3*abb299(96)
      abb299(44)=abb299(44)*abb299(84)
      abb299(113)=abb299(25)*spak1l6
      abb299(11)=abb299(83)*abb299(11)
      abb299(19)=abb299(27)*abb299(19)
      abb299(11)=abb299(11)-abb299(19)
      abb299(19)=abb299(11)*spak1l5
      abb299(19)=abb299(113)+abb299(19)
      abb299(27)=abb299(19)*spbe7k1
      abb299(83)=abb299(25)*spal5l6
      abb299(113)=abb299(83)*spbe7l5
      abb299(27)=abb299(27)-abb299(113)
      abb299(113)=abb299(86)*abb299(27)
      abb299(36)=spak1e7*abb299(36)*spbk2k1**2
      abb299(20)=spal5e7*abb299(20)
      abb299(20)=abb299(36)+abb299(20)
      abb299(20)=abb299(41)*abb299(20)
      abb299(36)=abb299(68)*spbk7k2
      abb299(41)=-abb299(63)*abb299(36)
      abb299(142)=abb299(61)*spbe7l5
      abb299(168)=abb299(24)*spbe7k1
      abb299(142)=abb299(168)+abb299(142)
      abb299(142)=abb299(142)*spal6e7
      abb299(22)=-abb299(22)*abb299(142)
      abb299(68)=spbk7k1*abb299(68)*abb299(92)
      abb299(20)=abb299(22)+abb299(68)+abb299(41)+abb299(113)+abb299(20)
      abb299(20)=4.0_ki*abb299(20)
      abb299(22)=-spal6k7*abb299(61)
      abb299(41)=-spak2k7*abb299(83)
      abb299(22)=abb299(22)+abb299(41)
      abb299(22)=spbk7l5*abb299(22)
      abb299(41)=spak2k7*abb299(19)
      abb299(24)=-spal6k7*abb299(24)
      abb299(24)=abb299(24)+abb299(41)
      abb299(24)=spbk7k1*abb299(24)
      abb299(41)=abb299(73)+abb299(46)
      abb299(68)=-es12*abb299(41)
      abb299(58)=abb299(73)*abb299(58)
      abb299(66)=-spak2l5*abb299(66)
      abb299(22)=abb299(22)+abb299(66)-abb299(38)+abb299(68)+abb299(58)+abb299(&
      &24)
      abb299(22)=8.0_ki*abb299(22)
      abb299(24)=-spak2e7*abb299(27)
      abb299(24)=abb299(142)+abb299(24)
      abb299(27)=8.0_ki*abb299(24)
      abb299(38)=-spak2e7*abb299(116)*abb299(127)
      abb299(58)=-spbk7k1*abb299(132)
      abb299(38)=abb299(38)+abb299(58)
      abb299(38)=8.0_ki*abb299(38)
      abb299(41)=-16.0_ki*abb299(41)
      abb299(24)=4.0_ki*abb299(24)
      abb299(58)=abb299(11)*abb299(86)
      abb299(66)=spbk7k1*abb299(149)
      abb299(58)=abb299(58)+abb299(66)
      abb299(58)=4.0_ki*abb299(58)
      abb299(66)=8.0_ki*abb299(11)
      abb299(68)=-spak2e7*abb299(66)
      abb299(86)=-abb299(84)*spbk7k1*spae7k7
      abb299(113)=4.0_ki*spak2e7
      abb299(132)=-abb299(11)*abb299(113)
      abb299(46)=-abb299(40)*abb299(46)
      abb299(142)=spbe7k1*abb299(150)
      abb299(46)=abb299(46)+abb299(142)
      abb299(46)=4.0_ki*abb299(46)
      abb299(142)=8.0_ki*abb299(148)
      abb299(168)=-spbe7k1*abb299(142)
      abb299(148)=4.0_ki*abb299(148)
      abb299(169)=-spbe7k1*abb299(148)
      abb299(150)=-spbe7k2*abb299(150)
      abb299(170)=abb299(79)*spbk7e7
      abb299(171)=-spal5k7*abb299(170)
      abb299(150)=abb299(150)+abb299(171)
      abb299(150)=4.0_ki*abb299(150)
      abb299(171)=spbe7k2*abb299(142)
      abb299(172)=8.0_ki*abb299(16)
      abb299(173)=-abb299(116)*abb299(172)
      abb299(148)=spbe7k2*abb299(148)
      abb299(174)=spbk7k1*abb299(142)
      abb299(175)=4.0_ki*spal5e7
      abb299(170)=abb299(175)*abb299(170)
      abb299(142)=-spbk7k2*abb299(142)
      abb299(176)=abb299(32)*abb299(175)
      abb299(61)=-8.0_ki*abb299(61)
      abb299(127)=abb299(40)*abb299(127)*abb299(113)
      abb299(32)=-4.0_ki*spak1e7*abb299(32)
      abb299(177)=-es12*abb299(172)
      abb299(66)=spak2k7*abb299(66)
      abb299(147)=-abb299(18)*abb299(147)
      abb299(147)=-abb299(79)+abb299(147)
      abb299(147)=8.0_ki*abb299(147)
      abb299(40)=4.0_ki*abb299(18)*abb299(40)
      abb299(178)=4.0_ki*abb299(65)
      abb299(179)=abb299(178)*abb299(18)
      abb299(18)=-spbk7e7*abb299(18)*abb299(113)
      abb299(113)=spbl6k3*spak2l6
      abb299(180)=spak1k2*spbk3k1
      abb299(99)=abb299(180)+abb299(113)+abb299(165)-abb299(99)
      abb299(99)=abb299(99)*abb299(84)
      abb299(113)=abb299(80)*abb299(65)
      abb299(165)=-spak2l5*abb299(113)
      abb299(149)=-spal5l6*spbk7l6*abb299(149)
      abb299(149)=abb299(149)+abb299(165)
      abb299(149)=spbe7k3*abb299(149)
      abb299(146)=abb299(146)*spbe7k2
      abb299(165)=abb299(63)*abb299(146)
      abb299(105)=-abb299(105)*abb299(92)
      abb299(105)=abb299(105)+abb299(165)+abb299(149)
      abb299(105)=4.0_ki*abb299(105)
      abb299(80)=abb299(80)*spak2l5
      abb299(63)=abb299(80)+abb299(63)
      abb299(63)=spbk3k2*abb299(63)
      abb299(80)=-spal5k7*spbk7k3
      abb299(149)=-spbl6k3*spal5l6
      abb299(80)=abb299(149)+abb299(80)
      abb299(80)=abb299(79)*abb299(80)
      abb299(92)=-spbk3k1*abb299(92)
      abb299(63)=abb299(92)+abb299(80)+abb299(63)
      abb299(63)=8.0_ki*abb299(63)
      abb299(48)=-abb299(25)*abb299(48)
      abb299(48)=abb299(48)+abb299(94)
      abb299(48)=spal6k7*abb299(48)
      abb299(80)=abb299(117)*spak1e7
      abb299(65)=abb299(131)*abb299(65)
      abb299(80)=abb299(80)+abb299(65)
      abb299(92)=-abb299(33)*abb299(80)
      abb299(53)=abb299(36)*abb299(53)
      abb299(48)=abb299(53)+abb299(92)+abb299(48)
      abb299(48)=4.0_ki*abb299(48)
      abb299(53)=-abb299(33)*abb299(19)
      abb299(73)=abb299(73)+abb299(15)
      abb299(92)=abb299(29)*abb299(73)
      abb299(54)=-abb299(83)*abb299(54)
      abb299(53)=abb299(54)+abb299(92)+abb299(53)
      abb299(53)=8.0_ki*abb299(53)
      abb299(54)=-abb299(62)*abb299(178)
      abb299(92)=4.0_ki*abb299(16)
      abb299(94)=abb299(92)*abb299(116)
      abb299(131)=-abb299(33)*abb299(94)
      abb299(35)=spal6k7*abb299(92)*abb299(35)
      abb299(33)=-abb299(33)*abb299(172)
      abb299(92)=abb299(172)*abb299(29)
      abb299(62)=-8.0_ki*abb299(62)
      abb299(110)=-spak4k7*abb299(110)*abb299(178)
      abb299(29)=abb299(29)*abb299(84)
      abb299(89)=-abb299(117)*abb299(89)
      abb299(129)=abb299(36)*abb299(129)
      abb299(50)=abb299(116)*abb299(50)
      abb299(65)=-abb299(43)*abb299(65)
      abb299(50)=abb299(65)+abb299(129)+abb299(50)+abb299(89)
      abb299(50)=4.0_ki*abb299(50)
      abb299(65)=-abb299(43)*abb299(19)
      abb299(73)=abb299(90)*abb299(73)
      abb299(71)=-abb299(83)*abb299(71)
      abb299(65)=abb299(71)+abb299(73)+abb299(65)
      abb299(65)=8.0_ki*abb299(65)
      abb299(71)=-abb299(43)*abb299(179)
      abb299(73)=-abb299(43)*abb299(94)
      abb299(89)=abb299(90)*abb299(94)
      abb299(129)=-abb299(43)*abb299(172)
      abb299(149)=abb299(90)*abb299(172)
      abb299(43)=-abb299(43)*abb299(84)
      abb299(112)=-abb299(178)*abb299(112)
      abb299(165)=abb299(90)*abb299(84)
      abb299(172)=-abb299(117)*abb299(175)
      abb299(83)=-8.0_ki*abb299(83)
      abb299(175)=abb299(117)*spak4e7
      abb299(180)=abb299(36)*abb299(101)
      abb299(175)=abb299(175)+abb299(180)
      abb299(180)=8.0_ki*abb299(175)
      abb299(181)=abb299(25)*spak4l6
      abb299(182)=abb299(11)*spak4l5
      abb299(181)=abb299(181)+abb299(182)
      abb299(182)=16.0_ki*abb299(181)
      abb299(36)=abb299(36)*abb299(120)
      abb299(72)=abb299(116)*abb299(72)
      abb299(36)=abb299(36)+abb299(72)
      abb299(36)=8.0_ki*abb299(36)
      abb299(15)=spak4l5*abb299(15)
      abb299(8)=spak4l6*abb299(8)
      abb299(8)=abb299(8)+abb299(15)
      abb299(8)=16.0_ki*abb299(6)*abb299(8)
      abb299(15)=-4.0_ki*abb299(175)
      abb299(72)=-8.0_ki*abb299(181)
      abb299(120)=-abb299(138)*abb299(178)
      abb299(160)=-abb299(128)*abb299(160)
      abb299(134)=abb299(134)+abb299(160)
      abb299(134)=4.0_ki*abb299(134)
      abb299(117)=-spak1k4*abb299(117)
      abb299(116)=abb299(116)*abb299(97)
      abb299(116)=abb299(116)+abb299(117)
      abb299(116)=4.0_ki*abb299(116)
      abb299(16)=-abb299(16)*abb299(128)
      abb299(16)=abb299(133)+abb299(16)
      abb299(16)=8.0_ki*abb299(16)
      abb299(25)=abb299(25)*spak1k4
      abb299(25)=abb299(25)-abb299(97)
      abb299(25)=8.0_ki*abb299(25)
      abb299(97)=-8.0_ki*abb299(138)
      abb299(14)=abb299(14)*abb299(178)
      abb299(11)=-spak1k4*abb299(11)
      abb299(101)=spbl5k2*abb299(101)
      abb299(11)=abb299(11)+abb299(101)
      abb299(11)=8.0_ki*abb299(11)
      abb299(101)=spbe7k3*spak4l5*abb299(113)
      abb299(113)=-abb299(124)*abb299(146)
      abb299(101)=abb299(101)+abb299(113)
      abb299(101)=4.0_ki*abb299(101)
      abb299(76)=-2.0_ki*abb299(76)-abb299(79)
      abb299(76)=spak4l5*abb299(76)
      abb299(76)=-abb299(124)+abb299(76)
      abb299(76)=spbk3k2*abb299(76)
      abb299(79)=-abb299(126)*abb299(98)
      abb299(45)=-spak1k4*abb299(45)
      abb299(10)=abb299(45)+abb299(79)+abb299(10)+abb299(76)
      abb299(10)=8.0_ki*abb299(10)
      abb299(45)=-abb299(90)*abb299(74)
      abb299(76)=4.0_ki*abb299(80)
      abb299(19)=8.0_ki*abb299(19)
      abb299(30)=abb299(30)*abb299(84)
      R2d299=0.0_ki
      rat2 = rat2 + R2d299
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='299' value='", &
          & R2d299, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd299h0
