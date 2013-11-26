module     p1_dbarc_epnebbbarg_abbrevd223h0
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(0), public :: abb223
   complex(ki), public :: R2d223
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p1_dbarc_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_color, only: TR
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      implicit none
      R2d223=0.0_ki
      rat2 = rat2 + R2d223
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='223' value='", &
          & R2d223, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd223h0
