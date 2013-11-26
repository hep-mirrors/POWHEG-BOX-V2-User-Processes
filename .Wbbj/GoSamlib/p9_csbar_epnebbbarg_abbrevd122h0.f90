module     p9_csbar_epnebbbarg_abbrevd122h0
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(121), public :: abb122
   complex(ki), public :: R2d122
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p9_csbar_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_color, only: TR
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb122(1)=1.0_ki/(-mB**2+es67)
      abb122(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb122(3)=NC**(-1)
      abb122(4)=es234**(-1)
      abb122(5)=spbl6k2**(-1)
      abb122(6)=spak2l5**(-1)
      abb122(7)=spbl5k2**(-1)
      abb122(8)=spak2l6**(-1)
      abb122(9)=sqrt(mB**2)
      abb122(10)=abb122(3)**2
      abb122(11)=abb122(10)*c2
      abb122(12)=abb122(1)*spak2k4**2
      abb122(13)=TR*gW
      abb122(13)=abb122(13)**2*i_*CVSC*abb122(4)*abb122(2)
      abb122(14)=abb122(13)*abb122(7)
      abb122(15)=abb122(11)*abb122(12)*abb122(14)
      abb122(16)=mB**2
      abb122(17)=abb122(16)*abb122(9)
      abb122(18)=spbk4k3*spal6e7
      abb122(19)=abb122(17)*abb122(18)
      abb122(20)=abb122(15)*abb122(19)
      abb122(21)=abb122(12)*c3
      abb122(22)=abb122(21)*abb122(14)
      abb122(23)=abb122(19)*abb122(22)
      abb122(24)=2.0_ki*abb122(3)
      abb122(25)=abb122(24)-NC
      abb122(26)=abb122(25)*abb122(23)
      abb122(20)=abb122(20)-abb122(26)
      abb122(20)=abb122(20)*spbe7k1
      abb122(26)=spbe7k2*abb122(5)
      abb122(27)=abb122(26)*spbk4k3
      abb122(28)=abb122(27)*NC
      abb122(29)=abb122(28)*abb122(21)
      abb122(30)=abb122(12)*abb122(27)
      abb122(31)=abb122(30)*abb122(11)
      abb122(29)=abb122(29)+abb122(31)
      abb122(31)=mB**3
      abb122(32)=-abb122(29)*abb122(31)*abb122(14)
      abb122(33)=abb122(31)*abb122(24)
      abb122(34)=abb122(27)*abb122(22)*abb122(33)
      abb122(32)=abb122(34)+abb122(32)
      abb122(34)=spbk7k1*spae7k7
      abb122(35)=abb122(32)*abb122(34)
      abb122(20)=abb122(20)-abb122(35)
      abb122(35)=abb122(6)*spbk2k1
      abb122(36)=-abb122(35)*abb122(20)
      abb122(37)=-abb122(25)*abb122(22)
      abb122(37)=abb122(37)+abb122(15)
      abb122(38)=abb122(31)*abb122(18)
      abb122(39)=abb122(38)*abb122(26)
      abb122(37)=abb122(39)*abb122(37)
      abb122(40)=abb122(37)*abb122(8)
      abb122(41)=spbl5k1*spbk2k1
      abb122(42)=abb122(41)*abb122(40)
      abb122(36)=abb122(42)+abb122(36)
      abb122(36)=spak1l5*abb122(36)
      abb122(42)=abb122(26)*abb122(9)
      abb122(43)=abb122(42)*abb122(16)
      abb122(44)=abb122(43)*abb122(24)
      abb122(45)=spak2k4*abb122(1)
      abb122(46)=abb122(13)*abb122(45)*c3
      abb122(47)=abb122(46)*abb122(7)
      abb122(48)=abb122(18)*abb122(47)
      abb122(49)=abb122(44)*abb122(48)
      abb122(10)=abb122(10)*abb122(45)
      abb122(45)=abb122(10)*abb122(14)
      abb122(50)=c2*abb122(45)
      abb122(51)=abb122(47)*NC
      abb122(51)=abb122(50)+abb122(51)
      abb122(52)=abb122(51)*abb122(18)
      abb122(53)=abb122(43)*abb122(52)
      abb122(49)=abb122(49)-abb122(53)
      abb122(49)=abb122(49)*spbl6k1
      abb122(53)=spal6e7*mB
      abb122(54)=abb122(53)*spbk4k3
      abb122(55)=abb122(54)*abb122(51)
      abb122(56)=abb122(3)*mB
      abb122(57)=2.0_ki*abb122(56)
      abb122(58)=abb122(48)*abb122(57)
      abb122(55)=abb122(55)-abb122(58)
      abb122(58)=abb122(9)**2
      abb122(59)=spbe7k1*abb122(55)*abb122(58)
      abb122(60)=abb122(24)*abb122(47)
      abb122(60)=abb122(51)-abb122(60)
      abb122(61)=abb122(17)*abb122(27)
      abb122(62)=abb122(61)*abb122(60)
      abb122(63)=abb122(62)*abb122(34)
      abb122(49)=abb122(49)+abb122(59)+abb122(63)
      abb122(59)=spak1k4*spbk2k1
      abb122(63)=abb122(49)*abb122(59)
      abb122(64)=abb122(46)*mB
      abb122(65)=-abb122(64)*abb122(25)
      abb122(66)=-abb122(27)*abb122(65)
      abb122(67)=abb122(10)*c2
      abb122(68)=abb122(13)*spbk4k3
      abb122(69)=abb122(67)*abb122(68)
      abb122(70)=abb122(26)*mB
      abb122(71)=abb122(69)*abb122(70)
      abb122(66)=abb122(66)-abb122(71)
      abb122(71)=abb122(66)*abb122(34)
      abb122(72)=abb122(46)*spal6e7
      abb122(73)=abb122(9)*spbk4k3
      abb122(74)=abb122(73)*abb122(72)
      abb122(75)=-abb122(74)*abb122(25)
      abb122(76)=abb122(13)*spal6e7
      abb122(77)=abb122(67)*abb122(76)
      abb122(73)=abb122(77)*abb122(73)
      abb122(73)=abb122(75)+abb122(73)
      abb122(75)=abb122(73)*spbe7k1
      abb122(71)=abb122(71)-abb122(75)
      abb122(75)=abb122(71)*spak1l5
      abb122(78)=abb122(57)*abb122(27)
      abb122(28)=mB*abb122(28)
      abb122(28)=-abb122(78)+abb122(28)
      abb122(28)=abb122(72)*abb122(28)
      abb122(78)=abb122(27)*abb122(76)
      abb122(79)=abb122(67)*mB
      abb122(80)=abb122(78)*abb122(79)
      abb122(28)=abb122(80)+abb122(28)
      abb122(80)=spbl6k1*spak1l5
      abb122(81)=abb122(80)*abb122(28)
      abb122(75)=abb122(75)+abb122(81)
      abb122(81)=-spak4l5*spbl5k1*abb122(75)
      abb122(82)=abb122(26)*spbk3k2
      abb122(83)=-abb122(82)*abb122(65)
      abb122(84)=abb122(10)*spbk3k2
      abb122(85)=abb122(84)*c2
      abb122(86)=abb122(13)*mB
      abb122(87)=abb122(85)*abb122(86)
      abb122(88)=abb122(87)*abb122(26)
      abb122(83)=abb122(83)-abb122(88)
      abb122(88)=abb122(83)*abb122(34)
      abb122(89)=abb122(72)*spbk3k2
      abb122(90)=abb122(89)*NC
      abb122(85)=abb122(85)*abb122(76)
      abb122(85)=abb122(90)+abb122(85)
      abb122(90)=abb122(9)*abb122(85)
      abb122(91)=abb122(89)*abb122(9)
      abb122(92)=abb122(91)*abb122(24)
      abb122(90)=abb122(90)-abb122(92)
      abb122(92)=abb122(90)*spbe7k1
      abb122(88)=abb122(88)-abb122(92)
      abb122(92)=abb122(88)*spak1l5
      abb122(70)=-abb122(70)*abb122(85)
      abb122(93)=abb122(26)*abb122(89)*abb122(57)
      abb122(70)=abb122(93)+abb122(70)
      abb122(80)=abb122(80)*abb122(70)
      abb122(80)=abb122(92)-abb122(80)
      abb122(92)=-spak2l5*spbl5k1*abb122(80)
      abb122(93)=abb122(50)*spbk3k2
      abb122(94)=abb122(47)*spbk3k2
      abb122(95)=abb122(94)*NC
      abb122(93)=abb122(93)+abb122(95)
      abb122(43)=abb122(43)*abb122(93)
      abb122(96)=abb122(44)*abb122(94)
      abb122(96)=abb122(96)-abb122(43)
      abb122(97)=abb122(96)*abb122(34)
      abb122(98)=-es12*abb122(97)
      abb122(43)=abb122(43)*spal6e7
      abb122(99)=abb122(94)*spal6e7
      abb122(44)=abb122(44)*abb122(99)
      abb122(43)=abb122(43)-abb122(44)
      abb122(44)=-es12*abb122(43)
      abb122(100)=spak1l5*abb122(37)*abb122(35)
      abb122(44)=abb122(44)+abb122(100)
      abb122(44)=spbl6k1*abb122(44)
      abb122(100)=abb122(7)**2
      abb122(101)=abb122(100)*abb122(31)
      abb122(102)=NC*abb122(101)
      abb122(103)=abb122(33)*abb122(100)
      abb122(102)=-abb122(103)+abb122(102)
      abb122(104)=abb122(72)*spbk4k3
      abb122(102)=abb122(104)*abb122(102)
      abb122(77)=spbk4k3*abb122(77)*abb122(101)
      abb122(77)=abb122(77)+abb122(102)
      abb122(102)=abb122(35)*es12
      abb122(105)=abb122(77)*abb122(102)
      abb122(106)=-spbe7l6*abb122(105)
      abb122(107)=abb122(55)*spbe7l6
      abb122(108)=abb122(41)*spak1l5
      abb122(109)=-abb122(108)*abb122(107)
      abb122(106)=abb122(106)+abb122(109)
      abb122(106)=spak4l6*abb122(106)
      abb122(85)=abb122(101)*abb122(85)
      abb122(101)=abb122(103)*abb122(89)
      abb122(85)=abb122(85)-abb122(101)
      abb122(101)=abb122(85)*abb122(102)
      abb122(103)=-spbe7l6*abb122(101)
      abb122(109)=abb122(53)*abb122(93)
      abb122(110)=abb122(99)*abb122(57)
      abb122(109)=abb122(109)-abb122(110)
      abb122(110)=abb122(109)*spbe7l6
      abb122(111)=-abb122(110)*abb122(108)
      abb122(103)=abb122(103)+abb122(111)
      abb122(103)=spak2l6*abb122(103)
      abb122(105)=spbk7e7*abb122(105)
      abb122(111)=abb122(55)*spbk7e7
      abb122(112)=abb122(108)*abb122(111)
      abb122(105)=abb122(105)+abb122(112)
      abb122(105)=spak4k7*abb122(105)
      abb122(101)=spbk7e7*abb122(101)
      abb122(112)=abb122(109)*spbk7e7
      abb122(108)=abb122(112)*abb122(108)
      abb122(101)=abb122(101)+abb122(108)
      abb122(101)=spak2k7*abb122(101)
      abb122(108)=spak2l5*abb122(96)
      abb122(113)=-spak4l5*abb122(62)
      abb122(108)=abb122(108)+abb122(113)
      abb122(108)=abb122(41)*abb122(108)
      abb122(113)=abb122(68)*abb122(12)*abb122(11)
      abb122(114)=abb122(21)*abb122(68)
      abb122(115)=-abb122(114)*abb122(25)
      abb122(115)=abb122(113)+abb122(115)
      abb122(116)=abb122(42)*abb122(100)*mB**4
      abb122(117)=spbk2k1**2
      abb122(115)=abb122(6)*abb122(117)*abb122(116)*abb122(115)
      abb122(108)=abb122(115)+abb122(108)
      abb122(108)=spak1e7*abb122(108)
      abb122(115)=spbl5k1*abb122(96)*es12
      abb122(41)=-spak1k4*abb122(62)*abb122(41)
      abb122(41)=abb122(115)+abb122(41)
      abb122(41)=spal5e7*abb122(41)
      abb122(58)=abb122(109)*abb122(58)
      abb122(115)=es12*spbe7k1
      abb122(118)=abb122(58)*abb122(115)
      abb122(29)=abb122(29)*abb122(76)
      abb122(78)=abb122(78)*abb122(21)
      abb122(119)=abb122(24)*abb122(78)
      abb122(29)=abb122(119)-abb122(29)
      abb122(29)=abb122(29)*abb122(100)*mB**5
      abb122(100)=-abb122(8)*abb122(29)*abb122(102)
      abb122(36)=abb122(41)+abb122(108)+abb122(101)+abb122(105)+abb122(103)+abb&
      &122(106)+abb122(92)+abb122(81)+abb122(63)+abb122(44)+abb122(36)+abb122(9&
      &8)+abb122(118)+abb122(100)
      abb122(36)=4.0_ki*abb122(36)
      abb122(17)=abb122(17)*abb122(5)
      abb122(41)=abb122(31)*abb122(5)
      abb122(44)=abb122(17)-abb122(41)
      abb122(63)=-abb122(25)*abb122(94)*abb122(44)
      abb122(44)=abb122(44)*c2
      abb122(81)=abb122(84)*abb122(14)
      abb122(92)=abb122(81)*abb122(44)
      abb122(63)=abb122(92)+abb122(63)
      abb122(63)=abb122(63)*spbk2k1
      abb122(92)=-es12*abb122(63)
      abb122(98)=abb122(41)*spbk4k3
      abb122(100)=abb122(17)*spbk4k3
      abb122(101)=abb122(100)-abb122(98)
      abb122(101)=abb122(25)*abb122(47)*abb122(101)
      abb122(102)=abb122(10)*spbk4k3
      abb122(14)=abb122(102)*abb122(14)
      abb122(44)=abb122(14)*abb122(44)
      abb122(44)=-abb122(44)+abb122(101)
      abb122(101)=abb122(117)*spak1k4
      abb122(103)=abb122(44)*abb122(101)
      abb122(105)=mB*abb122(93)
      abb122(106)=abb122(57)*abb122(94)
      abb122(105)=abb122(105)-abb122(106)
      abb122(106)=-es12*abb122(105)
      abb122(108)=spbk4k3*mB
      abb122(117)=-abb122(108)*abb122(51)
      abb122(57)=spbk4k3*abb122(57)*abb122(47)
      abb122(57)=abb122(57)+abb122(117)
      abb122(59)=abb122(57)*abb122(59)
      abb122(59)=abb122(106)+abb122(59)
      abb122(59)=spal6k7*spbk7k1*abb122(59)
      abb122(59)=abb122(59)+abb122(92)+abb122(103)
      abb122(59)=8.0_ki*abb122(59)
      abb122(92)=abb122(55)*spbk2k1
      abb122(103)=spak1k4*spbe7k1
      abb122(106)=abb122(103)*abb122(92)
      abb122(117)=abb122(109)*abb122(115)
      abb122(106)=abb122(106)+abb122(117)
      abb122(106)=8.0_ki*abb122(106)
      abb122(117)=-spbl6k1*abb122(28)
      abb122(71)=abb122(117)-abb122(71)
      abb122(71)=spak4l5*abb122(71)
      abb122(117)=spbl6k1*abb122(70)
      abb122(88)=abb122(117)-abb122(88)
      abb122(88)=spak2l5*abb122(88)
      abb122(71)=abb122(71)+abb122(88)
      abb122(71)=8.0_ki*abb122(71)
      abb122(88)=spak4l6*spbe7l6
      abb122(117)=spak4k7*spbk7e7
      abb122(88)=abb122(88)-abb122(117)
      abb122(77)=-abb122(77)*abb122(88)
      abb122(117)=spak2l6*spbe7l6
      abb122(118)=spak2k7*spbk7e7
      abb122(117)=abb122(117)-abb122(118)
      abb122(85)=-abb122(85)*abb122(117)
      abb122(118)=abb122(46)*spbk4k3
      abb122(119)=abb122(118)*abb122(25)
      abb122(119)=-abb122(69)+abb122(119)
      abb122(116)=spak4e7*abb122(116)*abb122(119)
      abb122(77)=abb122(116)+abb122(85)+abb122(77)
      abb122(77)=abb122(35)*abb122(77)
      abb122(85)=abb122(41)*abb122(24)
      abb122(116)=abb122(85)*abb122(99)
      abb122(119)=abb122(41)*abb122(93)
      abb122(120)=abb122(119)*spal6e7
      abb122(116)=abb122(116)-abb122(120)
      abb122(120)=-abb122(116)*abb122(115)
      abb122(29)=-abb122(29)*abb122(35)
      abb122(29)=abb122(120)+abb122(29)
      abb122(29)=abb122(8)*abb122(29)
      abb122(35)=-spbl6k1*abb122(43)
      abb122(43)=abb122(85)*abb122(48)
      abb122(52)=abb122(41)*abb122(52)
      abb122(43)=abb122(43)-abb122(52)
      abb122(52)=abb122(8)*spbk2k1
      abb122(85)=-abb122(43)*abb122(103)*abb122(52)
      abb122(58)=spbe7k1*abb122(58)
      abb122(29)=abb122(85)+abb122(35)-abb122(97)+abb122(58)+abb122(29)+abb122(&
      &77)
      abb122(29)=8.0_ki*abb122(29)
      abb122(35)=abb122(105)*spal6k7
      abb122(58)=-spbk7k1*abb122(35)
      abb122(58)=-abb122(63)+abb122(58)
      abb122(58)=16.0_ki*abb122(58)
      abb122(63)=16.0_ki*spbe7k1
      abb122(77)=abb122(63)*abb122(109)
      abb122(63)=-abb122(8)*abb122(116)*abb122(63)
      abb122(85)=abb122(105)*abb122(34)
      abb122(97)=abb122(109)*spbl6k1
      abb122(85)=abb122(85)-abb122(97)
      abb122(97)=es12*abb122(85)
      abb122(34)=abb122(57)*abb122(34)
      abb122(116)=-spbk2k1*abb122(34)
      abb122(120)=-spbl6k1*abb122(92)
      abb122(116)=abb122(116)+abb122(120)
      abb122(116)=spak1k4*abb122(116)
      abb122(120)=abb122(94)*abb122(24)
      abb122(41)=abb122(120)*abb122(41)
      abb122(41)=abb122(41)-abb122(119)
      abb122(119)=es12*abb122(41)*abb122(52)
      abb122(98)=-abb122(60)*abb122(98)
      abb122(101)=abb122(8)*abb122(98)*abb122(101)
      abb122(101)=abb122(119)+abb122(101)
      abb122(101)=spak2e7*abb122(101)
      abb122(97)=abb122(101)+abb122(116)+abb122(97)
      abb122(97)=4.0_ki*abb122(97)
      abb122(52)=abb122(52)*spak2e7
      abb122(41)=abb122(41)*abb122(52)
      abb122(41)=abb122(41)+abb122(85)
      abb122(41)=8.0_ki*abb122(41)
      abb122(85)=abb122(93)-abb122(120)
      abb122(17)=abb122(85)*abb122(17)
      abb122(85)=abb122(17)*abb122(115)
      abb122(60)=-abb122(60)*abb122(100)
      abb122(93)=-spbk2k1*abb122(60)*abb122(103)
      abb122(85)=abb122(85)+abb122(93)
      abb122(85)=4.0_ki*abb122(85)
      abb122(93)=8.0_ki*spbe7k1
      abb122(17)=abb122(17)*abb122(93)
      abb122(100)=8.0_ki*abb122(96)
      abb122(101)=-8.0_ki*abb122(112)
      abb122(103)=8.0_ki*abb122(110)
      abb122(115)=-spak4l6*abb122(107)
      abb122(116)=-spak2l6*abb122(110)
      abb122(119)=-spak4e7*abb122(62)
      abb122(120)=spak4k7*abb122(111)
      abb122(121)=spak2k7*abb122(112)
      abb122(40)=abb122(121)+abb122(120)+abb122(119)+abb122(116)+abb122(115)+ab&
      &b122(40)
      abb122(40)=spbl5k1*abb122(40)
      abb122(37)=spbl6k1*abb122(37)
      abb122(20)=abb122(37)-abb122(20)
      abb122(20)=abb122(6)*abb122(20)
      abb122(20)=abb122(40)+abb122(20)
      abb122(20)=4.0_ki*abb122(20)
      abb122(23)=abb122(23)*spbe7k2
      abb122(37)=abb122(38)*spbe7k2
      abb122(22)=abb122(37)*abb122(22)
      abb122(22)=abb122(23)-abb122(22)
      abb122(22)=-abb122(22)*abb122(25)
      abb122(19)=spbe7k2*abb122(19)
      abb122(19)=-abb122(37)+abb122(19)
      abb122(15)=abb122(19)*abb122(15)
      abb122(19)=spbk7k2*spae7k7
      abb122(23)=-abb122(32)*abb122(19)
      abb122(15)=abb122(23)+abb122(15)+abb122(22)
      abb122(15)=abb122(6)*abb122(15)
      abb122(22)=abb122(108)*abb122(72)
      abb122(22)=abb122(22)-abb122(74)
      abb122(22)=abb122(22)*NC
      abb122(23)=abb122(74)*abb122(3)
      abb122(32)=abb122(104)*abb122(56)
      abb122(23)=abb122(23)-abb122(32)
      abb122(32)=abb122(9)-mB
      abb122(32)=c2*abb122(32)*abb122(76)
      abb122(37)=abb122(102)*abb122(32)
      abb122(22)=-abb122(37)+abb122(22)+2.0_ki*abb122(23)
      abb122(22)=abb122(22)*abb122(88)
      abb122(23)=abb122(89)*mB
      abb122(23)=abb122(23)-abb122(91)
      abb122(23)=abb122(23)*NC
      abb122(37)=abb122(89)*abb122(56)
      abb122(38)=abb122(91)*abb122(3)
      abb122(37)=abb122(37)-abb122(38)
      abb122(32)=abb122(84)*abb122(32)
      abb122(23)=abb122(32)-abb122(23)+2.0_ki*abb122(37)
      abb122(23)=-abb122(23)*abb122(117)
      abb122(32)=spak4l5*abb122(28)
      abb122(37)=-spak2l5*abb122(70)
      abb122(32)=abb122(32)+abb122(37)
      abb122(32)=spbl6l5*abb122(32)
      abb122(37)=abb122(78)*abb122(31)
      abb122(38)=abb122(61)*abb122(76)
      abb122(21)=abb122(38)*abb122(21)
      abb122(21)=abb122(37)-abb122(21)
      abb122(21)=abb122(21)*abb122(25)
      abb122(30)=-abb122(31)*abb122(76)*abb122(30)
      abb122(12)=abb122(12)*abb122(38)
      abb122(12)=abb122(30)+abb122(12)
      abb122(11)=abb122(12)*abb122(11)
      abb122(11)=abb122(11)+abb122(21)
      abb122(11)=abb122(8)*abb122(11)
      abb122(12)=abb122(16)*abb122(26)
      abb122(21)=abb122(12)*abb122(118)
      abb122(27)=abb122(9)*abb122(27)*abb122(64)
      abb122(21)=abb122(27)-abb122(21)
      abb122(27)=NC*abb122(9)
      abb122(30)=2.0_ki*abb122(9)
      abb122(37)=abb122(30)*abb122(3)
      abb122(37)=-abb122(27)+abb122(37)
      abb122(21)=abb122(21)*abb122(37)
      abb122(12)=abb122(10)*abb122(12)
      abb122(37)=abb122(10)*mB
      abb122(38)=-abb122(42)*abb122(37)
      abb122(12)=abb122(12)+abb122(38)
      abb122(38)=c2*abb122(9)
      abb122(12)=abb122(38)*abb122(68)*abb122(12)
      abb122(12)=abb122(12)+abb122(21)
      abb122(12)=spak4e7*abb122(12)
      abb122(21)=-spak4l5*abb122(73)
      abb122(40)=-spak2l5*abb122(90)
      abb122(21)=abb122(21)+abb122(40)
      abb122(21)=spbe7l5*abb122(21)
      abb122(40)=spak4l5*abb122(66)
      abb122(42)=spak2l5*abb122(83)
      abb122(40)=abb122(40)+abb122(42)
      abb122(40)=spbk7l5*spae7k7*abb122(40)
      abb122(11)=abb122(32)+abb122(40)+abb122(21)+abb122(12)+abb122(11)+abb122(&
      &15)+abb122(23)+abb122(22)
      abb122(11)=4.0_ki*abb122(11)
      abb122(12)=-abb122(3)*abb122(64)
      abb122(15)=abb122(46)*abb122(3)
      abb122(21)=abb122(9)*abb122(15)
      abb122(12)=abb122(12)+abb122(21)
      abb122(12)=spbk3k2*abb122(12)
      abb122(21)=abb122(86)*abb122(84)
      abb122(10)=abb122(10)*abb122(9)
      abb122(13)=abb122(13)*spbk3k2
      abb122(22)=-abb122(13)*abb122(10)
      abb122(21)=abb122(21)+abb122(22)
      abb122(21)=c2*abb122(21)
      abb122(22)=spbk3k2*abb122(64)
      abb122(23)=abb122(46)*spbk3k2
      abb122(32)=-abb122(9)*abb122(23)
      abb122(22)=abb122(22)+abb122(32)
      abb122(22)=NC*abb122(22)
      abb122(12)=abb122(22)+2.0_ki*abb122(12)+abb122(21)
      abb122(12)=spak2l6*abb122(12)
      abb122(21)=abb122(64)*spbk4k3
      abb122(22)=abb122(118)*abb122(9)
      abb122(21)=abb122(21)-abb122(22)
      abb122(21)=-abb122(21)*abb122(25)
      abb122(10)=abb122(37)-abb122(10)
      abb122(10)=c2*abb122(68)*abb122(10)
      abb122(10)=abb122(10)+abb122(21)
      abb122(10)=spak4l6*abb122(10)
      abb122(21)=abb122(65)*spbk3k2*abb122(5)
      abb122(25)=abb122(87)*abb122(5)
      abb122(21)=abb122(25)+abb122(21)
      abb122(25)=-es712+es71+es12
      abb122(25)=abb122(21)*abb122(25)
      abb122(32)=abb122(65)*abb122(5)*spbk4k3
      abb122(37)=abb122(5)*abb122(79)*abb122(68)
      abb122(32)=abb122(37)+abb122(32)
      abb122(37)=spbk7k2*spak4k7*abb122(32)
      abb122(10)=abb122(37)+abb122(12)+abb122(10)+abb122(25)
      abb122(10)=8.0_ki*abb122(10)
      abb122(12)=8.0_ki*spak4e7
      abb122(25)=abb122(12)*abb122(66)
      abb122(37)=-NC*abb122(118)
      abb122(37)=abb122(37)-abb122(69)
      abb122(40)=spbe7k2*abb122(5)**2
      abb122(42)=abb122(40)*abb122(31)
      abb122(37)=abb122(42)*abb122(37)
      abb122(40)=abb122(40)*abb122(33)
      abb122(46)=abb122(118)*abb122(40)
      abb122(37)=abb122(46)+abb122(37)
      abb122(12)=abb122(8)*abb122(37)*abb122(12)
      abb122(22)=-abb122(24)*abb122(22)
      abb122(24)=abb122(9)*abb122(69)
      abb122(37)=abb122(118)*abb122(27)
      abb122(22)=abb122(37)+abb122(22)+abb122(24)
      abb122(22)=spak4e7*abb122(22)
      abb122(15)=-spbk3k2*abb122(15)*abb122(30)
      abb122(13)=abb122(9)*abb122(13)*abb122(67)
      abb122(23)=abb122(23)*abb122(27)
      abb122(13)=abb122(23)+abb122(15)+abb122(13)
      abb122(13)=spak2e7*abb122(13)
      abb122(13)=abb122(22)+abb122(13)
      abb122(13)=4.0_ki*abb122(13)
      abb122(15)=4.0_ki*abb122(73)
      abb122(22)=-NC*abb122(42)
      abb122(22)=abb122(22)+abb122(40)
      abb122(22)=abb122(114)*abb122(22)
      abb122(23)=-abb122(42)*abb122(113)
      abb122(22)=abb122(23)+abb122(22)
      abb122(22)=abb122(8)*abb122(22)
      abb122(23)=abb122(32)*abb122(88)
      abb122(21)=abb122(21)*abb122(117)
      abb122(21)=abb122(22)+abb122(21)+abb122(23)
      abb122(21)=4.0_ki*abb122(21)
      abb122(22)=4.0_ki*abb122(90)
      abb122(23)=4.0_ki*spae7k7
      abb122(24)=abb122(23)*abb122(66)
      abb122(28)=4.0_ki*abb122(28)
      abb122(32)=4.0_ki*abb122(49)
      abb122(37)=spbk2k1*abb122(44)
      abb122(40)=abb122(57)*spal6k7
      abb122(42)=spbk7k1*abb122(40)
      abb122(37)=abb122(37)+abb122(42)
      abb122(37)=8.0_ki*abb122(37)
      abb122(42)=abb122(55)*abb122(93)
      abb122(43)=-abb122(8)*abb122(43)*abb122(93)
      abb122(44)=-spbl6k1*abb122(55)
      abb122(46)=abb122(98)*abb122(52)
      abb122(34)=abb122(46)-abb122(34)+abb122(44)
      abb122(34)=4.0_ki*abb122(34)
      abb122(44)=-4.0_ki*spbe7k1*abb122(60)
      abb122(46)=4.0_ki*abb122(62)
      abb122(49)=4.0_ki*abb122(111)
      abb122(52)=4.0_ki*abb122(107)
      abb122(16)=abb122(16)*spbe7k2
      abb122(18)=abb122(18)*abb122(16)*abb122(45)
      abb122(45)=abb122(9)*spbe7k2
      abb122(53)=abb122(45)*abb122(53)
      abb122(14)=-abb122(14)*abb122(53)
      abb122(14)=abb122(18)+abb122(14)
      abb122(14)=abb122(14)*abb122(38)
      abb122(18)=abb122(39)*abb122(51)
      abb122(33)=abb122(33)*abb122(26)
      abb122(39)=abb122(33)*abb122(48)
      abb122(18)=abb122(18)-abb122(39)
      abb122(18)=abb122(18)*abb122(8)
      abb122(39)=-es12*abb122(18)
      abb122(51)=spak1k7*spbk7e7
      abb122(60)=-spak1l6*spbe7l6
      abb122(51)=abb122(60)+abb122(51)
      abb122(51)=abb122(92)*abb122(51)
      abb122(60)=-spak1e7*spbk2k1
      abb122(60)=abb122(60)-abb122(19)
      abb122(60)=abb122(62)*abb122(60)
      abb122(56)=abb122(45)*abb122(56)
      abb122(61)=abb122(16)*abb122(3)
      abb122(56)=abb122(61)-abb122(56)
      abb122(30)=abb122(56)*abb122(30)
      abb122(56)=-abb122(48)*abb122(30)
      abb122(45)=-abb122(47)*abb122(54)*abb122(45)
      abb122(47)=abb122(48)*abb122(16)
      abb122(45)=abb122(47)+abb122(45)
      abb122(45)=abb122(45)*abb122(27)
      abb122(14)=abb122(39)+abb122(45)+abb122(56)+abb122(14)+abb122(60)+abb122(&
      &51)-abb122(75)
      abb122(14)=4.0_ki*abb122(14)
      abb122(39)=8.0_ki*spbk7k2
      abb122(40)=-abb122(40)*abb122(39)
      abb122(45)=abb122(55)*spbe7k2
      abb122(45)=8.0_ki*abb122(45)
      abb122(47)=-16.0_ki*abb122(18)
      abb122(48)=abb122(57)*abb122(19)
      abb122(51)=spbl6k2*abb122(55)
      abb122(48)=abb122(48)+abb122(51)
      abb122(48)=4.0_ki*abb122(48)
      abb122(51)=-8.0_ki*abb122(62)
      abb122(23)=abb122(23)*abb122(83)
      abb122(54)=4.0_ki*abb122(70)
      abb122(55)=spak1e7*abb122(96)
      abb122(56)=spak1k7*abb122(112)
      abb122(57)=-spak1l6*abb122(110)
      abb122(55)=abb122(57)+abb122(56)+abb122(55)
      abb122(55)=spbk2k1*abb122(55)
      abb122(26)=abb122(95)*abb122(26)
      abb122(50)=abb122(82)*abb122(50)
      abb122(26)=abb122(26)+abb122(50)
      abb122(26)=abb122(26)*abb122(31)*spal6e7
      abb122(31)=abb122(33)*abb122(99)
      abb122(26)=abb122(26)-abb122(31)
      abb122(26)=abb122(26)*abb122(8)
      abb122(31)=-es12*abb122(26)
      abb122(33)=abb122(96)*abb122(19)
      abb122(30)=-abb122(99)*abb122(30)
      abb122(50)=spal6e7*abb122(16)
      abb122(50)=abb122(50)-abb122(53)
      abb122(38)=abb122(38)*abb122(81)*abb122(50)
      abb122(50)=-abb122(94)*abb122(53)
      abb122(16)=abb122(99)*abb122(16)
      abb122(16)=abb122(16)+abb122(50)
      abb122(16)=abb122(16)*abb122(27)
      abb122(16)=abb122(33)+abb122(31)+abb122(16)+abb122(30)+abb122(38)+abb122(&
      &55)-abb122(80)
      abb122(16)=4.0_ki*abb122(16)
      abb122(27)=abb122(35)*abb122(39)
      abb122(30)=abb122(109)*spbe7k2
      abb122(30)=8.0_ki*abb122(30)
      abb122(26)=-8.0_ki*abb122(26)
      abb122(19)=-abb122(105)*abb122(19)
      abb122(31)=spbl6k2*abb122(109)
      abb122(19)=abb122(19)+abb122(31)
      abb122(19)=4.0_ki*abb122(19)
      abb122(31)=4.0_ki*abb122(112)
      abb122(33)=-4.0_ki*abb122(110)
      abb122(18)=4.0_ki*abb122(18)
      R2d122=0.0_ki
      rat2 = rat2 + R2d122
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='122' value='", &
          & R2d122, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd122h0
