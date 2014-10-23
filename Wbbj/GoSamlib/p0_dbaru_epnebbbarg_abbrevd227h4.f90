module     p0_dbaru_epnebbbarg_abbrevd227h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(67), public :: abb227
   complex(ki), public :: R2d227
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
      abb227(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb227(2)=1.0_ki/(-es71+es56-es567+es234)
      abb227(3)=NC**(-1)
      abb227(4)=sqrt2**(-1)
      abb227(5)=es234**(-1)
      abb227(6)=es56**(-1)
      abb227(7)=spbl5k2**(-1)
      abb227(8)=spbk7k2**(-1)
      abb227(9)=spbl6k2**(-1)
      abb227(10)=TR*gW
      abb227(10)=CVDU*i_*mB*abb227(4)*abb227(2)*abb227(1)*abb227(10)**2
      abb227(11)=abb227(10)*abb227(5)*abb227(6)
      abb227(12)=abb227(11)*abb227(8)
      abb227(13)=abb227(12)*spak1l5
      abb227(14)=abb227(13)*abb227(9)
      abb227(15)=abb227(12)*spak1l6
      abb227(16)=abb227(15)*abb227(7)
      abb227(14)=abb227(14)+abb227(16)
      abb227(16)=spbk3k2**2
      abb227(17)=abb227(16)*c1
      abb227(18)=spak3k4*spbk2k1
      abb227(14)=abb227(18)*abb227(14)*abb227(17)
      abb227(12)=abb227(12)*c4
      abb227(19)=abb227(12)*spak1l5
      abb227(20)=abb227(16)*abb227(19)
      abb227(21)=abb227(20)*abb227(9)
      abb227(12)=abb227(12)*spak1l6
      abb227(22)=abb227(12)*abb227(16)
      abb227(23)=abb227(22)*abb227(7)
      abb227(21)=abb227(21)+abb227(23)
      abb227(23)=abb227(18)*abb227(3)
      abb227(21)=abb227(21)*abb227(23)
      abb227(14)=abb227(14)-abb227(21)
      abb227(14)=abb227(14)*abb227(3)
      abb227(21)=NC*c1
      abb227(24)=abb227(15)*abb227(21)
      abb227(25)=abb227(24)*abb227(16)
      abb227(25)=abb227(25)-abb227(22)
      abb227(26)=abb227(25)*abb227(7)
      abb227(27)=abb227(13)*abb227(21)
      abb227(28)=abb227(27)*abb227(16)
      abb227(28)=abb227(28)-abb227(20)
      abb227(29)=abb227(28)*abb227(9)
      abb227(26)=abb227(26)+abb227(29)
      abb227(29)=abb227(26)*abb227(18)
      abb227(14)=abb227(14)-abb227(29)
      abb227(14)=abb227(14)*spak1k7
      abb227(22)=abb227(22)*spak3k4
      abb227(30)=spbl6k2*abb227(7)
      abb227(31)=abb227(22)*abb227(30)
      abb227(20)=abb227(20)*spak3k4
      abb227(31)=abb227(31)+abb227(20)
      abb227(31)=abb227(31)*abb227(3)
      abb227(17)=abb227(17)*spak3k4
      abb227(32)=abb227(17)*abb227(15)
      abb227(33)=abb227(32)*abb227(30)
      abb227(17)=abb227(17)*abb227(13)
      abb227(31)=-abb227(31)+abb227(33)+abb227(17)
      abb227(31)=abb227(31)*abb227(3)
      abb227(33)=abb227(25)*spak3k4
      abb227(34)=abb227(33)*abb227(30)
      abb227(35)=abb227(28)*spak3k4
      abb227(34)=abb227(34)+abb227(35)
      abb227(31)=abb227(31)-abb227(34)
      abb227(31)=abb227(31)*spal6k7
      abb227(36)=spbl5k2*abb227(9)
      abb227(20)=abb227(20)*abb227(36)
      abb227(20)=abb227(20)+abb227(22)
      abb227(20)=abb227(20)*abb227(3)
      abb227(17)=abb227(17)*abb227(36)
      abb227(17)=abb227(20)-abb227(17)-abb227(32)
      abb227(17)=abb227(17)*abb227(3)
      abb227(20)=abb227(35)*abb227(36)
      abb227(20)=abb227(20)+abb227(33)
      abb227(17)=abb227(17)+abb227(20)
      abb227(17)=abb227(17)*spal5k7
      abb227(14)=abb227(14)+abb227(31)-abb227(17)
      abb227(17)=-4.0_ki*abb227(14)
      abb227(22)=c4*spak1l5
      abb227(31)=abb227(11)*spbk3k2
      abb227(32)=abb227(22)*abb227(31)
      abb227(37)=abb227(21)*abb227(31)
      abb227(38)=abb227(37)*spak1l5
      abb227(32)=abb227(32)-abb227(38)
      abb227(38)=abb227(32)*spak4k7
      abb227(39)=c4*spak1l6
      abb227(31)=abb227(39)*abb227(31)
      abb227(37)=abb227(37)*spak1l6
      abb227(31)=abb227(31)-abb227(37)
      abb227(37)=abb227(30)*spak4k7
      abb227(40)=abb227(37)*abb227(31)
      abb227(38)=abb227(38)+abb227(40)
      abb227(38)=abb227(38)*spal6k7
      abb227(40)=abb227(31)*spak4k7
      abb227(41)=abb227(36)*spak4k7
      abb227(42)=abb227(41)*abb227(32)
      abb227(40)=abb227(40)+abb227(42)
      abb227(40)=abb227(40)*spal5k7
      abb227(42)=abb227(32)*abb227(9)
      abb227(43)=abb227(31)*abb227(7)
      abb227(44)=abb227(42)+abb227(43)
      abb227(45)=spak1k7*spbk2k1
      abb227(46)=abb227(44)*abb227(45)
      abb227(47)=abb227(46)*spak4k7
      abb227(38)=abb227(47)+abb227(38)+abb227(40)
      abb227(40)=es34+es23
      abb227(40)=2.0_ki*abb227(40)
      abb227(38)=abb227(38)*abb227(40)
      abb227(40)=abb227(29)*spak1k7
      abb227(47)=abb227(20)*spal5k7
      abb227(48)=abb227(34)*spal6k7
      abb227(40)=abb227(48)+abb227(40)+abb227(47)
      abb227(47)=es712-es12
      abb227(48)=-es456+abb227(47)+es123
      abb227(48)=es567+es71-2.0_ki*abb227(48)
      abb227(48)=abb227(40)*abb227(48)
      abb227(49)=abb227(21)-c4
      abb227(11)=abb227(11)*abb227(49)
      abb227(50)=-spak1l5*abb227(11)
      abb227(51)=-abb227(16)*abb227(50)
      abb227(11)=-spak1l6*abb227(11)
      abb227(52)=-abb227(16)*abb227(11)
      abb227(53)=-abb227(52)*abb227(30)
      abb227(53)=abb227(53)-abb227(51)
      abb227(53)=spal6k7*abb227(53)
      abb227(54)=-abb227(51)*abb227(36)
      abb227(54)=abb227(54)-abb227(52)
      abb227(54)=spal5k7*abb227(54)
      abb227(52)=-abb227(7)*abb227(52)
      abb227(51)=-abb227(9)*abb227(51)
      abb227(51)=abb227(52)+abb227(51)
      abb227(51)=abb227(51)*abb227(45)
      abb227(51)=abb227(51)+abb227(53)+abb227(54)
      abb227(51)=spak3k7*spak2k4*abb227(51)
      abb227(52)=abb227(24)*spbk3k2
      abb227(53)=abb227(12)*spbk3k2
      abb227(52)=abb227(52)-abb227(53)
      abb227(54)=abb227(52)*abb227(30)
      abb227(55)=abb227(27)*spbk3k2
      abb227(56)=spbk3k2*abb227(19)
      abb227(55)=abb227(55)-abb227(56)
      abb227(54)=abb227(54)+abb227(55)
      abb227(57)=spbk4k2*spak4k7
      abb227(58)=abb227(57)*abb227(54)
      abb227(59)=spal6k7*abb227(58)
      abb227(60)=abb227(55)*abb227(36)
      abb227(60)=abb227(60)+abb227(52)
      abb227(61)=abb227(57)*abb227(60)
      abb227(62)=spal5k7*abb227(61)
      abb227(59)=abb227(59)+abb227(62)
      abb227(59)=spak3k4*abb227(59)
      abb227(52)=abb227(52)*abb227(7)
      abb227(55)=abb227(55)*abb227(9)
      abb227(52)=abb227(52)+abb227(55)
      abb227(55)=abb227(52)*abb227(18)
      abb227(62)=abb227(55)*spak1k7
      abb227(63)=abb227(57)*abb227(62)
      abb227(59)=abb227(63)+abb227(59)
      abb227(59)=spbk7k3*abb227(59)
      abb227(51)=abb227(51)+abb227(59)
      abb227(59)=abb227(6)*abb227(10)*spbk3k2
      abb227(63)=abb227(59)*abb227(22)
      abb227(64)=abb227(59)*abb227(21)
      abb227(65)=abb227(64)*spak1l5
      abb227(63)=abb227(63)-abb227(65)
      abb227(65)=2.0_ki*spak4k7
      abb227(66)=abb227(63)*abb227(65)
      abb227(10)=abb227(10)*abb227(49)*abb227(16)*abb227(8)*abb227(5)
      abb227(16)=-spak1l5*abb227(10)
      abb227(49)=abb227(16)*spak3k4
      abb227(49)=abb227(66)-abb227(49)
      abb227(66)=abb227(59)*abb227(39)
      abb227(64)=abb227(64)*spak1l6
      abb227(64)=abb227(66)-abb227(64)
      abb227(66)=abb227(64)*abb227(65)
      abb227(10)=-spak1l6*abb227(10)
      abb227(67)=abb227(10)*spak3k4
      abb227(66)=abb227(66)-abb227(67)
      abb227(67)=-abb227(66)*abb227(30)
      abb227(67)=abb227(67)-abb227(49)
      abb227(67)=spal6k7*abb227(67)
      abb227(49)=-abb227(49)*abb227(36)
      abb227(49)=abb227(49)-abb227(66)
      abb227(49)=spal5k7*abb227(49)
      abb227(10)=abb227(10)*abb227(7)
      abb227(16)=abb227(16)*abb227(9)
      abb227(10)=abb227(10)+abb227(16)
      abb227(10)=abb227(10)*abb227(18)
      abb227(16)=-abb227(7)*abb227(64)
      abb227(63)=-abb227(9)*abb227(63)
      abb227(16)=abb227(16)+abb227(63)
      abb227(16)=spbk2k1*abb227(16)*abb227(65)
      abb227(10)=abb227(10)+abb227(16)
      abb227(10)=spak1k7*abb227(10)
      abb227(10)=abb227(10)+abb227(67)+abb227(49)+abb227(48)+abb227(38)+2.0_ki*&
      &abb227(51)
      abb227(10)=4.0_ki*abb227(10)
      abb227(16)=-16.0_ki*abb227(40)
      abb227(38)=3.0_ki*spak4k7
      abb227(40)=abb227(43)*abb227(38)
      abb227(33)=2.0_ki*abb227(33)
      abb227(43)=abb227(33)*abb227(7)
      abb227(40)=abb227(40)+abb227(43)
      abb227(40)=abb227(40)*spbl6k2
      abb227(43)=abb227(38)*abb227(32)
      abb227(35)=2.0_ki*abb227(35)
      abb227(40)=abb227(40)+abb227(43)+abb227(35)
      abb227(40)=abb227(40)*spal6k7
      abb227(42)=abb227(42)*abb227(38)
      abb227(35)=abb227(35)*abb227(9)
      abb227(35)=abb227(42)+abb227(35)
      abb227(35)=abb227(35)*spbl5k2
      abb227(42)=abb227(38)*abb227(31)
      abb227(33)=abb227(35)+abb227(42)+abb227(33)
      abb227(33)=abb227(33)*spal5k7
      abb227(35)=spbk2k1*abb227(44)*abb227(38)
      abb227(29)=abb227(35)+2.0_ki*abb227(29)
      abb227(29)=abb227(29)*spak1k7
      abb227(35)=abb227(25)*spak4k7
      abb227(38)=abb227(41)*abb227(28)
      abb227(35)=abb227(35)+abb227(38)
      abb227(35)=abb227(35)*spak3l5
      abb227(38)=abb227(28)*spak4k7
      abb227(42)=abb227(37)*abb227(25)
      abb227(38)=abb227(38)+abb227(42)
      abb227(38)=abb227(38)*spak3l6
      abb227(42)=abb227(26)*spbk2k1
      abb227(43)=abb227(42)*spak1k3
      abb227(44)=abb227(43)*spak4k7
      abb227(48)=abb227(52)*spbk2k1
      abb227(49)=abb227(48)*spak1k4
      abb227(51)=abb227(49)*abb227(57)
      abb227(63)=abb227(58)*spak4l6
      abb227(64)=abb227(61)*spak4l5
      abb227(29)=-abb227(63)+abb227(33)+abb227(40)+abb227(51)-abb227(38)+abb227&
      &(29)-abb227(35)+abb227(44)-abb227(64)
      abb227(29)=8.0_ki*abb227(29)
      abb227(14)=8.0_ki*abb227(14)
      abb227(33)=abb227(32)*abb227(36)
      abb227(33)=abb227(33)+abb227(31)
      abb227(33)=abb227(33)*spal5k7
      abb227(31)=abb227(31)*abb227(30)
      abb227(31)=abb227(31)+abb227(32)
      abb227(31)=abb227(31)*spal6k7
      abb227(31)=abb227(46)+abb227(33)+abb227(31)
      abb227(32)=abb227(25)*abb227(30)
      abb227(32)=abb227(32)+abb227(28)
      abb227(33)=abb227(32)*spak3l6
      abb227(28)=abb227(28)*abb227(36)
      abb227(25)=abb227(28)+abb227(25)
      abb227(28)=abb227(25)*spak3l5
      abb227(28)=-abb227(43)+abb227(33)+abb227(28)
      abb227(33)=-abb227(31)-abb227(28)
      abb227(33)=spak2k4*abb227(33)
      abb227(35)=abb227(54)*spak3k4
      abb227(38)=-spal6k7*abb227(35)
      abb227(40)=abb227(60)*spak3k4
      abb227(43)=-spal5k7*abb227(40)
      abb227(38)=-abb227(62)+abb227(38)+abb227(43)
      abb227(38)=spbk7k3*abb227(38)
      abb227(43)=abb227(54)*spak4l6
      abb227(44)=abb227(60)*spak4l5
      abb227(43)=-abb227(49)+abb227(43)+abb227(44)
      abb227(44)=-es23*abb227(43)
      abb227(46)=abb227(8)*abb227(59)
      abb227(39)=abb227(46)*abb227(39)
      abb227(21)=abb227(46)*abb227(21)
      abb227(49)=abb227(21)*spak1l6
      abb227(39)=abb227(39)-abb227(49)
      abb227(49)=abb227(39)*abb227(30)
      abb227(22)=abb227(46)*abb227(22)
      abb227(21)=abb227(21)*spak1l5
      abb227(21)=abb227(22)-abb227(21)
      abb227(22)=abb227(49)+abb227(21)
      abb227(46)=-spak4l6*abb227(22)
      abb227(49)=abb227(21)*abb227(36)
      abb227(49)=abb227(49)+abb227(39)
      abb227(51)=-spak4l5*abb227(49)
      abb227(21)=abb227(21)*abb227(9)
      abb227(39)=abb227(39)*abb227(7)
      abb227(21)=abb227(21)+abb227(39)
      abb227(39)=spak1k4*spbk2k1
      abb227(59)=abb227(21)*abb227(39)
      abb227(26)=-es12*spak3k4*abb227(26)
      abb227(34)=spak2l6*abb227(34)
      abb227(20)=spak2l5*abb227(20)
      abb227(20)=abb227(20)+abb227(34)+abb227(44)+abb227(38)+abb227(26)+abb227(&
      &59)+abb227(46)+abb227(51)+abb227(33)
      abb227(20)=4.0_ki*abb227(20)
      abb227(26)=abb227(30)*abb227(53)
      abb227(26)=abb227(26)+abb227(56)
      abb227(26)=abb227(26)*abb227(3)
      abb227(15)=abb227(15)*c1
      abb227(33)=spbk3k2*abb227(15)
      abb227(34)=abb227(33)*abb227(30)
      abb227(13)=abb227(13)*c1
      abb227(38)=spbk3k2*abb227(13)
      abb227(26)=abb227(26)-abb227(34)-abb227(38)
      abb227(34)=abb227(26)*abb227(3)
      abb227(34)=abb227(34)-abb227(54)
      abb227(44)=abb227(34)*spak4l6
      abb227(46)=abb227(38)*abb227(9)
      abb227(51)=abb227(33)*abb227(7)
      abb227(46)=abb227(46)+abb227(51)
      abb227(51)=abb227(46)*spbk2k1
      abb227(59)=abb227(56)*abb227(9)
      abb227(62)=abb227(53)*abb227(7)
      abb227(59)=abb227(59)+abb227(62)
      abb227(62)=abb227(3)*spbk2k1
      abb227(63)=abb227(59)*abb227(62)
      abb227(51)=abb227(51)-abb227(63)
      abb227(51)=abb227(51)*abb227(3)
      abb227(51)=abb227(51)+abb227(48)
      abb227(63)=abb227(51)*spak1k4
      abb227(56)=abb227(36)*abb227(56)
      abb227(53)=abb227(56)+abb227(53)
      abb227(53)=abb227(53)*abb227(3)
      abb227(38)=abb227(38)*abb227(36)
      abb227(33)=abb227(53)-abb227(38)-abb227(33)
      abb227(38)=-abb227(33)*abb227(3)
      abb227(38)=abb227(38)+abb227(60)
      abb227(53)=abb227(38)*spak4l5
      abb227(44)=-abb227(53)+abb227(44)+abb227(63)
      abb227(44)=32.0_ki*abb227(44)
      abb227(26)=abb227(3)*spak3k4*abb227(26)
      abb227(26)=abb227(26)-abb227(35)
      abb227(26)=8.0_ki*abb227(26)
      abb227(35)=8.0_ki*spak2k4
      abb227(53)=-abb227(34)*abb227(35)
      abb227(33)=abb227(3)*spak3k4*abb227(33)
      abb227(33)=abb227(33)-abb227(40)
      abb227(33)=8.0_ki*abb227(33)
      abb227(40)=abb227(38)*abb227(35)
      abb227(43)=-spbk4k2*abb227(43)
      abb227(31)=-3.0_ki*abb227(31)-abb227(43)
      abb227(31)=spak3k7*abb227(31)
      abb227(56)=abb227(11)*abb227(7)
      abb227(63)=abb227(50)*abb227(9)
      abb227(56)=abb227(56)+abb227(63)
      abb227(56)=abb227(56)*abb227(45)
      abb227(63)=-abb227(11)*abb227(30)
      abb227(63)=-abb227(50)+abb227(63)
      abb227(63)=spal6k7*abb227(63)
      abb227(64)=-abb227(50)*abb227(36)
      abb227(64)=-abb227(11)+abb227(64)
      abb227(64)=spal5k7*abb227(64)
      abb227(63)=-abb227(56)+abb227(63)+abb227(64)
      abb227(63)=abb227(57)*abb227(63)
      abb227(32)=spak3k7*abb227(32)
      abb227(32)=abb227(32)+abb227(58)
      abb227(32)=spak3l6*abb227(32)
      abb227(25)=spak3k7*abb227(25)
      abb227(25)=abb227(25)+abb227(61)
      abb227(25)=spak3l5*abb227(25)
      abb227(42)=-spak3k7*abb227(42)
      abb227(58)=-abb227(57)*abb227(48)
      abb227(42)=abb227(58)+abb227(42)
      abb227(42)=spak1k3*abb227(42)
      abb227(24)=abb227(24)-abb227(12)
      abb227(58)=spbk4k2**2
      abb227(61)=abb227(24)*abb227(58)*abb227(37)
      abb227(27)=abb227(19)-abb227(27)
      abb227(64)=abb227(58)*spak4k7
      abb227(65)=-abb227(27)*abb227(64)
      abb227(61)=abb227(65)+abb227(61)
      abb227(61)=spak4l6*abb227(61)
      abb227(58)=-abb227(27)*abb227(58)*abb227(41)
      abb227(65)=abb227(24)*abb227(64)
      abb227(58)=abb227(65)+abb227(58)
      abb227(58)=spak4l5*abb227(58)
      abb227(65)=abb227(27)*abb227(9)
      abb227(66)=abb227(24)*abb227(7)
      abb227(65)=abb227(65)-abb227(66)
      abb227(39)=abb227(65)*abb227(39)
      abb227(64)=abb227(64)*abb227(39)
      abb227(25)=abb227(42)+abb227(25)+abb227(32)+abb227(31)+abb227(64)+abb227(&
      &58)+3.0_ki*abb227(63)+abb227(61)
      abb227(25)=4.0_ki*abb227(25)
      abb227(31)=abb227(24)*abb227(30)
      abb227(31)=abb227(31)-abb227(27)
      abb227(32)=spbk4k2*abb227(31)
      abb227(42)=abb227(15)*abb227(30)
      abb227(42)=abb227(42)+abb227(13)
      abb227(58)=spbk4k2*abb227(42)
      abb227(30)=abb227(30)*abb227(12)
      abb227(30)=abb227(30)+abb227(19)
      abb227(61)=abb227(3)*spbk4k2
      abb227(63)=-abb227(30)*abb227(61)
      abb227(58)=abb227(63)+abb227(58)
      abb227(58)=abb227(3)*abb227(58)
      abb227(32)=abb227(58)+abb227(32)
      abb227(32)=spak4l6*abb227(32)
      abb227(27)=abb227(27)*abb227(36)
      abb227(24)=abb227(27)-abb227(24)
      abb227(27)=-spbk4k2*abb227(24)
      abb227(58)=abb227(13)*abb227(36)
      abb227(58)=abb227(58)+abb227(15)
      abb227(63)=spbk4k2*abb227(58)
      abb227(36)=abb227(36)*abb227(19)
      abb227(36)=abb227(36)+abb227(12)
      abb227(64)=-abb227(36)*abb227(61)
      abb227(63)=abb227(64)+abb227(63)
      abb227(63)=abb227(3)*abb227(63)
      abb227(27)=abb227(63)+abb227(27)
      abb227(27)=spak4l5*abb227(27)
      abb227(63)=abb227(65)*spbk2k1
      abb227(64)=spbk4k2*abb227(63)
      abb227(12)=abb227(12)*abb227(7)
      abb227(19)=abb227(19)*abb227(9)
      abb227(12)=abb227(12)+abb227(19)
      abb227(12)=abb227(12)*abb227(62)
      abb227(15)=abb227(15)*abb227(7)
      abb227(13)=abb227(13)*abb227(9)
      abb227(13)=abb227(15)+abb227(13)
      abb227(13)=abb227(13)*spbk2k1
      abb227(12)=abb227(12)-abb227(13)
      abb227(13)=abb227(12)*abb227(61)
      abb227(13)=abb227(64)+abb227(13)
      abb227(13)=spak1k4*abb227(13)
      abb227(15)=-spak3l6*abb227(34)
      abb227(19)=spak3l5*abb227(38)
      abb227(61)=-spak1k3*abb227(51)
      abb227(13)=abb227(61)+abb227(19)+abb227(15)+abb227(13)+abb227(32)+abb227(&
      &27)
      abb227(13)=16.0_ki*abb227(13)
      abb227(15)=-spak3l6*abb227(54)
      abb227(19)=-spak3l5*abb227(60)
      abb227(27)=spak1k3*abb227(48)
      abb227(15)=abb227(27)+abb227(19)+abb227(15)
      abb227(15)=spak4k7*abb227(15)
      abb227(19)=-spak4l6*abb227(31)
      abb227(27)=spak4l5*abb227(24)
      abb227(19)=-abb227(39)+abb227(27)+abb227(19)
      abb227(19)=abb227(57)*abb227(19)
      abb227(27)=spak4k7*abb227(50)
      abb227(32)=abb227(11)*abb227(37)
      abb227(27)=abb227(27)+abb227(32)
      abb227(27)=spal6k7*abb227(27)
      abb227(11)=spak4k7*abb227(11)
      abb227(32)=abb227(50)*abb227(41)
      abb227(11)=abb227(11)+abb227(32)
      abb227(11)=spal5k7*abb227(11)
      abb227(32)=spak4k7*abb227(56)
      abb227(11)=abb227(32)+abb227(27)+abb227(11)
      abb227(11)=3.0_ki*abb227(11)+abb227(19)+abb227(15)
      abb227(11)=spbk4k3*abb227(11)
      abb227(15)=-abb227(28)+abb227(43)
      abb227(15)=spak2k7*abb227(15)
      abb227(19)=abb227(45)*abb227(52)
      abb227(27)=abb227(54)*spal6k7
      abb227(28)=abb227(60)*spal5k7
      abb227(19)=abb227(28)+abb227(19)+abb227(27)
      abb227(27)=abb227(47)-es71
      abb227(27)=3.0_ki*abb227(27)
      abb227(19)=abb227(19)*abb227(27)
      abb227(22)=-spal6k7*abb227(22)
      abb227(27)=-spal5k7*abb227(49)
      abb227(21)=-abb227(21)*abb227(45)
      abb227(11)=abb227(15)+abb227(21)+abb227(22)+abb227(27)+abb227(11)+abb227(&
      &19)
      abb227(11)=4.0_ki*abb227(11)
      abb227(15)=abb227(30)*abb227(3)
      abb227(15)=abb227(15)-abb227(42)
      abb227(15)=abb227(3)*abb227(15)
      abb227(15)=abb227(15)-abb227(31)
      abb227(15)=spak4l6*abb227(15)
      abb227(19)=abb227(36)*abb227(3)
      abb227(19)=abb227(19)-abb227(58)
      abb227(19)=abb227(3)*abb227(19)
      abb227(19)=abb227(19)+abb227(24)
      abb227(19)=spak4l5*abb227(19)
      abb227(12)=abb227(12)*abb227(3)
      abb227(12)=-abb227(63)-abb227(12)
      abb227(12)=spak1k4*abb227(12)
      abb227(12)=abb227(12)+abb227(15)+abb227(19)
      abb227(12)=spbk4k3*abb227(12)
      abb227(15)=-abb227(3)*abb227(59)
      abb227(15)=abb227(15)+abb227(46)
      abb227(15)=abb227(3)*abb227(15)
      abb227(15)=abb227(15)+abb227(52)
      abb227(15)=es12*abb227(15)
      abb227(19)=spak2l6*abb227(34)
      abb227(21)=-spak2l5*abb227(38)
      abb227(12)=abb227(21)+abb227(19)+abb227(12)+abb227(15)
      abb227(12)=16.0_ki*abb227(12)
      abb227(15)=-abb227(46)*abb227(18)
      abb227(18)=abb227(59)*abb227(23)
      abb227(15)=abb227(15)+abb227(18)
      abb227(15)=abb227(3)*abb227(15)
      abb227(15)=-abb227(55)+abb227(15)
      abb227(15)=8.0_ki*abb227(15)
      abb227(18)=abb227(51)*abb227(35)
      R2d227=abb227(17)
      rat2 = rat2 + R2d227
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='227' value='", &
          & R2d227, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd227h4
