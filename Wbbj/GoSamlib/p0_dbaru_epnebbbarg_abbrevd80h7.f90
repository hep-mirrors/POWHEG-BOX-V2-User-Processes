module     p0_dbaru_epnebbbarg_abbrevd80h7
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh7
   implicit none
   private
   complex(ki), dimension(93), public :: abb80
   complex(ki), public :: R2d80
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
      abb80(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb80(2)=NC**(-1)
      abb80(3)=sqrt2**(-1)
      abb80(4)=es56**(-1)
      abb80(5)=spak2l5**(-1)
      abb80(6)=spbk7k2**(-1)
      abb80(7)=spak2l6**(-1)
      abb80(8)=c3*abb80(2)
      abb80(9)=c4*abb80(2)**2
      abb80(8)=-abb80(8)+abb80(9)+c2
      abb80(9)=spbk3k2*abb80(8)
      abb80(10)=TR*gW
      abb80(10)=CVDU*i_*mB*abb80(4)*abb80(3)*abb80(1)*abb80(10)**2
      abb80(11)=abb80(10)*spak1k7
      abb80(12)=abb80(7)*abb80(6)
      abb80(13)=abb80(11)*abb80(12)
      abb80(14)=abb80(13)*abb80(9)
      abb80(15)=abb80(14)*spbl5k2
      abb80(16)=abb80(10)*abb80(5)
      abb80(17)=abb80(16)*abb80(6)
      abb80(18)=abb80(17)*spak1k7
      abb80(19)=-abb80(18)*abb80(9)
      abb80(20)=abb80(19)*spbl6k2
      abb80(15)=abb80(15)-abb80(20)
      abb80(20)=abb80(15)*spak2k4
      abb80(21)=abb80(20)*es12
      abb80(22)=es712-es71
      abb80(23)=-abb80(21)*abb80(22)
      abb80(24)=abb80(14)*spbl5k3
      abb80(25)=abb80(19)*spbl6k3
      abb80(24)=abb80(24)-abb80(25)
      abb80(25)=abb80(22)*spak3k4
      abb80(24)=abb80(25)*abb80(24)
      abb80(26)=es12*abb80(24)
      abb80(23)=abb80(26)+abb80(23)
      abb80(23)=8.0_ki*abb80(23)
      abb80(26)=16.0_ki*spak2k4
      abb80(15)=abb80(15)*abb80(26)
      abb80(27)=abb80(15)*es12
      abb80(13)=abb80(13)*abb80(8)
      abb80(28)=abb80(13)*spbl5k2
      abb80(18)=abb80(18)*abb80(8)
      abb80(29)=abb80(18)*spbl6k2
      abb80(28)=abb80(29)+abb80(28)
      abb80(29)=abb80(28)*spak1k4
      abb80(30)=abb80(29)*spbk3k1
      abb80(31)=abb80(30)*abb80(22)
      abb80(31)=abb80(21)+abb80(31)
      abb80(31)=16.0_ki*abb80(31)
      abb80(12)=abb80(12)*abb80(10)
      abb80(9)=-abb80(12)*abb80(9)
      abb80(32)=abb80(9)*spbl5k2
      abb80(17)=abb80(8)*abb80(17)
      abb80(33)=spbk3k2*abb80(17)
      abb80(34)=abb80(33)*spbl6k2
      abb80(32)=abb80(32)-abb80(34)
      abb80(35)=spak2k7*spak1k4
      abb80(36)=abb80(32)*abb80(35)
      abb80(37)=-32.0_ki*abb80(36)
      abb80(38)=abb80(14)*spbl5k1
      abb80(39)=abb80(19)*spbl6k1
      abb80(38)=abb80(38)-abb80(39)
      abb80(39)=-spak1k4*abb80(38)
      abb80(30)=abb80(39)+abb80(30)
      abb80(39)=32.0_ki*abb80(30)
      abb80(40)=-abb80(20)*abb80(22)
      abb80(24)=abb80(24)+abb80(40)
      abb80(24)=16.0_ki*abb80(24)
      abb80(40)=32.0_ki*abb80(20)
      abb80(20)=abb80(20)+abb80(36)
      abb80(20)=32.0_ki*abb80(20)
      abb80(41)=abb80(13)*spbl5k3
      abb80(42)=abb80(18)*spbl6k3
      abb80(41)=abb80(42)+abb80(41)
      abb80(42)=abb80(22)*abb80(41)
      abb80(43)=-spak1k4*abb80(42)
      abb80(44)=spbk4k3*spak2k4
      abb80(29)=-abb80(29)*abb80(44)
      abb80(29)=abb80(29)-abb80(43)
      abb80(29)=spbk2k1*abb80(29)
      abb80(21)=abb80(21)+abb80(29)
      abb80(21)=8.0_ki*abb80(21)
      abb80(29)=-abb80(36)-abb80(30)
      abb80(29)=16.0_ki*abb80(29)
      abb80(30)=spbl5k2*spak1k2
      abb80(36)=abb80(30)*abb80(9)
      abb80(34)=spak1k2*abb80(34)
      abb80(34)=abb80(36)-abb80(34)
      abb80(36)=abb80(34)*spak2k4
      abb80(45)=-abb80(36)*abb80(22)
      abb80(46)=abb80(9)*spbl5k3
      abb80(47)=abb80(33)*spbl6k3
      abb80(46)=abb80(46)-abb80(47)
      abb80(47)=-spak1k2*abb80(46)
      abb80(25)=-abb80(47)*abb80(25)
      abb80(25)=abb80(25)+abb80(45)
      abb80(25)=8.0_ki*abb80(25)
      abb80(45)=abb80(34)*abb80(26)
      abb80(12)=abb80(12)*abb80(8)
      abb80(30)=abb80(30)*abb80(12)
      abb80(48)=abb80(17)*spak1k2
      abb80(49)=abb80(48)*spbl6k2
      abb80(30)=abb80(30)+abb80(49)
      abb80(49)=spbk3k1*spak1k4
      abb80(50)=-abb80(30)*abb80(49)
      abb80(51)=abb80(12)*spbl5k2
      abb80(52)=abb80(17)*spbl6k2
      abb80(51)=abb80(51)+abb80(52)
      abb80(52)=abb80(35)*spbk7k3
      abb80(53)=abb80(51)*abb80(52)
      abb80(50)=abb80(53)+abb80(36)+abb80(50)
      abb80(50)=16.0_ki*abb80(50)
      abb80(53)=abb80(12)*spbl5k3
      abb80(54)=abb80(17)*spbl6k3
      abb80(54)=abb80(54)+abb80(53)
      abb80(55)=spak1k4*abb80(54)
      abb80(56)=32.0_ki*abb80(55)
      abb80(47)=abb80(47)*spak3k4
      abb80(47)=-abb80(36)-abb80(47)
      abb80(47)=16.0_ki*abb80(47)
      abb80(57)=-abb80(55)*abb80(22)
      abb80(58)=spak1k4*abb80(51)*abb80(44)
      abb80(36)=abb80(58)+abb80(36)+abb80(57)
      abb80(36)=8.0_ki*abb80(36)
      abb80(55)=16.0_ki*abb80(55)
      abb80(57)=abb80(28)*es12
      abb80(58)=es34-es234
      abb80(59)=abb80(22)-abb80(58)
      abb80(60)=-8.0_ki*abb80(57)*abb80(59)
      abb80(61)=spbl5k1*abb80(7)
      abb80(10)=-abb80(61)*abb80(10)*abb80(8)
      abb80(16)=-spbl6k1*abb80(8)*abb80(16)
      abb80(10)=abb80(10)+abb80(16)
      abb80(10)=abb80(10)*spak1k7**2
      abb80(62)=es567-es234
      abb80(62)=abb80(28)*abb80(62)
      abb80(63)=spak1k3*abb80(38)
      abb80(64)=abb80(13)*spbl5k1
      abb80(65)=abb80(18)*spbl6k1
      abb80(64)=abb80(65)+abb80(64)
      abb80(65)=abb80(64)*spbk4k2
      abb80(66)=spak1k4*abb80(65)
      abb80(10)=abb80(66)+abb80(63)-abb80(57)+abb80(62)+abb80(10)
      abb80(10)=16.0_ki*abb80(10)
      abb80(62)=32.0_ki*abb80(28)
      abb80(63)=16.0_ki*abb80(28)
      abb80(66)=-abb80(59)*abb80(63)
      abb80(8)=abb80(11)*abb80(8)*abb80(61)
      abb80(11)=-spak1k7*abb80(16)
      abb80(8)=abb80(8)+abb80(11)
      abb80(8)=spak1k2*abb80(8)
      abb80(11)=abb80(30)*abb80(59)
      abb80(8)=abb80(11)+abb80(8)
      abb80(8)=8.0_ki*abb80(8)
      abb80(11)=-16.0_ki*abb80(30)
      abb80(16)=abb80(54)*spak1k3
      abb80(59)=spbl5k4*abb80(12)
      abb80(61)=spbl6k4*abb80(17)
      abb80(59)=abb80(59)+abb80(61)
      abb80(59)=spak1k4*abb80(59)
      abb80(61)=spbk7l5*abb80(13)
      abb80(67)=spbk7l6*abb80(18)
      abb80(59)=abb80(61)+abb80(16)+abb80(67)+abb80(59)
      abb80(59)=16.0_ki*abb80(59)
      abb80(61)=32.0_ki*abb80(30)
      abb80(67)=-8.0_ki*abb80(30)
      abb80(68)=abb80(12)*spak1k2
      abb80(69)=-spbk7l5*abb80(68)
      abb80(70)=-spbk7l6*abb80(48)
      abb80(69)=abb80(70)+abb80(69)
      abb80(69)=8.0_ki*abb80(69)
      abb80(41)=abb80(41)*es12
      abb80(28)=spak1k2*abb80(28)
      abb80(70)=abb80(28)*spbk3k1
      abb80(41)=-abb80(70)+2.0_ki*abb80(41)
      abb80(41)=abb80(41)*abb80(22)
      abb80(71)=es23-es123
      abb80(42)=abb80(71)*abb80(42)
      abb80(57)=-abb80(57)*abb80(44)
      abb80(41)=abb80(57)+abb80(42)+abb80(41)
      abb80(41)=8.0_ki*abb80(41)
      abb80(34)=abb80(34)*spak2k7
      abb80(42)=-spak2k7*abb80(46)
      abb80(57)=abb80(42)*spak1k3
      abb80(34)=abb80(34)+abb80(57)
      abb80(57)=16.0_ki*abb80(34)
      abb80(72)=-spak1k2*abb80(38)
      abb80(70)=abb80(72)+abb80(70)
      abb80(72)=16.0_ki*abb80(70)
      abb80(34)=abb80(70)+abb80(34)
      abb80(34)=8.0_ki*abb80(34)
      abb80(16)=-abb80(30)+abb80(16)
      abb80(16)=spbk7k3*spak2k7*abb80(16)
      abb80(53)=abb80(53)*spak1k2
      abb80(73)=abb80(48)*spbl6k3
      abb80(53)=abb80(73)+abb80(53)
      abb80(22)=-es12-abb80(22)-abb80(71)
      abb80(22)=abb80(53)*abb80(22)
      abb80(71)=spbk3k1*abb80(51)*spak1k2**2
      abb80(30)=abb80(30)*abb80(44)
      abb80(16)=abb80(30)+abb80(16)+abb80(71)+abb80(22)
      abb80(16)=8.0_ki*abb80(16)
      abb80(22)=16.0_ki*abb80(53)
      abb80(30)=8.0_ki*abb80(53)
      abb80(44)=-spak1k2*abb80(65)
      abb80(28)=spbk4k1*abb80(28)
      abb80(28)=abb80(44)+abb80(28)
      abb80(28)=8.0_ki*abb80(28)
      abb80(44)=-spbl5k4*abb80(68)
      abb80(65)=-spbl6k4*abb80(48)
      abb80(44)=abb80(65)+abb80(44)
      abb80(44)=8.0_ki*abb80(44)
      abb80(43)=8.0_ki*spbk3k1*abb80(43)
      abb80(35)=-abb80(35)*abb80(46)
      abb80(46)=16.0_ki*abb80(35)
      abb80(35)=-8.0_ki*abb80(35)
      abb80(49)=abb80(53)*abb80(49)
      abb80(52)=-abb80(54)*abb80(52)
      abb80(49)=abb80(49)+abb80(52)
      abb80(49)=8.0_ki*abb80(49)
      abb80(52)=8.0_ki*abb80(70)
      abb80(53)=spbk3k2**2
      abb80(54)=abb80(18)*abb80(53)
      abb80(65)=8.0_ki*spak3k4
      abb80(70)=abb80(65)*es12
      abb80(71)=abb80(54)*abb80(70)
      abb80(73)=spbk2k1*spak1k4
      abb80(74)=abb80(73)*abb80(19)
      abb80(75)=16.0_ki*abb80(74)
      abb80(76)=16.0_ki*spak3k4
      abb80(54)=abb80(54)*abb80(76)
      abb80(74)=-8.0_ki*abb80(74)
      abb80(77)=abb80(53)*abb80(65)*spak1k2
      abb80(78)=-abb80(17)*abb80(77)
      abb80(79)=16.0_ki*spak1k4
      abb80(80)=abb80(33)*abb80(79)
      abb80(81)=8.0_ki*spak1k4
      abb80(82)=-abb80(33)*abb80(81)
      abb80(83)=16.0_ki*es12
      abb80(84)=-abb80(19)*abb80(83)
      abb80(85)=16.0_ki*spak1k2
      abb80(86)=-abb80(33)*abb80(85)
      abb80(53)=abb80(13)*abb80(53)
      abb80(70)=abb80(53)*abb80(70)
      abb80(73)=abb80(73)*abb80(14)
      abb80(87)=-16.0_ki*abb80(73)
      abb80(53)=abb80(53)*abb80(76)
      abb80(73)=8.0_ki*abb80(73)
      abb80(76)=-abb80(12)*abb80(77)
      abb80(77)=-abb80(9)*abb80(79)
      abb80(79)=abb80(9)*abb80(81)
      abb80(81)=abb80(14)*abb80(83)
      abb80(83)=abb80(9)*abb80(85)
      abb80(32)=spak2k4*abb80(32)*spak2k7
      abb80(42)=abb80(42)*spak3k4
      abb80(32)=abb80(32)+abb80(42)
      abb80(42)=-8.0_ki*abb80(32)
      abb80(51)=abb80(51)*spak2k7
      abb80(85)=8.0_ki*abb80(51)
      abb80(88)=abb80(26)*abb80(33)
      abb80(89)=8.0_ki*spak2k4
      abb80(90)=abb80(89)*abb80(33)
      abb80(17)=8.0_ki*abb80(17)
      abb80(91)=abb80(58)*abb80(17)
      abb80(26)=abb80(26)*abb80(9)
      abb80(89)=abb80(89)*abb80(9)
      abb80(12)=8.0_ki*abb80(12)
      abb80(92)=abb80(58)*abb80(12)
      abb80(33)=abb80(33)*abb80(65)
      abb80(9)=-abb80(9)*abb80(65)
      abb80(65)=16.0_ki*abb80(32)
      abb80(38)=-spak2k4*abb80(38)
      abb80(93)=16.0_ki*abb80(38)
      abb80(32)=abb80(38)+abb80(32)
      abb80(32)=8.0_ki*abb80(32)
      abb80(38)=es12-abb80(58)
      abb80(38)=8.0_ki*abb80(64)*abb80(38)
      abb80(51)=16.0_ki*abb80(51)
      abb80(58)=-spbl5k1*abb80(68)
      abb80(48)=-spbl6k1*abb80(48)
      abb80(48)=abb80(48)+abb80(58)
      abb80(48)=8.0_ki*abb80(48)
      abb80(58)=spak3k4*spbk3k1
      abb80(64)=spbk2k1*spak2k4
      abb80(58)=abb80(58)-abb80(64)
      abb80(58)=8.0_ki*abb80(58)
      abb80(19)=abb80(19)*abb80(58)
      abb80(64)=8.0_ki*spbk2k1
      abb80(18)=-abb80(18)*abb80(64)
      abb80(14)=-abb80(14)*abb80(58)
      abb80(13)=-abb80(13)*abb80(64)
      R2d80=0.0_ki
      rat2 = rat2 + R2d80
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='80' value='", &
          & R2d80, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd80h7
