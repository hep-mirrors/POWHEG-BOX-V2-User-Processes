module     p0_dbard_epnemumnmubarg_abbrevd587h2
   use p0_dbard_epnemumnmubarg_config, only: ki
   use p0_dbard_epnemumnmubarg_globalsh2
   implicit none
   private
   complex(ki), dimension(0), public :: abb587
   complex(ki), public :: R2d587
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
      R2d587=0.0_ki
      rat2 = rat2 + R2d587
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='587' value='", &
          & R2d587, "'/>"
      end if
   end subroutine
end module p0_dbard_epnemumnmubarg_abbrevd587h2
