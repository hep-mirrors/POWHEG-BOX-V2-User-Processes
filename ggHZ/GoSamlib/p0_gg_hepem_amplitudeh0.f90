module    p0_gg_hepem_amplitudeh0
   use p0_gg_hepem_config, only: ki, &
       & reduction_interoperation
   use p0_gg_hepem_color, only: numcs
   use p0_gg_hepem_groups
   use precision, only: ki_sam => ki
   use p0_gg_hepem_samuraih0
   use precision_golem, only: ki_gol => ki
   use p0_gg_hepem_golem95h0
   
   implicit none
   private

   public :: finite_renormalisation, samplitude
contains
!---#[ function finite_renormalisation:
   function     finite_renormalisation(scale2) result(amp)
      use p0_gg_hepem_util, only: square
      use p0_gg_hepem_color, only: CF, CA
      use p0_gg_hepem_kinematics, only: &
      & num_light_quarks, num_gluons
      implicit none
      real(ki), intent(in) :: scale2
      real(ki) :: amp
      amp = 0.0_ki
   end function finite_renormalisation
   !---#] function finite_renormalisation:

   !---#[ function samplitude:
   function     samplitude(scale2,ok,rational2,the_col0,opt_perm)
      use p0_gg_hepem_config, only: include_eps_terms, include_eps2_terms, &
      & logfile, debug_nlo_diagrams
      use p0_gg_hepem_globalsl1, only: col0,perm, use_perm, epspow
      use p0_gg_hepem_globalsh0, &
     & only: init_lo, rat2
      use p0_gg_hepem_abbrevd49h0, only: init_abbrevd49 => init_abbrev
      use p0_gg_hepem_abbrevd37h0, only: init_abbrevd37 => init_abbrev
      use p0_gg_hepem_abbrevd61h0, only: init_abbrevd61 => init_abbrev
      use p0_gg_hepem_abbrevd25h0, only: init_abbrevd25 => init_abbrev
      use p0_gg_hepem_abbrevd47h0, only: init_abbrevd47 => init_abbrev
      use p0_gg_hepem_abbrevd35h0, only: init_abbrevd35 => init_abbrev
      use p0_gg_hepem_abbrevd23h0, only: init_abbrevd23 => init_abbrev
      use p0_gg_hepem_abbrevd59h0, only: init_abbrevd59 => init_abbrev
      use p0_gg_hepem_groups
      implicit none
      real(ki), intent(in) :: scale2
      logical, intent(out) :: ok
      real(ki), intent(out) :: rational2
      integer, intent(in) :: the_col0
      integer, dimension(numcs), intent(in), optional :: opt_perm
      complex(ki), dimension(-2:0) :: samplitude

      complex(ki), dimension(-2:0) :: acc
      complex(ki), dimension(0:2,-2:0) :: samp_part

      logical :: acc_ok

      ok = .true.
      rational2 = 0.0_ki

      samplitude(:) = 0.0_ki
      col0 = the_col0
      if (present(opt_perm)) then
         use_perm = .true.
         perm = opt_perm
      else
         use_perm = .false.
      end if

      rat2 = (0.0_ki, 0.0_ki)
      call init_lo()
      call init_abbrevd49()
      call init_abbrevd37()
      call init_abbrevd61()
      call init_abbrevd25()
      call init_abbrevd47()
      call init_abbrevd35()
      call init_abbrevd23()
      call init_abbrevd59()
      epspow=0
      samplitude(-2) = 0.0_ki
      samplitude(-1) = 0.0_ki
      if(debug_nlo_diagrams) then
         write(logfile,'(A22,G24.16,A6,G24.16,A4)') &
         & "<result name='r2' re='", real(rat2, ki), &
         &                 "' im='", aimag(rat2), "' />"
      end if
      samplitude(0) = rat2
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
         call evaluate_group4(scale2, acc, acc_ok)
         ok = ok .and. acc_ok
         samplitude(:) = samplitude(:) + acc
         call evaluate_group5(scale2, acc, acc_ok)
         ok = ok .and. acc_ok
         samplitude(:) = samplitude(:) + acc
   end function samplitude
   !---#] function samplitude:
!---#[ subroutine evaluate_group0:
subroutine     evaluate_group0(scale2,samplitude,ok)
   use p0_gg_hepem_config, only: &
      & logfile, debug_nlo_diagrams
   use p0_gg_hepem_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p0_gg_hepem_golem95h0, only: reconstruct_golem95 => reconstruct_group
   use p0_gg_hepem_groups, only: contract_golem95, &
      & global_coeffs => coeffs_group0, &
      & reduce_numetens => reduce_numetens_group0
   use p0_gg_hepem_samuraih0, only: samurai_reduce => reduce_group0
   use options, only: samurai_out => iout
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   complex(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group0), target :: coeffs
   type(form_factor) :: gres
   complex(ki_sam), dimension(-2:0) :: tot
   complex(ki_sam) :: totr
   logical :: samurai_ok

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='0'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(0) ! use Samurai only
      call samurai_reduce(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = cmplx(real(tot(:), ki_sam), aimag(tot(:)), ki)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = cmplx(real(gres%A, ki_gol), aimag(gres%A), ki)
      samplitude(-1) = cmplx(real(gres%B, ki_gol), aimag(gres%B), ki)
      samplitude( 0) = cmplx(real(gres%C, ki_gol), aimag(gres%C), ki)
      ok = .true.
   ! Modes which require Golem95 and Samurai
   case(2) ! Try Samurai first, use Golem95 is samurai fails
      call samurai_reduce(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = cmplx(real(tot(:), ki_sam), aimag(tot(:)), ki)
         ok = .true.
      else
         call reconstruct_golem95(coeffs)
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = cmplx(real(gres%A, ki_gol), aimag(gres%A), ki)
         samplitude(-1) = cmplx(real(gres%B, ki_gol), aimag(gres%B), ki)
         samplitude( 0) = cmplx(real(gres%C, ki_gol), aimag(gres%C), ki)
         ok = .true.
      end if
   case(3) ! Tensorial Reconstruction + Samurai on numetens
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = cmplx(real(tot(:), ki_sam), aimag(tot(:)), ki)
      nullify(global_coeffs)
   case(4) ! Tensorial Reconstruction + Samurai on numetens
           ! + Golem95 on failure
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = cmplx(real(tot(:), ki_sam), aimag(tot(:)), ki)
         ok = .true.
      else
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = cmplx(real(gres%A, ki_gol), aimag(gres%A), ki)
         samplitude(-1) = cmplx(real(gres%B, ki_gol), aimag(gres%B), ki)
         samplitude( 0) = cmplx(real(gres%C, ki_gol), aimag(gres%C), ki)
         ok = .true.
      end if
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated with support for Samurai."
      print*, "* This code was generated with support for Golem95."
      print*, "* This code was generated without support for PJFry."
   end select

   if(debug_nlo_diagrams) then
      write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
         & "<result kind='nlo-finite' re='", real(samplitude(0), ki), &
         & "' im='", aimag(samplitude(0)), "'/>"
      write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
         & "<result kind='nlo-single' re='", real(samplitude(-1), ki), &
         & "' im='", aimag(samplitude(-1)), "'/>"
      write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
         & "<result kind='nlo-double' re='", real(samplitude(-2), ki), &
         & "' im='", aimag(samplitude(-2)), "'/>"
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
   use p0_gg_hepem_config, only: &
      & logfile, debug_nlo_diagrams
   use p0_gg_hepem_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p0_gg_hepem_golem95h0, only: reconstruct_golem95 => reconstruct_group
   use p0_gg_hepem_groups, only: contract_golem95, &
      & global_coeffs => coeffs_group1, &
      & reduce_numetens => reduce_numetens_group1
   use p0_gg_hepem_samuraih0, only: samurai_reduce => reduce_group1
   use options, only: samurai_out => iout
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   complex(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group1), target :: coeffs
   type(form_factor) :: gres
   complex(ki_sam), dimension(-2:0) :: tot
   complex(ki_sam) :: totr
   logical :: samurai_ok

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='1'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(0) ! use Samurai only
      call samurai_reduce(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = cmplx(real(tot(:), ki_sam), aimag(tot(:)), ki)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = cmplx(real(gres%A, ki_gol), aimag(gres%A), ki)
      samplitude(-1) = cmplx(real(gres%B, ki_gol), aimag(gres%B), ki)
      samplitude( 0) = cmplx(real(gres%C, ki_gol), aimag(gres%C), ki)
      ok = .true.
   ! Modes which require Golem95 and Samurai
   case(2) ! Try Samurai first, use Golem95 is samurai fails
      call samurai_reduce(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = cmplx(real(tot(:), ki_sam), aimag(tot(:)), ki)
         ok = .true.
      else
         call reconstruct_golem95(coeffs)
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = cmplx(real(gres%A, ki_gol), aimag(gres%A), ki)
         samplitude(-1) = cmplx(real(gres%B, ki_gol), aimag(gres%B), ki)
         samplitude( 0) = cmplx(real(gres%C, ki_gol), aimag(gres%C), ki)
         ok = .true.
      end if
   case(3) ! Tensorial Reconstruction + Samurai on numetens
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = cmplx(real(tot(:), ki_sam), aimag(tot(:)), ki)
      nullify(global_coeffs)
   case(4) ! Tensorial Reconstruction + Samurai on numetens
           ! + Golem95 on failure
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = cmplx(real(tot(:), ki_sam), aimag(tot(:)), ki)
         ok = .true.
      else
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = cmplx(real(gres%A, ki_gol), aimag(gres%A), ki)
         samplitude(-1) = cmplx(real(gres%B, ki_gol), aimag(gres%B), ki)
         samplitude( 0) = cmplx(real(gres%C, ki_gol), aimag(gres%C), ki)
         ok = .true.
      end if
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated with support for Samurai."
      print*, "* This code was generated with support for Golem95."
      print*, "* This code was generated without support for PJFry."
   end select

   if(debug_nlo_diagrams) then
      write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
         & "<result kind='nlo-finite' re='", real(samplitude(0), ki), &
         & "' im='", aimag(samplitude(0)), "'/>"
      write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
         & "<result kind='nlo-single' re='", real(samplitude(-1), ki), &
         & "' im='", aimag(samplitude(-1)), "'/>"
      write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
         & "<result kind='nlo-double' re='", real(samplitude(-2), ki), &
         & "' im='", aimag(samplitude(-2)), "'/>"
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
   use p0_gg_hepem_config, only: &
      & logfile, debug_nlo_diagrams
   use p0_gg_hepem_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p0_gg_hepem_golem95h0, only: reconstruct_golem95 => reconstruct_group
   use p0_gg_hepem_groups, only: contract_golem95, &
      & global_coeffs => coeffs_group2, &
      & reduce_numetens => reduce_numetens_group2
   use p0_gg_hepem_samuraih0, only: samurai_reduce => reduce_group2
   use options, only: samurai_out => iout
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   complex(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group2), target :: coeffs
   type(form_factor) :: gres
   complex(ki_sam), dimension(-2:0) :: tot
   complex(ki_sam) :: totr
   logical :: samurai_ok

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='2'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(0) ! use Samurai only
      call samurai_reduce(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = cmplx(real(tot(:), ki_sam), aimag(tot(:)), ki)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = cmplx(real(gres%A, ki_gol), aimag(gres%A), ki)
      samplitude(-1) = cmplx(real(gres%B, ki_gol), aimag(gres%B), ki)
      samplitude( 0) = cmplx(real(gres%C, ki_gol), aimag(gres%C), ki)
      ok = .true.
   ! Modes which require Golem95 and Samurai
   case(2) ! Try Samurai first, use Golem95 is samurai fails
      call samurai_reduce(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = cmplx(real(tot(:), ki_sam), aimag(tot(:)), ki)
         ok = .true.
      else
         call reconstruct_golem95(coeffs)
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = cmplx(real(gres%A, ki_gol), aimag(gres%A), ki)
         samplitude(-1) = cmplx(real(gres%B, ki_gol), aimag(gres%B), ki)
         samplitude( 0) = cmplx(real(gres%C, ki_gol), aimag(gres%C), ki)
         ok = .true.
      end if
   case(3) ! Tensorial Reconstruction + Samurai on numetens
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = cmplx(real(tot(:), ki_sam), aimag(tot(:)), ki)
      nullify(global_coeffs)
   case(4) ! Tensorial Reconstruction + Samurai on numetens
           ! + Golem95 on failure
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = cmplx(real(tot(:), ki_sam), aimag(tot(:)), ki)
         ok = .true.
      else
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = cmplx(real(gres%A, ki_gol), aimag(gres%A), ki)
         samplitude(-1) = cmplx(real(gres%B, ki_gol), aimag(gres%B), ki)
         samplitude( 0) = cmplx(real(gres%C, ki_gol), aimag(gres%C), ki)
         ok = .true.
      end if
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated with support for Samurai."
      print*, "* This code was generated with support for Golem95."
      print*, "* This code was generated without support for PJFry."
   end select

   if(debug_nlo_diagrams) then
      write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
         & "<result kind='nlo-finite' re='", real(samplitude(0), ki), &
         & "' im='", aimag(samplitude(0)), "'/>"
      write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
         & "<result kind='nlo-single' re='", real(samplitude(-1), ki), &
         & "' im='", aimag(samplitude(-1)), "'/>"
      write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
         & "<result kind='nlo-double' re='", real(samplitude(-2), ki), &
         & "' im='", aimag(samplitude(-2)), "'/>"
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
   use p0_gg_hepem_config, only: &
      & logfile, debug_nlo_diagrams
   use p0_gg_hepem_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p0_gg_hepem_golem95h0, only: reconstruct_golem95 => reconstruct_group
   use p0_gg_hepem_groups, only: contract_golem95, &
      & global_coeffs => coeffs_group3, &
      & reduce_numetens => reduce_numetens_group3
   use p0_gg_hepem_samuraih0, only: samurai_reduce => reduce_group3
   use options, only: samurai_out => iout
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   complex(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group3), target :: coeffs
   type(form_factor) :: gres
   complex(ki_sam), dimension(-2:0) :: tot
   complex(ki_sam) :: totr
   logical :: samurai_ok

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='3'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(0) ! use Samurai only
      call samurai_reduce(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = cmplx(real(tot(:), ki_sam), aimag(tot(:)), ki)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = cmplx(real(gres%A, ki_gol), aimag(gres%A), ki)
      samplitude(-1) = cmplx(real(gres%B, ki_gol), aimag(gres%B), ki)
      samplitude( 0) = cmplx(real(gres%C, ki_gol), aimag(gres%C), ki)
      ok = .true.
   ! Modes which require Golem95 and Samurai
   case(2) ! Try Samurai first, use Golem95 is samurai fails
      call samurai_reduce(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = cmplx(real(tot(:), ki_sam), aimag(tot(:)), ki)
         ok = .true.
      else
         call reconstruct_golem95(coeffs)
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = cmplx(real(gres%A, ki_gol), aimag(gres%A), ki)
         samplitude(-1) = cmplx(real(gres%B, ki_gol), aimag(gres%B), ki)
         samplitude( 0) = cmplx(real(gres%C, ki_gol), aimag(gres%C), ki)
         ok = .true.
      end if
   case(3) ! Tensorial Reconstruction + Samurai on numetens
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = cmplx(real(tot(:), ki_sam), aimag(tot(:)), ki)
      nullify(global_coeffs)
   case(4) ! Tensorial Reconstruction + Samurai on numetens
           ! + Golem95 on failure
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = cmplx(real(tot(:), ki_sam), aimag(tot(:)), ki)
         ok = .true.
      else
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = cmplx(real(gres%A, ki_gol), aimag(gres%A), ki)
         samplitude(-1) = cmplx(real(gres%B, ki_gol), aimag(gres%B), ki)
         samplitude( 0) = cmplx(real(gres%C, ki_gol), aimag(gres%C), ki)
         ok = .true.
      end if
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated with support for Samurai."
      print*, "* This code was generated with support for Golem95."
      print*, "* This code was generated without support for PJFry."
   end select

   if(debug_nlo_diagrams) then
      write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
         & "<result kind='nlo-finite' re='", real(samplitude(0), ki), &
         & "' im='", aimag(samplitude(0)), "'/>"
      write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
         & "<result kind='nlo-single' re='", real(samplitude(-1), ki), &
         & "' im='", aimag(samplitude(-1)), "'/>"
      write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
         & "<result kind='nlo-double' re='", real(samplitude(-2), ki), &
         & "' im='", aimag(samplitude(-2)), "'/>"
      if(ok) then
         write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
      else
         write(logfile,'(A29)') "<flag name='ok' status='no'/>"
      end if
      write(logfile,*) "</diagram-group>"
   end if
end subroutine evaluate_group3
!---#] subroutine evaluate_group3:
!---#[ subroutine evaluate_group4:
subroutine     evaluate_group4(scale2,samplitude,ok)
   use p0_gg_hepem_config, only: &
      & logfile, debug_nlo_diagrams
   use p0_gg_hepem_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p0_gg_hepem_golem95h0, only: reconstruct_golem95 => reconstruct_group
   use p0_gg_hepem_groups, only: contract_golem95, &
      & global_coeffs => coeffs_group4, &
      & reduce_numetens => reduce_numetens_group4
   use p0_gg_hepem_samuraih0, only: samurai_reduce => reduce_group4
   use options, only: samurai_out => iout
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   complex(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group4), target :: coeffs
   type(form_factor) :: gres
   complex(ki_sam), dimension(-2:0) :: tot
   complex(ki_sam) :: totr
   logical :: samurai_ok

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='4'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(0) ! use Samurai only
      call samurai_reduce(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = cmplx(real(tot(:), ki_sam), aimag(tot(:)), ki)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = cmplx(real(gres%A, ki_gol), aimag(gres%A), ki)
      samplitude(-1) = cmplx(real(gres%B, ki_gol), aimag(gres%B), ki)
      samplitude( 0) = cmplx(real(gres%C, ki_gol), aimag(gres%C), ki)
      ok = .true.
   ! Modes which require Golem95 and Samurai
   case(2) ! Try Samurai first, use Golem95 is samurai fails
      call samurai_reduce(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = cmplx(real(tot(:), ki_sam), aimag(tot(:)), ki)
         ok = .true.
      else
         call reconstruct_golem95(coeffs)
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = cmplx(real(gres%A, ki_gol), aimag(gres%A), ki)
         samplitude(-1) = cmplx(real(gres%B, ki_gol), aimag(gres%B), ki)
         samplitude( 0) = cmplx(real(gres%C, ki_gol), aimag(gres%C), ki)
         ok = .true.
      end if
   case(3) ! Tensorial Reconstruction + Samurai on numetens
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = cmplx(real(tot(:), ki_sam), aimag(tot(:)), ki)
      nullify(global_coeffs)
   case(4) ! Tensorial Reconstruction + Samurai on numetens
           ! + Golem95 on failure
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = cmplx(real(tot(:), ki_sam), aimag(tot(:)), ki)
         ok = .true.
      else
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = cmplx(real(gres%A, ki_gol), aimag(gres%A), ki)
         samplitude(-1) = cmplx(real(gres%B, ki_gol), aimag(gres%B), ki)
         samplitude( 0) = cmplx(real(gres%C, ki_gol), aimag(gres%C), ki)
         ok = .true.
      end if
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated with support for Samurai."
      print*, "* This code was generated with support for Golem95."
      print*, "* This code was generated without support for PJFry."
   end select

   if(debug_nlo_diagrams) then
      write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
         & "<result kind='nlo-finite' re='", real(samplitude(0), ki), &
         & "' im='", aimag(samplitude(0)), "'/>"
      write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
         & "<result kind='nlo-single' re='", real(samplitude(-1), ki), &
         & "' im='", aimag(samplitude(-1)), "'/>"
      write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
         & "<result kind='nlo-double' re='", real(samplitude(-2), ki), &
         & "' im='", aimag(samplitude(-2)), "'/>"
      if(ok) then
         write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
      else
         write(logfile,'(A29)') "<flag name='ok' status='no'/>"
      end if
      write(logfile,*) "</diagram-group>"
   end if
end subroutine evaluate_group4
!---#] subroutine evaluate_group4:
!---#[ subroutine evaluate_group5:
subroutine     evaluate_group5(scale2,samplitude,ok)
   use p0_gg_hepem_config, only: &
      & logfile, debug_nlo_diagrams
   use p0_gg_hepem_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p0_gg_hepem_golem95h0, only: reconstruct_golem95 => reconstruct_group
   use p0_gg_hepem_groups, only: contract_golem95, &
      & global_coeffs => coeffs_group5, &
      & reduce_numetens => reduce_numetens_group5
   use p0_gg_hepem_samuraih0, only: samurai_reduce => reduce_group5
   use options, only: samurai_out => iout
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   complex(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group5), target :: coeffs
   type(form_factor) :: gres
   complex(ki_sam), dimension(-2:0) :: tot
   complex(ki_sam) :: totr
   logical :: samurai_ok

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='5'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(0) ! use Samurai only
      call samurai_reduce(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = cmplx(real(tot(:), ki_sam), aimag(tot(:)), ki)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = cmplx(real(gres%A, ki_gol), aimag(gres%A), ki)
      samplitude(-1) = cmplx(real(gres%B, ki_gol), aimag(gres%B), ki)
      samplitude( 0) = cmplx(real(gres%C, ki_gol), aimag(gres%C), ki)
      ok = .true.
   ! Modes which require Golem95 and Samurai
   case(2) ! Try Samurai first, use Golem95 is samurai fails
      call samurai_reduce(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = cmplx(real(tot(:), ki_sam), aimag(tot(:)), ki)
         ok = .true.
      else
         call reconstruct_golem95(coeffs)
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = cmplx(real(gres%A, ki_gol), aimag(gres%A), ki)
         samplitude(-1) = cmplx(real(gres%B, ki_gol), aimag(gres%B), ki)
         samplitude( 0) = cmplx(real(gres%C, ki_gol), aimag(gres%C), ki)
         ok = .true.
      end if
   case(3) ! Tensorial Reconstruction + Samurai on numetens
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = cmplx(real(tot(:), ki_sam), aimag(tot(:)), ki)
      nullify(global_coeffs)
   case(4) ! Tensorial Reconstruction + Samurai on numetens
           ! + Golem95 on failure
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = cmplx(real(tot(:), ki_sam), aimag(tot(:)), ki)
         ok = .true.
      else
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = cmplx(real(gres%A, ki_gol), aimag(gres%A), ki)
         samplitude(-1) = cmplx(real(gres%B, ki_gol), aimag(gres%B), ki)
         samplitude( 0) = cmplx(real(gres%C, ki_gol), aimag(gres%C), ki)
         ok = .true.
      end if
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated with support for Samurai."
      print*, "* This code was generated with support for Golem95."
      print*, "* This code was generated without support for PJFry."
   end select

   if(debug_nlo_diagrams) then
      write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
         & "<result kind='nlo-finite' re='", real(samplitude(0), ki), &
         & "' im='", aimag(samplitude(0)), "'/>"
      write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
         & "<result kind='nlo-single' re='", real(samplitude(-1), ki), &
         & "' im='", aimag(samplitude(-1)), "'/>"
      write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
         & "<result kind='nlo-double' re='", real(samplitude(-2), ki), &
         & "' im='", aimag(samplitude(-2)), "'/>"
      if(ok) then
         write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
      else
         write(logfile,'(A29)') "<flag name='ok' status='no'/>"
      end if
      write(logfile,*) "</diagram-group>"
   end if
end subroutine evaluate_group5
!---#] subroutine evaluate_group5:
end module p0_gg_hepem_amplitudeh0
