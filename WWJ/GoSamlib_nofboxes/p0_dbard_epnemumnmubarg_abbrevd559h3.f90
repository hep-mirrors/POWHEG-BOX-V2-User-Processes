module     p0_dbard_epnemumnmubarg_abbrevd559h3
   use p0_dbard_epnemumnmubarg_config, only: ki
   use p0_dbard_epnemumnmubarg_globalsh3
   implicit none
   private
   complex(ki), dimension(13), public :: abb559
   complex(ki), public :: R2d559
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p0_dbard_epnemumnmubarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_color, only: TR
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      implicit none
      abb559(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb559(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb559(3)=1.0_ki/(-mH**2+es712+i_*mH*wH)
      abb559(4)=NC**(-1)
      abb559(5)=sqrt2**(-1)
      abb559(6)=spak2k7**(-1)
      abb559(7)=spbk7k1*spak1k2**2
      abb559(8)=abb559(5)*gHD*gHWW*spak4k5*spbk6k3*c1*gW**2*i_*TR*abb559(4)*abb&
      &559(3)*abb559(2)*abb559(1)
      abb559(9)=8.0_ki*abb559(8)
      abb559(9)=-abb559(6)*abb559(9)*abb559(7)
      abb559(10)=4.0_ki*abb559(6)
      abb559(10)=abb559(10)*abb559(8)
      abb559(7)=abb559(10)*abb559(7)
      abb559(11)=abb559(8)*spak1k2*abb559(6)
      abb559(12)=4.0_ki*abb559(11)
      abb559(13)=es12*abb559(12)
      abb559(11)=8.0_ki*abb559(11)
      abb559(10)=spak1k7*abb559(10)
      abb559(8)=4.0_ki*abb559(8)
      R2d559=0.0_ki
      rat2 = rat2 + R2d559
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='559' value='", &
          & R2d559, "'/>"
      end if
   end subroutine
end module p0_dbard_epnemumnmubarg_abbrevd559h3
