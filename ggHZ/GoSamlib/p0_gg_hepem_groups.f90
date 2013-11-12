module     p0_gg_hepem_groups
   use precision, only: ki_sam => ki
   use madds
   use precision_golem, only: ki_gol => ki
   use tens_rec
   use p0_gg_hepem_config, only: ki , reduction_interoperation, samurai_scalar 
   implicit none
   save

   private
!---#[ tensor coefficients for golem95:
   !-----#[ tensor coefficients group 0:
   type tensrec_info_group0
      type(coeff_type_4) :: coeffs_49
   end type

   public :: tensrec_info_group0
   type(tensrec_info_group0), pointer, public :: coeffs_group0
   public :: reduce_numetens_group0
   !-----#] tensor coefficients group 0:
   !-----#[ tensor coefficients group 1:
   type tensrec_info_group1
      type(coeff_type_4) :: coeffs_37
      type(coeff_type_3) :: coeffs_61
   end type

   public :: tensrec_info_group1
   type(tensrec_info_group1), pointer, public :: coeffs_group1
   public :: reduce_numetens_group1
   !-----#] tensor coefficients group 1:
   !-----#[ tensor coefficients group 2:
   type tensrec_info_group2
      type(coeff_type_4) :: coeffs_25
   end type

   public :: tensrec_info_group2
   type(tensrec_info_group2), pointer, public :: coeffs_group2
   public :: reduce_numetens_group2
   !-----#] tensor coefficients group 2:
   !-----#[ tensor coefficients group 3:
   type tensrec_info_group3
      type(coeff_type_4) :: coeffs_47
   end type

   public :: tensrec_info_group3
   type(tensrec_info_group3), pointer, public :: coeffs_group3
   public :: reduce_numetens_group3
   !-----#] tensor coefficients group 3:
   !-----#[ tensor coefficients group 4:
   type tensrec_info_group4
      type(coeff_type_4) :: coeffs_35
   end type

   public :: tensrec_info_group4
   type(tensrec_info_group4), pointer, public :: coeffs_group4
   public :: reduce_numetens_group4
   !-----#] tensor coefficients group 4:
   !-----#[ tensor coefficients group 5:
   type tensrec_info_group5
      type(coeff_type_4) :: coeffs_23
      type(coeff_type_3) :: coeffs_59
   end type

   public :: tensrec_info_group5
   type(tensrec_info_group5), pointer, public :: coeffs_group5
   public :: reduce_numetens_group5
   !-----#] tensor coefficients group 5:
