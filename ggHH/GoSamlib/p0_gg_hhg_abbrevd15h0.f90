module     p0_gg_hhg_abbrevd15h0
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_globalsh0
   implicit none
   private
   complex(ki), dimension(113), public :: abb15
   complex(ki), public :: R2d15
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
      abb15(1)=sqrt2**(-1)
      abb15(2)=es12**(-1)
      abb15(3)=spbk2k1**(-1)
      abb15(4)=spak2k5**(-1)
      abb15(5)=sqrt(mT**2)
      abb15(6)=spbk5k2**(-1)
      abb15(7)=spak2l3**(-1)
      abb15(8)=spbl3k2**(-1)
      abb15(9)=spbl4k2**(-1)
      abb15(10)=spak2l4**(-1)
      abb15(11)=c1-c2
      abb15(12)=gHT**2*i_*abb15(3)
      abb15(13)=abb15(4)*abb15(1)
      abb15(14)=abb15(11)*abb15(13)*abb15(12)*abb15(2)
      abb15(15)=spak1k2**2
      abb15(16)=-abb15(15)*abb15(14)
      abb15(17)=abb15(16)*spbk5k1
      abb15(18)=8.0_ki/3.0_ki*abb15(17)
      abb15(11)=abb15(11)*abb15(12)
      abb15(12)=abb15(11)*abb15(13)
      abb15(13)=-spbk5k1*abb15(15)*abb15(12)
      abb15(15)=spak1k2*abb15(12)
      abb15(19)=spak2l4*spbk5l4
      abb15(20)=abb15(15)*abb15(19)
      abb15(21)=abb15(20)+abb15(13)
      abb15(22)=abb15(8)*abb15(7)
      abb15(23)=mH**2
      abb15(24)=abb15(22)*abb15(23)
      abb15(21)=abb15(21)*abb15(24)
      abb15(14)=spak1k2*abb15(14)
      abb15(25)=abb15(14)*spak2l3
      abb15(26)=abb15(25)*spbl3k2
      abb15(27)=abb15(26)*abb15(19)
      abb15(28)=2.0_ki*abb15(16)
      abb15(29)=abb15(6)*spbk5k1
      abb15(30)=abb15(28)*abb15(29)
      abb15(31)=abb15(30)*spbl3k2
      abb15(32)=spal3l4*spbk5l4
      abb15(33)=abb15(31)*abb15(32)
      abb15(34)=spbk5l3*abb15(15)*spak2l3
      abb15(35)=abb15(15)*abb15(29)
      abb15(36)=spak1l3*spbk5l3
      abb15(37)=abb15(35)*abb15(36)
      abb15(21)=-abb15(21)-abb15(33)+abb15(37)+abb15(27)+abb15(34)
      abb15(27)=4.0_ki*abb15(17)
      abb15(34)=abb15(27)*abb15(23)
      abb15(20)=abb15(34)-abb15(20)
      abb15(34)=2.0_ki*abb15(17)
      abb15(37)=abb15(5)**2
      abb15(38)=abb15(34)*abb15(37)
      abb15(39)=abb15(23)*abb15(9)
      abb15(40)=abb15(39)*abb15(10)
      abb15(41)=abb15(13)*abb15(40)
      abb15(42)=abb15(41)+abb15(20)-abb15(38)
      abb15(43)=2.0_ki*abb15(26)
      abb15(44)=abb15(29)*spbk5l4
      abb15(45)=abb15(43)*abb15(44)
      abb15(46)=abb15(44)*abb15(15)
      abb15(47)=abb15(45)-abb15(46)
      abb15(47)=abb15(47)*spak1l4
      abb15(48)=-abb15(47)-abb15(21)-abb15(42)
      abb15(48)=abb15(37)*abb15(48)
      abb15(49)=abb15(14)*abb15(29)
      abb15(50)=spak1l4*spbk5l4
      abb15(51)=abb15(50)*abb15(49)
      abb15(52)=abb15(17)*abb15(40)
      abb15(53)=abb15(51)-abb15(52)
      abb15(54)=abb15(36)*abb15(49)
      abb15(55)=abb15(17)*abb15(24)
      abb15(56)=abb15(54)-abb15(55)
      abb15(57)=abb15(53)-abb15(56)
      abb15(58)=abb15(57)*abb15(37)
      abb15(59)=abb15(14)*abb15(37)
      abb15(60)=abb15(59)*abb15(19)
      abb15(61)=abb15(25)*abb15(37)
      abb15(62)=abb15(61)*spbk5l3
      abb15(58)=-abb15(62)+abb15(58)+abb15(60)
      abb15(63)=es51-es34
      abb15(58)=abb15(58)*abb15(63)
      abb15(64)=2.0_ki*abb15(14)
      abb15(65)=spbk5l4*spak2l4**2
      abb15(66)=abb15(65)*abb15(64)
      abb15(67)=abb15(49)*spak1l4
      abb15(67)=4.0_ki*abb15(67)
      abb15(68)=abb15(67)*abb15(19)
      abb15(66)=abb15(66)+abb15(68)
      abb15(68)=2.0_ki*abb15(49)
      abb15(69)=abb15(68)*abb15(36)
      abb15(70)=abb15(69)*spak2l4
      abb15(71)=abb15(55)*spak2l4
      abb15(70)=abb15(70)-abb15(71)
      abb15(72)=-abb15(70)+abb15(66)
      abb15(72)=abb15(37)*abb15(72)
      abb15(62)=-spak2l4*abb15(62)
      abb15(62)=abb15(62)+abb15(72)
      abb15(62)=spbl4k2*abb15(62)
      abb15(72)=abb15(50)*abb15(61)
      abb15(73)=abb15(32)*abb15(16)
      abb15(74)=-abb15(37)*abb15(73)
      abb15(72)=abb15(72)+abb15(74)
      abb15(72)=spbl3k1*abb15(72)
      abb15(74)=abb15(59)*spak2l4
      abb15(75)=spak1l3*spbk5k1*abb15(74)
      abb15(76)=spbk5k2*spak2l4*abb15(61)
      abb15(75)=abb15(75)+abb15(76)
      abb15(75)=spbl4l3*abb15(75)
      abb15(76)=abb15(28)*abb15(39)
      abb15(77)=abb15(24)*abb15(16)
      abb15(78)=abb15(77)*spak2l4
      abb15(76)=abb15(76)-abb15(78)
      abb15(76)=abb15(76)*spbk5k2
      abb15(79)=abb15(64)*spak1l4
      abb15(80)=abb15(79)*abb15(19)
      abb15(76)=abb15(76)-abb15(80)
      abb15(80)=abb15(37)*abb15(76)
      abb15(81)=abb15(36)*abb15(74)
      abb15(80)=abb15(81)+abb15(80)
      abb15(80)=spbl4k1*abb15(80)
      abb15(48)=abb15(80)+abb15(75)+abb15(72)+abb15(62)+abb15(58)+abb15(48)
      abb15(48)=2.0_ki*abb15(48)
      abb15(58)=abb15(25)*spbk5k2
      abb15(62)=abb15(58)*spak2l4
      abb15(72)=abb15(14)*spak1l3
      abb15(75)=abb15(72)*spak2l4
      abb15(80)=abb15(75)*spbk5k1
      abb15(62)=abb15(62)+abb15(80)
      abb15(62)=abb15(62)*spbl4l3
      abb15(80)=abb15(16)*spbk5k2
      abb15(81)=abb15(40)*spak2l3
      abb15(82)=abb15(81)*abb15(80)
      abb15(82)=abb15(82)-abb15(73)
      abb15(82)=spbl3k1*abb15(82)
      abb15(83)=6.0_ki*abb15(37)
      abb15(84)=-abb15(17)*abb15(83)
      abb15(85)=abb15(24)*abb15(19)
      abb15(86)=abb15(15)*abb15(85)
      abb15(87)=2.0_ki*spbl3k2
      abb15(88)=-spak2l3*abb15(87)*abb15(52)
      abb15(71)=-spbl4k2*abb15(71)
      abb15(71)=abb15(62)+abb15(33)+abb15(71)+abb15(88)+abb15(84)+abb15(86)+abb&
      &15(82)
      abb15(71)=2.0_ki*abb15(71)
      abb15(82)=abb15(50)*abb15(25)
      abb15(82)=abb15(82)-abb15(73)
      abb15(82)=abb15(82)*spbl3k1
      abb15(21)=abb15(82)-abb15(21)+abb15(62)
      abb15(62)=abb15(25)*spbk5l3
      abb15(56)=abb15(56)+abb15(62)
      abb15(56)=-abb15(56)*abb15(63)
      abb15(82)=abb15(62)*spak2l4
      abb15(70)=abb15(82)+abb15(70)
      abb15(82)=-spbl4k2*abb15(70)
      abb15(75)=abb15(75)*spbk5l3
      abb15(78)=-spbk5k2*abb15(78)
      abb15(78)=abb15(75)+abb15(78)
      abb15(78)=spbl4k1*abb15(78)
      abb15(84)=-abb15(37)*abb15(27)
      abb15(45)=-spak1l4*abb15(45)
      abb15(45)=abb15(78)+abb15(82)+abb15(45)+abb15(84)+abb15(56)+abb15(21)
      abb15(45)=2.0_ki*abb15(45)
      abb15(56)=abb15(19)*abb15(14)
      abb15(53)=abb15(53)+abb15(56)
      abb15(53)=-abb15(53)*abb15(63)
      abb15(78)=abb15(68)*spak1l4
      abb15(82)=abb15(78)*abb15(19)
      abb15(84)=abb15(65)*abb15(14)
      abb15(82)=abb15(82)+abb15(84)
      abb15(84)=2.0_ki*spbl4k2
      abb15(86)=-abb15(82)*abb15(84)
      abb15(88)=abb15(14)*spak1l4
      abb15(89)=abb15(88)*abb15(19)
      abb15(90)=abb15(80)*abb15(39)
      abb15(89)=abb15(89)-abb15(90)
      abb15(90)=spbl4k1*abb15(89)
      abb15(91)=-spak1l4*abb15(46)
      abb15(42)=2.0_ki*abb15(90)+abb15(86)+abb15(91)+abb15(53)+abb15(42)
      abb15(42)=2.0_ki*abb15(42)
      abb15(53)=8.0_ki*abb15(17)
      abb15(86)=12.0_ki*abb15(37)
      abb15(90)=abb15(86)*abb15(49)*spbk5l4
      abb15(91)=-abb15(24)*abb15(46)
      abb15(92)=abb15(40)*abb15(25)
      abb15(93)=abb15(87)*abb15(92)
      abb15(94)=-abb15(44)*abb15(93)
      abb15(95)=abb15(68)*spbl4k2
      abb15(96)=-abb15(85)*abb15(95)
      abb15(90)=abb15(96)+abb15(94)+abb15(90)+abb15(91)
      abb15(90)=spak1l4*abb15(90)
      abb15(91)=abb15(92)*spbk5l3
      abb15(94)=mH**4
      abb15(96)=abb15(94)*abb15(22)
      abb15(97)=abb15(10)*abb15(9)
      abb15(98)=abb15(96)*abb15(97)
      abb15(99)=abb15(98)*abb15(34)
      abb15(91)=abb15(91)-abb15(99)
      abb15(99)=abb15(51)*abb15(24)
      abb15(54)=abb15(54)*abb15(40)
      abb15(54)=abb15(91)+abb15(99)+abb15(54)
      abb15(54)=-abb15(54)*abb15(63)
      abb15(99)=abb15(72)*abb15(39)
      abb15(100)=spbk5l3*abb15(99)
      abb15(101)=abb15(85)*abb15(79)
      abb15(80)=abb15(9)*abb15(96)*abb15(80)
      abb15(80)=-3.0_ki*abb15(80)+abb15(100)+abb15(101)
      abb15(80)=spbl4k1*abb15(80)
      abb15(96)=-spbk5l4*abb15(26)
      abb15(100)=abb15(72)*spbk5k1
      abb15(101)=-spbl4l3*abb15(100)
      abb15(96)=abb15(101)+abb15(96)
      abb15(96)=abb15(39)*abb15(96)
      abb15(101)=2.0_ki*abb15(52)
      abb15(102)=-abb15(37)*abb15(101)
      abb15(60)=3.0_ki*abb15(60)+abb15(102)
      abb15(102)=abb15(15)*spbk5l4
      abb15(103)=abb15(9)*abb15(102)
      abb15(13)=abb15(13)*abb15(97)
      abb15(13)=2.0_ki*abb15(13)+5.0_ki*abb15(17)+abb15(103)
      abb15(13)=abb15(94)*abb15(13)
      abb15(17)=-abb15(23)*abb15(38)
      abb15(13)=abb15(17)+abb15(13)
      abb15(13)=abb15(13)*abb15(22)
      abb15(17)=abb15(15)*abb15(40)
      abb15(38)=abb15(17)*spak2l3
      abb15(97)=abb15(38)-abb15(61)
      abb15(103)=abb15(25)*abb15(23)
      abb15(104)=abb15(97)+abb15(103)
      abb15(105)=-spbk5l3*abb15(104)
      abb15(106)=abb15(92)*abb15(50)
      abb15(73)=-abb15(40)*abb15(73)
      abb15(73)=abb15(106)+abb15(73)
      abb15(73)=spbl3k1*abb15(73)
      abb15(106)=-abb15(23)+abb15(37)
      abb15(106)=abb15(49)*abb15(106)
      abb15(107)=abb15(17)*abb15(29)
      abb15(106)=2.0_ki*abb15(106)-abb15(107)
      abb15(106)=abb15(106)*abb15(36)
      abb15(33)=abb15(40)*abb15(33)
      abb15(13)=abb15(80)+abb15(73)+abb15(33)+abb15(106)+abb15(105)+2.0_ki*abb1&
      &5(60)+abb15(13)+abb15(96)+abb15(90)+abb15(54)
      abb15(13)=2.0_ki*abb15(13)
      abb15(33)=abb15(69)+abb15(62)
      abb15(54)=2.0_ki*abb15(55)-abb15(33)
      abb15(54)=4.0_ki*abb15(54)
      abb15(52)=8.0_ki*abb15(52)
      abb15(60)=-abb15(40)*abb15(69)
      abb15(60)=abb15(60)-abb15(91)
      abb15(60)=4.0_ki*abb15(60)
      abb15(57)=-abb15(62)+abb15(57)+abb15(56)
      abb15(57)=abb15(57)*abb15(63)
      abb15(62)=-abb15(70)+abb15(66)
      abb15(62)=spbl4k2*abb15(62)
      abb15(66)=abb15(75)+abb15(76)
      abb15(66)=spbl4k1*abb15(66)
      abb15(20)=abb15(66)+abb15(62)-abb15(47)+abb15(57)+abb15(21)-abb15(20)-abb&
      &15(41)
      abb15(20)=2.0_ki*abb15(20)
      abb15(21)=abb15(55)+abb15(56)-abb15(101)
      abb15(21)=4.0_ki*abb15(51)+2.0_ki*abb15(21)-abb15(33)
      abb15(21)=2.0_ki*abb15(21)
      abb15(33)=abb15(83)*abb15(16)
      abb15(41)=abb15(44)*abb15(33)
      abb15(47)=abb15(77)*spbl4k2
      abb15(51)=abb15(47)*abb15(19)
      abb15(57)=abb15(29)*abb15(51)
      abb15(41)=abb15(41)+abb15(57)
      abb15(57)=abb15(68)*spak1l3
      abb15(57)=abb15(57)+abb15(25)
      abb15(57)=abb15(57)*spbl4l3
      abb15(62)=-abb15(19)*abb15(57)
      abb15(41)=2.0_ki*abb15(41)+abb15(62)
      abb15(44)=4.0_ki*abb15(16)*abb15(44)
      abb15(33)=-spbk5l4*abb15(33)
      abb15(62)=abb15(72)*spbl4l3
      abb15(66)=abb15(19)*abb15(62)
      abb15(33)=abb15(66)+abb15(33)-abb15(51)
      abb15(51)=-spbk5l4*abb15(28)
      abb15(34)=-abb15(39)*abb15(34)
      abb15(34)=abb15(34)+abb15(82)
      abb15(34)=spbl4l3*abb15(34)
      abb15(66)=abb15(30)*spbk5l3
      abb15(68)=abb15(37)*abb15(66)
      abb15(34)=abb15(68)+abb15(34)
      abb15(68)=abb15(16)*spbk5l3
      abb15(69)=abb15(68)*abb15(29)
      abb15(69)=4.0_ki*abb15(69)
      abb15(70)=-abb15(40)*abb15(69)
      abb15(73)=-spbl4l3*abb15(89)
      abb15(75)=-abb15(37)*abb15(68)
      abb15(73)=abb15(75)+abb15(73)
      abb15(28)=abb15(28)*spbk5l3
      abb15(75)=abb15(40)*abb15(28)
      abb15(76)=abb15(92)*spbl3k2
      abb15(77)=abb15(49)*spak1l3
      abb15(80)=abb15(40)*spbl3k2
      abb15(82)=abb15(80)*abb15(77)
      abb15(89)=6.0_ki*abb15(59)
      abb15(90)=abb15(82)+abb15(89)+abb15(76)
      abb15(90)=es34*abb15(90)
      abb15(91)=abb15(32)*spbl3k2
      abb15(96)=-abb15(6)*abb15(64)*abb15(91)
      abb15(82)=abb15(96)+abb15(76)-abb15(82)
      abb15(82)=es51*abb15(82)
      abb15(96)=abb15(12)*abb15(85)
      abb15(101)=abb15(32)*abb15(14)
      abb15(105)=-spbl3k1*abb15(101)
      abb15(106)=abb15(92)*spbl3k1
      abb15(108)=spbk5k2*abb15(106)
      abb15(105)=abb15(108)-abb15(96)+abb15(105)
      abb15(105)=spak1k5*abb15(105)
      abb15(108)=abb15(43)*abb15(29)
      abb15(109)=-spak1l4*abb15(108)
      abb15(110)=spal3l4*abb15(31)
      abb15(109)=abb15(110)+abb15(109)
      abb15(110)=abb15(23)*abb15(10)
      abb15(109)=abb15(110)*abb15(109)
      abb15(111)=2.0_ki*abb15(17)
      abb15(112)=-3.0_ki*abb15(15)+abb15(111)
      abb15(112)=abb15(37)*abb15(112)
      abb15(113)=abb15(23)*abb15(37)
      abb15(94)=abb15(94)-3.0_ki*abb15(113)
      abb15(22)=abb15(22)*abb15(15)*abb15(94)
      abb15(22)=abb15(22)+abb15(112)
      abb15(94)=2.0_ki*abb15(103)
      abb15(38)=-abb15(38)-abb15(94)+5.0_ki*abb15(61)
      abb15(38)=spbl3k2*abb15(38)
      abb15(37)=-abb15(37)*abb15(67)
      abb15(37)=-5.0_ki*abb15(74)+abb15(37)
      abb15(37)=abb15(37)*abb15(84)
      abb15(61)=spak1l4*abb15(25)
      abb15(74)=-spal3l4*abb15(16)
      abb15(61)=abb15(74)+abb15(61)
      abb15(61)=abb15(110)*abb15(61)
      abb15(74)=-spak1l3*abb15(89)
      abb15(61)=abb15(74)+abb15(61)
      abb15(61)=spbl3k1*abb15(61)
      abb15(74)=spbl3k2*abb15(99)
      abb15(103)=spak1l4*abb15(59)
      abb15(74)=abb15(74)+4.0_ki*abb15(103)
      abb15(74)=spbl4k1*abb15(74)
      abb15(100)=abb15(100)+abb15(58)
      abb15(100)=spbl4l3*abb15(100)
      abb15(55)=-spbl4k2*abb15(55)
      abb15(55)=abb15(55)+abb15(100)
      abb15(55)=spal4k5*abb15(55)
      abb15(23)=-abb15(23)+abb15(83)
      abb15(23)=abb15(49)*abb15(23)
      abb15(23)=2.0_ki*abb15(23)-abb15(107)
      abb15(23)=spbl3k2*abb15(23)
      abb15(100)=spbl4l3*abb15(12)*abb15(39)
      abb15(23)=abb15(100)+abb15(23)
      abb15(23)=spak1l3*abb15(23)
      abb15(22)=abb15(105)+abb15(55)+abb15(74)+abb15(61)+abb15(82)+abb15(90)+ab&
      &b15(37)+2.0_ki*abb15(22)+abb15(38)+abb15(109)+abb15(23)
      abb15(23)=abb15(14)*spak2l4
      abb15(37)=abb15(23)+abb15(78)
      abb15(38)=spbl4k2*abb15(37)
      abb15(55)=abb15(88)*spbl4k1
      abb15(17)=-abb15(55)-abb15(17)+abb15(38)
      abb15(17)=4.0_ki*abb15(17)
      abb15(38)=spak1l4*abb15(95)
      abb15(61)=-spbl4k1*abb15(79)
      abb15(38)=abb15(61)+abb15(38)
      abb15(38)=abb15(24)*abb15(38)
      abb15(61)=-abb15(15)*abb15(98)
      abb15(61)=-abb15(89)+abb15(61)
      abb15(74)=-abb15(40)*abb15(87)*abb15(77)
      abb15(38)=abb15(74)+2.0_ki*abb15(61)-abb15(76)+abb15(38)
      abb15(38)=2.0_ki*abb15(38)
      abb15(61)=24.0_ki*abb15(59)
      abb15(74)=spbl3k2*abb15(77)
      abb15(55)=abb15(55)+abb15(74)
      abb15(67)=-3.0_ki*abb15(23)-abb15(67)
      abb15(67)=abb15(67)*abb15(84)
      abb15(74)=-spbl3k1*spak1l3
      abb15(74)=abb15(74)+es34
      abb15(74)=abb15(64)*abb15(74)
      abb15(77)=-abb15(24)-1.0_ki
      abb15(77)=abb15(15)*abb15(77)
      abb15(77)=abb15(111)+abb15(77)
      abb15(55)=abb15(67)+2.0_ki*abb15(77)+3.0_ki*abb15(26)+abb15(74)+4.0_ki*ab&
      &b15(55)
      abb15(67)=8.0_ki*abb15(14)
      abb15(74)=abb15(24)*spbl4k2
      abb15(30)=-abb15(30)*abb15(74)
      abb15(30)=abb15(30)+abb15(57)
      abb15(47)=abb15(47)-abb15(62)
      abb15(37)=-spbl4l3*abb15(37)
      abb15(31)=-abb15(40)*abb15(31)
      abb15(31)=abb15(31)+abb15(37)
      abb15(16)=abb15(16)*abb15(80)
      abb15(37)=spbl4l3*abb15(88)
      abb15(16)=abb15(16)+abb15(37)
      abb15(37)=abb15(89)*spak2l4
      abb15(57)=abb15(39)*abb15(26)
      abb15(57)=abb15(37)+abb15(57)
      abb15(57)=spbk5k2*abb15(57)
      abb15(62)=abb15(14)*spal3l4
      abb15(77)=abb15(62)*abb15(19)
      abb15(78)=-spbl3k2*abb15(77)
      abb15(57)=abb15(78)+abb15(57)
      abb15(78)=abb15(64)*spak2l4
      abb15(79)=spbk5k2*abb15(78)
      abb15(82)=spbl3k2*abb15(62)
      abb15(84)=-abb15(92)*abb15(63)
      abb15(84)=abb15(84)-abb15(104)
      abb15(84)=spbk5k2*abb15(84)
      abb15(90)=abb15(101)*abb15(63)
      abb15(56)=spbl4k2*abb15(56)
      abb15(56)=abb15(102)+abb15(56)
      abb15(56)=spal3l4*abb15(56)
      abb15(56)=abb15(84)+abb15(56)+abb15(90)
      abb15(84)=-2.0_ki*abb15(58)
      abb15(90)=-2.0_ki*spbk5k2*abb15(92)
      abb15(98)=-spbl4k2*abb15(62)
      abb15(59)=-abb15(59)*abb15(36)
      abb15(89)=-abb15(50)*abb15(89)
      abb15(100)=-spbl4k2*abb15(88)*abb15(85)
      abb15(99)=spbl4l3*spbk5k2*abb15(99)
      abb15(59)=abb15(99)+abb15(100)+abb15(59)+abb15(89)
      abb15(36)=abb15(36)*abb15(64)
      abb15(40)=abb15(40)*abb15(36)
      abb15(89)=spbk5l3*abb15(72)
      abb15(50)=-abb15(64)*abb15(50)
      abb15(50)=abb15(89)+abb15(50)
      abb15(64)=abb15(72)*abb15(80)
      abb15(72)=abb15(88)*abb15(74)
      abb15(64)=abb15(64)+abb15(72)
      abb15(72)=abb15(97)*abb15(29)*spbl3k2
      abb15(80)=-spbl4k2*spak2l4*abb15(49)*abb15(83)
      abb15(11)=-abb15(29)*abb15(91)*abb15(2)*abb15(1)*abb15(11)*spak1k2
      abb15(11)=abb15(11)+abb15(72)+abb15(80)
      abb15(72)=abb15(96)*abb15(6)
      abb15(80)=abb15(93)*abb15(29)
      abb15(83)=abb15(72)+abb15(80)
      abb15(83)=abb15(83)*abb15(63)
      abb15(88)=abb15(101)*abb15(6)
      abb15(88)=abb15(88)-abb15(92)
      abb15(88)=abb15(88)*abb15(63)
      abb15(15)=abb15(6)*abb15(15)*abb15(32)
      abb15(15)=abb15(15)-abb15(97)+abb15(88)
      abb15(15)=spbl3k1*abb15(15)
      abb15(88)=spbl4k1*abb15(37)
      abb15(72)=es12*abb15(72)
      abb15(11)=abb15(72)+abb15(88)+abb15(15)+2.0_ki*abb15(11)+abb15(83)
      abb15(15)=abb15(25)*spbl3k1
      abb15(72)=abb15(108)-abb15(15)
      abb15(72)=2.0_ki*abb15(72)
      abb15(80)=abb15(80)-abb15(106)
      abb15(80)=2.0_ki*abb15(80)
      abb15(26)=abb15(29)*abb15(26)
      abb15(83)=-spak2l4*abb15(95)
      abb15(26)=abb15(26)+abb15(83)
      abb15(83)=spbl4k1*abb15(78)
      abb15(15)=abb15(83)+2.0_ki*abb15(26)-abb15(15)
      abb15(26)=spbk5k1*abb15(43)
      abb15(83)=-spbl3k1*abb15(58)
      abb15(26)=abb15(83)+abb15(26)
      abb15(26)=abb15(39)*abb15(26)
      abb15(37)=spbk5k1*abb15(37)
      abb15(65)=abb15(65)*abb15(24)
      abb15(83)=abb15(12)*abb15(65)
      abb15(87)=spal3l4*abb15(87)*abb15(49)
      abb15(88)=-abb15(19)*abb15(87)
      abb15(89)=spbl3k1*abb15(77)
      abb15(26)=abb15(89)+abb15(88)+abb15(37)+abb15(83)+abb15(26)
      abb15(37)=spbk5k1*abb15(78)
      abb15(78)=-spak2l4*abb15(12)*abb15(24)
      abb15(83)=-spbl3k1*abb15(62)
      abb15(78)=abb15(83)+abb15(78)+abb15(87)
      abb15(32)=abb15(32)*abb15(49)
      abb15(83)=abb15(92)*spbk5k1
      abb15(32)=abb15(32)-abb15(83)
      abb15(32)=abb15(32)*abb15(63)
      abb15(87)=-abb15(94)-abb15(97)
      abb15(87)=spbk5k1*abb15(87)
      abb15(39)=abb15(39)*abb15(58)
      abb15(39)=-abb15(77)+abb15(39)
      abb15(39)=spbl4k1*abb15(39)
      abb15(19)=abb15(19)*abb15(95)
      abb15(19)=abb15(46)+abb15(19)
      abb15(19)=spal3l4*abb15(19)
      abb15(19)=abb15(39)+abb15(19)+abb15(87)+abb15(32)
      abb15(25)=abb15(25)*spbk5k1
      abb15(32)=-2.0_ki*abb15(25)
      abb15(39)=-2.0_ki*abb15(83)
      abb15(46)=-spal3l4*abb15(95)
      abb15(62)=spbl4k1*abb15(62)
      abb15(12)=-abb15(12)*abb15(81)
      abb15(12)=abb15(62)+abb15(12)+abb15(46)
      abb15(14)=-spbl4k1*abb15(14)
      abb15(14)=abb15(14)+abb15(95)
      abb15(14)=abb15(65)*abb15(14)
      abb15(46)=abb15(49)*abb15(63)
      abb15(35)=abb15(35)+abb15(46)
      abb15(35)=abb15(85)*abb15(35)
      abb15(14)=abb15(35)+abb15(14)
      abb15(35)=-spak2l4*abb15(74)
      abb15(35)=abb15(35)-abb15(86)
      abb15(35)=abb15(49)*abb15(35)
      abb15(29)=-abb15(29)*abb15(76)
      abb15(29)=abb15(29)+abb15(35)
      abb15(23)=spbl4k1*abb15(24)*abb15(23)
      abb15(23)=abb15(23)+2.0_ki*abb15(29)+abb15(106)
      abb15(24)=-8.0_ki*abb15(49)
      R2d15=abb15(18)
      rat2 = rat2 + R2d15
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='15' value='", &
          & R2d15, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd15h0
