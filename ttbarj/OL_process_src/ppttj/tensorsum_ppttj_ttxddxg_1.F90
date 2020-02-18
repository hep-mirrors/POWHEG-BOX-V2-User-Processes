
! **********************************************************************
module ol_tables_storage_ppttj_ttxddxg_1_/**/REALKIND
! **********************************************************************
  use KIND_TYPES, only: REALKIND, QREALKIND, intkind2
  use ol_data_types_/**/REALKIND, only: hol
  use ol_data_types_/**/REALKIND, only: basis, redset4, redset5
 use ol_data_types_/**/REALKIND, only: scalarbox 

  implicit none

  ! helicity tables for the 1-loop recursion
integer(intkind2), save :: h0tab(32,122)
integer(intkind2), save :: heltab2x2(2,2,76)
integer(intkind2), save :: heltab2x4(2,4,79)
integer(intkind2), save :: heltab2x8(2,8,49)
integer(intkind2), save :: heltab2x16(2,16,37)
integer(intkind2), save :: heltab3x16(3,16,3)
integer(intkind2), save :: heltab2x32(2,32,110)
integer(intkind2), save :: heltab3x32(3,32,12)


  ! number of helicity states for openloops recursion steps
integer(intkind2), save :: m0h(122)
integer(intkind2), save :: m3h2x1(3,76)
integer(intkind2), save :: m3h4x1(3,36)
integer(intkind2), save :: m3h8x1(3,10)
integer(intkind2), save :: m3h2x2(3,43)
integer(intkind2), save :: m3h4x2(3,13)
integer(intkind2), save :: m3h8x2(3,2)
integer(intkind2), save :: m3h2x4(3,26)
integer(intkind2), save :: m3h4x4(3,13)
integer(intkind2), save :: m3h8x4(3,48)
integer(intkind2), save :: m3h2x8(3,22)
integer(intkind2), save :: m3h4x8(3,20)
integer(intkind2), save :: m3h2x16(3,42)
integer(intkind2), save :: m4h4x4x1(4,3)
integer(intkind2), save :: m4h4x2x4(4,4)
integer(intkind2), save :: m4h2x4x4(4,8)

integer(intkind2), save :: n2h1(71)
integer(intkind2), save :: n2h2(35)
integer(intkind2), save :: n2h4(56)
integer(intkind2), save :: n2h8(23)
integer(intkind2), save :: n2h16(22)


contains

!**********************************************************************
subroutine HOL_m3_init()
!**********************************************************************
! initialize m3 arrays for helicity summation
!**********************************************************************
  use KIND_TYPES, only: REALKIND, intkind2

m3h2x1(1,:)=2
m3h2x1(2,:)=1
m3h2x1(3,:)=2
m3h4x1(1,:)=4
m3h4x1(2,:)=1
m3h4x1(3,:)=4
m3h8x1(1,:)=8
m3h8x1(2,:)=1
m3h8x1(3,:)=8
m3h2x2(1,:)=2
m3h2x2(2,:)=2
m3h2x2(3,:)=4
m3h4x2(1,:)=4
m3h4x2(2,:)=2
m3h4x2(3,:)=8
m3h8x2(1,:)=8
m3h8x2(2,:)=2
m3h8x2(3,:)=16
m3h2x4(1,:)=2
m3h2x4(2,:)=4
m3h2x4(3,:)=8
m3h4x4(1,:)=4
m3h4x4(2,:)=4
m3h4x4(3,:)=16
m3h8x4(1,:)=8
m3h8x4(2,:)=4
m3h8x4(3,:)=32
m3h2x8(1,:)=2
m3h2x8(2,:)=8
m3h2x8(3,:)=16
m3h4x8(1,:)=4
m3h4x8(2,:)=8
m3h4x8(3,:)=32
m3h2x16(1,:)=2
m3h2x16(2,:)=16
m3h2x16(3,:)=32
m4h4x4x1(1,:)=4
m4h4x4x1(2,:)=4
m4h4x4x1(3,:)=1
m4h4x4x1(4,:)=16
m4h4x2x4(1,:)=4
m4h4x2x4(2,:)=2
m4h4x2x4(3,:)=4
m4h4x2x4(4,:)=32
m4h2x4x4(1,:)=2
m4h2x4x4(2,:)=4
m4h2x4x4(3,:)=4
m4h2x4x4(4,:)=32

n2h1(:)=1
n2h2(:)=2
n2h4(:)=4
n2h8(:)=8
n2h16(:)=16


end subroutine HOL_m3_init

!**********************************************************************

end module ol_tables_storage_ppttj_ttxddxg_1_/**/REALKIND

! **********************************************************************
module ol_tensor_sum_storage_ppttj_ttxddxg_1_/**/REALKIND
! **********************************************************************
  use KIND_TYPES, only: REALKIND, QREALKIND, intkind2
  use ol_data_types_/**/REALKIND, only: hol, hcl, met
  use ol_data_types_/**/REALKIND, only: basis, redset4, redset5
 use ol_data_types_/**/REALKIND, only: scalarbox 

  implicit none

  type(met), save :: M2L1R1

  ! Declarations of loop wave function tensors

  type(hol), save :: G0H1(1)
  type(hol), save :: G1H1(1)
  type(hol), save :: G2H1(1)
  type(hol), save :: G1H2(28)
  type(hol), save :: G2H2(24)
  type(hol), save :: G0H4(7)
  type(hol), save :: G1H4(36)
  type(hol), save :: G2H4(9)
  type(hol), save :: G0H8(5)
  type(hol), save :: G1H8(10)
  type(hol), save :: G2H8(4)
  type(hol), save :: G0H16(1)
  type(hol), save :: G1H16(19)
  type(hol), save :: G0H32(1)
  type(hcl), save, dimension(241) :: G0tensor
  type(hcl), save, dimension(165) :: G1tensor
  type(hcl), save, dimension(62) :: G2tensor
  type(hcl), save, dimension(9) :: G3tensor



  ! Declarations for on-the-fly tensor reduction
