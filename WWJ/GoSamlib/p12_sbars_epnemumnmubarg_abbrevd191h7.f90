module     p12_sbars_epnemumnmubarg_abbrevd191h7
   use p12_sbars_epnemumnmubarg_config, only: ki
   use p12_sbars_epnemumnmubarg_globalsh7
   implicit none
   private
   complex(ki), dimension(15), public :: abb191
   complex(ki), public :: R2d191
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
      abb191(1)=1.0_ki/(-es71+es712-es12)
      abb191(2)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb191(3)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb191(4)=1.0_ki/(-mH**2+es712+i_*mH*wH)
      abb191(5)=NC**(-1)
      abb191(6)=sqrt2**(-1)
      abb191(7)=spbk7k2**(-1)
      abb191(8)=abb191(5)-NC
      abb191(9)=es71-es712
      abb191(10)=abb191(9)+es12
      abb191(10)=abb191(8)*abb191(10)
      abb191(11)=spak4k5*gHWW*gHS*abb191(7)*abb191(6)*abb191(4)*abb191(3)*gW**2&
      &*abb191(1)*abb191(2)*spbk6k3*c1*TR*i_
      abb191(12)=4.0_ki*abb191(11)
      abb191(13)=abb191(12)*spak1k7
      abb191(14)=-abb191(10)*abb191(13)
      abb191(9)=abb191(9)+2.0_ki*es12
      abb191(9)=abb191(9)*es71
      abb191(15)=es12-es712
      abb191(15)=abb191(15)*es12
      abb191(9)=abb191(9)+abb191(15)
      abb191(8)=-abb191(13)*abb191(9)*abb191(8)
      abb191(9)=abb191(10)*abb191(11)
      abb191(11)=8.0_ki*spak1k7
      abb191(11)=-abb191(11)*abb191(9)
      abb191(9)=16.0_ki*spak1k7*abb191(9)
      abb191(10)=abb191(10)*abb191(12)
      abb191(12)=-spak1k2*abb191(10)
      abb191(10)=-spak2k7*abb191(10)
      R2d191=abb191(14)
      rat2 = rat2 + R2d191
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='191' value='", &
          & R2d191, "'/>"
      end if
   end subroutine
end module p12_sbars_epnemumnmubarg_abbrevd191h7
