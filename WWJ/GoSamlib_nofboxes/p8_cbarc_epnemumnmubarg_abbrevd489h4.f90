module     p8_cbarc_epnemumnmubarg_abbrevd489h4
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_globalsh4
   implicit none
   private
   complex(ki), dimension(20), public :: abb489
   complex(ki), public :: R2d489
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p8_cbarc_epnemumnmubarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_color, only: TR
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      implicit none
      abb489(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb489(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb489(3)=1.0_ki/(-mH**2+es712+i_*mH*wH)
      abb489(4)=NC**(-1)
      abb489(5)=sqrt2**(-1)
      abb489(6)=es71**(-1)
      abb489(7)=spbk7k2**(-1)
      abb489(8)=abb489(4)*spak1k7
      abb489(9)=NC*spak1k7
      abb489(10)=abb489(8)-abb489(9)
      abb489(11)=spak4k5*gHWW*gHC*abb489(5)*abb489(3)*gW**2*abb489(1)*abb489(2)&
      &*spbk6k3*c1*TR*i_
      abb489(12)=abb489(11)*abb489(6)*abb489(7)
      abb489(13)=spbk2k1**2
      abb489(14)=abb489(12)*abb489(13)
      abb489(10)=abb489(10)*abb489(14)
      abb489(15)=-2.0_ki*abb489(10)
      abb489(16)=2.0_ki*abb489(7)
      abb489(13)=abb489(9)*abb489(16)*abb489(13)*abb489(11)
      abb489(14)=8.0_ki*abb489(14)
      abb489(17)=-abb489(8)-abb489(9)
      abb489(17)=abb489(17)*abb489(14)
      abb489(9)=abb489(9)*abb489(14)
      abb489(10)=4.0_ki*abb489(10)
      abb489(14)=abb489(11)*spbk2k1
      abb489(18)=-2.0_ki*abb489(4)-3.0_ki*NC
      abb489(16)=abb489(18)*abb489(14)*abb489(16)
      abb489(18)=NC+abb489(4)
      abb489(19)=16.0_ki*abb489(12)*abb489(18)*spbk2k1
      abb489(12)=8.0_ki*abb489(12)
      abb489(12)=abb489(18)*abb489(12)
      abb489(20)=-spbk2k1*abb489(12)
      abb489(12)=-spbk7k1*abb489(12)
      abb489(8)=-4.0_ki*abb489(6)*abb489(14)*abb489(8)
      abb489(11)=4.0_ki*abb489(11)
      abb489(11)=abb489(6)*abb489(18)*abb489(11)
      R2d489=abb489(15)
      rat2 = rat2 + R2d489
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='489' value='", &
          & R2d489, "'/>"
      end if
   end subroutine
end module p8_cbarc_epnemumnmubarg_abbrevd489h4
