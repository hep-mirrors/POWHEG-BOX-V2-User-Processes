module     p0_dbard_epnemumnmubarg_abbrevd205h4
   use p0_dbard_epnemumnmubarg_config, only: ki
   use p0_dbard_epnemumnmubarg_globalsh4
   implicit none
   private
   complex(ki), dimension(13), public :: abb205
   complex(ki), public :: R2d205
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
      abb205(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb205(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb205(3)=1.0_ki/(-mH**2+es712+i_*mH*wH)
      abb205(4)=NC**(-1)
      abb205(5)=sqrt2**(-1)
      abb205(6)=es71**(-1)
      abb205(7)=spbk7k2**(-1)
      abb205(8)=abb205(4)-NC
      abb205(8)=spak4k5*gHWW*gHD*abb205(5)*abb205(3)*abb205(1)*abb205(2)*spbk6k&
      &3*c1*abb205(8)*TR*i_
      abb205(9)=abb205(7)*abb205(8)
      abb205(10)=abb205(9)*spak1k7
      abb205(11)=gW*spbk2k1
      abb205(11)=-4.0_ki*abb205(6)*abb205(11)**2*abb205(10)
      abb205(12)=abb205(6)*gW
      abb205(13)=abb205(12)*spbk2k1
      abb205(10)=abb205(10)*abb205(13)**2
      abb205(13)=-16.0_ki*abb205(10)
      abb205(10)=8.0_ki*abb205(10)
      abb205(9)=-8.0_ki*spbk2k1*abb205(9)*abb205(6)*gW**2
      abb205(8)=-4.0_ki*abb205(12)**2*spbk2k1*spak1k7*abb205(8)
      R2d205=0.0_ki
      rat2 = rat2 + R2d205
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='205' value='", &
          & R2d205, "'/>"
      end if
   end subroutine
end module p0_dbard_epnemumnmubarg_abbrevd205h4
