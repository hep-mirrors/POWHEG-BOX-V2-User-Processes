module     p1_dbarc_epnebbbarg_abbrevd71h2
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(110), public :: abb71
   complex(ki), public :: R2d71
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
      abb71(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb71(2)=es56**(-1)
      abb71(3)=spbl5k2**(-1)
      abb71(4)=spak2l6**(-1)
      abb71(5)=spak2l5**(-1)
      abb71(6)=spbl6k2**(-1)
      abb71(7)=mB**2
      abb71(8)=abb71(7)*abb71(4)
      abb71(9)=abb71(8)*abb71(3)
      abb71(10)=TR*gW
      abb71(10)=abb71(10)**2*i_*c2*CVDC*abb71(2)
      abb71(11)=abb71(10)*abb71(1)
      abb71(12)=spak1k2*abb71(11)
      abb71(13)=abb71(9)*abb71(12)
      abb71(14)=spbk7k2*spak4k7
      abb71(15)=abb71(14)*abb71(13)
      abb71(16)=spak1l5*abb71(1)
      abb71(17)=abb71(16)*abb71(10)
      abb71(18)=spak4k7*abb71(17)
      abb71(19)=abb71(18)*spbk7l6
      abb71(20)=abb71(15)-abb71(19)
      abb71(21)=abb71(12)*spbk3k2
      abb71(22)=abb71(21)*abb71(9)
      abb71(23)=abb71(22)*spak3k4
      abb71(24)=abb71(20)-abb71(23)
      abb71(25)=spbk7k3*spae7k7
      abb71(26)=abb71(25)*spbe7k2
      abb71(24)=abb71(24)*abb71(26)
      abb71(27)=spbe7k2*abb71(17)
      abb71(28)=spbl6k3*spak3k4
      abb71(29)=abb71(25)*abb71(27)*abb71(28)
      abb71(24)=abb71(24)-abb71(29)
      abb71(29)=8.0_ki*abb71(24)
      abb71(30)=abb71(19)*spbk3k2
      abb71(31)=abb71(18)*spbl6k3
      abb71(32)=abb71(31)*spbk7k2
      abb71(33)=spak3k4*spbk3k2**2
      abb71(34)=abb71(13)*abb71(33)
      abb71(35)=abb71(28)*abb71(16)
      abb71(36)=abb71(10)*spbk3k2
      abb71(37)=abb71(35)*abb71(36)
      abb71(30)=abb71(30)+abb71(32)+abb71(34)+abb71(37)
      abb71(32)=16.0_ki*abb71(30)
      abb71(34)=spak4e7*spbe7k2
      abb71(37)=abb71(34)*abb71(22)
      abb71(38)=spbl6k3*spak4e7
      abb71(39)=abb71(38)*abb71(27)
      abb71(37)=abb71(37)+abb71(39)
      abb71(39)=16.0_ki*abb71(37)
      abb71(40)=abb71(28)*abb71(17)
      abb71(41)=abb71(40)+abb71(19)
      abb71(41)=spbe7k3*abb71(41)
      abb71(42)=-spbk7e7*abb71(31)
      abb71(41)=abb71(42)+abb71(41)
      abb71(42)=2.0_ki*spbl5k2
      abb71(41)=abb71(42)*abb71(41)
      abb71(42)=abb71(21)*spak3k4
      abb71(43)=spbk7k2*abb71(12)*spak4k7
      abb71(44)=abb71(42)-abb71(43)
      abb71(45)=3.0_ki*abb71(8)
      abb71(46)=abb71(45)+spbl6k2
      abb71(47)=spbe7k3*abb71(46)*abb71(44)
      abb71(48)=spbk7e7*abb71(21)*spak4k7
      abb71(49)=-abb71(46)*abb71(48)
      abb71(41)=abb71(41)+abb71(49)+abb71(47)
      abb71(41)=spal5e7*abb71(41)
      abb71(7)=abb71(7)*abb71(3)
      abb71(47)=abb71(43)*abb71(7)
      abb71(49)=abb71(42)*abb71(7)
      abb71(47)=abb71(47)-abb71(49)
      abb71(50)=spbe7k3*spbl6k2
      abb71(51)=-spal5e7*abb71(50)*abb71(47)
      abb71(52)=spal5e7*spbl6k2
      abb71(48)=-abb71(7)*abb71(52)*abb71(48)
      abb71(48)=abb71(51)+abb71(48)
      abb71(48)=abb71(5)*abb71(48)
      abb71(51)=abb71(22)*spak4k7
      abb71(53)=abb71(51)+abb71(31)
      abb71(53)=abb71(53)*spbk7e7
      abb71(54)=abb71(40)+abb71(23)
      abb71(55)=spbe7k3*abb71(54)
      abb71(55)=-abb71(53)+abb71(55)
      abb71(55)=spbl6k2*abb71(55)
      abb71(50)=-abb71(50)*abb71(20)
      abb71(50)=abb71(50)+abb71(55)
      abb71(55)=2.0_ki*spal6e7
      abb71(50)=abb71(50)*abb71(55)
      abb71(56)=-spbe7k3*spak3k4*abb71(17)
      abb71(57)=spbk7e7*abb71(18)
      abb71(56)=abb71(56)+abb71(57)
      abb71(56)=spbl5k3*abb71(56)
      abb71(57)=abb71(18)*spbk7l5
      abb71(58)=-spbe7k3*abb71(57)
      abb71(56)=abb71(58)+abb71(56)
      abb71(56)=abb71(52)*abb71(56)
      abb71(58)=abb71(11)*spbl6k2
      abb71(59)=abb71(58)*spal5e7
      abb71(60)=spak1k7*spbk7k3
      abb71(61)=-abb71(60)*abb71(59)
      abb71(62)=abb71(11)*spak1k4
      abb71(63)=abb71(62)*spbk4k3
      abb71(64)=-abb71(52)*abb71(63)
      abb71(61)=abb71(64)+abb71(61)
      abb71(64)=spbk7e7*spak4k7
      abb71(61)=abb71(64)*abb71(61)
      abb71(65)=spak3k4*spbk3k2
      abb71(66)=abb71(65)-abb71(14)
      abb71(67)=abb71(58)*spbe7k3
      abb71(66)=abb71(67)*abb71(66)
      abb71(68)=-spbk3k2*abb71(58)*abb71(64)
      abb71(66)=abb71(68)+abb71(66)
      abb71(68)=2.0_ki*spak1e7
      abb71(66)=spak2l5*abb71(66)*abb71(68)
      abb71(69)=spbk7l6*spak4k7
      abb71(70)=abb71(69)+abb71(28)
      abb71(71)=-spbe7k3*abb71(70)
      abb71(64)=spbl6k3*abb71(64)
      abb71(64)=abb71(64)+abb71(71)
      abb71(64)=spak1l6*abb71(59)*abb71(64)
      abb71(24)=abb71(50)+abb71(64)+abb71(48)+abb71(66)+abb71(61)-abb71(24)+abb&
      &71(56)+abb71(41)
      abb71(24)=2.0_ki*abb71(24)
      abb71(30)=4.0_ki*abb71(30)
      abb71(41)=abb71(62)*spbe7k3
      abb71(48)=abb71(41)*abb71(52)
      abb71(50)=abb71(48)+abb71(37)
      abb71(56)=-4.0_ki*abb71(50)
      abb71(37)=8.0_ki*abb71(37)
      abb71(48)=4.0_ki*abb71(48)
      abb71(61)=abb71(11)*spbe7k3
      abb71(64)=-spak3k4*abb71(61)
      abb71(66)=abb71(11)*spak4k7
      abb71(71)=spbk7e7*abb71(66)
      abb71(64)=abb71(71)+abb71(64)
      abb71(71)=abb71(9)*spbk3k2
      abb71(64)=abb71(71)*abb71(64)
      abb71(72)=abb71(66)*spbk7k2
      abb71(73)=abb71(72)*abb71(9)
      abb71(74)=spbe7k3*abb71(73)
      abb71(64)=abb71(74)+abb71(64)
      abb71(74)=8.0_ki*spak1e7
      abb71(64)=abb71(64)*abb71(74)
      abb71(50)=-2.0_ki*abb71(50)
      abb71(75)=spbk7e7*spbk7k3
      abb71(76)=spak4k7*abb71(75)*abb71(58)
      abb71(67)=spbk7k3*abb71(67)*spak3k4
      abb71(67)=abb71(76)+abb71(67)
      abb71(67)=abb71(67)*spak2l5
      abb71(76)=4.0_ki*spak1k7
      abb71(77)=abb71(76)*abb71(67)
      abb71(78)=8.0_ki*abb71(41)
      abb71(79)=spak2l5*spbl6k2
      abb71(80)=abb71(79)*abb71(78)
      abb71(75)=abb71(75)*abb71(66)
      abb71(81)=spak3k4*abb71(61)*spbk7k3
      abb71(75)=abb71(81)+abb71(75)
      abb71(81)=abb71(9)*abb71(75)
      abb71(82)=-8.0_ki*spak1k7*abb71(81)
      abb71(83)=16.0_ki*abb71(9)
      abb71(84)=-abb71(41)*abb71(83)
      abb71(85)=abb71(54)-abb71(20)
      abb71(85)=spbe7k3*abb71(85)
      abb71(86)=abb71(41)*abb71(79)
      abb71(53)=2.0_ki*abb71(86)-abb71(53)+abb71(85)
      abb71(53)=2.0_ki*abb71(53)
      abb71(85)=-abb71(9)*abb71(78)
      abb71(86)=4.0_ki*spak1e7
      abb71(67)=-abb71(86)*abb71(67)
      abb71(87)=abb71(62)*spbk7k3
      abb71(88)=16.0_ki*abb71(87)
      abb71(79)=-abb71(79)*abb71(88)
      abb71(81)=abb71(81)*abb71(74)
      abb71(87)=32.0_ki*abb71(9)*abb71(87)
      abb71(89)=abb71(25)*spbe7l6
      abb71(90)=-abb71(89)*abb71(20)
      abb71(10)=abb71(10)*abb71(25)
      abb71(35)=abb71(10)*abb71(35)
      abb71(91)=abb71(25)*spak3k4
      abb71(92)=abb71(91)*abb71(22)
      abb71(35)=abb71(92)+abb71(35)
      abb71(92)=spbe7l6*abb71(35)
      abb71(90)=abb71(92)+abb71(90)
      abb71(90)=4.0_ki*abb71(90)
      abb71(54)=-abb71(54)+abb71(15)
      abb71(54)=spbl6k3*abb71(54)
      abb71(92)=abb71(22)*abb71(69)
      abb71(54)=abb71(92)+abb71(54)
      abb71(54)=8.0_ki*abb71(54)
      abb71(22)=abb71(22)*spak4e7
      abb71(92)=abb71(38)*abb71(17)
      abb71(22)=abb71(22)+abb71(92)
      abb71(92)=abb71(22)*spbe7l6
      abb71(93)=-8.0_ki*abb71(92)
      abb71(92)=-4.0_ki*abb71(92)
      abb71(94)=abb71(12)*spbe7k2
      abb71(95)=abb71(25)*abb71(14)*abb71(94)
      abb71(96)=abb71(7)*abb71(95)
      abb71(49)=-abb71(26)*abb71(49)
      abb71(49)=abb71(49)+abb71(96)
      abb71(49)=abb71(5)*abb71(49)
      abb71(96)=abb71(11)*spbe7k2
      abb71(97)=abb71(96)*abb71(25)
      abb71(70)=spak1l6*abb71(97)*abb71(70)
      abb71(98)=-abb71(26)*abb71(42)
      abb71(98)=abb71(98)+abb71(95)
      abb71(8)=abb71(8)*abb71(6)
      abb71(98)=abb71(98)*abb71(8)
      abb71(42)=abb71(57)-abb71(42)
      abb71(99)=abb71(26)*abb71(42)
      abb71(100)=abb71(27)*spbl5k3
      abb71(101)=abb71(91)*abb71(100)
      abb71(49)=abb71(101)+abb71(98)+abb71(70)+abb71(49)+abb71(95)+abb71(99)
      abb71(49)=2.0_ki*abb71(49)
      abb71(70)=abb71(11)*spbl6k3
      abb71(95)=abb71(65)*abb71(70)
      abb71(98)=spbl6k3*abb71(72)
      abb71(99)=abb71(66)*spbk7l6
      abb71(101)=spbk3k2*abb71(99)
      abb71(95)=abb71(101)+abb71(95)+abb71(98)
      abb71(95)=spak1l6*abb71(95)
      abb71(16)=abb71(16)*spak3k4
      abb71(36)=abb71(36)*abb71(16)
      abb71(18)=spbk7k2*abb71(18)
      abb71(18)=abb71(36)+abb71(18)
      abb71(18)=spbl5k3*abb71(18)
      abb71(36)=abb71(8)+1.0_ki
      abb71(98)=abb71(7)*abb71(5)
      abb71(101)=abb71(98)+abb71(36)
      abb71(102)=abb71(101)*abb71(12)
      abb71(33)=-abb71(102)*abb71(33)
      abb71(103)=-abb71(60)*abb71(72)
      abb71(57)=spbk3k2*abb71(57)
      abb71(104)=-abb71(14)*abb71(63)
      abb71(18)=abb71(104)+abb71(57)+abb71(18)+abb71(95)+abb71(103)+abb71(33)
      abb71(18)=4.0_ki*abb71(18)
      abb71(33)=abb71(26)*abb71(62)
      abb71(57)=abb71(63)*abb71(34)
      abb71(95)=abb71(101)*abb71(21)*spak4e7
      abb71(103)=spbe7k2*abb71(95)
      abb71(100)=abb71(100)*spak4e7
      abb71(104)=abb71(96)*spak1l6
      abb71(38)=abb71(104)*abb71(38)
      abb71(105)=abb71(96)*spak4e7
      abb71(106)=abb71(105)*abb71(60)
      abb71(33)=abb71(103)-abb71(100)-abb71(38)+abb71(106)+abb71(33)+abb71(57)
      abb71(38)=4.0_ki*abb71(33)
      abb71(57)=8.0_ki*abb71(62)
      abb71(100)=abb71(57)*spbk3k2
      abb71(103)=4.0_ki*abb71(62)
      abb71(106)=abb71(103)*abb71(26)
      abb71(107)=abb71(61)*abb71(65)
      abb71(108)=abb71(72)*spbe7k3
      abb71(109)=abb71(66)*spbk3k2
      abb71(110)=-spbk7e7*abb71(109)
      abb71(107)=abb71(110)+abb71(107)-abb71(108)
      abb71(107)=abb71(107)*abb71(68)
      abb71(33)=abb71(107)+abb71(33)
      abb71(33)=2.0_ki*abb71(33)
      abb71(107)=spbk3k2*abb71(103)
      abb71(76)=abb71(75)*abb71(76)
      abb71(41)=4.0_ki*abb71(41)
      abb71(75)=-abb71(75)*abb71(86)
      abb71(108)=-abb71(5)*abb71(47)
      abb71(28)=-abb71(11)*abb71(28)
      abb71(28)=abb71(28)-abb71(99)
      abb71(28)=spak1l6*abb71(28)
      abb71(8)=abb71(44)*abb71(8)
      abb71(8)=abb71(8)+abb71(28)+abb71(108)-abb71(43)-abb71(42)
      abb71(8)=abb71(89)*abb71(8)
      abb71(20)=-abb71(25)*abb71(20)
      abb71(20)=abb71(20)+abb71(35)
      abb71(25)=2.0_ki*spbe7l5
      abb71(20)=abb71(20)*abb71(25)
      abb71(10)=-spbl5k3*spbe7l6*abb71(10)*abb71(16)
      abb71(8)=abb71(20)+abb71(10)+abb71(8)
      abb71(8)=2.0_ki*abb71(8)
      abb71(10)=abb71(23)-abb71(15)
      abb71(10)=-3.0_ki*abb71(19)-abb71(40)-2.0_ki*abb71(10)
      abb71(10)=spbl5k3*abb71(10)
      abb71(15)=-spbl6k3*abb71(44)
      abb71(16)=abb71(69)*abb71(21)
      abb71(15)=abb71(16)+abb71(15)
      abb71(15)=abb71(15)*abb71(36)
      abb71(19)=spbl6k3*abb71(47)
      abb71(7)=abb71(7)*abb71(16)
      abb71(7)=abb71(7)+abb71(19)
      abb71(7)=abb71(5)*abb71(7)
      abb71(16)=2.0_ki*abb71(51)+3.0_ki*abb71(31)
      abb71(16)=spbk7l5*abb71(16)
      abb71(19)=abb71(60)*abb71(99)
      abb71(20)=abb71(63)*abb71(69)
      abb71(21)=abb71(11)*spak1l6
      abb71(23)=spak3k4*spbl6k3**2*abb71(21)
      abb71(7)=abb71(20)+abb71(16)+abb71(10)+abb71(23)+abb71(7)+abb71(19)+abb71&
      &(15)
      abb71(7)=4.0_ki*abb71(7)
      abb71(10)=spak1l6*spbl6k3
      abb71(10)=abb71(10)-abb71(60)
      abb71(10)=abb71(10)*abb71(11)
      abb71(15)=abb71(17)*spbl5k3
      abb71(10)=abb71(10)+abb71(15)-abb71(63)
      abb71(10)=abb71(10)*spbe7l6*spak4e7
      abb71(15)=abb71(22)*abb71(25)
      abb71(16)=abb71(89)*abb71(62)
      abb71(19)=spbe7l6*abb71(95)
      abb71(10)=-abb71(16)-abb71(15)-abb71(19)+abb71(10)
      abb71(15)=4.0_ki*abb71(10)
      abb71(16)=abb71(57)*spbl6k3
      abb71(19)=abb71(103)*abb71(89)
      abb71(10)=2.0_ki*abb71(10)
      abb71(20)=spbl6k3*abb71(103)
      abb71(22)=spbk7k2*spae7k7
      abb71(23)=abb71(22)*abb71(13)
      abb71(28)=abb71(23)*spbe7k2
      abb71(31)=spbk7l6*spae7k7
      abb71(35)=abb71(31)*abb71(27)
      abb71(28)=abb71(28)-abb71(35)
      abb71(35)=8.0_ki*abb71(28)
      abb71(36)=abb71(17)*spbl6k2
      abb71(40)=16.0_ki*abb71(36)
      abb71(42)=-abb71(94)*abb71(46)
      abb71(43)=abb71(17)*spbl5k2
      abb71(44)=spbe7l6*abb71(43)
      abb71(42)=2.0_ki*abb71(44)+abb71(42)
      abb71(42)=spal5e7*abb71(42)
      abb71(44)=-abb71(94)*abb71(98)
      abb71(46)=-spbe7l5*abb71(17)
      abb71(47)=spbe7k4*abb71(62)
      abb71(44)=abb71(47)+abb71(46)+abb71(44)
      abb71(44)=abb71(52)*abb71(44)
      abb71(46)=spak1k7*spbk7e7
      abb71(47)=-spak1l6*spbe7l6
      abb71(51)=spak1k3*spbe7k3
      abb71(47)=abb71(51)+abb71(47)-abb71(46)
      abb71(47)=abb71(59)*abb71(47)
      abb71(51)=abb71(13)*spbe7k2
      abb71(52)=-spbl6k2*abb71(51)
      abb71(57)=spbe7l6*abb71(36)
      abb71(52)=abb71(52)+abb71(57)
      abb71(52)=abb71(52)*abb71(55)
      abb71(55)=abb71(58)*spak2l5
      abb71(57)=-spbe7k2*abb71(55)*abb71(68)
      abb71(28)=abb71(52)+abb71(57)+abb71(47)+abb71(44)-abb71(28)+abb71(42)
      abb71(28)=2.0_ki*abb71(28)
      abb71(36)=4.0_ki*abb71(36)
      abb71(42)=abb71(96)*abb71(74)*abb71(9)
      abb71(44)=4.0_ki*abb71(55)
      abb71(47)=abb71(44)*abb71(46)
      abb71(52)=abb71(9)*abb71(11)
      abb71(57)=-8.0_ki*abb71(52)*abb71(46)
      abb71(59)=abb71(17)*spbe7l6
      abb71(51)=-abb71(51)+abb71(59)
      abb71(51)=2.0_ki*abb71(51)
      abb71(59)=abb71(44)*spak1e7
      abb71(63)=-spbk7e7*abb71(59)
      abb71(68)=spbk7e7*abb71(52)*abb71(74)
      abb71(69)=spae7k7*abb71(17)
      abb71(95)=abb71(69)*spbk7l6
      abb71(23)=abb71(95)-abb71(23)
      abb71(95)=4.0_ki*spbe7l6*abb71(23)
      abb71(13)=8.0_ki*spbl6k2*abb71(13)
      abb71(22)=abb71(22)*abb71(94)*abb71(101)
      abb71(27)=spbk7l5*abb71(27)
      abb71(94)=abb71(62)*spbk7k4
      abb71(99)=-spbe7k2*abb71(94)
      abb71(27)=abb71(99)+abb71(27)
      abb71(27)=spae7k7*abb71(27)
      abb71(99)=abb71(31)*abb71(104)
      abb71(101)=-spak1k3*abb71(97)
      abb71(22)=abb71(101)+abb71(99)+abb71(22)+abb71(27)
      abb71(22)=2.0_ki*abb71(22)
      abb71(27)=-spak1k7*spbk7k2
      abb71(99)=-spak1k3*spbk3k2
      abb71(27)=abb71(99)+abb71(27)
      abb71(27)=abb71(11)*abb71(27)
      abb71(58)=spak1l6*abb71(58)
      abb71(99)=-spbk4k2*abb71(62)
      abb71(27)=abb71(99)+abb71(43)+abb71(58)+abb71(27)
      abb71(27)=4.0_ki*abb71(27)
      abb71(43)=-abb71(96)*abb71(86)
      abb71(46)=4.0_ki*abb71(11)*abb71(46)
      abb71(58)=-spbk7e7*abb71(11)*abb71(86)
      abb71(99)=-spbk7k2*abb71(102)
      abb71(94)=abb71(94)+abb71(99)
      abb71(94)=spae7k7*abb71(94)
      abb71(21)=-abb71(31)*abb71(21)
      abb71(31)=-spbk7l5*abb71(69)
      abb71(21)=abb71(31)+abb71(21)+abb71(94)
      abb71(21)=spbe7l6*abb71(21)
      abb71(23)=abb71(23)*abb71(25)
      abb71(25)=spak1k3*abb71(11)*abb71(89)
      abb71(21)=abb71(25)+abb71(23)+abb71(21)
      abb71(21)=2.0_ki*abb71(21)
      abb71(23)=abb71(98)+1.0_ki
      abb71(23)=spbl6k2*abb71(23)
      abb71(23)=abb71(45)+abb71(23)
      abb71(12)=abb71(12)*abb71(23)
      abb71(17)=spbl6l5*abb71(17)
      abb71(23)=spak1k7*spbk7l6*abb71(11)
      abb71(25)=-spak1k3*abb71(70)
      abb71(31)=-spbl6k4*abb71(62)
      abb71(12)=abb71(31)+3.0_ki*abb71(17)+abb71(25)+abb71(23)+abb71(12)
      abb71(12)=4.0_ki*abb71(12)
      abb71(17)=16.0_ki*abb71(60)
      abb71(23)=abb71(55)*abb71(17)
      abb71(25)=-spbe7k3*abb71(55)*abb71(74)
      abb71(31)=-32.0_ki*abb71(52)*abb71(60)
      abb71(45)=spak1e7*abb71(61)*abb71(83)
      abb71(59)=-spbe7k3*abb71(59)
      abb71(60)=abb71(74)*abb71(61)
      abb71(62)=abb71(9)*abb71(60)
      abb71(17)=abb71(11)*abb71(17)
      abb71(61)=-abb71(61)*abb71(86)
      abb71(26)=abb71(44)*abb71(26)
      abb71(69)=spak4k7*abb71(26)
      abb71(55)=8.0_ki*abb71(55)
      abb71(70)=spbk3k2*spak4k7*abb71(55)
      abb71(74)=abb71(97)*spak4k7
      abb71(83)=-8.0_ki*abb71(9)*abb71(74)
      abb71(66)=-16.0_ki*abb71(66)*abb71(71)
      abb71(74)=4.0_ki*abb71(74)
      abb71(86)=8.0_ki*abb71(109)
      abb71(89)=spae7k7*spbe7k2*abb71(44)
      abb71(94)=8.0_ki*abb71(96)
      abb71(97)=abb71(94)*abb71(9)
      abb71(98)=-spae7k7*abb71(97)
      abb71(99)=4.0_ki*abb71(96)
      abb71(101)=spae7k7*abb71(99)
      abb71(26)=-spak3k4*abb71(26)
      abb71(14)=-abb71(65)-abb71(14)
      abb71(14)=abb71(14)*abb71(55)
      abb71(102)=abb71(34)*abb71(55)
      abb71(97)=abb71(91)*abb71(97)
      abb71(71)=spak3k4*abb71(11)*abb71(71)
      abb71(71)=abb71(71)+abb71(73)
      abb71(71)=16.0_ki*abb71(71)
      abb71(9)=abb71(9)*spak4e7
      abb71(73)=-16.0_ki*abb71(96)*abb71(9)
      abb71(34)=abb71(34)*abb71(44)
      abb71(9)=-abb71(9)*abb71(94)
      abb71(44)=-abb71(91)*abb71(99)
      abb71(65)=-abb71(11)*abb71(65)
      abb71(65)=abb71(65)-abb71(72)
      abb71(65)=8.0_ki*abb71(65)
      abb71(72)=spak4e7*abb71(94)
      abb71(91)=4.0_ki*abb71(105)
      abb71(52)=-16.0_ki*abb71(52)
      abb71(11)=8.0_ki*abb71(11)
      R2d71=0.0_ki
      rat2 = rat2 + R2d71
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='71' value='", &
          & R2d71, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd71h2
