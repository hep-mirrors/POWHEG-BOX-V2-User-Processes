module     p4_ubaru_epnemumnmubarg_abbrevd205h7
   use p4_ubaru_epnemumnmubarg_config, only: ki
   use p4_ubaru_epnemumnmubarg_globalsh7
   implicit none
   private
   complex(ki), dimension(15), public :: abb205
   complex(ki), public :: R2d205
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
      abb205(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb205(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb205(3)=1.0_ki/(-mH**2+es712+i_*mH*wH)
      abb205(4)=NC**(-1)
      abb205(5)=sqrt2**(-1)
      abb205(6)=spbk7k2**(-1)
      abb205(7)=es71**(-1)
      abb205(8)=NC-abb205(4)
      abb205(9)=gHU*gHWW*spak4k5*spbk6k3*c1*i_*TR*abb205(5)*abb205(3)*abb205(2)&
      &*abb205(1)
      abb205(10)=abb205(9)*abb205(6)*spak1k7
      abb205(11)=abb205(8)*abb205(10)*gW**2
      abb205(12)=abb205(7)*abb205(11)
      abb205(13)=-es712*abb205(12)
      abb205(11)=abb205(13)+abb205(11)
      abb205(11)=4.0_ki*abb205(11)
      abb205(13)=abb205(7)*gW
      abb205(13)=abb205(13)**2
      abb205(10)=abb205(10)*abb205(13)*abb205(8)
      abb205(14)=-es12-es712
      abb205(14)=abb205(10)*abb205(14)
      abb205(14)=abb205(14)+abb205(12)
      abb205(14)=8.0_ki*abb205(14)
      abb205(15)=es712*abb205(10)
      abb205(12)=abb205(15)-abb205(12)
      abb205(15)=-es12*abb205(10)
      abb205(12)=2.0_ki*abb205(12)+abb205(15)
      abb205(12)=8.0_ki*abb205(12)
      abb205(9)=abb205(13)*abb205(9)
      abb205(13)=-4.0_ki*spak1k2*spak1k7*abb205(9)*abb205(8)
      abb205(8)=abb205(8)*abb205(9)*spak1k7**2
      abb205(8)=8.0_ki*abb205(8)
      abb205(9)=spbk2k1*abb205(6)*abb205(8)
      abb205(10)=-4.0_ki*spak2k7*spbk2k1*abb205(10)
      R2d205=0.0_ki
      rat2 = rat2 + R2d205
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='205' value='", &
          & R2d205, "'/>"
      end if
   end subroutine
end module p4_ubaru_epnemumnmubarg_abbrevd205h7
