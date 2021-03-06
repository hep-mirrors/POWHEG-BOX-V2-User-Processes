! 1
! The number above is the number of vamp routines for this process.
! This is needed by the build system.

#if 3 > 1
#ifndef USE_CHECK_qp
#define DUMMY_qp
#endif
#else
#ifndef USE_qp
#define DUMMY_qp
#endif
#endif

module ol_vamp_ppttj_ttxddxg_1_/**/REALKIND
  use KIND_TYPES, only: REALKIND
  implicit none
  real(REALKIND):: M2L0cache, M2L1cache
  contains

! **********************************************************************
  subroutine redbaseconstr()
! **********************************************************************
  use KIND_TYPES, only: REALKIND
  use ol_data_types_/**/REALKIND, only: basis
  use ol_parameters_decl_/**/QREALKIND ! masses
  use ol_tensor_sum_storage_ppttj_ttxddxg_1_/**/REALKIND
  use ofred_basis_construction_/**/REALKIND, only: construct_RedBasis, construct_redset4
  use ofred_basis_construction_/**/REALKIND, only: construct_redset5
  implicit none

  ! Define mass sets for reduction
  mass5set(0:4,1) = [0,0,nMT,0,0]
  mass5set(0:4,2) = [0,0,0,nMT,0]
  mass5set(0:4,3) = [nMT,nMT,0,0,0]
mass4set(0:3,1) = [0,0,0,0]
mass4set(0:3,2) = [0,0,nMT,nMT]
mass4set(0:3,3) = [nMT,nMT,0,0]
mass4set(0:3,4) = [nMT,nMT,0,nMT]
mass4set(0:3,5) = [0,0,nMT,0]
mass4set(0:3,6) = [0,0,0,nMT]
mass4set(0:3,7) = [0,nMT,0,0]
mass4set(0:3,8) = [nMT,0,0,0]
  mass3set(0:2,1) = [0,0,0]
  mass3set(0:2,2) = [0,0,nMT]
  mass3set(0:2,3) = [0,nMT,0]
  mass3set(0:2,4) = [nMT,nMT,0]
  mass3set(0:2,5) = [nMT,0,0]
  mass3set(0:2,6) = [nMT,0,nMT]
  mass3set(0:2,7) = [0,nMT,nMT]
  mass3set(0:2,8) = [nMT,nMT,nMT]
  mass3set(0:2,9) = [nMB,nMB,nMB]
