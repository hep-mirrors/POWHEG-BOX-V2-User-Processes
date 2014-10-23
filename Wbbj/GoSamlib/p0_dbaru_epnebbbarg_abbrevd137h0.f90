module     p0_dbaru_epnebbbarg_abbrevd137h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(85), public :: abb137
   complex(ki), public :: R2d137
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
      abb137(1)=1.0_ki/(-es71+es712-es12)
      abb137(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb137(3)=1.0_ki/(-es71+es56-es567+es234)
      abb137(4)=NC**(-1)
      abb137(5)=sqrt2**(-1)
      abb137(6)=es56**(-1)
      abb137(7)=spbl5k2**(-1)
      abb137(8)=spak2k7**(-1)
      abb137(9)=spbl6k2**(-1)
      abb137(10)=1.0_ki/(es34+es567-es12-es234)
      abb137(11)=spbk7k2*abb137(10)
      abb137(12)=abb137(11)*es71
      abb137(13)=abb137(11)*es712
      abb137(14)=abb137(12)-abb137(13)
      abb137(15)=abb137(11)*es12
      abb137(16)=abb137(15)+abb137(14)
      abb137(17)=TR*gW
      abb137(17)=abb137(17)**2*CVDU*i_*mB*abb137(8)*abb137(6)*abb137(5)*abb137(&
      &2)
      abb137(18)=abb137(17)*spak1k4*abb137(1)
      abb137(19)=c1*abb137(18)
      abb137(20)=abb137(19)*abb137(9)
      abb137(18)=c4*abb137(18)
      abb137(21)=abb137(18)*abb137(9)
      abb137(22)=abb137(21)*abb137(4)
      abb137(20)=abb137(20)-abb137(22)
      abb137(20)=abb137(20)*abb137(4)
      abb137(22)=abb137(20)+abb137(21)
      abb137(22)=abb137(16)*abb137(22)
      abb137(23)=abb137(11)*abb137(19)
      abb137(24)=abb137(23)*abb137(9)
      abb137(25)=abb137(24)*es71
      abb137(26)=abb137(24)*es712
      abb137(25)=abb137(25)-abb137(26)
      abb137(27)=abb137(24)*es12
      abb137(28)=abb137(25)+abb137(27)
      abb137(28)=abb137(28)*NC
      abb137(22)=abb137(22)-abb137(28)
      abb137(22)=abb137(22)*spak4l5
      abb137(29)=abb137(19)*abb137(7)
      abb137(30)=abb137(18)*abb137(7)
      abb137(31)=abb137(30)*abb137(4)
      abb137(29)=abb137(29)-abb137(31)
      abb137(29)=abb137(29)*abb137(4)
      abb137(31)=abb137(29)+abb137(30)
      abb137(31)=abb137(16)*abb137(31)
      abb137(23)=abb137(23)*abb137(7)
      abb137(32)=abb137(23)*es71
      abb137(33)=abb137(23)*es712
      abb137(32)=abb137(32)-abb137(33)
      abb137(34)=abb137(23)*es12
      abb137(35)=abb137(32)+abb137(34)
      abb137(35)=abb137(35)*NC
      abb137(31)=abb137(31)-abb137(35)
      abb137(31)=abb137(31)*spak4l6
      abb137(22)=abb137(22)+abb137(31)
      abb137(22)=abb137(22)*spbk4k3
      abb137(17)=abb137(17)*abb137(3)*abb137(1)
      abb137(31)=abb137(17)*spbk7k3
      abb137(36)=abb137(31)*c4
      abb137(37)=abb137(9)*spak1l5
      abb137(38)=abb137(36)*abb137(37)
      abb137(39)=abb137(7)*spak1l6
      abb137(40)=abb137(36)*abb137(39)
      abb137(41)=abb137(40)+abb137(38)
      abb137(41)=spak1k4*abb137(41)
      abb137(42)=abb137(41)*abb137(4)
      abb137(31)=abb137(31)*c1
      abb137(43)=abb137(31)*abb137(37)
      abb137(44)=abb137(31)*abb137(39)
      abb137(45)=abb137(44)+abb137(43)
      abb137(45)=spak1k4*abb137(45)
      abb137(42)=abb137(42)-abb137(45)
      abb137(42)=abb137(42)*abb137(4)
      abb137(46)=abb137(42)-abb137(41)
      abb137(47)=es712-es71
      abb137(48)=abb137(47)-es12
      abb137(46)=-abb137(48)*abb137(46)
      abb137(49)=abb137(45)*es71
      abb137(50)=abb137(45)*es712
      abb137(49)=abb137(49)-abb137(50)
      abb137(51)=abb137(45)*es12
      abb137(52)=abb137(49)+abb137(51)
      abb137(52)=abb137(52)*NC
      abb137(46)=abb137(46)+abb137(52)
      abb137(46)=abb137(46)*spbk2k1
      abb137(53)=abb137(40)*abb137(4)
      abb137(53)=abb137(53)-abb137(44)
      abb137(53)=abb137(53)*abb137(4)
      abb137(54)=abb137(53)-abb137(40)
      abb137(54)=-abb137(48)*abb137(54)
      abb137(55)=abb137(44)*es71
      abb137(56)=abb137(44)*es712
      abb137(55)=abb137(55)-abb137(56)
      abb137(57)=abb137(44)*es12
      abb137(58)=abb137(55)+abb137(57)
      abb137(58)=abb137(58)*NC
      abb137(54)=abb137(54)+abb137(58)
      abb137(59)=spbl6k2*spak4l6
      abb137(54)=abb137(54)*abb137(59)
      abb137(60)=abb137(38)*abb137(4)
      abb137(60)=abb137(60)-abb137(43)
      abb137(60)=abb137(60)*abb137(4)
      abb137(61)=abb137(60)-abb137(38)
      abb137(61)=-abb137(48)*abb137(61)
      abb137(62)=abb137(43)*es71
      abb137(63)=abb137(43)*es712
      abb137(62)=abb137(62)-abb137(63)
      abb137(64)=abb137(43)*es12
      abb137(65)=abb137(62)+abb137(64)
      abb137(65)=abb137(65)*NC
      abb137(61)=abb137(61)+abb137(65)
      abb137(66)=spbl5k2*spak4l5
      abb137(61)=abb137(61)*abb137(66)
      abb137(37)=abb137(39)+abb137(37)
      abb137(18)=abb137(18)*abb137(37)
      abb137(39)=abb137(18)*abb137(4)
      abb137(19)=abb137(19)*abb137(37)
      abb137(37)=abb137(39)-abb137(19)
      abb137(37)=abb137(37)*abb137(4)
      abb137(39)=abb137(37)-abb137(18)
      abb137(39)=abb137(16)*abb137(39)
      abb137(67)=abb137(13)*abb137(19)
      abb137(68)=abb137(12)*abb137(19)
      abb137(69)=abb137(67)-abb137(68)
      abb137(70)=abb137(15)*abb137(19)
      abb137(71)=abb137(69)-abb137(70)
      abb137(71)=abb137(71)*NC
      abb137(39)=abb137(39)-abb137(71)
      abb137(39)=abb137(39)*spbk3k1
      abb137(72)=abb137(36)*abb137(4)
      abb137(73)=abb137(72)*spak1l6
      abb137(74)=abb137(31)*spak1l6
      abb137(73)=abb137(73)-abb137(74)
      abb137(73)=abb137(73)*abb137(4)
      abb137(75)=abb137(36)*spak1l6
      abb137(76)=abb137(73)-abb137(75)
      abb137(76)=-abb137(48)*abb137(76)
      abb137(77)=abb137(74)*es71
      abb137(78)=abb137(74)*es712
      abb137(77)=abb137(77)-abb137(78)
      abb137(79)=abb137(74)*es12
      abb137(80)=abb137(77)+abb137(79)
      abb137(80)=abb137(80)*NC
      abb137(76)=abb137(76)+abb137(80)
      abb137(76)=abb137(76)*spak4l5
      abb137(72)=abb137(72)*spak1l5
      abb137(31)=abb137(31)*spak1l5
      abb137(72)=abb137(72)-abb137(31)
      abb137(72)=abb137(72)*abb137(4)
      abb137(36)=abb137(36)*spak1l5
      abb137(81)=abb137(72)-abb137(36)
      abb137(81)=-abb137(48)*abb137(81)
      abb137(82)=abb137(31)*es71
      abb137(83)=abb137(31)*es712
      abb137(82)=abb137(82)-abb137(83)
      abb137(84)=abb137(31)*es12
      abb137(85)=abb137(82)+abb137(84)
      abb137(85)=abb137(85)*NC
      abb137(81)=abb137(81)+abb137(85)
      abb137(81)=abb137(81)*spak4l6
      abb137(22)=abb137(22)+abb137(61)+abb137(76)+abb137(81)-abb137(46)+abb137(&
      &54)-abb137(39)
      abb137(39)=4.0_ki*abb137(22)
      abb137(46)=es71**2
      abb137(54)=-abb137(46)*abb137(31)
      abb137(61)=2.0_ki*es71
      abb137(76)=abb137(31)*abb137(61)
      abb137(76)=abb137(76)-abb137(83)
      abb137(76)=es712*abb137(76)
      abb137(81)=-2.0_ki*abb137(82)-abb137(84)
      abb137(81)=es12*abb137(81)
      abb137(54)=abb137(81)+abb137(54)+abb137(76)
      abb137(54)=NC*abb137(54)
      abb137(76)=abb137(46)*abb137(36)
      abb137(81)=-abb137(36)*abb137(61)
      abb137(82)=abb137(36)*es712
      abb137(81)=abb137(81)+abb137(82)
      abb137(81)=es712*abb137(81)
      abb137(83)=es71*abb137(36)
      abb137(82)=abb137(83)-abb137(82)
      abb137(83)=es12*abb137(36)
      abb137(82)=2.0_ki*abb137(82)+abb137(83)
      abb137(82)=es12*abb137(82)
      abb137(54)=abb137(54)+abb137(82)+abb137(76)+abb137(81)
      abb137(54)=spak4l6*abb137(54)
      abb137(76)=-abb137(46)*abb137(74)
      abb137(81)=abb137(74)*abb137(61)
      abb137(78)=abb137(81)-abb137(78)
      abb137(78)=es712*abb137(78)
      abb137(77)=-2.0_ki*abb137(77)-abb137(79)
      abb137(77)=es12*abb137(77)
      abb137(76)=abb137(77)+abb137(76)+abb137(78)
      abb137(76)=NC*abb137(76)
      abb137(77)=abb137(46)*abb137(75)
      abb137(78)=-abb137(75)*abb137(61)
      abb137(79)=abb137(75)*es712
      abb137(78)=abb137(78)+abb137(79)
      abb137(78)=es712*abb137(78)
      abb137(81)=es71*abb137(75)
      abb137(79)=abb137(81)-abb137(79)
      abb137(81)=es12*abb137(75)
      abb137(79)=2.0_ki*abb137(79)+abb137(81)
      abb137(79)=es12*abb137(79)
      abb137(76)=abb137(76)+abb137(79)+abb137(77)+abb137(78)
      abb137(76)=spak4l5*abb137(76)
      abb137(77)=-abb137(45)*abb137(61)
      abb137(50)=abb137(77)+abb137(50)
      abb137(50)=es712*abb137(50)
      abb137(49)=2.0_ki*abb137(49)+abb137(51)
      abb137(49)=es12*abb137(49)
      abb137(51)=abb137(45)*abb137(46)
      abb137(49)=abb137(49)+abb137(51)+abb137(50)
      abb137(49)=NC*abb137(49)
      abb137(50)=abb137(61)-es712
      abb137(50)=abb137(50)*es712
      abb137(50)=abb137(50)-abb137(46)
      abb137(51)=abb137(41)*abb137(50)
      abb137(47)=-es12+2.0_ki*abb137(47)
      abb137(77)=es12*abb137(41)*abb137(47)
      abb137(49)=abb137(49)+abb137(77)+abb137(51)
      abb137(49)=spbk2k1*abb137(49)
      abb137(51)=-abb137(23)*abb137(61)
      abb137(33)=abb137(51)+abb137(33)
      abb137(33)=es712*abb137(33)
      abb137(32)=2.0_ki*abb137(32)+abb137(34)
      abb137(32)=es12*abb137(32)
      abb137(34)=abb137(46)*abb137(23)
      abb137(32)=abb137(32)+abb137(34)+abb137(33)
      abb137(32)=NC*abb137(32)
      abb137(12)=-abb137(13)+2.0_ki*abb137(12)
      abb137(12)=abb137(12)*es712
      abb137(13)=abb137(46)*abb137(11)
      abb137(12)=abb137(12)-abb137(13)
      abb137(33)=abb137(30)*abb137(12)
      abb137(14)=abb137(15)+2.0_ki*abb137(14)
      abb137(15)=-es12*abb137(30)*abb137(14)
      abb137(15)=abb137(32)+abb137(15)+abb137(33)
      abb137(15)=spak4l6*abb137(15)
      abb137(32)=-abb137(24)*abb137(61)
      abb137(26)=abb137(32)+abb137(26)
      abb137(26)=es712*abb137(26)
      abb137(25)=2.0_ki*abb137(25)+abb137(27)
      abb137(25)=es12*abb137(25)
      abb137(27)=abb137(46)*abb137(24)
      abb137(25)=abb137(25)+abb137(27)+abb137(26)
      abb137(25)=NC*abb137(25)
      abb137(26)=abb137(21)*abb137(12)
      abb137(27)=-es12*abb137(21)*abb137(14)
      abb137(25)=abb137(25)+abb137(27)+abb137(26)
      abb137(25)=spak4l5*abb137(25)
      abb137(15)=abb137(15)+abb137(25)
      abb137(15)=spbk4k3*abb137(15)
      abb137(13)=abb137(19)*abb137(13)
      abb137(25)=-2.0_ki*abb137(68)+abb137(67)
      abb137(25)=es712*abb137(25)
      abb137(26)=-2.0_ki*abb137(69)+abb137(70)
      abb137(26)=es12*abb137(26)
      abb137(13)=abb137(26)+abb137(13)+abb137(25)
      abb137(13)=NC*abb137(13)
      abb137(12)=abb137(18)*abb137(12)
      abb137(14)=-es12*abb137(18)*abb137(14)
      abb137(12)=abb137(13)+abb137(14)+abb137(12)
      abb137(12)=spbk3k1*abb137(12)
      abb137(13)=abb137(44)*abb137(61)
      abb137(13)=abb137(13)-abb137(56)
      abb137(13)=es712*abb137(13)
      abb137(14)=-2.0_ki*abb137(55)-abb137(57)
      abb137(14)=es12*abb137(14)
      abb137(25)=-abb137(46)*abb137(44)
      abb137(13)=abb137(14)+abb137(25)+abb137(13)
      abb137(13)=NC*abb137(13)
      abb137(14)=-abb137(40)*abb137(50)
      abb137(25)=-es12*abb137(40)*abb137(47)
      abb137(13)=abb137(13)+abb137(25)+abb137(14)
      abb137(13)=abb137(13)*abb137(59)
      abb137(14)=abb137(43)*abb137(61)
      abb137(14)=abb137(14)-abb137(63)
      abb137(14)=es712*abb137(14)
      abb137(25)=-2.0_ki*abb137(62)-abb137(64)
      abb137(25)=es12*abb137(25)
      abb137(26)=-abb137(46)*abb137(43)
      abb137(14)=abb137(25)+abb137(26)+abb137(14)
      abb137(14)=NC*abb137(14)
      abb137(25)=-abb137(38)*abb137(50)
      abb137(26)=-es12*abb137(38)*abb137(47)
      abb137(14)=abb137(14)+abb137(26)+abb137(25)
      abb137(14)=abb137(14)*abb137(66)
      abb137(12)=abb137(14)+abb137(13)+abb137(12)+abb137(15)+abb137(49)+abb137(&
      &54)+abb137(76)
      abb137(12)=8.0_ki*abb137(12)
      abb137(13)=16.0_ki*abb137(22)
      abb137(14)=-abb137(41)*abb137(48)
      abb137(14)=-abb137(52)+abb137(14)
      abb137(14)=spbk2k1*abb137(14)
      abb137(15)=abb137(30)*abb137(16)
      abb137(15)=-abb137(35)+abb137(15)
      abb137(15)=spak4l6*abb137(15)
      abb137(25)=abb137(21)*abb137(16)
      abb137(25)=-abb137(28)+abb137(25)
      abb137(25)=spak4l5*abb137(25)
      abb137(15)=abb137(15)+abb137(25)
      abb137(15)=spbk4k3*abb137(15)
      abb137(16)=abb137(18)*abb137(16)
      abb137(16)=abb137(71)+abb137(16)
      abb137(16)=spbk3k1*abb137(16)
      abb137(25)=abb137(36)*abb137(48)
      abb137(25)=abb137(85)+abb137(25)
      abb137(25)=spak4l6*abb137(25)
      abb137(26)=abb137(75)*abb137(48)
      abb137(26)=abb137(80)+abb137(26)
      abb137(26)=spak4l5*abb137(26)
      abb137(27)=abb137(40)*abb137(48)
      abb137(27)=abb137(58)+abb137(27)
      abb137(27)=abb137(27)*abb137(59)
      abb137(28)=abb137(38)*abb137(48)
      abb137(28)=abb137(65)+abb137(28)
      abb137(28)=abb137(28)*abb137(66)
      abb137(14)=abb137(28)+abb137(27)+abb137(16)+abb137(15)+abb137(14)+abb137(&
      &25)+abb137(26)
      abb137(14)=8.0_ki*abb137(14)
      abb137(15)=-8.0_ki*abb137(22)
      abb137(16)=abb137(4)*c4
      abb137(22)=abb137(17)*spak1l5
      abb137(25)=abb137(16)*abb137(22)
      abb137(26)=abb137(22)*c1
      abb137(25)=abb137(25)-abb137(26)
      abb137(27)=2.0_ki*abb137(4)
      abb137(28)=abb137(25)*abb137(27)
      abb137(32)=abb137(22)*c4
      abb137(28)=abb137(28)-abb137(32)
      abb137(28)=-abb137(28)*abb137(48)
      abb137(33)=-abb137(48)*NC
      abb137(34)=abb137(26)*abb137(33)
      abb137(28)=abb137(34)+abb137(28)
      abb137(28)=spak4l6*abb137(28)
      abb137(17)=abb137(17)*spak1l6
      abb137(34)=abb137(16)*abb137(17)
      abb137(35)=abb137(17)*c1
      abb137(34)=abb137(34)-abb137(35)
      abb137(46)=abb137(34)*abb137(27)
      abb137(47)=abb137(17)*c4
      abb137(46)=abb137(46)-abb137(47)
      abb137(46)=-abb137(46)*abb137(48)
      abb137(49)=abb137(35)*abb137(33)
      abb137(46)=abb137(49)+abb137(46)
      abb137(46)=spak4l5*abb137(46)
      abb137(22)=abb137(22)*abb137(9)
      abb137(17)=abb137(17)*abb137(7)
      abb137(49)=abb137(22)+abb137(17)
      abb137(49)=abb137(49)*spak1k4
      abb137(50)=c4*abb137(49)
      abb137(51)=abb137(50)*abb137(4)
      abb137(49)=c1*abb137(49)
      abb137(51)=abb137(51)-abb137(49)
      abb137(52)=abb137(51)*abb137(27)
      abb137(52)=abb137(52)-abb137(50)
      abb137(52)=abb137(52)*abb137(48)
      abb137(54)=-abb137(49)*abb137(33)
      abb137(52)=abb137(54)+abb137(52)
      abb137(52)=spbk2k1*abb137(52)
      abb137(54)=abb137(16)*abb137(17)
      abb137(55)=abb137(17)*c1
      abb137(54)=abb137(54)-abb137(55)
      abb137(56)=abb137(54)*abb137(27)
      abb137(17)=abb137(17)*c4
      abb137(56)=abb137(56)-abb137(17)
      abb137(56)=-abb137(56)*abb137(48)
      abb137(57)=abb137(55)*abb137(33)
      abb137(56)=abb137(57)+abb137(56)
      abb137(56)=abb137(56)*abb137(59)
      abb137(16)=abb137(16)*abb137(22)
      abb137(57)=abb137(22)*c1
      abb137(16)=abb137(16)-abb137(57)
      abb137(27)=abb137(16)*abb137(27)
      abb137(22)=abb137(22)*c4
      abb137(27)=abb137(27)-abb137(22)
      abb137(27)=-abb137(27)*abb137(48)
      abb137(33)=abb137(57)*abb137(33)
      abb137(27)=abb137(33)+abb137(27)
      abb137(27)=abb137(27)*abb137(66)
      abb137(27)=abb137(27)+abb137(56)+abb137(52)+abb137(28)+abb137(46)
      abb137(27)=4.0_ki*spbk3k2*abb137(27)
      abb137(28)=abb137(4)*abb137(51)
      abb137(33)=abb137(49)*NC
      abb137(28)=-abb137(33)+abb137(28)+abb137(50)
      abb137(28)=spbk2k1*abb137(28)
      abb137(25)=-abb137(4)*abb137(25)
      abb137(26)=abb137(26)*NC
      abb137(25)=abb137(26)-abb137(32)+abb137(25)
      abb137(25)=spak4l6*abb137(25)
      abb137(26)=-abb137(4)*abb137(34)
      abb137(32)=abb137(35)*NC
      abb137(26)=abb137(32)-abb137(47)+abb137(26)
      abb137(26)=spak4l5*abb137(26)
      abb137(32)=-abb137(4)*abb137(54)
      abb137(33)=abb137(55)*NC
      abb137(17)=abb137(33)-abb137(17)+abb137(32)
      abb137(17)=abb137(17)*abb137(59)
      abb137(16)=-abb137(4)*abb137(16)
      abb137(32)=abb137(57)*NC
      abb137(16)=abb137(32)-abb137(22)+abb137(16)
      abb137(16)=abb137(16)*abb137(66)
      abb137(16)=abb137(16)+abb137(17)+abb137(28)+abb137(25)+abb137(26)
      abb137(16)=16.0_ki*spbk3k2*abb137(16)
      abb137(17)=-NC*abb137(45)
      abb137(17)=abb137(17)+abb137(42)+abb137(41)
      abb137(17)=spbk2k1*abb137(17)
      abb137(22)=abb137(30)-abb137(29)
      abb137(22)=abb137(22)*abb137(11)
      abb137(23)=-NC*abb137(23)
      abb137(22)=abb137(22)+abb137(23)
      abb137(22)=spak4l6*abb137(22)
      abb137(20)=abb137(21)-abb137(20)
      abb137(20)=abb137(20)*abb137(11)
      abb137(21)=-NC*abb137(24)
      abb137(20)=abb137(20)+abb137(21)
      abb137(20)=spak4l5*abb137(20)
      abb137(20)=abb137(22)+abb137(20)
      abb137(20)=spbk4k3*abb137(20)
      abb137(19)=-NC*abb137(19)
      abb137(18)=abb137(19)+abb137(37)+abb137(18)
      abb137(11)=spbk3k1*abb137(11)*abb137(18)
      abb137(18)=NC*abb137(44)
      abb137(18)=abb137(18)-abb137(40)-abb137(53)
      abb137(18)=abb137(18)*abb137(59)
      abb137(19)=NC*abb137(43)
      abb137(19)=abb137(19)-abb137(38)-abb137(60)
      abb137(19)=abb137(19)*abb137(66)
      abb137(21)=NC*abb137(31)
      abb137(21)=abb137(21)-abb137(36)-abb137(72)
      abb137(21)=spak4l6*abb137(21)
      abb137(22)=NC*abb137(74)
      abb137(22)=abb137(22)-abb137(75)-abb137(73)
      abb137(22)=spak4l5*abb137(22)
      abb137(11)=abb137(19)+abb137(18)+abb137(11)+abb137(20)+abb137(17)+abb137(&
      &21)+abb137(22)
      abb137(11)=8.0_ki*abb137(11)
      R2d137=abb137(39)
      rat2 = rat2 + R2d137
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='137' value='", &
          & R2d137, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd137h0
