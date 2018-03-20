module     p1_dg_hhd_globalsh3_qp
   use p1_dg_hhd_config, only: ki => ki_qp
   use p1_dg_hhd_color_qp, only:&
      & c1v => c1

   implicit none
   private
   complex(ki), public :: c1

   public :: init_lo

   complex(ki), public :: rat2
contains

subroutine     init_lo()
   use p1_dg_hhd_globalsl1_qp, only: epspow, col0
   implicit none
   c1 = c1v(col0)
end subroutine init_lo

end module p1_dg_hhd_globalsh3_qp