mass2set(0:1,1) = [0,0]
mass2set(0:1,2) = [nMT,nMT]
mass2set(0:1,3) = [nMB,nMB]
mass2set(0:1,4) = [0,nMT]
mass2set(0:1,5) = [nMT,0]


  ! Compute reduction bases from external momentum pairs p1, p2 (in light cone rep)
  call construct_RedBasis(16,18,RedBasis(1))
  call construct_RedBasis(16,19,RedBasis(2))
  call construct_RedBasis(16,23,RedBasis(3))
  call construct_RedBasis(18,19,RedBasis(4))
  call construct_RedBasis(18,23,RedBasis(5))
  call construct_RedBasis(19,23,RedBasis(6))
  call construct_RedBasis(16,27,RedBasis(7))
  call construct_RedBasis(18,27,RedBasis(8))
  call construct_RedBasis(19,27,RedBasis(9))
  call construct_RedBasis(16,17,RedBasis(10))
  call construct_RedBasis(17,19,RedBasis(11))
  call construct_RedBasis(17,23,RedBasis(12))
  call construct_RedBasis(17,27,RedBasis(13))
  call construct_RedBasis(16,20,RedBasis(14))
  call construct_RedBasis(16,21,RedBasis(15))
  call construct_RedBasis(20,21,RedBasis(16))
  call construct_RedBasis(20,23,RedBasis(17))
  call construct_RedBasis(21,23,RedBasis(18))
  call construct_RedBasis(16,22,RedBasis(19))
  call construct_RedBasis(20,22,RedBasis(20))
  call construct_RedBasis(22,23,RedBasis(21))
  call construct_RedBasis(16,29,RedBasis(22))
  call construct_RedBasis(17,21,RedBasis(23))
  call construct_RedBasis(17,29,RedBasis(24))
  call construct_RedBasis(21,29,RedBasis(25))
  call construct_RedBasis(16,25,RedBasis(26))
  call construct_RedBasis(17,25,RedBasis(27))
  call construct_RedBasis(25,29,RedBasis(28))
  call construct_RedBasis(2,3,RedBasis(29))
  call construct_RedBasis(2,7,RedBasis(30))
  call construct_RedBasis(3,7,RedBasis(31))
  call construct_RedBasis(2,11,RedBasis(32))
  call construct_RedBasis(3,11,RedBasis(33))
  call construct_RedBasis(1,3,RedBasis(34))
  call construct_RedBasis(1,7,RedBasis(35))
  call construct_RedBasis(1,11,RedBasis(36))
  call construct_RedBasis(4,5,RedBasis(37))
  call construct_RedBasis(4,7,RedBasis(38))
  call construct_RedBasis(5,7,RedBasis(39))
  call construct_RedBasis(4,6,RedBasis(40))
  call construct_RedBasis(6,7,RedBasis(41))
  call construct_RedBasis(1,5,RedBasis(42))
  call construct_RedBasis(1,13,RedBasis(43))
  call construct_RedBasis(5,13,RedBasis(44))
  call construct_RedBasis(1,9,RedBasis(45))
  call construct_RedBasis(9,13,RedBasis(46))
  call construct_RedBasis(24,28,RedBasis(47))
  call construct_RedBasis(24,29,RedBasis(48))
  call construct_RedBasis(28,29,RedBasis(49))
  call construct_RedBasis(24,30,RedBasis(50))
  call construct_RedBasis(28,30,RedBasis(51))
  call construct_RedBasis(24,26,RedBasis(52))
  call construct_RedBasis(24,27,RedBasis(53))
  call construct_RedBasis(26,27,RedBasis(54))
  call construct_RedBasis(24,25,RedBasis(55))
  call construct_RedBasis(25,27,RedBasis(56))
  call construct_RedBasis(26,30,RedBasis(57))


  ! Compute scalars depending on a third momentum p3 (in light cone rep)
  call construct_redset5(16, 18, 19, 23, RedBasis(1), RedBasis(2), & 
 RedBasis(3), RedBasis(4),RedBasis(5), RedBasis(6), RedSet_5(1))
  call construct_redset5(16, 18, 19, 27, RedBasis(1), RedBasis(2), & 
 RedBasis(7), RedBasis(4),RedBasis(8), RedBasis(9), RedSet_5(2))
  call construct_redset5(16, 17, 19, 23, RedBasis(10), RedBasis(2), & 
 RedBasis(3), RedBasis(11),RedBasis(12), RedBasis(6), RedSet_5(3))
  call construct_redset5(16, 17, 19, 27, RedBasis(10), RedBasis(2), & 
 RedBasis(7), RedBasis(11),RedBasis(13), RedBasis(9), RedSet_5(4))
  call construct_redset5(16, 20, 21, 23, RedBasis(14), RedBasis(15), & 
 RedBasis(3), RedBasis(16),RedBasis(17), RedBasis(18), RedSet_5(5))
  call construct_redset5(16, 20, 22, 23, RedBasis(14), RedBasis(19), & 
 RedBasis(3), RedBasis(20),RedBasis(17), RedBasis(21), RedSet_5(6))
  call construct_redset5(16, 17, 21, 29, RedBasis(10), RedBasis(15), & 
 RedBasis(22), RedBasis(23),RedBasis(24), RedBasis(25), RedSet_5(7))
  call construct_redset5(16, 17, 25, 29, RedBasis(10), RedBasis(26), & 
 RedBasis(22), RedBasis(27),RedBasis(24), RedBasis(28), RedSet_5(8))
  call construct_redset4(18,19,23,RedBasis(4),RedBasis(5),RedBasis(6),RedSet_4(1))
  call construct_redset4(16,19,23,RedBasis(2),RedBasis(3),RedBasis(6),RedSet_4(2))
  call construct_redset4(16,18,23,RedBasis(1),RedBasis(3),RedBasis(5),RedSet_4(3))
  call construct_redset4(16,18,19,RedBasis(1),RedBasis(2),RedBasis(4),RedSet_4(4))
  call construct_redset4(2,3,7,RedBasis(29),RedBasis(30),RedBasis(31),RedSet_4(5))
  call construct_redset4(18,19,27,RedBasis(4),RedBasis(8),RedBasis(9),RedSet_4(6))
  call construct_redset4(16,19,27,RedBasis(2),RedBasis(7),RedBasis(9),RedSet_4(7))
  call construct_redset4(16,18,27,RedBasis(1),RedBasis(7),RedBasis(8),RedSet_4(8))
  call construct_redset4(2,3,11,RedBasis(29),RedBasis(32),RedBasis(33),RedSet_4(9))
  call construct_redset4(17,19,23,RedBasis(11),RedBasis(12),RedBasis(6),RedSet_4(10))
  call construct_redset4(16,17,23,RedBasis(10),RedBasis(3),RedBasis(12),RedSet_4(11))
  call construct_redset4(16,17,19,RedBasis(10),RedBasis(2),RedBasis(11),RedSet_4(12))
  call construct_redset4(1,3,7,RedBasis(34),RedBasis(35),RedBasis(31),RedSet_4(13))
  call construct_redset4(17,19,27,RedBasis(11),RedBasis(13),RedBasis(9),RedSet_4(14))
  call construct_redset4(16,17,27,RedBasis(10),RedBasis(7),RedBasis(13),RedSet_4(15))
  call construct_redset4(1,3,11,RedBasis(34),RedBasis(36),RedBasis(33),RedSet_4(16))
  call construct_redset4(20,21,23,RedBasis(16),RedBasis(17),RedBasis(18),RedSet_4(17))
  call construct_redset4(16,21,23,RedBasis(15),RedBasis(3),RedBasis(18),RedSet_4(18))
  call construct_redset4(16,20,23,RedBasis(14),RedBasis(3),RedBasis(17),RedSet_4(19))
  call construct_redset4(16,20,21,RedBasis(14),RedBasis(15),RedBasis(16),RedSet_4(20))
  call construct_redset4(4,5,7,RedBasis(37),RedBasis(38),RedBasis(39),RedSet_4(21))
  call construct_redset4(20,22,23,RedBasis(20),RedBasis(17),RedBasis(21),RedSet_4(22))
  call construct_redset4(16,22,23,RedBasis(19),RedBasis(3),RedBasis(21),RedSet_4(23))
  call construct_redset4(16,20,22,RedBasis(14),RedBasis(19),RedBasis(20),RedSet_4(24))
  call construct_redset4(4,6,7,RedBasis(40),RedBasis(38),RedBasis(41),RedSet_4(25))
  call construct_redset4(17,21,29,RedBasis(23),RedBasis(24),RedBasis(25),RedSet_4(26))
  call construct_redset4(16,21,29,RedBasis(15),RedBasis(22),RedBasis(25),RedSet_4(27))
  call construct_redset4(16,17,29,RedBasis(10),RedBasis(22),RedBasis(24),RedSet_4(28))
  call construct_redset4(16,17,21,RedBasis(10),RedBasis(15),RedBasis(23),RedSet_4(29))
  call construct_redset4(1,5,13,RedBasis(42),RedBasis(43),RedBasis(44),RedSet_4(30))
  call construct_redset4(17,25,29,RedBasis(27),RedBasis(24),RedBasis(28),RedSet_4(31))
  call construct_redset4(16,25,29,RedBasis(26),RedBasis(22),RedBasis(28),RedSet_4(32))
  call construct_redset4(16,17,25,RedBasis(10),RedBasis(26),RedBasis(27),RedSet_4(33))
  call construct_redset4(1,9,13,RedBasis(45),RedBasis(43),RedBasis(46),RedSet_4(34))
  call construct_redset4(24,28,29,RedBasis(47),RedBasis(48),RedBasis(49),RedSet_4(35))
  call construct_redset4(24,28,30,RedBasis(47),RedBasis(50),RedBasis(51),RedSet_4(36))
  call construct_redset4(24,26,27,RedBasis(52),RedBasis(53),RedBasis(54),RedSet_4(37))
  call construct_redset4(24,25,27,RedBasis(55),RedBasis(53),RedBasis(56),RedSet_4(38))

end subroutine



! **********************************************************************
subroutine vamp(M)
! **********************************************************************
  use KIND_TYPES, only: REALKIND, intkind2
  use ol_data_types_/**/REALKIND, only: Hpolcont
  use ol_parameters_decl_/**/REALKIND ! masses
  use ol_parameters_init_/**/REALKIND, only: init_met
  use ol_parameters_init_/**/DREALKIND, only: channel_on
  use ol_external_ppttj_ttxddxg_1, only: & 
    & channel_number_ppttj_ttxddxg_1
  use ol_tensor_sum_storage_ppttj_ttxddxg_1_/**/REALKIND
  use ol_loop_storage_ppttj_ttxddxg_1_/**/DREALKIND, only: &
    merge_step, hel_states

  use ol_vamp_1_ppttj_ttxddxg_1_/**/REALKIND, only: vamp_1

  implicit none
  type(Hpolcont), intent(in) :: M(4,hel_states)

#ifdef LOOPSQUARED
  M = 0
