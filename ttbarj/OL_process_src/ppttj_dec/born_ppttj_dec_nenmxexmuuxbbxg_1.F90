
module ol_colourmatrix_ppttj_dec_nenmxexmuuxbbxg_1_/**/REALKIND
  use KIND_TYPES, only: REALKIND
  implicit none
  logical, save           :: colmat_not_initialised = .true.
  complex(REALKIND), save :: K1(188,4)
  contains
  subroutine colourmatrix_init
    use ol_parameters_decl_/**/REALKIND, only: CI
    implicit none
    integer :: k, co
    colmat_not_initialised = .false.
    ! colour matrix

  K1(  1,:) = [  36,  12,  12,   0]
  K1(  2,:) = [  12,  36,   0,  12]
  K1(  3,:) = [  12,   0,  36,  12]
  K1(  4,:) = [   0,  12,  12,  36]
  K1(  5,:) = [   0,   0,   0,   0]
  K1(  6,:) = [   0,   0,   0,   0]
  K1(  7,:) = [   0,   0,   0,   0]
  K1(  8,:) = [   0,   0,   0,   0]
  K1(  9,:) = [   0,   0,   0,   0]
  K1( 10,:) = [   0,   0,   0,   0]
  K1( 11,:) = [   0,   0,   0,   0]
  K1( 12,:) = [   0,   0,   0,   0]
  K1( 13,:) = [   0,   0,   0,   0]
  K1( 14,:) = [   0,   0,   0,   0]
  K1( 15,:) = [   0,   0,   0,   0]
  K1( 16,:) = [   0,   0,   0,   0]
  K1( 17,:) = [   0,   0,   0,   0]
  K1( 18,:) = [   0,   0,   0,   0]
  K1( 19,:) = [   0,   0,   0,   0]
  K1( 20,:) = [   0,   0,   0,   0]
  K1( 21,:) = [   0,   0,   0,   0]
  K1( 22,:) = [   0,   0,   0,   0]
  K1( 23,:) = [   0,   0,   0,   0]
  K1( 24,:) = [   0,   0,   0,   0]
  K1( 25,:) = [   0,   0,   0,   0]
  K1( 26,:) = [   0,   0,   0,   0]
  K1( 27,:) = [   0,   0,   0,   0]
  K1( 28,:) = [   0,   0,   0,   0]
  K1( 29,:) = [   0,   0,   0,   0]
  K1( 30,:) = [   0,   0,   0,   0]
  K1( 31,:) = [   0,   0,   0,   0]
  K1( 32,:) = [   0,   0,   0,   0]
  K1( 33,:) = [   0,   0,   0,   0]
  K1( 34,:) = [   0,   0,   0,   0]
  K1( 35,:) = [   0,   0,   0,   0]
  K1( 36,:) = [   0,   0,   0,   0]
  K1( 37,:) = [   0,   0,   0,   0]
  K1( 38,:) = [   0,   0,   0,   0]
  K1( 39,:) = [   0,   0,   0,   0]
  K1( 40,:) = [   0,   0,   0,   0]
  K1( 41,:) = [   0,   0,   0,   0]
  K1( 42,:) = [   0,   0,   0,   0]
  K1( 43,:) = [   0,   0,   0,   0]
  K1( 44,:) = [   0,   0,   0,   0]
  K1( 45,:) = [   0,   0,   0,   0]
  K1( 46,:) = [   0,   0,   0,   0]
  K1( 47,:) = [   0,   0,   0,   0]
  K1( 48,:) = [   0,   0,   0,   0]
  K1( 49,:) = [   0,   0,   0,   0]
  K1( 50,:) = [   0,   0,   0,   0]
  K1( 51,:) = [   0,   0,   0,   0]
  K1( 52,:) = [   0,   0,   0,   0]
  K1( 53,:) = [   0,   0,   0,   0]
  K1( 54,:) = [   0,   0,   0,   0]
  K1( 55,:) = [   0,   0,   0,   0]
  K1( 56,:) = [   0,   0,   0,   0]
  K1( 57,:) = [   0,   0,   0,   0]
  K1( 58,:) = [   0,   0,   0,   0]
  K1( 59,:) = [   0,   0,   0,   0]
  K1( 60,:) = [   0,   0,   0,   0]
  K1( 61,:) = [  48,  16,  16,   0]
  K1( 62,:) = [  16,  48,   0,  16]
  K1( 63,:) = [  16,   0,  48,  16]
  K1( 64,:) = [   0,  16,  16,  48]
  K1( 65,:) = [   0,   0,   0,   0]
  K1( 66,:) = [   0,   0,   0,   0]
  K1( 67,:) = [   0,   0,   0,   0]
  K1( 68,:) = [   0,   0,   0,   0]
  K1( 69,:) = [   0,   0,   0,   0]
  K1( 70,:) = [   0,   0,   0,   0]
  K1( 71,:) = [   0,   0,   0,   0]
  K1( 72,:) = [   0,   0,   0,   0]
  K1( 73,:) = [   0,   0,   0,   0]
  K1( 74,:) = [   0,   0,   0,   0]
  K1( 75,:) = [   0,   0,   0,   0]
  K1( 76,:) = [   0,   0,   0,   0]
  K1( 77,:) = [   0,   0,   0,   0]
  K1( 78,:) = [   0,   0,   0,   0]
  K1( 79,:) = [   0,   0,   0,   0]
  K1( 80,:) = [   0,   0,   0,   0]
  K1( 81,:) = [   6,   2,   2,   0]
  K1( 82,:) = [   2,   0,  -6, -16]
  K1( 83,:) = [   2,  -6,   0, -16]
  K1( 84,:) = [   0, -16, -16, -48]
  K1( 85,:) = [  48,  16,  16,   0]
  K1( 86,:) = [  16,  48,   0,  16]
  K1( 87,:) = [  16,   0,  48,  16]
  K1( 88,:) = [   0,  16,  16,  48]
  K1( 89,:) = [   0,   0,   0,   0]
  K1( 90,:) = [   0,   0,   0,   0]
  K1( 91,:) = [   0,   0,   0,   0]
  K1( 92,:) = [   0,   0,   0,   0]
  K1( 93,:) = [   0,   0,   0,   0]
  K1( 94,:) = [   0,   0,   0,   0]
  K1( 95,:) = [   0,   0,   0,   0]
  K1( 96,:) = [   0,   0,   0,   0]
  K1( 97,:) = [   0,   0,   0,   0]
  K1( 98,:) = [   0,   0,   0,   0]
  K1( 99,:) = [   0,   0,   0,   0]
  K1(100,:) = [   0,   0,   0,   0]
  K1(101,:) = [   0,   0,   0,   0]
  K1(102,:) = [   0,   0,   0,   0]
  K1(103,:) = [   0,   0,   0,   0]
  K1(104,:) = [   0,   0,   0,   0]
  K1(105,:) = [   0,  16,  -2,   6]
  K1(106,:) = [  16,   0,   6,  -2]
  K1(107,:) = [  -2,   6,   0,  16]
  K1(108,:) = [   6,  -2,  16,   0]
  K1(109,:) = [   0,   2, -16,  -6]
  K1(110,:) = [   2,   6,   0,   2]
  K1(111,:) = [ -16,   0, -48, -16]
  K1(112,:) = [  -6,   2, -16,   0]
  K1(113,:) = [  48,  16,  16,   0]
  K1(114,:) = [  16,  48,   0,  16]
  K1(115,:) = [  16,   0,  48,  16]
  K1(116,:) = [   0,  16,  16,  48]
  K1(117,:) = [   0,   0,   0,   0]
  K1(118,:) = [   0,   0,   0,   0]
  K1(119,:) = [   0,   0,   0,   0]
  K1(120,:) = [   0,   0,   0,   0]
  K1(121,:) = [   0,   0,   0,   0]
  K1(122,:) = [   0,   0,   0,   0]
  K1(123,:) = [   0,   0,   0,   0]
  K1(124,:) = [   0,   0,   0,   0]
  K1(125,:) = [   0,   0,   0,   0]
  K1(126,:) = [   0,   0,   0,   0]
  K1(127,:) = [   0,   0,   0,   0]
  K1(128,:) = [   0,   0,   0,   0]
  K1(129,:) = [   0,   0,   0,   0]
  K1(130,:) = [   0,   0,   0,   0]
  K1(131,:) = [   0,   0,   0,   0]
  K1(132,:) = [   0,   0,   0,   0]
  K1(133,:) = [   0, -16,   2,  -6]
  K1(134,:) = [ -16, -48,   0, -16]
  K1(135,:) = [   2,   0,   6,   2]
  K1(136,:) = [  -6, -16,   2,   0]
  K1(137,:) = [   0,  -2,  16,   6]
  K1(138,:) = [  -2,   0,   6,  16]
  K1(139,:) = [  16,   6,   0,  -2]
  K1(140,:) = [   6,  16,  -2,   0]
  K1(141,:) = [ -48, -16, -16,   0]
  K1(142,:) = [ -16,   0,  -6,   2]
  K1(143,:) = [ -16,  -6,   0,   2]
  K1(144,:) = [   0,   2,   2,   6]
  K1(145,:) = [  48,  16,  16,   0]
  K1(146,:) = [  16,  48,   0,  16]
  K1(147,:) = [  16,   0,  48,  16]
  K1(148,:) = [   0,  16,  16,  48]
  K1(149,:) = [   0,   0,   0,   0]
  K1(150,:) = [   0,   0,   0,   0]
  K1(151,:) = [   0,   0,   0,   0]
  K1(152,:) = [   0,   0,   0,   0]
  K1(153,:) = [   0,   0,   0,   0]
  K1(154,:) = [   0,   0,   0,   0]
  K1(155,:) = [   0,   0,   0,   0]
  K1(156,:) = [   0,   0,   0,   0]
  K1(157,:) = [   0,   0,   0,   0]
  K1(158,:) = [   0,   0,   0,   0]
  K1(159,:) = [   0,   0,   0,   0]
  K1(160,:) = [   0,   0,   0,   0]
  K1(161,:) = [   0,   0,   0,   0]
  K1(162,:) = [   0,   0,   0,   0]
  K1(163,:) = [   0,   0,   0,   0]
  K1(164,:) = [   0,   0,   0,   0]
  K1(165,:) = [ -54, -18, -18,   0]
  K1(166,:) = [ -18,   0,   0,  18]
  K1(167,:) = [ -18,   0, -54, -18]
  K1(168,:) = [   0,  18, -18,   0]
  K1(169,:) = [ -54, -18, -18,   0]
  K1(170,:) = [ -18, -54,   0, -18]
  K1(171,:) = [ -18,   0,   0,  18]
  K1(172,:) = [   0, -18,  18,   0]
  K1(173,:) = [   0, -18,  18,   0]
  K1(174,:) = [ -18, -54,   0, -18]
  K1(175,:) = [  18,   0,   0, -18]
  K1(176,:) = [   0, -18, -18, -54]
  K1(177,:) = [   0,  18, -18,   0]
  K1(178,:) = [  18,   0,   0, -18]
  K1(179,:) = [ -18,   0, -54, -18]
  K1(180,:) = [   0, -18, -18, -54]
  K1(181,:) = [ 108,  36,  36,   0]
  K1(182,:) = [  36, 108,   0,  36]
  K1(183,:) = [  36,   0, 108,  36]
  K1(184,:) = [   0,  36,  36, 108]
  K1(185,:) = [   0,   0,   0,   0]
  K1(186,:) = [   0,   0,   0,   0]
  K1(187,:) = [   0,   0,   0,   0]
  K1(188,:) = [   0,   0,   0,   0]
  K1 = (1._/**/REALKIND / 3) * K1


  end subroutine colourmatrix_init
