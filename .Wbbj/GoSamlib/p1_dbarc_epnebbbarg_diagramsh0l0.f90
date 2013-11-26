module     p1_dbarc_epnebbbarg_diagramsh0l0
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity0diagramsl0.f90
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
      complex(ki), dimension(76) :: abb
!      complex(ki), dimension(2,numcs) :: diagrams
      integer :: i
      amplitude(:) = 0.0_ki
      abb(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb(2)=NC**(-1)
      abb(3)=es234**(-1)
      abb(4)=es56**(-1)
      abb(5)=es71**(-1)
      abb(6)=spbl5k2**(-1)
      abb(7)=spbl6k2**(-1)
      abb(8)=1.0_ki/(-es71+es56-es567+es234)
      abb(9)=1.0_ki/(-es71+es712-es12)
      abb(10)=1.0_ki/(es34+es567-es12-es234)
      abb(11)=es567**(-1)
      abb(12)=spak2l5**(-1)
      abb(13)=spak2l6**(-1)
      abb(14)=1.0_ki/(-mB**2+es67)
      abb(15)=sqrt(mB**2)
      abb(16)=1.0_ki/(mB**2-es67-es56+es567)
      abb(17)=spak1e7*spbk2k1
      abb(18)=abb(2)*spak2k4
      abb(19)=abb(17)*abb(18)
      abb(20)=spak1l5*abb(8)
      abb(21)=abb(20)*abb(19)
      abb(22)=abb(20)*spak2k4
      abb(23)=spal5e7*abb(2)
      abb(24)=spbl5k2*abb(23)*abb(22)
      abb(21)=abb(21)+abb(24)
      abb(21)=abb(7)*abb(21)
      abb(24)=spak1l6*abb(8)
      abb(19)=abb(24)*abb(19)
      abb(25)=abb(24)*spak2k4
      abb(26)=spal6e7*abb(2)
      abb(27)=spbl6k2*abb(26)*abb(25)
      abb(19)=abb(19)+abb(27)
      abb(19)=abb(6)*abb(19)
      abb(27)=abb(23)*abb(25)
      abb(28)=abb(26)*abb(22)
      abb(19)=abb(19)+abb(21)+abb(27)+abb(28)
      abb(21)=abb(3)*spbk3k2
      abb(19)=abb(19)*abb(21)
      abb(27)=spae7k7*spbk7k3
      abb(28)=abb(9)*abb(27)
      abb(29)=abb(28)*spak4l6
      abb(30)=abb(29)*abb(20)
      abb(31)=abb(28)*spak4l5
      abb(32)=abb(31)*abb(24)
      abb(30)=abb(30)+abb(32)
      abb(32)=abb(2)*abb(30)
      abb(28)=abb(28)*spbk2k1
      abb(33)=abb(20)*abb(2)
      abb(34)=-abb(33)*abb(28)
      abb(35)=spbk7k2*spae7k7
      abb(36)=abb(35)*abb(9)
      abb(37)=spbk4k3*spak4l5
      abb(38)=abb(36)*abb(37)
      abb(39)=abb(35)*spbk3k1
      abb(40)=abb(39)*abb(9)
      abb(41)=abb(40)*spak1l5
      abb(38)=abb(38)+abb(41)
      abb(41)=abb(10)*abb(2)
      abb(42)=-abb(38)*abb(41)
      abb(34)=abb(34)+abb(42)
      abb(34)=spak1k4*abb(34)
      abb(42)=spbl5k2*abb(33)*abb(31)
      abb(34)=abb(42)+abb(34)
      abb(34)=abb(7)*abb(34)
      abb(42)=abb(24)*abb(2)
      abb(43)=-abb(42)*abb(28)
      abb(44)=spbk4k3*spak4l6
      abb(36)=abb(36)*abb(44)
      abb(40)=abb(40)*spak1l6
      abb(36)=abb(36)+abb(40)
      abb(40)=-abb(36)*abb(41)
      abb(40)=abb(43)+abb(40)
      abb(40)=spak1k4*abb(40)
      abb(41)=spbl6k2*abb(42)*abb(29)
      abb(40)=abb(41)+abb(40)
      abb(40)=abb(6)*abb(40)
      abb(19)=abb(19)+abb(40)+abb(32)+abb(34)
      abb(19)=spbe7k2*abb(4)*abb(19)
      abb(32)=-abb(24)*abb(23)
      abb(34)=-abb(20)*abb(26)
      abb(32)=abb(32)+abb(34)
      abb(32)=spbe7k3*abb(32)
      abb(34)=spak1e7*spbe7k3
      abb(40)=spbk2k1*abb(34)
      abb(33)=-abb(33)*abb(40)
      abb(41)=abb(20)*spbl5k2
      abb(43)=abb(41)*spbe7k3
      abb(45)=-abb(23)*abb(43)
      abb(33)=abb(33)+abb(45)
      abb(33)=abb(7)*abb(33)
      abb(42)=-abb(42)*abb(40)
      abb(45)=abb(24)*spbl6k2
      abb(46)=abb(45)*spbe7k3
      abb(47)=-abb(26)*abb(46)
      abb(42)=abb(42)+abb(47)
      abb(42)=abb(6)*abb(42)
      abb(32)=abb(42)+abb(33)+abb(32)
      abb(32)=spak3k4*abb(32)
      abb(33)=abb(5)*spbk7e7
      abb(42)=spak1e7*spal5k7
      abb(47)=abb(33)*abb(42)
      abb(48)=spbe7k1*spak1e7*abb(5)
      abb(49)=abb(48)*spak1l5
      abb(47)=abb(49)-abb(47)
      abb(47)=abb(47)*abb(7)
      abb(49)=spak1e7*spal6k7
      abb(33)=abb(33)*abb(49)
      abb(48)=abb(48)*spak1l6
      abb(33)=abb(48)-abb(33)
      abb(33)=abb(33)*abb(6)
      abb(33)=abb(47)+abb(33)
      abb(47)=spbk3k2*spak3k4
      abb(48)=abb(47)*abb(2)*abb(33)
      abb(32)=abb(32)+abb(48)
      abb(48)=abb(21)*abb(4)
      abb(32)=abb(32)*abb(48)
      abb(19)=abb(32)+abb(19)
      abb(32)=i_*TR*CVDC*abb(1)*gW**2
      abb(50)=4.0_ki*abb(32)
      abb(19)=mB*abb(19)*abb(50)
      abb(51)=spbl6k2*spak1l6*spak2k4
      abb(52)=spbk7k2*spak2k4
      abb(53)=abb(52)*spak1k7
      abb(51)=abb(51)-abb(53)
      abb(51)=abb(51)*spal6e7
      abb(52)=2.0_ki*abb(52)
      abb(54)=abb(52)*abb(49)
      abb(51)=abb(51)+abb(54)
      abb(51)=abb(51)*abb(6)
      abb(54)=spbl5k2*spak1l5*spak2k4
      abb(53)=abb(54)-abb(53)
      abb(53)=abb(53)*spal5e7
      abb(52)=abb(52)*abb(42)
      abb(52)=abb(53)+abb(52)
      abb(52)=abb(52)*abb(7)
      abb(53)=spbk7k3*spak1k7
      abb(54)=spak1l5*spbl5k3
      abb(55)=spak1l6*spbl6k3
      abb(53)=-abb(53)+abb(54)+abb(55)
      abb(54)=abb(7)*spal5e7
      abb(55)=abb(6)*spal6e7
      abb(54)=abb(54)+abb(55)
      abb(53)=spak3k4*abb(54)*abb(53)
      abb(54)=spal5e7*spak1l6
      abb(56)=spal6e7*spak1l5
      abb(57)=abb(54)+abb(56)
      abb(57)=abb(57)*spak2k4
      abb(51)=-abb(52)-abb(51)+abb(53)-abb(57)
      abb(51)=abb(51)*abb(21)
      abb(52)=spak1l6*spbk3k1
      abb(52)=abb(52)+abb(44)
      abb(53)=abb(52)*spbl6k2
      abb(57)=spbk3k1*spak1k7
      abb(58)=spbk4k3*spak4k7
      abb(57)=abb(57)+abb(58)
      abb(57)=abb(57)*spbk7k2
      abb(53)=abb(53)-abb(57)
      abb(53)=abb(53)*spal6e7
      abb(49)=abb(49)*spbk3k1
      abb(58)=spbk4k3*spak4e7
      abb(59)=abb(58)*spal6k7
      abb(49)=abb(49)+abb(59)
      abb(59)=2.0_ki*spbk7k2
      abb(49)=abb(49)*abb(59)
      abb(49)=abb(49)+abb(53)
      abb(53)=spak1k4*abb(10)
      abb(60)=abb(53)*abb(6)
      abb(49)=abb(49)*abb(60)
      abb(61)=spak1l5*spbk3k1
      abb(61)=abb(61)+abb(37)
      abb(62)=abb(61)*spbl5k2
      abb(57)=abb(62)-abb(57)
      abb(57)=abb(57)*spal5e7
      abb(42)=abb(42)*spbk3k1
      abb(58)=abb(58)*spal5k7
      abb(42)=abb(42)+abb(58)
      abb(42)=abb(42)*abb(59)
      abb(42)=abb(42)+abb(57)
      abb(57)=abb(53)*abb(7)
      abb(42)=abb(42)*abb(57)
      abb(58)=abb(61)*spal6e7
      abb(52)=abb(52)*spal5e7
      abb(52)=abb(58)+abb(52)
      abb(52)=abb(52)*abb(53)
      abb(42)=abb(51)+abb(52)+abb(49)+abb(42)
      abb(42)=abb(42)*abb(4)
      abb(49)=spak1l5*abb(14)
      abb(51)=abb(39)*abb(49)
      abb(37)=abb(37)*abb(14)
      abb(52)=abb(37)*abb(35)
      abb(51)=abb(51)+abb(52)
      abb(51)=abb(51)*abb(57)
      abb(52)=abb(35)*spak2k4
      abb(57)=abb(49)*abb(52)
      abb(58)=abb(27)*abb(49)
      abb(59)=abb(49)*spal6e7
      abb(61)=spbl6k3*abb(59)
      abb(61)=-abb(58)+abb(61)
      abb(61)=spak3k4*abb(61)
      abb(57)=abb(61)+abb(57)
      abb(57)=abb(7)*abb(57)
      abb(61)=abb(59)*spak2k4
      abb(57)=-abb(61)+abb(57)
      abb(57)=abb(57)*abb(21)
      abb(61)=abb(49)*spbk3k1
      abb(37)=abb(61)+abb(37)
      abb(61)=abb(53)*spal6e7
      abb(62)=abb(37)*abb(61)
      abb(57)=abb(57)+abb(62)-abb(51)
      abb(57)=2.0_ki*abb(57)-abb(42)
      abb(62)=spbe7k2*abb(11)
      abb(57)=abb(57)*abb(62)
      abb(63)=abb(3)*spak3k4*spbk3k2**2
      abb(64)=abb(63)*abb(4)
      abb(33)=-abb(33)*abb(64)
      abb(56)=abb(56)*spbe7l6
      abb(65)=spak1l5*spbe7l5
      abb(66)=abb(65)*spal5e7
      abb(56)=abb(56)+abb(66)
      abb(56)=abb(56)*abb(7)
      abb(54)=abb(54)*spbe7l5
      abb(66)=spak1l6*spbe7l6
      abb(67)=abb(66)*spal6e7
      abb(54)=abb(54)+abb(67)
      abb(54)=abb(54)*abb(6)
      abb(54)=abb(56)+abb(54)
      abb(47)=abb(54)*abb(47)
      abb(54)=abb(7)*spal5k7
      abb(56)=abb(6)*spal6k7
      abb(54)=abb(54)+abb(56)
      abb(34)=spak3k4*abb(54)*spbk7k2*abb(34)
      abb(34)=abb(47)+abb(34)
      abb(34)=abb(34)*abb(48)
      abb(47)=spak1k7*spbk7e7
      abb(54)=abb(47)-abb(66)
      abb(54)=abb(54)*abb(14)
      abb(56)=abb(63)*abb(6)
      abb(66)=spal6e7*abb(54)*abb(56)
      abb(66)=abb(66)-abb(34)
      abb(66)=abb(11)*abb(66)
      abb(33)=abb(33)+abb(66)
      abb(66)=spak1k2*abb(12)
      abb(67)=abb(66)*spal5e7
      abb(68)=spak1k2*abb(13)
      abb(69)=abb(68)*spal6e7
      abb(70)=abb(67)+abb(69)
      abb(70)=abb(70)*abb(7)
      abb(55)=abb(66)*abb(55)
      abb(55)=abb(70)+abb(55)
      abb(55)=abb(55)*abb(6)
      abb(70)=spal5e7*abb(68)*abb(7)**2
      abb(55)=abb(55)+abb(70)
      abb(55)=abb(55)*abb(64)
      abb(56)=abb(56)*abb(7)
      abb(64)=2.0_ki*abb(56)
      abb(69)=-abb(14)*abb(69)*abb(64)
      abb(69)=abb(69)+abb(55)
      abb(70)=abb(62)*mB
      abb(69)=abb(69)*abb(70)
      abb(56)=abb(56)*abb(62)
      abb(71)=spak1e7*abb(15)
      abb(72)=abb(71)*abb(56)
      abb(73)=2.0_ki*abb(14)
      abb(73)=-abb(72)*abb(73)
      abb(69)=abb(73)+abb(69)
      abb(69)=mB*abb(69)
      abb(33)=abb(69)+2.0_ki*abb(33)+abb(57)
      abb(33)=mB*abb(33)
      abb(57)=abb(37)*abb(15)
      abb(61)=-abb(57)*abb(61)
      abb(69)=abb(15)*abb(21)*spak2k4
      abb(73)=abb(59)*abb(69)
      abb(61)=abb(61)+abb(73)
      abb(61)=abb(61)*abb(62)
      abb(73)=abb(15)*spbe7k3*abb(11)*abb(21)*spak3k4
      abb(59)=-abb(59)*abb(73)
      abb(59)=abb(59)+abb(61)
      abb(33)=2.0_ki*abb(59)+abb(33)
      abb(32)=2.0_ki*abb(32)
      abb(33)=abb(33)*abb(32)
      abb(58)=abb(2)*abb(58)
      abb(59)=abb(26)*abb(49)
      abb(61)=-spbl6k3*abb(59)
      abb(58)=abb(58)+abb(61)
      abb(58)=abb(7)*abb(58)
      abb(61)=spak1l6*abb(16)
      abb(27)=abb(27)*abb(61)
      abb(74)=-abb(2)*abb(27)
      abb(75)=abb(23)*abb(61)
      abb(76)=spbl5k3*abb(75)
      abb(74)=abb(74)+abb(76)
      abb(74)=abb(6)*abb(74)
      abb(58)=abb(58)+abb(74)
      abb(58)=spak3k4*abb(58)
      abb(59)=abb(59)-abb(75)
      abb(74)=abb(59)*spak2k4
      abb(49)=-abb(7)*abb(49)
      abb(75)=abb(6)*abb(61)
      abb(49)=abb(75)+abb(49)
      abb(18)=abb(18)*abb(35)*abb(49)
      abb(18)=abb(58)+abb(18)+abb(74)
      abb(18)=abb(18)*abb(21)
      abb(39)=abb(39)*abb(61)
      abb(44)=abb(44)*abb(16)
      abb(35)=abb(44)*abb(35)
      abb(35)=abb(39)+abb(35)
      abb(35)=abb(35)*abb(60)
      abb(39)=-abb(35)+abb(51)
      abb(39)=abb(2)*abb(39)
      abb(49)=abb(61)*spbk3k1
      abb(44)=abb(49)+abb(44)
      abb(49)=abb(44)*abb(23)
      abb(37)=-abb(37)*abb(26)
      abb(37)=abb(49)+abb(37)
      abb(37)=abb(37)*abb(53)
      abb(18)=abb(18)+abb(37)+abb(39)
      abb(18)=abb(18)*abb(62)
      abb(37)=abb(47)-abb(65)
      abb(37)=abb(7)*abb(37)*abb(16)
      abb(39)=abb(23)*abb(37)
      abb(47)=-abb(6)*abb(54)*abb(26)
      abb(39)=abb(39)+abb(47)
      abb(39)=abb(11)*abb(39)*abb(63)
      abb(47)=-abb(16)*abb(23)*abb(66)
      abb(49)=abb(14)*abb(26)*abb(68)
      abb(47)=abb(47)+abb(49)
      abb(47)=mB*abb(47)
      abb(49)=-abb(16)+abb(14)
      abb(49)=abb(2)*abb(71)*abb(49)
      abb(47)=abb(49)+abb(47)
      abb(47)=mB*abb(56)*abb(47)
      abb(18)=abb(47)+abb(39)+abb(18)
      abb(18)=mB*abb(18)
      abb(39)=abb(44)*abb(15)
      abb(23)=-abb(39)*abb(23)
      abb(26)=abb(57)*abb(26)
      abb(23)=abb(23)+abb(26)
      abb(23)=abb(23)*abb(53)
      abb(26)=-abb(74)*abb(21)*abb(15)
      abb(23)=abb(23)+abb(26)
      abb(23)=abb(23)*abb(62)
      abb(26)=abb(59)*abb(73)
      abb(18)=abb(18)+abb(26)+abb(23)
      abb(18)=abb(18)*abb(50)
      abb(23)=abb(20)*abb(28)
      abb(26)=abb(10)*abb(38)
      abb(23)=abb(23)+abb(26)
      abb(23)=spak1k4*abb(23)
      abb(26)=-abb(41)*abb(31)
      abb(23)=abb(26)+abb(23)
      abb(23)=abb(7)*abb(23)
      abb(26)=abb(24)*abb(28)
      abb(28)=abb(10)*abb(36)
      abb(26)=abb(26)+abb(28)
      abb(26)=spak1k4*abb(26)
      abb(28)=-abb(45)*abb(29)
      abb(26)=abb(28)+abb(26)
      abb(26)=abb(6)*abb(26)
      abb(28)=-spal5e7*spbl5k2
      abb(28)=-abb(17)+abb(28)
      abb(28)=abb(7)*abb(28)
      abb(28)=abb(28)-spal6e7
      abb(22)=abb(22)*abb(28)
      abb(28)=-spal6e7*spbl6k2
      abb(17)=-abb(17)+abb(28)
      abb(17)=abb(6)*abb(17)
      abb(17)=abb(17)-spal5e7
      abb(17)=abb(25)*abb(17)
      abb(17)=abb(17)+abb(22)
      abb(17)=abb(17)*abb(21)
      abb(17)=abb(17)+abb(26)+abb(23)-abb(30)
      abb(17)=abb(4)*abb(17)
      abb(22)=-abb(61)*abb(52)
      abb(23)=abb(61)*spal5e7
      abb(25)=-spbl5k3*abb(23)
      abb(25)=abb(27)+abb(25)
      abb(25)=spak3k4*abb(25)
      abb(22)=abb(25)+abb(22)
      abb(22)=abb(6)*abb(22)
      abb(25)=abb(23)*spak2k4
      abb(22)=abb(25)+abb(22)
      abb(21)=abb(22)*abb(21)
      abb(22)=abb(53)*spal5e7
      abb(25)=-abb(44)*abb(22)
      abb(21)=abb(21)+abb(25)+abb(35)
      abb(21)=2.0_ki*abb(21)+abb(42)
      abb(21)=abb(11)*abb(21)
      abb(17)=2.0_ki*abb(17)+abb(21)
      abb(17)=spbe7k2*abb(17)
      abb(21)=spal5e7*abb(24)
      abb(25)=spal6e7*abb(20)
      abb(21)=abb(21)+abb(25)
      abb(21)=spbe7k3*abb(21)
      abb(20)=abb(20)*abb(40)
      abb(25)=spal5e7*abb(43)
      abb(20)=abb(20)+abb(25)
      abb(20)=abb(7)*abb(20)
      abb(24)=abb(24)*abb(40)
      abb(25)=spal6e7*abb(46)
      abb(24)=abb(24)+abb(25)
      abb(24)=abb(6)*abb(24)
      abb(20)=abb(24)+abb(20)+abb(21)
      abb(20)=spak3k4*abb(20)*abb(48)
      abb(21)=-spal5e7*abb(63)*abb(37)
      abb(21)=abb(21)+abb(34)
      abb(21)=abb(11)*abb(21)
      abb(20)=abb(20)+abb(21)
      abb(21)=abb(16)*abb(67)*abb(64)
      abb(21)=abb(21)-abb(55)
      abb(21)=abb(21)*abb(70)
      abb(24)=2.0_ki*abb(16)
      abb(24)=abb(72)*abb(24)
      abb(21)=abb(24)+abb(21)
      abb(21)=mB*abb(21)
      abb(17)=abb(21)+2.0_ki*abb(20)+abb(17)
      abb(17)=mB*abb(17)
      abb(20)=abb(39)*abb(22)
      abb(21)=-abb(23)*abb(69)
      abb(20)=abb(20)+abb(21)
      abb(20)=abb(20)*abb(62)
      abb(21)=abb(23)*abb(73)
      abb(20)=abb(21)+abb(20)
      abb(17)=2.0_ki*abb(20)+abb(17)
      abb(17)=abb(17)*abb(32)
      amplitude=c4*abb(19)+c3*abb(33)+c2*abb(18)+c1*abb(17)
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
end module p1_dbarc_epnebbbarg_diagramsh0l0
