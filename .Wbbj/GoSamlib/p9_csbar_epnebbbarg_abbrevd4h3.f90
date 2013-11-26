module     p9_csbar_epnebbbarg_abbrevd4h3
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(14), public :: abb4
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
      abb4(6)=spak2l6**(-1)
      abb4(7)=1.0_ki/(es34+es567-es12-es234)
      abb4(8)=c1-c3
      abb4(9)=-abb4(5)*abb4(8)
      abb4(10)=spbl6k1*abb4(9)
      abb4(8)=-abb4(6)*abb4(8)
      abb4(11)=spbl5k1*abb4(8)
      abb4(10)=abb4(11)+abb4(10)
      abb4(11)=spal6e7*spbe7l6
      abb4(12)=spal5e7*spbe7l5
      abb4(11)=abb4(11)+abb4(12)
      abb4(12)=spbk4k3*abb4(2)
      abb4(13)=TR*gW
      abb4(13)=abb4(13)**2*mB*i_*NC*CVSC*abb4(4)*abb4(3)*abb4(1)
      abb4(10)=abb4(10)*abb4(11)*spak2k4**2*abb4(13)*abb4(12)
      abb4(9)=abb4(9)*spbk7l6
      abb4(8)=abb4(8)*spbk7l5
      abb4(8)=abb4(9)+abb4(8)
      abb4(9)=abb4(13)*spak2k7
      abb4(11)=spak3k4*spbe7k3*abb4(8)*abb4(9)*spak2e7
      abb4(9)=abb4(9)*spbe7k1
      abb4(13)=abb4(9)*spak2e7
      abb4(14)=-spak1k4*abb4(13)*abb4(8)
      abb4(11)=abb4(14)+abb4(11)
      abb4(11)=spbk3k1*abb4(7)*abb4(11)
      abb4(9)=spak4e7*abb4(8)*abb4(9)*spak2k4*abb4(12)
      abb4(8)=spbk3k2*abb4(8)*abb4(2)*abb4(13)*spak2k4
      abb4(8)=abb4(8)+abb4(9)+abb4(11)+abb4(10)
      abb4(8)=9.0_ki/2.0_ki*abb4(8)
      R2d4=0.0_ki
      rat2 = rat2 + R2d4
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='4' value='", &
          & R2d4, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd4h3
