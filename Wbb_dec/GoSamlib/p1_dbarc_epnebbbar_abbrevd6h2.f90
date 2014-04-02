module     p1_dbarc_epnebbbar_abbrevd6h2
   use p1_dbarc_epnebbbar_config, only: ki
   use p1_dbarc_epnebbbar_globalsh2
   implicit none
   private
   complex(ki), dimension(81), public :: abb6
   complex(ki), public :: R2d6
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p1_dbarc_epnebbbar_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p1_dbarc_epnebbbar_kinematics
      use p1_dbarc_epnebbbar_model
      use p1_dbarc_epnebbbar_color, only: TR
      use p1_dbarc_epnebbbar_globalsl1, only: epspow
      implicit none
      abb6(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb6(2)=NC**(-1)
      abb6(3)=es234**(-1)
      abb6(4)=es56**(-1)
      abb6(5)=spbl5k2**(-1)
      abb6(6)=spak2l6**(-1)
      abb6(7)=spak2l5**(-1)
      abb6(8)=spbl6k2**(-1)
      abb6(9)=TR*gW
      abb6(10)=abb6(9)*mB
      abb6(10)=abb6(10)**2
      abb6(11)=abb6(4)*i_*CVDC
      abb6(12)=abb6(11)*abb6(1)
      abb6(13)=abb6(3)*abb6(12)
      abb6(14)=abb6(10)*abb6(13)
      abb6(15)=abb6(14)*abb6(5)
      abb6(16)=spbk3k2**2
      abb6(17)=abb6(16)*abb6(15)
      abb6(18)=NC*c2
      abb6(19)=abb6(18)*abb6(6)
      abb6(20)=abb6(19)*abb6(17)
      abb6(21)=abb6(6)*c1
      abb6(22)=abb6(17)*abb6(21)
      abb6(20)=abb6(20)-abb6(22)
      abb6(22)=abb6(22)*abb6(2)
      abb6(23)=abb6(17)*c2
      abb6(24)=abb6(23)*abb6(6)
      abb6(22)=abb6(22)-abb6(24)
      abb6(24)=abb6(22)*abb6(2)
      abb6(24)=abb6(24)+abb6(20)
      abb6(25)=spak3k4*spak1k2
      abb6(24)=abb6(24)*abb6(25)
      abb6(26)=abb6(13)*spbk3k2
      abb6(27)=abb6(26)*c1
      abb6(9)=abb6(9)**2
      abb6(28)=abb6(27)*abb6(9)
      abb6(29)=abb6(28)*abb6(2)
      abb6(26)=abb6(26)*c2
      abb6(30)=abb6(26)*abb6(9)
      abb6(29)=abb6(29)-abb6(30)
      abb6(30)=abb6(29)*abb6(2)
      abb6(31)=abb6(30)-abb6(28)
      abb6(32)=abb6(31)*spak1l5
      abb6(33)=abb6(9)*spak1l5
      abb6(34)=abb6(26)*NC
      abb6(35)=abb6(33)*abb6(34)
      abb6(32)=abb6(32)+abb6(35)
      abb6(36)=spbl6k3*spak3k4
      abb6(32)=abb6(32)*abb6(36)
      abb6(37)=spbl6k2*spak1l5
      abb6(31)=abb6(31)*abb6(37)
      abb6(38)=abb6(35)*spbl6k2
      abb6(31)=abb6(31)+abb6(38)
      abb6(31)=abb6(31)*spak2k4
      abb6(24)=-abb6(31)+abb6(24)+abb6(32)
      abb6(31)=2.0_ki*abb6(24)
      abb6(32)=abb6(16)*mB**4
      abb6(39)=abb6(32)*abb6(9)
      abb6(40)=abb6(13)*c1
      abb6(41)=abb6(39)*abb6(40)
      abb6(42)=abb6(13)*c2
      abb6(43)=abb6(42)*abb6(9)
      abb6(44)=NC*abb6(43)
      abb6(32)=abb6(44)*abb6(32)
      abb6(32)=abb6(41)-abb6(32)
      abb6(32)=abb6(32)*abb6(6)*abb6(5)**2
      abb6(41)=abb6(32)*abb6(25)
      abb6(45)=abb6(34)*spbl6k2
      abb6(46)=abb6(10)*abb6(5)
      abb6(47)=abb6(45)*abb6(46)
      abb6(48)=abb6(47)*spak1l5
      abb6(49)=abb6(27)*abb6(46)
      abb6(50)=-abb6(37)*abb6(49)
      abb6(50)=abb6(50)+abb6(48)
      abb6(50)=spak2k4*abb6(50)
      abb6(41)=abb6(41)+2.0_ki*abb6(50)
      abb6(41)=abb6(7)*abb6(41)
      abb6(50)=abb6(46)*abb6(6)
      abb6(51)=abb6(34)*abb6(50)
      abb6(52)=abb6(51)*spbl6k2
      abb6(53)=abb6(50)*abb6(27)
      abb6(54)=-spbl6k2*abb6(53)
      abb6(54)=abb6(54)+abb6(52)
      abb6(54)=spak2k4*abb6(54)
      abb6(51)=abb6(51)-abb6(53)
      abb6(55)=-abb6(51)*abb6(36)
      abb6(54)=abb6(54)+abb6(55)
      abb6(54)=spak1l6*abb6(54)
      abb6(55)=abb6(10)*abb6(6)
      abb6(56)=abb6(27)*abb6(55)
      abb6(57)=abb6(56)*spak1l5
      abb6(58)=abb6(34)*abb6(55)
      abb6(59)=abb6(58)*spak1l5
      abb6(57)=abb6(57)-abb6(59)
      abb6(60)=3.0_ki*spak2k4
      abb6(61)=abb6(57)*abb6(60)
      abb6(62)=abb6(34)*abb6(46)
      abb6(63)=abb6(49)-abb6(62)
      abb6(64)=abb6(36)*spak1l5
      abb6(65)=2.0_ki*abb6(7)
      abb6(63)=abb6(65)*abb6(63)*abb6(64)
      abb6(41)=abb6(54)+abb6(63)-abb6(61)+abb6(41)
      abb6(41)=es12*abb6(41)
      abb6(54)=abb6(20)*abb6(25)
      abb6(63)=-spak1l5*abb6(54)
      abb6(66)=spak1l5**2
      abb6(67)=abb6(66)*abb6(28)
      abb6(68)=-spbl6k2*abb6(67)
      abb6(45)=abb6(45)*abb6(9)
      abb6(69)=abb6(66)*abb6(45)
      abb6(68)=abb6(68)+abb6(69)
      abb6(68)=spak2k4*abb6(68)
      abb6(34)=abb6(34)*abb6(9)
      abb6(66)=abb6(66)*abb6(34)
      abb6(66)=abb6(66)-abb6(67)
      abb6(67)=-abb6(66)*abb6(36)
      abb6(63)=abb6(67)+abb6(63)+abb6(68)
      abb6(63)=spbl5k1*abb6(63)
      abb6(67)=abb6(37)*abb6(28)
      abb6(67)=abb6(67)-abb6(38)
      abb6(67)=abb6(67)*spak2k4
      abb6(68)=abb6(28)*spak1l5
      abb6(68)=abb6(68)-abb6(35)
      abb6(69)=abb6(68)*abb6(36)
      abb6(67)=abb6(67)-abb6(69)
      abb6(69)=-2.0_ki*abb6(54)-abb6(67)
      abb6(69)=spak1l6*abb6(69)
      abb6(70)=abb6(18)-c1
      abb6(71)=abb6(70)*abb6(17)
      abb6(72)=abb6(25)*abb6(7)
      abb6(73)=-abb6(72)*spak1l5*abb6(71)
      abb6(69)=abb6(73)+abb6(69)
      abb6(69)=spbl6k1*abb6(69)
      abb6(13)=abb6(25)*abb6(70)*abb6(6)**2*abb6(39)*abb6(13)*abb6(5)
      abb6(39)=abb6(57)*abb6(36)
      abb6(39)=-abb6(13)+2.0_ki*abb6(39)
      abb6(39)=es12*abb6(39)
      abb6(16)=abb6(16)*abb6(14)
      abb6(57)=abb6(16)*abb6(19)
      abb6(73)=abb6(16)*abb6(21)
      abb6(57)=abb6(57)-abb6(73)
      abb6(74)=-spbl6k1*abb6(57)*abb6(25)*spak1l5
      abb6(39)=abb6(39)+abb6(74)
      abb6(39)=abb6(8)*abb6(39)
      abb6(66)=abb6(66)*spbl6k1
      abb6(74)=abb6(51)*es12
      abb6(75)=-spak1l5*abb6(74)
      abb6(75)=abb6(75)+abb6(66)
      abb6(76)=spbl5k3*spak3k4
      abb6(75)=abb6(75)*abb6(76)
      abb6(77)=spbl5k2*spak2k4
      abb6(66)=-abb6(66)*abb6(77)
      abb6(39)=2.0_ki*abb6(63)+abb6(66)+abb6(75)+abb6(39)+abb6(41)+abb6(69)
      abb6(39)=2.0_ki*abb6(39)
      abb6(41)=2.0_ki*abb6(2)
      abb6(22)=abb6(22)*abb6(41)
      abb6(20)=abb6(22)-abb6(20)
      abb6(20)=abb6(20)*abb6(25)
      abb6(22)=abb6(29)*abb6(41)
      abb6(22)=abb6(22)+abb6(28)
      abb6(29)=abb6(22)*spak1l5
      abb6(29)=abb6(29)-abb6(35)
      abb6(29)=abb6(29)*abb6(36)
      abb6(22)=abb6(22)*abb6(37)
      abb6(22)=abb6(22)-abb6(38)
      abb6(22)=abb6(22)*spak2k4
      abb6(20)=abb6(20)+abb6(29)-abb6(22)
      abb6(20)=4.0_ki*abb6(20)
      abb6(22)=abb6(27)*abb6(2)
      abb6(22)=abb6(22)-abb6(26)
      abb6(26)=-abb6(46)*abb6(22)
      abb6(27)=abb6(26)*abb6(2)
      abb6(29)=abb6(27)+abb6(49)
      abb6(29)=abb6(29)*spbl6k2
      abb6(29)=abb6(29)-abb6(47)
      abb6(38)=abb6(65)*spak1k2
      abb6(29)=abb6(29)*abb6(38)
      abb6(46)=abb6(56)-abb6(58)
      abb6(58)=3.0_ki*spak1k2
      abb6(63)=abb6(46)*abb6(58)
      abb6(29)=abb6(29)+abb6(63)
      abb6(63)=abb6(29)*spak4l5
      abb6(65)=abb6(68)*spbl6k1
      abb6(65)=abb6(74)+abb6(65)
      abb6(66)=spak1k4*abb6(65)
      abb6(50)=abb6(50)*abb6(22)
      abb6(69)=abb6(50)*abb6(41)
      abb6(74)=abb6(69)+abb6(53)
      abb6(74)=abb6(74)*spbl6k2
      abb6(74)=abb6(74)-abb6(52)
      abb6(75)=spak4l6*spak1k2
      abb6(78)=abb6(74)*abb6(75)
      abb6(79)=3.0_ki*spbl6l5
      abb6(80)=abb6(79)*spak4l5
      abb6(81)=abb6(80)*abb6(68)
      abb6(63)=-abb6(63)+abb6(66)-abb6(78)-abb6(81)
      abb6(50)=abb6(50)*abb6(2)
      abb6(53)=abb6(50)-abb6(53)
      abb6(53)=abb6(53)*spbl6k2
      abb6(52)=abb6(53)+abb6(52)
      abb6(53)=2.0_ki*spak1l6
      abb6(66)=abb6(53)*spak2k4
      abb6(52)=abb6(52)*abb6(66)
      abb6(26)=abb6(26)*abb6(41)
      abb6(26)=abb6(26)-abb6(49)
      abb6(78)=abb6(26)*abb6(37)
      abb6(48)=abb6(78)+abb6(48)
      abb6(78)=abb6(7)*spak2k4
      abb6(48)=abb6(48)*abb6(78)
      abb6(48)=abb6(52)+abb6(48)-abb6(63)-abb6(61)
      abb6(48)=4.0_ki*abb6(48)
      abb6(22)=-abb6(55)*abb6(22)
      abb6(52)=-abb6(22)*abb6(41)
      abb6(52)=abb6(56)+abb6(52)
      abb6(52)=spak1l5*abb6(52)
      abb6(52)=abb6(52)-abb6(59)
      abb6(52)=abb6(52)*abb6(36)
      abb6(13)=abb6(13)+abb6(52)
      abb6(13)=abb6(8)*abb6(13)
      abb6(52)=abb6(51)-abb6(50)
      abb6(56)=-abb6(76)*abb6(52)
      abb6(22)=abb6(2)*abb6(22)*spak2k4
      abb6(56)=2.0_ki*abb6(56)+4.0_ki*abb6(22)
      abb6(56)=spak1l5*abb6(56)
      abb6(32)=-abb6(32)*abb6(72)
      abb6(26)=-abb6(26)-abb6(62)
      abb6(26)=abb6(7)*abb6(26)*abb6(64)
      abb6(59)=-abb6(52)*abb6(36)
      abb6(61)=spak2k4*spbl6k2
      abb6(62)=-abb6(69)*abb6(61)
      abb6(59)=abb6(62)+abb6(59)
      abb6(59)=abb6(59)*abb6(53)
      abb6(13)=abb6(13)+abb6(59)+abb6(26)+abb6(32)+abb6(63)+abb6(56)
      abb6(13)=4.0_ki*abb6(13)
      abb6(26)=-abb6(52)*spak1k4
      abb6(26)=32.0_ki*abb6(26)
      abb6(32)=abb6(54)+abb6(67)
      abb6(32)=4.0_ki*abb6(32)
      abb6(24)=-4.0_ki*abb6(24)
      abb6(28)=abb6(30)+abb6(28)
      abb6(54)=spbl6k2*abb6(28)
      abb6(45)=abb6(54)-abb6(45)
      abb6(45)=spak2k4*abb6(45)
      abb6(34)=abb6(28)-abb6(34)
      abb6(54)=-abb6(34)*abb6(36)
      abb6(45)=abb6(45)+abb6(54)
      abb6(45)=spak1l6*abb6(45)
      abb6(16)=abb6(16)*abb6(6)*c2
      abb6(54)=abb6(73)*abb6(2)
      abb6(16)=abb6(16)-abb6(54)
      abb6(54)=-abb6(2)*abb6(16)
      abb6(54)=abb6(54)-abb6(57)
      abb6(25)=abb6(8)*abb6(54)*abb6(25)
      abb6(28)=abb6(28)*spak1l5
      abb6(28)=abb6(28)-abb6(35)
      abb6(35)=abb6(77)-abb6(76)
      abb6(28)=abb6(28)*abb6(35)
      abb6(35)=abb6(2)*c1
      abb6(17)=abb6(35)*abb6(17)
      abb6(17)=abb6(17)-abb6(23)
      abb6(23)=abb6(2)*abb6(17)
      abb6(23)=abb6(23)-abb6(71)
      abb6(23)=abb6(23)*abb6(72)
      abb6(23)=abb6(25)+abb6(23)+abb6(45)+abb6(28)
      abb6(23)=4.0_ki*abb6(23)
      abb6(25)=abb6(34)*spak1k4
      abb6(25)=16.0_ki*abb6(25)
      abb6(28)=abb6(15)*c1
      abb6(45)=abb6(15)*abb6(18)
      abb6(45)=abb6(28)-abb6(45)
      abb6(54)=abb6(15)*c2
      abb6(28)=abb6(28)*abb6(2)
      abb6(28)=abb6(54)-abb6(28)
      abb6(54)=abb6(28)*abb6(41)
      abb6(54)=abb6(54)-abb6(45)
      abb6(54)=abb6(54)*abb6(37)
      abb6(56)=-abb6(7)*abb6(54)
      abb6(19)=abb6(19)-abb6(21)
      abb6(14)=abb6(14)*abb6(19)
      abb6(19)=abb6(14)*spak1l5
      abb6(21)=abb6(21)*abb6(15)
      abb6(57)=abb6(21)*abb6(2)
      abb6(15)=abb6(15)*abb6(6)
      abb6(59)=abb6(15)*c2
      abb6(57)=abb6(57)-abb6(59)
      abb6(59)=abb6(57)*abb6(2)
      abb6(62)=abb6(59)-abb6(21)
      abb6(62)=abb6(62)*spbl6k2
      abb6(15)=abb6(15)*abb6(18)
      abb6(18)=abb6(15)*spbl6k2
      abb6(62)=abb6(62)+abb6(18)
      abb6(63)=-abb6(62)*abb6(53)
      abb6(56)=abb6(63)-3.0_ki*abb6(19)+abb6(56)
      abb6(56)=es34*abb6(56)
      abb6(28)=abb6(28)*abb6(2)
      abb6(28)=abb6(28)+abb6(45)
      abb6(28)=abb6(38)*abb6(28)*spbl6k2
      abb6(14)=abb6(14)*abb6(58)
      abb6(14)=abb6(28)-abb6(14)
      abb6(14)=abb6(14)*spak4l5
      abb6(28)=abb6(57)*abb6(41)
      abb6(28)=abb6(28)+abb6(21)
      abb6(28)=abb6(28)*spbl6k2
      abb6(18)=abb6(28)-abb6(18)
      abb6(18)=abb6(18)*abb6(75)
      abb6(28)=abb6(42)*NC
      abb6(28)=abb6(28)-abb6(40)
      abb6(28)=abb6(33)*abb6(28)
      abb6(33)=abb6(28)*abb6(80)
      abb6(14)=abb6(14)+abb6(18)-abb6(33)
      abb6(15)=abb6(15)-abb6(21)
      abb6(18)=es12*abb6(15)
      abb6(21)=-spbl6k1*abb6(28)
      abb6(18)=abb6(21)+abb6(18)
      abb6(18)=spak1k4*abb6(18)
      abb6(18)=abb6(18)-abb6(14)
      abb6(18)=spbk4k2*abb6(18)
      abb6(21)=abb6(35)-c2
      abb6(33)=-abb6(41)*abb6(21)
      abb6(33)=abb6(33)+abb6(70)
      abb6(12)=abb6(5)*abb6(12)
      abb6(10)=abb6(7)*abb6(37)*abb6(33)*abb6(12)*abb6(10)
      abb6(21)=abb6(2)*abb6(21)
      abb6(21)=abb6(21)+abb6(70)
      abb6(12)=abb6(53)*spbl6k2*abb6(21)*abb6(12)*abb6(55)
      abb6(21)=spak1k3*abb6(65)
      abb6(33)=abb6(79)*abb6(68)
      abb6(29)=-abb6(33)-abb6(29)
      abb6(29)=spak3l5*abb6(29)
      abb6(11)=abb6(55)*abb6(1)*abb6(70)*abb6(11)*spak1l5
      abb6(33)=-spak3l6*spak1k2*abb6(74)
      abb6(10)=abb6(33)+abb6(29)+abb6(56)+abb6(21)+abb6(12)+3.0_ki*abb6(11)+abb&
      &6(10)+abb6(18)
      abb6(10)=2.0_ki*abb6(10)
      abb6(11)=abb6(15)-abb6(59)
      abb6(12)=spbk4k2*spak1k4
      abb6(18)=-abb6(11)*abb6(12)
      abb6(21)=-spak1k3*abb6(52)
      abb6(18)=abb6(18)+abb6(21)
      abb6(18)=16.0_ki*abb6(18)
      abb6(9)=abb6(40)*abb6(9)
      abb6(21)=abb6(9)*abb6(2)
      abb6(21)=abb6(43)-abb6(21)
      abb6(21)=abb6(21)*abb6(2)
      abb6(9)=abb6(21)-abb6(9)+abb6(44)
      abb6(12)=abb6(9)*abb6(12)
      abb6(21)=-spak1k3*abb6(34)
      abb6(12)=abb6(12)+abb6(21)
      abb6(12)=8.0_ki*abb6(12)
      abb6(21)=abb6(54)*abb6(78)
      abb6(19)=abb6(19)*abb6(60)
      abb6(29)=abb6(62)*abb6(66)
      abb6(14)=abb6(29)+abb6(19)+abb6(21)+abb6(14)
      abb6(14)=spbk4k3*abb6(14)
      abb6(19)=-spak1k2*abb6(51)
      abb6(21)=spbk4k3*spak1k4
      abb6(15)=-abb6(15)*abb6(21)
      abb6(15)=abb6(19)+abb6(15)
      abb6(15)=es12*abb6(15)
      abb6(19)=abb6(68)*spbl6l5
      abb6(29)=spak1k2*abb6(46)
      abb6(19)=abb6(29)+abb6(19)
      abb6(19)=spak2l5*abb6(19)
      abb6(29)=spbl6k2*abb6(49)
      abb6(29)=abb6(29)-abb6(47)
      abb6(29)=abb6(29)*abb6(58)
      abb6(33)=-spak1k2*abb6(68)
      abb6(28)=abb6(28)*abb6(21)
      abb6(28)=abb6(33)+abb6(28)
      abb6(28)=spbl6k1*abb6(28)
      abb6(14)=3.0_ki*abb6(19)+abb6(28)+abb6(15)+abb6(29)+abb6(14)
      abb6(14)=2.0_ki*abb6(14)
      abb6(11)=abb6(11)*abb6(21)
      abb6(15)=spak1k2*abb6(52)
      abb6(11)=abb6(15)+abb6(11)
      abb6(11)=16.0_ki*abb6(11)
      abb6(9)=-abb6(9)*abb6(21)
      abb6(15)=spak1k2*abb6(34)
      abb6(9)=abb6(15)+abb6(9)
      abb6(9)=8.0_ki*abb6(9)
      abb6(15)=-spak2l5*abb6(8)*abb6(16)
      abb6(15)=abb6(17)+abb6(15)
      abb6(15)=spak3k4*abb6(2)*abb6(15)
      abb6(16)=abb6(61)-abb6(36)
      abb6(17)=-spal5l6*abb6(30)*abb6(16)
      abb6(15)=abb6(17)+abb6(15)
      abb6(15)=4.0_ki*abb6(15)
      abb6(17)=-8.0_ki*abb6(52)
      abb6(19)=spak3k4*abb6(17)
      abb6(21)=4.0_ki*abb6(34)
      abb6(28)=-spak3k4*abb6(21)
      abb6(16)=-abb6(27)*abb6(16)
      abb6(27)=-abb6(50)*abb6(76)
      abb6(22)=-abb6(22)+abb6(27)
      abb6(22)=spak2l5*abb6(22)
      abb6(16)=abb6(22)+abb6(16)
      abb6(16)=4.0_ki*abb6(16)
      abb6(17)=-spak2k4*abb6(17)
      abb6(21)=spak2k4*abb6(21)
      R2d6=abb6(31)
      rat2 = rat2 + R2d6
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='6' value='", &
          & R2d6, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbar_abbrevd6h2
