module     p0_gg_hhg_groups
   use precision_golem, only: ki_gol => ki
   use tens_rec
   use p0_gg_hhg_config, only: ki 
   implicit none
   save

   private
!---#[ tensor coefficients for golem95:
   !-----#[ tensor coefficients group 0:
   type tensrec_info_group0
      type(coeff_type_5) :: coeffs_65
   end type

   public :: tensrec_info_group0
   !-----#] tensor coefficients group 0:
   !-----#[ tensor coefficients group 1:
   type tensrec_info_group1
      type(coeff_type_4) :: coeffs_25
      type(coeff_type_5) :: coeffs_55
   end type

   public :: tensrec_info_group1
   !-----#] tensor coefficients group 1:
   !-----#[ tensor coefficients group 2:
   type tensrec_info_group2
      type(coeff_type_5) :: coeffs_63
   end type

   public :: tensrec_info_group2
   !-----#] tensor coefficients group 2:
   !-----#[ tensor coefficients group 3:
   type tensrec_info_group3
      type(coeff_type_4) :: coeffs_19
      type(coeff_type_5) :: coeffs_59
   end type

   public :: tensrec_info_group3
   !-----#] tensor coefficients group 3:
   !-----#[ tensor coefficients group 4:
   type tensrec_info_group4
      type(coeff_type_3) :: coeffs_4
      type(coeff_type_3) :: coeffs_6
      type(coeff_type_4) :: coeffs_15
      type(coeff_type_4) :: coeffs_21
      type(coeff_type_4) :: coeffs_31
      type(coeff_type_5) :: coeffs_51
   end type

   public :: tensrec_info_group4
   !-----#] tensor coefficients group 4:
   !-----#[ tensor coefficients group 5:
   type tensrec_info_group5
      type(coeff_type_4) :: coeffs_17
      type(coeff_type_5) :: coeffs_47
   end type

   public :: tensrec_info_group5
   !-----#] tensor coefficients group 5:
   !-----#[ tensor coefficients group 6:
   type tensrec_info_group6
      type(coeff_type_3) :: coeffs_8
      type(coeff_type_4) :: coeffs_23
      type(coeff_type_4) :: coeffs_27
      type(coeff_type_4) :: coeffs_35
      type(coeff_type_5) :: coeffs_61
   end type

   public :: tensrec_info_group6
   !-----#] tensor coefficients group 6:
   !-----#[ tensor coefficients group 7:
   type tensrec_info_group7
      type(coeff_type_5) :: coeffs_57
   end type

   public :: tensrec_info_group7
   !-----#] tensor coefficients group 7:
   !-----#[ tensor coefficients group 8:
   type tensrec_info_group8
      type(coeff_type_5) :: coeffs_53
   end type

   public :: tensrec_info_group8
   !-----#] tensor coefficients group 8:
   !-----#[ tensor coefficients group 9:
   type tensrec_info_group9
      type(coeff_type_5) :: coeffs_43
   end type

   public :: tensrec_info_group9
   !-----#] tensor coefficients group 9:
   !-----#[ tensor coefficients group 10:
   type tensrec_info_group10
      type(coeff_type_4) :: coeffs_13
      type(coeff_type_4) :: coeffs_29
      type(coeff_type_4) :: coeffs_33
      type(coeff_type_5) :: coeffs_49
   end type

   public :: tensrec_info_group10
   !-----#] tensor coefficients group 10:
   !-----#[ tensor coefficients group 11:
   type tensrec_info_group11
      type(coeff_type_5) :: coeffs_45
   end type

   public :: tensrec_info_group11
   !-----#] tensor coefficients group 11:
!---#] tensor coefficients for golem95:
   integer :: prev_ls = -1

   interface contract_golem95
      module procedure contract_tensor_coefficients_group_0
      module procedure contract_tensor_coefficients_group_1
      module procedure contract_tensor_coefficients_group_2
      module procedure contract_tensor_coefficients_group_3
      module procedure contract_tensor_coefficients_group_4
      module procedure contract_tensor_coefficients_group_5
      module procedure contract_tensor_coefficients_group_6
      module procedure contract_tensor_coefficients_group_7
      module procedure contract_tensor_coefficients_group_8
      module procedure contract_tensor_coefficients_group_9
      module procedure contract_tensor_coefficients_group_10
      module procedure contract_tensor_coefficients_group_11
   end interface

   public :: contract_golem95
   public :: tear_down_golem95
   public :: ninja_exit
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
   use form_factor_5p, only: a50
   use form_factor_type, only: form_factor, operator(+), operator(-)
   use p0_gg_hhg_config, only: debug_nlo_diagrams, logfile
   use p0_gg_hhg_kinematics, only: k1, k2, k3, k4, k5, es45, es12, es3, es51, es23, es4, es34
   use p0_gg_hhg_model
   implicit none
   type(tensrec_info_group0), intent(in) :: coeffs
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
   s_mat(1,1)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(1,2)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(2,1)=s_mat(1,2)
   s_mat(1,3)=real(-es12-2.0_ki*mT**2+es34-es51, ki_gol)
   s_mat(3,1)=s_mat(1,3)
   s_mat(1,4)=real(es23+mH**2-2.0_ki*mT**2-es45-es51, ki_gol)
   s_mat(4,1)=s_mat(1,4)
   s_mat(1,5)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(5,1)=s_mat(1,5)
   s_mat(2,2)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(2,3)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(3,2)=s_mat(2,3)
   s_mat(2,4)=real(es23-2.0_ki*mT**2, ki_gol)
   s_mat(4,2)=s_mat(2,4)
   s_mat(2,5)=real(-2.0_ki*mT**2+es51, ki_gol)
   s_mat(5,2)=s_mat(2,5)
   s_mat(3,3)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(3,4)=real(mH**2-2.0_ki*mT**2, ki_gol)
   s_mat(4,3)=s_mat(3,4)
   s_mat(3,5)=real(es34-2.0_ki*mT**2, ki_gol)
   s_mat(5,3)=s_mat(3,5)
   s_mat(4,4)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(4,5)=real(mH**2-2.0_ki*mT**2, ki_gol)
   s_mat(5,4)=s_mat(4,5)
   s_mat(5,5)=real(-2.0_ki*mT**2, ki_gol)
   call preparesmatrix()
   rmomenta(1,:) = real(-k2+k5, ki_gol)
   rmomenta(2,:) = real(-k2, ki_gol)
   rmomenta(3,:) = 0.0_ki_gol
   rmomenta(4,:) = real(-k3, ki_gol)
   rmomenta(5,:) = real(-k3-k4, ki_gol)
   !-------#[ Diagram 65:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='65'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = 0

      amp = + (contract5_5(coeffs%coeffs_65, rmomenta, b_set))
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
   !-------#] Diagram 65:

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
   use form_factor_5p, only: a50
   use form_factor_type, only: form_factor, operator(+), operator(-)
   use p0_gg_hhg_config, only: debug_nlo_diagrams, logfile
   use p0_gg_hhg_kinematics, only: k1, k2, k3, k4, k5, es45, es12, es3, es51, es23, es4, es34
   use p0_gg_hhg_model
   implicit none
   type(tensrec_info_group1), intent(in) :: coeffs
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
   s_mat(1,1)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(1,2)=real(mH**2-2.0_ki*mT**2, ki_gol)
   s_mat(2,1)=s_mat(1,2)
   s_mat(1,3)=real(es45-2.0_ki*mT**2, ki_gol)
   s_mat(3,1)=s_mat(1,3)
   s_mat(1,4)=real(mH**2-2.0_ki*mT**2+es45-es12-es23, ki_gol)
   s_mat(4,1)=s_mat(1,4)
   s_mat(1,5)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(5,1)=s_mat(1,5)
   s_mat(2,2)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(2,3)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(3,2)=s_mat(2,3)
   s_mat(2,4)=real(-es12-2.0_ki*mT**2+es34-es51, ki_gol)
   s_mat(4,2)=s_mat(2,4)
   s_mat(2,5)=real(es23+mH**2-2.0_ki*mT**2-es45-es51, ki_gol)
   s_mat(5,2)=s_mat(2,5)
   s_mat(3,3)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(3,4)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(4,3)=s_mat(3,4)
   s_mat(3,5)=real(es23-2.0_ki*mT**2, ki_gol)
   s_mat(5,3)=s_mat(3,5)
   s_mat(4,4)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(4,5)=real(mH**2-2.0_ki*mT**2, ki_gol)
   s_mat(5,4)=s_mat(4,5)
   s_mat(5,5)=real(-2.0_ki*mT**2, ki_gol)
   call preparesmatrix()
   rmomenta(1,:) = real(-k2+k5+k4, ki_gol)
   rmomenta(2,:) = real(-k2+k5, ki_gol)
   rmomenta(3,:) = real(-k2, ki_gol)
   rmomenta(4,:) = 0.0_ki_gol
   rmomenta(5,:) = real(-k3, ki_gol)
   !-------#[ Diagram 25:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='25'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = packb((/3/))

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
   !-------#[ Diagram 55:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='55'>"
         dbg_amp = amp
      end if
      b_set = 0

      amp = amp + (contract5_5(coeffs%coeffs_55, rmomenta, b_set))
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
   !-------#] Diagram 55:

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
   use form_factor_5p, only: a50
   use form_factor_type, only: form_factor, operator(+), operator(-)
   use p0_gg_hhg_config, only: debug_nlo_diagrams, logfile
   use p0_gg_hhg_kinematics, only: k1, k2, k3, k4, k5, es45, es12, es3, es51, es23, es4, es34
   use p0_gg_hhg_model
   implicit none
   type(tensrec_info_group2), intent(in) :: coeffs
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
   s_mat(1,1)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(1,2)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(2,1)=s_mat(1,2)
   s_mat(1,3)=real(es12+2.0_ki*mH**2-es34-2.0_ki*mT**2-es45, ki_gol)
   s_mat(3,1)=s_mat(1,3)
   s_mat(1,4)=real(es23+mH**2-2.0_ki*mT**2-es45-es51, ki_gol)
   s_mat(4,1)=s_mat(1,4)
   s_mat(1,5)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(5,1)=s_mat(1,5)
   s_mat(2,2)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(2,3)=real(mH**2-2.0_ki*mT**2, ki_gol)
   s_mat(3,2)=s_mat(2,3)
   s_mat(2,4)=real(es23-2.0_ki*mT**2, ki_gol)
   s_mat(4,2)=s_mat(2,4)
   s_mat(2,5)=real(-2.0_ki*mT**2+es51, ki_gol)
   s_mat(5,2)=s_mat(2,5)
   s_mat(3,3)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(3,4)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(4,3)=s_mat(3,4)
   s_mat(3,5)=real(-2.0_ki*mT**2+2.0_ki*mH**2-es23+es51-es34, ki_gol)
   s_mat(5,3)=s_mat(3,5)
   s_mat(4,4)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(4,5)=real(mH**2-2.0_ki*mT**2, ki_gol)
   s_mat(5,4)=s_mat(4,5)
   s_mat(5,5)=real(-2.0_ki*mT**2, ki_gol)
   call preparesmatrix()
   rmomenta(1,:) = real(-k3-k5, ki_gol)
   rmomenta(2,:) = real(-k3, ki_gol)
   rmomenta(3,:) = 0.0_ki_gol
   rmomenta(4,:) = real(-k2, ki_gol)
   rmomenta(5,:) = real(-k2+k4, ki_gol)
   !-------#[ Diagram 63:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='63'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = 0

      amp = + (contract5_5(coeffs%coeffs_63, rmomenta, b_set))
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
   !-------#] Diagram 63:

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
   use p0_gg_hhg_config, only: debug_nlo_diagrams, logfile
   use p0_gg_hhg_kinematics, only: k1, k2, k3, k4, k5, es45, es12, es3, es51, es23, es4, es34
   use p0_gg_hhg_model
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
   s_mat(1,1)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(1,2)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(2,1)=s_mat(1,2)
   s_mat(1,3)=real(es45-2.0_ki*mT**2, ki_gol)
   s_mat(3,1)=s_mat(1,3)
   s_mat(1,4)=real(mH**2-2.0_ki*mT**2+es45-es12-es23, ki_gol)
   s_mat(4,1)=s_mat(1,4)
   s_mat(1,5)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(5,1)=s_mat(1,5)
   s_mat(2,2)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(2,3)=real(mH**2-2.0_ki*mT**2, ki_gol)
   s_mat(3,2)=s_mat(2,3)
   s_mat(2,4)=real(-2.0_ki*mT**2+2.0_ki*mH**2-es23+es51-es34, ki_gol)
   s_mat(4,2)=s_mat(2,4)
   s_mat(2,5)=real(-2.0_ki*mT**2+es51, ki_gol)
   s_mat(5,2)=s_mat(2,5)
   s_mat(3,3)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(3,4)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(4,3)=s_mat(3,4)
   s_mat(3,5)=real(es23-2.0_ki*mT**2, ki_gol)
   s_mat(5,3)=s_mat(3,5)
   s_mat(4,4)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(4,5)=real(mH**2-2.0_ki*mT**2, ki_gol)
   s_mat(5,4)=s_mat(4,5)
   s_mat(5,5)=real(-2.0_ki*mT**2, ki_gol)
   call preparesmatrix()
   rmomenta(1,:) = real(-k2+k5+k4, ki_gol)
   rmomenta(2,:) = real(-k2+k4, ki_gol)
   rmomenta(3,:) = real(-k2, ki_gol)
   rmomenta(4,:) = 0.0_ki_gol
   rmomenta(5,:) = real(-k3, ki_gol)
   !-------#[ Diagram 19:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='19'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = packb((/1/))

      amp = + (contract4_4(coeffs%coeffs_19, rmomenta, b_set))
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
   !-------#] Diagram 19:
   !-------#[ Diagram 59:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='59'>"
         dbg_amp = amp
      end if
      b_set = 0

      amp = amp + (contract5_5(coeffs%coeffs_59, rmomenta, b_set))
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
   use p0_gg_hhg_config, only: debug_nlo_diagrams, logfile
   use p0_gg_hhg_kinematics, only: k1, k2, k3, k4, k5, es45, es12, es3, es51, es23, es4, es34
   use p0_gg_hhg_model
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
   s_mat(1,1)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(1,2)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(2,1)=s_mat(1,2)
   s_mat(1,3)=real(es45-2.0_ki*mT**2, ki_gol)
   s_mat(3,1)=s_mat(1,3)
   s_mat(1,4)=real(es12-2.0_ki*mT**2, ki_gol)
   s_mat(4,1)=s_mat(1,4)
   s_mat(1,5)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(5,1)=s_mat(1,5)
   s_mat(2,2)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(2,3)=real(mH**2-2.0_ki*mT**2, ki_gol)
   s_mat(3,2)=s_mat(2,3)
   s_mat(2,4)=real(es34-2.0_ki*mT**2, ki_gol)
   s_mat(4,2)=s_mat(2,4)
   s_mat(2,5)=real(-2.0_ki*mT**2+es51, ki_gol)
   s_mat(5,2)=s_mat(2,5)
   s_mat(3,3)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(3,4)=real(mH**2-2.0_ki*mT**2, ki_gol)
   s_mat(4,3)=s_mat(3,4)
   s_mat(3,5)=real(es23-2.0_ki*mT**2, ki_gol)
   s_mat(5,3)=s_mat(3,5)
   s_mat(4,4)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(4,5)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(5,4)=s_mat(4,5)
   s_mat(5,5)=real(-2.0_ki*mT**2, ki_gol)
   call preparesmatrix()
   rmomenta(1,:) = real(-k3-k5-k4, ki_gol)
   rmomenta(2,:) = real(-k3-k4, ki_gol)
   rmomenta(3,:) = real(-k3, ki_gol)
   rmomenta(4,:) = 0.0_ki_gol
   rmomenta(5,:) = real(-k2, ki_gol)
   !-------#[ Diagram 4:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='4'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = packb((/3,5/))

      amp = + (contract3_3(coeffs%coeffs_4, rmomenta, b_set))
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

      amp = amp + (contract3_3(coeffs%coeffs_6, rmomenta, b_set))
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
   !-------#[ Diagram 15:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='15'>"
         dbg_amp = amp
      end if
      b_set = packb((/5/))

      amp = amp + (contract4_4(coeffs%coeffs_15, rmomenta, b_set))
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
   !-------#] Diagram 15:
   !-------#[ Diagram 21:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='21'>"
         dbg_amp = amp
      end if
      b_set = packb((/1/))

      amp = amp + (contract4_4(coeffs%coeffs_21, rmomenta, b_set))
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
   !-------#] Diagram 21:
   !-------#[ Diagram 31:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='31'>"
         dbg_amp = amp
      end if
      b_set = packb((/3/))

      amp = amp + (contract4_4(coeffs%coeffs_31, rmomenta, b_set))
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
   !-------#[ Diagram 51:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='51'>"
         dbg_amp = amp
      end if
      b_set = 0

      amp = amp + (contract5_5(coeffs%coeffs_51, rmomenta, b_set))
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
   !-------#] Diagram 51:

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
   use form_factor_5p, only: a50
   use form_factor_type, only: form_factor, operator(+), operator(-)
   use p0_gg_hhg_config, only: debug_nlo_diagrams, logfile
   use p0_gg_hhg_kinematics, only: k1, k2, k3, k4, k5, es45, es12, es3, es51, es23, es4, es34
   use p0_gg_hhg_model
   implicit none
   type(tensrec_info_group5), intent(in) :: coeffs
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
   s_mat(1,1)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(1,2)=real(mH**2-2.0_ki*mT**2, ki_gol)
   s_mat(2,1)=s_mat(1,2)
   s_mat(1,3)=real(es45-2.0_ki*mT**2, ki_gol)
   s_mat(3,1)=s_mat(1,3)
   s_mat(1,4)=real(es12-2.0_ki*mT**2, ki_gol)
   s_mat(4,1)=s_mat(1,4)
   s_mat(1,5)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(5,1)=s_mat(1,5)
   s_mat(2,2)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(2,3)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(3,2)=s_mat(2,3)
   s_mat(2,4)=real(es12+2.0_ki*mH**2-es34-2.0_ki*mT**2-es45, ki_gol)
   s_mat(4,2)=s_mat(2,4)
   s_mat(2,5)=real(es23+mH**2-2.0_ki*mT**2-es45-es51, ki_gol)
   s_mat(5,2)=s_mat(2,5)
   s_mat(3,3)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(3,4)=real(mH**2-2.0_ki*mT**2, ki_gol)
   s_mat(4,3)=s_mat(3,4)
   s_mat(3,5)=real(es23-2.0_ki*mT**2, ki_gol)
   s_mat(5,3)=s_mat(3,5)
   s_mat(4,4)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(4,5)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(5,4)=s_mat(4,5)
   s_mat(5,5)=real(-2.0_ki*mT**2, ki_gol)
   call preparesmatrix()
   rmomenta(1,:) = real(-k3-k5-k4, ki_gol)
   rmomenta(2,:) = real(-k3-k5, ki_gol)
   rmomenta(3,:) = real(-k3, ki_gol)
   rmomenta(4,:) = 0.0_ki_gol
   rmomenta(5,:) = real(-k2, ki_gol)
   !-------#[ Diagram 17:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='17'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = packb((/5/))

      amp = + (contract4_4(coeffs%coeffs_17, rmomenta, b_set))
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
   !-------#] Diagram 17:
   !-------#[ Diagram 47:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='47'>"
         dbg_amp = amp
      end if
      b_set = 0

      amp = amp + (contract5_5(coeffs%coeffs_47, rmomenta, b_set))
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

   100 format (A30,E24.16,A6,E24.16,A3)
