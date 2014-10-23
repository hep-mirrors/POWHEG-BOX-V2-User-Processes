module     p0_dbaru_epnebbbarg_abbrevd83h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(90), public :: abb83
   complex(ki), public :: R2d83
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
      abb83(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb83(2)=NC**(-1)
      abb83(3)=sqrt2**(-1)
      abb83(4)=es56**(-1)
      abb83(5)=spbl5k2**(-1)
      abb83(6)=spak2k7**(-1)
      abb83(7)=spbl6k2**(-1)
      abb83(8)=c4*abb83(2)**2
      abb83(9)=abb83(8)+c2
      abb83(10)=TR*gW
      abb83(10)=abb83(10)**2*CVDU*i_*mB*abb83(6)*abb83(4)*abb83(3)*abb83(1)
      abb83(11)=abb83(10)*abb83(5)
      abb83(12)=abb83(11)*spbk7k3
      abb83(13)=abb83(12)*abb83(9)
      abb83(14)=c1*abb83(2)
      abb83(15)=abb83(12)*abb83(14)
      abb83(15)=-abb83(15)+abb83(13)
      abb83(16)=spbk7k2**2
      abb83(17)=spak4k7*abb83(15)*abb83(16)
      abb83(18)=abb83(12)*spbk7k2
      abb83(19)=abb83(18)*abb83(8)
      abb83(20)=abb83(19)*spbk3k2
      abb83(21)=c2*spbk3k2
      abb83(22)=abb83(14)*spbk3k2
      abb83(21)=abb83(21)-abb83(22)
      abb83(23)=abb83(21)*abb83(18)
      abb83(20)=abb83(20)+abb83(23)
      abb83(23)=-spak3k4*abb83(20)
      abb83(23)=abb83(23)+abb83(17)
      abb83(23)=spak2l6*abb83(23)
      abb83(10)=abb83(10)*abb83(7)
      abb83(24)=abb83(10)*spbk7k3
      abb83(9)=abb83(24)*abb83(9)
      abb83(25)=abb83(24)*abb83(14)
      abb83(25)=-abb83(25)+abb83(9)
      abb83(26)=spak4k7*abb83(25)*abb83(16)
      abb83(27)=abb83(24)*spbk7k2
      abb83(28)=abb83(27)*abb83(8)
      abb83(29)=abb83(28)*spbk3k2
      abb83(30)=abb83(21)*abb83(27)
      abb83(29)=abb83(29)+abb83(30)
      abb83(30)=-spak3k4*abb83(29)
      abb83(30)=abb83(30)+abb83(26)
      abb83(30)=spak2l5*abb83(30)
      abb83(23)=abb83(30)+abb83(23)
      abb83(23)=spak1k7*abb83(23)
      abb83(9)=-spbk3k2*abb83(9)
      abb83(24)=abb83(22)*abb83(24)
      abb83(9)=abb83(24)+abb83(9)
      abb83(24)=abb83(9)*spak1l5
      abb83(13)=-spbk3k2*abb83(13)
      abb83(12)=abb83(22)*abb83(12)
      abb83(12)=abb83(12)+abb83(13)
      abb83(13)=abb83(12)*spak1l6
      abb83(13)=abb83(24)+abb83(13)
      abb83(13)=abb83(13)*spak3k4
      abb83(24)=abb83(14)-c2
      abb83(18)=-abb83(18)*abb83(24)
      abb83(18)=abb83(18)+abb83(19)
      abb83(19)=abb83(18)*spak1l6
      abb83(27)=-abb83(27)*abb83(24)
      abb83(27)=abb83(27)+abb83(28)
      abb83(28)=abb83(27)*spak1l5
      abb83(19)=abb83(19)+abb83(28)
      abb83(19)=abb83(19)*spak4k7
      abb83(19)=abb83(19)+abb83(13)
      abb83(28)=-es71*abb83(19)
      abb83(23)=abb83(28)+abb83(23)
      abb83(23)=16.0_ki*abb83(23)
      abb83(28)=abb83(18)*spal6k7
      abb83(30)=abb83(27)*spal5k7
      abb83(28)=abb83(28)+abb83(30)
      abb83(30)=abb83(10)*spbk7k2
      abb83(31)=abb83(30)*abb83(21)
      abb83(32)=abb83(30)*abb83(8)
      abb83(33)=abb83(32)*spbk3k2
      abb83(31)=abb83(33)+abb83(31)
      abb83(33)=abb83(31)*spak2l5
      abb83(34)=abb83(11)*spbk7k2
      abb83(35)=abb83(34)*abb83(21)
      abb83(36)=abb83(34)*abb83(8)
      abb83(37)=abb83(36)*spbk3k2
      abb83(35)=abb83(37)+abb83(35)
      abb83(37)=abb83(35)*spak2l6
      abb83(33)=-abb83(28)+abb83(33)+abb83(37)
      abb83(37)=abb83(33)*spak1k4
      abb83(30)=-abb83(30)*abb83(24)
      abb83(30)=abb83(30)+abb83(32)
      abb83(32)=abb83(30)*spak4l5
      abb83(34)=-abb83(34)*abb83(24)
      abb83(34)=abb83(34)+abb83(36)
      abb83(36)=abb83(34)*spak4l6
      abb83(32)=abb83(32)+abb83(36)
      abb83(36)=abb83(32)*spbk4k3
      abb83(38)=spak1k4*abb83(36)
      abb83(21)=-abb83(10)*abb83(21)
      abb83(39)=abb83(8)*abb83(10)
      abb83(40)=abb83(39)*spbk3k2
      abb83(21)=abb83(21)-abb83(40)
      abb83(40)=abb83(21)*spak1l5
      abb83(8)=abb83(8)*abb83(11)
      abb83(41)=abb83(11)*c2
      abb83(42)=abb83(8)+abb83(41)
      abb83(42)=spbk3k2*abb83(42)
      abb83(22)=abb83(22)*abb83(11)
      abb83(22)=-abb83(22)+abb83(42)
      abb83(42)=abb83(22)*spak1l6
      abb83(40)=abb83(40)-abb83(42)
      abb83(42)=-spak1k4*abb83(40)
      abb83(43)=abb83(42)*spbk7k1
      abb83(38)=abb83(38)+abb83(43)
      abb83(43)=abb83(27)*spak4l5
      abb83(44)=abb83(18)*spak4l6
      abb83(43)=abb83(43)+abb83(44)
      abb83(43)=abb83(43)*spak1k7
      abb83(37)=abb83(37)+abb83(38)-abb83(43)
      abb83(44)=32.0_ki*abb83(37)
      abb83(43)=32.0_ki*abb83(43)
      abb83(45)=es12+es71
      abb83(46)=abb83(45)-es712
      abb83(47)=16.0_ki*abb83(46)
      abb83(48)=-abb83(19)*abb83(47)
      abb83(31)=abb83(31)*spak1l5
      abb83(35)=abb83(35)*spak1l6
      abb83(31)=abb83(31)+abb83(35)
      abb83(35)=-32.0_ki*spak2k4*abb83(31)
      abb83(49)=8.0_ki*es12
      abb83(19)=abb83(19)*abb83(49)
      abb83(37)=-16.0_ki*abb83(37)
      abb83(49)=16.0_ki*spak2k4
      abb83(31)=abb83(31)*abb83(49)
      abb83(13)=-spak1k2*abb83(13)
      abb83(50)=abb83(18)*spak1k2
      abb83(51)=-spak1l6*abb83(50)
      abb83(52)=abb83(27)*spak1k2
      abb83(53)=-spak1l5*abb83(52)
      abb83(51)=abb83(51)+abb83(53)
      abb83(51)=spak4k7*abb83(51)
      abb83(13)=abb83(13)+abb83(51)
      abb83(13)=spbk7k1*abb83(13)
      abb83(51)=spak3k4*spak1k2
      abb83(20)=abb83(20)*abb83(51)
      abb83(17)=-spak1k2*abb83(17)
      abb83(17)=abb83(20)+abb83(17)
      abb83(17)=spak2l6*abb83(17)
      abb83(20)=abb83(29)*abb83(51)
      abb83(26)=-spak1k2*abb83(26)
      abb83(20)=abb83(20)+abb83(26)
      abb83(20)=spak2l5*abb83(20)
      abb83(13)=abb83(13)+abb83(17)+abb83(20)
      abb83(13)=8.0_ki*abb83(13)
      abb83(17)=abb83(52)*spak4l5
      abb83(20)=abb83(50)*spak4l6
      abb83(17)=abb83(17)+abb83(20)
      abb83(20)=16.0_ki*abb83(17)
      abb83(17)=-8.0_ki*abb83(17)
      abb83(11)=abb83(14)*abb83(11)
      abb83(8)=-abb83(8)+abb83(11)-abb83(41)
      abb83(11)=spbk7k3**2
      abb83(14)=abb83(8)*abb83(11)
      abb83(26)=16.0_ki*spak1k7
      abb83(29)=abb83(26)*spak3k4
      abb83(41)=abb83(14)*abb83(29)
      abb83(53)=32.0_ki*spak1k4
      abb83(54)=abb83(15)*abb83(53)
      abb83(55)=-abb83(12)*abb83(51)
      abb83(56)=-spak4k7*abb83(50)
      abb83(55)=abb83(55)+abb83(56)
      abb83(55)=8.0_ki*abb83(55)
      abb83(56)=16.0_ki*spak1k4
      abb83(57)=abb83(15)*abb83(56)
      abb83(58)=8.0_ki*abb83(51)
      abb83(14)=-abb83(14)*abb83(58)
      abb83(10)=-abb83(10)*abb83(24)
      abb83(10)=abb83(10)+abb83(39)
      abb83(11)=abb83(10)*abb83(11)
      abb83(24)=-abb83(11)*abb83(29)
      abb83(29)=abb83(25)*abb83(53)
      abb83(39)=-abb83(9)*abb83(51)
      abb83(51)=-spak4k7*abb83(52)
      abb83(39)=abb83(39)+abb83(51)
      abb83(39)=8.0_ki*abb83(39)
      abb83(51)=abb83(25)*abb83(56)
      abb83(11)=abb83(11)*abb83(58)
      abb83(53)=spak2l6*abb83(8)
      abb83(58)=spak2l5*abb83(10)
      abb83(53)=abb83(53)-abb83(58)
      abb83(16)=abb83(16)*abb83(53)
      abb83(53)=spbk7k4*abb83(32)
      abb83(58)=spak3l6*abb83(18)
      abb83(59)=spak3l5*abb83(27)
      abb83(53)=abb83(59)+abb83(58)+abb83(53)+abb83(16)
      abb83(53)=spak1k7*abb83(53)
      abb83(58)=abb83(30)*spak1l5
      abb83(59)=abb83(34)*spak1l6
      abb83(58)=abb83(58)+abb83(59)
      abb83(59)=es71*abb83(58)
      abb83(53)=abb83(59)+abb83(53)
      abb83(53)=16.0_ki*abb83(53)
      abb83(47)=abb83(58)*abb83(47)
      abb83(59)=8.0_ki*abb83(58)
      abb83(60)=-es12*abb83(59)
      abb83(16)=-spak1k2*abb83(16)
      abb83(61)=spbk7k1*spak1k2
      abb83(62)=abb83(58)*abb83(61)
      abb83(32)=spak1k2*abb83(32)
      abb83(63)=-spbk7k4*abb83(32)
      abb83(50)=-spak3l6*abb83(50)
      abb83(52)=-spak3l5*abb83(52)
      abb83(16)=abb83(52)+abb83(50)+abb83(63)+abb83(62)+abb83(16)
      abb83(16)=8.0_ki*abb83(16)
      abb83(50)=8.0_ki*spak1k2
      abb83(52)=abb83(34)*abb83(50)
      abb83(62)=abb83(30)*abb83(50)
      abb83(63)=abb83(33)*spak1k2
      abb83(61)=abb83(40)*abb83(61)
      abb83(32)=abb83(32)*spbk4k3
      abb83(32)=abb83(32)+abb83(63)-abb83(61)
      abb83(61)=-16.0_ki*abb83(32)
      abb83(32)=8.0_ki*abb83(32)
      abb83(63)=16.0_ki*spak1k2
      abb83(64)=-abb83(15)*abb83(63)
      abb83(65)=abb83(15)*abb83(50)
      abb83(63)=-abb83(25)*abb83(63)
      abb83(50)=abb83(25)*abb83(50)
      abb83(66)=spbk3k2**2
      abb83(67)=-abb83(66)*abb83(8)
      abb83(68)=-spak1l6*abb83(67)
      abb83(66)=abb83(66)*abb83(10)
      abb83(69)=-spak1l5*abb83(66)
      abb83(68)=abb83(68)+abb83(69)
      abb83(68)=16.0_ki*spak3k4*abb83(68)
      abb83(58)=abb83(58)*spbk3k1
      abb83(69)=abb83(58)+abb83(28)
      abb83(69)=spak1k4*abb83(69)
      abb83(38)=-abb83(38)+abb83(69)
      abb83(38)=8.0_ki*abb83(38)
      abb83(69)=abb83(56)*abb83(22)
      abb83(70)=8.0_ki*abb83(22)
      abb83(71)=spak1k4*abb83(70)
      abb83(56)=abb83(56)*abb83(21)
      abb83(72)=8.0_ki*abb83(21)
      abb83(73)=-spak1k4*abb83(72)
      abb83(74)=spak1k7*abb83(34)
      abb83(75)=spbk4k2*spak1k4
      abb83(76)=-abb83(8)*abb83(75)
      abb83(77)=spak1k3*abb83(22)
      abb83(74)=abb83(77)+abb83(74)+abb83(76)
      abb83(74)=8.0_ki*abb83(74)
      abb83(76)=spak1k7*abb83(30)
      abb83(75)=abb83(10)*abb83(75)
      abb83(77)=-spak1k3*abb83(21)
      abb83(75)=abb83(77)+abb83(76)+abb83(75)
      abb83(75)=8.0_ki*abb83(75)
      abb83(28)=abb83(28)-abb83(36)
      abb83(58)=-abb83(58)-abb83(28)
      abb83(58)=spak1k7*abb83(58)
      abb83(45)=es23-es123+abb83(45)
      abb83(45)=abb83(40)*abb83(45)
      abb83(66)=abb83(66)*spak2l5
      abb83(67)=abb83(67)*spak2l6
      abb83(66)=abb83(66)+abb83(67)
      abb83(67)=-spak1k3*abb83(66)
      abb83(45)=abb83(67)+abb83(45)+abb83(58)
      abb83(45)=8.0_ki*abb83(45)
      abb83(58)=16.0_ki*abb83(40)
      abb83(40)=8.0_ki*abb83(40)
      abb83(67)=abb83(15)*abb83(26)
      abb83(26)=abb83(25)*abb83(26)
      abb83(76)=abb83(8)*spak1l6
      abb83(77)=abb83(10)*spak1l5
      abb83(76)=abb83(76)-abb83(77)
      abb83(77)=8.0_ki*spbk4k2*abb83(76)
      abb83(78)=spak1k4*abb83(66)
      abb83(42)=spbk3k1*abb83(42)
      abb83(42)=abb83(42)+abb83(78)
      abb83(42)=8.0_ki*abb83(42)
      abb83(78)=abb83(46)*spak4k7
      abb83(78)=8.0_ki*abb83(78)
      abb83(79)=-abb83(15)*abb83(78)
      abb83(78)=-abb83(25)*abb83(78)
      abb83(80)=8.0_ki*abb83(46)
      abb83(81)=-abb83(8)*abb83(80)
      abb83(80)=abb83(10)*abb83(80)
      abb83(70)=spak4k7*abb83(70)
      abb83(72)=-spak4k7*abb83(72)
      abb83(82)=abb83(46)*spak3k4
      abb83(82)=8.0_ki*abb83(82)
      abb83(83)=abb83(15)*abb83(82)
      abb83(84)=-abb83(34)*abb83(49)
      abb83(85)=8.0_ki*spak2k4
      abb83(86)=abb83(34)*abb83(85)
      abb83(82)=abb83(25)*abb83(82)
      abb83(49)=-abb83(30)*abb83(49)
      abb83(85)=abb83(30)*abb83(85)
      abb83(87)=-spak3k4*abb83(22)
      abb83(88)=-spak4k7*abb83(34)
      abb83(87)=abb83(87)+abb83(88)
      abb83(87)=8.0_ki*abb83(87)
      abb83(88)=spak3k4*abb83(21)
      abb83(89)=-spak4k7*abb83(30)
      abb83(88)=abb83(88)+abb83(89)
      abb83(88)=8.0_ki*abb83(88)
      abb83(18)=abb83(18)*spak4k7
      abb83(12)=abb83(12)*spak3k4
      abb83(12)=abb83(18)+abb83(12)
      abb83(18)=abb83(46)*spak2l6
      abb83(12)=-abb83(12)*abb83(18)
      abb83(27)=abb83(27)*spak4k7
      abb83(9)=abb83(9)*spak3k4
      abb83(9)=abb83(27)+abb83(9)
      abb83(27)=abb83(46)*spak2l5
      abb83(9)=-abb83(9)*abb83(27)
      abb83(9)=abb83(12)+abb83(9)
      abb83(9)=8.0_ki*abb83(9)
      abb83(12)=abb83(33)+abb83(36)
      abb83(12)=abb83(12)*spak2k4
      abb83(33)=abb83(25)*spak4l5
      abb83(36)=abb83(15)*spak4l6
      abb83(33)=abb83(33)+abb83(36)
      abb83(33)=abb83(33)*abb83(46)
      abb83(12)=abb83(12)-abb83(33)
      abb83(36)=-16.0_ki*abb83(12)
      abb83(33)=16.0_ki*abb83(33)
      abb83(12)=8.0_ki*abb83(12)
      abb83(89)=abb83(8)*spak4l6
      abb83(90)=abb83(10)*spak4l5
      abb83(89)=abb83(89)-abb83(90)
      abb83(90)=spbk7k4*abb83(89)
      abb83(15)=-spak3l6*abb83(15)
      abb83(25)=-spak3l5*abb83(25)
      abb83(15)=abb83(25)+abb83(15)+abb83(90)
      abb83(15)=abb83(46)*abb83(15)
      abb83(18)=abb83(34)*abb83(18)
      abb83(25)=abb83(30)*abb83(27)
      abb83(15)=abb83(18)+abb83(25)+abb83(15)
      abb83(15)=8.0_ki*abb83(15)
      abb83(18)=spak4k7*abb83(28)
      abb83(25)=-spak3k4*abb83(66)
      abb83(18)=abb83(18)+abb83(25)
      abb83(18)=8.0_ki*abb83(18)
      abb83(25)=abb83(21)*spak4l5
      abb83(27)=abb83(22)*spak4l6
      abb83(25)=abb83(25)-abb83(27)
      abb83(27)=16.0_ki*abb83(25)
      abb83(25)=-8.0_ki*abb83(25)
      abb83(28)=-spbk4k2*abb83(89)
      abb83(46)=-spbk2k1*abb83(76)
      abb83(34)=-spal6k7*abb83(34)
      abb83(30)=-spal5k7*abb83(30)
      abb83(22)=spak3l6*abb83(22)
      abb83(21)=-spak3l5*abb83(21)
      abb83(21)=abb83(46)+abb83(28)+abb83(21)+abb83(22)+abb83(34)+abb83(30)
      abb83(21)=8.0_ki*abb83(21)
      abb83(8)=8.0_ki*abb83(8)
      abb83(10)=8.0_ki*abb83(10)
      R2d83=0.0_ki
      rat2 = rat2 + R2d83
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='83' value='", &
          & R2d83, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd83h0
