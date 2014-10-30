module     p0_dbaru_epnebbbarg_abbrevd93h6
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh6
   implicit none
   private
   complex(ki), dimension(107), public :: abb93
   complex(ki), public :: R2d93
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
      abb93(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb93(2)=1.0_ki/(-es71+es56-es567+es234)
      abb93(3)=NC**(-1)
      abb93(4)=sqrt2**(-1)
      abb93(5)=es234**(-1)
      abb93(6)=spak2l5**(-1)
      abb93(7)=spbl5k2**(-1)
      abb93(8)=spbk7k2**(-1)
      abb93(9)=spak2l6**(-1)
      abb93(10)=spbl6k2**(-1)
      abb93(11)=sqrt(mB**2)
      abb93(12)=TR*gW
      abb93(13)=abb93(12)*mB
      abb93(13)=abb93(13)**2
      abb93(14)=abb93(5)*abb93(8)*i_*CVDU*abb93(4)*abb93(2)
      abb93(15)=abb93(13)*abb93(14)
      abb93(16)=abb93(1)*c4*abb93(3)**2
      abb93(17)=abb93(9)*abb93(16)
      abb93(18)=abb93(17)*abb93(15)
      abb93(19)=abb93(14)*c1*abb93(1)
      abb93(20)=abb93(19)*abb93(9)
      abb93(21)=abb93(20)*abb93(13)
      abb93(22)=abb93(21)*NC
      abb93(18)=abb93(18)+abb93(22)
      abb93(21)=2.0_ki*abb93(21)
      abb93(22)=abb93(21)*abb93(3)
      abb93(22)=abb93(18)-abb93(22)
      abb93(23)=spbk3k2**2
      abb93(24)=abb93(23)*spak3k4
      abb93(25)=abb93(24)*abb93(22)
      abb93(26)=spak2k7*spak1l5
      abb93(27)=abb93(26)*abb93(25)
      abb93(28)=2.0_ki*abb93(19)
      abb93(29)=abb93(28)*abb93(3)
      abb93(30)=abb93(19)*NC
      abb93(31)=abb93(29)-abb93(30)
      abb93(12)=abb93(12)**2
      abb93(32)=abb93(24)*abb93(12)
      abb93(33)=-abb93(32)*abb93(31)
      abb93(34)=abb93(14)*spak3k4
      abb93(23)=abb93(23)*abb93(34)
      abb93(35)=abb93(23)*abb93(12)
      abb93(36)=abb93(35)*abb93(16)
      abb93(37)=abb93(33)+abb93(36)
      abb93(38)=abb93(37)*spak1k7
      abb93(39)=spbl6k1*spak1l5
      abb93(40)=abb93(39)*abb93(38)
      abb93(27)=abb93(27)-abb93(40)
      abb93(40)=abb93(25)*spak1k2
      abb93(41)=-spal5k7*abb93(40)
      abb93(24)=abb93(24)*abb93(7)
      abb93(42)=abb93(24)*abb93(22)
      abb93(43)=abb93(42)*spak1k7
      abb93(44)=-es12*abb93(43)
      abb93(13)=abb93(19)*abb93(13)
      abb93(45)=abb93(13)*NC
      abb93(15)=abb93(15)*abb93(16)
      abb93(15)=abb93(45)+abb93(15)
      abb93(45)=abb93(24)*abb93(15)
      abb93(13)=2.0_ki*abb93(13)
      abb93(46)=abb93(24)*abb93(3)
      abb93(47)=abb93(13)*abb93(46)
      abb93(45)=abb93(45)-abb93(47)
      abb93(47)=abb93(6)*spak2k7
      abb93(48)=abb93(45)*abb93(47)
      abb93(49)=spbl6k2*abb93(48)
      abb93(50)=-spak1l5*abb93(49)
      abb93(41)=abb93(50)+abb93(44)+abb93(41)-abb93(27)
      abb93(41)=spak1l6*abb93(41)
      abb93(44)=abb93(25)*abb93(10)
      abb93(50)=abb93(44)*spak1k7
      abb93(51)=es12*spak1l5*abb93(50)
      abb93(41)=abb93(51)+abb93(41)
      abb93(41)=spbl6k1*abb93(41)
      abb93(51)=abb93(9)**2
      abb93(52)=mB**4
      abb93(53)=abb93(51)*abb93(52)
      abb93(33)=-abb93(53)*abb93(33)
      abb93(36)=abb93(36)*abb93(53)
      abb93(33)=abb93(33)-abb93(36)
      abb93(33)=abb93(33)*spak1k2
      abb93(53)=spal5k7*abb93(33)
      abb93(54)=mB**3
      abb93(55)=abb93(37)*abb93(54)
      abb93(56)=-abb93(51)*abb93(55)
      abb93(57)=abb93(26)*abb93(11)
      abb93(58)=abb93(56)*abb93(57)
      abb93(53)=abb93(58)+abb93(53)
      abb93(53)=es12*abb93(53)
      abb93(58)=abb93(24)*abb93(30)
      abb93(59)=abb93(46)*abb93(28)
      abb93(58)=abb93(58)-abb93(59)
      abb93(60)=abb93(52)*abb93(12)
      abb93(51)=-abb93(58)*abb93(60)*abb93(51)
      abb93(36)=abb93(36)*abb93(7)
      abb93(36)=-abb93(36)+abb93(51)
      abb93(51)=abb93(36)*spak1k7
      abb93(61)=es12**2*abb93(51)
      abb93(53)=abb93(61)+abb93(53)
      abb93(53)=abb93(10)*abb93(53)
      abb93(61)=abb93(36)*spak1k2
      abb93(62)=es12*abb93(61)
      abb93(63)=2.0_ki*abb93(20)
      abb93(64)=abb93(63)*abb93(3)
      abb93(20)=abb93(20)*NC
      abb93(65)=abb93(64)-abb93(20)
      abb93(66)=-abb93(65)*abb93(32)*mB
      abb93(67)=abb93(12)*mB
      abb93(68)=abb93(67)*abb93(17)
      abb93(69)=abb93(68)*abb93(23)
      abb93(66)=abb93(66)+abb93(69)
      abb93(69)=abb93(11)*spak1k2
      abb93(66)=abb93(66)*abb93(69)
      abb93(70)=abb93(40)-abb93(66)
      abb93(71)=spak1l5*abb93(70)
      abb93(72)=spak1k2*spbl6k2
      abb93(73)=abb93(42)*abb93(72)
      abb93(74)=-spak1l6*abb93(73)
      abb93(71)=abb93(74)+abb93(71)
      abb93(71)=spbl6k1*abb93(71)
      abb93(62)=abb93(62)+abb93(71)
      abb93(62)=spal6k7*abb93(62)
      abb93(71)=abb93(37)*spal5k7
      abb93(74)=abb93(71)*spbl6l5
      abb93(75)=-spak1l6*abb93(74)
      abb93(76)=abb93(44)*spal5k7
      abb93(77)=abb93(76)*spak1k2
      abb93(78)=spbl5k2*abb93(77)
      abb93(75)=abb93(78)+abb93(75)
      abb93(75)=abb93(39)*abb93(75)
      abb93(78)=spbl5k1*spak1l5
      abb93(79)=-spal5k7*abb93(66)*abb93(78)
      abb93(80)=abb93(24)*abb93(20)
      abb93(46)=abb93(46)*abb93(63)
      abb93(46)=abb93(80)-abb93(46)
      abb93(80)=abb93(46)*abb93(54)*abb93(12)
      abb93(35)=abb93(35)*abb93(17)
      abb93(81)=abb93(35)*abb93(7)
      abb93(54)=abb93(81)*abb93(54)
      abb93(54)=abb93(54)+abb93(80)
      abb93(80)=abb93(11)*spak1l5
      abb93(82)=-es12*abb93(54)*abb93(47)*abb93(80)
      abb93(41)=abb93(79)+abb93(62)+abb93(41)+abb93(82)+abb93(53)+abb93(75)
      abb93(41)=8.0_ki*abb93(41)
      abb93(53)=abb93(67)*spbl6k2
      abb93(58)=-abb93(53)*abb93(58)
      abb93(23)=abb93(67)*abb93(23)*abb93(16)
      abb93(62)=spbl6k2*abb93(7)
      abb93(75)=abb93(23)*abb93(62)
      abb93(58)=abb93(58)-abb93(75)
      abb93(75)=spak1k7*abb93(11)
      abb93(79)=abb93(58)*abb93(75)
      abb93(73)=abb93(73)*spal6k7
      abb93(73)=abb93(73)-abb93(79)
      abb93(40)=abb93(40)-2.0_ki*abb93(66)
      abb93(40)=spal5k7*abb93(40)
      abb93(40)=abb93(40)-abb93(73)
      abb93(40)=16.0_ki*abb93(40)
      abb93(70)=abb93(70)*spal5k7
      abb93(73)=abb93(70)-abb93(73)
      abb93(73)=16.0_ki*abb93(73)
      abb93(20)=abb93(67)*abb93(20)
      abb93(79)=abb93(20)*spbk3k2
      abb93(82)=abb93(3)*spbk3k2
      abb93(83)=abb93(67)*abb93(82)
      abb93(63)=abb93(83)*abb93(63)
      abb93(79)=abb93(79)-abb93(63)
      abb93(14)=abb93(14)*abb93(12)
      abb93(84)=abb93(14)*mB
      abb93(17)=abb93(84)*abb93(17)
      abb93(85)=abb93(17)*spbk3k2
      abb93(85)=abb93(85)+abb93(79)
      abb93(85)=2.0_ki*abb93(85)
      abb93(86)=spak1l5*spak4k7
      abb93(87)=abb93(86)*abb93(11)
      abb93(88)=abb93(85)*abb93(87)
      abb93(89)=spbk3k2*abb93(18)
      abb93(21)=abb93(21)*abb93(82)
      abb93(89)=abb93(89)-abb93(21)
      abb93(90)=abb93(89)*abb93(86)
      abb93(88)=abb93(88)-abb93(90)
      abb93(88)=abb93(88)*es12
      abb93(91)=abb93(83)*abb93(28)
      abb93(92)=spbk3k2*abb93(16)
      abb93(93)=abb93(92)*abb93(84)
      abb93(91)=abb93(91)-abb93(93)
      abb93(93)=spbl6k2**2
      abb93(94)=abb93(93)*abb93(7)
      abb93(95)=-abb93(94)*abb93(91)
      abb93(96)=abb93(67)*abb93(30)
      abb93(97)=abb93(7)*spbk3k2
      abb93(93)=abb93(97)*abb93(96)*abb93(93)
      abb93(93)=abb93(93)+abb93(95)
      abb93(93)=abb93(93)*abb93(11)
      abb93(95)=abb93(93)*spak4k7
      abb93(98)=spbl6k2*spbk3k2
      abb93(99)=abb93(98)*abb93(7)
      abb93(100)=-abb93(99)*abb93(18)
      abb93(101)=abb93(21)*abb93(62)
      abb93(100)=abb93(101)+abb93(100)
      abb93(101)=es12*spak4k7
      abb93(102)=abb93(101)*abb93(100)
      abb93(95)=abb93(102)+abb93(95)
      abb93(95)=abb93(95)*spak1l6
      abb93(102)=abb93(98)*abb93(18)
      abb93(103)=abb93(21)*spbl6k2
      abb93(102)=abb93(102)-abb93(103)
      abb93(102)=abb93(102)*spak1k2
      abb93(20)=abb93(20)+abb93(17)
      abb93(103)=abb93(98)*abb93(20)
      abb93(63)=abb93(63)*spbl6k2
      abb93(63)=abb93(103)-abb93(63)
      abb93(63)=abb93(63)*abb93(69)
      abb93(63)=abb93(102)-abb93(63)
      abb93(102)=2.0_ki*spal5l6
      abb93(63)=abb93(63)*abb93(102)
      abb93(103)=-spak4k7*abb93(63)
      abb93(91)=-spbl6k2*abb93(91)
      abb93(104)=abb93(96)*abb93(98)
      abb93(91)=abb93(104)+abb93(91)
      abb93(104)=abb93(91)*abb93(87)
      abb93(88)=-abb93(88)+abb93(104)+abb93(95)+abb93(103)
      abb93(95)=16.0_ki*abb93(88)
      abb93(103)=abb93(7)**2
      abb93(104)=abb93(103)*abb93(52)
      abb93(32)=-abb93(65)*abb93(104)*abb93(32)
      abb93(105)=abb93(32)*spbl6k2
      abb93(106)=abb93(104)*spbl6k2
      abb93(107)=abb93(106)*abb93(35)
      abb93(105)=abb93(105)+abb93(107)
      abb93(107)=-abb93(6)*spak1k2*abb93(105)
      abb93(61)=2.0_ki*abb93(61)+abb93(107)
      abb93(61)=spal6k7*abb93(61)
      abb93(46)=abb93(46)*abb93(60)
      abb93(52)=abb93(81)*abb93(52)
      abb93(46)=abb93(46)+abb93(52)
      abb93(46)=abb93(46)*spak1k2
      abb93(52)=2.0_ki*abb93(69)
      abb93(60)=-abb93(54)*abb93(52)
      abb93(60)=abb93(46)+abb93(60)
      abb93(60)=spal5k7*abb93(60)
      abb93(55)=abb93(103)*spbl6k2*abb93(55)
      abb93(81)=-abb93(55)*abb93(75)
      abb93(60)=abb93(60)+abb93(81)
      abb93(60)=abb93(6)*abb93(60)
      abb93(51)=es12*abb93(51)
      abb93(81)=abb93(56)*abb93(52)
      abb93(103)=spal5k7*abb93(81)
      abb93(51)=abb93(103)+abb93(51)
      abb93(51)=abb93(10)*abb93(51)
      abb93(103)=-abb93(54)*abb93(75)
      abb93(51)=abb93(61)+abb93(51)+abb93(60)+abb93(103)+abb93(88)
      abb93(51)=16.0_ki*abb93(51)
      abb93(60)=32.0_ki*abb93(43)
      abb93(61)=abb93(100)*spak1l6
      abb93(88)=abb93(61)*spak4k7
      abb93(88)=abb93(88)-abb93(90)
      abb93(90)=32.0_ki*abb93(88)
      abb93(35)=abb93(35)*abb93(104)
      abb93(32)=abb93(35)+abb93(32)
      abb93(35)=abb93(32)*abb93(6)
      abb93(103)=abb93(36)*abb93(10)
      abb93(35)=abb93(35)-abb93(103)
      abb93(104)=spak1k7*abb93(35)
      abb93(88)=abb93(88)+abb93(104)
      abb93(88)=32.0_ki*abb93(88)
      abb93(49)=abb93(74)+abb93(49)
      abb93(74)=-spak1l5*abb93(49)
      abb93(58)=-abb93(11)*abb93(58)
      abb93(104)=-es12*abb93(42)
      abb93(58)=abb93(58)+abb93(104)
      abb93(58)=spak1k7*abb93(58)
      abb93(27)=abb93(58)-2.0_ki*abb93(70)+abb93(74)-abb93(27)
      abb93(27)=16.0_ki*abb93(27)
      abb93(58)=-64.0_ki*abb93(43)
      abb93(70)=abb93(100)*es12
      abb93(70)=abb93(70)+abb93(93)
      abb93(70)=abb93(70)*spak1l6
      abb93(74)=abb93(85)*abb93(80)
      abb93(85)=abb93(89)*spak1l5
      abb93(74)=abb93(74)-abb93(85)
      abb93(74)=abb93(74)*es12
      abb93(63)=abb93(70)-abb93(74)-abb93(63)
      abb93(70)=abb93(91)*abb93(80)
      abb93(70)=abb93(70)+abb93(63)
      abb93(74)=spak2k4*abb93(70)
      abb93(19)=abb93(19)*spak3k4
      abb93(93)=2.0_ki*abb93(19)
      abb93(83)=abb93(93)*abb93(83)
      abb93(104)=abb93(92)*abb93(34)
      abb93(107)=abb93(67)*abb93(104)
      abb93(83)=-abb93(107)+abb93(83)
      abb93(83)=abb93(62)*abb93(83)
      abb93(19)=abb93(19)*NC
      abb93(107)=abb93(67)*abb93(19)*abb93(99)
      abb93(83)=-abb93(107)+abb93(83)
      abb93(107)=spak1l6*abb93(11)*abb93(83)
      abb93(79)=abb93(79)*spak3k4
      abb93(34)=spbk3k2*abb93(68)*abb93(34)
      abb93(34)=abb93(34)+abb93(79)
      abb93(34)=abb93(34)*abb93(52)
      abb93(52)=abb93(89)*spak3k4
      abb93(68)=spak1k2*abb93(52)
      abb93(68)=abb93(68)-abb93(34)
      abb93(68)=spal5l6*abb93(68)
      abb93(68)=abb93(107)+abb93(68)
      abb93(68)=spbl6k3*abb93(68)
      abb93(79)=-spak1k2*abb93(106)*abb93(37)
      abb93(106)=abb93(55)*abb93(69)
      abb93(79)=abb93(79)+abb93(106)
      abb93(79)=abb93(6)*abb93(79)
      abb93(81)=-abb93(33)+abb93(81)
      abb93(81)=spak2l5*abb93(10)*abb93(81)
      abb93(52)=-spak1l5*abb93(52)
      abb93(100)=abb93(100)*spak3k4
      abb93(106)=-spak1l6*abb93(100)
      abb93(52)=abb93(106)+abb93(52)
      abb93(52)=spak1k2*abb93(52)
      abb93(34)=spak1l5*abb93(34)
      abb93(34)=abb93(34)+abb93(52)
      abb93(34)=spbk3k1*abb93(34)
      abb93(52)=abb93(83)*abb93(80)
      abb93(80)=-spal5l6*spak1k2*abb93(100)
      abb93(52)=abb93(52)+abb93(80)
      abb93(52)=spbl5k3*abb93(52)
      abb93(80)=abb93(54)*abb93(69)
      abb93(34)=abb93(52)+abb93(34)+abb93(68)+abb93(81)+abb93(74)-abb93(80)+abb&
      &93(79)
      abb93(34)=8.0_ki*abb93(34)
      abb93(35)=-spak1k2*abb93(35)
      abb93(52)=abb93(85)-abb93(61)
      abb93(68)=-spak2k4*abb93(52)
      abb93(18)=abb93(97)*abb93(18)
      abb93(21)=abb93(21)*abb93(7)
      abb93(18)=abb93(18)-abb93(21)
      abb93(21)=-spak3k4*abb93(18)
      abb93(74)=-spbl6k3*spak1l6
      abb93(79)=-spbl5k3*spak1l5
      abb93(74)=abb93(79)+abb93(74)
      abb93(74)=abb93(21)*abb93(74)
      abb93(35)=abb93(68)+abb93(74)+abb93(35)
      abb93(35)=16.0_ki*abb93(35)
      abb93(36)=-spak2k7*abb93(36)
      abb93(68)=abb93(105)*abb93(47)
      abb93(74)=-spbl6k1*abb93(43)
      abb93(79)=abb93(42)*spal5k7
      abb93(81)=spbl6l5*abb93(79)
      abb93(36)=abb93(81)+abb93(74)+abb93(36)+abb93(68)
      abb93(36)=8.0_ki*spak1k2*abb93(36)
      abb93(25)=-spak2k7*abb93(25)
      abb93(68)=spbl6k1*abb93(38)
      abb93(25)=abb93(68)+abb93(25)-abb93(49)
      abb93(25)=spak1l6*abb93(25)
      abb93(49)=spal6k7*abb93(66)
      abb93(25)=abb93(49)+abb93(25)
      abb93(25)=8.0_ki*abb93(25)
      abb93(49)=16.0_ki*abb93(38)
      abb93(46)=-abb93(46)+abb93(80)
      abb93(46)=abb93(46)*abb93(47)
      abb93(56)=-abb93(56)*abb93(69)
      abb93(33)=abb93(33)+abb93(56)
      abb93(33)=abb93(10)*spak2k7*abb93(33)
      abb93(50)=spbl6k1*spak1k2*abb93(50)
      abb93(56)=-spbl6l5*abb93(77)
      abb93(33)=abb93(56)+abb93(50)+abb93(46)+abb93(33)
      abb93(33)=8.0_ki*abb93(33)
      abb93(46)=-8.0_ki*spak1k7*abb93(66)
      abb93(50)=spak3k7*abb93(70)
      abb93(17)=abb93(17)*spbl6k2
      abb93(56)=abb93(65)*abb93(53)
      abb93(17)=abb93(17)-abb93(56)
      abb93(17)=abb93(17)*abb93(69)
      abb93(56)=-abb93(22)*abb93(72)
      abb93(17)=abb93(17)+abb93(56)
      abb93(17)=abb93(17)*abb93(102)*spak4k7
      abb93(56)=abb93(29)*abb93(67)
      abb93(65)=abb93(84)*abb93(16)
      abb93(56)=-abb93(56)+abb93(65)+abb93(96)
      abb93(56)=abb93(11)*spak4k7*abb93(56)*abb93(94)
      abb93(66)=abb93(62)*abb93(22)
      abb93(68)=abb93(66)*abb93(101)
      abb93(56)=abb93(56)-abb93(68)
      abb93(56)=abb93(56)*spak1l6
      abb93(64)=abb93(64)*abb93(67)
      abb93(20)=abb93(64)-abb93(20)
      abb93(64)=2.0_ki*abb93(87)
      abb93(20)=abb93(20)*abb93(64)
      abb93(64)=-abb93(22)*abb93(86)
      abb93(20)=abb93(20)-abb93(64)
      abb93(20)=abb93(20)*es12
      abb93(31)=abb93(31)*abb93(53)
      abb93(53)=abb93(65)*spbl6k2
      abb93(31)=abb93(31)-abb93(53)
      abb93(31)=abb93(31)*abb93(87)
      abb93(17)=abb93(56)+abb93(17)+abb93(20)-abb93(31)
      abb93(20)=spbk4k2*abb93(17)
      abb93(20)=abb93(50)+abb93(20)
      abb93(20)=8.0_ki*abb93(20)
      abb93(31)=-spak3k7*abb93(52)
      abb93(50)=spak4k7*abb93(66)*spak1l6
      abb93(50)=abb93(50)-abb93(64)
      abb93(52)=-spbk4k2*abb93(50)
      abb93(31)=abb93(31)+abb93(52)
      abb93(31)=16.0_ki*abb93(31)
      abb93(52)=-spak2k7*abb93(63)
      abb93(17)=-spbk4k3*abb93(17)
      abb93(53)=-abb93(91)*abb93(57)
      abb93(17)=abb93(17)+abb93(53)+abb93(52)
      abb93(17)=8.0_ki*abb93(17)
      abb93(50)=spbk4k3*abb93(50)
      abb93(52)=abb93(89)*abb93(26)
      abb93(53)=-spak2k7*abb93(61)
      abb93(50)=abb93(50)+abb93(52)+abb93(53)
      abb93(50)=16.0_ki*abb93(50)
      abb93(52)=-spak1l5*abb93(48)
      abb93(53)=-abb93(26)*abb93(44)
      abb93(52)=abb93(52)+abb93(53)
      abb93(52)=spbk2k1*abb93(52)
      abb93(37)=-spal6k7*abb93(37)*abb93(39)
      abb93(39)=-abb93(71)*abb93(78)
      abb93(37)=abb93(39)+abb93(37)+abb93(52)
      abb93(37)=8.0_ki*abb93(37)
      abb93(39)=16.0_ki*abb93(71)
      abb93(52)=abb93(92)*abb93(14)
      abb93(53)=abb93(82)*abb93(12)
      abb93(28)=abb93(53)*abb93(28)
      abb93(28)=abb93(52)-abb93(28)
      abb93(52)=spbl6k2*abb93(28)
      abb93(30)=abb93(30)*abb93(12)
      abb93(56)=abb93(30)*abb93(98)
      abb93(52)=abb93(56)+abb93(52)
      abb93(52)=abb93(52)*spal5l6
      abb93(56)=abb93(52)*spak4k7
      abb93(57)=abb93(30)*spbk3k2
      abb93(28)=abb93(57)+abb93(28)
      abb93(57)=abb93(28)*spbk2k1
      abb93(61)=abb93(57)*abb93(86)
      abb93(56)=abb93(56)-abb93(61)
      abb93(61)=16.0_ki*abb93(56)
      abb93(63)=abb93(42)*spal6k7
      abb93(64)=-abb93(6)*spal5k7*abb93(45)
      abb93(56)=abb93(63)-abb93(76)+abb93(64)+abb93(56)
      abb93(56)=16.0_ki*abb93(56)
      abb93(57)=-spak1l5*abb93(57)
      abb93(57)=abb93(57)+abb93(52)
      abb93(57)=spak2k4*abb93(57)
      abb93(19)=spbk3k2*abb93(19)
      abb93(19)=abb93(19)+abb93(104)
      abb93(19)=abb93(12)*abb93(19)
      abb93(53)=abb93(93)*abb93(53)
      abb93(19)=-abb93(53)+abb93(19)
      abb93(53)=-spbl6k3*spal5l6
      abb93(64)=spbk3k1*spak1l5
      abb93(53)=abb93(64)+abb93(53)
      abb93(19)=abb93(19)*abb93(53)
      abb93(53)=-spak2l5*abb93(44)
      abb93(19)=abb93(53)-abb93(45)+abb93(57)+abb93(19)
      abb93(19)=8.0_ki*abb93(19)
      abb93(44)=abb93(44)*spak2k7
      abb93(44)=abb93(44)+abb93(48)
      abb93(44)=8.0_ki*abb93(44)
      abb93(38)=-8.0_ki*abb93(38)
      abb93(14)=abb93(16)*abb93(14)
      abb93(12)=abb93(29)*abb93(12)
      abb93(12)=abb93(30)+abb93(14)-abb93(12)
      abb93(14)=spak4k7*spal5l6*abb93(12)*spbl6k2
      abb93(16)=spbk4k2*abb93(14)
      abb93(12)=abb93(12)*abb93(86)
      abb93(29)=-spbk4k2*abb93(12)
      abb93(30)=-spak3k7*spak1l5*abb93(28)
      abb93(29)=abb93(30)+abb93(29)
      abb93(29)=spbk2k1*abb93(29)
      abb93(30)=spak3k7*abb93(52)
      abb93(16)=abb93(29)+abb93(30)+abb93(16)
      abb93(16)=8.0_ki*abb93(16)
      abb93(14)=-spbk4k3*abb93(14)
      abb93(12)=spbk4k3*abb93(12)
      abb93(26)=abb93(28)*abb93(26)
      abb93(12)=abb93(26)+abb93(12)
      abb93(12)=spbk2k1*abb93(12)
      abb93(26)=-spak2k7*abb93(52)
      abb93(12)=abb93(12)+abb93(26)+abb93(14)
      abb93(12)=8.0_ki*abb93(12)
      abb93(14)=16.0_ki*abb93(42)
      abb93(26)=spal5k7*abb93(14)
      abb93(28)=-8.0_ki*abb93(71)
      abb93(23)=abb93(23)*abb93(7)
      abb93(24)=abb93(96)*abb93(24)
      abb93(29)=abb93(59)*abb93(67)
      abb93(23)=abb93(23)+abb93(24)-abb93(29)
      abb93(24)=abb93(23)*spbl6l5*spal5k7
      abb93(29)=spak2k7*abb93(54)
      abb93(30)=abb93(55)*abb93(47)
      abb93(24)=abb93(24)+abb93(29)+abb93(30)
      abb93(24)=abb93(11)*abb93(24)
      abb93(23)=-spbl6k1*abb93(23)*abb93(75)
      abb93(23)=abb93(23)+abb93(24)
      abb93(23)=8.0_ki*abb93(23)
      abb93(14)=abb93(14)*spak2k7
      abb93(24)=abb93(89)*spak2l5
      abb93(29)=abb93(99)*abb93(15)
      abb93(30)=abb93(13)*abb93(62)
      abb93(42)=abb93(30)*abb93(82)
      abb93(29)=abb93(29)-abb93(42)
      abb93(42)=abb93(24)+abb93(29)
      abb93(42)=spak4k7*abb93(42)
      abb93(45)=abb93(18)*abb93(101)
      abb93(42)=-abb93(45)+abb93(42)
      abb93(45)=16.0_ki*abb93(42)
      abb93(32)=-abb93(32)*abb93(47)
      abb93(47)=spak2k7*abb93(103)
      abb93(32)=abb93(47)+abb93(32)+abb93(42)
      abb93(32)=16.0_ki*abb93(32)
      abb93(18)=abb93(18)*es12
      abb93(18)=abb93(18)-abb93(29)
      abb93(24)=-abb93(18)+abb93(24)
      abb93(24)=spak2k4*abb93(24)
      abb93(29)=-spbk3k1*spak1k2
      abb93(42)=spbl5k3*spak2l5
      abb93(29)=abb93(42)+abb93(29)
      abb93(21)=abb93(21)*abb93(29)
      abb93(29)=-abb93(15)*abb93(97)
      abb93(13)=abb93(7)*abb93(82)*abb93(13)
      abb93(13)=abb93(13)+abb93(29)
      abb93(13)=spbl6k3*spak3k4*abb93(13)
      abb93(13)=abb93(13)+abb93(21)+abb93(24)
      abb93(13)=8.0_ki*abb93(13)
      abb93(21)=-spak3k7*abb93(18)
      abb93(15)=abb93(15)*abb93(62)
      abb93(24)=abb93(30)*abb93(3)
      abb93(15)=abb93(24)-abb93(15)
      abb93(15)=abb93(15)*spak4k7
      abb93(24)=-abb93(101)*abb93(22)*abb93(7)
      abb93(15)=abb93(15)-abb93(24)
      abb93(24)=-spbk4k2*abb93(15)
      abb93(29)=spak3k7*abb93(89)
      abb93(22)=-abb93(22)*spak4k7
      abb93(30)=-spbk4k2*abb93(22)
      abb93(29)=abb93(29)+abb93(30)
      abb93(29)=spak2l5*abb93(29)
      abb93(21)=abb93(29)+abb93(21)+abb93(24)
      abb93(21)=8.0_ki*abb93(21)
      abb93(18)=spak2k7*abb93(18)
      abb93(15)=spbk4k3*abb93(15)
      abb93(24)=-spak2k7*abb93(89)
      abb93(22)=spbk4k3*abb93(22)
      abb93(22)=abb93(24)+abb93(22)
      abb93(22)=spak2l5*abb93(22)
      abb93(15)=abb93(22)+abb93(15)+abb93(18)
      abb93(15)=8.0_ki*abb93(15)
      abb93(18)=-8.0_ki*abb93(63)
      abb93(22)=-8.0_ki*abb93(79)
      abb93(24)=8.0_ki*abb93(43)
      R2d93=0.0_ki
      rat2 = rat2 + R2d93
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='93' value='", &
          & R2d93, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd93h6