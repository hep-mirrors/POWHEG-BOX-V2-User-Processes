module     p1_dbarc_epnebbbar_groups
   use precision, only: ki_sam => ki
   use madds
   use precision_golem, only: ki_gol => ki
   use tens_rec
   use p1_dbarc_epnebbbar_config, only: ki , reduction_interoperation, samurai_scalar 
   implicit none
   save

   private
!---#[ tensor coefficients for golem95:
   !-----#[ tensor coefficients group 0:
   type tensrec_info_group0
      type(coeff_type_2) :: coeffs_14
      type(coeff_type_2) :: coeffs_33
   end type

   public :: tensrec_info_group0
   type(tensrec_info_group0), pointer, public :: coeffs_group0
   public :: reduce_numetens_group0
   !-----#] tensor coefficients group 0:
   !-----#[ tensor coefficients group 1:
   type tensrec_info_group1
      type(coeff_type_3) :: coeffs_3
   end type

   public :: tensrec_info_group1
   type(tensrec_info_group1), pointer, public :: coeffs_group1
   public :: reduce_numetens_group1
   !-----#] tensor coefficients group 1:
   !-----#[ tensor coefficients group 2:
   type tensrec_info_group2
      type(coeff_type_3) :: coeffs_2
   end type

   public :: tensrec_info_group2
   type(tensrec_info_group2), pointer, public :: coeffs_group2
   public :: reduce_numetens_group2
   !-----#] tensor coefficients group 2:
   !-----#[ tensor coefficients group 3:
   type tensrec_info_group3
      type(coeff_type_3) :: coeffs_27
      type(coeff_type_2) :: coeffs_28
      type(coeff_type_2) :: coeffs_31
   end type

   public :: tensrec_info_group3
   type(tensrec_info_group3), pointer, public :: coeffs_group3
   public :: reduce_numetens_group3
   !-----#] tensor coefficients group 3:
   !-----#[ tensor coefficients group 4:
   type tensrec_info_group4
      type(coeff_type_3) :: coeffs_1
      type(coeff_type_2) :: coeffs_4
      type(coeff_type_2) :: coeffs_6
      type(coeff_type_2) :: coeffs_8
      type(coeff_type_2) :: coeffs_9
      type(coeff_type_2) :: coeffs_10
      type(coeff_type_1) :: coeffs_24
      type(coeff_type_1) :: coeffs_25
      type(coeff_type_3) :: coeffs_26
      type(coeff_type_2) :: coeffs_29
      type(coeff_type_2) :: coeffs_30
      type(coeff_type_2) :: coeffs_32
   end type

   public :: tensrec_info_group4
   type(tensrec_info_group4), pointer, public :: coeffs_group4
   public :: reduce_numetens_group4
   !-----#] tensor coefficients group 4:
!---#] tensor coefficients for golem95:
   integer :: prev_ls = -1

   interface contract_golem95
      module procedure contract_tensor_coefficients_group_0
      module procedure contract_tensor_coefficients_group_1
      module procedure contract_tensor_coefficients_group_2
      module procedure contract_tensor_coefficients_group_3
      module procedure contract_tensor_coefficients_group_4
   end interface

   public :: contract_golem95
   public :: tear_down_golem95
contains
!---#[ contract tensor coefficients golem95:
!-----#[ function contract_tensor_coefficients_group_0:
function     contract_tensor_coefficients_group_0(coeffs) result(amp)
   use matrice_s, only: allocation_s, deallocation_s, s_mat, set_ref, &
                      & s_mat_c, b_ref, preparesmatrix
   use parametre, only: rmass_or_cmass_par, cmass
   use cache, only: allocate_cache, clear_cache, reset_cache
   use array, only: packb
   use tens_comb
   use form_factor_1p, only: a10
   use form_factor_2p, only: a20
   use form_factor_3p, only: a30
   use form_factor_type, only: form_factor, operator(+), operator(-)
   use p1_dbarc_epnebbbar_config, only: debug_nlo_diagrams, logfile
   use p1_dbarc_epnebbbar_kinematics, only: k1, k2, k3, k4, k5, k6, es234, es345, es12, es56, es23, es61, es123, &
   & es6, es5, es45, es34
   use p1_dbarc_epnebbbar_model
   implicit none
   type(tensrec_info_group0), intent(in) :: coeffs
   type(form_factor) :: amp, dbg_amp

   integer :: b_set
   real(ki_gol), dimension(3,0:3) :: rmomenta
   logical :: ev_diagram

   if(prev_ls.ne.3) then
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
      call allocation_s(3)
      set_ref = (/1, 2, 3/)
      b_ref = packb(set_ref)
      call allocate_cache(3)
      s_mat => s_mat_c
      !------#] call sequence of initgolem95():
      prev_ls = 3
   !else
   !   reset_cache() is called by preparesmatrix()
   !   call reset_cache()
   end if
   s_mat(1,1)=real(-2.0_ki*mB**2, ki_gol)
   s_mat(1,2)=real(0.0_ki, ki_gol)
   s_mat(2,1)=s_mat(1,2)
   s_mat(1,3)=real(-2.0_ki*mB**2+es56, ki_gol)
   s_mat(3,1)=s_mat(1,3)
   s_mat(2,2)=real(0.0_ki, ki_gol)
   s_mat(2,3)=real(0.0_ki, ki_gol)
   s_mat(3,2)=s_mat(2,3)
   s_mat(3,3)=real(-2.0_ki*mB**2, ki_gol)
   call preparesmatrix()
   rmomenta(1,:) = real(k6, ki_gol)
   rmomenta(2,:) = 0.0_ki_gol
   rmomenta(3,:) = real(-k5, ki_gol)
   !-------#[ Diagram 14:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='14'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = packb((/2/))

      amp = + (contract2_2(coeffs%coeffs_14, rmomenta, b_set))
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
   !-------#] Diagram 14:
   !-------#[ Diagram 33:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='33'>"
         dbg_amp = amp
      end if
      b_set = 0

      amp = amp + (contract3_2(coeffs%coeffs_33, rmomenta, b_set))
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
   !-------#] Diagram 33:
   if ((reduction_interoperation /= 1) .and. (samurai_scalar == 3) ) then
        call tear_down_golem95();
   end if

   100 format (A30,E24.16,A6,E24.16,A3)
