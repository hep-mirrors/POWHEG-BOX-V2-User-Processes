module p1_dg_hhd_groups_qp
   use golem_precision_golem_qp, only: ki_gol => ki
   use golem_tens_rec_qp
   use p1_dg_hhd_config_qp, only: ki 
   implicit none
   save

   private
!---#[ tensor coefficients for golem95:
   !-----#[ tensor coefficients group 0:
   type tensrec_info_group0
      type(coeff_type_4) :: coeffs_4
   end type

   public :: tensrec_info_group0
   !-----#] tensor coefficients group 0:
   !-----#[ tensor coefficients group 1:
   type tensrec_info_group1
      type(coeff_type_3) :: coeffs_1
      type(coeff_type_4) :: coeffs_6
   end type

   public :: tensrec_info_group1
   !-----#] tensor coefficients group 1:
   !-----#[ tensor coefficients group 2:
   type tensrec_info_group2
      type(coeff_type_4) :: coeffs_8
   end type

   public :: tensrec_info_group2
   !-----#] tensor coefficients group 2:
!---#] tensor coefficients for golem95:
   integer :: prev_ls = -1

   interface contract_golem95
      module procedure contract_tensor_coefficients_group_0
      module procedure contract_tensor_coefficients_group_1
      module procedure contract_tensor_coefficients_group_2
   end interface

   public :: contract_golem95
   public :: tear_down_golem95
   public :: ninja_exit
contains
!---#[ contract tensor coefficients golem95:
!-----#[ function contract_tensor_coefficients_group_0:
function     contract_tensor_coefficients_group_0(coeffs) result(amp)
   use golem_matrice_s_qp, only: allocation_s, deallocation_s, s_mat, set_ref, &
                      & s_mat_c, b_ref, preparesmatrix
   use golem_parametre_qp, only: rmass_or_cmass_par, cmass
   use golem_cache_qp, only: allocate_cache, clear_cache, reset_cache
   use golem_array_qp, only: packb
   use golem_tens_comb_qp
   use golem_form_factor_1p_qp, only: a10
   use golem_form_factor_2p_qp, only: a20
   use golem_form_factor_3p_qp, only: a30
   use golem_form_factor_4p_qp, only: a40
   use golem_form_factor_type_qp, only: form_factor, operator(+), operator(-)
   use p1_dg_hhd_config_qp, only: debug_nlo_diagrams, logfile
   use p1_dg_hhd_kinematics_qp, only: k1, k2, k3, k4, k5, es45, es12, es3, es51, es23, es4, es34
   use p1_dg_hhd_model_qp
   implicit none
   type(tensrec_info_group0), intent(in) :: coeffs
   type(form_factor) :: amp, dbg_amp

   integer :: b_set
   real(ki_gol), dimension(4,0:3) :: rmomenta
   logical :: ev_diagram

   if(prev_ls.ne.4) then
      if(prev_ls > 0) then
         !------#[ call sequence of exitgolem95():
         rmass_or_cmass_par = cmass
         nullify(s_mat)
         call deallocation_s()
         call clear_cache()
         !------#] call sequence of exitgolem95():
      end if

      !------#[ call sequence of initgolem95():
      rmass_or_cmass_par = cmass
      call allocation_s(4)
      set_ref = (/1, 2, 3, 4/)
      b_ref = packb(set_ref)
      call allocate_cache(4)
      s_mat => s_mat_c
      !------#] call sequence of initgolem95():
      prev_ls = 4
   !else
   !   reset_cache() is called by preparesmatrix()
   !   call reset_cache()
   end if
   s_mat(1,1)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(1,2)=real(mH**2-2.0_ki*mT**2, ki_gol)
   s_mat(2,1)=s_mat(1,2)
   s_mat(1,3)=real(-2.0_ki*mT**2+2.0_ki*mH**2-es23+es51-es34, ki_gol)
   s_mat(3,1)=s_mat(1,3)
   s_mat(1,4)=real(-2.0_ki*mT**2+es51, ki_gol)
   s_mat(4,1)=s_mat(1,4)
   s_mat(2,2)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(2,3)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(3,2)=s_mat(2,3)
   s_mat(2,4)=real(es23-2.0_ki*mT**2, ki_gol)
   s_mat(4,2)=s_mat(2,4)
   s_mat(3,3)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(3,4)=real(mH**2-2.0_ki*mT**2, ki_gol)
   s_mat(4,3)=s_mat(3,4)
   s_mat(4,4)=real(-2.0_ki*mT**2, ki_gol)
   call preparesmatrix()
   rmomenta(1,:) = real(-k2+k4, ki_gol)
   rmomenta(2,:) = real(-k2, ki_gol)
   rmomenta(3,:) = 0.0_ki_gol
   rmomenta(4,:) = real(-k3, ki_gol)
   !-------#[ Diagram 4:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='4'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = 0

      amp = + (contract4_4(coeffs%coeffs_4, rmomenta, b_set))
      if(debug_nlo_diagrams) then
         dbg_amp = amp - dbg_amp
         write(logfile,100) &
            & "<result kind='nlo-finite' re='", real(dbg_amp%C, ki), &
            & "' im='", aimag(dbg_amp%C), "'/>"
         write(logfile,100) &
            & "<result kind='nlo-single' re='", real(dbg_amp%B, ki), &
            & "' im='", aimag(dbg_amp%B), "'/>"
         write(logfile,100) &
            & "<result kind='nlo-double' re='", real(dbg_amp%A, ki), &
            & "' im='", aimag(dbg_amp%A), "'/>"
         write(logfile,*) "</diagram>"
      end if
   !-------#] Diagram 4:

   100 format (A30,E24.16,A6,E24.16,A3)