#endif

  merge_step = 1
  ! Call subroutines for all branches to calculate loop coefficient tensors
  call channel_on(channel_number_ppttj_ttxddxg_1)
  call init_met(M2L1R1)
  call vamp_1(M)


end subroutine vamp

! **********************************************************************
subroutine vamp2base(P_scatt, M2L0, M2L1, IRL1, M2L2, IRL2, mode)
! P_scatt(0:3,Npart) = external momenta
! M2tree = helicity-summed squared tree matrix element for top anti-top down anti-down glue -> 0
! M2loop0 = helicity-summed squared loop matrix element for top anti-top down anti-down glue -> 0
! M2loop1 = IR1, M2loop2 = IR2 are dummy values for the single and double poles
! IR0, IR1, IR2 = finite, single pole, and double pole IR contribution
! mode = 1 (default): full matrix element;
!        2: reuse and scale coefficients from the last call;
!        note that scalings cannot be reset
! **********************************************************************
  use KIND_TYPES, only: REALKIND, DREALKIND, intkind2
#ifdef PRECISION_dp
  use KIND_TYPES, only: QREALKIND, intkind2
#endif
  use ol_debug, only: ol_fatal
  use ol_generic, only: to_string
  use ol_external_ppttj_ttxddxg_1, only: &
    & external_perm_inv_ppttj_ttxddxg_1, &
    & average_factor_ppttj_ttxddxg_1, &
    & photonid_ppttj_ttxddxg_1
  use ol_colourmatrix_ppttj_ttxddxg_1_/**/REALKIND ! colmat_not_initialised, K1, K2, KL, KL2, KL2ct, KL2ct2
  use ol_kinematics_/**/REALKIND, only: init_kinematics, get_rmass2
  use ol_parameters_decl_/**/REALKIND ! parameters_status, scalefactor, <masses>
  ! tensorrankuse: for compatibility with old OL versions only insert if rank > 6
  use ol_parameters_init_/**/REALKIND, only: ensure_mp_loop_init
  use ol_init, only: set_parameter, parameters_flush
  use ol_loop_parameters_decl_/**/REALKIND, only: loop_parameters_status
  use ol_loop_parameters_decl_/**/DREALKIND, only: IR_is_on, ioperator_mode, CT_is_on
  use ol_ew_renormalisation_/**/REALKIND, only: photon_factors
  use ol_momenta_decl_/**/DREALKIND, only: momenta_nan_check
  use ol_momenta_decl_/**/REALKIND, only: QInvariantsMatrix
  use ol_tensor_sum_storage_ppttj_ttxddxg_1_/**/REALKIND, only: &
    & reset_tensor_sum, integrate_tensor_sum, scale_tensor_sum, HOL_memory_allocation_full, &
    HCL_memory_allocation, set_integral_masses_and_momenta, Tsum_memory_allocation, &
    HOL_memory_allocation_optimized
  use ol_tables_storage_ppttj_ttxddxg_1_/**/DREALKIND, only: HOL_m3_init
  use ol_loop_ppttj_ttxddxg_1_/**/REALKIND, only: amp2
  use ol_loop_ppttj_ttxddxg_1_/**/DREALKIND, only: init_merging_tables, update_merging_tables
  use ol_loop_storage_ppttj_ttxddxg_1_/**/REALKIND, only: &
    & fac_status_loop1, fac_status_loop2, M0_col1_helarray
  use ol_i_operator_/**/REALKIND, only: intdip
  use ol_loop_storage_ppttj_ttxddxg_1_/**/DREALKIND, only: ntryL, nhel, p_switch, &
    & dp_not_alloc, qp_not_alloc
  use ol_settings_ppttj_ttxddxg_1, only: hel_mem_opt
  use hol_initialisation_/**/REALKIND, only: G0_hol_initialisation
  use ol_h_vert_interface_/**/REALKIND
  use ol_h_prop_interface_/**/REALKIND
  implicit none

  real(DREALKIND), intent(in)  :: P_scatt(0:3,5)
  real(REALKIND),  intent(out) :: M2L0, M2L1, IRL1(0:2), M2L2, IRL2(0:4)
  integer, intent(in), optional :: mode
  real(REALKIND)       :: P(0:3,5)
  integer              :: i, j, colmatpos, recycle_mode, ofred_mode
  complex(REALKIND)    :: M0_col1(4), Mct(4)
  complex(REALKIND)    :: Mcol_loop(4)
  real(REALKIND)       :: M2colint(16), M2CC(5,5), M2CC_EW ! colour correlations
  integer              :: extmasses2(5)
  real(REALKIND)       :: M2hel, M2ct, M2L2ct, M2L2ct2, vdip, c_dip(0:2)
  real(REALKIND)       :: scalebackfactor
  real(REALKIND)       :: bornphotonfactor = rONE , loopphotonfactor = rZERO
  integer(intkind2) :: helstates

  ofred_mode = 1

  if (present(mode)) then
    recycle_mode = mode
  else
    recycle_mode = 1
  end if

  call parameters_flush()
  call ensure_mp_loop_init()



  M2L0     = 0
  M2L1     = 0
  M2ct     = 0
  M2colint = 0
  M2L2     = 0
  M2L2ct   = 0
  M2L2ct2  = 0
  IRL1     = 0
  IRL2     = 0
  extmasses2 = [ nMT, nMT, 0, 0, 0 ]

  if (momenta_nan_check(P_scatt) /= 0) return

  ! Here we calculate the tree level squared using the helicity bookkeeping subroutines
  ! The value of the tree level squared is M2L0
  ! The subtrees are also initialised
  call amp2(P_scatt, M2L0, .true., M2ct=M2ct, M2colint=M2colint)

  !The following part refers to the 1-loop calculation
#ifndef PRECISION_dp
  if (ntryL==1 .OR. qp_not_alloc) then
    call Tsum_memory_allocation()
  end if
#else
  if (ntryL==1 .OR. dp_not_alloc) then
    call Tsum_memory_allocation()
  end if
#endif

#ifdef LOOPSQUARED
  call integrate_tensor_sum(M2L1)
#else
  if (recycle_mode == 1 .or. ofred_mode == 1) call reset_tensor_sum()
#endif

  ! Construction of the basis used for the reduction
  call redbaseconstr()
  ! Memory allocation for the hol types is done just for the first phase space point
  ! Memory is reallocated when switching from double- to quad-precision for the first time
#ifndef PRECISION_dp
  if (ntryL==1 .OR. qp_not_alloc) then
    if(hel_mem_opt) then
      call HOL_memory_allocation_optimized()
    else
      call HOL_memory_allocation_full()
    end if
    call HCL_memory_allocation()
    qp_not_alloc = .FALSE.
  end if
