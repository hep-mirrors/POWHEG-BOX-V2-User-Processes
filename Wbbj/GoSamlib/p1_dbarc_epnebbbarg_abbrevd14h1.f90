module     p1_dbarc_epnebbbarg_abbrevd14h1
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(80), public :: abb14
   complex(ki), public :: R2d14
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
      abb14(1)=1.0_ki/(-es71+es712-es12)
      abb14(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb14(3)=NC**(-1)
      abb14(4)=es56**(-1)
      abb14(5)=spak2l5**(-1)
      abb14(6)=spbl6k2**(-1)
      abb14(7)=c1*abb14(3)
      abb14(8)=c4*abb14(3)**2
      abb14(7)=abb14(7)-abb14(8)
      abb14(8)=TR*gW
      abb14(7)=abb14(7)*abb14(8)**2*abb14(4)*i_*CVDC*abb14(2)*abb14(1)
      abb14(8)=-spbe7k2*abb14(7)
      abb14(9)=abb14(8)*spae7k7
      abb14(10)=abb14(9)*spbk7k2
      abb14(11)=mB**2*abb14(6)*abb14(5)
      abb14(12)=abb14(11)*spak1k4
      abb14(13)=abb14(10)*abb14(12)
      abb14(14)=abb14(13)*spbk4k3
      abb14(15)=spak2k4*abb14(14)
      abb14(16)=abb14(9)*spbk7l5
      abb14(17)=abb14(16)*spak4l6
      abb14(18)=spbk4k3*spak1k4
      abb14(19)=abb14(17)*abb14(18)
      abb14(15)=abb14(19)+abb14(15)
      abb14(15)=es71*abb14(15)
      abb14(13)=abb14(13)*spak1k2
      abb14(19)=abb14(16)*spak1l6
      abb14(20)=abb14(19)*spak1k4
      abb14(13)=abb14(13)-abb14(20)
      abb14(20)=-spbk3k1*es71*abb14(13)
      abb14(21)=abb14(9)*spak1k2
      abb14(22)=abb14(21)*spbl5k2
      abb14(23)=abb14(22)*spbk7k1
      abb14(24)=-spbk3k1*spak1l6*spak1k4
      abb14(25)=-spak4l6*abb14(18)
      abb14(24)=abb14(24)+abb14(25)
      abb14(24)=abb14(24)*abb14(23)
      abb14(15)=abb14(24)+abb14(20)+abb14(15)
      abb14(15)=4.0_ki*abb14(15)
      abb14(20)=abb14(7)*spak1k7
      abb14(24)=spbk7k3*abb14(20)*abb14(12)
      abb14(25)=abb14(7)*spak1k4
      abb14(26)=spak1l6*spbl5k3
      abb14(27)=abb14(26)*abb14(25)
      abb14(24)=abb14(24)+abb14(27)
      abb14(27)=es71+es12
      abb14(28)=abb14(24)*abb14(27)
      abb14(29)=spak1k4**2
      abb14(30)=abb14(29)*abb14(7)
      abb14(31)=abb14(11)*es12
      abb14(32)=-abb14(31)*abb14(30)
      abb14(30)=abb14(30)*abb14(11)
      abb14(33)=-es71*abb14(30)
      abb14(32)=abb14(32)+abb14(33)
      abb14(32)=spbk4k3*abb14(32)
      abb14(30)=spbk4k3*abb14(30)
      abb14(24)=abb14(30)-abb14(24)
      abb14(24)=es712*abb14(24)
      abb14(24)=abb14(24)+abb14(32)+abb14(28)
      abb14(24)=spbk2k1*abb14(24)
      abb14(28)=abb14(11)*spbk3k2
      abb14(30)=abb14(28)*abb14(7)
      abb14(32)=spbk7k3*spak1k7
      abb14(33)=abb14(32)*abb14(30)
      abb14(34)=abb14(7)*spbl5k3
      abb14(35)=abb14(34)*spak1l6
      abb14(36)=abb14(35)*spbk3k2
      abb14(33)=abb14(33)-abb14(36)
      abb14(36)=abb14(33)*abb14(27)
      abb14(34)=spal6k7*abb14(34)*spbk7k2
      abb14(37)=spbk3k2*spak1k2
      abb14(38)=abb14(32)+abb14(37)
      abb14(39)=abb14(38)*abb14(34)
      abb14(36)=abb14(39)+abb14(36)
      abb14(36)=spak3k4*abb14(36)
      abb14(33)=-spak3k4*abb14(33)
      abb14(39)=spbl5k1*spak1l6
      abb14(40)=spbk3k2*abb14(39)*abb14(25)
      abb14(41)=abb14(25)*abb14(28)
      abb14(42)=abb14(41)*es71
      abb14(33)=abb14(33)-abb14(40)+abb14(42)
      abb14(33)=es712*abb14(33)
      abb14(43)=abb14(41)*es12
      abb14(43)=abb14(43)+abb14(42)
      abb14(44)=abb14(40)-abb14(43)
      abb14(44)=es71*abb14(44)
      abb14(45)=abb14(38)*spbl5k1
      abb14(46)=abb14(27)*spbl5k3
      abb14(46)=abb14(45)+abb14(46)
      abb14(47)=abb14(25)*spbk7k2
      abb14(48)=-spal6k7*abb14(47)*abb14(46)
      abb14(20)=abb14(20)*spbk7k2
      abb14(49)=abb14(12)*es12
      abb14(50)=abb14(20)*abb14(49)
      abb14(51)=abb14(47)*abb14(39)
      abb14(52)=-spak1k7*abb14(51)
      abb14(50)=abb14(50)+abb14(52)
      abb14(50)=spbk3k1*abb14(50)
      abb14(52)=abb14(7)*spbk7k2
      abb14(53)=abb14(52)*abb14(49)
      abb14(51)=abb14(53)-abb14(51)
      abb14(51)=spak4k7*abb14(51)
      abb14(53)=abb14(29)*spbl5k1
      abb14(54)=abb14(53)*spal6k7
      abb14(55)=abb14(52)*abb14(54)
      abb14(51)=abb14(55)+abb14(51)
      abb14(51)=spbk4k3*abb14(51)
      abb14(40)=es12*abb14(40)
      abb14(24)=abb14(24)+abb14(33)+abb14(51)+abb14(50)+abb14(36)+abb14(48)+abb&
      &14(40)+abb14(44)
      abb14(24)=8.0_ki*abb14(24)
      abb14(33)=abb14(8)*spak1k4
      abb14(36)=abb14(39)*abb14(33)
      abb14(40)=abb14(33)*abb14(11)
      abb14(44)=abb14(40)*es12
      abb14(36)=abb14(36)-abb14(44)
      abb14(48)=abb14(36)*spak4e7
      abb14(50)=abb14(53)*abb14(8)
      abb14(51)=spal6e7*abb14(50)
      abb14(48)=abb14(48)-abb14(51)
      abb14(48)=abb14(48)*spbk4k3
      abb14(51)=spak1e7*spbk3k1
      abb14(53)=abb14(36)*abb14(51)
      abb14(48)=abb14(48)+abb14(53)
      abb14(53)=abb14(8)*spak1k2
      abb14(55)=spbl5k3*abb14(53)*spbk3k2
      abb14(56)=abb14(8)*spbl5k3
      abb14(57)=abb14(32)*abb14(56)
      abb14(55)=abb14(55)+abb14(57)
      abb14(57)=abb14(55)*spak3k4
      abb14(45)=abb14(33)*abb14(45)
      abb14(58)=abb14(33)*spbl5k3
      abb14(59)=abb14(58)*abb14(27)
      abb14(45)=abb14(45)+abb14(59)
      abb14(57)=abb14(57)-abb14(45)
      abb14(59)=spal6e7*abb14(57)
      abb14(59)=abb14(59)-abb14(48)
      abb14(59)=8.0_ki*abb14(59)
      abb14(60)=abb14(10)*abb14(11)
      abb14(61)=abb14(60)*spak2k4
      abb14(61)=abb14(61)+abb14(17)
      abb14(62)=abb14(32)*abb14(61)
      abb14(63)=abb14(9)*spbk7k3
      abb14(64)=abb14(63)*spbl5k2*spak1k2
      abb14(65)=abb14(64)*spak4l6
      abb14(62)=abb14(62)+abb14(65)
      abb14(66)=8.0_ki*abb14(62)
      abb14(67)=abb14(30)*spak1k2
      abb14(35)=abb14(67)+abb14(35)
      abb14(67)=abb14(35)*spak4k7
      abb14(68)=abb14(67)*spbk7k2
      abb14(69)=abb14(41)*es712
      abb14(70)=spal6k7*spbl5k3
      abb14(71)=abb14(70)*abb14(47)
      abb14(43)=-abb14(43)+abb14(68)+abb14(69)-abb14(71)
      abb14(68)=16.0_ki*abb14(43)
      abb14(69)=abb14(11)*abb14(8)
      abb14(71)=abb14(37)*abb14(69)
      abb14(72)=abb14(56)*spak1l6
      abb14(71)=abb14(71)+abb14(72)
      abb14(73)=abb14(71)*spak4e7
      abb14(74)=abb14(58)*spal6e7
      abb14(73)=abb14(73)-abb14(74)
      abb14(74)=16.0_ki*abb14(73)
      abb14(21)=abb14(21)*abb14(28)
      abb14(75)=abb14(9)*abb14(11)
      abb14(76)=-abb14(32)*abb14(75)
      abb14(76)=-abb14(21)+abb14(76)
      abb14(76)=spbk7k3*abb14(76)
      abb14(55)=-spal6e7*abb14(55)
      abb14(55)=abb14(76)+abb14(55)
      abb14(55)=spak3k4*abb14(55)
      abb14(45)=spal6e7*abb14(45)
      abb14(76)=abb14(49)*abb14(63)
      abb14(77)=spak1k4*abb14(21)
      abb14(78)=-spbk7k1*abb14(77)
      abb14(45)=abb14(78)+abb14(55)-abb14(76)+abb14(45)+abb14(48)
      abb14(45)=8.0_ki*abb14(45)
      abb14(48)=32.0_ki*abb14(20)
      abb14(48)=-spbk3k1*abb14(12)*abb14(48)
      abb14(40)=abb14(51)*abb14(40)
      abb14(40)=32.0_ki*abb14(40)
      abb14(13)=-spbk3k1*abb14(13)
      abb14(55)=abb14(60)*abb14(32)
      abb14(14)=-abb14(55)+abb14(14)
      abb14(14)=spak2k4*abb14(14)
      abb14(18)=-abb14(32)+abb14(18)
      abb14(17)=abb14(18)*abb14(17)
      abb14(18)=abb14(10)*spak2l6
      abb14(78)=-spbl5k3*spak1k4*abb14(18)
      abb14(13)=-abb14(65)+abb14(17)+abb14(78)+abb14(13)+abb14(14)
      abb14(13)=8.0_ki*abb14(13)
      abb14(14)=abb14(12)*abb14(63)
      abb14(14)=abb14(14)+abb14(73)
      abb14(14)=16.0_ki*abb14(14)
      abb14(17)=abb14(26)*abb14(9)
      abb14(21)=abb14(21)+abb14(17)
      abb14(65)=spak3k4*spbk7k3
      abb14(21)=abb14(21)*abb14(65)
      abb14(17)=spak1k4*abb14(17)
      abb14(17)=abb14(77)+abb14(17)
      abb14(17)=spbk7k1*abb14(17)
      abb14(77)=abb14(63)*spak1k4
      abb14(78)=-abb14(39)*abb14(77)
      abb14(17)=abb14(17)+abb14(21)+abb14(76)+abb14(78)+abb14(62)
      abb14(17)=4.0_ki*abb14(17)
      abb14(21)=8.0_ki*abb14(43)
      abb14(43)=8.0_ki*abb14(73)
      abb14(25)=abb14(25)*spbk7e7
      abb14(62)=-spbk3k2*abb14(25)
      abb14(73)=-spbk7k3*abb14(33)
      abb14(62)=abb14(62)+abb14(73)
      abb14(62)=abb14(62)*abb14(39)
      abb14(73)=abb14(7)*spbk7e7
      abb14(76)=abb14(73)*spak1k7
      abb14(78)=-abb14(28)*abb14(76)
      abb14(78)=abb14(78)+abb14(71)
      abb14(78)=spbk7k3*abb14(78)
      abb14(79)=spbk3k2*abb14(73)*abb14(26)
      abb14(78)=abb14(79)+abb14(78)
      abb14(78)=spak3k4*abb14(78)
      abb14(79)=-abb14(12)*abb14(32)
      abb14(29)=spbk4k3*abb14(29)*abb14(11)
      abb14(29)=abb14(29)+abb14(79)
      abb14(29)=abb14(73)*abb14(29)
      abb14(79)=-abb14(26)*abb14(25)
      abb14(29)=abb14(79)+abb14(29)
      abb14(29)=spbk2k1*abb14(29)
      abb14(79)=abb14(33)*spak1k2
      abb14(80)=abb14(28)*abb14(79)
      abb14(26)=abb14(33)*abb14(26)
      abb14(26)=abb14(80)+abb14(26)
      abb14(26)=spbk7k1*abb14(26)
      abb14(44)=spbk7k3*abb14(44)
      abb14(42)=spbk7e7*abb14(42)
      abb14(26)=abb14(26)+abb14(29)+abb14(78)+abb14(42)+abb14(44)+abb14(62)
      abb14(26)=spak2k7*abb14(26)
      abb14(29)=abb14(25)*abb14(46)
      abb14(42)=spak3k4*spbl5k3
      abb14(44)=-abb14(73)*abb14(38)*abb14(42)
      abb14(29)=abb14(44)+abb14(29)
      abb14(29)=spal6k7*abb14(29)
      abb14(44)=-abb14(73)*abb14(49)
      abb14(46)=abb14(25)*abb14(39)
      abb14(44)=abb14(44)+abb14(46)
      abb14(44)=spak4k7*abb14(44)
      abb14(36)=spak2k4*abb14(36)
      abb14(46)=-abb14(73)*abb14(54)
      abb14(36)=abb14(36)+abb14(46)+abb14(44)
      abb14(36)=spbk4k3*abb14(36)
      abb14(44)=abb14(11)*spak1k2
      abb14(46)=abb14(44)*abb14(33)
      abb14(54)=abb14(76)*abb14(12)
      abb14(46)=abb14(46)-abb14(54)
      abb14(54)=es12*abb14(46)
      abb14(62)=abb14(25)*spak1k7
      abb14(62)=abb14(62)-abb14(79)
      abb14(78)=abb14(62)*abb14(39)
      abb14(54)=abb14(54)+abb14(78)
      abb14(54)=spbk3k1*abb14(54)
      abb14(50)=-spbk4k3*abb14(50)
      abb14(50)=abb14(50)-abb14(57)
      abb14(50)=spak2l6*abb14(50)
      abb14(26)=abb14(50)+abb14(54)+abb14(26)+abb14(36)+abb14(29)
      abb14(26)=4.0_ki*abb14(26)
      abb14(29)=abb14(41)*spak2k7
      abb14(29)=abb14(29)-abb14(67)
      abb14(29)=spbk7e7*abb14(29)
      abb14(36)=abb14(71)*spak2k4
      abb14(41)=abb14(58)*spak2l6
      abb14(50)=abb14(70)*abb14(25)
      abb14(29)=abb14(41)-abb14(36)+abb14(50)+abb14(29)
      abb14(36)=8.0_ki*abb14(29)
      abb14(41)=16.0_ki*spbk3k1
      abb14(46)=-abb14(46)*abb14(41)
      abb14(29)=4.0_ki*abb14(29)
      abb14(38)=abb14(65)*abb14(9)*abb14(38)
      abb14(50)=es12*abb14(77)
      abb14(54)=abb14(9)*spbk7k1
      abb14(57)=abb14(54)*spak1k4
      abb14(37)=abb14(37)*abb14(57)
      abb14(37)=abb14(37)+abb14(50)+abb14(38)
      abb14(37)=4.0_ki*abb14(37)
      abb14(38)=abb14(41)*abb14(47)*spak1k7
      abb14(41)=abb14(51)*abb14(33)
      abb14(41)=16.0_ki*abb14(41)
      abb14(50)=-8.0_ki*abb14(77)
      abb14(51)=-8.0_ki*spbk3k1*abb14(62)
      abb14(58)=abb14(10)*abb14(44)
      abb14(19)=abb14(58)-abb14(19)
      abb14(62)=es71*abb14(19)
      abb14(65)=-spak1k7*abb14(61)
      abb14(22)=-spak4l6*abb14(22)
      abb14(22)=abb14(22)+abb14(65)
      abb14(22)=spbk7k4*abb14(22)
      abb14(32)=-abb14(32)*abb14(16)
      abb14(32)=abb14(32)-abb14(64)
      abb14(32)=spak3l6*abb14(32)
      abb14(23)=spak1l6*abb14(23)
      abb14(55)=-spak2k3*abb14(55)
      abb14(22)=abb14(55)+abb14(32)+abb14(22)+abb14(23)+abb14(62)
      abb14(22)=4.0_ki*abb14(22)
      abb14(23)=spbk7l5*spal6k7
      abb14(32)=-es71*abb14(11)
      abb14(31)=abb14(23)+abb14(32)-2.0_ki*abb14(31)+abb14(39)
      abb14(31)=abb14(20)*abb14(31)
      abb14(32)=abb14(7)*spak1l6
      abb14(55)=-abb14(32)*abb14(27)
      abb14(62)=spal6k7*spak1k2
      abb14(64)=abb14(52)*abb14(62)
      abb14(55)=abb14(64)+abb14(55)
      abb14(55)=spbl5k2*abb14(55)
      abb14(64)=abb14(20)*abb14(11)
      abb14(65)=spbl5k2*abb14(32)
      abb14(65)=abb14(64)+abb14(65)
      abb14(65)=es712*abb14(65)
      abb14(47)=spal6k7*abb14(47)
      abb14(32)=-spak4k7*spbk7k2*abb14(32)
      abb14(32)=abb14(47)+abb14(32)
      abb14(32)=spbl5k4*abb14(32)
      abb14(27)=-es712+abb14(27)
      abb14(27)=abb14(30)*abb14(27)
      abb14(27)=abb14(34)+abb14(27)
      abb14(27)=spak1k3*abb14(27)
      abb14(30)=es712-es71
      abb14(34)=-abb14(12)*abb14(30)
      abb14(34)=abb14(49)+abb14(34)
      abb14(7)=abb14(7)*abb14(34)
      abb14(34)=-abb14(52)*abb14(44)*spak4k7
      abb14(7)=abb14(34)+abb14(7)
      abb14(7)=spbk4k2*abb14(7)
      abb14(34)=abb14(35)*spak3k7
      abb14(35)=-spbk7k2*abb14(34)
      abb14(7)=abb14(35)+abb14(7)+abb14(27)+abb14(32)+abb14(65)+abb14(55)+abb14&
      &(31)
      abb14(7)=8.0_ki*abb14(7)
      abb14(27)=abb14(53)*spbl5k2
      abb14(31)=abb14(56)*spak1k3
      abb14(32)=abb14(8)*spbk7l5
      abb14(35)=abb14(32)*spak1k7
      abb14(27)=abb14(35)+abb14(27)+abb14(31)
      abb14(27)=abb14(27)*spal6e7
      abb14(31)=abb14(33)*spal6e7
      abb14(47)=abb14(8)*spak1l6
      abb14(49)=abb14(47)*spak4e7
      abb14(31)=abb14(31)-abb14(49)
      abb14(31)=abb14(31)*spbl5k4
      abb14(49)=abb14(69)*es12
      abb14(52)=abb14(39)*abb14(8)
      abb14(49)=abb14(49)-abb14(52)
      abb14(49)=abb14(49)*spak1e7
      abb14(52)=abb14(71)*spak3e7
      abb14(55)=abb14(69)*spak1k2
      abb14(65)=spak4e7*abb14(55)*spbk4k2
      abb14(27)=abb14(49)-abb14(27)-abb14(31)+abb14(65)+abb14(52)
      abb14(31)=-8.0_ki*abb14(27)
      abb14(27)=abb14(58)+abb14(27)
      abb14(27)=8.0_ki*abb14(27)
      abb14(49)=32.0_ki*abb14(64)
      abb14(52)=abb14(69)*spak1e7
      abb14(52)=32.0_ki*abb14(52)
      abb14(58)=8.0_ki*abb14(19)
      abb14(19)=-4.0_ki*abb14(19)
      abb14(25)=-spal6k7*abb14(25)
      abb14(64)=abb14(73)*spak4k7
      abb14(65)=spak1l6*abb14(64)
      abb14(47)=spak2k4*abb14(47)
      abb14(33)=-spak2l6*abb14(33)
      abb14(25)=abb14(33)+abb14(47)+abb14(25)+abb14(65)
      abb14(25)=spbl5k4*abb14(25)
      abb14(33)=-abb14(73)*abb14(62)
      abb14(47)=abb14(73)*spak2k7
      abb14(62)=spak1l6*abb14(47)
      abb14(65)=-spak2l6*abb14(53)
      abb14(33)=abb14(65)+abb14(33)+abb14(62)
      abb14(33)=spbl5k2*abb14(33)
      abb14(62)=-abb14(73)*abb14(70)
      abb14(28)=-abb14(28)*abb14(47)
      abb14(56)=-spak2l6*abb14(56)
      abb14(28)=abb14(56)+abb14(62)+abb14(28)
      abb14(28)=spak1k3*abb14(28)
      abb14(56)=abb14(76)*abb14(11)
      abb14(56)=abb14(56)-abb14(55)
      abb14(30)=2.0_ki*es12-abb14(30)
      abb14(30)=abb14(56)*abb14(30)
      abb14(53)=abb14(76)-abb14(53)
      abb14(39)=-abb14(53)*abb14(39)
      abb14(44)=abb14(44)*abb14(64)
      abb14(47)=-abb14(12)*abb14(47)
      abb14(44)=abb14(44)+abb14(47)
      abb14(44)=spbk4k2*abb14(44)
      abb14(34)=spbk7e7*abb14(34)
      abb14(47)=-es234+es34
      abb14(47)=abb14(55)*abb14(47)
      abb14(23)=-abb14(76)*abb14(23)
      abb14(32)=spak2k7*spak1l6*abb14(32)
      abb14(35)=-spak2l6*abb14(35)
      abb14(55)=spak2k3*abb14(72)
      abb14(23)=abb14(55)+abb14(34)+abb14(44)+abb14(28)+abb14(25)+abb14(33)+abb&
      &14(35)+abb14(32)+abb14(23)+abb14(39)+abb14(30)+abb14(47)
      abb14(23)=4.0_ki*abb14(23)
      abb14(25)=-16.0_ki*abb14(56)
      abb14(28)=4.0_ki*abb14(10)
      abb14(28)=-spak1k2*abb14(28)
      abb14(20)=-16.0_ki*abb14(20)
      abb14(8)=abb14(8)*spak1e7
      abb14(8)=16.0_ki*abb14(8)
      abb14(30)=8.0_ki*abb14(53)
      abb14(32)=8.0_ki*abb14(75)
      abb14(9)=-4.0_ki*abb14(9)
      abb14(18)=-4.0_ki*abb14(18)
      abb14(33)=4.0_ki*abb14(61)
      abb14(34)=spbl5k1*spak1k4
      abb14(34)=abb14(34)-abb14(42)
      abb14(35)=4.0_ki*spak2l6
      abb14(10)=abb14(35)*abb14(10)*abb14(34)
      abb14(34)=8.0_ki*abb14(61)
      abb14(35)=abb14(63)*spak3k4
      abb14(11)=abb14(11)*abb14(35)
      abb14(12)=-abb14(12)*abb14(54)
      abb14(11)=abb14(11)+abb14(12)
      abb14(11)=8.0_ki*abb14(11)
      abb14(12)=-abb14(35)+abb14(57)
      abb14(12)=4.0_ki*abb14(12)
      abb14(35)=abb14(60)*spak2k3
      abb14(16)=spak3l6*abb14(16)
      abb14(16)=abb14(16)+abb14(35)
      abb14(16)=4.0_ki*abb14(16)
      R2d14=0.0_ki
      rat2 = rat2 + R2d14
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='14' value='", &
          & R2d14, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd14h1