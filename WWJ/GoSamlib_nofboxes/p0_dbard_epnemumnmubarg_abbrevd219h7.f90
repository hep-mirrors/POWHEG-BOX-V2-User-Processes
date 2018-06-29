module     p0_dbard_epnemumnmubarg_abbrevd219h7
   use p0_dbard_epnemumnmubarg_config, only: ki
   use p0_dbard_epnemumnmubarg_globalsh7
   implicit none
   private
   complex(ki), dimension(12), public :: abb219
   complex(ki), public :: R2d219
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
      abb219(1)=1.0_ki/(-es71+es712-es12)
      abb219(2)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb219(3)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb219(4)=1.0_ki/(-mH**2+es712+i_*mH*wH)
      abb219(5)=NC**(-1)
      abb219(6)=sqrt2**(-1)
      abb219(7)=spbk7k2**(-1)
      abb219(8)=-es712+2.0_ki*es12
      abb219(8)=abb219(8)*es712
      abb219(9)=es712-es12
      abb219(10)=-es71+2.0_ki*abb219(9)
      abb219(10)=abb219(10)*es71
      abb219(11)=es12**2
      abb219(8)=-abb219(11)+abb219(8)+abb219(10)
      abb219(10)=abb219(5)-NC
      abb219(11)=abb219(1)*gW
      abb219(11)=spak4k5*gHWW*gHD*abb219(7)*abb219(6)*abb219(11)**2*abb219(4)*a&
      &bb219(2)*abb219(3)*spbk6k3*c1*TR*i_
      abb219(12)=abb219(10)*abb219(11)*spak1k7
      abb219(8)=-4.0_ki*abb219(8)*abb219(12)
      abb219(9)=abb219(9)-es71
      abb219(12)=8.0_ki*abb219(9)*abb219(12)
      abb219(11)=4.0_ki*abb219(11)
      abb219(9)=-abb219(11)*spak1k2*abb219(10)*abb219(9)
      R2d219=0.0_ki
      rat2 = rat2 + R2d219
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='219' value='", &
          & R2d219, "'/>"
      end if
   end subroutine
end module p0_dbard_epnemumnmubarg_abbrevd219h7
