
module ol_colourmatrix_ppttj_uuxttxddx_1_/**/REALKIND
  use KIND_TYPES, only: REALKIND
  implicit none
  logical, save           :: colmat_not_initialised = .true.
  complex(REALKIND), save :: K1(138,6)
  contains
  subroutine colourmatrix_init
    use ol_parameters_decl_/**/REALKIND, only: CI
    implicit none
    integer :: k, co
    colmat_not_initialised = .false.
    ! colour matrix

  K1(  1,:) = [  27,   9,   9,   3,   3,   9]
  K1(  2,:) = [   9,  27,   3,   9,   9,   3]
  K1(  3,:) = [   9,   3,  27,   9,   9,   3]
  K1(  4,:) = [   3,   9,   9,  27,   3,   9]
  K1(  5,:) = [   3,   9,   9,   3,  27,   9]
  K1(  6,:) = [   9,   3,   3,   9,   9,  27]
  K1(  7,:) = [  36,  12,  12,   4,   4,  12]
  K1(  8,:) = [  12,  36,   4,  12,  12,   4]
  K1(  9,:) = [  12,   4,  36,  12,  12,   4]
  K1( 10,:) = [   4,  12,  12,  36,   4,  12]
  K1( 11,:) = [   4,  12,  12,   4,  36,  12]
  K1( 12,:) = [  12,   4,   4,  12,  12,  36]
  K1( 13,:) = [   0,   0,   0,  -4,  -4, -12]
  K1( 14,:) = [   0,   0,  -4, -12,   0,  -4]
  K1( 15,:) = [   0,  -4,   0, -12,   0,  -4]
  K1( 16,:) = [  -4, -12, -12, -36,  -4, -12]
  K1( 17,:) = [  -4,   0,   0,  -4,   0, -12]
  K1( 18,:) = [ -12,  -4,  -4, -12, -12, -36]
  K1( 19,:) = [  36,  12,  12,   4,   4,  12]
  K1( 20,:) = [  12,  36,   4,  12,  12,   4]
  K1( 21,:) = [  12,   4,  36,  12,  12,   4]
  K1( 22,:) = [   4,  12,  12,  36,   4,  12]
  K1( 23,:) = [   4,  12,  12,   4,  36,  12]
  K1( 24,:) = [  12,   4,   4,  12,  12,  36]
  K1( 25,:) = [   0,   0,  12,   4,   4,   0]
  K1( 26,:) = [   0,   0,   4,  12,   0,   4]
  K1( 27,:) = [  12,   4,   0,   0,   0,   4]
  K1( 28,:) = [   4,  12,   0,   0,   4,   0]
  K1( 29,:) = [   4,   0,   0,   4,   0,  12]
  K1( 30,:) = [   0,   4,   4,   0,  12,   0]
  K1( 31,:) = [   0, -12,   0,  -4,  -4,   0]
  K1( 32,:) = [ -12, -36,  -4, -12, -12,  -4]
  K1( 33,:) = [   0,  -4,   0,   0, -12,  -4]
  K1( 34,:) = [  -4, -12,   0,   0,  -4,   0]
  K1( 35,:) = [  -4, -12, -12,  -4, -36, -12]
  K1( 36,:) = [   0,  -4,  -4,   0, -12,   0]
  K1( 37,:) = [  36,  12,  12,   4,   4,  12]
  K1( 38,:) = [  12,  36,   4,  12,  12,   4]
  K1( 39,:) = [  12,   4,  36,  12,  12,   4]
  K1( 40,:) = [   4,  12,  12,  36,   4,  12]
  K1( 41,:) = [   4,  12,  12,   4,  36,  12]
  K1( 42,:) = [  12,   4,   4,  12,  12,  36]
  K1( 43,:) = [   0,   0, -12,  -4,  -4,   0]
  K1( 44,:) = [   0,   0,  -4,   0, -12,  -4]
  K1( 45,:) = [ -12,  -4, -36, -12, -12,  -4]
  K1( 46,:) = [  -4,   0, -12,   0,  -4,   0]
  K1( 47,:) = [  -4, -12, -12,  -4, -36, -12]
  K1( 48,:) = [   0,  -4,  -4,   0, -12,   0]
  K1( 49,:) = [   0,  12,   0,   4,   4,   0]
  K1( 50,:) = [  12,   0,   4,   0,   0,   4]
  K1( 51,:) = [   0,   4,   0,  12,   0,   4]
  K1( 52,:) = [   4,   0,  12,   0,   4,   0]
  K1( 53,:) = [   4,   0,   0,   4,   0,  12]
  K1( 54,:) = [   0,   4,   4,   0,  12,   0]
  K1( 55,:) = [ -36, -12, -12,  -4,  -4, -12]
  K1( 56,:) = [ -12,   0,  -4,   0,   0,  -4]
  K1( 57,:) = [ -12,  -4,   0,   0,   0,  -4]
  K1( 58,:) = [  -4,   0,   0,   0,  -4, -12]
  K1( 59,:) = [  -4,   0,   0,  -4,   0, -12]
  K1( 60,:) = [ -12,  -4,  -4, -12, -12, -36]
  K1( 61,:) = [  36,  12,  12,   4,   4,  12]
  K1( 62,:) = [  12,  36,   4,  12,  12,   4]
  K1( 63,:) = [  12,   4,  36,  12,  12,   4]
  K1( 64,:) = [   4,  12,  12,  36,   4,  12]
  K1( 65,:) = [   4,  12,  12,   4,  36,  12]
  K1( 66,:) = [  12,   4,   4,  12,  12,  36]
  K1( 67,:) = [   0,   0,   0,   4,   4,  12]
  K1( 68,:) = [   0,   0,   4,   0,  12,   4]
  K1( 69,:) = [   0,   4,   0,  12,   0,   4]
  K1( 70,:) = [   4,   0,  12,   0,   4,   0]
  K1( 71,:) = [   4,  12,   0,   4,   0,   0]
  K1( 72,:) = [  12,   4,   4,   0,   0,   0]
  K1( 73,:) = [ -36, -12, -12,  -4,  -4, -12]
  K1( 74,:) = [ -12,   0,  -4,   0,   0,  -4]
  K1( 75,:) = [ -12,  -4, -36, -12, -12,  -4]
  K1( 76,:) = [  -4,   0, -12,   0,  -4,   0]
  K1( 77,:) = [  -4,   0, -12,  -4,   0,   0]
  K1( 78,:) = [ -12,  -4,  -4,   0,   0,   0]
  K1( 79,:) = [   0,  12,   0,   4,   4,   0]
  K1( 80,:) = [  12,   0,   4,   0,   0,   4]
  K1( 81,:) = [   0,   4,   0,   0,  12,   4]
  K1( 82,:) = [   4,   0,   0,   0,   4,  12]
  K1( 83,:) = [   4,   0,  12,   4,   0,   0]
  K1( 84,:) = [   0,   4,   4,  12,   0,   0]
  K1( 85,:) = [   0, -12,   0,  -4,  -4,   0]
  K1( 86,:) = [ -12, -36,  -4, -12, -12,  -4]
  K1( 87,:) = [   0,  -4,   0, -12,   0,  -4]
  K1( 88,:) = [  -4, -12, -12, -36,  -4, -12]
  K1( 89,:) = [  -4, -12,   0,  -4,   0,   0]
  K1( 90,:) = [   0,  -4,  -4, -12,   0,   0]
  K1( 91,:) = [  36,  12,  12,   4,   4,  12]
  K1( 92,:) = [  12,  36,   4,  12,  12,   4]
  K1( 93,:) = [  12,   4,  36,  12,  12,   4]
  K1( 94,:) = [   4,  12,  12,  36,   4,  12]
  K1( 95,:) = [   4,  12,  12,   4,  36,  12]
  K1( 96,:) = [  12,   4,   4,  12,  12,  36]
  K1( 97,:) = [ -36, -12, -12,  -4,  -4, -12]
  K1( 98,:) = [ -12, -36,  -4, -12, -12,  -4]
  K1( 99,:) = [ -12,  -4,   0,   0,   0,  -4]
  K1(100,:) = [  -4, -12,   0,   0,  -4,   0]
  K1(101,:) = [  -4, -12,   0,  -4,   0,   0]
  K1(102,:) = [ -12,  -4,  -4,   0,   0,   0]
  K1(103,:) = [   0,   0,   0,   4,   4,  12]
  K1(104,:) = [   0,   0,   4,  12,   0,   4]
  K1(105,:) = [   0,   4,   0,   0,  12,   4]
  K1(106,:) = [   4,  12,   0,   0,   4,   0]
  K1(107,:) = [   4,   0,  12,   4,   0,   0]
  K1(108,:) = [  12,   4,   4,   0,   0,   0]
  K1(109,:) = [   0,   0, -12,  -4,  -4,   0]
  K1(110,:) = [   0,   0,  -4, -12,   0,  -4]
  K1(111,:) = [ -12,  -4, -36, -12, -12,  -4]
  K1(112,:) = [  -4, -12, -12, -36,  -4, -12]
  K1(113,:) = [  -4,   0, -12,  -4,   0,   0]
  K1(114,:) = [   0,  -4,  -4, -12,   0,   0]
  K1(115,:) = [   0,   0,  12,   4,   4,   0]
  K1(116,:) = [   0,   0,   4,   0,  12,   4]
  K1(117,:) = [  12,   4,   0,   0,   0,   4]
  K1(118,:) = [   4,   0,   0,   0,   4,  12]
  K1(119,:) = [   4,  12,   0,   4,   0,   0]
  K1(120,:) = [   0,   4,   4,  12,   0,   0]
  K1(121,:) = [   0,   0,   0,  -4,  -4, -12]
  K1(122,:) = [   0,   0,  -4,   0, -12,  -4]
  K1(123,:) = [   0,  -4,   0,   0, -12,  -4]
  K1(124,:) = [  -4,   0,   0,   0,  -4, -12]
  K1(125,:) = [  -4, -12, -12,  -4, -36, -12]
  K1(126,:) = [ -12,  -4,  -4, -12, -12, -36]
  K1(127,:) = [  36,  12,  12,   4,   4,  12]
  K1(128,:) = [  12,  36,   4,  12,  12,   4]
  K1(129,:) = [  12,   4,  36,  12,  12,   4]
  K1(130,:) = [   4,  12,  12,  36,   4,  12]
  K1(131,:) = [   4,  12,  12,   4,  36,  12]
  K1(132,:) = [  12,   4,   4,  12,  12,  36]
  K1(133,:) = [   0,   0,   0,   0,   0,   0]
  K1(134,:) = [   0,   0,   0,   0,   0,   0]
  K1(135,:) = [   0,   0,   0,   0,   0,   0]
  K1(136,:) = [   0,   0,   0,   0,   0,   0]
  K1(137,:) = [   0,   0,   0,   0,   0,   0]
  K1(138,:) = [   0,   0,   0,   0,   0,   0]


  end subroutine colourmatrix_init
