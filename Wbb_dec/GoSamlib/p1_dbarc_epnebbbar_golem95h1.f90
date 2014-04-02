module     p1_dbarc_epnebbbar_golem95h1
   use precision_golem, only: ki_gol => ki
   use p1_dbarc_epnebbbar_config, only: ki
   implicit none
   private
   interface reconstruct_group
      module procedure reconstruct_group0
      module procedure reconstruct_group1
      module procedure reconstruct_group2
      module procedure reconstruct_group3
      module procedure reconstruct_group4
   end interface

   public :: reconstruct_group
contains
!---#[ subroutine reconstruct_group0:
subroutine     reconstruct_group0(coeffs)
   use tens_rec
   use p1_dbarc_epnebbbar_config
   use p1_dbarc_epnebbbar_groups, only: tensrec_info_group0
   use p1_dbarc_epnebbbar_d14h1l1, only: numerator_d14 => numerator_golem95
   use p1_dbarc_epnebbbar_d14h1l1d, only: reconstruct_d14
   use p1_dbarc_epnebbbar_d33h1l1, only: numerator_d33 => numerator_golem95
   use p1_dbarc_epnebbbar_d33h1l1d, only: reconstruct_d33
   implicit none
   type(tensrec_info_group0), intent(out) :: coeffs
   !------#[ Diagram 14:
      if (tens_rec_by_derivatives) then
         call reconstruct_d14(coeffs)
      else
         call reconstruct2(numerator_d14, coeffs%coeffs_14)
      end if
   !------#] Diagram 14:
   !------#[ Diagram 33:
      if (tens_rec_by_derivatives) then
         call reconstruct_d33(coeffs)
      else
         call reconstruct2(numerator_d33, coeffs%coeffs_33)
      end if
   !------#] Diagram 33:
end subroutine reconstruct_group0
!---#] subroutine reconstruct_group0:
!---#[ subroutine reconstruct_group1:
subroutine     reconstruct_group1(coeffs)
   use tens_rec
   use p1_dbarc_epnebbbar_config
   use p1_dbarc_epnebbbar_groups, only: tensrec_info_group1
   use p1_dbarc_epnebbbar_d3h1l1, only: numerator_d3 => numerator_golem95
   use p1_dbarc_epnebbbar_d3h1l1d, only: reconstruct_d3
   implicit none
   type(tensrec_info_group1), intent(out) :: coeffs
   !------#[ Diagram 3:
      if (tens_rec_by_derivatives) then
         call reconstruct_d3(coeffs)
      else
         call reconstruct3(numerator_d3, coeffs%coeffs_3)
      end if
   !------#] Diagram 3:
end subroutine reconstruct_group1
!---#] subroutine reconstruct_group1:
!---#[ subroutine reconstruct_group2:
subroutine     reconstruct_group2(coeffs)
   use tens_rec
   use p1_dbarc_epnebbbar_config
   use p1_dbarc_epnebbbar_groups, only: tensrec_info_group2
   use p1_dbarc_epnebbbar_d2h1l1, only: numerator_d2 => numerator_golem95
   use p1_dbarc_epnebbbar_d2h1l1d, only: reconstruct_d2
   implicit none
   type(tensrec_info_group2), intent(out) :: coeffs
   !------#[ Diagram 2:
      if (tens_rec_by_derivatives) then
         call reconstruct_d2(coeffs)
      else
         call reconstruct3(numerator_d2, coeffs%coeffs_2)
      end if
   !------#] Diagram 2:
end subroutine reconstruct_group2
!---#] subroutine reconstruct_group2:
!---#[ subroutine reconstruct_group3:
subroutine     reconstruct_group3(coeffs)
   use tens_rec
   use p1_dbarc_epnebbbar_config
   use p1_dbarc_epnebbbar_groups, only: tensrec_info_group3
   use p1_dbarc_epnebbbar_d27h1l1, only: numerator_d27 => numerator_golem95
   use p1_dbarc_epnebbbar_d27h1l1d, only: reconstruct_d27
   use p1_dbarc_epnebbbar_d28h1l1, only: numerator_d28 => numerator_golem95
   use p1_dbarc_epnebbbar_d28h1l1d, only: reconstruct_d28
   use p1_dbarc_epnebbbar_d31h1l1, only: numerator_d31 => numerator_golem95
   use p1_dbarc_epnebbbar_d31h1l1d, only: reconstruct_d31
   implicit none
   type(tensrec_info_group3), intent(out) :: coeffs
   !------#[ Diagram 27:
      if (tens_rec_by_derivatives) then
         call reconstruct_d27(coeffs)
      else
         call reconstruct3(numerator_d27, coeffs%coeffs_27)
      end if
   !------#] Diagram 27:
   !------#[ Diagram 28:
      if (tens_rec_by_derivatives) then
         call reconstruct_d28(coeffs)
      else
         call reconstruct2(numerator_d28, coeffs%coeffs_28)
      end if
   !------#] Diagram 28:
   !------#[ Diagram 31:
      if (tens_rec_by_derivatives) then
         call reconstruct_d31(coeffs)
      else
         call reconstruct2(numerator_d31, coeffs%coeffs_31)
      end if
   !------#] Diagram 31:
end subroutine reconstruct_group3
!---#] subroutine reconstruct_group3:
!---#[ subroutine reconstruct_group4:
subroutine     reconstruct_group4(coeffs)
   use tens_rec
   use p1_dbarc_epnebbbar_config
   use p1_dbarc_epnebbbar_groups, only: tensrec_info_group4
   use p1_dbarc_epnebbbar_d1h1l1, only: numerator_d1 => numerator_golem95
   use p1_dbarc_epnebbbar_d1h1l1d, only: reconstruct_d1
   use p1_dbarc_epnebbbar_d4h1l1, only: numerator_d4 => numerator_golem95
   use p1_dbarc_epnebbbar_d4h1l1d, only: reconstruct_d4
   use p1_dbarc_epnebbbar_d6h1l1, only: numerator_d6 => numerator_golem95
   use p1_dbarc_epnebbbar_d6h1l1d, only: reconstruct_d6
   use p1_dbarc_epnebbbar_d8h1l1, only: numerator_d8 => numerator_golem95
   use p1_dbarc_epnebbbar_d8h1l1d, only: reconstruct_d8
   use p1_dbarc_epnebbbar_d9h1l1, only: numerator_d9 => numerator_golem95
   use p1_dbarc_epnebbbar_d9h1l1d, only: reconstruct_d9
   use p1_dbarc_epnebbbar_d10h1l1, only: numerator_d10 => numerator_golem95
   use p1_dbarc_epnebbbar_d10h1l1d, only: reconstruct_d10
   use p1_dbarc_epnebbbar_d24h1l1, only: numerator_d24 => numerator_golem95
   use p1_dbarc_epnebbbar_d24h1l1d, only: reconstruct_d24
   use p1_dbarc_epnebbbar_d25h1l1, only: numerator_d25 => numerator_golem95
   use p1_dbarc_epnebbbar_d25h1l1d, only: reconstruct_d25
   use p1_dbarc_epnebbbar_d26h1l1, only: numerator_d26 => numerator_golem95
   use p1_dbarc_epnebbbar_d26h1l1d, only: reconstruct_d26
   use p1_dbarc_epnebbbar_d29h1l1, only: numerator_d29 => numerator_golem95
   use p1_dbarc_epnebbbar_d29h1l1d, only: reconstruct_d29
   use p1_dbarc_epnebbbar_d30h1l1, only: numerator_d30 => numerator_golem95
   use p1_dbarc_epnebbbar_d30h1l1d, only: reconstruct_d30
   use p1_dbarc_epnebbbar_d32h1l1, only: numerator_d32 => numerator_golem95
   use p1_dbarc_epnebbbar_d32h1l1d, only: reconstruct_d32
   implicit none
   type(tensrec_info_group4), intent(out) :: coeffs
   !------#[ Diagram 1:
      if (tens_rec_by_derivatives) then
         call reconstruct_d1(coeffs)
      else
         call reconstruct3(numerator_d1, coeffs%coeffs_1)
      end if
   !------#] Diagram 1:
   !------#[ Diagram 4:
      if (tens_rec_by_derivatives) then
         call reconstruct_d4(coeffs)
      else
         call reconstruct2(numerator_d4, coeffs%coeffs_4)
      end if
   !------#] Diagram 4:
   !------#[ Diagram 6:
      if (tens_rec_by_derivatives) then
         call reconstruct_d6(coeffs)
      else
         call reconstruct2(numerator_d6, coeffs%coeffs_6)
      end if
   !------#] Diagram 6:
   !------#[ Diagram 8:
      if (tens_rec_by_derivatives) then
         call reconstruct_d8(coeffs)
      else
         call reconstruct2(numerator_d8, coeffs%coeffs_8)
      end if
   !------#] Diagram 8:
   !------#[ Diagram 9:
      if (tens_rec_by_derivatives) then
         call reconstruct_d9(coeffs)
      else
         call reconstruct2(numerator_d9, coeffs%coeffs_9)
      end if
   !------#] Diagram 9:
   !------#[ Diagram 10:
      if (tens_rec_by_derivatives) then
         call reconstruct_d10(coeffs)
      else
         call reconstruct2(numerator_d10, coeffs%coeffs_10)
      end if
   !------#] Diagram 10:
   !------#[ Diagram 24:
      if (tens_rec_by_derivatives) then
         call reconstruct_d24(coeffs)
      else
         call reconstruct1(numerator_d24, coeffs%coeffs_24)
      end if
   !------#] Diagram 24:
   !------#[ Diagram 25:
      if (tens_rec_by_derivatives) then
         call reconstruct_d25(coeffs)
      else
         call reconstruct1(numerator_d25, coeffs%coeffs_25)
      end if
   !------#] Diagram 25:
   !------#[ Diagram 26:
      if (tens_rec_by_derivatives) then
         call reconstruct_d26(coeffs)
      else
         call reconstruct3(numerator_d26, coeffs%coeffs_26)
      end if
   !------#] Diagram 26:
   !------#[ Diagram 29:
      if (tens_rec_by_derivatives) then
         call reconstruct_d29(coeffs)
      else
         call reconstruct2(numerator_d29, coeffs%coeffs_29)
      end if
   !------#] Diagram 29:
   !------#[ Diagram 30:
      if (tens_rec_by_derivatives) then
         call reconstruct_d30(coeffs)
      else
         call reconstruct2(numerator_d30, coeffs%coeffs_30)
      end if
   !------#] Diagram 30:
   !------#[ Diagram 32:
      if (tens_rec_by_derivatives) then
         call reconstruct_d32(coeffs)
      else
         call reconstruct2(numerator_d32, coeffs%coeffs_32)
      end if
   !------#] Diagram 32:
end subroutine reconstruct_group4
!---#] subroutine reconstruct_group4:
end module p1_dbarc_epnebbbar_golem95h1
