module     p0_gg_hhg_abbrevd6h1
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_kinematics, only: epstensor
   use p0_gg_hhg_globalsh1
   implicit none
   private
   complex(ki), dimension(9), public :: abb6
   complex(ki), public :: R2d6
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p0_gg_hhg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_model
      use p0_gg_hhg_color, only: TR
      use p0_gg_hhg_globalsl1, only: epspow
      implicit none
      abb6(1)=1.0_ki/(-mH**2+es34+i_*mH*wH)
      abb6(2)=sqrt(mT**2)
      abb6(3)=sqrt2**(-1)
      abb6(4)=es51**(-1)
      abb6(5)=spak1k2**(-1)
      abb6(6)=spbk5k2**(-1)
      abb6(7)=spak2k5**(-1)
      abb6(8)=c2-c1
      abb6(9)=16.0_ki*i_
      abb6(8)=abb6(8)*abb6(9)*abb6(6)*gHT*gHHH*spbk5k1*abb6(1)*abb6(2)*abb6(3)*&
      &abb6(4)
      abb6(9)=-abb6(5)*abb6(8)
      abb6(8)=-abb6(7)*abb6(8)
      R2d6=0.0_ki
      rat2 = rat2 + R2d6
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='6' value='", &
          & R2d6, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd6h1
