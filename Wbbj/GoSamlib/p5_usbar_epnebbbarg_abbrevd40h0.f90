module     p5_usbar_epnebbbarg_abbrevd40h0
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(56), public :: abb40
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
      abb40(6)=spbl5k2**(-1)
      abb40(7)=spbl6k2**(-1)
      abb40(8)=spak2l5**(-1)
      abb40(9)=spak2l6**(-1)
      abb40(10)=spak1k4*spbk2k1
      abb40(11)=spak3k4*spbk3k2
      abb40(10)=abb40(10)+abb40(11)
      abb40(11)=abb40(10)*NC
      abb40(12)=abb40(4)*abb40(10)
      abb40(13)=abb40(11)-abb40(12)
      abb40(14)=c3*spal6k7
      abb40(15)=abb40(13)*abb40(14)
      abb40(16)=abb40(4)**2
      abb40(17)=abb40(16)*spbk2k1
      abb40(18)=abb40(17)-spbk2k1
      abb40(18)=abb40(18)*spak1k4
      abb40(19)=abb40(16)*spbk3k2
      abb40(20)=abb40(19)-spbk3k2
      abb40(20)=abb40(20)*spak3k4
      abb40(18)=abb40(18)+abb40(20)
      abb40(20)=c4*spal6k7
      abb40(21)=abb40(18)*abb40(20)
      abb40(15)=abb40(15)+abb40(21)
      abb40(15)=abb40(15)*abb40(6)
      abb40(21)=c3*spal5k7
      abb40(13)=abb40(13)*abb40(21)
      abb40(22)=c4*spal5k7
      abb40(18)=abb40(18)*abb40(22)
      abb40(13)=abb40(13)+abb40(18)
      abb40(13)=abb40(13)*abb40(7)
      abb40(13)=abb40(15)+abb40(13)
      abb40(15)=abb40(3)*abb40(1)*abb40(2)*abb40(5)*CVSU
      abb40(18)=gW*TR
      abb40(18)=mB*abb40(15)*abb40(18)**2
      abb40(23)=i_*spbk7e7*spak2e7
      abb40(24)=abb40(23)*spbk3k1
      abb40(25)=abb40(24)*abb40(18)
      abb40(26)=2.0_ki*abb40(13)*abb40(25)
      abb40(27)=spbk7k2*spbl5k1
      abb40(28)=2.0_ki*spbk2k1
      abb40(29)=abb40(28)*spbk7l5
      abb40(27)=abb40(27)-abb40(29)
      abb40(27)=abb40(27)*spak1k4
      abb40(29)=spbk7k2*spbl5k3
      abb40(30)=2.0_ki*spbk3k2
      abb40(31)=abb40(30)*spbk7l5
      abb40(29)=abb40(29)+abb40(31)
      abb40(29)=abb40(29)*spak3k4
      abb40(27)=abb40(27)-abb40(29)
      abb40(29)=spal5k7*NC
      abb40(31)=abb40(27)*abb40(29)
      abb40(32)=spak2l5*abb40(10)
      abb40(33)=abb40(32)*spbl5k2
      abb40(34)=2.0_ki*NC
      abb40(35)=-abb40(33)*abb40(34)
      abb40(35)=abb40(35)-abb40(31)
      abb40(35)=spal5k7*abb40(35)
      abb40(36)=spbk7k2*spbl6k1
      abb40(28)=abb40(28)*spbk7l6
      abb40(28)=abb40(36)-abb40(28)
      abb40(28)=abb40(28)*spak1k4
      abb40(36)=spbk7k2*spbl6k3
      abb40(30)=abb40(30)*spbk7l6
      abb40(30)=abb40(36)+abb40(30)
      abb40(30)=abb40(30)*spak3k4
      abb40(28)=abb40(28)-abb40(30)
      abb40(30)=abb40(28)*spal6k7
      abb40(36)=-abb40(29)*abb40(30)
      abb40(35)=abb40(35)+abb40(36)
      abb40(35)=c3*abb40(35)
      abb40(27)=abb40(27)*spal5k7
      abb40(27)=abb40(27)+abb40(30)
      abb40(30)=2.0_ki*abb40(33)+abb40(27)
      abb40(30)=abb40(30)*abb40(22)
      abb40(30)=abb40(35)+abb40(30)
      abb40(30)=abb40(7)*abb40(30)
      abb40(33)=spal6k7*NC
      abb40(28)=-abb40(28)*abb40(33)
      abb40(35)=spak2l6*abb40(10)
      abb40(36)=abb40(35)*spbl6k2
      abb40(34)=-abb40(36)*abb40(34)
      abb40(28)=abb40(28)+abb40(34)-abb40(31)
      abb40(28)=abb40(28)*abb40(14)
      abb40(27)=2.0_ki*abb40(36)+abb40(27)
      abb40(27)=abb40(27)*abb40(20)
      abb40(27)=abb40(28)+abb40(27)
      abb40(27)=abb40(6)*abb40(27)
      abb40(28)=-abb40(35)*abb40(29)
      abb40(31)=-abb40(32)*abb40(33)
      abb40(28)=abb40(28)+abb40(31)
      abb40(28)=c3*abb40(28)
      abb40(31)=spal5k7*abb40(35)
      abb40(34)=spal6k7*abb40(32)
      abb40(31)=abb40(31)+abb40(34)
      abb40(31)=c4*abb40(31)
      abb40(28)=abb40(28)+abb40(31)
      abb40(27)=abb40(27)+2.0_ki*abb40(28)+abb40(30)
      abb40(24)=abb40(24)*TR**2
      abb40(27)=abb40(27)*abb40(24)
      abb40(28)=es12+es71-es712
      abb40(28)=abb40(28)*abb40(10)
      abb40(30)=abb40(8)*abb40(28)
      abb40(31)=abb40(30)*abb40(29)
      abb40(28)=abb40(9)*abb40(28)
      abb40(34)=abb40(28)*abb40(33)
      abb40(31)=abb40(31)+abb40(34)
      abb40(31)=c3*abb40(31)
      abb40(34)=-spal5k7*abb40(30)
      abb40(36)=-spal6k7*abb40(28)
      abb40(34)=abb40(34)+abb40(36)
      abb40(34)=c4*abb40(34)
      abb40(31)=abb40(31)+abb40(34)
      abb40(31)=abb40(7)*abb40(31)
      abb40(34)=abb40(33)*c3
      abb40(34)=abb40(34)-abb40(20)
      abb40(34)=abb40(34)*abb40(6)
      abb40(30)=abb40(30)*abb40(34)
      abb40(30)=abb40(31)+abb40(30)
      abb40(30)=abb40(6)*abb40(30)
      abb40(31)=abb40(29)*c3
      abb40(31)=abb40(31)-abb40(22)
      abb40(36)=abb40(7)**2
      abb40(28)=abb40(36)*abb40(28)*abb40(31)
      abb40(28)=abb40(28)+abb40(30)
      abb40(30)=abb40(24)*mB**2
      abb40(28)=abb40(28)*abb40(30)
      abb40(27)=abb40(27)+abb40(28)
      abb40(15)=gW**2*abb40(15)*mB
      abb40(28)=2.0_ki*abb40(15)
      abb40(27)=abb40(27)*abb40(28)
      abb40(31)=abb40(31)*abb40(7)
      abb40(37)=abb40(34)+abb40(31)
      abb40(37)=abb40(10)*abb40(37)
      abb40(38)=4.0_ki*abb40(25)
      abb40(39)=-abb40(37)*abb40(38)
      abb40(40)=abb40(11)+2.0_ki*abb40(12)
      abb40(41)=abb40(40)*abb40(14)
      abb40(42)=spbk3k2+2.0_ki*abb40(19)
      abb40(42)=abb40(42)*spak3k4
      abb40(43)=spbk2k1+2.0_ki*abb40(17)
      abb40(43)=abb40(43)*spak1k4
      abb40(42)=abb40(42)+abb40(43)
      abb40(43)=abb40(42)*abb40(20)
      abb40(41)=abb40(41)-abb40(43)
      abb40(41)=abb40(41)*abb40(6)
      abb40(40)=abb40(40)*abb40(21)
      abb40(43)=abb40(42)*abb40(22)
      abb40(40)=abb40(40)-abb40(43)
      abb40(40)=abb40(40)*abb40(7)
      abb40(40)=abb40(41)+abb40(40)
      abb40(40)=abb40(40)*abb40(38)
      abb40(41)=spal5k7*spak4l6
      abb40(43)=spal6k7*spak4l5
      abb40(41)=abb40(41)+abb40(43)
      abb40(41)=abb40(41)*c4
      abb40(43)=abb40(29)*spak4l6
      abb40(44)=abb40(33)*spak4l5
      abb40(43)=abb40(43)+abb40(44)
      abb40(43)=abb40(43)*c3
      abb40(41)=abb40(41)-abb40(43)
      abb40(43)=3.0_ki*spbl6k2
      abb40(44)=abb40(43)*spak4l6
      abb40(45)=spak4k7*spbk7k2
      abb40(46)=abb40(44)-abb40(45)
      abb40(46)=-abb40(46)*abb40(34)
      abb40(47)=3.0_ki*spbl5k2
      abb40(48)=abb40(47)*spak4l5
      abb40(49)=abb40(48)-abb40(45)
      abb40(49)=-abb40(49)*abb40(31)
      abb40(46)=abb40(46)+abb40(49)+3.0_ki*abb40(41)
      abb40(46)=abb40(46)*abb40(38)
      abb40(49)=abb40(8)*abb40(11)
      abb40(50)=abb40(8)*abb40(12)
      abb40(49)=abb40(49)+2.0_ki*abb40(50)
      abb40(51)=-spal5k7*abb40(49)
      abb40(52)=abb40(9)*abb40(11)
      abb40(53)=abb40(9)*abb40(12)
      abb40(52)=abb40(52)+2.0_ki*abb40(53)
      abb40(54)=-spal6k7*abb40(52)
      abb40(51)=abb40(51)+abb40(54)
      abb40(51)=c3*abb40(51)
      abb40(54)=abb40(8)*abb40(42)
      abb40(55)=spal5k7*abb40(54)
      abb40(42)=abb40(9)*abb40(42)
      abb40(56)=spal6k7*abb40(42)
      abb40(55)=abb40(55)+abb40(56)
      abb40(55)=c4*abb40(55)
      abb40(51)=abb40(51)+abb40(55)
      abb40(51)=abb40(7)*abb40(51)
      abb40(14)=-abb40(49)*abb40(14)
      abb40(20)=abb40(54)*abb40(20)
      abb40(14)=abb40(14)+abb40(20)
      abb40(14)=abb40(6)*abb40(14)
      abb40(14)=abb40(51)+abb40(14)
      abb40(14)=abb40(6)*abb40(14)
      abb40(20)=-abb40(52)*abb40(21)
      abb40(21)=abb40(42)*abb40(22)
      abb40(20)=abb40(20)+abb40(21)
      abb40(20)=abb40(20)*abb40(36)
      abb40(14)=abb40(20)+abb40(14)
      abb40(14)=abb40(14)*abb40(30)
      abb40(20)=abb40(37)*abb40(24)
      abb40(14)=abb40(20)+abb40(14)
      abb40(15)=4.0_ki*abb40(15)
      abb40(14)=abb40(14)*abb40(15)
      abb40(13)=-abb40(13)*abb40(38)
      abb40(20)=spak3k4*abb40(4)
      abb40(21)=abb40(20)*spbl6k3
      abb40(22)=spak1k4*abb40(4)
      abb40(37)=abb40(22)*spbl6k1
      abb40(21)=abb40(21)-abb40(37)
      abb40(37)=c3*spal5l6
      abb40(42)=-abb40(21)*abb40(37)
      abb40(49)=spak3k4*spbl6k3
      abb40(51)=spak1k4*spbl6k1
      abb40(49)=abb40(49)-abb40(51)
      abb40(51)=c4*abb40(16)*spal5l6
      abb40(52)=abb40(49)*abb40(51)
      abb40(42)=abb40(42)+abb40(52)
      abb40(42)=abb40(7)*abb40(42)
      abb40(52)=abb40(20)*spbl5k3
      abb40(54)=abb40(22)*spbl5k1
      abb40(52)=abb40(52)-abb40(54)
      abb40(37)=abb40(52)*abb40(37)
      abb40(54)=spak3k4*spbl5k3
      abb40(55)=spak1k4*spbl5k1
      abb40(54)=abb40(54)-abb40(55)
      abb40(51)=-abb40(54)*abb40(51)
      abb40(37)=abb40(37)+abb40(51)
      abb40(37)=abb40(6)*abb40(37)
      abb40(37)=abb40(42)+abb40(37)
      abb40(37)=abb40(37)*abb40(24)
      abb40(42)=-c3*abb40(12)
      abb40(51)=abb40(16)*c4
      abb40(55)=abb40(10)*abb40(51)
      abb40(42)=abb40(42)+abb40(55)
      abb40(42)=abb40(7)*abb40(42)
      abb40(50)=-c3*spak2l6*abb40(50)
      abb40(35)=abb40(8)*abb40(35)*abb40(51)
      abb40(35)=abb40(50)+abb40(35)
      abb40(35)=abb40(6)*abb40(35)
      abb40(35)=2.0_ki*abb40(42)+abb40(35)
      abb40(35)=abb40(6)*abb40(35)
      abb40(42)=-c3*spak2l5*abb40(53)
      abb40(32)=abb40(9)*abb40(32)*abb40(51)
      abb40(32)=abb40(42)+abb40(32)
      abb40(32)=abb40(32)*abb40(36)
      abb40(32)=abb40(32)+abb40(35)
      abb40(32)=abb40(32)*abb40(30)
      abb40(32)=abb40(37)+abb40(32)
      abb40(15)=abb40(32)*abb40(15)
      abb40(16)=abb40(16)+1.0_ki
      abb40(32)=abb40(16)*spak3k4
      abb40(35)=spbl6k3*abb40(32)
      abb40(37)=abb40(16)*spak1k4
      abb40(42)=spbl6k1*abb40(37)
      abb40(35)=abb40(35)-abb40(42)
      abb40(42)=2.0_ki*spal6k7
      abb40(35)=abb40(35)*abb40(42)
      abb40(32)=spbl5k3*abb40(32)
      abb40(37)=spbl5k1*abb40(37)
      abb40(32)=abb40(32)-abb40(37)
      abb40(37)=2.0_ki*spal5k7
      abb40(32)=abb40(32)*abb40(37)
      abb40(10)=spak2k7*abb40(10)
      abb40(32)=-abb40(10)+abb40(35)+abb40(32)
      abb40(32)=abb40(32)*c4
      abb40(35)=abb40(54)*NC
      abb40(35)=abb40(35)+abb40(52)
      abb40(35)=abb40(35)*abb40(37)
      abb40(37)=abb40(49)*NC
      abb40(21)=abb40(37)+abb40(21)
      abb40(21)=abb40(21)*abb40(42)
      abb40(10)=abb40(10)*NC
      abb40(10)=-abb40(10)+abb40(35)+abb40(21)
      abb40(10)=abb40(10)*c3
      abb40(10)=abb40(32)-abb40(10)
      abb40(10)=abb40(10)*abb40(24)
      abb40(11)=abb40(11)+abb40(12)
      abb40(12)=abb40(8)*spak2k7
      abb40(21)=c3*abb40(12)*abb40(11)
      abb40(17)=abb40(17)+spbk2k1
      abb40(17)=abb40(17)*spak1k4
      abb40(19)=abb40(19)+spbk3k2
      abb40(19)=abb40(19)*spak3k4
      abb40(17)=abb40(17)+abb40(19)
      abb40(12)=c4*abb40(12)*abb40(17)
      abb40(12)=abb40(21)-abb40(12)
      abb40(12)=abb40(12)*abb40(6)
      abb40(19)=abb40(9)*spak2k7
      abb40(11)=c3*abb40(19)*abb40(11)
      abb40(17)=c4*abb40(19)*abb40(17)
      abb40(11)=abb40(11)-abb40(17)
      abb40(17)=abb40(7)*abb40(11)
      abb40(17)=abb40(17)+abb40(12)
      abb40(19)=2.0_ki*abb40(30)
      abb40(17)=abb40(17)*abb40(19)
      abb40(17)=abb40(10)+abb40(17)
      abb40(17)=abb40(28)*abb40(6)*abb40(17)
      abb40(21)=NC+abb40(4)
      abb40(24)=c3*spak4k7*abb40(21)
      abb40(30)=c4*spak4k7*abb40(16)
      abb40(24)=abb40(24)-abb40(30)
      abb40(25)=16.0_ki*abb40(25)
      abb40(25)=-abb40(24)*abb40(25)
      abb40(30)=abb40(25)*abb40(6)
      abb40(32)=NC*spak3k4
      abb40(20)=abb40(32)+abb40(20)
      abb40(20)=abb40(20)*c3
      abb40(16)=abb40(16)*c4
      abb40(32)=abb40(16)*spak3k4
      abb40(20)=abb40(20)-abb40(32)
      abb40(32)=abb40(38)*abb40(6)
      abb40(35)=abb40(20)*abb40(32)
      abb40(37)=NC*spak1k4
      abb40(22)=abb40(37)+abb40(22)
      abb40(22)=abb40(22)*c3
      abb40(37)=abb40(16)*spak1k4
      abb40(22)=abb40(22)-abb40(37)
      abb40(32)=-abb40(22)*abb40(32)
      abb40(10)=abb40(7)*abb40(10)
      abb40(11)=abb40(11)*abb40(36)
      abb40(12)=abb40(7)*abb40(12)
      abb40(11)=abb40(11)+abb40(12)
      abb40(11)=abb40(11)*abb40(19)
      abb40(10)=abb40(10)+abb40(11)
      abb40(10)=abb40(10)*abb40(28)
      abb40(11)=abb40(25)*abb40(7)
      abb40(12)=abb40(38)*abb40(7)
      abb40(19)=abb40(20)*abb40(12)
      abb40(12)=-abb40(22)*abb40(12)
      abb40(20)=spak3l6*abb40(29)
      abb40(22)=spak3l5*abb40(33)
      abb40(20)=abb40(20)+abb40(22)
      abb40(20)=c3*abb40(20)
      abb40(22)=-spal5k7*spak3l6
      abb40(25)=-spal6k7*spak3l5
      abb40(22)=abb40(22)+abb40(25)
      abb40(22)=c4*abb40(22)
      abb40(20)=abb40(20)+abb40(22)
      abb40(22)=abb40(47)*spak3l5
      abb40(25)=spbk7k2*spak3k7
      abb40(22)=abb40(22)-abb40(25)
      abb40(22)=abb40(22)*abb40(31)
      abb40(28)=abb40(43)*spak3l6
      abb40(25)=abb40(28)-abb40(25)
      abb40(25)=abb40(25)*abb40(34)
      abb40(20)=abb40(25)+3.0_ki*abb40(20)+abb40(22)
      abb40(20)=spbk3k1*abb40(20)
      abb40(22)=-spbk4k1*abb40(41)
      abb40(25)=abb40(48)*spbk4k1
      abb40(28)=abb40(45)*spbk4k1
      abb40(25)=abb40(25)-abb40(28)
      abb40(25)=abb40(25)*abb40(31)
      abb40(36)=abb40(44)*spbk4k1
      abb40(28)=abb40(36)-abb40(28)
      abb40(28)=abb40(28)*abb40(34)
      abb40(20)=abb40(20)+abb40(28)+3.0_ki*abb40(22)+abb40(25)
      abb40(18)=abb40(23)*abb40(18)
      abb40(22)=2.0_ki*abb40(18)
      abb40(20)=abb40(20)*abb40(22)
      abb40(23)=-spbk4k1*abb40(24)
      abb40(21)=abb40(21)*c3
      abb40(16)=abb40(21)-abb40(16)
      abb40(21)=-spbk3k1*spak3k7*abb40(16)
      abb40(21)=abb40(21)+abb40(23)
      abb40(18)=8.0_ki*abb40(18)
      abb40(21)=abb40(21)*abb40(18)
      abb40(23)=abb40(6)*abb40(21)
      abb40(21)=abb40(7)*abb40(21)
      abb40(25)=-spak1l6*abb40(29)
      abb40(28)=-spak1l5*abb40(33)
      abb40(25)=abb40(25)+abb40(28)
      abb40(25)=c3*abb40(25)
      abb40(28)=spal5k7*spak1l6
      abb40(29)=spal6k7*spak1l5
      abb40(28)=abb40(28)+abb40(29)
      abb40(28)=c4*abb40(28)
      abb40(25)=abb40(25)+abb40(28)
      abb40(28)=abb40(47)*spak1l5
      abb40(29)=spbk7k2*spak1k7
      abb40(28)=abb40(28)-abb40(29)
      abb40(28)=-abb40(28)*abb40(31)
      abb40(33)=abb40(43)*spak1l6
      abb40(29)=abb40(33)-abb40(29)
      abb40(29)=-abb40(29)*abb40(34)
      abb40(25)=abb40(29)+3.0_ki*abb40(25)+abb40(28)
      abb40(25)=spbk3k1*abb40(25)
      abb40(28)=spbk4k3*abb40(41)
      abb40(29)=abb40(48)*spbk4k3
      abb40(33)=abb40(45)*spbk4k3
      abb40(29)=abb40(29)-abb40(33)
      abb40(29)=-abb40(29)*abb40(31)
      abb40(31)=abb40(44)*spbk4k3
      abb40(31)=abb40(31)-abb40(33)
      abb40(31)=-abb40(31)*abb40(34)
      abb40(25)=abb40(25)+abb40(31)+3.0_ki*abb40(28)+abb40(29)
      abb40(22)=abb40(25)*abb40(22)
      abb40(24)=-spbk4k3*abb40(24)
      abb40(16)=-spbk3k1*spak1k7*abb40(16)
      abb40(16)=abb40(16)+abb40(24)
      abb40(16)=abb40(16)*abb40(18)
      abb40(18)=-abb40(6)*abb40(16)
      abb40(16)=-abb40(7)*abb40(16)
      R2d40=abb40(26)
      rat2 = rat2 + R2d40
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='40' value='", &
          & R2d40, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd40h0