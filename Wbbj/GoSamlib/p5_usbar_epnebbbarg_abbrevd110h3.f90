module     p5_usbar_epnebbbarg_abbrevd110h3
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(36), public :: abb110
   complex(ki), public :: R2d110
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
      abb110(1)=1.0_ki/(-es71+es712-es12)
      abb110(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb110(3)=1.0_ki/(es34+es567-es12-es234)
      abb110(4)=sqrt(mB**2)
      abb110(5)=NC**(-1)
      abb110(6)=spak2l5**(-1)
      abb110(7)=spak2l6**(-1)
      abb110(8)=spbl6k2**(-1)
      abb110(9)=c3*spbk3k1
      abb110(10)=TR*gW
      abb110(10)=abb110(10)**2*spbk7e7*i_*spak2e7*CVSU*abb110(3)*abb110(2)*abb1&
      &10(1)
      abb110(11)=abb110(9)*abb110(10)
      abb110(12)=2.0_ki*abb110(5)
      abb110(13)=abb110(12)-NC
      abb110(14)=-abb110(13)*abb110(11)*abb110(4)
      abb110(15)=mB**2
      abb110(16)=abb110(15)*abb110(7)
      abb110(17)=-abb110(16)*abb110(14)
      abb110(18)=abb110(5)*mB
      abb110(18)=abb110(18)**2
      abb110(19)=c4*spbk3k1
      abb110(20)=abb110(18)*abb110(19)
      abb110(21)=abb110(10)*abb110(7)
      abb110(22)=abb110(4)*abb110(20)*abb110(21)
      abb110(22)=abb110(22)-abb110(17)
      abb110(23)=spbk7k3*spak3k4
      abb110(24)=spbk7k1*spak1k4
      abb110(23)=abb110(23)-abb110(24)
      abb110(22)=abb110(23)*abb110(22)*abb110(6)*spak2k7**2
      abb110(24)=abb110(4)*spak2k7
      abb110(21)=abb110(24)*abb110(21)
      abb110(25)=abb110(20)*abb110(21)
      abb110(17)=-spak2k7*abb110(17)
      abb110(17)=abb110(25)+abb110(17)
      abb110(25)=spbl5k3*spak3k4
      abb110(26)=spbl5k1*spak1k4
      abb110(25)=abb110(25)-abb110(26)
      abb110(17)=-abb110(17)*abb110(25)
      abb110(24)=abb110(10)*abb110(6)*abb110(20)*abb110(24)
      abb110(26)=spak2k7*abb110(6)
      abb110(27)=abb110(14)*abb110(26)
      abb110(28)=abb110(15)*abb110(27)
      abb110(24)=abb110(24)+abb110(28)
      abb110(28)=spbl6k3*spak3k4
      abb110(29)=spbl6k1*spak1k4
      abb110(28)=abb110(28)-abb110(29)
      abb110(24)=abb110(24)*abb110(28)
      abb110(29)=abb110(5)**2
      abb110(19)=abb110(19)*abb110(29)
      abb110(30)=abb110(10)*abb110(4)
      abb110(31)=abb110(19)*abb110(30)
      abb110(14)=abb110(14)+abb110(31)
      abb110(31)=abb110(25)*spak2k7
      abb110(32)=spbl6k2*abb110(14)*abb110(31)
      abb110(17)=abb110(32)+abb110(24)+abb110(17)+abb110(22)
      abb110(17)=4.0_ki*abb110(17)
      abb110(22)=abb110(10)*mB
      abb110(24)=abb110(22)*abb110(7)
      abb110(32)=abb110(19)*abb110(24)
      abb110(33)=abb110(24)*abb110(9)
      abb110(34)=abb110(33)*NC
      abb110(12)=abb110(33)*abb110(12)
      abb110(12)=-abb110(12)+abb110(32)+abb110(34)
      abb110(31)=abb110(12)*abb110(31)
      abb110(9)=abb110(13)*abb110(22)*abb110(9)
      abb110(26)=abb110(26)*abb110(9)
      abb110(32)=abb110(22)*abb110(6)
      abb110(33)=abb110(19)*abb110(32)
      abb110(34)=abb110(33)*spak2k7
      abb110(26)=abb110(26)-abb110(34)
      abb110(34)=abb110(26)*abb110(28)
      abb110(34)=abb110(34)-abb110(31)
      abb110(34)=8.0_ki*abb110(34)
      abb110(35)=abb110(14)*spbl6l5
      abb110(36)=abb110(35)*spak4k7
      abb110(21)=abb110(21)*abb110(6)
      abb110(20)=abb110(20)*abb110(21)
      abb110(16)=-abb110(16)*abb110(27)
      abb110(16)=abb110(16)-abb110(20)
      abb110(20)=2.0_ki*abb110(16)
      abb110(27)=abb110(20)*spak2k4
      abb110(27)=abb110(36)+abb110(27)
      abb110(27)=8.0_ki*abb110(27)
      abb110(11)=-abb110(13)*abb110(11)
      abb110(10)=abb110(10)*abb110(19)
      abb110(10)=abb110(11)+abb110(10)
      abb110(10)=-abb110(8)*abb110(25)*abb110(10)*spak2k7*abb110(7)**2*mB**3
      abb110(10)=abb110(10)+abb110(31)
      abb110(10)=8.0_ki*abb110(10)
      abb110(11)=abb110(19)*abb110(22)
      abb110(11)=abb110(11)-abb110(9)
      abb110(11)=-abb110(11)*abb110(25)
      abb110(19)=-abb110(26)*abb110(23)
      abb110(11)=abb110(19)+abb110(11)
      abb110(11)=4.0_ki*abb110(11)
      abb110(9)=-abb110(6)*abb110(9)
      abb110(9)=abb110(9)+abb110(33)
      abb110(19)=8.0_ki*spak2k4
      abb110(19)=abb110(19)*abb110(9)
      abb110(14)=-4.0_ki*abb110(14)*abb110(28)
      abb110(22)=8.0_ki*abb110(12)
      abb110(23)=abb110(22)*spak2k4
      abb110(26)=-c3*abb110(13)
      abb110(15)=abb110(26)*abb110(15)
      abb110(18)=c4*abb110(18)
      abb110(15)=abb110(18)+abb110(15)
      abb110(18)=2.0_ki*spak2k4
      abb110(15)=abb110(18)*abb110(21)*abb110(15)
      abb110(18)=abb110(29)*c4
      abb110(21)=abb110(26)+abb110(18)
      abb110(26)=spbl6l5*spak4k7*abb110(21)*abb110(30)
      abb110(15)=abb110(15)-abb110(26)
      abb110(26)=-spbk4k1*abb110(15)
      abb110(28)=spak2k3*abb110(20)
      abb110(29)=spak3k7*abb110(35)
      abb110(26)=abb110(29)+abb110(26)+abb110(28)
      abb110(26)=4.0_ki*abb110(26)
      abb110(28)=-spak2k3*abb110(9)
      abb110(21)=spak2k4*abb110(21)*abb110(32)
      abb110(29)=-spbk4k1*abb110(21)
      abb110(28)=abb110(29)+abb110(28)
      abb110(28)=4.0_ki*abb110(28)
      abb110(29)=spak2k3*abb110(12)
      abb110(13)=-abb110(13)*abb110(24)*c3
      abb110(18)=abb110(18)*abb110(24)
      abb110(13)=abb110(18)+abb110(13)
      abb110(18)=abb110(13)*spbk4k1
      abb110(24)=spak2k4*abb110(18)
      abb110(24)=abb110(24)+abb110(29)
      abb110(24)=4.0_ki*abb110(24)
      abb110(15)=spbk4k3*abb110(15)
      abb110(20)=spak1k2*abb110(20)
      abb110(29)=-spak1k7*abb110(35)
      abb110(15)=abb110(29)+abb110(15)+abb110(20)
      abb110(15)=4.0_ki*abb110(15)
      abb110(20)=-spak1k2*abb110(9)
      abb110(21)=spbk4k3*abb110(21)
      abb110(20)=abb110(21)+abb110(20)
      abb110(20)=4.0_ki*abb110(20)
      abb110(21)=spak1k2*abb110(12)
      abb110(13)=abb110(13)*spbk4k3
      abb110(29)=-spak2k4*abb110(13)
      abb110(21)=abb110(29)+abb110(21)
      abb110(21)=4.0_ki*abb110(21)
      abb110(25)=-4.0_ki*spal6k7*abb110(12)*abb110(25)
      abb110(29)=4.0_ki*spak3k4
      abb110(30)=abb110(29)*abb110(9)
      abb110(31)=4.0_ki*spak1k4
      abb110(9)=abb110(31)*abb110(9)
      abb110(22)=abb110(22)*spak4k7
      abb110(32)=abb110(29)*abb110(12)
      abb110(33)=abb110(31)*abb110(12)
      abb110(35)=spak3k7*abb110(12)
      abb110(18)=spak4k7*abb110(18)
      abb110(18)=abb110(18)+abb110(35)
      abb110(18)=4.0_ki*abb110(18)
      abb110(12)=-spak1k7*abb110(12)
      abb110(13)=-spak4k7*abb110(13)
      abb110(12)=abb110(13)+abb110(12)
      abb110(12)=4.0_ki*abb110(12)
      abb110(13)=abb110(16)*abb110(29)
      abb110(16)=-abb110(16)*abb110(31)
      R2d110=0.0_ki
      rat2 = rat2 + R2d110
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='110' value='", &
          & R2d110, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd110h3
