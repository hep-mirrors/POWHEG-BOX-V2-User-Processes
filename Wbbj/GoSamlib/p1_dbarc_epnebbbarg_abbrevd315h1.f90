module     p1_dbarc_epnebbbarg_abbrevd315h1
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(97), public :: abb315
   complex(ki), public :: R2d315
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
      abb315(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb315(2)=sqrt(mB**2)
      abb315(3)=NC**(-1)
      abb315(4)=es234**(-1)
      abb315(5)=spak2l5**(-1)
      abb315(6)=spbl6k2**(-1)
      abb315(7)=spak2l6**(-1)
      abb315(8)=TR*gW
      abb315(8)=abb315(1)*abb315(8)**2
      abb315(9)=i_*CVDC
      abb315(10)=abb315(9)*abb315(4)*abb315(8)
      abb315(11)=c1+c3
      abb315(12)=spbk3k2*abb315(3)
      abb315(13)=abb315(11)*abb315(10)*abb315(12)
      abb315(14)=abb315(10)*c2
      abb315(15)=abb315(3)**2
      abb315(16)=abb315(15)*spbk3k2
      abb315(17)=abb315(16)*abb315(14)
      abb315(18)=abb315(13)-abb315(17)
      abb315(19)=abb315(2)**2
      abb315(20)=abb315(19)*abb315(18)
      abb315(21)=abb315(20)*spak1l6
      abb315(22)=spbl5k3*spak3k4
      abb315(23)=abb315(21)*abb315(22)
      abb315(24)=spak2k4*abb315(13)
      abb315(25)=abb315(16)*c2
      abb315(26)=abb315(25)*abb315(10)*spak2k4
      abb315(27)=abb315(24)-abb315(26)
      abb315(28)=abb315(27)*abb315(19)
      abb315(29)=spbl5k2*spak1l6
      abb315(30)=abb315(28)*abb315(29)
      abb315(23)=abb315(23)-abb315(30)
      abb315(30)=spbe7l6*spal6e7
      abb315(31)=spbe7k1*spak1e7
      abb315(30)=abb315(30)-abb315(31)
      abb315(23)=-abb315(23)*abb315(30)
      abb315(31)=abb315(2)*mB
      abb315(32)=abb315(31)**2
      abb315(33)=abb315(32)*abb315(6)
      abb315(24)=abb315(24)*abb315(33)
      abb315(34)=abb315(10)*abb315(6)
      abb315(35)=abb315(34)*c2
      abb315(16)=abb315(35)*abb315(16)
      abb315(36)=abb315(32)*abb315(16)
      abb315(37)=abb315(36)*spak2k4
      abb315(24)=abb315(37)-abb315(24)
      abb315(24)=abb315(24)*spbl5k2
      abb315(37)=abb315(33)*abb315(13)
      abb315(37)=abb315(37)-abb315(36)
      abb315(38)=abb315(37)*abb315(22)
      abb315(24)=abb315(24)+abb315(38)
      abb315(38)=spak2k4*abb315(5)
      abb315(39)=abb315(32)*abb315(38)
      abb315(40)=-abb315(39)*abb315(13)
      abb315(41)=abb315(10)*abb315(5)
      abb315(42)=abb315(25)*abb315(41)
      abb315(43)=spak2k4*abb315(32)*abb315(42)
      abb315(40)=abb315(43)+abb315(40)
      abb315(40)=spak2l6*abb315(40)
      abb315(40)=abb315(40)-abb315(24)
      abb315(43)=spbe7k2*spak1e7
      abb315(40)=abb315(43)*abb315(40)
      abb315(44)=abb315(7)*spak1k2
      abb315(45)=spal6e7*spbe7k2
      abb315(24)=-abb315(24)*abb315(44)*abb315(45)
      abb315(46)=abb315(31)*abb315(13)
      abb315(47)=abb315(46)*spak2k4
      abb315(26)=abb315(26)*abb315(31)
      abb315(26)=abb315(26)-abb315(47)
      abb315(47)=spak1e7*spbk7e7
      abb315(48)=abb315(47)*spbl5k2
      abb315(49)=abb315(26)*abb315(48)
      abb315(17)=abb315(17)*abb315(31)
      abb315(17)=abb315(17)-abb315(46)
      abb315(50)=abb315(22)*abb315(47)
      abb315(51)=-abb315(17)*abb315(50)
      abb315(49)=abb315(49)+abb315(51)
      abb315(49)=spal6k7*abb315(49)
      abb315(51)=-abb315(13)*abb315(33)*abb315(38)
      abb315(36)=abb315(36)*abb315(38)
      abb315(36)=abb315(36)+abb315(51)
      abb315(36)=abb315(36)*abb315(43)
      abb315(51)=spbe7k3*spak3k4
      abb315(52)=abb315(51)*spak1e7
      abb315(37)=-abb315(52)*abb315(5)*abb315(37)
      abb315(37)=-abb315(36)+abb315(37)
      abb315(37)=es12*abb315(37)
      abb315(53)=abb315(6)*abb315(46)
      abb315(54)=abb315(16)*abb315(31)
      abb315(53)=abb315(53)-abb315(54)
      abb315(54)=abb315(53)*abb315(48)
      abb315(55)=-spak2k4*abb315(54)
      abb315(50)=abb315(53)*abb315(50)
      abb315(50)=abb315(55)+abb315(50)
      abb315(50)=spbk2k1*spak1k7*abb315(50)
      abb315(55)=abb315(13)*abb315(5)
      abb315(56)=-abb315(42)+abb315(55)
      abb315(52)=abb315(52)*spak2l6
      abb315(56)=abb315(52)*abb315(32)*abb315(56)
      abb315(57)=abb315(5)*abb315(46)
      abb315(41)=abb315(41)*abb315(31)
      abb315(25)=abb315(41)*abb315(25)
      abb315(57)=abb315(57)-abb315(25)
      abb315(58)=abb315(57)*spak1l6
      abb315(59)=spbe7l6*spae7k7
      abb315(60)=spak2l6*spak3k4
      abb315(61)=abb315(60)*abb315(59)
      abb315(62)=spae7k7*spbe7k1*spak1k2
      abb315(63)=spak3k4*abb315(62)
      abb315(61)=abb315(61)+abb315(63)
      abb315(61)=spbk7k3*abb315(58)*abb315(61)
      abb315(46)=abb315(38)*abb315(46)
      abb315(25)=abb315(25)*spak2k4
      abb315(25)=-abb315(25)+abb315(46)
      abb315(25)=abb315(25)*spak1l6
      abb315(46)=abb315(59)*spak2l6
      abb315(46)=abb315(46)+abb315(62)
      abb315(59)=abb315(46)*spbk7k2
      abb315(62)=-abb315(25)*abb315(59)
      abb315(23)=abb315(50)+abb315(37)+abb315(62)+abb315(61)+abb315(49)+abb315(&
      &56)+abb315(24)+abb315(40)+abb315(23)
      abb315(23)=4.0_ki*abb315(23)
      abb315(24)=spbl6k3*abb315(60)
      abb315(37)=spbk3k1*spak1k2
      abb315(40)=-spak3k4*abb315(37)
      abb315(24)=abb315(40)+abb315(24)
      abb315(24)=abb315(58)*abb315(24)
      abb315(40)=-spbl6k2*spak2l6
      abb315(40)=abb315(40)+es12
      abb315(40)=abb315(25)*abb315(40)
      abb315(26)=-abb315(26)*abb315(29)
      abb315(17)=spak1l6*abb315(17)*abb315(22)
      abb315(17)=abb315(26)+abb315(17)+abb315(40)+abb315(24)
      abb315(17)=8.0_ki*abb315(17)
      abb315(24)=-abb315(22)*abb315(18)
      abb315(26)=abb315(24)*abb315(47)
      abb315(40)=abb315(27)*abb315(48)
      abb315(26)=abb315(26)+abb315(40)
      abb315(40)=-8.0_ki*spal6k7*abb315(26)
      abb315(24)=abb315(24)*spak1l6
      abb315(29)=abb315(29)*abb315(27)
      abb315(24)=abb315(24)+abb315(29)
      abb315(29)=16.0_ki*abb315(24)
      abb315(49)=abb315(58)*spbk7e7
      abb315(50)=abb315(49)*spak2e7
      abb315(50)=abb315(54)-abb315(50)
      abb315(56)=spak4k7*abb315(50)
      abb315(61)=spak4e7*spak1l6
      abb315(62)=abb315(61)*spbe7l5
      abb315(20)=abb315(20)*abb315(62)
      abb315(61)=abb315(61)*spbk7e7
      abb315(63)=abb315(61)*spak2k7
      abb315(57)=abb315(63)*abb315(57)
      abb315(20)=-abb315(20)-abb315(36)+abb315(57)+abb315(56)
      abb315(20)=8.0_ki*abb315(20)
      abb315(36)=abb315(53)*spbl5k2
      abb315(53)=abb315(36)*spak1k4
      abb315(56)=-abb315(53)+2.0_ki*abb315(25)
      abb315(56)=16.0_ki*abb315(56)
      abb315(53)=-abb315(25)+abb315(53)
      abb315(53)=16.0_ki*abb315(53)
      abb315(57)=mB**2
      abb315(64)=abb315(57)*abb315(6)
      abb315(65)=abb315(64)*abb315(13)
      abb315(66)=abb315(38)*abb315(65)
      abb315(38)=abb315(38)*abb315(57)
      abb315(67)=abb315(38)*abb315(16)
      abb315(66)=abb315(66)-abb315(67)
      abb315(67)=spae7k7*spbe7k2
      abb315(68)=abb315(67)*abb315(66)*spbk7k2
      abb315(16)=abb315(16)*abb315(57)
      abb315(16)=abb315(65)-abb315(16)
      abb315(65)=spak3k4*abb315(5)*abb315(16)
      abb315(69)=abb315(65)*abb315(67)
      abb315(70)=abb315(69)*spbk7k3
      abb315(68)=abb315(68)-abb315(70)
      abb315(70)=spak1k2*abb315(68)
      abb315(71)=spal6e7*spbk7e7
      abb315(72)=-abb315(71)*abb315(18)
      abb315(73)=abb315(72)*abb315(22)
      abb315(74)=abb315(27)*abb315(71)
      abb315(75)=abb315(74)*spbl5k2
      abb315(73)=abb315(73)+abb315(75)
      abb315(75)=-spak1k7*abb315(73)
      abb315(70)=abb315(75)+abb315(70)
      abb315(70)=8.0_ki*abb315(70)
      abb315(75)=abb315(34)*abb315(5)
      abb315(76)=abb315(75)*abb315(57)
      abb315(77)=abb315(11)*abb315(3)
      abb315(78)=abb315(76)*abb315(77)
      abb315(79)=spbk3k2**2
      abb315(80)=abb315(79)*abb315(78)
      abb315(12)=abb315(12)**2
      abb315(81)=abb315(35)*abb315(12)*abb315(5)
      abb315(82)=abb315(57)*abb315(81)
      abb315(80)=abb315(80)-abb315(82)
      abb315(82)=abb315(80)*spak1k2*spak3k4
      abb315(82)=abb315(82)-abb315(24)
      abb315(82)=16.0_ki*abb315(82)
      abb315(24)=-abb315(24)*abb315(30)
      abb315(30)=spak2k4*abb315(16)
      abb315(83)=abb315(30)*spbl5k2
      abb315(16)=-abb315(16)*abb315(22)
      abb315(22)=abb315(83)+abb315(16)
      abb315(13)=abb315(13)*abb315(38)
      abb315(42)=abb315(57)*abb315(42)
      abb315(83)=abb315(42)*spak2k4
      abb315(13)=abb315(83)-abb315(13)
      abb315(13)=abb315(13)*spak2l6
      abb315(13)=abb315(13)+abb315(22)
      abb315(83)=-abb315(43)*abb315(13)
      abb315(44)=abb315(22)*abb315(44)
      abb315(45)=-abb315(45)*abb315(44)
      abb315(84)=abb315(66)*abb315(43)
      abb315(85)=abb315(65)*spbe7k3
      abb315(86)=spak1e7*abb315(85)
      abb315(86)=-abb315(84)+abb315(86)
      abb315(86)=es12*abb315(86)
      abb315(55)=-abb315(57)*abb315(55)
      abb315(42)=abb315(42)+abb315(55)
      abb315(42)=abb315(42)*abb315(52)
      abb315(24)=abb315(86)+abb315(42)+abb315(45)+abb315(83)+abb315(24)
      abb315(24)=4.0_ki*abb315(24)
      abb315(42)=-abb315(62)*abb315(18)
      abb315(42)=abb315(42)+abb315(84)
      abb315(42)=8.0_ki*abb315(42)
      abb315(45)=spbe7k2*spak1l6
      abb315(28)=abb315(28)*abb315(45)
      abb315(52)=-abb315(51)*abb315(21)
      abb315(28)=abb315(28)+abb315(52)
      abb315(28)=4.0_ki*abb315(28)
      abb315(45)=-abb315(27)*abb315(45)
      abb315(52)=-abb315(18)*spak1l6
      abb315(55)=-abb315(51)*abb315(52)
      abb315(45)=abb315(45)+abb315(55)
      abb315(45)=4.0_ki*abb315(45)
      abb315(55)=8.0_ki*abb315(66)
      abb315(83)=spak1k7*spbk7e7
      abb315(84)=abb315(83)*abb315(55)
      abb315(75)=abb315(32)*abb315(75)
      abb315(86)=-abb315(75)*abb315(79)*abb315(77)
      abb315(81)=abb315(32)*abb315(81)
      abb315(81)=abb315(81)+abb315(86)
      abb315(86)=4.0_ki*spak3k4
      abb315(87)=abb315(86)*spak1e7
      abb315(81)=abb315(81)*abb315(87)
      abb315(87)=abb315(80)*abb315(87)
      abb315(12)=abb315(31)*abb315(12)*abb315(35)
      abb315(35)=abb315(34)*abb315(31)
      abb315(88)=abb315(35)*abb315(77)
      abb315(79)=abb315(88)*abb315(79)
      abb315(12)=abb315(12)-abb315(79)
      abb315(79)=-abb315(12)*abb315(47)*abb315(86)
      abb315(89)=abb315(55)*abb315(47)
      abb315(90)=-abb315(18)*abb315(47)
      abb315(91)=8.0_ki*spak4k7
      abb315(92)=abb315(91)*abb315(90)
      abb315(93)=-16.0_ki*abb315(18)
      abb315(94)=abb315(93)*spak1k4
      abb315(95)=-abb315(90)*abb315(86)
      abb315(30)=-abb315(30)*abb315(48)
      abb315(16)=-abb315(47)*abb315(16)
      abb315(16)=abb315(30)+abb315(16)
      abb315(30)=abb315(7)*spak2k7
      abb315(16)=4.0_ki*abb315(16)*abb315(30)
      abb315(44)=8.0_ki*abb315(44)
      abb315(96)=-4.0_ki*abb315(27)*abb315(47)
      abb315(26)=4.0_ki*spak1k7*abb315(26)
      abb315(97)=abb315(15)*c2
      abb315(35)=abb315(35)*abb315(97)
      abb315(35)=abb315(35)-abb315(88)
      abb315(48)=abb315(35)*abb315(48)*spak4k7
      abb315(10)=abb315(10)*abb315(77)
      abb315(14)=abb315(14)*abb315(15)
      abb315(10)=-abb315(14)+abb315(10)
      abb315(14)=abb315(62)*abb315(10)*abb315(19)
      abb315(14)=abb315(48)+abb315(14)
      abb315(15)=abb315(77)-abb315(97)
      abb315(19)=-abb315(41)*abb315(15)
      abb315(41)=abb315(19)*abb315(63)
      abb315(48)=abb315(19)*spak1l6
      abb315(63)=spbk7e7*abb315(48)*spak4k7
      abb315(77)=-spak2e7*abb315(63)
      abb315(41)=abb315(77)+abb315(41)+abb315(14)
      abb315(41)=spbk4k2*abb315(41)
      abb315(8)=abb315(5)*abb315(8)
      abb315(11)=abb315(11)*abb315(8)*abb315(9)*abb315(3)
      abb315(33)=abb315(33)*abb315(11)
      abb315(8)=abb315(9)*abb315(8)*abb315(97)
      abb315(9)=abb315(6)*abb315(8)
      abb315(32)=-abb315(32)*abb315(9)
      abb315(75)=-es34*abb315(75)*abb315(15)
      abb315(32)=abb315(75)+abb315(32)+abb315(33)
      abb315(32)=abb315(43)*abb315(32)
      abb315(33)=-spak3k7*abb315(50)
      abb315(21)=abb315(21)*spbe7l5
      abb315(49)=-spak2k7*abb315(49)
      abb315(49)=abb315(21)+abb315(49)
      abb315(49)=spak3e7*abb315(49)
      abb315(32)=abb315(49)+abb315(33)+abb315(32)+abb315(41)
      abb315(32)=4.0_ki*abb315(32)
      abb315(8)=-abb315(8)+abb315(11)
      abb315(33)=2.0_ki*spak1l6
      abb315(8)=abb315(33)*abb315(31)*abb315(8)
      abb315(31)=spbl5k2*abb315(35)*spak1k4
      abb315(35)=-spbk4k2*abb315(31)
      abb315(41)=es34*abb315(48)
      abb315(48)=spak1k3*abb315(36)
      abb315(8)=abb315(48)+2.0_ki*abb315(41)+abb315(8)+abb315(35)
      abb315(8)=8.0_ki*abb315(8)
      abb315(35)=abb315(76)*abb315(97)
      abb315(35)=abb315(35)-abb315(78)
      abb315(35)=abb315(35)*es34
      abb315(11)=abb315(64)*abb315(11)
      abb315(9)=abb315(9)*abb315(57)
      abb315(9)=abb315(35)+abb315(11)-abb315(9)
      abb315(11)=-abb315(43)*abb315(9)
      abb315(35)=abb315(10)*spbk4k2
      abb315(41)=-abb315(62)*abb315(35)
      abb315(48)=abb315(52)*spbe7l5
      abb315(49)=spak3e7*abb315(48)
      abb315(11)=abb315(49)+abb315(41)+abb315(11)
      abb315(11)=4.0_ki*abb315(11)
      abb315(41)=4.0_ki*abb315(9)
      abb315(49)=-abb315(83)*abb315(41)
      abb315(50)=abb315(47)*abb315(41)
      abb315(52)=abb315(35)*spak4k7
      abb315(57)=-abb315(47)*abb315(52)
      abb315(64)=spak3k7*abb315(90)
      abb315(57)=abb315(57)+abb315(64)
      abb315(57)=4.0_ki*abb315(57)
      abb315(64)=spak1k4*abb315(35)
      abb315(75)=spak1k3*abb315(18)
      abb315(64)=abb315(64)+abb315(75)
      abb315(64)=8.0_ki*abb315(64)
      abb315(15)=abb315(15)*abb315(34)
      abb315(34)=abb315(43)*abb315(39)*abb315(15)
      abb315(14)=abb315(34)-abb315(14)
      abb315(14)=spbk4k3*abb315(14)
      abb315(34)=-spbk4k3*abb315(19)*abb315(61)
      abb315(34)=abb315(54)+abb315(34)
      abb315(34)=spak2k7*abb315(34)
      abb315(39)=spbk4k3*abb315(63)
      abb315(21)=abb315(39)-abb315(21)
      abb315(21)=spak2e7*abb315(21)
      abb315(14)=abb315(21)+abb315(34)+abb315(14)
      abb315(14)=4.0_ki*abb315(14)
      abb315(19)=-abb315(33)*spak2k4*abb315(19)
      abb315(19)=abb315(31)+abb315(19)
      abb315(19)=spbk4k3*abb315(19)
      abb315(21)=-spak1k2*abb315(36)
      abb315(19)=abb315(21)+abb315(19)
      abb315(19)=8.0_ki*abb315(19)
      abb315(15)=-spbk4k3*abb315(38)*abb315(15)
      abb315(21)=abb315(43)*abb315(15)
      abb315(10)=abb315(10)*spbk4k3
      abb315(31)=abb315(62)*abb315(10)
      abb315(33)=-spak2e7*abb315(48)
      abb315(21)=abb315(33)+abb315(21)+abb315(31)
      abb315(21)=4.0_ki*abb315(21)
      abb315(31)=4.0_ki*abb315(15)
      abb315(33)=abb315(83)*abb315(31)
      abb315(34)=-abb315(47)*abb315(31)
      abb315(36)=abb315(10)*spak4k7
      abb315(38)=abb315(47)*abb315(36)
      abb315(39)=-spak2k7*abb315(90)
      abb315(38)=abb315(38)+abb315(39)
      abb315(38)=4.0_ki*abb315(38)
      abb315(39)=-spak1k2*abb315(18)
      abb315(43)=-spak1k4*abb315(10)
      abb315(39)=abb315(39)+abb315(43)
      abb315(39)=8.0_ki*abb315(39)
      abb315(25)=abb315(67)*abb315(25)
      abb315(43)=-spae7k7*abb315(58)*abb315(51)
      abb315(25)=abb315(25)+abb315(43)
      abb315(25)=4.0_ki*abb315(25)
      abb315(43)=8.0_ki*spak3k4
      abb315(47)=-abb315(58)*abb315(43)
      abb315(48)=abb315(55)*abb315(67)
      abb315(41)=-abb315(67)*abb315(41)
      abb315(31)=abb315(67)*abb315(31)
      abb315(51)=spak2l6*abb315(68)
      abb315(54)=spal6k7*abb315(73)
      abb315(51)=abb315(54)+abb315(51)
      abb315(51)=4.0_ki*abb315(51)
      abb315(54)=8.0_ki*abb315(80)*abb315(60)
      abb315(12)=-abb315(12)*abb315(43)
      abb315(55)=abb315(91)*abb315(72)
      abb315(58)=abb315(93)*spak4l6
      abb315(43)=-abb315(43)*abb315(18)
      abb315(27)=8.0_ki*abb315(27)
      abb315(52)=abb315(71)*abb315(52)
      abb315(60)=-spak3k7*abb315(72)
      abb315(52)=abb315(52)+abb315(60)
      abb315(52)=4.0_ki*abb315(52)
      abb315(35)=spak4l6*abb315(35)
      abb315(60)=spak3l6*abb315(18)
      abb315(35)=abb315(35)+abb315(60)
      abb315(35)=8.0_ki*abb315(35)
      abb315(36)=-abb315(71)*abb315(36)
      abb315(60)=spak2k7*abb315(72)
      abb315(36)=abb315(36)+abb315(60)
      abb315(36)=4.0_ki*abb315(36)
      abb315(18)=-spak2l6*abb315(18)
      abb315(10)=-spak4l6*abb315(10)
      abb315(10)=abb315(18)+abb315(10)
      abb315(10)=8.0_ki*abb315(10)
      abb315(18)=16.0_ki*abb315(65)
      abb315(60)=abb315(72)*abb315(86)
      abb315(61)=4.0_ki*abb315(69)
      abb315(22)=abb315(30)*abb315(71)*abb315(22)
      abb315(30)=-abb315(66)*abb315(59)
      abb315(46)=spbk7k3*abb315(65)*abb315(46)
      abb315(22)=abb315(30)+abb315(22)+abb315(46)
      abb315(22)=4.0_ki*abb315(22)
      abb315(30)=es12*abb315(66)
      abb315(46)=spbl6k3*spak2l6
      abb315(37)=-abb315(37)+abb315(46)
      abb315(37)=abb315(65)*abb315(37)
      abb315(13)=abb315(30)+abb315(37)+abb315(13)
      abb315(13)=8.0_ki*abb315(13)
      abb315(30)=16.0_ki*abb315(66)
      abb315(37)=4.0_ki*abb315(74)
      abb315(9)=8.0_ki*abb315(9)
      abb315(15)=-8.0_ki*abb315(15)
      abb315(46)=-4.0_ki*spae7k7*abb315(85)
      abb315(59)=-8.0_ki*abb315(65)
      R2d315=0.0_ki
      rat2 = rat2 + R2d315
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='315' value='", &
          & R2d315, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd315h1