module p1_dg_hhd_golem95h2_qp
   use golem_precision_golem_qp, only: ki_gol => ki
   use p1_dg_hhd_config_qp, only: ki
   implicit none
   private
   interface reconstruct_group
      module procedure reconstruct_group0
      module procedure reconstruct_group1
      module procedure reconstruct_group2
   end interface

   public :: reconstruct_group
contains
!---#[ subroutine reconstruct_group0:
subroutine     reconstruct_group0(coeffs)
   use golem_tens_rec_qp
   use p1_dg_hhd_config_qp
   use p1_dg_hhd_groups_qp, only: tensrec_info_group0
   use p1_dg_hhd_d4h2l1_qp, only: numerator_d4 => numerator_golem95
   use p1_dg_hhd_d4h2l1d_qp, only: reconstruct_d4
   implicit none
   type(tensrec_info_group0), intent(out) :: coeffs
   !------#[ Diagram 4:
      if (tens_rec_by_derivatives) then
         call reconstruct_d4(coeffs)
      else
         call reconstruct4(numerator_d4, coeffs%coeffs_4)
      end if
   !------#] Diagram 4:
end subroutine reconstruct_group0
!---#] subroutine reconstruct_group0:
!---#[ subroutine reconstruct_group1:
subroutine     reconstruct_group1(coeffs)
   use golem_tens_rec_qp
   use p1_dg_hhd_config_qp
   use p1_dg_hhd_groups_qp, only: tensrec_info_group1
   use p1_dg_hhd_d1h2l1_qp, only: numerator_d1 => numerator_golem95
   use p1_dg_hhd_d1h2l1d_qp, only: reconstruct_d1
   use p1_dg_hhd_d6h2l1_qp, only: numerator_d6 => numerator_golem95
   use p1_dg_hhd_d6h2l1d_qp, only: reconstruct_d6
   implicit none
   type(tensrec_info_group1), intent(out) :: coeffs
   !------#[ Diagram 1:
      if (tens_rec_by_derivatives) then
         call reconstruct_d1(coeffs)
      else
         call reconstruct3(numerator_d1, coeffs%coeffs_1)
      end if
   !------#] Diagram 1:
   !------#[ Diagram 6:
      if (tens_rec_by_derivatives) then
         call reconstruct_d6(coeffs)
      else
         call reconstruct4(numerator_d6, coeffs%coeffs_6)
      end if
   !------#] Diagram 6:
end subroutine reconstruct_group1
!---#] subroutine reconstruct_group1:
!---#[ subroutine reconstruct_group2:
subroutine     reconstruct_group2(coeffs)
   use golem_tens_rec_qp
   use p1_dg_hhd_config_qp
   use p1_dg_hhd_groups_qp, only: tensrec_info_group2
   use p1_dg_hhd_d8h2l1_qp, only: numerator_d8 => numerator_golem95
   use p1_dg_hhd_d8h2l1d_qp, only: reconstruct_d8
   implicit none
   type(tensrec_info_group2), intent(out) :: coeffs
   !------#[ Diagram 8:
      if (tens_rec_by_derivatives) then
         call reconstruct_d8(coeffs)
      else
         call reconstruct4(numerator_d8, coeffs%coeffs_8)
      end if
   !------#] Diagram 8:
end subroutine reconstruct_group2
!---#] subroutine reconstruct_group2:
end module p1_dg_hhd_golem95h2_qp
