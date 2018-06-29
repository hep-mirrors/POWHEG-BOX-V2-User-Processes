module     p4_ubaru_epnemumnmubarg_groups
   use precision_golem, only: ki_gol => ki
   use tens_rec
   use p4_ubaru_epnemumnmubarg_config, only: ki 
   implicit none
   save

   private
!---#[ tensor coefficients for golem95:
   !-----#[ tensor coefficients group 0:
   type tensrec_info_group0
      type(coeff_type_3) :: coeffs_33
      type(coeff_type_2) :: coeffs_57
      type(coeff_type_2) :: coeffs_177
      type(coeff_type_1) :: coeffs_205
      type(coeff_type_2) :: coeffs_281
      type(coeff_type_1) :: coeffs_465
      type(coeff_type_4) :: coeffs_485
      type(coeff_type_2) :: coeffs_489
      type(coeff_type_3) :: coeffs_573
      type(coeff_type_3) :: coeffs_595
      type(coeff_type_3) :: coeffs_603
      type(coeff_type_2) :: coeffs_971
   end type

   public :: tensrec_info_group0
   !-----#] tensor coefficients group 0:
   !-----#[ tensor coefficients group 1:
   type tensrec_info_group1
      type(coeff_type_3) :: coeffs_37
      type(coeff_type_2) :: coeffs_61
      type(coeff_type_2) :: coeffs_191
      type(coeff_type_1) :: coeffs_219
      type(coeff_type_2) :: coeffs_285
      type(coeff_type_1) :: coeffs_469
      type(coeff_type_4) :: coeffs_481
      type(coeff_type_2) :: coeffs_517
      type(coeff_type_3) :: coeffs_559
      type(coeff_type_3) :: coeffs_607
   end type

   public :: tensrec_info_group1
   !-----#] tensor coefficients group 1:
   !-----#[ tensor coefficients group 2:
   type tensrec_info_group2
      type(coeff_type_4) :: coeffs_473
      type(coeff_type_3) :: coeffs_587
      type(coeff_type_3) :: coeffs_591
   end type

   public :: tensrec_info_group2
   !-----#] tensor coefficients group 2:
   !-----#[ tensor coefficients group 3:
   type tensrec_info_group3
      type(coeff_type_4) :: coeffs_477
      type(coeff_type_3) :: coeffs_545
      type(coeff_type_3) :: coeffs_599
   end type

   public :: tensrec_info_group3
   !-----#] tensor coefficients group 3:
!---#] tensor coefficients for golem95:
   integer :: prev_ls = -1

   interface contract_golem95
      module procedure contract_tensor_coefficients_group_0
      module procedure contract_tensor_coefficients_group_1
      module procedure contract_tensor_coefficients_group_2
      module procedure contract_tensor_coefficients_group_3
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
   use p4_ubaru_epnemumnmubarg_config, only: debug_nlo_diagrams, logfile
   use p4_ubaru_epnemumnmubarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7, es234, es345, es12, es671, es567, es23, es123, &
   & es456, es712, es45, es56, es34, es71, es67
   use p4_ubaru_epnemumnmubarg_model
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
   s_mat(1,1)=real(0.0_ki, ki_gol)
   s_mat(1,2)=real(es56, ki_gol)
   s_mat(2,1)=s_mat(1,2)
   s_mat(1,3)=real(-es567+es56+es234-es71, ki_gol)
   s_mat(3,1)=s_mat(1,3)
   s_mat(1,4)=real(es234, ki_gol)
   s_mat(4,1)=s_mat(1,4)
   s_mat(1,5)=real(es34, ki_gol)
   s_mat(5,1)=s_mat(1,5)
   s_mat(2,2)=real(0.0_ki, ki_gol)
   s_mat(2,3)=real(0.0_ki, ki_gol)
   s_mat(3,2)=s_mat(2,3)
   s_mat(2,4)=real(es71, ki_gol)
   s_mat(4,2)=s_mat(2,4)
   s_mat(2,5)=real(es712, ki_gol)
   s_mat(5,2)=s_mat(2,5)
   s_mat(3,3)=real(0.0_ki, ki_gol)
   s_mat(3,4)=real(0.0_ki, ki_gol)
   s_mat(4,3)=s_mat(3,4)
   s_mat(3,5)=real(-es12-es71+es712, ki_gol)
   s_mat(5,3)=s_mat(3,5)
   s_mat(4,4)=real(0.0_ki, ki_gol)
   s_mat(4,5)=real(0.0_ki, ki_gol)
   s_mat(5,4)=s_mat(4,5)
   s_mat(5,5)=real(0.0_ki, ki_gol)
   call preparesmatrix()
   rmomenta(1,:) = real(k3-k2+k4, ki_gol)
   rmomenta(2,:) = real(k3-k2+k6+k5+k4, ki_gol)
   rmomenta(3,:) = real(-k7, ki_gol)
   rmomenta(4,:) = 0.0_ki_gol
   rmomenta(5,:) = real(-k2, ki_gol)
   !-------#[ Diagram 33:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='33'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = packb((/3/))

      amp = + (contract4_3(coeffs%coeffs_33, rmomenta, b_set))
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
   !-------#[ Diagram 57:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='57'>"
         dbg_amp = amp
      end if
      b_set = packb((/2,3/))

      amp = amp + (contract3_2(coeffs%coeffs_57, rmomenta, b_set))
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
   !-------#[ Diagram 177:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='177'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,3/))

      amp = amp + (contract3_2(coeffs%coeffs_177, rmomenta, b_set))
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
   !-------#] Diagram 177:
   !-------#[ Diagram 205:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='205'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,3,5/))

      amp = amp + (contract2_1(coeffs%coeffs_205, rmomenta, b_set))
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
   !-------#] Diagram 205:
   !-------#[ Diagram 281:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='281'>"
         dbg_amp = amp
      end if
      b_set = packb((/3,5/))

      amp = amp + (contract3_2(coeffs%coeffs_281, rmomenta, b_set))
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
   !-------#] Diagram 281:
   !-------#[ Diagram 465:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='465'>"
         dbg_amp = amp
      end if
      b_set = packb((/2,3,5/))

      amp = amp + (contract2_1(coeffs%coeffs_465, rmomenta, b_set))
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
   !-------#] Diagram 465:
   !-------#[ Diagram 485:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='485'>"
         dbg_amp = amp
      end if
      b_set = 0

      amp = amp + (contract5_4(coeffs%coeffs_485, rmomenta, b_set))
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
   !-------#] Diagram 485:
   !-------#[ Diagram 489:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='489'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,5/))

      amp = amp + (contract3_2(coeffs%coeffs_489, rmomenta, b_set))
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
   !-------#] Diagram 489:
   !-------#[ Diagram 573:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='573'>"
         dbg_amp = amp
      end if
      b_set = packb((/1/))

      amp = amp + (contract4_3(coeffs%coeffs_573, rmomenta, b_set))
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
   !-------#] Diagram 573:
   !-------#[ Diagram 595:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='595'>"
         dbg_amp = amp
      end if
      b_set = packb((/5/))

      amp = amp + (contract4_3(coeffs%coeffs_595, rmomenta, b_set))
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
   !-------#] Diagram 595:
   !-------#[ Diagram 603:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='603'>"
         dbg_amp = amp
      end if
      b_set = packb((/2/))

      amp = amp + (contract4_3(coeffs%coeffs_603, rmomenta, b_set))
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
   !-------#] Diagram 603:
   !-------#[ Diagram 971:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='971'>"
         dbg_amp = amp
      end if
      b_set = packb((/2,5/))

      amp = amp + (contract3_2(coeffs%coeffs_971, rmomenta, b_set))
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
   !-------#] Diagram 971:

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
   use p4_ubaru_epnemumnmubarg_config, only: debug_nlo_diagrams, logfile
   use p4_ubaru_epnemumnmubarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7, es234, es345, es12, es671, es567, es23, es123, &
   & es456, es712, es45, es56, es34, es71, es67
   use p4_ubaru_epnemumnmubarg_model
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
   s_mat(1,1)=real(0.0_ki, ki_gol)
   s_mat(1,2)=real(es56, ki_gol)
   s_mat(2,1)=s_mat(1,2)
   s_mat(1,3)=real(-es567+es56+es234-es71, ki_gol)
   s_mat(3,1)=s_mat(1,3)
   s_mat(1,4)=real(es34-es567+es56+es12-es712, ki_gol)
   s_mat(4,1)=s_mat(1,4)
   s_mat(1,5)=real(es34, ki_gol)
   s_mat(5,1)=s_mat(1,5)
   s_mat(2,2)=real(0.0_ki, ki_gol)
   s_mat(2,3)=real(0.0_ki, ki_gol)
   s_mat(3,2)=s_mat(2,3)
   s_mat(2,4)=real(es12, ki_gol)
   s_mat(4,2)=s_mat(2,4)
   s_mat(2,5)=real(es712, ki_gol)
   s_mat(5,2)=s_mat(2,5)
   s_mat(3,3)=real(0.0_ki, ki_gol)
   s_mat(3,4)=real(0.0_ki, ki_gol)
   s_mat(4,3)=s_mat(3,4)
   s_mat(3,5)=real(-es12-es71+es712, ki_gol)
   s_mat(5,3)=s_mat(3,5)
   s_mat(4,4)=real(0.0_ki, ki_gol)
   s_mat(4,5)=real(0.0_ki, ki_gol)
   s_mat(5,4)=s_mat(4,5)
   s_mat(5,5)=real(0.0_ki, ki_gol)
   call preparesmatrix()
   rmomenta(1,:) = real(-k3-k7-k4, ki_gol)
   rmomenta(2,:) = real(-k3-k7-k6-k5-k4, ki_gol)
   rmomenta(3,:) = real(-k2, ki_gol)
   rmomenta(4,:) = 0.0_ki_gol
   rmomenta(5,:) = real(-k7, ki_gol)
   !-------#[ Diagram 37:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='37'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = packb((/4/))

      amp = + (contract4_3(coeffs%coeffs_37, rmomenta, b_set))
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
      b_set = packb((/4,5/))

      amp = amp + (contract3_2(coeffs%coeffs_61, rmomenta, b_set))
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
   !-------#[ Diagram 191:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='191'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,4/))

      amp = amp + (contract3_2(coeffs%coeffs_191, rmomenta, b_set))
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
   !-------#] Diagram 191:
   !-------#[ Diagram 219:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='219'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,2,4/))

      amp = amp + (contract2_1(coeffs%coeffs_219, rmomenta, b_set))
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
   !-------#] Diagram 219:
   !-------#[ Diagram 285:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='285'>"
         dbg_amp = amp
      end if
      b_set = packb((/2,4/))

      amp = amp + (contract3_2(coeffs%coeffs_285, rmomenta, b_set))
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
   !-------#] Diagram 285:
   !-------#[ Diagram 469:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='469'>"
         dbg_amp = amp
      end if
      b_set = packb((/2,4,5/))

      amp = amp + (contract2_1(coeffs%coeffs_469, rmomenta, b_set))
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
   !-------#] Diagram 469:
   !-------#[ Diagram 481:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='481'>"
         dbg_amp = amp
      end if
      b_set = 0

      amp = amp + (contract5_4(coeffs%coeffs_481, rmomenta, b_set))
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
   !-------#] Diagram 481:
   !-------#[ Diagram 517:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='517'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,2/))

      amp = amp + (contract3_2(coeffs%coeffs_517, rmomenta, b_set))
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
   !-------#] Diagram 517:
   !-------#[ Diagram 559:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='559'>"
         dbg_amp = amp
      end if
      b_set = packb((/1/))

      amp = amp + (contract4_3(coeffs%coeffs_559, rmomenta, b_set))
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
   !-------#] Diagram 559:
   !-------#[ Diagram 607:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='607'>"
         dbg_amp = amp
      end if
      b_set = packb((/2/))

      amp = amp + (contract4_3(coeffs%coeffs_607, rmomenta, b_set))
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
   !-------#] Diagram 607:

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
   use p4_ubaru_epnemumnmubarg_config, only: debug_nlo_diagrams, logfile
   use p4_ubaru_epnemumnmubarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7, es234, es345, es12, es671, es567, es23, es123, &
   & es456, es712, es45, es56, es34, es71, es67
   use p4_ubaru_epnemumnmubarg_model
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
   s_mat(1,1)=real(0.0_ki, ki_gol)
   s_mat(1,2)=real(0.0_ki, ki_gol)
   s_mat(2,1)=s_mat(1,2)
   s_mat(1,3)=real(es567, ki_gol)
   s_mat(3,1)=s_mat(1,3)
   s_mat(1,4)=real(es234, ki_gol)
   s_mat(4,1)=s_mat(1,4)
   s_mat(1,5)=real(es34, ki_gol)
   s_mat(5,1)=s_mat(1,5)
   s_mat(2,2)=real(0.0_ki, ki_gol)
   s_mat(2,3)=real(es56, ki_gol)
   s_mat(3,2)=s_mat(2,3)
   s_mat(2,4)=real(-es567+es56+es234-es71, ki_gol)
   s_mat(4,2)=s_mat(2,4)
   s_mat(2,5)=real(es34-es567+es56+es12-es712, ki_gol)
   s_mat(5,2)=s_mat(2,5)
   s_mat(3,3)=real(0.0_ki, ki_gol)
   s_mat(3,4)=real(0.0_ki, ki_gol)
   s_mat(4,3)=s_mat(3,4)
   s_mat(3,5)=real(es12, ki_gol)
   s_mat(5,3)=s_mat(3,5)
   s_mat(4,4)=real(0.0_ki, ki_gol)
   s_mat(4,5)=real(0.0_ki, ki_gol)
   s_mat(5,4)=s_mat(4,5)
   s_mat(5,5)=real(0.0_ki, ki_gol)
   call preparesmatrix()
   rmomenta(1,:) = real(-k3-k4, ki_gol)
   rmomenta(2,:) = real(-k3-k7-k4, ki_gol)
   rmomenta(3,:) = real(-k3-k7-k6-k5-k4, ki_gol)
   rmomenta(4,:) = real(-k2, ki_gol)
   rmomenta(5,:) = 0.0_ki_gol
   !-------#[ Diagram 473:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='473'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = 0

      amp = + (contract5_4(coeffs%coeffs_473, rmomenta, b_set))
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
   !-------#] Diagram 473:
   !-------#[ Diagram 587:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='587'>"
         dbg_amp = amp
      end if
      b_set = packb((/5/))

      amp = amp + (contract4_3(coeffs%coeffs_587, rmomenta, b_set))
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
   !-------#] Diagram 587:
   !-------#[ Diagram 591:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='591'>"
         dbg_amp = amp
      end if
      b_set = packb((/3/))

      amp = amp + (contract4_3(coeffs%coeffs_591, rmomenta, b_set))
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
   !-------#] Diagram 591:

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
   use p4_ubaru_epnemumnmubarg_config, only: debug_nlo_diagrams, logfile
   use p4_ubaru_epnemumnmubarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7, es234, es345, es12, es671, es567, es23, es123, &
   & es456, es712, es45, es56, es34, es71, es67
   use p4_ubaru_epnemumnmubarg_model
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
   s_mat(1,2)=real(es56, ki_gol)
   s_mat(2,1)=s_mat(1,2)
   s_mat(1,3)=real(es567, ki_gol)
   s_mat(3,1)=s_mat(1,3)
   s_mat(1,4)=real(es234, ki_gol)
   s_mat(4,1)=s_mat(1,4)
   s_mat(1,5)=real(es34, ki_gol)
   s_mat(5,1)=s_mat(1,5)
   s_mat(2,2)=real(0.0_ki, ki_gol)
   s_mat(2,3)=real(0.0_ki, ki_gol)
   s_mat(3,2)=s_mat(2,3)
   s_mat(2,4)=real(es71, ki_gol)
   s_mat(4,2)=s_mat(2,4)
   s_mat(2,5)=real(es712, ki_gol)
   s_mat(5,2)=s_mat(2,5)
   s_mat(3,3)=real(0.0_ki, ki_gol)
   s_mat(3,4)=real(0.0_ki, ki_gol)
   s_mat(4,3)=s_mat(3,4)
   s_mat(3,5)=real(es12, ki_gol)
   s_mat(5,3)=s_mat(3,5)
   s_mat(4,4)=real(0.0_ki, ki_gol)
   s_mat(4,5)=real(0.0_ki, ki_gol)
   s_mat(5,4)=s_mat(4,5)
   s_mat(5,5)=real(0.0_ki, ki_gol)
   call preparesmatrix()
   rmomenta(1,:) = real(-k3-k4, ki_gol)
   rmomenta(2,:) = real(-k3-k6-k5-k4, ki_gol)
   rmomenta(3,:) = real(-k3-k7-k6-k5-k4, ki_gol)
   rmomenta(4,:) = real(-k2, ki_gol)
   rmomenta(5,:) = 0.0_ki_gol
   !-------#[ Diagram 477:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='477'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = 0

      amp = + (contract5_4(coeffs%coeffs_477, rmomenta, b_set))
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
   !-------#] Diagram 477:
   !-------#[ Diagram 545:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='545'>"
         dbg_amp = amp
      end if
      b_set = packb((/1/))

      amp = amp + (contract4_3(coeffs%coeffs_545, rmomenta, b_set))
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
   !-------#] Diagram 545:
   !-------#[ Diagram 599:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='599'>"
         dbg_amp = amp
      end if
      b_set = packb((/5/))

      amp = amp + (contract4_3(coeffs%coeffs_599, rmomenta, b_set))
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
   !-------#] Diagram 599:

   100 format (A30,E24.16,A6,E24.16,A3)
end function contract_tensor_coefficients_group_3
!-----#] function contract_tensor_coefficients_group_3:
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
end module p4_ubaru_epnemumnmubarg_groups
