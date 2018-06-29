module     p0_dbard_epnemumnmubarg_abbrevd591h6
   use p0_dbard_epnemumnmubarg_config, only: ki
   use p0_dbard_epnemumnmubarg_globalsh6
   implicit none
   private
   complex(ki), dimension(0), public :: abb591
   complex(ki), public :: R2d591
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
      R2d591=0.0_ki
      rat2 = rat2 + R2d591
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='591' value='", &
          & R2d591, "'/>"
      end if
   end subroutine
end module p0_dbard_epnemumnmubarg_abbrevd591h6