end module ol_colourmatrix_ppttj_dec_nenmxexmuuxbbxg_1_/**/REALKIND



module ol_forced_parameters_ppttj_dec_nenmxexmuuxbbxg_1_/**/REALKIND
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
  if (ME /= 0) write(*,101) 'ME = 0'
  if (MM /= 0) write(*,101) 'MM = 0'
  if (CKMORDER /= 0) write(*,101) 'CKMORDER = 0'
  if (nc /= 3) write(*,101) 'nc = 3'
  if (nf /= 6) write(*,101) 'nf = 6'
  if (MU /= 0) write(*,101) 'MU = 0'
  if (MD /= 0) write(*,101) 'MD = 0'
  if (MS /= 0) write(*,101) 'MS = 0'
  if (MC /= 0) write(*,101) 'MC = 0'
  if (LeadingColour /= 0) write(*,101) 'LeadingColour = 0'
  if (wMB /= 0) write(*,101) 'wMB = 0'
  if (wMB /= 0) write(*,101) 'wMB = 0'


    checks_not_written = .false.
    end if

    101 format('[OpenLoops] === WARNING ===',/,'[OpenLoops] code was generated with ',A,/,'[OpenLoops] ===============')
  end subroutine check_forced_parameters
end module ol_forced_parameters_ppttj_dec_nenmxexmuuxbbxg_1_/**/REALKIND