end function contract_tensor_coefficients_group_5
!-----#] function contract_tensor_coefficients_group_5:
!-----#[ function contract_tensor_coefficients_group_6:
function     contract_tensor_coefficients_group_6(coeffs) result(amp)
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
   use p0_gg_hhg_config, only: debug_nlo_diagrams, logfile
   use p0_gg_hhg_kinematics, only: k1, k2, k3, k4, k5, es45, es12, es3, es51, es23, es4, es34
   use p0_gg_hhg_model
   implicit none
   type(tensrec_info_group6), intent(in) :: coeffs
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
   s_mat(1,1)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(1,2)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(2,1)=s_mat(1,2)
   s_mat(1,3)=real(-es12-2.0_ki*mT**2+es34-es51, ki_gol)
   s_mat(3,1)=s_mat(1,3)
   s_mat(1,4)=real(mH**2-2.0_ki*mT**2+es45-es12-es23, ki_gol)
   s_mat(4,1)=s_mat(1,4)
   s_mat(1,5)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(5,1)=s_mat(1,5)
   s_mat(2,2)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(2,3)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(3,2)=s_mat(2,3)
   s_mat(2,4)=real(-2.0_ki*mT**2+2.0_ki*mH**2-es23+es51-es34, ki_gol)
   s_mat(4,2)=s_mat(2,4)
   s_mat(2,5)=real(-2.0_ki*mT**2+es51, ki_gol)
   s_mat(5,2)=s_mat(2,5)
   s_mat(3,3)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(3,4)=real(mH**2-2.0_ki*mT**2, ki_gol)
   s_mat(4,3)=s_mat(3,4)
   s_mat(3,5)=real(es34-2.0_ki*mT**2, ki_gol)
   s_mat(5,3)=s_mat(3,5)
   s_mat(4,4)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(4,5)=real(mH**2-2.0_ki*mT**2, ki_gol)
   s_mat(5,4)=s_mat(4,5)
   s_mat(5,5)=real(-2.0_ki*mT**2, ki_gol)
   call preparesmatrix()
   rmomenta(1,:) = real(-k2+k5, ki_gol)
   rmomenta(2,:) = real(-k2, ki_gol)
   rmomenta(3,:) = 0.0_ki_gol
   rmomenta(4,:) = real(-k4, ki_gol)
   rmomenta(5,:) = real(-k3-k4, ki_gol)
   !-------#[ Diagram 8:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='8'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = packb((/2,4/))

      amp = + (contract3_3(coeffs%coeffs_8, rmomenta, b_set))
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
   !-------#[ Diagram 23:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='23'>"
         dbg_amp = amp
      end if
      b_set = packb((/1/))

      amp = amp + (contract4_4(coeffs%coeffs_23, rmomenta, b_set))
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
   !-------#[ Diagram 27:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='27'>"
         dbg_amp = amp
      end if
      b_set = packb((/2/))

      amp = amp + (contract4_4(coeffs%coeffs_27, rmomenta, b_set))
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
   !-------#[ Diagram 35:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='35'>"
         dbg_amp = amp
      end if
      b_set = packb((/4/))

      amp = amp + (contract4_4(coeffs%coeffs_35, rmomenta, b_set))
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
   !-------#[ Diagram 61:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='61'>"
         dbg_amp = amp
      end if
      b_set = 0

      amp = amp + (contract5_5(coeffs%coeffs_61, rmomenta, b_set))
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

   100 format (A30,E24.16,A6,E24.16,A3)
