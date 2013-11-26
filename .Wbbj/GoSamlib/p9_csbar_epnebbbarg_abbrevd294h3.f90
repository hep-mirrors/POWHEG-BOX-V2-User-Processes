module     p9_csbar_epnebbbarg_abbrevd294h3
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(137), public :: abb294
   complex(ki), public :: R2d294
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
      abb294(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb294(2)=sqrt(mB**2)
      abb294(3)=NC**(-1)
      abb294(4)=spak2l6**(-1)
      abb294(5)=spak2l5**(-1)
      abb294(6)=spbl5k2**(-1)
      abb294(7)=spbl6k2**(-1)
      abb294(8)=TR*gW
      abb294(8)=abb294(8)**2
      abb294(9)=i_*CVSC
      abb294(10)=c1*abb294(1)*abb294(8)*abb294(9)
      abb294(11)=abb294(10)*spak2k4
      abb294(12)=abb294(11)*NC
      abb294(13)=abb294(12)*abb294(2)
      abb294(14)=abb294(8)*abb294(2)
      abb294(15)=abb294(9)*spak2k4
      abb294(16)=abb294(14)*abb294(15)
      abb294(17)=abb294(3)*abb294(1)
      abb294(18)=abb294(17)*c3
      abb294(19)=abb294(16)*abb294(18)
      abb294(13)=abb294(13)+abb294(19)
      abb294(20)=abb294(2)*abb294(3)
      abb294(21)=abb294(20)*abb294(11)
      abb294(22)=abb294(13)-abb294(21)
      abb294(23)=abb294(22)*spbl6k2
      abb294(24)=mB**2
      abb294(25)=abb294(24)*abb294(13)
      abb294(26)=abb294(24)*abb294(11)
      abb294(27)=abb294(26)*abb294(20)
      abb294(25)=abb294(25)-abb294(27)
      abb294(28)=abb294(25)*abb294(4)
      abb294(29)=abb294(28)-abb294(23)
      abb294(30)=spae7k7*spbk7k3
      abb294(31)=spak2k7*spbe7k1
      abb294(32)=abb294(31)*spbk7l5
      abb294(33)=-abb294(32)*abb294(29)*abb294(30)
      abb294(34)=abb294(23)*spbl5k3
      abb294(35)=abb294(28)*spbl5k3
      abb294(34)=abb294(34)-abb294(35)
      abb294(36)=abb294(34)*spak2l5
      abb294(37)=spal5e7*spbe7l5
      abb294(38)=abb294(37)*spbl5k1
      abb294(39)=-abb294(38)*abb294(36)
      abb294(40)=spbk7k3*spak2k7
      abb294(28)=abb294(40)*abb294(28)
      abb294(41)=abb294(38)*abb294(28)
      abb294(42)=abb294(32)*spal5e7
      abb294(35)=abb294(35)*abb294(42)
      abb294(33)=abb294(39)+abb294(33)+abb294(41)+abb294(35)
      abb294(35)=spak2e7*abb294(21)
      abb294(39)=spak2e7*abb294(2)
      abb294(41)=abb294(39)*abb294(12)
      abb294(35)=abb294(35)-abb294(41)
      abb294(41)=-abb294(24)*abb294(35)
      abb294(43)=abb294(24)*spak2e7
      abb294(44)=abb294(43)*abb294(19)
      abb294(41)=abb294(41)+abb294(44)
      abb294(44)=abb294(6)*spbe7l5
      abb294(45)=abb294(41)*abb294(44)
      abb294(46)=spbl5k1*abb294(45)
      abb294(47)=abb294(19)*spak2e7
      abb294(47)=abb294(35)-abb294(47)
      abb294(48)=abb294(24)*abb294(5)
      abb294(49)=-abb294(48)*abb294(47)
      abb294(50)=2.0_ki*spak2k7
      abb294(51)=abb294(50)*spbe7k1
      abb294(52)=abb294(51)*abb294(6)
      abb294(53)=abb294(52)*spbk7l5
      abb294(54)=abb294(49)*abb294(53)
      abb294(55)=abb294(49)*abb294(44)
      abb294(56)=spbk7k1*spak2k7
      abb294(57)=-abb294(55)*abb294(56)
      abb294(46)=abb294(57)+abb294(46)+abb294(54)
      abb294(46)=spbl6k2*abb294(46)
      abb294(54)=mB**4
      abb294(57)=spak2e7*abb294(5)
      abb294(19)=abb294(19)*abb294(54)*abb294(57)
      abb294(58)=abb294(54)*abb294(5)
      abb294(35)=-abb294(58)*abb294(35)
      abb294(19)=abb294(19)+abb294(35)
      abb294(35)=abb294(19)*abb294(56)
      abb294(59)=-abb294(47)*abb294(54)
      abb294(60)=-spbl5k1*abb294(59)
      abb294(35)=abb294(35)+abb294(60)
      abb294(60)=abb294(44)*abb294(4)
      abb294(35)=abb294(60)*abb294(35)
      abb294(61)=-abb294(4)*abb294(19)*abb294(53)
      abb294(35)=abb294(46)+abb294(61)+abb294(35)
      abb294(35)=spbk3k2*abb294(35)
      abb294(46)=spbl6k2*spbk3k1
      abb294(61)=abb294(46)*abb294(22)
      abb294(62)=spbk3k1*abb294(4)
      abb294(25)=abb294(25)*abb294(62)
      abb294(61)=abb294(61)-abb294(25)
      abb294(32)=-spak1e7*abb294(32)
      abb294(63)=spak1k2*abb294(38)
      abb294(32)=abb294(32)+abb294(63)
      abb294(32)=2.0_ki*abb294(32)
      abb294(32)=abb294(61)*abb294(32)
      abb294(47)=-abb294(47)*spbe7l5
      abb294(63)=abb294(47)*abb294(46)
      abb294(41)=abb294(41)*spbe7l5
      abb294(64)=abb294(41)*abb294(62)
      abb294(63)=abb294(63)-abb294(64)
      abb294(64)=spak1l5*spbl5k1
      abb294(65)=abb294(64)+es71
      abb294(66)=-abb294(63)*abb294(65)
      abb294(67)=-abb294(19)*abb294(40)
      abb294(59)=-spbl5k3*abb294(59)
      abb294(59)=abb294(59)+abb294(67)
      abb294(59)=spbk2k1*abb294(60)*abb294(59)
      abb294(45)=spbl5k3*abb294(45)
      abb294(60)=abb294(55)*abb294(40)
      abb294(45)=abb294(45)+abb294(60)
      abb294(45)=spbk2k1*abb294(45)
      abb294(60)=abb294(40)*abb294(38)
      abb294(42)=-spbl5k3*abb294(42)
      abb294(42)=-abb294(60)+abb294(42)
      abb294(42)=abb294(22)*abb294(42)
      abb294(42)=2.0_ki*abb294(42)+abb294(45)
      abb294(42)=spbl6k2*abb294(42)
      abb294(19)=abb294(44)*abb294(19)*abb294(62)
      abb294(45)=abb294(55)*abb294(46)
      abb294(19)=abb294(19)-abb294(45)
      abb294(45)=es12*abb294(19)
      abb294(46)=abb294(47)*spbl6k2
      abb294(41)=abb294(41)*abb294(4)
      abb294(41)=abb294(46)-abb294(41)
      abb294(46)=spbk7k3*spbl5k1
      abb294(47)=spbk7k1*spbl5k3
      abb294(46)=abb294(46)+abb294(47)
      abb294(47)=spal5k7*abb294(46)*abb294(41)
      abb294(32)=abb294(47)+abb294(45)+abb294(35)+abb294(42)+abb294(59)+abb294(&
      &66)+abb294(32)+2.0_ki*abb294(33)
      abb294(32)=2.0_ki*abb294(32)
      abb294(33)=spak1k2*abb294(61)
      abb294(28)=-abb294(36)+abb294(33)+abb294(28)
      abb294(28)=spbl5k1*abb294(28)
      abb294(13)=-abb294(48)*abb294(13)
      abb294(33)=abb294(11)*abb294(5)
      abb294(20)=abb294(33)*abb294(20)
      abb294(35)=abb294(20)*abb294(24)
      abb294(13)=abb294(35)+abb294(13)
      abb294(13)=abb294(13)*spbl6k3
      abb294(36)=spbk2k1*abb294(6)
      abb294(42)=abb294(13)*abb294(36)
      abb294(25)=abb294(42)-abb294(25)
      abb294(45)=spbk7l5*spak2k7
      abb294(25)=abb294(45)*abb294(25)
      abb294(8)=abb294(8)*abb294(17)
      abb294(47)=abb294(8)*c3
      abb294(59)=abb294(9)*abb294(2)
      abb294(60)=abb294(47)*abb294(59)
      abb294(62)=abb294(10)*NC
      abb294(66)=abb294(62)*abb294(2)
      abb294(67)=abb294(10)*abb294(3)
      abb294(68)=abb294(67)*abb294(2)
      abb294(60)=abb294(60)+abb294(66)-abb294(68)
      abb294(66)=abb294(60)*spbk7l5
      abb294(69)=abb294(66)*spbl6k3
      abb294(70)=spak4k7*spbk7k1
      abb294(71)=spak4l5*spbl5k1
      abb294(72)=abb294(70)+abb294(71)
      abb294(73)=abb294(72)*abb294(69)*spak2k7
      abb294(40)=abb294(40)*spbl5k1
      abb294(74)=spbk3k1*abb294(45)
      abb294(40)=-abb294(40)+abb294(74)
      abb294(23)=abb294(40)*abb294(23)
      abb294(23)=abb294(23)+abb294(73)+abb294(25)+abb294(28)
      abb294(23)=8.0_ki*abb294(23)
      abb294(25)=spak4e7*abb294(69)*abb294(51)
      abb294(22)=abb294(22)*spbl6k3
      abb294(28)=2.0_ki*abb294(38)
      abb294(40)=abb294(22)*abb294(28)
      abb294(25)=abb294(25)+abb294(40)
      abb294(40)=abb294(55)*spbl6k3
      abb294(55)=abb294(40)*spbk2k1
      abb294(73)=abb294(62)-abb294(67)
      abb294(39)=-abb294(39)*abb294(73)
      abb294(74)=abb294(47)*spak2e7
      abb294(75)=abb294(74)*abb294(59)
      abb294(75)=abb294(39)-abb294(75)
      abb294(76)=spbl6k3*spbe7l5
      abb294(77)=abb294(75)*abb294(76)
      abb294(78)=2.0_ki*abb294(77)
      abb294(79)=abb294(71)*abb294(78)
      abb294(79)=abb294(79)+2.0_ki*abb294(55)-abb294(63)-abb294(25)
      abb294(79)=4.0_ki*abb294(79)
      abb294(22)=abb294(22)*spbl5k1
      abb294(80)=16.0_ki*abb294(22)
      abb294(25)=abb294(25)-abb294(63)
      abb294(63)=abb294(78)*abb294(70)
      abb294(63)=abb294(63)+abb294(25)
      abb294(81)=-4.0_ki*abb294(63)
      abb294(82)=abb294(47)*abb294(15)
      abb294(83)=abb294(82)+abb294(12)
      abb294(84)=abb294(11)*abb294(3)
      abb294(85)=abb294(83)-abb294(84)
      abb294(86)=mB**5
      abb294(87)=abb294(7)*abb294(4)
      abb294(85)=abb294(87)*abb294(85)*abb294(86)*abb294(57)
      abb294(88)=mB**3
      abb294(11)=abb294(88)*abb294(11)
      abb294(89)=abb294(11)*abb294(3)
      abb294(57)=abb294(57)*abb294(89)
      abb294(90)=abb294(12)*spak2e7
      abb294(91)=abb294(88)*abb294(5)
      abb294(92)=abb294(90)*abb294(91)
      abb294(93)=abb294(82)*abb294(91)
      abb294(94)=abb294(93)*spak2e7
      abb294(57)=-abb294(94)+abb294(57)-abb294(92)
      abb294(85)=abb294(85)+abb294(57)
      abb294(85)=abb294(85)*abb294(6)
      abb294(92)=-spbl5k3*abb294(85)
      abb294(82)=abb294(82)-abb294(84)
      abb294(94)=abb294(5)**2
      abb294(95)=abb294(94)*spak2e7
      abb294(96)=-abb294(82)*abb294(95)
      abb294(90)=abb294(94)*abb294(90)
      abb294(90)=abb294(96)-abb294(90)
      abb294(90)=abb294(86)*abb294(90)
      abb294(96)=abb294(90)*abb294(87)
      abb294(97)=abb294(96)*abb294(6)
      abb294(98)=abb294(88)*spak2e7
      abb294(99)=abb294(98)*abb294(94)
      abb294(100)=abb294(99)*abb294(83)
      abb294(95)=abb294(95)*abb294(89)
      abb294(95)=abb294(100)-abb294(95)
      abb294(100)=abb294(95)*abb294(6)
      abb294(97)=abb294(97)+abb294(100)
      abb294(101)=abb294(97)*spak2k7
      abb294(102)=spbk7k3*abb294(101)
      abb294(92)=abb294(92)+abb294(102)
      abb294(92)=spbk2k1*abb294(92)
      abb294(102)=abb294(100)*spbk3k1
      abb294(103)=abb294(87)*spbk3k1
      abb294(90)=abb294(103)*abb294(90)*abb294(6)
      abb294(90)=abb294(102)+abb294(90)
      abb294(102)=-es12*abb294(90)
      abb294(104)=abb294(57)*abb294(87)
      abb294(82)=abb294(82)+abb294(12)
      abb294(105)=abb294(5)*mB
      abb294(106)=abb294(105)*spak2e7
      abb294(107)=abb294(106)*abb294(82)
      abb294(104)=abb294(104)+abb294(107)
      abb294(46)=spal5k7*abb294(46)*abb294(104)
      abb294(46)=abb294(46)+abb294(102)+abb294(92)
      abb294(46)=spbe7l6*abb294(46)
      abb294(26)=abb294(26)*abb294(2)
      abb294(26)=abb294(26)-abb294(11)
      abb294(26)=abb294(26)*NC
      abb294(16)=abb294(16)*abb294(17)
      abb294(92)=abb294(24)*abb294(16)
      abb294(15)=abb294(8)*abb294(15)
      abb294(102)=abb294(15)*abb294(88)
      abb294(92)=abb294(92)-abb294(102)
      abb294(92)=abb294(92)*c3
      abb294(26)=abb294(26)+abb294(92)-abb294(27)+abb294(89)
      abb294(27)=abb294(26)*abb294(87)
      abb294(92)=abb294(15)*mB
      abb294(92)=abb294(92)-abb294(16)
      abb294(92)=abb294(92)*c3
      abb294(102)=mB-abb294(2)
      abb294(102)=abb294(102)*abb294(12)
      abb294(108)=abb294(84)*mB
      abb294(21)=abb294(102)+abb294(92)-abb294(108)+abb294(21)
      abb294(27)=abb294(27)+abb294(21)
      abb294(92)=spal5e7*spbe7k1
      abb294(102)=abb294(27)*abb294(92)
      abb294(109)=spbl6l5*abb294(102)
      abb294(12)=abb294(91)*abb294(12)
      abb294(110)=abb294(89)*abb294(5)
      abb294(12)=-abb294(12)+abb294(110)-abb294(93)
      abb294(93)=abb294(12)*abb294(87)
      abb294(82)=-abb294(105)*abb294(82)
      abb294(111)=abb294(93)-abb294(82)
      abb294(112)=2.0_ki*spbk7l6
      abb294(113)=abb294(112)*abb294(31)
      abb294(114)=abb294(113)*abb294(111)
      abb294(115)=-spal5e7*abb294(114)
      abb294(109)=abb294(115)+abb294(109)
      abb294(109)=spbl5k3*abb294(109)
      abb294(115)=abb294(54)*abb294(2)
      abb294(115)=abb294(115)-abb294(86)
      abb294(116)=NC*spak2e7
      abb294(115)=abb294(116)*abb294(115)*abb294(33)
      abb294(20)=abb294(20)*abb294(54)
      abb294(54)=abb294(86)*abb294(5)
      abb294(84)=abb294(54)*abb294(84)
      abb294(20)=abb294(20)-abb294(84)
      abb294(20)=abb294(20)*spak2e7
      abb294(58)=abb294(58)*abb294(16)
      abb294(54)=abb294(54)*abb294(15)
      abb294(54)=abb294(58)-abb294(54)
      abb294(58)=c3*spak2e7
      abb294(54)=abb294(54)*abb294(58)
      abb294(20)=-abb294(115)+abb294(20)-abb294(54)
      abb294(20)=abb294(20)*abb294(87)
      abb294(11)=abb294(11)*abb294(5)
      abb294(54)=abb294(24)*abb294(2)
      abb294(33)=abb294(54)*abb294(33)
      abb294(11)=abb294(11)-abb294(33)
      abb294(33)=abb294(11)*abb294(116)
      abb294(15)=abb294(15)*abb294(91)
      abb294(16)=abb294(16)*abb294(48)
      abb294(15)=abb294(15)-abb294(16)
      abb294(16)=abb294(15)*abb294(58)
      abb294(35)=abb294(35)-abb294(110)
      abb294(84)=abb294(35)*spak2e7
      abb294(16)=abb294(20)-abb294(84)-abb294(33)-abb294(16)
      abb294(20)=abb294(6)*spbe7k1
      abb294(33)=abb294(20)*spbl6l5
      abb294(84)=abb294(16)*abb294(33)
      abb294(85)=-spbl5k1*abb294(85)
      abb294(86)=-spbk7k1*abb294(101)
      abb294(85)=abb294(86)+abb294(85)
      abb294(85)=spbe7l6*abb294(85)
      abb294(86)=abb294(97)*abb294(113)
      abb294(84)=abb294(86)+abb294(84)+abb294(85)
      abb294(84)=spbk3k2*abb294(84)
      abb294(21)=abb294(21)*spbk3k1
      abb294(26)=abb294(26)*abb294(103)
      abb294(21)=abb294(21)+abb294(26)
      abb294(26)=abb294(21)*spbe7k1
      abb294(85)=spbl6l5*abb294(26)
      abb294(12)=abb294(103)*abb294(12)
      abb294(86)=abb294(82)*spbk3k1
      abb294(97)=abb294(12)-abb294(86)
      abb294(101)=-abb294(97)*abb294(113)
      abb294(85)=abb294(85)+abb294(101)
      abb294(85)=spak1e7*abb294(85)
      abb294(101)=spbe7k1*abb294(27)
      abb294(110)=-spbl6l5*abb294(101)
      abb294(110)=abb294(110)+abb294(114)
      abb294(110)=abb294(110)*abb294(30)
      abb294(113)=abb294(93)*spak2k7
      abb294(114)=abb294(113)*abb294(37)
      abb294(115)=abb294(82)*abb294(37)
      abb294(117)=abb294(115)*spak2k7
      abb294(114)=abb294(117)-abb294(114)
      abb294(114)=abb294(114)*spbk7k3
      abb294(117)=abb294(88)*abb294(83)
      abb294(117)=abb294(117)-abb294(89)
      abb294(87)=abb294(117)*abb294(87)
      abb294(117)=mB*abb294(83)
      abb294(87)=abb294(87)-abb294(117)+abb294(108)
      abb294(108)=abb294(87)*spbl5k3
      abb294(117)=abb294(37)*abb294(108)
      abb294(114)=abb294(114)+abb294(117)
      abb294(117)=2.0_ki*spbl6k1
      abb294(118)=abb294(114)*abb294(117)
      abb294(57)=abb294(57)*abb294(103)
      abb294(103)=abb294(107)*spbk3k1
      abb294(57)=abb294(103)+abb294(57)
      abb294(57)=abb294(57)*spbe7l6
      abb294(103)=-abb294(57)*abb294(65)
      abb294(107)=abb294(48)*abb294(68)
      abb294(119)=abb294(9)*abb294(5)
      abb294(14)=abb294(14)*abb294(119)
      abb294(18)=abb294(14)*abb294(18)
      abb294(120)=-abb294(24)*abb294(18)
      abb294(54)=-abb294(5)*abb294(62)*abb294(54)
      abb294(54)=abb294(54)+abb294(107)+abb294(120)
      abb294(54)=spak4e7*spbl6k3*abb294(54)*abb294(53)
      abb294(12)=abb294(12)*abb294(37)
      abb294(120)=abb294(86)*abb294(37)
      abb294(12)=abb294(12)-abb294(120)
      abb294(121)=abb294(117)*spak1k2
      abb294(122)=abb294(12)*abb294(121)
      abb294(123)=abb294(13)*abb294(6)
      abb294(124)=abb294(28)*abb294(123)
      abb294(39)=-abb294(48)*abb294(39)
      abb294(18)=abb294(18)*abb294(43)
      abb294(18)=abb294(39)+abb294(18)
      abb294(39)=abb294(18)*abb294(44)
      abb294(43)=abb294(39)*spbl6k3
      abb294(125)=abb294(70)*abb294(43)
      abb294(19)=abb294(122)+abb294(110)+abb294(85)+abb294(84)+abb294(54)+2.0_k&
      &i*abb294(125)+abb294(118)+abb294(124)+abb294(103)+abb294(109)-abb294(19)&
      &+abb294(46)
      abb294(19)=4.0_ki*abb294(19)
      abb294(46)=-spbl6l5*abb294(21)
      abb294(54)=abb294(82)*spak2k7
      abb294(54)=abb294(54)-abb294(113)
      abb294(84)=spbk7k3*abb294(54)
      abb294(84)=abb294(108)+abb294(84)
      abb294(84)=abb294(84)*abb294(117)
      abb294(85)=spak2k7*abb294(97)*abb294(112)
      abb294(103)=abb294(97)*abb294(121)
      abb294(108)=spbl5k1*abb294(123)
      abb294(46)=abb294(103)+abb294(85)+abb294(84)+abb294(46)+2.0_ki*abb294(108)
      abb294(46)=8.0_ki*abb294(46)
      abb294(84)=8.0_ki*abb294(57)
      abb294(85)=8.0_ki*spbe7l6
      abb294(90)=abb294(90)*abb294(85)
      abb294(103)=-abb294(71)+abb294(70)
      abb294(103)=abb294(77)*abb294(103)
      abb294(25)=-abb294(55)+abb294(25)+abb294(103)
      abb294(25)=4.0_ki*abb294(25)
      abb294(55)=-2.0_ki*abb294(63)
      abb294(22)=-8.0_ki*abb294(22)
      abb294(57)=4.0_ki*abb294(57)
      abb294(29)=-spbe7k3*abb294(29)
      abb294(63)=spbe7k2*abb294(123)
      abb294(29)=abb294(63)+abb294(29)
      abb294(29)=abb294(45)*abb294(29)
      abb294(45)=abb294(66)*spak2k7
      abb294(63)=abb294(76)*spak4l5
      abb294(103)=abb294(45)*abb294(63)
      abb294(31)=spak1k4*abb294(31)*abb294(69)
      abb294(69)=abb294(69)*spak4k7
      abb294(108)=-spbk7e7*spak2k7*abb294(69)
      abb294(29)=abb294(108)+abb294(31)+abb294(103)+abb294(29)
      abb294(29)=4.0_ki*abb294(29)
      abb294(31)=-spbl6l5*abb294(27)
      abb294(54)=-abb294(54)*abb294(112)
      abb294(31)=abb294(31)+abb294(54)
      abb294(31)=4.0_ki*spbe7k3*abb294(31)
      abb294(41)=-spbk7k3*abb294(41)
      abb294(54)=spak4l5*spbk7l5
      abb294(103)=spak1k4*spbk7k1
      abb294(54)=abb294(54)+abb294(103)
      abb294(103)=abb294(77)*abb294(54)
      abb294(40)=spbk7k2*abb294(40)
      abb294(40)=abb294(40)+2.0_ki*abb294(41)+abb294(103)
      abb294(40)=2.0_ki*abb294(40)
      abb294(41)=-spbk7k3*abb294(104)*abb294(85)
      abb294(85)=spak4k7*spbk7l5
      abb294(103)=spak1k4*spbl5k1
      abb294(85)=abb294(85)-abb294(103)
      abb294(104)=abb294(77)*abb294(85)
      abb294(49)=-abb294(49)*abb294(76)
      abb294(49)=abb294(49)+abb294(104)
      abb294(49)=2.0_ki*abb294(49)
      abb294(76)=abb294(44)*abb294(75)*abb294(24)
      abb294(104)=-spbl5k1*abb294(76)
      abb294(53)=abb294(18)*abb294(53)
      abb294(108)=-abb294(39)*abb294(56)
      abb294(53)=abb294(108)+abb294(104)+abb294(53)
      abb294(53)=spbl6k2*abb294(53)
      abb294(104)=spak1k2*spbl6k1
      abb294(108)=spak2l5*spbl6l5
      abb294(104)=abb294(104)+abb294(108)
      abb294(108)=abb294(28)*abb294(60)*abb294(104)
      abb294(109)=spbl6l5*spal5e7
      abb294(110)=-spak1e7*spbl6k1
      abb294(112)=spae7k7*spbk7l6
      abb294(109)=abb294(112)+abb294(110)+abb294(109)
      abb294(66)=abb294(66)*abb294(51)*abb294(109)
      abb294(109)=-abb294(60)*abb294(50)*abb294(38)
      abb294(110)=spbk2k1*spak2k7*abb294(39)
      abb294(109)=abb294(109)+abb294(110)
      abb294(109)=spbk7l6*abb294(109)
      abb294(75)=abb294(75)*spbe7l5
      abb294(110)=abb294(75)*spbl6k1
      abb294(112)=abb294(110)*abb294(65)
      abb294(76)=spbk2k1*spbl6l5*abb294(76)
      abb294(39)=abb294(39)*spbl6k1
      abb294(118)=-es12*abb294(39)
      abb294(122)=spbk7k1*spbl6l5
      abb294(123)=-spbk7l6*spbl5k1
      abb294(122)=abb294(122)+abb294(123)
      abb294(122)=spal5k7*abb294(75)*abb294(122)
      abb294(53)=abb294(122)+abb294(118)+abb294(53)+abb294(109)+abb294(76)+abb2&
      &94(66)+abb294(112)+abb294(108)
      abb294(53)=2.0_ki*abb294(53)
      abb294(66)=-spbk7l6*spak2k7
      abb294(66)=abb294(66)+abb294(104)
      abb294(66)=abb294(60)*spbl5k1*abb294(66)
      abb294(76)=spbl6k1*abb294(45)
      abb294(66)=abb294(76)+abb294(66)
      abb294(66)=8.0_ki*abb294(66)
      abb294(76)=4.0_ki*abb294(110)
      abb294(104)=abb294(119)*abb294(88)*abb294(8)
      abb294(14)=abb294(14)*abb294(24)*abb294(17)
      abb294(14)=abb294(104)-abb294(14)
      abb294(17)=abb294(14)*abb294(58)
      abb294(24)=abb294(10)*abb294(91)
      abb294(58)=abb294(10)*abb294(2)
      abb294(48)=abb294(48)*abb294(58)
      abb294(24)=abb294(24)-abb294(48)
      abb294(48)=abb294(24)*abb294(116)
      abb294(104)=abb294(91)*abb294(67)
      abb294(107)=abb294(107)-abb294(104)
      abb294(108)=abb294(107)*spak2e7
      abb294(17)=abb294(48)+abb294(17)+abb294(108)
      abb294(48)=-abb294(17)*abb294(33)
      abb294(91)=abb294(91)*abb294(62)
      abb294(91)=-abb294(104)+abb294(91)
      abb294(91)=spak2e7*abb294(91)
      abb294(98)=abb294(119)*abb294(98)*abb294(47)
      abb294(91)=abb294(98)+abb294(91)
      abb294(98)=spbe7l6*spbl5k1*abb294(6)*abb294(91)
      abb294(99)=-abb294(99)*abb294(73)
      abb294(88)=abb294(94)*abb294(88)
      abb294(104)=abb294(9)*abb294(88)*abb294(74)
      abb294(99)=abb294(99)-abb294(104)
      abb294(104)=abb294(99)*abb294(6)
      abb294(108)=abb294(104)*spbe7l6
      abb294(109)=abb294(108)*abb294(56)
      abb294(110)=-spbk7l6*abb294(51)*abb294(104)
      abb294(39)=abb294(110)+abb294(109)+abb294(39)+abb294(98)+abb294(48)
      abb294(39)=4.0_ki*abb294(39)
      abb294(48)=-abb294(75)*abb294(117)
      abb294(45)=4.0_ki*spbe7l6*abb294(45)
      abb294(10)=abb294(10)*mB
      abb294(98)=abb294(10)-abb294(58)
      abb294(98)=abb294(98)*NC
      abb294(59)=abb294(8)*abb294(59)
      abb294(109)=abb294(9)*mB
      abb294(8)=abb294(8)*abb294(109)
      abb294(110)=abb294(59)-abb294(8)
      abb294(110)=abb294(110)*c3
      abb294(67)=abb294(67)*mB
      abb294(98)=-abb294(67)+abb294(68)+abb294(98)-abb294(110)
      abb294(110)=abb294(98)*spbl6l5
      abb294(105)=-abb294(105)*abb294(73)
      abb294(112)=abb294(119)*mB
      abb294(116)=abb294(112)*abb294(47)
      abb294(105)=abb294(105)-abb294(116)
      abb294(116)=abb294(105)*spbk7l6
      abb294(118)=abb294(116)*abb294(50)
      abb294(110)=abb294(118)+abb294(110)
      abb294(119)=2.0_ki*abb294(110)
      abb294(75)=4.0_ki*spbk7l6*abb294(75)
      abb294(77)=4.0_ki*abb294(77)
      abb294(122)=-4.0_ki*abb294(43)
      abb294(123)=abb294(98)*spbe7k1
      abb294(124)=abb294(123)*spbl6l5
      abb294(125)=abb294(116)*abb294(51)
      abb294(124)=abb294(125)+abb294(124)
      abb294(125)=spae7k7*abb294(124)
      abb294(126)=abb294(36)*spbe7l6
      abb294(127)=abb294(126)*abb294(99)
      abb294(128)=spak2k7*abb294(127)
      abb294(129)=abb294(105)*abb294(37)
      abb294(130)=abb294(129)*abb294(50)
      abb294(131)=-spbl6k1*abb294(130)
      abb294(106)=-abb294(106)*abb294(73)
      abb294(74)=abb294(112)*abb294(74)
      abb294(74)=abb294(106)-abb294(74)
      abb294(106)=abb294(74)*spbe7l6
      abb294(112)=abb294(106)*spal5k7
      abb294(132)=spbl5k1*abb294(112)
      abb294(125)=abb294(132)+abb294(125)+abb294(131)+abb294(128)
      abb294(125)=2.0_ki*abb294(125)
      abb294(128)=abb294(105)*spbl6k1
      abb294(131)=-8.0_ki*spak2k7*abb294(128)
      abb294(132)=4.0_ki*abb294(106)
      abb294(102)=spbl5k3*abb294(102)
      abb294(26)=spak1e7*abb294(26)
      abb294(101)=-abb294(101)*abb294(30)
      abb294(26)=abb294(101)+abb294(102)+abb294(26)
      abb294(26)=spbl5k2*abb294(26)
      abb294(30)=-abb294(30)*spbe7k1
      abb294(92)=-spbl5k3*abb294(92)
      abb294(30)=-abb294(30)+abb294(92)
      abb294(30)=abb294(111)*abb294(30)
      abb294(92)=-spak1e7*spbe7k1*abb294(97)
      abb294(96)=abb294(95)+abb294(96)
      abb294(96)=spbk3k2*abb294(20)*abb294(96)
      abb294(30)=abb294(92)+abb294(96)+abb294(30)
      abb294(92)=2.0_ki*es712
      abb294(96)=-abb294(92)+2.0_ki*es71
      abb294(101)=-abb294(30)*abb294(96)
      abb294(16)=spbk3k2*spbe7k1*abb294(16)
      abb294(12)=-abb294(30)-abb294(12)
      abb294(30)=2.0_ki*es12
      abb294(12)=abb294(12)*abb294(30)
      abb294(102)=spbk2k1*abb294(114)
      abb294(12)=abb294(26)+abb294(12)-2.0_ki*abb294(102)+abb294(16)+abb294(101)
      abb294(12)=2.0_ki*abb294(12)
      abb294(11)=abb294(11)*NC
      abb294(15)=abb294(15)*c3
      abb294(11)=abb294(35)+abb294(11)+abb294(15)
      abb294(15)=abb294(11)*abb294(6)
      abb294(16)=abb294(15)-2.0_ki*abb294(87)
      abb294(16)=spbl5k3*abb294(16)
      abb294(26)=abb294(88)*abb294(83)
      abb294(35)=abb294(89)*abb294(94)
      abb294(26)=abb294(26)-abb294(35)
      abb294(35)=abb294(26)*abb294(6)
      abb294(83)=abb294(35)-abb294(82)
      abb294(83)=spak2k7*abb294(83)
      abb294(83)=abb294(83)+abb294(113)
      abb294(83)=spbk7k3*abb294(83)
      abb294(16)=abb294(16)+2.0_ki*abb294(83)
      abb294(16)=spbk2k1*abb294(16)
      abb294(21)=-spbl5k2*abb294(21)
      abb294(83)=abb294(98)*spbl5k3
      abb294(87)=abb294(105)*spbk7k3
      abb294(89)=abb294(87)*abb294(50)
      abb294(83)=abb294(83)-abb294(89)
      abb294(89)=-abb294(83)*abb294(72)
      abb294(94)=-4.0_ki*es12-abb294(96)
      abb294(94)=abb294(97)*abb294(94)
      abb294(16)=abb294(21)+abb294(16)+abb294(94)+abb294(89)
      abb294(16)=4.0_ki*abb294(16)
      abb294(21)=abb294(74)*spbe7k3
      abb294(89)=abb294(71)*abb294(21)
      abb294(94)=abb294(95)*spbe7k3
      abb294(97)=abb294(94)*abb294(36)
      abb294(101)=abb294(89)+abb294(120)+abb294(97)
      abb294(102)=abb294(123)*spbl5k3
      abb294(113)=abb294(87)*abb294(51)
      abb294(102)=abb294(113)-abb294(102)
      abb294(113)=abb294(102)*spak4e7
      abb294(101)=-abb294(113)-2.0_ki*abb294(101)
      abb294(101)=4.0_ki*abb294(101)
      abb294(114)=16.0_ki*abb294(86)
      abb294(133)=abb294(21)*abb294(70)
      abb294(134)=abb294(133)-abb294(120)
      abb294(134)=-abb294(113)+2.0_ki*abb294(134)
      abb294(135)=4.0_ki*abb294(134)
      abb294(14)=abb294(14)*c3
      abb294(24)=abb294(24)*NC
      abb294(14)=abb294(107)+abb294(24)+abb294(14)
      abb294(24)=spbl5k3*abb294(14)*abb294(20)
      abb294(9)=abb294(9)*abb294(47)
      abb294(9)=abb294(9)+abb294(73)
      abb294(9)=abb294(52)*abb294(9)*abb294(88)
      abb294(52)=spbk7k3*abb294(9)
      abb294(24)=abb294(24)+abb294(52)
      abb294(24)=spak4e7*abb294(24)
      abb294(52)=abb294(104)*spbe7k3
      abb294(73)=abb294(70)*abb294(52)
      abb294(88)=abb294(35)*abb294(37)
      abb294(107)=spbk3k1*abb294(88)
      abb294(73)=abb294(107)+abb294(73)
      abb294(24)=2.0_ki*abb294(73)+abb294(24)
      abb294(24)=4.0_ki*abb294(24)
      abb294(73)=16.0_ki*abb294(35)
      abb294(107)=spbk3k1*abb294(73)
      abb294(136)=2.0_ki*abb294(37)
      abb294(137)=abb294(86)*abb294(136)
      abb294(89)=abb294(89)+abb294(113)-abb294(133)+abb294(137)+abb294(97)
      abb294(89)=4.0_ki*abb294(89)
      abb294(97)=2.0_ki*abb294(134)
      abb294(86)=8.0_ki*abb294(86)
      abb294(27)=-spbl5k2*abb294(27)
      abb294(30)=-abb294(30)-abb294(96)
      abb294(30)=abb294(111)*abb294(30)
      abb294(27)=abb294(27)+abb294(30)
      abb294(27)=spbe7k3*abb294(27)
      abb294(30)=-spbe7l5*abb294(83)*spak4l5
      abb294(96)=spak1k4*abb294(102)
      abb294(102)=spbk7e7*spak4k7
      abb294(83)=abb294(83)*abb294(102)
      abb294(113)=spbl5k3*abb294(15)
      abb294(133)=abb294(35)*abb294(50)
      abb294(134)=spbk7k3*abb294(133)
      abb294(113)=abb294(113)+abb294(134)
      abb294(113)=spbe7k2*abb294(113)
      abb294(27)=abb294(113)+abb294(83)+abb294(96)+abb294(30)+abb294(27)
      abb294(27)=2.0_ki*abb294(27)
      abb294(30)=-abb294(21)*abb294(54)
      abb294(83)=abb294(100)*spbk7k2
      abb294(96)=-spbe7k3*abb294(83)
      abb294(30)=abb294(96)+abb294(30)
      abb294(30)=2.0_ki*abb294(30)
      abb294(96)=-abb294(21)*abb294(85)
      abb294(94)=abb294(94)+abb294(96)
      abb294(94)=2.0_ki*abb294(94)
      abb294(96)=-spae7k7*abb294(123)
      abb294(51)=abb294(105)*abb294(51)
      abb294(100)=spal5e7*abb294(51)
      abb294(96)=abb294(96)+abb294(100)
      abb294(96)=spbk7l5*abb294(96)
      abb294(17)=-spbe7k1*abb294(17)
      abb294(100)=spbl5k1*abb294(123)
      abb294(51)=-spbk7k1*abb294(51)
      abb294(51)=abb294(100)+abb294(51)
      abb294(51)=spak1e7*abb294(51)
      abb294(100)=abb294(74)*spal5k7
      abb294(113)=-spbe7l5*abb294(100)
      abb294(113)=abb294(113)+abb294(130)
      abb294(113)=spbk7k1*abb294(113)
      abb294(20)=abb294(99)*abb294(20)
      abb294(92)=-abb294(92)+es12
      abb294(92)=abb294(20)*abb294(92)
      abb294(62)=abb294(62)*mB
      abb294(47)=abb294(47)*abb294(109)
      abb294(47)=-abb294(67)+abb294(62)+abb294(47)
      abb294(62)=-abb294(47)*abb294(28)
      abb294(109)=abb294(91)*abb294(44)*spbk2k1
      abb294(123)=abb294(74)*spbe7k1
      abb294(130)=-abb294(123)+2.0_ki*abb294(20)
      abb294(130)=es71*abb294(130)
      abb294(134)=abb294(36)*abb294(99)*spak2k7
      abb294(100)=spbl5k1*abb294(100)
      abb294(100)=abb294(134)+abb294(100)
      abb294(100)=spbk7e7*abb294(100)
      abb294(64)=-abb294(123)*abb294(64)
      abb294(17)=abb294(64)+abb294(100)+abb294(130)+abb294(51)+abb294(109)+abb2&
      &94(17)+abb294(62)+abb294(92)+abb294(113)+abb294(96)
      abb294(17)=2.0_ki*abb294(17)
      abb294(51)=-3.0_ki*abb294(8)+abb294(59)
      abb294(51)=c3*abb294(51)
      abb294(62)=-3.0_ki*abb294(10)+abb294(58)
      abb294(62)=NC*abb294(62)
      abb294(51)=abb294(62)+abb294(51)+3.0_ki*abb294(67)-abb294(68)
      abb294(51)=spbl5k1*abb294(51)
      abb294(56)=abb294(105)*abb294(56)
      abb294(51)=abb294(51)+4.0_ki*abb294(56)
      abb294(51)=4.0_ki*abb294(51)
      abb294(56)=4.0_ki*abb294(123)
      abb294(20)=4.0_ki*abb294(20)
      abb294(62)=2.0_ki*abb294(123)
      abb294(64)=-spbe7l5*abb294(98)
      abb294(92)=-spbk7e7*abb294(105)*abb294(50)
      abb294(64)=abb294(64)+abb294(92)
      abb294(64)=2.0_ki*abb294(64)
      abb294(74)=-4.0_ki*spbk7e7*abb294(74)
      abb294(92)=4.0_ki*abb294(21)
      abb294(52)=-4.0_ki*abb294(52)
      abb294(21)=2.0_ki*abb294(21)
      abb294(42)=abb294(61)+abb294(42)
      abb294(61)=abb294(60)*spbl6k3
      abb294(96)=-abb294(61)*abb294(70)
      abb294(96)=abb294(96)-abb294(42)
      abb294(96)=abb294(37)*abb294(96)
      abb294(38)=-spak4l5*abb294(38)*abb294(61)
      abb294(38)=abb294(38)+abb294(96)
      abb294(38)=4.0_ki*abb294(38)
      abb294(96)=-abb294(61)*abb294(72)
      abb294(42)=abb294(96)-abb294(42)
      abb294(42)=8.0_ki*abb294(42)
      abb294(96)=-spal5e7*abb294(124)
      abb294(98)=abb294(98)*spbl6k1
      abb294(100)=abb294(136)*abb294(98)
      abb294(91)=-abb294(91)*abb294(126)
      abb294(109)=spbk7k1*abb294(112)
      abb294(91)=abb294(109)+abb294(91)+abb294(100)+abb294(96)
      abb294(91)=2.0_ki*abb294(91)
      abb294(96)=8.0_ki*abb294(98)
      abb294(72)=-abb294(110)*abb294(72)
      abb294(11)=spbl6l5*abb294(11)
      abb294(50)=-abb294(26)*abb294(50)*spbk7l6
      abb294(11)=abb294(11)+abb294(50)
      abb294(11)=abb294(36)*abb294(11)
      abb294(11)=abb294(11)+abb294(72)
      abb294(11)=4.0_ki*abb294(11)
      abb294(50)=abb294(124)*spak4e7
      abb294(72)=abb294(126)*abb294(95)
      abb294(98)=abb294(115)*spbl6k1
      abb294(100)=abb294(98)+abb294(72)
      abb294(109)=2.0_ki*abb294(106)
      abb294(112)=abb294(71)*abb294(109)
      abb294(100)=abb294(112)+2.0_ki*abb294(100)+abb294(50)
      abb294(100)=4.0_ki*abb294(100)
      abb294(112)=abb294(82)*spbl6k1
      abb294(113)=16.0_ki*abb294(112)
      abb294(123)=abb294(70)*abb294(106)
      abb294(98)=abb294(98)-abb294(123)
      abb294(98)=abb294(50)+2.0_ki*abb294(98)
      abb294(126)=4.0_ki*abb294(98)
      abb294(14)=abb294(14)*abb294(33)
      abb294(9)=-spbk7l6*abb294(9)
      abb294(9)=abb294(14)+abb294(9)
      abb294(9)=spak4e7*abb294(9)
      abb294(14)=-abb294(70)*abb294(108)
      abb294(33)=-spbl6k1*abb294(88)
      abb294(14)=abb294(33)+abb294(14)
      abb294(9)=2.0_ki*abb294(14)+abb294(9)
      abb294(9)=4.0_ki*abb294(9)
      abb294(14)=-spbl6k1*abb294(73)
      abb294(33)=-abb294(115)*abb294(117)
      abb294(70)=-abb294(106)*abb294(71)
      abb294(33)=abb294(70)-abb294(50)+abb294(123)+abb294(33)-abb294(72)
      abb294(33)=4.0_ki*abb294(33)
      abb294(50)=2.0_ki*abb294(98)
      abb294(70)=8.0_ki*abb294(112)
      abb294(71)=-spak4l5*spbe7l5
      abb294(71)=abb294(102)+abb294(71)
      abb294(71)=abb294(110)*abb294(71)
      abb294(72)=-spak1k4*abb294(124)
      abb294(15)=spbl6l5*abb294(15)
      abb294(73)=-spbk7l6*abb294(133)
      abb294(15)=abb294(15)+abb294(73)
      abb294(15)=spbe7k2*abb294(15)
      abb294(15)=abb294(15)+abb294(72)+abb294(71)
      abb294(15)=2.0_ki*abb294(15)
      abb294(54)=abb294(106)*abb294(54)
      abb294(71)=spbe7l6*abb294(83)
      abb294(54)=abb294(71)+abb294(54)
      abb294(54)=2.0_ki*abb294(54)
      abb294(71)=abb294(106)*abb294(85)
      abb294(72)=-spbe7l6*abb294(95)
      abb294(71)=abb294(72)+abb294(71)
      abb294(71)=2.0_ki*abb294(71)
      abb294(72)=4.0_ki*abb294(108)
      abb294(13)=abb294(13)+abb294(34)-abb294(69)
      abb294(34)=-abb294(37)*abb294(13)
      abb294(28)=-abb294(61)*abb294(28)
      abb294(69)=spbk2k1*abb294(43)
      abb294(28)=abb294(28)+abb294(69)
      abb294(28)=spak1k4*abb294(28)
      abb294(18)=-abb294(18)*abb294(63)
      abb294(63)=spbk7k2*spak4k7
      abb294(43)=-abb294(43)*abb294(63)
      abb294(18)=abb294(43)+abb294(28)+2.0_ki*abb294(34)+abb294(18)
      abb294(18)=2.0_ki*abb294(18)
      abb294(28)=-abb294(61)*abb294(103)
      abb294(13)=abb294(28)-abb294(13)
      abb294(13)=8.0_ki*abb294(13)
      abb294(28)=8.0_ki*spbl6k3
      abb294(34)=abb294(115)*abb294(28)
      abb294(43)=16.0_ki*spbl6k3
      abb294(61)=abb294(82)*abb294(43)
      abb294(69)=abb294(93)*abb294(37)
      abb294(73)=abb294(115)-abb294(69)
      abb294(28)=abb294(73)*abb294(28)
      abb294(43)=-abb294(111)*abb294(43)
      abb294(73)=4.0_ki*abb294(115)
      abb294(83)=-spbk7k3*abb294(73)
      abb294(85)=8.0_ki*abb294(82)
      abb294(93)=-spbk7k3*abb294(85)
      abb294(73)=-spbl5k3*abb294(73)
      abb294(85)=-spbl5k3*abb294(85)
      abb294(47)=abb294(47)*spbl5k3
      abb294(87)=abb294(87)*spak2k7
      abb294(47)=abb294(87)-abb294(47)
      abb294(87)=abb294(37)*abb294(47)
      abb294(95)=spak1k2*spbk3k1
      abb294(98)=-spak2l6*spbl6k3
      abb294(98)=abb294(98)-abb294(95)
      abb294(98)=abb294(129)*abb294(98)
      abb294(87)=abb294(98)+abb294(87)
      abb294(87)=4.0_ki*abb294(87)
      abb294(95)=-abb294(105)*abb294(95)
      abb294(98)=abb294(105)*spbl6k3
      abb294(102)=-spak2l6*abb294(98)
      abb294(47)=abb294(102)+abb294(95)+abb294(47)
      abb294(47)=8.0_ki*abb294(47)
      abb294(95)=spak1e7*abb294(124)
      abb294(60)=spbl6l5*abb294(60)
      abb294(102)=-spak1k2*abb294(128)
      abb294(60)=abb294(102)+abb294(60)
      abb294(60)=abb294(136)*abb294(60)
      abb294(102)=es12*abb294(108)
      abb294(65)=abb294(106)*abb294(65)
      abb294(60)=abb294(102)+abb294(95)+abb294(60)+abb294(65)
      abb294(60)=2.0_ki*abb294(60)
      abb294(8)=-abb294(8)+3.0_ki*abb294(59)
      abb294(8)=c3*abb294(8)
      abb294(10)=-abb294(10)+3.0_ki*abb294(58)
      abb294(10)=NC*abb294(10)
      abb294(8)=abb294(10)+abb294(8)+abb294(67)-3.0_ki*abb294(68)
      abb294(8)=spbl6l5*abb294(8)
      abb294(10)=-abb294(105)*abb294(121)
      abb294(8)=abb294(10)+abb294(8)-abb294(118)
      abb294(8)=4.0_ki*abb294(8)
      abb294(10)=spak1k4*abb294(36)
      abb294(10)=abb294(10)-spak4l5
      abb294(10)=abb294(99)*abb294(10)
      abb294(36)=-abb294(104)*abb294(63)
      abb294(10)=abb294(36)+abb294(10)
      abb294(10)=spbe7k3*abb294(10)
      abb294(36)=spbe7l5*abb294(82)
      abb294(26)=-abb294(26)*abb294(44)
      abb294(26)=abb294(36)+abb294(26)
      abb294(26)=spal5e7*abb294(26)
      abb294(26)=abb294(26)-abb294(69)
      abb294(26)=spbk3k2*abb294(26)
      abb294(36)=abb294(98)*spak4l6
      abb294(44)=abb294(136)*abb294(36)
      abb294(10)=abb294(44)+2.0_ki*abb294(26)+abb294(10)
      abb294(10)=2.0_ki*abb294(10)
      abb294(26)=-abb294(35)-abb294(111)
      abb294(26)=spbk3k2*abb294(26)
      abb294(26)=abb294(26)+abb294(36)
      abb294(26)=8.0_ki*abb294(26)
      abb294(36)=4.0_ki*abb294(129)
      abb294(44)=8.0_ki*abb294(105)
      abb294(58)=abb294(116)*spak4k7
      abb294(37)=-abb294(37)*abb294(58)
      abb294(59)=spbl6k2*abb294(88)
      abb294(37)=abb294(37)+abb294(59)
      abb294(59)=spbe7l6*abb294(99)
      abb294(65)=abb294(105)*spbl6l5
      abb294(67)=abb294(136)*abb294(65)
      abb294(59)=abb294(59)+abb294(67)
      abb294(59)=spak4l5*abb294(59)
      abb294(67)=abb294(136)*abb294(128)
      abb294(67)=abb294(67)-abb294(127)
      abb294(67)=spak1k4*abb294(67)
      abb294(63)=abb294(108)*abb294(63)
      abb294(37)=abb294(63)+abb294(67)+2.0_ki*abb294(37)+abb294(59)
      abb294(37)=2.0_ki*abb294(37)
      abb294(35)=spbl6k2*abb294(35)
      abb294(59)=spak4l5*abb294(65)
      abb294(63)=spak1k4*abb294(128)
      abb294(35)=abb294(63)+abb294(59)-abb294(58)+abb294(35)
      abb294(35)=8.0_ki*abb294(35)
      abb294(58)=-4.0_ki*abb294(120)
      R2d294=0.0_ki
      rat2 = rat2 + R2d294
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='294' value='", &
          & R2d294, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd294h3
