module     p9_csbar_epnebbbarg_abbrevd74h2
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(147), public :: abb74
   complex(ki), public :: R2d74
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
      abb74(1)=1.0_ki/(-mB**2+es67)
      abb74(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb74(3)=NC**(-1)
      abb74(4)=spak2l6**(-1)
      abb74(5)=spbl6k2**(-1)
      abb74(6)=spbl5k2**(-1)
      abb74(7)=spak2l5**(-1)
      abb74(8)=sqrt(mB**2)
      abb74(9)=abb74(3)*mB
      abb74(10)=abb74(8)*abb74(3)
      abb74(10)=-abb74(9)+abb74(10)
      abb74(11)=2.0_ki*abb74(8)
      abb74(10)=abb74(11)*abb74(10)
      abb74(12)=mB-abb74(8)
      abb74(13)=NC*abb74(8)
      abb74(12)=abb74(13)*abb74(12)
      abb74(10)=abb74(12)+abb74(10)
      abb74(12)=TR*gW
      abb74(12)=abb74(12)**2*i_*CVSC*abb74(2)*abb74(1)
      abb74(14)=abb74(12)*c3
      abb74(15)=abb74(14)*spbe7l6
      abb74(16)=abb74(15)*spak2e7
      abb74(17)=spbk3k1**2
      abb74(10)=abb74(10)*abb74(16)*abb74(17)
      abb74(18)=abb74(3)**2
      abb74(19)=abb74(12)*spak2e7
      abb74(20)=abb74(18)*abb74(19)
      abb74(21)=mB*abb74(20)
      abb74(22)=abb74(8)*abb74(20)
      abb74(23)=abb74(21)-abb74(22)
      abb74(24)=abb74(17)*spbe7l6
      abb74(25)=c2*abb74(8)
      abb74(23)=abb74(25)*abb74(24)*abb74(23)
      abb74(10)=abb74(23)+abb74(10)
      abb74(10)=spak3k4*abb74(10)
      abb74(23)=abb74(8)*mB
      abb74(26)=abb74(18)*c2
      abb74(27)=abb74(23)*abb74(26)
      abb74(28)=abb74(19)*abb74(4)
      abb74(29)=abb74(28)*abb74(27)
      abb74(30)=abb74(4)*spak2e7
      abb74(31)=abb74(23)*abb74(30)
      abb74(32)=abb74(14)*NC
      abb74(33)=abb74(31)*abb74(32)
      abb74(34)=2.0_ki*abb74(14)
      abb74(35)=abb74(34)*abb74(30)
      abb74(36)=abb74(9)*abb74(8)
      abb74(37)=abb74(36)*abb74(35)
      abb74(29)=-abb74(37)+abb74(29)+abb74(33)
      abb74(33)=abb74(29)*abb74(17)
      abb74(38)=spbk7e7*spak2k7
      abb74(39)=abb74(38)*spak3k4
      abb74(40)=-abb74(33)*abb74(39)
      abb74(41)=mB**2
      abb74(42)=abb74(30)*abb74(41)
      abb74(43)=abb74(12)*abb74(6)
      abb74(44)=abb74(26)*abb74(43)
      abb74(45)=abb74(44)*abb74(42)
      abb74(46)=2.0_ki*abb74(3)
      abb74(47)=abb74(14)*abb74(6)
      abb74(48)=abb74(46)*abb74(47)
      abb74(49)=abb74(48)*abb74(42)
      abb74(50)=abb74(47)*NC
      abb74(51)=abb74(50)*abb74(42)
      abb74(52)=-abb74(45)+abb74(49)-abb74(51)
      abb74(52)=spbk3k1*abb74(52)
      abb74(53)=abb74(52)*abb74(38)
      abb74(54)=abb74(44)+abb74(50)
      abb74(55)=abb74(54)-abb74(48)
      abb74(56)=abb74(55)*abb74(41)
      abb74(57)=spbk3k1*spbe7l6
      abb74(58)=abb74(57)*spak2e7
      abb74(59)=abb74(58)*abb74(56)
      abb74(60)=abb74(53)+abb74(59)
      abb74(61)=spbk2k1*spak1k4
      abb74(60)=abb74(61)*abb74(60)
      abb74(62)=abb74(15)*spbk3k1
      abb74(63)=abb74(62)*abb74(46)
      abb74(64)=abb74(62)*NC
      abb74(65)=abb74(63)-abb74(64)
      abb74(66)=-abb74(42)*abb74(65)
      abb74(67)=abb74(26)*abb74(19)
      abb74(68)=abb74(41)*abb74(4)
      abb74(69)=abb74(67)*abb74(68)
      abb74(70)=abb74(69)*abb74(57)
      abb74(66)=abb74(66)+abb74(70)
      abb74(70)=spbk3k2*spak3k4
      abb74(71)=abb74(70)+abb74(61)
      abb74(72)=abb74(71)*abb74(5)
      abb74(73)=abb74(66)*abb74(72)
      abb74(74)=-spak2l5*abb74(73)
      abb74(60)=abb74(74)+abb74(60)
      abb74(60)=spbl5k1*abb74(60)
      abb74(74)=abb74(38)*spbk2k1
      abb74(75)=-spak3k4*abb74(52)*abb74(74)
      abb74(76)=spak3k4*spbk2k1
      abb74(59)=-abb74(59)*abb74(76)
      abb74(59)=abb74(59)+abb74(75)
      abb74(59)=spbl5k3*abb74(59)
      abb74(10)=abb74(59)+abb74(60)+abb74(10)+abb74(40)
      abb74(10)=spak1l5*abb74(10)
      abb74(40)=abb74(26)*spbk3k1
      abb74(28)=abb74(28)*abb74(40)
      abb74(59)=abb74(6)**2
      abb74(60)=mB**4
      abb74(75)=abb74(59)*abb74(60)
      abb74(77)=abb74(28)*abb74(75)
      abb74(35)=abb74(35)*abb74(75)*abb74(3)
      abb74(78)=spbk3k1*abb74(35)
      abb74(79)=abb74(75)*abb74(30)
      abb74(80)=spbk3k1*abb74(32)
      abb74(81)=abb74(79)*abb74(80)
      abb74(77)=-abb74(78)+abb74(77)+abb74(81)
      abb74(77)=abb74(38)*abb74(77)
      abb74(78)=abb74(75)*abb74(20)
      abb74(81)=mB**3
      abb74(82)=abb74(81)*abb74(59)
      abb74(83)=abb74(22)*abb74(82)
      abb74(78)=abb74(78)-abb74(83)
      abb74(78)=abb74(78)*c2
      abb74(83)=-abb74(57)*abb74(78)
      abb74(82)=abb74(82)*abb74(8)
      abb74(84)=abb74(62)*spak2e7
      abb74(85)=abb74(82)*abb74(84)
      abb74(60)=abb74(60)*spak2e7
      abb74(59)=abb74(60)*abb74(59)
      abb74(62)=abb74(59)*abb74(62)
      abb74(62)=abb74(85)-abb74(62)
      abb74(85)=abb74(46)-NC
      abb74(62)=-abb74(62)*abb74(85)
      abb74(62)=abb74(77)+abb74(83)+abb74(62)
      abb74(62)=abb74(7)*abb74(71)*abb74(62)
      abb74(77)=abb74(81)*abb74(30)
      abb74(81)=abb74(77)*abb74(8)
      abb74(83)=-abb74(54)*abb74(57)*abb74(81)
      abb74(86)=abb74(47)*abb74(8)
      abb74(46)=abb74(46)*abb74(77)*abb74(86)
      abb74(77)=abb74(46)*abb74(57)
      abb74(77)=abb74(77)+abb74(83)
      abb74(77)=abb74(71)*abb74(77)
      abb74(83)=abb74(77)*abb74(5)
      abb74(83)=-abb74(62)+abb74(83)
      abb74(83)=es12*abb74(83)
      abb74(87)=abb74(8)**2
      abb74(88)=-abb74(87)*abb74(52)
      abb74(89)=es12*spak3k4
      abb74(90)=abb74(88)*abb74(89)
      abb74(31)=abb74(80)*abb74(31)
      abb74(37)=abb74(37)*spbk3k1
      abb74(28)=abb74(28)*abb74(23)
      abb74(28)=abb74(28)+abb74(31)-abb74(37)
      abb74(31)=spak1l5*spak3k4
      abb74(37)=spbl5k1*spak2l5
      abb74(91)=abb74(31)*abb74(37)
      abb74(92)=abb74(28)*abb74(91)
      abb74(90)=abb74(90)+abb74(92)
      abb74(90)=spbe7k3*abb74(90)
      abb74(92)=es12*spak1k4
      abb74(93)=-abb74(88)*abb74(92)
      abb74(94)=abb74(37)*spak1l5
      abb74(95)=-abb74(94)*abb74(28)*spak1k4
      abb74(93)=abb74(93)+abb74(95)
      abb74(93)=spbe7k1*abb74(93)
      abb74(95)=abb74(12)*spbe7l6
      abb74(40)=abb74(40)*abb74(95)
      abb74(40)=abb74(40)-abb74(65)
      abb74(65)=abb74(91)*abb74(40)
      abb74(91)=abb74(23)*abb74(57)
      abb74(96)=-abb74(91)*abb74(54)
      abb74(86)=abb74(86)*abb74(9)
      abb74(97)=2.0_ki*abb74(86)
      abb74(98)=abb74(97)*abb74(57)
      abb74(96)=abb74(98)+abb74(96)
      abb74(98)=abb74(89)*abb74(96)
      abb74(65)=abb74(65)-abb74(98)
      abb74(99)=spbl6k3*spal6e7
      abb74(100)=spbk7k3*spae7k7
      abb74(99)=abb74(99)-abb74(100)
      abb74(65)=abb74(65)*abb74(99)
      abb74(100)=abb74(92)*abb74(96)
      abb74(101)=spal6e7*abb74(100)
      abb74(102)=abb74(40)*spak1k4
      abb74(103)=abb74(102)*spal6e7
      abb74(104)=-abb74(94)*abb74(103)
      abb74(101)=abb74(101)+abb74(104)
      abb74(101)=spbl6k1*abb74(101)
      abb74(104)=-spae7k7*abb74(100)
      abb74(105)=abb74(102)*spae7k7
      abb74(106)=abb74(94)*abb74(105)
      abb74(104)=abb74(104)+abb74(106)
      abb74(104)=spbk7k1*abb74(104)
      abb74(106)=abb74(96)*spak1e7
      abb74(107)=abb74(61)*abb74(37)
      abb74(108)=spbl5k3*spak2l5
      abb74(109)=-abb74(108)*abb74(76)
      abb74(107)=abb74(107)+abb74(109)
      abb74(107)=abb74(107)*abb74(106)
      abb74(100)=spbl5k1*abb74(100)
      abb74(98)=-spbl5k3*abb74(98)
      abb74(98)=abb74(100)+abb74(98)
      abb74(98)=spal5e7*abb74(98)
      abb74(10)=abb74(98)+abb74(107)+abb74(104)+abb74(101)+abb74(93)+abb74(90)+&
      &abb74(10)+abb74(65)+abb74(83)
      abb74(10)=4.0_ki*abb74(10)
      abb74(18)=abb74(18)*abb74(43)
      abb74(43)=abb74(18)*abb74(41)
      abb74(65)=abb74(43)*spbk3k1
      abb74(83)=abb74(23)*spbk3k1
      abb74(90)=abb74(83)*abb74(18)
      abb74(65)=abb74(65)-abb74(90)
      abb74(65)=abb74(65)*c2
      abb74(90)=abb74(47)*abb74(41)
      abb74(93)=abb74(90)*spbk3k1
      abb74(98)=abb74(83)*abb74(47)
      abb74(93)=abb74(93)-abb74(98)
      abb74(93)=abb74(93)*NC
      abb74(98)=abb74(90)*abb74(3)
      abb74(86)=abb74(98)-abb74(86)
      abb74(98)=-spbk3k1*abb74(86)
      abb74(65)=abb74(65)+abb74(93)+2.0_ki*abb74(98)
      abb74(93)=spbl6k3*abb74(89)
      abb74(98)=-spbl6k1*abb74(92)
      abb74(93)=abb74(93)+abb74(98)
      abb74(93)=abb74(65)*abb74(93)
      abb74(98)=spbk7k3*spak2k7
      abb74(100)=abb74(89)*abb74(98)
      abb74(101)=spbk7k1*spak2k7
      abb74(104)=-abb74(92)*abb74(101)
      abb74(100)=abb74(104)+abb74(100)
      abb74(44)=abb74(44)+abb74(50)-abb74(48)
      abb74(44)=abb74(68)*abb74(44)
      abb74(48)=spbk3k1*abb74(44)
      abb74(50)=abb74(48)*abb74(100)
      abb74(12)=abb74(26)*abb74(12)
      abb74(34)=abb74(34)*abb74(3)
      abb74(12)=abb74(12)-abb74(34)
      abb74(34)=abb74(32)+abb74(12)
      abb74(100)=abb74(34)*abb74(17)
      abb74(104)=spbk7l6*spak2k7
      abb74(107)=-abb74(100)*abb74(31)*abb74(104)
      abb74(50)=abb74(107)+abb74(93)+abb74(50)
      abb74(50)=8.0_ki*abb74(50)
      abb74(93)=abb74(89)*spbe7k3
      abb74(107)=abb74(92)*spbe7k1
      abb74(93)=abb74(93)-abb74(107)
      abb74(107)=-abb74(52)*abb74(93)
      abb74(24)=abb74(24)*abb74(67)
      abb74(109)=-abb74(15)*abb74(85)
      abb74(110)=abb74(109)*spak2e7
      abb74(111)=abb74(17)*abb74(110)
      abb74(24)=abb74(24)+abb74(111)
      abb74(24)=abb74(24)*abb74(31)
      abb74(24)=abb74(24)-abb74(107)
      abb74(24)=8.0_ki*abb74(24)
      abb74(107)=spbe7k3*spak3k4
      abb74(111)=spbe7k1*spak1k4
      abb74(112)=abb74(107)-abb74(111)
      abb74(113)=-abb74(28)*abb74(112)
      abb74(114)=spbl6k1*spal6e7
      abb74(115)=spbk7k1*spae7k7
      abb74(114)=abb74(114)-abb74(115)
      abb74(115)=abb74(102)*abb74(114)
      abb74(116)=-spak3k4*abb74(99)
      abb74(117)=abb74(40)*abb74(116)
      abb74(73)=abb74(73)+abb74(117)+abb74(115)+abb74(113)
      abb74(113)=8.0_ki*spak2l5
      abb74(73)=abb74(73)*abb74(113)
      abb74(115)=-abb74(42)*abb74(109)
      abb74(69)=abb74(69)*spbe7l6
      abb74(69)=abb74(115)-abb74(69)
      abb74(115)=-abb74(31)*abb74(17)*abb74(69)
      abb74(77)=-abb74(77)+abb74(115)
      abb74(77)=abb74(5)*abb74(77)
      abb74(115)=abb74(114)*spak1k4
      abb74(115)=abb74(115)+abb74(116)
      abb74(116)=-abb74(96)*abb74(115)
      abb74(117)=-spak3k4*abb74(88)
      abb74(55)=abb74(55)*abb74(60)*abb74(4)**2
      abb74(60)=spbk3k1*abb74(55)
      abb74(118)=abb74(60)*abb74(5)
      abb74(119)=-abb74(89)*abb74(118)
      abb74(117)=abb74(117)+abb74(119)
      abb74(117)=spbe7k3*abb74(117)
      abb74(88)=spak1k4*abb74(88)
      abb74(119)=abb74(92)*abb74(118)
      abb74(88)=abb74(88)+abb74(119)
      abb74(88)=spbe7k1*abb74(88)
      abb74(62)=abb74(62)+abb74(88)+abb74(117)+abb74(116)+abb74(77)
      abb74(62)=8.0_ki*abb74(62)
      abb74(77)=-spbl6k3*spak3k4
      abb74(88)=spbl6k1*spak1k4
      abb74(77)=abb74(77)+abb74(88)
      abb74(65)=abb74(65)*abb74(77)
      abb74(77)=-spak3k4*abb74(98)
      abb74(88)=spak1k4*abb74(101)
      abb74(77)=abb74(88)+abb74(77)
      abb74(77)=abb74(48)*abb74(77)
      abb74(65)=abb74(65)+abb74(77)
      abb74(65)=16.0_ki*abb74(65)
      abb74(77)=abb74(112)*abb74(52)
      abb74(77)=16.0_ki*abb74(77)
      abb74(88)=16.0_ki*abb74(118)*abb74(112)
      abb74(45)=-abb74(49)+abb74(45)+abb74(51)
      abb74(49)=-abb74(87)*abb74(45)
      abb74(51)=spak2k4*spbk2k1
      abb74(116)=abb74(49)*abb74(51)
      abb74(117)=abb74(37)*spak4l5
      abb74(118)=abb74(29)*abb74(117)
      abb74(116)=abb74(116)+abb74(118)
      abb74(116)=abb74(116)*spbe7k3
      abb74(78)=-spbe7l6*abb74(78)
      abb74(82)=abb74(82)*abb74(16)
      abb74(15)=abb74(59)*abb74(15)
      abb74(15)=abb74(82)-abb74(15)
      abb74(15)=-abb74(15)*abb74(85)
      abb74(15)=abb74(78)+abb74(15)
      abb74(59)=abb74(15)*spbk2k1
      abb74(75)=abb74(4)*abb74(75)*abb74(67)
      abb74(32)=abb74(79)*abb74(32)
      abb74(32)=abb74(75)+abb74(32)-abb74(35)
      abb74(35)=abb74(32)*abb74(74)
      abb74(35)=abb74(59)+abb74(35)
      abb74(35)=abb74(35)*abb74(7)
      abb74(59)=spak2k4*spbk3k2*abb74(35)
      abb74(74)=abb74(74)*abb74(45)
      abb74(75)=spbe7l6*spak2e7
      abb74(56)=spbk2k1*abb74(75)*abb74(56)
      abb74(56)=abb74(74)-abb74(56)
      abb74(56)=abb74(56)*spak4l5
      abb74(74)=abb74(23)*spbe7l6
      abb74(78)=abb74(74)*abb74(54)
      abb74(79)=abb74(97)*spbe7l6
      abb74(78)=abb74(78)-abb74(79)
      abb74(79)=abb74(78)*abb74(51)
      abb74(82)=abb74(79)*spal5e7
      abb74(56)=abb74(56)-abb74(82)
      abb74(56)=abb74(56)*spbl5k3
      abb74(82)=abb74(79)*spae7k7
      abb74(26)=abb74(26)*abb74(95)
      abb74(26)=abb74(109)+abb74(26)
      abb74(85)=abb74(26)*spae7k7
      abb74(95)=abb74(117)*abb74(85)
      abb74(82)=abb74(82)-abb74(95)
      abb74(82)=abb74(82)*spbk7k3
      abb74(79)=abb74(79)*spal6e7
      abb74(95)=abb74(26)*spal6e7
      abb74(109)=abb74(117)*abb74(95)
      abb74(79)=abb74(79)-abb74(109)
      abb74(79)=abb74(79)*spbl6k3
      abb74(81)=abb74(54)*abb74(81)
      abb74(46)=abb74(81)-abb74(46)
      abb74(46)=spbe7l6*abb74(46)
      abb74(81)=abb74(46)*abb74(5)
      abb74(109)=abb74(51)*spbk3k2
      abb74(117)=abb74(81)*abb74(109)
      abb74(118)=abb74(78)*spbk2k1
      abb74(119)=abb74(118)*spak4e7
      abb74(120)=abb74(119)*abb74(108)
      abb74(56)=-abb74(56)-abb74(82)-abb74(59)-abb74(120)-abb74(117)+abb74(79)-&
      &abb74(116)
      abb74(59)=abb74(28)*abb74(38)
      abb74(69)=abb74(69)*abb74(5)
      abb74(79)=spbk3k2*abb74(69)*abb74(37)
      abb74(82)=abb74(21)*abb74(57)
      abb74(116)=abb74(22)*abb74(57)
      abb74(117)=abb74(82)+abb74(116)
      abb74(117)=abb74(117)*abb74(25)
      abb74(120)=abb74(84)*abb74(9)
      abb74(121)=abb74(84)*abb74(8)
      abb74(122)=abb74(121)*abb74(3)
      abb74(123)=-abb74(120)-abb74(122)
      abb74(123)=abb74(123)*abb74(11)
      abb74(84)=abb74(84)*mB
      abb74(124)=abb74(84)+abb74(121)
      abb74(124)=abb74(124)*abb74(13)
      abb74(117)=-abb74(79)-abb74(59)+abb74(124)+abb74(123)+abb74(117)
      abb74(117)=spak4l5*abb74(117)
      abb74(117)=abb74(117)+abb74(56)
      abb74(117)=8.0_ki*abb74(117)
      abb74(123)=abb74(23)*abb74(47)
      abb74(123)=abb74(123)-abb74(90)
      abb74(123)=abb74(123)*NC
      abb74(124)=abb74(23)*abb74(18)
      abb74(124)=abb74(124)-abb74(43)
      abb74(124)=abb74(124)*c2
      abb74(123)=abb74(124)+abb74(123)+2.0_ki*abb74(86)
      abb74(124)=abb74(123)*spbl6k3
      abb74(125)=abb74(51)*abb74(124)
      abb74(126)=abb74(44)*abb74(51)
      abb74(127)=abb74(98)*abb74(126)
      abb74(12)=-spbk3k1*abb74(12)
      abb74(12)=-abb74(80)+abb74(12)
      abb74(80)=abb74(12)*spbk7l6
      abb74(128)=abb74(80)*spak2k7
      abb74(129)=abb74(128)*spak4l5
      abb74(125)=abb74(129)+abb74(125)-abb74(127)
      abb74(127)=-16.0_ki*abb74(125)
      abb74(51)=abb74(51)*spbe7k3
      abb74(129)=abb74(51)*abb74(45)
      abb74(130)=abb74(67)*abb74(57)
      abb74(63)=abb74(63)*spak2e7
      abb74(64)=abb74(64)*spak2e7
      abb74(63)=abb74(64)+abb74(130)-abb74(63)
      abb74(130)=abb74(63)*spak4l5
      abb74(129)=abb74(129)+abb74(130)
      abb74(130)=16.0_ki*abb74(129)
      abb74(131)=-abb74(55)*abb74(5)
      abb74(132)=abb74(51)*abb74(131)
      abb74(133)=abb74(66)*abb74(5)
      abb74(134)=abb74(133)*spak4l5
      abb74(132)=abb74(132)-abb74(134)
      abb74(134)=16.0_ki*abb74(132)
      abb74(82)=abb74(82)-abb74(116)
      abb74(25)=abb74(82)*abb74(25)
      abb74(82)=abb74(84)-abb74(121)
      abb74(13)=abb74(82)*abb74(13)
      abb74(82)=abb74(120)-abb74(122)
      abb74(11)=abb74(82)*abb74(11)
      abb74(11)=abb74(59)-abb74(13)+abb74(11)-abb74(25)
      abb74(13)=abb74(79)-abb74(11)
      abb74(13)=spak4l5*abb74(13)
      abb74(13)=abb74(13)-abb74(56)
      abb74(13)=4.0_ki*abb74(13)
      abb74(25)=8.0_ki*abb74(125)
      abb74(56)=8.0_ki*abb74(129)
      abb74(79)=-8.0_ki*abb74(132)
      abb74(26)=abb74(26)*spak2l6
      abb74(17)=-abb74(17)*abb74(26)
      abb74(82)=abb74(100)*abb74(38)
      abb74(17)=abb74(17)+abb74(82)
      abb74(17)=abb74(31)*abb74(17)
      abb74(82)=-abb74(83)*abb74(54)
      abb74(83)=abb74(97)*spbk3k1
      abb74(82)=abb74(83)+abb74(82)
      abb74(83)=-abb74(82)*abb74(93)
      abb74(17)=abb74(83)+abb74(17)
      abb74(17)=4.0_ki*abb74(17)
      abb74(82)=8.0_ki*abb74(82)*abb74(112)
      abb74(83)=abb74(40)*spak2l6
      abb74(84)=abb74(12)*abb74(38)
      abb74(84)=abb74(83)+abb74(84)
      abb74(84)=spak4l5*abb74(84)
      abb74(54)=abb74(23)*abb74(54)
      abb74(54)=abb74(54)-abb74(97)
      abb74(51)=abb74(54)*abb74(51)
      abb74(51)=abb74(51)+abb74(84)
      abb74(84)=8.0_ki*abb74(51)
      abb74(51)=-4.0_ki*abb74(51)
      abb74(89)=abb74(89)*abb74(99)
      abb74(92)=-abb74(92)*abb74(114)
      abb74(89)=abb74(92)+abb74(89)
      abb74(89)=abb74(48)*abb74(89)
      abb74(33)=abb74(33)*abb74(31)
      abb74(60)=abb74(60)*abb74(72)
      abb74(72)=-es12*abb74(60)
      abb74(33)=abb74(72)+abb74(33)+abb74(89)
      abb74(33)=4.0_ki*abb74(33)
      abb74(48)=abb74(48)*abb74(115)
      abb74(48)=abb74(60)+abb74(48)
      abb74(48)=8.0_ki*abb74(48)
      abb74(60)=abb74(109)*abb74(131)
      abb74(72)=abb74(99)*abb74(126)
      abb74(60)=abb74(60)+abb74(72)
      abb74(72)=abb74(28)*spak4l5
      abb74(89)=abb74(72)+abb74(60)
      abb74(89)=8.0_ki*abb74(89)
      abb74(60)=abb74(72)-abb74(60)
      abb74(60)=4.0_ki*abb74(60)
      abb74(72)=4.0_ki*spak3k4
      abb74(92)=abb74(11)*abb74(72)
      abb74(93)=8.0_ki*spak3k4
      abb74(97)=-abb74(128)*abb74(93)
      abb74(100)=abb74(93)*abb74(63)
      abb74(93)=-abb74(133)*abb74(93)
      abb74(83)=spak3k4*abb74(83)
      abb74(109)=abb74(12)*abb74(39)
      abb74(83)=abb74(109)+abb74(83)
      abb74(83)=4.0_ki*abb74(83)
      abb74(109)=abb74(72)*abb74(28)
      abb74(115)=abb74(58)*abb74(90)
      abb74(91)=abb74(91)*spak2e7
      abb74(116)=abb74(91)*abb74(47)
      abb74(115)=abb74(115)-abb74(116)
      abb74(115)=abb74(115)*NC
      abb74(91)=abb74(91)*abb74(18)
      abb74(116)=abb74(58)*abb74(43)
      abb74(91)=abb74(116)-abb74(91)
      abb74(91)=abb74(91)*c2
      abb74(58)=abb74(86)*abb74(58)
      abb74(58)=-2.0_ki*abb74(58)+abb74(115)+abb74(91)
      abb74(53)=-abb74(58)-abb74(53)
      abb74(53)=spbl5k1*spak1k4*abb74(53)
      abb74(58)=spak3k4*abb74(58)
      abb74(91)=abb74(52)*abb74(39)
      abb74(58)=abb74(58)+abb74(91)
      abb74(58)=spbl5k3*abb74(58)
      abb74(53)=abb74(53)+abb74(58)
      abb74(53)=4.0_ki*abb74(53)
      abb74(58)=-abb74(29)*abb74(112)
      abb74(71)=-abb74(71)*abb74(69)
      abb74(91)=abb74(95)*spbl6k3
      abb74(112)=-spak3k4*abb74(91)
      abb74(115)=abb74(95)*spbl6k1
      abb74(116)=spak1k4*abb74(115)
      abb74(58)=abb74(116)+abb74(112)+abb74(71)+abb74(58)
      abb74(58)=spak2l5*abb74(58)
      abb74(43)=abb74(43)*abb74(75)
      abb74(71)=abb74(74)*spak2e7
      abb74(18)=abb74(71)*abb74(18)
      abb74(18)=abb74(43)-abb74(18)
      abb74(18)=abb74(18)*c2
      abb74(43)=abb74(75)*abb74(90)
      abb74(47)=abb74(71)*abb74(47)
      abb74(43)=abb74(43)-abb74(47)
      abb74(43)=abb74(43)*NC
      abb74(47)=-abb74(75)*abb74(86)
      abb74(18)=abb74(18)+abb74(43)+2.0_ki*abb74(47)
      abb74(43)=abb74(70)-abb74(61)
      abb74(47)=-abb74(18)*abb74(43)
      abb74(70)=-abb74(45)*abb74(43)
      abb74(71)=-abb74(70)*abb74(38)
      abb74(47)=abb74(71)+abb74(58)+abb74(47)
      abb74(47)=spbl5k3*abb74(47)
      abb74(58)=abb74(29)*spbe7k3
      abb74(58)=abb74(58)+abb74(91)
      abb74(71)=-abb74(37)*abb74(58)
      abb74(74)=abb74(85)*spbk7k1
      abb74(75)=-abb74(74)*abb74(108)
      abb74(11)=abb74(75)+abb74(71)-abb74(11)
      abb74(11)=spak1k4*abb74(11)
      abb74(71)=abb74(45)*abb74(38)
      abb74(18)=abb74(71)-abb74(18)
      abb74(71)=-spak2l5*abb74(69)
      abb74(71)=abb74(71)-abb74(18)
      abb74(75)=spbk3k2*spak1k4
      abb74(71)=spbl5k1*abb74(75)*abb74(71)
      abb74(86)=2.0_ki*spak1k2
      abb74(90)=abb74(86)*spak4e7
      abb74(112)=2.0_ki*spak2k4
      abb74(116)=abb74(112)*spak1e7
      abb74(90)=abb74(90)+abb74(116)
      abb74(90)=abb74(90)*abb74(40)
      abb74(87)=abb74(87)*abb74(90)
      abb74(116)=abb74(85)*spbk7k3
      abb74(120)=spak1k4*abb74(37)
      abb74(108)=spak3k4*abb74(108)
      abb74(108)=abb74(120)+abb74(108)
      abb74(108)=abb74(108)*abb74(116)
      abb74(11)=abb74(108)+abb74(47)+abb74(71)+abb74(11)+abb74(87)
      abb74(11)=4.0_ki*abb74(11)
      abb74(47)=abb74(86)*spak4k7
      abb74(71)=abb74(112)*spak1k7
      abb74(47)=abb74(47)+abb74(71)
      abb74(71)=-abb74(80)*abb74(47)
      abb74(80)=spak1k4*abb74(128)
      abb74(71)=abb74(80)+abb74(71)
      abb74(71)=8.0_ki*abb74(71)
      abb74(63)=abb74(63)*spak1k4
      abb74(63)=abb74(90)-abb74(63)
      abb74(63)=8.0_ki*abb74(63)
      abb74(80)=-abb74(5)*abb74(68)*abb74(90)
      abb74(87)=spak1k4*abb74(133)
      abb74(80)=abb74(87)+abb74(80)
      abb74(80)=8.0_ki*abb74(80)
      abb74(87)=spak1l6*abb74(112)
      abb74(86)=spak4l6*abb74(86)
      abb74(86)=abb74(86)+abb74(87)
      abb74(86)=abb74(40)*abb74(86)
      abb74(47)=spbk7e7*abb74(47)
      abb74(87)=-spak1k4*abb74(38)
      abb74(47)=abb74(87)+abb74(47)
      abb74(12)=abb74(12)*abb74(47)
      abb74(47)=-spak2l6*abb74(102)
      abb74(12)=abb74(47)+abb74(12)+abb74(86)
      abb74(12)=4.0_ki*abb74(12)
      abb74(47)=4.0_ki*spak1k4
      abb74(86)=abb74(47)*abb74(28)
      abb74(87)=abb74(45)*spbk7e7
      abb74(90)=spal5k7*abb74(87)
      abb74(102)=-spbe7l6*abb74(45)
      abb74(108)=spal5l6*abb74(102)
      abb74(112)=spal5e7*abb74(78)
      abb74(90)=abb74(108)+abb74(90)+abb74(112)
      abb74(90)=spbl5k1*abb74(90)
      abb74(108)=abb74(5)*spbk2k1
      abb74(46)=abb74(46)*abb74(108)
      abb74(90)=abb74(35)+abb74(46)+abb74(90)
      abb74(90)=es12*abb74(90)
      abb74(112)=abb74(87)*spbk2k1
      abb74(120)=abb74(112)*spak1k7
      abb74(122)=abb74(102)*spbk2k1
      abb74(125)=abb74(122)*spak1l6
      abb74(118)=abb74(118)*spak1e7
      abb74(118)=abb74(125)+abb74(118)+abb74(120)
      abb74(37)=abb74(37)*abb74(118)
      abb74(120)=-es12*abb74(49)
      abb74(125)=abb74(29)*abb74(94)
      abb74(120)=abb74(120)+abb74(125)
      abb74(120)=spbe7k1*abb74(120)
      abb74(125)=abb74(78)*spal6e7
      abb74(126)=es12*abb74(125)
      abb74(128)=abb74(95)*abb74(94)
      abb74(126)=abb74(126)+abb74(128)
      abb74(126)=spbl6k1*abb74(126)
      abb74(128)=abb74(78)*spae7k7
      abb74(129)=-es12*abb74(128)
      abb74(132)=-abb74(85)*abb74(94)
      abb74(129)=abb74(129)+abb74(132)
      abb74(129)=spbk7k1*abb74(129)
      abb74(132)=abb74(69)*spbk2k1
      abb74(94)=-abb74(94)*abb74(132)
      abb74(37)=abb74(129)+abb74(126)+abb74(120)+abb74(94)+abb74(37)+abb74(90)
      abb74(37)=4.0_ki*abb74(37)
      abb74(90)=abb74(123)*spbl6k1
      abb74(94)=-es12*abb74(90)
      abb74(120)=abb74(44)*es12
      abb74(126)=abb74(101)*abb74(120)
      abb74(94)=abb74(94)+abb74(126)
      abb74(94)=8.0_ki*abb74(94)
      abb74(126)=abb74(45)*spbe7k1
      abb74(129)=abb74(126)*es12
      abb74(129)=8.0_ki*abb74(129)
      abb74(74)=abb74(115)-abb74(74)
      abb74(115)=abb74(29)*spbe7k1
      abb74(115)=abb74(115)-abb74(132)+abb74(74)
      abb74(113)=-abb74(115)*abb74(113)
      abb74(132)=es12*abb74(131)
      abb74(132)=abb74(132)+abb74(49)
      abb74(132)=spbe7k1*abb74(132)
      abb74(135)=-abb74(78)*abb74(114)
      abb74(35)=-abb74(35)-abb74(46)+abb74(132)+abb74(135)
      abb74(35)=8.0_ki*abb74(35)
      abb74(46)=-abb74(44)*abb74(101)
      abb74(46)=abb74(90)+abb74(46)
      abb74(46)=16.0_ki*abb74(46)
      abb74(132)=16.0_ki*abb74(126)
      abb74(135)=abb74(131)*spbe7k1
      abb74(136)=-16.0_ki*abb74(135)
      abb74(137)=abb74(54)*spbe7k1
      abb74(138)=4.0_ki*es12*abb74(137)
      abb74(139)=-8.0_ki*abb74(137)
      abb74(140)=abb74(120)*abb74(114)
      abb74(55)=-abb74(108)*abb74(55)
      abb74(141)=-es12*abb74(55)
      abb74(140)=abb74(141)+abb74(140)
      abb74(140)=4.0_ki*abb74(140)
      abb74(141)=-abb74(44)*abb74(114)
      abb74(55)=abb74(55)+abb74(141)
      abb74(55)=8.0_ki*abb74(55)
      abb74(141)=-8.0_ki*abb74(78)
      abb74(142)=-8.0_ki*abb74(87)
      abb74(143)=-8.0_ki*abb74(102)
      abb74(18)=-4.0_ki*spbl5k1*abb74(18)
      abb74(144)=spbe7l5*abb74(29)
      abb74(145)=-spbk7l5*abb74(85)
      abb74(146)=spbl6l5*abb74(95)
      abb74(147)=spbl5k2*abb74(69)
      abb74(144)=abb74(147)+abb74(146)+abb74(145)+abb74(144)
      abb74(144)=spak2l5*abb74(144)
      abb74(42)=abb74(14)*abb74(42)
      abb74(145)=-abb74(3)*abb74(42)
      abb74(14)=abb74(30)*abb74(14)
      abb74(30)=abb74(14)*abb74(36)
      abb74(30)=abb74(145)+abb74(30)
      abb74(36)=-abb74(4)*abb74(23)
      abb74(36)=abb74(68)+abb74(36)
      abb74(36)=c2*abb74(20)*abb74(36)
      abb74(14)=-abb74(14)*abb74(23)
      abb74(14)=abb74(42)+abb74(14)
      abb74(14)=NC*abb74(14)
      abb74(14)=abb74(14)+2.0_ki*abb74(30)+abb74(36)
      abb74(14)=abb74(14)*abb74(38)
      abb74(30)=abb74(16)*abb74(41)
      abb74(36)=abb74(3)*abb74(30)
      abb74(9)=2.0_ki*abb74(9)
      abb74(42)=-abb74(9)*abb74(16)
      abb74(68)=abb74(16)*abb74(8)
      abb74(145)=abb74(3)*abb74(68)
      abb74(42)=abb74(42)+abb74(145)
      abb74(42)=abb74(8)*abb74(42)
      abb74(36)=abb74(36)+abb74(42)
      abb74(21)=2.0_ki*abb74(21)-abb74(22)
      abb74(21)=abb74(8)*abb74(21)
      abb74(20)=-abb74(41)*abb74(20)
      abb74(20)=abb74(20)+abb74(21)
      abb74(20)=c2*spbe7l6*abb74(20)
      abb74(16)=mB*abb74(16)
      abb74(16)=2.0_ki*abb74(16)-abb74(68)
      abb74(16)=abb74(8)*abb74(16)
      abb74(16)=-abb74(30)+abb74(16)
      abb74(16)=NC*abb74(16)
      abb74(14)=abb74(14)+abb74(16)+2.0_ki*abb74(36)+abb74(20)+abb74(144)
      abb74(14)=4.0_ki*abb74(14)
      abb74(16)=-8.0_ki*abb74(34)*abb74(104)
      abb74(20)=abb74(67)*spbe7l6
      abb74(20)=abb74(20)+abb74(110)
      abb74(20)=8.0_ki*abb74(20)
      abb74(21)=abb74(34)*abb74(38)
      abb74(21)=abb74(21)-abb74(26)
      abb74(21)=4.0_ki*abb74(21)
      abb74(19)=-abb74(19)*abb74(57)*abb74(27)
      abb74(9)=abb74(9)*abb74(121)
      abb74(22)=-abb74(23)*abb74(64)
      abb74(9)=abb74(59)+abb74(22)+abb74(9)+abb74(19)
      abb74(19)=8.0_ki*spak1l5
      abb74(9)=abb74(9)*abb74(19)
      abb74(19)=abb74(28)*spak1l5
      abb74(22)=-8.0_ki*abb74(19)
      abb74(23)=4.0_ki*abb74(85)
      abb74(26)=4.0_ki*abb74(95)
      abb74(27)=abb74(52)*spbk7e7
      abb74(30)=abb74(27)*spak1k7
      abb74(34)=-abb74(57)*abb74(45)
      abb74(36)=abb74(34)*spak1l6
      abb74(30)=-abb74(36)+abb74(106)+abb74(30)
      abb74(36)=abb74(76)*abb74(30)
      abb74(28)=-spbe7k1*abb74(28)
      abb74(38)=-abb74(40)*abb74(114)
      abb74(41)=-abb74(66)*abb74(108)
      abb74(28)=abb74(41)+abb74(28)+abb74(38)
      abb74(28)=abb74(31)*abb74(28)
      abb74(28)=abb74(28)+abb74(36)
      abb74(28)=4.0_ki*abb74(28)
      abb74(31)=abb74(115)*spak4l5
      abb74(36)=abb74(112)*spak4k7
      abb74(38)=abb74(122)*spak4l6
      abb74(31)=abb74(36)+abb74(38)+abb74(31)+abb74(119)
      abb74(36)=8.0_ki*abb74(31)
      abb74(31)=-4.0_ki*abb74(31)
      abb74(38)=-abb74(96)*abb74(72)
      abb74(41)=-abb74(78)*abb74(43)
      abb74(42)=4.0_ki*abb74(41)
      abb74(45)=-abb74(72)*abb74(27)
      abb74(52)=4.0_ki*spbk7e7*abb74(70)
      abb74(57)=abb74(34)*abb74(72)
      abb74(59)=4.0_ki*abb74(102)
      abb74(64)=-abb74(43)*abb74(59)
      abb74(40)=abb74(40)*abb74(72)
      abb74(66)=-spae7k7*abb74(40)
      abb74(40)=spal6e7*abb74(40)
      abb74(67)=abb74(72)*abb74(133)
      abb74(68)=spak1k4*abb74(74)
      abb74(72)=-abb74(116)+abb74(91)
      abb74(72)=spak3k4*abb74(72)
      abb74(74)=abb74(111)+abb74(107)
      abb74(74)=abb74(29)*abb74(74)
      abb74(76)=abb74(43)*abb74(69)
      abb74(68)=abb74(76)+abb74(74)+abb74(72)+abb74(68)
      abb74(68)=4.0_ki*abb74(68)
      abb74(72)=spak1l5*abb74(133)
      abb74(30)=abb74(72)-abb74(30)
      abb74(30)=abb74(61)*abb74(30)
      abb74(61)=abb74(49)*abb74(75)
      abb74(19)=spak1k4*abb74(19)
      abb74(19)=abb74(61)+abb74(19)
      abb74(19)=spbe7k1*abb74(19)
      abb74(61)=spbk3k2**2
      abb74(72)=abb74(61)*spak3k4
      abb74(15)=-abb74(15)*abb74(72)
      abb74(32)=-abb74(32)*abb74(61)*abb74(39)
      abb74(15)=abb74(15)+abb74(32)
      abb74(15)=abb74(7)*abb74(15)
      abb74(32)=-abb74(81)*abb74(72)
      abb74(39)=abb74(43)*spbe7k3
      abb74(49)=-abb74(49)*abb74(39)
      abb74(61)=abb74(75)*abb74(78)
      abb74(74)=-spal6e7*abb74(61)
      abb74(76)=spak1l5*abb74(103)
      abb74(74)=abb74(74)+abb74(76)
      abb74(74)=spbl6k1*abb74(74)
      abb74(76)=spae7k7*abb74(61)
      abb74(81)=-spak1l5*abb74(105)
      abb74(76)=abb74(76)+abb74(81)
      abb74(76)=spbk7k1*abb74(76)
      abb74(41)=-abb74(41)*abb74(99)
      abb74(15)=abb74(76)+abb74(15)+abb74(74)+abb74(19)+abb74(49)+abb74(32)+abb&
      &74(30)+abb74(41)
      abb74(15)=4.0_ki*abb74(15)
      abb74(19)=-abb74(43)*abb74(124)
      abb74(30)=abb74(75)*abb74(90)
      abb74(32)=-abb74(44)*abb74(43)
      abb74(41)=-abb74(32)*abb74(98)
      abb74(43)=abb74(75)*abb74(44)
      abb74(49)=-abb74(101)*abb74(43)
      abb74(19)=abb74(49)+abb74(41)+abb74(19)+abb74(30)
      abb74(19)=8.0_ki*abb74(19)
      abb74(30)=abb74(126)*abb74(75)
      abb74(41)=abb74(70)*spbe7k3
      abb74(30)=abb74(30)+abb74(41)
      abb74(30)=8.0_ki*abb74(30)
      abb74(41)=abb74(39)*abb74(131)
      abb74(49)=-abb74(75)*abb74(135)
      abb74(41)=abb74(41)+abb74(49)
      abb74(41)=8.0_ki*abb74(41)
      abb74(39)=abb74(54)*abb74(39)
      abb74(49)=-abb74(75)*abb74(137)
      abb74(39)=abb74(39)+abb74(49)
      abb74(39)=4.0_ki*abb74(39)
      abb74(49)=abb74(96)*abb74(47)
      abb74(43)=-abb74(43)*abb74(114)
      abb74(32)=-abb74(32)*abb74(99)
      abb74(70)=abb74(131)*abb74(72)
      abb74(32)=abb74(70)+abb74(32)+abb74(43)
      abb74(32)=4.0_ki*abb74(32)
      abb74(43)=4.0_ki*abb74(61)
      abb74(27)=abb74(47)*abb74(27)
      abb74(61)=4.0_ki*abb74(87)
      abb74(70)=abb74(75)*abb74(61)
      abb74(34)=-abb74(34)*abb74(47)
      abb74(72)=abb74(75)*abb74(59)
      abb74(74)=4.0_ki*abb74(105)
      abb74(76)=-4.0_ki*abb74(103)
      abb74(47)=-abb74(133)*abb74(47)
      abb74(58)=abb74(116)-abb74(58)
      abb74(58)=spak1k4*abb74(58)
      abb74(75)=-abb74(75)*abb74(69)
      abb74(58)=abb74(75)+abb74(58)
      abb74(58)=4.0_ki*abb74(58)
      abb74(75)=-spak1l5*abb74(115)
      abb74(81)=spbl6k2*abb74(125)
      abb74(85)=-spbk7k2*abb74(128)
      abb74(75)=abb74(85)+abb74(81)+abb74(75)-abb74(118)
      abb74(75)=4.0_ki*abb74(75)
      abb74(81)=-spbl6k2*abb74(123)
      abb74(85)=-es712+es71
      abb74(85)=abb74(44)*abb74(85)
      abb74(81)=abb74(120)+abb74(81)+abb74(85)
      abb74(81)=8.0_ki*abb74(81)
      abb74(54)=4.0_ki*spbe7k2*abb74(54)
      abb74(29)=4.0_ki*abb74(29)
      abb74(78)=4.0_ki*abb74(78)
      abb74(85)=spbk7k2*spae7k7
      abb74(87)=spbl6k2*spal6e7
      abb74(85)=abb74(87)-abb74(85)
      abb74(44)=4.0_ki*abb74(44)*abb74(85)
      abb74(69)=-4.0_ki*abb74(69)
      R2d74=0.0_ki
      rat2 = rat2 + R2d74
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='74' value='", &
          & R2d74, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd74h2
