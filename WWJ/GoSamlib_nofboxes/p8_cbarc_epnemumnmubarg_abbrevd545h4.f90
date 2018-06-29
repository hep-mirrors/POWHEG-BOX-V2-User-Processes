module     p8_cbarc_epnemumnmubarg_abbrevd545h4
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_globalsh4
   implicit none
   private
   complex(ki), dimension(15), public :: abb545
   complex(ki), public :: R2d545
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
      abb545(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb545(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb545(3)=1.0_ki/(-mH**2+es712+i_*mH*wH)
      abb545(4)=NC**(-1)
      abb545(5)=sqrt2**(-1)
      abb545(6)=spbk7k2**(-1)
      abb545(7)=spak4k5*gHWW*gHC*abb545(5)*abb545(4)*abb545(3)*gW**2*abb545(1)*&
      &abb545(2)*spbk6k3*c1*TR*i_
      abb545(8)=abb545(7)*spbk2k1**2
      abb545(9)=abb545(6)*spak1k7
      abb545(10)=abb545(8)*abb545(9)
      abb545(11)=-4.0_ki*es12*abb545(10)
      abb545(10)=16.0_ki*abb545(10)
      abb545(9)=8.0_ki*abb545(9)
      abb545(9)=abb545(9)*abb545(8)
      abb545(12)=abb545(7)*abb545(6)
      abb545(13)=abb545(12)*spbk2k1
      abb545(14)=8.0_ki*abb545(13)
      abb545(13)=-4.0_ki*abb545(13)
      abb545(12)=4.0_ki*abb545(12)
      abb545(12)=-spbk7k1*abb545(12)
      abb545(7)=4.0_ki*abb545(7)
      abb545(15)=4.0_ki*abb545(6)
      abb545(8)=-spak2k7*abb545(8)*abb545(15)
      R2d545=0.0_ki
      rat2 = rat2 + R2d545
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='545' value='", &
          & R2d545, "'/>"
      end if
   end subroutine
end module p8_cbarc_epnemumnmubarg_abbrevd545h4
