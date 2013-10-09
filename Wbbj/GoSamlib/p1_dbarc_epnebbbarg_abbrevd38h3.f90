module     p1_dbarc_epnebbbarg_abbrevd38h3
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(124), public :: abb38
   complex(ki), public :: R2d38
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
      abb38(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb38(2)=NC**(-1)
      abb38(3)=es234**(-1)
      abb38(4)=es56**(-1)
      abb38(5)=es71**(-1)
      abb38(6)=spak2l5**(-1)
      abb38(7)=spak2l6**(-1)
      abb38(8)=spbl5k2**(-1)
      abb38(9)=spbl6k2**(-1)
      abb38(10)=TR*gW
      abb38(10)=abb38(10)**2*i_*spak1e7*CVDC*abb38(4)
      abb38(11)=abb38(10)*abb38(3)
      abb38(12)=abb38(5)*abb38(1)
      abb38(13)=abb38(12)*abb38(11)
      abb38(14)=abb38(13)*spbk3k2*mB
      abb38(15)=abb38(14)*c4
      abb38(16)=abb38(15)*spak2k4
      abb38(17)=spbk7e7*abb38(6)
      abb38(18)=abb38(16)*abb38(17)
      abb38(19)=abb38(18)*spak2k7
      abb38(20)=spbe7k1*abb38(6)
      abb38(21)=abb38(16)*abb38(20)
      abb38(22)=abb38(21)*spak1k2
      abb38(19)=abb38(19)-abb38(22)
      abb38(19)=abb38(19)*abb38(2)
      abb38(22)=abb38(14)*spbk7e7
      abb38(23)=abb38(22)*c3
      abb38(24)=abb38(23)*spak2k7
      abb38(14)=abb38(14)*spbe7k1
      abb38(25)=abb38(14)*c3
      abb38(26)=abb38(25)*spak1k2
      abb38(24)=abb38(24)-abb38(26)
      abb38(26)=spak2k4*abb38(6)
      abb38(27)=-abb38(26)*abb38(24)
      abb38(19)=abb38(19)+abb38(27)
      abb38(27)=abb38(19)*abb38(2)
      abb38(28)=NC*c3
      abb38(29)=abb38(28)*abb38(6)
      abb38(30)=abb38(29)*abb38(22)
      abb38(31)=abb38(30)*spak2k4
      abb38(31)=abb38(31)-abb38(18)
      abb38(32)=abb38(31)*spak2k7
      abb38(33)=abb38(29)*abb38(14)
      abb38(34)=abb38(33)*spak2k4
      abb38(34)=abb38(34)-abb38(21)
      abb38(35)=abb38(34)*spak1k2
      abb38(36)=abb38(32)-abb38(35)
      abb38(27)=abb38(27)+abb38(36)
      abb38(27)=abb38(27)*spbl6k2
      abb38(37)=spbk7e7*abb38(7)
      abb38(38)=abb38(16)*abb38(37)
      abb38(39)=abb38(38)*spak2k7
      abb38(40)=spbe7k1*abb38(7)
      abb38(41)=abb38(16)*abb38(40)
      abb38(42)=abb38(41)*spak1k2
      abb38(39)=abb38(39)-abb38(42)
      abb38(39)=abb38(39)*abb38(2)
      abb38(42)=spak2k4*abb38(7)
      abb38(43)=-abb38(42)*abb38(24)
      abb38(39)=abb38(39)+abb38(43)
      abb38(43)=abb38(39)*abb38(2)
      abb38(22)=abb38(22)*abb38(28)
      abb38(44)=abb38(42)*abb38(22)
      abb38(44)=abb38(44)-abb38(38)
      abb38(45)=abb38(44)*spak2k7
      abb38(14)=abb38(14)*abb38(28)
      abb38(46)=abb38(42)*abb38(14)
      abb38(46)=abb38(46)-abb38(41)
      abb38(47)=abb38(46)*spak1k2
      abb38(48)=abb38(45)-abb38(47)
      abb38(43)=abb38(43)+abb38(48)
      abb38(43)=abb38(43)*spbl5k2
      abb38(49)=abb38(37)*abb38(15)
      abb38(50)=abb38(49)*spak2k7
      abb38(51)=abb38(40)*abb38(15)
      abb38(52)=abb38(51)*spak1k2
      abb38(50)=abb38(50)-abb38(52)
      abb38(50)=abb38(50)*abb38(2)
      abb38(52)=-abb38(7)*abb38(24)
      abb38(50)=abb38(50)+abb38(52)
      abb38(52)=abb38(50)*abb38(2)
      abb38(22)=abb38(22)*abb38(7)
      abb38(22)=abb38(22)-abb38(49)
      abb38(53)=abb38(22)*spak2k7
      abb38(14)=abb38(14)*abb38(7)
      abb38(14)=abb38(51)-abb38(14)
      abb38(54)=abb38(14)*spak1k2
      abb38(55)=abb38(53)+abb38(54)
      abb38(56)=abb38(52)+abb38(55)
      abb38(57)=spbl5k3*spak3k4
      abb38(56)=abb38(56)*abb38(57)
      abb38(58)=abb38(17)*abb38(15)
      abb38(59)=abb38(58)*spak2k7
      abb38(60)=abb38(20)*abb38(15)
      abb38(61)=abb38(60)*spak1k2
      abb38(59)=abb38(59)-abb38(61)
      abb38(59)=abb38(59)*abb38(2)
      abb38(24)=-abb38(6)*abb38(24)
      abb38(24)=abb38(59)+abb38(24)
      abb38(59)=abb38(24)*abb38(2)
      abb38(30)=abb38(30)-abb38(58)
      abb38(61)=abb38(30)*spak2k7
      abb38(33)=abb38(60)-abb38(33)
      abb38(62)=abb38(33)*spak1k2
      abb38(63)=abb38(61)+abb38(62)
      abb38(64)=abb38(59)+abb38(63)
      abb38(65)=spbl6k3*spak3k4
      abb38(64)=abb38(64)*abb38(65)
      abb38(27)=-abb38(64)+abb38(27)+abb38(43)-abb38(56)
      abb38(43)=2.0_ki*abb38(27)
      abb38(56)=abb38(13)*c3
      abb38(64)=abb38(56)*NC
      abb38(66)=mB**3
      abb38(67)=abb38(66)*spbk3k2
      abb38(68)=abb38(67)*abb38(64)
      abb38(69)=abb38(68)*spak2k4
      abb38(70)=abb38(6)**2
      abb38(71)=abb38(70)*spbe7k1
      abb38(72)=abb38(69)*abb38(71)
      abb38(13)=abb38(13)*c4
      abb38(73)=abb38(67)*abb38(13)
      abb38(74)=abb38(73)*spak2k4
      abb38(75)=abb38(74)*abb38(71)
      abb38(72)=abb38(72)-abb38(75)
      abb38(72)=abb38(72)*spak1k2
      abb38(76)=abb38(70)*spbk7e7
      abb38(77)=abb38(69)*abb38(76)
      abb38(78)=abb38(74)*abb38(76)
      abb38(77)=abb38(77)-abb38(78)
      abb38(77)=abb38(77)*spak2k7
      abb38(72)=abb38(72)-abb38(77)
      abb38(77)=spbl6k2*abb38(72)
      abb38(79)=abb38(71)*abb38(68)
      abb38(80)=abb38(71)*abb38(73)
      abb38(79)=abb38(79)-abb38(80)
      abb38(79)=abb38(79)*spak1k2
      abb38(81)=abb38(76)*abb38(68)
      abb38(82)=abb38(76)*abb38(73)
      abb38(81)=abb38(81)-abb38(82)
      abb38(81)=abb38(81)*spak2k7
      abb38(79)=abb38(79)-abb38(81)
      abb38(81)=-abb38(79)*abb38(65)
      abb38(83)=abb38(37)*abb38(6)
      abb38(84)=abb38(83)*abb38(68)
      abb38(85)=abb38(83)*abb38(73)
      abb38(84)=abb38(84)-abb38(85)
      abb38(84)=abb38(84)*spak2k7
      abb38(86)=abb38(40)*abb38(6)
      abb38(87)=abb38(86)*abb38(68)
      abb38(88)=abb38(86)*abb38(73)
      abb38(87)=abb38(87)-abb38(88)
      abb38(87)=abb38(87)*spak1k2
      abb38(84)=abb38(84)-abb38(87)
      abb38(87)=abb38(84)*abb38(57)
      abb38(77)=abb38(87)+abb38(77)+abb38(81)
      abb38(77)=abb38(8)*abb38(77)
      abb38(81)=abb38(7)**2
      abb38(87)=abb38(81)*spbe7k1
      abb38(89)=abb38(69)*abb38(87)
      abb38(90)=abb38(74)*abb38(87)
      abb38(89)=abb38(89)-abb38(90)
      abb38(89)=abb38(89)*spak1k2
      abb38(91)=abb38(81)*spbk7e7
      abb38(69)=abb38(69)*abb38(91)
      abb38(74)=abb38(74)*abb38(91)
      abb38(69)=abb38(69)-abb38(74)
      abb38(69)=abb38(69)*spak2k7
      abb38(69)=abb38(89)-abb38(69)
      abb38(89)=spbl5k2*abb38(69)
      abb38(92)=abb38(84)*abb38(65)
      abb38(93)=abb38(87)*abb38(68)
      abb38(94)=abb38(87)*abb38(73)
      abb38(93)=abb38(93)-abb38(94)
      abb38(93)=abb38(93)*spak1k2
      abb38(95)=abb38(91)*abb38(68)
      abb38(96)=abb38(91)*abb38(73)
      abb38(95)=abb38(95)-abb38(96)
      abb38(95)=abb38(95)*spak2k7
      abb38(93)=abb38(93)-abb38(95)
      abb38(95)=-abb38(93)*abb38(57)
      abb38(89)=abb38(95)+abb38(89)+abb38(92)
      abb38(89)=abb38(9)*abb38(89)
      abb38(92)=abb38(26)*abb38(37)
      abb38(95)=abb38(92)*abb38(68)
      abb38(97)=abb38(92)*abb38(73)
      abb38(95)=abb38(95)-abb38(97)
      abb38(95)=abb38(95)*spak2k7
      abb38(98)=abb38(26)*abb38(40)
      abb38(68)=abb38(98)*abb38(68)
      abb38(73)=abb38(98)*abb38(73)
      abb38(68)=abb38(68)-abb38(73)
      abb38(68)=abb38(68)*spak1k2
      abb38(68)=abb38(95)-abb38(68)
      abb38(95)=2.0_ki*abb38(68)
      abb38(77)=abb38(89)-abb38(95)+abb38(77)
      abb38(77)=es712*abb38(77)
      abb38(11)=abb38(1)*spbk3k2*abb38(11)
      abb38(89)=abb38(11)*c4
      abb38(99)=abb38(89)*abb38(66)
      abb38(100)=-abb38(92)*abb38(99)
      abb38(29)=abb38(29)*abb38(11)*abb38(66)
      abb38(101)=spak2k4*abb38(29)
      abb38(102)=abb38(37)*abb38(101)
      abb38(100)=abb38(100)+abb38(102)
      abb38(100)=spak2k7*abb38(100)
      abb38(99)=abb38(98)*abb38(99)
      abb38(101)=-abb38(40)*abb38(101)
      abb38(99)=abb38(99)+abb38(101)
      abb38(99)=spak1k2*abb38(99)
      abb38(99)=abb38(100)+abb38(99)
      abb38(11)=abb38(11)*abb38(28)
      abb38(28)=spak2k4*abb38(11)
      abb38(100)=abb38(66)*spbk7e7
      abb38(101)=abb38(100)*abb38(70)
      abb38(102)=abb38(101)*abb38(28)
      abb38(103)=abb38(89)*spak2k4
      abb38(104)=abb38(70)*abb38(103)
      abb38(105)=-abb38(100)*abb38(104)
      abb38(102)=abb38(105)+abb38(102)
      abb38(102)=spak2k7*abb38(102)
      abb38(105)=abb38(66)*spbe7k1
      abb38(106)=abb38(105)*abb38(70)
      abb38(107)=-abb38(106)*abb38(28)
      abb38(104)=abb38(105)*abb38(104)
      abb38(104)=abb38(104)+abb38(107)
      abb38(104)=spak1k2*abb38(104)
      abb38(102)=abb38(102)+abb38(104)
      abb38(102)=spbl6k2*abb38(102)
      abb38(104)=abb38(29)*abb38(37)
      abb38(107)=abb38(66)*abb38(6)
      abb38(108)=abb38(107)*abb38(37)
      abb38(109)=abb38(108)*abb38(89)
      abb38(104)=abb38(109)-abb38(104)
      abb38(104)=abb38(104)*spak2k7
      abb38(29)=abb38(29)*abb38(40)
      abb38(107)=abb38(107)*abb38(40)
      abb38(109)=abb38(107)*abb38(89)
      abb38(29)=abb38(109)-abb38(29)
      abb38(29)=abb38(29)*spak1k2
      abb38(29)=abb38(104)-abb38(29)
      abb38(104)=abb38(29)*abb38(57)
      abb38(109)=-spak2k7*abb38(101)
      abb38(110)=spak1k2*abb38(106)
      abb38(109)=abb38(109)+abb38(110)
      abb38(11)=abb38(11)-abb38(89)
      abb38(89)=abb38(65)*abb38(11)*abb38(109)
      abb38(89)=abb38(104)+abb38(102)+abb38(89)
      abb38(89)=abb38(8)*abb38(89)
      abb38(102)=abb38(100)*abb38(81)
      abb38(104)=abb38(102)*abb38(28)
      abb38(103)=abb38(81)*abb38(103)
      abb38(100)=-abb38(100)*abb38(103)
      abb38(100)=abb38(100)+abb38(104)
      abb38(100)=spak2k7*abb38(100)
      abb38(104)=abb38(105)*abb38(81)
      abb38(28)=-abb38(104)*abb38(28)
      abb38(103)=abb38(105)*abb38(103)
      abb38(28)=abb38(103)+abb38(28)
      abb38(28)=spak1k2*abb38(28)
      abb38(28)=abb38(100)+abb38(28)
      abb38(28)=spbl5k2*abb38(28)
      abb38(29)=abb38(29)*abb38(65)
      abb38(100)=-spak2k7*abb38(102)
      abb38(103)=spak1k2*abb38(104)
      abb38(100)=abb38(100)+abb38(103)
      abb38(11)=abb38(57)*abb38(11)*abb38(100)
      abb38(11)=abb38(11)+abb38(28)+abb38(29)
      abb38(11)=abb38(9)*abb38(11)
      abb38(11)=abb38(77)+abb38(11)+2.0_ki*abb38(99)+abb38(89)
      abb38(28)=abb38(57)*abb38(22)
      abb38(29)=abb38(65)*abb38(30)
      abb38(77)=abb38(44)*spbl5k2
      abb38(89)=abb38(31)*spbl6k2
      abb38(28)=-abb38(28)-abb38(29)+abb38(77)+abb38(89)
      abb38(28)=abb38(28)*spak1k2
      abb38(28)=2.0_ki*abb38(28)
      abb38(29)=-spbl6k1*abb38(28)
      abb38(77)=abb38(32)+abb38(35)
      abb38(77)=abb38(77)*spbl6k2
      abb38(89)=abb38(61)-abb38(62)
      abb38(89)=abb38(89)*abb38(65)
      abb38(77)=abb38(77)-abb38(89)
      abb38(89)=2.0_ki*spbl5k2
      abb38(99)=abb38(45)*abb38(89)
      abb38(100)=2.0_ki*abb38(57)
      abb38(103)=-abb38(53)*abb38(100)
      abb38(99)=abb38(103)+abb38(99)+abb38(77)
      abb38(99)=spbk7l6*abb38(99)
      abb38(103)=abb38(55)*abb38(65)
      abb38(105)=abb38(48)*spbl6k2
      abb38(103)=abb38(103)-abb38(105)
      abb38(105)=spbk7l5*abb38(103)
      abb38(29)=abb38(29)+abb38(99)+abb38(105)
      abb38(29)=spal6k7*abb38(29)
      abb38(28)=-spbl5k1*abb38(28)
      abb38(99)=abb38(63)*abb38(57)
      abb38(105)=abb38(36)*spbl5k2
      abb38(99)=abb38(99)-abb38(105)
      abb38(105)=spbk7l6*abb38(99)
      abb38(45)=abb38(45)+abb38(47)
      abb38(45)=abb38(45)*spbl5k2
      abb38(53)=abb38(53)-abb38(54)
      abb38(53)=abb38(53)*abb38(57)
      abb38(45)=abb38(45)-abb38(53)
      abb38(53)=2.0_ki*spbl6k2
      abb38(32)=abb38(32)*abb38(53)
      abb38(109)=2.0_ki*abb38(65)
      abb38(61)=-abb38(61)*abb38(109)
      abb38(32)=abb38(61)+abb38(32)+abb38(45)
      abb38(32)=spbk7l5*abb38(32)
      abb38(28)=abb38(28)+abb38(105)+abb38(32)
      abb38(28)=spal5k7*abb38(28)
      abb38(32)=abb38(57)*abb38(14)
      abb38(61)=abb38(65)*abb38(33)
      abb38(105)=abb38(46)*spbl5k2
      abb38(110)=abb38(34)*spbl6k2
      abb38(32)=abb38(32)+abb38(61)+abb38(105)+abb38(110)
      abb38(32)=abb38(32)*spak2k7
      abb38(32)=2.0_ki*abb38(32)
      abb38(61)=-spbk7l6*abb38(32)
      abb38(47)=abb38(47)*abb38(89)
      abb38(100)=abb38(54)*abb38(100)
      abb38(47)=abb38(100)+abb38(47)+abb38(77)
      abb38(47)=spbl6k1*abb38(47)
      abb38(77)=-spbl5k1*abb38(103)
      abb38(47)=abb38(77)+abb38(61)+abb38(47)
      abb38(47)=spak1l6*abb38(47)
      abb38(32)=-spbk7l5*abb38(32)
      abb38(61)=-spbl6k1*abb38(99)
      abb38(35)=abb38(35)*abb38(53)
      abb38(77)=abb38(62)*abb38(109)
      abb38(35)=abb38(77)+abb38(35)+abb38(45)
      abb38(35)=spbl5k1*abb38(35)
      abb38(32)=abb38(35)+abb38(32)+abb38(61)
      abb38(32)=spak1l5*abb38(32)
      abb38(35)=abb38(64)*abb38(66)
      abb38(45)=spbk3k2**2
      abb38(61)=abb38(45)*abb38(35)
      abb38(77)=abb38(61)*abb38(76)
      abb38(66)=abb38(66)*abb38(13)
      abb38(99)=abb38(45)*abb38(66)
      abb38(100)=abb38(76)*abb38(99)
      abb38(77)=abb38(77)-abb38(100)
      abb38(103)=spak2k7**2
      abb38(105)=-abb38(77)*abb38(103)
      abb38(109)=abb38(61)*abb38(71)
      abb38(110)=abb38(71)*abb38(99)
      abb38(109)=abb38(109)-abb38(110)
      abb38(109)=abb38(109)*spak1k2
      abb38(111)=spak2k7*abb38(109)
      abb38(105)=abb38(105)+abb38(111)
      abb38(111)=abb38(8)*spak3k4
      abb38(105)=abb38(105)*abb38(111)
      abb38(112)=abb38(61)*abb38(83)
      abb38(113)=abb38(83)*abb38(99)
      abb38(112)=abb38(112)-abb38(113)
      abb38(114)=abb38(112)*abb38(103)
      abb38(115)=abb38(61)*abb38(86)
      abb38(116)=abb38(86)*abb38(99)
      abb38(115)=abb38(115)-abb38(116)
      abb38(115)=abb38(115)*spak1k2
      abb38(117)=abb38(115)*spak2k7
      abb38(114)=abb38(114)-abb38(117)
      abb38(117)=abb38(9)*spak3k4
      abb38(118)=-abb38(114)*abb38(117)
      abb38(105)=abb38(105)+abb38(118)
      abb38(105)=spbk7l6*abb38(105)
      abb38(114)=-abb38(114)*abb38(111)
      abb38(118)=abb38(61)*abb38(91)
      abb38(119)=abb38(91)*abb38(99)
      abb38(118)=abb38(118)-abb38(119)
      abb38(120)=-abb38(118)*abb38(103)
      abb38(61)=abb38(61)*abb38(87)
      abb38(99)=abb38(87)*abb38(99)
      abb38(61)=abb38(61)-abb38(99)
      abb38(61)=abb38(61)*spak1k2
      abb38(121)=spak2k7*abb38(61)
      abb38(120)=abb38(120)+abb38(121)
      abb38(120)=abb38(120)*abb38(117)
      abb38(114)=abb38(114)+abb38(120)
      abb38(114)=spbk7l5*abb38(114)
      abb38(77)=abb38(77)*spak2k7
      abb38(77)=abb38(77)-abb38(109)
      abb38(109)=spak1k2*abb38(77)*abb38(111)
      abb38(112)=abb38(112)*spak2k7
      abb38(112)=abb38(112)-abb38(115)
      abb38(115)=abb38(112)*spak1k2
      abb38(120)=abb38(117)*abb38(115)
      abb38(109)=abb38(109)+abb38(120)
      abb38(109)=spbl6k1*abb38(109)
      abb38(115)=abb38(111)*abb38(115)
      abb38(118)=abb38(118)*spak2k7
      abb38(61)=abb38(118)-abb38(61)
      abb38(118)=spak1k2*abb38(61)*abb38(117)
      abb38(115)=abb38(115)+abb38(118)
      abb38(115)=spbl5k1*abb38(115)
      abb38(11)=abb38(32)+abb38(47)+abb38(28)+abb38(29)+abb38(115)+abb38(109)+a&
      &bb38(114)+abb38(105)+2.0_ki*abb38(11)
      abb38(11)=2.0_ki*abb38(11)
      abb38(28)=abb38(55)*abb38(57)
      abb38(29)=abb38(63)*abb38(65)
      abb38(32)=abb38(48)*spbl5k2
      abb38(47)=abb38(36)*spbl6k2
      abb38(28)=-abb38(28)-abb38(29)+abb38(32)+abb38(47)
      abb38(28)=4.0_ki*abb38(28)
      abb38(29)=2.0_ki*abb38(2)
      abb38(19)=abb38(19)*abb38(29)
      abb38(19)=abb38(19)-abb38(36)
      abb38(19)=abb38(19)*spbl6k2
      abb38(32)=abb38(39)*abb38(29)
      abb38(32)=abb38(32)-abb38(48)
      abb38(32)=abb38(32)*spbl5k2
      abb38(24)=abb38(24)*abb38(29)
      abb38(24)=abb38(24)-abb38(63)
      abb38(36)=abb38(24)*abb38(65)
      abb38(39)=abb38(50)*abb38(29)
      abb38(39)=abb38(39)-abb38(55)
      abb38(47)=abb38(39)*abb38(57)
      abb38(19)=-abb38(32)-abb38(19)+abb38(36)+abb38(47)
      abb38(19)=4.0_ki*abb38(19)
      abb38(32)=abb38(44)*spbl5k1
      abb38(36)=abb38(46)*spbk7l5
      abb38(47)=abb38(31)*spbl6k1
      abb38(48)=abb38(34)*spbk7l6
      abb38(32)=abb38(32)-abb38(36)+abb38(47)-abb38(48)
      abb38(32)=abb38(32)*spak1k7
      abb38(36)=abb38(55)*spbk7l5
      abb38(47)=abb38(63)*spbk7l6
      abb38(36)=abb38(36)+abb38(47)
      abb38(47)=spak4k7*abb38(36)
      abb38(48)=abb38(55)*spbl5k1
      abb38(50)=abb38(63)*spbl6k1
      abb38(48)=abb38(48)+abb38(50)
      abb38(50)=-spak1k4*abb38(48)
      abb38(105)=spak4l5*spbl6l5
      abb38(109)=abb38(105)*abb38(24)
      abb38(114)=spak4l6*spbl6l5
      abb38(115)=abb38(114)*abb38(39)
      abb38(118)=abb38(25)*abb38(42)
      abb38(41)=abb38(41)*abb38(2)
      abb38(41)=abb38(118)-abb38(41)
      abb38(41)=abb38(41)*abb38(2)
      abb38(118)=abb38(41)-abb38(46)
      abb38(120)=2.0_ki*spbl6l5
      abb38(121)=abb38(120)*spak1l6
      abb38(118)=abb38(118)*abb38(121)
      abb38(42)=abb38(23)*abb38(42)
      abb38(38)=abb38(38)*abb38(2)
      abb38(38)=abb38(42)-abb38(38)
      abb38(38)=abb38(38)*abb38(2)
      abb38(42)=abb38(38)-abb38(44)
      abb38(122)=abb38(120)*spal6k7
      abb38(42)=abb38(42)*abb38(122)
      abb38(123)=abb38(25)*abb38(26)
      abb38(21)=abb38(21)*abb38(2)
      abb38(21)=abb38(123)-abb38(21)
      abb38(21)=abb38(21)*abb38(2)
      abb38(123)=abb38(21)-abb38(34)
      abb38(124)=abb38(120)*spak1l5
      abb38(123)=abb38(123)*abb38(124)
      abb38(26)=abb38(23)*abb38(26)
      abb38(18)=abb38(18)*abb38(2)
      abb38(18)=abb38(26)-abb38(18)
      abb38(18)=abb38(18)*abb38(2)
      abb38(26)=abb38(18)-abb38(31)
      abb38(120)=abb38(120)*spal5k7
      abb38(26)=abb38(26)*abb38(120)
      abb38(26)=-abb38(123)+abb38(118)-abb38(42)+abb38(26)+abb38(32)-abb38(109)&
      &+abb38(115)+abb38(50)+abb38(47)
      abb38(32)=abb38(8)*spbl6k2
      abb38(42)=abb38(72)*abb38(32)
      abb38(47)=abb38(9)*spbl5k2
      abb38(50)=abb38(69)*abb38(47)
      abb38(42)=-abb38(95)+abb38(42)+abb38(50)
      abb38(42)=abb38(26)+3.0_ki*abb38(42)
      abb38(42)=4.0_ki*abb38(42)
      abb38(50)=abb38(56)*spak2k7
      abb38(95)=-abb38(76)*abb38(50)
      abb38(109)=abb38(56)*spak1k2
      abb38(115)=abb38(71)*abb38(109)
      abb38(95)=abb38(95)+abb38(115)
      abb38(115)=abb38(67)*spak2k4
      abb38(95)=abb38(115)*abb38(95)
      abb38(78)=spak2k7*abb38(78)
      abb38(75)=-spak1k2*abb38(75)
      abb38(75)=abb38(78)+abb38(75)
      abb38(75)=abb38(2)*abb38(75)
      abb38(75)=abb38(75)+abb38(95)
      abb38(75)=abb38(2)*abb38(75)
      abb38(72)=abb38(75)-abb38(72)
      abb38(53)=abb38(72)*abb38(53)
      abb38(72)=abb38(109)*spbe7k1
      abb38(75)=abb38(50)*spbk7e7
      abb38(72)=abb38(72)-abb38(75)
      abb38(72)=abb38(72)*abb38(67)
      abb38(70)=-abb38(70)*abb38(72)
      abb38(75)=-spak2k7*abb38(82)
      abb38(78)=spak1k2*abb38(80)
      abb38(75)=abb38(75)+abb38(78)
      abb38(75)=abb38(2)*abb38(75)
      abb38(70)=abb38(75)+abb38(70)
      abb38(70)=abb38(70)*abb38(29)
      abb38(70)=abb38(70)-abb38(79)
      abb38(70)=abb38(70)*abb38(65)
      abb38(75)=abb38(88)*spak1k2
      abb38(78)=abb38(85)*spak2k7
      abb38(75)=abb38(75)-abb38(78)
      abb38(75)=abb38(75)*abb38(2)
      abb38(78)=abb38(50)*abb38(67)
      abb38(79)=abb38(78)*abb38(83)
      abb38(67)=abb38(109)*abb38(67)
      abb38(80)=abb38(67)*abb38(86)
      abb38(75)=abb38(75)+abb38(79)-abb38(80)
      abb38(75)=abb38(75)*abb38(29)
      abb38(75)=abb38(75)+abb38(84)
      abb38(79)=abb38(75)*abb38(57)
      abb38(53)=abb38(79)+abb38(53)+abb38(70)
      abb38(53)=abb38(8)*abb38(53)
      abb38(70)=-abb38(91)*abb38(50)
      abb38(79)=abb38(87)*abb38(109)
      abb38(70)=abb38(70)+abb38(79)
      abb38(70)=abb38(115)*abb38(70)
      abb38(74)=spak2k7*abb38(74)
      abb38(79)=-spak1k2*abb38(90)
      abb38(74)=abb38(74)+abb38(79)
      abb38(74)=abb38(2)*abb38(74)
      abb38(70)=abb38(74)+abb38(70)
      abb38(70)=abb38(2)*abb38(70)
      abb38(69)=abb38(70)-abb38(69)
      abb38(69)=abb38(69)*abb38(89)
      abb38(70)=abb38(75)*abb38(65)
      abb38(72)=-abb38(81)*abb38(72)
      abb38(74)=-spak2k7*abb38(96)
      abb38(75)=spak1k2*abb38(94)
      abb38(74)=abb38(74)+abb38(75)
      abb38(74)=abb38(2)*abb38(74)
      abb38(72)=abb38(74)+abb38(72)
      abb38(72)=abb38(72)*abb38(29)
      abb38(72)=abb38(72)-abb38(93)
      abb38(72)=abb38(72)*abb38(57)
      abb38(69)=abb38(72)+abb38(69)+abb38(70)
      abb38(69)=abb38(9)*abb38(69)
      abb38(70)=spak2k7*abb38(97)
      abb38(72)=-spak1k2*abb38(73)
      abb38(70)=abb38(70)+abb38(72)
      abb38(70)=abb38(2)*abb38(70)
      abb38(72)=-abb38(92)*abb38(78)
      abb38(67)=abb38(98)*abb38(67)
      abb38(67)=abb38(70)+abb38(72)+abb38(67)
      abb38(67)=abb38(2)*abb38(67)
      abb38(67)=abb38(67)+abb38(68)
      abb38(26)=abb38(69)+4.0_ki*abb38(67)+abb38(53)-abb38(26)
      abb38(26)=4.0_ki*abb38(26)
      abb38(27)=-4.0_ki*abb38(27)
      abb38(53)=abb38(23)*spak2k4
      abb38(16)=abb38(16)*abb38(2)
      abb38(67)=abb38(16)*spbk7e7
      abb38(53)=abb38(53)-abb38(67)
      abb38(67)=spbl5k2*abb38(53)
      abb38(15)=abb38(15)*abb38(2)
      abb38(68)=abb38(15)*spbk7e7
      abb38(68)=abb38(68)-abb38(23)
      abb38(69)=abb38(68)*abb38(57)
      abb38(67)=abb38(67)+abb38(69)
      abb38(67)=abb38(2)*abb38(67)
      abb38(69)=spbl6k2*abb38(18)
      abb38(58)=abb38(58)*abb38(2)
      abb38(70)=abb38(23)*abb38(6)
      abb38(58)=abb38(58)-abb38(70)
      abb38(58)=abb38(58)*abb38(2)
      abb38(70)=abb38(65)*abb38(58)
      abb38(69)=abb38(69)+abb38(70)
      abb38(69)=spak2l6*abb38(69)
      abb38(67)=abb38(69)+abb38(67)
      abb38(67)=4.0_ki*abb38(67)
      abb38(53)=spbl6k2*abb38(53)
      abb38(68)=abb38(68)*abb38(65)
      abb38(53)=abb38(53)+abb38(68)
      abb38(53)=abb38(2)*abb38(53)
      abb38(68)=spbl5k2*abb38(38)
      abb38(49)=abb38(49)*abb38(2)
      abb38(23)=abb38(23)*abb38(7)
      abb38(23)=abb38(49)-abb38(23)
      abb38(23)=abb38(23)*abb38(2)
      abb38(49)=abb38(57)*abb38(23)
      abb38(49)=abb38(68)+abb38(49)
      abb38(49)=spak2l5*abb38(49)
      abb38(49)=abb38(49)+abb38(53)
      abb38(49)=4.0_ki*abb38(49)
      abb38(35)=abb38(35)-abb38(66)
      abb38(53)=abb38(35)*spak2k7
      abb38(66)=abb38(83)*abb38(53)
      abb38(68)=abb38(35)*spak1k2
      abb38(69)=-abb38(86)*abb38(68)
      abb38(66)=abb38(66)+abb38(69)
      abb38(69)=abb38(76)*abb38(53)
      abb38(70)=-abb38(71)*abb38(68)
      abb38(69)=abb38(69)+abb38(70)
      abb38(69)=abb38(69)*abb38(32)
      abb38(70)=abb38(91)*abb38(53)
      abb38(72)=-abb38(87)*abb38(68)
      abb38(70)=abb38(70)+abb38(72)
      abb38(70)=abb38(70)*abb38(47)
      abb38(66)=abb38(70)+2.0_ki*abb38(66)+abb38(69)
      abb38(64)=abb38(64)*mB
      abb38(69)=abb38(64)*abb38(20)
      abb38(13)=abb38(13)*mB
      abb38(70)=abb38(13)*abb38(20)
      abb38(69)=abb38(69)-abb38(70)
      abb38(72)=spbk7l6*abb38(69)
      abb38(73)=abb38(64)*abb38(40)
      abb38(74)=abb38(13)*abb38(40)
      abb38(73)=abb38(73)-abb38(74)
      abb38(75)=spbk7l5*abb38(73)
      abb38(78)=abb38(64)*abb38(17)
      abb38(79)=abb38(13)*abb38(17)
      abb38(78)=abb38(78)-abb38(79)
      abb38(80)=-spbl6k1*abb38(78)
      abb38(64)=abb38(64)*abb38(37)
      abb38(13)=abb38(13)*abb38(37)
      abb38(64)=abb38(64)-abb38(13)
      abb38(81)=-spbl5k1*abb38(64)
      abb38(72)=abb38(81)+abb38(80)+abb38(72)+abb38(75)
      abb38(72)=spak1k7*abb38(72)
      abb38(75)=abb38(13)*abb38(2)
      abb38(56)=abb38(56)*mB
      abb38(80)=abb38(56)*abb38(37)
      abb38(75)=abb38(75)-abb38(80)
      abb38(81)=abb38(75)*abb38(2)
      abb38(82)=-abb38(81)-abb38(64)
      abb38(82)=abb38(82)*abb38(122)
      abb38(83)=abb38(79)*abb38(2)
      abb38(84)=abb38(56)*abb38(17)
      abb38(83)=abb38(83)-abb38(84)
      abb38(85)=abb38(83)*abb38(2)
      abb38(86)=abb38(85)+abb38(78)
      abb38(86)=abb38(86)*abb38(120)
      abb38(88)=abb38(74)*abb38(2)
      abb38(89)=abb38(56)*abb38(40)
      abb38(88)=abb38(88)-abb38(89)
      abb38(90)=abb38(88)*abb38(2)
      abb38(93)=abb38(90)+abb38(73)
      abb38(93)=abb38(93)*abb38(121)
      abb38(94)=abb38(70)*abb38(2)
      abb38(56)=abb38(56)*abb38(20)
      abb38(94)=abb38(94)-abb38(56)
      abb38(95)=abb38(94)*abb38(2)
      abb38(96)=-abb38(95)-abb38(69)
      abb38(96)=abb38(96)*abb38(124)
      abb38(66)=abb38(72)+abb38(96)+abb38(93)+abb38(86)+3.0_ki*abb38(66)+abb38(&
      &82)
      abb38(66)=es34*abb38(66)
      abb38(39)=-spak3l6*abb38(39)
      abb38(24)=spak3l5*abb38(24)
      abb38(24)=abb38(24)+abb38(39)
      abb38(24)=spbl6l5*abb38(24)
      abb38(39)=abb38(79)*spak2k7
      abb38(70)=abb38(70)*spak1k2
      abb38(39)=abb38(39)-abb38(70)
      abb38(39)=abb38(39)*abb38(2)
      abb38(70)=abb38(84)*spak2k7
      abb38(56)=abb38(56)*spak1k2
      abb38(39)=abb38(39)-abb38(70)+abb38(56)
      abb38(39)=abb38(39)*abb38(29)
      abb38(56)=abb38(69)*spak1k2
      abb38(70)=abb38(78)*spak2k7
      abb38(56)=abb38(56)-abb38(70)
      abb38(39)=abb38(39)+abb38(56)
      abb38(39)=abb38(39)*abb38(105)
      abb38(13)=abb38(13)*spak2k7
      abb38(70)=abb38(74)*spak1k2
      abb38(13)=abb38(13)-abb38(70)
      abb38(13)=abb38(13)*abb38(2)
      abb38(70)=abb38(80)*spak2k7
      abb38(72)=abb38(89)*spak1k2
      abb38(13)=abb38(13)-abb38(70)+abb38(72)
      abb38(13)=abb38(13)*abb38(29)
      abb38(29)=abb38(73)*spak1k2
      abb38(70)=abb38(64)*spak2k7
      abb38(29)=abb38(29)-abb38(70)
      abb38(13)=abb38(13)+abb38(29)
      abb38(13)=abb38(13)*abb38(114)
      abb38(13)=abb38(39)-abb38(13)
      abb38(39)=spbk7l5*spak4k7
      abb38(70)=-spbl5k1*spak1k4
      abb38(39)=abb38(70)+abb38(39)
      abb38(39)=abb38(29)*abb38(39)
      abb38(70)=spbk7l6*spak4k7
      abb38(72)=-spbl6k1*spak1k4
      abb38(70)=abb38(72)+abb38(70)
      abb38(70)=abb38(56)*abb38(70)
      abb38(39)=abb38(13)+abb38(70)+abb38(39)
      abb38(39)=spbk4k2*abb38(39)
      abb38(70)=abb38(10)*c3
      abb38(72)=abb38(70)*NC
      abb38(10)=abb38(10)*c4
      abb38(74)=abb38(10)-abb38(72)
      abb38(74)=abb38(12)*abb38(74)
      abb38(79)=abb38(74)*spak2k7
      abb38(80)=abb38(108)*abb38(79)
      abb38(74)=abb38(74)*spak1k2
      abb38(82)=-abb38(107)*abb38(74)
      abb38(80)=abb38(80)+abb38(82)
      abb38(82)=abb38(101)*abb38(79)
      abb38(84)=-abb38(106)*abb38(74)
      abb38(82)=abb38(82)+abb38(84)
      abb38(82)=abb38(82)*abb38(32)
      abb38(79)=abb38(102)*abb38(79)
      abb38(74)=-abb38(104)*abb38(74)
      abb38(74)=abb38(79)+abb38(74)
      abb38(74)=abb38(74)*abb38(47)
      abb38(74)=abb38(74)+2.0_ki*abb38(80)+abb38(82)
      abb38(12)=abb38(12)*mB
      abb38(72)=abb38(72)*abb38(12)
      abb38(10)=abb38(10)*abb38(12)
      abb38(72)=abb38(72)-abb38(10)
      abb38(79)=abb38(72)*abb38(20)
      abb38(80)=-spbk7l6*abb38(79)
      abb38(82)=abb38(72)*abb38(40)
      abb38(84)=-spbk7l5*abb38(82)
      abb38(86)=abb38(72)*abb38(17)
      abb38(89)=spbl6k1*abb38(86)
      abb38(72)=abb38(72)*abb38(37)
      abb38(93)=spbl5k1*abb38(72)
      abb38(80)=abb38(93)+abb38(89)+abb38(80)+abb38(84)
      abb38(80)=spak1k7*abb38(80)
      abb38(36)=-spak3k7*abb38(36)
      abb38(48)=spak1k3*abb38(48)
      abb38(10)=abb38(10)*abb38(2)
      abb38(12)=abb38(70)*abb38(12)
      abb38(10)=abb38(10)-abb38(12)
      abb38(10)=abb38(10)*abb38(2)
      abb38(12)=abb38(37)*abb38(10)
      abb38(12)=abb38(12)+abb38(72)
      abb38(12)=abb38(12)*abb38(122)
      abb38(17)=-abb38(17)*abb38(10)
      abb38(17)=abb38(17)-abb38(86)
      abb38(17)=abb38(17)*abb38(120)
      abb38(37)=-abb38(40)*abb38(10)
      abb38(37)=abb38(37)-abb38(82)
      abb38(37)=abb38(37)*abb38(121)
      abb38(10)=abb38(20)*abb38(10)
      abb38(10)=abb38(10)+abb38(79)
      abb38(10)=abb38(10)*abb38(124)
      abb38(10)=abb38(48)+abb38(36)+abb38(66)+abb38(80)+abb38(10)+abb38(37)+abb&
      &38(17)+3.0_ki*abb38(74)+abb38(12)+abb38(39)+abb38(24)
      abb38(10)=2.0_ki*abb38(10)
      abb38(12)=abb38(69)*spak2k4
      abb38(17)=-spbk7l6*abb38(12)
      abb38(20)=abb38(73)*spak2k4
      abb38(24)=-spbk7l5*abb38(20)
      abb38(36)=abb38(78)*spak2k4
      abb38(37)=spbl6k1*abb38(36)
      abb38(39)=abb38(64)*spak2k4
      abb38(40)=spbl5k1*abb38(39)
      abb38(17)=abb38(40)+abb38(37)+abb38(17)+abb38(24)
      abb38(17)=spak1k7*abb38(17)
      abb38(24)=-abb38(92)*abb38(53)
      abb38(37)=abb38(98)*abb38(68)
      abb38(24)=abb38(24)+abb38(37)
      abb38(35)=-spak2k4*abb38(35)
      abb38(37)=spak2k7*abb38(76)
      abb38(40)=-spak1k2*abb38(71)
      abb38(37)=abb38(37)+abb38(40)
      abb38(32)=abb38(32)*abb38(35)*abb38(37)
      abb38(37)=spak2k7*abb38(91)
      abb38(40)=-spak1k2*abb38(87)
      abb38(37)=abb38(37)+abb38(40)
      abb38(35)=abb38(47)*abb38(35)*abb38(37)
      abb38(24)=abb38(35)+2.0_ki*abb38(24)+abb38(32)
      abb38(32)=abb38(2)*spak2k4
      abb38(35)=abb38(75)*abb38(32)
      abb38(35)=abb38(35)+abb38(39)
      abb38(35)=abb38(35)*abb38(122)
      abb38(37)=-abb38(83)*abb38(32)
      abb38(36)=abb38(37)-abb38(36)
      abb38(36)=abb38(36)*abb38(120)
      abb38(37)=-abb38(88)*abb38(32)
      abb38(20)=abb38(37)-abb38(20)
      abb38(20)=abb38(20)*abb38(121)
      abb38(32)=abb38(94)*abb38(32)
      abb38(12)=abb38(32)+abb38(12)
      abb38(12)=abb38(12)*abb38(124)
      abb38(12)=abb38(17)+abb38(12)+abb38(20)+abb38(36)+abb38(35)+3.0_ki*abb38(&
      &24)-abb38(13)
      abb38(12)=spbk4k3*abb38(12)
      abb38(13)=spak4k7*spbk4k3
      abb38(17)=-abb38(56)*abb38(13)
      abb38(20)=abb38(30)*abb38(103)
      abb38(24)=spak2k7*abb38(62)
      abb38(17)=abb38(17)+abb38(20)+abb38(24)
      abb38(17)=spbk7l6*abb38(17)
      abb38(20)=-abb38(29)*abb38(13)
      abb38(24)=abb38(22)*abb38(103)
      abb38(32)=spak2k7*abb38(54)
      abb38(20)=abb38(20)+abb38(24)+abb38(32)
      abb38(20)=spbk7l5*abb38(20)
      abb38(24)=-spak1k2*abb38(63)
      abb38(32)=spak1k4*spbk4k3
      abb38(35)=abb38(56)*abb38(32)
      abb38(24)=abb38(24)+abb38(35)
      abb38(24)=spbl6k1*abb38(24)
      abb38(35)=-spak1k2*abb38(55)
      abb38(29)=abb38(29)*abb38(32)
      abb38(29)=abb38(35)+abb38(29)
      abb38(29)=spbl5k1*abb38(29)
      abb38(12)=abb38(29)+abb38(24)+abb38(20)+abb38(17)+abb38(12)
      abb38(12)=2.0_ki*abb38(12)
      abb38(17)=abb38(50)*abb38(45)
      abb38(20)=abb38(101)*abb38(17)
      abb38(24)=abb38(109)*abb38(45)
      abb38(29)=-abb38(106)*abb38(24)
      abb38(35)=-spak2k7*abb38(100)
      abb38(36)=spak1k2*abb38(110)
      abb38(35)=abb38(35)+abb38(36)
      abb38(35)=abb38(2)*abb38(35)
      abb38(20)=abb38(35)+abb38(20)+abb38(29)
      abb38(20)=abb38(2)*abb38(20)
      abb38(20)=abb38(20)+abb38(77)
      abb38(20)=abb38(20)*abb38(111)
      abb38(29)=abb38(116)*spak1k2
      abb38(35)=abb38(113)*spak2k7
      abb38(29)=abb38(29)-abb38(35)
      abb38(29)=abb38(29)*abb38(2)
      abb38(35)=abb38(17)*abb38(108)
      abb38(36)=abb38(24)*abb38(107)
      abb38(29)=abb38(29)+abb38(35)-abb38(36)
      abb38(29)=abb38(29)*abb38(2)
      abb38(29)=abb38(29)+abb38(112)
      abb38(35)=abb38(29)*abb38(117)
      abb38(18)=abb38(18)+abb38(31)
      abb38(36)=spbl6k2*abb38(18)
      abb38(37)=abb38(58)-abb38(30)
      abb38(39)=abb38(37)*abb38(65)
      abb38(36)=abb38(36)+abb38(39)
      abb38(36)=spal6k7*abb38(36)
      abb38(39)=spbl5k2*abb38(18)
      abb38(40)=abb38(37)*abb38(57)
      abb38(39)=abb38(39)+abb38(40)
      abb38(39)=spal5k7*abb38(39)
      abb38(40)=abb38(21)+abb38(34)
      abb38(45)=-spbl6k2*abb38(40)
      abb38(47)=abb38(25)*abb38(6)
      abb38(48)=abb38(60)*abb38(2)
      abb38(47)=abb38(47)-abb38(48)
      abb38(47)=abb38(47)*abb38(2)
      abb38(48)=abb38(47)-abb38(33)
      abb38(50)=abb38(48)*abb38(65)
      abb38(45)=abb38(45)+abb38(50)
      abb38(45)=spak1l6*abb38(45)
      abb38(50)=-spbl5k2*abb38(40)
      abb38(53)=abb38(48)*abb38(57)
      abb38(50)=abb38(50)+abb38(53)
      abb38(50)=spak1l5*abb38(50)
      abb38(20)=abb38(50)+abb38(45)+abb38(39)+abb38(36)+abb38(20)+abb38(35)
      abb38(33)=spbk7k3*abb38(33)
      abb38(30)=spbk3k1*abb38(30)
      abb38(30)=abb38(30)+abb38(33)
      abb38(30)=spak3k4*abb38(30)
      abb38(33)=spbk7k2*abb38(34)
      abb38(31)=-spbk2k1*abb38(31)
      abb38(30)=abb38(31)+abb38(33)+abb38(30)
      abb38(30)=spak1k7*abb38(30)
      abb38(20)=2.0_ki*abb38(20)+abb38(30)
      abb38(20)=2.0_ki*abb38(20)
      abb38(30)=abb38(37)*spak4k7
      abb38(31)=abb38(48)*spak1k4
      abb38(30)=abb38(30)+abb38(31)
      abb38(30)=16.0_ki*abb38(30)
      abb38(31)=4.0_ki*spak3k4
      abb38(33)=-abb38(37)*abb38(31)
      abb38(18)=-4.0_ki*abb38(18)
      abb38(34)=abb38(78)-abb38(85)
      abb38(35)=-spak4k7*abb38(34)
      abb38(36)=abb38(69)-abb38(95)
      abb38(39)=spak1k4*abb38(36)
      abb38(35)=abb38(35)+abb38(39)
      abb38(35)=spbk4k2*abb38(35)
      abb38(37)=spak3k7*abb38(37)
      abb38(39)=spak1k3*abb38(48)
      abb38(35)=abb38(39)+abb38(35)+abb38(37)
      abb38(35)=8.0_ki*abb38(35)
      abb38(34)=abb38(34)*abb38(13)
      abb38(36)=-abb38(36)*abb38(32)
      abb38(34)=abb38(36)+abb38(34)-abb38(59)+abb38(63)
      abb38(34)=8.0_ki*abb38(34)
      abb38(29)=abb38(29)*abb38(111)
      abb38(17)=abb38(102)*abb38(17)
      abb38(24)=-abb38(104)*abb38(24)
      abb38(36)=-spak2k7*abb38(119)
      abb38(37)=spak1k2*abb38(99)
      abb38(36)=abb38(36)+abb38(37)
      abb38(36)=abb38(2)*abb38(36)
      abb38(17)=abb38(36)+abb38(17)+abb38(24)
      abb38(17)=abb38(2)*abb38(17)
      abb38(17)=abb38(17)+abb38(61)
      abb38(17)=abb38(17)*abb38(117)
      abb38(24)=abb38(38)+abb38(44)
      abb38(36)=spbl6k2*abb38(24)
      abb38(23)=abb38(23)-abb38(22)
      abb38(37)=abb38(23)*abb38(65)
      abb38(36)=abb38(36)+abb38(37)
      abb38(36)=spal6k7*abb38(36)
      abb38(37)=spbl5k2*abb38(24)
      abb38(38)=abb38(23)*abb38(57)
      abb38(37)=abb38(37)+abb38(38)
      abb38(37)=spal5k7*abb38(37)
      abb38(38)=abb38(41)+abb38(46)
      abb38(39)=-spbl6k2*abb38(38)
      abb38(45)=abb38(25)*abb38(7)
      abb38(50)=abb38(51)*abb38(2)
      abb38(45)=abb38(45)-abb38(50)
      abb38(45)=abb38(45)*abb38(2)
      abb38(50)=abb38(45)-abb38(14)
      abb38(51)=abb38(50)*abb38(65)
      abb38(39)=abb38(39)+abb38(51)
      abb38(39)=spak1l6*abb38(39)
      abb38(51)=-spbl5k2*abb38(38)
      abb38(53)=abb38(50)*abb38(57)
      abb38(51)=abb38(51)+abb38(53)
      abb38(51)=spak1l5*abb38(51)
      abb38(17)=abb38(51)+abb38(39)+abb38(37)+abb38(36)+abb38(29)+abb38(17)
      abb38(14)=spbk7k3*abb38(14)
      abb38(22)=spbk3k1*abb38(22)
      abb38(14)=abb38(22)+abb38(14)
      abb38(14)=spak3k4*abb38(14)
      abb38(22)=spbk7k2*abb38(46)
      abb38(29)=-spbk2k1*abb38(44)
      abb38(14)=abb38(29)+abb38(22)+abb38(14)
      abb38(14)=spak1k7*abb38(14)
      abb38(14)=2.0_ki*abb38(17)+abb38(14)
      abb38(14)=2.0_ki*abb38(14)
      abb38(17)=abb38(23)*spak4k7
      abb38(22)=abb38(50)*spak1k4
      abb38(17)=abb38(17)+abb38(22)
      abb38(17)=16.0_ki*abb38(17)
      abb38(22)=-abb38(23)*abb38(31)
      abb38(24)=-4.0_ki*abb38(24)
      abb38(29)=abb38(64)-abb38(81)
      abb38(36)=-spak4k7*abb38(29)
      abb38(37)=abb38(73)-abb38(90)
      abb38(39)=spak1k4*abb38(37)
      abb38(36)=abb38(36)+abb38(39)
      abb38(36)=spbk4k2*abb38(36)
      abb38(23)=spak3k7*abb38(23)
      abb38(39)=spak1k3*abb38(50)
      abb38(23)=abb38(39)+abb38(36)+abb38(23)
      abb38(23)=8.0_ki*abb38(23)
      abb38(13)=abb38(29)*abb38(13)
      abb38(29)=-abb38(37)*abb38(32)
      abb38(13)=abb38(29)+abb38(13)-abb38(52)+abb38(55)
      abb38(13)=8.0_ki*abb38(13)
      abb38(29)=abb38(25)*spak2k4
      abb38(16)=abb38(16)*spbe7k1
      abb38(16)=abb38(29)-abb38(16)
      abb38(29)=spbl5k2*abb38(16)
      abb38(15)=abb38(15)*spbe7k1
      abb38(15)=abb38(15)-abb38(25)
      abb38(25)=abb38(15)*abb38(57)
      abb38(25)=abb38(29)+abb38(25)
      abb38(25)=abb38(2)*abb38(25)
      abb38(21)=spbl6k2*abb38(21)
      abb38(29)=-abb38(65)*abb38(47)
      abb38(21)=abb38(21)+abb38(29)
      abb38(21)=spak2l6*abb38(21)
      abb38(21)=abb38(21)+abb38(25)
      abb38(21)=4.0_ki*abb38(21)
      abb38(16)=spbl6k2*abb38(16)
      abb38(15)=abb38(15)*abb38(65)
      abb38(15)=abb38(16)+abb38(15)
      abb38(15)=abb38(2)*abb38(15)
      abb38(16)=spbl5k2*abb38(41)
      abb38(25)=-abb38(57)*abb38(45)
      abb38(16)=abb38(16)+abb38(25)
      abb38(16)=spak2l5*abb38(16)
      abb38(15)=abb38(16)+abb38(15)
      abb38(15)=4.0_ki*abb38(15)
      abb38(16)=abb38(48)*abb38(31)
      abb38(25)=abb38(50)*abb38(31)
      abb38(29)=-4.0_ki*abb38(40)
      abb38(31)=-4.0_ki*abb38(38)
      R2d38=abb38(43)
      rat2 = rat2 + R2d38
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='38' value='", &
          & R2d38, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd38h3
