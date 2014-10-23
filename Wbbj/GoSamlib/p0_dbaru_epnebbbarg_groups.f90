module     p0_dbaru_epnebbbarg_groups
   use precision_golem, only: ki_gol => ki
   use tens_rec
   use p0_dbaru_epnebbbarg_config, only: ki 
   implicit none
   save

   private
!---#[ tensor coefficients for golem95:
   !-----#[ tensor coefficients group 0:
   type tensrec_info_group0
      type(coeff_type_3) :: coeffs_322
   end type

   public :: tensrec_info_group0
   !-----#] tensor coefficients group 0:
   !-----#[ tensor coefficients group 1:
   type tensrec_info_group1
      type(coeff_type_2) :: coeffs_176
      type(coeff_type_3) :: coeffs_318
   end type

   public :: tensrec_info_group1
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
   !-----#] tensor coefficients group 2:
   !-----#[ tensor coefficients group 3:
   type tensrec_info_group3
      type(coeff_type_3) :: coeffs_13
      type(coeff_type_4) :: coeffs_84
   end type

   public :: tensrec_info_group3
   !-----#] tensor coefficients group 3:
   !-----#[ tensor coefficients group 4:
   type tensrec_info_group4
      type(coeff_type_3) :: coeffs_12
      type(coeff_type_4) :: coeffs_85
   end type

   public :: tensrec_info_group4
   !-----#] tensor coefficients group 4:
   !-----#[ tensor coefficients group 5:
   type tensrec_info_group5
      type(coeff_type_3) :: coeffs_15
      type(coeff_type_4) :: coeffs_83
   end type

   public :: tensrec_info_group5
   !-----#] tensor coefficients group 5:
   !-----#[ tensor coefficients group 6:
   type tensrec_info_group6
      type(coeff_type_3) :: coeffs_14
      type(coeff_type_4) :: coeffs_82
   end type

   public :: tensrec_info_group6
   !-----#] tensor coefficients group 6:
   !-----#[ tensor coefficients group 7:
   type tensrec_info_group7
      type(coeff_type_4) :: coeffs_68
   end type

   public :: tensrec_info_group7
   !-----#] tensor coefficients group 7:
   !-----#[ tensor coefficients group 8:
   type tensrec_info_group8
      type(coeff_type_4) :: coeffs_80
      type(coeff_type_3) :: coeffs_128
   end type

   public :: tensrec_info_group8
   !-----#] tensor coefficients group 8:
   !-----#[ tensor coefficients group 9:
   type tensrec_info_group9
      type(coeff_type_4) :: coeffs_66
      type(coeff_type_3) :: coeffs_127
   end type

   public :: tensrec_info_group9
   !-----#] tensor coefficients group 9:
   !-----#[ tensor coefficients group 10:
   type tensrec_info_group10
      type(coeff_type_4) :: coeffs_81
   end type

   public :: tensrec_info_group10
   !-----#] tensor coefficients group 10:
   !-----#[ tensor coefficients group 11:
   type tensrec_info_group11
      type(coeff_type_3) :: coeffs_79
      type(coeff_type_2) :: coeffs_109
      type(coeff_type_4) :: coeffs_292
      type(coeff_type_3) :: coeffs_301
   end type

   public :: tensrec_info_group11
   !-----#] tensor coefficients group 11:
   !-----#[ tensor coefficients group 12:
   type tensrec_info_group12
      type(coeff_type_4) :: coeffs_298
      type(coeff_type_3) :: coeffs_303
      type(coeff_type_3) :: coeffs_316
   end type

   public :: tensrec_info_group12
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
   !-----#] tensor coefficients group 16:
   !-----#[ tensor coefficients group 17:
   type tensrec_info_group17
      type(coeff_type_4) :: coeffs_291
      type(coeff_type_3) :: coeffs_309
   end type

   public :: tensrec_info_group17
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
   !-----#] tensor coefficients group 18:
   !-----#[ tensor coefficients group 19:
   type tensrec_info_group19
      type(coeff_type_4) :: coeffs_293
      type(coeff_type_3) :: coeffs_306
      type(coeff_type_3) :: coeffs_312
   end type

   public :: tensrec_info_group19
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
   use form_factor_type, only: form_factor, operator(+), operator(-)
   use p0_dbaru_epnebbbarg_config, only: debug_nlo_diagrams, logfile
   use p0_dbaru_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7, es234, es345, es12, es6, es671, es567, es23, &
   & es5, es123, es456, es712, es45, es56, es34, es71, &
   & es67
   use p0_dbaru_epnebbbarg_model
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
   use p0_dbaru_epnebbbarg_config, only: debug_nlo_diagrams, logfile
   use p0_dbaru_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7, es234, es345, es12, es6, es671, es567, es23, &
   & es5, es123, es456, es712, es45, es56, es34, es71, &
   & es67
   use p0_dbaru_epnebbbarg_model
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
   use p0_dbaru_epnebbbarg_config, only: debug_nlo_diagrams, logfile
   use p0_dbaru_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7, es234, es345, es12, es6, es671, es567, es23, &
   & es5, es123, es456, es712, es45, es56, es34, es71, &
   & es67
   use p0_dbaru_epnebbbarg_model
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
   use p0_dbaru_epnebbbarg_config, only: debug_nlo_diagrams, logfile
   use p0_dbaru_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7, es234, es345, es12, es6, es671, es567, es23, &
   & es5, es123, es456, es712, es45, es56, es34, es71, &
   & es67
   use p0_dbaru_epnebbbarg_model
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
   use p0_dbaru_epnebbbarg_config, only: debug_nlo_diagrams, logfile
   use p0_dbaru_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7, es234, es345, es12, es6, es671, es567, es23, &
   & es5, es123, es456, es712, es45, es56, es34, es71, &
   & es67
   use p0_dbaru_epnebbbarg_model
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
   use p0_dbaru_epnebbbarg_config, only: debug_nlo_diagrams, logfile
   use p0_dbaru_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7, es234, es345, es12, es6, es671, es567, es23, &
   & es5, es123, es456, es712, es45, es56, es34, es71, &
   & es67
   use p0_dbaru_epnebbbarg_model
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
   use p0_dbaru_epnebbbarg_config, only: debug_nlo_diagrams, logfile
   use p0_dbaru_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7, es234, es345, es12, es6, es671, es567, es23, &
   & es5, es123, es456, es712, es45, es56, es34, es71, &
   & es67
   use p0_dbaru_epnebbbarg_model
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
   use p0_dbaru_epnebbbarg_config, only: debug_nlo_diagrams, logfile
   use p0_dbaru_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7, es234, es345, es12, es6, es671, es567, es23, &
   & es5, es123, es456, es712, es45, es56, es34, es71, &
   & es67
   use p0_dbaru_epnebbbarg_model
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
   use p0_dbaru_epnebbbarg_config, only: debug_nlo_diagrams, logfile
   use p0_dbaru_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7, es234, es345, es12, es6, es671, es567, es23, &
   & es5, es123, es456, es712, es45, es56, es34, es71, &
   & es67
   use p0_dbaru_epnebbbarg_model
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
   use p0_dbaru_epnebbbarg_config, only: debug_nlo_diagrams, logfile
   use p0_dbaru_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7, es234, es345, es12, es6, es671, es567, es23, &
   & es5, es123, es456, es712, es45, es56, es34, es71, &
   & es67
   use p0_dbaru_epnebbbarg_model
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
   use p0_dbaru_epnebbbarg_config, only: debug_nlo_diagrams, logfile
   use p0_dbaru_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7, es234, es345, es12, es6, es671, es567, es23, &
   & es5, es123, es456, es712, es45, es56, es34, es71, &
   & es67
   use p0_dbaru_epnebbbarg_model
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
   use p0_dbaru_epnebbbarg_config, only: debug_nlo_diagrams, logfile
   use p0_dbaru_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7, es234, es345, es12, es6, es671, es567, es23, &
   & es5, es123, es456, es712, es45, es56, es34, es71, &
   & es67
   use p0_dbaru_epnebbbarg_model
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
   use p0_dbaru_epnebbbarg_config, only: debug_nlo_diagrams, logfile
   use p0_dbaru_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7, es234, es345, es12, es6, es671, es567, es23, &
   & es5, es123, es456, es712, es45, es56, es34, es71, &
   & es67
   use p0_dbaru_epnebbbarg_model
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
   use p0_dbaru_epnebbbarg_config, only: debug_nlo_diagrams, logfile
   use p0_dbaru_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7, es234, es345, es12, es6, es671, es567, es23, &
   & es5, es123, es456, es712, es45, es56, es34, es71, &
   & es67
   use p0_dbaru_epnebbbarg_model
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
   use p0_dbaru_epnebbbarg_config, only: debug_nlo_diagrams, logfile
   use p0_dbaru_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7, es234, es345, es12, es6, es671, es567, es23, &
   & es5, es123, es456, es712, es45, es56, es34, es71, &
   & es67
   use p0_dbaru_epnebbbarg_model
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
   use p0_dbaru_epnebbbarg_config, only: debug_nlo_diagrams, logfile
   use p0_dbaru_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7, es234, es345, es12, es6, es671, es567, es23, &
   & es5, es123, es456, es712, es45, es56, es34, es71, &
   & es67
   use p0_dbaru_epnebbbarg_model
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
   use p0_dbaru_epnebbbarg_config, only: debug_nlo_diagrams, logfile
   use p0_dbaru_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7, es234, es345, es12, es6, es671, es567, es23, &
   & es5, es123, es456, es712, es45, es56, es34, es71, &
   & es67
   use p0_dbaru_epnebbbarg_model
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
   use p0_dbaru_epnebbbarg_config, only: debug_nlo_diagrams, logfile
   use p0_dbaru_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7, es234, es345, es12, es6, es671, es567, es23, &
   & es5, es123, es456, es712, es45, es56, es34, es71, &
   & es67
   use p0_dbaru_epnebbbarg_model
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
   use p0_dbaru_epnebbbarg_config, only: debug_nlo_diagrams, logfile
   use p0_dbaru_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7, es234, es345, es12, es6, es671, es567, es23, &
   & es5, es123, es456, es712, es45, es56, es34, es71, &
   & es67
   use p0_dbaru_epnebbbarg_model
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
   use p0_dbaru_epnebbbarg_config, only: debug_nlo_diagrams, logfile
   use p0_dbaru_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7, es234, es345, es12, es6, es671, es567, es23, &
   & es5, es123, es456, es712, es45, es56, es34, es71, &
   & es67
   use p0_dbaru_epnebbbarg_model
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
   use p0_dbaru_epnebbbarg_config, only: debug_nlo_diagrams, logfile
   use p0_dbaru_epnebbbarg_kinematics, only: k1, k2, k3, k4, k5, k6, k7, es234, es345, es12, es6, es671, es567, es23, &
   & es5, es123, es456, es712, es45, es56, es34, es71, &
   & es67
   use p0_dbaru_epnebbbarg_model
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

   100 format (A30,E24.16,A6,E24.16,A3)
end function contract_tensor_coefficients_group_20
!-----#] function contract_tensor_coefficients_group_20:
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
end module p0_dbaru_epnebbbarg_groups
