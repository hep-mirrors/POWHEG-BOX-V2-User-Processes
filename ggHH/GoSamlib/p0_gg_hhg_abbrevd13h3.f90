module     p0_gg_hhg_abbrevd13h3
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_globalsh3
   implicit none
   private
   complex(ki), dimension(107), public :: abb13
   complex(ki), public :: R2d13
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
      abb13(1)=sqrt2**(-1)
      abb13(2)=spak1k2**(-1)
      abb13(3)=spak2k5**(-1)
      abb13(4)=sqrt(mT**2)
      abb13(5)=es12**(-1)
      abb13(6)=spak2l4**(-1)
      abb13(7)=spbl4k2**(-1)
      abb13(8)=spak2l3**(-1)
      abb13(9)=spbl3k2**(-1)
      abb13(10)=c1-c2
      abb13(11)=gHT**2*i_*abb13(2)
      abb13(12)=abb13(10)*abb13(11)*abb13(3)
      abb13(13)=-abb13(1)*abb13(12)
      abb13(14)=abb13(13)*spbk5k1
      abb13(15)=-8.0_ki/3.0_ki*abb13(14)
      abb13(16)=spbk2k1*abb13(1)
      abb13(17)=abb13(10)*abb13(11)*abb13(16)*abb13(5)
      abb13(18)=abb13(3)*abb13(17)
      abb13(19)=abb13(18)*spbk5l3
      abb13(20)=spak2l3**2
      abb13(21)=abb13(19)*abb13(20)
      abb13(22)=abb13(4)**2
      abb13(23)=2.0_ki*abb13(22)
      abb13(24)=abb13(23)*abb13(21)
      abb13(25)=abb13(14)*abb13(22)
      abb13(26)=abb13(7)*abb13(6)
      abb13(27)=mH**2
      abb13(28)=abb13(26)*abb13(27)
      abb13(29)=abb13(28)*spak2l3
      abb13(30)=abb13(29)*abb13(25)
      abb13(31)=abb13(18)*spak2l4
      abb13(32)=abb13(31)*abb13(22)
      abb13(33)=-spbk5l4*spak2l3*abb13(32)
      abb13(24)=abb13(33)+abb13(24)+abb13(30)
      abb13(24)=spbl3k2*abb13(24)
      abb13(30)=abb13(3)**2
      abb13(33)=-abb13(30)*abb13(17)
      abb13(34)=abb13(33)*spak1k5
      abb13(35)=abb13(34)*spbl3k1
      abb13(20)=abb13(20)*spbk5l3
      abb13(36)=abb13(35)*abb13(20)
      abb13(12)=abb13(16)*abb13(12)
      abb13(37)=spbk5l3*spak2l3
      abb13(38)=abb13(12)*abb13(37)
      abb13(36)=-abb13(38)+4.0_ki*abb13(36)
      abb13(38)=2.0_ki*abb13(34)
      abb13(39)=abb13(38)*spak2l4
      abb13(40)=abb13(39)*spbl4k1
      abb13(41)=abb13(40)*abb13(37)
      abb13(42)=abb13(13)*spbk5l3
      abb13(43)=spal3l4*spbl4k1
      abb13(44)=abb13(42)*abb13(43)
      abb13(45)=-abb13(36)+abb13(41)+abb13(44)
      abb13(45)=abb13(22)*abb13(45)
      abb13(10)=-abb13(11)*abb13(10)
      abb13(11)=abb13(10)*abb13(30)
      abb13(30)=-abb13(1)*abb13(11)
      abb13(46)=abb13(29)*abb13(30)
      abb13(47)=abb13(46)*abb13(22)
      abb13(48)=abb13(27)*abb13(9)
      abb13(49)=abb13(30)*abb13(48)
      abb13(50)=abb13(23)*abb13(49)
      abb13(47)=abb13(47)-abb13(50)
      abb13(47)=abb13(47)*spbl3k1
      abb13(50)=abb13(14)*abb13(28)
      abb13(51)=abb13(48)*abb13(8)
      abb13(52)=abb13(14)*abb13(51)
      abb13(53)=abb13(52)-abb13(50)
      abb13(54)=-abb13(22)*abb13(53)
      abb13(47)=abb13(47)-abb13(54)
      abb13(54)=abb13(18)*spak2l3
      abb13(55)=abb13(54)*spbk5l3
      abb13(56)=abb13(55)*abb13(22)
      abb13(57)=-abb13(56)-abb13(47)
      abb13(57)=es34*abb13(57)
      abb13(58)=-abb13(56)+abb13(47)
      abb13(58)=es51*abb13(58)
      abb13(59)=abb13(38)*spbl3k1
      abb13(60)=abb13(22)*spak2l3
      abb13(61)=abb13(60)*abb13(59)
      abb13(62)=abb13(12)*abb13(22)
      abb13(61)=-abb13(62)+abb13(61)
      abb13(61)=spak2l4*abb13(61)
      abb13(63)=es51+es34
      abb13(64)=abb13(32)*abb13(63)
      abb13(61)=abb13(64)+abb13(61)
      abb13(61)=spbk5l4*abb13(61)
      abb13(64)=abb13(33)*spak2l4
      abb13(65)=abb13(64)*es34
      abb13(66)=abb13(64)*es51
      abb13(67)=abb13(65)+abb13(66)
      abb13(11)=-abb13(16)*abb13(11)
      abb13(16)=abb13(11)*spak2l4
      abb13(68)=abb13(16)+abb13(67)
      abb13(69)=abb13(68)*spbl4l3
      abb13(70)=-abb13(60)*abb13(69)
      abb13(71)=abb13(54)*spbl3k1
      abb13(72)=-abb13(17)*spbk5k1
      abb13(73)=abb13(71)-abb13(72)
      abb13(73)=abb13(73)*spbk5l4
      abb13(74)=abb13(54)*spbk5k1
      abb13(75)=abb13(74)*spbl4l3
      abb13(73)=abb13(73)+abb13(75)
      abb13(76)=spak1l4*abb13(22)*abb13(73)
      abb13(77)=2.0_ki*spbl3k1
      abb13(78)=abb13(77)*abb13(55)
      abb13(79)=abb13(72)*spbk5l3
      abb13(78)=abb13(78)-abb13(79)
      abb13(80)=-abb13(22)*abb13(78)
      abb13(81)=spbl4k1*spbk5l3
      abb13(82)=abb13(81)*abb13(32)
      abb13(80)=abb13(82)+abb13(80)
      abb13(80)=spak1l3*abb13(80)
      abb13(47)=es12*abb13(47)
      abb13(82)=abb13(28)*abb13(37)
      abb13(83)=abb13(82)*abb13(62)
      abb13(84)=-spbl4k2*abb13(37)*abb13(32)
      abb13(85)=2.0_ki*abb13(14)
      abb13(86)=-abb13(4)**4*abb13(85)
      abb13(24)=abb13(47)+abb13(24)+abb13(80)+abb13(84)+abb13(76)+abb13(70)+abb&
      &13(61)+abb13(58)+abb13(57)+abb13(83)+abb13(86)+abb13(45)
      abb13(24)=2.0_ki*abb13(24)
      abb13(45)=spak2l3*abb13(69)
      abb13(47)=abb13(82)*abb13(12)
      abb13(45)=-abb13(44)+abb13(45)-abb13(47)
      abb13(47)=es51-es34
      abb13(57)=abb13(47)+es12
      abb13(58)=abb13(51)*spak2l4
      abb13(61)=-spbl4k1*abb13(57)*abb13(58)*abb13(30)
      abb13(70)=spak1l4*abb13(75)
      abb13(75)=abb13(29)*abb13(14)
      abb13(76)=spbl3k2*abb13(75)
      abb13(61)=abb13(76)+abb13(70)+6.0_ki*abb13(25)-abb13(45)+abb13(61)
      abb13(61)=2.0_ki*abb13(61)
      abb13(70)=abb13(49)*abb13(77)
      abb13(70)=abb13(70)-abb13(52)
      abb13(76)=abb13(55)-abb13(70)
      abb13(76)=es34*abb13(76)
      abb13(80)=abb13(55)+abb13(70)
      abb13(80)=es51*abb13(80)
      abb13(83)=spak1l3*abb13(78)
      abb13(84)=2.0_ki*abb13(21)
      abb13(86)=-spbl3k2*abb13(84)
      abb13(70)=es12*abb13(70)
      abb13(70)=abb13(70)+abb13(86)+abb13(83)+abb13(80)+abb13(76)+2.0_ki*abb13(&
      &25)+abb13(36)
      abb13(70)=2.0_ki*abb13(70)
      abb13(76)=abb13(59)*spak2l3
      abb13(80)=-abb13(12)+abb13(76)
      abb13(80)=spak2l4*abb13(80)
      abb13(83)=abb13(63)*abb13(31)
      abb13(80)=abb13(83)+abb13(80)
      abb13(80)=abb13(80)*spbk5l4
      abb13(73)=abb13(73)*spak1l4
      abb13(83)=abb13(31)*spbl4k2
      abb13(86)=abb13(83)*abb13(37)
      abb13(41)=-abb13(80)-abb13(73)-abb13(41)+abb13(86)+abb13(45)
      abb13(45)=abb13(46)*spbl3k1
      abb13(45)=abb13(45)-abb13(50)
      abb13(45)=abb13(45)*abb13(57)
      abb13(73)=abb13(31)*spbk5l4
      abb13(80)=abb13(73)*spak2l3
      abb13(75)=abb13(80)-abb13(75)
      abb13(80)=-spbl3k2*abb13(75)
      abb13(86)=abb13(81)*abb13(31)
      abb13(87)=spak1l3*abb13(86)
      abb13(25)=abb13(80)+abb13(87)+4.0_ki*abb13(25)+abb13(45)-abb13(41)
      abb13(25)=2.0_ki*abb13(25)
      abb13(45)=8.0_ki*abb13(14)
      abb13(80)=abb13(38)*abb13(81)
      abb13(87)=2.0_ki*abb13(33)
      abb13(87)=-spbl4l3*es51*abb13(87)
      abb13(88)=-spbl4k2*abb13(19)
      abb13(80)=abb13(88)+abb13(87)+abb13(80)
      abb13(87)=abb13(48)*spak2l4
      abb13(80)=abb13(87)*abb13(80)
      abb13(88)=abb13(31)*abb13(51)
      abb13(89)=abb13(88)*es34
      abb13(90)=abb13(58)*abb13(12)
      abb13(89)=abb13(89)-abb13(90)
      abb13(91)=abb13(88)*es51
      abb13(92)=abb13(59)*abb13(87)
      abb13(93)=abb13(92)+abb13(89)+abb13(91)
      abb13(94)=abb13(27)*spak2l4
      abb13(95)=abb13(94)*abb13(18)
      abb13(96)=-abb13(95)+abb13(32)+abb13(93)
      abb13(96)=spbk5l4*abb13(96)
      abb13(97)=mH**4
      abb13(98)=abb13(9)*abb13(97)*abb13(26)
      abb13(99)=spbl3k1*abb13(30)*abb13(98)
      abb13(98)=abb13(8)*abb13(98)
      abb13(85)=abb13(85)*abb13(98)
      abb13(99)=-abb13(85)+3.0_ki*abb13(99)
      abb13(99)=abb13(99)*abb13(57)
      abb13(100)=abb13(72)*abb13(51)
      abb13(101)=abb13(18)*spbl3k1
      abb13(102)=abb13(101)*abb13(48)
      abb13(100)=abb13(100)-abb13(102)
      abb13(102)=-spbk5l4*abb13(100)
      abb13(103)=spbl4l3*spbk5k1
      abb13(104)=abb13(18)*abb13(48)*abb13(103)
      abb13(102)=abb13(102)+abb13(104)
      abb13(102)=spak1l4*abb13(102)
      abb13(104)=abb13(28)*abb13(78)
      abb13(81)=abb13(88)*abb13(81)
      abb13(81)=abb13(81)+abb13(104)
      abb13(81)=spak1l3*abb13(81)
      abb13(104)=abb13(52)*abb13(23)
      abb13(56)=3.0_ki*abb13(56)+abb13(104)
      abb13(104)=abb13(27)*abb13(23)
      abb13(104)=abb13(97)+abb13(104)
      abb13(104)=abb13(104)*abb13(14)
      abb13(97)=abb13(97)*abb13(12)
      abb13(105)=spbk5l3*abb13(9)*abb13(97)
      abb13(104)=abb13(105)+abb13(104)
      abb13(104)=abb13(104)*abb13(26)
      abb13(105)=abb13(20)*abb13(28)
      abb13(106)=abb13(59)*abb13(105)
      abb13(44)=abb13(51)*abb13(44)
      abb13(44)=abb13(81)+abb13(44)+abb13(102)+abb13(96)+abb13(106)+2.0_ki*abb1&
      &3(56)+abb13(104)+abb13(80)+abb13(99)
      abb13(44)=2.0_ki*abb13(44)
      abb13(56)=-8.0_ki*abb13(52)
      abb13(80)=-2.0_ki*abb13(50)-abb13(73)
      abb13(80)=4.0_ki*abb13(80)
      abb13(81)=-spbk5l4*abb13(88)
      abb13(81)=-abb13(85)+abb13(81)
      abb13(81)=4.0_ki*abb13(81)
      abb13(46)=-abb13(46)+2.0_ki*abb13(49)
      abb13(46)=abb13(46)*spbl3k1
      abb13(46)=abb13(46)-abb13(53)
      abb13(53)=-abb13(55)+abb13(46)
      abb13(53)=es34*abb13(53)
      abb13(85)=-abb13(55)-abb13(46)
      abb13(85)=es51*abb13(85)
      abb13(78)=abb13(86)-abb13(78)
      abb13(78)=spak1l3*abb13(78)
      abb13(75)=abb13(84)-abb13(75)
      abb13(75)=spbl3k2*abb13(75)
      abb13(46)=-es12*abb13(46)
      abb13(36)=abb13(46)+abb13(75)+abb13(78)+abb13(85)+abb13(53)-abb13(36)-abb&
      &13(41)
      abb13(36)=2.0_ki*abb13(36)
      abb13(14)=4.0_ki*abb13(14)
      abb13(41)=-abb13(50)+abb13(55)+2.0_ki*abb13(52)
      abb13(41)=2.0_ki*abb13(41)-abb13(73)
      abb13(41)=2.0_ki*abb13(41)
      abb13(46)=-spbl4l3*abb13(21)
      abb13(20)=abb13(38)*abb13(20)
      abb13(52)=spak1l3*abb13(55)
      abb13(49)=abb13(49)*abb13(57)
      abb13(20)=abb13(52)+abb13(20)+abb13(49)
      abb13(20)=spbl4l3*abb13(20)
      abb13(49)=abb13(13)*spbk5l4
      abb13(52)=-abb13(22)*abb13(49)
      abb13(20)=abb13(52)+abb13(20)
      abb13(52)=2.0_ki*abb13(49)
      abb13(53)=abb13(51)*abb13(52)
      abb13(57)=abb13(37)*spbl4l3
      abb13(73)=abb13(31)*abb13(57)
      abb13(75)=abb13(34)*spak2l4
      abb13(57)=-abb13(75)*abb13(57)
      abb13(78)=abb13(22)*abb13(42)
      abb13(57)=-3.0_ki*abb13(78)+abb13(57)
      abb13(78)=-spak1l4*spbl4l3*abb13(55)
      abb13(84)=abb13(13)*spbl3k2
      abb13(85)=-abb13(82)*abb13(84)
      abb13(57)=abb13(85)+2.0_ki*abb13(57)+abb13(78)
      abb13(42)=-2.0_ki*abb13(42)
      abb13(78)=-spak1l4*abb13(100)
      abb13(78)=abb13(78)-2.0_ki*abb13(95)+5.0_ki*abb13(32)+abb13(93)
      abb13(78)=spbl4k2*abb13(78)
      abb13(85)=abb13(18)*spak1l4
      abb13(86)=abb13(85)*abb13(103)
      abb13(50)=spbl3k2*abb13(50)
      abb13(50)=abb13(50)-abb13(69)+abb13(86)
      abb13(50)=spal3k5*abb13(50)
      abb13(62)=3.0_ki*abb13(62)
      abb13(69)=-abb13(27)*abb13(62)
      abb13(69)=abb13(97)+abb13(69)
      abb13(26)=abb13(69)*abb13(26)
      abb13(69)=abb13(12)*abb13(51)
      abb13(23)=abb13(23)*abb13(69)
      abb13(23)=abb13(26)-abb13(62)+abb13(23)
      abb13(26)=abb13(5)*spbk2k1**2
      abb13(62)=-abb13(26)*abb13(13)
      abb13(86)=-abb13(62)*abb13(82)
      abb13(93)=spbl3k1*abb13(33)*abb13(60)
      abb13(86)=abb13(86)+20.0_ki*abb13(93)
      abb13(86)=spak1k5*abb13(86)
      abb13(93)=abb13(33)*abb13(94)
      abb13(64)=abb13(64)*abb13(22)
      abb13(96)=abb13(93)-5.0_ki*abb13(64)
      abb13(97)=abb13(11)*abb13(58)
      abb13(96)=2.0_ki*abb13(96)+abb13(97)
      abb13(96)=spak1k5*abb13(96)
      abb13(99)=-abb13(75)*abb13(51)*abb13(47)
      abb13(96)=abb13(96)+abb13(99)
      abb13(96)=spbl4k1*abb13(96)
      abb13(99)=abb13(22)*abb13(101)
      abb13(95)=spbl4k1*abb13(8)*abb13(95)
      abb13(95)=4.0_ki*abb13(99)+abb13(95)
      abb13(95)=spak1l3*abb13(95)
      abb13(99)=6.0_ki*abb13(22)
      abb13(100)=abb13(99)*abb13(18)
      abb13(102)=es34*abb13(100)
      abb13(30)=-abb13(26)*abb13(30)
      abb13(103)=2.0_ki*spak1k5
      abb13(103)=-abb13(30)*abb13(103)*abb13(87)*spbl4l3
      abb13(104)=-spbl4k1*abb13(100)
      abb13(48)=abb13(48)*spbl4l3
      abb13(106)=-abb13(62)*abb13(48)
      abb13(104)=abb13(104)+abb13(106)
      abb13(104)=spak1l4*abb13(104)
      abb13(106)=spak1k5*abb13(19)
      abb13(27)=abb13(8)*abb13(13)*abb13(27)
      abb13(27)=abb13(27)+abb13(106)
      abb13(27)=abb13(27)*abb13(43)
      abb13(106)=abb13(54)*spbl3k2
      abb13(107)=abb13(22)*abb13(106)
      abb13(23)=abb13(50)-10.0_ki*abb13(107)+abb13(95)+abb13(78)+abb13(27)+abb1&
      &3(104)+abb13(103)+abb13(96)+abb13(102)+2.0_ki*abb13(23)+abb13(86)
      abb13(27)=abb13(101)*spak1l3
      abb13(50)=abb13(106)-abb13(27)-abb13(69)-abb13(76)
      abb13(50)=4.0_ki*abb13(50)
      abb13(40)=-abb13(40)+abb13(83)
      abb13(40)=2.0_ki*abb13(40)
      abb13(69)=-abb13(12)*abb13(98)
      abb13(76)=-abb13(29)*abb13(35)
      abb13(69)=abb13(76)-abb13(100)+abb13(69)
      abb13(76)=-spbl4k2*abb13(88)
      abb13(78)=abb13(28)*spak1l3
      abb13(86)=abb13(78)*abb13(18)
      abb13(95)=-abb13(77)*abb13(86)
      abb13(69)=abb13(95)+2.0_ki*abb13(69)+abb13(76)
      abb13(69)=2.0_ki*abb13(69)
      abb13(76)=abb13(22)*abb13(18)
      abb13(95)=24.0_ki*abb13(76)
      abb13(96)=-abb13(85)-3.0_ki*abb13(75)
      abb13(96)=spbl4k1*abb13(96)
      abb13(98)=-abb13(28)-1.0_ki+2.0_ki*abb13(51)
      abb13(98)=abb13(12)*abb13(98)
      abb13(100)=spak2l3*abb13(35)
      abb13(102)=es34*abb13(18)
      abb13(96)=abb13(102)+6.0_ki*abb13(100)+abb13(98)+abb13(96)
      abb13(27)=-6.0_ki*abb13(106)+4.0_ki*abb13(27)+2.0_ki*abb13(96)+3.0_ki*abb&
      &13(83)
      abb13(83)=8.0_ki*abb13(18)
      abb13(96)=spbl4l3*abb13(54)
      abb13(98)=abb13(18)*spak1l3
      abb13(100)=-spak2l3*abb13(38)
      abb13(98)=-abb13(98)+abb13(100)
      abb13(98)=spbl4l3*abb13(98)
      abb13(13)=spbl4k2*abb13(13)*abb13(51)
      abb13(13)=abb13(13)+abb13(98)
      abb13(98)=abb13(31)*spbl4l3
      abb13(100)=abb13(39)+abb13(85)
      abb13(100)=spbl4l3*abb13(100)
      abb13(84)=abb13(28)*abb13(84)
      abb13(84)=abb13(84)+abb13(100)
      abb13(63)=abb13(19)*abb13(63)
      abb13(59)=abb13(37)*abb13(59)
      abb13(100)=-spbl3k2*abb13(55)
      abb13(12)=-spbk5l3*abb13(12)
      abb13(12)=abb13(100)+abb13(12)+abb13(59)+abb13(63)
      abb13(12)=spal3l4*abb13(12)
      abb13(59)=abb13(51)*abb13(65)
      abb13(59)=abb13(59)+2.0_ki*abb13(97)-abb13(93)+abb13(64)
      abb13(59)=es34*abb13(59)
      abb13(63)=-abb13(51)*abb13(66)
      abb13(63)=abb13(63)+abb13(93)+abb13(64)
      abb13(63)=es51*abb13(63)
      abb13(64)=spbk5k2*abb13(92)
      abb13(65)=-abb13(11)*abb13(94)
      abb13(16)=abb13(22)*abb13(16)
      abb13(66)=-es12*abb13(97)
      abb13(12)=abb13(64)+abb13(66)+abb13(63)+abb13(59)+abb13(65)+abb13(16)+abb&
      &13(12)
      abb13(16)=-2.0_ki*abb13(68)
      abb13(59)=-abb13(51)*abb13(67)
      abb13(59)=-abb13(97)+abb13(59)
      abb13(59)=2.0_ki*abb13(59)
      abb13(35)=-spal3l4*abb13(35)
      abb13(30)=abb13(30)*spak1k5
      abb13(63)=-abb13(58)*abb13(30)
      abb13(35)=abb13(63)+abb13(35)
      abb13(63)=abb13(18)*spal3l4
      abb13(64)=spbl3k2*abb13(63)
      abb13(35)=2.0_ki*abb13(35)+abb13(64)
      abb13(64)=abb13(33)*es34
      abb13(64)=abb13(64)+abb13(11)
      abb13(65)=abb13(33)*es51
      abb13(66)=abb13(64)+abb13(65)
      abb13(67)=3.0_ki*abb13(66)
      abb13(60)=abb13(60)*abb13(67)
      abb13(67)=abb13(105)*abb13(30)
      abb13(92)=abb13(43)*abb13(34)
      abb13(93)=-abb13(37)*abb13(92)
      abb13(60)=abb13(93)+abb13(67)+abb13(60)
      abb13(33)=abb13(87)*abb13(33)
      abb13(67)=abb13(47)*abb13(33)
      abb13(11)=abb13(11)*abb13(87)
      abb13(67)=abb13(67)-abb13(11)
      abb13(93)=spal3l4*abb13(55)
      abb13(93)=abb13(93)-abb13(67)
      abb13(93)=spbl4k2*abb13(93)
      abb13(87)=spbk5k2*abb13(38)*abb13(87)
      abb13(94)=-spbl4k1*abb13(87)
      abb13(60)=abb13(94)+2.0_ki*abb13(60)+abb13(93)
      abb13(66)=2.0_ki*spak2l3*abb13(66)
      abb13(30)=-abb13(29)*abb13(30)
      abb13(30)=abb13(30)+abb13(92)
      abb13(63)=-spbl4k2*abb13(63)
      abb13(30)=2.0_ki*abb13(30)+abb13(63)
      abb13(63)=-abb13(37)*abb13(34)*abb13(99)
      abb13(75)=abb13(75)*spbk5l4
      abb13(92)=-abb13(22)*abb13(75)
      abb13(63)=abb13(63)+abb13(92)
      abb13(64)=abb13(65)-abb13(64)
      abb13(48)=abb13(64)*abb13(48)
      abb13(64)=-spbk5l4*abb13(76)
      abb13(48)=abb13(64)+abb13(48)
      abb13(48)=spak1l4*abb13(48)
      abb13(64)=-abb13(38)*abb13(105)
      abb13(65)=-abb13(55)*abb13(78)
      abb13(64)=abb13(64)+abb13(65)
      abb13(64)=spbl3k2*abb13(64)
      abb13(19)=abb13(19)*spak1l3
      abb13(65)=-abb13(99)*abb13(19)
      abb13(76)=-spbl4l3*abb13(87)
      abb13(48)=abb13(76)+abb13(64)+abb13(65)+2.0_ki*abb13(63)+abb13(48)
      abb13(63)=abb13(85)*spbk5l4
      abb13(39)=spbk5l4*abb13(39)
      abb13(39)=abb13(39)+abb13(63)
      abb13(39)=2.0_ki*abb13(39)
      abb13(64)=abb13(58)*abb13(38)
      abb13(65)=spbk5l4*abb13(64)
      abb13(76)=abb13(51)*abb13(63)
      abb13(65)=abb13(65)+abb13(76)
      abb13(65)=2.0_ki*abb13(65)
      abb13(37)=-abb13(37)*abb13(38)
      abb13(19)=abb13(19)-abb13(37)-abb13(75)
      abb13(19)=abb13(63)-2.0_ki*abb13(19)
      abb13(37)=abb13(51)*abb13(85)
      abb13(37)=abb13(64)+abb13(37)
      abb13(37)=spbl4k2*abb13(37)
      abb13(38)=abb13(38)*abb13(29)
      abb13(38)=abb13(38)+abb13(86)
      abb13(38)=spbl3k2*abb13(38)
      abb13(22)=24.0_ki*abb13(22)
      abb13(22)=abb13(34)*abb13(22)
      abb13(22)=abb13(38)+abb13(22)+abb13(37)
      abb13(34)=8.0_ki*abb13(34)
      abb13(37)=-abb13(91)+abb13(89)+abb13(32)
      abb13(37)=spbl4k1*abb13(37)
      abb13(10)=-abb13(82)*abb13(26)*abb13(10)*abb13(1)
      abb13(26)=abb13(99)*abb13(71)
      abb13(17)=-abb13(17)*abb13(43)*spbk5l3
      abb13(10)=abb13(17)+abb13(37)+abb13(10)+abb13(26)
      abb13(17)=abb13(31)*spbl4k1
      abb13(26)=-2.0_ki*abb13(17)
      abb13(37)=abb13(88)*spbl4k1
      abb13(38)=-2.0_ki*abb13(37)
      abb13(51)=abb13(54)*abb13(77)
      abb13(17)=abb13(51)-abb13(17)
      abb13(33)=abb13(33)*spbl3k1
      abb13(51)=abb13(88)*spbk5k1
      abb13(33)=abb13(33)-abb13(51)
      abb13(33)=-abb13(33)*abb13(47)
      abb13(47)=spbl3k1*abb13(55)
      abb13(47)=-abb13(79)+abb13(47)
      abb13(47)=spal3l4*abb13(47)
      abb13(32)=-abb13(32)+abb13(90)
      abb13(32)=spbk5k1*abb13(32)
      abb13(11)=spbl3k1*abb13(11)
      abb13(11)=abb13(47)+abb13(11)+abb13(32)+abb13(33)
      abb13(31)=abb13(31)*spbk5k1
      abb13(32)=2.0_ki*abb13(31)
      abb13(33)=2.0_ki*abb13(51)
      abb13(47)=-spal3l4*abb13(101)
      abb13(51)=-abb13(62)*abb13(58)
      abb13(47)=abb13(51)+abb13(47)
      abb13(51)=-abb13(99)*abb13(74)
      abb13(54)=abb13(62)*abb13(105)
      abb13(58)=spbl4k1*abb13(67)
      abb13(55)=-abb13(55)*abb13(43)
      abb13(51)=abb13(55)+abb13(58)+abb13(51)+abb13(54)
      abb13(54)=-2.0_ki*abb13(74)
      abb13(29)=-abb13(62)*abb13(29)
      abb13(18)=abb13(18)*abb13(43)
      abb13(18)=abb13(29)+abb13(18)
      abb13(29)=abb13(72)*abb13(82)
      abb13(21)=-spbl3k1*abb13(28)*abb13(21)
      abb13(21)=abb13(29)+abb13(21)
      abb13(28)=abb13(28)*abb13(71)
      abb13(28)=abb13(28)+abb13(37)
      R2d13=abb13(15)
      rat2 = rat2 + R2d13
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='13' value='", &
          & R2d13, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd13h3