end module ol_colourmatrix_ppttj_uuxttxddx_1_/**/REALKIND



module ol_forced_parameters_ppttj_uuxttxddx_1_/**/REALKIND
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


    checks_not_written = .false.
    end if

    101 format('[OpenLoops] === WARNING ===',/,'[OpenLoops] code was generated with ',A,/,'[OpenLoops] ===============')
  end subroutine check_forced_parameters
end module ol_forced_parameters_ppttj_uuxttxddx_1_/**/REALKIND

module ol_tree_ppttj_uuxttxddx_1_/**/REALKIND
  use KIND_TYPES, only: REALKIND, DREALKIND, intkind1, intkind2
  implicit none
  integer,           save :: factors_status = -1
  complex(REALKIND), save :: f(2)
  complex(REALKIND), save :: den(23)
#ifdef PRECISION_dp
  integer(intkind1), save :: ntry = 1
  integer(intkind2), parameter :: nheltot = 64 ! number of helicity configurations
  integer(intkind2), save :: nhel = 64 ! number of non-vanishing helicity configurations (adapted at runtime)
  integer(intkind2), save :: Hel(64) ! physical helicity states
  complex(DREALKIND) :: M1helarr(6,64) ! cache
#endif

  contains

subroutine factors_init()
  use ol_parameters_decl_/**/REALKIND
  use ol_loop_parameters_decl_/**/REALKIND, only: loop_parameters_status
  implicit none
  factors_status = parameters_status
  ! factors of the diagrams
    f(1) = CI*gQCD**4
    f(2) = gQCD**4

