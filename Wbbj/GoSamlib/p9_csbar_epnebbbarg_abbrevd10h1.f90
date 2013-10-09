module     p9_csbar_epnebbbarg_abbrevd10h1
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh1
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
      abb10(5)=spak2l5**(-1)
      abb10(6)=spbl6k2**(-1)
      abb10(7)=1.0_ki/(es34+es567-es12-es234)
      abb10(8)=spak1k4*spbk7k1
      abb10(9)=spak3k4*spbk7k3
      abb10(8)=abb10(8)-abb10(9)
      abb10(9)=c3-c1
      abb10(10)=abb10(7)*spbk3k1
      abb10(11)=spal6e7*spbe7l5
      abb10(12)=abb10(11)*spak2k7
      abb10(8)=abb10(8)*abb10(12)*abb10(9)*abb10(10)
      abb10(13)=es12+es71-es712
      abb10(13)=abb10(9)*abb10(13)
      abb10(14)=spak3k4*spbe7k3
      abb10(15)=-abb10(13)*abb10(14)*abb10(10)
      abb10(16)=abb10(2)*spak2k4
      abb10(17)=abb10(16)*spbk3k2
      abb10(18)=abb10(10)*spak1k4
      abb10(18)=abb10(18)-abb10(17)
      abb10(18)=spbe7k1*abb10(13)*abb10(18)
      abb10(15)=abb10(15)+abb10(18)
      abb10(15)=spak2e7*abb10(15)
      abb10(18)=spbk4k3*spak4e7*abb10(16)*spbe7k1
      abb10(13)=-abb10(13)*abb10(18)
      abb10(13)=abb10(13)+abb10(15)
      abb10(13)=abb10(5)*abb10(6)*abb10(13)*mB**2
      abb10(11)=spak4k7*spbk4k3*abb10(11)
      abb10(12)=abb10(12)*spbk3k2
      abb10(11)=abb10(11)+abb10(12)
      abb10(11)=-abb10(9)*abb10(16)*spbk7k1*abb10(11)
      abb10(9)=-abb10(9)*spal6k7*spbk7l5
      abb10(10)=abb10(9)*abb10(10)
      abb10(12)=spak1k4*abb10(10)
      abb10(15)=-abb10(9)*abb10(17)
      abb10(12)=abb10(12)+abb10(15)
      abb10(12)=spbe7k1*abb10(12)
      abb10(10)=-abb10(14)*abb10(10)
      abb10(10)=abb10(10)+abb10(12)
      abb10(10)=spak2e7*abb10(10)
      abb10(9)=-abb10(9)*abb10(18)
      abb10(8)=abb10(13)+abb10(10)+abb10(9)+abb10(8)+abb10(11)
      abb10(9)=gW*TR
      abb10(8)=9.0_ki/2.0_ki*abb10(1)*abb10(3)*abb10(4)*CVSC*NC*i_*abb10(8)*abb&
      &10(9)**2
      R2d10=0.0_ki
      rat2 = rat2 + R2d10
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='10' value='", &
          & R2d10, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd10h1