end function contract_tensor_coefficients_group_6
!-----#] function contract_tensor_coefficients_group_6:
!-----#[ function contract_tensor_coefficients_group_7:
function     contract_tensor_coefficients_group_7(coeffs) result(amp)
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
   use p0_gg_hhg_config, only: debug_nlo_diagrams, logfile
   use p0_gg_hhg_kinematics, only: k1, k2, k3, k4, k5, es45, es12, es3, es51, es23, es4, es34
   use p0_gg_hhg_model
   implicit none
   type(tensrec_info_group7), intent(in) :: coeffs
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
   s_mat(1,1)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(1,2)=real(mH**2-2.0_ki*mT**2, ki_gol)
   s_mat(2,1)=s_mat(1,2)
   s_mat(1,3)=real(-2.0_ki*mT**2+2.0_ki*mH**2-es23+es51-es34, ki_gol)
   s_mat(3,1)=s_mat(1,3)
   s_mat(1,4)=real(mH**2-2.0_ki*mT**2+es45-es12-es23, ki_gol)
   s_mat(4,1)=s_mat(1,4)
   s_mat(1,5)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(5,1)=s_mat(1,5)
   s_mat(2,2)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(2,3)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(3,2)=s_mat(2,3)
   s_mat(2,4)=real(-es12-2.0_ki*mT**2+es34-es51, ki_gol)
   s_mat(4,2)=s_mat(2,4)
   s_mat(2,5)=real(es23+mH**2-2.0_ki*mT**2-es45-es51, ki_gol)
   s_mat(5,2)=s_mat(2,5)
   s_mat(3,3)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(3,4)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(4,3)=s_mat(3,4)
   s_mat(3,5)=real(es12+2.0_ki*mH**2-es34-2.0_ki*mT**2-es45, ki_gol)
   s_mat(5,3)=s_mat(3,5)
   s_mat(4,4)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(4,5)=real(mH**2-2.0_ki*mT**2, ki_gol)
   s_mat(5,4)=s_mat(4,5)
   s_mat(5,5)=real(-2.0_ki*mT**2, ki_gol)
   call preparesmatrix()
   rmomenta(1,:) = real(-k4, ki_gol)
   rmomenta(2,:) = 0.0_ki_gol
   rmomenta(3,:) = real(-k2, ki_gol)
   rmomenta(4,:) = real(-k2+k5, ki_gol)
   rmomenta(5,:) = real(k3-k2+k5, ki_gol)
   !-------#[ Diagram 57:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='57'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = 0

      amp = + (contract5_5(coeffs%coeffs_57, rmomenta, b_set))
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
   !-------#] Diagram 57:

   100 format (A30,E24.16,A6,E24.16,A3)
