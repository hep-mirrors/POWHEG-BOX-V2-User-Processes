
! **********************************************************************
module ol_tables_storage_ppttj_ttxggg_1_/**/REALKIND
! **********************************************************************
  use KIND_TYPES, only: REALKIND, QREALKIND, intkind2
  use ol_data_types_/**/REALKIND, only: hol
  use ol_data_types_/**/REALKIND, only: basis, redset4, redset5
 use ol_data_types_/**/REALKIND, only: scalarbox 

  implicit none

  ! helicity tables for the 1-loop recursion
integer(intkind2), save :: h0tab(32,630)
integer(intkind2), save :: heltab2x2(2,2,541)
integer(intkind2), save :: heltab2x4(2,4,411)
integer(intkind2), save :: heltab3x4(3,4,18)
integer(intkind2), save :: heltab2x8(2,8,304)
integer(intkind2), save :: heltab3x8(3,8,12)
integer(intkind2), save :: heltab2x16(2,16,175)
integer(intkind2), save :: heltab3x16(3,16,24)
integer(intkind2), save :: heltab2x32(2,32,483)
integer(intkind2), save :: heltab3x32(3,32,147)


  ! number of helicity states for openloops recursion steps
integer(intkind2), save :: m0h(630)
integer(intkind2), save :: m3h2x1(3,541)
integer(intkind2), save :: m3h4x1(3,104)
integer(intkind2), save :: m3h8x1(3,75)
integer(intkind2), save :: m3h2x2(3,307)
integer(intkind2), save :: m3h4x2(3,77)
integer(intkind2), save :: m3h8x2(3,27)
integer(intkind2), save :: m3h2x4(3,152)
integer(intkind2), save :: m3h4x4(3,38)
integer(intkind2), save :: m3h8x4(3,144)
integer(intkind2), save :: m3h2x8(3,110)
integer(intkind2), save :: m3h4x8(3,120)
integer(intkind2), save :: m3h2x16(3,219)
integer(intkind2), save :: m4h2x2x1(4,18)
integer(intkind2), save :: m4h4x2x1(4,3)
integer(intkind2), save :: m4h8x2x1(4,6)
integer(intkind2), save :: m4h2x4x1(4,6)
integer(intkind2), save :: m4h4x4x1(4,3)
integer(intkind2), save :: m4h2x8x1(4,12)
integer(intkind2), save :: m4h2x2x2(4,3)
integer(intkind2), save :: m4h4x2x2(4,1)
integer(intkind2), save :: m4h8x2x2(4,12)
integer(intkind2), save :: m4h2x4x2(4,2)
integer(intkind2), save :: m4h4x4x2(4,6)
integer(intkind2), save :: m4h2x8x2(4,24)
integer(intkind2), save :: m4h4x2x4(4,11)
integer(intkind2), save :: m4h2x4x4(4,22)
integer(intkind2), save :: m4h2x2x8(4,72)

integer(intkind2), save :: n2h1(468)
integer(intkind2), save :: n2h2(228)
integer(intkind2), save :: n2h4(242)
integer(intkind2), save :: n2h8(154)
integer(intkind2), save :: n2h16(118)


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
m4h2x2x1(1,:)=2
m4h2x2x1(2,:)=2
m4h2x2x1(3,:)=1
m4h2x2x1(4,:)=4
m4h4x2x1(1,:)=4
m4h4x2x1(2,:)=2
m4h4x2x1(3,:)=1
m4h4x2x1(4,:)=8
m4h8x2x1(1,:)=8
m4h8x2x1(2,:)=2
m4h8x2x1(3,:)=1
m4h8x2x1(4,:)=16
m4h2x4x1(1,:)=2
m4h2x4x1(2,:)=4
m4h2x4x1(3,:)=1
m4h2x4x1(4,:)=8
m4h4x4x1(1,:)=4
m4h4x4x1(2,:)=4
m4h4x4x1(3,:)=1
m4h4x4x1(4,:)=16
m4h2x8x1(1,:)=2
m4h2x8x1(2,:)=8
m4h2x8x1(3,:)=1
m4h2x8x1(4,:)=16
m4h2x2x2(1,:)=2
m4h2x2x2(2,:)=2
m4h2x2x2(3,:)=2
m4h2x2x2(4,:)=8
m4h4x2x2(1,:)=4
m4h4x2x2(2,:)=2
m4h4x2x2(3,:)=2
m4h4x2x2(4,:)=16
m4h8x2x2(1,:)=8
m4h8x2x2(2,:)=2
m4h8x2x2(3,:)=2
m4h8x2x2(4,:)=32
m4h2x4x2(1,:)=2
m4h2x4x2(2,:)=4
m4h2x4x2(3,:)=2
m4h2x4x2(4,:)=16
m4h4x4x2(1,:)=4
m4h4x4x2(2,:)=4
m4h4x4x2(3,:)=2
m4h4x4x2(4,:)=32
m4h2x8x2(1,:)=2
m4h2x8x2(2,:)=8
m4h2x8x2(3,:)=2
m4h2x8x2(4,:)=32
m4h4x2x4(1,:)=4
m4h4x2x4(2,:)=2
m4h4x2x4(3,:)=4
m4h4x2x4(4,:)=32
m4h2x4x4(1,:)=2
m4h2x4x4(2,:)=4
m4h2x4x4(3,:)=4
m4h2x4x4(4,:)=32
m4h2x2x8(1,:)=2
m4h2x2x8(2,:)=2
m4h2x2x8(3,:)=8
m4h2x2x8(4,:)=32

n2h1(:)=1
n2h2(:)=2
n2h4(:)=4
n2h8(:)=8
n2h16(:)=16


end subroutine HOL_m3_init

!**********************************************************************

end module ol_tables_storage_ppttj_ttxggg_1_/**/REALKIND

! **********************************************************************
module ol_tensor_sum_storage_ppttj_ttxggg_1_/**/REALKIND
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
  type(hol), save :: G0H2(42)
  type(hol), save :: G1H2(408)
  type(hol), save :: G2H2(231)
  type(hol), save :: G0H4(25)
  type(hol), save :: G1H4(145)
  type(hol), save :: G2H4(54)
  type(hol), save :: G0H8(42)
  type(hol), save :: G1H8(80)
  type(hol), save :: G2H8(36)
  type(hol), save :: G0H16(1)
  type(hol), save :: G1H16(102)
  type(hol), save :: G0H32(1)
  type(hcl), save, dimension(486) :: G0tensor
  type(hcl), save, dimension(471) :: G1tensor
  type(hcl), save, dimension(442) :: G2tensor
  type(hcl), save, dimension(126) :: G3tensor



  ! Declarations for on-the-fly tensor reduction
type (basis),      save :: RedBasis(67)
type (redset4),    save :: RedSet_4(54)
type (redset5),    save :: RedSet_5(12)
integer, save :: mass2set(0:1,5)
integer, save :: mass3set(0:2,9)
integer, save :: mass4set(0:3,15)
integer, save :: mass5set(0:4,8)



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
  integer, save :: momenta_56(3)
  integer, save :: momenta_57(3)
  integer, save :: momenta_58(3)
  integer, save :: momenta_59(3)
  integer, save :: momenta_60(3)
  integer, save :: momenta_61(3)
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
  integer, save :: momenta_86(4)
  integer, save :: momenta_87(4)
  integer, save :: momenta_88(4)
  integer, save :: momenta_89(4)
  integer, save :: momenta_90(4)
  integer, save :: momenta_91(4)
  integer, save :: momenta_92(4)
  integer, save :: momenta_93(4)
  integer, save :: momenta_94(4)
  integer, save :: momenta_95(4)
  integer, save :: momenta_96(4)
  integer, save :: momenta_97(4)
  integer, save :: momenta_98(4)
  integer, save :: momenta_99(4)
  integer, save :: momenta_100(4)
  integer, save :: momenta_101(4)
  integer, save :: momenta_102(4)
  integer, save :: momenta_103(4)
  integer, save :: momenta_104(5)
  integer, save :: momenta_105(5)
  integer, save :: momenta_106(5)
  integer, save :: momenta_107(5)
  integer, save :: momenta_108(5)
  integer, save :: momenta_109(5)
  integer, save :: momenta_110(5)
  integer, save :: momenta_111(5)
  integer, save :: momenta_112(5)
  integer, save :: momenta_113(5)
  integer, save :: momenta_114(5)
  integer, save :: momenta_115(5)

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
  integer, save :: masses2_24(4)
  integer, save :: masses2_25(4)
  integer, save :: masses2_26(4)
  integer, save :: masses2_27(4)
  integer, save :: masses2_28(4)
  integer, save :: masses2_29(4)
  integer, save :: masses2_30(4)
  integer, save :: masses2_31(5)
  integer, save :: masses2_32(5)
  integer, save :: masses2_33(5)
  integer, save :: masses2_34(5)
  integer, save :: masses2_35(5)
  integer, save :: masses2_36(5)
  integer, save :: masses2_37(5)
  integer, save :: masses2_38(5)

