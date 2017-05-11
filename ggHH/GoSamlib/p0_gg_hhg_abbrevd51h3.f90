module     p0_gg_hhg_abbrevd51h3
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_globalsh3
   implicit none
   private
   complex(ki), dimension(105), public :: abb51
   complex(ki), public :: R2d51
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p0_gg_hhg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_model
      use p0_gg_hhg_color, only: TR
      use p0_gg_hhg_globalsl1, only: epspow
      implicit none
      abb51(1)=sqrt(mT**2)
      abb51(2)=sqrt2**(-1)
      abb51(3)=spak1k2**(-1)
      abb51(4)=spak2k5**(-1)
      abb51(5)=spak2l3**(-1)
      abb51(6)=spbl3k2**(-1)
      abb51(7)=abb51(4)*gHT**2
      abb51(8)=i_*abb51(2)
      abb51(9)=abb51(8)*c2
      abb51(10)=abb51(9)*abb51(3)
      abb51(11)=abb51(10)*abb51(7)
      abb51(8)=abb51(8)*c1
      abb51(12)=abb51(3)*abb51(8)
      abb51(13)=abb51(7)*abb51(12)
      abb51(14)=abb51(11)-abb51(13)
      abb51(15)=abb51(14)*spbk5k1
      abb51(16)=abb51(1)**4
      abb51(17)=abb51(16)*abb51(15)
      abb51(18)=es12*spbk5k1
      abb51(19)=abb51(1)**2
      abb51(20)=abb51(18)*abb51(19)
      abb51(21)=abb51(20)*abb51(14)
      abb51(22)=-abb51(17)+2.0_ki*abb51(21)
      abb51(23)=es34-es51
      abb51(22)=abb51(22)*abb51(23)
      abb51(17)=-abb51(17)+abb51(21)
      abb51(24)=spbl3k2*spak2l3
      abb51(17)=abb51(17)*abb51(24)
      abb51(25)=abb51(14)*abb51(18)
      abb51(26)=abb51(19)*es34
      abb51(27)=abb51(19)*es51
      abb51(28)=abb51(26)-abb51(27)
      abb51(29)=mH**2*abb51(6)*abb51(5)
      abb51(30)=abb51(28)*abb51(29)
      abb51(31)=-abb51(30)-abb51(16)
      abb51(31)=abb51(25)*abb51(31)
      abb51(32)=spbk5l3*spal3k5
      abb51(33)=abb51(32)*abb51(21)
      abb51(34)=gHT*abb51(4)
      abb51(34)=abb51(34)**2
      abb51(35)=abb51(34)*abb51(8)
      abb51(36)=abb51(9)*abb51(34)
      abb51(37)=abb51(35)-abb51(36)
      abb51(38)=spbl3k1*spal3k5
      abb51(39)=abb51(37)*abb51(38)
      abb51(40)=abb51(20)*abb51(39)
      abb51(17)=abb51(40)+abb51(33)+abb51(17)+abb51(22)+abb51(31)
      abb51(17)=2.0_ki*abb51(17)
      abb51(22)=abb51(13)*spbk5k1
      abb51(31)=abb51(22)*abb51(19)
      abb51(33)=abb51(18)*abb51(13)
      abb51(31)=abb51(31)-abb51(33)
      abb51(40)=-abb51(31)*abb51(24)
      abb51(40)=-abb51(21)+abb51(40)
      abb51(40)=4.0_ki*abb51(40)
      abb51(41)=-abb51(31)*abb51(23)
      abb51(42)=spbk5k1*abb51(11)
      abb51(43)=abb51(19)*es12
      abb51(44)=abb51(42)*abb51(43)
      abb51(41)=abb51(44)+abb51(41)
      abb51(41)=4.0_ki*abb51(41)
      abb51(44)=-abb51(22)*abb51(28)
      abb51(45)=abb51(13)-2.0_ki*abb51(11)
      abb51(45)=abb51(45)*abb51(20)
      abb51(45)=abb51(45)-abb51(44)
      abb51(21)=abb51(21)+abb51(44)
      abb51(21)=abb51(21)*abb51(29)
      abb51(46)=abb51(42)*abb51(24)
      abb51(47)=abb51(19)*abb51(46)
      abb51(48)=abb51(33)*abb51(32)
      abb51(49)=abb51(35)*abb51(18)
      abb51(50)=-abb51(38)*abb51(49)
      abb51(21)=abb51(50)+abb51(48)+abb51(21)+2.0_ki*abb51(45)+abb51(47)
      abb51(21)=4.0_ki*abb51(21)
      abb51(45)=abb51(42)*es12
      abb51(47)=8.0_ki*abb51(45)
      abb51(48)=-8.0_ki*abb51(33)
      abb51(50)=abb51(11)+abb51(13)
      abb51(51)=-abb51(50)*abb51(20)
      abb51(52)=-abb51(19)*abb51(15)
      abb51(52)=abb51(52)-abb51(33)
      abb51(52)=abb51(52)*abb51(24)
      abb51(44)=abb51(52)+abb51(51)+abb51(44)
      abb51(44)=4.0_ki*abb51(44)
      abb51(51)=-abb51(22)*abb51(23)
      abb51(52)=abb51(51)+abb51(45)
      abb51(53)=abb51(46)-abb51(52)
      abb51(53)=8.0_ki*abb51(53)
      abb51(54)=2.0_ki*abb51(19)
      abb51(55)=abb51(15)*abb51(54)
      abb51(55)=abb51(55)-abb51(25)
      abb51(55)=abb51(55)*abb51(24)
      abb51(56)=abb51(23)*abb51(29)
      abb51(56)=abb51(56)-abb51(32)
      abb51(57)=abb51(25)*abb51(56)
      abb51(39)=-abb51(18)*abb51(39)
      abb51(39)=abb51(39)+abb51(55)+abb51(57)
      abb51(39)=2.0_ki*abb51(39)
      abb51(55)=4.0_ki*abb51(22)*abb51(24)
      abb51(57)=-4.0_ki*abb51(52)
      abb51(25)=-abb51(25)-abb51(51)
      abb51(25)=abb51(25)*abb51(29)
      abb51(25)=abb51(25)+2.0_ki*abb51(52)-abb51(46)
      abb51(25)=4.0_ki*abb51(25)
      abb51(46)=abb51(24)*abb51(15)
      abb51(52)=-abb51(42)*abb51(23)
      abb51(46)=abb51(46)-abb51(45)+abb51(52)
      abb51(46)=4.0_ki*abb51(46)
      abb51(52)=-abb51(24)+abb51(23)
      abb51(52)=abb51(15)*abb51(52)
      abb51(45)=abb51(45)+abb51(52)
      abb51(45)=2.0_ki*abb51(45)
      abb51(8)=abb51(8)*abb51(7)
      abb51(7)=abb51(7)*abb51(9)
      abb51(7)=abb51(8)-abb51(7)
      abb51(9)=spbk5k1**2
      abb51(7)=abb51(7)*abb51(9)*abb51(19)
      abb51(52)=abb51(42)*abb51(19)
      abb51(52)=abb51(52)-abb51(33)
      abb51(58)=spbk5l3*spak2l3
      abb51(59)=-abb51(52)*abb51(58)
      abb51(60)=abb51(37)*spbk5k1
      abb51(61)=-abb51(19)*abb51(60)
      abb51(61)=abb51(61)-abb51(49)
      abb51(62)=spbl3k1*spak2l3
      abb51(61)=abb51(61)*abb51(62)
      abb51(7)=abb51(61)+abb51(7)+abb51(59)
      abb51(7)=2.0_ki*abb51(7)
      abb51(59)=abb51(35)*spbk5k1
      abb51(61)=4.0_ki*abb51(59)*abb51(62)
      abb51(8)=abb51(8)*abb51(9)
      abb51(8)=4.0_ki*abb51(8)
      abb51(9)=abb51(29)-1.0_ki
      abb51(63)=-abb51(9)*abb51(8)
      abb51(64)=abb51(60)*abb51(62)
      abb51(65)=abb51(58)*abb51(42)
      abb51(64)=abb51(65)+abb51(64)
      abb51(65)=-4.0_ki*abb51(64)
      abb51(64)=2.0_ki*abb51(64)
      abb51(66)=-abb51(59)*abb51(28)
      abb51(67)=2.0_ki*abb51(36)
      abb51(68)=-abb51(20)*abb51(67)
      abb51(66)=abb51(68)+abb51(66)
      abb51(66)=2.0_ki*abb51(66)
      abb51(68)=abb51(18)*abb51(36)
      abb51(69)=-abb51(59)*abb51(23)
      abb51(69)=-abb51(68)+abb51(69)
      abb51(69)=2.0_ki*abb51(69)
      abb51(70)=abb51(32)+abb51(24)
      abb51(71)=abb51(11)*abb51(19)
      abb51(70)=-abb51(71)*abb51(70)
      abb51(72)=abb51(28)-abb51(43)
      abb51(73)=-abb51(50)*abb51(72)
      abb51(74)=abb51(14)*abb51(16)
      abb51(30)=abb51(11)*abb51(30)
      abb51(30)=abb51(30)+3.0_ki*abb51(74)+abb51(73)+abb51(70)
      abb51(30)=spbk2k1*abb51(30)
      abb51(70)=spal3k5*spbl3k2
      abb51(31)=-abb51(31)*abb51(70)
      abb51(10)=abb51(10)*abb51(34)
      abb51(73)=abb51(38)*abb51(10)
      abb51(74)=abb51(43)*abb51(73)
      abb51(30)=abb51(74)+abb51(31)+abb51(30)
      abb51(30)=2.0_ki*abb51(30)
      abb51(31)=abb51(14)*abb51(19)
      abb51(74)=4.0_ki*spbk2k1
      abb51(75)=abb51(31)*abb51(74)
      abb51(76)=abb51(9)*abb51(74)
      abb51(31)=-abb51(31)*abb51(76)
      abb51(71)=abb51(74)*abb51(71)
      abb51(56)=abb51(24)-abb51(56)
      abb51(56)=abb51(11)*abb51(56)
      abb51(77)=abb51(23)-es12
      abb51(78)=abb51(50)*abb51(77)
      abb51(79)=-abb51(14)*abb51(54)
      abb51(56)=abb51(79)+abb51(78)+abb51(56)
      abb51(56)=spbk2k1*abb51(56)
      abb51(22)=abb51(22)*abb51(70)
      abb51(73)=-es12*abb51(73)
      abb51(22)=abb51(73)+abb51(22)+abb51(56)
      abb51(22)=2.0_ki*abb51(22)
      abb51(56)=abb51(74)*abb51(14)
      abb51(73)=abb51(14)*abb51(76)
      abb51(76)=2.0_ki*spbk2k1
      abb51(14)=-abb51(14)*abb51(76)
      abb51(50)=-abb51(50)*abb51(18)
      abb51(78)=abb51(29)*abb51(33)
      abb51(59)=abb51(38)*abb51(59)
      abb51(50)=abb51(59)+abb51(50)+abb51(78)
      abb51(50)=2.0_ki*abb51(50)
      abb51(59)=2.0_ki*abb51(10)
      abb51(78)=abb51(43)*abb51(59)
      abb51(12)=abb51(12)*abb51(34)
      abb51(34)=abb51(12)*es12
      abb51(79)=2.0_ki*abb51(34)
      abb51(80)=2.0_ki*abb51(12)
      abb51(81)=abb51(80)*spal3k5
      abb51(20)=-abb51(20)*abb51(81)
      abb51(82)=4.0_ki*abb51(12)
      abb51(83)=abb51(18)*abb51(82)*spal3k5
      abb51(84)=abb51(18)*abb51(81)
      abb51(18)=spak2l3*abb51(18)*abb51(80)
      abb51(85)=abb51(10)-abb51(12)
      abb51(16)=abb51(16)*abb51(85)
      abb51(86)=-abb51(10)+3.0_ki*abb51(12)
      abb51(87)=abb51(86)*abb51(43)
      abb51(88)=abb51(82)-abb51(10)
      abb51(88)=abb51(88)*abb51(27)
      abb51(87)=abb51(88)+abb51(16)+abb51(87)
      abb51(87)=es51*abb51(87)
      abb51(88)=-7.0_ki*abb51(12)+abb51(59)
      abb51(88)=abb51(88)*abb51(27)
      abb51(86)=abb51(86)*abb51(26)
      abb51(89)=abb51(34)*abb51(19)
      abb51(86)=abb51(86)+abb51(88)-abb51(16)-4.0_ki*abb51(89)
      abb51(86)=es34*abb51(86)
      abb51(88)=abb51(10)+abb51(12)
      abb51(90)=abb51(43)*abb51(88)
      abb51(16)=abb51(16)+abb51(90)
      abb51(16)=es12*abb51(16)
      abb51(91)=abb51(12)*es34
      abb51(92)=abb51(91)*abb51(19)
      abb51(92)=abb51(92)-abb51(89)
      abb51(93)=-abb51(88)*abb51(27)
      abb51(93)=abb51(93)+abb51(92)
      abb51(93)=abb51(93)*abb51(24)
      abb51(94)=abb51(27)*abb51(12)
      abb51(89)=-abb51(89)-abb51(94)
      abb51(89)=es51*abb51(89)
      abb51(27)=abb51(80)*abb51(27)
      abb51(27)=abb51(27)-abb51(92)
      abb51(27)=es34*abb51(27)
      abb51(27)=abb51(89)+abb51(27)
      abb51(27)=abb51(27)*abb51(29)
      abb51(89)=-abb51(94)+abb51(92)
      abb51(89)=abb51(89)*abb51(32)
      abb51(92)=spak1l3*spbl3k2
      abb51(52)=-abb51(52)*abb51(92)
      abb51(94)=abb51(35)*spbk5k2
      abb51(38)=abb51(94)*abb51(38)
      abb51(95)=abb51(19)*abb51(38)
      abb51(16)=abb51(52)+abb51(95)+abb51(89)+abb51(27)+abb51(93)+abb51(86)+abb&
      &51(16)+abb51(87)
      abb51(16)=2.0_ki*abb51(16)
      abb51(27)=abb51(85)*abb51(28)
      abb51(28)=abb51(80)-abb51(10)
      abb51(28)=abb51(28)*abb51(43)
      abb51(52)=abb51(91)-abb51(34)
      abb51(86)=abb51(12)*es51
      abb51(87)=abb51(52)-abb51(86)
      abb51(89)=abb51(10)*abb51(19)
      abb51(91)=abb51(89)+abb51(87)
      abb51(93)=-abb51(91)*abb51(24)
      abb51(27)=abb51(93)+abb51(28)+abb51(27)
      abb51(27)=4.0_ki*abb51(27)
      abb51(28)=abb51(86)+abb51(34)
      abb51(93)=abb51(88)*abb51(19)
      abb51(95)=abb51(93)-abb51(28)
      abb51(95)=es51*abb51(95)
      abb51(96)=abb51(80)*es51
      abb51(96)=abb51(96)-abb51(52)
      abb51(93)=-abb51(93)+abb51(96)
      abb51(93)=es34*abb51(93)
      abb51(90)=abb51(93)+abb51(90)+abb51(95)
      abb51(90)=4.0_ki*abb51(90)
      abb51(93)=abb51(85)*es12
      abb51(95)=abb51(24)*abb51(10)
      abb51(89)=abb51(95)-abb51(89)-abb51(93)
      abb51(89)=es51*abb51(89)
      abb51(26)=abb51(43)-abb51(26)
      abb51(26)=-abb51(85)*abb51(26)
      abb51(43)=-abb51(91)*abb51(32)
      abb51(15)=abb51(15)*abb51(92)
      abb51(15)=abb51(15)-abb51(38)+abb51(43)+abb51(26)+abb51(89)
      abb51(15)=4.0_ki*abb51(15)
      abb51(26)=-abb51(85)*abb51(23)
      abb51(43)=abb51(95)+abb51(26)
      abb51(89)=-abb51(34)+abb51(43)
      abb51(89)=8.0_ki*abb51(89)
      abb51(91)=abb51(88)*es51
      abb51(97)=abb51(88)*es34
      abb51(98)=abb51(88)*es12
      abb51(99)=abb51(98)+abb51(91)-abb51(97)
      abb51(100)=-8.0_ki*abb51(99)
      abb51(101)=es51+abb51(32)
      abb51(101)=8.0_ki*abb51(10)*abb51(101)
      abb51(102)=abb51(80)+abb51(10)
      abb51(72)=abb51(102)*abb51(72)
      abb51(103)=abb51(87)*abb51(24)
      abb51(72)=abb51(103)+abb51(72)
      abb51(72)=4.0_ki*abb51(72)
      abb51(103)=-16.0_ki*abb51(87)
      abb51(104)=abb51(85)*abb51(19)
      abb51(105)=abb51(104)+abb51(98)
      abb51(102)=es51*abb51(102)
      abb51(97)=-abb51(97)+2.0_ki*abb51(105)+abb51(102)
      abb51(97)=es34*abb51(97)
      abb51(102)=abb51(54)*abb51(85)
      abb51(98)=-abb51(102)-abb51(98)
      abb51(98)=es12*abb51(98)
      abb51(105)=-abb51(80)-3.0_ki*abb51(10)
      abb51(105)=es12*abb51(105)
      abb51(86)=-abb51(86)-abb51(102)+abb51(105)
      abb51(86)=es51*abb51(86)
      abb51(52)=abb51(91)-abb51(52)
      abb51(52)=abb51(52)*abb51(24)
      abb51(28)=es51*abb51(28)
      abb51(91)=-es34*abb51(96)
      abb51(28)=abb51(28)+abb51(91)
      abb51(28)=abb51(28)*abb51(29)
      abb51(91)=-abb51(87)*abb51(32)
      abb51(96)=abb51(42)*abb51(92)
      abb51(28)=abb51(96)-abb51(38)+abb51(91)+abb51(28)+abb51(52)+abb51(97)+abb&
      &51(98)+abb51(86)
      abb51(28)=2.0_ki*abb51(28)
      abb51(38)=abb51(10)*es12
      abb51(38)=abb51(38)+abb51(43)
      abb51(38)=4.0_ki*abb51(38)
      abb51(43)=-4.0_ki*abb51(99)
      abb51(52)=abb51(93)+abb51(26)
      abb51(86)=abb51(10)*abb51(32)
      abb51(86)=abb51(86)+abb51(52)
      abb51(86)=4.0_ki*abb51(86)
      abb51(59)=abb51(59)-abb51(12)
      abb51(59)=4.0_ki*abb51(59)*abb51(77)
      abb51(52)=2.0_ki*abb51(52)
      abb51(24)=abb51(24)+abb51(23)
      abb51(77)=abb51(36)*spbk5k1
      abb51(24)=abb51(77)*abb51(24)
      abb51(91)=4.0_ki*abb51(36)
      abb51(93)=5.0_ki*abb51(35)-abb51(91)
      abb51(93)=spbk5k1*abb51(93)*abb51(19)
      abb51(23)=-abb51(77)*abb51(23)
      abb51(23)=abb51(49)+abb51(23)
      abb51(23)=abb51(23)*abb51(29)
      abb51(49)=-abb51(19)*abb51(80)
      abb51(49)=abb51(49)-abb51(87)
      abb51(49)=abb51(49)*abb51(58)
      abb51(77)=spbl3k1*abb51(60)
      abb51(96)=spbk5l3*abb51(42)
      abb51(77)=abb51(96)+abb51(77)
      abb51(77)=spak1l3*abb51(77)
      abb51(96)=-abb51(62)*abb51(94)
      abb51(23)=abb51(77)+abb51(96)+abb51(49)+abb51(23)+abb51(93)-abb51(68)+abb&
      &51(24)
      abb51(23)=2.0_ki*abb51(23)
      abb51(24)=abb51(58)*abb51(82)
      abb51(35)=3.0_ki*abb51(35)
      abb51(49)=abb51(35)-abb51(36)
      abb51(68)=-4.0_ki*spbk5k1*abb51(49)
      abb51(35)=-abb51(35)+abb51(67)
      abb51(35)=abb51(35)*abb51(29)
      abb51(35)=abb51(49)+abb51(35)
      abb51(35)=spbk5k1*abb51(35)
      abb51(49)=abb51(10)*abb51(58)
      abb51(35)=abb51(49)+abb51(35)
      abb51(35)=4.0_ki*abb51(35)
      abb51(49)=-8.0_ki*abb51(12)*abb51(58)
      abb51(58)=abb51(80)*abb51(58)
      abb51(58)=abb51(60)+abb51(58)
      abb51(58)=2.0_ki*abb51(58)
      abb51(60)=-spbk5k2*abb51(19)*abb51(91)
      abb51(37)=2.0_ki*spbk5k2*abb51(37)
      abb51(67)=abb51(13)*spbl3k2
      abb51(77)=-abb51(54)*abb51(67)
      abb51(91)=4.0_ki*abb51(67)
      abb51(67)=2.0_ki*abb51(67)
      abb51(11)=-spbk5l3*abb51(11)
      abb51(36)=spbl3k1*abb51(36)
      abb51(11)=abb51(11)+abb51(36)
      abb51(11)=2.0_ki*abb51(11)
      abb51(36)=-abb51(87)*abb51(70)
      abb51(70)=-spak1k5*spbk2k1*abb51(88)*abb51(54)
      abb51(36)=abb51(36)+abb51(70)
      abb51(36)=2.0_ki*abb51(36)
      abb51(70)=-spak1k5*abb51(10)*abb51(74)
      abb51(26)=abb51(26)-abb51(34)
      abb51(26)=-abb51(26)*abb51(29)
      abb51(32)=abb51(12)*abb51(32)
      abb51(26)=abb51(32)+abb51(26)+6.0_ki*abb51(104)-abb51(95)
      abb51(26)=2.0_ki*abb51(26)
      abb51(32)=8.0_ki*abb51(85)
      abb51(9)=-abb51(9)*abb51(32)
      abb51(34)=4.0_ki*abb51(85)
      abb51(81)=abb51(81)*spbk5k2
      abb51(19)=-abb51(19)*abb51(81)
      abb51(82)=abb51(82)*spbk5k2
      abb51(85)=spal3k5*abb51(82)
      abb51(88)=spbk5k2*spak2l3*abb51(12)
      abb51(10)=spak1l3*spbk5k1*abb51(10)
      abb51(10)=abb51(88)+abb51(10)
      abb51(10)=2.0_ki*abb51(10)
      abb51(87)=-2.0_ki*abb51(87)*abb51(92)
      abb51(82)=-spak1k5*abb51(82)
      abb51(29)=abb51(29)*abb51(94)
      abb51(12)=spak1l3*spbk5l3*abb51(12)
      abb51(12)=abb51(29)+abb51(12)
      abb51(12)=2.0_ki*abb51(12)
      abb51(29)=abb51(13)*abb51(74)
      abb51(13)=abb51(13)*abb51(76)
      abb51(62)=-abb51(80)*abb51(62)
      abb51(54)=abb51(42)*abb51(54)
      abb51(33)=abb51(54)+abb51(33)+abb51(51)
      abb51(33)=2.0_ki*abb51(33)
      abb51(42)=2.0_ki*abb51(42)
      R2d51=0.0_ki
      rat2 = rat2 + R2d51
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='51' value='", &
          & R2d51, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd51h3
