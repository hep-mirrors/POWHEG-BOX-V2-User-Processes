module     p1_dbarc_epnebbbarg_abbrevd23h0
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(111), public :: abb23
   complex(ki), public :: R2d23
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p1_dbarc_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_color, only: TR
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb23(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb23(2)=1.0_ki/(es34+es567-es12-es234)
      abb23(3)=NC**(-1)
      abb23(4)=es567**(-1)
      abb23(5)=es56**(-1)
      abb23(6)=spbl5k2**(-1)
      abb23(7)=spbl6k2**(-1)
      abb23(8)=1.0_ki/(mB**2-es67-es56+es567)
      abb23(9)=sqrt(mB**2)
      abb23(10)=1.0_ki/(-mB**2+es67)
      abb23(11)=1.0_ki/(-es71+es712-es12)
      abb23(12)=TR*gW
      abb23(12)=abb23(12)**2*i_*CVDC*abb23(2)*abb23(1)
      abb23(13)=mB*spbe7k2
      abb23(14)=abb23(12)*abb23(13)*abb23(4)
      abb23(15)=abb23(14)*c1
      abb23(16)=spak1k4*abb23(3)
      abb23(17)=abb23(16)*abb23(15)
      abb23(18)=abb23(14)*NC
      abb23(19)=abb23(18)*c1
      abb23(20)=abb23(19)*spak1k4
      abb23(17)=abb23(17)-abb23(20)
      abb23(20)=spbk4k3*spal5e7
      abb23(21)=abb23(17)*abb23(20)
      abb23(22)=abb23(15)*abb23(3)
      abb23(22)=abb23(22)-abb23(19)
      abb23(23)=spbk7k2*spak1k4
      abb23(24)=-abb23(23)*abb23(22)
      abb23(25)=spae7k7*abb23(6)
      abb23(26)=abb23(25)*spbk4k3
      abb23(27)=abb23(24)*abb23(26)
      abb23(21)=abb23(21)+abb23(27)
      abb23(27)=2.0_ki*abb23(8)
      abb23(21)=abb23(21)*abb23(27)
      abb23(28)=abb23(14)*abb23(5)
      abb23(29)=abb23(28)*abb23(3)
      abb23(30)=abb23(28)*NC
      abb23(29)=abb23(29)-abb23(30)
      abb23(31)=spak1k4*abb23(29)
      abb23(32)=abb23(31)*c3
      abb23(28)=abb23(28)*c1
      abb23(33)=abb23(16)*abb23(28)
      abb23(30)=abb23(30)*c1
      abb23(34)=abb23(30)*spak1k4
      abb23(33)=abb23(33)-abb23(34)
      abb23(32)=abb23(32)-abb23(33)
      abb23(34)=abb23(32)*abb23(20)
      abb23(35)=abb23(3)**2
      abb23(35)=abb23(35)-1.0_ki
      abb23(36)=abb23(14)*abb23(35)
      abb23(37)=abb23(36)*spak1k4
      abb23(38)=abb23(20)*abb23(37)
      abb23(39)=abb23(36)*abb23(23)
      abb23(40)=abb23(39)*abb23(26)
      abb23(38)=abb23(38)-abb23(40)
      abb23(40)=c2*abb23(8)
      abb23(41)=2.0_ki*abb23(40)
      abb23(38)=abb23(38)*abb23(41)
      abb23(42)=NC*spak1k4
      abb23(16)=abb23(42)-abb23(16)
      abb23(42)=abb23(8)*spal5e7
      abb23(43)=abb23(16)*abb23(42)
      abb23(44)=abb23(12)*c1
      abb23(45)=abb23(4)*spbe7k2
      abb23(46)=abb23(44)*abb23(45)
      abb23(47)=-abb23(46)*abb23(43)
      abb23(48)=abb23(47)*spbk4k3
      abb23(49)=abb23(35)*abb23(12)
      abb23(50)=abb23(45)*abb23(49)
      abb23(51)=abb23(42)*c2
      abb23(52)=abb23(51)*abb23(50)
      abb23(53)=spbk4k3*spak1k4
      abb23(54)=abb23(53)*abb23(52)
      abb23(48)=abb23(54)-abb23(48)
      abb23(54)=2.0_ki*abb23(9)
      abb23(48)=abb23(48)*abb23(54)
      abb23(55)=abb23(13)*abb23(5)
      abb23(56)=abb23(44)*abb23(55)
      abb23(57)=NC-abb23(3)
      abb23(58)=abb23(57)*abb23(56)
      abb23(59)=2.0_ki*abb23(11)
      abb23(60)=-abb23(59)*abb23(23)*abb23(58)
      abb23(61)=abb23(60)*abb23(26)
      abb23(21)=-abb23(34)+abb23(61)-abb23(48)+abb23(38)-abb23(21)
      abb23(34)=abb23(21)*spak4l6
      abb23(14)=abb23(14)*abb23(3)
      abb23(14)=abb23(14)-abb23(18)
      abb23(18)=c3*abb23(7)
      abb23(38)=abb23(18)*spae7k7
      abb23(48)=-abb23(38)*abb23(23)*abb23(14)
      abb23(61)=-spak1k4*abb23(14)
      abb23(62)=spal6e7*c3
      abb23(63)=abb23(61)*abb23(62)
      abb23(48)=abb23(48)-abb23(63)
      abb23(63)=2.0_ki*abb23(10)
      abb23(48)=abb23(48)*abb23(63)
      abb23(64)=-spbk4k3*abb23(48)
      abb23(65)=spbk4k3*spal6e7
      abb23(66)=abb23(32)*abb23(65)
      abb23(67)=abb23(65)*abb23(37)
      abb23(68)=spae7k7*abb23(7)
      abb23(69)=abb23(68)*spbk4k3
      abb23(70)=abb23(69)*abb23(39)
      abb23(67)=abb23(67)-abb23(70)
      abb23(70)=c2*abb23(10)
      abb23(71)=2.0_ki*abb23(70)
      abb23(67)=abb23(67)*abb23(71)
      abb23(72)=-abb23(12)*abb23(57)
      abb23(73)=abb23(10)*spal6e7
      abb23(74)=abb23(73)*c3
      abb23(45)=-abb23(74)*abb23(45)*abb23(72)
      abb23(75)=-spak1k4*abb23(45)
      abb23(76)=abb23(75)*spbk4k3
      abb23(77)=abb23(73)*c2
      abb23(50)=abb23(77)*abb23(50)
      abb23(53)=abb23(53)*abb23(50)
      abb23(53)=abb23(53)-abb23(76)
      abb23(53)=abb23(53)*abb23(54)
      abb23(76)=abb23(60)*abb23(69)
      abb23(53)=abb23(66)-abb23(76)+abb23(64)+abb23(67)-abb23(53)
      abb23(64)=abb23(53)*spak4l5
      abb23(66)=-abb23(23)*abb23(29)
      abb23(67)=abb23(66)*abb23(18)
      abb23(76)=abb23(28)*abb23(3)
      abb23(76)=abb23(76)-abb23(30)
      abb23(78)=-abb23(23)*abb23(76)
      abb23(79)=abb23(78)*abb23(7)
      abb23(67)=abb23(67)-abb23(79)
      abb23(79)=abb23(67)*spal5k7
      abb23(80)=c3*abb23(6)
      abb23(66)=abb23(66)*abb23(80)
      abb23(78)=abb23(78)*abb23(6)
      abb23(66)=abb23(66)-abb23(78)
      abb23(78)=abb23(66)*spal6k7
      abb23(78)=abb23(79)+abb23(78)
      abb23(79)=2.0_ki*spak1e7
      abb23(81)=abb23(79)*abb23(78)
      abb23(67)=abb23(67)*spal5e7
      abb23(66)=abb23(66)*spal6e7
      abb23(66)=abb23(67)+abb23(66)
      abb23(67)=abb23(66)*spak1k7
      abb23(82)=abb23(68)*spak1l5
      abb23(83)=abb23(25)*spak1l6
      abb23(82)=abb23(82)+abb23(83)
      abb23(60)=abb23(82)*abb23(60)
      abb23(60)=abb23(60)-abb23(67)+abb23(81)
      abb23(60)=spbk3k1*abb23(60)
      abb23(67)=abb23(37)*spal6e7
      abb23(39)=abb23(39)*abb23(68)
      abb23(39)=abb23(67)-abb23(39)
      abb23(39)=abb23(39)*abb23(71)
      abb23(39)=abb23(48)-abb23(39)
      abb23(39)=spbk3k1*abb23(39)
      abb23(32)=abb23(32)*spbk3k1
      abb23(48)=abb23(32)*spal6e7
      abb23(39)=-abb23(48)+abb23(39)
      abb23(39)=abb23(39)*spak1l5
      abb23(48)=abb23(17)*spal5e7
      abb23(24)=abb23(24)*abb23(25)
      abb23(24)=abb23(48)+abb23(24)
      abb23(24)=abb23(24)*abb23(27)
      abb23(48)=abb23(37)*spal5e7
      abb23(67)=abb23(36)*abb23(25)
      abb23(81)=abb23(67)*abb23(23)
      abb23(48)=abb23(48)-abb23(81)
      abb23(48)=abb23(48)*abb23(41)
      abb23(24)=-abb23(24)+abb23(48)
      abb23(24)=spbk3k1*abb23(24)
      abb23(32)=abb23(32)*spal5e7
      abb23(24)=-abb23(32)+abb23(24)
      abb23(24)=abb23(24)*spak1l6
      abb23(32)=abb23(31)*abb23(18)
      abb23(48)=abb23(33)*abb23(7)
      abb23(32)=abb23(32)-abb23(48)
      abb23(48)=spak1l5*spal5e7
      abb23(81)=spbk3k1*abb23(48)*abb23(32)
      abb23(83)=abb23(32)*abb23(20)
      abb23(84)=abb23(83)*spak4l5
      abb23(81)=abb23(81)+abb23(84)
      abb23(81)=abb23(81)*spbl5k2
      abb23(31)=abb23(31)*abb23(80)
      abb23(33)=abb23(33)*abb23(6)
      abb23(31)=abb23(31)-abb23(33)
      abb23(33)=spak1l6*spal6e7
      abb23(84)=spbk3k1*abb23(33)*abb23(31)
      abb23(85)=abb23(31)*abb23(65)
      abb23(86)=abb23(85)*spak4l6
      abb23(84)=abb23(84)+abb23(86)
      abb23(84)=abb23(84)*spbl6k2
      abb23(66)=abb23(66)*spbk4k3
      abb23(86)=abb23(66)*spak4k7
      abb23(78)=spbk4k3*abb23(78)
      abb23(87)=2.0_ki*spak4e7
      abb23(88)=abb23(78)*abb23(87)
      abb23(75)=abb23(75)*spbk3k1
      abb23(89)=spbk3k1*spak1k4
      abb23(90)=abb23(89)*abb23(50)
      abb23(75)=abb23(75)-abb23(90)
      abb23(75)=abb23(75)*spak1l5
      abb23(47)=abb23(47)*spbk3k1
      abb23(89)=abb23(89)*abb23(52)
      abb23(47)=abb23(47)-abb23(89)
      abb23(47)=abb23(47)*spak1l6
      abb23(47)=abb23(75)-abb23(47)
      abb23(47)=abb23(47)*abb23(54)
      abb23(75)=abb23(55)*abb23(49)
      abb23(89)=abb23(75)*abb23(25)
      abb23(90)=abb23(89)*spak1l6
      abb23(91)=abb23(75)*abb23(68)
      abb23(92)=abb23(91)*spak1l5
      abb23(90)=abb23(90)+abb23(92)
      abb23(92)=abb23(11)*abb23(90)*spbk3k1
      abb23(93)=abb23(75)*abb23(11)
      abb23(94)=spak4l6*abb23(93)*abb23(26)
      abb23(92)=abb23(92)+abb23(94)
      abb23(92)=abb23(23)*abb23(92)
      abb23(95)=abb23(91)*abb23(23)
      abb23(96)=spak4l5*abb23(11)
      abb23(97)=abb23(96)*spbk4k3
      abb23(98)=abb23(95)*abb23(97)
      abb23(92)=abb23(98)+abb23(92)
      abb23(98)=2.0_ki*c4
      abb23(92)=abb23(92)*abb23(98)
      abb23(24)=-abb23(47)+abb23(39)-abb23(92)+abb23(88)-abb23(64)+abb23(24)-ab&
      &b23(84)-abb23(81)-abb23(86)+abb23(34)+abb23(60)
      abb23(34)=4.0_ki*abb23(24)
      abb23(39)=-2.0_ki*abb23(24)
      abb23(47)=spbk7k2*abb23(29)
      abb23(60)=abb23(47)*abb23(18)
      abb23(64)=spbk7k2*abb23(3)
      abb23(28)=abb23(64)*abb23(28)
      abb23(30)=abb23(30)*spbk7k2
      abb23(28)=abb23(28)-abb23(30)
      abb23(30)=abb23(28)*abb23(7)
      abb23(30)=abb23(60)-abb23(30)
      abb23(60)=abb23(30)*spal5k7
      abb23(47)=abb23(47)*abb23(80)
      abb23(28)=abb23(28)*abb23(6)
      abb23(28)=abb23(47)-abb23(28)
      abb23(47)=abb23(28)*spal6k7
      abb23(47)=abb23(60)+abb23(47)
      abb23(60)=abb23(47)*abb23(79)
      abb23(15)=abb23(64)*abb23(15)
      abb23(19)=abb23(19)*spbk7k2
      abb23(15)=abb23(15)-abb23(19)
      abb23(19)=abb23(15)*abb23(25)
      abb23(81)=abb23(22)*spal5e7
      abb23(19)=abb23(19)-abb23(81)
      abb23(19)=abb23(19)*abb23(27)
      abb23(81)=abb23(29)*c3
      abb23(81)=abb23(81)-abb23(76)
      abb23(84)=abb23(81)*spal5e7
      abb23(86)=abb23(25)*spbk7k2
      abb23(86)=abb23(86)-spal5e7
      abb23(86)=abb23(86)*abb23(41)
      abb23(88)=-abb23(36)*abb23(86)
      abb23(19)=-abb23(84)+abb23(88)+abb23(19)
      abb23(84)=abb23(19)*spak1l6
      abb23(88)=abb23(81)*spal6e7
      abb23(92)=-abb23(38)*spbk7k2
      abb23(92)=abb23(92)+abb23(62)
      abb23(92)=abb23(63)*abb23(14)*abb23(92)
      abb23(99)=abb23(36)*spal6e7
      abb23(100)=abb23(68)*spbk7k2
      abb23(101)=abb23(100)*abb23(36)
      abb23(99)=abb23(99)-abb23(101)
      abb23(99)=abb23(99)*abb23(71)
      abb23(88)=abb23(88)+abb23(99)-abb23(92)
      abb23(99)=abb23(88)*spak1l5
      abb23(30)=abb23(30)*spal5e7
      abb23(28)=abb23(28)*spal6e7
      abb23(28)=abb23(30)+abb23(28)
      abb23(30)=abb23(28)*spak1k7
      abb23(102)=abb23(76)*abb23(6)
      abb23(103)=abb23(29)*abb23(80)
      abb23(102)=abb23(102)-abb23(103)
      abb23(103)=abb23(102)*spal6e7
      abb23(104)=abb23(103)*spbl6k2
      abb23(105)=abb23(104)*spak1l6
      abb23(76)=abb23(76)*abb23(7)
      abb23(29)=abb23(29)*abb23(18)
      abb23(29)=abb23(76)-abb23(29)
      abb23(76)=abb23(29)*spal5e7
      abb23(106)=abb23(76)*spbl5k2
      abb23(107)=abb23(106)*spak1l5
      abb23(108)=NC*spbk7k2
      abb23(64)=abb23(108)-abb23(64)
      abb23(108)=-abb23(56)*abb23(64)
      abb23(82)=abb23(108)*abb23(82)
      abb23(109)=abb23(82)*abb23(59)
      abb23(90)=spbk7k2*abb23(90)
      abb23(110)=abb23(59)*c4
      abb23(111)=abb23(90)*abb23(110)
      abb23(30)=abb23(111)-abb23(84)+abb23(99)-abb23(105)-abb23(107)-abb23(30)+&
      &abb23(60)-abb23(109)
      abb23(60)=abb23(57)*abb23(42)
      abb23(46)=-abb23(46)*abb23(60)
      abb23(46)=abb23(46)-abb23(52)
      abb23(52)=abb23(46)*spak1l6
      abb23(45)=abb23(45)+abb23(50)
      abb23(50)=abb23(45)*spak1l5
      abb23(50)=abb23(52)+abb23(50)
      abb23(52)=abb23(50)*abb23(54)
      abb23(52)=abb23(52)-abb23(30)
      abb23(84)=-es234-es12
      abb23(84)=abb23(52)*abb23(84)
      abb23(99)=abb23(81)*abb23(20)
      abb23(105)=abb23(22)*abb23(20)
      abb23(15)=-abb23(15)*abb23(26)
      abb23(15)=abb23(105)+abb23(15)
      abb23(15)=abb23(15)*abb23(27)
      abb23(105)=spbk7k2*abb23(26)
      abb23(105)=-abb23(20)+abb23(105)
      abb23(41)=abb23(41)*abb23(36)*abb23(105)
      abb23(105)=abb23(108)*abb23(59)
      abb23(107)=-abb23(26)*abb23(105)
      abb23(46)=abb23(46)*abb23(54)
      abb23(109)=-spbk4k3*abb23(46)
      abb23(15)=abb23(109)+abb23(107)+abb23(41)+abb23(99)+abb23(15)
      abb23(15)=spak4l6*abb23(15)
      abb23(41)=abb23(45)*abb23(54)
      abb23(45)=-abb23(41)-abb23(92)
      abb23(45)=spbk4k3*abb23(45)
      abb23(81)=abb23(81)*abb23(65)
      abb23(92)=abb23(36)*abb23(65)
      abb23(99)=-spbk4k3*abb23(101)
      abb23(92)=abb23(92)+abb23(99)
      abb23(92)=abb23(92)*abb23(71)
      abb23(69)=-abb23(69)*abb23(105)
      abb23(45)=abb23(69)+abb23(92)+abb23(81)+abb23(45)
      abb23(45)=spak4l5*abb23(45)
      abb23(69)=spbk7k2*abb23(94)
      abb23(81)=abb23(91)*spbk7k2
      abb23(92)=abb23(81)*abb23(97)
      abb23(69)=abb23(69)+abb23(92)
      abb23(69)=abb23(98)*abb23(69)
      abb23(15)=abb23(69)+abb23(45)+abb23(15)
      abb23(15)=spak1k3*abb23(15)
      abb23(26)=-abb23(75)*abb23(23)*abb23(26)*abb23(110)
      abb23(45)=-spbl6k2*abb23(85)
      abb23(21)=abb23(45)+abb23(26)+abb23(21)
      abb23(21)=spak3l6*abb23(21)
      abb23(26)=-spbl5k2*abb23(83)
      abb23(45)=-spbk4k3*abb23(110)*abb23(95)
      abb23(26)=abb23(26)+abb23(45)-abb23(53)
      abb23(26)=spak3l5*abb23(26)
      abb23(45)=abb23(47)*abb23(87)
      abb23(53)=abb23(28)*spak4k7
      abb23(45)=abb23(45)-abb23(53)
      abb23(53)=abb23(45)*spak1k3*spbk4k3
      abb23(69)=-abb23(25)*abb23(64)
      abb23(83)=spal5e7*abb23(57)
      abb23(69)=abb23(83)+abb23(69)
      abb23(27)=abb23(27)*abb23(69)*abb23(44)*abb23(13)
      abb23(69)=-abb23(55)*abb23(72)
      abb23(83)=abb23(69)*c3
      abb23(83)=abb23(83)-abb23(58)
      abb23(85)=spal5e7*abb23(83)
      abb23(87)=-abb23(13)*abb23(49)
      abb23(86)=abb23(87)*abb23(86)
      abb23(27)=abb23(86)+abb23(85)+abb23(27)
      abb23(27)=spak1l6*abb23(27)
      abb23(83)=spal6e7*abb23(83)
      abb23(62)=abb23(62)*abb23(72)
      abb23(85)=-spbk7k2*abb23(72)
      abb23(86)=abb23(38)*abb23(85)
      abb23(62)=abb23(62)+abb23(86)
      abb23(13)=abb23(63)*abb23(13)*abb23(62)
      abb23(62)=spal6e7-abb23(100)
      abb23(62)=abb23(71)*abb23(87)*abb23(62)
      abb23(13)=abb23(62)+abb23(83)+abb23(13)
      abb23(13)=spak1l5*abb23(13)
      abb23(62)=2.0_ki*spak3e7
      abb23(63)=abb23(78)*abb23(62)
      abb23(66)=-spak3k7*abb23(66)
      abb23(71)=-abb23(44)*spbe7k2*abb23(60)
      abb23(78)=abb23(49)*spbe7k2
      abb23(83)=-abb23(78)*abb23(51)
      abb23(71)=abb23(71)+abb23(83)
      abb23(71)=spak1l6*abb23(71)
      abb23(83)=-abb23(74)*spbe7k2*abb23(72)
      abb23(78)=abb23(78)*abb23(77)
      abb23(78)=abb23(83)+abb23(78)
      abb23(78)=spak1l5*abb23(78)
      abb23(71)=abb23(71)+abb23(78)
      abb23(71)=abb23(71)*abb23(54)
      abb23(78)=abb23(108)*abb23(6)
      abb23(55)=-abb23(55)*abb23(85)
      abb23(83)=abb23(55)*abb23(80)
      abb23(78)=abb23(78)-abb23(83)
      abb23(83)=spal6k7*abb23(78)
      abb23(86)=abb23(108)*abb23(7)
      abb23(55)=abb23(55)*abb23(18)
      abb23(55)=abb23(86)-abb23(55)
      abb23(86)=spal5k7*abb23(55)
      abb23(83)=abb23(83)+abb23(86)
      abb23(79)=abb23(83)*abb23(79)
      abb23(78)=-spal6e7*abb23(78)
      abb23(55)=-spal5e7*abb23(55)
      abb23(55)=abb23(78)+abb23(55)
      abb23(55)=spak1k7*abb23(55)
      abb23(65)=-spak1k3*abb23(102)*abb23(65)*spak4l6
      abb23(78)=-abb23(6)*abb23(58)
      abb23(83)=abb23(69)*abb23(80)
      abb23(78)=abb23(78)+abb23(83)
      abb23(33)=abb23(78)*abb23(33)
      abb23(33)=abb23(33)+abb23(65)
      abb23(33)=spbl6k2*abb23(33)
      abb23(20)=-spak1k3*abb23(29)*abb23(20)*spak4l5
      abb23(29)=-abb23(7)*abb23(58)
      abb23(65)=abb23(69)*abb23(18)
      abb23(29)=abb23(29)+abb23(65)
      abb23(29)=abb23(29)*abb23(48)
      abb23(20)=abb23(29)+abb23(20)
      abb23(20)=spbl5k2*abb23(20)
      abb23(29)=abb23(11)*abb23(82)
      abb23(48)=c4*abb23(11)
      abb23(65)=-abb23(90)*abb23(48)
      abb23(29)=abb23(29)+abb23(65)
      abb23(29)=es567*abb23(29)
      abb23(13)=2.0_ki*abb23(29)+abb23(66)+abb23(63)+abb23(26)+abb23(21)+abb23(&
      &20)+abb23(33)+abb23(55)+abb23(79)+abb23(71)+abb23(27)+abb23(13)+abb23(84&
      &)+abb23(15)+abb23(53)
      abb23(13)=2.0_ki*abb23(13)
      abb23(15)=abb23(5)*mB
      abb23(20)=abb23(4)*abb23(15)
      abb23(21)=abb23(20)*abb23(23)
      abb23(26)=-abb23(21)*abb23(72)
      abb23(27)=abb23(26)*abb23(80)
      abb23(21)=-abb23(21)*abb23(57)*abb23(44)
      abb23(29)=abb23(21)*abb23(6)
      abb23(27)=abb23(27)+abb23(29)
      abb23(12)=abb23(12)*abb23(15)
      abb23(15)=abb23(48)*abb23(12)*abb23(35)
      abb23(29)=abb23(15)*abb23(6)
      abb23(33)=-abb23(23)*abb23(29)
      abb23(12)=abb23(12)*c1
      abb23(35)=abb23(57)*abb23(12)
      abb23(53)=abb23(23)*abb23(35)
      abb23(55)=abb23(11)*abb23(6)
      abb23(57)=-abb23(53)*abb23(55)
      abb23(33)=abb23(33)+abb23(57)+abb23(27)
      abb23(33)=spal6k7*abb23(33)
      abb23(26)=abb23(26)*abb23(18)
      abb23(21)=abb23(21)*abb23(7)
      abb23(21)=abb23(26)+abb23(21)
      abb23(26)=abb23(15)*abb23(7)
      abb23(23)=-abb23(23)*abb23(26)
      abb23(57)=abb23(11)*abb23(7)
      abb23(53)=-abb23(53)*abb23(57)
      abb23(23)=abb23(23)+abb23(53)+abb23(21)
      abb23(23)=spal5k7*abb23(23)
      abb23(23)=abb23(33)+abb23(23)
      abb23(23)=spbk4k2*abb23(23)
      abb23(33)=-abb23(64)*abb23(20)*abb23(44)
      abb23(53)=abb23(33)*abb23(6)
      abb23(20)=-abb23(20)*abb23(85)
      abb23(63)=abb23(20)*abb23(80)
      abb23(53)=abb23(53)-abb23(63)
      abb23(63)=abb23(64)*abb23(12)
      abb23(64)=-abb23(63)*abb23(55)
      abb23(64)=abb23(64)+abb23(53)
      abb23(64)=spak1k3*abb23(64)
      abb23(15)=abb23(15)*spak1k3
      abb23(65)=abb23(15)*spbk7k2
      abb23(66)=-abb23(6)*abb23(65)
      abb23(64)=abb23(64)+abb23(66)
      abb23(64)=spal6k7*abb23(64)
      abb23(33)=abb23(33)*abb23(7)
      abb23(20)=abb23(20)*abb23(18)
      abb23(20)=abb23(33)-abb23(20)
      abb23(33)=-abb23(63)*abb23(57)
      abb23(33)=abb23(33)+abb23(20)
      abb23(33)=spak1k3*abb23(33)
      abb23(63)=-abb23(7)*abb23(65)
      abb23(33)=abb23(33)+abb23(63)
      abb23(33)=spal5k7*abb23(33)
      abb23(33)=abb23(64)+abb23(33)
      abb23(33)=spbk3k2*abb23(33)
      abb23(23)=abb23(23)+abb23(33)
      abb23(23)=16.0_ki*abb23(23)
      abb23(32)=abb23(32)*spal5e7
      abb23(31)=abb23(31)*spal6e7
      abb23(31)=abb23(32)+abb23(31)
      abb23(32)=-abb23(56)*abb23(16)
      abb23(33)=spal6e7*abb23(6)
      abb23(56)=spal5e7*abb23(7)
      abb23(33)=abb23(33)+abb23(56)
      abb23(56)=abb23(33)*abb23(32)
      abb23(63)=-abb23(56)*abb23(59)
      abb23(64)=abb23(75)*abb23(33)
      abb23(65)=abb23(64)*spak1k4
      abb23(66)=abb23(65)*abb23(110)
      abb23(63)=abb23(66)+abb23(63)+abb23(31)
      abb23(63)=spbk4k2*abb23(63)
      abb23(66)=abb23(103)+abb23(76)
      abb23(33)=-abb23(33)*abb23(58)
      abb23(59)=-abb23(33)*abb23(59)
      abb23(69)=abb23(64)*abb23(110)
      abb23(59)=abb23(69)+abb23(59)-abb23(66)
      abb23(69)=spbk3k2*spak1k3
      abb23(59)=abb23(59)*abb23(69)
      abb23(59)=abb23(63)+abb23(59)
      abb23(59)=8.0_ki*abb23(59)
      abb23(63)=abb23(31)*spbk4k2
      abb23(71)=abb23(66)*abb23(69)
      abb23(63)=abb23(63)-abb23(71)
      abb23(63)=8.0_ki*abb23(63)
      abb23(71)=8.0_ki*abb23(52)
      abb23(56)=abb23(11)*abb23(56)
      abb23(65)=-abb23(65)*abb23(48)
      abb23(56)=abb23(56)+abb23(65)
      abb23(56)=spbk4k2*abb23(56)
      abb23(65)=spak1k3*abb23(11)
      abb23(33)=abb23(33)*abb23(65)
      abb23(75)=abb23(48)*spak1k3
      abb23(64)=-abb23(64)*abb23(75)
      abb23(33)=abb23(33)+abb23(64)
      abb23(33)=spbk3k2*abb23(33)
      abb23(33)=abb23(56)+abb23(33)
      abb23(33)=16.0_ki*abb23(33)
      abb23(52)=4.0_ki*abb23(52)
      abb23(49)=-abb23(4)*abb23(49)
      abb23(56)=abb23(49)*abb23(51)
      abb23(64)=abb23(56)*spak1k4
      abb23(44)=abb23(44)*abb23(4)
      abb23(43)=abb23(44)*abb23(43)
      abb23(43)=abb23(64)-abb23(43)
      abb23(64)=spbk4k2*abb23(43)
      abb23(44)=abb23(44)*abb23(60)
      abb23(44)=abb23(44)-abb23(56)
      abb23(56)=-abb23(44)*abb23(69)
      abb23(56)=abb23(64)+abb23(56)
      abb23(60)=8.0_ki*abb23(9)
      abb23(56)=abb23(56)*abb23(60)
      abb23(64)=-abb23(74)*abb23(4)*abb23(72)
      abb23(49)=abb23(49)*abb23(77)
      abb23(49)=abb23(64)-abb23(49)
      abb23(64)=-spak1k4*abb23(49)
      abb23(72)=-spbk4k2*abb23(64)
      abb23(74)=abb23(49)*abb23(69)
      abb23(72)=abb23(72)+abb23(74)
      abb23(60)=abb23(72)*abb23(60)
      abb23(12)=abb23(16)*abb23(12)
      abb23(16)=abb23(12)*abb23(55)
      abb23(29)=spak1k4*abb23(29)
      abb23(16)=abb23(16)+abb23(29)
      abb23(16)=spal6k7*abb23(16)
      abb23(12)=abb23(12)*abb23(57)
      abb23(26)=spak1k4*abb23(26)
      abb23(12)=abb23(12)+abb23(26)
      abb23(12)=spal5k7*abb23(12)
      abb23(12)=abb23(16)+abb23(12)
      abb23(12)=spbk4k2*abb23(12)
      abb23(16)=-abb23(65)*abb23(35)
      abb23(15)=abb23(16)-abb23(15)
      abb23(16)=-spal6k7*abb23(6)
      abb23(26)=-spal5k7*abb23(7)
      abb23(16)=abb23(16)+abb23(26)
      abb23(15)=spbk3k2*abb23(15)*abb23(16)
      abb23(12)=abb23(12)+abb23(15)
      abb23(12)=spbk7e7*abb23(12)
      abb23(15)=spal6k7*abb23(27)
      abb23(16)=spal5k7*abb23(21)
      abb23(15)=abb23(15)+abb23(16)
      abb23(15)=spbe7k4*abb23(15)
      abb23(16)=spal6k7*abb23(53)
      abb23(20)=spal5k7*abb23(20)
      abb23(16)=abb23(16)+abb23(20)
      abb23(20)=spbe7k3*spak1k3
      abb23(16)=abb23(16)*abb23(20)
      abb23(21)=abb23(32)*abb23(55)
      abb23(26)=abb23(93)*c4
      abb23(27)=abb23(26)*spak1k4
      abb23(29)=-abb23(6)*abb23(27)
      abb23(21)=abb23(21)+abb23(29)
      abb23(21)=spbk4k2*abb23(21)
      abb23(29)=-abb23(65)*abb23(58)
      abb23(26)=abb23(26)*spak1k3
      abb23(26)=abb23(29)-abb23(26)
      abb23(26)=abb23(26)*spbk3k2
      abb23(29)=abb23(6)*abb23(26)
      abb23(21)=abb23(21)+abb23(29)
      abb23(21)=spak2l6*abb23(21)
      abb23(29)=abb23(32)*abb23(57)
      abb23(27)=-abb23(7)*abb23(27)
      abb23(27)=abb23(29)+abb23(27)
      abb23(27)=spbk4k2*abb23(27)
      abb23(26)=abb23(7)*abb23(26)
      abb23(26)=abb23(27)+abb23(26)
      abb23(26)=spak2l5*abb23(26)
      abb23(12)=abb23(26)+abb23(21)+abb23(16)+abb23(12)+abb23(15)
      abb23(12)=8.0_ki*abb23(12)
      abb23(15)=spbk7k4*abb23(31)
      abb23(16)=abb23(66)*spak1k3
      abb23(21)=-spbk7k3*abb23(16)
      abb23(15)=abb23(15)+abb23(21)
      abb23(15)=4.0_ki*abb23(15)
      abb23(21)=abb23(25)*abb23(8)
      abb23(26)=abb23(21)*abb23(17)
      abb23(27)=abb23(37)*abb23(40)
      abb23(29)=-abb23(25)*abb23(27)
      abb23(29)=abb23(26)+abb23(29)
      abb23(29)=spbk4k2*abb23(29)
      abb23(21)=abb23(21)*abb23(22)
      abb23(35)=abb23(67)*abb23(40)
      abb23(21)=abb23(35)-abb23(21)
      abb23(35)=-abb23(21)*abb23(69)
      abb23(29)=abb23(29)+abb23(35)
      abb23(29)=8.0_ki*abb23(29)
      abb23(35)=abb23(42)*abb23(6)
      abb23(17)=abb23(35)*abb23(17)
      abb23(40)=abb23(51)*abb23(6)
      abb23(42)=abb23(40)*abb23(37)
      abb23(17)=abb23(42)-abb23(17)
      abb23(42)=spbk4k2*abb23(17)
      abb23(22)=abb23(35)*abb23(22)
      abb23(35)=abb23(40)*abb23(36)
      abb23(22)=abb23(35)-abb23(22)
      abb23(35)=abb23(22)*abb23(69)
      abb23(35)=abb23(42)+abb23(35)
      abb23(35)=8.0_ki*abb23(35)
      abb23(40)=spbe7k4*abb23(43)
      abb23(42)=-abb23(44)*abb23(20)
      abb23(40)=abb23(42)+abb23(40)
      abb23(40)=abb23(9)*abb23(40)
      abb23(32)=abb23(32)*abb23(11)
      abb23(27)=abb23(32)-abb23(27)
      abb23(27)=abb23(25)*abb23(27)
      abb23(42)=abb23(48)*spak1k4
      abb23(43)=-abb23(89)*abb23(42)
      abb23(26)=abb23(43)+abb23(26)+abb23(27)
      abb23(26)=spbk7k4*abb23(26)
      abb23(27)=-abb23(58)*abb23(11)
      abb23(43)=abb23(25)*abb23(27)
      abb23(21)=abb23(43)-abb23(21)
      abb23(21)=spak1k3*abb23(21)
      abb23(43)=-abb23(89)*abb23(75)
      abb23(21)=abb23(21)+abb23(43)
      abb23(21)=spbk7k3*abb23(21)
      abb23(17)=spbl5k4*abb23(17)
      abb23(17)=abb23(17)+abb23(26)+abb23(21)+abb23(40)
      abb23(21)=-spbl6k4*abb23(31)
      abb23(26)=spbl6k3*abb23(16)
      abb23(40)=2.0_ki*spak1k3
      abb23(22)=spbl5k3*abb23(22)*abb23(40)
      abb23(17)=abb23(22)+abb23(26)+abb23(21)+2.0_ki*abb23(17)
      abb23(17)=4.0_ki*abb23(17)
      abb23(21)=abb23(38)*abb23(10)
      abb23(22)=abb23(21)*abb23(61)
      abb23(26)=abb23(70)*abb23(68)
      abb23(38)=abb23(26)*abb23(37)
      abb23(22)=abb23(22)+abb23(38)
      abb23(38)=spbk4k2*abb23(22)
      abb23(26)=abb23(26)*abb23(36)
      abb23(21)=abb23(14)*abb23(21)
      abb23(21)=abb23(26)-abb23(21)
      abb23(26)=abb23(21)*abb23(69)
      abb23(26)=abb23(38)+abb23(26)
      abb23(26)=8.0_ki*abb23(26)
      abb23(18)=abb23(73)*abb23(18)
      abb23(38)=abb23(18)*abb23(61)
      abb23(43)=abb23(77)*abb23(7)
      abb23(37)=abb23(43)*abb23(37)
      abb23(37)=abb23(37)+abb23(38)
      abb23(38)=-spbk4k2*abb23(37)
      abb23(14)=abb23(14)*abb23(18)
      abb23(18)=abb23(43)*abb23(36)
      abb23(14)=abb23(18)-abb23(14)
      abb23(18)=-abb23(14)*abb23(69)
      abb23(18)=abb23(38)+abb23(18)
      abb23(18)=8.0_ki*abb23(18)
      abb23(36)=-spbe7k4*abb23(64)
      abb23(20)=abb23(49)*abb23(20)
      abb23(20)=abb23(20)+abb23(36)
      abb23(20)=abb23(9)*abb23(20)
      abb23(32)=abb23(68)*abb23(32)
      abb23(36)=-abb23(91)*abb23(42)
      abb23(22)=abb23(36)+abb23(32)+abb23(22)
      abb23(22)=spbk7k4*abb23(22)
      abb23(27)=abb23(68)*abb23(27)
      abb23(21)=abb23(27)+abb23(21)
      abb23(21)=spak1k3*abb23(21)
      abb23(27)=-abb23(91)*abb23(75)
      abb23(21)=abb23(21)+abb23(27)
      abb23(21)=spbk7k3*abb23(21)
      abb23(27)=-spbl6k4*abb23(37)
      abb23(20)=abb23(27)+abb23(22)+abb23(21)+abb23(20)
      abb23(21)=-spbl5k4*abb23(31)
      abb23(16)=spbl5k3*abb23(16)
      abb23(14)=-spbl6k3*abb23(14)*abb23(40)
      abb23(14)=abb23(16)+abb23(14)+2.0_ki*abb23(20)+abb23(21)
      abb23(14)=4.0_ki*abb23(14)
      abb23(16)=abb23(105)*abb23(68)
      abb23(16)=abb23(106)-abb23(88)+abb23(16)+abb23(41)
      abb23(20)=abb23(16)*spak4l5
      abb23(21)=abb23(105)*abb23(25)
      abb23(19)=abb23(104)+abb23(19)+abb23(21)+abb23(46)
      abb23(21)=abb23(19)*spak4l6
      abb23(22)=abb23(96)*abb23(81)
      abb23(25)=abb23(89)*spbk7k2
      abb23(27)=abb23(11)*abb23(25)*spak4l6
      abb23(22)=abb23(22)+abb23(27)
      abb23(22)=abb23(22)*abb23(98)
      abb23(20)=abb23(22)-abb23(20)-abb23(21)+abb23(45)
      abb23(21)=-2.0_ki*abb23(20)
      abb23(22)=spbk3k1*abb23(30)
      abb23(27)=-abb23(54)*spbk3k1*abb23(50)
      abb23(22)=abb23(27)+abb23(22)
      abb23(22)=spak3k4*abb23(22)
      abb23(20)=es34*abb23(20)
      abb23(20)=abb23(22)+abb23(20)
      abb23(20)=2.0_ki*abb23(20)
      abb23(22)=-abb23(110)*abb23(25)
      abb23(19)=abb23(22)+abb23(19)
      abb23(19)=spak3l6*abb23(19)
      abb23(22)=-abb23(110)*abb23(81)
      abb23(16)=abb23(22)+abb23(16)
      abb23(16)=spak3l5*abb23(16)
      abb23(22)=-abb23(47)*abb23(62)
      abb23(25)=spak3k7*abb23(28)
      abb23(16)=abb23(25)+abb23(22)+abb23(19)+abb23(16)
      abb23(16)=2.0_ki*abb23(16)
      R2d23=abb23(24)
      rat2 = rat2 + R2d23
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='23' value='", &
          & R2d23, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd23h0
