module     p0_dbaru_epnebbbarg_abbrevd81h7
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh7
   implicit none
   private
   complex(ki), dimension(74), public :: abb81
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
      abb81(5)=spak2l5**(-1)
      abb81(6)=spbk7k2**(-1)
      abb81(7)=spak2l6**(-1)
      abb81(8)=c3*abb81(2)
      abb81(9)=c4*abb81(2)**2
      abb81(8)=-abb81(8)+abb81(9)+c2
      abb81(9)=spak4k7*abb81(8)
      abb81(10)=abb81(7)*abb81(6)
      abb81(11)=TR*gW
      abb81(11)=CVDU*i_*mB*abb81(4)*abb81(3)*abb81(1)*abb81(11)**2
      abb81(12)=abb81(10)*abb81(11)
      abb81(13)=-abb81(12)*abb81(9)
      abb81(14)=abb81(13)*spbl5k2
      abb81(15)=abb81(11)*abb81(5)
      abb81(16)=abb81(15)*abb81(6)
      abb81(17)=-abb81(16)*abb81(9)
      abb81(18)=abb81(17)*spbl6k2
      abb81(14)=abb81(18)+abb81(14)
      abb81(18)=spak1k7*spbk7k3
      abb81(19)=abb81(18)*abb81(14)
      abb81(20)=abb81(14)*spbk4k3
      abb81(21)=abb81(20)*spak1k4
      abb81(19)=abb81(19)+abb81(21)
      abb81(21)=-32.0_ki*abb81(19)
      abb81(19)=16.0_ki*abb81(19)
      abb81(22)=abb81(11)*spak1k2
      abb81(10)=abb81(22)*abb81(10)
      abb81(23)=-abb81(10)*abb81(9)
      abb81(24)=abb81(23)*spbl5k2
      abb81(25)=abb81(22)*abb81(5)*abb81(6)
      abb81(26)=abb81(25)*abb81(9)
      abb81(27)=abb81(26)*spbl6k2
      abb81(24)=abb81(27)-abb81(24)
      abb81(27)=abb81(24)*spbk7k3
      abb81(28)=-es12+es712-es71
      abb81(29)=-abb81(27)*abb81(28)
      abb81(22)=abb81(8)*abb81(22)*spak4k7
      abb81(30)=abb81(5)*abb81(22)
      abb81(31)=spbl6k2*abb81(30)
      abb81(22)=abb81(7)*abb81(22)
      abb81(32)=spbl5k2*abb81(22)
      abb81(31)=abb81(31)+abb81(32)
      abb81(31)=spbk4k3*spak2k4*abb81(31)
      abb81(29)=abb81(31)+abb81(29)
      abb81(29)=8.0_ki*abb81(29)
      abb81(10)=abb81(10)*abb81(8)
      abb81(31)=abb81(10)*spbl5k2
      abb81(25)=abb81(25)*abb81(8)
      abb81(32)=abb81(25)*spbl6k2
      abb81(31)=abb81(31)+abb81(32)
      abb81(32)=spbk3k2*abb81(31)
      abb81(33)=abb81(32)*spak2k4
      abb81(27)=abb81(33)-abb81(27)
      abb81(33)=16.0_ki*abb81(27)
      abb81(34)=16.0_ki*spak2k4
      abb81(32)=abb81(32)*abb81(34)
      abb81(35)=abb81(10)*spbl5k3
      abb81(36)=abb81(25)*spbl6k3
      abb81(35)=abb81(35)+abb81(36)
      abb81(36)=abb81(35)*spak3k4
      abb81(37)=spbk3k2*abb81(36)
      abb81(22)=abb81(22)*spbl5k3
      abb81(30)=abb81(30)*spbl6k3
      abb81(22)=abb81(37)+abb81(22)+abb81(30)
      abb81(30)=spbk4k3*spak1k4
      abb81(30)=abb81(30)+abb81(18)
      abb81(37)=-abb81(13)*abb81(30)
      abb81(38)=spbk3k2*abb81(23)
      abb81(37)=abb81(38)+abb81(37)
      abb81(37)=spbk7l5*abb81(37)
      abb81(30)=-abb81(17)*abb81(30)
      abb81(38)=-spbk3k2*abb81(26)
      abb81(30)=abb81(38)+abb81(30)
      abb81(30)=spbk7l6*abb81(30)
      abb81(30)=abb81(37)+abb81(30)-abb81(22)
      abb81(30)=16.0_ki*abb81(30)
      abb81(12)=abb81(12)*abb81(8)
      abb81(37)=abb81(12)*spak1k4
      abb81(38)=abb81(37)*spbl5k3
      abb81(16)=abb81(16)*abb81(8)
      abb81(39)=abb81(16)*spak1k4
      abb81(40)=abb81(39)*spbl6k3
      abb81(38)=abb81(38)+abb81(40)
      abb81(40)=32.0_ki*abb81(38)
      abb81(41)=abb81(23)*spbk7l5
      abb81(42)=abb81(26)*spbk7l6
      abb81(41)=abb81(42)-abb81(41)
      abb81(42)=abb81(41)*spbk3k2
      abb81(22)=abb81(22)+abb81(42)
      abb81(42)=-16.0_ki*abb81(22)
      abb81(22)=abb81(22)-abb81(27)
      abb81(22)=8.0_ki*abb81(22)
      abb81(27)=16.0_ki*abb81(38)
      abb81(38)=8.0_ki*abb81(41)
      abb81(43)=-spbk7k3*abb81(38)
      abb81(44)=8.0_ki*abb81(31)
      abb81(28)=es234-es34+abb81(28)
      abb81(28)=abb81(28)*abb81(44)
      abb81(45)=abb81(12)*spak1k7
      abb81(46)=-spbk7l5*abb81(45)
      abb81(47)=spbl5k4*abb81(37)
      abb81(48)=abb81(12)*spbl5k3
      abb81(49)=abb81(16)*spbl6k3
      abb81(48)=abb81(49)+abb81(48)
      abb81(49)=spak1k3*abb81(48)
      abb81(50)=abb81(16)*spak1k7
      abb81(51)=-spbk7l6*abb81(50)
      abb81(52)=spbl6k4*abb81(39)
      abb81(46)=abb81(49)+abb81(47)+abb81(52)+abb81(46)+abb81(51)+abb81(31)
      abb81(46)=16.0_ki*abb81(46)
      abb81(31)=16.0_ki*abb81(31)
      abb81(47)=spbk7l5*abb81(10)
      abb81(49)=spbk7l6*abb81(25)
      abb81(47)=abb81(49)+abb81(47)
      abb81(47)=8.0_ki*abb81(47)
      abb81(24)=abb81(24)*spbk4k3
      abb81(49)=-16.0_ki*abb81(24)
      abb81(24)=8.0_ki*abb81(24)
      abb81(38)=-spbk4k3*abb81(38)
      abb81(51)=16.0_ki*abb81(35)
      abb81(35)=8.0_ki*abb81(35)
      abb81(52)=-spbl5k4*abb81(10)
      abb81(53)=-spbl6k4*abb81(25)
      abb81(52)=abb81(53)+abb81(52)
      abb81(52)=8.0_ki*abb81(52)
      abb81(53)=spak3k4*spbk3k2**2
      abb81(53)=8.0_ki*abb81(53)
      abb81(54)=-abb81(25)*abb81(53)
      abb81(55)=16.0_ki*spbk3k2
      abb81(56)=abb81(39)*abb81(55)
      abb81(57)=8.0_ki*spbk3k2
      abb81(58)=-abb81(39)*abb81(57)
      abb81(59)=16.0_ki*spbk7k3
      abb81(39)=abb81(39)*abb81(59)
      abb81(60)=-abb81(55)*abb81(50)
      abb81(50)=abb81(57)*abb81(50)
      abb81(18)=16.0_ki*abb81(18)
      abb81(61)=-abb81(16)*abb81(18)
      abb81(53)=-abb81(10)*abb81(53)
      abb81(62)=abb81(37)*abb81(55)
      abb81(63)=-abb81(37)*abb81(57)
      abb81(37)=abb81(37)*abb81(59)
      abb81(59)=-abb81(55)*abb81(45)
      abb81(45)=abb81(57)*abb81(45)
      abb81(18)=-abb81(12)*abb81(18)
      abb81(14)=spbk7k3*abb81(14)*spak2k7
      abb81(20)=abb81(20)*spak2k4
      abb81(14)=abb81(14)+abb81(20)
      abb81(20)=spbl5k3*abb81(13)
      abb81(64)=spbl6k3*abb81(17)
      abb81(20)=abb81(64)+abb81(20)
      abb81(20)=es12*abb81(20)
      abb81(20)=abb81(20)-abb81(14)
      abb81(20)=8.0_ki*abb81(20)
      abb81(64)=abb81(12)*spbl5k2
      abb81(65)=abb81(16)*spbl6k2
      abb81(64)=abb81(65)+abb81(64)
      abb81(65)=8.0_ki*abb81(64)
      abb81(66)=-spak2k7*abb81(65)
      abb81(67)=abb81(57)*abb81(17)
      abb81(57)=abb81(57)*abb81(13)
      abb81(68)=8.0_ki*abb81(16)
      abb81(69)=es12*abb81(68)
      abb81(70)=8.0_ki*abb81(12)
      abb81(71)=es12*abb81(70)
      abb81(72)=abb81(65)*spak2k4
      abb81(48)=-spak3k4*abb81(48)
      abb81(73)=spbk7l5*abb81(13)
      abb81(74)=spbk7l6*abb81(17)
      abb81(48)=abb81(73)+abb81(48)+abb81(74)
      abb81(48)=8.0_ki*es12*abb81(48)
      abb81(34)=abb81(34)*abb81(64)
      abb81(64)=-spak2k3*abb81(65)
      abb81(9)=abb81(15)*abb81(9)
      abb81(15)=spak3k4*spbk3k2
      abb81(16)=-abb81(16)*abb81(15)
      abb81(9)=abb81(16)+abb81(9)
      abb81(9)=8.0_ki*abb81(9)
      abb81(12)=-abb81(12)*abb81(15)
      abb81(8)=abb81(11)*spak4k7*abb81(8)*abb81(7)
      abb81(8)=abb81(12)+abb81(8)
      abb81(8)=8.0_ki*abb81(8)
      abb81(11)=16.0_ki*abb81(14)
      abb81(12)=-8.0_ki*abb81(14)
      abb81(14)=abb81(36)+abb81(41)
      abb81(14)=spbk3k1*abb81(14)
      abb81(15)=-spbl5k3*abb81(23)
      abb81(16)=spbl6k3*abb81(26)
      abb81(15)=abb81(16)+abb81(15)
      abb81(15)=spbk7k1*abb81(15)
      abb81(14)=abb81(14)+abb81(15)
      abb81(14)=8.0_ki*abb81(14)
      abb81(10)=-spbl5k1*abb81(10)
      abb81(15)=-spbl6k1*abb81(25)
      abb81(10)=abb81(15)+abb81(10)
      abb81(10)=8.0_ki*abb81(10)
      abb81(15)=-abb81(17)*abb81(55)
      abb81(13)=-abb81(13)*abb81(55)
      R2d81=0.0_ki
      rat2 = rat2 + R2d81
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='81' value='", &
          & R2d81, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd81h7
