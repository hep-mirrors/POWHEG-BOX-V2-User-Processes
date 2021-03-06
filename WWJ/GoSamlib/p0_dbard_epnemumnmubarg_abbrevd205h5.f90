module     p0_dbard_epnemumnmubarg_abbrevd205h5
   use p0_dbard_epnemumnmubarg_config, only: ki
   use p0_dbard_epnemumnmubarg_globalsh5
   implicit none
   private
   complex(ki), dimension(85), public :: abb205
   complex(ki), public :: R2d205
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p0_dbard_epnemumnmubarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_color, only: TR
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      implicit none
      abb205(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb205(2)=1.0_ki/(-mZ**2+es712+i_*mZ*wZ)
      abb205(3)=NC**(-1)
      abb205(4)=sqrt2**(-1)
      abb205(5)=es345**(-1)
      abb205(6)=es71**(-1)
      abb205(7)=spbk7k2**(-1)
      abb205(8)=1.0_ki/(es34-es56+es712-es345)
      abb205(9)=es712**(-1)
      abb205(10)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb205(11)=es456**(-1)
      abb205(12)=1.0_ki/(-es34+es56+es712-es456)
      abb205(13)=1.0_ki/(es71+es34+es56-es712-es234)
      abb205(14)=spak1k4*spak2k5
      abb205(15)=spak1k5*spak2k4
      abb205(14)=abb205(14)-abb205(15)
      abb205(15)=abb205(14)*spbk3k2
      abb205(16)=spak1k4*spbk3k1
      abb205(17)=spak4k7*spbk7k3
      abb205(16)=abb205(16)-abb205(17)
      abb205(17)=-spak1k5*abb205(16)
      abb205(15)=abb205(15)+abb205(17)
      abb205(18)=spbk6k2*abb205(9)
      abb205(15)=abb205(15)*abb205(18)
      abb205(19)=spak1k4*spbk4k2
      abb205(20)=spak1k5*spbk5k2
      abb205(19)=abb205(19)-abb205(20)
      abb205(20)=spbk3k2*spak1k3
      abb205(20)=abb205(20)+abb205(19)
      abb205(20)=abb205(20)*abb205(9)
      abb205(21)=abb205(18)*spak1k6
      abb205(20)=abb205(20)-abb205(21)
      abb205(20)=abb205(20)*spbk6k3
      abb205(21)=spak1k4*spbk6k4
      abb205(22)=abb205(9)*spbk3k2
      abb205(23)=abb205(21)*abb205(22)
      abb205(24)=abb205(18)*spak1k5
      abb205(25)=abb205(24)*spbk5k3
      abb205(20)=abb205(20)-abb205(23)+abb205(25)
      abb205(20)=abb205(20)*spak4k5
      abb205(23)=abb205(24)*spak4k6
      abb205(25)=abb205(22)*spak3k5
      abb205(26)=abb205(25)*spak1k4
      abb205(23)=abb205(23)-abb205(26)
      abb205(23)=abb205(23)*spbk6k3
      abb205(26)=spak1k5*spbk6k1
      abb205(27)=spak5k7*spbk7k6
      abb205(26)=abb205(26)-abb205(27)
      abb205(27)=-spak1k4*abb205(26)
      abb205(28)=abb205(27)*abb205(22)
      abb205(15)=abb205(15)-abb205(20)-abb205(23)-abb205(28)
      abb205(20)=abb205(7)*spbk2k1
      abb205(23)=abb205(15)*abb205(20)
      abb205(28)=spak4k7*spak2k5
      abb205(29)=spak5k7*spak2k4
      abb205(28)=abb205(28)-abb205(29)
      abb205(29)=abb205(28)*spbk3k2
      abb205(30)=abb205(16)*spak5k7
      abb205(29)=abb205(29)-abb205(30)
      abb205(29)=abb205(29)*abb205(18)
      abb205(31)=spak4k7*spbk4k2
      abb205(32)=spak5k7*spbk5k2
      abb205(31)=abb205(31)-abb205(32)
      abb205(32)=spbk3k2*spak3k7
      abb205(32)=abb205(32)+abb205(31)
      abb205(32)=abb205(32)*abb205(9)
      abb205(33)=abb205(18)*spak6k7
      abb205(32)=abb205(32)-abb205(33)
      abb205(32)=abb205(32)*spbk6k3
      abb205(33)=spak4k7*spbk6k4
      abb205(34)=abb205(33)*abb205(22)
      abb205(35)=abb205(18)*spak5k7
      abb205(36)=abb205(35)*spbk5k3
      abb205(32)=abb205(32)-abb205(34)+abb205(36)
      abb205(32)=abb205(32)*spak4k5
      abb205(34)=abb205(35)*spak4k6
      abb205(25)=abb205(25)*spak4k7
      abb205(25)=abb205(34)-abb205(25)
      abb205(25)=abb205(25)*spbk6k3
      abb205(34)=-spak4k7*abb205(26)
      abb205(36)=abb205(34)*abb205(22)
      abb205(25)=abb205(29)-abb205(32)-abb205(25)-abb205(36)
      abb205(29)=abb205(23)-abb205(25)
      abb205(29)=abb205(3)*abb205(29)
      abb205(32)=abb205(20)*NC
      abb205(36)=abb205(15)*abb205(32)
      abb205(37)=abb205(25)*NC
      abb205(29)=abb205(29)+abb205(37)-abb205(36)
      abb205(19)=abb205(19)*gWWZ
      abb205(38)=spbk3k2*gWWZ
      abb205(39)=abb205(38)*spak1k3
      abb205(40)=spbk6k2*gWWZ
      abb205(41)=abb205(40)*spak1k6
      abb205(19)=abb205(19)+abb205(39)-abb205(41)
      abb205(19)=abb205(19)*spbk6k3
      abb205(21)=abb205(21)*abb205(38)
      abb205(39)=spak1k5*spbk5k3
      abb205(41)=abb205(39)*abb205(40)
      abb205(19)=abb205(19)-abb205(21)+abb205(41)
      abb205(19)=abb205(19)*spak4k5
      abb205(14)=abb205(14)*abb205(38)
      abb205(17)=abb205(17)*gWWZ
      abb205(14)=abb205(14)+abb205(17)
      abb205(14)=abb205(14)*spbk6k2
      abb205(17)=spbk6k2*spak4k6
      abb205(21)=abb205(17)*gWWZ
      abb205(41)=abb205(21)*spak1k5
      abb205(42)=abb205(38)*spak3k5
      abb205(43)=abb205(42)*spak1k4
      abb205(41)=abb205(41)-abb205(43)
      abb205(41)=abb205(41)*spbk6k3
      abb205(27)=abb205(27)*abb205(38)
      abb205(14)=-abb205(14)+abb205(41)+abb205(19)+abb205(27)
      abb205(19)=abb205(14)*abb205(20)
      abb205(27)=abb205(31)*gWWZ
      abb205(31)=abb205(38)*spak3k7
      abb205(41)=abb205(40)*spak6k7
      abb205(27)=abb205(27)+abb205(31)-abb205(41)
      abb205(27)=abb205(27)*spbk6k3
      abb205(31)=abb205(33)*abb205(38)
      abb205(33)=spak5k7*spbk5k3
      abb205(41)=abb205(33)*abb205(40)
      abb205(27)=abb205(27)-abb205(31)+abb205(41)
      abb205(27)=abb205(27)*spak4k5
      abb205(28)=abb205(28)*abb205(38)
      abb205(30)=abb205(30)*gWWZ
      abb205(28)=abb205(28)-abb205(30)
      abb205(28)=abb205(28)*spbk6k2
      abb205(21)=abb205(21)*spak5k7
      abb205(30)=abb205(42)*spak4k7
      abb205(21)=abb205(21)-abb205(30)
      abb205(21)=abb205(21)*spbk6k3
      abb205(30)=abb205(34)*abb205(38)
      abb205(21)=-abb205(28)+abb205(21)+abb205(27)+abb205(30)
      abb205(27)=-abb205(19)+abb205(21)
      abb205(27)=abb205(3)*abb205(27)
      abb205(28)=abb205(21)*NC
      abb205(30)=abb205(14)*abb205(32)
      abb205(27)=abb205(27)-abb205(28)+abb205(30)
      abb205(31)=abb205(2)*gDl
      abb205(27)=abb205(27)*abb205(31)
      abb205(27)=1.0_ki/3.0_ki*abb205(29)+abb205(27)
      abb205(27)=abb205(10)*abb205(27)
      abb205(29)=spak4k6*abb205(8)
      abb205(24)=abb205(24)*abb205(29)
      abb205(34)=abb205(8)*spak3k4
      abb205(41)=abb205(34)*abb205(22)
      abb205(42)=abb205(41)*spak1k5
      abb205(24)=abb205(24)-abb205(42)
      abb205(24)=abb205(24)*spbk6k3
      abb205(42)=abb205(24)*abb205(20)
      abb205(35)=abb205(35)*abb205(29)
      abb205(41)=abb205(41)*spak5k7
      abb205(35)=abb205(35)-abb205(41)
      abb205(35)=abb205(35)*spbk6k3
      abb205(41)=abb205(35)-abb205(42)
      abb205(41)=abb205(3)*abb205(41)
      abb205(43)=abb205(35)*NC
      abb205(44)=abb205(24)*abb205(32)
      abb205(41)=abb205(41)-abb205(43)+abb205(44)
      abb205(45)=abb205(5)*gnmul
      abb205(39)=abb205(39)*abb205(45)
      abb205(46)=abb205(45)*spbk4k3
      abb205(47)=abb205(46)*spak1k4
      abb205(39)=abb205(47)+abb205(39)
      abb205(47)=spak4k5*spbk6k2
      abb205(39)=abb205(39)*abb205(47)
      abb205(48)=abb205(34)*gmul
      abb205(49)=abb205(48)*spbk3k2
      abb205(50)=abb205(17)*abb205(8)*gmul
      abb205(49)=abb205(49)-abb205(50)
      abb205(49)=abb205(49)*spbk6k3
      abb205(50)=-spak1k5*abb205(49)
      abb205(39)=abb205(39)-abb205(50)
      abb205(50)=abb205(39)*abb205(20)
      abb205(49)=-spak5k7*abb205(49)
      abb205(33)=abb205(33)*abb205(45)
      abb205(51)=abb205(46)*spak4k7
      abb205(33)=abb205(33)+abb205(51)
      abb205(33)=abb205(33)*abb205(47)
      abb205(33)=abb205(49)-abb205(33)
      abb205(47)=abb205(50)+abb205(33)
      abb205(47)=abb205(3)*abb205(47)
      abb205(49)=abb205(39)*abb205(32)
      abb205(51)=abb205(33)*NC
      abb205(47)=abb205(47)-abb205(51)-abb205(49)
      abb205(47)=abb205(47)*abb205(31)
      abb205(41)=1.0_ki/3.0_ki*abb205(41)+abb205(47)
      abb205(27)=2.0_ki*abb205(41)+abb205(27)
      abb205(27)=abb205(1)*abb205(27)
      abb205(41)=abb205(11)*spbk6k5
      abb205(47)=abb205(41)*gel
      abb205(52)=abb205(47)*spak1k5
      abb205(53)=abb205(11)*spbk6k4
      abb205(54)=abb205(53)*gel
      abb205(55)=abb205(54)*spak1k4
      abb205(52)=abb205(52)+abb205(55)
      abb205(55)=spak4k5*spbk3k2
      abb205(52)=abb205(52)*abb205(55)
      abb205(56)=abb205(12)*gnel
      abb205(57)=abb205(56)*spak3k5
      abb205(58)=spbk3k2*spak1k4
      abb205(59)=abb205(57)*abb205(58)
      abb205(56)=abb205(56)*spak5k6
      abb205(60)=abb205(56)*spbk6k2
      abb205(61)=abb205(60)*spak1k4
      abb205(59)=abb205(59)-abb205(61)
      abb205(59)=abb205(59)*spbk6k3
      abb205(52)=abb205(52)-abb205(59)
      abb205(59)=abb205(52)*abb205(20)
      abb205(61)=abb205(47)*spak5k7
      abb205(62)=abb205(54)*spak4k7
      abb205(61)=abb205(61)+abb205(62)
      abb205(55)=abb205(61)*abb205(55)
      abb205(61)=spbk3k2*spak4k7
      abb205(62)=abb205(57)*abb205(61)
      abb205(60)=abb205(60)*spak4k7
      abb205(60)=abb205(62)-abb205(60)
      abb205(60)=abb205(60)*spbk6k3
      abb205(55)=abb205(55)-abb205(60)
      abb205(60)=abb205(59)-abb205(55)
      abb205(60)=abb205(3)*abb205(60)
      abb205(62)=abb205(52)*abb205(32)
      abb205(63)=abb205(55)*NC
      abb205(60)=abb205(60)+abb205(63)-abb205(62)
      abb205(60)=abb205(60)*abb205(31)
      abb205(64)=abb205(53)*spak1k4
      abb205(65)=abb205(41)*spak1k5
      abb205(64)=abb205(64)+abb205(65)
      abb205(64)=abb205(64)*abb205(22)
      abb205(65)=abb205(20)*spak4k5
      abb205(66)=abb205(64)*abb205(65)
      abb205(67)=abb205(53)*spak4k7
      abb205(68)=abb205(41)*spak5k7
      abb205(67)=abb205(67)+abb205(68)
      abb205(22)=abb205(67)*abb205(22)
      abb205(67)=abb205(22)*spak4k5
      abb205(68)=-abb205(67)+abb205(66)
      abb205(68)=abb205(3)*abb205(68)
      abb205(69)=abb205(32)*spak4k5
      abb205(70)=abb205(64)*abb205(69)
      abb205(71)=NC*spak4k5
      abb205(72)=abb205(22)*abb205(71)
      abb205(68)=abb205(68)+abb205(72)-abb205(70)
      abb205(60)=1.0_ki/3.0_ki*abb205(68)+abb205(60)
      abb205(68)=2.0_ki*abb205(10)
      abb205(60)=abb205(60)*abb205(68)
      abb205(27)=abb205(60)+abb205(27)
      abb205(60)=i_*c1*TR
      abb205(73)=abb205(60)*spak1k7
      abb205(27)=abb205(27)*abb205(73)
      abb205(74)=spbk6k2*abb205(13)
      abb205(75)=abb205(74)*spak2k5
      abb205(58)=abb205(75)*abb205(58)
      abb205(76)=abb205(74)*spak5k6
      abb205(77)=abb205(76)*spbk6k3
      abb205(78)=abb205(77)*spak1k4
      abb205(58)=abb205(78)-abb205(58)
      abb205(78)=abb205(58)*abb205(20)
      abb205(61)=abb205(75)*abb205(61)
      abb205(75)=abb205(77)*spak4k7
      abb205(61)=abb205(75)-abb205(61)
      abb205(75)=-abb205(78)+abb205(61)
      abb205(75)=abb205(3)*abb205(75)
      abb205(77)=abb205(58)*abb205(32)
      abb205(79)=abb205(61)*NC
      abb205(75)=abb205(75)-abb205(79)+abb205(77)
      abb205(80)=gW**2
      abb205(81)=abb205(10)*abb205(60)*abb205(1)
      abb205(82)=abb205(80)*abb205(81)
      abb205(82)=2.0_ki*abb205(82)
      abb205(83)=abb205(82)*spak1k7
      abb205(75)=abb205(75)*abb205(83)
      abb205(27)=abb205(27)+abb205(75)
      abb205(27)=4.0_ki*abb205(4)*abb205(6)*abb205(27)*abb205(80)
      abb205(75)=2.0_ki*abb205(20)
      abb205(80)=abb205(15)*abb205(75)
      abb205(80)=abb205(80)-abb205(25)
      abb205(80)=abb205(3)*abb205(80)
      abb205(84)=2.0_ki*abb205(32)
      abb205(85)=-abb205(15)*abb205(84)
      abb205(37)=abb205(80)+abb205(37)+abb205(85)
      abb205(80)=-abb205(14)*abb205(75)
      abb205(80)=abb205(80)+abb205(21)
      abb205(80)=abb205(3)*abb205(80)
      abb205(85)=abb205(14)*abb205(84)
      abb205(28)=abb205(80)-abb205(28)+abb205(85)
      abb205(28)=abb205(28)*abb205(31)
      abb205(28)=1.0_ki/3.0_ki*abb205(37)+abb205(28)
      abb205(28)=abb205(10)*abb205(28)
      abb205(37)=-abb205(24)*abb205(75)
      abb205(37)=abb205(35)+abb205(37)
      abb205(37)=abb205(3)*abb205(37)
      abb205(80)=abb205(24)*abb205(84)
      abb205(37)=abb205(37)-abb205(43)+abb205(80)
      abb205(43)=abb205(39)*abb205(75)
      abb205(43)=abb205(43)+abb205(33)
      abb205(43)=abb205(3)*abb205(43)
      abb205(80)=-abb205(39)*abb205(84)
      abb205(43)=abb205(43)-abb205(51)+abb205(80)
      abb205(43)=abb205(43)*abb205(31)
      abb205(37)=1.0_ki/3.0_ki*abb205(37)+abb205(43)
      abb205(28)=2.0_ki*abb205(37)+abb205(28)
      abb205(28)=abb205(1)*abb205(28)
      abb205(37)=abb205(52)*abb205(75)
      abb205(37)=abb205(37)-abb205(55)
      abb205(37)=abb205(3)*abb205(37)
      abb205(43)=-abb205(52)*abb205(84)
      abb205(37)=abb205(37)+abb205(63)+abb205(43)
      abb205(37)=abb205(37)*abb205(31)
      abb205(43)=-abb205(67)+2.0_ki*abb205(66)
      abb205(43)=abb205(3)*abb205(43)
      abb205(43)=abb205(43)+abb205(72)-2.0_ki*abb205(70)
      abb205(37)=1.0_ki/3.0_ki*abb205(43)+abb205(37)
      abb205(37)=abb205(37)*abb205(68)
      abb205(28)=abb205(37)+abb205(28)
      abb205(28)=abb205(28)*abb205(73)
      abb205(37)=-abb205(58)*abb205(75)
      abb205(37)=abb205(37)+abb205(61)
      abb205(37)=abb205(3)*abb205(37)
      abb205(43)=abb205(58)*abb205(84)
      abb205(37)=abb205(37)-abb205(79)+abb205(43)
      abb205(37)=abb205(37)*abb205(83)
      abb205(28)=abb205(28)+abb205(37)
      abb205(37)=abb205(6)*gW
      abb205(37)=abb205(4)*abb205(37)**2
      abb205(43)=8.0_ki*abb205(37)
      abb205(28)=abb205(28)*abb205(43)
      abb205(51)=abb205(65)*spbk7k3
      abb205(63)=spak4k5*spbk3k1
      abb205(51)=abb205(51)-abb205(63)
      abb205(51)=abb205(51)*abb205(3)
      abb205(75)=abb205(71)*spbk3k1
      abb205(79)=abb205(69)*spbk7k3
      abb205(51)=abb205(51)+abb205(75)-abb205(79)
      abb205(75)=abb205(6)*spak1k7
      abb205(75)=abb205(75)**2*gW**4*abb205(81)*abb205(4)
      abb205(79)=32.0_ki*abb205(75)
      abb205(79)=-abb205(79)*abb205(74)*abb205(51)
      abb205(23)=2.0_ki*abb205(25)-abb205(23)
      abb205(23)=abb205(3)*abb205(23)
      abb205(80)=2.0_ki*NC
      abb205(84)=-abb205(25)*abb205(80)
      abb205(23)=abb205(23)+abb205(84)+abb205(36)
      abb205(19)=-2.0_ki*abb205(21)+abb205(19)
      abb205(19)=abb205(3)*abb205(19)
      abb205(36)=abb205(21)*abb205(80)
      abb205(19)=abb205(19)+abb205(36)-abb205(30)
      abb205(19)=abb205(19)*abb205(31)
      abb205(19)=1.0_ki/3.0_ki*abb205(23)+abb205(19)
      abb205(19)=abb205(10)*abb205(19)
      abb205(23)=-2.0_ki*abb205(35)+abb205(42)
      abb205(23)=abb205(3)*abb205(23)
      abb205(30)=abb205(35)*abb205(80)
      abb205(23)=abb205(23)+abb205(30)-abb205(44)
      abb205(30)=-2.0_ki*abb205(33)-abb205(50)
      abb205(30)=abb205(3)*abb205(30)
      abb205(36)=abb205(33)*abb205(80)
      abb205(30)=abb205(30)+abb205(36)+abb205(49)
      abb205(30)=abb205(30)*abb205(31)
      abb205(23)=1.0_ki/3.0_ki*abb205(23)+abb205(30)
      abb205(19)=2.0_ki*abb205(23)+abb205(19)
      abb205(19)=abb205(1)*abb205(19)
      abb205(23)=2.0_ki*abb205(55)-abb205(59)
      abb205(23)=abb205(3)*abb205(23)
      abb205(30)=-abb205(55)*abb205(80)
      abb205(23)=abb205(23)+abb205(30)+abb205(62)
      abb205(23)=abb205(23)*abb205(31)
      abb205(30)=2.0_ki*abb205(67)-abb205(66)
      abb205(30)=abb205(3)*abb205(30)
      abb205(30)=abb205(30)-2.0_ki*abb205(72)+abb205(70)
      abb205(23)=1.0_ki/3.0_ki*abb205(30)+abb205(23)
      abb205(23)=abb205(23)*abb205(68)
      abb205(19)=abb205(23)+abb205(19)
      abb205(19)=abb205(19)*abb205(73)
      abb205(23)=-2.0_ki*abb205(61)+abb205(78)
      abb205(23)=abb205(3)*abb205(23)
      abb205(30)=abb205(61)*abb205(80)
      abb205(23)=abb205(23)+abb205(30)-abb205(77)
      abb205(23)=abb205(23)*abb205(83)
      abb205(19)=abb205(19)+abb205(23)
      abb205(19)=abb205(19)*abb205(43)
      abb205(23)=abb205(3)-NC
      abb205(15)=abb205(15)*abb205(23)
      abb205(30)=abb205(23)*abb205(31)
      abb205(14)=-abb205(14)*abb205(30)
      abb205(14)=1.0_ki/3.0_ki*abb205(15)+abb205(14)
      abb205(14)=abb205(10)*abb205(14)
      abb205(15)=-abb205(24)*abb205(23)
      abb205(24)=abb205(39)*abb205(30)
      abb205(15)=1.0_ki/3.0_ki*abb205(15)+abb205(24)
      abb205(14)=2.0_ki*abb205(15)+abb205(14)
      abb205(14)=abb205(1)*abb205(14)
      abb205(15)=abb205(3)*spak4k5
      abb205(15)=-abb205(71)+abb205(15)
      abb205(15)=abb205(64)*abb205(15)
      abb205(24)=abb205(52)*abb205(30)
      abb205(15)=1.0_ki/3.0_ki*abb205(15)+abb205(24)
      abb205(15)=abb205(15)*abb205(68)
      abb205(14)=abb205(15)+abb205(14)
      abb205(14)=abb205(14)*abb205(73)
      abb205(15)=-abb205(83)*abb205(58)*abb205(23)
      abb205(14)=abb205(14)+abb205(15)
      abb205(15)=4.0_ki*abb205(37)
      abb205(14)=abb205(14)*abb205(15)
      abb205(23)=spbk6k3*abb205(9)
      abb205(24)=abb205(23)*spbk6k1
      abb205(30)=abb205(71)*abb205(24)
      abb205(36)=abb205(23)*spbk7k6
      abb205(37)=-abb205(69)*abb205(36)
      abb205(36)=abb205(65)*abb205(36)
      abb205(24)=-spak4k5*abb205(24)
      abb205(24)=abb205(24)+abb205(36)
      abb205(24)=abb205(3)*abb205(24)
      abb205(24)=abb205(24)+abb205(30)+abb205(37)
      abb205(30)=spbk6k3*gWWZ
      abb205(36)=abb205(30)*spbk6k1
      abb205(37)=abb205(71)*abb205(36)
      abb205(39)=abb205(30)*spbk7k6
      abb205(42)=-abb205(69)*abb205(39)
      abb205(39)=abb205(65)*abb205(39)
      abb205(36)=-spak4k5*abb205(36)
      abb205(36)=abb205(36)+abb205(39)
      abb205(36)=abb205(3)*abb205(36)
      abb205(36)=abb205(36)+abb205(37)+abb205(42)
      abb205(36)=abb205(36)*abb205(31)
      abb205(24)=1.0_ki/3.0_ki*abb205(24)+abb205(36)
      abb205(36)=abb205(43)*spak1k7**2
      abb205(37)=abb205(36)*abb205(81)
      abb205(24)=abb205(24)*abb205(37)
      abb205(39)=abb205(63)*abb205(13)
      abb205(42)=abb205(39)*spbk5k2
      abb205(17)=abb205(17)*abb205(13)
      abb205(43)=abb205(17)*spbk3k1
      abb205(42)=abb205(42)+abb205(43)
      abb205(43)=spak4k5*spbk7k3
      abb205(44)=abb205(43)*abb205(13)
      abb205(49)=abb205(44)*spbk5k2
      abb205(17)=abb205(17)*spbk7k3
      abb205(17)=abb205(49)+abb205(17)
      abb205(49)=abb205(17)*abb205(20)
      abb205(49)=abb205(49)-abb205(42)
      abb205(49)=abb205(3)*abb205(49)
      abb205(42)=NC*abb205(42)
      abb205(17)=-abb205(17)*abb205(32)
      abb205(17)=abb205(49)+abb205(42)+abb205(17)
      abb205(42)=16.0_ki*abb205(75)
      abb205(17)=abb205(17)*abb205(42)
      abb205(49)=abb205(30)*spbk5k1
      abb205(50)=spbk6k1*spbk5k3
      abb205(52)=abb205(50)*gWWZ
      abb205(49)=abb205(49)-abb205(52)
      abb205(49)=abb205(49)*spak4k5
      abb205(38)=abb205(38)*spak2k4
      abb205(52)=abb205(30)*spak4k6
      abb205(38)=abb205(38)+abb205(52)
      abb205(52)=abb205(38)*spbk6k1
      abb205(58)=-spbk6k1*abb205(16)
      abb205(59)=abb205(58)*gWWZ
      abb205(49)=abb205(49)-abb205(52)+abb205(59)
      abb205(52)=abb205(30)*spbk7k5
      abb205(59)=spbk7k6*spbk5k3
      abb205(62)=abb205(59)*gWWZ
      abb205(52)=abb205(52)-abb205(62)
      abb205(52)=abb205(52)*spak4k5
      abb205(38)=abb205(38)*spbk7k6
      abb205(16)=-spbk7k6*abb205(16)
      abb205(62)=abb205(16)*gWWZ
      abb205(38)=abb205(52)-abb205(38)+abb205(62)
      abb205(52)=abb205(38)*abb205(20)
      abb205(52)=abb205(52)-abb205(49)
      abb205(52)=abb205(3)*abb205(52)
      abb205(49)=NC*abb205(49)
      abb205(38)=-abb205(38)*abb205(32)
      abb205(38)=abb205(52)+abb205(49)+abb205(38)
      abb205(38)=abb205(38)*abb205(31)
      abb205(49)=abb205(23)*spbk5k1
      abb205(52)=abb205(50)*abb205(9)
      abb205(49)=abb205(49)-abb205(52)
      abb205(49)=abb205(49)*spak4k5
      abb205(52)=spbk3k2*spak2k4
      abb205(62)=abb205(52)*spbk6k1
      abb205(58)=abb205(62)-abb205(58)
      abb205(58)=abb205(58)*abb205(9)
      abb205(62)=abb205(23)*spak4k6
      abb205(64)=abb205(62)*spbk6k1
      abb205(49)=-abb205(49)+abb205(58)+abb205(64)
      abb205(58)=abb205(23)*spbk7k5
      abb205(64)=abb205(59)*abb205(9)
      abb205(58)=abb205(58)-abb205(64)
      abb205(58)=abb205(58)*spak4k5
      abb205(52)=abb205(52)*spbk7k6
      abb205(16)=abb205(52)-abb205(16)
      abb205(16)=abb205(16)*abb205(9)
      abb205(52)=abb205(62)*spbk7k6
      abb205(16)=-abb205(58)+abb205(16)+abb205(52)
      abb205(52)=-abb205(16)*abb205(20)
      abb205(52)=abb205(52)+abb205(49)
      abb205(52)=abb205(3)*abb205(52)
      abb205(49)=-NC*abb205(49)
      abb205(16)=abb205(16)*abb205(32)
      abb205(16)=abb205(52)+abb205(49)+abb205(16)
      abb205(16)=1.0_ki/3.0_ki*abb205(16)+abb205(38)
      abb205(16)=abb205(10)*abb205(16)
      abb205(38)=abb205(48)*spbk3k1
      abb205(49)=abb205(29)*spbk6k1
      abb205(52)=abb205(49)*gmul
      abb205(38)=abb205(38)-abb205(52)
      abb205(38)=abb205(38)*spbk6k3
      abb205(45)=abb205(45)*spak4k5
      abb205(50)=abb205(45)*abb205(50)
      abb205(38)=abb205(38)+abb205(50)
      abb205(48)=abb205(48)*spbk7k3
      abb205(29)=abb205(29)*spbk7k6
      abb205(50)=abb205(29)*gmul
      abb205(48)=abb205(48)-abb205(50)
      abb205(48)=abb205(48)*spbk6k3
      abb205(45)=abb205(45)*abb205(59)
      abb205(45)=abb205(48)+abb205(45)
      abb205(48)=abb205(45)*abb205(20)
      abb205(48)=abb205(48)-abb205(38)
      abb205(48)=abb205(3)*abb205(48)
      abb205(38)=NC*abb205(38)
      abb205(45)=-abb205(45)*abb205(32)
      abb205(38)=abb205(48)+abb205(38)+abb205(45)
      abb205(38)=abb205(38)*abb205(31)
      abb205(45)=abb205(34)*spbk3k1
      abb205(45)=abb205(45)-abb205(49)
      abb205(48)=NC*abb205(45)
      abb205(34)=abb205(34)*spbk7k3
      abb205(29)=abb205(34)-abb205(29)
      abb205(34)=-abb205(29)*abb205(32)
      abb205(34)=abb205(48)+abb205(34)
      abb205(34)=abb205(23)*abb205(34)
      abb205(29)=abb205(29)*abb205(20)
      abb205(29)=-abb205(45)+abb205(29)
      abb205(29)=abb205(29)*abb205(23)*abb205(3)
      abb205(29)=abb205(29)+abb205(34)
      abb205(29)=1.0_ki/3.0_ki*abb205(29)+abb205(38)
      abb205(16)=2.0_ki*abb205(29)+abb205(16)
      abb205(16)=abb205(1)*abb205(16)
      abb205(29)=abb205(51)*abb205(41)*abb205(9)
      abb205(34)=abb205(31)*abb205(47)*abb205(51)
      abb205(29)=1.0_ki/3.0_ki*abb205(29)+abb205(34)
      abb205(29)=abb205(29)*abb205(68)
      abb205(16)=abb205(29)+abb205(16)
      abb205(16)=abb205(16)*abb205(60)
      abb205(29)=abb205(39)*spbk6k5
      abb205(34)=abb205(74)*spak2k4
      abb205(38)=abb205(34)*spbk3k1
      abb205(29)=abb205(29)+abb205(38)
      abb205(38)=abb205(44)*spbk6k5
      abb205(34)=abb205(34)*spbk7k3
      abb205(34)=abb205(38)+abb205(34)
      abb205(38)=abb205(34)*abb205(20)
      abb205(38)=abb205(38)-abb205(29)
      abb205(38)=abb205(3)*abb205(38)
      abb205(29)=NC*abb205(29)
      abb205(34)=-abb205(34)*abb205(32)
      abb205(29)=abb205(38)+abb205(29)+abb205(34)
      abb205(29)=abb205(29)*abb205(82)
      abb205(16)=abb205(16)+abb205(29)
      abb205(16)=abb205(16)*abb205(36)
      abb205(29)=-NC*spbk6k1
      abb205(34)=spbk7k6*abb205(32)
      abb205(38)=-spbk7k6*abb205(20)
      abb205(38)=spbk6k1+abb205(38)
      abb205(38)=abb205(3)*abb205(38)
      abb205(29)=abb205(38)+abb205(29)+abb205(34)
      abb205(29)=abb205(42)*abb205(76)*abb205(29)
      abb205(34)=abb205(23)*spbk4k1
      abb205(38)=abb205(9)*spbk6k4
      abb205(39)=abb205(38)*spbk3k1
      abb205(34)=abb205(34)-abb205(39)
      abb205(34)=abb205(34)*spak4k5
      abb205(39)=-spbk3k1*abb205(26)
      abb205(41)=abb205(39)*abb205(9)
      abb205(18)=abb205(18)*spak2k5
      abb205(42)=abb205(23)*spak3k5
      abb205(18)=abb205(18)+abb205(42)
      abb205(42)=abb205(18)*spbk3k1
      abb205(34)=abb205(34)+abb205(41)-abb205(42)
      abb205(41)=abb205(23)*spbk7k4
      abb205(38)=abb205(38)*spbk7k3
      abb205(38)=abb205(41)-abb205(38)
      abb205(38)=abb205(38)*spak4k5
      abb205(18)=abb205(18)*spbk7k3
      abb205(26)=-spbk7k3*abb205(26)
      abb205(41)=abb205(26)*abb205(9)
      abb205(18)=abb205(38)-abb205(18)+abb205(41)
      abb205(38)=-abb205(18)*abb205(20)
      abb205(38)=abb205(38)+abb205(34)
      abb205(38)=abb205(3)*abb205(38)
      abb205(34)=-NC*abb205(34)
      abb205(18)=abb205(18)*abb205(32)
      abb205(18)=abb205(38)+abb205(34)+abb205(18)
      abb205(34)=abb205(30)*spbk4k1
      abb205(38)=gWWZ*spbk6k4
      abb205(41)=abb205(38)*spbk3k1
      abb205(34)=abb205(34)-abb205(41)
      abb205(34)=abb205(34)*spak4k5
      abb205(39)=abb205(39)*gWWZ
      abb205(40)=abb205(40)*spak2k5
      abb205(41)=abb205(30)*spak3k5
      abb205(40)=abb205(40)+abb205(41)
      abb205(41)=abb205(40)*spbk3k1
      abb205(34)=abb205(34)+abb205(39)-abb205(41)
      abb205(39)=abb205(30)*spbk7k4
      abb205(38)=abb205(38)*spbk7k3
      abb205(38)=abb205(39)-abb205(38)
      abb205(38)=abb205(38)*spak4k5
      abb205(26)=abb205(26)*gWWZ
      abb205(39)=abb205(40)*spbk7k3
      abb205(26)=abb205(38)+abb205(26)-abb205(39)
      abb205(38)=-abb205(26)*abb205(20)
      abb205(38)=abb205(38)+abb205(34)
      abb205(38)=abb205(3)*abb205(38)
      abb205(34)=-NC*abb205(34)
      abb205(26)=abb205(26)*abb205(32)
      abb205(26)=abb205(38)+abb205(34)+abb205(26)
      abb205(26)=abb205(26)*abb205(31)
      abb205(18)=1.0_ki/3.0_ki*abb205(18)+abb205(26)
      abb205(18)=abb205(10)*abb205(18)
      abb205(26)=-spak4k5*spbk6k1
      abb205(34)=spbk7k6*abb205(65)
      abb205(26)=abb205(26)+abb205(34)
      abb205(26)=abb205(3)*abb205(26)
      abb205(34)=spbk6k1*abb205(71)
      abb205(38)=-spbk7k6*abb205(69)
      abb205(26)=abb205(26)+abb205(34)+abb205(38)
      abb205(26)=abb205(31)*abb205(46)*abb205(26)
      abb205(18)=2.0_ki*abb205(26)+abb205(18)
      abb205(18)=abb205(1)*abb205(18)
      abb205(26)=abb205(57)*spbk3k1
      abb205(34)=abb205(56)*spbk6k1
      abb205(26)=abb205(26)-abb205(34)
      abb205(26)=abb205(26)*spbk6k3
      abb205(34)=abb205(63)*abb205(54)
      abb205(26)=abb205(26)-abb205(34)
      abb205(34)=abb205(57)*spbk7k3
      abb205(38)=abb205(56)*spbk7k6
      abb205(34)=abb205(34)-abb205(38)
      abb205(34)=abb205(34)*spbk6k3
      abb205(38)=abb205(43)*abb205(54)
      abb205(34)=abb205(34)-abb205(38)
      abb205(38)=-abb205(34)*abb205(20)
      abb205(38)=abb205(38)+abb205(26)
      abb205(38)=abb205(3)*abb205(38)
      abb205(26)=-NC*abb205(26)
      abb205(34)=abb205(34)*abb205(32)
      abb205(26)=abb205(38)+abb205(26)+abb205(34)
      abb205(26)=abb205(26)*abb205(31)
      abb205(34)=abb205(51)*abb205(53)*abb205(9)
      abb205(26)=1.0_ki/3.0_ki*abb205(34)+abb205(26)
      abb205(26)=abb205(26)*abb205(68)
      abb205(18)=abb205(26)+abb205(18)
      abb205(18)=abb205(18)*abb205(60)*abb205(36)
      abb205(23)=-abb205(23)*abb205(51)
      abb205(26)=-abb205(31)*abb205(30)*abb205(51)
      abb205(23)=1.0_ki/3.0_ki*abb205(23)+abb205(26)
      abb205(23)=abb205(23)*abb205(37)
      abb205(20)=abb205(20)*abb205(3)
      abb205(20)=abb205(20)-abb205(32)
      abb205(25)=abb205(25)*abb205(20)
      abb205(26)=abb205(20)*abb205(31)
      abb205(21)=-abb205(21)*abb205(26)
      abb205(21)=1.0_ki/3.0_ki*abb205(25)+abb205(21)
      abb205(21)=abb205(10)*abb205(21)
      abb205(25)=-abb205(35)*abb205(20)
      abb205(30)=-abb205(33)*abb205(26)
      abb205(25)=1.0_ki/3.0_ki*abb205(25)+abb205(30)
      abb205(21)=2.0_ki*abb205(25)+abb205(21)
      abb205(21)=abb205(1)*abb205(21)
      abb205(25)=abb205(3)*abb205(65)
      abb205(25)=-abb205(69)+abb205(25)
      abb205(22)=abb205(22)*abb205(25)
      abb205(25)=abb205(55)*abb205(26)
      abb205(22)=1.0_ki/3.0_ki*abb205(22)+abb205(25)
      abb205(22)=abb205(22)*abb205(68)
      abb205(21)=abb205(22)+abb205(21)
      abb205(21)=abb205(21)*abb205(73)
      abb205(20)=-abb205(83)*abb205(61)*abb205(20)
      abb205(20)=abb205(21)+abb205(20)
      abb205(15)=abb205(20)*abb205(15)
      R2d205=0.0_ki
      rat2 = rat2 + R2d205
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='205' value='", &
          & R2d205, "'/>"
      end if
   end subroutine
end module p0_dbard_epnemumnmubarg_abbrevd205h5
