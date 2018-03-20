module    p0_gg_hhg_amplitudeh4_qp
   use p0_gg_hhg_config, only: ki => ki_qp, &
       & reduction_interoperation
   use p0_gg_hhg_color_qp, only: numcs
   use p0_gg_hhg_groups
   use quadninjago_module, only: ki_nin
   use p0_gg_hhg_ninjah4_qp
   
   implicit none
   private

   public :: finite_renormalisation, samplitude
contains
!---#[ function finite_renormalisation:
   function     finite_renormalisation(scale2) result(amp)
      use p0_gg_hhg_util_qp, only: square
      use p0_gg_hhg_color_qp, only: CF, CA
      use p0_gg_hhg_kinematics_qp, only: &
      & num_light_quarks, num_gluons
      implicit none
      real(ki), intent(in) :: scale2
      real(ki) :: amp
      amp = 0.0_ki
   end function finite_renormalisation
   !---#] function finite_renormalisation:

   !---#[ function samplitude:
   function     samplitude(scale2,ok,rational2,the_col0,opt_perm)
      use p0_gg_hhg_config, only: include_eps_terms, include_eps2_terms, &
      & logfile, debug_nlo_diagrams
      use p0_gg_hhg_globalsl1_qp, only: col0,perm, use_perm, epspow
      use p0_gg_hhg_globalsh4_qp, &
     & only: init_lo, rat2
      use p0_gg_hhg_abbrevd65h4_qp, only: init_abbrevd65 => init_abbrev
      use p0_gg_hhg_abbrevd25h4_qp, only: init_abbrevd25 => init_abbrev
      use p0_gg_hhg_abbrevd55h4_qp, only: init_abbrevd55 => init_abbrev
      use p0_gg_hhg_abbrevd63h4_qp, only: init_abbrevd63 => init_abbrev
      use p0_gg_hhg_abbrevd19h4_qp, only: init_abbrevd19 => init_abbrev
      use p0_gg_hhg_abbrevd59h4_qp, only: init_abbrevd59 => init_abbrev
      use p0_gg_hhg_abbrevd4h4_qp, only: init_abbrevd4 => init_abbrev
      use p0_gg_hhg_abbrevd6h4_qp, only: init_abbrevd6 => init_abbrev
      use p0_gg_hhg_abbrevd15h4_qp, only: init_abbrevd15 => init_abbrev
      use p0_gg_hhg_abbrevd21h4_qp, only: init_abbrevd21 => init_abbrev
      use p0_gg_hhg_abbrevd31h4_qp, only: init_abbrevd31 => init_abbrev
      use p0_gg_hhg_abbrevd51h4_qp, only: init_abbrevd51 => init_abbrev
      use p0_gg_hhg_abbrevd17h4_qp, only: init_abbrevd17 => init_abbrev
      use p0_gg_hhg_abbrevd47h4_qp, only: init_abbrevd47 => init_abbrev
      use p0_gg_hhg_abbrevd8h4_qp, only: init_abbrevd8 => init_abbrev
      use p0_gg_hhg_abbrevd23h4_qp, only: init_abbrevd23 => init_abbrev
      use p0_gg_hhg_abbrevd27h4_qp, only: init_abbrevd27 => init_abbrev
      use p0_gg_hhg_abbrevd35h4_qp, only: init_abbrevd35 => init_abbrev
      use p0_gg_hhg_abbrevd61h4_qp, only: init_abbrevd61 => init_abbrev
      use p0_gg_hhg_abbrevd57h4_qp, only: init_abbrevd57 => init_abbrev
      use p0_gg_hhg_abbrevd53h4_qp, only: init_abbrevd53 => init_abbrev
      use p0_gg_hhg_abbrevd43h4_qp, only: init_abbrevd43 => init_abbrev
      use p0_gg_hhg_abbrevd13h4_qp, only: init_abbrevd13 => init_abbrev
      use p0_gg_hhg_abbrevd29h4_qp, only: init_abbrevd29 => init_abbrev
      use p0_gg_hhg_abbrevd33h4_qp, only: init_abbrevd33 => init_abbrev
      use p0_gg_hhg_abbrevd49h4_qp, only: init_abbrevd49 => init_abbrev
      use p0_gg_hhg_abbrevd45h4_qp, only: init_abbrevd45 => init_abbrev
      use p0_gg_hhg_groups
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
        call init_abbrevd65()
        call init_abbrevd25()
        call init_abbrevd55()
        call init_abbrevd63()
        call init_abbrevd19()
        call init_abbrevd59()
        call init_abbrevd4()
        call init_abbrevd6()
        call init_abbrevd15()
        call init_abbrevd21()
        call init_abbrevd31()
        call init_abbrevd51()
        call init_abbrevd17()
        call init_abbrevd47()
        call init_abbrevd8()
        call init_abbrevd23()
        call init_abbrevd27()
        call init_abbrevd35()
        call init_abbrevd61()
        call init_abbrevd57()
        call init_abbrevd53()
        call init_abbrevd43()
        call init_abbrevd13()
        call init_abbrevd29()
        call init_abbrevd33()
        call init_abbrevd49()
        call init_abbrevd45()
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
         call evaluate_group6(scale2, acc, acc_ok)
         ok = ok .and. acc_ok
         samplitude(:) = samplitude(:) + acc
         call evaluate_group7(scale2, acc, acc_ok)
         ok = ok .and. acc_ok
         samplitude(:) = samplitude(:) + acc
         call evaluate_group8(scale2, acc, acc_ok)
         ok = ok .and. acc_ok
         samplitude(:) = samplitude(:) + acc
         call evaluate_group9(scale2, acc, acc_ok)
         ok = ok .and. acc_ok
         samplitude(:) = samplitude(:) + acc
         call evaluate_group10(scale2, acc, acc_ok)
         ok = ok .and. acc_ok
         samplitude(:) = samplitude(:) + acc
         call evaluate_group11(scale2, acc, acc_ok)
         ok = ok .and. acc_ok
         samplitude(:) = samplitude(:) + acc
   end function samplitude
   !---#] function samplitude:
!---#[ subroutine evaluate_group0:
subroutine     evaluate_group0(scale2,samplitude,ok)
   use p0_gg_hhg_config, only: &
      & logfile, debug_nlo_diagrams
   use p0_gg_hhg_globalsl1_qp, only: epspow
   use p0_gg_hhg_ninjah4_qp, only: ninja_reduce => ninja_reduce_group0
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   complex(ki), dimension(-2:0), intent(out) :: samplitude
   complex(ki_nin), dimension(-2:0) :: tot
   complex(ki_nin) :: totr

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='0'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(4) ! use QuadNinja only
      call ninja_reduce(real(scale2, ki_nin), tot, totr, ok)
      samplitude(:) = cmplx(real(tot(:), ki_nin), aimag(tot(:)), ki)
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated without support for Samurai."
      print*, "* This code was generated with support for Ninja."
      print*, "* This code was generated without support for Golem95."
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
   use p0_gg_hhg_config, only: &
      & logfile, debug_nlo_diagrams
   use p0_gg_hhg_globalsl1_qp, only: epspow
   use p0_gg_hhg_ninjah4_qp, only: ninja_reduce => ninja_reduce_group1
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   complex(ki), dimension(-2:0), intent(out) :: samplitude
   complex(ki_nin), dimension(-2:0) :: tot
   complex(ki_nin) :: totr

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='1'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(4) ! use QuadNinja only
      call ninja_reduce(real(scale2, ki_nin), tot, totr, ok)
      samplitude(:) = cmplx(real(tot(:), ki_nin), aimag(tot(:)), ki)
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated without support for Samurai."
      print*, "* This code was generated with support for Ninja."
      print*, "* This code was generated without support for Golem95."
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
   use p0_gg_hhg_config, only: &
      & logfile, debug_nlo_diagrams
   use p0_gg_hhg_globalsl1_qp, only: epspow
   use p0_gg_hhg_ninjah4_qp, only: ninja_reduce => ninja_reduce_group2
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   complex(ki), dimension(-2:0), intent(out) :: samplitude
   complex(ki_nin), dimension(-2:0) :: tot
   complex(ki_nin) :: totr

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='2'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(4) ! use QuadNinja only
      call ninja_reduce(real(scale2, ki_nin), tot, totr, ok)
      samplitude(:) = cmplx(real(tot(:), ki_nin), aimag(tot(:)), ki)
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated without support for Samurai."
      print*, "* This code was generated with support for Ninja."
      print*, "* This code was generated without support for Golem95."
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
   use p0_gg_hhg_config, only: &
      & logfile, debug_nlo_diagrams
   use p0_gg_hhg_globalsl1_qp, only: epspow
   use p0_gg_hhg_ninjah4_qp, only: ninja_reduce => ninja_reduce_group3
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   complex(ki), dimension(-2:0), intent(out) :: samplitude
   complex(ki_nin), dimension(-2:0) :: tot
   complex(ki_nin) :: totr

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='3'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(4) ! use QuadNinja only
      call ninja_reduce(real(scale2, ki_nin), tot, totr, ok)
      samplitude(:) = cmplx(real(tot(:), ki_nin), aimag(tot(:)), ki)
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated without support for Samurai."
      print*, "* This code was generated with support for Ninja."
      print*, "* This code was generated without support for Golem95."
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
   use p0_gg_hhg_config, only: &
      & logfile, debug_nlo_diagrams
   use p0_gg_hhg_globalsl1_qp, only: epspow
   use p0_gg_hhg_ninjah4_qp, only: ninja_reduce => ninja_reduce_group4
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   complex(ki), dimension(-2:0), intent(out) :: samplitude
   complex(ki_nin), dimension(-2:0) :: tot
   complex(ki_nin) :: totr

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='4'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(4) ! use QuadNinja only
      call ninja_reduce(real(scale2, ki_nin), tot, totr, ok)
      samplitude(:) = cmplx(real(tot(:), ki_nin), aimag(tot(:)), ki)
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated without support for Samurai."
      print*, "* This code was generated with support for Ninja."
      print*, "* This code was generated without support for Golem95."
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
   use p0_gg_hhg_config, only: &
      & logfile, debug_nlo_diagrams
   use p0_gg_hhg_globalsl1_qp, only: epspow
   use p0_gg_hhg_ninjah4_qp, only: ninja_reduce => ninja_reduce_group5
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   complex(ki), dimension(-2:0), intent(out) :: samplitude
   complex(ki_nin), dimension(-2:0) :: tot
   complex(ki_nin) :: totr

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='5'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(4) ! use QuadNinja only
      call ninja_reduce(real(scale2, ki_nin), tot, totr, ok)
      samplitude(:) = cmplx(real(tot(:), ki_nin), aimag(tot(:)), ki)
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated without support for Samurai."
      print*, "* This code was generated with support for Ninja."
      print*, "* This code was generated without support for Golem95."
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
!---#[ subroutine evaluate_group6:
subroutine     evaluate_group6(scale2,samplitude,ok)
   use p0_gg_hhg_config, only: &
      & logfile, debug_nlo_diagrams
   use p0_gg_hhg_globalsl1_qp, only: epspow
   use p0_gg_hhg_ninjah4_qp, only: ninja_reduce => ninja_reduce_group6
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   complex(ki), dimension(-2:0), intent(out) :: samplitude
   complex(ki_nin), dimension(-2:0) :: tot
   complex(ki_nin) :: totr

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='6'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(4) ! use QuadNinja only
      call ninja_reduce(real(scale2, ki_nin), tot, totr, ok)
      samplitude(:) = cmplx(real(tot(:), ki_nin), aimag(tot(:)), ki)
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated without support for Samurai."
      print*, "* This code was generated with support for Ninja."
      print*, "* This code was generated without support for Golem95."
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
end subroutine evaluate_group6
!---#] subroutine evaluate_group6:
!---#[ subroutine evaluate_group7:
subroutine     evaluate_group7(scale2,samplitude,ok)
   use p0_gg_hhg_config, only: &
      & logfile, debug_nlo_diagrams
   use p0_gg_hhg_globalsl1_qp, only: epspow
   use p0_gg_hhg_ninjah4_qp, only: ninja_reduce => ninja_reduce_group7
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   complex(ki), dimension(-2:0), intent(out) :: samplitude
   complex(ki_nin), dimension(-2:0) :: tot
   complex(ki_nin) :: totr

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='7'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(4) ! use QuadNinja only
      call ninja_reduce(real(scale2, ki_nin), tot, totr, ok)
      samplitude(:) = cmplx(real(tot(:), ki_nin), aimag(tot(:)), ki)
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated without support for Samurai."
      print*, "* This code was generated with support for Ninja."
      print*, "* This code was generated without support for Golem95."
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
end subroutine evaluate_group7
!---#] subroutine evaluate_group7:
!---#[ subroutine evaluate_group8:
subroutine     evaluate_group8(scale2,samplitude,ok)
   use p0_gg_hhg_config, only: &
      & logfile, debug_nlo_diagrams
   use p0_gg_hhg_globalsl1_qp, only: epspow
   use p0_gg_hhg_ninjah4_qp, only: ninja_reduce => ninja_reduce_group8
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   complex(ki), dimension(-2:0), intent(out) :: samplitude
   complex(ki_nin), dimension(-2:0) :: tot
   complex(ki_nin) :: totr

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='8'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(4) ! use QuadNinja only
      call ninja_reduce(real(scale2, ki_nin), tot, totr, ok)
      samplitude(:) = cmplx(real(tot(:), ki_nin), aimag(tot(:)), ki)
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated without support for Samurai."
      print*, "* This code was generated with support for Ninja."
      print*, "* This code was generated without support for Golem95."
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
end subroutine evaluate_group8
!---#] subroutine evaluate_group8:
!---#[ subroutine evaluate_group9:
subroutine     evaluate_group9(scale2,samplitude,ok)
   use p0_gg_hhg_config, only: &
      & logfile, debug_nlo_diagrams
   use p0_gg_hhg_globalsl1_qp, only: epspow
   use p0_gg_hhg_ninjah4_qp, only: ninja_reduce => ninja_reduce_group9
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   complex(ki), dimension(-2:0), intent(out) :: samplitude
   complex(ki_nin), dimension(-2:0) :: tot
   complex(ki_nin) :: totr

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='9'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(4) ! use QuadNinja only
      call ninja_reduce(real(scale2, ki_nin), tot, totr, ok)
      samplitude(:) = cmplx(real(tot(:), ki_nin), aimag(tot(:)), ki)
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated without support for Samurai."
      print*, "* This code was generated with support for Ninja."
      print*, "* This code was generated without support for Golem95."
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
end subroutine evaluate_group9
!---#] subroutine evaluate_group9:
!---#[ subroutine evaluate_group10:
subroutine     evaluate_group10(scale2,samplitude,ok)
   use p0_gg_hhg_config, only: &
      & logfile, debug_nlo_diagrams
   use p0_gg_hhg_globalsl1_qp, only: epspow
   use p0_gg_hhg_ninjah4_qp, only: ninja_reduce => ninja_reduce_group10
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   complex(ki), dimension(-2:0), intent(out) :: samplitude
   complex(ki_nin), dimension(-2:0) :: tot
   complex(ki_nin) :: totr

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='10'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(4) ! use QuadNinja only
      call ninja_reduce(real(scale2, ki_nin), tot, totr, ok)
      samplitude(:) = cmplx(real(tot(:), ki_nin), aimag(tot(:)), ki)
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated without support for Samurai."
      print*, "* This code was generated with support for Ninja."
      print*, "* This code was generated without support for Golem95."
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
end subroutine evaluate_group10
!---#] subroutine evaluate_group10:
!---#[ subroutine evaluate_group11:
subroutine     evaluate_group11(scale2,samplitude,ok)
   use p0_gg_hhg_config, only: &
      & logfile, debug_nlo_diagrams
   use p0_gg_hhg_globalsl1_qp, only: epspow
   use p0_gg_hhg_ninjah4_qp, only: ninja_reduce => ninja_reduce_group11
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   complex(ki), dimension(-2:0), intent(out) :: samplitude
   complex(ki_nin), dimension(-2:0) :: tot
   complex(ki_nin) :: totr

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='11'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(4) ! use QuadNinja only
      call ninja_reduce(real(scale2, ki_nin), tot, totr, ok)
      samplitude(:) = cmplx(real(tot(:), ki_nin), aimag(tot(:)), ki)
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated without support for Samurai."
      print*, "* This code was generated with support for Ninja."
      print*, "* This code was generated without support for Golem95."
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
end subroutine evaluate_group11
!---#] subroutine evaluate_group11:
end module p0_gg_hhg_amplitudeh4_qp