end subroutine factors_init


subroutine born_denominators_init()
  use ol_parameters_decl_/**/REALKIND ! masses
  use ol_momenta_decl_/**/REALKIND, only: L
  implicit none

  ! propagators

  den(1) = 1 /((L(5,3))+L(6,3))
  den(2) = 1 /((L(5,12))+L(6,12))
  den(3) = 1 /((L(5,48))+L(6,48))
  den(6) = 1 /((L(5,19))+L(6,19))
  den(9) = 1 /((L(5,28))+L(6,28))
  den(12) = 1 /((L(5,7) - MT2)+L(6,7))
  den(15) = 1 /((L(5,52) - MT2)+L(6,52))
  den(18) = 1 /((L(5,13))+L(6,13))
  den(21) = 1 /((L(5,49))+L(6,49))

  ! denominators

  den(4) = den(1)*den(2)
  den(5) = den(3)*den(4)
  den(7) = den(1)*den(6)
  den(8) = den(2)*den(7)
  den(10) = den(2)*den(9)
  den(11) = den(1)*den(10)
  den(13) = den(1)*den(12)
  den(14) = den(3)*den(13)
  den(16) = den(3)*den(15)
  den(17) = den(1)*den(16)
  den(19) = den(2)*den(18)
  den(20) = den(3)*den(19)
  den(22) = den(3)*den(21)
  den(23) = den(2)*den(22)

end subroutine born_denominators_init


! **********************************************************************
#ifdef PRECISION_dp
subroutine amp2(P_scatt, M2, I, MOM, nextcombs, extcombs, M2munu) &
    & bind(c,name="ol_f_amp2_ppttj_uuxttxddx_1")
#else
subroutine amp2(P_scatt, M2, I, MOM, nextcombs, extcombs, M2munu)
  use ol_tree_ppttj_uuxttxddx_1_/**/DREALKIND, only: &
    & ntry, nhel, Hel, M1helarr
