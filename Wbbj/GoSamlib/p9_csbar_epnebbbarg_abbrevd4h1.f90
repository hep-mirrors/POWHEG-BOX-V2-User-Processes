module     p9_csbar_epnebbbarg_abbrevd4h1
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(19), public :: abb4
   complex(ki), public :: R2d4
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
      abb4(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb4(2)=es234**(-1)
      abb4(3)=es567**(-1)
      abb4(4)=es56**(-1)
      abb4(5)=spak2l5**(-1)
      abb4(6)=spbl6k2**(-1)
      abb4(7)=1.0_ki/(es34+es567-es12-es234)
      abb4(8)=c1-c3
      abb4(8)=abb4(8)*abb4(1)*CVSC*i_*NC*abb4(4)*abb4(3)
      abb4(9)=TR*gW
      abb4(10)=abb4(8)*abb4(9)**2
      abb4(11)=abb4(10)*spak2l6
      abb4(12)=spbk3k1*abb4(7)
      abb4(13)=abb4(12)*spak1k4
      abb4(14)=spbl5k1*abb4(11)*abb4(13)
      abb4(15)=-abb4(10)*spak2k4*abb4(2)
      abb4(16)=abb4(15)*spbl5k1
      abb4(17)=spak2l6*abb4(16)*spbk3k2
      abb4(12)=abb4(12)*spak3k4
      abb4(11)=spbl5k3*abb4(11)*abb4(12)
      abb4(11)=abb4(11)-abb4(14)-abb4(17)
      abb4(14)=spal6e7*spbe7l6
      abb4(17)=spal5e7*spbe7l5
      abb4(14)=abb4(14)+abb4(17)
      abb4(11)=abb4(14)*abb4(11)
      abb4(17)=spbe7k1*spak4e7*spbk4k3
      abb4(18)=spbe7k1*spak2e7
      abb4(19)=abb4(18)*spbk3k2
      abb4(17)=abb4(17)+abb4(19)
      abb4(9)=abb4(9)*mB
      abb4(8)=-abb4(5)*abb4(6)*abb4(9)**2*abb4(8)
      abb4(9)=abb4(8)*abb4(2)
      abb4(19)=-abb4(17)*spak2k4*abb4(9)
      abb4(13)=abb4(13)*abb4(18)
      abb4(12)=spak2e7*abb4(12)*spbe7k3
      abb4(12)=abb4(12)-abb4(13)
      abb4(8)=-abb4(8)*abb4(12)
      abb4(8)=abb4(8)+abb4(19)
      abb4(13)=es12-es712+es71
      abb4(8)=abb4(8)*abb4(13)
      abb4(10)=-abb4(10)*abb4(12)
      abb4(12)=abb4(15)*abb4(17)
      abb4(10)=abb4(12)+abb4(10)
      abb4(10)=spbk7l5*spal6k7*abb4(10)
      abb4(12)=-spak4l6*abb4(16)
      abb4(9)=-spbk2k1*spak2k4**2*abb4(9)
      abb4(9)=abb4(9)+abb4(12)
      abb4(9)=abb4(9)*spbk4k3*abb4(14)
      abb4(8)=abb4(10)+abb4(8)+abb4(11)+abb4(9)
      abb4(8)=9.0_ki/2.0_ki*abb4(8)
      R2d4=0.0_ki
      rat2 = rat2 + R2d4
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='4' value='", &
          & R2d4, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd4h1