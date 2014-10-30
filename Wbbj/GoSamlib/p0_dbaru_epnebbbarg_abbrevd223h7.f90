module     p0_dbaru_epnebbbarg_abbrevd223h7
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh7
   implicit none
   private
   complex(ki), dimension(64), public :: abb223
   complex(ki), public :: R2d223
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
      abb223(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb223(2)=1.0_ki/(es34+es567-es12-es234)
      abb223(3)=1.0_ki/(es71+es34+es56-es712-es234)
      abb223(4)=NC**(-1)
      abb223(5)=sqrt2**(-1)
      abb223(6)=es56**(-1)
      abb223(7)=spak2l5**(-1)
      abb223(8)=spbk7k2**(-1)
      abb223(9)=spak2l6**(-1)
      abb223(10)=abb223(8)*spak1k4
      abb223(11)=TR*gW
      abb223(11)=abb223(1)*CVDU*i_*mB*abb223(5)*abb223(3)*abb223(2)*abb223(11)*&
      &*2
      abb223(12)=abb223(6)*abb223(11)
      abb223(13)=abb223(12)*abb223(10)
      abb223(14)=abb223(13)*c3
      abb223(15)=spbl5k2**2
      abb223(16)=abb223(14)*abb223(15)
      abb223(17)=abb223(13)*c4
      abb223(18)=abb223(15)*abb223(17)
      abb223(19)=abb223(4)*abb223(18)
      abb223(16)=abb223(16)-abb223(19)
      abb223(19)=spak4k7*spbk4k3
      abb223(20)=abb223(19)*abb223(9)
      abb223(21)=spak1k7*spbk3k1
      abb223(22)=abb223(21)*abb223(9)
      abb223(23)=abb223(20)+abb223(22)
      abb223(16)=abb223(23)*abb223(16)
      abb223(24)=abb223(16)*abb223(4)
      abb223(25)=NC*c3
      abb223(13)=abb223(25)*abb223(13)
      abb223(26)=abb223(15)*abb223(13)
      abb223(18)=abb223(26)-abb223(18)
      abb223(18)=abb223(18)*abb223(23)
      abb223(24)=abb223(24)-abb223(18)
      abb223(24)=abb223(24)*spak2l5
      abb223(26)=spbl6k2**2
      abb223(27)=abb223(14)*abb223(26)
      abb223(28)=abb223(26)*abb223(17)
      abb223(29)=abb223(4)*abb223(28)
      abb223(27)=abb223(27)-abb223(29)
      abb223(29)=abb223(19)*abb223(7)
      abb223(30)=abb223(21)*abb223(7)
      abb223(31)=abb223(29)+abb223(30)
      abb223(27)=abb223(31)*abb223(27)
      abb223(32)=abb223(27)*abb223(4)
      abb223(33)=abb223(26)*abb223(13)
      abb223(28)=abb223(33)-abb223(28)
      abb223(28)=abb223(28)*abb223(31)
      abb223(32)=abb223(32)-abb223(28)
      abb223(32)=abb223(32)*spak2l6
      abb223(33)=abb223(19)+abb223(21)
      abb223(34)=spbl5k2*abb223(14)
      abb223(35)=abb223(33)*abb223(34)
      abb223(36)=spbl6k2*abb223(35)
      abb223(37)=abb223(33)*abb223(4)
      abb223(38)=abb223(17)*spbl5k2
      abb223(39)=abb223(38)*spbl6k2
      abb223(40)=abb223(39)*abb223(37)
      abb223(36)=abb223(36)-abb223(40)
      abb223(40)=abb223(36)*abb223(4)
      abb223(41)=abb223(13)*spbl5k2
      abb223(42)=abb223(41)*spbl6k2
      abb223(39)=abb223(42)-abb223(39)
      abb223(39)=abb223(39)*abb223(33)
      abb223(40)=abb223(40)-abb223(39)
      abb223(24)=abb223(32)+abb223(24)+2.0_ki*abb223(40)
      abb223(32)=-4.0_ki*abb223(24)
      abb223(40)=abb223(13)*spbl6k2
      abb223(42)=abb223(17)*spbl6k2
      abb223(40)=abb223(40)-abb223(42)
      abb223(43)=abb223(7)*spbk4k3
      abb223(44)=abb223(43)*abb223(40)
      abb223(45)=spak4k7**2
      abb223(46)=-abb223(45)*abb223(44)
      abb223(30)=abb223(30)*abb223(40)
      abb223(47)=-spak4k7*abb223(30)
      abb223(46)=abb223(46)+abb223(47)
      abb223(46)=spak2l6*abb223(46)
      abb223(41)=abb223(41)-abb223(38)
      abb223(47)=abb223(45)*spbk4k3
      abb223(48)=-abb223(41)*abb223(47)
      abb223(49)=abb223(41)*abb223(21)
      abb223(50)=-spak4k7*abb223(49)
      abb223(46)=abb223(46)+abb223(48)+abb223(50)
      abb223(46)=spbk4k2*abb223(46)
      abb223(29)=abb223(29)*abb223(40)
      abb223(29)=abb223(29)+abb223(30)
      abb223(30)=abb223(29)*spak2l6
      abb223(48)=abb223(41)*abb223(19)
      abb223(48)=abb223(48)+abb223(49)
      abb223(30)=abb223(30)+abb223(48)
      abb223(49)=spbk2k1*spak1k7
      abb223(50)=-abb223(30)*abb223(49)
      abb223(46)=abb223(46)+abb223(50)
      abb223(46)=spbk7l6*abb223(46)
      abb223(50)=abb223(9)*spbk4k3
      abb223(51)=abb223(50)*abb223(41)
      abb223(45)=-abb223(45)*abb223(51)
      abb223(22)=abb223(41)*abb223(22)
      abb223(52)=-spak4k7*abb223(22)
      abb223(45)=abb223(45)+abb223(52)
      abb223(45)=spak2l5*abb223(45)
      abb223(47)=-abb223(40)*abb223(47)
      abb223(21)=abb223(40)*abb223(21)
      abb223(52)=-spak4k7*abb223(21)
      abb223(45)=abb223(45)+abb223(47)+abb223(52)
      abb223(45)=spbk4k2*abb223(45)
      abb223(20)=abb223(20)*abb223(41)
      abb223(20)=abb223(20)+abb223(22)
      abb223(22)=abb223(20)*spak2l5
      abb223(19)=abb223(40)*abb223(19)
      abb223(19)=abb223(19)+abb223(21)
      abb223(21)=abb223(22)+abb223(19)
      abb223(22)=-abb223(21)*abb223(49)
      abb223(22)=abb223(45)+abb223(22)
      abb223(22)=spbk7l5*abb223(22)
      abb223(30)=-spbk7l6*abb223(30)
      abb223(21)=-spbk7l5*abb223(21)
      abb223(21)=abb223(30)+abb223(21)
      abb223(21)=spak3k7*spbk3k2*abb223(21)
      abb223(30)=abb223(28)*spak2l6
      abb223(45)=abb223(18)*spak2l5
      abb223(30)=abb223(45)+abb223(30)+2.0_ki*abb223(39)
      abb223(45)=es712-es71
      abb223(47)=abb223(45)+es567
      abb223(47)=-2.0_ki*abb223(47)
      abb223(47)=abb223(30)*abb223(47)
      abb223(49)=es12*abb223(30)
      abb223(52)=abb223(33)*spbl5k2*spbl6k2
      abb223(26)=spak2l6*abb223(31)*abb223(26)
      abb223(15)=spak2l5*abb223(23)*abb223(15)
      abb223(15)=abb223(15)+2.0_ki*abb223(52)+abb223(26)
      abb223(25)=abb223(25)-c4
      abb223(10)=abb223(15)*abb223(25)*abb223(11)*abb223(10)
      abb223(10)=abb223(49)+abb223(10)
      abb223(10)=abb223(21)+abb223(22)+2.0_ki*abb223(10)+abb223(46)+abb223(47)
      abb223(10)=4.0_ki*abb223(10)
      abb223(11)=2.0_ki*abb223(4)
      abb223(15)=abb223(36)*abb223(11)
      abb223(15)=abb223(15)+abb223(39)
      abb223(21)=abb223(27)*abb223(11)
      abb223(21)=abb223(21)+abb223(28)
      abb223(21)=spak2l6*abb223(21)
      abb223(11)=abb223(16)*abb223(11)
      abb223(11)=abb223(11)+abb223(18)
      abb223(11)=spak2l5*abb223(11)
      abb223(11)=abb223(11)+2.0_ki*abb223(15)+abb223(21)
      abb223(11)=8.0_ki*abb223(11)
      abb223(15)=abb223(40)*abb223(7)
      abb223(16)=abb223(41)*abb223(9)
      abb223(18)=abb223(15)+abb223(16)
      abb223(18)=abb223(18)*spbk3k2
      abb223(21)=abb223(18)*es12
      abb223(12)=abb223(12)*abb223(25)
      abb223(22)=-abb223(12)*abb223(8)*spak1k4**2
      abb223(25)=-spbl6k2*abb223(22)
      abb223(26)=abb223(25)*abb223(43)
      abb223(27)=-spbl5k2*abb223(22)
      abb223(28)=abb223(27)*abb223(50)
      abb223(36)=abb223(26)+abb223(28)
      abb223(36)=abb223(36)*spbk2k1
      abb223(39)=abb223(7)*spbk3k1
      abb223(46)=abb223(25)*abb223(39)
      abb223(47)=abb223(9)*spbk3k1
      abb223(49)=abb223(27)*abb223(47)
      abb223(52)=abb223(46)+abb223(49)
      abb223(52)=abb223(52)*spbk4k2
      abb223(21)=-abb223(21)+abb223(36)-abb223(52)
      abb223(21)=abb223(21)*spak2k7
      abb223(36)=abb223(47)*abb223(41)
      abb223(52)=abb223(39)*abb223(40)
      abb223(53)=abb223(36)+abb223(52)
      abb223(54)=abb223(53)*spak1k7
      abb223(55)=abb223(51)+abb223(44)
      abb223(56)=abb223(55)*spak4k7
      abb223(54)=abb223(54)+abb223(56)
      abb223(45)=-4.0_ki*es12-es234+3.0_ki*abb223(45)
      abb223(45)=abb223(45)*abb223(54)
      abb223(18)=abb223(18)*spak2k7
      abb223(54)=abb223(18)+abb223(54)
      abb223(54)=abb223(54)*es34
      abb223(56)=es23-es123
      abb223(18)=abb223(56)*abb223(18)
      abb223(18)=abb223(21)+abb223(45)+abb223(54)-abb223(18)
      abb223(18)=8.0_ki*abb223(18)
      abb223(21)=8.0_ki*abb223(30)
      abb223(13)=abb223(13)-abb223(17)
      abb223(30)=abb223(13)*abb223(23)
      abb223(45)=-spak3l6*abb223(30)
      abb223(54)=abb223(13)*abb223(31)
      abb223(57)=spak3l5*abb223(54)
      abb223(45)=abb223(57)+abb223(45)
      abb223(57)=spbl6l5*spbk3k2
      abb223(45)=abb223(57)*abb223(45)
      abb223(57)=abb223(57)*abb223(13)
      abb223(58)=abb223(57)*abb223(9)
      abb223(59)=abb223(58)*spal6k7
      abb223(57)=abb223(57)*abb223(7)
      abb223(60)=abb223(57)*spal5k7
      abb223(59)=abb223(59)-abb223(60)
      abb223(56)=abb223(56)-es34
      abb223(59)=-abb223(59)*abb223(56)
      abb223(60)=spak4l6*spbk4k2
      abb223(61)=spak1l6*spbk2k1
      abb223(60)=abb223(60)+abb223(61)
      abb223(30)=-abb223(30)*abb223(60)
      abb223(61)=spak4l5*spbk4k2
      abb223(62)=spak1l5*spbk2k1
      abb223(61)=abb223(61)+abb223(62)
      abb223(54)=abb223(54)*abb223(61)
      abb223(30)=abb223(54)+abb223(30)
      abb223(30)=spbl6l5*abb223(30)
      abb223(12)=-spak1k4*abb223(12)
      abb223(54)=abb223(12)*abb223(23)
      abb223(62)=abb223(22)*spbk4k2
      abb223(63)=abb223(47)*abb223(62)
      abb223(22)=abb223(22)*spbk2k1
      abb223(64)=-abb223(50)*abb223(22)
      abb223(54)=abb223(64)+3.0_ki*abb223(54)+abb223(63)
      abb223(54)=spbl6l5*abb223(54)
      abb223(58)=-es12*abb223(58)
      abb223(54)=abb223(58)+abb223(54)
      abb223(54)=spal6k7*abb223(54)
      abb223(58)=-abb223(12)*abb223(31)
      abb223(62)=-abb223(39)*abb223(62)
      abb223(22)=abb223(43)*abb223(22)
      abb223(22)=abb223(22)+3.0_ki*abb223(58)+abb223(62)
      abb223(22)=spbl6l5*abb223(22)
      abb223(57)=es12*abb223(57)
      abb223(22)=abb223(57)+abb223(22)
      abb223(22)=spal5k7*abb223(22)
      abb223(22)=abb223(54)+abb223(22)+abb223(30)+abb223(59)+abb223(45)
      abb223(22)=8.0_ki*abb223(22)
      abb223(24)=8.0_ki*abb223(24)
      abb223(30)=-abb223(38)*abb223(37)
      abb223(30)=abb223(30)+abb223(35)
      abb223(30)=abb223(4)*abb223(30)
      abb223(35)=abb223(42)*abb223(4)
      abb223(45)=spbl6k2*abb223(14)
      abb223(54)=abb223(35)-abb223(45)
      abb223(57)=-abb223(4)*abb223(31)*abb223(54)
      abb223(57)=abb223(57)+abb223(29)
      abb223(57)=spak2l6*abb223(57)
      abb223(30)=abb223(57)+abb223(30)+abb223(48)
      abb223(30)=spbk7l6*abb223(30)
      abb223(33)=abb223(45)*abb223(33)
      abb223(37)=-abb223(42)*abb223(37)
      abb223(33)=abb223(37)+abb223(33)
      abb223(33)=abb223(4)*abb223(33)
      abb223(37)=abb223(38)*abb223(4)
      abb223(48)=abb223(37)-abb223(34)
      abb223(57)=-abb223(4)*abb223(23)*abb223(48)
      abb223(57)=abb223(57)+abb223(20)
      abb223(57)=spak2l5*abb223(57)
      abb223(19)=abb223(57)+abb223(33)+abb223(19)
      abb223(19)=spbk7l5*abb223(19)
      abb223(19)=abb223(30)+abb223(19)
      abb223(30)=abb223(15)*spak2l6
      abb223(30)=abb223(30)+abb223(41)
      abb223(30)=spbl6k3*abb223(30)
      abb223(33)=abb223(16)*spak2l5
      abb223(33)=abb223(33)+abb223(40)
      abb223(33)=spbl5k3*abb223(33)
      abb223(30)=abb223(33)+abb223(30)
      abb223(33)=abb223(56)+es12
      abb223(30)=abb223(33)*abb223(30)
      abb223(33)=spbk3k1*abb223(27)
      abb223(57)=spak2l6*abb223(46)
      abb223(33)=abb223(33)+abb223(57)
      abb223(33)=spbl6k4*abb223(33)
      abb223(57)=spbk3k1*abb223(25)
      abb223(58)=spak2l5*abb223(49)
      abb223(57)=abb223(57)+abb223(58)
      abb223(57)=spbl5k4*abb223(57)
      abb223(58)=spbk4k3*abb223(27)
      abb223(59)=spak2l6*abb223(26)
      abb223(58)=abb223(58)+abb223(59)
      abb223(58)=spbl6k1*abb223(58)
      abb223(59)=spbk4k3*abb223(25)
      abb223(62)=spak2l5*abb223(28)
      abb223(59)=abb223(59)+abb223(62)
      abb223(59)=spbl5k1*abb223(59)
      abb223(19)=abb223(59)+abb223(58)+abb223(57)+abb223(33)+2.0_ki*abb223(19)+&
      &abb223(30)
      abb223(19)=4.0_ki*abb223(19)
      abb223(30)=abb223(50)*abb223(38)
      abb223(33)=abb223(43)*abb223(42)
      abb223(30)=abb223(30)+abb223(33)
      abb223(30)=abb223(30)*abb223(4)
      abb223(33)=abb223(34)*abb223(50)
      abb223(57)=abb223(45)*abb223(43)
      abb223(30)=abb223(30)-abb223(33)-abb223(57)
      abb223(30)=abb223(30)*abb223(4)
      abb223(30)=abb223(30)-abb223(55)
      abb223(30)=abb223(30)*spak2k4
      abb223(38)=abb223(47)*abb223(38)
      abb223(42)=abb223(39)*abb223(42)
      abb223(38)=abb223(38)+abb223(42)
      abb223(38)=abb223(38)*abb223(4)
      abb223(34)=abb223(34)*abb223(47)
      abb223(42)=abb223(45)*abb223(39)
      abb223(38)=abb223(38)-abb223(34)-abb223(42)
      abb223(38)=abb223(38)*abb223(4)
      abb223(38)=abb223(38)-abb223(53)
      abb223(38)=abb223(38)*spak1k2
      abb223(30)=abb223(30)-abb223(38)
      abb223(30)=32.0_ki*abb223(30)
      abb223(17)=abb223(17)*abb223(4)
      abb223(14)=abb223(17)-abb223(14)
      abb223(14)=abb223(14)*abb223(4)
      abb223(13)=abb223(14)-abb223(13)
      abb223(14)=spak4l6*abb223(50)*abb223(13)
      abb223(17)=-spak4l5*abb223(43)*abb223(13)
      abb223(38)=spak1l6*abb223(47)*abb223(13)
      abb223(13)=-spak1l5*abb223(39)*abb223(13)
      abb223(13)=abb223(13)+abb223(38)+abb223(14)+abb223(17)
      abb223(13)=32.0_ki*spbl6l5*abb223(13)
      abb223(14)=abb223(48)*abb223(4)
      abb223(14)=abb223(14)-abb223(41)
      abb223(17)=spbk4k3*abb223(14)
      abb223(38)=abb223(35)*abb223(43)
      abb223(38)=abb223(38)-abb223(57)
      abb223(38)=abb223(38)*abb223(4)
      abb223(38)=abb223(38)-abb223(44)
      abb223(44)=spak2l6*abb223(38)
      abb223(17)=abb223(44)+abb223(17)
      abb223(17)=8.0_ki*abb223(17)
      abb223(44)=abb223(54)*abb223(4)
      abb223(44)=abb223(44)-abb223(40)
      abb223(45)=spbk4k3*abb223(44)
      abb223(48)=abb223(37)*abb223(50)
      abb223(33)=abb223(48)-abb223(33)
      abb223(33)=abb223(33)*abb223(4)
      abb223(33)=abb223(33)-abb223(51)
      abb223(48)=spak2l5*abb223(33)
      abb223(45)=abb223(48)+abb223(45)
      abb223(45)=8.0_ki*abb223(45)
      abb223(48)=-spbl6k2*abb223(12)
      abb223(51)=abb223(48)*abb223(31)
      abb223(53)=es12*spbk3k2
      abb223(54)=abb223(15)*abb223(53)
      abb223(46)=spbk4k2*abb223(46)
      abb223(26)=-spbk2k1*abb223(26)
      abb223(26)=abb223(54)+abb223(26)+3.0_ki*abb223(51)+abb223(46)
      abb223(26)=spal6k7*abb223(26)
      abb223(46)=spbk4k2*abb223(39)
      abb223(51)=-spbk2k1*abb223(43)
      abb223(46)=abb223(51)+abb223(46)
      abb223(27)=abb223(27)*abb223(46)
      abb223(12)=-spbl5k2*abb223(12)
      abb223(46)=abb223(12)*abb223(31)
      abb223(51)=abb223(41)*abb223(7)
      abb223(54)=abb223(51)*abb223(53)
      abb223(27)=abb223(54)+3.0_ki*abb223(46)+abb223(27)
      abb223(27)=spal5k7*abb223(27)
      abb223(46)=spal6k7*spbk3k2
      abb223(15)=abb223(46)*abb223(15)
      abb223(54)=spal5k7*spbk3k2
      abb223(51)=abb223(51)*abb223(54)
      abb223(15)=abb223(15)+abb223(51)
      abb223(15)=abb223(15)*abb223(56)
      abb223(51)=spak3l5*spbk3k2
      abb223(51)=abb223(51)+abb223(61)
      abb223(31)=abb223(51)*abb223(41)*abb223(31)
      abb223(41)=spak3l6*spbk3k2
      abb223(41)=abb223(41)+abb223(60)
      abb223(29)=abb223(29)*abb223(41)
      abb223(15)=abb223(26)+abb223(27)+abb223(29)+abb223(31)+abb223(15)
      abb223(15)=4.0_ki*abb223(15)
      abb223(26)=-spak4l6*abb223(38)
      abb223(27)=-spak4l5*abb223(43)*abb223(14)
      abb223(29)=abb223(35)*abb223(39)
      abb223(29)=abb223(29)-abb223(42)
      abb223(29)=abb223(29)*abb223(4)
      abb223(29)=abb223(29)-abb223(52)
      abb223(31)=-spak1l6*abb223(29)
      abb223(35)=-spak1l5*abb223(39)*abb223(14)
      abb223(26)=abb223(35)+abb223(31)+abb223(26)+abb223(27)
      abb223(26)=16.0_ki*abb223(26)
      abb223(27)=spbk4k2*abb223(47)
      abb223(31)=-spbk2k1*abb223(50)
      abb223(27)=abb223(31)+abb223(27)
      abb223(25)=abb223(25)*abb223(27)
      abb223(27)=abb223(48)*abb223(23)
      abb223(31)=abb223(40)*abb223(9)
      abb223(35)=abb223(31)*abb223(53)
      abb223(25)=abb223(35)+3.0_ki*abb223(27)+abb223(25)
      abb223(25)=spal6k7*abb223(25)
      abb223(12)=abb223(12)*abb223(23)
      abb223(27)=abb223(16)*abb223(53)
      abb223(35)=spbk4k2*abb223(49)
      abb223(28)=-spbk2k1*abb223(28)
      abb223(12)=abb223(27)+abb223(28)+3.0_ki*abb223(12)+abb223(35)
      abb223(12)=spal5k7*abb223(12)
      abb223(16)=abb223(54)*abb223(16)
      abb223(27)=abb223(31)*abb223(46)
      abb223(16)=abb223(16)+abb223(27)
      abb223(16)=abb223(16)*abb223(56)
      abb223(23)=abb223(41)*abb223(40)*abb223(23)
      abb223(20)=abb223(20)*abb223(51)
      abb223(12)=abb223(25)+abb223(12)+abb223(20)+abb223(23)+abb223(16)
      abb223(12)=4.0_ki*abb223(12)
      abb223(16)=-spak4l6*abb223(50)*abb223(44)
      abb223(20)=-spak4l5*abb223(33)
      abb223(23)=-spak1l6*abb223(47)*abb223(44)
      abb223(25)=abb223(37)*abb223(47)
      abb223(25)=abb223(25)-abb223(34)
      abb223(25)=abb223(25)*abb223(4)
      abb223(25)=abb223(25)-abb223(36)
      abb223(27)=-spak1l5*abb223(25)
      abb223(16)=abb223(27)+abb223(23)+abb223(16)+abb223(20)
      abb223(16)=16.0_ki*abb223(16)
      abb223(14)=spbk3k1*abb223(14)
      abb223(20)=spak2l6*abb223(29)
      abb223(14)=abb223(20)+abb223(14)
      abb223(14)=8.0_ki*abb223(14)
      abb223(20)=spbk3k1*abb223(44)
      abb223(23)=spak2l5*abb223(25)
      abb223(20)=abb223(23)+abb223(20)
      abb223(20)=8.0_ki*abb223(20)
      R2d223=abb223(32)
      rat2 = rat2 + R2d223
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='223' value='", &
          & R2d223, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd223h7