module     p0_dbaru_epnebbbarg_abbrevd92h7
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh7
   implicit none
   private
   complex(ki), dimension(117), public :: abb92
   complex(ki), public :: R2d92
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
      abb92(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb92(2)=1.0_ki/(-es71+es56-es567+es234)
      abb92(3)=NC**(-1)
      abb92(4)=sqrt2**(-1)
      abb92(5)=es234**(-1)
      abb92(6)=spak2l5**(-1)
      abb92(7)=spbl5k2**(-1)
      abb92(8)=spbk7k2**(-1)
      abb92(9)=spak2l6**(-1)
      abb92(10)=spbl6k2**(-1)
      abb92(11)=sqrt(mB**2)
      abb92(12)=abb92(3)*spbk3k2
      abb92(13)=abb92(12)**2
      abb92(14)=spbk3k2**2
      abb92(15)=abb92(13)+abb92(14)
      abb92(16)=mB**3
      abb92(17)=TR*gW
      abb92(17)=abb92(17)**2*abb92(8)*i_*CVDU*abb92(5)*abb92(4)*abb92(2)*abb92(&
      &1)
      abb92(18)=abb92(17)*spak1k2
      abb92(19)=abb92(16)*abb92(18)
      abb92(20)=abb92(19)*abb92(15)
      abb92(21)=spak3k4*abb92(6)
      abb92(22)=abb92(9)*c4
      abb92(23)=abb92(21)*abb92(22)
      abb92(24)=abb92(20)*abb92(23)
      abb92(25)=abb92(14)*abb92(3)
      abb92(26)=spak3k4*abb92(9)
      abb92(27)=abb92(25)*abb92(26)
      abb92(28)=abb92(27)*abb92(6)
      abb92(29)=2.0_ki*c1
      abb92(30)=abb92(19)*abb92(29)
      abb92(31)=abb92(28)*abb92(30)
      abb92(24)=abb92(24)-abb92(31)
      abb92(31)=abb92(24)*spak2k7
      abb92(31)=2.0_ki*abb92(31)
      abb92(29)=abb92(29)*abb92(18)
      abb92(32)=abb92(29)*mB
      abb92(33)=abb92(27)*abb92(32)
      abb92(14)=abb92(18)*abb92(14)
      abb92(34)=abb92(14)*mB
      abb92(35)=abb92(18)*mB
      abb92(36)=abb92(13)*abb92(35)
      abb92(34)=abb92(34)+abb92(36)
      abb92(36)=abb92(22)*spak3k4
      abb92(37)=abb92(34)*abb92(36)
      abb92(33)=abb92(33)-abb92(37)
      abb92(37)=spbl5k1*spak1k7
      abb92(38)=abb92(37)*abb92(33)
      abb92(39)=spak3k4*c4
      abb92(40)=abb92(20)*abb92(39)
      abb92(41)=abb92(6)**2
      abb92(42)=abb92(40)*abb92(41)
      abb92(43)=abb92(30)*abb92(41)
      abb92(44)=abb92(25)*spak3k4
      abb92(45)=abb92(44)*abb92(43)
      abb92(42)=abb92(45)-abb92(42)
      abb92(45)=abb92(7)*spbl6k2
      abb92(46)=abb92(45)*spak2k7
      abb92(47)=abb92(46)*abb92(42)
      abb92(48)=abb92(38)+abb92(31)-abb92(47)
      abb92(48)=spak1l5*abb92(48)
      abb92(49)=abb92(24)*abb92(7)
      abb92(50)=spak1k7*es12
      abb92(51)=-abb92(49)*abb92(50)
      abb92(52)=abb92(33)*spak1l5*spbl6l5
      abb92(53)=abb92(17)*abb92(15)
      abb92(54)=abb92(53)*abb92(23)
      abb92(55)=abb92(17)*c1
      abb92(55)=2.0_ki*abb92(55)
      abb92(56)=abb92(28)*abb92(55)
      abb92(54)=abb92(54)-abb92(56)
      abb92(56)=spak1k2**2
      abb92(57)=abb92(56)*abb92(16)
      abb92(58)=-abb92(57)*abb92(54)
      abb92(59)=abb92(58)*abb92(45)
      abb92(52)=abb92(59)+abb92(52)
      abb92(52)=spal6k7*abb92(52)
      abb92(48)=abb92(52)+abb92(51)+abb92(48)
      abb92(48)=spbl5k1*abb92(48)
      abb92(51)=abb92(27)*abb92(41)
      abb92(52)=mB**4
      abb92(59)=abb92(52)*abb92(29)
      abb92(60)=abb92(51)*abb92(59)
      abb92(61)=abb92(13)*abb92(18)
      abb92(61)=abb92(61)+abb92(14)
      abb92(52)=abb92(52)*abb92(61)
      abb92(62)=abb92(36)*abb92(41)
      abb92(63)=abb92(52)*abb92(62)
      abb92(60)=abb92(60)-abb92(63)
      abb92(60)=abb92(60)*abb92(11)
      abb92(63)=mB**5
      abb92(64)=abb92(63)*abb92(29)
      abb92(51)=abb92(51)*abb92(64)
      abb92(61)=abb92(63)*abb92(61)
      abb92(62)=abb92(61)*abb92(62)
      abb92(51)=abb92(60)+abb92(51)-abb92(62)
      abb92(60)=abb92(61)*abb92(39)
      abb92(61)=abb92(64)*abb92(44)
      abb92(60)=abb92(61)-abb92(60)
      abb92(60)=abb92(60)*abb92(6)**3
      abb92(61)=-abb92(60)*abb92(45)
      abb92(61)=-abb92(51)+abb92(61)
      abb92(62)=spak2k7*es12
      abb92(61)=abb92(7)*abb92(62)*abb92(61)
      abb92(25)=abb92(25)*abb92(21)
      abb92(59)=abb92(59)*abb92(25)
      abb92(63)=abb92(6)*c4
      abb92(64)=abb92(63)*spak3k4
      abb92(52)=abb92(52)*abb92(64)
      abb92(52)=abb92(59)-abb92(52)
      abb92(59)=abb92(9)**2
      abb92(52)=abb92(11)*abb92(52)*abb92(59)
      abb92(65)=-abb92(62)*abb92(52)
      abb92(40)=abb92(59)*abb92(40)
      abb92(66)=abb92(59)*abb92(44)
      abb92(67)=abb92(66)*abb92(30)
      abb92(40)=abb92(40)-abb92(67)
      abb92(67)=spbl5k1*spak2k7
      abb92(68)=spak1l5*spbl5k2
      abb92(69)=abb92(40)*abb92(68)*abb92(67)
      abb92(65)=abb92(65)+abb92(69)
      abb92(65)=abb92(10)*abb92(65)
      abb92(34)=abb92(34)*abb92(64)
      abb92(69)=abb92(25)*abb92(32)
      abb92(34)=abb92(34)-abb92(69)
      abb92(69)=abb92(34)*spbl6l5
      abb92(70)=spak1l5*abb92(69)
      abb92(71)=mB**2
      abb92(56)=abb92(56)*abb92(71)
      abb92(54)=-abb92(11)*abb92(56)*abb92(54)
      abb92(58)=abb92(70)-abb92(54)+abb92(58)
      abb92(58)=spbl5k1*abb92(58)
      abb92(70)=abb92(42)*abb92(7)
      abb92(72)=es12*spbl6l5
      abb92(73)=-abb92(72)*abb92(70)
      abb92(58)=abb92(73)+abb92(58)
      abb92(58)=spal5k7*abb92(58)
      abb92(73)=abb92(37)*abb92(34)
      abb92(74)=-spak1l5*abb92(73)
      abb92(75)=abb92(70)*abb92(50)
      abb92(54)=-spal6k7*abb92(54)
      abb92(54)=abb92(54)+abb92(75)+abb92(74)
      abb92(54)=spbl6k1*abb92(54)
      abb92(48)=abb92(54)+abb92(58)+abb92(65)+abb92(61)+abb92(48)
      abb92(48)=8.0_ki*abb92(48)
      abb92(29)=abb92(71)*abb92(29)
      abb92(54)=abb92(28)*abb92(29)
      abb92(14)=abb92(71)*abb92(14)
      abb92(58)=abb92(71)*abb92(18)
      abb92(13)=abb92(58)*abb92(13)
      abb92(13)=abb92(14)+abb92(13)
      abb92(14)=abb92(13)*abb92(23)
      abb92(14)=abb92(54)-abb92(14)
      abb92(54)=2.0_ki*abb92(11)
      abb92(61)=abb92(14)*abb92(54)
      abb92(61)=abb92(61)+abb92(24)
      abb92(61)=abb92(61)*spak2k7
      abb92(65)=abb92(34)*spal5k7
      abb92(74)=abb92(65)*spbl6l5
      abb92(47)=abb92(74)-abb92(47)
      abb92(74)=abb92(53)*abb92(39)
      abb92(75)=abb92(44)*abb92(55)
      abb92(74)=abb92(74)-abb92(75)
      abb92(75)=spbl6l5*abb92(11)
      abb92(76)=abb92(75)*spak1k7
      abb92(77)=abb92(74)*abb92(76)
      abb92(61)=-abb92(47)+abb92(61)-abb92(77)
      abb92(77)=16.0_ki*abb92(61)
      abb92(78)=abb92(29)*abb92(12)
      abb92(79)=spak4k7*abb92(9)
      abb92(80)=abb92(78)*abb92(79)
      abb92(81)=abb92(3)**2
      abb92(81)=abb92(81)+1.0_ki
      abb92(82)=spbk3k2*abb92(81)
      abb92(83)=abb92(58)*abb92(82)
      abb92(84)=abb92(22)*spak4k7
      abb92(85)=abb92(83)*abb92(84)
      abb92(80)=abb92(80)-abb92(85)
      abb92(80)=abb92(80)*abb92(54)
      abb92(85)=abb92(19)*abb92(82)
      abb92(86)=abb92(85)*abb92(84)
      abb92(87)=abb92(30)*abb92(12)
      abb92(88)=abb92(87)*abb92(79)
      abb92(80)=abb92(80)+abb92(86)-abb92(88)
      abb92(80)=abb92(80)*spbl5k2
      abb92(86)=spak4k7*abb92(6)
      abb92(88)=abb92(86)*abb92(22)
      abb92(89)=abb92(88)*abb92(83)
      abb92(90)=abb92(78)*abb92(9)
      abb92(91)=abb92(90)*abb92(86)
      abb92(89)=abb92(89)-abb92(91)
      abb92(89)=abb92(89)*abb92(54)
      abb92(91)=abb92(88)*abb92(85)
      abb92(92)=abb92(87)*abb92(9)
      abb92(93)=abb92(92)*abb92(86)
      abb92(89)=abb92(89)-abb92(91)+abb92(93)
      abb92(89)=abb92(89)*es12
      abb92(91)=abb92(12)*spak4k7
      abb92(93)=abb92(91)*abb92(55)
      abb92(82)=abb92(17)*abb92(82)
      abb92(94)=spak4k7*c4
      abb92(95)=abb92(82)*abb92(94)
      abb92(93)=abb92(93)-abb92(95)
      abb92(95)=abb92(75)*spbl5k2
      abb92(96)=abb92(93)*abb92(95)
      abb92(97)=abb92(55)*abb92(12)
      abb92(98)=mB*abb92(97)
      abb92(99)=abb92(98)*abb92(86)
      abb92(100)=abb92(81)*spbk3k2*mB
      abb92(101)=abb92(17)*abb92(100)
      abb92(102)=abb92(63)*spak4k7
      abb92(103)=abb92(101)*abb92(102)
      abb92(99)=abb92(99)-abb92(103)
      abb92(103)=abb92(99)*abb92(72)
      abb92(96)=abb92(96)-abb92(103)
      abb92(96)=abb92(96)*spak1l5
      abb92(103)=abb92(78)*abb92(86)
      abb92(104)=abb92(83)*abb92(102)
      abb92(103)=abb92(103)-abb92(104)
      abb92(104)=abb92(54)*spbl6k2
      abb92(103)=abb92(103)*abb92(104)
      abb92(105)=abb92(32)*abb92(12)
      abb92(106)=abb92(105)*abb92(86)
      abb92(18)=abb92(18)*abb92(100)
      abb92(100)=abb92(18)*abb92(102)
      abb92(100)=abb92(106)-abb92(100)
      abb92(106)=spal5l6*spbl6l5*spbl6k2
      abb92(107)=abb92(106)*abb92(100)
      abb92(108)=spak1l6*abb92(75)*spbl6k2
      abb92(93)=abb92(108)*abb92(93)
      abb92(91)=abb92(43)*abb92(91)
      abb92(109)=abb92(85)*abb92(41)
      abb92(110)=abb92(109)*abb92(94)
      abb92(91)=abb92(91)-abb92(110)
      abb92(110)=spak2l6*abb92(7)*spbl6k2**2
      abb92(111)=abb92(110)*abb92(91)
      abb92(80)=abb92(89)+abb92(80)+abb92(103)+abb92(107)+abb92(93)+abb92(96)+a&
      &bb92(111)
      abb92(89)=abb92(45)*es12
      abb92(93)=abb92(91)*abb92(89)
      abb92(93)=abb92(93)-abb92(80)
      abb92(93)=16.0_ki*abb92(93)
      abb92(96)=abb92(100)*spbl6k2
      abb92(96)=32.0_ki*abb92(96)
      abb92(103)=abb92(105)*abb92(79)
      abb92(107)=abb92(18)*abb92(84)
      abb92(103)=abb92(103)-abb92(107)
      abb92(107)=abb92(103)*spbl5k2
      abb92(107)=32.0_ki*abb92(107)
      abb92(51)=-spak2k7*abb92(51)
      abb92(91)=-es12*spbl6k2*abb92(91)
      abb92(46)=-abb92(60)*abb92(46)
      abb92(60)=abb92(55)*abb92(71)
      abb92(111)=abb92(60)*abb92(25)
      abb92(71)=abb92(71)*abb92(53)
      abb92(112)=abb92(71)*abb92(64)
      abb92(111)=abb92(111)-abb92(112)
      abb92(112)=-abb92(111)*abb92(76)
      abb92(46)=abb92(112)+abb92(46)+abb92(91)+abb92(51)
      abb92(46)=abb92(7)*abb92(46)
      abb92(51)=spal6k7*spbl6l5
      abb92(91)=abb92(51)+abb92(37)
      abb92(112)=-abb92(49)*abb92(91)
      abb92(52)=-spak2k7*abb92(52)
      abb92(60)=abb92(60)*abb92(27)
      abb92(71)=abb92(71)*abb92(36)
      abb92(60)=abb92(60)-abb92(71)
      abb92(71)=-abb92(60)*abb92(76)
      abb92(52)=abb92(52)+abb92(71)
      abb92(52)=abb92(10)*abb92(52)
      abb92(24)=abb92(24)*abb92(10)
      abb92(70)=abb92(24)-abb92(70)
      abb92(71)=spal5k7*spbl6l5*abb92(70)
      abb92(46)=abb92(71)+abb92(52)+abb92(112)+abb92(46)+abb92(80)
      abb92(46)=16.0_ki*abb92(46)
      abb92(52)=spak1k7*abb92(34)*spbl6k1
      abb92(38)=abb92(52)-abb92(38)
      abb92(52)=abb92(61)-abb92(38)
      abb92(52)=16.0_ki*abb92(52)
      abb92(40)=abb92(40)*abb92(10)
      abb92(61)=spbl5k2*spak2k7
      abb92(71)=abb92(61)*abb92(40)
      abb92(51)=abb92(33)*abb92(51)
      abb92(31)=abb92(51)+abb92(71)+abb92(31)+abb92(47)-abb92(38)
      abb92(31)=8.0_ki*abb92(31)
      abb92(34)=16.0_ki*abb92(34)
      abb92(38)=16.0_ki*abb92(70)
      abb92(47)=16.0_ki*abb92(33)
      abb92(40)=abb92(40)+abb92(49)
      abb92(49)=-16.0_ki*abb92(40)
      abb92(51)=abb92(85)*abb92(64)
      abb92(71)=abb92(87)*abb92(21)
      abb92(51)=abb92(51)-abb92(71)
      abb92(71)=abb92(83)*abb92(64)
      abb92(76)=-abb92(21)*abb92(78)
      abb92(71)=abb92(71)+abb92(76)
      abb92(71)=abb92(71)*abb92(54)
      abb92(76)=abb92(82)*abb92(39)
      abb92(80)=abb92(97)*spak3k4
      abb92(76)=abb92(76)-abb92(80)
      abb92(76)=abb92(76)*abb92(75)
      abb92(112)=spak1l6*abb92(76)
      abb92(21)=abb92(105)*abb92(21)
      abb92(113)=abb92(64)*abb92(18)
      abb92(21)=abb92(21)-abb92(113)
      abb92(113)=abb92(21)*spbl6l5
      abb92(114)=-spal5l6*abb92(113)
      abb92(115)=abb92(41)*abb92(39)
      abb92(116)=abb92(85)*abb92(115)
      abb92(12)=abb92(43)*abb92(12)
      abb92(117)=-spak3k4*abb92(12)
      abb92(116)=abb92(116)+abb92(117)
      abb92(116)=spak2l6*abb92(116)*abb92(45)
      abb92(71)=abb92(116)+abb92(114)+abb92(112)+abb92(71)-abb92(51)
      abb92(71)=spbl6k3*abb92(71)
      abb92(112)=-abb92(23)*abb92(56)*abb92(82)
      abb92(114)=abb92(6)*abb92(97)*abb92(26)
      abb92(56)=abb92(56)*abb92(114)
      abb92(56)=abb92(112)+abb92(56)
      abb92(56)=abb92(56)*abb92(54)
      abb92(112)=abb92(82)*abb92(57)
      abb92(116)=-abb92(112)*abb92(115)
      abb92(80)=abb92(41)*abb92(57)*abb92(80)
      abb92(80)=abb92(116)+abb92(80)
      abb92(80)=abb92(80)*abb92(45)
      abb92(112)=abb92(112)*abb92(23)
      abb92(57)=-abb92(57)*abb92(114)
      abb92(113)=spak1l5*abb92(113)
      abb92(56)=abb92(113)+abb92(80)+abb92(56)+abb92(112)+abb92(57)
      abb92(56)=spbk3k1*abb92(56)
      abb92(57)=-abb92(13)*abb92(64)
      abb92(80)=abb92(29)*abb92(25)
      abb92(57)=abb92(57)+abb92(80)
      abb92(57)=abb92(11)*abb92(57)
      abb92(64)=abb92(20)*abb92(64)
      abb92(25)=-abb92(30)*abb92(25)
      abb92(25)=abb92(57)+abb92(64)+abb92(25)
      abb92(25)=abb92(7)*abb92(25)
      abb92(13)=-abb92(13)*abb92(36)
      abb92(57)=abb92(27)*abb92(29)
      abb92(13)=abb92(13)+abb92(57)
      abb92(13)=abb92(11)*abb92(13)
      abb92(20)=abb92(20)*abb92(36)
      abb92(57)=-abb92(30)*abb92(27)
      abb92(13)=abb92(13)+abb92(20)+abb92(57)
      abb92(13)=abb92(10)*abb92(13)
      abb92(13)=abb92(13)+abb92(25)
      abb92(13)=spbl6l5*abb92(13)
      abb92(20)=abb92(98)*abb92(6)
      abb92(25)=abb92(101)*abb92(63)
      abb92(20)=abb92(20)-abb92(25)
      abb92(25)=abb92(20)*abb92(72)
      abb92(57)=abb92(82)*c4
      abb92(57)=abb92(57)-abb92(97)
      abb92(64)=abb92(57)*abb92(95)
      abb92(25)=abb92(25)+abb92(64)
      abb92(25)=abb92(25)*spak1l5
      abb92(64)=abb92(83)*abb92(22)
      abb92(64)=abb92(64)-abb92(90)
      abb92(64)=abb92(64)*abb92(54)
      abb92(80)=abb92(85)*abb92(22)
      abb92(64)=abb92(64)-abb92(80)+abb92(92)
      abb92(80)=abb92(64)*spbl5k2
      abb92(82)=-es12*abb92(6)*abb92(64)
      abb92(90)=abb92(78)*abb92(6)
      abb92(92)=abb92(83)*abb92(63)
      abb92(90)=abb92(90)-abb92(92)
      abb92(90)=abb92(90)*abb92(104)
      abb92(82)=abb92(82)-abb92(90)
      abb92(90)=abb92(109)*c4
      abb92(12)=abb92(90)-abb92(12)
      abb92(90)=abb92(12)*abb92(89)
      abb92(25)=abb92(25)-abb92(90)+abb92(80)+abb92(82)
      abb92(80)=-abb92(57)*abb92(108)
      abb92(90)=abb92(105)*abb92(6)
      abb92(63)=abb92(18)*abb92(63)
      abb92(63)=abb92(90)-abb92(63)
      abb92(90)=abb92(63)*abb92(106)
      abb92(92)=-abb92(12)*abb92(110)
      abb92(80)=abb92(92)+abb92(90)+abb92(80)-abb92(25)
      abb92(80)=spak2k4*abb92(80)
      abb92(83)=abb92(83)*abb92(36)
      abb92(78)=-abb92(26)*abb92(78)
      abb92(78)=abb92(83)+abb92(78)
      abb92(78)=abb92(78)*abb92(54)
      abb92(51)=abb92(51)*abb92(45)
      abb92(76)=spak1l5*abb92(76)
      abb92(83)=-abb92(85)*abb92(36)
      abb92(85)=abb92(26)*abb92(87)
      abb92(51)=abb92(76)+abb92(51)+abb92(78)+abb92(83)+abb92(85)
      abb92(51)=spbl5k3*abb92(51)
      abb92(13)=abb92(56)+abb92(51)+abb92(71)+abb92(80)+abb92(13)
      abb92(13)=8.0_ki*abb92(13)
      abb92(51)=abb92(63)*spbl6k2
      abb92(56)=spak2k4*abb92(51)
      abb92(71)=-spbl6k3*abb92(21)
      abb92(56)=abb92(56)+abb92(71)
      abb92(56)=16.0_ki*abb92(56)
      abb92(71)=abb92(105)*abb92(9)
      abb92(76)=abb92(18)*abb92(22)
      abb92(71)=abb92(71)-abb92(76)
      abb92(76)=spak2k4*spbl5k2
      abb92(78)=-abb92(71)*abb92(76)
      abb92(80)=abb92(105)*abb92(26)
      abb92(18)=abb92(36)*abb92(18)
      abb92(18)=abb92(80)-abb92(18)
      abb92(80)=spbl5k3*abb92(18)
      abb92(78)=abb92(78)+abb92(80)
      abb92(78)=16.0_ki*abb92(78)
      abb92(80)=abb92(103)*spbl6k2
      abb92(80)=16.0_ki*abb92(80)
      abb92(83)=abb92(71)*spbl6k2
      abb92(85)=-spak2k4*abb92(83)
      abb92(87)=spbl6k3*abb92(18)
      abb92(85)=abb92(85)+abb92(87)
      abb92(85)=8.0_ki*abb92(85)
      abb92(24)=abb92(61)*abb92(24)
      abb92(69)=-spal6k7*abb92(69)
      abb92(87)=-spak2k7*abb92(42)
      abb92(24)=abb92(69)+abb92(24)+abb92(87)-abb92(73)
      abb92(24)=8.0_ki*abb92(24)
      abb92(69)=abb92(100)*spbl5k2
      abb92(69)=16.0_ki*abb92(69)
      abb92(73)=abb92(63)*abb92(76)
      abb92(76)=-spbl5k3*abb92(21)
      abb92(73)=abb92(73)+abb92(76)
      abb92(73)=8.0_ki*abb92(73)
      abb92(76)=abb92(79)*abb92(3)
      abb92(87)=abb92(76)*abb92(29)
      abb92(58)=abb92(58)*abb92(81)
      abb92(90)=abb92(58)*abb92(84)
      abb92(87)=abb92(87)-abb92(90)
      abb92(87)=abb92(87)*abb92(54)
      abb92(90)=abb92(76)*abb92(30)
      abb92(19)=abb92(19)*abb92(81)
      abb92(92)=abb92(19)*abb92(84)
      abb92(87)=abb92(87)-abb92(90)+abb92(92)
      abb92(87)=abb92(87)*spbl5k2
      abb92(90)=abb92(58)*abb92(88)
      abb92(86)=abb92(86)*abb92(3)
      abb92(29)=abb92(86)*abb92(29)
      abb92(92)=abb92(29)*abb92(9)
      abb92(90)=abb92(90)-abb92(92)
      abb92(54)=abb92(90)*abb92(54)
      abb92(88)=abb92(19)*abb92(88)
      abb92(30)=abb92(30)*abb92(86)*abb92(9)
      abb92(30)=abb92(54)-abb92(88)+abb92(30)
      abb92(30)=abb92(30)*es12
      abb92(54)=abb92(55)*mB
      abb92(88)=abb92(54)*abb92(86)
      abb92(90)=abb92(17)*mB
      abb92(92)=abb92(90)*abb92(81)
      abb92(97)=abb92(92)*abb92(102)
      abb92(88)=abb92(88)-abb92(97)
      abb92(72)=abb92(88)*abb92(72)
      abb92(17)=abb92(94)*abb92(81)*abb92(17)
      abb92(97)=spak4k7*abb92(3)
      abb92(100)=abb92(97)*abb92(55)
      abb92(17)=abb92(17)-abb92(100)
      abb92(95)=abb92(17)*abb92(95)
      abb92(72)=abb92(72)+abb92(95)
      abb92(72)=abb92(72)*spak1l5
      abb92(58)=abb92(58)*abb92(102)
      abb92(29)=abb92(58)-abb92(29)
      abb92(29)=abb92(29)*abb92(104)
      abb92(19)=abb92(19)*abb92(94)*abb92(41)
      abb92(43)=abb92(97)*abb92(43)
      abb92(19)=abb92(43)-abb92(19)
      abb92(43)=abb92(19)*abb92(89)
      abb92(29)=-abb92(29)-abb92(72)-abb92(43)+abb92(87)+abb92(30)
      abb92(30)=spbk4k2*abb92(29)
      abb92(25)=-spak3k7*abb92(25)
      abb92(43)=-spak3k7*abb92(57)
      abb92(58)=-spbk4k2*abb92(17)
      abb92(43)=abb92(43)+abb92(58)
      abb92(43)=abb92(43)*abb92(108)
      abb92(58)=abb92(63)*spak3k7
      abb92(72)=abb92(86)*abb92(32)
      abb92(35)=abb92(35)*abb92(81)
      abb92(81)=abb92(35)*abb92(102)
      abb92(72)=abb92(72)-abb92(81)
      abb92(81)=abb92(72)*spbk4k2
      abb92(58)=abb92(58)+abb92(81)
      abb92(86)=abb92(58)*abb92(106)
      abb92(87)=-spak3k7*abb92(12)
      abb92(89)=spbk4k2*abb92(19)
      abb92(87)=abb92(87)+abb92(89)
      abb92(87)=abb92(87)*abb92(110)
      abb92(25)=abb92(87)+abb92(86)+abb92(43)+abb92(25)+abb92(30)
      abb92(25)=8.0_ki*abb92(25)
      abb92(30)=spak3k7*abb92(51)
      abb92(43)=spbl6k2*abb92(81)
      abb92(30)=abb92(30)+abb92(43)
      abb92(30)=16.0_ki*abb92(30)
      abb92(32)=abb92(76)*abb92(32)
      abb92(35)=abb92(35)*abb92(84)
      abb92(32)=abb92(32)-abb92(35)
      abb92(35)=abb92(32)*spbk4k2
      abb92(43)=-spak3k7*abb92(71)
      abb92(43)=abb92(43)-abb92(35)
      abb92(43)=16.0_ki*spbl5k2*abb92(43)
      abb92(81)=-spak3k7*abb92(83)
      abb92(35)=-spbl6k2*abb92(35)
      abb92(35)=abb92(81)+abb92(35)
      abb92(35)=8.0_ki*abb92(35)
      abb92(58)=8.0_ki*spbl5k2*abb92(58)
      abb92(29)=-spbk4k3*abb92(29)
      abb92(81)=spak2k7*abb92(82)
      abb92(64)=abb92(64)*abb92(61)
      abb92(82)=abb92(20)*abb92(62)
      abb92(86)=spbl6l5*abb92(82)
      abb92(87)=abb92(57)*abb92(75)*abb92(61)
      abb92(86)=abb92(86)+abb92(87)
      abb92(86)=spak1l5*abb92(86)
      abb92(57)=spak2k7*abb92(57)
      abb92(17)=spbk4k3*abb92(17)
      abb92(17)=abb92(57)+abb92(17)
      abb92(17)=abb92(17)*abb92(108)
      abb92(57)=abb92(72)*spbk4k3
      abb92(72)=-spak2k7*abb92(63)
      abb92(72)=abb92(72)-abb92(57)
      abb92(72)=abb92(72)*abb92(106)
      abb92(87)=spak2k7*abb92(12)
      abb92(19)=-spbk4k3*abb92(19)
      abb92(19)=abb92(87)+abb92(19)
      abb92(19)=abb92(19)*abb92(110)
      abb92(12)=-abb92(12)*abb92(45)*abb92(62)
      abb92(12)=abb92(19)+abb92(72)+abb92(17)+abb92(29)+abb92(86)+abb92(12)+abb&
      &92(81)+abb92(64)
      abb92(12)=8.0_ki*abb92(12)
      abb92(17)=-spak2k7*abb92(51)
      abb92(19)=-spbl6k2*abb92(57)
      abb92(17)=abb92(17)+abb92(19)
      abb92(17)=16.0_ki*abb92(17)
      abb92(19)=abb92(71)*abb92(61)
      abb92(29)=abb92(32)*spbk4k3
      abb92(32)=spbl5k2*abb92(29)
      abb92(19)=abb92(19)+abb92(32)
      abb92(19)=16.0_ki*abb92(19)
      abb92(32)=spak2k7*abb92(83)
      abb92(29)=spbl6k2*abb92(29)
      abb92(29)=abb92(32)+abb92(29)
      abb92(29)=8.0_ki*abb92(29)
      abb92(32)=-abb92(63)*abb92(61)
      abb92(51)=-spbl5k2*abb92(57)
      abb92(32)=abb92(32)+abb92(51)
      abb92(32)=8.0_ki*abb92(32)
      abb92(51)=abb92(55)*abb92(16)
      abb92(41)=abb92(41)*abb92(51)*abb92(44)
      abb92(16)=abb92(16)*abb92(53)
      abb92(44)=abb92(16)*abb92(115)
      abb92(41)=abb92(41)-abb92(44)
      abb92(41)=abb92(41)*abb92(7)
      abb92(44)=abb92(50)*abb92(41)
      abb92(14)=abb92(14)*abb92(11)
      abb92(45)=abb92(42)*abb92(45)
      abb92(45)=abb92(14)+abb92(45)
      abb92(45)=spal6k7*abb92(45)
      abb92(42)=spal5k7*abb92(42)
      abb92(42)=abb92(45)+abb92(44)+abb92(42)
      abb92(42)=8.0_ki*abb92(42)
      abb92(44)=-8.0_ki*abb92(70)
      abb92(28)=abb92(51)*abb92(28)
      abb92(23)=abb92(16)*abb92(23)
      abb92(23)=abb92(28)-abb92(23)
      abb92(28)=-spak2k7*abb92(23)
      abb92(15)=abb92(36)*abb92(90)*abb92(15)
      abb92(27)=abb92(54)*abb92(27)
      abb92(15)=abb92(15)-abb92(27)
      abb92(27)=-abb92(15)*abb92(91)
      abb92(27)=abb92(28)+abb92(27)
      abb92(27)=spak1l5*abb92(27)
      abb92(16)=abb92(39)*abb92(16)*abb92(59)
      abb92(28)=abb92(66)*abb92(51)
      abb92(16)=abb92(16)-abb92(28)
      abb92(16)=abb92(16)*abb92(10)
      abb92(28)=spak2k7*abb92(68)*abb92(16)
      abb92(39)=spal5k7*abb92(14)
      abb92(27)=abb92(39)+abb92(28)+abb92(27)
      abb92(27)=8.0_ki*abb92(27)
      abb92(15)=abb92(15)*spak1k7
      abb92(15)=16.0_ki*abb92(15)
      abb92(28)=abb92(98)*abb92(79)
      abb92(39)=abb92(101)*abb92(84)
      abb92(28)=abb92(28)-abb92(39)
      abb92(39)=spak1l6*spbl6k2
      abb92(45)=abb92(68)+abb92(39)
      abb92(45)=abb92(28)*abb92(45)
      abb92(50)=16.0_ki*abb92(45)
      abb92(51)=-abb92(7)*abb92(23)
      abb92(16)=abb92(16)+abb92(51)
      abb92(16)=spak1k7*abb92(16)
      abb92(16)=abb92(45)+abb92(16)
      abb92(16)=16.0_ki*abb92(16)
      abb92(26)=abb92(98)*abb92(26)
      abb92(36)=abb92(36)*abb92(101)
      abb92(26)=abb92(26)-abb92(36)
      abb92(36)=-spbl6k3*spak1l6
      abb92(45)=-spbl5k3*spak1l5
      abb92(36)=abb92(45)+abb92(36)
      abb92(26)=abb92(26)*abb92(36)
      abb92(36)=abb92(98)*abb92(9)
      abb92(22)=abb92(101)*abb92(22)
      abb92(22)=abb92(36)-abb92(22)
      abb92(36)=abb92(22)*abb92(68)
      abb92(45)=spak2k4*abb92(36)
      abb92(51)=abb92(22)*spak2k4
      abb92(53)=abb92(39)*abb92(51)
      abb92(26)=abb92(45)+abb92(53)+abb92(26)
      abb92(26)=8.0_ki*abb92(26)
      abb92(45)=abb92(22)*spak3k7
      abb92(53)=abb92(76)*abb92(54)
      abb92(54)=abb92(92)*abb92(84)
      abb92(53)=abb92(53)-abb92(54)
      abb92(54)=abb92(53)*spbk4k2
      abb92(45)=abb92(45)+abb92(54)
      abb92(55)=abb92(45)*abb92(39)
      abb92(57)=spak3k7*abb92(36)
      abb92(54)=abb92(68)*abb92(54)
      abb92(54)=abb92(55)+abb92(57)+abb92(54)
      abb92(54)=8.0_ki*abb92(54)
      abb92(53)=abb92(53)*spbk4k3
      abb92(55)=-spak2k7*abb92(22)
      abb92(55)=abb92(55)-abb92(53)
      abb92(39)=abb92(55)*abb92(39)
      abb92(36)=-spak2k7*abb92(36)
      abb92(55)=-abb92(68)*abb92(53)
      abb92(36)=abb92(39)+abb92(36)+abb92(55)
      abb92(36)=8.0_ki*abb92(36)
      abb92(14)=-8.0_ki*spak1k7*abb92(14)
      abb92(39)=-spak2k7*abb92(111)
      abb92(37)=-abb92(74)*abb92(37)
      abb92(37)=abb92(37)+abb92(39)
      abb92(37)=abb92(11)*abb92(37)
      abb92(39)=abb92(62)*abb92(41)
      abb92(23)=abb92(23)*abb92(62)
      abb92(41)=-abb92(11)*abb92(60)*abb92(61)
      abb92(23)=abb92(23)+abb92(41)
      abb92(23)=abb92(10)*abb92(23)
      abb92(41)=-spbl5k1*abb92(65)
      abb92(33)=abb92(33)*spbl5k1
      abb92(55)=-abb92(74)*abb92(75)
      abb92(55)=abb92(55)-abb92(33)
      abb92(55)=spal6k7*abb92(55)
      abb92(23)=abb92(55)+abb92(41)+abb92(23)+abb92(39)+abb92(37)
      abb92(23)=8.0_ki*abb92(23)
      abb92(37)=16.0_ki*es12
      abb92(39)=abb92(99)*abb92(37)
      abb92(41)=spak2k4*es12*abb92(20)
      abb92(21)=-spbk3k1*abb92(21)
      abb92(21)=abb92(41)+abb92(21)
      abb92(21)=8.0_ki*abb92(21)
      abb92(20)=spak3k7*abb92(20)
      abb92(41)=spbk4k2*abb92(88)
      abb92(20)=abb92(20)+abb92(41)
      abb92(41)=8.0_ki*es12
      abb92(20)=abb92(20)*abb92(41)
      abb92(55)=-spbk4k3*es12*abb92(88)
      abb92(55)=-abb92(82)+abb92(55)
      abb92(55)=8.0_ki*abb92(55)
      abb92(33)=-spal5k7*abb92(33)
      abb92(57)=spbl6k1*abb92(65)
      abb92(33)=abb92(33)+abb92(57)
      abb92(33)=8.0_ki*abb92(33)
      abb92(28)=abb92(37)*abb92(28)
      abb92(37)=-es12*abb92(51)
      abb92(18)=spbk3k1*abb92(18)
      abb92(18)=abb92(37)+abb92(18)
      abb92(18)=8.0_ki*abb92(18)
      abb92(37)=-abb92(45)*abb92(41)
      abb92(22)=abb92(22)*abb92(62)
      abb92(41)=es12*abb92(53)
      abb92(22)=abb92(22)+abb92(41)
      abb92(22)=8.0_ki*abb92(22)
      abb92(40)=abb92(67)*abb92(40)
      abb92(41)=spbl6k1*spak2k7*abb92(70)
      abb92(40)=abb92(41)+abb92(40)
      abb92(40)=8.0_ki*abb92(40)
      R2d92=0.0_ki
      rat2 = rat2 + R2d92
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='92' value='", &
          & R2d92, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd92h7
