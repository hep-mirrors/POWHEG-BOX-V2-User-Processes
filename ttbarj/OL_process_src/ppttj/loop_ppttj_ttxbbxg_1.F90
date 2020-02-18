
module ol_colourmatrix_ppttj_ttxbbxg_1_/**/REALKIND
  use KIND_TYPES, only: REALKIND
  implicit none
  logical, save           :: colmat_not_initialised = .true.
  complex(REALKIND), save :: K1(68,4), K2(68,4), KL(68,4), Cas(5) = 0
  contains
  subroutine colourmatrix_init
    use ol_parameters_decl_/**/REALKIND, only: CI
    implicit none
    integer :: k, co
    colmat_not_initialised = .false.
    ! colour matrix

  K1( 1,:) = [  36,  12,  12,   0]
  K1( 2,:) = [  12,  36,   0,  12]
  K1( 3,:) = [  12,   0,  36,  12]
  K1( 4,:) = [   0,  12,  12,  36]
  K1( 5,:) = [  48,  16,  16,   0]
  K1( 6,:) = [  16,  48,   0,  16]
  K1( 7,:) = [  16,   0,  48,  16]
  K1( 8,:) = [   0,  16,  16,  48]
  K1( 9,:) = [   6,   2,   2,   0]
  K1(10,:) = [   2,   0,  -6, -16]
  K1(11,:) = [   2,  -6,   0, -16]
  K1(12,:) = [   0, -16, -16, -48]
  K1(13,:) = [  48,  16,  16,   0]
  K1(14,:) = [  16,  48,   0,  16]
  K1(15,:) = [  16,   0,  48,  16]
  K1(16,:) = [   0,  16,  16,  48]
  K1(17,:) = [   0,  16,  -2,   6]
  K1(18,:) = [  16,   0,   6,  -2]
  K1(19,:) = [  -2,   6,   0,  16]
  K1(20,:) = [   6,  -2,  16,   0]
  K1(21,:) = [   0,   2, -16,  -6]
  K1(22,:) = [   2,   6,   0,   2]
  K1(23,:) = [ -16,   0, -48, -16]
  K1(24,:) = [  -6,   2, -16,   0]
  K1(25,:) = [  48,  16,  16,   0]
  K1(26,:) = [  16,  48,   0,  16]
  K1(27,:) = [  16,   0,  48,  16]
  K1(28,:) = [   0,  16,  16,  48]
  K1(29,:) = [   0, -16,   2,  -6]
  K1(30,:) = [ -16, -48,   0, -16]
  K1(31,:) = [   2,   0,   6,   2]
  K1(32,:) = [  -6, -16,   2,   0]
  K1(33,:) = [   0,  -2,  16,   6]
  K1(34,:) = [  -2,   0,   6,  16]
  K1(35,:) = [  16,   6,   0,  -2]
  K1(36,:) = [   6,  16,  -2,   0]
  K1(37,:) = [ -48, -16, -16,   0]
  K1(38,:) = [ -16,   0,  -6,   2]
  K1(39,:) = [ -16,  -6,   0,   2]
  K1(40,:) = [   0,   2,   2,   6]
  K1(41,:) = [  48,  16,  16,   0]
  K1(42,:) = [  16,  48,   0,  16]
  K1(43,:) = [  16,   0,  48,  16]
  K1(44,:) = [   0,  16,  16,  48]
  K1(45,:) = [ -54, -18, -18,   0]
  K1(46,:) = [ -18,   0,   0,  18]
  K1(47,:) = [ -18,   0, -54, -18]
  K1(48,:) = [   0,  18, -18,   0]
  K1(49,:) = [ -54, -18, -18,   0]
  K1(50,:) = [ -18, -54,   0, -18]
  K1(51,:) = [ -18,   0,   0,  18]
  K1(52,:) = [   0, -18,  18,   0]
  K1(53,:) = [   0, -18,  18,   0]
  K1(54,:) = [ -18, -54,   0, -18]
  K1(55,:) = [  18,   0,   0, -18]
  K1(56,:) = [   0, -18, -18, -54]
  K1(57,:) = [   0,  18, -18,   0]
  K1(58,:) = [  18,   0,   0, -18]
  K1(59,:) = [ -18,   0, -54, -18]
  K1(60,:) = [   0, -18, -18, -54]
  K1(61,:) = [ 108,  36,  36,   0]
  K1(62,:) = [  36, 108,   0,  36]
  K1(63,:) = [  36,   0, 108,  36]
  K1(64,:) = [   0,  36,  36, 108]
  K1(65,:) = [   0,   0,   0,   0]
  K1(66,:) = [   0,   0,   0,   0]
  K1(67,:) = [   0,   0,   0,   0]
  K1(68,:) = [   0,   0,   0,   0]
  K1 = (1._/**/REALKIND / 3) * K1

  K2( 1,:) = [  36,  12,  12,   0]
  K2( 2,:) = [  12,  36,   0,  12]
  K2( 3,:) = [  12,   0,  36,  12]
  K2( 4,:) = [   0,  12,  12,  36]
  K2( 5,:) = [  48,  16,  16,   0]
  K2( 6,:) = [  16,  48,   0,  16]
  K2( 7,:) = [  16,   0,  48,  16]
  K2( 8,:) = [   0,  16,  16,  48]
  K2( 9,:) = [   6,   2,   2,   0]
  K2(10,:) = [   2,   0,  -6, -16]
  K2(11,:) = [   2,  -6,   0, -16]
  K2(12,:) = [   0, -16, -16, -48]
  K2(13,:) = [  48,  16,  16,   0]
  K2(14,:) = [  16,  48,   0,  16]
  K2(15,:) = [  16,   0,  48,  16]
  K2(16,:) = [   0,  16,  16,  48]
  K2(17,:) = [   0,  16,  -2,   6]
  K2(18,:) = [  16,   0,   6,  -2]
  K2(19,:) = [  -2,   6,   0,  16]
  K2(20,:) = [   6,  -2,  16,   0]
  K2(21,:) = [   0,   2, -16,  -6]
  K2(22,:) = [   2,   6,   0,   2]
  K2(23,:) = [ -16,   0, -48, -16]
  K2(24,:) = [  -6,   2, -16,   0]
  K2(25,:) = [  48,  16,  16,   0]
  K2(26,:) = [  16,  48,   0,  16]
  K2(27,:) = [  16,   0,  48,  16]
  K2(28,:) = [   0,  16,  16,  48]
  K2(29,:) = [   0, -16,   2,  -6]
  K2(30,:) = [ -16, -48,   0, -16]
  K2(31,:) = [   2,   0,   6,   2]
  K2(32,:) = [  -6, -16,   2,   0]
  K2(33,:) = [   0,  -2,  16,   6]
  K2(34,:) = [  -2,   0,   6,  16]
  K2(35,:) = [  16,   6,   0,  -2]
  K2(36,:) = [   6,  16,  -2,   0]
  K2(37,:) = [ -48, -16, -16,   0]
  K2(38,:) = [ -16,   0,  -6,   2]
  K2(39,:) = [ -16,  -6,   0,   2]
  K2(40,:) = [   0,   2,   2,   6]
  K2(41,:) = [  48,  16,  16,   0]
  K2(42,:) = [  16,  48,   0,  16]
  K2(43,:) = [  16,   0,  48,  16]
  K2(44,:) = [   0,  16,  16,  48]
  K2(45,:) = [ -54, -18, -18,   0]
  K2(46,:) = [ -18,   0,   0,  18]
  K2(47,:) = [ -18,   0, -54, -18]
  K2(48,:) = [   0,  18, -18,   0]
  K2(49,:) = [ -54, -18, -18,   0]
  K2(50,:) = [ -18, -54,   0, -18]
  K2(51,:) = [ -18,   0,   0,  18]
  K2(52,:) = [   0, -18,  18,   0]
  K2(53,:) = [   0, -18,  18,   0]
  K2(54,:) = [ -18, -54,   0, -18]
  K2(55,:) = [  18,   0,   0, -18]
  K2(56,:) = [   0, -18, -18, -54]
  K2(57,:) = [   0,  18, -18,   0]
  K2(58,:) = [  18,   0,   0, -18]
  K2(59,:) = [ -18,   0, -54, -18]
  K2(60,:) = [   0, -18, -18, -54]
  K2(61,:) = [ 108,  36,  36,   0]
  K2(62,:) = [  36, 108,   0,  36]
  K2(63,:) = [  36,   0, 108,  36]
  K2(64,:) = [   0,  36,  36, 108]
  K2(65,:) = [   0,   0,   0,   0]
  K2(66,:) = [   0,   0,   0,   0]
  K2(67,:) = [   0,   0,   0,   0]
  K2(68,:) = [   0,   0,   0,   0]
  K2 = (1._/**/REALKIND / 3) * K2

  KL( 1,:) = [  36,  12,  12,   0]
  KL( 2,:) = [  12,  36,   0,  12]
  KL( 3,:) = [  12,   0,  36,  12]
  KL( 4,:) = [   0,  12,  12,  36]
  KL( 5,:) = [  48,  16,  16,   0]
  KL( 6,:) = [  16,  48,   0,  16]
  KL( 7,:) = [  16,   0,  48,  16]
  KL( 8,:) = [   0,  16,  16,  48]
  KL( 9,:) = [   6,   2,   2,   0]
  KL(10,:) = [   2,   0,  -6, -16]
  KL(11,:) = [   2,  -6,   0, -16]
  KL(12,:) = [   0, -16, -16, -48]
  KL(13,:) = [  48,  16,  16,   0]
  KL(14,:) = [  16,  48,   0,  16]
  KL(15,:) = [  16,   0,  48,  16]
  KL(16,:) = [   0,  16,  16,  48]
  KL(17,:) = [   0,  16,  -2,   6]
  KL(18,:) = [  16,   0,   6,  -2]
  KL(19,:) = [  -2,   6,   0,  16]
  KL(20,:) = [   6,  -2,  16,   0]
  KL(21,:) = [   0,   2, -16,  -6]
  KL(22,:) = [   2,   6,   0,   2]
  KL(23,:) = [ -16,   0, -48, -16]
  KL(24,:) = [  -6,   2, -16,   0]
  KL(25,:) = [  48,  16,  16,   0]
  KL(26,:) = [  16,  48,   0,  16]
  KL(27,:) = [  16,   0,  48,  16]
  KL(28,:) = [   0,  16,  16,  48]
  KL(29,:) = [   0, -16,   2,  -6]
  KL(30,:) = [ -16, -48,   0, -16]
  KL(31,:) = [   2,   0,   6,   2]
  KL(32,:) = [  -6, -16,   2,   0]
  KL(33,:) = [   0,  -2,  16,   6]
  KL(34,:) = [  -2,   0,   6,  16]
  KL(35,:) = [  16,   6,   0,  -2]
  KL(36,:) = [   6,  16,  -2,   0]
  KL(37,:) = [ -48, -16, -16,   0]
  KL(38,:) = [ -16,   0,  -6,   2]
  KL(39,:) = [ -16,  -6,   0,   2]
  KL(40,:) = [   0,   2,   2,   6]
  KL(41,:) = [  48,  16,  16,   0]
  KL(42,:) = [  16,  48,   0,  16]
  KL(43,:) = [  16,   0,  48,  16]
  KL(44,:) = [   0,  16,  16,  48]
  KL(45,:) = [ -54, -18, -18,   0]
  KL(46,:) = [ -18,   0,   0,  18]
  KL(47,:) = [ -18,   0, -54, -18]
  KL(48,:) = [   0,  18, -18,   0]
  KL(49,:) = [ -54, -18, -18,   0]
  KL(50,:) = [ -18, -54,   0, -18]
  KL(51,:) = [ -18,   0,   0,  18]
  KL(52,:) = [   0, -18,  18,   0]
  KL(53,:) = [   0, -18,  18,   0]
  KL(54,:) = [ -18, -54,   0, -18]
  KL(55,:) = [  18,   0,   0, -18]
  KL(56,:) = [   0, -18, -18, -54]
  KL(57,:) = [   0,  18, -18,   0]
  KL(58,:) = [  18,   0,   0, -18]
  KL(59,:) = [ -18,   0, -54, -18]
  KL(60,:) = [   0, -18, -18, -54]
  KL(61,:) = [ 108,  36,  36,   0]
  KL(62,:) = [  36, 108,   0,  36]
  KL(63,:) = [  36,   0, 108,  36]
  KL(64,:) = [   0,  36,  36, 108]
  KL(65,:) = [   0,   0,   0,   0]
  KL(66,:) = [   0,   0,   0,   0]
  KL(67,:) = [   0,   0,   0,   0]
  KL(68,:) = [   0,   0,   0,   0]
  KL = (1._/**/REALKIND / 3) * KL

