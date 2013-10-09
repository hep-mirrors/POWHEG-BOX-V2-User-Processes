module     p0_dbaru_epnebbbarg_abbrevd17h2
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(82), public :: abb17
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
      abb17(5)=spbl5k2**(-1)
      abb17(6)=spak2l6**(-1)
      abb17(7)=spbl6k2**(-1)
      abb17(8)=NC*c1
      abb17(8)=abb17(8)-c4
      abb17(9)=i_*CVDU*abb17(3)*abb17(2)
      abb17(10)=TR*gW
      abb17(11)=abb17(10)**2
      abb17(12)=abb17(8)*abb17(9)*abb17(11)*abb17(1)
      abb17(13)=abb17(12)*spak1l5
      abb17(14)=spbl6k3**2
      abb17(15)=abb17(13)*abb17(14)
      abb17(10)=abb17(10)*mB
      abb17(10)=abb17(10)**2
      abb17(16)=-abb17(10)*abb17(8)
      abb17(9)=abb17(9)*abb17(1)
      abb17(17)=abb17(6)*abb17(9)
      abb17(18)=abb17(16)*abb17(17)
      abb17(19)=-abb17(5)*abb17(18)
      abb17(20)=spbk3k2*spak1k2
      abb17(21)=abb17(19)*abb17(20)
      abb17(22)=abb17(21)*spbl6k3
      abb17(15)=abb17(22)+abb17(15)
      abb17(15)=abb17(15)*spal6k7*spak3k4
      abb17(22)=spbl6k3*spak1l5
      abb17(23)=abb17(12)*abb17(22)
      abb17(24)=abb17(23)+abb17(21)
      abb17(25)=spbk3k1*spak3k4
      abb17(26)=spak1k7*abb17(24)*abb17(25)
      abb17(26)=-abb17(15)+abb17(26)
      abb17(26)=spbk7k2*abb17(26)
      abb17(11)=abb17(8)*abb17(11)
      abb17(27)=abb17(11)*abb17(20)
      abb17(28)=mB**4
      abb17(29)=abb17(28)*abb17(6)**2
      abb17(30)=abb17(5)*abb17(9)
      abb17(31)=abb17(29)*abb17(30)*abb17(27)
      abb17(32)=-abb17(18)*abb17(22)
      abb17(31)=abb17(31)-abb17(32)
      abb17(31)=abb17(31)*abb17(7)
      abb17(28)=abb17(28)*abb17(5)**2
      abb17(17)=abb17(28)*abb17(17)*abb17(27)
      abb17(16)=-abb17(30)*abb17(16)
      abb17(27)=abb17(16)*abb17(22)
      abb17(17)=abb17(17)-abb17(27)
      abb17(17)=abb17(17)*abb17(4)
      abb17(17)=abb17(31)+abb17(17)
      abb17(27)=spak3k4*spbk3k2
      abb17(17)=abb17(27)*abb17(17)
      abb17(30)=spak1l5*spbl5k3
      abb17(31)=spak1l6*spbl6k3
      abb17(30)=-abb17(30)-abb17(31)
      abb17(32)=2.0_ki*abb17(19)
      abb17(27)=abb17(30)*abb17(32)*abb17(27)
      abb17(17)=abb17(27)+abb17(17)
      abb17(27)=es712-es71
      abb17(30)=abb17(27)-es12
      abb17(33)=abb17(17)*abb17(30)
      abb17(16)=abb17(16)*abb17(4)
      abb17(34)=abb17(16)*spbk7k2
      abb17(35)=abb17(7)*spbk7k2
      abb17(36)=abb17(18)*abb17(35)
      abb17(36)=-abb17(34)+abb17(36)
      abb17(37)=abb17(20)*spak3k4*spbl6k3
      abb17(36)=abb17(37)*abb17(36)
      abb17(38)=abb17(12)*spbk7k2
      abb17(39)=abb17(14)*spak3k4
      abb17(40)=abb17(39)*spak1l6
      abb17(41)=abb17(40)*abb17(38)
      abb17(36)=abb17(41)+abb17(36)
      abb17(21)=abb17(23)-abb17(21)
      abb17(23)=spbl5k3*spak3k4
      abb17(21)=abb17(21)*abb17(23)
      abb17(41)=spbk7k2*abb17(21)
      abb17(36)=2.0_ki*abb17(36)+abb17(41)
      abb17(36)=spal5k7*abb17(36)
      abb17(26)=abb17(36)+abb17(33)+abb17(26)
      abb17(26)=4.0_ki*abb17(26)
      abb17(9)=spbe7k2*abb17(9)
      abb17(8)=abb17(8)*abb17(10)*abb17(9)
      abb17(10)=abb17(8)*abb17(5)
      abb17(33)=abb17(10)*abb17(4)
      abb17(36)=abb17(37)*abb17(33)
      abb17(8)=abb17(8)*abb17(6)
      abb17(41)=abb17(8)*abb17(7)
      abb17(42)=abb17(37)*abb17(41)
      abb17(9)=abb17(9)*abb17(11)
      abb17(11)=abb17(40)*abb17(9)
      abb17(11)=abb17(42)-abb17(11)
      abb17(36)=abb17(36)+abb17(11)
      abb17(42)=-abb17(5)*abb17(8)
      abb17(43)=abb17(42)*abb17(20)
      abb17(44)=abb17(9)*abb17(22)
      abb17(45)=abb17(43)+abb17(44)
      abb17(23)=abb17(45)*abb17(23)
      abb17(36)=-abb17(23)+2.0_ki*abb17(36)
      abb17(36)=abb17(36)*spal5e7
      abb17(45)=abb17(43)*spbl6k3
      abb17(46)=abb17(9)*spak1l5
      abb17(14)=abb17(14)*abb17(46)
      abb17(14)=abb17(45)-abb17(14)
      abb17(14)=abb17(14)*spal6e7*spak3k4
      abb17(43)=abb17(43)-abb17(44)
      abb17(45)=spak1e7*abb17(25)*abb17(43)
      abb17(14)=abb17(36)-abb17(14)+abb17(45)
      abb17(36)=4.0_ki*abb17(14)
      abb17(20)=abb17(20)*spae7k7
      abb17(45)=abb17(42)*abb17(20)
      abb17(47)=abb17(9)*spae7k7
      abb17(48)=abb17(47)*abb17(22)
      abb17(45)=abb17(45)-abb17(48)
      abb17(48)=spbk7k3*spak3k4
      abb17(49)=4.0_ki*abb17(48)
      abb17(50)=abb17(49)*abb17(45)
      abb17(51)=abb17(22)*spae7k7
      abb17(52)=abb17(10)*abb17(51)
      abb17(28)=-abb17(9)*abb17(28)*abb17(6)
      abb17(53)=abb17(28)*abb17(20)
      abb17(52)=abb17(52)+abb17(53)
      abb17(52)=abb17(52)*abb17(4)
      abb17(53)=abb17(52)*spbk7k2
      abb17(51)=abb17(8)*abb17(51)
      abb17(29)=-abb17(9)*abb17(29)*abb17(5)
      abb17(54)=abb17(29)*abb17(20)
      abb17(51)=abb17(51)+abb17(54)
      abb17(35)=abb17(51)*abb17(35)
      abb17(54)=2.0_ki*abb17(42)
      abb17(55)=spbk7k2*spae7k7
      abb17(56)=abb17(54)*abb17(55)
      abb17(57)=abb17(56)*abb17(31)
      abb17(35)=-abb17(57)+abb17(53)+abb17(35)
      abb17(35)=spak2k4*abb17(35)
      abb17(41)=abb17(41)+abb17(33)
      abb17(53)=-abb17(41)*abb17(20)*spbk7l6
      abb17(58)=abb17(47)*spbk7l6
      abb17(59)=abb17(31)*abb17(58)
      abb17(53)=abb17(59)+abb17(53)
      abb17(59)=2.0_ki*spak4l5
      abb17(60)=abb17(53)*abb17(59)
      abb17(61)=abb17(42)*spae7k7
      abb17(62)=abb17(61)*es12
      abb17(63)=abb17(47)*spak1l5
      abb17(64)=abb17(63)*spbl6k1
      abb17(62)=abb17(64)+abb17(62)
      abb17(64)=spak1k4*spbk7k3
      abb17(65)=2.0_ki*abb17(64)
      abb17(66)=abb17(65)*abb17(62)
      abb17(67)=spak1l5*spae7k7
      abb17(68)=abb17(67)*spbk7k2
      abb17(69)=abb17(68)*spak2k4
      abb17(70)=abb17(42)*abb17(69)
      abb17(71)=abb17(63)*spbk7l6
      abb17(72)=abb17(71)*spak4l5
      abb17(70)=abb17(72)-abb17(70)
      abb17(70)=2.0_ki*abb17(70)
      abb17(72)=abb17(70)*spbl5k3
      abb17(35)=-abb17(66)+abb17(72)+abb17(60)+abb17(35)
      abb17(60)=spbk7l5*spak4l5
      abb17(66)=spbk7k1*spak1k4
      abb17(60)=abb17(60)-abb17(66)
      abb17(66)=spak4l6*spbk7l6
      abb17(66)=abb17(66)+abb17(60)
      abb17(72)=abb17(66)*abb17(45)
      abb17(72)=abb17(35)+abb17(72)
      abb17(72)=4.0_ki*abb17(72)
      abb17(73)=abb17(24)*spak4k7
      abb17(74)=abb17(73)*spbk7k2
      abb17(75)=8.0_ki*abb17(74)
      abb17(76)=abb17(43)*spak4e7
      abb17(77)=8.0_ki*abb17(76)
      abb17(51)=abb17(7)*abb17(51)
      abb17(78)=2.0_ki*abb17(61)
      abb17(79)=-abb17(31)*abb17(78)
      abb17(80)=abb17(54)*abb17(67)
      abb17(81)=-spbl5k3*abb17(80)
      abb17(51)=abb17(81)+abb17(79)+abb17(52)+abb17(51)
      abb17(51)=abb17(48)*abb17(51)
      abb17(14)=abb17(51)-abb17(14)
      abb17(14)=4.0_ki*abb17(14)
      abb17(51)=abb17(65)*abb17(61)
      abb17(51)=abb17(51)+abb17(76)
      abb17(51)=8.0_ki*abb17(51)
      abb17(52)=abb17(48)+abb17(66)
      abb17(52)=abb17(45)*abb17(52)
      abb17(66)=abb17(55)*abb17(42)*spak2k4
      abb17(79)=-spak4l5*abb17(58)
      abb17(66)=abb17(66)+abb17(79)
      abb17(66)=spbk4k3*spak1k4*abb17(66)
      abb17(35)=abb17(66)+abb17(52)+abb17(35)
      abb17(35)=2.0_ki*abb17(35)
      abb17(52)=spak1k4*spbk3k2
      abb17(30)=-abb17(30)*abb17(52)*abb17(19)
      abb17(66)=spak1k4*spbl6k3
      abb17(79)=spal5k7*abb17(66)*abb17(38)
      abb17(30)=-abb17(74)+abb17(79)+abb17(30)
      abb17(30)=4.0_ki*abb17(30)
      abb17(74)=abb17(66)*abb17(9)
      abb17(79)=abb17(74)*spal5e7
      abb17(76)=abb17(79)+abb17(76)
      abb17(79)=-4.0_ki*abb17(76)
      abb17(81)=abb17(61)*abb17(64)
      abb17(76)=abb17(81)+abb17(76)
      abb17(76)=4.0_ki*abb17(76)
      abb17(17)=spak2k7*abb17(17)
      abb17(15)=abb17(15)+abb17(17)
      abb17(15)=spbk7e7*abb17(15)
      abb17(17)=-abb17(7)*abb17(18)
      abb17(17)=abb17(16)+abb17(17)
      abb17(17)=abb17(37)*abb17(17)
      abb17(40)=-abb17(12)*abb17(40)
      abb17(17)=abb17(40)+abb17(17)
      abb17(17)=2.0_ki*abb17(17)-abb17(21)
      abb17(17)=spal5k7*spbk7e7*abb17(17)
      abb17(21)=spbk3k2*abb17(42)*spak1k2**2
      abb17(40)=abb17(24)*spbk7e7
      abb17(81)=-spak1k7*abb17(40)
      abb17(82)=-spak1k2*abb17(44)
      abb17(21)=abb17(81)+abb17(82)+abb17(21)
      abb17(21)=abb17(21)*abb17(25)
      abb17(11)=-2.0_ki*abb17(11)+abb17(23)
      abb17(11)=spak2l5*abb17(11)
      abb17(23)=abb17(10)*abb17(37)
      abb17(25)=-spak2l6*abb17(46)*abb17(39)
      abb17(11)=abb17(25)+abb17(11)+abb17(21)-3.0_ki*abb17(23)+abb17(17)+abb17(&
      &15)
      abb17(11)=2.0_ki*abb17(11)
      abb17(15)=abb17(43)*spak2k4
      abb17(17)=abb17(73)*spbk7e7
      abb17(15)=abb17(15)+abb17(17)
      abb17(17)=4.0_ki*abb17(15)
      abb17(21)=spal5k7*spbk7e7
      abb17(23)=-abb17(12)*abb17(66)*abb17(21)
      abb17(25)=abb17(19)*spbk7e7
      abb17(37)=-spak2k7*abb17(25)*abb17(52)
      abb17(39)=spak2l5*abb17(74)
      abb17(15)=abb17(39)+abb17(37)+abb17(23)+abb17(15)
      abb17(15)=2.0_ki*abb17(15)
      abb17(20)=abb17(20)*abb17(41)
      abb17(23)=-abb17(47)*abb17(31)
      abb17(31)=-spbl5k3*abb17(63)
      abb17(20)=abb17(31)+abb17(23)+abb17(20)
      abb17(20)=abb17(20)*abb17(49)
      abb17(23)=abb17(64)*abb17(47)
      abb17(23)=8.0_ki*abb17(23)
      abb17(31)=abb17(47)*abb17(65)
      abb17(37)=abb17(41)*abb17(69)
      abb17(39)=-abb17(63)*abb17(60)
      abb17(52)=abb17(56)*spak2k4
      abb17(56)=abb17(58)*abb17(59)
      abb17(52)=abb17(56)-abb17(52)
      abb17(52)=spak1l6*abb17(52)
      abb17(37)=abb17(37)+abb17(52)+abb17(39)
      abb17(37)=spbl6k4*abb17(37)
      abb17(22)=abb17(55)*abb17(22)*abb17(41)
      abb17(39)=-abb17(68)*abb17(54)*spbl5k3
      abb17(22)=abb17(39)-abb17(57)+abb17(22)
      abb17(22)=spak2k3*abb17(22)
      abb17(39)=-abb17(59)*spbk7l6*spak1k2*spae7k7*abb17(41)
      abb17(52)=abb17(61)*spak1k2
      abb17(54)=abb17(52)*abb17(60)
      abb17(39)=abb17(39)+abb17(54)
      abb17(39)=spbk4k2*abb17(39)
      abb17(54)=spbl5k3*abb17(71)
      abb17(53)=abb17(54)+abb17(53)
      abb17(54)=spbk7l5*abb17(45)
      abb17(53)=2.0_ki*abb17(53)+abb17(54)
      abb17(53)=spak3l5*abb17(53)
      abb17(54)=-spbk7k3*abb17(62)
      abb17(56)=-spbk7k1*abb17(45)
      abb17(54)=2.0_ki*abb17(54)+abb17(56)
      abb17(54)=spak1k3*abb17(54)
      abb17(55)=abb17(55)*spak1k2
      abb17(29)=abb17(29)*abb17(55)
      abb17(56)=abb17(29)*abb17(7)
      abb17(28)=abb17(4)*abb17(28)*abb17(55)
      abb17(56)=abb17(56)+abb17(28)
      abb17(57)=es234-es34
      abb17(56)=-abb17(56)*abb17(57)
      abb17(52)=spbk4k2*spbk7l6*abb17(52)
      abb17(59)=-spbl6k4*abb17(71)
      abb17(52)=abb17(59)+abb17(52)
      abb17(52)=spak4l6*abb17(52)
      abb17(59)=spbk7k4*spak1k4
      abb17(60)=-abb17(62)*abb17(59)
      abb17(64)=spbl5k4*abb17(70)
      abb17(45)=spak3l6*spbk7l6*abb17(45)
      abb17(22)=abb17(45)+abb17(64)+2.0_ki*abb17(60)+abb17(22)+abb17(54)+abb17(&
      &53)+abb17(52)+abb17(39)+abb17(37)+abb17(56)
      abb17(22)=2.0_ki*abb17(22)
      abb17(37)=-spbl6k4*spak4k7
      abb17(39)=3.0_ki*spbl6k1
      abb17(45)=-spak1k7*abb17(39)
      abb17(52)=3.0_ki*spbl6l5
      abb17(53)=spal5k7*abb17(52)
      abb17(37)=abb17(53)+abb17(45)+abb17(37)
      abb17(37)=abb17(13)*abb17(37)
      abb17(45)=spak1k2*spbk4k2*spak4k7
      abb17(53)=spbl6k2*spak1k2
      abb17(54)=abb17(53)*spal6k7
      abb17(56)=3.0_ki*es12
      abb17(60)=abb17(56)*spak1k7
      abb17(45)=abb17(45)-abb17(54)-abb17(60)
      abb17(54)=-abb17(19)*abb17(45)
      abb17(24)=-spak3k7*abb17(24)
      abb17(24)=abb17(24)+abb17(37)+abb17(54)
      abb17(24)=spbk7k2*abb17(24)
      abb17(32)=abb17(32)*spak1l6
      abb17(37)=abb17(16)*spak1l5
      abb17(32)=abb17(32)+abb17(37)
      abb17(37)=abb17(32)*spbl6k2
      abb17(54)=-abb17(18)*spak1l5
      abb17(37)=abb17(37)+3.0_ki*abb17(54)
      abb17(27)=-abb17(37)*abb17(27)
      abb17(54)=es12*abb17(54)
      abb17(60)=spal5k7*spak1k2
      abb17(64)=-abb17(18)*spbk7k2*abb17(60)
      abb17(54)=abb17(54)+abb17(64)
      abb17(32)=es12*abb17(32)
      abb17(34)=abb17(34)*abb17(60)
      abb17(32)=abb17(32)+2.0_ki*abb17(34)
      abb17(32)=spbl6k2*abb17(32)
      abb17(24)=3.0_ki*abb17(54)+abb17(32)+abb17(24)+abb17(27)
      abb17(24)=4.0_ki*abb17(24)
      abb17(27)=spbl6k1*spak1e7
      abb17(32)=spbl6l5*spal5e7
      abb17(27)=abb17(27)-abb17(32)
      abb17(32)=3.0_ki*abb17(46)
      abb17(27)=abb17(27)*abb17(32)
      abb17(32)=abb17(42)*spak1k2
      abb17(34)=spbk4k2*spak4e7
      abb17(54)=spal6e7*spbl6k2
      abb17(34)=abb17(34)-abb17(54)
      abb17(34)=abb17(34)*abb17(32)
      abb17(43)=abb17(43)*spak3e7
      abb17(54)=3.0_ki*spal5e7
      abb17(54)=spak1k2*abb17(54)*abb17(8)
      abb17(60)=abb17(42)*spak1e7
      abb17(56)=abb17(56)*abb17(60)
      abb17(64)=spak4e7*abb17(46)*spbl6k4
      abb17(27)=abb17(64)-abb17(43)-abb17(54)+abb17(56)+abb17(27)-abb17(34)
      abb17(34)=abb17(53)*spal5e7
      abb17(34)=2.0_ki*abb17(34)
      abb17(43)=-abb17(33)*abb17(34)
      abb17(43)=abb17(43)+abb17(27)
      abb17(43)=4.0_ki*abb17(43)
      abb17(42)=abb17(55)*abb17(42)
      abb17(42)=abb17(42)+abb17(71)
      abb17(53)=4.0_ki*abb17(42)
      abb17(54)=abb17(67)*spbk7l6
      abb17(34)=abb17(34)+abb17(54)
      abb17(33)=abb17(33)*abb17(34)
      abb17(34)=spak1k3*spbk7k3
      abb17(34)=abb17(34)+abb17(59)
      abb17(56)=-spak1l6*spbk7l6
      abb17(56)=abb17(56)+abb17(34)
      abb17(56)=abb17(78)*abb17(56)
      abb17(54)=abb17(8)*abb17(54)
      abb17(29)=-abb17(29)+abb17(54)
      abb17(29)=abb17(7)*abb17(29)
      abb17(54)=-spbk7l5*abb17(80)
      abb17(27)=abb17(54)+abb17(29)-abb17(28)+abb17(56)+abb17(33)-abb17(27)
      abb17(27)=4.0_ki*abb17(27)
      abb17(19)=-32.0_ki*spak1k7*spbk7k2*abb17(19)
      abb17(28)=32.0_ki*abb17(60)
      abb17(29)=-2.0_ki*abb17(42)
      abb17(33)=-abb17(32)*abb17(57)
      abb17(42)=abb17(25)*abb17(45)
      abb17(45)=es12*abb17(32)
      abb17(54)=abb17(21)*spak1k2
      abb17(18)=abb17(18)*abb17(54)
      abb17(18)=abb17(45)+abb17(18)
      abb17(45)=3.0_ki*spak1k2
      abb17(10)=abb17(10)*abb17(45)
      abb17(16)=2.0_ki*abb17(16)
      abb17(16)=-abb17(54)*abb17(16)
      abb17(10)=abb17(10)+abb17(16)
      abb17(10)=spbl6k2*abb17(10)
      abb17(16)=abb17(13)*spbk7e7
      abb17(54)=spak4k7*abb17(16)
      abb17(56)=-spak2k4*abb17(46)
      abb17(54)=abb17(56)+abb17(54)
      abb17(54)=spbl6k4*abb17(54)
      abb17(16)=spak1k7*abb17(16)
      abb17(56)=spak1k2*abb17(46)
      abb17(16)=abb17(56)+abb17(16)
      abb17(16)=abb17(16)*abb17(39)
      abb17(37)=-spak2k7*spbk7e7*abb17(37)
      abb17(8)=spak2l5*abb17(8)*abb17(45)
      abb17(13)=-abb17(13)*abb17(21)
      abb17(21)=spak2l5*abb17(46)
      abb17(13)=abb17(13)+abb17(21)
      abb17(13)=abb17(13)*abb17(52)
      abb17(21)=spak3k7*abb17(40)
      abb17(39)=-spak2k3*abb17(44)
      abb17(8)=abb17(21)+abb17(39)+abb17(13)+abb17(8)+abb17(37)+abb17(16)+abb17&
      &(54)+3.0_ki*abb17(18)+abb17(10)+abb17(42)+abb17(33)
      abb17(8)=2.0_ki*abb17(8)
      abb17(10)=spak1k7*abb17(25)
      abb17(10)=-abb17(32)+abb17(10)
      abb17(10)=16.0_ki*abb17(10)
      abb17(13)=-abb17(55)*abb17(41)
      abb17(16)=abb17(47)*abb17(34)
      abb17(18)=-spak1l6*abb17(58)
      abb17(21)=-spbk7l5*abb17(63)
      abb17(13)=abb17(21)+abb17(18)+abb17(13)+abb17(16)
      abb17(13)=4.0_ki*abb17(13)
      abb17(16)=16.0_ki*spak1k7*abb17(38)
      abb17(18)=abb17(9)*spak1e7
      abb17(18)=16.0_ki*abb17(18)
      abb17(12)=-abb17(12)*spak1k7*spbk7e7
      abb17(9)=-spak1k2*abb17(9)
      abb17(9)=abb17(9)+abb17(12)
      abb17(9)=8.0_ki*abb17(9)
      abb17(12)=4.0_ki*abb17(62)
      abb17(21)=8.0_ki*abb17(61)
      abb17(25)=-4.0_ki*abb17(47)
      abb17(32)=-abb17(62)*abb17(49)
      abb17(33)=abb17(48)*abb17(21)
      abb17(34)=abb17(47)*abb17(49)
      R2d17=0.0_ki
      rat2 = rat2 + R2d17
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='17' value='", &
          & R2d17, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd17h2
