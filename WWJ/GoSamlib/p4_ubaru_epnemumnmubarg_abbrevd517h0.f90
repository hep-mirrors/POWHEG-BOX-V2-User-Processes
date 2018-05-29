module     p4_ubaru_epnemumnmubarg_abbrevd517h0
   use p4_ubaru_epnemumnmubarg_config, only: ki
   use p4_ubaru_epnemumnmubarg_globalsh0
   implicit none
   private
   complex(ki), dimension(17), public :: abb517
   complex(ki), public :: R2d517
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
      abb517(1)=1.0_ki/(-es71+es712-es12)
      abb517(2)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb517(3)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb517(4)=1.0_ki/(-mH**2+es712+i_*mH*wH)
      abb517(5)=NC**(-1)
      abb517(6)=sqrt2**(-1)
      abb517(7)=spak2k7**(-1)
      abb517(8)=es712-es12
      abb517(9)=abb517(8)-es71
      abb517(10)=NC-abb517(5)
      abb517(10)=abb517(10)*abb517(9)
      abb517(11)=spak4k5*gHWW*gHU*abb517(7)*abb517(6)*abb517(4)*abb517(3)*gW**2&
      &*abb517(1)*abb517(2)*spbk6k3*c1*TR*i_
      abb517(12)=abb517(10)*abb517(11)*spbk7k1
      abb517(13)=2.0_ki*abb517(12)
      abb517(14)=es12**2
      abb517(15)=-2.0_ki*es12+es712
      abb517(15)=es712*abb517(15)
      abb517(8)=-2.0_ki*abb517(8)+es71
      abb517(8)=es71*abb517(8)
      abb517(8)=abb517(8)+abb517(14)+abb517(15)
      abb517(14)=4.0_ki*spbk7k1
      abb517(14)=abb517(14)*abb517(11)
      abb517(15)=abb517(14)*NC
      abb517(8)=abb517(8)*abb517(15)
      abb517(12)=8.0_ki*abb517(12)
      abb517(15)=abb517(9)*abb517(15)
      abb517(10)=-abb517(10)*abb517(14)
      abb517(16)=2.0_ki*abb517(5)-NC
      abb517(17)=2.0_ki*abb517(11)
      abb517(9)=abb517(17)*abb517(16)*abb517(9)*spbk2k1
      abb517(16)=NC+abb517(5)
      abb517(11)=8.0_ki*abb517(11)
      abb517(11)=abb517(11)*spbk2k1*abb517(16)
      abb517(14)=-abb517(16)*abb517(14)
      R2d517=abb517(13)
      rat2 = rat2 + R2d517
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='517' value='", &
          & R2d517, "'/>"
      end if
   end subroutine
end module p4_ubaru_epnemumnmubarg_abbrevd517h0
