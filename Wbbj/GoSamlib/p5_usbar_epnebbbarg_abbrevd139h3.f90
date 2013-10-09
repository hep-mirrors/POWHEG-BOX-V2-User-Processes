module     p5_usbar_epnebbbarg_abbrevd139h3
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(28), public :: abb139
   complex(ki), public :: R2d139
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
      abb139(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb139(2)=NC**(-1)
      abb139(3)=es234**(-1)
      abb139(4)=es56**(-1)
      abb139(5)=es71**(-1)
      abb139(6)=spak2l5**(-1)
      abb139(7)=spak2l6**(-1)
      abb139(8)=gW*TR*spak2k4
      abb139(8)=mB*i_*spbk4k3*CVSU*abb139(4)*abb139(3)*abb139(1)*abb139(8)**2
      abb139(9)=abb139(8)*spbe7k1*abb139(5)
      abb139(10)=abb139(9)*abb139(7)
      abb139(11)=abb139(10)*c1
      abb139(12)=abb139(9)*c4
      abb139(13)=abb139(12)*abb139(7)
      abb139(14)=abb139(13)*abb139(2)
      abb139(11)=abb139(11)-abb139(14)
      abb139(11)=abb139(11)*abb139(2)
      abb139(14)=abb139(11)+abb139(13)
      abb139(15)=abb139(14)*spae7k7
      abb139(16)=NC*c1
      abb139(10)=abb139(10)*abb139(16)
      abb139(17)=abb139(10)*spae7k7
      abb139(15)=abb139(15)-abb139(17)
      abb139(15)=abb139(15)*spbk7l5
      abb139(9)=abb139(9)*abb139(6)
      abb139(18)=abb139(9)*c1
      abb139(12)=abb139(12)*abb139(6)
      abb139(19)=abb139(12)*abb139(2)
      abb139(18)=abb139(18)-abb139(19)
      abb139(18)=abb139(18)*abb139(2)
      abb139(19)=abb139(18)+abb139(12)
      abb139(20)=abb139(19)*spae7k7
      abb139(9)=abb139(9)*abb139(16)
      abb139(16)=abb139(9)*spae7k7
      abb139(20)=abb139(20)-abb139(16)
      abb139(20)=abb139(20)*spbk7l6
      abb139(15)=abb139(15)+abb139(20)
      abb139(14)=abb139(14)*spak1e7
      abb139(20)=abb139(10)*spak1e7
      abb139(14)=abb139(14)-abb139(20)
      abb139(14)=abb139(14)*spbl5k1
      abb139(19)=abb139(19)*spak1e7
      abb139(21)=abb139(9)*spak1e7
      abb139(19)=abb139(19)-abb139(21)
      abb139(19)=abb139(19)*spbl6k1
      abb139(14)=-abb139(15)+abb139(14)+abb139(19)
      abb139(19)=2.0_ki*abb139(14)
      abb139(22)=spbl6k1*abb139(6)
      abb139(23)=spbl5k1*abb139(7)
      abb139(22)=abb139(22)+abb139(23)
      abb139(23)=abb139(8)*c1
      abb139(24)=abb139(23)*NC
      abb139(8)=abb139(8)*c4
      abb139(24)=abb139(24)-abb139(8)
      abb139(25)=-spbe7k1*abb139(24)
      abb139(26)=abb139(22)*spak1e7*abb139(25)
      abb139(27)=spbk7l6*abb139(6)
      abb139(28)=spbk7l5*abb139(7)
      abb139(27)=abb139(27)+abb139(28)
      abb139(25)=-abb139(27)*spae7k7*abb139(25)
      abb139(25)=2.0_ki*abb139(25)+abb139(26)
      abb139(25)=2.0_ki*abb139(25)
      abb139(22)=-4.0_ki*abb139(24)*abb139(22)
      abb139(24)=abb139(13)*spak1e7
      abb139(20)=abb139(24)-abb139(20)
      abb139(20)=abb139(20)*spbl5k1
      abb139(24)=abb139(12)*spak1e7
      abb139(21)=abb139(24)-abb139(21)
      abb139(21)=abb139(21)*spbl6k1
      abb139(20)=abb139(20)+abb139(21)
      abb139(15)=abb139(20)-abb139(15)
      abb139(15)=8.0_ki*abb139(15)
      abb139(21)=-spae7k7*abb139(12)
      abb139(16)=abb139(21)+abb139(16)
      abb139(16)=spbk7l6*abb139(16)
      abb139(21)=-spae7k7*abb139(13)
      abb139(17)=abb139(21)+abb139(17)
      abb139(17)=spbk7l5*abb139(17)
      abb139(16)=abb139(17)+abb139(16)+abb139(20)
      abb139(16)=8.0_ki*abb139(16)
      abb139(17)=abb139(23)*abb139(5)
      abb139(20)=abb139(17)*NC
      abb139(8)=abb139(8)*abb139(5)
      abb139(20)=abb139(20)-abb139(8)
      abb139(21)=-abb139(6)*abb139(20)
      abb139(8)=abb139(8)*abb139(2)
      abb139(8)=abb139(8)-abb139(17)
      abb139(17)=abb139(2)*abb139(6)*abb139(8)
      abb139(23)=abb139(17)+abb139(21)
      abb139(24)=-spbl6k1*abb139(23)
      abb139(20)=-abb139(7)*abb139(20)
      abb139(8)=abb139(2)*abb139(7)*abb139(8)
      abb139(26)=abb139(8)+abb139(20)
      abb139(27)=-spbl5k1*abb139(26)
      abb139(24)=abb139(24)+abb139(27)
      abb139(24)=16.0_ki*abb139(24)
      abb139(14)=-4.0_ki*abb139(14)
      abb139(27)=2.0_ki*abb139(17)+abb139(21)
      abb139(27)=spbl6k1*abb139(27)
      abb139(28)=2.0_ki*abb139(8)+abb139(20)
      abb139(28)=spbl5k1*abb139(28)
      abb139(27)=abb139(27)+abb139(28)
      abb139(27)=spbk7e7*abb139(27)
      abb139(9)=abb139(12)-abb139(9)
      abb139(9)=spbk7l6*abb139(9)
      abb139(10)=abb139(13)-abb139(10)
      abb139(10)=spbk7l5*abb139(10)
      abb139(9)=abb139(27)+abb139(9)+abb139(10)
      abb139(9)=2.0_ki*spak1k7*abb139(9)
      abb139(10)=-abb139(17)+abb139(21)
      abb139(10)=spbl6k1*abb139(10)
      abb139(8)=-abb139(8)+abb139(20)
      abb139(8)=spbl5k1*abb139(8)
      abb139(8)=abb139(10)+abb139(8)
      abb139(8)=4.0_ki*spbk7e7*spak1e7*abb139(8)
      abb139(10)=-spbk7l6*abb139(23)
      abb139(12)=-spbk7l5*abb139(26)
      abb139(10)=abb139(10)+abb139(12)
      abb139(10)=8.0_ki*abb139(10)
      abb139(12)=-spbl6k1*abb139(18)
      abb139(11)=-spbl5k1*abb139(11)
      abb139(11)=abb139(12)+abb139(11)
      abb139(11)=4.0_ki*spae7k7*abb139(11)
      R2d139=abb139(19)
      rat2 = rat2 + R2d139
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='139' value='", &
          & R2d139, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd139h3
