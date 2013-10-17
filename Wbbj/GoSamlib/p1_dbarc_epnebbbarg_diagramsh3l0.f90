module     p1_dbarc_epnebbbarg_diagramsh3l0
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity3diagramsl0.f90
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
      complex(ki), dimension(70) :: abb
!      complex(ki), dimension(2,numcs) :: diagrams
      integer :: i
      amplitude(:) = 0.0_ki
      abb(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb(2)=NC**(-1)
      abb(3)=es234**(-1)
      abb(4)=es56**(-1)
      abb(5)=es71**(-1)
      abb(6)=spak2l5**(-1)
      abb(7)=spak2l6**(-1)
      abb(8)=1.0_ki/(-es71+es56-es567+es234)
      abb(9)=spbl5k2**(-1)
      abb(10)=spbl6k2**(-1)
      abb(11)=1.0_ki/(es71+es34+es56-es712-es234)
      abb(12)=1.0_ki/(es34+es567-es12-es234)
      abb(13)=1.0_ki/(-es71+es712-es12)
      abb(14)=es567**(-1)
      abb(15)=1.0_ki/(-mB**2+es67)
      abb(16)=sqrt(mB**2)
      abb(17)=1.0_ki/(mB**2-es67-es56+es567)
      abb(18)=spbk4k3*spak4e7
      abb(19)=spak1e7*spbk3k1
      abb(19)=abb(18)+abb(19)
      abb(20)=spbl5k2*abb(11)
      abb(21)=abb(20)*spak2l5
      abb(22)=spbe7l5*abb(19)*abb(21)
      abb(23)=abb(13)*spbe7k2*spae7k7
      abb(24)=spbk4k3*abb(23)*spak2k4
      abb(25)=-spbk7l5*abb(24)
      abb(25)=abb(25)-abb(22)
      abb(25)=abb(2)*abb(25)
      abb(26)=abb(23)*spbk3k1
      abb(27)=spak1k2*abb(2)
      abb(28)=abb(27)*abb(26)
      abb(29)=spbk7l5*abb(28)
      abb(25)=abb(25)+abb(29)
      abb(25)=abb(12)*abb(25)
      abb(21)=abb(21)*spbl5k3
      abb(29)=spak1e7*abb(5)
      abb(30)=abb(29)*spbe7k1
      abb(31)=abb(21)*abb(30)
      abb(32)=abb(2)*abb(31)
      abb(23)=abb(23)*spbk7k3
      abb(33)=abb(27)*abb(8)
      abb(34)=abb(23)*abb(33)
      abb(35)=spbl5k1*abb(34)
      abb(25)=abb(25)+abb(32)+abb(35)
      abb(25)=spak1k4*abb(25)
      abb(29)=abb(29)*spbk7e7
      abb(32)=abb(29)*spak4k7
      abb(21)=abb(32)*abb(21)
      abb(35)=-abb(2)*abb(21)
      abb(36)=abb(34)*spbl6l5
      abb(37)=-spak4l6*abb(36)
      abb(25)=abb(25)+abb(35)+abb(37)
      abb(25)=abb(7)*abb(25)
      abb(35)=spbl6k2*abb(11)
      abb(37)=abb(35)*spak2l6
      abb(38)=spbe7l6*abb(19)*abb(37)
      abb(39)=-spbk7l6*abb(24)
      abb(39)=abb(39)-abb(38)
      abb(39)=abb(2)*abb(39)
      abb(28)=spbk7l6*abb(28)
      abb(28)=abb(39)+abb(28)
      abb(28)=abb(12)*abb(28)
      abb(37)=abb(37)*spbl6k3
      abb(39)=abb(37)*abb(30)
      abb(40)=abb(2)*abb(39)
      abb(41)=spbl6k1*abb(34)
      abb(28)=abb(28)+abb(40)+abb(41)
      abb(28)=spak1k4*abb(28)
      abb(32)=abb(32)*abb(37)
      abb(37)=-abb(2)*abb(32)
      abb(36)=spak4l5*abb(36)
      abb(28)=abb(28)+abb(37)+abb(36)
      abb(28)=abb(6)*abb(28)
      abb(36)=abb(8)*spbe7k3
      abb(37)=abb(36)*spbl5k1
      abb(40)=abb(5)*spbe7k1
      abb(41)=spbl5k3*abb(40)
      abb(37)=abb(41)+abb(37)
      abb(37)=spak1e7*abb(37)
      abb(41)=abb(36)*spbl6l5
      abb(42)=abb(41)*spal6e7
      abb(37)=abb(42)+abb(37)
      abb(37)=spak3k4*abb(37)
      abb(43)=spbe7k2*abb(8)
      abb(44)=abb(43)*spbl5k1
      abb(45)=-spbl5k2*abb(40)
      abb(44)=-abb(44)+abb(45)
      abb(44)=spak1e7*abb(44)
      abb(45)=abb(43)*spbl6l5
      abb(46)=abb(45)*spal6e7
      abb(44)=-abb(46)+abb(44)
      abb(44)=spak2k4*abb(44)
      abb(37)=abb(37)+abb(44)
      abb(37)=abb(37)*abb(27)
      abb(44)=spak3k4*spbl5k3
      abb(47)=spak2k4*spbl5k2
      abb(44)=abb(44)-abb(47)
      abb(29)=abb(29)*spak2k7
      abb(48)=abb(44)*abb(29)
      abb(49)=-abb(2)*abb(48)
      abb(37)=abb(49)+abb(37)
      abb(37)=abb(7)*abb(37)
      abb(49)=abb(36)*spbl6k1
      abb(50)=spbl6k3*abb(40)
      abb(49)=abb(50)+abb(49)
      abb(49)=spak1e7*abb(49)
      abb(41)=abb(41)*spal5e7
      abb(49)=-abb(41)+abb(49)
      abb(49)=spak3k4*abb(49)
      abb(50)=abb(43)*spbl6k1
      abb(51)=-spbl6k2*abb(40)
      abb(50)=-abb(50)+abb(51)
      abb(50)=spak1e7*abb(50)
      abb(45)=abb(45)*spal5e7
      abb(50)=abb(45)+abb(50)
      abb(50)=spak2k4*abb(50)
      abb(49)=abb(49)+abb(50)
      abb(49)=abb(49)*abb(27)
      abb(50)=spak3k4*spbl6k3
      abb(51)=spak2k4*spbl6k2
      abb(50)=abb(50)-abb(51)
      abb(29)=abb(50)*abb(29)
      abb(52)=-abb(2)*abb(29)
      abb(49)=abb(52)+abb(49)
      abb(49)=abb(6)*abb(49)
      abb(37)=abb(37)+abb(49)
      abb(49)=abb(3)*spbk3k2
      abb(37)=abb(37)*abb(49)
      abb(52)=abb(6)*abb(9)
      abb(53)=abb(52)*spbl6k2
      abb(54)=2.0_ki*abb(7)
      abb(53)=abb(53)+abb(54)
      abb(53)=abb(53)*abb(6)
      abb(55)=abb(10)*abb(7)**2
      abb(56)=abb(55)*spbl5k2
      abb(53)=abb(53)+abb(56)
      abb(56)=spak3k4*spbe7k3
      abb(57)=abb(56)*spak2e7
      abb(33)=-abb(49)*abb(53)*abb(57)*abb(33)
      abb(58)=abb(52)*abb(51)
      abb(54)=abb(54)*spak2k4
      abb(54)=abb(54)+abb(58)
      abb(54)=abb(54)*abb(6)
      abb(58)=abb(55)*abb(47)
      abb(54)=abb(54)+abb(58)
      abb(34)=-abb(34)*abb(54)
      abb(33)=abb(33)+abb(34)
      abb(33)=abb(33)*mB**2
      abb(34)=spbe7l6*abb(20)
      abb(58)=spbe7l5*abb(35)
      abb(34)=abb(34)+abb(58)
      abb(34)=abb(12)*abb(19)*abb(34)
      abb(35)=abb(35)*spbl5k3
      abb(20)=abb(20)*spbl6k3
      abb(20)=abb(35)+abb(20)
      abb(20)=abb(20)*spak1e7
      abb(35)=abb(40)*abb(20)
      abb(34)=abb(34)-abb(35)
      abb(34)=abb(34)*spak1k4
      abb(35)=spbk7e7*spak4k7
      abb(20)=abb(5)*abb(20)*abb(35)
      abb(20)=abb(34)+abb(20)
      abb(34)=-abb(2)*abb(20)
      abb(25)=abb(33)+abb(37)+abb(28)+abb(25)+abb(34)
      abb(28)=i_*TR*CVDC*abb(1)*gW**2
      abb(33)=4.0_ki*abb(28)
      abb(25)=mB*abb(33)*abb(4)*abb(25)
      abb(34)=spak1k7*spbk7k3
      abb(37)=spbl5k3*spak1l5
      abb(40)=spbl6k3*spak1l6
      abb(34)=-abb(40)+abb(34)-abb(37)
      abb(34)=abb(34)*spak3k4
      abb(37)=spbl5k2*spak1l5
      abb(40)=spbl6k2*spak1l6
      abb(58)=spbk7k2*spak1k7
      abb(37)=-abb(58)+abb(37)+abb(40)
      abb(37)=abb(37)*spak2k4
      abb(34)=abb(34)+abb(37)
      abb(37)=spak2e7*spbe7l6
      abb(40)=abb(34)*abb(37)
      abb(59)=spbe7l5*spal5e7
      abb(60)=spbe7l6*spal6e7
      abb(59)=abb(59)+abb(60)
      abb(60)=2.0_ki*spak1k2
      abb(61)=abb(60)*abb(50)*abb(59)
      abb(62)=spak1e7*spak2k7
      abb(63)=abb(56)*abb(62)
      abb(62)=abb(62)*spbe7k2
      abb(64)=abb(62)*spak2k4
      abb(63)=abb(63)-abb(64)
      abb(64)=abb(63)*spbk7l6
      abb(40)=abb(61)+abb(40)-2.0_ki*abb(64)
      abb(40)=abb(40)*abb(6)
      abb(61)=spak2e7*spbe7l5
      abb(34)=abb(34)*abb(61)
      abb(64)=abb(60)*abb(44)*abb(59)
      abb(63)=abb(63)*spbk7l5
      abb(34)=abb(64)+abb(34)-2.0_ki*abb(63)
      abb(34)=abb(34)*abb(7)
      abb(34)=abb(40)+abb(34)
      abb(34)=abb(34)*abb(49)
      abb(40)=spbk3k1*spak1l5
      abb(63)=spbk4k3*spak4l5
      abb(40)=abb(40)+abb(63)
      abb(40)=abb(40)*spbl5k2
      abb(63)=spbk3k1*spak1l6
      abb(64)=spbk4k3*spak4l6
      abb(63)=abb(63)+abb(64)
      abb(63)=abb(63)*spbl6k2
      abb(64)=spbk7k2*spbk4k3*spak4k7
      abb(58)=abb(58)*spbk3k1
      abb(40)=-abb(64)-abb(58)+abb(40)+abb(63)
      abb(58)=abb(40)*abb(61)
      abb(61)=spbk4k3*abb(59)
      abb(47)=abb(61)*abb(47)
      abb(18)=spak2k7*abb(18)*spbe7k2
      abb(62)=abb(62)*spbk3k1
      abb(18)=abb(18)+abb(62)
      abb(62)=abb(18)*spbk7l5
      abb(47)=abb(47)+abb(62)
      abb(59)=abb(60)*spbk3k1*abb(59)
      abb(60)=spbl5k2*abb(59)
      abb(47)=-2.0_ki*abb(47)+abb(60)-abb(58)
      abb(58)=spak1k4*abb(12)
      abb(60)=abb(58)*abb(7)
      abb(47)=abb(47)*abb(60)
      abb(37)=abb(40)*abb(37)
      abb(40)=abb(61)*abb(51)
      abb(18)=abb(18)*spbk7l6
      abb(18)=abb(40)+abb(18)
      abb(40)=spbl6k2*abb(59)
      abb(18)=-2.0_ki*abb(18)+abb(40)-abb(37)
      abb(37)=abb(58)*abb(6)
      abb(18)=abb(18)*abb(37)
      abb(18)=abb(34)+abb(47)+abb(18)
      abb(18)=abb(18)*abb(14)
      abb(30)=abb(30)*spak1k2
      abb(34)=-abb(44)*abb(30)
      abb(34)=abb(34)+abb(48)
      abb(34)=abb(7)*abb(34)
      abb(30)=-abb(50)*abb(30)
      abb(29)=abb(30)+abb(29)
      abb(29)=abb(6)*abb(29)
      abb(29)=abb(34)+abb(29)
      abb(29)=abb(29)*abb(49)
      abb(22)=abb(12)*abb(22)
      abb(22)=-abb(31)+abb(22)
      abb(22)=spak1k4*abb(22)
      abb(21)=abb(21)+abb(22)
      abb(21)=abb(7)*abb(21)
      abb(22)=abb(12)*abb(38)
      abb(22)=-abb(39)+abb(22)
      abb(22)=spak1k4*abb(22)
      abb(22)=abb(32)+abb(22)
      abb(22)=abb(6)*abb(22)
      abb(20)=abb(29)+abb(22)+abb(21)+abb(20)
      abb(20)=2.0_ki*abb(20)-abb(18)
      abb(20)=abb(4)*abb(20)
      abb(21)=spbk4k3*abb(15)
      abb(22)=abb(21)*spak4l6
      abb(29)=spbk3k1*abb(15)
      abb(30)=abb(29)*spak1l6
      abb(22)=abb(22)+abb(30)
      abb(22)=abb(22)*spbe7l6
      abb(30)=spbk7e7*spak1k7
      abb(31)=abb(29)*abb(30)
      abb(32)=abb(35)*abb(21)
      abb(22)=abb(22)-abb(31)-abb(32)
      abb(22)=abb(22)*spbl5k2
      abb(31)=-spak2e7*abb(22)*abb(60)
      abb(32)=spbe7l6*spak1l6
      abb(32)=abb(32)-abb(30)
      abb(32)=abb(44)*abb(15)*abb(32)
      abb(34)=-abb(7)*spak2e7*abb(32)
      abb(38)=spal6e7*spbl6k3
      abb(39)=spae7k7*spbk7k3
      abb(38)=abb(38)-abb(39)
      abb(40)=spak3k4*abb(15)
      abb(38)=abb(38)*abb(40)
      abb(47)=spbl6k2*spal6e7
      abb(48)=spae7k7*spbk7k2
      abb(47)=abb(47)-abb(48)
      abb(51)=abb(47)*spak2k4
      abb(59)=abb(15)*abb(51)
      abb(38)=abb(38)-abb(59)
      abb(38)=abb(38)*spbe7l6
      abb(59)=-abb(6)*spak1k2*abb(38)
      abb(34)=abb(34)+abb(59)
      abb(34)=abb(34)*abb(49)
      abb(21)=abb(21)*abb(51)
      abb(29)=abb(47)*abb(29)
      abb(47)=-spak1k2*abb(29)
      abb(47)=abb(21)+abb(47)
      abb(47)=abb(37)*spbe7l6*abb(47)
      abb(31)=abb(34)+abb(31)+abb(47)
      abb(34)=2.0_ki*abb(14)
      abb(31)=abb(31)*abb(34)
      abb(47)=spbe7l6*abb(10)
      abb(40)=abb(47)*abb(40)
      abb(51)=spak1k2*spak2e7
      abb(59)=abb(51)*abb(7)
      abb(61)=abb(59)*abb(34)
      abb(62)=abb(6)*abb(61)
      abb(63)=abb(3)*spbk3k2**2
      abb(64)=abb(63)*abb(62)*abb(40)
      abb(65)=spbe7l5*abb(9)
      abb(47)=abb(65)+abb(47)
      abb(47)=abb(59)*abb(47)*spak3k4
      abb(59)=abb(6)*spak3k4
      abb(66)=abb(59)*abb(51)*spbe7l6*abb(9)
      abb(47)=abb(47)+abb(66)
      abb(47)=abb(47)*abb(6)
      abb(51)=spbe7l5*abb(55)*abb(51)*spak3k4
      abb(47)=abb(47)+abb(51)
      abb(51)=abb(63)*abb(14)
      abb(47)=abb(47)*abb(51)
      abb(55)=-abb(4)*abb(47)
      abb(55)=abb(64)+abb(55)
      abb(55)=mB*abb(55)
      abb(56)=abb(49)*abb(62)*abb(56)
      abb(62)=abb(15)*abb(16)
      abb(64)=-abb(62)*abb(56)
      abb(55)=abb(64)+abb(55)
      abb(55)=mB*abb(55)
      abb(20)=abb(55)+abb(31)+abb(20)
      abb(20)=mB*abb(20)
      abb(31)=abb(19)*abb(62)*spbl5k2
      abb(55)=abb(31)*abb(58)
      abb(44)=abb(44)*abb(62)*spak1e7
      abb(64)=abb(44)*abb(49)
      abb(55)=abb(55)+abb(64)
      abb(55)=abb(34)*spbe7l6*abb(55)
      abb(20)=abb(55)+abb(20)
      abb(28)=2.0_ki*abb(28)
      abb(20)=abb(20)*abb(28)
      abb(55)=spak2e7*abb(2)
      abb(32)=abb(32)*abb(55)
      abb(64)=spal5e7*spbl5k3
      abb(39)=abb(64)-abb(39)
      abb(64)=spak3k4*abb(17)
      abb(39)=abb(39)*abb(64)
      abb(66)=spbl5k2*spal5e7
      abb(48)=abb(66)-abb(48)
      abb(66)=spak2k4*abb(48)*abb(17)
      abb(39)=abb(39)-abb(66)
      abb(39)=abb(39)*spbe7l5
      abb(66)=-abb(27)*abb(39)
      abb(32)=abb(32)+abb(66)
      abb(32)=abb(7)*abb(32)
      abb(66)=spbe7l5*spak1l5
      abb(66)=abb(66)-abb(30)
      abb(66)=abb(50)*abb(17)*abb(66)
      abb(67)=-abb(66)*abb(55)
      abb(38)=abb(27)*abb(38)
      abb(38)=abb(67)+abb(38)
      abb(38)=abb(6)*abb(38)
      abb(32)=abb(32)+abb(38)
      abb(32)=abb(32)*abb(49)
      abb(22)=abb(22)*abb(55)
      abb(38)=spbk4k3*abb(17)
      abb(67)=spak2k4*abb(48)*abb(38)
      abb(68)=abb(2)*abb(67)
      abb(69)=spbk3k1*abb(17)
      abb(48)=abb(48)*abb(69)
      abb(70)=-abb(48)*abb(27)
      abb(68)=abb(70)+abb(68)
      abb(68)=spbe7l5*abb(68)
      abb(22)=abb(22)+abb(68)
      abb(22)=abb(22)*abb(60)
      abb(68)=abb(38)*spak4l5
      abb(70)=abb(69)*spak1l5
      abb(68)=abb(68)+abb(70)
      abb(68)=abb(68)*spbe7l5
      abb(30)=abb(69)*abb(30)
      abb(35)=abb(35)*abb(38)
      abb(30)=abb(68)-abb(30)-abb(35)
      abb(30)=abb(30)*spbl6k2
      abb(35)=-abb(30)*abb(55)
      abb(21)=-abb(2)*abb(21)
      abb(29)=abb(29)*abb(27)
      abb(21)=abb(29)+abb(21)
      abb(21)=spbe7l6*abb(21)
      abb(21)=abb(35)+abb(21)
      abb(21)=abb(21)*abb(37)
      abb(21)=abb(32)+abb(22)+abb(21)
      abb(21)=abb(14)*abb(21)
      abb(22)=abb(17)*abb(16)
      abb(29)=-abb(22)+abb(62)
      abb(29)=abb(14)*abb(49)*abb(59)*spbe7k3*abb(29)
      abb(32)=abb(64)*abb(65)
      abb(32)=abb(32)-abb(40)
      abb(32)=mB*abb(32)*abb(51)*abb(6)
      abb(29)=abb(29)+abb(32)
      abb(27)=mB*abb(27)*spak2e7*abb(7)*abb(29)
      abb(21)=abb(21)+abb(27)
      abb(21)=mB*abb(21)
      abb(19)=abb(19)*abb(22)*spbl6k2
      abb(27)=spbe7l5*abb(19)
      abb(29)=-spbe7l6*abb(31)
      abb(27)=abb(27)+abb(29)
      abb(27)=abb(27)*abb(58)
      abb(29)=abb(50)*abb(22)*spak1e7
      abb(31)=spbe7l5*abb(29)
      abb(32)=-spbe7l6*abb(44)
      abb(31)=abb(31)+abb(32)
      abb(31)=abb(31)*abb(49)
      abb(27)=abb(27)+abb(31)
      abb(27)=abb(14)*abb(2)*abb(27)
      abb(21)=abb(27)+abb(21)
      abb(21)=abb(21)*abb(33)
      abb(27)=abb(36)*spak1e7
      abb(31)=-spbl5k1*abb(27)
      abb(31)=-abb(42)+abb(31)
      abb(31)=spak3k4*abb(31)
      abb(32)=abb(43)*spak1e7
      abb(33)=spbl5k1*abb(32)
      abb(33)=abb(46)+abb(33)
      abb(33)=spak2k4*abb(33)
      abb(31)=abb(31)+abb(33)
      abb(31)=abb(7)*abb(31)
      abb(27)=-spbl6k1*abb(27)
      abb(27)=abb(41)+abb(27)
      abb(27)=spak3k4*abb(27)
      abb(32)=spbl6k1*abb(32)
      abb(32)=-abb(45)+abb(32)
      abb(32)=spak2k4*abb(32)
      abb(27)=abb(27)+abb(32)
      abb(27)=abb(6)*abb(27)
      abb(27)=abb(31)+abb(27)
      abb(27)=abb(49)*spak1k2*abb(27)
      abb(31)=spak1k2*abb(8)
      abb(23)=abb(23)*abb(31)
      abb(32)=-spbl5k1*abb(23)
      abb(26)=spak1k2*abb(26)
      abb(24)=abb(26)-abb(24)
      abb(24)=abb(24)*abb(12)
      abb(26)=-spbk7l5*abb(24)
      abb(26)=abb(32)+abb(26)
      abb(26)=spak1k4*abb(26)
      abb(32)=abb(23)*spbl6l5
      abb(33)=spak4l6*abb(32)
      abb(26)=abb(33)+abb(26)
      abb(26)=abb(7)*abb(26)
      abb(33)=-spbl6k1*abb(23)
      abb(24)=-spbk7l6*abb(24)
      abb(24)=abb(33)+abb(24)
      abb(24)=spak1k4*abb(24)
      abb(32)=-spak4l5*abb(32)
      abb(24)=abb(32)+abb(24)
      abb(24)=abb(6)*abb(24)
      abb(24)=abb(27)+abb(26)+abb(24)
      abb(18)=2.0_ki*abb(24)+abb(18)
      abb(18)=abb(4)*abb(18)
      abb(24)=spak2e7*abb(30)*abb(37)
      abb(26)=abb(7)*spak1k2*abb(39)
      abb(27)=abb(66)*abb(6)*spak2e7
      abb(26)=abb(26)+abb(27)
      abb(26)=abb(26)*abb(49)
      abb(27)=spak1k2*abb(48)
      abb(27)=-abb(67)+abb(27)
      abb(27)=abb(60)*spbe7l5*abb(27)
      abb(24)=abb(26)+abb(27)+abb(24)
      abb(24)=abb(24)*abb(34)
      abb(26)=-spbe7l5*abb(64)*abb(52)*abb(63)*abb(61)
      abb(27)=abb(49)*abb(53)*abb(57)*abb(31)
      abb(23)=abb(23)*abb(54)
      abb(23)=abb(27)+abb(23)
      abb(23)=2.0_ki*abb(23)+abb(47)
      abb(23)=abb(4)*abb(23)
      abb(23)=abb(26)+abb(23)
      abb(23)=mB*abb(23)
      abb(22)=abb(22)*abb(56)
      abb(22)=abb(22)+abb(23)
      abb(22)=mB*abb(22)
      abb(18)=abb(22)+abb(24)+abb(18)
      abb(18)=mB*abb(18)
      abb(19)=-abb(19)*abb(58)
      abb(22)=-abb(29)*abb(49)
      abb(19)=abb(19)+abb(22)
      abb(19)=abb(19)*abb(34)*spbe7l5
      abb(18)=abb(19)+abb(18)
      abb(18)=abb(18)*abb(28)
      amplitude=c4*abb(25)+c3*abb(20)+c2*abb(21)+c1*abb(18)
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
end module p1_dbarc_epnebbbarg_diagramsh3l0