#endif
! P_scatt(0:3,Npart) = incoming external momenta
! M2  = helicity-summed squared matrix element for up anti-up top anti-top down anti-down -> 0
! I   = emitter, 0 means none (replace wave function I in the current crossing by the momentum MOM),
!       for I < 0 emitter for PowHeg B^mu,nu
! MOM = external "polarisation vector" for gluon emitter
! nextcombs is the length of the array extcombs
! The elements of the array extcombs specify for which external particle combinations
!   the colour correlations will be calculated. For particles i,j: i*(i-1)/2+j
!   i=j=0 -> 0 means no colour insertion.
! M2munu = Spin correlated born squared amplitude in PowHeg format B^mu,nu for emitter -I
! **********************************************************************
  use ol_parameters_decl_/**/REALKIND !, only: ci, parameters_status, ZERO, scalefactor, >masses<
  use ol_parameters_init_/**/REALKIND, only: ensure_mp_init
  use ol_init, only: tree_parameters_flush
  use ol_kinematics_/**/REALKIND, only: init_kinematics
  use ol_momenta_decl_/**/DREALKIND, only: momenta_nan_check
  use ol_momenta_decl_/**/REALKIND, only: L
  use ol_data_types_/**/REALKIND
  use ol_helicity_bookkeeping_/**/REALKIND, only: &
    & helbookkeeping_wf, helsync, flip_phase
  use ol_helicity_init, only: helbookkeeping_flip, helsync_flip
  use ol_h_propagators_/**/REALKIND
  use ol_h_wavefunctions_/**/REALKIND
  use ol_wavefunctions_/**/REALKIND, only: wf_V_Std
  use ol_h_vertices_/**/REALKIND
  use ol_h_contractions_/**/REALKIND
  use ol_external_ppttj_uuxttxddx_1, only: &
    & external_perm_ppttj_uuxttxddx_1, &
    & external_perm_inv_ppttj_uuxttxddx_1, &
    & extcomb_perm_ppttj_uuxttxddx_1, &
    & average_factor_ppttj_uuxttxddx_1, &
    & photonid_ppttj_uuxttxddx_1
  use ol_external_ppttj_uuxttxddx_1, only: &
    & H, hel_not_initialised, hel_init, POLSEL
  use ol_colourmatrix_ppttj_uuxttxddx_1_/**/REALKIND, only: &
    & colmat_not_initialised, colourmatrix_init
  use ol_forced_parameters_ppttj_uuxttxddx_1_/**/REALKIND, only: &
    & check_forced_parameters
  use ol_heltables_ppttj_uuxttxddx_1
  use ol_kinematics_/**/REALKIND, only: LC2Std_Rep_cmplx
  use ol_ew_renormalisation_/**/REALKIND, only: photon_factors
  implicit none

  real(DREALKIND), intent(in)  :: P_scatt(0:3,6)
  real(REALKIND),  intent(out) :: M2(0:23-1)
  real(REALKIND),  intent(out) :: M2munu(4,4)
  integer,         intent(in)  :: I
  real(REALKIND),  intent(in)  :: MOM(0:3)
  integer,         intent(in)  :: nextcombs
  integer,         intent(in)  :: extcombs(nextcombs)

  integer           :: ReplacePol, JBmunu, extcombs_permuted(nextcombs), shift, k, r, m, n
  real(REALKIND)    :: P(0:3,6)
  integer           :: extmasses2(6)
  real(REALKIND)    :: M2add(0:23-1)
  complex(REALKIND) :: M2munuadd(2)
  complex(REALKIND) :: MOM_LC(4), M1(6), M1helarray(6,64)
  real(REALKIND)    :: P_scatt_intern(0:3,6)
  complex(REALKIND) :: epLC(1:4), epStd(1:4,2)
  real(REALKIND), save :: scalebackfactor, old_scalefactor = 0, bornphotonfactor
  integer(intkind1) :: nsync

  ! type(wfun) :: ex1(h1), ex2(h2), ... ! external wave functions for h<n> helicities
  type(wfun) :: ex1(2), ex2(2), ex3(2), ex4(2), ex5(2), ex6(2)

  ! type(wfun) :: wf<h>(h,n), ... ! n wave functions with h helicity configurations
  type(wfun) :: wf4(4,3), wf8(8,18), wf16(16,1), wf64(64,7)

  type(polcont) :: A(64,7)

  complex(REALKIND) :: omega(2) ! phases for helicity correlations

  call tree_parameters_flush()
  call ensure_mp_init()

  if (hel_not_initialised) call hel_init()
  if (colmat_not_initialised) call colourmatrix_init()
  if (factors_status /= parameters_status) then
    call check_forced_parameters()
  end if
  call factors_init()

  if (momenta_nan_check(P_scatt) /= 0) then
    M2 = 0
    return
  end if

  extmasses2 = [ 0, 0, nMT, nMT, 0, 0 ]
  ! Convert 2 -> n-2 PS-point to n -> 0 (so that P(1) + ... + P(n) = 0) and compute
  ! internal-propagator momenta in light-cone representation
  call init_kinematics(P_scatt, extmasses2, P, &
      &  external_perm_inv_ppttj_uuxttxddx_1, 6,.false.)

  ! denominators
  call born_denominators_init()

  ReplacePol = 0
  JBmunu = 0
  if (I > 0) then
    ReplacePol = external_perm_ppttj_uuxttxddx_1(I)
  else if (I < 0) then
    JBmunu = external_perm_ppttj_uuxttxddx_1(-I)
  end if

  do k = 1, nextcombs
    extcombs_permuted(k) = &
       & extcomb_perm_ppttj_uuxttxddx_1(extcombs(k))
  end do

  if (heltables_not_init) call init_heltables()

  42 continue
  ! external WFs
  call pol_wf_Q(P(:,1), rZERO, H1, ex1, POLSEL(1))
  call pol_wf_A(P(:,2), rZERO, H2, ex2, POLSEL(2))
  call pol_wf_Q(P(:,3), rMT, H3, ex3, POLSEL(3))
  call pol_wf_A(P(:,4), rMT, H4, ex4, POLSEL(4))
  call pol_wf_Q(P(:,5), rZERO, H5, ex5, POLSEL(5))
  call pol_wf_A(P(:,6), rZERO, H6, ex6, POLSEL(6))


  if (ntry == 1) then
    shift = 1
    ! call helbookkeeping_flip(H1, 1, shift, eflip, exthel, firstpol)
    ! call helbookkeeping_wf(H1, ex1, shift) ...

    if (any(POLSEL /= 0)) then

      call pol_wf_Q(P(:,1), rZERO, H1, ex1, 0)
      call pol_wf_A(P(:,2), rZERO, H2, ex2, 0)
      call pol_wf_Q(P(:,3), rMT, H3, ex3, 0)
      call pol_wf_A(P(:,4), rMT, H4, ex4, 0)
      call pol_wf_Q(P(:,5), rZERO, H5, ex5, 0)
      call pol_wf_A(P(:,6), rZERO, H6, ex6, 0)

    end if

    call helbookkeeping_flip(H1, 1, shift, eflip, exthel, firstpol)
    call helbookkeeping_wf(H1, ex1, shift)
    call helbookkeeping_flip(H2, 2, shift, eflip, exthel, firstpol)
    call helbookkeeping_wf(H2, ex2, shift)
    call helbookkeeping_flip(H3, 3, shift, eflip, exthel, firstpol)
    call helbookkeeping_wf(H3, ex3, shift)
    call helbookkeeping_flip(H4, 4, shift, eflip, exthel, firstpol)
    call helbookkeeping_wf(H4, ex4, shift)
    call helbookkeeping_flip(H5, 5, shift, eflip, exthel, firstpol)
    call helbookkeeping_wf(H5, ex5, shift)
    call helbookkeeping_flip(H6, 6, shift, eflip, exthel, firstpol)
    call helbookkeeping_wf(H6, ex6, shift)

  end if

  ! internal WFs
  ! e.g. call vert_VQ_A(ntry, ex3, ex1, wf1, n1, t1) ...
  call vert_QA_V(ntry, ex1, ex2, wf4(:,1), n3(:,1), t3x4(:,:,1))
  call vert_QA_V(ntry, ex3, ex4, wf4(:,2), n3(:,2), t3x4(:,:,2))
  call vert_QA_V(ntry, ex5, ex6, wf4(:,3), n3(:,3), t3x4(:,:,3))
  call vert_UV_W(ntry, wf4(:,1), 3, wf4(:,2), 12, wf16(:,1), n3(:,4), t3x16(:,:,1))
  call vert_VQ_A(ntry, wf4(:,1), ex5, wf8(:,1), n3(:,5), t3x8(:,:,1))
  call vert_AV_Q(ntry, ex6, wf4(:,2), wf8(:,2), n3(:,6), t3x8(:,:,2))
  call prop_Q_A(ntry, wf8(:,1), 19, ZERO, 0_intkind1, wf8(:,3), n2(1))
  call vert_VQ_A(ntry, wf4(:,2), ex5, wf8(:,4), n3(:,7), t3x8(:,:,3))
  call vert_AV_Q(ntry, ex6, wf4(:,1), wf8(:,5), n3(:,8), t3x8(:,:,4))
  call prop_Q_A(ntry, wf8(:,4), 28, ZERO, 0_intkind1, wf8(:,6), n2(2))
  call vert_VQ_A(ntry, wf4(:,1), ex3, wf8(:,7), n3(:,9), t3x8(:,:,5))
  call vert_AV_Q(ntry, ex4, wf4(:,3), wf8(:,8), n3(:,10), t3x8(:,:,6))
  call prop_Q_A(ntry, wf8(:,7), 7, MT, 1_intkind1, wf8(:,9), n2(3))
  call vert_VQ_A(ntry, wf4(:,3), ex3, wf8(:,10), n3(:,11), t3x8(:,:,7))
  call vert_AV_Q(ntry, ex4, wf4(:,1), wf8(:,11), n3(:,12), t3x8(:,:,8))
  call prop_Q_A(ntry, wf8(:,10), 52, MT, 1_intkind1, wf8(:,12), n2(4))
  call vert_VQ_A(ntry, wf4(:,2), ex1, wf8(:,13), n3(:,13), t3x8(:,:,9))
  call vert_AV_Q(ntry, ex2, wf4(:,3), wf8(:,14), n3(:,14), t3x8(:,:,10))
  call prop_Q_A(ntry, wf8(:,13), 13, ZERO, 0_intkind1, wf8(:,15), n2(5))
  call vert_VQ_A(ntry, wf4(:,3), ex1, wf8(:,16), n3(:,15), t3x8(:,:,11))
  call vert_AV_Q(ntry, ex2, wf4(:,2), wf8(:,17), n3(:,16), t3x8(:,:,12))
  call prop_Q_A(ntry, wf8(:,16), 49, ZERO, 0_intkind1, wf8(:,18), n2(6))


  ! colour-stripped amplitudes
  do nsync = ntry+ntry-1, ntry+1  !  nsync = 1,2  for 1st point and nsync = 3 later
    call diagrams()
    if (nsync == 1) then
      call helsync(nsync, A, nhel, Hel)
      call helsync_flip(nsync, nhel, Hel, eflip, exthel)
      if (any(POLSEL /= 0)) then
        ntry = 2
        goto 42
      end if
    end if
  end do

  do k = 1, nhel
    call colourvector(A, k, M1helarray(:,k))
  end do
  M1helarray(:,nhel+1:) = 0
  M1helarr = M1helarray ! fill cache

  M2 = 0
  if (ReplacePol == 0) then ! no helicity correlation

    do k = 1, nhel
      call colint(M1helarray(:,k), M2add, extcombs_permuted)
      M2 = M2 + M2add
    end do

  else ! helicity correlation

    call flip_phase(P(:,ReplacePol), firstpol(ReplacePol), MOM, omega)
    do k = 1, nhel
      M1 = M1helarray(:,k)
      r = eflip(k, ReplacePol) ! Flip helicity of external particle ReplacePol (gluon emitter).
      if (r <= nhel) then      ! Only add flipped helicity configuration if it does not vanish.
        M1 = M1 + omega(exthel(k,ReplacePol)) * M1helarray(:,r)
      end if
      call colint2(M1helarray(:,k), M1, M2add, extcombs_permuted)
      M2 = M2 + M2add
    end do
    M2 = 0.5_/**/REALKIND * M2

  end if

  M2munu = 0
  if ( JBmunu /= 0 ) then ! POWHEGs Bmunu helicity correlation
    P_scatt_intern = P_scatt
    ! get wfs
    call wf_V_Std(P_scatt_intern(:,-I), rZERO, -1, epLC)
    call LC2Std_Rep_cmplx(epLC, epStd(:,1))
    call wf_V_Std(P_scatt_intern(:,-I), rZERO, 1, epLC)
    call LC2Std_Rep_cmplx(epLC, epStd(:,2))

    ! sum over helicities
    do k = 1, nhel
      !same helicity case
      call colintmunu(M1helarray(:,k), M1helarray(:,k), M2munuadd(1))
      !opposite helicity case
      r = eflip(k, JBmunu) ! Flip helicity of external particle JBmunu (gluon emitter).
      if (r <= nhel) then  ! Only add opposite helicity configuration if it does not vanish.
        call colintmunu(M1helarray(:,k), M1helarray(:,r), M2munuadd(2))
      else
        M2munuadd(2) = 0
      end if
      ! Fill B^(mu,nu) = sum_(k) sum_(l1,l2) M^*_(k) M_(k) (eps^(mu)_(l1))^* eps^(nu)_(l2)
      do m = 1,4
        do n = 1,4
          M2munu(m,n) = M2munu(m,n) + M2munuadd(1)*conjg(epStd(m,exthel(k,JBmunu)))*epStd(n,exthel(k,JBmunu))
          if (r <= nhel) then
            M2munu(m,n) = M2munu(m,n) + M2munuadd(2)*conjg(epStd(m,exthel(k,JBmunu)))*epStd(n,exthel(r,JBmunu))
          end if
        end do
      end do
    end do

    M2munu = M2munu / average_factor_ppttj_uuxttxddx_1
  end if

  ! Colour and helicity average and symmetry factor of outgoing particles
  M2add = M2 / average_factor_ppttj_uuxttxddx_1

  do k = 0, 23-1
    M2(k) = M2add(extcomb_perm_ppttj_uuxttxddx_1(k))
  end do

  ! photon-factors
  call photon_factors(photonid_ppttj_uuxttxddx_1, 0, bornphotonfactor)
  M2 = bornphotonfactor * M2
  M2munu = bornphotonfactor * M2munu

  if (ntry == 1) ntry = 2

  if (scalefactor /= old_scalefactor) then
    scalebackfactor = scalefactor**(2*6-8)
    old_scalefactor = scalefactor
  end if
  M2 = scalebackfactor * M2
  M2munu = scalebackfactor * M2munu

  contains

