module     p0_dbaru_epnebbbarg_abbrevd110h6
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh6
   implicit none
   private
   complex(ki), dimension(0), public :: abb110
   complex(ki), public :: R2d110
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p0_dbaru_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_color, only: TR
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      implicit none
      R2d110=0.0_ki
      rat2 = rat2 + R2d110
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='110' value='", &
          & R2d110, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd110h6
