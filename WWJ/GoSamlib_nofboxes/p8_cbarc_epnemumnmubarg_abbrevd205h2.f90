module     p8_cbarc_epnemumnmubarg_abbrevd205h2
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_globalsh2
   implicit none
   private
   complex(ki), dimension(79), public :: abb205
   complex(ki), public :: R2d205
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p8_cbarc_epnemumnmubarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_color, only: TR
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      implicit none
      abb205(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb205(2)=1.0_ki/(-mZ**2+es712+i_*mZ*wZ)
      abb205(3)=NC**(-1)
      abb205(4)=sqrt2**(-1)
      abb205(5)=es345**(-1)
      abb205(6)=es71**(-1)
      abb205(7)=spak2k7**(-1)
      abb205(8)=1.0_ki/(es34-es56+es712-es345)
      abb205(9)=es712**(-1)
      abb205(10)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb205(11)=es456**(-1)
      abb205(12)=1.0_ki/(-es34+es56+es712-es456)
      abb205(13)=spbk7k6*spbk3k2
      abb205(14)=spbk7k3*spbk6k2
      abb205(13)=abb205(13)-abb205(14)
      abb205(14)=abb205(13)*spak2k4
      abb205(15)=spbk3k1*spak1k4
      abb205(16)=spbk7k3*spak4k7
      abb205(15)=abb205(15)-abb205(16)
      abb205(16)=-spbk7k6*abb205(15)
      abb205(14)=abb205(14)-abb205(16)
      abb205(14)=abb205(14)*spak2k5
      abb205(17)=spbk7k6*spak2k6
      abb205(18)=spbk7k3*spak2k3
      abb205(17)=abb205(17)-abb205(18)
      abb205(18)=spak2k4*spbk7k4
      abb205(19)=spak2k5*spbk7k5
      abb205(18)=-abb205(17)+abb205(18)-abb205(19)
      abb205(18)=abb205(18)*spbk6k3
      abb205(19)=spak2k4*spbk7k3
      abb205(20)=abb205(19)*spbk6k4
      abb205(21)=spak2k5*spbk5k3
      abb205(22)=abb205(21)*spbk7k6
      abb205(18)=abb205(18)-abb205(20)+abb205(22)
      abb205(18)=abb205(18)*spak4k5
      abb205(20)=abb205(19)*spak3k5
      abb205(22)=spak2k5*spak4k6
      abb205(23)=spbk7k6*abb205(22)
      abb205(20)=abb205(20)-abb205(23)
      abb205(20)=abb205(20)*spbk6k3
      abb205(23)=spbk6k1*spak1k5
      abb205(24)=spbk7k6*spak5k7
      abb205(23)=abb205(23)-abb205(24)
      abb205(24)=abb205(23)*abb205(19)
      abb205(14)=abb205(14)+abb205(18)-abb205(20)-abb205(24)
      abb205(18)=abb205(14)*abb205(9)
      abb205(20)=spbk6k1*spbk3k2
      abb205(24)=spbk3k1*spbk6k2
      abb205(20)=abb205(20)-abb205(24)
      abb205(24)=abb205(20)*spak2k4
      abb205(25)=-spbk6k1*abb205(15)
      abb205(24)=abb205(24)-abb205(25)
      abb205(24)=abb205(24)*spak2k5
      abb205(26)=spbk6k1*spak2k6
      abb205(27)=spbk3k1*spak2k3
      abb205(26)=abb205(26)-abb205(27)
      abb205(27)=spak2k4*spbk4k1
      abb205(28)=spak2k5*spbk5k1
      abb205(27)=-abb205(26)+abb205(27)-abb205(28)
      abb205(27)=abb205(27)*spbk6k3
      abb205(28)=abb205(21)*spbk6k1
      abb205(29)=spak2k4*spbk3k1
      abb205(30)=abb205(29)*spbk6k4
      abb205(27)=-abb205(30)+abb205(27)+abb205(28)
      abb205(27)=abb205(27)*spak4k5
      abb205(28)=abb205(29)*spak3k5
      abb205(22)=spbk6k1*abb205(22)
      abb205(22)=abb205(28)-abb205(22)
      abb205(22)=abb205(22)*spbk6k3
      abb205(28)=abb205(23)*abb205(29)
      abb205(22)=abb205(24)+abb205(27)-abb205(22)-abb205(28)
      abb205(24)=abb205(7)*spak1k2
      abb205(27)=abb205(24)*abb205(9)
      abb205(28)=abb205(22)*abb205(27)
      abb205(30)=-abb205(18)+abb205(28)
      abb205(30)=abb205(3)*abb205(30)
      abb205(31)=NC*abb205(9)
      abb205(32)=abb205(14)*abb205(31)
      abb205(33)=abb205(24)*NC
      abb205(34)=abb205(33)*abb205(9)
      abb205(35)=abb205(34)*abb205(22)
      abb205(30)=abb205(30)+abb205(32)-abb205(35)
      abb205(36)=spak2k4*gWWZ
      abb205(20)=abb205(20)*abb205(36)
      abb205(25)=abb205(25)*gWWZ
      abb205(20)=abb205(20)-abb205(25)
      abb205(20)=abb205(20)*spak2k5
      abb205(25)=abb205(26)*gWWZ
      abb205(26)=abb205(36)*spbk4k1
      abb205(37)=spak2k5*gWWZ
      abb205(38)=abb205(37)*spbk5k1
      abb205(25)=-abb205(25)+abb205(26)-abb205(38)
      abb205(25)=abb205(25)*spbk6k3
      abb205(26)=abb205(36)*spbk3k1
      abb205(38)=abb205(26)*spbk6k4
      abb205(39)=abb205(37)*spbk6k1
      abb205(40)=abb205(39)*spbk5k3
      abb205(25)=-abb205(25)+abb205(38)-abb205(40)
      abb205(25)=abb205(25)*spak4k5
      abb205(38)=abb205(26)*spak3k5
      abb205(39)=abb205(39)*spak4k6
      abb205(38)=abb205(38)-abb205(39)
      abb205(38)=abb205(38)*spbk6k3
      abb205(26)=abb205(26)*abb205(23)
      abb205(20)=abb205(20)-abb205(25)-abb205(38)-abb205(26)
      abb205(25)=abb205(20)*abb205(24)
      abb205(13)=abb205(13)*abb205(36)
      abb205(16)=abb205(16)*gWWZ
      abb205(13)=abb205(13)-abb205(16)
      abb205(13)=abb205(13)*spak2k5
      abb205(16)=abb205(17)*gWWZ
      abb205(17)=abb205(36)*spbk7k4
      abb205(26)=abb205(37)*spbk7k5
      abb205(16)=-abb205(16)+abb205(17)-abb205(26)
      abb205(16)=abb205(16)*spbk6k3
      abb205(17)=abb205(36)*spbk7k3
      abb205(26)=abb205(17)*spbk6k4
      abb205(38)=abb205(37)*spbk7k6
      abb205(39)=abb205(38)*spbk5k3
      abb205(16)=abb205(16)-abb205(26)+abb205(39)
      abb205(16)=abb205(16)*spak4k5
      abb205(26)=abb205(17)*spak3k5
      abb205(38)=abb205(38)*spak4k6
      abb205(26)=abb205(26)-abb205(38)
      abb205(26)=abb205(26)*spbk6k3
      abb205(17)=abb205(17)*abb205(23)
      abb205(13)=abb205(13)+abb205(16)-abb205(26)-abb205(17)
      abb205(16)=-abb205(25)+abb205(13)
      abb205(16)=abb205(3)*abb205(16)
      abb205(17)=abb205(20)*abb205(33)
      abb205(26)=abb205(13)*NC
      abb205(16)=abb205(16)-abb205(26)+abb205(17)
      abb205(38)=abb205(2)*gCr
      abb205(16)=abb205(16)*abb205(38)
      abb205(16)=2.0_ki/3.0_ki*abb205(30)+abb205(16)
      abb205(16)=abb205(10)*abb205(16)
      abb205(30)=abb205(8)*spak3k4
      abb205(39)=gmul*abb205(30)
      abb205(40)=abb205(39)*spbk3k1
      abb205(41)=abb205(8)*spak4k6
      abb205(42)=abb205(41)*gmul
      abb205(43)=abb205(42)*spbk6k1
      abb205(40)=abb205(40)-abb205(43)
      abb205(43)=spbk6k3*spak2k5
      abb205(40)=abb205(40)*abb205(43)
      abb205(44)=abb205(5)*gnmul
      abb205(21)=abb205(44)*abb205(21)
      abb205(45)=abb205(44)*spbk4k3
      abb205(46)=abb205(45)*spak2k4
      abb205(21)=abb205(21)+abb205(46)
      abb205(21)=abb205(21)*spak4k5
      abb205(46)=spbk6k1*abb205(21)
      abb205(40)=abb205(40)+abb205(46)
      abb205(46)=abb205(40)*abb205(24)
      abb205(21)=spbk7k6*abb205(21)
      abb205(47)=abb205(39)*spbk7k3
      abb205(48)=abb205(42)*spbk7k6
      abb205(47)=abb205(47)-abb205(48)
      abb205(47)=abb205(47)*abb205(43)
      abb205(21)=abb205(21)+abb205(47)
      abb205(47)=abb205(46)-abb205(21)
      abb205(47)=abb205(3)*abb205(47)
      abb205(48)=abb205(40)*abb205(33)
      abb205(49)=abb205(21)*NC
      abb205(47)=abb205(47)+abb205(49)-abb205(48)
      abb205(47)=abb205(47)*abb205(38)
      abb205(50)=abb205(9)*spbk6k3
      abb205(51)=abb205(50)*abb205(33)
      abb205(52)=abb205(51)*spak2k5
      abb205(53)=abb205(41)*spbk6k1
      abb205(54)=abb205(30)*spbk3k1
      abb205(53)=abb205(53)-abb205(54)
      abb205(54)=abb205(52)*abb205(53)
      abb205(55)=abb205(41)*spbk7k6
      abb205(56)=abb205(30)*spbk7k3
      abb205(55)=abb205(55)-abb205(56)
      abb205(56)=abb205(50)*spak2k5
      abb205(57)=abb205(55)*abb205(56)
      abb205(58)=abb205(53)*abb205(43)
      abb205(59)=abb205(58)*abb205(27)
      abb205(60)=-abb205(57)+abb205(59)
      abb205(60)=abb205(3)*abb205(60)
      abb205(43)=abb205(55)*abb205(43)
      abb205(61)=abb205(43)*abb205(31)
      abb205(60)=abb205(60)+abb205(61)-abb205(54)
      abb205(47)=2.0_ki/3.0_ki*abb205(60)+abb205(47)
      abb205(16)=2.0_ki*abb205(47)+abb205(16)
      abb205(16)=abb205(1)*abb205(16)
      abb205(47)=abb205(11)*spbk6k4
      abb205(29)=abb205(47)*abb205(29)
      abb205(60)=spbk6k5*spak2k5*abb205(11)
      abb205(62)=abb205(60)*spbk3k1
      abb205(29)=abb205(62)+abb205(29)
      abb205(62)=spak4k5*gel
      abb205(63)=abb205(29)*abb205(62)
      abb205(64)=abb205(12)*gnel
      abb205(65)=abb205(64)*spak3k5
      abb205(66)=abb205(65)*spbk3k1
      abb205(64)=abb205(64)*spak5k6
      abb205(67)=abb205(64)*spbk6k1
      abb205(66)=abb205(66)-abb205(67)
      abb205(67)=spbk6k3*spak2k4
      abb205(66)=abb205(66)*abb205(67)
      abb205(63)=abb205(63)-abb205(66)
      abb205(66)=abb205(63)*abb205(24)
      abb205(19)=abb205(47)*abb205(19)
      abb205(47)=abb205(60)*spbk7k3
      abb205(19)=abb205(19)+abb205(47)
      abb205(47)=abb205(19)*abb205(62)
      abb205(60)=abb205(65)*spbk7k3
      abb205(62)=abb205(64)*spbk7k6
      abb205(60)=abb205(60)-abb205(62)
      abb205(60)=abb205(60)*abb205(67)
      abb205(47)=abb205(47)-abb205(60)
      abb205(60)=abb205(66)-abb205(47)
      abb205(60)=abb205(3)*abb205(60)
      abb205(62)=abb205(63)*abb205(33)
      abb205(67)=abb205(47)*NC
      abb205(60)=abb205(60)+abb205(67)-abb205(62)
      abb205(60)=abb205(60)*abb205(38)
      abb205(68)=abb205(9)*spak4k5
      abb205(69)=abb205(68)*abb205(33)
      abb205(70)=abb205(69)*abb205(29)
      abb205(71)=abb205(27)*spak4k5
      abb205(72)=abb205(71)*abb205(29)
      abb205(73)=abb205(19)*abb205(68)
      abb205(74)=abb205(73)-abb205(72)
      abb205(74)=abb205(3)*abb205(74)
      abb205(75)=abb205(31)*spak4k5
      abb205(76)=abb205(75)*abb205(19)
      abb205(74)=abb205(74)-abb205(76)+abb205(70)
      abb205(60)=2.0_ki/3.0_ki*abb205(74)+abb205(60)
      abb205(74)=2.0_ki*abb205(10)
      abb205(60)=abb205(60)*abb205(74)
      abb205(16)=abb205(60)+abb205(16)
      abb205(60)=i_*TR*abb205(4)*c1
      abb205(16)=4.0_ki*abb205(6)*spbk7k1*abb205(16)*gW**2*abb205(60)
      abb205(77)=-abb205(18)+2.0_ki*abb205(28)
      abb205(77)=abb205(3)*abb205(77)
      abb205(77)=abb205(77)+abb205(32)-2.0_ki*abb205(35)
      abb205(78)=-2.0_ki*abb205(25)+abb205(13)
      abb205(78)=abb205(3)*abb205(78)
      abb205(78)=abb205(78)-abb205(26)+2.0_ki*abb205(17)
      abb205(78)=abb205(78)*abb205(38)
      abb205(77)=2.0_ki/3.0_ki*abb205(77)+abb205(78)
      abb205(77)=abb205(10)*abb205(77)
      abb205(78)=2.0_ki*abb205(46)-abb205(21)
      abb205(78)=abb205(3)*abb205(78)
      abb205(78)=abb205(78)+abb205(49)-2.0_ki*abb205(48)
      abb205(78)=abb205(78)*abb205(38)
      abb205(79)=-abb205(57)+2.0_ki*abb205(59)
      abb205(79)=abb205(3)*abb205(79)
      abb205(79)=abb205(79)+abb205(61)-2.0_ki*abb205(54)
      abb205(78)=2.0_ki/3.0_ki*abb205(79)+abb205(78)
      abb205(77)=2.0_ki*abb205(78)+abb205(77)
      abb205(77)=abb205(1)*abb205(77)
      abb205(78)=2.0_ki*abb205(66)-abb205(47)
      abb205(78)=abb205(3)*abb205(78)
      abb205(78)=abb205(78)+abb205(67)-2.0_ki*abb205(62)
      abb205(78)=abb205(78)*abb205(38)
      abb205(79)=abb205(73)-2.0_ki*abb205(72)
      abb205(79)=abb205(3)*abb205(79)
      abb205(79)=abb205(79)-abb205(76)+2.0_ki*abb205(70)
      abb205(78)=2.0_ki/3.0_ki*abb205(79)+abb205(78)
      abb205(78)=abb205(78)*abb205(74)
      abb205(77)=abb205(78)+abb205(77)
      abb205(78)=abb205(6)*gW
      abb205(60)=abb205(60)*abb205(78)**2
      abb205(78)=8.0_ki*abb205(60)
      abb205(79)=abb205(78)*spbk7k1
      abb205(77)=abb205(77)*abb205(79)
      abb205(18)=2.0_ki*abb205(18)-abb205(28)
      abb205(18)=abb205(3)*abb205(18)
      abb205(18)=abb205(18)-2.0_ki*abb205(32)+abb205(35)
      abb205(25)=-2.0_ki*abb205(13)+abb205(25)
      abb205(25)=abb205(3)*abb205(25)
      abb205(17)=abb205(25)+2.0_ki*abb205(26)-abb205(17)
      abb205(17)=abb205(17)*abb205(38)
      abb205(17)=2.0_ki/3.0_ki*abb205(18)+abb205(17)
      abb205(17)=abb205(10)*abb205(17)
      abb205(18)=2.0_ki*abb205(21)-abb205(46)
      abb205(18)=abb205(3)*abb205(18)
      abb205(18)=abb205(18)-2.0_ki*abb205(49)+abb205(48)
      abb205(18)=abb205(18)*abb205(38)
      abb205(25)=2.0_ki*abb205(57)-abb205(59)
      abb205(25)=abb205(3)*abb205(25)
      abb205(25)=abb205(25)-2.0_ki*abb205(61)+abb205(54)
      abb205(18)=2.0_ki/3.0_ki*abb205(25)+abb205(18)
      abb205(17)=2.0_ki*abb205(18)+abb205(17)
      abb205(17)=abb205(1)*abb205(17)
      abb205(18)=2.0_ki*abb205(47)-abb205(66)
      abb205(18)=abb205(3)*abb205(18)
      abb205(18)=abb205(18)-2.0_ki*abb205(67)+abb205(62)
      abb205(18)=abb205(18)*abb205(38)
      abb205(25)=-2.0_ki*abb205(73)+abb205(72)
      abb205(25)=abb205(3)*abb205(25)
      abb205(25)=abb205(25)+2.0_ki*abb205(76)-abb205(70)
      abb205(18)=2.0_ki/3.0_ki*abb205(25)+abb205(18)
      abb205(18)=abb205(18)*abb205(74)
      abb205(17)=abb205(18)+abb205(17)
      abb205(17)=abb205(17)*abb205(79)
      abb205(18)=abb205(27)*abb205(3)
      abb205(25)=-abb205(34)+abb205(18)
      abb205(14)=abb205(14)*abb205(25)
      abb205(25)=abb205(24)*abb205(3)
      abb205(25)=abb205(25)-abb205(33)
      abb205(25)=abb205(25)*abb205(38)
      abb205(13)=-abb205(13)*abb205(25)
      abb205(13)=2.0_ki/3.0_ki*abb205(14)+abb205(13)
      abb205(13)=abb205(10)*abb205(13)
      abb205(14)=-abb205(55)*abb205(52)
      abb205(18)=abb205(43)*abb205(18)
      abb205(14)=abb205(14)+abb205(18)
      abb205(18)=abb205(21)*abb205(25)
      abb205(14)=2.0_ki/3.0_ki*abb205(14)+abb205(18)
      abb205(13)=2.0_ki*abb205(14)+abb205(13)
      abb205(13)=abb205(1)*abb205(13)
      abb205(14)=-abb205(3)*abb205(71)
      abb205(14)=abb205(69)+abb205(14)
      abb205(14)=abb205(19)*abb205(14)
      abb205(18)=abb205(47)*abb205(25)
      abb205(14)=2.0_ki/3.0_ki*abb205(14)+abb205(18)
      abb205(14)=abb205(14)*abb205(74)
      abb205(13)=abb205(14)+abb205(13)
      abb205(14)=abb205(60)*spbk7k1
      abb205(14)=4.0_ki*abb205(14)
      abb205(13)=abb205(13)*abb205(14)
      abb205(18)=spbk6k3*spak1k6
      abb205(19)=spak1k5*spbk5k3
      abb205(18)=abb205(18)-abb205(19)
      abb205(18)=abb205(18)*spak4k5
      abb205(21)=-spak1k5*abb205(15)
      abb205(25)=spbk6k3*spak1k5
      abb205(26)=abb205(25)*spak4k6
      abb205(28)=spak2k4*spbk3k2
      abb205(32)=abb205(28)*spak1k5
      abb205(18)=abb205(18)-abb205(26)-abb205(32)+abb205(21)
      abb205(26)=abb205(9)*abb205(18)
      abb205(32)=spbk6k3*spak6k7
      abb205(35)=spak5k7*spbk5k3
      abb205(32)=abb205(32)-abb205(35)
      abb205(32)=abb205(32)*spak4k5
      abb205(15)=-spak5k7*abb205(15)
      abb205(43)=spbk6k3*spak5k7
      abb205(46)=abb205(43)*spak4k6
      abb205(28)=abb205(28)*spak5k7
      abb205(28)=abb205(32)-abb205(46)-abb205(28)+abb205(15)
      abb205(32)=-abb205(28)*abb205(27)
      abb205(26)=abb205(26)+abb205(32)
      abb205(26)=abb205(3)*abb205(26)
      abb205(18)=-abb205(18)*abb205(31)
      abb205(28)=abb205(28)*abb205(34)
      abb205(18)=abb205(26)+abb205(18)+abb205(28)
      abb205(26)=spbk6k3*gWWZ
      abb205(28)=abb205(26)*spak1k6
      abb205(32)=abb205(19)*gWWZ
      abb205(28)=abb205(28)-abb205(32)
      abb205(28)=abb205(28)*spak4k5
      abb205(32)=abb205(36)*spbk3k2
      abb205(36)=abb205(26)*spak4k6
      abb205(32)=abb205(32)+abb205(36)
      abb205(36)=abb205(32)*spak1k5
      abb205(21)=abb205(21)*gWWZ
      abb205(21)=abb205(28)-abb205(36)+abb205(21)
      abb205(28)=abb205(26)*spak6k7
      abb205(36)=abb205(35)*gWWZ
      abb205(28)=abb205(28)-abb205(36)
      abb205(28)=abb205(28)*spak4k5
      abb205(32)=abb205(32)*spak5k7
      abb205(15)=abb205(15)*gWWZ
      abb205(15)=abb205(28)-abb205(32)+abb205(15)
      abb205(28)=abb205(15)*abb205(24)
      abb205(28)=abb205(28)-abb205(21)
      abb205(28)=abb205(3)*abb205(28)
      abb205(21)=NC*abb205(21)
      abb205(15)=-abb205(15)*abb205(33)
      abb205(15)=abb205(28)+abb205(21)+abb205(15)
      abb205(15)=abb205(15)*abb205(38)
      abb205(15)=2.0_ki/3.0_ki*abb205(18)+abb205(15)
      abb205(15)=abb205(10)*abb205(15)
      abb205(18)=abb205(19)*abb205(44)
      abb205(19)=abb205(45)*spak1k4
      abb205(18)=abb205(19)+abb205(18)
      abb205(18)=abb205(18)*spak4k5
      abb205(19)=abb205(25)*abb205(42)
      abb205(18)=abb205(18)-abb205(19)
      abb205(19)=abb205(35)*abb205(44)
      abb205(21)=abb205(45)*spak4k7
      abb205(19)=abb205(21)+abb205(19)
      abb205(19)=abb205(19)*spak4k5
      abb205(21)=abb205(43)*abb205(42)
      abb205(19)=abb205(19)-abb205(21)
      abb205(21)=abb205(19)*abb205(24)
      abb205(21)=abb205(21)-abb205(18)
      abb205(21)=abb205(3)*abb205(21)
      abb205(18)=NC*abb205(18)
      abb205(19)=-abb205(19)*abb205(33)
      abb205(18)=abb205(21)+abb205(18)+abb205(19)
      abb205(18)=abb205(18)*abb205(38)
      abb205(19)=abb205(43)*abb205(27)
      abb205(21)=abb205(50)*spak1k5
      abb205(19)=abb205(19)-abb205(21)
      abb205(19)=abb205(19)*abb205(3)
      abb205(28)=abb205(25)*abb205(31)
      abb205(32)=abb205(51)*spak5k7
      abb205(19)=abb205(19)+abb205(28)-abb205(32)
      abb205(28)=abb205(41)*abb205(19)
      abb205(18)=2.0_ki/3.0_ki*abb205(28)+abb205(18)
      abb205(15)=2.0_ki*abb205(18)+abb205(15)
      abb205(15)=abb205(1)*abb205(15)
      abb205(18)=spbk6k3*spak4k7
      abb205(28)=-abb205(33)*abb205(18)
      abb205(35)=abb205(24)*abb205(18)
      abb205(36)=spbk6k3*spak1k4
      abb205(35)=-abb205(36)+abb205(35)
      abb205(35)=abb205(3)*abb205(35)
      abb205(41)=NC*abb205(36)
      abb205(28)=abb205(35)+abb205(41)+abb205(28)
      abb205(28)=abb205(38)*abb205(74)*abb205(64)*abb205(28)
      abb205(15)=abb205(28)+abb205(15)
      abb205(28)=abb205(78)*spbk7k1**2
      abb205(15)=abb205(15)*abb205(28)
      abb205(35)=-abb205(25)*abb205(75)
      abb205(32)=spak4k5*abb205(32)
      abb205(41)=-abb205(43)*abb205(71)
      abb205(21)=spak4k5*abb205(21)
      abb205(21)=abb205(21)+abb205(41)
      abb205(21)=abb205(3)*abb205(21)
      abb205(21)=abb205(21)+abb205(35)+abb205(32)
      abb205(32)=NC*spak1k5
      abb205(35)=-spak5k7*abb205(33)
      abb205(32)=abb205(32)+abb205(35)
      abb205(35)=abb205(26)*spak4k5
      abb205(32)=abb205(35)*abb205(32)
      abb205(41)=abb205(35)*abb205(3)
      abb205(42)=spak5k7*abb205(24)
      abb205(42)=-spak1k5+abb205(42)
      abb205(42)=abb205(42)*abb205(41)
      abb205(32)=abb205(42)+abb205(32)
      abb205(32)=abb205(32)*abb205(38)
      abb205(21)=2.0_ki/3.0_ki*abb205(21)+abb205(32)
      abb205(32)=abb205(10)*abb205(28)*abb205(1)
      abb205(21)=abb205(21)*abb205(32)
      abb205(42)=abb205(75)*abb205(36)
      abb205(44)=-spak4k5*spak4k7*abb205(51)
      abb205(45)=abb205(71)*abb205(18)
      abb205(46)=-spak4k5*spak1k4*abb205(50)
      abb205(45)=abb205(46)+abb205(45)
      abb205(45)=abb205(3)*abb205(45)
      abb205(42)=abb205(45)+abb205(42)+abb205(44)
      abb205(44)=-NC*spak1k4
      abb205(45)=spak4k7*abb205(33)
      abb205(44)=abb205(44)+abb205(45)
      abb205(35)=abb205(35)*abb205(44)
      abb205(44)=-spak4k7*abb205(24)
      abb205(44)=spak1k4+abb205(44)
      abb205(41)=abb205(44)*abb205(41)
      abb205(35)=abb205(41)+abb205(35)
      abb205(35)=abb205(35)*abb205(38)
      abb205(35)=2.0_ki/3.0_ki*abb205(42)+abb205(35)
      abb205(32)=abb205(35)*abb205(32)
      abb205(35)=spbk6k3*spak1k3
      abb205(41)=spbk6k4*spak1k4
      abb205(35)=abb205(35)-abb205(41)
      abb205(35)=abb205(35)*spak4k5
      abb205(42)=-spak1k4*abb205(23)
      abb205(44)=abb205(36)*spak3k5
      abb205(45)=spak2k5*spbk6k2
      abb205(46)=abb205(45)*spak1k4
      abb205(35)=abb205(35)-abb205(44)-abb205(46)+abb205(42)
      abb205(44)=-abb205(9)*abb205(35)
      abb205(46)=spbk6k3*spak3k7
      abb205(47)=spbk6k4*spak4k7
      abb205(46)=abb205(46)-abb205(47)
      abb205(46)=abb205(46)*spak4k5
      abb205(23)=-spak4k7*abb205(23)
      abb205(48)=abb205(18)*spak3k5
      abb205(45)=abb205(45)*spak4k7
      abb205(45)=abb205(46)-abb205(48)-abb205(45)+abb205(23)
      abb205(27)=abb205(45)*abb205(27)
      abb205(27)=abb205(44)+abb205(27)
      abb205(27)=abb205(3)*abb205(27)
      abb205(35)=abb205(35)*abb205(31)
      abb205(34)=-abb205(45)*abb205(34)
      abb205(27)=abb205(27)+abb205(35)+abb205(34)
      abb205(34)=abb205(26)*spak1k3
      abb205(35)=abb205(41)*gWWZ
      abb205(34)=abb205(34)-abb205(35)
      abb205(34)=abb205(34)*spak4k5
      abb205(35)=abb205(37)*spbk6k2
      abb205(37)=abb205(26)*spak3k5
      abb205(35)=abb205(35)+abb205(37)
      abb205(37)=abb205(35)*spak1k4
      abb205(42)=abb205(42)*gWWZ
      abb205(34)=abb205(34)-abb205(37)+abb205(42)
      abb205(26)=abb205(26)*spak3k7
      abb205(37)=abb205(47)*gWWZ
      abb205(26)=abb205(26)-abb205(37)
      abb205(26)=abb205(26)*spak4k5
      abb205(35)=abb205(35)*spak4k7
      abb205(23)=abb205(23)*gWWZ
      abb205(23)=abb205(26)-abb205(35)+abb205(23)
      abb205(26)=-abb205(23)*abb205(24)
      abb205(26)=abb205(26)+abb205(34)
      abb205(26)=abb205(3)*abb205(26)
      abb205(34)=-NC*abb205(34)
      abb205(23)=abb205(23)*abb205(33)
      abb205(23)=abb205(26)+abb205(34)+abb205(23)
      abb205(23)=abb205(23)*abb205(38)
      abb205(23)=2.0_ki/3.0_ki*abb205(27)+abb205(23)
      abb205(23)=abb205(10)*abb205(23)
      abb205(19)=-abb205(30)*abb205(19)
      abb205(26)=-abb205(33)*abb205(43)
      abb205(27)=abb205(24)*abb205(43)
      abb205(27)=-abb205(25)+abb205(27)
      abb205(27)=abb205(3)*abb205(27)
      abb205(25)=NC*abb205(25)
      abb205(25)=abb205(27)+abb205(25)+abb205(26)
      abb205(25)=abb205(38)*abb205(39)*abb205(25)
      abb205(19)=2.0_ki/3.0_ki*abb205(19)+abb205(25)
      abb205(19)=2.0_ki*abb205(19)+abb205(23)
      abb205(19)=abb205(1)*abb205(19)
      abb205(23)=gel*spbk6k5
      abb205(25)=abb205(23)*spak1k5
      abb205(26)=abb205(41)*gel
      abb205(25)=abb205(25)+abb205(26)
      abb205(26)=spak4k5*abb205(11)
      abb205(25)=abb205(25)*abb205(26)
      abb205(27)=abb205(36)*abb205(65)
      abb205(25)=abb205(25)-abb205(27)
      abb205(23)=abb205(23)*spak5k7
      abb205(27)=abb205(47)*gel
      abb205(23)=abb205(23)+abb205(27)
      abb205(23)=abb205(23)*abb205(26)
      abb205(18)=abb205(18)*abb205(65)
      abb205(18)=abb205(23)-abb205(18)
      abb205(23)=abb205(18)*abb205(24)
      abb205(23)=abb205(23)-abb205(25)
      abb205(23)=abb205(3)*abb205(23)
      abb205(24)=NC*abb205(25)
      abb205(18)=-abb205(18)*abb205(33)
      abb205(18)=abb205(23)+abb205(24)+abb205(18)
      abb205(18)=abb205(18)*abb205(38)
      abb205(23)=spak5k7*spbk6k5
      abb205(23)=abb205(23)+abb205(47)
      abb205(24)=abb205(23)*abb205(69)
      abb205(25)=spak1k5*spbk6k5
      abb205(25)=abb205(25)+abb205(41)
      abb205(26)=abb205(25)*abb205(68)
      abb205(23)=-abb205(23)*abb205(71)
      abb205(23)=abb205(26)+abb205(23)
      abb205(23)=abb205(3)*abb205(23)
      abb205(25)=-abb205(25)*abb205(75)
      abb205(23)=abb205(23)+abb205(25)+abb205(24)
      abb205(23)=abb205(11)*abb205(23)
      abb205(18)=2.0_ki/3.0_ki*abb205(23)+abb205(18)
      abb205(18)=abb205(18)*abb205(74)
      abb205(18)=abb205(18)+abb205(19)
      abb205(18)=abb205(18)*abb205(28)
      abb205(19)=abb205(3)*abb205(9)
      abb205(19)=-abb205(31)+abb205(19)
      abb205(19)=abb205(22)*abb205(19)
      abb205(22)=abb205(3)-NC
      abb205(22)=abb205(22)*abb205(38)
      abb205(20)=-abb205(20)*abb205(22)
      abb205(19)=2.0_ki/3.0_ki*abb205(19)+abb205(20)
      abb205(19)=abb205(10)*abb205(19)
      abb205(20)=-abb205(31)*abb205(58)
      abb205(23)=abb205(3)*abb205(53)*abb205(56)
      abb205(20)=abb205(20)+abb205(23)
      abb205(23)=abb205(40)*abb205(22)
      abb205(20)=2.0_ki/3.0_ki*abb205(20)+abb205(23)
      abb205(19)=2.0_ki*abb205(20)+abb205(19)
      abb205(19)=abb205(1)*abb205(19)
      abb205(20)=-abb205(3)*abb205(68)
      abb205(20)=abb205(75)+abb205(20)
      abb205(20)=abb205(29)*abb205(20)
      abb205(22)=abb205(63)*abb205(22)
      abb205(20)=2.0_ki/3.0_ki*abb205(20)+abb205(22)
      abb205(20)=abb205(20)*abb205(74)
      abb205(19)=abb205(20)+abb205(19)
      abb205(14)=abb205(19)*abb205(14)
      R2d205=0.0_ki
      rat2 = rat2 + R2d205
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='205' value='", &
          & R2d205, "'/>"
      end if
   end subroutine
end module p8_cbarc_epnemumnmubarg_abbrevd205h2