end function contract_tensor_coefficients_group_7
!-----#] function contract_tensor_coefficients_group_7:
!-----#[ function contract_tensor_coefficients_group_8:
function     contract_tensor_coefficients_group_8(coeffs) result(amp)
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
   use p0_gg_hhg_config, only: debug_nlo_diagrams, logfile
   use p0_gg_hhg_kinematics, only: k1, k2, k3, k4, k5, es45, es12, es3, es51, es23, es4, es34
   use p0_gg_hhg_model
   implicit none
   type(tensrec_info_group8), intent(in) :: coeffs
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
   s_mat(1,1)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(1,2)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(2,1)=s_mat(1,2)
   s_mat(1,3)=real(es12+2.0_ki*mH**2-es34-2.0_ki*mT**2-es45, ki_gol)
   s_mat(3,1)=s_mat(1,3)
   s_mat(1,4)=real(es12-2.0_ki*mT**2, ki_gol)
   s_mat(4,1)=s_mat(1,4)
   s_mat(1,5)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(5,1)=s_mat(1,5)
   s_mat(2,2)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(2,3)=real(mH**2-2.0_ki*mT**2, ki_gol)
   s_mat(3,2)=s_mat(2,3)
   s_mat(2,4)=real(es34-2.0_ki*mT**2, ki_gol)
   s_mat(4,2)=s_mat(2,4)
   s_mat(2,5)=real(-2.0_ki*mT**2+es51, ki_gol)
   s_mat(5,2)=s_mat(2,5)
   s_mat(3,3)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(3,4)=real(mH**2-2.0_ki*mT**2, ki_gol)
   s_mat(4,3)=s_mat(3,4)
   s_mat(3,5)=real(-2.0_ki*mT**2+2.0_ki*mH**2-es23+es51-es34, ki_gol)
   s_mat(5,3)=s_mat(3,5)
   s_mat(4,4)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(4,5)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(5,4)=s_mat(4,5)
   s_mat(5,5)=real(-2.0_ki*mT**2, ki_gol)
   call preparesmatrix()
   rmomenta(1,:) = real(-k3-k5-k4, ki_gol)
   rmomenta(2,:) = real(-k3-k4, ki_gol)
   rmomenta(3,:) = real(-k4, ki_gol)
   rmomenta(4,:) = 0.0_ki_gol
   rmomenta(5,:) = real(-k2, ki_gol)
   !-------#[ Diagram 53:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='53'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = 0

      amp = + (contract5_5(coeffs%coeffs_53, rmomenta, b_set))
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
   !-------#] Diagram 53:

   100 format (A30,E24.16,A6,E24.16,A3)