#else
  if (ntryL==1 .OR. dp_not_alloc) then
    if(hel_mem_opt) then
      call HOL_memory_allocation_optimized()
    else
      call HOL_memory_allocation_full()
    end if
    call HCL_memory_allocation()
    dp_not_alloc = .FALSE.
  end if
#endif

  if(ntryL == 1) then
    !! m3 initialization done just for the first phase space point
    call HOL_m3_init()
    !! first temporary initialization of the merging tables
    call init_merging_tables(32,85)
  end if

  call set_integral_masses_and_momenta()

  !! Call for the calculation of the born-loop interference
  if (recycle_mode == 1 .or. ofred_mode == 1) then
    call vamp(M0_col1_helarray)
  end if

  !! Merging tables are adjusted and allocated with the proper dimensionality
  if(ntryL == 1) call update_merging_tables(32)

  if(ntryL==1) ntryL = ntryL + 1

#ifdef PRECISION_dp
  p_switch = 1
#else
  p_switch = 2
#endif


#ifdef LOOPSQUARED
  M2L2 = (M2L2 + 2*M2L2ct + M2L2ct2) / &
         & average_factor_ppttj_ttxddxg_1
#else
  if (recycle_mode == 2 .and. ofred_mode == 0) then
    call scale_tensor_sum()
  end if
  call integrate_tensor_sum(M2L1)
#endif

  if (IR_is_on > 0) then
    do i = 1, 5
      do j = 1, i
        ! Why does this work without permuting the colour correlation matrices?
        M2CC(i,j) = M2colint(i*(i-1)/2+j)
      end do
    end do
    do j = 2, 5
      do i = 1, j-1
        M2CC(i,j) = M2CC(j,i)
      end do
    end do
    M2CC_EW = M2colint(5*(5+1)/2+1)
    call intdip(ioperator_mode, M2L0, M2CC, M2CC_EW, [2,2,2,2,1], [2,-2,-1,1,0]/3._/**/REALKIND, &
      & 5, get_rmass2(extmasses2), QInvariantsMatrix, vdip, c_dip, &
      & 1, &
      & [( photonid_ppttj_ttxddxg_1( &
      & external_perm_inv_ppttj_ttxddxg_1(i)), &
      & i=1, size(external_perm_inv_ppttj_ttxddxg_1))])
    IRL1(0) = c_dip(0) / average_factor_ppttj_ttxddxg_1
    IRL1(1) = c_dip(1) / average_factor_ppttj_ttxddxg_1
    IRL1(2) = c_dip(2) / average_factor_ppttj_ttxddxg_1
  else
    vdip = 0
    IRL1 = 0
  end if

  ! loop^2 IR contribution: not implemented
  IRL2 = 0

  ! photon factors
  call photon_factors(photonid_ppttj_ttxddxg_1, &
       & 0, bornphotonfactor, loopphotonfactor)
  M2L0 = bornphotonfactor * M2L0
  M2L1 = bornphotonfactor * M2L1
  IRL1 = bornphotonfactor * IRL1
  M2L2 = bornphotonfactor * M2L2
  IRL2 = bornphotonfactor * IRL2
  M2ct = bornphotonfactor * M2ct
  vdip = bornphotonfactor * vdip
  if (CT_is_on .gt. 0) M2ct = M2ct+M2L0*loopphotonfactor

  ! Colour and helicity average and symmetry factor of outgoing particles
  M2L0 = M2L0 / average_factor_ppttj_ttxddxg_1
  M2L1 = 2*(M2L1 + M2ct)
  if (IR_is_on > 1) then
    M2L1 = M2L1 + vdip
  end if
  M2L1 = M2L1 / average_factor_ppttj_ttxddxg_1

  ! check for NaN result
  if (M2L0 /= M2L0) then
    M2L0 = 0
  end if
  if (M2L1 /= M2L1) then
    M2L1 = 0
    M2L2 = 0
    IRL1 = 0
    IRL2 = 0
  end if

  scalebackfactor = scalefactor**(2*5-8)
  M2L0 = scalebackfactor * M2L0
  M2L1 = scalebackfactor * M2L1
  IRL1 = scalebackfactor * IRL1
  M2L2 = scalebackfactor * M2L2
  IRL2 = scalebackfactor * IRL2
  M2L0cache = M2L0
  M2L1cache = M2L1

end subroutine vamp2base


! **********************************************************************
subroutine ctamp2base(P_scatt, M2tree, M2ct)
! The part of vamp2 which calculates tree and counter-term
! matrix elements, but not the loop. R2 is deactivated.
! Does not calculate loop^2 counterterms/R2.
! P_scatt(0:3,Npart) = external momenta
! M2tree = helicity-summed squared tree matrix element for top anti-top down anti-down glue -> 0
! M2ct   = helicity-summed counterterm matrix element
! **********************************************************************
  use KIND_TYPES, only: REALKIND, DREALKIND
  use ol_external_ppttj_ttxddxg_1, only: &
    & photonid_ppttj_ttxddxg_1
  use ol_colourmatrix_ppttj_ttxddxg_1_/**/REALKIND, only: &
    & colmat_not_initialised, K1, K2
  use ol_parameters_decl_/**/REALKIND ! parameters_status, scalefactor, <masses>
  use ol_parameters_decl_/**/DREALKIND, only: do_ew_renorm
  use ol_loop_parameters_decl_/**/DREALKIND, only: &
    & loop_parameters_status, CT_is_on, R2_is_on, TP_is_on
  use ol_ew_renormalisation_/**/REALKIND, only: photon_factors
  use ol_init, only: set_parameter, parameters_flush
  use ol_parameters_init_/**/REALKIND, only: ensure_mp_loop_init
  use ol_loop_parameters_decl_/**/DREALKIND, only: DOI
  use ol_external_ppttj_ttxddxg_1, only: &
    & external_perm_inv_ppttj_ttxddxg_1, average_factor_ppttj_ttxddxg_1
  use ol_momenta_decl_/**/DREALKIND, only: momenta_nan_check
  use ol_kinematics_/**/REALKIND, only: init_kinematics
  use ol_loop_storage_ppttj_ttxddxg_1_/**/REALKIND, only: &
    & fac_status_loop1, fac_status_loop2
  use ol_loop_ppttj_ttxddxg_1_/**/REALKIND, only: amp2
  implicit none

  real(DREALKIND), intent(in)  :: P_scatt(0:3,5)
  real(REALKIND),  intent(out) :: M2tree, M2ct
  real(REALKIND)    :: P(0:3,5)
  real(REALKIND)    :: M2colint(16)
  integer           :: CT_on_bak, R2_on_bak, TP_on_bak
  real(REALKIND)    :: scalebackfactor, bornphotonfactor = rONE, loopphotonfactor = rZERO
  integer           :: DOI_bak

  M2tree = 0
  M2ct   = 0

  if (CT_is_on == 2) then
    call set_parameter("ct_on", 1)
  else if (CT_is_on == -1) then
    call set_parameter("ct_on", 0)
  end if
  DOI_bak = DOI
  DOI = 0

  if (momenta_nan_check(P_scatt) /= 0)  return

  ! Here we calculate the tree level squared using the helicity bookkeeping subroutines
  call amp2(P_scatt, M2tree, .false., M2ct=M2ct)

  ! photon factors
  call photon_factors(photonid_ppttj_ttxddxg_1, 0, bornphotonfactor, loopphotonfactor)
  M2tree = bornphotonfactor * M2tree
  M2ct = bornphotonfactor * M2ct
  if (CT_is_on .gt. 0) M2ct = M2ct+M2tree*loopphotonfactor

  DOI = DOI_bak

  scalebackfactor = scalefactor**(2*5-8)
  M2tree = scalebackfactor * M2tree / average_factor_ppttj_ttxddxg_1
  M2ct   = scalebackfactor * 2*M2ct / average_factor_ppttj_ttxddxg_1

