module     p0_dbard_epnemumnmubarg_abbrevd517h3
   use p0_dbard_epnemumnmubarg_config, only: ki
   use p0_dbard_epnemumnmubarg_globalsh3
   implicit none
   private
   complex(ki), dimension(11), public :: abb517
   complex(ki), public :: R2d517
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
      abb517(1)=1.0_ki/(-es71+es712-es12)
      abb517(2)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb517(3)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb517(4)=1.0_ki/(-mH**2+es712+i_*mH*wH)
      abb517(5)=sqrt2**(-1)
      abb517(6)=spak2k7**(-1)
      abb517(7)=NC**(-1)
      abb517(8)=spak4k5*gHWW*gHD*abb517(6)*abb517(5)*abb517(4)*abb517(3)*gW**2*&
      &abb517(1)*abb517(2)*spbk6k3*c1*TR*i_
      abb517(9)=abb517(8)*spak1k2
      abb517(10)=es71+es12-es712
      abb517(10)=4.0_ki*NC*abb517(10)*abb517(9)
      abb517(11)=NC+abb517(7)
      abb517(9)=-8.0_ki*abb517(11)*abb517(9)
      abb517(8)=4.0_ki*abb517(8)
      abb517(8)=abb517(8)*spak1k7*abb517(11)
      R2d517=0.0_ki
      rat2 = rat2 + R2d517
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='517' value='", &
          & R2d517, "'/>"
      end if
   end subroutine
end module p0_dbard_epnemumnmubarg_abbrevd517h3
