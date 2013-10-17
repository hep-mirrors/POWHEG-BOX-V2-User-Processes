module     p5_usbar_epnebbbarg_abbrevd40h3
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(65), public :: abb40
   complex(ki), public :: R2d40
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p5_usbar_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_color, only: TR
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb40(1)=1.0_ki/(-es71+es712-es12)
      abb40(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb40(3)=1.0_ki/(es34+es567-es12-es234)
      abb40(4)=NC**(-1)
      abb40(5)=es56**(-1)
      abb40(6)=spak2l5**(-1)
      abb40(7)=spak2l6**(-1)
      abb40(8)=spbl5k2**(-1)
      abb40(9)=spbl6k2**(-1)
      abb40(10)=TR*gW
      abb40(10)=CVSU*abb40(10)**2*spbk7e7*i_*spak2e7*abb40(5)*abb40(3)*abb40(2)&
      &*abb40(1)
      abb40(11)=abb40(10)*spbk3k1*mB
      abb40(12)=abb40(11)*spak2k7
      abb40(13)=abb40(12)*abb40(6)
      abb40(14)=abb40(13)*c3
      abb40(15)=abb40(12)*c4
      abb40(16)=abb40(15)*abb40(6)
      abb40(17)=abb40(16)*abb40(4)
      abb40(14)=abb40(14)-abb40(17)
      abb40(17)=abb40(14)*abb40(4)
      abb40(18)=NC*c3
      abb40(13)=abb40(13)*abb40(18)
      abb40(13)=abb40(13)-abb40(16)
      abb40(16)=abb40(17)-abb40(13)
      abb40(17)=spbl6k3*spak3k4
      abb40(19)=spbl6k1*spak1k4
      abb40(17)=abb40(17)-abb40(19)
      abb40(16)=abb40(16)*abb40(17)
      abb40(19)=abb40(12)*abb40(7)
      abb40(20)=abb40(19)*c3
      abb40(21)=abb40(15)*abb40(7)
      abb40(22)=abb40(21)*abb40(4)
      abb40(20)=abb40(20)-abb40(22)
      abb40(22)=abb40(20)*abb40(4)
      abb40(19)=abb40(19)*abb40(18)
      abb40(19)=abb40(19)-abb40(21)
      abb40(21)=abb40(22)-abb40(19)
      abb40(22)=spbl5k3*spak3k4
      abb40(23)=spbl5k1*spak1k4
      abb40(22)=abb40(22)-abb40(23)
      abb40(21)=abb40(22)*abb40(21)
      abb40(16)=abb40(21)+abb40(16)
      abb40(21)=-2.0_ki*abb40(16)
      abb40(23)=abb40(10)*c3
      abb40(24)=abb40(23)*NC
      abb40(25)=mB**3
      abb40(26)=abb40(25)*spak2k7*spbk3k1
      abb40(27)=abb40(24)*abb40(26)
      abb40(28)=abb40(7)*abb40(6)
      abb40(29)=abb40(27)*abb40(28)
      abb40(10)=abb40(10)*c4
      abb40(30)=abb40(26)*abb40(10)
      abb40(31)=abb40(30)*abb40(28)
      abb40(29)=abb40(29)-abb40(31)
      abb40(32)=abb40(9)*spak1k4
      abb40(33)=abb40(32)*abb40(29)
      abb40(34)=abb40(6)**2
      abb40(35)=abb40(34)*abb40(27)
      abb40(36)=abb40(34)*abb40(30)
      abb40(35)=abb40(35)-abb40(36)
      abb40(37)=abb40(8)*spak1k4
      abb40(38)=abb40(37)*abb40(35)
      abb40(33)=abb40(33)+abb40(38)
      abb40(33)=abb40(33)*spbl6k1
      abb40(38)=abb40(7)**2
      abb40(27)=abb40(38)*abb40(27)
      abb40(30)=abb40(38)*abb40(30)
      abb40(27)=abb40(27)-abb40(30)
      abb40(39)=abb40(32)*abb40(27)
      abb40(40)=abb40(37)*abb40(29)
      abb40(39)=abb40(39)+abb40(40)
      abb40(39)=abb40(39)*spbl5k1
      abb40(40)=abb40(9)*spak3k4
      abb40(41)=abb40(40)*abb40(29)
      abb40(42)=abb40(8)*spak3k4
      abb40(43)=abb40(42)*abb40(35)
      abb40(41)=abb40(41)+abb40(43)
      abb40(41)=abb40(41)*spbl6k3
      abb40(43)=abb40(40)*abb40(27)
      abb40(44)=abb40(42)*abb40(29)
      abb40(43)=abb40(43)+abb40(44)
      abb40(43)=abb40(43)*spbl5k3
      abb40(33)=-abb40(33)-abb40(39)+abb40(41)+abb40(43)
      abb40(39)=es71+es12-es712
      abb40(39)=2.0_ki*abb40(39)
      abb40(33)=abb40(33)*abb40(39)
      abb40(12)=abb40(12)*abb40(18)
      abb40(12)=abb40(12)-abb40(15)
      abb40(15)=abb40(12)*abb40(22)
      abb40(39)=-abb40(13)*abb40(17)
      abb40(41)=-spak2l6*abb40(39)
      abb40(15)=abb40(41)+abb40(15)
      abb40(15)=spbl6k2*abb40(15)
      abb40(12)=abb40(12)*abb40(17)
      abb40(41)=-abb40(19)*abb40(22)
      abb40(43)=-spak2l5*abb40(41)
      abb40(12)=abb40(43)+abb40(12)
      abb40(12)=spbl5k2*abb40(12)
      abb40(43)=-abb40(39)-2.0_ki*abb40(41)
      abb40(43)=spal6k7*abb40(43)
      abb40(44)=abb40(22)*spal5k7
      abb40(45)=-abb40(13)*abb40(44)
      abb40(43)=abb40(43)+abb40(45)
      abb40(43)=spbk7l6*abb40(43)
      abb40(45)=-abb40(41)-2.0_ki*abb40(39)
      abb40(45)=spal5k7*abb40(45)
      abb40(46)=abb40(17)*spal6k7
      abb40(47)=-abb40(19)*abb40(46)
      abb40(45)=abb40(47)+abb40(45)
      abb40(45)=spbk7l5*abb40(45)
      abb40(47)=abb40(24)-abb40(10)
      abb40(25)=abb40(25)*abb40(47)
      abb40(47)=-spbk3k1*abb40(25)
      abb40(48)=abb40(6)*spak2k7
      abb40(49)=abb40(47)*abb40(48)**2
      abb40(50)=-abb40(49)*abb40(42)
      abb40(51)=-abb40(47)*abb40(28)*spak2k7**2
      abb40(52)=abb40(51)*abb40(40)
      abb40(50)=abb40(50)+abb40(52)
      abb40(50)=spbk7l6*abb40(50)
      abb40(52)=abb40(51)*abb40(42)
      abb40(53)=abb40(7)*spak2k7
      abb40(47)=abb40(47)*abb40(53)**2
      abb40(54)=-abb40(47)*abb40(40)
      abb40(52)=abb40(52)+abb40(54)
      abb40(52)=spbk7l5*abb40(52)
      abb40(50)=abb40(50)+abb40(52)
      abb40(50)=spbk3k2*abb40(50)
      abb40(49)=-abb40(49)*abb40(37)
      abb40(52)=abb40(51)*abb40(32)
      abb40(49)=abb40(49)+abb40(52)
      abb40(49)=spbk7l6*abb40(49)
      abb40(51)=abb40(51)*abb40(37)
      abb40(47)=-abb40(47)*abb40(32)
      abb40(47)=abb40(51)+abb40(47)
      abb40(47)=spbk7l5*abb40(47)
      abb40(47)=abb40(49)+abb40(47)
      abb40(47)=spbk2k1*abb40(47)
      abb40(12)=abb40(47)+abb40(50)+abb40(43)+abb40(45)+abb40(33)+abb40(12)+abb&
      &40(15)
      abb40(12)=2.0_ki*abb40(12)
      abb40(15)=abb40(41)+abb40(39)
      abb40(15)=4.0_ki*abb40(15)
      abb40(33)=2.0_ki*abb40(4)
      abb40(20)=abb40(20)*abb40(33)
      abb40(20)=abb40(20)+abb40(19)
      abb40(39)=abb40(22)*abb40(20)
      abb40(14)=abb40(14)*abb40(33)
      abb40(14)=abb40(14)+abb40(13)
      abb40(41)=abb40(17)*abb40(14)
      abb40(39)=abb40(39)+abb40(41)
      abb40(39)=4.0_ki*abb40(39)
      abb40(41)=3.0_ki*spak2k4
      abb40(43)=abb40(41)*abb40(29)
      abb40(45)=abb40(11)*abb40(7)
      abb40(47)=abb40(45)*c3
      abb40(49)=abb40(11)*c4
      abb40(50)=abb40(49)*abb40(4)
      abb40(51)=abb40(50)*abb40(7)
      abb40(47)=abb40(47)-abb40(51)
      abb40(47)=abb40(47)*abb40(4)
      abb40(45)=abb40(45)*abb40(18)
      abb40(51)=abb40(49)*abb40(7)
      abb40(45)=abb40(45)-abb40(51)
      abb40(51)=abb40(47)-abb40(45)
      abb40(52)=spak2k4*spbl6l5
      abb40(54)=abb40(52)*spal6k7
      abb40(55)=abb40(51)*abb40(54)
      abb40(56)=abb40(11)*abb40(6)
      abb40(57)=abb40(56)*c3
      abb40(58)=abb40(50)*abb40(6)
      abb40(57)=abb40(57)-abb40(58)
      abb40(57)=abb40(57)*abb40(4)
      abb40(18)=abb40(56)*abb40(18)
      abb40(49)=abb40(49)*abb40(6)
      abb40(18)=abb40(18)-abb40(49)
      abb40(49)=abb40(57)-abb40(18)
      abb40(52)=abb40(52)*spal5k7
      abb40(56)=abb40(49)*abb40(52)
      abb40(43)=-abb40(56)+abb40(43)+abb40(55)
      abb40(55)=spbl6k2*abb40(8)
      abb40(56)=abb40(35)*abb40(55)
      abb40(58)=spbl5k2*abb40(9)
      abb40(59)=abb40(58)*abb40(27)
      abb40(56)=abb40(56)+abb40(59)
      abb40(59)=-abb40(41)*abb40(56)
      abb40(60)=abb40(19)*spbk7l5
      abb40(61)=abb40(13)*spbk7l6
      abb40(60)=abb40(60)+abb40(61)
      abb40(61)=spak4k7*abb40(60)
      abb40(14)=abb40(14)*spbl6l5
      abb40(62)=abb40(14)*spak4l5
      abb40(20)=abb40(20)*spbl6l5
      abb40(63)=abb40(20)*spak4l6
      abb40(43)=abb40(61)-2.0_ki*abb40(43)-abb40(63)+abb40(62)+abb40(59)
      abb40(43)=4.0_ki*abb40(43)
      abb40(26)=abb40(26)*abb40(23)
      abb40(59)=abb40(34)*abb40(26)
      abb40(36)=abb40(36)*abb40(4)
      abb40(36)=abb40(59)-abb40(36)
      abb40(59)=abb40(36)*abb40(33)
      abb40(59)=abb40(59)+abb40(35)
      abb40(61)=-abb40(59)*abb40(42)
      abb40(28)=abb40(26)*abb40(28)
      abb40(31)=abb40(31)*abb40(4)
      abb40(28)=abb40(28)-abb40(31)
      abb40(31)=abb40(28)*abb40(33)
      abb40(31)=abb40(31)+abb40(29)
      abb40(62)=-abb40(31)*abb40(40)
      abb40(63)=abb40(13)*spak3k4
      abb40(61)=abb40(62)+abb40(63)+abb40(61)
      abb40(61)=spbl6k3*abb40(61)
      abb40(62)=-abb40(31)*abb40(42)
      abb40(26)=abb40(38)*abb40(26)
      abb40(30)=abb40(30)*abb40(4)
      abb40(26)=abb40(26)-abb40(30)
      abb40(30)=abb40(26)*abb40(33)
      abb40(30)=abb40(30)+abb40(27)
      abb40(64)=-abb40(30)*abb40(40)
      abb40(65)=abb40(19)*spak3k4
      abb40(62)=abb40(64)+abb40(65)+abb40(62)
      abb40(62)=spbl5k3*abb40(62)
      abb40(59)=abb40(59)*abb40(37)
      abb40(64)=abb40(31)*abb40(32)
      abb40(13)=abb40(13)*spak1k4
      abb40(59)=abb40(64)-abb40(13)+abb40(59)
      abb40(59)=spbl6k1*abb40(59)
      abb40(31)=abb40(31)*abb40(37)
      abb40(30)=abb40(30)*abb40(32)
      abb40(19)=abb40(19)*spak1k4
      abb40(30)=abb40(30)-abb40(19)+abb40(31)
      abb40(30)=spbl5k1*abb40(30)
      abb40(30)=abb40(30)+abb40(59)+abb40(61)+abb40(62)
      abb40(30)=4.0_ki*abb40(30)
      abb40(16)=4.0_ki*abb40(16)
      abb40(11)=abb40(11)*c3
      abb40(11)=abb40(11)-abb40(50)
      abb40(11)=abb40(11)*abb40(4)
      abb40(31)=abb40(11)*abb40(22)
      abb40(50)=spak2l6*abb40(57)*abb40(17)
      abb40(31)=abb40(50)+abb40(31)
      abb40(31)=4.0_ki*abb40(31)
      abb40(11)=abb40(11)*abb40(17)
      abb40(17)=spak2l5*abb40(47)*abb40(22)
      abb40(11)=abb40(17)+abb40(11)
      abb40(11)=4.0_ki*abb40(11)
      abb40(17)=abb40(23)*mB
      abb40(22)=abb40(17)*abb40(53)
      abb40(10)=abb40(10)*mB
      abb40(23)=abb40(10)*abb40(53)
      abb40(50)=abb40(23)*abb40(4)
      abb40(22)=abb40(22)-abb40(50)
      abb40(22)=abb40(22)*abb40(33)
      abb40(24)=abb40(24)*mB
      abb40(50)=abb40(24)*abb40(53)
      abb40(23)=abb40(50)-abb40(23)
      abb40(22)=abb40(22)+abb40(23)
      abb40(22)=abb40(22)*spak4l6
      abb40(50)=abb40(17)*abb40(48)
      abb40(59)=abb40(10)*abb40(48)
      abb40(61)=abb40(59)*abb40(4)
      abb40(50)=abb40(50)-abb40(61)
      abb40(33)=abb40(50)*abb40(33)
      abb40(48)=abb40(24)*abb40(48)
      abb40(48)=abb40(48)-abb40(59)
      abb40(33)=abb40(33)+abb40(48)
      abb40(33)=abb40(33)*spak4l5
      abb40(22)=abb40(22)-abb40(33)
      abb40(22)=spbl6l5*abb40(22)
      abb40(33)=abb40(41)*abb40(25)*abb40(53)*abb40(6)
      abb40(50)=abb40(10)*abb40(4)
      abb40(17)=abb40(50)-abb40(17)
      abb40(50)=abb40(4)*abb40(7)*abb40(17)
      abb40(10)=abb40(24)-abb40(10)
      abb40(24)=-abb40(7)*abb40(10)
      abb40(53)=abb40(50)-abb40(24)
      abb40(53)=abb40(53)*abb40(54)
      abb40(17)=abb40(4)*abb40(6)*abb40(17)
      abb40(10)=-abb40(6)*abb40(10)
      abb40(54)=abb40(17)-abb40(10)
      abb40(52)=abb40(54)*abb40(52)
      abb40(33)=abb40(52)+abb40(33)-abb40(53)
      abb40(23)=abb40(23)*spbk7l5
      abb40(48)=abb40(48)*spbk7l6
      abb40(23)=-abb40(23)-abb40(48)
      abb40(23)=spak4k7*abb40(23)
      abb40(34)=abb40(34)*abb40(55)
      abb40(38)=abb40(58)*abb40(38)
      abb40(34)=-abb40(34)-abb40(38)
      abb40(25)=-abb40(34)*abb40(41)*spak2k7*abb40(25)
      abb40(22)=2.0_ki*abb40(33)+abb40(25)+abb40(23)+abb40(22)
      abb40(23)=-spbk4k1*abb40(22)
      abb40(25)=abb40(51)*spal6k7
      abb40(33)=abb40(49)*spal5k7
      abb40(25)=abb40(25)-abb40(33)
      abb40(25)=abb40(25)*spbl6l5
      abb40(25)=abb40(25)+3.0_ki*abb40(29)
      abb40(25)=2.0_ki*abb40(25)+3.0_ki*abb40(56)
      abb40(33)=-spak2k3*abb40(25)
      abb40(34)=spak3k7*abb40(60)
      abb40(38)=-spak3l6*abb40(20)
      abb40(41)=spak3l5*abb40(14)
      abb40(23)=abb40(41)+abb40(38)+abb40(34)+abb40(33)+abb40(23)
      abb40(23)=2.0_ki*abb40(23)
      abb40(22)=spbk4k3*abb40(22)
      abb40(25)=-spak1k2*abb40(25)
      abb40(33)=-spak1k7*abb40(60)
      abb40(20)=spak1l6*abb40(20)
      abb40(14)=-spak1l5*abb40(14)
      abb40(14)=abb40(14)+abb40(20)+abb40(33)+abb40(25)+abb40(22)
      abb40(14)=2.0_ki*abb40(14)
      abb40(20)=abb40(36)*abb40(4)
      abb40(20)=abb40(20)+abb40(35)
      abb40(20)=2.0_ki*abb40(20)
      abb40(22)=-abb40(42)*abb40(20)
      abb40(25)=abb40(28)*abb40(4)
      abb40(25)=abb40(25)+abb40(29)
      abb40(25)=2.0_ki*abb40(25)
      abb40(28)=-abb40(40)*abb40(25)
      abb40(22)=abb40(28)-abb40(63)+abb40(22)
      abb40(22)=spbk3k2*abb40(22)
      abb40(20)=-abb40(37)*abb40(20)
      abb40(28)=-abb40(32)*abb40(25)
      abb40(13)=abb40(28)-abb40(13)+abb40(20)
      abb40(13)=spbk2k1*abb40(13)
      abb40(20)=abb40(44)+abb40(46)
      abb40(18)=abb40(57)+abb40(18)
      abb40(28)=abb40(18)*abb40(20)
      abb40(13)=abb40(13)+2.0_ki*abb40(28)+abb40(22)
      abb40(13)=2.0_ki*abb40(13)
      abb40(22)=16.0_ki*spak4k7
      abb40(28)=abb40(22)*abb40(18)
      abb40(29)=4.0_ki*abb40(18)
      abb40(33)=-spak3k4*abb40(29)
      abb40(29)=spak1k4*abb40(29)
      abb40(10)=abb40(17)+abb40(10)
      abb40(17)=spbk4k1*spak4k7
      abb40(34)=-abb40(10)*abb40(17)
      abb40(35)=spak3k7*abb40(18)
      abb40(34)=abb40(34)+abb40(35)
      abb40(34)=8.0_ki*abb40(34)
      abb40(35)=spbk4k3*spak4k7
      abb40(10)=abb40(10)*abb40(35)
      abb40(18)=-spak1k7*abb40(18)
      abb40(10)=abb40(10)+abb40(18)
      abb40(10)=8.0_ki*abb40(10)
      abb40(18)=-abb40(42)*abb40(25)
      abb40(26)=abb40(26)*abb40(4)
      abb40(26)=abb40(26)+abb40(27)
      abb40(26)=2.0_ki*abb40(26)
      abb40(27)=-abb40(40)*abb40(26)
      abb40(18)=abb40(27)-abb40(65)+abb40(18)
      abb40(18)=spbk3k2*abb40(18)
      abb40(25)=-abb40(37)*abb40(25)
      abb40(26)=-abb40(32)*abb40(26)
      abb40(19)=abb40(26)-abb40(19)+abb40(25)
      abb40(19)=spbk2k1*abb40(19)
      abb40(25)=abb40(47)+abb40(45)
      abb40(20)=abb40(25)*abb40(20)
      abb40(18)=abb40(19)+2.0_ki*abb40(20)+abb40(18)
      abb40(18)=2.0_ki*abb40(18)
      abb40(19)=abb40(22)*abb40(25)
      abb40(20)=4.0_ki*abb40(25)
      abb40(22)=-spak3k4*abb40(20)
      abb40(20)=spak1k4*abb40(20)
      abb40(24)=abb40(50)+abb40(24)
      abb40(17)=-abb40(24)*abb40(17)
      abb40(26)=spak3k7*abb40(25)
      abb40(17)=abb40(17)+abb40(26)
      abb40(17)=8.0_ki*abb40(17)
      abb40(24)=abb40(24)*abb40(35)
      abb40(25)=-spak1k7*abb40(25)
      abb40(24)=abb40(24)+abb40(25)
      abb40(24)=8.0_ki*abb40(24)
      R2d40=abb40(21)
      rat2 = rat2 + R2d40
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='40' value='", &
          & R2d40, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd40h3