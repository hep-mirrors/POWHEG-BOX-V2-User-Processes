module p0_gg_hhg_abbrevd55h3_qp
   use p0_gg_hhg_config_qp, only: ki
   use p0_gg_hhg_globalsh3_qp
   implicit none
   private
   complex(ki), dimension(172), public :: abb55
   complex(ki), public :: R2d55
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p0_gg_hhg_config_qp, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_color_qp, only: TR
      use p0_gg_hhg_globalsl1_qp, only: epspow
      implicit none
      abb55(1)=sqrt(mT**2)
      abb55(2)=sqrt2**(-1)
      abb55(3)=spak1k2**(-1)
      abb55(4)=spak2k5**(-1)
      abb55(5)=spak2l4**(-1)
      abb55(6)=spbl4k2**(-1)
      abb55(7)=spak2l3**(-1)
      abb55(8)=spbl3k2**(-1)
      abb55(9)=i_*abb55(2)
      abb55(10)=abb55(9)*c2
      abb55(11)=abb55(3)*abb55(10)
      abb55(12)=gHT*abb55(4)
      abb55(12)=abb55(12)**2
      abb55(13)=abb55(11)*abb55(12)
      abb55(14)=abb55(13)*spak2l4
      abb55(15)=abb55(1)**2
      abb55(16)=abb55(14)*abb55(15)
      abb55(17)=abb55(15)*abb55(9)
      abb55(18)=abb55(17)*abb55(12)
      abb55(19)=spak2l4*abb55(3)
      abb55(20)=abb55(19)*c1
      abb55(21)=abb55(18)*abb55(20)
      abb55(22)=abb55(16)-abb55(21)
      abb55(23)=mH**2
      abb55(24)=-abb55(23)-es12
      abb55(24)=abb55(22)*abb55(24)
      abb55(9)=abb55(9)*c1
      abb55(25)=abb55(9)*abb55(12)
      abb55(26)=abb55(25)*abb55(19)
      abb55(27)=abb55(26)-abb55(14)
      abb55(28)=abb55(1)**4
      abb55(29)=-abb55(28)*abb55(27)
      abb55(24)=abb55(29)+abb55(24)
      abb55(29)=abb55(24)*spbl4k1
      abb55(30)=spak2l3*spbl3k2
      abb55(31)=abb55(30)*spbl4k1
      abb55(32)=abb55(31)*abb55(22)
      abb55(29)=abb55(29)+abb55(32)
      abb55(33)=es51-es34
      abb55(29)=-abb55(29)*abb55(33)
      abb55(34)=-abb55(22)*abb55(30)
      abb55(24)=-abb55(24)+abb55(34)
      abb55(34)=spbl4k1*es12
      abb55(24)=abb55(34)*abb55(24)
      abb55(35)=abb55(4)*gHT**2
      abb55(9)=abb55(35)*abb55(9)
      abb55(19)=abb55(19)*abb55(9)
      abb55(11)=abb55(35)*abb55(11)
      abb55(36)=spak2l4*abb55(11)
      abb55(37)=abb55(19)-abb55(36)
      abb55(38)=abb55(28)*abb55(37)
      abb55(35)=abb55(35)*abb55(17)
      abb55(39)=abb55(35)*abb55(20)
      abb55(40)=abb55(15)*abb55(11)
      abb55(41)=abb55(40)*spak2l4
      abb55(42)=abb55(39)-abb55(41)
      abb55(43)=-abb55(42)*abb55(23)
      abb55(38)=abb55(43)+abb55(38)
      abb55(43)=spbk5l4*spbk2k1
      abb55(38)=abb55(38)*abb55(43)
      abb55(9)=abb55(3)*abb55(9)
      abb55(44)=abb55(9)-abb55(11)
      abb55(45)=abb55(44)*abb55(28)
      abb55(46)=c1*abb55(3)
      abb55(47)=abb55(35)*abb55(46)
      abb55(48)=abb55(47)-abb55(40)
      abb55(49)=-abb55(48)*abb55(23)
      abb55(49)=abb55(49)+abb55(45)
      abb55(50)=spbk5k1*es12
      abb55(51)=2.0_ki*abb55(50)
      abb55(49)=abb55(49)*abb55(51)
      abb55(52)=abb55(30)*spbk5l4
      abb55(53)=spal3k5*abb55(22)*abb55(52)
      abb55(54)=abb55(18)*c2
      abb55(55)=abb55(18)*c1
      abb55(56)=abb55(54)-abb55(55)
      abb55(57)=abb55(30)*spbk5k1
      abb55(58)=abb55(57)*spal3k5
      abb55(59)=abb55(56)*abb55(58)
      abb55(53)=abb55(53)+2.0_ki*abb55(59)
      abb55(53)=spbl3k1*abb55(53)
      abb55(59)=-abb55(22)*abb55(34)
      abb55(32)=abb55(59)+abb55(32)
      abb55(59)=spbk5l3*spal3k5
      abb55(32)=abb55(32)*abb55(59)
      abb55(60)=spak2l4*abb55(18)
      abb55(61)=abb55(60)*c1
      abb55(60)=c2*abb55(60)
      abb55(60)=abb55(60)-abb55(61)
      abb55(62)=spbl3k1*spal3k5
      abb55(63)=abb55(62)*spbk5k2
      abb55(64)=abb55(63)*spbl4k1
      abb55(60)=abb55(60)*abb55(64)
      abb55(24)=abb55(60)+abb55(32)+abb55(53)+abb55(49)+abb55(38)+abb55(24)+abb&
      &55(29)
      abb55(24)=2.0_ki*abb55(24)
      abb55(29)=8.0_ki*abb55(34)*abb55(16)
      abb55(32)=2.0_ki*abb55(40)
      abb55(38)=abb55(11)*abb55(23)
      abb55(49)=abb55(32)-abb55(38)
      abb55(53)=-es12*abb55(49)
      abb55(60)=abb55(40)*abb55(30)
      abb55(53)=abb55(53)+abb55(60)
      abb55(53)=spbk5k1*abb55(53)
      abb55(65)=abb55(10)*abb55(12)
      abb55(66)=abb55(65)*abb55(62)
      abb55(67)=abb55(57)*abb55(66)
      abb55(53)=abb55(53)+abb55(67)
      abb55(53)=4.0_ki*abb55(53)
      abb55(67)=abb55(26)*es12
      abb55(68)=abb55(67)-abb55(16)
      abb55(69)=abb55(33)*spbl4k1
      abb55(70)=abb55(34)+abb55(69)
      abb55(68)=abb55(68)*abb55(70)
      abb55(70)=spbl4k1*spak2l4
      abb55(71)=abb55(70)*abb55(25)
      abb55(72)=abb55(63)*abb55(71)
      abb55(73)=-abb55(43)*abb55(41)
      abb55(74)=4.0_ki*abb55(40)
      abb55(75)=-abb55(50)*abb55(74)
      abb55(76)=abb55(34)*abb55(26)
      abb55(77)=-abb55(59)*abb55(76)
      abb55(68)=abb55(72)+abb55(77)+abb55(75)+abb55(73)+abb55(68)
      abb55(68)=4.0_ki*abb55(68)
      abb55(73)=8.0_ki*abb55(76)
      abb55(50)=8.0_ki*abb55(50)
      abb55(75)=-abb55(11)*abb55(50)
      abb55(77)=abb55(23)*es12
      abb55(78)=abb55(49)*abb55(77)
      abb55(60)=abb55(60)*abb55(23)
      abb55(60)=abb55(78)-abb55(60)
      abb55(78)=abb55(6)*abb55(5)
      abb55(60)=abb55(60)*abb55(78)
      abb55(79)=3.0_ki*abb55(40)
      abb55(80)=abb55(79)*es12
      abb55(60)=abb55(60)-abb55(80)
      abb55(80)=-abb55(32)+abb55(47)
      abb55(81)=abb55(23)*abb55(7)
      abb55(82)=abb55(81)*abb55(8)
      abb55(83)=abb55(82)*es12
      abb55(80)=abb55(80)*abb55(83)
      abb55(84)=abb55(23)*abb55(12)
      abb55(85)=abb55(10)*abb55(84)
      abb55(86)=abb55(78)*spal3k5
      abb55(87)=abb55(30)*abb55(86)*abb55(85)
      abb55(88)=spal3k5*abb55(55)
      abb55(88)=3.0_ki*abb55(88)+abb55(87)
      abb55(88)=spbl3k1*abb55(88)
      abb55(89)=abb55(23)*abb55(47)
      abb55(80)=abb55(88)+2.0_ki*abb55(80)+abb55(89)-abb55(60)
      abb55(80)=spbk5k1*abb55(80)
      abb55(88)=abb55(8)*abb55(7)
      abb55(84)=abb55(88)*abb55(84)
      abb55(17)=abb55(17)*abb55(84)*abb55(20)
      abb55(20)=spbl4k1*abb55(17)
      abb55(89)=abb55(21)*spbl4k1
      abb55(20)=abb55(20)-abb55(89)
      abb55(20)=abb55(20)*abb55(33)
      abb55(17)=-abb55(21)+abb55(17)
      abb55(17)=abb55(34)*abb55(17)
      abb55(90)=abb55(42)*abb55(82)
      abb55(90)=abb55(41)+abb55(90)
      abb55(90)=abb55(90)*abb55(43)
      abb55(91)=abb55(82)*abb55(26)
      abb55(92)=abb55(91)*abb55(34)
      abb55(93)=abb55(89)-abb55(92)
      abb55(93)=abb55(93)*abb55(59)
      abb55(94)=-1.0_ki+abb55(82)
      abb55(72)=abb55(94)*abb55(72)
      abb55(17)=abb55(72)+abb55(93)+abb55(90)+abb55(17)+abb55(80)+abb55(20)
      abb55(17)=4.0_ki*abb55(17)
      abb55(20)=8.0_ki*abb55(92)
      abb55(72)=abb55(83)*abb55(11)
      abb55(80)=8.0_ki*spbk5k1
      abb55(90)=-abb55(72)*abb55(80)
      abb55(93)=abb55(78)*abb55(11)
      abb55(94)=abb55(93)*abb55(77)
      abb55(80)=-abb55(94)*abb55(80)
      abb55(95)=abb55(88)*mH**4
      abb55(93)=abb55(93)*abb55(95)
      abb55(50)=-abb55(93)*abb55(50)
      abb55(96)=abb55(14)*abb55(23)
      abb55(97)=2.0_ki*abb55(16)
      abb55(96)=abb55(96)-abb55(97)
      abb55(98)=abb55(96)*spbl4k1
      abb55(99)=abb55(14)*spbl4k1
      abb55(100)=abb55(99)*abb55(30)
      abb55(98)=abb55(98)-abb55(100)
      abb55(98)=abb55(98)*abb55(33)
      abb55(96)=abb55(96)*abb55(34)
      abb55(101)=-spak2l4*abb55(32)
      abb55(102)=abb55(23)*abb55(36)
      abb55(101)=abb55(101)+abb55(102)
      abb55(101)=abb55(101)*abb55(43)
      abb55(102)=abb55(52)*abb55(62)
      abb55(103)=abb55(14)*abb55(102)
      abb55(104)=abb55(34)*abb55(14)
      abb55(105)=-abb55(30)*abb55(104)
      abb55(106)=-abb55(40)*abb55(57)
      abb55(100)=abb55(59)*abb55(100)
      abb55(96)=abb55(100)+abb55(103)+abb55(106)+abb55(101)+abb55(96)+abb55(105&
      &)+abb55(98)
      abb55(96)=4.0_ki*abb55(96)
      abb55(98)=abb55(33)*abb55(99)
      abb55(100)=-abb55(43)*abb55(36)
      abb55(100)=abb55(100)-abb55(104)-abb55(98)
      abb55(100)=8.0_ki*abb55(100)
      abb55(101)=-abb55(82)*abb55(33)
      abb55(103)=abb55(99)*abb55(101)
      abb55(105)=abb55(82)*abb55(14)
      abb55(106)=-abb55(34)*abb55(105)
      abb55(107)=abb55(36)*abb55(82)
      abb55(108)=-abb55(43)*abb55(107)
      abb55(109)=spbk5k1*abb55(23)*abb55(9)
      abb55(103)=abb55(109)+abb55(108)+abb55(106)+abb55(103)
      abb55(103)=8.0_ki*abb55(103)
      abb55(106)=es12-abb55(23)
      abb55(106)=abb55(27)*abb55(106)
      abb55(106)=abb55(106)-2.0_ki*abb55(22)
      abb55(108)=abb55(106)*spbl4k1
      abb55(109)=abb55(31)*abb55(27)
      abb55(108)=abb55(108)+abb55(109)
      abb55(108)=-abb55(108)*abb55(33)
      abb55(106)=-abb55(106)*abb55(34)
      abb55(110)=abb55(37)*abb55(23)
      abb55(42)=-2.0_ki*abb55(42)+abb55(110)
      abb55(42)=abb55(42)*abb55(43)
      abb55(110)=abb55(27)*abb55(34)
      abb55(109)=abb55(109)+abb55(110)
      abb55(111)=abb55(109)*abb55(59)
      abb55(112)=-abb55(30)*abb55(110)
      abb55(51)=-abb55(48)*abb55(51)
      abb55(102)=abb55(27)*abb55(102)
      abb55(10)=spak2l4*abb55(10)
      abb55(12)=abb55(12)*abb55(10)
      abb55(113)=-spak2l4*abb55(25)
      abb55(12)=abb55(12)+abb55(113)
      abb55(12)=abb55(12)*abb55(64)
      abb55(12)=abb55(12)+abb55(111)+abb55(102)+abb55(51)+abb55(42)+abb55(106)+&
      &abb55(112)+abb55(108)
      abb55(12)=2.0_ki*abb55(12)
      abb55(42)=-4.0_ki*abb55(109)
      abb55(51)=4.0_ki*abb55(11)
      abb55(64)=abb55(51)*abb55(57)
      abb55(69)=abb55(27)*abb55(69)
      abb55(37)=abb55(37)*abb55(43)
      abb55(37)=abb55(110)+abb55(69)+abb55(37)
      abb55(69)=abb55(30)*abb55(11)
      abb55(102)=-es12*abb55(11)
      abb55(102)=abb55(102)-abb55(69)
      abb55(102)=spbk5k1*abb55(102)
      abb55(102)=abb55(102)-abb55(37)
      abb55(102)=4.0_ki*abb55(102)
      abb55(106)=abb55(30)*abb55(38)*abb55(78)
      abb55(69)=abb55(106)-abb55(69)
      abb55(106)=-abb55(11)-abb55(9)
      abb55(106)=abb55(106)*abb55(23)
      abb55(106)=abb55(106)-abb55(69)
      abb55(106)=spbk5k1*abb55(106)
      abb55(108)=abb55(91)*spbl4k1
      abb55(109)=abb55(26)*spbl4k1
      abb55(108)=abb55(108)-abb55(109)
      abb55(108)=-abb55(108)*abb55(33)
      abb55(110)=2.0_ki*abb55(36)-abb55(19)
      abb55(110)=abb55(110)*abb55(82)
      abb55(110)=-abb55(36)+abb55(110)
      abb55(110)=abb55(110)*abb55(43)
      abb55(111)=-spbk5l4*abb55(27)
      abb55(112)=spbk5k1*abb55(65)
      abb55(111)=abb55(111)+abb55(112)
      abb55(111)=abb55(111)*abb55(62)
      abb55(106)=abb55(111)+abb55(106)+abb55(110)+abb55(76)-abb55(92)+abb55(108)
      abb55(106)=4.0_ki*abb55(106)
      abb55(37)=2.0_ki*abb55(37)
      abb55(108)=abb55(16)*abb55(43)
      abb55(110)=spbk5k2*abb55(89)
      abb55(108)=abb55(110)+abb55(108)
      abb55(108)=spak2l3*abb55(108)
      abb55(15)=abb55(13)*abb55(15)
      abb55(110)=3.0_ki*abb55(15)
      abb55(111)=abb55(110)*es12
      abb55(112)=spbk5k1*spak2l3
      abb55(113)=abb55(111)*abb55(112)
      abb55(108)=abb55(113)+abb55(108)
      abb55(108)=2.0_ki*abb55(108)
      abb55(113)=-spak2l3*abb55(14)*abb55(43)
      abb55(114)=abb55(13)*spbl3k2
      abb55(115)=spak2l3**2
      abb55(116)=spbk5k1*abb55(115)*abb55(114)
      abb55(113)=abb55(113)+abb55(116)
      abb55(113)=2.0_ki*abb55(113)
      abb55(56)=abb55(56)*abb55(112)
      abb55(116)=-abb55(21)*spbk5l4*spak2l3
      abb55(117)=abb55(23)*abb55(8)
      abb55(118)=abb55(117)-spak2l3
      abb55(119)=spbk5k2*abb55(71)*abb55(118)
      abb55(56)=abb55(119)+abb55(116)+abb55(56)
      abb55(56)=spbl3k1*abb55(56)
      abb55(89)=-spak2l3*abb55(89)
      abb55(76)=-abb55(117)*abb55(76)
      abb55(76)=abb55(89)+abb55(76)
      abb55(76)=spbk5l3*abb55(76)
      abb55(61)=abb55(61)*spbl4k1
      abb55(89)=-spbk5k1*abb55(61)
      abb55(56)=abb55(76)+abb55(89)+abb55(56)
      abb55(56)=2.0_ki*abb55(56)
      abb55(76)=spak2l3*abb55(65)
      abb55(89)=abb55(76)*spbl3k1
      abb55(116)=4.0_ki*spbk5k1
      abb55(119)=abb55(116)*abb55(89)
      abb55(120)=spbl3k1*spak2l3
      abb55(121)=abb55(78)*abb55(85)*abb55(120)
      abb55(122)=abb55(116)*abb55(121)
      abb55(123)=spbk5l4*abb55(14)*abb55(120)
      abb55(124)=spbk5l3*spak2l3
      abb55(125)=abb55(99)*abb55(124)
      abb55(123)=abb55(123)+abb55(125)
      abb55(123)=4.0_ki*abb55(123)
      abb55(125)=abb55(26)*spbk5l4
      abb55(126)=spak2l3*abb55(125)
      abb55(76)=spbk5k1*abb55(76)
      abb55(76)=abb55(126)+abb55(76)
      abb55(76)=spbl3k1*abb55(76)
      abb55(109)=abb55(124)*abb55(109)
      abb55(76)=abb55(76)+abb55(109)
      abb55(76)=2.0_ki*abb55(76)
      abb55(109)=-abb55(21)*abb55(52)
      abb55(126)=2.0_ki*abb55(55)
      abb55(57)=-abb55(57)*abb55(126)
      abb55(61)=-spbk5k2*abb55(61)
      abb55(57)=abb55(61)+abb55(109)+abb55(57)
      abb55(57)=2.0_ki*abb55(57)
      abb55(61)=-abb55(66)-abb55(40)
      abb55(61)=abb55(31)*abb55(61)
      abb55(109)=abb55(40)-abb55(38)
      abb55(109)=abb55(109)*abb55(34)
      abb55(61)=abb55(109)+abb55(61)
      abb55(61)=2.0_ki*abb55(61)
      abb55(109)=abb55(51)*abb55(34)
      abb55(127)=abb55(82)*abb55(109)
      abb55(128)=2.0_ki*spbl4k1
      abb55(89)=-abb55(128)*abb55(89)
      abb55(129)=abb55(19)*abb55(81)
      abb55(130)=-abb55(34)*abb55(129)
      abb55(131)=-spbl3k2*abb55(62)*abb55(71)
      abb55(130)=abb55(130)+abb55(131)
      abb55(130)=2.0_ki*abb55(130)
      abb55(19)=spbl3k2*abb55(19)*abb55(128)
      abb55(71)=-2.0_ki*spbl3k1*abb55(71)
      abb55(39)=spbk5l4*abb55(39)
      abb55(35)=spbk5k1*c1*abb55(35)
      abb55(35)=abb55(39)+abb55(35)
      abb55(35)=spbl3k1*abb55(35)
      abb55(39)=spbk5l3*abb55(40)*abb55(70)
      abb55(35)=abb55(35)+abb55(39)
      abb55(35)=2.0_ki*abb55(35)
      abb55(39)=-spbk5l3*abb55(36)*abb55(128)
      abb55(70)=abb55(40)*abb55(23)
      abb55(131)=abb55(83)*abb55(32)
      abb55(132)=spbl4l3*spal3k5
      abb55(133)=-abb55(16)*abb55(132)
      abb55(45)=abb55(133)+abb55(131)-abb55(70)-abb55(45)+abb55(60)
      abb55(45)=spbk2k1*abb55(45)
      abb55(60)=abb55(15)*abb55(30)
      abb55(70)=2.0_ki*abb55(15)
      abb55(131)=es12*abb55(70)
      abb55(131)=abb55(131)-abb55(60)
      abb55(131)=spal3k5*abb55(131)
      abb55(133)=abb55(30)*abb55(13)
      abb55(134)=abb55(77)*abb55(133)
      abb55(135)=-abb55(86)*abb55(134)
      abb55(131)=abb55(131)+abb55(135)
      abb55(131)=spbl3k1*abb55(131)
      abb55(41)=spbk2k1*abb55(41)
      abb55(135)=abb55(16)*abb55(62)
      abb55(41)=abb55(41)+abb55(135)
      abb55(41)=spbl4k2*abb55(41)
      abb55(31)=abb55(34)+abb55(31)
      abb55(31)=spal4k5*abb55(15)*abb55(31)
      abb55(34)=spal3l4*spbl3k2
      abb55(135)=spbl4k1*abb55(40)*abb55(34)
      abb55(31)=abb55(31)+abb55(135)+abb55(41)+abb55(131)+abb55(45)
      abb55(31)=2.0_ki*abb55(31)
      abb55(40)=-abb55(40)-abb55(47)
      abb55(41)=4.0_ki*spbk2k1
      abb55(40)=abb55(40)*abb55(41)
      abb55(45)=-abb55(48)+abb55(94)
      abb55(45)=abb55(45)*abb55(41)
      abb55(94)=abb55(82)*spbk2k1
      abb55(131)=-abb55(48)*abb55(94)
      abb55(93)=spbk2k1*es12*abb55(93)
      abb55(18)=abb55(18)*abb55(46)
      abb55(46)=spal4k5*spbl4k1*abb55(18)
      abb55(46)=abb55(46)+abb55(131)+abb55(93)
      abb55(46)=4.0_ki*abb55(46)
      abb55(74)=-abb55(38)+abb55(74)+abb55(47)
      abb55(74)=spbk2k1*abb55(74)
      abb55(93)=abb55(62)*abb55(133)
      abb55(74)=abb55(74)-abb55(93)
      abb55(74)=4.0_ki*abb55(74)
      abb55(131)=abb55(44)*spbk2k1
      abb55(135)=-8.0_ki*abb55(131)
      abb55(136)=abb55(44)*abb55(94)
      abb55(137)=-8.0_ki*abb55(136)
      abb55(138)=abb55(38)+abb55(48)
      abb55(36)=-abb55(36)+abb55(107)
      abb55(36)=spbl4k2*abb55(36)
      abb55(139)=abb55(14)*abb55(132)
      abb55(36)=abb55(139)+abb55(36)+2.0_ki*abb55(138)+abb55(69)
      abb55(36)=spbk2k1*abb55(36)
      abb55(69)=2.0_ki*abb55(133)
      abb55(138)=abb55(62)*abb55(69)
      abb55(139)=abb55(11)*spbl3k2
      abb55(140)=-spal3l4*spbl4k1*abb55(139)
      abb55(36)=abb55(140)+abb55(138)+abb55(36)
      abb55(36)=2.0_ki*abb55(36)
      abb55(138)=abb55(51)*spbk2k1
      abb55(9)=abb55(9)*abb55(41)
      abb55(41)=abb55(13)*spal3k5
      abb55(140)=abb55(41)*spbl3k1
      abb55(136)=abb55(136)-abb55(140)
      abb55(136)=4.0_ki*abb55(136)
      abb55(141)=4.0_ki*abb55(131)
      abb55(131)=-2.0_ki*abb55(131)
      abb55(142)=spbk2k1*abb55(97)
      abb55(143)=-2.0_ki*spbk2k1*abb55(14)
      abb55(144)=abb55(78)*abb55(23)
      abb55(145)=abb55(13)*es12
      abb55(146)=-abb55(145)*abb55(144)
      abb55(146)=-abb55(15)+abb55(146)
      abb55(146)=abb55(146)*abb55(120)
      abb55(92)=-abb55(92)+abb55(146)
      abb55(92)=2.0_ki*abb55(92)
      abb55(146)=4.0_ki*abb55(13)
      abb55(147)=-abb55(120)*abb55(146)
      abb55(148)=abb55(26)*abb55(128)
      abb55(149)=2.0_ki*abb55(18)
      abb55(150)=abb55(110)+abb55(149)
      abb55(150)=es12*abb55(150)
      abb55(151)=-spbl4k2*abb55(21)
      abb55(150)=abb55(150)+abb55(151)
      abb55(150)=2.0_ki*abb55(150)
      abb55(151)=spbl4k1*abb55(32)
      abb55(128)=-abb55(11)*abb55(128)
      abb55(152)=abb55(83)*abb55(16)
      abb55(153)=abb55(16)*abb55(82)
      abb55(154)=-abb55(153)*abb55(33)
      abb55(154)=-abb55(152)+abb55(154)
      abb55(154)=spbk2k1*abb55(154)
      abb55(155)=-abb55(16)*abb55(63)
      abb55(154)=abb55(154)+abb55(155)
      abb55(154)=2.0_ki*abb55(154)
      abb55(155)=2.0_ki*es12
      abb55(156)=-abb55(155)+abb55(30)
      abb55(156)=spbk5k1*spal3k5*abb55(156)*abb55(149)
      abb55(25)=abb55(25)*abb55(3)
      abb55(58)=abb55(58)*abb55(25)
      abb55(157)=4.0_ki*abb55(58)
      abb55(158)=spal3k5*abb55(26)*abb55(43)
      abb55(58)=abb55(158)-abb55(58)
      abb55(58)=2.0_ki*abb55(58)
      abb55(158)=abb55(112)*abb55(149)
      abb55(112)=abb55(112)*abb55(25)
      abb55(159)=4.0_ki*abb55(112)
      abb55(112)=-2.0_ki*abb55(112)
      abb55(160)=abb55(25)-abb55(13)
      abb55(28)=-abb55(28)*abb55(160)
      abb55(161)=4.0_ki*abb55(18)
      abb55(162)=abb55(161)-abb55(110)
      abb55(163)=abb55(162)*abb55(23)
      abb55(28)=3.0_ki*abb55(28)+abb55(163)+abb55(111)
      abb55(163)=-es12*abb55(28)
      abb55(164)=abb55(70)*abb55(83)
      abb55(28)=abb55(164)-abb55(28)
      abb55(164)=abb55(18)-abb55(15)
      abb55(165)=abb55(164)*abb55(30)
      abb55(166)=-2.0_ki*abb55(165)-abb55(28)
      abb55(166)=es34*abb55(166)
      abb55(167)=-abb55(110)+abb55(18)
      abb55(168)=2.0_ki*abb55(30)
      abb55(167)=abb55(167)*abb55(168)
      abb55(28)=abb55(167)+abb55(28)
      abb55(28)=es51*abb55(28)
      abb55(167)=abb55(13)*abb55(23)
      abb55(168)=abb55(70)-abb55(167)
      abb55(169)=abb55(168)*abb55(77)
      abb55(170)=abb55(60)*abb55(23)
      abb55(169)=abb55(170)-abb55(169)
      abb55(169)=-abb55(169)*abb55(33)
      abb55(170)=es12**2
      abb55(168)=abb55(168)*abb55(23)*abb55(170)
      abb55(60)=-abb55(77)*abb55(60)
      abb55(60)=abb55(168)+abb55(60)+abb55(169)
      abb55(60)=abb55(60)*abb55(78)
      abb55(168)=abb55(97)-abb55(21)
      abb55(153)=abb55(168)-abb55(153)
      abb55(153)=abb55(153)*abb55(33)
      abb55(169)=-abb55(59)+es12
      abb55(168)=abb55(168)*abb55(169)
      abb55(152)=-abb55(152)+abb55(168)+abb55(153)
      abb55(152)=spbl4k2*abb55(152)
      abb55(79)=-spbk5k1*abb55(79)
      abb55(153)=-abb55(99)*abb55(59)
      abb55(79)=abb55(153)+abb55(79)+abb55(104)
      abb55(79)=spbl3k2*abb55(79)
      abb55(153)=abb55(81)-spbl3k2
      abb55(98)=-abb55(153)*abb55(98)
      abb55(104)=-abb55(81)*abb55(104)
      abb55(79)=abb55(104)+abb55(79)+abb55(98)
      abb55(79)=spak1l3*abb55(79)
      abb55(98)=abb55(155)*abb55(165)
      abb55(104)=abb55(170)*abb55(82)*abb55(70)
      abb55(162)=-abb55(162)*abb55(30)
      abb55(162)=abb55(111)+abb55(162)
      abb55(162)=abb55(162)*abb55(59)
      abb55(165)=-spal3k5*abb55(54)
      abb55(87)=abb55(165)-abb55(87)
      abb55(87)=spbk5k2*spbl3k1*abb55(87)
      abb55(165)=abb55(132)*spbk5k2
      abb55(22)=abb55(22)*abb55(165)
      abb55(168)=spal3l4*spbk5l4
      abb55(169)=abb55(168)*spbl3k2
      abb55(171)=abb55(48)*abb55(169)
      abb55(172)=-abb55(70)+abb55(18)
      abb55(52)=spal4k5*abb55(172)*abb55(52)
      abb55(49)=abb55(49)*abb55(43)
      abb55(172)=-spbk5l4*abb55(93)
      abb55(49)=abb55(49)+abb55(172)
      abb55(49)=spak1l4*abb55(49)
      abb55(172)=spak1k5*spbk5k2
      abb55(97)=spbl4k1*abb55(97)*abb55(172)
      abb55(22)=abb55(97)+abb55(49)+abb55(52)+abb55(171)+abb55(22)+abb55(79)+ab&
      &b55(87)+abb55(152)+abb55(162)+abb55(60)+abb55(28)+abb55(166)+abb55(104)+&
      &abb55(163)+abb55(98)
      abb55(22)=2.0_ki*abb55(22)
      abb55(28)=-abb55(70)+5.0_ki*abb55(18)
      abb55(49)=abb55(28)*abb55(30)
      abb55(16)=spbl4k2*abb55(16)
      abb55(16)=3.0_ki*abb55(16)-abb55(111)+abb55(49)
      abb55(16)=4.0_ki*abb55(16)
      abb55(49)=abb55(18)+5.0_ki*abb55(15)
      abb55(52)=-abb55(133)-abb55(49)+2.0_ki*abb55(167)
      abb55(60)=abb55(33)+es12
      abb55(52)=abb55(52)*abb55(60)
      abb55(79)=abb55(69)*abb55(59)
      abb55(52)=abb55(79)+abb55(52)
      abb55(52)=4.0_ki*abb55(52)
      abb55(87)=8.0_ki*abb55(133)
      abb55(97)=abb55(105)-abb55(26)
      abb55(97)=abb55(33)*abb55(97)
      abb55(98)=abb55(105)*es12
      abb55(104)=abb55(59)*abb55(26)
      abb55(67)=abb55(104)+abb55(98)+abb55(97)-abb55(67)
      abb55(67)=abb55(67)*spbl4k2
      abb55(27)=abb55(165)*abb55(27)
      abb55(44)=abb55(44)*abb55(169)
      abb55(97)=abb55(25)*spbk5l4
      abb55(98)=abb55(97)*spal4k5
      abb55(104)=abb55(98)*abb55(30)
      abb55(105)=spak1l3*spbk5k1
      abb55(111)=abb55(105)*abb55(139)
      abb55(27)=abb55(67)-abb55(27)+abb55(104)-abb55(111)+abb55(44)
      abb55(44)=abb55(145)*abb55(23)
      abb55(67)=abb55(133)*abb55(23)
      abb55(44)=abb55(44)-abb55(67)
      abb55(44)=abb55(44)*abb55(33)
      abb55(104)=abb55(170)*abb55(167)
      abb55(44)=abb55(104)-abb55(134)+abb55(44)
      abb55(44)=abb55(44)*abb55(78)
      abb55(43)=spak1l4*abb55(43)*abb55(11)
      abb55(104)=abb55(172)*abb55(99)
      abb55(43)=abb55(43)+abb55(104)
      abb55(104)=abb55(145)*abb55(82)
      abb55(111)=abb55(104)-abb55(49)
      abb55(111)=abb55(111)*abb55(33)
      abb55(49)=-es12*abb55(49)
      abb55(152)=abb55(82)*abb55(13)
      abb55(162)=abb55(170)*abb55(152)
      abb55(63)=abb55(63)*abb55(65)
      abb55(44)=abb55(63)+abb55(44)+abb55(49)+abb55(162)+abb55(111)+abb55(43)-a&
      &bb55(27)
      abb55(44)=4.0_ki*abb55(44)
      abb55(49)=abb55(26)*spbl4k2
      abb55(63)=8.0_ki*abb55(49)
      abb55(65)=abb55(160)*abb55(23)
      abb55(111)=abb55(65)-abb55(164)
      abb55(162)=abb55(111)*abb55(23)
      abb55(163)=abb55(95)*abb55(145)
      abb55(162)=abb55(163)-abb55(162)
      abb55(162)=abb55(162)*abb55(33)
      abb55(111)=-abb55(111)*abb55(77)
      abb55(163)=abb55(170)*abb55(13)*abb55(95)
      abb55(111)=abb55(111)+abb55(163)+abb55(162)
      abb55(111)=abb55(111)*abb55(78)
      abb55(162)=abb55(144)*abb55(69)
      abb55(163)=abb55(91)*spbl4k2
      abb55(28)=-abb55(163)+abb55(28)+abb55(162)
      abb55(28)=abb55(59)*abb55(28)
      abb55(162)=4.0_ki*abb55(164)
      abb55(166)=3.0_ki*abb55(164)
      abb55(169)=abb55(166)*abb55(82)
      abb55(170)=abb55(162)-abb55(169)
      abb55(170)=es34*abb55(170)
      abb55(161)=abb55(169)+7.0_ki*abb55(15)-abb55(161)
      abb55(161)=es51*abb55(161)
      abb55(169)=abb55(81)*abb55(11)
      abb55(171)=abb55(169)-abb55(139)
      abb55(105)=abb55(105)+abb55(168)
      abb55(168)=abb55(171)*abb55(105)
      abb55(43)=abb55(82)*abb55(43)
      abb55(162)=-es12*abb55(162)
      abb55(166)=abb55(83)*abb55(166)
      abb55(171)=-abb55(26)+abb55(91)
      abb55(165)=abb55(171)*abb55(165)
      abb55(171)=-abb55(23)*abb55(25)
      abb55(171)=abb55(110)+abb55(171)
      abb55(171)=abb55(171)*spal4k5*spbk5l4
      abb55(28)=abb55(171)+abb55(165)+abb55(111)+abb55(161)+abb55(170)+abb55(16&
      &2)+abb55(166)+abb55(43)+abb55(168)+abb55(28)
      abb55(28)=4.0_ki*abb55(28)
      abb55(43)=abb55(144)*abb55(133)
      abb55(43)=abb55(43)-abb55(163)
      abb55(111)=-8.0_ki*abb55(43)
      abb55(161)=-abb55(152)*abb55(33)
      abb55(162)=abb55(41)*spbk5l3
      abb55(104)=-abb55(162)-abb55(104)+abb55(161)
      abb55(104)=8.0_ki*abb55(104)
      abb55(161)=abb55(23)*abb55(33)
      abb55(161)=abb55(77)+abb55(161)
      abb55(161)=abb55(78)*abb55(25)*abb55(161)
      abb55(161)=abb55(161)+abb55(98)
      abb55(161)=8.0_ki*abb55(161)
      abb55(163)=-abb55(160)*abb55(33)
      abb55(165)=abb55(160)*es12
      abb55(165)=abb55(165)-abb55(163)
      abb55(95)=abb55(95)*abb55(165)
      abb55(166)=-abb55(167)*abb55(59)
      abb55(95)=abb55(95)+abb55(166)
      abb55(95)=abb55(78)*abb55(95)
      abb55(166)=abb55(82)*abb55(98)
      abb55(95)=abb55(166)+abb55(95)
      abb55(95)=8.0_ki*abb55(95)
      abb55(166)=abb55(18)-abb55(167)+4.0_ki*abb55(15)
      abb55(166)=abb55(166)*abb55(60)
      abb55(168)=-abb55(133)*abb55(59)
      abb55(166)=abb55(168)+abb55(166)
      abb55(166)=4.0_ki*abb55(166)
      abb55(168)=abb55(25)+abb55(13)
      abb55(168)=-8.0_ki*abb55(168)*abb55(60)
      abb55(101)=-abb55(83)+abb55(101)
      abb55(101)=abb55(25)*abb55(101)
      abb55(101)=abb55(162)+abb55(101)
      abb55(101)=8.0_ki*abb55(101)
      abb55(170)=abb55(164)-abb55(167)
      abb55(171)=abb55(133)+2.0_ki*abb55(170)
      abb55(171)=-abb55(171)*abb55(33)
      abb55(155)=-abb55(170)*abb55(155)
      abb55(67)=abb55(67)*abb55(33)
      abb55(67)=abb55(134)+abb55(67)
      abb55(67)=abb55(67)*abb55(78)
      abb55(134)=-es12*abb55(133)
      abb55(27)=abb55(79)+abb55(67)+abb55(155)+abb55(134)+abb55(171)+abb55(27)
      abb55(27)=2.0_ki*abb55(27)
      abb55(67)=-abb55(133)-abb55(49)
      abb55(67)=4.0_ki*abb55(67)
      abb55(79)=abb55(13)*abb55(33)
      abb55(79)=abb55(145)+abb55(79)
      abb55(79)=4.0_ki*abb55(79)
      abb55(60)=4.0_ki*abb55(25)*abb55(60)
      abb55(65)=-abb55(65)*abb55(33)
      abb55(77)=-abb55(160)*abb55(77)
      abb55(65)=abb55(77)+abb55(65)
      abb55(65)=abb55(65)*abb55(78)
      abb55(77)=-abb55(82)*abb55(163)
      abb55(83)=abb55(160)*abb55(83)
      abb55(65)=-abb55(98)-abb55(162)+abb55(65)+abb55(83)+abb55(77)
      abb55(65)=4.0_ki*abb55(65)
      abb55(77)=4.0_ki*abb55(165)
      abb55(83)=-2.0_ki*abb55(165)
      abb55(98)=4.0_ki*spbk5k2
      abb55(134)=abb55(21)*abb55(98)
      abb55(18)=abb55(70)+abb55(18)
      abb55(18)=spak2l3*abb55(18)
      abb55(78)=abb55(115)*abb55(78)*abb55(167)*spbl3k2
      abb55(18)=abb55(18)+abb55(78)
      abb55(18)=spbk5k2*abb55(18)
      abb55(78)=-abb55(133)*abb55(105)
      abb55(18)=abb55(18)+abb55(78)
      abb55(18)=2.0_ki*abb55(18)
      abb55(23)=-abb55(23)*abb55(26)
      abb55(78)=-spak1l4*abb55(13)*abb55(120)
      abb55(21)=abb55(78)+2.0_ki*abb55(21)+abb55(23)
      abb55(21)=spbk5l4*abb55(21)
      abb55(10)=-spbl4k1*abb55(84)*abb55(10)
      abb55(23)=spbl4l3*abb55(26)*abb55(118)
      abb55(10)=abb55(23)+abb55(10)-abb55(121)
      abb55(10)=spbk5k2*abb55(10)
      abb55(23)=-abb55(117)*abb55(49)
      abb55(49)=-spak1l3*abb55(99)
      abb55(23)=abb55(49)+abb55(23)
      abb55(23)=spbk5l3*abb55(23)
      abb55(49)=-abb55(54)+abb55(126)
      abb55(49)=spbk5k1*abb55(49)
      abb55(15)=abb55(15)-abb55(149)
      abb55(15)=abb55(15)*abb55(124)
      abb55(10)=abb55(15)+abb55(49)+abb55(10)+abb55(23)+abb55(21)
      abb55(10)=2.0_ki*abb55(10)
      abb55(15)=4.0_ki*spbk5l4
      abb55(21)=abb55(91)*abb55(15)
      abb55(23)=abb55(124)*abb55(146)
      abb55(49)=-2.0_ki*abb55(125)
      abb55(54)=abb55(55)*abb55(98)
      abb55(55)=spbl4k2*abb55(32)
      abb55(15)=abb55(47)*abb55(15)
      abb55(78)=-abb55(26)*abb55(132)
      abb55(48)=abb55(78)-2.0_ki*abb55(48)
      abb55(48)=spbl3k2*abb55(48)
      abb55(78)=-spbl4k2*abb55(129)
      abb55(48)=abb55(78)+abb55(48)
      abb55(48)=2.0_ki*abb55(48)
      abb55(26)=2.0_ki*abb55(26)
      abb55(26)=-spbl4l3*abb55(26)
      abb55(78)=spbl4k2*abb55(107)
      abb55(32)=abb55(78)-abb55(66)-abb55(72)+abb55(32)+abb55(47)
      abb55(32)=spbk5l3*abb55(32)
      abb55(14)=spbl4l3*abb55(14)*abb55(59)
      abb55(14)=abb55(14)+abb55(32)
      abb55(14)=2.0_ki*abb55(14)
      abb55(32)=spal3k5*spbl3k2*abb55(110)
      abb55(59)=abb55(86)*abb55(167)
      abb55(66)=spak2l3*spbl3k2**2*abb55(59)
      abb55(32)=abb55(32)+abb55(66)
      abb55(66)=-abb55(139)+2.0_ki*abb55(169)
      abb55(72)=-spbk2k1*abb55(66)
      abb55(78)=2.0_ki*abb55(13)
      abb55(84)=abb55(78)*spbl3k2
      abb55(62)=-abb55(62)*abb55(84)
      abb55(62)=abb55(72)+abb55(62)
      abb55(62)=spak1l3*abb55(62)
      abb55(66)=spbl4k2*abb55(66)
      abb55(72)=abb55(132)*abb55(84)
      abb55(66)=abb55(66)+abb55(72)
      abb55(66)=spal3l4*abb55(66)
      abb55(70)=abb55(70)*spal4k5
      abb55(72)=spbl4k2*abb55(70)
      abb55(32)=abb55(72)+abb55(66)+2.0_ki*abb55(32)+abb55(62)
      abb55(32)=2.0_ki*abb55(32)
      abb55(59)=-4.0_ki*spbl3k2*abb55(59)
      abb55(62)=-abb55(78)*abb55(34)
      abb55(43)=-8.0_ki*abb55(164)+abb55(43)
      abb55(43)=2.0_ki*abb55(43)
      abb55(66)=-spak1l3*abb55(84)
      abb55(72)=spbl4k2*abb55(11)*abb55(82)
      abb55(41)=spbl4l3*abb55(41)
      abb55(41)=abb55(72)+abb55(41)
      abb55(41)=2.0_ki*abb55(41)
      abb55(70)=spbk5k2*abb55(70)
      abb55(25)=abb55(144)*abb55(25)
      abb55(30)=-abb55(30)*abb55(25)
      abb55(30)=abb55(30)-2.0_ki*abb55(164)
      abb55(30)=spbk5k2*abb55(30)
      abb55(34)=abb55(97)*abb55(34)
      abb55(30)=abb55(30)+abb55(34)
      abb55(30)=2.0_ki*spal3k5*abb55(30)
      abb55(25)=-spbk5k2*spak2l3*abb55(25)
      abb55(34)=spal3l4*abb55(97)
      abb55(25)=abb55(25)+abb55(34)
      abb55(25)=2.0_ki*abb55(25)
      abb55(34)=abb55(81)*abb55(13)
      abb55(34)=abb55(114)-abb55(34)
      abb55(33)=abb55(34)*abb55(33)
      abb55(34)=-abb55(145)*abb55(153)
      abb55(72)=-spbl3k2*abb55(162)
      abb55(33)=abb55(72)+abb55(34)+abb55(33)
      abb55(33)=2.0_ki*spak1l3*abb55(33)
      abb55(34)=abb55(172)*abb55(146)
      abb55(72)=4.0_ki*abb55(172)*abb55(152)
      abb55(81)=-spbk5k2*abb55(88)*abb55(85)
      abb55(13)=-spak1l3*spbk5l3*abb55(13)
      abb55(13)=abb55(81)+abb55(13)
      abb55(13)=2.0_ki*abb55(13)
      abb55(38)=spbk2k1*abb55(38)
      abb55(38)=abb55(38)+abb55(93)
      abb55(38)=2.0_ki*abb55(38)
      abb55(51)=-abb55(51)*abb55(94)
      abb55(78)=abb55(78)*abb55(120)
      abb55(47)=-abb55(47)*abb55(116)
      abb55(11)=abb55(11)*abb55(94)
      abb55(11)=abb55(11)+abb55(140)
      abb55(11)=2.0_ki*abb55(11)
      R2d55=0.0_ki
      rat2 = rat2 + R2d55
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='55' value='", &
          & R2d55, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd55h3_qp
