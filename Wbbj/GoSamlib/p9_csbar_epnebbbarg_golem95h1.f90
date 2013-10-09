module     p9_csbar_epnebbbarg_golem95h1
   use precision_golem, only: ki_gol => ki
   use p9_csbar_epnebbbarg_config, only: ki
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
      module procedure reconstruct_group12
      module procedure reconstruct_group13
      module procedure reconstruct_group14
      module procedure reconstruct_group15
      module procedure reconstruct_group16
      module procedure reconstruct_group17
      module procedure reconstruct_group18
      module procedure reconstruct_group19
      module procedure reconstruct_group20
   end interface

   public :: reconstruct_group
contains
!---#[ subroutine reconstruct_group0:
subroutine     reconstruct_group0(coeffs)
   use tens_rec
   use p9_csbar_epnebbbarg_config
   use p9_csbar_epnebbbarg_groups, only: tensrec_info_group0
   use p9_csbar_epnebbbarg_d322h1l1, only: numerator_d322 => numerator_golem95
   use p9_csbar_epnebbbarg_d322h1l1d, only: reconstruct_d322
   implicit none
   type(tensrec_info_group0), intent(out) :: coeffs
   !------#[ Diagram 322:
      if (tens_rec_by_derivatives) then
         call reconstruct_d322(coeffs)
      else
         call reconstruct3(numerator_d322, coeffs%coeffs_322)
      end if
   !------#] Diagram 322:
end subroutine reconstruct_group0
!---#] subroutine reconstruct_group0:
!---#[ subroutine reconstruct_group1:
subroutine     reconstruct_group1(coeffs)
   use tens_rec
   use p9_csbar_epnebbbarg_config
   use p9_csbar_epnebbbarg_groups, only: tensrec_info_group1
   use p9_csbar_epnebbbarg_d176h1l1, only: numerator_d176 => numerator_golem95
   use p9_csbar_epnebbbarg_d176h1l1d, only: reconstruct_d176
   use p9_csbar_epnebbbarg_d318h1l1, only: numerator_d318 => numerator_golem95
   use p9_csbar_epnebbbarg_d318h1l1d, only: reconstruct_d318
   implicit none
   type(tensrec_info_group1), intent(out) :: coeffs
   !------#[ Diagram 176:
      if (tens_rec_by_derivatives) then
         call reconstruct_d176(coeffs)
      else
         call reconstruct2(numerator_d176, coeffs%coeffs_176)
      end if
   !------#] Diagram 176:
   !------#[ Diagram 318:
      if (tens_rec_by_derivatives) then
         call reconstruct_d318(coeffs)
      else
         call reconstruct3(numerator_d318, coeffs%coeffs_318)
      end if
   !------#] Diagram 318:
end subroutine reconstruct_group1
!---#] subroutine reconstruct_group1:
!---#[ subroutine reconstruct_group2:
subroutine     reconstruct_group2(coeffs)
   use tens_rec
   use p9_csbar_epnebbbarg_config
   use p9_csbar_epnebbbarg_groups, only: tensrec_info_group2
   use p9_csbar_epnebbbarg_d28h1l1, only: numerator_d28 => numerator_golem95
   use p9_csbar_epnebbbarg_d28h1l1d, only: reconstruct_d28
   use p9_csbar_epnebbbarg_d87h1l1, only: numerator_d87 => numerator_golem95
   use p9_csbar_epnebbbarg_d87h1l1d, only: reconstruct_d87
   use p9_csbar_epnebbbarg_d153h1l1, only: numerator_d153 => numerator_golem95
   use p9_csbar_epnebbbarg_d153h1l1d, only: reconstruct_d153
   use p9_csbar_epnebbbarg_d180h1l1, only: numerator_d180 => numerator_golem95
   use p9_csbar_epnebbbarg_d180h1l1d, only: reconstruct_d180
   use p9_csbar_epnebbbarg_d244h1l1, only: numerator_d244 => numerator_golem95
   use p9_csbar_epnebbbarg_d244h1l1d, only: reconstruct_d244
   use p9_csbar_epnebbbarg_d320h1l1, only: numerator_d320 => numerator_golem95
   use p9_csbar_epnebbbarg_d320h1l1d, only: reconstruct_d320
   implicit none
   type(tensrec_info_group2), intent(out) :: coeffs
   !------#[ Diagram 28:
      if (tens_rec_by_derivatives) then
         call reconstruct_d28(coeffs)
      else
         call reconstruct2(numerator_d28, coeffs%coeffs_28)
      end if
   !------#] Diagram 28:
   !------#[ Diagram 87:
      if (tens_rec_by_derivatives) then
         call reconstruct_d87(coeffs)
      else
         call reconstruct2(numerator_d87, coeffs%coeffs_87)
      end if
   !------#] Diagram 87:
   !------#[ Diagram 153:
      if (tens_rec_by_derivatives) then
         call reconstruct_d153(coeffs)
      else
         call reconstruct3(numerator_d153, coeffs%coeffs_153)
      end if
   !------#] Diagram 153:
   !------#[ Diagram 180:
      if (tens_rec_by_derivatives) then
         call reconstruct_d180(coeffs)
      else
         call reconstruct2(numerator_d180, coeffs%coeffs_180)
      end if
   !------#] Diagram 180:
   !------#[ Diagram 244:
      if (tens_rec_by_derivatives) then
         call reconstruct_d244(coeffs)
      else
         call reconstruct2(numerator_d244, coeffs%coeffs_244)
      end if
   !------#] Diagram 244:
   !------#[ Diagram 320:
      if (tens_rec_by_derivatives) then
         call reconstruct_d320(coeffs)
      else
         call reconstruct3(numerator_d320, coeffs%coeffs_320)
      end if
   !------#] Diagram 320:
end subroutine reconstruct_group2
!---#] subroutine reconstruct_group2:
!---#[ subroutine reconstruct_group3:
subroutine     reconstruct_group3(coeffs)
   use tens_rec
   use p9_csbar_epnebbbarg_config
   use p9_csbar_epnebbbarg_groups, only: tensrec_info_group3
   use p9_csbar_epnebbbarg_d13h1l1, only: numerator_d13 => numerator_golem95
   use p9_csbar_epnebbbarg_d13h1l1d, only: reconstruct_d13
   use p9_csbar_epnebbbarg_d84h1l1, only: numerator_d84 => numerator_golem95
   use p9_csbar_epnebbbarg_d84h1l1d, only: reconstruct_d84
   implicit none
   type(tensrec_info_group3), intent(out) :: coeffs
   !------#[ Diagram 13:
      if (tens_rec_by_derivatives) then
         call reconstruct_d13(coeffs)
      else
         call reconstruct3(numerator_d13, coeffs%coeffs_13)
      end if
   !------#] Diagram 13:
   !------#[ Diagram 84:
      if (tens_rec_by_derivatives) then
         call reconstruct_d84(coeffs)
      else
         call reconstruct4(numerator_d84, coeffs%coeffs_84)
      end if
   !------#] Diagram 84:
end subroutine reconstruct_group3
!---#] subroutine reconstruct_group3:
!---#[ subroutine reconstruct_group4:
subroutine     reconstruct_group4(coeffs)
   use tens_rec
   use p9_csbar_epnebbbarg_config
   use p9_csbar_epnebbbarg_groups, only: tensrec_info_group4
   use p9_csbar_epnebbbarg_d12h1l1, only: numerator_d12 => numerator_golem95
   use p9_csbar_epnebbbarg_d12h1l1d, only: reconstruct_d12
   use p9_csbar_epnebbbarg_d85h1l1, only: numerator_d85 => numerator_golem95
   use p9_csbar_epnebbbarg_d85h1l1d, only: reconstruct_d85
   implicit none
   type(tensrec_info_group4), intent(out) :: coeffs
   !------#[ Diagram 12:
      if (tens_rec_by_derivatives) then
         call reconstruct_d12(coeffs)
      else
         call reconstruct3(numerator_d12, coeffs%coeffs_12)
      end if
   !------#] Diagram 12:
   !------#[ Diagram 85:
      if (tens_rec_by_derivatives) then
         call reconstruct_d85(coeffs)
      else
         call reconstruct4(numerator_d85, coeffs%coeffs_85)
      end if
   !------#] Diagram 85:
end subroutine reconstruct_group4
!---#] subroutine reconstruct_group4:
!---#[ subroutine reconstruct_group5:
subroutine     reconstruct_group5(coeffs)
   use tens_rec
   use p9_csbar_epnebbbarg_config
   use p9_csbar_epnebbbarg_groups, only: tensrec_info_group5
   use p9_csbar_epnebbbarg_d15h1l1, only: numerator_d15 => numerator_golem95
   use p9_csbar_epnebbbarg_d15h1l1d, only: reconstruct_d15
   use p9_csbar_epnebbbarg_d83h1l1, only: numerator_d83 => numerator_golem95
   use p9_csbar_epnebbbarg_d83h1l1d, only: reconstruct_d83
   implicit none
   type(tensrec_info_group5), intent(out) :: coeffs
   !------#[ Diagram 15:
      if (tens_rec_by_derivatives) then
         call reconstruct_d15(coeffs)
      else
         call reconstruct3(numerator_d15, coeffs%coeffs_15)
      end if
   !------#] Diagram 15:
   !------#[ Diagram 83:
      if (tens_rec_by_derivatives) then
         call reconstruct_d83(coeffs)
      else
         call reconstruct4(numerator_d83, coeffs%coeffs_83)
      end if
   !------#] Diagram 83:
end subroutine reconstruct_group5
!---#] subroutine reconstruct_group5:
!---#[ subroutine reconstruct_group6:
subroutine     reconstruct_group6(coeffs)
   use tens_rec
   use p9_csbar_epnebbbarg_config
   use p9_csbar_epnebbbarg_groups, only: tensrec_info_group6
   use p9_csbar_epnebbbarg_d14h1l1, only: numerator_d14 => numerator_golem95
   use p9_csbar_epnebbbarg_d14h1l1d, only: reconstruct_d14
   use p9_csbar_epnebbbarg_d82h1l1, only: numerator_d82 => numerator_golem95
   use p9_csbar_epnebbbarg_d82h1l1d, only: reconstruct_d82
   implicit none
   type(tensrec_info_group6), intent(out) :: coeffs
   !------#[ Diagram 14:
      if (tens_rec_by_derivatives) then
         call reconstruct_d14(coeffs)
      else
         call reconstruct3(numerator_d14, coeffs%coeffs_14)
      end if
   !------#] Diagram 14:
   !------#[ Diagram 82:
      if (tens_rec_by_derivatives) then
         call reconstruct_d82(coeffs)
      else
         call reconstruct4(numerator_d82, coeffs%coeffs_82)
      end if
   !------#] Diagram 82:
end subroutine reconstruct_group6
!---#] subroutine reconstruct_group6:
!---#[ subroutine reconstruct_group7:
subroutine     reconstruct_group7(coeffs)
   use tens_rec
   use p9_csbar_epnebbbarg_config
   use p9_csbar_epnebbbarg_groups, only: tensrec_info_group7
   use p9_csbar_epnebbbarg_d68h1l1, only: numerator_d68 => numerator_golem95
   use p9_csbar_epnebbbarg_d68h1l1d, only: reconstruct_d68
   implicit none
   type(tensrec_info_group7), intent(out) :: coeffs
   !------#[ Diagram 68:
      if (tens_rec_by_derivatives) then
         call reconstruct_d68(coeffs)
      else
         call reconstruct4(numerator_d68, coeffs%coeffs_68)
      end if
   !------#] Diagram 68:
end subroutine reconstruct_group7
!---#] subroutine reconstruct_group7:
!---#[ subroutine reconstruct_group8:
subroutine     reconstruct_group8(coeffs)
   use tens_rec
   use p9_csbar_epnebbbarg_config
   use p9_csbar_epnebbbarg_groups, only: tensrec_info_group8
   use p9_csbar_epnebbbarg_d80h1l1, only: numerator_d80 => numerator_golem95
   use p9_csbar_epnebbbarg_d80h1l1d, only: reconstruct_d80
   use p9_csbar_epnebbbarg_d128h1l1, only: numerator_d128 => numerator_golem95
   use p9_csbar_epnebbbarg_d128h1l1d, only: reconstruct_d128
   implicit none
   type(tensrec_info_group8), intent(out) :: coeffs
   !------#[ Diagram 80:
      if (tens_rec_by_derivatives) then
         call reconstruct_d80(coeffs)
      else
         call reconstruct4(numerator_d80, coeffs%coeffs_80)
      end if
   !------#] Diagram 80:
   !------#[ Diagram 128:
      if (tens_rec_by_derivatives) then
         call reconstruct_d128(coeffs)
      else
         call reconstruct3(numerator_d128, coeffs%coeffs_128)
      end if
   !------#] Diagram 128:
end subroutine reconstruct_group8
!---#] subroutine reconstruct_group8:
!---#[ subroutine reconstruct_group9:
subroutine     reconstruct_group9(coeffs)
   use tens_rec
   use p9_csbar_epnebbbarg_config
   use p9_csbar_epnebbbarg_groups, only: tensrec_info_group9
   use p9_csbar_epnebbbarg_d66h1l1, only: numerator_d66 => numerator_golem95
   use p9_csbar_epnebbbarg_d66h1l1d, only: reconstruct_d66
   use p9_csbar_epnebbbarg_d127h1l1, only: numerator_d127 => numerator_golem95
   use p9_csbar_epnebbbarg_d127h1l1d, only: reconstruct_d127
   implicit none
   type(tensrec_info_group9), intent(out) :: coeffs
   !------#[ Diagram 66:
      if (tens_rec_by_derivatives) then
         call reconstruct_d66(coeffs)
      else
         call reconstruct4(numerator_d66, coeffs%coeffs_66)
      end if
   !------#] Diagram 66:
   !------#[ Diagram 127:
      if (tens_rec_by_derivatives) then
         call reconstruct_d127(coeffs)
      else
         call reconstruct3(numerator_d127, coeffs%coeffs_127)
      end if
   !------#] Diagram 127:
end subroutine reconstruct_group9
!---#] subroutine reconstruct_group9:
!---#[ subroutine reconstruct_group10:
subroutine     reconstruct_group10(coeffs)
   use tens_rec
   use p9_csbar_epnebbbarg_config
   use p9_csbar_epnebbbarg_groups, only: tensrec_info_group10
   use p9_csbar_epnebbbarg_d81h1l1, only: numerator_d81 => numerator_golem95
   use p9_csbar_epnebbbarg_d81h1l1d, only: reconstruct_d81
   implicit none
   type(tensrec_info_group10), intent(out) :: coeffs
   !------#[ Diagram 81:
      if (tens_rec_by_derivatives) then
         call reconstruct_d81(coeffs)
      else
         call reconstruct4(numerator_d81, coeffs%coeffs_81)
      end if
   !------#] Diagram 81:
end subroutine reconstruct_group10
!---#] subroutine reconstruct_group10:
!---#[ subroutine reconstruct_group11:
subroutine     reconstruct_group11(coeffs)
   use tens_rec
   use p9_csbar_epnebbbarg_config
   use p9_csbar_epnebbbarg_groups, only: tensrec_info_group11
   use p9_csbar_epnebbbarg_d79h1l1, only: numerator_d79 => numerator_golem95
   use p9_csbar_epnebbbarg_d79h1l1d, only: reconstruct_d79
   use p9_csbar_epnebbbarg_d109h1l1, only: numerator_d109 => numerator_golem95
   use p9_csbar_epnebbbarg_d109h1l1d, only: reconstruct_d109
   use p9_csbar_epnebbbarg_d292h1l1, only: numerator_d292 => numerator_golem95
   use p9_csbar_epnebbbarg_d292h1l1d, only: reconstruct_d292
   use p9_csbar_epnebbbarg_d301h1l1, only: numerator_d301 => numerator_golem95
   use p9_csbar_epnebbbarg_d301h1l1d, only: reconstruct_d301
   implicit none
   type(tensrec_info_group11), intent(out) :: coeffs
   !------#[ Diagram 79:
      if (tens_rec_by_derivatives) then
         call reconstruct_d79(coeffs)
      else
         call reconstruct3(numerator_d79, coeffs%coeffs_79)
      end if
   !------#] Diagram 79:
   !------#[ Diagram 109:
      if (tens_rec_by_derivatives) then
         call reconstruct_d109(coeffs)
      else
         call reconstruct2(numerator_d109, coeffs%coeffs_109)
      end if
   !------#] Diagram 109:
   !------#[ Diagram 292:
      if (tens_rec_by_derivatives) then
         call reconstruct_d292(coeffs)
      else
         call reconstruct4(numerator_d292, coeffs%coeffs_292)
      end if
   !------#] Diagram 292:
   !------#[ Diagram 301:
      if (tens_rec_by_derivatives) then
         call reconstruct_d301(coeffs)
      else
         call reconstruct3(numerator_d301, coeffs%coeffs_301)
      end if
   !------#] Diagram 301:
end subroutine reconstruct_group11
!---#] subroutine reconstruct_group11:
!---#[ subroutine reconstruct_group12:
subroutine     reconstruct_group12(coeffs)
   use tens_rec
   use p9_csbar_epnebbbarg_config
   use p9_csbar_epnebbbarg_groups, only: tensrec_info_group12
   use p9_csbar_epnebbbarg_d298h1l1, only: numerator_d298 => numerator_golem95
   use p9_csbar_epnebbbarg_d298h1l1d, only: reconstruct_d298
   use p9_csbar_epnebbbarg_d303h1l1, only: numerator_d303 => numerator_golem95
   use p9_csbar_epnebbbarg_d303h1l1d, only: reconstruct_d303
   use p9_csbar_epnebbbarg_d316h1l1, only: numerator_d316 => numerator_golem95
   use p9_csbar_epnebbbarg_d316h1l1d, only: reconstruct_d316
   implicit none
   type(tensrec_info_group12), intent(out) :: coeffs
   !------#[ Diagram 298:
      if (tens_rec_by_derivatives) then
         call reconstruct_d298(coeffs)
      else
         call reconstruct4(numerator_d298, coeffs%coeffs_298)
      end if
   !------#] Diagram 298:
   !------#[ Diagram 303:
      if (tens_rec_by_derivatives) then
         call reconstruct_d303(coeffs)
      else
         call reconstruct3(numerator_d303, coeffs%coeffs_303)
      end if
   !------#] Diagram 303:
   !------#[ Diagram 316:
      if (tens_rec_by_derivatives) then
         call reconstruct_d316(coeffs)
      else
         call reconstruct3(numerator_d316, coeffs%coeffs_316)
      end if
   !------#] Diagram 316:
end subroutine reconstruct_group12
!---#] subroutine reconstruct_group12:
!---#[ subroutine reconstruct_group13:
subroutine     reconstruct_group13(coeffs)
   use tens_rec
   use p9_csbar_epnebbbarg_config
   use p9_csbar_epnebbbarg_groups, only: tensrec_info_group13
   use p9_csbar_epnebbbarg_d16h1l1, only: numerator_d16 => numerator_golem95
   use p9_csbar_epnebbbarg_d16h1l1d, only: reconstruct_d16
   use p9_csbar_epnebbbarg_d38h1l1, only: numerator_d38 => numerator_golem95
   use p9_csbar_epnebbbarg_d38h1l1d, only: reconstruct_d38
   use p9_csbar_epnebbbarg_d42h1l1, only: numerator_d42 => numerator_golem95
   use p9_csbar_epnebbbarg_d42h1l1d, only: reconstruct_d42
   use p9_csbar_epnebbbarg_d58h1l1, only: numerator_d58 => numerator_golem95
   use p9_csbar_epnebbbarg_d58h1l1d, only: reconstruct_d58
   use p9_csbar_epnebbbarg_d70h1l1, only: numerator_d70 => numerator_golem95
   use p9_csbar_epnebbbarg_d70h1l1d, only: reconstruct_d70
   use p9_csbar_epnebbbarg_d76h1l1, only: numerator_d76 => numerator_golem95
   use p9_csbar_epnebbbarg_d76h1l1d, only: reconstruct_d76
   use p9_csbar_epnebbbarg_d90h1l1, only: numerator_d90 => numerator_golem95
   use p9_csbar_epnebbbarg_d90h1l1d, only: reconstruct_d90
   use p9_csbar_epnebbbarg_d93h1l1, only: numerator_d93 => numerator_golem95
   use p9_csbar_epnebbbarg_d93h1l1d, only: reconstruct_d93
   use p9_csbar_epnebbbarg_d102h1l1, only: numerator_d102 => numerator_golem95
   use p9_csbar_epnebbbarg_d102h1l1d, only: reconstruct_d102
   use p9_csbar_epnebbbarg_d108h1l1, only: numerator_d108 => numerator_golem95
   use p9_csbar_epnebbbarg_d108h1l1d, only: reconstruct_d108
   use p9_csbar_epnebbbarg_d115h1l1, only: numerator_d115 => numerator_golem95
   use p9_csbar_epnebbbarg_d115h1l1d, only: reconstruct_d115
   use p9_csbar_epnebbbarg_d126h1l1, only: numerator_d126 => numerator_golem95
   use p9_csbar_epnebbbarg_d126h1l1d, only: reconstruct_d126
   use p9_csbar_epnebbbarg_d139h1l1, only: numerator_d139 => numerator_golem95
   use p9_csbar_epnebbbarg_d139h1l1d, only: reconstruct_d139
   use p9_csbar_epnebbbarg_d227h1l1, only: numerator_d227 => numerator_golem95
   use p9_csbar_epnebbbarg_d227h1l1d, only: reconstruct_d227
   use p9_csbar_epnebbbarg_d295h1l1, only: numerator_d295 => numerator_golem95
   use p9_csbar_epnebbbarg_d295h1l1d, only: reconstruct_d295
   use p9_csbar_epnebbbarg_d310h1l1, only: numerator_d310 => numerator_golem95
   use p9_csbar_epnebbbarg_d310h1l1d, only: reconstruct_d310
   implicit none
   type(tensrec_info_group13), intent(out) :: coeffs
   !------#[ Diagram 16:
      if (tens_rec_by_derivatives) then
         call reconstruct_d16(coeffs)
      else
         call reconstruct3(numerator_d16, coeffs%coeffs_16)
      end if
   !------#] Diagram 16:
   !------#[ Diagram 38:
      if (tens_rec_by_derivatives) then
         call reconstruct_d38(coeffs)
      else
         call reconstruct2(numerator_d38, coeffs%coeffs_38)
      end if
   !------#] Diagram 38:
   !------#[ Diagram 42:
      if (tens_rec_by_derivatives) then
         call reconstruct_d42(coeffs)
      else
         call reconstruct2(numerator_d42, coeffs%coeffs_42)
      end if
   !------#] Diagram 42:
   !------#[ Diagram 58:
      if (tens_rec_by_derivatives) then
         call reconstruct_d58(coeffs)
      else
         call reconstruct1(numerator_d58, coeffs%coeffs_58)
      end if
   !------#] Diagram 58:
   !------#[ Diagram 70:
      if (tens_rec_by_derivatives) then
         call reconstruct_d70(coeffs)
      else
         call reconstruct4(numerator_d70, coeffs%coeffs_70)
      end if
   !------#] Diagram 70:
   !------#[ Diagram 76:
      if (tens_rec_by_derivatives) then
         call reconstruct_d76(coeffs)
      else
         call reconstruct3(numerator_d76, coeffs%coeffs_76)
      end if
   !------#] Diagram 76:
   !------#[ Diagram 90:
      if (tens_rec_by_derivatives) then
         call reconstruct_d90(coeffs)
      else
         call reconstruct2(numerator_d90, coeffs%coeffs_90)
      end if
   !------#] Diagram 90:
   !------#[ Diagram 93:
      if (tens_rec_by_derivatives) then
         call reconstruct_d93(coeffs)
      else
         call reconstruct2(numerator_d93, coeffs%coeffs_93)
      end if
   !------#] Diagram 93:
   !------#[ Diagram 102:
      if (tens_rec_by_derivatives) then
         call reconstruct_d102(coeffs)
      else
         call reconstruct3(numerator_d102, coeffs%coeffs_102)
      end if
   !------#] Diagram 102:
   !------#[ Diagram 108:
      if (tens_rec_by_derivatives) then
         call reconstruct_d108(coeffs)
      else
         call reconstruct2(numerator_d108, coeffs%coeffs_108)
      end if
   !------#] Diagram 108:
   !------#[ Diagram 115:
      if (tens_rec_by_derivatives) then
         call reconstruct_d115(coeffs)
      else
         call reconstruct3(numerator_d115, coeffs%coeffs_115)
      end if
   !------#] Diagram 115:
   !------#[ Diagram 126:
      if (tens_rec_by_derivatives) then
         call reconstruct_d126(coeffs)
      else
         call reconstruct3(numerator_d126, coeffs%coeffs_126)
      end if
   !------#] Diagram 126:
   !------#[ Diagram 139:
      if (tens_rec_by_derivatives) then
         call reconstruct_d139(coeffs)
      else
         call reconstruct2(numerator_d139, coeffs%coeffs_139)
      end if
   !------#] Diagram 139:
   !------#[ Diagram 227:
      if (tens_rec_by_derivatives) then
         call reconstruct_d227(coeffs)
      else
         call reconstruct2(numerator_d227, coeffs%coeffs_227)
      end if
   !------#] Diagram 227:
   !------#[ Diagram 295:
      if (tens_rec_by_derivatives) then
         call reconstruct_d295(coeffs)
      else
         call reconstruct4(numerator_d295, coeffs%coeffs_295)
      end if
   !------#] Diagram 295:
   !------#[ Diagram 310:
      if (tens_rec_by_derivatives) then
         call reconstruct_d310(coeffs)
      else
         call reconstruct3(numerator_d310, coeffs%coeffs_310)
      end if
   !------#] Diagram 310:
end subroutine reconstruct_group13
!---#] subroutine reconstruct_group13:
!---#[ subroutine reconstruct_group14:
subroutine     reconstruct_group14(coeffs)
   use tens_rec
   use p9_csbar_epnebbbarg_config
   use p9_csbar_epnebbbarg_groups, only: tensrec_info_group14
   use p9_csbar_epnebbbarg_d72h1l1, only: numerator_d72 => numerator_golem95
   use p9_csbar_epnebbbarg_d72h1l1d, only: reconstruct_d72
   use p9_csbar_epnebbbarg_d75h1l1, only: numerator_d75 => numerator_golem95
   use p9_csbar_epnebbbarg_d75h1l1d, only: reconstruct_d75
   use p9_csbar_epnebbbarg_d98h1l1, only: numerator_d98 => numerator_golem95
   use p9_csbar_epnebbbarg_d98h1l1d, only: reconstruct_d98
   use p9_csbar_epnebbbarg_d101h1l1, only: numerator_d101 => numerator_golem95
   use p9_csbar_epnebbbarg_d101h1l1d, only: reconstruct_d101
   use p9_csbar_epnebbbarg_d120h1l1, only: numerator_d120 => numerator_golem95
   use p9_csbar_epnebbbarg_d120h1l1d, only: reconstruct_d120
   use p9_csbar_epnebbbarg_d121h1l1, only: numerator_d121 => numerator_golem95
   use p9_csbar_epnebbbarg_d121h1l1d, only: reconstruct_d121
   use p9_csbar_epnebbbarg_d300h1l1, only: numerator_d300 => numerator_golem95
   use p9_csbar_epnebbbarg_d300h1l1d, only: reconstruct_d300
   use p9_csbar_epnebbbarg_d305h1l1, only: numerator_d305 => numerator_golem95
   use p9_csbar_epnebbbarg_d305h1l1d, only: reconstruct_d305
   use p9_csbar_epnebbbarg_d315h1l1, only: numerator_d315 => numerator_golem95
   use p9_csbar_epnebbbarg_d315h1l1d, only: reconstruct_d315
   implicit none
   type(tensrec_info_group14), intent(out) :: coeffs
   !------#[ Diagram 72:
      if (tens_rec_by_derivatives) then
         call reconstruct_d72(coeffs)
      else
         call reconstruct3(numerator_d72, coeffs%coeffs_72)
      end if
   !------#] Diagram 72:
   !------#[ Diagram 75:
      if (tens_rec_by_derivatives) then
         call reconstruct_d75(coeffs)
      else
         call reconstruct3(numerator_d75, coeffs%coeffs_75)
      end if
   !------#] Diagram 75:
   !------#[ Diagram 98:
      if (tens_rec_by_derivatives) then
         call reconstruct_d98(coeffs)
      else
         call reconstruct2(numerator_d98, coeffs%coeffs_98)
      end if
   !------#] Diagram 98:
   !------#[ Diagram 101:
      if (tens_rec_by_derivatives) then
         call reconstruct_d101(coeffs)
      else
         call reconstruct2(numerator_d101, coeffs%coeffs_101)
      end if
   !------#] Diagram 101:
   !------#[ Diagram 120:
      if (tens_rec_by_derivatives) then
         call reconstruct_d120(coeffs)
      else
         call reconstruct2(numerator_d120, coeffs%coeffs_120)
      end if
   !------#] Diagram 120:
   !------#[ Diagram 121:
      if (tens_rec_by_derivatives) then
         call reconstruct_d121(coeffs)
      else
         call reconstruct2(numerator_d121, coeffs%coeffs_121)
      end if
   !------#] Diagram 121:
   !------#[ Diagram 300:
      if (tens_rec_by_derivatives) then
         call reconstruct_d300(coeffs)
      else
         call reconstruct4(numerator_d300, coeffs%coeffs_300)
      end if
   !------#] Diagram 300:
   !------#[ Diagram 305:
      if (tens_rec_by_derivatives) then
         call reconstruct_d305(coeffs)
      else
         call reconstruct3(numerator_d305, coeffs%coeffs_305)
      end if
   !------#] Diagram 305:
   !------#[ Diagram 315:
      if (tens_rec_by_derivatives) then
         call reconstruct_d315(coeffs)
      else
         call reconstruct3(numerator_d315, coeffs%coeffs_315)
      end if
   !------#] Diagram 315:
