module     p4_ubaru_epnemumnmubarg_abbrevd281h1
   use p4_ubaru_epnemumnmubarg_config, only: ki
   use p4_ubaru_epnemumnmubarg_globalsh1
   implicit none
   private
   complex(ki), dimension(18), public :: abb281
   complex(ki), public :: R2d281
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p4_ubaru_epnemumnmubarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_color, only: TR
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      implicit none
      abb281(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb281(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb281(3)=NC**(-1)
      abb281(4)=sqrt2**(-1)
      abb281(5)=es234**(-1)
      abb281(6)=es71**(-1)
      abb281(7)=spak2k7**(-1)
      abb281(8)=spbk6k3*spak3k4
      abb281(9)=spbk6k2*spak2k4
      abb281(8)=abb281(8)-abb281(9)
      abb281(9)=NC-abb281(3)
      abb281(9)=abb281(9)*abb281(6)*abb281(7)*spbk7k1*c1*gW**4*i_*TR*abb281(5)*&
      &abb281(4)*abb281(2)*abb281(1)
      abb281(10)=abb281(9)*spbk3k2
      abb281(11)=-spak1k2*abb281(10)
      abb281(8)=abb281(8)*abb281(11)
      abb281(12)=-spak1k5*abb281(8)
      abb281(13)=4.0_ki*abb281(12)
      abb281(14)=16.0_ki*abb281(12)
      abb281(12)=-8.0_ki*abb281(12)
      abb281(15)=spbk5k3*spak3k4
      abb281(16)=-spbk5k2*spak2k4
      abb281(15)=abb281(16)+abb281(15)
      abb281(15)=abb281(11)*spak1k5*abb281(15)
      abb281(16)=spak1k6*abb281(8)
      abb281(15)=abb281(16)+abb281(15)
      abb281(15)=8.0_ki*abb281(15)
      abb281(16)=32.0_ki*spak1k4
      abb281(16)=abb281(11)*abb281(16)
      abb281(9)=spak1k4*abb281(9)*spak1k2
      abb281(17)=-spbk4k2*abb281(9)
      abb281(18)=spak1k3*abb281(11)
      abb281(17)=abb281(17)+abb281(18)
      abb281(17)=16.0_ki*abb281(17)
      abb281(10)=spak1k2**2*abb281(10)
      abb281(9)=spbk4k3*abb281(9)
      abb281(9)=abb281(9)+abb281(10)
      abb281(9)=16.0_ki*abb281(9)
      abb281(8)=-8.0_ki*spak5k6*abb281(8)
      abb281(10)=8.0_ki*abb281(11)
      abb281(11)=spak3k4*abb281(10)
      abb281(10)=-spak2k4*abb281(10)
      R2d281=abb281(13)
      rat2 = rat2 + R2d281
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='281' value='", &
          & R2d281, "'/>"
      end if
   end subroutine
end module p4_ubaru_epnemumnmubarg_abbrevd281h1