#if 1 > 0
    co = 0
    do k = 1, 5
      co = co + k
      Cas(k) = K1(1+4*co,1)/K1(1,1)
    end do
#endif
  end subroutine colourmatrix_init
end module ol_colourmatrix_ppttj_ttxbbxg_1_/**/REALKIND



module ol_forced_parameters_ppttj_ttxbbxg_1_/**/REALKIND
  implicit none
  contains
  subroutine check_forced_parameters
    use ol_parameters_decl_/**/REALKIND
    use ol_loop_parameters_decl_/**/REALKIND
#ifndef PRECISION_dp
    use ol_loop_parameters_decl_/**/DREALKIND, only: LeadingColour, nc, nf, CKMORDER
#endif
    implicit none
    logical, save :: checks_not_written = .true.

    if (checks_not_written) then
    ! e.g.
    ! if (ME /= 0) write(*,101) 'ME = 0'
  if (CKMORDER /= 0) write(*,101) 'CKMORDER = 0'
  if (nc /= 3) write(*,101) 'nc = 3'
  if (nf /= 6) write(*,101) 'nf = 6'
  if (MU /= 0) write(*,101) 'MU = 0'
  if (MD /= 0) write(*,101) 'MD = 0'
  if (MS /= 0) write(*,101) 'MS = 0'
  if (MC /= 0) write(*,101) 'MC = 0'
  if (LeadingColour /= 0) write(*,101) 'LeadingColour = 0'
  if (wMT /= 0) write(*,101) 'wMT = 0'
  if (wMT /= 0) write(*,101) 'wMT = 0'
  if (wMB /= 0) write(*,101) 'wMB = 0'
  if (wMB /= 0) write(*,101) 'wMB = 0'


    checks_not_written = .false.
    end if

    101 format('[OpenLoops] === WARNING ===',/,'[OpenLoops] code was generated with ',A,/,'[OpenLoops] ===============')
  end subroutine check_forced_parameters
