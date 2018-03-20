module     p1_dg_hhd_abbrevd1h3
   use p1_dg_hhd_config, only: ki
   use p1_dg_hhd_kinematics, only: epstensor
   use p1_dg_hhd_globalsh3
   implicit none
   private
   complex(ki), dimension(7), public :: abb1
   complex(ki), public :: R2d1
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p1_dg_hhd_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p1_dg_hhd_kinematics
      use p1_dg_hhd_model
      use p1_dg_hhd_color, only: TR
      use p1_dg_hhd_globalsl1, only: epspow
      implicit none
      abb1(1)=1.0_ki/(-mH**2+es34+i_*mH*wH)
      abb1(2)=sqrt(mT**2)
      abb1(3)=sqrt2**(-1)
      abb1(4)=es51**(-1)
      abb1(5)=spak1k2**(-1)
      abb1(6)=i_*gHT*gHHH*c1*TR*abb1(1)*abb1(2)*abb1(3)*abb1(4)
      abb1(7)=4.0_ki*spak1k5*spbk5k2**2*abb1(6)
      abb1(6)=16.0_ki*abb1(5)*abb1(6)
      R2d1=0.0_ki
      rat2 = rat2 + R2d1
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='1' value='", &
          & R2d1, "'/>"
      end if
   end subroutine
end module p1_dg_hhd_abbrevd1h3
