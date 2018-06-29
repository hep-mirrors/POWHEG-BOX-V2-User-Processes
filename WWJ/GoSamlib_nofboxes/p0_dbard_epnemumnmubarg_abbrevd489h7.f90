module     p0_dbard_epnemumnmubarg_abbrevd489h7
   use p0_dbard_epnemumnmubarg_config, only: ki
   use p0_dbard_epnemumnmubarg_globalsh7
   implicit none
   private
   complex(ki), dimension(21), public :: abb489
   complex(ki), public :: R2d489
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
      abb489(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb489(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb489(3)=1.0_ki/(-mH**2+es712+i_*mH*wH)
      abb489(4)=NC**(-1)
      abb489(5)=sqrt2**(-1)
      abb489(6)=spbk7k2**(-1)
      abb489(7)=es71**(-1)
      abb489(8)=abb489(7)*es712
      abb489(8)=abb489(8)-1.0_ki
      abb489(8)=abb489(8)*NC
      abb489(9)=abb489(7)*abb489(4)
      abb489(10)=abb489(9)*es712
      abb489(10)=abb489(10)-abb489(4)
      abb489(8)=abb489(8)-abb489(10)
      abb489(11)=spak4k5*gHWW*gHD*abb489(5)*abb489(3)*gW**2*abb489(1)*abb489(2)&
      &*spbk6k3*c1*TR*i_
      abb489(12)=abb489(11)*abb489(6)
      abb489(13)=spak1k7*abb489(12)
      abb489(14)=2.0_ki*abb489(13)
      abb489(15)=-abb489(8)*abb489(14)
      abb489(16)=es712-es71
      abb489(16)=es12-2.0_ki*abb489(16)
      abb489(14)=abb489(16)*NC*abb489(14)
      abb489(16)=-es712+2.0_ki*es12
      abb489(16)=abb489(16)*abb489(7)
      abb489(16)=abb489(16)+1.0_ki
      abb489(16)=abb489(16)*NC
      abb489(10)=abb489(16)+abb489(10)
      abb489(17)=8.0_ki*abb489(13)
      abb489(10)=abb489(10)*abb489(17)
      abb489(16)=-abb489(17)*abb489(16)
      abb489(8)=4.0_ki*abb489(8)*abb489(13)
      abb489(13)=4.0_ki*abb489(12)
      abb489(18)=abb489(4)+NC
      abb489(18)=abb489(13)*spak1k2*abb489(18)
      abb489(19)=NC*abb489(7)
      abb489(9)=abb489(19)+abb489(9)
      abb489(20)=abb489(12)*spak1k2*abb489(9)
      abb489(21)=-16.0_ki*abb489(20)
      abb489(20)=8.0_ki*abb489(20)
      abb489(19)=abb489(19)*spak1k7**2
      abb489(12)=-2.0_ki*spbk2k1*abb489(12)*abb489(19)
      abb489(17)=abb489(9)*abb489(17)
      abb489(11)=6.0_ki*abb489(11)*abb489(19)
      abb489(9)=-abb489(13)*spak2k7*abb489(9)
      R2d489=abb489(15)
      rat2 = rat2 + R2d489
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='489' value='", &
          & R2d489, "'/>"
      end if
   end subroutine
end module p0_dbard_epnemumnmubarg_abbrevd489h7
