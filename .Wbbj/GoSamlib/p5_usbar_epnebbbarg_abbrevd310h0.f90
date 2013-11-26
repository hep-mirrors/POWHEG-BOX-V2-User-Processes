module     p5_usbar_epnebbbarg_abbrevd310h0
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(99), public :: abb310
   complex(ki), public :: R2d310
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p5_usbar_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_color, only: TR
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb310(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb310(2)=NC**(-1)
      abb310(3)=es234**(-1)
      abb310(4)=spbl5k2**(-1)
      abb310(5)=spak2l6**(-1)
      abb310(6)=spbl6k2**(-1)
      abb310(7)=sqrt(mB**2)
      abb310(8)=c1+c3
      abb310(9)=TR*gW
      abb310(9)=abb310(9)**2*i_*CVSU*abb310(3)*abb310(1)
      abb310(10)=abb310(9)*mB*spak2k4
      abb310(11)=abb310(10)*abb310(2)
      abb310(12)=abb310(11)*spbk3k2
      abb310(13)=abb310(4)*spbk2k1
      abb310(14)=abb310(8)*abb310(12)*abb310(13)
      abb310(15)=spbe7k1*abb310(14)
      abb310(16)=abb310(10)*spbk3k2
      abb310(17)=abb310(13)*abb310(16)
      abb310(18)=c4*abb310(2)**2
      abb310(19)=abb310(18)+c2
      abb310(20)=spbe7k1*abb310(19)
      abb310(21)=-abb310(17)*abb310(20)
      abb310(15)=abb310(15)+abb310(21)
      abb310(15)=abb310(15)*spak1e7
      abb310(21)=abb310(4)*spbk3k2
      abb310(11)=-abb310(8)*abb310(21)*abb310(11)
      abb310(22)=abb310(4)*abb310(19)
      abb310(23)=abb310(16)*abb310(22)
      abb310(11)=abb310(23)+abb310(11)
      abb310(23)=abb310(11)*spbk7k2
      abb310(24)=spae7k7*spbe7k1
      abb310(25)=abb310(24)*abb310(23)
      abb310(15)=abb310(15)+abb310(25)
      abb310(26)=spak2l6*spbl6k1
      abb310(27)=abb310(15)*abb310(26)
      abb310(28)=abb310(9)*abb310(2)
      abb310(29)=abb310(28)*spak2k4
      abb310(30)=abb310(29)*abb310(24)
      abb310(31)=c1*spbk3k2
      abb310(32)=abb310(30)*abb310(31)
      abb310(33)=abb310(9)*spbk3k2
      abb310(34)=abb310(33)*spak2k4
      abb310(35)=abb310(24)*c2
      abb310(36)=abb310(34)*abb310(35)
      abb310(37)=c3*spbk3k2
      abb310(38)=abb310(30)*abb310(37)
      abb310(32)=abb310(32)-abb310(36)+abb310(38)
      abb310(36)=abb310(24)*spak2k4
      abb310(38)=abb310(36)*abb310(18)
      abb310(39)=abb310(38)*abb310(33)
      abb310(39)=abb310(39)-abb310(32)
      abb310(40)=spak2l5*abb310(7)
      abb310(39)=abb310(39)*abb310(40)
      abb310(41)=c1*abb310(2)
      abb310(42)=abb310(41)*abb310(24)
      abb310(43)=c3*abb310(2)
      abb310(44)=abb310(43)*abb310(24)
      abb310(42)=abb310(42)+abb310(44)-abb310(35)
      abb310(44)=abb310(24)*abb310(18)
      abb310(44)=abb310(44)-abb310(42)
      abb310(45)=spak4l5*abb310(7)
      abb310(46)=abb310(9)*spbk4k3
      abb310(47)=abb310(46)*spak2k4
      abb310(48)=abb310(45)*abb310(44)*abb310(47)
      abb310(39)=abb310(39)+abb310(48)
      abb310(48)=spbk7k1*abb310(39)
      abb310(49)=abb310(6)*abb310(2)
      abb310(50)=abb310(49)*abb310(4)
      abb310(51)=spbk2k1**2
      abb310(52)=abb310(8)*abb310(50)*abb310(51)
      abb310(53)=abb310(22)*abb310(6)
      abb310(51)=abb310(53)*abb310(51)
      abb310(51)=abb310(52)-abb310(51)
      abb310(52)=mB**3
      abb310(54)=abb310(52)*abb310(46)
      abb310(55)=abb310(54)*spak2k4**2
      abb310(56)=abb310(55)*abb310(51)
      abb310(57)=abb310(5)*spak1e7
      abb310(58)=-abb310(57)*spbe7k1*abb310(56)
      abb310(41)=abb310(43)+abb310(41)
      abb310(43)=abb310(24)*abb310(4)
      abb310(59)=abb310(41)*abb310(43)
      abb310(60)=spbk2k1*abb310(6)
      abb310(61)=abb310(55)*abb310(60)
      abb310(62)=abb310(61)*abb310(59)
      abb310(63)=abb310(61)*abb310(22)
      abb310(64)=-abb310(24)*abb310(63)
      abb310(62)=abb310(62)+abb310(64)
      abb310(64)=spbk7k2*abb310(5)
      abb310(62)=abb310(62)*abb310(64)
      abb310(65)=abb310(41)-abb310(19)
      abb310(66)=abb310(10)*spbk4k3
      abb310(67)=abb310(66)*abb310(4)
      abb310(68)=abb310(67)*abb310(65)
      abb310(69)=abb310(68)*spbk7k2
      abb310(70)=abb310(24)*abb310(69)
      abb310(71)=spbe7k1*abb310(41)
      abb310(20)=abb310(20)-abb310(71)
      abb310(67)=abb310(67)*spbk2k1
      abb310(72)=spak1e7*abb310(20)*abb310(67)
      abb310(70)=abb310(70)+abb310(72)
      abb310(72)=spak4l6*spbl6k1
      abb310(73)=-abb310(70)*abb310(72)
      abb310(27)=abb310(48)+abb310(27)+abb310(73)+abb310(58)+abb310(62)
      abb310(27)=spak1l6*abb310(27)
      abb310(48)=abb310(6)**2
      abb310(58)=abb310(48)*abb310(52)
      abb310(32)=abb310(58)*abb310(32)
      abb310(62)=c4*abb310(49)**2
      abb310(73)=abb310(62)*abb310(52)
      abb310(36)=abb310(73)*abb310(36)*abb310(33)
      abb310(32)=-abb310(36)+abb310(32)
      abb310(36)=abb310(5)*spak2l5
      abb310(32)=abb310(32)*abb310(36)
      abb310(74)=mB**2
      abb310(75)=abb310(74)*abb310(6)
      abb310(9)=abb310(9)*abb310(75)
      abb310(76)=abb310(9)*abb310(21)
      abb310(38)=abb310(38)*abb310(76)
      abb310(75)=abb310(8)*abb310(21)*abb310(75)
      abb310(30)=abb310(30)*abb310(75)
      abb310(76)=spak2k4*abb310(76)
      abb310(77)=abb310(76)*abb310(35)
      abb310(30)=-abb310(30)+abb310(38)+abb310(77)
      abb310(30)=abb310(30)*abb310(7)
      abb310(30)=abb310(32)-abb310(30)
      abb310(30)=abb310(30)*spbk7k2
      abb310(31)=abb310(37)+abb310(31)
      abb310(32)=spbe7k1*spak2k4
      abb310(28)=abb310(32)*abb310(28)
      abb310(37)=abb310(28)*abb310(31)
      abb310(33)=abb310(32)*abb310(33)
      abb310(38)=abb310(33)*c2
      abb310(37)=abb310(37)-abb310(38)
      abb310(38)=abb310(58)*spbk2k1
      abb310(77)=abb310(37)*abb310(38)
      abb310(78)=spbk2k1*abb310(73)
      abb310(79)=abb310(78)*abb310(33)
      abb310(77)=abb310(77)-abb310(79)
      abb310(79)=abb310(36)*spak1e7
      abb310(77)=abb310(77)*abb310(79)
      abb310(80)=abb310(74)*abb310(60)
      abb310(21)=abb310(8)*abb310(80)*abb310(21)
      abb310(28)=abb310(28)*abb310(21)
      abb310(9)=abb310(19)*spbk3k2*abb310(9)*abb310(13)
      abb310(13)=abb310(32)*abb310(9)
      abb310(13)=abb310(28)-abb310(13)
      abb310(28)=abb310(7)*spak1e7
      abb310(13)=abb310(13)*abb310(28)
      abb310(13)=abb310(30)-abb310(77)-abb310(13)
      abb310(30)=-es12*abb310(13)
      abb310(77)=abb310(24)*abb310(22)
      abb310(59)=-abb310(59)+abb310(77)
      abb310(77)=abb310(74)*abb310(47)
      abb310(81)=abb310(77)*abb310(60)
      abb310(59)=abb310(7)*abb310(81)*abb310(59)
      abb310(82)=abb310(38)*abb310(47)
      abb310(83)=-abb310(82)*abb310(42)
      abb310(84)=abb310(78)*abb310(47)
      abb310(85)=abb310(24)*abb310(84)
      abb310(83)=abb310(85)+abb310(83)
      abb310(83)=abb310(83)*abb310(36)
      abb310(59)=abb310(59)+abb310(83)
      abb310(59)=spbk7k2*abb310(59)
      abb310(46)=abb310(32)*abb310(46)
      abb310(28)=abb310(28)*abb310(46)
      abb310(74)=abb310(74)*abb310(51)*abb310(28)
      abb310(83)=abb310(41)-c2
      abb310(85)=abb310(83)-abb310(18)
      abb310(60)=abb310(60)**2
      abb310(86)=abb310(85)*abb310(60)
      abb310(32)=abb310(54)*abb310(32)
      abb310(54)=abb310(79)*abb310(32)*abb310(86)
      abb310(54)=abb310(59)+abb310(74)+abb310(54)
      abb310(54)=spak1k4*abb310(54)
      abb310(59)=abb310(60)*abb310(55)
      abb310(60)=abb310(57)*abb310(59)*abb310(20)
      abb310(48)=abb310(48)*spbk2k1
      abb310(74)=abb310(48)*abb310(55)
      abb310(79)=abb310(74)*abb310(42)
      abb310(87)=abb310(62)*spbk2k1
      abb310(88)=abb310(87)*abb310(55)
      abb310(89)=-abb310(24)*abb310(88)
      abb310(79)=abb310(89)+abb310(79)
      abb310(79)=abb310(79)*abb310(64)
      abb310(10)=abb310(10)*abb310(6)
      abb310(89)=abb310(10)*spbk2k1
      abb310(90)=abb310(89)*spbk4k3
      abb310(91)=abb310(90)*abb310(20)
      abb310(92)=abb310(91)*spak1e7
      abb310(93)=-abb310(72)*abb310(92)
      abb310(89)=abb310(89)*spbk3k2
      abb310(94)=abb310(20)*abb310(89)
      abb310(95)=-spak1e7*abb310(94)*abb310(26)
      abb310(60)=abb310(95)+abb310(93)+abb310(60)+abb310(79)
      abb310(60)=spak1l5*abb310(60)
      abb310(79)=abb310(41)-abb310(18)
      abb310(79)=abb310(90)*abb310(79)
      abb310(93)=abb310(79)*abb310(24)
      abb310(35)=abb310(35)*abb310(90)
      abb310(35)=abb310(93)-abb310(35)
      abb310(93)=-spak4l6*abb310(35)
      abb310(95)=spak2l6*abb310(89)*abb310(44)
      abb310(93)=abb310(93)+abb310(95)
      abb310(93)=spak1l5*abb310(93)
      abb310(35)=spak1k4*abb310(35)
      abb310(95)=abb310(10)*spbk3k2
      abb310(96)=-abb310(95)*abb310(44)
      abb310(97)=es12*abb310(96)
      abb310(35)=abb310(35)+abb310(97)
      abb310(35)=spal5l6*abb310(35)
      abb310(35)=abb310(93)+abb310(35)
      abb310(35)=spbk7l6*abb310(35)
      abb310(93)=spak1k4*abb310(92)
      abb310(97)=abb310(95)*abb310(20)
      abb310(98)=abb310(97)*es12
      abb310(99)=spak1e7*abb310(98)
      abb310(93)=abb310(93)+abb310(99)
      abb310(99)=spal5l6*spbl6k1
      abb310(93)=abb310(93)*abb310(99)
      abb310(27)=abb310(35)+abb310(93)+abb310(30)+abb310(54)+abb310(60)+abb310(&
      &27)
      abb310(27)=4.0_ki*abb310(27)
      abb310(30)=-abb310(51)*abb310(77)*abb310(7)
      abb310(35)=abb310(47)*abb310(52)
      abb310(51)=-abb310(36)*abb310(35)*abb310(86)
      abb310(30)=abb310(30)+abb310(51)
      abb310(30)=spak1k4*abb310(30)
      abb310(51)=abb310(5)*abb310(59)*abb310(85)
      abb310(52)=abb310(90)*c2
      abb310(52)=-abb310(52)+abb310(79)
      abb310(54)=-abb310(52)*abb310(72)
      abb310(59)=abb310(89)*abb310(85)
      abb310(60)=-abb310(59)*abb310(26)
      abb310(51)=abb310(60)+abb310(51)+abb310(54)
      abb310(51)=spak1l5*abb310(51)
      abb310(9)=spak2k4*abb310(9)
      abb310(21)=abb310(29)*abb310(21)
      abb310(9)=abb310(9)-abb310(21)
      abb310(9)=abb310(9)*abb310(7)
      abb310(21)=abb310(29)*abb310(31)
      abb310(31)=abb310(34)*c2
      abb310(21)=abb310(21)-abb310(31)
      abb310(31)=abb310(21)*abb310(38)
      abb310(38)=abb310(78)*abb310(34)
      abb310(31)=abb310(38)-abb310(31)
      abb310(31)=abb310(31)*abb310(36)
      abb310(9)=abb310(9)+abb310(31)
      abb310(31)=es12*abb310(9)
      abb310(38)=abb310(5)*abb310(56)
      abb310(17)=abb310(17)*abb310(19)
      abb310(14)=abb310(17)-abb310(14)
      abb310(17)=abb310(14)*abb310(26)
      abb310(54)=abb310(67)*abb310(65)
      abb310(56)=-abb310(54)*abb310(72)
      abb310(17)=abb310(17)+abb310(38)+abb310(56)
      abb310(17)=spak1l6*abb310(17)
      abb310(38)=spak1k4*abb310(52)
      abb310(56)=abb310(95)*abb310(65)
      abb310(60)=es12*abb310(56)
      abb310(38)=abb310(38)+abb310(60)
      abb310(38)=abb310(38)*abb310(99)
      abb310(17)=abb310(38)+abb310(17)+abb310(31)+abb310(30)+abb310(51)
      abb310(17)=8.0_ki*abb310(17)
      abb310(15)=abb310(15)*spak2l6
      abb310(30)=abb310(70)*spak4l6
      abb310(15)=abb310(30)-abb310(15)
      abb310(30)=8.0_ki*abb310(15)
      abb310(31)=abb310(14)*spak2l6
      abb310(38)=abb310(54)*spak4l6
      abb310(31)=abb310(38)-abb310(31)
      abb310(38)=16.0_ki*abb310(31)
      abb310(48)=-abb310(48)*abb310(83)
      abb310(48)=abb310(87)+abb310(48)
      abb310(32)=abb310(57)*abb310(32)*abb310(48)
      abb310(48)=abb310(58)*abb310(47)
      abb310(42)=abb310(48)*abb310(42)
      abb310(35)=abb310(62)*abb310(35)
      abb310(51)=-abb310(24)*abb310(35)
      abb310(42)=abb310(51)+abb310(42)
      abb310(42)=abb310(42)*abb310(64)
      abb310(32)=abb310(32)+abb310(42)
      abb310(32)=spak4l5*abb310(32)
      abb310(13)=abb310(32)+abb310(13)
      abb310(13)=8.0_ki*abb310(13)
      abb310(32)=abb310(83)*abb310(82)
      abb310(32)=abb310(32)-abb310(84)
      abb310(42)=spak4l5*abb310(5)*abb310(32)
      abb310(9)=abb310(42)-abb310(9)
      abb310(9)=16.0_ki*abb310(9)
      abb310(42)=abb310(46)*abb310(65)
      abb310(45)=abb310(45)*abb310(42)
      abb310(33)=abb310(33)*abb310(18)
      abb310(33)=abb310(33)-abb310(37)
      abb310(37)=abb310(40)*abb310(33)
      abb310(40)=abb310(61)*abb310(4)
      abb310(46)=abb310(40)*abb310(41)
      abb310(46)=abb310(46)-abb310(63)
      abb310(51)=abb310(5)*spbe7k2
      abb310(60)=abb310(46)*abb310(51)
      abb310(61)=abb310(11)*spbe7k2
      abb310(26)=abb310(61)*abb310(26)
      abb310(62)=abb310(68)*spbe7k2
      abb310(67)=abb310(72)*abb310(62)
      abb310(26)=abb310(67)-abb310(26)
      abb310(37)=abb310(37)-abb310(45)+abb310(60)-abb310(26)
      abb310(37)=abb310(37)*spal6e7
      abb310(45)=abb310(52)*spak4l6
      abb310(60)=abb310(59)*spak2l6
      abb310(45)=abb310(45)+abb310(60)
      abb310(45)=abb310(45)*spbe7l6
      abb310(60)=abb310(83)*abb310(74)
      abb310(60)=abb310(60)-abb310(88)
      abb310(51)=abb310(60)*abb310(51)
      abb310(45)=abb310(45)-abb310(51)
      abb310(51)=spal5e7*abb310(45)
      abb310(41)=abb310(4)*abb310(41)
      abb310(22)=abb310(41)-abb310(22)
      abb310(41)=abb310(22)*abb310(81)
      abb310(60)=spbe7k2*abb310(7)
      abb310(67)=abb310(41)*abb310(60)
      abb310(36)=abb310(36)*spbe7k2
      abb310(32)=abb310(32)*abb310(36)
      abb310(32)=abb310(67)+abb310(32)
      abb310(67)=spak4e7*abb310(32)
      abb310(72)=abb310(59)*spak2e7
      abb310(74)=abb310(52)*spak4e7
      abb310(72)=abb310(72)+abb310(74)
      abb310(78)=spal5l6*spbe7l6
      abb310(79)=-abb310(78)*abb310(72)
      abb310(81)=abb310(96)*spak2l5
      abb310(82)=spbk7k2*abb310(81)
      abb310(10)=abb310(10)*spbk4k3
      abb310(44)=abb310(44)*abb310(10)
      abb310(84)=-spbk7k2*abb310(44)
      abb310(84)=abb310(92)+abb310(84)
      abb310(84)=spak4l5*abb310(84)
      abb310(86)=spak2l5*spak1e7
      abb310(87)=abb310(94)*abb310(86)
      abb310(15)=-abb310(37)+abb310(67)+abb310(51)+abb310(84)+abb310(87)+abb310&
      &(82)+abb310(79)+abb310(15)
      abb310(15)=8.0_ki*abb310(15)
      abb310(51)=abb310(59)*spak2l5
      abb310(67)=abb310(52)*spak4l5
      abb310(51)=abb310(51)+abb310(67)
      abb310(31)=abb310(51)+abb310(31)
      abb310(31)=16.0_ki*abb310(31)
      abb310(79)=spak1k4*abb310(91)
      abb310(79)=abb310(98)+abb310(79)
      abb310(52)=spak4k7*abb310(52)
      abb310(82)=spak2k7*abb310(59)
      abb310(52)=abb310(82)+abb310(52)
      abb310(52)=spbk7e7*abb310(52)
      abb310(45)=-abb310(45)+abb310(52)+2.0_ki*abb310(79)
      abb310(45)=spal5e7*abb310(45)
      abb310(52)=2.0_ki*spak1l5
      abb310(79)=-abb310(91)*abb310(52)
      abb310(32)=abb310(79)-abb310(32)
      abb310(32)=spak4e7*abb310(32)
      abb310(79)=-abb310(94)*abb310(52)
      abb310(82)=abb310(59)*abb310(78)
      abb310(79)=abb310(79)+abb310(82)
      abb310(79)=spak2e7*abb310(79)
      abb310(82)=spal5k7*spbk7e7
      abb310(72)=-abb310(72)*abb310(82)
      abb310(74)=abb310(78)*abb310(74)
      abb310(32)=abb310(72)+abb310(79)+abb310(74)+abb310(37)+abb310(32)+abb310(&
      &45)
      abb310(32)=4.0_ki*abb310(32)
      abb310(37)=-16.0_ki*abb310(51)
      abb310(45)=abb310(97)*spak2l5
      abb310(20)=spak4l5*abb310(20)*abb310(10)
      abb310(45)=abb310(45)+abb310(20)
      abb310(51)=8.0_ki*abb310(45)
      abb310(45)=-4.0_ki*abb310(45)
      abb310(72)=abb310(56)*spak2l5
      abb310(74)=abb310(72)*spbe7k2
      abb310(10)=abb310(10)*abb310(65)
      abb310(65)=spak4l5*spbe7k2
      abb310(78)=abb310(10)*abb310(65)
      abb310(74)=abb310(74)+abb310(78)
      abb310(79)=abb310(61)*spak2l6
      abb310(84)=abb310(62)*spak4l6
      abb310(79)=abb310(84)-abb310(79)+abb310(74)
      abb310(84)=8.0_ki*abb310(79)
      abb310(79)=-4.0_ki*abb310(79)
      abb310(39)=-4.0_ki*abb310(39)
      abb310(44)=abb310(44)*spak4l5
      abb310(44)=abb310(44)-abb310(81)
      abb310(81)=-spbk7l6*abb310(44)
      abb310(40)=abb310(40)*abb310(71)
      abb310(63)=-spbe7k1*abb310(63)
      abb310(40)=abb310(40)+abb310(63)
      abb310(40)=abb310(40)*abb310(57)
      abb310(43)=abb310(8)*abb310(43)*abb310(49)
      abb310(24)=abb310(53)*abb310(24)
      abb310(24)=abb310(43)-abb310(24)
      abb310(43)=abb310(64)*abb310(55)
      abb310(49)=-abb310(24)*abb310(43)
      abb310(55)=abb310(97)*abb310(86)
      abb310(20)=spak1e7*abb310(20)
      abb310(20)=abb310(55)+abb310(20)
      abb310(20)=spbl6k1*abb310(20)
      abb310(20)=abb310(81)+abb310(20)+abb310(40)+abb310(49)
      abb310(20)=4.0_ki*abb310(20)
      abb310(40)=-abb310(5)*abb310(46)
      abb310(10)=spak4l5*abb310(10)
      abb310(10)=abb310(72)+abb310(10)
      abb310(10)=spbl6k1*abb310(10)
      abb310(10)=abb310(40)+abb310(10)
      abb310(10)=8.0_ki*abb310(10)
      abb310(40)=-spak4e7*abb310(42)
      abb310(46)=spak2e7*abb310(33)
      abb310(40)=abb310(46)+abb310(40)
      abb310(40)=abb310(52)*abb310(40)
      abb310(18)=abb310(34)*abb310(18)
      abb310(18)=abb310(18)-abb310(21)
      abb310(46)=spak2k7*abb310(18)
      abb310(47)=abb310(85)*abb310(47)
      abb310(49)=-spak4k7*abb310(47)
      abb310(46)=abb310(46)+abb310(49)
      abb310(46)=spbk7e7*spal5e7*abb310(46)
      abb310(49)=-abb310(33)*abb310(86)
      abb310(52)=spak4l5*spak1e7*abb310(42)
      abb310(55)=-spak2e7*abb310(18)
      abb310(57)=spak4e7*abb310(47)
      abb310(55)=abb310(57)+abb310(55)
      abb310(55)=abb310(55)*abb310(82)
      abb310(40)=abb310(55)+abb310(52)+abb310(49)+abb310(40)+abb310(46)
      abb310(40)=abb310(7)*abb310(40)
      abb310(23)=spae7k7*abb310(23)
      abb310(14)=abb310(14)*spak1e7
      abb310(14)=abb310(23)-abb310(14)
      abb310(23)=spak2l6*abb310(14)
      abb310(46)=spae7k7*abb310(69)
      abb310(49)=abb310(54)*spak1e7
      abb310(46)=abb310(46)-abb310(49)
      abb310(49)=-spak4l6*abb310(46)
      abb310(52)=-abb310(59)*abb310(86)
      abb310(55)=-spak1e7*abb310(67)
      abb310(23)=abb310(23)+abb310(49)+abb310(52)+abb310(55)
      abb310(23)=spbe7l6*abb310(23)
      abb310(49)=abb310(11)*es12
      abb310(52)=spbe7k1*abb310(49)
      abb310(26)=abb310(52)-abb310(26)
      abb310(26)=spak1e7*abb310(26)
      abb310(52)=spal5e7*abb310(7)
      abb310(52)=2.0_ki*abb310(52)
      abb310(42)=abb310(42)*abb310(52)
      abb310(42)=abb310(42)+abb310(70)
      abb310(42)=spak1k4*abb310(42)
      abb310(33)=-abb310(33)*abb310(52)
      abb310(25)=-abb310(25)+abb310(33)
      abb310(25)=spak1k2*abb310(25)
      abb310(33)=abb310(8)*abb310(50)
      abb310(33)=abb310(33)-abb310(53)
      abb310(33)=abb310(33)*spae7k7
      abb310(43)=spbe7k2*abb310(33)*abb310(43)
      abb310(50)=abb310(86)*abb310(56)*spbe7k2
      abb310(52)=spak1e7*abb310(78)
      abb310(50)=abb310(50)+abb310(52)
      abb310(50)=spbl6k1*abb310(50)
      abb310(52)=-spbk7l6*spae7k7*abb310(74)
      abb310(23)=abb310(25)+abb310(52)+abb310(42)+abb310(23)+abb310(50)+abb310(&
      &43)+abb310(26)+abb310(40)
      abb310(23)=4.0_ki*abb310(23)
      abb310(18)=-abb310(7)*abb310(18)
      abb310(16)=abb310(16)*abb310(19)
      abb310(8)=-abb310(12)*abb310(8)
      abb310(8)=abb310(18)+abb310(8)+abb310(16)
      abb310(8)=spak2l5*abb310(8)
      abb310(12)=-abb310(66)*abb310(85)
      abb310(16)=abb310(7)*abb310(47)
      abb310(12)=abb310(16)+abb310(12)
      abb310(12)=spak4l5*abb310(12)
      abb310(16)=-spak2l6*abb310(11)
      abb310(18)=abb310(68)*spak4l6
      abb310(16)=abb310(18)+abb310(16)
      abb310(16)=spbl6k2*abb310(16)
      abb310(18)=spak1k4*abb310(54)
      abb310(8)=abb310(16)-abb310(49)+abb310(18)+abb310(8)+abb310(12)
      abb310(8)=8.0_ki*abb310(8)
      abb310(12)=abb310(62)*spak4e7
      abb310(16)=-8.0_ki*abb310(12)
      abb310(12)=4.0_ki*abb310(12)
      abb310(18)=-abb310(80)*abb310(22)*abb310(28)
      abb310(22)=abb310(77)*spbk7k2
      abb310(24)=abb310(7)*abb310(24)*abb310(22)
      abb310(18)=abb310(18)+abb310(24)
      abb310(18)=4.0_ki*abb310(18)
      abb310(24)=8.0_ki*abb310(7)*abb310(41)
      abb310(22)=-4.0_ki*abb310(60)*abb310(33)*abb310(22)
      abb310(25)=-4.0_ki*abb310(46)
      abb310(26)=-8.0_ki*abb310(68)
      abb310(28)=4.0_ki*abb310(62)
      abb310(28)=spak1e7*abb310(28)
      abb310(29)=-abb310(29)*abb310(75)
      abb310(19)=abb310(76)*abb310(19)
      abb310(19)=abb310(19)+abb310(29)
      abb310(19)=abb310(60)*abb310(19)
      abb310(21)=-abb310(58)*abb310(21)
      abb310(29)=abb310(34)*abb310(73)
      abb310(21)=abb310(29)+abb310(21)
      abb310(21)=abb310(36)*abb310(21)
      abb310(19)=abb310(19)+abb310(21)
      abb310(19)=spbk7k2*spae7k7*abb310(19)
      abb310(21)=-abb310(48)*abb310(83)
      abb310(21)=abb310(35)+abb310(21)
      abb310(21)=abb310(64)*abb310(65)*spae7k7*abb310(21)
      abb310(19)=abb310(19)+abb310(21)
      abb310(19)=4.0_ki*abb310(19)
      abb310(14)=4.0_ki*abb310(14)
      abb310(11)=8.0_ki*abb310(11)
      abb310(21)=4.0_ki*spak1e7
      abb310(21)=-abb310(61)*abb310(21)
      abb310(29)=4.0_ki*spbk7k1*abb310(44)
      R2d310=0.0_ki
      rat2 = rat2 + R2d310
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='310' value='", &
          & R2d310, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd310h0