module ol_tree_ppttj_dec_nenmxexmuuxbbxg_1_/**/REALKIND
  use KIND_TYPES, only: REALKIND, DREALKIND, intkind1, intkind2
  implicit none
  integer,           save :: factors_status = -1
  complex(REALKIND), save :: f(2)
  complex(REALKIND), save :: den(27)
#ifdef PRECISION_dp
  integer(intkind1), save :: ntry = 1
  integer(intkind2), parameter :: nheltot = 512 ! number of helicity configurations
  integer(intkind2), save :: nhel = 512 ! number of non-vanishing helicity configurations (adapted at runtime)
  integer(intkind2), save :: Hel(512) ! physical helicity states
  complex(DREALKIND) :: M1helarr(4,512) ! cache
#endif

  contains

subroutine factors_init()
  use ol_parameters_decl_/**/REALKIND
  use ol_loop_parameters_decl_/**/REALKIND, only: loop_parameters_status
  implicit none
  factors_status = parameters_status
  ! factors of the diagrams
    f(1) = (CI*eQED**4*gQCD**3)/(4._/**/REALKIND*sw**4)
    f(2) = (eQED**4*gQCD**3)/(sw**4*4._/**/REALKIND)

end subroutine factors_init


subroutine born_denominators_init()
  use ol_parameters_decl_/**/REALKIND ! masses
  use ol_momenta_decl_/**/REALKIND, only: L
  implicit none

  ! propagators

  den(1) = 1 /((L(5,5) - MW2)+L(6,5))
  den(2) = 1 /((L(5,10) - MW2)+L(6,10))
  den(3) = 1 /((L(5,48))+L(6,48))
  den(4) = 1 /((L(5,69) - MT2)+L(6,69))
  den(6) = 1 /((L(5,138) - MT2)+L(6,138))
  den(8) = 1 /((L(5,304))+L(6,304))
  den(13) = 1 /((L(5,325) - MT2)+L(6,325))
  den(17) = 1 /((L(5,394) - MT2)+L(6,394))
  den(20) = 1 /((L(5,272))+L(6,272))
  den(24) = 1 /((L(5,288))+L(6,288))

  ! denominators

  den(5) = den(1)*den(4)
  den(7) = den(2)*den(6)
  den(9) = den(3)*den(8)
  den(10) = den(5)*den(7)
  den(11) = den(9)*den(10)
  den(12) = den(3)*den(7)
  den(14) = den(5)*den(13)
  den(15) = den(12)*den(14)
  den(16) = den(3)*den(5)
  den(18) = den(7)*den(17)
  den(19) = den(16)*den(18)
  den(21) = den(8)*den(20)
  den(22) = den(5)*den(21)
  den(23) = den(7)*den(22)
  den(25) = den(8)*den(24)
  den(26) = den(5)*den(25)
  den(27) = den(7)*den(26)