end function contract_tensor_coefficients_group_0
!-----#] function contract_tensor_coefficients_group_0:
!-----#[ function contract_tensor_coefficients_group_1:
function     contract_tensor_coefficients_group_1(coeffs) result(amp)
   use matrice_s, only: allocation_s, deallocation_s, s_mat, set_ref, &
                      & s_mat_c, b_ref, preparesmatrix
   use parametre, only: rmass_or_cmass_par, cmass
   use cache, only: allocate_cache, clear_cache, reset_cache
   use array, only: packb
   use tens_comb
   use form_factor_1p, only: a10
   use form_factor_2p, only: a20
   use form_factor_3p, only: a30
   use form_factor_4p, only: a40
   use form_factor_type, only: form_factor, operator(+), operator(-)
   use p1_dbarc_epnebbbar_config, only: debug_nlo_diagrams, logfile
   use p1_dbarc_epnebbbar_kinematics, only: k1, k2, k3, k4, k5, k6, es234, es345, es12, es56, es23, es61, es123, &
   & es6, es5, es45, es34
   use p1_dbarc_epnebbbar_model
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
   s_mat(1,1)=real(0.0_ki, ki_gol)
   s_mat(1,2)=real(es56, ki_gol)
   s_mat(2,1)=s_mat(1,2)
   s_mat(1,3)=real(es234, ki_gol)
   s_mat(3,1)=s_mat(1,3)
   s_mat(1,4)=real(es34, ki_gol)
   s_mat(4,1)=s_mat(1,4)
   s_mat(2,2)=real(0.0_ki, ki_gol)
   s_mat(2,3)=real(0.0_ki, ki_gol)
   s_mat(3,2)=s_mat(2,3)
   s_mat(2,4)=real(es12, ki_gol)
   s_mat(4,2)=s_mat(2,4)
   s_mat(3,3)=real(0.0_ki, ki_gol)
   s_mat(3,4)=real(0.0_ki, ki_gol)
   s_mat(4,3)=s_mat(3,4)
   s_mat(4,4)=real(0.0_ki, ki_gol)
   call preparesmatrix()
   rmomenta(1,:) = real(-k3-k4, ki_gol)
   rmomenta(2,:) = real(-k3-k6-k5-k4, ki_gol)
   rmomenta(3,:) = real(-k2, ki_gol)
   rmomenta(4,:) = 0.0_ki_gol
   !-------#[ Diagram 3:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='3'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = 0

      amp = + (contract4_3(coeffs%coeffs_3, rmomenta, b_set))
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
   !-------#] Diagram 3:
   if ((reduction_interoperation /= 1) .and. (samurai_scalar == 3) ) then
        call tear_down_golem95();
   end if

   100 format (A30,E24.16,A6,E24.16,A3)
end function contract_tensor_coefficients_group_1
!-----#] function contract_tensor_coefficients_group_1:
!-----#[ function contract_tensor_coefficients_group_2:
function     contract_tensor_coefficients_group_2(coeffs) result(amp)
   use matrice_s, only: allocation_s, deallocation_s, s_mat, set_ref, &
                      & s_mat_c, b_ref, preparesmatrix
   use parametre, only: rmass_or_cmass_par, cmass
   use cache, only: allocate_cache, clear_cache, reset_cache
   use array, only: packb
   use tens_comb
   use form_factor_1p, only: a10
   use form_factor_2p, only: a20
   use form_factor_3p, only: a30
   use form_factor_4p, only: a40
   use form_factor_type, only: form_factor, operator(+), operator(-)
   use p1_dbarc_epnebbbar_config, only: debug_nlo_diagrams, logfile
   use p1_dbarc_epnebbbar_kinematics, only: k1, k2, k3, k4, k5, k6, es234, es345, es12, es56, es23, es61, es123, &
   & es6, es5, es45, es34
   use p1_dbarc_epnebbbar_model
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
   s_mat(1,1)=real(0.0_ki, ki_gol)
   s_mat(1,2)=real(es56, ki_gol)
   s_mat(2,1)=s_mat(1,2)
   s_mat(1,3)=real(es34+es56-es234-es12, ki_gol)
   s_mat(3,1)=s_mat(1,3)
   s_mat(1,4)=real(es34, ki_gol)
   s_mat(4,1)=s_mat(1,4)
   s_mat(2,2)=real(0.0_ki, ki_gol)
   s_mat(2,3)=real(0.0_ki, ki_gol)
   s_mat(3,2)=s_mat(2,3)
   s_mat(2,4)=real(es12, ki_gol)
   s_mat(4,2)=s_mat(2,4)
   s_mat(3,3)=real(0.0_ki, ki_gol)
   s_mat(3,4)=real(0.0_ki, ki_gol)
   s_mat(4,3)=s_mat(3,4)
   s_mat(4,4)=real(0.0_ki, ki_gol)
   call preparesmatrix()
   rmomenta(1,:) = real(-k6-k5, ki_gol)
   rmomenta(2,:) = 0.0_ki_gol
   rmomenta(3,:) = real(-k2, ki_gol)
   rmomenta(4,:) = real(-k3-k6-k5-k4, ki_gol)
   !-------#[ Diagram 2:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='2'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = 0

      amp = + (contract4_3(coeffs%coeffs_2, rmomenta, b_set))
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
   !-------#] Diagram 2:
   if ((reduction_interoperation /= 1) .and. (samurai_scalar == 3) ) then
        call tear_down_golem95();
   end if

   100 format (A30,E24.16,A6,E24.16,A3)
