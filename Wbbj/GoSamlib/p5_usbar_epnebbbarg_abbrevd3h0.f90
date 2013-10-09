module     p5_usbar_epnebbbarg_abbrevd3h0
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(20), public :: abb3
   complex(ki), public :: R2d3
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
      abb3(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb3(2)=es234**(-1)
      abb3(3)=es56**(-1)
      abb3(4)=spbl5k2**(-1)
      abb3(5)=spbl6k2**(-1)
      abb3(6)=-c1+2.0_ki*c3
      abb3(7)=-spbk2k1*abb3(6)
      abb3(8)=abb3(7)*NC
      abb3(9)=c4-c2
      abb3(10)=-spbk2k1*abb3(9)
      abb3(8)=abb3(8)-abb3(10)
      abb3(11)=-abb3(5)*spak4l5*abb3(8)
      abb3(8)=-abb3(4)*spak4l6*abb3(8)
      abb3(8)=abb3(11)+abb3(8)
      abb3(8)=spbk4k3*abb3(8)
      abb3(11)=NC*spbk3k2
      abb3(7)=abb3(7)*abb3(11)
      abb3(10)=abb3(10)*spbk3k2
      abb3(7)=abb3(7)-abb3(10)
      abb3(10)=-abb3(5)*spak2l5*abb3(7)
      abb3(7)=-abb3(4)*spak2l6*abb3(7)
      abb3(7)=abb3(8)+abb3(10)+abb3(7)
      abb3(8)=gW*TR
      abb3(8)=abb3(8)**2*abb3(3)*abb3(1)*abb3(2)*CVSU*mB*spak2k4*i_
      abb3(7)=4.0_ki*abb3(7)*abb3(8)
      abb3(10)=abb3(6)*NC
      abb3(10)=abb3(10)-abb3(9)
      abb3(12)=abb3(5)*spak4l5*abb3(10)
      abb3(10)=abb3(4)*spak4l6*abb3(10)
      abb3(10)=abb3(12)+abb3(10)
      abb3(10)=spbk4k3*abb3(10)
      abb3(6)=abb3(6)*abb3(11)
      abb3(12)=abb3(9)*spbk3k2
      abb3(6)=abb3(6)-abb3(12)
      abb3(13)=abb3(5)*spak2l5*abb3(6)
      abb3(6)=abb3(4)*spak2l6*abb3(6)
      abb3(6)=abb3(10)+abb3(13)+abb3(6)
      abb3(10)=2.0_ki*spbe7k2
      abb3(10)=abb3(10)*abb3(8)
      abb3(6)=abb3(6)*abb3(10)
      abb3(13)=-c3+2.0_ki*c1
      abb3(14)=-abb3(11)*abb3(13)
      abb3(12)=abb3(12)+abb3(14)
      abb3(12)=abb3(12)*spbe7k1*spak2e7
      abb3(13)=abb3(13)*NC
      abb3(13)=abb3(13)-abb3(9)
      abb3(14)=-spbk4k3*abb3(13)*spak4e7*spbe7k1
      abb3(12)=abb3(14)+abb3(12)
      abb3(8)=2.0_ki*abb3(8)
      abb3(8)=abb3(12)*abb3(8)
      abb3(12)=-abb3(4)*abb3(8)
      abb3(14)=abb3(10)*spbk4k3
      abb3(13)=-abb3(14)*spak4e7*abb3(13)
      abb3(15)=abb3(4)*abb3(13)
      abb3(8)=-abb3(5)*abb3(8)
      abb3(13)=abb3(5)*abb3(13)
      abb3(16)=abb3(9)*spal5e7
      abb3(17)=c3+c1
      abb3(18)=abb3(17)*spal5e7
      abb3(19)=NC*abb3(18)
      abb3(19)=-2.0_ki*abb3(16)+abb3(19)
      abb3(19)=abb3(5)*abb3(19)
      abb3(9)=abb3(9)*spal6e7
      abb3(17)=abb3(17)*spal6e7
      abb3(20)=NC*abb3(17)
      abb3(20)=-2.0_ki*abb3(9)+abb3(20)
      abb3(20)=abb3(4)*abb3(20)
      abb3(19)=abb3(19)+abb3(20)
      abb3(14)=abb3(19)*abb3(14)
      abb3(19)=2.0_ki*spbk3k2
      abb3(16)=-abb3(16)*abb3(19)
      abb3(18)=abb3(18)*abb3(11)
      abb3(16)=abb3(16)+abb3(18)
      abb3(16)=abb3(5)*abb3(16)
      abb3(9)=-abb3(9)*abb3(19)
      abb3(11)=abb3(17)*abb3(11)
      abb3(9)=abb3(9)+abb3(11)
      abb3(9)=abb3(4)*abb3(9)
      abb3(9)=abb3(16)+abb3(9)
      abb3(9)=abb3(9)*abb3(10)
      R2d3=0.0_ki
      rat2 = rat2 + R2d3
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='3' value='", &
          & R2d3, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd3h0
