module     p0_dbaru_epnebbbarg_abbrevd59h3
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(64), public :: abb59
   complex(ki), public :: R2d59
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
      abb59(1)=1.0_ki/(-es71+es712-es12)
      abb59(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb59(3)=1.0_ki/(-es71+es56-es567+es234)
      abb59(4)=NC**(-1)
      abb59(5)=es56**(-1)
      abb59(6)=spak2l5**(-1)
      abb59(7)=spak2l6**(-1)
      abb59(8)=spbl5k2**(-1)
      abb59(9)=spbl6k2**(-1)
      abb59(10)=1.0_ki/(es34+es567-es12-es234)
      abb59(11)=es12+es71-es712
      abb59(12)=spak4l6*abb59(11)
      abb59(13)=abb59(12)*spbl6l5
      abb59(14)=c1*spbk7k3
      abb59(15)=-abb59(14)*abb59(13)
      abb59(16)=abb59(4)*c4
      abb59(17)=abb59(16)*spbk7k3
      abb59(18)=abb59(17)*spbl6l5
      abb59(19)=abb59(12)*abb59(18)
      abb59(15)=abb59(15)+abb59(19)
      abb59(15)=abb59(4)*abb59(15)
      abb59(19)=abb59(17)-abb59(14)
      abb59(19)=abb59(19)*abb59(4)
      abb59(20)=c1*NC
      abb59(21)=abb59(20)*spbk7k3
      abb59(22)=c4*spbk7k3
      abb59(23)=abb59(21)-abb59(22)
      abb59(19)=abb59(19)+abb59(23)
      abb59(24)=spbl5k1*abb59(11)
      abb59(25)=-spak1k4*abb59(24)*abb59(19)
      abb59(26)=abb59(21)*spbl6l5
      abb59(27)=abb59(12)*abb59(26)
      abb59(13)=-abb59(22)*abb59(13)
      abb59(13)=abb59(25)+abb59(15)+abb59(27)+abb59(13)
      abb59(15)=abb59(7)*spae7k7
      abb59(13)=abb59(13)*abb59(15)
      abb59(25)=spak4l5*abb59(11)
      abb59(27)=abb59(25)*spbl6l5
      abb59(28)=abb59(14)*abb59(27)
      abb59(18)=-abb59(25)*abb59(18)
      abb59(18)=abb59(28)+abb59(18)
      abb59(18)=abb59(4)*abb59(18)
      abb59(28)=spbl6k1*abb59(11)
      abb59(29)=-spak1k4*abb59(28)*abb59(19)
      abb59(26)=-abb59(25)*abb59(26)
      abb59(22)=abb59(22)*abb59(27)
      abb59(18)=abb59(29)+abb59(18)+abb59(26)+abb59(22)
      abb59(22)=abb59(6)*spae7k7
      abb59(18)=abb59(18)*abb59(22)
      abb59(13)=abb59(13)+abb59(18)
      abb59(18)=abb59(3)*spbe7k2
      abb59(13)=abb59(13)*abb59(18)
      abb59(26)=abb59(10)*spbk3k1
      abb59(27)=abb59(26)*abb59(16)
      abb59(29)=c1*abb59(26)
      abb59(27)=abb59(27)-abb59(29)
      abb59(27)=abb59(27)*abb59(4)
      abb59(30)=abb59(26)*abb59(20)
      abb59(31)=c4*abb59(26)
      abb59(27)=abb59(27)+abb59(30)-abb59(31)
      abb59(30)=spbk7l5*abb59(11)
      abb59(32)=abb59(15)*spak1k4
      abb59(33)=-abb59(32)*abb59(30)*abb59(27)
      abb59(34)=spbk7l6*abb59(11)
      abb59(35)=abb59(22)*spak1k4
      abb59(36)=-abb59(35)*abb59(34)*abb59(27)
      abb59(33)=abb59(33)+abb59(36)
      abb59(33)=spbe7k2*abb59(33)
      abb59(13)=abb59(33)+abb59(13)
      abb59(13)=spak1k2*abb59(13)
      abb59(33)=abb59(10)*spbk4k3
      abb59(36)=spak2k4*abb59(33)
      abb59(37)=abb59(36)*abb59(16)
      abb59(38)=c1*spak2k4
      abb59(39)=abb59(33)*abb59(38)
      abb59(37)=abb59(37)-abb59(39)
      abb59(37)=abb59(37)*abb59(4)
      abb59(40)=abb59(36)*abb59(20)
      abb59(41)=c4*spak2k4
      abb59(33)=abb59(33)*abb59(41)
      abb59(37)=abb59(37)+abb59(40)-abb59(33)
      abb59(30)=abb59(32)*abb59(30)*abb59(37)
      abb59(34)=abb59(35)*abb59(34)*abb59(37)
      abb59(30)=abb59(30)+abb59(34)
      abb59(30)=spbe7k2*abb59(30)
      abb59(13)=abb59(30)+abb59(13)
      abb59(30)=i_*TR**2
      abb59(13)=abb59(13)*abb59(30)
      abb59(34)=abb59(38)*spbk7k3
      abb59(40)=abb59(17)*spak2k4
      abb59(34)=abb59(34)-abb59(40)
      abb59(34)=abb59(34)*abb59(4)
      abb59(40)=abb59(41)*spbk7k3
      abb59(21)=abb59(21)*spak2k4
      abb59(21)=abb59(34)+abb59(40)-abb59(21)
      abb59(34)=2.0_ki*abb59(15)
      abb59(40)=-abb59(34)*abb59(11)*abb59(21)
      abb59(42)=spbl6k2*abb59(8)
      abb59(43)=abb59(42)*abb59(11)
      abb59(44)=-abb59(22)*abb59(43)*abb59(21)
      abb59(40)=abb59(40)+abb59(44)
      abb59(40)=abb59(6)*abb59(40)
      abb59(44)=spbl5k2*abb59(9)
      abb59(45)=abb59(44)*abb59(11)
      abb59(46)=abb59(7)**2
      abb59(47)=abb59(46)*spae7k7
      abb59(48)=-abb59(47)*abb59(45)*abb59(21)
      abb59(40)=abb59(48)+abb59(40)
      abb59(48)=mB**2*abb59(30)*spak1k2
      abb59(49)=abb59(48)*abb59(18)
      abb59(40)=abb59(40)*abb59(49)
      abb59(13)=abb59(13)+abb59(40)
      abb59(40)=abb59(1)*gW
      abb59(40)=abb59(5)*abb59(2)*abb59(40)**2*CVDU*mB
      abb59(50)=4.0_ki*abb59(40)
      abb59(13)=abb59(13)*abb59(50)
      abb59(51)=abb59(16)-c1
      abb59(52)=abb59(51)*abb59(4)
      abb59(53)=abb59(20)-c4
      abb59(52)=abb59(52)+abb59(53)
      abb59(54)=spbk3k2*spbl6l5
      abb59(12)=-abb59(52)*abb59(12)*abb59(54)
      abb59(51)=-abb59(4)*spbk3k2*abb59(51)
      abb59(53)=-spbk3k2*abb59(53)
      abb59(51)=abb59(51)+abb59(53)
      abb59(24)=-spak1k4*abb59(24)*abb59(51)
      abb59(12)=abb59(24)+abb59(12)
      abb59(12)=abb59(7)*abb59(12)
      abb59(24)=abb59(52)*abb59(25)*abb59(54)
      abb59(25)=-spak1k4*abb59(28)*abb59(51)
      abb59(24)=abb59(25)+abb59(24)
      abb59(24)=abb59(6)*abb59(24)
      abb59(12)=abb59(12)+abb59(24)
      abb59(12)=abb59(3)*abb59(12)
      abb59(24)=abb59(7)*spak1k4
      abb59(25)=spbl5k2*abb59(11)
      abb59(28)=abb59(24)*abb59(25)*abb59(27)
      abb59(53)=spbl6k2*abb59(11)
      abb59(55)=abb59(6)*spak1k4
      abb59(56)=abb59(55)*abb59(53)*abb59(27)
      abb59(12)=abb59(12)+abb59(28)+abb59(56)
      abb59(12)=spak1k2*abb59(12)
      abb59(25)=-abb59(24)*abb59(25)*abb59(37)
      abb59(28)=-abb59(55)*abb59(53)*abb59(37)
      abb59(12)=abb59(12)+abb59(25)+abb59(28)
      abb59(12)=abb59(12)*abb59(30)
      abb59(25)=spak2k4*spbk3k2
      abb59(28)=abb59(25)*abb59(16)
      abb59(53)=abb59(38)*spbk3k2
      abb59(28)=abb59(53)-abb59(28)
      abb59(28)=abb59(28)*abb59(4)
      abb59(25)=abb59(25)*abb59(20)
      abb59(53)=abb59(41)*spbk3k2
      abb59(25)=abb59(28)+abb59(53)-abb59(25)
      abb59(28)=2.0_ki*abb59(7)
      abb59(11)=abb59(28)*abb59(11)*abb59(25)
      abb59(43)=abb59(6)*abb59(43)*abb59(25)
      abb59(11)=abb59(11)+abb59(43)
      abb59(11)=abb59(6)*abb59(11)
      abb59(43)=abb59(46)*abb59(45)*abb59(25)
      abb59(11)=abb59(43)+abb59(11)
      abb59(43)=abb59(48)*abb59(3)
      abb59(11)=abb59(11)*abb59(43)
      abb59(11)=abb59(12)+abb59(11)
      abb59(12)=16.0_ki*abb59(40)
      abb59(11)=abb59(11)*abb59(12)
      abb59(45)=spbl6l5*spak4l6
      abb59(48)=-abb59(45)*abb59(19)
      abb59(53)=abb59(17)*spbl5k1
      abb59(56)=abb59(14)*spbl5k1
      abb59(53)=abb59(53)-abb59(56)
      abb59(53)=abb59(53)*abb59(4)
      abb59(57)=-spbl5k1*abb59(23)
      abb59(53)=abb59(53)-abb59(57)
      abb59(53)=abb59(53)*spak1k4
      abb59(48)=abb59(53)+abb59(48)
      abb59(48)=abb59(48)*abb59(15)
      abb59(53)=spbl6l5*spak4l5
      abb59(58)=abb59(53)*abb59(19)
      abb59(59)=abb59(17)*spbl6k1
      abb59(14)=abb59(14)*spbl6k1
      abb59(59)=abb59(59)-abb59(14)
      abb59(59)=abb59(59)*abb59(4)
      abb59(23)=-spbl6k1*abb59(23)
      abb59(59)=abb59(59)-abb59(23)
      abb59(59)=abb59(59)*spak1k4
      abb59(58)=abb59(59)+abb59(58)
      abb59(58)=abb59(58)*abb59(22)
      abb59(48)=abb59(48)+abb59(58)
      abb59(48)=abb59(48)*abb59(18)
      abb59(58)=abb59(35)*spbk7l6*abb59(27)
      abb59(59)=abb59(32)*spbk7l5*abb59(27)
      abb59(58)=abb59(58)+abb59(59)
      abb59(58)=abb59(58)*spbe7k2
      abb59(48)=abb59(48)+abb59(58)
      abb59(48)=abb59(48)*spak1k2
      abb59(58)=abb59(35)*spbk7l6*abb59(37)
      abb59(59)=abb59(32)*spbk7l5*abb59(37)
      abb59(58)=abb59(58)+abb59(59)
      abb59(58)=abb59(58)*spbe7k2
      abb59(48)=abb59(48)-abb59(58)
      abb59(48)=abb59(48)*abb59(30)
      abb59(58)=abb59(22)*abb59(42)*abb59(21)
      abb59(59)=abb59(21)*abb59(34)
      abb59(58)=abb59(58)+abb59(59)
      abb59(58)=abb59(58)*abb59(6)
      abb59(59)=abb59(47)*abb59(44)*abb59(21)
      abb59(58)=abb59(58)+abb59(59)
      abb59(58)=abb59(58)*abb59(49)
      abb59(48)=abb59(48)+abb59(58)
      abb59(40)=8.0_ki*abb59(40)
      abb59(58)=abb59(48)*abb59(40)
      abb59(12)=-abb59(48)*abb59(12)
      abb59(48)=spak2k7*spbk7l5
      abb59(59)=-abb59(29)*abb59(48)
      abb59(60)=abb59(16)*spak2k7
      abb59(61)=abb59(60)*abb59(26)
      abb59(62)=spbk7l5*abb59(61)
      abb59(59)=abb59(59)+abb59(62)
      abb59(59)=abb59(4)*abb59(59)
      abb59(62)=abb59(20)*spak2k7
      abb59(26)=abb59(62)*abb59(26)
      abb59(63)=spbk7l5*abb59(26)
      abb59(64)=-abb59(31)*abb59(48)
      abb59(59)=abb59(59)+abb59(63)+abb59(64)
      abb59(59)=abb59(59)*abb59(24)
      abb59(63)=spak2k7*spbk7l6
      abb59(29)=-abb59(29)*abb59(63)
      abb59(61)=spbk7l6*abb59(61)
      abb59(29)=abb59(29)+abb59(61)
      abb59(29)=abb59(4)*abb59(29)
      abb59(26)=spbk7l6*abb59(26)
      abb59(31)=-abb59(31)*abb59(63)
      abb59(26)=abb59(29)+abb59(26)+abb59(31)
      abb59(26)=abb59(26)*abb59(55)
      abb59(26)=abb59(59)+abb59(26)
      abb59(26)=spbe7k2*abb59(26)
      abb59(29)=-abb59(19)*abb59(45)*spak2k7
      abb59(31)=-spak2k7*abb59(57)
      abb59(45)=-spak2k7*abb59(56)
      abb59(17)=abb59(17)*spak2k7
      abb59(56)=spbl5k1*abb59(17)
      abb59(45)=abb59(45)+abb59(56)
      abb59(45)=abb59(4)*abb59(45)
      abb59(31)=abb59(45)+abb59(31)
      abb59(31)=spak1k4*abb59(31)
      abb59(29)=abb59(31)+abb59(29)
      abb59(29)=abb59(7)*abb59(29)
      abb59(19)=abb59(19)*abb59(53)*spak2k7
      abb59(23)=-spak2k7*abb59(23)
      abb59(14)=-spak2k7*abb59(14)
      abb59(17)=spbl6k1*abb59(17)
      abb59(14)=abb59(14)+abb59(17)
      abb59(14)=abb59(4)*abb59(14)
      abb59(14)=abb59(14)+abb59(23)
      abb59(14)=spak1k4*abb59(14)
      abb59(14)=abb59(14)+abb59(19)
      abb59(14)=abb59(6)*abb59(14)
      abb59(14)=abb59(29)+abb59(14)
      abb59(14)=spbe7k2*abb59(14)
      abb59(17)=spak2k7*spbk7e7
      abb59(19)=abb59(54)*abb59(17)
      abb59(23)=abb59(52)*abb59(19)*spak4l6
      abb59(29)=abb59(17)*spbk3k2
      abb59(31)=-spak1k4*abb59(52)*abb59(29)*spbl5k1
      abb59(23)=abb59(31)+abb59(23)
      abb59(23)=abb59(7)*abb59(23)
      abb59(19)=-abb59(52)*abb59(19)*spak4l5
      abb59(31)=-spak1k4*abb59(52)*abb59(29)*spbl6k1
      abb59(19)=abb59(31)+abb59(19)
      abb59(19)=abb59(6)*abb59(19)
      abb59(14)=abb59(14)+abb59(23)+abb59(19)
      abb59(14)=abb59(3)*abb59(14)
      abb59(19)=abb59(17)*spbl5k2
      abb59(23)=-abb59(24)*abb59(19)*abb59(27)
      abb59(17)=abb59(17)*spbl6k2
      abb59(31)=-abb59(55)*abb59(17)*abb59(27)
      abb59(14)=abb59(14)+abb59(26)+abb59(23)+abb59(31)
      abb59(14)=spak1k2*abb59(14)
      abb59(23)=abb59(39)*abb59(48)
      abb59(26)=abb59(60)*abb59(36)
      abb59(31)=-spbk7l5*abb59(26)
      abb59(23)=abb59(23)+abb59(31)
      abb59(23)=abb59(4)*abb59(23)
      abb59(31)=abb59(62)*abb59(36)
      abb59(36)=-spbk7l5*abb59(31)
      abb59(45)=abb59(33)*abb59(48)
      abb59(23)=abb59(23)+abb59(36)+abb59(45)
      abb59(23)=abb59(23)*abb59(24)
      abb59(36)=abb59(39)*abb59(63)
      abb59(26)=-spbk7l6*abb59(26)
      abb59(26)=abb59(36)+abb59(26)
      abb59(26)=abb59(4)*abb59(26)
      abb59(31)=-spbk7l6*abb59(31)
      abb59(33)=abb59(33)*abb59(63)
      abb59(26)=abb59(26)+abb59(31)+abb59(33)
      abb59(26)=abb59(26)*abb59(55)
      abb59(23)=abb59(23)+abb59(26)
      abb59(23)=spbe7k2*abb59(23)
      abb59(19)=abb59(24)*abb59(19)*abb59(37)
      abb59(17)=abb59(55)*abb59(17)*abb59(37)
      abb59(14)=abb59(14)+abb59(23)+abb59(19)+abb59(17)
      abb59(14)=abb59(14)*abb59(30)
      abb59(17)=abb59(29)*abb59(38)
      abb59(19)=abb59(29)*spak2k4
      abb59(16)=abb59(19)*abb59(16)
      abb59(16)=abb59(17)-abb59(16)
      abb59(16)=abb59(16)*abb59(4)
      abb59(17)=abb59(29)*abb59(41)
      abb59(19)=abb59(19)*abb59(20)
      abb59(16)=abb59(16)+abb59(17)-abb59(19)
      abb59(17)=-abb59(16)*abb59(28)
      abb59(19)=-abb59(6)*abb59(42)*abb59(16)
      abb59(17)=abb59(17)+abb59(19)
      abb59(17)=abb59(6)*abb59(17)
      abb59(16)=-abb59(46)*abb59(44)*abb59(16)
      abb59(19)=abb59(28)*spak2k7*abb59(21)
      abb59(20)=abb59(6)*abb59(21)*abb59(42)*spak2k7
      abb59(19)=abb59(19)+abb59(20)
      abb59(19)=abb59(6)*abb59(19)
      abb59(20)=abb59(46)*abb59(21)*abb59(44)*spak2k7
      abb59(19)=abb59(20)+abb59(19)
      abb59(19)=spbe7k2*abb59(19)
      abb59(16)=abb59(19)+abb59(16)+abb59(17)
      abb59(16)=abb59(16)*abb59(43)
      abb59(14)=abb59(14)+abb59(16)
      abb59(14)=abb59(14)*abb59(40)
      abb59(16)=abb59(32)*spbl5k2*abb59(37)
      abb59(17)=abb59(35)*spbl6k2*abb59(37)
      abb59(16)=abb59(16)+abb59(17)
      abb59(16)=spbe7k2*abb59(16)
      abb59(17)=-abb59(32)*spbl5k2*abb59(27)
      abb59(19)=-abb59(35)*spbl6k2*abb59(27)
      abb59(17)=abb59(17)+abb59(19)
      abb59(17)=spbe7k2*abb59(17)
      abb59(19)=abb59(52)*abb59(54)*spak4l6
      abb59(20)=spak1k4*spbl5k1*abb59(51)
      abb59(19)=abb59(20)+abb59(19)
      abb59(15)=abb59(19)*abb59(15)
      abb59(19)=-abb59(52)*abb59(54)*spak4l5
      abb59(20)=spak1k4*spbl6k1*abb59(51)
      abb59(19)=abb59(20)+abb59(19)
      abb59(19)=abb59(19)*abb59(22)
      abb59(15)=abb59(15)+abb59(19)
      abb59(15)=abb59(15)*abb59(18)
      abb59(15)=abb59(17)+abb59(15)
      abb59(15)=spak1k2*abb59(15)
      abb59(15)=abb59(16)+abb59(15)
      abb59(15)=abb59(15)*abb59(30)
      abb59(16)=-abb59(25)*abb59(34)
      abb59(17)=-abb59(22)*abb59(42)*abb59(25)
      abb59(16)=abb59(16)+abb59(17)
      abb59(16)=abb59(6)*abb59(16)
      abb59(17)=-abb59(47)*abb59(44)*abb59(25)
      abb59(16)=abb59(17)+abb59(16)
      abb59(16)=abb59(16)*abb59(49)
      abb59(15)=abb59(15)+abb59(16)
      abb59(15)=abb59(15)*abb59(50)
      R2d59=0.0_ki
      rat2 = rat2 + R2d59
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='59' value='", &
          & R2d59, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd59h3