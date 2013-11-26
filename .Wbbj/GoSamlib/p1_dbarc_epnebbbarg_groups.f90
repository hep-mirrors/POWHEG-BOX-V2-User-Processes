module     p1_dbarc_epnebbbarg_groups
   use precision, only: ki_sam => ki
   use madds
   use precision_golem, only: ki_gol => ki
   use tens_rec
   use p1_dbarc_epnebbbarg_config, only: ki , reduction_interoperation, samurai_scalar 
   implicit none
   save

   private
!---#[ tensor coefficients for golem95:
   !-----#[ tensor coefficients group 0:
   type tensrec_info_group0
      type(coeff_type_3) :: coeffs_322
   end type

   public :: tensrec_info_group0
   type(tensrec_info_group0), pointer, public :: coeffs_group0
   public :: reduce_numetens_group0
   !-----#] tensor coefficients group 0:
   !-----#[ tensor coefficients group 1:
   type tensrec_info_group1
      type(coeff_type_2) :: coeffs_176
      type(coeff_type_3) :: coeffs_318
   end type

   public :: tensrec_info_group1
   type(tensrec_info_group1), pointer, public :: coeffs_group1
   public :: reduce_numetens_group1
   !-----#] tensor coefficients group 1:
   !-----#[ tensor coefficients group 2:
   type tensrec_info_group2
      type(coeff_type_2) :: coeffs_28
      type(coeff_type_2) :: coeffs_87
      type(coeff_type_3) :: coeffs_153
      type(coeff_type_2) :: coeffs_180
      type(coeff_type_2) :: coeffs_244
      type(coeff_type_3) :: coeffs_320
   end type

   public :: tensrec_info_group2
   type(tensrec_info_group2), pointer, public :: coeffs_group2
   public :: reduce_numetens_group2
   !-----#] tensor coefficients group 2:
   !-----#[ tensor coefficients group 3:
   type tensrec_info_group3
      type(coeff_type_3) :: coeffs_13
      type(coeff_type_4) :: coeffs_84
   end type

   public :: tensrec_info_group3
   type(tensrec_info_group3), pointer, public :: coeffs_group3
   public :: reduce_numetens_group3
   !-----#] tensor coefficients group 3:
   !-----#[ tensor coefficients group 4:
   type tensrec_info_group4
      type(coeff_type_3) :: coeffs_12
      type(coeff_type_4) :: coeffs_85
   end type

   public :: tensrec_info_group4
   type(tensrec_info_group4), pointer, public :: coeffs_group4
   public :: reduce_numetens_group4
   !-----#] tensor coefficients group 4:
   !-----#[ tensor coefficients group 5:
   type tensrec_info_group5
      type(coeff_type_3) :: coeffs_15
      type(coeff_type_4) :: coeffs_83
   end type

   public :: tensrec_info_group5
   type(tensrec_info_group5), pointer, public :: coeffs_group5
   public :: reduce_numetens_group5
   !-----#] tensor coefficients group 5:
   !-----#[ tensor coefficients group 6:
   type tensrec_info_group6
      type(coeff_type_3) :: coeffs_14
      type(coeff_type_4) :: coeffs_82
   end type

   public :: tensrec_info_group6
   type(tensrec_info_group6), pointer, public :: coeffs_group6
   public :: reduce_numetens_group6
   !-----#] tensor coefficients group 6:
   !-----#[ tensor coefficients group 7:
   type tensrec_info_group7
      type(coeff_type_4) :: coeffs_68
   end type

   public :: tensrec_info_group7
   type(tensrec_info_group7), pointer, public :: coeffs_group7
   public :: reduce_numetens_group7
   !-----#] tensor coefficients group 7:
   !-----#[ tensor coefficients group 8:
   type tensrec_info_group8
      type(coeff_type_4) :: coeffs_80
      type(coeff_type_3) :: coeffs_128
   end type

   public :: tensrec_info_group8
   type(tensrec_info_group8), pointer, public :: coeffs_group8
   public :: reduce_numetens_group8
   !-----#] tensor coefficients group 8:
   !-----#[ tensor coefficients group 9:
   type tensrec_info_group9
      type(coeff_type_4) :: coeffs_66
      type(coeff_type_3) :: coeffs_127
   end type

   public :: tensrec_info_group9
   type(tensrec_info_group9), pointer, public :: coeffs_group9
   public :: reduce_numetens_group9
   !-----#] tensor coefficients group 9:
   !-----#[ tensor coefficients group 10:
   type tensrec_info_group10
      type(coeff_type_4) :: coeffs_81
   end type

   public :: tensrec_info_group10
   type(tensrec_info_group10), pointer, public :: coeffs_group10
   public :: reduce_numetens_group10
   !-----#] tensor coefficients group 10:
   !-----#[ tensor coefficients group 11:
   type tensrec_info_group11
      type(coeff_type_3) :: coeffs_79
      type(coeff_type_2) :: coeffs_109
      type(coeff_type_4) :: coeffs_292
      type(coeff_type_3) :: coeffs_301
   end type

   public :: tensrec_info_group11
   type(tensrec_info_group11), pointer, public :: coeffs_group11
   public :: reduce_numetens_group11
   !-----#] tensor coefficients group 11:
   !-----#[ tensor coefficients group 12:
   type tensrec_info_group12
      type(coeff_type_4) :: coeffs_298
      type(coeff_type_3) :: coeffs_303
      type(coeff_type_3) :: coeffs_316
   end type

   public :: tensrec_info_group12
   type(tensrec_info_group12), pointer, public :: coeffs_group12
   public :: reduce_numetens_group12
   !-----#] tensor coefficients group 12:
   !-----#[ tensor coefficients group 13:
   type tensrec_info_group13
      type(coeff_type_3) :: coeffs_16
      type(coeff_type_2) :: coeffs_38
      type(coeff_type_2) :: coeffs_42
      type(coeff_type_1) :: coeffs_58
      type(coeff_type_4) :: coeffs_70
      type(coeff_type_3) :: coeffs_76
      type(coeff_type_2) :: coeffs_90
      type(coeff_type_2) :: coeffs_93
      type(coeff_type_3) :: coeffs_102
      type(coeff_type_2) :: coeffs_108
      type(coeff_type_3) :: coeffs_115
      type(coeff_type_3) :: coeffs_126
      type(coeff_type_2) :: coeffs_139
      type(coeff_type_2) :: coeffs_227
      type(coeff_type_4) :: coeffs_295
      type(coeff_type_3) :: coeffs_310
   end type

   public :: tensrec_info_group13
   type(tensrec_info_group13), pointer, public :: coeffs_group13
   public :: reduce_numetens_group13
   !-----#] tensor coefficients group 13:
   !-----#[ tensor coefficients group 14:
   type tensrec_info_group14
      type(coeff_type_3) :: coeffs_72
      type(coeff_type_3) :: coeffs_75
      type(coeff_type_2) :: coeffs_98
      type(coeff_type_2) :: coeffs_101
      type(coeff_type_2) :: coeffs_120
      type(coeff_type_2) :: coeffs_121
      type(coeff_type_4) :: coeffs_300
      type(coeff_type_3) :: coeffs_305
      type(coeff_type_3) :: coeffs_315
   end type

   public :: tensrec_info_group14
   type(tensrec_info_group14), pointer, public :: coeffs_group14
   public :: reduce_numetens_group14
   !-----#] tensor coefficients group 14:
   !-----#[ tensor coefficients group 15:
   type tensrec_info_group15
      type(coeff_type_1) :: coeffs_6
      type(coeff_type_1) :: coeffs_8
      type(coeff_type_1) :: coeffs_10
      type(coeff_type_3) :: coeffs_17
      type(coeff_type_2) :: coeffs_18
      type(coeff_type_2) :: coeffs_21
      type(coeff_type_2) :: coeffs_24
      type(coeff_type_2) :: coeffs_40
      type(coeff_type_2) :: coeffs_43
      type(coeff_type_1) :: coeffs_59
      type(coeff_type_1) :: coeffs_64
      type(coeff_type_1) :: coeffs_65
      type(coeff_type_4) :: coeffs_71
      type(coeff_type_3) :: coeffs_78
      type(coeff_type_2) :: coeffs_86
      type(coeff_type_2) :: coeffs_91
      type(coeff_type_2) :: coeffs_92
      type(coeff_type_3) :: coeffs_103
      type(coeff_type_2) :: coeffs_110
      type(coeff_type_3) :: coeffs_111
      type(coeff_type_3) :: coeffs_124
      type(coeff_type_2) :: coeffs_137
      type(coeff_type_2) :: coeffs_223
      type(coeff_type_4) :: coeffs_296
      type(coeff_type_3) :: coeffs_302
   end type

   public :: tensrec_info_group15
   type(tensrec_info_group15), pointer, public :: coeffs_group15
   public :: reduce_numetens_group15
   !-----#] tensor coefficients group 15:
   !-----#[ tensor coefficients group 16:
   type tensrec_info_group16
      type(coeff_type_4) :: coeffs_67
      type(coeff_type_3) :: coeffs_77
      type(coeff_type_3) :: coeffs_94
      type(coeff_type_2) :: coeffs_107
      type(coeff_type_3) :: coeffs_117
      type(coeff_type_3) :: coeffs_125
      type(coeff_type_3) :: coeffs_145
      type(coeff_type_4) :: coeffs_294
      type(coeff_type_3) :: coeffs_304
      type(coeff_type_3) :: coeffs_314
      type(coeff_type_3) :: coeffs_317
      type(coeff_type_2) :: coeffs_336
   end type

   public :: tensrec_info_group16
   type(tensrec_info_group16), pointer, public :: coeffs_group16
   public :: reduce_numetens_group16
   !-----#] tensor coefficients group 16:
   !-----#[ tensor coefficients group 17:
   type tensrec_info_group17
      type(coeff_type_4) :: coeffs_291
      type(coeff_type_3) :: coeffs_309
   end type

   public :: tensrec_info_group17
   type(tensrec_info_group17), pointer, public :: coeffs_group17
   public :: reduce_numetens_group17
   !-----#] tensor coefficients group 17:
   !-----#[ tensor coefficients group 18:
   type tensrec_info_group18
      type(coeff_type_2) :: coeffs_1
      type(coeff_type_1) :: coeffs_2
      type(coeff_type_1) :: coeffs_3
      type(coeff_type_1) :: coeffs_4
      type(coeff_type_2) :: coeffs_20
      type(coeff_type_2) :: coeffs_23
      type(coeff_type_1) :: coeffs_62
      type(coeff_type_1) :: coeffs_63
      type(coeff_type_3) :: coeffs_73
      type(coeff_type_3) :: coeffs_74
      type(coeff_type_2) :: coeffs_99
      type(coeff_type_2) :: coeffs_100
      type(coeff_type_3) :: coeffs_104
      type(coeff_type_2) :: coeffs_119
      type(coeff_type_2) :: coeffs_122
      type(coeff_type_2) :: coeffs_175
      type(coeff_type_2) :: coeffs_179
      type(coeff_type_2) :: coeffs_219
      type(coeff_type_2) :: coeffs_221
      type(coeff_type_2) :: coeffs_225
      type(coeff_type_2) :: coeffs_229
      type(coeff_type_2) :: coeffs_240
      type(coeff_type_4) :: coeffs_299
      type(coeff_type_3) :: coeffs_307
      type(coeff_type_3) :: coeffs_313
      type(coeff_type_3) :: coeffs_321
      type(coeff_type_2) :: coeffs_333
      type(coeff_type_2) :: coeffs_335
   end type

   public :: tensrec_info_group18
   type(tensrec_info_group18), pointer, public :: coeffs_group18
   public :: reduce_numetens_group18
   !-----#] tensor coefficients group 18:
   !-----#[ tensor coefficients group 19:
   type tensrec_info_group19
      type(coeff_type_4) :: coeffs_293
      type(coeff_type_3) :: coeffs_306
      type(coeff_type_3) :: coeffs_312
   end type

   public :: tensrec_info_group19
   type(tensrec_info_group19), pointer, public :: coeffs_group19
   public :: reduce_numetens_group19
   !-----#] tensor coefficients group 19:
   !-----#[ tensor coefficients group 20:
   type tensrec_info_group20
      type(coeff_type_4) :: coeffs_69
      type(coeff_type_3) :: coeffs_96
      type(coeff_type_3) :: coeffs_113
      type(coeff_type_3) :: coeffs_123
      type(coeff_type_4) :: coeffs_297
      type(coeff_type_3) :: coeffs_308
      type(coeff_type_3) :: coeffs_311
      type(coeff_type_3) :: coeffs_319
      type(coeff_type_2) :: coeffs_334
   end type

   public :: tensrec_info_group20
   type(tensrec_info_group20), pointer, public :: coeffs_group20
   public :: reduce_numetens_group20
   !-----#] tensor coefficients group 20:
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
      module procedure contract_tensor_coefficients_group_12
      module procedure contract_tensor_coefficients_group_13
      module procedure contract_tensor_coefficients_group_14
      module procedure contract_tensor_coefficients_group_15
      module procedure contract_tensor_coefficients_group_16
      module procedure contract_tensor_coefficients_group_17
      module procedure contract_tensor_coefficients_group_18
      module procedure contract_tensor_coefficients_group_19
      module procedure contract_tensor_coefficients_group_20
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
   use p1_dbarc_epnebbbarg_config, only: debug_nlo_diagrams, logfile
   use p1_dbarc_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7, es234, es345, es12, es6, es671, es567, es23, &
   & es5, es123, es456, es712, es45, es56, es34, es71, &
   & es67
   use p1_dbarc_epnebbbarg_model
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
   s_mat(1,2)=real(0.0_ki, ki_gol)
   s_mat(2,1)=s_mat(1,2)
   s_mat(1,3)=real(-mB**2+es67, ki_gol)
   s_mat(3,1)=s_mat(1,3)
   s_mat(1,4)=real(-2.0_ki*mB**2+es567, ki_gol)
   s_mat(4,1)=s_mat(1,4)
   s_mat(2,2)=real(0.0_ki, ki_gol)
   s_mat(2,3)=real(0.0_ki, ki_gol)
   s_mat(3,2)=s_mat(2,3)
   s_mat(2,4)=real(mB**2-es56-es67+es567, ki_gol)
   s_mat(4,2)=s_mat(2,4)
   s_mat(3,3)=real(0.0_ki, ki_gol)
   s_mat(3,4)=real(0.0_ki, ki_gol)
   s_mat(4,3)=s_mat(3,4)
   s_mat(4,4)=real(-2.0_ki*mB**2, ki_gol)
   call preparesmatrix()
   rmomenta(1,:) = real(k7+k6, ki_gol)
   rmomenta(2,:) = real(k7, ki_gol)
   rmomenta(3,:) = 0.0_ki_gol
   rmomenta(4,:) = real(-k5, ki_gol)
   !-------#[ Diagram 322:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='322'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = 0

      amp = + (contract4_3(coeffs%coeffs_322, rmomenta, b_set))
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
   !-------#] Diagram 322:
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
   use p1_dbarc_epnebbbarg_config, only: debug_nlo_diagrams, logfile
   use p1_dbarc_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7, es234, es345, es12, es6, es671, es567, es23, &
   & es5, es123, es456, es712, es45, es56, es34, es71, &
   & es67
   use p1_dbarc_epnebbbarg_model
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
   s_mat(1,2)=real(-2.0_ki*mB**2, ki_gol)
   s_mat(2,1)=s_mat(1,2)
   s_mat(1,3)=real(mB**2-es56-es67+es567, ki_gol)
   s_mat(3,1)=s_mat(1,3)
   s_mat(1,4)=real(-2.0_ki*mB**2+es567, ki_gol)
   s_mat(4,1)=s_mat(1,4)
   s_mat(2,2)=real(-2.0_ki*mB**2, ki_gol)
   s_mat(2,3)=real(0.0_ki, ki_gol)
   s_mat(3,2)=s_mat(2,3)
   s_mat(2,4)=real(-2.0_ki*mB**2+es56, ki_gol)
   s_mat(4,2)=s_mat(2,4)
   s_mat(3,3)=real(0.0_ki, ki_gol)
   s_mat(3,4)=real(0.0_ki, ki_gol)
   s_mat(4,3)=s_mat(3,4)
   s_mat(4,4)=real(-2.0_ki*mB**2, ki_gol)
   call preparesmatrix()
   rmomenta(1,:) = real(-k7-k5, ki_gol)
   rmomenta(2,:) = real(-k5, ki_gol)
   rmomenta(3,:) = 0.0_ki_gol
   rmomenta(4,:) = real(k6, ki_gol)
   !-------#[ Diagram 176:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='176'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = packb((/2/))

      amp = + (contract3_2(coeffs%coeffs_176, rmomenta, b_set))
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
   !-------#] Diagram 176:
   !-------#[ Diagram 318:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='318'>"
         dbg_amp = amp
      end if
      b_set = 0

      amp = amp + (contract4_3(coeffs%coeffs_318, rmomenta, b_set))
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
   !-------#] Diagram 318:
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
   use p1_dbarc_epnebbbarg_config, only: debug_nlo_diagrams, logfile
   use p1_dbarc_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7, es234, es345, es12, es6, es671, es567, es23, &
   & es5, es123, es456, es712, es45, es56, es34, es71, &
   & es67
   use p1_dbarc_epnebbbarg_model
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
   s_mat(1,2)=real(-2.0_ki*mB**2, ki_gol)
   s_mat(2,1)=s_mat(1,2)
   s_mat(1,3)=real(-mB**2+es67, ki_gol)
   s_mat(3,1)=s_mat(1,3)
   s_mat(1,4)=real(-2.0_ki*mB**2+es567, ki_gol)
   s_mat(4,1)=s_mat(1,4)
   s_mat(2,2)=real(-2.0_ki*mB**2, ki_gol)
   s_mat(2,3)=real(0.0_ki, ki_gol)
   s_mat(3,2)=s_mat(2,3)
   s_mat(2,4)=real(-2.0_ki*mB**2+es56, ki_gol)
   s_mat(4,2)=s_mat(2,4)
   s_mat(3,3)=real(0.0_ki, ki_gol)
   s_mat(3,4)=real(0.0_ki, ki_gol)
   s_mat(4,3)=s_mat(3,4)
   s_mat(4,4)=real(-2.0_ki*mB**2, ki_gol)
   call preparesmatrix()
   rmomenta(1,:) = real(k7+k6, ki_gol)
   rmomenta(2,:) = real(k6, ki_gol)
   rmomenta(3,:) = 0.0_ki_gol
   rmomenta(4,:) = real(-k5, ki_gol)
   !-------#[ Diagram 28:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='28'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = packb((/1,3/))

      amp = + (contract2_2(coeffs%coeffs_28, rmomenta, b_set))
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
   !-------#[ Diagram 87:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='87'>"
         dbg_amp = amp
      end if
      b_set = packb((/1/))

      amp = amp + (contract3_2(coeffs%coeffs_87, rmomenta, b_set))
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
   !-------#] Diagram 87:
   !-------#[ Diagram 153:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='153'>"
         dbg_amp = amp
      end if
      b_set = packb((/3/))

      amp = amp + (contract3_3(coeffs%coeffs_153, rmomenta, b_set))
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
   !-------#] Diagram 153:
   !-------#[ Diagram 180:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='180'>"
         dbg_amp = amp
      end if
      b_set = packb((/2/))

      amp = amp + (contract3_2(coeffs%coeffs_180, rmomenta, b_set))
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
   !-------#] Diagram 180:
   !-------#[ Diagram 244:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='244'>"
         dbg_amp = amp
      end if
      b_set = packb((/2,3/))

      amp = amp + (contract2_2(coeffs%coeffs_244, rmomenta, b_set))
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
   !-------#] Diagram 244:
   !-------#[ Diagram 320:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='320'>"
         dbg_amp = amp
      end if
      b_set = 0

      amp = amp + (contract4_3(coeffs%coeffs_320, rmomenta, b_set))
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
   !-------#] Diagram 320:
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
   use p1_dbarc_epnebbbarg_config, only: debug_nlo_diagrams, logfile
   use p1_dbarc_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7, es234, es345, es12, es6, es671, es567, es23, &
   & es5, es123, es456, es712, es45, es56, es34, es71, &
   & es67
   use p1_dbarc_epnebbbarg_model
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
   s_mat(1,3)=real(es34+es56-es234+es71-es712, ki_gol)
   s_mat(3,1)=s_mat(1,3)
   s_mat(1,4)=real(es34+es567-es234-es12, ki_gol)
   s_mat(4,1)=s_mat(1,4)
   s_mat(1,5)=real(es34, ki_gol)
   s_mat(5,1)=s_mat(1,5)
   s_mat(2,2)=real(0.0_ki, ki_gol)
   s_mat(2,3)=real(0.0_ki, ki_gol)
   s_mat(3,2)=s_mat(2,3)
   s_mat(2,4)=real(-es12-es71+es712, ki_gol)
   s_mat(4,2)=s_mat(2,4)
   s_mat(2,5)=real(es712, ki_gol)
   s_mat(5,2)=s_mat(2,5)
   s_mat(3,3)=real(0.0_ki, ki_gol)
   s_mat(3,4)=real(0.0_ki, ki_gol)
   s_mat(4,3)=s_mat(3,4)
   s_mat(3,5)=real(es71, ki_gol)
   s_mat(5,3)=s_mat(3,5)
   s_mat(4,4)=real(0.0_ki, ki_gol)
   s_mat(4,5)=real(0.0_ki, ki_gol)
   s_mat(5,4)=s_mat(4,5)
   s_mat(5,5)=real(0.0_ki, ki_gol)
   call preparesmatrix()
   rmomenta(1,:) = real(-k2+k6+k5, ki_gol)
   rmomenta(2,:) = real(-k2, ki_gol)
   rmomenta(3,:) = 0.0_ki_gol
   rmomenta(4,:) = real(-k7, ki_gol)
   rmomenta(5,:) = real(k3-k2+k6+k5+k4, ki_gol)
   !-------#[ Diagram 13:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='13'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = packb((/4/))

      amp = + (contract4_3(coeffs%coeffs_13, rmomenta, b_set))
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
   !-------#[ Diagram 84:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='84'>"
         dbg_amp = amp
      end if
      b_set = 0

      amp = amp + (contract5_4(coeffs%coeffs_84, rmomenta, b_set))
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
   !-------#] Diagram 84:
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
   use p1_dbarc_epnebbbarg_config, only: debug_nlo_diagrams, logfile
   use p1_dbarc_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7, es234, es345, es12, es6, es671, es567, es23, &
   & es5, es123, es456, es712, es45, es56, es34, es71, &
   & es67
   use p1_dbarc_epnebbbarg_model
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
   !-------#[ Diagram 12:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='12'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = packb((/3/))

      amp = + (contract4_3(coeffs%coeffs_12, rmomenta, b_set))
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
   !-------#] Diagram 12:
   !-------#[ Diagram 85:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='85'>"
         dbg_amp = amp
      end if
      b_set = 0

      amp = amp + (contract5_4(coeffs%coeffs_85, rmomenta, b_set))
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
   !-------#] Diagram 85:
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
   use form_factor_5p, only: a50
   use form_factor_type, only: form_factor, operator(+), operator(-)
   use p1_dbarc_epnebbbarg_config, only: debug_nlo_diagrams, logfile
   use p1_dbarc_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7, es234, es345, es12, es6, es671, es567, es23, &
   & es5, es123, es456, es712, es45, es56, es34, es71, &
   & es67
   use p1_dbarc_epnebbbarg_model
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
   !-------#[ Diagram 15:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='15'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = packb((/4/))

      amp = + (contract4_3(coeffs%coeffs_15, rmomenta, b_set))
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
   !-------#[ Diagram 83:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='83'>"
         dbg_amp = amp
      end if
      b_set = 0

      amp = amp + (contract5_4(coeffs%coeffs_83, rmomenta, b_set))
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
   !-------#] Diagram 83:
   if ((reduction_interoperation /= 1) .and. (samurai_scalar == 3) ) then
        call tear_down_golem95();
   end if

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
   use p1_dbarc_epnebbbarg_config, only: debug_nlo_diagrams, logfile
   use p1_dbarc_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7, es234, es345, es12, es6, es671, es567, es23, &
   & es5, es123, es456, es712, es45, es56, es34, es71, &
   & es67
   use p1_dbarc_epnebbbarg_model
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
   s_mat(1,1)=real(0.0_ki, ki_gol)
   s_mat(1,2)=real(es56, ki_gol)
   s_mat(2,1)=s_mat(1,2)
   s_mat(1,3)=real(es567, ki_gol)
   s_mat(3,1)=s_mat(1,3)
   s_mat(1,4)=real(es34+es567-es234-es12, ki_gol)
   s_mat(4,1)=s_mat(1,4)
   s_mat(1,5)=real(es34, ki_gol)
   s_mat(5,1)=s_mat(1,5)
   s_mat(2,2)=real(0.0_ki, ki_gol)
   s_mat(2,3)=real(0.0_ki, ki_gol)
   s_mat(3,2)=s_mat(2,3)
   s_mat(2,4)=real(-es12-es71+es712, ki_gol)
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
   rmomenta(1,:) = real(-k7-k6-k5, ki_gol)
   rmomenta(2,:) = real(-k7, ki_gol)
   rmomenta(3,:) = 0.0_ki_gol
   rmomenta(4,:) = real(-k2, ki_gol)
   rmomenta(5,:) = real(-k3-k7-k6-k5-k4, ki_gol)
   !-------#[ Diagram 14:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='14'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = packb((/3/))

      amp = + (contract4_3(coeffs%coeffs_14, rmomenta, b_set))
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
   !-------#[ Diagram 82:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='82'>"
         dbg_amp = amp
      end if
      b_set = 0

      amp = amp + (contract5_4(coeffs%coeffs_82, rmomenta, b_set))
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
   !-------#] Diagram 82:
   if ((reduction_interoperation /= 1) .and. (samurai_scalar == 3) ) then
        call tear_down_golem95();
   end if

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
   use p1_dbarc_epnebbbarg_config, only: debug_nlo_diagrams, logfile
   use p1_dbarc_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7, es234, es345, es12, es6, es671, es567, es23, &
   & es5, es123, es456, es712, es45, es56, es34, es71, &
   & es67
   use p1_dbarc_epnebbbarg_model
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
   !-------#[ Diagram 68:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='68'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = 0

      amp = + (contract5_4(coeffs%coeffs_68, rmomenta, b_set))
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
   !-------#] Diagram 68:
   if ((reduction_interoperation /= 1) .and. (samurai_scalar == 3) ) then
        call tear_down_golem95();
   end if

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
   use p1_dbarc_epnebbbarg_config, only: debug_nlo_diagrams, logfile
   use p1_dbarc_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7, es234, es345, es12, es6, es671, es567, es23, &
   & es5, es123, es456, es712, es45, es56, es34, es71, &
   & es67
   use p1_dbarc_epnebbbarg_model
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
   !-------#[ Diagram 80:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='80'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = 0

      amp = + (contract5_4(coeffs%coeffs_80, rmomenta, b_set))
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
   !-------#] Diagram 80:
   !-------#[ Diagram 128:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='128'>"
         dbg_amp = amp
      end if
      b_set = packb((/2/))

      amp = amp + (contract4_3(coeffs%coeffs_128, rmomenta, b_set))
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
   !-------#] Diagram 128:
   if ((reduction_interoperation /= 1) .and. (samurai_scalar == 3) ) then
        call tear_down_golem95();
   end if

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
   use p1_dbarc_epnebbbarg_config, only: debug_nlo_diagrams, logfile
   use p1_dbarc_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7, es234, es345, es12, es6, es671, es567, es23, &
   & es5, es123, es456, es712, es45, es56, es34, es71, &
   & es67
   use p1_dbarc_epnebbbarg_model
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
   s_mat(1,1)=real(0.0_ki, ki_gol)
   s_mat(1,2)=real(0.0_ki, ki_gol)
   s_mat(2,1)=s_mat(1,2)
   s_mat(1,3)=real(es567, ki_gol)
   s_mat(3,1)=s_mat(1,3)
   s_mat(1,4)=real(es34+es567-es234-es12, ki_gol)
   s_mat(4,1)=s_mat(1,4)
   s_mat(1,5)=real(es34, ki_gol)
   s_mat(5,1)=s_mat(1,5)
   s_mat(2,2)=real(0.0_ki, ki_gol)
   s_mat(2,3)=real(es56, ki_gol)
   s_mat(3,2)=s_mat(2,3)
   s_mat(2,4)=real(es34+es56-es234+es71-es712, ki_gol)
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
   rmomenta(1,:) = real(-k7-k6-k5, ki_gol)
   rmomenta(2,:) = real(-k6-k5, ki_gol)
   rmomenta(3,:) = 0.0_ki_gol
   rmomenta(4,:) = real(-k2, ki_gol)
   rmomenta(5,:) = real(-k3-k7-k6-k5-k4, ki_gol)
   !-------#[ Diagram 66:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='66'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = 0

      amp = + (contract5_4(coeffs%coeffs_66, rmomenta, b_set))
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
   !-------#] Diagram 66:
   !-------#[ Diagram 127:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='127'>"
         dbg_amp = amp
      end if
      b_set = packb((/2/))

      amp = amp + (contract4_3(coeffs%coeffs_127, rmomenta, b_set))
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
   !-------#] Diagram 127:
   if ((reduction_interoperation /= 1) .and. (samurai_scalar == 3) ) then
        call tear_down_golem95();
   end if

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
   use p1_dbarc_epnebbbarg_config, only: debug_nlo_diagrams, logfile
   use p1_dbarc_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7, es234, es345, es12, es6, es671, es567, es23, &
   & es5, es123, es456, es712, es45, es56, es34, es71, &
   & es67
   use p1_dbarc_epnebbbarg_model
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
   s_mat(1,1)=real(0.0_ki, ki_gol)
   s_mat(1,2)=real(es56, ki_gol)
   s_mat(2,1)=s_mat(1,2)
   s_mat(1,3)=real(es34+es56-es234+es71-es712, ki_gol)
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
   s_mat(3,5)=real(es71, ki_gol)
   s_mat(5,3)=s_mat(3,5)
   s_mat(4,4)=real(0.0_ki, ki_gol)
   s_mat(4,5)=real(0.0_ki, ki_gol)
   s_mat(5,4)=s_mat(4,5)
   s_mat(5,5)=real(0.0_ki, ki_gol)
   call preparesmatrix()
   rmomenta(1,:) = real(-k6-k5, ki_gol)
   rmomenta(2,:) = 0.0_ki_gol
   rmomenta(3,:) = real(-k2, ki_gol)
   rmomenta(4,:) = real(-k3-k7-k6-k5-k4, ki_gol)
   rmomenta(5,:) = real(-k3-k6-k5-k4, ki_gol)
   !-------#[ Diagram 81:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='81'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = 0

      amp = + (contract5_4(coeffs%coeffs_81, rmomenta, b_set))
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
   !-------#] Diagram 81:
   if ((reduction_interoperation /= 1) .and. (samurai_scalar == 3) ) then
        call tear_down_golem95();
   end if

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
   use form_factor_6p, only: a60
   use form_factor_type, only: form_factor, operator(+), operator(-)
   use p1_dbarc_epnebbbarg_config, only: debug_nlo_diagrams, logfile
   use p1_dbarc_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7, es234, es345, es12, es6, es671, es567, es23, &
   & es5, es123, es456, es712, es45, es56, es34, es71, &
   & es67
   use p1_dbarc_epnebbbarg_model
   implicit none
   type(tensrec_info_group11), intent(in) :: coeffs
   type(form_factor) :: amp, dbg_amp

   integer :: b_set
   real(ki_gol), dimension(6,0:3) :: rmomenta
   logical :: ev_diagram

   if(prev_ls.ne.6) then
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
      call allocation_s(6)
      set_ref = (/1, 2, 3, 4, 5, 6/)
      b_ref = packb(set_ref)
      call allocate_cache(6)
      s_mat => s_mat_c
      !------#] call sequence of initgolem95():
      prev_ls = 6
   !else
   !   reset_cache() is called by preparesmatrix()
   !   call reset_cache()
   end if
   s_mat(1,1)=real(0.0_ki, ki_gol)
   s_mat(1,2)=real(0.0_ki, ki_gol)
   s_mat(2,1)=s_mat(1,2)
   s_mat(1,3)=real(es671-es67-es71, ki_gol)
   s_mat(3,1)=s_mat(1,3)
   s_mat(1,4)=real(-es567+es56+es234-es71, ki_gol)
   s_mat(4,1)=s_mat(1,4)
   s_mat(1,5)=real(es34-es567+es56+es12-es712, ki_gol)
   s_mat(5,1)=s_mat(1,5)
   s_mat(1,6)=real(es34, ki_gol)
   s_mat(6,1)=s_mat(1,6)
   s_mat(2,2)=real(0.0_ki, ki_gol)
   s_mat(2,3)=real(0.0_ki, ki_gol)
   s_mat(3,2)=s_mat(2,3)
   s_mat(2,4)=real(es56, ki_gol)
   s_mat(4,2)=s_mat(2,4)
   s_mat(2,5)=real(es34+es56-es234+es71-es712, ki_gol)
   s_mat(5,2)=s_mat(2,5)
   s_mat(2,6)=real(es34+es567-es234-es12, ki_gol)
   s_mat(6,2)=s_mat(2,6)
   s_mat(3,3)=real(-2.0_ki*mB**2, ki_gol)
   s_mat(3,4)=real(0.0_ki, ki_gol)
   s_mat(4,3)=s_mat(3,4)
   s_mat(3,5)=real(-es234-es345+es34+es671, ki_gol)
   s_mat(5,3)=s_mat(3,5)
   s_mat(3,6)=real(es34+es671+es567-es56-es234-es345-es67+mB**2-es12-es71+es712, ki_gol)
   s_mat(6,3)=s_mat(3,6)
   s_mat(4,4)=real(0.0_ki, ki_gol)
   s_mat(4,5)=real(0.0_ki, ki_gol)
   s_mat(5,4)=s_mat(4,5)
   s_mat(4,6)=real(-es12-es71+es712, ki_gol)
   s_mat(6,4)=s_mat(4,6)
   s_mat(5,5)=real(0.0_ki, ki_gol)
   s_mat(5,6)=real(0.0_ki, ki_gol)
   s_mat(6,5)=s_mat(5,6)
   s_mat(6,6)=real(0.0_ki, ki_gol)
   call preparesmatrix()
   rmomenta(1,:) = real(k3-k2+k7+k4, ki_gol)
   rmomenta(2,:) = real(-k6-k5, ki_gol)
   rmomenta(3,:) = real(-k5, ki_gol)
   rmomenta(4,:) = 0.0_ki_gol
   rmomenta(5,:) = real(-k2, ki_gol)
   rmomenta(6,:) = real(-k2+k7, ki_gol)
   !-------#[ Diagram 79:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='79'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = packb((/5/))

      amp = + (contract5_3(coeffs%coeffs_79, rmomenta, b_set))
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
   !-------#] Diagram 79:
   !-------#[ Diagram 109:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='109'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,5/))

      amp = amp + (contract4_2(coeffs%coeffs_109, rmomenta, b_set))
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
   !-------#] Diagram 109:
   !-------#[ Diagram 292:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='292'>"
         dbg_amp = amp
      end if
      b_set = 0

      amp = amp + (contract6_4(coeffs%coeffs_292, rmomenta, b_set))
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
   !-------#] Diagram 292:
   !-------#[ Diagram 301:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='301'>"
         dbg_amp = amp
      end if
      b_set = packb((/1/))

      amp = amp + (contract5_3(coeffs%coeffs_301, rmomenta, b_set))
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
   !-------#] Diagram 301:
   if ((reduction_interoperation /= 1) .and. (samurai_scalar == 3) ) then
        call tear_down_golem95();
   end if

   100 format (A30,E24.16,A6,E24.16,A3)