type (basis),      save :: RedBasis(57)
type (redset4),    save :: RedSet_4(38)
type (redset5),    save :: RedSet_5(8)
integer, save :: mass2set(0:1,5)
integer, save :: mass3set(0:2,9)
integer, save :: mass4set(0:3,8)
integer, save :: mass5set(0:4,3)



  ! Declarations for TI calls

  integer, save :: momenta_1(2)
  integer, save :: momenta_2(2)
  integer, save :: momenta_3(2)
  integer, save :: momenta_4(2)
  integer, save :: momenta_5(2)
  integer, save :: momenta_6(2)
  integer, save :: momenta_7(2)
  integer, save :: momenta_8(2)
  integer, save :: momenta_9(2)
  integer, save :: momenta_10(2)
  integer, save :: momenta_11(2)
  integer, save :: momenta_12(2)
  integer, save :: momenta_13(2)
  integer, save :: momenta_14(2)
  integer, save :: momenta_15(2)
  integer, save :: momenta_16(2)
  integer, save :: momenta_17(3)
  integer, save :: momenta_18(3)
  integer, save :: momenta_19(3)
  integer, save :: momenta_20(3)
  integer, save :: momenta_21(3)
  integer, save :: momenta_22(3)
  integer, save :: momenta_23(3)
  integer, save :: momenta_24(3)
  integer, save :: momenta_25(3)
  integer, save :: momenta_26(3)
  integer, save :: momenta_27(3)
  integer, save :: momenta_28(3)
  integer, save :: momenta_29(3)
  integer, save :: momenta_30(3)
  integer, save :: momenta_31(3)
  integer, save :: momenta_32(3)
  integer, save :: momenta_33(3)
  integer, save :: momenta_34(3)
  integer, save :: momenta_35(3)
  integer, save :: momenta_36(3)
  integer, save :: momenta_37(3)
  integer, save :: momenta_38(3)
  integer, save :: momenta_39(3)
  integer, save :: momenta_40(3)
  integer, save :: momenta_41(3)
  integer, save :: momenta_42(3)
  integer, save :: momenta_43(3)
  integer, save :: momenta_44(3)
  integer, save :: momenta_45(3)
  integer, save :: momenta_46(3)
  integer, save :: momenta_47(3)
  integer, save :: momenta_48(3)
  integer, save :: momenta_49(3)
  integer, save :: momenta_50(3)
  integer, save :: momenta_51(3)
  integer, save :: momenta_52(3)
  integer, save :: momenta_53(3)
  integer, save :: momenta_54(3)
  integer, save :: momenta_55(3)
  integer, save :: momenta_56(4)
  integer, save :: momenta_57(4)
  integer, save :: momenta_58(4)
  integer, save :: momenta_59(4)
  integer, save :: momenta_60(4)
  integer, save :: momenta_61(4)
  integer, save :: momenta_62(4)
  integer, save :: momenta_63(4)
  integer, save :: momenta_64(4)
  integer, save :: momenta_65(4)
  integer, save :: momenta_66(4)
  integer, save :: momenta_67(4)
  integer, save :: momenta_68(4)
  integer, save :: momenta_69(4)
  integer, save :: momenta_70(4)
  integer, save :: momenta_71(4)
  integer, save :: momenta_72(4)
  integer, save :: momenta_73(4)
  integer, save :: momenta_74(4)
  integer, save :: momenta_75(4)
  integer, save :: momenta_76(4)
  integer, save :: momenta_77(4)
  integer, save :: momenta_78(4)
  integer, save :: momenta_79(4)
  integer, save :: momenta_80(4)
  integer, save :: momenta_81(4)
  integer, save :: momenta_82(4)
  integer, save :: momenta_83(4)
  integer, save :: momenta_84(4)
  integer, save :: momenta_85(4)
  integer, save :: momenta_86(5)
  integer, save :: momenta_87(5)
  integer, save :: momenta_88(5)
  integer, save :: momenta_89(5)
  integer, save :: momenta_90(5)
  integer, save :: momenta_91(5)
  integer, save :: momenta_92(5)
  integer, save :: momenta_93(5)

  integer, save :: masses2_1(2)
  integer, save :: masses2_2(2)
  integer, save :: masses2_3(2)
  integer, save :: masses2_4(2)
  integer, save :: masses2_5(2)
  integer, save :: masses2_6(2)
  integer, save :: masses2_7(3)
  integer, save :: masses2_8(3)
  integer, save :: masses2_9(3)
  integer, save :: masses2_10(3)
  integer, save :: masses2_11(3)
  integer, save :: masses2_12(3)
  integer, save :: masses2_13(3)
  integer, save :: masses2_14(3)
  integer, save :: masses2_15(3)
  integer, save :: masses2_16(4)
  integer, save :: masses2_17(4)
  integer, save :: masses2_18(4)
  integer, save :: masses2_19(4)
  integer, save :: masses2_20(4)
  integer, save :: masses2_21(4)
  integer, save :: masses2_22(4)
  integer, save :: masses2_23(4)
  integer, save :: masses2_24(5)
  integer, save :: masses2_25(5)
  integer, save :: masses2_26(5)

type(scalarbox), save :: ScalarBoxes(34)

integer, save :: sbarray_1(5)
integer, save :: sbarray_2(5)
integer, save :: sbarray_3(5)
integer, save :: sbarray_4(5)
integer, save :: sbarray_5(5)
integer, save :: sbarray_6(5)
integer, save :: sbarray_7(5)
integer, save :: sbarray_8(5)

  type(hcl), save, dimension(113) :: T0sum
  type(hcl), save, dimension(8) :: T1sum


  contains