subroutine diagrams()
  implicit none
  ! e.g. call cont_VV(nsync, wf3, wf6, A(:,1), n64, t64, nhel, den(5)) ...

    call cont_VV(nsync, wf4(:,3), wf16(:,1), A(:,1), n3(:,17), t3x64(:,:,1), nhel, den(5))
    call cont_QA(nsync, wf8(:,2), wf8(:,3), A(:,2), n3(:,18), t3x64(:,:,2), nhel, den(8))
    call cont_QA(nsync, wf8(:,5), wf8(:,6), A(:,3), n3(:,19), t3x64(:,:,3), nhel, den(11))
    call cont_QA(nsync, wf8(:,8), wf8(:,9), A(:,4), n3(:,20), t3x64(:,:,4), nhel, den(14))
    call cont_QA(nsync, wf8(:,11), wf8(:,12), A(:,5), n3(:,21), t3x64(:,:,5), nhel, den(17))
    call cont_QA(nsync, wf8(:,14), wf8(:,15), A(:,6), n3(:,22), t3x64(:,:,6), nhel, den(20))
    call cont_QA(nsync, wf8(:,17), wf8(:,18), A(:,7), n3(:,23), t3x64(:,:,7), nhel, den(23))

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

subroutine colourvector(A, j, M1)
  implicit none
  type(polcont) :: A(:,:)
  integer, intent(in) :: j
  complex(REALKIND), intent(out) :: M1(6) ! M1helarray(6,64)
  integer :: empty(0)

  M1(1) = ((-A(j,2)%j-A(j,3)%j-A(j,6)%j-A(j,7)%j)*f(1))/12._/**/REALKIND
  M1(2) = ((A(j,3)%j+A(j,4)%j+A(j,7)%j)*f(1))/4._/**/REALKIND+(CI*A(j,1)%j*f(2))/4._/**/REALKIND
  M1(3) = ((A(j,2)%j+A(j,5)%j+A(j,6)%j)*f(1))/4._/**/REALKIND-(CI*A(j,1)%j*f(2))/4._/**/REALKIND
  M1(4) = ((-A(j,2)%j-A(j,3)%j-A(j,4)%j-A(j,5)%j)*f(1))/12._/**/REALKIND
  M1(5) = ((-A(j,4)%j-A(j,5)%j-A(j,6)%j-A(j,7)%j)*f(1))/12._/**/REALKIND
  M1(6) = ((A(j,2)%j+A(j,3)%j+A(j,4)%j+A(j,5)%j+A(j,6)%j+A(j,7)%j)*f(1))/36._/**/REALKIND

