module     p12_sbars_epnemumnmubarg_golem95h4
   use precision_golem, only: ki_gol => ki
   use p12_sbars_epnemumnmubarg_config, only: ki
   implicit none
   private
   interface reconstruct_group
      module procedure reconstruct_group0
      module procedure reconstruct_group1
      module procedure reconstruct_group2
      module procedure reconstruct_group3
   end interface

   public :: reconstruct_group
contains
!---#[ subroutine reconstruct_group0:
subroutine     reconstruct_group0(coeffs)
   use tens_rec
   use p12_sbars_epnemumnmubarg_config
   use p12_sbars_epnemumnmubarg_groups, only: tensrec_info_group0
   use p12_sbars_epnemumnmubarg_d485h4l1, only: numerator_d485 => numerator_golem95
   use p12_sbars_epnemumnmubarg_d485h4l1d, only: reconstruct_d485
   use p12_sbars_epnemumnmubarg_d573h4l1, only: numerator_d573 => numerator_golem95
   use p12_sbars_epnemumnmubarg_d573h4l1d, only: reconstruct_d573
   use p12_sbars_epnemumnmubarg_d595h4l1, only: numerator_d595 => numerator_golem95
   use p12_sbars_epnemumnmubarg_d595h4l1d, only: reconstruct_d595
   use p12_sbars_epnemumnmubarg_d603h4l1, only: numerator_d603 => numerator_golem95
   use p12_sbars_epnemumnmubarg_d603h4l1d, only: reconstruct_d603
   implicit none
   type(tensrec_info_group0), intent(out) :: coeffs
   !------#[ Diagram 485:
      if (tens_rec_by_derivatives) then
         call reconstruct_d485(coeffs)
      else
         call reconstruct4(numerator_d485, coeffs%coeffs_485)
      end if
   !------#] Diagram 485:
   !------#[ Diagram 573:
      if (tens_rec_by_derivatives) then
         call reconstruct_d573(coeffs)
      else
         call reconstruct3(numerator_d573, coeffs%coeffs_573)
      end if
   !------#] Diagram 573:
   !------#[ Diagram 595:
      if (tens_rec_by_derivatives) then
         call reconstruct_d595(coeffs)
      else
         call reconstruct3(numerator_d595, coeffs%coeffs_595)
      end if
   !------#] Diagram 595:
   !------#[ Diagram 603:
      if (tens_rec_by_derivatives) then
         call reconstruct_d603(coeffs)
      else
         call reconstruct3(numerator_d603, coeffs%coeffs_603)
      end if
   !------#] Diagram 603:
end subroutine reconstruct_group0
!---#] subroutine reconstruct_group0:
!---#[ subroutine reconstruct_group1:
subroutine     reconstruct_group1(coeffs)
   use tens_rec
   use p12_sbars_epnemumnmubarg_config
   use p12_sbars_epnemumnmubarg_groups, only: tensrec_info_group1
   use p12_sbars_epnemumnmubarg_d37h4l1, only: numerator_d37 => numerator_golem95
   use p12_sbars_epnemumnmubarg_d37h4l1d, only: reconstruct_d37
   use p12_sbars_epnemumnmubarg_d191h4l1, only: numerator_d191 => numerator_golem95
   use p12_sbars_epnemumnmubarg_d191h4l1d, only: reconstruct_d191
   use p12_sbars_epnemumnmubarg_d219h4l1, only: numerator_d219 => numerator_golem95
   use p12_sbars_epnemumnmubarg_d219h4l1d, only: reconstruct_d219
   use p12_sbars_epnemumnmubarg_d281h4l1, only: numerator_d281 => numerator_golem95
   use p12_sbars_epnemumnmubarg_d281h4l1d, only: reconstruct_d281
   use p12_sbars_epnemumnmubarg_d481h4l1, only: numerator_d481 => numerator_golem95
   use p12_sbars_epnemumnmubarg_d481h4l1d, only: reconstruct_d481
   use p12_sbars_epnemumnmubarg_d517h4l1, only: numerator_d517 => numerator_golem95
   use p12_sbars_epnemumnmubarg_d517h4l1d, only: reconstruct_d517
   use p12_sbars_epnemumnmubarg_d559h4l1, only: numerator_d559 => numerator_golem95
   use p12_sbars_epnemumnmubarg_d559h4l1d, only: reconstruct_d559
   use p12_sbars_epnemumnmubarg_d599h4l1, only: numerator_d599 => numerator_golem95
   use p12_sbars_epnemumnmubarg_d599h4l1d, only: reconstruct_d599
   implicit none
   type(tensrec_info_group1), intent(out) :: coeffs
   !------#[ Diagram 37:
      if (tens_rec_by_derivatives) then
         call reconstruct_d37(coeffs)
      else
         call reconstruct3(numerator_d37, coeffs%coeffs_37)
      end if
   !------#] Diagram 37:
   !------#[ Diagram 191:
      if (tens_rec_by_derivatives) then
         call reconstruct_d191(coeffs)
      else
         call reconstruct2(numerator_d191, coeffs%coeffs_191)
      end if
   !------#] Diagram 191:
   !------#[ Diagram 219:
      if (tens_rec_by_derivatives) then
         call reconstruct_d219(coeffs)
      else
         call reconstruct1(numerator_d219, coeffs%coeffs_219)
      end if
   !------#] Diagram 219:
   !------#[ Diagram 281:
      if (tens_rec_by_derivatives) then
         call reconstruct_d281(coeffs)
      else
         call reconstruct2(numerator_d281, coeffs%coeffs_281)
      end if
   !------#] Diagram 281:
   !------#[ Diagram 481:
      if (tens_rec_by_derivatives) then
         call reconstruct_d481(coeffs)
      else
         call reconstruct4(numerator_d481, coeffs%coeffs_481)
      end if
   !------#] Diagram 481:
   !------#[ Diagram 517:
      if (tens_rec_by_derivatives) then
         call reconstruct_d517(coeffs)
      else
         call reconstruct2(numerator_d517, coeffs%coeffs_517)
      end if
   !------#] Diagram 517:
   !------#[ Diagram 559:
      if (tens_rec_by_derivatives) then
         call reconstruct_d559(coeffs)
      else
         call reconstruct3(numerator_d559, coeffs%coeffs_559)
      end if
   !------#] Diagram 559:
   !------#[ Diagram 599:
      if (tens_rec_by_derivatives) then
         call reconstruct_d599(coeffs)
      else
         call reconstruct3(numerator_d599, coeffs%coeffs_599)
      end if
   !------#] Diagram 599:
end subroutine reconstruct_group1
!---#] subroutine reconstruct_group1:
!---#[ subroutine reconstruct_group2:
subroutine     reconstruct_group2(coeffs)
   use tens_rec
   use p12_sbars_epnemumnmubarg_config
   use p12_sbars_epnemumnmubarg_groups, only: tensrec_info_group2
   use p12_sbars_epnemumnmubarg_d57h4l1, only: numerator_d57 => numerator_golem95
   use p12_sbars_epnemumnmubarg_d57h4l1d, only: reconstruct_d57
   use p12_sbars_epnemumnmubarg_d61h4l1, only: numerator_d61 => numerator_golem95
   use p12_sbars_epnemumnmubarg_d61h4l1d, only: reconstruct_d61
   use p12_sbars_epnemumnmubarg_d465h4l1, only: numerator_d465 => numerator_golem95
   use p12_sbars_epnemumnmubarg_d465h4l1d, only: reconstruct_d465
   use p12_sbars_epnemumnmubarg_d469h4l1, only: numerator_d469 => numerator_golem95
   use p12_sbars_epnemumnmubarg_d469h4l1d, only: reconstruct_d469
   use p12_sbars_epnemumnmubarg_d473h4l1, only: numerator_d473 => numerator_golem95
   use p12_sbars_epnemumnmubarg_d473h4l1d, only: reconstruct_d473
   use p12_sbars_epnemumnmubarg_d587h4l1, only: numerator_d587 => numerator_golem95
   use p12_sbars_epnemumnmubarg_d587h4l1d, only: reconstruct_d587
   use p12_sbars_epnemumnmubarg_d591h4l1, only: numerator_d591 => numerator_golem95
   use p12_sbars_epnemumnmubarg_d591h4l1d, only: reconstruct_d591
   use p12_sbars_epnemumnmubarg_d971h4l1, only: numerator_d971 => numerator_golem95
   use p12_sbars_epnemumnmubarg_d971h4l1d, only: reconstruct_d971
   implicit none
   type(tensrec_info_group2), intent(out) :: coeffs
   !------#[ Diagram 57:
      if (tens_rec_by_derivatives) then
         call reconstruct_d57(coeffs)
      else
         call reconstruct2(numerator_d57, coeffs%coeffs_57)
      end if
   !------#] Diagram 57:
   !------#[ Diagram 61:
      if (tens_rec_by_derivatives) then
         call reconstruct_d61(coeffs)
      else
         call reconstruct2(numerator_d61, coeffs%coeffs_61)
      end if
   !------#] Diagram 61:
   !------#[ Diagram 465:
      if (tens_rec_by_derivatives) then
         call reconstruct_d465(coeffs)
      else
         call reconstruct1(numerator_d465, coeffs%coeffs_465)
      end if
   !------#] Diagram 465:
   !------#[ Diagram 469:
      if (tens_rec_by_derivatives) then
         call reconstruct_d469(coeffs)
      else
         call reconstruct1(numerator_d469, coeffs%coeffs_469)
      end if
   !------#] Diagram 469:
   !------#[ Diagram 473:
      if (tens_rec_by_derivatives) then
         call reconstruct_d473(coeffs)
      else
         call reconstruct4(numerator_d473, coeffs%coeffs_473)
      end if
   !------#] Diagram 473:
   !------#[ Diagram 587:
      if (tens_rec_by_derivatives) then
         call reconstruct_d587(coeffs)
      else
         call reconstruct3(numerator_d587, coeffs%coeffs_587)
      end if
   !------#] Diagram 587:
   !------#[ Diagram 591:
      if (tens_rec_by_derivatives) then
         call reconstruct_d591(coeffs)
      else
         call reconstruct3(numerator_d591, coeffs%coeffs_591)
      end if
   !------#] Diagram 591:
   !------#[ Diagram 971:
      if (tens_rec_by_derivatives) then
         call reconstruct_d971(coeffs)
      else
         call reconstruct2(numerator_d971, coeffs%coeffs_971)
      end if
   !------#] Diagram 971:
end subroutine reconstruct_group2
!---#] subroutine reconstruct_group2:
!---#[ subroutine reconstruct_group3:
subroutine     reconstruct_group3(coeffs)
   use tens_rec
   use p12_sbars_epnemumnmubarg_config
   use p12_sbars_epnemumnmubarg_groups, only: tensrec_info_group3
   use p12_sbars_epnemumnmubarg_d33h4l1, only: numerator_d33 => numerator_golem95
   use p12_sbars_epnemumnmubarg_d33h4l1d, only: reconstruct_d33
   use p12_sbars_epnemumnmubarg_d177h4l1, only: numerator_d177 => numerator_golem95
   use p12_sbars_epnemumnmubarg_d177h4l1d, only: reconstruct_d177
   use p12_sbars_epnemumnmubarg_d205h4l1, only: numerator_d205 => numerator_golem95
   use p12_sbars_epnemumnmubarg_d205h4l1d, only: reconstruct_d205
   use p12_sbars_epnemumnmubarg_d285h4l1, only: numerator_d285 => numerator_golem95
   use p12_sbars_epnemumnmubarg_d285h4l1d, only: reconstruct_d285
   use p12_sbars_epnemumnmubarg_d477h4l1, only: numerator_d477 => numerator_golem95
   use p12_sbars_epnemumnmubarg_d477h4l1d, only: reconstruct_d477
   use p12_sbars_epnemumnmubarg_d489h4l1, only: numerator_d489 => numerator_golem95
   use p12_sbars_epnemumnmubarg_d489h4l1d, only: reconstruct_d489
   use p12_sbars_epnemumnmubarg_d545h4l1, only: numerator_d545 => numerator_golem95
   use p12_sbars_epnemumnmubarg_d545h4l1d, only: reconstruct_d545
   use p12_sbars_epnemumnmubarg_d607h4l1, only: numerator_d607 => numerator_golem95
   use p12_sbars_epnemumnmubarg_d607h4l1d, only: reconstruct_d607
   implicit none
   type(tensrec_info_group3), intent(out) :: coeffs
   !------#[ Diagram 33:
      if (tens_rec_by_derivatives) then
         call reconstruct_d33(coeffs)
      else
         call reconstruct3(numerator_d33, coeffs%coeffs_33)
      end if
   !------#] Diagram 33:
   !------#[ Diagram 177:
      if (tens_rec_by_derivatives) then
         call reconstruct_d177(coeffs)
      else
         call reconstruct2(numerator_d177, coeffs%coeffs_177)
      end if
   !------#] Diagram 177:
   !------#[ Diagram 205:
      if (tens_rec_by_derivatives) then
         call reconstruct_d205(coeffs)
      else
         call reconstruct1(numerator_d205, coeffs%coeffs_205)
      end if
   !------#] Diagram 205:
   !------#[ Diagram 285:
      if (tens_rec_by_derivatives) then
         call reconstruct_d285(coeffs)
      else
         call reconstruct2(numerator_d285, coeffs%coeffs_285)
      end if
   !------#] Diagram 285:
   !------#[ Diagram 477:
      if (tens_rec_by_derivatives) then
         call reconstruct_d477(coeffs)
      else
         call reconstruct4(numerator_d477, coeffs%coeffs_477)
      end if
   !------#] Diagram 477:
   !------#[ Diagram 489:
      if (tens_rec_by_derivatives) then
         call reconstruct_d489(coeffs)
      else
         call reconstruct2(numerator_d489, coeffs%coeffs_489)
      end if
   !------#] Diagram 489:
   !------#[ Diagram 545:
      if (tens_rec_by_derivatives) then
         call reconstruct_d545(coeffs)
      else
         call reconstruct3(numerator_d545, coeffs%coeffs_545)
      end if
   !------#] Diagram 545:
   !------#[ Diagram 607:
      if (tens_rec_by_derivatives) then
         call reconstruct_d607(coeffs)
      else
         call reconstruct3(numerator_d607, coeffs%coeffs_607)
      end if
   !------#] Diagram 607:
end subroutine reconstruct_group3
!---#] subroutine reconstruct_group3:
end module p12_sbars_epnemumnmubarg_golem95h4