end subroutine born_denominators_init


! **********************************************************************
#ifdef PRECISION_dp
subroutine amp2(P_scatt, M2, I, MOM, nextcombs, extcombs, M2munu) &
    & bind(c,name="ol_f_amp2_ppttj_dec_nenmxexmuuxbbxg_1")
#else
subroutine amp2(P_scatt, M2, I, MOM, nextcombs, extcombs, M2munu)
  use ol_tree_ppttj_dec_nenmxexmuuxbbxg_1_/**/DREALKIND, only: &
    & ntry, nhel, Hel, M1helarr
#endif
! P_scatt(0:3,Npart) = incoming external momenta
! M2  = helicity-summed squared matrix element for nu_e anti-nu_mu e+ mu- up anti-up bottom anti-bottom glue -> 0
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
  use ol_external_ppttj_dec_nenmxexmuuxbbxg_1, only: &
    & external_perm_ppttj_dec_nenmxexmuuxbbxg_1, &
    & external_perm_inv_ppttj_dec_nenmxexmuuxbbxg_1, &
    & extcomb_perm_ppttj_dec_nenmxexmuuxbbxg_1, &
    & average_factor_ppttj_dec_nenmxexmuuxbbxg_1, &
    & photonid_ppttj_dec_nenmxexmuuxbbxg_1
  use ol_external_ppttj_dec_nenmxexmuuxbbxg_1, only: &
    & H, hel_not_initialised, hel_init, POLSEL
  use ol_colourmatrix_ppttj_dec_nenmxexmuuxbbxg_1_/**/REALKIND, only: &
    & colmat_not_initialised, colourmatrix_init
  use ol_forced_parameters_ppttj_dec_nenmxexmuuxbbxg_1_/**/REALKIND, only: &
    & check_forced_parameters
  use ol_heltables_ppttj_dec_nenmxexmuuxbbxg_1
  use ol_kinematics_/**/REALKIND, only: LC2Std_Rep_cmplx
  use ol_ew_renormalisation_/**/REALKIND, only: photon_factors
  implicit none

  real(DREALKIND), intent(in)  :: P_scatt(0:3,9)
  real(REALKIND),  intent(out) :: M2(0:47-1)
  real(REALKIND),  intent(out) :: M2munu(4,4)
  integer,         intent(in)  :: I
  real(REALKIND),  intent(in)  :: MOM(0:3)
  integer,         intent(in)  :: nextcombs
  integer,         intent(in)  :: extcombs(nextcombs)

  integer           :: ReplacePol, JBmunu, extcombs_permuted(nextcombs), shift, k, r, m, n
  real(REALKIND)    :: P(0:3,9)
  integer           :: extmasses2(9)
  real(REALKIND)    :: M2add(0:47-1)
  complex(REALKIND) :: M2munuadd(2)
  complex(REALKIND) :: MOM_LC(4), M1(4), M1helarray(4,512)
  real(REALKIND)    :: P_scatt_intern(0:3,9)
  complex(REALKIND) :: epLC(1:4), epStd(1:4,2)
  real(REALKIND), save :: scalebackfactor, old_scalefactor = 0, bornphotonfactor
  integer(intkind1) :: nsync

  ! type(wfun) :: ex1(h1), ex2(h2), ... ! external wave functions for h<n> helicities
  type(wfun) :: ex1(2), ex2(2), ex3(2), ex4(2), ex5(2), ex6(2), ex7(2), ex8(2), ex9(2)

  ! type(wfun) :: wf<h>(h,n), ... ! n wave functions with h helicity configurations
  type(wfun) :: wf4(4,9), wf8(8,7), wf16(16,4), wf32(32,2), wf64(64,3), wf512(512,5)

  type(polcont) :: A(512,5)

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

  extmasses2 = [ 0, 0, 0, 0, 0, 0, nMB, nMB, 0 ]
  ! Convert 2 -> n-2 PS-point to n -> 0 (so that P(1) + ... + P(n) = 0) and compute
  ! internal-propagator momenta in light-cone representation
  call init_kinematics(P_scatt, extmasses2, P, &
      &  external_perm_inv_ppttj_dec_nenmxexmuuxbbxg_1, 9,.false.)

  ! denominators
  call born_denominators_init()

  ReplacePol = 0
  JBmunu = 0
  if (I > 0) then
    ReplacePol = external_perm_ppttj_dec_nenmxexmuuxbbxg_1(I)
  else if (I < 0) then
    JBmunu = external_perm_ppttj_dec_nenmxexmuuxbbxg_1(-I)
  end if

  do k = 1, nextcombs
    extcombs_permuted(k) = &
       & extcomb_perm_ppttj_dec_nenmxexmuuxbbxg_1(extcombs(k))
  end do

  if (heltables_not_init) call init_heltables()

  42 continue
  ! external WFs
  call pol_wf_Q(P(:,1), rZERO, H1, ex1, POLSEL(1))
  call pol_wf_A(P(:,2), rZERO, H2, ex2, POLSEL(2))
  call pol_wf_A(P(:,3), rZERO, H3, ex3, POLSEL(3))
  call pol_wf_Q(P(:,4), rZERO, H4, ex4, POLSEL(4))
  call pol_wf_Q(P(:,5), rZERO, H5, ex5, POLSEL(5))
  call pol_wf_A(P(:,6), rZERO, H6, ex6, POLSEL(6))
  call pol_wf_Q(P(:,7), rMB, H7, ex7, POLSEL(7))
  call pol_wf_A(P(:,8), rMB, H8, ex8, POLSEL(8))
  call pol_wf_V(P(:,9), rZERO, H9, ex9, POLSEL(9))


  if (ntry == 1) then
    shift = 1
    ! call helbookkeeping_flip(H1, 1, shift, eflip, exthel, firstpol)
    ! call helbookkeeping_wf(H1, ex1, shift) ...

    if (any(POLSEL /= 0)) then

      call pol_wf_Q(P(:,1), rZERO, H1, ex1, 0)
      call pol_wf_A(P(:,2), rZERO, H2, ex2, 0)
      call pol_wf_A(P(:,3), rZERO, H3, ex3, 0)
      call pol_wf_Q(P(:,4), rZERO, H4, ex4, 0)
      call pol_wf_Q(P(:,5), rZERO, H5, ex5, 0)
      call pol_wf_A(P(:,6), rZERO, H6, ex6, 0)
      call pol_wf_Q(P(:,7), rMB, H7, ex7, 0)
      call pol_wf_A(P(:,8), rMB, H8, ex8, 0)
      call pol_wf_V(P(:,9), rZERO, H9, ex9, 0)

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
    call helbookkeeping_flip(H7, 7, shift, eflip, exthel, firstpol)
    call helbookkeeping_wf(H7, ex7, shift)
    call helbookkeeping_flip(H8, 8, shift, eflip, exthel, firstpol)
    call helbookkeeping_wf(H8, ex8, shift)
    call helbookkeeping_flip(H9, 9, shift, eflip, exthel, firstpol)
    call helbookkeeping_wf(H9, ex9, shift)

  end if

  ! internal WFs
  ! e.g. call vert_VQ_A(ntry, ex3, ex1, wf1, n1, t1) ...
  call vert_QA_W(ntry, ex1, ex3, wf4(:,1), n3(:,1), t3x4(:,:,1))
  call vert_QA_W(ntry, ex4, ex2, wf4(:,2), n3(:,2), t3x4(:,:,2))
  call vert_QA_V(ntry, ex5, ex6, wf4(:,3), n3(:,3), t3x4(:,:,3))
  call prop_W_W(ntry, wf4(:,1), 5, MW, 1_intkind1, wf4(:,4), n2(1))
  call prop_W_W(ntry, wf4(:,2), 10, MW, 1_intkind1, wf4(:,5), n2(2))
  call vert_WQ_A(ntry, wf4(:,4), ex7, wf8(:,1), n3(:,4), t3x8(:,:,1))
  call vert_AW_Q(ntry, ex8, wf4(:,5), wf8(:,2), n3(:,5), t3x8(:,:,2))
  call vert_UV_W(ntry, wf4(:,3), 48, ex9, 256, wf8(:,3), n3(:,6), t3x8(:,:,3))
  call prop_Q_A(ntry, wf8(:,1), 69, MT, 1_intkind1, wf8(:,4), n2(3))
  call prop_A_Q(ntry, wf8(:,2), 138, MT, 1_intkind1, wf8(:,5), n2(4))
  call vert_QA_V(ntry, wf8(:,4), wf8(:,5), wf64(:,1), n3(:,7), t3x64(:,:,1))
  call vert_VQ_A(ntry, ex9, wf8(:,4), wf16(:,1), n3(:,8), t3x16(:,:,1))
  call vert_AV_Q(ntry, wf8(:,5), wf4(:,3), wf32(:,1), n3(:,9), t3x32(:,:,1))
  call prop_Q_A(ntry, wf16(:,1), 325, MT, 1_intkind1, wf16(:,2), n2(5))
  call vert_AV_Q(ntry, wf8(:,5), ex9, wf16(:,3), n3(:,10), t3x16(:,:,2))
  call vert_VQ_A(ntry, wf4(:,3), wf8(:,4), wf32(:,2), n3(:,11), t3x32(:,:,2))
  call prop_A_Q(ntry, wf16(:,3), 394, MT, 1_intkind1, wf16(:,4), n2(6))
  call vert_VQ_A(ntry, ex9, ex5, wf4(:,6), n3(:,12), t3x4(:,:,4))
  call prop_Q_A(ntry, wf4(:,6), 272, ZERO, 0_intkind1, wf4(:,7), n2(7))
  call vert_QA_V(ntry, wf4(:,7), ex6, wf8(:,6), n3(:,13), t3x8(:,:,4))
  call vert_VQ_A(ntry, wf8(:,6), wf8(:,4), wf64(:,2), n3(:,14), t3x64(:,:,2))
  call vert_AV_Q(ntry, ex6, ex9, wf4(:,8), n3(:,15), t3x4(:,:,5))
  call prop_A_Q(ntry, wf4(:,8), 288, ZERO, 0_intkind1, wf4(:,9), n2(8))
  call vert_QA_V(ntry, ex5, wf4(:,9), wf8(:,7), n3(:,16), t3x8(:,:,5))
  call vert_VQ_A(ntry, wf8(:,7), wf8(:,4), wf64(:,3), n3(:,17), t3x64(:,:,3))


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

    M2munu = M2munu / average_factor_ppttj_dec_nenmxexmuuxbbxg_1
  end if

  ! Colour and helicity average and symmetry factor of outgoing particles
  M2add = M2 / average_factor_ppttj_dec_nenmxexmuuxbbxg_1

  do k = 0, 47-1
    M2(k) = M2add(extcomb_perm_ppttj_dec_nenmxexmuuxbbxg_1(k))
  end do

  ! photon-factors
  call photon_factors(photonid_ppttj_dec_nenmxexmuuxbbxg_1, 0, bornphotonfactor)
  M2 = bornphotonfactor * M2
  M2munu = bornphotonfactor * M2munu

  if (ntry == 1) ntry = 2

  if (scalefactor /= old_scalefactor) then
    scalebackfactor = scalefactor**(2*9-8)
    old_scalefactor = scalefactor
  end if
  M2 = scalebackfactor * M2
  M2munu = scalebackfactor * M2munu

  contains

