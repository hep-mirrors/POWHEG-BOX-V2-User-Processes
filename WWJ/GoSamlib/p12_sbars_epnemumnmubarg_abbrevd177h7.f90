module     p12_sbars_epnemumnmubarg_abbrevd177h7
   use p12_sbars_epnemumnmubarg_config, only: ki
   use p12_sbars_epnemumnmubarg_globalsh7
   implicit none
   private
   complex(ki), dimension(17), public :: abb177
   complex(ki), public :: R2d177
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p12_sbars_epnemumnmubarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_color, only: TR
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      implicit none
      abb177(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb177(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb177(3)=1.0_ki/(-mH**2+es712+i_*mH*wH)
      abb177(4)=NC**(-1)
      abb177(5)=sqrt2**(-1)
      abb177(6)=spbk7k2**(-1)
      abb177(7)=es71**(-1)
      abb177(8)=NC-abb177(4)
      abb177(9)=gHS*gHWW*spak4k5*spbk6k3*c1*gW**2*i_*TR*abb177(5)*abb177(3)*abb&
      &177(2)*abb177(1)
      abb177(10)=abb177(8)*abb177(9)*abb177(6)*spak1k7
      abb177(11)=abb177(7)*abb177(10)
      abb177(12)=abb177(11)*es712
      abb177(13)=abb177(12)-abb177(10)
      abb177(14)=-4.0_ki*abb177(13)
      abb177(12)=2.0_ki*abb177(10)-abb177(12)
      abb177(12)=es712*abb177(12)
      abb177(15)=-es71*abb177(10)
      abb177(12)=abb177(12)+abb177(15)
      abb177(12)=4.0_ki*abb177(12)
      abb177(15)=es12-es712
      abb177(15)=abb177(11)*abb177(15)
      abb177(10)=abb177(10)+abb177(15)
      abb177(10)=8.0_ki*abb177(10)
      abb177(13)=8.0_ki*abb177(13)
      abb177(15)=8.0_ki*es12*abb177(11)
      abb177(8)=abb177(8)*abb177(9)
      abb177(9)=4.0_ki*abb177(7)
      abb177(9)=spak1k2*abb177(8)*spak1k7*abb177(9)
      abb177(8)=abb177(8)*abb177(7)*spak1k7**2
      abb177(16)=4.0_ki*spbk2k1
      abb177(17)=-abb177(16)*abb177(6)*abb177(8)
      abb177(8)=-4.0_ki*abb177(8)
      abb177(11)=spak2k7*abb177(11)*abb177(16)
      R2d177=abb177(14)
      rat2 = rat2 + R2d177
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='177' value='", &
          & R2d177, "'/>"
      end if
   end subroutine
end module p12_sbars_epnemumnmubarg_abbrevd177h7