end subroutine ctamp2base



! **********************************************************************
subroutine iopamp2base(P_scatt, M2L0, IRL1)
! P_scatt(0:3,Npart) = external momenta
! IR0, IR1, IR2 = finite, single pole, and double pole IR contribution
! **********************************************************************
  use KIND_TYPES, only: REALKIND, DREALKIND, intkind2
#ifdef PRECISION_dp
  use KIND_TYPES, only: QREALKIND, intkind2
#endif
  use ol_debug, only: ol_fatal
  use ol_generic, only: to_string
  use ol_external_ppttj_ttxddxg_1, only: &
    & external_perm_inv_ppttj_ttxddxg_1, &
    & average_factor_ppttj_ttxddxg_1, &
    & photonid_ppttj_ttxddxg_1
  use ol_colourmatrix_ppttj_ttxddxg_1_/**/REALKIND ! colmat_not_initialised, K1, K2, KL, KL2, KL2ct, KL2ct2
  use ol_kinematics_/**/REALKIND, only: init_kinematics, get_rmass2
  use ol_parameters_decl_/**/REALKIND ! parameters_status, scalefactor, <masses>
  ! tensorrankuse: for compatibility with old OL versions only insert if rank > 6
  use ol_parameters_init_/**/REALKIND, only: ensure_mp_loop_init
  use ol_init, only: set_parameter, parameters_flush
  use ol_loop_parameters_decl_/**/REALKIND, only: loop_parameters_status
  use ol_loop_parameters_decl_/**/DREALKIND, only: IR_is_on, ioperator_mode
  use ol_ew_renormalisation_/**/REALKIND, only: photon_factors
  use ol_momenta_decl_/**/DREALKIND, only: momenta_nan_check
  use ol_momenta_decl_/**/REALKIND, only: QInvariantsMatrix
  use ol_loop_ppttj_ttxddxg_1_/**/REALKIND, only: amp2
  use ol_i_operator_/**/REALKIND, only: intdip
  use ol_loop_storage_ppttj_ttxddxg_1_/**/REALKIND, only: &
    & fac_status_loop1, fac_status_loop2
  implicit none

  real(DREALKIND), intent(in)  :: P_scatt(0:3,5)
  real(REALKIND),  intent(out) :: M2L0, IRL1(0:2)
  real(REALKIND)       :: P(0:3,5)
  integer              :: i, j, colmatpos
  complex(REALKIND)    :: M0_col1(4), Mct(4)
  complex(REALKIND)    :: Mcol_loop(4)
  real(REALKIND)       :: M2colint(16), M2CC(5,5), M2CC_EW ! colour correlations
  integer              :: extmasses2(5)
  real(REALKIND)       :: M2ct, M2hel, vdip, c_dip(0:2)
  real(REALKIND)       :: scalebackfactor
  real(REALKIND)       :: bornphotonfactor = rONE , loopphotonfactor = rZERO
  integer(intkind2) :: helstates

  M2L0     = 0
  M2ct     = 0
  M2colint = 0
  IRL1     = 0
  extmasses2 = [ nMT, nMT, 0, 0, 0 ]

  if (momenta_nan_check(P_scatt) /= 0) return

  ! Here we calculate the tree level squared using the helicity bookkeeping subroutines
  call amp2(P_scatt, M2L0, .false., M2colint=M2colint)

  if (IR_is_on > 0) then
    do i = 1, 5
      do j = 1, i
        ! Why does this work without permuting the colour correlation matrices?
        M2CC(i,j) = M2colint(i*(i-1)/2+j)
      end do
    end do
    do j = 2, 5
      do i = 1, j-1
        M2CC(i,j) = M2CC(j,i)
      end do
    end do
    M2CC_EW = M2colint(5*(5+1)/2+1)
    call intdip(ioperator_mode, M2L0, M2CC, M2CC_EW, [2,2,2,2,1], [2,-2,-1,1,0]/3._/**/REALKIND, &
      & 5, get_rmass2(extmasses2), QInvariantsMatrix, vdip, c_dip, &
      & 1, &
      & [( photonid_ppttj_ttxddxg_1( &
      & external_perm_inv_ppttj_ttxddxg_1(i)), &
      & i=1, size(external_perm_inv_ppttj_ttxddxg_1))])
    IRL1(0) = c_dip(0) / average_factor_ppttj_ttxddxg_1
    IRL1(1) = c_dip(1) / average_factor_ppttj_ttxddxg_1
    IRL1(2) = c_dip(2) / average_factor_ppttj_ttxddxg_1
  else
    vdip = 0
    IRL1 = 0
  end if

  ! photon factors
  call photon_factors(photonid_ppttj_ttxddxg_1, &
       & 0, bornphotonfactor, loopphotonfactor)
  M2L0 = bornphotonfactor * M2L0
  IRL1 = bornphotonfactor * IRL1

  ! check for NaN result
  if (M2L0 /= M2L0) then
    M2L0 = 0
    IRL1 = 0
  end if

  scalebackfactor = scalefactor**(2*5-8)
  M2L0 = scalebackfactor * M2L0
  IRL1 = scalebackfactor * IRL1

end subroutine iopamp2base