end function contract_tensor_coefficients_group_8
!-----#] function contract_tensor_coefficients_group_8:
!-----#[ function contract_tensor_coefficients_group_9:
function     contract_tensor_coefficients_group_9(coeffs) result(amp)
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
   use p0_gg_hhg_config, only: debug_nlo_diagrams, logfile
   use p0_gg_hhg_kinematics, only: k1, k2, k3, k4, k5, es45, es12, es3, es51, es23, es4, es34
   use p0_gg_hhg_model
   implicit none
   type(tensrec_info_group9), intent(in) :: coeffs
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
   s_mat(1,1)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(1,2)=real(mH**2-2.0_ki*mT**2, ki_gol)
   s_mat(2,1)=s_mat(1,2)
   s_mat(1,3)=real(es12+2.0_ki*mH**2-es34-2.0_ki*mT**2-es45, ki_gol)
   s_mat(3,1)=s_mat(1,3)
   s_mat(1,4)=real(es12-2.0_ki*mT**2, ki_gol)
   s_mat(4,1)=s_mat(1,4)
   s_mat(1,5)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(5,1)=s_mat(1,5)
   s_mat(2,2)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(2,3)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(3,2)=s_mat(2,3)
   s_mat(2,4)=real(es45-2.0_ki*mT**2, ki_gol)
   s_mat(4,2)=s_mat(2,4)
   s_mat(2,5)=real(mH**2-2.0_ki*mT**2+es45-es12-es23, ki_gol)
   s_mat(5,2)=s_mat(2,5)
   s_mat(3,3)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(3,4)=real(mH**2-2.0_ki*mT**2, ki_gol)
   s_mat(4,3)=s_mat(3,4)
   s_mat(3,5)=real(-2.0_ki*mT**2+2.0_ki*mH**2-es23+es51-es34, ki_gol)
   s_mat(5,3)=s_mat(3,5)
   s_mat(4,4)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(4,5)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(5,4)=s_mat(4,5)
   s_mat(5,5)=real(-2.0_ki*mT**2, ki_gol)
   call preparesmatrix()
   rmomenta(1,:) = real(-k3-k5-k4, ki_gol)
   rmomenta(2,:) = real(-k5-k4, ki_gol)
   rmomenta(3,:) = real(-k4, ki_gol)
   rmomenta(4,:) = 0.0_ki_gol
   rmomenta(5,:) = real(-k2, ki_gol)
   !-------#[ Diagram 43:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='43'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = 0

      amp = + (contract5_5(coeffs%coeffs_43, rmomenta, b_set))
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
   !-------#] Diagram 43:

   100 format (A30,E24.16,A6,E24.16,A3)
