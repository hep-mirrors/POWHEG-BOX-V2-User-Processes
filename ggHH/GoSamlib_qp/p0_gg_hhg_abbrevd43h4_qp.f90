module p0_gg_hhg_abbrevd43h4_qp
   use p0_gg_hhg_config_qp, only: ki
   use p0_gg_hhg_globalsh4_qp
   implicit none
   private
   complex(ki), dimension(165), public :: abb43
   complex(ki), public :: R2d43
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
      abb43(1)=sqrt(mT**2)
      abb43(2)=sqrt2**(-1)
      abb43(3)=spbk2k1**(-1)
      abb43(4)=spbk5k2**(-1)
      abb43(5)=spak2l4**(-1)
      abb43(6)=spbl4k2**(-1)
      abb43(7)=spak2l3**(-1)
      abb43(8)=spbl3k2**(-1)
      abb43(9)=i_*abb43(2)
      abb43(10)=c2*abb43(9)*abb43(3)
      abb43(11)=gHT*abb43(4)
      abb43(11)=abb43(11)**2
      abb43(12)=abb43(10)*abb43(11)
      abb43(13)=abb43(9)*c1
      abb43(14)=abb43(3)*abb43(13)
      abb43(15)=abb43(14)*abb43(11)
      abb43(16)=abb43(12)-abb43(15)
      abb43(17)=abb43(1)**2
      abb43(18)=abb43(17)*es12
      abb43(19)=2.0_ki*abb43(18)
      abb43(20)=abb43(19)*abb43(16)
      abb43(21)=abb43(1)**4
      abb43(22)=abb43(21)*abb43(16)
      abb43(20)=abb43(20)-abb43(22)
      abb43(23)=es34-es51
      abb43(24)=spak1l3*spbl3k2
      abb43(25)=-abb43(24)*abb43(23)
      abb43(26)=abb43(24)*es12
      abb43(26)=abb43(26)+abb43(25)
      abb43(20)=abb43(20)*abb43(26)
      abb43(27)=abb43(4)*gHT**2
      abb43(10)=abb43(27)*abb43(10)
      abb43(14)=abb43(27)*abb43(14)
      abb43(27)=abb43(10)-abb43(14)
      abb43(21)=abb43(21)*abb43(27)
      abb43(28)=abb43(27)*abb43(19)
      abb43(28)=-abb43(21)+abb43(28)
      abb43(29)=spak2l4*spbl4k2
      abb43(28)=abb43(28)*abb43(29)
      abb43(30)=2.0_ki*es12
      abb43(30)=-abb43(21)*abb43(30)
      abb43(28)=abb43(30)+abb43(28)
      abb43(28)=spak1k5*abb43(28)
      abb43(30)=-abb43(18)*abb43(25)
      abb43(31)=es12**2
      abb43(32)=abb43(31)*abb43(24)
      abb43(33)=-abb43(17)*abb43(32)
      abb43(30)=abb43(33)+abb43(30)
      abb43(33)=mH**2
      abb43(34)=abb43(16)*abb43(33)
      abb43(35)=abb43(6)*abb43(5)
      abb43(30)=abb43(35)*abb43(34)*abb43(30)
      abb43(36)=spak1k2*spbl3k2
      abb43(37)=-abb43(36)*abb43(21)
      abb43(38)=abb43(27)*abb43(29)
      abb43(39)=abb43(36)*abb43(17)
      abb43(40)=abb43(39)*abb43(38)
      abb43(37)=abb43(37)+abb43(40)
      abb43(37)=spal3k5*abb43(37)
      abb43(40)=abb43(18)*abb43(16)
      abb43(41)=spbk5l4*spal4k5
      abb43(42)=abb43(41)*abb43(24)
      abb43(43)=-abb43(42)*abb43(40)
      abb43(20)=abb43(43)+abb43(37)+abb43(30)+abb43(28)+abb43(20)
      abb43(20)=2.0_ki*abb43(20)
      abb43(28)=abb43(24)*abb43(12)
      abb43(30)=4.0_ki*abb43(28)
      abb43(37)=abb43(18)*abb43(30)
      abb43(43)=abb43(10)+abb43(14)
      abb43(44)=abb43(43)*spak1k5
      abb43(45)=abb43(44)*abb43(18)
      abb43(46)=abb43(12)*abb43(17)
      abb43(47)=abb43(15)*es12
      abb43(48)=abb43(46)+abb43(47)
      abb43(49)=abb43(48)*abb43(26)
      abb43(50)=abb43(10)*abb43(17)
      abb43(51)=abb43(50)*abb43(36)
      abb43(52)=spal3k5*abb43(51)
      abb43(49)=abb43(52)-abb43(45)+abb43(49)
      abb43(49)=4.0_ki*abb43(49)
      abb43(52)=abb43(14)*es12
      abb43(53)=abb43(52)+abb43(50)
      abb43(54)=-abb43(53)*abb43(29)
      abb43(55)=abb43(19)*abb43(14)
      abb43(54)=-abb43(55)+abb43(54)
      abb43(56)=4.0_ki*spak1k5
      abb43(54)=abb43(54)*abb43(56)
      abb43(57)=abb43(15)*abb43(17)
      abb43(58)=abb43(25)*abb43(57)
      abb43(59)=abb43(18)*abb43(15)
      abb43(60)=abb43(59)*abb43(24)
      abb43(58)=abb43(60)+abb43(58)
      abb43(60)=-abb43(10)*abb43(18)
      abb43(50)=abb43(29)*abb43(50)
      abb43(50)=abb43(60)+abb43(50)
      abb43(50)=spak1k5*abb43(50)
      abb43(60)=abb43(35)*abb43(33)
      abb43(45)=-abb43(60)*abb43(45)
      abb43(61)=abb43(29)*abb43(33)
      abb43(62)=abb43(53)*abb43(61)
      abb43(55)=-abb43(33)*abb43(55)
      abb43(55)=abb43(55)-abb43(62)
      abb43(63)=abb43(8)*abb43(7)
      abb43(64)=abb43(63)*spak1k5
      abb43(55)=abb43(55)*abb43(64)
      abb43(51)=abb43(51)*abb43(60)
      abb43(65)=abb43(36)*abb43(10)
      abb43(66)=2.0_ki*abb43(17)
      abb43(67)=-abb43(66)*abb43(65)
      abb43(67)=abb43(67)+abb43(51)
      abb43(67)=spal3k5*abb43(67)
      abb43(48)=-abb43(48)*abb43(42)
      abb43(45)=abb43(48)+abb43(67)+abb43(55)+abb43(45)+abb43(50)-abb43(58)
      abb43(45)=4.0_ki*abb43(45)
      abb43(48)=8.0_ki*es12*abb43(28)
      abb43(50)=abb43(23)-es12
      abb43(55)=abb43(50)*abb43(28)
      abb43(67)=8.0_ki*abb43(55)
      abb43(68)=abb43(29)*abb43(10)
      abb43(52)=abb43(52)+abb43(68)
      abb43(52)=8.0_ki*spak1k5*abb43(52)
      abb43(68)=abb43(61)*abb43(10)
      abb43(69)=abb43(33)*es12
      abb43(70)=abb43(14)*abb43(69)
      abb43(70)=abb43(70)+abb43(68)
      abb43(70)=abb43(70)*abb43(64)
      abb43(71)=abb43(41)*abb43(28)
      abb43(70)=abb43(70)+abb43(71)
      abb43(70)=8.0_ki*abb43(70)
      abb43(72)=abb43(66)*abb43(14)
      abb43(73)=abb43(29)*abb43(14)
      abb43(74)=-abb43(72)-abb43(73)
      abb43(75)=abb43(36)*spal3k5
      abb43(74)=abb43(74)*abb43(75)
      abb43(76)=3.0_ki*abb43(17)
      abb43(77)=-spak1k5*abb43(73)*abb43(76)
      abb43(58)=abb43(74)+abb43(77)-abb43(58)
      abb43(58)=4.0_ki*abb43(58)
      abb43(74)=abb43(12)+abb43(15)
      abb43(77)=-abb43(74)*abb43(25)
      abb43(78)=abb43(74)*es12
      abb43(79)=-abb43(24)*abb43(78)
      abb43(80)=2.0_ki*abb43(14)
      abb43(81)=abb43(80)-abb43(10)
      abb43(82)=abb43(29)*spak1k5
      abb43(83)=abb43(81)*abb43(82)
      abb43(84)=abb43(14)*abb43(75)
      abb43(77)=abb43(84)+abb43(83)+abb43(79)+abb43(77)
      abb43(77)=8.0_ki*abb43(77)
      abb43(79)=abb43(69)*abb43(16)
      abb43(83)=abb43(79)*abb43(25)
      abb43(32)=abb43(34)*abb43(32)
      abb43(32)=abb43(32)+abb43(83)
      abb43(32)=abb43(32)*abb43(35)
      abb43(83)=abb43(29)*spal3k5
      abb43(84)=-abb43(36)*abb43(83)
      abb43(85)=spak1k5*abb43(19)
      abb43(84)=abb43(84)+abb43(85)
      abb43(84)=abb43(27)*abb43(84)
      abb43(85)=abb43(16)*es12
      abb43(42)=abb43(85)*abb43(42)
      abb43(32)=abb43(42)+abb43(32)+abb43(84)
      abb43(32)=2.0_ki*abb43(32)
      abb43(42)=-es12*abb43(44)
      abb43(84)=-spal3k5*abb43(65)
      abb43(42)=abb43(84)+abb43(42)+abb43(55)
      abb43(42)=4.0_ki*abb43(42)
      abb43(55)=abb43(56)*abb43(29)
      abb43(84)=abb43(10)*abb43(55)
      abb43(86)=2.0_ki*abb43(12)
      abb43(87)=abb43(86)-abb43(15)
      abb43(26)=abb43(87)*abb43(26)
      abb43(88)=abb43(10)*es12
      abb43(38)=abb43(88)+abb43(38)
      abb43(38)=spak1k5*abb43(38)
      abb43(89)=abb43(35)*abb43(69)
      abb43(44)=-abb43(44)*abb43(89)
      abb43(64)=abb43(68)*abb43(64)
      abb43(65)=abb43(65)*abb43(60)
      abb43(90)=-abb43(36)*abb43(80)
      abb43(90)=abb43(90)-abb43(65)
      abb43(90)=spal3k5*abb43(90)
      abb43(26)=abb43(71)+abb43(90)+abb43(64)+abb43(44)+abb43(38)+abb43(26)
      abb43(26)=4.0_ki*abb43(26)
      abb43(38)=-abb43(14)+2.0_ki*abb43(10)
      abb43(44)=-abb43(38)*abb43(55)
      abb43(55)=abb43(16)*abb43(25)
      abb43(64)=abb43(75)+abb43(82)
      abb43(64)=abb43(27)*abb43(64)
      abb43(71)=abb43(24)*abb43(85)
      abb43(55)=abb43(71)+abb43(64)+abb43(55)
      abb43(55)=2.0_ki*abb43(55)
      abb43(64)=abb43(43)*spak1k2
      abb43(71)=abb43(60)*abb43(64)
      abb43(75)=abb43(74)*spbk5l4
      abb43(90)=spak1l4*abb43(75)
      abb43(71)=abb43(90)+abb43(71)
      abb43(71)=abb43(18)*abb43(71)
      abb43(81)=abb43(81)*abb43(18)
      abb43(21)=3.0_ki*abb43(21)+abb43(81)
      abb43(21)=spak1k2*abb43(21)
      abb43(81)=abb43(14)*spak1k2
      abb43(90)=abb43(81)*abb43(19)*abb43(33)
      abb43(62)=spak1k2*abb43(62)
      abb43(62)=abb43(90)+abb43(62)
      abb43(62)=abb43(62)*abb43(63)
      abb43(90)=-abb43(43)*abb43(39)
      abb43(51)=abb43(90)+abb43(51)
      abb43(51)=spak2l3*abb43(51)
      abb43(90)=abb43(17)*spak1k2
      abb43(38)=-abb43(38)*abb43(29)*abb43(90)
      abb43(91)=spbk5l3*spak1l3
      abb43(92)=abb43(15)*abb43(19)*abb43(91)
      abb43(93)=spbl4l3*spak2l4
      abb43(94)=abb43(93)*spak1l3
      abb43(53)=abb43(53)*abb43(94)
      abb43(95)=abb43(12)*spal3l4
      abb43(39)=-spbk5l4*abb43(39)*abb43(95)
      abb43(21)=abb43(39)+abb43(53)+abb43(92)+abb43(51)+abb43(62)+abb43(21)+abb&
      &43(38)+abb43(71)
      abb43(21)=2.0_ki*abb43(21)
      abb43(38)=4.0_ki*abb43(10)
      abb43(39)=abb43(90)*abb43(38)
      abb43(51)=abb43(14)*abb43(90)
      abb43(53)=abb43(29)*abb43(81)
      abb43(51)=abb43(51)+abb43(53)
      abb43(51)=4.0_ki*abb43(51)
      abb43(53)=abb43(27)*abb43(90)
      abb43(62)=-spak1k2*abb43(68)
      abb43(71)=-abb43(69)*abb43(81)
      abb43(62)=abb43(71)+abb43(62)
      abb43(62)=abb43(62)*abb43(63)
      abb43(71)=abb43(94)*abb43(10)
      abb43(91)=-abb43(47)*abb43(91)
      abb43(53)=-abb43(71)+abb43(91)+abb43(53)+abb43(62)
      abb43(53)=4.0_ki*abb43(53)
      abb43(62)=8.0_ki*abb43(64)
      abb43(91)=abb43(12)*spbk5l3
      abb43(92)=abb43(91)*spak1l3
      abb43(94)=8.0_ki*abb43(92)
      abb43(96)=4.0_ki*abb43(14)
      abb43(97)=abb43(96)+abb43(10)
      abb43(90)=abb43(97)*abb43(90)
      abb43(97)=-abb43(29)*abb43(64)
      abb43(90)=abb43(90)+abb43(97)
      abb43(90)=4.0_ki*abb43(90)
      abb43(97)=abb43(27)*spak1k2
      abb43(98)=abb43(15)*spak1l4
      abb43(99)=abb43(98)*spbk5l4
      abb43(100)=abb43(99)-abb43(97)
      abb43(101)=-8.0_ki*abb43(100)
      abb43(27)=-abb43(27)*abb43(66)
      abb43(68)=-abb43(63)*abb43(68)
      abb43(27)=abb43(68)+abb43(27)-abb43(88)
      abb43(27)=spak1k2*abb43(27)
      abb43(43)=-abb43(43)*abb43(36)
      abb43(43)=abb43(43)-abb43(65)
      abb43(43)=spak2l3*abb43(43)
      abb43(65)=spak1l4*abb43(78)
      abb43(68)=abb43(36)*abb43(95)
      abb43(65)=abb43(68)+abb43(65)
      abb43(65)=spbk5l4*abb43(65)
      abb43(68)=abb43(64)*abb43(89)
      abb43(27)=-abb43(71)+abb43(43)+abb43(68)+abb43(65)+abb43(27)
      abb43(27)=2.0_ki*abb43(27)
      abb43(43)=-4.0_ki*abb43(81)
      abb43(65)=-spak1k2*abb43(38)
      abb43(68)=abb43(92)+abb43(100)
      abb43(68)=4.0_ki*abb43(68)
      abb43(71)=4.0_ki*abb43(97)
      abb43(88)=-2.0_ki*abb43(97)
      abb43(92)=abb43(12)*spbl4k2
      abb43(95)=abb43(92)*spak1k5
      abb43(97)=6.0_ki*abb43(18)*abb43(95)
      abb43(95)=2.0_ki*abb43(95)
      abb43(100)=es12*abb43(95)
      abb43(102)=abb43(92)*spak1k2
      abb43(103)=-abb43(66)*abb43(102)
      abb43(104)=-4.0_ki*abb43(102)
      abb43(105)=abb43(36)*abb43(15)
      abb43(106)=abb43(105)*abb43(18)
      abb43(107)=abb43(57)*abb43(36)
      abb43(108)=abb43(23)*abb43(107)
      abb43(106)=abb43(106)-abb43(108)
      abb43(108)=3.0_ki-abb43(60)
      abb43(106)=abb43(106)*abb43(108)
      abb43(107)=-abb43(41)*abb43(107)
      abb43(106)=abb43(107)+abb43(106)
      abb43(106)=2.0_ki*abb43(106)
      abb43(107)=abb43(23)*abb43(105)
      abb43(36)=abb43(47)*abb43(36)
      abb43(107)=abb43(107)-abb43(36)
      abb43(108)=4.0_ki*abb43(107)
      abb43(109)=4.0_ki*abb43(105)*abb43(41)
      abb43(110)=abb43(41)-abb43(23)
      abb43(110)=abb43(105)*abb43(110)
      abb43(107)=-abb43(107)*abb43(60)
      abb43(36)=abb43(107)+abb43(36)+abb43(110)
      abb43(36)=2.0_ki*abb43(36)
      abb43(107)=abb43(57)*spbk5l3
      abb43(110)=-spak1k2*abb43(107)
      abb43(93)=-abb43(81)*abb43(93)
      abb43(93)=abb43(110)+abb43(93)
      abb43(93)=2.0_ki*abb43(93)
      abb43(110)=4.0_ki*abb43(15)
      abb43(111)=spbk5l3*spak1k2*abb43(110)
      abb43(112)=abb43(47)+abb43(57)
      abb43(113)=spal4k5*spbl4k2
      abb43(114)=abb43(113)*abb43(24)
      abb43(115)=-abb43(112)*abb43(114)
      abb43(116)=abb43(17)*abb43(11)
      abb43(117)=abb43(13)*abb43(116)
      abb43(118)=-spak1k5*spbl4k2*abb43(117)
      abb43(119)=abb43(57)*spbl3k2
      abb43(120)=spal3k5*spbl4k2
      abb43(121)=-abb43(120)*abb43(119)
      abb43(118)=abb43(118)+abb43(121)
      abb43(118)=spak1l4*abb43(118)
      abb43(121)=abb43(9)*spbl3k2
      abb43(116)=spak1l3*abb43(116)*abb43(121)
      abb43(122)=spak1k5*c2*abb43(116)
      abb43(115)=abb43(118)+abb43(122)+abb43(115)
      abb43(115)=2.0_ki*abb43(115)
      abb43(118)=abb43(11)*spak1l3
      abb43(121)=abb43(118)*abb43(121)
      abb43(122)=abb43(121)*c1
      abb43(123)=abb43(56)*abb43(122)
      abb43(124)=abb43(13)*abb43(11)*spbl4k2
      abb43(125)=abb43(124)*spak1l4
      abb43(126)=-abb43(56)*abb43(125)
      abb43(127)=abb43(63)*abb43(33)
      abb43(125)=abb43(125)*abb43(127)
      abb43(122)=abb43(60)*abb43(122)
      abb43(122)=-abb43(125)+abb43(122)
      abb43(122)=spak1k5*abb43(122)
      abb43(128)=abb43(28)*abb43(113)
      abb43(122)=abb43(128)+abb43(122)
      abb43(122)=4.0_ki*abb43(122)
      abb43(128)=abb43(15)*spbl3k2
      abb43(129)=abb43(120)*abb43(128)
      abb43(130)=-4.0_ki*spak1l4*abb43(129)
      abb43(114)=abb43(15)*abb43(114)
      abb43(124)=spak1k5*abb43(124)
      abb43(124)=abb43(124)+abb43(129)
      abb43(124)=spak1l4*abb43(124)
      abb43(114)=abb43(114)+abb43(124)
      abb43(114)=2.0_ki*abb43(114)
      abb43(124)=2.0_ki*abb43(57)
      abb43(129)=abb43(124)+abb43(78)
      abb43(131)=-abb43(47)*abb43(60)
      abb43(131)=-abb43(129)+abb43(131)
      abb43(131)=abb43(24)*abb43(131)
      abb43(87)=-abb43(87)*abb43(17)
      abb43(132)=abb43(47)*abb43(127)
      abb43(87)=abb43(87)+abb43(132)
      abb43(132)=spak1l4*spbl4k2
      abb43(87)=abb43(87)*abb43(132)
      abb43(13)=spbl4l3*abb43(118)*abb43(13)*spak1l4
      abb43(13)=abb43(13)+abb43(87)+abb43(131)
      abb43(13)=2.0_ki*abb43(13)
      abb43(87)=abb43(110)*abb43(132)
      abb43(118)=2.0_ki*abb43(28)
      abb43(131)=abb43(56)*abb43(92)
      abb43(132)=abb43(17)*abb43(131)
      abb43(133)=abb43(127)*abb43(131)
      abb43(102)=-abb43(127)*abb43(102)
      abb43(127)=-abb43(12)*spbl4l3*spak1l3
      abb43(102)=abb43(102)+abb43(127)
      abb43(102)=2.0_ki*abb43(102)
      abb43(127)=spak1k5*abb43(119)
      abb43(134)=abb43(105)*abb43(113)
      abb43(127)=abb43(127)+abb43(134)
      abb43(127)=2.0_ki*abb43(127)
      abb43(134)=abb43(56)*abb43(128)
      abb43(135)=-abb43(60)*abb43(134)
      abb43(136)=abb43(60)+1.0_ki
      abb43(105)=abb43(105)*abb43(136)
      abb43(137)=-spbl4l3*abb43(98)
      abb43(105)=abb43(137)+abb43(105)
      abb43(105)=2.0_ki*abb43(105)
      abb43(10)=abb43(66)*abb43(10)
      abb43(137)=-spak1l4*abb43(10)
      abb43(38)=-spak1l4*abb43(38)
      abb43(9)=abb43(11)*abb43(9)
      abb43(11)=abb43(9)*c1
      abb43(9)=abb43(9)*c2
      abb43(138)=-3.0_ki*abb43(11)+abb43(9)
      abb43(138)=abb43(138)*abb43(17)*abb43(82)
      abb43(139)=abb43(17)*spbl3k2
      abb43(140)=abb43(139)*abb43(12)
      abb43(141)=abb43(83)*abb43(140)
      abb43(142)=2.0_ki*spak2k5
      abb43(116)=-c1*abb43(142)*abb43(116)
      abb43(116)=abb43(116)+abb43(138)+abb43(141)
      abb43(116)=2.0_ki*abb43(116)
      abb43(138)=abb43(11)-abb43(9)
      abb43(141)=abb43(24)*spak2k5
      abb43(143)=abb43(141)*abb43(138)
      abb43(144)=abb43(12)*spbl3k2
      abb43(145)=abb43(144)*spal3k5
      abb43(146)=abb43(145)*abb43(29)
      abb43(143)=abb43(146)+abb43(143)
      abb43(146)=-abb43(9)*abb43(82)
      abb43(146)=abb43(146)-abb43(143)
      abb43(146)=4.0_ki*abb43(146)
      abb43(147)=-abb43(11)-abb43(9)
      abb43(82)=abb43(147)*abb43(82)
      abb43(82)=abb43(82)-abb43(143)
      abb43(82)=2.0_ki*abb43(82)
      abb43(143)=3.0_ki*abb43(15)
      abb43(147)=abb43(143)+abb43(86)
      abb43(147)=abb43(147)*abb43(19)
      abb43(148)=abb43(144)*spak2l3
      abb43(149)=-4.0_ki*abb43(148)
      abb43(150)=abb43(110)*abb43(29)
      abb43(151)=-abb43(15)*abb43(29)
      abb43(151)=abb43(151)-abb43(148)
      abb43(151)=2.0_ki*abb43(151)
      abb43(121)=abb43(121)*c2
      abb43(152)=-2.0_ki*spal4k5*abb43(121)
      abb43(153)=-spak1l4*abb43(9)
      abb43(154)=-spal3l4*abb43(144)
      abb43(153)=abb43(153)+abb43(154)
      abb43(153)=2.0_ki*abb43(153)
      abb43(154)=spal3k5*abb43(66)*abb43(73)
      abb43(155)=4.0_ki*spal3k5
      abb43(155)=-abb43(73)*abb43(155)
      abb43(83)=-abb43(80)*abb43(83)
      abb43(72)=spak2l3*abb43(72)
      abb43(156)=-spak2l3*abb43(96)
      abb43(157)=2.0_ki*abb43(15)
      abb43(158)=-spal3l4*spbl4k2*abb43(157)
      abb43(159)=abb43(112)*abb43(61)
      abb43(160)=abb43(15)*abb43(33)
      abb43(19)=abb43(19)*abb43(160)
      abb43(19)=abb43(19)+abb43(159)
      abb43(19)=-abb43(19)*abb43(23)
      abb43(124)=abb43(31)*abb43(33)*abb43(124)
      abb43(112)=abb43(112)*abb43(29)*abb43(69)
      abb43(19)=abb43(124)+abb43(112)+abb43(19)
      abb43(19)=abb43(19)*abb43(63)
      abb43(112)=abb43(157)-abb43(12)
      abb43(112)=abb43(112)*abb43(18)
      abb43(22)=abb43(112)-abb43(22)
      abb43(112)=es12*abb43(22)
      abb43(124)=-abb43(143)-abb43(12)
      abb43(124)=abb43(124)*abb43(17)*abb43(29)
      abb43(124)=abb43(124)+abb43(22)
      abb43(124)=es51*abb43(124)
      abb43(143)=abb43(57)*abb43(29)
      abb43(22)=abb43(143)-abb43(22)
      abb43(22)=es34*abb43(22)
      abb43(159)=abb43(31)*abb43(17)
      abb43(161)=-abb43(18)*abb43(23)
      abb43(159)=abb43(159)+abb43(161)
      abb43(161)=abb43(74)*abb43(33)
      abb43(159)=abb43(35)*abb43(161)*abb43(159)
      abb43(144)=abb43(18)*abb43(144)
      abb43(162)=abb43(12)*es51
      abb43(139)=abb43(139)*abb43(162)
      abb43(163)=-es34*abb43(140)
      abb43(139)=abb43(163)+abb43(144)+abb43(139)
      abb43(139)=spak2l3*abb43(139)
      abb43(144)=abb43(74)*abb43(18)*abb43(41)
      abb43(163)=abb43(81)*spbl3k1
      abb43(164)=abb43(66)+abb43(29)
      abb43(164)=spal3k5*abb43(164)*abb43(163)
      abb43(165)=-abb43(29)*abb43(59)
      abb43(141)=spbk5k1*abb43(57)*abb43(141)
      abb43(19)=abb43(164)+abb43(141)+abb43(139)+abb43(144)+abb43(19)+abb43(159&
      &)+abb43(22)+abb43(124)+abb43(112)+abb43(165)
      abb43(19)=2.0_ki*abb43(19)
      abb43(22)=-abb43(12)*abb43(18)
      abb43(22)=abb43(22)+abb43(143)
      abb43(112)=spak2l3*abb43(140)
      abb43(22)=2.0_ki*abb43(22)+abb43(112)
      abb43(22)=4.0_ki*abb43(22)
      abb43(112)=abb43(157)+abb43(12)
      abb43(112)=abb43(112)*abb43(17)
      abb43(112)=abb43(112)+abb43(78)
      abb43(112)=4.0_ki*abb43(112)*abb43(50)
      abb43(124)=abb43(12)*es12
      abb43(139)=-8.0_ki*abb43(124)
      abb43(140)=abb43(57)*abb43(23)
      abb43(59)=-abb43(59)+abb43(140)
      abb43(59)=12.0_ki*abb43(59)
      abb43(140)=abb43(16)*abb43(17)
      abb43(141)=abb43(140)-abb43(47)
      abb43(33)=abb43(141)*abb43(33)
      abb43(143)=abb43(61)*abb43(15)
      abb43(33)=abb43(33)-abb43(143)
      abb43(33)=-abb43(33)*abb43(23)
      abb43(61)=abb43(61)*abb43(47)
      abb43(141)=abb43(141)*abb43(69)
      abb43(33)=abb43(141)-abb43(61)+abb43(33)
      abb43(33)=abb43(33)*abb43(63)
      abb43(46)=spbk5l3*abb43(46)
      abb43(46)=-abb43(163)+abb43(46)
      abb43(46)=spal3k5*abb43(46)
      abb43(141)=-abb43(15)+3.0_ki*abb43(12)
      abb43(141)=es51*abb43(141)*abb43(17)
      abb43(144)=-es34*abb43(140)
      abb43(129)=abb43(129)*abb43(41)
      abb43(28)=spbk5k1*spak2k5*abb43(28)
      abb43(28)=abb43(28)+abb43(129)+abb43(33)+abb43(144)+abb43(40)+abb43(141)+&
      &abb43(46)
      abb43(28)=4.0_ki*abb43(28)
      abb43(33)=-abb43(12)*abb43(89)
      abb43(33)=abb43(148)+abb43(124)+abb43(33)
      abb43(33)=8.0_ki*abb43(33)
      abb43(40)=8.0_ki*abb43(162)
      abb43(46)=abb43(12)*es34
      abb43(46)=-abb43(46)+abb43(162)+abb43(124)
      abb43(89)=-16.0_ki*abb43(46)
      abb43(34)=abb43(23)*abb43(34)
      abb43(34)=abb43(34)-abb43(79)
      abb43(34)=abb43(34)*abb43(63)
      abb43(79)=abb43(60)-1.0_ki
      abb43(129)=abb43(162)*abb43(79)
      abb43(141)=spal3k5*abb43(91)
      abb43(129)=abb43(141)+abb43(34)+abb43(129)
      abb43(129)=8.0_ki*abb43(129)
      abb43(141)=abb43(110)+abb43(12)
      abb43(144)=-abb43(17)*abb43(23)
      abb43(18)=abb43(18)+abb43(144)
      abb43(18)=4.0_ki*abb43(141)*abb43(18)
      abb43(141)=-abb43(74)*abb43(23)
      abb43(141)=abb43(78)+abb43(141)
      abb43(141)=8.0_ki*abb43(141)
      abb43(144)=-abb43(161)*abb43(23)
      abb43(69)=abb43(74)*abb43(69)
      abb43(144)=abb43(69)+abb43(144)
      abb43(144)=abb43(144)*abb43(35)
      abb43(159)=abb43(23)*abb43(15)
      abb43(159)=abb43(159)-abb43(47)
      abb43(144)=2.0_ki*abb43(159)+abb43(144)
      abb43(144)=8.0_ki*abb43(144)
      abb43(69)=-abb43(69)*abb43(23)
      abb43(31)=abb43(31)*abb43(161)
      abb43(31)=abb43(31)+abb43(69)
      abb43(31)=abb43(31)*abb43(35)
      abb43(35)=abb43(143)*abb43(23)
      abb43(35)=-abb43(61)+abb43(35)
      abb43(35)=abb43(35)*abb43(63)
      abb43(61)=abb43(66)*abb43(16)
      abb43(61)=abb43(61)-abb43(124)
      abb43(69)=es34-es12
      abb43(69)=-abb43(61)*abb43(69)
      abb43(124)=-abb43(12)*abb43(29)
      abb43(61)=abb43(124)+abb43(61)
      abb43(61)=es51*abb43(61)
      abb43(124)=abb43(41)*abb43(78)
      abb43(50)=abb43(50)*abb43(148)
      abb43(31)=abb43(50)+abb43(124)+abb43(35)+abb43(31)+abb43(61)+abb43(69)
      abb43(31)=2.0_ki*abb43(31)
      abb43(35)=4.0_ki*abb43(159)
      abb43(46)=-4.0_ki*abb43(46)
      abb43(16)=-abb43(16)*abb43(23)
      abb43(16)=abb43(16)+abb43(85)
      abb43(23)=abb43(15)*abb43(41)
      abb43(23)=abb43(23)+abb43(34)-abb43(16)
      abb43(23)=4.0_ki*abb43(23)
      abb43(34)=4.0_ki*abb43(16)
      abb43(16)=-2.0_ki*abb43(16)
      abb43(41)=spak2l4*abb43(17)*abb43(75)
      abb43(50)=spak2l3*abb43(107)
      abb43(41)=abb43(41)+abb43(50)
      abb43(50)=spbl4k1*spak2l4
      abb43(61)=abb43(64)*abb43(50)
      abb43(41)=2.0_ki*abb43(41)+abb43(61)
      abb43(41)=2.0_ki*abb43(41)
      abb43(12)=abb43(12)*abb43(60)
      abb43(12)=-abb43(74)+abb43(12)
      abb43(12)=spbk5k1*spak1k2*abb43(12)
      abb43(61)=spak2l3*abb43(91)
      abb43(12)=abb43(61)+abb43(12)
      abb43(12)=4.0_ki*abb43(12)
      abb43(61)=spak2k5*abb43(66)*abb43(92)
      abb43(64)=spbl4k1*spak1k2*abb43(86)
      abb43(69)=4.0_ki*spak2k5
      abb43(74)=abb43(69)*abb43(119)
      abb43(75)=abb43(128)*abb43(69)
      abb43(85)=abb43(128)*abb43(142)
      abb43(91)=-abb43(121)*abb43(136)
      abb43(91)=abb43(125)+abb43(91)
      abb43(91)=spak2k5*abb43(91)
      abb43(92)=abb43(11)-2.0_ki*abb43(9)
      abb43(92)=abb43(92)*abb43(17)
      abb43(9)=abb43(29)*abb43(9)
      abb43(9)=abb43(92)+abb43(9)
      abb43(9)=spak1k5*abb43(9)
      abb43(29)=-abb43(66)+abb43(29)
      abb43(29)=abb43(29)*abb43(145)
      abb43(57)=-abb43(57)+abb43(78)
      abb43(57)=abb43(57)*abb43(113)
      abb43(66)=spbl3k1*abb43(98)*abb43(120)
      abb43(9)=abb43(66)+abb43(91)+abb43(57)+abb43(9)+abb43(29)
      abb43(9)=2.0_ki*abb43(9)
      abb43(29)=abb43(138)*spak1k5
      abb43(57)=-abb43(29)+abb43(145)
      abb43(57)=4.0_ki*abb43(57)
      abb43(66)=abb43(110)*abb43(113)
      abb43(29)=-abb43(29)*abb43(79)
      abb43(78)=abb43(60)*abb43(145)
      abb43(91)=-abb43(63)*abb43(160)*abb43(113)
      abb43(29)=abb43(91)+abb43(78)+abb43(29)
      abb43(29)=4.0_ki*abb43(29)
      abb43(78)=-2.0_ki*abb43(145)
      abb43(91)=abb43(148)+abb43(47)
      abb43(91)=abb43(60)*abb43(91)
      abb43(63)=-abb43(63)*abb43(143)
      abb43(92)=spbl4k1*abb43(98)
      abb43(63)=abb43(92)+abb43(63)+8.0_ki*abb43(140)+abb43(91)
      abb43(63)=2.0_ki*abb43(63)
      abb43(10)=spal4k5*abb43(10)
      abb43(86)=spbk5k1*spak1l4*abb43(86)
      abb43(91)=abb43(96)*spal3k5
      abb43(17)=abb43(17)*abb43(91)
      abb43(92)=spal3k5*abb43(80)
      abb43(80)=spak2l3*abb43(80)
      abb43(15)=abb43(15)*abb43(25)
      abb43(25)=-abb43(14)*abb43(76)
      abb43(25)=abb43(25)-abb43(73)
      abb43(25)=spak1k5*abb43(25)
      abb43(24)=abb43(24)*abb43(47)
      abb43(15)=abb43(25)+abb43(24)+abb43(15)
      abb43(15)=2.0_ki*abb43(15)
      abb43(14)=-abb43(14)*abb43(56)
      abb43(24)=-spak1k5*abb43(79)*abb43(96)
      abb43(25)=abb43(60)*abb43(81)
      abb43(25)=abb43(25)+abb43(99)
      abb43(25)=2.0_ki*abb43(25)
      abb43(47)=6.0_ki*spak2k5*abb43(117)
      abb43(11)=abb43(69)*abb43(11)
      abb43(56)=abb43(79)*abb43(11)
      abb43(50)=-abb43(157)*abb43(50)
      R2d43=0.0_ki
      rat2 = rat2 + R2d43
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='43' value='", &
          & R2d43, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd43h4_qp