end function contract_tensor_coefficients_group_11
!-----#] function contract_tensor_coefficients_group_11:
!-----#[ function contract_tensor_coefficients_group_12:
function     contract_tensor_coefficients_group_12(coeffs) result(amp)
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
   use form_factor_6p, only: a60
   use form_factor_type, only: form_factor, operator(+), operator(-)
   use p1_dbarc_epnebbbarg_config, only: debug_nlo_diagrams, logfile
   use p1_dbarc_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7, es234, es345, es12, es6, es671, es567, es23, &
   & es5, es123, es456, es712, es45, es56, es34, es71, &
   & es67
   use p1_dbarc_epnebbbarg_model
   implicit none
   type(tensrec_info_group12), intent(in) :: coeffs
   type(form_factor) :: amp, dbg_amp

   integer :: b_set
   real(ki_gol), dimension(6,0:3) :: rmomenta
   logical :: ev_diagram

   if(prev_ls.ne.6) then
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
      call allocation_s(6)
      set_ref = (/1, 2, 3, 4, 5, 6/)
      b_ref = packb(set_ref)
      call allocate_cache(6)
      s_mat => s_mat_c
      !------#] call sequence of initgolem95():
      prev_ls = 6
   !else
   !   reset_cache() is called by preparesmatrix()
   !   call reset_cache()
   end if
   s_mat(1,1)=real(0.0_ki, ki_gol)
   s_mat(1,2)=real(0.0_ki, ki_gol)
   s_mat(2,1)=s_mat(1,2)
   s_mat(1,3)=real(es71, ki_gol)
   s_mat(3,1)=s_mat(1,3)
   s_mat(1,4)=real(es671-mB**2, ki_gol)
   s_mat(4,1)=s_mat(1,4)
   s_mat(1,5)=real(es234, ki_gol)
   s_mat(5,1)=s_mat(1,5)
   s_mat(1,6)=real(es34, ki_gol)
   s_mat(6,1)=s_mat(1,6)
   s_mat(2,2)=real(0.0_ki, ki_gol)
   s_mat(2,3)=real(0.0_ki, ki_gol)
   s_mat(3,2)=s_mat(2,3)
   s_mat(2,4)=real(-mB**2+es67, ki_gol)
   s_mat(4,2)=s_mat(2,4)
   s_mat(2,5)=real(es567, ki_gol)
   s_mat(5,2)=s_mat(2,5)
   s_mat(2,6)=real(es34+es567-es234-es12, ki_gol)
   s_mat(6,2)=s_mat(2,6)
   s_mat(3,3)=real(0.0_ki, ki_gol)
   s_mat(3,4)=real(0.0_ki, ki_gol)
   s_mat(4,3)=s_mat(3,4)
   s_mat(3,5)=real(es56, ki_gol)
   s_mat(5,3)=s_mat(3,5)
   s_mat(3,6)=real(es34+es56-es234+es71-es712, ki_gol)
   s_mat(6,3)=s_mat(3,6)
   s_mat(4,4)=real(-2.0_ki*mB**2, ki_gol)
   s_mat(4,5)=real(0.0_ki, ki_gol)
   s_mat(5,4)=s_mat(4,5)
   s_mat(4,6)=real(-es234-es345+es34+es671, ki_gol)
   s_mat(6,4)=s_mat(4,6)
   s_mat(5,5)=real(0.0_ki, ki_gol)
   s_mat(5,6)=real(0.0_ki, ki_gol)
   s_mat(6,5)=s_mat(5,6)
   s_mat(6,6)=real(0.0_ki, ki_gol)
   call preparesmatrix()
   rmomenta(1,:) = real(k3-k2+k4, ki_gol)
   rmomenta(2,:) = real(-k7-k6-k5, ki_gol)
   rmomenta(3,:) = real(-k6-k5, ki_gol)
   rmomenta(4,:) = real(-k5, ki_gol)
   rmomenta(5,:) = 0.0_ki_gol
   rmomenta(6,:) = real(-k2, ki_gol)
   !-------#[ Diagram 298:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='298'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = 0

      amp = + (contract6_4(coeffs%coeffs_298, rmomenta, b_set))
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
   !-------#] Diagram 298:
   !-------#[ Diagram 303:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='303'>"
         dbg_amp = amp
      end if
      b_set = packb((/1/))

      amp = amp + (contract5_3(coeffs%coeffs_303, rmomenta, b_set))
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
   !-------#] Diagram 303:
   !-------#[ Diagram 316:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='316'>"
         dbg_amp = amp
      end if
      b_set = packb((/6/))

      amp = amp + (contract5_3(coeffs%coeffs_316, rmomenta, b_set))
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
   !-------#] Diagram 316:
   if ((reduction_interoperation /= 1) .and. (samurai_scalar == 3) ) then
        call tear_down_golem95();
   end if

   100 format (A30,E24.16,A6,E24.16,A3)
end function contract_tensor_coefficients_group_12
!-----#] function contract_tensor_coefficients_group_12:
!-----#[ function contract_tensor_coefficients_group_13:
function     contract_tensor_coefficients_group_13(coeffs) result(amp)
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
   use form_factor_6p, only: a60
   use form_factor_type, only: form_factor, operator(+), operator(-)
   use p1_dbarc_epnebbbarg_config, only: debug_nlo_diagrams, logfile
   use p1_dbarc_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7, es234, es345, es12, es6, es671, es567, es23, &
   & es5, es123, es456, es712, es45, es56, es34, es71, &
   & es67
   use p1_dbarc_epnebbbarg_model
   implicit none
   type(tensrec_info_group13), intent(in) :: coeffs
   type(form_factor) :: amp, dbg_amp

   integer :: b_set
   real(ki_gol), dimension(6,0:3) :: rmomenta
   logical :: ev_diagram

   if(prev_ls.ne.6) then
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
      call allocation_s(6)
      set_ref = (/1, 2, 3, 4, 5, 6/)
      b_ref = packb(set_ref)
      call allocate_cache(6)
      s_mat => s_mat_c
      !------#] call sequence of initgolem95():
      prev_ls = 6
   !else
   !   reset_cache() is called by preparesmatrix()
   !   call reset_cache()
   end if
   s_mat(1,1)=real(0.0_ki, ki_gol)
   s_mat(1,2)=real(0.0_ki, ki_gol)
   s_mat(2,1)=s_mat(1,2)
   s_mat(1,3)=real(-es234-es345+es34+es671, ki_gol)
   s_mat(3,1)=s_mat(1,3)
   s_mat(1,4)=real(es34+es56-es234+es71-es712, ki_gol)
   s_mat(4,1)=s_mat(1,4)
   s_mat(1,5)=real(es34-es567+es56+es12-es712, ki_gol)
   s_mat(5,1)=s_mat(1,5)
   s_mat(1,6)=real(es34, ki_gol)
   s_mat(6,1)=s_mat(1,6)
   s_mat(2,2)=real(0.0_ki, ki_gol)
   s_mat(2,3)=real(0.0_ki, ki_gol)
   s_mat(3,2)=s_mat(2,3)
   s_mat(2,4)=real(es56, ki_gol)
   s_mat(4,2)=s_mat(2,4)
   s_mat(2,5)=real(-es567+es56+es234-es71, ki_gol)
   s_mat(5,2)=s_mat(2,5)
   s_mat(2,6)=real(es234, ki_gol)
   s_mat(6,2)=s_mat(2,6)
   s_mat(3,3)=real(-2.0_ki*mB**2, ki_gol)
   s_mat(3,4)=real(0.0_ki, ki_gol)
   s_mat(4,3)=s_mat(3,4)
   s_mat(3,5)=real(es671-es67-es71, ki_gol)
   s_mat(5,3)=s_mat(3,5)
   s_mat(3,6)=real(es671-mB**2, ki_gol)
   s_mat(6,3)=s_mat(3,6)
   s_mat(4,4)=real(0.0_ki, ki_gol)
   s_mat(4,5)=real(0.0_ki, ki_gol)
   s_mat(5,4)=s_mat(4,5)
   s_mat(4,6)=real(es71, ki_gol)
   s_mat(6,4)=s_mat(4,6)
   s_mat(5,5)=real(0.0_ki, ki_gol)
   s_mat(5,6)=real(0.0_ki, ki_gol)
   s_mat(6,5)=s_mat(5,6)
   s_mat(6,6)=real(0.0_ki, ki_gol)
   call preparesmatrix()
   rmomenta(1,:) = real(-k2, ki_gol)
   rmomenta(2,:) = 0.0_ki_gol
   rmomenta(3,:) = real(-k5, ki_gol)
   rmomenta(4,:) = real(-k6-k5, ki_gol)
   rmomenta(5,:) = real(k3-k2+k7+k4, ki_gol)
   rmomenta(6,:) = real(k3-k2+k4, ki_gol)
   !-------#[ Diagram 16:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='16'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = packb((/3,5/))

      amp = + (contract4_3(coeffs%coeffs_16, rmomenta, b_set))
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
   !-------#] Diagram 16:
   !-------#[ Diagram 38:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='38'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,3,5/))

      amp = amp + (contract3_2(coeffs%coeffs_38, rmomenta, b_set))
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
   !-------#] Diagram 38:
   !-------#[ Diagram 42:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='42'>"
         dbg_amp = amp
      end if
      b_set = packb((/2,3,5/))

      amp = amp + (contract3_2(coeffs%coeffs_42, rmomenta, b_set))
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
   !-------#] Diagram 42:
   !-------#[ Diagram 58:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='58'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,2,3,5/))

      amp = amp + (contract2_1(coeffs%coeffs_58, rmomenta, b_set))
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
   !-------#] Diagram 58:
   !-------#[ Diagram 70:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='70'>"
         dbg_amp = amp
      end if
      b_set = packb((/3/))

      amp = amp + (contract5_4(coeffs%coeffs_70, rmomenta, b_set))
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
   !-------#] Diagram 70:
   !-------#[ Diagram 76:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='76'>"
         dbg_amp = amp
      end if
      b_set = packb((/5/))

      amp = amp + (contract5_3(coeffs%coeffs_76, rmomenta, b_set))
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
   !-------#] Diagram 76:
   !-------#[ Diagram 90:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='90'>"
         dbg_amp = amp
      end if
      b_set = packb((/5,6/))

      amp = amp + (contract4_2(coeffs%coeffs_90, rmomenta, b_set))
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
   !-------#] Diagram 90:
   !-------#[ Diagram 93:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='93'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,6/))

      amp = amp + (contract4_2(coeffs%coeffs_93, rmomenta, b_set))
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
   !-------#] Diagram 93:
   !-------#[ Diagram 102:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='102'>"
         dbg_amp = amp
      end if
      b_set = packb((/3,4/))

      amp = amp + (contract4_3(coeffs%coeffs_102, rmomenta, b_set))
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
   !-------#] Diagram 102:
   !-------#[ Diagram 108:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='108'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,5/))

      amp = amp + (contract4_2(coeffs%coeffs_108, rmomenta, b_set))
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
   !-------#] Diagram 108:
   !-------#[ Diagram 115:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='115'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,3/))

      amp = amp + (contract4_3(coeffs%coeffs_115, rmomenta, b_set))
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
   !-------#] Diagram 115:
   !-------#[ Diagram 126:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='126'>"
         dbg_amp = amp
      end if
      b_set = packb((/2,3/))

      amp = amp + (contract4_3(coeffs%coeffs_126, rmomenta, b_set))
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
   !-------#] Diagram 126:
   !-------#[ Diagram 139:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='139'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,2,3/))

      amp = amp + (contract3_2(coeffs%coeffs_139, rmomenta, b_set))
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
   !-------#] Diagram 139:
   !-------#[ Diagram 227:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='227'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,3,4/))

      amp = amp + (contract3_2(coeffs%coeffs_227, rmomenta, b_set))
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
   !-------#] Diagram 227:
   !-------#[ Diagram 295:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='295'>"
         dbg_amp = amp
      end if
      b_set = 0

      amp = amp + (contract6_4(coeffs%coeffs_295, rmomenta, b_set))
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
   !-------#] Diagram 295:
   !-------#[ Diagram 310:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='310'>"
         dbg_amp = amp
      end if
      b_set = packb((/1/))

      amp = amp + (contract5_3(coeffs%coeffs_310, rmomenta, b_set))
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
   !-------#] Diagram 310:
   if ((reduction_interoperation /= 1) .and. (samurai_scalar == 3) ) then
        call tear_down_golem95();
   end if

   100 format (A30,E24.16,A6,E24.16,A3)
end function contract_tensor_coefficients_group_13
!-----#] function contract_tensor_coefficients_group_13:
!-----#[ function contract_tensor_coefficients_group_14:
function     contract_tensor_coefficients_group_14(coeffs) result(amp)
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
   use form_factor_6p, only: a60
   use form_factor_type, only: form_factor, operator(+), operator(-)
   use p1_dbarc_epnebbbarg_config, only: debug_nlo_diagrams, logfile
   use p1_dbarc_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7, es234, es345, es12, es6, es671, es567, es23, &
   & es5, es123, es456, es712, es45, es56, es34, es71, &
   & es67
   use p1_dbarc_epnebbbarg_model
   implicit none
   type(tensrec_info_group14), intent(in) :: coeffs
   type(form_factor) :: amp, dbg_amp

   integer :: b_set
   real(ki_gol), dimension(6,0:3) :: rmomenta
   logical :: ev_diagram

   if(prev_ls.ne.6) then
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
      call allocation_s(6)
      set_ref = (/1, 2, 3, 4, 5, 6/)
      b_ref = packb(set_ref)
      call allocate_cache(6)
      s_mat => s_mat_c
      !------#] call sequence of initgolem95():
      prev_ls = 6
   !else
   !   reset_cache() is called by preparesmatrix()
   !   call reset_cache()
   end if
   s_mat(1,1)=real(0.0_ki, ki_gol)
   s_mat(1,2)=real(0.0_ki, ki_gol)
   s_mat(2,1)=s_mat(1,2)
   s_mat(1,3)=real(es671-es67-es71, ki_gol)
   s_mat(3,1)=s_mat(1,3)
   s_mat(1,4)=real(es671-mB**2, ki_gol)
   s_mat(4,1)=s_mat(1,4)
   s_mat(1,5)=real(es234, ki_gol)
   s_mat(5,1)=s_mat(1,5)
   s_mat(1,6)=real(es34, ki_gol)
   s_mat(6,1)=s_mat(1,6)
   s_mat(2,2)=real(0.0_ki, ki_gol)
   s_mat(2,3)=real(0.0_ki, ki_gol)
   s_mat(3,2)=s_mat(2,3)
   s_mat(2,4)=real(-mB**2+es67, ki_gol)
   s_mat(4,2)=s_mat(2,4)
   s_mat(2,5)=real(es567, ki_gol)
   s_mat(5,2)=s_mat(2,5)
   s_mat(2,6)=real(es34+es567-es234-es12, ki_gol)
   s_mat(6,2)=s_mat(2,6)
   s_mat(3,3)=real(-2.0_ki*mB**2, ki_gol)
   s_mat(3,4)=real(-2.0_ki*mB**2, ki_gol)
   s_mat(4,3)=s_mat(3,4)
   s_mat(3,5)=real(mB**2-es56-es67+es567, ki_gol)
   s_mat(5,3)=s_mat(3,5)
   s_mat(3,6)=real(es34+es671+es567-es56-es234-es345-es67+mB**2-es12-es71+es712, ki_gol)
   s_mat(6,3)=s_mat(3,6)
   s_mat(4,4)=real(-2.0_ki*mB**2, ki_gol)
   s_mat(4,5)=real(0.0_ki, ki_gol)
   s_mat(5,4)=s_mat(4,5)
   s_mat(4,6)=real(-es234-es345+es34+es671, ki_gol)
   s_mat(6,4)=s_mat(4,6)
   s_mat(5,5)=real(0.0_ki, ki_gol)
   s_mat(5,6)=real(0.0_ki, ki_gol)
   s_mat(6,5)=s_mat(5,6)
   s_mat(6,6)=real(0.0_ki, ki_gol)
   call preparesmatrix()
   rmomenta(1,:) = real(k3-k2+k4, ki_gol)
   rmomenta(2,:) = real(-k7-k6-k5, ki_gol)
   rmomenta(3,:) = real(-k7-k5, ki_gol)
   rmomenta(4,:) = real(-k5, ki_gol)
   rmomenta(5,:) = 0.0_ki_gol
   rmomenta(6,:) = real(-k2, ki_gol)
   !-------#[ Diagram 72:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='72'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = packb((/4/))

      amp = + (contract5_3(coeffs%coeffs_72, rmomenta, b_set))
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
   !-------#] Diagram 72:
   !-------#[ Diagram 75:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='75'>"
         dbg_amp = amp
      end if
      b_set = packb((/3/))

      amp = amp + (contract5_3(coeffs%coeffs_75, rmomenta, b_set))
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
   !-------#] Diagram 75:
   !-------#[ Diagram 98:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='98'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,4/))

      amp = amp + (contract4_2(coeffs%coeffs_98, rmomenta, b_set))
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
   !-------#] Diagram 98:
   !-------#[ Diagram 101:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='101'>"
         dbg_amp = amp
      end if
      b_set = packb((/3,6/))

      amp = amp + (contract4_2(coeffs%coeffs_101, rmomenta, b_set))
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
   !-------#] Diagram 101:
   !-------#[ Diagram 120:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='120'>"
         dbg_amp = amp
      end if
      b_set = packb((/4,6/))

      amp = amp + (contract4_2(coeffs%coeffs_120, rmomenta, b_set))
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
   !-------#] Diagram 120:
   !-------#[ Diagram 121:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='121'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,3/))

      amp = amp + (contract4_2(coeffs%coeffs_121, rmomenta, b_set))
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
   !-------#] Diagram 121:
   !-------#[ Diagram 300:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='300'>"
         dbg_amp = amp
      end if
      b_set = 0

      amp = amp + (contract6_4(coeffs%coeffs_300, rmomenta, b_set))
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
   !-------#] Diagram 300:
   !-------#[ Diagram 305:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='305'>"
         dbg_amp = amp
      end if
      b_set = packb((/1/))

      amp = amp + (contract5_3(coeffs%coeffs_305, rmomenta, b_set))
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
   !-------#] Diagram 305:
   !-------#[ Diagram 315:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='315'>"
         dbg_amp = amp
      end if
      b_set = packb((/6/))

      amp = amp + (contract5_3(coeffs%coeffs_315, rmomenta, b_set))
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
   !-------#] Diagram 315:
   if ((reduction_interoperation /= 1) .and. (samurai_scalar == 3) ) then
        call tear_down_golem95();
   end if

   100 format (A30,E24.16,A6,E24.16,A3)
end function contract_tensor_coefficients_group_14
!-----#] function contract_tensor_coefficients_group_14:
!-----#[ function contract_tensor_coefficients_group_15:
function     contract_tensor_coefficients_group_15(coeffs) result(amp)
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
   use form_factor_6p, only: a60
   use form_factor_type, only: form_factor, operator(+), operator(-)
   use p1_dbarc_epnebbbarg_config, only: debug_nlo_diagrams, logfile
   use p1_dbarc_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7, es234, es345, es12, es6, es671, es567, es23, &
   & es5, es123, es456, es712, es45, es56, es34, es71, &
   & es67
   use p1_dbarc_epnebbbarg_model
   implicit none
   type(tensrec_info_group15), intent(in) :: coeffs
   type(form_factor) :: amp, dbg_amp

   integer :: b_set
   real(ki_gol), dimension(6,0:3) :: rmomenta
   logical :: ev_diagram

   if(prev_ls.ne.6) then
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
      call allocation_s(6)
      set_ref = (/1, 2, 3, 4, 5, 6/)
      b_ref = packb(set_ref)
      call allocate_cache(6)
      s_mat => s_mat_c
      !------#] call sequence of initgolem95():
      prev_ls = 6
   !else
   !   reset_cache() is called by preparesmatrix()
   !   call reset_cache()
   end if
   s_mat(1,1)=real(0.0_ki, ki_gol)
   s_mat(1,2)=real(0.0_ki, ki_gol)
   s_mat(2,1)=s_mat(1,2)
   s_mat(1,3)=real(-es671-es567+es234+es67, ki_gol)
   s_mat(3,1)=s_mat(1,3)
   s_mat(1,4)=real(-es567+es56+es234-es71, ki_gol)
   s_mat(4,1)=s_mat(1,4)
   s_mat(1,5)=real(es34-es567+es56+es12-es712, ki_gol)
   s_mat(5,1)=s_mat(1,5)
   s_mat(1,6)=real(es34, ki_gol)
   s_mat(6,1)=s_mat(1,6)
   s_mat(2,2)=real(0.0_ki, ki_gol)
   s_mat(2,3)=real(0.0_ki, ki_gol)
   s_mat(3,2)=s_mat(2,3)
   s_mat(2,4)=real(es56, ki_gol)
   s_mat(4,2)=s_mat(2,4)
   s_mat(2,5)=real(es34+es56-es234+es71-es712, ki_gol)
   s_mat(5,2)=s_mat(2,5)
   s_mat(2,6)=real(es34+es567-es234-es12, ki_gol)
   s_mat(6,2)=s_mat(2,6)
   s_mat(3,3)=real(-2.0_ki*mB**2, ki_gol)
   s_mat(3,4)=real(0.0_ki, ki_gol)
   s_mat(4,3)=s_mat(3,4)
   s_mat(3,5)=real(-es671+es345+es71-es712, ki_gol)
   s_mat(5,3)=s_mat(3,5)
   s_mat(3,6)=real(-es671+es345+es67-mB**2-es12, ki_gol)
   s_mat(6,3)=s_mat(3,6)
   s_mat(4,4)=real(0.0_ki, ki_gol)
   s_mat(4,5)=real(0.0_ki, ki_gol)
   s_mat(5,4)=s_mat(4,5)
   s_mat(4,6)=real(-es12-es71+es712, ki_gol)
   s_mat(6,4)=s_mat(4,6)
   s_mat(5,5)=real(0.0_ki, ki_gol)
   s_mat(5,6)=real(0.0_ki, ki_gol)
   s_mat(6,5)=s_mat(5,6)
   s_mat(6,6)=real(0.0_ki, ki_gol)
   call preparesmatrix()
   rmomenta(1,:) = real(k3-k2+k7+k4, ki_gol)
   rmomenta(2,:) = real(-k6-k5, ki_gol)
   rmomenta(3,:) = real(-k6, ki_gol)
   rmomenta(4,:) = 0.0_ki_gol
   rmomenta(5,:) = real(-k2, ki_gol)
   rmomenta(6,:) = real(-k2+k7, ki_gol)
   !-------#[ Diagram 6:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='6'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = packb((/1,3,5,6/))

      amp = + (contract2_1(coeffs%coeffs_6, rmomenta, b_set))
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
      b_set = packb((/1,5,6/))

      amp = amp + (contract3_1(coeffs%coeffs_8, rmomenta, b_set))
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
   !-------#[ Diagram 10:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='10'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,2,3,4/))

      amp = amp + (contract2_1(coeffs%coeffs_10, rmomenta, b_set))
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
   !-------#[ Diagram 17:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='17'>"
         dbg_amp = amp
      end if
      b_set = packb((/3,5/))

      amp = amp + (contract4_3(coeffs%coeffs_17, rmomenta, b_set))
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
   !-------#[ Diagram 18:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='18'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,3,6/))

      amp = amp + (contract3_2(coeffs%coeffs_18, rmomenta, b_set))
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
   !-------#] Diagram 18:
   !-------#[ Diagram 21:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='21'>"
         dbg_amp = amp
      end if
      b_set = packb((/3,5,6/))

      amp = amp + (contract3_2(coeffs%coeffs_21, rmomenta, b_set))
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
   !-------#[ Diagram 24:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='24'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,3,5,6/))

      amp = amp +  (contract2_2(coeffs%coeffs_24, rmomenta, b_set))
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
   !-------#[ Diagram 40:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='40'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,3,5/))

      amp = amp + (contract3_2(coeffs%coeffs_40, rmomenta, b_set))
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
   !-------#] Diagram 40:
   !-------#[ Diagram 43:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='43'>"
         dbg_amp = amp
      end if
      b_set = packb((/2,3,5/))

      amp = amp + (contract3_2(coeffs%coeffs_43, rmomenta, b_set))
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
   !-------#[ Diagram 59:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='59'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,2,3,5/))

      amp = amp + (contract2_1(coeffs%coeffs_59, rmomenta, b_set))
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
   !-------#[ Diagram 64:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='64'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,3,4,6/))

      amp = amp + (contract2_1(coeffs%coeffs_64, rmomenta, b_set))
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
   !-------#] Diagram 64:
   !-------#[ Diagram 65:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='65'>"
         dbg_amp = amp
      end if
      b_set = packb((/2,3,5,6/))

      amp = amp + (contract2_1(coeffs%coeffs_65, rmomenta, b_set))
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
   !-------#[ Diagram 71:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='71'>"
         dbg_amp = amp
      end if
      b_set = packb((/3/))

      amp = amp + (contract5_4(coeffs%coeffs_71, rmomenta, b_set))
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
   !-------#] Diagram 71:
   !-------#[ Diagram 78:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='78'>"
         dbg_amp = amp
      end if
      b_set = packb((/5/))

      amp = amp + (contract5_3(coeffs%coeffs_78, rmomenta, b_set))
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
   !-------#] Diagram 78:
   !-------#[ Diagram 86:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='86'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,5,6/))

      amp = amp + (contract3_2(coeffs%coeffs_86, rmomenta, b_set))
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
   !-------#] Diagram 86:
   !-------#[ Diagram 91:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='91'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,6/))

      amp = amp + (contract4_2(coeffs%coeffs_91, rmomenta, b_set))
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
   !-------#] Diagram 91:
   !-------#[ Diagram 92:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='92'>"
         dbg_amp = amp
      end if
      b_set = packb((/5,6/))

      amp = amp + (contract4_2(coeffs%coeffs_92, rmomenta, b_set))
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
   !-------#] Diagram 92:
   !-------#[ Diagram 103:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='103'>"
         dbg_amp = amp
      end if
      b_set = packb((/3,4/))

      amp = amp + (contract4_3(coeffs%coeffs_103, rmomenta, b_set))
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
   !-------#] Diagram 103:
   !-------#[ Diagram 110:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='110'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,5/))

      amp = amp + (contract4_2(coeffs%coeffs_110, rmomenta, b_set))
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
   !-------#] Diagram 110:
   !-------#[ Diagram 111:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='111'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,3/))

      amp = amp + (contract4_3(coeffs%coeffs_111, rmomenta, b_set))
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
   !-------#] Diagram 111:
   !-------#[ Diagram 124:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='124'>"
         dbg_amp = amp
      end if
      b_set = packb((/2,3/))

      amp = amp + (contract4_3(coeffs%coeffs_124, rmomenta, b_set))
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
   !-------#] Diagram 124:
   !-------#[ Diagram 137:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='137'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,2,3/))

      amp = amp + (contract3_2(coeffs%coeffs_137, rmomenta, b_set))
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
   !-------#] Diagram 137:
   !-------#[ Diagram 223:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='223'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,3,4/))

      amp = amp + (contract3_2(coeffs%coeffs_223, rmomenta, b_set))
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
   !-------#] Diagram 223:
   !-------#[ Diagram 296:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='296'>"
         dbg_amp = amp
      end if
      b_set = 0

      amp = amp + (contract6_4(coeffs%coeffs_296, rmomenta, b_set))
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
   !-------#] Diagram 296:
   !-------#[ Diagram 302:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='302'>"
         dbg_amp = amp
      end if
      b_set = packb((/1/))

      amp = amp + (contract5_3(coeffs%coeffs_302, rmomenta, b_set))
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
   !-------#] Diagram 302:
   if ((reduction_interoperation /= 1) .and. (samurai_scalar == 3) ) then
        call tear_down_golem95();
   end if

   100 format (A30,E24.16,A6,E24.16,A3)
