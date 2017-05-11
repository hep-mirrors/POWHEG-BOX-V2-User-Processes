module     p0_gg_hhg_globalsh3
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_color, only:&
      & c1v => c1,&
      & c2v => c2

   implicit none
   private
   complex(ki), public :: c1
   complex(ki), public :: c2

   public :: init_lo

   complex(ki), public :: rat2
contains

subroutine     init_lo()
   use p0_gg_hhg_globalsl1, only: epspow, col0
   implicit none
   c1 = c1v(col0)
   c2 = c2v(col0)
end subroutine init_lo

end module p0_gg_hhg_globalsh3
