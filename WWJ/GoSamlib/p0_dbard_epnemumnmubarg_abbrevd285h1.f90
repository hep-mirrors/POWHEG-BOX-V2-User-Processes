module     p0_dbard_epnemumnmubarg_abbrevd285h1
   use p0_dbard_epnemumnmubarg_config, only: ki
   use p0_dbard_epnemumnmubarg_globalsh1
   implicit none
   private
   complex(ki), dimension(18), public :: abb285
   complex(ki), public :: R2d285
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
      abb285(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb285(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb285(3)=1.0_ki/(es71+es34+es56-es712-es234)
      abb285(4)=NC**(-1)
      abb285(5)=sqrt2**(-1)
      abb285(6)=es71**(-1)
      abb285(7)=spak2k7**(-1)
      abb285(8)=spbk6k3*spak5k6
      abb285(9)=spbk3k2*spak2k5
      abb285(8)=abb285(8)-abb285(9)
      abb285(9)=NC-abb285(4)
      abb285(9)=abb285(9)*abb285(6)*abb285(7)*spbk7k1*c1*gW**4*i_*TR*abb285(5)*&
      &abb285(3)*abb285(2)*abb285(1)
      abb285(10)=abb285(9)*spbk6k2
      abb285(11)=-spak1k2*abb285(10)
      abb285(8)=abb285(8)*abb285(11)
      abb285(12)=-spak1k4*abb285(8)
      abb285(13)=4.0_ki*abb285(12)
      abb285(14)=16.0_ki*abb285(12)
      abb285(12)=-8.0_ki*abb285(12)
      abb285(15)=spbk6k4*spak5k6
      abb285(16)=-spbk4k2*spak2k5
      abb285(15)=abb285(16)+abb285(15)
      abb285(15)=abb285(11)*spak1k4*abb285(15)
      abb285(16)=spak1k3*abb285(8)
      abb285(15)=abb285(16)+abb285(15)
      abb285(15)=8.0_ki*abb285(15)
      abb285(16)=32.0_ki*spak1k5
      abb285(16)=abb285(11)*abb285(16)
      abb285(9)=spak1k5*abb285(9)*spak1k2
      abb285(17)=-spbk5k2*abb285(9)
      abb285(18)=spak1k6*abb285(11)
      abb285(17)=abb285(17)+abb285(18)
      abb285(17)=16.0_ki*abb285(17)
      abb285(10)=spak1k2**2*abb285(10)
      abb285(9)=-spbk6k5*abb285(9)
      abb285(9)=abb285(9)+abb285(10)
      abb285(9)=16.0_ki*abb285(9)
      abb285(10)=8.0_ki*abb285(11)
      abb285(11)=-spak5k6*abb285(10)
      abb285(8)=8.0_ki*spak3k4*abb285(8)
      abb285(10)=-spak2k5*abb285(10)
      R2d285=abb285(13)
      rat2 = rat2 + R2d285
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='285' value='", &
          & R2d285, "'/>"
      end if
   end subroutine
end module p0_dbard_epnemumnmubarg_abbrevd285h1
