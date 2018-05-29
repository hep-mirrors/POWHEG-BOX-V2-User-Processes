module     p12_sbars_epnemumnmubarg_abbrevd281h1
   use p12_sbars_epnemumnmubarg_config, only: ki
   use p12_sbars_epnemumnmubarg_globalsh1
   implicit none
   private
   complex(ki), dimension(18), public :: abb281
   complex(ki), public :: R2d281
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
      abb281(1)=1.0_ki/(-es71+es712-es12)
      abb281(2)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb281(3)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb281(4)=1.0_ki/(es34+es567-es12-es234)
      abb281(5)=NC**(-1)
      abb281(6)=sqrt2**(-1)
      abb281(7)=spak2k7**(-1)
      abb281(8)=NC-abb281(5)
      abb281(9)=es71+es12-es712
      abb281(10)=abb281(6)*abb281(7)*spak1k4*c1*gW**4*i_*TR*abb281(4)*abb281(3)&
      &*abb281(2)*abb281(1)
      abb281(11)=abb281(10)*spbk7k6
      abb281(12)=-abb281(9)*abb281(8)*abb281(11)*spbk3k1
      abb281(13)=abb281(12)*spak1k5
      abb281(11)=-abb281(9)*abb281(8)*abb281(11)*spbk4k3
      abb281(14)=abb281(11)*spak4k5
      abb281(13)=abb281(13)+abb281(14)
      abb281(14)=-4.0_ki*abb281(13)
      abb281(13)=8.0_ki*abb281(13)
      abb281(8)=-abb281(10)*abb281(8)
      abb281(10)=-spbk4k3*abb281(8)
      abb281(15)=-spak2k4*abb281(10)
      abb281(8)=-spbk3k1*abb281(8)
      abb281(16)=spak1k2*abb281(8)
      abb281(15)=abb281(15)+abb281(16)
      abb281(15)=32.0_ki*spbk7k2*abb281(15)
      abb281(9)=8.0_ki*abb281(9)
      abb281(16)=abb281(10)*abb281(9)
      abb281(17)=8.0_ki*spak5k6
      abb281(11)=abb281(11)*abb281(17)
      abb281(10)=-spak4k7*abb281(10)
      abb281(18)=-spak1k7*abb281(8)
      abb281(10)=abb281(10)+abb281(18)
      abb281(10)=16.0_ki*spbk7k2*abb281(10)
      abb281(8)=abb281(8)*abb281(9)
      abb281(9)=abb281(12)*abb281(17)
      R2d281=abb281(14)
      rat2 = rat2 + R2d281
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='281' value='", &
          & R2d281, "'/>"
      end if
   end subroutine
end module p12_sbars_epnemumnmubarg_abbrevd281h1
