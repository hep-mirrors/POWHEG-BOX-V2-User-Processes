module     p1_dbarc_epnebbbar_abbrevd24h0
   use p1_dbarc_epnebbbar_config, only: ki
   use p1_dbarc_epnebbbar_globalsh0
   implicit none
   private
   complex(ki), dimension(0), public :: abb24
   complex(ki), public :: R2d24
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p1_dbarc_epnebbbar_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p1_dbarc_epnebbbar_kinematics
      use p1_dbarc_epnebbbar_model
      use p1_dbarc_epnebbbar_color, only: TR
      use p1_dbarc_epnebbbar_globalsl1, only: epspow
      implicit none
      R2d24=0.0_ki
      rat2 = rat2 + R2d24
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='24' value='", &
          & R2d24, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbar_abbrevd24h0