end module ol_forced_parameters_ppttj_ttxbbxg_1_/**/REALKIND


! **********************************************************************
module ol_loop_storage_ppttj_ttxbbxg_1_/**/REALKIND
! **********************************************************************
  use KIND_TYPES, only: REALKIND, intkind1, intkind2
  use ol_data_types_/**/REALKIND, only: wfun, Hpolcont

#ifdef PRECISION_dp
  integer(intkind1), save :: ntryL = 1
  integer(intkind1), save :: p_switch = 0 ! switch for dp or qp. Used for memory allocation of the OL types
  ! the following are flags for memory allocation of the hol coefficients in dp or qp
  logical, save :: dp_not_alloc = .TRUE., qp_not_alloc = .TRUE.
  integer, save :: n_merge_steps  ! total number of merging steps
  integer, save :: n_merge_mism   ! number of merging mismatches
  integer, save :: merge_step = 1 ! current merging step
  integer(intkind2), save, allocatable :: merge_tables(:,:,:) ! merging tables
  integer(intkind2), save, allocatable :: merge_mism(:)       ! array of merging mismatches
  integer(intkind2), save, allocatable :: merge_hels(:)       ! array with relevant helicities for a merging step
  logical, save :: merge_tables_on = .false.
  integer(intkind2), parameter :: nheltot = 32 ! number of helicity configurations
  integer(intkind2), save :: nhel = 32 ! number of non-vanishing helicity configurations (adapted at runtime)
  integer(intkind2), save :: hel_states = 32 ! number of helicity configurations needed for mem-allocation
  integer(intkind2), save :: Hel(32) ! physical helicity states
#endif

  type(Hpolcont), save, allocatable :: A(:,:), M1helarray(:,:), M1helarray_ct(:,:)
  complex(REALKIND), save :: den(37)

  ! external wave functions ex1(h1),... for h<n> helicities
  type(wfun) :: ex1(2), ex2(2), ex3(2), ex4(2), ex5(2)

  ! wf<h>(h,n) n wave functions with h helicity configurations
  type(wfun) :: wf4(4,26), wf8(8,24), wf32(32,30)

  ! diagram prefactors
  integer,           save :: fac_status_loop1 = -1, fac_status_loop2 = -1
  complex(REALKIND), save :: f(17), c(26)

  !Vector in helicity and colour space for Born-Loop interference
  type(Hpolcont),   save, allocatable :: M0_col1_helarray(:,:), M0M1_hel_cc(:,:,:)
  complex(REALKIND), save :: M2ctcc(16)

end module ol_loop_storage_ppttj_ttxbbxg_1_/**/REALKIND






! **********************************************************************
module ol_loop_ppttj_ttxbbxg_1_/**/REALKIND
! **********************************************************************
  use KIND_TYPES, only: REALKIND, DREALKIND, intkind1, intkind2
  use ol_data_types_/**/REALKIND, only: wfun, Hpolcont
  use ol_loop_storage_ppttj_ttxbbxg_1_/**/REALKIND
  implicit none

!*********************************************************************************
  contains

! **********************************************************************
subroutine fac_init_loop()
! Writes diagram prefactors to 'f', rsp. 'c'
! **********************************************************************
  use ol_parameters_decl_/**/REALKIND
  use ol_loop_parameters_decl_/**/REALKIND
  use ol_init, only: set_parameter, tree_parameters_flush, parameters_flush
#ifndef PRECISION_dp
  use ol_loop_parameters_decl_/**/DREALKIND, only: SwF, SwB
!  use ol_loop_parameters_decl_/**/DREALKIND, only: DOI
#endif
  implicit none
  call set_parameter("ew_renorm", 0)
  if (parameters_status == 0) call tree_parameters_flush()
  if (loop_parameters_status == 0) call parameters_flush()
  fac_status_loop1 = parameters_status
  fac_status_loop2 = loop_parameters_status
  ! factors of the diagrams
    f( 1) = CI*gQCD**3
    f( 2) = gQCD**3
    f( 3) = CI*countertermnorm*gQCD**5
    f( 4) = countertermnorm*gQCD**5
    f( 5) = CI*countertermnorm*ctGbb*gQCD**5
    f( 6) = countertermnorm*ctGbb*gQCD**5
    f( 7) = CI*countertermnorm*ctGtt*gQCD**5
    f( 8) = countertermnorm*ctGtt*gQCD**5
    f( 9) = countertermnorm*ctVVV*gQCD**5
    f(10) = (CI*gQCD**5*integralnorm*SwB)/2._/**/REALKIND
    f(11) = CI*gQCD**5*integralnorm*SwB
    f(12) = (gQCD**5*integralnorm*SwB)/2._/**/REALKIND
    f(13) = gQCD**5*integralnorm*SwB
    f(14) = CI*gQCD**5*integralnorm*SwF
    f(15) = 2*CI*gQCD**5*integralnorm*SwF
    f(16) = gQCD**5*integralnorm*SwF
    f(17) = 2*gQCD**5*integralnorm*SwF

  c = [ 27*CI*f(10), 54*CI*f(10), 3*CI*f(11), 9*CI*f(11), 24*CI*f(11), 27*CI*f(11), 54*CI*f(11), 18*f(12), 54*f(12), f(13) &
    , 3*f(13), 6*f(13), 8*f(13), 9*f(13), 10*f(13), 18*f(13), 21*f(13), 24*f(13), 27*f(13), 54*f(13), 9*CI*f(14), 9*CI*f(15) &
    , 3*f(16), 9*f(16), 3*f(17), 9*f(17) ]
  c = (1._/**/REALKIND / 36) * c
end subroutine fac_init_loop

subroutine denominators()
  use ol_parameters_decl_/**/REALKIND ! masses
  use ol_momenta_decl_/**/REALKIND, only: L
  implicit none
  ! propagators
  den(1) = 1 /((L(5,3))+L(6,3))
  den(2) = 1 /((L(5,12))+L(6,12))
  den(4) = 1 /((L(5,20) - MB2)+L(6,20))
  den(6) = 1 /((L(5,24) - MB2)+L(6,24))
  den(8) = 1 /((L(5,17) - MT2)+L(6,17))
  den(10) = 1 /((L(5,18) - MT2)+L(6,18))
  den(12) = 1 /((L(5,28))+L(6,28))
  den(15) = 1 /((L(5,19))+L(6,19))
  den(20) = 1 /((L(5,11) - MB2)+L(6,11))
  den(25) = 1 /((L(5,7) - MB2)+L(6,7))
  den(28) = 1 /((L(5,14) - MT2)+L(6,14))
  den(33) = 1 /((L(5,13) - MT2)+L(6,13))

  ! denominators
  den(3) = den(1)*den(2)
  den(5) = den(1)*den(4)
  den(7) = den(1)*den(6)
  den(9) = den(2)*den(8)
  den(11) = den(2)*den(10)
  den(13) = den(2)*den(12)
  den(14) = den(1)*den(13)
  den(16) = den(1)*den(15)
  den(17) = den(2)*den(16)
  den(18) = den(4)*den(12)
  den(19) = den(1)*den(18)
  den(21) = den(1)*den(20)
  den(22) = den(4)*den(21)
  den(23) = den(6)*den(12)
  den(24) = den(1)*den(23)
  den(26) = den(1)*den(25)
  den(27) = den(6)*den(26)
  den(29) = den(2)*den(28)
  den(30) = den(8)*den(29)
  den(31) = den(8)*den(15)
  den(32) = den(2)*den(31)
  den(34) = den(2)*den(33)
  den(35) = den(10)*den(34)
  den(36) = den(10)*den(15)
  den(37) = den(2)*den(36)

