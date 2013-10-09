module     p9_csbar_epnebbbarg_abbrevd296h2
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(137), public :: abb296
   complex(ki), public :: R2d296
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
      abb296(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb296(2)=NC**(-1)
      abb296(3)=spbl5k2**(-1)
      abb296(4)=sqrt(mB**2)
      abb296(5)=spbl6k2**(-1)
      abb296(6)=spak2l5**(-1)
      abb296(7)=spak2l6**(-1)
      abb296(8)=c3+c1
      abb296(9)=TR*gW
      abb296(9)=abb296(1)*abb296(9)**2
      abb296(10)=i_*CVSC
      abb296(8)=abb296(8)*abb296(10)*abb296(2)*abb296(9)
      abb296(9)=c4*abb296(2)**2*abb296(9)
      abb296(11)=abb296(9)*abb296(10)
      abb296(11)=abb296(8)-abb296(11)
      abb296(12)=spak2e7*abb296(11)
      abb296(13)=mB**2
      abb296(14)=abb296(12)*abb296(13)
      abb296(15)=-spbl6k1*abb296(14)
      abb296(16)=abb296(15)*abb296(3)
      abb296(17)=abb296(16)*spbk3k2
      abb296(18)=-mB*abb296(12)
      abb296(19)=abb296(4)*abb296(3)
      abb296(20)=abb296(19)*spbk2k1
      abb296(21)=abb296(18)*abb296(20)
      abb296(22)=spbl6k3*abb296(21)
      abb296(22)=-abb296(17)+abb296(22)
      abb296(23)=spbl6k2*spak2l6
      abb296(22)=spak4k7*abb296(23)*abb296(22)
      abb296(24)=spak4k7*spbk3k2
      abb296(25)=abb296(15)*abb296(24)
      abb296(26)=-spak2l5*abb296(25)
      abb296(27)=abb296(12)*spbl6k1
      abb296(28)=-abb296(23)*abb296(27)
      abb296(29)=spak1l5*spbk3k1
      abb296(30)=abb296(29)*spak4k7
      abb296(31)=abb296(28)*abb296(30)
      abb296(22)=abb296(31)+abb296(22)+abb296(26)
      abb296(22)=spbk7e7*abb296(22)
      abb296(26)=spal5l6*spbl6k3
      abb296(31)=-abb296(26)*abb296(28)
      abb296(32)=abb296(18)*spbl6k2
      abb296(33)=abb296(20)*spak2l5
      abb296(34)=abb296(33)*spbl5k3
      abb296(35)=abb296(32)*abb296(34)
      abb296(31)=abb296(35)+abb296(31)
      abb296(35)=spbk7e7*spak4k7
      abb296(31)=abb296(35)*abb296(31)
      abb296(36)=abb296(19)*spbl6k2
      abb296(37)=abb296(36)*abb296(18)
      abb296(38)=abb296(35)*spbk3k1
      abb296(39)=-es12*abb296(37)*abb296(38)
      abb296(22)=abb296(39)+abb296(22)+abb296(31)
      abb296(22)=4.0_ki*abb296(22)
      abb296(8)=spbl6k1*abb296(8)
      abb296(9)=abb296(9)*abb296(10)*spbl6k1
      abb296(8)=abb296(9)-abb296(8)
      abb296(9)=-abb296(26)*abb296(8)
      abb296(10)=-abb296(29)*abb296(8)
      abb296(9)=abb296(9)-abb296(10)
      abb296(29)=-spak2k4*abb296(9)
      abb296(31)=-abb296(13)*abb296(8)
      abb296(39)=abb296(31)*abb296(3)
      abb296(40)=spbk3k2*spak2k4
      abb296(41)=-abb296(40)*abb296(39)
      abb296(42)=mB*abb296(11)
      abb296(43)=abb296(42)*abb296(20)
      abb296(44)=abb296(43)*spak2k4
      abb296(45)=spbl6k3*abb296(44)
      abb296(29)=abb296(41)+abb296(45)+abb296(29)
      abb296(29)=abb296(23)*abb296(29)
      abb296(41)=spak4k7*spak2l6
      abb296(45)=abb296(41)*abb296(9)
      abb296(46)=spak2l6*spbk3k2*abb296(39)
      abb296(47)=spbl6k3*spak2l6
      abb296(48)=-abb296(43)*abb296(47)
      abb296(46)=abb296(46)+abb296(48)
      abb296(46)=spak4k7*abb296(46)
      abb296(48)=spak2l5*abb296(5)
      abb296(49)=abb296(31)*abb296(24)*abb296(48)
      abb296(45)=abb296(46)+abb296(49)+abb296(45)
      abb296(45)=spbk7l6*abb296(45)
      abb296(46)=spbl6k2*abb296(44)
      abb296(49)=-spbk7l6*spak4k7*abb296(43)
      abb296(46)=abb296(46)+abb296(49)
      abb296(46)=spbl5k3*abb296(46)
      abb296(49)=-abb296(31)*abb296(40)
      abb296(46)=abb296(46)+abb296(49)
      abb296(46)=spak2l5*abb296(46)
      abb296(49)=abb296(42)*abb296(19)
      abb296(50)=abb296(49)*spbk7l6
      abb296(51)=abb296(50)*spak4k7*spbk3k1
      abb296(52)=abb296(49)*spbl6k2
      abb296(53)=abb296(52)*spbk3k1
      abb296(54)=-spak2k4*abb296(53)
      abb296(54)=abb296(54)+abb296(51)
      abb296(54)=es12*abb296(54)
      abb296(29)=abb296(54)+abb296(45)+abb296(29)+abb296(46)
      abb296(29)=8.0_ki*abb296(29)
      abb296(45)=spak2l6*spbe7l6
      abb296(46)=abb296(45)*spak4e7
      abb296(54)=abb296(10)*abb296(46)
      abb296(55)=spak4e7*spbk3k2
      abb296(56)=abb296(39)*abb296(55)
      abb296(57)=abb296(56)*abb296(45)
      abb296(58)=abb296(42)*spbe7l6
      abb296(59)=abb296(58)*abb296(19)
      abb296(60)=spak4e7*abb296(59)*spbk3k1
      abb296(61)=abb296(60)*es12
      abb296(34)=abb296(34)*abb296(58)*spak4e7
      abb296(62)=abb296(31)*abb296(55)
      abb296(48)=abb296(48)*spbe7l6
      abb296(63)=abb296(48)*abb296(62)
      abb296(64)=abb296(43)*abb296(45)
      abb296(65)=spbl6k3*spak4e7
      abb296(66)=abb296(64)*abb296(65)
      abb296(34)=-abb296(34)+abb296(61)-abb296(54)+abb296(57)+abb296(63)-abb296&
      &(66)
      abb296(54)=-abb296(8)*abb296(45)
      abb296(57)=abb296(65)*spal5l6
      abb296(61)=abb296(57)*abb296(54)
      abb296(61)=abb296(61)+abb296(34)
      abb296(63)=-8.0_ki*abb296(61)
      abb296(66)=abb296(20)*spak2k4
      abb296(67)=abb296(66)*abb296(18)
      abb296(68)=spak2l6*spak4l5
      abb296(69)=-abb296(68)*abb296(27)
      abb296(67)=abb296(67)+abb296(69)
      abb296(67)=abb296(67)*spbe7k3*spbl6k2
      abb296(66)=abb296(66)*abb296(58)
      abb296(69)=abb296(54)*spak4l5
      abb296(66)=abb296(66)+abb296(69)
      abb296(69)=spbk7k3*spae7k7
      abb296(66)=abb296(66)*abb296(69)
      abb296(70)=spbk3k2*spak4l5
      abb296(71)=-abb296(70)*abb296(27)
      abb296(72)=abb296(71)*abb296(45)
      abb296(21)=spbe7l6*abb296(21)
      abb296(73)=abb296(21)*abb296(40)
      abb296(66)=-abb296(72)-abb296(73)+abb296(67)-abb296(66)
      abb296(67)=8.0_ki*abb296(66)
      abb296(72)=-abb296(68)*abb296(8)
      abb296(44)=abb296(72)+abb296(44)
      abb296(44)=abb296(44)*spbl6k3
      abb296(72)=16.0_ki*abb296(44)
      abb296(73)=spbk3k1*abb296(37)
      abb296(17)=-abb296(17)+abb296(73)
      abb296(17)=spak4k7*abb296(17)
      abb296(73)=abb296(7)*abb296(5)
      abb296(74)=abb296(73)*spak2l5
      abb296(25)=-abb296(74)*abb296(25)
      abb296(75)=-abb296(27)*abb296(30)
      abb296(17)=abb296(75)+abb296(17)+abb296(25)
      abb296(17)=spbk7e7*abb296(17)
      abb296(25)=abb296(18)*abb296(70)
      abb296(75)=abb296(19)*spbe7l6
      abb296(76)=abb296(75)*abb296(25)
      abb296(77)=spbe7k3*spak4l5
      abb296(78)=-abb296(77)*abb296(37)
      abb296(79)=abb296(69)*spak4l5
      abb296(80)=abb296(79)*abb296(59)
      abb296(76)=abb296(80)+abb296(76)+abb296(78)
      abb296(76)=spbl5k1*abb296(76)
      abb296(78)=abb296(31)*abb296(79)
      abb296(80)=abb296(15)*abb296(70)
      abb296(78)=abb296(78)+abb296(80)
      abb296(80)=abb296(5)*spbe7l6
      abb296(81)=abb296(78)*abb296(80)
      abb296(82)=abb296(70)*abb296(45)
      abb296(83)=-abb296(23)*abb296(77)
      abb296(82)=abb296(82)+abb296(83)
      abb296(82)=abb296(16)*abb296(82)
      abb296(83)=abb296(39)*abb296(79)
      abb296(84)=abb296(45)*abb296(83)
      abb296(82)=abb296(84)+abb296(82)
      abb296(82)=abb296(6)*abb296(82)
      abb296(65)=abb296(65)*abb296(54)
      abb296(84)=abb296(35)*spbl6k3
      abb296(85)=abb296(27)*abb296(84)
      abb296(65)=abb296(65)+abb296(85)
      abb296(65)=spal5l6*abb296(65)
      abb296(85)=-abb296(27)*mB
      abb296(86)=spbk3k2*abb296(85)
      abb296(87)=-mB*abb296(8)
      abb296(88)=abb296(87)*abb296(69)
      abb296(86)=abb296(88)+abb296(86)
      abb296(86)=abb296(75)*abb296(86)
      abb296(85)=-spbe7k3*abb296(85)*abb296(36)
      abb296(85)=abb296(85)+abb296(86)
      abb296(85)=spak4l6*abb296(85)
      abb296(86)=-abb296(15)*abb296(77)
      abb296(17)=abb296(76)+abb296(85)+abb296(65)+abb296(17)+abb296(82)+abb296(&
      &81)+abb296(86)+abb296(34)
      abb296(17)=8.0_ki*abb296(17)
      abb296(34)=abb296(5)*abb296(31)
      abb296(49)=abb296(49)*spbl5k1
      abb296(34)=abb296(49)+abb296(34)
      abb296(34)=spak4l5*abb296(34)
      abb296(49)=abb296(39)*abb296(6)
      abb296(65)=abb296(68)*abb296(49)
      abb296(76)=abb296(87)*abb296(19)
      abb296(81)=spak4l6*abb296(76)
      abb296(34)=abb296(81)+abb296(65)+abb296(34)
      abb296(34)=spbl6k3*abb296(34)
      abb296(65)=abb296(74)*abb296(31)
      abb296(65)=abb296(65)+abb296(39)
      abb296(81)=-abb296(40)*abb296(65)
      abb296(53)=abb296(53)-abb296(9)
      abb296(53)=spak2k4*abb296(53)
      abb296(34)=-abb296(51)+abb296(34)+abb296(53)+abb296(81)
      abb296(34)=16.0_ki*abb296(34)
      abb296(51)=16.0_ki*abb296(60)
      abb296(53)=-abb296(77)*abb296(27)
      abb296(81)=16.0_ki*abb296(53)
      abb296(15)=-abb296(15)*abb296(73)
      abb296(82)=-abb296(6)*abb296(16)
      abb296(15)=abb296(82)+abb296(15)
      abb296(15)=abb296(77)*abb296(15)
      abb296(15)=-abb296(60)+abb296(15)
      abb296(15)=16.0_ki*abb296(15)
      abb296(61)=-abb296(66)+abb296(61)
      abb296(61)=4.0_ki*abb296(61)
      abb296(44)=8.0_ki*abb296(44)
      abb296(53)=-abb296(53)-abb296(60)
      abb296(53)=8.0_ki*abb296(53)
      abb296(60)=abb296(62)*abb296(74)
      abb296(10)=abb296(10)*spak4e7
      abb296(57)=-abb296(57)*abb296(8)
      abb296(10)=abb296(56)+abb296(57)+abb296(60)-abb296(10)
      abb296(56)=8.0_ki*abb296(10)
      abb296(57)=-abb296(79)*abb296(8)
      abb296(57)=abb296(57)+abb296(71)
      abb296(60)=8.0_ki*abb296(57)
      abb296(62)=-abb296(78)*abb296(73)
      abb296(16)=-abb296(70)*abb296(16)
      abb296(16)=abb296(16)-abb296(83)
      abb296(16)=abb296(6)*abb296(16)
      abb296(16)=abb296(16)+abb296(62)-abb296(10)
      abb296(16)=8.0_ki*abb296(16)
      abb296(10)=-abb296(57)-abb296(10)
      abb296(10)=4.0_ki*abb296(10)
      abb296(57)=abb296(54)*abb296(69)
      abb296(62)=-abb296(27)*abb296(45)
      abb296(66)=abb296(62)*spbk3k2
      abb296(71)=abb296(28)*spbe7k3
      abb296(57)=-abb296(71)+abb296(57)+abb296(66)
      abb296(66)=-spak4l6*abb296(57)
      abb296(71)=-abb296(14)*abb296(40)
      abb296(13)=abb296(13)*abb296(11)
      abb296(78)=abb296(13)*spak2k4
      abb296(82)=abb296(78)*abb296(69)
      abb296(71)=abb296(71)+abb296(82)
      abb296(83)=spbk2k1*abb296(71)
      abb296(80)=abb296(83)*abb296(80)
      abb296(85)=abb296(71)*abb296(45)
      abb296(86)=spbe7k3*spak2k4
      abb296(87)=-abb296(14)*abb296(86)
      abb296(88)=-abb296(23)*abb296(87)
      abb296(88)=abb296(88)+abb296(85)
      abb296(89)=spbk2k1*abb296(3)
      abb296(90)=abb296(89)*abb296(6)
      abb296(88)=abb296(88)*abb296(90)
      abb296(91)=abb296(70)*abb296(12)
      abb296(92)=-abb296(79)*abb296(11)
      abb296(91)=abb296(91)+abb296(92)
      abb296(92)=abb296(91)*abb296(45)
      abb296(93)=abb296(23)*abb296(12)
      abb296(94)=abb296(93)*abb296(77)
      abb296(92)=abb296(94)-abb296(92)
      abb296(94)=-spbl5k1*abb296(92)
      abb296(95)=-spbk2k1*abb296(87)
      abb296(96)=abb296(93)*abb296(38)
      abb296(66)=abb296(94)+abb296(66)+abb296(96)+abb296(88)+abb296(95)+abb296(&
      &80)
      abb296(66)=4.0_ki*abb296(66)
      abb296(80)=-abb296(8)*spak4l6
      abb296(88)=abb296(78)*abb296(6)
      abb296(94)=abb296(88)*abb296(89)
      abb296(80)=abb296(80)-abb296(94)
      abb296(94)=-abb296(47)*abb296(80)
      abb296(95)=-abb296(11)*spbk3k1
      abb296(41)=abb296(41)*spbk7l6
      abb296(96)=spak2k4*abb296(23)
      abb296(96)=-abb296(41)+abb296(96)
      abb296(96)=abb296(95)*abb296(96)
      abb296(97)=abb296(5)*spbl6k3*spbk2k1*abb296(78)
      abb296(98)=-abb296(11)*spbl6k3
      abb296(99)=spbl5k1*abb296(98)*abb296(68)
      abb296(94)=abb296(99)+abb296(97)+abb296(94)+abb296(96)
      abb296(94)=8.0_ki*abb296(94)
      abb296(96)=8.0_ki*abb296(95)
      abb296(97)=abb296(46)*abb296(96)
      abb296(99)=abb296(73)*spbk2k1
      abb296(100)=abb296(99)+abb296(90)
      abb296(100)=abb296(100)*abb296(87)
      abb296(101)=-abb296(27)*spbe7k3
      abb296(102)=abb296(101)*spak4l6
      abb296(38)=abb296(38)*abb296(12)
      abb296(103)=abb296(77)*abb296(12)
      abb296(104)=abb296(103)*spbl5k1
      abb296(38)=-abb296(100)-abb296(104)+abb296(102)+abb296(38)
      abb296(100)=-abb296(95)*abb296(46)
      abb296(100)=abb296(100)+abb296(38)
      abb296(100)=8.0_ki*abb296(100)
      abb296(102)=16.0_ki*spak2k4*abb296(95)
      abb296(104)=4.0_ki*abb296(95)
      abb296(105)=-abb296(46)*abb296(104)
      abb296(106)=abb296(91)*spbl5k1
      abb296(90)=abb296(71)*abb296(90)
      abb296(83)=abb296(83)*abb296(73)
      abb296(107)=-abb296(8)*abb296(69)
      abb296(108)=-abb296(27)*spbk3k2
      abb296(107)=abb296(107)+abb296(108)
      abb296(108)=abb296(107)*spak4l6
      abb296(83)=abb296(106)+abb296(90)+abb296(83)-abb296(108)
      abb296(83)=4.0_ki*abb296(83)
      abb296(90)=abb296(96)*spak4e7
      abb296(104)=abb296(104)*spak4e7
      abb296(57)=-spak1k4*abb296(57)
      abb296(106)=spbe7l6*abb296(71)
      abb296(108)=spbl6k2*abb296(3)
      abb296(85)=abb296(108)*abb296(85)
      abb296(109)=spbl6k2**2
      abb296(110)=-spak2l6*abb296(3)*abb296(109)*abb296(87)
      abb296(85)=abb296(110)+abb296(85)
      abb296(85)=abb296(6)*abb296(85)
      abb296(92)=-spbl6l5*abb296(92)
      abb296(110)=-spbl6k2*abb296(87)
      abb296(111)=abb296(93)*abb296(84)
      abb296(57)=abb296(92)+abb296(57)+abb296(111)+abb296(85)+abb296(110)+abb29&
      &6(106)
      abb296(57)=4.0_ki*abb296(57)
      abb296(85)=-abb296(11)*spak2k4
      abb296(92)=abb296(3)*abb296(88)
      abb296(92)=abb296(92)+abb296(85)
      abb296(92)=abb296(23)*abb296(92)
      abb296(92)=abb296(78)+abb296(92)
      abb296(92)=spbl6k3*abb296(92)
      abb296(68)=spbl6l5*abb296(68)
      abb296(41)=abb296(68)-abb296(41)
      abb296(41)=abb296(98)*abb296(41)
      abb296(68)=-abb296(8)*spak1k4
      abb296(47)=-abb296(47)*abb296(68)
      abb296(41)=abb296(47)+abb296(41)+abb296(92)
      abb296(41)=8.0_ki*abb296(41)
      abb296(46)=abb296(46)*abb296(98)
      abb296(47)=8.0_ki*abb296(46)
      abb296(92)=-abb296(11)*abb296(69)
      abb296(106)=abb296(92)*spak2k4
      abb296(110)=abb296(40)*abb296(12)
      abb296(106)=abb296(106)+abb296(110)
      abb296(111)=-spbe7l6*abb296(106)
      abb296(112)=abb296(86)*abb296(12)
      abb296(113)=spbl6k2*abb296(112)
      abb296(111)=abb296(113)+abb296(111)
      abb296(111)=8.0_ki*abb296(111)
      abb296(113)=abb296(98)*spak2k4
      abb296(114)=16.0_ki*abb296(113)
      abb296(115)=abb296(108)*abb296(6)
      abb296(115)=-abb296(115)-abb296(7)
      abb296(87)=abb296(87)*abb296(115)
      abb296(84)=abb296(12)*abb296(84)
      abb296(101)=spak1k4*abb296(101)
      abb296(103)=-spbl6l5*abb296(103)
      abb296(84)=abb296(103)+abb296(101)+abb296(84)-abb296(46)+abb296(87)
      abb296(84)=8.0_ki*abb296(84)
      abb296(46)=-4.0_ki*abb296(46)
      abb296(87)=-abb296(86)*abb296(11)
      abb296(101)=8.0_ki*abb296(87)
      abb296(87)=4.0_ki*abb296(87)
      abb296(103)=-abb296(7)*abb296(71)
      abb296(71)=-abb296(108)*abb296(71)*abb296(6)
      abb296(107)=spak1k4*abb296(107)
      abb296(115)=-spbl6l5*abb296(91)
      abb296(71)=abb296(115)+abb296(107)+abb296(103)+abb296(71)
      abb296(71)=4.0_ki*abb296(71)
      abb296(103)=abb296(98)*spak4e7
      abb296(107)=8.0_ki*abb296(103)
      abb296(115)=4.0_ki*abb296(103)
      abb296(116)=4.0_ki*spbk7e7
      abb296(110)=-abb296(110)*abb296(116)
      abb296(85)=8.0_ki*abb296(85)
      abb296(117)=spbk7k3*abb296(85)
      abb296(118)=-spbe7l5*abb296(106)
      abb296(112)=spbl5k2*abb296(112)
      abb296(112)=abb296(118)+abb296(112)
      abb296(112)=4.0_ki*abb296(112)
      abb296(85)=-spbl5k3*abb296(85)
      abb296(118)=abb296(12)*spbk3k2
      abb296(119)=abb296(118)+abb296(92)
      abb296(120)=spbe7l5*spak2l5
      abb296(121)=spak1k2*spbe7k1
      abb296(120)=abb296(121)+abb296(120)
      abb296(119)=abb296(119)*abb296(120)
      abb296(120)=abb296(12)*spbe7k3
      abb296(121)=-spbl5k2*spak2l5
      abb296(121)=abb296(121)+es12
      abb296(121)=abb296(120)*abb296(121)
      abb296(122)=spak2k7*spbk7e7
      abb296(122)=abb296(122)+abb296(45)
      abb296(118)=abb296(118)*abb296(122)
      abb296(122)=-spbe7k3*abb296(93)
      abb296(92)=abb296(45)*abb296(92)
      abb296(92)=abb296(92)+abb296(122)+abb296(118)+abb296(121)+abb296(119)
      abb296(92)=4.0_ki*abb296(92)
      abb296(118)=spbl5k3*spak2l5
      abb296(119)=-spak2k7*spbk7k3
      abb296(118)=abb296(119)+abb296(118)
      abb296(118)=-abb296(11)*abb296(118)
      abb296(119)=spak2l6*abb296(98)
      abb296(121)=-spak1k2*abb296(95)
      abb296(118)=abb296(121)+abb296(119)+abb296(118)
      abb296(118)=8.0_ki*abb296(118)
      abb296(119)=8.0_ki*abb296(120)
      abb296(120)=4.0_ki*abb296(120)
      abb296(62)=-spbk2k1*abb296(62)
      abb296(28)=-spbe7k1*abb296(28)
      abb296(121)=spbk7k1*spae7k7
      abb296(122)=abb296(54)*abb296(121)
      abb296(28)=abb296(122)+abb296(62)+abb296(28)
      abb296(28)=spak1l5*abb296(28)
      abb296(62)=abb296(121)*abb296(59)
      abb296(122)=abb296(37)*spbe7k1
      abb296(62)=-abb296(21)+abb296(62)-abb296(122)
      abb296(122)=-es12*abb296(62)
      abb296(123)=spbe7l5*abb296(32)
      abb296(124)=-spbk7l5*spae7k7*abb296(58)
      abb296(123)=abb296(124)+abb296(123)
      abb296(33)=abb296(33)*abb296(123)
      abb296(54)=spal5l6*abb296(54)
      abb296(54)=-abb296(64)+abb296(54)
      abb296(64)=spbk7l6*spae7k7
      abb296(54)=abb296(54)*abb296(64)
      abb296(123)=abb296(39)*abb296(45)
      abb296(48)=-abb296(31)*abb296(48)
      abb296(48)=-abb296(123)+abb296(48)
      abb296(123)=spbk7k2*spae7k7
      abb296(48)=abb296(48)*abb296(123)
      abb296(124)=-abb296(4)*spbk2k1*spak2l5*abb296(18)*spbe7l6
      abb296(28)=abb296(48)+abb296(122)+abb296(54)+abb296(124)+abb296(33)+abb29&
      &6(28)
      abb296(28)=4.0_ki*abb296(28)
      abb296(33)=-spbl6l5*abb296(43)
      abb296(33)=abb296(33)-abb296(31)
      abb296(33)=spak2l5*abb296(33)
      abb296(23)=-abb296(23)*abb296(39)
      abb296(39)=spak1l5*spak2l6*abb296(11)*spbl6k1**2
      abb296(48)=-es12*abb296(76)
      abb296(23)=abb296(48)+abb296(39)+abb296(23)+abb296(33)
      abb296(23)=8.0_ki*abb296(23)
      abb296(33)=spak1l5*spbe7k1
      abb296(39)=-spal5l6*spbe7l6
      abb296(39)=abb296(39)-abb296(33)
      abb296(39)=-abb296(27)*abb296(39)
      abb296(39)=abb296(39)+abb296(62)
      abb296(39)=8.0_ki*abb296(39)
      abb296(48)=abb296(76)-abb296(65)
      abb296(48)=16.0_ki*abb296(48)
      abb296(54)=abb296(65)*abb296(123)
      abb296(62)=spak1l5*spbk2k1
      abb296(76)=-spal5l6*spbl6k2
      abb296(62)=abb296(62)+abb296(76)
      abb296(27)=-abb296(27)*abb296(62)
      abb296(62)=spal5l6*abb296(8)*abb296(64)
      abb296(76)=-abb296(8)*spak1l5
      abb296(122)=-abb296(76)*abb296(121)
      abb296(27)=abb296(54)+abb296(122)+abb296(62)+abb296(27)
      abb296(27)=4.0_ki*abb296(27)
      abb296(54)=-abb296(121)*abb296(11)
      abb296(62)=abb296(12)*spbk2k1
      abb296(121)=abb296(54)-abb296(62)
      abb296(122)=abb296(45)*abb296(121)
      abb296(93)=-spbe7k1*abb296(93)
      abb296(93)=abb296(93)+abb296(122)
      abb296(93)=4.0_ki*abb296(93)
      abb296(122)=-8.0_ki*abb296(8)
      abb296(124)=-spak2l6*abb296(122)
      abb296(125)=abb296(12)*spbe7k1
      abb296(126)=-8.0_ki*abb296(125)
      abb296(121)=4.0_ki*abb296(121)
      abb296(64)=-abb296(64)*abb296(11)
      abb296(45)=-4.0_ki*abb296(45)*abb296(64)
      abb296(127)=8.0_ki*spbe7l6*abb296(12)
      abb296(128)=spak2k7*abb296(11)*abb296(116)
      abb296(129)=abb296(12)*spbl6k2
      abb296(129)=abb296(129)+abb296(64)
      abb296(129)=4.0_ki*abb296(129)
      abb296(12)=-abb296(12)*abb296(116)
      abb296(9)=-spak4k7*abb296(9)
      abb296(65)=-abb296(24)*abb296(65)
      abb296(9)=abb296(65)+abb296(9)
      abb296(9)=8.0_ki*abb296(9)
      abb296(65)=abb296(96)*spak4k7
      abb296(116)=8.0_ki*spak4k7*abb296(98)
      abb296(130)=-abb296(14)*abb296(89)
      abb296(131)=-abb296(14)*spbk2k1
      abb296(132)=abb296(74)*abb296(131)
      abb296(132)=abb296(130)+abb296(132)
      abb296(132)=abb296(24)*abb296(132)
      abb296(30)=abb296(62)*abb296(30)
      abb296(30)=abb296(30)+abb296(132)
      abb296(30)=spbk7e7*abb296(30)
      abb296(26)=-abb296(26)*abb296(62)*abb296(35)
      abb296(26)=abb296(30)+abb296(26)
      abb296(26)=4.0_ki*abb296(26)
      abb296(30)=abb296(74)*abb296(13)
      abb296(74)=abb296(40)*abb296(30)
      abb296(132)=abb296(95)*spak1l5
      abb296(133)=spak2k4*abb296(132)
      abb296(113)=-spal5l6*abb296(113)
      abb296(74)=abb296(113)+abb296(133)+abb296(74)
      abb296(74)=spbk2k1*abb296(74)
      abb296(98)=-spal5l6*abb296(98)
      abb296(98)=abb296(98)+abb296(132)
      abb296(98)=spak4k7*abb296(98)
      abb296(113)=abb296(13)*abb296(3)
      abb296(133)=abb296(30)+abb296(113)
      abb296(134)=abb296(24)*abb296(133)
      abb296(98)=abb296(134)+abb296(98)
      abb296(98)=spbk7k1*abb296(98)
      abb296(89)=abb296(13)*abb296(89)
      abb296(134)=abb296(40)*abb296(89)
      abb296(74)=abb296(98)+abb296(134)+abb296(74)
      abb296(74)=8.0_ki*abb296(74)
      abb296(98)=abb296(55)*spbe7k1
      abb296(134)=abb296(98)*abb296(30)
      abb296(132)=abb296(132)*spbe7k1*spak4e7
      abb296(135)=spal5l6*spbe7k1
      abb296(103)=abb296(135)*abb296(103)
      abb296(103)=-abb296(103)+abb296(134)+abb296(132)
      abb296(98)=abb296(98)*abb296(113)
      abb296(98)=abb296(98)+abb296(103)
      abb296(132)=-8.0_ki*abb296(98)
      abb296(134)=abb296(91)*spbe7k1
      abb296(136)=abb296(62)*abb296(77)
      abb296(134)=abb296(134)+abb296(136)
      abb296(134)=8.0_ki*abb296(134)
      abb296(137)=16.0_ki*spak4l5
      abb296(95)=abb296(137)*abb296(95)
      abb296(14)=-abb296(14)*abb296(70)
      abb296(70)=abb296(13)*abb296(79)
      abb296(70)=abb296(14)+abb296(70)
      abb296(70)=spbe7k1*abb296(70)
      abb296(131)=abb296(77)*abb296(131)
      abb296(70)=abb296(131)+abb296(70)
      abb296(70)=abb296(70)*abb296(73)
      abb296(14)=abb296(3)*abb296(14)
      abb296(131)=abb296(79)*abb296(113)
      abb296(14)=abb296(14)+abb296(131)
      abb296(14)=spbe7k1*abb296(14)
      abb296(130)=abb296(77)*abb296(130)
      abb296(14)=abb296(130)+abb296(14)
      abb296(14)=abb296(6)*abb296(14)
      abb296(14)=abb296(14)+abb296(70)+abb296(98)
      abb296(14)=8.0_ki*abb296(14)
      abb296(13)=abb296(73)*abb296(13)
      abb296(70)=abb296(113)*abb296(6)
      abb296(13)=abb296(13)+abb296(70)
      abb296(70)=-spbk3k1*abb296(13)*abb296(137)
      abb296(98)=abb296(55)*abb296(113)
      abb296(91)=abb296(98)-abb296(91)
      abb296(91)=spbe7k1*abb296(91)
      abb296(91)=-abb296(136)+abb296(91)+abb296(103)
      abb296(91)=4.0_ki*abb296(91)
      abb296(98)=spak4l5*abb296(96)
      abb296(99)=abb296(99)*abb296(78)
      abb296(103)=-abb296(11)*spak4l5
      abb296(113)=abb296(103)*spbl5k1
      abb296(80)=-abb296(80)+abb296(99)+abb296(113)
      abb296(80)=8.0_ki*abb296(80)
      abb296(38)=-4.0_ki*abb296(38)
      abb296(96)=abb296(96)*spak2k4
      abb296(99)=abb296(6)*abb296(3)
      abb296(99)=abb296(73)+abb296(99)
      abb296(82)=4.0_ki*spbe7k2*abb296(82)*abb296(99)
      abb296(13)=-abb296(11)-abb296(13)
      abb296(13)=8.0_ki*abb296(40)*abb296(13)
      abb296(99)=-spbe7l6*abb296(62)
      abb296(113)=-spbl6k2*abb296(125)
      abb296(99)=abb296(99)+abb296(113)
      abb296(99)=spal5l6*abb296(99)
      abb296(113)=-spbe7k1*abb296(133)*abb296(123)
      abb296(64)=-abb296(135)*abb296(64)
      abb296(33)=-abb296(54)*abb296(33)
      abb296(33)=abb296(113)+abb296(33)+abb296(99)+abb296(64)
      abb296(33)=4.0_ki*abb296(33)
      abb296(30)=spbk2k1*abb296(30)
      abb296(30)=abb296(89)+abb296(30)
      abb296(30)=8.0_ki*abb296(30)
      abb296(54)=4.0_ki*abb296(125)
      abb296(8)=-abb296(137)*abb296(8)
      abb296(31)=abb296(31)*abb296(73)
      abb296(31)=abb296(31)+abb296(49)
      abb296(31)=abb296(31)*abb296(137)
      abb296(49)=spak4l5*abb296(122)
      abb296(64)=abb296(7)*abb296(78)
      abb296(73)=abb296(108)*abb296(88)
      abb296(78)=spbl6l5*abb296(103)
      abb296(64)=abb296(78)-abb296(68)+abb296(64)+abb296(73)
      abb296(64)=8.0_ki*abb296(64)
      abb296(25)=-spbe7l6*abb296(25)
      abb296(68)=abb296(77)*abb296(32)
      abb296(73)=-abb296(79)*abb296(58)
      abb296(25)=abb296(73)+abb296(25)+abb296(68)
      abb296(25)=abb296(4)*abb296(25)
      abb296(68)=-spbk3k2*abb296(75)*abb296(32)
      abb296(18)=spbe7k3*abb296(18)*abb296(109)*abb296(19)
      abb296(19)=abb296(58)*abb296(69)
      abb296(36)=-abb296(36)*abb296(19)
      abb296(18)=abb296(36)+abb296(68)+abb296(18)
      abb296(18)=spak4l6*abb296(18)
      abb296(32)=-spbe7k3*abb296(32)
      abb296(19)=abb296(19)+abb296(32)
      abb296(19)=abb296(20)*abb296(19)
      abb296(20)=spbk3k2*abb296(21)
      abb296(19)=abb296(20)+abb296(19)
      abb296(19)=spak1k4*abb296(19)
      abb296(20)=-spbk3k2*abb296(35)*abb296(37)
      abb296(18)=abb296(19)+abb296(18)+abb296(20)+abb296(25)
      abb296(18)=4.0_ki*abb296(18)
      abb296(19)=-abb296(4)*spak4l5*abb296(42)
      abb296(20)=-spak4l6*abb296(52)
      abb296(21)=spak1k4*abb296(43)
      abb296(19)=abb296(21)+abb296(20)+abb296(19)
      abb296(19)=spbl6k3*abb296(19)
      abb296(20)=-abb296(40)*abb296(52)
      abb296(21)=abb296(24)*abb296(50)
      abb296(19)=abb296(21)+abb296(20)+abb296(19)
      abb296(19)=8.0_ki*abb296(19)
      abb296(20)=abb296(59)*abb296(55)
      abb296(21)=8.0_ki*abb296(20)
      abb296(20)=4.0_ki*abb296(20)
      abb296(24)=-4.0_ki*abb296(59)*abb296(123)
      abb296(25)=-abb296(52)+abb296(76)
      abb296(25)=8.0_ki*abb296(25)
      abb296(11)=-8.0_ki*abb296(11)
      abb296(32)=spbe7k1*abb296(106)
      abb296(35)=abb296(86)*abb296(62)
      abb296(32)=abb296(35)+abb296(32)
      abb296(32)=4.0_ki*abb296(32)
      R2d296=0.0_ki
      rat2 = rat2 + R2d296
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='296' value='", &
          & R2d296, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd296h2
