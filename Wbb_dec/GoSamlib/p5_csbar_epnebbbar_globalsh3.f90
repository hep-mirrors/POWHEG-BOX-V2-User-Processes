module     p5_csbar_epnebbbar_globalsh3
   use p5_csbar_epnebbbar_config, only: ki
   use p5_csbar_epnebbbar_color, only:&
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
   use p5_csbar_epnebbbar_globalsl1, only: epspow, ccontract, amp0
   implicit none
   c1 = ccontract(c1v, amp0)
   c2 = ccontract(c2v, amp0)
end subroutine init_lo

end module p5_csbar_epnebbbar_globalsh3