!**********************************************************************
subroutine HOL_memory_allocation_full()
!**********************************************************************
! allocation of memory for the types hol
!**********************************************************************
  use KIND_TYPES, only: REALKIND
  use ol_loop_storage_ppttj_ttxddxg_1_/**/DREALKIND, only: nhel
  use ol_data_types_/**/REALKIND, only: hol
  use hol_initialisation_/**/REALKIND, only: hol_allocation
  implicit none

    call hol_allocation(4,1,4,1,G0H1,1)
  call hol_allocation(4,5,4,1,G1H1,1)
  call hol_allocation(4,15,4,1,G2H1,1)
  call hol_allocation(4,5,4,2,G1H2,28)
  call hol_allocation(4,15,4,2,G2H2,24)
  call hol_allocation(4,1,4,4,G0H4,7)
  call hol_allocation(4,5,4,4,G1H4,36)
  call hol_allocation(4,15,4,4,G2H4,9)
  call hol_allocation(4,1,4,8,G0H8,5)
  call hol_allocation(4,5,4,8,G1H8,10)
  call hol_allocation(4,15,4,8,G2H8,4)
  call hol_allocation(4,1,4,16,G0H16,1)
  call hol_allocation(4,5,4,16,G1H16,19)
  call hol_allocation(4,1,4,32,G0H32,1)


end subroutine HOL_memory_allocation_full

!**********************************************************************
subroutine HOL_memory_allocation_optimized()
!**********************************************************************
! allocation of memory for the types hol
!**********************************************************************
  use KIND_TYPES, only: REALKIND
  use ol_loop_storage_ppttj_ttxddxg_1_/**/DREALKIND, only: nhel
  use ol_data_types_/**/REALKIND, only: hol
  use hol_initialisation_/**/REALKIND, only: hol_allocation
  implicit none

    call hol_allocation(4,1,4,min(nhel,1),G0H1,1)
  call hol_allocation(4,5,4,min(nhel,1),G1H1,1)
  call hol_allocation(4,15,4,min(nhel,1),G2H1,1)
  call hol_allocation(4,5,4,min(nhel,2),G1H2,28)
  call hol_allocation(4,15,4,min(nhel,2),G2H2,24)
  call hol_allocation(4,1,4,min(nhel,4),G0H4,7)
  call hol_allocation(4,5,4,min(nhel,4),G1H4,36)
  call hol_allocation(4,15,4,min(nhel,4),G2H4,9)
  call hol_allocation(4,1,4,min(nhel,8),G0H8,5)
  call hol_allocation(4,5,4,min(nhel,8),G1H8,10)
  call hol_allocation(4,15,4,min(nhel,8),G2H8,4)
  call hol_allocation(4,1,4,min(nhel,16),G0H16,1)
  call hol_allocation(4,5,4,min(nhel,16),G1H16,19)
  call hol_allocation(4,1,4,min(nhel,32),G0H32,1)


end subroutine HOL_memory_allocation_optimized

!**********************************************************************
subroutine HOL_memory_deallocation_/**/REALKIND(dmode)
!**********************************************************************
! allocation of memory for the types hol
!**********************************************************************
  use KIND_TYPES, only: REALKIND
  use ol_data_types_/**/REALKIND, only: hol
  use hol_initialisation_/**/REALKIND, only: hol_deallocation
  implicit none
  integer,   intent(in)    :: dmode

    call hol_deallocation(G0H1,1,dmode)
  call hol_deallocation(G1H1,1,dmode)
  call hol_deallocation(G2H1,1,dmode)
  call hol_deallocation(G1H2,28,dmode)
  call hol_deallocation(G2H2,24,dmode)
  call hol_deallocation(G0H4,7,dmode)
  call hol_deallocation(G1H4,36,dmode)
  call hol_deallocation(G2H4,9,dmode)
  call hol_deallocation(G0H8,5,dmode)
  call hol_deallocation(G1H8,10,dmode)
  call hol_deallocation(G2H8,4,dmode)
  call hol_deallocation(G0H16,1,dmode)
  call hol_deallocation(G1H16,19,dmode)
  call hol_deallocation(G0H32,1,dmode)


end subroutine HOL_memory_deallocation_/**/REALKIND

!**********************************************************************
subroutine HCL_memory_allocation()
!**********************************************************************
! allocation of memory for the types hcl
!**********************************************************************
  use KIND_TYPES, only: REALKIND
  use ol_data_types_/**/REALKIND, only: hcl
  use hol_initialisation_/**/REALKIND, only: hcl_allocation
  implicit none

  call hcl_allocation(1,G0tensor, 241)
call hcl_allocation(5,G1tensor, 165)
call hcl_allocation(15,G2tensor, 62)
call hcl_allocation(35,G3tensor, 9)


end subroutine HCL_memory_allocation


!**********************************************************************
subroutine HCL_memory_deallocation_/**/REALKIND(dmode)
!**********************************************************************
! deallocation of memory for the types hcl
!**********************************************************************
  use KIND_TYPES, only: REALKIND
  use ol_data_types_/**/REALKIND, only: hcl
  use hol_initialisation_/**/REALKIND, only: hcl_deallocation
  implicit none
  integer,   intent(in)    :: dmode

  call hcl_deallocation(G0tensor, 241,dmode)
call hcl_deallocation(G1tensor, 165,dmode)
call hcl_deallocation(G2tensor, 62,dmode)
call hcl_deallocation(G3tensor, 9,dmode)

    call hcl_deallocation(T0sum,113,dmode)
  call hcl_deallocation(T1sum,8,dmode)


end subroutine HCL_memory_deallocation_/**/REALKIND


!**********************************************************************
subroutine Tsum_memory_allocation()
!**********************************************************************
! allocation of memory for the types hcl
!**********************************************************************
  use KIND_TYPES, only: REALKIND
  use ol_data_types_/**/REALKIND, only: hcl
  use hol_initialisation_/**/REALKIND, only: hcl_allocation
  implicit none

    call hcl_allocation(1,T0sum,113)
  call hcl_allocation(5,T1sum,8)


end subroutine Tsum_memory_allocation


#ifdef PRECISION_dp
subroutine max_point(r) &
    & bind(c,name="ol_f_max_point_ppttj_ttxddxg_1")
  ! Return the number maximal tensor rank
  implicit none
  integer, intent(out) :: r
  r = 5