end function contract_tensor_coefficients_group_0
!-----#] function contract_tensor_coefficients_group_0:
!-----#[ function contract_tensor_coefficients_group_1:
function     contract_tensor_coefficients_group_1(coeffs) result(amp)
   use golem_matrice_s_qp, only: allocation_s, deallocation_s, s_mat, set_ref, &
                      & s_mat_c, b_ref, preparesmatrix
   use golem_parametre_qp, only: rmass_or_cmass_par, cmass
   use golem_cache_qp, only: allocate_cache, clear_cache, reset_cache
   use golem_array_qp, only: packb
   use golem_tens_comb_qp
   use golem_form_factor_1p_qp, only: a10
   use golem_form_factor_2p_qp, only: a20
   use golem_form_factor_3p_qp, only: a30
   use golem_form_factor_4p_qp, only: a40
   use golem_form_factor_type_qp, only: form_factor, operator(+), operator(-)
   use p1_dg_hhd_config_qp, only: debug_nlo_diagrams, logfile
   use p1_dg_hhd_kinematics_qp, only: k1, k2, k3, k4, k5, es45, es12, es3, es51, es23, es4, es34
   use p1_dg_hhd_model_qp
   implicit none
   type(tensrec_info_group1), intent(in) :: coeffs
   type(form_factor) :: amp, dbg_amp

   integer :: b_set
   real(ki_gol), dimension(4,0:3) :: rmomenta
   logical :: ev_diagram

   if(prev_ls.ne.4) then
      if(prev_ls > 0) then
         !------#[ call sequence of exitgolem95():
         rmass_or_cmass_par = cmass
         nullify(s_mat)
         call deallocation_s()
         call clear_cache()
         !------#] call sequence of exitgolem95():
      end if

      !------#[ call sequence of initgolem95():
      rmass_or_cmass_par = cmass
      call allocation_s(4)
      set_ref = (/1, 2, 3, 4/)
      b_ref = packb(set_ref)
      call allocate_cache(4)
      s_mat => s_mat_c
      !------#] call sequence of initgolem95():
      prev_ls = 4
   !else
   !   reset_cache() is called by preparesmatrix()
   !   call reset_cache()
   end if
   s_mat(1,1)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(1,2)=real(mH**2-2.0_ki*mT**2, ki_gol)
   s_mat(2,1)=s_mat(1,2)
   s_mat(1,3)=real(es34-2.0_ki*mT**2, ki_gol)
   s_mat(3,1)=s_mat(1,3)
   s_mat(1,4)=real(-2.0_ki*mT**2+es51, ki_gol)
   s_mat(4,1)=s_mat(1,4)
   s_mat(2,2)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(2,3)=real(mH**2-2.0_ki*mT**2, ki_gol)
   s_mat(3,2)=s_mat(2,3)
   s_mat(2,4)=real(es23-2.0_ki*mT**2, ki_gol)
   s_mat(4,2)=s_mat(2,4)
   s_mat(3,3)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(3,4)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(4,3)=s_mat(3,4)
   s_mat(4,4)=real(-2.0_ki*mT**2, ki_gol)
   call preparesmatrix()
   rmomenta(1,:) = real(-k3-k4, ki_gol)
   rmomenta(2,:) = real(-k3, ki_gol)
   rmomenta(3,:) = 0.0_ki_gol
   rmomenta(4,:) = real(-k2, ki_gol)
   !-------#[ Diagram 1:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='1'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = packb((/2/))

      amp = + (contract3_3(coeffs%coeffs_1, rmomenta, b_set))
      if(debug_nlo_diagrams) then
         dbg_amp = amp - dbg_amp
         write(logfile,100) &
            & "<result kind='nlo-finite' re='", real(dbg_amp%C, ki), &
            & "' im='", aimag(dbg_amp%C), "'/>"
         write(logfile,100) &
            & "<result kind='nlo-single' re='", real(dbg_amp%B, ki), &
            & "' im='", aimag(dbg_amp%B), "'/>"
         write(logfile,100) &
            & "<result kind='nlo-double' re='", real(dbg_amp%A, ki), &
            & "' im='", aimag(dbg_amp%A), "'/>"
         write(logfile,*) "</diagram>"
      end if
   !-------#] Diagram 1:
   !-------#[ Diagram 6:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='6'>"
         dbg_amp = amp
      end if
      b_set = 0

      amp = amp + (contract4_4(coeffs%coeffs_6, rmomenta, b_set))
      if(debug_nlo_diagrams) then
         dbg_amp = amp - dbg_amp
         write(logfile,100) &
            & "<result kind='nlo-finite' re='", real(dbg_amp%C, ki), &
            & "' im='", aimag(dbg_amp%C), "'/>"
         write(logfile,100) &
            & "<result kind='nlo-single' re='", real(dbg_amp%B, ki), &
            & "' im='", aimag(dbg_amp%B), "'/>"
         write(logfile,100) &
            & "<result kind='nlo-double' re='", real(dbg_amp%A, ki), &
            & "' im='", aimag(dbg_amp%A), "'/>"
         write(logfile,*) "</diagram>"
      end if
   !-------#] Diagram 6:

   100 format (A30,E24.16,A6,E24.16,A3)
