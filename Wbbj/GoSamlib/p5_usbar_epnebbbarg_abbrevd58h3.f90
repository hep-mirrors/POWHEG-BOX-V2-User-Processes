module     p5_usbar_epnebbbarg_abbrevd58h3
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(27), public :: abb58
   complex(ki), public :: R2d58
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
      abb58(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb58(2)=NC**(-1)
      abb58(3)=es234**(-1)
      abb58(4)=es56**(-1)
      abb58(5)=es71**(-1)
      abb58(6)=spak2l5**(-1)
      abb58(7)=spak2l6**(-1)
      abb58(8)=abb58(2)**2
      abb58(8)=abb58(8)-1.0_ki
      abb58(9)=CVSU*mB*i_*spbk4k3*abb58(4)*abb58(3)
      abb58(10)=abb58(9)*spbe7k1*abb58(1)
      abb58(11)=abb58(8)*abb58(10)
      abb58(12)=TR*spak2k4
      abb58(13)=abb58(5)*gW**2*abb58(12)**2
      abb58(14)=abb58(11)*abb58(13)
      abb58(15)=c4*abb58(6)
      abb58(16)=abb58(14)*abb58(15)
      abb58(17)=abb58(10)*c1*abb58(13)
      abb58(18)=abb58(6)*abb58(17)
      abb58(19)=abb58(18)*abb58(2)
      abb58(16)=abb58(16)-abb58(19)
      abb58(19)=spbl6k1*spak1e7
      abb58(20)=-abb58(16)*abb58(19)
      abb58(21)=c4*abb58(7)
      abb58(14)=abb58(14)*abb58(21)
      abb58(17)=abb58(7)*abb58(17)
      abb58(22)=abb58(17)*abb58(2)
      abb58(14)=abb58(14)-abb58(22)
      abb58(22)=spbl5k1*spak1e7
      abb58(23)=-abb58(14)*abb58(22)
      abb58(24)=-abb58(19)*abb58(18)
      abb58(25)=-abb58(22)*abb58(17)
      abb58(24)=abb58(24)+abb58(25)
      abb58(24)=NC*abb58(24)
      abb58(16)=spae7k7*abb58(16)
      abb58(25)=NC*spae7k7
      abb58(18)=abb58(25)*abb58(18)
      abb58(16)=abb58(16)+abb58(18)
      abb58(16)=spbk7l6*abb58(16)
      abb58(14)=spae7k7*abb58(14)
      abb58(17)=abb58(25)*abb58(17)
      abb58(14)=abb58(14)+abb58(17)
      abb58(14)=spbk7l5*abb58(14)
      abb58(14)=abb58(14)+abb58(16)+abb58(24)+abb58(20)+abb58(23)
      abb58(14)=4.0_ki*abb58(14)
      abb58(13)=abb58(9)*abb58(13)
      abb58(8)=abb58(1)*abb58(8)
      abb58(16)=-abb58(13)*abb58(8)
      abb58(17)=abb58(16)*abb58(15)
      abb58(18)=c1*abb58(1)
      abb58(13)=abb58(13)*abb58(18)
      abb58(20)=abb58(6)*abb58(2)
      abb58(23)=abb58(20)*abb58(13)
      abb58(17)=abb58(17)+abb58(23)
      abb58(17)=spbl6k1*abb58(17)
      abb58(16)=abb58(16)*abb58(21)
      abb58(23)=abb58(7)*abb58(2)
      abb58(24)=abb58(23)*abb58(13)
      abb58(16)=abb58(16)+abb58(24)
      abb58(16)=spbl5k1*abb58(16)
      abb58(24)=spbl6k1*abb58(6)
      abb58(26)=spbl5k1*abb58(7)
      abb58(24)=abb58(24)+abb58(26)
      abb58(24)=abb58(24)*NC
      abb58(13)=-abb58(13)*abb58(24)
      abb58(13)=abb58(13)+abb58(17)+abb58(16)
      abb58(13)=16.0_ki*abb58(13)
      abb58(12)=abb58(12)*gW*abb58(5)
      abb58(12)=abb58(12)**2
      abb58(10)=c1*abb58(10)*abb58(12)
      abb58(16)=abb58(10)*abb58(7)
      abb58(17)=abb58(22)*abb58(16)
      abb58(10)=abb58(10)*abb58(6)
      abb58(26)=abb58(19)*abb58(10)
      abb58(17)=abb58(17)+abb58(26)
      abb58(17)=abb58(17)*NC
      abb58(11)=abb58(12)*abb58(11)
      abb58(26)=abb58(11)*abb58(21)
      abb58(27)=abb58(16)*abb58(2)
      abb58(26)=abb58(26)-abb58(27)
      abb58(22)=abb58(26)*abb58(22)
      abb58(11)=abb58(11)*abb58(15)
      abb58(27)=abb58(10)*abb58(2)
      abb58(11)=abb58(11)-abb58(27)
      abb58(19)=abb58(11)*abb58(19)
      abb58(17)=abb58(17)+abb58(22)+abb58(19)
      abb58(19)=abb58(26)*spae7k7
      abb58(22)=abb58(25)*abb58(16)
      abb58(19)=abb58(22)+abb58(19)
      abb58(19)=abb58(19)*spbk7l5
      abb58(22)=abb58(11)*spae7k7
      abb58(27)=abb58(25)*abb58(10)
      abb58(22)=abb58(27)+abb58(22)
      abb58(22)=abb58(22)*spbk7l6
      abb58(19)=abb58(19)+abb58(22)
      abb58(22)=-2.0_ki*abb58(17)+abb58(19)
      abb58(22)=8.0_ki*abb58(22)
      abb58(17)=abb58(17)-2.0_ki*abb58(19)
      abb58(17)=8.0_ki*abb58(17)
      abb58(9)=abb58(12)*abb58(9)
      abb58(8)=-abb58(9)*abb58(8)
      abb58(12)=abb58(8)*abb58(15)
      abb58(9)=abb58(9)*abb58(18)
      abb58(15)=abb58(20)*abb58(9)
      abb58(12)=abb58(12)+abb58(15)
      abb58(12)=spbl6k1*abb58(12)
      abb58(8)=abb58(8)*abb58(21)
      abb58(15)=abb58(23)*abb58(9)
      abb58(8)=abb58(8)+abb58(15)
      abb58(8)=spbl5k1*abb58(8)
      abb58(9)=-abb58(9)*abb58(24)
      abb58(8)=abb58(9)+abb58(12)+abb58(8)
      abb58(8)=spbk7e7*abb58(8)
      abb58(9)=abb58(16)*NC
      abb58(9)=abb58(9)+abb58(26)
      abb58(9)=abb58(9)*spbk7l5
      abb58(12)=abb58(10)*NC
      abb58(12)=abb58(12)+abb58(11)
      abb58(12)=abb58(12)*spbk7l6
      abb58(9)=abb58(9)+abb58(12)
      abb58(8)=abb58(8)+abb58(9)
      abb58(8)=8.0_ki*spak1k7*abb58(8)
      abb58(9)=-4.0_ki*spak1e7*abb58(9)
      abb58(11)=-spbl6k1*abb58(11)
      abb58(12)=-spbl5k1*abb58(26)
      abb58(11)=abb58(11)+abb58(12)
      abb58(11)=spae7k7*abb58(11)
      abb58(10)=-spbl6k1*abb58(10)
      abb58(12)=-spbl5k1*abb58(16)
      abb58(10)=abb58(10)+abb58(12)
      abb58(10)=abb58(10)*abb58(25)
      abb58(10)=abb58(10)+abb58(11)
      abb58(10)=4.0_ki*abb58(10)
      R2d58=0.0_ki
      rat2 = rat2 + R2d58
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='58' value='", &
          & R2d58, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd58h3