subroutine diagrams()
  implicit none
  ! e.g. call cont_VV(nsync, wf3, wf6, A(:,1), n64, t64, nhel, den(5)) ...

    call cont_VV(nsync, wf8(:,3), wf64(:,1), A(:,1), n3(:,18), t3x512(:,:,1), nhel, den(11))
    call cont_QA(nsync, wf32(:,1), wf16(:,2), A(:,2), n3(:,19), t3x512(:,:,2), nhel, den(15))
    call cont_QA(nsync, wf32(:,2), wf16(:,4), A(:,3), n3(:,20), t3x512(:,:,3), nhel, den(19))
    call cont_QA(nsync, wf8(:,5), wf64(:,2), A(:,4), n3(:,21), t3x512(:,:,4), nhel, den(23))
    call cont_QA(nsync, wf8(:,5), wf64(:,3), A(:,5), n3(:,22), t3x512(:,:,5), nhel, den(27))

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
  complex(REALKIND), intent(out) :: M1(4) ! M1helarray(4,512)
  integer :: empty(0)

  M1(1) = ((-A(j,4)%j-A(j,5)%j)*f(1))/6._/**/REALKIND
  M1(2) = ((A(j,2)%j+A(j,5)%j)*f(1))/2._/**/REALKIND+(CI*A(j,1)%j*f(2))/2._/**/REALKIND
  M1(3) = ((A(j,3)%j+A(j,4)%j)*f(1))/2._/**/REALKIND-(CI*A(j,1)%j*f(2))/2._/**/REALKIND
  M1(4) = ((-A(j,2)%j-A(j,3)%j)*f(1))/6._/**/REALKIND

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
  use ol_colourmatrix_ppttj_dec_nenmxexmuuxbbxg_1_/**/REALKIND, only: K1
  implicit none

  complex(REALKIND), intent(in)  :: M(4)
  real(REALKIND),    intent(out) :: M2colint(0:47-1)
  integer,           intent(in)  :: extcombs(:)
  integer :: extcomb, colmatpos, i, j, eco

  M2colint = 0

  do eco = 1, size(extcombs)
    extcomb = extcombs(eco)
    colmatpos = 4*extcomb
    do i = 1, 4
      do j = 1, 4
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
  use ol_colourmatrix_ppttj_dec_nenmxexmuuxbbxg_1_/**/REALKIND, only: K1
  implicit none

  complex(REALKIND), intent(in)  :: M1(4), M2(4)
  real(REALKIND),    intent(out) :: M2colint(0:47-1)
  integer,           intent(in)  :: extcombs(:)
  integer :: extcomb, colmatpos, i, j, eco

  M2colint = 0

  do eco = 1, size(extcombs)
    extcomb = extcombs(eco)
    colmatpos = 4*extcomb
    do i = 1, 4
      do j = 1, 4
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
  use ol_colourmatrix_ppttj_dec_nenmxexmuuxbbxg_1_/**/REALKIND, only: K1
  implicit none

  complex(REALKIND), intent(in)  :: M1(4)
  complex(REALKIND), intent(in)  :: M2(4)
  complex(REALKIND),    intent(out) :: M2colint
  integer :: i, j

  M2colint = 0

  do i = 1, 4
    do j = 1, 4
      M2colint = M2colint + M1(i)*K1(i,j)*conjg(M2(j))
    end do
  end do