end function contract_tensor_coefficients_group_1
!-----#] function contract_tensor_coefficients_group_1:
!-----#[ function contract_tensor_coefficients_group_2:
function     contract_tensor_coefficients_group_2(coeffs) result(amp)
   use golem_matrice_s_qp, only: allocation_s, deallocation_s, s_mat, set_ref, &
                      & s_mat_c, b_ref, preparesmatrix
   use golem_parametre_qp, only: rmass_or_cmass_par, cmass
   use golem_cache_qp, only: allocate_cache, clear_cache, reset_cache
   use golem_array_qp, only: packb
   use golem_tens_comb_qp
   use golem_form_factor_1p_qp, only: a10
   use golem_form_factor_2p_qp, only: a20
   use golem_form_factor_3p_qp, only: a30
   use golem_form_factor_4p_qp, only: a40
   use golem_form_factor_type_qp, only: form_factor, operator(+), operator(-)
   use p1_dg_hhd_config_qp, only: debug_nlo_diagrams, logfile
   use p1_dg_hhd_kinematics_qp, only: k1, k2, k3, k4, k5, es45, es12, es3, es51, es23, es4, es34
   use p1_dg_hhd_model_qp
   implicit none
   type(tensrec_info_group2), intent(in) :: coeffs
   type(form_factor) :: amp, dbg_amp

   integer :: b_set
   real(ki_gol), dimension(4,0:3) :: rmomenta
   logical :: ev_diagram

   if(prev_ls.ne.4) then
      if(prev_ls > 0) then
         !------#[ call sequence of exitgolem95():
         rmass_or_cmass_par = cmass
         nullify(s_mat)
         call deallocation_s()
         call clear_cache()
         !------#] call sequence of exitgolem95():
      end if

      !------#[ call sequence of initgolem95():
      rmass_or_cmass_par = cmass
      call allocation_s(4)
      set_ref = (/1, 2, 3, 4/)
      b_ref = packb(set_ref)
      call allocate_cache(4)
      s_mat => s_mat_c
      !------#] call sequence of initgolem95():
      prev_ls = 4
   !else
   !   reset_cache() is called by preparesmatrix()
   !   call reset_cache()
   end if
   s_mat(1,1)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(1,2)=real(mH**2-2.0_ki*mT**2, ki_gol)
   s_mat(2,1)=s_mat(1,2)
   s_mat(1,3)=real(es34-2.0_ki*mT**2, ki_gol)
   s_mat(3,1)=s_mat(1,3)
   s_mat(1,4)=real(-2.0_ki*mT**2+es51, ki_gol)
   s_mat(4,1)=s_mat(1,4)
   s_mat(2,2)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(2,3)=real(mH**2-2.0_ki*mT**2, ki_gol)
   s_mat(3,2)=s_mat(2,3)
   s_mat(2,4)=real(-2.0_ki*mT**2+2.0_ki*mH**2-es23+es51-es34, ki_gol)
   s_mat(4,2)=s_mat(2,4)
   s_mat(3,3)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(3,4)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(4,3)=s_mat(3,4)
   s_mat(4,4)=real(-2.0_ki*mT**2, ki_gol)
   call preparesmatrix()
   rmomenta(1,:) = real(-k3-k4, ki_gol)
   rmomenta(2,:) = real(-k4, ki_gol)
   rmomenta(3,:) = 0.0_ki_gol
   rmomenta(4,:) = real(-k2, ki_gol)
   !-------#[ Diagram 8:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='8'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = 0

      amp = + (contract4_4(coeffs%coeffs_8, rmomenta, b_set))
      if(debug_nlo_diagrams) then
         dbg_amp = amp - dbg_amp
         write(logfile,100) &
            & "<result kind='nlo-finite' re='", real(dbg_amp%C, ki), &
            & "' im='", aimag(dbg_amp%C), "'/>"
         write(logfile,100) &
            & "<result kind='nlo-single' re='", real(dbg_amp%B, ki), &
            & "' im='", aimag(dbg_amp%B), "'/>"
         write(logfile,100) &
            & "<result kind='nlo-double' re='", real(dbg_amp%A, ki), &
            & "' im='", aimag(dbg_amp%A), "'/>"
         write(logfile,*) "</diagram>"
      end if
   !-------#] Diagram 8:

   100 format (A30,E24.16,A6,E24.16,A3)
end function contract_tensor_coefficients_group_2
!-----#] function contract_tensor_coefficients_group_2:
!---#] contract tensor coefficients golem95:
!---#[ subroutine tear_down_golem95:
subroutine     tear_down_golem95()
   use golem_matrice_s_qp, only: deallocation_s, s_mat
   use golem_parametre_qp, only: rmass_or_cmass_par, cmass
   use golem_cache_qp, only: clear_cache
   implicit none
   if(prev_ls.gt.0) then
      !------#[ call sequence of exitgolem95():
      rmass_or_cmass_par = cmass
      nullify(s_mat)
      call deallocation_s()
      call clear_cache()
      !------#] call sequence of exitgolem95():
      prev_ls = -1
   end if
end subroutine tear_down_golem95
!---#] subroutine tear_down_golem95:
!---#[ subroutine ninja_exit:
subroutine ninja_exit()
  use ninjago_qp_module, only: ninja_clear_integral_cache
  implicit none
  !------#[ call ninja_clear_integral_cache():
  call ninja_clear_integral_cache()
  !------#] call ninja_clear_integral_cache():
end subroutine ninja_exit
!---#] subroutine ninja_exit:
end module p1_dg_hhd_groups_qp