end function contract_tensor_coefficients_group_2
!-----#] function contract_tensor_coefficients_group_2:
!-----#[ function contract_tensor_coefficients_group_3:
function     contract_tensor_coefficients_group_3(coeffs) result(amp)
   use matrice_s, only: allocation_s, deallocation_s, s_mat, set_ref, &
                      & s_mat_c, b_ref, preparesmatrix
   use parametre, only: rmass_or_cmass_par, cmass
   use cache, only: allocate_cache, clear_cache, reset_cache
   use array, only: packb
   use tens_comb
   use form_factor_1p, only: a10
   use form_factor_2p, only: a20
   use form_factor_3p, only: a30
   use form_factor_4p, only: a40
   use form_factor_5p, only: a50
   use form_factor_type, only: form_factor, operator(+), operator(-)
   use p1_dbarc_epnebbbar_config, only: debug_nlo_diagrams, logfile
   use p1_dbarc_epnebbbar_kinematics, only: k1, k2, k3, k4, k5, k6, es234, es345, es12, es56, es23, es61, es123, &
   & es6, es5, es45, es34
   use p1_dbarc_epnebbbar_model
   implicit none
   type(tensrec_info_group3), intent(in) :: coeffs
   type(form_factor) :: amp, dbg_amp

   integer :: b_set
   real(ki_gol), dimension(5,0:3) :: rmomenta
   logical :: ev_diagram

   if(prev_ls.ne.5) then
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
      call allocation_s(5)
      set_ref = (/1, 2, 3, 4, 5/)
      b_ref = packb(set_ref)
      call allocate_cache(5)
      s_mat => s_mat_c
      !------#] call sequence of initgolem95():
      prev_ls = 5
   !else
   !   reset_cache() is called by preparesmatrix()
   !   call reset_cache()
   end if
   s_mat(1,1)=real(0.0_ki, ki_gol)
   s_mat(1,2)=real(0.0_ki, ki_gol)
   s_mat(2,1)=s_mat(1,2)
   s_mat(1,3)=real(es61-mB**2, ki_gol)
   s_mat(3,1)=s_mat(1,3)
   s_mat(1,4)=real(es234, ki_gol)
   s_mat(4,1)=s_mat(1,4)
   s_mat(1,5)=real(es34, ki_gol)
   s_mat(5,1)=s_mat(1,5)
   s_mat(2,2)=real(0.0_ki, ki_gol)
   s_mat(2,3)=real(0.0_ki, ki_gol)
   s_mat(3,2)=s_mat(2,3)
   s_mat(2,4)=real(es56, ki_gol)
   s_mat(4,2)=s_mat(2,4)
   s_mat(2,5)=real(es34+es56-es234-es12, ki_gol)
   s_mat(5,2)=s_mat(2,5)
   s_mat(3,3)=real(-2.0_ki*mB**2, ki_gol)
   s_mat(3,4)=real(0.0_ki, ki_gol)
   s_mat(4,3)=s_mat(3,4)
   s_mat(3,5)=real(es61-es234-es345+es34, ki_gol)
   s_mat(5,3)=s_mat(3,5)
   s_mat(4,4)=real(0.0_ki, ki_gol)
   s_mat(4,5)=real(0.0_ki, ki_gol)
   s_mat(5,4)=s_mat(4,5)
   s_mat(5,5)=real(0.0_ki, ki_gol)
   call preparesmatrix()
   rmomenta(1,:) = real(k3-k2+k4, ki_gol)
   rmomenta(2,:) = real(-k6-k5, ki_gol)
   rmomenta(3,:) = real(-k5, ki_gol)
   rmomenta(4,:) = 0.0_ki_gol
   rmomenta(5,:) = real(-k2, ki_gol)
   !-------#[ Diagram 27:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='27'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = 0

      amp = + (contract5_3(coeffs%coeffs_27, rmomenta, b_set))
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
   !-------#] Diagram 27:
   !-------#[ Diagram 28:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='28'>"
         dbg_amp = amp
      end if
      b_set = packb((/1/))

      amp = amp + (contract4_2(coeffs%coeffs_28, rmomenta, b_set))
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
   !-------#] Diagram 28:
   !-------#[ Diagram 31:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='31'>"
         dbg_amp = amp
      end if
      b_set = packb((/5/))

      amp = amp + (contract4_2(coeffs%coeffs_31, rmomenta, b_set))
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
   !-------#] Diagram 31:
   if ((reduction_interoperation /= 1) .and. (samurai_scalar == 3) ) then
        call tear_down_golem95();
   end if

   100 format (A30,E24.16,A6,E24.16,A3)
