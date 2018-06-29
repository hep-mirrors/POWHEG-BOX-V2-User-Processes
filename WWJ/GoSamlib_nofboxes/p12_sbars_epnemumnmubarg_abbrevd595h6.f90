module     p12_sbars_epnemumnmubarg_abbrevd595h6
   use p12_sbars_epnemumnmubarg_config, only: ki
   use p12_sbars_epnemumnmubarg_globalsh6
   implicit none
   private
   complex(ki), dimension(0), public :: abb595
   complex(ki), public :: R2d595
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
      R2d595=0.0_ki
      rat2 = rat2 + R2d595
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='595' value='", &
          & R2d595, "'/>"
      end if
   end subroutine
end module p12_sbars_epnemumnmubarg_abbrevd595h6
