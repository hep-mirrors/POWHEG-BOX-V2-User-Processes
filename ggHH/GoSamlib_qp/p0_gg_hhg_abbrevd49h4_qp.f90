module p0_gg_hhg_abbrevd49h4_qp
   use p0_gg_hhg_config_qp, only: ki
   use p0_gg_hhg_globalsh4_qp
   implicit none
   private
   complex(ki), dimension(120), public :: abb49
   complex(ki), public :: R2d49
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
      abb49(1)=sqrt(mT**2)
      abb49(2)=sqrt2**(-1)
      abb49(3)=spbk2k1**(-1)
      abb49(4)=spbk5k2**(-1)
      abb49(5)=spak2l4**(-1)
      abb49(6)=spbl4k2**(-1)
      abb49(7)=abb49(4)*gHT**2
      abb49(8)=i_*abb49(2)
      abb49(9)=abb49(8)*c1
      abb49(10)=abb49(9)*abb49(3)
      abb49(11)=abb49(10)*abb49(7)
      abb49(8)=abb49(8)*c2
      abb49(12)=abb49(3)*abb49(8)
      abb49(13)=abb49(7)*abb49(12)
      abb49(14)=abb49(11)-abb49(13)
      abb49(15)=abb49(1)**2
      abb49(16)=abb49(15)*es12
      abb49(17)=abb49(14)*abb49(16)
      abb49(18)=2.0_ki*abb49(17)
      abb49(19)=abb49(1)**4
      abb49(20)=abb49(19)*abb49(14)
      abb49(21)=abb49(18)-abb49(20)
      abb49(22)=es34-es51
      abb49(21)=-abb49(21)*abb49(22)
      abb49(18)=abb49(20)+abb49(18)
      abb49(18)=es12*abb49(18)
      abb49(18)=abb49(18)+abb49(21)
      abb49(18)=spak1k5*abb49(18)
      abb49(21)=abb49(14)*abb49(15)
      abb49(23)=-abb49(21)*abb49(22)
      abb49(23)=abb49(20)+abb49(17)+abb49(23)
      abb49(24)=spal4k5*spbl4k2
      abb49(25)=abb49(24)*spak1k2
      abb49(23)=abb49(23)*abb49(25)
      abb49(26)=gHT*abb49(4)
      abb49(26)=abb49(26)**2
      abb49(27)=abb49(10)*abb49(26)
      abb49(12)=abb49(12)*abb49(26)
      abb49(28)=abb49(27)-abb49(12)
      abb49(29)=abb49(28)*es34
      abb49(30)=abb49(28)*es12
      abb49(31)=abb49(29)-abb49(30)
      abb49(32)=abb49(28)*es51
      abb49(33)=abb49(31)-abb49(32)
      abb49(34)=spak1l4*spbl4k2
      abb49(35)=abb49(33)*abb49(34)
      abb49(36)=-abb49(19)*abb49(35)
      abb49(18)=abb49(23)+abb49(18)+abb49(36)
      abb49(18)=2.0_ki*abb49(18)
      abb49(23)=abb49(12)*abb49(15)
      abb49(36)=abb49(12)*es12
      abb49(23)=abb49(23)-abb49(36)
      abb49(37)=abb49(23)*abb49(22)
      abb49(38)=abb49(27)+abb49(12)
      abb49(39)=abb49(38)*abb49(15)
      abb49(40)=-abb49(39)+abb49(36)
      abb49(40)=es12*abb49(40)
      abb49(37)=abb49(40)+abb49(37)
      abb49(37)=abb49(37)*abb49(34)
      abb49(40)=2.0_ki*abb49(11)
      abb49(41)=abb49(40)-abb49(13)
      abb49(41)=abb49(41)*abb49(16)
      abb49(42)=spak1k5*abb49(41)
      abb49(43)=abb49(11)*abb49(15)
      abb49(44)=abb49(25)*abb49(43)
      abb49(37)=abb49(44)+abb49(42)+abb49(37)
      abb49(37)=4.0_ki*abb49(37)
      abb49(42)=abb49(11)+abb49(13)
      abb49(44)=abb49(42)*abb49(15)
      abb49(45)=abb49(13)*es12
      abb49(44)=abb49(44)-abb49(45)
      abb49(44)=abb49(44)*es12
      abb49(46)=abb49(13)*abb49(15)
      abb49(47)=abb49(46)-abb49(45)
      abb49(47)=-abb49(47)*abb49(22)
      abb49(44)=abb49(44)+abb49(47)
      abb49(48)=4.0_ki*spak1k5
      abb49(49)=abb49(44)*abb49(48)
      abb49(50)=abb49(27)*es34
      abb49(51)=abb49(50)*abb49(15)
      abb49(52)=abb49(10)*abb49(15)
      abb49(53)=abb49(26)*es51
      abb49(54)=abb49(52)*abb49(53)
      abb49(55)=abb49(26)*es12
      abb49(52)=abb49(52)*abb49(55)
      abb49(51)=-abb49(52)+abb49(51)-abb49(54)
      abb49(56)=abb49(51)*abb49(34)
      abb49(57)=abb49(5)*abb49(6)*mH**2
      abb49(58)=abb49(57)*spak1k5
      abb49(44)=abb49(44)*abb49(58)
      abb49(59)=abb49(22)*abb49(43)
      abb49(41)=-abb49(41)+abb49(59)
      abb49(41)=spak1k5*abb49(41)
      abb49(60)=abb49(46)*abb49(25)
      abb49(41)=abb49(60)+2.0_ki*abb49(56)+abb49(41)+abb49(44)
      abb49(41)=4.0_ki*abb49(41)
      abb49(44)=abb49(16)*abb49(11)
      abb49(59)=abb49(44)-abb49(59)
      abb49(60)=2.0_ki*spak1k5
      abb49(59)=abb49(59)*abb49(60)
      abb49(61)=-abb49(13)*abb49(22)
      abb49(62)=abb49(61)+abb49(45)
      abb49(63)=abb49(62)-abb49(43)
      abb49(64)=-abb49(63)*abb49(25)
      abb49(56)=abb49(64)+abb49(59)-abb49(56)
      abb49(56)=4.0_ki*abb49(56)
      abb49(59)=abb49(55)*abb49(10)
      abb49(10)=abb49(53)*abb49(10)
      abb49(64)=abb49(59)+abb49(10)
      abb49(65)=abb49(64)-abb49(50)
      abb49(66)=abb49(65)*abb49(34)
      abb49(67)=abb49(11)*es12
      abb49(68)=-abb49(11)*abb49(22)
      abb49(67)=abb49(67)+abb49(68)
      abb49(69)=-spak1k5*abb49(67)
      abb49(69)=abb49(69)-abb49(66)
      abb49(69)=8.0_ki*abb49(69)
      abb49(70)=abb49(28)*abb49(16)
      abb49(71)=abb49(28)*abb49(15)
      abb49(72)=abb49(71)*abb49(22)
      abb49(72)=-abb49(70)+abb49(72)
      abb49(72)=abb49(72)*abb49(34)
      abb49(17)=-spak1k5*abb49(17)
      abb49(17)=abb49(17)+abb49(72)
      abb49(72)=2.0_ki*abb49(21)
      abb49(73)=abb49(22)-es12
      abb49(74)=abb49(14)*abb49(73)
      abb49(74)=-abb49(72)+abb49(74)
      abb49(74)=abb49(74)*abb49(25)
      abb49(17)=2.0_ki*abb49(17)+abb49(74)
      abb49(17)=2.0_ki*abb49(17)
      abb49(74)=abb49(12)*es34
      abb49(75)=abb49(12)*es51
      abb49(76)=abb49(74)-abb49(75)
      abb49(77)=abb49(38)*es12
      abb49(78)=abb49(77)-abb49(76)
      abb49(78)=abb49(78)*abb49(34)
      abb49(79)=abb49(25)*abb49(11)
      abb49(80)=-spak1k5*abb49(45)
      abb49(78)=-abb49(79)+abb49(80)+abb49(78)
      abb49(78)=4.0_ki*abb49(78)
      abb49(80)=abb49(42)*es12
      abb49(80)=abb49(80)+abb49(61)
      abb49(81)=-abb49(80)*abb49(48)
      abb49(80)=-abb49(80)*abb49(58)
      abb49(68)=spak1k5*abb49(68)
      abb49(82)=-abb49(13)*abb49(25)
      abb49(68)=abb49(82)+2.0_ki*abb49(66)+abb49(68)+abb49(80)
      abb49(68)=4.0_ki*abb49(68)
      abb49(80)=abb49(62)*abb49(60)
      abb49(66)=-abb49(79)+abb49(80)-abb49(66)
      abb49(66)=4.0_ki*abb49(66)
      abb49(79)=-abb49(11)+2.0_ki*abb49(13)
      abb49(79)=abb49(79)*abb49(22)
      abb49(80)=2.0_ki*abb49(45)
      abb49(79)=-abb49(80)+abb49(79)
      abb49(79)=spak1k5*abb49(79)
      abb49(25)=abb49(14)*abb49(25)
      abb49(25)=abb49(25)+abb49(79)-abb49(35)
      abb49(25)=2.0_ki*abb49(25)
      abb49(35)=abb49(80)*spak1l4
      abb49(79)=-abb49(15)*abb49(35)
      abb49(82)=-2.0_ki*abb49(46)+abb49(45)
      abb49(82)=es12*abb49(82)
      abb49(47)=abb49(82)-abb49(47)
      abb49(47)=abb49(47)*abb49(57)
      abb49(82)=-abb49(46)*abb49(22)
      abb49(20)=abb49(47)-3.0_ki*abb49(20)+abb49(44)+abb49(82)
      abb49(20)=spak1k2*abb49(20)
      abb49(44)=spbk5l4*spak1l4
      abb49(23)=abb49(44)*abb49(23)*abb49(73)
      abb49(47)=spak1k2*spbl4k2
      abb49(82)=abb49(47)*spak2l4
      abb49(83)=abb49(46)*abb49(82)
      abb49(20)=abb49(83)+abb49(23)+abb49(20)
      abb49(20)=2.0_ki*abb49(20)
      abb49(23)=4.0_ki*spak1k2
      abb49(83)=abb49(21)*abb49(23)
      abb49(84)=-abb49(57)*abb49(83)
      abb49(85)=abb49(13)+abb49(40)
      abb49(85)=abb49(85)*abb49(15)
      abb49(62)=abb49(85)+abb49(62)
      abb49(62)=abb49(62)*abb49(23)
      abb49(85)=8.0_ki*spak1k2
      abb49(86)=-abb49(11)*abb49(85)
      abb49(87)=es12*abb49(14)
      abb49(80)=abb49(80)+abb49(61)
      abb49(80)=abb49(80)*abb49(57)
      abb49(61)=abb49(80)+abb49(72)+abb49(87)-abb49(61)
      abb49(61)=spak1k2*abb49(61)
      abb49(72)=abb49(76)-abb49(36)
      abb49(80)=-abb49(72)*abb49(44)
      abb49(82)=-abb49(13)*abb49(82)
      abb49(61)=abb49(82)+abb49(80)+abb49(61)
      abb49(61)=2.0_ki*abb49(61)
      abb49(42)=abb49(42)*abb49(23)
      abb49(80)=abb49(23)*abb49(14)
      abb49(82)=abb49(57)*abb49(80)
      abb49(85)=abb49(13)*abb49(85)
      abb49(87)=2.0_ki*spak1k2
      abb49(14)=abb49(14)*abb49(87)
      abb49(47)=abb49(72)*abb49(47)
      abb49(88)=2.0_ki*abb49(47)
      abb49(89)=-abb49(15)*abb49(88)
      abb49(47)=-4.0_ki*abb49(47)
      abb49(90)=abb49(8)*abb49(26)
      abb49(91)=abb49(90)*spak1k5
      abb49(92)=abb49(91)*abb49(34)
      abb49(7)=spak1k5**2*abb49(8)*abb49(7)
      abb49(92)=abb49(92)-abb49(7)
      abb49(93)=abb49(15)*abb49(92)
      abb49(46)=-spak1k5*abb49(24)*abb49(46)
      abb49(46)=abb49(46)+abb49(93)
      abb49(46)=2.0_ki*abb49(46)
      abb49(93)=abb49(90)*abb49(34)
      abb49(94)=abb49(48)*abb49(93)
      abb49(7)=4.0_ki*abb49(7)
      abb49(95)=-abb49(57)*abb49(7)
      abb49(96)=-abb49(13)*abb49(24)*abb49(48)
      abb49(97)=abb49(13)*spak1k5
      abb49(98)=abb49(24)*abb49(97)
      abb49(92)=abb49(98)-abb49(92)
      abb49(92)=2.0_ki*abb49(92)
      abb49(21)=-spak1k5*abb49(21)
      abb49(98)=abb49(27)*abb49(15)
      abb49(99)=abb49(98)*abb49(34)
      abb49(45)=abb49(45)*abb49(58)
      abb49(44)=abb49(91)*abb49(44)
      abb49(21)=abb49(44)-abb49(99)+abb49(21)+abb49(45)
      abb49(21)=2.0_ki*abb49(21)
      abb49(34)=abb49(34)*abb49(27)
      abb49(44)=abb49(97)-abb49(34)
      abb49(44)=4.0_ki*abb49(44)
      abb49(13)=-abb49(13)*abb49(60)
      abb49(13)=abb49(13)+abb49(34)
      abb49(13)=2.0_ki*abb49(13)
      abb49(45)=2.0_ki*abb49(12)
      abb49(100)=spbl4k2*abb49(45)*spak1k5
      abb49(101)=abb49(15)*abb49(100)
      abb49(102)=spbl4k2*abb49(12)*abb49(48)
      abb49(9)=abb49(9)*abb49(26)
      abb49(26)=abb49(9)*abb49(15)
      abb49(103)=-abb49(26)*abb49(22)
      abb49(104)=abb49(9)*abb49(16)
      abb49(103)=abb49(104)+abb49(103)
      abb49(103)=6.0_ki*spak1k5*abb49(103)
      abb49(73)=abb49(73)*abb49(9)
      abb49(104)=-abb49(73)*abb49(60)
      abb49(105)=abb49(45)+abb49(27)
      abb49(105)=2.0_ki*abb49(105)*abb49(16)
      abb49(106)=-4.0_ki*abb49(65)
      abb49(107)=abb49(77)-abb49(50)+abb49(10)
      abb49(107)=2.0_ki*abb49(107)
      abb49(108)=3.0_ki*abb49(28)
      abb49(19)=abb49(108)*abb49(19)
      abb49(109)=abb49(12)-3.0_ki*abb49(27)
      abb49(109)=abb49(109)*abb49(16)
      abb49(110)=abb49(12)-5.0_ki*abb49(27)
      abb49(110)=es51*abb49(110)*abb49(15)
      abb49(111)=2.0_ki*abb49(27)
      abb49(112)=abb49(111)-abb49(12)
      abb49(113)=abb49(112)*abb49(15)
      abb49(114)=es34*abb49(113)
      abb49(109)=abb49(114)+abb49(110)-abb49(19)+abb49(109)
      abb49(109)=es34*abb49(109)
      abb49(110)=2.0_ki*abb49(36)
      abb49(114)=-abb49(110)+3.0_ki*abb49(98)
      abb49(114)=abb49(114)*es12
      abb49(115)=abb49(98)-abb49(36)
      abb49(116)=-es51*abb49(115)
      abb49(116)=-abb49(114)+abb49(116)
      abb49(116)=es51*abb49(116)
      abb49(117)=-es34+2.0_ki*es51
      abb49(115)=abb49(115)*abb49(117)
      abb49(114)=abb49(114)+abb49(115)
      abb49(114)=es34*abb49(114)
      abb49(98)=-2.0_ki*abb49(98)+abb49(36)
      abb49(115)=es12**2
      abb49(98)=abb49(98)*abb49(115)
      abb49(98)=abb49(114)+abb49(98)+abb49(116)
      abb49(98)=abb49(98)*abb49(57)
      abb49(54)=3.0_ki*abb49(54)+abb49(19)+4.0_ki*abb49(52)
      abb49(54)=es51*abb49(54)
      abb49(114)=spbk5l4*spal4k5
      abb49(51)=abb49(51)*abb49(114)
      abb49(116)=-abb49(39)*abb49(22)
      abb49(117)=abb49(38)*abb49(16)
      abb49(116)=abb49(117)+abb49(116)
      abb49(117)=spak2l4*spbl4k2
      abb49(116)=abb49(116)*abb49(117)
      abb49(19)=abb49(19)+abb49(52)
      abb49(19)=es12*abb49(19)
      abb49(52)=spbl4k1*spal4k5
      abb49(118)=abb49(52)*spak1k2
      abb49(63)=abb49(63)*abb49(118)
      abb49(119)=spbk5k1*spak2k5
      abb49(99)=-abb49(119)*abb49(99)
      abb49(19)=abb49(99)+abb49(63)+abb49(116)+abb49(51)+abb49(98)+abb49(109)+a&
      &bb49(19)+abb49(54)
      abb49(19)=2.0_ki*abb49(19)
      abb49(51)=-4.0_ki*abb49(72)*abb49(117)
      abb49(54)=8.0_ki*abb49(36)
      abb49(63)=abb49(75)+abb49(36)
      abb49(98)=abb49(71)-abb49(63)
      abb49(98)=es51*abb49(98)
      abb49(99)=-abb49(74)+2.0_ki*abb49(75)
      abb49(109)=-abb49(71)+abb49(36)+abb49(99)
      abb49(109)=es34*abb49(109)
      abb49(70)=abb49(109)+abb49(70)+abb49(98)
      abb49(70)=4.0_ki*abb49(70)
      abb49(98)=abb49(71)+2.0_ki*abb49(30)
      abb49(109)=abb49(29)-2.0_ki*abb49(32)-abb49(98)
      abb49(109)=es34*abb49(109)
      abb49(116)=abb49(71)+abb49(30)
      abb49(116)=es12*abb49(116)
      abb49(98)=abb49(32)+abb49(98)
      abb49(98)=es51*abb49(98)
      abb49(98)=abb49(109)+abb49(116)+abb49(98)
      abb49(98)=abb49(98)*abb49(57)
      abb49(109)=3.0_ki*abb49(71)
      abb49(64)=-abb49(109)+abb49(64)
      abb49(64)=es51*abb49(64)
      abb49(116)=abb49(114)*abb49(65)
      abb49(120)=abb49(119)*abb49(34)
      abb49(116)=abb49(120)+abb49(116)
      abb49(16)=-abb49(16)*abb49(108)
      abb49(108)=abb49(109)-abb49(10)
      abb49(108)=es34*abb49(108)
      abb49(16)=abb49(98)+abb49(108)+abb49(16)+abb49(64)+abb49(116)
      abb49(16)=4.0_ki*abb49(16)
      abb49(63)=-8.0_ki*abb49(63)
      abb49(64)=8.0_ki*abb49(33)
      abb49(98)=abb49(33)*abb49(57)
      abb49(108)=abb49(75)+abb49(98)
      abb49(108)=8.0_ki*abb49(108)
      abb49(109)=abb49(110)-abb49(113)
      abb49(99)=-abb49(109)-abb49(99)
      abb49(99)=es34*abb49(99)
      abb49(36)=-abb49(113)+abb49(36)
      abb49(36)=es12*abb49(36)
      abb49(75)=abb49(75)+abb49(109)
      abb49(75)=es51*abb49(75)
      abb49(36)=abb49(99)+abb49(36)+abb49(75)
      abb49(36)=4.0_ki*abb49(36)
      abb49(22)=abb49(22)*abb49(38)
      abb49(22)=abb49(22)-abb49(77)
      abb49(38)=8.0_ki*abb49(22)
      abb49(75)=16.0_ki*abb49(65)
      abb49(77)=2.0_ki*abb49(71)
      abb49(30)=-abb49(77)+abb49(30)
      abb49(30)=es12*abb49(30)
      abb49(99)=es12*abb49(112)
      abb49(99)=abb49(10)-abb49(77)+abb49(99)
      abb49(99)=es51*abb49(99)
      abb49(45)=abb49(45)-abb49(27)
      abb49(109)=abb49(45)*es12
      abb49(32)=abb49(109)-abb49(32)
      abb49(74)=-abb49(74)+abb49(77)+abb49(32)
      abb49(74)=es34*abb49(74)
      abb49(59)=3.0_ki*abb49(59)
      abb49(50)=abb49(50)-abb49(59)-2.0_ki*abb49(10)
      abb49(50)=es34*abb49(50)
      abb49(10)=abb49(59)+abb49(10)
      abb49(10)=es51*abb49(10)
      abb49(59)=abb49(115)*abb49(111)
      abb49(10)=abb49(50)+abb49(59)+abb49(10)
      abb49(10)=abb49(10)*abb49(57)
      abb49(22)=abb49(22)*abb49(117)
      abb49(50)=abb49(11)*abb49(118)
      abb49(10)=abb49(50)+abb49(22)+abb49(10)+abb49(74)+abb49(30)+abb49(99)+abb&
      &49(116)
      abb49(10)=2.0_ki*abb49(10)
      abb49(22)=-4.0_ki*abb49(76)
      abb49(30)=4.0_ki*abb49(33)
      abb49(50)=es51*abb49(45)
      abb49(31)=abb49(98)+abb49(50)+abb49(31)
      abb49(31)=4.0_ki*abb49(31)
      abb49(50)=8.0_ki*abb49(65)
      abb49(33)=2.0_ki*abb49(33)
      abb49(59)=-spak2l4*spbk5l4*abb49(72)
      abb49(39)=-spbk5k1*abb49(39)*abb49(87)
      abb49(39)=abb49(59)+abb49(39)
      abb49(39)=2.0_ki*abb49(39)
      abb49(23)=spbk5k1*abb49(23)*abb49(12)
      abb49(59)=spbl4k1*abb49(72)*abb49(87)
      abb49(15)=-abb49(45)*abb49(15)
      abb49(15)=abb49(15)+abb49(65)
      abb49(15)=abb49(15)*abb49(24)
      abb49(65)=abb49(26)-abb49(73)
      abb49(65)=spak1k5*abb49(65)
      abb49(53)=abb49(55)+abb49(53)
      abb49(8)=abb49(8)*abb49(53)
      abb49(53)=-es34*abb49(90)
      abb49(8)=abb49(53)+abb49(8)
      abb49(8)=abb49(8)*abb49(58)
      abb49(53)=-spak2k5*abb49(93)
      abb49(55)=abb49(52)*abb49(97)
      abb49(8)=abb49(55)+abb49(53)+abb49(15)+abb49(65)+abb49(8)
      abb49(8)=2.0_ki*abb49(8)
      abb49(15)=abb49(24)*abb49(12)
      abb49(15)=abb49(15)+abb49(91)
      abb49(53)=-4.0_ki*abb49(15)
      abb49(55)=abb49(90)+abb49(9)
      abb49(55)=abb49(55)*abb49(48)
      abb49(58)=abb49(9)*abb49(58)
      abb49(15)=abb49(58)+abb49(15)
      abb49(15)=4.0_ki*abb49(15)
      abb49(58)=4.0_ki*abb49(27)*abb49(24)
      abb49(24)=abb49(45)*abb49(24)
      abb49(24)=abb49(91)+abb49(24)
      abb49(24)=2.0_ki*abb49(24)
      abb49(45)=-spak1l4*abb49(90)
      abb49(65)=spal4k5*abb49(11)
      abb49(45)=abb49(45)+abb49(65)
      abb49(45)=2.0_ki*abb49(45)
      abb49(29)=-abb49(29)-abb49(32)
      abb49(29)=abb49(29)*abb49(57)
      abb49(32)=abb49(117)-abb49(114)
      abb49(32)=abb49(12)*abb49(32)
      abb49(29)=-6.0_ki*abb49(71)+abb49(29)+abb49(32)
      abb49(29)=2.0_ki*abb49(29)
      abb49(32)=8.0_ki*abb49(28)
      abb49(65)=-abb49(57)*abb49(32)
      abb49(28)=-4.0_ki*abb49(28)
      abb49(71)=-spak1k5*abb49(11)
      abb49(34)=abb49(71)+abb49(34)
      abb49(34)=2.0_ki*abb49(34)
      abb49(71)=-spak2k5*spbl4k2*abb49(27)
      abb49(12)=-spbl4k1*spak1k5*abb49(12)
      abb49(12)=abb49(71)+abb49(12)
      abb49(12)=2.0_ki*abb49(12)
      abb49(43)=abb49(43)+abb49(67)
      abb49(43)=abb49(43)*abb49(60)
      abb49(48)=abb49(48)*abb49(11)
      abb49(11)=-abb49(11)*abb49(60)
      abb49(40)=spak1k2*abb49(40)
      abb49(26)=-2.0_ki*spak2k5*abb49(26)
      abb49(9)=abb49(9)*spak2k5
      abb49(60)=4.0_ki*abb49(9)
      abb49(67)=abb49(111)*abb49(119)
      abb49(57)=-1.0_ki-abb49(57)
      abb49(9)=abb49(57)*abb49(9)
      abb49(27)=-abb49(27)*abb49(52)
      abb49(9)=abb49(9)+abb49(27)
      abb49(9)=2.0_ki*abb49(9)
      R2d49=0.0_ki
      rat2 = rat2 + R2d49
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='49' value='", &
          & R2d49, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd49h4_qp