! **********************************************************************
subroutine vamp2cache(P_scatt, M2L0, M2L1, corr)
! **********************************************************************
  use KIND_TYPES, only: REALKIND, DREALKIND, intkind2
  use ol_parameters_decl_/**/REALKIND ! parameters_status, scalefactor, <masses>
  use ol_loop_parameters_decl_/**/DREALKIND, only: CT_is_on
  use ol_external_ppttj_ttxddxg_1, only: & 
    & extcomb_perm_ppttj_ttxddxg_1, &
    & average_factor_ppttj_ttxddxg_1, &
    & photonid_ppttj_ttxddxg_1
  use ol_loop_storage_ppttj_ttxddxg_1_/**/REALKIND, only: M2ctcc, M0M1_hel_cc
  use ol_tensor_sum_storage_ppttj_ttxddxg_1_/**/REALKIND, only: reset_tensor_sum, &
    & integrate_tensor_sum
  use ol_debug, only: ol_fatal
  use ol_colourmatrix_ppttj_ttxddxg_1_/**/REALKIND, only: Cas
  use ol_data_types_/**/DREALKIND, only: correlator
  use ol_ew_renormalisation_/**/REALKIND, only: photon_factors
  implicit none
  real(DREALKIND), intent(in)  :: P_scatt(0:3,5)
  real(REALKIND),  intent(out) :: M2L0, M2L1
  real(REALKIND) :: M2L1cc(0:16)
  real(REALKIND)       :: bornphotonfactor = rONE , loopphotonfactor = rZERO
  type(correlator) :: corr
#if 5 > 3
  integer :: co, k, m, ind_cc_comb(5)
#else
  integer :: co, k, m
#endif
#if 1 > 0
  ind_cc_comb = [2,4,7,5,8]
  M2L1cc = 0
  !! Diagonal born-loop colour correlators
  co = 0
  do k = 1, 5
    co = co + k
    M2L1cc(co) = Cas(k)*M2L1cache
  end do
#if 5 > 3
  ! photon factors
  call photon_factors(photonid_ppttj_ttxddxg_1, &
       & 0, bornphotonfactor, loopphotonfactor)
  if (CT_is_on .gt. 0) M2ctcc = M2ctcc+M2L0cache*loopphotonfactor
  !! Independent colour correlators
  do k = 1, 5
    m = ind_cc_comb(k)
    call reset_tensor_sum()
    M2L1 = 0
    if(sum(abs(M0M1_hel_cc(:,:,m)%j)) == 0) then
      M2L1 = 0
    else
      call vamp(M0M1_hel_cc(:,:,m))
      call integrate_tensor_sum(M2L1)
    end if
    M2L1 = bornphotonfactor * M2L1
    if (CT_is_on .gt. 0) M2ctcc = M2ctcc+M2L0*loopphotonfactor
    M2L1cc(m) = 2*(M2L1 + M2ctcc(m))/average_factor_ppttj_ttxddxg_1
  end do
#endif
  !! Linearly dependent colour correlators
  M2L1cc(11) = -(M2L1cache*Cas(1)) - M2L1cc(2) - M2L1cc(4) - M2L1cc(7)
  M2L1cc(12) = -(M2L1cache*Cas(2)) - M2L1cc(2) - M2L1cc(5) - M2L1cc(8)
  M2L1cc(9) = -(M2L1cache*(Cas(1) + Cas(2) + Cas(3) + Cas(4) - Cas(5)))/2 - M2L1cc(2) - M2L1cc(4) - M2L1cc(5)  &
  - M2L1cc(7) - M2L1cc(8)
  M2L1cc(13) = (M2L1cache*(Cas(1) + Cas(2) - Cas(3) + Cas(4) - Cas(5)))/2 + M2L1cc(2) + M2L1cc(7) + M2L1cc(8)
  M2L1cc(14) = (M2L1cache*(Cas(1) + Cas(2) + Cas(3) - Cas(4) - Cas(5)))/2 + M2L1cc(2) + M2L1cc(4) + M2L1cc(5)
  
  do k = 1, 16
    corr%rescc(k) = M2L1cc(extcomb_perm_ppttj_ttxddxg_1(k))
  end do
  M2L0 = M2L0cache
  corr%rescc(0) = M2L1cache
  M2L1 = M2L1cache
#else
  call ol_fatal("born-loop colour correlators not available for process ppttj_ttxddxg_1")
#endif
end subroutine vamp2cache



subroutine vamp2pc(P_scatt, M2L0, M2L1, IRL1, M2L2, IRL2, mode)
  ! polecheck routine: perform multiple calls of vamp2
  ! with different values of the UV/IR poles
  ! to determine the coefficients of the IR poles.
  use KIND_TYPES, only: REALKIND, DREALKIND
  use ol_parameters_decl_/**/DREALKIND, only: rZERO_dp => rZERO
  use ol_loop_parameters_decl_/**/REALKIND, only: &
    & de1_UV, de1_IR, de2_i_IR
  use ol_loop_parameters_decl_/**/DREALKIND, only: &
    & polescale_dp => polescale, polecheck_is, CT_is_on, IR_is_on
  use ol_init, only: set_parameter
  implicit none
  real(DREALKIND), intent(in)  :: P_scatt(:,:)
  real(REALKIND),  intent(out) :: M2L0, M2L1(0:2), IRL1(0:2), M2L2(0:4), IRL2(0:4)
  integer, intent(in), optional :: mode
  real(DREALKIND) :: poleUV1bak, poleIR1bak, poleIR2bak
  integer         :: CT_on_bak, IR_on_bak
  real(REALKIND)  :: M2L1_00, M2L1_10, M2L1_01, M2L1_20, M2L1_02, M2L1_11
  real(REALKIND)  :: M2L2_00, M2L2_10, M2L2_01, M2L2_20, M2L2_02, M2L2_11
  real(REALKIND)  :: IRL1x(0:2), IRL2x(0:4)

  if (polecheck_is == 0) then
    call vamp2base(P_scatt, M2L0, M2L1(0), IRL1, M2L2(0), IRL2, mode)
    if (IR_is_on == 2) then
      M2L1(1:2) = 0
      M2L2(1:4) = 0
    else
      M2L1(1:2) = -IRL1(1:2)
      M2L2(1:4) = -IRL2(1:4)
    end if
  else
    ! remember original parameters
    poleUV1bak = de1_UV
    poleIR1bak = de1_IR
    poleIR2bak = de2_i_IR
    CT_on_bak  = CT_is_on
    IR_on_bak  = IR_is_on
    ! three calls with different IR poles; IR subtractions are calculated but not added
    call set_parameter("pole_uv", rZERO_dp)
    call set_parameter("pole_ir1", rZERO_dp)
    call set_parameter("pole_ir2", rZERO_dp)
    call set_parameter("ct_on", 1)
    call set_parameter("ir_on", 1)
    call vamp2base(P_scatt, M2L0, M2L1_00, IRL1, M2L2_00, IRL2, mode)
    call set_parameter("pole_uv", polescale_dp)
    call set_parameter("pole_ir1", polescale_dp)
    call set_parameter("pole_ir2", rZERO_dp)
    call set_parameter("ir_on", 0)
    call vamp2base(P_scatt, M2L0, M2L1_10, IRL1x, M2L2_10, IRL2x, mode)
    call set_parameter("pole_uv", rZERO_dp)
    call set_parameter("pole_ir1", rZERO_dp)
    call set_parameter("pole_ir2", polescale_dp)
    call vamp2base(P_scatt, M2L0, M2L1_01, IRL1x, M2L2_01, IRL2x, mode)

    M2L1(0) = M2L1_00
    M2L1(1) = (M2L1_10 - M2L1_00)/polescale_dp
    M2L1(2) = (M2L1_01 - M2L1_00)/polescale_dp

