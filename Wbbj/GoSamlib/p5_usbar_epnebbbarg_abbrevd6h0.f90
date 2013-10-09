module     p5_usbar_epnebbbarg_abbrevd6h0
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(21), public :: abb6
   complex(ki), public :: R2d6
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
      abb6(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb6(2)=es234**(-1)
      abb6(3)=es567**(-1)
      abb6(4)=es56**(-1)
      abb6(5)=spbl5k2**(-1)
      abb6(6)=spbl6k2**(-1)
      abb6(7)=spak2l5**(-1)
      abb6(8)=spak2l6**(-1)
      abb6(9)=1.0_ki/(es34+es567-es12-es234)
      abb6(10)=spbk4k3*spbe7l5
      abb6(11)=abb6(10)*spak4l5
      abb6(12)=spak2l5*spbk3k2
      abb6(13)=abb6(12)*spbe7l5
      abb6(11)=abb6(11)+abb6(13)
      abb6(14)=c3-c1
      abb6(15)=-spbk2k1*abb6(14)
      abb6(16)=abb6(15)*spal5e7
      abb6(11)=-abb6(11)*abb6(16)
      abb6(17)=spbk4k3*spbe7l6
      abb6(18)=abb6(17)*spak4l5
      abb6(19)=abb6(12)*spbe7l6
      abb6(18)=abb6(18)+abb6(19)
      abb6(20)=abb6(15)*spal6e7
      abb6(18)=-abb6(18)*abb6(20)
      abb6(11)=abb6(11)+abb6(18)
      abb6(11)=abb6(6)*abb6(11)
      abb6(10)=abb6(10)*spak4l6
      abb6(18)=spak2l6*spbk3k2
      abb6(21)=abb6(18)*spbe7l5
      abb6(10)=abb6(10)+abb6(21)
      abb6(10)=-abb6(10)*abb6(16)
      abb6(16)=abb6(17)*spak4l6
      abb6(17)=abb6(18)*spbe7l6
      abb6(16)=abb6(16)+abb6(17)
      abb6(16)=-abb6(16)*abb6(20)
      abb6(10)=abb6(10)+abb6(16)
      abb6(10)=abb6(5)*abb6(10)
      abb6(16)=spbl5k1*spak4l5
      abb6(20)=spbl6k1*spak4l6
      abb6(16)=abb6(16)+abb6(20)
      abb6(16)=abb6(16)*spbk4k3
      abb6(18)=abb6(18)*spbl6k1
      abb6(12)=abb6(12)*spbl5k1
      abb6(12)=abb6(16)+abb6(18)+abb6(12)
      abb6(16)=abb6(6)*spal5e7
      abb6(18)=abb6(5)*spal6e7
      abb6(16)=abb6(16)+abb6(18)
      abb6(16)=abb6(16)*spbe7k2
      abb6(12)=-abb6(14)*abb6(12)*abb6(16)
      abb6(10)=abb6(12)+abb6(11)+abb6(10)
      abb6(10)=spak2k4*abb6(10)
      abb6(11)=-spbk4k3*abb6(15)
      abb6(12)=abb6(11)*abb6(7)
      abb6(15)=spal5e7*abb6(12)
      abb6(11)=abb6(11)*abb6(8)
      abb6(20)=spal6e7*abb6(11)
      abb6(15)=abb6(15)+abb6(20)
      abb6(15)=abb6(6)*abb6(15)
      abb6(12)=abb6(12)*abb6(18)
      abb6(12)=abb6(15)+abb6(12)
      abb6(12)=abb6(5)*abb6(12)
      abb6(11)=spal5e7*abb6(11)*abb6(6)**2
      abb6(11)=abb6(11)+abb6(12)
      abb6(12)=mB*spak2k4
      abb6(11)=spbe7k2*abb6(11)*abb6(12)**2
      abb6(10)=abb6(11)+abb6(10)
      abb6(10)=abb6(2)*abb6(10)
      abb6(11)=spbk2k1*spak1k4
      abb6(12)=abb6(11)*spak2l5
      abb6(15)=abb6(12)*spbe7l5
      abb6(13)=abb6(13)*spak3k4
      abb6(13)=abb6(15)+abb6(13)
      abb6(14)=-abb6(14)*abb6(9)*spbk3k1
      abb6(15)=abb6(14)*spal5e7
      abb6(13)=abb6(13)*abb6(15)
      abb6(12)=abb6(12)*spbe7l6
      abb6(18)=abb6(19)*spak3k4
      abb6(12)=abb6(12)+abb6(18)
      abb6(18)=abb6(14)*spal6e7
      abb6(12)=abb6(12)*abb6(18)
      abb6(12)=abb6(13)+abb6(12)
      abb6(12)=abb6(6)*abb6(12)
      abb6(11)=abb6(11)*spak2l6
      abb6(13)=abb6(11)*spbe7l5
      abb6(19)=abb6(21)*spak3k4
      abb6(13)=abb6(13)+abb6(19)
      abb6(13)=abb6(13)*abb6(15)
      abb6(11)=abb6(11)*spbe7l6
      abb6(15)=abb6(17)*spak3k4
      abb6(11)=abb6(11)+abb6(15)
      abb6(11)=abb6(11)*abb6(18)
      abb6(11)=abb6(13)+abb6(11)
      abb6(11)=abb6(5)*abb6(11)
      abb6(13)=spak1k4*spbl5k1
      abb6(15)=spak3k4*spbl5k3
      abb6(13)=abb6(13)-abb6(15)
      abb6(13)=abb6(13)*spak2l5
      abb6(15)=spak1k4*spbl6k1
      abb6(17)=spak3k4*spbl6k3
      abb6(15)=abb6(15)-abb6(17)
      abb6(15)=abb6(15)*spak2l6
      abb6(13)=abb6(13)+abb6(15)
      abb6(13)=-abb6(14)*abb6(13)*abb6(16)
      abb6(10)=abb6(13)+abb6(12)+abb6(11)+abb6(10)
      abb6(11)=gW*TR
      abb6(10)=9.0_ki/2.0_ki*abb6(1)*abb6(3)*abb6(4)*CVSU*mB*NC*i_*abb6(10)*abb&
      &6(11)**2
      R2d6=0.0_ki
      rat2 = rat2 + R2d6
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='6' value='", &
          & R2d6, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd6h0
