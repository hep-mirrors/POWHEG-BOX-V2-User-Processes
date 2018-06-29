module     p4_ubaru_epnemumnmubarg_abbrevd281h0
   use p4_ubaru_epnemumnmubarg_config, only: ki
   use p4_ubaru_epnemumnmubarg_globalsh0
   implicit none
   private
   complex(ki), dimension(0), public :: abb281
   complex(ki), public :: R2d281
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p4_ubaru_epnemumnmubarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_color, only: TR
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      implicit none
      R2d281=0.0_ki
      rat2 = rat2 + R2d281
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='281' value='", &
          & R2d281, "'/>"
      end if
   end subroutine
end module p4_ubaru_epnemumnmubarg_abbrevd281h0
