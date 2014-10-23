!
module     p0_dbaru_epnebbbarg_ninjah2
   ! This file has been generated for ninja
   use ninjago_module, only: ki_nin
   use p0_dbaru_epnebbbarg_config
   implicit none
   private
   public :: ninja_reduce_group0
   public :: ninja_reduce_group1
   public :: ninja_reduce_group2
   public :: ninja_reduce_group3
   public :: ninja_reduce_group4
   public :: ninja_reduce_group5
   public :: ninja_reduce_group6
   public :: ninja_reduce_group7
   public :: ninja_reduce_group8
   public :: ninja_reduce_group9
   public :: ninja_reduce_group10
   public :: ninja_reduce_group11
   public :: ninja_reduce_group12
   public :: ninja_reduce_group13
   public :: ninja_reduce_group14
   public :: ninja_reduce_group15
   public :: ninja_reduce_group16
   public :: ninja_reduce_group17
   public :: ninja_reduce_group18
   public :: ninja_reduce_group19
   public :: ninja_reduce_group20
contains
!---#[ reduce groups with ninja:
!-----#[ subroutine ninja_reduce_group0:
subroutine     ninja_reduce_group0(scale2,tot,totr,ok)
   use iso_c_binding, only: c_ptr, c_loc, c_int
   use ninjago_module
   use p0_dbaru_epnebbbarg_kinematics
   use p0_dbaru_epnebbbarg_model
   use p0_dbaru_epnebbbarg_d322h2l1, only: numerator_diagram322 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d322h2l121, only: numerator_tmu_diagram322 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d322h2l131, only: numerator_t3_diagram322 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d322h2l132, only: numerator_t2_diagram322 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_globalsl1, only: epspow

   implicit none
   real(ki_nin), intent(in) :: scale2
   complex(ki_nin), dimension(-2:0), intent(out) :: tot
   complex(ki_nin), intent(out) :: totr
   logical, intent(out) :: ok

   complex(ki_nin), dimension(-2:0) :: acc
   complex(ki_nin) :: accr
   integer(c_int) :: acc_ok

   integer :: istopm, istop0

   integer, parameter :: effective_group_rank = 3

   !-----------#[ invariants for ninja:
   real(ki_nin), dimension(4,4) :: s_mat
   !-----------#] initialize invariants:
   real(ki_nin), dimension(4) :: msq
   real(ki_nin), dimension(4,4) :: Vi

   ok = .true.

   if (ninja_test.eq.1) then
      istopm = 1
      istop0 = 1
   else
      istopm = ninja_istop
      istop0 = max(2,ninja_istop)
   end if
   msq(1) = real(mB*mB, ki_nin)
   Vi(:,1) = real(k7+k6, ki_nin)
   msq(2) = 0.0_ki_nin
   Vi(:,2) = real(k7, ki_nin)
   msq(3) = 0.0_ki_nin
   Vi(:,3) = real(0, ki_nin)
   msq(4) = real(mB*mB, ki_nin)
   Vi(:,4) = real(-k5, ki_nin)
   !-----------#[ initialize invariants:
   s_mat(1,1) = real(-2.0_ki*mB**2, ki_nin)
   s_mat(1,2) = real(0.0_ki, ki_nin)
   s_mat(2,1) = s_mat(1,2)
   s_mat(1,3) = real(-mB**2+es67, ki_nin)
   s_mat(3,1) = s_mat(1,3)
   s_mat(1,4) = real(-2.0_ki*mB**2+es567, ki_nin)
   s_mat(4,1) = s_mat(1,4)
   s_mat(2,2) = real(0.0_ki, ki_nin)
   s_mat(2,3) = real(0.0_ki, ki_nin)
   s_mat(3,2) = s_mat(2,3)
   s_mat(2,4) = real(mB**2-es56-es67+es567, ki_nin)
   s_mat(4,2) = s_mat(2,4)
   s_mat(3,3) = real(0.0_ki, ki_nin)
   s_mat(3,4) = real(0.0_ki, ki_nin)
   s_mat(4,3) = s_mat(3,4)
   s_mat(4,4) = real(-2.0_ki*mB**2, ki_nin)
   !-----------#] initialize invariants


      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='322'>"
         end if
         call ninja_diagram(numerator_diagram322, numerator_t3_diagram322, nume&
         &rator_t2_diagram322, &
          &  numerator_tmu_diagram322, &
          & 4, 4, 3, (/1,2,3,4/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot =  + acc
         totr =  + accr
      !------#] sum over reduction of single diagrams:
end subroutine ninja_reduce_group0
!-----#] subroutine ninja_reduce_group0:
!-----#[ subroutine ninja_reduce_group1:
subroutine     ninja_reduce_group1(scale2,tot,totr,ok)
   use iso_c_binding, only: c_ptr, c_loc, c_int
   use ninjago_module
   use p0_dbaru_epnebbbarg_kinematics
   use p0_dbaru_epnebbbarg_model
   use p0_dbaru_epnebbbarg_d176h2l1, only: numerator_diagram176 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d176h2l121, only: numerator_tmu_diagram176 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d176h2l131, only: numerator_t3_diagram176 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d176h2l132, only: numerator_t2_diagram176 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d318h2l1, only: numerator_diagram318 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d318h2l121, only: numerator_tmu_diagram318 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d318h2l131, only: numerator_t3_diagram318 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d318h2l132, only: numerator_t2_diagram318 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_globalsl1, only: epspow

   implicit none
   real(ki_nin), intent(in) :: scale2
   complex(ki_nin), dimension(-2:0), intent(out) :: tot
   complex(ki_nin), intent(out) :: totr
   logical, intent(out) :: ok

   complex(ki_nin), dimension(-2:0) :: acc
   complex(ki_nin) :: accr
   integer(c_int) :: acc_ok

   integer :: istopm, istop0

   integer, parameter :: effective_group_rank = 3

   !-----------#[ invariants for ninja:
   real(ki_nin), dimension(4,4) :: s_mat
   !-----------#] initialize invariants:
   real(ki_nin), dimension(4) :: msq
   real(ki_nin), dimension(4,4) :: Vi

   ok = .true.

   if (ninja_test.eq.1) then
      istopm = 1
      istop0 = 1
   else
      istopm = ninja_istop
      istop0 = max(2,ninja_istop)
   end if
   msq(1) = real(mB*mB, ki_nin)
   Vi(:,1) = real(-k7-k5, ki_nin)
   msq(2) = real(mB*mB, ki_nin)
   Vi(:,2) = real(-k5, ki_nin)
   msq(3) = 0.0_ki_nin
   Vi(:,3) = real(0, ki_nin)
   msq(4) = real(mB*mB, ki_nin)
   Vi(:,4) = real(k6, ki_nin)
   !-----------#[ initialize invariants:
   s_mat(1,1) = real(-2.0_ki*mB**2, ki_nin)
   s_mat(1,2) = real(-2.0_ki*mB**2, ki_nin)
   s_mat(2,1) = s_mat(1,2)
   s_mat(1,3) = real(mB**2-es56-es67+es567, ki_nin)
   s_mat(3,1) = s_mat(1,3)
   s_mat(1,4) = real(-2.0_ki*mB**2+es567, ki_nin)
   s_mat(4,1) = s_mat(1,4)
   s_mat(2,2) = real(-2.0_ki*mB**2, ki_nin)
   s_mat(2,3) = real(0.0_ki, ki_nin)
   s_mat(3,2) = s_mat(2,3)
   s_mat(2,4) = real(-2.0_ki*mB**2+es56, ki_nin)
   s_mat(4,2) = s_mat(2,4)
   s_mat(3,3) = real(0.0_ki, ki_nin)
   s_mat(3,4) = real(0.0_ki, ki_nin)
   s_mat(4,3) = s_mat(3,4)
   s_mat(4,4) = real(-2.0_ki*mB**2, ki_nin)
   !-----------#] initialize invariants


      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='176'>"
         end if
         call ninja_diagram(numerator_diagram176, numerator_t3_diagram176, nume&
         &rator_t2_diagram176, &
          &  numerator_tmu_diagram176, &
          & 4, 3, 2, (/1,3,4/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot =  + acc
         totr =  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='318'>"
         end if
         call ninja_diagram(numerator_diagram318, numerator_t3_diagram318, nume&
         &rator_t2_diagram318, &
          &  numerator_tmu_diagram318, &
          & 4, 4, 3, (/1,2,3,4/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
      !------#] sum over reduction of single diagrams:
end subroutine ninja_reduce_group1
!-----#] subroutine ninja_reduce_group1:
!-----#[ subroutine ninja_reduce_group2:
subroutine     ninja_reduce_group2(scale2,tot,totr,ok)
   use iso_c_binding, only: c_ptr, c_loc, c_int
   use ninjago_module
   use p0_dbaru_epnebbbarg_kinematics
   use p0_dbaru_epnebbbarg_model
   use p0_dbaru_epnebbbarg_d28h2l1, only: numerator_diagram28 => numerator_ninja
   use p0_dbaru_epnebbbarg_d28h2l121, only: numerator_tmu_diagram28 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d28h2l131, only: numerator_t3_diagram28 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d28h2l132, only: numerator_t2_diagram28 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_d87h2l1, only: numerator_diagram87 => numerator_ninja
   use p0_dbaru_epnebbbarg_d87h2l121, only: numerator_tmu_diagram87 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d87h2l131, only: numerator_t3_diagram87 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d87h2l132, only: numerator_t2_diagram87 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_d153h2l1, only: numerator_diagram153 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d153h2l121, only: numerator_tmu_diagram153 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d153h2l131, only: numerator_t3_diagram153 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d153h2l132, only: numerator_t2_diagram153 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d180h2l1, only: numerator_diagram180 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d180h2l121, only: numerator_tmu_diagram180 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d180h2l131, only: numerator_t3_diagram180 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d180h2l132, only: numerator_t2_diagram180 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d244h2l1, only: numerator_diagram244 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d244h2l121, only: numerator_tmu_diagram244 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d244h2l131, only: numerator_t3_diagram244 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d244h2l132, only: numerator_t2_diagram244 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d320h2l1, only: numerator_diagram320 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d320h2l121, only: numerator_tmu_diagram320 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d320h2l131, only: numerator_t3_diagram320 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d320h2l132, only: numerator_t2_diagram320 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_globalsl1, only: epspow

   implicit none
   real(ki_nin), intent(in) :: scale2
   complex(ki_nin), dimension(-2:0), intent(out) :: tot
   complex(ki_nin), intent(out) :: totr
   logical, intent(out) :: ok

   complex(ki_nin), dimension(-2:0) :: acc
   complex(ki_nin) :: accr
   integer(c_int) :: acc_ok

   integer :: istopm, istop0

   integer, parameter :: effective_group_rank = 4

   !-----------#[ invariants for ninja:
   real(ki_nin), dimension(4,4) :: s_mat
   !-----------#] initialize invariants:
   real(ki_nin), dimension(4) :: msq
   real(ki_nin), dimension(4,4) :: Vi

   ok = .true.

   if (ninja_test.eq.1) then
      istopm = 1
      istop0 = 1
   else
      istopm = ninja_istop
      istop0 = max(2,ninja_istop)
   end if
   msq(1) = real(mB*mB, ki_nin)
   Vi(:,1) = real(k7+k6, ki_nin)
   msq(2) = real(mB*mB, ki_nin)
   Vi(:,2) = real(k6, ki_nin)
   msq(3) = 0.0_ki_nin
   Vi(:,3) = real(0, ki_nin)
   msq(4) = real(mB*mB, ki_nin)
   Vi(:,4) = real(-k5, ki_nin)
   !-----------#[ initialize invariants:
   s_mat(1,1) = real(-2.0_ki*mB**2, ki_nin)
   s_mat(1,2) = real(-2.0_ki*mB**2, ki_nin)
   s_mat(2,1) = s_mat(1,2)
   s_mat(1,3) = real(-mB**2+es67, ki_nin)
   s_mat(3,1) = s_mat(1,3)
   s_mat(1,4) = real(-2.0_ki*mB**2+es567, ki_nin)
   s_mat(4,1) = s_mat(1,4)
   s_mat(2,2) = real(-2.0_ki*mB**2, ki_nin)
   s_mat(2,3) = real(0.0_ki, ki_nin)
   s_mat(3,2) = s_mat(2,3)
   s_mat(2,4) = real(-2.0_ki*mB**2+es56, ki_nin)
   s_mat(4,2) = s_mat(2,4)
   s_mat(3,3) = real(0.0_ki, ki_nin)
   s_mat(3,4) = real(0.0_ki, ki_nin)
   s_mat(4,3) = s_mat(3,4)
   s_mat(4,4) = real(-2.0_ki*mB**2, ki_nin)
   !-----------#] initialize invariants


      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='28'>"
         end if
         call ninja_diagram(numerator_diagram28, numerator_t3_diagram28, numera&
         &tor_t2_diagram28, &
          &  numerator_tmu_diagram28, &
          & 4, 2, 2, (/2,4/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", -real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", -real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", -real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", -real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot =  + acc
         totr =  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='87'>"
         end if
         call ninja_diagram(numerator_diagram87, numerator_t3_diagram87, numera&
         &tor_t2_diagram87, &
          &  numerator_tmu_diagram87, &
          & 4, 3, 2, (/2,3,4/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='153'>"
         end if
         call ninja_diagram(numerator_diagram153, numerator_t3_diagram153, nume&
         &rator_t2_diagram153, &
          &  numerator_tmu_diagram153, &
          & 4, 3, 3, (/1,2,4/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", -real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", -real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", -real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", -real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='180'>"
         end if
         call ninja_diagram(numerator_diagram180, numerator_t3_diagram180, nume&
         &rator_t2_diagram180, &
          &  numerator_tmu_diagram180, &
          & 4, 3, 2, (/1,3,4/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='244'>"
         end if
         call ninja_diagram(numerator_diagram244, numerator_t3_diagram244, nume&
         &rator_t2_diagram244, &
          &  numerator_tmu_diagram244, &
          & 4, 2, 2, (/1,4/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", -real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", -real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", -real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", -real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='320'>"
         end if
         call ninja_diagram(numerator_diagram320, numerator_t3_diagram320, nume&
         &rator_t2_diagram320, &
          &  numerator_tmu_diagram320, &
          & 4, 4, 3, (/1,2,3,4/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
      !------#] sum over reduction of single diagrams:
end subroutine ninja_reduce_group2
!-----#] subroutine ninja_reduce_group2:
!-----#[ subroutine ninja_reduce_group3:
subroutine     ninja_reduce_group3(scale2,tot,totr,ok)
   use iso_c_binding, only: c_ptr, c_loc, c_int
   use ninjago_module
   use p0_dbaru_epnebbbarg_kinematics
   use p0_dbaru_epnebbbarg_model
   use p0_dbaru_epnebbbarg_d13h2l1, only: numerator_diagram13 => numerator_ninja
   use p0_dbaru_epnebbbarg_d13h2l121, only: numerator_tmu_diagram13 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d13h2l131, only: numerator_t3_diagram13 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d13h2l132, only: numerator_t2_diagram13 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_d84h2l1, only: numerator_diagram84 => numerator_ninja
   use p0_dbaru_epnebbbarg_d84h2l121, only: numerator_tmu_diagram84 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d84h2l131, only: numerator_t3_diagram84 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d84h2l132, only: numerator_t2_diagram84 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_globalsl1, only: epspow

   implicit none
   real(ki_nin), intent(in) :: scale2
   complex(ki_nin), dimension(-2:0), intent(out) :: tot
   complex(ki_nin), intent(out) :: totr
   logical, intent(out) :: ok

   complex(ki_nin), dimension(-2:0) :: acc
   complex(ki_nin) :: accr
   integer(c_int) :: acc_ok

   integer :: istopm, istop0

   integer, parameter :: effective_group_rank = 4

   !-----------#[ invariants for ninja:
   real(ki_nin), dimension(5,5) :: s_mat
   !-----------#] initialize invariants:
   real(ki_nin), dimension(5) :: msq
   real(ki_nin), dimension(4,5) :: Vi

   ok = .true.

   if (ninja_test.eq.1) then
      istopm = 1
      istop0 = 1
   else
      istopm = ninja_istop
      istop0 = max(2,ninja_istop)
   end if
   msq(1) = 0.0_ki_nin
   Vi(:,1) = real(-k2+k6+k5, ki_nin)
   msq(2) = 0.0_ki_nin
   Vi(:,2) = real(-k2, ki_nin)
   msq(3) = 0.0_ki_nin
   Vi(:,3) = real(0, ki_nin)
   msq(4) = 0.0_ki_nin
   Vi(:,4) = real(-k7, ki_nin)
   msq(5) = 0.0_ki_nin
   Vi(:,5) = real(k3-k2+k6+k5+k4, ki_nin)
   !-----------#[ initialize invariants:
   s_mat(1,1) = real(0.0_ki, ki_nin)
   s_mat(1,2) = real(es56, ki_nin)
   s_mat(2,1) = s_mat(1,2)
   s_mat(1,3) = real(es34+es56-es234+es71-es712, ki_nin)
   s_mat(3,1) = s_mat(1,3)
   s_mat(1,4) = real(es34+es567-es234-es12, ki_nin)
   s_mat(4,1) = s_mat(1,4)
   s_mat(1,5) = real(es34, ki_nin)
   s_mat(5,1) = s_mat(1,5)
   s_mat(2,2) = real(0.0_ki, ki_nin)
   s_mat(2,3) = real(0.0_ki, ki_nin)
   s_mat(3,2) = s_mat(2,3)
   s_mat(2,4) = real(-es12-es71+es712, ki_nin)
   s_mat(4,2) = s_mat(2,4)
   s_mat(2,5) = real(es712, ki_nin)
   s_mat(5,2) = s_mat(2,5)
   s_mat(3,3) = real(0.0_ki, ki_nin)
   s_mat(3,4) = real(0.0_ki, ki_nin)
   s_mat(4,3) = s_mat(3,4)
   s_mat(3,5) = real(es71, ki_nin)
   s_mat(5,3) = s_mat(3,5)
   s_mat(4,4) = real(0.0_ki, ki_nin)
   s_mat(4,5) = real(0.0_ki, ki_nin)
   s_mat(5,4) = s_mat(4,5)
   s_mat(5,5) = real(0.0_ki, ki_nin)
   !-----------#] initialize invariants


      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='13'>"
         end if
         call ninja_diagram(numerator_diagram13, numerator_t3_diagram13, numera&
         &tor_t2_diagram13, &
          &  numerator_tmu_diagram13, &
          & 5, 4, 3, (/1,2,3,5/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot =  + acc
         totr =  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='84'>"
         end if
         call ninja_diagram(numerator_diagram84, numerator_t3_diagram84, numera&
         &tor_t2_diagram84, &
          &  numerator_tmu_diagram84, &
          & 5, 5, 4, (/1,2,3,4,5/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
      !------#] sum over reduction of single diagrams:
end subroutine ninja_reduce_group3
!-----#] subroutine ninja_reduce_group3:
!-----#[ subroutine ninja_reduce_group4:
subroutine     ninja_reduce_group4(scale2,tot,totr,ok)
   use iso_c_binding, only: c_ptr, c_loc, c_int
   use ninjago_module
   use p0_dbaru_epnebbbarg_kinematics
   use p0_dbaru_epnebbbarg_model
   use p0_dbaru_epnebbbarg_d12h2l1, only: numerator_diagram12 => numerator_ninja
   use p0_dbaru_epnebbbarg_d12h2l121, only: numerator_tmu_diagram12 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d12h2l131, only: numerator_t3_diagram12 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d12h2l132, only: numerator_t2_diagram12 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_d85h2l1, only: numerator_diagram85 => numerator_ninja
   use p0_dbaru_epnebbbarg_d85h2l121, only: numerator_tmu_diagram85 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d85h2l131, only: numerator_t3_diagram85 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d85h2l132, only: numerator_t2_diagram85 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_globalsl1, only: epspow

   implicit none
   real(ki_nin), intent(in) :: scale2
   complex(ki_nin), dimension(-2:0), intent(out) :: tot
   complex(ki_nin), intent(out) :: totr
   logical, intent(out) :: ok

   complex(ki_nin), dimension(-2:0) :: acc
   complex(ki_nin) :: accr
   integer(c_int) :: acc_ok

   integer :: istopm, istop0

   integer, parameter :: effective_group_rank = 4

   !-----------#[ invariants for ninja:
   real(ki_nin), dimension(5,5) :: s_mat
   !-----------#] initialize invariants:
   real(ki_nin), dimension(5) :: msq
   real(ki_nin), dimension(4,5) :: Vi

   ok = .true.

   if (ninja_test.eq.1) then
      istopm = 1
      istop0 = 1
   else
      istopm = ninja_istop
      istop0 = max(2,ninja_istop)
   end if
   msq(1) = 0.0_ki_nin
   Vi(:,1) = real(k3-k2+k4, ki_nin)
   msq(2) = 0.0_ki_nin
   Vi(:,2) = real(k3-k2+k6+k5+k4, ki_nin)
   msq(3) = 0.0_ki_nin
   Vi(:,3) = real(-k7, ki_nin)
   msq(4) = 0.0_ki_nin
   Vi(:,4) = real(0, ki_nin)
   msq(5) = 0.0_ki_nin
   Vi(:,5) = real(-k2, ki_nin)
   !-----------#[ initialize invariants:
   s_mat(1,1) = real(0.0_ki, ki_nin)
   s_mat(1,2) = real(es56, ki_nin)
   s_mat(2,1) = s_mat(1,2)
   s_mat(1,3) = real(-es567+es56+es234-es71, ki_nin)
   s_mat(3,1) = s_mat(1,3)
   s_mat(1,4) = real(es234, ki_nin)
   s_mat(4,1) = s_mat(1,4)
   s_mat(1,5) = real(es34, ki_nin)
   s_mat(5,1) = s_mat(1,5)
   s_mat(2,2) = real(0.0_ki, ki_nin)
   s_mat(2,3) = real(0.0_ki, ki_nin)
   s_mat(3,2) = s_mat(2,3)
   s_mat(2,4) = real(es71, ki_nin)
   s_mat(4,2) = s_mat(2,4)
   s_mat(2,5) = real(es712, ki_nin)
   s_mat(5,2) = s_mat(2,5)
   s_mat(3,3) = real(0.0_ki, ki_nin)
   s_mat(3,4) = real(0.0_ki, ki_nin)
   s_mat(4,3) = s_mat(3,4)
   s_mat(3,5) = real(-es12-es71+es712, ki_nin)
   s_mat(5,3) = s_mat(3,5)
   s_mat(4,4) = real(0.0_ki, ki_nin)
   s_mat(4,5) = real(0.0_ki, ki_nin)
   s_mat(5,4) = s_mat(4,5)
   s_mat(5,5) = real(0.0_ki, ki_nin)
   !-----------#] initialize invariants


      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='12'>"
         end if
         call ninja_diagram(numerator_diagram12, numerator_t3_diagram12, numera&
         &tor_t2_diagram12, &
          &  numerator_tmu_diagram12, &
          & 5, 4, 3, (/1,2,4,5/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot =  + acc
         totr =  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='85'>"
         end if
         call ninja_diagram(numerator_diagram85, numerator_t3_diagram85, numera&
         &tor_t2_diagram85, &
          &  numerator_tmu_diagram85, &
          & 5, 5, 4, (/1,2,3,4,5/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
      !------#] sum over reduction of single diagrams:
end subroutine ninja_reduce_group4
!-----#] subroutine ninja_reduce_group4:
!-----#[ subroutine ninja_reduce_group5:
subroutine     ninja_reduce_group5(scale2,tot,totr,ok)
   use iso_c_binding, only: c_ptr, c_loc, c_int
   use ninjago_module
   use p0_dbaru_epnebbbarg_kinematics
   use p0_dbaru_epnebbbarg_model
   use p0_dbaru_epnebbbarg_d15h2l1, only: numerator_diagram15 => numerator_ninja
   use p0_dbaru_epnebbbarg_d15h2l121, only: numerator_tmu_diagram15 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d15h2l131, only: numerator_t3_diagram15 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d15h2l132, only: numerator_t2_diagram15 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_d83h2l1, only: numerator_diagram83 => numerator_ninja
   use p0_dbaru_epnebbbarg_d83h2l121, only: numerator_tmu_diagram83 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d83h2l131, only: numerator_t3_diagram83 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d83h2l132, only: numerator_t2_diagram83 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_globalsl1, only: epspow

   implicit none
   real(ki_nin), intent(in) :: scale2
   complex(ki_nin), dimension(-2:0), intent(out) :: tot
   complex(ki_nin), intent(out) :: totr
   logical, intent(out) :: ok

   complex(ki_nin), dimension(-2:0) :: acc
   complex(ki_nin) :: accr
   integer(c_int) :: acc_ok

   integer :: istopm, istop0

   integer, parameter :: effective_group_rank = 4

   !-----------#[ invariants for ninja:
   real(ki_nin), dimension(5,5) :: s_mat
   !-----------#] initialize invariants:
   real(ki_nin), dimension(5) :: msq
   real(ki_nin), dimension(4,5) :: Vi

   ok = .true.

   if (ninja_test.eq.1) then
      istopm = 1
      istop0 = 1
   else
      istopm = ninja_istop
      istop0 = max(2,ninja_istop)
   end if
   msq(1) = 0.0_ki_nin
   Vi(:,1) = real(-k3-k7-k4, ki_nin)
   msq(2) = 0.0_ki_nin
   Vi(:,2) = real(-k3-k7-k6-k5-k4, ki_nin)
   msq(3) = 0.0_ki_nin
   Vi(:,3) = real(-k2, ki_nin)
   msq(4) = 0.0_ki_nin
   Vi(:,4) = real(0, ki_nin)
   msq(5) = 0.0_ki_nin
   Vi(:,5) = real(-k7, ki_nin)
   !-----------#[ initialize invariants:
   s_mat(1,1) = real(0.0_ki, ki_nin)
   s_mat(1,2) = real(es56, ki_nin)
   s_mat(2,1) = s_mat(1,2)
   s_mat(1,3) = real(-es567+es56+es234-es71, ki_nin)
   s_mat(3,1) = s_mat(1,3)
   s_mat(1,4) = real(es34-es567+es56+es12-es712, ki_nin)
   s_mat(4,1) = s_mat(1,4)
   s_mat(1,5) = real(es34, ki_nin)
   s_mat(5,1) = s_mat(1,5)
   s_mat(2,2) = real(0.0_ki, ki_nin)
   s_mat(2,3) = real(0.0_ki, ki_nin)
   s_mat(3,2) = s_mat(2,3)
   s_mat(2,4) = real(es12, ki_nin)
   s_mat(4,2) = s_mat(2,4)
   s_mat(2,5) = real(es712, ki_nin)
   s_mat(5,2) = s_mat(2,5)
   s_mat(3,3) = real(0.0_ki, ki_nin)
   s_mat(3,4) = real(0.0_ki, ki_nin)
   s_mat(4,3) = s_mat(3,4)
   s_mat(3,5) = real(-es12-es71+es712, ki_nin)
   s_mat(5,3) = s_mat(3,5)
   s_mat(4,4) = real(0.0_ki, ki_nin)
   s_mat(4,5) = real(0.0_ki, ki_nin)
   s_mat(5,4) = s_mat(4,5)
   s_mat(5,5) = real(0.0_ki, ki_nin)
   !-----------#] initialize invariants


      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='15'>"
         end if
         call ninja_diagram(numerator_diagram15, numerator_t3_diagram15, numera&
         &tor_t2_diagram15, &
          &  numerator_tmu_diagram15, &
          & 5, 4, 3, (/1,2,3,5/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot =  + acc
         totr =  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='83'>"
         end if
         call ninja_diagram(numerator_diagram83, numerator_t3_diagram83, numera&
         &tor_t2_diagram83, &
          &  numerator_tmu_diagram83, &
          & 5, 5, 4, (/1,2,3,4,5/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
      !------#] sum over reduction of single diagrams:
end subroutine ninja_reduce_group5
!-----#] subroutine ninja_reduce_group5:
!-----#[ subroutine ninja_reduce_group6:
subroutine     ninja_reduce_group6(scale2,tot,totr,ok)
   use iso_c_binding, only: c_ptr, c_loc, c_int
   use ninjago_module
   use p0_dbaru_epnebbbarg_kinematics
   use p0_dbaru_epnebbbarg_model
   use p0_dbaru_epnebbbarg_d14h2l1, only: numerator_diagram14 => numerator_ninja
   use p0_dbaru_epnebbbarg_d14h2l121, only: numerator_tmu_diagram14 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d14h2l131, only: numerator_t3_diagram14 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d14h2l132, only: numerator_t2_diagram14 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_d82h2l1, only: numerator_diagram82 => numerator_ninja
   use p0_dbaru_epnebbbarg_d82h2l121, only: numerator_tmu_diagram82 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d82h2l131, only: numerator_t3_diagram82 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d82h2l132, only: numerator_t2_diagram82 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_globalsl1, only: epspow

   implicit none
   real(ki_nin), intent(in) :: scale2
   complex(ki_nin), dimension(-2:0), intent(out) :: tot
   complex(ki_nin), intent(out) :: totr
   logical, intent(out) :: ok

   complex(ki_nin), dimension(-2:0) :: acc
   complex(ki_nin) :: accr
   integer(c_int) :: acc_ok

   integer :: istopm, istop0

   integer, parameter :: effective_group_rank = 4

   !-----------#[ invariants for ninja:
   real(ki_nin), dimension(5,5) :: s_mat
   !-----------#] initialize invariants:
   real(ki_nin), dimension(5) :: msq
   real(ki_nin), dimension(4,5) :: Vi

   ok = .true.

   if (ninja_test.eq.1) then
      istopm = 1
      istop0 = 1
   else
      istopm = ninja_istop
      istop0 = max(2,ninja_istop)
   end if
   msq(1) = 0.0_ki_nin
   Vi(:,1) = real(-k7-k6-k5, ki_nin)
   msq(2) = 0.0_ki_nin
   Vi(:,2) = real(-k7, ki_nin)
   msq(3) = 0.0_ki_nin
   Vi(:,3) = real(0, ki_nin)
   msq(4) = 0.0_ki_nin
   Vi(:,4) = real(-k2, ki_nin)
   msq(5) = 0.0_ki_nin
   Vi(:,5) = real(-k3-k7-k6-k5-k4, ki_nin)
   !-----------#[ initialize invariants:
   s_mat(1,1) = real(0.0_ki, ki_nin)
   s_mat(1,2) = real(es56, ki_nin)
   s_mat(2,1) = s_mat(1,2)
   s_mat(1,3) = real(es567, ki_nin)
   s_mat(3,1) = s_mat(1,3)
   s_mat(1,4) = real(es34+es567-es234-es12, ki_nin)
   s_mat(4,1) = s_mat(1,4)
   s_mat(1,5) = real(es34, ki_nin)
   s_mat(5,1) = s_mat(1,5)
   s_mat(2,2) = real(0.0_ki, ki_nin)
   s_mat(2,3) = real(0.0_ki, ki_nin)
   s_mat(3,2) = s_mat(2,3)
   s_mat(2,4) = real(-es12-es71+es712, ki_nin)
   s_mat(4,2) = s_mat(2,4)
   s_mat(2,5) = real(es712, ki_nin)
   s_mat(5,2) = s_mat(2,5)
   s_mat(3,3) = real(0.0_ki, ki_nin)
   s_mat(3,4) = real(0.0_ki, ki_nin)
   s_mat(4,3) = s_mat(3,4)
   s_mat(3,5) = real(es12, ki_nin)
   s_mat(5,3) = s_mat(3,5)
   s_mat(4,4) = real(0.0_ki, ki_nin)
   s_mat(4,5) = real(0.0_ki, ki_nin)
   s_mat(5,4) = s_mat(4,5)
   s_mat(5,5) = real(0.0_ki, ki_nin)
   !-----------#] initialize invariants


      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='14'>"
         end if
         call ninja_diagram(numerator_diagram14, numerator_t3_diagram14, numera&
         &tor_t2_diagram14, &
          &  numerator_tmu_diagram14, &
          & 5, 4, 3, (/1,2,4,5/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot =  + acc
         totr =  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='82'>"
         end if
         call ninja_diagram(numerator_diagram82, numerator_t3_diagram82, numera&
         &tor_t2_diagram82, &
          &  numerator_tmu_diagram82, &
          & 5, 5, 4, (/1,2,3,4,5/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
      !------#] sum over reduction of single diagrams:
end subroutine ninja_reduce_group6
!-----#] subroutine ninja_reduce_group6:
!-----#[ subroutine ninja_reduce_group7:
subroutine     ninja_reduce_group7(scale2,tot,totr,ok)
   use iso_c_binding, only: c_ptr, c_loc, c_int
   use ninjago_module
   use p0_dbaru_epnebbbarg_kinematics
   use p0_dbaru_epnebbbarg_model
   use p0_dbaru_epnebbbarg_d68h2l1, only: numerator_diagram68 => numerator_ninja
   use p0_dbaru_epnebbbarg_d68h2l121, only: numerator_tmu_diagram68 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d68h2l131, only: numerator_t3_diagram68 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d68h2l132, only: numerator_t2_diagram68 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_globalsl1, only: epspow

   implicit none
   real(ki_nin), intent(in) :: scale2
   complex(ki_nin), dimension(-2:0), intent(out) :: tot
   complex(ki_nin), intent(out) :: totr
   logical, intent(out) :: ok

   complex(ki_nin), dimension(-2:0) :: acc
   complex(ki_nin) :: accr
   integer(c_int) :: acc_ok

   integer :: istopm, istop0

   integer, parameter :: effective_group_rank = 4

   !-----------#[ invariants for ninja:
   real(ki_nin), dimension(5,5) :: s_mat
   !-----------#] initialize invariants:
   real(ki_nin), dimension(5) :: msq
   real(ki_nin), dimension(4,5) :: Vi

   ok = .true.

   if (ninja_test.eq.1) then
      istopm = 1
      istop0 = 1
   else
      istopm = ninja_istop
      istop0 = max(2,ninja_istop)
   end if
   msq(1) = 0.0_ki_nin
   Vi(:,1) = real(-k3-k4, ki_nin)
   msq(2) = 0.0_ki_nin
   Vi(:,2) = real(-k3-k7-k4, ki_nin)
   msq(3) = 0.0_ki_nin
   Vi(:,3) = real(-k3-k7-k6-k5-k4, ki_nin)
   msq(4) = 0.0_ki_nin
   Vi(:,4) = real(-k2, ki_nin)
   msq(5) = 0.0_ki_nin
   Vi(:,5) = real(0, ki_nin)
   !-----------#[ initialize invariants:
   s_mat(1,1) = real(0.0_ki, ki_nin)
   s_mat(1,2) = real(0.0_ki, ki_nin)
   s_mat(2,1) = s_mat(1,2)
   s_mat(1,3) = real(es567, ki_nin)
   s_mat(3,1) = s_mat(1,3)
   s_mat(1,4) = real(es234, ki_nin)
   s_mat(4,1) = s_mat(1,4)
   s_mat(1,5) = real(es34, ki_nin)
   s_mat(5,1) = s_mat(1,5)
   s_mat(2,2) = real(0.0_ki, ki_nin)
   s_mat(2,3) = real(es56, ki_nin)
   s_mat(3,2) = s_mat(2,3)
   s_mat(2,4) = real(-es567+es56+es234-es71, ki_nin)
   s_mat(4,2) = s_mat(2,4)
   s_mat(2,5) = real(es34-es567+es56+es12-es712, ki_nin)
   s_mat(5,2) = s_mat(2,5)
   s_mat(3,3) = real(0.0_ki, ki_nin)
   s_mat(3,4) = real(0.0_ki, ki_nin)
   s_mat(4,3) = s_mat(3,4)
   s_mat(3,5) = real(es12, ki_nin)
   s_mat(5,3) = s_mat(3,5)
   s_mat(4,4) = real(0.0_ki, ki_nin)
   s_mat(4,5) = real(0.0_ki, ki_nin)
   s_mat(5,4) = s_mat(4,5)
   s_mat(5,5) = real(0.0_ki, ki_nin)
   !-----------#] initialize invariants


      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='68'>"
         end if
         call ninja_diagram(numerator_diagram68, numerator_t3_diagram68, numera&
         &tor_t2_diagram68, &
          &  numerator_tmu_diagram68, &
          & 5, 5, 4, (/1,2,3,4,5/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot =  + acc
         totr =  + accr
      !------#] sum over reduction of single diagrams:
end subroutine ninja_reduce_group7
!-----#] subroutine ninja_reduce_group7:
!-----#[ subroutine ninja_reduce_group8:
subroutine     ninja_reduce_group8(scale2,tot,totr,ok)
   use iso_c_binding, only: c_ptr, c_loc, c_int
   use ninjago_module
   use p0_dbaru_epnebbbarg_kinematics
   use p0_dbaru_epnebbbarg_model
   use p0_dbaru_epnebbbarg_d80h2l1, only: numerator_diagram80 => numerator_ninja
   use p0_dbaru_epnebbbarg_d80h2l121, only: numerator_tmu_diagram80 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d80h2l131, only: numerator_t3_diagram80 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d80h2l132, only: numerator_t2_diagram80 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_d128h2l1, only: numerator_diagram128 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d128h2l121, only: numerator_tmu_diagram128 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d128h2l131, only: numerator_t3_diagram128 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d128h2l132, only: numerator_t2_diagram128 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_globalsl1, only: epspow

   implicit none
   real(ki_nin), intent(in) :: scale2
   complex(ki_nin), dimension(-2:0), intent(out) :: tot
   complex(ki_nin), intent(out) :: totr
   logical, intent(out) :: ok

   complex(ki_nin), dimension(-2:0) :: acc
   complex(ki_nin) :: accr
   integer(c_int) :: acc_ok

   integer :: istopm, istop0

   integer, parameter :: effective_group_rank = 4

   !-----------#[ invariants for ninja:
   real(ki_nin), dimension(5,5) :: s_mat
   !-----------#] initialize invariants:
   real(ki_nin), dimension(5) :: msq
   real(ki_nin), dimension(4,5) :: Vi

   ok = .true.

   if (ninja_test.eq.1) then
      istopm = 1
      istop0 = 1
   else
      istopm = ninja_istop
      istop0 = max(2,ninja_istop)
   end if
   msq(1) = 0.0_ki_nin
   Vi(:,1) = real(-k3-k4, ki_nin)
   msq(2) = 0.0_ki_nin
   Vi(:,2) = real(-k3-k6-k5-k4, ki_nin)
   msq(3) = 0.0_ki_nin
   Vi(:,3) = real(-k3-k7-k6-k5-k4, ki_nin)
   msq(4) = 0.0_ki_nin
   Vi(:,4) = real(-k2, ki_nin)
   msq(5) = 0.0_ki_nin
   Vi(:,5) = real(0, ki_nin)
   !-----------#[ initialize invariants:
   s_mat(1,1) = real(0.0_ki, ki_nin)
   s_mat(1,2) = real(es56, ki_nin)
   s_mat(2,1) = s_mat(1,2)
   s_mat(1,3) = real(es567, ki_nin)
   s_mat(3,1) = s_mat(1,3)
   s_mat(1,4) = real(es234, ki_nin)
   s_mat(4,1) = s_mat(1,4)
   s_mat(1,5) = real(es34, ki_nin)
   s_mat(5,1) = s_mat(1,5)
   s_mat(2,2) = real(0.0_ki, ki_nin)
   s_mat(2,3) = real(0.0_ki, ki_nin)
   s_mat(3,2) = s_mat(2,3)
   s_mat(2,4) = real(es71, ki_nin)
   s_mat(4,2) = s_mat(2,4)
   s_mat(2,5) = real(es712, ki_nin)
   s_mat(5,2) = s_mat(2,5)
   s_mat(3,3) = real(0.0_ki, ki_nin)
   s_mat(3,4) = real(0.0_ki, ki_nin)
   s_mat(4,3) = s_mat(3,4)
   s_mat(3,5) = real(es12, ki_nin)
   s_mat(5,3) = s_mat(3,5)
   s_mat(4,4) = real(0.0_ki, ki_nin)
   s_mat(4,5) = real(0.0_ki, ki_nin)
   s_mat(5,4) = s_mat(4,5)
   s_mat(5,5) = real(0.0_ki, ki_nin)
   !-----------#] initialize invariants


      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='80'>"
         end if
         call ninja_diagram(numerator_diagram80, numerator_t3_diagram80, numera&
         &tor_t2_diagram80, &
          &  numerator_tmu_diagram80, &
          & 5, 5, 4, (/1,2,3,4,5/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot =  + acc
         totr =  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='128'>"
         end if
         call ninja_diagram(numerator_diagram128, numerator_t3_diagram128, nume&
         &rator_t2_diagram128, &
          &  numerator_tmu_diagram128, &
          & 5, 4, 3, (/1,3,4,5/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
      !------#] sum over reduction of single diagrams:
end subroutine ninja_reduce_group8
!-----#] subroutine ninja_reduce_group8:
!-----#[ subroutine ninja_reduce_group9:
subroutine     ninja_reduce_group9(scale2,tot,totr,ok)
   use iso_c_binding, only: c_ptr, c_loc, c_int
   use ninjago_module
   use p0_dbaru_epnebbbarg_kinematics
   use p0_dbaru_epnebbbarg_model
   use p0_dbaru_epnebbbarg_d66h2l1, only: numerator_diagram66 => numerator_ninja
   use p0_dbaru_epnebbbarg_d66h2l121, only: numerator_tmu_diagram66 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d66h2l131, only: numerator_t3_diagram66 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d66h2l132, only: numerator_t2_diagram66 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_d127h2l1, only: numerator_diagram127 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d127h2l121, only: numerator_tmu_diagram127 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d127h2l131, only: numerator_t3_diagram127 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d127h2l132, only: numerator_t2_diagram127 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_globalsl1, only: epspow

   implicit none
   real(ki_nin), intent(in) :: scale2
   complex(ki_nin), dimension(-2:0), intent(out) :: tot
   complex(ki_nin), intent(out) :: totr
   logical, intent(out) :: ok

   complex(ki_nin), dimension(-2:0) :: acc
   complex(ki_nin) :: accr
   integer(c_int) :: acc_ok

   integer :: istopm, istop0

   integer, parameter :: effective_group_rank = 4

   !-----------#[ invariants for ninja:
   real(ki_nin), dimension(5,5) :: s_mat
   !-----------#] initialize invariants:
   real(ki_nin), dimension(5) :: msq
   real(ki_nin), dimension(4,5) :: Vi

   ok = .true.

   if (ninja_test.eq.1) then
      istopm = 1
      istop0 = 1
   else
      istopm = ninja_istop
      istop0 = max(2,ninja_istop)
   end if
   msq(1) = 0.0_ki_nin
   Vi(:,1) = real(-k7-k6-k5, ki_nin)
   msq(2) = 0.0_ki_nin
   Vi(:,2) = real(-k6-k5, ki_nin)
   msq(3) = 0.0_ki_nin
   Vi(:,3) = real(0, ki_nin)
   msq(4) = 0.0_ki_nin
   Vi(:,4) = real(-k2, ki_nin)
   msq(5) = 0.0_ki_nin
   Vi(:,5) = real(-k3-k7-k6-k5-k4, ki_nin)
   !-----------#[ initialize invariants:
   s_mat(1,1) = real(0.0_ki, ki_nin)
   s_mat(1,2) = real(0.0_ki, ki_nin)
   s_mat(2,1) = s_mat(1,2)
   s_mat(1,3) = real(es567, ki_nin)
   s_mat(3,1) = s_mat(1,3)
   s_mat(1,4) = real(es34+es567-es234-es12, ki_nin)
   s_mat(4,1) = s_mat(1,4)
   s_mat(1,5) = real(es34, ki_nin)
   s_mat(5,1) = s_mat(1,5)
   s_mat(2,2) = real(0.0_ki, ki_nin)
   s_mat(2,3) = real(es56, ki_nin)
   s_mat(3,2) = s_mat(2,3)
   s_mat(2,4) = real(es34+es56-es234+es71-es712, ki_nin)
   s_mat(4,2) = s_mat(2,4)
   s_mat(2,5) = real(es34-es567+es56+es12-es712, ki_nin)
   s_mat(5,2) = s_mat(2,5)
   s_mat(3,3) = real(0.0_ki, ki_nin)
   s_mat(3,4) = real(0.0_ki, ki_nin)
   s_mat(4,3) = s_mat(3,4)
   s_mat(3,5) = real(es12, ki_nin)
   s_mat(5,3) = s_mat(3,5)
   s_mat(4,4) = real(0.0_ki, ki_nin)
   s_mat(4,5) = real(0.0_ki, ki_nin)
   s_mat(5,4) = s_mat(4,5)
   s_mat(5,5) = real(0.0_ki, ki_nin)
   !-----------#] initialize invariants


      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='66'>"
         end if
         call ninja_diagram(numerator_diagram66, numerator_t3_diagram66, numera&
         &tor_t2_diagram66, &
          &  numerator_tmu_diagram66, &
          & 5, 5, 4, (/1,2,3,4,5/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot =  + acc
         totr =  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='127'>"
         end if
         call ninja_diagram(numerator_diagram127, numerator_t3_diagram127, nume&
         &rator_t2_diagram127, &
          &  numerator_tmu_diagram127, &
          & 5, 4, 3, (/1,3,4,5/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
      !------#] sum over reduction of single diagrams:
end subroutine ninja_reduce_group9
!-----#] subroutine ninja_reduce_group9:
!-----#[ subroutine ninja_reduce_group10:
subroutine     ninja_reduce_group10(scale2,tot,totr,ok)
   use iso_c_binding, only: c_ptr, c_loc, c_int
   use ninjago_module
   use p0_dbaru_epnebbbarg_kinematics
   use p0_dbaru_epnebbbarg_model
   use p0_dbaru_epnebbbarg_d81h2l1, only: numerator_diagram81 => numerator_ninja
   use p0_dbaru_epnebbbarg_d81h2l121, only: numerator_tmu_diagram81 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d81h2l131, only: numerator_t3_diagram81 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d81h2l132, only: numerator_t2_diagram81 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_globalsl1, only: epspow

   implicit none
   real(ki_nin), intent(in) :: scale2
   complex(ki_nin), dimension(-2:0), intent(out) :: tot
   complex(ki_nin), intent(out) :: totr
   logical, intent(out) :: ok

   complex(ki_nin), dimension(-2:0) :: acc
   complex(ki_nin) :: accr
   integer(c_int) :: acc_ok

   integer :: istopm, istop0

   integer, parameter :: effective_group_rank = 4

   !-----------#[ invariants for ninja:
   real(ki_nin), dimension(5,5) :: s_mat
   !-----------#] initialize invariants:
   real(ki_nin), dimension(5) :: msq
   real(ki_nin), dimension(4,5) :: Vi

   ok = .true.

   if (ninja_test.eq.1) then
      istopm = 1
      istop0 = 1
   else
      istopm = ninja_istop
      istop0 = max(2,ninja_istop)
   end if
   msq(1) = 0.0_ki_nin
   Vi(:,1) = real(-k6-k5, ki_nin)
   msq(2) = 0.0_ki_nin
   Vi(:,2) = real(0, ki_nin)
   msq(3) = 0.0_ki_nin
   Vi(:,3) = real(-k2, ki_nin)
   msq(4) = 0.0_ki_nin
   Vi(:,4) = real(-k3-k7-k6-k5-k4, ki_nin)
   msq(5) = 0.0_ki_nin
   Vi(:,5) = real(-k3-k6-k5-k4, ki_nin)
   !-----------#[ initialize invariants:
   s_mat(1,1) = real(0.0_ki, ki_nin)
   s_mat(1,2) = real(es56, ki_nin)
   s_mat(2,1) = s_mat(1,2)
   s_mat(1,3) = real(es34+es56-es234+es71-es712, ki_nin)
   s_mat(3,1) = s_mat(1,3)
   s_mat(1,4) = real(es34-es567+es56+es12-es712, ki_nin)
   s_mat(4,1) = s_mat(1,4)
   s_mat(1,5) = real(es34, ki_nin)
   s_mat(5,1) = s_mat(1,5)
   s_mat(2,2) = real(0.0_ki, ki_nin)
   s_mat(2,3) = real(0.0_ki, ki_nin)
   s_mat(3,2) = s_mat(2,3)
   s_mat(2,4) = real(es12, ki_nin)
   s_mat(4,2) = s_mat(2,4)
   s_mat(2,5) = real(es712, ki_nin)
   s_mat(5,2) = s_mat(2,5)
   s_mat(3,3) = real(0.0_ki, ki_nin)
   s_mat(3,4) = real(0.0_ki, ki_nin)
   s_mat(4,3) = s_mat(3,4)
   s_mat(3,5) = real(es71, ki_nin)
   s_mat(5,3) = s_mat(3,5)
   s_mat(4,4) = real(0.0_ki, ki_nin)
   s_mat(4,5) = real(0.0_ki, ki_nin)
   s_mat(5,4) = s_mat(4,5)
   s_mat(5,5) = real(0.0_ki, ki_nin)
   !-----------#] initialize invariants


      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='81'>"
         end if
         call ninja_diagram(numerator_diagram81, numerator_t3_diagram81, numera&
         &tor_t2_diagram81, &
          &  numerator_tmu_diagram81, &
          & 5, 5, 4, (/1,2,3,4,5/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot =  + acc
         totr =  + accr
      !------#] sum over reduction of single diagrams:
end subroutine ninja_reduce_group10
!-----#] subroutine ninja_reduce_group10:
!-----#[ subroutine ninja_reduce_group11:
subroutine     ninja_reduce_group11(scale2,tot,totr,ok)
   use iso_c_binding, only: c_ptr, c_loc, c_int
   use ninjago_module
   use p0_dbaru_epnebbbarg_kinematics
   use p0_dbaru_epnebbbarg_model
   use p0_dbaru_epnebbbarg_d79h2l1, only: numerator_diagram79 => numerator_ninja
   use p0_dbaru_epnebbbarg_d79h2l121, only: numerator_tmu_diagram79 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d79h2l131, only: numerator_t3_diagram79 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d79h2l132, only: numerator_t2_diagram79 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_d109h2l1, only: numerator_diagram109 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d109h2l121, only: numerator_tmu_diagram109 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d109h2l131, only: numerator_t3_diagram109 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d109h2l132, only: numerator_t2_diagram109 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d292h2l1, only: numerator_diagram292 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d292h2l121, only: numerator_tmu_diagram292 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d292h2l131, only: numerator_t3_diagram292 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d292h2l132, only: numerator_t2_diagram292 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d301h2l1, only: numerator_diagram301 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d301h2l121, only: numerator_tmu_diagram301 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d301h2l131, only: numerator_t3_diagram301 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d301h2l132, only: numerator_t2_diagram301 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_globalsl1, only: epspow

   implicit none
   real(ki_nin), intent(in) :: scale2
   complex(ki_nin), dimension(-2:0), intent(out) :: tot
   complex(ki_nin), intent(out) :: totr
   logical, intent(out) :: ok

   complex(ki_nin), dimension(-2:0) :: acc
   complex(ki_nin) :: accr
   integer(c_int) :: acc_ok

   integer :: istopm, istop0

   integer, parameter :: effective_group_rank = 4

   !-----------#[ invariants for ninja:
   real(ki_nin), dimension(6,6) :: s_mat
   !-----------#] initialize invariants:
   real(ki_nin), dimension(6) :: msq
   real(ki_nin), dimension(4,6) :: Vi

   ok = .true.

   if (ninja_test.eq.1) then
      istopm = 1
      istop0 = 1
   else
      istopm = ninja_istop
      istop0 = max(2,ninja_istop)
   end if
   msq(1) = 0.0_ki_nin
   Vi(:,1) = real(k3-k2+k7+k4, ki_nin)
   msq(2) = 0.0_ki_nin
   Vi(:,2) = real(-k6-k5, ki_nin)
   msq(3) = real(mB*mB, ki_nin)
   Vi(:,3) = real(-k5, ki_nin)
   msq(4) = 0.0_ki_nin
   Vi(:,4) = real(0, ki_nin)
   msq(5) = 0.0_ki_nin
   Vi(:,5) = real(-k2, ki_nin)
   msq(6) = 0.0_ki_nin
   Vi(:,6) = real(-k2+k7, ki_nin)
   !-----------#[ initialize invariants:
   s_mat(1,1) = real(0.0_ki, ki_nin)
   s_mat(1,2) = real(0.0_ki, ki_nin)
   s_mat(2,1) = s_mat(1,2)
   s_mat(1,3) = real(es671-es67-es71, ki_nin)
   s_mat(3,1) = s_mat(1,3)
   s_mat(1,4) = real(-es567+es56+es234-es71, ki_nin)
   s_mat(4,1) = s_mat(1,4)
   s_mat(1,5) = real(es34-es567+es56+es12-es712, ki_nin)
   s_mat(5,1) = s_mat(1,5)
   s_mat(1,6) = real(es34, ki_nin)
   s_mat(6,1) = s_mat(1,6)
   s_mat(2,2) = real(0.0_ki, ki_nin)
   s_mat(2,3) = real(0.0_ki, ki_nin)
   s_mat(3,2) = s_mat(2,3)
   s_mat(2,4) = real(es56, ki_nin)
   s_mat(4,2) = s_mat(2,4)
   s_mat(2,5) = real(es34+es56-es234+es71-es712, ki_nin)
   s_mat(5,2) = s_mat(2,5)
   s_mat(2,6) = real(es34+es567-es234-es12, ki_nin)
   s_mat(6,2) = s_mat(2,6)
   s_mat(3,3) = real(-2.0_ki*mB**2, ki_nin)
   s_mat(3,4) = real(0.0_ki, ki_nin)
   s_mat(4,3) = s_mat(3,4)
   s_mat(3,5) = real(-es234-es345+es34+es671, ki_nin)
   s_mat(5,3) = s_mat(3,5)
   s_mat(3,6) = real(es34+es671+es567-es56-es234-es345-es67+mB**2-es12-es71+es7&
   &12, ki_nin)
   s_mat(6,3) = s_mat(3,6)
   s_mat(4,4) = real(0.0_ki, ki_nin)
   s_mat(4,5) = real(0.0_ki, ki_nin)
   s_mat(5,4) = s_mat(4,5)
   s_mat(4,6) = real(-es12-es71+es712, ki_nin)
   s_mat(6,4) = s_mat(4,6)
   s_mat(5,5) = real(0.0_ki, ki_nin)
   s_mat(5,6) = real(0.0_ki, ki_nin)
   s_mat(6,5) = s_mat(5,6)
   s_mat(6,6) = real(0.0_ki, ki_nin)
   !-----------#] initialize invariants


      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='79'>"
         end if
         call ninja_diagram(numerator_diagram79, numerator_t3_diagram79, numera&
         &tor_t2_diagram79, &
          &  numerator_tmu_diagram79, &
          & 6, 5, 3, (/1,2,3,4,6/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot =  + acc
         totr =  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='109'>"
         end if
         call ninja_diagram(numerator_diagram109, numerator_t3_diagram109, nume&
         &rator_t2_diagram109, &
          &  numerator_tmu_diagram109, &
          & 6, 4, 2, (/2,3,4,6/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='292'>"
         end if
         call ninja_diagram(numerator_diagram292, numerator_t3_diagram292, nume&
         &rator_t2_diagram292, &
          &  numerator_tmu_diagram292, &
          & 6, 6, 4, (/1,2,3,4,5,6/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='301'>"
         end if
         call ninja_diagram(numerator_diagram301, numerator_t3_diagram301, nume&
         &rator_t2_diagram301, &
          &  numerator_tmu_diagram301, &
          & 6, 5, 3, (/2,3,4,5,6/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
      !------#] sum over reduction of single diagrams:
end subroutine ninja_reduce_group11
!-----#] subroutine ninja_reduce_group11:
!-----#[ subroutine ninja_reduce_group12:
subroutine     ninja_reduce_group12(scale2,tot,totr,ok)
   use iso_c_binding, only: c_ptr, c_loc, c_int
   use ninjago_module
   use p0_dbaru_epnebbbarg_kinematics
   use p0_dbaru_epnebbbarg_model
   use p0_dbaru_epnebbbarg_d298h2l1, only: numerator_diagram298 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d298h2l121, only: numerator_tmu_diagram298 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d298h2l131, only: numerator_t3_diagram298 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d298h2l132, only: numerator_t2_diagram298 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d303h2l1, only: numerator_diagram303 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d303h2l121, only: numerator_tmu_diagram303 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d303h2l131, only: numerator_t3_diagram303 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d303h2l132, only: numerator_t2_diagram303 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d316h2l1, only: numerator_diagram316 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d316h2l121, only: numerator_tmu_diagram316 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d316h2l131, only: numerator_t3_diagram316 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d316h2l132, only: numerator_t2_diagram316 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_globalsl1, only: epspow

   implicit none
   real(ki_nin), intent(in) :: scale2
   complex(ki_nin), dimension(-2:0), intent(out) :: tot
   complex(ki_nin), intent(out) :: totr
   logical, intent(out) :: ok

   complex(ki_nin), dimension(-2:0) :: acc
   complex(ki_nin) :: accr
   integer(c_int) :: acc_ok

   integer :: istopm, istop0

   integer, parameter :: effective_group_rank = 4

   !-----------#[ invariants for ninja:
   real(ki_nin), dimension(6,6) :: s_mat
   !-----------#] initialize invariants:
   real(ki_nin), dimension(6) :: msq
   real(ki_nin), dimension(4,6) :: Vi

   ok = .true.

   if (ninja_test.eq.1) then
      istopm = 1
      istop0 = 1
   else
      istopm = ninja_istop
      istop0 = max(2,ninja_istop)
   end if
   msq(1) = 0.0_ki_nin
   Vi(:,1) = real(k3-k2+k4, ki_nin)
   msq(2) = 0.0_ki_nin
   Vi(:,2) = real(-k7-k6-k5, ki_nin)
   msq(3) = 0.0_ki_nin
   Vi(:,3) = real(-k6-k5, ki_nin)
   msq(4) = real(mB*mB, ki_nin)
   Vi(:,4) = real(-k5, ki_nin)
   msq(5) = 0.0_ki_nin
   Vi(:,5) = real(0, ki_nin)
   msq(6) = 0.0_ki_nin
   Vi(:,6) = real(-k2, ki_nin)
   !-----------#[ initialize invariants:
   s_mat(1,1) = real(0.0_ki, ki_nin)
   s_mat(1,2) = real(0.0_ki, ki_nin)
   s_mat(2,1) = s_mat(1,2)
   s_mat(1,3) = real(es71, ki_nin)
   s_mat(3,1) = s_mat(1,3)
   s_mat(1,4) = real(es671-mB**2, ki_nin)
   s_mat(4,1) = s_mat(1,4)
   s_mat(1,5) = real(es234, ki_nin)
   s_mat(5,1) = s_mat(1,5)
   s_mat(1,6) = real(es34, ki_nin)
   s_mat(6,1) = s_mat(1,6)
   s_mat(2,2) = real(0.0_ki, ki_nin)
   s_mat(2,3) = real(0.0_ki, ki_nin)
   s_mat(3,2) = s_mat(2,3)
   s_mat(2,4) = real(-mB**2+es67, ki_nin)
   s_mat(4,2) = s_mat(2,4)
   s_mat(2,5) = real(es567, ki_nin)
   s_mat(5,2) = s_mat(2,5)
   s_mat(2,6) = real(es34+es567-es234-es12, ki_nin)
   s_mat(6,2) = s_mat(2,6)
   s_mat(3,3) = real(0.0_ki, ki_nin)
   s_mat(3,4) = real(0.0_ki, ki_nin)
   s_mat(4,3) = s_mat(3,4)
   s_mat(3,5) = real(es56, ki_nin)
   s_mat(5,3) = s_mat(3,5)
   s_mat(3,6) = real(es34+es56-es234+es71-es712, ki_nin)
   s_mat(6,3) = s_mat(3,6)
   s_mat(4,4) = real(-2.0_ki*mB**2, ki_nin)
   s_mat(4,5) = real(0.0_ki, ki_nin)
   s_mat(5,4) = s_mat(4,5)
   s_mat(4,6) = real(-es234-es345+es34+es671, ki_nin)
   s_mat(6,4) = s_mat(4,6)
   s_mat(5,5) = real(0.0_ki, ki_nin)
   s_mat(5,6) = real(0.0_ki, ki_nin)
   s_mat(6,5) = s_mat(5,6)
   s_mat(6,6) = real(0.0_ki, ki_nin)
   !-----------#] initialize invariants


      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='298'>"
         end if
         call ninja_diagram(numerator_diagram298, numerator_t3_diagram298, nume&
         &rator_t2_diagram298, &
          &  numerator_tmu_diagram298, &
          & 6, 6, 4, (/1,2,3,4,5,6/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot =  + acc
         totr =  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='303'>"
         end if
         call ninja_diagram(numerator_diagram303, numerator_t3_diagram303, nume&
         &rator_t2_diagram303, &
          &  numerator_tmu_diagram303, &
          & 6, 5, 3, (/2,3,4,5,6/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='316'>"
         end if
         call ninja_diagram(numerator_diagram316, numerator_t3_diagram316, nume&
         &rator_t2_diagram316, &
          &  numerator_tmu_diagram316, &
          & 6, 5, 3, (/1,2,3,4,5/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
      !------#] sum over reduction of single diagrams:
end subroutine ninja_reduce_group12
!-----#] subroutine ninja_reduce_group12:
!-----#[ subroutine ninja_reduce_group13:
subroutine     ninja_reduce_group13(scale2,tot,totr,ok)
   use iso_c_binding, only: c_ptr, c_loc, c_int
   use ninjago_module
   use p0_dbaru_epnebbbarg_kinematics
   use p0_dbaru_epnebbbarg_model
   use p0_dbaru_epnebbbarg_d16h2l1, only: numerator_diagram16 => numerator_ninja
   use p0_dbaru_epnebbbarg_d16h2l121, only: numerator_tmu_diagram16 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d16h2l131, only: numerator_t3_diagram16 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d16h2l132, only: numerator_t2_diagram16 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_d38h2l1, only: numerator_diagram38 => numerator_ninja
   use p0_dbaru_epnebbbarg_d38h2l121, only: numerator_tmu_diagram38 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d38h2l131, only: numerator_t3_diagram38 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d38h2l132, only: numerator_t2_diagram38 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_d42h2l1, only: numerator_diagram42 => numerator_ninja
   use p0_dbaru_epnebbbarg_d42h2l121, only: numerator_tmu_diagram42 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d42h2l131, only: numerator_t3_diagram42 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d42h2l132, only: numerator_t2_diagram42 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_d58h2l1, only: numerator_diagram58 => numerator_ninja
   use p0_dbaru_epnebbbarg_d58h2l121, only: numerator_tmu_diagram58 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d58h2l131, only: numerator_t3_diagram58 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d58h2l132, only: numerator_t2_diagram58 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_d70h2l1, only: numerator_diagram70 => numerator_ninja
   use p0_dbaru_epnebbbarg_d70h2l121, only: numerator_tmu_diagram70 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d70h2l131, only: numerator_t3_diagram70 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d70h2l132, only: numerator_t2_diagram70 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_d76h2l1, only: numerator_diagram76 => numerator_ninja
   use p0_dbaru_epnebbbarg_d76h2l121, only: numerator_tmu_diagram76 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d76h2l131, only: numerator_t3_diagram76 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d76h2l132, only: numerator_t2_diagram76 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_d90h2l1, only: numerator_diagram90 => numerator_ninja
   use p0_dbaru_epnebbbarg_d90h2l121, only: numerator_tmu_diagram90 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d90h2l131, only: numerator_t3_diagram90 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d90h2l132, only: numerator_t2_diagram90 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_d93h2l1, only: numerator_diagram93 => numerator_ninja
   use p0_dbaru_epnebbbarg_d93h2l121, only: numerator_tmu_diagram93 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d93h2l131, only: numerator_t3_diagram93 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d93h2l132, only: numerator_t2_diagram93 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_d102h2l1, only: numerator_diagram102 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d102h2l121, only: numerator_tmu_diagram102 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d102h2l131, only: numerator_t3_diagram102 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d102h2l132, only: numerator_t2_diagram102 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d108h2l1, only: numerator_diagram108 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d108h2l121, only: numerator_tmu_diagram108 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d108h2l131, only: numerator_t3_diagram108 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d108h2l132, only: numerator_t2_diagram108 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d115h2l1, only: numerator_diagram115 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d115h2l121, only: numerator_tmu_diagram115 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d115h2l131, only: numerator_t3_diagram115 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d115h2l132, only: numerator_t2_diagram115 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d126h2l1, only: numerator_diagram126 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d126h2l121, only: numerator_tmu_diagram126 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d126h2l131, only: numerator_t3_diagram126 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d126h2l132, only: numerator_t2_diagram126 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d139h2l1, only: numerator_diagram139 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d139h2l121, only: numerator_tmu_diagram139 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d139h2l131, only: numerator_t3_diagram139 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d139h2l132, only: numerator_t2_diagram139 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d227h2l1, only: numerator_diagram227 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d227h2l121, only: numerator_tmu_diagram227 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d227h2l131, only: numerator_t3_diagram227 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d227h2l132, only: numerator_t2_diagram227 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d295h2l1, only: numerator_diagram295 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d295h2l121, only: numerator_tmu_diagram295 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d295h2l131, only: numerator_t3_diagram295 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d295h2l132, only: numerator_t2_diagram295 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d310h2l1, only: numerator_diagram310 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d310h2l121, only: numerator_tmu_diagram310 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d310h2l131, only: numerator_t3_diagram310 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d310h2l132, only: numerator_t2_diagram310 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_globalsl1, only: epspow

   implicit none
   real(ki_nin), intent(in) :: scale2
   complex(ki_nin), dimension(-2:0), intent(out) :: tot
   complex(ki_nin), intent(out) :: totr
   logical, intent(out) :: ok

   complex(ki_nin), dimension(-2:0) :: acc
   complex(ki_nin) :: accr
   integer(c_int) :: acc_ok

   integer :: istopm, istop0

   integer, parameter :: effective_group_rank = 5

   !-----------#[ invariants for ninja:
   real(ki_nin), dimension(6,6) :: s_mat
   !-----------#] initialize invariants:
   real(ki_nin), dimension(6) :: msq
   real(ki_nin), dimension(4,6) :: Vi

   ok = .true.

   if (ninja_test.eq.1) then
      istopm = 1
      istop0 = 1
   else
      istopm = ninja_istop
      istop0 = max(2,ninja_istop)
   end if
   msq(1) = 0.0_ki_nin
   Vi(:,1) = real(-k2, ki_nin)
   msq(2) = 0.0_ki_nin
   Vi(:,2) = real(0, ki_nin)
   msq(3) = real(mB*mB, ki_nin)
   Vi(:,3) = real(-k5, ki_nin)
   msq(4) = 0.0_ki_nin
   Vi(:,4) = real(-k6-k5, ki_nin)
   msq(5) = 0.0_ki_nin
   Vi(:,5) = real(k3-k2+k7+k4, ki_nin)
   msq(6) = 0.0_ki_nin
   Vi(:,6) = real(k3-k2+k4, ki_nin)
   !-----------#[ initialize invariants:
   s_mat(1,1) = real(0.0_ki, ki_nin)
   s_mat(1,2) = real(0.0_ki, ki_nin)
   s_mat(2,1) = s_mat(1,2)
   s_mat(1,3) = real(-es234-es345+es34+es671, ki_nin)
   s_mat(3,1) = s_mat(1,3)
   s_mat(1,4) = real(es34+es56-es234+es71-es712, ki_nin)
   s_mat(4,1) = s_mat(1,4)
   s_mat(1,5) = real(es34-es567+es56+es12-es712, ki_nin)
   s_mat(5,1) = s_mat(1,5)
   s_mat(1,6) = real(es34, ki_nin)
   s_mat(6,1) = s_mat(1,6)
   s_mat(2,2) = real(0.0_ki, ki_nin)
   s_mat(2,3) = real(0.0_ki, ki_nin)
   s_mat(3,2) = s_mat(2,3)
   s_mat(2,4) = real(es56, ki_nin)
   s_mat(4,2) = s_mat(2,4)
   s_mat(2,5) = real(-es567+es56+es234-es71, ki_nin)
   s_mat(5,2) = s_mat(2,5)
   s_mat(2,6) = real(es234, ki_nin)
   s_mat(6,2) = s_mat(2,6)
   s_mat(3,3) = real(-2.0_ki*mB**2, ki_nin)
   s_mat(3,4) = real(0.0_ki, ki_nin)
   s_mat(4,3) = s_mat(3,4)
   s_mat(3,5) = real(es671-es67-es71, ki_nin)
   s_mat(5,3) = s_mat(3,5)
   s_mat(3,6) = real(es671-mB**2, ki_nin)
   s_mat(6,3) = s_mat(3,6)
   s_mat(4,4) = real(0.0_ki, ki_nin)
   s_mat(4,5) = real(0.0_ki, ki_nin)
   s_mat(5,4) = s_mat(4,5)
   s_mat(4,6) = real(es71, ki_nin)
   s_mat(6,4) = s_mat(4,6)
   s_mat(5,5) = real(0.0_ki, ki_nin)
   s_mat(5,6) = real(0.0_ki, ki_nin)
   s_mat(6,5) = s_mat(5,6)
   s_mat(6,6) = real(0.0_ki, ki_nin)
   !-----------#] initialize invariants


      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='16'>"
         end if
         call ninja_diagram(numerator_diagram16, numerator_t3_diagram16, numera&
         &tor_t2_diagram16, &
          &  numerator_tmu_diagram16, &
          & 6, 4, 3, (/1,2,4,6/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot =  + acc
         totr =  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='38'>"
         end if
         call ninja_diagram(numerator_diagram38, numerator_t3_diagram38, numera&
         &tor_t2_diagram38, &
          &  numerator_tmu_diagram38, &
          & 6, 3, 2, (/2,4,6/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='42'>"
         end if
         call ninja_diagram(numerator_diagram42, numerator_t3_diagram42, numera&
         &tor_t2_diagram42, &
          &  numerator_tmu_diagram42, &
          & 6, 3, 2, (/1,4,6/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='58'>"
         end if
         call ninja_diagram(numerator_diagram58, numerator_t3_diagram58, numera&
         &tor_t2_diagram58, &
          &  numerator_tmu_diagram58, &
          & 6, 2, 1, (/4,6/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='70'>"
         end if
         call ninja_diagram(numerator_diagram70, numerator_t3_diagram70, numera&
         &tor_t2_diagram70, &
          &  numerator_tmu_diagram70, &
          & 6, 5, 4, (/1,2,4,5,6/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='76'>"
         end if
         call ninja_diagram(numerator_diagram76, numerator_t3_diagram76, numera&
         &tor_t2_diagram76, &
          &  numerator_tmu_diagram76, &
          & 6, 5, 3, (/1,2,3,4,6/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='90'>"
         end if
         call ninja_diagram(numerator_diagram90, numerator_t3_diagram90, numera&
         &tor_t2_diagram90, &
          &  numerator_tmu_diagram90, &
          & 6, 4, 2, (/1,2,3,4/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='93'>"
         end if
         call ninja_diagram(numerator_diagram93, numerator_t3_diagram93, numera&
         &tor_t2_diagram93, &
          &  numerator_tmu_diagram93, &
          & 6, 4, 2, (/2,3,4,5/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='102'>"
         end if
         call ninja_diagram(numerator_diagram102, numerator_t3_diagram102, nume&
         &rator_t2_diagram102, &
          &  numerator_tmu_diagram102, &
          & 6, 4, 3, (/1,2,5,6/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='108'>"
         end if
         call ninja_diagram(numerator_diagram108, numerator_t3_diagram108, nume&
         &rator_t2_diagram108, &
          &  numerator_tmu_diagram108, &
          & 6, 4, 2, (/2,3,4,6/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='115'>"
         end if
         call ninja_diagram(numerator_diagram115, numerator_t3_diagram115, nume&
         &rator_t2_diagram115, &
          &  numerator_tmu_diagram115, &
          & 6, 4, 3, (/2,4,5,6/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='126'>"
         end if
         call ninja_diagram(numerator_diagram126, numerator_t3_diagram126, nume&
         &rator_t2_diagram126, &
          &  numerator_tmu_diagram126, &
          & 6, 4, 3, (/1,4,5,6/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='139'>"
         end if
         call ninja_diagram(numerator_diagram139, numerator_t3_diagram139, nume&
         &rator_t2_diagram139, &
          &  numerator_tmu_diagram139, &
          & 6, 3, 2, (/4,5,6/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='227'>"
         end if
         call ninja_diagram(numerator_diagram227, numerator_t3_diagram227, nume&
         &rator_t2_diagram227, &
          &  numerator_tmu_diagram227, &
          & 6, 3, 2, (/2,5,6/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='295'>"
         end if
         call ninja_diagram(numerator_diagram295, numerator_t3_diagram295, nume&
         &rator_t2_diagram295, &
          &  numerator_tmu_diagram295, &
          & 6, 6, 4, (/1,2,3,4,5,6/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='310'>"
         end if
         call ninja_diagram(numerator_diagram310, numerator_t3_diagram310, nume&
         &rator_t2_diagram310, &
          &  numerator_tmu_diagram310, &
          & 6, 5, 3, (/2,3,4,5,6/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
      !------#] sum over reduction of single diagrams:
end subroutine ninja_reduce_group13
!-----#] subroutine ninja_reduce_group13:
!-----#[ subroutine ninja_reduce_group14:
subroutine     ninja_reduce_group14(scale2,tot,totr,ok)
   use iso_c_binding, only: c_ptr, c_loc, c_int
   use ninjago_module
   use p0_dbaru_epnebbbarg_kinematics
   use p0_dbaru_epnebbbarg_model
   use p0_dbaru_epnebbbarg_d72h2l1, only: numerator_diagram72 => numerator_ninja
   use p0_dbaru_epnebbbarg_d72h2l121, only: numerator_tmu_diagram72 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d72h2l131, only: numerator_t3_diagram72 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d72h2l132, only: numerator_t2_diagram72 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_d75h2l1, only: numerator_diagram75 => numerator_ninja
   use p0_dbaru_epnebbbarg_d75h2l121, only: numerator_tmu_diagram75 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d75h2l131, only: numerator_t3_diagram75 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d75h2l132, only: numerator_t2_diagram75 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_d98h2l1, only: numerator_diagram98 => numerator_ninja
   use p0_dbaru_epnebbbarg_d98h2l121, only: numerator_tmu_diagram98 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d98h2l131, only: numerator_t3_diagram98 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d98h2l132, only: numerator_t2_diagram98 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_d101h2l1, only: numerator_diagram101 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d101h2l121, only: numerator_tmu_diagram101 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d101h2l131, only: numerator_t3_diagram101 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d101h2l132, only: numerator_t2_diagram101 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d120h2l1, only: numerator_diagram120 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d120h2l121, only: numerator_tmu_diagram120 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d120h2l131, only: numerator_t3_diagram120 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d120h2l132, only: numerator_t2_diagram120 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d121h2l1, only: numerator_diagram121 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d121h2l121, only: numerator_tmu_diagram121 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d121h2l131, only: numerator_t3_diagram121 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d121h2l132, only: numerator_t2_diagram121 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d300h2l1, only: numerator_diagram300 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d300h2l121, only: numerator_tmu_diagram300 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d300h2l131, only: numerator_t3_diagram300 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d300h2l132, only: numerator_t2_diagram300 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d305h2l1, only: numerator_diagram305 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d305h2l121, only: numerator_tmu_diagram305 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d305h2l131, only: numerator_t3_diagram305 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d305h2l132, only: numerator_t2_diagram305 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d315h2l1, only: numerator_diagram315 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d315h2l121, only: numerator_tmu_diagram315 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d315h2l131, only: numerator_t3_diagram315 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d315h2l132, only: numerator_t2_diagram315 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_globalsl1, only: epspow

   implicit none
   real(ki_nin), intent(in) :: scale2
   complex(ki_nin), dimension(-2:0), intent(out) :: tot
   complex(ki_nin), intent(out) :: totr
   logical, intent(out) :: ok

   complex(ki_nin), dimension(-2:0) :: acc
   complex(ki_nin) :: accr
   integer(c_int) :: acc_ok

   integer :: istopm, istop0

   integer, parameter :: effective_group_rank = 4

   !-----------#[ invariants for ninja:
   real(ki_nin), dimension(6,6) :: s_mat
   !-----------#] initialize invariants:
   real(ki_nin), dimension(6) :: msq
   real(ki_nin), dimension(4,6) :: Vi

   ok = .true.

   if (ninja_test.eq.1) then
      istopm = 1
      istop0 = 1
   else
      istopm = ninja_istop
      istop0 = max(2,ninja_istop)
   end if
   msq(1) = 0.0_ki_nin
   Vi(:,1) = real(k3-k2+k4, ki_nin)
   msq(2) = 0.0_ki_nin
   Vi(:,2) = real(-k7-k6-k5, ki_nin)
   msq(3) = real(mB*mB, ki_nin)
   Vi(:,3) = real(-k7-k5, ki_nin)
   msq(4) = real(mB*mB, ki_nin)
   Vi(:,4) = real(-k5, ki_nin)
   msq(5) = 0.0_ki_nin
   Vi(:,5) = real(0, ki_nin)
   msq(6) = 0.0_ki_nin
   Vi(:,6) = real(-k2, ki_nin)
   !-----------#[ initialize invariants:
   s_mat(1,1) = real(0.0_ki, ki_nin)
   s_mat(1,2) = real(0.0_ki, ki_nin)
   s_mat(2,1) = s_mat(1,2)
   s_mat(1,3) = real(es671-es67-es71, ki_nin)
   s_mat(3,1) = s_mat(1,3)
   s_mat(1,4) = real(es671-mB**2, ki_nin)
   s_mat(4,1) = s_mat(1,4)
   s_mat(1,5) = real(es234, ki_nin)
   s_mat(5,1) = s_mat(1,5)
   s_mat(1,6) = real(es34, ki_nin)
   s_mat(6,1) = s_mat(1,6)
   s_mat(2,2) = real(0.0_ki, ki_nin)
   s_mat(2,3) = real(0.0_ki, ki_nin)
   s_mat(3,2) = s_mat(2,3)
   s_mat(2,4) = real(-mB**2+es67, ki_nin)
   s_mat(4,2) = s_mat(2,4)
   s_mat(2,5) = real(es567, ki_nin)
   s_mat(5,2) = s_mat(2,5)
   s_mat(2,6) = real(es34+es567-es234-es12, ki_nin)
   s_mat(6,2) = s_mat(2,6)
   s_mat(3,3) = real(-2.0_ki*mB**2, ki_nin)
   s_mat(3,4) = real(-2.0_ki*mB**2, ki_nin)
   s_mat(4,3) = s_mat(3,4)
   s_mat(3,5) = real(mB**2-es56-es67+es567, ki_nin)
   s_mat(5,3) = s_mat(3,5)
   s_mat(3,6) = real(es34+es671+es567-es56-es234-es345-es67+mB**2-es12-es71+es7&
   &12, ki_nin)
   s_mat(6,3) = s_mat(3,6)
   s_mat(4,4) = real(-2.0_ki*mB**2, ki_nin)
   s_mat(4,5) = real(0.0_ki, ki_nin)
   s_mat(5,4) = s_mat(4,5)
   s_mat(4,6) = real(-es234-es345+es34+es671, ki_nin)
   s_mat(6,4) = s_mat(4,6)
   s_mat(5,5) = real(0.0_ki, ki_nin)
   s_mat(5,6) = real(0.0_ki, ki_nin)
   s_mat(6,5) = s_mat(5,6)
   s_mat(6,6) = real(0.0_ki, ki_nin)
   !-----------#] initialize invariants


      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='72'>"
         end if
         call ninja_diagram(numerator_diagram72, numerator_t3_diagram72, numera&
         &tor_t2_diagram72, &
          &  numerator_tmu_diagram72, &
          & 6, 5, 3, (/1,2,3,5,6/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot =  + acc
         totr =  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='75'>"
         end if
         call ninja_diagram(numerator_diagram75, numerator_t3_diagram75, numera&
         &tor_t2_diagram75, &
          &  numerator_tmu_diagram75, &
          & 6, 5, 3, (/1,2,4,5,6/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='98'>"
         end if
         call ninja_diagram(numerator_diagram98, numerator_t3_diagram98, numera&
         &tor_t2_diagram98, &
          &  numerator_tmu_diagram98, &
          & 6, 4, 2, (/2,3,5,6/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='101'>"
         end if
         call ninja_diagram(numerator_diagram101, numerator_t3_diagram101, nume&
         &rator_t2_diagram101, &
          &  numerator_tmu_diagram101, &
          & 6, 4, 2, (/1,2,4,5/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='120'>"
         end if
         call ninja_diagram(numerator_diagram120, numerator_t3_diagram120, nume&
         &rator_t2_diagram120, &
          &  numerator_tmu_diagram120, &
          & 6, 4, 2, (/1,2,3,5/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='121'>"
         end if
         call ninja_diagram(numerator_diagram121, numerator_t3_diagram121, nume&
         &rator_t2_diagram121, &
          &  numerator_tmu_diagram121, &
          & 6, 4, 2, (/2,4,5,6/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='300'>"
         end if
         call ninja_diagram(numerator_diagram300, numerator_t3_diagram300, nume&
         &rator_t2_diagram300, &
          &  numerator_tmu_diagram300, &
          & 6, 6, 4, (/1,2,3,4,5,6/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='305'>"
         end if
         call ninja_diagram(numerator_diagram305, numerator_t3_diagram305, nume&
         &rator_t2_diagram305, &
          &  numerator_tmu_diagram305, &
          & 6, 5, 3, (/2,3,4,5,6/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='315'>"
         end if
         call ninja_diagram(numerator_diagram315, numerator_t3_diagram315, nume&
         &rator_t2_diagram315, &
          &  numerator_tmu_diagram315, &
          & 6, 5, 3, (/1,2,3,4,5/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
      !------#] sum over reduction of single diagrams:
end subroutine ninja_reduce_group14
!-----#] subroutine ninja_reduce_group14:
!-----#[ subroutine ninja_reduce_group15:
subroutine     ninja_reduce_group15(scale2,tot,totr,ok)
   use iso_c_binding, only: c_ptr, c_loc, c_int
   use ninjago_module
   use p0_dbaru_epnebbbarg_kinematics
   use p0_dbaru_epnebbbarg_model
   use p0_dbaru_epnebbbarg_d6h2l1, only: numerator_diagram6 => numerator_ninja
   use p0_dbaru_epnebbbarg_d6h2l121, only: numerator_tmu_diagram6 => numerator_&
   &tmu
   use p0_dbaru_epnebbbarg_d6h2l131, only: numerator_t3_diagram6 => numerator_t3
   use p0_dbaru_epnebbbarg_d6h2l132, only: numerator_t2_diagram6 => numerator_t2
   use p0_dbaru_epnebbbarg_d8h2l1, only: numerator_diagram8 => numerator_ninja
   use p0_dbaru_epnebbbarg_d8h2l121, only: numerator_tmu_diagram8 => numerator_&
   &tmu
   use p0_dbaru_epnebbbarg_d8h2l131, only: numerator_t3_diagram8 => numerator_t3
   use p0_dbaru_epnebbbarg_d8h2l132, only: numerator_t2_diagram8 => numerator_t2
   use p0_dbaru_epnebbbarg_d10h2l1, only: numerator_diagram10 => numerator_ninja
   use p0_dbaru_epnebbbarg_d10h2l121, only: numerator_tmu_diagram10 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d10h2l131, only: numerator_t3_diagram10 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d10h2l132, only: numerator_t2_diagram10 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_d17h2l1, only: numerator_diagram17 => numerator_ninja
   use p0_dbaru_epnebbbarg_d17h2l121, only: numerator_tmu_diagram17 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d17h2l131, only: numerator_t3_diagram17 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d17h2l132, only: numerator_t2_diagram17 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_d18h2l1, only: numerator_diagram18 => numerator_ninja
   use p0_dbaru_epnebbbarg_d18h2l121, only: numerator_tmu_diagram18 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d18h2l131, only: numerator_t3_diagram18 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d18h2l132, only: numerator_t2_diagram18 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_d21h2l1, only: numerator_diagram21 => numerator_ninja
   use p0_dbaru_epnebbbarg_d21h2l121, only: numerator_tmu_diagram21 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d21h2l131, only: numerator_t3_diagram21 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d21h2l132, only: numerator_t2_diagram21 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_d24h2l1, only: numerator_diagram24 => numerator_ninja
   use p0_dbaru_epnebbbarg_d24h2l121, only: numerator_tmu_diagram24 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d24h2l131, only: numerator_t3_diagram24 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d24h2l132, only: numerator_t2_diagram24 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_d40h2l1, only: numerator_diagram40 => numerator_ninja
   use p0_dbaru_epnebbbarg_d40h2l121, only: numerator_tmu_diagram40 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d40h2l131, only: numerator_t3_diagram40 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d40h2l132, only: numerator_t2_diagram40 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_d43h2l1, only: numerator_diagram43 => numerator_ninja
   use p0_dbaru_epnebbbarg_d43h2l121, only: numerator_tmu_diagram43 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d43h2l131, only: numerator_t3_diagram43 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d43h2l132, only: numerator_t2_diagram43 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_d59h2l1, only: numerator_diagram59 => numerator_ninja
   use p0_dbaru_epnebbbarg_d59h2l121, only: numerator_tmu_diagram59 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d59h2l131, only: numerator_t3_diagram59 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d59h2l132, only: numerator_t2_diagram59 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_d64h2l1, only: numerator_diagram64 => numerator_ninja
   use p0_dbaru_epnebbbarg_d64h2l121, only: numerator_tmu_diagram64 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d64h2l131, only: numerator_t3_diagram64 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d64h2l132, only: numerator_t2_diagram64 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_d65h2l1, only: numerator_diagram65 => numerator_ninja
   use p0_dbaru_epnebbbarg_d65h2l121, only: numerator_tmu_diagram65 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d65h2l131, only: numerator_t3_diagram65 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d65h2l132, only: numerator_t2_diagram65 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_d71h2l1, only: numerator_diagram71 => numerator_ninja
   use p0_dbaru_epnebbbarg_d71h2l121, only: numerator_tmu_diagram71 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d71h2l131, only: numerator_t3_diagram71 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d71h2l132, only: numerator_t2_diagram71 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_d78h2l1, only: numerator_diagram78 => numerator_ninja
   use p0_dbaru_epnebbbarg_d78h2l121, only: numerator_tmu_diagram78 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d78h2l131, only: numerator_t3_diagram78 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d78h2l132, only: numerator_t2_diagram78 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_d86h2l1, only: numerator_diagram86 => numerator_ninja
   use p0_dbaru_epnebbbarg_d86h2l121, only: numerator_tmu_diagram86 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d86h2l131, only: numerator_t3_diagram86 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d86h2l132, only: numerator_t2_diagram86 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_d91h2l1, only: numerator_diagram91 => numerator_ninja
   use p0_dbaru_epnebbbarg_d91h2l121, only: numerator_tmu_diagram91 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d91h2l131, only: numerator_t3_diagram91 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d91h2l132, only: numerator_t2_diagram91 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_d92h2l1, only: numerator_diagram92 => numerator_ninja
   use p0_dbaru_epnebbbarg_d92h2l121, only: numerator_tmu_diagram92 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d92h2l131, only: numerator_t3_diagram92 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d92h2l132, only: numerator_t2_diagram92 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_d103h2l1, only: numerator_diagram103 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d103h2l121, only: numerator_tmu_diagram103 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d103h2l131, only: numerator_t3_diagram103 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d103h2l132, only: numerator_t2_diagram103 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d110h2l1, only: numerator_diagram110 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d110h2l121, only: numerator_tmu_diagram110 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d110h2l131, only: numerator_t3_diagram110 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d110h2l132, only: numerator_t2_diagram110 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d111h2l1, only: numerator_diagram111 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d111h2l121, only: numerator_tmu_diagram111 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d111h2l131, only: numerator_t3_diagram111 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d111h2l132, only: numerator_t2_diagram111 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d124h2l1, only: numerator_diagram124 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d124h2l121, only: numerator_tmu_diagram124 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d124h2l131, only: numerator_t3_diagram124 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d124h2l132, only: numerator_t2_diagram124 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d137h2l1, only: numerator_diagram137 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d137h2l121, only: numerator_tmu_diagram137 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d137h2l131, only: numerator_t3_diagram137 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d137h2l132, only: numerator_t2_diagram137 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d223h2l1, only: numerator_diagram223 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d223h2l121, only: numerator_tmu_diagram223 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d223h2l131, only: numerator_t3_diagram223 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d223h2l132, only: numerator_t2_diagram223 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d296h2l1, only: numerator_diagram296 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d296h2l121, only: numerator_tmu_diagram296 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d296h2l131, only: numerator_t3_diagram296 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d296h2l132, only: numerator_t2_diagram296 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d302h2l1, only: numerator_diagram302 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d302h2l121, only: numerator_tmu_diagram302 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d302h2l131, only: numerator_t3_diagram302 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d302h2l132, only: numerator_t2_diagram302 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_globalsl1, only: epspow

   implicit none
   real(ki_nin), intent(in) :: scale2
   complex(ki_nin), dimension(-2:0), intent(out) :: tot
   complex(ki_nin), intent(out) :: totr
   logical, intent(out) :: ok

   complex(ki_nin), dimension(-2:0) :: acc
   complex(ki_nin) :: accr
   integer(c_int) :: acc_ok

   integer :: istopm, istop0

   integer, parameter :: effective_group_rank = 6

   !-----------#[ invariants for ninja:
   real(ki_nin), dimension(6,6) :: s_mat
   !-----------#] initialize invariants:
   real(ki_nin), dimension(6) :: msq
   real(ki_nin), dimension(4,6) :: Vi

   ok = .true.

   if (ninja_test.eq.1) then
      istopm = 1
      istop0 = 1
   else
      istopm = ninja_istop
      istop0 = max(2,ninja_istop)
   end if
   msq(1) = 0.0_ki_nin
   Vi(:,1) = real(k3-k2+k7+k4, ki_nin)
   msq(2) = 0.0_ki_nin
   Vi(:,2) = real(-k6-k5, ki_nin)
   msq(3) = real(mB*mB, ki_nin)
   Vi(:,3) = real(-k6, ki_nin)
   msq(4) = 0.0_ki_nin
   Vi(:,4) = real(0, ki_nin)
   msq(5) = 0.0_ki_nin
   Vi(:,5) = real(-k2, ki_nin)
   msq(6) = 0.0_ki_nin
   Vi(:,6) = real(-k2+k7, ki_nin)
   !-----------#[ initialize invariants:
   s_mat(1,1) = real(0.0_ki, ki_nin)
   s_mat(1,2) = real(0.0_ki, ki_nin)
   s_mat(2,1) = s_mat(1,2)
   s_mat(1,3) = real(-es671-es567+es234+es67, ki_nin)
   s_mat(3,1) = s_mat(1,3)
   s_mat(1,4) = real(-es567+es56+es234-es71, ki_nin)
   s_mat(4,1) = s_mat(1,4)
   s_mat(1,5) = real(es34-es567+es56+es12-es712, ki_nin)
   s_mat(5,1) = s_mat(1,5)
   s_mat(1,6) = real(es34, ki_nin)
   s_mat(6,1) = s_mat(1,6)
   s_mat(2,2) = real(0.0_ki, ki_nin)
   s_mat(2,3) = real(0.0_ki, ki_nin)
   s_mat(3,2) = s_mat(2,3)
   s_mat(2,4) = real(es56, ki_nin)
   s_mat(4,2) = s_mat(2,4)
   s_mat(2,5) = real(es34+es56-es234+es71-es712, ki_nin)
   s_mat(5,2) = s_mat(2,5)
   s_mat(2,6) = real(es34+es567-es234-es12, ki_nin)
   s_mat(6,2) = s_mat(2,6)
   s_mat(3,3) = real(-2.0_ki*mB**2, ki_nin)
   s_mat(3,4) = real(0.0_ki, ki_nin)
   s_mat(4,3) = s_mat(3,4)
   s_mat(3,5) = real(-es671+es345+es71-es712, ki_nin)
   s_mat(5,3) = s_mat(3,5)
   s_mat(3,6) = real(-es671+es345+es67-mB**2-es12, ki_nin)
   s_mat(6,3) = s_mat(3,6)
   s_mat(4,4) = real(0.0_ki, ki_nin)
   s_mat(4,5) = real(0.0_ki, ki_nin)
   s_mat(5,4) = s_mat(4,5)
   s_mat(4,6) = real(-es12-es71+es712, ki_nin)
   s_mat(6,4) = s_mat(4,6)
   s_mat(5,5) = real(0.0_ki, ki_nin)
   s_mat(5,6) = real(0.0_ki, ki_nin)
   s_mat(6,5) = s_mat(5,6)
   s_mat(6,6) = real(0.0_ki, ki_nin)
   !-----------#] initialize invariants


      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='6'>"
         end if
         call ninja_diagram(numerator_diagram6, numerator_t3_diagram6, numerato&
         &r_t2_diagram6, &
          &  numerator_tmu_diagram6, &
          & 6, 2, 1, (/2,4/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot =  + acc
         totr =  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='8'>"
         end if
         call ninja_diagram(numerator_diagram8, numerator_t3_diagram8, numerato&
         &r_t2_diagram8, &
          &  numerator_tmu_diagram8, &
          & 6, 3, 1, (/2,3,4/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='10'>"
         end if
         call ninja_diagram(numerator_diagram10, numerator_t3_diagram10, numera&
         &tor_t2_diagram10, &
          &  numerator_tmu_diagram10, &
          & 6, 2, 1, (/5,6/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='17'>"
         end if
         call ninja_diagram(numerator_diagram17, numerator_t3_diagram17, numera&
         &tor_t2_diagram17, &
          &  numerator_tmu_diagram17, &
          & 6, 4, 3, (/1,2,4,6/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='18'>"
         end if
         call ninja_diagram(numerator_diagram18, numerator_t3_diagram18, numera&
         &tor_t2_diagram18, &
          &  numerator_tmu_diagram18, &
          & 6, 3, 2, (/2,4,5/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='21'>"
         end if
         call ninja_diagram(numerator_diagram21, numerator_t3_diagram21, numera&
         &tor_t2_diagram21, &
          &  numerator_tmu_diagram21, &
          & 6, 3, 2, (/1,2,4/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='24'>"
         end if
         call ninja_diagram(numerator_diagram24, numerator_t3_diagram24, numera&
         &tor_t2_diagram24, &
          &  numerator_tmu_diagram24, &
          & 6, 2, 2, (/2,4/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", -real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", -real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", -real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", -real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  +  acc
         totr = totr  +  accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='40'>"
         end if
         call ninja_diagram(numerator_diagram40, numerator_t3_diagram40, numera&
         &tor_t2_diagram40, &
          &  numerator_tmu_diagram40, &
          & 6, 3, 2, (/2,4,6/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='43'>"
         end if
         call ninja_diagram(numerator_diagram43, numerator_t3_diagram43, numera&
         &tor_t2_diagram43, &
          &  numerator_tmu_diagram43, &
          & 6, 3, 2, (/1,4,6/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='59'>"
         end if
         call ninja_diagram(numerator_diagram59, numerator_t3_diagram59, numera&
         &tor_t2_diagram59, &
          &  numerator_tmu_diagram59, &
          & 6, 2, 1, (/4,6/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='64'>"
         end if
         call ninja_diagram(numerator_diagram64, numerator_t3_diagram64, numera&
         &tor_t2_diagram64, &
          &  numerator_tmu_diagram64, &
          & 6, 2, 1, (/2,5/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='65'>"
         end if
         call ninja_diagram(numerator_diagram65, numerator_t3_diagram65, numera&
         &tor_t2_diagram65, &
          &  numerator_tmu_diagram65, &
          & 6, 2, 1, (/1,4/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='71'>"
         end if
         call ninja_diagram(numerator_diagram71, numerator_t3_diagram71, numera&
         &tor_t2_diagram71, &
          &  numerator_tmu_diagram71, &
          & 6, 5, 4, (/1,2,4,5,6/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='78'>"
         end if
         call ninja_diagram(numerator_diagram78, numerator_t3_diagram78, numera&
         &tor_t2_diagram78, &
          &  numerator_tmu_diagram78, &
          & 6, 5, 3, (/1,2,3,4,6/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='86'>"
         end if
         call ninja_diagram(numerator_diagram86, numerator_t3_diagram86, numera&
         &tor_t2_diagram86, &
          &  numerator_tmu_diagram86, &
          & 6, 3, 2, (/2,3,4/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='91'>"
         end if
         call ninja_diagram(numerator_diagram91, numerator_t3_diagram91, numera&
         &tor_t2_diagram91, &
          &  numerator_tmu_diagram91, &
          & 6, 4, 2, (/2,3,4,5/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='92'>"
         end if
         call ninja_diagram(numerator_diagram92, numerator_t3_diagram92, numera&
         &tor_t2_diagram92, &
          &  numerator_tmu_diagram92, &
          & 6, 4, 2, (/1,2,3,4/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='103'>"
         end if
         call ninja_diagram(numerator_diagram103, numerator_t3_diagram103, nume&
         &rator_t2_diagram103, &
          &  numerator_tmu_diagram103, &
          & 6, 4, 3, (/1,2,5,6/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='110'>"
         end if
         call ninja_diagram(numerator_diagram110, numerator_t3_diagram110, nume&
         &rator_t2_diagram110, &
          &  numerator_tmu_diagram110, &
          & 6, 4, 2, (/2,3,4,6/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='111'>"
         end if
         call ninja_diagram(numerator_diagram111, numerator_t3_diagram111, nume&
         &rator_t2_diagram111, &
          &  numerator_tmu_diagram111, &
          & 6, 4, 3, (/2,4,5,6/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='124'>"
         end if
         call ninja_diagram(numerator_diagram124, numerator_t3_diagram124, nume&
         &rator_t2_diagram124, &
          &  numerator_tmu_diagram124, &
          & 6, 4, 3, (/1,4,5,6/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='137'>"
         end if
         call ninja_diagram(numerator_diagram137, numerator_t3_diagram137, nume&
         &rator_t2_diagram137, &
          &  numerator_tmu_diagram137, &
          & 6, 3, 2, (/4,5,6/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='223'>"
         end if
         call ninja_diagram(numerator_diagram223, numerator_t3_diagram223, nume&
         &rator_t2_diagram223, &
          &  numerator_tmu_diagram223, &
          & 6, 3, 2, (/2,5,6/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='296'>"
         end if
         call ninja_diagram(numerator_diagram296, numerator_t3_diagram296, nume&
         &rator_t2_diagram296, &
          &  numerator_tmu_diagram296, &
          & 6, 6, 4, (/1,2,3,4,5,6/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='302'>"
         end if
         call ninja_diagram(numerator_diagram302, numerator_t3_diagram302, nume&
         &rator_t2_diagram302, &
          &  numerator_tmu_diagram302, &
          & 6, 5, 3, (/2,3,4,5,6/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
      !------#] sum over reduction of single diagrams:
end subroutine ninja_reduce_group15
!-----#] subroutine ninja_reduce_group15:
!-----#[ subroutine ninja_reduce_group16:
subroutine     ninja_reduce_group16(scale2,tot,totr,ok)
   use iso_c_binding, only: c_ptr, c_loc, c_int
   use ninjago_module
   use p0_dbaru_epnebbbarg_kinematics
   use p0_dbaru_epnebbbarg_model
   use p0_dbaru_epnebbbarg_d67h2l1, only: numerator_diagram67 => numerator_ninja
   use p0_dbaru_epnebbbarg_d67h2l121, only: numerator_tmu_diagram67 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d67h2l131, only: numerator_t3_diagram67 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d67h2l132, only: numerator_t2_diagram67 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_d77h2l1, only: numerator_diagram77 => numerator_ninja
   use p0_dbaru_epnebbbarg_d77h2l121, only: numerator_tmu_diagram77 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d77h2l131, only: numerator_t3_diagram77 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d77h2l132, only: numerator_t2_diagram77 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_d94h2l1, only: numerator_diagram94 => numerator_ninja
   use p0_dbaru_epnebbbarg_d94h2l121, only: numerator_tmu_diagram94 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d94h2l131, only: numerator_t3_diagram94 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d94h2l132, only: numerator_t2_diagram94 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_d107h2l1, only: numerator_diagram107 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d107h2l121, only: numerator_tmu_diagram107 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d107h2l131, only: numerator_t3_diagram107 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d107h2l132, only: numerator_t2_diagram107 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d117h2l1, only: numerator_diagram117 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d117h2l121, only: numerator_tmu_diagram117 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d117h2l131, only: numerator_t3_diagram117 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d117h2l132, only: numerator_t2_diagram117 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d125h2l1, only: numerator_diagram125 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d125h2l121, only: numerator_tmu_diagram125 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d125h2l131, only: numerator_t3_diagram125 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d125h2l132, only: numerator_t2_diagram125 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d145h2l1, only: numerator_diagram145 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d145h2l121, only: numerator_tmu_diagram145 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d145h2l131, only: numerator_t3_diagram145 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d145h2l132, only: numerator_t2_diagram145 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d294h2l1, only: numerator_diagram294 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d294h2l121, only: numerator_tmu_diagram294 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d294h2l131, only: numerator_t3_diagram294 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d294h2l132, only: numerator_t2_diagram294 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d304h2l1, only: numerator_diagram304 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d304h2l121, only: numerator_tmu_diagram304 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d304h2l131, only: numerator_t3_diagram304 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d304h2l132, only: numerator_t2_diagram304 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d314h2l1, only: numerator_diagram314 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d314h2l121, only: numerator_tmu_diagram314 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d314h2l131, only: numerator_t3_diagram314 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d314h2l132, only: numerator_t2_diagram314 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d317h2l1, only: numerator_diagram317 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d317h2l121, only: numerator_tmu_diagram317 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d317h2l131, only: numerator_t3_diagram317 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d317h2l132, only: numerator_t2_diagram317 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d336h2l1, only: numerator_diagram336 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d336h2l121, only: numerator_tmu_diagram336 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d336h2l131, only: numerator_t3_diagram336 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d336h2l132, only: numerator_t2_diagram336 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_globalsl1, only: epspow

   implicit none
   real(ki_nin), intent(in) :: scale2
   complex(ki_nin), dimension(-2:0), intent(out) :: tot
   complex(ki_nin), intent(out) :: totr
   logical, intent(out) :: ok

   complex(ki_nin), dimension(-2:0) :: acc
   complex(ki_nin) :: accr
   integer(c_int) :: acc_ok

   integer :: istopm, istop0

   integer, parameter :: effective_group_rank = 6

   !-----------#[ invariants for ninja:
   real(ki_nin), dimension(6,6) :: s_mat
   !-----------#] initialize invariants:
   real(ki_nin), dimension(6) :: msq
   real(ki_nin), dimension(4,6) :: Vi

   ok = .true.

   if (ninja_test.eq.1) then
      istopm = 1
      istop0 = 1
   else
      istopm = ninja_istop
      istop0 = max(2,ninja_istop)
   end if
   msq(1) = 0.0_ki_nin
   Vi(:,1) = real(k3-k2+k4, ki_nin)
   msq(2) = 0.0_ki_nin
   Vi(:,2) = real(-k7-k6-k5, ki_nin)
   msq(3) = 0.0_ki_nin
   Vi(:,3) = real(-k6-k5, ki_nin)
   msq(4) = real(mB*mB, ki_nin)
   Vi(:,4) = real(-k6, ki_nin)
   msq(5) = 0.0_ki_nin
   Vi(:,5) = real(0, ki_nin)
   msq(6) = 0.0_ki_nin
   Vi(:,6) = real(-k2, ki_nin)
   !-----------#[ initialize invariants:
   s_mat(1,1) = real(0.0_ki, ki_nin)
   s_mat(1,2) = real(0.0_ki, ki_nin)
   s_mat(2,1) = s_mat(1,2)
   s_mat(1,3) = real(es71, ki_nin)
   s_mat(3,1) = s_mat(1,3)
   s_mat(1,4) = real(-es671+es234+mB**2-es56+es71, ki_nin)
   s_mat(4,1) = s_mat(1,4)
   s_mat(1,5) = real(es234, ki_nin)
   s_mat(5,1) = s_mat(1,5)
   s_mat(1,6) = real(es34, ki_nin)
   s_mat(6,1) = s_mat(1,6)
   s_mat(2,2) = real(0.0_ki, ki_nin)
   s_mat(2,3) = real(0.0_ki, ki_nin)
   s_mat(3,2) = s_mat(2,3)
   s_mat(2,4) = real(mB**2-es56-es67+es567, ki_nin)
   s_mat(4,2) = s_mat(2,4)
   s_mat(2,5) = real(es567, ki_nin)
   s_mat(5,2) = s_mat(2,5)
   s_mat(2,6) = real(es34+es567-es234-es12, ki_nin)
   s_mat(6,2) = s_mat(2,6)
   s_mat(3,3) = real(0.0_ki, ki_nin)
   s_mat(3,4) = real(0.0_ki, ki_nin)
   s_mat(4,3) = s_mat(3,4)
   s_mat(3,5) = real(es56, ki_nin)
   s_mat(5,3) = s_mat(3,5)
   s_mat(3,6) = real(es34+es56-es234+es71-es712, ki_nin)
   s_mat(6,3) = s_mat(3,6)
   s_mat(4,4) = real(-2.0_ki*mB**2, ki_nin)
   s_mat(4,5) = real(0.0_ki, ki_nin)
   s_mat(5,4) = s_mat(4,5)
   s_mat(4,6) = real(-es671+es345+es71-es712, ki_nin)
   s_mat(6,4) = s_mat(4,6)
   s_mat(5,5) = real(0.0_ki, ki_nin)
   s_mat(5,6) = real(0.0_ki, ki_nin)
   s_mat(6,5) = s_mat(5,6)
   s_mat(6,6) = real(0.0_ki, ki_nin)
   !-----------#] initialize invariants


      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='67'>"
         end if
         call ninja_diagram(numerator_diagram67, numerator_t3_diagram67, numera&
         &tor_t2_diagram67, &
          &  numerator_tmu_diagram67, &
          & 6, 5, 4, (/1,2,3,5,6/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot =  + acc
         totr =  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='77'>"
         end if
         call ninja_diagram(numerator_diagram77, numerator_t3_diagram77, numera&
         &tor_t2_diagram77, &
          &  numerator_tmu_diagram77, &
          & 6, 5, 3, (/1,3,4,5,6/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='94'>"
         end if
         call ninja_diagram(numerator_diagram94, numerator_t3_diagram94, numera&
         &tor_t2_diagram94, &
          &  numerator_tmu_diagram94, &
          & 6, 4, 3, (/2,3,5,6/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='107'>"
         end if
         call ninja_diagram(numerator_diagram107, numerator_t3_diagram107, nume&
         &rator_t2_diagram107, &
          &  numerator_tmu_diagram107, &
          & 6, 4, 2, (/1,3,4,5/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='117'>"
         end if
         call ninja_diagram(numerator_diagram117, numerator_t3_diagram117, nume&
         &rator_t2_diagram117, &
          &  numerator_tmu_diagram117, &
          & 6, 4, 3, (/1,2,3,5/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='125'>"
         end if
         call ninja_diagram(numerator_diagram125, numerator_t3_diagram125, nume&
         &rator_t2_diagram125, &
          &  numerator_tmu_diagram125, &
          & 6, 4, 3, (/1,2,3,6/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='145'>"
         end if
         call ninja_diagram(numerator_diagram145, numerator_t3_diagram145, nume&
         &rator_t2_diagram145, &
          &  numerator_tmu_diagram145, &
          & 6, 3, 3, (/2,3,5/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", -real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", -real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", -real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", -real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  +  acc
         totr = totr  +  accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='294'>"
         end if
         call ninja_diagram(numerator_diagram294, numerator_t3_diagram294, nume&
         &rator_t2_diagram294, &
          &  numerator_tmu_diagram294, &
          & 6, 6, 4, (/1,2,3,4,5,6/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='304'>"
         end if
         call ninja_diagram(numerator_diagram304, numerator_t3_diagram304, nume&
         &rator_t2_diagram304, &
          &  numerator_tmu_diagram304, &
          & 6, 5, 3, (/2,3,4,5,6/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='314'>"
         end if
         call ninja_diagram(numerator_diagram314, numerator_t3_diagram314, nume&
         &rator_t2_diagram314, &
          &  numerator_tmu_diagram314, &
          & 6, 5, 3, (/1,2,3,4,5/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='317'>"
         end if
         call ninja_diagram(numerator_diagram317, numerator_t3_diagram317, nume&
         &rator_t2_diagram317, &
          &  numerator_tmu_diagram317, &
          & 6, 4, 3, (/2,3,4,5/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='336'>"
         end if
         call ninja_diagram(numerator_diagram336, numerator_t3_diagram336, nume&
         &rator_t2_diagram336, &
          &  numerator_tmu_diagram336, &
          & 6, 3, 2, (/2,3,4/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
      !------#] sum over reduction of single diagrams:
end subroutine ninja_reduce_group16
!-----#] subroutine ninja_reduce_group16:
!-----#[ subroutine ninja_reduce_group17:
subroutine     ninja_reduce_group17(scale2,tot,totr,ok)
   use iso_c_binding, only: c_ptr, c_loc, c_int
   use ninjago_module
   use p0_dbaru_epnebbbarg_kinematics
   use p0_dbaru_epnebbbarg_model
   use p0_dbaru_epnebbbarg_d291h2l1, only: numerator_diagram291 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d291h2l121, only: numerator_tmu_diagram291 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d291h2l131, only: numerator_t3_diagram291 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d291h2l132, only: numerator_t2_diagram291 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d309h2l1, only: numerator_diagram309 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d309h2l121, only: numerator_tmu_diagram309 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d309h2l131, only: numerator_t3_diagram309 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d309h2l132, only: numerator_t2_diagram309 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_globalsl1, only: epspow

   implicit none
   real(ki_nin), intent(in) :: scale2
   complex(ki_nin), dimension(-2:0), intent(out) :: tot
   complex(ki_nin), intent(out) :: totr
   logical, intent(out) :: ok

   complex(ki_nin), dimension(-2:0) :: acc
   complex(ki_nin) :: accr
   integer(c_int) :: acc_ok

   integer :: istopm, istop0

   integer, parameter :: effective_group_rank = 4

   !-----------#[ invariants for ninja:
   real(ki_nin), dimension(6,6) :: s_mat
   !-----------#] initialize invariants:
   real(ki_nin), dimension(6) :: msq
   real(ki_nin), dimension(4,6) :: Vi

   ok = .true.

   if (ninja_test.eq.1) then
      istopm = 1
      istop0 = 1
   else
      istopm = ninja_istop
      istop0 = max(2,ninja_istop)
   end if
   msq(1) = 0.0_ki_nin
   Vi(:,1) = real(-k2, ki_nin)
   msq(2) = 0.0_ki_nin
   Vi(:,2) = real(0, ki_nin)
   msq(3) = real(mB*mB, ki_nin)
   Vi(:,3) = real(-k6, ki_nin)
   msq(4) = 0.0_ki_nin
   Vi(:,4) = real(-k6-k5, ki_nin)
   msq(5) = 0.0_ki_nin
   Vi(:,5) = real(k3-k2+k7+k4, ki_nin)
   msq(6) = 0.0_ki_nin
   Vi(:,6) = real(k3-k2+k4, ki_nin)
   !-----------#[ initialize invariants:
   s_mat(1,1) = real(0.0_ki, ki_nin)
   s_mat(1,2) = real(0.0_ki, ki_nin)
   s_mat(2,1) = s_mat(1,2)
   s_mat(1,3) = real(-es671+es345+es71-es712, ki_nin)
   s_mat(3,1) = s_mat(1,3)
   s_mat(1,4) = real(es34+es56-es234+es71-es712, ki_nin)
   s_mat(4,1) = s_mat(1,4)
   s_mat(1,5) = real(es34-es567+es56+es12-es712, ki_nin)
   s_mat(5,1) = s_mat(1,5)
   s_mat(1,6) = real(es34, ki_nin)
   s_mat(6,1) = s_mat(1,6)
   s_mat(2,2) = real(0.0_ki, ki_nin)
   s_mat(2,3) = real(0.0_ki, ki_nin)
   s_mat(3,2) = s_mat(2,3)
   s_mat(2,4) = real(es56, ki_nin)
   s_mat(4,2) = s_mat(2,4)
   s_mat(2,5) = real(-es567+es56+es234-es71, ki_nin)
   s_mat(5,2) = s_mat(2,5)
   s_mat(2,6) = real(es234, ki_nin)
   s_mat(6,2) = s_mat(2,6)
   s_mat(3,3) = real(-2.0_ki*mB**2, ki_nin)
   s_mat(3,4) = real(0.0_ki, ki_nin)
   s_mat(4,3) = s_mat(3,4)
   s_mat(3,5) = real(-es671-es567+es234+es67, ki_nin)
   s_mat(5,3) = s_mat(3,5)
   s_mat(3,6) = real(-es671+es234+mB**2-es56+es71, ki_nin)
   s_mat(6,3) = s_mat(3,6)
   s_mat(4,4) = real(0.0_ki, ki_nin)
   s_mat(4,5) = real(0.0_ki, ki_nin)
   s_mat(5,4) = s_mat(4,5)
   s_mat(4,6) = real(es71, ki_nin)
   s_mat(6,4) = s_mat(4,6)
   s_mat(5,5) = real(0.0_ki, ki_nin)
   s_mat(5,6) = real(0.0_ki, ki_nin)
   s_mat(6,5) = s_mat(5,6)
   s_mat(6,6) = real(0.0_ki, ki_nin)
   !-----------#] initialize invariants


      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='291'>"
         end if
         call ninja_diagram(numerator_diagram291, numerator_t3_diagram291, nume&
         &rator_t2_diagram291, &
          &  numerator_tmu_diagram291, &
          & 6, 6, 4, (/1,2,3,4,5,6/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot =  + acc
         totr =  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='309'>"
         end if
         call ninja_diagram(numerator_diagram309, numerator_t3_diagram309, nume&
         &rator_t2_diagram309, &
          &  numerator_tmu_diagram309, &
          & 6, 5, 3, (/2,3,4,5,6/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
      !------#] sum over reduction of single diagrams:
end subroutine ninja_reduce_group17
!-----#] subroutine ninja_reduce_group17:
!-----#[ subroutine ninja_reduce_group18:
subroutine     ninja_reduce_group18(scale2,tot,totr,ok)
   use iso_c_binding, only: c_ptr, c_loc, c_int
   use ninjago_module
   use p0_dbaru_epnebbbarg_kinematics
   use p0_dbaru_epnebbbarg_model
   use p0_dbaru_epnebbbarg_d1h2l1, only: numerator_diagram1 => numerator_ninja
   use p0_dbaru_epnebbbarg_d1h2l121, only: numerator_tmu_diagram1 => numerator_&
   &tmu
   use p0_dbaru_epnebbbarg_d1h2l131, only: numerator_t3_diagram1 => numerator_t3
   use p0_dbaru_epnebbbarg_d1h2l132, only: numerator_t2_diagram1 => numerator_t2
   use p0_dbaru_epnebbbarg_d2h2l1, only: numerator_diagram2 => numerator_ninja
   use p0_dbaru_epnebbbarg_d2h2l121, only: numerator_tmu_diagram2 => numerator_&
   &tmu
   use p0_dbaru_epnebbbarg_d2h2l131, only: numerator_t3_diagram2 => numerator_t3
   use p0_dbaru_epnebbbarg_d2h2l132, only: numerator_t2_diagram2 => numerator_t2
   use p0_dbaru_epnebbbarg_d3h2l1, only: numerator_diagram3 => numerator_ninja
   use p0_dbaru_epnebbbarg_d3h2l121, only: numerator_tmu_diagram3 => numerator_&
   &tmu
   use p0_dbaru_epnebbbarg_d3h2l131, only: numerator_t3_diagram3 => numerator_t3
   use p0_dbaru_epnebbbarg_d3h2l132, only: numerator_t2_diagram3 => numerator_t2
   use p0_dbaru_epnebbbarg_d4h2l1, only: numerator_diagram4 => numerator_ninja
   use p0_dbaru_epnebbbarg_d4h2l121, only: numerator_tmu_diagram4 => numerator_&
   &tmu
   use p0_dbaru_epnebbbarg_d4h2l131, only: numerator_t3_diagram4 => numerator_t3
   use p0_dbaru_epnebbbarg_d4h2l132, only: numerator_t2_diagram4 => numerator_t2
   use p0_dbaru_epnebbbarg_d20h2l1, only: numerator_diagram20 => numerator_ninja
   use p0_dbaru_epnebbbarg_d20h2l121, only: numerator_tmu_diagram20 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d20h2l131, only: numerator_t3_diagram20 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d20h2l132, only: numerator_t2_diagram20 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_d23h2l1, only: numerator_diagram23 => numerator_ninja
   use p0_dbaru_epnebbbarg_d23h2l121, only: numerator_tmu_diagram23 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d23h2l131, only: numerator_t3_diagram23 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d23h2l132, only: numerator_t2_diagram23 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_d62h2l1, only: numerator_diagram62 => numerator_ninja
   use p0_dbaru_epnebbbarg_d62h2l121, only: numerator_tmu_diagram62 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d62h2l131, only: numerator_t3_diagram62 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d62h2l132, only: numerator_t2_diagram62 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_d63h2l1, only: numerator_diagram63 => numerator_ninja
   use p0_dbaru_epnebbbarg_d63h2l121, only: numerator_tmu_diagram63 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d63h2l131, only: numerator_t3_diagram63 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d63h2l132, only: numerator_t2_diagram63 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_d73h2l1, only: numerator_diagram73 => numerator_ninja
   use p0_dbaru_epnebbbarg_d73h2l121, only: numerator_tmu_diagram73 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d73h2l131, only: numerator_t3_diagram73 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d73h2l132, only: numerator_t2_diagram73 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_d74h2l1, only: numerator_diagram74 => numerator_ninja
   use p0_dbaru_epnebbbarg_d74h2l121, only: numerator_tmu_diagram74 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d74h2l131, only: numerator_t3_diagram74 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d74h2l132, only: numerator_t2_diagram74 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_d99h2l1, only: numerator_diagram99 => numerator_ninja
   use p0_dbaru_epnebbbarg_d99h2l121, only: numerator_tmu_diagram99 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d99h2l131, only: numerator_t3_diagram99 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d99h2l132, only: numerator_t2_diagram99 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_d100h2l1, only: numerator_diagram100 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d100h2l121, only: numerator_tmu_diagram100 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d100h2l131, only: numerator_t3_diagram100 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d100h2l132, only: numerator_t2_diagram100 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d104h2l1, only: numerator_diagram104 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d104h2l121, only: numerator_tmu_diagram104 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d104h2l131, only: numerator_t3_diagram104 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d104h2l132, only: numerator_t2_diagram104 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d119h2l1, only: numerator_diagram119 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d119h2l121, only: numerator_tmu_diagram119 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d119h2l131, only: numerator_t3_diagram119 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d119h2l132, only: numerator_t2_diagram119 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d122h2l1, only: numerator_diagram122 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d122h2l121, only: numerator_tmu_diagram122 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d122h2l131, only: numerator_t3_diagram122 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d122h2l132, only: numerator_t2_diagram122 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d175h2l1, only: numerator_diagram175 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d175h2l121, only: numerator_tmu_diagram175 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d175h2l131, only: numerator_t3_diagram175 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d175h2l132, only: numerator_t2_diagram175 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d179h2l1, only: numerator_diagram179 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d179h2l121, only: numerator_tmu_diagram179 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d179h2l131, only: numerator_t3_diagram179 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d179h2l132, only: numerator_t2_diagram179 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d219h2l1, only: numerator_diagram219 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d219h2l121, only: numerator_tmu_diagram219 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d219h2l131, only: numerator_t3_diagram219 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d219h2l132, only: numerator_t2_diagram219 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d221h2l1, only: numerator_diagram221 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d221h2l121, only: numerator_tmu_diagram221 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d221h2l131, only: numerator_t3_diagram221 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d221h2l132, only: numerator_t2_diagram221 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d225h2l1, only: numerator_diagram225 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d225h2l121, only: numerator_tmu_diagram225 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d225h2l131, only: numerator_t3_diagram225 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d225h2l132, only: numerator_t2_diagram225 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d229h2l1, only: numerator_diagram229 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d229h2l121, only: numerator_tmu_diagram229 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d229h2l131, only: numerator_t3_diagram229 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d229h2l132, only: numerator_t2_diagram229 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d240h2l1, only: numerator_diagram240 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d240h2l121, only: numerator_tmu_diagram240 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d240h2l131, only: numerator_t3_diagram240 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d240h2l132, only: numerator_t2_diagram240 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d299h2l1, only: numerator_diagram299 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d299h2l121, only: numerator_tmu_diagram299 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d299h2l131, only: numerator_t3_diagram299 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d299h2l132, only: numerator_t2_diagram299 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d307h2l1, only: numerator_diagram307 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d307h2l121, only: numerator_tmu_diagram307 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d307h2l131, only: numerator_t3_diagram307 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d307h2l132, only: numerator_t2_diagram307 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d313h2l1, only: numerator_diagram313 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d313h2l121, only: numerator_tmu_diagram313 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d313h2l131, only: numerator_t3_diagram313 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d313h2l132, only: numerator_t2_diagram313 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d321h2l1, only: numerator_diagram321 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d321h2l121, only: numerator_tmu_diagram321 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d321h2l131, only: numerator_t3_diagram321 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d321h2l132, only: numerator_t2_diagram321 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d333h2l1, only: numerator_diagram333 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d333h2l121, only: numerator_tmu_diagram333 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d333h2l131, only: numerator_t3_diagram333 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d333h2l132, only: numerator_t2_diagram333 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d335h2l1, only: numerator_diagram335 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d335h2l121, only: numerator_tmu_diagram335 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d335h2l131, only: numerator_t3_diagram335 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d335h2l132, only: numerator_t2_diagram335 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_globalsl1, only: epspow

   implicit none
   real(ki_nin), intent(in) :: scale2
   complex(ki_nin), dimension(-2:0), intent(out) :: tot
   complex(ki_nin), intent(out) :: totr
   logical, intent(out) :: ok

   complex(ki_nin), dimension(-2:0) :: acc
   complex(ki_nin) :: accr
   integer(c_int) :: acc_ok

   integer :: istopm, istop0

   integer, parameter :: effective_group_rank = 6

   !-----------#[ invariants for ninja:
   real(ki_nin), dimension(6,6) :: s_mat
   !-----------#] initialize invariants:
   real(ki_nin), dimension(6) :: msq
   real(ki_nin), dimension(4,6) :: Vi

   ok = .true.

   if (ninja_test.eq.1) then
      istopm = 1
      istop0 = 1
   else
      istopm = ninja_istop
      istop0 = max(2,ninja_istop)
   end if
   msq(1) = 0.0_ki_nin
   Vi(:,1) = real(-k2, ki_nin)
   msq(2) = 0.0_ki_nin
   Vi(:,2) = real(0, ki_nin)
   msq(3) = real(mB*mB, ki_nin)
   Vi(:,3) = real(-k6, ki_nin)
   msq(4) = real(mB*mB, ki_nin)
   Vi(:,4) = real(-k7-k6, ki_nin)
   msq(5) = 0.0_ki_nin
   Vi(:,5) = real(-k7-k6-k5, ki_nin)
   msq(6) = 0.0_ki_nin
   Vi(:,6) = real(k3-k2+k4, ki_nin)
   !-----------#[ initialize invariants:
   s_mat(1,1) = real(0.0_ki, ki_nin)
   s_mat(1,2) = real(0.0_ki, ki_nin)
   s_mat(2,1) = s_mat(1,2)
   s_mat(1,3) = real(-es671+es345+es71-es712, ki_nin)
   s_mat(3,1) = s_mat(1,3)
   s_mat(1,4) = real(-es671+es345+es67-mB**2-es12, ki_nin)
   s_mat(4,1) = s_mat(1,4)
   s_mat(1,5) = real(es34+es567-es234-es12, ki_nin)
   s_mat(5,1) = s_mat(1,5)
   s_mat(1,6) = real(es34, ki_nin)
   s_mat(6,1) = s_mat(1,6)
   s_mat(2,2) = real(0.0_ki, ki_nin)
   s_mat(2,3) = real(0.0_ki, ki_nin)
   s_mat(3,2) = s_mat(2,3)
   s_mat(2,4) = real(-mB**2+es67, ki_nin)
   s_mat(4,2) = s_mat(2,4)
   s_mat(2,5) = real(es567, ki_nin)
   s_mat(5,2) = s_mat(2,5)
   s_mat(2,6) = real(es234, ki_nin)
   s_mat(6,2) = s_mat(2,6)
   s_mat(3,3) = real(-2.0_ki*mB**2, ki_nin)
   s_mat(3,4) = real(-2.0_ki*mB**2, ki_nin)
   s_mat(4,3) = s_mat(3,4)
   s_mat(3,5) = real(mB**2-es56-es67+es567, ki_nin)
   s_mat(5,3) = s_mat(3,5)
   s_mat(3,6) = real(-es671+es234+mB**2-es56+es71, ki_nin)
   s_mat(6,3) = s_mat(3,6)
   s_mat(4,4) = real(-2.0_ki*mB**2, ki_nin)
   s_mat(4,5) = real(0.0_ki, ki_nin)
   s_mat(5,4) = s_mat(4,5)
   s_mat(4,6) = real(-es671-es567+es234+es67, ki_nin)
   s_mat(6,4) = s_mat(4,6)
   s_mat(5,5) = real(0.0_ki, ki_nin)
   s_mat(5,6) = real(0.0_ki, ki_nin)
   s_mat(6,5) = s_mat(5,6)
   s_mat(6,6) = real(0.0_ki, ki_nin)
   !-----------#] initialize invariants


      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='1'>"
         end if
         call ninja_diagram(numerator_diagram1, numerator_t3_diagram1, numerato&
         &r_t2_diagram1, &
          &  numerator_tmu_diagram1, &
          & 6, 4, 2, (/1,2,5,6/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot =  + acc
         totr =  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='2'>"
         end if
         call ninja_diagram(numerator_diagram2, numerator_t3_diagram2, numerato&
         &r_t2_diagram2, &
          &  numerator_tmu_diagram2, &
          & 6, 3, 1, (/1,2,5/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='3'>"
         end if
         call ninja_diagram(numerator_diagram3, numerator_t3_diagram3, numerato&
         &r_t2_diagram3, &
          &  numerator_tmu_diagram3, &
          & 6, 3, 1, (/2,5,6/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='4'>"
         end if
         call ninja_diagram(numerator_diagram4, numerator_t3_diagram4, numerato&
         &r_t2_diagram4, &
          &  numerator_tmu_diagram4, &
          & 6, 2, 1, (/2,5/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='20'>"
         end if
         call ninja_diagram(numerator_diagram20, numerator_t3_diagram20, numera&
         &tor_t2_diagram20, &
          &  numerator_tmu_diagram20, &
          & 6, 3, 2, (/1,2,6/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='23'>"
         end if
         call ninja_diagram(numerator_diagram23, numerator_t3_diagram23, numera&
         &tor_t2_diagram23, &
          &  numerator_tmu_diagram23, &
          & 6, 3, 2, (/1,5,6/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='62'>"
         end if
         call ninja_diagram(numerator_diagram62, numerator_t3_diagram62, numera&
         &tor_t2_diagram62, &
          &  numerator_tmu_diagram62, &
          & 6, 2, 1, (/2,6/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='63'>"
         end if
         call ninja_diagram(numerator_diagram63, numerator_t3_diagram63, numera&
         &tor_t2_diagram63, &
          &  numerator_tmu_diagram63, &
          & 6, 2, 1, (/1,5/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='73'>"
         end if
         call ninja_diagram(numerator_diagram73, numerator_t3_diagram73, numera&
         &tor_t2_diagram73, &
          &  numerator_tmu_diagram73, &
          & 6, 5, 3, (/1,2,3,5,6/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='74'>"
         end if
         call ninja_diagram(numerator_diagram74, numerator_t3_diagram74, numera&
         &tor_t2_diagram74, &
          &  numerator_tmu_diagram74, &
          & 6, 5, 3, (/1,2,4,5,6/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='99'>"
         end if
         call ninja_diagram(numerator_diagram99, numerator_t3_diagram99, numera&
         &tor_t2_diagram99, &
          &  numerator_tmu_diagram99, &
          & 6, 4, 2, (/2,3,5,6/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='100'>"
         end if
         call ninja_diagram(numerator_diagram100, numerator_t3_diagram100, nume&
         &rator_t2_diagram100, &
          &  numerator_tmu_diagram100, &
          & 6, 4, 2, (/1,2,4,5/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='104'>"
         end if
         call ninja_diagram(numerator_diagram104, numerator_t3_diagram104, nume&
         &rator_t2_diagram104, &
          &  numerator_tmu_diagram104, &
          & 6, 4, 3, (/1,2,5,6/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='119'>"
         end if
         call ninja_diagram(numerator_diagram119, numerator_t3_diagram119, nume&
         &rator_t2_diagram119, &
          &  numerator_tmu_diagram119, &
          & 6, 4, 2, (/1,2,3,5/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='122'>"
         end if
         call ninja_diagram(numerator_diagram122, numerator_t3_diagram122, nume&
         &rator_t2_diagram122, &
          &  numerator_tmu_diagram122, &
          & 6, 4, 2, (/2,4,5,6/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='175'>"
         end if
         call ninja_diagram(numerator_diagram175, numerator_t3_diagram175, nume&
         &rator_t2_diagram175, &
          &  numerator_tmu_diagram175, &
          & 6, 3, 2, (/2,3,5/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='179'>"
         end if
         call ninja_diagram(numerator_diagram179, numerator_t3_diagram179, nume&
         &rator_t2_diagram179, &
          &  numerator_tmu_diagram179, &
          & 6, 3, 2, (/2,4,5/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='219'>"
         end if
         call ninja_diagram(numerator_diagram219, numerator_t3_diagram219, nume&
         &rator_t2_diagram219, &
          &  numerator_tmu_diagram219, &
          & 6, 2, 2, (/3,5/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='221'>"
         end if
         call ninja_diagram(numerator_diagram221, numerator_t3_diagram221, nume&
         &rator_t2_diagram221, &
          &  numerator_tmu_diagram221, &
          & 6, 2, 2, (/2,4/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='225'>"
         end if
         call ninja_diagram(numerator_diagram225, numerator_t3_diagram225, nume&
         &rator_t2_diagram225, &
          &  numerator_tmu_diagram225, &
          & 6, 3, 2, (/1,2,5/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='229'>"
         end if
         call ninja_diagram(numerator_diagram229, numerator_t3_diagram229, nume&
         &rator_t2_diagram229, &
          &  numerator_tmu_diagram229, &
          & 6, 3, 2, (/2,5,6/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='240'>"
         end if
         call ninja_diagram(numerator_diagram240, numerator_t3_diagram240, nume&
         &rator_t2_diagram240, &
          &  numerator_tmu_diagram240, &
          & 6, 2, 2, (/2,5/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", -real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", -real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", -real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", -real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  +  acc
         totr = totr  +  accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='299'>"
         end if
         call ninja_diagram(numerator_diagram299, numerator_t3_diagram299, nume&
         &rator_t2_diagram299, &
          &  numerator_tmu_diagram299, &
          & 6, 6, 4, (/1,2,3,4,5,6/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='307'>"
         end if
         call ninja_diagram(numerator_diagram307, numerator_t3_diagram307, nume&
         &rator_t2_diagram307, &
          &  numerator_tmu_diagram307, &
          & 6, 5, 3, (/1,2,3,4,5/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='313'>"
         end if
         call ninja_diagram(numerator_diagram313, numerator_t3_diagram313, nume&
         &rator_t2_diagram313, &
          &  numerator_tmu_diagram313, &
          & 6, 5, 3, (/2,3,4,5,6/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='321'>"
         end if
         call ninja_diagram(numerator_diagram321, numerator_t3_diagram321, nume&
         &rator_t2_diagram321, &
          &  numerator_tmu_diagram321, &
          & 6, 4, 3, (/2,3,4,5/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='333'>"
         end if
         call ninja_diagram(numerator_diagram333, numerator_t3_diagram333, nume&
         &rator_t2_diagram333, &
          &  numerator_tmu_diagram333, &
          & 6, 3, 2, (/2,3,4/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='335'>"
         end if
         call ninja_diagram(numerator_diagram335, numerator_t3_diagram335, nume&
         &rator_t2_diagram335, &
          &  numerator_tmu_diagram335, &
          & 6, 3, 2, (/3,4,5/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
      !------#] sum over reduction of single diagrams:
end subroutine ninja_reduce_group18
!-----#] subroutine ninja_reduce_group18:
!-----#[ subroutine ninja_reduce_group19:
subroutine     ninja_reduce_group19(scale2,tot,totr,ok)
   use iso_c_binding, only: c_ptr, c_loc, c_int
   use ninjago_module
   use p0_dbaru_epnebbbarg_kinematics
   use p0_dbaru_epnebbbarg_model
   use p0_dbaru_epnebbbarg_d293h2l1, only: numerator_diagram293 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d293h2l121, only: numerator_tmu_diagram293 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d293h2l131, only: numerator_t3_diagram293 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d293h2l132, only: numerator_t2_diagram293 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d306h2l1, only: numerator_diagram306 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d306h2l121, only: numerator_tmu_diagram306 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d306h2l131, only: numerator_t3_diagram306 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d306h2l132, only: numerator_t2_diagram306 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d312h2l1, only: numerator_diagram312 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d312h2l121, only: numerator_tmu_diagram312 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d312h2l131, only: numerator_t3_diagram312 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d312h2l132, only: numerator_t2_diagram312 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_globalsl1, only: epspow

   implicit none
   real(ki_nin), intent(in) :: scale2
   complex(ki_nin), dimension(-2:0), intent(out) :: tot
   complex(ki_nin), intent(out) :: totr
   logical, intent(out) :: ok

   complex(ki_nin), dimension(-2:0) :: acc
   complex(ki_nin) :: accr
   integer(c_int) :: acc_ok

   integer :: istopm, istop0

   integer, parameter :: effective_group_rank = 4

   !-----------#[ invariants for ninja:
   real(ki_nin), dimension(6,6) :: s_mat
   !-----------#] initialize invariants:
   real(ki_nin), dimension(6) :: msq
   real(ki_nin), dimension(4,6) :: Vi

   ok = .true.

   if (ninja_test.eq.1) then
      istopm = 1
      istop0 = 1
   else
      istopm = ninja_istop
      istop0 = max(2,ninja_istop)
   end if
   msq(1) = 0.0_ki_nin
   Vi(:,1) = real(-k2, ki_nin)
   msq(2) = 0.0_ki_nin
   Vi(:,2) = real(0, ki_nin)
   msq(3) = 0.0_ki_nin
   Vi(:,3) = real(-k7, ki_nin)
   msq(4) = real(mB*mB, ki_nin)
   Vi(:,4) = real(-k7-k5, ki_nin)
   msq(5) = 0.0_ki_nin
   Vi(:,5) = real(-k7-k6-k5, ki_nin)
   msq(6) = 0.0_ki_nin
   Vi(:,6) = real(k3-k2+k4, ki_nin)
   !-----------#[ initialize invariants:
   s_mat(1,1) = real(0.0_ki, ki_nin)
   s_mat(1,2) = real(0.0_ki, ki_nin)
   s_mat(2,1) = s_mat(1,2)
   s_mat(1,3) = real(-es12-es71+es712, ki_nin)
   s_mat(3,1) = s_mat(1,3)
   s_mat(1,4) = real(es34+es671+es567-es56-es234-es345-es67+mB**2-es12-es71+es7&
   &12, ki_nin)
   s_mat(4,1) = s_mat(1,4)
   s_mat(1,5) = real(es34+es567-es234-es12, ki_nin)
   s_mat(5,1) = s_mat(1,5)
   s_mat(1,6) = real(es34, ki_nin)
   s_mat(6,1) = s_mat(1,6)
   s_mat(2,2) = real(0.0_ki, ki_nin)
   s_mat(2,3) = real(0.0_ki, ki_nin)
   s_mat(3,2) = s_mat(2,3)
   s_mat(2,4) = real(mB**2-es56-es67+es567, ki_nin)
   s_mat(4,2) = s_mat(2,4)
   s_mat(2,5) = real(es567, ki_nin)
   s_mat(5,2) = s_mat(2,5)
   s_mat(2,6) = real(es234, ki_nin)
   s_mat(6,2) = s_mat(2,6)
   s_mat(3,3) = real(0.0_ki, ki_nin)
   s_mat(3,4) = real(0.0_ki, ki_nin)
   s_mat(4,3) = s_mat(3,4)
   s_mat(3,5) = real(es56, ki_nin)
   s_mat(5,3) = s_mat(3,5)
   s_mat(3,6) = real(-es567+es56+es234-es71, ki_nin)
   s_mat(6,3) = s_mat(3,6)
   s_mat(4,4) = real(-2.0_ki*mB**2, ki_nin)
   s_mat(4,5) = real(0.0_ki, ki_nin)
   s_mat(5,4) = s_mat(4,5)
   s_mat(4,6) = real(es671-es67-es71, ki_nin)
   s_mat(6,4) = s_mat(4,6)
   s_mat(5,5) = real(0.0_ki, ki_nin)
   s_mat(5,6) = real(0.0_ki, ki_nin)
   s_mat(6,5) = s_mat(5,6)
   s_mat(6,6) = real(0.0_ki, ki_nin)
   !-----------#] initialize invariants


      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='293'>"
         end if
         call ninja_diagram(numerator_diagram293, numerator_t3_diagram293, nume&
         &rator_t2_diagram293, &
          &  numerator_tmu_diagram293, &
          & 6, 6, 4, (/1,2,3,4,5,6/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot =  + acc
         totr =  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='306'>"
         end if
         call ninja_diagram(numerator_diagram306, numerator_t3_diagram306, nume&
         &rator_t2_diagram306, &
          &  numerator_tmu_diagram306, &
          & 6, 5, 3, (/1,2,3,4,5/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='312'>"
         end if
         call ninja_diagram(numerator_diagram312, numerator_t3_diagram312, nume&
         &rator_t2_diagram312, &
          &  numerator_tmu_diagram312, &
          & 6, 5, 3, (/2,3,4,5,6/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
      !------#] sum over reduction of single diagrams:
end subroutine ninja_reduce_group19
!-----#] subroutine ninja_reduce_group19:
!-----#[ subroutine ninja_reduce_group20:
subroutine     ninja_reduce_group20(scale2,tot,totr,ok)
   use iso_c_binding, only: c_ptr, c_loc, c_int
   use ninjago_module
   use p0_dbaru_epnebbbarg_kinematics
   use p0_dbaru_epnebbbarg_model
   use p0_dbaru_epnebbbarg_d69h2l1, only: numerator_diagram69 => numerator_ninja
   use p0_dbaru_epnebbbarg_d69h2l121, only: numerator_tmu_diagram69 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d69h2l131, only: numerator_t3_diagram69 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d69h2l132, only: numerator_t2_diagram69 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_d96h2l1, only: numerator_diagram96 => numerator_ninja
   use p0_dbaru_epnebbbarg_d96h2l121, only: numerator_tmu_diagram96 => numerato&
   &r_tmu
   use p0_dbaru_epnebbbarg_d96h2l131, only: numerator_t3_diagram96 => numerator&
   &_t3
   use p0_dbaru_epnebbbarg_d96h2l132, only: numerator_t2_diagram96 => numerator&
   &_t2
   use p0_dbaru_epnebbbarg_d113h2l1, only: numerator_diagram113 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d113h2l121, only: numerator_tmu_diagram113 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d113h2l131, only: numerator_t3_diagram113 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d113h2l132, only: numerator_t2_diagram113 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d123h2l1, only: numerator_diagram123 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d123h2l121, only: numerator_tmu_diagram123 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d123h2l131, only: numerator_t3_diagram123 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d123h2l132, only: numerator_t2_diagram123 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d297h2l1, only: numerator_diagram297 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d297h2l121, only: numerator_tmu_diagram297 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d297h2l131, only: numerator_t3_diagram297 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d297h2l132, only: numerator_t2_diagram297 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d308h2l1, only: numerator_diagram308 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d308h2l121, only: numerator_tmu_diagram308 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d308h2l131, only: numerator_t3_diagram308 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d308h2l132, only: numerator_t2_diagram308 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d311h2l1, only: numerator_diagram311 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d311h2l121, only: numerator_tmu_diagram311 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d311h2l131, only: numerator_t3_diagram311 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d311h2l132, only: numerator_t2_diagram311 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d319h2l1, only: numerator_diagram319 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d319h2l121, only: numerator_tmu_diagram319 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d319h2l131, only: numerator_t3_diagram319 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d319h2l132, only: numerator_t2_diagram319 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_d334h2l1, only: numerator_diagram334 => numerator_ni&
   &nja
   use p0_dbaru_epnebbbarg_d334h2l121, only: numerator_tmu_diagram334 => numera&
   &tor_tmu
   use p0_dbaru_epnebbbarg_d334h2l131, only: numerator_t3_diagram334 => numerat&
   &or_t3
   use p0_dbaru_epnebbbarg_d334h2l132, only: numerator_t2_diagram334 => numerat&
   &or_t2
   use p0_dbaru_epnebbbarg_globalsl1, only: epspow

   implicit none
   real(ki_nin), intent(in) :: scale2
   complex(ki_nin), dimension(-2:0), intent(out) :: tot
   complex(ki_nin), intent(out) :: totr
   logical, intent(out) :: ok

   complex(ki_nin), dimension(-2:0) :: acc
   complex(ki_nin) :: accr
   integer(c_int) :: acc_ok

   integer :: istopm, istop0

   integer, parameter :: effective_group_rank = 5

   !-----------#[ invariants for ninja:
   real(ki_nin), dimension(6,6) :: s_mat
   !-----------#] initialize invariants:
   real(ki_nin), dimension(6) :: msq
   real(ki_nin), dimension(4,6) :: Vi

   ok = .true.

   if (ninja_test.eq.1) then
      istopm = 1
      istop0 = 1
   else
      istopm = ninja_istop
      istop0 = max(2,ninja_istop)
   end if
   msq(1) = 0.0_ki_nin
   Vi(:,1) = real(-k2, ki_nin)
   msq(2) = 0.0_ki_nin
   Vi(:,2) = real(0, ki_nin)
   msq(3) = 0.0_ki_nin
   Vi(:,3) = real(-k7, ki_nin)
   msq(4) = real(mB*mB, ki_nin)
   Vi(:,4) = real(-k7-k6, ki_nin)
   msq(5) = 0.0_ki_nin
   Vi(:,5) = real(-k7-k6-k5, ki_nin)
   msq(6) = 0.0_ki_nin
   Vi(:,6) = real(k3-k2+k4, ki_nin)
   !-----------#[ initialize invariants:
   s_mat(1,1) = real(0.0_ki, ki_nin)
   s_mat(1,2) = real(0.0_ki, ki_nin)
   s_mat(2,1) = s_mat(1,2)
   s_mat(1,3) = real(-es12-es71+es712, ki_nin)
   s_mat(3,1) = s_mat(1,3)
   s_mat(1,4) = real(-es671+es345+es67-mB**2-es12, ki_nin)
   s_mat(4,1) = s_mat(1,4)
   s_mat(1,5) = real(es34+es567-es234-es12, ki_nin)
   s_mat(5,1) = s_mat(1,5)
   s_mat(1,6) = real(es34, ki_nin)
   s_mat(6,1) = s_mat(1,6)
   s_mat(2,2) = real(0.0_ki, ki_nin)
   s_mat(2,3) = real(0.0_ki, ki_nin)
   s_mat(3,2) = s_mat(2,3)
   s_mat(2,4) = real(-mB**2+es67, ki_nin)
   s_mat(4,2) = s_mat(2,4)
   s_mat(2,5) = real(es567, ki_nin)
   s_mat(5,2) = s_mat(2,5)
   s_mat(2,6) = real(es234, ki_nin)
   s_mat(6,2) = s_mat(2,6)
   s_mat(3,3) = real(0.0_ki, ki_nin)
   s_mat(3,4) = real(0.0_ki, ki_nin)
   s_mat(4,3) = s_mat(3,4)
   s_mat(3,5) = real(es56, ki_nin)
   s_mat(5,3) = s_mat(3,5)
   s_mat(3,6) = real(-es567+es56+es234-es71, ki_nin)
   s_mat(6,3) = s_mat(3,6)
   s_mat(4,4) = real(-2.0_ki*mB**2, ki_nin)
   s_mat(4,5) = real(0.0_ki, ki_nin)
   s_mat(5,4) = s_mat(4,5)
   s_mat(4,6) = real(-es671-es567+es234+es67, ki_nin)
   s_mat(6,4) = s_mat(4,6)
   s_mat(5,5) = real(0.0_ki, ki_nin)
   s_mat(5,6) = real(0.0_ki, ki_nin)
   s_mat(6,5) = s_mat(5,6)
   s_mat(6,6) = real(0.0_ki, ki_nin)
   !-----------#] initialize invariants


      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='69'>"
         end if
         call ninja_diagram(numerator_diagram69, numerator_t3_diagram69, numera&
         &tor_t2_diagram69, &
          &  numerator_tmu_diagram69, &
          & 6, 5, 4, (/1,2,3,5,6/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot =  + acc
         totr =  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='96'>"
         end if
         call ninja_diagram(numerator_diagram96, numerator_t3_diagram96, numera&
         &tor_t2_diagram96, &
          &  numerator_tmu_diagram96, &
          & 6, 4, 3, (/2,3,5,6/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='113'>"
         end if
         call ninja_diagram(numerator_diagram113, numerator_t3_diagram113, nume&
         &rator_t2_diagram113, &
          &  numerator_tmu_diagram113, &
          & 6, 4, 3, (/1,2,3,5/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='123'>"
         end if
         call ninja_diagram(numerator_diagram123, numerator_t3_diagram123, nume&
         &rator_t2_diagram123, &
          &  numerator_tmu_diagram123, &
          & 6, 4, 3, (/1,2,3,6/), &
          & Vi, s_mat, scale2, istop0, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='297'>"
         end if
         call ninja_diagram(numerator_diagram297, numerator_t3_diagram297, nume&
         &rator_t2_diagram297, &
          &  numerator_tmu_diagram297, &
          & 6, 6, 4, (/1,2,3,4,5,6/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='308'>"
         end if
         call ninja_diagram(numerator_diagram308, numerator_t3_diagram308, nume&
         &rator_t2_diagram308, &
          &  numerator_tmu_diagram308, &
          & 6, 5, 3, (/1,2,3,4,5/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='311'>"
         end if
         call ninja_diagram(numerator_diagram311, numerator_t3_diagram311, nume&
         &rator_t2_diagram311, &
          &  numerator_tmu_diagram311, &
          & 6, 5, 3, (/2,3,4,5,6/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='319'>"
         end if
         call ninja_diagram(numerator_diagram319, numerator_t3_diagram319, nume&
         &rator_t2_diagram319, &
          &  numerator_tmu_diagram319, &
          & 6, 4, 3, (/2,3,4,5/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='334'>"
         end if
         call ninja_diagram(numerator_diagram334, numerator_t3_diagram334, nume&
         &rator_t2_diagram334, &
          &  numerator_tmu_diagram334, &
          & 6, 3, 2, (/2,3,4/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.NINJA_SUCCESS)
         if(debug_nlo_diagrams) then
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-finite' re='", +real(acc(0), ki), &
               & "' im='", aimag(acc(0)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-single' re='", +real(acc(-1), ki), &
               & "' im='", aimag(acc(-1)), "'/>"
            write(logfile,'(A30,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-double' re='", +real(acc(-2), ki), &
               & "' im='", aimag(acc(-2)), "'/>"
            write(logfile,'(A32,E24.16,A6,E24.16,A3)') &
               & "<result kind='nlo-rational' re='", +real(accr, ki), &
               & "' im='", aimag(accr), "'/>"
            if(ok) then
               write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
            else
               write(logfile,'(A29)') "<flag name='ok' status='no'/>"
            end if
            write(logfile,*) "</diagram>"
         end if
         tot = tot  + acc
         totr = totr  + accr
      !------#] sum over reduction of single diagrams:
end subroutine ninja_reduce_group20
!-----#] subroutine ninja_reduce_group20:
!---#] reduce groups with ninja:
end module p0_dbaru_epnebbbarg_ninjah2
