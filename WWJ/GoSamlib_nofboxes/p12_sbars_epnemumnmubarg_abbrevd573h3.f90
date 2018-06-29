module     p12_sbars_epnemumnmubarg_abbrevd573h3
   use p12_sbars_epnemumnmubarg_config, only: ki
   use p12_sbars_epnemumnmubarg_globalsh3
   implicit none
   private
   complex(ki), dimension(15), public :: abb573
   complex(ki), public :: R2d573
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
      abb573(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb573(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb573(3)=1.0_ki/(-mH**2+es712+i_*mH*wH)
      abb573(4)=sqrt2**(-1)
      abb573(5)=spak2k7**(-1)
      abb573(6)=spbk6k3*spak4k5*gHWW*gHS*abb573(4)*abb573(3)*gW**2*abb573(1)*ab&
      &b573(2)*c1*NC*TR*i_
      abb573(7)=abb573(6)*abb573(5)
      abb573(8)=abb573(7)*spbk7k1*spak1k2**2
      abb573(9)=2.0_ki*abb573(8)
      abb573(10)=es71-es712
      abb573(11)=es12+abb573(10)
      abb573(11)=abb573(11)*abb573(9)
      abb573(8)=4.0_ki*abb573(8)
      abb573(12)=spak1k2*abb573(7)
      abb573(10)=3.0_ki*es12+abb573(10)
      abb573(10)=2.0_ki*abb573(10)*abb573(12)
      abb573(13)=-12.0_ki*abb573(12)
      abb573(14)=4.0_ki*abb573(12)
      abb573(15)=-8.0_ki*abb573(12)
      abb573(12)=-6.0_ki*abb573(12)
      abb573(7)=4.0_ki*abb573(7)
      abb573(7)=spak1k7*abb573(7)
      abb573(6)=4.0_ki*abb573(6)
      R2d573=0.0_ki
      rat2 = rat2 + R2d573
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='573' value='", &
          & R2d573, "'/>"
      end if
   end subroutine
end module p12_sbars_epnemumnmubarg_abbrevd573h3