end function contract_tensor_coefficients_group_3
!-----#] function contract_tensor_coefficients_group_3:
!-----#[ function contract_tensor_coefficients_group_4:
function     contract_tensor_coefficients_group_4(coeffs) result(amp)
   use matrice_s, only: allocation_s, deallocation_s, s_mat, set_ref, &
                      & s_mat_c, b_ref, preparesmatrix
   use parametre, only: rmass_or_cmass_par, cmass
   use cache, only: allocate_cache, clear_cache, reset_cache
   use array, only: packb
   use tens_comb
   use form_factor_1p, only: a10
   use form_factor_2p, only: a20
   use form_factor_3p, only: a30
   use form_factor_4p, only: a40
   use form_factor_5p, only: a50
   use form_factor_type, only: form_factor, operator(+), operator(-)
   use p1_dbarc_epnebbbar_config, only: debug_nlo_diagrams, logfile
   use p1_dbarc_epnebbbar_kinematics, only: k1, k2, k3, k4, k5, k6, es234, es345, es12, es56, es23, es61, es123, &
   & es6, es5, es45, es34
   use p1_dbarc_epnebbbar_model
   implicit none
   type(tensrec_info_group4), intent(in) :: coeffs
   type(form_factor) :: amp, dbg_amp

   integer :: b_set
   real(ki_gol), dimension(5,0:3) :: rmomenta
   logical :: ev_diagram

   if(prev_ls.ne.5) then
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
      call allocation_s(5)
      set_ref = (/1, 2, 3, 4, 5/)
      b_ref = packb(set_ref)
      call allocate_cache(5)
      s_mat => s_mat_c
      !------#] call sequence of initgolem95():
      prev_ls = 5
   !else
   !   reset_cache() is called by preparesmatrix()
   !   call reset_cache()
   end if
   s_mat(1,1)=real(0.0_ki, ki_gol)
   s_mat(1,2)=real(0.0_ki, ki_gol)
   s_mat(2,1)=s_mat(1,2)
   s_mat(1,3)=real(-es12-es61+es345, ki_gol)
   s_mat(3,1)=s_mat(1,3)
   s_mat(1,4)=real(es34+es56-es234-es12, ki_gol)
   s_mat(4,1)=s_mat(1,4)
   s_mat(1,5)=real(es34, ki_gol)
   s_mat(5,1)=s_mat(1,5)
   s_mat(2,2)=real(0.0_ki, ki_gol)
   s_mat(2,3)=real(0.0_ki, ki_gol)
   s_mat(3,2)=s_mat(2,3)
   s_mat(2,4)=real(es56, ki_gol)
   s_mat(4,2)=s_mat(2,4)
   s_mat(2,5)=real(es234, ki_gol)
   s_mat(5,2)=s_mat(2,5)
   s_mat(3,3)=real(-2.0_ki*mB**2, ki_gol)
   s_mat(3,4)=real(0.0_ki, ki_gol)
   s_mat(4,3)=s_mat(3,4)
   s_mat(3,5)=real(-es56-es61+es234+mB**2, ki_gol)
   s_mat(5,3)=s_mat(3,5)
   s_mat(4,4)=real(0.0_ki, ki_gol)
   s_mat(4,5)=real(0.0_ki, ki_gol)
   s_mat(5,4)=s_mat(4,5)
   s_mat(5,5)=real(0.0_ki, ki_gol)
   call preparesmatrix()
   rmomenta(1,:) = real(-k2, ki_gol)
   rmomenta(2,:) = 0.0_ki_gol
   rmomenta(3,:) = real(-k6, ki_gol)
   rmomenta(4,:) = real(-k6-k5, ki_gol)
   rmomenta(5,:) = real(k3-k2+k4, ki_gol)
   !-------#[ Diagram 1:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='1'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = packb((/3/))

      amp = + (contract4_3(coeffs%coeffs_1, rmomenta, b_set))
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
   !-------#[ Diagram 4:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='4'>"
         dbg_amp = amp
      end if
      b_set = packb((/3,5/))

      amp = amp + (contract3_2(coeffs%coeffs_4, rmomenta, b_set))
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
   !-------#[ Diagram 6:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='6'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,3/))

      amp = amp + (contract3_2(coeffs%coeffs_6, rmomenta, b_set))
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
   !-------#[ Diagram 8:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='8'>"
         dbg_amp = amp
      end if
      b_set = packb((/3,4/))

      amp = amp + (contract3_2(coeffs%coeffs_8, rmomenta, b_set))
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
   !-------#[ Diagram 9:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='9'>"
         dbg_amp = amp
      end if
      b_set = packb((/2,3/))

      amp = amp + (contract3_2(coeffs%coeffs_9, rmomenta, b_set))
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
   !-------#] Diagram 9:
   !-------#[ Diagram 10:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='10'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,3,5/))

      amp = amp +  (contract2_2(coeffs%coeffs_10, rmomenta, b_set))
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
   !-------#] Diagram 10:
   !-------#[ Diagram 24:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='24'>"
         dbg_amp = amp
      end if
      b_set = packb((/2,3,5/))

      amp = amp + (contract2_1(coeffs%coeffs_24, rmomenta, b_set))
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
   !-------#] Diagram 24:
   !-------#[ Diagram 25:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='25'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,3,4/))

      amp = amp + (contract2_1(coeffs%coeffs_25, rmomenta, b_set))
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
   !-------#] Diagram 25:
   !-------#[ Diagram 26:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='26'>"
         dbg_amp = amp
      end if
      b_set = 0

      amp = amp + (contract5_3(coeffs%coeffs_26, rmomenta, b_set))
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
   !-------#] Diagram 26:
   !-------#[ Diagram 29:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='29'>"
         dbg_amp = amp
      end if
      b_set = packb((/5/))

      amp = amp + (contract4_2(coeffs%coeffs_29, rmomenta, b_set))
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
   !-------#] Diagram 29:
   !-------#[ Diagram 30:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='30'>"
         dbg_amp = amp
      end if
      b_set = packb((/1/))

      amp = amp + (contract4_2(coeffs%coeffs_30, rmomenta, b_set))
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
   !-------#] Diagram 30:
   !-------#[ Diagram 32:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='32'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,5/))

      amp = amp + (contract3_2(coeffs%coeffs_32, rmomenta, b_set))
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
   !-------#] Diagram 32:
   if ((reduction_interoperation /= 1) .and. (samurai_scalar == 3) ) then
        call tear_down_golem95();
   end if

   100 format (A30,E24.16,A6,E24.16,A3)