end subroutine colintmunu

end subroutine amp2


#ifdef PRECISION_dp
subroutine colourvector(M1out, nhelout) &
  & bind(c,name="ol_tree_colvect_ppttj_dec_nenmxexmuuxbbxg_1")
  ! Retrieve M1helarr from cache. Cache must have been filled before by calling amp2().
  ! [out] M1out(:,h): colour vector for each helicity configuration h
  ! [out] nhelout: number of non-vanishing helicity configurations
  implicit none
  complex(DREALKIND) :: M1out(4,512)
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
    & bind(c,name="ol_f_amp2tree_ppttj_dec_nenmxexmuuxbbxg_1")
#else
subroutine amp2tree(P, M2)
#endif
  ! This is an interface for AMP2.
  ! Calculates the squared matrix element without fuss.
  implicit none
  real(DREALKIND), intent(in)  :: P(0:3,9)
  real(REALKIND),  intent(out) :: M2
  real(REALKIND) :: M2tmp(0:47-1)
  real(REALKIND) :: M2munu(4,4)
  call amp2(P, M2tmp, 0, [ 0._/**/REALKIND, 0._/**/REALKIND, 0._/**/REALKIND, 0._/**/REALKIND ], 1, [ 0 ], M2munu)
  M2 = M2tmp(0)
