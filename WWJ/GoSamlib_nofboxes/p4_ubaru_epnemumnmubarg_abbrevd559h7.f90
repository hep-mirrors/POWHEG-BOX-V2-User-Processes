module     p4_ubaru_epnemumnmubarg_abbrevd559h7
   use p4_ubaru_epnemumnmubarg_config, only: ki
   use p4_ubaru_epnemumnmubarg_globalsh7
   implicit none
   private
   complex(ki), dimension(18), public :: abb559
   complex(ki), public :: R2d559
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
      abb559(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb559(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb559(3)=1.0_ki/(-mH**2+es712+i_*mH*wH)
      abb559(4)=NC**(-1)
      abb559(5)=sqrt2**(-1)
      abb559(6)=spbk7k2**(-1)
      abb559(7)=es71-es712
      abb559(8)=abb559(7)+es12
      abb559(9)=spak4k5*gHWW*gHU*abb559(5)*abb559(4)*abb559(3)*gW**2*abb559(1)*&
      &abb559(2)*spbk6k3*c1*TR*i_
      abb559(10)=abb559(9)*abb559(6)
      abb559(11)=spak1k7*abb559(10)
      abb559(12)=abb559(11)*es12
      abb559(13)=4.0_ki*abb559(12)
      abb559(14)=-abb559(8)*abb559(13)
      abb559(12)=-8.0_ki*abb559(12)
      abb559(15)=16.0_ki*abb559(11)
      abb559(16)=8.0_ki*abb559(11)
      abb559(8)=abb559(8)*abb559(16)
      abb559(7)=-4.0_ki*abb559(7)*abb559(10)*spak1k2
      abb559(17)=8.0_ki*abb559(10)
      abb559(17)=abb559(17)*spak1k2
      abb559(11)=4.0_ki*abb559(11)
      abb559(9)=4.0_ki*abb559(9)
      abb559(9)=-spak1k7**2*abb559(9)
      abb559(10)=abb559(10)*spak2k7
      abb559(18)=4.0_ki*abb559(10)
      abb559(10)=8.0_ki*abb559(10)
      R2d559=0.0_ki
      rat2 = rat2 + R2d559
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='559' value='", &
          & R2d559, "'/>"
      end if
   end subroutine
end module p4_ubaru_epnemumnmubarg_abbrevd559h7
