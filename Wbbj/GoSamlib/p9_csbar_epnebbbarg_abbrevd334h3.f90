module     p9_csbar_epnebbbarg_abbrevd334h3
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(121), public :: abb334
   complex(ki), public :: R2d334
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
      abb334(1)=1.0_ki/(-mB**2+es67)
      abb334(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb334(3)=es234**(-1)
      abb334(4)=es567**(-1)
      abb334(5)=spak2l5**(-1)
      abb334(6)=spak2l6**(-1)
      abb334(7)=spbl6k2**(-1)
      abb334(8)=sqrt(mB**2)
      abb334(9)=1.0_ki/(es34+es567-es12-es234)
      abb334(10)=NC*c3
      abb334(11)=abb334(10)-c2
      abb334(12)=TR*gW
      abb334(12)=abb334(12)**2*i_*CVSC*abb334(4)*abb334(2)
      abb334(13)=abb334(12)*abb334(3)*abb334(1)
      abb334(14)=-abb334(13)*abb334(11)
      abb334(15)=spak2k4**2
      abb334(16)=abb334(14)*abb334(15)
      abb334(17)=-mB*abb334(16)
      abb334(18)=abb334(5)*spbk4k3
      abb334(19)=abb334(18)*spbe7l6
      abb334(20)=abb334(17)*abb334(19)
      abb334(21)=spbl6k1*spal6e7
      abb334(22)=abb334(21)*abb334(20)
      abb334(13)=abb334(13)*spbl5k1
      abb334(10)=abb334(13)*abb334(10)
      abb334(13)=abb334(13)*c2
      abb334(23)=abb334(13)-abb334(10)
      abb334(24)=-spak2k4*abb334(23)
      abb334(25)=abb334(24)*abb334(8)
      abb334(26)=spbe7l6*spbk4k3
      abb334(27)=abb334(25)*abb334(26)
      abb334(28)=abb334(27)*spak4e7
      abb334(29)=spbk7k1*spae7k7
      abb334(30)=abb334(29)*abb334(20)
      abb334(22)=-abb334(30)+abb334(22)+abb334(28)
      abb334(28)=-abb334(11)*abb334(12)*spak2e7
      abb334(30)=abb334(28)*abb334(1)
      abb334(31)=abb334(8)*spbe7l6
      abb334(32)=-abb334(30)*abb334(31)
      abb334(33)=mB*abb334(1)
      abb334(34)=-spbe7l6*abb334(33)*abb334(28)
      abb334(32)=abb334(32)-abb334(34)
      abb334(35)=spbk3k1*abb334(9)
      abb334(32)=abb334(32)*abb334(35)
      abb334(36)=spbk7e7*spak2k7
      abb334(37)=abb334(36)*abb334(35)
      abb334(38)=abb334(33)*abb334(6)
      abb334(39)=-abb334(37)*abb334(38)*abb334(28)
      abb334(32)=abb334(32)+abb334(39)
      abb334(40)=spak3k4*spbl5k3
      abb334(32)=abb334(32)*abb334(40)
      abb334(41)=spbl5k1*abb334(1)
      abb334(42)=-abb334(41)*abb334(28)
      abb334(43)=abb334(42)*abb334(31)
      abb334(44)=-spbe7l6*mB*abb334(42)
      abb334(43)=abb334(43)+abb334(44)
      abb334(43)=abb334(43)*abb334(35)
      abb334(45)=abb334(6)*mB
      abb334(46)=-abb334(37)*abb334(45)*abb334(42)
      abb334(43)=abb334(43)-abb334(46)
      abb334(43)=abb334(43)*spak1k4
      abb334(47)=spak4k7*spbk7e7
      abb334(48)=abb334(47)*spbk4k3
      abb334(49)=abb334(26)*spak4l6
      abb334(50)=-abb334(48)+abb334(49)
      abb334(51)=-spak2e7*abb334(23)
      abb334(52)=abb334(6)*spak2k4
      abb334(53)=abb334(52)*mB
      abb334(54)=-abb334(53)*abb334(51)
      abb334(50)=abb334(54)*abb334(50)
      abb334(55)=mB**2
      abb334(15)=abb334(15)*abb334(6)
      abb334(56)=abb334(55)*abb334(15)
      abb334(57)=abb334(14)*abb334(56)
      abb334(58)=spak2e7*abb334(57)
      abb334(59)=abb334(18)*abb334(8)
      abb334(60)=abb334(59)*spbe7k1
      abb334(61)=abb334(58)*abb334(60)
      abb334(50)=-abb334(61)+abb334(50)
      abb334(61)=spak2k4*mB
      abb334(62)=-spbe7l6*abb334(61)*abb334(51)
      abb334(63)=abb334(54)*abb334(36)
      abb334(64)=abb334(62)-abb334(63)
      abb334(65)=-spak2k4*abb334(51)
      abb334(66)=abb334(65)*abb334(31)
      abb334(66)=abb334(66)-abb334(64)
      abb334(66)=abb334(66)*spbk3k2
      abb334(67)=mB**3
      abb334(68)=abb334(67)*spak2e7
      abb334(69)=-abb334(14)*abb334(68)*abb334(15)
      abb334(70)=abb334(69)*spbk2k1
      abb334(71)=abb334(18)*abb334(7)
      abb334(72)=abb334(71)*spbe7l6
      abb334(73)=abb334(70)*abb334(72)
      abb334(32)=-abb334(32)+abb334(66)-abb334(73)-abb334(50)+abb334(43)-abb334&
      &(22)
      abb334(43)=-2.0_ki*abb334(32)
      abb334(66)=abb334(15)*abb334(67)
      abb334(73)=-abb334(66)*abb334(14)
      abb334(74)=abb334(73)*abb334(71)
      abb334(75)=abb334(21)-abb334(29)
      abb334(75)=abb334(74)*abb334(75)
      abb334(76)=spbk7l6*spak2k7
      abb334(77)=abb334(76)*abb334(75)
      abb334(78)=abb334(52)**2
      abb334(79)=-abb334(23)*abb334(78)*abb334(67)
      abb334(80)=abb334(7)*spbk4k3
      abb334(81)=abb334(79)*abb334(80)
      abb334(82)=abb334(76)*spal6e7
      abb334(83)=abb334(81)*abb334(82)
      abb334(56)=-abb334(56)*abb334(23)
      abb334(84)=abb334(80)*abb334(8)
      abb334(85)=abb334(56)*abb334(84)
      abb334(86)=spae7k7*spbk7l6
      abb334(87)=abb334(86)*abb334(85)
      abb334(77)=abb334(83)+abb334(87)+abb334(77)
      abb334(77)=spbe7k2*abb334(77)
      abb334(83)=-abb334(57)*abb334(59)
      abb334(87)=abb334(83)*abb334(82)
      abb334(88)=abb334(17)*abb334(18)
      abb334(89)=abb334(8)**2
      abb334(90)=abb334(89)*abb334(88)*abb334(86)
      abb334(14)=-abb334(78)*abb334(14)*spak2e7
      abb334(91)=-abb334(14)*mB**4
      abb334(92)=abb334(8)*abb334(91)*abb334(71)
      abb334(93)=es71+es12-es712
      abb334(94)=-abb334(92)*abb334(93)
      abb334(87)=abb334(87)+abb334(90)+abb334(94)
      abb334(87)=spbe7k1*abb334(87)
      abb334(90)=abb334(55)*abb334(52)
      abb334(94)=abb334(90)*abb334(10)
      abb334(95)=abb334(13)*abb334(52)
      abb334(96)=abb334(95)*abb334(55)
      abb334(94)=abb334(96)-abb334(94)
      abb334(84)=abb334(94)*abb334(84)
      abb334(96)=-spbe7k2*abb334(76)*abb334(84)
      abb334(53)=-abb334(53)*abb334(23)
      abb334(97)=abb334(53)*spbk4k3
      abb334(98)=abb334(97)*abb334(36)
      abb334(99)=-abb334(89)*abb334(98)
      abb334(100)=spal6k7*spbk7l6
      abb334(101)=abb334(27)*abb334(100)
      abb334(96)=abb334(96)+abb334(99)+abb334(101)
      abb334(96)=spak4e7*abb334(96)
      abb334(77)=abb334(96)+abb334(77)+abb334(87)
      abb334(28)=-abb334(28)*abb334(6)*abb334(1)
      abb334(87)=abb334(31)*abb334(7)
      abb334(96)=abb334(87)*abb334(55)
      abb334(99)=abb334(28)*abb334(96)
      abb334(28)=abb334(67)*abb334(28)
      abb334(101)=2.0_ki*abb334(7)
      abb334(102)=abb334(101)*spbe7l6
      abb334(103)=abb334(28)*abb334(102)
      abb334(104)=abb334(99)+abb334(103)
      abb334(104)=abb334(104)*abb334(35)
      abb334(105)=abb334(6)**2
      abb334(106)=abb334(105)*abb334(67)
      abb334(107)=-abb334(106)*abb334(30)
      abb334(108)=abb334(37)*abb334(101)
      abb334(109)=abb334(107)*abb334(108)
      abb334(104)=abb334(104)-abb334(109)
      abb334(104)=abb334(104)*abb334(40)
      abb334(110)=abb334(42)*abb334(6)
      abb334(96)=abb334(110)*abb334(96)
      abb334(110)=-abb334(67)*abb334(110)
      abb334(111)=abb334(110)*abb334(102)
      abb334(112)=abb334(96)-abb334(111)
      abb334(112)=abb334(112)*abb334(35)
      abb334(106)=-abb334(106)*abb334(42)
      abb334(108)=abb334(106)*abb334(108)
      abb334(112)=abb334(112)+abb334(108)
      abb334(112)=abb334(112)*spak1k4
      abb334(105)=-abb334(24)*abb334(68)*abb334(105)
      abb334(113)=abb334(36)*abb334(105)*abb334(101)
      abb334(95)=abb334(95)*abb334(68)
      abb334(10)=abb334(68)*abb334(10)
      abb334(52)=abb334(10)*abb334(52)
      abb334(52)=abb334(95)-abb334(52)
      abb334(95)=abb334(52)*abb334(102)
      abb334(95)=abb334(113)-abb334(95)
      abb334(51)=-abb334(90)*abb334(51)
      abb334(87)=abb334(51)*abb334(87)
      abb334(90)=abb334(95)-abb334(87)
      abb334(90)=abb334(90)*spbk3k2
      abb334(102)=abb334(105)*abb334(80)
      abb334(113)=2.0_ki*spbe7l6
      abb334(114)=spak4l6*abb334(113)
      abb334(114)=-abb334(114)+2.0_ki*abb334(47)
      abb334(114)=abb334(102)*abb334(114)
      abb334(14)=-spbk2k1*abb334(19)*abb334(7)**2*abb334(14)*mB**5
      abb334(90)=-abb334(112)+abb334(104)+abb334(90)-abb334(14)+abb334(114)
      abb334(90)=-abb334(90)*abb334(93)
      abb334(11)=abb334(12)*abb334(11)
      abb334(12)=-abb334(33)*abb334(11)
      abb334(33)=abb334(12)*abb334(113)
      abb334(104)=-abb334(1)*abb334(11)
      abb334(112)=abb334(104)*abb334(31)
      abb334(33)=abb334(33)+abb334(112)
      abb334(112)=abb334(35)*spak2k7
      abb334(33)=abb334(33)*abb334(112)
      abb334(115)=spbk7e7*spak2k7**2
      abb334(115)=2.0_ki*abb334(115)
      abb334(116)=abb334(115)*abb334(35)
      abb334(38)=-abb334(38)*abb334(11)
      abb334(117)=-abb334(38)*abb334(116)
      abb334(33)=abb334(33)+abb334(117)
      abb334(33)=abb334(33)*abb334(40)
      abb334(11)=-abb334(41)*abb334(11)
      abb334(41)=abb334(11)*abb334(31)
      abb334(117)=-mB*abb334(11)
      abb334(118)=abb334(117)*abb334(113)
      abb334(41)=abb334(118)-abb334(41)
      abb334(41)=abb334(41)*abb334(112)
      abb334(45)=-abb334(45)*abb334(11)
      abb334(112)=-abb334(45)*abb334(116)
      abb334(41)=abb334(41)+abb334(112)
      abb334(41)=spak1k4*abb334(41)
      abb334(33)=abb334(41)+abb334(33)
      abb334(33)=spbk7l6*abb334(33)
      abb334(41)=-abb334(61)*abb334(23)
      abb334(61)=-abb334(41)*abb334(113)
      abb334(112)=-abb334(24)*abb334(31)
      abb334(61)=abb334(61)+abb334(112)
      abb334(61)=spak2k7*abb334(61)
      abb334(112)=abb334(53)*abb334(115)
      abb334(61)=abb334(61)+abb334(112)
      abb334(112)=spbk3k2*spbk7l6
      abb334(61)=abb334(61)*abb334(112)
      abb334(33)=abb334(61)+abb334(33)
      abb334(33)=spal6e7*abb334(33)
      abb334(61)=2.0_ki*abb334(31)
      abb334(113)=-abb334(30)*abb334(61)
      abb334(115)=abb334(34)+abb334(113)
      abb334(116)=abb334(40)*abb334(35)
      abb334(115)=abb334(115)*abb334(116)
      abb334(118)=abb334(42)*abb334(61)
      abb334(119)=abb334(44)-abb334(118)
      abb334(120)=abb334(35)*spak1k4
      abb334(119)=abb334(119)*abb334(120)
      abb334(115)=abb334(119)+abb334(115)
      abb334(115)=spbk7l6*abb334(115)
      abb334(61)=abb334(65)*abb334(61)
      abb334(62)=-abb334(62)-abb334(61)
      abb334(62)=abb334(62)*abb334(112)
      abb334(59)=spbk7e7*abb334(58)*abb334(59)
      abb334(119)=spal6e7*spbk7l6
      abb334(121)=abb334(20)*abb334(119)
      abb334(59)=abb334(59)+abb334(121)
      abb334(59)=spbl6k1*abb334(59)
      abb334(59)=abb334(59)+abb334(62)+abb334(115)
      abb334(59)=spal6k7*abb334(59)
      abb334(62)=spae7k7*abb334(56)
      abb334(51)=spak4k7*abb334(51)
      abb334(51)=abb334(62)+abb334(51)
      abb334(62)=abb334(31)*abb334(80)
      abb334(51)=abb334(62)*abb334(51)
      abb334(13)=abb334(13)*abb334(68)
      abb334(10)=abb334(13)-abb334(10)
      abb334(10)=spbe7l6*abb334(80)*abb334(78)*abb334(10)
      abb334(13)=-spbl6k1*abb334(69)*abb334(72)
      abb334(10)=abb334(10)+abb334(13)
      abb334(10)=spal6k7*abb334(10)
      abb334(10)=abb334(10)+abb334(51)
      abb334(10)=spbk7k2*abb334(10)
      abb334(13)=-abb334(40)*abb334(39)
      abb334(51)=-spak1k4*abb334(46)
      abb334(63)=spbk3k2*abb334(63)
      abb334(13)=abb334(51)+abb334(13)+abb334(63)
      abb334(13)=abb334(89)*abb334(13)
      abb334(51)=abb334(104)*abb334(116)
      abb334(63)=abb334(11)*abb334(120)
      abb334(51)=abb334(51)-abb334(63)
      abb334(63)=spbk7l6*abb334(51)
      abb334(68)=-abb334(24)*abb334(112)
      abb334(63)=abb334(68)+abb334(63)
      abb334(68)=abb334(31)*spak2l6
      abb334(63)=spae7k7*abb334(63)*abb334(68)
      abb334(13)=abb334(13)+abb334(63)
      abb334(63)=-abb334(82)*abb334(74)*spbe7l6
      abb334(19)=abb334(19)*abb334(101)
      abb334(69)=abb334(69)*abb334(100)*abb334(19)
      abb334(78)=abb334(36)*abb334(92)
      abb334(63)=abb334(69)+3.0_ki*abb334(78)+abb334(63)
      abb334(63)=spbk2k1*abb334(63)
      abb334(69)=2.0_ki*abb334(36)
      abb334(69)=-abb334(21)*abb334(83)*abb334(69)
      abb334(78)=-abb334(27)+2.0_ki*abb334(98)
      abb334(78)=abb334(78)*abb334(119)
      abb334(80)=spbk7e7*spbk4k3*abb334(54)*abb334(89)
      abb334(78)=abb334(80)+abb334(78)
      abb334(78)=spak4k7*abb334(78)
      abb334(80)=abb334(53)*abb334(82)
      abb334(54)=-abb334(54)*abb334(100)
      abb334(54)=abb334(54)-2.0_ki*abb334(80)
      abb334(26)=abb334(26)*abb334(54)
      abb334(54)=abb334(27)*abb334(86)
      abb334(26)=-3.0_ki*abb334(54)+abb334(26)
      abb334(26)=spak4l6*abb334(26)
      abb334(18)=abb334(58)*abb334(18)*abb334(31)
      abb334(31)=abb334(20)*abb334(86)
      abb334(18)=abb334(18)-2.0_ki*abb334(31)
      abb334(18)=spal6k7*abb334(18)
      abb334(31)=spae7k7*abb334(89)*abb334(20)
      abb334(18)=abb334(31)+abb334(18)
      abb334(18)=spbk7k1*abb334(18)
      abb334(10)=abb334(10)+abb334(18)+abb334(63)+abb334(26)+abb334(59)+abb334(&
      &78)+abb334(69)+abb334(33)+abb334(90)+3.0_ki*abb334(13)+2.0_ki*abb334(77)
      abb334(10)=2.0_ki*abb334(10)
      abb334(13)=-spbk4k3*abb334(73)
      abb334(18)=2.0_ki*spbk4k3
      abb334(26)=-abb334(8)*abb334(57)*abb334(18)
      abb334(13)=abb334(13)+abb334(26)
      abb334(26)=spbk7k1*spak2k7
      abb334(13)=abb334(13)*abb334(26)
      abb334(31)=-abb334(18)*abb334(55)*abb334(16)
      abb334(33)=abb334(8)*spbk4k3
      abb334(33)=3.0_ki*abb334(33)
      abb334(17)=abb334(17)*abb334(33)
      abb334(17)=abb334(31)+abb334(17)
      abb334(17)=abb334(8)*abb334(17)
      abb334(16)=-abb334(67)*abb334(16)
      abb334(31)=-spbk4k3*abb334(16)
      abb334(17)=abb334(31)+abb334(17)
      abb334(17)=spbl6k1*abb334(17)
      abb334(13)=abb334(13)+abb334(17)
      abb334(13)=abb334(5)*abb334(13)
      abb334(17)=abb334(74)*spbk2k1
      abb334(31)=abb334(97)*spak4l6
      abb334(17)=abb334(17)-abb334(31)
      abb334(31)=-2.0_ki*abb334(51)
      abb334(31)=abb334(8)*abb334(31)
      abb334(54)=spbk3k2*abb334(25)
      abb334(31)=2.0_ki*abb334(54)+abb334(31)-abb334(17)
      abb334(31)=abb334(76)*abb334(31)
      abb334(54)=abb334(56)*abb334(18)
      abb334(15)=-abb334(33)*abb334(15)*mB*abb334(23)
      abb334(15)=abb334(54)+abb334(15)
      abb334(15)=abb334(8)*abb334(15)
      abb334(33)=-abb334(81)*abb334(93)
      abb334(23)=spbk4k3*abb334(66)*abb334(23)
      abb334(54)=-spbk4k3*abb334(41)
      abb334(18)=abb334(25)*abb334(18)
      abb334(18)=abb334(54)+abb334(18)
      abb334(18)=spak4k7*spbk7l6*abb334(18)
      abb334(54)=abb334(88)*spbl6k1
      abb334(55)=-abb334(100)*abb334(54)
      abb334(13)=abb334(55)+abb334(18)+abb334(23)+abb334(15)+abb334(31)+abb334(&
      &33)+abb334(13)
      abb334(13)=4.0_ki*abb334(13)
      abb334(15)=-8.0_ki*abb334(32)
      abb334(18)=abb334(34)-abb334(113)
      abb334(18)=abb334(18)*abb334(35)
      abb334(18)=abb334(18)-abb334(39)
      abb334(18)=abb334(18)*abb334(40)
      abb334(23)=abb334(44)+abb334(118)
      abb334(23)=abb334(23)*abb334(35)
      abb334(23)=abb334(23)-abb334(46)
      abb334(23)=spak1k4*abb334(23)
      abb334(31)=abb334(61)-abb334(64)
      abb334(31)=spbk3k2*abb334(31)
      abb334(19)=-abb334(70)*abb334(19)
      abb334(18)=abb334(19)+abb334(23)+abb334(18)+abb334(31)-abb334(50)-2.0_ki*&
      &abb334(22)
      abb334(18)=4.0_ki*abb334(18)
      abb334(19)=-16.0_ki*abb334(54)
      abb334(22)=abb334(103)-abb334(99)
      abb334(22)=abb334(22)*abb334(35)
      abb334(22)=abb334(22)-abb334(109)
      abb334(22)=abb334(22)*abb334(40)
      abb334(23)=abb334(87)+abb334(95)
      abb334(23)=spbk3k2*abb334(23)
      abb334(31)=abb334(111)+abb334(96)
      abb334(31)=abb334(31)*abb334(35)
      abb334(31)=abb334(31)-abb334(108)
      abb334(31)=spak1k4*abb334(31)
      abb334(33)=-spbe7l6*abb334(75)
      abb334(34)=abb334(91)*abb334(101)*abb334(60)
      abb334(39)=abb334(62)*abb334(94)*spak4e7
      abb334(14)=abb334(39)+abb334(34)+abb334(14)+abb334(31)+abb334(22)+abb334(&
      &23)+abb334(114)+abb334(33)
      abb334(14)=4.0_ki*abb334(14)
      abb334(22)=-16.0_ki*abb334(81)
      abb334(23)=4.0_ki*abb334(32)
      abb334(26)=-abb334(74)*abb334(26)
      abb334(31)=-spbl6k1*abb334(16)*abb334(71)
      abb334(26)=abb334(26)-abb334(85)+abb334(31)
      abb334(26)=spbe7k2*abb334(26)
      abb334(31)=spbk7e7*abb334(54)
      abb334(20)=-spbk7k1*abb334(20)
      abb334(20)=abb334(20)+abb334(31)
      abb334(20)=spal6k7*abb334(20)
      abb334(31)=abb334(104)*abb334(8)
      abb334(32)=-abb334(40)*abb334(31)
      abb334(11)=abb334(11)*abb334(8)
      abb334(33)=spak1k4*abb334(11)
      abb334(32)=abb334(33)+abb334(32)
      abb334(32)=abb334(37)*abb334(32)
      abb334(33)=spbk3k2*abb334(36)
      abb334(33)=abb334(48)+abb334(33)
      abb334(33)=abb334(25)*abb334(33)
      abb334(34)=abb334(36)*abb334(74)
      abb334(16)=abb334(16)*abb334(72)
      abb334(16)=abb334(16)+abb334(34)
      abb334(16)=spbk2k1*abb334(16)
      abb334(24)=spbk3k2*abb334(24)
      abb334(24)=abb334(24)-abb334(51)
      abb334(24)=abb334(24)*abb334(68)
      abb334(27)=spak4l6*abb334(27)
      abb334(16)=abb334(24)+abb334(26)+abb334(16)+abb334(27)+abb334(33)+abb334(&
      &32)+abb334(20)
      abb334(16)=2.0_ki*abb334(16)
      abb334(20)=abb334(105)*spbk3k2
      abb334(24)=abb334(106)*abb334(120)
      abb334(26)=abb334(107)*abb334(116)
      abb334(20)=-abb334(20)+abb334(24)+abb334(26)
      abb334(20)=abb334(93)*abb334(20)*abb334(7)
      abb334(24)=abb334(38)*abb334(116)
      abb334(26)=abb334(53)*spbk3k2
      abb334(27)=abb334(45)*abb334(120)
      abb334(24)=-abb334(26)+abb334(24)+abb334(27)
      abb334(26)=-abb334(76)*abb334(24)
      abb334(27)=spbk4k3*abb334(79)
      abb334(26)=abb334(27)+abb334(26)
      abb334(26)=spal6e7*abb334(26)
      abb334(27)=spae7k7*abb334(81)
      abb334(32)=-spak4k7*abb334(102)
      abb334(27)=abb334(27)+abb334(32)
      abb334(27)=spbk7k2*abb334(27)
      abb334(29)=abb334(29)+abb334(21)
      abb334(29)=abb334(83)*abb334(29)
      abb334(28)=abb334(28)*abb334(116)
      abb334(32)=-spbk3k2*abb334(52)
      abb334(33)=abb334(12)*abb334(116)
      abb334(34)=abb334(117)*abb334(120)
      abb334(33)=abb334(33)+abb334(34)
      abb334(34)=spbk7l6*abb334(33)
      abb334(39)=-abb334(41)*abb334(112)
      abb334(34)=abb334(39)+abb334(34)
      abb334(34)=spae7k7*abb334(34)
      abb334(39)=-spbk4k3*abb334(105)
      abb334(44)=-abb334(97)*abb334(86)
      abb334(39)=abb334(39)+abb334(44)
      abb334(39)=spak4l6*abb334(39)
      abb334(44)=abb334(110)*abb334(120)
      abb334(46)=abb334(97)*spak4k7
      abb334(48)=abb334(119)*abb334(46)
      abb334(50)=-spbk2k1*abb334(92)
      abb334(20)=abb334(27)+abb334(50)+abb334(39)+abb334(48)+abb334(34)+abb334(&
      &26)+abb334(44)+abb334(28)+abb334(32)+abb334(20)+abb334(29)
      abb334(20)=2.0_ki*abb334(20)
      abb334(26)=-abb334(30)*abb334(116)
      abb334(27)=-spbk3k2*abb334(65)
      abb334(28)=-abb334(42)*abb334(120)
      abb334(26)=abb334(28)+abb334(26)+abb334(27)
      abb334(26)=abb334(8)*abb334(26)
      abb334(27)=abb334(71)*abb334(70)
      abb334(21)=abb334(21)*abb334(88)
      abb334(28)=abb334(25)*spbk4k3
      abb334(29)=spak4e7*abb334(28)
      abb334(21)=abb334(29)+abb334(27)+abb334(21)+abb334(26)
      abb334(21)=4.0_ki*spbk7e7*abb334(21)
      abb334(26)=-8.0_ki*spbk7k1*abb334(88)
      abb334(27)=-8.0_ki*abb334(28)
      abb334(28)=-abb334(60)*abb334(57)
      abb334(29)=abb334(49)*abb334(53)
      abb334(28)=abb334(28)-abb334(29)
      abb334(29)=-spbk3k2*abb334(41)
      abb334(29)=abb334(29)+abb334(33)
      abb334(29)=spbe7l6*abb334(29)
      abb334(30)=spbe7k2*abb334(81)
      abb334(29)=abb334(30)+abb334(29)+abb334(28)
      abb334(29)=4.0_ki*spae7k7*abb334(29)
      abb334(24)=-spak2k7*abb334(24)
      abb334(24)=abb334(46)+abb334(24)
      abb334(24)=8.0_ki*abb334(24)
      abb334(30)=abb334(38)*abb334(37)
      abb334(32)=abb334(35)*spbe7l6
      abb334(33)=-abb334(12)*abb334(32)
      abb334(30)=abb334(33)+abb334(30)
      abb334(30)=abb334(30)*abb334(40)
      abb334(33)=spbe7l6*abb334(41)
      abb334(34)=-abb334(53)*abb334(36)
      abb334(33)=abb334(33)+abb334(34)
      abb334(33)=spbk3k2*abb334(33)
      abb334(34)=abb334(45)*abb334(37)
      abb334(32)=-abb334(117)*abb334(32)
      abb334(32)=abb334(32)+abb334(34)
      abb334(32)=spak1k4*abb334(32)
      abb334(34)=-abb334(47)*abb334(97)
      abb334(28)=abb334(34)-abb334(28)+abb334(32)+abb334(30)+abb334(33)
      abb334(28)=spal6e7*abb334(28)
      abb334(30)=-spal6e7*abb334(81)
      abb334(32)=spak4e7*abb334(84)
      abb334(30)=abb334(32)+abb334(30)-abb334(75)
      abb334(30)=spbe7k2*abb334(30)
      abb334(28)=abb334(28)+abb334(30)
      abb334(28)=2.0_ki*abb334(28)
      abb334(12)=abb334(31)-abb334(12)
      abb334(12)=abb334(12)*abb334(116)
      abb334(25)=-abb334(25)+abb334(41)
      abb334(25)=spbk3k2*abb334(25)
      abb334(11)=-abb334(11)-abb334(117)
      abb334(11)=abb334(11)*abb334(120)
      abb334(11)=abb334(11)+abb334(12)+abb334(25)-abb334(17)
      abb334(11)=8.0_ki*abb334(11)
      abb334(12)=-8.0_ki*abb334(83)
      R2d334=abb334(43)
      rat2 = rat2 + R2d334
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='334' value='", &
          & R2d334, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd334h3