end subroutine amp2tree


#ifdef PRECISION_dp
subroutine amp2ccone(P, M2, I, J) &
    & bind(c,name="ol_f_amp2ccone_ppttj_dec_nenmxexmuuxbbxg_1")
#else
subroutine amp2ccone(P, M2, I, J)
#endif
  ! This is an interface for AMP2.
  ! Calculates the squared matrix for the colour correlation matrix for particles I and J.
  implicit none
  real(DREALKIND), intent(in)  :: P(0:3,9)
  real(REALKIND),  intent(out) :: M2
  integer,         intent(in)  :: I, J
  integer        :: extcomb
  real(REALKIND) :: M2tmp(0:47-1)
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
    & bind(c,name="ol_f_amp2ccall_ppttj_dec_nenmxexmuuxbbxg_1")
#else
subroutine amp2ccall(P, M2)
#endif
  ! This is an interface for AMP2.
  ! Calculates the squared matrix for all colour correlation matrices.
  ! The correlation between particles i and j is at position i*(i-1)/2+j of the array M2.
  ! M2(0) is AMP2tree
  implicit none
  real(DREALKIND), intent(in)  :: P(0:3,9)
  real(REALKIND),  intent(out) :: M2(0:47-1)
  real(REALKIND) :: M2munu(4,4)
  integer :: k
  call amp2(P, M2, 0, [ 0._/**/REALKIND, 0._/**/REALKIND, 0._/**/REALKIND, 0._/**/REALKIND ], &
    47, [ (k, k = 0, 47-1) ], M2munu)
end subroutine amp2ccall


#ifdef PRECISION_dp
subroutine amp2hcone(P, M2, I, J, MOM) &
    & bind(c,name="ol_f_amp2hcone_ppttj_dec_nenmxexmuuxbbxg_1")
