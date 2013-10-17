module     p0_dbaru_epnebbbarg_abbrevd17h3
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(73), public :: abb17
   complex(ki), public :: R2d17
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
      abb17(1)=1.0_ki/(-es71+es712-es12)
      abb17(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb17(3)=es56**(-1)
      abb17(4)=spak2l5**(-1)
      abb17(5)=spak2l6**(-1)
      abb17(6)=spbl5k2**(-1)
      abb17(7)=spbl6k2**(-1)
      abb17(8)=NC*c1
      abb17(8)=abb17(8)-c4
      abb17(9)=TR*gW
      abb17(9)=abb17(9)**2
      abb17(10)=abb17(9)*spak1k2*mB**3
      abb17(11)=abb17(3)*i_*CVDU*abb17(2)*abb17(1)
      abb17(12)=abb17(10)*abb17(11)*abb17(8)
      abb17(13)=-abb17(5)*abb17(4)*abb17(12)
      abb17(14)=abb17(13)*spbl5k3
      abb17(15)=abb17(4)**2
      abb17(16)=abb17(15)*abb17(12)
      abb17(17)=abb17(16)*spbl6k3
      abb17(14)=abb17(14)-abb17(17)
      abb17(17)=abb17(6)*spak3k4
      abb17(14)=abb17(14)*abb17(17)
      abb17(18)=abb17(13)*spbl6k3
      abb17(19)=abb17(5)**2
      abb17(12)=abb17(19)*abb17(12)
      abb17(20)=abb17(12)*spbl5k3
      abb17(18)=abb17(18)-abb17(20)
      abb17(20)=abb17(7)*spak3k4
      abb17(18)=abb17(18)*abb17(20)
      abb17(14)=abb17(14)+abb17(18)
      abb17(14)=abb17(14)*spbk3k2
      abb17(9)=abb17(11)*abb17(9)*mB
      abb17(18)=-abb17(9)*abb17(8)
      abb17(21)=-abb17(5)*abb17(18)
      abb17(22)=abb17(21)*spbl5k3
      abb17(23)=abb17(22)*spbl6k3
      abb17(18)=-abb17(4)*abb17(18)
      abb17(24)=spbl6k3**2
      abb17(25)=abb17(24)*abb17(18)
      abb17(23)=abb17(23)+abb17(25)
      abb17(25)=2.0_ki*spak1l6
      abb17(23)=abb17(23)*abb17(25)*spak3k4
      abb17(26)=abb17(18)*spbl6k3
      abb17(22)=abb17(26)+abb17(22)
      abb17(26)=2.0_ki*spak1l5
      abb17(27)=spak3k4*spbl5k3
      abb17(28)=abb17(27)*abb17(22)*abb17(26)
      abb17(14)=abb17(14)+abb17(23)+abb17(28)
      abb17(23)=es71+es12-es712
      abb17(28)=abb17(14)*abb17(23)
      abb17(29)=abb17(9)*spak1k2
      abb17(30)=-abb17(4)*abb17(8)
      abb17(31)=-abb17(29)*abb17(30)
      abb17(32)=abb17(31)*spbl6k3
      abb17(33)=-abb17(5)*abb17(8)
      abb17(29)=-abb17(29)*abb17(33)
      abb17(34)=abb17(29)*spbl5k3
      abb17(32)=abb17(32)+abb17(34)
      abb17(35)=spbk3k1*spak3k4
      abb17(36)=spak1k7*abb17(35)
      abb17(37)=-spal5k7*abb17(27)
      abb17(36)=abb17(37)+abb17(36)
      abb17(36)=abb17(32)*abb17(36)
      abb17(34)=abb17(34)*spbl6k3
      abb17(37)=abb17(24)*abb17(31)
      abb17(34)=abb17(34)+abb17(37)
      abb17(34)=abb17(34)*spal6k7
      abb17(37)=-spak3k4*abb17(34)
      abb17(36)=abb17(37)+abb17(36)
      abb17(36)=spbk7k2*abb17(36)
      abb17(28)=abb17(36)+abb17(28)
      abb17(28)=4.0_ki*abb17(28)
      abb17(9)=abb17(9)*spbe7k2
      abb17(36)=abb17(9)*spak1k2
      abb17(30)=-abb17(36)*abb17(30)
      abb17(37)=abb17(30)*spbl6k3
      abb17(38)=-abb17(36)*abb17(33)
      abb17(39)=abb17(38)*spbl5k3
      abb17(37)=abb17(37)+abb17(39)
      abb17(40)=spal5e7*abb17(27)
      abb17(41)=spak1e7*abb17(35)
      abb17(40)=abb17(40)-abb17(41)
      abb17(40)=abb17(37)*abb17(40)
      abb17(39)=abb17(39)*spbl6k3
      abb17(24)=abb17(24)*abb17(30)
      abb17(39)=abb17(39)+abb17(24)
      abb17(39)=abb17(39)*spal6e7*spak3k4
      abb17(39)=abb17(39)+abb17(40)
      abb17(40)=4.0_ki*abb17(39)
      abb17(41)=spbl5k3*spae7k7
      abb17(42)=abb17(38)*abb17(41)
      abb17(43)=spbl6k3*spae7k7
      abb17(44)=abb17(43)*abb17(30)
      abb17(42)=abb17(42)+abb17(44)
      abb17(44)=spbk7k3*spak3k4
      abb17(45)=abb17(44)*abb17(42)
      abb17(45)=4.0_ki*abb17(45)
      abb17(10)=abb17(10)*abb17(11)*spbe7k2
      abb17(11)=-abb17(33)*abb17(10)*abb17(4)
      abb17(33)=abb17(11)*abb17(41)
      abb17(10)=abb17(8)*abb17(10)
      abb17(15)=-abb17(15)*abb17(10)
      abb17(46)=abb17(15)*abb17(43)
      abb17(33)=abb17(33)-abb17(46)
      abb17(46)=abb17(6)*spbk7k2
      abb17(47)=abb17(33)*abb17(46)
      abb17(48)=abb17(11)*abb17(43)
      abb17(10)=-abb17(19)*abb17(10)
      abb17(19)=abb17(10)*abb17(41)
      abb17(19)=abb17(48)-abb17(19)
      abb17(48)=abb17(7)*spbk7k2
      abb17(49)=abb17(19)*abb17(48)
      abb17(47)=abb17(47)+abb17(49)
      abb17(49)=-spak2k4*abb17(47)
      abb17(50)=abb17(26)*abb17(41)
      abb17(51)=abb17(25)*abb17(43)
      abb17(50)=abb17(50)+abb17(51)
      abb17(9)=-abb17(9)*abb17(8)
      abb17(51)=-abb17(4)*abb17(9)
      abb17(52)=abb17(51)*spbk7l6
      abb17(9)=-abb17(5)*abb17(9)
      abb17(53)=abb17(9)*spbk7l5
      abb17(54)=abb17(52)+abb17(53)
      abb17(55)=abb17(50)*spak2k4*abb17(54)
      abb17(56)=spak2k4*spae7k7
      abb17(57)=abb17(11)*abb17(56)
      abb17(58)=abb17(57)*abb17(6)
      abb17(10)=abb17(10)*abb17(7)
      abb17(59)=abb17(56)*abb17(10)
      abb17(58)=abb17(58)-abb17(59)
      abb17(58)=abb17(58)*spbk7l5
      abb17(60)=abb17(57)*abb17(7)
      abb17(15)=abb17(15)*abb17(6)
      abb17(61)=abb17(56)*abb17(15)
      abb17(60)=abb17(60)-abb17(61)
      abb17(60)=abb17(60)*spbk7l6
      abb17(58)=abb17(58)+abb17(60)
      abb17(60)=2.0_ki*spbk3k2
      abb17(58)=abb17(58)*abb17(60)
      abb17(60)=abb17(38)*spbl5k1
      abb17(62)=abb17(30)*spbl6k1
      abb17(60)=abb17(60)+abb17(62)
      abb17(62)=spbk7k3*spae7k7
      abb17(63)=abb17(62)*spak1k4
      abb17(64)=2.0_ki*abb17(63)
      abb17(65)=abb17(64)*abb17(60)
      abb17(49)=-abb17(58)+abb17(65)+abb17(55)+abb17(49)
      abb17(55)=spbk7k1*spak1k4
      abb17(58)=spak4l6*spbk7l6
      abb17(65)=spak4l5*spbk7l5
      abb17(58)=-abb17(65)+abb17(55)-abb17(58)
      abb17(65)=abb17(58)*abb17(42)
      abb17(65)=abb17(49)-abb17(65)
      abb17(65)=4.0_ki*abb17(65)
      abb17(66)=abb17(32)*spak4k7
      abb17(67)=abb17(66)*spbk7k2
      abb17(68)=8.0_ki*abb17(67)
      abb17(69)=abb17(37)*spak4e7
      abb17(70)=8.0_ki*abb17(69)
      abb17(33)=abb17(33)*abb17(17)
      abb17(19)=abb17(19)*abb17(20)
      abb17(19)=abb17(33)+abb17(19)
      abb17(19)=spbk7k3*abb17(19)
      abb17(19)=abb17(19)-abb17(39)
      abb17(19)=4.0_ki*abb17(19)
      abb17(33)=-abb17(44)+abb17(58)
      abb17(33)=abb17(42)*abb17(33)
      abb17(39)=abb17(56)*abb17(54)
      abb17(56)=spbk4k3*spak1k4*abb17(39)
      abb17(33)=abb17(56)+abb17(33)-abb17(49)
      abb17(33)=2.0_ki*abb17(33)
      abb17(22)=abb17(22)*spak1k4
      abb17(49)=abb17(22)*abb17(23)
      abb17(49)=-abb17(67)+abb17(49)
      abb17(49)=4.0_ki*abb17(49)
      abb17(56)=4.0_ki*abb17(69)
      abb17(58)=spak2k7*spbk7e7
      abb17(14)=-abb17(14)*abb17(58)
      abb17(34)=spbk7e7*abb17(34)
      abb17(24)=-spak2l6*abb17(24)
      abb17(67)=-spak2l5*abb17(38)*spbl5k3**2
      abb17(24)=abb17(67)+abb17(24)+abb17(34)
      abb17(24)=spak3k4*abb17(24)
      abb17(34)=abb17(32)*spbk7e7
      abb17(67)=-spak1k7*abb17(34)
      abb17(69)=spak1k2**2
      abb17(71)=abb17(51)*abb17(69)
      abb17(72)=-spbl6k3*abb17(71)
      abb17(69)=abb17(9)*abb17(69)
      abb17(73)=-spbl5k3*abb17(69)
      abb17(67)=abb17(67)+abb17(72)+abb17(73)
      abb17(35)=abb17(67)*abb17(35)
      abb17(67)=spal5k7*abb17(34)
      abb17(8)=-spbl6k3*abb17(36)*abb17(8)
      abb17(8)=abb17(67)+2.0_ki*abb17(8)
      abb17(8)=abb17(27)*abb17(8)
      abb17(8)=abb17(35)+abb17(14)+abb17(24)+abb17(8)
      abb17(8)=2.0_ki*abb17(8)
      abb17(14)=abb17(37)*spak2k4
      abb17(24)=abb17(66)*spbk7e7
      abb17(14)=abb17(14)-abb17(24)
      abb17(24)=4.0_ki*abb17(14)
      abb17(22)=-abb17(22)*abb17(58)
      abb17(14)=abb17(22)-abb17(14)
      abb17(14)=2.0_ki*abb17(14)
      abb17(22)=-abb17(54)*abb17(50)
      abb17(22)=abb17(22)+abb17(47)
      abb17(22)=spak2k3*abb17(22)
      abb17(11)=abb17(11)*spae7k7
      abb17(27)=abb17(11)*abb17(7)
      abb17(15)=spae7k7*abb17(15)
      abb17(27)=abb17(27)-abb17(15)
      abb17(27)=abb17(27)*spbk7l6
      abb17(35)=abb17(11)*abb17(6)
      abb17(10)=spae7k7*abb17(10)
      abb17(35)=abb17(35)-abb17(10)
      abb17(35)=abb17(35)*spbk7l5
      abb17(27)=abb17(27)+abb17(35)
      abb17(35)=es234-es34
      abb17(35)=-2.0_ki*abb17(35)
      abb17(35)=abb17(27)*abb17(35)
      abb17(25)=-abb17(39)*abb17(25)
      abb17(36)=-spbk7k2*abb17(61)
      abb17(47)=abb17(57)*abb17(48)
      abb17(25)=abb17(25)+abb17(36)+abb17(47)
      abb17(25)=spbl6k4*abb17(25)
      abb17(26)=-abb17(39)*abb17(26)
      abb17(36)=abb17(57)*abb17(46)
      abb17(39)=-spbk7k2*abb17(59)
      abb17(26)=abb17(26)+abb17(36)+abb17(39)
      abb17(26)=spbl5k4*abb17(26)
      abb17(36)=-abb17(62)*abb17(60)
      abb17(39)=spbk7k1*abb17(42)
      abb17(36)=2.0_ki*abb17(36)+abb17(39)
      abb17(36)=spak1k3*abb17(36)
      abb17(39)=-spak3l6*spbk7l6
      abb17(47)=-spak3l5*spbk7l5
      abb17(39)=abb17(47)+abb17(39)
      abb17(39)=abb17(42)*abb17(39)
      abb17(42)=abb17(30)*spae7k7
      abb17(47)=abb17(42)*spbl6k4
      abb17(50)=abb17(38)*spae7k7
      abb17(54)=abb17(50)*spbl5k4
      abb17(57)=abb17(47)+abb17(54)
      abb17(55)=abb17(57)*abb17(55)
      abb17(42)=abb17(42)*spbk7l6
      abb17(57)=-spbl6k4*abb17(42)
      abb17(54)=-spbk7l6*abb17(54)
      abb17(54)=abb17(57)+abb17(54)
      abb17(54)=spak4l6*abb17(54)
      abb17(47)=-spbk7l5*abb17(47)
      abb17(50)=abb17(50)*spbk7l5
      abb17(57)=-spbl5k4*abb17(50)
      abb17(47)=abb17(47)+abb17(57)
      abb17(47)=spak4l5*abb17(47)
      abb17(57)=spbk7k4*spak1k4*spae7k7
      abb17(58)=-abb17(60)*abb17(57)
      abb17(22)=2.0_ki*abb17(58)+abb17(36)+abb17(47)+abb17(54)+abb17(55)+abb17(&
      &22)+abb17(25)+abb17(26)+abb17(35)+abb17(39)
      abb17(22)=2.0_ki*abb17(22)
      abb17(25)=abb17(18)*spak1l5
      abb17(26)=abb17(21)*spak1l6
      abb17(25)=abb17(25)-abb17(26)
      abb17(25)=abb17(25)*spbl6l5
      abb17(13)=abb17(25)-3.0_ki*abb17(13)
      abb17(25)=3.0_ki*spbl5k2
      abb17(12)=abb17(25)*abb17(12)*abb17(7)
      abb17(25)=3.0_ki*spbl6k2
      abb17(16)=abb17(25)*abb17(16)*abb17(6)
      abb17(12)=abb17(12)+abb17(16)
      abb17(16)=2.0_ki*abb17(13)+abb17(12)
      abb17(16)=abb17(23)*abb17(16)
      abb17(23)=-spbl5k4*spak4k7
      abb17(25)=3.0_ki*spbl5k1
      abb17(26)=-spak1k7*abb17(25)
      abb17(35)=-spal6k7*spbl6l5
      abb17(23)=abb17(35)+abb17(26)+abb17(23)
      abb17(23)=abb17(29)*abb17(23)
      abb17(26)=-spbl6k4*spak4k7
      abb17(35)=3.0_ki*spbl6k1
      abb17(36)=-spak1k7*abb17(35)
      abb17(39)=spal5k7*spbl6l5
      abb17(26)=abb17(39)+abb17(36)+abb17(26)
      abb17(26)=abb17(31)*abb17(26)
      abb17(32)=-spak3k7*abb17(32)
      abb17(23)=abb17(32)+abb17(26)+abb17(23)
      abb17(23)=spbk7k2*abb17(23)
      abb17(16)=abb17(23)+abb17(16)
      abb17(16)=4.0_ki*abb17(16)
      abb17(23)=spbl6k4*spak4e7
      abb17(26)=spal5e7*spbl6l5
      abb17(23)=abb17(23)-abb17(26)
      abb17(23)=abb17(23)*abb17(30)
      abb17(26)=spbl5k4*spak4e7
      abb17(32)=spal6e7*spbl6l5
      abb17(26)=abb17(26)+abb17(32)
      abb17(26)=abb17(26)*abb17(38)
      abb17(32)=abb17(37)*spak3e7
      abb17(36)=3.0_ki*spak1e7
      abb17(36)=abb17(60)*abb17(36)
      abb17(23)=abb17(32)+abb17(36)+abb17(23)+abb17(26)
      abb17(26)=4.0_ki*abb17(23)
      abb17(32)=abb17(42)+abb17(50)
      abb17(36)=4.0_ki*abb17(32)
      abb17(23)=abb17(27)-abb17(23)
      abb17(23)=4.0_ki*abb17(23)
      abb17(27)=-2.0_ki*abb17(32)
      abb17(12)=-spak2k7*abb17(12)
      abb17(32)=spal6k7*abb17(29)
      abb17(39)=-spal5k7*abb17(31)
      abb17(32)=abb17(39)+abb17(32)
      abb17(32)=spbl6l5*abb17(32)
      abb17(12)=abb17(12)+abb17(32)
      abb17(12)=spbk7e7*abb17(12)
      abb17(13)=-spak2k7*spbk7e7*abb17(13)
      abb17(32)=-spak2k4*abb17(30)
      abb17(39)=spak4k7*spbk7e7
      abb17(42)=abb17(31)*abb17(39)
      abb17(32)=abb17(32)+abb17(42)
      abb17(32)=spbl6k4*abb17(32)
      abb17(42)=-spak2k4*abb17(38)
      abb17(39)=abb17(29)*abb17(39)
      abb17(39)=abb17(42)+abb17(39)
      abb17(39)=spbl5k4*abb17(39)
      abb17(42)=spak1k7*spbk7e7
      abb17(31)=abb17(31)*abb17(42)
      abb17(31)=abb17(31)+abb17(71)
      abb17(31)=abb17(31)*abb17(35)
      abb17(29)=abb17(29)*abb17(42)
      abb17(29)=abb17(29)+abb17(69)
      abb17(25)=abb17(29)*abb17(25)
      abb17(29)=-spak2k3*abb17(37)
      abb17(34)=spak3k7*abb17(34)
      abb17(12)=abb17(34)+abb17(29)+abb17(25)+abb17(31)+abb17(39)+2.0_ki*abb17(&
      &13)+abb17(32)+abb17(12)
      abb17(12)=2.0_ki*abb17(12)
      abb17(13)=abb17(41)*spak1l5
      abb17(25)=abb17(43)*spak1l6
      abb17(13)=abb17(13)+abb17(25)
      abb17(13)=abb17(13)*abb17(44)
      abb17(25)=-abb17(51)*abb17(13)
      abb17(29)=-spak3k4*abb17(15)
      abb17(20)=abb17(11)*abb17(20)
      abb17(20)=abb17(29)+abb17(20)
      abb17(29)=spbk3k2*spbk7k3
      abb17(20)=abb17(20)*abb17(29)
      abb17(20)=abb17(20)+abb17(25)
      abb17(20)=4.0_ki*abb17(20)
      abb17(25)=8.0_ki*abb17(63)
      abb17(31)=abb17(51)*abb17(25)
      abb17(32)=abb17(51)*abb17(64)
      abb17(34)=abb17(62)*spak1k3
      abb17(34)=abb17(34)+abb17(57)
      abb17(35)=spak1l5*spae7k7
      abb17(37)=-spbk7l5*abb17(35)
      abb17(37)=abb17(37)+abb17(34)
      abb17(37)=abb17(51)*abb17(37)
      abb17(15)=spbk7k2*abb17(15)
      abb17(39)=-abb17(11)*abb17(48)
      abb17(41)=spak1l6*spae7k7
      abb17(43)=-abb17(52)*abb17(41)
      abb17(15)=abb17(43)+abb17(15)+abb17(39)+abb17(37)
      abb17(15)=4.0_ki*abb17(15)
      abb17(37)=spak1k7*spbk7k2
      abb17(37)=16.0_ki*abb17(37)
      abb17(39)=abb17(18)*abb17(37)
      abb17(43)=16.0_ki*spak1e7
      abb17(44)=abb17(51)*abb17(43)
      abb17(18)=-abb17(18)*abb17(42)
      abb17(18)=abb17(18)-abb17(30)
      abb17(18)=8.0_ki*abb17(18)
      abb17(13)=-abb17(9)*abb17(13)
      abb17(17)=abb17(11)*abb17(17)
      abb17(30)=-spak3k4*abb17(10)
      abb17(17)=abb17(17)+abb17(30)
      abb17(17)=abb17(17)*abb17(29)
      abb17(13)=abb17(17)+abb17(13)
      abb17(13)=4.0_ki*abb17(13)
      abb17(17)=abb17(9)*abb17(25)
      abb17(25)=abb17(9)*abb17(64)
      abb17(29)=-spbk7l6*abb17(41)
      abb17(29)=abb17(29)+abb17(34)
      abb17(29)=abb17(9)*abb17(29)
      abb17(11)=-abb17(11)*abb17(46)
      abb17(10)=spbk7k2*abb17(10)
      abb17(30)=-abb17(53)*abb17(35)
      abb17(10)=abb17(30)+abb17(11)+abb17(10)+abb17(29)
      abb17(10)=4.0_ki*abb17(10)
      abb17(11)=abb17(21)*abb17(37)
      abb17(29)=abb17(9)*abb17(43)
      abb17(21)=-abb17(21)*abb17(42)
      abb17(21)=abb17(21)-abb17(38)
      abb17(21)=8.0_ki*abb17(21)
      abb17(30)=4.0_ki*abb17(60)
      abb17(34)=spae7k7*abb17(30)
      abb17(35)=4.0_ki*abb17(51)
      abb17(37)=-spae7k7*abb17(35)
      abb17(9)=4.0_ki*abb17(9)
      abb17(38)=-spae7k7*abb17(9)
      abb17(41)=abb17(62)*spak3k4
      abb17(30)=-abb17(41)*abb17(30)
      abb17(35)=abb17(41)*abb17(35)
      abb17(9)=abb17(41)*abb17(9)
      R2d17=0.0_ki
      rat2 = rat2 + R2d17
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='17' value='", &
          & R2d17, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd17h3