end function contract_tensor_coefficients_group_9
!-----#] function contract_tensor_coefficients_group_9:
!-----#[ function contract_tensor_coefficients_group_10:
function     contract_tensor_coefficients_group_10(coeffs) result(amp)
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
   use p0_gg_hhg_config, only: debug_nlo_diagrams, logfile
   use p0_gg_hhg_kinematics, only: k1, k2, k3, k4, k5, es45, es12, es3, es51, es23, es4, es34
   use p0_gg_hhg_model
   implicit none
   type(tensrec_info_group10), intent(in) :: coeffs
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
   s_mat(1,1)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(1,2)=real(mH**2-2.0_ki*mT**2, ki_gol)
   s_mat(2,1)=s_mat(1,2)
   s_mat(1,3)=real(es34-2.0_ki*mT**2, ki_gol)
   s_mat(3,1)=s_mat(1,3)
   s_mat(1,4)=real(es12-2.0_ki*mT**2, ki_gol)
   s_mat(4,1)=s_mat(1,4)
   s_mat(1,5)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(5,1)=s_mat(1,5)
   s_mat(2,2)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(2,3)=real(mH**2-2.0_ki*mT**2, ki_gol)
   s_mat(3,2)=s_mat(2,3)
   s_mat(2,4)=real(es12+2.0_ki*mH**2-es34-2.0_ki*mT**2-es45, ki_gol)
   s_mat(4,2)=s_mat(2,4)
   s_mat(2,5)=real(es23+mH**2-2.0_ki*mT**2-es45-es51, ki_gol)
   s_mat(5,2)=s_mat(2,5)
   s_mat(3,3)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(3,4)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(4,3)=s_mat(3,4)
   s_mat(3,5)=real(-es12-2.0_ki*mT**2+es34-es51, ki_gol)
   s_mat(5,3)=s_mat(3,5)
   s_mat(4,4)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(4,5)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(5,4)=s_mat(4,5)
   s_mat(5,5)=real(-2.0_ki*mT**2, ki_gol)
   call preparesmatrix()
   rmomenta(1,:) = real(-k3-k5-k4, ki_gol)
   rmomenta(2,:) = real(-k3-k5, ki_gol)
   rmomenta(3,:) = real(-k5, ki_gol)
   rmomenta(4,:) = 0.0_ki_gol
   rmomenta(5,:) = real(-k2, ki_gol)
   !-------#[ Diagram 13:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='13'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = packb((/5/))

      amp = + (contract4_4(coeffs%coeffs_13, rmomenta, b_set))
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
   !-------#] Diagram 13:
   !-------#[ Diagram 29:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='29'>"
         dbg_amp = amp
      end if
      b_set = packb((/4/))

      amp = amp + (contract4_4(coeffs%coeffs_29, rmomenta, b_set))
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
   !-------#[ Diagram 33:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='33'>"
         dbg_amp = amp
      end if
      b_set = packb((/2/))

      amp = amp + (contract4_4(coeffs%coeffs_33, rmomenta, b_set))
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
   !-------#[ Diagram 49:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='49'>"
         dbg_amp = amp
      end if
      b_set = 0

      amp = amp + (contract5_5(coeffs%coeffs_49, rmomenta, b_set))
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

   100 format (A30,E24.16,A6,E24.16,A3)
