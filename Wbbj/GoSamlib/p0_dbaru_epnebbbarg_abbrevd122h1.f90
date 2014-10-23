module     p0_dbaru_epnebbbarg_abbrevd122h1
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(172), public :: abb122
   complex(ki), public :: R2d122
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
      abb122(1)=1.0_ki/(-mB**2+es67)
      abb122(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb122(3)=NC**(-1)
      abb122(4)=sqrt2**(-1)
      abb122(5)=es234**(-1)
      abb122(6)=spak2k7**(-1)
      abb122(7)=spak2l5**(-1)
      abb122(8)=spbl5k2**(-1)
      abb122(9)=spbl6k2**(-1)
      abb122(10)=sqrt(mB**2)
      abb122(11)=spak1k2*spbk3k2
      abb122(12)=TR*gW
      abb122(12)=abb122(12)**2*i_*CVDU*abb122(4)*abb122(2)
      abb122(13)=abb122(12)*abb122(6)*abb122(1)
      abb122(14)=abb122(5)*abb122(13)
      abb122(15)=abb122(11)*abb122(14)
      abb122(16)=abb122(3)*mB
      abb122(17)=abb122(16)*abb122(10)
      abb122(18)=abb122(17)*abb122(7)
      abb122(19)=abb122(18)*abb122(15)
      abb122(20)=mB**2
      abb122(21)=abb122(15)*abb122(20)
      abb122(22)=abb122(21)*abb122(3)
      abb122(23)=abb122(22)*abb122(7)
      abb122(24)=abb122(19)-abb122(23)
      abb122(25)=2.0_ki*c3
      abb122(24)=abb122(24)*abb122(25)
      abb122(26)=abb122(3)**2
      abb122(27)=abb122(15)*abb122(26)
      abb122(28)=abb122(27)+abb122(15)
      abb122(29)=mB*abb122(28)
      abb122(30)=abb122(10)*c2
      abb122(31)=abb122(30)*abb122(7)
      abb122(32)=abb122(29)*abb122(31)
      abb122(33)=abb122(26)+1.0_ki
      abb122(34)=abb122(21)*abb122(33)
      abb122(35)=abb122(7)*c2
      abb122(36)=abb122(34)*abb122(35)
      abb122(24)=abb122(24)+abb122(36)-abb122(32)
      abb122(37)=spak2k4*spak2l6
      abb122(38)=abb122(37)*spbk7k2*abb122(24)
      abb122(39)=spbk7k2*abb122(9)
      abb122(40)=abb122(17)*abb122(39)
      abb122(41)=abb122(15)*abb122(40)
      abb122(42)=abb122(22)*abb122(39)
      abb122(41)=abb122(42)-abb122(41)
      abb122(41)=abb122(41)*abb122(25)
      abb122(42)=abb122(30)*abb122(39)
      abb122(43)=abb122(42)*abb122(29)
      abb122(44)=abb122(39)*c2
      abb122(45)=abb122(34)*abb122(44)
      abb122(41)=abb122(41)-abb122(45)+abb122(43)
      abb122(43)=spbl5k3*spak3k4
      abb122(45)=spbl5k2*spak2k4
      abb122(46)=abb122(43)-abb122(45)
      abb122(47)=abb122(46)*abb122(41)
      abb122(48)=abb122(25)*abb122(3)
      abb122(21)=abb122(48)*abb122(21)
      abb122(49)=abb122(7)*abb122(9)
      abb122(50)=abb122(49)*spbk7k2
      abb122(51)=abb122(21)*abb122(50)
      abb122(52)=abb122(50)*c2
      abb122(53)=abb122(34)*abb122(52)
      abb122(51)=abb122(51)-abb122(53)
      abb122(53)=abb122(51)*spak2k4
      abb122(54)=es712-es71
      abb122(55)=abb122(54)*abb122(53)
      abb122(56)=abb122(26)*abb122(14)
      abb122(57)=abb122(56)*spbk3k2
      abb122(58)=abb122(14)*spbk3k2
      abb122(59)=abb122(57)+abb122(58)
      abb122(60)=abb122(59)*c2
      abb122(61)=abb122(48)*abb122(58)
      abb122(60)=abb122(60)-abb122(61)
      abb122(61)=spbk7l6*spak2l6
      abb122(62)=abb122(60)*abb122(61)
      abb122(63)=-abb122(62)*abb122(46)
      abb122(64)=abb122(63)*spak1l6
      abb122(65)=es12*spak2k4
      abb122(66)=abb122(65)*abb122(51)
      abb122(38)=-abb122(64)+abb122(38)+abb122(55)-abb122(47)-abb122(66)
      abb122(47)=spak1l5*spbl5k1
      abb122(55)=-abb122(38)*abb122(47)
      abb122(64)=mB**4
      abb122(67)=abb122(64)*abb122(27)
      abb122(68)=abb122(64)*abb122(15)
      abb122(67)=abb122(67)+abb122(68)
      abb122(69)=abb122(7)**2
      abb122(70)=abb122(9)*c2
      abb122(71)=abb122(69)*abb122(70)
      abb122(72)=abb122(71)*abb122(67)
      abb122(73)=abb122(69)*abb122(9)
      abb122(74)=abb122(48)*abb122(73)*abb122(68)
      abb122(72)=abb122(72)-abb122(74)
      abb122(74)=abb122(8)*spak3k4
      abb122(75)=abb122(54)*abb122(74)
      abb122(76)=-abb122(72)*abb122(75)
      abb122(77)=es12*spak3k4
      abb122(72)=abb122(72)*abb122(77)
      abb122(78)=mB**3
      abb122(27)=abb122(78)*abb122(27)
      abb122(79)=abb122(78)*abb122(15)
      abb122(27)=abb122(27)+abb122(79)
      abb122(80)=-abb122(27)*abb122(30)
      abb122(79)=abb122(10)*abb122(48)*abb122(79)
      abb122(79)=abb122(80)+abb122(79)
      abb122(80)=spak3k4*spak2l6
      abb122(81)=abb122(80)*abb122(69)
      abb122(79)=abb122(79)*abb122(81)
      abb122(72)=abb122(79)+abb122(72)
      abb122(72)=abb122(8)*abb122(72)
      abb122(72)=abb122(72)+abb122(76)
      abb122(72)=es12*abb122(72)
      abb122(76)=abb122(49)*c2
      abb122(79)=abb122(34)*abb122(76)
      abb122(82)=abb122(21)*abb122(49)
      abb122(79)=abb122(79)-abb122(82)
      abb122(82)=abb122(79)*es71
      abb122(83)=abb122(79)*es712
      abb122(84)=abb122(82)-abb122(83)
      abb122(85)=spak3k4*abb122(84)
      abb122(86)=abb122(18)*abb122(25)
      abb122(87)=abb122(15)*abb122(86)
      abb122(87)=abb122(87)-abb122(32)
      abb122(88)=abb122(80)*abb122(87)
      abb122(89)=abb122(79)*spak3k4
      abb122(90)=abb122(89)*es12
      abb122(85)=abb122(90)+abb122(88)+abb122(85)
      abb122(88)=abb122(85)*abb122(47)
      abb122(72)=abb122(88)+abb122(72)
      abb122(72)=spbk7k3*abb122(72)
      abb122(88)=spak1k2**2
      abb122(90)=abb122(88)*abb122(58)
      abb122(57)=-abb122(88)*abb122(57)
      abb122(57)=-abb122(90)+abb122(57)
      abb122(57)=abb122(52)*abb122(78)*abb122(57)
      abb122(91)=abb122(20)*abb122(14)
      abb122(92)=abb122(91)*spbk3k2
      abb122(26)=abb122(92)*abb122(26)
      abb122(93)=abb122(88)*abb122(26)
      abb122(94)=abb122(88)*abb122(92)
      abb122(93)=abb122(93)+abb122(94)
      abb122(95)=abb122(30)*abb122(50)
      abb122(96)=abb122(93)*abb122(95)
      abb122(57)=abb122(57)+abb122(96)
      abb122(57)=abb122(10)*abb122(57)
      abb122(96)=abb122(78)*abb122(50)
      abb122(97)=abb122(3)*abb122(96)*abb122(90)
      abb122(98)=abb122(92)*abb122(3)
      abb122(99)=abb122(50)*abb122(10)
      abb122(100)=-abb122(88)*abb122(98)*abb122(99)
      abb122(97)=abb122(97)+abb122(100)
      abb122(100)=abb122(25)*abb122(10)
      abb122(97)=abb122(97)*abb122(100)
      abb122(101)=abb122(61)*spak1l6
      abb122(102)=abb122(87)*abb122(101)
      abb122(57)=abb122(102)+abb122(57)+abb122(97)
      abb122(97)=spbk3k1*spak3k4
      abb122(57)=abb122(57)*abb122(97)
      abb122(102)=abb122(95)*abb122(34)
      abb122(103)=abb122(27)*abb122(52)
      abb122(104)=abb122(102)-abb122(103)
      abb122(104)=abb122(104)*abb122(10)
      abb122(105)=abb122(15)*abb122(3)
      abb122(106)=abb122(96)*abb122(105)
      abb122(107)=abb122(99)*abb122(22)
      abb122(108)=abb122(107)-abb122(106)
      abb122(108)=abb122(108)*abb122(100)
      abb122(104)=abb122(104)-abb122(108)
      abb122(108)=abb122(44)*abb122(69)
      abb122(109)=abb122(67)*abb122(108)
      abb122(110)=abb122(69)*abb122(39)
      abb122(111)=abb122(110)*abb122(48)
      abb122(68)=abb122(111)*abb122(68)
      abb122(68)=abb122(109)-abb122(68)
      abb122(109)=abb122(68)*abb122(8)
      abb122(112)=abb122(109)*abb122(54)
      abb122(112)=-abb122(104)+abb122(112)
      abb122(112)=abb122(65)*abb122(112)
      abb122(69)=abb122(69)*spbk7k2
      abb122(113)=abb122(69)*abb122(25)
      abb122(114)=abb122(78)*abb122(10)
      abb122(115)=abb122(64)-abb122(114)
      abb122(115)=abb122(115)*abb122(105)*abb122(113)
      abb122(116)=abb122(69)*abb122(30)
      abb122(117)=abb122(116)*abb122(27)
      abb122(69)=abb122(69)*c2
      abb122(118)=abb122(69)*abb122(67)
      abb122(115)=abb122(115)+abb122(117)-abb122(118)
      abb122(115)=abb122(115)*abb122(37)
      abb122(68)=abb122(68)*abb122(65)
      abb122(68)=abb122(115)-abb122(68)
      abb122(68)=abb122(68)*abb122(8)
      abb122(115)=es12*abb122(68)
      abb122(117)=abb122(52)*abb122(64)
      abb122(118)=-abb122(95)*abb122(78)
      abb122(117)=abb122(117)+abb122(118)
      abb122(118)=abb122(56)+abb122(14)
      abb122(11)=abb122(11)**2
      abb122(117)=abb122(117)*abb122(118)*abb122(11)
      abb122(119)=abb122(64)*abb122(50)
      abb122(120)=abb122(10)*abb122(96)
      abb122(120)=-abb122(119)+abb122(120)
      abb122(121)=abb122(14)*abb122(3)
      abb122(122)=abb122(121)*abb122(25)
      abb122(11)=abb122(11)*abb122(120)*abb122(122)
      abb122(11)=abb122(11)+abb122(117)
      abb122(74)=abb122(74)*spbl5k1
      abb122(11)=abb122(11)*abb122(74)
      abb122(59)=mB*abb122(59)
      abb122(117)=abb122(59)*abb122(31)
      abb122(120)=-abb122(58)*abb122(86)
      abb122(120)=abb122(117)+abb122(120)
      abb122(120)=abb122(120)*abb122(65)
      abb122(123)=abb122(91)*spak1k2
      abb122(124)=abb122(123)*abb122(33)
      abb122(125)=abb122(124)*abb122(35)
      abb122(126)=-abb122(7)*abb122(48)*abb122(123)
      abb122(126)=abb122(125)+abb122(126)
      abb122(127)=spbk3k2**2
      abb122(74)=abb122(74)*abb122(127)*abb122(126)
      abb122(74)=abb122(120)+abb122(74)
      abb122(74)=abb122(74)*abb122(101)
      abb122(120)=es12*abb122(80)*abb122(109)
      abb122(126)=abb122(80)*abb122(51)
      abb122(47)=-abb122(126)*abb122(47)
      abb122(47)=abb122(120)+abb122(47)
      abb122(47)=spbl6k3*abb122(47)
      abb122(11)=abb122(47)+abb122(57)+abb122(72)+abb122(55)+abb122(74)+abb122(&
      &11)+abb122(115)+abb122(112)
      abb122(11)=8.0_ki*abb122(11)
      abb122(47)=abb122(50)*abb122(48)
      abb122(55)=abb122(94)*abb122(47)
      abb122(57)=abb122(93)*abb122(52)
      abb122(55)=abb122(55)-abb122(57)
      abb122(55)=abb122(55)*abb122(97)
      abb122(55)=abb122(55)-abb122(66)
      abb122(55)=16.0_ki*abb122(55)
      abb122(57)=abb122(87)*spak2l6
      abb122(66)=abb122(57)-abb122(83)
      abb122(72)=abb122(79)*es12
      abb122(72)=abb122(72)+abb122(82)
      abb122(74)=abb122(72)+abb122(66)
      abb122(93)=abb122(74)*spbk7l5
      abb122(94)=abb122(93)*spak4l5
      abb122(109)=abb122(109)*spak2k4
      abb122(112)=abb122(17)*abb122(9)
      abb122(115)=abb122(112)*abb122(58)
      abb122(120)=abb122(115)*abb122(25)
      abb122(128)=abb122(70)*abb122(10)
      abb122(129)=abb122(59)*abb122(128)
      abb122(120)=abb122(120)-abb122(129)
      abb122(130)=spak1k4*spbk7l5
      abb122(131)=abb122(120)*abb122(130)
      abb122(109)=abb122(109)-abb122(131)
      abb122(109)=-abb122(109)*abb122(54)
      abb122(132)=abb122(51)*spak2l6
      abb122(133)=abb122(132)*spak4l5
      abb122(59)=abb122(42)*abb122(59)
      abb122(134)=abb122(58)*abb122(40)
      abb122(135)=abb122(134)*abb122(25)
      abb122(135)=abb122(135)-abb122(59)
      abb122(136)=spak1k4*spak2l6
      abb122(137)=abb122(135)*abb122(136)
      abb122(133)=abb122(133)-abb122(137)
      abb122(133)=abb122(133)*spbl6l5
      abb122(137)=-abb122(23)+2.0_ki*abb122(19)
      abb122(137)=abb122(137)*abb122(25)
      abb122(137)=abb122(137)+abb122(36)-2.0_ki*abb122(32)
      abb122(138)=abb122(61)*spak4l6
      abb122(139)=abb122(137)*abb122(138)
      abb122(131)=abb122(131)*es12
      abb122(140)=abb122(10)**2
      abb122(141)=-abb122(140)*abb122(60)
      abb122(142)=abb122(130)*spak2l6
      abb122(143)=abb122(141)*abb122(142)
      abb122(68)=-abb122(94)+abb122(133)-abb122(68)-abb122(131)+abb122(143)-abb&
      &122(139)+abb122(109)
      abb122(94)=-2.0_ki*abb122(107)+3.0_ki*abb122(106)
      abb122(94)=abb122(94)*abb122(10)
      abb122(107)=abb122(119)*abb122(105)
      abb122(94)=abb122(94)-abb122(107)
      abb122(94)=abb122(94)*abb122(25)
      abb122(102)=-2.0_ki*abb122(102)+3.0_ki*abb122(103)
      abb122(102)=abb122(102)*abb122(10)
      abb122(67)=abb122(67)*abb122(52)
      abb122(94)=-abb122(94)+abb122(102)-abb122(67)
      abb122(94)=abb122(94)*spak2k4
      abb122(94)=abb122(94)-abb122(68)
      abb122(94)=16.0_ki*abb122(94)
      abb122(102)=abb122(60)*spak2l6
      abb122(103)=abb122(102)*abb122(130)
      abb122(109)=abb122(103)+2.0_ki*abb122(53)
      abb122(109)=32.0_ki*abb122(109)
      abb122(106)=-abb122(10)*abb122(106)
      abb122(106)=abb122(107)+abb122(106)
      abb122(106)=abb122(106)*abb122(25)
      abb122(27)=abb122(27)*abb122(95)
      abb122(27)=abb122(106)-abb122(67)+abb122(27)
      abb122(43)=abb122(43)*abb122(8)
      abb122(27)=abb122(27)*abb122(43)
      abb122(26)=abb122(26)+abb122(92)
      abb122(67)=abb122(26)*abb122(76)
      abb122(49)=abb122(48)*abb122(49)
      abb122(106)=-abb122(49)*abb122(92)
      abb122(67)=abb122(67)+abb122(106)
      abb122(67)=abb122(67)*abb122(65)
      abb122(106)=-spbk3k1*abb122(89)
      abb122(67)=abb122(106)+abb122(67)
      abb122(67)=spak1l6*spbk7l6*abb122(67)
      abb122(106)=-spak2k4*abb122(104)
      abb122(27)=abb122(27)+abb122(106)+abb122(67)-abb122(68)
      abb122(27)=16.0_ki*abb122(27)
      abb122(67)=abb122(103)+abb122(53)
      abb122(67)=32.0_ki*abb122(67)
      abb122(68)=abb122(98)*abb122(9)
      abb122(68)=abb122(68)-abb122(115)
      abb122(68)=abb122(68)*abb122(25)
      abb122(103)=abb122(26)*abb122(70)
      abb122(68)=abb122(68)-abb122(103)+abb122(129)
      abb122(103)=abb122(68)*abb122(130)
      abb122(106)=2.0_ki*spak4l6
      abb122(107)=abb122(106)*spbk7l6
      abb122(115)=abb122(107)*abb122(79)
      abb122(103)=abb122(103)+abb122(115)
      abb122(103)=32.0_ki*abb122(103)
      abb122(115)=spbk7k3*abb122(85)
      abb122(119)=-spbl6k3*abb122(126)
      abb122(38)=abb122(119)+abb122(115)-abb122(38)
      abb122(38)=16.0_ki*abb122(38)
      abb122(115)=-abb122(87)*abb122(65)
      abb122(90)=abb122(86)*abb122(90)
      abb122(88)=-abb122(88)*abb122(117)
      abb122(88)=abb122(88)+abb122(90)
      abb122(88)=abb122(88)*abb122(97)
      abb122(88)=abb122(115)+abb122(88)
      abb122(88)=8.0_ki*abb122(88)
      abb122(12)=abb122(12)*abb122(5)*abb122(1)
      abb122(90)=spbk3k2*abb122(12)
      abb122(115)=c2*abb122(90)*abb122(33)
      abb122(90)=abb122(90)*abb122(48)
      abb122(90)=abb122(115)-abb122(90)
      abb122(115)=abb122(90)*abb122(130)
      abb122(119)=abb122(102)*spbl6l5
      abb122(129)=abb122(119)*spak1k4
      abb122(115)=abb122(115)+abb122(129)
      abb122(129)=abb122(87)*spak2k4
      abb122(131)=abb122(115)+2.0_ki*abb122(129)
      abb122(131)=16.0_ki*abb122(131)
      abb122(115)=-abb122(129)-abb122(115)
      abb122(115)=16.0_ki*abb122(115)
      abb122(129)=8.0_ki*spak1l5
      abb122(63)=abb122(63)*abb122(129)
      abb122(133)=8.0_ki*spak3k4
      abb122(87)=abb122(133)*abb122(87)
      abb122(139)=-abb122(61)*abb122(87)
      abb122(89)=16.0_ki*spbk7l6*abb122(89)
      abb122(143)=abb122(24)*spak2k4
      abb122(21)=abb122(7)*abb122(21)
      abb122(21)=-abb122(36)+abb122(21)
      abb122(21)=abb122(21)*abb122(43)
      abb122(21)=abb122(143)+abb122(21)
      abb122(21)=8.0_ki*abb122(61)*abb122(21)
      abb122(43)=abb122(79)*spbk7l6
      abb122(144)=-16.0_ki*spak2k4*abb122(43)
      abb122(145)=spbl5k3*abb122(85)
      abb122(84)=-abb122(45)*abb122(84)
      abb122(57)=-spak2k4*abb122(57)
      abb122(146)=abb122(65)*abb122(79)
      abb122(57)=abb122(57)-abb122(146)
      abb122(57)=spbl5k2*abb122(57)
      abb122(57)=abb122(145)+abb122(57)+abb122(84)
      abb122(57)=8.0_ki*abb122(57)
      abb122(84)=8.0_ki*abb122(46)
      abb122(145)=-abb122(132)*abb122(84)
      abb122(147)=16.0_ki*abb122(74)
      abb122(148)=16.0_ki*abb122(132)
      abb122(62)=abb122(62)*spak1l6
      abb122(62)=abb122(62)-abb122(41)
      abb122(149)=16.0_ki*abb122(62)
      abb122(49)=abb122(49)*abb122(123)
      abb122(76)=abb122(124)*abb122(76)
      abb122(49)=abb122(49)-abb122(76)
      abb122(76)=abb122(54)-es12
      abb122(150)=abb122(76)*abb122(49)*spbk7l5
      abb122(151)=abb122(14)*spak1k2
      abb122(152)=abb122(86)*abb122(151)
      abb122(153)=abb122(56)*mB
      abb122(154)=abb122(153)*spak1k2
      abb122(155)=abb122(151)*mB
      abb122(154)=abb122(154)+abb122(155)
      abb122(155)=abb122(154)*abb122(31)
      abb122(152)=abb122(152)-abb122(155)
      abb122(156)=spbk7l5*spak2l6
      abb122(157)=abb122(152)*abb122(156)
      abb122(150)=abb122(150)+abb122(157)
      abb122(150)=abb122(150)*spak4l5
      abb122(157)=2.0_ki*abb122(14)
      abb122(157)=spak1k2*abb122(18)*abb122(157)
      abb122(158)=abb122(123)*abb122(3)
      abb122(159)=abb122(158)*abb122(7)
      abb122(157)=abb122(157)-abb122(159)
      abb122(157)=abb122(157)*abb122(25)
      abb122(157)=abb122(157)+abb122(125)-2.0_ki*abb122(155)
      abb122(138)=abb122(157)*abb122(138)
      abb122(157)=abb122(118)*c2
      abb122(157)=abb122(157)-abb122(122)
      abb122(160)=abb122(157)*abb122(142)
      abb122(140)=abb122(140)*abb122(160)
      abb122(138)=abb122(138)+abb122(140)
      abb122(40)=abb122(14)*abb122(25)*abb122(40)
      abb122(140)=abb122(14)*mB
      abb122(140)=abb122(140)+abb122(153)
      abb122(153)=abb122(140)*abb122(42)
      abb122(40)=abb122(40)-abb122(153)
      abb122(40)=abb122(40)*abb122(136)
      abb122(123)=abb122(47)*abb122(123)
      abb122(153)=abb122(124)*abb122(52)
      abb122(123)=abb122(153)-abb122(123)
      abb122(153)=abb122(123)*spak2l6
      abb122(161)=abb122(153)*spak4l5
      abb122(40)=abb122(40)+abb122(161)
      abb122(161)=spbl6l5*abb122(40)
      abb122(14)=abb122(112)*abb122(14)
      abb122(162)=abb122(14)*abb122(25)
      abb122(140)=abb122(140)*abb122(128)
      abb122(162)=abb122(162)-abb122(140)
      abb122(162)=abb122(162)*abb122(130)
      abb122(163)=-abb122(162)*abb122(76)
      abb122(161)=abb122(161)+abb122(150)+abb122(163)+abb122(138)
      abb122(161)=spbk4k2*abb122(161)
      abb122(163)=abb122(114)*spak1k2
      abb122(164)=abb122(64)*spak1k2
      abb122(165)=abb122(163)-abb122(164)
      abb122(165)=abb122(165)*abb122(121)*abb122(113)
      abb122(56)=abb122(56)*spak1k2
      abb122(56)=abb122(151)+abb122(56)
      abb122(56)=abb122(78)*abb122(56)
      abb122(166)=abb122(56)*abb122(116)
      abb122(118)=abb122(164)*abb122(118)
      abb122(167)=abb122(69)*abb122(118)
      abb122(165)=abb122(165)+abb122(167)-abb122(166)
      abb122(166)=-spak2l6*abb122(165)
      abb122(167)=abb122(118)*abb122(108)
      abb122(168)=abb122(122)*abb122(164)
      abb122(110)=abb122(168)*abb122(110)
      abb122(167)=abb122(167)-abb122(110)
      abb122(169)=-es12*abb122(167)
      abb122(166)=abb122(166)+abb122(169)
      abb122(166)=abb122(8)*abb122(166)
      abb122(99)=2.0_ki*abb122(99)
      abb122(169)=abb122(99)*abb122(158)
      abb122(96)=3.0_ki*abb122(96)
      abb122(170)=abb122(96)*abb122(121)*spak1k2
      abb122(169)=abb122(169)-abb122(170)
      abb122(169)=abb122(169)*abb122(10)
      abb122(121)=abb122(50)*abb122(164)*abb122(121)
      abb122(121)=abb122(169)+abb122(121)
      abb122(121)=abb122(121)*abb122(25)
      abb122(95)=2.0_ki*abb122(95)
      abb122(164)=abb122(95)*abb122(124)
      abb122(169)=3.0_ki*abb122(52)
      abb122(170)=abb122(169)*abb122(56)
      abb122(164)=abb122(164)-abb122(170)
      abb122(164)=abb122(164)*abb122(10)
      abb122(170)=abb122(118)*abb122(52)
      abb122(121)=abb122(121)-abb122(164)-abb122(170)
      abb122(164)=abb122(167)*abb122(8)
      abb122(170)=abb122(164)*abb122(54)
      abb122(166)=abb122(166)+abb122(170)+abb122(121)
      abb122(166)=es34*abb122(166)
      abb122(13)=spak1k2*abb122(13)
      abb122(64)=abb122(13)*abb122(64)
      abb122(111)=abb122(64)*abb122(111)
      abb122(170)=abb122(64)*abb122(33)
      abb122(171)=abb122(170)*abb122(108)
      abb122(111)=abb122(111)-abb122(171)
      abb122(111)=abb122(111)*abb122(76)
      abb122(171)=abb122(33)*abb122(13)
      abb122(78)=abb122(78)*abb122(171)
      abb122(116)=-abb122(78)*abb122(116)
      abb122(114)=abb122(13)*abb122(114)
      abb122(114)=-abb122(64)+abb122(114)
      abb122(113)=abb122(3)*abb122(114)*abb122(113)
      abb122(69)=abb122(170)*abb122(69)
      abb122(69)=abb122(113)+abb122(69)+abb122(116)
      abb122(69)=spak2l6*abb122(69)
      abb122(69)=abb122(69)+abb122(111)
      abb122(69)=abb122(8)*abb122(69)
      abb122(111)=abb122(76)*abb122(120)
      abb122(113)=-spbk7l5*abb122(111)
      abb122(114)=-abb122(141)*abb122(156)
      abb122(116)=abb122(135)*spak2l6
      abb122(135)=spbl6l5*abb122(116)
      abb122(113)=abb122(135)+abb122(114)+abb122(113)
      abb122(113)=spak1k3*abb122(113)
      abb122(114)=-spbl6l5*abb122(132)
      abb122(93)=abb122(114)+abb122(93)
      abb122(93)=spak3l5*abb122(93)
      abb122(114)=spak3l6*abb122(137)*abb122(61)
      abb122(135)=abb122(13)*abb122(20)
      abb122(172)=abb122(135)*abb122(33)
      abb122(95)=abb122(172)*abb122(95)
      abb122(78)=-abb122(78)*abb122(169)
      abb122(78)=abb122(78)+abb122(95)
      abb122(78)=abb122(10)*abb122(78)
      abb122(20)=-abb122(99)*abb122(20)
      abb122(20)=abb122(96)+abb122(20)
      abb122(20)=abb122(10)*abb122(13)*abb122(3)*abb122(20)
      abb122(50)=-abb122(3)*abb122(50)*abb122(64)
      abb122(20)=abb122(50)+abb122(20)
      abb122(20)=abb122(20)*abb122(25)
      abb122(50)=abb122(170)*abb122(52)
      abb122(20)=abb122(93)+abb122(114)+abb122(166)+abb122(113)+abb122(20)+abb1&
      &22(50)+abb122(78)+abb122(69)+abb122(161)
      abb122(20)=8.0_ki*abb122(20)
      abb122(50)=abb122(135)*abb122(47)
      abb122(64)=abb122(172)*abb122(52)
      abb122(50)=abb122(50)-abb122(64)
      abb122(64)=2.0_ki*abb122(123)
      abb122(69)=abb122(64)*es34
      abb122(78)=abb122(157)*spbk4k2
      abb122(93)=abb122(78)*abb122(142)
      abb122(95)=spak1k3*spbk7l5
      abb122(96)=abb122(95)*abb122(102)
      abb122(50)=2.0_ki*abb122(50)-abb122(96)+abb122(69)-abb122(93)
      abb122(50)=16.0_ki*abb122(50)
      abb122(69)=abb122(70)*abb122(91)*abb122(33)
      abb122(91)=abb122(91)*abb122(9)*abb122(3)
      abb122(14)=abb122(91)-abb122(14)
      abb122(14)=abb122(14)*abb122(25)
      abb122(14)=-abb122(69)+abb122(14)+abb122(140)
      abb122(69)=abb122(14)*abb122(130)
      abb122(91)=abb122(107)*abb122(49)
      abb122(69)=abb122(91)-abb122(69)
      abb122(91)=spbk4k2*abb122(69)
      abb122(93)=-abb122(68)*abb122(95)
      abb122(96)=2.0_ki*spak3l6
      abb122(43)=-abb122(43)*abb122(96)
      abb122(43)=abb122(43)+abb122(93)+abb122(91)
      abb122(43)=16.0_ki*abb122(43)
      abb122(91)=-spbk7l5*abb122(90)
      abb122(91)=abb122(91)-abb122(119)
      abb122(91)=spak1k3*abb122(91)
      abb122(31)=-abb122(31)*mB*abb122(171)
      abb122(13)=abb122(13)*abb122(86)
      abb122(13)=abb122(31)+abb122(13)
      abb122(31)=c2*abb122(33)
      abb122(31)=abb122(48)-abb122(31)
      abb122(12)=abb122(130)*abb122(12)*abb122(31)
      abb122(31)=spbk4k2*abb122(12)
      abb122(33)=-spbl6l5*abb122(136)*abb122(78)
      abb122(86)=2.0_ki*abb122(152)
      abb122(93)=-es34*abb122(86)
      abb122(13)=abb122(93)+abb122(91)+abb122(33)+2.0_ki*abb122(13)+abb122(31)
      abb122(13)=8.0_ki*abb122(13)
      abb122(31)=abb122(76)*abb122(49)
      abb122(33)=abb122(152)*spak2l6
      abb122(31)=abb122(31)+abb122(33)
      abb122(33)=8.0_ki*spbk4k2
      abb122(33)=abb122(31)*abb122(33)
      abb122(49)=8.0_ki*abb122(153)
      abb122(76)=spbk4k2*abb122(49)
      abb122(17)=abb122(151)*abb122(17)
      abb122(17)=abb122(17)-abb122(158)
      abb122(17)=abb122(25)*abb122(17)*abb122(39)
      abb122(42)=abb122(154)*abb122(42)
      abb122(91)=abb122(124)*abb122(44)
      abb122(17)=abb122(17)+abb122(91)-abb122(42)
      abb122(42)=-spbk4k2*abb122(17)
      abb122(91)=-abb122(78)*abb122(101)
      abb122(42)=abb122(42)+abb122(91)
      abb122(42)=8.0_ki*abb122(42)
      abb122(91)=abb122(165)*abb122(37)
      abb122(93)=abb122(167)*abb122(65)
      abb122(91)=abb122(91)+abb122(93)
      abb122(91)=abb122(8)*abb122(91)
      abb122(93)=-spak2k4*abb122(121)
      abb122(99)=-es12*abb122(162)
      abb122(91)=-abb122(150)+abb122(91)+abb122(99)+abb122(93)-abb122(138)
      abb122(91)=spbk4k3*abb122(91)
      abb122(93)=abb122(164)*spak2k4
      abb122(93)=abb122(93)-abb122(162)
      abb122(93)=abb122(93)*spbk4k3
      abb122(99)=abb122(112)*abb122(15)
      abb122(22)=abb122(22)*abb122(9)
      abb122(22)=abb122(99)-abb122(22)
      abb122(22)=abb122(22)*abb122(25)
      abb122(99)=abb122(29)*abb122(128)
      abb122(34)=abb122(34)*abb122(70)
      abb122(22)=abb122(22)+abb122(34)-abb122(99)
      abb122(34)=abb122(22)*spbk7l5
      abb122(70)=abb122(93)-abb122(34)
      abb122(70)=-abb122(70)*abb122(54)
      abb122(40)=-spbk4k3*abb122(40)
      abb122(41)=spak2l6*abb122(41)
      abb122(40)=abb122(41)+abb122(40)
      abb122(40)=spbl6l5*abb122(40)
      abb122(29)=c2*abb122(29)
      abb122(41)=-abb122(28)*abb122(30)
      abb122(29)=abb122(29)+abb122(41)
      abb122(29)=abb122(10)*abb122(29)
      abb122(16)=-abb122(16)*abb122(15)
      abb122(41)=abb122(10)*abb122(105)
      abb122(16)=abb122(16)+abb122(41)
      abb122(16)=abb122(16)*abb122(100)
      abb122(16)=abb122(29)+abb122(16)
      abb122(16)=abb122(16)*abb122(156)
      abb122(29)=-es12*abb122(34)
      abb122(41)=-spbk7l6*abb122(137)*spak2l6**2
      abb122(16)=abb122(40)+abb122(41)+abb122(16)+abb122(29)+abb122(70)+abb122(&
      &91)
      abb122(16)=8.0_ki*abb122(16)
      abb122(29)=abb122(64)*spak2k4
      abb122(29)=abb122(29)-abb122(160)
      abb122(29)=abb122(29)*spbk4k3
      abb122(28)=abb122(28)*c2
      abb122(15)=abb122(48)*abb122(15)
      abb122(15)=abb122(15)-abb122(28)
      abb122(28)=abb122(15)*abb122(156)
      abb122(28)=abb122(29)+abb122(28)
      abb122(28)=16.0_ki*abb122(28)
      abb122(29)=-spbk4k3*abb122(69)
      abb122(40)=abb122(79)*abb122(61)
      abb122(29)=-abb122(34)+2.0_ki*abb122(40)+abb122(29)
      abb122(29)=16.0_ki*abb122(29)
      abb122(34)=spak2k4*abb122(86)
      abb122(12)=abb122(34)-abb122(12)
      abb122(12)=spbk4k3*abb122(12)
      abb122(34)=-spak2l6*abb122(15)
      abb122(40)=abb122(157)*spbk4k3
      abb122(41)=abb122(136)*abb122(40)
      abb122(34)=abb122(34)+abb122(41)
      abb122(34)=spbl6l5*abb122(34)
      abb122(41)=spbk7l5*spak1k2*abb122(90)
      abb122(12)=abb122(34)+abb122(41)+abb122(12)
      abb122(12)=8.0_ki*abb122(12)
      abb122(31)=-8.0_ki*spbk4k3*abb122(31)
      abb122(34)=-spbk4k3*abb122(49)
      abb122(17)=spbk4k3*abb122(17)
      abb122(41)=abb122(40)*abb122(101)
      abb122(17)=abb122(17)+abb122(41)
      abb122(17)=8.0_ki*abb122(17)
      abb122(41)=8.0_ki*abb122(74)
      abb122(48)=8.0_ki*abb122(132)
      abb122(49)=8.0_ki*abb122(62)
      abb122(35)=abb122(26)*abb122(35)
      abb122(61)=-abb122(7)*abb122(98)
      abb122(58)=abb122(58)*abb122(18)
      abb122(58)=abb122(61)+abb122(58)
      abb122(58)=abb122(58)*abb122(25)
      abb122(35)=abb122(58)+abb122(35)-abb122(117)
      abb122(35)=abb122(35)*abb122(65)
      abb122(58)=-abb122(24)*abb122(97)
      abb122(35)=abb122(58)+abb122(35)
      abb122(35)=spak1l6*abb122(35)
      abb122(58)=abb122(127)*abb122(73)*abb122(168)
      abb122(61)=abb122(127)*abb122(118)
      abb122(69)=abb122(61)*abb122(71)
      abb122(58)=abb122(58)-abb122(69)
      abb122(69)=-abb122(58)*abb122(75)
      abb122(58)=abb122(58)*abb122(77)
      abb122(30)=abb122(30)*abb122(56)
      abb122(56)=-abb122(122)*abb122(163)
      abb122(30)=abb122(30)+abb122(56)
      abb122(30)=abb122(81)*abb122(127)*abb122(30)
      abb122(30)=abb122(30)+abb122(58)
      abb122(30)=abb122(8)*abb122(30)
      abb122(52)=abb122(26)*abb122(52)
      abb122(47)=-abb122(92)*abb122(47)
      abb122(47)=abb122(52)+abb122(47)
      abb122(47)=abb122(47)*abb122(65)
      abb122(52)=abb122(51)*abb122(97)
      abb122(47)=abb122(47)+abb122(52)
      abb122(47)=spak1k7*abb122(47)
      abb122(30)=abb122(47)+abb122(30)+abb122(69)+abb122(35)
      abb122(30)=8.0_ki*abb122(30)
      abb122(35)=abb122(24)*abb122(106)
      abb122(47)=abb122(68)*spbl5k2
      abb122(52)=abb122(47)*spak1k4
      abb122(56)=abb122(60)*spal6k7
      abb122(58)=abb122(130)*abb122(56)
      abb122(69)=2.0_ki*abb122(51)
      abb122(70)=abb122(69)*spak4k7
      abb122(35)=abb122(70)-abb122(52)+abb122(58)-abb122(35)
      abb122(35)=16.0_ki*abb122(35)
      abb122(52)=-abb122(51)*abb122(133)
      abb122(58)=8.0_ki*abb122(53)
      abb122(70)=abb122(24)*abb122(133)
      abb122(71)=-8.0_ki*abb122(143)
      abb122(18)=abb122(151)*abb122(18)
      abb122(18)=abb122(18)-abb122(159)
      abb122(18)=abb122(18)*abb122(25)
      abb122(18)=abb122(18)+abb122(125)-abb122(155)
      abb122(18)=abb122(18)*abb122(106)
      abb122(64)=abb122(64)*spak4k7
      abb122(18)=abb122(18)+abb122(64)
      abb122(14)=abb122(14)*spak1k4
      abb122(64)=-spbl5k2*abb122(14)
      abb122(64)=abb122(64)-abb122(18)
      abb122(64)=spbk4k2*abb122(64)
      abb122(47)=-spak1k3*abb122(47)
      abb122(73)=abb122(130)*abb122(78)
      abb122(60)=abb122(60)*abb122(95)
      abb122(60)=abb122(73)+abb122(60)
      abb122(60)=spal6k7*abb122(60)
      abb122(24)=-abb122(24)*abb122(96)
      abb122(69)=spak3k7*abb122(69)
      abb122(24)=abb122(69)+abb122(24)+abb122(60)+abb122(47)+abb122(64)
      abb122(24)=8.0_ki*abb122(24)
      abb122(14)=spbk4k3*abb122(14)
      abb122(14)=abb122(14)-abb122(22)
      abb122(14)=spbl5k2*abb122(14)
      abb122(18)=spbk4k3*abb122(18)
      abb122(19)=-2.0_ki*abb122(23)+abb122(19)
      abb122(19)=abb122(19)*abb122(25)
      abb122(19)=abb122(19)+2.0_ki*abb122(36)-abb122(32)
      abb122(19)=spak2l6*abb122(19)
      abb122(15)=spbk7l5*abb122(15)
      abb122(22)=-abb122(130)*abb122(40)
      abb122(15)=abb122(15)+abb122(22)
      abb122(15)=spal6k7*abb122(15)
      abb122(14)=abb122(15)+abb122(14)+abb122(19)+abb122(18)+abb122(72)-abb122(&
      &83)
      abb122(14)=8.0_ki*abb122(14)
      abb122(15)=-abb122(61)*abb122(108)
      abb122(18)=abb122(127)*abb122(110)
      abb122(15)=abb122(15)+abb122(18)
      abb122(15)=8.0_ki*abb122(8)*abb122(15)*abb122(80)
      abb122(18)=abb122(98)*abb122(39)
      abb122(18)=abb122(18)-abb122(134)
      abb122(18)=abb122(18)*abb122(25)
      abb122(19)=abb122(26)*abb122(44)
      abb122(18)=abb122(18)-abb122(19)+abb122(59)
      abb122(18)=abb122(129)*abb122(18)*abb122(46)
      abb122(19)=-abb122(104)*abb122(133)
      abb122(22)=abb122(51)*spak3k4
      abb122(22)=16.0_ki*abb122(22)
      abb122(23)=-abb122(141)*abb122(37)
      abb122(25)=abb122(120)*abb122(65)
      abb122(23)=abb122(23)+abb122(25)
      abb122(23)=spbl5k2*abb122(23)
      abb122(25)=spak3k4*abb122(111)
      abb122(26)=abb122(141)*abb122(80)
      abb122(25)=abb122(26)+abb122(25)
      abb122(25)=spbl5k3*abb122(25)
      abb122(26)=-abb122(120)*abb122(45)*abb122(54)
      abb122(23)=abb122(25)+abb122(23)+abb122(26)
      abb122(23)=8.0_ki*abb122(23)
      abb122(25)=-abb122(102)*abb122(46)
      abb122(26)=16.0_ki*abb122(25)
      abb122(32)=abb122(46)*abb122(68)
      abb122(36)=16.0_ki*abb122(32)
      abb122(37)=abb122(90)*abb122(84)
      abb122(39)=-abb122(84)*abb122(56)
      abb122(40)=-abb122(116)*abb122(84)
      abb122(25)=-8.0_ki*abb122(25)
      abb122(44)=spbk7k1*abb122(85)
      abb122(45)=abb122(62)*spbl5k1
      abb122(46)=-spak3k4*abb122(45)
      abb122(47)=-spbl6k1*abb122(126)
      abb122(44)=abb122(47)+abb122(44)+abb122(46)
      abb122(44)=8.0_ki*abb122(44)
      abb122(45)=spak2k4*abb122(45)
      abb122(46)=-abb122(82)-abb122(66)
      abb122(46)=spak2k4*abb122(46)
      abb122(46)=-abb122(146)+abb122(46)
      abb122(46)=spbk7k1*abb122(46)
      abb122(47)=spbl6k1*spak2l6*abb122(53)
      abb122(45)=abb122(47)+abb122(46)+abb122(45)
      abb122(45)=8.0_ki*abb122(45)
      abb122(32)=-8.0_ki*abb122(32)
      R2d122=0.0_ki
      rat2 = rat2 + R2d122
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='122' value='", &
          & R2d122, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd122h1