end subroutine denominators

#ifdef PRECISION_dp
! **********************************************************************
subroutine init_merging_tables(tot_num_hels, tot_num_merge_steps)
!-----------------------------------------------------------------------
! In the first event the merging tables are fully initialised
! **********************************************************************
  implicit none
  integer, intent(in) :: tot_num_hels, tot_num_merge_steps
  n_merge_steps = tot_num_merge_steps
  allocate(merge_tables(tot_num_hels,2,n_merge_steps))
  allocate(merge_mism(n_merge_steps+1))
  allocate(merge_hels(n_merge_steps))
  merge_tables_on = .true.
  merge_mism = 0_intkind2
  merge_tables = -1_intkind2
  merge_hels = -1_intkind2
end subroutine init_merging_tables

! **********************************************************************
subroutine update_merging_tables(tot_num_hels)
!-----------------------------------------------------------------------
! After the first evaluation the merging tables are adapted
! **********************************************************************
  implicit none
  integer, intent(in) :: tot_num_hels
  integer(intkind2), allocatable ::  merge_tables_tmp(:,:,:), merge_hels_tmp(:)

  if(merge_mism(1) == 0) then ! helicity configurations match in all merging steps
    if(allocated(merge_tables)) deallocate(merge_tables)
    if(allocated(merge_hels)) deallocate(merge_hels)
    if(allocated(merge_mism)) deallocate(merge_mism)
    allocate(merge_mism(1))
    allocate(merge_hels(1))
    allocate(merge_tables(1,1,1)) ! dummy allocation
    merge_mism = 0_intkind2
    merge_tables = -1_intkind2
    merge_hels = -1_intkind2
  else
    n_merge_mism = merge_mism(1)
    allocate(merge_tables_tmp(tot_num_hels,2,n_merge_mism))
    merge_tables_tmp(:,:,1:n_merge_mism) = merge_tables(:,:,1:n_merge_mism)
    if(allocated(merge_tables)) then
      deallocate(merge_tables)
      allocate(merge_tables(tot_num_hels,2,n_merge_mism))
    end if
    merge_tables = merge_tables_tmp
    if(allocated(merge_tables_tmp)) deallocate(merge_tables_tmp)
    allocate(merge_hels_tmp(n_merge_mism))
    merge_hels_tmp(1:n_merge_mism) = merge_hels(1:n_merge_mism)
    if(allocated(merge_hels)) then
      deallocate(merge_hels)
      allocate(merge_hels(n_merge_mism))
    end if
    merge_hels = merge_hels_tmp
    if(allocated(merge_hels_tmp)) deallocate(merge_hels_tmp)
  end if
  merge_tables_on = .true.
end subroutine update_merging_tables
#endif

! **********************************************************************
subroutine allocate_diagrams()
!-----------------------------------------------------------------------
! After the first Born evaluation, colour-stripped amplitudes and
! colour vectors are initialiased with the minimum number of relevant
! helicity states.
! **********************************************************************
#ifndef PRECISION_dp
  use ol_loop_storage_ppttj_ttxbbxg_1_/**/DREALKIND, only: hel_states
#endif
  implicit none

  if (allocated(A)) deallocate(A)
  if (allocated(M1helarray)) deallocate(M1helarray)
  if (allocated(M1helarray_ct)) deallocate(M1helarray_ct)
  if (allocated(M0_col1_helarray)) deallocate(M0_col1_helarray)
  allocate(A(hel_states,30))
  allocate(M1helarray(4,hel_states))
  allocate(M1helarray_ct(4,hel_states))
  allocate(M0_col1_helarray(4,hel_states))
#if 1 > 0
  if (allocated(M0M1_hel_cc)) deallocate(M0M1_hel_cc)
  allocate(M0M1_hel_cc(4,hel_states,16))
#endif
end subroutine allocate_diagrams

!
!
!
! **********************************************************************
#ifdef PRECISION_dp
recursive subroutine amp2(P_scatt, M02, qp_kinematics, M2ct, M2colint)
#else
recursive subroutine amp2(P_scatt, M02, qp_kinematics, M2ct, M2colint)
  use ol_loop_storage_ppttj_ttxbbxg_1_/**/DREALKIND, only: &
  nhel, Hel, hel_states
#endif
! P_scatt(0:3,Npart) = incoming external momenta
! M2  = helicity-summed squared matrix element for top anti-top bottom anti-bottom glue -> 0
! **********************************************************************
  use ol_parameters_decl_/**/REALKIND !, only: ci, parameters_status, ZERO, scalefactor, >masses<
  use ol_parameters_init_/**/REALKIND, only: ensure_mp_init, ensure_mp_loop_init
  use ol_kinematics_/**/REALKIND, only: init_kinematics
  use ol_momenta_decl_/**/DREALKIND, only: momenta_nan_check
  use ol_settings_ppttj_ttxbbxg_1, only: hel_mem_opt, loopcc
  use ol_data_types_/**/REALKIND
  use ol_h_helicity_bookkeeping_/**/REALKIND, only: &
    & helbookkeeping_wf, helsync, flip_phase
  use ol_helicity_init, only: helbookkeeping_flip, helsync_flip
  use ol_hel_propagators_/**/REALKIND
  use ol_hel_wavefunctions_/**/REALKIND
  use ol_wavefunctions_/**/REALKIND, only: wf_V_Std
  use ol_hel_vertices_/**/REALKIND
  use ol_hel_contractions_/**/REALKIND
  use ol_external_ppttj_ttxbbxg_1, only: &
    & external_perm_ppttj_ttxbbxg_1, &
    & external_perm_inv_ppttj_ttxbbxg_1, &
    & extcomb_perm_ppttj_ttxbbxg_1, &
    & average_factor_ppttj_ttxbbxg_1
  use ol_external_ppttj_ttxbbxg_1, only: &
    & H, hel_not_initialised, hel_init, POLSEL
  use ol_colourmatrix_ppttj_ttxbbxg_1_/**/REALKIND, only: &
    & colmat_not_initialised, colourmatrix_init
  use ol_forced_parameters_ppttj_ttxbbxg_1_/**/REALKIND, only: &
    & check_forced_parameters
  use ol_heltables_OLR_ppttj_ttxbbxg_1
  use ol_kinematics_/**/REALKIND, only: LC2Std_Rep_cmplx
  use ol_h_counterterms_/**/REALKIND
  use ol_loop_parameters_decl_/**/REALKIND ! counterterms
  use ol_loop_parameters_decl_/**/DREALKIND, only: &
    & IR_is_on, DOI, CT_is_on, R2_is_on, TP_is_on
  use ol_init, only: set_parameter, parameters_flush
