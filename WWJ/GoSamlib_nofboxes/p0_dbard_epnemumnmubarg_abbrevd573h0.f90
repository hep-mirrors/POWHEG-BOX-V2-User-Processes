module     p0_dbard_epnemumnmubarg_abbrevd573h0
   use p0_dbard_epnemumnmubarg_config, only: ki
   use p0_dbard_epnemumnmubarg_globalsh0
   implicit none
   private
   complex(ki), dimension(19), public :: abb573
   complex(ki), public :: R2d573
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
      abb573(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb573(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb573(3)=1.0_ki/(-mH**2+es712+i_*mH*wH)
      abb573(4)=sqrt2**(-1)
      abb573(5)=spak2k7**(-1)
      abb573(6)=es12-es712
      abb573(7)=-es12*abb573(6)
      abb573(8)=es71-es712
      abb573(9)=3.0_ki*es12+2.0_ki*abb573(8)
      abb573(10)=-es71*abb573(9)
      abb573(7)=abb573(7)+abb573(10)
      abb573(10)=spbk6k3*spak4k5*gHWW*gHD*abb573(5)*abb573(4)*abb573(3)*gW**2*a&
      &bb573(1)*abb573(2)*c1*NC*TR*i_
      abb573(11)=abb573(10)*spbk7k1
      abb573(12)=2.0_ki*abb573(11)
      abb573(7)=abb573(7)*abb573(12)
      abb573(13)=4.0_ki*spbk7k1
      abb573(13)=abb573(13)*abb573(10)
      abb573(9)=abb573(9)*abb573(13)
      abb573(14)=es712-3.0_ki*es71
      abb573(14)=abb573(14)*abb573(13)
      abb573(11)=8.0_ki*abb573(11)
      abb573(6)=es71+abb573(6)
      abb573(6)=abb573(6)*abb573(13)
      abb573(8)=4.0_ki*es12+5.0_ki*abb573(8)
      abb573(8)=abb573(8)*abb573(12)
      abb573(12)=4.0_ki*abb573(10)
      abb573(15)=-spak1k2*spbk7k1**2*abb573(12)
      abb573(10)=abb573(10)*spbk2k1
      abb573(16)=4.0_ki*abb573(10)
      abb573(17)=-es12*abb573(16)
      abb573(18)=16.0_ki*abb573(10)
      abb573(19)=-8.0_ki*abb573(10)
      abb573(10)=6.0_ki*abb573(10)
      abb573(12)=spbk7k2*abb573(12)
      R2d573=0.0_ki
      rat2 = rat2 + R2d573
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='573' value='", &
          & R2d573, "'/>"
      end if
   end subroutine
end module p0_dbard_epnemumnmubarg_abbrevd573h0