end subroutine reconstruct_group14
!---#] subroutine reconstruct_group14:
!---#[ subroutine reconstruct_group15:
subroutine     reconstruct_group15(coeffs)
   use tens_rec
   use p9_csbar_epnebbbarg_config
   use p9_csbar_epnebbbarg_groups, only: tensrec_info_group15
   use p9_csbar_epnebbbarg_d6h1l1, only: numerator_d6 => numerator_golem95
   use p9_csbar_epnebbbarg_d6h1l1d, only: reconstruct_d6
   use p9_csbar_epnebbbarg_d8h1l1, only: numerator_d8 => numerator_golem95
   use p9_csbar_epnebbbarg_d8h1l1d, only: reconstruct_d8
   use p9_csbar_epnebbbarg_d10h1l1, only: numerator_d10 => numerator_golem95
   use p9_csbar_epnebbbarg_d10h1l1d, only: reconstruct_d10
   use p9_csbar_epnebbbarg_d17h1l1, only: numerator_d17 => numerator_golem95
   use p9_csbar_epnebbbarg_d17h1l1d, only: reconstruct_d17
   use p9_csbar_epnebbbarg_d18h1l1, only: numerator_d18 => numerator_golem95
   use p9_csbar_epnebbbarg_d18h1l1d, only: reconstruct_d18
   use p9_csbar_epnebbbarg_d21h1l1, only: numerator_d21 => numerator_golem95
   use p9_csbar_epnebbbarg_d21h1l1d, only: reconstruct_d21
   use p9_csbar_epnebbbarg_d24h1l1, only: numerator_d24 => numerator_golem95
   use p9_csbar_epnebbbarg_d24h1l1d, only: reconstruct_d24
   use p9_csbar_epnebbbarg_d40h1l1, only: numerator_d40 => numerator_golem95
   use p9_csbar_epnebbbarg_d40h1l1d, only: reconstruct_d40
   use p9_csbar_epnebbbarg_d43h1l1, only: numerator_d43 => numerator_golem95
   use p9_csbar_epnebbbarg_d43h1l1d, only: reconstruct_d43
   use p9_csbar_epnebbbarg_d59h1l1, only: numerator_d59 => numerator_golem95
   use p9_csbar_epnebbbarg_d59h1l1d, only: reconstruct_d59
   use p9_csbar_epnebbbarg_d64h1l1, only: numerator_d64 => numerator_golem95
   use p9_csbar_epnebbbarg_d64h1l1d, only: reconstruct_d64
   use p9_csbar_epnebbbarg_d65h1l1, only: numerator_d65 => numerator_golem95
   use p9_csbar_epnebbbarg_d65h1l1d, only: reconstruct_d65
   use p9_csbar_epnebbbarg_d71h1l1, only: numerator_d71 => numerator_golem95
   use p9_csbar_epnebbbarg_d71h1l1d, only: reconstruct_d71
   use p9_csbar_epnebbbarg_d78h1l1, only: numerator_d78 => numerator_golem95
   use p9_csbar_epnebbbarg_d78h1l1d, only: reconstruct_d78
   use p9_csbar_epnebbbarg_d86h1l1, only: numerator_d86 => numerator_golem95
   use p9_csbar_epnebbbarg_d86h1l1d, only: reconstruct_d86
   use p9_csbar_epnebbbarg_d91h1l1, only: numerator_d91 => numerator_golem95
   use p9_csbar_epnebbbarg_d91h1l1d, only: reconstruct_d91
   use p9_csbar_epnebbbarg_d92h1l1, only: numerator_d92 => numerator_golem95
   use p9_csbar_epnebbbarg_d92h1l1d, only: reconstruct_d92
   use p9_csbar_epnebbbarg_d103h1l1, only: numerator_d103 => numerator_golem95
   use p9_csbar_epnebbbarg_d103h1l1d, only: reconstruct_d103
   use p9_csbar_epnebbbarg_d110h1l1, only: numerator_d110 => numerator_golem95
   use p9_csbar_epnebbbarg_d110h1l1d, only: reconstruct_d110
   use p9_csbar_epnebbbarg_d111h1l1, only: numerator_d111 => numerator_golem95
   use p9_csbar_epnebbbarg_d111h1l1d, only: reconstruct_d111
   use p9_csbar_epnebbbarg_d124h1l1, only: numerator_d124 => numerator_golem95
   use p9_csbar_epnebbbarg_d124h1l1d, only: reconstruct_d124
   use p9_csbar_epnebbbarg_d137h1l1, only: numerator_d137 => numerator_golem95
   use p9_csbar_epnebbbarg_d137h1l1d, only: reconstruct_d137
   use p9_csbar_epnebbbarg_d223h1l1, only: numerator_d223 => numerator_golem95
   use p9_csbar_epnebbbarg_d223h1l1d, only: reconstruct_d223
   use p9_csbar_epnebbbarg_d296h1l1, only: numerator_d296 => numerator_golem95
   use p9_csbar_epnebbbarg_d296h1l1d, only: reconstruct_d296
   use p9_csbar_epnebbbarg_d302h1l1, only: numerator_d302 => numerator_golem95
   use p9_csbar_epnebbbarg_d302h1l1d, only: reconstruct_d302
   implicit none
   type(tensrec_info_group15), intent(out) :: coeffs
   !------#[ Diagram 6:
      if (tens_rec_by_derivatives) then
         call reconstruct_d6(coeffs)
      else
         call reconstruct1(numerator_d6, coeffs%coeffs_6)
      end if
   !------#] Diagram 6:
   !------#[ Diagram 8:
      if (tens_rec_by_derivatives) then
         call reconstruct_d8(coeffs)
      else
         call reconstruct1(numerator_d8, coeffs%coeffs_8)
      end if
   !------#] Diagram 8:
   !------#[ Diagram 10:
      if (tens_rec_by_derivatives) then
         call reconstruct_d10(coeffs)
      else
         call reconstruct1(numerator_d10, coeffs%coeffs_10)
      end if
   !------#] Diagram 10:
   !------#[ Diagram 17:
      if (tens_rec_by_derivatives) then
         call reconstruct_d17(coeffs)
      else
         call reconstruct3(numerator_d17, coeffs%coeffs_17)
      end if
   !------#] Diagram 17:
   !------#[ Diagram 18:
      if (tens_rec_by_derivatives) then
         call reconstruct_d18(coeffs)
      else
         call reconstruct2(numerator_d18, coeffs%coeffs_18)
      end if
   !------#] Diagram 18:
   !------#[ Diagram 21:
      if (tens_rec_by_derivatives) then
         call reconstruct_d21(coeffs)
      else
         call reconstruct2(numerator_d21, coeffs%coeffs_21)
      end if
   !------#] Diagram 21:
   !------#[ Diagram 24:
      if (tens_rec_by_derivatives) then
         call reconstruct_d24(coeffs)
      else
         call reconstruct2(numerator_d24, coeffs%coeffs_24)
      end if
   !------#] Diagram 24:
   !------#[ Diagram 40:
      if (tens_rec_by_derivatives) then
         call reconstruct_d40(coeffs)
      else
         call reconstruct2(numerator_d40, coeffs%coeffs_40)
      end if
   !------#] Diagram 40:
   !------#[ Diagram 43:
      if (tens_rec_by_derivatives) then
         call reconstruct_d43(coeffs)
      else
         call reconstruct2(numerator_d43, coeffs%coeffs_43)
      end if
   !------#] Diagram 43:
   !------#[ Diagram 59:
      if (tens_rec_by_derivatives) then
         call reconstruct_d59(coeffs)
      else
         call reconstruct1(numerator_d59, coeffs%coeffs_59)
      end if
   !------#] Diagram 59:
   !------#[ Diagram 64:
      if (tens_rec_by_derivatives) then
         call reconstruct_d64(coeffs)
      else
         call reconstruct1(numerator_d64, coeffs%coeffs_64)
      end if
   !------#] Diagram 64:
   !------#[ Diagram 65:
      if (tens_rec_by_derivatives) then
         call reconstruct_d65(coeffs)
      else
         call reconstruct1(numerator_d65, coeffs%coeffs_65)
      end if
   !------#] Diagram 65:
   !------#[ Diagram 71:
      if (tens_rec_by_derivatives) then
         call reconstruct_d71(coeffs)
      else
         call reconstruct4(numerator_d71, coeffs%coeffs_71)
      end if
   !------#] Diagram 71:
   !------#[ Diagram 78:
      if (tens_rec_by_derivatives) then
         call reconstruct_d78(coeffs)
      else
         call reconstruct3(numerator_d78, coeffs%coeffs_78)
      end if
   !------#] Diagram 78:
   !------#[ Diagram 86:
      if (tens_rec_by_derivatives) then
         call reconstruct_d86(coeffs)
      else
         call reconstruct2(numerator_d86, coeffs%coeffs_86)
      end if
   !------#] Diagram 86:
   !------#[ Diagram 91:
      if (tens_rec_by_derivatives) then
         call reconstruct_d91(coeffs)
      else
         call reconstruct2(numerator_d91, coeffs%coeffs_91)
      end if
   !------#] Diagram 91:
   !------#[ Diagram 92:
      if (tens_rec_by_derivatives) then
         call reconstruct_d92(coeffs)
      else
         call reconstruct2(numerator_d92, coeffs%coeffs_92)
      end if
   !------#] Diagram 92:
   !------#[ Diagram 103:
      if (tens_rec_by_derivatives) then
         call reconstruct_d103(coeffs)
      else
         call reconstruct3(numerator_d103, coeffs%coeffs_103)
      end if
   !------#] Diagram 103:
   !------#[ Diagram 110:
      if (tens_rec_by_derivatives) then
         call reconstruct_d110(coeffs)
      else
         call reconstruct2(numerator_d110, coeffs%coeffs_110)
      end if
   !------#] Diagram 110:
   !------#[ Diagram 111:
      if (tens_rec_by_derivatives) then
         call reconstruct_d111(coeffs)
      else
         call reconstruct3(numerator_d111, coeffs%coeffs_111)
      end if
   !------#] Diagram 111:
   !------#[ Diagram 124:
      if (tens_rec_by_derivatives) then
         call reconstruct_d124(coeffs)
      else
         call reconstruct3(numerator_d124, coeffs%coeffs_124)
      end if
   !------#] Diagram 124:
   !------#[ Diagram 137:
      if (tens_rec_by_derivatives) then
         call reconstruct_d137(coeffs)
      else
         call reconstruct2(numerator_d137, coeffs%coeffs_137)
      end if
   !------#] Diagram 137:
   !------#[ Diagram 223:
      if (tens_rec_by_derivatives) then
         call reconstruct_d223(coeffs)
      else
         call reconstruct2(numerator_d223, coeffs%coeffs_223)
      end if
   !------#] Diagram 223:
   !------#[ Diagram 296:
      if (tens_rec_by_derivatives) then
         call reconstruct_d296(coeffs)
      else
         call reconstruct4(numerator_d296, coeffs%coeffs_296)
      end if
   !------#] Diagram 296:
   !------#[ Diagram 302:
      if (tens_rec_by_derivatives) then
         call reconstruct_d302(coeffs)
      else
         call reconstruct3(numerator_d302, coeffs%coeffs_302)
      end if
   !------#] Diagram 302:
end subroutine reconstruct_group15
!---#] subroutine reconstruct_group15:
!---#[ subroutine reconstruct_group16:
subroutine     reconstruct_group16(coeffs)
   use tens_rec
   use p9_csbar_epnebbbarg_config
   use p9_csbar_epnebbbarg_groups, only: tensrec_info_group16
   use p9_csbar_epnebbbarg_d67h1l1, only: numerator_d67 => numerator_golem95
   use p9_csbar_epnebbbarg_d67h1l1d, only: reconstruct_d67
   use p9_csbar_epnebbbarg_d77h1l1, only: numerator_d77 => numerator_golem95
   use p9_csbar_epnebbbarg_d77h1l1d, only: reconstruct_d77
   use p9_csbar_epnebbbarg_d94h1l1, only: numerator_d94 => numerator_golem95
   use p9_csbar_epnebbbarg_d94h1l1d, only: reconstruct_d94
   use p9_csbar_epnebbbarg_d107h1l1, only: numerator_d107 => numerator_golem95
   use p9_csbar_epnebbbarg_d107h1l1d, only: reconstruct_d107
   use p9_csbar_epnebbbarg_d117h1l1, only: numerator_d117 => numerator_golem95
   use p9_csbar_epnebbbarg_d117h1l1d, only: reconstruct_d117
   use p9_csbar_epnebbbarg_d125h1l1, only: numerator_d125 => numerator_golem95
   use p9_csbar_epnebbbarg_d125h1l1d, only: reconstruct_d125
   use p9_csbar_epnebbbarg_d145h1l1, only: numerator_d145 => numerator_golem95
   use p9_csbar_epnebbbarg_d145h1l1d, only: reconstruct_d145
   use p9_csbar_epnebbbarg_d294h1l1, only: numerator_d294 => numerator_golem95
   use p9_csbar_epnebbbarg_d294h1l1d, only: reconstruct_d294
   use p9_csbar_epnebbbarg_d304h1l1, only: numerator_d304 => numerator_golem95
   use p9_csbar_epnebbbarg_d304h1l1d, only: reconstruct_d304
   use p9_csbar_epnebbbarg_d314h1l1, only: numerator_d314 => numerator_golem95
   use p9_csbar_epnebbbarg_d314h1l1d, only: reconstruct_d314
   use p9_csbar_epnebbbarg_d317h1l1, only: numerator_d317 => numerator_golem95
   use p9_csbar_epnebbbarg_d317h1l1d, only: reconstruct_d317
   use p9_csbar_epnebbbarg_d336h1l1, only: numerator_d336 => numerator_golem95
   use p9_csbar_epnebbbarg_d336h1l1d, only: reconstruct_d336
   implicit none
   type(tensrec_info_group16), intent(out) :: coeffs
   !------#[ Diagram 67:
      if (tens_rec_by_derivatives) then
         call reconstruct_d67(coeffs)
      else
         call reconstruct4(numerator_d67, coeffs%coeffs_67)
      end if
   !------#] Diagram 67:
   !------#[ Diagram 77:
      if (tens_rec_by_derivatives) then
         call reconstruct_d77(coeffs)
      else
         call reconstruct3(numerator_d77, coeffs%coeffs_77)
      end if
   !------#] Diagram 77:
   !------#[ Diagram 94:
      if (tens_rec_by_derivatives) then
         call reconstruct_d94(coeffs)
      else
         call reconstruct3(numerator_d94, coeffs%coeffs_94)
      end if
   !------#] Diagram 94:
   !------#[ Diagram 107:
      if (tens_rec_by_derivatives) then
         call reconstruct_d107(coeffs)
      else
         call reconstruct2(numerator_d107, coeffs%coeffs_107)
      end if
   !------#] Diagram 107:
   !------#[ Diagram 117:
      if (tens_rec_by_derivatives) then
         call reconstruct_d117(coeffs)
      else
         call reconstruct3(numerator_d117, coeffs%coeffs_117)
      end if
   !------#] Diagram 117:
   !------#[ Diagram 125:
      if (tens_rec_by_derivatives) then
         call reconstruct_d125(coeffs)
      else
         call reconstruct3(numerator_d125, coeffs%coeffs_125)
      end if
   !------#] Diagram 125:
   !------#[ Diagram 145:
      if (tens_rec_by_derivatives) then
         call reconstruct_d145(coeffs)
      else
         call reconstruct3(numerator_d145, coeffs%coeffs_145)
      end if
   !------#] Diagram 145:
   !------#[ Diagram 294:
      if (tens_rec_by_derivatives) then
         call reconstruct_d294(coeffs)
      else
         call reconstruct4(numerator_d294, coeffs%coeffs_294)
      end if
   !------#] Diagram 294:
   !------#[ Diagram 304:
      if (tens_rec_by_derivatives) then
         call reconstruct_d304(coeffs)
      else
         call reconstruct3(numerator_d304, coeffs%coeffs_304)
      end if
   !------#] Diagram 304:
   !------#[ Diagram 314:
      if (tens_rec_by_derivatives) then
         call reconstruct_d314(coeffs)
      else
         call reconstruct3(numerator_d314, coeffs%coeffs_314)
      end if
   !------#] Diagram 314:
   !------#[ Diagram 317:
      if (tens_rec_by_derivatives) then
         call reconstruct_d317(coeffs)
      else
         call reconstruct3(numerator_d317, coeffs%coeffs_317)
      end if
   !------#] Diagram 317:
   !------#[ Diagram 336:
      if (tens_rec_by_derivatives) then
         call reconstruct_d336(coeffs)
      else
         call reconstruct2(numerator_d336, coeffs%coeffs_336)
      end if
   !------#] Diagram 336:
end subroutine reconstruct_group16
!---#] subroutine reconstruct_group16:
!---#[ subroutine reconstruct_group17:
subroutine     reconstruct_group17(coeffs)
   use tens_rec
   use p9_csbar_epnebbbarg_config
   use p9_csbar_epnebbbarg_groups, only: tensrec_info_group17
   use p9_csbar_epnebbbarg_d291h1l1, only: numerator_d291 => numerator_golem95
   use p9_csbar_epnebbbarg_d291h1l1d, only: reconstruct_d291
   use p9_csbar_epnebbbarg_d309h1l1, only: numerator_d309 => numerator_golem95
   use p9_csbar_epnebbbarg_d309h1l1d, only: reconstruct_d309
   implicit none
   type(tensrec_info_group17), intent(out) :: coeffs
   !------#[ Diagram 291:
      if (tens_rec_by_derivatives) then
         call reconstruct_d291(coeffs)
      else
         call reconstruct4(numerator_d291, coeffs%coeffs_291)
      end if
   !------#] Diagram 291:
   !------#[ Diagram 309:
      if (tens_rec_by_derivatives) then
         call reconstruct_d309(coeffs)
      else
         call reconstruct3(numerator_d309, coeffs%coeffs_309)
      end if
   !------#] Diagram 309:
end subroutine reconstruct_group17
!---#] subroutine reconstruct_group17:
!---#[ subroutine reconstruct_group18:
subroutine     reconstruct_group18(coeffs)
   use tens_rec
   use p9_csbar_epnebbbarg_config
   use p9_csbar_epnebbbarg_groups, only: tensrec_info_group18
   use p9_csbar_epnebbbarg_d1h1l1, only: numerator_d1 => numerator_golem95
   use p9_csbar_epnebbbarg_d1h1l1d, only: reconstruct_d1
   use p9_csbar_epnebbbarg_d2h1l1, only: numerator_d2 => numerator_golem95
   use p9_csbar_epnebbbarg_d2h1l1d, only: reconstruct_d2
   use p9_csbar_epnebbbarg_d3h1l1, only: numerator_d3 => numerator_golem95
   use p9_csbar_epnebbbarg_d3h1l1d, only: reconstruct_d3
   use p9_csbar_epnebbbarg_d4h1l1, only: numerator_d4 => numerator_golem95
   use p9_csbar_epnebbbarg_d4h1l1d, only: reconstruct_d4
   use p9_csbar_epnebbbarg_d20h1l1, only: numerator_d20 => numerator_golem95
   use p9_csbar_epnebbbarg_d20h1l1d, only: reconstruct_d20
   use p9_csbar_epnebbbarg_d23h1l1, only: numerator_d23 => numerator_golem95
   use p9_csbar_epnebbbarg_d23h1l1d, only: reconstruct_d23
   use p9_csbar_epnebbbarg_d62h1l1, only: numerator_d62 => numerator_golem95
   use p9_csbar_epnebbbarg_d62h1l1d, only: reconstruct_d62
   use p9_csbar_epnebbbarg_d63h1l1, only: numerator_d63 => numerator_golem95
   use p9_csbar_epnebbbarg_d63h1l1d, only: reconstruct_d63
   use p9_csbar_epnebbbarg_d73h1l1, only: numerator_d73 => numerator_golem95
   use p9_csbar_epnebbbarg_d73h1l1d, only: reconstruct_d73
   use p9_csbar_epnebbbarg_d74h1l1, only: numerator_d74 => numerator_golem95
   use p9_csbar_epnebbbarg_d74h1l1d, only: reconstruct_d74
   use p9_csbar_epnebbbarg_d99h1l1, only: numerator_d99 => numerator_golem95
   use p9_csbar_epnebbbarg_d99h1l1d, only: reconstruct_d99
   use p9_csbar_epnebbbarg_d100h1l1, only: numerator_d100 => numerator_golem95
   use p9_csbar_epnebbbarg_d100h1l1d, only: reconstruct_d100
   use p9_csbar_epnebbbarg_d104h1l1, only: numerator_d104 => numerator_golem95
   use p9_csbar_epnebbbarg_d104h1l1d, only: reconstruct_d104
   use p9_csbar_epnebbbarg_d119h1l1, only: numerator_d119 => numerator_golem95
   use p9_csbar_epnebbbarg_d119h1l1d, only: reconstruct_d119
   use p9_csbar_epnebbbarg_d122h1l1, only: numerator_d122 => numerator_golem95
   use p9_csbar_epnebbbarg_d122h1l1d, only: reconstruct_d122
   use p9_csbar_epnebbbarg_d175h1l1, only: numerator_d175 => numerator_golem95
   use p9_csbar_epnebbbarg_d175h1l1d, only: reconstruct_d175
   use p9_csbar_epnebbbarg_d179h1l1, only: numerator_d179 => numerator_golem95
   use p9_csbar_epnebbbarg_d179h1l1d, only: reconstruct_d179
   use p9_csbar_epnebbbarg_d219h1l1, only: numerator_d219 => numerator_golem95
   use p9_csbar_epnebbbarg_d219h1l1d, only: reconstruct_d219
   use p9_csbar_epnebbbarg_d221h1l1, only: numerator_d221 => numerator_golem95
   use p9_csbar_epnebbbarg_d221h1l1d, only: reconstruct_d221
   use p9_csbar_epnebbbarg_d225h1l1, only: numerator_d225 => numerator_golem95
   use p9_csbar_epnebbbarg_d225h1l1d, only: reconstruct_d225
   use p9_csbar_epnebbbarg_d229h1l1, only: numerator_d229 => numerator_golem95
   use p9_csbar_epnebbbarg_d229h1l1d, only: reconstruct_d229
   use p9_csbar_epnebbbarg_d240h1l1, only: numerator_d240 => numerator_golem95
   use p9_csbar_epnebbbarg_d240h1l1d, only: reconstruct_d240
   use p9_csbar_epnebbbarg_d299h1l1, only: numerator_d299 => numerator_golem95
   use p9_csbar_epnebbbarg_d299h1l1d, only: reconstruct_d299
   use p9_csbar_epnebbbarg_d307h1l1, only: numerator_d307 => numerator_golem95
   use p9_csbar_epnebbbarg_d307h1l1d, only: reconstruct_d307
   use p9_csbar_epnebbbarg_d313h1l1, only: numerator_d313 => numerator_golem95
   use p9_csbar_epnebbbarg_d313h1l1d, only: reconstruct_d313
   use p9_csbar_epnebbbarg_d321h1l1, only: numerator_d321 => numerator_golem95
   use p9_csbar_epnebbbarg_d321h1l1d, only: reconstruct_d321
   use p9_csbar_epnebbbarg_d333h1l1, only: numerator_d333 => numerator_golem95
   use p9_csbar_epnebbbarg_d333h1l1d, only: reconstruct_d333
   use p9_csbar_epnebbbarg_d335h1l1, only: numerator_d335 => numerator_golem95
   use p9_csbar_epnebbbarg_d335h1l1d, only: reconstruct_d335
   implicit none
   type(tensrec_info_group18), intent(out) :: coeffs
   !------#[ Diagram 1:
      if (tens_rec_by_derivatives) then
         call reconstruct_d1(coeffs)
      else
         call reconstruct2(numerator_d1, coeffs%coeffs_1)
      end if
   !------#] Diagram 1:
   !------#[ Diagram 2:
      if (tens_rec_by_derivatives) then
         call reconstruct_d2(coeffs)
      else
         call reconstruct1(numerator_d2, coeffs%coeffs_2)
      end if
   !------#] Diagram 2:
   !------#[ Diagram 3:
      if (tens_rec_by_derivatives) then
         call reconstruct_d3(coeffs)
      else
         call reconstruct1(numerator_d3, coeffs%coeffs_3)
      end if
   !------#] Diagram 3:
   !------#[ Diagram 4:
      if (tens_rec_by_derivatives) then
         call reconstruct_d4(coeffs)
      else
         call reconstruct1(numerator_d4, coeffs%coeffs_4)
      end if
   !------#] Diagram 4:
   !------#[ Diagram 20:
      if (tens_rec_by_derivatives) then
         call reconstruct_d20(coeffs)
      else
         call reconstruct2(numerator_d20, coeffs%coeffs_20)
      end if
   !------#] Diagram 20:
   !------#[ Diagram 23:
      if (tens_rec_by_derivatives) then
         call reconstruct_d23(coeffs)
      else
         call reconstruct2(numerator_d23, coeffs%coeffs_23)
      end if
   !------#] Diagram 23:
   !------#[ Diagram 62:
      if (tens_rec_by_derivatives) then
         call reconstruct_d62(coeffs)
      else
         call reconstruct1(numerator_d62, coeffs%coeffs_62)
      end if
   !------#] Diagram 62:
   !------#[ Diagram 63:
      if (tens_rec_by_derivatives) then
         call reconstruct_d63(coeffs)
      else
         call reconstruct1(numerator_d63, coeffs%coeffs_63)
      end if
   !------#] Diagram 63:
   !------#[ Diagram 73:
      if (tens_rec_by_derivatives) then
         call reconstruct_d73(coeffs)
      else
         call reconstruct3(numerator_d73, coeffs%coeffs_73)
      end if
   !------#] Diagram 73:
   !------#[ Diagram 74:
      if (tens_rec_by_derivatives) then
         call reconstruct_d74(coeffs)
      else
         call reconstruct3(numerator_d74, coeffs%coeffs_74)
      end if
   !------#] Diagram 74:
   !------#[ Diagram 99:
      if (tens_rec_by_derivatives) then
         call reconstruct_d99(coeffs)
      else
         call reconstruct2(numerator_d99, coeffs%coeffs_99)
      end if
   !------#] Diagram 99:
   !------#[ Diagram 100:
      if (tens_rec_by_derivatives) then
         call reconstruct_d100(coeffs)
      else
         call reconstruct2(numerator_d100, coeffs%coeffs_100)
      end if
   !------#] Diagram 100:
   !------#[ Diagram 104:
      if (tens_rec_by_derivatives) then
         call reconstruct_d104(coeffs)
      else
         call reconstruct3(numerator_d104, coeffs%coeffs_104)
      end if
   !------#] Diagram 104:
   !------#[ Diagram 119:
      if (tens_rec_by_derivatives) then
         call reconstruct_d119(coeffs)
      else
         call reconstruct2(numerator_d119, coeffs%coeffs_119)
      end if
   !------#] Diagram 119:
   !------#[ Diagram 122:
      if (tens_rec_by_derivatives) then
         call reconstruct_d122(coeffs)
      else
         call reconstruct2(numerator_d122, coeffs%coeffs_122)
      end if
   !------#] Diagram 122:
   !------#[ Diagram 175:
      if (tens_rec_by_derivatives) then
         call reconstruct_d175(coeffs)
      else
         call reconstruct2(numerator_d175, coeffs%coeffs_175)
      end if
   !------#] Diagram 175:
   !------#[ Diagram 179:
      if (tens_rec_by_derivatives) then
         call reconstruct_d179(coeffs)
      else
         call reconstruct2(numerator_d179, coeffs%coeffs_179)
      end if
   !------#] Diagram 179:
   !------#[ Diagram 219:
      if (tens_rec_by_derivatives) then
         call reconstruct_d219(coeffs)
      else
         call reconstruct2(numerator_d219, coeffs%coeffs_219)
      end if
   !------#] Diagram 219:
   !------#[ Diagram 221:
      if (tens_rec_by_derivatives) then
         call reconstruct_d221(coeffs)
      else
         call reconstruct2(numerator_d221, coeffs%coeffs_221)
      end if
   !------#] Diagram 221:
   !------#[ Diagram 225:
      if (tens_rec_by_derivatives) then
         call reconstruct_d225(coeffs)
      else
         call reconstruct2(numerator_d225, coeffs%coeffs_225)
      end if
   !------#] Diagram 225:
   !------#[ Diagram 229:
      if (tens_rec_by_derivatives) then
         call reconstruct_d229(coeffs)
      else
         call reconstruct2(numerator_d229, coeffs%coeffs_229)
      end if
   !------#] Diagram 229:
   !------#[ Diagram 240:
      if (tens_rec_by_derivatives) then
         call reconstruct_d240(coeffs)
      else
         call reconstruct2(numerator_d240, coeffs%coeffs_240)
      end if
   !------#] Diagram 240:
   !------#[ Diagram 299:
      if (tens_rec_by_derivatives) then
         call reconstruct_d299(coeffs)
      else
         call reconstruct4(numerator_d299, coeffs%coeffs_299)
      end if
   !------#] Diagram 299:
   !------#[ Diagram 307:
      if (tens_rec_by_derivatives) then
         call reconstruct_d307(coeffs)
      else
         call reconstruct3(numerator_d307, coeffs%coeffs_307)
      end if
   !------#] Diagram 307:
   !------#[ Diagram 313:
      if (tens_rec_by_derivatives) then
         call reconstruct_d313(coeffs)
      else
         call reconstruct3(numerator_d313, coeffs%coeffs_313)
      end if
   !------#] Diagram 313:
   !------#[ Diagram 321:
      if (tens_rec_by_derivatives) then
         call reconstruct_d321(coeffs)
      else
         call reconstruct3(numerator_d321, coeffs%coeffs_321)
      end if
   !------#] Diagram 321:
   !------#[ Diagram 333:
      if (tens_rec_by_derivatives) then
         call reconstruct_d333(coeffs)
      else
         call reconstruct2(numerator_d333, coeffs%coeffs_333)
      end if
   !------#] Diagram 333:
   !------#[ Diagram 335:
      if (tens_rec_by_derivatives) then
         call reconstruct_d335(coeffs)
      else
         call reconstruct2(numerator_d335, coeffs%coeffs_335)
      end if
   !------#] Diagram 335:
end subroutine reconstruct_group18
!---#] subroutine reconstruct_group18:
!---#[ subroutine reconstruct_group19:
subroutine     reconstruct_group19(coeffs)
   use tens_rec
   use p9_csbar_epnebbbarg_config
   use p9_csbar_epnebbbarg_groups, only: tensrec_info_group19
   use p9_csbar_epnebbbarg_d293h1l1, only: numerator_d293 => numerator_golem95
   use p9_csbar_epnebbbarg_d293h1l1d, only: reconstruct_d293
   use p9_csbar_epnebbbarg_d306h1l1, only: numerator_d306 => numerator_golem95
   use p9_csbar_epnebbbarg_d306h1l1d, only: reconstruct_d306
   use p9_csbar_epnebbbarg_d312h1l1, only: numerator_d312 => numerator_golem95
   use p9_csbar_epnebbbarg_d312h1l1d, only: reconstruct_d312
   implicit none
   type(tensrec_info_group19), intent(out) :: coeffs
   !------#[ Diagram 293:
      if (tens_rec_by_derivatives) then
         call reconstruct_d293(coeffs)
      else
         call reconstruct4(numerator_d293, coeffs%coeffs_293)
      end if
   !------#] Diagram 293:
   !------#[ Diagram 306:
      if (tens_rec_by_derivatives) then
         call reconstruct_d306(coeffs)
      else
         call reconstruct3(numerator_d306, coeffs%coeffs_306)
      end if
   !------#] Diagram 306:
   !------#[ Diagram 312:
      if (tens_rec_by_derivatives) then
         call reconstruct_d312(coeffs)
      else
         call reconstruct3(numerator_d312, coeffs%coeffs_312)
      end if
   !------#] Diagram 312:
end subroutine reconstruct_group19
!---#] subroutine reconstruct_group19:
!---#[ subroutine reconstruct_group20:
subroutine     reconstruct_group20(coeffs)
   use tens_rec
   use p9_csbar_epnebbbarg_config
   use p9_csbar_epnebbbarg_groups, only: tensrec_info_group20
   use p9_csbar_epnebbbarg_d69h1l1, only: numerator_d69 => numerator_golem95
   use p9_csbar_epnebbbarg_d69h1l1d, only: reconstruct_d69
   use p9_csbar_epnebbbarg_d96h1l1, only: numerator_d96 => numerator_golem95
   use p9_csbar_epnebbbarg_d96h1l1d, only: reconstruct_d96
   use p9_csbar_epnebbbarg_d113h1l1, only: numerator_d113 => numerator_golem95
   use p9_csbar_epnebbbarg_d113h1l1d, only: reconstruct_d113
   use p9_csbar_epnebbbarg_d123h1l1, only: numerator_d123 => numerator_golem95
   use p9_csbar_epnebbbarg_d123h1l1d, only: reconstruct_d123
   use p9_csbar_epnebbbarg_d297h1l1, only: numerator_d297 => numerator_golem95
   use p9_csbar_epnebbbarg_d297h1l1d, only: reconstruct_d297
   use p9_csbar_epnebbbarg_d308h1l1, only: numerator_d308 => numerator_golem95
   use p9_csbar_epnebbbarg_d308h1l1d, only: reconstruct_d308
   use p9_csbar_epnebbbarg_d311h1l1, only: numerator_d311 => numerator_golem95
   use p9_csbar_epnebbbarg_d311h1l1d, only: reconstruct_d311
   use p9_csbar_epnebbbarg_d319h1l1, only: numerator_d319 => numerator_golem95
   use p9_csbar_epnebbbarg_d319h1l1d, only: reconstruct_d319
   use p9_csbar_epnebbbarg_d334h1l1, only: numerator_d334 => numerator_golem95
   use p9_csbar_epnebbbarg_d334h1l1d, only: reconstruct_d334
   implicit none
   type(tensrec_info_group20), intent(out) :: coeffs
   !------#[ Diagram 69:
      if (tens_rec_by_derivatives) then
         call reconstruct_d69(coeffs)
      else
         call reconstruct4(numerator_d69, coeffs%coeffs_69)
      end if
   !------#] Diagram 69:
   !------#[ Diagram 96:
      if (tens_rec_by_derivatives) then
         call reconstruct_d96(coeffs)
      else
         call reconstruct3(numerator_d96, coeffs%coeffs_96)
      end if
   !------#] Diagram 96:
   !------#[ Diagram 113:
      if (tens_rec_by_derivatives) then
         call reconstruct_d113(coeffs)
      else
         call reconstruct3(numerator_d113, coeffs%coeffs_113)
      end if
   !------#] Diagram 113:
   !------#[ Diagram 123:
      if (tens_rec_by_derivatives) then
         call reconstruct_d123(coeffs)
      else
         call reconstruct3(numerator_d123, coeffs%coeffs_123)
      end if
   !------#] Diagram 123:
   !------#[ Diagram 297:
      if (tens_rec_by_derivatives) then
         call reconstruct_d297(coeffs)
      else
         call reconstruct4(numerator_d297, coeffs%coeffs_297)
      end if
   !------#] Diagram 297:
   !------#[ Diagram 308:
      if (tens_rec_by_derivatives) then
         call reconstruct_d308(coeffs)
      else
         call reconstruct3(numerator_d308, coeffs%coeffs_308)
      end if
   !------#] Diagram 308:
   !------#[ Diagram 311:
      if (tens_rec_by_derivatives) then
         call reconstruct_d311(coeffs)
      else
         call reconstruct3(numerator_d311, coeffs%coeffs_311)
      end if
   !------#] Diagram 311:
   !------#[ Diagram 319:
      if (tens_rec_by_derivatives) then
         call reconstruct_d319(coeffs)
      else
         call reconstruct3(numerator_d319, coeffs%coeffs_319)
      end if
   !------#] Diagram 319:
   !------#[ Diagram 334:
      if (tens_rec_by_derivatives) then
         call reconstruct_d334(coeffs)
      else
         call reconstruct2(numerator_d334, coeffs%coeffs_334)
      end if
   !------#] Diagram 334:
end subroutine reconstruct_group20
!---#] subroutine reconstruct_group20:
end module p9_csbar_epnebbbarg_golem95h1
