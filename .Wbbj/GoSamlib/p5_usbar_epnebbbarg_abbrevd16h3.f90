module     p5_usbar_epnebbbarg_abbrevd16h3
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(40), public :: abb16
   complex(ki), public :: R2d16
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
      abb16(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb16(2)=es56**(-1)
      abb16(3)=es71**(-1)
      abb16(4)=spak2l5**(-1)
      abb16(5)=spak2l6**(-1)
      abb16(6)=spbl5k3**2*spak3k4*spak2l5
      abb16(7)=abb16(6)*abb16(5)
      abb16(8)=spak2l6*spak3k4*spbl6k3**2
      abb16(9)=abb16(8)*abb16(4)
      abb16(10)=spbl6k3*spak3k4
      abb16(11)=abb16(10)*spbl5k3
      abb16(11)=2.0_ki*abb16(11)
      abb16(7)=abb16(11)+abb16(7)+abb16(9)
      abb16(9)=c1*NC
      abb16(9)=abb16(9)-c4
      abb16(7)=abb16(9)*abb16(7)
      abb16(12)=gW*TR
      abb16(12)=abb16(3)*abb16(1)*abb16(2)*CVSU*mB*i_*abb16(12)**2
      abb16(13)=8.0_ki*abb16(12)
      abb16(14)=spak2k7*spbk7k1
      abb16(15)=-abb16(13)*abb16(14)*abb16(7)
      abb16(16)=abb16(5)*spak2e7
      abb16(6)=abb16(6)*abb16(16)
      abb16(17)=abb16(4)*spak2e7
      abb16(8)=abb16(8)*abb16(17)
      abb16(11)=abb16(11)*spak2e7
      abb16(6)=abb16(11)+abb16(6)+abb16(8)
      abb16(8)=abb16(12)*spbe7k1
      abb16(6)=abb16(8)*abb16(9)*abb16(6)
      abb16(6)=8.0_ki*abb16(6)
      abb16(11)=spbl5k3*spbl6k1
      abb16(18)=spbl6k3*spbl5k1
      abb16(11)=abb16(11)+abb16(18)
      abb16(11)=abb16(11)*spak1e7
      abb16(18)=spbl5k3*spbk7l6
      abb16(19)=spbl6k3*spbk7l5
      abb16(18)=abb16(18)+abb16(19)
      abb16(18)=abb16(18)*spae7k7
      abb16(19)=spak1e7*spbl6k1
      abb16(20)=spae7k7*spbk7l6
      abb16(19)=abb16(19)-abb16(20)
      abb16(20)=spbl6k3*spak2l6
      abb16(21)=-abb16(4)*abb16(20)*abb16(19)
      abb16(22)=spak1e7*spbl5k1
      abb16(23)=spae7k7*spbk7l5
      abb16(22)=abb16(22)-abb16(23)
      abb16(23)=spbl5k3*spak2l5
      abb16(24)=-abb16(5)*abb16(23)*abb16(22)
      abb16(11)=-abb16(11)+abb16(18)+abb16(21)+abb16(24)
      abb16(18)=abb16(9)*abb16(11)
      abb16(21)=abb16(8)*spak2k4
      abb16(24)=8.0_ki*abb16(21)
      abb16(25)=abb16(18)*abb16(24)
      abb16(26)=abb16(22)*abb16(5)
      abb16(27)=abb16(19)*abb16(4)
      abb16(28)=abb16(27)+abb16(26)
      abb16(29)=abb16(9)*spak2k4
      abb16(28)=abb16(29)*spbk4k3*abb16(28)
      abb16(18)=2.0_ki*abb16(18)+abb16(28)
      abb16(21)=2.0_ki*abb16(21)
      abb16(18)=abb16(18)*abb16(21)
      abb16(28)=abb16(5)*spbl5k3
      abb16(30)=abb16(4)*spbl6k3
      abb16(28)=abb16(28)+abb16(30)
      abb16(30)=4.0_ki*abb16(12)
      abb16(31)=-abb16(30)*abb16(28)*abb16(14)*abb16(29)
      abb16(17)=abb16(17)*spbl6k3
      abb16(16)=abb16(16)*spbl5k3
      abb16(16)=abb16(17)+abb16(16)
      abb16(17)=4.0_ki*abb16(8)
      abb16(16)=-abb16(17)*abb16(16)*abb16(29)
      abb16(32)=spbe7k1*spak1k2
      abb16(33)=spak2k7*spbk7e7
      abb16(32)=abb16(32)-abb16(33)
      abb16(7)=-abb16(30)*abb16(7)*abb16(32)
      abb16(28)=-2.0_ki*abb16(12)*spak2k4*abb16(32)*abb16(9)*abb16(28)
      abb16(11)=abb16(9)*spak2k3*abb16(11)
      abb16(30)=spbl5k1*spbl6k4
      abb16(33)=spbl6k1*spbl5k4
      abb16(30)=abb16(30)+abb16(33)
      abb16(30)=abb16(30)*spak1e7
      abb16(33)=spbk7l5*spbl6k4
      abb16(34)=spbk7l6*spbl5k4
      abb16(33)=abb16(33)+abb16(34)
      abb16(33)=abb16(33)*spae7k7
      abb16(27)=spak2l6*spbl6k4*abb16(27)
      abb16(26)=spak2l5*spbl5k4*abb16(26)
      abb16(26)=abb16(27)+abb16(26)+abb16(30)-abb16(33)
      abb16(26)=-abb16(26)*abb16(29)
      abb16(11)=abb16(26)+abb16(11)
      abb16(11)=abb16(11)*abb16(17)
      abb16(26)=spak1e7*spbk3k1
      abb16(27)=spae7k7*spbk7k3
      abb16(26)=abb16(26)-abb16(27)
      abb16(27)=abb16(26)*spak3k4
      abb16(29)=abb16(9)*abb16(17)
      abb16(20)=-abb16(4)*abb16(20)
      abb16(20)=abb16(20)-spbl5k3
      abb16(20)=abb16(29)*abb16(27)*abb16(20)
      abb16(30)=-abb16(4)*abb16(9)
      abb16(33)=-abb16(26)*abb16(30)
      abb16(34)=abb16(33)*abb16(24)
      abb16(33)=abb16(33)*abb16(21)
      abb16(35)=spak2l6*spbl6k1
      abb16(36)=spbk3k1*spak2k3
      abb16(35)=abb16(35)-abb16(36)
      abb16(35)=abb16(35)*spak1e7
      abb16(37)=spak2l6*spbk7l6
      abb16(38)=spbk7k3*spak2k3
      abb16(37)=abb16(37)-abb16(38)
      abb16(37)=abb16(37)*spae7k7
      abb16(35)=abb16(35)-abb16(37)
      abb16(35)=abb16(35)*abb16(4)
      abb16(22)=abb16(35)+abb16(22)
      abb16(22)=-abb16(22)*abb16(9)
      abb16(35)=spak1e7*spbk4k1
      abb16(37)=spae7k7*spbk7k4
      abb16(35)=abb16(35)-abb16(37)
      abb16(35)=abb16(35)*spak2k4
      abb16(37)=-abb16(30)*abb16(35)
      abb16(22)=abb16(37)+abb16(22)
      abb16(22)=abb16(22)*abb16(17)
      abb16(12)=16.0_ki*abb16(12)
      abb16(12)=abb16(12)*abb16(14)
      abb16(14)=abb16(30)*abb16(12)
      abb16(8)=16.0_ki*abb16(8)
      abb16(8)=abb16(8)*spak2e7
      abb16(37)=abb16(30)*abb16(8)
      abb16(39)=abb16(13)*abb16(30)*abb16(32)
      abb16(30)=abb16(30)*abb16(17)
      abb16(40)=-spae7k7*abb16(30)
      abb16(23)=-abb16(5)*abb16(27)*abb16(23)
      abb16(10)=abb16(26)*abb16(10)
      abb16(10)=abb16(23)-abb16(10)
      abb16(10)=abb16(10)*abb16(29)
      abb16(23)=-abb16(5)*abb16(9)
      abb16(26)=-abb16(26)*abb16(23)
      abb16(24)=abb16(26)*abb16(24)
      abb16(21)=abb16(26)*abb16(21)
      abb16(26)=spak2l5*spbl5k1
      abb16(26)=abb16(26)-abb16(36)
      abb16(26)=abb16(26)*spak1e7
      abb16(29)=spak2l5*spbk7l5
      abb16(29)=abb16(29)-abb16(38)
      abb16(29)=abb16(29)*spae7k7
      abb16(26)=abb16(26)-abb16(29)
      abb16(26)=abb16(26)*abb16(5)
      abb16(19)=abb16(26)+abb16(19)
      abb16(9)=-abb16(19)*abb16(9)
      abb16(19)=-abb16(23)*abb16(35)
      abb16(9)=abb16(19)+abb16(9)
      abb16(9)=abb16(9)*abb16(17)
      abb16(12)=abb16(23)*abb16(12)
      abb16(8)=abb16(23)*abb16(8)
      abb16(13)=abb16(13)*abb16(23)*abb16(32)
      abb16(17)=abb16(23)*abb16(17)
      abb16(19)=-spae7k7*abb16(17)
      abb16(23)=-abb16(27)*abb16(30)
      abb16(26)=-abb16(27)*abb16(17)
      abb16(27)=-spak1e7*abb16(30)
      abb16(17)=-spak1e7*abb16(17)
      R2d16=0.0_ki
      rat2 = rat2 + R2d16
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='16' value='", &
          & R2d16, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd16h3
