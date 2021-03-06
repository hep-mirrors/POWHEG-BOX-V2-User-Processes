module     p0_dbaru_epnebbbarg_abbrevd91h7
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh7
   implicit none
   private
   complex(ki), dimension(88), public :: abb91
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
      abb91(6)=spak2l5**(-1)
      abb91(7)=spbk7k2**(-1)
      abb91(8)=sqrt(mB**2)
      abb91(9)=1.0_ki/(es34+es567-es12-es234)
      abb91(10)=spak2l6**(-1)
      abb91(11)=spbl5k2**(-1)
      abb91(12)=spbl6k2**(-1)
      abb91(13)=spbl5k2*abb91(3)
      abb91(14)=spbl6k2**2
      abb91(15)=abb91(13)*abb91(14)
      abb91(16)=spak1k4*abb91(7)
      abb91(17)=TR*gW
      abb91(17)=abb91(17)**2*abb91(4)*i_*CVDU*abb91(2)*abb91(1)
      abb91(18)=abb91(17)*abb91(16)
      abb91(19)=abb91(18)*mB
      abb91(20)=abb91(19)*spak4k7
      abb91(21)=-abb91(20)*abb91(15)
      abb91(22)=abb91(8)*spbl5k2
      abb91(23)=abb91(14)*abb91(22)
      abb91(24)=abb91(18)*spak4k7
      abb91(25)=abb91(24)*abb91(3)
      abb91(26)=-abb91(25)*abb91(23)
      abb91(21)=abb91(21)+abb91(26)
      abb91(26)=2.0_ki*c3
      abb91(27)=abb91(26)*abb91(9)
      abb91(21)=abb91(21)*abb91(27)
      abb91(28)=abb91(3)**2
      abb91(29)=abb91(28)+1.0_ki
      abb91(18)=abb91(18)*abb91(29)
      abb91(30)=abb91(18)*abb91(23)
      abb91(19)=abb91(19)*abb91(29)
      abb91(31)=abb91(19)*spbl5k2
      abb91(32)=abb91(14)*abb91(31)
      abb91(30)=abb91(32)+abb91(30)
      abb91(32)=abb91(9)*spak4k7*c4
      abb91(30)=abb91(30)*abb91(32)
      abb91(33)=abb91(9)*spak4k7
      abb91(34)=abb91(33)*c4
      abb91(35)=abb91(34)*abb91(19)
      abb91(36)=abb91(26)*abb91(3)
      abb91(37)=abb91(36)*abb91(9)
      abb91(38)=abb91(20)*abb91(37)
      abb91(35)=abb91(35)-abb91(38)
      abb91(39)=spak2l6*abb91(6)
      abb91(40)=abb91(35)*abb91(39)
      abb91(41)=spbl6k2**3
      abb91(42)=abb91(41)*abb91(40)
      abb91(21)=abb91(42)+abb91(30)+abb91(21)
      abb91(21)=spbk4k3*abb91(21)
      abb91(17)=spak1k7*abb91(17)
      abb91(16)=abb91(17)*abb91(16)
      abb91(30)=abb91(16)*mB
      abb91(15)=-abb91(30)*abb91(15)
      abb91(42)=-abb91(3)*abb91(16)*abb91(23)
      abb91(15)=abb91(15)+abb91(42)
      abb91(15)=abb91(15)*abb91(27)
      abb91(28)=abb91(16)*abb91(28)
      abb91(42)=abb91(28)+abb91(16)
      abb91(23)=abb91(42)*abb91(23)
      abb91(43)=abb91(30)*abb91(29)
      abb91(44)=abb91(43)*spbl5k2
      abb91(45)=abb91(14)*abb91(44)
      abb91(23)=abb91(45)+abb91(23)
      abb91(45)=abb91(9)*c4
      abb91(23)=abb91(23)*abb91(45)
      abb91(46)=abb91(37)*abb91(30)
      abb91(47)=abb91(43)*abb91(45)
      abb91(46)=abb91(46)-abb91(47)
      abb91(47)=abb91(46)*abb91(39)
      abb91(41)=-abb91(41)*abb91(47)
      abb91(15)=abb91(41)+abb91(23)+abb91(15)
      abb91(15)=spbk3k1*abb91(15)
      abb91(23)=abb91(5)*c4
      abb91(41)=abb91(42)*abb91(23)
      abb91(48)=abb91(5)*abb91(3)
      abb91(49)=abb91(48)*abb91(16)
      abb91(50)=abb91(49)*abb91(26)
      abb91(51)=abb91(50)-abb91(41)
      abb91(51)=spbk2k1*abb91(51)
      abb91(52)=abb91(17)*abb91(29)
      abb91(53)=spak4k7*abb91(5)
      abb91(54)=abb91(53)*c4
      abb91(55)=abb91(52)*abb91(54)
      abb91(56)=abb91(53)*abb91(17)*abb91(3)
      abb91(57)=abb91(56)*abb91(26)
      abb91(51)=abb91(51)+abb91(55)-abb91(57)
      abb91(58)=abb91(22)*spbl6k2
      abb91(51)=abb91(58)*abb91(51)
      abb91(48)=abb91(30)*abb91(48)
      abb91(59)=abb91(26)*abb91(48)
      abb91(43)=abb91(43)*abb91(23)
      abb91(59)=abb91(59)-abb91(43)
      abb91(60)=spbk2k1*abb91(59)
      abb91(17)=abb91(17)*mB
      abb91(29)=abb91(54)*abb91(17)*abb91(29)
      abb91(17)=abb91(53)*abb91(17)
      abb91(36)=abb91(17)*abb91(36)
      abb91(36)=abb91(29)-abb91(36)
      abb91(53)=abb91(36)+abb91(60)
      abb91(53)=abb91(14)*abb91(53)
      abb91(60)=-abb91(53)*abb91(39)
      abb91(60)=abb91(60)-abb91(51)
      abb91(60)=spbl6k3*abb91(60)
      abb91(53)=-spbl5k3*abb91(53)
      abb91(15)=abb91(60)+abb91(15)+abb91(53)+abb91(21)
      abb91(15)=spak2l6*abb91(15)
      abb91(21)=-spbl5k3*abb91(51)
      abb91(51)=spbl6k2*c4
      abb91(33)=abb91(51)*abb91(33)
      abb91(53)=abb91(18)*abb91(33)
      abb91(60)=abb91(37)*spbl6k2
      abb91(61)=abb91(60)*abb91(24)
      abb91(53)=abb91(61)-abb91(53)
      abb91(53)=abb91(53)*spbk4k3
      abb91(61)=spbl5k2**2
      abb91(62)=abb91(61)*abb91(8)
      abb91(63)=-abb91(62)*abb91(53)
      abb91(64)=abb91(42)*abb91(45)
      abb91(65)=abb91(64)*abb91(62)
      abb91(66)=spbl6k2*abb91(65)
      abb91(67)=abb91(62)*abb91(16)
      abb91(68)=-abb91(60)*abb91(67)
      abb91(66)=abb91(66)+abb91(68)
      abb91(66)=spbk3k1*abb91(66)
      abb91(21)=abb91(66)+abb91(21)+abb91(63)
      abb91(21)=spak2l5*abb91(21)
      abb91(15)=abb91(21)+abb91(15)
      abb91(15)=8.0_ki*abb91(15)
      abb91(21)=-abb91(14)*abb91(40)
      abb91(40)=abb91(18)*abb91(22)
      abb91(40)=abb91(31)+abb91(40)
      abb91(63)=abb91(9)*abb91(51)*spak4k7
      abb91(40)=abb91(40)*abb91(63)
      abb91(66)=spbl5k2*spbl6k2
      abb91(20)=-abb91(3)*abb91(20)*abb91(66)
      abb91(68)=-abb91(58)*abb91(25)
      abb91(20)=abb91(20)+abb91(68)
      abb91(20)=abb91(20)*abb91(27)
      abb91(20)=-abb91(21)+abb91(40)+abb91(20)
      abb91(20)=spbk4k3*abb91(20)
      abb91(14)=-abb91(14)*abb91(47)
      abb91(40)=abb91(42)*abb91(22)
      abb91(40)=abb91(44)+abb91(40)
      abb91(42)=abb91(51)*abb91(9)
      abb91(40)=abb91(40)*abb91(42)
      abb91(30)=-abb91(30)*abb91(66)
      abb91(44)=-abb91(16)*abb91(58)
      abb91(30)=abb91(30)+abb91(44)
      abb91(30)=abb91(30)*abb91(27)*abb91(3)
      abb91(30)=abb91(14)+abb91(40)+abb91(30)
      abb91(30)=spbk3k1*abb91(30)
      abb91(40)=abb91(41)*abb91(22)
      abb91(44)=abb91(50)*abb91(22)
      abb91(44)=abb91(44)-abb91(40)
      abb91(44)=abb91(44)*spbk2k1
      abb91(47)=abb91(57)*abb91(22)
      abb91(51)=abb91(55)*abb91(22)
      abb91(44)=abb91(44)-abb91(47)+abb91(51)
      abb91(47)=-spbl6k2*abb91(59)
      abb91(58)=abb91(47)*spbk2k1
      abb91(68)=-spbl6k2*abb91(36)
      abb91(58)=abb91(58)+abb91(68)
      abb91(39)=abb91(58)*abb91(39)
      abb91(69)=abb91(39)-abb91(44)
      abb91(69)=spbl6k3*abb91(69)
      abb91(58)=abb91(58)*spbl5k3
      abb91(20)=abb91(69)+abb91(30)+abb91(58)+abb91(20)
      abb91(20)=16.0_ki*abb91(20)
      abb91(30)=mB**2
      abb91(69)=abb91(30)*abb91(8)
      abb91(70)=abb91(69)*abb91(49)
      abb91(71)=mB**3
      abb91(72)=abb91(49)*abb91(71)
      abb91(70)=abb91(70)-abb91(72)
      abb91(70)=abb91(70)*abb91(26)
      abb91(73)=abb91(30)*abb91(28)
      abb91(74)=abb91(30)*abb91(16)
      abb91(73)=abb91(73)+abb91(74)
      abb91(75)=abb91(73)*abb91(23)
      abb91(76)=abb91(75)*abb91(8)
      abb91(28)=abb91(28)*abb91(71)
      abb91(77)=abb91(71)*abb91(16)
      abb91(28)=abb91(28)+abb91(77)
      abb91(23)=abb91(28)*abb91(23)
      abb91(70)=abb91(70)-abb91(76)+abb91(23)
      abb91(76)=spbk2k1*abb91(10)
      abb91(78)=abb91(70)*abb91(76)
      abb91(79)=abb91(69)*abb91(56)
      abb91(80)=abb91(56)*abb91(71)
      abb91(79)=abb91(79)-abb91(80)
      abb91(79)=abb91(79)*abb91(26)
      abb91(81)=abb91(30)*abb91(52)
      abb91(82)=abb91(54)*abb91(8)
      abb91(83)=abb91(81)*abb91(82)
      abb91(55)=abb91(71)*abb91(55)
      abb91(79)=-abb91(79)+abb91(83)-abb91(55)
      abb91(83)=abb91(79)*abb91(10)
      abb91(78)=abb91(83)+abb91(78)
      abb91(78)=abb91(12)*abb91(78)
      abb91(84)=abb91(70)*spbk2k1
      abb91(79)=abb91(84)+abb91(79)
      abb91(79)=abb91(79)*abb91(6)
      abb91(84)=abb91(11)*abb91(79)
      abb91(41)=abb91(41)*abb91(8)
      abb91(85)=-abb91(8)*abb91(49)
      abb91(85)=abb91(48)+abb91(85)
      abb91(85)=abb91(85)*abb91(26)
      abb91(85)=abb91(85)-abb91(43)+abb91(41)
      abb91(85)=spbk2k1*abb91(85)
      abb91(86)=-abb91(3)*abb91(17)
      abb91(87)=abb91(8)*abb91(56)
      abb91(86)=abb91(86)+abb91(87)
      abb91(86)=abb91(86)*abb91(26)
      abb91(52)=abb91(52)*abb91(82)
      abb91(78)=abb91(84)+abb91(78)+abb91(85)+abb91(86)+abb91(29)-abb91(52)
      abb91(78)=spbk3k2*abb91(78)
      abb91(82)=spbk4k3*abb91(10)
      abb91(35)=abb91(35)*abb91(82)
      abb91(84)=abb91(46)*spbk3k1*abb91(10)
      abb91(35)=abb91(35)-abb91(84)
      abb91(85)=spbl5k2*abb91(35)
      abb91(36)=abb91(36)*abb91(10)
      abb91(59)=abb91(59)*abb91(76)
      abb91(36)=abb91(36)+abb91(59)
      abb91(59)=abb91(36)*spbl5k3
      abb91(59)=-abb91(59)+abb91(85)
      abb91(85)=-spal5l6*abb91(59)
      abb91(78)=abb91(85)+abb91(78)
      abb91(78)=spbl6l5*abb91(78)
      abb91(31)=abb91(31)*abb91(33)
      abb91(85)=abb91(66)*abb91(38)
      abb91(21)=abb91(21)+abb91(85)-abb91(31)
      abb91(31)=-abb91(71)*abb91(24)*abb91(13)
      abb91(85)=abb91(22)*abb91(30)
      abb91(86)=abb91(25)*abb91(85)
      abb91(31)=abb91(31)+abb91(86)
      abb91(31)=abb91(31)*abb91(27)
      abb91(86)=abb91(18)*abb91(71)
      abb91(87)=spbl5k2*abb91(86)
      abb91(30)=abb91(18)*abb91(30)
      abb91(88)=-abb91(30)*abb91(22)
      abb91(87)=abb91(87)+abb91(88)
      abb91(32)=abb91(87)*abb91(32)
      abb91(31)=abb91(32)+abb91(31)
      abb91(31)=abb91(10)*abb91(31)
      abb91(30)=-abb91(8)*abb91(30)
      abb91(30)=abb91(86)+abb91(30)
      abb91(30)=abb91(30)*abb91(63)
      abb91(32)=-abb91(71)+abb91(69)
      abb91(63)=abb91(27)*spbl6k2
      abb91(25)=abb91(25)*abb91(32)*abb91(63)
      abb91(25)=abb91(30)+abb91(25)
      abb91(25)=abb91(6)*abb91(25)
      abb91(25)=abb91(25)+abb91(31)-abb91(21)
      abb91(25)=spbk4k3*abb91(25)
      abb91(30)=abb91(46)*abb91(66)
      abb91(14)=abb91(30)-abb91(14)
      abb91(30)=spbl5k2*abb91(28)
      abb91(31)=-abb91(73)*abb91(22)
      abb91(30)=abb91(30)+abb91(31)
      abb91(30)=abb91(30)*abb91(45)
      abb91(31)=-abb91(77)*abb91(13)
      abb91(32)=abb91(3)*abb91(22)*abb91(74)
      abb91(31)=abb91(31)+abb91(32)
      abb91(27)=abb91(31)*abb91(27)
      abb91(27)=abb91(30)+abb91(27)
      abb91(27)=abb91(10)*abb91(27)
      abb91(30)=abb91(73)*abb91(8)
      abb91(28)=abb91(28)-abb91(30)
      abb91(28)=abb91(28)*abb91(42)
      abb91(30)=abb91(8)*abb91(74)
      abb91(30)=-abb91(77)+abb91(30)
      abb91(30)=abb91(3)*abb91(30)*abb91(63)
      abb91(28)=abb91(28)+abb91(30)
      abb91(28)=abb91(6)*abb91(28)
      abb91(27)=abb91(28)+abb91(27)-abb91(14)
      abb91(27)=spbk3k1*abb91(27)
      abb91(28)=abb91(10)*abb91(70)
      abb91(28)=abb91(28)+abb91(47)
      abb91(28)=spbk2k1*abb91(28)
      abb91(28)=abb91(28)+abb91(83)+abb91(68)
      abb91(28)=spbl5k3*abb91(28)
      abb91(30)=abb91(79)+abb91(39)
      abb91(30)=spbl6k3*abb91(30)
      abb91(25)=abb91(30)+abb91(27)+abb91(25)+abb91(28)+abb91(78)
      abb91(25)=16.0_ki*abb91(25)
      abb91(21)=-spbk4k3*abb91(21)
      abb91(14)=-spbk3k1*abb91(14)
      abb91(27)=spbl6k3*abb91(39)
      abb91(14)=abb91(27)+abb91(14)+abb91(58)+abb91(21)
      abb91(14)=16.0_ki*abb91(14)
      abb91(21)=abb91(64)*spbl6k2
      abb91(27)=abb91(60)*abb91(16)
      abb91(21)=abb91(21)-abb91(27)
      abb91(21)=spbk3k1*abb91(21)
      abb91(21)=-abb91(53)+abb91(21)
      abb91(21)=abb91(8)*abb91(21)
      abb91(27)=abb91(50)*abb91(8)
      abb91(27)=abb91(27)-abb91(41)
      abb91(27)=abb91(27)*spbk2k1
      abb91(28)=abb91(57)*abb91(8)
      abb91(27)=abb91(27)-abb91(28)+abb91(52)
      abb91(28)=-spbl6k3*abb91(27)
      abb91(21)=abb91(28)+abb91(21)
      abb91(28)=8.0_ki*spbl6l5
      abb91(21)=abb91(21)*abb91(28)
      abb91(30)=-spbl5k3*abb91(44)
      abb91(24)=abb91(24)*abb91(37)
      abb91(18)=abb91(18)*abb91(34)
      abb91(18)=abb91(24)-abb91(18)
      abb91(18)=abb91(18)*spbk4k3
      abb91(24)=-abb91(62)*abb91(18)
      abb91(31)=-abb91(37)*abb91(67)
      abb91(31)=abb91(65)+abb91(31)
      abb91(31)=spbk3k1*abb91(31)
      abb91(24)=abb91(31)+abb91(30)+abb91(24)
      abb91(24)=8.0_ki*abb91(24)
      abb91(16)=abb91(37)*abb91(16)
      abb91(16)=abb91(64)-abb91(16)
      abb91(16)=spbk3k1*abb91(16)
      abb91(16)=abb91(16)-abb91(18)
      abb91(16)=abb91(22)*abb91(16)
      abb91(18)=-spbl5k3*abb91(27)
      abb91(16)=abb91(18)+abb91(16)
      abb91(16)=abb91(16)*abb91(28)
      abb91(18)=spbl5k2*abb91(23)
      abb91(27)=-abb91(22)*abb91(75)
      abb91(28)=abb91(49)*abb91(85)
      abb91(30)=-spbl5k2*abb91(72)
      abb91(28)=abb91(30)+abb91(28)
      abb91(28)=abb91(28)*abb91(26)
      abb91(18)=abb91(28)+abb91(18)+abb91(27)
      abb91(18)=abb91(18)*abb91(76)
      abb91(27)=abb91(81)*abb91(22)*abb91(54)
      abb91(28)=-abb91(56)*abb91(85)
      abb91(30)=spbl5k2*abb91(80)
      abb91(28)=abb91(30)+abb91(28)
      abb91(28)=abb91(28)*abb91(26)
      abb91(30)=-spbl5k2*abb91(55)
      abb91(27)=abb91(28)+abb91(30)+abb91(27)
      abb91(27)=abb91(10)*abb91(27)
      abb91(18)=abb91(27)+abb91(18)
      abb91(18)=abb91(12)*abb91(18)
      abb91(27)=spbl5k2*abb91(48)
      abb91(28)=-abb91(22)*abb91(49)
      abb91(27)=abb91(27)+abb91(28)
      abb91(27)=abb91(27)*abb91(26)
      abb91(28)=-spbl5k2*abb91(43)
      abb91(27)=abb91(27)+abb91(28)+abb91(40)
      abb91(27)=spbk2k1*abb91(27)
      abb91(28)=spbl5k2*abb91(29)
      abb91(13)=-abb91(17)*abb91(13)
      abb91(17)=abb91(22)*abb91(56)
      abb91(13)=abb91(13)+abb91(17)
      abb91(13)=abb91(13)*abb91(26)
      abb91(13)=abb91(18)+abb91(79)+abb91(27)+abb91(13)+abb91(28)-abb91(51)
      abb91(13)=spbk3k2*abb91(13)
      abb91(17)=-abb91(61)*abb91(35)
      abb91(18)=spbl5k3*spbl5k2*abb91(36)
      abb91(17)=abb91(18)+abb91(17)
      abb91(17)=spal5l6*abb91(17)
      abb91(13)=abb91(17)+abb91(13)
      abb91(13)=8.0_ki*abb91(13)
      abb91(17)=abb91(80)*abb91(26)
      abb91(17)=abb91(17)-abb91(55)
      abb91(18)=abb91(72)*abb91(26)
      abb91(18)=abb91(18)-abb91(23)
      abb91(22)=-spbk2k1*abb91(18)
      abb91(22)=abb91(17)+abb91(22)
      abb91(22)=abb91(12)*abb91(22)*abb91(10)**2
      abb91(17)=abb91(10)*abb91(17)
      abb91(18)=-abb91(18)*abb91(76)
      abb91(17)=abb91(17)+abb91(18)
      abb91(17)=abb91(11)*abb91(6)*abb91(17)
      abb91(17)=abb91(17)+abb91(36)+abb91(22)
      abb91(17)=16.0_ki*spbk3k2*abb91(17)
      abb91(18)=spbl6k3*abb91(36)
      abb91(19)=-abb91(19)*abb91(33)
      abb91(22)=spbl6k2*abb91(38)
      abb91(19)=abb91(19)+abb91(22)
      abb91(19)=abb91(19)*abb91(82)
      abb91(22)=spbl6k2*abb91(84)
      abb91(18)=abb91(18)+abb91(19)+abb91(22)
      abb91(18)=8.0_ki*abb91(18)
      abb91(19)=-8.0_ki*abb91(59)
      R2d91=0.0_ki
      rat2 = rat2 + R2d91
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='91' value='", &
          & R2d91, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd91h7
