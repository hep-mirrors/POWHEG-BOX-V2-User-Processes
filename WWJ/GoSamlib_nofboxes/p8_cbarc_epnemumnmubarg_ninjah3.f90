!
module     p8_cbarc_epnemumnmubarg_ninjah3
   ! This file has been generated for ninja
   use ninjago_module, only: ki_nin
   use p8_cbarc_epnemumnmubarg_config
   implicit none
   private
   public :: ninja_reduce_group0
   public :: ninja_reduce_group1
   public :: ninja_reduce_group2
   public :: ninja_reduce_group3
contains
!---#[ reduce groups with ninja:
!-----#[ subroutine ninja_reduce_group0:
subroutine     ninja_reduce_group0(scale2,tot,totr,ok)
   use iso_c_binding, only: c_ptr, c_loc, c_int
   use ninjago_module
   use p8_cbarc_epnemumnmubarg_kinematics
   use p8_cbarc_epnemumnmubarg_model
   use p8_cbarc_epnemumnmubarg_d33h3l1, only: numerator_diagram33 => numerator_&
   &ninja
   use p8_cbarc_epnemumnmubarg_d33h3l121, only: numerator_tmu_diagram33 => nume&
   &rator_tmu
   use p8_cbarc_epnemumnmubarg_d33h3l131, only: numerator_t3_diagram33 => numer&
   &ator_t3
   use p8_cbarc_epnemumnmubarg_d33h3l132, only: numerator_t2_diagram33 => numer&
   &ator_t2
   use p8_cbarc_epnemumnmubarg_d57h3l1, only: numerator_diagram57 => numerator_&
   &ninja
   use p8_cbarc_epnemumnmubarg_d57h3l121, only: numerator_tmu_diagram57 => nume&
   &rator_tmu
   use p8_cbarc_epnemumnmubarg_d57h3l131, only: numerator_t3_diagram57 => numer&
   &ator_t3
   use p8_cbarc_epnemumnmubarg_d57h3l132, only: numerator_t2_diagram57 => numer&
   &ator_t2
   use p8_cbarc_epnemumnmubarg_d177h3l1, only: numerator_diagram177 => numerato&
   &r_ninja
   use p8_cbarc_epnemumnmubarg_d177h3l121, only: numerator_tmu_diagram177 => nu&
   &merator_tmu
   use p8_cbarc_epnemumnmubarg_d177h3l131, only: numerator_t3_diagram177 => num&
   &erator_t3
   use p8_cbarc_epnemumnmubarg_d177h3l132, only: numerator_t2_diagram177 => num&
   &erator_t2
   use p8_cbarc_epnemumnmubarg_d205h3l1, only: numerator_diagram205 => numerato&
   &r_ninja
   use p8_cbarc_epnemumnmubarg_d205h3l121, only: numerator_tmu_diagram205 => nu&
   &merator_tmu
   use p8_cbarc_epnemumnmubarg_d205h3l131, only: numerator_t3_diagram205 => num&
   &erator_t3
   use p8_cbarc_epnemumnmubarg_d205h3l132, only: numerator_t2_diagram205 => num&
   &erator_t2
   use p8_cbarc_epnemumnmubarg_d281h3l1, only: numerator_diagram281 => numerato&
   &r_ninja
   use p8_cbarc_epnemumnmubarg_d281h3l121, only: numerator_tmu_diagram281 => nu&
   &merator_tmu
   use p8_cbarc_epnemumnmubarg_d281h3l131, only: numerator_t3_diagram281 => num&
   &erator_t3
   use p8_cbarc_epnemumnmubarg_d281h3l132, only: numerator_t2_diagram281 => num&
   &erator_t2
   use p8_cbarc_epnemumnmubarg_d465h3l1, only: numerator_diagram465 => numerato&
   &r_ninja
   use p8_cbarc_epnemumnmubarg_d465h3l121, only: numerator_tmu_diagram465 => nu&
   &merator_tmu
   use p8_cbarc_epnemumnmubarg_d465h3l131, only: numerator_t3_diagram465 => num&
   &erator_t3
   use p8_cbarc_epnemumnmubarg_d465h3l132, only: numerator_t2_diagram465 => num&
   &erator_t2
   use p8_cbarc_epnemumnmubarg_d485h3l1, only: numerator_diagram485 => numerato&
   &r_ninja
   use p8_cbarc_epnemumnmubarg_d485h3l121, only: numerator_tmu_diagram485 => nu&
   &merator_tmu
   use p8_cbarc_epnemumnmubarg_d485h3l131, only: numerator_t3_diagram485 => num&
   &erator_t3
   use p8_cbarc_epnemumnmubarg_d485h3l132, only: numerator_t2_diagram485 => num&
   &erator_t2
   use p8_cbarc_epnemumnmubarg_d489h3l1, only: numerator_diagram489 => numerato&
   &r_ninja
   use p8_cbarc_epnemumnmubarg_d489h3l121, only: numerator_tmu_diagram489 => nu&
   &merator_tmu
   use p8_cbarc_epnemumnmubarg_d489h3l131, only: numerator_t3_diagram489 => num&
   &erator_t3
   use p8_cbarc_epnemumnmubarg_d489h3l132, only: numerator_t2_diagram489 => num&
   &erator_t2
   use p8_cbarc_epnemumnmubarg_d573h3l1, only: numerator_diagram573 => numerato&
   &r_ninja
   use p8_cbarc_epnemumnmubarg_d573h3l121, only: numerator_tmu_diagram573 => nu&
   &merator_tmu
   use p8_cbarc_epnemumnmubarg_d573h3l131, only: numerator_t3_diagram573 => num&
   &erator_t3
   use p8_cbarc_epnemumnmubarg_d573h3l132, only: numerator_t2_diagram573 => num&
   &erator_t2
   use p8_cbarc_epnemumnmubarg_d595h3l1, only: numerator_diagram595 => numerato&
   &r_ninja
   use p8_cbarc_epnemumnmubarg_d595h3l121, only: numerator_tmu_diagram595 => nu&
   &merator_tmu
   use p8_cbarc_epnemumnmubarg_d595h3l131, only: numerator_t3_diagram595 => num&
   &erator_t3
   use p8_cbarc_epnemumnmubarg_d595h3l132, only: numerator_t2_diagram595 => num&
   &erator_t2
   use p8_cbarc_epnemumnmubarg_d603h3l1, only: numerator_diagram603 => numerato&
   &r_ninja
   use p8_cbarc_epnemumnmubarg_d603h3l121, only: numerator_tmu_diagram603 => nu&
   &merator_tmu
   use p8_cbarc_epnemumnmubarg_d603h3l131, only: numerator_t3_diagram603 => num&
   &erator_t3
   use p8_cbarc_epnemumnmubarg_d603h3l132, only: numerator_t2_diagram603 => num&
   &erator_t2
   use p8_cbarc_epnemumnmubarg_d971h3l1, only: numerator_diagram971 => numerato&
   &r_ninja
   use p8_cbarc_epnemumnmubarg_d971h3l121, only: numerator_tmu_diagram971 => nu&
   &merator_tmu
   use p8_cbarc_epnemumnmubarg_d971h3l131, only: numerator_t3_diagram971 => num&
   &erator_t3
   use p8_cbarc_epnemumnmubarg_d971h3l132, only: numerator_t2_diagram971 => num&
   &erator_t2
   use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow

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
            write(logfile,*) "<diagram index='33'>"
         end if
         call ninja_diagram(numerator_diagram33, numerator_t3_diagram33, numera&
         &tor_t2_diagram33, &
          &  numerator_tmu_diagram33, &
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
            write(logfile,*) "<diagram index='57'>"
         end if
         call ninja_diagram(numerator_diagram57, numerator_t3_diagram57, numera&
         &tor_t2_diagram57, &
          &  numerator_tmu_diagram57, &
          & 5, 3, 2, (/1,4,5/), &
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
            write(logfile,*) "<diagram index='177'>"
         end if
         call ninja_diagram(numerator_diagram177, numerator_t3_diagram177, nume&
         &rator_t2_diagram177, &
          &  numerator_tmu_diagram177, &
          & 5, 3, 2, (/2,4,5/), &
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
            write(logfile,*) "<diagram index='205'>"
         end if
         call ninja_diagram(numerator_diagram205, numerator_t3_diagram205, nume&
         &rator_t2_diagram205, &
          &  numerator_tmu_diagram205, &
          & 5, 2, 1, (/2,4/), &
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
            write(logfile,*) "<diagram index='281'>"
         end if
         call ninja_diagram(numerator_diagram281, numerator_t3_diagram281, nume&
         &rator_t2_diagram281, &
          &  numerator_tmu_diagram281, &
          & 5, 3, 2, (/1,2,4/), &
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
            write(logfile,*) "<diagram index='465'>"
         end if
         call ninja_diagram(numerator_diagram465, numerator_t3_diagram465, nume&
         &rator_t2_diagram465, &
          &  numerator_tmu_diagram465, &
          & 5, 2, 1, (/1,4/), &
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
            write(logfile,*) "<diagram index='485'>"
         end if
         call ninja_diagram(numerator_diagram485, numerator_t3_diagram485, nume&
         &rator_t2_diagram485, &
          &  numerator_tmu_diagram485, &
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
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='489'>"
         end if
         call ninja_diagram(numerator_diagram489, numerator_t3_diagram489, nume&
         &rator_t2_diagram489, &
          &  numerator_tmu_diagram489, &
          & 5, 3, 2, (/2,3,4/), &
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
            write(logfile,*) "<diagram index='573'>"
         end if
         call ninja_diagram(numerator_diagram573, numerator_t3_diagram573, nume&
         &rator_t2_diagram573, &
          &  numerator_tmu_diagram573, &
          & 5, 4, 3, (/2,3,4,5/), &
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
            write(logfile,*) "<diagram index='595'>"
         end if
         call ninja_diagram(numerator_diagram595, numerator_t3_diagram595, nume&
         &rator_t2_diagram595, &
          &  numerator_tmu_diagram595, &
          & 5, 4, 3, (/1,2,3,4/), &
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
            write(logfile,*) "<diagram index='603'>"
         end if
         call ninja_diagram(numerator_diagram603, numerator_t3_diagram603, nume&
         &rator_t2_diagram603, &
          &  numerator_tmu_diagram603, &
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
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='971'>"
         end if
         call ninja_diagram(numerator_diagram971, numerator_t3_diagram971, nume&
         &rator_t2_diagram971, &
          &  numerator_tmu_diagram971, &
          & 5, 3, 2, (/1,3,4/), &
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
end subroutine ninja_reduce_group0
!-----#] subroutine ninja_reduce_group0:
!-----#[ subroutine ninja_reduce_group1:
subroutine     ninja_reduce_group1(scale2,tot,totr,ok)
   use iso_c_binding, only: c_ptr, c_loc, c_int
   use ninjago_module
   use p8_cbarc_epnemumnmubarg_kinematics
   use p8_cbarc_epnemumnmubarg_model
   use p8_cbarc_epnemumnmubarg_d37h3l1, only: numerator_diagram37 => numerator_&
   &ninja
   use p8_cbarc_epnemumnmubarg_d37h3l121, only: numerator_tmu_diagram37 => nume&
   &rator_tmu
   use p8_cbarc_epnemumnmubarg_d37h3l131, only: numerator_t3_diagram37 => numer&
   &ator_t3
   use p8_cbarc_epnemumnmubarg_d37h3l132, only: numerator_t2_diagram37 => numer&
   &ator_t2
   use p8_cbarc_epnemumnmubarg_d61h3l1, only: numerator_diagram61 => numerator_&
   &ninja
   use p8_cbarc_epnemumnmubarg_d61h3l121, only: numerator_tmu_diagram61 => nume&
   &rator_tmu
   use p8_cbarc_epnemumnmubarg_d61h3l131, only: numerator_t3_diagram61 => numer&
   &ator_t3
   use p8_cbarc_epnemumnmubarg_d61h3l132, only: numerator_t2_diagram61 => numer&
   &ator_t2
   use p8_cbarc_epnemumnmubarg_d191h3l1, only: numerator_diagram191 => numerato&
   &r_ninja
   use p8_cbarc_epnemumnmubarg_d191h3l121, only: numerator_tmu_diagram191 => nu&
   &merator_tmu
   use p8_cbarc_epnemumnmubarg_d191h3l131, only: numerator_t3_diagram191 => num&
   &erator_t3
   use p8_cbarc_epnemumnmubarg_d191h3l132, only: numerator_t2_diagram191 => num&
   &erator_t2
   use p8_cbarc_epnemumnmubarg_d219h3l1, only: numerator_diagram219 => numerato&
   &r_ninja
   use p8_cbarc_epnemumnmubarg_d219h3l121, only: numerator_tmu_diagram219 => nu&
   &merator_tmu
   use p8_cbarc_epnemumnmubarg_d219h3l131, only: numerator_t3_diagram219 => num&
   &erator_t3
   use p8_cbarc_epnemumnmubarg_d219h3l132, only: numerator_t2_diagram219 => num&
   &erator_t2
   use p8_cbarc_epnemumnmubarg_d285h3l1, only: numerator_diagram285 => numerato&
   &r_ninja
   use p8_cbarc_epnemumnmubarg_d285h3l121, only: numerator_tmu_diagram285 => nu&
   &merator_tmu
   use p8_cbarc_epnemumnmubarg_d285h3l131, only: numerator_t3_diagram285 => num&
   &erator_t3
   use p8_cbarc_epnemumnmubarg_d285h3l132, only: numerator_t2_diagram285 => num&
   &erator_t2
   use p8_cbarc_epnemumnmubarg_d469h3l1, only: numerator_diagram469 => numerato&
   &r_ninja
   use p8_cbarc_epnemumnmubarg_d469h3l121, only: numerator_tmu_diagram469 => nu&
   &merator_tmu
   use p8_cbarc_epnemumnmubarg_d469h3l131, only: numerator_t3_diagram469 => num&
   &erator_t3
   use p8_cbarc_epnemumnmubarg_d469h3l132, only: numerator_t2_diagram469 => num&
   &erator_t2
   use p8_cbarc_epnemumnmubarg_d481h3l1, only: numerator_diagram481 => numerato&
   &r_ninja
   use p8_cbarc_epnemumnmubarg_d481h3l121, only: numerator_tmu_diagram481 => nu&
   &merator_tmu
   use p8_cbarc_epnemumnmubarg_d481h3l131, only: numerator_t3_diagram481 => num&
   &erator_t3
   use p8_cbarc_epnemumnmubarg_d481h3l132, only: numerator_t2_diagram481 => num&
   &erator_t2
   use p8_cbarc_epnemumnmubarg_d517h3l1, only: numerator_diagram517 => numerato&
   &r_ninja
   use p8_cbarc_epnemumnmubarg_d517h3l121, only: numerator_tmu_diagram517 => nu&
   &merator_tmu
   use p8_cbarc_epnemumnmubarg_d517h3l131, only: numerator_t3_diagram517 => num&
   &erator_t3
   use p8_cbarc_epnemumnmubarg_d517h3l132, only: numerator_t2_diagram517 => num&
   &erator_t2
   use p8_cbarc_epnemumnmubarg_d559h3l1, only: numerator_diagram559 => numerato&
   &r_ninja
   use p8_cbarc_epnemumnmubarg_d559h3l121, only: numerator_tmu_diagram559 => nu&
   &merator_tmu
   use p8_cbarc_epnemumnmubarg_d559h3l131, only: numerator_t3_diagram559 => num&
   &erator_t3
   use p8_cbarc_epnemumnmubarg_d559h3l132, only: numerator_t2_diagram559 => num&
   &erator_t2
   use p8_cbarc_epnemumnmubarg_d607h3l1, only: numerator_diagram607 => numerato&
   &r_ninja
   use p8_cbarc_epnemumnmubarg_d607h3l121, only: numerator_tmu_diagram607 => nu&
   &merator_tmu
   use p8_cbarc_epnemumnmubarg_d607h3l131, only: numerator_t3_diagram607 => num&
   &erator_t3
   use p8_cbarc_epnemumnmubarg_d607h3l132, only: numerator_t2_diagram607 => num&
   &erator_t2
   use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow

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
            write(logfile,*) "<diagram index='37'>"
         end if
         call ninja_diagram(numerator_diagram37, numerator_t3_diagram37, numera&
         &tor_t2_diagram37, &
          &  numerator_tmu_diagram37, &
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
            write(logfile,*) "<diagram index='61'>"
         end if
         call ninja_diagram(numerator_diagram61, numerator_t3_diagram61, numera&
         &tor_t2_diagram61, &
          &  numerator_tmu_diagram61, &
          & 5, 3, 2, (/1,2,3/), &
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
            write(logfile,*) "<diagram index='191'>"
         end if
         call ninja_diagram(numerator_diagram191, numerator_t3_diagram191, nume&
         &rator_t2_diagram191, &
          &  numerator_tmu_diagram191, &
          & 5, 3, 2, (/2,3,5/), &
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
            write(logfile,*) "<diagram index='219'>"
         end if
         call ninja_diagram(numerator_diagram219, numerator_t3_diagram219, nume&
         &rator_t2_diagram219, &
          &  numerator_tmu_diagram219, &
          & 5, 2, 1, (/3,5/), &
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
            write(logfile,*) "<diagram index='285'>"
         end if
         call ninja_diagram(numerator_diagram285, numerator_t3_diagram285, nume&
         &rator_t2_diagram285, &
          &  numerator_tmu_diagram285, &
          & 5, 3, 2, (/1,3,5/), &
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
            write(logfile,*) "<diagram index='469'>"
         end if
         call ninja_diagram(numerator_diagram469, numerator_t3_diagram469, nume&
         &rator_t2_diagram469, &
          &  numerator_tmu_diagram469, &
          & 5, 2, 1, (/1,3/), &
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
            write(logfile,*) "<diagram index='481'>"
         end if
         call ninja_diagram(numerator_diagram481, numerator_t3_diagram481, nume&
         &rator_t2_diagram481, &
          &  numerator_tmu_diagram481, &
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
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='517'>"
         end if
         call ninja_diagram(numerator_diagram517, numerator_t3_diagram517, nume&
         &rator_t2_diagram517, &
          &  numerator_tmu_diagram517, &
          & 5, 3, 2, (/3,4,5/), &
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
            write(logfile,*) "<diagram index='559'>"
         end if
         call ninja_diagram(numerator_diagram559, numerator_t3_diagram559, nume&
         &rator_t2_diagram559, &
          &  numerator_tmu_diagram559, &
          & 5, 4, 3, (/2,3,4,5/), &
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
            write(logfile,*) "<diagram index='607'>"
         end if
         call ninja_diagram(numerator_diagram607, numerator_t3_diagram607, nume&
         &rator_t2_diagram607, &
          &  numerator_tmu_diagram607, &
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
end subroutine ninja_reduce_group1
!-----#] subroutine ninja_reduce_group1:
!-----#[ subroutine ninja_reduce_group2:
subroutine     ninja_reduce_group2(scale2,tot,totr,ok)
   use iso_c_binding, only: c_ptr, c_loc, c_int
   use ninjago_module
   use p8_cbarc_epnemumnmubarg_kinematics
   use p8_cbarc_epnemumnmubarg_model
   use p8_cbarc_epnemumnmubarg_d473h3l1, only: numerator_diagram473 => numerato&
   &r_ninja
   use p8_cbarc_epnemumnmubarg_d473h3l121, only: numerator_tmu_diagram473 => nu&
   &merator_tmu
   use p8_cbarc_epnemumnmubarg_d473h3l131, only: numerator_t3_diagram473 => num&
   &erator_t3
   use p8_cbarc_epnemumnmubarg_d473h3l132, only: numerator_t2_diagram473 => num&
   &erator_t2
   use p8_cbarc_epnemumnmubarg_d587h3l1, only: numerator_diagram587 => numerato&
   &r_ninja
   use p8_cbarc_epnemumnmubarg_d587h3l121, only: numerator_tmu_diagram587 => nu&
   &merator_tmu
   use p8_cbarc_epnemumnmubarg_d587h3l131, only: numerator_t3_diagram587 => num&
   &erator_t3
   use p8_cbarc_epnemumnmubarg_d587h3l132, only: numerator_t2_diagram587 => num&
   &erator_t2
   use p8_cbarc_epnemumnmubarg_d591h3l1, only: numerator_diagram591 => numerato&
   &r_ninja
   use p8_cbarc_epnemumnmubarg_d591h3l121, only: numerator_tmu_diagram591 => nu&
   &merator_tmu
   use p8_cbarc_epnemumnmubarg_d591h3l131, only: numerator_t3_diagram591 => num&
   &erator_t3
   use p8_cbarc_epnemumnmubarg_d591h3l132, only: numerator_t2_diagram591 => num&
   &erator_t2
   use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow

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
            write(logfile,*) "<diagram index='473'>"
         end if
         call ninja_diagram(numerator_diagram473, numerator_t3_diagram473, nume&
         &rator_t2_diagram473, &
          &  numerator_tmu_diagram473, &
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
            write(logfile,*) "<diagram index='587'>"
         end if
         call ninja_diagram(numerator_diagram587, numerator_t3_diagram587, nume&
         &rator_t2_diagram587, &
          &  numerator_tmu_diagram587, &
          & 5, 4, 3, (/1,2,3,4/), &
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
            write(logfile,*) "<diagram index='591'>"
         end if
         call ninja_diagram(numerator_diagram591, numerator_t3_diagram591, nume&
         &rator_t2_diagram591, &
          &  numerator_tmu_diagram591, &
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
         tot = tot  + acc
         totr = totr  + accr
      !------#] sum over reduction of single diagrams:
end subroutine ninja_reduce_group2
!-----#] subroutine ninja_reduce_group2:
!-----#[ subroutine ninja_reduce_group3:
subroutine     ninja_reduce_group3(scale2,tot,totr,ok)
   use iso_c_binding, only: c_ptr, c_loc, c_int
   use ninjago_module
   use p8_cbarc_epnemumnmubarg_kinematics
   use p8_cbarc_epnemumnmubarg_model
   use p8_cbarc_epnemumnmubarg_d477h3l1, only: numerator_diagram477 => numerato&
   &r_ninja
   use p8_cbarc_epnemumnmubarg_d477h3l121, only: numerator_tmu_diagram477 => nu&
   &merator_tmu
   use p8_cbarc_epnemumnmubarg_d477h3l131, only: numerator_t3_diagram477 => num&
   &erator_t3
   use p8_cbarc_epnemumnmubarg_d477h3l132, only: numerator_t2_diagram477 => num&
   &erator_t2
   use p8_cbarc_epnemumnmubarg_d545h3l1, only: numerator_diagram545 => numerato&
   &r_ninja
   use p8_cbarc_epnemumnmubarg_d545h3l121, only: numerator_tmu_diagram545 => nu&
   &merator_tmu
   use p8_cbarc_epnemumnmubarg_d545h3l131, only: numerator_t3_diagram545 => num&
   &erator_t3
   use p8_cbarc_epnemumnmubarg_d545h3l132, only: numerator_t2_diagram545 => num&
   &erator_t2
   use p8_cbarc_epnemumnmubarg_d599h3l1, only: numerator_diagram599 => numerato&
   &r_ninja
   use p8_cbarc_epnemumnmubarg_d599h3l121, only: numerator_tmu_diagram599 => nu&
   &merator_tmu
   use p8_cbarc_epnemumnmubarg_d599h3l131, only: numerator_t3_diagram599 => num&
   &erator_t3
   use p8_cbarc_epnemumnmubarg_d599h3l132, only: numerator_t2_diagram599 => num&
   &erator_t2
   use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow

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
            write(logfile,*) "<diagram index='477'>"
         end if
         call ninja_diagram(numerator_diagram477, numerator_t3_diagram477, nume&
         &rator_t2_diagram477, &
          &  numerator_tmu_diagram477, &
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
            write(logfile,*) "<diagram index='545'>"
         end if
         call ninja_diagram(numerator_diagram545, numerator_t3_diagram545, nume&
         &rator_t2_diagram545, &
          &  numerator_tmu_diagram545, &
          & 5, 4, 3, (/2,3,4,5/), &
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
            write(logfile,*) "<diagram index='599'>"
         end if
         call ninja_diagram(numerator_diagram599, numerator_t3_diagram599, nume&
         &rator_t2_diagram599, &
          &  numerator_tmu_diagram599, &
          & 5, 4, 3, (/1,2,3,4/), &
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
!---#] reduce groups with ninja:
end module p8_cbarc_epnemumnmubarg_ninjah3