end subroutine colourvector


! **********************************************************************
subroutine colint(M, M2colint, extcombs)
! M(i)   = <M|Ci> colour component of matrix element
! COLINT = <M|M>
!        = Sum_{i,j} <M|Ci> * <Ci|Cj> * <Cj|M>
!        = colour-summed squared matrix element
! K1(i,j) = <Ci|Cj>
! M2colint is an array which contains the colour interference for each colour matrix
! The elements of the array extcombs specifies for which external particle
! combinations the colour correlations will be calculated. For particles i,j: i*(i-1)/2+j
! i=j=0 -> 0 means no colour insertion.
! **********************************************************************
  use ol_colourmatrix_ppttj_uuxttxddx_1_/**/REALKIND, only: K1
  implicit none

  complex(REALKIND), intent(in)  :: M(6)
  real(REALKIND),    intent(out) :: M2colint(0:23-1)
  integer,           intent(in)  :: extcombs(:)
  integer :: extcomb, colmatpos, i, j, eco

  M2colint = 0

  do eco = 1, size(extcombs)
    extcomb = extcombs(eco)
    colmatpos = 6*extcomb
    do i = 1, 6
      do j = 1, 6
        M2colint(extcomb) = M2colint(extcomb) + real(conjg(M(i))*K1(i+colmatpos,j)*M(j))
      end do
    end do
  end do

end subroutine colint