type(scalarbox), save :: ScalarBoxes(92)

integer, save :: sbarray_1(5)
integer, save :: sbarray_2(5)
integer, save :: sbarray_3(5)
integer, save :: sbarray_4(5)
integer, save :: sbarray_5(5)
integer, save :: sbarray_6(5)
integer, save :: sbarray_7(5)
integer, save :: sbarray_8(5)
integer, save :: sbarray_9(5)
integer, save :: sbarray_10(5)
integer, save :: sbarray_11(5)
integer, save :: sbarray_12(5)
integer, save :: sbarray_13(5)
integer, save :: sbarray_14(5)
integer, save :: sbarray_15(5)
integer, save :: sbarray_16(5)
integer, save :: sbarray_17(5)
integer, save :: sbarray_18(5)
integer, save :: sbarray_19(5)
integer, save :: sbarray_20(5)
integer, save :: sbarray_21(5)
integer, save :: sbarray_22(5)
integer, save :: sbarray_23(5)
integer, save :: sbarray_24(5)

  type(hcl), save, dimension(234) :: T0sum
  type(hcl), save, dimension(51) :: T1sum


  contains

!**********************************************************************
subroutine HOL_memory_allocation_full()
!**********************************************************************
! allocation of memory for the types hol
!**********************************************************************
  use KIND_TYPES, only: REALKIND
  use ol_loop_storage_ppttj_ttxggg_1_/**/DREALKIND, only: nhel
  use ol_data_types_/**/REALKIND, only: hol
  use hol_initialisation_/**/REALKIND, only: hol_allocation
  implicit none

    call hol_allocation(4,1,4,1,G0H1,1)
  call hol_allocation(4,5,4,1,G1H1,1)
  call hol_allocation(4,15,4,1,G2H1,1)
  call hol_allocation(4,1,4,2,G0H2,42)
  call hol_allocation(4,5,4,2,G1H2,408)
  call hol_allocation(4,15,4,2,G2H2,231)
  call hol_allocation(4,1,4,4,G0H4,25)
  call hol_allocation(4,5,4,4,G1H4,145)
  call hol_allocation(4,15,4,4,G2H4,54)
  call hol_allocation(4,1,4,8,G0H8,42)
  call hol_allocation(4,5,4,8,G1H8,80)
  call hol_allocation(4,15,4,8,G2H8,36)
  call hol_allocation(4,1,4,16,G0H16,1)
  call hol_allocation(4,5,4,16,G1H16,102)
  call hol_allocation(4,1,4,32,G0H32,1)


end subroutine HOL_memory_allocation_full

!**********************************************************************
subroutine HOL_memory_allocation_optimized()
!**********************************************************************
! allocation of memory for the types hol
!**********************************************************************
  use KIND_TYPES, only: REALKIND
  use ol_loop_storage_ppttj_ttxggg_1_/**/DREALKIND, only: nhel
  use ol_data_types_/**/REALKIND, only: hol
  use hol_initialisation_/**/REALKIND, only: hol_allocation
  implicit none

    call hol_allocation(4,1,4,min(nhel,1),G0H1,1)
  call hol_allocation(4,5,4,min(nhel,1),G1H1,1)
  call hol_allocation(4,15,4,min(nhel,1),G2H1,1)
  call hol_allocation(4,1,4,min(nhel,2),G0H2,42)
  call hol_allocation(4,5,4,min(nhel,2),G1H2,408)
  call hol_allocation(4,15,4,min(nhel,2),G2H2,231)
  call hol_allocation(4,1,4,min(nhel,4),G0H4,25)
  call hol_allocation(4,5,4,min(nhel,4),G1H4,145)
  call hol_allocation(4,15,4,min(nhel,4),G2H4,54)
  call hol_allocation(4,1,4,min(nhel,8),G0H8,42)
  call hol_allocation(4,5,4,min(nhel,8),G1H8,80)
  call hol_allocation(4,15,4,min(nhel,8),G2H8,36)
  call hol_allocation(4,1,4,min(nhel,16),G0H16,1)
  call hol_allocation(4,5,4,min(nhel,16),G1H16,102)
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
  call hol_deallocation(G0H2,42,dmode)
  call hol_deallocation(G1H2,408,dmode)
  call hol_deallocation(G2H2,231,dmode)
  call hol_deallocation(G0H4,25,dmode)
  call hol_deallocation(G1H4,145,dmode)
  call hol_deallocation(G2H4,54,dmode)
  call hol_deallocation(G0H8,42,dmode)
  call hol_deallocation(G1H8,80,dmode)
  call hol_deallocation(G2H8,36,dmode)
  call hol_deallocation(G0H16,1,dmode)
  call hol_deallocation(G1H16,102,dmode)
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

  call hcl_allocation(1,G0tensor, 486)
call hcl_allocation(5,G1tensor, 471)
call hcl_allocation(15,G2tensor, 442)
call hcl_allocation(35,G3tensor, 126)


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

  call hcl_deallocation(G0tensor, 486,dmode)
call hcl_deallocation(G1tensor, 471,dmode)
call hcl_deallocation(G2tensor, 442,dmode)
call hcl_deallocation(G3tensor, 126,dmode)

    call hcl_deallocation(T0sum,234,dmode)
  call hcl_deallocation(T1sum,51,dmode)


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

    call hcl_allocation(1,T0sum,234)
  call hcl_allocation(5,T1sum,51)


end subroutine Tsum_memory_allocation


#ifdef PRECISION_dp
subroutine max_point(r) &
    & bind(c,name="ol_f_max_point_ppttj_ttxggg_1")
  ! Return the number maximal tensor rank
  implicit none
  integer, intent(out) :: r
  r = 5
end subroutine max_point