#ifdef PRECISION_dp
  use ol_kinematics_/**/QREALKIND, only: conv_mom_scatt2in_qp=>conv_mom_scatt2in, &
                                         internal_momenta_qp=>internal_momenta
  use ol_momenta_decl_/**/DREALKIND, only: L
  use ol_momenta_decl_/**/QREALKIND, only: L_qp=>L
#endif
  implicit none

  real(DREALKIND), intent(in)  :: P_scatt(0:3,5)
  real(REALKIND),  intent(out) :: M02
  logical, intent(in) :: qp_kinematics
  real(REALKIND),  intent(out), optional :: M2ct
  real(REALKIND),  intent(out), optional :: M2colint(16)
  real(REALKIND) :: iM2ct
  real(REALKIND) :: iM2colint(16)

  integer(intkind1), save :: ntry = 0

  integer           :: shift, k, r, m, n, i
  real(REALKIND)    :: P(0:3,5)
#ifdef PRECISION_dp
  real(QREALKIND)    :: P_qp(0:3,5)
#endif
  integer           :: extmasses2(5)
  real(REALKIND)    :: M2add, M2add_ct, M2add_colint(16)
  complex(REALKIND) :: M1(4), M2(4)
  real(REALKIND)    :: P_scatt_intern(0:3,5)
  real(REALKIND), save :: scalebackfactor, old_scalefactor = 0
  integer(intkind1) :: nsync
  integer, allocatable :: extcombs_permuted(:)
  integer              :: extcombs(16), nextcombs
  integer              :: CT_on_bak, R2_on_bak, TP_on_bak, DOI_bak
  logical              :: do_ct, do_colint
#if 5 > 3
  integer :: ind_cc_comb(5)
