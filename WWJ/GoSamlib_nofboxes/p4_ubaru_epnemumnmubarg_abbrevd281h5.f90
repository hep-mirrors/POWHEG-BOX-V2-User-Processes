module     p4_ubaru_epnemumnmubarg_abbrevd281h5
   use p4_ubaru_epnemumnmubarg_config, only: ki
   use p4_ubaru_epnemumnmubarg_globalsh5
   implicit none
   private
   complex(ki), dimension(26), public :: abb281
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
      abb281(7)=spbk7k2**(-1)
      abb281(8)=NC-abb281(3)
      abb281(9)=spak1k7*c1*gW**4*i_*TR*abb281(5)*abb281(4)*abb281(2)*abb281(1)
      abb281(10)=abb281(8)*spbk3k2*abb281(9)*abb281(6)
      abb281(11)=spbk6k3*spak3k4
      abb281(12)=spbk6k2*spak2k4
      abb281(11)=abb281(11)-abb281(12)
      abb281(12)=-abb281(11)*abb281(10)
      abb281(13)=abb281(12)*spak5k7
      abb281(14)=abb281(7)*abb281(10)
      abb281(15)=abb281(14)*spbk2k1
      abb281(11)=abb281(11)*abb281(15)
      abb281(16)=abb281(11)*spak1k5
      abb281(13)=abb281(13)+abb281(16)
      abb281(16)=4.0_ki*abb281(13)
      abb281(17)=16.0_ki*abb281(13)
      abb281(13)=-8.0_ki*abb281(13)
      abb281(18)=8.0_ki*spak5k6
      abb281(19)=-abb281(12)*abb281(18)
      abb281(12)=-spak6k7*abb281(12)
      abb281(20)=-abb281(10)*spak5k7
      abb281(21)=-spak3k4*abb281(20)
      abb281(22)=spak3k4*abb281(15)
      abb281(23)=-spak1k5*abb281(22)
      abb281(21)=abb281(21)+abb281(23)
      abb281(21)=spbk5k3*abb281(21)
      abb281(20)=spak2k4*abb281(20)
      abb281(23)=spak2k4*abb281(15)
      abb281(24)=spak1k5*abb281(23)
      abb281(20)=abb281(20)+abb281(24)
      abb281(20)=spbk5k2*abb281(20)
      abb281(24)=-spak1k6*abb281(11)
      abb281(12)=abb281(24)+abb281(20)+abb281(12)+abb281(21)
      abb281(12)=8.0_ki*abb281(12)
      abb281(20)=spak1k4*spbk2k1
      abb281(21)=abb281(14)*abb281(20)
      abb281(24)=-abb281(10)*spak4k7
      abb281(21)=abb281(21)+abb281(24)
      abb281(21)=32.0_ki*abb281(21)
      abb281(24)=8.0_ki*abb281(10)
      abb281(25)=-spak3k4*abb281(24)
      abb281(24)=spak2k4*abb281(24)
      abb281(26)=spak4k7*abb281(9)*abb281(8)*abb281(6)
      abb281(8)=abb281(8)*abb281(9)*abb281(7)
      abb281(9)=-abb281(20)*abb281(6)*abb281(8)
      abb281(9)=abb281(26)+abb281(9)
      abb281(20)=spbk4k2*abb281(9)
      abb281(10)=spak3k7*abb281(10)
      abb281(15)=-spak1k3*abb281(15)
      abb281(10)=abb281(15)+abb281(20)+abb281(10)
      abb281(10)=16.0_ki*abb281(10)
      abb281(9)=-spbk4k3*abb281(9)
      abb281(8)=-spbk3k2*abb281(8)
      abb281(14)=es712*abb281(14)
      abb281(8)=abb281(14)+abb281(9)+abb281(8)
      abb281(8)=16.0_ki*abb281(8)
      abb281(9)=abb281(11)*abb281(18)
      abb281(11)=-8.0_ki*abb281(22)
      abb281(14)=8.0_ki*abb281(23)
      R2d281=abb281(16)
      rat2 = rat2 + R2d281
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='281' value='", &
          & R2d281, "'/>"
      end if
   end subroutine
end module p4_ubaru_epnemumnmubarg_abbrevd281h5
