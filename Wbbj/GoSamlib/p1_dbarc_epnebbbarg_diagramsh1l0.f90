module     p1_dbarc_epnebbbarg_diagramsh1l0
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity1diagramsl0.f90
   ! generator: buildfortranborn.py
   use p1_dbarc_epnebbbarg_color, only: numcs
   use p1_dbarc_epnebbbarg_config, only: ki
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   complex(ki), dimension(numcs), parameter :: zero_col = 0.0_ki
   public :: amplitude
contains
!---#[ function amplitude:
   function amplitude()
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_config, only: debug_lo_diagrams, &
        & use_sorted_sum
      use p1_dbarc_epnebbbarg_accu, only: sorted_sum
      use p1_dbarc_epnebbbarg_util, only: inspect_lo_diagram
      implicit none
      complex(ki), dimension(numcs) :: amplitude
      complex(ki), dimension(83) :: abb
!      complex(ki), dimension(2,numcs) :: diagrams
      integer :: i
      amplitude(:) = 0.0_ki
      abb(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb(2)=NC**(-1)
      abb(3)=es234**(-1)
      abb(4)=es56**(-1)
      abb(5)=es71**(-1)
      abb(6)=spak2l5**(-1)
      abb(7)=spbl6k2**(-1)
      abb(8)=1.0_ki/(-es71+es56-es567+es234)
      abb(9)=spak2l6**(-1)
      abb(10)=1.0_ki/(es71+es34+es56-es712-es234)
      abb(11)=1.0_ki/(es34+es567-es12-es234)
      abb(12)=1.0_ki/(-es71+es712-es12)
      abb(13)=es567**(-1)
      abb(14)=spbl5k2**(-1)
      abb(15)=1.0_ki/(-mB**2+es67)
      abb(16)=sqrt(mB**2)
      abb(17)=1.0_ki/(mB**2-es67-es56+es567)
      abb(18)=abb(5)*spbe7k1
      abb(19)=spak1l6*spak2k4
      abb(20)=abb(18)*abb(19)
      abb(21)=abb(5)*spbk7e7
      abb(22)=abb(21)*spal6k7
      abb(23)=abb(22)*spak2k4
      abb(20)=abb(20)-abb(23)
      abb(23)=spbl5k2*spak1e7
      abb(20)=abb(20)*abb(23)
      abb(24)=spak1e7*spbl5k1
      abb(25)=spal6e7*spbl6l5
      abb(24)=abb(24)+abb(25)
      abb(26)=abb(19)*abb(8)
      abb(27)=spbe7k2*abb(24)*abb(26)
      abb(28)=spbl5k3*abb(18)
      abb(29)=abb(8)*spbe7k3*spbl5k1
      abb(28)=abb(28)+abb(29)
      abb(28)=spak1l6*abb(28)
      abb(22)=abb(22)*spbl5k3
      abb(28)=-abb(22)+abb(28)
      abb(29)=spak1e7*spak3k4
      abb(28)=abb(28)*abb(29)
      abb(30)=spak1l6*abb(8)
      abb(31)=spak3k4*spbe7k3
      abb(32)=abb(30)*abb(31)
      abb(25)=abb(32)*abb(25)
      abb(25)=-abb(27)+abb(25)+abb(28)-abb(20)
      abb(25)=abb(3)*abb(25)
      abb(28)=spbk7e7*spak4k7
      abb(33)=spak1e7*abb(10)
      abb(34)=abb(33)*abb(5)
      abb(35)=abb(28)*abb(34)
      abb(36)=abb(35)*spbl5k2
      abb(34)=abb(34)*spbe7k1
      abb(37)=spbl5k2*abb(34)
      abb(38)=abb(37)*spak1k4
      abb(38)=abb(38)-abb(36)
      abb(38)=abb(38)*spak2l6
      abb(25)=abb(25)-abb(38)
      abb(25)=abb(2)*abb(25)
      abb(39)=spak1k2*abb(8)
      abb(40)=spal6e7*abb(39)
      abb(41)=abb(40)*abb(31)
      abb(42)=abb(32)*spak2e7
      abb(41)=abb(41)+abb(42)
      abb(43)=-abb(2)*abb(41)
      abb(44)=abb(31)*spbl5k2*abb(39)*spal5e7
      abb(45)=abb(8)*es12
      abb(46)=abb(31)*spak1e7
      abb(47)=abb(45)*abb(46)
      abb(44)=abb(44)+abb(47)
      abb(47)=abb(7)*abb(2)
      abb(48)=-abb(44)*abb(47)
      abb(49)=spbl5k2*spak2k4
      abb(50)=abb(49)*spal5e7
      abb(51)=abb(39)*abb(50)
      abb(52)=spak1e7*spak2k4
      abb(53)=abb(45)*abb(52)
      abb(51)=abb(51)+abb(53)
      abb(53)=abb(51)*abb(47)
      abb(40)=abb(40)*spak2k4
      abb(54)=abb(2)*abb(40)
      abb(53)=abb(54)+abb(53)
      abb(53)=spbe7k2*abb(53)
      abb(43)=abb(53)+abb(43)+abb(48)
      abb(43)=abb(6)*abb(43)
      abb(42)=abb(42)*abb(9)
      abb(48)=abb(47)*spbl5k2
      abb(53)=-abb(48)*abb(42)
      abb(43)=abb(53)+abb(43)
      abb(43)=abb(3)*abb(43)
      abb(53)=abb(48)*abb(34)
      abb(54)=spak2l6*abb(34)
      abb(55)=abb(6)*abb(2)
      abb(56)=abb(55)*abb(54)
      abb(53)=abb(53)+abb(56)
      abb(53)=spak1k4*abb(53)
      abb(56)=-abb(48)*abb(35)
      abb(57)=abb(35)*spak2l6
      abb(58)=-abb(57)*abb(55)
      abb(43)=abb(43)+abb(53)+abb(56)+abb(58)
      abb(53)=mB**2
      abb(43)=abb(43)*abb(53)
      abb(21)=abb(21)*spak2k7
      abb(56)=abb(18)*spak1k2
      abb(21)=abb(21)-abb(56)
      abb(56)=abb(53)*abb(3)
      abb(58)=abb(56)*spbk3k2
      abb(21)=abb(21)*abb(58)*abb(29)
      abb(59)=-abb(6)*abb(47)*abb(21)
      abb(25)=abb(59)+abb(43)+abb(25)
      abb(25)=spbk3k2*abb(25)
      abb(43)=spak1l6*spbk3k1
      abb(59)=spbk4k3*spak4l6
      abb(60)=abb(43)+abb(59)
      abb(61)=spae7k7*abb(12)
      abb(62)=abb(60)*abb(61)*spbk7l5
      abb(33)=abb(33)*spbk3k1
      abb(63)=spbk4k3*spak4e7
      abb(64)=abb(63)*abb(10)
      abb(33)=abb(33)+abb(64)
      abb(64)=spak2l6*abb(33)
      abb(65)=-spbl5k2*abb(64)
      abb(65)=abb(65)+abb(62)
      abb(65)=abb(11)*abb(65)
      abb(66)=abb(61)*spbk7k3
      abb(30)=abb(66)*abb(30)
      abb(67)=abb(30)*spbl5k1
      abb(65)=abb(67)+abb(65)
      abb(65)=spbe7k2*abb(65)
      abb(68)=spbl5k3*spal5l6
      abb(37)=abb(68)*abb(37)
      abb(69)=abb(33)*spbe7l5*spal5l6
      abb(70)=abb(11)*spbl5k2
      abb(71)=abb(69)*abb(70)
      abb(65)=abb(65)-abb(37)+abb(71)
      abb(65)=spak1k4*abb(2)*abb(65)
      abb(26)=abb(26)*abb(66)
      abb(39)=abb(39)*abb(66)
      abb(71)=spak4l6*abb(39)
      abb(71)=abb(71)-abb(26)
      abb(71)=abb(2)*abb(71)
      abb(72)=spak4l5*abb(48)*abb(39)
      abb(71)=abb(71)+abb(72)
      abb(71)=abb(6)*abb(71)
      abb(72)=abb(26)*abb(9)
      abb(73)=-abb(48)*abb(72)
      abb(71)=abb(73)+abb(71)
      abb(71)=spbe7k2*abb(71)
      abb(73)=abb(2)*abb(64)
      abb(74)=spbk3k1*spak1k2
      abb(75)=spak2k4*spbk4k3
      abb(74)=abb(74)-abb(75)
      abb(61)=abb(74)*abb(61)*spbk7k2
      abb(74)=-abb(61)*abb(47)
      abb(73)=abb(73)+abb(74)
      abb(73)=abb(11)*abb(73)
      abb(45)=abb(66)*abb(45)
      abb(66)=-abb(47)*abb(45)
      abb(66)=abb(66)+abb(73)
      abb(66)=abb(6)*abb(66)
      abb(48)=abb(48)*abb(11)
      abb(73)=abb(33)*abb(48)
      abb(66)=abb(73)+abb(66)
      abb(73)=spak1k4*spbe7k2
      abb(66)=abb(66)*abb(73)
      abb(66)=abb(71)+abb(66)
      abb(66)=abb(66)*abb(53)
      abb(30)=abb(30)*spbe7k2*spak4l6*spbl6l5
      abb(36)=abb(68)*abb(36)
      abb(68)=abb(36)-abb(30)
      abb(68)=abb(2)*abb(68)
      abb(25)=abb(25)+abb(66)+abb(65)+abb(68)
      abb(65)=i_*TR*CVDC*abb(1)*gW**2
      abb(66)=4.0_ki*abb(65)
      abb(25)=abb(4)*abb(25)*abb(66)
      abb(68)=spak3k4*spbl5k3
      abb(49)=abb(68)-abb(49)
      abb(68)=spak1l6*spbe7l5
      abb(71)=abb(68)*spal5e7
      abb(49)=abb(49)*abb(71)
      abb(74)=spal6k7*spbk7l5
      abb(75)=abb(46)*abb(74)
      abb(52)=abb(52)*spbe7k2
      abb(76)=abb(52)*abb(74)
      abb(49)=abb(76)+abb(49)-abb(75)
      abb(75)=spbk7k3*spak1k7
      abb(76)=spbl5k3*spak1l5
      abb(75)=abb(75)-abb(76)
      abb(75)=abb(75)*spbe7l5
      abb(76)=spbe7l5*spbl6k3
      abb(77)=2.0_ki*spbe7l6
      abb(78)=abb(77)*spbl5k3
      abb(76)=abb(76)-abb(78)
      abb(76)=abb(76)*spak1l6
      abb(75)=abb(75)-abb(76)
      abb(75)=abb(75)*spak3k4
      abb(76)=abb(77)*abb(19)
      abb(78)=spbe7l5*spak2k4
      abb(79)=abb(78)*spak1l5
      abb(76)=abb(76)-abb(79)
      abb(76)=abb(76)*spbl5k2
      abb(79)=spbk7k2*spak1k7
      abb(78)=abb(79)*abb(78)
      abb(80)=abb(68)*spbl6k2
      abb(81)=spak2k4*abb(80)
      abb(75)=abb(75)-abb(76)+abb(81)-abb(78)
      abb(75)=abb(75)*spal6e7
      abb(49)=abb(75)+2.0_ki*abb(49)
      abb(49)=abb(49)*abb(3)
      abb(46)=abb(52)-abb(46)
      abb(52)=abb(6)*abb(7)
      abb(75)=2.0_ki*abb(56)
      abb(76)=-es712+es12+es71
      abb(46)=abb(75)*abb(46)*abb(76)*abb(52)
      abb(75)=spbe7l5*spal5e7
      abb(78)=spak3k4*spak1k2
      abb(81)=abb(75)*abb(78)
      abb(78)=abb(78)*spal6e7
      abb(82)=abb(78)*spbe7l6
      abb(81)=abb(81)+abb(82)
      abb(82)=2.0_ki*abb(7)
      abb(81)=abb(81)*abb(82)
      abb(78)=abb(78)*spbe7l5
      abb(83)=abb(78)*abb(14)
      abb(81)=abb(81)+abb(83)
      abb(81)=abb(81)*abb(6)
      abb(78)=abb(9)*abb(78)*abb(7)
      abb(78)=abb(81)+abb(78)
      abb(58)=abb(78)*abb(58)
      abb(46)=abb(49)+abb(58)-abb(46)
      abb(46)=abb(46)*spbk3k2
      abb(49)=spak1e7*spbk3k1
      abb(49)=abb(49)+abb(63)
      abb(58)=abb(73)*abb(53)
      abb(63)=abb(6)*abb(11)
      abb(76)=abb(63)*abb(58)*abb(82)*abb(49)*abb(76)
      abb(78)=spbk3k1*spak1l5
      abb(81)=spbk4k3*spak4l5
      abb(78)=abb(78)+abb(81)
      abb(78)=abb(78)*spbe7l5
      abb(60)=abb(60)*abb(77)
      abb(60)=abb(78)-abb(60)
      abb(60)=abb(60)*spbl5k2
      abb(77)=spak4l6*spbl6k2
      abb(78)=spbk7k2*spak4k7
      abb(77)=abb(77)-abb(78)
      abb(77)=abb(77)*spbk4k3
      abb(78)=abb(79)*spbk3k1
      abb(77)=abb(77)-abb(78)
      abb(77)=abb(77)*spbe7l5
      abb(78)=spbk3k1*abb(80)
      abb(60)=abb(78)+abb(77)+abb(60)
      abb(60)=abb(60)*spal6e7
      abb(77)=2.0_ki*spbe7k2
      abb(74)=abb(77)*abb(49)*abb(74)
      abb(75)=abb(59)*abb(75)
      abb(71)=abb(71)*spbk3k1
      abb(71)=abb(71)+abb(75)
      abb(75)=2.0_ki*spbl5k2
      abb(71)=abb(71)*abb(75)
      abb(60)=abb(74)+abb(60)-abb(71)
      abb(71)=spak1k4*abb(11)
      abb(60)=abb(60)*abb(71)
      abb(46)=-abb(60)+abb(46)+abb(76)
      abb(46)=abb(46)*abb(13)
      abb(60)=abb(7)*spbl5k2
      abb(35)=abb(60)*abb(35)
      abb(57)=abb(6)*abb(57)
      abb(34)=-abb(60)*abb(34)
      abb(54)=-abb(6)*abb(54)
      abb(34)=abb(34)+abb(54)
      abb(34)=spak1k4*abb(34)
      abb(34)=abb(34)+abb(35)+abb(57)
      abb(34)=abb(34)*abb(53)
      abb(35)=spak1l6*spbl5k3
      abb(18)=-abb(18)*abb(35)
      abb(18)=abb(22)+abb(18)
      abb(18)=abb(18)*abb(29)
      abb(18)=abb(18)+abb(20)
      abb(18)=abb(3)*abb(18)
      abb(20)=abb(52)*abb(21)
      abb(18)=abb(20)+abb(34)+abb(18)+abb(38)
      abb(18)=spbk3k2*abb(18)
      abb(20)=spbe7k2*abb(64)
      abb(20)=abb(20)-abb(69)
      abb(20)=abb(70)*abb(20)
      abb(20)=abb(37)+abb(20)
      abb(20)=spak1k4*abb(20)
      abb(21)=abb(60)*abb(11)
      abb(22)=-abb(33)*abb(21)
      abb(33)=-abb(64)*abb(63)
      abb(22)=abb(22)+abb(33)
      abb(22)=abb(22)*abb(58)
      abb(18)=abb(18)+abb(22)-abb(36)+abb(20)
      abb(18)=2.0_ki*abb(18)-abb(46)
      abb(18)=abb(4)*abb(18)
      abb(20)=abb(15)*spak1k2
      abb(22)=abb(20)*spbk3k1
      abb(33)=spak2k4*abb(15)
      abb(34)=abb(33)*spbk4k3
      abb(22)=abb(22)-abb(34)
      abb(34)=abb(22)*spal6e7
      abb(36)=spae7k7*spbk7k2
      abb(22)=abb(22)*abb(36)
      abb(37)=-abb(7)*abb(22)
      abb(37)=abb(34)+abb(37)
      abb(37)=abb(37)*abb(63)
      abb(38)=abb(9)*abb(34)
      abb(54)=-abb(21)*abb(38)
      abb(37)=abb(54)+abb(37)
      abb(37)=mB*abb(37)
      abb(54)=abb(16)*abb(63)*abb(34)
      abb(57)=abb(15)*abb(16)
      abb(49)=abb(49)*abb(57)
      abb(21)=-abb(49)*abb(21)
      abb(21)=abb(37)+abb(21)-abb(54)
      abb(37)=abb(73)*mB
      abb(21)=abb(21)*abb(37)
      abb(57)=spbl5k3*abb(29)*abb(57)
      abb(23)=abb(16)*abb(23)*abb(33)
      abb(23)=abb(57)-abb(23)
      abb(57)=-abb(7)*abb(23)
      abb(58)=abb(20)*spal6e7
      abb(64)=abb(58)*spak2k4
      abb(69)=abb(64)*abb(16)
      abb(74)=abb(6)*abb(69)
      abb(57)=abb(57)+abb(74)
      abb(57)=spbe7k2*abb(57)
      abb(74)=abb(58)*abb(16)
      abb(75)=-abb(6)*abb(31)*abb(74)
      abb(57)=abb(75)+abb(57)
      abb(57)=abb(3)*abb(57)
      abb(75)=abb(20)*spak2k4
      abb(76)=abb(75)*abb(36)
      abb(20)=abb(20)*spak3k4
      abb(77)=spae7k7*spbk7k3
      abb(78)=abb(20)*abb(77)
      abb(58)=spbl6k3*abb(58)*spak3k4
      abb(58)=abb(58)+abb(76)-abb(78)
      abb(76)=abb(7)*abb(58)
      abb(76)=-abb(64)+abb(76)
      abb(76)=abb(6)*abb(76)
      abb(75)=abb(75)*spbl5k2
      abb(20)=abb(20)*spbl5k3
      abb(20)=abb(75)-abb(20)
      abb(20)=spal6e7*abb(20)*abb(9)
      abb(75)=abb(7)*abb(20)
      abb(75)=abb(75)+abb(76)
      abb(76)=mB*abb(3)
      abb(78)=abb(76)*spbe7k2
      abb(75)=abb(75)*abb(78)
      abb(57)=abb(57)+abb(75)
      abb(57)=mB*abb(57)
      abb(75)=spbk7e7*spak1k7
      abb(33)=abb(75)*abb(33)
      abb(79)=abb(15)*spbe7l6
      abb(19)=abb(79)*abb(19)
      abb(19)=abb(33)-abb(19)
      abb(19)=abb(19)*spbl5k2
      abb(33)=abb(35)*abb(79)
      abb(35)=spbl5k3*abb(75)*abb(15)
      abb(33)=abb(35)-abb(33)
      abb(33)=abb(33)*spak3k4
      abb(19)=abb(33)-abb(19)
      abb(19)=abb(19)*spal6e7
      abb(33)=abb(3)*abb(19)
      abb(33)=abb(33)+abb(57)
      abb(33)=spbk3k2*abb(33)
      abb(35)=spbe7l6*spak4l6
      abb(28)=abb(35)-abb(28)
      abb(28)=abb(28)*spbk4k3
      abb(35)=abb(75)*spbk3k1
      abb(28)=abb(28)-abb(35)
      abb(28)=abb(28)*abb(15)
      abb(35)=abb(79)*abb(43)
      abb(28)=abb(28)+abb(35)
      abb(28)=abb(28)*spal6e7
      abb(35)=-spak1k4*abb(70)*abb(28)
      abb(21)=abb(33)+abb(35)+abb(21)
      abb(33)=2.0_ki*abb(13)
      abb(21)=abb(21)*abb(33)
      abb(18)=abb(21)+abb(18)
      abb(21)=2.0_ki*abb(65)
      abb(18)=abb(18)*abb(21)
      abb(35)=abb(17)*spak2e7
      abb(43)=abb(16)*abb(35)*spak1l6
      abb(57)=-abb(43)+abb(74)
      abb(57)=abb(55)*abb(31)*abb(57)
      abb(23)=abb(23)*abb(47)
      abb(55)=-abb(55)*abb(69)
      abb(23)=abb(23)+abb(55)
      abb(23)=spbe7k2*abb(23)
      abb(23)=abb(57)+abb(23)
      abb(23)=abb(3)*abb(23)
      abb(55)=-abb(58)*abb(47)
      abb(57)=abb(2)*abb(64)
      abb(55)=abb(57)+abb(55)
      abb(55)=abb(6)*abb(55)
      abb(20)=-abb(47)*abb(20)
      abb(20)=abb(20)+abb(55)
      abb(20)=abb(20)*abb(78)
      abb(55)=spbe7l5*abb(17)
      abb(29)=abb(29)*abb(55)*abb(3)*abb(16)
      abb(57)=abb(47)*abb(29)
      abb(35)=abb(35)*abb(75)
      abb(58)=spak1l5*abb(55)*spak2e7
      abb(35)=abb(58)-abb(35)
      abb(58)=-abb(35)*abb(47)
      abb(64)=abb(68)*abb(17)
      abb(65)=abb(14)*abb(64)*spak2e7
      abb(68)=abb(2)*abb(65)
      abb(58)=abb(68)+abb(58)
      abb(68)=abb(76)*abb(6)
      abb(69)=abb(68)*spak3k4
      abb(58)=abb(58)*abb(69)
      abb(57)=abb(57)+abb(58)
      abb(57)=spbk3k2*abb(57)
      abb(20)=abb(57)+abb(23)+abb(20)
      abb(20)=mB*abb(20)
      abb(23)=spbl5k3*spal5e7
      abb(23)=abb(23)-abb(77)
      abb(23)=spak3k4*abb(23)
      abb(23)=abb(23)-abb(50)
      abb(23)=abb(64)*abb(23)
      abb(50)=abb(64)*abb(36)
      abb(57)=abb(50)*spak2k4
      abb(23)=abb(57)+abb(23)
      abb(19)=-abb(19)-abb(23)
      abb(19)=abb(3)*abb(2)*abb(19)
      abb(19)=abb(19)+abb(20)
      abb(19)=spbk3k2*abb(19)
      abb(20)=abb(59)*abb(55)
      abb(36)=abb(20)*abb(36)
      abb(50)=abb(50)*spbk3k1
      abb(36)=abb(36)+abb(50)
      abb(50)=abb(64)*spbk3k1
      abb(20)=abb(50)+abb(20)
      abb(20)=abb(20)*spal5e7
      abb(28)=abb(28)-abb(20)
      abb(28)=spbl5k2*abb(28)
      abb(28)=abb(28)+abb(36)
      abb(28)=abb(2)*abb(28)*abb(71)
      abb(34)=-abb(2)*abb(34)
      abb(22)=abb(22)*abb(47)
      abb(22)=abb(34)+abb(22)
      abb(22)=abb(22)*abb(63)
      abb(34)=abb(48)*abb(38)
      abb(22)=abb(34)+abb(22)
      abb(22)=mB*abb(22)
      abb(34)=abb(49)*abb(48)
      abb(38)=abb(2)*abb(54)
      abb(22)=abb(22)+abb(34)+abb(38)
      abb(22)=abb(22)*abb(37)
      abb(19)=abb(19)+abb(28)+abb(22)
      abb(19)=abb(13)*abb(19)*abb(66)
      abb(22)=abb(7)*abb(44)
      abb(28)=-abb(7)*abb(51)
      abb(28)=-abb(40)+abb(28)
      abb(28)=spbe7k2*abb(28)
      abb(22)=abb(28)+abb(22)+abb(41)
      abb(22)=abb(6)*abb(22)
      abb(28)=abb(60)*abb(42)
      abb(22)=abb(28)+abb(22)
      abb(22)=abb(22)*abb(56)
      abb(24)=-abb(32)*abb(24)
      abb(24)=abb(27)+abb(24)
      abb(24)=abb(3)*abb(24)
      abb(22)=abb(24)+abb(22)
      abb(22)=spbk3k2*abb(22)
      abb(24)=-spak4l5*abb(60)
      abb(24)=abb(24)-spak4l6
      abb(24)=abb(39)*abb(24)
      abb(24)=abb(26)+abb(24)
      abb(24)=abb(6)*abb(24)
      abb(26)=abb(60)*abb(72)
      abb(24)=abb(26)+abb(24)
      abb(24)=spbe7k2*abb(24)
      abb(26)=abb(11)*abb(61)
      abb(26)=abb(45)+abb(26)
      abb(26)=abb(73)*abb(26)*abb(52)
      abb(24)=abb(24)+abb(26)
      abb(24)=abb(24)*abb(53)
      abb(26)=-abb(11)*abb(62)
      abb(26)=-abb(67)+abb(26)
      abb(26)=abb(26)*abb(73)
      abb(22)=abb(22)+abb(24)+abb(30)+abb(26)
      abb(22)=2.0_ki*abb(22)+abb(46)
      abb(22)=abb(4)*abb(22)
      abb(23)=abb(3)*abb(23)
      abb(24)=abb(31)*abb(68)*abb(43)
      abb(26)=-abb(7)*abb(29)
      abb(27)=abb(7)*abb(35)
      abb(27)=-abb(65)+abb(27)
      abb(27)=abb(27)*abb(69)
      abb(26)=abb(26)+abb(27)
      abb(26)=spbk3k2*mB*abb(26)
      abb(23)=abb(26)+abb(23)+abb(24)
      abb(23)=spbk3k2*abb(23)
      abb(20)=spbl5k2*abb(20)
      abb(20)=abb(20)-abb(36)
      abb(20)=abb(20)*abb(71)
      abb(20)=abb(20)+abb(23)
      abb(20)=abb(20)*abb(33)
      abb(20)=abb(20)+abb(22)
      abb(20)=abb(20)*abb(21)
      amplitude=c4*abb(25)+c3*abb(18)+c2*abb(19)+c1*abb(20)
      if (debug_lo_diagrams) then
         write(*,*) "Using Born optimization, debug_lo_diagrams not implemented&
         &."
      end if
!      if (use_sorted_sum) then
!         do i=1,numcs
!            amplitude(i) = sorted_sum(diagrams(i))
!         end do
!      else
!         do i=1,numcs
!            amplitude(i) = sum(diagrams(i))
!         end do
!      end if
   end function     amplitude
!---#] function amplitude:
end module p1_dbarc_epnebbbarg_diagramsh1l0
