module     pb_gg_hh_abbrevd4h0
   use pb_gg_hh_config, only: ki
   use pb_gg_hh_globalsh0
   implicit none
   private
   complex(ki), dimension(10), public :: abb4
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
      abb4(3)=spbk2k1**(-1)
      abb4(4)=abb4(1)*abb4(2)*gHT*gHHH*c1*i_
      abb4(5)=abb4(3)**2
      abb4(6)=abb4(5)*abb4(4)
      abb4(7)=abb4(6)*es12
      abb4(8)=-2.0_ki*abb4(7)
      abb4(9)=es12**2
      abb4(10)=abb4(2)**2*es12
      abb4(9)=abb4(9)-2.0_ki*abb4(10)
      abb4(4)=2.0_ki*abb4(4)*abb4(5)*abb4(9)
      abb4(5)=4.0_ki*abb4(7)
      abb4(6)=8.0_ki*abb4(6)
      R2d4=abb4(8)
      rat2 = rat2 + R2d4
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='4' value='", &
          & R2d4, "'/>"
      end if
   end subroutine
end module pb_gg_hh_abbrevd4h0
