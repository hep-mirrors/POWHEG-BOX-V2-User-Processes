module     p0_dbaru_epnebbbarg_abbrevd81h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(87), public :: abb81
   complex(ki), public :: R2d81
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
      abb81(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb81(2)=NC**(-1)
      abb81(3)=sqrt2**(-1)
      abb81(4)=es56**(-1)
      abb81(5)=spbl5k2**(-1)
      abb81(6)=spak2k7**(-1)
      abb81(7)=spbl6k2**(-1)
      abb81(8)=c3*abb81(2)
      abb81(9)=c4*abb81(2)**2
      abb81(8)=-c2+abb81(8)-abb81(9)
      abb81(9)=TR*gW
      abb81(9)=CVDU*i_*mB*abb81(4)*abb81(3)*abb81(1)*abb81(9)**2
      abb81(10)=abb81(8)*abb81(9)*spbk7k3
      abb81(11)=abb81(7)*abb81(6)
      abb81(12)=-abb81(11)*abb81(10)
      abb81(13)=abb81(12)*spak1l5
      abb81(14)=abb81(10)*abb81(5)
      abb81(15)=-abb81(6)*abb81(14)
      abb81(16)=abb81(15)*spak1l6
      abb81(13)=abb81(13)+abb81(16)
      abb81(16)=es71+es12-es712
      abb81(17)=abb81(13)*abb81(16)
      abb81(18)=spak3k4*spbk3k2
      abb81(19)=spak4k7*spbk7k2
      abb81(20)=abb81(18)-abb81(19)
      abb81(21)=abb81(17)*abb81(20)
      abb81(22)=16.0_ki*abb81(21)
      abb81(11)=-abb81(9)*abb81(8)*abb81(11)
      abb81(23)=abb81(11)*spak1l5
      abb81(24)=-abb81(8)*abb81(9)*abb81(5)
      abb81(25)=abb81(6)*abb81(24)
      abb81(26)=abb81(25)*spak1l6
      abb81(23)=abb81(23)+abb81(26)
      abb81(26)=abb81(23)*spbk3k2
      abb81(27)=spak2k4*spbk7k2
      abb81(28)=-32.0_ki*abb81(27)*abb81(26)
      abb81(21)=-8.0_ki*abb81(21)
      abb81(29)=16.0_ki*spbk3k2
      abb81(30)=abb81(23)*abb81(29)
      abb81(31)=abb81(30)*abb81(27)
      abb81(32)=8.0_ki*spbk3k2
      abb81(33)=abb81(23)*abb81(32)
      abb81(34)=-abb81(27)*abb81(33)
      abb81(35)=abb81(13)*abb81(27)
      abb81(36)=16.0_ki*abb81(35)
      abb81(35)=-8.0_ki*abb81(35)
      abb81(37)=abb81(25)*spak1k4
      abb81(38)=abb81(27)*spbk4k3
      abb81(39)=abb81(38)*abb81(37)
      abb81(27)=abb81(27)*spak1k7
      abb81(40)=abb81(27)*abb81(15)
      abb81(41)=abb81(15)*spak1k4
      abb81(42)=abb81(41)*abb81(16)
      abb81(39)=abb81(39)+abb81(40)-abb81(42)
      abb81(40)=-16.0_ki*abb81(39)
      abb81(42)=16.0_ki*abb81(42)
      abb81(43)=32.0_ki*abb81(41)
      abb81(39)=8.0_ki*abb81(39)
      abb81(41)=16.0_ki*abb81(41)
      abb81(44)=abb81(11)*spak1k4
      abb81(45)=abb81(38)*abb81(44)
      abb81(27)=abb81(27)*abb81(12)
      abb81(46)=abb81(12)*spak1k4
      abb81(47)=-abb81(46)*abb81(16)
      abb81(27)=abb81(45)+abb81(27)+abb81(47)
      abb81(45)=-16.0_ki*abb81(27)
      abb81(47)=16.0_ki*abb81(47)
      abb81(48)=32.0_ki*abb81(46)
      abb81(27)=8.0_ki*abb81(27)
      abb81(46)=16.0_ki*abb81(46)
      abb81(49)=abb81(23)*spbk7k2
      abb81(50)=abb81(16)*abb81(49)
      abb81(51)=16.0_ki*abb81(50)
      abb81(50)=-8.0_ki*abb81(50)
      abb81(52)=-spbk7k4*abb81(37)*abb81(16)
      abb81(53)=abb81(16)*spak1k3
      abb81(54)=-abb81(15)*abb81(53)
      abb81(52)=abb81(52)+abb81(54)
      abb81(52)=8.0_ki*abb81(52)
      abb81(54)=-spbk7k4*abb81(44)*abb81(16)
      abb81(53)=-abb81(12)*abb81(53)
      abb81(53)=abb81(54)+abb81(53)
      abb81(53)=8.0_ki*abb81(53)
      abb81(38)=abb81(23)*abb81(38)
      abb81(38)=abb81(38)-abb81(17)
      abb81(54)=16.0_ki*abb81(38)
      abb81(55)=16.0_ki*abb81(17)
      abb81(38)=-8.0_ki*abb81(38)
      abb81(56)=spbk7k3**2
      abb81(24)=abb81(56)*abb81(24)
      abb81(57)=8.0_ki*spak1k3
      abb81(58)=abb81(24)*abb81(57)
      abb81(59)=abb81(15)*spak1k2
      abb81(60)=-16.0_ki*abb81(59)
      abb81(59)=8.0_ki*abb81(59)
      abb81(8)=abb81(56)*abb81(7)*abb81(9)*abb81(8)
      abb81(9)=-abb81(8)*abb81(57)
      abb81(56)=abb81(12)*spak1k2
      abb81(57)=-16.0_ki*abb81(56)
      abb81(56)=8.0_ki*abb81(56)
      abb81(61)=abb81(23)*abb81(16)
      abb81(62)=8.0_ki*abb81(61)
      abb81(63)=spbk7k4*abb81(62)
      abb81(64)=8.0_ki*spak1k4
      abb81(24)=-abb81(24)*abb81(64)
      abb81(8)=abb81(8)*abb81(64)
      abb81(64)=8.0_ki*abb81(17)
      abb81(65)=spak3k4*abb81(23)*spbk3k2**2
      abb81(66)=-16.0_ki*abb81(65)
      abb81(65)=8.0_ki*abb81(65)
      abb81(67)=8.0_ki*abb81(19)
      abb81(13)=abb81(13)*abb81(67)
      abb81(68)=abb81(15)*spak1k7
      abb81(69)=-spbk4k3*abb81(37)
      abb81(69)=abb81(69)-abb81(68)
      abb81(69)=abb81(69)*abb81(67)
      abb81(70)=abb81(37)*abb81(29)
      abb81(71)=abb81(32)*abb81(37)
      abb81(72)=-spbk4k3*abb81(44)
      abb81(73)=abb81(12)*spak1k7
      abb81(72)=abb81(72)-abb81(73)
      abb81(67)=abb81(72)*abb81(67)
      abb81(72)=abb81(44)*abb81(29)
      abb81(74)=abb81(32)*abb81(44)
      abb81(49)=-8.0_ki*abb81(49)
      abb81(75)=spak1k7*spbk7k2
      abb81(76)=spak1k3*spbk3k2
      abb81(75)=abb81(75)+abb81(76)
      abb81(76)=abb81(25)*abb81(75)
      abb81(37)=spbk4k2*abb81(37)
      abb81(37)=abb81(37)+abb81(76)
      abb81(37)=8.0_ki*abb81(37)
      abb81(75)=abb81(11)*abb81(75)
      abb81(44)=spbk4k2*abb81(44)
      abb81(44)=abb81(44)+abb81(75)
      abb81(44)=8.0_ki*abb81(44)
      abb81(19)=abb81(23)*abb81(19)
      abb81(75)=8.0_ki*spbk4k3*abb81(19)
      abb81(68)=16.0_ki*abb81(68)
      abb81(73)=16.0_ki*abb81(73)
      abb81(76)=-8.0_ki*spbk4k2*abb81(23)
      abb81(10)=-abb81(10)*abb81(7)
      abb81(77)=abb81(10)*spak1l5
      abb81(78)=-abb81(14)*spak1l6
      abb81(77)=abb81(77)+abb81(78)
      abb81(77)=abb81(77)*abb81(18)
      abb81(17)=abb81(17)*spak4k7
      abb81(17)=abb81(77)-abb81(17)
      abb81(77)=8.0_ki*spbk2k1
      abb81(78)=abb81(17)*abb81(77)
      abb81(79)=abb81(30)*spak2k4
      abb81(80)=-spbk2k1*abb81(79)
      abb81(81)=abb81(32)*spak2k4
      abb81(82)=abb81(81)*abb81(23)
      abb81(83)=spbk2k1*abb81(82)
      abb81(84)=abb81(16)*spak4k7
      abb81(15)=abb81(15)*abb81(84)
      abb81(14)=abb81(14)*abb81(18)
      abb81(14)=abb81(14)+abb81(15)
      abb81(14)=8.0_ki*abb81(14)
      abb81(15)=abb81(29)*spak2k4
      abb81(29)=abb81(25)*abb81(15)
      abb81(85)=-abb81(25)*abb81(81)
      abb81(12)=abb81(12)*abb81(84)
      abb81(10)=-abb81(10)*abb81(18)
      abb81(10)=abb81(10)+abb81(12)
      abb81(10)=8.0_ki*abb81(10)
      abb81(12)=abb81(11)*abb81(15)
      abb81(15)=-abb81(11)*abb81(81)
      abb81(61)=abb81(61)*abb81(77)
      abb81(81)=8.0_ki*abb81(25)
      abb81(84)=-abb81(16)*abb81(81)
      abb81(86)=8.0_ki*abb81(11)
      abb81(16)=-abb81(16)*abb81(86)
      abb81(87)=-spbk2k1*spak4k7*abb81(33)
      abb81(32)=abb81(32)*spak4k7
      abb81(25)=abb81(25)*abb81(32)
      abb81(11)=abb81(11)*abb81(32)
      abb81(18)=abb81(23)*abb81(18)
      abb81(18)=abb81(18)-abb81(19)
      abb81(19)=-abb81(18)*abb81(77)
      abb81(23)=abb81(20)*abb81(81)
      abb81(20)=abb81(20)*abb81(86)
      abb81(32)=8.0_ki*spbk7k1
      abb81(17)=-abb81(17)*abb81(32)
      abb81(32)=spbk7k1*abb81(79)
      abb81(77)=-spbk7k1*abb81(82)
      abb81(62)=-spbk7k1*abb81(62)
      abb81(18)=spbk3k1*abb81(18)
      abb81(26)=spak4k7*spbk7k1*abb81(26)
      abb81(18)=abb81(26)+abb81(18)
      abb81(18)=8.0_ki*abb81(18)
      R2d81=0.0_ki
      rat2 = rat2 + R2d81
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='81' value='", &
          & R2d81, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd81h0