!---#] tensor coefficients for golem95:
   integer :: prev_ls = -1

   interface contract_golem95
      module procedure contract_tensor_coefficients_group_0
      module procedure contract_tensor_coefficients_group_1
      module procedure contract_tensor_coefficients_group_2
      module procedure contract_tensor_coefficients_group_3
      module procedure contract_tensor_coefficients_group_4
      module procedure contract_tensor_coefficients_group_5
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
   use form_factor_4p, only: a40
   use form_factor_type, only: form_factor, operator(+), operator(-)
   use p0_gg_hepem_config, only: debug_nlo_diagrams, logfile
   use p0_gg_hepem_kinematics, only: k1, k2, k3, k4, k5, es45, es12, es3, es51, es23, es34
   use p0_gg_hepem_model
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
   s_mat(1,1)=real(-2.0_ki*mB**2, ki_gol)
   s_mat(1,2)=real(-2.0_ki*mB**2, ki_gol)
   s_mat(2,1)=s_mat(1,2)
   s_mat(1,3)=real(-2.0_ki*mB**2+es23, ki_gol)
   s_mat(3,1)=s_mat(1,3)
   s_mat(1,4)=real(-2.0_ki*mB**2+es45, ki_gol)
   s_mat(4,1)=s_mat(1,4)
   s_mat(2,2)=real(-2.0_ki*mB**2, ki_gol)
   s_mat(2,3)=real(-2.0_ki*mB**2+mH**2, ki_gol)
   s_mat(3,2)=s_mat(2,3)
   s_mat(2,4)=real(mH**2+es45-2.0_ki*mB**2-es12-es23, ki_gol)
   s_mat(4,2)=s_mat(2,4)
   s_mat(3,3)=real(-2.0_ki*mB**2, ki_gol)
   s_mat(3,4)=real(-2.0_ki*mB**2, ki_gol)
   s_mat(4,3)=s_mat(3,4)
   s_mat(4,4)=real(-2.0_ki*mB**2, ki_gol)
   call preparesmatrix()
   rmomenta(1,:) = real(-k2, ki_gol)
   rmomenta(2,:) = 0.0_ki_gol
   rmomenta(3,:) = real(-k3, ki_gol)
   rmomenta(4,:) = real(-k2+k5+k4, ki_gol)
   !-------#[ Diagram 49:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='49'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = 0

      amp = + (contract4_4(coeffs%coeffs_49, rmomenta, b_set))
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
   !-------#] Diagram 49:
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
   use p0_gg_hepem_config, only: debug_nlo_diagrams, logfile
   use p0_gg_hepem_kinematics, only: k1, k2, k3, k4, k5, es45, es12, es3, es51, es23, es34
   use p0_gg_hepem_model
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
   s_mat(1,1)=real(-2.0_ki*mB**2, ki_gol)
   s_mat(1,2)=real(-2.0_ki*mB**2+mH**2, ki_gol)
   s_mat(2,1)=s_mat(1,2)
   s_mat(1,3)=real(-2.0_ki*mB**2+es23, ki_gol)
   s_mat(3,1)=s_mat(1,3)
   s_mat(1,4)=real(-2.0_ki*mB**2+es45, ki_gol)
   s_mat(4,1)=s_mat(1,4)
   s_mat(2,2)=real(-2.0_ki*mB**2, ki_gol)
   s_mat(2,3)=real(-2.0_ki*mB**2, ki_gol)
   s_mat(3,2)=s_mat(2,3)
   s_mat(2,4)=real(-2.0_ki*mB**2+es12, ki_gol)
   s_mat(4,2)=s_mat(2,4)
   s_mat(3,3)=real(-2.0_ki*mB**2, ki_gol)
   s_mat(3,4)=real(-2.0_ki*mB**2, ki_gol)
   s_mat(4,3)=s_mat(3,4)
   s_mat(4,4)=real(-2.0_ki*mB**2, ki_gol)
   call preparesmatrix()
   rmomenta(1,:) = real(-k3, ki_gol)
   rmomenta(2,:) = 0.0_ki_gol
   rmomenta(3,:) = real(-k2, ki_gol)
   rmomenta(4,:) = real(-k3-k5-k4, ki_gol)
   !-------#[ Diagram 37:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='37'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = 0

      amp = + (contract4_4(coeffs%coeffs_37, rmomenta, b_set))
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
   !-------#] Diagram 37:
   !-------#[ Diagram 61:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='61'>"
         dbg_amp = amp
      end if
      b_set = packb((/1/))

      amp = amp + (contract3_3(coeffs%coeffs_61, rmomenta, b_set))
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
   !-------#] Diagram 61:
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
   use p0_gg_hepem_config, only: debug_nlo_diagrams, logfile
   use p0_gg_hepem_kinematics, only: k1, k2, k3, k4, k5, es45, es12, es3, es51, es23, es34
   use p0_gg_hepem_model
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
   s_mat(1,1)=real(-2.0_ki*mB**2, ki_gol)
   s_mat(1,2)=real(-2.0_ki*mB**2+mH**2, ki_gol)
   s_mat(2,1)=s_mat(1,2)
   s_mat(1,3)=real(mH**2+es45-2.0_ki*mB**2-es12-es23, ki_gol)
   s_mat(3,1)=s_mat(1,3)
   s_mat(1,4)=real(-2.0_ki*mB**2+es45, ki_gol)
   s_mat(4,1)=s_mat(1,4)
   s_mat(2,2)=real(-2.0_ki*mB**2, ki_gol)
   s_mat(2,3)=real(-2.0_ki*mB**2, ki_gol)
   s_mat(3,2)=s_mat(2,3)
   s_mat(2,4)=real(-2.0_ki*mB**2+es12, ki_gol)
   s_mat(4,2)=s_mat(2,4)
   s_mat(3,3)=real(-2.0_ki*mB**2, ki_gol)
   s_mat(3,4)=real(-2.0_ki*mB**2, ki_gol)
   s_mat(4,3)=s_mat(3,4)
   s_mat(4,4)=real(-2.0_ki*mB**2, ki_gol)
   call preparesmatrix()
   rmomenta(1,:) = real(-k5-k4, ki_gol)
   rmomenta(2,:) = real(-k3-k5-k4, ki_gol)
   rmomenta(3,:) = real(-k2, ki_gol)
   rmomenta(4,:) = 0.0_ki_gol
   !-------#[ Diagram 25:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='25'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = 0

      amp = + (contract4_4(coeffs%coeffs_25, rmomenta, b_set))
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
   use form_factor_type, only: form_factor, operator(+), operator(-)
   use p0_gg_hepem_config, only: debug_nlo_diagrams, logfile
   use p0_gg_hepem_kinematics, only: k1, k2, k3, k4, k5, es45, es12, es3, es51, es23, es34
   use p0_gg_hepem_model
   implicit none
   type(tensrec_info_group3), intent(in) :: coeffs
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
   s_mat(1,2)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(2,1)=s_mat(1,2)
   s_mat(1,3)=real(es23-2.0_ki*mT**2, ki_gol)
   s_mat(3,1)=s_mat(1,3)
   s_mat(1,4)=real(es45-2.0_ki*mT**2, ki_gol)
   s_mat(4,1)=s_mat(1,4)
   s_mat(2,2)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(2,3)=real(mH**2-2.0_ki*mT**2, ki_gol)
   s_mat(3,2)=s_mat(2,3)
   s_mat(2,4)=real(mH**2-2.0_ki*mT**2+es45-es12-es23, ki_gol)
   s_mat(4,2)=s_mat(2,4)
   s_mat(3,3)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(3,4)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(4,3)=s_mat(3,4)
   s_mat(4,4)=real(-2.0_ki*mT**2, ki_gol)
   call preparesmatrix()
   rmomenta(1,:) = real(-k2, ki_gol)
   rmomenta(2,:) = 0.0_ki_gol
   rmomenta(3,:) = real(-k3, ki_gol)
   rmomenta(4,:) = real(-k2+k5+k4, ki_gol)
   !-------#[ Diagram 47:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='47'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = 0

      amp = + (contract4_4(coeffs%coeffs_47, rmomenta, b_set))
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
   !-------#] Diagram 47:
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
   use form_factor_type, only: form_factor, operator(+), operator(-)
   use p0_gg_hepem_config, only: debug_nlo_diagrams, logfile
   use p0_gg_hepem_kinematics, only: k1, k2, k3, k4, k5, es45, es12, es3, es51, es23, es34
   use p0_gg_hepem_model
   implicit none
   type(tensrec_info_group4), intent(in) :: coeffs
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
   s_mat(1,3)=real(es23-2.0_ki*mT**2, ki_gol)
   s_mat(3,1)=s_mat(1,3)
   s_mat(1,4)=real(es45-2.0_ki*mT**2, ki_gol)
   s_mat(4,1)=s_mat(1,4)
   s_mat(2,2)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(2,3)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(3,2)=s_mat(2,3)
   s_mat(2,4)=real(es12-2.0_ki*mT**2, ki_gol)
   s_mat(4,2)=s_mat(2,4)
   s_mat(3,3)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(3,4)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(4,3)=s_mat(3,4)
   s_mat(4,4)=real(-2.0_ki*mT**2, ki_gol)
   call preparesmatrix()
   rmomenta(1,:) = real(-k3, ki_gol)
   rmomenta(2,:) = 0.0_ki_gol
   rmomenta(3,:) = real(-k2, ki_gol)
   rmomenta(4,:) = real(-k3-k5-k4, ki_gol)
   !-------#[ Diagram 35:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='35'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = 0

      amp = + (contract4_4(coeffs%coeffs_35, rmomenta, b_set))
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
   !-------#] Diagram 35:
   if ((reduction_interoperation /= 1) .and. (samurai_scalar == 3) ) then
        call tear_down_golem95();
   end if

   100 format (A30,E24.16,A6,E24.16,A3)
