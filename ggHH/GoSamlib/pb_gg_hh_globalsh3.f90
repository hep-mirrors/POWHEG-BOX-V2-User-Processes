module     pb_gg_hh_globalsh3
   use pb_gg_hh_config, only: ki
   use pb_gg_hh_color, only:&
      & c1v => c1

   implicit none
   private
   complex(ki), public :: c1

   public :: init_lo

   complex(ki), public :: rat2
contains

subroutine     init_lo()
   use pb_gg_hh_globalsl1, only: epspow, col0
   implicit none
   c1 = c1v(col0)
end subroutine init_lo

end module pb_gg_hh_globalsh3