#ifdef LOOPSQUARED
    call set_parameter("pole_uv", polescale_dp)
    call set_parameter("pole_ir1", 2*polescale_dp)
    call set_parameter("pole_ir2", rZERO_dp)
    call vamp2base(P_scatt, M2L0, M2L1_20, IRL1x, M2L2_20, IRL2x)
    call set_parameter("pole_uv", rZERO_dp)
    call set_parameter("pole_ir1", rZERO_dp)
    call set_parameter("pole_ir2", 2*polescale_dp)
    call vamp2base(P_scatt, M2L0, M2L1_02, IRL1x, M2L2_02, IRL2x)
    call set_parameter("pole_uv", rZERO_dp)
    call set_parameter("pole_ir1", polescale_dp)
    call set_parameter("pole_ir2", polescale_dp)
    call vamp2base(P_scatt, M2L0, M2L1_11, IRL1x, M2L2_11, IRL2x)

    M2L2(0) = M2L2_00
    M2L2(1) = (-3*M2L2_00 - M2L2_20 + 4*M2L2_10)/(2*polescale_dp)
    M2L2(2) = (-3*M2L2_00 + 4*M2L2_01 - M2L2_02)/(2*polescale_dp) + (M2L2_00 - 2*M2L2_10 + M2L2_20)/(2*polescale_dp**2)
    M2L2(3) = (M2L2_00 - M2L2_01 - M2L2_10 + M2L2_11)/polescale_dp**2
    M2L2(4) = (M2L2_00 + M2L2_02 - 2*M2L2_01)/(2*polescale_dp**2)
#endif
    ! restore original parameters
    call set_parameter("pole_uv", poleUV1bak)
    call set_parameter("pole_ir1", poleIR1bak)
    call set_parameter("pole_ir2", poleIR2bak)
    call set_parameter("ct_on", CT_on_bak)
    call set_parameter("ir_on", IR_on_bak)
    if (IR_on_bak == 2) then
      M2L1 = M2L1 + IRL1
      M2L2 = M2L2 + IRL2
    end if
  end if

end subroutine vamp2pc

end module ol_vamp_ppttj_ttxddxg_1_/**/REALKIND