end function contract_tensor_coefficients_group_10
!-----#] function contract_tensor_coefficients_group_10:
!-----#[ function contract_tensor_coefficients_group_11:
function     contract_tensor_coefficients_group_11(coeffs) result(amp)
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
   use p0_gg_hhg_config, only: debug_nlo_diagrams, logfile
   use p0_gg_hhg_kinematics, only: k1, k2, k3, k4, k5, es45, es12, es3, es51, es23, es4, es34
   use p0_gg_hhg_model
   implicit none
   type(tensrec_info_group11), intent(in) :: coeffs
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
   s_mat(1,1)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(1,2)=real(mH**2-2.0_ki*mT**2, ki_gol)
   s_mat(2,1)=s_mat(1,2)
   s_mat(1,3)=real(es34-2.0_ki*mT**2, ki_gol)
   s_mat(3,1)=s_mat(1,3)
   s_mat(1,4)=real(es12-2.0_ki*mT**2, ki_gol)
   s_mat(4,1)=s_mat(1,4)
   s_mat(1,5)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(5,1)=s_mat(1,5)
   s_mat(2,2)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(2,3)=real(mH**2-2.0_ki*mT**2, ki_gol)
   s_mat(3,2)=s_mat(2,3)
   s_mat(2,4)=real(es45-2.0_ki*mT**2, ki_gol)
   s_mat(4,2)=s_mat(2,4)
   s_mat(2,5)=real(mH**2-2.0_ki*mT**2+es45-es12-es23, ki_gol)
   s_mat(5,2)=s_mat(2,5)
   s_mat(3,3)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(3,4)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(4,3)=s_mat(3,4)
   s_mat(3,5)=real(-es12-2.0_ki*mT**2+es34-es51, ki_gol)
   s_mat(5,3)=s_mat(3,5)
   s_mat(4,4)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(4,5)=real(-2.0_ki*mT**2, ki_gol)
   s_mat(5,4)=s_mat(4,5)
   s_mat(5,5)=real(-2.0_ki*mT**2, ki_gol)
   call preparesmatrix()
   rmomenta(1,:) = real(-k3-k5-k4, ki_gol)
   rmomenta(2,:) = real(-k5-k4, ki_gol)
   rmomenta(3,:) = real(-k5, ki_gol)
   rmomenta(4,:) = 0.0_ki_gol
   rmomenta(5,:) = real(-k2, ki_gol)
   !-------#[ Diagram 45:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='45'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = 0

      amp = + (contract5_5(coeffs%coeffs_45, rmomenta, b_set))
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
   !-------#] Diagram 45:

   100 format (A30,E24.16,A6,E24.16,A3)
end function contract_tensor_coefficients_group_11
!-----#] function contract_tensor_coefficients_group_11:
!---#] contract tensor coefficients golem95:
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
!---#[ subroutine ninja_exit:
subroutine ninja_exit()
  use ninjago_module, only: ninja_clear_integral_cache
  implicit none
  !------#[ call ninja_clear_integral_cache():
  call ninja_clear_integral_cache()
  !------#] call ninja_clear_integral_cache():
end subroutine ninja_exit
!---#] subroutine ninja_exit:
end module p0_gg_hhg_groups