end subroutine max_point

subroutine tensor_rank(r) &
    & bind(c,name="ol_f_tensor_rank_ppttj_ttxddxg_1")
  ! Return the number maximal tensor rank
  implicit none
  integer, intent(out) :: r
  r = 1
end subroutine tensor_rank
#endif

subroutine reset_tensor_sum()
  use hol_initialisation_/**/REALKIND, only: hcl_allocation
  use ol_parameters_init_/**/REALKIND, only: init_hcl
  implicit none
  integer :: i

  do i = 1,113
    call init_hcl(T0sum(i))
  end do
  do i = 1,8
    call init_hcl(T1sum(i))
  end do

end subroutine reset_tensor_sum


subroutine scale_one_tsum(tsum, spow)
  use ol_parameters_decl_/**/REALKIND, only: scalefactor
  implicit none
  complex(REALKIND), intent(inout) :: tsum(:)
  integer, intent(in) :: spow ! rank 0 scale power
  real(REALKIND) :: sfinv, sfac
  integer :: sz
  sfinv = 1/scalefactor
  sfac = scalefactor**spow
  sz = size(tsum)
  tsum(1) = sfac*tsum(1)
  if (sz > 1) then ! rank 1
    sfac = sfac*sfinv
    tsum(2:5) = sfac*tsum(2:5)
  end if
  if (sz > 5) then ! rank 2
    sfac = sfac*sfinv
    tsum(6:15) = sfac*tsum(6:15)
  end if
  if (sz > 15) then ! rank 3
    sfac = sfac*sfinv
    tsum(16:35) = sfac*tsum(16:35)
  end if
  if (sz > 35) then ! rank 4
    sfac = sfac*sfinv
    tsum(36:70) = sfac*tsum(36:70)
  end if
  if (sz > 70) then ! rank 5
    sfac = sfac*sfinv
    tsum(71:126) = sfac*tsum(71:126)
  end if
  if (sz > 126) then ! rank 6
    sfac = sfac*sfinv
    tsum(127:210) = sfac*tsum(127:210)
  end if
  if (sz > 210) then ! rank 7
    sfac = sfac*sfinv
    tsum(211:330) = sfac*tsum(211:330)
  end if
end subroutine scale_one_tsum


