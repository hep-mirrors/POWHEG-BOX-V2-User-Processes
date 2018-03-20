!
module     p0_gg_hhg_ninjah1_qp
   ! This file has been generated for ninja
   use quadninjago_module, only: ki_nin
   use p0_gg_hhg_config
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
contains
!---#[ reduce groups with ninja:
!-----#[ subroutine ninja_reduce_group0:
subroutine     ninja_reduce_group0(scale2,tot,totr,ok)
   use iso_c_binding, only: c_ptr, c_loc, c_int
   use quadninjago_module
   use p0_gg_hhg_kinematics_qp
   use p0_gg_hhg_model_qp
   use p0_gg_hhg_d65h1l1_qp, only: numerator_diagram65 => numerator_ninja
   use p0_gg_hhg_d65h1l121_qp, only: numerator_tmu_diagram65 => numerator_tmu
   use p0_gg_hhg_d65h1l131_qp, only: numerator_t3_diagram65 => numerator_t3
   use p0_gg_hhg_d65h1l132_qp, only: numerator_t2_diagram65 => numerator_t2
   use p0_gg_hhg_globalsl1_qp, only: epspow

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
   msq(1) = real(mT*mT, ki_nin)
   Vi(:,1) = real(-k2+k5, ki_nin)
   msq(2) = real(mT*mT, ki_nin)
   Vi(:,2) = real(-k2, ki_nin)
   msq(3) = real(mT*mT, ki_nin)
   Vi(:,3) = real(0, ki_nin)
   msq(4) = real(mT*mT, ki_nin)
   Vi(:,4) = real(-k3, ki_nin)
   msq(5) = real(mT*mT, ki_nin)
   Vi(:,5) = real(-k3-k4, ki_nin)
   !-----------#[ initialize invariants:
   s_mat(1,1) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(1,2) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(2,1) = s_mat(1,2)
   s_mat(1,3) = real(-es12-2.0_ki*mT**2+es34-es51, ki_nin)
   s_mat(3,1) = s_mat(1,3)
   s_mat(1,4) = real(es23+mH**2-2.0_ki*mT**2-es45-es51, ki_nin)
   s_mat(4,1) = s_mat(1,4)
   s_mat(1,5) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(5,1) = s_mat(1,5)
   s_mat(2,2) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(2,3) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(3,2) = s_mat(2,3)
   s_mat(2,4) = real(es23-2.0_ki*mT**2, ki_nin)
   s_mat(4,2) = s_mat(2,4)
   s_mat(2,5) = real(-2.0_ki*mT**2+es51, ki_nin)
   s_mat(5,2) = s_mat(2,5)
   s_mat(3,3) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(3,4) = real(mH**2-2.0_ki*mT**2, ki_nin)
   s_mat(4,3) = s_mat(3,4)
   s_mat(3,5) = real(es34-2.0_ki*mT**2, ki_nin)
   s_mat(5,3) = s_mat(3,5)
   s_mat(4,4) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(4,5) = real(mH**2-2.0_ki*mT**2, ki_nin)
   s_mat(5,4) = s_mat(4,5)
   s_mat(5,5) = real(-2.0_ki*mT**2, ki_nin)
   !-----------#] initialize invariants


      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='65'>"
         end if
         call quadninja_diagram(numerator_diagram65, numerator_t3_diagram65, nu&
         &merator_t2_diagram65, &
          &  numerator_tmu_diagram65, &
          & 5, 5, 5, (/1,2,3,4,5/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.QUADNINJA_SUCCESS)
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
      !------#] sum over reduction of single diagrams:
end subroutine ninja_reduce_group0
!-----#] subroutine ninja_reduce_group0:
!-----#[ subroutine ninja_reduce_group1:
subroutine     ninja_reduce_group1(scale2,tot,totr,ok)
   use iso_c_binding, only: c_ptr, c_loc, c_int
   use quadninjago_module
   use p0_gg_hhg_kinematics_qp
   use p0_gg_hhg_model_qp
   use p0_gg_hhg_d25h1l1_qp, only: numerator_diagram25 => numerator_ninja
   use p0_gg_hhg_d25h1l121_qp, only: numerator_tmu_diagram25 => numerator_tmu
   use p0_gg_hhg_d25h1l131_qp, only: numerator_t3_diagram25 => numerator_t3
   use p0_gg_hhg_d25h1l132_qp, only: numerator_t2_diagram25 => numerator_t2
   use p0_gg_hhg_d55h1l1_qp, only: numerator_diagram55 => numerator_ninja
   use p0_gg_hhg_d55h1l121_qp, only: numerator_tmu_diagram55 => numerator_tmu
   use p0_gg_hhg_d55h1l131_qp, only: numerator_t3_diagram55 => numerator_t3
   use p0_gg_hhg_d55h1l132_qp, only: numerator_t2_diagram55 => numerator_t2
   use p0_gg_hhg_globalsl1_qp, only: epspow

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
   msq(1) = real(mT*mT, ki_nin)
   Vi(:,1) = real(-k2+k5+k4, ki_nin)
   msq(2) = real(mT*mT, ki_nin)
   Vi(:,2) = real(-k2+k5, ki_nin)
   msq(3) = real(mT*mT, ki_nin)
   Vi(:,3) = real(-k2, ki_nin)
   msq(4) = real(mT*mT, ki_nin)
   Vi(:,4) = real(0, ki_nin)
   msq(5) = real(mT*mT, ki_nin)
   Vi(:,5) = real(-k3, ki_nin)
   !-----------#[ initialize invariants:
   s_mat(1,1) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(1,2) = real(mH**2-2.0_ki*mT**2, ki_nin)
   s_mat(2,1) = s_mat(1,2)
   s_mat(1,3) = real(es45-2.0_ki*mT**2, ki_nin)
   s_mat(3,1) = s_mat(1,3)
   s_mat(1,4) = real(mH**2-2.0_ki*mT**2+es45-es12-es23, ki_nin)
   s_mat(4,1) = s_mat(1,4)
   s_mat(1,5) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(5,1) = s_mat(1,5)
   s_mat(2,2) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(2,3) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(3,2) = s_mat(2,3)
   s_mat(2,4) = real(-es12-2.0_ki*mT**2+es34-es51, ki_nin)
   s_mat(4,2) = s_mat(2,4)
   s_mat(2,5) = real(es23+mH**2-2.0_ki*mT**2-es45-es51, ki_nin)
   s_mat(5,2) = s_mat(2,5)
   s_mat(3,3) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(3,4) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(4,3) = s_mat(3,4)
   s_mat(3,5) = real(es23-2.0_ki*mT**2, ki_nin)
   s_mat(5,3) = s_mat(3,5)
   s_mat(4,4) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(4,5) = real(mH**2-2.0_ki*mT**2, ki_nin)
   s_mat(5,4) = s_mat(4,5)
   s_mat(5,5) = real(-2.0_ki*mT**2, ki_nin)
   !-----------#] initialize invariants


      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='25'>"
         end if
         call quadninja_diagram(numerator_diagram25, numerator_t3_diagram25, nu&
         &merator_t2_diagram25, &
          &  numerator_tmu_diagram25, &
          & 5, 4, 4, (/1,2,4,5/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.QUADNINJA_SUCCESS)
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
            write(logfile,*) "<diagram index='55'>"
         end if
         call quadninja_diagram(numerator_diagram55, numerator_t3_diagram55, nu&
         &merator_t2_diagram55, &
          &  numerator_tmu_diagram55, &
          & 5, 5, 5, (/1,2,3,4,5/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.QUADNINJA_SUCCESS)
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
      !------#] sum over reduction of single diagrams:
end subroutine ninja_reduce_group1
!-----#] subroutine ninja_reduce_group1:
!-----#[ subroutine ninja_reduce_group2:
subroutine     ninja_reduce_group2(scale2,tot,totr,ok)
   use iso_c_binding, only: c_ptr, c_loc, c_int
   use quadninjago_module
   use p0_gg_hhg_kinematics_qp
   use p0_gg_hhg_model_qp
   use p0_gg_hhg_d63h1l1_qp, only: numerator_diagram63 => numerator_ninja
   use p0_gg_hhg_d63h1l121_qp, only: numerator_tmu_diagram63 => numerator_tmu
   use p0_gg_hhg_d63h1l131_qp, only: numerator_t3_diagram63 => numerator_t3
   use p0_gg_hhg_d63h1l132_qp, only: numerator_t2_diagram63 => numerator_t2
   use p0_gg_hhg_globalsl1_qp, only: epspow

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
   msq(1) = real(mT*mT, ki_nin)
   Vi(:,1) = real(-k3-k5, ki_nin)
   msq(2) = real(mT*mT, ki_nin)
   Vi(:,2) = real(-k3, ki_nin)
   msq(3) = real(mT*mT, ki_nin)
   Vi(:,3) = real(0, ki_nin)
   msq(4) = real(mT*mT, ki_nin)
   Vi(:,4) = real(-k2, ki_nin)
   msq(5) = real(mT*mT, ki_nin)
   Vi(:,5) = real(-k2+k4, ki_nin)
   !-----------#[ initialize invariants:
   s_mat(1,1) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(1,2) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(2,1) = s_mat(1,2)
   s_mat(1,3) = real(es12+2.0_ki*mH**2-es34-2.0_ki*mT**2-es45, ki_nin)
   s_mat(3,1) = s_mat(1,3)
   s_mat(1,4) = real(es23+mH**2-2.0_ki*mT**2-es45-es51, ki_nin)
   s_mat(4,1) = s_mat(1,4)
   s_mat(1,5) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(5,1) = s_mat(1,5)
   s_mat(2,2) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(2,3) = real(mH**2-2.0_ki*mT**2, ki_nin)
   s_mat(3,2) = s_mat(2,3)
   s_mat(2,4) = real(es23-2.0_ki*mT**2, ki_nin)
   s_mat(4,2) = s_mat(2,4)
   s_mat(2,5) = real(-2.0_ki*mT**2+es51, ki_nin)
   s_mat(5,2) = s_mat(2,5)
   s_mat(3,3) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(3,4) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(4,3) = s_mat(3,4)
   s_mat(3,5) = real(-2.0_ki*mT**2+2.0_ki*mH**2-es23+es51-es34, ki_nin)
   s_mat(5,3) = s_mat(3,5)
   s_mat(4,4) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(4,5) = real(mH**2-2.0_ki*mT**2, ki_nin)
   s_mat(5,4) = s_mat(4,5)
   s_mat(5,5) = real(-2.0_ki*mT**2, ki_nin)
   !-----------#] initialize invariants


      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='63'>"
         end if
         call quadninja_diagram(numerator_diagram63, numerator_t3_diagram63, nu&
         &merator_t2_diagram63, &
          &  numerator_tmu_diagram63, &
          & 5, 5, 5, (/1,2,3,4,5/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.QUADNINJA_SUCCESS)
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
      !------#] sum over reduction of single diagrams:
end subroutine ninja_reduce_group2
!-----#] subroutine ninja_reduce_group2:
!-----#[ subroutine ninja_reduce_group3:
subroutine     ninja_reduce_group3(scale2,tot,totr,ok)
   use iso_c_binding, only: c_ptr, c_loc, c_int
   use quadninjago_module
   use p0_gg_hhg_kinematics_qp
   use p0_gg_hhg_model_qp
   use p0_gg_hhg_d19h1l1_qp, only: numerator_diagram19 => numerator_ninja
   use p0_gg_hhg_d19h1l121_qp, only: numerator_tmu_diagram19 => numerator_tmu
   use p0_gg_hhg_d19h1l131_qp, only: numerator_t3_diagram19 => numerator_t3
   use p0_gg_hhg_d19h1l132_qp, only: numerator_t2_diagram19 => numerator_t2
   use p0_gg_hhg_d59h1l1_qp, only: numerator_diagram59 => numerator_ninja
   use p0_gg_hhg_d59h1l121_qp, only: numerator_tmu_diagram59 => numerator_tmu
   use p0_gg_hhg_d59h1l131_qp, only: numerator_t3_diagram59 => numerator_t3
   use p0_gg_hhg_d59h1l132_qp, only: numerator_t2_diagram59 => numerator_t2
   use p0_gg_hhg_globalsl1_qp, only: epspow

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
   msq(1) = real(mT*mT, ki_nin)
   Vi(:,1) = real(-k2+k5+k4, ki_nin)
   msq(2) = real(mT*mT, ki_nin)
   Vi(:,2) = real(-k2+k4, ki_nin)
   msq(3) = real(mT*mT, ki_nin)
   Vi(:,3) = real(-k2, ki_nin)
   msq(4) = real(mT*mT, ki_nin)
   Vi(:,4) = real(0, ki_nin)
   msq(5) = real(mT*mT, ki_nin)
   Vi(:,5) = real(-k3, ki_nin)
   !-----------#[ initialize invariants:
   s_mat(1,1) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(1,2) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(2,1) = s_mat(1,2)
   s_mat(1,3) = real(es45-2.0_ki*mT**2, ki_nin)
   s_mat(3,1) = s_mat(1,3)
   s_mat(1,4) = real(mH**2-2.0_ki*mT**2+es45-es12-es23, ki_nin)
   s_mat(4,1) = s_mat(1,4)
   s_mat(1,5) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(5,1) = s_mat(1,5)
   s_mat(2,2) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(2,3) = real(mH**2-2.0_ki*mT**2, ki_nin)
   s_mat(3,2) = s_mat(2,3)
   s_mat(2,4) = real(-2.0_ki*mT**2+2.0_ki*mH**2-es23+es51-es34, ki_nin)
   s_mat(4,2) = s_mat(2,4)
   s_mat(2,5) = real(-2.0_ki*mT**2+es51, ki_nin)
   s_mat(5,2) = s_mat(2,5)
   s_mat(3,3) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(3,4) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(4,3) = s_mat(3,4)
   s_mat(3,5) = real(es23-2.0_ki*mT**2, ki_nin)
   s_mat(5,3) = s_mat(3,5)
   s_mat(4,4) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(4,5) = real(mH**2-2.0_ki*mT**2, ki_nin)
   s_mat(5,4) = s_mat(4,5)
   s_mat(5,5) = real(-2.0_ki*mT**2, ki_nin)
   !-----------#] initialize invariants


      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='19'>"
         end if
         call quadninja_diagram(numerator_diagram19, numerator_t3_diagram19, nu&
         &merator_t2_diagram19, &
          &  numerator_tmu_diagram19, &
          & 5, 4, 4, (/2,3,4,5/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.QUADNINJA_SUCCESS)
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
            write(logfile,*) "<diagram index='59'>"
         end if
         call quadninja_diagram(numerator_diagram59, numerator_t3_diagram59, nu&
         &merator_t2_diagram59, &
          &  numerator_tmu_diagram59, &
          & 5, 5, 5, (/1,2,3,4,5/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.QUADNINJA_SUCCESS)
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
      !------#] sum over reduction of single diagrams:
end subroutine ninja_reduce_group3
!-----#] subroutine ninja_reduce_group3:
!-----#[ subroutine ninja_reduce_group4:
subroutine     ninja_reduce_group4(scale2,tot,totr,ok)
   use iso_c_binding, only: c_ptr, c_loc, c_int
   use quadninjago_module
   use p0_gg_hhg_kinematics_qp
   use p0_gg_hhg_model_qp
   use p0_gg_hhg_d4h1l1_qp, only: numerator_diagram4 => numerator_ninja
   use p0_gg_hhg_d4h1l121_qp, only: numerator_tmu_diagram4 => numerator_tmu
   use p0_gg_hhg_d4h1l131_qp, only: numerator_t3_diagram4 => numerator_t3
   use p0_gg_hhg_d4h1l132_qp, only: numerator_t2_diagram4 => numerator_t2
   use p0_gg_hhg_d6h1l1_qp, only: numerator_diagram6 => numerator_ninja
   use p0_gg_hhg_d6h1l121_qp, only: numerator_tmu_diagram6 => numerator_tmu
   use p0_gg_hhg_d6h1l131_qp, only: numerator_t3_diagram6 => numerator_t3
   use p0_gg_hhg_d6h1l132_qp, only: numerator_t2_diagram6 => numerator_t2
   use p0_gg_hhg_d15h1l1_qp, only: numerator_diagram15 => numerator_ninja
   use p0_gg_hhg_d15h1l121_qp, only: numerator_tmu_diagram15 => numerator_tmu
   use p0_gg_hhg_d15h1l131_qp, only: numerator_t3_diagram15 => numerator_t3
   use p0_gg_hhg_d15h1l132_qp, only: numerator_t2_diagram15 => numerator_t2
   use p0_gg_hhg_d21h1l1_qp, only: numerator_diagram21 => numerator_ninja
   use p0_gg_hhg_d21h1l121_qp, only: numerator_tmu_diagram21 => numerator_tmu
   use p0_gg_hhg_d21h1l131_qp, only: numerator_t3_diagram21 => numerator_t3
   use p0_gg_hhg_d21h1l132_qp, only: numerator_t2_diagram21 => numerator_t2
   use p0_gg_hhg_d31h1l1_qp, only: numerator_diagram31 => numerator_ninja
   use p0_gg_hhg_d31h1l121_qp, only: numerator_tmu_diagram31 => numerator_tmu
   use p0_gg_hhg_d31h1l131_qp, only: numerator_t3_diagram31 => numerator_t3
   use p0_gg_hhg_d31h1l132_qp, only: numerator_t2_diagram31 => numerator_t2
   use p0_gg_hhg_d51h1l1_qp, only: numerator_diagram51 => numerator_ninja
   use p0_gg_hhg_d51h1l121_qp, only: numerator_tmu_diagram51 => numerator_tmu
   use p0_gg_hhg_d51h1l131_qp, only: numerator_t3_diagram51 => numerator_t3
   use p0_gg_hhg_d51h1l132_qp, only: numerator_t2_diagram51 => numerator_t2
   use p0_gg_hhg_globalsl1_qp, only: epspow

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
   msq(1) = real(mT*mT, ki_nin)
   Vi(:,1) = real(-k3-k5-k4, ki_nin)
   msq(2) = real(mT*mT, ki_nin)
   Vi(:,2) = real(-k3-k4, ki_nin)
   msq(3) = real(mT*mT, ki_nin)
   Vi(:,3) = real(-k3, ki_nin)
   msq(4) = real(mT*mT, ki_nin)
   Vi(:,4) = real(0, ki_nin)
   msq(5) = real(mT*mT, ki_nin)
   Vi(:,5) = real(-k2, ki_nin)
   !-----------#[ initialize invariants:
   s_mat(1,1) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(1,2) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(2,1) = s_mat(1,2)
   s_mat(1,3) = real(es45-2.0_ki*mT**2, ki_nin)
   s_mat(3,1) = s_mat(1,3)
   s_mat(1,4) = real(es12-2.0_ki*mT**2, ki_nin)
   s_mat(4,1) = s_mat(1,4)
   s_mat(1,5) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(5,1) = s_mat(1,5)
   s_mat(2,2) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(2,3) = real(mH**2-2.0_ki*mT**2, ki_nin)
   s_mat(3,2) = s_mat(2,3)
   s_mat(2,4) = real(es34-2.0_ki*mT**2, ki_nin)
   s_mat(4,2) = s_mat(2,4)
   s_mat(2,5) = real(-2.0_ki*mT**2+es51, ki_nin)
   s_mat(5,2) = s_mat(2,5)
   s_mat(3,3) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(3,4) = real(mH**2-2.0_ki*mT**2, ki_nin)
   s_mat(4,3) = s_mat(3,4)
   s_mat(3,5) = real(es23-2.0_ki*mT**2, ki_nin)
   s_mat(5,3) = s_mat(3,5)
   s_mat(4,4) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(4,5) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(5,4) = s_mat(4,5)
   s_mat(5,5) = real(-2.0_ki*mT**2, ki_nin)
   !-----------#] initialize invariants


      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='4'>"
         end if
         call quadninja_diagram(numerator_diagram4, numerator_t3_diagram4, nume&
         &rator_t2_diagram4, &
          &  numerator_tmu_diagram4, &
          & 5, 3, 3, (/1,2,4/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.QUADNINJA_SUCCESS)
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
            write(logfile,*) "<diagram index='6'>"
         end if
         call quadninja_diagram(numerator_diagram6, numerator_t3_diagram6, nume&
         &rator_t2_diagram6, &
          &  numerator_tmu_diagram6, &
          & 5, 3, 3, (/2,4,5/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.QUADNINJA_SUCCESS)
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
            write(logfile,*) "<diagram index='15'>"
         end if
         call quadninja_diagram(numerator_diagram15, numerator_t3_diagram15, nu&
         &merator_t2_diagram15, &
          &  numerator_tmu_diagram15, &
          & 5, 4, 4, (/1,2,3,4/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.QUADNINJA_SUCCESS)
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
            write(logfile,*) "<diagram index='21'>"
         end if
         call quadninja_diagram(numerator_diagram21, numerator_t3_diagram21, nu&
         &merator_t2_diagram21, &
          &  numerator_tmu_diagram21, &
          & 5, 4, 4, (/2,3,4,5/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.QUADNINJA_SUCCESS)
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
            write(logfile,*) "<diagram index='31'>"
         end if
         call quadninja_diagram(numerator_diagram31, numerator_t3_diagram31, nu&
         &merator_t2_diagram31, &
          &  numerator_tmu_diagram31, &
          & 5, 4, 4, (/1,2,4,5/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.QUADNINJA_SUCCESS)
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
            write(logfile,*) "<diagram index='51'>"
         end if
         call quadninja_diagram(numerator_diagram51, numerator_t3_diagram51, nu&
         &merator_t2_diagram51, &
          &  numerator_tmu_diagram51, &
          & 5, 5, 5, (/1,2,3,4,5/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.QUADNINJA_SUCCESS)
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
      !------#] sum over reduction of single diagrams:
end subroutine ninja_reduce_group4
!-----#] subroutine ninja_reduce_group4:
!-----#[ subroutine ninja_reduce_group5:
subroutine     ninja_reduce_group5(scale2,tot,totr,ok)
   use iso_c_binding, only: c_ptr, c_loc, c_int
   use quadninjago_module
   use p0_gg_hhg_kinematics_qp
   use p0_gg_hhg_model_qp
   use p0_gg_hhg_d17h1l1_qp, only: numerator_diagram17 => numerator_ninja
   use p0_gg_hhg_d17h1l121_qp, only: numerator_tmu_diagram17 => numerator_tmu
   use p0_gg_hhg_d17h1l131_qp, only: numerator_t3_diagram17 => numerator_t3
   use p0_gg_hhg_d17h1l132_qp, only: numerator_t2_diagram17 => numerator_t2
   use p0_gg_hhg_d47h1l1_qp, only: numerator_diagram47 => numerator_ninja
   use p0_gg_hhg_d47h1l121_qp, only: numerator_tmu_diagram47 => numerator_tmu
   use p0_gg_hhg_d47h1l131_qp, only: numerator_t3_diagram47 => numerator_t3
   use p0_gg_hhg_d47h1l132_qp, only: numerator_t2_diagram47 => numerator_t2
   use p0_gg_hhg_globalsl1_qp, only: epspow

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
   msq(1) = real(mT*mT, ki_nin)
   Vi(:,1) = real(-k3-k5-k4, ki_nin)
   msq(2) = real(mT*mT, ki_nin)
   Vi(:,2) = real(-k3-k5, ki_nin)
   msq(3) = real(mT*mT, ki_nin)
   Vi(:,3) = real(-k3, ki_nin)
   msq(4) = real(mT*mT, ki_nin)
   Vi(:,4) = real(0, ki_nin)
   msq(5) = real(mT*mT, ki_nin)
   Vi(:,5) = real(-k2, ki_nin)
   !-----------#[ initialize invariants:
   s_mat(1,1) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(1,2) = real(mH**2-2.0_ki*mT**2, ki_nin)
   s_mat(2,1) = s_mat(1,2)
   s_mat(1,3) = real(es45-2.0_ki*mT**2, ki_nin)
   s_mat(3,1) = s_mat(1,3)
   s_mat(1,4) = real(es12-2.0_ki*mT**2, ki_nin)
   s_mat(4,1) = s_mat(1,4)
   s_mat(1,5) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(5,1) = s_mat(1,5)
   s_mat(2,2) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(2,3) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(3,2) = s_mat(2,3)
   s_mat(2,4) = real(es12+2.0_ki*mH**2-es34-2.0_ki*mT**2-es45, ki_nin)
   s_mat(4,2) = s_mat(2,4)
   s_mat(2,5) = real(es23+mH**2-2.0_ki*mT**2-es45-es51, ki_nin)
   s_mat(5,2) = s_mat(2,5)
   s_mat(3,3) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(3,4) = real(mH**2-2.0_ki*mT**2, ki_nin)
   s_mat(4,3) = s_mat(3,4)
   s_mat(3,5) = real(es23-2.0_ki*mT**2, ki_nin)
   s_mat(5,3) = s_mat(3,5)
   s_mat(4,4) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(4,5) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(5,4) = s_mat(4,5)
   s_mat(5,5) = real(-2.0_ki*mT**2, ki_nin)
   !-----------#] initialize invariants


      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='17'>"
         end if
         call quadninja_diagram(numerator_diagram17, numerator_t3_diagram17, nu&
         &merator_t2_diagram17, &
          &  numerator_tmu_diagram17, &
          & 5, 4, 4, (/1,2,3,4/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.QUADNINJA_SUCCESS)
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
            write(logfile,*) "<diagram index='47'>"
         end if
         call quadninja_diagram(numerator_diagram47, numerator_t3_diagram47, nu&
         &merator_t2_diagram47, &
          &  numerator_tmu_diagram47, &
          & 5, 5, 5, (/1,2,3,4,5/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.QUADNINJA_SUCCESS)
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
      !------#] sum over reduction of single diagrams:
end subroutine ninja_reduce_group5
!-----#] subroutine ninja_reduce_group5:
!-----#[ subroutine ninja_reduce_group6:
subroutine     ninja_reduce_group6(scale2,tot,totr,ok)
   use iso_c_binding, only: c_ptr, c_loc, c_int
   use quadninjago_module
   use p0_gg_hhg_kinematics_qp
   use p0_gg_hhg_model_qp
   use p0_gg_hhg_d8h1l1_qp, only: numerator_diagram8 => numerator_ninja
   use p0_gg_hhg_d8h1l121_qp, only: numerator_tmu_diagram8 => numerator_tmu
   use p0_gg_hhg_d8h1l131_qp, only: numerator_t3_diagram8 => numerator_t3
   use p0_gg_hhg_d8h1l132_qp, only: numerator_t2_diagram8 => numerator_t2
   use p0_gg_hhg_d23h1l1_qp, only: numerator_diagram23 => numerator_ninja
   use p0_gg_hhg_d23h1l121_qp, only: numerator_tmu_diagram23 => numerator_tmu
   use p0_gg_hhg_d23h1l131_qp, only: numerator_t3_diagram23 => numerator_t3
   use p0_gg_hhg_d23h1l132_qp, only: numerator_t2_diagram23 => numerator_t2
   use p0_gg_hhg_d27h1l1_qp, only: numerator_diagram27 => numerator_ninja
   use p0_gg_hhg_d27h1l121_qp, only: numerator_tmu_diagram27 => numerator_tmu
   use p0_gg_hhg_d27h1l131_qp, only: numerator_t3_diagram27 => numerator_t3
   use p0_gg_hhg_d27h1l132_qp, only: numerator_t2_diagram27 => numerator_t2
   use p0_gg_hhg_d35h1l1_qp, only: numerator_diagram35 => numerator_ninja
   use p0_gg_hhg_d35h1l121_qp, only: numerator_tmu_diagram35 => numerator_tmu
   use p0_gg_hhg_d35h1l131_qp, only: numerator_t3_diagram35 => numerator_t3
   use p0_gg_hhg_d35h1l132_qp, only: numerator_t2_diagram35 => numerator_t2
   use p0_gg_hhg_d61h1l1_qp, only: numerator_diagram61 => numerator_ninja
   use p0_gg_hhg_d61h1l121_qp, only: numerator_tmu_diagram61 => numerator_tmu
   use p0_gg_hhg_d61h1l131_qp, only: numerator_t3_diagram61 => numerator_t3
   use p0_gg_hhg_d61h1l132_qp, only: numerator_t2_diagram61 => numerator_t2
   use p0_gg_hhg_globalsl1_qp, only: epspow

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
   msq(1) = real(mT*mT, ki_nin)
   Vi(:,1) = real(-k2+k5, ki_nin)
   msq(2) = real(mT*mT, ki_nin)
   Vi(:,2) = real(-k2, ki_nin)
   msq(3) = real(mT*mT, ki_nin)
   Vi(:,3) = real(0, ki_nin)
   msq(4) = real(mT*mT, ki_nin)
   Vi(:,4) = real(-k4, ki_nin)
   msq(5) = real(mT*mT, ki_nin)
   Vi(:,5) = real(-k3-k4, ki_nin)
   !-----------#[ initialize invariants:
   s_mat(1,1) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(1,2) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(2,1) = s_mat(1,2)
   s_mat(1,3) = real(-es12-2.0_ki*mT**2+es34-es51, ki_nin)
   s_mat(3,1) = s_mat(1,3)
   s_mat(1,4) = real(mH**2-2.0_ki*mT**2+es45-es12-es23, ki_nin)
   s_mat(4,1) = s_mat(1,4)
   s_mat(1,5) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(5,1) = s_mat(1,5)
   s_mat(2,2) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(2,3) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(3,2) = s_mat(2,3)
   s_mat(2,4) = real(-2.0_ki*mT**2+2.0_ki*mH**2-es23+es51-es34, ki_nin)
   s_mat(4,2) = s_mat(2,4)
   s_mat(2,5) = real(-2.0_ki*mT**2+es51, ki_nin)
   s_mat(5,2) = s_mat(2,5)
   s_mat(3,3) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(3,4) = real(mH**2-2.0_ki*mT**2, ki_nin)
   s_mat(4,3) = s_mat(3,4)
   s_mat(3,5) = real(es34-2.0_ki*mT**2, ki_nin)
   s_mat(5,3) = s_mat(3,5)
   s_mat(4,4) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(4,5) = real(mH**2-2.0_ki*mT**2, ki_nin)
   s_mat(5,4) = s_mat(4,5)
   s_mat(5,5) = real(-2.0_ki*mT**2, ki_nin)
   !-----------#] initialize invariants


      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='8'>"
         end if
         call quadninja_diagram(numerator_diagram8, numerator_t3_diagram8, nume&
         &rator_t2_diagram8, &
          &  numerator_tmu_diagram8, &
          & 5, 3, 3, (/1,3,5/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.QUADNINJA_SUCCESS)
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
            write(logfile,*) "<diagram index='23'>"
         end if
         call quadninja_diagram(numerator_diagram23, numerator_t3_diagram23, nu&
         &merator_t2_diagram23, &
          &  numerator_tmu_diagram23, &
          & 5, 4, 4, (/2,3,4,5/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.QUADNINJA_SUCCESS)
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
            write(logfile,*) "<diagram index='27'>"
         end if
         call quadninja_diagram(numerator_diagram27, numerator_t3_diagram27, nu&
         &merator_t2_diagram27, &
          &  numerator_tmu_diagram27, &
          & 5, 4, 4, (/1,3,4,5/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.QUADNINJA_SUCCESS)
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
            write(logfile,*) "<diagram index='35'>"
         end if
         call quadninja_diagram(numerator_diagram35, numerator_t3_diagram35, nu&
         &merator_t2_diagram35, &
          &  numerator_tmu_diagram35, &
          & 5, 4, 4, (/1,2,3,5/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.QUADNINJA_SUCCESS)
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
            write(logfile,*) "<diagram index='61'>"
         end if
         call quadninja_diagram(numerator_diagram61, numerator_t3_diagram61, nu&
         &merator_t2_diagram61, &
          &  numerator_tmu_diagram61, &
          & 5, 5, 5, (/1,2,3,4,5/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.QUADNINJA_SUCCESS)
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
      !------#] sum over reduction of single diagrams:
end subroutine ninja_reduce_group6
!-----#] subroutine ninja_reduce_group6:
!-----#[ subroutine ninja_reduce_group7:
subroutine     ninja_reduce_group7(scale2,tot,totr,ok)
   use iso_c_binding, only: c_ptr, c_loc, c_int
   use quadninjago_module
   use p0_gg_hhg_kinematics_qp
   use p0_gg_hhg_model_qp
   use p0_gg_hhg_d57h1l1_qp, only: numerator_diagram57 => numerator_ninja
   use p0_gg_hhg_d57h1l121_qp, only: numerator_tmu_diagram57 => numerator_tmu
   use p0_gg_hhg_d57h1l131_qp, only: numerator_t3_diagram57 => numerator_t3
   use p0_gg_hhg_d57h1l132_qp, only: numerator_t2_diagram57 => numerator_t2
   use p0_gg_hhg_globalsl1_qp, only: epspow

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
   msq(1) = real(mT*mT, ki_nin)
   Vi(:,1) = real(-k4, ki_nin)
   msq(2) = real(mT*mT, ki_nin)
   Vi(:,2) = real(0, ki_nin)
   msq(3) = real(mT*mT, ki_nin)
   Vi(:,3) = real(-k2, ki_nin)
   msq(4) = real(mT*mT, ki_nin)
   Vi(:,4) = real(-k2+k5, ki_nin)
   msq(5) = real(mT*mT, ki_nin)
   Vi(:,5) = real(k3-k2+k5, ki_nin)
   !-----------#[ initialize invariants:
   s_mat(1,1) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(1,2) = real(mH**2-2.0_ki*mT**2, ki_nin)
   s_mat(2,1) = s_mat(1,2)
   s_mat(1,3) = real(-2.0_ki*mT**2+2.0_ki*mH**2-es23+es51-es34, ki_nin)
   s_mat(3,1) = s_mat(1,3)
   s_mat(1,4) = real(mH**2-2.0_ki*mT**2+es45-es12-es23, ki_nin)
   s_mat(4,1) = s_mat(1,4)
   s_mat(1,5) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(5,1) = s_mat(1,5)
   s_mat(2,2) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(2,3) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(3,2) = s_mat(2,3)
   s_mat(2,4) = real(-es12-2.0_ki*mT**2+es34-es51, ki_nin)
   s_mat(4,2) = s_mat(2,4)
   s_mat(2,5) = real(es23+mH**2-2.0_ki*mT**2-es45-es51, ki_nin)
   s_mat(5,2) = s_mat(2,5)
   s_mat(3,3) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(3,4) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(4,3) = s_mat(3,4)
   s_mat(3,5) = real(es12+2.0_ki*mH**2-es34-2.0_ki*mT**2-es45, ki_nin)
   s_mat(5,3) = s_mat(3,5)
   s_mat(4,4) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(4,5) = real(mH**2-2.0_ki*mT**2, ki_nin)
   s_mat(5,4) = s_mat(4,5)
   s_mat(5,5) = real(-2.0_ki*mT**2, ki_nin)
   !-----------#] initialize invariants


      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='57'>"
         end if
         call quadninja_diagram(numerator_diagram57, numerator_t3_diagram57, nu&
         &merator_t2_diagram57, &
          &  numerator_tmu_diagram57, &
          & 5, 5, 5, (/1,2,3,4,5/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.QUADNINJA_SUCCESS)
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
      !------#] sum over reduction of single diagrams:
end subroutine ninja_reduce_group7
!-----#] subroutine ninja_reduce_group7:
!-----#[ subroutine ninja_reduce_group8:
subroutine     ninja_reduce_group8(scale2,tot,totr,ok)
   use iso_c_binding, only: c_ptr, c_loc, c_int
   use quadninjago_module
   use p0_gg_hhg_kinematics_qp
   use p0_gg_hhg_model_qp
   use p0_gg_hhg_d53h1l1_qp, only: numerator_diagram53 => numerator_ninja
   use p0_gg_hhg_d53h1l121_qp, only: numerator_tmu_diagram53 => numerator_tmu
   use p0_gg_hhg_d53h1l131_qp, only: numerator_t3_diagram53 => numerator_t3
   use p0_gg_hhg_d53h1l132_qp, only: numerator_t2_diagram53 => numerator_t2
   use p0_gg_hhg_globalsl1_qp, only: epspow

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
   msq(1) = real(mT*mT, ki_nin)
   Vi(:,1) = real(-k3-k5-k4, ki_nin)
   msq(2) = real(mT*mT, ki_nin)
   Vi(:,2) = real(-k3-k4, ki_nin)
   msq(3) = real(mT*mT, ki_nin)
   Vi(:,3) = real(-k4, ki_nin)
   msq(4) = real(mT*mT, ki_nin)
   Vi(:,4) = real(0, ki_nin)
   msq(5) = real(mT*mT, ki_nin)
   Vi(:,5) = real(-k2, ki_nin)
   !-----------#[ initialize invariants:
   s_mat(1,1) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(1,2) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(2,1) = s_mat(1,2)
   s_mat(1,3) = real(es12+2.0_ki*mH**2-es34-2.0_ki*mT**2-es45, ki_nin)
   s_mat(3,1) = s_mat(1,3)
   s_mat(1,4) = real(es12-2.0_ki*mT**2, ki_nin)
   s_mat(4,1) = s_mat(1,4)
   s_mat(1,5) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(5,1) = s_mat(1,5)
   s_mat(2,2) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(2,3) = real(mH**2-2.0_ki*mT**2, ki_nin)
   s_mat(3,2) = s_mat(2,3)
   s_mat(2,4) = real(es34-2.0_ki*mT**2, ki_nin)
   s_mat(4,2) = s_mat(2,4)
   s_mat(2,5) = real(-2.0_ki*mT**2+es51, ki_nin)
   s_mat(5,2) = s_mat(2,5)
   s_mat(3,3) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(3,4) = real(mH**2-2.0_ki*mT**2, ki_nin)
   s_mat(4,3) = s_mat(3,4)
   s_mat(3,5) = real(-2.0_ki*mT**2+2.0_ki*mH**2-es23+es51-es34, ki_nin)
   s_mat(5,3) = s_mat(3,5)
   s_mat(4,4) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(4,5) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(5,4) = s_mat(4,5)
   s_mat(5,5) = real(-2.0_ki*mT**2, ki_nin)
   !-----------#] initialize invariants


      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='53'>"
         end if
         call quadninja_diagram(numerator_diagram53, numerator_t3_diagram53, nu&
         &merator_t2_diagram53, &
          &  numerator_tmu_diagram53, &
          & 5, 5, 5, (/1,2,3,4,5/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.QUADNINJA_SUCCESS)
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
      !------#] sum over reduction of single diagrams:
end subroutine ninja_reduce_group8
!-----#] subroutine ninja_reduce_group8:
!-----#[ subroutine ninja_reduce_group9:
subroutine     ninja_reduce_group9(scale2,tot,totr,ok)
   use iso_c_binding, only: c_ptr, c_loc, c_int
   use quadninjago_module
   use p0_gg_hhg_kinematics_qp
   use p0_gg_hhg_model_qp
   use p0_gg_hhg_d43h1l1_qp, only: numerator_diagram43 => numerator_ninja
   use p0_gg_hhg_d43h1l121_qp, only: numerator_tmu_diagram43 => numerator_tmu
   use p0_gg_hhg_d43h1l131_qp, only: numerator_t3_diagram43 => numerator_t3
   use p0_gg_hhg_d43h1l132_qp, only: numerator_t2_diagram43 => numerator_t2
   use p0_gg_hhg_globalsl1_qp, only: epspow

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
   msq(1) = real(mT*mT, ki_nin)
   Vi(:,1) = real(-k3-k5-k4, ki_nin)
   msq(2) = real(mT*mT, ki_nin)
   Vi(:,2) = real(-k5-k4, ki_nin)
   msq(3) = real(mT*mT, ki_nin)
   Vi(:,3) = real(-k4, ki_nin)
   msq(4) = real(mT*mT, ki_nin)
   Vi(:,4) = real(0, ki_nin)
   msq(5) = real(mT*mT, ki_nin)
   Vi(:,5) = real(-k2, ki_nin)
   !-----------#[ initialize invariants:
   s_mat(1,1) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(1,2) = real(mH**2-2.0_ki*mT**2, ki_nin)
   s_mat(2,1) = s_mat(1,2)
   s_mat(1,3) = real(es12+2.0_ki*mH**2-es34-2.0_ki*mT**2-es45, ki_nin)
   s_mat(3,1) = s_mat(1,3)
   s_mat(1,4) = real(es12-2.0_ki*mT**2, ki_nin)
   s_mat(4,1) = s_mat(1,4)
   s_mat(1,5) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(5,1) = s_mat(1,5)
   s_mat(2,2) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(2,3) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(3,2) = s_mat(2,3)
   s_mat(2,4) = real(es45-2.0_ki*mT**2, ki_nin)
   s_mat(4,2) = s_mat(2,4)
   s_mat(2,5) = real(mH**2-2.0_ki*mT**2+es45-es12-es23, ki_nin)
   s_mat(5,2) = s_mat(2,5)
   s_mat(3,3) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(3,4) = real(mH**2-2.0_ki*mT**2, ki_nin)
   s_mat(4,3) = s_mat(3,4)
   s_mat(3,5) = real(-2.0_ki*mT**2+2.0_ki*mH**2-es23+es51-es34, ki_nin)
   s_mat(5,3) = s_mat(3,5)
   s_mat(4,4) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(4,5) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(5,4) = s_mat(4,5)
   s_mat(5,5) = real(-2.0_ki*mT**2, ki_nin)
   !-----------#] initialize invariants


      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='43'>"
         end if
         call quadninja_diagram(numerator_diagram43, numerator_t3_diagram43, nu&
         &merator_t2_diagram43, &
          &  numerator_tmu_diagram43, &
          & 5, 5, 5, (/1,2,3,4,5/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.QUADNINJA_SUCCESS)
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
      !------#] sum over reduction of single diagrams:
end subroutine ninja_reduce_group9
!-----#] subroutine ninja_reduce_group9:
!-----#[ subroutine ninja_reduce_group10:
subroutine     ninja_reduce_group10(scale2,tot,totr,ok)
   use iso_c_binding, only: c_ptr, c_loc, c_int
   use quadninjago_module
   use p0_gg_hhg_kinematics_qp
   use p0_gg_hhg_model_qp
   use p0_gg_hhg_d13h1l1_qp, only: numerator_diagram13 => numerator_ninja
   use p0_gg_hhg_d13h1l121_qp, only: numerator_tmu_diagram13 => numerator_tmu
   use p0_gg_hhg_d13h1l131_qp, only: numerator_t3_diagram13 => numerator_t3
   use p0_gg_hhg_d13h1l132_qp, only: numerator_t2_diagram13 => numerator_t2
   use p0_gg_hhg_d29h1l1_qp, only: numerator_diagram29 => numerator_ninja
   use p0_gg_hhg_d29h1l121_qp, only: numerator_tmu_diagram29 => numerator_tmu
   use p0_gg_hhg_d29h1l131_qp, only: numerator_t3_diagram29 => numerator_t3
   use p0_gg_hhg_d29h1l132_qp, only: numerator_t2_diagram29 => numerator_t2
   use p0_gg_hhg_d33h1l1_qp, only: numerator_diagram33 => numerator_ninja
   use p0_gg_hhg_d33h1l121_qp, only: numerator_tmu_diagram33 => numerator_tmu
   use p0_gg_hhg_d33h1l131_qp, only: numerator_t3_diagram33 => numerator_t3
   use p0_gg_hhg_d33h1l132_qp, only: numerator_t2_diagram33 => numerator_t2
   use p0_gg_hhg_d49h1l1_qp, only: numerator_diagram49 => numerator_ninja
   use p0_gg_hhg_d49h1l121_qp, only: numerator_tmu_diagram49 => numerator_tmu
   use p0_gg_hhg_d49h1l131_qp, only: numerator_t3_diagram49 => numerator_t3
   use p0_gg_hhg_d49h1l132_qp, only: numerator_t2_diagram49 => numerator_t2
   use p0_gg_hhg_globalsl1_qp, only: epspow

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
   msq(1) = real(mT*mT, ki_nin)
   Vi(:,1) = real(-k3-k5-k4, ki_nin)
   msq(2) = real(mT*mT, ki_nin)
   Vi(:,2) = real(-k3-k5, ki_nin)
   msq(3) = real(mT*mT, ki_nin)
   Vi(:,3) = real(-k5, ki_nin)
   msq(4) = real(mT*mT, ki_nin)
   Vi(:,4) = real(0, ki_nin)
   msq(5) = real(mT*mT, ki_nin)
   Vi(:,5) = real(-k2, ki_nin)
   !-----------#[ initialize invariants:
   s_mat(1,1) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(1,2) = real(mH**2-2.0_ki*mT**2, ki_nin)
   s_mat(2,1) = s_mat(1,2)
   s_mat(1,3) = real(es34-2.0_ki*mT**2, ki_nin)
   s_mat(3,1) = s_mat(1,3)
   s_mat(1,4) = real(es12-2.0_ki*mT**2, ki_nin)
   s_mat(4,1) = s_mat(1,4)
   s_mat(1,5) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(5,1) = s_mat(1,5)
   s_mat(2,2) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(2,3) = real(mH**2-2.0_ki*mT**2, ki_nin)
   s_mat(3,2) = s_mat(2,3)
   s_mat(2,4) = real(es12+2.0_ki*mH**2-es34-2.0_ki*mT**2-es45, ki_nin)
   s_mat(4,2) = s_mat(2,4)
   s_mat(2,5) = real(es23+mH**2-2.0_ki*mT**2-es45-es51, ki_nin)
   s_mat(5,2) = s_mat(2,5)
   s_mat(3,3) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(3,4) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(4,3) = s_mat(3,4)
   s_mat(3,5) = real(-es12-2.0_ki*mT**2+es34-es51, ki_nin)
   s_mat(5,3) = s_mat(3,5)
   s_mat(4,4) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(4,5) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(5,4) = s_mat(4,5)
   s_mat(5,5) = real(-2.0_ki*mT**2, ki_nin)
   !-----------#] initialize invariants


      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='13'>"
         end if
         call quadninja_diagram(numerator_diagram13, numerator_t3_diagram13, nu&
         &merator_t2_diagram13, &
          &  numerator_tmu_diagram13, &
          & 5, 4, 4, (/1,2,3,4/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.QUADNINJA_SUCCESS)
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
            write(logfile,*) "<diagram index='29'>"
         end if
         call quadninja_diagram(numerator_diagram29, numerator_t3_diagram29, nu&
         &merator_t2_diagram29, &
          &  numerator_tmu_diagram29, &
          & 5, 4, 4, (/1,2,3,5/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.QUADNINJA_SUCCESS)
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
            write(logfile,*) "<diagram index='33'>"
         end if
         call quadninja_diagram(numerator_diagram33, numerator_t3_diagram33, nu&
         &merator_t2_diagram33, &
          &  numerator_tmu_diagram33, &
          & 5, 4, 4, (/1,3,4,5/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.QUADNINJA_SUCCESS)
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
            write(logfile,*) "<diagram index='49'>"
         end if
         call quadninja_diagram(numerator_diagram49, numerator_t3_diagram49, nu&
         &merator_t2_diagram49, &
          &  numerator_tmu_diagram49, &
          & 5, 5, 5, (/1,2,3,4,5/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.QUADNINJA_SUCCESS)
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
      !------#] sum over reduction of single diagrams:
end subroutine ninja_reduce_group10
!-----#] subroutine ninja_reduce_group10:
!-----#[ subroutine ninja_reduce_group11:
subroutine     ninja_reduce_group11(scale2,tot,totr,ok)
   use iso_c_binding, only: c_ptr, c_loc, c_int
   use quadninjago_module
   use p0_gg_hhg_kinematics_qp
   use p0_gg_hhg_model_qp
   use p0_gg_hhg_d45h1l1_qp, only: numerator_diagram45 => numerator_ninja
   use p0_gg_hhg_d45h1l121_qp, only: numerator_tmu_diagram45 => numerator_tmu
   use p0_gg_hhg_d45h1l131_qp, only: numerator_t3_diagram45 => numerator_t3
   use p0_gg_hhg_d45h1l132_qp, only: numerator_t2_diagram45 => numerator_t2
   use p0_gg_hhg_globalsl1_qp, only: epspow

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
   msq(1) = real(mT*mT, ki_nin)
   Vi(:,1) = real(-k3-k5-k4, ki_nin)
   msq(2) = real(mT*mT, ki_nin)
   Vi(:,2) = real(-k5-k4, ki_nin)
   msq(3) = real(mT*mT, ki_nin)
   Vi(:,3) = real(-k5, ki_nin)
   msq(4) = real(mT*mT, ki_nin)
   Vi(:,4) = real(0, ki_nin)
   msq(5) = real(mT*mT, ki_nin)
   Vi(:,5) = real(-k2, ki_nin)
   !-----------#[ initialize invariants:
   s_mat(1,1) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(1,2) = real(mH**2-2.0_ki*mT**2, ki_nin)
   s_mat(2,1) = s_mat(1,2)
   s_mat(1,3) = real(es34-2.0_ki*mT**2, ki_nin)
   s_mat(3,1) = s_mat(1,3)
   s_mat(1,4) = real(es12-2.0_ki*mT**2, ki_nin)
   s_mat(4,1) = s_mat(1,4)
   s_mat(1,5) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(5,1) = s_mat(1,5)
   s_mat(2,2) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(2,3) = real(mH**2-2.0_ki*mT**2, ki_nin)
   s_mat(3,2) = s_mat(2,3)
   s_mat(2,4) = real(es45-2.0_ki*mT**2, ki_nin)
   s_mat(4,2) = s_mat(2,4)
   s_mat(2,5) = real(mH**2-2.0_ki*mT**2+es45-es12-es23, ki_nin)
   s_mat(5,2) = s_mat(2,5)
   s_mat(3,3) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(3,4) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(4,3) = s_mat(3,4)
   s_mat(3,5) = real(-es12-2.0_ki*mT**2+es34-es51, ki_nin)
   s_mat(5,3) = s_mat(3,5)
   s_mat(4,4) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(4,5) = real(-2.0_ki*mT**2, ki_nin)
   s_mat(5,4) = s_mat(4,5)
   s_mat(5,5) = real(-2.0_ki*mT**2, ki_nin)
   !-----------#] initialize invariants


      !------#[ sum over reduction of single diagrams:
         if(debug_nlo_diagrams) then
            write(logfile,*) "<diagram index='45'>"
         end if
         call quadninja_diagram(numerator_diagram45, numerator_t3_diagram45, nu&
         &merator_t2_diagram45, &
          &  numerator_tmu_diagram45, &
          & 5, 5, 5, (/1,2,3,4,5/), &
          & Vi, msq, s_mat, scale2, istopm, &
          & acc, accr, acc_ok)
            ok = ok .and. (acc_ok.eq.QUADNINJA_SUCCESS)
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
      !------#] sum over reduction of single diagrams:
end subroutine ninja_reduce_group11
!-----#] subroutine ninja_reduce_group11:
!---#] reduce groups with ninja:
end module p0_gg_hhg_ninjah1_qp
