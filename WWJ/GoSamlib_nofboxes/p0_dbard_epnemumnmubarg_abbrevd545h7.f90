module     p0_dbard_epnemumnmubarg_abbrevd545h7
   use p0_dbard_epnemumnmubarg_config, only: ki
   use p0_dbard_epnemumnmubarg_globalsh7
   implicit none
   private
   complex(ki), dimension(17), public :: abb545
   complex(ki), public :: R2d545
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
      abb545(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb545(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb545(3)=1.0_ki/(-mH**2+es712+i_*mH*wH)
      abb545(4)=NC**(-1)
      abb545(5)=sqrt2**(-1)
      abb545(6)=spbk7k2**(-1)
      abb545(7)=spak4k5*gHWW*gHD*abb545(5)*abb545(4)*abb545(3)*gW**2*abb545(1)*&
      &abb545(2)*spbk6k3*c1*TR*i_
      abb545(8)=4.0_ki*abb545(7)
      abb545(9)=abb545(6)*spak1k7
      abb545(10)=abb545(8)*abb545(9)
      abb545(11)=es71-es712
      abb545(12)=-es12*abb545(11)*abb545(10)
      abb545(13)=8.0_ki*abb545(6)
      abb545(13)=abb545(13)*abb545(7)
      abb545(14)=abb545(13)*spak1k7
      abb545(15)=abb545(14)*es12
      abb545(7)=abb545(9)*abb545(7)
      abb545(7)=16.0_ki*abb545(7)
      abb545(9)=-abb545(11)*abb545(14)
      abb545(16)=abb545(8)*abb545(6)
      abb545(11)=spak1k2*abb545(11)*abb545(16)
      abb545(17)=abb545(13)*spak1k2
      abb545(8)=spak1k7**2*abb545(8)
      abb545(16)=abb545(16)*spak2k7
      abb545(13)=abb545(13)*spak2k7
      R2d545=0.0_ki
      rat2 = rat2 + R2d545
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='545' value='", &
          & R2d545, "'/>"
      end if
   end subroutine
end module p0_dbard_epnemumnmubarg_abbrevd545h7