subroutine tensor_rank(r) &
    & bind(c,name="ol_f_tensor_rank_ppttj_ttxggg_1")
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

  do i = 1,234
    call init_hcl(T0sum(i))
  end do
  do i = 1,51
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
  call scale_one_tsum(T1sum(9)%cmp, 4)
  call scale_one_tsum(T1sum(10)%cmp, 4)
  call scale_one_tsum(T1sum(11)%cmp, 4)
  call scale_one_tsum(T1sum(12)%cmp, 4)
  call scale_one_tsum(T1sum(13)%cmp, 4)
  call scale_one_tsum(T1sum(14)%cmp, 4)
  call scale_one_tsum(T1sum(15)%cmp, 4)
  call scale_one_tsum(T1sum(16)%cmp, 4)
  call scale_one_tsum(T1sum(17)%cmp, 4)
  call scale_one_tsum(T1sum(18)%cmp, 4)
  call scale_one_tsum(T1sum(19)%cmp, 4)
  call scale_one_tsum(T1sum(20)%cmp, 4)
  call scale_one_tsum(T1sum(21)%cmp, 4)
  call scale_one_tsum(T1sum(22)%cmp, 4)
  call scale_one_tsum(T1sum(23)%cmp, 4)
  call scale_one_tsum(T1sum(24)%cmp, 4)
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
  call scale_one_tsum(T0sum(34)%cmp, 2)
  call scale_one_tsum(T0sum(35)%cmp, 2)
  call scale_one_tsum(T0sum(36)%cmp, 2)
  call scale_one_tsum(T0sum(37)%cmp, 2)
  call scale_one_tsum(T0sum(38)%cmp, 2)
  call scale_one_tsum(T0sum(39)%cmp, 2)
  call scale_one_tsum(T0sum(40)%cmp, 2)
  call scale_one_tsum(T0sum(41)%cmp, 2)
  call scale_one_tsum(T0sum(42)%cmp, 2)
  call scale_one_tsum(T0sum(43)%cmp, 2)
  call scale_one_tsum(T0sum(44)%cmp, 2)
  call scale_one_tsum(T0sum(45)%cmp, 2)
  call scale_one_tsum(T0sum(46)%cmp, 2)
  call scale_one_tsum(T0sum(47)%cmp, 2)
  call scale_one_tsum(T0sum(48)%cmp, 2)
  call scale_one_tsum(T0sum(49)%cmp, 2)
  call scale_one_tsum(T0sum(50)%cmp, 2)
  call scale_one_tsum(T0sum(51)%cmp, 2)
  call scale_one_tsum(T0sum(52)%cmp, 2)
  call scale_one_tsum(T0sum(53)%cmp, 2)
  call scale_one_tsum(T0sum(54)%cmp, 2)
  call scale_one_tsum(T0sum(55)%cmp, 2)
  call scale_one_tsum(T0sum(56)%cmp, 2)
  call scale_one_tsum(T0sum(57)%cmp, 2)
  call scale_one_tsum(T0sum(58)%cmp, 2)
  call scale_one_tsum(T0sum(59)%cmp, 2)
  call scale_one_tsum(T0sum(60)%cmp, 2)
  call scale_one_tsum(T0sum(61)%cmp, 2)
  call scale_one_tsum(T0sum(62)%cmp, 2)
  call scale_one_tsum(T0sum(63)%cmp, 2)
  call scale_one_tsum(T0sum(64)%cmp, 2)
  call scale_one_tsum(T0sum(65)%cmp, 2)
  call scale_one_tsum(T0sum(66)%cmp, 2)
  call scale_one_tsum(T0sum(67)%cmp, 2)
  call scale_one_tsum(T0sum(68)%cmp, 2)
  call scale_one_tsum(T0sum(69)%cmp, 2)
  call scale_one_tsum(T0sum(70)%cmp, 2)
  call scale_one_tsum(T0sum(71)%cmp, 2)
  call scale_one_tsum(T0sum(72)%cmp, 2)
  call scale_one_tsum(T0sum(73)%cmp, 2)
  call scale_one_tsum(T0sum(74)%cmp, 2)
  call scale_one_tsum(T0sum(75)%cmp, 2)
  call scale_one_tsum(T0sum(76)%cmp, 2)
  call scale_one_tsum(T0sum(77)%cmp, 2)
  call scale_one_tsum(T0sum(78)%cmp, 2)
  call scale_one_tsum(T0sum(79)%cmp, 2)
  call scale_one_tsum(T0sum(80)%cmp, 2)
  call scale_one_tsum(T0sum(81)%cmp, 2)
  call scale_one_tsum(T0sum(82)%cmp, 2)
  call scale_one_tsum(T0sum(83)%cmp, 2)
  call scale_one_tsum(T0sum(84)%cmp, 2)
  call scale_one_tsum(T0sum(85)%cmp, 2)
  call scale_one_tsum(T0sum(86)%cmp, 2)
  call scale_one_tsum(T0sum(87)%cmp, 2)
  call scale_one_tsum(T0sum(88)%cmp, 2)
  call scale_one_tsum(T0sum(89)%cmp, 2)
  call scale_one_tsum(T0sum(90)%cmp, 2)
  call scale_one_tsum(T0sum(91)%cmp, 2)
  call scale_one_tsum(T0sum(92)%cmp, 2)
  call scale_one_tsum(T0sum(93)%cmp, 2)
  call scale_one_tsum(T0sum(94)%cmp, 2)
  call scale_one_tsum(T0sum(95)%cmp, 2)
  call scale_one_tsum(T0sum(96)%cmp, 2)
  call scale_one_tsum(T0sum(97)%cmp, 0)
  call scale_one_tsum(T0sum(98)%cmp, 0)
  call scale_one_tsum(T0sum(99)%cmp, 0)
  call scale_one_tsum(T0sum(100)%cmp, 0)
  call scale_one_tsum(T0sum(101)%cmp, 0)
  call scale_one_tsum(T0sum(102)%cmp, 0)
  call scale_one_tsum(T0sum(103)%cmp, 0)
  call scale_one_tsum(T0sum(104)%cmp, 0)
  call scale_one_tsum(T0sum(105)%cmp, 0)
  call scale_one_tsum(T0sum(106)%cmp, 0)
  call scale_one_tsum(T0sum(107)%cmp, 0)
  call scale_one_tsum(T0sum(108)%cmp, 0)
  call scale_one_tsum(T0sum(109)%cmp, 0)
  call scale_one_tsum(T0sum(110)%cmp, 0)
  call scale_one_tsum(T0sum(111)%cmp, 0)
  call scale_one_tsum(T0sum(112)%cmp, 0)
  call scale_one_tsum(T0sum(113)%cmp, 0)
  call scale_one_tsum(T0sum(114)%cmp, 0)
  call scale_one_tsum(T0sum(115)%cmp, 0)
  call scale_one_tsum(T0sum(116)%cmp, 0)
  call scale_one_tsum(T0sum(117)%cmp, 0)
  call scale_one_tsum(T0sum(118)%cmp, 0)
  call scale_one_tsum(T0sum(119)%cmp, 0)
  call scale_one_tsum(T0sum(120)%cmp, 0)
  call scale_one_tsum(T0sum(121)%cmp, 0)
  call scale_one_tsum(T0sum(122)%cmp, 0)
  call scale_one_tsum(T0sum(123)%cmp, 0)
  call scale_one_tsum(T0sum(124)%cmp, 0)
  call scale_one_tsum(T0sum(125)%cmp, 0)
  call scale_one_tsum(T0sum(126)%cmp, 0)
  call scale_one_tsum(T0sum(127)%cmp, 0)
  call scale_one_tsum(T0sum(128)%cmp, 0)
  call scale_one_tsum(T0sum(129)%cmp, 0)
  call scale_one_tsum(T0sum(130)%cmp, 0)
  call scale_one_tsum(T0sum(131)%cmp, 0)
  call scale_one_tsum(T0sum(132)%cmp, 0)
  call scale_one_tsum(T0sum(133)%cmp, 0)
  call scale_one_tsum(T0sum(134)%cmp, 0)
  call scale_one_tsum(T0sum(135)%cmp, 0)
  call scale_one_tsum(T0sum(136)%cmp, 0)
  call scale_one_tsum(T0sum(137)%cmp, 0)
  call scale_one_tsum(T0sum(138)%cmp, 0)
  call scale_one_tsum(T0sum(139)%cmp, 0)
  call scale_one_tsum(T0sum(140)%cmp, 0)
  call scale_one_tsum(T0sum(141)%cmp, 0)
  call scale_one_tsum(T0sum(142)%cmp, 0)
  call scale_one_tsum(T0sum(143)%cmp, 0)
  call scale_one_tsum(T0sum(144)%cmp, 0)
  call scale_one_tsum(T0sum(145)%cmp, 0)
  call scale_one_tsum(T0sum(146)%cmp, 0)
  call scale_one_tsum(T0sum(147)%cmp, 0)
  call scale_one_tsum(T0sum(148)%cmp, 0)
  call scale_one_tsum(T0sum(149)%cmp, 0)
  call scale_one_tsum(T0sum(150)%cmp, 0)
  call scale_one_tsum(T0sum(151)%cmp, 0)
  call scale_one_tsum(T0sum(152)%cmp, 0)
  call scale_one_tsum(T0sum(153)%cmp, 0)
  call scale_one_tsum(T0sum(154)%cmp, 0)
  call scale_one_tsum(T0sum(155)%cmp, 0)
  call scale_one_tsum(T0sum(156)%cmp, 0)
  call scale_one_tsum(T0sum(157)%cmp, 0)
  call scale_one_tsum(T0sum(158)%cmp, 0)
  call scale_one_tsum(T0sum(159)%cmp, 0)
  call scale_one_tsum(T0sum(160)%cmp, 0)
  call scale_one_tsum(T0sum(161)%cmp, 0)
  call scale_one_tsum(T0sum(162)%cmp, 0)
  call scale_one_tsum(T0sum(163)%cmp, 0)
  call scale_one_tsum(T0sum(164)%cmp, 0)
  call scale_one_tsum(T0sum(165)%cmp, 0)
  call scale_one_tsum(T0sum(166)%cmp, 0)
  call scale_one_tsum(T0sum(167)%cmp, 0)
  call scale_one_tsum(T0sum(168)%cmp, 0)
  call scale_one_tsum(T0sum(169)%cmp, 0)
  call scale_one_tsum(T0sum(170)%cmp, 0)
  call scale_one_tsum(T0sum(171)%cmp, 0)
  call scale_one_tsum(T0sum(172)%cmp, 0)
  call scale_one_tsum(T0sum(173)%cmp, 0)
  call scale_one_tsum(T0sum(174)%cmp, 0)
  call scale_one_tsum(T0sum(175)%cmp, 0)
  call scale_one_tsum(T0sum(176)%cmp, 0)
  call scale_one_tsum(T0sum(177)%cmp, 0)
  call scale_one_tsum(T0sum(178)%cmp, 0)
  call scale_one_tsum(T0sum(179)%cmp, 0)
  call scale_one_tsum(T0sum(180)%cmp, 0)
  call scale_one_tsum(T0sum(181)%cmp, 0)
  call scale_one_tsum(T0sum(182)%cmp, 0)
  call scale_one_tsum(T0sum(183)%cmp, 0)
  call scale_one_tsum(T0sum(184)%cmp, 0)
  call scale_one_tsum(T0sum(185)%cmp, 0)
  call scale_one_tsum(T0sum(186)%cmp, 0)
  call scale_one_tsum(T0sum(187)%cmp, 0)
  call scale_one_tsum(T0sum(188)%cmp, 0)
  call scale_one_tsum(T0sum(189)%cmp, 0)
  call scale_one_tsum(T0sum(190)%cmp, 0)
  call scale_one_tsum(T0sum(191)%cmp, 0)
  call scale_one_tsum(T1sum(25)%cmp, 0)
  call scale_one_tsum(T1sum(26)%cmp, 0)
  call scale_one_tsum(T1sum(27)%cmp, 0)
  call scale_one_tsum(T1sum(28)%cmp, 0)
  call scale_one_tsum(T1sum(29)%cmp, 0)
  call scale_one_tsum(T1sum(30)%cmp, 0)
  call scale_one_tsum(T1sum(31)%cmp, 0)
  call scale_one_tsum(T1sum(32)%cmp, 0)
  call scale_one_tsum(T1sum(33)%cmp, 0)
  call scale_one_tsum(T1sum(34)%cmp, 0)
  call scale_one_tsum(T1sum(35)%cmp, 0)
  call scale_one_tsum(T1sum(36)%cmp, 0)
  call scale_one_tsum(T1sum(37)%cmp, 0)
  call scale_one_tsum(T1sum(38)%cmp, 0)
  call scale_one_tsum(T1sum(39)%cmp, 0)
  call scale_one_tsum(T1sum(40)%cmp, 0)
  call scale_one_tsum(T1sum(41)%cmp, 0)
  call scale_one_tsum(T1sum(42)%cmp, 0)
  call scale_one_tsum(T1sum(43)%cmp, 0)
  call scale_one_tsum(T1sum(44)%cmp, 0)
  call scale_one_tsum(T1sum(45)%cmp, 0)
  call scale_one_tsum(T1sum(46)%cmp, 0)
  call scale_one_tsum(T1sum(47)%cmp, 0)
  call scale_one_tsum(T1sum(48)%cmp, 0)
  call scale_one_tsum(T1sum(49)%cmp, 0)
  call scale_one_tsum(T1sum(50)%cmp, 0)
  call scale_one_tsum(T1sum(51)%cmp, 0)
  call scale_one_tsum(T0sum(192)%cmp, 0)
  call scale_one_tsum(T0sum(193)%cmp, 0)
  call scale_one_tsum(T0sum(194)%cmp, 0)
  call scale_one_tsum(T0sum(195)%cmp, 0)
  call scale_one_tsum(T0sum(196)%cmp, -2)
  call scale_one_tsum(T0sum(197)%cmp, -2)
  call scale_one_tsum(T0sum(198)%cmp, -2)
  call scale_one_tsum(T0sum(199)%cmp, -2)
  call scale_one_tsum(T0sum(200)%cmp, -2)
  call scale_one_tsum(T0sum(201)%cmp, -2)
  call scale_one_tsum(T0sum(202)%cmp, -2)
  call scale_one_tsum(T0sum(203)%cmp, -2)
  call scale_one_tsum(T0sum(204)%cmp, -2)
  call scale_one_tsum(T0sum(205)%cmp, -2)
  call scale_one_tsum(T0sum(206)%cmp, -2)
  call scale_one_tsum(T0sum(207)%cmp, -2)
  call scale_one_tsum(T0sum(208)%cmp, -2)
  call scale_one_tsum(T0sum(209)%cmp, -2)
  call scale_one_tsum(T0sum(210)%cmp, -2)
  call scale_one_tsum(T0sum(211)%cmp, -2)
  call scale_one_tsum(T0sum(212)%cmp, -2)
  call scale_one_tsum(T0sum(213)%cmp, -2)
  call scale_one_tsum(T0sum(214)%cmp, -2)
  call scale_one_tsum(T0sum(215)%cmp, -2)
  call scale_one_tsum(T0sum(216)%cmp, -2)
  call scale_one_tsum(T0sum(217)%cmp, -2)
  call scale_one_tsum(T0sum(218)%cmp, -2)
  call scale_one_tsum(T0sum(219)%cmp, -2)
  call scale_one_tsum(T0sum(220)%cmp, -2)
  call scale_one_tsum(T0sum(221)%cmp, -2)
  call scale_one_tsum(T0sum(222)%cmp, -2)
  call scale_one_tsum(T0sum(223)%cmp, -2)
  call scale_one_tsum(T0sum(224)%cmp, -2)
  call scale_one_tsum(T0sum(225)%cmp, -2)
  call scale_one_tsum(T0sum(226)%cmp, -2)
  call scale_one_tsum(T0sum(227)%cmp, -2)
  call scale_one_tsum(T0sum(228)%cmp, -2)
  call scale_one_tsum(T0sum(229)%cmp, -2)
  call scale_one_tsum(T0sum(230)%cmp, -2)
  call scale_one_tsum(T0sum(231)%cmp, -2)
  call scale_one_tsum(T0sum(232)%cmp, -2)
  call scale_one_tsum(T0sum(233)%cmp, -2)
  call scale_one_tsum(T0sum(234)%cmp, -2)

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
  momenta_25 = [ 16, 10, 5 ]
  momenta_26 = [ 16, 11, 4 ]
  momenta_27 = [ 16, 13, 2 ]
  momenta_28 = [ 17, 2, 12 ]
  momenta_29 = [ 17, 4, 10 ]
  momenta_30 = [ 17, 6, 8 ]
  momenta_31 = [ 17, 8, 6 ]
  momenta_32 = [ 17, 10, 4 ]
  momenta_33 = [ 17, 12, 2 ]
  momenta_34 = [ 18, 1, 12 ]
  momenta_35 = [ 18, 4, 9 ]
  momenta_36 = [ 18, 5, 8 ]
  momenta_37 = [ 18, 8, 5 ]
  momenta_38 = [ 18, 9, 4 ]
  momenta_39 = [ 19, 4, 8 ]
  momenta_40 = [ 19, 8, 4 ]
  momenta_41 = [ 20, 1, 10 ]
  momenta_42 = [ 20, 2, 9 ]
  momenta_43 = [ 20, 3, 8 ]
  momenta_44 = [ 20, 9, 2 ]
  momenta_45 = [ 20, 10, 1 ]
  momenta_46 = [ 21, 2, 8 ]
  momenta_47 = [ 21, 8, 2 ]
  momenta_48 = [ 22, 1, 8 ]
  momenta_49 = [ 22, 8, 1 ]
  momenta_50 = [ 24, 1, 6 ]
  momenta_51 = [ 24, 2, 5 ]
  momenta_52 = [ 24, 3, 4 ]
  momenta_53 = [ 24, 4, 3 ]
  momenta_54 = [ 24, 5, 2 ]
  momenta_55 = [ 24, 6, 1 ]
  momenta_56 = [ 25, 2, 4 ]
  momenta_57 = [ 25, 4, 2 ]
  momenta_58 = [ 26, 1, 4 ]
  momenta_59 = [ 26, 4, 1 ]
  momenta_60 = [ 28, 1, 2 ]
  momenta_61 = [ 28, 2, 1 ]
  momenta_62 = [ 16, 1, 2, 12 ]
  momenta_63 = [ 16, 1, 4, 10 ]
  momenta_64 = [ 16, 1, 6, 8 ]
  momenta_65 = [ 16, 1, 8, 6 ]
  momenta_66 = [ 16, 1, 10, 4 ]
  momenta_67 = [ 16, 1, 12, 2 ]
  momenta_68 = [ 16, 2, 1, 12 ]
  momenta_69 = [ 16, 2, 4, 9 ]
  momenta_70 = [ 16, 2, 5, 8 ]
  momenta_71 = [ 16, 2, 8, 5 ]
  momenta_72 = [ 16, 2, 9, 4 ]
  momenta_73 = [ 16, 3, 4, 8 ]
  momenta_74 = [ 16, 3, 8, 4 ]
  momenta_75 = [ 16, 4, 1, 10 ]
  momenta_76 = [ 16, 4, 2, 9 ]
  momenta_77 = [ 16, 4, 3, 8 ]
  momenta_78 = [ 16, 5, 2, 8 ]
  momenta_79 = [ 16, 5, 8, 2 ]
  momenta_80 = [ 16, 6, 1, 8 ]
  momenta_81 = [ 16, 9, 2, 4 ]
  momenta_82 = [ 16, 9, 4, 2 ]
  momenta_83 = [ 16, 10, 1, 4 ]
  momenta_84 = [ 17, 2, 4, 8 ]
  momenta_85 = [ 17, 2, 8, 4 ]
  momenta_86 = [ 17, 4, 2, 8 ]
  momenta_87 = [ 17, 4, 8, 2 ]
  momenta_88 = [ 17, 8, 2, 4 ]
  momenta_89 = [ 17, 8, 4, 2 ]
  momenta_90 = [ 18, 1, 4, 8 ]
  momenta_91 = [ 18, 1, 8, 4 ]
  momenta_92 = [ 18, 4, 1, 8 ]
  momenta_93 = [ 18, 8, 1, 4 ]
  momenta_94 = [ 20, 1, 2, 8 ]
  momenta_95 = [ 20, 1, 8, 2 ]
  momenta_96 = [ 20, 2, 1, 8 ]
  momenta_97 = [ 20, 2, 8, 1 ]
  momenta_98 = [ 24, 1, 2, 4 ]
  momenta_99 = [ 24, 1, 4, 2 ]
  momenta_100 = [ 24, 2, 1, 4 ]
  momenta_101 = [ 24, 2, 4, 1 ]
  momenta_102 = [ 24, 4, 1, 2 ]
  momenta_103 = [ 24, 4, 2, 1 ]
  momenta_104 = [ 16, 1, 2, 4, 8 ]
  momenta_105 = [ 16, 1, 2, 8, 4 ]
  momenta_106 = [ 16, 1, 4, 2, 8 ]
  momenta_107 = [ 16, 1, 4, 8, 2 ]
  momenta_108 = [ 16, 1, 8, 2, 4 ]
  momenta_109 = [ 16, 1, 8, 4, 2 ]
  momenta_110 = [ 16, 2, 1, 4, 8 ]
  momenta_111 = [ 16, 2, 1, 8, 4 ]
  momenta_112 = [ 16, 2, 4, 1, 8 ]
  momenta_113 = [ 16, 2, 8, 1, 4 ]
  momenta_114 = [ 16, 4, 1, 2, 8 ]
  momenta_115 = [ 16, 4, 2, 1, 8 ]

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
  masses2_19 = [ nMT, 0, 0, nMT ]
  masses2_20 = [ 0, 0, nMT, 0 ]
  masses2_21 = [ 0, 0, nMT, nMT ]
  masses2_22 = [ nMT, 0, nMT, nMT ]
  masses2_23 = [ nMB, nMB, nMB, nMB ]
  masses2_24 = [ 0, nMT, 0, 0 ]
  masses2_25 = [ nMT, nMT, 0, 0 ]
  masses2_26 = [ nMT, nMT, 0, nMT ]
  masses2_27 = [ 0, nMT, nMT, 0 ]
  masses2_28 = [ nMT, nMT, nMT, 0 ]
  masses2_29 = [ 0, nMT, nMT, nMT ]
  masses2_30 = [ nMT, nMT, nMT, nMT ]
  masses2_31 = [ 0, 0, 0, nMT, 0 ]
  masses2_32 = [ 0, 0, nMT, 0, 0 ]
  masses2_33 = [ 0, 0, nMT, nMT, 0 ]
  masses2_34 = [ 0, 0, nMT, nMT, nMT ]
  masses2_35 = [ nMT, nMT, 0, 0, 0 ]
  masses2_36 = [ nMT, nMT, 0, 0, nMT ]
  masses2_37 = [ nMT, nMT, 0, nMT, nMT ]
  masses2_38 = [ nMT, nMT, nMT, 0, nMT ]


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
sbarray_2 = [6, 7, 3, 8, 9]
sbarray_3 = [10, 11, 12, 13, 14]
sbarray_4 = [15, 16, 12, 17, 18]
sbarray_5 = [19, 16, 20, 21, 22]
sbarray_6 = [23, 24, 25, 26, 27]
sbarray_7 = [28, 11, 29, 4, 30]
sbarray_8 = [31, 32, 33, 8, 34]
sbarray_9 = [35, 36, 37, 38, 39]
sbarray_10 = [40, 41, 42, 43, 44]
sbarray_11 = [45, 46, 20, 47, 48]
sbarray_12 = [49, 50, 37, 51, 52]
sbarray_13 = [53, 54, 55, 43, 56]
sbarray_14 = [57, 58, 25, 47, 59]
sbarray_15 = [60, 41, 61, 62, 63]
sbarray_16 = [64, 46, 29, 65, 66]
sbarray_17 = [67, 54, 68, 62, 69]
sbarray_18 = [70, 58, 33, 65, 71]
sbarray_19 = [72, 50, 42, 73, 74]
sbarray_20 = [75, 76, 55, 77, 78]
sbarray_21 = [79, 36, 61, 80, 81]
sbarray_22 = [82, 83, 84, 80, 85]
sbarray_23 = [86, 87, 68, 88, 89]
sbarray_24 = [90, 91, 84, 88, 92]


