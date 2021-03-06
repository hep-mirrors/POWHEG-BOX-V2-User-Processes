module     p12_sbars_epnemumnmubarg_abbrevd489h6
   use p12_sbars_epnemumnmubarg_config, only: ki
   use p12_sbars_epnemumnmubarg_globalsh6
   implicit none
   private
   complex(ki), dimension(88), public :: abb489
   complex(ki), public :: R2d489
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p12_sbars_epnemumnmubarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_color, only: TR
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      implicit none
      abb489(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb489(2)=1.0_ki/(-mZ**2+es712+i_*mZ*wZ)
      abb489(3)=NC**(-1)
      abb489(4)=sqrt2**(-1)
      abb489(5)=es345**(-1)
      abb489(6)=es71**(-1)
      abb489(7)=spbk7k2**(-1)
      abb489(8)=1.0_ki/(es34-es56+es712-es345)
      abb489(9)=es712**(-1)
      abb489(10)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb489(11)=es456**(-1)
      abb489(12)=1.0_ki/(-es34+es56+es712-es456)
      abb489(13)=spak2k4*spbk3k1
      abb489(14)=abb489(13)*spbk6k4
      abb489(15)=spak1k7*gWWZ
      abb489(16)=abb489(14)*abb489(15)
      abb489(17)=spak2k5*spak1k7
      abb489(18)=abb489(17)*spbk5k3
      abb489(19)=gWWZ*spbk6k1
      abb489(20)=abb489(18)*abb489(19)
      abb489(16)=abb489(16)-abb489(20)
      abb489(20)=abb489(3)*spbk2k1
      abb489(21)=abb489(16)*abb489(20)
      abb489(22)=spbk3k1*gWWZ
      abb489(23)=abb489(22)*spak2k3
      abb489(24)=abb489(19)*spak2k6
      abb489(25)=spak2k4*gWWZ
      abb489(26)=abb489(25)*spbk4k1
      abb489(23)=abb489(26)+abb489(23)-abb489(24)
      abb489(24)=abb489(23)*spak1k7
      abb489(26)=abb489(17)*spbk5k1
      abb489(27)=abb489(26)*gWWZ
      abb489(24)=abb489(24)-abb489(27)
      abb489(27)=spbk6k3*abb489(3)
      abb489(28)=abb489(27)*spbk2k1
      abb489(29)=abb489(24)*abb489(28)
      abb489(21)=abb489(21)-abb489(29)
      abb489(21)=abb489(21)*spak4k5
      abb489(29)=abb489(22)*spbk6k2
      abb489(30)=abb489(19)*spbk3k2
      abb489(29)=abb489(29)-abb489(30)
      abb489(29)=abb489(29)*spak2k4
      abb489(30)=spak4k7*spbk7k3
      abb489(31)=abb489(30)*abb489(19)
      abb489(32)=spbk6k1*spak1k4
      abb489(33)=abb489(32)*abb489(22)
      abb489(29)=abb489(29)+abb489(31)-abb489(33)
      abb489(31)=abb489(29)*abb489(17)
      abb489(33)=spak5k7*spbk7k6
      abb489(34)=spbk6k1*spak1k5
      abb489(33)=abb489(33)-abb489(34)
      abb489(34)=abb489(33)*abb489(13)
      abb489(35)=abb489(34)*abb489(15)
      abb489(31)=abb489(31)-abb489(35)
      abb489(35)=abb489(31)*abb489(20)
      abb489(36)=abb489(13)*spak3k5
      abb489(15)=abb489(36)*abb489(15)
      abb489(37)=abb489(19)*spak4k6
      abb489(38)=abb489(37)*abb489(17)
      abb489(15)=abb489(15)-abb489(38)
      abb489(38)=abb489(15)*abb489(28)
      abb489(21)=abb489(21)+abb489(38)+abb489(35)
      abb489(35)=abb489(2)*gSr
      abb489(21)=abb489(21)*abb489(35)
      abb489(38)=spbk6k1*spak2k6
      abb489(39)=spbk3k1*spak2k3
      abb489(40)=spak2k4*spbk4k1
      abb489(38)=-abb489(40)+abb489(38)-abb489(39)
      abb489(39)=abb489(38)*spak1k7
      abb489(26)=abb489(39)+abb489(26)
      abb489(39)=abb489(26)*abb489(28)
      abb489(40)=abb489(18)*spbk6k1
      abb489(41)=abb489(14)*spak1k7
      abb489(40)=abb489(40)-abb489(41)
      abb489(42)=abb489(40)*abb489(20)
      abb489(39)=abb489(42)-abb489(39)
      abb489(39)=abb489(39)*spak4k5
      abb489(42)=spbk6k1*spbk3k2
      abb489(43)=spbk3k1*spbk6k2
      abb489(42)=abb489(42)-abb489(43)
      abb489(42)=abb489(42)*spak2k4
      abb489(43)=abb489(30)*spbk6k1
      abb489(32)=abb489(32)*spbk3k1
      abb489(32)=abb489(42)-abb489(43)+abb489(32)
      abb489(42)=abb489(32)*abb489(17)
      abb489(13)=abb489(13)*spak1k7
      abb489(43)=abb489(33)*abb489(13)
      abb489(42)=abb489(42)+abb489(43)
      abb489(43)=abb489(42)*abb489(20)
      abb489(44)=spbk6k1*spak4k6
      abb489(45)=abb489(44)*abb489(17)
      abb489(13)=abb489(13)*spak3k5
      abb489(13)=abb489(45)-abb489(13)
      abb489(45)=abb489(13)*abb489(28)
      abb489(39)=abb489(39)+abb489(45)+abb489(43)
      abb489(43)=1.0_ki/3.0_ki*abb489(9)
      abb489(39)=abb489(39)*abb489(43)
      abb489(21)=abb489(21)-abb489(39)
      abb489(39)=abb489(16)*spbk2k1
      abb489(45)=spbk6k3*spbk2k1
      abb489(46)=abb489(24)*abb489(45)
      abb489(39)=abb489(39)-abb489(46)
      abb489(39)=abb489(39)*spak4k5
      abb489(46)=abb489(31)*spbk2k1
      abb489(47)=abb489(15)*abb489(45)
      abb489(39)=abb489(39)+abb489(47)+abb489(46)
      abb489(39)=abb489(39)*abb489(35)
      abb489(46)=abb489(26)*abb489(45)
      abb489(47)=abb489(40)*spbk2k1
      abb489(46)=abb489(47)-abb489(46)
      abb489(46)=abb489(46)*spak4k5
      abb489(47)=abb489(42)*spbk2k1
      abb489(48)=abb489(13)*abb489(45)
      abb489(46)=abb489(46)+abb489(48)+abb489(47)
      abb489(46)=abb489(46)*abb489(43)
      abb489(39)=abb489(46)-abb489(39)
      abb489(46)=abb489(39)*NC
      abb489(47)=abb489(21)+abb489(46)
      abb489(48)=abb489(10)*abb489(6)
      abb489(47)=abb489(47)*abb489(48)
      abb489(49)=abb489(28)*abb489(17)
      abb489(50)=abb489(8)*gmul
      abb489(51)=abb489(50)*abb489(44)
      abb489(52)=abb489(50)*spak3k4
      abb489(53)=abb489(52)*spbk3k1
      abb489(51)=abb489(51)-abb489(53)
      abb489(53)=abb489(49)*abb489(51)
      abb489(54)=abb489(5)*gnmul
      abb489(55)=abb489(54)*spbk6k1
      abb489(18)=abb489(55)*abb489(18)
      abb489(55)=abb489(55)*spbk4k3
      abb489(56)=spak1k7*spak2k4
      abb489(57)=abb489(55)*abb489(56)
      abb489(18)=abb489(18)+abb489(57)
      abb489(57)=spak4k5*abb489(3)
      abb489(58)=abb489(57)*spbk2k1
      abb489(59)=abb489(58)*abb489(18)
      abb489(53)=abb489(53)-abb489(59)
      abb489(53)=abb489(53)*abb489(35)
      abb489(44)=abb489(44)*abb489(8)
      abb489(59)=abb489(8)*spak3k4
      abb489(60)=abb489(59)*spbk3k1
      abb489(44)=abb489(44)-abb489(60)
      abb489(44)=abb489(44)*abb489(43)
      abb489(49)=abb489(49)*abb489(44)
      abb489(49)=abb489(53)+abb489(49)
      abb489(53)=abb489(45)*abb489(17)
      abb489(60)=abb489(53)*abb489(51)
      abb489(61)=spak4k5*spbk2k1
      abb489(62)=abb489(18)*abb489(61)
      abb489(60)=abb489(60)-abb489(62)
      abb489(60)=abb489(60)*abb489(35)
      abb489(53)=abb489(53)*abb489(44)
      abb489(53)=abb489(60)+abb489(53)
      abb489(53)=abb489(53)*NC
      abb489(60)=abb489(49)-abb489(53)
      abb489(62)=2.0_ki*abb489(6)
      abb489(60)=abb489(60)*abb489(62)
      abb489(47)=abb489(47)-abb489(60)
      abb489(47)=abb489(47)*abb489(1)
      abb489(60)=abb489(11)*gel
      abb489(63)=abb489(41)*abb489(60)
      abb489(64)=abb489(11)*spbk6k5
      abb489(65)=spbk3k1*abb489(64)
      abb489(66)=abb489(65)*abb489(17)
      abb489(67)=abb489(66)*gel
      abb489(63)=abb489(63)+abb489(67)
      abb489(58)=abb489(58)*abb489(63)
      abb489(67)=abb489(12)*gnel
      abb489(68)=abb489(67)*spak3k5
      abb489(69)=abb489(68)*spbk3k1
      abb489(67)=abb489(67)*spak5k6
      abb489(70)=abb489(67)*spbk6k1
      abb489(69)=abb489(69)-abb489(70)
      abb489(56)=abb489(69)*abb489(56)
      abb489(28)=abb489(56)*abb489(28)
      abb489(28)=abb489(28)-abb489(58)
      abb489(28)=abb489(28)*abb489(35)
      abb489(41)=abb489(41)*abb489(11)
      abb489(41)=abb489(41)+abb489(66)
      abb489(58)=abb489(43)*spak4k5
      abb489(41)=abb489(41)*abb489(58)
      abb489(20)=abb489(41)*abb489(20)
      abb489(20)=abb489(28)-abb489(20)
      abb489(28)=abb489(63)*abb489(61)
      abb489(66)=abb489(56)*abb489(45)
      abb489(28)=abb489(66)-abb489(28)
      abb489(28)=abb489(28)*abb489(35)
      abb489(66)=abb489(41)*spbk2k1
      abb489(28)=abb489(28)-abb489(66)
      abb489(66)=abb489(28)*NC
      abb489(70)=abb489(20)-abb489(66)
      abb489(71)=2.0_ki*abb489(48)
      abb489(70)=abb489(70)*abb489(71)
      abb489(47)=abb489(47)-abb489(70)
      abb489(70)=gW**2*abb489(4)*c1*TR*i_
      abb489(72)=abb489(7)*abb489(70)
      abb489(73)=2.0_ki*abb489(72)
      abb489(74)=abb489(47)*abb489(73)
      abb489(75)=abb489(10)*NC
      abb489(39)=abb489(39)*abb489(75)
      abb489(39)=2.0_ki*abb489(53)+abb489(39)
      abb489(39)=abb489(1)*abb489(39)
      abb489(76)=2.0_ki*abb489(75)
      abb489(28)=abb489(28)*abb489(76)
      abb489(28)=abb489(28)+abb489(39)
      abb489(28)=abb489(28)*abb489(73)
      abb489(21)=-abb489(46)+abb489(21)
      abb489(21)=abb489(21)*abb489(48)
      abb489(39)=-abb489(53)-abb489(49)
      abb489(39)=abb489(39)*abb489(62)
      abb489(21)=abb489(39)+abb489(21)
      abb489(21)=abb489(1)*abb489(21)
      abb489(20)=-abb489(66)-abb489(20)
      abb489(20)=abb489(20)*abb489(71)
      abb489(20)=abb489(20)+abb489(21)
      abb489(21)=8.0_ki*abb489(72)
      abb489(20)=abb489(20)*abb489(21)
      abb489(39)=abb489(35)*gWWZ
      abb489(49)=abb489(39)*abb489(45)
      abb489(77)=abb489(45)*abb489(43)
      abb489(78)=abb489(77)+abb489(49)
      abb489(79)=abb489(72)*abb489(1)
      abb489(80)=abb489(79)*abb489(75)
      abb489(81)=4.0_ki*abb489(80)
      abb489(82)=spak4k5*spak2k7
      abb489(78)=abb489(81)*abb489(82)*abb489(78)
      abb489(46)=abb489(48)*abb489(46)
      abb489(53)=abb489(62)*abb489(53)
      abb489(46)=abb489(53)+abb489(46)
      abb489(46)=abb489(1)*abb489(46)
      abb489(53)=abb489(71)*abb489(66)
      abb489(46)=abb489(53)+abb489(46)
      abb489(46)=abb489(46)*abb489(21)
      abb489(53)=4.0_ki*abb489(72)
      abb489(47)=-abb489(47)*abb489(53)
      abb489(29)=abb489(29)*spak2k5
      abb489(66)=abb489(34)*gWWZ
      abb489(29)=abb489(66)-abb489(29)
      abb489(66)=spak2k5*gWWZ
      abb489(81)=abb489(66)*spbk5k1
      abb489(23)=abb489(81)-abb489(23)
      abb489(81)=abb489(23)*spbk6k3
      abb489(83)=spak2k5*spbk5k3
      abb489(19)=abb489(83)*abb489(19)
      abb489(84)=abb489(14)*gWWZ
      abb489(19)=abb489(84)-abb489(19)
      abb489(81)=abb489(81)+abb489(19)
      abb489(81)=abb489(81)*spak4k5
      abb489(84)=abb489(36)*gWWZ
      abb489(37)=abb489(37)*spak2k5
      abb489(37)=abb489(84)-abb489(37)
      abb489(84)=abb489(37)*spbk6k3
      abb489(81)=abb489(81)+abb489(84)-abb489(29)
      abb489(81)=abb489(81)*abb489(35)
      abb489(84)=spak2k5*spbk5k1
      abb489(38)=abb489(84)+abb489(38)
      abb489(84)=abb489(38)*spbk6k3
      abb489(85)=spak2k5*spbk6k1
      abb489(86)=abb489(85)*spbk5k3
      abb489(86)=abb489(86)-abb489(14)
      abb489(84)=abb489(84)-abb489(86)
      abb489(84)=abb489(84)*spak4k5
      abb489(32)=abb489(32)*spak2k5
      abb489(32)=abb489(32)+abb489(34)
      abb489(34)=abb489(85)*spak4k6
      abb489(34)=abb489(34)-abb489(36)
      abb489(36)=abb489(34)*spbk6k3
      abb489(36)=-abb489(32)+abb489(84)-abb489(36)
      abb489(36)=abb489(36)*abb489(43)
      abb489(36)=abb489(81)+abb489(36)
      abb489(36)=abb489(36)*NC
      abb489(29)=abb489(29)*abb489(3)
      abb489(23)=abb489(23)*abb489(27)
      abb489(19)=abb489(19)*abb489(3)
      abb489(19)=abb489(23)+abb489(19)
      abb489(19)=abb489(19)*spak4k5
      abb489(23)=abb489(37)*abb489(27)
      abb489(19)=abb489(19)+abb489(23)-abb489(29)
      abb489(19)=abb489(19)*abb489(35)
      abb489(23)=abb489(38)*abb489(27)
      abb489(29)=abb489(86)*abb489(3)
      abb489(23)=abb489(23)-abb489(29)
      abb489(23)=abb489(23)*spak4k5
      abb489(29)=abb489(32)*abb489(3)
      abb489(32)=abb489(34)*abb489(27)
      abb489(23)=-abb489(23)+abb489(32)+abb489(29)
      abb489(23)=abb489(23)*abb489(43)
      abb489(19)=abb489(36)+abb489(19)-abb489(23)
      abb489(23)=abb489(10)*abb489(19)
      abb489(29)=spbk6k3*spak2k5
      abb489(32)=abb489(29)*abb489(51)
      abb489(34)=abb489(54)*spbk5k3
      abb489(36)=abb489(34)*abb489(85)
      abb489(37)=abb489(55)*spak2k4
      abb489(36)=abb489(36)+abb489(37)
      abb489(37)=abb489(36)*spak4k5
      abb489(32)=abb489(32)-abb489(37)
      abb489(32)=abb489(32)*abb489(35)
      abb489(37)=abb489(29)*abb489(44)
      abb489(32)=abb489(32)+abb489(37)
      abb489(32)=abb489(32)*NC
      abb489(37)=abb489(27)*spak2k5
      abb489(38)=abb489(37)*abb489(51)
      abb489(36)=abb489(36)*abb489(57)
      abb489(36)=abb489(38)-abb489(36)
      abb489(36)=abb489(36)*abb489(35)
      abb489(38)=abb489(37)*abb489(44)
      abb489(32)=abb489(32)+abb489(36)+abb489(38)
      abb489(23)=-2.0_ki*abb489(32)+abb489(23)
      abb489(23)=abb489(1)*abb489(23)
      abb489(36)=abb489(69)*spak2k4
      abb489(38)=abb489(36)*spbk6k3
      abb489(55)=abb489(60)*abb489(14)
      abb489(65)=abb489(65)*spak2k5
      abb489(69)=gel*abb489(65)
      abb489(55)=abb489(55)+abb489(69)
      abb489(69)=abb489(55)*spak4k5
      abb489(38)=abb489(38)-abb489(69)
      abb489(38)=abb489(38)*abb489(35)
      abb489(14)=abb489(14)*abb489(11)
      abb489(14)=abb489(14)+abb489(65)
      abb489(65)=abb489(14)*abb489(58)
      abb489(38)=abb489(38)-abb489(65)
      abb489(38)=abb489(38)*NC
      abb489(36)=abb489(36)*abb489(27)
      abb489(55)=abb489(55)*abb489(57)
      abb489(36)=abb489(36)-abb489(55)
      abb489(36)=abb489(36)*abb489(35)
      abb489(55)=abb489(58)*abb489(3)
      abb489(14)=abb489(14)*abb489(55)
      abb489(14)=abb489(38)+abb489(36)-abb489(14)
      abb489(36)=abb489(10)*abb489(14)
      abb489(23)=-2.0_ki*abb489(36)+abb489(23)
      abb489(23)=abb489(23)*abb489(53)
      abb489(19)=abb489(19)*abb489(48)
      abb489(32)=abb489(32)*abb489(62)
      abb489(19)=abb489(19)-abb489(32)
      abb489(19)=abb489(19)*abb489(1)
      abb489(14)=abb489(14)*abb489(71)
      abb489(14)=abb489(19)-abb489(14)
      abb489(19)=16.0_ki*abb489(72)
      abb489(32)=-abb489(14)*abb489(19)
      abb489(36)=spbk7k1*spak2k7
      abb489(38)=abb489(36)*spbk6k3
      abb489(65)=abb489(38)*abb489(58)
      abb489(69)=abb489(36)*spak4k5
      abb489(72)=abb489(39)*abb489(69)
      abb489(81)=abb489(72)*spbk6k3
      abb489(65)=abb489(65)+abb489(81)
      abb489(65)=abb489(65)*NC
      abb489(81)=abb489(36)*abb489(27)
      abb489(84)=abb489(81)*abb489(58)
      abb489(72)=abb489(72)*abb489(27)
      abb489(65)=abb489(65)+abb489(84)+abb489(72)
      abb489(72)=abb489(79)*abb489(48)
      abb489(84)=16.0_ki*abb489(72)
      abb489(65)=abb489(65)*abb489(84)
      abb489(14)=abb489(14)*abb489(21)
      abb489(31)=abb489(3)*abb489(31)
      abb489(16)=abb489(3)*abb489(16)
      abb489(24)=-abb489(24)*abb489(27)
      abb489(16)=abb489(16)+abb489(24)
      abb489(16)=spak4k5*abb489(16)
      abb489(15)=abb489(15)*abb489(27)
      abb489(15)=abb489(16)+abb489(31)+abb489(15)
      abb489(15)=abb489(15)*abb489(35)
      abb489(16)=-abb489(3)*abb489(42)
      abb489(24)=abb489(26)*abb489(27)
      abb489(26)=-abb489(3)*abb489(40)
      abb489(24)=abb489(26)+abb489(24)
      abb489(24)=spak4k5*abb489(24)
      abb489(13)=-abb489(13)*abb489(27)
      abb489(13)=abb489(24)+abb489(16)+abb489(13)
      abb489(13)=abb489(13)*abb489(43)
      abb489(13)=abb489(13)+abb489(15)
      abb489(13)=abb489(13)*abb489(48)
      abb489(15)=abb489(27)*abb489(17)
      abb489(16)=-abb489(51)*abb489(15)
      abb489(17)=abb489(18)*abb489(57)
      abb489(16)=abb489(16)+abb489(17)
      abb489(16)=abb489(16)*abb489(35)
      abb489(15)=-abb489(44)*abb489(15)
      abb489(15)=abb489(15)+abb489(16)
      abb489(15)=abb489(15)*abb489(62)
      abb489(13)=abb489(15)+abb489(13)
      abb489(13)=abb489(1)*abb489(13)
      abb489(15)=abb489(63)*abb489(57)
      abb489(16)=-abb489(27)*abb489(56)
      abb489(15)=abb489(16)+abb489(15)
      abb489(15)=abb489(15)*abb489(35)
      abb489(16)=abb489(3)*abb489(41)
      abb489(15)=abb489(16)+abb489(15)
      abb489(15)=abb489(15)*abb489(71)
      abb489(13)=abb489(15)+abb489(13)
      abb489(13)=4.0_ki*abb489(13)*abb489(70)
      abb489(15)=spbk3k1*spak1k4
      abb489(15)=abb489(15)-abb489(30)
      abb489(16)=abb489(15)*spbk7k6
      abb489(17)=spbk7k6*spbk3k2
      abb489(18)=spbk7k3*spbk6k2
      abb489(17)=abb489(17)-abb489(18)
      abb489(18)=abb489(17)*spak2k4
      abb489(16)=abb489(16)+abb489(18)
      abb489(16)=abb489(16)*spak2k5
      abb489(18)=-spbk7k3*abb489(33)
      abb489(24)=abb489(18)*spak2k4
      abb489(16)=abb489(16)-abb489(24)
      abb489(24)=spbk7k6*spak2k6
      abb489(26)=spbk7k3*spak2k3
      abb489(24)=abb489(24)-abb489(26)
      abb489(26)=spak2k4*spbk7k4
      abb489(31)=spak2k5*spbk7k5
      abb489(26)=-abb489(24)+abb489(26)-abb489(31)
      abb489(31)=spbk6k3*abb489(26)
      abb489(40)=abb489(83)*spbk7k6
      abb489(41)=spak2k4*spbk7k3
      abb489(42)=spbk6k4*abb489(41)
      abb489(40)=abb489(40)-abb489(42)
      abb489(31)=abb489(31)+abb489(40)
      abb489(31)=spak4k5*abb489(31)
      abb489(44)=spak4k6*spbk7k6
      abb489(51)=abb489(44)*spak2k5
      abb489(41)=spak3k5*abb489(41)
      abb489(41)=abb489(51)-abb489(41)
      abb489(51)=spbk6k3*abb489(41)
      abb489(31)=abb489(31)+abb489(51)+abb489(16)
      abb489(31)=abb489(31)*abb489(43)
      abb489(30)=abb489(30)*gWWZ
      abb489(22)=abb489(22)*spak1k4
      abb489(22)=abb489(30)-abb489(22)
      abb489(30)=abb489(22)*spbk7k6
      abb489(17)=abb489(17)*abb489(25)
      abb489(17)=abb489(30)-abb489(17)
      abb489(17)=abb489(17)*spak2k5
      abb489(18)=abb489(18)*abb489(25)
      abb489(17)=abb489(17)+abb489(18)
      abb489(18)=abb489(24)*gWWZ
      abb489(24)=abb489(25)*spbk7k4
      abb489(30)=abb489(66)*spbk7k5
      abb489(18)=-abb489(18)+abb489(24)-abb489(30)
      abb489(24)=spbk6k3*abb489(18)
      abb489(30)=spbk5k3*abb489(66)*spbk7k6
      abb489(51)=abb489(25)*spbk7k3
      abb489(56)=abb489(51)*spbk6k4
      abb489(30)=abb489(30)-abb489(56)
      abb489(24)=abb489(24)+abb489(30)
      abb489(24)=spak4k5*abb489(24)
      abb489(56)=abb489(44)*abb489(66)
      abb489(51)=abb489(51)*spak3k5
      abb489(51)=abb489(56)-abb489(51)
      abb489(56)=spbk6k3*abb489(51)
      abb489(24)=abb489(24)+abb489(56)-abb489(17)
      abb489(24)=abb489(24)*abb489(35)
      abb489(24)=abb489(31)+abb489(24)
      abb489(24)=NC*abb489(24)
      abb489(16)=abb489(3)*abb489(16)
      abb489(26)=abb489(26)*abb489(27)
      abb489(31)=abb489(3)*abb489(40)
      abb489(26)=abb489(31)+abb489(26)
      abb489(26)=spak4k5*abb489(26)
      abb489(31)=abb489(41)*abb489(27)
      abb489(16)=abb489(26)+abb489(16)+abb489(31)
      abb489(16)=abb489(16)*abb489(43)
      abb489(17)=-abb489(3)*abb489(17)
      abb489(18)=abb489(18)*abb489(27)
      abb489(26)=abb489(3)*abb489(30)
      abb489(18)=abb489(26)+abb489(18)
      abb489(18)=spak4k5*abb489(18)
      abb489(26)=abb489(51)*abb489(27)
      abb489(17)=abb489(18)+abb489(17)+abb489(26)
      abb489(17)=abb489(17)*abb489(35)
      abb489(16)=abb489(24)+abb489(16)+abb489(17)
      abb489(16)=abb489(16)*abb489(48)
      abb489(17)=spbk7k3*spak3k4
      abb489(17)=abb489(17)-abb489(44)
      abb489(18)=abb489(17)*abb489(50)
      abb489(24)=-abb489(37)*abb489(18)
      abb489(26)=abb489(34)*spak2k5
      abb489(30)=abb489(54)*spbk4k3
      abb489(31)=abb489(30)*spak2k4
      abb489(26)=abb489(26)+abb489(31)
      abb489(26)=abb489(26)*spbk7k6
      abb489(31)=-abb489(26)*abb489(57)
      abb489(24)=abb489(24)+abb489(31)
      abb489(24)=abb489(24)*abb489(35)
      abb489(18)=-abb489(29)*abb489(18)
      abb489(26)=-spak4k5*abb489(26)
      abb489(18)=abb489(18)+abb489(26)
      abb489(18)=abb489(18)*abb489(35)
      abb489(26)=abb489(43)*abb489(8)
      abb489(17)=abb489(17)*abb489(26)
      abb489(29)=-abb489(29)*abb489(17)
      abb489(18)=abb489(29)+abb489(18)
      abb489(18)=NC*abb489(18)
      abb489(17)=-abb489(37)*abb489(17)
      abb489(17)=abb489(18)+abb489(17)+abb489(24)
      abb489(17)=abb489(17)*abb489(62)
      abb489(16)=abb489(17)+abb489(16)
      abb489(16)=abb489(1)*abb489(16)
      abb489(17)=abb489(42)*abb489(60)
      abb489(18)=spak2k5*spbk7k3
      abb489(24)=abb489(60)*spbk6k5
      abb489(29)=abb489(18)*abb489(24)
      abb489(17)=abb489(17)+abb489(29)
      abb489(29)=-abb489(17)*abb489(57)
      abb489(31)=abb489(68)*spbk7k3
      abb489(37)=abb489(67)*spbk7k6
      abb489(31)=abb489(31)-abb489(37)
      abb489(31)=abb489(31)*spak2k4
      abb489(37)=abb489(27)*abb489(31)
      abb489(29)=abb489(37)+abb489(29)
      abb489(29)=abb489(29)*abb489(35)
      abb489(17)=-spak4k5*abb489(17)
      abb489(31)=spbk6k3*abb489(31)
      abb489(17)=abb489(31)+abb489(17)
      abb489(17)=abb489(17)*abb489(35)
      abb489(18)=abb489(18)*abb489(64)
      abb489(31)=abb489(42)*abb489(11)
      abb489(18)=abb489(31)+abb489(18)
      abb489(31)=-abb489(18)*abb489(58)
      abb489(17)=abb489(31)+abb489(17)
      abb489(17)=NC*abb489(17)
      abb489(18)=-abb489(18)*abb489(55)
      abb489(17)=abb489(17)+abb489(18)+abb489(29)
      abb489(17)=abb489(17)*abb489(71)
      abb489(16)=abb489(17)+abb489(16)
      abb489(16)=abb489(16)*abb489(53)
      abb489(17)=abb489(25)*spbk3k2
      abb489(17)=abb489(17)-abb489(22)
      abb489(18)=spbk2k1*spak2k7
      abb489(22)=-abb489(17)*abb489(18)
      abb489(25)=gWWZ*spak4k6
      abb489(29)=abb489(45)*spak2k7
      abb489(31)=-abb489(29)*abb489(25)
      abb489(37)=gWWZ*spbk5k3
      abb489(40)=abb489(82)*spbk2k1
      abb489(41)=-abb489(40)*abb489(37)
      abb489(22)=abb489(41)+abb489(22)+abb489(31)
      abb489(22)=abb489(22)*abb489(35)
      abb489(31)=spak2k4*spbk3k2
      abb489(15)=abb489(31)+abb489(15)
      abb489(31)=-abb489(15)*abb489(18)
      abb489(41)=-spak4k6*abb489(29)
      abb489(42)=-spbk5k3*abb489(40)
      abb489(31)=abb489(42)+abb489(31)+abb489(41)
      abb489(31)=abb489(31)*abb489(43)
      abb489(22)=abb489(31)+abb489(22)
      abb489(22)=abb489(22)*abb489(75)
      abb489(31)=abb489(50)*spak4k6
      abb489(41)=-abb489(29)*abb489(31)
      abb489(42)=abb489(34)*abb489(40)
      abb489(41)=abb489(41)+abb489(42)
      abb489(41)=abb489(41)*abb489(35)
      abb489(42)=abb489(77)*abb489(8)
      abb489(44)=-spak4k6*spak2k7*abb489(42)
      abb489(41)=abb489(44)+abb489(41)
      abb489(44)=2.0_ki*NC
      abb489(41)=abb489(41)*abb489(44)
      abb489(22)=abb489(41)+abb489(22)
      abb489(22)=2.0_ki*abb489(22)*abb489(79)
      abb489(41)=abb489(17)*abb489(36)
      abb489(51)=-abb489(3)*abb489(41)
      abb489(54)=-abb489(81)*abb489(25)
      abb489(56)=abb489(69)*abb489(3)
      abb489(57)=-abb489(56)*abb489(37)
      abb489(51)=abb489(57)+abb489(51)+abb489(54)
      abb489(51)=abb489(51)*abb489(35)
      abb489(54)=-abb489(38)*abb489(25)
      abb489(57)=-abb489(69)*abb489(37)
      abb489(41)=abb489(57)+abb489(54)-abb489(41)
      abb489(41)=abb489(41)*abb489(35)
      abb489(54)=abb489(15)*abb489(36)
      abb489(57)=-spak4k6*abb489(38)
      abb489(60)=-spbk5k3*abb489(69)
      abb489(57)=abb489(60)+abb489(57)-abb489(54)
      abb489(57)=abb489(57)*abb489(43)
      abb489(41)=abb489(57)+abb489(41)
      abb489(41)=NC*abb489(41)
      abb489(54)=-abb489(3)*abb489(54)
      abb489(57)=-spak4k6*abb489(81)
      abb489(60)=-spbk5k3*abb489(56)
      abb489(54)=abb489(60)+abb489(54)+abb489(57)
      abb489(54)=abb489(54)*abb489(43)
      abb489(41)=abb489(41)+abb489(54)+abb489(51)
      abb489(41)=abb489(41)*abb489(48)
      abb489(51)=-abb489(81)*abb489(31)
      abb489(54)=abb489(34)*abb489(56)
      abb489(51)=abb489(51)+abb489(54)
      abb489(51)=abb489(51)*abb489(35)
      abb489(54)=-abb489(38)*abb489(31)
      abb489(57)=abb489(69)*abb489(34)
      abb489(54)=abb489(54)+abb489(57)
      abb489(54)=abb489(54)*abb489(35)
      abb489(26)=abb489(26)*spak4k6
      abb489(57)=-abb489(38)*abb489(26)
      abb489(54)=abb489(57)+abb489(54)
      abb489(54)=NC*abb489(54)
      abb489(57)=-abb489(81)*abb489(26)
      abb489(51)=abb489(54)+abb489(57)+abb489(51)
      abb489(51)=abb489(51)*abb489(62)
      abb489(41)=abb489(51)+abb489(41)
      abb489(41)=8.0_ki*abb489(41)*abb489(79)
      abb489(51)=abb489(24)*abb489(35)
      abb489(54)=abb489(43)*abb489(64)
      abb489(54)=abb489(54)+abb489(51)
      abb489(54)=abb489(75)*abb489(40)*abb489(54)
      abb489(57)=abb489(77)*abb489(59)
      abb489(60)=spak2k7*abb489(57)
      abb489(52)=abb489(52)*abb489(35)
      abb489(63)=abb489(29)*abb489(52)
      abb489(60)=abb489(60)+abb489(63)
      abb489(60)=abb489(1)*NC*abb489(60)
      abb489(54)=abb489(54)+abb489(60)
      abb489(54)=abb489(54)*abb489(53)
      abb489(60)=abb489(58)*abb489(36)
      abb489(63)=abb489(64)*abb489(60)
      abb489(70)=abb489(69)*abb489(51)
      abb489(63)=abb489(63)+abb489(70)
      abb489(63)=NC*abb489(63)
      abb489(55)=abb489(55)*abb489(36)
      abb489(70)=abb489(64)*abb489(55)
      abb489(51)=abb489(56)*abb489(51)
      abb489(51)=abb489(63)+abb489(70)+abb489(51)
      abb489(51)=abb489(51)*abb489(48)
      abb489(59)=abb489(59)*abb489(43)
      abb489(59)=abb489(59)+abb489(52)
      abb489(63)=abb489(81)*abb489(59)
      abb489(70)=abb489(59)*NC
      abb489(77)=abb489(38)*abb489(70)
      abb489(63)=abb489(77)+abb489(63)
      abb489(77)=abb489(1)*abb489(6)
      abb489(63)=abb489(63)*abb489(77)
      abb489(51)=abb489(51)+abb489(63)
      abb489(51)=abb489(51)*abb489(19)
      abb489(63)=abb489(67)*abb489(35)
      abb489(67)=abb489(75)*abb489(29)*abb489(63)
      abb489(79)=abb489(30)*abb489(35)
      abb489(82)=abb489(79)*NC
      abb489(83)=abb489(1)*abb489(40)*abb489(82)
      abb489(67)=abb489(67)+abb489(83)
      abb489(53)=abb489(67)*abb489(53)
      abb489(67)=NC*abb489(38)
      abb489(67)=abb489(81)+abb489(67)
      abb489(67)=abb489(48)*abb489(63)*abb489(67)
      abb489(79)=abb489(56)*abb489(79)
      abb489(82)=abb489(69)*abb489(82)
      abb489(79)=abb489(79)+abb489(82)
      abb489(77)=abb489(79)*abb489(77)
      abb489(67)=abb489(67)+abb489(77)
      abb489(19)=abb489(67)*abb489(19)
      abb489(67)=abb489(11)*spbk6k4
      abb489(77)=abb489(43)*abb489(67)*abb489(40)
      abb489(79)=-abb489(68)*abb489(29)
      abb489(82)=abb489(67)*gel
      abb489(83)=abb489(40)*abb489(82)
      abb489(79)=abb489(79)+abb489(83)
      abb489(79)=abb489(79)*abb489(35)
      abb489(77)=abb489(77)+abb489(79)
      abb489(77)=abb489(77)*abb489(76)
      abb489(79)=abb489(33)*gWWZ
      abb489(66)=abb489(66)*spbk6k2
      abb489(79)=abb489(79)-abb489(66)
      abb489(83)=-spbk2k1*spak2k7*abb489(79)
      abb489(84)=gWWZ*spak3k5
      abb489(85)=abb489(29)*abb489(84)
      abb489(86)=gWWZ*spbk6k4
      abb489(87)=abb489(40)*abb489(86)
      abb489(83)=abb489(87)+abb489(83)+abb489(85)
      abb489(83)=abb489(83)*abb489(35)
      abb489(85)=spak2k5*spbk6k2
      abb489(87)=abb489(33)-abb489(85)
      abb489(18)=-abb489(87)*abb489(18)
      abb489(29)=spak3k5*abb489(29)
      abb489(40)=spbk6k4*abb489(40)
      abb489(18)=abb489(40)+abb489(18)+abb489(29)
      abb489(18)=abb489(18)*abb489(43)
      abb489(18)=abb489(18)+abb489(83)
      abb489(18)=abb489(1)*abb489(18)*abb489(75)
      abb489(18)=abb489(77)+abb489(18)
      abb489(18)=abb489(18)*abb489(73)
      abb489(29)=abb489(66)*abb489(36)
      abb489(40)=-abb489(36)*abb489(33)
      abb489(77)=abb489(40)*gWWZ
      abb489(29)=abb489(29)+abb489(77)
      abb489(77)=abb489(3)*abb489(29)
      abb489(83)=abb489(81)*abb489(84)
      abb489(88)=abb489(56)*abb489(86)
      abb489(77)=abb489(88)+abb489(77)+abb489(83)
      abb489(77)=abb489(77)*abb489(35)
      abb489(83)=abb489(38)*abb489(84)
      abb489(88)=abb489(69)*abb489(86)
      abb489(29)=abb489(88)+abb489(83)+abb489(29)
      abb489(29)=abb489(29)*abb489(35)
      abb489(36)=abb489(85)*abb489(36)
      abb489(36)=abb489(36)+abb489(40)
      abb489(40)=spak3k5*abb489(38)
      abb489(83)=spbk6k4*abb489(69)
      abb489(40)=abb489(83)+abb489(40)+abb489(36)
      abb489(40)=abb489(40)*abb489(43)
      abb489(29)=abb489(40)+abb489(29)
      abb489(29)=NC*abb489(29)
      abb489(36)=abb489(3)*abb489(36)
      abb489(40)=spak3k5*abb489(81)
      abb489(83)=spbk6k4*abb489(56)
      abb489(36)=abb489(83)+abb489(36)+abb489(40)
      abb489(36)=abb489(36)*abb489(43)
      abb489(29)=abb489(29)+abb489(36)+abb489(77)
      abb489(29)=abb489(1)*abb489(29)*abb489(48)
      abb489(36)=-abb489(68)*abb489(81)
      abb489(40)=abb489(56)*abb489(82)
      abb489(36)=abb489(36)+abb489(40)
      abb489(36)=abb489(36)*abb489(35)
      abb489(38)=-abb489(68)*abb489(38)
      abb489(40)=abb489(69)*abb489(82)
      abb489(38)=abb489(38)+abb489(40)
      abb489(38)=abb489(38)*abb489(35)
      abb489(40)=abb489(67)*abb489(60)
      abb489(38)=abb489(40)+abb489(38)
      abb489(38)=NC*abb489(38)
      abb489(40)=abb489(67)*abb489(55)
      abb489(36)=abb489(38)+abb489(40)+abb489(36)
      abb489(36)=abb489(36)*abb489(71)
      abb489(29)=abb489(36)+abb489(29)
      abb489(29)=abb489(29)*abb489(21)
      abb489(36)=spak5k7*spak4k6
      abb489(38)=abb489(36)*abb489(45)
      abb489(40)=spak5k7*abb489(15)*spbk2k1
      abb489(55)=spak5k7*spbk5k3
      abb489(56)=spbk2k1*abb489(55)
      abb489(60)=-spak6k7*abb489(45)
      abb489(56)=abb489(56)+abb489(60)
      abb489(56)=spak4k5*abb489(56)
      abb489(40)=abb489(56)+abb489(40)+abb489(38)
      abb489(40)=abb489(40)*abb489(43)
      abb489(56)=spak5k7*abb489(17)*spbk2k1
      abb489(60)=gWWZ*abb489(38)
      abb489(69)=gWWZ*spak6k7
      abb489(77)=-abb489(45)*abb489(69)
      abb489(81)=abb489(37)*spak5k7
      abb489(82)=spbk2k1*abb489(81)
      abb489(77)=abb489(82)+abb489(77)
      abb489(77)=spak4k5*abb489(77)
      abb489(56)=abb489(77)+abb489(56)+abb489(60)
      abb489(56)=abb489(56)*abb489(35)
      abb489(40)=abb489(40)+abb489(56)
      abb489(40)=abb489(40)*abb489(75)
      abb489(38)=abb489(50)*abb489(38)
      abb489(34)=abb489(34)*spak5k7
      abb489(30)=abb489(30)*spak4k7
      abb489(30)=abb489(34)+abb489(30)
      abb489(34)=-abb489(30)*abb489(61)
      abb489(34)=abb489(38)+abb489(34)
      abb489(34)=abb489(34)*abb489(35)
      abb489(36)=abb489(36)*abb489(42)
      abb489(34)=abb489(36)+abb489(34)
      abb489(34)=abb489(34)*abb489(44)
      abb489(34)=abb489(34)+abb489(40)
      abb489(34)=abb489(1)*abb489(34)
      abb489(36)=abb489(45)*spak4k7
      abb489(38)=-abb489(63)*abb489(36)*abb489(76)
      abb489(34)=abb489(38)+abb489(34)
      abb489(34)=abb489(34)*abb489(73)
      abb489(38)=spbk7k1*spak5k7
      abb489(15)=abb489(15)*abb489(38)
      abb489(40)=abb489(3)*abb489(15)
      abb489(42)=abb489(38)*abb489(27)
      abb489(50)=spak4k6*abb489(42)
      abb489(56)=abb489(3)*spbk7k1
      abb489(55)=abb489(56)*abb489(55)
      abb489(60)=abb489(27)*spbk7k1
      abb489(77)=-spak6k7*abb489(60)
      abb489(55)=abb489(55)+abb489(77)
      abb489(55)=spak4k5*abb489(55)
      abb489(40)=abb489(55)+abb489(40)+abb489(50)
      abb489(40)=abb489(40)*abb489(43)
      abb489(50)=abb489(56)*abb489(81)
      abb489(55)=-abb489(60)*abb489(69)
      abb489(50)=abb489(50)+abb489(55)
      abb489(50)=spak4k5*abb489(50)
      abb489(17)=abb489(17)*abb489(38)
      abb489(55)=abb489(3)*abb489(17)
      abb489(77)=abb489(42)*abb489(25)
      abb489(50)=abb489(50)+abb489(55)+abb489(77)
      abb489(50)=abb489(50)*abb489(35)
      abb489(37)=abb489(38)*abb489(37)
      abb489(55)=spbk6k3*spbk7k1
      abb489(69)=-abb489(55)*abb489(69)
      abb489(37)=abb489(37)+abb489(69)
      abb489(37)=spak4k5*abb489(37)
      abb489(69)=abb489(55)*spak5k7
      abb489(25)=abb489(69)*abb489(25)
      abb489(17)=abb489(37)+abb489(25)+abb489(17)
      abb489(17)=abb489(17)*abb489(35)
      abb489(25)=spbk5k3*abb489(38)
      abb489(37)=-spak6k7*abb489(55)
      abb489(25)=abb489(25)+abb489(37)
      abb489(25)=spak4k5*abb489(25)
      abb489(37)=spak4k6*abb489(69)
      abb489(15)=abb489(25)+abb489(37)+abb489(15)
      abb489(15)=abb489(15)*abb489(43)
      abb489(15)=abb489(15)+abb489(17)
      abb489(15)=NC*abb489(15)
      abb489(15)=abb489(15)+abb489(40)+abb489(50)
      abb489(15)=abb489(15)*abb489(48)
      abb489(17)=abb489(42)*abb489(31)
      abb489(25)=abb489(30)*spak4k5
      abb489(30)=-abb489(56)*abb489(25)
      abb489(17)=abb489(17)+abb489(30)
      abb489(17)=abb489(17)*abb489(35)
      abb489(30)=abb489(69)*abb489(31)
      abb489(25)=-spbk7k1*abb489(25)
      abb489(25)=abb489(30)+abb489(25)
      abb489(25)=abb489(25)*abb489(35)
      abb489(30)=abb489(69)*abb489(26)
      abb489(25)=abb489(30)+abb489(25)
      abb489(25)=NC*abb489(25)
      abb489(26)=abb489(42)*abb489(26)
      abb489(17)=abb489(25)+abb489(26)+abb489(17)
      abb489(17)=abb489(17)*abb489(62)
      abb489(15)=abb489(17)+abb489(15)
      abb489(15)=abb489(1)*abb489(15)
      abb489(17)=spbk7k1*spak4k7
      abb489(25)=abb489(17)*abb489(27)
      abb489(26)=abb489(55)*spak4k7
      abb489(27)=abb489(26)*NC
      abb489(27)=-abb489(25)-abb489(27)
      abb489(27)=abb489(71)*abb489(63)*abb489(27)
      abb489(15)=abb489(27)+abb489(15)
      abb489(15)=abb489(15)*abb489(21)
      abb489(27)=abb489(49)*spak4k5
      abb489(30)=-abb489(45)*abb489(58)
      abb489(30)=abb489(30)-abb489(27)
      abb489(31)=2.0_ki*abb489(80)
      abb489(30)=abb489(31)*spak5k7*abb489(30)
      abb489(37)=abb489(39)*spak4k5
      abb489(37)=abb489(37)+abb489(58)
      abb489(38)=-abb489(42)*abb489(37)
      abb489(39)=abb489(37)*NC
      abb489(40)=-abb489(69)*abb489(39)
      abb489(38)=abb489(40)+abb489(38)
      abb489(40)=8.0_ki*abb489(72)
      abb489(38)=abb489(38)*abb489(40)
      abb489(49)=abb489(58)*abb489(36)
      abb489(27)=spak4k7*abb489(27)
      abb489(27)=abb489(49)+abb489(27)
      abb489(27)=abb489(27)*abb489(31)
      abb489(31)=abb489(25)*abb489(37)
      abb489(37)=abb489(26)*abb489(39)
      abb489(31)=abb489(37)+abb489(31)
      abb489(31)=abb489(31)*abb489(40)
      abb489(37)=spbk2k1*spak4k7*abb489(79)
      abb489(39)=-abb489(84)*abb489(36)
      abb489(40)=gWWZ*spak3k7
      abb489(49)=abb489(45)*abb489(40)
      abb489(50)=abb489(86)*spak4k7
      abb489(63)=-spbk2k1*abb489(50)
      abb489(49)=abb489(63)+abb489(49)
      abb489(49)=spak4k5*abb489(49)
      abb489(37)=abb489(49)+abb489(37)+abb489(39)
      abb489(37)=abb489(37)*abb489(35)
      abb489(39)=spak4k7*abb489(87)*spbk2k1
      abb489(49)=spak4k7*spbk6k4
      abb489(63)=-spbk2k1*abb489(49)
      abb489(72)=spak3k7*abb489(45)
      abb489(63)=abb489(63)+abb489(72)
      abb489(63)=spak4k5*abb489(63)
      abb489(72)=-spak3k5*abb489(36)
      abb489(39)=abb489(63)+abb489(39)+abb489(72)
      abb489(39)=abb489(39)*abb489(43)
      abb489(37)=abb489(39)+abb489(37)
      abb489(37)=abb489(37)*abb489(75)
      abb489(39)=-abb489(45)*abb489(52)
      abb489(39)=-abb489(57)+abb489(39)
      abb489(39)=abb489(44)*spak5k7*abb489(39)
      abb489(37)=abb489(39)+abb489(37)
      abb489(37)=abb489(1)*abb489(37)
      abb489(36)=abb489(68)*abb489(36)
      abb489(24)=abb489(24)*spak5k7
      abb489(39)=abb489(67)*spak4k7
      abb489(44)=abb489(39)*gel
      abb489(24)=abb489(24)+abb489(44)
      abb489(44)=-abb489(24)*abb489(61)
      abb489(36)=abb489(36)+abb489(44)
      abb489(36)=abb489(36)*abb489(35)
      abb489(44)=abb489(64)*spak5k7
      abb489(39)=abb489(44)+abb489(39)
      abb489(39)=abb489(39)*abb489(58)
      abb489(44)=-spbk2k1*abb489(39)
      abb489(36)=abb489(44)+abb489(36)
      abb489(36)=abb489(36)*abb489(76)
      abb489(36)=abb489(36)+abb489(37)
      abb489(36)=abb489(36)*abb489(73)
      abb489(37)=abb489(85)*abb489(17)
      abb489(33)=-abb489(17)*abb489(33)
      abb489(37)=abb489(37)+abb489(33)
      abb489(44)=-abb489(3)*abb489(37)
      abb489(45)=-spak3k5*abb489(25)
      abb489(49)=-abb489(56)*abb489(49)
      abb489(52)=spak3k7*abb489(60)
      abb489(49)=abb489(49)+abb489(52)
      abb489(49)=spak4k5*abb489(49)
      abb489(44)=abb489(49)+abb489(44)+abb489(45)
      abb489(44)=abb489(44)*abb489(43)
      abb489(45)=abb489(66)*abb489(17)
      abb489(33)=abb489(33)*gWWZ
      abb489(33)=abb489(45)+abb489(33)
      abb489(45)=-abb489(3)*abb489(33)
      abb489(49)=-abb489(56)*abb489(50)
      abb489(50)=abb489(60)*abb489(40)
      abb489(49)=abb489(49)+abb489(50)
      abb489(49)=spak4k5*abb489(49)
      abb489(50)=-abb489(25)*abb489(84)
      abb489(45)=abb489(49)+abb489(45)+abb489(50)
      abb489(45)=abb489(45)*abb489(35)
      abb489(49)=-abb489(17)*abb489(86)
      abb489(40)=abb489(55)*abb489(40)
      abb489(40)=abb489(49)+abb489(40)
      abb489(40)=spak4k5*abb489(40)
      abb489(49)=-abb489(26)*abb489(84)
      abb489(33)=abb489(40)+abb489(49)-abb489(33)
      abb489(33)=abb489(33)*abb489(35)
      abb489(17)=-spbk6k4*abb489(17)
      abb489(40)=spak3k7*abb489(55)
      abb489(17)=abb489(17)+abb489(40)
      abb489(17)=spak4k5*abb489(17)
      abb489(40)=-spak3k5*abb489(26)
      abb489(17)=abb489(17)+abb489(40)-abb489(37)
      abb489(17)=abb489(17)*abb489(43)
      abb489(17)=abb489(17)+abb489(33)
      abb489(17)=NC*abb489(17)
      abb489(17)=abb489(17)+abb489(44)+abb489(45)
      abb489(17)=abb489(17)*abb489(48)
      abb489(33)=-abb489(42)*abb489(59)
      abb489(37)=-abb489(69)*abb489(70)
      abb489(33)=abb489(37)+abb489(33)
      abb489(33)=abb489(33)*abb489(62)
      abb489(17)=abb489(33)+abb489(17)
      abb489(17)=abb489(1)*abb489(17)
      abb489(25)=abb489(68)*abb489(25)
      abb489(24)=abb489(24)*spak4k5
      abb489(33)=-abb489(56)*abb489(24)
      abb489(25)=abb489(25)+abb489(33)
      abb489(25)=abb489(25)*abb489(35)
      abb489(26)=abb489(68)*abb489(26)
      abb489(24)=-spbk7k1*abb489(24)
      abb489(24)=abb489(26)+abb489(24)
      abb489(24)=abb489(24)*abb489(35)
      abb489(26)=-spbk7k1*abb489(39)
      abb489(24)=abb489(26)+abb489(24)
      abb489(24)=NC*abb489(24)
      abb489(26)=-abb489(56)*abb489(39)
      abb489(24)=abb489(24)+abb489(26)+abb489(25)
      abb489(24)=abb489(24)*abb489(71)
      abb489(17)=abb489(24)+abb489(17)
      abb489(17)=abb489(17)*abb489(21)
      R2d489=abb489(74)
      rat2 = rat2 + R2d489
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='489' value='", &
          & R2d489, "'/>"
      end if
   end subroutine
end module p12_sbars_epnemumnmubarg_abbrevd489h6
