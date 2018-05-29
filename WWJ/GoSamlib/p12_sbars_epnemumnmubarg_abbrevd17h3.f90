module     p12_sbars_epnemumnmubarg_abbrevd17h3
   use p12_sbars_epnemumnmubarg_config, only: ki
   use p12_sbars_epnemumnmubarg_globalsh3
   implicit none
   private
   complex(ki), dimension(0), public :: abb17
   complex(ki), public :: R2d17
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p12_sbars_epnemumnmubarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_color, only: TR
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      implicit none
      R2d17=0.0_ki
      rat2 = rat2 + R2d17
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='17' value='", &
          & R2d17, "'/>"
      end if
   end subroutine
end module p12_sbars_epnemumnmubarg_abbrevd17h3