end function contract_tensor_coefficients_group_15
!-----#] function contract_tensor_coefficients_group_15:
!-----#[ function contract_tensor_coefficients_group_16:
function     contract_tensor_coefficients_group_16(coeffs) result(amp)
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
   use form_factor_6p, only: a60
   use form_factor_type, only: form_factor, operator(+), operator(-)
   use p1_dbarc_epnebbbarg_config, only: debug_nlo_diagrams, logfile
   use p1_dbarc_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7, es234, es345, es12, es6, es671, es567, es23, &
   & es5, es123, es456, es712, es45, es56, es34, es71, &
   & es67
   use p1_dbarc_epnebbbarg_model
   implicit none
   type(tensrec_info_group16), intent(in) :: coeffs
   type(form_factor) :: amp, dbg_amp

   integer :: b_set
   real(ki_gol), dimension(6,0:3) :: rmomenta
   logical :: ev_diagram

   if(prev_ls.ne.6) then
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
      call allocation_s(6)
      set_ref = (/1, 2, 3, 4, 5, 6/)
      b_ref = packb(set_ref)
      call allocate_cache(6)
      s_mat => s_mat_c
      !------#] call sequence of initgolem95():
      prev_ls = 6
   !else
   !   reset_cache() is called by preparesmatrix()
   !   call reset_cache()
   end if
   s_mat(1,1)=real(0.0_ki, ki_gol)
   s_mat(1,2)=real(0.0_ki, ki_gol)
   s_mat(2,1)=s_mat(1,2)
   s_mat(1,3)=real(es71, ki_gol)
   s_mat(3,1)=s_mat(1,3)
   s_mat(1,4)=real(-es671+es234+mB**2-es56+es71, ki_gol)
   s_mat(4,1)=s_mat(1,4)
   s_mat(1,5)=real(es234, ki_gol)
   s_mat(5,1)=s_mat(1,5)
   s_mat(1,6)=real(es34, ki_gol)
   s_mat(6,1)=s_mat(1,6)
   s_mat(2,2)=real(0.0_ki, ki_gol)
   s_mat(2,3)=real(0.0_ki, ki_gol)
   s_mat(3,2)=s_mat(2,3)
   s_mat(2,4)=real(mB**2-es56-es67+es567, ki_gol)
   s_mat(4,2)=s_mat(2,4)
   s_mat(2,5)=real(es567, ki_gol)
   s_mat(5,2)=s_mat(2,5)
   s_mat(2,6)=real(es34+es567-es234-es12, ki_gol)
   s_mat(6,2)=s_mat(2,6)
   s_mat(3,3)=real(0.0_ki, ki_gol)
   s_mat(3,4)=real(0.0_ki, ki_gol)
   s_mat(4,3)=s_mat(3,4)
   s_mat(3,5)=real(es56, ki_gol)
   s_mat(5,3)=s_mat(3,5)
   s_mat(3,6)=real(es34+es56-es234+es71-es712, ki_gol)
   s_mat(6,3)=s_mat(3,6)
   s_mat(4,4)=real(-2.0_ki*mB**2, ki_gol)
   s_mat(4,5)=real(0.0_ki, ki_gol)
   s_mat(5,4)=s_mat(4,5)
   s_mat(4,6)=real(-es671+es345+es71-es712, ki_gol)
   s_mat(6,4)=s_mat(4,6)
   s_mat(5,5)=real(0.0_ki, ki_gol)
   s_mat(5,6)=real(0.0_ki, ki_gol)
   s_mat(6,5)=s_mat(5,6)
   s_mat(6,6)=real(0.0_ki, ki_gol)
   call preparesmatrix()
   rmomenta(1,:) = real(k3-k2+k4, ki_gol)
   rmomenta(2,:) = real(-k7-k6-k5, ki_gol)
   rmomenta(3,:) = real(-k6-k5, ki_gol)
   rmomenta(4,:) = real(-k6, ki_gol)
   rmomenta(5,:) = 0.0_ki_gol
   rmomenta(6,:) = real(-k2, ki_gol)
   !-------#[ Diagram 67:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='67'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = packb((/4/))

      amp = + (contract5_4(coeffs%coeffs_67, rmomenta, b_set))
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
   !-------#] Diagram 67:
   !-------#[ Diagram 77:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='77'>"
         dbg_amp = amp
      end if
      b_set = packb((/2/))

      amp = amp + (contract5_3(coeffs%coeffs_77, rmomenta, b_set))
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
   !-------#] Diagram 77:
   !-------#[ Diagram 94:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='94'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,4/))

      amp = amp + (contract4_3(coeffs%coeffs_94, rmomenta, b_set))
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
   !-------#] Diagram 94:
   !-------#[ Diagram 107:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='107'>"
         dbg_amp = amp
      end if
      b_set = packb((/2,6/))

      amp = amp + (contract4_2(coeffs%coeffs_107, rmomenta, b_set))
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
   !-------#] Diagram 107:
   !-------#[ Diagram 117:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='117'>"
         dbg_amp = amp
      end if
      b_set = packb((/4,6/))

      amp = amp + (contract4_3(coeffs%coeffs_117, rmomenta, b_set))
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
   !-------#] Diagram 117:
   !-------#[ Diagram 125:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='125'>"
         dbg_amp = amp
      end if
      b_set = packb((/4,5/))

      amp = amp + (contract4_3(coeffs%coeffs_125, rmomenta, b_set))
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
   !-------#] Diagram 125:
   !-------#[ Diagram 145:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='145'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,4,6/))

      amp = amp +  (contract3_3(coeffs%coeffs_145, rmomenta, b_set))
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
   !-------#] Diagram 145:
   !-------#[ Diagram 294:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='294'>"
         dbg_amp = amp
      end if
      b_set = 0

      amp = amp + (contract6_4(coeffs%coeffs_294, rmomenta, b_set))
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
   !-------#] Diagram 294:
   !-------#[ Diagram 304:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='304'>"
         dbg_amp = amp
      end if
      b_set = packb((/1/))

      amp = amp + (contract5_3(coeffs%coeffs_304, rmomenta, b_set))
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
   !-------#] Diagram 304:
   !-------#[ Diagram 314:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='314'>"
         dbg_amp = amp
      end if
      b_set = packb((/6/))

      amp = amp + (contract5_3(coeffs%coeffs_314, rmomenta, b_set))
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
   !-------#] Diagram 314:
   !-------#[ Diagram 317:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='317'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,6/))

      amp = amp + (contract4_3(coeffs%coeffs_317, rmomenta, b_set))
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
   !-------#] Diagram 317:
   !-------#[ Diagram 336:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='336'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,5,6/))

      amp = amp + (contract3_2(coeffs%coeffs_336, rmomenta, b_set))
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
   !-------#] Diagram 336:
   if ((reduction_interoperation /= 1) .and. (samurai_scalar == 3) ) then
        call tear_down_golem95();
   end if

   100 format (A30,E24.16,A6,E24.16,A3)
end function contract_tensor_coefficients_group_16
!-----#] function contract_tensor_coefficients_group_16:
!-----#[ function contract_tensor_coefficients_group_17:
function     contract_tensor_coefficients_group_17(coeffs) result(amp)
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
   use form_factor_6p, only: a60
   use form_factor_type, only: form_factor, operator(+), operator(-)
   use p1_dbarc_epnebbbarg_config, only: debug_nlo_diagrams, logfile
   use p1_dbarc_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7, es234, es345, es12, es6, es671, es567, es23, &
   & es5, es123, es456, es712, es45, es56, es34, es71, &
   & es67
   use p1_dbarc_epnebbbarg_model
   implicit none
   type(tensrec_info_group17), intent(in) :: coeffs
   type(form_factor) :: amp, dbg_amp

   integer :: b_set
   real(ki_gol), dimension(6,0:3) :: rmomenta
   logical :: ev_diagram

   if(prev_ls.ne.6) then
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
      call allocation_s(6)
      set_ref = (/1, 2, 3, 4, 5, 6/)
      b_ref = packb(set_ref)
      call allocate_cache(6)
      s_mat => s_mat_c
      !------#] call sequence of initgolem95():
      prev_ls = 6
   !else
   !   reset_cache() is called by preparesmatrix()
   !   call reset_cache()
   end if
   s_mat(1,1)=real(0.0_ki, ki_gol)
   s_mat(1,2)=real(0.0_ki, ki_gol)
   s_mat(2,1)=s_mat(1,2)
   s_mat(1,3)=real(-es671+es345+es71-es712, ki_gol)
   s_mat(3,1)=s_mat(1,3)
   s_mat(1,4)=real(es34+es56-es234+es71-es712, ki_gol)
   s_mat(4,1)=s_mat(1,4)
   s_mat(1,5)=real(es34-es567+es56+es12-es712, ki_gol)
   s_mat(5,1)=s_mat(1,5)
   s_mat(1,6)=real(es34, ki_gol)
   s_mat(6,1)=s_mat(1,6)
   s_mat(2,2)=real(0.0_ki, ki_gol)
   s_mat(2,3)=real(0.0_ki, ki_gol)
   s_mat(3,2)=s_mat(2,3)
   s_mat(2,4)=real(es56, ki_gol)
   s_mat(4,2)=s_mat(2,4)
   s_mat(2,5)=real(-es567+es56+es234-es71, ki_gol)
   s_mat(5,2)=s_mat(2,5)
   s_mat(2,6)=real(es234, ki_gol)
   s_mat(6,2)=s_mat(2,6)
   s_mat(3,3)=real(-2.0_ki*mB**2, ki_gol)
   s_mat(3,4)=real(0.0_ki, ki_gol)
   s_mat(4,3)=s_mat(3,4)
   s_mat(3,5)=real(-es671-es567+es234+es67, ki_gol)
   s_mat(5,3)=s_mat(3,5)
   s_mat(3,6)=real(-es671+es234+mB**2-es56+es71, ki_gol)
   s_mat(6,3)=s_mat(3,6)
   s_mat(4,4)=real(0.0_ki, ki_gol)
   s_mat(4,5)=real(0.0_ki, ki_gol)
   s_mat(5,4)=s_mat(4,5)
   s_mat(4,6)=real(es71, ki_gol)
   s_mat(6,4)=s_mat(4,6)
   s_mat(5,5)=real(0.0_ki, ki_gol)
   s_mat(5,6)=real(0.0_ki, ki_gol)
   s_mat(6,5)=s_mat(5,6)
   s_mat(6,6)=real(0.0_ki, ki_gol)
   call preparesmatrix()
   rmomenta(1,:) = real(-k2, ki_gol)
   rmomenta(2,:) = 0.0_ki_gol
   rmomenta(3,:) = real(-k6, ki_gol)
   rmomenta(4,:) = real(-k6-k5, ki_gol)
   rmomenta(5,:) = real(k3-k2+k7+k4, ki_gol)
   rmomenta(6,:) = real(k3-k2+k4, ki_gol)
   !-------#[ Diagram 291:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='291'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = 0

      amp = + (contract6_4(coeffs%coeffs_291, rmomenta, b_set))
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
   !-------#] Diagram 291:
   !-------#[ Diagram 309:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='309'>"
         dbg_amp = amp
      end if
      b_set = packb((/1/))

      amp = amp + (contract5_3(coeffs%coeffs_309, rmomenta, b_set))
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
   !-------#] Diagram 309:
   if ((reduction_interoperation /= 1) .and. (samurai_scalar == 3) ) then
        call tear_down_golem95();
   end if

   100 format (A30,E24.16,A6,E24.16,A3)
end function contract_tensor_coefficients_group_17
!-----#] function contract_tensor_coefficients_group_17:
!-----#[ function contract_tensor_coefficients_group_18:
function     contract_tensor_coefficients_group_18(coeffs) result(amp)
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
   use form_factor_6p, only: a60
   use form_factor_type, only: form_factor, operator(+), operator(-)
   use p1_dbarc_epnebbbarg_config, only: debug_nlo_diagrams, logfile
   use p1_dbarc_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7, es234, es345, es12, es6, es671, es567, es23, &
   & es5, es123, es456, es712, es45, es56, es34, es71, &
   & es67
   use p1_dbarc_epnebbbarg_model
   implicit none
   type(tensrec_info_group18), intent(in) :: coeffs
   type(form_factor) :: amp, dbg_amp

   integer :: b_set
   real(ki_gol), dimension(6,0:3) :: rmomenta
   logical :: ev_diagram

   if(prev_ls.ne.6) then
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
      call allocation_s(6)
      set_ref = (/1, 2, 3, 4, 5, 6/)
      b_ref = packb(set_ref)
      call allocate_cache(6)
      s_mat => s_mat_c
      !------#] call sequence of initgolem95():
      prev_ls = 6
   !else
   !   reset_cache() is called by preparesmatrix()
   !   call reset_cache()
   end if
   s_mat(1,1)=real(0.0_ki, ki_gol)
   s_mat(1,2)=real(0.0_ki, ki_gol)
   s_mat(2,1)=s_mat(1,2)
   s_mat(1,3)=real(-es671+es345+es71-es712, ki_gol)
   s_mat(3,1)=s_mat(1,3)
   s_mat(1,4)=real(-es671+es345+es67-mB**2-es12, ki_gol)
   s_mat(4,1)=s_mat(1,4)
   s_mat(1,5)=real(es34+es567-es234-es12, ki_gol)
   s_mat(5,1)=s_mat(1,5)
   s_mat(1,6)=real(es34, ki_gol)
   s_mat(6,1)=s_mat(1,6)
   s_mat(2,2)=real(0.0_ki, ki_gol)
   s_mat(2,3)=real(0.0_ki, ki_gol)
   s_mat(3,2)=s_mat(2,3)
   s_mat(2,4)=real(-mB**2+es67, ki_gol)
   s_mat(4,2)=s_mat(2,4)
   s_mat(2,5)=real(es567, ki_gol)
   s_mat(5,2)=s_mat(2,5)
   s_mat(2,6)=real(es234, ki_gol)
   s_mat(6,2)=s_mat(2,6)
   s_mat(3,3)=real(-2.0_ki*mB**2, ki_gol)
   s_mat(3,4)=real(-2.0_ki*mB**2, ki_gol)
   s_mat(4,3)=s_mat(3,4)
   s_mat(3,5)=real(mB**2-es56-es67+es567, ki_gol)
   s_mat(5,3)=s_mat(3,5)
   s_mat(3,6)=real(-es671+es234+mB**2-es56+es71, ki_gol)
   s_mat(6,3)=s_mat(3,6)
   s_mat(4,4)=real(-2.0_ki*mB**2, ki_gol)
   s_mat(4,5)=real(0.0_ki, ki_gol)
   s_mat(5,4)=s_mat(4,5)
   s_mat(4,6)=real(-es671-es567+es234+es67, ki_gol)
   s_mat(6,4)=s_mat(4,6)
   s_mat(5,5)=real(0.0_ki, ki_gol)
   s_mat(5,6)=real(0.0_ki, ki_gol)
   s_mat(6,5)=s_mat(5,6)
   s_mat(6,6)=real(0.0_ki, ki_gol)
   call preparesmatrix()
   rmomenta(1,:) = real(-k2, ki_gol)
   rmomenta(2,:) = 0.0_ki_gol
   rmomenta(3,:) = real(-k6, ki_gol)
   rmomenta(4,:) = real(-k7-k6, ki_gol)
   rmomenta(5,:) = real(-k7-k6-k5, ki_gol)
   rmomenta(6,:) = real(k3-k2+k4, ki_gol)
   !-------#[ Diagram 1:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='1'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = packb((/3,4/))

      amp = + (contract4_2(coeffs%coeffs_1, rmomenta, b_set))
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
   !-------#[ Diagram 2:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='2'>"
         dbg_amp = amp
      end if
      b_set = packb((/3,4,6/))

      amp = amp + (contract3_1(coeffs%coeffs_2, rmomenta, b_set))
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
   !-------#[ Diagram 3:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='3'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,3,4/))

      amp = amp + (contract3_1(coeffs%coeffs_3, rmomenta, b_set))
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
   !-------#[ Diagram 4:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='4'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,3,4,6/))

      amp = amp + (contract2_1(coeffs%coeffs_4, rmomenta, b_set))
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
   !-------#[ Diagram 20:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='20'>"
         dbg_amp = amp
      end if
      b_set = packb((/3,4,5/))

      amp = amp + (contract3_2(coeffs%coeffs_20, rmomenta, b_set))
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
   !-------#] Diagram 20:
   !-------#[ Diagram 23:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='23'>"
         dbg_amp = amp
      end if
      b_set = packb((/2,3,4/))

      amp = amp + (contract3_2(coeffs%coeffs_23, rmomenta, b_set))
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
   !-------#[ Diagram 62:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='62'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,3,4,5/))

      amp = amp + (contract2_1(coeffs%coeffs_62, rmomenta, b_set))
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
   !-------#] Diagram 62:
   !-------#[ Diagram 63:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='63'>"
         dbg_amp = amp
      end if
      b_set = packb((/2,3,4,6/))

      amp = amp + (contract2_1(coeffs%coeffs_63, rmomenta, b_set))
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
   !-------#[ Diagram 73:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='73'>"
         dbg_amp = amp
      end if
      b_set = packb((/4/))

      amp = amp + (contract5_3(coeffs%coeffs_73, rmomenta, b_set))
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
   !-------#] Diagram 73:
   !-------#[ Diagram 74:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='74'>"
         dbg_amp = amp
      end if
      b_set = packb((/3/))

      amp = amp + (contract5_3(coeffs%coeffs_74, rmomenta, b_set))
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
   !-------#] Diagram 74:
   !-------#[ Diagram 99:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='99'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,4/))

      amp = amp + (contract4_2(coeffs%coeffs_99, rmomenta, b_set))
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
   !-------#] Diagram 99:
   !-------#[ Diagram 100:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='100'>"
         dbg_amp = amp
      end if
      b_set = packb((/3,6/))

      amp = amp + (contract4_2(coeffs%coeffs_100, rmomenta, b_set))
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
   !-------#] Diagram 100:
   !-------#[ Diagram 104:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='104'>"
         dbg_amp = amp
      end if
      b_set = packb((/3,4/))

      amp = amp + (contract4_3(coeffs%coeffs_104, rmomenta, b_set))
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
   !-------#] Diagram 104:
   !-------#[ Diagram 119:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='119'>"
         dbg_amp = amp
      end if
      b_set = packb((/4,6/))

      amp = amp + (contract4_2(coeffs%coeffs_119, rmomenta, b_set))
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
   !-------#] Diagram 119:
   !-------#[ Diagram 122:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='122'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,3/))

      amp = amp + (contract4_2(coeffs%coeffs_122, rmomenta, b_set))
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
   !-------#] Diagram 122:
   !-------#[ Diagram 175:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='175'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,4,6/))

      amp = amp + (contract3_2(coeffs%coeffs_175, rmomenta, b_set))
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
   !-------#] Diagram 175:
   !-------#[ Diagram 179:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='179'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,3,6/))

      amp = amp + (contract3_2(coeffs%coeffs_179, rmomenta, b_set))
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
   !-------#] Diagram 179:
   !-------#[ Diagram 219:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='219'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,2,4,6/))

      amp = amp + (contract2_2(coeffs%coeffs_219, rmomenta, b_set))
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
   !-------#[ Diagram 221:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='221'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,3,5,6/))

      amp = amp + (contract2_2(coeffs%coeffs_221, rmomenta, b_set))
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
   !-------#] Diagram 221:
   !-------#[ Diagram 225:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='225'>"
         dbg_amp = amp
      end if
      b_set = packb((/3,4,6/))

      amp = amp + (contract3_2(coeffs%coeffs_225, rmomenta, b_set))
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
   !-------#] Diagram 225:
   !-------#[ Diagram 229:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='229'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,3,4/))

      amp = amp + (contract3_2(coeffs%coeffs_229, rmomenta, b_set))
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
   !-------#] Diagram 229:
   !-------#[ Diagram 240:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='240'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,3,4,6/))

      amp = amp +  (contract2_2(coeffs%coeffs_240, rmomenta, b_set))
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
   !-------#] Diagram 240:
   !-------#[ Diagram 299:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='299'>"
         dbg_amp = amp
      end if
      b_set = 0

      amp = amp + (contract6_4(coeffs%coeffs_299, rmomenta, b_set))
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
   !-------#] Diagram 299:
   !-------#[ Diagram 307:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='307'>"
         dbg_amp = amp
      end if
      b_set = packb((/6/))

      amp = amp + (contract5_3(coeffs%coeffs_307, rmomenta, b_set))
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
   !-------#] Diagram 307:
   !-------#[ Diagram 313:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='313'>"
         dbg_amp = amp
      end if
      b_set = packb((/1/))

      amp = amp + (contract5_3(coeffs%coeffs_313, rmomenta, b_set))
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
   !-------#] Diagram 313:
   !-------#[ Diagram 321:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='321'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,6/))

      amp = amp + (contract4_3(coeffs%coeffs_321, rmomenta, b_set))
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
   !-------#] Diagram 321:
   !-------#[ Diagram 333:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='333'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,5,6/))

      amp = amp + (contract3_2(coeffs%coeffs_333, rmomenta, b_set))
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
   !-------#] Diagram 333:
   !-------#[ Diagram 335:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='335'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,2,6/))

      amp = amp + (contract3_2(coeffs%coeffs_335, rmomenta, b_set))
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
   !-------#] Diagram 335:
   if ((reduction_interoperation /= 1) .and. (samurai_scalar == 3) ) then
        call tear_down_golem95();
   end if

   100 format (A30,E24.16,A6,E24.16,A3)
end function contract_tensor_coefficients_group_18
!-----#] function contract_tensor_coefficients_group_18:
!-----#[ function contract_tensor_coefficients_group_19:
function     contract_tensor_coefficients_group_19(coeffs) result(amp)
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
   use form_factor_6p, only: a60
   use form_factor_type, only: form_factor, operator(+), operator(-)
   use p1_dbarc_epnebbbarg_config, only: debug_nlo_diagrams, logfile
   use p1_dbarc_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7, es234, es345, es12, es6, es671, es567, es23, &
   & es5, es123, es456, es712, es45, es56, es34, es71, &
   & es67
   use p1_dbarc_epnebbbarg_model
   implicit none
   type(tensrec_info_group19), intent(in) :: coeffs
   type(form_factor) :: amp, dbg_amp

   integer :: b_set
   real(ki_gol), dimension(6,0:3) :: rmomenta
   logical :: ev_diagram

   if(prev_ls.ne.6) then
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
      call allocation_s(6)
      set_ref = (/1, 2, 3, 4, 5, 6/)
      b_ref = packb(set_ref)
      call allocate_cache(6)
      s_mat => s_mat_c
      !------#] call sequence of initgolem95():
      prev_ls = 6
   !else
   !   reset_cache() is called by preparesmatrix()
   !   call reset_cache()
   end if
   s_mat(1,1)=real(0.0_ki, ki_gol)
   s_mat(1,2)=real(0.0_ki, ki_gol)
   s_mat(2,1)=s_mat(1,2)
   s_mat(1,3)=real(-es12-es71+es712, ki_gol)
   s_mat(3,1)=s_mat(1,3)
   s_mat(1,4)=real(es34+es671+es567-es56-es234-es345-es67+mB**2-es12-es71+es712, ki_gol)
   s_mat(4,1)=s_mat(1,4)
   s_mat(1,5)=real(es34+es567-es234-es12, ki_gol)
   s_mat(5,1)=s_mat(1,5)
   s_mat(1,6)=real(es34, ki_gol)
   s_mat(6,1)=s_mat(1,6)
   s_mat(2,2)=real(0.0_ki, ki_gol)
   s_mat(2,3)=real(0.0_ki, ki_gol)
   s_mat(3,2)=s_mat(2,3)
   s_mat(2,4)=real(mB**2-es56-es67+es567, ki_gol)
   s_mat(4,2)=s_mat(2,4)
   s_mat(2,5)=real(es567, ki_gol)
   s_mat(5,2)=s_mat(2,5)
   s_mat(2,6)=real(es234, ki_gol)
   s_mat(6,2)=s_mat(2,6)
   s_mat(3,3)=real(0.0_ki, ki_gol)
   s_mat(3,4)=real(0.0_ki, ki_gol)
   s_mat(4,3)=s_mat(3,4)
   s_mat(3,5)=real(es56, ki_gol)
   s_mat(5,3)=s_mat(3,5)
   s_mat(3,6)=real(-es567+es56+es234-es71, ki_gol)
   s_mat(6,3)=s_mat(3,6)
   s_mat(4,4)=real(-2.0_ki*mB**2, ki_gol)
   s_mat(4,5)=real(0.0_ki, ki_gol)
   s_mat(5,4)=s_mat(4,5)
   s_mat(4,6)=real(es671-es67-es71, ki_gol)
   s_mat(6,4)=s_mat(4,6)
   s_mat(5,5)=real(0.0_ki, ki_gol)
   s_mat(5,6)=real(0.0_ki, ki_gol)
   s_mat(6,5)=s_mat(5,6)
   s_mat(6,6)=real(0.0_ki, ki_gol)
   call preparesmatrix()
   rmomenta(1,:) = real(-k2, ki_gol)
   rmomenta(2,:) = 0.0_ki_gol
   rmomenta(3,:) = real(-k7, ki_gol)
   rmomenta(4,:) = real(-k7-k5, ki_gol)
   rmomenta(5,:) = real(-k7-k6-k5, ki_gol)
   rmomenta(6,:) = real(k3-k2+k4, ki_gol)
   !-------#[ Diagram 293:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='293'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = 0

      amp = + (contract6_4(coeffs%coeffs_293, rmomenta, b_set))
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
   !-------#] Diagram 293:
   !-------#[ Diagram 306:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='306'>"
         dbg_amp = amp
      end if
      b_set = packb((/6/))

      amp = amp + (contract5_3(coeffs%coeffs_306, rmomenta, b_set))
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
   !-------#] Diagram 306:
   !-------#[ Diagram 312:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='312'>"
         dbg_amp = amp
      end if
      b_set = packb((/1/))

      amp = amp + (contract5_3(coeffs%coeffs_312, rmomenta, b_set))
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
   !-------#] Diagram 312:
   if ((reduction_interoperation /= 1) .and. (samurai_scalar == 3) ) then
        call tear_down_golem95();
   end if

   100 format (A30,E24.16,A6,E24.16,A3)
end function contract_tensor_coefficients_group_19
!-----#] function contract_tensor_coefficients_group_19:
!-----#[ function contract_tensor_coefficients_group_20:
function     contract_tensor_coefficients_group_20(coeffs) result(amp)
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
   use form_factor_6p, only: a60
   use form_factor_type, only: form_factor, operator(+), operator(-)
   use p1_dbarc_epnebbbarg_config, only: debug_nlo_diagrams, logfile
   use p1_dbarc_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7, es234, es345, es12, es6, es671, es567, es23, &
   & es5, es123, es456, es712, es45, es56, es34, es71, &
   & es67
   use p1_dbarc_epnebbbarg_model
   implicit none
   type(tensrec_info_group20), intent(in) :: coeffs
   type(form_factor) :: amp, dbg_amp

   integer :: b_set
   real(ki_gol), dimension(6,0:3) :: rmomenta
   logical :: ev_diagram

   if(prev_ls.ne.6) then
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
      call allocation_s(6)
      set_ref = (/1, 2, 3, 4, 5, 6/)
      b_ref = packb(set_ref)
      call allocate_cache(6)
      s_mat => s_mat_c
      !------#] call sequence of initgolem95():
      prev_ls = 6
   !else
   !   reset_cache() is called by preparesmatrix()
   !   call reset_cache()
   end if
   s_mat(1,1)=real(0.0_ki, ki_gol)
   s_mat(1,2)=real(0.0_ki, ki_gol)
   s_mat(2,1)=s_mat(1,2)
   s_mat(1,3)=real(-es12-es71+es712, ki_gol)
   s_mat(3,1)=s_mat(1,3)
   s_mat(1,4)=real(-es671+es345+es67-mB**2-es12, ki_gol)
   s_mat(4,1)=s_mat(1,4)
   s_mat(1,5)=real(es34+es567-es234-es12, ki_gol)
   s_mat(5,1)=s_mat(1,5)
   s_mat(1,6)=real(es34, ki_gol)
   s_mat(6,1)=s_mat(1,6)
   s_mat(2,2)=real(0.0_ki, ki_gol)
   s_mat(2,3)=real(0.0_ki, ki_gol)
   s_mat(3,2)=s_mat(2,3)
   s_mat(2,4)=real(-mB**2+es67, ki_gol)
   s_mat(4,2)=s_mat(2,4)
   s_mat(2,5)=real(es567, ki_gol)
   s_mat(5,2)=s_mat(2,5)
   s_mat(2,6)=real(es234, ki_gol)
   s_mat(6,2)=s_mat(2,6)
   s_mat(3,3)=real(0.0_ki, ki_gol)
   s_mat(3,4)=real(0.0_ki, ki_gol)
   s_mat(4,3)=s_mat(3,4)
   s_mat(3,5)=real(es56, ki_gol)
   s_mat(5,3)=s_mat(3,5)
   s_mat(3,6)=real(-es567+es56+es234-es71, ki_gol)
   s_mat(6,3)=s_mat(3,6)
   s_mat(4,4)=real(-2.0_ki*mB**2, ki_gol)
   s_mat(4,5)=real(0.0_ki, ki_gol)
   s_mat(5,4)=s_mat(4,5)
   s_mat(4,6)=real(-es671-es567+es234+es67, ki_gol)
   s_mat(6,4)=s_mat(4,6)
   s_mat(5,5)=real(0.0_ki, ki_gol)
   s_mat(5,6)=real(0.0_ki, ki_gol)
   s_mat(6,5)=s_mat(5,6)
   s_mat(6,6)=real(0.0_ki, ki_gol)
   call preparesmatrix()
   rmomenta(1,:) = real(-k2, ki_gol)
   rmomenta(2,:) = 0.0_ki_gol
   rmomenta(3,:) = real(-k7, ki_gol)
   rmomenta(4,:) = real(-k7-k6, ki_gol)
   rmomenta(5,:) = real(-k7-k6-k5, ki_gol)
   rmomenta(6,:) = real(k3-k2+k4, ki_gol)
   !-------#[ Diagram 69:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='69'>"
         dbg_amp = 0.0_ki_gol
      end if
      b_set = packb((/4/))

      amp = + (contract5_4(coeffs%coeffs_69, rmomenta, b_set))
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
   !-------#] Diagram 69:
   !-------#[ Diagram 96:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='96'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,4/))

      amp = amp + (contract4_3(coeffs%coeffs_96, rmomenta, b_set))
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
   !-------#] Diagram 96:
   !-------#[ Diagram 113:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='113'>"
         dbg_amp = amp
      end if
      b_set = packb((/4,6/))

      amp = amp + (contract4_3(coeffs%coeffs_113, rmomenta, b_set))
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
   !-------#] Diagram 113:
   !-------#[ Diagram 123:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='123'>"
         dbg_amp = amp
      end if
      b_set = packb((/4,5/))

      amp = amp + (contract4_3(coeffs%coeffs_123, rmomenta, b_set))
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
   !-------#] Diagram 123:
   !-------#[ Diagram 297:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='297'>"
         dbg_amp = amp
      end if
      b_set = 0

      amp = amp + (contract6_4(coeffs%coeffs_297, rmomenta, b_set))
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
   !-------#] Diagram 297:
   !-------#[ Diagram 308:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='308'>"
         dbg_amp = amp
      end if
      b_set = packb((/6/))

      amp = amp + (contract5_3(coeffs%coeffs_308, rmomenta, b_set))
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
   !-------#] Diagram 308:
   !-------#[ Diagram 311:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='311'>"
         dbg_amp = amp
      end if
      b_set = packb((/1/))

      amp = amp + (contract5_3(coeffs%coeffs_311, rmomenta, b_set))
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
   !-------#] Diagram 311:
   !-------#[ Diagram 319:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='319'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,6/))

      amp = amp + (contract4_3(coeffs%coeffs_319, rmomenta, b_set))
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
   !-------#] Diagram 319:
   !-------#[ Diagram 334:
      if(debug_nlo_diagrams) then
         write(logfile,*) "<diagram index='334'>"
         dbg_amp = amp
      end if
      b_set = packb((/1,5,6/))

      amp = amp + (contract3_2(coeffs%coeffs_334, rmomenta, b_set))
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
   !-------#] Diagram 334:
   if ((reduction_interoperation /= 1) .and. (samurai_scalar == 3) ) then
        call tear_down_golem95();
   end if

   100 format (A30,E24.16,A6,E24.16,A3)