#ifdef DUMMY_qp
module ol_vamp_ppttj_ttxddxg_1_/**/QREALKIND
  implicit none
  contains
  subroutine vamp2pc(P_scatt, M2L0, M2L1, IRL1, M2L2, IRL2, mode)
    ! Dummy quad precision routine. Throws an error if the process called but
    ! the process has not been compiled in quad precision.
    use KIND_TYPES, only: DREALKIND, QREALKIND
    use ol_debug, only: ol_fatal
    implicit none
    real(DREALKIND), intent(in)  :: P_scatt(:,:)
    real(QREALKIND),  intent(out) :: M2L0, M2L1(0:2), IRL1(0:2), M2L2(0:4), IRL2(0:4)
    integer, intent(in), optional :: mode
    call ol_fatal("Process ppttj_ttxddxg_1" &
      & // "has not been compiled in quad precision")
  end subroutine vamp2pc
end module ol_vamp_ppttj_ttxddxg_1_/**/QREALKIND
#endif


#ifdef PRECISION_dp

module ol_vamp_ppttj_ttxddxg_1
  use ol_parameters_decl_/**/DREALKIND, only: procname_length
  use ol_data_types_/**/DREALKIND, only: me_cache
  implicit none
  character(procname_length) :: processname = 'ppttj_ttxddxg_1'
  integer, save :: qp_eval = 0, killed = 0
  integer, save :: npoints(8) = 0
  integer, save :: stability_histogram(20) = 0, stability_histogram_qp(20) = 0
  type(me_cache), allocatable, target, save :: me_caches(:)
  contains

  subroutine finish_ppttj_ttxddxg_1()
    ! final update of the stability histogram and memory deallocation
    use KIND_TYPES, only: DREALKIND
!   use ol_data_types_/**/REALKIND, only: Hpolcont
!   use ol_tensor_sum_storage_ppttj_ttxddxg_1_/**/DREALKIND, only: HOL_memory_allocation
    use ol_stability, only: finish_histograms
    use ol_vamp_ppttj_ttxddxg_1_/**/DREALKIND, only: vamp
    use ol_tensor_sum_storage_ppttj_ttxddxg_1_/**/DREALKIND, only: &
      & HOL_memory_deallocation_/**/DREALKIND, HCL_memory_deallocation_/**/DREALKIND
#ifndef DUMMY_qp
    use ol_tensor_sum_storage_ppttj_ttxddxg_1_/**/QREALKIND, only: &
      & HOL_memory_deallocation_/**/QREALKIND, HCL_memory_deallocation_/**/QREALKIND
#endif
    use ol_loop_storage_ppttj_ttxddxg_1_/**/DREALKIND, only: &
      & dp_not_alloc, qp_not_alloc, merge_tables, merge_mism, merge_hels, merge_tables_on, A, &
      & M1helarray, M1helarray_ct, M0_col1_helarray, M0M1_hel_cc
      implicit none
      integer :: k
!   type(Hpolcont) :: Mdummy(4,32)
!   call HOL_memory_allocation()
!   call vamp(Mdummy)

    ! Memory is deallocated for both dp and/or qp stored hol coefficients
    if (.NOT. dp_not_alloc) then
      call HOL_memory_deallocation_/**/DREALKIND(0)
      call HCL_memory_deallocation_/**/DREALKIND(0)
    end if
#ifndef DUMMY_qp
    if (.NOT. qp_not_alloc) then
      call HOL_memory_deallocation_/**/QREALKIND(0)
      call HCL_memory_deallocation_/**/QREALKIND(0)
    end if
#endif

    if (merge_tables_on) then
      if (allocated(merge_tables)) deallocate(merge_tables)
      if (allocated(merge_mism)) deallocate(merge_mism)
      if (allocated(merge_hels)) deallocate(merge_hels)
      merge_tables_on = .false.
    end if

    if (allocated(A)) deallocate(A)
    if (allocated(M1helarray)) deallocate(M1helarray)
    if (allocated(M1helarray_ct)) deallocate(M1helarray_ct)
    if (allocated(M0_col1_helarray)) deallocate(M0_col1_helarray)
    if (allocated(M0M1_hel_cc)) deallocate(M0M1_hel_cc)

    if (allocated(me_caches)) then
      do k = 1, size(me_caches)
      if (allocated(me_caches(k)%psp)) deallocate(me_caches(k)%psp)
      if (allocated(me_caches(k)%me)) deallocate(me_caches(k)%me)
    end do
      if (allocated(me_caches)) deallocate(me_caches)
    end if
    call finish_histograms(processname, stability_histogram, stability_histogram_qp, npoints, qp_eval, killed)
  end subroutine finish_ppttj_ttxddxg_1


  subroutine vamp2(P_scatt, M2L0, M2L1, IRL1, M2L2, IRL2) &
      & bind(c,name="ol_f_vamp2_ppttj_ttxddxg_1")
    use KIND_TYPES, only: DREALKIND
    use ol_init, only: register_cleanup
    use ol_external_ppttj_ttxddxg_1, only: &
      & external_perm_ppttj_ttxddxg_1
    use ol_vamp_ppttj_ttxddxg_1_/**/DREALKIND, only: vamp2dp => vamp2pc
    use ol_vamp_ppttj_ttxddxg_1_/**/QREALKIND, only: vamp2qp => vamp2pc
    use ol_stability, only: vamp2generic
    implicit none
    real(DREALKIND), intent(in)  :: P_scatt(0:3,5)
    real(DREALKIND), intent(out) :: M2L0, M2L1(0:2), IRL1(0:2), M2L2(0:4), IRL2(0:4)
    real(DREALKIND), save :: abs_kfactor_threshold = 1, trigeff_local = 0, sum_M2tree = 0
    logical :: first_call = .true.
    if (first_call) then
      call register_cleanup(finish_ppttj_ttxddxg_1)
      first_call = .false.
    end if
    call vamp2generic(vamp2dp, vamp2qp, processname, P_scatt, M2L0, M2L1, IRL1, M2L2, IRL2, &
                    & abs_kfactor_threshold, trigeff_local, sum_M2tree, &
                    & npoints, qp_eval, killed, stability_histogram, stability_histogram_qp, &
                    & external_perm_ppttj_ttxddxg_1, me_caches)
  end subroutine vamp2


  subroutine ctamp2(P_scatt, M2tree, M2ct) &
      & bind(c,name="ol_f_ctamp2_ppttj_ttxddxg_1")
    use KIND_TYPES, only: DREALKIND
    use ol_vamp_ppttj_ttxddxg_1_/**/DREALKIND, only: ctamp2base
    implicit none
    real(DREALKIND), intent(in)  :: P_scatt(0:3,5)
    real(DREALKIND), intent(out) :: M2tree, M2ct
    call ctamp2base(P_scatt, M2tree, M2ct)
  end subroutine ctamp2


  subroutine iopamp2(P_scatt, M2tree, IRL1) &
      & bind(c,name="ol_f_iopamp2_ppttj_ttxddxg_1")
    use KIND_TYPES, only: DREALKIND
    use ol_vamp_ppttj_ttxddxg_1_/**/DREALKIND, only: iopamp2base
    implicit none
    real(DREALKIND), intent(in)  :: P_scatt(0:3,5)
    real(DREALKIND), intent(out) :: M2tree, IRL1(0:2)
    call iopamp2base(P_scatt, M2tree, IRL1)
  end subroutine iopamp2



  subroutine vamp2_c(P_scatt, M2L0, M2L1, IRL1, M2L2, IRL2) &
      & bind(c,name="ol_vamp2_ppttj_ttxddxg_1")
    use KIND_TYPES, only: DREALKIND
    use, intrinsic :: iso_c_binding, only: c_double
    implicit none
    real(c_double), intent(in)  :: P_scatt(0:3,5)
    real(c_double), intent(out) :: M2L0, M2L1(0:2), IRL1(0:2), M2L2(0:4), IRL2(0:4)
    real(DREALKIND) :: f_p_scatt(0:3,5)
    real(DREALKIND) :: f_m2l0, f_m2l1(0:2), f_irl1(0:2), f_m2l2(0:4), f_irl2(0:4)
    f_p_scatt = P_scatt
    call vamp2(f_p_scatt, f_m2l0, f_m2l1, f_irl1, f_m2l2, f_irl2)
    M2L0 = f_m2l0
    M2L1 = f_m2l1
    IRL1 = f_irl1
    M2L2 = f_m2l2
    IRL2 = f_irl2
  end subroutine vamp2_c


  subroutine ctamp2_c(P_scatt, M2tree, M2ct) &
      & bind(c,name="ol_ctamp2_ppttj_ttxddxg_1")
    use KIND_TYPES, only: DREALKIND
    use, intrinsic :: iso_c_binding, only: c_double
    implicit none
    real(c_double), intent(in)  :: P_scatt(0:3,5)
    real(c_double), intent(out) :: M2tree, M2ct
    real(DREALKIND) :: f_p_scatt(0:3,5)
    real(DREALKIND) :: f_m2tree, f_m2ct
    f_p_scatt = P_scatt
    call ctamp2(f_p_scatt, f_m2tree, f_m2ct)
    M2tree = f_m2tree
    M2ct = f_m2ct
  end subroutine ctamp2_c

  !!! Interface for tree-loop correlators.
  subroutine vampcr2(P_scatt, M2L0, M2L1, M2L2, crtype, &
      & emitter, nextcombs, extcombs, mom, M2cc, M2munu) &
      & bind(c,name="ol_f_vampcr2_ppttj_ttxddxg_1")
    use KIND_TYPES, only: DREALKIND
    use ol_debug, only: ol_error
    use ol_vamp_ppttj_ttxddxg_1_/**/DREALKIND, only: vamp2cache
    use ol_data_types_/**/DREALKIND, only: correlator
    implicit none
    real(DREALKIND), intent(in)  :: P_scatt(0:3,5), mom(:)
    real(DREALKIND), intent(out) :: M2L0, M2L1, M2L2, M2cc(0:16)
    integer, intent(in) :: crtype, emitter, nextcombs, extcombs(nextcombs)
    real(DREALKIND), intent(out) :: M2munu(:,:)
    type(correlator) :: corr
    M2L0 = 0
    M2L1 = 0
    M2L2 = 0
    corr%type=crtype
    if(crtype == 11) then
      allocate(corr%rescc(0:16))
      call vamp2cache(P_scatt, M2L0, M2L1, corr=corr)
      M2cc = corr%rescc
      deallocate(corr%rescc)
    else
      call ol_error(1,"Correlator not available")
    end if
  end subroutine vampcr2

end module ol_vamp_ppttj_ttxddxg_1

! #ifdef PRECISION_dp
#endif
