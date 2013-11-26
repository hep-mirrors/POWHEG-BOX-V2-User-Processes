module     p9_csbar_epnebbbarg_abbrevd120h3
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(96), public :: abb120
   complex(ki), public :: R2d120
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
      abb120(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb120(2)=1.0_ki/(mB**2-es67-es56+es567)
      abb120(3)=NC**(-1)
      abb120(4)=es234**(-1)
      abb120(5)=spak2l5**(-1)
      abb120(6)=spak2l6**(-1)
      abb120(7)=spbl6k2**(-1)
      abb120(8)=spbl5k2**(-1)
      abb120(9)=sqrt(mB**2)
      abb120(10)=TR*gW
      abb120(10)=abb120(10)**2
      abb120(11)=abb120(10)*spak2k4**2
      abb120(12)=abb120(4)*i_*CVSC*abb120(2)*abb120(1)
      abb120(13)=abb120(12)*abb120(11)
      abb120(14)=abb120(3)**2
      abb120(14)=abb120(14)+1.0_ki
      abb120(15)=abb120(14)*abb120(13)
      abb120(16)=abb120(6)*c2
      abb120(17)=abb120(5)*spak2e7
      abb120(18)=abb120(17)*spbk4k3
      abb120(19)=abb120(16)*abb120(18)
      abb120(20)=abb120(19)*spbl6k1*abb120(15)
      abb120(21)=abb120(18)*abb120(6)
      abb120(22)=abb120(12)*abb120(3)
      abb120(23)=abb120(21)*abb120(22)
      abb120(24)=2.0_ki*c1
      abb120(25)=abb120(24)*spbl6k1
      abb120(26)=abb120(25)*abb120(23)
      abb120(27)=-abb120(26)*abb120(11)
      abb120(20)=abb120(20)+abb120(27)
      abb120(27)=spbk2k1*abb120(7)
      abb120(28)=mB**3
      abb120(20)=abb120(27)*abb120(28)*abb120(20)
      abb120(10)=abb120(12)*abb120(10)*spak2k4
      abb120(29)=abb120(10)*mB
      abb120(30)=abb120(29)*abb120(14)
      abb120(31)=abb120(30)*c2
      abb120(32)=abb120(24)*abb120(3)
      abb120(33)=abb120(32)*abb120(29)
      abb120(31)=abb120(31)-abb120(33)
      abb120(33)=spbl6k1**2
      abb120(34)=abb120(33)*abb120(18)
      abb120(35)=abb120(31)*abb120(34)
      abb120(36)=-spak4l6*abb120(35)
      abb120(37)=abb120(17)*spbk3k2
      abb120(38)=abb120(33)*abb120(37)
      abb120(39)=abb120(31)*abb120(38)
      abb120(40)=-spak2l6*abb120(39)
      abb120(20)=abb120(40)+abb120(20)+abb120(36)
      abb120(20)=spak1k7*abb120(20)
      abb120(36)=abb120(10)*abb120(14)
      abb120(40)=abb120(28)*abb120(36)
      abb120(41)=abb120(40)*abb120(19)
      abb120(42)=-spbl6k1*abb120(41)
      abb120(43)=abb120(21)*abb120(28)
      abb120(44)=abb120(10)*abb120(3)
      abb120(45)=abb120(43)*abb120(44)
      abb120(46)=abb120(25)*abb120(45)
      abb120(42)=abb120(42)+abb120(46)
      abb120(42)=spak1k4*abb120(42)*abb120(27)
      abb120(40)=abb120(40)*abb120(16)
      abb120(46)=abb120(37)*spbl6k1
      abb120(47)=-abb120(46)*abb120(40)
      abb120(48)=abb120(28)*abb120(44)
      abb120(49)=abb120(17)*abb120(6)
      abb120(50)=abb120(49)*abb120(48)
      abb120(51)=abb120(24)*spbk3k2
      abb120(52)=abb120(51)*spbl6k1
      abb120(53)=abb120(52)*abb120(50)
      abb120(47)=abb120(47)+abb120(53)
      abb120(47)=es12*abb120(7)*abb120(47)
      abb120(42)=abb120(42)+abb120(47)
      abb120(42)=spak2k7*abb120(42)
      abb120(39)=-spak1k2*abb120(39)
      abb120(35)=-spak1k4*abb120(35)
      abb120(35)=abb120(39)+abb120(35)
      abb120(35)=spal6k7*abb120(35)
      abb120(20)=abb120(35)+abb120(20)+abb120(42)
      abb120(20)=spbk7e7*abb120(20)
      abb120(35)=spbe7l5*abb120(11)
      abb120(39)=abb120(35)*abb120(12)
      abb120(42)=abb120(6)**2
      abb120(47)=abb120(42)*abb120(18)
      abb120(53)=abb120(39)*c2*abb120(14)*abb120(47)
      abb120(54)=abb120(42)*abb120(22)
      abb120(55)=abb120(54)*abb120(18)
      abb120(56)=abb120(55)*abb120(35)*abb120(24)
      abb120(53)=abb120(53)-abb120(56)
      abb120(53)=abb120(27)*abb120(53)*mB**5
      abb120(10)=abb120(10)*spbe7l5
      abb120(56)=abb120(10)*abb120(3)
      abb120(43)=abb120(43)*abb120(56)
      abb120(57)=abb120(24)*abb120(43)
      abb120(58)=abb120(10)*abb120(14)
      abb120(59)=abb120(28)*abb120(58)
      abb120(60)=abb120(59)*abb120(19)
      abb120(57)=abb120(57)-abb120(60)
      abb120(61)=spak4l6*spbl6k1
      abb120(62)=-abb120(57)*abb120(61)
      abb120(63)=mB**2
      abb120(64)=abb120(63)*abb120(58)
      abb120(65)=abb120(9)*c2
      abb120(66)=abb120(64)*abb120(65)
      abb120(67)=abb120(66)*abb120(17)
      abb120(68)=abb120(17)*c2
      abb120(69)=abb120(68)*abb120(59)
      abb120(67)=abb120(67)-abb120(69)
      abb120(69)=spbl6k1*spbk3k2
      abb120(70)=-abb120(67)*abb120(69)
      abb120(71)=abb120(56)*abb120(28)
      abb120(72)=abb120(56)*abb120(9)
      abb120(73)=abb120(72)*abb120(63)
      abb120(74)=abb120(71)-abb120(73)
      abb120(75)=-abb120(17)*abb120(74)
      abb120(76)=abb120(75)*abb120(52)
      abb120(62)=abb120(62)-abb120(53)+abb120(70)+abb120(76)
      abb120(62)=abb120(8)*abb120(62)
      abb120(15)=abb120(47)*abb120(65)*abb120(15)
      abb120(47)=abb120(24)*abb120(9)
      abb120(11)=abb120(47)*abb120(11)
      abb120(55)=abb120(11)*abb120(55)
      abb120(15)=abb120(15)-abb120(55)
      abb120(15)=spbe7k1*abb120(15)*mB**4
      abb120(55)=abb120(59)*abb120(16)
      abb120(70)=abb120(55)*spak2e7
      abb120(76)=abb120(16)*abb120(9)
      abb120(77)=abb120(64)*abb120(76)
      abb120(78)=abb120(77)*spak2e7
      abb120(79)=abb120(70)-abb120(78)
      abb120(80)=abb120(79)*abb120(69)
      abb120(81)=abb120(6)*spak2e7
      abb120(82)=abb120(81)*abb120(73)
      abb120(83)=abb120(81)*abb120(71)
      abb120(82)=abb120(82)-abb120(83)
      abb120(84)=abb120(82)*abb120(52)
      abb120(80)=-abb120(15)+abb120(80)+abb120(84)
      abb120(80)=abb120(7)*abb120(80)
      abb120(28)=abb120(35)*abb120(28)
      abb120(12)=abb120(14)*abb120(28)*abb120(12)
      abb120(42)=spbk4k3*abb120(12)*abb120(42)*c2
      abb120(84)=abb120(24)*spbk4k3
      abb120(54)=abb120(28)*abb120(54)*abb120(84)
      abb120(42)=abb120(42)-abb120(54)
      abb120(42)=abb120(42)*abb120(7)
      abb120(54)=spbk7k1*spae7k7
      abb120(85)=spbl5k1*spal5e7
      abb120(85)=abb120(54)-abb120(85)
      abb120(86)=abb120(85)*abb120(42)
      abb120(62)=abb120(86)+abb120(62)+abb120(80)
      abb120(62)=es12*abb120(62)
      abb120(80)=abb120(6)*spbk4k3
      abb120(87)=abb120(80)*abb120(47)
      abb120(22)=-abb120(63)*abb120(22)*abb120(35)*abb120(87)
      abb120(35)=abb120(14)*abb120(63)
      abb120(88)=abb120(76)*spbk4k3
      abb120(89)=abb120(88)*abb120(39)*abb120(35)
      abb120(22)=abb120(89)+abb120(22)
      abb120(22)=abb120(27)*spbl6k1*abb120(22)
      abb120(58)=abb120(58)*abb120(65)
      abb120(89)=abb120(58)*spbk4k3
      abb120(84)=abb120(84)*abb120(72)
      abb120(89)=abb120(89)-abb120(84)
      abb120(90)=abb120(89)*abb120(33)
      abb120(91)=-spak4l6*abb120(90)
      abb120(92)=abb120(51)*abb120(72)
      abb120(93)=abb120(58)*spbk3k2
      abb120(92)=abb120(92)-abb120(93)
      abb120(33)=abb120(92)*abb120(33)
      abb120(92)=spak2l6*abb120(33)
      abb120(22)=abb120(92)+abb120(22)+abb120(91)
      abb120(22)=spak1e7*abb120(22)
      abb120(12)=abb120(12)*abb120(19)
      abb120(91)=-spbl6k1*abb120(12)
      abb120(26)=abb120(28)*abb120(26)
      abb120(26)=abb120(91)+abb120(26)
      abb120(26)=abb120(26)*abb120(27)
      abb120(10)=abb120(10)*mB
      abb120(91)=abb120(10)*abb120(14)
      abb120(92)=abb120(91)*c2
      abb120(93)=abb120(32)*abb120(10)
      abb120(94)=abb120(92)-abb120(93)
      abb120(34)=abb120(94)*abb120(34)
      abb120(95)=spak4l6*abb120(34)
      abb120(38)=abb120(94)*abb120(38)
      abb120(96)=spak2l6*abb120(38)
      abb120(26)=abb120(96)+abb120(26)+abb120(95)
      abb120(26)=spak1l5*abb120(26)
      abb120(95)=abb120(16)*spbk4k3
      abb120(59)=spak2e7*abb120(59)*abb120(95)
      abb120(78)=-spbk4k3*abb120(78)
      abb120(59)=abb120(59)+abb120(78)
      abb120(59)=spbl6k1*abb120(59)
      abb120(25)=-abb120(25)*abb120(80)*spak2e7*abb120(74)
      abb120(25)=abb120(59)+abb120(25)
      abb120(25)=abb120(25)*abb120(27)
      abb120(59)=abb120(73)*abb120(24)
      abb120(59)=abb120(59)-abb120(66)
      abb120(66)=abb120(8)*spbk2k1
      abb120(74)=abb120(18)*spbl6k1
      abb120(78)=abb120(66)*abb120(74)*abb120(59)
      abb120(25)=abb120(25)+abb120(78)
      abb120(25)=spak1k4*abb120(25)
      abb120(29)=abb120(3)*abb120(9)*abb120(29)
      abb120(44)=abb120(63)*abb120(44)
      abb120(29)=abb120(29)-abb120(44)
      abb120(29)=abb120(47)*abb120(17)*abb120(29)
      abb120(17)=abb120(30)*abb120(65)*abb120(17)
      abb120(30)=abb120(63)*abb120(36)
      abb120(36)=abb120(68)*abb120(30)
      abb120(17)=abb120(17)-abb120(36)
      abb120(17)=abb120(17)*abb120(9)
      abb120(17)=abb120(29)-abb120(17)
      abb120(29)=abb120(69)*abb120(17)
      abb120(19)=abb120(19)*abb120(9)
      abb120(36)=abb120(19)*abb120(30)
      abb120(47)=abb120(44)*abb120(47)
      abb120(65)=abb120(47)*abb120(21)
      abb120(65)=abb120(65)-abb120(36)
      abb120(68)=-abb120(65)*abb120(61)
      abb120(29)=abb120(68)+abb120(29)
      abb120(29)=spak1k2*abb120(29)
      abb120(68)=-abb120(74)*abb120(31)
      abb120(78)=abb120(9)**2
      abb120(96)=spak1k4*abb120(78)*abb120(68)
      abb120(29)=abb120(29)+abb120(96)
      abb120(29)=spbe7k1*abb120(29)
      abb120(10)=abb120(10)*abb120(3)
      abb120(72)=abb120(10)-abb120(72)
      abb120(52)=abb120(72)*abb120(52)
      abb120(58)=abb120(92)-abb120(58)
      abb120(69)=abb120(58)*abb120(69)
      abb120(52)=abb120(52)-abb120(69)
      abb120(69)=abb120(95)*abb120(91)
      abb120(92)=abb120(80)*abb120(93)
      abb120(69)=abb120(69)-abb120(92)
      abb120(61)=abb120(69)*abb120(61)
      abb120(61)=-abb120(61)+abb120(52)
      abb120(61)=abb120(61)*spak1k2
      abb120(92)=-spbl6k1*abb120(89)
      abb120(96)=abb120(92)*spak1k4
      abb120(61)=abb120(61)-abb120(96)
      abb120(96)=spbk7k1*spae7k7*abb120(61)
      abb120(61)=-spbl5k1*spal5e7*abb120(61)
      abb120(33)=spak1k2*abb120(33)
      abb120(90)=-spak1k4*abb120(90)
      abb120(33)=abb120(33)+abb120(90)
      abb120(33)=spal6e7*abb120(33)
      abb120(38)=-spak1k2*abb120(38)
      abb120(34)=-spak1k4*abb120(34)
      abb120(34)=abb120(38)+abb120(34)
      abb120(34)=spal5l6*abb120(34)
      abb120(20)=abb120(34)+abb120(33)+abb120(26)+abb120(62)+abb120(61)+abb120(&
      &96)+abb120(25)+abb120(29)+abb120(22)+abb120(20)
      abb120(20)=4.0_ki*abb120(20)
      abb120(22)=spak2e7*abb120(52)
      abb120(25)=spak4k7*spbk7e7
      abb120(26)=abb120(68)*abb120(25)
      abb120(29)=-spak4l5*abb120(74)*abb120(94)
      abb120(33)=spak2k7*spbk7e7
      abb120(34)=-abb120(33)*abb120(46)*abb120(31)
      abb120(38)=abb120(92)*spak4e7
      abb120(22)=-abb120(38)-abb120(26)+abb120(29)-abb120(34)+abb120(22)
      abb120(26)=8.0_ki*abb120(22)
      abb120(29)=-abb120(8)*abb120(53)
      abb120(15)=-abb120(7)*abb120(15)
      abb120(15)=abb120(29)+abb120(15)+abb120(86)
      abb120(15)=8.0_ki*abb120(15)
      abb120(14)=abb120(95)*abb120(14)
      abb120(29)=abb120(32)*abb120(80)
      abb120(14)=abb120(14)-abb120(29)
      abb120(14)=abb120(85)*abb120(14)*mB*abb120(39)
      abb120(28)=abb120(24)*abb120(23)*abb120(28)
      abb120(12)=-abb120(12)+abb120(28)
      abb120(12)=abb120(12)*abb120(66)
      abb120(13)=-abb120(19)*abb120(13)*abb120(35)
      abb120(11)=abb120(63)*abb120(23)*abb120(11)
      abb120(11)=abb120(13)+abb120(11)
      abb120(11)=spbe7k1*abb120(11)
      abb120(11)=abb120(11)+abb120(12)-abb120(22)+abb120(14)
      abb120(11)=8.0_ki*abb120(11)
      abb120(12)=abb120(89)*abb120(85)
      abb120(13)=abb120(59)*abb120(18)
      abb120(14)=abb120(13)*abb120(66)
      abb120(18)=abb120(31)*abb120(78)*abb120(18)
      abb120(22)=-spbe7k1*abb120(18)
      abb120(12)=abb120(14)+abb120(22)+abb120(12)
      abb120(12)=4.0_ki*abb120(12)
      abb120(14)=-spbk7l6*spae7k7
      abb120(22)=-spbl6l5*spal5e7
      abb120(14)=abb120(22)+abb120(14)
      abb120(14)=abb120(89)*abb120(14)
      abb120(18)=spbe7l6*abb120(18)
      abb120(13)=spbl6k2*abb120(8)*abb120(13)
      abb120(13)=abb120(13)+abb120(18)+abb120(14)
      abb120(13)=4.0_ki*abb120(13)
      abb120(14)=8.0_ki*abb120(8)
      abb120(18)=-abb120(57)*abb120(14)
      abb120(22)=-4.0_ki*abb120(65)
      abb120(23)=4.0_ki*spae7k7
      abb120(23)=-abb120(69)*abb120(23)
      abb120(28)=abb120(24)*abb120(45)
      abb120(28)=-abb120(41)+abb120(28)
      abb120(28)=abb120(28)*abb120(25)
      abb120(29)=-spak4l5*abb120(57)
      abb120(31)=spbk3k2*abb120(79)
      abb120(32)=abb120(82)*abb120(51)
      abb120(34)=abb120(49)*abb120(51)
      abb120(35)=abb120(34)*abb120(48)
      abb120(38)=-abb120(37)*abb120(40)
      abb120(35)=abb120(38)+abb120(35)
      abb120(35)=abb120(35)*abb120(33)
      abb120(38)=-spbk4k3*abb120(77)
      abb120(39)=abb120(6)*abb120(63)*abb120(84)
      abb120(38)=abb120(38)+abb120(39)
      abb120(38)=spak4e7*abb120(38)
      abb120(28)=abb120(29)+abb120(28)+abb120(38)+abb120(35)+abb120(31)+abb120(&
      &32)
      abb120(27)=abb120(27)*abb120(28)
      abb120(28)=abb120(57)*spak4l6
      abb120(29)=abb120(75)*abb120(51)
      abb120(31)=abb120(67)*spbk3k2
      abb120(28)=-abb120(28)+abb120(29)-abb120(31)
      abb120(29)=abb120(66)*abb120(28)
      abb120(31)=abb120(69)*spak4l6
      abb120(32)=abb120(72)*abb120(51)
      abb120(35)=abb120(58)*spbk3k2
      abb120(31)=-abb120(31)+abb120(32)-abb120(35)
      abb120(32)=abb120(31)*spae7k7
      abb120(35)=spbk7k1*abb120(32)
      abb120(31)=abb120(31)*spal5e7
      abb120(38)=-spbl5k1*abb120(31)
      abb120(17)=abb120(17)*spbk3k2
      abb120(39)=abb120(65)*spak4l6
      abb120(17)=abb120(39)-abb120(17)
      abb120(39)=-spbe7k1*abb120(17)
      abb120(27)=abb120(38)+abb120(35)+abb120(39)+abb120(27)+abb120(29)
      abb120(27)=4.0_ki*abb120(27)
      abb120(29)=abb120(69)*spal5e7
      abb120(35)=4.0_ki*abb120(29)
      abb120(28)=spbl6k2*abb120(28)
      abb120(34)=abb120(34)*abb120(71)
      abb120(38)=abb120(55)*abb120(37)
      abb120(34)=abb120(38)-abb120(34)
      abb120(38)=es12*abb120(34)
      abb120(28)=abb120(28)+abb120(38)
      abb120(28)=abb120(8)*abb120(28)
      abb120(38)=abb120(44)*abb120(9)
      abb120(39)=-abb120(21)*abb120(38)
      abb120(39)=abb120(45)+abb120(39)
      abb120(39)=abb120(39)*abb120(24)
      abb120(36)=abb120(39)-abb120(41)+abb120(36)
      abb120(25)=abb120(36)*abb120(25)
      abb120(19)=-abb120(64)*abb120(19)
      abb120(21)=abb120(21)*abb120(73)
      abb120(21)=-abb120(43)+abb120(21)
      abb120(21)=abb120(21)*abb120(24)
      abb120(19)=abb120(21)+abb120(60)+abb120(19)
      abb120(19)=spak4l5*abb120(19)
      abb120(21)=-spbk7l6*abb120(32)
      abb120(24)=-spbl6l5*abb120(31)
      abb120(31)=-spbk7k2*spae7k7
      abb120(32)=spbl5k2*spal5e7
      abb120(31)=abb120(32)+abb120(31)
      abb120(31)=abb120(42)*abb120(31)
      abb120(32)=-spak1k4*abb120(57)*abb120(66)
      abb120(36)=abb120(47)*abb120(6)
      abb120(30)=abb120(30)*abb120(76)
      abb120(36)=abb120(36)-abb120(30)
      abb120(36)=abb120(36)*abb120(37)
      abb120(39)=-spak1k2*abb120(36)
      abb120(41)=-spak1k4*abb120(65)
      abb120(39)=abb120(39)+abb120(41)
      abb120(39)=spbe7k1*abb120(39)
      abb120(41)=abb120(91)*abb120(16)
      abb120(42)=abb120(93)*abb120(6)
      abb120(41)=abb120(41)-abb120(42)
      abb120(41)=spbk3k2*abb120(41)
      abb120(42)=abb120(41)*spak1k2
      abb120(43)=-spak1k4*abb120(69)
      abb120(43)=-abb120(42)+abb120(43)
      abb120(43)=abb120(43)*abb120(54)
      abb120(42)=spal5e7*abb120(42)
      abb120(29)=spak1k4*abb120(29)
      abb120(29)=abb120(42)+abb120(29)
      abb120(29)=spbl5k1*abb120(29)
      abb120(30)=-abb120(40)+abb120(30)
      abb120(30)=abb120(30)*abb120(37)
      abb120(37)=-abb120(49)*abb120(38)
      abb120(37)=abb120(50)+abb120(37)
      abb120(37)=abb120(37)*abb120(51)
      abb120(30)=abb120(30)+abb120(37)
      abb120(30)=abb120(30)*abb120(33)
      abb120(33)=-abb120(64)*abb120(95)
      abb120(37)=abb120(91)*abb120(88)
      abb120(33)=abb120(33)+abb120(37)
      abb120(33)=abb120(9)*abb120(33)
      abb120(37)=abb120(56)*abb120(63)
      abb120(10)=abb120(10)*abb120(9)
      abb120(38)=abb120(37)-abb120(10)
      abb120(38)=abb120(38)*abb120(87)
      abb120(33)=abb120(33)+abb120(38)
      abb120(33)=spak4e7*abb120(33)
      abb120(17)=spbe7l6*abb120(17)
      abb120(16)=abb120(16)*abb120(64)
      abb120(38)=abb120(91)*abb120(76)
      abb120(16)=-2.0_ki*abb120(16)+abb120(38)
      abb120(16)=abb120(9)*spak2e7*abb120(16)
      abb120(16)=abb120(70)+abb120(16)
      abb120(16)=spbk3k2*abb120(16)
      abb120(10)=2.0_ki*abb120(37)-abb120(10)
      abb120(10)=abb120(9)*abb120(81)*abb120(10)
      abb120(10)=-abb120(83)+abb120(10)
      abb120(10)=abb120(10)*abb120(51)
      abb120(10)=abb120(24)+abb120(21)+abb120(17)+abb120(19)+abb120(25)+abb120(&
      &33)+abb120(30)+abb120(29)+abb120(43)+abb120(39)+abb120(32)+abb120(16)+ab&
      &b120(10)+abb120(31)+abb120(28)
      abb120(10)=4.0_ki*abb120(10)
      abb120(14)=abb120(34)*abb120(14)
      abb120(16)=-4.0_ki*abb120(36)
      abb120(17)=4.0_ki*abb120(41)
      abb120(19)=-spae7k7*abb120(17)
      abb120(17)=spal5e7*abb120(17)
      R2d120=0.0_ki
      rat2 = rat2 + R2d120
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='120' value='", &
          & R2d120, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd120h3
