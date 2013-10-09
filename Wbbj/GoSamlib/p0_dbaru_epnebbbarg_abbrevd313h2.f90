module     p0_dbaru_epnebbbarg_abbrevd313h2
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(124), public :: abb313
   complex(ki), public :: R2d313
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
      abb313(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb313(2)=sqrt(mB**2)
      abb313(3)=NC**(-1)
      abb313(4)=es234**(-1)
      abb313(5)=spak2l6**(-1)
      abb313(6)=spbl5k2**(-1)
      abb313(7)=spak2l5**(-1)
      abb313(8)=TR*gW
      abb313(8)=abb313(1)*abb313(8)**2
      abb313(9)=i_*CVDU
      abb313(10)=abb313(9)*abb313(4)*abb313(8)
      abb313(11)=abb313(10)*spbk3k2
      abb313(12)=abb313(11)*spak1l5
      abb313(13)=abb313(12)*c4
      abb313(14)=abb313(3)**2
      abb313(15)=abb313(14)*c2
      abb313(16)=abb313(15)*abb313(12)
      abb313(17)=abb313(11)*abb313(3)
      abb313(18)=abb313(17)*spak1l5
      abb313(19)=abb313(18)*c3
      abb313(20)=abb313(18)*c1
      abb313(16)=abb313(13)-abb313(20)+abb313(16)-abb313(19)
      abb313(19)=-spak2k4*abb313(16)
      abb313(20)=abb313(2)**2
      abb313(21)=abb313(19)*abb313(20)
      abb313(22)=spal5e7*spbl6k2
      abb313(23)=abb313(21)*abb313(22)
      abb313(24)=-spak3k4*abb313(16)
      abb313(25)=abb313(24)*abb313(20)
      abb313(26)=spbl6k3*spal5e7
      abb313(27)=-abb313(25)*abb313(26)
      abb313(23)=abb313(23)+abb313(27)
      abb313(23)=spbe7l5*abb313(23)
      abb313(27)=abb313(24)*spbl6k3
      abb313(28)=abb313(19)*spbl6k2
      abb313(27)=abb313(27)-abb313(28)
      abb313(28)=abb313(27)*abb313(20)*spak1e7
      abb313(29)=abb313(2)*mB
      abb313(30)=abb313(29)*abb313(5)
      abb313(31)=abb313(30)*spak2k4
      abb313(32)=-abb313(31)*abb313(16)
      abb313(33)=spbk7k2*spae7k7
      abb313(34)=abb313(33)*abb313(32)
      abb313(35)=-spak1k2*abb313(34)
      abb313(28)=abb313(35)+abb313(28)
      abb313(28)=spbe7k1*abb313(28)
      abb313(34)=-spbe7l5*abb313(34)
      abb313(35)=abb313(17)*c3
      abb313(36)=abb313(17)*c1
      abb313(37)=abb313(35)+abb313(36)
      abb313(38)=spak2k4*abb313(37)
      abb313(39)=abb313(11)*spak2k4
      abb313(40)=abb313(15)+c4
      abb313(41)=abb313(39)*abb313(40)
      abb313(38)=abb313(41)-abb313(38)
      abb313(42)=mB**2
      abb313(43)=abb313(42)*abb313(5)
      abb313(44)=abb313(43)*spak1e7
      abb313(45)=-abb313(38)*abb313(44)
      abb313(46)=abb313(20)*spbe7k2
      abb313(47)=-abb313(46)*abb313(45)
      abb313(48)=abb313(44)*abb313(37)
      abb313(49)=abb313(11)*spak1e7
      abb313(50)=abb313(49)*c4
      abb313(51)=-abb313(43)*abb313(50)
      abb313(48)=abb313(51)+abb313(48)
      abb313(51)=abb313(20)*spak3k4
      abb313(48)=abb313(51)*abb313(48)
      abb313(52)=abb313(15)*spak3k4
      abb313(53)=abb313(52)*abb313(49)
      abb313(54)=abb313(53)*abb313(43)
      abb313(55)=-abb313(20)*abb313(54)
      abb313(48)=abb313(55)+abb313(48)
      abb313(48)=spbe7k3*abb313(48)
      abb313(34)=abb313(48)+abb313(47)+abb313(34)
      abb313(34)=spak2l5*abb313(34)
      abb313(42)=abb313(42)*abb313(6)
      abb313(47)=abb313(42)*spak3k4
      abb313(48)=abb313(47)*abb313(50)
      abb313(55)=abb313(53)*abb313(42)
      abb313(48)=abb313(48)+abb313(55)
      abb313(55)=abb313(20)*abb313(48)
      abb313(56)=abb313(42)*spak1e7
      abb313(57)=-abb313(51)*abb313(56)*abb313(37)
      abb313(55)=abb313(57)+abb313(55)
      abb313(55)=spbe7k2*abb313(55)
      abb313(57)=abb313(50)*spak3k4
      abb313(53)=abb313(53)+abb313(57)
      abb313(58)=-abb313(29)*abb313(53)
      abb313(59)=spak3k4*abb313(37)
      abb313(60)=abb313(29)*spak1e7
      abb313(61)=abb313(60)*abb313(59)
      abb313(58)=abb313(61)+abb313(58)
      abb313(61)=spal5k7*spbk7e7
      abb313(58)=abb313(58)*abb313(61)
      abb313(55)=abb313(55)+abb313(58)
      abb313(55)=spbl6k3*abb313(55)
      abb313(58)=-abb313(30)*abb313(24)
      abb313(62)=abb313(58)*spae7k7
      abb313(63)=-spbe7k1*spak1k2
      abb313(64)=-spak2l5*spbe7l5
      abb313(63)=abb313(63)+abb313(64)
      abb313(63)=spbk7k3*abb313(62)*abb313(63)
      abb313(64)=c4*spak3k4
      abb313(65)=abb313(64)+abb313(52)
      abb313(66)=abb313(42)*abb313(11)
      abb313(67)=abb313(66)*abb313(65)
      abb313(68)=-abb313(47)*abb313(37)
      abb313(67)=abb313(68)+abb313(67)
      abb313(68)=abb313(67)*abb313(26)*spak1k2*spbe7k2
      abb313(69)=abb313(42)*abb313(38)
      abb313(70)=spbl6k2*spbe7k2
      abb313(71)=abb313(69)*abb313(70)*spak1k2*spal5e7
      abb313(68)=abb313(71)-abb313(68)
      abb313(71)=-abb313(7)*abb313(20)*abb313(68)
      abb313(72)=abb313(42)*abb313(5)
      abb313(73)=abb313(72)*spak1e7
      abb313(36)=abb313(73)*abb313(36)
      abb313(35)=abb313(73)*abb313(35)
      abb313(74)=abb313(50)*abb313(72)
      abb313(35)=abb313(36)+abb313(35)-abb313(74)
      abb313(36)=-abb313(51)*abb313(35)
      abb313(75)=abb313(72)*abb313(49)
      abb313(52)=abb313(75)*abb313(52)
      abb313(76)=abb313(20)*abb313(52)
      abb313(36)=abb313(76)+abb313(36)
      abb313(36)=spbe7k3*abb313(36)
      abb313(76)=-abb313(38)*abb313(73)
      abb313(77)=abb313(46)*abb313(76)
      abb313(36)=abb313(77)+abb313(36)
      abb313(36)=es12*abb313(36)
      abb313(78)=abb313(29)*abb313(6)
      abb313(53)=-abb313(78)*abb313(53)
      abb313(79)=abb313(78)*spak1e7
      abb313(80)=abb313(79)*abb313(59)
      abb313(53)=abb313(80)+abb313(53)
      abb313(53)=spbl6k3*abb313(53)
      abb313(80)=-abb313(38)*spbl6k2
      abb313(81)=-abb313(79)*abb313(80)
      abb313(53)=abb313(81)+abb313(53)
      abb313(81)=spak1k7*spbk7e7
      abb313(53)=spbk2k1*abb313(81)*abb313(53)
      abb313(70)=-abb313(70)*abb313(38)*abb313(56)
      abb313(82)=abb313(20)*abb313(70)
      abb313(83)=abb313(61)*abb313(60)
      abb313(80)=-abb313(80)*abb313(83)
      abb313(23)=abb313(53)+abb313(63)+abb313(36)+abb313(28)+abb313(23)+abb313(&
      &71)+abb313(55)+abb313(82)+abb313(80)+abb313(34)
      abb313(23)=4.0_ki*abb313(23)
      abb313(28)=-spbk7l5*spal5k7
      abb313(28)=-abb313(29)+es71-abb313(28)
      abb313(28)=abb313(27)*abb313(28)
      abb313(34)=-spbl5k3*abb313(58)
      abb313(36)=-spbl5k2*abb313(32)
      abb313(53)=-abb313(38)*abb313(43)
      abb313(55)=spbk7k2*spak1k7
      abb313(63)=abb313(53)*abb313(55)
      abb313(34)=abb313(36)+abb313(34)+abb313(63)
      abb313(34)=spak2l5*abb313(34)
      abb313(36)=-abb313(72)*abb313(38)
      abb313(38)=abb313(36)*abb313(55)
      abb313(63)=-abb313(38)+abb313(32)
      abb313(63)=es12*abb313(63)
      abb313(58)=spbk3k1*spak1k2*abb313(58)
      abb313(67)=abb313(67)*spbl6k3
      abb313(69)=abb313(69)*spbl6k2
      abb313(67)=abb313(69)-abb313(67)
      abb313(69)=abb313(7)*spak1k2*spal5k7
      abb313(69)=abb313(69)+spak1k7
      abb313(67)=spbk7k2*abb313(67)*abb313(69)
      abb313(66)=abb313(66)*abb313(5)
      abb313(65)=abb313(65)*abb313(66)
      abb313(69)=abb313(59)*abb313(72)
      abb313(65)=abb313(65)-abb313(69)
      abb313(65)=abb313(65)*es12
      abb313(69)=abb313(40)*abb313(11)
      abb313(71)=spak3k4*abb313(69)
      abb313(71)=abb313(71)-abb313(59)
      abb313(71)=abb313(71)*abb313(43)
      abb313(80)=spak2l5*abb313(71)
      abb313(80)=abb313(80)-abb313(65)
      abb313(80)=spbk7k3*spak1k7*abb313(80)
      abb313(28)=abb313(58)+abb313(80)+abb313(63)+abb313(34)+abb313(67)+abb313(&
      &28)
      abb313(28)=8.0_ki*abb313(28)
      abb313(34)=spbe7k1*spak1e7*abb313(27)
      abb313(26)=-abb313(26)*abb313(24)
      abb313(22)=abb313(19)*abb313(22)
      abb313(22)=abb313(26)+abb313(22)
      abb313(22)=abb313(22)*spbe7l5
      abb313(26)=abb313(73)*abb313(59)
      abb313(58)=abb313(74)*spak3k4
      abb313(26)=-abb313(52)+abb313(26)-abb313(58)
      abb313(52)=abb313(26)*spbe7k3
      abb313(58)=-abb313(76)*spbe7k2
      abb313(52)=abb313(52)+abb313(58)
      abb313(52)=abb313(52)*es12
      abb313(63)=abb313(68)*abb313(7)
      abb313(22)=-abb313(34)-abb313(22)+abb313(52)+abb313(63)-abb313(70)
      abb313(34)=abb313(44)*abb313(59)
      abb313(52)=abb313(57)*abb313(43)
      abb313(34)=-abb313(54)+abb313(34)-abb313(52)
      abb313(52)=spbe7k3*abb313(34)
      abb313(54)=-spbe7k2*abb313(45)
      abb313(52)=abb313(52)+abb313(54)
      abb313(52)=spak2l5*abb313(52)
      abb313(54)=abb313(59)*abb313(56)
      abb313(48)=abb313(54)-abb313(48)
      abb313(48)=abb313(48)*spbl6k3
      abb313(54)=-spbe7k2*abb313(48)
      abb313(52)=abb313(54)+abb313(52)-abb313(22)
      abb313(52)=8.0_ki*abb313(52)
      abb313(54)=-abb313(20)*abb313(16)
      abb313(57)=spak4e7*spbe7l6
      abb313(59)=abb313(54)*abb313(57)
      abb313(63)=-abb313(79)*abb313(37)
      abb313(67)=abb313(78)*abb313(15)
      abb313(68)=abb313(67)*abb313(49)
      abb313(70)=abb313(50)*abb313(78)
      abb313(63)=abb313(68)+abb313(70)+abb313(63)
      abb313(68)=spak4k7*spbk7e7
      abb313(70)=abb313(68)*spbl6k2
      abb313(74)=abb313(63)*abb313(70)
      abb313(80)=abb313(31)*abb313(37)
      abb313(82)=abb313(30)*abb313(41)
      abb313(80)=abb313(82)-abb313(80)
      abb313(82)=abb313(81)*spal5e7
      abb313(80)=abb313(80)*abb313(82)
      abb313(59)=-abb313(77)+abb313(74)+abb313(80)+abb313(59)
      abb313(74)=spak1e7*abb313(37)
      abb313(77)=abb313(74)*abb313(31)
      abb313(80)=abb313(30)*spak1e7
      abb313(41)=abb313(41)*abb313(80)
      abb313(41)=abb313(41)-abb313(77)
      abb313(41)=abb313(41)*abb313(61)
      abb313(41)=abb313(41)-abb313(59)
      abb313(41)=8.0_ki*abb313(41)
      abb313(77)=-abb313(16)*spbk7l6
      abb313(84)=abb313(77)*spak4k7
      abb313(85)=c4*abb313(11)
      abb313(85)=-abb313(85)+abb313(37)
      abb313(85)=abb313(78)*abb313(85)
      abb313(11)=abb313(67)*abb313(11)
      abb313(11)=-abb313(11)+abb313(85)
      abb313(67)=spak1k4*spbl6k2
      abb313(85)=abb313(11)*abb313(67)
      abb313(38)=-abb313(38)+abb313(84)-abb313(85)
      abb313(84)=abb313(38)+2.0_ki*abb313(32)
      abb313(84)=16.0_ki*abb313(84)
      abb313(85)=-abb313(57)*abb313(16)
      abb313(58)=abb313(85)+abb313(58)
      abb313(85)=16.0_ki*abb313(58)
      abb313(86)=abb313(19)*abb313(42)
      abb313(87)=abb313(7)*spbe7k2
      abb313(88)=spbk7l6*spae7k7
      abb313(89)=abb313(87)*abb313(88)
      abb313(90)=-abb313(86)*abb313(89)
      abb313(44)=abb313(80)+abb313(44)
      abb313(39)=-abb313(40)*abb313(44)*abb313(39)
      abb313(91)=c1+c3
      abb313(92)=abb313(91)*spak2k4
      abb313(17)=abb313(44)*abb313(17)*abb313(92)
      abb313(17)=abb313(17)+abb313(39)
      abb313(17)=abb313(17)*abb313(61)
      abb313(39)=-abb313(76)*spbk2k1
      abb313(44)=-abb313(81)*abb313(39)
      abb313(17)=abb313(44)+abb313(90)+abb313(17)+abb313(59)
      abb313(17)=8.0_ki*abb313(17)
      abb313(44)=abb313(7)*spbl6k2
      abb313(59)=abb313(86)*abb313(44)
      abb313(14)=c2*abb313(14)*abb313(12)
      abb313(13)=abb313(14)+abb313(13)
      abb313(76)=abb313(43)*spak2k4
      abb313(76)=abb313(76)+abb313(31)
      abb313(13)=abb313(76)*abb313(13)
      abb313(76)=abb313(30)+abb313(43)
      abb313(76)=-abb313(76)*abb313(18)*abb313(92)
      abb313(13)=abb313(59)-abb313(38)+abb313(76)+abb313(13)
      abb313(13)=16.0_ki*abb313(13)
      abb313(38)=abb313(75)*abb313(15)
      abb313(35)=-abb313(38)+abb313(35)
      abb313(38)=abb313(35)*abb313(68)
      abb313(38)=16.0_ki*abb313(38)
      abb313(59)=-abb313(72)*abb313(37)
      abb313(66)=abb313(66)*abb313(40)
      abb313(59)=abb313(66)+abb313(59)
      abb313(66)=abb313(59)*spak1k4
      abb313(66)=32.0_ki*abb313(66)
      abb313(75)=abb313(19)*abb313(88)
      abb313(76)=spak2l5*abb313(45)
      abb313(48)=abb313(76)+abb313(48)-abb313(75)
      abb313(48)=spbe7k2*abb313(48)
      abb313(76)=-abb313(24)*abb313(88)
      abb313(90)=-spak2l5*abb313(34)
      abb313(90)=-abb313(76)+abb313(90)
      abb313(90)=spbe7k3*abb313(90)
      abb313(92)=spak3k4*abb313(91)
      abb313(93)=spbk3k2**2
      abb313(94)=abb313(92)*abb313(93)
      abb313(95)=abb313(10)*abb313(3)
      abb313(73)=abb313(73)*abb313(95)
      abb313(96)=abb313(73)*abb313(94)
      abb313(97)=abb313(93)*abb313(64)
      abb313(98)=abb313(10)*abb313(5)
      abb313(99)=abb313(56)*abb313(98)
      abb313(100)=abb313(97)*abb313(99)
      abb313(96)=abb313(96)-abb313(100)
      abb313(100)=abb313(3)*spbk3k2
      abb313(100)=c2*abb313(100)**2
      abb313(101)=abb313(100)*spak3k4
      abb313(102)=abb313(101)*abb313(99)
      abb313(102)=abb313(102)-abb313(96)
      abb313(103)=spak2k7*spbk7e7
      abb313(104)=-abb313(102)*abb313(103)
      abb313(22)=abb313(90)+abb313(104)+abb313(48)+abb313(22)
      abb313(22)=4.0_ki*abb313(22)
      abb313(48)=abb313(93)*abb313(47)
      abb313(90)=abb313(98)*c4
      abb313(93)=abb313(48)*abb313(90)
      abb313(104)=abb313(72)*abb313(95)
      abb313(105)=abb313(94)*abb313(104)
      abb313(106)=abb313(100)*abb313(47)
      abb313(107)=abb313(106)*abb313(98)
      abb313(93)=-abb313(93)+abb313(105)-abb313(107)
      abb313(105)=-spak1k2*abb313(93)
      abb313(27)=abb313(105)-abb313(27)
      abb313(27)=8.0_ki*abb313(27)
      abb313(58)=8.0_ki*abb313(58)
      abb313(21)=spbe7k2*abb313(21)
      abb313(25)=-spbe7k3*abb313(25)
      abb313(21)=abb313(21)+abb313(25)
      abb313(21)=4.0_ki*abb313(21)
      abb313(25)=-abb313(24)*spbe7k3
      abb313(105)=abb313(19)*spbe7k2
      abb313(25)=abb313(25)+abb313(105)
      abb313(105)=8.0_ki*abb313(25)
      abb313(25)=-4.0_ki*abb313(25)
      abb313(107)=-abb313(88)*abb313(16)
      abb313(108)=8.0_ki*abb313(107)
      abb313(96)=-abb313(20)*abb313(96)
      abb313(51)=abb313(99)*abb313(51)*abb313(100)
      abb313(51)=abb313(51)+abb313(96)
      abb313(51)=4.0_ki*abb313(51)
      abb313(96)=8.0_ki*abb313(102)
      abb313(100)=-4.0_ki*abb313(102)
      abb313(94)=abb313(94)*abb313(95)
      abb313(102)=abb313(79)*abb313(94)
      abb313(97)=abb313(101)+abb313(97)
      abb313(101)=abb313(10)*abb313(6)
      abb313(109)=abb313(60)*abb313(101)
      abb313(110)=-abb313(109)*abb313(97)
      abb313(102)=abb313(110)+abb313(102)
      abb313(102)=4.0_ki*spbk7e7*abb313(102)
      abb313(110)=-abb313(24)*spbk7k3
      abb313(111)=-spbk7k2*abb313(19)
      abb313(111)=abb313(111)-abb313(110)
      abb313(111)=8.0_ki*abb313(111)
      abb313(112)=abb313(19)*abb313(33)
      abb313(110)=abb313(110)*spae7k7
      abb313(110)=abb313(112)+abb313(110)
      abb313(110)=4.0_ki*abb313(110)
      abb313(112)=spbe7l5*abb313(110)
      abb313(113)=-spbl5k3*abb313(24)
      abb313(114)=spbl5k2*abb313(19)
      abb313(113)=abb313(113)+abb313(114)
      abb313(113)=8.0_ki*abb313(113)
      abb313(114)=-spbe7l5*abb313(76)
      abb313(115)=abb313(34)*abb313(103)
      abb313(114)=abb313(115)+abb313(114)
      abb313(114)=4.0_ki*abb313(114)
      abb313(115)=-spbl6l5*abb313(24)
      abb313(71)=spak1k2*abb313(71)
      abb313(71)=abb313(71)+abb313(115)
      abb313(71)=8.0_ki*abb313(71)
      abb313(115)=-spbe7l5*abb313(75)
      abb313(45)=-abb313(45)*abb313(103)
      abb313(45)=abb313(45)+abb313(115)
      abb313(45)=4.0_ki*abb313(45)
      abb313(115)=spbl6l5*abb313(19)
      abb313(53)=spak1k2*abb313(53)
      abb313(53)=abb313(53)+abb313(115)
      abb313(53)=8.0_ki*abb313(53)
      abb313(49)=abb313(15)*abb313(49)
      abb313(49)=-abb313(50)+abb313(74)-abb313(49)
      abb313(49)=abb313(49)*abb313(61)
      abb313(37)=abb313(69)-abb313(37)
      abb313(37)=abb313(37)*abb313(82)
      abb313(37)=abb313(49)+abb313(37)
      abb313(49)=8.0_ki*abb313(37)
      abb313(50)=-16.0_ki*abb313(16)
      abb313(69)=abb313(73)*c3
      abb313(74)=abb313(99)*c4
      abb313(69)=abb313(69)-abb313(74)
      abb313(74)=abb313(73)*c1
      abb313(115)=abb313(99)*abb313(15)
      abb313(74)=abb313(74)-abb313(115)+abb313(69)
      abb313(115)=-abb313(74)*abb313(46)
      abb313(116)=abb313(15)*abb313(98)
      abb313(117)=abb313(116)+abb313(90)
      abb313(118)=abb313(29)*abb313(117)
      abb313(119)=abb313(95)*c3
      abb313(95)=abb313(95)*c1
      abb313(120)=abb313(95)+abb313(119)
      abb313(121)=-abb313(30)*abb313(120)
      abb313(118)=abb313(121)+abb313(118)
      abb313(118)=abb313(118)*abb313(82)
      abb313(117)=-abb313(60)*abb313(117)
      abb313(80)=abb313(80)*abb313(120)
      abb313(80)=abb313(80)+abb313(117)
      abb313(80)=abb313(80)*abb313(61)
      abb313(80)=abb313(80)+abb313(115)+abb313(118)
      abb313(80)=es34*abb313(80)
      abb313(54)=abb313(54)*spbe7l6
      abb313(115)=spak3e7*abb313(54)
      abb313(117)=abb313(82)*abb313(29)
      abb313(83)=-abb313(83)+abb313(117)
      abb313(117)=abb313(5)*abb313(8)
      abb313(118)=abb313(40)*abb313(117)*abb313(9)
      abb313(91)=abb313(91)*abb313(9)*abb313(3)
      abb313(121)=abb313(117)*abb313(91)
      abb313(121)=abb313(121)-abb313(118)
      abb313(83)=abb313(121)*abb313(83)
      abb313(56)=abb313(117)*abb313(56)
      abb313(9)=-abb313(40)*abb313(56)*abb313(9)
      abb313(56)=abb313(56)*abb313(91)
      abb313(9)=abb313(56)+abb313(9)
      abb313(56)=abb313(9)*abb313(46)
      abb313(117)=abb313(10)*spak1l5
      abb313(122)=abb313(117)*c4
      abb313(123)=spak1l5*abb313(95)
      abb313(124)=spak1l5*abb313(119)
      abb313(122)=-abb313(124)+abb313(122)-abb313(123)
      abb313(123)=abb313(15)*abb313(117)
      abb313(123)=abb313(123)+abb313(122)
      abb313(20)=abb313(57)*abb313(123)*abb313(20)
      abb313(79)=abb313(120)*abb313(79)
      abb313(109)=abb313(40)*abb313(109)
      abb313(79)=abb313(109)-abb313(79)
      abb313(70)=abb313(79)*abb313(70)
      abb313(20)=abb313(20)-abb313(70)
      abb313(70)=-spbk4k2*abb313(20)
      abb313(63)=abb313(63)*spbl6k2
      abb313(79)=spak3k7*spbk7e7
      abb313(109)=abb313(63)*abb313(79)
      abb313(56)=abb313(109)+abb313(115)+abb313(80)+abb313(70)+abb313(56)+abb31&
      &3(83)
      abb313(56)=4.0_ki*abb313(56)
      abb313(70)=abb313(30)*abb313(123)
      abb313(80)=abb313(119)*abb313(72)
      abb313(83)=abb313(90)*abb313(42)
      abb313(80)=abb313(80)-abb313(83)
      abb313(72)=abb313(95)*abb313(72)
      abb313(83)=abb313(116)*abb313(42)
      abb313(72)=abb313(72)-abb313(83)+abb313(80)
      abb313(83)=abb313(72)*abb313(55)
      abb313(70)=2.0_ki*abb313(70)+abb313(83)
      abb313(70)=es34*abb313(70)
      abb313(83)=-spak3k7*abb313(77)
      abb313(8)=abb313(30)*abb313(91)*abb313(8)
      abb313(91)=-abb313(29)*abb313(118)
      abb313(8)=abb313(91)+abb313(8)
      abb313(8)=spak1l5*abb313(8)
      abb313(91)=abb313(123)*spbk4k2
      abb313(95)=spak4k7*spbk7l6
      abb313(109)=abb313(91)*abb313(95)
      abb313(11)=abb313(11)*spbl6k2
      abb313(115)=spak1k3*abb313(11)
      abb313(116)=-abb313(55)*abb313(42)*abb313(121)
      abb313(118)=abb313(120)*abb313(78)
      abb313(101)=abb313(29)*abb313(101)
      abb313(119)=abb313(40)*abb313(101)
      abb313(118)=abb313(119)-abb313(118)
      abb313(67)=abb313(118)*abb313(67)
      abb313(118)=-spbk4k2*abb313(67)
      abb313(8)=abb313(115)+abb313(83)+abb313(70)+abb313(118)+abb313(109)+2.0_k&
      &i*abb313(8)+abb313(116)
      abb313(8)=8.0_ki*abb313(8)
      abb313(70)=abb313(74)*es34
      abb313(9)=abb313(70)-abb313(9)
      abb313(9)=abb313(9)*spbe7k2
      abb313(70)=-abb313(16)*spbe7l6
      abb313(83)=abb313(70)*spak3e7
      abb313(109)=abb313(91)*abb313(57)
      abb313(9)=abb313(9)+abb313(109)-abb313(83)
      abb313(83)=-8.0_ki*abb313(9)
      abb313(68)=abb313(74)*abb313(68)
      abb313(109)=spbk4k2*abb313(68)
      abb313(79)=abb313(35)*abb313(79)
      abb313(79)=abb313(109)+abb313(79)
      abb313(79)=8.0_ki*abb313(79)
      abb313(109)=abb313(72)*spak1k4
      abb313(115)=-spbk4k2*abb313(109)
      abb313(116)=spak1k3*abb313(59)
      abb313(115)=abb313(115)+abb313(116)
      abb313(115)=16.0_ki*abb313(115)
      abb313(9)=4.0_ki*abb313(9)
      abb313(88)=4.0_ki*abb313(88)
      abb313(116)=-abb313(91)*abb313(88)
      abb313(107)=4.0_ki*abb313(107)
      abb313(10)=abb313(40)*abb313(10)
      abb313(40)=abb313(10)-abb313(120)
      abb313(40)=abb313(40)*abb313(82)
      abb313(118)=spak1e7*abb313(120)
      abb313(10)=spak1e7*abb313(10)
      abb313(10)=abb313(10)-abb313(118)
      abb313(10)=abb313(10)*abb313(61)
      abb313(10)=abb313(40)-abb313(10)
      abb313(40)=4.0_ki*spbk4k2
      abb313(119)=-abb313(10)*abb313(40)
      abb313(91)=-8.0_ki*abb313(91)
      abb313(69)=spak2k4*abb313(69)
      abb313(121)=c1*spak2k4
      abb313(73)=abb313(73)*abb313(121)
      abb313(15)=abb313(15)*spak2k4
      abb313(99)=abb313(99)*abb313(15)
      abb313(69)=abb313(73)-abb313(99)+abb313(69)
      abb313(46)=abb313(69)*abb313(46)
      abb313(73)=abb313(90)*spak2k4
      abb313(15)=abb313(15)*abb313(98)
      abb313(73)=abb313(73)+abb313(15)
      abb313(29)=-abb313(29)*abb313(73)
      abb313(90)=abb313(31)*abb313(120)
      abb313(29)=abb313(90)+abb313(29)
      abb313(29)=abb313(29)*abb313(82)
      abb313(82)=-abb313(31)*abb313(118)
      abb313(60)=abb313(60)*abb313(73)
      abb313(60)=abb313(60)+abb313(82)
      abb313(60)=abb313(60)*abb313(61)
      abb313(20)=abb313(20)+abb313(60)+abb313(46)+abb313(29)
      abb313(20)=spbk4k3*abb313(20)
      abb313(29)=-spak2e7*abb313(54)
      abb313(46)=-abb313(103)*abb313(63)
      abb313(20)=abb313(29)+abb313(46)+abb313(20)
      abb313(20)=4.0_ki*abb313(20)
      abb313(29)=-abb313(31)*abb313(123)
      abb313(31)=-spak2k4*abb313(80)
      abb313(15)=abb313(42)*abb313(15)
      abb313(42)=-abb313(121)*abb313(104)
      abb313(15)=abb313(42)+abb313(15)+abb313(31)
      abb313(15)=abb313(15)*abb313(55)
      abb313(15)=abb313(67)+abb313(15)+2.0_ki*abb313(29)
      abb313(15)=spbk4k3*abb313(15)
      abb313(29)=spak2k7*abb313(77)
      abb313(11)=-spak1k2*abb313(11)
      abb313(31)=abb313(123)*spbk4k3
      abb313(42)=-abb313(31)*abb313(95)
      abb313(11)=abb313(29)+abb313(42)+abb313(11)+abb313(15)
      abb313(11)=8.0_ki*abb313(11)
      abb313(15)=abb313(70)*spak2e7
      abb313(29)=abb313(31)*abb313(57)
      abb313(42)=spbe7k2*abb313(69)*spbk4k3
      abb313(15)=abb313(42)+abb313(29)-abb313(15)
      abb313(29)=8.0_ki*abb313(15)
      abb313(35)=abb313(35)*abb313(103)
      abb313(42)=8.0_ki*abb313(35)
      abb313(46)=abb313(59)*spak1k2
      abb313(54)=16.0_ki*abb313(46)
      abb313(55)=-spbk4k3*abb313(68)
      abb313(55)=abb313(55)-abb313(35)
      abb313(55)=8.0_ki*abb313(55)
      abb313(57)=spbk4k3*abb313(109)
      abb313(57)=-abb313(46)+abb313(57)
      abb313(57)=16.0_ki*abb313(57)
      abb313(15)=-4.0_ki*abb313(15)
      abb313(59)=abb313(31)*abb313(88)
      abb313(60)=4.0_ki*spbk4k3
      abb313(10)=abb313(10)*abb313(60)
      abb313(31)=8.0_ki*abb313(31)
      abb313(63)=abb313(74)*abb313(103)
      abb313(40)=-abb313(63)*abb313(40)
      abb313(67)=8.0_ki*spak1k2
      abb313(67)=abb313(67)*abb313(72)
      abb313(68)=spbk4k2*abb313(67)
      abb313(60)=abb313(63)*abb313(60)
      abb313(63)=-spbk4k3*abb313(67)
      abb313(37)=4.0_ki*abb313(37)
      abb313(67)=-8.0_ki*abb313(16)
      abb313(35)=-4.0_ki*abb313(35)
      abb313(46)=-8.0_ki*abb313(46)
      abb313(32)=spae7k7*spbe7k2*abb313(32)
      abb313(62)=spbe7k3*abb313(62)
      abb313(32)=abb313(32)+abb313(62)
      abb313(32)=4.0_ki*abb313(32)
      abb313(62)=8.0_ki*spak1k7*abb313(93)
      abb313(33)=abb313(86)*abb313(33)
      abb313(16)=-abb313(16)*abb313(47)
      abb313(47)=-spbk7k3*spae7k7*abb313(16)
      abb313(33)=abb313(33)+abb313(47)
      abb313(33)=4.0_ki*abb313(87)*abb313(33)
      abb313(47)=-abb313(48)*abb313(122)
      abb313(48)=-abb313(117)*abb313(106)
      abb313(47)=abb313(48)+abb313(47)
      abb313(47)=8.0_ki*abb313(7)*abb313(47)
      abb313(48)=abb313(16)*abb313(89)
      abb313(34)=-abb313(34)*abb313(61)
      abb313(26)=abb313(26)*spbk2k1
      abb313(61)=-abb313(81)*abb313(26)
      abb313(34)=abb313(61)+abb313(34)+abb313(48)
      abb313(34)=4.0_ki*abb313(34)
      abb313(16)=-abb313(16)*abb313(44)
      abb313(18)=-abb313(92)*abb313(18)
      abb313(12)=abb313(64)*abb313(12)
      abb313(14)=spak3k4*abb313(14)
      abb313(12)=abb313(14)+abb313(12)+abb313(18)
      abb313(14)=abb313(30)-abb313(43)
      abb313(12)=abb313(14)*abb313(12)
      abb313(12)=abb313(16)+abb313(12)
      abb313(12)=8.0_ki*abb313(12)
      abb313(14)=-spbe7k1*abb313(110)
      abb313(16)=spbk2k1*abb313(19)
      abb313(18)=-spbk3k1*abb313(24)
      abb313(30)=abb313(78)*abb313(94)
      abb313(43)=-abb313(101)*abb313(97)
      abb313(16)=abb313(18)+abb313(16)+abb313(43)+abb313(30)
      abb313(16)=8.0_ki*abb313(16)
      abb313(18)=spbe7k1*abb313(76)
      abb313(26)=abb313(103)*abb313(26)
      abb313(18)=abb313(18)+abb313(26)
      abb313(18)=4.0_ki*abb313(18)
      abb313(24)=spbl6k1*abb313(24)
      abb313(24)=abb313(65)+abb313(24)
      abb313(24)=8.0_ki*abb313(24)
      abb313(26)=spbe7k1*abb313(75)
      abb313(30)=abb313(103)*abb313(39)
      abb313(26)=abb313(26)+abb313(30)
      abb313(26)=4.0_ki*abb313(26)
      abb313(19)=-spbl6k1*abb313(19)
      abb313(30)=es12*abb313(36)
      abb313(19)=abb313(30)+abb313(19)
      abb313(19)=8.0_ki*abb313(19)
      R2d313=0.0_ki
      rat2 = rat2 + R2d313
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='313' value='", &
          & R2d313, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd313h2
