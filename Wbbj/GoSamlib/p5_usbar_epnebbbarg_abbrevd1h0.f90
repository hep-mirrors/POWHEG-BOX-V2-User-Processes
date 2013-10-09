module     p5_usbar_epnebbbarg_abbrevd1h0
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(32), public :: abb1
   complex(ki), public :: R2d1
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
      abb1(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb1(2)=es56**(-1)
      abb1(3)=spbl5k2**(-1)
      abb1(4)=spbl6k2**(-1)
      abb1(5)=c4-c2
      abb1(6)=TR*gW
      abb1(6)=abb1(6)**2*CVSU*i_*mB*abb1(2)*abb1(1)
      abb1(5)=abb1(6)*abb1(5)
      abb1(6)=NC*abb1(6)
      abb1(7)=abb1(6)*c1
      abb1(8)=abb1(5)+abb1(7)
      abb1(9)=-abb1(4)*abb1(8)
      abb1(10)=2.0_ki*abb1(4)
      abb1(6)=abb1(6)*c3
      abb1(11)=abb1(10)*abb1(6)
      abb1(9)=abb1(11)+abb1(9)
      abb1(9)=abb1(9)*spak2l5
      abb1(8)=-abb1(3)*abb1(8)
      abb1(11)=2.0_ki*abb1(3)
      abb1(12)=abb1(11)*abb1(6)
      abb1(8)=abb1(12)+abb1(8)
      abb1(8)=abb1(8)*spak2l6
      abb1(8)=abb1(9)+abb1(8)
      abb1(9)=spbk3k1*spak3k4
      abb1(12)=-4.0_ki*abb1(8)*abb1(9)*spbk3k2
      abb1(13)=spbe7k2*abb1(4)
      abb1(14)=2.0_ki*abb1(13)
      abb1(15)=-abb1(14)*abb1(5)
      abb1(16)=abb1(13)*abb1(7)
      abb1(17)=abb1(13)*abb1(6)
      abb1(17)=abb1(17)+abb1(15)+abb1(16)
      abb1(17)=abb1(17)*spal5e7
      abb1(18)=spbe7k2*abb1(3)
      abb1(19)=2.0_ki*abb1(18)
      abb1(20)=abb1(19)*abb1(5)
      abb1(21)=abb1(18)*abb1(6)
      abb1(22)=abb1(18)*abb1(7)
      abb1(20)=-abb1(21)-abb1(22)+abb1(20)
      abb1(20)=abb1(20)*spal6e7
      abb1(17)=abb1(17)-abb1(20)
      abb1(21)=spak2k4*spbk3k1*abb1(17)
      abb1(23)=abb1(6)+abb1(5)
      abb1(24)=spak2e7*spbe7k3
      abb1(25)=abb1(24)*abb1(3)
      abb1(26)=-abb1(25)*abb1(23)
      abb1(11)=abb1(11)*abb1(7)
      abb1(27)=abb1(24)*abb1(11)
      abb1(26)=abb1(27)+abb1(26)
      abb1(26)=spak4l6*abb1(26)
      abb1(27)=abb1(24)*abb1(4)
      abb1(28)=-abb1(27)*abb1(23)
      abb1(10)=abb1(10)*abb1(7)
      abb1(29)=abb1(24)*abb1(10)
      abb1(28)=abb1(29)+abb1(28)
      abb1(28)=spak4l5*abb1(28)
      abb1(26)=abb1(28)+abb1(26)
      abb1(26)=spbk2k1*abb1(26)
      abb1(28)=-spak4e7*spbe7k1*spbk3k2*abb1(8)
      abb1(21)=abb1(28)+abb1(21)+abb1(26)
      abb1(21)=2.0_ki*abb1(21)
      abb1(26)=spbk3k2*spak3k4
      abb1(28)=-2.0_ki*abb1(8)*abb1(26)*spbe7k3
      abb1(29)=abb1(24)*abb1(9)
      abb1(30)=abb1(29)*abb1(11)
      abb1(31)=abb1(23)*abb1(9)
      abb1(32)=-abb1(25)*abb1(31)
      abb1(30)=abb1(30)+abb1(32)
      abb1(30)=2.0_ki*abb1(30)
      abb1(24)=abb1(24)*abb1(26)
      abb1(11)=-abb1(24)*abb1(11)
      abb1(26)=abb1(23)*abb1(26)
      abb1(25)=abb1(25)*abb1(26)
      abb1(11)=abb1(11)+abb1(25)
      abb1(11)=2.0_ki*abb1(11)
      abb1(25)=abb1(29)*abb1(10)
      abb1(29)=-abb1(27)*abb1(31)
      abb1(25)=abb1(25)+abb1(29)
      abb1(25)=2.0_ki*abb1(25)
      abb1(10)=-abb1(24)*abb1(10)
      abb1(24)=abb1(27)*abb1(26)
      abb1(10)=abb1(10)+abb1(24)
      abb1(10)=2.0_ki*abb1(10)
      abb1(8)=-4.0_ki*spbk2k1*abb1(8)
      abb1(18)=abb1(18)*abb1(5)
      abb1(19)=-abb1(6)*abb1(19)
      abb1(18)=abb1(22)+abb1(19)+abb1(18)
      abb1(18)=spak2l6*abb1(18)
      abb1(5)=abb1(13)*abb1(5)
      abb1(14)=-abb1(6)*abb1(14)
      abb1(5)=abb1(16)+abb1(14)+abb1(5)
      abb1(5)=spak2l5*abb1(5)
      abb1(5)=abb1(18)+abb1(5)
      abb1(5)=2.0_ki*abb1(5)
      abb1(14)=-abb1(23)+2.0_ki*abb1(7)
      abb1(16)=2.0_ki*spbe7k1
      abb1(14)=spak2e7*abb1(14)*abb1(16)
      abb1(16)=-abb1(3)*abb1(14)
      abb1(14)=-abb1(4)*abb1(14)
      abb1(18)=abb1(9)*abb1(20)
      abb1(6)=-abb1(7)-abb1(6)
      abb1(6)=abb1(6)*abb1(13)
      abb1(6)=abb1(6)-abb1(15)
      abb1(6)=spal5e7*abb1(9)*abb1(6)
      abb1(6)=abb1(18)+abb1(6)
      abb1(6)=2.0_ki*abb1(6)
      abb1(7)=-2.0_ki*abb1(17)
      R2d1=0.0_ki
      rat2 = rat2 + R2d1
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='1' value='", &
          & R2d1, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd1h0