#else
subroutine amp2hcone(P, M2, I, J, MOM)
#endif
  ! This is an interface for AMP2.
  ! Calculates the helicity correlation for emitter I with momentum MOM and spectator J
  implicit none
  real(DREALKIND), intent(in)  :: P(0:3,9)
  real(REALKIND),  intent(out) :: M2
  integer,         intent(in)  :: I, J
  real(REALKIND),  intent(in)  :: MOM(0:3)
  integer        :: extcomb
  real(REALKIND) :: M2tmp(0:47-1)
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
    & bind(c,name="ol_f_amp2hcall_ppttj_dec_nenmxexmuuxbbxg_1")
#else
subroutine amp2hcall(P, M2, I, MOM)
#endif
  ! This is an interface for AMP2.
  ! Calculates all helicity correlations for emitter I with momentum MOM.
  ! The correlator for spectator j is at position j of the array M2.
  implicit none
  real(DREALKIND), intent(in)  :: P(0:3,9)
  real(REALKIND),  intent(out) :: M2(9)
  integer,         intent(in)  :: I
  real(REALKIND),  intent(in)  :: MOM(0:3)
  real(REALKIND) :: M2tmp(0:47-1)
  real(REALKIND) :: M2munu(4,4)
  integer        :: J, extcombs(9)
  do J = 1, 9
    if (J <= I) then
      extcombs(J) = I*(I-1)/2 + J
    else
      extcombs(J) = J*(J-1)/2 + I
    end if
  end do
  call amp2(P, M2tmp, I, MOM, 9,extcombs, M2munu)
  do J = 1, 9
    M2(J) = M2tmp(extcombs(J))
  end do
end subroutine amp2hcall


#ifdef PRECISION_dp

subroutine amp2tree_c(p, m2) &
    & bind(c,name="ol_amp2tree_ppttj_dec_nenmxexmuuxbbxg_1")
  use, intrinsic :: iso_c_binding, only: c_double
  implicit none
  real(c_double), intent(in)  :: p(0:3,9)
  real(c_double), intent(out) :: m2
  real(DREALKIND) :: f_p(0:3,9)
  real(DREALKIND) :: f_m2
  f_p = p
  call amp2tree(f_p, f_m2)
  m2 = f_m2
end subroutine amp2tree_c

subroutine amp2ccone_c(p, m2, i, j) &
    & bind(c,name="ol_amp2ccone_ppttj_dec_nenmxexmuuxbbxg_1")
  use, intrinsic :: iso_c_binding, only: c_double, c_int
  implicit none
  real(c_double), intent(in)  :: p(0:3,9)
  real(c_double), intent(out) :: m2
  integer(c_int), intent(in) :: i, j
  real(DREALKIND) :: f_p(0:3,9)
  real(DREALKIND) :: f_m2
  integer :: f_i, f_j
  f_p = p
  f_i = i
  f_j = j
  call amp2ccone(f_p, f_m2, f_i, f_j)
  m2 = f_m2
end subroutine amp2ccone_c

subroutine amp2ccall_c(p, m2) &
    & bind(c,name="ol_amp2ccall_ppttj_dec_nenmxexmuuxbbxg_1")
  use, intrinsic :: iso_c_binding, only: c_double
  implicit none
  real(c_double), intent(in)  :: p(0:3,9)
  real(c_double), intent(out) :: m2(0:47-1)
  real(DREALKIND) :: f_p(0:3,9)
  real(DREALKIND) :: f_m2(0:47-1)
  f_p = p
  call amp2ccall(f_p, f_m2)
  m2 = f_m2
end subroutine amp2ccall_c

subroutine amp2hcone_c(p, m2, i, j, mom) &
    & bind(c,name="ol_amp2hcone_ppttj_dec_nenmxexmuuxbbxg_1")
  use, intrinsic :: iso_c_binding, only: c_double, c_int
  implicit none
  real(c_double), intent(in)  :: p(0:3,9)
  real(c_double), intent(out) :: m2
  integer(c_int), intent(in) :: i, j
  real(c_double), intent(in) :: mom(0:3)
  real(DREALKIND) :: f_p(0:3,9)
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
    & bind(c,name="ol_amp2hcall_ppttj_dec_nenmxexmuuxbbxg_1")
  use, intrinsic :: iso_c_binding, only: c_double, c_int
  implicit none
  real(c_double), intent(in)  :: p(0:3,9)
  real(c_double), intent(out) :: m2(9)
  integer(c_int), intent(in) :: i
  real(c_double), intent(in) :: mom(0:3)
  real(DREALKIND) :: f_p(0:3,9)
  real(DREALKIND) :: f_m2(9)
  integer :: f_i
  real(DREALKIND) :: f_mom(0:3)
  f_p = p
  f_i = i
  f_mom = mom
  call amp2hcall(f_p, f_m2, f_i, f_mom)
  m2 = f_m2
end subroutine amp2hcall_c

#endif

end module ol_tree_ppttj_dec_nenmxexmuuxbbxg_1_/**/REALKIND
