module golem_avh_olo_xkind_qp
  implicit none
  private
  public :: olo_xkind
  !
  ! integer ,parameter :: olo_xkind=kind(1.0d0)
  integer ,parameter :: olo_xkind=selected_real_kind(33, 4931)
  !
end module
