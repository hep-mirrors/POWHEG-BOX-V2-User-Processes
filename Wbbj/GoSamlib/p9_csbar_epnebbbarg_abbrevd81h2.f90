module     p9_csbar_epnebbbarg_abbrevd81h2
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(107), public :: abb81
   complex(ki), public :: R2d81
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
      abb81(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb81(2)=NC**(-1)
      abb81(3)=es56**(-1)
      abb81(4)=spbl5k2**(-1)
      abb81(5)=spak2l6**(-1)
      abb81(6)=c1*abb81(2)
      abb81(7)=c4*abb81(2)**2
      abb81(6)=abb81(6)-abb81(7)-c2
      abb81(7)=TR*gW
      abb81(6)=abb81(6)*abb81(7)**2*i_*CVSC*abb81(3)*abb81(1)
      abb81(7)=-abb81(6)*spbk7l6
      abb81(8)=abb81(7)*spak2l5
      abb81(9)=abb81(8)*spak4k7
      abb81(10)=spbe7k1*spbk7k3
      abb81(11)=abb81(10)*spae7k7
      abb81(12)=-abb81(11)*abb81(9)
      abb81(13)=spak2l5*spbl6k3
      abb81(14)=-abb81(6)*abb81(13)
      abb81(15)=abb81(11)*spak3k4
      abb81(16)=-abb81(14)*abb81(15)
      abb81(12)=abb81(12)+abb81(16)
      abb81(12)=8.0_ki*abb81(12)
      abb81(16)=abb81(14)*spak3k4
      abb81(16)=abb81(16)+abb81(9)
      abb81(17)=spbk3k1*abb81(16)
      abb81(18)=-mB**2*abb81(5)*abb81(4)*abb81(6)
      abb81(19)=abb81(18)*spak2k4
      abb81(20)=abb81(19)*spbk4k3
      abb81(20)=abb81(20)-abb81(14)
      abb81(21)=abb81(20)*spak4k7
      abb81(22)=abb81(18)*spak4k7
      abb81(23)=spak2k7*spbk7k3
      abb81(24)=abb81(22)*abb81(23)
      abb81(21)=abb81(21)+abb81(24)
      abb81(25)=-spbk7k1*abb81(21)
      abb81(17)=abb81(25)+abb81(17)
      abb81(17)=16.0_ki*abb81(17)
      abb81(25)=abb81(20)*spbe7k1
      abb81(26)=abb81(18)*spak2k7
      abb81(27)=abb81(26)*abb81(10)
      abb81(25)=abb81(27)+abb81(25)
      abb81(25)=abb81(25)*spak4e7
      abb81(27)=abb81(19)*abb81(11)
      abb81(25)=abb81(25)+abb81(27)
      abb81(27)=16.0_ki*abb81(25)
      abb81(28)=abb81(19)*spbk3k1
      abb81(29)=32.0_ki*abb81(28)
      abb81(30)=16.0_ki*abb81(19)
      abb81(31)=abb81(30)*abb81(11)
      abb81(32)=spbk7e7*spak2e7
      abb81(21)=-abb81(21)*abb81(32)
      abb81(33)=spbe7k3*spak2e7
      abb81(9)=-abb81(33)*abb81(9)
      abb81(34)=abb81(33)*spak3k4
      abb81(35)=-abb81(14)*abb81(34)
      abb81(9)=abb81(21)+abb81(9)+abb81(35)
      abb81(9)=spbk2k1*abb81(9)
      abb81(21)=-abb81(6)*spak4l5
      abb81(35)=abb81(21)*spbl6k1
      abb81(36)=-spbk4k3*spak2e7*abb81(35)
      abb81(37)=-abb81(6)*spak2e7
      abb81(38)=abb81(37)*spbl6k1
      abb81(39)=spal5k7*spbk7k3
      abb81(40)=abb81(39)*abb81(38)
      abb81(36)=abb81(40)+abb81(36)
      abb81(40)=spbk7e7*spak4k7
      abb81(36)=abb81(40)*abb81(36)
      abb81(9)=abb81(9)+abb81(36)
      abb81(9)=4.0_ki*abb81(9)
      abb81(36)=abb81(19)*spbk2k1
      abb81(35)=abb81(36)+abb81(35)
      abb81(36)=abb81(33)*abb81(35)
      abb81(41)=8.0_ki*abb81(36)
      abb81(42)=spak2e7*abb81(40)
      abb81(42)=abb81(42)-abb81(34)
      abb81(43)=abb81(18)*spbk3k1
      abb81(42)=abb81(43)*abb81(42)
      abb81(44)=abb81(22)*spbk7k1
      abb81(45)=abb81(33)*abb81(44)
      abb81(25)=abb81(45)+abb81(42)-abb81(25)
      abb81(25)=8.0_ki*abb81(25)
      abb81(42)=spbk3k1*abb81(30)
      abb81(36)=-4.0_ki*abb81(36)
      abb81(45)=spbk3k2*spak1k2
      abb81(46)=abb81(18)*abb81(45)
      abb81(47)=spak1l5*spbl6k3
      abb81(48)=-abb81(47)*abb81(6)
      abb81(49)=abb81(46)+abb81(48)
      abb81(50)=abb81(49)*spak2k7
      abb81(51)=abb81(10)*spak3k4
      abb81(52)=abb81(51)*abb81(50)
      abb81(53)=abb81(18)*spak1k2
      abb81(54)=es71+es12-es712
      abb81(55)=abb81(54)*abb81(53)
      abb81(56)=abb81(7)*spak1l5
      abb81(57)=abb81(56)*spak2k7
      abb81(55)=abb81(55)-abb81(57)
      abb81(58)=abb81(10)*spak4k7
      abb81(59)=-abb81(58)*abb81(55)
      abb81(16)=spbe7k2*abb81(23)*abb81(16)
      abb81(16)=abb81(16)+abb81(59)+abb81(52)
      abb81(16)=4.0_ki*abb81(16)
      abb81(52)=spbe7l6*spak4l5
      abb81(59)=abb81(52)*spbk4k3
      abb81(60)=abb81(39)*spbe7l6
      abb81(59)=abb81(59)-abb81(60)
      abb81(60)=-abb81(6)*spak2k4
      abb81(59)=abb81(59)*abb81(60)
      abb81(61)=abb81(19)*abb81(45)
      abb81(62)=abb81(60)*abb81(47)
      abb81(61)=abb81(61)+abb81(62)
      abb81(63)=abb81(61)*spbe7k1
      abb81(64)=abb81(18)*spbk4k3*spak2k4**2
      abb81(13)=abb81(60)*abb81(13)
      abb81(64)=abb81(64)-abb81(13)
      abb81(65)=abb81(64)*spbe7k2
      abb81(66)=-abb81(6)*abb81(23)
      abb81(67)=abb81(66)*abb81(52)
      abb81(59)=abb81(59)-abb81(63)+abb81(65)-abb81(67)
      abb81(63)=8.0_ki*abb81(59)
      abb81(65)=abb81(19)*spbe7k2
      abb81(68)=abb81(65)*abb81(23)
      abb81(67)=abb81(68)+abb81(67)
      abb81(67)=8.0_ki*abb81(67)
      abb81(68)=abb81(18)*abb81(23)
      abb81(69)=spak3k4*spbe7k3
      abb81(70)=abb81(68)*abb81(69)
      abb81(24)=spbk7e7*abb81(24)
      abb81(24)=abb81(70)+abb81(24)
      abb81(24)=8.0_ki*abb81(24)
      abb81(70)=-spbe7k3*abb81(30)
      abb81(59)=-4.0_ki*abb81(59)
      abb81(71)=8.0_ki*abb81(19)
      abb81(72)=spbe7k3*abb81(71)
      abb81(73)=abb81(53)*spbk7k2
      abb81(56)=abb81(73)-abb81(56)
      abb81(58)=abb81(58)*abb81(56)
      abb81(46)=-abb81(46)*abb81(51)
      abb81(46)=abb81(46)+abb81(58)
      abb81(46)=spak2e7*abb81(46)
      abb81(58)=abb81(37)*abb81(47)
      abb81(51)=-abb81(51)*abb81(58)
      abb81(46)=abb81(51)+abb81(46)
      abb81(46)=4.0_ki*abb81(46)
      abb81(51)=spbk4k3*spak4l5
      abb81(73)=spak1l5*spbk3k1
      abb81(74)=spbk3k2*spak2l5
      abb81(73)=abb81(39)-abb81(51)+abb81(73)+abb81(74)
      abb81(73)=abb81(60)*spbk7l6*abb81(73)
      abb81(61)=spbk7k1*abb81(61)
      abb81(28)=abb81(28)*spak1k2
      abb81(64)=-abb81(28)-abb81(64)
      abb81(64)=spbk7k2*abb81(64)
      abb81(74)=abb81(19)*spbk7k3
      abb81(75)=-abb81(74)*abb81(54)
      abb81(61)=abb81(64)+abb81(61)+abb81(73)+abb81(75)
      abb81(61)=8.0_ki*abb81(61)
      abb81(64)=abb81(37)*abb81(52)
      abb81(73)=abb81(64)*spbk7k3
      abb81(75)=8.0_ki*abb81(73)
      abb81(76)=abb81(18)*abb81(33)
      abb81(77)=-spak3k4*abb81(76)
      abb81(78)=-abb81(22)*abb81(32)
      abb81(77)=abb81(77)+abb81(78)
      abb81(77)=8.0_ki*spbk7k3*abb81(77)
      abb81(74)=32.0_ki*abb81(74)
      abb81(73)=-4.0_ki*abb81(73)
      abb81(78)=-abb81(6)*spbk3k1
      abb81(79)=abb81(78)*abb81(34)
      abb81(40)=abb81(40)*abb81(37)
      abb81(80)=-spbk3k1*abb81(40)
      abb81(81)=-abb81(6)*spak4k7
      abb81(82)=abb81(81)*spbk7k1
      abb81(83)=-abb81(33)*abb81(82)
      abb81(79)=abb81(83)+abb81(79)+abb81(80)
      abb81(79)=4.0_ki*abb81(79)
      abb81(69)=-abb81(66)*abb81(69)
      abb81(80)=-spbk7e7*abb81(23)*abb81(81)
      abb81(69)=abb81(69)+abb81(80)
      abb81(69)=4.0_ki*abb81(69)
      abb81(80)=abb81(60)*spbe7k3
      abb81(83)=8.0_ki*abb81(80)
      abb81(80)=-4.0_ki*abb81(80)
      abb81(34)=-abb81(6)*abb81(34)
      abb81(34)=abb81(34)+abb81(40)
      abb81(34)=4.0_ki*spbk7k3*abb81(34)
      abb81(40)=16.0_ki*abb81(60)
      abb81(40)=-spbk7k3*abb81(40)
      abb81(84)=abb81(60)*spbl6k3
      abb81(85)=16.0_ki*abb81(84)
      abb81(84)=-8.0_ki*abb81(84)
      abb81(86)=-spbk7k4*abb81(19)
      abb81(86)=abb81(86)+abb81(8)
      abb81(87)=spae7k7*spbe7k1
      abb81(86)=abb81(87)*abb81(86)
      abb81(88)=-spak2k3*abb81(18)*abb81(11)
      abb81(86)=abb81(88)+abb81(86)
      abb81(86)=8.0_ki*abb81(86)
      abb81(88)=-abb81(6)*spbl6k1
      abb81(89)=abb81(88)*spak2l5
      abb81(90)=spbk7k1*abb81(26)
      abb81(91)=spak2k3*abb81(43)
      abb81(19)=spbk4k1*abb81(19)
      abb81(19)=abb81(19)+abb81(91)+abb81(90)-abb81(89)
      abb81(19)=16.0_ki*abb81(19)
      abb81(89)=16.0_ki*abb81(89)
      abb81(90)=spbe7l6*abb81(37)
      abb81(91)=spak2l5*abb81(90)
      abb81(32)=abb81(18)*abb81(32)
      abb81(92)=spak2k7*abb81(32)
      abb81(93)=-spak2k3*abb81(76)
      abb81(91)=abb81(93)+abb81(91)+abb81(92)
      abb81(91)=spbk2k1*abb81(91)
      abb81(35)=-spbe7k4*spak2e7*abb81(35)
      abb81(38)=-spal5k7*spbk7e7*abb81(38)
      abb81(92)=-spak3l5*abb81(33)*abb81(88)
      abb81(35)=abb81(35)+abb81(92)+abb81(38)+abb81(91)
      abb81(35)=4.0_ki*abb81(35)
      abb81(38)=abb81(18)*spbe7k1
      abb81(91)=8.0_ki*abb81(38)
      abb81(91)=-spak2e7*abb81(91)
      abb81(92)=abb81(8)*spak2k7
      abb81(93)=spak2k3*abb81(68)
      abb81(93)=abb81(93)-abb81(92)
      abb81(93)=spbe7k2*abb81(93)
      abb81(55)=spbe7k1*abb81(55)
      abb81(52)=-abb81(6)*abb81(52)
      abb81(52)=abb81(52)+abb81(65)
      abb81(52)=spbk7k4*spak2k7*abb81(52)
      abb81(65)=spak3l5*spbe7l6*abb81(66)
      abb81(52)=abb81(65)+abb81(52)+abb81(55)+abb81(93)
      abb81(52)=4.0_ki*abb81(52)
      abb81(55)=8.0_ki*spbk7e7
      abb81(26)=-abb81(26)*abb81(55)
      abb81(55)=-spak2e7*spbe7k1*abb81(56)
      abb81(65)=-spbk7k4*abb81(64)
      abb81(93)=-spak3l5*spbk7k3*abb81(90)
      abb81(55)=abb81(93)+abb81(65)+abb81(55)
      abb81(55)=4.0_ki*abb81(55)
      abb81(8)=-8.0_ki*abb81(8)
      abb81(32)=8.0_ki*abb81(32)
      abb81(37)=4.0_ki*abb81(37)
      abb81(65)=spbe7k1*abb81(37)
      abb81(93)=-4.0_ki*abb81(6)
      abb81(94)=abb81(93)*spbk7e7*spak2k7
      abb81(37)=-spbk7e7*abb81(37)
      abb81(95)=abb81(7)*spak2k7
      abb81(96)=spak1k2*abb81(88)
      abb81(97)=spak2k3*spbl6k3*abb81(6)
      abb81(60)=-spbl6k4*abb81(60)
      abb81(60)=abb81(60)+abb81(97)+abb81(95)+abb81(96)
      abb81(60)=8.0_ki*abb81(60)
      abb81(53)=abb81(53)*spbk3k1
      abb81(20)=abb81(53)+abb81(68)+abb81(20)
      abb81(20)=abb81(20)*abb81(54)
      abb81(50)=-spbk7k1*abb81(50)
      abb81(53)=-abb81(14)-abb81(53)
      abb81(53)=es23*abb81(53)
      abb81(57)=-spbk3k1*abb81(57)
      abb81(92)=-spbk3k2*abb81(92)
      abb81(51)=abb81(95)*abb81(51)
      abb81(7)=-spal5k7*abb81(23)*abb81(7)
      abb81(23)=abb81(78)*abb81(47)
      abb81(95)=spak2k3*abb81(23)
      abb81(7)=abb81(53)+abb81(95)+abb81(7)+abb81(50)+abb81(51)+abb81(57)+abb81&
      &(92)+abb81(20)
      abb81(7)=8.0_ki*abb81(7)
      abb81(20)=abb81(64)*spbk4k3
      abb81(50)=abb81(38)*abb81(45)
      abb81(51)=abb81(50)*spak2e7
      abb81(53)=abb81(90)*abb81(39)
      abb81(57)=abb81(58)*spbe7k1
      abb81(20)=-abb81(20)+abb81(51)+abb81(53)+abb81(57)
      abb81(51)=8.0_ki*abb81(20)
      abb81(53)=16.0_ki*abb81(14)
      abb81(57)=-32.0_ki*abb81(68)
      abb81(58)=16.0_ki*abb81(18)
      abb81(64)=abb81(33)*abb81(58)
      abb81(20)=-4.0_ki*abb81(20)
      abb81(14)=8.0_ki*abb81(14)
      abb81(68)=-8.0_ki*abb81(76)
      abb81(66)=16.0_ki*abb81(66)
      abb81(76)=-8.0_ki*abb81(6)
      abb81(90)=-abb81(33)*abb81(76)
      abb81(33)=abb81(33)*abb81(93)
      abb81(92)=spbl6k4*spak2l5*abb81(76)
      abb81(13)=-abb81(13)-abb81(28)
      abb81(13)=spbk3k2*abb81(13)
      abb81(28)=-spbk3k1*abb81(62)
      abb81(13)=abb81(28)+abb81(13)
      abb81(13)=8.0_ki*abb81(13)
      abb81(28)=8.0_ki*abb81(11)*abb81(22)
      abb81(62)=-16.0_ki*spak4k7*abb81(43)
      abb81(95)=-4.0_ki*abb81(11)*abb81(81)
      abb81(96)=8.0_ki*spbk3k1*abb81(81)
      abb81(97)=8.0_ki*abb81(18)
      abb81(98)=-abb81(87)*abb81(97)
      abb81(99)=abb81(87)*abb81(93)
      abb81(100)=abb81(21)*spbk4k3
      abb81(101)=-spbk7k1*spak4k7*abb81(100)
      abb81(39)=abb81(39)*abb81(82)
      abb81(39)=abb81(101)+abb81(39)
      abb81(39)=8.0_ki*abb81(39)
      abb81(101)=spak4e7*spbe7k1
      abb81(100)=abb81(100)*abb81(101)
      abb81(102)=-abb81(6)*spal5k7
      abb81(10)=spak4e7*abb81(102)*abb81(10)
      abb81(103)=abb81(21)*abb81(11)
      abb81(10)=abb81(103)+abb81(100)-abb81(10)
      abb81(100)=8.0_ki*abb81(10)
      abb81(104)=abb81(21)*spbk3k1
      abb81(105)=16.0_ki*abb81(104)
      abb81(103)=8.0_ki*abb81(103)
      abb81(10)=-4.0_ki*abb81(10)
      abb81(104)=8.0_ki*abb81(104)
      abb81(106)=-spbk7k4*abb81(87)*abb81(21)
      abb81(107)=spak3l5*abb81(6)*abb81(11)
      abb81(106)=abb81(106)+abb81(107)
      abb81(106)=4.0_ki*abb81(106)
      abb81(102)=-spbk7k1*abb81(102)
      abb81(107)=spak3l5*abb81(78)
      abb81(21)=spbk4k1*abb81(21)
      abb81(21)=abb81(21)+abb81(102)+abb81(107)
      abb81(21)=8.0_ki*abb81(21)
      abb81(97)=-abb81(15)*abb81(97)
      abb81(102)=spak3k4*abb81(43)
      abb81(44)=abb81(102)+abb81(44)
      abb81(44)=16.0_ki*abb81(44)
      abb81(38)=abb81(38)*spak4e7
      abb81(102)=-16.0_ki*abb81(38)
      abb81(38)=8.0_ki*abb81(38)
      abb81(107)=abb81(15)*abb81(93)
      abb81(78)=-spak3k4*abb81(78)
      abb81(78)=abb81(78)-abb81(82)
      abb81(78)=8.0_ki*abb81(78)
      abb81(82)=abb81(76)*abb81(101)
      abb81(93)=-abb81(93)*abb81(101)
      abb81(101)=abb81(56)*spak4k7
      abb81(11)=abb81(11)*abb81(101)
      abb81(15)=-abb81(15)*abb81(49)
      abb81(11)=abb81(15)+abb81(11)
      abb81(11)=4.0_ki*abb81(11)
      abb81(15)=-spbk3k1*abb81(101)
      abb81(43)=abb81(45)*abb81(43)
      abb81(23)=abb81(43)+abb81(23)
      abb81(23)=spak3k4*abb81(23)
      abb81(43)=abb81(47)*abb81(81)
      abb81(22)=abb81(45)*abb81(22)
      abb81(22)=abb81(43)+abb81(22)
      abb81(22)=spbk7k1*abb81(22)
      abb81(15)=abb81(22)+abb81(23)+abb81(15)
      abb81(15)=8.0_ki*abb81(15)
      abb81(22)=abb81(48)*spbe7k1
      abb81(22)=abb81(22)+abb81(50)
      abb81(23)=8.0_ki*spak4e7
      abb81(23)=-abb81(22)*abb81(23)
      abb81(30)=abb81(30)*spbk3k2
      abb81(22)=4.0_ki*spak4e7*abb81(22)
      abb81(43)=-spbk3k2*abb81(71)
      abb81(45)=-4.0_ki*abb81(87)*abb81(56)
      abb81(47)=es234-es34-abb81(54)
      abb81(18)=abb81(18)*abb81(47)
      abb81(47)=-spak1l5*abb81(88)
      abb81(6)=-spbl6k2*spak2l5*abb81(6)
      abb81(6)=abb81(6)+abb81(47)+abb81(18)
      abb81(6)=8.0_ki*abb81(6)
      R2d81=0.0_ki
      rat2 = rat2 + R2d81
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='81' value='", &
          & R2d81, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd81h2