! **********************************************************************
subroutine colint2(M1, M2, M2colint, extcombs)
! M1(i)   = <M1|Ci> colour component of matrix element
! M2(i)   = <M2|Ci> colour component of matrix element
! COLINT = <M|M>
!        = Sum_{i,j} <M1|Ci> * <Ci|Cj> * <Cj|M2>
!        = colour-summed squared matrix element
! K1(i,j) = <Ci|Cj>
! M2colint is an array which contains the colour interference for each colour matrix
! The elements of the array extcombs specifies for which external particle
! combinations the colour correlations will be calculated. For particles i,j: i*(i-1)/2+j
! i=j=0 -> 0 means no colour insertion.
! **********************************************************************
  use ol_colourmatrix_ppttj_uuxttxddx_1_/**/REALKIND, only: K1
  implicit none

  complex(REALKIND), intent(in)  :: M1(6), M2(6)
  real(REALKIND),    intent(out) :: M2colint(0:23-1)
  integer,           intent(in)  :: extcombs(:)
  integer :: extcomb, colmatpos, i, j, eco

  M2colint = 0

  do eco = 1, size(extcombs)
    extcomb = extcombs(eco)
    colmatpos = 6*extcomb
    do i = 1, 6
      do j = 1, 6
        M2colint(extcomb) = M2colint(extcomb) + real(conjg(M1(i))*K1(i+colmatpos,j)*M2(j))
      end do
    end do
  end do

end subroutine colint2


! **********************************************************************
subroutine colintmunu(M1, M2, M2colint)
! M1(i)    = <M1|Ci> colour component of matrix element
! M2(i)    = <M2|Ci> colour component of matrix element
! M2colint = <M1|M2>
!          = Sum_{i,j} <M1|Ci> * <Ci|Cj> * <Cj|M2>
!          = colour-summed squared matrix element
! K1(i,j) = <Ci|Cj>
! **********************************************************************
  use ol_colourmatrix_ppttj_uuxttxddx_1_/**/REALKIND, only: K1
  implicit none

  complex(REALKIND), intent(in)  :: M1(6)
  complex(REALKIND), intent(in)  :: M2(6)
  complex(REALKIND),    intent(out) :: M2colint
  integer :: i, j

  M2colint = 0

  do i = 1, 6
    do j = 1, 6
      M2colint = M2colint + M1(i)*K1(i,j)*conjg(M2(j))
    end do
  end do

end subroutine colintmunu

end subroutine amp2


#ifdef PRECISION_dp
subroutine colourvector(M1out, nhelout) &
  & bind(c,name="ol_tree_colvect_ppttj_uuxttxddx_1")
  ! Retrieve M1helarr from cache. Cache must have been filled before by calling amp2().
  ! [out] M1out(:,h): colour vector for each helicity configuration h
  ! [out] nhelout: number of non-vanishing helicity configurations
  implicit none
  complex(DREALKIND) :: M1out(6,64)
  integer, intent(out) :: nhelout
  M1out = M1helarr
  nhelout = nhel
end subroutine colourvector
#endif


! =================================================== !
! Only interfaces for easier usage of AMP2_<procname> !
! =================================================== !

#ifdef PRECISION_dp
subroutine amp2tree(P, M2) &
    & bind(c,name="ol_f_amp2tree_ppttj_uuxttxddx_1")
#else
subroutine amp2tree(P, M2)
#endif
  ! This is an interface for AMP2.
  ! Calculates the squared matrix element without fuss.
  implicit none
  real(DREALKIND), intent(in)  :: P(0:3,6)
  real(REALKIND),  intent(out) :: M2
  real(REALKIND) :: M2tmp(0:23-1)
  real(REALKIND) :: M2munu(4,4)
  call amp2(P, M2tmp, 0, [ 0._/**/REALKIND, 0._/**/REALKIND, 0._/**/REALKIND, 0._/**/REALKIND ], 1, [ 0 ], M2munu)
  M2 = M2tmp(0)
end subroutine amp2tree


#ifdef PRECISION_dp
subroutine amp2ccone(P, M2, I, J) &
    & bind(c,name="ol_f_amp2ccone_ppttj_uuxttxddx_1")
#else
subroutine amp2ccone(P, M2, I, J)
#endif
  ! This is an interface for AMP2.
  ! Calculates the squared matrix for the colour correlation matrix for particles I and J.
  implicit none
  real(DREALKIND), intent(in)  :: P(0:3,6)
  real(REALKIND),  intent(out) :: M2
  integer,         intent(in)  :: I, J
  integer        :: extcomb
  real(REALKIND) :: M2tmp(0:23-1)
  real(REALKIND) :: M2munu(4,4)
  if (J <= I) then
    extcomb = I*(I-1)/2 + J
  else
    extcomb = J*(J-1)/2 + I
  end if
  call amp2(P, M2tmp, 0, [ 0._/**/REALKIND, 0._/**/REALKIND, 0._/**/REALKIND, 0._/**/REALKIND ], 1, [ extcomb ], M2munu)
  M2 = M2tmp(extcomb)
end subroutine amp2ccone


#ifdef PRECISION_dp
subroutine amp2ccall(P, M2) &
    & bind(c,name="ol_f_amp2ccall_ppttj_uuxttxddx_1")
#else
subroutine amp2ccall(P, M2)
#endif
  ! This is an interface for AMP2.
  ! Calculates the squared matrix for all colour correlation matrices.
  ! The correlation between particles i and j is at position i*(i-1)/2+j of the array M2.
  ! M2(0) is AMP2tree
  implicit none
  real(DREALKIND), intent(in)  :: P(0:3,6)
  real(REALKIND),  intent(out) :: M2(0:23-1)
  real(REALKIND) :: M2munu(4,4)
  integer :: k
  call amp2(P, M2, 0, [ 0._/**/REALKIND, 0._/**/REALKIND, 0._/**/REALKIND, 0._/**/REALKIND ], &
    23, [ (k, k = 0, 23-1) ], M2munu)
end subroutine amp2ccall


#ifdef PRECISION_dp
subroutine amp2hcone(P, M2, I, J, MOM) &
    & bind(c,name="ol_f_amp2hcone_ppttj_uuxttxddx_1")
