module     p9_csbar_epnebbbarg_abbrevd10h0
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(18), public :: abb10
   complex(ki), public :: R2d10
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p9_csbar_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_color, only: TR
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb10(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb10(2)=es234**(-1)
      abb10(3)=es567**(-1)
      abb10(4)=es56**(-1)
      abb10(5)=spbl5k2**(-1)
      abb10(6)=spbl6k2**(-1)
      abb10(7)=1.0_ki/(es34+es567-es12-es234)
      abb10(8)=spbe7k1*spal5k7
      abb10(9)=abb10(8)*spak1k4
      abb10(10)=spak3k4*spbe7k3
      abb10(11)=abb10(10)*spal5k7
      abb10(9)=abb10(9)-abb10(11)
      abb10(11)=c3-c1
      abb10(12)=abb10(11)*spbk7k2
      abb10(13)=abb10(12)*spak2e7
      abb10(9)=abb10(9)*abb10(13)
      abb10(14)=spbk7k1*spal5e7
      abb10(15)=abb10(14)*spak1k4
      abb10(16)=spak3k4*spbk7k3
      abb10(17)=abb10(16)*spal5e7
      abb10(15)=abb10(15)-abb10(17)
      abb10(11)=abb10(11)*spbe7k2
      abb10(17)=abb10(11)*spak2k7
      abb10(15)=-abb10(15)*abb10(17)
      abb10(9)=abb10(9)+abb10(15)
      abb10(9)=abb10(6)*abb10(9)
      abb10(15)=spbe7k1*spal6k7
      abb10(18)=abb10(15)*spak1k4
      abb10(10)=abb10(10)*spal6k7
      abb10(10)=abb10(18)-abb10(10)
      abb10(10)=abb10(10)*abb10(13)
      abb10(13)=spbk7k1*spal6e7
      abb10(18)=abb10(13)*spak1k4
      abb10(16)=abb10(16)*spal6e7
      abb10(16)=abb10(18)-abb10(16)
      abb10(16)=-abb10(16)*abb10(17)
      abb10(10)=abb10(10)+abb10(16)
      abb10(10)=abb10(5)*abb10(10)
      abb10(9)=abb10(9)+abb10(10)
      abb10(9)=abb10(7)*spbk3k1*abb10(9)
      abb10(10)=spbk4k3*spak4e7
      abb10(16)=spak2e7*spbk3k2
      abb10(10)=abb10(10)+abb10(16)
      abb10(10)=abb10(12)*abb10(10)
      abb10(8)=-abb10(8)*abb10(10)
      abb10(12)=spbk4k3*spak4k7
      abb10(16)=spak2k7*spbk3k2
      abb10(12)=abb10(12)+abb10(16)
      abb10(11)=abb10(11)*abb10(12)
      abb10(12)=abb10(14)*abb10(11)
      abb10(8)=abb10(8)+abb10(12)
      abb10(8)=abb10(6)*abb10(8)
      abb10(10)=-abb10(15)*abb10(10)
      abb10(11)=abb10(13)*abb10(11)
      abb10(10)=abb10(10)+abb10(11)
      abb10(10)=abb10(5)*abb10(10)
      abb10(8)=abb10(8)+abb10(10)
      abb10(8)=abb10(2)*spak2k4*abb10(8)
      abb10(8)=abb10(8)+abb10(9)
      abb10(9)=gW*TR
      abb10(8)=9.0_ki/2.0_ki*abb10(1)*abb10(3)*abb10(4)*CVSC*mB*NC*i_*abb10(8)*&
      &abb10(9)**2
      R2d10=0.0_ki
      rat2 = rat2 + R2d10
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='10' value='", &
          & R2d10, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd10h0
