module precision
   implicit none

   ! integer, parameter :: ki=kind(1.0d0)
   ! integer, parameter :: ki_ql=kind(1.d0)
   ! integer, parameter :: ki_lt=kind(1.d0)
   integer, parameter :: ki=selected_real_kind(33, 4931)
   integer, parameter :: ki_ql=selected_real_kind(33, 4931)
   integer, parameter :: ki_lt=selected_real_kind(33, 4931)


end module precision