#endif
  complex(REALKIND) :: omega(2) ! phases for helicity correlations

  if (present(M2ct)) then
    do_ct = .true.
  else
    do_ct = .false.
  end if

  if (present(M2colint)) then
    do_colint = .true.
  else
    do_colint = .false.
  end if

  if(ntry == 0) then
    ! recursive initialization call needed for the correct helicity bokkeeping
    ntry = 1
    CT_on_bak = CT_is_on
    R2_on_bak = R2_is_on
    TP_on_bak = TP_is_on
    DOI_bak = DOI
    call set_parameter("ct_on", 1)
    call set_parameter("r2_on", 1)
    call set_parameter("tp_on", 1)
    DOI = 1
    call amp2(P_scatt, M02, qp_kinematics, M2ct=iM2ct, M2colint=iM2colint)
    call set_parameter("ct_on", CT_on_bak)
    call set_parameter("r2_on", R2_on_bak)
    call set_parameter("tp_on", TP_on_bak)
    DOI = DOI_bak
  end if

  if (ntry < 2) then
    if (allocated(A)) deallocate(A)
    allocate(A(nhel,30))
  end if

  if (do_ct) call set_parameter("ew_renorm", 0)
  call parameters_flush()
  call ensure_mp_init()
  if (do_ct) call ensure_mp_loop_init()

  if (colmat_not_initialised) call colourmatrix_init()

  if (fac_status_loop1 /= parameters_status .or. fac_status_loop2 /= loop_parameters_status) then
    call check_forced_parameters()
  end if
  if (do_ct) call fac_init_loop()

  if (momenta_nan_check(P_scatt) /= 0) then
    M02 = 0
    return
  end if

  extmasses2 = [ nMT, nMT, nMB, nMB, 0 ]
  ! Convert 2 -> n-2 PS-point to n -> 0 (so that P(1) + ... + P(n) = 0) and compute
  ! internal-propagator momenta in light-cone representation
  call init_kinematics(P_scatt, extmasses2, P, &
     external_perm_inv_ppttj_ttxbbxg_1, 5, qp_kinematics)

  ! denominators
  call denominators()

   if (heltables_not_init) call init_heltables()

  ! external WFs
  ! Here the external wavefunctions are initialiased
  call pol_wf_Q(P(:,1), rMT, H1, ex1, POLSEL(1),1)
  call pol_wf_A(P(:,2), rMT, H2, ex2, POLSEL(2),2)
  call pol_wf_Q(P(:,3), rMB, H3, ex3, POLSEL(3),3)
  call pol_wf_A(P(:,4), rMB, H4, ex4, POLSEL(4),4)
  call pol_wf_V(P(:,5), rZERO, H5, ex5, POLSEL(5),5)



  ! internal WFs
  ! e.g. call vert_VQ_A(ntry, ex3, ex1, wf1, n1, t1) ...
  call vert_QA_V(ntry, ex1(:), ex2(:), wf4(:,1), n3(:,1), t3x4(:,:,1))
  call vert_QA_V(ntry, ex3(:), ex4(:), wf4(:,2), n3(:,2), t3x4(:,:,2))
  call vert_UV_W(ntry, wf4(:,1), 3, ex5(:), 16, wf8(:,1), n3(:,3), t3x8(:,:,1))
  call vert_VQ_A(ntry, ex5(:), ex3(:), wf4(:,3), n3(:,4), t3x4(:,:,3))
  call prop_Q_A(ntry, wf4(:,3), 20, MB, 1_intkind1, wf4(:,4), n2(1))
  call vert_AV_Q(ntry, ex4(:), wf4(:,1), wf8(:,2), n3(:,5), t3x8(:,:,2))
  call vert_AV_Q(ntry, ex4(:), ex5(:), wf4(:,5), n3(:,6), t3x4(:,:,4))
  call prop_A_Q(ntry, wf4(:,5), 24, MB, 1_intkind1, wf4(:,6), n2(2))
  call vert_VQ_A(ntry, wf4(:,1), ex3(:), wf8(:,3), n3(:,7), t3x8(:,:,3))
  call vert_VQ_A(ntry, ex5(:), ex1(:), wf4(:,7), n3(:,8), t3x4(:,:,5))
  call prop_Q_A(ntry, wf4(:,7), 17, MT, 1_intkind1, wf4(:,8), n2(3))
  call vert_QA_V(ntry, wf4(:,8), ex2(:), wf8(:,4), n3(:,9), t3x8(:,:,4))
  call vert_AV_Q(ntry, ex2(:), ex5(:), wf4(:,9), n3(:,10), t3x4(:,:,6))
  call prop_A_Q(ntry, wf4(:,9), 18, MT, 1_intkind1, wf4(:,10), n2(4))
  call vert_QA_V(ntry, ex1(:), wf4(:,10), wf8(:,5), n3(:,11), t3x8(:,:,5))
  call counter_UV_W(ntry, wf4(:,1), 3, ex5(:), 16, wf8(:,6), n3(:,12), t3x8(:,:,6))
  call counter_AV_Q(ntry, ex4(:), wf4(:,1), wf8(:,7), n3(:,13), t3x8(:,:,7))
  call counter_AV_Q(ntry, ex4(:), ex5(:), wf4(:,11), n3(:,14), t3x4(:,:,7))
  call prop_A_Q(ntry, wf4(:,11), 24, MB, 1_intkind1, wf4(:,12), n2(5))
  call counter_VQ_A(ntry, wf4(:,1), ex3(:), wf8(:,8), n3(:,15), t3x8(:,:,8))
  call counter_VQ_A(ntry, ex5(:), ex3(:), wf4(:,13), n3(:,16), t3x4(:,:,8))
  call prop_Q_A(ntry, wf4(:,13), 20, MB, 1_intkind1, wf4(:,14), n2(6))
  call counter_QA_V(ntry, ex3(:), ex4(:), wf4(:,15), n3(:,17), t3x4(:,:,9))
  call counter_QA_V(ntry, wf4(:,8), ex2(:), wf8(:,9), n3(:,18), t3x8(:,:,9))
  call counter_AV_Q(ntry, ex2(:), ex5(:), wf4(:,16), n3(:,19), t3x4(:,:,10))
  call prop_A_Q(ntry, wf4(:,16), 18, MT, 1_intkind1, wf4(:,17), n2(7))
  call vert_QA_V(ntry, ex1(:), wf4(:,17), wf8(:,10), n3(:,20), t3x8(:,:,10))
  call counter_QA_V(ntry, ex1(:), wf4(:,10), wf8(:,11), n3(:,21), t3x8(:,:,11))
  call counter_VQ_A(ntry, ex5(:), ex1(:), wf4(:,18), n3(:,22), t3x4(:,:,11))
  call prop_Q_A(ntry, wf4(:,18), 17, MT, 1_intkind1, wf4(:,19), n2(8))
  call vert_QA_V(ntry, wf4(:,19), ex2(:), wf8(:,12), n3(:,23), t3x8(:,:,12))
  call counter_QA_V(ntry, ex1(:), ex2(:), wf4(:,20), n3(:,24), t3x4(:,:,12))
  call vert_UV_W(ntry, wf4(:,20), 3, ex5(:), 16, wf8(:,13), n3(:,25), t3x8(:,:,13))
  call vert_AV_Q(ntry, ex4(:), wf4(:,20), wf8(:,14), n3(:,26), t3x8(:,:,14))
  call vert_VQ_A(ntry, wf4(:,20), ex3(:), wf8(:,15), n3(:,27), t3x8(:,:,15))
  call vert_UV_W(ntry, wf4(:,2), 12, ex5(:), 16, wf8(:,16), n3(:,28), t3x8(:,:,16))
  call counter_V_V(ctGG,21,ntry, wf4(:,1), 3, wf4(:,21), n2(9))
  call counter_V_V(ctGG,21,ntry, wf4(:,2), 12, wf4(:,22), n2(10))
  call vert_QA_V(ntry, wf4(:,4), ex4(:), wf8(:,17), n3(:,29), t3x8(:,:,17))
  call counter_Q_A(ctbb,5,ntry, wf4(:,4), 20, wf4(:,23), n2(11))
  call prop_A_Q(ntry, wf8(:,2), 11, MB, 1_intkind1, wf8(:,18), n2(12))
  call vert_QA_V(ntry, ex3(:), wf4(:,6), wf8(:,19), n3(:,30), t3x8(:,:,18))
  call counter_A_Q(ctbb,5,ntry, wf4(:,6), 24, wf4(:,24), n2(13))
  call prop_Q_A(ntry, wf8(:,3), 7, MB, 1_intkind1, wf8(:,20), n2(14))
  call vert_AV_Q(ntry, ex2(:), wf4(:,2), wf8(:,21), n3(:,31), t3x8(:,:,19))
  call counter_Q_A(cttt,6,ntry, wf4(:,8), 17, wf4(:,25), n2(15))
  call prop_A_Q(ntry, wf8(:,21), 14, MT, 1_intkind1, wf8(:,22), n2(16))
  call vert_VQ_A(ntry, wf4(:,2), ex1(:), wf8(:,23), n3(:,32), t3x8(:,:,20))
  call counter_A_Q(cttt,6,ntry, wf4(:,10), 18, wf4(:,26), n2(17))
  call prop_Q_A(ntry, wf8(:,23), 13, MT, 1_intkind1, wf8(:,24), n2(18))


  if (ntry==1) then
    call physical_helicities()
  end if

  ! computation of the colour-stripped amplitudes
  do nsync = ntry+ntry-1, ntry+1  !  nsync = 1,2  for 1st point and nsync = 3 later
    call diagrams()
    if (nsync == 1) call helsync(nsync, A, nhel, Hel)
  end do

  if (ntry < 2) then
    if(hel_mem_opt) hel_states = nhel
    call allocate_diagrams()
  end if

  ! In the following loop the coefficients \Gamma_{i} of the expansion in
  ! the colour basis are computed for every helicity state and stored in M1helarray.
  ! Also the colour vector for the Born-loop interference is computed and saved in
  ! M0_col1_helarray
  do k = 1, nhel
    if (do_ct) call colourvectors(A, k, M1helarray(:,k),M1helarray_ct(:,k))
    call colborninterf(M1helarray(:,k), M0_col1_helarray(:,k), 0)
  end do
  M1helarray(:,nhel+1:)%j = 0
  M0_col1_helarray(:,nhel+1:)%hf = -1_intkind2
  M0_col1_helarray(:,nhel+1:)%j = 0

  M2add = 0
  M2add_ct = 0
  M2add_colint = 0

  M02 = 0
  if (do_ct) M2ct = 0
  if (do_colint) M2colint = 0

  do k = 1, nhel
    call colint(M1helarray(:,k)%j, M2add)
    if (do_ct) call colint_ct(M1helarray(:,k)%j, M1helarray_ct(:,k)%j, M2add_ct, 0)
    if (IR_is_on > 0) then
      if (do_colint) call colint_IR(M1helarray(:,k)%j, M2add_colint)
    end if
    !summation over helicity configurations
    M02 = M02 + M2add
    if (do_ct) M2ct = M2ct + M2add_ct
    if (do_colint) M2colint = M2colint + M2add_colint
  end do

#if 1 > 0 && 5 > 3
  if (loopcc) then
    !!Born-loop colour correlators interference
    ind_cc_comb = [2,4,7,5,8]
    M0M1_hel_cc(:,:,:)%j = 0
    M2ctcc = 0
    do n = 1, 5
      M2add_ct = 0
      m = ind_cc_comb(n)
        do k = 1, nhel
          call colint_ct(M1helarray(:,k)%j, M1helarray_ct(:,k)%j, M2add_ct, m)
          call colborninterf(M1helarray(:,k), M0M1_hel_cc(:,k,m), m)
          M2ctcc(m) = M2ctcc(m) + M2add_ct
        end do
    end do
    M0M1_hel_cc(:,nhel+1:,:)%hf = -1_intkind2
    M0M1_hel_cc(:,nhel+1:,:)%j = 0
  end if
