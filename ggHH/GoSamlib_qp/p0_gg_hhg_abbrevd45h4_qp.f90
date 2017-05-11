module p0_gg_hhg_abbrevd45h4_qp
   use p0_gg_hhg_config_qp, only: ki
   use p0_gg_hhg_globalsh4_qp
   implicit none
   private
   complex(ki), dimension(120), public :: abb45
   complex(ki), public :: R2d45
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
      abb45(1)=sqrt(mT**2)
      abb45(2)=sqrt2**(-1)
      abb45(3)=spbk2k1**(-1)
      abb45(4)=spbk5k2**(-1)
      abb45(5)=spak2l3**(-1)
      abb45(6)=spbl3k2**(-1)
      abb45(7)=abb45(4)*gHT**2
      abb45(8)=i_*abb45(2)
      abb45(9)=abb45(8)*c1
      abb45(10)=abb45(9)*abb45(3)
      abb45(11)=abb45(10)*abb45(7)
      abb45(8)=abb45(8)*c2
      abb45(12)=abb45(3)*abb45(8)
      abb45(13)=abb45(7)*abb45(12)
      abb45(14)=abb45(11)-abb45(13)
      abb45(15)=abb45(1)**2
      abb45(16)=abb45(15)*es12
      abb45(17)=abb45(14)*abb45(16)
      abb45(18)=2.0_ki*abb45(17)
      abb45(19)=abb45(1)**4
      abb45(20)=abb45(19)*abb45(14)
      abb45(21)=abb45(18)-abb45(20)
      abb45(22)=es34-es51
      abb45(21)=-abb45(21)*abb45(22)
      abb45(18)=abb45(20)+abb45(18)
      abb45(18)=es12*abb45(18)
      abb45(18)=abb45(18)+abb45(21)
      abb45(18)=spak1k5*abb45(18)
      abb45(21)=abb45(14)*abb45(15)
      abb45(23)=-abb45(21)*abb45(22)
      abb45(23)=abb45(20)+abb45(17)+abb45(23)
      abb45(24)=spal3k5*spbl3k2
      abb45(25)=abb45(24)*spak1k2
      abb45(23)=abb45(23)*abb45(25)
      abb45(26)=gHT*abb45(4)
      abb45(26)=abb45(26)**2
      abb45(27)=abb45(10)*abb45(26)
      abb45(12)=abb45(12)*abb45(26)
      abb45(28)=abb45(27)-abb45(12)
      abb45(29)=abb45(28)*es34
      abb45(30)=abb45(28)*es12
      abb45(31)=abb45(29)-abb45(30)
      abb45(32)=abb45(28)*es51
      abb45(33)=abb45(31)-abb45(32)
      abb45(34)=spak1l3*spbl3k2
      abb45(35)=abb45(33)*abb45(34)
      abb45(36)=-abb45(19)*abb45(35)
      abb45(18)=abb45(23)+abb45(18)+abb45(36)
      abb45(18)=2.0_ki*abb45(18)
      abb45(23)=abb45(12)*abb45(15)
      abb45(36)=abb45(12)*es12
      abb45(23)=abb45(23)-abb45(36)
      abb45(37)=abb45(23)*abb45(22)
      abb45(38)=abb45(27)+abb45(12)
      abb45(39)=abb45(38)*abb45(15)
      abb45(40)=-abb45(39)+abb45(36)
      abb45(40)=es12*abb45(40)
      abb45(37)=abb45(40)+abb45(37)
      abb45(37)=abb45(37)*abb45(34)
      abb45(40)=2.0_ki*abb45(11)
      abb45(41)=abb45(40)-abb45(13)
      abb45(41)=abb45(41)*abb45(16)
      abb45(42)=spak1k5*abb45(41)
      abb45(43)=abb45(11)*abb45(15)
      abb45(44)=abb45(25)*abb45(43)
      abb45(37)=abb45(44)+abb45(42)+abb45(37)
      abb45(37)=4.0_ki*abb45(37)
      abb45(42)=abb45(11)+abb45(13)
      abb45(44)=abb45(42)*abb45(15)
      abb45(45)=abb45(13)*es12
      abb45(44)=abb45(44)-abb45(45)
      abb45(44)=abb45(44)*es12
      abb45(46)=abb45(13)*abb45(15)
      abb45(47)=abb45(46)-abb45(45)
      abb45(47)=-abb45(47)*abb45(22)
      abb45(44)=abb45(44)+abb45(47)
      abb45(48)=4.0_ki*spak1k5
      abb45(49)=abb45(44)*abb45(48)
      abb45(50)=abb45(27)*es34
      abb45(51)=abb45(50)*abb45(15)
      abb45(52)=abb45(10)*abb45(15)
      abb45(53)=abb45(26)*es51
      abb45(54)=abb45(52)*abb45(53)
      abb45(55)=abb45(26)*es12
      abb45(52)=abb45(52)*abb45(55)
      abb45(51)=-abb45(52)+abb45(51)-abb45(54)
      abb45(56)=abb45(51)*abb45(34)
      abb45(57)=abb45(5)*abb45(6)*mH**2
      abb45(58)=abb45(57)*spak1k5
      abb45(44)=abb45(44)*abb45(58)
      abb45(59)=abb45(22)*abb45(43)
      abb45(41)=-abb45(41)+abb45(59)
      abb45(41)=spak1k5*abb45(41)
      abb45(60)=abb45(46)*abb45(25)
      abb45(41)=abb45(60)+2.0_ki*abb45(56)+abb45(41)+abb45(44)
      abb45(41)=4.0_ki*abb45(41)
      abb45(44)=abb45(16)*abb45(11)
      abb45(59)=abb45(44)-abb45(59)
      abb45(60)=2.0_ki*spak1k5
      abb45(59)=abb45(59)*abb45(60)
      abb45(61)=-abb45(13)*abb45(22)
      abb45(62)=abb45(61)+abb45(45)
      abb45(63)=abb45(62)-abb45(43)
      abb45(64)=-abb45(63)*abb45(25)
      abb45(56)=abb45(64)+abb45(59)-abb45(56)
      abb45(56)=4.0_ki*abb45(56)
      abb45(59)=abb45(55)*abb45(10)
      abb45(10)=abb45(53)*abb45(10)
      abb45(64)=abb45(59)+abb45(10)
      abb45(65)=abb45(64)-abb45(50)
      abb45(66)=abb45(65)*abb45(34)
      abb45(67)=abb45(11)*es12
      abb45(68)=-abb45(11)*abb45(22)
      abb45(67)=abb45(67)+abb45(68)
      abb45(69)=-spak1k5*abb45(67)
      abb45(69)=abb45(69)-abb45(66)
      abb45(69)=8.0_ki*abb45(69)
      abb45(70)=abb45(28)*abb45(16)
      abb45(71)=abb45(28)*abb45(15)
      abb45(72)=abb45(71)*abb45(22)
      abb45(72)=-abb45(70)+abb45(72)
      abb45(72)=abb45(72)*abb45(34)
      abb45(17)=-spak1k5*abb45(17)
      abb45(17)=abb45(17)+abb45(72)
      abb45(72)=2.0_ki*abb45(21)
      abb45(73)=abb45(22)-es12
      abb45(74)=abb45(14)*abb45(73)
      abb45(74)=-abb45(72)+abb45(74)
      abb45(74)=abb45(74)*abb45(25)
      abb45(17)=2.0_ki*abb45(17)+abb45(74)
      abb45(17)=2.0_ki*abb45(17)
      abb45(74)=abb45(12)*es34
      abb45(75)=abb45(12)*es51
      abb45(76)=abb45(74)-abb45(75)
      abb45(77)=abb45(38)*es12
      abb45(78)=abb45(77)-abb45(76)
      abb45(78)=abb45(78)*abb45(34)
      abb45(79)=abb45(25)*abb45(11)
      abb45(80)=-spak1k5*abb45(45)
      abb45(78)=-abb45(79)+abb45(80)+abb45(78)
      abb45(78)=4.0_ki*abb45(78)
      abb45(80)=abb45(42)*es12
      abb45(80)=abb45(80)+abb45(61)
      abb45(81)=-abb45(80)*abb45(48)
      abb45(80)=-abb45(80)*abb45(58)
      abb45(68)=spak1k5*abb45(68)
      abb45(82)=-abb45(13)*abb45(25)
      abb45(68)=abb45(82)+2.0_ki*abb45(66)+abb45(68)+abb45(80)
      abb45(68)=4.0_ki*abb45(68)
      abb45(80)=abb45(62)*abb45(60)
      abb45(66)=-abb45(79)+abb45(80)-abb45(66)
      abb45(66)=4.0_ki*abb45(66)
      abb45(79)=-abb45(11)+2.0_ki*abb45(13)
      abb45(79)=abb45(79)*abb45(22)
      abb45(80)=2.0_ki*abb45(45)
      abb45(79)=-abb45(80)+abb45(79)
      abb45(79)=spak1k5*abb45(79)
      abb45(25)=abb45(14)*abb45(25)
      abb45(25)=abb45(25)+abb45(79)-abb45(35)
      abb45(25)=2.0_ki*abb45(25)
      abb45(35)=abb45(80)*spak1l3
      abb45(79)=-abb45(15)*abb45(35)
      abb45(82)=-2.0_ki*abb45(46)+abb45(45)
      abb45(82)=es12*abb45(82)
      abb45(47)=abb45(82)-abb45(47)
      abb45(47)=abb45(47)*abb45(57)
      abb45(82)=-abb45(46)*abb45(22)
      abb45(20)=abb45(47)-3.0_ki*abb45(20)+abb45(44)+abb45(82)
      abb45(20)=spak1k2*abb45(20)
      abb45(44)=spbk5l3*spak1l3
      abb45(23)=abb45(44)*abb45(23)*abb45(73)
      abb45(47)=spak1k2*spbl3k2
      abb45(82)=abb45(47)*spak2l3
      abb45(83)=abb45(46)*abb45(82)
      abb45(20)=abb45(83)+abb45(23)+abb45(20)
      abb45(20)=2.0_ki*abb45(20)
      abb45(23)=4.0_ki*spak1k2
      abb45(83)=abb45(21)*abb45(23)
      abb45(84)=-abb45(57)*abb45(83)
      abb45(85)=abb45(13)+abb45(40)
      abb45(85)=abb45(85)*abb45(15)
      abb45(62)=abb45(85)+abb45(62)
      abb45(62)=abb45(62)*abb45(23)
      abb45(85)=8.0_ki*spak1k2
      abb45(86)=-abb45(11)*abb45(85)
      abb45(87)=es12*abb45(14)
      abb45(80)=abb45(80)+abb45(61)
      abb45(80)=abb45(80)*abb45(57)
      abb45(61)=abb45(80)+abb45(72)+abb45(87)-abb45(61)
      abb45(61)=spak1k2*abb45(61)
      abb45(72)=abb45(76)-abb45(36)
      abb45(80)=-abb45(72)*abb45(44)
      abb45(82)=-abb45(13)*abb45(82)
      abb45(61)=abb45(82)+abb45(80)+abb45(61)
      abb45(61)=2.0_ki*abb45(61)
      abb45(42)=abb45(42)*abb45(23)
      abb45(80)=abb45(23)*abb45(14)
      abb45(82)=abb45(57)*abb45(80)
      abb45(85)=abb45(13)*abb45(85)
      abb45(87)=2.0_ki*spak1k2
      abb45(14)=abb45(14)*abb45(87)
      abb45(47)=abb45(72)*abb45(47)
      abb45(88)=2.0_ki*abb45(47)
      abb45(89)=-abb45(15)*abb45(88)
      abb45(47)=-4.0_ki*abb45(47)
      abb45(90)=abb45(8)*abb45(26)
      abb45(91)=abb45(90)*spak1k5
      abb45(92)=abb45(91)*abb45(34)
      abb45(7)=spak1k5**2*abb45(8)*abb45(7)
      abb45(92)=abb45(92)-abb45(7)
      abb45(93)=abb45(15)*abb45(92)
      abb45(46)=-spak1k5*abb45(24)*abb45(46)
      abb45(46)=abb45(46)+abb45(93)
      abb45(46)=2.0_ki*abb45(46)
      abb45(93)=abb45(90)*abb45(34)
      abb45(94)=abb45(48)*abb45(93)
      abb45(7)=4.0_ki*abb45(7)
      abb45(95)=-abb45(57)*abb45(7)
      abb45(96)=-abb45(13)*abb45(24)*abb45(48)
      abb45(97)=abb45(13)*spak1k5
      abb45(98)=abb45(24)*abb45(97)
      abb45(92)=abb45(98)-abb45(92)
      abb45(92)=2.0_ki*abb45(92)
      abb45(21)=-spak1k5*abb45(21)
      abb45(98)=abb45(27)*abb45(15)
      abb45(99)=abb45(98)*abb45(34)
      abb45(45)=abb45(45)*abb45(58)
      abb45(44)=abb45(91)*abb45(44)
      abb45(21)=abb45(44)-abb45(99)+abb45(21)+abb45(45)
      abb45(21)=2.0_ki*abb45(21)
      abb45(34)=abb45(34)*abb45(27)
      abb45(44)=abb45(97)-abb45(34)
      abb45(44)=4.0_ki*abb45(44)
      abb45(13)=-abb45(13)*abb45(60)
      abb45(13)=abb45(13)+abb45(34)
      abb45(13)=2.0_ki*abb45(13)
      abb45(45)=2.0_ki*abb45(12)
      abb45(100)=spbl3k2*abb45(45)*spak1k5
      abb45(101)=abb45(15)*abb45(100)
      abb45(102)=spbl3k2*abb45(12)*abb45(48)
      abb45(9)=abb45(9)*abb45(26)
      abb45(26)=abb45(9)*abb45(15)
      abb45(103)=-abb45(26)*abb45(22)
      abb45(104)=abb45(9)*abb45(16)
      abb45(103)=abb45(104)+abb45(103)
      abb45(103)=6.0_ki*spak1k5*abb45(103)
      abb45(73)=abb45(73)*abb45(9)
      abb45(104)=-abb45(73)*abb45(60)
      abb45(105)=abb45(45)+abb45(27)
      abb45(105)=2.0_ki*abb45(105)*abb45(16)
      abb45(106)=-4.0_ki*abb45(65)
      abb45(107)=abb45(77)-abb45(50)+abb45(10)
      abb45(107)=2.0_ki*abb45(107)
      abb45(108)=3.0_ki*abb45(28)
      abb45(19)=abb45(108)*abb45(19)
      abb45(109)=abb45(12)-3.0_ki*abb45(27)
      abb45(109)=abb45(109)*abb45(16)
      abb45(110)=abb45(12)-5.0_ki*abb45(27)
      abb45(110)=es51*abb45(110)*abb45(15)
      abb45(111)=2.0_ki*abb45(27)
      abb45(112)=abb45(111)-abb45(12)
      abb45(113)=abb45(112)*abb45(15)
      abb45(114)=es34*abb45(113)
      abb45(109)=abb45(114)+abb45(110)-abb45(19)+abb45(109)
      abb45(109)=es34*abb45(109)
      abb45(110)=2.0_ki*abb45(36)
      abb45(114)=-abb45(110)+3.0_ki*abb45(98)
      abb45(114)=abb45(114)*es12
      abb45(115)=abb45(98)-abb45(36)
      abb45(116)=-es51*abb45(115)
      abb45(116)=-abb45(114)+abb45(116)
      abb45(116)=es51*abb45(116)
      abb45(117)=-es34+2.0_ki*es51
      abb45(115)=abb45(115)*abb45(117)
      abb45(114)=abb45(114)+abb45(115)
      abb45(114)=es34*abb45(114)
      abb45(98)=-2.0_ki*abb45(98)+abb45(36)
      abb45(115)=es12**2
      abb45(98)=abb45(98)*abb45(115)
      abb45(98)=abb45(114)+abb45(98)+abb45(116)
      abb45(98)=abb45(98)*abb45(57)
      abb45(54)=3.0_ki*abb45(54)+abb45(19)+4.0_ki*abb45(52)
      abb45(54)=es51*abb45(54)
      abb45(114)=spbk5l3*spal3k5
      abb45(51)=abb45(51)*abb45(114)
      abb45(116)=-abb45(39)*abb45(22)
      abb45(117)=abb45(38)*abb45(16)
      abb45(116)=abb45(117)+abb45(116)
      abb45(117)=spak2l3*spbl3k2
      abb45(116)=abb45(116)*abb45(117)
      abb45(19)=abb45(19)+abb45(52)
      abb45(19)=es12*abb45(19)
      abb45(52)=spbl3k1*spal3k5
      abb45(118)=abb45(52)*spak1k2
      abb45(63)=abb45(63)*abb45(118)
      abb45(119)=spbk5k1*spak2k5
      abb45(99)=-abb45(119)*abb45(99)
      abb45(19)=abb45(99)+abb45(63)+abb45(116)+abb45(51)+abb45(98)+abb45(109)+a&
      &bb45(19)+abb45(54)
      abb45(19)=2.0_ki*abb45(19)
      abb45(51)=-4.0_ki*abb45(72)*abb45(117)
      abb45(54)=8.0_ki*abb45(36)
      abb45(63)=abb45(75)+abb45(36)
      abb45(98)=abb45(71)-abb45(63)
      abb45(98)=es51*abb45(98)
      abb45(99)=-abb45(74)+2.0_ki*abb45(75)
      abb45(109)=-abb45(71)+abb45(36)+abb45(99)
      abb45(109)=es34*abb45(109)
      abb45(70)=abb45(109)+abb45(70)+abb45(98)
      abb45(70)=4.0_ki*abb45(70)
      abb45(98)=abb45(71)+2.0_ki*abb45(30)
      abb45(109)=abb45(29)-2.0_ki*abb45(32)-abb45(98)
      abb45(109)=es34*abb45(109)
      abb45(116)=abb45(71)+abb45(30)
      abb45(116)=es12*abb45(116)
      abb45(98)=abb45(32)+abb45(98)
      abb45(98)=es51*abb45(98)
      abb45(98)=abb45(109)+abb45(116)+abb45(98)
      abb45(98)=abb45(98)*abb45(57)
      abb45(109)=3.0_ki*abb45(71)
      abb45(64)=-abb45(109)+abb45(64)
      abb45(64)=es51*abb45(64)
      abb45(116)=abb45(114)*abb45(65)
      abb45(120)=abb45(119)*abb45(34)
      abb45(116)=abb45(120)+abb45(116)
      abb45(16)=-abb45(16)*abb45(108)
      abb45(108)=abb45(109)-abb45(10)
      abb45(108)=es34*abb45(108)
      abb45(16)=abb45(98)+abb45(108)+abb45(16)+abb45(64)+abb45(116)
      abb45(16)=4.0_ki*abb45(16)
      abb45(63)=-8.0_ki*abb45(63)
      abb45(64)=8.0_ki*abb45(33)
      abb45(98)=abb45(33)*abb45(57)
      abb45(108)=abb45(75)+abb45(98)
      abb45(108)=8.0_ki*abb45(108)
      abb45(109)=abb45(110)-abb45(113)
      abb45(99)=-abb45(109)-abb45(99)
      abb45(99)=es34*abb45(99)
      abb45(36)=-abb45(113)+abb45(36)
      abb45(36)=es12*abb45(36)
      abb45(75)=abb45(75)+abb45(109)
      abb45(75)=es51*abb45(75)
      abb45(36)=abb45(99)+abb45(36)+abb45(75)
      abb45(36)=4.0_ki*abb45(36)
      abb45(22)=abb45(22)*abb45(38)
      abb45(22)=abb45(22)-abb45(77)
      abb45(38)=8.0_ki*abb45(22)
      abb45(75)=16.0_ki*abb45(65)
      abb45(77)=2.0_ki*abb45(71)
      abb45(30)=-abb45(77)+abb45(30)
      abb45(30)=es12*abb45(30)
      abb45(99)=es12*abb45(112)
      abb45(99)=abb45(10)-abb45(77)+abb45(99)
      abb45(99)=es51*abb45(99)
      abb45(45)=abb45(45)-abb45(27)
      abb45(109)=abb45(45)*es12
      abb45(32)=abb45(109)-abb45(32)
      abb45(74)=-abb45(74)+abb45(77)+abb45(32)
      abb45(74)=es34*abb45(74)
      abb45(59)=3.0_ki*abb45(59)
      abb45(50)=abb45(50)-abb45(59)-2.0_ki*abb45(10)
      abb45(50)=es34*abb45(50)
      abb45(10)=abb45(59)+abb45(10)
      abb45(10)=es51*abb45(10)
      abb45(59)=abb45(115)*abb45(111)
      abb45(10)=abb45(50)+abb45(59)+abb45(10)
      abb45(10)=abb45(10)*abb45(57)
      abb45(22)=abb45(22)*abb45(117)
      abb45(50)=abb45(11)*abb45(118)
      abb45(10)=abb45(50)+abb45(22)+abb45(10)+abb45(74)+abb45(30)+abb45(99)+abb&
      &45(116)
      abb45(10)=2.0_ki*abb45(10)
      abb45(22)=-4.0_ki*abb45(76)
      abb45(30)=4.0_ki*abb45(33)
      abb45(50)=es51*abb45(45)
      abb45(31)=abb45(98)+abb45(50)+abb45(31)
      abb45(31)=4.0_ki*abb45(31)
      abb45(50)=8.0_ki*abb45(65)
      abb45(33)=2.0_ki*abb45(33)
      abb45(59)=-spak2l3*spbk5l3*abb45(72)
      abb45(39)=-spbk5k1*abb45(39)*abb45(87)
      abb45(39)=abb45(59)+abb45(39)
      abb45(39)=2.0_ki*abb45(39)
      abb45(23)=spbk5k1*abb45(23)*abb45(12)
      abb45(59)=spbl3k1*abb45(72)*abb45(87)
      abb45(15)=-abb45(45)*abb45(15)
      abb45(15)=abb45(15)+abb45(65)
      abb45(15)=abb45(15)*abb45(24)
      abb45(65)=abb45(26)-abb45(73)
      abb45(65)=spak1k5*abb45(65)
      abb45(53)=abb45(55)+abb45(53)
      abb45(8)=abb45(8)*abb45(53)
      abb45(53)=-es34*abb45(90)
      abb45(8)=abb45(53)+abb45(8)
      abb45(8)=abb45(8)*abb45(58)
      abb45(53)=-spak2k5*abb45(93)
      abb45(55)=abb45(52)*abb45(97)
      abb45(8)=abb45(55)+abb45(53)+abb45(15)+abb45(65)+abb45(8)
      abb45(8)=2.0_ki*abb45(8)
      abb45(15)=abb45(24)*abb45(12)
      abb45(15)=abb45(15)+abb45(91)
      abb45(53)=-4.0_ki*abb45(15)
      abb45(55)=abb45(90)+abb45(9)
      abb45(55)=abb45(55)*abb45(48)
      abb45(58)=abb45(9)*abb45(58)
      abb45(15)=abb45(58)+abb45(15)
      abb45(15)=4.0_ki*abb45(15)
      abb45(58)=4.0_ki*abb45(27)*abb45(24)
      abb45(24)=abb45(45)*abb45(24)
      abb45(24)=abb45(91)+abb45(24)
      abb45(24)=2.0_ki*abb45(24)
      abb45(45)=-spak1l3*abb45(90)
      abb45(65)=spal3k5*abb45(11)
      abb45(45)=abb45(45)+abb45(65)
      abb45(45)=2.0_ki*abb45(45)
      abb45(29)=-abb45(29)-abb45(32)
      abb45(29)=abb45(29)*abb45(57)
      abb45(32)=abb45(117)-abb45(114)
      abb45(32)=abb45(12)*abb45(32)
      abb45(29)=-6.0_ki*abb45(71)+abb45(29)+abb45(32)
      abb45(29)=2.0_ki*abb45(29)
      abb45(32)=8.0_ki*abb45(28)
      abb45(65)=-abb45(57)*abb45(32)
      abb45(28)=-4.0_ki*abb45(28)
      abb45(71)=-spak1k5*abb45(11)
      abb45(34)=abb45(71)+abb45(34)
      abb45(34)=2.0_ki*abb45(34)
      abb45(71)=-spak2k5*spbl3k2*abb45(27)
      abb45(12)=-spbl3k1*spak1k5*abb45(12)
      abb45(12)=abb45(71)+abb45(12)
      abb45(12)=2.0_ki*abb45(12)
      abb45(43)=abb45(43)+abb45(67)
      abb45(43)=abb45(43)*abb45(60)
      abb45(48)=abb45(48)*abb45(11)
      abb45(11)=-abb45(11)*abb45(60)
      abb45(40)=spak1k2*abb45(40)
      abb45(26)=-2.0_ki*spak2k5*abb45(26)
      abb45(9)=abb45(9)*spak2k5
      abb45(60)=4.0_ki*abb45(9)
      abb45(67)=abb45(111)*abb45(119)
      abb45(57)=-1.0_ki-abb45(57)
      abb45(9)=abb45(57)*abb45(9)
      abb45(27)=-abb45(27)*abb45(52)
      abb45(9)=abb45(9)+abb45(27)
      abb45(9)=2.0_ki*abb45(9)
      R2d45=0.0_ki
      rat2 = rat2 + R2d45
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='45' value='", &
          & R2d45, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd45h4_qp