subroutine scale_tensor_sum()
  implicit none
  call scale_one_tsum(T1sum(1)%cmp, 4)
  call scale_one_tsum(T1sum(2)%cmp, 4)
  call scale_one_tsum(T1sum(3)%cmp, 4)
  call scale_one_tsum(T1sum(4)%cmp, 4)
  call scale_one_tsum(T1sum(5)%cmp, 4)
  call scale_one_tsum(T1sum(6)%cmp, 4)
  call scale_one_tsum(T1sum(7)%cmp, 4)
  call scale_one_tsum(T1sum(8)%cmp, 4)
  call scale_one_tsum(T0sum(1)%cmp, 2)
  call scale_one_tsum(T0sum(2)%cmp, 2)
  call scale_one_tsum(T0sum(3)%cmp, 2)
  call scale_one_tsum(T0sum(4)%cmp, 2)
  call scale_one_tsum(T0sum(5)%cmp, 2)
  call scale_one_tsum(T0sum(6)%cmp, 2)
  call scale_one_tsum(T0sum(7)%cmp, 2)
  call scale_one_tsum(T0sum(8)%cmp, 2)
  call scale_one_tsum(T0sum(9)%cmp, 2)
  call scale_one_tsum(T0sum(10)%cmp, 2)
  call scale_one_tsum(T0sum(11)%cmp, 2)
  call scale_one_tsum(T0sum(12)%cmp, 2)
  call scale_one_tsum(T0sum(13)%cmp, 2)
  call scale_one_tsum(T0sum(14)%cmp, 2)
  call scale_one_tsum(T0sum(15)%cmp, 2)
  call scale_one_tsum(T0sum(16)%cmp, 2)
  call scale_one_tsum(T0sum(17)%cmp, 2)
  call scale_one_tsum(T0sum(18)%cmp, 2)
  call scale_one_tsum(T0sum(19)%cmp, 2)
  call scale_one_tsum(T0sum(20)%cmp, 2)
  call scale_one_tsum(T0sum(21)%cmp, 2)
  call scale_one_tsum(T0sum(22)%cmp, 2)
  call scale_one_tsum(T0sum(23)%cmp, 2)
  call scale_one_tsum(T0sum(24)%cmp, 2)
  call scale_one_tsum(T0sum(25)%cmp, 2)
  call scale_one_tsum(T0sum(26)%cmp, 2)
  call scale_one_tsum(T0sum(27)%cmp, 2)
  call scale_one_tsum(T0sum(28)%cmp, 2)
  call scale_one_tsum(T0sum(29)%cmp, 2)
  call scale_one_tsum(T0sum(30)%cmp, 2)
  call scale_one_tsum(T0sum(31)%cmp, 2)
  call scale_one_tsum(T0sum(32)%cmp, 2)
  call scale_one_tsum(T0sum(33)%cmp, 2)
  call scale_one_tsum(T0sum(34)%cmp, 0)
  call scale_one_tsum(T0sum(35)%cmp, 0)
  call scale_one_tsum(T0sum(36)%cmp, 0)
  call scale_one_tsum(T0sum(37)%cmp, 0)
  call scale_one_tsum(T0sum(38)%cmp, 0)
  call scale_one_tsum(T0sum(39)%cmp, 0)
  call scale_one_tsum(T0sum(40)%cmp, 0)
  call scale_one_tsum(T0sum(41)%cmp, 0)
  call scale_one_tsum(T0sum(42)%cmp, 0)
  call scale_one_tsum(T0sum(43)%cmp, 0)
  call scale_one_tsum(T0sum(44)%cmp, 0)
  call scale_one_tsum(T0sum(45)%cmp, 0)
  call scale_one_tsum(T0sum(46)%cmp, 0)
  call scale_one_tsum(T0sum(47)%cmp, 0)
  call scale_one_tsum(T0sum(48)%cmp, 0)
  call scale_one_tsum(T0sum(49)%cmp, 0)
  call scale_one_tsum(T0sum(50)%cmp, 0)
  call scale_one_tsum(T0sum(51)%cmp, 0)
  call scale_one_tsum(T0sum(52)%cmp, 0)
  call scale_one_tsum(T0sum(53)%cmp, 0)
  call scale_one_tsum(T0sum(54)%cmp, 0)
  call scale_one_tsum(T0sum(55)%cmp, 0)
  call scale_one_tsum(T0sum(56)%cmp, 0)
  call scale_one_tsum(T0sum(57)%cmp, 0)
  call scale_one_tsum(T0sum(58)%cmp, 0)
  call scale_one_tsum(T0sum(59)%cmp, 0)
  call scale_one_tsum(T0sum(60)%cmp, 0)
  call scale_one_tsum(T0sum(61)%cmp, 0)
  call scale_one_tsum(T0sum(62)%cmp, 0)
  call scale_one_tsum(T0sum(63)%cmp, 0)
  call scale_one_tsum(T0sum(64)%cmp, 0)
  call scale_one_tsum(T0sum(65)%cmp, 0)
  call scale_one_tsum(T0sum(66)%cmp, 0)
  call scale_one_tsum(T0sum(67)%cmp, 0)
  call scale_one_tsum(T0sum(68)%cmp, 0)
  call scale_one_tsum(T0sum(69)%cmp, 0)
  call scale_one_tsum(T0sum(70)%cmp, 0)
  call scale_one_tsum(T0sum(71)%cmp, 0)
  call scale_one_tsum(T0sum(72)%cmp, 0)
  call scale_one_tsum(T0sum(73)%cmp, 0)
  call scale_one_tsum(T0sum(74)%cmp, 0)
  call scale_one_tsum(T0sum(75)%cmp, 0)
  call scale_one_tsum(T0sum(76)%cmp, 0)
  call scale_one_tsum(T0sum(77)%cmp, 0)
  call scale_one_tsum(T0sum(78)%cmp, 0)
  call scale_one_tsum(T0sum(79)%cmp, 0)
  call scale_one_tsum(T0sum(80)%cmp, 0)
  call scale_one_tsum(T0sum(81)%cmp, 0)
  call scale_one_tsum(T0sum(82)%cmp, 0)
  call scale_one_tsum(T0sum(83)%cmp, 0)
  call scale_one_tsum(T0sum(84)%cmp, -2)
  call scale_one_tsum(T0sum(85)%cmp, -2)
  call scale_one_tsum(T0sum(86)%cmp, -2)
  call scale_one_tsum(T0sum(87)%cmp, -2)
  call scale_one_tsum(T0sum(88)%cmp, -2)
  call scale_one_tsum(T0sum(89)%cmp, -2)
  call scale_one_tsum(T0sum(90)%cmp, -2)
  call scale_one_tsum(T0sum(91)%cmp, -2)
  call scale_one_tsum(T0sum(92)%cmp, -2)
  call scale_one_tsum(T0sum(93)%cmp, -2)
  call scale_one_tsum(T0sum(94)%cmp, -2)
  call scale_one_tsum(T0sum(95)%cmp, -2)
  call scale_one_tsum(T0sum(96)%cmp, -2)
  call scale_one_tsum(T0sum(97)%cmp, -2)
  call scale_one_tsum(T0sum(98)%cmp, -2)
  call scale_one_tsum(T0sum(99)%cmp, -2)
  call scale_one_tsum(T0sum(100)%cmp, -2)
  call scale_one_tsum(T0sum(101)%cmp, -2)
  call scale_one_tsum(T0sum(102)%cmp, -2)
  call scale_one_tsum(T0sum(103)%cmp, -2)
  call scale_one_tsum(T0sum(104)%cmp, -2)
  call scale_one_tsum(T0sum(105)%cmp, -2)
  call scale_one_tsum(T0sum(106)%cmp, -2)
  call scale_one_tsum(T0sum(107)%cmp, -2)
  call scale_one_tsum(T0sum(108)%cmp, -2)
  call scale_one_tsum(T0sum(109)%cmp, -2)
  call scale_one_tsum(T0sum(110)%cmp, -2)
  call scale_one_tsum(T0sum(111)%cmp, -2)
  call scale_one_tsum(T0sum(112)%cmp, -2)
  call scale_one_tsum(T0sum(113)%cmp, -2)

end subroutine scale_tensor_sum