#endif

  if (ntry < 1) then
    if (allocated(A)) deallocate(A)
  end if
  ntry=2


  contains

subroutine physical_helicities()
  implicit none

integer :: i1,i2,i3,i4,i5
integer :: n

n=0

do i5= 1, 2
do i4= 1, 2
do i3= 1, 2
do i2= 1, 2
do i1= 1, 2
n = n + 1
 if((ex1(i1)%hf==-1_intkind2) .OR. (ex2(i2)%hf==-1_intkind2) .OR. (ex3(i3)%hf==-1_intkind2) .OR. (ex4(i4)%hf==-1_intkind2)  &
    .OR. (ex5(i5)%hf==-1_intkind2)) then
  Hel(n) = -1_intkind2
 else
  Hel(n) = ex1(i1)%hf + ex2(i2)%hf + ex3(i3)%hf + ex4(i4)%hf + ex5(i5)%hf
 end if
end do
end do
end do
end do
end do

end subroutine physical_helicities

subroutine diagrams()
  implicit none
  integer :: h
  ! e.g. call cont_VV(nsync, wf3, wf6, A(:,1), n64, t64, nhel, den(5)) ...

    call Hcont_VV(nsync, wf4(:,2), wf8(:,1), A(:,1), n3(:,33), t3x32(:,:,1), nhel, den(3))
    call Hcont_QA(nsync, wf4(:,4), wf8(:,2), A(:,2), n3(:,34), t3x32(:,:,2), nhel, den(5))
    call Hcont_QA(nsync, wf4(:,6), wf8(:,3), A(:,3), n3(:,35), t3x32(:,:,3), nhel, den(7))
    call Hcont_VV(nsync, wf4(:,2), wf8(:,4), A(:,4), n3(:,36), t3x32(:,:,4), nhel, den(9))
    call Hcont_VV(nsync, wf4(:,2), wf8(:,5), A(:,5), n3(:,37), t3x32(:,:,5), nhel, den(11))

    call Hcont_VV(nsync, wf4(:,2), wf8(:,6), A(:,6), n3(:,38), t3x32(:,:,6), nhel, den(3))
    call Hcont_QA(nsync, wf4(:,4), wf8(:,7), A(:,7), n3(:,39), t3x32(:,:,7), nhel, den(5))
    call Hcont_QA(nsync, wf8(:,3), wf4(:,12), A(:,8), n3(:,40), t3x32(:,:,8), nhel, den(7))
    call Hcont_QA(nsync, wf4(:,6), wf8(:,8), A(:,9), n3(:,41), t3x32(:,:,9), nhel, den(7))
    call Hcont_QA(nsync, wf8(:,2), wf4(:,14), A(:,10), n3(:,42), t3x32(:,:,10), nhel, den(5))
    call Hcont_VV(nsync, wf8(:,1), wf4(:,15), A(:,11), n3(:,43), t3x32(:,:,11), nhel, den(3))
    call Hcont_VV(nsync, wf8(:,4), wf4(:,15), A(:,12), n3(:,44), t3x32(:,:,12), nhel, den(9))
    call Hcont_VV(nsync, wf8(:,5), wf4(:,15), A(:,13), n3(:,45), t3x32(:,:,13), nhel, den(11))
    call Hcont_VV(nsync, wf4(:,2), wf8(:,9), A(:,14), n3(:,46), t3x32(:,:,14), nhel, den(9))
    call Hcont_VV(nsync, wf4(:,2), wf8(:,10), A(:,15), n3(:,47), t3x32(:,:,15), nhel, den(11))
    call Hcont_VV(nsync, wf4(:,2), wf8(:,11), A(:,16), n3(:,48), t3x32(:,:,16), nhel, den(11))
    call Hcont_VV(nsync, wf4(:,2), wf8(:,12), A(:,17), n3(:,49), t3x32(:,:,17), nhel, den(9))
    call Hcont_VV(nsync, wf4(:,2), wf8(:,13), A(:,18), n3(:,50), t3x32(:,:,18), nhel, den(3))
    call Hcont_QA(nsync, wf4(:,4), wf8(:,14), A(:,19), n3(:,51), t3x32(:,:,19), nhel, den(5))
    call Hcont_QA(nsync, wf4(:,6), wf8(:,15), A(:,20), n3(:,52), t3x32(:,:,20), nhel, den(7))
    call Hcont_VV(nsync, wf8(:,16), wf4(:,21), A(:,21), n3(:,53), t3x32(:,:,21), nhel, den(14))
    call Hcont_VV(nsync, wf8(:,1), wf4(:,22), A(:,22), n3(:,54), t3x32(:,:,22), nhel, den(17))
    call Hcont_VV(nsync, wf4(:,21), wf8(:,17), A(:,23), n3(:,55), t3x32(:,:,23), nhel, den(19))
    call Hcont_QA(nsync, wf4(:,23), wf8(:,18), A(:,24), n3(:,56), t3x32(:,:,24), nhel, den(22))
    call Hcont_VV(nsync, wf4(:,21), wf8(:,19), A(:,25), n3(:,57), t3x32(:,:,25), nhel, den(24))
    call Hcont_QA(nsync, wf4(:,24), wf8(:,20), A(:,26), n3(:,58), t3x32(:,:,26), nhel, den(27))
    call Hcont_QA(nsync, wf4(:,25), wf8(:,22), A(:,27), n3(:,59), t3x32(:,:,27), nhel, den(30))
    call Hcont_VV(nsync, wf8(:,4), wf4(:,22), A(:,28), n3(:,60), t3x32(:,:,28), nhel, den(32))
    call Hcont_QA(nsync, wf4(:,26), wf8(:,24), A(:,29), n3(:,61), t3x32(:,:,29), nhel, den(35))
    call Hcont_VV(nsync, wf8(:,5), wf4(:,22), A(:,30), n3(:,62), t3x32(:,:,30), nhel, den(37))

end subroutine diagrams


elemental function diagmap(j, n)
  implicit none
  integer, intent(in) :: j, n
  complex(REALKIND) :: diagmap
  diagmap = A(j,n)%j
end function diagmap

function diagsum(j, pos, neg)
  implicit none
  integer, intent(in) :: j, pos(:), neg(:)
  complex(REALKIND) :: diagsum
  diagsum = sum(diagmap(j, pos)) - sum(diagmap(j, neg))
end function diagsum

