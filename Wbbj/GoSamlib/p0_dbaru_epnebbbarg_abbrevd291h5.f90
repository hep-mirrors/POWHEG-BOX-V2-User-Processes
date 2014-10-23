module     p0_dbaru_epnebbbarg_abbrevd291h5
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh5
   implicit none
   private
   complex(ki), dimension(108), public :: abb291
   complex(ki), public :: R2d291
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
      abb291(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb291(2)=NC**(-1)
      abb291(3)=sqrt2**(-1)
      abb291(4)=spak2l5**(-1)
      abb291(5)=spbl6k2**(-1)
      abb291(6)=spbk7k2**(-1)
      abb291(7)=sqrt(mB**2)
      abb291(8)=spbl5k2**(-1)
      abb291(9)=spak2l6**(-1)
      abb291(10)=TR*gW
      abb291(10)=abb291(10)**2*i_*CVDU*abb291(3)*abb291(1)
      abb291(11)=abb291(10)*abb291(2)
      abb291(12)=spbk3k2*abb291(6)
      abb291(13)=abb291(11)*abb291(12)
      abb291(14)=abb291(13)*c1
      abb291(12)=abb291(12)*abb291(10)
      abb291(15)=abb291(2)**2
      abb291(16)=abb291(15)*c4
      abb291(17)=abb291(16)*abb291(12)
      abb291(14)=abb291(14)-abb291(17)
      abb291(17)=abb291(12)*c2
      abb291(18)=abb291(13)*c3
      abb291(19)=abb291(18)+abb291(14)-abb291(17)
      abb291(20)=abb291(19)*spak1k7
      abb291(21)=mB**3
      abb291(22)=abb291(21)*abb291(4)
      abb291(23)=abb291(22)*abb291(20)
      abb291(24)=-abb291(5)*abb291(23)
      abb291(25)=abb291(21)*abb291(4)**2
      abb291(26)=abb291(20)*abb291(25)
      abb291(27)=abb291(8)*spak2l6
      abb291(28)=-abb291(26)*abb291(27)
      abb291(24)=abb291(28)+abb291(24)
      abb291(28)=es12*abb291(7)
      abb291(29)=abb291(28)*spak1k4
      abb291(24)=abb291(29)*abb291(24)
      abb291(30)=abb291(4)*mB
      abb291(20)=abb291(30)*abb291(20)
      abb291(31)=abb291(29)*abb291(20)
      abb291(32)=mB**2
      abb291(33)=abb291(32)*abb291(4)
      abb291(34)=abb291(33)*abb291(15)
      abb291(35)=abb291(34)*abb291(12)
      abb291(36)=abb291(15)*abb291(12)
      abb291(37)=abb291(36)*spbl5k2
      abb291(35)=abb291(35)-abb291(37)
      abb291(35)=abb291(35)*c4
      abb291(37)=abb291(12)*spbl5k2
      abb291(38)=abb291(33)*abb291(12)
      abb291(39)=abb291(37)-abb291(38)
      abb291(40)=abb291(39)*c2
      abb291(40)=abb291(35)-abb291(40)
      abb291(41)=spbl5k1*spak1l5
      abb291(42)=abb291(41)*spak1k7
      abb291(43)=abb291(42)*abb291(40)
      abb291(44)=abb291(13)*spbl5k2
      abb291(45)=abb291(33)*abb291(13)
      abb291(44)=abb291(44)-abb291(45)
      abb291(46)=c1+c3
      abb291(42)=abb291(46)*abb291(44)*abb291(42)
      abb291(42)=abb291(43)+abb291(42)
      abb291(43)=spak1k4*abb291(42)
      abb291(43)=abb291(43)+abb291(31)
      abb291(43)=spak2l6*abb291(43)
      abb291(14)=abb291(14)+abb291(18)-abb291(17)
      abb291(14)=abb291(14)*spbl5k1*spak1k7
      abb291(17)=spak1l5*spbl5k2
      abb291(18)=abb291(17)*abb291(32)
      abb291(47)=abb291(14)*abb291(18)
      abb291(48)=-abb291(5)*spak1k4*abb291(47)
      abb291(24)=abb291(43)+abb291(48)+abb291(24)
      abb291(24)=spbk2k1*abb291(24)
      abb291(43)=c2*spak4k7
      abb291(48)=abb291(10)*spak1k7
      abb291(49)=abb291(48)*abb291(43)*abb291(30)
      abb291(50)=abb291(16)*abb291(48)
      abb291(51)=abb291(11)*spak1k7
      abb291(52)=abb291(51)*c3
      abb291(53)=abb291(51)*c1
      abb291(50)=abb291(52)+abb291(53)-abb291(50)
      abb291(52)=abb291(30)*spak4k7
      abb291(53)=abb291(50)*abb291(52)
      abb291(49)=abb291(49)-abb291(53)
      abb291(53)=abb291(49)*abb291(28)
      abb291(54)=abb291(48)*c2
      abb291(50)=-abb291(54)+abb291(50)
      abb291(54)=abb291(50)*spbl5k1
      abb291(55)=abb291(17)*spak4k7
      abb291(56)=-abb291(55)*abb291(54)
      abb291(53)=abb291(56)+abb291(53)
      abb291(53)=spbl5k3*abb291(53)
      abb291(56)=abb291(16)+c2
      abb291(57)=abb291(48)*abb291(6)
      abb291(58)=abb291(57)*abb291(56)
      abb291(59)=abb291(51)*abb291(6)
      abb291(60)=abb291(59)*c3
      abb291(61)=abb291(59)*c1
      abb291(58)=-abb291(61)+abb291(58)-abb291(60)
      abb291(60)=abb291(17)*spbl5k1
      abb291(61)=-abb291(60)*abb291(58)
      abb291(62)=abb291(30)*abb291(58)
      abb291(63)=-abb291(62)*abb291(28)
      abb291(61)=abb291(61)+abb291(63)
      abb291(63)=spbl5k3*spak1k4
      abb291(64)=abb291(63)*spbk2k1
      abb291(61)=abb291(61)*abb291(64)
      abb291(53)=abb291(61)+abb291(53)
      abb291(53)=spal5l6*abb291(53)
      abb291(61)=spak4k7*spbk3k2
      abb291(65)=abb291(22)*abb291(61)
      abb291(66)=abb291(5)*abb291(65)
      abb291(67)=abb291(25)*abb291(61)
      abb291(68)=abb291(27)*abb291(67)
      abb291(66)=abb291(68)+abb291(66)
      abb291(66)=abb291(28)*abb291(50)*abb291(66)
      abb291(68)=abb291(46)*abb291(51)*spbk3k2
      abb291(69)=abb291(48)*spbk3k2
      abb291(70)=-c2*abb291(69)
      abb291(68)=abb291(70)+abb291(68)
      abb291(70)=abb291(33)-spbl5k2
      abb291(68)=abb291(70)*abb291(68)
      abb291(70)=spbl5k2*abb291(15)
      abb291(70)=abb291(70)-abb291(34)
      abb291(69)=c4*abb291(69)*abb291(70)
      abb291(68)=abb291(69)+abb291(68)
      abb291(69)=spak4k7*spak1l5
      abb291(70)=abb291(69)*spbl5k1
      abb291(68)=abb291(70)*abb291(68)
      abb291(71)=abb291(61)*abb291(30)
      abb291(72)=abb291(50)*abb291(71)
      abb291(73)=-abb291(72)*abb291(28)
      abb291(68)=abb291(73)+abb291(68)
      abb291(68)=spak2l6*abb291(68)
      abb291(73)=abb291(50)*abb291(61)*spbl5k1
      abb291(74)=abb291(5)*abb291(18)*abb291(73)
      abb291(24)=abb291(53)+abb291(24)+abb291(68)+abb291(74)+abb291(66)
      abb291(24)=8.0_ki*abb291(24)
      abb291(53)=abb291(19)*abb291(32)
      abb291(66)=abb291(53)*abb291(5)
      abb291(68)=abb291(10)*abb291(6)
      abb291(74)=abb291(16)*abb291(68)
      abb291(75)=abb291(68)*c2
      abb291(76)=abb291(11)*abb291(6)
      abb291(77)=abb291(76)*c3
      abb291(78)=abb291(76)*c1
      abb291(74)=-abb291(75)+abb291(77)+abb291(78)-abb291(74)
      abb291(75)=-abb291(74)*spbl5k3
      abb291(77)=spal5l6*abb291(75)
      abb291(77)=abb291(77)+abb291(66)
      abb291(78)=spbl5k2**2
      abb291(77)=abb291(78)*abb291(69)*abb291(77)
      abb291(12)=abb291(78)*abb291(12)
      abb291(38)=abb291(38)*spbl5k2
      abb291(12)=abb291(12)-abb291(38)
      abb291(12)=abb291(12)*c2
      abb291(37)=abb291(37)*abb291(34)
      abb291(36)=abb291(36)*abb291(78)
      abb291(36)=abb291(36)-abb291(37)
      abb291(36)=abb291(36)*c4
      abb291(12)=abb291(12)+abb291(36)
      abb291(12)=abb291(69)*abb291(12)
      abb291(13)=abb291(78)*abb291(13)
      abb291(36)=abb291(45)*spbl5k2
      abb291(13)=abb291(13)-abb291(36)
      abb291(13)=-abb291(46)*abb291(13)*abb291(69)
      abb291(12)=abb291(13)+abb291(12)
      abb291(12)=abb291(12)*spak2l6
      abb291(12)=abb291(12)+abb291(77)
      abb291(13)=16.0_ki*abb291(12)
      abb291(36)=abb291(20)*spak4l6
      abb291(37)=abb291(36)*abb291(28)
      abb291(38)=abb291(14)*abb291(17)
      abb291(45)=abb291(38)*spak4l6
      abb291(77)=abb291(78)*spak1l5
      abb291(79)=abb291(77)*abb291(58)
      abb291(80)=spbk3k1*spak4l6
      abb291(81)=abb291(79)*abb291(80)
      abb291(37)=abb291(45)+abb291(37)+abb291(81)
      abb291(45)=16.0_ki*abb291(37)
      abb291(81)=abb291(14)*spak1k4
      abb291(82)=spak1l6*abb291(81)
      abb291(83)=-abb291(32)*abb291(14)
      abb291(84)=abb291(9)*abb291(5)
      abb291(85)=abb291(84)*spak1l6
      abb291(86)=abb291(83)*abb291(85)
      abb291(87)=spak1k4*abb291(86)
      abb291(88)=abb291(33)*abb291(14)
      abb291(89)=abb291(88)*abb291(8)
      abb291(90)=spak1l6*spak1k4
      abb291(91)=-abb291(89)*abb291(90)
      abb291(82)=abb291(91)+abb291(82)+abb291(87)
      abb291(82)=spbk2k1*abb291(82)
      abb291(87)=abb291(78)*abb291(59)
      abb291(91)=spbl5k2*abb291(6)
      abb291(51)=abb291(91)*abb291(51)
      abb291(92)=abb291(51)*abb291(33)
      abb291(87)=abb291(87)-abb291(92)
      abb291(92)=spak1l5*abb291(46)
      abb291(87)=abb291(87)*abb291(92)
      abb291(48)=abb291(91)*abb291(48)
      abb291(91)=abb291(48)*abb291(33)
      abb291(93)=abb291(78)*abb291(57)
      abb291(91)=abb291(91)-abb291(93)
      abb291(94)=c2*spak1l5
      abb291(91)=abb291(91)*abb291(94)
      abb291(95)=abb291(34)*abb291(48)
      abb291(93)=abb291(93)*abb291(15)
      abb291(93)=abb291(95)-abb291(93)
      abb291(95)=c4*spak1l5
      abb291(93)=abb291(93)*abb291(95)
      abb291(87)=abb291(91)+abb291(93)+abb291(87)
      abb291(77)=abb291(77)*abb291(32)
      abb291(91)=abb291(58)*abb291(77)
      abb291(93)=abb291(91)*abb291(84)
      abb291(93)=abb291(93)+abb291(87)
      abb291(93)=abb291(93)*spbk3k1
      abb291(42)=abb291(93)-abb291(42)
      abb291(93)=-spak4l6*abb291(42)
      abb291(23)=abb291(23)*abb291(84)
      abb291(96)=-spak4l6*abb291(23)
      abb291(96)=abb291(36)+abb291(96)
      abb291(96)=abb291(96)*abb291(28)
      abb291(97)=-spak4l6*abb291(47)
      abb291(98)=abb291(32)*abb291(73)
      abb291(99)=spak1l6*abb291(98)
      abb291(97)=abb291(99)+abb291(97)
      abb291(97)=abb291(97)*abb291(84)
      abb291(26)=abb291(26)*abb291(28)
      abb291(99)=-spak4l6*abb291(26)
      abb291(100)=abb291(33)*abb291(73)
      abb291(101)=spak1l6*abb291(100)
      abb291(99)=abb291(101)+abb291(99)
      abb291(99)=abb291(8)*abb291(99)
      abb291(101)=-spak1l6*abb291(73)
      abb291(82)=abb291(82)+abb291(99)+abb291(96)+abb291(97)+abb291(101)+abb291&
      &(93)
      abb291(82)=16.0_ki*abb291(82)
      abb291(93)=abb291(46)*abb291(44)*spak4k7
      abb291(35)=abb291(35)*spak4k7
      abb291(39)=abb291(39)*abb291(43)
      abb291(35)=abb291(35)-abb291(39)+abb291(93)
      abb291(39)=abb291(35)*spak1l6
      abb291(93)=abb291(19)*spak4k7
      abb291(96)=abb291(32)*spbl5k2
      abb291(97)=abb291(96)*abb291(93)
      abb291(99)=abb291(97)*abb291(85)
      abb291(39)=abb291(99)-abb291(39)
      abb291(99)=32.0_ki*abb291(39)
      abb291(12)=-abb291(37)-abb291(12)
      abb291(12)=8.0_ki*abb291(12)
      abb291(37)=-16.0_ki*abb291(39)
      abb291(39)=abb291(19)*spbl5k1
      abb291(101)=-spak1k4*abb291(18)*abb291(39)
      abb291(11)=abb291(11)*abb291(46)
      abb291(65)=abb291(65)*abb291(11)
      abb291(102)=abb291(10)*abb291(4)
      abb291(61)=abb291(56)*abb291(61)*abb291(102)
      abb291(21)=-abb291(21)*abb291(61)
      abb291(21)=abb291(21)+abb291(65)
      abb291(65)=spak1k2*abb291(7)
      abb291(21)=abb291(21)*abb291(65)
      abb291(22)=abb291(19)*abb291(22)
      abb291(103)=-abb291(22)*abb291(29)
      abb291(21)=abb291(103)+abb291(101)+abb291(21)
      abb291(21)=abb291(5)*abb291(21)
      abb291(44)=abb291(46)*abb291(44)
      abb291(40)=abb291(44)+abb291(40)
      abb291(44)=abb291(41)*spak1k4
      abb291(101)=abb291(40)*abb291(44)
      abb291(71)=-abb291(71)*abb291(11)
      abb291(61)=mB*abb291(61)
      abb291(61)=abb291(61)+abb291(71)
      abb291(61)=abb291(61)*abb291(65)
      abb291(71)=abb291(30)*abb291(19)
      abb291(103)=abb291(71)*abb291(29)
      abb291(61)=abb291(103)+abb291(101)+abb291(61)
      abb291(61)=spak2l6*abb291(61)
      abb291(66)=abb291(55)*abb291(66)
      abb291(40)=-spak2l6*abb291(69)*abb291(40)
      abb291(40)=abb291(66)+abb291(40)
      abb291(40)=spbk7l5*abb291(40)
      abb291(60)=abb291(60)*abb291(74)
      abb291(66)=abb291(30)*abb291(74)
      abb291(101)=abb291(66)*abb291(28)
      abb291(60)=abb291(101)+abb291(60)
      abb291(60)=abb291(63)*abb291(60)
      abb291(101)=-abb291(74)*abb291(55)
      abb291(103)=spbk7l5*abb291(101)
      abb291(104)=-abb291(52)*abb291(11)
      abb291(16)=spak4k7*abb291(16)
      abb291(16)=abb291(43)+abb291(16)
      abb291(16)=abb291(16)*abb291(102)*mB
      abb291(16)=abb291(16)+abb291(104)
      abb291(16)=abb291(16)*abb291(65)
      abb291(16)=abb291(103)+abb291(16)
      abb291(16)=spbl5k3*abb291(16)
      abb291(16)=abb291(60)+abb291(16)
      abb291(16)=spal5l6*abb291(16)
      abb291(25)=abb291(19)*abb291(25)
      abb291(29)=-abb291(25)*abb291(29)
      abb291(10)=-abb291(10)*abb291(56)
      abb291(10)=abb291(10)+abb291(11)
      abb291(10)=abb291(65)*abb291(67)*abb291(10)
      abb291(10)=abb291(10)+abb291(29)
      abb291(10)=abb291(10)*abb291(27)
      abb291(10)=abb291(16)+abb291(40)+abb291(10)+abb291(61)+abb291(21)
      abb291(10)=8.0_ki*abb291(10)
      abb291(11)=abb291(17)*abb291(74)
      abb291(16)=abb291(11)*spbl5k3
      abb291(21)=abb291(71)*abb291(65)
      abb291(27)=abb291(16)-abb291(21)
      abb291(27)=abb291(27)*spak4l6
      abb291(29)=16.0_ki*abb291(27)
      abb291(40)=abb291(34)*abb291(68)
      abb291(43)=abb291(68)*spbl5k2
      abb291(60)=abb291(43)*abb291(15)
      abb291(40)=abb291(40)-abb291(60)
      abb291(60)=abb291(40)*abb291(95)
      abb291(61)=abb291(33)*abb291(76)
      abb291(67)=abb291(76)*spbl5k2
      abb291(67)=abb291(67)-abb291(61)
      abb291(102)=abb291(92)*abb291(67)
      abb291(103)=abb291(33)*abb291(68)
      abb291(103)=abb291(103)-abb291(43)
      abb291(104)=abb291(103)*abb291(94)
      abb291(60)=abb291(102)+abb291(104)+abb291(60)
      abb291(102)=-spbl5k3*abb291(60)
      abb291(102)=abb291(102)+abb291(21)
      abb291(102)=spak4l6*abb291(102)
      abb291(18)=abb291(18)*abb291(75)
      abb291(22)=abb291(22)*abb291(65)
      abb291(18)=abb291(18)+abb291(22)
      abb291(18)=abb291(18)*abb291(5)
      abb291(22)=-spak4l6*abb291(18)
      abb291(75)=-spbl5k1*abb291(53)
      abb291(104)=abb291(5)*abb291(75)*abb291(90)
      abb291(22)=abb291(104)+abb291(22)
      abb291(22)=abb291(9)*abb291(22)
      abb291(104)=-abb291(33)*abb291(39)
      abb291(105)=abb291(104)*abb291(90)
      abb291(25)=abb291(25)*abb291(65)
      abb291(106)=-spak4l6*abb291(25)
      abb291(105)=abb291(105)+abb291(106)
      abb291(105)=abb291(8)*abb291(105)
      abb291(106)=abb291(33)*abb291(8)
      abb291(106)=abb291(106)-1.0_ki
      abb291(93)=-abb291(93)*abb291(106)
      abb291(107)=-spak1l6*abb291(93)
      abb291(53)=-spak4k7*abb291(53)
      abb291(108)=-abb291(53)*abb291(85)
      abb291(107)=abb291(108)+abb291(107)
      abb291(107)=spbk7l5*abb291(107)
      abb291(90)=abb291(39)*abb291(90)
      abb291(22)=abb291(107)+abb291(105)+abb291(22)+abb291(90)+abb291(102)
      abb291(22)=16.0_ki*abb291(22)
      abb291(27)=8.0_ki*abb291(27)
      abb291(52)=abb291(19)*abb291(52)
      abb291(90)=8.0_ki*abb291(65)
      abb291(102)=abb291(52)*abb291(90)
      abb291(105)=abb291(14)*spak1l5
      abb291(107)=-spbk2k1*spak1k4*abb291(105)
      abb291(79)=spbk3k1*abb291(79)
      abb291(38)=abb291(79)+abb291(38)
      abb291(38)=spak4l5*abb291(38)
      abb291(79)=abb291(105)*spak4l6
      abb291(17)=abb291(58)*abb291(17)
      abb291(80)=abb291(17)*abb291(80)
      abb291(79)=abb291(80)+abb291(79)
      abb291(80)=spbl6k2*abb291(79)
      abb291(50)=abb291(50)*abb291(70)
      abb291(70)=spbk3k2*abb291(50)
      abb291(38)=abb291(80)+abb291(38)+abb291(107)+abb291(70)
      abb291(38)=8.0_ki*abb291(38)
      abb291(55)=abb291(19)*abb291(55)
      abb291(70)=16.0_ki*abb291(55)
      abb291(55)=-8.0_ki*abb291(55)
      abb291(44)=-abb291(19)*abb291(44)
      abb291(19)=spbk7l5*abb291(19)*abb291(69)
      abb291(16)=-spak4l5*abb291(16)
      abb291(80)=spak4l6*spbl5k3
      abb291(105)=-abb291(80)*abb291(74)*spak1l5
      abb291(107)=spbl6k2*abb291(105)
      abb291(16)=abb291(107)+abb291(16)+abb291(44)+abb291(19)
      abb291(16)=8.0_ki*abb291(16)
      abb291(19)=abb291(66)*spbl5k2
      abb291(44)=spak4l5*abb291(19)
      abb291(107)=spbl6k2*spak4l6*abb291(66)
      abb291(44)=abb291(44)+abb291(107)
      abb291(44)=abb291(44)*abb291(90)
      abb291(49)=-spbk3k1*abb291(49)
      abb291(90)=spak4l5*abb291(30)*abb291(14)
      abb291(107)=spbl6k1*abb291(36)
      abb291(49)=abb291(107)+abb291(90)+abb291(49)
      abb291(49)=abb291(65)*abb291(49)
      abb291(23)=abb291(20)-abb291(23)
      abb291(23)=abb291(23)*abb291(28)
      abb291(47)=-abb291(47)*abb291(84)
      abb291(23)=abb291(23)+abb291(47)-abb291(42)
      abb291(23)=spak2k4*abb291(23)
      abb291(42)=abb291(83)*abb291(84)
      abb291(47)=abb291(42)*spak1k4
      abb291(47)=abb291(47)+abb291(81)
      abb291(83)=spak1k4*abb291(7)
      abb291(90)=spbk3k1*abb291(62)*abb291(83)
      abb291(90)=abb291(90)-abb291(47)
      abb291(90)=es12*abb291(90)
      abb291(88)=es12*spak1k4*abb291(88)
      abb291(26)=-spak2k4*abb291(26)
      abb291(100)=-spak1k2*abb291(100)
      abb291(26)=abb291(26)+abb291(100)+abb291(88)
      abb291(26)=abb291(8)*abb291(26)
      abb291(79)=-spbl6l5*abb291(79)
      abb291(88)=2.0_ki*spbl5k3
      abb291(50)=abb291(88)*abb291(50)
      abb291(73)=spak1k2*abb291(73)
      abb291(100)=abb291(84)*spak1k2
      abb291(98)=-abb291(98)*abb291(100)
      abb291(64)=abb291(41)*abb291(58)*abb291(64)
      abb291(23)=abb291(79)+2.0_ki*abb291(64)+abb291(26)+abb291(23)+abb291(90)+&
      &abb291(98)+abb291(50)+abb291(73)+abb291(49)
      abb291(23)=8.0_ki*abb291(23)
      abb291(26)=abb291(52)*abb291(7)
      abb291(26)=abb291(26)-abb291(35)
      abb291(26)=abb291(26)*spak1k2
      abb291(35)=abb291(97)*abb291(100)
      abb291(49)=spak2k4*abb291(7)
      abb291(50)=abb291(49)*abb291(20)
      abb291(52)=abb291(83)*spak2k7
      abb291(64)=abb291(52)*abb291(71)
      abb291(71)=abb291(101)*abb291(88)
      abb291(26)=abb291(26)+abb291(71)-abb291(64)+abb291(35)+abb291(50)
      abb291(35)=16.0_ki*abb291(26)
      abb291(50)=abb291(48)*abb291(56)
      abb291(56)=abb291(51)*abb291(46)
      abb291(50)=abb291(50)-abb291(56)
      abb291(56)=abb291(50)*spbk3k1
      abb291(64)=abb291(56)*spak1k4
      abb291(64)=abb291(64)+abb291(81)
      abb291(71)=16.0_ki*abb291(64)
      abb291(59)=abb291(59)*abb291(33)
      abb291(51)=abb291(59)-abb291(51)
      abb291(51)=abb291(51)*abb291(46)
      abb291(59)=abb291(57)*abb291(33)
      abb291(59)=abb291(59)-abb291(48)
      abb291(59)=abb291(59)*c2
      abb291(48)=abb291(48)*abb291(15)
      abb291(57)=abb291(34)*abb291(57)
      abb291(48)=abb291(48)-abb291(57)
      abb291(48)=abb291(48)*c4
      abb291(48)=abb291(48)+abb291(51)-abb291(59)
      abb291(51)=-abb291(96)*abb291(58)
      abb291(57)=abb291(51)*abb291(84)
      abb291(57)=abb291(57)+abb291(48)
      abb291(59)=abb291(57)*spbk3k1
      abb291(59)=abb291(59)-abb291(89)
      abb291(73)=-spak1k4*abb291(59)
      abb291(47)=-abb291(47)+abb291(73)
      abb291(47)=16.0_ki*abb291(47)
      abb291(26)=abb291(64)+abb291(26)
      abb291(26)=8.0_ki*abb291(26)
      abb291(39)=-spak1k2*abb291(39)
      abb291(64)=-abb291(75)*abb291(100)
      abb291(73)=-spbk3k1*abb291(66)*abb291(65)
      abb291(39)=abb291(73)+abb291(64)+abb291(39)
      abb291(39)=spak1k4*abb291(39)
      abb291(64)=abb291(66)*abb291(7)
      abb291(73)=spak1l5*abb291(64)
      abb291(60)=abb291(73)-abb291(60)
      abb291(60)=spbl5k3*abb291(60)
      abb291(18)=-abb291(9)*abb291(18)
      abb291(18)=abb291(18)+abb291(60)+abb291(21)
      abb291(18)=spak2k4*abb291(18)
      abb291(60)=spak1k2*abb291(93)
      abb291(69)=abb291(88)*abb291(69)*abb291(74)
      abb291(53)=abb291(53)*abb291(100)
      abb291(53)=abb291(53)+abb291(69)+abb291(60)
      abb291(53)=spbk7l5*abb291(53)
      abb291(60)=-spak1k2*spak1k4*abb291(104)
      abb291(25)=-spak2k4*abb291(25)
      abb291(25)=abb291(60)+abb291(25)
      abb291(25)=abb291(8)*abb291(25)
      abb291(60)=abb291(7)*mB
      abb291(41)=2.0_ki*abb291(41)+abb291(60)
      abb291(41)=-abb291(63)*abb291(74)*abb291(41)
      abb291(60)=-spbl6l5*abb291(105)
      abb291(52)=abb291(66)*abb291(52)
      abb291(69)=abb291(62)*abb291(49)
      abb291(52)=abb291(69)+abb291(52)
      abb291(52)=spbk7k3*abb291(52)
      abb291(49)=spak1l6*abb291(49)
      abb291(69)=-spak2l6*abb291(83)
      abb291(49)=abb291(49)+abb291(69)
      abb291(49)=spbl6k3*abb291(66)*abb291(49)
      abb291(18)=abb291(49)+abb291(52)+abb291(60)+abb291(53)+abb291(25)+abb291(&
      &18)+abb291(41)+abb291(39)
      abb291(18)=8.0_ki*abb291(18)
      abb291(25)=-16.0_ki*abb291(74)
      abb291(39)=abb291(25)*abb291(63)
      abb291(32)=abb291(84)*abb291(32)
      abb291(32)=abb291(32)+abb291(106)
      abb291(32)=-abb291(74)*abb291(32)
      abb291(41)=16.0_ki*abb291(32)
      abb291(49)=abb291(63)*abb291(41)
      abb291(52)=-8.0_ki*abb291(74)
      abb291(53)=abb291(63)*abb291(52)
      abb291(20)=-spak4l5*spbl5k2*abb291(20)
      abb291(36)=-spbl6k2*abb291(36)
      abb291(20)=abb291(36)+abb291(20)-abb291(72)
      abb291(20)=abb291(65)*abb291(20)
      abb291(20)=abb291(31)+abb291(20)
      abb291(20)=8.0_ki*abb291(20)
      abb291(21)=8.0_ki*spak1k4*abb291(21)
      abb291(31)=spak4k7*abb291(54)
      abb291(36)=spak1l6*spbl5k3
      abb291(54)=-abb291(31)*abb291(36)
      abb291(58)=abb291(58)*spbl5k1
      abb291(60)=abb291(58)*spbk2k1
      abb291(63)=abb291(63)*spak1l6
      abb291(66)=-abb291(60)*abb291(63)
      abb291(54)=abb291(54)+abb291(66)
      abb291(54)=8.0_ki*abb291(54)
      abb291(66)=abb291(74)*spak4k7
      abb291(69)=-spbl5k2*abb291(66)
      abb291(72)=16.0_ki*abb291(69)
      abb291(73)=abb291(72)*abb291(36)
      abb291(69)=8.0_ki*abb291(69)
      abb291(75)=-abb291(36)*abb291(69)
      abb291(79)=-abb291(74)*spbl5k1
      abb291(63)=-abb291(79)*abb291(63)
      abb291(66)=-spbk7l5*abb291(66)
      abb291(81)=abb291(36)*abb291(66)
      abb291(63)=abb291(63)+abb291(81)
      abb291(63)=8.0_ki*abb291(63)
      abb291(81)=spak2l6*abb291(87)
      abb291(83)=abb291(5)*abb291(91)
      abb291(81)=abb291(83)+abb291(81)
      abb291(81)=spbk2k1*abb291(81)
      abb291(28)=-spal5l6*abb291(28)*abb291(30)*abb291(50)
      abb291(28)=abb291(81)+abb291(28)
      abb291(28)=8.0_ki*abb291(28)
      abb291(30)=abb291(48)*spak1l6
      abb291(48)=abb291(51)*abb291(85)
      abb291(30)=abb291(48)+abb291(30)
      abb291(48)=-16.0_ki*spbk2k1*abb291(30)
      abb291(51)=abb291(78)*abb291(76)
      abb291(61)=abb291(61)*spbl5k2
      abb291(51)=abb291(51)-abb291(61)
      abb291(51)=abb291(51)*abb291(92)
      abb291(61)=abb291(78)*abb291(68)
      abb291(15)=-abb291(15)*abb291(61)
      abb291(34)=abb291(34)*abb291(43)
      abb291(15)=abb291(15)+abb291(34)
      abb291(15)=abb291(15)*abb291(95)
      abb291(33)=abb291(33)*abb291(43)
      abb291(33)=-abb291(61)+abb291(33)
      abb291(33)=abb291(33)*abb291(94)
      abb291(15)=abb291(33)+abb291(15)+abb291(51)
      abb291(15)=spak2l6*abb291(15)
      abb291(33)=-abb291(5)*abb291(77)*abb291(74)
      abb291(19)=spal5l6*abb291(19)*abb291(65)
      abb291(15)=abb291(19)+abb291(33)+abb291(15)
      abb291(15)=8.0_ki*abb291(15)
      abb291(19)=abb291(40)*c4
      abb291(33)=abb291(103)*c2
      abb291(34)=abb291(46)*abb291(67)
      abb291(19)=abb291(34)+abb291(33)+abb291(19)
      abb291(33)=spak1l6*abb291(19)
      abb291(34)=-abb291(74)*abb291(96)
      abb291(40)=abb291(34)*abb291(85)
      abb291(33)=abb291(33)+abb291(40)
      abb291(33)=16.0_ki*abb291(33)
      abb291(17)=8.0_ki*spbk2k1*abb291(17)
      abb291(11)=-8.0_ki*abb291(11)
      abb291(40)=abb291(7)*abb291(62)
      abb291(40)=abb291(40)+abb291(57)
      abb291(40)=8.0_ki*es12*abb291(40)
      abb291(19)=-abb291(64)-abb291(19)
      abb291(19)=spak1k2*abb291(19)
      abb291(34)=-abb291(34)*abb291(100)
      abb291(19)=abb291(19)+abb291(34)
      abb291(19)=8.0_ki*abb291(19)
      abb291(34)=abb291(14)*spak1l6
      abb291(43)=abb291(56)*spak1l6
      abb291(43)=abb291(43)+abb291(34)
      abb291(46)=16.0_ki*abb291(43)
      abb291(30)=spbk3k1*abb291(30)
      abb291(51)=-spak1l6*abb291(89)
      abb291(30)=abb291(51)+abb291(30)+abb291(34)+abb291(86)
      abb291(30)=16.0_ki*abb291(30)
      abb291(34)=-8.0_ki*abb291(43)
      abb291(43)=abb291(25)*abb291(36)
      abb291(41)=-abb291(36)*abb291(41)
      abb291(36)=-abb291(36)*abb291(52)
      abb291(51)=abb291(14)+abb291(56)
      abb291(56)=16.0_ki*spak4l6*abb291(51)
      abb291(25)=abb291(25)*abb291(80)
      abb291(51)=8.0_ki*spak4l5*abb291(51)
      abb291(57)=spak4l5*spbl5k3*abb291(52)
      abb291(60)=spak1k4*abb291(60)
      abb291(31)=abb291(60)+abb291(31)
      abb291(31)=8.0_ki*abb291(31)
      abb291(60)=spak1k4*abb291(79)
      abb291(60)=abb291(60)-abb291(66)
      abb291(60)=8.0_ki*abb291(60)
      abb291(14)=abb291(42)+abb291(14)+abb291(59)
      abb291(42)=8.0_ki*spak2k4
      abb291(14)=abb291(14)*abb291(42)
      abb291(32)=-spbl5k3*abb291(32)*abb291(42)
      abb291(42)=8.0_ki*abb291(58)
      abb291(50)=-8.0_ki*abb291(50)
      R2d291=0.0_ki
      rat2 = rat2 + R2d291
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='291' value='", &
          & R2d291, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd291h5