end function contract_tensor_coefficients_group_4
!-----#] function contract_tensor_coefficients_group_4:
!---#] contract tensor coefficients golem95:
!---#[ numetens golem95:
!-----#[ function numetens_group0:
function     numetens_group0(icut, Q, mu2) result(num)
   use tens_rec
   use p1_dbarc_epnebbbar_kinematics, only: k1, k2, k3, k4, k5, k6
   use p1_dbarc_epnebbbar_model
   implicit none
   integer, intent(in) :: icut
   complex(ki_sam), dimension(4), intent(in) :: Q
   complex(ki_sam), intent(in) :: mu2
   complex(ki_sam) :: num

   logical, dimension(0:2-1) :: nonzero
   complex(ki_gol), dimension(0:3) :: Qg
   real(ki_gol), dimension(0:3) :: R
   complex(ki_gol) :: Q2
   complex(ki_sam) :: diag, denom1, denom2, denom3

   nonzero(:) = .true.
   Qg(0) = Q(4)
   Qg(1:3) = Q(1:3)
   Q2 = Qg(0)*Qg(0) - Qg(1)*Qg(1) - Qg(2)*Qg(2) - Qg(3)*Qg(3) - mu2

   select case(icut)
   case(1)
      nonzero(0) = .false.
      R = real(k6, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom2 = 0.0_ki
      R = real(-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
   case(10)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
   case(21)
      nonzero(0) = .false.
      R = real(k6, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom2 = 0.0_ki
      denom3 = 0.0_ki
   case(210)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
   case default
      R = real(k6, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom2 = Q2
      R = real(-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 14:
   if(nonzero(0)) then
      diag = ctenseval2(Qg, coeffs_group0%coeffs_14)
      diag = diag * denom2
      num = num + diag
   end if
   !-------#] Diagram 14:
   !-------#[ Diagram 33:
   if(nonzero(1)) then
      diag = ctenseval2(Qg, coeffs_group0%coeffs_33)
      num = num + diag
   end if
   !-------#] Diagram 33:
end function numetens_group0
!-----#] function numetens_group0:
!-----#[ subroutine reduce_numetens_group0:
subroutine     reduce_numetens_group0(scale2,tot,totr,ok)
   use msamurai, only: samurai_rm, samurai_cm
   use madds, only: s_mat
   use options, only: samurai_out => iout
   use p1_dbarc_epnebbbar_config, only: samurai_group_numerators, &
      samurai_istop, samurai_verbosity
   use p1_dbarc_epnebbbar_kinematics
   use p1_dbarc_epnebbbar_model
   use p1_dbarc_epnebbbar_globalsl1, only: epspow
   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   integer, parameter :: effective_group_rank = 3
   real(ki_sam), dimension(3) :: msq
   real(ki_sam), dimension(3,4) :: Vi
   msq(1) = real(mB*mB, ki)
   Vi(1,(/4,1,2,3/)) = real(k6, ki_sam)
   msq(2) = 0.0_ki_sam
   Vi(2,(/4,1,2,3/)) = real(0, ki_sam)
   msq(3) = real(mB*mB, ki)
   Vi(3,(/4,1,2,3/)) = real(-k5, ki_sam)
   !-----------#[ initialize invariants:
   allocate(s_mat(3, 3))
   s_mat(1, 1) = real(-2.0_ki*mB**2, ki_sam)
   s_mat(1, 2) = real(0.0_ki, ki_sam)
   s_mat(2, 1) = s_mat(1, 2)
   s_mat(1, 3) = real(-2.0_ki*mB**2+es56, ki_sam)
   s_mat(3, 1) = s_mat(1, 3)
   s_mat(2, 2) = real(0.0_ki, ki_sam)
   s_mat(2, 3) = real(0.0_ki, ki_sam)
   s_mat(3, 2) = s_mat(2, 3)
   s_mat(3, 3) = real(-2.0_ki*mB**2, ki_sam)
   !-----------#] initialize invariants:

   if(samurai_verbosity > 0) then
      write(samurai_out,*) "[golem-2.0] numetens_group0"
      write(samurai_out,*) "[golem-2.0] epspow=", epspow
   end if
   call samurai_rm(numetens_group0, tot, totr, Vi, msq, 3, &
      & effective_group_rank, samurai_istop, scale2, ok)
   !-----------#[ deallocate invariants:
   deallocate(s_mat)
   !-----------#] deallocate invariants:
end subroutine reduce_numetens_group0
!-----#] subroutine reduce_numetens_group0:
!-----#[ function numetens_group1:
function     numetens_group1(icut, Q, mu2) result(num)
   use tens_rec
   use p1_dbarc_epnebbbar_kinematics, only: k1, k2, k3, k4, k5, k6
   use p1_dbarc_epnebbbar_model
   implicit none
   integer, intent(in) :: icut
   complex(ki_sam), dimension(4), intent(in) :: Q
   complex(ki_sam), intent(in) :: mu2
   complex(ki_sam) :: num

   logical, dimension(0:1-1) :: nonzero
   complex(ki_gol), dimension(0:3) :: Qg
   real(ki_gol), dimension(0:3) :: R
   complex(ki_gol) :: Q2
   complex(ki_sam) :: diag, denom1, denom2, denom3, denom4

   nonzero(:) = .true.
   Qg(0) = Q(4)
   Qg(1:3) = Q(1:3)
   Q2 = Qg(0)*Qg(0) - Qg(1)*Qg(1) - Qg(2)*Qg(2) - Qg(3)*Qg(3) - mu2

   select case(icut)
   case default
      R = real(-k3-k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k3-k6-k5-k4, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k2, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = Q2
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 3:
   if(nonzero(0)) then
      diag = ctenseval3(Qg, coeffs_group1%coeffs_3)
      num = num + diag
   end if
   !-------#] Diagram 3:
end function numetens_group1
!-----#] function numetens_group1:
!-----#[ subroutine reduce_numetens_group1:
subroutine     reduce_numetens_group1(scale2,tot,totr,ok)
   use msamurai, only: samurai_rm, samurai_cm
   use madds, only: s_mat
   use options, only: samurai_out => iout
   use p1_dbarc_epnebbbar_config, only: samurai_group_numerators, &
      samurai_istop, samurai_verbosity
   use p1_dbarc_epnebbbar_kinematics
   use p1_dbarc_epnebbbar_model
   use p1_dbarc_epnebbbar_globalsl1, only: epspow
   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   integer, parameter :: effective_group_rank = 3
   real(ki_sam), dimension(4) :: msq
   real(ki_sam), dimension(4,4) :: Vi
   msq(1) = 0.0_ki_sam
   Vi(1,(/4,1,2,3/)) = real(-k3-k4, ki_sam)
   msq(2) = 0.0_ki_sam
   Vi(2,(/4,1,2,3/)) = real(-k3-k6-k5-k4, ki_sam)
   msq(3) = 0.0_ki_sam
   Vi(3,(/4,1,2,3/)) = real(-k2, ki_sam)
   msq(4) = 0.0_ki_sam
   Vi(4,(/4,1,2,3/)) = real(0, ki_sam)
   !-----------#[ initialize invariants:
   allocate(s_mat(4, 4))
   s_mat(1, 1) = real(0.0_ki, ki_sam)
   s_mat(1, 2) = real(es56, ki_sam)
   s_mat(2, 1) = s_mat(1, 2)
   s_mat(1, 3) = real(es234, ki_sam)
   s_mat(3, 1) = s_mat(1, 3)
   s_mat(1, 4) = real(es34, ki_sam)
   s_mat(4, 1) = s_mat(1, 4)
   s_mat(2, 2) = real(0.0_ki, ki_sam)
   s_mat(2, 3) = real(0.0_ki, ki_sam)
   s_mat(3, 2) = s_mat(2, 3)
   s_mat(2, 4) = real(es12, ki_sam)
   s_mat(4, 2) = s_mat(2, 4)
   s_mat(3, 3) = real(0.0_ki, ki_sam)
   s_mat(3, 4) = real(0.0_ki, ki_sam)
   s_mat(4, 3) = s_mat(3, 4)
   s_mat(4, 4) = real(0.0_ki, ki_sam)
   !-----------#] initialize invariants:

   if(samurai_verbosity > 0) then
      write(samurai_out,*) "[golem-2.0] numetens_group1"
      write(samurai_out,*) "[golem-2.0] epspow=", epspow
   end if
   call samurai_rm(numetens_group1, tot, totr, Vi, msq, 4, &
      & effective_group_rank, samurai_istop, scale2, ok)
   !-----------#[ deallocate invariants:
   deallocate(s_mat)
   !-----------#] deallocate invariants:
end subroutine reduce_numetens_group1
!-----#] subroutine reduce_numetens_group1:
!-----#[ function numetens_group2:
function     numetens_group2(icut, Q, mu2) result(num)
   use tens_rec
   use p1_dbarc_epnebbbar_kinematics, only: k1, k2, k3, k4, k5, k6
   use p1_dbarc_epnebbbar_model
   implicit none
   integer, intent(in) :: icut
   complex(ki_sam), dimension(4), intent(in) :: Q
   complex(ki_sam), intent(in) :: mu2
   complex(ki_sam) :: num

   logical, dimension(0:1-1) :: nonzero
   complex(ki_gol), dimension(0:3) :: Qg
   real(ki_gol), dimension(0:3) :: R
   complex(ki_gol) :: Q2
   complex(ki_sam) :: diag, denom1, denom2, denom3, denom4

   nonzero(:) = .true.
   Qg(0) = Q(4)
   Qg(1:3) = Q(1:3)
   Q2 = Qg(0)*Qg(0) - Qg(1)*Qg(1) - Qg(2)*Qg(2) - Qg(3)*Qg(3) - mu2

   select case(icut)
   case default
      R = real(-k6-k5, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k2, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k3-k6-k5-k4, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 2:
   if(nonzero(0)) then
      diag = ctenseval3(Qg, coeffs_group2%coeffs_2)
      num = num + diag
   end if
   !-------#] Diagram 2:
end function numetens_group2
!-----#] function numetens_group2:
!-----#[ subroutine reduce_numetens_group2:
subroutine     reduce_numetens_group2(scale2,tot,totr,ok)
   use msamurai, only: samurai_rm, samurai_cm
   use madds, only: s_mat
   use options, only: samurai_out => iout
   use p1_dbarc_epnebbbar_config, only: samurai_group_numerators, &
      samurai_istop, samurai_verbosity
   use p1_dbarc_epnebbbar_kinematics
   use p1_dbarc_epnebbbar_model
   use p1_dbarc_epnebbbar_globalsl1, only: epspow
   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   integer, parameter :: effective_group_rank = 3
   real(ki_sam), dimension(4) :: msq
   real(ki_sam), dimension(4,4) :: Vi
   msq(1) = 0.0_ki_sam
   Vi(1,(/4,1,2,3/)) = real(-k6-k5, ki_sam)
   msq(2) = 0.0_ki_sam
   Vi(2,(/4,1,2,3/)) = real(0, ki_sam)
   msq(3) = 0.0_ki_sam
   Vi(3,(/4,1,2,3/)) = real(-k2, ki_sam)
   msq(4) = 0.0_ki_sam
   Vi(4,(/4,1,2,3/)) = real(-k3-k6-k5-k4, ki_sam)
   !-----------#[ initialize invariants:
   allocate(s_mat(4, 4))
   s_mat(1, 1) = real(0.0_ki, ki_sam)
   s_mat(1, 2) = real(es56, ki_sam)
   s_mat(2, 1) = s_mat(1, 2)
   s_mat(1, 3) = real(es34+es56-es234-es12, ki_sam)
   s_mat(3, 1) = s_mat(1, 3)
   s_mat(1, 4) = real(es34, ki_sam)
   s_mat(4, 1) = s_mat(1, 4)
   s_mat(2, 2) = real(0.0_ki, ki_sam)
   s_mat(2, 3) = real(0.0_ki, ki_sam)
   s_mat(3, 2) = s_mat(2, 3)
   s_mat(2, 4) = real(es12, ki_sam)
   s_mat(4, 2) = s_mat(2, 4)
   s_mat(3, 3) = real(0.0_ki, ki_sam)
   s_mat(3, 4) = real(0.0_ki, ki_sam)
   s_mat(4, 3) = s_mat(3, 4)
   s_mat(4, 4) = real(0.0_ki, ki_sam)
   !-----------#] initialize invariants:

   if(samurai_verbosity > 0) then
      write(samurai_out,*) "[golem-2.0] numetens_group2"
      write(samurai_out,*) "[golem-2.0] epspow=", epspow
   end if
   call samurai_rm(numetens_group2, tot, totr, Vi, msq, 4, &
      & effective_group_rank, samurai_istop, scale2, ok)
   !-----------#[ deallocate invariants:
   deallocate(s_mat)
   !-----------#] deallocate invariants:
end subroutine reduce_numetens_group2
!-----#] subroutine reduce_numetens_group2:
!-----#[ function numetens_group3:
function     numetens_group3(icut, Q, mu2) result(num)
   use tens_rec
   use p1_dbarc_epnebbbar_kinematics, only: k1, k2, k3, k4, k5, k6
   use p1_dbarc_epnebbbar_model
   implicit none
   integer, intent(in) :: icut
   complex(ki_sam), dimension(4), intent(in) :: Q
   complex(ki_sam), intent(in) :: mu2
   complex(ki_sam) :: num

   logical, dimension(0:3-1) :: nonzero
   complex(ki_gol), dimension(0:3) :: Qg
   real(ki_gol), dimension(0:3) :: R
   complex(ki_gol) :: Q2
   complex(ki_sam) :: diag, denom1, denom2, denom3, denom4, denom5

   nonzero(:) = .true.
   Qg(0) = Q(4)
   Qg(1:3) = Q(1:3)
   Q2 = Qg(0)*Qg(0) - Qg(1)*Qg(1) - Qg(2)*Qg(2) - Qg(3)*Qg(3) - mu2

   select case(icut)
   case(0)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = Q2
      R = real(-k2, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(10)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = Q2
      R = real(-k2, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(20)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = Q2
      R = real(-k2, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(210)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = Q2
      R = real(-k2, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(30)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(-k2, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(310)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(-k2, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(320)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k2, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(3210)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k2, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(4)
      nonzero(2) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = Q2
      denom5 = 0.0_ki
   case(40)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = Q2
      denom5 = 0.0_ki
   case(41)
      nonzero(2) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = Q2
      denom5 = 0.0_ki
   case(410)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = Q2
      denom5 = 0.0_ki
   case(42)
      nonzero(2) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = Q2
      denom5 = 0.0_ki
   case(420)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = Q2
      denom5 = 0.0_ki
   case(421)
      nonzero(2) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = Q2
      denom5 = 0.0_ki
   case(4210)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = Q2
      denom5 = 0.0_ki
   case(43)
      nonzero(2) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(430)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(431)
      nonzero(2) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(4310)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(432)
      nonzero(2) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(4320)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(4321)
      nonzero(2) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case default
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = Q2
      R = real(-k2, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 27:
   if(nonzero(0)) then
      diag = ctenseval3(Qg, coeffs_group3%coeffs_27)
      num = num + diag
   end if
   !-------#] Diagram 27:
   !-------#[ Diagram 28:
   if(nonzero(1)) then
      diag = ctenseval2(Qg, coeffs_group3%coeffs_28)
      diag = diag * denom1
      num = num + diag
   end if
   !-------#] Diagram 28:
   !-------#[ Diagram 31:
   if(nonzero(2)) then
      diag = ctenseval2(Qg, coeffs_group3%coeffs_31)
      diag = diag * denom5
      num = num + diag
   end if
   !-------#] Diagram 31:
end function numetens_group3
!-----#] function numetens_group3:
!-----#[ subroutine reduce_numetens_group3:
subroutine     reduce_numetens_group3(scale2,tot,totr,ok)
   use msamurai, only: samurai_rm, samurai_cm
   use madds, only: s_mat
   use options, only: samurai_out => iout
   use p1_dbarc_epnebbbar_config, only: samurai_group_numerators, &
      samurai_istop, samurai_verbosity
   use p1_dbarc_epnebbbar_kinematics
   use p1_dbarc_epnebbbar_model
   use p1_dbarc_epnebbbar_globalsl1, only: epspow
   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   integer, parameter :: effective_group_rank = 3
   real(ki_sam), dimension(5) :: msq
   real(ki_sam), dimension(5,4) :: Vi
   msq(1) = 0.0_ki_sam
   Vi(1,(/4,1,2,3/)) = real(k3-k2+k4, ki_sam)
   msq(2) = 0.0_ki_sam
   Vi(2,(/4,1,2,3/)) = real(-k6-k5, ki_sam)
   msq(3) = real(mB*mB, ki)
   Vi(3,(/4,1,2,3/)) = real(-k5, ki_sam)
   msq(4) = 0.0_ki_sam
   Vi(4,(/4,1,2,3/)) = real(0, ki_sam)
   msq(5) = 0.0_ki_sam
   Vi(5,(/4,1,2,3/)) = real(-k2, ki_sam)
   !-----------#[ initialize invariants:
   allocate(s_mat(5, 5))
   s_mat(1, 1) = real(0.0_ki, ki_sam)
   s_mat(1, 2) = real(0.0_ki, ki_sam)
   s_mat(2, 1) = s_mat(1, 2)
   s_mat(1, 3) = real(es61-mB**2, ki_sam)
   s_mat(3, 1) = s_mat(1, 3)
   s_mat(1, 4) = real(es234, ki_sam)
   s_mat(4, 1) = s_mat(1, 4)
   s_mat(1, 5) = real(es34, ki_sam)
   s_mat(5, 1) = s_mat(1, 5)
   s_mat(2, 2) = real(0.0_ki, ki_sam)
   s_mat(2, 3) = real(0.0_ki, ki_sam)
   s_mat(3, 2) = s_mat(2, 3)
   s_mat(2, 4) = real(es56, ki_sam)
   s_mat(4, 2) = s_mat(2, 4)
   s_mat(2, 5) = real(es34+es56-es234-es12, ki_sam)
   s_mat(5, 2) = s_mat(2, 5)
   s_mat(3, 3) = real(-2.0_ki*mB**2, ki_sam)
   s_mat(3, 4) = real(0.0_ki, ki_sam)
   s_mat(4, 3) = s_mat(3, 4)
   s_mat(3, 5) = real(es61-es234-es345+es34, ki_sam)
   s_mat(5, 3) = s_mat(3, 5)
   s_mat(4, 4) = real(0.0_ki, ki_sam)
   s_mat(4, 5) = real(0.0_ki, ki_sam)
   s_mat(5, 4) = s_mat(4, 5)
   s_mat(5, 5) = real(0.0_ki, ki_sam)
   !-----------#] initialize invariants:

   if(samurai_verbosity > 0) then
      write(samurai_out,*) "[golem-2.0] numetens_group3"
      write(samurai_out,*) "[golem-2.0] epspow=", epspow
   end if
   call samurai_rm(numetens_group3, tot, totr, Vi, msq, 5, &
      & effective_group_rank, samurai_istop, scale2, ok)
   !-----------#[ deallocate invariants:
   deallocate(s_mat)
   !-----------#] deallocate invariants:
end subroutine reduce_numetens_group3
!-----#] subroutine reduce_numetens_group3:
!-----#[ function numetens_group4:
function     numetens_group4(icut, Q, mu2) result(num)
   use tens_rec
   use p1_dbarc_epnebbbar_kinematics, only: k1, k2, k3, k4, k5, k6
   use p1_dbarc_epnebbbar_model
   implicit none
   integer, intent(in) :: icut
   complex(ki_sam), dimension(4), intent(in) :: Q
   complex(ki_sam), intent(in) :: mu2
   complex(ki_sam) :: num

   logical, dimension(0:12-1) :: nonzero
   complex(ki_gol), dimension(0:3) :: Qg
   real(ki_gol), dimension(0:3) :: R
   complex(ki_gol) :: Q2
   complex(ki_sam) :: diag, denom1, denom2, denom3, denom4, denom5

   nonzero(:) = .true.
   Qg(0) = Q(4)
   Qg(1:3) = Q(1:3)
   Q2 = Qg(0)*Qg(0) - Qg(1)*Qg(1) - Qg(2)*Qg(2) - Qg(3)*Qg(3) - mu2

   select case(icut)
   case(0)
      nonzero(2) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k6, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k6-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(1)
      nonzero(4) = .false.
      nonzero(6) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k6, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k6-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(10)
      nonzero(2) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k6-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(2)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(20)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(21)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(210)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(3)
      nonzero(3) = .false.
      nonzero(7) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k6, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(30)
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k6, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(31)
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k6, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(310)
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(32)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(320)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(321)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(3210)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(4)
      nonzero(1) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(9) = .false.
      nonzero(11) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k6, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k6-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom5 = 0.0_ki
   case(40)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k6, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k6-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom5 = 0.0_ki
   case(41)
      nonzero(1) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(9) = .false.
      nonzero(11) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k6, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k6-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom5 = 0.0_ki
   case(410)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k6-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom5 = 0.0_ki
   case(42)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(11) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom5 = 0.0_ki
   case(420)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom5 = 0.0_ki
   case(421)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(11) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom5 = 0.0_ki
   case(4210)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom5 = 0.0_ki
   case(43)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(11) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k6, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(430)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k6, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(431)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(11) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k6, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(4310)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(432)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(11) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(4320)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(4321)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(11) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case default
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k6, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k6-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 1:
   if(nonzero(0)) then
      diag = ctenseval3(Qg, coeffs_group4%coeffs_1)
      diag = diag * denom3
      num = num + diag
   end if
   !-------#] Diagram 1:
   !-------#[ Diagram 4:
   if(nonzero(1)) then
      diag = ctenseval2(Qg, coeffs_group4%coeffs_4)
      diag = diag * denom3 * denom5
      num = num + diag
   end if
   !-------#] Diagram 4:
   !-------#[ Diagram 6:
   if(nonzero(2)) then
      diag = ctenseval2(Qg, coeffs_group4%coeffs_6)
      diag = diag * denom1 * denom3
      num = num + diag
   end if
   !-------#] Diagram 6:
   !-------#[ Diagram 8:
   if(nonzero(3)) then
      diag = ctenseval2(Qg, coeffs_group4%coeffs_8)
      diag = diag * denom3 * denom4
      num = num + diag
   end if
   !-------#] Diagram 8:
   !-------#[ Diagram 9:
   if(nonzero(4)) then
      diag = ctenseval2(Qg, coeffs_group4%coeffs_9)
      diag = diag * denom2 * denom3
      num = num + diag
   end if
   !-------#] Diagram 9:
   !-------#[ Diagram 10:
   if(nonzero(5)) then
      diag = ctenseval2(Qg, coeffs_group4%coeffs_10)
      diag = diag * denom1 * denom3 * denom5
      num = num + real(Nfrat, ki_sam) * diag
   end if
   !-------#] Diagram 10:
   !-------#[ Diagram 24:
   if(nonzero(6)) then
      diag = ctenseval1(Qg, coeffs_group4%coeffs_24)
      diag = diag * denom2 * denom3 * denom5
      num = num + diag
   end if
   !-------#] Diagram 24:
   !-------#[ Diagram 25:
   if(nonzero(7)) then
      diag = ctenseval1(Qg, coeffs_group4%coeffs_25)
      diag = diag * denom1 * denom3 * denom4
      num = num + diag
   end if
   !-------#] Diagram 25:
   !-------#[ Diagram 26:
   if(nonzero(8)) then
      diag = ctenseval3(Qg, coeffs_group4%coeffs_26)
      num = num + diag
   end if
   !-------#] Diagram 26:
   !-------#[ Diagram 29:
   if(nonzero(9)) then
      diag = ctenseval2(Qg, coeffs_group4%coeffs_29)
      diag = diag * denom5
      num = num + diag
   end if
   !-------#] Diagram 29:
   !-------#[ Diagram 30:
   if(nonzero(10)) then
      diag = ctenseval2(Qg, coeffs_group4%coeffs_30)
      diag = diag * denom1
      num = num + diag
   end if
   !-------#] Diagram 30:
   !-------#[ Diagram 32:
   if(nonzero(11)) then
      diag = ctenseval2(Qg, coeffs_group4%coeffs_32)
      diag = diag * denom1 * denom5
      num = num + diag
   end if
   !-------#] Diagram 32:
end function numetens_group4
!-----#] function numetens_group4:
!-----#[ subroutine reduce_numetens_group4:
subroutine     reduce_numetens_group4(scale2,tot,totr,ok)
   use msamurai, only: samurai_rm, samurai_cm
   use madds, only: s_mat
   use options, only: samurai_out => iout
   use p1_dbarc_epnebbbar_config, only: samurai_group_numerators, &
      samurai_istop, samurai_verbosity
   use p1_dbarc_epnebbbar_kinematics
   use p1_dbarc_epnebbbar_model
   use p1_dbarc_epnebbbar_globalsl1, only: epspow
   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   integer, parameter :: effective_group_rank = 5
   real(ki_sam), dimension(5) :: msq
   real(ki_sam), dimension(5,4) :: Vi
   msq(1) = 0.0_ki_sam
   Vi(1,(/4,1,2,3/)) = real(-k2, ki_sam)
   msq(2) = 0.0_ki_sam
   Vi(2,(/4,1,2,3/)) = real(0, ki_sam)
   msq(3) = real(mB*mB, ki)
   Vi(3,(/4,1,2,3/)) = real(-k6, ki_sam)
   msq(4) = 0.0_ki_sam
   Vi(4,(/4,1,2,3/)) = real(-k6-k5, ki_sam)
   msq(5) = 0.0_ki_sam
   Vi(5,(/4,1,2,3/)) = real(k3-k2+k4, ki_sam)
   !-----------#[ initialize invariants:
   allocate(s_mat(5, 5))
   s_mat(1, 1) = real(0.0_ki, ki_sam)
   s_mat(1, 2) = real(0.0_ki, ki_sam)
   s_mat(2, 1) = s_mat(1, 2)
   s_mat(1, 3) = real(-es12-es61+es345, ki_sam)
   s_mat(3, 1) = s_mat(1, 3)
   s_mat(1, 4) = real(es34+es56-es234-es12, ki_sam)
   s_mat(4, 1) = s_mat(1, 4)
   s_mat(1, 5) = real(es34, ki_sam)
   s_mat(5, 1) = s_mat(1, 5)
   s_mat(2, 2) = real(0.0_ki, ki_sam)
   s_mat(2, 3) = real(0.0_ki, ki_sam)
   s_mat(3, 2) = s_mat(2, 3)
   s_mat(2, 4) = real(es56, ki_sam)
   s_mat(4, 2) = s_mat(2, 4)
   s_mat(2, 5) = real(es234, ki_sam)
   s_mat(5, 2) = s_mat(2, 5)
   s_mat(3, 3) = real(-2.0_ki*mB**2, ki_sam)
   s_mat(3, 4) = real(0.0_ki, ki_sam)
   s_mat(4, 3) = s_mat(3, 4)
   s_mat(3, 5) = real(-es56-es61+es234+mB**2, ki_sam)
   s_mat(5, 3) = s_mat(3, 5)
   s_mat(4, 4) = real(0.0_ki, ki_sam)
   s_mat(4, 5) = real(0.0_ki, ki_sam)
   s_mat(5, 4) = s_mat(4, 5)
   s_mat(5, 5) = real(0.0_ki, ki_sam)
   !-----------#] initialize invariants:

   if(samurai_verbosity > 0) then
      write(samurai_out,*) "[golem-2.0] numetens_group4"
      write(samurai_out,*) "[golem-2.0] epspow=", epspow
   end if
   call samurai_rm(numetens_group4, tot, totr, Vi, msq, 5, &
      & effective_group_rank, samurai_istop, scale2, ok)
   !-----------#[ deallocate invariants:
   deallocate(s_mat)
   !-----------#] deallocate invariants:
end subroutine reduce_numetens_group4
!-----#] subroutine reduce_numetens_group4:
!---#] numetens golem95:
!---#[ subroutine tear_down_golem95:
subroutine     tear_down_golem95()
   use matrice_s, only: deallocation_s, s_mat
   use parametre, only: rmass_or_cmass_par, cmass
   use cache, only: clear_cache
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
end module p1_dbarc_epnebbbar_groups
