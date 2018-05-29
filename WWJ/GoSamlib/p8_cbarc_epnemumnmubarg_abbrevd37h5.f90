module     p8_cbarc_epnemumnmubarg_abbrevd37h5
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_globalsh5
   implicit none
   private
   complex(ki), dimension(0), public :: abb37
   complex(ki), public :: R2d37
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p8_cbarc_epnemumnmubarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_color, only: TR
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      implicit none
      R2d37=0.0_ki
      rat2 = rat2 + R2d37
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='37' value='", &
          & R2d37, "'/>"
      end if
   end subroutine
end module p8_cbarc_epnemumnmubarg_abbrevd37h5