end function contract_tensor_coefficients_group_20
!-----#] function contract_tensor_coefficients_group_20:
!---#] contract tensor coefficients golem95:
!---#[ numetens golem95:
!-----#[ function numetens_group0:
function     numetens_group0(icut, Q, mu2) result(num)
   use tens_rec
   use p1_dbarc_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7
   use p1_dbarc_epnebbbarg_model
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
      R = real(k7+k6, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(k7, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = Q2
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 322:
   if(nonzero(0)) then
      diag = ctenseval3(Qg, coeffs_group0%coeffs_322)
      num = num + diag
   end if
   !-------#] Diagram 322:
end function numetens_group0
!-----#] function numetens_group0:
!-----#[ subroutine reduce_numetens_group0:
subroutine     reduce_numetens_group0(scale2,tot,totr,ok)
   use msamurai, only: samurai_rm, samurai_cm
   use madds, only: s_mat
   use options, only: samurai_out => iout
   use p1_dbarc_epnebbbarg_config, only: samurai_group_numerators, &
      samurai_istop, samurai_verbosity
   use p1_dbarc_epnebbbarg_kinematics
   use p1_dbarc_epnebbbarg_model
   use p1_dbarc_epnebbbarg_globalsl1, only: epspow
   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   integer, parameter :: effective_group_rank = 3
   real(ki_sam), dimension(4) :: msq
   real(ki_sam), dimension(4,4) :: Vi
   msq(1) = real(mB*mB, ki)
   Vi(1,(/4,1,2,3/)) = real(k7+k6, ki_sam)
   msq(2) = 0.0_ki_sam
   Vi(2,(/4,1,2,3/)) = real(k7, ki_sam)
   msq(3) = 0.0_ki_sam
   Vi(3,(/4,1,2,3/)) = real(0, ki_sam)
   msq(4) = real(mB*mB, ki)
   Vi(4,(/4,1,2,3/)) = real(-k5, ki_sam)
   !-----------#[ initialize invariants:
   allocate(s_mat(4, 4))
   s_mat(1, 1) = real(-2.0_ki*mB**2, ki_sam)
   s_mat(1, 2) = real(0.0_ki, ki_sam)
   s_mat(2, 1) = s_mat(1, 2)
   s_mat(1, 3) = real(-mB**2+es67, ki_sam)
   s_mat(3, 1) = s_mat(1, 3)
   s_mat(1, 4) = real(-2.0_ki*mB**2+es567, ki_sam)
   s_mat(4, 1) = s_mat(1, 4)
   s_mat(2, 2) = real(0.0_ki, ki_sam)
   s_mat(2, 3) = real(0.0_ki, ki_sam)
   s_mat(3, 2) = s_mat(2, 3)
   s_mat(2, 4) = real(mB**2-es56-es67+es567, ki_sam)
   s_mat(4, 2) = s_mat(2, 4)
   s_mat(3, 3) = real(0.0_ki, ki_sam)
   s_mat(3, 4) = real(0.0_ki, ki_sam)
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
   use p1_dbarc_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7
   use p1_dbarc_epnebbbarg_model
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
   case(1)
      nonzero(0) = .false.
      R = real(-k7-k5, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom2 = 0.0_ki
      denom3 = Q2
      R = real(k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
   case(10)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = Q2
      R = real(k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
   case(21)
      nonzero(0) = .false.
      R = real(-k7-k5, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
   case(210)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
   case(31)
      nonzero(0) = .false.
      R = real(-k7-k5, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom2 = 0.0_ki
      denom3 = Q2
      denom4 = 0.0_ki
   case(310)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = Q2
      denom4 = 0.0_ki
   case(321)
      nonzero(0) = .false.
      R = real(-k7-k5, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
   case(3210)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
   case default
      R = real(-k7-k5, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom3 = Q2
      R = real(k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 176:
   if(nonzero(0)) then
      diag = ctenseval2(Qg, coeffs_group1%coeffs_176)
      diag = diag * denom2
      num = num + diag
   end if
   !-------#] Diagram 176:
   !-------#[ Diagram 318:
   if(nonzero(1)) then
      diag = ctenseval3(Qg, coeffs_group1%coeffs_318)
      num = num + diag
   end if
   !-------#] Diagram 318:
end function numetens_group1
!-----#] function numetens_group1:
!-----#[ subroutine reduce_numetens_group1:
subroutine     reduce_numetens_group1(scale2,tot,totr,ok)
   use msamurai, only: samurai_rm, samurai_cm
   use madds, only: s_mat
   use options, only: samurai_out => iout
   use p1_dbarc_epnebbbarg_config, only: samurai_group_numerators, &
      samurai_istop, samurai_verbosity
   use p1_dbarc_epnebbbarg_kinematics
   use p1_dbarc_epnebbbarg_model
   use p1_dbarc_epnebbbarg_globalsl1, only: epspow
   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   integer, parameter :: effective_group_rank = 3
   real(ki_sam), dimension(4) :: msq
   real(ki_sam), dimension(4,4) :: Vi
   msq(1) = real(mB*mB, ki)
   Vi(1,(/4,1,2,3/)) = real(-k7-k5, ki_sam)
   msq(2) = real(mB*mB, ki)
   Vi(2,(/4,1,2,3/)) = real(-k5, ki_sam)
   msq(3) = 0.0_ki_sam
   Vi(3,(/4,1,2,3/)) = real(0, ki_sam)
   msq(4) = real(mB*mB, ki)
   Vi(4,(/4,1,2,3/)) = real(k6, ki_sam)
   !-----------#[ initialize invariants:
   allocate(s_mat(4, 4))
   s_mat(1, 1) = real(-2.0_ki*mB**2, ki_sam)
   s_mat(1, 2) = real(-2.0_ki*mB**2, ki_sam)
   s_mat(2, 1) = s_mat(1, 2)
   s_mat(1, 3) = real(mB**2-es56-es67+es567, ki_sam)
   s_mat(3, 1) = s_mat(1, 3)
   s_mat(1, 4) = real(-2.0_ki*mB**2+es567, ki_sam)
   s_mat(4, 1) = s_mat(1, 4)
   s_mat(2, 2) = real(-2.0_ki*mB**2, ki_sam)
   s_mat(2, 3) = real(0.0_ki, ki_sam)
   s_mat(3, 2) = s_mat(2, 3)
   s_mat(2, 4) = real(-2.0_ki*mB**2+es56, ki_sam)
   s_mat(4, 2) = s_mat(2, 4)
   s_mat(3, 3) = real(0.0_ki, ki_sam)
   s_mat(3, 4) = real(0.0_ki, ki_sam)
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
   use p1_dbarc_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7
   use p1_dbarc_epnebbbarg_model
   implicit none
   integer, intent(in) :: icut
   complex(ki_sam), dimension(4), intent(in) :: Q
   complex(ki_sam), intent(in) :: mu2
   complex(ki_sam) :: num

   logical, dimension(0:6-1) :: nonzero
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
      nonzero(0) = .false.
      nonzero(1) = .false.
      denom1 = 0.0_ki
      R = real(k6, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom3 = Q2
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
   case(1)
      nonzero(3) = .false.
      nonzero(4) = .false.
      R = real(k7+k6, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom2 = 0.0_ki
      denom3 = Q2
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
   case(10)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = Q2
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
   case(2)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      R = real(k7+k6, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(k6, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom3 = 0.0_ki
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
   case(20)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      denom1 = 0.0_ki
      R = real(k6, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom3 = 0.0_ki
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
   case(21)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      R = real(k7+k6, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
   case(210)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
   case(30)
      nonzero(0) = .false.
      nonzero(1) = .false.
      denom1 = 0.0_ki
      R = real(k6, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom3 = Q2
      denom4 = 0.0_ki
   case(31)
      nonzero(3) = .false.
      nonzero(4) = .false.
      R = real(k7+k6, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom2 = 0.0_ki
      denom3 = Q2
      denom4 = 0.0_ki
   case(310)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = Q2
      denom4 = 0.0_ki
   case(32)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      R = real(k7+k6, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(k6, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom3 = 0.0_ki
      denom4 = 0.0_ki
   case(320)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      denom1 = 0.0_ki
      R = real(k6, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom3 = 0.0_ki
      denom4 = 0.0_ki
   case(321)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      R = real(k7+k6, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
   case(3210)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
   case default
      R = real(k7+k6, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(k6, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom3 = Q2
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 28:
   if(nonzero(0)) then
      diag = ctenseval2(Qg, coeffs_group2%coeffs_28)
      diag = diag * denom1 * denom3
      num = num + diag
   end if
   !-------#] Diagram 28:
   !-------#[ Diagram 87:
   if(nonzero(1)) then
      diag = ctenseval2(Qg, coeffs_group2%coeffs_87)
      diag = diag * denom1
      num = num + diag
   end if
   !-------#] Diagram 87:
   !-------#[ Diagram 153:
   if(nonzero(2)) then
      diag = ctenseval3(Qg, coeffs_group2%coeffs_153)
      diag = diag * denom3
      num = num + diag
   end if
   !-------#] Diagram 153:
   !-------#[ Diagram 180:
   if(nonzero(3)) then
      diag = ctenseval2(Qg, coeffs_group2%coeffs_180)
      diag = diag * denom2
      num = num + diag
   end if
   !-------#] Diagram 180:
   !-------#[ Diagram 244:
   if(nonzero(4)) then
      diag = ctenseval2(Qg, coeffs_group2%coeffs_244)
      diag = diag * denom2 * denom3
      num = num + diag
   end if
   !-------#] Diagram 244:
   !-------#[ Diagram 320:
   if(nonzero(5)) then
      diag = ctenseval3(Qg, coeffs_group2%coeffs_320)
      num = num + diag
   end if
   !-------#] Diagram 320:
end function numetens_group2
!-----#] function numetens_group2:
!-----#[ subroutine reduce_numetens_group2:
subroutine     reduce_numetens_group2(scale2,tot,totr,ok)
   use msamurai, only: samurai_rm, samurai_cm
   use madds, only: s_mat
   use options, only: samurai_out => iout
   use p1_dbarc_epnebbbarg_config, only: samurai_group_numerators, &
      samurai_istop, samurai_verbosity
   use p1_dbarc_epnebbbarg_kinematics
   use p1_dbarc_epnebbbarg_model
   use p1_dbarc_epnebbbarg_globalsl1, only: epspow
   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   integer, parameter :: effective_group_rank = 4
   real(ki_sam), dimension(4) :: msq
   real(ki_sam), dimension(4,4) :: Vi
   msq(1) = real(mB*mB, ki)
   Vi(1,(/4,1,2,3/)) = real(k7+k6, ki_sam)
   msq(2) = real(mB*mB, ki)
   Vi(2,(/4,1,2,3/)) = real(k6, ki_sam)
   msq(3) = 0.0_ki_sam
   Vi(3,(/4,1,2,3/)) = real(0, ki_sam)
   msq(4) = real(mB*mB, ki)
   Vi(4,(/4,1,2,3/)) = real(-k5, ki_sam)
   !-----------#[ initialize invariants:
   allocate(s_mat(4, 4))
   s_mat(1, 1) = real(-2.0_ki*mB**2, ki_sam)
   s_mat(1, 2) = real(-2.0_ki*mB**2, ki_sam)
   s_mat(2, 1) = s_mat(1, 2)
   s_mat(1, 3) = real(-mB**2+es67, ki_sam)
   s_mat(3, 1) = s_mat(1, 3)
   s_mat(1, 4) = real(-2.0_ki*mB**2+es567, ki_sam)
   s_mat(4, 1) = s_mat(1, 4)
   s_mat(2, 2) = real(-2.0_ki*mB**2, ki_sam)
   s_mat(2, 3) = real(0.0_ki, ki_sam)
   s_mat(3, 2) = s_mat(2, 3)
   s_mat(2, 4) = real(-2.0_ki*mB**2+es56, ki_sam)
   s_mat(4, 2) = s_mat(2, 4)
   s_mat(3, 3) = real(0.0_ki, ki_sam)
   s_mat(3, 4) = real(0.0_ki, ki_sam)
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
   use p1_dbarc_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7
   use p1_dbarc_epnebbbarg_model
   implicit none
   integer, intent(in) :: icut
   complex(ki_sam), dimension(4), intent(in) :: Q
   complex(ki_sam), intent(in) :: mu2
   complex(ki_sam) :: num

   logical, dimension(0:2-1) :: nonzero
   complex(ki_gol), dimension(0:3) :: Qg
   real(ki_gol), dimension(0:3) :: R
   complex(ki_gol) :: Q2
   complex(ki_sam) :: diag, denom1, denom2, denom3, denom4, denom5

   nonzero(:) = .true.
   Qg(0) = Q(4)
   Qg(1:3) = Q(1:3)
   Q2 = Qg(0)*Qg(0) - Qg(1)*Qg(1) - Qg(2)*Qg(2) - Qg(3)*Qg(3) - mu2

   select case(icut)
   case(3)
      nonzero(0) = .false.
      R = real(-k2+k6+k5, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k2, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = Q2
      denom4 = 0.0_ki
      R = real(k3-k2+k6+k5+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(30)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      R = real(-k2, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = Q2
      denom4 = 0.0_ki
      R = real(k3-k2+k6+k5+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(31)
      nonzero(0) = .false.
      R = real(-k2+k6+k5, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = Q2
      denom4 = 0.0_ki
      R = real(k3-k2+k6+k5+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(310)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = Q2
      denom4 = 0.0_ki
      R = real(k3-k2+k6+k5+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(32)
      nonzero(0) = .false.
      R = real(-k2+k6+k5, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k2, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(k3-k2+k6+k5+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(320)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      R = real(-k2, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(k3-k2+k6+k5+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(321)
      nonzero(0) = .false.
      R = real(-k2+k6+k5, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(k3-k2+k6+k5+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(3210)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(k3-k2+k6+k5+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(43)
      nonzero(0) = .false.
      R = real(-k2+k6+k5, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k2, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = Q2
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(430)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      R = real(-k2, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = Q2
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(431)
      nonzero(0) = .false.
      R = real(-k2+k6+k5, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = Q2
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(4310)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = Q2
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(432)
      nonzero(0) = .false.
      R = real(-k2+k6+k5, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k2, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(4320)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      R = real(-k2, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(4321)
      nonzero(0) = .false.
      R = real(-k2+k6+k5, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case default
      R = real(-k2+k6+k5, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k2, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = Q2
      R = real(-k7, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k6+k5+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 13:
   if(nonzero(0)) then
      diag = ctenseval3(Qg, coeffs_group3%coeffs_13)
      diag = diag * denom4
      num = num + diag
   end if
   !-------#] Diagram 13:
   !-------#[ Diagram 84:
   if(nonzero(1)) then
      diag = ctenseval4(Qg, coeffs_group3%coeffs_84)
      num = num + diag
   end if
   !-------#] Diagram 84:
end function numetens_group3
!-----#] function numetens_group3:
!-----#[ subroutine reduce_numetens_group3:
subroutine     reduce_numetens_group3(scale2,tot,totr,ok)
   use msamurai, only: samurai_rm, samurai_cm
   use madds, only: s_mat
   use options, only: samurai_out => iout
   use p1_dbarc_epnebbbarg_config, only: samurai_group_numerators, &
      samurai_istop, samurai_verbosity
   use p1_dbarc_epnebbbarg_kinematics
   use p1_dbarc_epnebbbarg_model
   use p1_dbarc_epnebbbarg_globalsl1, only: epspow
   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   integer, parameter :: effective_group_rank = 4
   real(ki_sam), dimension(5) :: msq
   real(ki_sam), dimension(5,4) :: Vi
   msq(1) = 0.0_ki_sam
   Vi(1,(/4,1,2,3/)) = real(-k2+k6+k5, ki_sam)
   msq(2) = 0.0_ki_sam
   Vi(2,(/4,1,2,3/)) = real(-k2, ki_sam)
   msq(3) = 0.0_ki_sam
   Vi(3,(/4,1,2,3/)) = real(0, ki_sam)
   msq(4) = 0.0_ki_sam
   Vi(4,(/4,1,2,3/)) = real(-k7, ki_sam)
   msq(5) = 0.0_ki_sam
   Vi(5,(/4,1,2,3/)) = real(k3-k2+k6+k5+k4, ki_sam)
   !-----------#[ initialize invariants:
   allocate(s_mat(5, 5))
   s_mat(1, 1) = real(0.0_ki, ki_sam)
   s_mat(1, 2) = real(es56, ki_sam)
   s_mat(2, 1) = s_mat(1, 2)
   s_mat(1, 3) = real(es34+es56-es234+es71-es712, ki_sam)
   s_mat(3, 1) = s_mat(1, 3)
   s_mat(1, 4) = real(es34+es567-es234-es12, ki_sam)
   s_mat(4, 1) = s_mat(1, 4)
   s_mat(1, 5) = real(es34, ki_sam)
   s_mat(5, 1) = s_mat(1, 5)
   s_mat(2, 2) = real(0.0_ki, ki_sam)
   s_mat(2, 3) = real(0.0_ki, ki_sam)
   s_mat(3, 2) = s_mat(2, 3)
   s_mat(2, 4) = real(-es12-es71+es712, ki_sam)
   s_mat(4, 2) = s_mat(2, 4)
   s_mat(2, 5) = real(es712, ki_sam)
   s_mat(5, 2) = s_mat(2, 5)
   s_mat(3, 3) = real(0.0_ki, ki_sam)
   s_mat(3, 4) = real(0.0_ki, ki_sam)
   s_mat(4, 3) = s_mat(3, 4)
   s_mat(3, 5) = real(es71, ki_sam)
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
   use p1_dbarc_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7
   use p1_dbarc_epnebbbarg_model
   implicit none
   integer, intent(in) :: icut
   complex(ki_sam), dimension(4), intent(in) :: Q
   complex(ki_sam), intent(in) :: mu2
   complex(ki_sam) :: num

   logical, dimension(0:2-1) :: nonzero
   complex(ki_gol), dimension(0:3) :: Qg
   real(ki_gol), dimension(0:3) :: R
   complex(ki_gol) :: Q2
   complex(ki_sam) :: diag, denom1, denom2, denom3, denom4, denom5

   nonzero(:) = .true.
   Qg(0) = Q(4)
   Qg(1:3) = Q(1:3)
   Q2 = Qg(0)*Qg(0) - Qg(1)*Qg(1) - Qg(2)*Qg(2) - Qg(3)*Qg(3) - mu2

   select case(icut)
   case(2)
      nonzero(0) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k6+k5+k4, ki_gol)
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
   case(20)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      R = real(k3-k2+k6+k5+k4, ki_gol)
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
   case(21)
      nonzero(0) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = Q2
      R = real(-k2, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(210)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = Q2
      R = real(-k2, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(32)
      nonzero(0) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k6+k5+k4, ki_gol)
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
   case(320)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      R = real(k3-k2+k6+k5+k4, ki_gol)
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
   case(321)
      nonzero(0) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k2, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(3210)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k2, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(42)
      nonzero(0) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k6+k5+k4, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = Q2
      denom5 = 0.0_ki
   case(420)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      R = real(k3-k2+k6+k5+k4, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = Q2
      denom5 = 0.0_ki
   case(421)
      nonzero(0) = .false.
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
      nonzero(0) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = Q2
      denom5 = 0.0_ki
   case(432)
      nonzero(0) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k6+k5+k4, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(4320)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      R = real(k3-k2+k6+k5+k4, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(4321)
      nonzero(0) = .false.
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
      R = real(k3-k2+k6+k5+k4, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = Q2
      R = real(-k2, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 12:
   if(nonzero(0)) then
      diag = ctenseval3(Qg, coeffs_group4%coeffs_12)
      diag = diag * denom3
      num = num + diag
   end if
   !-------#] Diagram 12:
   !-------#[ Diagram 85:
   if(nonzero(1)) then
      diag = ctenseval4(Qg, coeffs_group4%coeffs_85)
      num = num + diag
   end if
   !-------#] Diagram 85:
end function numetens_group4
!-----#] function numetens_group4:
!-----#[ subroutine reduce_numetens_group4:
subroutine     reduce_numetens_group4(scale2,tot,totr,ok)
   use msamurai, only: samurai_rm, samurai_cm
   use madds, only: s_mat
   use options, only: samurai_out => iout
   use p1_dbarc_epnebbbarg_config, only: samurai_group_numerators, &
      samurai_istop, samurai_verbosity
   use p1_dbarc_epnebbbarg_kinematics
   use p1_dbarc_epnebbbarg_model
   use p1_dbarc_epnebbbarg_globalsl1, only: epspow
   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   integer, parameter :: effective_group_rank = 4
   real(ki_sam), dimension(5) :: msq
   real(ki_sam), dimension(5,4) :: Vi
   msq(1) = 0.0_ki_sam
   Vi(1,(/4,1,2,3/)) = real(k3-k2+k4, ki_sam)
   msq(2) = 0.0_ki_sam
   Vi(2,(/4,1,2,3/)) = real(k3-k2+k6+k5+k4, ki_sam)
   msq(3) = 0.0_ki_sam
   Vi(3,(/4,1,2,3/)) = real(-k7, ki_sam)
   msq(4) = 0.0_ki_sam
   Vi(4,(/4,1,2,3/)) = real(0, ki_sam)
   msq(5) = 0.0_ki_sam
   Vi(5,(/4,1,2,3/)) = real(-k2, ki_sam)
   !-----------#[ initialize invariants:
   allocate(s_mat(5, 5))
   s_mat(1, 1) = real(0.0_ki, ki_sam)
   s_mat(1, 2) = real(es56, ki_sam)
   s_mat(2, 1) = s_mat(1, 2)
   s_mat(1, 3) = real(-es567+es56+es234-es71, ki_sam)
   s_mat(3, 1) = s_mat(1, 3)
   s_mat(1, 4) = real(es234, ki_sam)
   s_mat(4, 1) = s_mat(1, 4)
   s_mat(1, 5) = real(es34, ki_sam)
   s_mat(5, 1) = s_mat(1, 5)
   s_mat(2, 2) = real(0.0_ki, ki_sam)
   s_mat(2, 3) = real(0.0_ki, ki_sam)
   s_mat(3, 2) = s_mat(2, 3)
   s_mat(2, 4) = real(es71, ki_sam)
   s_mat(4, 2) = s_mat(2, 4)
   s_mat(2, 5) = real(es712, ki_sam)
   s_mat(5, 2) = s_mat(2, 5)
   s_mat(3, 3) = real(0.0_ki, ki_sam)
   s_mat(3, 4) = real(0.0_ki, ki_sam)
   s_mat(4, 3) = s_mat(3, 4)
   s_mat(3, 5) = real(-es12-es71+es712, ki_sam)
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
!-----#[ function numetens_group5:
function     numetens_group5(icut, Q, mu2) result(num)
   use tens_rec
   use p1_dbarc_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7
   use p1_dbarc_epnebbbarg_model
   implicit none
   integer, intent(in) :: icut
   complex(ki_sam), dimension(4), intent(in) :: Q
   complex(ki_sam), intent(in) :: mu2
   complex(ki_sam) :: num

   logical, dimension(0:2-1) :: nonzero
   complex(ki_gol), dimension(0:3) :: Qg
   real(ki_gol), dimension(0:3) :: R
   complex(ki_gol) :: Q2
   complex(ki_sam) :: diag, denom1, denom2, denom3, denom4, denom5

   nonzero(:) = .true.
   Qg(0) = Q(4)
   Qg(1:3) = Q(1:3)
   Q2 = Qg(0)*Qg(0) - Qg(1)*Qg(1) - Qg(2)*Qg(2) - Qg(3)*Qg(3) - mu2

   select case(icut)
   case(3)
      nonzero(0) = .false.
      R = real(-k3-k7-k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k3-k7-k6-k5-k4, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k2, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      R = real(-k7, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(30)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      R = real(-k3-k7-k6-k5-k4, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k2, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      R = real(-k7, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(31)
      nonzero(0) = .false.
      R = real(-k3-k7-k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k2, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      R = real(-k7, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(310)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k2, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      R = real(-k7, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(32)
      nonzero(0) = .false.
      R = real(-k3-k7-k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k3-k7-k6-k5-k4, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k7, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(320)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      R = real(-k3-k7-k6-k5-k4, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k7, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(321)
      nonzero(0) = .false.
      R = real(-k3-k7-k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k7, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(3210)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k7, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(43)
      nonzero(0) = .false.
      R = real(-k3-k7-k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k3-k7-k6-k5-k4, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k2, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(430)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      R = real(-k3-k7-k6-k5-k4, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k2, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(431)
      nonzero(0) = .false.
      R = real(-k3-k7-k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k2, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(4310)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k2, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(432)
      nonzero(0) = .false.
      R = real(-k3-k7-k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k3-k7-k6-k5-k4, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(4320)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      R = real(-k3-k7-k6-k5-k4, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(4321)
      nonzero(0) = .false.
      R = real(-k3-k7-k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case default
      R = real(-k3-k7-k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k3-k7-k6-k5-k4, ki_gol)
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
      R = real(-k7, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 15:
   if(nonzero(0)) then
      diag = ctenseval3(Qg, coeffs_group5%coeffs_15)
      diag = diag * denom4
      num = num + diag
   end if
   !-------#] Diagram 15:
   !-------#[ Diagram 83:
   if(nonzero(1)) then
      diag = ctenseval4(Qg, coeffs_group5%coeffs_83)
      num = num + diag
   end if
   !-------#] Diagram 83:
end function numetens_group5
!-----#] function numetens_group5:
!-----#[ subroutine reduce_numetens_group5:
subroutine     reduce_numetens_group5(scale2,tot,totr,ok)
   use msamurai, only: samurai_rm, samurai_cm
   use madds, only: s_mat
   use options, only: samurai_out => iout
   use p1_dbarc_epnebbbarg_config, only: samurai_group_numerators, &
      samurai_istop, samurai_verbosity
   use p1_dbarc_epnebbbarg_kinematics
   use p1_dbarc_epnebbbarg_model
   use p1_dbarc_epnebbbarg_globalsl1, only: epspow
   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   integer, parameter :: effective_group_rank = 4
   real(ki_sam), dimension(5) :: msq
   real(ki_sam), dimension(5,4) :: Vi
   msq(1) = 0.0_ki_sam
   Vi(1,(/4,1,2,3/)) = real(-k3-k7-k4, ki_sam)
   msq(2) = 0.0_ki_sam
   Vi(2,(/4,1,2,3/)) = real(-k3-k7-k6-k5-k4, ki_sam)
   msq(3) = 0.0_ki_sam
   Vi(3,(/4,1,2,3/)) = real(-k2, ki_sam)
   msq(4) = 0.0_ki_sam
   Vi(4,(/4,1,2,3/)) = real(0, ki_sam)
   msq(5) = 0.0_ki_sam
   Vi(5,(/4,1,2,3/)) = real(-k7, ki_sam)
   !-----------#[ initialize invariants:
   allocate(s_mat(5, 5))
   s_mat(1, 1) = real(0.0_ki, ki_sam)
   s_mat(1, 2) = real(es56, ki_sam)
   s_mat(2, 1) = s_mat(1, 2)
   s_mat(1, 3) = real(-es567+es56+es234-es71, ki_sam)
   s_mat(3, 1) = s_mat(1, 3)
   s_mat(1, 4) = real(es34-es567+es56+es12-es712, ki_sam)
   s_mat(4, 1) = s_mat(1, 4)
   s_mat(1, 5) = real(es34, ki_sam)
   s_mat(5, 1) = s_mat(1, 5)
   s_mat(2, 2) = real(0.0_ki, ki_sam)
   s_mat(2, 3) = real(0.0_ki, ki_sam)
   s_mat(3, 2) = s_mat(2, 3)
   s_mat(2, 4) = real(es12, ki_sam)
   s_mat(4, 2) = s_mat(2, 4)
   s_mat(2, 5) = real(es712, ki_sam)
   s_mat(5, 2) = s_mat(2, 5)
   s_mat(3, 3) = real(0.0_ki, ki_sam)
   s_mat(3, 4) = real(0.0_ki, ki_sam)
   s_mat(4, 3) = s_mat(3, 4)
   s_mat(3, 5) = real(-es12-es71+es712, ki_sam)
   s_mat(5, 3) = s_mat(3, 5)
   s_mat(4, 4) = real(0.0_ki, ki_sam)
   s_mat(4, 5) = real(0.0_ki, ki_sam)
   s_mat(5, 4) = s_mat(4, 5)
   s_mat(5, 5) = real(0.0_ki, ki_sam)
   !-----------#] initialize invariants:

   if(samurai_verbosity > 0) then
      write(samurai_out,*) "[golem-2.0] numetens_group5"
      write(samurai_out,*) "[golem-2.0] epspow=", epspow
   end if
   call samurai_rm(numetens_group5, tot, totr, Vi, msq, 5, &
      & effective_group_rank, samurai_istop, scale2, ok)
   !-----------#[ deallocate invariants:
   deallocate(s_mat)
   !-----------#] deallocate invariants:
end subroutine reduce_numetens_group5
!-----#] subroutine reduce_numetens_group5:
!-----#[ function numetens_group6:
function     numetens_group6(icut, Q, mu2) result(num)
   use tens_rec
   use p1_dbarc_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7
   use p1_dbarc_epnebbbarg_model
   implicit none
   integer, intent(in) :: icut
   complex(ki_sam), dimension(4), intent(in) :: Q
   complex(ki_sam), intent(in) :: mu2
   complex(ki_sam) :: num

   logical, dimension(0:2-1) :: nonzero
   complex(ki_gol), dimension(0:3) :: Qg
   real(ki_gol), dimension(0:3) :: R
   complex(ki_gol) :: Q2
   complex(ki_sam) :: diag, denom1, denom2, denom3, denom4, denom5

   nonzero(:) = .true.
   Qg(0) = Q(4)
   Qg(1:3) = Q(1:3)
   Q2 = Qg(0)*Qg(0) - Qg(1)*Qg(1) - Qg(2)*Qg(2) - Qg(3)*Qg(3) - mu2

   select case(icut)
   case(2)
      nonzero(0) = .false.
      R = real(-k7-k6-k5, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k2, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k3-k7-k6-k5-k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(20)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      R = real(-k7, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k2, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k3-k7-k6-k5-k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(21)
      nonzero(0) = .false.
      R = real(-k7-k6-k5, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k2, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k3-k7-k6-k5-k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(210)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k2, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k3-k7-k6-k5-k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(32)
      nonzero(0) = .false.
      R = real(-k7-k6-k5, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k3-k7-k6-k5-k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(320)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      R = real(-k7, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k3-k7-k6-k5-k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(321)
      nonzero(0) = .false.
      R = real(-k7-k6-k5, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k3-k7-k6-k5-k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(3210)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k3-k7-k6-k5-k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(42)
      nonzero(0) = .false.
      R = real(-k7-k6-k5, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k2, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom5 = 0.0_ki
   case(420)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      R = real(-k7, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k2, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom5 = 0.0_ki
   case(421)
      nonzero(0) = .false.
      R = real(-k7-k6-k5, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k2, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom5 = 0.0_ki
   case(4210)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k2, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom5 = 0.0_ki
   case(432)
      nonzero(0) = .false.
      R = real(-k7-k6-k5, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(4320)
      nonzero(0) = .false.
      denom1 = 0.0_ki
      R = real(-k7, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(4321)
      nonzero(0) = .false.
      R = real(-k7-k6-k5, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case default
      R = real(-k7-k6-k5, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = Q2
      R = real(-k2, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k3-k7-k6-k5-k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 14:
   if(nonzero(0)) then
      diag = ctenseval3(Qg, coeffs_group6%coeffs_14)
      diag = diag * denom3
      num = num + diag
   end if
   !-------#] Diagram 14:
   !-------#[ Diagram 82:
   if(nonzero(1)) then
      diag = ctenseval4(Qg, coeffs_group6%coeffs_82)
      num = num + diag
   end if
   !-------#] Diagram 82:
end function numetens_group6
!-----#] function numetens_group6:
!-----#[ subroutine reduce_numetens_group6:
subroutine     reduce_numetens_group6(scale2,tot,totr,ok)
   use msamurai, only: samurai_rm, samurai_cm
   use madds, only: s_mat
   use options, only: samurai_out => iout
   use p1_dbarc_epnebbbarg_config, only: samurai_group_numerators, &
      samurai_istop, samurai_verbosity
   use p1_dbarc_epnebbbarg_kinematics
   use p1_dbarc_epnebbbarg_model
   use p1_dbarc_epnebbbarg_globalsl1, only: epspow
   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   integer, parameter :: effective_group_rank = 4
   real(ki_sam), dimension(5) :: msq
   real(ki_sam), dimension(5,4) :: Vi
   msq(1) = 0.0_ki_sam
   Vi(1,(/4,1,2,3/)) = real(-k7-k6-k5, ki_sam)
   msq(2) = 0.0_ki_sam
   Vi(2,(/4,1,2,3/)) = real(-k7, ki_sam)
   msq(3) = 0.0_ki_sam
   Vi(3,(/4,1,2,3/)) = real(0, ki_sam)
   msq(4) = 0.0_ki_sam
   Vi(4,(/4,1,2,3/)) = real(-k2, ki_sam)
   msq(5) = 0.0_ki_sam
   Vi(5,(/4,1,2,3/)) = real(-k3-k7-k6-k5-k4, ki_sam)
   !-----------#[ initialize invariants:
   allocate(s_mat(5, 5))
   s_mat(1, 1) = real(0.0_ki, ki_sam)
   s_mat(1, 2) = real(es56, ki_sam)
   s_mat(2, 1) = s_mat(1, 2)
   s_mat(1, 3) = real(es567, ki_sam)
   s_mat(3, 1) = s_mat(1, 3)
   s_mat(1, 4) = real(es34+es567-es234-es12, ki_sam)
   s_mat(4, 1) = s_mat(1, 4)
   s_mat(1, 5) = real(es34, ki_sam)
   s_mat(5, 1) = s_mat(1, 5)
   s_mat(2, 2) = real(0.0_ki, ki_sam)
   s_mat(2, 3) = real(0.0_ki, ki_sam)
   s_mat(3, 2) = s_mat(2, 3)
   s_mat(2, 4) = real(-es12-es71+es712, ki_sam)
   s_mat(4, 2) = s_mat(2, 4)
   s_mat(2, 5) = real(es712, ki_sam)
   s_mat(5, 2) = s_mat(2, 5)
   s_mat(3, 3) = real(0.0_ki, ki_sam)
   s_mat(3, 4) = real(0.0_ki, ki_sam)
   s_mat(4, 3) = s_mat(3, 4)
   s_mat(3, 5) = real(es12, ki_sam)
   s_mat(5, 3) = s_mat(3, 5)
   s_mat(4, 4) = real(0.0_ki, ki_sam)
   s_mat(4, 5) = real(0.0_ki, ki_sam)
   s_mat(5, 4) = s_mat(4, 5)
   s_mat(5, 5) = real(0.0_ki, ki_sam)
   !-----------#] initialize invariants:

   if(samurai_verbosity > 0) then
      write(samurai_out,*) "[golem-2.0] numetens_group6"
      write(samurai_out,*) "[golem-2.0] epspow=", epspow
   end if
   call samurai_rm(numetens_group6, tot, totr, Vi, msq, 5, &
      & effective_group_rank, samurai_istop, scale2, ok)
   !-----------#[ deallocate invariants:
   deallocate(s_mat)
   !-----------#] deallocate invariants:
end subroutine reduce_numetens_group6
!-----#] subroutine reduce_numetens_group6:
!-----#[ function numetens_group7:
function     numetens_group7(icut, Q, mu2) result(num)
   use tens_rec
   use p1_dbarc_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7
   use p1_dbarc_epnebbbarg_model
   implicit none
   integer, intent(in) :: icut
   complex(ki_sam), dimension(4), intent(in) :: Q
   complex(ki_sam), intent(in) :: mu2
   complex(ki_sam) :: num

   logical, dimension(0:1-1) :: nonzero
   complex(ki_gol), dimension(0:3) :: Qg
   real(ki_gol), dimension(0:3) :: R
   complex(ki_gol) :: Q2
   complex(ki_sam) :: diag, denom1, denom2, denom3, denom4, denom5

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
      R = real(-k3-k7-k4, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k3-k7-k6-k5-k4, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k2, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom5 = Q2
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 68:
   if(nonzero(0)) then
      diag = ctenseval4(Qg, coeffs_group7%coeffs_68)
      num = num + diag
   end if
   !-------#] Diagram 68:
end function numetens_group7
!-----#] function numetens_group7:
!-----#[ subroutine reduce_numetens_group7:
subroutine     reduce_numetens_group7(scale2,tot,totr,ok)
   use msamurai, only: samurai_rm, samurai_cm
   use madds, only: s_mat
   use options, only: samurai_out => iout
   use p1_dbarc_epnebbbarg_config, only: samurai_group_numerators, &
      samurai_istop, samurai_verbosity
   use p1_dbarc_epnebbbarg_kinematics
   use p1_dbarc_epnebbbarg_model
   use p1_dbarc_epnebbbarg_globalsl1, only: epspow
   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   integer, parameter :: effective_group_rank = 4
   real(ki_sam), dimension(5) :: msq
   real(ki_sam), dimension(5,4) :: Vi
   msq(1) = 0.0_ki_sam
   Vi(1,(/4,1,2,3/)) = real(-k3-k4, ki_sam)
   msq(2) = 0.0_ki_sam
   Vi(2,(/4,1,2,3/)) = real(-k3-k7-k4, ki_sam)
   msq(3) = 0.0_ki_sam
   Vi(3,(/4,1,2,3/)) = real(-k3-k7-k6-k5-k4, ki_sam)
   msq(4) = 0.0_ki_sam
   Vi(4,(/4,1,2,3/)) = real(-k2, ki_sam)
   msq(5) = 0.0_ki_sam
   Vi(5,(/4,1,2,3/)) = real(0, ki_sam)
   !-----------#[ initialize invariants:
   allocate(s_mat(5, 5))
   s_mat(1, 1) = real(0.0_ki, ki_sam)
   s_mat(1, 2) = real(0.0_ki, ki_sam)
   s_mat(2, 1) = s_mat(1, 2)
   s_mat(1, 3) = real(es567, ki_sam)
   s_mat(3, 1) = s_mat(1, 3)
   s_mat(1, 4) = real(es234, ki_sam)
   s_mat(4, 1) = s_mat(1, 4)
   s_mat(1, 5) = real(es34, ki_sam)
   s_mat(5, 1) = s_mat(1, 5)
   s_mat(2, 2) = real(0.0_ki, ki_sam)
   s_mat(2, 3) = real(es56, ki_sam)
   s_mat(3, 2) = s_mat(2, 3)
   s_mat(2, 4) = real(-es567+es56+es234-es71, ki_sam)
   s_mat(4, 2) = s_mat(2, 4)
   s_mat(2, 5) = real(es34-es567+es56+es12-es712, ki_sam)
   s_mat(5, 2) = s_mat(2, 5)
   s_mat(3, 3) = real(0.0_ki, ki_sam)
   s_mat(3, 4) = real(0.0_ki, ki_sam)
   s_mat(4, 3) = s_mat(3, 4)
   s_mat(3, 5) = real(es12, ki_sam)
   s_mat(5, 3) = s_mat(3, 5)
   s_mat(4, 4) = real(0.0_ki, ki_sam)
   s_mat(4, 5) = real(0.0_ki, ki_sam)
   s_mat(5, 4) = s_mat(4, 5)
   s_mat(5, 5) = real(0.0_ki, ki_sam)
   !-----------#] initialize invariants:

   if(samurai_verbosity > 0) then
      write(samurai_out,*) "[golem-2.0] numetens_group7"
      write(samurai_out,*) "[golem-2.0] epspow=", epspow
   end if
   call samurai_rm(numetens_group7, tot, totr, Vi, msq, 5, &
      & effective_group_rank, samurai_istop, scale2, ok)
   !-----------#[ deallocate invariants:
   deallocate(s_mat)
   !-----------#] deallocate invariants:
end subroutine reduce_numetens_group7
!-----#] subroutine reduce_numetens_group7:
!-----#[ function numetens_group8:
function     numetens_group8(icut, Q, mu2) result(num)
   use tens_rec
   use p1_dbarc_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7
   use p1_dbarc_epnebbbarg_model
   implicit none
   integer, intent(in) :: icut
   complex(ki_sam), dimension(4), intent(in) :: Q
   complex(ki_sam), intent(in) :: mu2
   complex(ki_sam) :: num

   logical, dimension(0:2-1) :: nonzero
   complex(ki_gol), dimension(0:3) :: Qg
   real(ki_gol), dimension(0:3) :: R
   complex(ki_gol) :: Q2
   complex(ki_sam) :: diag, denom1, denom2, denom3, denom4, denom5

   nonzero(:) = .true.
   Qg(0) = Q(4)
   Qg(1:3) = Q(1:3)
   Q2 = Qg(0)*Qg(0) - Qg(1)*Qg(1) - Qg(2)*Qg(2) - Qg(3)*Qg(3) - mu2

   select case(icut)
   case(1)
      nonzero(1) = .false.
      R = real(-k3-k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k3-k7-k6-k5-k4, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k2, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom5 = Q2
   case(10)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k3-k7-k6-k5-k4, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k2, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom5 = Q2
   case(21)
      nonzero(1) = .false.
      R = real(-k3-k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k2, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom5 = Q2
   case(210)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k2, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom5 = Q2
   case(31)
      nonzero(1) = .false.
      R = real(-k3-k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k3-k7-k6-k5-k4, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = Q2
   case(310)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k3-k7-k6-k5-k4, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = Q2
   case(321)
      nonzero(1) = .false.
      R = real(-k3-k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = Q2
   case(3210)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = Q2
   case(41)
      nonzero(1) = .false.
      R = real(-k3-k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k3-k7-k6-k5-k4, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k2, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom5 = 0.0_ki
   case(410)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k3-k7-k6-k5-k4, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k2, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom5 = 0.0_ki
   case(421)
      nonzero(1) = .false.
      R = real(-k3-k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k2, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom5 = 0.0_ki
   case(4210)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k2, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom5 = 0.0_ki
   case(431)
      nonzero(1) = .false.
      R = real(-k3-k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k3-k7-k6-k5-k4, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(4310)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k3-k7-k6-k5-k4, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(4321)
      nonzero(1) = .false.
      R = real(-k3-k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
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
      R = real(-k3-k7-k6-k5-k4, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k2, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom5 = Q2
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 80:
   if(nonzero(0)) then
      diag = ctenseval4(Qg, coeffs_group8%coeffs_80)
      num = num + diag
   end if
   !-------#] Diagram 80:
   !-------#[ Diagram 128:
   if(nonzero(1)) then
      diag = ctenseval3(Qg, coeffs_group8%coeffs_128)
      diag = diag * denom2
      num = num + diag
   end if
   !-------#] Diagram 128:
end function numetens_group8
!-----#] function numetens_group8:
!-----#[ subroutine reduce_numetens_group8:
subroutine     reduce_numetens_group8(scale2,tot,totr,ok)
   use msamurai, only: samurai_rm, samurai_cm
   use madds, only: s_mat
   use options, only: samurai_out => iout
   use p1_dbarc_epnebbbarg_config, only: samurai_group_numerators, &
      samurai_istop, samurai_verbosity
   use p1_dbarc_epnebbbarg_kinematics
   use p1_dbarc_epnebbbarg_model
   use p1_dbarc_epnebbbarg_globalsl1, only: epspow
   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   integer, parameter :: effective_group_rank = 4
   real(ki_sam), dimension(5) :: msq
   real(ki_sam), dimension(5,4) :: Vi
   msq(1) = 0.0_ki_sam
   Vi(1,(/4,1,2,3/)) = real(-k3-k4, ki_sam)
   msq(2) = 0.0_ki_sam
   Vi(2,(/4,1,2,3/)) = real(-k3-k6-k5-k4, ki_sam)
   msq(3) = 0.0_ki_sam
   Vi(3,(/4,1,2,3/)) = real(-k3-k7-k6-k5-k4, ki_sam)
   msq(4) = 0.0_ki_sam
   Vi(4,(/4,1,2,3/)) = real(-k2, ki_sam)
   msq(5) = 0.0_ki_sam
   Vi(5,(/4,1,2,3/)) = real(0, ki_sam)
   !-----------#[ initialize invariants:
   allocate(s_mat(5, 5))
   s_mat(1, 1) = real(0.0_ki, ki_sam)
   s_mat(1, 2) = real(es56, ki_sam)
   s_mat(2, 1) = s_mat(1, 2)
   s_mat(1, 3) = real(es567, ki_sam)
   s_mat(3, 1) = s_mat(1, 3)
   s_mat(1, 4) = real(es234, ki_sam)
   s_mat(4, 1) = s_mat(1, 4)
   s_mat(1, 5) = real(es34, ki_sam)
   s_mat(5, 1) = s_mat(1, 5)
   s_mat(2, 2) = real(0.0_ki, ki_sam)
   s_mat(2, 3) = real(0.0_ki, ki_sam)
   s_mat(3, 2) = s_mat(2, 3)
   s_mat(2, 4) = real(es71, ki_sam)
   s_mat(4, 2) = s_mat(2, 4)
   s_mat(2, 5) = real(es712, ki_sam)
   s_mat(5, 2) = s_mat(2, 5)
   s_mat(3, 3) = real(0.0_ki, ki_sam)
   s_mat(3, 4) = real(0.0_ki, ki_sam)
   s_mat(4, 3) = s_mat(3, 4)
   s_mat(3, 5) = real(es12, ki_sam)
   s_mat(5, 3) = s_mat(3, 5)
   s_mat(4, 4) = real(0.0_ki, ki_sam)
   s_mat(4, 5) = real(0.0_ki, ki_sam)
   s_mat(5, 4) = s_mat(4, 5)
   s_mat(5, 5) = real(0.0_ki, ki_sam)
   !-----------#] initialize invariants:

   if(samurai_verbosity > 0) then
      write(samurai_out,*) "[golem-2.0] numetens_group8"
      write(samurai_out,*) "[golem-2.0] epspow=", epspow
   end if
   call samurai_rm(numetens_group8, tot, totr, Vi, msq, 5, &
      & effective_group_rank, samurai_istop, scale2, ok)
   !-----------#[ deallocate invariants:
   deallocate(s_mat)
   !-----------#] deallocate invariants:
end subroutine reduce_numetens_group8
!-----#] subroutine reduce_numetens_group8:
!-----#[ function numetens_group9:
function     numetens_group9(icut, Q, mu2) result(num)
   use tens_rec
   use p1_dbarc_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7
   use p1_dbarc_epnebbbarg_model
   implicit none
   integer, intent(in) :: icut
   complex(ki_sam), dimension(4), intent(in) :: Q
   complex(ki_sam), intent(in) :: mu2
   complex(ki_sam) :: num

   logical, dimension(0:2-1) :: nonzero
   complex(ki_gol), dimension(0:3) :: Qg
   real(ki_gol), dimension(0:3) :: R
   complex(ki_gol) :: Q2
   complex(ki_sam) :: diag, denom1, denom2, denom3, denom4, denom5

   nonzero(:) = .true.
   Qg(0) = Q(4)
   Qg(1:3) = Q(1:3)
   Q2 = Qg(0)*Qg(0) - Qg(1)*Qg(1) - Qg(2)*Qg(2) - Qg(3)*Qg(3) - mu2

   select case(icut)
   case(1)
      nonzero(1) = .false.
      R = real(-k7-k6-k5, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = Q2
      R = real(-k2, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k3-k7-k6-k5-k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(10)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = Q2
      R = real(-k2, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k3-k7-k6-k5-k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(21)
      nonzero(1) = .false.
      R = real(-k7-k6-k5, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k2, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k3-k7-k6-k5-k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(210)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k2, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k3-k7-k6-k5-k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(31)
      nonzero(1) = .false.
      R = real(-k7-k6-k5, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = Q2
      denom4 = 0.0_ki
      R = real(-k3-k7-k6-k5-k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(310)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = Q2
      denom4 = 0.0_ki
      R = real(-k3-k7-k6-k5-k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(321)
      nonzero(1) = .false.
      R = real(-k7-k6-k5, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k3-k7-k6-k5-k4, ki_gol)
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
      R = real(-k3-k7-k6-k5-k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(41)
      nonzero(1) = .false.
      R = real(-k7-k6-k5, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = Q2
      R = real(-k2, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom5 = 0.0_ki
   case(410)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = Q2
      R = real(-k2, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom5 = 0.0_ki
   case(421)
      nonzero(1) = .false.
      R = real(-k7-k6-k5, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k2, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom5 = 0.0_ki
   case(4210)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k2, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom5 = 0.0_ki
   case(431)
      nonzero(1) = .false.
      R = real(-k7-k6-k5, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = Q2
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(4310)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = Q2
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case(4321)
      nonzero(1) = .false.
      R = real(-k7-k6-k5, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
   case default
      R = real(-k7-k6-k5, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = Q2
      R = real(-k2, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k3-k7-k6-k5-k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 66:
   if(nonzero(0)) then
      diag = ctenseval4(Qg, coeffs_group9%coeffs_66)
      num = num + diag
   end if
   !-------#] Diagram 66:
   !-------#[ Diagram 127:
   if(nonzero(1)) then
      diag = ctenseval3(Qg, coeffs_group9%coeffs_127)
      diag = diag * denom2
      num = num + diag
   end if
   !-------#] Diagram 127:
end function numetens_group9
!-----#] function numetens_group9:
!-----#[ subroutine reduce_numetens_group9:
subroutine     reduce_numetens_group9(scale2,tot,totr,ok)
   use msamurai, only: samurai_rm, samurai_cm
   use madds, only: s_mat
   use options, only: samurai_out => iout
   use p1_dbarc_epnebbbarg_config, only: samurai_group_numerators, &
      samurai_istop, samurai_verbosity
   use p1_dbarc_epnebbbarg_kinematics
   use p1_dbarc_epnebbbarg_model
   use p1_dbarc_epnebbbarg_globalsl1, only: epspow
   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   integer, parameter :: effective_group_rank = 4
   real(ki_sam), dimension(5) :: msq
   real(ki_sam), dimension(5,4) :: Vi
   msq(1) = 0.0_ki_sam
   Vi(1,(/4,1,2,3/)) = real(-k7-k6-k5, ki_sam)
   msq(2) = 0.0_ki_sam
   Vi(2,(/4,1,2,3/)) = real(-k6-k5, ki_sam)
   msq(3) = 0.0_ki_sam
   Vi(3,(/4,1,2,3/)) = real(0, ki_sam)
   msq(4) = 0.0_ki_sam
   Vi(4,(/4,1,2,3/)) = real(-k2, ki_sam)
   msq(5) = 0.0_ki_sam
   Vi(5,(/4,1,2,3/)) = real(-k3-k7-k6-k5-k4, ki_sam)
   !-----------#[ initialize invariants:
   allocate(s_mat(5, 5))
   s_mat(1, 1) = real(0.0_ki, ki_sam)
   s_mat(1, 2) = real(0.0_ki, ki_sam)
   s_mat(2, 1) = s_mat(1, 2)
   s_mat(1, 3) = real(es567, ki_sam)
   s_mat(3, 1) = s_mat(1, 3)
   s_mat(1, 4) = real(es34+es567-es234-es12, ki_sam)
   s_mat(4, 1) = s_mat(1, 4)
   s_mat(1, 5) = real(es34, ki_sam)
   s_mat(5, 1) = s_mat(1, 5)
   s_mat(2, 2) = real(0.0_ki, ki_sam)
   s_mat(2, 3) = real(es56, ki_sam)
   s_mat(3, 2) = s_mat(2, 3)
   s_mat(2, 4) = real(es34+es56-es234+es71-es712, ki_sam)
   s_mat(4, 2) = s_mat(2, 4)
   s_mat(2, 5) = real(es34-es567+es56+es12-es712, ki_sam)
   s_mat(5, 2) = s_mat(2, 5)
   s_mat(3, 3) = real(0.0_ki, ki_sam)
   s_mat(3, 4) = real(0.0_ki, ki_sam)
   s_mat(4, 3) = s_mat(3, 4)
   s_mat(3, 5) = real(es12, ki_sam)
   s_mat(5, 3) = s_mat(3, 5)
   s_mat(4, 4) = real(0.0_ki, ki_sam)
   s_mat(4, 5) = real(0.0_ki, ki_sam)
   s_mat(5, 4) = s_mat(4, 5)
   s_mat(5, 5) = real(0.0_ki, ki_sam)
   !-----------#] initialize invariants:

   if(samurai_verbosity > 0) then
      write(samurai_out,*) "[golem-2.0] numetens_group9"
      write(samurai_out,*) "[golem-2.0] epspow=", epspow
   end if
   call samurai_rm(numetens_group9, tot, totr, Vi, msq, 5, &
      & effective_group_rank, samurai_istop, scale2, ok)
   !-----------#[ deallocate invariants:
   deallocate(s_mat)
   !-----------#] deallocate invariants:
end subroutine reduce_numetens_group9
!-----#] subroutine reduce_numetens_group9:
!-----#[ function numetens_group10:
function     numetens_group10(icut, Q, mu2) result(num)
   use tens_rec
   use p1_dbarc_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7
   use p1_dbarc_epnebbbarg_model
   implicit none
   integer, intent(in) :: icut
   complex(ki_sam), dimension(4), intent(in) :: Q
   complex(ki_sam), intent(in) :: mu2
   complex(ki_sam) :: num

   logical, dimension(0:1-1) :: nonzero
   complex(ki_gol), dimension(0:3) :: Qg
   real(ki_gol), dimension(0:3) :: R
   complex(ki_gol) :: Q2
   complex(ki_sam) :: diag, denom1, denom2, denom3, denom4, denom5

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
      R = real(-k3-k7-k6-k5-k4, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k3-k6-k5-k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 81:
   if(nonzero(0)) then
      diag = ctenseval4(Qg, coeffs_group10%coeffs_81)
      num = num + diag
   end if
   !-------#] Diagram 81:
end function numetens_group10
!-----#] function numetens_group10:
!-----#[ subroutine reduce_numetens_group10:
subroutine     reduce_numetens_group10(scale2,tot,totr,ok)
   use msamurai, only: samurai_rm, samurai_cm
   use madds, only: s_mat
   use options, only: samurai_out => iout
   use p1_dbarc_epnebbbarg_config, only: samurai_group_numerators, &
      samurai_istop, samurai_verbosity
   use p1_dbarc_epnebbbarg_kinematics
   use p1_dbarc_epnebbbarg_model
   use p1_dbarc_epnebbbarg_globalsl1, only: epspow
   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   integer, parameter :: effective_group_rank = 4
   real(ki_sam), dimension(5) :: msq
   real(ki_sam), dimension(5,4) :: Vi
   msq(1) = 0.0_ki_sam
   Vi(1,(/4,1,2,3/)) = real(-k6-k5, ki_sam)
   msq(2) = 0.0_ki_sam
   Vi(2,(/4,1,2,3/)) = real(0, ki_sam)
   msq(3) = 0.0_ki_sam
   Vi(3,(/4,1,2,3/)) = real(-k2, ki_sam)
   msq(4) = 0.0_ki_sam
   Vi(4,(/4,1,2,3/)) = real(-k3-k7-k6-k5-k4, ki_sam)
   msq(5) = 0.0_ki_sam
   Vi(5,(/4,1,2,3/)) = real(-k3-k6-k5-k4, ki_sam)
   !-----------#[ initialize invariants:
   allocate(s_mat(5, 5))
   s_mat(1, 1) = real(0.0_ki, ki_sam)
   s_mat(1, 2) = real(es56, ki_sam)
   s_mat(2, 1) = s_mat(1, 2)
   s_mat(1, 3) = real(es34+es56-es234+es71-es712, ki_sam)
   s_mat(3, 1) = s_mat(1, 3)
   s_mat(1, 4) = real(es34-es567+es56+es12-es712, ki_sam)
   s_mat(4, 1) = s_mat(1, 4)
   s_mat(1, 5) = real(es34, ki_sam)
   s_mat(5, 1) = s_mat(1, 5)
   s_mat(2, 2) = real(0.0_ki, ki_sam)
   s_mat(2, 3) = real(0.0_ki, ki_sam)
   s_mat(3, 2) = s_mat(2, 3)
   s_mat(2, 4) = real(es12, ki_sam)
   s_mat(4, 2) = s_mat(2, 4)
   s_mat(2, 5) = real(es712, ki_sam)
   s_mat(5, 2) = s_mat(2, 5)
   s_mat(3, 3) = real(0.0_ki, ki_sam)
   s_mat(3, 4) = real(0.0_ki, ki_sam)
   s_mat(4, 3) = s_mat(3, 4)
   s_mat(3, 5) = real(es71, ki_sam)
   s_mat(5, 3) = s_mat(3, 5)
   s_mat(4, 4) = real(0.0_ki, ki_sam)
   s_mat(4, 5) = real(0.0_ki, ki_sam)
   s_mat(5, 4) = s_mat(4, 5)
   s_mat(5, 5) = real(0.0_ki, ki_sam)
   !-----------#] initialize invariants:

   if(samurai_verbosity > 0) then
      write(samurai_out,*) "[golem-2.0] numetens_group10"
      write(samurai_out,*) "[golem-2.0] epspow=", epspow
   end if
   call samurai_rm(numetens_group10, tot, totr, Vi, msq, 5, &
      & effective_group_rank, samurai_istop, scale2, ok)
   !-----------#[ deallocate invariants:
   deallocate(s_mat)
   !-----------#] deallocate invariants:
end subroutine reduce_numetens_group10
!-----#] subroutine reduce_numetens_group10:
!-----#[ function numetens_group11:
function     numetens_group11(icut, Q, mu2) result(num)
   use tens_rec
   use p1_dbarc_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7
   use p1_dbarc_epnebbbarg_model
   implicit none
   integer, intent(in) :: icut
   complex(ki_sam), dimension(4), intent(in) :: Q
   complex(ki_sam), intent(in) :: mu2
   complex(ki_sam) :: num

   logical, dimension(0:4-1) :: nonzero
   complex(ki_gol), dimension(0:3) :: Qg
   real(ki_gol), dimension(0:3) :: R
   complex(ki_gol) :: Q2
   complex(ki_sam) :: diag, denom1, denom2, denom3, denom4, denom5, denom6

   nonzero(:) = .true.
   Qg(0) = Q(4)
   Qg(1:3) = Q(1:3)
   Q2 = Qg(0)*Qg(0) - Qg(1)*Qg(1) - Qg(2)*Qg(2) - Qg(3)*Qg(3) - mu2

   select case(icut)
   case(0)
      nonzero(1) = .false.
      nonzero(3) = .false.
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
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(10)
      nonzero(1) = .false.
      nonzero(3) = .false.
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
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(20)
      nonzero(1) = .false.
      nonzero(3) = .false.
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
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(210)
      nonzero(1) = .false.
      nonzero(3) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = Q2
      R = real(-k2, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(30)
      nonzero(1) = .false.
      nonzero(3) = .false.
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
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(310)
      nonzero(1) = .false.
      nonzero(3) = .false.
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
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(320)
      nonzero(1) = .false.
      nonzero(3) = .false.
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
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(3210)
      nonzero(1) = .false.
      nonzero(3) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k2, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(4)
      nonzero(0) = .false.
      nonzero(1) = .false.
      R = real(k3-k2+k7+k4, ki_gol)
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
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(40)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(3) = .false.
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
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(41)
      nonzero(0) = .false.
      nonzero(1) = .false.
      R = real(k3-k2+k7+k4, ki_gol)
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
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(410)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(3) = .false.
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
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(42)
      nonzero(0) = .false.
      nonzero(1) = .false.
      R = real(k3-k2+k7+k4, ki_gol)
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
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(420)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(3) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = Q2
      denom5 = 0.0_ki
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(421)
      nonzero(0) = .false.
      nonzero(1) = .false.
      R = real(k3-k2+k7+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = Q2
      denom5 = 0.0_ki
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(4210)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(3) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = Q2
      denom5 = 0.0_ki
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(43)
      nonzero(0) = .false.
      nonzero(1) = .false.
      R = real(k3-k2+k7+k4, ki_gol)
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
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(430)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(3) = .false.
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
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(431)
      nonzero(0) = .false.
      nonzero(1) = .false.
      R = real(k3-k2+k7+k4, ki_gol)
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
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(4310)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(3) = .false.
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
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(432)
      nonzero(0) = .false.
      nonzero(1) = .false.
      R = real(k3-k2+k7+k4, ki_gol)
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
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(4320)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(3) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(4321)
      nonzero(0) = .false.
      nonzero(1) = .false.
      R = real(k3-k2+k7+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(50)
      nonzero(1) = .false.
      nonzero(3) = .false.
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
      denom6 = 0.0_ki
   case(510)
      nonzero(1) = .false.
      nonzero(3) = .false.
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
      denom6 = 0.0_ki
   case(520)
      nonzero(1) = .false.
      nonzero(3) = .false.
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
      denom6 = 0.0_ki
   case(5210)
      nonzero(1) = .false.
      nonzero(3) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = Q2
      R = real(-k2, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(530)
      nonzero(1) = .false.
      nonzero(3) = .false.
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
      denom6 = 0.0_ki
   case(5310)
      nonzero(1) = .false.
      nonzero(3) = .false.
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
      denom6 = 0.0_ki
   case(5320)
      nonzero(1) = .false.
      nonzero(3) = .false.
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
      denom6 = 0.0_ki
   case(54)
      nonzero(0) = .false.
      nonzero(1) = .false.
      R = real(k3-k2+k7+k4, ki_gol)
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
      denom6 = 0.0_ki
   case(540)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(3) = .false.
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
      denom6 = 0.0_ki
   case(541)
      nonzero(0) = .false.
      nonzero(1) = .false.
      R = real(k3-k2+k7+k4, ki_gol)
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
      denom6 = 0.0_ki
   case(5410)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(3) = .false.
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
      denom6 = 0.0_ki
   case(542)
      nonzero(0) = .false.
      nonzero(1) = .false.
      R = real(k3-k2+k7+k4, ki_gol)
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
      denom6 = 0.0_ki
   case(5420)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(3) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = Q2
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5421)
      nonzero(0) = .false.
      nonzero(1) = .false.
      R = real(k3-k2+k7+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = Q2
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(543)
      nonzero(0) = .false.
      nonzero(1) = .false.
      R = real(k3-k2+k7+k4, ki_gol)
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
      denom6 = 0.0_ki
   case(5430)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(3) = .false.
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
      denom6 = 0.0_ki
   case(5431)
      nonzero(0) = .false.
      nonzero(1) = .false.
      R = real(k3-k2+k7+k4, ki_gol)
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
      denom6 = 0.0_ki
   case(5432)
      nonzero(0) = .false.
      nonzero(1) = .false.
      R = real(k3-k2+k7+k4, ki_gol)
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
      denom6 = 0.0_ki
   case default
      R = real(k3-k2+k7+k4, ki_gol)
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
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 79:
   if(nonzero(0)) then
      diag = ctenseval3(Qg, coeffs_group11%coeffs_79)
      diag = diag * denom5
      num = num + diag
   end if
   !-------#] Diagram 79:
   !-------#[ Diagram 109:
   if(nonzero(1)) then
      diag = ctenseval2(Qg, coeffs_group11%coeffs_109)
      diag = diag * denom1 * denom5
      num = num + diag
   end if
   !-------#] Diagram 109:
   !-------#[ Diagram 292:
   if(nonzero(2)) then
      diag = ctenseval4(Qg, coeffs_group11%coeffs_292)
      num = num + diag
   end if
   !-------#] Diagram 292:
   !-------#[ Diagram 301:
   if(nonzero(3)) then
      diag = ctenseval3(Qg, coeffs_group11%coeffs_301)
      diag = diag * denom1
      num = num + diag
   end if
   !-------#] Diagram 301:
end function numetens_group11
!-----#] function numetens_group11:
!-----#[ subroutine reduce_numetens_group11:
subroutine     reduce_numetens_group11(scale2,tot,totr,ok)
   use msamurai, only: samurai_rm, samurai_cm
   use madds, only: s_mat
   use options, only: samurai_out => iout
   use p1_dbarc_epnebbbarg_config, only: samurai_group_numerators, &
      samurai_istop, samurai_verbosity
   use p1_dbarc_epnebbbarg_kinematics
   use p1_dbarc_epnebbbarg_model
   use p1_dbarc_epnebbbarg_globalsl1, only: epspow
   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   integer, parameter :: effective_group_rank = 4
   real(ki_sam), dimension(6) :: msq
   real(ki_sam), dimension(6,4) :: Vi
   msq(1) = 0.0_ki_sam
   Vi(1,(/4,1,2,3/)) = real(k3-k2+k7+k4, ki_sam)
   msq(2) = 0.0_ki_sam
   Vi(2,(/4,1,2,3/)) = real(-k6-k5, ki_sam)
   msq(3) = real(mB*mB, ki)
   Vi(3,(/4,1,2,3/)) = real(-k5, ki_sam)
   msq(4) = 0.0_ki_sam
   Vi(4,(/4,1,2,3/)) = real(0, ki_sam)
   msq(5) = 0.0_ki_sam
   Vi(5,(/4,1,2,3/)) = real(-k2, ki_sam)
   msq(6) = 0.0_ki_sam
   Vi(6,(/4,1,2,3/)) = real(-k2+k7, ki_sam)
   !-----------#[ initialize invariants:
   allocate(s_mat(6, 6))
   s_mat(1, 1) = real(0.0_ki, ki_sam)
   s_mat(1, 2) = real(0.0_ki, ki_sam)
   s_mat(2, 1) = s_mat(1, 2)
   s_mat(1, 3) = real(es671-es67-es71, ki_sam)
   s_mat(3, 1) = s_mat(1, 3)
   s_mat(1, 4) = real(-es567+es56+es234-es71, ki_sam)
   s_mat(4, 1) = s_mat(1, 4)
   s_mat(1, 5) = real(es34-es567+es56+es12-es712, ki_sam)
   s_mat(5, 1) = s_mat(1, 5)
   s_mat(1, 6) = real(es34, ki_sam)
   s_mat(6, 1) = s_mat(1, 6)
   s_mat(2, 2) = real(0.0_ki, ki_sam)
   s_mat(2, 3) = real(0.0_ki, ki_sam)
   s_mat(3, 2) = s_mat(2, 3)
   s_mat(2, 4) = real(es56, ki_sam)
   s_mat(4, 2) = s_mat(2, 4)
   s_mat(2, 5) = real(es34+es56-es234+es71-es712, ki_sam)
   s_mat(5, 2) = s_mat(2, 5)
   s_mat(2, 6) = real(es34+es567-es234-es12, ki_sam)
   s_mat(6, 2) = s_mat(2, 6)
   s_mat(3, 3) = real(-2.0_ki*mB**2, ki_sam)
   s_mat(3, 4) = real(0.0_ki, ki_sam)
   s_mat(4, 3) = s_mat(3, 4)
   s_mat(3, 5) = real(-es234-es345+es34+es671, ki_sam)
   s_mat(5, 3) = s_mat(3, 5)
   s_mat(3, 6) = real(es34+es671+es567-es56-es234-es345-es67+mB**2-es12-es71+es712, ki_sam)
   s_mat(6, 3) = s_mat(3, 6)
   s_mat(4, 4) = real(0.0_ki, ki_sam)
   s_mat(4, 5) = real(0.0_ki, ki_sam)
   s_mat(5, 4) = s_mat(4, 5)
   s_mat(4, 6) = real(-es12-es71+es712, ki_sam)
   s_mat(6, 4) = s_mat(4, 6)
   s_mat(5, 5) = real(0.0_ki, ki_sam)
   s_mat(5, 6) = real(0.0_ki, ki_sam)
   s_mat(6, 5) = s_mat(5, 6)
   s_mat(6, 6) = real(0.0_ki, ki_sam)
   !-----------#] initialize invariants:

   if(samurai_verbosity > 0) then
      write(samurai_out,*) "[golem-2.0] numetens_group11"
      write(samurai_out,*) "[golem-2.0] epspow=", epspow
   end if
   call samurai_rm(numetens_group11, tot, totr, Vi, msq, 6, &
      & effective_group_rank, samurai_istop, scale2, ok)
   !-----------#[ deallocate invariants:
   deallocate(s_mat)
   !-----------#] deallocate invariants:
end subroutine reduce_numetens_group11
!-----#] subroutine reduce_numetens_group11:
!-----#[ function numetens_group12:
function     numetens_group12(icut, Q, mu2) result(num)
   use tens_rec
   use p1_dbarc_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7
   use p1_dbarc_epnebbbarg_model
   implicit none
   integer, intent(in) :: icut
   complex(ki_sam), dimension(4), intent(in) :: Q
   complex(ki_sam), intent(in) :: mu2
   complex(ki_sam) :: num

   logical, dimension(0:3-1) :: nonzero
   complex(ki_gol), dimension(0:3) :: Qg
   real(ki_gol), dimension(0:3) :: R
   complex(ki_gol) :: Q2
   complex(ki_sam) :: diag, denom1, denom2, denom3, denom4, denom5, denom6

   nonzero(:) = .true.
   Qg(0) = Q(4)
   Qg(1:3) = Q(1:3)
   Q2 = Qg(0)*Qg(0) - Qg(1)*Qg(1) - Qg(2)*Qg(2) - Qg(3)*Qg(3) - mu2

   select case(icut)
   case(0)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(10)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(20)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(210)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(30)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = Q2
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(310)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = Q2
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(320)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = Q2
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(3210)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = Q2
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(40)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(410)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(420)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(4210)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(430)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(4310)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(4320)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(5)
      nonzero(2) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      denom6 = 0.0_ki
   case(50)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      denom6 = 0.0_ki
   case(51)
      nonzero(2) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      denom6 = 0.0_ki
   case(510)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      denom6 = 0.0_ki
   case(52)
      nonzero(2) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      denom6 = 0.0_ki
   case(520)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      denom6 = 0.0_ki
   case(521)
      nonzero(2) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      denom6 = 0.0_ki
   case(5210)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      denom6 = 0.0_ki
   case(53)
      nonzero(2) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = Q2
      denom6 = 0.0_ki
   case(530)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = Q2
      denom6 = 0.0_ki
   case(531)
      nonzero(2) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = Q2
      denom6 = 0.0_ki
   case(5310)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = Q2
      denom6 = 0.0_ki
   case(532)
      nonzero(2) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = Q2
      denom6 = 0.0_ki
   case(5320)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = Q2
      denom6 = 0.0_ki
   case(5321)
      nonzero(2) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = Q2
      denom6 = 0.0_ki
   case(54)
      nonzero(2) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(540)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(541)
      nonzero(2) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5410)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(542)
      nonzero(2) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5420)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5421)
      nonzero(2) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(543)
      nonzero(2) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5430)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5431)
      nonzero(2) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5432)
      nonzero(2) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case default
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 298:
   if(nonzero(0)) then
      diag = ctenseval4(Qg, coeffs_group12%coeffs_298)
      num = num + diag
   end if
   !-------#] Diagram 298:
   !-------#[ Diagram 303:
   if(nonzero(1)) then
      diag = ctenseval3(Qg, coeffs_group12%coeffs_303)
      diag = diag * denom1
      num = num + diag
   end if
   !-------#] Diagram 303:
   !-------#[ Diagram 316:
   if(nonzero(2)) then
      diag = ctenseval3(Qg, coeffs_group12%coeffs_316)
      diag = diag * denom6
      num = num + diag
   end if
   !-------#] Diagram 316:
end function numetens_group12
!-----#] function numetens_group12:
!-----#[ subroutine reduce_numetens_group12:
subroutine     reduce_numetens_group12(scale2,tot,totr,ok)
   use msamurai, only: samurai_rm, samurai_cm
   use madds, only: s_mat
   use options, only: samurai_out => iout
   use p1_dbarc_epnebbbarg_config, only: samurai_group_numerators, &
      samurai_istop, samurai_verbosity
   use p1_dbarc_epnebbbarg_kinematics
   use p1_dbarc_epnebbbarg_model
   use p1_dbarc_epnebbbarg_globalsl1, only: epspow
   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   integer, parameter :: effective_group_rank = 4
   real(ki_sam), dimension(6) :: msq
   real(ki_sam), dimension(6,4) :: Vi
   msq(1) = 0.0_ki_sam
   Vi(1,(/4,1,2,3/)) = real(k3-k2+k4, ki_sam)
   msq(2) = 0.0_ki_sam
   Vi(2,(/4,1,2,3/)) = real(-k7-k6-k5, ki_sam)
   msq(3) = 0.0_ki_sam
   Vi(3,(/4,1,2,3/)) = real(-k6-k5, ki_sam)
   msq(4) = real(mB*mB, ki)
   Vi(4,(/4,1,2,3/)) = real(-k5, ki_sam)
   msq(5) = 0.0_ki_sam
   Vi(5,(/4,1,2,3/)) = real(0, ki_sam)
   msq(6) = 0.0_ki_sam
   Vi(6,(/4,1,2,3/)) = real(-k2, ki_sam)
   !-----------#[ initialize invariants:
   allocate(s_mat(6, 6))
   s_mat(1, 1) = real(0.0_ki, ki_sam)
   s_mat(1, 2) = real(0.0_ki, ki_sam)
   s_mat(2, 1) = s_mat(1, 2)
   s_mat(1, 3) = real(es71, ki_sam)
   s_mat(3, 1) = s_mat(1, 3)
   s_mat(1, 4) = real(es671-mB**2, ki_sam)
   s_mat(4, 1) = s_mat(1, 4)
   s_mat(1, 5) = real(es234, ki_sam)
   s_mat(5, 1) = s_mat(1, 5)
   s_mat(1, 6) = real(es34, ki_sam)
   s_mat(6, 1) = s_mat(1, 6)
   s_mat(2, 2) = real(0.0_ki, ki_sam)
   s_mat(2, 3) = real(0.0_ki, ki_sam)
   s_mat(3, 2) = s_mat(2, 3)
   s_mat(2, 4) = real(-mB**2+es67, ki_sam)
   s_mat(4, 2) = s_mat(2, 4)
   s_mat(2, 5) = real(es567, ki_sam)
   s_mat(5, 2) = s_mat(2, 5)
   s_mat(2, 6) = real(es34+es567-es234-es12, ki_sam)
   s_mat(6, 2) = s_mat(2, 6)
   s_mat(3, 3) = real(0.0_ki, ki_sam)
   s_mat(3, 4) = real(0.0_ki, ki_sam)
   s_mat(4, 3) = s_mat(3, 4)
   s_mat(3, 5) = real(es56, ki_sam)
   s_mat(5, 3) = s_mat(3, 5)
   s_mat(3, 6) = real(es34+es56-es234+es71-es712, ki_sam)
   s_mat(6, 3) = s_mat(3, 6)
   s_mat(4, 4) = real(-2.0_ki*mB**2, ki_sam)
   s_mat(4, 5) = real(0.0_ki, ki_sam)
   s_mat(5, 4) = s_mat(4, 5)
   s_mat(4, 6) = real(-es234-es345+es34+es671, ki_sam)
   s_mat(6, 4) = s_mat(4, 6)
   s_mat(5, 5) = real(0.0_ki, ki_sam)
   s_mat(5, 6) = real(0.0_ki, ki_sam)
   s_mat(6, 5) = s_mat(5, 6)
   s_mat(6, 6) = real(0.0_ki, ki_sam)
   !-----------#] initialize invariants:

   if(samurai_verbosity > 0) then
      write(samurai_out,*) "[golem-2.0] numetens_group12"
      write(samurai_out,*) "[golem-2.0] epspow=", epspow
   end if
   call samurai_rm(numetens_group12, tot, totr, Vi, msq, 6, &
      & effective_group_rank, samurai_istop, scale2, ok)
   !-----------#[ deallocate invariants:
   deallocate(s_mat)
   !-----------#] deallocate invariants:
end subroutine reduce_numetens_group12
!-----#] subroutine reduce_numetens_group12:
!-----#[ function numetens_group13:
function     numetens_group13(icut, Q, mu2) result(num)
   use tens_rec
   use p1_dbarc_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7
   use p1_dbarc_epnebbbarg_model
   implicit none
   integer, intent(in) :: icut
   complex(ki_sam), dimension(4), intent(in) :: Q
   complex(ki_sam), intent(in) :: mu2
   complex(ki_sam) :: num

   logical, dimension(0:16-1) :: nonzero
   complex(ki_gol), dimension(0:3) :: Qg
   real(ki_gol), dimension(0:3) :: R
   complex(ki_gol) :: Q2
   complex(ki_sam) :: diag, denom1, denom2, denom3, denom4, denom5, denom6

   nonzero(:) = .true.
   Qg(0) = Q(4)
   Qg(1:3) = Q(1:3)
   Q2 = Qg(0)*Qg(0) - Qg(1)*Qg(1) - Qg(2)*Qg(2) - Qg(3)*Qg(3) - mu2

   select case(icut)
   case(0)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k5, ki_gol)
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
      R = real(k3-k2+k7+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(1)
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      R = real(-k2, ki_gol)
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
      R = real(-k6-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k7+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(10)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k5, ki_gol)
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
      R = real(k3-k2+k7+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(2)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
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
      R = real(k3-k2+k7+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(20)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k7+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(21)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
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
      R = real(k3-k2+k7+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(210)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k7+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(3)
      nonzero(8) = .false.
      nonzero(13) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(k3-k2+k7+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(30)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(k3-k2+k7+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(31)
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(8) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      R = real(-k2, ki_gol)
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
      R = real(k3-k2+k7+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(310)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(k3-k2+k7+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(32)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(k3-k2+k7+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(320)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(k3-k2+k7+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(321)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(k3-k2+k7+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(3210)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(k3-k2+k7+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(4)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(9) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k5, ki_gol)
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
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(40)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k5, ki_gol)
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
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(41)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(9) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      R = real(-k2, ki_gol)
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
      R = real(-k6-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(410)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k5, ki_gol)
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
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(42)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
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
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(420)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(421)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
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
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(4210)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(43)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(13) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(430)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(431)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      R = real(-k2, ki_gol)
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
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(4310)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
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
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(432)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(4320)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(4321)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(5)
      nonzero(6) = .false.
      nonzero(7) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k5, ki_gol)
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
      R = real(k3-k2+k7+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(50)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k5, ki_gol)
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
      R = real(k3-k2+k7+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(51)
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      R = real(-k2, ki_gol)
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
      R = real(-k6-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k7+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(510)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k5, ki_gol)
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
      R = real(k3-k2+k7+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(52)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
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
      R = real(k3-k2+k7+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(520)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k7+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(521)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
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
      R = real(k3-k2+k7+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(5210)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k7+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(53)
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(13) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(k3-k2+k7+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(530)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(k3-k2+k7+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(531)
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      R = real(-k2, ki_gol)
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
      R = real(k3-k2+k7+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(5310)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(k3-k2+k7+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(532)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(k3-k2+k7+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(5320)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(k3-k2+k7+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(5321)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(k3-k2+k7+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(54)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k5, ki_gol)
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
      denom6 = 0.0_ki
   case(540)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k5, ki_gol)
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
      denom6 = 0.0_ki
   case(541)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      R = real(-k2, ki_gol)
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
      R = real(-k6-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5410)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k5, ki_gol)
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
      denom6 = 0.0_ki
   case(542)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
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
      denom6 = 0.0_ki
   case(5420)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5421)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
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
      denom6 = 0.0_ki
   case(543)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(13) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5430)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5431)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      R = real(-k2, ki_gol)
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
      denom6 = 0.0_ki
   case(5432)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case default
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k5, ki_gol)
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
      R = real(k3-k2+k7+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 16:
   if(nonzero(0)) then
      diag = ctenseval3(Qg, coeffs_group13%coeffs_16)
      diag = diag * denom3 * denom5
      num = num + diag
   end if
   !-------#] Diagram 16:
   !-------#[ Diagram 38:
   if(nonzero(1)) then
      diag = ctenseval2(Qg, coeffs_group13%coeffs_38)
      diag = diag * denom1 * denom3 * denom5
      num = num + diag
   end if
   !-------#] Diagram 38:
   !-------#[ Diagram 42:
   if(nonzero(2)) then
      diag = ctenseval2(Qg, coeffs_group13%coeffs_42)
      diag = diag * denom2 * denom3 * denom5
      num = num + diag
   end if
   !-------#] Diagram 42:
   !-------#[ Diagram 58:
   if(nonzero(3)) then
      diag = ctenseval1(Qg, coeffs_group13%coeffs_58)
      diag = diag * denom1 * denom2 * denom3 * denom5
      num = num + diag
   end if
   !-------#] Diagram 58:
   !-------#[ Diagram 70:
   if(nonzero(4)) then
      diag = ctenseval4(Qg, coeffs_group13%coeffs_70)
      diag = diag * denom3
      num = num + diag
   end if
   !-------#] Diagram 70:
   !-------#[ Diagram 76:
   if(nonzero(5)) then
      diag = ctenseval3(Qg, coeffs_group13%coeffs_76)
      diag = diag * denom5
      num = num + diag
   end if
   !-------#] Diagram 76:
   !-------#[ Diagram 90:
   if(nonzero(6)) then
      diag = ctenseval2(Qg, coeffs_group13%coeffs_90)
      diag = diag * denom5 * denom6
      num = num + diag
   end if
   !-------#] Diagram 90:
   !-------#[ Diagram 93:
   if(nonzero(7)) then
      diag = ctenseval2(Qg, coeffs_group13%coeffs_93)
      diag = diag * denom1 * denom6
      num = num + diag
   end if
   !-------#] Diagram 93:
   !-------#[ Diagram 102:
   if(nonzero(8)) then
      diag = ctenseval3(Qg, coeffs_group13%coeffs_102)
      diag = diag * denom3 * denom4
      num = num + diag
   end if
   !-------#] Diagram 102:
   !-------#[ Diagram 108:
   if(nonzero(9)) then
      diag = ctenseval2(Qg, coeffs_group13%coeffs_108)
      diag = diag * denom1 * denom5
      num = num + diag
   end if
   !-------#] Diagram 108:
   !-------#[ Diagram 115:
   if(nonzero(10)) then
      diag = ctenseval3(Qg, coeffs_group13%coeffs_115)
      diag = diag * denom1 * denom3
      num = num + diag
   end if
   !-------#] Diagram 115:
   !-------#[ Diagram 126:
   if(nonzero(11)) then
      diag = ctenseval3(Qg, coeffs_group13%coeffs_126)
      diag = diag * denom2 * denom3
      num = num + diag
   end if
   !-------#] Diagram 126:
   !-------#[ Diagram 139:
   if(nonzero(12)) then
      diag = ctenseval2(Qg, coeffs_group13%coeffs_139)
      diag = diag * denom1 * denom2 * denom3
      num = num + diag
   end if
   !-------#] Diagram 139:
   !-------#[ Diagram 227:
   if(nonzero(13)) then
      diag = ctenseval2(Qg, coeffs_group13%coeffs_227)
      diag = diag * denom1 * denom3 * denom4
      num = num + diag
   end if
   !-------#] Diagram 227:
   !-------#[ Diagram 295:
   if(nonzero(14)) then
      diag = ctenseval4(Qg, coeffs_group13%coeffs_295)
      num = num + diag
   end if
   !-------#] Diagram 295:
   !-------#[ Diagram 310:
   if(nonzero(15)) then
      diag = ctenseval3(Qg, coeffs_group13%coeffs_310)
      diag = diag * denom1
      num = num + diag
   end if
   !-------#] Diagram 310:
end function numetens_group13
!-----#] function numetens_group13:
!-----#[ subroutine reduce_numetens_group13:
subroutine     reduce_numetens_group13(scale2,tot,totr,ok)
   use msamurai, only: samurai_rm, samurai_cm
   use madds, only: s_mat
   use options, only: samurai_out => iout
   use p1_dbarc_epnebbbarg_config, only: samurai_group_numerators, &
      samurai_istop, samurai_verbosity
   use p1_dbarc_epnebbbarg_kinematics
   use p1_dbarc_epnebbbarg_model
   use p1_dbarc_epnebbbarg_globalsl1, only: epspow
   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   integer, parameter :: effective_group_rank = 5
   real(ki_sam), dimension(6) :: msq
   real(ki_sam), dimension(6,4) :: Vi
   msq(1) = 0.0_ki_sam
   Vi(1,(/4,1,2,3/)) = real(-k2, ki_sam)
   msq(2) = 0.0_ki_sam
   Vi(2,(/4,1,2,3/)) = real(0, ki_sam)
   msq(3) = real(mB*mB, ki)
   Vi(3,(/4,1,2,3/)) = real(-k5, ki_sam)
   msq(4) = 0.0_ki_sam
   Vi(4,(/4,1,2,3/)) = real(-k6-k5, ki_sam)
   msq(5) = 0.0_ki_sam
   Vi(5,(/4,1,2,3/)) = real(k3-k2+k7+k4, ki_sam)
   msq(6) = 0.0_ki_sam
   Vi(6,(/4,1,2,3/)) = real(k3-k2+k4, ki_sam)
   !-----------#[ initialize invariants:
   allocate(s_mat(6, 6))
   s_mat(1, 1) = real(0.0_ki, ki_sam)
   s_mat(1, 2) = real(0.0_ki, ki_sam)
   s_mat(2, 1) = s_mat(1, 2)
   s_mat(1, 3) = real(-es234-es345+es34+es671, ki_sam)
   s_mat(3, 1) = s_mat(1, 3)
   s_mat(1, 4) = real(es34+es56-es234+es71-es712, ki_sam)
   s_mat(4, 1) = s_mat(1, 4)
   s_mat(1, 5) = real(es34-es567+es56+es12-es712, ki_sam)
   s_mat(5, 1) = s_mat(1, 5)
   s_mat(1, 6) = real(es34, ki_sam)
   s_mat(6, 1) = s_mat(1, 6)
   s_mat(2, 2) = real(0.0_ki, ki_sam)
   s_mat(2, 3) = real(0.0_ki, ki_sam)
   s_mat(3, 2) = s_mat(2, 3)
   s_mat(2, 4) = real(es56, ki_sam)
   s_mat(4, 2) = s_mat(2, 4)
   s_mat(2, 5) = real(-es567+es56+es234-es71, ki_sam)
   s_mat(5, 2) = s_mat(2, 5)
   s_mat(2, 6) = real(es234, ki_sam)
   s_mat(6, 2) = s_mat(2, 6)
   s_mat(3, 3) = real(-2.0_ki*mB**2, ki_sam)
   s_mat(3, 4) = real(0.0_ki, ki_sam)
   s_mat(4, 3) = s_mat(3, 4)
   s_mat(3, 5) = real(es671-es67-es71, ki_sam)
   s_mat(5, 3) = s_mat(3, 5)
   s_mat(3, 6) = real(es671-mB**2, ki_sam)
   s_mat(6, 3) = s_mat(3, 6)
   s_mat(4, 4) = real(0.0_ki, ki_sam)
   s_mat(4, 5) = real(0.0_ki, ki_sam)
   s_mat(5, 4) = s_mat(4, 5)
   s_mat(4, 6) = real(es71, ki_sam)
   s_mat(6, 4) = s_mat(4, 6)
   s_mat(5, 5) = real(0.0_ki, ki_sam)
   s_mat(5, 6) = real(0.0_ki, ki_sam)
   s_mat(6, 5) = s_mat(5, 6)
   s_mat(6, 6) = real(0.0_ki, ki_sam)
   !-----------#] initialize invariants:

   if(samurai_verbosity > 0) then
      write(samurai_out,*) "[golem-2.0] numetens_group13"
      write(samurai_out,*) "[golem-2.0] epspow=", epspow
   end if
   call samurai_rm(numetens_group13, tot, totr, Vi, msq, 6, &
      & effective_group_rank, samurai_istop, scale2, ok)
   !-----------#[ deallocate invariants:
   deallocate(s_mat)
   !-----------#] deallocate invariants:
end subroutine reduce_numetens_group13
!-----#] subroutine reduce_numetens_group13:
!-----#[ function numetens_group14:
function     numetens_group14(icut, Q, mu2) result(num)
   use tens_rec
   use p1_dbarc_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7
   use p1_dbarc_epnebbbarg_model
   implicit none
   integer, intent(in) :: icut
   complex(ki_sam), dimension(4), intent(in) :: Q
   complex(ki_sam), intent(in) :: mu2
   complex(ki_sam) :: num

   logical, dimension(0:9-1) :: nonzero
   complex(ki_gol), dimension(0:3) :: Qg
   real(ki_gol), dimension(0:3) :: R
   complex(ki_gol) :: Q2
   complex(ki_sam) :: diag, denom1, denom2, denom3, denom4, denom5, denom6

   nonzero(:) = .true.
   Qg(0) = Q(4)
   Qg(1:3) = Q(1:3)
   Q2 = Qg(0)*Qg(0) - Qg(1)*Qg(1) - Qg(2)*Qg(2) - Qg(3)*Qg(3) - mu2

   select case(icut)
   case(0)
      nonzero(2) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(10)
      nonzero(2) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k7-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(2)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(20)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(21)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(210)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(3)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = Q2
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(30)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = Q2
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(31)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k7-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = Q2
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(310)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k7-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = Q2
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
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
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = Q2
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
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
      nonzero(7) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = Q2
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
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
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = Q2
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
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
      nonzero(7) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = Q2
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(40)
      nonzero(2) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(410)
      nonzero(2) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k7-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(42)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(420)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(421)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(4210)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(43)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(430)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(431)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k7-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(4310)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k7-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(432)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(4320)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(4321)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(5)
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(8) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      denom6 = 0.0_ki
   case(50)
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      denom6 = 0.0_ki
   case(51)
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(8) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k7-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      denom6 = 0.0_ki
   case(510)
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k7-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      denom6 = 0.0_ki
   case(52)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(8) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      denom6 = 0.0_ki
   case(520)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      denom6 = 0.0_ki
   case(521)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(8) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      denom6 = 0.0_ki
   case(5210)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      denom6 = 0.0_ki
   case(53)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(8) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = Q2
      denom6 = 0.0_ki
   case(530)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = Q2
      denom6 = 0.0_ki
   case(531)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(8) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k7-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = Q2
      denom6 = 0.0_ki
   case(5310)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k7-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = Q2
      denom6 = 0.0_ki
   case(532)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(8) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = Q2
      denom6 = 0.0_ki
   case(5320)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = Q2
      denom6 = 0.0_ki
   case(5321)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(8) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = Q2
      denom6 = 0.0_ki
   case(54)
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(8) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(540)
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(541)
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(8) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k7-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5410)
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k7-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(542)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(8) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5420)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5421)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(8) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(543)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(8) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5430)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5431)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(8) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k7-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5432)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(8) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case default
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 72:
   if(nonzero(0)) then
      diag = ctenseval3(Qg, coeffs_group14%coeffs_72)
      diag = diag * denom4
      num = num + diag
   end if
   !-------#] Diagram 72:
   !-------#[ Diagram 75:
   if(nonzero(1)) then
      diag = ctenseval3(Qg, coeffs_group14%coeffs_75)
      diag = diag * denom3
      num = num + diag
   end if
   !-------#] Diagram 75:
   !-------#[ Diagram 98:
   if(nonzero(2)) then
      diag = ctenseval2(Qg, coeffs_group14%coeffs_98)
      diag = diag * denom1 * denom4
      num = num + diag
   end if
   !-------#] Diagram 98:
   !-------#[ Diagram 101:
   if(nonzero(3)) then
      diag = ctenseval2(Qg, coeffs_group14%coeffs_101)
      diag = diag * denom3 * denom6
      num = num + diag
   end if
   !-------#] Diagram 101:
   !-------#[ Diagram 120:
   if(nonzero(4)) then
      diag = ctenseval2(Qg, coeffs_group14%coeffs_120)
      diag = diag * denom4 * denom6
      num = num + diag
   end if
   !-------#] Diagram 120:
   !-------#[ Diagram 121:
   if(nonzero(5)) then
      diag = ctenseval2(Qg, coeffs_group14%coeffs_121)
      diag = diag * denom1 * denom3
      num = num + diag
   end if
   !-------#] Diagram 121:
   !-------#[ Diagram 300:
   if(nonzero(6)) then
      diag = ctenseval4(Qg, coeffs_group14%coeffs_300)
      num = num + diag
   end if
   !-------#] Diagram 300:
   !-------#[ Diagram 305:
   if(nonzero(7)) then
      diag = ctenseval3(Qg, coeffs_group14%coeffs_305)
      diag = diag * denom1
      num = num + diag
   end if
   !-------#] Diagram 305:
   !-------#[ Diagram 315:
   if(nonzero(8)) then
      diag = ctenseval3(Qg, coeffs_group14%coeffs_315)
      diag = diag * denom6
      num = num + diag
   end if
   !-------#] Diagram 315:
end function numetens_group14
!-----#] function numetens_group14:
!-----#[ subroutine reduce_numetens_group14:
subroutine     reduce_numetens_group14(scale2,tot,totr,ok)
   use msamurai, only: samurai_rm, samurai_cm
   use madds, only: s_mat
   use options, only: samurai_out => iout
   use p1_dbarc_epnebbbarg_config, only: samurai_group_numerators, &
      samurai_istop, samurai_verbosity
   use p1_dbarc_epnebbbarg_kinematics
   use p1_dbarc_epnebbbarg_model
   use p1_dbarc_epnebbbarg_globalsl1, only: epspow
   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   integer, parameter :: effective_group_rank = 4
   real(ki_sam), dimension(6) :: msq
   real(ki_sam), dimension(6,4) :: Vi
   msq(1) = 0.0_ki_sam
   Vi(1,(/4,1,2,3/)) = real(k3-k2+k4, ki_sam)
   msq(2) = 0.0_ki_sam
   Vi(2,(/4,1,2,3/)) = real(-k7-k6-k5, ki_sam)
   msq(3) = real(mB*mB, ki)
   Vi(3,(/4,1,2,3/)) = real(-k7-k5, ki_sam)
   msq(4) = real(mB*mB, ki)
   Vi(4,(/4,1,2,3/)) = real(-k5, ki_sam)
   msq(5) = 0.0_ki_sam
   Vi(5,(/4,1,2,3/)) = real(0, ki_sam)
   msq(6) = 0.0_ki_sam
   Vi(6,(/4,1,2,3/)) = real(-k2, ki_sam)
   !-----------#[ initialize invariants:
   allocate(s_mat(6, 6))
   s_mat(1, 1) = real(0.0_ki, ki_sam)
   s_mat(1, 2) = real(0.0_ki, ki_sam)
   s_mat(2, 1) = s_mat(1, 2)
   s_mat(1, 3) = real(es671-es67-es71, ki_sam)
   s_mat(3, 1) = s_mat(1, 3)
   s_mat(1, 4) = real(es671-mB**2, ki_sam)
   s_mat(4, 1) = s_mat(1, 4)
   s_mat(1, 5) = real(es234, ki_sam)
   s_mat(5, 1) = s_mat(1, 5)
   s_mat(1, 6) = real(es34, ki_sam)
   s_mat(6, 1) = s_mat(1, 6)
   s_mat(2, 2) = real(0.0_ki, ki_sam)
   s_mat(2, 3) = real(0.0_ki, ki_sam)
   s_mat(3, 2) = s_mat(2, 3)
   s_mat(2, 4) = real(-mB**2+es67, ki_sam)
   s_mat(4, 2) = s_mat(2, 4)
   s_mat(2, 5) = real(es567, ki_sam)
   s_mat(5, 2) = s_mat(2, 5)
   s_mat(2, 6) = real(es34+es567-es234-es12, ki_sam)
   s_mat(6, 2) = s_mat(2, 6)
   s_mat(3, 3) = real(-2.0_ki*mB**2, ki_sam)
   s_mat(3, 4) = real(-2.0_ki*mB**2, ki_sam)
   s_mat(4, 3) = s_mat(3, 4)
   s_mat(3, 5) = real(mB**2-es56-es67+es567, ki_sam)
   s_mat(5, 3) = s_mat(3, 5)
   s_mat(3, 6) = real(es34+es671+es567-es56-es234-es345-es67+mB**2-es12-es71+es712, ki_sam)
   s_mat(6, 3) = s_mat(3, 6)
   s_mat(4, 4) = real(-2.0_ki*mB**2, ki_sam)
   s_mat(4, 5) = real(0.0_ki, ki_sam)
   s_mat(5, 4) = s_mat(4, 5)
   s_mat(4, 6) = real(-es234-es345+es34+es671, ki_sam)
   s_mat(6, 4) = s_mat(4, 6)
   s_mat(5, 5) = real(0.0_ki, ki_sam)
   s_mat(5, 6) = real(0.0_ki, ki_sam)
   s_mat(6, 5) = s_mat(5, 6)
   s_mat(6, 6) = real(0.0_ki, ki_sam)
   !-----------#] initialize invariants:

   if(samurai_verbosity > 0) then
      write(samurai_out,*) "[golem-2.0] numetens_group14"
      write(samurai_out,*) "[golem-2.0] epspow=", epspow
   end if
   call samurai_rm(numetens_group14, tot, totr, Vi, msq, 6, &
      & effective_group_rank, samurai_istop, scale2, ok)
   !-----------#[ deallocate invariants:
   deallocate(s_mat)
   !-----------#] deallocate invariants:
end subroutine reduce_numetens_group14
!-----#] subroutine reduce_numetens_group14:
!-----#[ function numetens_group15:
function     numetens_group15(icut, Q, mu2) result(num)
   use tens_rec
   use p1_dbarc_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7
   use p1_dbarc_epnebbbarg_model
   implicit none
   integer, intent(in) :: icut
   complex(ki_sam), dimension(4), intent(in) :: Q
   complex(ki_sam), intent(in) :: mu2
   complex(ki_sam) :: num

   logical, dimension(0:25-1) :: nonzero
   complex(ki_gol), dimension(0:3) :: Qg
   real(ki_gol), dimension(0:3) :: R
   complex(ki_gol) :: Q2
   complex(ki_sam) :: diag, denom1, denom2, denom3, denom4, denom5, denom6

   nonzero(:) = .true.
   Qg(0) = Q(4)
   Qg(1:3) = Q(1:3)
   Q2 = Qg(0)*Qg(0) - Qg(1)*Qg(1) - Qg(2)*Qg(2) - Qg(3)*Qg(3) - mu2

   select case(icut)
   case(0)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6, ki_gol)
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
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(1)
      nonzero(2) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(11) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      R = real(k3-k2+k7+k4, ki_gol)
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
      denom4 = Q2
      R = real(-k2, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(10)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6, ki_gol)
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
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(2)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(17) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      R = real(k3-k2+k7+k4, ki_gol)
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
      R = real(-k2, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
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
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
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
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(21)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(17) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      R = real(k3-k2+k7+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = Q2
      R = real(-k2, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
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
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = Q2
      R = real(-k2, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(3)
      nonzero(2) = .false.
      nonzero(10) = .false.
      nonzero(17) = .false.
      nonzero(22) = .false.
      R = real(k3-k2+k7+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6, ki_gol)
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
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(30)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6, ki_gol)
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
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(31)
      nonzero(2) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(17) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      R = real(k3-k2+k7+k4, ki_gol)
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
      R = real(-k2, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(310)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6, ki_gol)
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
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(32)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(17) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      R = real(k3-k2+k7+k4, ki_gol)
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
      R = real(-k2, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
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
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
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
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(321)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(17) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      R = real(k3-k2+k7+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k2, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
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
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k2, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(4)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(11) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(16) = .false.
      nonzero(18) = .false.
      R = real(k3-k2+k7+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = Q2
      denom5 = 0.0_ki
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(40)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = Q2
      denom5 = 0.0_ki
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(41)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(11) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(16) = .false.
      nonzero(18) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      R = real(k3-k2+k7+k4, ki_gol)
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
      denom4 = Q2
      denom5 = 0.0_ki
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(410)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = Q2
      denom5 = 0.0_ki
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(42)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      R = real(k3-k2+k7+k4, ki_gol)
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
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(420)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = Q2
      denom5 = 0.0_ki
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(421)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      R = real(k3-k2+k7+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = Q2
      denom5 = 0.0_ki
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(4210)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = Q2
      denom5 = 0.0_ki
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(43)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(22) = .false.
      R = real(k3-k2+k7+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(430)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(431)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      R = real(k3-k2+k7+k4, ki_gol)
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
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(4310)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
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
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(432)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      R = real(k3-k2+k7+k4, ki_gol)
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
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(4320)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(4321)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      R = real(k3-k2+k7+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(5)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      R = real(k3-k2+k7+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6, ki_gol)
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
      denom6 = 0.0_ki
   case(50)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6, ki_gol)
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
      denom6 = 0.0_ki
   case(51)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      R = real(k3-k2+k7+k4, ki_gol)
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
      denom4 = Q2
      R = real(-k2, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(510)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6, ki_gol)
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
      denom6 = 0.0_ki
   case(52)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      R = real(k3-k2+k7+k4, ki_gol)
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
      R = real(-k2, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(520)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
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
      denom6 = 0.0_ki
   case(521)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      R = real(k3-k2+k7+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = Q2
      R = real(-k2, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(5210)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = Q2
      R = real(-k2, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(53)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(22) = .false.
      R = real(k3-k2+k7+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6, ki_gol)
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
      denom6 = 0.0_ki
   case(530)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6, ki_gol)
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
      denom6 = 0.0_ki
   case(531)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      R = real(k3-k2+k7+k4, ki_gol)
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
      R = real(-k2, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(5310)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6, ki_gol)
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
      denom6 = 0.0_ki
   case(532)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      R = real(k3-k2+k7+k4, ki_gol)
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
      R = real(-k2, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(5320)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
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
      denom6 = 0.0_ki
   case(5321)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      R = real(k3-k2+k7+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k2, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(54)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(18) = .false.
      R = real(k3-k2+k7+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = Q2
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(540)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = Q2
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(541)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(18) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      R = real(k3-k2+k7+k4, ki_gol)
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
      denom4 = Q2
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5410)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = Q2
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(542)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      R = real(k3-k2+k7+k4, ki_gol)
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
      denom6 = 0.0_ki
   case(5420)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = Q2
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5421)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      R = real(k3-k2+k7+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = Q2
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(543)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(22) = .false.
      R = real(k3-k2+k7+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5430)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      nonzero(24) = .false.
      denom1 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5431)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      R = real(k3-k2+k7+k4, ki_gol)
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
      denom6 = 0.0_ki
   case(5432)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(22) = .false.
      R = real(k3-k2+k7+k4, ki_gol)
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
      denom6 = 0.0_ki
   case default
      R = real(k3-k2+k7+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6, ki_gol)
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
      R = real(-k2+k7, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 6:
   if(nonzero(0)) then
      diag = ctenseval1(Qg, coeffs_group15%coeffs_6)
      diag = diag * denom1 * denom3 * denom5 * denom6
      num = num + diag
   end if
   !-------#] Diagram 6:
   !-------#[ Diagram 8:
   if(nonzero(1)) then
      diag = ctenseval1(Qg, coeffs_group15%coeffs_8)
      diag = diag * denom1 * denom5 * denom6
      num = num + diag
   end if
   !-------#] Diagram 8:
   !-------#[ Diagram 10:
   if(nonzero(2)) then
      diag = ctenseval1(Qg, coeffs_group15%coeffs_10)
      diag = diag * denom1 * denom2 * denom3 * denom4
      num = num + diag
   end if
   !-------#] Diagram 10:
   !-------#[ Diagram 17:
   if(nonzero(3)) then
      diag = ctenseval3(Qg, coeffs_group15%coeffs_17)
      diag = diag * denom3 * denom5
      num = num + diag
   end if
   !-------#] Diagram 17:
   !-------#[ Diagram 18:
   if(nonzero(4)) then
      diag = ctenseval2(Qg, coeffs_group15%coeffs_18)
      diag = diag * denom1 * denom3 * denom6
      num = num + diag
   end if
   !-------#] Diagram 18:
   !-------#[ Diagram 21:
   if(nonzero(5)) then
      diag = ctenseval2(Qg, coeffs_group15%coeffs_21)
      diag = diag * denom3 * denom5 * denom6
      num = num + diag
   end if
   !-------#] Diagram 21:
   !-------#[ Diagram 24:
   if(nonzero(6)) then
      diag = ctenseval2(Qg, coeffs_group15%coeffs_24)
      diag = diag * denom1 * denom3 * denom5 * denom6
      num = num + real(Nfrat, ki_sam) * diag
   end if
   !-------#] Diagram 24:
   !-------#[ Diagram 40:
   if(nonzero(7)) then
      diag = ctenseval2(Qg, coeffs_group15%coeffs_40)
      diag = diag * denom1 * denom3 * denom5
      num = num + diag
   end if
   !-------#] Diagram 40:
   !-------#[ Diagram 43:
   if(nonzero(8)) then
      diag = ctenseval2(Qg, coeffs_group15%coeffs_43)
      diag = diag * denom2 * denom3 * denom5
      num = num + diag
   end if
   !-------#] Diagram 43:
   !-------#[ Diagram 59:
   if(nonzero(9)) then
      diag = ctenseval1(Qg, coeffs_group15%coeffs_59)
      diag = diag * denom1 * denom2 * denom3 * denom5
      num = num + diag
   end if
   !-------#] Diagram 59:
   !-------#[ Diagram 64:
   if(nonzero(10)) then
      diag = ctenseval1(Qg, coeffs_group15%coeffs_64)
      diag = diag * denom1 * denom3 * denom4 * denom6
      num = num + diag
   end if
   !-------#] Diagram 64:
   !-------#[ Diagram 65:
   if(nonzero(11)) then
      diag = ctenseval1(Qg, coeffs_group15%coeffs_65)
      diag = diag * denom2 * denom3 * denom5 * denom6
      num = num + diag
   end if
   !-------#] Diagram 65:
   !-------#[ Diagram 71:
   if(nonzero(12)) then
      diag = ctenseval4(Qg, coeffs_group15%coeffs_71)
      diag = diag * denom3
      num = num + diag
   end if
   !-------#] Diagram 71:
   !-------#[ Diagram 78:
   if(nonzero(13)) then
      diag = ctenseval3(Qg, coeffs_group15%coeffs_78)
      diag = diag * denom5
      num = num + diag
   end if
   !-------#] Diagram 78:
   !-------#[ Diagram 86:
   if(nonzero(14)) then
      diag = ctenseval2(Qg, coeffs_group15%coeffs_86)
      diag = diag * denom1 * denom5 * denom6
      num = num + diag
   end if
   !-------#] Diagram 86:
   !-------#[ Diagram 91:
   if(nonzero(15)) then
      diag = ctenseval2(Qg, coeffs_group15%coeffs_91)
      diag = diag * denom1 * denom6
      num = num + diag
   end if
   !-------#] Diagram 91:
   !-------#[ Diagram 92:
   if(nonzero(16)) then
      diag = ctenseval2(Qg, coeffs_group15%coeffs_92)
      diag = diag * denom5 * denom6
      num = num + diag
   end if
   !-------#] Diagram 92:
   !-------#[ Diagram 103:
   if(nonzero(17)) then
      diag = ctenseval3(Qg, coeffs_group15%coeffs_103)
      diag = diag * denom3 * denom4
      num = num + diag
   end if
   !-------#] Diagram 103:
   !-------#[ Diagram 110:
   if(nonzero(18)) then
      diag = ctenseval2(Qg, coeffs_group15%coeffs_110)
      diag = diag * denom1 * denom5
      num = num + diag
   end if
   !-------#] Diagram 110:
   !-------#[ Diagram 111:
   if(nonzero(19)) then
      diag = ctenseval3(Qg, coeffs_group15%coeffs_111)
      diag = diag * denom1 * denom3
      num = num + diag
   end if
   !-------#] Diagram 111:
   !-------#[ Diagram 124:
   if(nonzero(20)) then
      diag = ctenseval3(Qg, coeffs_group15%coeffs_124)
      diag = diag * denom2 * denom3
      num = num + diag
   end if
   !-------#] Diagram 124:
   !-------#[ Diagram 137:
   if(nonzero(21)) then
      diag = ctenseval2(Qg, coeffs_group15%coeffs_137)
      diag = diag * denom1 * denom2 * denom3
      num = num + diag
   end if
   !-------#] Diagram 137:
   !-------#[ Diagram 223:
   if(nonzero(22)) then
      diag = ctenseval2(Qg, coeffs_group15%coeffs_223)
      diag = diag * denom1 * denom3 * denom4
      num = num + diag
   end if
   !-------#] Diagram 223:
   !-------#[ Diagram 296:
   if(nonzero(23)) then
      diag = ctenseval4(Qg, coeffs_group15%coeffs_296)
      num = num + diag
   end if
   !-------#] Diagram 296:
   !-------#[ Diagram 302:
   if(nonzero(24)) then
      diag = ctenseval3(Qg, coeffs_group15%coeffs_302)
      diag = diag * denom1
      num = num + diag
   end if
   !-------#] Diagram 302:
end function numetens_group15
!-----#] function numetens_group15:
!-----#[ subroutine reduce_numetens_group15:
subroutine     reduce_numetens_group15(scale2,tot,totr,ok)
   use msamurai, only: samurai_rm, samurai_cm
   use madds, only: s_mat
   use options, only: samurai_out => iout
   use p1_dbarc_epnebbbarg_config, only: samurai_group_numerators, &
      samurai_istop, samurai_verbosity
   use p1_dbarc_epnebbbarg_kinematics
   use p1_dbarc_epnebbbarg_model
   use p1_dbarc_epnebbbarg_globalsl1, only: epspow
   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   integer, parameter :: effective_group_rank = 6
   real(ki_sam), dimension(6) :: msq
   real(ki_sam), dimension(6,4) :: Vi
   msq(1) = 0.0_ki_sam
   Vi(1,(/4,1,2,3/)) = real(k3-k2+k7+k4, ki_sam)
   msq(2) = 0.0_ki_sam
   Vi(2,(/4,1,2,3/)) = real(-k6-k5, ki_sam)
   msq(3) = real(mB*mB, ki)
   Vi(3,(/4,1,2,3/)) = real(-k6, ki_sam)
   msq(4) = 0.0_ki_sam
   Vi(4,(/4,1,2,3/)) = real(0, ki_sam)
   msq(5) = 0.0_ki_sam
   Vi(5,(/4,1,2,3/)) = real(-k2, ki_sam)
   msq(6) = 0.0_ki_sam
   Vi(6,(/4,1,2,3/)) = real(-k2+k7, ki_sam)
   !-----------#[ initialize invariants:
   allocate(s_mat(6, 6))
   s_mat(1, 1) = real(0.0_ki, ki_sam)
   s_mat(1, 2) = real(0.0_ki, ki_sam)
   s_mat(2, 1) = s_mat(1, 2)
   s_mat(1, 3) = real(-es671-es567+es234+es67, ki_sam)
   s_mat(3, 1) = s_mat(1, 3)
   s_mat(1, 4) = real(-es567+es56+es234-es71, ki_sam)
   s_mat(4, 1) = s_mat(1, 4)
   s_mat(1, 5) = real(es34-es567+es56+es12-es712, ki_sam)
   s_mat(5, 1) = s_mat(1, 5)
   s_mat(1, 6) = real(es34, ki_sam)
   s_mat(6, 1) = s_mat(1, 6)
   s_mat(2, 2) = real(0.0_ki, ki_sam)
   s_mat(2, 3) = real(0.0_ki, ki_sam)
   s_mat(3, 2) = s_mat(2, 3)
   s_mat(2, 4) = real(es56, ki_sam)
   s_mat(4, 2) = s_mat(2, 4)
   s_mat(2, 5) = real(es34+es56-es234+es71-es712, ki_sam)
   s_mat(5, 2) = s_mat(2, 5)
   s_mat(2, 6) = real(es34+es567-es234-es12, ki_sam)
   s_mat(6, 2) = s_mat(2, 6)
   s_mat(3, 3) = real(-2.0_ki*mB**2, ki_sam)
   s_mat(3, 4) = real(0.0_ki, ki_sam)
   s_mat(4, 3) = s_mat(3, 4)
   s_mat(3, 5) = real(-es671+es345+es71-es712, ki_sam)
   s_mat(5, 3) = s_mat(3, 5)
   s_mat(3, 6) = real(-es671+es345+es67-mB**2-es12, ki_sam)
   s_mat(6, 3) = s_mat(3, 6)
   s_mat(4, 4) = real(0.0_ki, ki_sam)
   s_mat(4, 5) = real(0.0_ki, ki_sam)
   s_mat(5, 4) = s_mat(4, 5)
   s_mat(4, 6) = real(-es12-es71+es712, ki_sam)
   s_mat(6, 4) = s_mat(4, 6)
   s_mat(5, 5) = real(0.0_ki, ki_sam)
   s_mat(5, 6) = real(0.0_ki, ki_sam)
   s_mat(6, 5) = s_mat(5, 6)
   s_mat(6, 6) = real(0.0_ki, ki_sam)
   !-----------#] initialize invariants:

   if(samurai_verbosity > 0) then
      write(samurai_out,*) "[golem-2.0] numetens_group15"
      write(samurai_out,*) "[golem-2.0] epspow=", epspow
   end if
   call samurai_rm(numetens_group15, tot, totr, Vi, msq, 6, &
      & effective_group_rank, samurai_istop, scale2, ok)
   !-----------#[ deallocate invariants:
   deallocate(s_mat)
   !-----------#] deallocate invariants:
end subroutine reduce_numetens_group15
!-----#] subroutine reduce_numetens_group15:
!-----#[ function numetens_group16:
function     numetens_group16(icut, Q, mu2) result(num)
   use tens_rec
   use p1_dbarc_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7
   use p1_dbarc_epnebbbarg_model
   implicit none
   integer, intent(in) :: icut
   complex(ki_sam), dimension(4), intent(in) :: Q
   complex(ki_sam), intent(in) :: mu2
   complex(ki_sam) :: num

   logical, dimension(0:12-1) :: nonzero
   complex(ki_gol), dimension(0:3) :: Qg
   real(ki_gol), dimension(0:3) :: R
   complex(ki_gol) :: Q2
   complex(ki_sam) :: diag, denom1, denom2, denom3, denom4, denom5, denom6

   nonzero(:) = .true.
   Qg(0) = Q(4)
   Qg(1:3) = Q(1:3)
   Q2 = Qg(0)*Qg(0) - Qg(1)*Qg(1) - Qg(2)*Qg(2) - Qg(3)*Qg(3) - mu2

   select case(icut)
   case(0)
      nonzero(2) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(1)
      nonzero(1) = .false.
      nonzero(3) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(10)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(20)
      nonzero(2) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(21)
      nonzero(1) = .false.
      nonzero(3) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(210)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(3)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = Q2
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(30)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = Q2
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(31)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = Q2
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(310)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = Q2
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(32)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = Q2
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(320)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = Q2
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
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
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = Q2
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
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
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = Q2
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(4)
      nonzero(5) = .false.
      nonzero(11) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(40)
      nonzero(2) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(41)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(11) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(410)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(42)
      nonzero(5) = .false.
      nonzero(11) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(420)
      nonzero(2) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(421)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(11) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(4210)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(43)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(11) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(430)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(431)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(11) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(4310)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(432)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(11) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(4320)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(4321)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(11) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(5)
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(6) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      denom6 = 0.0_ki
   case(50)
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      denom6 = 0.0_ki
   case(51)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(6) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      denom6 = 0.0_ki
   case(510)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      denom6 = 0.0_ki
   case(52)
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(6) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      denom6 = 0.0_ki
   case(520)
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      denom6 = 0.0_ki
   case(521)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(6) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      denom6 = 0.0_ki
   case(5210)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      denom6 = 0.0_ki
   case(53)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = Q2
      denom6 = 0.0_ki
   case(530)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = Q2
      denom6 = 0.0_ki
   case(531)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = Q2
      denom6 = 0.0_ki
   case(5310)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = Q2
      denom6 = 0.0_ki
   case(532)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = Q2
      denom6 = 0.0_ki
   case(5320)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = Q2
      denom6 = 0.0_ki
   case(5321)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = Q2
      denom6 = 0.0_ki
   case(54)
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(540)
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(541)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5410)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(542)
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5420)
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      R = real(-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5421)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(543)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5430)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      denom1 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5431)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5432)
      nonzero(0) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case default
      R = real(k3-k2+k4, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6-k5, ki_gol)
      denom2 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6-k5, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = Q2
      R = real(-k2, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 67:
   if(nonzero(0)) then
      diag = ctenseval4(Qg, coeffs_group16%coeffs_67)
      diag = diag * denom4
      num = num + diag
   end if
   !-------#] Diagram 67:
   !-------#[ Diagram 77:
   if(nonzero(1)) then
      diag = ctenseval3(Qg, coeffs_group16%coeffs_77)
      diag = diag * denom2
      num = num + diag
   end if
   !-------#] Diagram 77:
   !-------#[ Diagram 94:
   if(nonzero(2)) then
      diag = ctenseval3(Qg, coeffs_group16%coeffs_94)
      diag = diag * denom1 * denom4
      num = num + diag
   end if
   !-------#] Diagram 94:
   !-------#[ Diagram 107:
   if(nonzero(3)) then
      diag = ctenseval2(Qg, coeffs_group16%coeffs_107)
      diag = diag * denom2 * denom6
      num = num + diag
   end if
   !-------#] Diagram 107:
   !-------#[ Diagram 117:
   if(nonzero(4)) then
      diag = ctenseval3(Qg, coeffs_group16%coeffs_117)
      diag = diag * denom4 * denom6
      num = num + diag
   end if
   !-------#] Diagram 117:
   !-------#[ Diagram 125:
   if(nonzero(5)) then
      diag = ctenseval3(Qg, coeffs_group16%coeffs_125)
      diag = diag * denom4 * denom5
      num = num + diag
   end if
   !-------#] Diagram 125:
   !-------#[ Diagram 145:
   if(nonzero(6)) then
      diag = ctenseval3(Qg, coeffs_group16%coeffs_145)
      diag = diag * denom1 * denom4 * denom6
      num = num + real(Nfrat, ki_sam) * diag
   end if
   !-------#] Diagram 145:
   !-------#[ Diagram 294:
   if(nonzero(7)) then
      diag = ctenseval4(Qg, coeffs_group16%coeffs_294)
      num = num + diag
   end if
   !-------#] Diagram 294:
   !-------#[ Diagram 304:
   if(nonzero(8)) then
      diag = ctenseval3(Qg, coeffs_group16%coeffs_304)
      diag = diag * denom1
      num = num + diag
   end if
   !-------#] Diagram 304:
   !-------#[ Diagram 314:
   if(nonzero(9)) then
      diag = ctenseval3(Qg, coeffs_group16%coeffs_314)
      diag = diag * denom6
      num = num + diag
   end if
   !-------#] Diagram 314:
   !-------#[ Diagram 317:
   if(nonzero(10)) then
      diag = ctenseval3(Qg, coeffs_group16%coeffs_317)
      diag = diag * denom1 * denom6
      num = num + diag
   end if
   !-------#] Diagram 317:
   !-------#[ Diagram 336:
   if(nonzero(11)) then
      diag = ctenseval2(Qg, coeffs_group16%coeffs_336)
      diag = diag * denom1 * denom5 * denom6
      num = num + diag
   end if
   !-------#] Diagram 336:
end function numetens_group16
!-----#] function numetens_group16:
!-----#[ subroutine reduce_numetens_group16:
subroutine     reduce_numetens_group16(scale2,tot,totr,ok)
   use msamurai, only: samurai_rm, samurai_cm
   use madds, only: s_mat
   use options, only: samurai_out => iout
   use p1_dbarc_epnebbbarg_config, only: samurai_group_numerators, &
      samurai_istop, samurai_verbosity
   use p1_dbarc_epnebbbarg_kinematics
   use p1_dbarc_epnebbbarg_model
   use p1_dbarc_epnebbbarg_globalsl1, only: epspow
   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   integer, parameter :: effective_group_rank = 6
   real(ki_sam), dimension(6) :: msq
   real(ki_sam), dimension(6,4) :: Vi
   msq(1) = 0.0_ki_sam
   Vi(1,(/4,1,2,3/)) = real(k3-k2+k4, ki_sam)
   msq(2) = 0.0_ki_sam
   Vi(2,(/4,1,2,3/)) = real(-k7-k6-k5, ki_sam)
   msq(3) = 0.0_ki_sam
   Vi(3,(/4,1,2,3/)) = real(-k6-k5, ki_sam)
   msq(4) = real(mB*mB, ki)
   Vi(4,(/4,1,2,3/)) = real(-k6, ki_sam)
   msq(5) = 0.0_ki_sam
   Vi(5,(/4,1,2,3/)) = real(0, ki_sam)
   msq(6) = 0.0_ki_sam
   Vi(6,(/4,1,2,3/)) = real(-k2, ki_sam)
   !-----------#[ initialize invariants:
   allocate(s_mat(6, 6))
   s_mat(1, 1) = real(0.0_ki, ki_sam)
   s_mat(1, 2) = real(0.0_ki, ki_sam)
   s_mat(2, 1) = s_mat(1, 2)
   s_mat(1, 3) = real(es71, ki_sam)
   s_mat(3, 1) = s_mat(1, 3)
   s_mat(1, 4) = real(-es671+es234+mB**2-es56+es71, ki_sam)
   s_mat(4, 1) = s_mat(1, 4)
   s_mat(1, 5) = real(es234, ki_sam)
   s_mat(5, 1) = s_mat(1, 5)
   s_mat(1, 6) = real(es34, ki_sam)
   s_mat(6, 1) = s_mat(1, 6)
   s_mat(2, 2) = real(0.0_ki, ki_sam)
   s_mat(2, 3) = real(0.0_ki, ki_sam)
   s_mat(3, 2) = s_mat(2, 3)
   s_mat(2, 4) = real(mB**2-es56-es67+es567, ki_sam)
   s_mat(4, 2) = s_mat(2, 4)
   s_mat(2, 5) = real(es567, ki_sam)
   s_mat(5, 2) = s_mat(2, 5)
   s_mat(2, 6) = real(es34+es567-es234-es12, ki_sam)
   s_mat(6, 2) = s_mat(2, 6)
   s_mat(3, 3) = real(0.0_ki, ki_sam)
   s_mat(3, 4) = real(0.0_ki, ki_sam)
   s_mat(4, 3) = s_mat(3, 4)
   s_mat(3, 5) = real(es56, ki_sam)
   s_mat(5, 3) = s_mat(3, 5)
   s_mat(3, 6) = real(es34+es56-es234+es71-es712, ki_sam)
   s_mat(6, 3) = s_mat(3, 6)
   s_mat(4, 4) = real(-2.0_ki*mB**2, ki_sam)
   s_mat(4, 5) = real(0.0_ki, ki_sam)
   s_mat(5, 4) = s_mat(4, 5)
   s_mat(4, 6) = real(-es671+es345+es71-es712, ki_sam)
   s_mat(6, 4) = s_mat(4, 6)
   s_mat(5, 5) = real(0.0_ki, ki_sam)
   s_mat(5, 6) = real(0.0_ki, ki_sam)
   s_mat(6, 5) = s_mat(5, 6)
   s_mat(6, 6) = real(0.0_ki, ki_sam)
   !-----------#] initialize invariants:

   if(samurai_verbosity > 0) then
      write(samurai_out,*) "[golem-2.0] numetens_group16"
      write(samurai_out,*) "[golem-2.0] epspow=", epspow
   end if
   call samurai_rm(numetens_group16, tot, totr, Vi, msq, 6, &
      & effective_group_rank, samurai_istop, scale2, ok)
   !-----------#[ deallocate invariants:
   deallocate(s_mat)
   !-----------#] deallocate invariants:
end subroutine reduce_numetens_group16
!-----#] subroutine reduce_numetens_group16:
!-----#[ function numetens_group17:
function     numetens_group17(icut, Q, mu2) result(num)
   use tens_rec
   use p1_dbarc_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7
   use p1_dbarc_epnebbbarg_model
   implicit none
   integer, intent(in) :: icut
   complex(ki_sam), dimension(4), intent(in) :: Q
   complex(ki_sam), intent(in) :: mu2
   complex(ki_sam) :: num

   logical, dimension(0:2-1) :: nonzero
   complex(ki_gol), dimension(0:3) :: Qg
   real(ki_gol), dimension(0:3) :: R
   complex(ki_gol) :: Q2
   complex(ki_sam) :: diag, denom1, denom2, denom3, denom4, denom5, denom6

   nonzero(:) = .true.
   Qg(0) = Q(4)
   Qg(1:3) = Q(1:3)
   Q2 = Qg(0)*Qg(0) - Qg(1)*Qg(1) - Qg(2)*Qg(2) - Qg(3)*Qg(3) - mu2

   select case(icut)
   case(0)
      nonzero(1) = .false.
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
      R = real(k3-k2+k7+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(10)
      nonzero(1) = .false.
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
      R = real(k3-k2+k7+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(20)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k7+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(210)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k7+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(30)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k6, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(k3-k2+k7+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(310)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(k3-k2+k7+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(320)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(k3-k2+k7+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(3210)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(k3-k2+k7+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(40)
      nonzero(1) = .false.
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
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(410)
      nonzero(1) = .false.
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
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(420)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(4210)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(430)
      nonzero(1) = .false.
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
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(4310)
      nonzero(1) = .false.
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
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(4320)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(50)
      nonzero(1) = .false.
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
      R = real(k3-k2+k7+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(510)
      nonzero(1) = .false.
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
      R = real(k3-k2+k7+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(520)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k7+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(5210)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k7+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(530)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k6, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(k3-k2+k7+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(5310)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(k3-k2+k7+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(5320)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(k3-k2+k7+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(540)
      nonzero(1) = .false.
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
      denom6 = 0.0_ki
   case(5410)
      nonzero(1) = .false.
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
      denom6 = 0.0_ki
   case(5420)
      nonzero(1) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k6-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5430)
      nonzero(1) = .false.
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
      denom6 = 0.0_ki
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
      R = real(k3-k2+k7+k4, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 291:
   if(nonzero(0)) then
      diag = ctenseval4(Qg, coeffs_group17%coeffs_291)
      num = num + diag
   end if
   !-------#] Diagram 291:
   !-------#[ Diagram 309:
   if(nonzero(1)) then
      diag = ctenseval3(Qg, coeffs_group17%coeffs_309)
      diag = diag * denom1
      num = num + diag
   end if
   !-------#] Diagram 309:
end function numetens_group17
!-----#] function numetens_group17:
!-----#[ subroutine reduce_numetens_group17:
subroutine     reduce_numetens_group17(scale2,tot,totr,ok)
   use msamurai, only: samurai_rm, samurai_cm
   use madds, only: s_mat
   use options, only: samurai_out => iout
   use p1_dbarc_epnebbbarg_config, only: samurai_group_numerators, &
      samurai_istop, samurai_verbosity
   use p1_dbarc_epnebbbarg_kinematics
   use p1_dbarc_epnebbbarg_model
   use p1_dbarc_epnebbbarg_globalsl1, only: epspow
   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   integer, parameter :: effective_group_rank = 4
   real(ki_sam), dimension(6) :: msq
   real(ki_sam), dimension(6,4) :: Vi
   msq(1) = 0.0_ki_sam
   Vi(1,(/4,1,2,3/)) = real(-k2, ki_sam)
   msq(2) = 0.0_ki_sam
   Vi(2,(/4,1,2,3/)) = real(0, ki_sam)
   msq(3) = real(mB*mB, ki)
   Vi(3,(/4,1,2,3/)) = real(-k6, ki_sam)
   msq(4) = 0.0_ki_sam
   Vi(4,(/4,1,2,3/)) = real(-k6-k5, ki_sam)
   msq(5) = 0.0_ki_sam
   Vi(5,(/4,1,2,3/)) = real(k3-k2+k7+k4, ki_sam)
   msq(6) = 0.0_ki_sam
   Vi(6,(/4,1,2,3/)) = real(k3-k2+k4, ki_sam)
   !-----------#[ initialize invariants:
   allocate(s_mat(6, 6))
   s_mat(1, 1) = real(0.0_ki, ki_sam)
   s_mat(1, 2) = real(0.0_ki, ki_sam)
   s_mat(2, 1) = s_mat(1, 2)
   s_mat(1, 3) = real(-es671+es345+es71-es712, ki_sam)
   s_mat(3, 1) = s_mat(1, 3)
   s_mat(1, 4) = real(es34+es56-es234+es71-es712, ki_sam)
   s_mat(4, 1) = s_mat(1, 4)
   s_mat(1, 5) = real(es34-es567+es56+es12-es712, ki_sam)
   s_mat(5, 1) = s_mat(1, 5)
   s_mat(1, 6) = real(es34, ki_sam)
   s_mat(6, 1) = s_mat(1, 6)
   s_mat(2, 2) = real(0.0_ki, ki_sam)
   s_mat(2, 3) = real(0.0_ki, ki_sam)
   s_mat(3, 2) = s_mat(2, 3)
   s_mat(2, 4) = real(es56, ki_sam)
   s_mat(4, 2) = s_mat(2, 4)
   s_mat(2, 5) = real(-es567+es56+es234-es71, ki_sam)
   s_mat(5, 2) = s_mat(2, 5)
   s_mat(2, 6) = real(es234, ki_sam)
   s_mat(6, 2) = s_mat(2, 6)
   s_mat(3, 3) = real(-2.0_ki*mB**2, ki_sam)
   s_mat(3, 4) = real(0.0_ki, ki_sam)
   s_mat(4, 3) = s_mat(3, 4)
   s_mat(3, 5) = real(-es671-es567+es234+es67, ki_sam)
   s_mat(5, 3) = s_mat(3, 5)
   s_mat(3, 6) = real(-es671+es234+mB**2-es56+es71, ki_sam)
   s_mat(6, 3) = s_mat(3, 6)
   s_mat(4, 4) = real(0.0_ki, ki_sam)
   s_mat(4, 5) = real(0.0_ki, ki_sam)
   s_mat(5, 4) = s_mat(4, 5)
   s_mat(4, 6) = real(es71, ki_sam)
   s_mat(6, 4) = s_mat(4, 6)
   s_mat(5, 5) = real(0.0_ki, ki_sam)
   s_mat(5, 6) = real(0.0_ki, ki_sam)
   s_mat(6, 5) = s_mat(5, 6)
   s_mat(6, 6) = real(0.0_ki, ki_sam)
   !-----------#] initialize invariants:

   if(samurai_verbosity > 0) then
      write(samurai_out,*) "[golem-2.0] numetens_group17"
      write(samurai_out,*) "[golem-2.0] epspow=", epspow
   end if
   call samurai_rm(numetens_group17, tot, totr, Vi, msq, 6, &
      & effective_group_rank, samurai_istop, scale2, ok)
   !-----------#[ deallocate invariants:
   deallocate(s_mat)
   !-----------#] deallocate invariants:
end subroutine reduce_numetens_group17
!-----#] subroutine reduce_numetens_group17:
!-----#[ function numetens_group18:
function     numetens_group18(icut, Q, mu2) result(num)
   use tens_rec
   use p1_dbarc_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7
   use p1_dbarc_epnebbbarg_model
   implicit none
   integer, intent(in) :: icut
   complex(ki_sam), dimension(4), intent(in) :: Q
   complex(ki_sam), intent(in) :: mu2
   complex(ki_sam) :: num

   logical, dimension(0:28-1) :: nonzero
   complex(ki_gol), dimension(0:3) :: Qg
   real(ki_gol), dimension(0:3) :: R
   complex(ki_gol) :: Q2
   complex(ki_sam) :: diag, denom1, denom2, denom3, denom4, denom5, denom6

   nonzero(:) = .true.
   Qg(0) = Q(4)
   Qg(1:3) = Q(1:3)
   Q2 = Qg(0)*Qg(0) - Qg(1)*Qg(1) - Qg(2)*Qg(2) - Qg(3)*Qg(3) - mu2

   select case(icut)
   case(0)
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(6) = .false.
      nonzero(10) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k6, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(1)
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(17) = .false.
      nonzero(27) = .false.
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
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(10)
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(10) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
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
      nonzero(9) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(14) = .false.
      nonzero(16) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
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
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
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
      nonzero(9) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(14) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(27) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
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
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(3)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      nonzero(17) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
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
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(30)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k6, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(31)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      nonzero(17) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(27) = .false.
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
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(310)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
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
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
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
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
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
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(27) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
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
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(4)
      nonzero(4) = .false.
      nonzero(6) = .false.
      nonzero(18) = .false.
      nonzero(26) = .false.
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
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(40)
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(6) = .false.
      nonzero(10) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k6, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(41)
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
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
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(410)
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(10) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
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
      nonzero(12) = .false.
      nonzero(14) = .false.
      nonzero(16) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(26) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
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
      nonzero(12) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
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
      nonzero(12) = .false.
      nonzero(14) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
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
      nonzero(12) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(43)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(26) = .false.
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
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(430)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
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
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(431)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
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
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(4310)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
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
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(432)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(26) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(4320)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(4321)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(5)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(7) = .false.
      nonzero(11) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
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
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(50)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k6, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(51)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(11) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
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
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(510)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(52)
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
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(520)
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
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(521)
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
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(5210)
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
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(53)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
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
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(530)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k6, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(531)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
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
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(5310)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(532)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(5320)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(5321)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(54)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(11) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
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
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(540)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k6, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(541)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(11) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
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
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5410)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k6, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(542)
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
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5420)
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
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5421)
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
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(543)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
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
      denom6 = 0.0_ki
   case(5430)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(24) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
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
      denom6 = 0.0_ki
   case(5431)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
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
      denom6 = 0.0_ki
   case(5432)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(4) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      nonzero(9) = .false.
      nonzero(10) = .false.
      nonzero(11) = .false.
      nonzero(12) = .false.
      nonzero(13) = .false.
      nonzero(14) = .false.
      nonzero(15) = .false.
      nonzero(16) = .false.
      nonzero(17) = .false.
      nonzero(18) = .false.
      nonzero(19) = .false.
      nonzero(20) = .false.
      nonzero(21) = .false.
      nonzero(23) = .false.
      nonzero(25) = .false.
      nonzero(26) = .false.
      nonzero(27) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
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
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 1:
   if(nonzero(0)) then
      diag = ctenseval2(Qg, coeffs_group18%coeffs_1)
      diag = diag * denom3 * denom4
      num = num + diag
   end if
   !-------#] Diagram 1:
   !-------#[ Diagram 2:
   if(nonzero(1)) then
      diag = ctenseval1(Qg, coeffs_group18%coeffs_2)
      diag = diag * denom3 * denom4 * denom6
      num = num + diag
   end if
   !-------#] Diagram 2:
   !-------#[ Diagram 3:
   if(nonzero(2)) then
      diag = ctenseval1(Qg, coeffs_group18%coeffs_3)
      diag = diag * denom1 * denom3 * denom4
      num = num + diag
   end if
   !-------#] Diagram 3:
   !-------#[ Diagram 4:
   if(nonzero(3)) then
      diag = ctenseval1(Qg, coeffs_group18%coeffs_4)
      diag = diag * denom1 * denom3 * denom4 * denom6
      num = num + diag
   end if
   !-------#] Diagram 4:
   !-------#[ Diagram 20:
   if(nonzero(4)) then
      diag = ctenseval2(Qg, coeffs_group18%coeffs_20)
      diag = diag * denom3 * denom4 * denom5
      num = num + diag
   end if
   !-------#] Diagram 20:
   !-------#[ Diagram 23:
   if(nonzero(5)) then
      diag = ctenseval2(Qg, coeffs_group18%coeffs_23)
      diag = diag * denom2 * denom3 * denom4
      num = num + diag
   end if
   !-------#] Diagram 23:
   !-------#[ Diagram 62:
   if(nonzero(6)) then
      diag = ctenseval1(Qg, coeffs_group18%coeffs_62)
      diag = diag * denom1 * denom3 * denom4 * denom5
      num = num + diag
   end if
   !-------#] Diagram 62:
   !-------#[ Diagram 63:
   if(nonzero(7)) then
      diag = ctenseval1(Qg, coeffs_group18%coeffs_63)
      diag = diag * denom2 * denom3 * denom4 * denom6
      num = num + diag
   end if
   !-------#] Diagram 63:
   !-------#[ Diagram 73:
   if(nonzero(8)) then
      diag = ctenseval3(Qg, coeffs_group18%coeffs_73)
      diag = diag * denom4
      num = num + diag
   end if
   !-------#] Diagram 73:
   !-------#[ Diagram 74:
   if(nonzero(9)) then
      diag = ctenseval3(Qg, coeffs_group18%coeffs_74)
      diag = diag * denom3
      num = num + diag
   end if
   !-------#] Diagram 74:
   !-------#[ Diagram 99:
   if(nonzero(10)) then
      diag = ctenseval2(Qg, coeffs_group18%coeffs_99)
      diag = diag * denom1 * denom4
      num = num + diag
   end if
   !-------#] Diagram 99:
   !-------#[ Diagram 100:
   if(nonzero(11)) then
      diag = ctenseval2(Qg, coeffs_group18%coeffs_100)
      diag = diag * denom3 * denom6
      num = num + diag
   end if
   !-------#] Diagram 100:
   !-------#[ Diagram 104:
   if(nonzero(12)) then
      diag = ctenseval3(Qg, coeffs_group18%coeffs_104)
      diag = diag * denom3 * denom4
      num = num + diag
   end if
   !-------#] Diagram 104:
   !-------#[ Diagram 119:
   if(nonzero(13)) then
      diag = ctenseval2(Qg, coeffs_group18%coeffs_119)
      diag = diag * denom4 * denom6
      num = num + diag
   end if
   !-------#] Diagram 119:
   !-------#[ Diagram 122:
   if(nonzero(14)) then
      diag = ctenseval2(Qg, coeffs_group18%coeffs_122)
      diag = diag * denom1 * denom3
      num = num + diag
   end if
   !-------#] Diagram 122:
   !-------#[ Diagram 175:
   if(nonzero(15)) then
      diag = ctenseval2(Qg, coeffs_group18%coeffs_175)
      diag = diag * denom1 * denom4 * denom6
      num = num + diag
   end if
   !-------#] Diagram 175:
   !-------#[ Diagram 179:
   if(nonzero(16)) then
      diag = ctenseval2(Qg, coeffs_group18%coeffs_179)
      diag = diag * denom1 * denom3 * denom6
      num = num + diag
   end if
   !-------#] Diagram 179:
   !-------#[ Diagram 219:
   if(nonzero(17)) then
      diag = ctenseval2(Qg, coeffs_group18%coeffs_219)
      diag = diag * denom1 * denom2 * denom4 * denom6
      num = num + diag
   end if
   !-------#] Diagram 219:
   !-------#[ Diagram 221:
   if(nonzero(18)) then
      diag = ctenseval2(Qg, coeffs_group18%coeffs_221)
      diag = diag * denom1 * denom3 * denom5 * denom6
      num = num + diag
   end if
   !-------#] Diagram 221:
   !-------#[ Diagram 225:
   if(nonzero(19)) then
      diag = ctenseval2(Qg, coeffs_group18%coeffs_225)
      diag = diag * denom3 * denom4 * denom6
      num = num + diag
   end if
   !-------#] Diagram 225:
   !-------#[ Diagram 229:
   if(nonzero(20)) then
      diag = ctenseval2(Qg, coeffs_group18%coeffs_229)
      diag = diag * denom1 * denom3 * denom4
      num = num + diag
   end if
   !-------#] Diagram 229:
   !-------#[ Diagram 240:
   if(nonzero(21)) then
      diag = ctenseval2(Qg, coeffs_group18%coeffs_240)
      diag = diag * denom1 * denom3 * denom4 * denom6
      num = num + real(Nfrat, ki_sam) * diag
   end if
   !-------#] Diagram 240:
   !-------#[ Diagram 299:
   if(nonzero(22)) then
      diag = ctenseval4(Qg, coeffs_group18%coeffs_299)
      num = num + diag
   end if
   !-------#] Diagram 299:
   !-------#[ Diagram 307:
   if(nonzero(23)) then
      diag = ctenseval3(Qg, coeffs_group18%coeffs_307)
      diag = diag * denom6
      num = num + diag
   end if
   !-------#] Diagram 307:
   !-------#[ Diagram 313:
   if(nonzero(24)) then
      diag = ctenseval3(Qg, coeffs_group18%coeffs_313)
      diag = diag * denom1
      num = num + diag
   end if
   !-------#] Diagram 313:
   !-------#[ Diagram 321:
   if(nonzero(25)) then
      diag = ctenseval3(Qg, coeffs_group18%coeffs_321)
      diag = diag * denom1 * denom6
      num = num + diag
   end if
   !-------#] Diagram 321:
   !-------#[ Diagram 333:
   if(nonzero(26)) then
      diag = ctenseval2(Qg, coeffs_group18%coeffs_333)
      diag = diag * denom1 * denom5 * denom6
      num = num + diag
   end if
   !-------#] Diagram 333:
   !-------#[ Diagram 335:
   if(nonzero(27)) then
      diag = ctenseval2(Qg, coeffs_group18%coeffs_335)
      diag = diag * denom1 * denom2 * denom6
      num = num + diag
   end if
   !-------#] Diagram 335:
end function numetens_group18
!-----#] function numetens_group18:
!-----#[ subroutine reduce_numetens_group18:
subroutine     reduce_numetens_group18(scale2,tot,totr,ok)
   use msamurai, only: samurai_rm, samurai_cm
   use madds, only: s_mat
   use options, only: samurai_out => iout
   use p1_dbarc_epnebbbarg_config, only: samurai_group_numerators, &
      samurai_istop, samurai_verbosity
   use p1_dbarc_epnebbbarg_kinematics
   use p1_dbarc_epnebbbarg_model
   use p1_dbarc_epnebbbarg_globalsl1, only: epspow
   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   integer, parameter :: effective_group_rank = 6
   real(ki_sam), dimension(6) :: msq
   real(ki_sam), dimension(6,4) :: Vi
   msq(1) = 0.0_ki_sam
   Vi(1,(/4,1,2,3/)) = real(-k2, ki_sam)
   msq(2) = 0.0_ki_sam
   Vi(2,(/4,1,2,3/)) = real(0, ki_sam)
   msq(3) = real(mB*mB, ki)
   Vi(3,(/4,1,2,3/)) = real(-k6, ki_sam)
   msq(4) = real(mB*mB, ki)
   Vi(4,(/4,1,2,3/)) = real(-k7-k6, ki_sam)
   msq(5) = 0.0_ki_sam
   Vi(5,(/4,1,2,3/)) = real(-k7-k6-k5, ki_sam)
   msq(6) = 0.0_ki_sam
   Vi(6,(/4,1,2,3/)) = real(k3-k2+k4, ki_sam)
   !-----------#[ initialize invariants:
   allocate(s_mat(6, 6))
   s_mat(1, 1) = real(0.0_ki, ki_sam)
   s_mat(1, 2) = real(0.0_ki, ki_sam)
   s_mat(2, 1) = s_mat(1, 2)
   s_mat(1, 3) = real(-es671+es345+es71-es712, ki_sam)
   s_mat(3, 1) = s_mat(1, 3)
   s_mat(1, 4) = real(-es671+es345+es67-mB**2-es12, ki_sam)
   s_mat(4, 1) = s_mat(1, 4)
   s_mat(1, 5) = real(es34+es567-es234-es12, ki_sam)
   s_mat(5, 1) = s_mat(1, 5)
   s_mat(1, 6) = real(es34, ki_sam)
   s_mat(6, 1) = s_mat(1, 6)
   s_mat(2, 2) = real(0.0_ki, ki_sam)
   s_mat(2, 3) = real(0.0_ki, ki_sam)
   s_mat(3, 2) = s_mat(2, 3)
   s_mat(2, 4) = real(-mB**2+es67, ki_sam)
   s_mat(4, 2) = s_mat(2, 4)
   s_mat(2, 5) = real(es567, ki_sam)
   s_mat(5, 2) = s_mat(2, 5)
   s_mat(2, 6) = real(es234, ki_sam)
   s_mat(6, 2) = s_mat(2, 6)
   s_mat(3, 3) = real(-2.0_ki*mB**2, ki_sam)
   s_mat(3, 4) = real(-2.0_ki*mB**2, ki_sam)
   s_mat(4, 3) = s_mat(3, 4)
   s_mat(3, 5) = real(mB**2-es56-es67+es567, ki_sam)
   s_mat(5, 3) = s_mat(3, 5)
   s_mat(3, 6) = real(-es671+es234+mB**2-es56+es71, ki_sam)
   s_mat(6, 3) = s_mat(3, 6)
   s_mat(4, 4) = real(-2.0_ki*mB**2, ki_sam)
   s_mat(4, 5) = real(0.0_ki, ki_sam)
   s_mat(5, 4) = s_mat(4, 5)
   s_mat(4, 6) = real(-es671-es567+es234+es67, ki_sam)
   s_mat(6, 4) = s_mat(4, 6)
   s_mat(5, 5) = real(0.0_ki, ki_sam)
   s_mat(5, 6) = real(0.0_ki, ki_sam)
   s_mat(6, 5) = s_mat(5, 6)
   s_mat(6, 6) = real(0.0_ki, ki_sam)
   !-----------#] initialize invariants:

   if(samurai_verbosity > 0) then
      write(samurai_out,*) "[golem-2.0] numetens_group18"
      write(samurai_out,*) "[golem-2.0] epspow=", epspow
   end if
   call samurai_rm(numetens_group18, tot, totr, Vi, msq, 6, &
      & effective_group_rank, samurai_istop, scale2, ok)
   !-----------#[ deallocate invariants:
   deallocate(s_mat)
   !-----------#] deallocate invariants:
end subroutine reduce_numetens_group18
!-----#] subroutine reduce_numetens_group18:
!-----#[ function numetens_group19:
function     numetens_group19(icut, Q, mu2) result(num)
   use tens_rec
   use p1_dbarc_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7
   use p1_dbarc_epnebbbarg_model
   implicit none
   integer, intent(in) :: icut
   complex(ki_sam), dimension(4), intent(in) :: Q
   complex(ki_sam), intent(in) :: mu2
   complex(ki_sam) :: num

   logical, dimension(0:3-1) :: nonzero
   complex(ki_gol), dimension(0:3) :: Qg
   real(ki_gol), dimension(0:3) :: R
   complex(ki_gol) :: Q2
   complex(ki_sam) :: diag, denom1, denom2, denom3, denom4, denom5, denom6

   nonzero(:) = .true.
   Qg(0) = Q(4)
   Qg(1:3) = Q(1:3)
   Q2 = Qg(0)*Qg(0) - Qg(1)*Qg(1) - Qg(2)*Qg(2) - Qg(3)*Qg(3) - mu2

   select case(icut)
   case(0)
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(10)
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(20)
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k7-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(210)
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k7-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(30)
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(310)
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(320)
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(3210)
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(40)
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(410)
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(420)
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k7-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(4210)
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k7-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(430)
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(4310)
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(4320)
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(5)
      nonzero(1) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(50)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(51)
      nonzero(1) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(510)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(52)
      nonzero(1) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k7-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(520)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k7-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(521)
      nonzero(1) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k7-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(5210)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k7-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(53)
      nonzero(1) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(530)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(531)
      nonzero(1) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(5310)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(532)
      nonzero(1) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(5320)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(5321)
      nonzero(1) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(54)
      nonzero(1) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(540)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(541)
      nonzero(1) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5410)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(542)
      nonzero(1) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k7-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5420)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k7-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5421)
      nonzero(1) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k7-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(543)
      nonzero(1) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5430)
      nonzero(1) = .false.
      nonzero(2) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5431)
      nonzero(1) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5432)
      nonzero(1) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case default
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k5, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 293:
   if(nonzero(0)) then
      diag = ctenseval4(Qg, coeffs_group19%coeffs_293)
      num = num + diag
   end if
   !-------#] Diagram 293:
   !-------#[ Diagram 306:
   if(nonzero(1)) then
      diag = ctenseval3(Qg, coeffs_group19%coeffs_306)
      diag = diag * denom6
      num = num + diag
   end if
   !-------#] Diagram 306:
   !-------#[ Diagram 312:
   if(nonzero(2)) then
      diag = ctenseval3(Qg, coeffs_group19%coeffs_312)
      diag = diag * denom1
      num = num + diag
   end if
   !-------#] Diagram 312:
end function numetens_group19
!-----#] function numetens_group19:
!-----#[ subroutine reduce_numetens_group19:
subroutine     reduce_numetens_group19(scale2,tot,totr,ok)
   use msamurai, only: samurai_rm, samurai_cm
   use madds, only: s_mat
   use options, only: samurai_out => iout
   use p1_dbarc_epnebbbarg_config, only: samurai_group_numerators, &
      samurai_istop, samurai_verbosity
   use p1_dbarc_epnebbbarg_kinematics
   use p1_dbarc_epnebbbarg_model
   use p1_dbarc_epnebbbarg_globalsl1, only: epspow
   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   integer, parameter :: effective_group_rank = 4
   real(ki_sam), dimension(6) :: msq
   real(ki_sam), dimension(6,4) :: Vi
   msq(1) = 0.0_ki_sam
   Vi(1,(/4,1,2,3/)) = real(-k2, ki_sam)
   msq(2) = 0.0_ki_sam
   Vi(2,(/4,1,2,3/)) = real(0, ki_sam)
   msq(3) = 0.0_ki_sam
   Vi(3,(/4,1,2,3/)) = real(-k7, ki_sam)
   msq(4) = real(mB*mB, ki)
   Vi(4,(/4,1,2,3/)) = real(-k7-k5, ki_sam)
   msq(5) = 0.0_ki_sam
   Vi(5,(/4,1,2,3/)) = real(-k7-k6-k5, ki_sam)
   msq(6) = 0.0_ki_sam
   Vi(6,(/4,1,2,3/)) = real(k3-k2+k4, ki_sam)
   !-----------#[ initialize invariants:
   allocate(s_mat(6, 6))
   s_mat(1, 1) = real(0.0_ki, ki_sam)
   s_mat(1, 2) = real(0.0_ki, ki_sam)
   s_mat(2, 1) = s_mat(1, 2)
   s_mat(1, 3) = real(-es12-es71+es712, ki_sam)
   s_mat(3, 1) = s_mat(1, 3)
   s_mat(1, 4) = real(es34+es671+es567-es56-es234-es345-es67+mB**2-es12-es71+es712, ki_sam)
   s_mat(4, 1) = s_mat(1, 4)
   s_mat(1, 5) = real(es34+es567-es234-es12, ki_sam)
   s_mat(5, 1) = s_mat(1, 5)
   s_mat(1, 6) = real(es34, ki_sam)
   s_mat(6, 1) = s_mat(1, 6)
   s_mat(2, 2) = real(0.0_ki, ki_sam)
   s_mat(2, 3) = real(0.0_ki, ki_sam)
   s_mat(3, 2) = s_mat(2, 3)
   s_mat(2, 4) = real(mB**2-es56-es67+es567, ki_sam)
   s_mat(4, 2) = s_mat(2, 4)
   s_mat(2, 5) = real(es567, ki_sam)
   s_mat(5, 2) = s_mat(2, 5)
   s_mat(2, 6) = real(es234, ki_sam)
   s_mat(6, 2) = s_mat(2, 6)
   s_mat(3, 3) = real(0.0_ki, ki_sam)
   s_mat(3, 4) = real(0.0_ki, ki_sam)
   s_mat(4, 3) = s_mat(3, 4)
   s_mat(3, 5) = real(es56, ki_sam)
   s_mat(5, 3) = s_mat(3, 5)
   s_mat(3, 6) = real(-es567+es56+es234-es71, ki_sam)
   s_mat(6, 3) = s_mat(3, 6)
   s_mat(4, 4) = real(-2.0_ki*mB**2, ki_sam)
   s_mat(4, 5) = real(0.0_ki, ki_sam)
   s_mat(5, 4) = s_mat(4, 5)
   s_mat(4, 6) = real(es671-es67-es71, ki_sam)
   s_mat(6, 4) = s_mat(4, 6)
   s_mat(5, 5) = real(0.0_ki, ki_sam)
   s_mat(5, 6) = real(0.0_ki, ki_sam)
   s_mat(6, 5) = s_mat(5, 6)
   s_mat(6, 6) = real(0.0_ki, ki_sam)
   !-----------#] initialize invariants:

   if(samurai_verbosity > 0) then
      write(samurai_out,*) "[golem-2.0] numetens_group19"
      write(samurai_out,*) "[golem-2.0] epspow=", epspow
   end if
   call samurai_rm(numetens_group19, tot, totr, Vi, msq, 6, &
      & effective_group_rank, samurai_istop, scale2, ok)
   !-----------#[ deallocate invariants:
   deallocate(s_mat)
   !-----------#] deallocate invariants:
end subroutine reduce_numetens_group19
!-----#] subroutine reduce_numetens_group19:
!-----#[ function numetens_group20:
function     numetens_group20(icut, Q, mu2) result(num)
   use tens_rec
   use p1_dbarc_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7
   use p1_dbarc_epnebbbarg_model
   implicit none
   integer, intent(in) :: icut
   complex(ki_sam), dimension(4), intent(in) :: Q
   complex(ki_sam), intent(in) :: mu2
   complex(ki_sam) :: num

   logical, dimension(0:9-1) :: nonzero
   complex(ki_gol), dimension(0:3) :: Qg
   real(ki_gol), dimension(0:3) :: R
   complex(ki_gol) :: Q2
   complex(ki_sam) :: diag, denom1, denom2, denom3, denom4, denom5, denom6

   nonzero(:) = .true.
   Qg(0) = Q(4)
   Qg(1:3) = Q(1:3)
   Q2 = Qg(0)*Qg(0) - Qg(1)*Qg(1) - Qg(2)*Qg(2) - Qg(3)*Qg(3) - mu2

   select case(icut)
   case(0)
      nonzero(1) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(10)
      nonzero(1) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(20)
      nonzero(1) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(210)
      nonzero(1) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(3)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(30)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(31)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(310)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(32)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(320)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(321)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(3210)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(4)
      nonzero(3) = .false.
      nonzero(8) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(40)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(41)
      nonzero(3) = .false.
      nonzero(8) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(410)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(42)
      nonzero(3) = .false.
      nonzero(8) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(420)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(421)
      nonzero(3) = .false.
      nonzero(8) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(4210)
      nonzero(1) = .false.
      nonzero(3) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(43)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(8) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(430)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(431)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(8) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(4310)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(432)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(8) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(4320)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(4321)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(8) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   case(5)
      nonzero(2) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(50)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(51)
      nonzero(2) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(510)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(52)
      nonzero(2) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(520)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(521)
      nonzero(2) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(5210)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(53)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(530)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(531)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(5310)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(532)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(5320)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(5321)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom6 = 0.0_ki
   case(54)
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(540)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(541)
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5410)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = 0.0_ki
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(542)
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5420)
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5421)
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      denom3 = 0.0_ki
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(543)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5430)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(6) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      denom1 = 0.0_ki
      denom2 = Q2
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5431)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = 0.0_ki
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case(5432)
      nonzero(0) = .false.
      nonzero(1) = .false.
      nonzero(2) = .false.
      nonzero(3) = .false.
      nonzero(5) = .false.
      nonzero(7) = .false.
      nonzero(8) = .false.
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      denom3 = 0.0_ki
      denom4 = 0.0_ki
      denom5 = 0.0_ki
      denom6 = 0.0_ki
   case default
      R = real(-k2, ki_gol)
      denom1 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      denom2 = Q2
      R = real(-k7, ki_gol)
      denom3 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(-k7-k6, ki_gol)
      denom4 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)&
                 &    - mB*mB
      R = real(-k7-k6-k5, ki_gol)
      denom5 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
      R = real(k3-k2+k4, ki_gol)
      denom6 = Q2 + (Qg(0) + Qg(0) + R(0))*R(0) &
                 &    - (Qg(1) + Qg(1) + R(1))*R(1) &
                 &    - (Qg(2) + Qg(2) + R(2))*R(2) &
                 &    - (Qg(3) + Qg(3) + R(3))*R(3)
   end select

   num = (0.0_ki_sam, 0.0_ki_sam)
   !-------#[ Diagram 69:
   if(nonzero(0)) then
      diag = ctenseval4(Qg, coeffs_group20%coeffs_69)
      diag = diag * denom4
      num = num + diag
   end if
   !-------#] Diagram 69:
   !-------#[ Diagram 96:
   if(nonzero(1)) then
      diag = ctenseval3(Qg, coeffs_group20%coeffs_96)
      diag = diag * denom1 * denom4
      num = num + diag
   end if
   !-------#] Diagram 96:
   !-------#[ Diagram 113:
   if(nonzero(2)) then
      diag = ctenseval3(Qg, coeffs_group20%coeffs_113)
      diag = diag * denom4 * denom6
      num = num + diag
   end if
   !-------#] Diagram 113:
   !-------#[ Diagram 123:
   if(nonzero(3)) then
      diag = ctenseval3(Qg, coeffs_group20%coeffs_123)
      diag = diag * denom4 * denom5
      num = num + diag
   end if
   !-------#] Diagram 123:
   !-------#[ Diagram 297:
   if(nonzero(4)) then
      diag = ctenseval4(Qg, coeffs_group20%coeffs_297)
      num = num + diag
   end if
   !-------#] Diagram 297:
   !-------#[ Diagram 308:
   if(nonzero(5)) then
      diag = ctenseval3(Qg, coeffs_group20%coeffs_308)
      diag = diag * denom6
      num = num + diag
   end if
   !-------#] Diagram 308:
   !-------#[ Diagram 311:
   if(nonzero(6)) then
      diag = ctenseval3(Qg, coeffs_group20%coeffs_311)
      diag = diag * denom1
      num = num + diag
   end if
   !-------#] Diagram 311:
   !-------#[ Diagram 319:
   if(nonzero(7)) then
      diag = ctenseval3(Qg, coeffs_group20%coeffs_319)
      diag = diag * denom1 * denom6
      num = num + diag
   end if
   !-------#] Diagram 319:
   !-------#[ Diagram 334:
   if(nonzero(8)) then
      diag = ctenseval2(Qg, coeffs_group20%coeffs_334)
      diag = diag * denom1 * denom5 * denom6
      num = num + diag
   end if
   !-------#] Diagram 334:
end function numetens_group20
!-----#] function numetens_group20:
!-----#[ subroutine reduce_numetens_group20:
subroutine     reduce_numetens_group20(scale2,tot,totr,ok)
   use msamurai, only: samurai_rm, samurai_cm
   use madds, only: s_mat
   use options, only: samurai_out => iout
   use p1_dbarc_epnebbbarg_config, only: samurai_group_numerators, &
      samurai_istop, samurai_verbosity
   use p1_dbarc_epnebbbarg_kinematics
   use p1_dbarc_epnebbbarg_model
   use p1_dbarc_epnebbbarg_globalsl1, only: epspow
   implicit none
   real(ki_sam), intent(in) :: scale2
   complex(ki_sam), dimension(-2:0), intent(out) :: tot
   complex(ki_sam), intent(out) :: totr
   logical, intent(out) :: ok

   integer, parameter :: effective_group_rank = 5
   real(ki_sam), dimension(6) :: msq
   real(ki_sam), dimension(6,4) :: Vi
   msq(1) = 0.0_ki_sam
   Vi(1,(/4,1,2,3/)) = real(-k2, ki_sam)
   msq(2) = 0.0_ki_sam
   Vi(2,(/4,1,2,3/)) = real(0, ki_sam)
   msq(3) = 0.0_ki_sam
   Vi(3,(/4,1,2,3/)) = real(-k7, ki_sam)
   msq(4) = real(mB*mB, ki)
   Vi(4,(/4,1,2,3/)) = real(-k7-k6, ki_sam)
   msq(5) = 0.0_ki_sam
   Vi(5,(/4,1,2,3/)) = real(-k7-k6-k5, ki_sam)
   msq(6) = 0.0_ki_sam
   Vi(6,(/4,1,2,3/)) = real(k3-k2+k4, ki_sam)
   !-----------#[ initialize invariants:
   allocate(s_mat(6, 6))
   s_mat(1, 1) = real(0.0_ki, ki_sam)
   s_mat(1, 2) = real(0.0_ki, ki_sam)
   s_mat(2, 1) = s_mat(1, 2)
   s_mat(1, 3) = real(-es12-es71+es712, ki_sam)
   s_mat(3, 1) = s_mat(1, 3)
   s_mat(1, 4) = real(-es671+es345+es67-mB**2-es12, ki_sam)
   s_mat(4, 1) = s_mat(1, 4)
   s_mat(1, 5) = real(es34+es567-es234-es12, ki_sam)
   s_mat(5, 1) = s_mat(1, 5)
   s_mat(1, 6) = real(es34, ki_sam)
   s_mat(6, 1) = s_mat(1, 6)
   s_mat(2, 2) = real(0.0_ki, ki_sam)
   s_mat(2, 3) = real(0.0_ki, ki_sam)
   s_mat(3, 2) = s_mat(2, 3)
   s_mat(2, 4) = real(-mB**2+es67, ki_sam)
   s_mat(4, 2) = s_mat(2, 4)
   s_mat(2, 5) = real(es567, ki_sam)
   s_mat(5, 2) = s_mat(2, 5)
   s_mat(2, 6) = real(es234, ki_sam)
   s_mat(6, 2) = s_mat(2, 6)
   s_mat(3, 3) = real(0.0_ki, ki_sam)
   s_mat(3, 4) = real(0.0_ki, ki_sam)
   s_mat(4, 3) = s_mat(3, 4)
   s_mat(3, 5) = real(es56, ki_sam)
   s_mat(5, 3) = s_mat(3, 5)
   s_mat(3, 6) = real(-es567+es56+es234-es71, ki_sam)
   s_mat(6, 3) = s_mat(3, 6)
   s_mat(4, 4) = real(-2.0_ki*mB**2, ki_sam)
   s_mat(4, 5) = real(0.0_ki, ki_sam)
   s_mat(5, 4) = s_mat(4, 5)
   s_mat(4, 6) = real(-es671-es567+es234+es67, ki_sam)
   s_mat(6, 4) = s_mat(4, 6)
   s_mat(5, 5) = real(0.0_ki, ki_sam)
   s_mat(5, 6) = real(0.0_ki, ki_sam)
   s_mat(6, 5) = s_mat(5, 6)
   s_mat(6, 6) = real(0.0_ki, ki_sam)
   !-----------#] initialize invariants:

   if(samurai_verbosity > 0) then
      write(samurai_out,*) "[golem-2.0] numetens_group20"
      write(samurai_out,*) "[golem-2.0] epspow=", epspow
   end if
   call samurai_rm(numetens_group20, tot, totr, Vi, msq, 6, &
      & effective_group_rank, samurai_istop, scale2, ok)
   !-----------#[ deallocate invariants:
   deallocate(s_mat)
   !-----------#] deallocate invariants:
end subroutine reduce_numetens_group20
!-----#] subroutine reduce_numetens_group20:
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
end module p1_dbarc_epnebbbarg_groups