! **********************************************************************
subroutine set_integral_masses_and_momenta()
! **********************************************************************

  use ol_parameters_decl_/**/REALKIND
  momenta_1 = [ 0, 0 ]
  momenta_2 = [ 16, 15 ]
  momenta_3 = [ 17, 14 ]
  momenta_4 = [ 18, 13 ]
  momenta_5 = [ 19, 12 ]
  momenta_6 = [ 20, 11 ]
  momenta_7 = [ 21, 10 ]
  momenta_8 = [ 22, 9 ]
  momenta_9 = [ 23, 8 ]
  momenta_10 = [ 24, 7 ]
  momenta_11 = [ 25, 6 ]
  momenta_12 = [ 26, 5 ]
  momenta_13 = [ 27, 4 ]
  momenta_14 = [ 28, 3 ]
  momenta_15 = [ 29, 2 ]
  momenta_16 = [ 30, 1 ]
  momenta_17 = [ 16, 1, 14 ]
  momenta_18 = [ 16, 2, 13 ]
  momenta_19 = [ 16, 3, 12 ]
  momenta_20 = [ 16, 4, 11 ]
  momenta_21 = [ 16, 5, 10 ]
  momenta_22 = [ 16, 6, 9 ]
  momenta_23 = [ 16, 7, 8 ]
  momenta_24 = [ 16, 9, 6 ]
  momenta_25 = [ 16, 11, 4 ]
  momenta_26 = [ 16, 13, 2 ]
  momenta_27 = [ 17, 2, 12 ]
  momenta_28 = [ 17, 4, 10 ]
  momenta_29 = [ 17, 6, 8 ]
  momenta_30 = [ 17, 8, 6 ]
  momenta_31 = [ 17, 10, 4 ]
  momenta_32 = [ 17, 12, 2 ]
  momenta_33 = [ 18, 1, 12 ]
  momenta_34 = [ 18, 5, 8 ]
  momenta_35 = [ 18, 9, 4 ]
  momenta_36 = [ 19, 4, 8 ]
  momenta_37 = [ 19, 8, 4 ]
  momenta_38 = [ 20, 1, 10 ]
  momenta_39 = [ 20, 2, 9 ]
  momenta_40 = [ 20, 3, 8 ]
  momenta_41 = [ 21, 2, 8 ]
  momenta_42 = [ 21, 8, 2 ]
  momenta_43 = [ 22, 1, 8 ]
  momenta_44 = [ 24, 1, 6 ]
  momenta_45 = [ 24, 2, 5 ]
  momenta_46 = [ 24, 3, 4 ]
  momenta_47 = [ 24, 4, 3 ]
  momenta_48 = [ 24, 5, 2 ]
  momenta_49 = [ 24, 6, 1 ]
  momenta_50 = [ 25, 2, 4 ]
  momenta_51 = [ 25, 4, 2 ]
  momenta_52 = [ 26, 1, 4 ]
  momenta_53 = [ 26, 4, 1 ]
  momenta_54 = [ 28, 1, 2 ]
  momenta_55 = [ 28, 2, 1 ]
  momenta_56 = [ 16, 1, 2, 12 ]
  momenta_57 = [ 16, 1, 4, 10 ]
  momenta_58 = [ 16, 1, 6, 8 ]
  momenta_59 = [ 16, 1, 8, 6 ]
  momenta_60 = [ 16, 1, 10, 4 ]
  momenta_61 = [ 16, 1, 12, 2 ]
  momenta_62 = [ 16, 2, 1, 12 ]
  momenta_63 = [ 16, 2, 5, 8 ]
  momenta_64 = [ 16, 2, 9, 4 ]
  momenta_65 = [ 16, 3, 4, 8 ]
  momenta_66 = [ 16, 3, 8, 4 ]
  momenta_67 = [ 16, 4, 1, 10 ]
  momenta_68 = [ 16, 4, 2, 9 ]
  momenta_69 = [ 16, 4, 3, 8 ]
  momenta_70 = [ 16, 5, 2, 8 ]
  momenta_71 = [ 16, 5, 8, 2 ]
  momenta_72 = [ 16, 6, 1, 8 ]
  momenta_73 = [ 16, 9, 4, 2 ]
  momenta_74 = [ 17, 2, 4, 8 ]
  momenta_75 = [ 17, 2, 8, 4 ]
  momenta_76 = [ 17, 4, 8, 2 ]
  momenta_77 = [ 17, 8, 4, 2 ]
  momenta_78 = [ 18, 1, 4, 8 ]
  momenta_79 = [ 18, 1, 8, 4 ]
  momenta_80 = [ 20, 1, 2, 8 ]
  momenta_81 = [ 20, 2, 1, 8 ]
  momenta_82 = [ 24, 1, 2, 4 ]
  momenta_83 = [ 24, 2, 1, 4 ]
  momenta_84 = [ 24, 4, 1, 2 ]
  momenta_85 = [ 24, 4, 2, 1 ]
  momenta_86 = [ 16, 1, 2, 4, 8 ]
  momenta_87 = [ 16, 1, 2, 8, 4 ]
  momenta_88 = [ 16, 1, 4, 8, 2 ]
  momenta_89 = [ 16, 1, 8, 4, 2 ]
  momenta_90 = [ 16, 2, 1, 4, 8 ]
  momenta_91 = [ 16, 2, 1, 8, 4 ]
  momenta_92 = [ 16, 4, 1, 2, 8 ]
  momenta_93 = [ 16, 4, 2, 1, 8 ]

  masses2_1 = [ 0, 0 ]
  masses2_2 = [ nMB, 0 ]
  masses2_3 = [ nMT, 0 ]
  masses2_4 = [ nMB, nMB ]
  masses2_5 = [ 0, nMT ]
  masses2_6 = [ nMT, nMT ]
  masses2_7 = [ 0, 0, 0 ]
  masses2_8 = [ nMT, 0, 0 ]
  masses2_9 = [ 0, 0, nMT ]
  masses2_10 = [ nMT, 0, nMT ]
  masses2_11 = [ nMB, nMB, nMB ]
  masses2_12 = [ 0, nMT, 0 ]
  masses2_13 = [ nMT, nMT, 0 ]
  masses2_14 = [ 0, nMT, nMT ]
  masses2_15 = [ nMT, nMT, nMT ]
  masses2_16 = [ 0, 0, 0, 0 ]
  masses2_17 = [ nMT, 0, 0, 0 ]
  masses2_18 = [ 0, 0, 0, nMT ]
  masses2_19 = [ 0, 0, nMT, 0 ]
  masses2_20 = [ 0, 0, nMT, nMT ]
  masses2_21 = [ 0, nMT, 0, 0 ]
  masses2_22 = [ nMT, nMT, 0, 0 ]
  masses2_23 = [ nMT, nMT, 0, nMT ]
  masses2_24 = [ 0, 0, 0, nMT, 0 ]
  masses2_25 = [ 0, 0, nMT, 0, 0 ]
  masses2_26 = [ nMT, nMT, 0, 0, 0 ]


end subroutine  set_integral_masses_and_momenta

! **********************************************************************
subroutine integrate_tensor_sum(M2out)
! **********************************************************************
  use ol_parameters_decl_/**/REALKIND ! only: ZERO, masses