end function contract_tensor_coefficients_group_4
!-----#] function contract_tensor_coefficients_group_4:
!-----#[ function contract_tensor_coefficients_group_5:
function     contract_tensor_coefficients_group_5(coeffs) result(amp)
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
   use p0_gg_hepem_config, only: debug_nlo_diagrams, logfile
   use p0_gg_hepem_kinematics, only: k1, k2, k3, k4, k5, es45, es12, es3, es51, es23, es34
   use p0_gg_hepem_model
   implicit none
   type(tensrec_info_group5), intent(in) :: coeffs
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
   s_mat(1,3)=real(mH**2-2.0_ki*mT**2+es45-es12-es23, ki_gol)
   s_mat(3,1)=s_mat(1,3)
   s_mat(1,4)=real(es45-2.0_ki*mT**2, ki_gol)
   s_mat(4,1)=s_mat(1,4)
   s_mat(2,2)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(2,3)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(3,2)=s_mat(2,3)
   s_mat(2,4)=real(es12-2.0_ki*mT**2, ki_gol)
   s_mat(4,2)=s_mat(2,4)
   s_mat(3,3)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(3,4)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(4,3)=s_mat(3,4)
   s_mat(4,4)=real(-2.0_ki*mT**2, ki_gol)
   call preparesmatrix()
   rmomenta(1,:) = real(-k5-k4, ki_gol)
   rmomenta(2,:) = real(-k3-k5-k4, ki_gol)
   rmomenta(3,:) = real(-k2, ki_gol)
   rmomenta(4,:) = 0.0_ki_gol
   !-------#[ Diagram 23:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='23'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = 0

      amp = + (contract4_4(coeffs%coeffs_23, rmomenta, b_set))
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
   !-------#] Diagram 23:
   !-------#[ Diagram 59:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='59'>"
         dbg_amp = amp
      end if
      b_set = packb((/1/))

      amp = amp + (contract3_3(coeffs%coeffs_59, rmomenta, b_set))
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
   !-------#] Diagram 59:
   if ((reduction_interoperation /= 1) .and. (samurai_scalar == 3) ) then
        call tear_down_golem95();
   end if

   100 format (A30,E24.16,A6,E24.16,A3)
