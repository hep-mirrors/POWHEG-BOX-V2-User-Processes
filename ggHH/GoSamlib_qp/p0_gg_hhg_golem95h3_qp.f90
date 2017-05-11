module p0_gg_hhg_golem95h3_qp
   use golem_precision_golem_qp, only: ki_gol => ki
   use p0_gg_hhg_config_qp, only: ki
   implicit none
   private
   interface reconstruct_group
      module procedure reconstruct_group0
      module procedure reconstruct_group1
      module procedure reconstruct_group2
      module procedure reconstruct_group3
      module procedure reconstruct_group4
      module procedure reconstruct_group5
      module procedure reconstruct_group6
      module procedure reconstruct_group7
      module procedure reconstruct_group8
      module procedure reconstruct_group9
      module procedure reconstruct_group10
      module procedure reconstruct_group11
   end interface

   public :: reconstruct_group
contains
!---#[ subroutine reconstruct_group0:
subroutine     reconstruct_group0(coeffs)
   use golem_tens_rec_qp
   use p0_gg_hhg_config_qp
   use p0_gg_hhg_groups_qp, only: tensrec_info_group0
   use p0_gg_hhg_d65h3l1_qp, only: numerator_d65 => numerator_golem95
   use p0_gg_hhg_d65h3l1d_qp, only: reconstruct_d65
   implicit none
   type(tensrec_info_group0), intent(out) :: coeffs
   !------#[ Diagram 65:
      if (tens_rec_by_derivatives) then
         call reconstruct_d65(coeffs)
      else
         call reconstruct5(numerator_d65, coeffs%coeffs_65)
      end if
   !------#] Diagram 65:
end subroutine reconstruct_group0
!---#] subroutine reconstruct_group0:
!---#[ subroutine reconstruct_group1:
subroutine     reconstruct_group1(coeffs)
   use golem_tens_rec_qp
   use p0_gg_hhg_config_qp
   use p0_gg_hhg_groups_qp, only: tensrec_info_group1
   use p0_gg_hhg_d25h3l1_qp, only: numerator_d25 => numerator_golem95
   use p0_gg_hhg_d25h3l1d_qp, only: reconstruct_d25
   use p0_gg_hhg_d55h3l1_qp, only: numerator_d55 => numerator_golem95
   use p0_gg_hhg_d55h3l1d_qp, only: reconstruct_d55
   implicit none
   type(tensrec_info_group1), intent(out) :: coeffs
   !------#[ Diagram 25:
      if (tens_rec_by_derivatives) then
         call reconstruct_d25(coeffs)
      else
         call reconstruct4(numerator_d25, coeffs%coeffs_25)
      end if
   !------#] Diagram 25:
   !------#[ Diagram 55:
      if (tens_rec_by_derivatives) then
         call reconstruct_d55(coeffs)
      else
         call reconstruct5(numerator_d55, coeffs%coeffs_55)
      end if
   !------#] Diagram 55:
end subroutine reconstruct_group1
!---#] subroutine reconstruct_group1:
!---#[ subroutine reconstruct_group2:
subroutine     reconstruct_group2(coeffs)
   use golem_tens_rec_qp
   use p0_gg_hhg_config_qp
   use p0_gg_hhg_groups_qp, only: tensrec_info_group2
   use p0_gg_hhg_d63h3l1_qp, only: numerator_d63 => numerator_golem95
   use p0_gg_hhg_d63h3l1d_qp, only: reconstruct_d63
   implicit none
   type(tensrec_info_group2), intent(out) :: coeffs
   !------#[ Diagram 63:
      if (tens_rec_by_derivatives) then
         call reconstruct_d63(coeffs)
      else
         call reconstruct5(numerator_d63, coeffs%coeffs_63)
      end if
   !------#] Diagram 63:
end subroutine reconstruct_group2
!---#] subroutine reconstruct_group2:
!---#[ subroutine reconstruct_group3:
subroutine     reconstruct_group3(coeffs)
   use golem_tens_rec_qp
   use p0_gg_hhg_config_qp
   use p0_gg_hhg_groups_qp, only: tensrec_info_group3
   use p0_gg_hhg_d19h3l1_qp, only: numerator_d19 => numerator_golem95
   use p0_gg_hhg_d19h3l1d_qp, only: reconstruct_d19
   use p0_gg_hhg_d59h3l1_qp, only: numerator_d59 => numerator_golem95
   use p0_gg_hhg_d59h3l1d_qp, only: reconstruct_d59
   implicit none
   type(tensrec_info_group3), intent(out) :: coeffs
   !------#[ Diagram 19:
      if (tens_rec_by_derivatives) then
         call reconstruct_d19(coeffs)
      else
         call reconstruct4(numerator_d19, coeffs%coeffs_19)
      end if
   !------#] Diagram 19:
   !------#[ Diagram 59:
      if (tens_rec_by_derivatives) then
         call reconstruct_d59(coeffs)
      else
         call reconstruct5(numerator_d59, coeffs%coeffs_59)
      end if
   !------#] Diagram 59:
end subroutine reconstruct_group3
!---#] subroutine reconstruct_group3:
!---#[ subroutine reconstruct_group4:
subroutine     reconstruct_group4(coeffs)
   use golem_tens_rec_qp
   use p0_gg_hhg_config_qp
   use p0_gg_hhg_groups_qp, only: tensrec_info_group4
   use p0_gg_hhg_d4h3l1_qp, only: numerator_d4 => numerator_golem95
   use p0_gg_hhg_d4h3l1d_qp, only: reconstruct_d4
   use p0_gg_hhg_d6h3l1_qp, only: numerator_d6 => numerator_golem95
   use p0_gg_hhg_d6h3l1d_qp, only: reconstruct_d6
   use p0_gg_hhg_d15h3l1_qp, only: numerator_d15 => numerator_golem95
   use p0_gg_hhg_d15h3l1d_qp, only: reconstruct_d15
   use p0_gg_hhg_d21h3l1_qp, only: numerator_d21 => numerator_golem95
   use p0_gg_hhg_d21h3l1d_qp, only: reconstruct_d21
   use p0_gg_hhg_d31h3l1_qp, only: numerator_d31 => numerator_golem95
   use p0_gg_hhg_d31h3l1d_qp, only: reconstruct_d31
   use p0_gg_hhg_d51h3l1_qp, only: numerator_d51 => numerator_golem95
   use p0_gg_hhg_d51h3l1d_qp, only: reconstruct_d51
   implicit none
   type(tensrec_info_group4), intent(out) :: coeffs
   !------#[ Diagram 4:
      if (tens_rec_by_derivatives) then
         call reconstruct_d4(coeffs)
      else
         call reconstruct3(numerator_d4, coeffs%coeffs_4)
      end if
   !------#] Diagram 4:
   !------#[ Diagram 6:
      if (tens_rec_by_derivatives) then
         call reconstruct_d6(coeffs)
      else
         call reconstruct3(numerator_d6, coeffs%coeffs_6)
      end if
   !------#] Diagram 6:
   !------#[ Diagram 15:
      if (tens_rec_by_derivatives) then
         call reconstruct_d15(coeffs)
      else
         call reconstruct4(numerator_d15, coeffs%coeffs_15)
      end if
   !------#] Diagram 15:
   !------#[ Diagram 21:
      if (tens_rec_by_derivatives) then
         call reconstruct_d21(coeffs)
      else
         call reconstruct4(numerator_d21, coeffs%coeffs_21)
      end if
   !------#] Diagram 21:
   !------#[ Diagram 31:
      if (tens_rec_by_derivatives) then
         call reconstruct_d31(coeffs)
      else
         call reconstruct4(numerator_d31, coeffs%coeffs_31)
      end if
   !------#] Diagram 31:
   !------#[ Diagram 51:
      if (tens_rec_by_derivatives) then
         call reconstruct_d51(coeffs)
      else
         call reconstruct5(numerator_d51, coeffs%coeffs_51)
      end if
   !------#] Diagram 51:
end subroutine reconstruct_group4
!---#] subroutine reconstruct_group4:
!---#[ subroutine reconstruct_group5:
subroutine     reconstruct_group5(coeffs)
   use golem_tens_rec_qp
   use p0_gg_hhg_config_qp
   use p0_gg_hhg_groups_qp, only: tensrec_info_group5
   use p0_gg_hhg_d17h3l1_qp, only: numerator_d17 => numerator_golem95
   use p0_gg_hhg_d17h3l1d_qp, only: reconstruct_d17
   use p0_gg_hhg_d47h3l1_qp, only: numerator_d47 => numerator_golem95
   use p0_gg_hhg_d47h3l1d_qp, only: reconstruct_d47
   implicit none
   type(tensrec_info_group5), intent(out) :: coeffs
   !------#[ Diagram 17:
      if (tens_rec_by_derivatives) then
         call reconstruct_d17(coeffs)
      else
         call reconstruct4(numerator_d17, coeffs%coeffs_17)
      end if
   !------#] Diagram 17:
   !------#[ Diagram 47:
      if (tens_rec_by_derivatives) then
         call reconstruct_d47(coeffs)
      else
         call reconstruct5(numerator_d47, coeffs%coeffs_47)
      end if
   !------#] Diagram 47:
end subroutine reconstruct_group5
!---#] subroutine reconstruct_group5:
!---#[ subroutine reconstruct_group6:
subroutine     reconstruct_group6(coeffs)
   use golem_tens_rec_qp
   use p0_gg_hhg_config_qp
   use p0_gg_hhg_groups_qp, only: tensrec_info_group6
   use p0_gg_hhg_d8h3l1_qp, only: numerator_d8 => numerator_golem95
   use p0_gg_hhg_d8h3l1d_qp, only: reconstruct_d8
   use p0_gg_hhg_d23h3l1_qp, only: numerator_d23 => numerator_golem95
   use p0_gg_hhg_d23h3l1d_qp, only: reconstruct_d23
   use p0_gg_hhg_d27h3l1_qp, only: numerator_d27 => numerator_golem95
   use p0_gg_hhg_d27h3l1d_qp, only: reconstruct_d27
   use p0_gg_hhg_d35h3l1_qp, only: numerator_d35 => numerator_golem95
   use p0_gg_hhg_d35h3l1d_qp, only: reconstruct_d35
   use p0_gg_hhg_d61h3l1_qp, only: numerator_d61 => numerator_golem95
   use p0_gg_hhg_d61h3l1d_qp, only: reconstruct_d61
   implicit none
   type(tensrec_info_group6), intent(out) :: coeffs
   !------#[ Diagram 8:
      if (tens_rec_by_derivatives) then
         call reconstruct_d8(coeffs)
      else
         call reconstruct3(numerator_d8, coeffs%coeffs_8)
      end if
   !------#] Diagram 8:
   !------#[ Diagram 23:
      if (tens_rec_by_derivatives) then
         call reconstruct_d23(coeffs)
      else
         call reconstruct4(numerator_d23, coeffs%coeffs_23)
      end if
   !------#] Diagram 23:
   !------#[ Diagram 27:
      if (tens_rec_by_derivatives) then
         call reconstruct_d27(coeffs)
      else
         call reconstruct4(numerator_d27, coeffs%coeffs_27)
      end if
   !------#] Diagram 27:
   !------#[ Diagram 35:
      if (tens_rec_by_derivatives) then
         call reconstruct_d35(coeffs)
      else
         call reconstruct4(numerator_d35, coeffs%coeffs_35)
      end if
   !------#] Diagram 35:
   !------#[ Diagram 61:
      if (tens_rec_by_derivatives) then
         call reconstruct_d61(coeffs)
      else
         call reconstruct5(numerator_d61, coeffs%coeffs_61)
      end if
   !------#] Diagram 61:
end subroutine reconstruct_group6
!---#] subroutine reconstruct_group6:
!---#[ subroutine reconstruct_group7:
subroutine     reconstruct_group7(coeffs)
   use golem_tens_rec_qp
   use p0_gg_hhg_config_qp
   use p0_gg_hhg_groups_qp, only: tensrec_info_group7
   use p0_gg_hhg_d57h3l1_qp, only: numerator_d57 => numerator_golem95
   use p0_gg_hhg_d57h3l1d_qp, only: reconstruct_d57
   implicit none
   type(tensrec_info_group7), intent(out) :: coeffs
   !------#[ Diagram 57:
      if (tens_rec_by_derivatives) then
         call reconstruct_d57(coeffs)
      else
         call reconstruct5(numerator_d57, coeffs%coeffs_57)
      end if
   !------#] Diagram 57:
end subroutine reconstruct_group7
!---#] subroutine reconstruct_group7:
!---#[ subroutine reconstruct_group8:
subroutine     reconstruct_group8(coeffs)
   use golem_tens_rec_qp
   use p0_gg_hhg_config_qp
   use p0_gg_hhg_groups_qp, only: tensrec_info_group8
   use p0_gg_hhg_d53h3l1_qp, only: numerator_d53 => numerator_golem95
   use p0_gg_hhg_d53h3l1d_qp, only: reconstruct_d53
   implicit none
   type(tensrec_info_group8), intent(out) :: coeffs
   !------#[ Diagram 53:
      if (tens_rec_by_derivatives) then
         call reconstruct_d53(coeffs)
      else
         call reconstruct5(numerator_d53, coeffs%coeffs_53)
      end if
   !------#] Diagram 53:
end subroutine reconstruct_group8
!---#] subroutine reconstruct_group8:
!---#[ subroutine reconstruct_group9:
subroutine     reconstruct_group9(coeffs)
   use golem_tens_rec_qp
   use p0_gg_hhg_config_qp
   use p0_gg_hhg_groups_qp, only: tensrec_info_group9
   use p0_gg_hhg_d43h3l1_qp, only: numerator_d43 => numerator_golem95
   use p0_gg_hhg_d43h3l1d_qp, only: reconstruct_d43
   implicit none
   type(tensrec_info_group9), intent(out) :: coeffs
   !------#[ Diagram 43:
      if (tens_rec_by_derivatives) then
         call reconstruct_d43(coeffs)
      else
         call reconstruct5(numerator_d43, coeffs%coeffs_43)
      end if
   !------#] Diagram 43:
end subroutine reconstruct_group9
!---#] subroutine reconstruct_group9:
!---#[ subroutine reconstruct_group10:
subroutine     reconstruct_group10(coeffs)
   use golem_tens_rec_qp
   use p0_gg_hhg_config_qp
   use p0_gg_hhg_groups_qp, only: tensrec_info_group10
   use p0_gg_hhg_d13h3l1_qp, only: numerator_d13 => numerator_golem95
   use p0_gg_hhg_d13h3l1d_qp, only: reconstruct_d13
   use p0_gg_hhg_d29h3l1_qp, only: numerator_d29 => numerator_golem95
   use p0_gg_hhg_d29h3l1d_qp, only: reconstruct_d29
   use p0_gg_hhg_d33h3l1_qp, only: numerator_d33 => numerator_golem95
   use p0_gg_hhg_d33h3l1d_qp, only: reconstruct_d33
   use p0_gg_hhg_d49h3l1_qp, only: numerator_d49 => numerator_golem95
   use p0_gg_hhg_d49h3l1d_qp, only: reconstruct_d49
   implicit none
   type(tensrec_info_group10), intent(out) :: coeffs
   !------#[ Diagram 13:
      if (tens_rec_by_derivatives) then
         call reconstruct_d13(coeffs)
      else
         call reconstruct4(numerator_d13, coeffs%coeffs_13)
      end if
   !------#] Diagram 13:
   !------#[ Diagram 29:
      if (tens_rec_by_derivatives) then
         call reconstruct_d29(coeffs)
      else
         call reconstruct4(numerator_d29, coeffs%coeffs_29)
      end if
   !------#] Diagram 29:
   !------#[ Diagram 33:
      if (tens_rec_by_derivatives) then
         call reconstruct_d33(coeffs)
      else
         call reconstruct4(numerator_d33, coeffs%coeffs_33)
      end if
   !------#] Diagram 33:
   !------#[ Diagram 49:
      if (tens_rec_by_derivatives) then
         call reconstruct_d49(coeffs)
      else
         call reconstruct5(numerator_d49, coeffs%coeffs_49)
      end if
   !------#] Diagram 49:
end subroutine reconstruct_group10
!---#] subroutine reconstruct_group10:
!---#[ subroutine reconstruct_group11:
subroutine     reconstruct_group11(coeffs)
   use golem_tens_rec_qp
   use p0_gg_hhg_config_qp
   use p0_gg_hhg_groups_qp, only: tensrec_info_group11
   use p0_gg_hhg_d45h3l1_qp, only: numerator_d45 => numerator_golem95
   use p0_gg_hhg_d45h3l1d_qp, only: reconstruct_d45
   implicit none
   type(tensrec_info_group11), intent(out) :: coeffs
   !------#[ Diagram 45:
      if (tens_rec_by_derivatives) then
         call reconstruct_d45(coeffs)
      else
         call reconstruct5(numerator_d45, coeffs%coeffs_45)
      end if
   !------#] Diagram 45:
end subroutine reconstruct_group11
!---#] subroutine reconstruct_group11:
end module p0_gg_hhg_golem95h3_qp