subroutine colourvectors(A, j, M1, M2)
  implicit none
  type(Hpolcont) :: A(:,:)
  integer, intent(in) :: j
  type(Hpolcont), intent(out) :: M1(4), M2(4) ! M1helarray(4,nhel)
  integer :: empty(0), i

  M1(1)%j = ((-A(j,4)%j-A(j,5)%j)*f(1))/6._/**/REALKIND
  M1(2)%j = ((A(j,2)%j+A(j,5)%j)*f(1))/2._/**/REALKIND+(CI*A(j,1)%j*f(2))/2._/**/REALKIND
  M1(3)%j = ((A(j,3)%j+A(j,4)%j)*f(1))/2._/**/REALKIND-(CI*A(j,1)%j*f(2))/2._/**/REALKIND
  M1(4)%j = ((-A(j,2)%j-A(j,3)%j)*f(1))/6._/**/REALKIND

  M2(1)%j = ((A(j,27)%j+A(j,28)%j+A(j,29)%j+A(j,30)%j)*f(3))/6._/**/REALKIND+((-A(j,12)%j-A(j,13)%j)*f(5))/6._/**/REALKIND+(( &
       -A(j,14)%j-A(j,15)%j-A(j,16)%j-A(j,17)%j)*f(7))/6._/**/REALKIND
  M2(2)%j = ((-A(j,23)%j-A(j,24)%j-A(j,29)%j-A(j,30)%j)*f(3))/2._/**/REALKIND+(CI*(A(j,21)%j-A(j,22)%j)*f(4))/2._/**/REALKIND &
       +((A(j,7)%j+A(j,10)%j+A(j,13)%j)*f(5))/2._/**/REALKIND+(CI*A(j,11)%j*f(6))/2._/**/REALKIND+((A(j,15)%j+A(j,16)%j &
       +A(j,19)%j)*f(7))/2._/**/REALKIND+(CI*A(j,18)%j*f(8))/2._/**/REALKIND+(CI*A(j,6)%j*f(9))/2._/**/REALKIND
  M2(3)%j = ((-A(j,25)%j-A(j,26)%j-A(j,27)%j-A(j,28)%j)*f(3))/2._/**/REALKIND+(CI*(-A(j,21)%j+A(j,22)%j)*f(4))/2._/**/REALKIND &
       +((A(j,8)%j+A(j,9)%j+A(j,12)%j)*f(5))/2._/**/REALKIND-(CI*A(j,11)%j*f(6))/2._/**/REALKIND+((A(j,14)%j+A(j,17)%j &
       +A(j,20)%j)*f(7))/2._/**/REALKIND-(CI*A(j,18)%j*f(8))/2._/**/REALKIND-(CI*A(j,6)%j*f(9))/2._/**/REALKIND
  M2(4)%j = ((A(j,23)%j+A(j,24)%j+A(j,25)%j+A(j,26)%j)*f(3))/6._/**/REALKIND+((-A(j,7)%j-A(j,8)%j-A(j,9)%j &
       -A(j,10)%j)*f(5))/6._/**/REALKIND+((-A(j,19)%j-A(j,20)%j)*f(7))/6._/**/REALKIND


  M1(:)%hf = Hel(j)
  M2(:)%hf = Hel(j)

  !M(i) corresponds to \Gamma_{i} in Fabios thesis

end subroutine colourvectors


! **********************************************************************
subroutine colint(M, M2colint)
! M(i)   = <M|Ci> colour component of matrix element
! COLINT = <M|M>
!        = Sum_{i,j} <M|Ci> * <Ci|Cj> * <Cj|M>
!        = colour-summed squared matrix element
! K1(i,j) = <Ci|Cj>
! **********************************************************************
  use ol_colourmatrix_ppttj_ttxbbxg_1_/**/REALKIND, only: K1
  implicit none

  complex(REALKIND), intent(in)  :: M(4)
  real(REALKIND),    intent(out) :: M2colint
  integer :: i, j

  M2colint = 0

    do i = 1, 4
      do j = 1, 4
        M2colint = M2colint + real(conjg(M(i))*K1(i,j)*M(j))
      end do
    end do

end subroutine colint

! **********************************************************************
subroutine colint_ct(M, Mct, M2colint_ct, l)
! M(i)   = <M|Ci> colour component of matrix element
! COLINT = <M|M>
!        = Sum_{i,j} <M|Ci> * <Ci|Cj> * <Cj|M>
!        = colour-summed squared matrix element
! K2(i,j) = <Ci|Cj>
! **********************************************************************
  use ol_colourmatrix_ppttj_ttxbbxg_1_/**/REALKIND, only: K2
  implicit none
  complex(REALKIND), intent(in)  :: M(4), Mct(4)
  real(REALKIND),    intent(out) :: M2colint_ct
  integer, intent(in) :: l
  integer ::  i, j

  M2colint_ct = 0

  do i = 1, 4
    do j = 1, 4
      M2colint_ct = M2colint_ct + real(conjg(M(i))*K2(i+4*l,j)*Mct(j))
    end do
  end do

end subroutine colint_ct

! **********************************************************************
subroutine colint_IR(M, M2IRadd)
! M(i)   = <M|Ci> colour component of matrix element
! K1(i,j) = .....
! **********************************************************************
  use ol_colourmatrix_ppttj_ttxbbxg_1_/**/REALKIND, only: K1
  implicit none

  complex(REALKIND), intent(in)  :: M(4)
  real(REALKIND),    intent(out) :: M2IRadd(16)
  integer ::  i, j, k, colmatpos

  M2IRadd = 0

  do k = 1, 17-1
    colmatpos = 4*k
    do i = 1, 4
      do j = 1, 4
        M2IRadd(k) = M2IRadd(k) + real(conjg(M(i))*K1(i+colmatpos,j)*M(j))
      end do
    end do
  end do

end subroutine colint_IR

! **********************************************************************
subroutine colintmunu(M1, M2, M2colint)
! M1(i)    = <M1|Ci> colour component of matrix element
! M2(i)    = <M2|Ci> colour component of matrix element
! M2colint = <M1|M2>
!          = Sum_{i,j} <M1|Ci> * <Ci|Cj> * <Cj|M2>
!          = colour-summed squared matrix element
! K2(i,j) = <Ci|Cj>
! **********************************************************************
  use ol_colourmatrix_ppttj_ttxbbxg_1_/**/REALKIND, only: K2
  implicit none

  complex(REALKIND), intent(in)  :: M1(4)
  complex(REALKIND), intent(in)  :: M2(4)
  complex(REALKIND),    intent(out) :: M2colint
  integer :: i, j

  M2colint = 0

  do i = 1, 4
    do j = 1, 4
      M2colint = M2colint + M1(i)*K2(i,j)*conjg(M2(j))
    end do
  end do

end subroutine colintmunu





! **********************************************************************
subroutine colborninterf(M, M0_col, l)
! M(i)         = <M|Ci> colour component of matrix element
! M0_col(i)    = <M2|Ci> colour component of matrix element,
!                see \tilde{M}_{j} in Fabios thesis
! M2colint = Sum_{i} <M1|Ci> * <Ci|Cj>
!          = colour-summed squared matrix element
! KL(i,j) = <Ci|Cj> with elements Cj of 1-loop colour basis
! **********************************************************************
  use ol_colourmatrix_ppttj_ttxbbxg_1_/**/REALKIND, only: KL
  implicit none

  type(Hpolcont), intent(in)  :: M(4)
  type(Hpolcont), intent(out)  :: M0_col(4)
  integer, intent(in) :: l
  integer :: i, j

  do j = 1, 4 !size(KL(1,:))
    M0_col(j)%j = 0
    M0_col(j)%hf = M(1)%hf
    do i = 1, 4 !size(KL(:,1))
      M0_col(j)%j = M0_col(j)%j  + conjg(M(i)%j)*KL(i+4*l,j)
    end do
  end do

end subroutine colborninterf

end subroutine amp2

end module ol_loop_ppttj_ttxbbxg_1_/**/REALKIND
