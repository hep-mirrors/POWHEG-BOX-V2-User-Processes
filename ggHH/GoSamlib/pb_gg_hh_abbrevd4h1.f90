module     pb_gg_hh_abbrevd4h1
   use pb_gg_hh_config, only: ki
   use pb_gg_hh_globalsh1
   implicit none
   private
   complex(ki), dimension(5), public :: abb4
   complex(ki), public :: R2d4
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use pb_gg_hh_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use pb_gg_hh_kinematics
      use pb_gg_hh_model
      use pb_gg_hh_color, only: TR
      use pb_gg_hh_globalsl1, only: epspow
      implicit none
      abb4(1)=1.0_ki/(-mH**2+es12+i_*mH*wH)
      abb4(2)=sqrt(mT**2)
      abb4(3)=spak1k2**(-1)
      abb4(4)=spbk2k1**(-1)
      abb4(5)=8.0_ki*abb4(1)*abb4(2)*abb4(3)*abb4(4)*gHT*gHHH*c1*i_
      R2d4=0.0_ki
      rat2 = rat2 + R2d4
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='4' value='", &
          & R2d4, "'/>"
      end if
   end subroutine
end module pb_gg_hh_abbrevd4h1