#ifdef LOOPSQUARED
  if (a_switch == 1 .or. a_switch == 7) then
#endif
  call TI_call_OL(0,0, momenta_63, masses2_21, T0sum(1), M2,[4], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_65, masses2_21, T0sum(2), M2,[8], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_102, masses2_18, T0sum(3), M2,[14], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_75, masses2_18, T0sum(4), M2,[13], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_103, masses2_18, T0sum(5), M2,[18], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_76, masses2_18, T0sum(6), M2,[17], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_101, masses2_21, T0sum(7), M2,[22], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_69, masses2_21, T0sum(8), M2,[21], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_97, masses2_21, T0sum(9), M2,[27], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_71, masses2_21, T0sum(10), M2,[26], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_99, masses2_21, T0sum(11), M2,[30], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_95, masses2_21, T0sum(12), M2,[34], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_102, masses2_28, T0sum(13), M2,[39], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_75, masses2_28, T0sum(14), M2,[38], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_100, masses2_26, T0sum(15), M2,[44], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_68, masses2_26, T0sum(16), M2,[43], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_100, masses2_20, T0sum(17), M2,[48], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_68, masses2_20, T0sum(18), M2,[47], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_103, masses2_28, T0sum(19), M2,[52], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_76, masses2_28, T0sum(20), M2,[51], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_96, masses2_26, T0sum(21), M2,[49], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_96, masses2_20, T0sum(22), M2,[15], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_98, masses2_26, T0sum(23), M2,[63], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_62, masses2_26, T0sum(24), M2,[62], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_98, masses2_20, T0sum(25), M2,[66], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_62, masses2_20, T0sum(26), M2,[65], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_94, masses2_26, T0sum(27), M2,[35], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_94, masses2_20, T0sum(28), M2,[10], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_101, masses2_25, T0sum(29), M2,[74], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_69, masses2_25, T0sum(30), M2,[73], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_97, masses2_25, T0sum(31), M2,[78], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_71, masses2_25, T0sum(32), M2,[77], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_99, masses2_25, T0sum(33), M2,[81], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_63, masses2_25, T0sum(34), M2,[80], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_90, masses2_24, T0sum(35), M2,[45], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_95, masses2_25, T0sum(36), M2,[89], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_65, masses2_25, T0sum(37), M2,[88], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_91, masses2_24, T0sum(38), M2,[57], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_90, masses2_22, T0sum(39), M2,[40], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_87, masses2_29, T0sum(40), M2,[1], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_79, masses2_21, T0sum(41), M2,[2], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_67, masses2_21, T0sum(42), M2,[3], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_91, masses2_22, T0sum(43), M2,[53], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_89, masses2_29, T0sum(44), M2,[6], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_82, masses2_21, T0sum(45), M2,[7], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_78, masses2_20, T0sum(46), M2,[11], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_77, masses2_16, T0sum(47), M2,[12], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_80, masses2_20, T0sum(48), M2,[16], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_92, masses2_27, T0sum(49), M2,[19], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_70, masses2_20, T0sum(50), M2,[20], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_93, masses2_27, T0sum(51), M2,[23], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_83, masses2_20, T0sum(52), M2,[24], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_72, masses2_20, T0sum(53), M2,[25], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_86, masses2_27, T0sum(54), M2,[28], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_64, masses2_20, T0sum(55), M2,[29], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_88, masses2_27, T0sum(56), M2,[31], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_81, masses2_20, T0sum(57), M2,[32], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_66, masses2_20, T0sum(58), M2,[33], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_78, masses2_26, T0sum(59), M2,[36], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_77, masses2_30, T0sum(60), M2,[37], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_73, masses2_30, T0sum(61), M2,[41], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_70, masses2_26, T0sum(62), M2,[42], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_73, masses2_16, T0sum(63), M2,[46], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_80, masses2_26, T0sum(64), M2,[50], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_74, masses2_30, T0sum(65), M2,[54], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_72, masses2_26, T0sum(66), M2,[55], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_74, masses2_16, T0sum(67), M2,[58], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_84, masses2_22, T0sum(68), M2,[60], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_64, masses2_26, T0sum(69), M2,[61], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_84, masses2_24, T0sum(70), M2,[64], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_85, masses2_22, T0sum(71), M2,[67], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_66, masses2_26, T0sum(72), M2,[68], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_85, masses2_24, T0sum(73), M2,[70], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_92, masses2_19, T0sum(74), M2,[72], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_93, masses2_19, T0sum(75), M2,[75], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_83, masses2_26, T0sum(76), M2,[76], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_86, masses2_19, T0sum(77), M2,[79], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_87, masses2_17, T0sum(78), M2,[82], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_79, masses2_25, T0sum(79), M2,[83], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_67, masses2_25, T0sum(80), M2,[84], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_88, masses2_19, T0sum(81), M2,[86], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_81, masses2_26, T0sum(82), M2,[87], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_89, masses2_17, T0sum(83), M2,[90], ScalarBoxes(:))
  call TI_call_OL(0,0, momenta_82, masses2_25, T0sum(84), M2,[91], ScalarBoxes(:))
  call TI_call_OL(2,0, momenta_73, masses2_30, T0sum(85), M2,[41], ScalarBoxes(:))
  call TI_call_OL(2,0, momenta_73, masses2_16, T0sum(86), M2,[46], ScalarBoxes(:))
  call TI_call_OL(2,0, momenta_74, masses2_30, T0sum(87), M2,[54], ScalarBoxes(:))
  call TI_call_OL(2,0, momenta_74, masses2_16, T0sum(88), M2,[58], ScalarBoxes(:))
  call TI_call_OL(2,0, momenta_74, masses2_23, T0sum(89), M2)
  call TI_call_OL(2,0, momenta_73, masses2_23, T0sum(90), M2)
  call TI_call_OL(2,0, momenta_77, masses2_16, T0sum(91), M2,[12], ScalarBoxes(:))
  call TI_call_OL(2,0, momenta_77, masses2_30, T0sum(92), M2,[37], ScalarBoxes(:))
  call TI_call_OL(2,0, momenta_77, masses2_23, T0sum(93), M2)
  call TI_call_OL(0,0, momenta_74, masses2_23, T0sum(94), M2)
  call TI_call_OL(0,0, momenta_73, masses2_23, T0sum(95), M2)
  call TI_call_OL(0,0, momenta_77, masses2_23, T0sum(96), M2)
  call TI_call_OL(0,0, momenta_59, masses2_8, T0sum(97), M2)
  call TI_call_OL(0,0, momenta_57, masses2_8, T0sum(98), M2)
  call TI_call_OL(0,0, momenta_56, masses2_10, T0sum(99), M2)
  call TI_call_OL(0,0, momenta_46, masses2_10, T0sum(100), M2)
  call TI_call_OL(0,0, momenta_58, masses2_10, T0sum(101), M2)
  call TI_call_OL(0,0, momenta_48, masses2_10, T0sum(102), M2)
  call TI_call_OL(0,0, momenta_59, masses2_14, T0sum(103), M2)
  call TI_call_OL(0,0, momenta_61, masses2_13, T0sum(104), M2)
  call TI_call_OL(0,0, momenta_61, masses2_9, T0sum(105), M2)
  call TI_call_OL(0,0, momenta_57, masses2_14, T0sum(106), M2)
  call TI_call_OL(0,0, momenta_60, masses2_13, T0sum(107), M2)
  call TI_call_OL(0,0, momenta_60, masses2_9, T0sum(108), M2)
  call TI_call_OL(0,0, momenta_56, masses2_12, T0sum(109), M2)
  call TI_call_OL(0,0, momenta_46, masses2_12, T0sum(110), M2)
  call TI_call_OL(0,0, momenta_58, masses2_12, T0sum(111), M2)
  call TI_call_OL(0,0, momenta_48, masses2_12, T0sum(112), M2)
  call TI_call_OL(0,0, momenta_34, masses2_10, T0sum(113), M2)
  call TI_call_OL(0,0, momenta_17, masses2_9, T0sum(114), M2)
  call TI_call_OL(0,0, momenta_41, masses2_9, T0sum(115), M2)
  call TI_call_OL(0,0, momenta_21, masses2_9, T0sum(116), M2)
  call TI_call_OL(0,0, momenta_20, masses2_7, T0sum(117), M2)
  call TI_call_OL(0,0, momenta_42, masses2_9, T0sum(118), M2)
  call TI_call_OL(0,0, momenta_22, masses2_9, T0sum(119), M2)
  call TI_call_OL(0,0, momenta_35, masses2_14, T0sum(120), M2)
  call TI_call_OL(0,0, momenta_18, masses2_9, T0sum(121), M2)
  call TI_call_OL(0,0, momenta_37, masses2_14, T0sum(122), M2)
  call TI_call_OL(0,0, momenta_25, masses2_9, T0sum(123), M2)
  call TI_call_OL(0,0, momenta_29, masses2_14, T0sum(124), M2)
  call TI_call_OL(0,0, momenta_31, masses2_14, T0sum(125), M2)
  call TI_call_OL(0,0, momenta_24, masses2_9, T0sum(126), M2)
  call TI_call_OL(0,0, momenta_41, masses2_13, T0sum(127), M2)
  call TI_call_OL(0,0, momenta_21, masses2_13, T0sum(128), M2)
  call TI_call_OL(0,0, momenta_20, masses2_15, T0sum(129), M2)
  call TI_call_OL(0,0, momenta_19, masses2_15, T0sum(130), M2)
  call TI_call_OL(0,0, momenta_18, masses2_13, T0sum(131), M2)
  call TI_call_OL(0,0, momenta_34, masses2_12, T0sum(132), M2)
  call TI_call_OL(0,0, momenta_19, masses2_7, T0sum(133), M2)
  call TI_call_OL(0,0, momenta_42, masses2_13, T0sum(134), M2)
  call TI_call_OL(0,0, momenta_22, masses2_13, T0sum(135), M2)
  call TI_call_OL(0,0, momenta_28, masses2_10, T0sum(136), M2)
  call TI_call_OL(0,0, momenta_17, masses2_13, T0sum(137), M2)
  call TI_call_OL(0,0, momenta_28, masses2_12, T0sum(138), M2)
  call TI_call_OL(0,0, momenta_35, masses2_8, T0sum(139), M2)
  call TI_call_OL(0,0, momenta_37, masses2_8, T0sum(140), M2)
  call TI_call_OL(0,0, momenta_25, masses2_13, T0sum(141), M2)
  call TI_call_OL(0,0, momenta_29, masses2_8, T0sum(142), M2)
  call TI_call_OL(0,0, momenta_31, masses2_8, T0sum(143), M2)
  call TI_call_OL(0,0, momenta_24, masses2_13, T0sum(144), M2)
  call TI_call_OL(0,0, momenta_53, masses2_7, T0sum(145), M2)
  call TI_call_OL(0,0, momenta_51, masses2_9, T0sum(146), M2)
  call TI_call_OL(0,0, momenta_50, masses2_9, T0sum(147), M2)
  call TI_call_OL(0,0, momenta_19, masses2_11, T0sum(148), M2)
  call TI_call_OL(0,0, momenta_20, masses2_11, T0sum(149), M2)
  call TI_call_OL(0,0, momenta_53, masses2_15, T0sum(150), M2)
  call TI_call_OL(0,0, momenta_51, masses2_13, T0sum(151), M2)
  call TI_call_OL(0,0, momenta_50, masses2_13, T0sum(152), M2)
  call TI_call_OL(0,0, momenta_54, masses2_9, T0sum(153), M2)
  call TI_call_OL(0,0, momenta_55, masses2_9, T0sum(154), M2)
  call TI_call_OL(0,0, momenta_49, masses2_14, T0sum(155), M2)
  call TI_call_OL(0,0, momenta_45, masses2_9, T0sum(156), M2)
  call TI_call_OL(0,0, momenta_47, masses2_14, T0sum(157), M2)
  call TI_call_OL(0,0, momenta_44, masses2_9, T0sum(158), M2)
  call TI_call_OL(0,0, momenta_54, masses2_13, T0sum(159), M2)
  call TI_call_OL(0,0, momenta_52, masses2_15, T0sum(160), M2)
  call TI_call_OL(0,0, momenta_52, masses2_7, T0sum(161), M2)
  call TI_call_OL(0,0, momenta_55, masses2_13, T0sum(162), M2)
  call TI_call_OL(0,0, momenta_43, masses2_15, T0sum(163), M2)
  call TI_call_OL(0,0, momenta_43, masses2_7, T0sum(164), M2)
  call TI_call_OL(0,0, momenta_49, masses2_8, T0sum(165), M2)
  call TI_call_OL(0,0, momenta_45, masses2_13, T0sum(166), M2)
  call TI_call_OL(0,0, momenta_39, masses2_7, T0sum(167), M2)
  call TI_call_OL(0,0, momenta_36, masses2_12, T0sum(168), M2)
  call TI_call_OL(0,0, momenta_47, masses2_8, T0sum(169), M2)
  call TI_call_OL(0,0, momenta_44, masses2_13, T0sum(170), M2)
  call TI_call_OL(0,0, momenta_40, masses2_7, T0sum(171), M2)
  call TI_call_OL(0,0, momenta_38, masses2_12, T0sum(172), M2)
  call TI_call_OL(0,0, momenta_43, masses2_11, T0sum(173), M2)
  call TI_call_OL(0,0, momenta_52, masses2_11, T0sum(174), M2)
  call TI_call_OL(0,0, momenta_53, masses2_11, T0sum(175), M2)
  call TI_call_OL(0,0, momenta_39, masses2_15, T0sum(176), M2)
  call TI_call_OL(0,0, momenta_36, masses2_10, T0sum(177), M2)
  call TI_call_OL(0,0, momenta_33, masses2_14, T0sum(178), M2)
  call TI_call_OL(0,0, momenta_27, masses2_9, T0sum(179), M2)
  call TI_call_OL(0,0, momenta_40, masses2_15, T0sum(180), M2)
  call TI_call_OL(0,0, momenta_38, masses2_10, T0sum(181), M2)
  call TI_call_OL(0,0, momenta_23, masses2_7, T0sum(182), M2)
  call TI_call_OL(0,0, momenta_26, masses2_7, T0sum(183), M2)
  call TI_call_OL(0,0, momenta_30, masses2_12, T0sum(184), M2)
  call TI_call_OL(0,0, momenta_32, masses2_12, T0sum(185), M2)
  call TI_call_OL(0,0, momenta_23, masses2_15, T0sum(186), M2)
  call TI_call_OL(0,0, momenta_26, masses2_15, T0sum(187), M2)
  call TI_call_OL(0,0, momenta_30, masses2_10, T0sum(188), M2)
  call TI_call_OL(0,0, momenta_32, masses2_10, T0sum(189), M2)
  call TI_call_OL(0,0, momenta_33, masses2_8, T0sum(190), M2)
  call TI_call_OL(0,0, momenta_27, masses2_13, T0sum(191), M2)
  call TI_call_OL(0,0, momenta_40, masses2_11, T0sum(192), M2)
  call TI_call_OL(0,0, momenta_26, masses2_11, T0sum(193), M2)
  call TI_call_OL(0,0, momenta_39, masses2_11, T0sum(194), M2)
  call TI_call_OL(0,0, momenta_23, masses2_11, T0sum(195), M2)
  call TI_call_OL(0,0, momenta_13, masses2_1, T0sum(196), M2)
  call TI_call_OL(0,0, momenta_16, masses2_3, T0sum(197), M2)
  call TI_call_OL(0,0, momenta_12, masses2_3, T0sum(198), M2)
  call TI_call_OL(0,0, momenta_1, masses2_3, T0sum(199), M2)
  call TI_call_OL(0,0, momenta_15, masses2_3, T0sum(200), M2)
  call TI_call_OL(0,0, momenta_11, masses2_3, T0sum(201), M2)
  call TI_call_OL(0,0, momenta_13, masses2_6, T0sum(202), M2)
  call TI_call_OL(0,0, momenta_9, masses2_6, T0sum(203), M2)
  call TI_call_OL(0,0, momenta_7, masses2_3, T0sum(204), M2)
  call TI_call_OL(0,0, momenta_8, masses2_3, T0sum(205), M2)
  call TI_call_OL(0,0, momenta_16, masses2_5, T0sum(206), M2)
  call TI_call_OL(0,0, momenta_12, masses2_5, T0sum(207), M2)
  call TI_call_OL(0,0, momenta_15, masses2_5, T0sum(208), M2)
  call TI_call_OL(0,0, momenta_14, masses2_6, T0sum(209), M2)
  call TI_call_OL(0,0, momenta_14, masses2_1, T0sum(210), M2)
  call TI_call_OL(0,0, momenta_11, masses2_5, T0sum(211), M2)
  call TI_call_OL(0,0, momenta_9, masses2_1, T0sum(212), M2)
  call TI_call_OL(0,0, momenta_7, masses2_5, T0sum(213), M2)
  call TI_call_OL(0,0, momenta_8, masses2_5, T0sum(214), M2)
  call TI_call_OL(0,0, momenta_5, masses2_6, T0sum(215), M2)
  call TI_call_OL(0,0, momenta_4, masses2_3, T0sum(216), M2)
  call TI_call_OL(0,0, momenta_3, masses2_5, T0sum(217), M2)
  call TI_call_OL(0,0, momenta_2, masses2_1, T0sum(218), M2)
  call TI_call_OL(0,0, momenta_6, masses2_1, T0sum(219), M2)
  call TI_call_OL(0,0, momenta_4, masses2_5, T0sum(220), M2)
  call TI_call_OL(0,0, momenta_6, masses2_6, T0sum(221), M2)
  call TI_call_OL(0,0, momenta_2, masses2_6, T0sum(222), M2)
  call TI_call_OL(0,0, momenta_5, masses2_1, T0sum(223), M2)
  call TI_call_OL(0,0, momenta_3, masses2_3, T0sum(224), M2)
  call TI_call_OL(0,0, momenta_10, masses2_1, T0sum(225), M2)
  call TI_call_OL(0,0, momenta_14, masses2_4, T0sum(226), M2)
  call TI_call_OL(0,0, momenta_1, masses2_2, T0sum(227), M2)
  call TI_call_OL(0,0, momenta_5, masses2_4, T0sum(228), M2)
  call TI_call_OL(0,0, momenta_2, masses2_4, T0sum(229), M2)
  call TI_call_OL(0,0, momenta_13, masses2_4, T0sum(230), M2)
  call TI_call_OL(0,0, momenta_6, masses2_4, T0sum(231), M2)
  call TI_call_OL(0,0, momenta_10, masses2_6, T0sum(232), M2)
  call TI_call_OL(0,0, momenta_9, masses2_4, T0sum(233), M2)
  call TI_call_OL(0,0, momenta_10, masses2_4, T0sum(234), M2)

  call TI_call_OL(0,1, momenta_107, masses2_34, T1sum(1), M2,sbarray_1, ScalarBoxes(:))
  call TI_call_OL(0,1, momenta_109, masses2_34, T1sum(2), M2,sbarray_2, ScalarBoxes(:))
  call TI_call_OL(0,1, momenta_114, masses2_31, T1sum(3), M2,sbarray_3, ScalarBoxes(:))
  call TI_call_OL(0,1, momenta_115, masses2_31, T1sum(4), M2,sbarray_4, ScalarBoxes(:))
  call TI_call_OL(0,1, momenta_112, masses2_33, T1sum(5), M2,sbarray_5, ScalarBoxes(:))
  call TI_call_OL(0,1, momenta_113, masses2_33, T1sum(6), M2,sbarray_6, ScalarBoxes(:))
  call TI_call_OL(0,1, momenta_106, masses2_33, T1sum(7), M2,sbarray_7, ScalarBoxes(:))
  call TI_call_OL(0,1, momenta_108, masses2_33, T1sum(8), M2,sbarray_8, ScalarBoxes(:))
  call TI_call_OL(0,1, momenta_114, masses2_38, T1sum(9), M2,sbarray_9, ScalarBoxes(:))
  call TI_call_OL(0,1, momenta_110, masses2_37, T1sum(10), M2,sbarray_10, ScalarBoxes(:))
  call TI_call_OL(0,1, momenta_110, masses2_32, T1sum(11), M2,sbarray_11, ScalarBoxes(:))
  call TI_call_OL(0,1, momenta_115, masses2_38, T1sum(12), M2,sbarray_12, ScalarBoxes(:))
  call TI_call_OL(0,1, momenta_111, masses2_37, T1sum(13), M2,sbarray_13, ScalarBoxes(:))
  call TI_call_OL(0,1, momenta_111, masses2_32, T1sum(14), M2,sbarray_14, ScalarBoxes(:))
  call TI_call_OL(0,1, momenta_104, masses2_37, T1sum(15), M2,sbarray_15, ScalarBoxes(:))
  call TI_call_OL(0,1, momenta_104, masses2_32, T1sum(16), M2,sbarray_16, ScalarBoxes(:))
  call TI_call_OL(0,1, momenta_105, masses2_37, T1sum(17), M2,sbarray_17, ScalarBoxes(:))
  call TI_call_OL(0,1, momenta_105, masses2_32, T1sum(18), M2,sbarray_18, ScalarBoxes(:))
  call TI_call_OL(0,1, momenta_112, masses2_36, T1sum(19), M2,sbarray_19, ScalarBoxes(:))
  call TI_call_OL(0,1, momenta_113, masses2_36, T1sum(20), M2,sbarray_20, ScalarBoxes(:))
  call TI_call_OL(0,1, momenta_106, masses2_36, T1sum(21), M2,sbarray_21, ScalarBoxes(:))
  call TI_call_OL(0,1, momenta_107, masses2_35, T1sum(22), M2,sbarray_22, ScalarBoxes(:))
  call TI_call_OL(0,1, momenta_108, masses2_36, T1sum(23), M2,sbarray_23, ScalarBoxes(:))
  call TI_call_OL(0,1, momenta_109, masses2_35, T1sum(24), M2,sbarray_24, ScalarBoxes(:))
  call TI_call_OL(1,1, momenta_52, masses2_15, T1sum(25), M2)
  call TI_call_OL(1,1, momenta_39, masses2_15, T1sum(26), M2)
  call TI_call_OL(1,1, momenta_23, masses2_15, T1sum(27), M2)
  call TI_call_OL(1,1, momenta_19, masses2_15, T1sum(28), M2)
  call TI_call_OL(1,1, momenta_52, masses2_7, T1sum(29), M2)
  call TI_call_OL(1,1, momenta_39, masses2_7, T1sum(30), M2)
  call TI_call_OL(1,1, momenta_23, masses2_7, T1sum(31), M2)
  call TI_call_OL(1,1, momenta_19, masses2_7, T1sum(32), M2)
  call TI_call_OL(1,1, momenta_43, masses2_15, T1sum(33), M2)
  call TI_call_OL(1,1, momenta_40, masses2_15, T1sum(34), M2)
  call TI_call_OL(1,1, momenta_26, masses2_15, T1sum(35), M2)
  call TI_call_OL(1,1, momenta_43, masses2_7, T1sum(36), M2)
  call TI_call_OL(1,1, momenta_40, masses2_7, T1sum(37), M2)
  call TI_call_OL(1,1, momenta_26, masses2_7, T1sum(38), M2)
  call TI_call_OL(1,1, momenta_43, masses2_11, T1sum(39), M2)
  call TI_call_OL(1,1, momenta_40, masses2_11, T1sum(40), M2)
  call TI_call_OL(1,1, momenta_26, masses2_11, T1sum(41), M2)
  call TI_call_OL(1,1, momenta_19, masses2_11, T1sum(42), M2)
  call TI_call_OL(1,1, momenta_52, masses2_11, T1sum(43), M2)
  call TI_call_OL(1,1, momenta_39, masses2_11, T1sum(44), M2)
  call TI_call_OL(1,1, momenta_23, masses2_11, T1sum(45), M2)
  call TI_call_OL(1,1, momenta_53, masses2_7, T1sum(46), M2)
  call TI_call_OL(1,1, momenta_20, masses2_7, T1sum(47), M2)
  call TI_call_OL(1,1, momenta_53, masses2_15, T1sum(48), M2)
  call TI_call_OL(1,1, momenta_20, masses2_15, T1sum(49), M2)
  call TI_call_OL(1,1, momenta_53, masses2_11, T1sum(50), M2)
  call TI_call_OL(1,1, momenta_20, masses2_11, T1sum(51), M2)

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

end module ol_tensor_sum_storage_ppttj_ttxggg_1_/**/REALKIND