#else
subroutine amp2hcone(P, M2, I, J, MOM)
#endif
  ! This is an interface for AMP2.
  ! Calculates the helicity correlation for emitter I with momentum MOM and spectator J
  implicit none
  real(DREALKIND), intent(in)  :: P(0:3,6)
  real(REALKIND),  intent(out) :: M2
  integer,         intent(in)  :: I, J
  real(REALKIND),  intent(in)  :: MOM(0:3)
  integer        :: extcomb
  real(REALKIND) :: M2tmp(0:23-1)
  real(REALKIND) :: M2munu(4,4)
  if (J <= I) then
    extcomb = I*(I-1)/2 + J
  else
    extcomb = J*(J-1)/2 + I
  end if
  call amp2(P, M2tmp, I, MOM, 1, [ extcomb ], M2munu)
  M2 = M2tmp(extcomb)
end subroutine amp2hcone


#ifdef PRECISION_dp
subroutine amp2hcall(P, M2, I, MOM) &
    & bind(c,name="ol_f_amp2hcall_ppttj_uuxttxddx_1")
#else
subroutine amp2hcall(P, M2, I, MOM)
#endif
  ! This is an interface for AMP2.
  ! Calculates all helicity correlations for emitter I with momentum MOM.
  ! The correlator for spectator j is at position j of the array M2.
  implicit none
  real(DREALKIND), intent(in)  :: P(0:3,6)
  real(REALKIND),  intent(out) :: M2(6)
  integer,         intent(in)  :: I
  real(REALKIND),  intent(in)  :: MOM(0:3)
  real(REALKIND) :: M2tmp(0:23-1)
  real(REALKIND) :: M2munu(4,4)
  integer        :: J, extcombs(6)
  do J = 1, 6
    if (J <= I) then
      extcombs(J) = I*(I-1)/2 + J
    else
      extcombs(J) = J*(J-1)/2 + I
    end if
  end do
  call amp2(P, M2tmp, I, MOM, 6,extcombs, M2munu)
  do J = 1, 6
    M2(J) = M2tmp(extcombs(J))
  end do
end subroutine amp2hcall


#ifdef PRECISION_dp

subroutine amp2tree_c(p, m2) &
    & bind(c,name="ol_amp2tree_ppttj_uuxttxddx_1")
  use, intrinsic :: iso_c_binding, only: c_double
  implicit none
  real(c_double), intent(in)  :: p(0:3,6)
  real(c_double), intent(out) :: m2
  real(DREALKIND) :: f_p(0:3,6)
  real(DREALKIND) :: f_m2
  f_p = p
  call amp2tree(f_p, f_m2)
  m2 = f_m2
end subroutine amp2tree_c

subroutine amp2ccone_c(p, m2, i, j) &
    & bind(c,name="ol_amp2ccone_ppttj_uuxttxddx_1")
  use, intrinsic :: iso_c_binding, only: c_double, c_int
  implicit none
  real(c_double), intent(in)  :: p(0:3,6)
  real(c_double), intent(out) :: m2
  integer(c_int), intent(in) :: i, j
  real(DREALKIND) :: f_p(0:3,6)
  real(DREALKIND) :: f_m2
  integer :: f_i, f_j
  f_p = p
  f_i = i
  f_j = j
  call amp2ccone(f_p, f_m2, f_i, f_j)
  m2 = f_m2
end subroutine amp2ccone_c

subroutine amp2ccall_c(p, m2) &
    & bind(c,name="ol_amp2ccall_ppttj_uuxttxddx_1")
  use, intrinsic :: iso_c_binding, only: c_double
  implicit none
  real(c_double), intent(in)  :: p(0:3,6)
  real(c_double), intent(out) :: m2(0:23-1)
  real(DREALKIND) :: f_p(0:3,6)
  real(DREALKIND) :: f_m2(0:23-1)
  f_p = p
  call amp2ccall(f_p, f_m2)
  m2 = f_m2
end subroutine amp2ccall_c

subroutine amp2hcone_c(p, m2, i, j, mom) &
    & bind(c,name="ol_amp2hcone_ppttj_uuxttxddx_1")
  use, intrinsic :: iso_c_binding, only: c_double, c_int
  implicit none
  real(c_double), intent(in)  :: p(0:3,6)
  real(c_double), intent(out) :: m2
  integer(c_int), intent(in) :: i, j
  real(c_double), intent(in) :: mom(0:3)
  real(DREALKIND) :: f_p(0:3,6)
  real(DREALKIND) :: f_m2
  integer :: f_i, f_j
  real(DREALKIND) :: f_mom(0:3)
  f_p = p
  f_i = i
  f_j = j
  f_mom = mom
  call amp2hcone(f_p, f_m2, f_i, f_j, f_mom)
  m2 = f_m2
end subroutine amp2hcone_c

subroutine amp2hcall_c(p, m2, i, mom) &
    & bind(c,name="ol_amp2hcall_ppttj_uuxttxddx_1")
  use, intrinsic :: iso_c_binding, only: c_double, c_int
  implicit none
  real(c_double), intent(in)  :: p(0:3,6)
  real(c_double), intent(out) :: m2(6)
  integer(c_int), intent(in) :: i
  real(c_double), intent(in) :: mom(0:3)
  real(DREALKIND) :: f_p(0:3,6)
  real(DREALKIND) :: f_m2(6)
  integer :: f_i
  real(DREALKIND) :: f_mom(0:3)
  f_p = p
  f_i = i
  f_mom = mom
  call amp2hcall(f_p, f_m2, f_i, f_mom)
  m2 = f_m2
end subroutine amp2hcall_c

#endif

end module ol_tree_ppttj_uuxttxddx_1_/**/REALKIND
