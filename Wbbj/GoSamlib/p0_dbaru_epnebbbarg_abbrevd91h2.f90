module     p0_dbaru_epnebbbarg_abbrevd91h2
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(75), public :: abb91
   complex(ki), public :: R2d91
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
      abb91(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb91(2)=1.0_ki/(es71+es34+es56-es712-es234)
      abb91(3)=NC**(-1)
      abb91(4)=sqrt2**(-1)
      abb91(5)=es71**(-1)
      abb91(6)=spak2k7**(-1)
      abb91(7)=spbl5k2**(-1)
      abb91(8)=1.0_ki/(es34+es567-es12-es234)
      abb91(9)=spak2l6**(-1)
      abb91(10)=spak2l5**(-1)
      abb91(11)=spbl6k2**(-1)
      abb91(12)=sqrt(mB**2)
      abb91(13)=TR*gW
      abb91(13)=abb91(13)**2*CVDU*i_*spak1k4*abb91(6)*abb91(4)*abb91(2)*abb91(1)
      abb91(14)=abb91(13)*mB**2
      abb91(15)=abb91(14)*abb91(3)
      abb91(16)=spbk7k2*abb91(8)
      abb91(17)=abb91(16)*abb91(15)
      abb91(18)=2.0_ki*c3
      abb91(19)=abb91(17)*abb91(18)
      abb91(20)=abb91(3)**2
      abb91(20)=abb91(20)+1.0_ki
      abb91(14)=abb91(14)*abb91(20)
      abb91(21)=abb91(16)*c4
      abb91(22)=abb91(14)*abb91(21)
      abb91(19)=abb91(19)-abb91(22)
      abb91(23)=spbl6k2**2
      abb91(24)=spak2k4*spbk4k3
      abb91(25)=abb91(24)*abb91(7)
      abb91(26)=abb91(23)*abb91(25)
      abb91(27)=spbk3k1*abb91(7)
      abb91(28)=abb91(23)*spak1k2
      abb91(29)=abb91(27)*abb91(28)
      abb91(26)=abb91(26)-abb91(29)
      abb91(26)=abb91(26)*abb91(19)
      abb91(29)=abb91(23)*abb91(24)
      abb91(30)=abb91(28)*spbk3k1
      abb91(31)=abb91(29)-abb91(30)
      abb91(20)=abb91(13)*abb91(20)
      abb91(32)=abb91(20)*abb91(21)
      abb91(33)=abb91(32)*abb91(31)
      abb91(13)=abb91(13)*abb91(3)
      abb91(16)=abb91(13)*abb91(16)
      abb91(34)=abb91(16)*abb91(24)
      abb91(23)=-abb91(23)*abb91(34)
      abb91(30)=abb91(16)*abb91(30)
      abb91(23)=abb91(23)+abb91(30)
      abb91(23)=abb91(23)*abb91(18)
      abb91(23)=abb91(23)+abb91(33)
      abb91(23)=spak2l5*abb91(23)
      abb91(30)=spbk7k1*abb91(5)
      abb91(33)=abb91(18)*abb91(30)
      abb91(35)=abb91(15)*abb91(33)
      abb91(36)=abb91(35)*abb91(7)
      abb91(37)=abb91(30)*c4
      abb91(38)=abb91(37)*abb91(7)
      abb91(39)=abb91(14)*abb91(38)
      abb91(39)=abb91(39)-abb91(36)
      abb91(39)=abb91(28)*abb91(39)
      abb91(40)=abb91(20)*abb91(37)
      abb91(41)=abb91(33)*abb91(13)
      abb91(40)=abb91(40)-abb91(41)
      abb91(40)=abb91(40)*abb91(28)
      abb91(42)=-spak2l5*abb91(40)
      abb91(39)=abb91(42)+abb91(39)
      abb91(39)=spbk3k2*abb91(39)
      abb91(42)=c4*abb91(8)
      abb91(43)=abb91(42)*abb91(20)
      abb91(31)=abb91(43)*abb91(31)
      abb91(44)=abb91(13)*abb91(8)
      abb91(29)=-abb91(44)*abb91(29)
      abb91(45)=spbk3k1*abb91(8)
      abb91(46)=abb91(45)*abb91(13)
      abb91(28)=abb91(28)*abb91(46)
      abb91(28)=abb91(29)+abb91(28)
      abb91(28)=abb91(28)*abb91(18)
      abb91(28)=abb91(28)+abb91(31)
      abb91(29)=spbk7l6*spal5l6
      abb91(28)=abb91(28)*abb91(29)
      abb91(31)=spbl6k3*spal5l6
      abb91(40)=abb91(40)*abb91(31)
      abb91(23)=abb91(40)+abb91(28)+abb91(39)+abb91(23)+abb91(26)
      abb91(23)=spak2l6*abb91(23)
      abb91(26)=abb91(24)*spbl6k2
      abb91(28)=spbl6k2*spak1k2
      abb91(39)=abb91(28)*spbk3k1
      abb91(26)=abb91(26)-abb91(39)
      abb91(40)=abb91(26)*abb91(19)
      abb91(47)=abb91(14)*c4
      abb91(48)=abb91(30)*abb91(28)
      abb91(49)=abb91(48)*abb91(47)
      abb91(50)=-abb91(28)*abb91(35)
      abb91(49)=abb91(49)+abb91(50)
      abb91(49)=spbk3k2*abb91(49)
      abb91(40)=abb91(49)+abb91(40)
      abb91(40)=spak2l5*abb91(40)
      abb91(23)=abb91(23)+abb91(40)
      abb91(23)=8.0_ki*abb91(23)
      abb91(40)=abb91(16)*spbl6k2
      abb91(49)=abb91(17)*abb91(9)
      abb91(40)=abb91(40)-abb91(49)
      abb91(40)=abb91(40)*abb91(24)
      abb91(49)=abb91(16)*abb91(28)
      abb91(50)=abb91(9)*spak1k2
      abb91(51)=abb91(17)*abb91(50)
      abb91(49)=abb91(49)-abb91(51)
      abb91(49)=abb91(49)*spbk3k1
      abb91(40)=abb91(40)-abb91(49)
      abb91(40)=abb91(40)*abb91(18)
      abb91(49)=abb91(22)*abb91(9)
      abb91(52)=abb91(32)*spbl6k2
      abb91(49)=abb91(49)-abb91(52)
      abb91(49)=abb91(49)*abb91(24)
      abb91(52)=abb91(32)*abb91(28)
      abb91(53)=abb91(22)*abb91(50)
      abb91(52)=abb91(52)-abb91(53)
      abb91(52)=abb91(52)*spbk3k1
      abb91(40)=abb91(40)+abb91(49)+abb91(52)
      abb91(40)=abb91(40)*spak2l5
      abb91(49)=abb91(13)*abb91(28)
      abb91(52)=abb91(15)*abb91(50)
      abb91(54)=abb91(49)-abb91(52)
      abb91(54)=abb91(54)*abb91(33)
      abb91(55)=abb91(20)*c4
      abb91(56)=abb91(55)*abb91(28)
      abb91(57)=abb91(14)*abb91(50)
      abb91(58)=abb91(57)*c4
      abb91(59)=abb91(56)-abb91(58)
      abb91(59)=abb91(59)*abb91(30)
      abb91(54)=abb91(54)-abb91(59)
      abb91(54)=abb91(54)*spak2l5
      abb91(59)=abb91(28)*abb91(7)
      abb91(60)=abb91(37)*abb91(59)
      abb91(61)=abb91(60)*abb91(14)
      abb91(35)=abb91(35)*abb91(59)
      abb91(35)=abb91(35)-abb91(61)
      abb91(54)=abb91(54)-abb91(35)
      abb91(54)=abb91(54)*spbk3k2
      abb91(61)=abb91(44)*abb91(39)
      abb91(62)=spbl6k2*abb91(8)
      abb91(13)=abb91(13)*abb91(62)
      abb91(63)=abb91(13)*abb91(24)
      abb91(61)=abb91(61)-abb91(63)
      abb91(61)=abb91(61)*abb91(18)
      abb91(63)=abb91(43)*abb91(39)
      abb91(64)=abb91(55)*abb91(62)
      abb91(65)=abb91(64)*abb91(24)
      abb91(61)=abb91(61)-abb91(63)+abb91(65)
      abb91(29)=abb91(61)*abb91(29)
      abb91(61)=abb91(25)*spbl6k2
      abb91(63)=abb91(59)*spbk3k1
      abb91(61)=abb91(61)-abb91(63)
      abb91(19)=-abb91(61)*abb91(19)
      abb91(55)=abb91(55)*abb91(48)
      abb91(65)=abb91(41)*abb91(28)
      abb91(55)=abb91(55)-abb91(65)
      abb91(31)=abb91(55)*abb91(31)
      abb91(29)=-abb91(40)+abb91(54)+abb91(29)-abb91(19)+abb91(31)
      abb91(29)=16.0_ki*abb91(29)
      abb91(31)=abb91(24)*abb91(9)
      abb91(40)=abb91(50)*spbk3k1
      abb91(54)=abb91(31)-abb91(40)
      abb91(66)=mB*abb91(20)
      abb91(67)=abb91(66)*abb91(42)
      abb91(68)=-abb91(67)*abb91(54)
      abb91(69)=abb91(44)*mB
      abb91(31)=abb91(31)*abb91(69)
      abb91(46)=-mB*abb91(50)*abb91(46)
      abb91(31)=abb91(31)+abb91(46)
      abb91(31)=abb91(31)*abb91(18)
      abb91(31)=abb91(31)+abb91(68)
      abb91(31)=abb91(12)*abb91(31)
      abb91(14)=abb91(42)*abb91(14)
      abb91(46)=abb91(14)*abb91(9)
      abb91(64)=abb91(64)+abb91(46)
      abb91(64)=abb91(64)*abb91(24)
      abb91(42)=abb91(57)*abb91(42)
      abb91(43)=-abb91(28)*abb91(43)
      abb91(43)=abb91(43)-abb91(42)
      abb91(43)=spbk3k1*abb91(43)
      abb91(28)=abb91(28)*abb91(44)
      abb91(44)=abb91(8)*abb91(52)
      abb91(28)=abb91(28)+abb91(44)
      abb91(28)=spbk3k1*abb91(28)
      abb91(44)=abb91(15)*abb91(8)
      abb91(68)=abb91(44)*abb91(9)
      abb91(70)=-abb91(13)-abb91(68)
      abb91(70)=abb91(70)*abb91(24)
      abb91(28)=abb91(70)+abb91(28)
      abb91(28)=abb91(28)*abb91(18)
      abb91(28)=abb91(31)+abb91(28)+abb91(64)+abb91(43)
      abb91(28)=spbk7l6*abb91(28)
      abb91(31)=abb91(56)+abb91(58)
      abb91(30)=abb91(31)*abb91(30)
      abb91(31)=-abb91(49)-abb91(52)
      abb91(31)=abb91(31)*abb91(33)
      abb91(33)=abb91(37)*abb91(50)
      abb91(43)=abb91(33)*abb91(66)
      abb91(49)=abb91(41)*mB
      abb91(56)=abb91(49)*abb91(50)
      abb91(43)=abb91(56)-abb91(43)
      abb91(56)=abb91(12)*abb91(43)
      abb91(30)=abb91(56)+abb91(30)+abb91(31)
      abb91(30)=spbl6k3*abb91(30)
      abb91(31)=abb91(25)*abb91(9)
      abb91(56)=abb91(31)*abb91(62)
      abb91(47)=abb91(47)*abb91(56)
      abb91(15)=-abb91(15)*abb91(56)
      abb91(56)=abb91(63)*abb91(68)
      abb91(15)=abb91(15)+abb91(56)
      abb91(15)=abb91(15)*abb91(18)
      abb91(46)=-abb91(63)*abb91(46)
      abb91(15)=abb91(15)+abb91(47)+abb91(46)
      abb91(15)=spbk7l5*abb91(15)
      abb91(46)=-spbl5k3*abb91(9)*abb91(35)
      abb91(15)=abb91(46)+abb91(15)+abb91(30)+abb91(28)
      abb91(15)=spal5l6*abb91(15)
      abb91(28)=mB**3
      abb91(30)=abb91(28)*abb91(20)
      abb91(46)=abb91(7)**2
      abb91(47)=abb91(46)*abb91(21)
      abb91(56)=-abb91(30)*abb91(47)*abb91(26)
      abb91(39)=abb91(16)*abb91(39)
      abb91(58)=abb91(34)*spbl6k2
      abb91(39)=abb91(39)-abb91(58)
      abb91(39)=abb91(39)*abb91(18)
      abb91(58)=abb91(28)*abb91(46)
      abb91(64)=-abb91(58)*abb91(39)
      abb91(56)=abb91(64)+abb91(56)
      abb91(56)=abb91(12)*abb91(56)
      abb91(48)=abb91(48)*c4
      abb91(64)=abb91(30)*abb91(46)*abb91(48)
      abb91(58)=-abb91(65)*abb91(58)
      abb91(58)=abb91(64)+abb91(58)
      abb91(58)=abb91(12)*abb91(58)
      abb91(64)=mB**4
      abb91(20)=abb91(64)*abb91(20)
      abb91(48)=-abb91(20)*abb91(48)
      abb91(65)=abb91(64)*abb91(65)
      abb91(48)=abb91(48)+abb91(65)
      abb91(48)=abb91(46)*abb91(48)
      abb91(48)=abb91(58)+abb91(48)
      abb91(48)=spbk3k2*abb91(48)
      abb91(47)=abb91(47)*abb91(20)
      abb91(58)=abb91(47)*abb91(26)
      abb91(65)=abb91(16)*abb91(64)
      abb91(68)=abb91(65)*abb91(46)
      abb91(70)=-abb91(68)*abb91(26)*abb91(18)
      abb91(48)=abb91(48)+abb91(56)+abb91(70)+abb91(58)
      abb91(48)=abb91(10)*abb91(48)
      abb91(56)=abb91(21)*abb91(24)
      abb91(58)=abb91(9)**2
      abb91(70)=abb91(56)*abb91(58)
      abb91(71)=abb91(58)*spak1k2
      abb91(72)=abb91(71)*spbk3k1
      abb91(73)=-abb91(21)*abb91(72)
      abb91(73)=abb91(70)+abb91(73)
      abb91(73)=abb91(30)*abb91(73)
      abb91(74)=-abb91(58)*abb91(34)
      abb91(75)=abb91(16)*abb91(72)
      abb91(74)=abb91(74)+abb91(75)
      abb91(74)=abb91(18)*abb91(28)*abb91(74)
      abb91(73)=abb91(74)+abb91(73)
      abb91(73)=abb91(12)*abb91(73)
      abb91(30)=-abb91(30)*abb91(37)*abb91(71)
      abb91(74)=abb91(71)*abb91(41)
      abb91(28)=abb91(28)*abb91(74)
      abb91(28)=abb91(30)+abb91(28)
      abb91(28)=abb91(12)*abb91(28)
      abb91(30)=abb91(74)*abb91(64)
      abb91(74)=abb91(20)*abb91(71)
      abb91(37)=abb91(37)*abb91(74)
      abb91(28)=abb91(28)+abb91(37)-abb91(30)
      abb91(28)=spbk3k2*abb91(28)
      abb91(37)=-abb91(20)*abb91(70)
      abb91(65)=abb91(65)*abb91(18)
      abb91(24)=abb91(58)*abb91(24)
      abb91(24)=abb91(24)-abb91(72)
      abb91(24)=abb91(24)*abb91(65)
      abb91(70)=abb91(20)*abb91(21)
      abb91(72)=abb91(72)*abb91(70)
      abb91(24)=abb91(28)+abb91(73)+abb91(24)+abb91(37)+abb91(72)
      abb91(24)=abb91(11)*spak2l5*abb91(24)
      abb91(28)=-abb91(9)*abb91(66)*abb91(56)
      abb91(34)=abb91(9)*mB*abb91(34)
      abb91(16)=abb91(16)*mB
      abb91(37)=-abb91(40)*abb91(16)
      abb91(34)=abb91(34)+abb91(37)
      abb91(34)=abb91(34)*abb91(18)
      abb91(37)=abb91(66)*abb91(21)
      abb91(40)=abb91(40)*abb91(37)
      abb91(28)=abb91(34)+abb91(28)+abb91(40)
      abb91(28)=spak2l5*abb91(28)
      abb91(34)=abb91(37)*abb91(61)
      abb91(16)=-abb91(16)*abb91(61)*abb91(18)
      abb91(16)=abb91(28)+abb91(16)+abb91(34)
      abb91(16)=abb91(12)*abb91(16)
      abb91(28)=abb91(60)*abb91(66)
      abb91(34)=abb91(49)*abb91(59)
      abb91(28)=abb91(28)-abb91(34)
      abb91(34)=-spak2l5*abb91(43)
      abb91(34)=abb91(34)-abb91(28)
      abb91(34)=abb91(12)*abb91(34)
      abb91(37)=-spak2l5*abb91(55)
      abb91(34)=abb91(34)-2.0_ki*abb91(35)+abb91(37)
      abb91(34)=spbk3k2*abb91(34)
      abb91(26)=abb91(32)*abb91(26)
      abb91(26)=abb91(39)+abb91(26)
      abb91(26)=spak2l5*abb91(26)
      abb91(15)=abb91(24)+abb91(48)+abb91(34)+abb91(16)-2.0_ki*abb91(19)+abb91(&
      &26)+abb91(15)
      abb91(15)=16.0_ki*abb91(15)
      abb91(16)=abb91(58)*abb91(25)
      abb91(19)=abb91(70)*abb91(16)
      abb91(21)=-abb91(21)*abb91(27)*abb91(74)
      abb91(24)=abb91(71)*abb91(27)
      abb91(16)=-abb91(16)+abb91(24)
      abb91(16)=abb91(16)*abb91(65)
      abb91(24)=-abb91(38)*abb91(74)
      abb91(26)=abb91(7)*abb91(30)
      abb91(24)=abb91(24)+abb91(26)
      abb91(24)=spbk3k2*abb91(24)
      abb91(16)=abb91(24)+abb91(16)+abb91(19)+abb91(21)
      abb91(16)=abb91(11)*abb91(16)
      abb91(19)=-abb91(20)*abb91(33)
      abb91(20)=abb91(64)*abb91(50)*abb91(41)
      abb91(19)=abb91(19)+abb91(20)
      abb91(19)=spbk3k2*abb91(46)*abb91(19)
      abb91(20)=abb91(68)*abb91(18)
      abb91(20)=-abb91(20)+abb91(47)
      abb91(20)=abb91(54)*abb91(20)
      abb91(19)=abb91(19)+abb91(20)
      abb91(19)=abb91(10)*abb91(19)
      abb91(17)=abb91(17)*abb91(31)
      abb91(20)=-abb91(27)*abb91(51)
      abb91(17)=abb91(17)+abb91(20)
      abb91(17)=abb91(17)*abb91(18)
      abb91(20)=abb91(36)*abb91(50)
      abb91(21)=abb91(38)*abb91(57)
      abb91(20)=abb91(20)-abb91(21)
      abb91(21)=-spbk3k2*abb91(20)
      abb91(22)=-abb91(22)*abb91(31)
      abb91(24)=abb91(27)*abb91(53)
      abb91(16)=abb91(16)+abb91(19)+abb91(21)+abb91(17)+abb91(22)+abb91(24)
      abb91(16)=32.0_ki*abb91(16)
      abb91(13)=mB*abb91(13)*abb91(25)
      abb91(17)=abb91(69)*abb91(63)
      abb91(13)=abb91(13)-abb91(17)
      abb91(13)=abb91(13)*abb91(18)
      abb91(17)=abb91(66)*abb91(25)*abb91(62)*c4
      abb91(19)=abb91(67)*abb91(63)
      abb91(13)=-abb91(13)+abb91(17)-abb91(19)
      abb91(13)=abb91(13)*abb91(12)
      abb91(17)=-spbk7l6*abb91(13)
      abb91(19)=abb91(28)*abb91(12)
      abb91(21)=-spbl6k3*abb91(19)
      abb91(17)=abb91(17)+abb91(21)
      abb91(17)=8.0_ki*abb91(17)
      abb91(21)=abb91(7)*abb91(52)*abb91(45)
      abb91(22)=abb91(44)*abb91(31)
      abb91(21)=abb91(21)-abb91(22)
      abb91(18)=abb91(21)*abb91(18)
      abb91(14)=abb91(14)*abb91(31)
      abb91(21)=abb91(42)*abb91(27)
      abb91(14)=abb91(18)+abb91(14)-abb91(21)
      abb91(18)=spbk7l6*abb91(14)
      abb91(21)=-spbl6k3*abb91(20)
      abb91(18)=abb91(18)+abb91(21)
      abb91(18)=16.0_ki*abb91(18)
      abb91(13)=-spbk7l5*abb91(13)
      abb91(19)=-spbl5k3*abb91(19)
      abb91(13)=abb91(13)+abb91(19)
      abb91(13)=8.0_ki*abb91(13)
      abb91(14)=spbk7l5*abb91(14)
      abb91(19)=-spbl5k3*abb91(20)
      abb91(14)=abb91(14)+abb91(19)
      abb91(14)=16.0_ki*abb91(14)
      R2d91=0.0_ki
      rat2 = rat2 + R2d91
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='91' value='", &
          & R2d91, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd91h2
