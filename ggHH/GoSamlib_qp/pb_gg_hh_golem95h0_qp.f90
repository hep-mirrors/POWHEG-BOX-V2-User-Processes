module pb_gg_hh_golem95h0_qp
   use golem_precision_golem_qp, only: ki_gol => ki
   use pb_gg_hh_config_qp, only: ki
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
   use pb_gg_hh_config_qp
   use pb_gg_hh_groups_qp, only: tensrec_info_group0
   use pb_gg_hh_d10h0l1_qp, only: numerator_d10 => numerator_golem95
   use pb_gg_hh_d10h0l1d_qp, only: reconstruct_d10
   implicit none
   type(tensrec_info_group0), intent(out) :: coeffs
   !------#[ Diagram 10:
      if (tens_rec_by_derivatives) then
         call reconstruct_d10(coeffs)
      else
         call reconstruct4(numerator_d10, coeffs%coeffs_10)
      end if
   !------#] Diagram 10:
end subroutine reconstruct_group0
!---#] subroutine reconstruct_group0:
!---#[ subroutine reconstruct_group1:
subroutine     reconstruct_group1(coeffs)
   use golem_tens_rec_qp
   use pb_gg_hh_config_qp
   use pb_gg_hh_groups_qp, only: tensrec_info_group1
   use pb_gg_hh_d4h0l1_qp, only: numerator_d4 => numerator_golem95
   use pb_gg_hh_d4h0l1d_qp, only: reconstruct_d4
   use pb_gg_hh_d8h0l1_qp, only: numerator_d8 => numerator_golem95
   use pb_gg_hh_d8h0l1d_qp, only: reconstruct_d8
   implicit none
   type(tensrec_info_group1), intent(out) :: coeffs
   !------#[ Diagram 4:
      if (tens_rec_by_derivatives) then
         call reconstruct_d4(coeffs)
      else
         call reconstruct3(numerator_d4, coeffs%coeffs_4)
      end if
   !------#] Diagram 4:
   !------#[ Diagram 8:
      if (tens_rec_by_derivatives) then
         call reconstruct_d8(coeffs)
      else
         call reconstruct4(numerator_d8, coeffs%coeffs_8)
      end if
   !------#] Diagram 8:
end subroutine reconstruct_group1
!---#] subroutine reconstruct_group1:
!---#[ subroutine reconstruct_group2:
subroutine     reconstruct_group2(coeffs)
   use golem_tens_rec_qp
   use pb_gg_hh_config_qp
   use pb_gg_hh_groups_qp, only: tensrec_info_group2
   use pb_gg_hh_d6h0l1_qp, only: numerator_d6 => numerator_golem95
   use pb_gg_hh_d6h0l1d_qp, only: reconstruct_d6
   implicit none
   type(tensrec_info_group2), intent(out) :: coeffs
   !------#[ Diagram 6:
      if (tens_rec_by_derivatives) then
         call reconstruct_d6(coeffs)
      else
         call reconstruct4(numerator_d6, coeffs%coeffs_6)
      end if
   !------#] Diagram 6:
end subroutine reconstruct_group2
!---#] subroutine reconstruct_group2:
end module pb_gg_hh_golem95h0_qp
