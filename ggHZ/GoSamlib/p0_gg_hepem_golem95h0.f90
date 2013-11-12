module     p0_gg_hepem_golem95h0
   use precision_golem, only: ki_gol => ki
   use p0_gg_hepem_config, only: ki
   implicit none
   private
   interface reconstruct_group
      module procedure reconstruct_group0
      module procedure reconstruct_group1
      module procedure reconstruct_group2
      module procedure reconstruct_group3
      module procedure reconstruct_group4
      module procedure reconstruct_group5
   end interface

   public :: reconstruct_group
contains
!---#[ subroutine reconstruct_group0:
subroutine     reconstruct_group0(coeffs)
   use tens_rec
   use p0_gg_hepem_config
   use p0_gg_hepem_groups, only: tensrec_info_group0
   use p0_gg_hepem_d49h0l1, only: numerator_d49 => numerator_golem95
   use p0_gg_hepem_d49h0l1d, only: reconstruct_d49
   implicit none
   type(tensrec_info_group0), intent(out) :: coeffs
   !------#[ Diagram 49:
      if (tens_rec_by_derivatives) then
         call reconstruct_d49(coeffs)
      else
         call reconstruct4(numerator_d49, coeffs%coeffs_49)
      end if
   !------#] Diagram 49:
end subroutine reconstruct_group0
!---#] subroutine reconstruct_group0:
!---#[ subroutine reconstruct_group1:
subroutine     reconstruct_group1(coeffs)
   use tens_rec
   use p0_gg_hepem_config
   use p0_gg_hepem_groups, only: tensrec_info_group1
   use p0_gg_hepem_d37h0l1, only: numerator_d37 => numerator_golem95
   use p0_gg_hepem_d37h0l1d, only: reconstruct_d37
   use p0_gg_hepem_d61h0l1, only: numerator_d61 => numerator_golem95
   use p0_gg_hepem_d61h0l1d, only: reconstruct_d61
   implicit none
   type(tensrec_info_group1), intent(out) :: coeffs
   !------#[ Diagram 37:
      if (tens_rec_by_derivatives) then
         call reconstruct_d37(coeffs)
      else
         call reconstruct4(numerator_d37, coeffs%coeffs_37)
      end if
   !------#] Diagram 37:
   !------#[ Diagram 61:
      if (tens_rec_by_derivatives) then
         call reconstruct_d61(coeffs)
      else
         call reconstruct3(numerator_d61, coeffs%coeffs_61)
      end if
   !------#] Diagram 61:
end subroutine reconstruct_group1
!---#] subroutine reconstruct_group1:
!---#[ subroutine reconstruct_group2:
subroutine     reconstruct_group2(coeffs)
   use tens_rec
   use p0_gg_hepem_config
   use p0_gg_hepem_groups, only: tensrec_info_group2
   use p0_gg_hepem_d25h0l1, only: numerator_d25 => numerator_golem95
   use p0_gg_hepem_d25h0l1d, only: reconstruct_d25
   implicit none
   type(tensrec_info_group2), intent(out) :: coeffs
   !------#[ Diagram 25:
      if (tens_rec_by_derivatives) then
         call reconstruct_d25(coeffs)
      else
         call reconstruct4(numerator_d25, coeffs%coeffs_25)
      end if
   !------#] Diagram 25:
end subroutine reconstruct_group2
!---#] subroutine reconstruct_group2:
!---#[ subroutine reconstruct_group3:
subroutine     reconstruct_group3(coeffs)
   use tens_rec
   use p0_gg_hepem_config
   use p0_gg_hepem_groups, only: tensrec_info_group3
   use p0_gg_hepem_d47h0l1, only: numerator_d47 => numerator_golem95
   use p0_gg_hepem_d47h0l1d, only: reconstruct_d47
   implicit none
   type(tensrec_info_group3), intent(out) :: coeffs
   !------#[ Diagram 47:
      if (tens_rec_by_derivatives) then
         call reconstruct_d47(coeffs)
      else
         call reconstruct4(numerator_d47, coeffs%coeffs_47)
      end if
   !------#] Diagram 47:
end subroutine reconstruct_group3
!---#] subroutine reconstruct_group3:
!---#[ subroutine reconstruct_group4:
subroutine     reconstruct_group4(coeffs)
   use tens_rec
   use p0_gg_hepem_config
   use p0_gg_hepem_groups, only: tensrec_info_group4
   use p0_gg_hepem_d35h0l1, only: numerator_d35 => numerator_golem95
   use p0_gg_hepem_d35h0l1d, only: reconstruct_d35
   implicit none
   type(tensrec_info_group4), intent(out) :: coeffs
   !------#[ Diagram 35:
      if (tens_rec_by_derivatives) then
         call reconstruct_d35(coeffs)
      else
         call reconstruct4(numerator_d35, coeffs%coeffs_35)
      end if
   !------#] Diagram 35:
end subroutine reconstruct_group4
!---#] subroutine reconstruct_group4:
!---#[ subroutine reconstruct_group5:
subroutine     reconstruct_group5(coeffs)
   use tens_rec
   use p0_gg_hepem_config
   use p0_gg_hepem_groups, only: tensrec_info_group5
   use p0_gg_hepem_d23h0l1, only: numerator_d23 => numerator_golem95
   use p0_gg_hepem_d23h0l1d, only: reconstruct_d23
   use p0_gg_hepem_d59h0l1, only: numerator_d59 => numerator_golem95
   use p0_gg_hepem_d59h0l1d, only: reconstruct_d59
   implicit none
   type(tensrec_info_group5), intent(out) :: coeffs
   !------#[ Diagram 23:
      if (tens_rec_by_derivatives) then
         call reconstruct_d23(coeffs)
      else
         call reconstruct4(numerator_d23, coeffs%coeffs_23)
      end if
   !------#] Diagram 23:
   !------#[ Diagram 59:
      if (tens_rec_by_derivatives) then
         call reconstruct_d59(coeffs)
      else
         call reconstruct3(numerator_d59, coeffs%coeffs_59)
      end if
   !------#] Diagram 59:
end subroutine reconstruct_group5
!---#] subroutine reconstruct_group5:
end module p0_gg_hepem_golem95h0
