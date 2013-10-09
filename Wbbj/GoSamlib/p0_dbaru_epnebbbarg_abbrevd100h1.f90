module     p0_dbaru_epnebbbarg_abbrevd100h1
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(77), public :: abb100
   complex(ki), public :: R2d100
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
      abb100(1)=1.0_ki/(-mB**2+es67)
      abb100(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb100(3)=1.0_ki/(es34+es567-es12-es234)
      abb100(4)=NC**(-1)
      abb100(5)=spak2l5**(-1)
      abb100(6)=spbl6k2**(-1)
      abb100(7)=sqrt(mB**2)
      abb100(8)=spak2l6**(-1)
      abb100(9)=TR*gW
      abb100(9)=CVDU*i_*spak1k4*abb100(3)*abb100(2)*abb100(1)*abb100(9)**2
      abb100(10)=abb100(9)*abb100(4)
      abb100(11)=2.0_ki*c3
      abb100(12)=abb100(10)*abb100(11)
      abb100(13)=spbk4k3*spal6e7
      abb100(14)=abb100(12)*abb100(13)
      abb100(15)=abb100(5)*spbe7k2
      abb100(16)=abb100(15)*mB
      abb100(17)=abb100(16)*abb100(14)
      abb100(18)=abb100(4)**2
      abb100(18)=abb100(18)+1.0_ki
      abb100(9)=abb100(9)*abb100(18)
      abb100(18)=abb100(9)*c2
      abb100(19)=abb100(18)*mB
      abb100(20)=abb100(19)*abb100(15)
      abb100(21)=abb100(20)*abb100(13)
      abb100(17)=abb100(17)-abb100(21)
      abb100(17)=abb100(17)*abb100(7)
      abb100(21)=mB**2
      abb100(22)=abb100(15)*abb100(21)
      abb100(23)=abb100(22)*abb100(14)
      abb100(24)=abb100(21)*c2
      abb100(25)=abb100(24)*abb100(15)
      abb100(26)=abb100(9)*abb100(13)
      abb100(27)=abb100(25)*abb100(26)
      abb100(17)=abb100(17)-abb100(23)+abb100(27)
      abb100(17)=abb100(17)*spak2k4
      abb100(23)=spbk3k1*spal6e7
      abb100(28)=abb100(12)*abb100(23)
      abb100(16)=abb100(16)*abb100(28)
      abb100(20)=abb100(20)*abb100(23)
      abb100(16)=abb100(16)-abb100(20)
      abb100(16)=abb100(16)*abb100(7)
      abb100(20)=abb100(22)*abb100(28)
      abb100(29)=abb100(9)*abb100(23)
      abb100(30)=abb100(25)*abb100(29)
      abb100(16)=abb100(16)-abb100(20)+abb100(30)
      abb100(16)=abb100(16)*spak1k2
      abb100(16)=abb100(17)-abb100(16)
      abb100(17)=abb100(6)*spbe7k2
      abb100(20)=abb100(17)*abb100(21)
      abb100(31)=abb100(20)*abb100(5)
      abb100(32)=abb100(31)*abb100(12)
      abb100(33)=abb100(31)*abb100(18)
      abb100(32)=abb100(32)-abb100(33)
      abb100(34)=-spbk4k3*abb100(32)
      abb100(35)=abb100(34)*spak2k4
      abb100(32)=-spbk3k1*abb100(32)
      abb100(36)=abb100(32)*spak1k2
      abb100(35)=abb100(35)-abb100(36)
      abb100(36)=spbk7k2*spae7k7
      abb100(37)=abb100(35)*abb100(36)
      abb100(38)=abb100(12)*spbl5k2
      abb100(39)=abb100(38)*abb100(13)
      abb100(40)=spbl5k2*abb100(18)
      abb100(41)=abb100(40)*abb100(13)
      abb100(42)=abb100(39)-abb100(41)
      abb100(43)=abb100(42)*spbk7e7
      abb100(44)=abb100(43)*spak4k7
      abb100(45)=abb100(38)*abb100(23)
      abb100(46)=abb100(40)*abb100(23)
      abb100(47)=abb100(45)-abb100(46)
      abb100(48)=abb100(47)*spbk7e7
      abb100(49)=abb100(48)*spak1k7
      abb100(44)=abb100(44)+abb100(49)-abb100(37)
      abb100(49)=abb100(16)+abb100(44)
      abb100(50)=es12-es712+es71
      abb100(50)=abb100(49)*abb100(50)
      abb100(51)=abb100(42)*spbe7l6
      abb100(52)=abb100(51)*spak4l6
      abb100(53)=abb100(47)*spbe7l6
      abb100(54)=abb100(53)*spak1l6
      abb100(52)=abb100(52)+abb100(54)
      abb100(54)=abb100(16)-abb100(52)
      abb100(54)=spbl6k2*abb100(54)
      abb100(55)=abb100(12)*spbk3k1
      abb100(56)=abb100(22)*abb100(55)
      abb100(9)=abb100(25)*abb100(9)
      abb100(25)=abb100(9)*spbk3k1
      abb100(25)=abb100(56)-abb100(25)
      abb100(25)=abb100(25)*spak1k2
      abb100(56)=abb100(12)*spbk4k3
      abb100(57)=abb100(22)*abb100(56)
      abb100(9)=abb100(9)*spbk4k3
      abb100(9)=abb100(57)-abb100(9)
      abb100(9)=abb100(9)*spak2k4
      abb100(9)=abb100(25)-abb100(9)
      abb100(25)=-abb100(9)*abb100(36)
      abb100(57)=abb100(51)*spak4k7
      abb100(58)=abb100(53)*spak1k7
      abb100(57)=abb100(57)+abb100(58)
      abb100(58)=-spbk7k2*abb100(57)
      abb100(25)=abb100(25)+abb100(54)+abb100(58)
      abb100(25)=spak2l6*abb100(25)
      abb100(39)=abb100(39)*spbe7k2
      abb100(41)=abb100(41)*spbe7k2
      abb100(39)=abb100(39)-abb100(41)
      abb100(54)=spak2k4*abb100(7)
      abb100(58)=abb100(54)*abb100(39)
      abb100(45)=abb100(45)*spbe7k2
      abb100(46)=abb100(46)*spbe7k2
      abb100(45)=abb100(45)-abb100(46)
      abb100(59)=spak1k2*abb100(7)
      abb100(60)=-abb100(59)*abb100(45)
      abb100(58)=abb100(58)+abb100(60)
      abb100(60)=abb100(7)-mB
      abb100(58)=abb100(60)*abb100(58)
      abb100(38)=abb100(38)-abb100(40)
      abb100(40)=abb100(17)*mB
      abb100(60)=-abb100(40)*abb100(38)
      abb100(61)=-spbk4k3*abb100(60)
      abb100(62)=abb100(61)*abb100(7)
      abb100(63)=spak2k4*abb100(62)
      abb100(60)=-spbk3k1*abb100(60)
      abb100(64)=abb100(60)*abb100(7)
      abb100(65)=-spak1k2*abb100(64)
      abb100(63)=abb100(63)+abb100(65)
      abb100(63)=abb100(63)*abb100(36)
      abb100(65)=abb100(43)*spak4l6
      abb100(66)=abb100(48)*spak1l6
      abb100(65)=abb100(65)+abb100(66)
      abb100(66)=spak2k7*spbl6k2*abb100(65)
      abb100(25)=abb100(66)+abb100(25)+abb100(63)+abb100(50)+abb100(58)
      abb100(25)=4.0_ki*abb100(25)
      abb100(50)=-spbk4k3*abb100(38)
      abb100(58)=abb100(50)*spak2k4
      abb100(38)=-spbk3k1*abb100(38)
      abb100(63)=abb100(38)*spak1k2
      abb100(58)=abb100(58)-abb100(63)
      abb100(63)=8.0_ki*spal6k7
      abb100(66)=spbk7k2*abb100(58)*abb100(63)
      abb100(39)=spak2k4*abb100(39)
      abb100(45)=-spak1k2*abb100(45)
      abb100(39)=abb100(39)+abb100(45)-abb100(44)
      abb100(39)=8.0_ki*abb100(39)
      abb100(44)=spbe7k2*spbl5k2
      abb100(22)=abb100(44)+abb100(22)
      abb100(10)=abb100(11)*abb100(10)*abb100(22)
      abb100(11)=abb100(13)*abb100(10)
      abb100(11)=abb100(11)-abb100(41)-abb100(27)
      abb100(11)=spak2k4*abb100(11)
      abb100(10)=-abb100(23)*abb100(10)
      abb100(10)=abb100(10)+abb100(46)+abb100(30)
      abb100(10)=spak1k2*abb100(10)
      abb100(10)=abb100(11)+abb100(10)+abb100(52)
      abb100(10)=8.0_ki*abb100(10)
      abb100(11)=abb100(18)*abb100(13)
      abb100(11)=abb100(11)-abb100(14)
      abb100(22)=-spak2k4*abb100(11)
      abb100(27)=abb100(18)*abb100(23)
      abb100(27)=abb100(27)-abb100(28)
      abb100(30)=spak1k2*abb100(27)
      abb100(22)=abb100(22)+abb100(30)
      abb100(30)=mB**4
      abb100(22)=abb100(22)*abb100(5)*abb100(30)*abb100(17)
      abb100(41)=abb100(18)*spbk4k3
      abb100(44)=abb100(56)-abb100(41)
      abb100(45)=abb100(44)*spak2k4
      abb100(18)=abb100(18)*spbk3k1
      abb100(46)=abb100(55)-abb100(18)
      abb100(55)=abb100(46)*spak1k2
      abb100(45)=abb100(45)-abb100(55)
      abb100(15)=-abb100(36)*abb100(45)*abb100(6)**2*abb100(30)*abb100(15)
      abb100(15)=abb100(15)+abb100(22)
      abb100(15)=abb100(8)*abb100(15)
      abb100(22)=abb100(64)*spak1e7
      abb100(30)=abb100(62)*spak4e7
      abb100(22)=abb100(22)+abb100(30)
      abb100(30)=abb100(11)*abb100(20)
      abb100(55)=spbk7l5*abb100(8)
      abb100(56)=-abb100(30)*abb100(55)
      abb100(43)=-abb100(43)+abb100(56)
      abb100(43)=spak4k7*abb100(43)
      abb100(56)=abb100(27)*abb100(20)
      abb100(55)=-abb100(56)*abb100(55)
      abb100(48)=-abb100(48)+abb100(55)
      abb100(48)=spak1k7*abb100(48)
      abb100(55)=spbl6l5*abb100(8)
      abb100(30)=-abb100(30)*abb100(55)
      abb100(30)=abb100(51)+abb100(30)
      abb100(30)=spak4l6*abb100(30)
      abb100(51)=-abb100(56)*abb100(55)
      abb100(51)=abb100(53)+abb100(51)
      abb100(51)=spak1l6*abb100(51)
      abb100(15)=abb100(51)+abb100(30)+abb100(48)+abb100(43)+abb100(15)+abb100(&
      &37)-abb100(16)+abb100(22)
      abb100(15)=8.0_ki*abb100(15)
      abb100(16)=-abb100(20)*abb100(42)
      abb100(30)=-spak2k4*abb100(16)
      abb100(20)=-abb100(20)*abb100(47)
      abb100(37)=spak1k2*abb100(20)
      abb100(30)=abb100(30)+abb100(37)
      abb100(30)=abb100(8)*abb100(30)
      abb100(22)=abb100(30)+abb100(49)-abb100(52)-abb100(22)
      abb100(22)=4.0_ki*abb100(22)
      abb100(30)=spak4k7*abb100(62)
      abb100(37)=spak1k7*abb100(64)
      abb100(30)=abb100(30)+abb100(37)
      abb100(30)=4.0_ki*abb100(30)
      abb100(37)=abb100(19)*abb100(5)
      abb100(43)=abb100(37)*abb100(13)
      abb100(48)=abb100(5)*mB
      abb100(49)=abb100(48)*abb100(14)
      abb100(43)=abb100(43)-abb100(49)
      abb100(49)=abb100(43)*abb100(54)
      abb100(51)=abb100(37)*abb100(23)
      abb100(48)=abb100(48)*abb100(28)
      abb100(48)=abb100(51)-abb100(48)
      abb100(51)=-abb100(48)*abb100(59)
      abb100(49)=abb100(49)+abb100(51)
      abb100(49)=4.0_ki*spbk7k2*abb100(49)
      abb100(51)=spak4l6*abb100(62)
      abb100(52)=spak1l6*abb100(64)
      abb100(51)=abb100(51)+abb100(52)
      abb100(51)=4.0_ki*abb100(51)
      abb100(43)=abb100(7)*abb100(43)
      abb100(43)=abb100(43)-abb100(42)
      abb100(43)=spak2k4*abb100(43)
      abb100(48)=-abb100(7)*abb100(48)
      abb100(48)=abb100(48)+abb100(47)
      abb100(48)=spak1k2*abb100(48)
      abb100(43)=abb100(43)+abb100(48)
      abb100(43)=spbl6k2*abb100(43)
      abb100(36)=-abb100(58)*abb100(36)
      abb100(36)=abb100(36)+abb100(43)
      abb100(36)=4.0_ki*abb100(36)
      abb100(43)=4.0_ki*abb100(42)
      abb100(48)=abb100(7)**2
      abb100(52)=-abb100(48)*abb100(43)
      abb100(53)=8.0_ki*abb100(42)
      abb100(55)=8.0_ki*abb100(8)
      abb100(56)=abb100(21)*abb100(6)
      abb100(55)=abb100(55)*abb100(56)
      abb100(58)=-abb100(42)*abb100(55)
      abb100(34)=-abb100(7)*abb100(34)
      abb100(34)=abb100(34)+abb100(61)
      abb100(34)=spak2k4*abb100(34)
      abb100(32)=abb100(7)*abb100(32)
      abb100(32)=abb100(32)-abb100(60)
      abb100(32)=spak1k2*abb100(32)
      abb100(18)=abb100(18)*abb100(40)
      abb100(12)=abb100(12)*mB
      abb100(17)=abb100(12)*abb100(17)
      abb100(62)=abb100(17)*spbk3k1
      abb100(18)=abb100(18)-abb100(62)
      abb100(62)=spak1k7*spbk7l5
      abb100(64)=-spak1l6*spbl6l5
      abb100(64)=abb100(64)-abb100(62)
      abb100(64)=abb100(18)*abb100(64)
      abb100(41)=abb100(41)*abb100(40)
      abb100(17)=abb100(17)*spbk4k3
      abb100(17)=abb100(41)-abb100(17)
      abb100(41)=spak4k7*spbk7l5
      abb100(67)=-spak4l6*spbl6l5
      abb100(67)=abb100(67)-abb100(41)
      abb100(67)=abb100(17)*abb100(67)
      abb100(32)=abb100(34)+abb100(32)+abb100(67)+abb100(64)
      abb100(34)=4.0_ki*abb100(7)
      abb100(32)=abb100(32)*abb100(34)
      abb100(64)=8.0_ki*abb100(35)
      abb100(67)=abb100(37)*spbk4k3
      abb100(68)=abb100(12)*spbk4k3
      abb100(69)=abb100(68)*abb100(5)
      abb100(67)=abb100(67)-abb100(69)
      abb100(54)=abb100(67)*abb100(54)
      abb100(37)=abb100(37)*spbk3k1
      abb100(12)=abb100(12)*spbk3k1
      abb100(69)=abb100(12)*abb100(5)
      abb100(37)=abb100(37)-abb100(69)
      abb100(59)=-abb100(37)*abb100(59)
      abb100(54)=abb100(54)+abb100(59)
      abb100(54)=4.0_ki*abb100(54)
      abb100(59)=abb100(34)*abb100(6)*mB
      abb100(69)=abb100(50)*abb100(59)
      abb100(70)=4.0_ki*abb100(47)
      abb100(71)=-abb100(48)*abb100(70)
      abb100(72)=8.0_ki*abb100(47)
      abb100(55)=-abb100(47)*abb100(55)
      abb100(59)=abb100(38)*abb100(59)
      abb100(73)=abb100(31)*abb100(14)
      abb100(13)=abb100(33)*abb100(13)
      abb100(13)=abb100(73)-abb100(13)
      abb100(13)=abb100(13)*spak2k4
      abb100(31)=abb100(31)*abb100(28)
      abb100(23)=abb100(33)*abb100(23)
      abb100(23)=abb100(31)-abb100(23)
      abb100(23)=abb100(23)*spak1k2
      abb100(13)=abb100(13)-abb100(23)
      abb100(23)=spbk7k2*abb100(13)
      abb100(23)=abb100(23)-abb100(65)
      abb100(23)=4.0_ki*abb100(23)
      abb100(31)=abb100(11)*spbl6l5
      abb100(33)=abb100(31)*spak4l6
      abb100(65)=abb100(27)*spbl6l5
      abb100(73)=abb100(65)*spak1l6
      abb100(62)=abb100(62)*abb100(27)
      abb100(41)=abb100(41)*abb100(11)
      abb100(33)=abb100(33)+abb100(73)+abb100(62)+abb100(41)
      abb100(41)=spbk7e7*abb100(33)
      abb100(13)=-spbk7l6*abb100(13)
      abb100(13)=abb100(13)+abb100(41)
      abb100(13)=4.0_ki*abb100(13)
      abb100(21)=abb100(21)*abb100(5)
      abb100(41)=abb100(45)*abb100(21)*abb100(6)
      abb100(45)=-8.0_ki*spbk7k2*abb100(41)
      abb100(41)=4.0_ki*abb100(41)
      abb100(62)=spbk7e7*abb100(41)
      abb100(9)=spae7k7*abb100(9)
      abb100(9)=abb100(9)+abb100(57)
      abb100(9)=4.0_ki*abb100(9)
      abb100(33)=-spbe7l6*abb100(33)
      abb100(35)=spbk7l6*spae7k7*abb100(35)
      abb100(33)=abb100(35)+abb100(33)
      abb100(33)=4.0_ki*abb100(33)
      abb100(35)=-abb100(21)*abb100(44)
      abb100(57)=-abb100(7)*abb100(67)
      abb100(35)=abb100(57)+abb100(35)
      abb100(35)=spak2k4*abb100(35)
      abb100(21)=abb100(21)*abb100(46)
      abb100(37)=abb100(7)*abb100(37)
      abb100(21)=abb100(37)+abb100(21)
      abb100(21)=spak1k2*abb100(21)
      abb100(21)=abb100(35)+abb100(21)
      abb100(21)=8.0_ki*abb100(21)
      abb100(35)=-spbe7l6*abb100(41)
      abb100(37)=abb100(34)*spae7k7
      abb100(41)=-abb100(61)*abb100(37)
      abb100(57)=-abb100(50)*abb100(63)
      abb100(61)=4.0_ki*spae7k7
      abb100(50)=abb100(50)*abb100(61)
      abb100(67)=abb100(34)*abb100(40)
      abb100(42)=abb100(42)*abb100(67)
      abb100(73)=spbk7l5*spae7k7
      abb100(17)=abb100(17)*abb100(73)
      abb100(74)=-abb100(40)*abb100(31)
      abb100(17)=abb100(17)+abb100(74)
      abb100(17)=abb100(7)*abb100(17)
      abb100(48)=abb100(48)*spbe7l5
      abb100(74)=abb100(11)*abb100(48)
      abb100(17)=abb100(74)+abb100(17)
      abb100(17)=4.0_ki*abb100(17)
      abb100(74)=abb100(63)*spbk7l5
      abb100(75)=abb100(44)*abb100(74)
      abb100(76)=8.0_ki*spbe7l5
      abb100(11)=abb100(11)*abb100(76)
      abb100(24)=abb100(24)*abb100(6)
      abb100(26)=abb100(26)*abb100(24)
      abb100(14)=-abb100(14)*abb100(56)
      abb100(14)=abb100(26)+abb100(14)
      abb100(26)=abb100(76)*abb100(8)
      abb100(14)=abb100(14)*abb100(26)
      abb100(44)=-abb100(44)*abb100(73)
      abb100(31)=abb100(44)-abb100(31)
      abb100(31)=4.0_ki*abb100(31)
      abb100(44)=spbk4k3*abb100(19)
      abb100(44)=abb100(44)-abb100(68)
      abb100(34)=abb100(6)*abb100(34)*spbe7l5
      abb100(44)=abb100(44)*abb100(34)
      abb100(16)=abb100(16)*abb100(8)
      abb100(68)=-spak4k7*abb100(16)
      abb100(20)=abb100(20)*abb100(8)
      abb100(77)=-spak1k7*abb100(20)
      abb100(68)=abb100(68)+abb100(77)
      abb100(68)=4.0_ki*abb100(68)
      abb100(16)=-spak4l6*abb100(16)
      abb100(20)=-spak1l6*abb100(20)
      abb100(16)=abb100(16)+abb100(20)
      abb100(16)=4.0_ki*abb100(16)
      abb100(20)=-abb100(60)*abb100(37)
      abb100(37)=-abb100(38)*abb100(63)
      abb100(38)=abb100(38)*abb100(61)
      abb100(47)=abb100(47)*abb100(67)
      abb100(18)=abb100(18)*abb100(73)
      abb100(40)=-abb100(40)*abb100(65)
      abb100(18)=abb100(18)+abb100(40)
      abb100(18)=abb100(7)*abb100(18)
      abb100(40)=abb100(27)*abb100(48)
      abb100(18)=abb100(40)+abb100(18)
      abb100(18)=4.0_ki*abb100(18)
      abb100(40)=abb100(46)*abb100(74)
      abb100(27)=abb100(27)*abb100(76)
      abb100(24)=abb100(29)*abb100(24)
      abb100(28)=-abb100(28)*abb100(56)
      abb100(24)=abb100(24)+abb100(28)
      abb100(24)=abb100(24)*abb100(26)
      abb100(26)=-abb100(46)*abb100(73)
      abb100(26)=abb100(26)-abb100(65)
      abb100(26)=4.0_ki*abb100(26)
      abb100(19)=spbk3k1*abb100(19)
      abb100(12)=abb100(19)-abb100(12)
      abb100(12)=abb100(12)*abb100(34)
      R2d100=0.0_ki
      rat2 = rat2 + R2d100
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='100' value='", &
          & R2d100, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd100h1