#ifndef PRECISION_dp
  use ol_parameters_decl_/**/DREALKIND, only: a_switch
#endif
  use ol_parameters_init_/**/REALKIND, only: init_met, add_met, met_to_real
  use ol_loop_routines_/**/REALKIND, only: TI_call_OL
  implicit none
  real(REALKIND), intent(out) :: M2out
  type(met) :: M2
  call init_met(M2)

sbarray_1 = [1, 2, 3, 4, 5]
sbarray_2 = [6, 7, 8, 4, 9]
sbarray_3 = [10, 2, 11, 12, 13]
sbarray_4 = [14, 7, 15, 12, 16]
sbarray_5 = [17, 18, 19, 20, 21]
sbarray_6 = [22, 23, 19, 24, 25]
sbarray_7 = [26, 27, 28, 29, 30]
sbarray_8 = [31, 32, 28, 33, 34]


#ifdef LOOPSQUARED
  if (a_switch == 1 .or. a_switch == 7) then
#endif
  call TI_call_OL(0,0, momenta_62, masses2_19, T0sum(1), M2,[4], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_56, masses2_19, T0sum(2), M2,[12], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_84, masses2_18, T0sum(3), M2,[21], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_67, masses2_18, T0sum(4), M2,[20], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_85, masses2_18, T0sum(5), M2,[25], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_68, masses2_18, T0sum(6), M2,[24], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_78, masses2_21, T0sum(7), M2,[1], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_57, masses2_22, T0sum(8), M2,[29], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_79, masses2_21, T0sum(9), M2,[6], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_59, masses2_22, T0sum(10), M2,[33], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_83, masses2_19, T0sum(11), M2,[5], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_65, masses2_16, T0sum(12), M2,[2], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_63, masses2_19, T0sum(13), M2,[3], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_81, masses2_19, T0sum(14), M2,[22], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_66, masses2_16, T0sum(15), M2,[7], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_64, masses2_19, T0sum(16), M2,[8], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_82, masses2_19, T0sum(17), M2,[13], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_74, masses2_21, T0sum(18), M2,[10], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_58, masses2_19, T0sum(19), M2,[11], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_80, masses2_19, T0sum(20), M2,[17], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_75, masses2_21, T0sum(21), M2,[14], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_60, masses2_19, T0sum(22), M2,[15], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_70, masses2_19, T0sum(23), M2,[18], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_69, masses2_16, T0sum(24), M2,[19], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_72, masses2_19, T0sum(25), M2,[23], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_76, masses2_17, T0sum(26), M2,[26], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_71, masses2_22, T0sum(27), M2,[27], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_61, masses2_22, T0sum(28), M2,[28], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_77, masses2_17, T0sum(29), M2,[31], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_73, masses2_22, T0sum(30), M2,[32], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_61, masses2_20, T0sum(31), M2)
  call TI_call_OL(0,0, momenta_56, masses2_23, T0sum(32), M2)
  call TI_call_OL(0,0, momenta_62, masses2_23, T0sum(33), M2)
  call TI_call_OL(0,0, momenta_19, masses2_7, T0sum(34), M2)
  call TI_call_OL(0,0, momenta_20, masses2_7, T0sum(35), M2)
  call TI_call_OL(0,0, momenta_17, masses2_9, T0sum(36), M2)
  call TI_call_OL(0,0, momenta_47, masses2_7, T0sum(37), M2)
  call TI_call_OL(0,0, momenta_33, masses2_12, T0sum(38), M2)
  call TI_call_OL(0,0, momenta_17, masses2_13, T0sum(39), M2)
  call TI_call_OL(0,0, momenta_40, masses2_7, T0sum(40), M2)
  call TI_call_OL(0,0, momenta_46, masses2_7, T0sum(41), M2)
  call TI_call_OL(0,0, momenta_54, masses2_13, T0sum(42), M2)
  call TI_call_OL(0,0, momenta_54, masses2_9, T0sum(43), M2)
  call TI_call_OL(0,0, momenta_55, masses2_13, T0sum(44), M2)
  call TI_call_OL(0,0, momenta_18, masses2_13, T0sum(45), M2)
  call TI_call_OL(0,0, momenta_55, masses2_9, T0sum(46), M2)
  call TI_call_OL(0,0, momenta_18, masses2_9, T0sum(47), M2)
  call TI_call_OL(0,0, momenta_27, masses2_12, T0sum(48), M2)
  call TI_call_OL(0,0, momenta_53, masses2_8, T0sum(49), M2)
  call TI_call_OL(0,0, momenta_48, masses2_9, T0sum(50), M2)
  call TI_call_OL(0,0, momenta_38, masses2_9, T0sum(51), M2)
  call TI_call_OL(0,0, momenta_21, masses2_9, T0sum(52), M2)
  call TI_call_OL(0,0, momenta_51, masses2_8, T0sum(53), M2)
  call TI_call_OL(0,0, momenta_49, masses2_9, T0sum(54), M2)
  call TI_call_OL(0,0, momenta_39, masses2_9, T0sum(55), M2)
  call TI_call_OL(0,0, momenta_22, masses2_9, T0sum(56), M2)
  call TI_call_OL(0,0, momenta_52, masses2_12, T0sum(57), M2)
  call TI_call_OL(0,0, momenta_36, masses2_7, T0sum(58), M2)
  call TI_call_OL(0,0, momenta_34, masses2_12, T0sum(59), M2)
  call TI_call_OL(0,0, momenta_28, masses2_8, T0sum(60), M2)
  call TI_call_OL(0,0, momenta_21, masses2_13, T0sum(61), M2)
  call TI_call_OL(0,0, momenta_43, masses2_12, T0sum(62), M2)
  call TI_call_OL(0,0, momenta_37, masses2_7, T0sum(63), M2)
  call TI_call_OL(0,0, momenta_35, masses2_12, T0sum(64), M2)
  call TI_call_OL(0,0, momenta_30, masses2_8, T0sum(65), M2)
  call TI_call_OL(0,0, momenta_24, masses2_13, T0sum(66), M2)
  call TI_call_OL(0,0, momenta_45, masses2_9, T0sum(67), M2)
  call TI_call_OL(0,0, momenta_23, masses2_7, T0sum(68), M2)
  call TI_call_OL(0,0, momenta_25, masses2_7, T0sum(69), M2)
  call TI_call_OL(0,0, momenta_50, masses2_12, T0sum(70), M2)
  call TI_call_OL(0,0, momenta_44, masses2_9, T0sum(71), M2)
  call TI_call_OL(0,0, momenta_29, masses2_12, T0sum(72), M2)
  call TI_call_OL(0,0, momenta_41, masses2_12, T0sum(73), M2)
  call TI_call_OL(0,0, momenta_31, masses2_12, T0sum(74), M2)
  call TI_call_OL(0,0, momenta_42, masses2_8, T0sum(75), M2)
  call TI_call_OL(0,0, momenta_32, masses2_8, T0sum(76), M2)
  call TI_call_OL(0,0, momenta_26, masses2_13, T0sum(77), M2)
  call TI_call_OL(0,0, momenta_33, masses2_10, T0sum(78), M2)
  call TI_call_OL(0,0, momenta_32, masses2_14, T0sum(79), M2)
  call TI_call_OL(0,0, momenta_26, masses2_9, T0sum(80), M2)
  call TI_call_OL(0,0, momenta_27, masses2_10, T0sum(81), M2)
  call TI_call_OL(0,0, momenta_19, masses2_15, T0sum(82), M2)
  call TI_call_OL(0,0, momenta_19, masses2_11, T0sum(83), M2)
  call TI_call_OL(0,0, momenta_14, masses2_1, T0sum(84), M2)
  call TI_call_OL(0,0, momenta_5, masses2_1, T0sum(85), M2)
  call TI_call_OL(0,0, momenta_2, masses2_1, T0sum(86), M2)
  call TI_call_OL(0,0, momenta_13, masses2_1, T0sum(87), M2)
  call TI_call_OL(0,0, momenta_6, masses2_1, T0sum(88), M2)
  call TI_call_OL(0,0, momenta_16, masses2_3, T0sum(89), M2)
  call TI_call_OL(0,0, momenta_3, masses2_5, T0sum(90), M2)
  call TI_call_OL(0,0, momenta_1, masses2_3, T0sum(91), M2)
  call TI_call_OL(0,0, momenta_10, masses2_1, T0sum(92), M2)
  call TI_call_OL(0,0, momenta_16, masses2_5, T0sum(93), M2)
  call TI_call_OL(0,0, momenta_4, masses2_5, T0sum(94), M2)
  call TI_call_OL(0,0, momenta_3, masses2_3, T0sum(95), M2)
  call TI_call_OL(0,0, momenta_2, masses2_6, T0sum(96), M2)
  call TI_call_OL(0,0, momenta_9, masses2_1, T0sum(97), M2)
  call TI_call_OL(0,0, momenta_15, masses2_3, T0sum(98), M2)
  call TI_call_OL(0,0, momenta_14, masses2_6, T0sum(99), M2)
  call TI_call_OL(0,0, momenta_15, masses2_5, T0sum(100), M2)
  call TI_call_OL(0,0, momenta_4, masses2_3, T0sum(101), M2)
  call TI_call_OL(0,0, momenta_5, masses2_6, T0sum(102), M2)
  call TI_call_OL(0,0, momenta_14, masses2_4, T0sum(103), M2)
  call TI_call_OL(0,0, momenta_1, masses2_2, T0sum(104), M2)
  call TI_call_OL(0,0, momenta_5, masses2_4, T0sum(105), M2)
  call TI_call_OL(0,0, momenta_2, masses2_4, T0sum(106), M2)
  call TI_call_OL(0,0, momenta_12, masses2_3, T0sum(107), M2)
  call TI_call_OL(0,0, momenta_7, masses2_5, T0sum(108), M2)
  call TI_call_OL(0,0, momenta_11, masses2_3, T0sum(109), M2)
  call TI_call_OL(0,0, momenta_8, masses2_5, T0sum(110), M2)
  call TI_call_OL(0,0, momenta_12, masses2_5, T0sum(111), M2)
  call TI_call_OL(0,0, momenta_7, masses2_3, T0sum(112), M2)
  call TI_call_OL(0,0, momenta_11, masses2_5, T0sum(113), M2)

  call TI_call_OL(0,1, momenta_90, masses2_25, T1sum(1), M2,sbarray_1, ScalarBoxes(:))
  call TI_call_OL(0,1, momenta_91, masses2_25, T1sum(2), M2,sbarray_2, ScalarBoxes(:))
  call TI_call_OL(0,1, momenta_86, masses2_25, T1sum(3), M2,sbarray_3, ScalarBoxes(:))
  call TI_call_OL(0,1, momenta_87, masses2_25, T1sum(4), M2,sbarray_4, ScalarBoxes(:))
  call TI_call_OL(0,1, momenta_92, masses2_24, T1sum(5), M2,sbarray_5, ScalarBoxes(:))
  call TI_call_OL(0,1, momenta_93, masses2_24, T1sum(6), M2,sbarray_6, ScalarBoxes(:))
  call TI_call_OL(0,1, momenta_88, masses2_26, T1sum(7), M2,sbarray_7, ScalarBoxes(:))
  call TI_call_OL(0,1, momenta_89, masses2_26, T1sum(8), M2,sbarray_8, ScalarBoxes(:))

  call add_met(M2,M2L1R1)

#ifdef LOOPSQUARED
  end if
#endif

  call met_to_real(M2out,M2)

#ifdef PRECISION_dp
  call HOL_memory_deallocation_/**/REALKIND(1)
  call HCL_memory_deallocation_/**/REALKIND(1)
#endif

end subroutine integrate_tensor_sum

end module ol_tensor_sum_storage_ppttj_ttxddxg_1_/**/REALKIND
