module     p9_csbar_epnebbbarg_abbrevd125h3
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(0), public :: abb125
   complex(ki), public :: R2d125
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p9_csbar_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_color, only: TR
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      implicit none
      R2d125=0.0_ki
      rat2 = rat2 + R2d125
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='125' value='", &
          & R2d125, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd125h3
