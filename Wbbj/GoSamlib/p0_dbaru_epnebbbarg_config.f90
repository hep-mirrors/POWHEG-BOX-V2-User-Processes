module     p0_dbaru_epnebbbarg_config
   implicit none

   integer, parameter :: dbl = kind(1.0d0)
   ! QUADRUPLE PRECISION (ki=16):
   ! integer, parameter :: ki = selected_real_kind(33, 4931)
   ! INTERMEDIATE PRECISION (ki=10):
   ! integer, parameter :: ki = selected_real_kind(18, 4931)
   ! DOUBLE PRECISION (ki=8):
   integer, parameter :: ki = kind(1.0d0)

   ! Options to control the interoperation between different
   ! Reduction libraries:
   integer, parameter :: SAMURAI = 0
   integer, parameter :: GOLEM95 = 1
   integer, parameter :: NINJA   = 2
   integer, parameter :: PJFRY   = 3 ! experimental
   ! Reduction methods
   integer :: reduction_interoperation = NINJA
   ! Rescue reduction method. The rescue system is disabled
   ! if it is equal to reduction_interoperation
   integer :: reduction_interoperation_rescue = GOLEM95

   ! Debugging settings
   logical :: debug_lo_diagrams  = .false.
   logical :: debug_nlo_diagrams = .false.

   ! If true, the calculation includes terms proportional to eps^2
   ! multiplying double poles.
   ! These terms are supposed to cancel in QCD.
   logical :: include_eps2_terms = .false.

   ! If true, the calculation includes terms proportional to eps
   ! multiplying double and single poles.
   ! These terms are necessary in 't Hooft-Veltman scheme
   logical :: include_eps_terms = .false.

   logical :: include_color_avg_factor = .True.
   logical :: include_helicity_avg_factor = .True.
   logical :: include_symmetry_factor = .True.

   

   
   integer :: ninja_test = 0
   integer :: ninja_istop = 0

   ! Parameter: Use stable accumulation of diagrams or builtin sum
   !            Stable accumulation is implemented in accu.f90
   logical :: use_sorted_sum = .false.

   ! Flag to decide if results should be converted to CDR
   ! if they are not already in that scheme
   logical :: convert_to_cdr = .true.

   integer :: logfile = 19

   !---#[ Renormalisation:
   ! Parameter to switch UV-Counterterms on or off
   integer :: renormalisation = 1

   ! if renormalisation.eq.1, include alpha_s renormalisation:
   logical :: renorm_beta = .true.
   ! if renormalisation.eq.1, include massive quark wave function renorm.:
   logical :: renorm_mqwf = .true.
   ! include massive quark contribution for wave function renormalisation
   ! of the gluon
   logical :: renorm_decoupling = .true.

   ! include mass counter terms for internal quark lines
   logical :: renorm_mqse = .true.

   ! include finite terms proportional to logs
   logical :: renorm_logs = .true.

   ! include finite renormalisation of gamma_5
   logical :: renorm_gamma5 = .true.

   ! Switch mass counter terms for massive quarks on or off
   ! deltaOS = 1.0_ki --> on
   ! deltaOS = 0.0_ki --> off
   ! Do not modify directly, use renormalisation=0,1,2 instead.
   real(ki) :: deltaOS = 1.0_ki
   !---#] Renormalisation:

   ! This generated code provides the derivatives of the numerator.
   ! Therefore we have the choice between using Golem95's tens_rec
   ! modules for determining the tensor coefficients from N(q) and
   ! using the derivatives to directly accessing the terms of the
   ! Taylor series.
   !
   ! This option affects the calculation only if reduction_interoperation
   ! is chosen such that the tensorial reconstruction method is used.
   logical :: tens_rec_by_derivatives = .true.

   ! Determines the way GoSam treats the overall factor of alpha_(s)/2/pi
   ! in the result of an NLO amplitude.
   !
   ! 0: A factor of alpha_(s)/2/pi is not included in the NLO result
   ! 1: A factor of 1/8/pi^2 is not included in the NLO result
   ! 2: The NLO includes all prefactors
   !
   ! Note, however, that the factor of 1/Gamma(1-eps) is not included
   ! in any of the cases.
   integer :: nlo_prefactors = 2

   ! Determines the maximum allowed difference among the abs of the
   ! single pole evaluations obtained with the amplitude vs the one
   ! obtained through the IR subroutine relative to the leading order.
   !
   ! Note: at the moment it only works for virtual corrections
   ! to Tree level processes.
   logical :: PSP_check = .true.
   logical :: PSP_verbosity = .true.
   logical :: PSP_rescue = .true.
   integer :: PSP_chk_th1 = 4
   integer :: PSP_chk_th2 = 4
   integer :: PSP_chk_th3 = 4
   real(ki) :: PSP_chk_kfactor = -1.0_ki
   !
   ! The integer ewchoice allows the user to change the
   ! ew parameter input scheme at runtime (between 1 and 8)
   ! The choices are as follows:
   !  ewchoice :   Input            :  Output
   !  #---------------------------------------#
   !  1        :   GF,mW,mZ         : e,sw
   !  2        :   alpha, mW, mZ    : e,sw
   !  3        :   alpha, sw, mZ    : e, mW
   !  4        :   alpha, sw, GF    : e, mW
   !  5        :   alpha, GF, mZ    : e, mW, sw
   !
   !  WARNING:
   !  Since 'e' was set to ONE algebraically, it cannot
   !  be used as an input parameter, and will also not
   !  be computed from the other parameters.
   !
   !  If one is using the ewchoice, the user should provide the
   !  correct input parameters, otherwise default values are used.
   !
   integer :: ewchoice = 2
end module p0_dbaru_epnebbbarg_config