end function contract_tensor_coefficients_group_5
!-----#] function contract_tensor_coefficients_group_5:
!---#] contract tensor coefficients golem95:
!---#[ numetens golem95:
!-----#[ function numetens_group0:
function     numetens_group0(icut, Q, mu2) result(num)
   use tens_rec
   use p0_gg_hepem_kinematics, only: k1, k2, k3, k4, k5
   use p0_gg_hepem_model
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
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom2 = Q2 - mB*mB
      R = real(-k3, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k2+k5+k4, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 49:
   if(nonzero(0)) then
      diag = ctenseval4(Qg, coeffs_group0%coeffs_49)
      num = num + diag
   end if
   !-------#] Diagram 49:
end function numetens_group0
!-----#] function numetens_group0:
!-----#[ subroutine reduce_numetens_group0:
subroutine     reduce_numetens_group0(scale2,tot,totr,ok)
   use msamurai, only: samurai_rm, samurai_cm
   use madds, only: s_mat
   use options, only: samurai_out => iout
   use p0_gg_hepem_config, only: samurai_group_numerators, &
      samurai_istop, samurai_verbosity
   use p0_gg_hepem_kinematics
   use p0_gg_hepem_model
   use p0_gg_hepem_globalsl1, only: epspow
   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   integer, parameter :: effective_group_rank = 4
   real(ki_sam), dimension(4) :: msq
   real(ki_sam), dimension(4,4) :: Vi
   msq(1) = real(mB*mB, ki)
   Vi(1,(/4,1,2,3/)) = real(-k2, ki_sam)
   msq(2) = real(mB*mB, ki)
   Vi(2,(/4,1,2,3/)) = real(0, ki_sam)
   msq(3) = real(mB*mB, ki)
   Vi(3,(/4,1,2,3/)) = real(-k3, ki_sam)
   msq(4) = real(mB*mB, ki)
   Vi(4,(/4,1,2,3/)) = real(-k2+k5+k4, ki_sam)
   !-----------#[ initialize invariants:
   allocate(s_mat(4, 4))
   s_mat(1, 1) = real(-2.0_ki*mB**2, ki_sam)
   s_mat(1, 2) = real(-2.0_ki*mB**2, ki_sam)
   s_mat(2, 1) = s_mat(1, 2)
   s_mat(1, 3) = real(-2.0_ki*mB**2+es23, ki_sam)
   s_mat(3, 1) = s_mat(1, 3)
   s_mat(1, 4) = real(-2.0_ki*mB**2+es45, ki_sam)
   s_mat(4, 1) = s_mat(1, 4)
   s_mat(2, 2) = real(-2.0_ki*mB**2, ki_sam)
   s_mat(2, 3) = real(-2.0_ki*mB**2+mH**2, ki_sam)
   s_mat(3, 2) = s_mat(2, 3)
   s_mat(2, 4) = real(mH**2+es45-2.0_ki*mB**2-es12-es23, ki_sam)
   s_mat(4, 2) = s_mat(2, 4)
   s_mat(3, 3) = real(-2.0_ki*mB**2, ki_sam)
   s_mat(3, 4) = real(-2.0_ki*mB**2, ki_sam)
   s_mat(4, 3) = s_mat(3, 4)
   s_mat(4, 4) = real(-2.0_ki*mB**2, ki_sam)
   !-----------#] initialize invariants:

   if(samurai_verbosity > 0) then
      write(samurai_out,*) "[golem-2.0] numetens_group0"
      write(samurai_out,*) "[golem-2.0] epspow=", epspow
   end if
   call samurai_rm(numetens_group0, tot, totr, Vi, msq, 4, &
      & effective_group_rank, samurai_istop, scale2, ok)
   !-----------#[ deallocate invariants:
   deallocate(s_mat)
   !-----------#] deallocate invariants:
end subroutine reduce_numetens_group0
!-----#] subroutine reduce_numetens_group0:
!-----#[ function numetens_group1:
function     numetens_group1(icut, Q, mu2) result(num)
   use tens_rec
   use p0_gg_hepem_kinematics, only: k1, k2, k3, k4, k5
   use p0_gg_hepem_model
   implicit none
   integer, intent(in) :: icut
   complex(ki_sam), dimension(4), intent(in) :: Q
   complex(ki_sam), intent(in) :: mu2
   complex(ki_sam) :: num

   logical, dimension(0:2-1) :: nonzero
   complex(ki_gol), dimension(0:3) :: Qg
   real(ki_gol), dimension(0:3) :: R
   complex(ki_gol) :: Q2
   complex(ki_sam) :: diag, denom1, denom2, denom3, denom4

   nonzero(:) = .true.
   Qg(0) = Q(4)
   Qg(1:3) = Q(1:3)
   Q2 = Qg(0)*Qg(0) - Qg(1)*Qg(1) - Qg(2)*Qg(2) - Qg(3)*Qg(3) - mu2

   select case(icut)
   case(0)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = Q2 - mB*mB
      R = real(-k2, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k3-k5-k4, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
   case(10)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k2, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k3-k5-k4, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
   case(20)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = Q2 - mB*mB
      denom3 = 0.0_ki
      R = real(-k3-k5-k4, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
   case(210)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k3-k5-k4, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
   case(30)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = Q2 - mB*mB
      R = real(-k2, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
   case(310)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k2, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
   case(320)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = Q2 - mB*mB
      denom3 = 0.0_ki
      denom4 = 0.0_ki
   case(3210)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
   case default
      R = real(-k3, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom2 = Q2 - mB*mB
      R = real(-k2, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k3-k5-k4, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 37:
   if(nonzero(0)) then
      diag = ctenseval4(Qg, coeffs_group1%coeffs_37)
      num = num + diag
   end if
   !-------#] Diagram 37:
   !-------#[ Diagram 61:
   if(nonzero(1)) then
      diag = ctenseval3(Qg, coeffs_group1%coeffs_61)
      diag = diag * denom1
      num = num + diag
   end if
   !-------#] Diagram 61:
end function numetens_group1
!-----#] function numetens_group1:
!-----#[ subroutine reduce_numetens_group1:
subroutine     reduce_numetens_group1(scale2,tot,totr,ok)
   use msamurai, only: samurai_rm, samurai_cm
   use madds, only: s_mat
   use options, only: samurai_out => iout
   use p0_gg_hepem_config, only: samurai_group_numerators, &
      samurai_istop, samurai_verbosity
   use p0_gg_hepem_kinematics
   use p0_gg_hepem_model
   use p0_gg_hepem_globalsl1, only: epspow
   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   integer, parameter :: effective_group_rank = 4
   real(ki_sam), dimension(4) :: msq
   real(ki_sam), dimension(4,4) :: Vi
   msq(1) = real(mB*mB, ki)
   Vi(1,(/4,1,2,3/)) = real(-k3, ki_sam)
   msq(2) = real(mB*mB, ki)
   Vi(2,(/4,1,2,3/)) = real(0, ki_sam)
   msq(3) = real(mB*mB, ki)
   Vi(3,(/4,1,2,3/)) = real(-k2, ki_sam)
   msq(4) = real(mB*mB, ki)
   Vi(4,(/4,1,2,3/)) = real(-k3-k5-k4, ki_sam)
   !-----------#[ initialize invariants:
   allocate(s_mat(4, 4))
   s_mat(1, 1) = real(-2.0_ki*mB**2, ki_sam)
   s_mat(1, 2) = real(-2.0_ki*mB**2+mH**2, ki_sam)
   s_mat(2, 1) = s_mat(1, 2)
   s_mat(1, 3) = real(-2.0_ki*mB**2+es23, ki_sam)
   s_mat(3, 1) = s_mat(1, 3)
   s_mat(1, 4) = real(-2.0_ki*mB**2+es45, ki_sam)
   s_mat(4, 1) = s_mat(1, 4)
   s_mat(2, 2) = real(-2.0_ki*mB**2, ki_sam)
   s_mat(2, 3) = real(-2.0_ki*mB**2, ki_sam)
   s_mat(3, 2) = s_mat(2, 3)
   s_mat(2, 4) = real(-2.0_ki*mB**2+es12, ki_sam)
   s_mat(4, 2) = s_mat(2, 4)
   s_mat(3, 3) = real(-2.0_ki*mB**2, ki_sam)
   s_mat(3, 4) = real(-2.0_ki*mB**2, ki_sam)
   s_mat(4, 3) = s_mat(3, 4)
   s_mat(4, 4) = real(-2.0_ki*mB**2, ki_sam)
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
   use p0_gg_hepem_kinematics, only: k1, k2, k3, k4, k5
   use p0_gg_hepem_model
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
      R = real(-k5-k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k3-k5-k4, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k2, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = Q2 - mB*mB
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 25:
   if(nonzero(0)) then
      diag = ctenseval4(Qg, coeffs_group2%coeffs_25)
      num = num + diag
   end if
   !-------#] Diagram 25:
end function numetens_group2
!-----#] function numetens_group2:
!-----#[ subroutine reduce_numetens_group2:
subroutine     reduce_numetens_group2(scale2,tot,totr,ok)
   use msamurai, only: samurai_rm, samurai_cm
   use madds, only: s_mat
   use options, only: samurai_out => iout
   use p0_gg_hepem_config, only: samurai_group_numerators, &
      samurai_istop, samurai_verbosity
   use p0_gg_hepem_kinematics
   use p0_gg_hepem_model
   use p0_gg_hepem_globalsl1, only: epspow
   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   integer, parameter :: effective_group_rank = 4
   real(ki_sam), dimension(4) :: msq
   real(ki_sam), dimension(4,4) :: Vi
   msq(1) = real(mB*mB, ki)
   Vi(1,(/4,1,2,3/)) = real(-k5-k4, ki_sam)
   msq(2) = real(mB*mB, ki)
   Vi(2,(/4,1,2,3/)) = real(-k3-k5-k4, ki_sam)
   msq(3) = real(mB*mB, ki)
   Vi(3,(/4,1,2,3/)) = real(-k2, ki_sam)
   msq(4) = real(mB*mB, ki)
   Vi(4,(/4,1,2,3/)) = real(0, ki_sam)
   !-----------#[ initialize invariants:
   allocate(s_mat(4, 4))
   s_mat(1, 1) = real(-2.0_ki*mB**2, ki_sam)
   s_mat(1, 2) = real(-2.0_ki*mB**2+mH**2, ki_sam)
   s_mat(2, 1) = s_mat(1, 2)
   s_mat(1, 3) = real(mH**2+es45-2.0_ki*mB**2-es12-es23, ki_sam)
   s_mat(3, 1) = s_mat(1, 3)
   s_mat(1, 4) = real(-2.0_ki*mB**2+es45, ki_sam)
   s_mat(4, 1) = s_mat(1, 4)
   s_mat(2, 2) = real(-2.0_ki*mB**2, ki_sam)
   s_mat(2, 3) = real(-2.0_ki*mB**2, ki_sam)
   s_mat(3, 2) = s_mat(2, 3)
   s_mat(2, 4) = real(-2.0_ki*mB**2+es12, ki_sam)
   s_mat(4, 2) = s_mat(2, 4)
   s_mat(3, 3) = real(-2.0_ki*mB**2, ki_sam)
   s_mat(3, 4) = real(-2.0_ki*mB**2, ki_sam)
   s_mat(4, 3) = s_mat(3, 4)
   s_mat(4, 4) = real(-2.0_ki*mB**2, ki_sam)
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
   use p0_gg_hepem_kinematics, only: k1, k2, k3, k4, k5
   use p0_gg_hepem_model
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
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mT*mT
      denom2 = Q2 - mT*mT
      R = real(-k3, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mT*mT
      R = real(-k2+k5+k4, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mT*mT
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 47:
   if(nonzero(0)) then
      diag = ctenseval4(Qg, coeffs_group3%coeffs_47)
      num = num + diag
   end if
   !-------#] Diagram 47:
end function numetens_group3
!-----#] function numetens_group3:
!-----#[ subroutine reduce_numetens_group3:
subroutine     reduce_numetens_group3(scale2,tot,totr,ok)
   use msamurai, only: samurai_rm, samurai_cm
   use madds, only: s_mat
   use options, only: samurai_out => iout
   use p0_gg_hepem_config, only: samurai_group_numerators, &
      samurai_istop, samurai_verbosity
   use p0_gg_hepem_kinematics
   use p0_gg_hepem_model
   use p0_gg_hepem_globalsl1, only: epspow
   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   integer, parameter :: effective_group_rank = 4
   real(ki_sam), dimension(4) :: msq
   real(ki_sam), dimension(4,4) :: Vi
   msq(1) = real(mT*mT, ki)
   Vi(1,(/4,1,2,3/)) = real(-k2, ki_sam)
   msq(2) = real(mT*mT, ki)
   Vi(2,(/4,1,2,3/)) = real(0, ki_sam)
   msq(3) = real(mT*mT, ki)
   Vi(3,(/4,1,2,3/)) = real(-k3, ki_sam)
   msq(4) = real(mT*mT, ki)
   Vi(4,(/4,1,2,3/)) = real(-k2+k5+k4, ki_sam)
   !-----------#[ initialize invariants:
   allocate(s_mat(4, 4))
   s_mat(1, 1) = real(-2.0_ki*mT**2, ki_sam)
   s_mat(1, 2) = real(-2.0_ki*mT**2, ki_sam)
   s_mat(2, 1) = s_mat(1, 2)
   s_mat(1, 3) = real(es23-2.0_ki*mT**2, ki_sam)
   s_mat(3, 1) = s_mat(1, 3)
   s_mat(1, 4) = real(es45-2.0_ki*mT**2, ki_sam)
   s_mat(4, 1) = s_mat(1, 4)
   s_mat(2, 2) = real(-2.0_ki*mT**2, ki_sam)
   s_mat(2, 3) = real(mH**2-2.0_ki*mT**2, ki_sam)
   s_mat(3, 2) = s_mat(2, 3)
   s_mat(2, 4) = real(mH**2-2.0_ki*mT**2+es45-es12-es23, ki_sam)
   s_mat(4, 2) = s_mat(2, 4)
   s_mat(3, 3) = real(-2.0_ki*mT**2, ki_sam)
   s_mat(3, 4) = real(-2.0_ki*mT**2, ki_sam)
   s_mat(4, 3) = s_mat(3, 4)
   s_mat(4, 4) = real(-2.0_ki*mT**2, ki_sam)
   !-----------#] initialize invariants:

   if(samurai_verbosity > 0) then
      write(samurai_out,*) "[golem-2.0] numetens_group3"
      write(samurai_out,*) "[golem-2.0] epspow=", epspow
   end if
   call samurai_rm(numetens_group3, tot, totr, Vi, msq, 4, &
      & effective_group_rank, samurai_istop, scale2, ok)
   !-----------#[ deallocate invariants:
   deallocate(s_mat)
   !-----------#] deallocate invariants:
end subroutine reduce_numetens_group3
!-----#] subroutine reduce_numetens_group3:
!-----#[ function numetens_group4:
function     numetens_group4(icut, Q, mu2) result(num)
   use tens_rec
   use p0_gg_hepem_kinematics, only: k1, k2, k3, k4, k5
   use p0_gg_hepem_model
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
      R = real(-k3, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mT*mT
      denom2 = Q2 - mT*mT
      R = real(-k2, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mT*mT
      R = real(-k3-k5-k4, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mT*mT
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 35:
   if(nonzero(0)) then
      diag = ctenseval4(Qg, coeffs_group4%coeffs_35)
      num = num + diag
   end if
   !-------#] Diagram 35:
end function numetens_group4
!-----#] function numetens_group4:
!-----#[ subroutine reduce_numetens_group4:
subroutine     reduce_numetens_group4(scale2,tot,totr,ok)
   use msamurai, only: samurai_rm, samurai_cm
   use madds, only: s_mat
   use options, only: samurai_out => iout
   use p0_gg_hepem_config, only: samurai_group_numerators, &
      samurai_istop, samurai_verbosity
   use p0_gg_hepem_kinematics
   use p0_gg_hepem_model
   use p0_gg_hepem_globalsl1, only: epspow
   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   integer, parameter :: effective_group_rank = 4
   real(ki_sam), dimension(4) :: msq
   real(ki_sam), dimension(4,4) :: Vi
   msq(1) = real(mT*mT, ki)
   Vi(1,(/4,1,2,3/)) = real(-k3, ki_sam)
   msq(2) = real(mT*mT, ki)
   Vi(2,(/4,1,2,3/)) = real(0, ki_sam)
   msq(3) = real(mT*mT, ki)
   Vi(3,(/4,1,2,3/)) = real(-k2, ki_sam)
   msq(4) = real(mT*mT, ki)
   Vi(4,(/4,1,2,3/)) = real(-k3-k5-k4, ki_sam)
   !-----------#[ initialize invariants:
   allocate(s_mat(4, 4))
   s_mat(1, 1) = real(-2.0_ki*mT**2, ki_sam)
   s_mat(1, 2) = real(mH**2-2.0_ki*mT**2, ki_sam)
   s_mat(2, 1) = s_mat(1, 2)
   s_mat(1, 3) = real(es23-2.0_ki*mT**2, ki_sam)
   s_mat(3, 1) = s_mat(1, 3)
   s_mat(1, 4) = real(es45-2.0_ki*mT**2, ki_sam)
   s_mat(4, 1) = s_mat(1, 4)
   s_mat(2, 2) = real(-2.0_ki*mT**2, ki_sam)
   s_mat(2, 3) = real(-2.0_ki*mT**2, ki_sam)
   s_mat(3, 2) = s_mat(2, 3)
   s_mat(2, 4) = real(es12-2.0_ki*mT**2, ki_sam)
   s_mat(4, 2) = s_mat(2, 4)
   s_mat(3, 3) = real(-2.0_ki*mT**2, ki_sam)
   s_mat(3, 4) = real(-2.0_ki*mT**2, ki_sam)
   s_mat(4, 3) = s_mat(3, 4)
   s_mat(4, 4) = real(-2.0_ki*mT**2, ki_sam)
   !-----------#] initialize invariants:

   if(samurai_verbosity > 0) then
      write(samurai_out,*) "[golem-2.0] numetens_group4"
      write(samurai_out,*) "[golem-2.0] epspow=", epspow
   end if
   call samurai_rm(numetens_group4, tot, totr, Vi, msq, 4, &
      & effective_group_rank, samurai_istop, scale2, ok)
   !-----------#[ deallocate invariants:
   deallocate(s_mat)
   !-----------#] deallocate invariants:
end subroutine reduce_numetens_group4
!-----#] subroutine reduce_numetens_group4:
!-----#[ function numetens_group5:
function     numetens_group5(icut, Q, mu2) result(num)
   use tens_rec
   use p0_gg_hepem_kinematics, only: k1, k2, k3, k4, k5
   use p0_gg_hepem_model
   implicit none
   integer, intent(in) :: icut
   complex(ki_sam), dimension(4), intent(in) :: Q
   complex(ki_sam), intent(in) :: mu2
   complex(ki_sam) :: num

   logical, dimension(0:2-1) :: nonzero
   complex(ki_gol), dimension(0:3) :: Qg
   real(ki_gol), dimension(0:3) :: R
   complex(ki_gol) :: Q2
   complex(ki_sam) :: diag, denom1, denom2, denom3, denom4

   nonzero(:) = .true.
   Qg(0) = Q(4)
   Qg(1:3) = Q(1:3)
   Q2 = Qg(0)*Qg(0) - Qg(1)*Qg(1) - Qg(2)*Qg(2) - Qg(3)*Qg(3) - mu2

   select case(icut)
   case(0)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      R = real(-k3-k5-k4, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mT*mT
      R = real(-k2, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mT*mT
      denom4 = Q2 - mT*mT
   case(10)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k2, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mT*mT
      denom4 = Q2 - mT*mT
   case(20)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      R = real(-k3-k5-k4, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mT*mT
      denom3 = 0.0_ki
      denom4 = Q2 - mT*mT
   case(210)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = Q2 - mT*mT
   case(30)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      R = real(-k3-k5-k4, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mT*mT
      R = real(-k2, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mT*mT
      denom4 = 0.0_ki
   case(310)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k2, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mT*mT
      denom4 = 0.0_ki
   case(320)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      R = real(-k3-k5-k4, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mT*mT
      denom3 = 0.0_ki
      denom4 = 0.0_ki
   case(3210)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
   case default
      R = real(-k5-k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mT*mT
      R = real(-k3-k5-k4, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mT*mT
      R = real(-k2, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mT*mT
      denom4 = Q2 - mT*mT
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 23:
   if(nonzero(0)) then
      diag = ctenseval4(Qg, coeffs_group5%coeffs_23)
      num = num + diag
   end if
   !-------#] Diagram 23:
   !-------#[ Diagram 59:
   if(nonzero(1)) then
      diag = ctenseval3(Qg, coeffs_group5%coeffs_59)
      diag = diag * denom1
      num = num + diag
   end if
   !-------#] Diagram 59:
end function numetens_group5
!-----#] function numetens_group5:
!-----#[ subroutine reduce_numetens_group5:
subroutine     reduce_numetens_group5(scale2,tot,totr,ok)
   use msamurai, only: samurai_rm, samurai_cm
   use madds, only: s_mat
   use options, only: samurai_out => iout
   use p0_gg_hepem_config, only: samurai_group_numerators, &
      samurai_istop, samurai_verbosity
   use p0_gg_hepem_kinematics
   use p0_gg_hepem_model
   use p0_gg_hepem_globalsl1, only: epspow
   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   integer, parameter :: effective_group_rank = 4
   real(ki_sam), dimension(4) :: msq
   real(ki_sam), dimension(4,4) :: Vi
   msq(1) = real(mT*mT, ki)
   Vi(1,(/4,1,2,3/)) = real(-k5-k4, ki_sam)
   msq(2) = real(mT*mT, ki)
   Vi(2,(/4,1,2,3/)) = real(-k3-k5-k4, ki_sam)
   msq(3) = real(mT*mT, ki)
   Vi(3,(/4,1,2,3/)) = real(-k2, ki_sam)
   msq(4) = real(mT*mT, ki)
   Vi(4,(/4,1,2,3/)) = real(0, ki_sam)
   !-----------#[ initialize invariants:
   allocate(s_mat(4, 4))
   s_mat(1, 1) = real(-2.0_ki*mT**2, ki_sam)
   s_mat(1, 2) = real(mH**2-2.0_ki*mT**2, ki_sam)
   s_mat(2, 1) = s_mat(1, 2)
   s_mat(1, 3) = real(mH**2-2.0_ki*mT**2+es45-es12-es23, ki_sam)
   s_mat(3, 1) = s_mat(1, 3)
   s_mat(1, 4) = real(es45-2.0_ki*mT**2, ki_sam)
   s_mat(4, 1) = s_mat(1, 4)
   s_mat(2, 2) = real(-2.0_ki*mT**2, ki_sam)
   s_mat(2, 3) = real(-2.0_ki*mT**2, ki_sam)
   s_mat(3, 2) = s_mat(2, 3)
   s_mat(2, 4) = real(es12-2.0_ki*mT**2, ki_sam)
   s_mat(4, 2) = s_mat(2, 4)
   s_mat(3, 3) = real(-2.0_ki*mT**2, ki_sam)
   s_mat(3, 4) = real(-2.0_ki*mT**2, ki_sam)
   s_mat(4, 3) = s_mat(3, 4)
   s_mat(4, 4) = real(-2.0_ki*mT**2, ki_sam)
   !-----------#] initialize invariants:

   if(samurai_verbosity > 0) then
      write(samurai_out,*) "[golem-2.0] numetens_group5"
      write(samurai_out,*) "[golem-2.0] epspow=", epspow
   end if
   call samurai_rm(numetens_group5, tot, totr, Vi, msq, 4, &
      & effective_group_rank, samurai_istop, scale2, ok)
   !-----------#[ deallocate invariants:
   deallocate(s_mat)
   !-----------#] deallocate invariants:
end subroutine reduce_numetens_group5
!-----#] subroutine reduce_numetens_group5:
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
end module p0_gg_hepem_groups
