module p0_gg_hhg_abbrevd17h0_qp
   use p0_gg_hhg_config_qp, only: ki
   use p0_gg_hhg_globalsh0_qp
   implicit none
   private
   complex(ki), dimension(92), public :: abb17
   complex(ki), public :: R2d17
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
      abb17(1)=sqrt2**(-1)
      abb17(2)=es12**(-1)
      abb17(3)=spbk2k1**(-1)
      abb17(4)=spak2k5**(-1)
      abb17(5)=sqrt(mT**2)
      abb17(6)=spbk5k2**(-1)
      abb17(7)=spak2l3**(-1)
      abb17(8)=spbl3k2**(-1)
      abb17(9)=spak2l4**(-1)
      abb17(10)=spbl4k2**(-1)
      abb17(11)=c1-c2
      abb17(12)=gHT**2*i_*abb17(3)
      abb17(13)=abb17(4)*abb17(1)
      abb17(14)=abb17(11)*abb17(12)*abb17(13)*abb17(2)
      abb17(15)=spak1k2**2
      abb17(16)=-abb17(15)*abb17(14)
      abb17(17)=abb17(16)*spbk5k1
      abb17(18)=-10.0_ki/3.0_ki*abb17(17)
      abb17(14)=spak1k2*abb17(14)
      abb17(19)=abb17(14)*spbk5l3
      abb17(20)=abb17(6)*spbk5k1
      abb17(21)=abb17(20)*es51
      abb17(22)=abb17(21)*abb17(19)
      abb17(23)=abb17(20)*es34
      abb17(24)=abb17(23)*abb17(19)
      abb17(11)=abb17(11)*abb17(12)
      abb17(12)=abb17(11)*abb17(13)
      abb17(13)=spak1k2*abb17(12)
      abb17(25)=abb17(13)*abb17(20)
      abb17(26)=abb17(25)*spbk5l3
      abb17(22)=-abb17(24)+abb17(22)+abb17(26)
      abb17(24)=2.0_ki*spak1l3
      abb17(27)=-abb17(24)*abb17(22)
      abb17(28)=abb17(13)*spbk5l4
      abb17(29)=abb17(28)*spak2l4
      abb17(27)=abb17(27)-abb17(29)
      abb17(30)=abb17(5)**2
      abb17(27)=abb17(30)*abb17(27)
      abb17(15)=-abb17(15)*abb17(12)
      abb17(31)=abb17(8)*abb17(7)
      abb17(32)=mH**2
      abb17(33)=abb17(31)*abb17(32)
      abb17(34)=abb17(15)*abb17(33)
      abb17(35)=abb17(34)*spbk5k1
      abb17(36)=abb17(13)*spbk5l3
      abb17(37)=abb17(36)*spak2l3
      abb17(35)=abb17(35)-abb17(37)
      abb17(38)=abb17(30)*abb17(35)
      abb17(39)=abb17(5)**4*abb17(17)
      abb17(38)=abb17(39)+abb17(38)
      abb17(39)=abb17(17)*abb17(33)
      abb17(40)=abb17(39)*abb17(30)
      abb17(41)=abb17(19)*spak2l3
      abb17(42)=abb17(41)*abb17(30)
      abb17(43)=abb17(40)-abb17(42)
      abb17(44)=abb17(14)*abb17(30)
      abb17(45)=abb17(44)*spbk5l4
      abb17(46)=abb17(45)*spak2l4
      abb17(43)=-abb17(46)+2.0_ki*abb17(43)
      abb17(47)=es51*abb17(43)
      abb17(48)=abb17(17)*abb17(30)
      abb17(49)=abb17(10)*abb17(9)
      abb17(50)=abb17(49)*abb17(32)
      abb17(51)=abb17(48)*abb17(50)
      abb17(43)=-abb17(51)-abb17(43)
      abb17(43)=es34*abb17(43)
      abb17(46)=-abb17(46)+2.0_ki*abb17(51)
      abb17(51)=2.0_ki*abb17(20)
      abb17(52)=abb17(45)*abb17(51)
      abb17(53)=-spak1l4*abb17(52)
      abb17(53)=abb17(53)+abb17(46)
      abb17(53)=spbl3k2*spak2l3*abb17(53)
      abb17(40)=-abb17(42)+2.0_ki*abb17(40)
      abb17(54)=spak2l4*abb17(40)
      abb17(55)=abb17(19)*spak1l3
      abb17(56)=abb17(55)*abb17(51)
      abb17(57)=abb17(56)*spak2l4
      abb17(58)=-abb17(30)*abb17(57)
      abb17(54)=abb17(54)+abb17(58)
      abb17(54)=spbl4k2*abb17(54)
      abb17(58)=spbl4k1*spak2l4
      abb17(59)=-abb17(33)*abb17(58)
      abb17(60)=spbl3k1*spak2l3
      abb17(61)=-abb17(50)*abb17(60)
      abb17(59)=abb17(59)+abb17(61)
      abb17(61)=abb17(16)*abb17(30)
      abb17(59)=spbk5k2*abb17(61)*abb17(59)
      abb17(62)=abb17(32)*es51
      abb17(63)=abb17(48)*abb17(62)
      abb17(15)=abb17(15)*abb17(32)*spbk5k1
      abb17(64)=abb17(30)*abb17(15)
      abb17(63)=abb17(64)+abb17(63)
      abb17(63)=abb17(63)*abb17(49)
      abb17(23)=abb17(23)-abb17(21)
      abb17(64)=abb17(45)*abb17(23)
      abb17(65)=abb17(25)*spbk5l4
      abb17(66)=-abb17(30)*abb17(65)
      abb17(64)=abb17(66)+abb17(64)
      abb17(64)=spak1l4*abb17(64)
      abb17(66)=abb17(55)*abb17(30)
      abb17(67)=abb17(58)*abb17(66)
      abb17(68)=abb17(45)*spak1l4
      abb17(69)=abb17(60)*abb17(68)
      abb17(27)=abb17(59)+abb17(69)+abb17(67)+abb17(54)+abb17(53)+abb17(64)+abb&
      &17(43)+abb17(63)+abb17(47)+2.0_ki*abb17(38)+abb17(27)
      abb17(27)=2.0_ki*abb17(27)
      abb17(38)=abb17(14)*spbk5l4
      abb17(43)=abb17(38)*spak1l4
      abb17(47)=abb17(43)*abb17(51)
      abb17(53)=abb17(50)*abb17(17)
      abb17(54)=abb17(38)*spak2l4
      abb17(59)=-2.0_ki*abb17(53)+abb17(47)+abb17(54)
      abb17(59)=abb17(59)*spbl3k2
      abb17(63)=spak2l3*abb17(59)
      abb17(64)=abb17(50)*abb17(16)
      abb17(67)=abb17(64)*spbk5k2
      abb17(67)=abb17(67)-abb17(43)
      abb17(69)=abb17(60)*abb17(67)
      abb17(69)=-3.0_ki*abb17(48)+abb17(63)+abb17(69)
      abb17(69)=2.0_ki*abb17(69)
      abb17(70)=abb17(39)-abb17(41)
      abb17(71)=es34-es51
      abb17(72)=-abb17(70)*abb17(71)
      abb17(73)=-spak1l3*abb17(22)
      abb17(35)=abb17(73)+abb17(72)+abb17(35)
      abb17(35)=2.0_ki*abb17(35)
      abb17(53)=abb17(53)-abb17(54)
      abb17(72)=abb17(53)*es34
      abb17(73)=abb17(62)*abb17(17)
      abb17(15)=abb17(73)+abb17(15)
      abb17(15)=abb17(15)*abb17(49)
      abb17(73)=abb17(54)*es51
      abb17(38)=-abb17(38)*abb17(23)
      abb17(38)=abb17(38)+abb17(65)
      abb17(74)=abb17(38)*spak1l4
      abb17(15)=abb17(29)-abb17(15)+abb17(73)+abb17(74)+abb17(72)
      abb17(29)=2.0_ki*abb17(15)
      abb17(72)=4.0_ki*abb17(17)
      abb17(38)=abb17(33)*abb17(38)
      abb17(38)=-abb17(52)+abb17(38)
      abb17(38)=spak1l4*abb17(38)
      abb17(22)=-abb17(50)*abb17(22)
      abb17(73)=abb17(30)*abb17(51)*abb17(19)
      abb17(22)=abb17(73)+abb17(22)
      abb17(22)=spak1l3*abb17(22)
      abb17(73)=-abb17(71)*abb17(19)*abb17(6)
      abb17(36)=abb17(36)*abb17(6)
      abb17(73)=abb17(73)+abb17(36)
      abb17(74)=spal3l4*spbk5l4
      abb17(75)=abb17(73)*abb17(74)
      abb17(22)=-abb17(75)+abb17(22)+abb17(38)+abb17(40)-abb17(46)
      abb17(22)=2.0_ki*abb17(22)
      abb17(38)=-4.0_ki*abb17(70)
      abb17(28)=abb17(33)*abb17(28)
      abb17(28)=-2.0_ki*abb17(45)+abb17(28)
      abb17(28)=spak2l4*abb17(28)
      abb17(40)=abb17(54)*abb17(33)
      abb17(45)=abb17(50)*abb17(41)
      abb17(45)=-abb17(40)+abb17(45)
      abb17(45)=es34*abb17(45)
      abb17(46)=es51*abb17(40)
      abb17(62)=-abb17(41)*abb17(62)
      abb17(37)=-abb17(32)*abb17(37)
      abb17(37)=abb17(37)+abb17(62)
      abb17(37)=abb17(37)*abb17(49)
      abb17(28)=abb17(75)+abb17(45)+abb17(37)+abb17(46)+2.0_ki*abb17(42)+abb17(&
      &28)
      abb17(28)=2.0_ki*abb17(28)
      abb17(37)=-4.0_ki*abb17(41)
      abb17(39)=2.0_ki*abb17(39)
      abb17(45)=-abb17(39)+abb17(41)
      abb17(45)=spak2l4*abb17(45)
      abb17(45)=abb17(45)+abb17(57)
      abb17(45)=spbl4k2*abb17(45)
      abb17(46)=abb17(33)*abb17(16)
      abb17(57)=abb17(46)*abb17(58)
      abb17(62)=abb17(60)*abb17(64)
      abb17(57)=abb17(57)+abb17(62)
      abb17(57)=spbk5k2*abb17(57)
      abb17(62)=-abb17(55)*abb17(58)
      abb17(75)=-abb17(43)*abb17(60)
      abb17(15)=abb17(57)+abb17(75)+abb17(62)+abb17(45)+abb17(63)-4.0_ki*abb17(&
      &48)-abb17(15)
      abb17(15)=2.0_ki*abb17(15)
      abb17(17)=10.0_ki*abb17(17)
      abb17(45)=-abb17(56)+abb17(47)-abb17(70)+abb17(53)
      abb17(45)=2.0_ki*abb17(45)
      abb17(47)=-abb17(41)+abb17(54)
      abb17(47)=4.0_ki*abb17(47)
      abb17(48)=-abb17(46)*abb17(71)
      abb17(53)=-spak1l3*abb17(73)
      abb17(48)=abb17(53)+abb17(34)+abb17(48)+2.0_ki*abb17(61)
      abb17(48)=spbl4k1*abb17(48)
      abb17(53)=abb17(41)*abb17(6)
      abb17(56)=abb17(46)*abb17(51)
      abb17(53)=abb17(53)-abb17(56)
      abb17(53)=-abb17(53)*abb17(71)
      abb17(56)=abb17(61)*abb17(51)
      abb17(34)=-abb17(20)*abb17(34)
      abb17(34)=-abb17(56)+abb17(34)
      abb17(36)=spak2l3*abb17(36)
      abb17(11)=-spbk5l3*abb17(2)*abb17(1)*abb17(11)*spak1k2
      abb17(57)=abb17(51)*abb17(11)
      abb17(62)=-spak1l3*abb17(57)
      abb17(34)=abb17(62)+2.0_ki*abb17(34)+abb17(36)+abb17(53)
      abb17(34)=spbl4k2*abb17(34)
      abb17(34)=abb17(34)+abb17(48)
      abb17(36)=abb17(51)*spbl4k2
      abb17(48)=abb17(36)-spbl4k1
      abb17(53)=abb17(16)*abb17(48)
      abb17(62)=-spbk5l4*abb17(56)
      abb17(63)=spbk5l4*abb17(61)
      abb17(70)=abb17(51)*spbl3k2
      abb17(75)=abb17(70)-spbl3k1
      abb17(76)=2.0_ki*abb17(75)
      abb17(77)=abb17(61)*abb17(76)
      abb17(73)=2.0_ki*abb17(73)
      abb17(16)=-abb17(16)*abb17(75)
      abb17(56)=spbk5l3*abb17(56)
      abb17(61)=-spbk5l3*abb17(61)
      abb17(78)=-4.0_ki-3.0_ki*abb17(33)
      abb17(79)=abb17(13)*abb17(30)
      abb17(78)=abb17(79)*abb17(78)
      abb17(32)=abb17(32)*abb17(79)
      abb17(31)=abb17(31)*abb17(13)*mH**4
      abb17(79)=-es51*abb17(31)
      abb17(32)=3.0_ki*abb17(32)+abb17(79)
      abb17(32)=abb17(32)*abb17(49)
      abb17(31)=abb17(31)*abb17(49)
      abb17(49)=4.0_ki*abb17(44)+abb17(31)
      abb17(49)=es34*abb17(49)
      abb17(32)=abb17(49)+abb17(78)+abb17(32)
      abb17(49)=spbl3k1*abb17(67)
      abb17(49)=abb17(59)+abb17(49)
      abb17(49)=spal3k5*abb17(49)
      abb17(59)=abb17(12)*abb17(6)
      abb17(67)=spak1l4*abb17(59)*abb17(33)*spbk5l4
      abb17(59)=spak1l3*spbk5l3*abb17(59)*abb17(50)
      abb17(59)=abb17(67)+abb17(59)
      abb17(67)=abb17(71)*abb17(59)
      abb17(78)=abb17(44)*spak2l3
      abb17(79)=16.0_ki*abb17(44)
      abb17(80)=abb17(79)*abb17(20)
      abb17(81)=spak1l3*abb17(80)
      abb17(78)=7.0_ki*abb17(78)+abb17(81)
      abb17(78)=spbl3k2*abb17(78)
      abb17(81)=abb17(44)*spak2l4
      abb17(80)=-spak1l4*abb17(80)
      abb17(80)=-7.0_ki*abb17(81)+abb17(80)
      abb17(80)=spbl4k2*abb17(80)
      abb17(59)=-2.0_ki*abb17(31)-abb17(59)
      abb17(59)=es12*abb17(59)
      abb17(81)=8.0_ki*abb17(44)
      abb17(82)=spbl4k1*spak1l4
      abb17(83)=-spbl3k1*spak1l3
      abb17(82)=abb17(83)+abb17(82)
      abb17(82)=abb17(81)*abb17(82)
      abb17(83)=-es51*abb17(44)
      abb17(32)=abb17(59)+abb17(49)+abb17(80)+abb17(78)+abb17(83)+abb17(82)+abb&
      &17(67)+2.0_ki*abb17(32)
      abb17(49)=abb17(14)*es34
      abb17(49)=abb17(49)-abb17(13)
      abb17(59)=abb17(14)*es51
      abb17(67)=-abb17(59)+2.0_ki*abb17(49)
      abb17(67)=2.0_ki*abb17(67)
      abb17(19)=abb17(19)*spal3k5
      abb17(78)=abb17(33)*abb17(59)
      abb17(31)=abb17(19)-4.0_ki*abb17(31)-abb17(79)+abb17(78)
      abb17(31)=2.0_ki*abb17(31)
      abb17(78)=-abb17(59)+abb17(49)
      abb17(78)=abb17(33)*abb17(78)
      abb17(78)=abb17(81)+abb17(78)
      abb17(78)=2.0_ki*abb17(78)-abb17(19)
      abb17(78)=2.0_ki*abb17(78)
      abb17(79)=abb17(50)-abb17(33)
      abb17(13)=abb17(13)*abb17(79)
      abb17(79)=abb17(14)*spak2l3
      abb17(80)=spbl3k2*abb17(79)
      abb17(82)=abb17(14)*spak2l4
      abb17(83)=-spbl4k2*abb17(82)
      abb17(13)=abb17(83)+abb17(80)-abb17(59)+abb17(13)
      abb17(80)=abb17(79)*spbk5k2
      abb17(83)=abb17(14)*spak1l3
      abb17(84)=abb17(83)*spbk5k1
      abb17(80)=abb17(80)+abb17(84)
      abb17(84)=2.0_ki*abb17(80)
      abb17(85)=abb17(51)*abb17(83)
      abb17(85)=abb17(79)+abb17(85)
      abb17(85)=spbl4k2*abb17(85)
      abb17(83)=-spbl4k1*abb17(83)
      abb17(83)=abb17(85)+abb17(83)
      abb17(83)=2.0_ki*abb17(83)
      abb17(85)=-2.0_ki*abb17(46)*abb17(48)
      abb17(49)=-abb17(59)-abb17(49)
      abb17(49)=spbl3k2*abb17(6)*abb17(49)
      abb17(59)=-spak1k5*spbl3k1*abb17(14)
      abb17(49)=abb17(49)+abb17(59)
      abb17(49)=2.0_ki*abb17(49)
      abb17(59)=abb17(14)*spak1l4
      abb17(86)=abb17(51)*abb17(59)
      abb17(86)=abb17(82)+abb17(86)
      abb17(86)=spbl3k2*abb17(86)
      abb17(87)=-spbl3k1*abb17(59)
      abb17(86)=abb17(86)+abb17(87)
      abb17(86)=2.0_ki*abb17(86)
      abb17(76)=-abb17(64)*abb17(76)
      abb17(87)=abb17(12)*abb17(33)
      abb17(87)=2.0_ki*abb17(87)
      abb17(88)=-spak1k5*abb17(87)
      abb17(89)=abb17(44)*spbk5k1
      abb17(90)=2.0_ki*spak1l4
      abb17(90)=abb17(89)*abb17(90)
      abb17(91)=abb17(44)*spbk5k2
      abb17(92)=spak2l4*abb17(91)
      abb17(90)=abb17(90)+abb17(92)
      abb17(59)=-spbk5k1*abb17(59)
      abb17(92)=-spbk5k2*abb17(82)
      abb17(59)=abb17(59)+abb17(92)
      abb17(87)=-spak1l4*abb17(87)
      abb17(92)=-abb17(89)*abb17(24)
      abb17(91)=-spak2l3*abb17(91)
      abb17(91)=abb17(92)+abb17(91)
      abb17(12)=-abb17(12)*abb17(50)*abb17(24)
      abb17(24)=abb17(68)-abb17(66)
      abb17(46)=-abb17(46)+abb17(64)
      abb17(46)=spbk5k2*abb17(46)
      abb17(43)=abb17(46)-abb17(43)+abb17(55)
      abb17(46)=-spak2l3*abb17(70)
      abb17(36)=spak2l4*abb17(36)
      abb17(23)=abb17(60)-abb17(58)+abb17(36)+abb17(46)+abb17(23)
      abb17(23)=abb17(44)*abb17(23)
      abb17(30)=-abb17(30)*abb17(25)
      abb17(23)=abb17(30)+abb17(23)
      abb17(14)=abb17(14)*abb17(20)
      abb17(30)=-abb17(14)*abb17(71)
      abb17(30)=abb17(30)+abb17(25)
      abb17(36)=-2.0_ki*abb17(30)
      abb17(14)=-abb17(71)*abb17(14)*abb17(33)
      abb17(25)=abb17(25)*abb17(33)
      abb17(14)=abb17(25)+abb17(14)
      abb17(25)=-2.0_ki*abb17(14)
      abb17(44)=abb17(79)*abb17(75)
      abb17(46)=-abb17(82)*abb17(48)
      abb17(30)=abb17(46)+abb17(44)-abb17(30)
      abb17(44)=-spak2l4*abb17(89)
      abb17(46)=spak2l3*abb17(89)
      abb17(33)=-abb17(33)*abb17(65)
      abb17(33)=abb17(52)+abb17(33)
      abb17(33)=spak2l4*abb17(33)
      abb17(48)=abb17(20)*abb17(40)
      abb17(52)=abb17(41)*abb17(20)
      abb17(55)=-abb17(50)*abb17(52)
      abb17(48)=abb17(48)+abb17(55)
      abb17(48)=es34*abb17(48)
      abb17(42)=-abb17(51)*abb17(42)
      abb17(40)=-abb17(21)*abb17(40)
      abb17(21)=abb17(41)*abb17(21)
      abb17(26)=spak2l3*abb17(26)
      abb17(21)=abb17(26)+abb17(21)
      abb17(21)=abb17(21)*abb17(50)
      abb17(11)=abb17(20)*abb17(11)*abb17(74)
      abb17(11)=abb17(11)+abb17(48)+abb17(21)+abb17(40)+abb17(42)+abb17(33)
      abb17(11)=2.0_ki*abb17(11)
      abb17(21)=4.0_ki*abb17(52)
      abb17(26)=-abb17(20)*abb17(54)
      abb17(26)=abb17(52)+abb17(26)
      abb17(26)=4.0_ki*abb17(26)
      abb17(33)=-abb17(20)*abb17(81)
      abb17(14)=abb17(33)+abb17(14)
      abb17(19)=abb17(20)*abb17(19)
      abb17(14)=2.0_ki*abb17(14)+abb17(19)
      abb17(14)=2.0_ki*abb17(14)
      R2d17=abb17(18)
      rat2 = rat2 + R2d17
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='17' value='", &
          & R2d17, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd17h0_qp
