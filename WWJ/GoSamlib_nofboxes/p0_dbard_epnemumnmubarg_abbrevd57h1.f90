module     p0_dbard_epnemumnmubarg_abbrevd57h1
   use p0_dbard_epnemumnmubarg_config, only: ki
   use p0_dbard_epnemumnmubarg_globalsh1
   implicit none
   private
   complex(ki), dimension(22), public :: abb57
   complex(ki), public :: R2d57
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
      abb57(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb57(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb57(3)=1.0_ki/(es71+es34+es56-es712-es234)
      abb57(4)=NC**(-1)
      abb57(5)=sqrt2**(-1)
      abb57(6)=es71**(-1)
      abb57(7)=spak2k7**(-1)
      abb57(8)=1.0_ki/(es34+es567-es12-es234)
      abb57(9)=NC-abb57(4)
      abb57(10)=spbk7k1*abb57(6)
      abb57(11)=abb57(10)*spbk3k2
      abb57(12)=abb57(7)*spak1k4*c1*gW**4*i_*TR*abb57(5)*abb57(3)*abb57(2)*abb5&
      &7(1)
      abb57(13)=abb57(12)*spbk6k2
      abb57(14)=abb57(13)*spak1k2
      abb57(15)=abb57(11)*abb57(9)*abb57(14)
      abb57(16)=spak2k4*spbk4k3
      abb57(17)=abb57(16)*abb57(13)
      abb57(14)=spbk3k1*abb57(14)
      abb57(14)=abb57(17)-abb57(14)
      abb57(17)=abb57(9)*abb57(8)
      abb57(14)=spbk7k2*abb57(17)*abb57(14)
      abb57(14)=abb57(14)-abb57(15)
      abb57(14)=spak2k5*abb57(14)
      abb57(13)=abb57(13)*spak5k6
      abb57(15)=abb57(16)*abb57(13)
      abb57(13)=abb57(13)*spak1k2
      abb57(18)=spbk3k1*abb57(13)
      abb57(15)=abb57(18)-abb57(15)
      abb57(15)=abb57(17)*abb57(15)
      abb57(18)=abb57(15)*spbk7k6
      abb57(13)=-abb57(13)*abb57(9)
      abb57(19)=abb57(10)*spbk6k3
      abb57(20)=abb57(13)*abb57(19)
      abb57(18)=abb57(18)+abb57(20)
      abb57(14)=-abb57(18)+abb57(14)
      abb57(20)=4.0_ki*abb57(14)
      abb57(18)=-16.0_ki*abb57(18)
      abb57(14)=-8.0_ki*abb57(14)
      abb57(21)=-spbk7k5*abb57(15)
      abb57(10)=abb57(10)*spbk5k3
      abb57(22)=-abb57(13)*abb57(10)
      abb57(21)=abb57(21)+abb57(22)
      abb57(21)=8.0_ki*abb57(21)
      abb57(16)=-abb57(16)*abb57(12)
      abb57(12)=abb57(12)*spak1k2
      abb57(22)=spbk3k1*abb57(12)
      abb57(16)=abb57(16)+abb57(22)
      abb57(16)=abb57(17)*abb57(16)
      abb57(17)=-spbk7k2*abb57(16)
      abb57(9)=-abb57(12)*abb57(9)
      abb57(12)=abb57(9)*abb57(11)
      abb57(12)=abb57(17)+abb57(12)
      abb57(12)=16.0_ki*abb57(12)
      abb57(17)=spbk7k6*abb57(16)
      abb57(19)=abb57(9)*abb57(19)
      abb57(17)=abb57(17)+abb57(19)
      abb57(17)=8.0_ki*abb57(17)
      abb57(16)=spbk7k5*abb57(16)
      abb57(9)=abb57(9)*abb57(10)
      abb57(9)=abb57(16)+abb57(9)
      abb57(9)=8.0_ki*abb57(9)
      abb57(10)=spbk7k2*abb57(15)
      abb57(11)=-abb57(13)*abb57(11)
      abb57(10)=abb57(10)+abb57(11)
      abb57(10)=8.0_ki*abb57(10)
      R2d57=abb57(20)
      rat2 = rat2 + R2d57
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='57' value='", &
          & R2d57, "'/>"
      end if
   end subroutine
end module p0_dbard_epnemumnmubarg_abbrevd57h1
