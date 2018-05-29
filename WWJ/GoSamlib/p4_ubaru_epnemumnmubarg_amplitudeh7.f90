module    p4_ubaru_epnemumnmubarg_amplitudeh7
   use p4_ubaru_epnemumnmubarg_config, only: ki, &
       & reduction_interoperation
   use p4_ubaru_epnemumnmubarg_color, only: numcs
   use p4_ubaru_epnemumnmubarg_groups
   use precision_golem, only: ki_gol => ki
   use p4_ubaru_epnemumnmubarg_golem95h7
   use ninjago_module, only: ki_nin
   use p4_ubaru_epnemumnmubarg_ninjah7
   
   implicit none
   private

   public :: finite_renormalisation, samplitude
contains
!---#[ function finite_renormalisation:
   function     finite_renormalisation(scale2) result(amp)
      use p4_ubaru_epnemumnmubarg_util, only: square
      use p4_ubaru_epnemumnmubarg_color, only: CF, CA
      use p4_ubaru_epnemumnmubarg_kinematics, only: &
      & num_light_quarks, num_gluons
      use p4_ubaru_epnemumnmubarg_diagramsh7l0, only: amplitudel0 => amplitude
      implicit none
      real(ki), intent(in) :: scale2
      real(ki) :: amp
      amp = 0.0_ki
   end function finite_renormalisation
   !---#] function finite_renormalisation:

   !---#[ function samplitude:
   function     samplitude(scale2,ok,rational2,opt_amp0,opt_perm)
      use p4_ubaru_epnemumnmubarg_config, only: include_eps_terms, include_eps2_terms, &
      & logfile, debug_nlo_diagrams
      use p4_ubaru_epnemumnmubarg_globalsl1, only: amp0,perm, use_perm, epspow
      use p4_ubaru_epnemumnmubarg_globalsh7, &
     & only: init_lo, rat2
      use p4_ubaru_epnemumnmubarg_abbrevd33h7, only: init_abbrevd33 => init_abbrev
      use p4_ubaru_epnemumnmubarg_abbrevd57h7, only: init_abbrevd57 => init_abbrev
      use p4_ubaru_epnemumnmubarg_abbrevd177h7, only: init_abbrevd177 => init_abbrev
      use p4_ubaru_epnemumnmubarg_abbrevd205h7, only: init_abbrevd205 => init_abbrev
      use p4_ubaru_epnemumnmubarg_abbrevd281h7, only: init_abbrevd281 => init_abbrev
      use p4_ubaru_epnemumnmubarg_abbrevd465h7, only: init_abbrevd465 => init_abbrev
      use p4_ubaru_epnemumnmubarg_abbrevd485h7, only: init_abbrevd485 => init_abbrev
      use p4_ubaru_epnemumnmubarg_abbrevd489h7, only: init_abbrevd489 => init_abbrev
      use p4_ubaru_epnemumnmubarg_abbrevd573h7, only: init_abbrevd573 => init_abbrev
      use p4_ubaru_epnemumnmubarg_abbrevd595h7, only: init_abbrevd595 => init_abbrev
      use p4_ubaru_epnemumnmubarg_abbrevd603h7, only: init_abbrevd603 => init_abbrev
      use p4_ubaru_epnemumnmubarg_abbrevd971h7, only: init_abbrevd971 => init_abbrev
      use p4_ubaru_epnemumnmubarg_abbrevd1h7, only: init_abbrevd1 => init_abbrev
      use p4_ubaru_epnemumnmubarg_abbrevd37h7, only: init_abbrevd37 => init_abbrev
      use p4_ubaru_epnemumnmubarg_abbrevd61h7, only: init_abbrevd61 => init_abbrev
      use p4_ubaru_epnemumnmubarg_abbrevd65h7, only: init_abbrevd65 => init_abbrev
      use p4_ubaru_epnemumnmubarg_abbrevd191h7, only: init_abbrevd191 => init_abbrev
      use p4_ubaru_epnemumnmubarg_abbrevd219h7, only: init_abbrevd219 => init_abbrev
      use p4_ubaru_epnemumnmubarg_abbrevd285h7, only: init_abbrevd285 => init_abbrev
      use p4_ubaru_epnemumnmubarg_abbrevd469h7, only: init_abbrevd469 => init_abbrev
      use p4_ubaru_epnemumnmubarg_abbrevd481h7, only: init_abbrevd481 => init_abbrev
      use p4_ubaru_epnemumnmubarg_abbrevd517h7, only: init_abbrevd517 => init_abbrev
      use p4_ubaru_epnemumnmubarg_abbrevd559h7, only: init_abbrevd559 => init_abbrev
      use p4_ubaru_epnemumnmubarg_abbrevd607h7, only: init_abbrevd607 => init_abbrev
      use p4_ubaru_epnemumnmubarg_abbrevd41h7, only: init_abbrevd41 => init_abbrev
      use p4_ubaru_epnemumnmubarg_abbrevd473h7, only: init_abbrevd473 => init_abbrev
      use p4_ubaru_epnemumnmubarg_abbrevd587h7, only: init_abbrevd587 => init_abbrev
      use p4_ubaru_epnemumnmubarg_abbrevd591h7, only: init_abbrevd591 => init_abbrev
      use p4_ubaru_epnemumnmubarg_abbrevd17h7, only: init_abbrevd17 => init_abbrev
      use p4_ubaru_epnemumnmubarg_abbrevd477h7, only: init_abbrevd477 => init_abbrev
      use p4_ubaru_epnemumnmubarg_abbrevd545h7, only: init_abbrevd545 => init_abbrev
      use p4_ubaru_epnemumnmubarg_abbrevd599h7, only: init_abbrevd599 => init_abbrev
      use p4_ubaru_epnemumnmubarg_diagramsh7l0, only: amplitudel0 => amplitude
      use p4_ubaru_epnemumnmubarg_groups
      implicit none
      real(ki), intent(in) :: scale2
      logical, intent(out) :: ok
      real(ki), intent(out) :: rational2
      complex(ki), dimension(numcs), intent(in), optional :: opt_amp0
      integer, dimension(numcs), intent(in), optional :: opt_perm
      real(ki), dimension(-2:0) :: samplitude

      real(ki), dimension(-2:0) :: acc
      real(ki), dimension(0:2,-2:0) :: samp_part

      logical :: acc_ok

      ok = .true.
      rational2 = 0.0_ki

      samplitude(:) = 0.0_ki
      if (present(opt_amp0)) then
         amp0 = opt_amp0
      else
         amp0 = amplitudel0()
      end if
      if (present(opt_perm)) then
         use_perm = .true.
         perm = opt_perm
      else
         use_perm = .false.
      end if

      rat2 = (0.0_ki, 0.0_ki)
      call init_lo()
        call init_abbrevd33()
        call init_abbrevd57()
        call init_abbrevd177()
        call init_abbrevd205()
        call init_abbrevd281()
        call init_abbrevd465()
        call init_abbrevd485()
        call init_abbrevd489()
        call init_abbrevd573()
        call init_abbrevd595()
        call init_abbrevd603()
        call init_abbrevd971()
        call init_abbrevd1()
        call init_abbrevd37()
        call init_abbrevd61()
        call init_abbrevd65()
        call init_abbrevd191()
        call init_abbrevd219()
        call init_abbrevd285()
        call init_abbrevd469()
        call init_abbrevd481()
        call init_abbrevd517()
        call init_abbrevd559()
        call init_abbrevd607()
        call init_abbrevd41()
        call init_abbrevd473()
        call init_abbrevd587()
        call init_abbrevd591()
        call init_abbrevd17()
        call init_abbrevd477()
        call init_abbrevd545()
        call init_abbrevd599()
      epspow=0
      samplitude(-2) = 0.0_ki
      samplitude(-1) = 0.0_ki
      if(debug_nlo_diagrams) then
         write(logfile,'(A22,G24.16,A6,G24.16,A4)') &
         & "<result name='r2' re='", real(rat2, ki), &
         &                 "' im='", aimag(rat2), "' />"
      end if
      rational2 = 2.0_ki * real(rat2, ki)
      samplitude(0) = 2.0_ki * real(rat2, ki)
         call evaluate_group0(scale2, acc, acc_ok)
         ok = ok .and. acc_ok
         samplitude(:) = samplitude(:) + acc
         call evaluate_group1(scale2, acc, acc_ok)
         ok = ok .and. acc_ok
         samplitude(:) = samplitude(:) + acc
         call evaluate_group2(scale2, acc, acc_ok)
         ok = ok .and. acc_ok
         samplitude(:) = samplitude(:) + acc
         call evaluate_group3(scale2, acc, acc_ok)
         ok = ok .and. acc_ok
         samplitude(:) = samplitude(:) + acc
   end function samplitude
   !---#] function samplitude:
!---#[ subroutine evaluate_group0:
subroutine     evaluate_group0(scale2,samplitude,ok)
   use p4_ubaru_epnemumnmubarg_config, only: &
      & logfile, debug_nlo_diagrams
   use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p4_ubaru_epnemumnmubarg_golem95h7, only: reconstruct_golem95 => reconstruct_group
   use p4_ubaru_epnemumnmubarg_groups, only: contract_golem95
   use p4_ubaru_epnemumnmubarg_ninjah7, only: ninja_reduce => ninja_reduce_group0
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   real(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group0), target :: coeffs
   type(form_factor) :: gres
   complex(ki_nin), dimension(-2:0) :: tot
   complex(ki_nin) :: totr

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='0'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = 2.0_ki * real(gres%A, ki)
      samplitude(-1) = 2.0_ki * real(gres%B, ki)
      samplitude( 0) = 2.0_ki * real(gres%C, ki)
      ok = .true.
   case(2) ! use Ninja only
      call ninja_reduce(real(scale2, ki_nin), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated without support for Samurai."
      print*, "* This code was generated with support for Ninja."
      print*, "* This code was generated with support for Golem95."
      print*, "* This code was generated without support for PJFry."
   end select

   if(debug_nlo_diagrams) then
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-finite' value='", samplitude(0), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-single' value='", samplitude(-1), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-double' value='", samplitude(-2), "'/>"
      if(ok) then
         write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
      else
         write(logfile,'(A29)') "<flag name='ok' status='no'/>"
      end if
      write(logfile,*) "</diagram-group>"
   end if
end subroutine evaluate_group0
!---#] subroutine evaluate_group0:
!---#[ subroutine evaluate_group1:
subroutine     evaluate_group1(scale2,samplitude,ok)
   use p4_ubaru_epnemumnmubarg_config, only: &
      & logfile, debug_nlo_diagrams
   use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p4_ubaru_epnemumnmubarg_golem95h7, only: reconstruct_golem95 => reconstruct_group
   use p4_ubaru_epnemumnmubarg_groups, only: contract_golem95
   use p4_ubaru_epnemumnmubarg_ninjah7, only: ninja_reduce => ninja_reduce_group1
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   real(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group1), target :: coeffs
   type(form_factor) :: gres
   complex(ki_nin), dimension(-2:0) :: tot
   complex(ki_nin) :: totr

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='1'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = 2.0_ki * real(gres%A, ki)
      samplitude(-1) = 2.0_ki * real(gres%B, ki)
      samplitude( 0) = 2.0_ki * real(gres%C, ki)
      ok = .true.
   case(2) ! use Ninja only
      call ninja_reduce(real(scale2, ki_nin), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated without support for Samurai."
      print*, "* This code was generated with support for Ninja."
      print*, "* This code was generated with support for Golem95."
      print*, "* This code was generated without support for PJFry."
   end select

   if(debug_nlo_diagrams) then
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-finite' value='", samplitude(0), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-single' value='", samplitude(-1), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-double' value='", samplitude(-2), "'/>"
      if(ok) then
         write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
      else
         write(logfile,'(A29)') "<flag name='ok' status='no'/>"
      end if
      write(logfile,*) "</diagram-group>"
   end if
end subroutine evaluate_group1
!---#] subroutine evaluate_group1:
!---#[ subroutine evaluate_group2:
subroutine     evaluate_group2(scale2,samplitude,ok)
   use p4_ubaru_epnemumnmubarg_config, only: &
      & logfile, debug_nlo_diagrams
   use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p4_ubaru_epnemumnmubarg_golem95h7, only: reconstruct_golem95 => reconstruct_group
   use p4_ubaru_epnemumnmubarg_groups, only: contract_golem95
   use p4_ubaru_epnemumnmubarg_ninjah7, only: ninja_reduce => ninja_reduce_group2
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   real(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group2), target :: coeffs
   type(form_factor) :: gres
   complex(ki_nin), dimension(-2:0) :: tot
   complex(ki_nin) :: totr

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='2'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = 2.0_ki * real(gres%A, ki)
      samplitude(-1) = 2.0_ki * real(gres%B, ki)
      samplitude( 0) = 2.0_ki * real(gres%C, ki)
      ok = .true.
   case(2) ! use Ninja only
      call ninja_reduce(real(scale2, ki_nin), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated without support for Samurai."
      print*, "* This code was generated with support for Ninja."
      print*, "* This code was generated with support for Golem95."
      print*, "* This code was generated without support for PJFry."
   end select

   if(debug_nlo_diagrams) then
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-finite' value='", samplitude(0), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-single' value='", samplitude(-1), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-double' value='", samplitude(-2), "'/>"
      if(ok) then
         write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
      else
         write(logfile,'(A29)') "<flag name='ok' status='no'/>"
      end if
      write(logfile,*) "</diagram-group>"
   end if
end subroutine evaluate_group2
!---#] subroutine evaluate_group2:
!---#[ subroutine evaluate_group3:
subroutine     evaluate_group3(scale2,samplitude,ok)
   use p4_ubaru_epnemumnmubarg_config, only: &
      & logfile, debug_nlo_diagrams
   use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p4_ubaru_epnemumnmubarg_golem95h7, only: reconstruct_golem95 => reconstruct_group
   use p4_ubaru_epnemumnmubarg_groups, only: contract_golem95
   use p4_ubaru_epnemumnmubarg_ninjah7, only: ninja_reduce => ninja_reduce_group3
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   real(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group3), target :: coeffs
   type(form_factor) :: gres
   complex(ki_nin), dimension(-2:0) :: tot
   complex(ki_nin) :: totr

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='3'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = 2.0_ki * real(gres%A, ki)
      samplitude(-1) = 2.0_ki * real(gres%B, ki)
      samplitude( 0) = 2.0_ki * real(gres%C, ki)
      ok = .true.
   case(2) ! use Ninja only
      call ninja_reduce(real(scale2, ki_nin), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated without support for Samurai."
      print*, "* This code was generated with support for Ninja."
      print*, "* This code was generated with support for Golem95."
      print*, "* This code was generated without support for PJFry."
   end select

   if(debug_nlo_diagrams) then
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-finite' value='", samplitude(0), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-single' value='", samplitude(-1), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-double' value='", samplitude(-2), "'/>"
      if(ok) then
         write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
      else
         write(logfile,'(A29)') "<flag name='ok' status='no'/>"
      end if
      write(logfile,*) "</diagram-group>"
   end if
end subroutine evaluate_group3
!---#] subroutine evaluate_group3:
end module p4_ubaru_epnemumnmubarg_amplitudeh7
