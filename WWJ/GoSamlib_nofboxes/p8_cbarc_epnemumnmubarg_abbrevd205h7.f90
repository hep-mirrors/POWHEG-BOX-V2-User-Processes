module     p8_cbarc_epnemumnmubarg_abbrevd205h7
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_globalsh7
   implicit none
   private
   complex(ki), dimension(16), public :: abb205
   complex(ki), public :: R2d205
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
      abb205(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb205(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb205(3)=1.0_ki/(-mH**2+es712+i_*mH*wH)
      abb205(4)=NC**(-1)
      abb205(5)=sqrt2**(-1)
      abb205(6)=spbk7k2**(-1)
      abb205(7)=es71**(-1)
      abb205(8)=abb205(4)-NC
      abb205(9)=abb205(8)*abb205(6)
      abb205(10)=abb205(8)*abb205(7)*abb205(6)
      abb205(11)=es712*abb205(10)
      abb205(11)=-abb205(9)+abb205(11)
      abb205(12)=spak4k5*gHWW*gHC*abb205(5)*abb205(3)*abb205(1)*abb205(2)*spbk6&
      &k3*c1*TR*i_
      abb205(13)=abb205(12)*spak1k7
      abb205(14)=abb205(13)*gW**2
      abb205(11)=4.0_ki*abb205(11)*abb205(14)
      abb205(15)=es712+es12
      abb205(15)=abb205(15)*abb205(10)
      abb205(15)=-abb205(9)+abb205(15)
      abb205(14)=abb205(14)*abb205(7)
      abb205(14)=8.0_ki*abb205(14)
      abb205(15)=abb205(15)*abb205(14)
      abb205(16)=-es12+2.0_ki*es712
      abb205(10)=-abb205(16)*abb205(10)
      abb205(10)=2.0_ki*abb205(9)+abb205(10)
      abb205(10)=abb205(10)*abb205(14)
      abb205(13)=4.0_ki*abb205(13)
      abb205(14)=gW*abb205(7)
      abb205(14)=abb205(14)**2
      abb205(13)=abb205(13)*abb205(14)
      abb205(16)=spak1k2*abb205(8)*abb205(13)
      abb205(12)=abb205(14)*abb205(12)*spak1k7**2
      abb205(12)=8.0_ki*abb205(12)
      abb205(9)=abb205(9)*spbk2k1
      abb205(14)=-abb205(12)*abb205(9)
      abb205(8)=abb205(8)*abb205(12)
      abb205(9)=abb205(13)*spak2k7*abb205(9)
      R2d205=0.0_ki
      rat2 = rat2 + R2d205
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='205' value='", &
          & R2d205, "'/>"
      end if
   end subroutine
end module p8_cbarc_epnemumnmubarg_abbrevd205h7
