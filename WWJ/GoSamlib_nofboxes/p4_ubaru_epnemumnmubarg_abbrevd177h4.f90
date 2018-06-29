module     p4_ubaru_epnemumnmubarg_abbrevd177h4
   use p4_ubaru_epnemumnmubarg_config, only: ki
   use p4_ubaru_epnemumnmubarg_globalsh4
   implicit none
   private
   complex(ki), dimension(16), public :: abb177
   complex(ki), public :: R2d177
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p4_ubaru_epnemumnmubarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_color, only: TR
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      implicit none
      abb177(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb177(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb177(3)=1.0_ki/(-mH**2+es712+i_*mH*wH)
      abb177(4)=NC**(-1)
      abb177(5)=sqrt2**(-1)
      abb177(6)=es71**(-1)
      abb177(7)=spbk7k2**(-1)
      abb177(8)=NC-abb177(4)
      abb177(9)=abb177(8)*abb177(7)
      abb177(10)=spbk2k1*gW
      abb177(10)=abb177(9)*abb177(10)**2
      abb177(11)=gHU*gHWW*spak4k5*spbk6k3*c1*i_*TR*abb177(5)*abb177(3)*abb177(2&
      &)*abb177(1)
      abb177(12)=abb177(11)*spak1k7
      abb177(13)=abb177(6)*abb177(12)
      abb177(14)=abb177(13)*abb177(10)
      abb177(15)=4.0_ki*abb177(14)
      abb177(10)=-abb177(12)*abb177(10)
      abb177(12)=es712*abb177(14)
      abb177(10)=abb177(12)+abb177(10)
      abb177(10)=4.0_ki*abb177(10)
      abb177(12)=8.0_ki*abb177(14)
      abb177(14)=spbk2k1*gW**2
      abb177(16)=4.0_ki*abb177(14)
      abb177(9)=-abb177(11)*abb177(9)*abb177(16)
      abb177(8)=-4.0_ki*abb177(13)*abb177(8)*abb177(14)
      R2d177=abb177(15)
      rat2 = rat2 + R2d177
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='177' value='", &
          & R2d177, "'/>"
      end if
   end subroutine
end module p4_ubaru_epnemumnmubarg_abbrevd177h4
