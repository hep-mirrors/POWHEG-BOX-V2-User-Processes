module     p0_gg_hhg_abbrevd61h4
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_globalsh4
   implicit none
   private
   complex(ki), dimension(163), public :: abb61
   complex(ki), public :: R2d61
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
      abb61(1)=sqrt(mT**2)
      abb61(2)=sqrt2**(-1)
      abb61(3)=spbk5k2**(-1)
      abb61(4)=spbk2k1**(-1)
      abb61(5)=spak2l4**(-1)
      abb61(6)=spbl4k2**(-1)
      abb61(7)=spak2l3**(-1)
      abb61(8)=spbl3k2**(-1)
      abb61(9)=abb61(8)*abb61(7)
      abb61(10)=2.0_ki*abb61(9)
      abb61(11)=abb61(5)*abb61(6)
      abb61(12)=abb61(10)+abb61(11)
      abb61(13)=abb61(12)*es12
      abb61(14)=spbl3k2*spak2l3
      abb61(15)=abb61(14)*abb61(11)
      abb61(16)=abb61(15)+1.0_ki
      abb61(17)=abb61(13)-abb61(16)
      abb61(18)=es51-es34
      abb61(17)=abb61(18)*abb61(17)
      abb61(19)=spak2l4*spbl4k2
      abb61(20)=abb61(19)*abb61(9)
      abb61(21)=abb61(20)+1.0_ki
      abb61(22)=abb61(21)*es12
      abb61(17)=abb61(17)+abb61(22)
      abb61(23)=abb61(1)**2
      abb61(24)=abb61(23)*spak1k5
      abb61(25)=mH**2
      abb61(17)=abb61(17)*abb61(24)*abb61(25)
      abb61(26)=abb61(18)-es12
      abb61(27)=abb61(26)+abb61(19)
      abb61(28)=2.0_ki*abb61(14)
      abb61(29)=abb61(27)+abb61(28)
      abb61(30)=abb61(1)**4
      abb61(29)=abb61(29)*abb61(30)*spak1k5
      abb61(17)=abb61(17)-abb61(29)
      abb61(29)=c2-c1
      abb61(31)=abb61(29)*abb61(4)
      abb61(17)=-abb61(17)*abb61(31)
      abb61(32)=c1*spak1k5
      abb61(33)=abb61(32)*abb61(23)
      abb61(34)=abb61(24)*c2
      abb61(35)=abb61(34)-abb61(33)
      abb61(36)=spak2l4*spbl4l3
      abb61(37)=abb61(36)*spak1l3
      abb61(38)=-abb61(37)*abb61(35)
      abb61(17)=abb61(17)+abb61(38)
      abb61(38)=gHT**2
      abb61(39)=abb61(38)*i_
      abb61(17)=abb61(17)*abb61(39)
      abb61(40)=spbl3k2*spal3l4
      abb61(41)=abb61(40)*spbk5l4
      abb61(42)=-abb61(41)*abb61(18)
      abb61(43)=abb61(42)*abb61(4)
      abb61(44)=spak1l3*spbk5l3
      abb61(45)=spbk5l4*spak1l4
      abb61(46)=abb61(45)+2.0_ki*abb61(44)
      abb61(47)=-abb61(18)*abb61(46)
      abb61(47)=abb61(43)+abb61(47)
      abb61(48)=abb61(3)*abb61(39)
      abb61(35)=abb61(48)*abb61(35)*abb61(47)
      abb61(17)=abb61(17)+abb61(35)
      abb61(35)=abb61(2)*abb61(3)
      abb61(47)=2.0_ki*abb61(35)
      abb61(17)=abb61(17)*abb61(47)
      abb61(49)=abb61(4)*abb61(39)
      abb61(50)=abb61(49)*abb61(35)
      abb61(51)=4.0_ki*abb61(50)
      abb61(52)=abb61(19)+abb61(14)
      abb61(53)=-es12-abb61(52)
      abb61(53)=abb61(53)*abb61(33)*abb61(51)
      abb61(54)=-abb61(14)+abb61(26)
      abb61(54)=abb61(54)*abb61(24)
      abb61(55)=abb61(25)*spak1k5
      abb61(56)=abb61(18)*abb61(55)
      abb61(57)=abb61(9)*es12
      abb61(58)=abb61(57)*abb61(56)
      abb61(54)=abb61(54)+abb61(58)
      abb61(54)=c1*abb61(54)
      abb61(58)=-es12*abb61(34)
      abb61(54)=abb61(54)+abb61(58)
      abb61(54)=abb61(54)*abb61(49)
      abb61(58)=abb61(48)*abb61(32)
      abb61(59)=abb61(58)*abb61(44)*abb61(18)
      abb61(54)=abb61(54)+abb61(59)
      abb61(59)=4.0_ki*abb61(35)
      abb61(54)=abb61(54)*abb61(59)
      abb61(60)=abb61(27)*abb61(24)
      abb61(61)=abb61(11)*es12
      abb61(62)=-abb61(61)*abb61(56)
      abb61(60)=abb61(60)+abb61(62)
      abb61(60)=c1*abb61(60)
      abb61(62)=-abb61(18)*abb61(34)
      abb61(60)=abb61(60)+abb61(62)
      abb61(60)=abb61(60)*abb61(49)
      abb61(62)=-abb61(45)*abb61(18)
      abb61(58)=abb61(62)*abb61(58)
      abb61(58)=abb61(60)+abb61(58)
      abb61(58)=abb61(58)*abb61(59)
      abb61(60)=abb61(11)+abb61(9)
      abb61(63)=abb61(60)*es51
      abb61(64)=abb61(60)*es34
      abb61(65)=-abb61(21)-abb61(63)+abb61(64)+abb61(57)
      abb61(66)=-abb61(65)*abb61(25)*abb61(33)
      abb61(67)=abb61(9)*es34
      abb61(68)=abb61(9)*es51
      abb61(69)=abb61(67)-abb61(68)
      abb61(70)=abb61(69)+abb61(16)
      abb61(71)=abb61(25)*c2
      abb61(72)=abb61(70)*abb61(24)*abb61(71)
      abb61(66)=abb61(66)+abb61(72)
      abb61(66)=abb61(66)*abb61(49)
      abb61(72)=abb61(45)*abb61(9)
      abb61(73)=abb61(44)*abb61(11)
      abb61(72)=abb61(72)-abb61(73)
      abb61(73)=-abb61(72)*abb61(56)
      abb61(74)=abb61(44)+abb61(45)
      abb61(75)=abb61(74)*abb61(24)
      abb61(73)=abb61(75)+abb61(73)
      abb61(73)=c1*abb61(73)
      abb61(75)=abb61(41)*abb61(4)
      abb61(76)=-abb61(75)+abb61(45)
      abb61(76)=abb61(34)*abb61(76)
      abb61(73)=abb61(73)+abb61(76)
      abb61(73)=abb61(73)*abb61(48)
      abb61(66)=abb61(66)+abb61(73)
      abb61(66)=abb61(66)*abb61(59)
      abb61(73)=abb61(18)*abb61(16)
      abb61(76)=-abb61(22)+abb61(73)
      abb61(76)=abb61(76)*abb61(55)
      abb61(77)=2.0_ki*abb61(19)+3.0_ki*abb61(14)
      abb61(78)=3.0_ki*es51
      abb61(79)=-abb61(78)+3.0_ki*es34
      abb61(80)=abb61(79)+es12
      abb61(81)=-abb61(80)+abb61(77)
      abb61(81)=abb61(81)*abb61(24)
      abb61(76)=abb61(81)+abb61(76)
      abb61(76)=c2*abb61(76)
      abb61(81)=-abb61(14)+es12
      abb61(81)=abb61(81)*abb61(33)
      abb61(76)=abb61(81)+abb61(76)
      abb61(76)=abb61(4)*abb61(76)
      abb61(81)=c2*spak1k5
      abb61(82)=-abb61(81)*abb61(37)
      abb61(76)=abb61(82)+abb61(76)
      abb61(76)=abb61(76)*abb61(39)
      abb61(82)=abb61(49)*abb61(3)
      abb61(83)=abb61(82)*abb61(81)
      abb61(42)=abb61(42)*abb61(83)
      abb61(42)=abb61(76)+abb61(42)
      abb61(42)=abb61(42)*abb61(59)
      abb61(76)=abb61(32)*abb61(14)
      abb61(84)=8.0_ki*abb61(50)
      abb61(85)=-abb61(84)*abb61(76)
      abb61(86)=abb61(32)*abb61(19)
      abb61(87)=-abb61(26)*abb61(81)
      abb61(86)=abb61(86)+abb61(87)
      abb61(86)=abb61(86)*abb61(84)
      abb61(87)=abb61(32)*abb61(25)
      abb61(88)=abb61(21)*abb61(87)
      abb61(89)=abb61(57)+abb61(70)
      abb61(90)=abb61(81)*abb61(25)
      abb61(89)=abb61(89)*abb61(90)
      abb61(88)=abb61(88)+abb61(89)
      abb61(88)=abb61(88)*abb61(49)
      abb61(83)=abb61(83)*abb61(41)
      abb61(88)=abb61(88)-abb61(83)
      abb61(35)=8.0_ki*abb61(88)*abb61(35)
      abb61(88)=abb61(61)+abb61(16)
      abb61(88)=-abb61(88)*abb61(18)
      abb61(88)=abb61(88)+abb61(22)
      abb61(88)=abb61(88)*abb61(55)
      abb61(28)=abb61(28)*abb61(24)
      abb61(28)=abb61(88)-abb61(28)
      abb61(28)=abb61(28)*abb61(31)
      abb61(31)=abb61(81)-abb61(32)
      abb61(88)=abb61(37)*abb61(31)
      abb61(28)=abb61(28)+abb61(88)
      abb61(28)=abb61(28)*abb61(39)
      abb61(43)=-abb61(43)+abb61(62)
      abb61(43)=abb61(48)*abb61(31)*abb61(43)
      abb61(28)=abb61(28)+abb61(43)
      abb61(28)=abb61(28)*abb61(47)
      abb61(43)=abb61(18)-abb61(14)
      abb61(43)=abb61(43)*abb61(32)
      abb61(88)=abb61(81)*es12
      abb61(89)=-abb61(43)-abb61(88)
      abb61(89)=abb61(89)*abb61(51)
      abb61(91)=abb61(18)+abb61(19)
      abb61(92)=-abb61(91)*abb61(32)
      abb61(93)=2.0_ki*es12
      abb61(94)=-abb61(93)+abb61(18)
      abb61(94)=abb61(94)*abb61(81)
      abb61(92)=abb61(92)+abb61(94)
      abb61(92)=abb61(92)*abb61(51)
      abb61(65)=abb61(65)*abb61(87)
      abb61(60)=abb61(60)*es12
      abb61(70)=-abb61(60)-abb61(70)
      abb61(70)=abb61(70)*abb61(90)
      abb61(65)=abb61(65)+abb61(70)
      abb61(65)=abb61(65)*abb61(49)
      abb61(70)=abb61(44)+abb61(75)
      abb61(70)=abb61(48)*abb61(81)*abb61(70)
      abb61(65)=abb61(65)+abb61(70)
      abb61(65)=abb61(65)*abb61(59)
      abb61(27)=abb61(27)*abb61(81)
      abb61(27)=abb61(76)+abb61(27)
      abb61(27)=abb61(27)*abb61(51)
      abb61(70)=abb61(93)-abb61(91)
      abb61(70)=abb61(70)*abb61(81)
      abb61(43)=abb61(43)+abb61(70)
      abb61(50)=2.0_ki*abb61(50)
      abb61(43)=abb61(43)*abb61(50)
      abb61(70)=abb61(15)+abb61(20)+2.0_ki
      abb61(75)=abb61(70)*spak1k2
      abb61(76)=abb61(11)*spak1k2
      abb61(10)=spak1k2*abb61(10)
      abb61(10)=abb61(76)+abb61(10)
      abb61(10)=es12*abb61(10)
      abb61(10)=abb61(10)-abb61(75)
      abb61(91)=abb61(25)*abb61(23)
      abb61(10)=abb61(10)*abb61(91)
      abb61(93)=abb61(23)*spak1k2
      abb61(94)=-abb61(37)+abb61(93)
      abb61(94)=abb61(94)*abb61(23)
      abb61(10)=abb61(94)+abb61(10)
      abb61(10)=c1*abb61(10)
      abb61(94)=abb61(18)*abb61(76)
      abb61(95)=abb61(9)*spak1k2
      abb61(96)=abb61(95)+abb61(76)
      abb61(97)=-es12*abb61(96)
      abb61(97)=abb61(97)-abb61(94)
      abb61(97)=abb61(97)*abb61(91)
      abb61(30)=-spak1k2*abb61(30)
      abb61(30)=abb61(30)+abb61(97)
      abb61(30)=c2*abb61(30)
      abb61(10)=abb61(10)+abb61(30)
      abb61(10)=abb61(10)*abb61(49)
      abb61(30)=-es12*abb61(74)
      abb61(30)=abb61(30)+abb61(62)
      abb61(97)=abb61(23)*c2
      abb61(30)=abb61(30)*abb61(97)
      abb61(98)=es12*abb61(46)
      abb61(99)=abb61(41)*spak1k2
      abb61(98)=abb61(99)+abb61(98)
      abb61(100)=abb61(23)*c1
      abb61(98)=abb61(98)*abb61(100)
      abb61(30)=abb61(98)+abb61(30)
      abb61(30)=abb61(30)*abb61(82)
      abb61(10)=abb61(10)+abb61(30)
      abb61(10)=abb61(10)*abb61(47)
      abb61(30)=abb61(25)*spak1k2
      abb61(98)=abb61(57)*abb61(30)
      abb61(98)=abb61(93)+abb61(98)
      abb61(98)=c1*abb61(98)*abb61(49)
      abb61(101)=abb61(82)*c1
      abb61(102)=abb61(101)*es12
      abb61(103)=abb61(44)*abb61(102)
      abb61(98)=abb61(98)+abb61(103)
      abb61(98)=abb61(98)*abb61(59)
      abb61(103)=abb61(25)*c1
      abb61(104)=abb61(103)*es12
      abb61(105)=-abb61(76)*abb61(104)
      abb61(106)=-spak1k2*abb61(97)
      abb61(105)=abb61(105)+abb61(106)
      abb61(105)=abb61(105)*abb61(49)
      abb61(102)=-abb61(45)*abb61(102)
      abb61(102)=abb61(105)+abb61(102)
      abb61(102)=abb61(102)*abb61(59)
      abb61(105)=abb61(71)-abb61(103)
      abb61(96)=abb61(49)*abb61(105)*abb61(96)
      abb61(106)=-abb61(23)*abb61(96)
      abb61(107)=-abb61(72)*abb61(104)
      abb61(108)=-abb61(45)*abb61(97)
      abb61(107)=abb61(107)+abb61(108)
      abb61(107)=abb61(107)*abb61(82)
      abb61(106)=abb61(106)+abb61(107)
      abb61(106)=abb61(106)*abb61(59)
      abb61(107)=2.0_ki*abb61(100)
      abb61(108)=abb61(107)+abb61(97)
      abb61(108)=abb61(51)*spak1k2*abb61(108)
      abb61(109)=c1*spak1k2
      abb61(110)=c2*spak1k2
      abb61(111)=-abb61(109)-abb61(110)
      abb61(111)=abb61(111)*abb61(84)
      abb61(112)=abb61(71)+abb61(103)
      abb61(95)=-abb61(84)*abb61(95)*abb61(112)
      abb61(113)=es12*abb61(76)
      abb61(75)=abb61(113)+abb61(75)
      abb61(75)=abb61(75)*abb61(25)
      abb61(113)=2.0_ki*abb61(23)
      abb61(114)=abb61(113)*spak1k2
      abb61(75)=abb61(75)+abb61(37)-abb61(114)
      abb61(75)=c1*abb61(75)
      abb61(94)=abb61(94)*abb61(25)
      abb61(94)=abb61(114)+abb61(94)
      abb61(94)=c2*abb61(94)
      abb61(75)=abb61(75)+abb61(94)
      abb61(75)=abb61(75)*abb61(49)
      abb61(94)=es12*abb61(45)
      abb61(94)=-abb61(99)+abb61(94)
      abb61(94)=c1*abb61(94)
      abb61(62)=-c2*abb61(62)
      abb61(62)=abb61(94)+abb61(62)
      abb61(62)=abb61(62)*abb61(82)
      abb61(62)=abb61(75)+abb61(62)
      abb61(62)=abb61(62)*abb61(47)
      abb61(75)=abb61(109)-abb61(110)
      abb61(94)=-abb61(75)*abb61(51)
      abb61(84)=abb61(110)*abb61(84)
      abb61(99)=abb61(82)*c2
      abb61(114)=-abb61(44)*abb61(99)
      abb61(96)=abb61(96)+abb61(114)
      abb61(96)=abb61(96)*abb61(59)
      abb61(75)=abb61(75)*abb61(50)
      abb61(114)=abb61(9)*spbl4k2
      abb61(115)=abb61(114)*es12
      abb61(116)=-abb61(4)*abb61(87)*abb61(115)*abb61(18)
      abb61(117)=abb61(18)*abb61(32)
      abb61(118)=spak1l3*spbl4l3
      abb61(119)=-abb61(118)*abb61(117)
      abb61(116)=abb61(119)+abb61(116)
      abb61(38)=abb61(38)*abb61(2)*i_
      abb61(119)=abb61(3)**2
      abb61(120)=abb61(119)*abb61(38)
      abb61(121)=2.0_ki*abb61(120)
      abb61(116)=abb61(116)*abb61(121)
      abb61(119)=abb61(49)*abb61(119)
      abb61(122)=2.0_ki*abb61(2)
      abb61(122)=abb61(119)*abb61(122)
      abb61(123)=abb61(122)*spbl4k2*abb61(117)
      abb61(124)=abb61(122)*c1
      abb61(125)=-abb61(115)*abb61(30)
      abb61(126)=-es12*abb61(118)
      abb61(125)=abb61(126)+abb61(125)
      abb61(125)=abb61(125)*abb61(124)
      abb61(126)=spbl4k2*spak1k2*abb61(124)
      abb61(127)=abb61(24)*spbl3k2*abb61(18)
      abb61(128)=es12*abb61(7)
      abb61(129)=-abb61(128)*abb61(56)
      abb61(127)=abb61(127)+abb61(129)
      abb61(127)=abb61(127)*abb61(124)
      abb61(30)=-abb61(128)*abb61(30)
      abb61(93)=spbl3k2*abb61(93)
      abb61(30)=abb61(93)+abb61(30)
      abb61(30)=abb61(30)*abb61(124)
      abb61(93)=spbl4k2*spal4k5
      abb61(129)=spbl3k2*spal3k5
      abb61(93)=abb61(93)+abb61(129)
      abb61(130)=abb61(93)*abb61(4)
      abb61(131)=-abb61(33)*abb61(130)
      abb61(132)=spak1k5**2*abb61(100)
      abb61(131)=abb61(132)+abb61(131)
      abb61(131)=abb61(131)*abb61(39)
      abb61(132)=spbl3k2*spak1l3
      abb61(133)=abb61(132)*abb61(11)
      abb61(134)=abb61(7)*spak1l3
      abb61(133)=abb61(134)+abb61(133)
      abb61(134)=abb61(133)*abb61(56)
      abb61(135)=spbl4k2*spak1l4
      abb61(132)=abb61(135)+abb61(132)
      abb61(135)=abb61(132)*abb61(24)
      abb61(134)=2.0_ki*abb61(135)+abb61(134)
      abb61(134)=c1*abb61(134)
      abb61(135)=abb61(132)*abb61(34)
      abb61(134)=abb61(134)+abb61(135)
      abb61(134)=abb61(134)*abb61(48)
      abb61(131)=abb61(131)+abb61(134)
      abb61(131)=abb61(131)*abb61(47)
      abb61(134)=abb61(132)*abb61(81)*abb61(121)
      abb61(104)=abb61(133)*abb61(122)*abb61(104)
      abb61(135)=abb61(122)*c2
      abb61(132)=-abb61(132)*abb61(135)
      abb61(136)=abb61(33)*abb61(122)
      abb61(137)=-spbl4k2*abb61(136)
      abb61(136)=-spbl3k2*abb61(136)
      abb61(138)=abb61(50)*abb61(40)
      abb61(139)=-abb61(33)*abb61(138)
      abb61(140)=-abb61(32)*abb61(40)*abb61(51)
      abb61(138)=abb61(32)*abb61(138)
      abb61(141)=2.0_ki*abb61(33)
      abb61(38)=abb61(3)*abb61(38)
      abb61(142)=abb61(38)*spak1l3
      abb61(143)=-abb61(141)*abb61(142)
      abb61(142)=2.0_ki*abb61(32)*abb61(142)
      abb61(144)=abb61(50)*abb61(100)
      abb61(145)=spak1l3*abb61(144)
      abb61(146)=-c1*abb61(50)*spak1l3
      abb61(147)=abb61(19)+es12
      abb61(147)=abb61(147)*abb61(23)
      abb61(148)=-spbk2k1*abb61(37)
      abb61(148)=abb61(148)-abb61(147)
      abb61(148)=spak1k5*abb61(148)
      abb61(149)=-abb61(55)*abb61(22)
      abb61(148)=abb61(148)+abb61(149)
      abb61(148)=c2*abb61(148)
      abb61(149)=abb61(18)*abb61(141)
      abb61(148)=abb61(149)+abb61(148)
      abb61(148)=abb61(148)*abb61(121)
      abb61(120)=4.0_ki*abb61(120)
      abb61(88)=-abb61(117)+abb61(88)
      abb61(88)=abb61(88)*abb61(120)
      abb61(149)=abb61(69)*abb61(87)
      abb61(150)=abb61(57)*abb61(90)
      abb61(149)=abb61(149)+abb61(150)
      abb61(149)=abb61(149)*abb61(120)
      abb61(150)=abb61(14)+es12
      abb61(81)=-abb61(150)*abb61(81)
      abb61(81)=abb61(117)+abb61(81)
      abb61(81)=abb61(81)*abb61(121)
      abb61(117)=abb61(25)*abb61(22)
      abb61(117)=abb61(147)+abb61(117)
      abb61(117)=c2*abb61(117)
      abb61(147)=es12*abb61(107)
      abb61(117)=abb61(147)+abb61(117)
      abb61(117)=abb61(4)*abb61(117)
      abb61(147)=abb61(37)*c2
      abb61(117)=abb61(147)+abb61(117)
      abb61(117)=abb61(117)*abb61(121)
      abb61(119)=abb61(119)*abb61(2)
      abb61(151)=4.0_ki*abb61(119)
      abb61(152)=-c1-c2
      abb61(152)=abb61(151)*es12*abb61(152)
      abb61(112)=-abb61(151)*abb61(57)*abb61(112)
      abb61(153)=c1*es12
      abb61(150)=c2*abb61(150)
      abb61(150)=abb61(153)+abb61(150)
      abb61(150)=abb61(150)*abb61(122)
      abb61(153)=spbk5l3*spal3k5
      abb61(154)=spbk5l4*spal4k5
      abb61(155)=abb61(154)+2.0_ki*abb61(153)
      abb61(77)=es12+abb61(77)+abb61(155)
      abb61(77)=es51*abb61(77)
      abb61(156)=abb61(18)+es12
      abb61(157)=abb61(156)*abb61(23)
      abb61(158)=3.0_ki*abb61(157)
      abb61(155)=-es34*abb61(155)
      abb61(77)=abb61(158)+abb61(155)+abb61(77)
      abb61(77)=abb61(77)*abb61(23)
      abb61(155)=abb61(12)*es34
      abb61(159)=-2.0_ki*abb61(13)+abb61(155)
      abb61(159)=es34*abb61(159)
      abb61(13)=abb61(13)-abb61(155)
      abb61(155)=es51*abb61(12)
      abb61(13)=2.0_ki*abb61(13)+abb61(155)
      abb61(13)=es51*abb61(13)
      abb61(155)=es12**2
      abb61(12)=abb61(12)*abb61(155)
      abb61(12)=abb61(13)+abb61(12)+abb61(159)
      abb61(12)=abb61(12)*abb61(91)
      abb61(12)=abb61(77)+abb61(12)
      abb61(12)=c1*abb61(12)
      abb61(13)=abb61(70)+3.0_ki*abb61(60)
      abb61(63)=-2.0_ki*abb61(63)+4.0_ki*abb61(64)-abb61(13)
      abb61(63)=es51*abb61(63)
      abb61(60)=-abb61(60)-abb61(70)
      abb61(60)=es12*abb61(60)
      abb61(13)=-2.0_ki*abb61(64)+abb61(13)
      abb61(13)=es34*abb61(13)
      abb61(13)=abb61(63)+abb61(60)+abb61(13)
      abb61(13)=abb61(13)*abb61(23)
      abb61(22)=-es51*abb61(22)
      abb61(13)=abb61(22)+abb61(13)
      abb61(13)=abb61(13)*abb61(25)
      abb61(22)=abb61(153)+abb61(154)
      abb61(60)=-abb61(52)-abb61(22)
      abb61(60)=2.0_ki*abb61(60)-abb61(80)
      abb61(60)=es51*abb61(60)
      abb61(63)=es34*abb61(22)
      abb61(41)=abb61(41)*spak2k5
      abb61(60)=-abb61(158)+abb61(60)+abb61(41)+2.0_ki*abb61(63)
      abb61(60)=abb61(60)*abb61(23)
      abb61(63)=spbk5l4*spal3l4
      abb61(64)=spak1k5*abb61(63)*spbl3k1
      abb61(77)=abb61(18)*abb61(64)
      abb61(13)=abb61(13)+abb61(60)+abb61(77)
      abb61(13)=c2*abb61(13)
      abb61(12)=abb61(12)+abb61(13)
      abb61(12)=abb61(4)*abb61(12)
      abb61(13)=abb61(23)*spak2k5
      abb61(60)=-abb61(74)*abb61(13)
      abb61(74)=spak2l4*spbk5l4
      abb61(77)=abb61(74)*abb61(7)
      abb61(80)=abb61(77)+spbk5l3
      abb61(80)=abb61(80)*abb61(8)
      abb61(91)=abb61(80)*abb61(56)
      abb61(158)=-es51*abb61(37)
      abb61(60)=abb61(91)+abb61(158)+abb61(60)
      abb61(60)=c2*abb61(60)
      abb61(46)=abb61(46)*abb61(100)*spak2k5
      abb61(12)=abb61(12)+abb61(46)+abb61(60)
      abb61(12)=abb61(12)*abb61(48)
      abb61(46)=spak2l3*spbl3k1
      abb61(60)=abb61(46)*abb61(11)
      abb61(91)=abb61(8)*spbl3k1
      abb61(60)=abb61(60)+abb61(91)
      abb61(56)=-abb61(60)*abb61(56)
      abb61(158)=abb61(36)*spal3k5
      abb61(159)=-abb61(23)*abb61(158)
      abb61(160)=spak2l4*spbl4k1
      abb61(161)=abb61(160)+abb61(46)
      abb61(162)=3.0_ki*abb61(24)
      abb61(163)=-abb61(161)*abb61(162)
      abb61(56)=abb61(56)+abb61(159)+abb61(163)
      abb61(56)=c2*abb61(56)
      abb61(159)=2.0_ki*abb61(46)+abb61(160)
      abb61(33)=abb61(159)*abb61(33)
      abb61(33)=abb61(33)+abb61(56)
      abb61(33)=abb61(33)*abb61(49)
      abb61(12)=abb61(33)+abb61(12)
      abb61(12)=abb61(12)*abb61(47)
      abb61(15)=abb61(15)-abb61(20)
      abb61(15)=es12*abb61(15)
      abb61(15)=abb61(15)+abb61(73)
      abb61(15)=abb61(15)*abb61(25)
      abb61(20)=abb61(18)*abb61(23)
      abb61(15)=abb61(15)-abb61(41)+3.0_ki*abb61(20)
      abb61(15)=c2*abb61(15)
      abb61(20)=-es12+abb61(52)+abb61(79)
      abb61(20)=abb61(20)*abb61(100)
      abb61(15)=abb61(20)+abb61(15)
      abb61(15)=abb61(4)*abb61(15)
      abb61(15)=-abb61(147)+abb61(15)
      abb61(15)=abb61(15)*abb61(120)
      abb61(20)=abb61(155)*abb61(9)
      abb61(33)=-2.0_ki*abb61(57)+abb61(67)
      abb61(33)=es34*abb61(33)
      abb61(56)=abb61(57)-abb61(67)
      abb61(56)=2.0_ki*abb61(56)+abb61(68)
      abb61(56)=es51*abb61(56)
      abb61(20)=abb61(56)+abb61(20)+abb61(33)
      abb61(20)=abb61(20)*abb61(25)
      abb61(14)=abb61(153)+abb61(14)
      abb61(14)=es51*abb61(14)
      abb61(33)=-es34*abb61(153)
      abb61(14)=abb61(20)-abb61(157)+abb61(33)+abb61(14)
      abb61(14)=c1*abb61(14)
      abb61(20)=2.0_ki*abb61(97)
      abb61(33)=-abb61(156)*abb61(20)
      abb61(14)=abb61(14)+abb61(33)
      abb61(14)=abb61(4)*abb61(14)
      abb61(33)=c1*spak2k5
      abb61(44)=abb61(44)*abb61(33)
      abb61(14)=abb61(44)+abb61(14)
      abb61(14)=abb61(14)*abb61(48)
      abb61(44)=abb61(46)*abb61(32)
      abb61(56)=abb61(49)*abb61(44)
      abb61(14)=abb61(56)+abb61(14)
      abb61(14)=abb61(14)*abb61(59)
      abb61(56)=abb61(11)*es34
      abb61(67)=abb61(56)-abb61(61)
      abb61(73)=abb61(11)*es51
      abb61(67)=-abb61(73)+2.0_ki*abb61(67)
      abb61(67)=abb61(67)*es51
      abb61(56)=-abb61(56)+2.0_ki*abb61(61)
      abb61(56)=abb61(56)*es34
      abb61(61)=abb61(155)*abb61(11)
      abb61(56)=abb61(67)+abb61(56)-abb61(61)
      abb61(56)=abb61(56)*abb61(25)
      abb61(19)=abb61(154)+abb61(19)
      abb61(61)=abb61(19)*es51
      abb61(67)=abb61(154)*es34
      abb61(56)=abb61(56)+abb61(67)-abb61(61)
      abb61(61)=2.0_ki*abb61(157)
      abb61(67)=-abb61(61)+abb61(56)
      abb61(67)=c1*abb61(67)
      abb61(73)=-es51*abb61(26)
      abb61(73)=abb61(73)-abb61(157)
      abb61(73)=c2*abb61(73)
      abb61(67)=abb61(67)+abb61(73)
      abb61(67)=abb61(4)*abb61(67)
      abb61(45)=abb61(33)*abb61(45)
      abb61(67)=-abb61(45)+abb61(67)
      abb61(67)=abb61(67)*abb61(48)
      abb61(73)=-abb61(49)*abb61(32)*abb61(160)
      abb61(67)=abb61(73)+abb61(67)
      abb61(67)=abb61(67)*abb61(59)
      abb61(73)=8.0_ki*abb61(119)
      abb61(79)=abb61(29)*abb61(73)
      abb61(119)=-abb61(18)*abb61(79)
      abb61(147)=abb61(153)*abb61(11)
      abb61(153)=abb61(9)*abb61(154)
      abb61(153)=-abb61(147)+abb61(153)
      abb61(153)=es34*abb61(153)
      abb61(19)=-abb61(19)*abb61(9)
      abb61(19)=abb61(19)-1.0_ki+abb61(147)
      abb61(19)=es51*abb61(19)
      abb61(147)=abb61(69)-abb61(57)
      abb61(154)=abb61(147)*abb61(23)
      abb61(19)=abb61(154)+abb61(153)+abb61(19)
      abb61(19)=abb61(19)*abb61(25)
      abb61(22)=-2.0_ki*es51+abb61(22)
      abb61(22)=abb61(22)*abb61(23)
      abb61(19)=abb61(22)+abb61(19)
      abb61(19)=c1*abb61(19)
      abb61(22)=abb61(57)+abb61(69)
      abb61(22)=es51*abb61(22)
      abb61(22)=abb61(22)-abb61(154)
      abb61(22)=abb61(22)*abb61(25)
      abb61(57)=abb61(23)*abb61(78)
      abb61(22)=abb61(22)+abb61(57)+abb61(64)
      abb61(22)=c2*abb61(22)
      abb61(19)=abb61(19)+abb61(22)
      abb61(19)=abb61(4)*abb61(19)
      abb61(22)=-abb61(72)*abb61(103)*spak2k5
      abb61(57)=abb61(90)*abb61(80)
      abb61(19)=abb61(19)+abb61(22)+abb61(57)
      abb61(19)=abb61(19)*abb61(48)
      abb61(22)=-abb61(60)*abb61(90)
      abb61(57)=abb61(87)*abb61(8)
      abb61(60)=-abb61(7)*abb61(160)
      abb61(60)=-spbl3k1+abb61(60)
      abb61(60)=abb61(60)*abb61(57)
      abb61(22)=abb61(60)+abb61(22)
      abb61(22)=abb61(22)*abb61(49)
      abb61(19)=abb61(22)+abb61(19)
      abb61(19)=abb61(19)*abb61(59)
      abb61(22)=abb61(105)*abb61(73)
      abb61(60)=abb61(69)*abb61(22)
      abb61(64)=-es51*abb61(79)
      abb61(68)=-abb61(68)*abb61(22)
      abb61(69)=abb61(25)*abb61(156)*abb61(70)
      abb61(41)=abb61(69)-abb61(41)
      abb61(69)=-abb61(157)-abb61(41)
      abb61(69)=c2*abb61(69)
      abb61(70)=abb61(156)*abb61(100)
      abb61(69)=4.0_ki*abb61(70)+abb61(69)
      abb61(69)=abb61(69)*abb61(82)
      abb61(70)=-c2*abb61(49)*abb61(158)
      abb61(69)=abb61(70)+abb61(69)
      abb61(59)=abb61(69)*abb61(59)
      abb61(69)=abb61(156)*c1
      abb61(70)=abb61(156)*c2
      abb61(72)=abb61(69)-abb61(70)
      abb61(78)=-abb61(72)*abb61(73)
      abb61(80)=abb61(105)*abb61(147)
      abb61(147)=-abb61(80)*abb61(73)
      abb61(56)=-abb61(61)-abb61(56)
      abb61(56)=c1*abb61(56)
      abb61(153)=abb61(26)-abb61(52)
      abb61(153)=es51*abb61(153)
      abb61(41)=abb61(61)+abb61(153)+abb61(41)
      abb61(41)=c2*abb61(41)
      abb61(41)=abb61(56)+abb61(41)
      abb61(41)=abb61(4)*abb61(41)
      abb61(41)=abb61(45)+abb61(41)
      abb61(41)=abb61(41)*abb61(48)
      abb61(45)=-spak1k5*abb61(161)
      abb61(45)=abb61(158)+abb61(45)
      abb61(45)=c2*abb61(45)
      abb61(44)=-abb61(44)+abb61(45)
      abb61(44)=abb61(44)*abb61(49)
      abb61(41)=abb61(44)+abb61(41)
      abb61(41)=abb61(41)*abb61(47)
      abb61(44)=-abb61(18)+abb61(52)
      abb61(44)=c1*abb61(44)
      abb61(26)=c2*abb61(26)
      abb61(26)=abb61(44)+abb61(26)
      abb61(26)=abb61(26)*abb61(151)
      abb61(44)=-abb61(151)*abb61(70)
      abb61(45)=abb61(69)-2.0_ki*abb61(70)
      abb61(45)=abb61(45)*abb61(151)
      abb61(48)=abb61(80)*abb61(151)
      abb61(52)=abb61(72)*abb61(151)
      abb61(56)=-abb61(72)*abb61(122)
      abb61(61)=abb61(97)*abb61(51)
      abb61(69)=spak2l4*abb61(61)
      abb61(70)=abb61(50)*c2
      abb61(72)=spak2l4*abb61(70)
      abb61(61)=spak2l3*abb61(61)
      abb61(70)=spak2l3*abb61(70)
      abb61(80)=spak2l3*spbk5l3
      abb61(153)=abb61(80)*abb61(11)
      abb61(154)=abb61(9)*spak2l4
      abb61(155)=abb61(154)*spbk5l4
      abb61(155)=abb61(155)-abb61(153)
      abb61(155)=-abb61(155)*abb61(18)
      abb61(156)=spak1k2*spbk5k1
      abb61(157)=-abb61(156)*abb61(21)
      abb61(159)=abb61(8)*spbk5l3
      abb61(159)=abb61(153)+abb61(159)
      abb61(159)=es12*abb61(159)
      abb61(155)=abb61(159)+abb61(157)+abb61(155)
      abb61(155)=abb61(155)*abb61(25)
      abb61(157)=abb61(74)-abb61(156)+abb61(80)
      abb61(157)=abb61(157)*abb61(113)
      abb61(159)=spbk5l3*spak2k5
      abb61(160)=spak1k2*spbl3k1
      abb61(160)=-abb61(159)+abb61(160)
      abb61(160)=abb61(160)*abb61(63)
      abb61(37)=-spbk5k1*abb61(37)
      abb61(37)=abb61(155)+abb61(157)+abb61(160)+abb61(37)
      abb61(37)=c2*abb61(37)
      abb61(155)=-2.0_ki*abb61(80)-abb61(74)
      abb61(155)=abb61(155)*abb61(107)
      abb61(37)=abb61(155)+abb61(37)
      abb61(37)=abb61(37)*abb61(82)
      abb61(46)=-abb61(76)*abb61(46)
      abb61(76)=-spak1k2*abb61(91)
      abb61(46)=abb61(46)+abb61(76)
      abb61(46)=abb61(46)*abb61(49)*abb61(71)
      abb61(37)=abb61(46)+abb61(37)
      abb61(37)=abb61(37)*abb61(47)
      abb61(46)=-c1*abb61(73)*abb61(80)
      abb61(76)=abb61(110)*spbk5k1
      abb61(82)=c1*abb61(74)
      abb61(82)=abb61(82)+abb61(76)
      abb61(73)=abb61(82)*abb61(73)
      abb61(77)=spbk5l3+2.0_ki*abb61(77)
      abb61(77)=abb61(8)*abb61(77)
      abb61(77)=-abb61(153)+abb61(77)
      abb61(77)=abb61(77)*abb61(103)
      abb61(82)=2.0_ki*abb61(156)-abb61(74)
      abb61(82)=abb61(7)*abb61(82)
      abb61(82)=-spbk5l3+abb61(82)
      abb61(82)=abb61(8)*abb61(82)*abb61(71)
      abb61(77)=abb61(77)+abb61(82)
      abb61(77)=abb61(77)*abb61(151)
      abb61(74)=abb61(80)-abb61(74)
      abb61(74)=c1*abb61(74)
      abb61(74)=abb61(74)-abb61(76)
      abb61(74)=abb61(74)*abb61(122)
      abb61(76)=spak1k2*abb61(144)
      abb61(50)=abb61(50)*abb61(109)
      abb61(80)=-abb61(118)*abb61(33)
      abb61(82)=-abb61(114)*abb61(18)
      abb61(82)=-abb61(115)+abb61(82)
      abb61(91)=abb61(25)*spak2k5
      abb61(82)=abb61(82)*abb61(91)
      abb61(109)=-spbl4l3*spal3k5*abb61(18)
      abb61(82)=abb61(82)+abb61(109)
      abb61(82)=abb61(4)*c1*abb61(82)
      abb61(80)=abb61(80)+abb61(82)
      abb61(80)=abb61(80)*abb61(121)
      abb61(82)=spak2l3*spbl4l3*abb61(124)
      abb61(97)=abb61(97)*abb61(151)
      abb61(109)=spbk5l4*spak2k5
      abb61(110)=abb61(97)*abb61(109)
      abb61(109)=abb61(135)*abb61(109)
      abb61(114)=abb61(122)*spak2k5
      abb61(115)=-abb61(7)*abb61(18)
      abb61(115)=-abb61(128)+abb61(115)
      abb61(115)=abb61(103)*abb61(115)*abb61(114)
      abb61(36)=abb61(36)*abb61(135)
      abb61(97)=abb61(159)*abb61(97)
      abb61(118)=abb61(135)*abb61(159)
      abb61(124)=abb61(129)*abb61(11)
      abb61(128)=abb61(7)*spal3k5
      abb61(124)=abb61(128)+abb61(124)
      abb61(18)=abb61(25)*abb61(124)*abb61(18)
      abb61(113)=abb61(93)*abb61(113)
      abb61(18)=abb61(113)+abb61(18)
      abb61(18)=c1*abb61(18)
      abb61(20)=abb61(93)*abb61(20)
      abb61(18)=abb61(18)+abb61(20)
      abb61(18)=abb61(4)*abb61(18)
      abb61(20)=abb61(133)*abb61(91)
      abb61(20)=abb61(162)+abb61(20)
      abb61(20)=c1*abb61(20)
      abb61(18)=abb61(18)+abb61(20)-2.0_ki*abb61(34)
      abb61(18)=abb61(18)*abb61(121)
      abb61(20)=c2*abb61(130)
      abb61(20)=abb61(20)-abb61(31)
      abb61(20)=abb61(20)*abb61(121)
      abb61(34)=-abb61(16)*abb61(25)
      abb61(23)=6.0_ki*abb61(23)
      abb61(34)=-abb61(23)+abb61(34)
      abb61(34)=c1*abb61(34)
      abb61(25)=abb61(21)*abb61(25)
      abb61(23)=abb61(23)+abb61(25)
      abb61(23)=c2*abb61(23)
      abb61(23)=abb61(34)+abb61(23)
      abb61(23)=abb61(23)*abb61(122)
      abb61(22)=-abb61(9)*abb61(22)
      abb61(25)=abb61(29)*abb61(151)
      abb61(29)=abb61(154)*abb61(87)
      abb61(32)=abb61(4)*spal3l4*spbl3k1*abb61(32)
      abb61(29)=abb61(29)+abb61(32)
      abb61(29)=abb61(29)*abb61(39)
      abb61(32)=es51*abb61(40)*abb61(101)
      abb61(29)=abb61(29)+abb61(32)
      abb61(29)=abb61(29)*abb61(47)
      abb61(32)=-abb61(49)*abb61(154)*abb61(103)
      abb61(34)=-spbk5l3*spal3l4*abb61(101)
      abb61(32)=abb61(32)+abb61(34)
      abb61(32)=abb61(32)*abb61(47)
      abb61(34)=2.0_ki*abb61(38)*abb61(57)
      abb61(11)=spak2l3*abb61(11)
      abb61(11)=abb61(11)+abb61(8)
      abb61(11)=abb61(11)*abb61(71)
      abb61(38)=-abb61(8)*abb61(103)
      abb61(11)=abb61(38)+abb61(11)
      abb61(11)=abb61(11)*abb61(49)
      abb61(38)=-abb61(63)*abb61(99)
      abb61(11)=abb61(11)+abb61(38)
      abb61(11)=abb61(11)*abb61(47)
      abb61(16)=abb61(16)*abb61(55)
      abb61(16)=abb61(24)+abb61(16)
      abb61(16)=c2*abb61(16)
      abb61(16)=-abb61(141)+abb61(16)
      abb61(16)=abb61(16)*abb61(49)
      abb61(16)=abb61(16)-abb61(83)
      abb61(16)=abb61(16)*abb61(47)
      abb61(24)=-abb61(31)*abb61(51)
      abb61(31)=abb61(87)-abb61(90)
      abb61(31)=abb61(51)*abb61(9)*abb61(31)
      abb61(21)=-abb61(21)*abb61(91)
      abb61(13)=abb61(21)-abb61(158)-abb61(13)
      abb61(13)=c2*abb61(13)
      abb61(21)=spak2k5*abb61(107)
      abb61(13)=abb61(21)+abb61(13)
      abb61(13)=abb61(13)*abb61(121)
      abb61(21)=c2*spak2k5
      abb61(21)=abb61(21)-abb61(33)
      abb61(33)=abb61(21)*abb61(120)
      abb61(9)=abb61(120)*abb61(9)*spak2k5*abb61(105)
      abb61(21)=-abb61(21)*abb61(121)
      abb61(38)=-spbk5k1*abb61(100)*abb61(114)
      R2d61=0.0_ki
      rat2 = rat2 + R2d61
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='61' value='", &
          & R2d61, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd61h4
