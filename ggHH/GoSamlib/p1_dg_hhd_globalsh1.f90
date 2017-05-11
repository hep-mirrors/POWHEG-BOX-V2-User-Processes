module     p1_dg_hhd_globalsh1
   use p1_dg_hhd_config, only: ki
   use p1_dg_hhd_color, only:&
      & c1v => c1

   implicit none
   private
   complex(ki), public :: c1

   public :: init_lo

   complex(ki), public :: rat2
contains

subroutine     init_lo()
   use p1_dg_hhd_globalsl1, only: epspow, col0
   implicit none
   c1 = c1v(col0)
end subroutine init_lo

end module p1_dg_hhd_globalsh1
