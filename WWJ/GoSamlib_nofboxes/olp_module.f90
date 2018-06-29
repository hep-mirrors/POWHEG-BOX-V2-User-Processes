module     olp_module
   use, intrinsic :: iso_c_binding;
   implicit none
   private
   public :: OLP_Start, OLP_EvalSubProcess, OLP_Finalize, OLP_Option
   public :: OLP_EvalSubProcess2, OLP_Polvec, OLP_SetParameter, OLP_Info
   public :: OLP_PrintParameter

contains

   subroutine     OLP_Start(contract_file_name,ierr,stage,rndseed) &
   & bind(C,name="olp_start_")
      use, intrinsic :: iso_c_binding
      use p0_dbard_epnemumnmubarg_matrix, only: p0_dbard_epnemumnmubarg_initgolem => initgolem
      use p0_dbard_epnemumnmubarg_config, only: p0_dbard_epnemumnmubarg_PSP_rescue => PSP_rescue, &
           & p0_dbard_epnemumnmubarg_PSP_verbosity => PSP_verbosity, &
           & p0_dbard_epnemumnmubarg_PSP_chk_th1 => PSP_chk_th1, &
           & p0_dbard_epnemumnmubarg_PSP_chk_th2 => PSP_chk_th2, &
           & p0_dbard_epnemumnmubarg_PSP_chk_th3 => PSP_chk_th3, &
           & p0_dbard_epnemumnmubarg_PSP_chk_kfactor => PSP_chk_kfactor
      use p4_ubaru_epnemumnmubarg_matrix, only: p4_ubaru_epnemumnmubarg_initgolem => initgolem
      use p4_ubaru_epnemumnmubarg_config, only: p4_ubaru_epnemumnmubarg_PSP_rescue => PSP_rescue, &
           & p4_ubaru_epnemumnmubarg_PSP_verbosity => PSP_verbosity, &
           & p4_ubaru_epnemumnmubarg_PSP_chk_th1 => PSP_chk_th1, &
           & p4_ubaru_epnemumnmubarg_PSP_chk_th2 => PSP_chk_th2, &
           & p4_ubaru_epnemumnmubarg_PSP_chk_th3 => PSP_chk_th3, &
           & p4_ubaru_epnemumnmubarg_PSP_chk_kfactor => PSP_chk_kfactor
      use p8_cbarc_epnemumnmubarg_matrix, only: p8_cbarc_epnemumnmubarg_initgolem => initgolem
      use p8_cbarc_epnemumnmubarg_config, only: p8_cbarc_epnemumnmubarg_PSP_rescue => PSP_rescue, &
           & p8_cbarc_epnemumnmubarg_PSP_verbosity => PSP_verbosity, &
           & p8_cbarc_epnemumnmubarg_PSP_chk_th1 => PSP_chk_th1, &
           & p8_cbarc_epnemumnmubarg_PSP_chk_th2 => PSP_chk_th2, &
           & p8_cbarc_epnemumnmubarg_PSP_chk_th3 => PSP_chk_th3, &
           & p8_cbarc_epnemumnmubarg_PSP_chk_kfactor => PSP_chk_kfactor
      use p12_sbars_epnemumnmubarg_matrix, only: p12_sbars_epnemumnmubarg_initgolem => initgolem
      use p12_sbars_epnemumnmubarg_config, only: p12_sbars_epnemumnmubarg_PSP_rescue => PSP_rescue, &
           & p12_sbars_epnemumnmubarg_PSP_verbosity => PSP_verbosity, &
           & p12_sbars_epnemumnmubarg_PSP_chk_th1 => PSP_chk_th1, &
           & p12_sbars_epnemumnmubarg_PSP_chk_th2 => PSP_chk_th2, &
           & p12_sbars_epnemumnmubarg_PSP_chk_th3 => PSP_chk_th3, &
           & p12_sbars_epnemumnmubarg_PSP_chk_kfactor => PSP_chk_kfactor
      implicit none
      character(kind=c_char,len=1), intent(in) :: contract_file_name
      integer(kind=c_int), intent(out) :: ierr
      integer(kind=c_int), intent(in) :: stage, rndseed
      interface
         function strlen(s) bind(C,name='strlen')
            use, intrinsic :: iso_c_binding
            implicit none
            character(kind=c_char,len=1), intent(in) :: s
            integer(kind=c_int) :: strlen
         end function strlen
      end interface

      integer :: l, ferr
      character(len=128) :: line_buf
      character(len=9) :: kw
      integer :: PSP_verbosity, PSP_chk_th1, PSP_chk_th2, PSP_chk_th3, PSP_chk_kfactor
      logical :: PSP_rescue

      ierr = 1
      l = strlen(contract_file_name)

      open(unit=21, file=contract_file_name(1:l), &
          & status='old', action='read', iostat=ferr)

      if (ferr .ne. 0) then
         write(7,*) "In OLP_Start: ", contract_file_name(1:l), " not found!"
         ierr = -1
      end if

      do while (ferr .eq. 0)
         read(unit=21,fmt='(A128)',iostat=ferr) line_buf
         if (ferr .ne. 0) exit
         line_buf = adjustl(line_buf)
         kw = line_buf(1:9)
         do
            l = scan(kw, "DEFILMO")
            if (l .eq. 0) exit
            kw(l:l) = achar(ichar(kw(l:l)) - ichar('A') + ichar('a'))
         end do
         if (kw .eq. "modelfile") then
            line_buf = adjustl(line_buf(10:128))
            l = scan(line_buf, "|") - 1
            if(l .lt. 1) l = len(line_buf)
            l = len_trim(line_buf(1:l))
            exit
         end if
      end do

      close(unit=21)

      if (ierr .eq. 1) then
         call read_slha_file(line_buf(1:l))
      end if

      ! Uncomment to change rescue system setting on all suprocesses
      ! PSP_rescue = .true.
      ! PSP_verbosity = .false.
      ! PSP_chk_th1 = 4
      ! PSP_chk_th2 = 4
      ! PSP_chk_th3 = 4
      ! PSP_chk_kfactor = -1
      ! p0_dbard_epnemumnmubarg_PSP_rescue = PSP_rescue
      ! p0_dbard_epnemumnmubarg_PSP_verbosity =  PSP_verbosity
      ! p0_dbard_epnemumnmubarg_PSP_chk_th1 = PSP_chk_th1
      ! p0_dbard_epnemumnmubarg_PSP_chk_th2 = PSP_chk_th2
      ! p0_dbard_epnemumnmubarg_PSP_chk_th3 = PSP_chk_th3
      ! p0_dbard_epnemumnmubarg_PSP_chk_kfactor = PSP_chk_kfactor
      ! p4_ubaru_epnemumnmubarg_PSP_rescue = PSP_rescue
      ! p4_ubaru_epnemumnmubarg_PSP_verbosity =  PSP_verbosity
      ! p4_ubaru_epnemumnmubarg_PSP_chk_th1 = PSP_chk_th1
      ! p4_ubaru_epnemumnmubarg_PSP_chk_th2 = PSP_chk_th2
      ! p4_ubaru_epnemumnmubarg_PSP_chk_th3 = PSP_chk_th3
      ! p4_ubaru_epnemumnmubarg_PSP_chk_kfactor = PSP_chk_kfactor
      ! p8_cbarc_epnemumnmubarg_PSP_rescue = PSP_rescue
      ! p8_cbarc_epnemumnmubarg_PSP_verbosity =  PSP_verbosity
      ! p8_cbarc_epnemumnmubarg_PSP_chk_th1 = PSP_chk_th1
      ! p8_cbarc_epnemumnmubarg_PSP_chk_th2 = PSP_chk_th2
      ! p8_cbarc_epnemumnmubarg_PSP_chk_th3 = PSP_chk_th3
      ! p8_cbarc_epnemumnmubarg_PSP_chk_kfactor = PSP_chk_kfactor
      ! p12_sbars_epnemumnmubarg_PSP_rescue = PSP_rescue
      ! p12_sbars_epnemumnmubarg_PSP_verbosity =  PSP_verbosity
      ! p12_sbars_epnemumnmubarg_PSP_chk_th1 = PSP_chk_th1
      ! p12_sbars_epnemumnmubarg_PSP_chk_th2 = PSP_chk_th2
      ! p12_sbars_epnemumnmubarg_PSP_chk_th3 = PSP_chk_th3
      ! p12_sbars_epnemumnmubarg_PSP_chk_kfactor = PSP_chk_kfactor
      if(stage.lt.0) then
         call p0_dbard_epnemumnmubarg_initgolem(.true.)
         call p4_ubaru_epnemumnmubarg_initgolem(.false.)
         call p8_cbarc_epnemumnmubarg_initgolem(.false.)
         call p12_sbars_epnemumnmubarg_initgolem(.false.)
      else
         call p0_dbard_epnemumnmubarg_initgolem(.true.,stage,rndseed)
         call p4_ubaru_epnemumnmubarg_initgolem(.false.,stage,rndseed)
         call p8_cbarc_epnemumnmubarg_initgolem(.false.,stage,rndseed)
         call p12_sbars_epnemumnmubarg_initgolem(.false.,stage,rndseed)
      end if

   end subroutine OLP_Start

   subroutine OLP_Info(olp_name, olp_version, message)&
   & bind(C,name="olp_info_")
   use, intrinsic :: iso_c_binding, only: C_CHAR, C_NULL_CHAR
   use p0_dbard_epnemumnmubarg_version, only: gosamversion, gosamrevision

   implicit none
   character(kind=c_char), intent(inout), dimension(15)  :: olp_name
   character(kind=c_char), intent(inout), dimension(15)  :: olp_version
   character(kind=c_char), intent(inout), dimension(255) :: message
   character(len=254) :: msg
   character(len=6)   :: rev
   character(len=1)   :: ver1, ver2

   interface
     subroutine strncpy(dest, src, n) bind(C)
       import
       character(kind=c_char),  intent(out) :: dest(*)
       character(kind=c_char),  intent(in)  :: src(*)
       integer(c_size_t), value, intent(in) :: n
     end subroutine strncpy
   end interface

   write(ver1,'(I1)') gosamversion(1)
   write(ver2,'(I1)') gosamversion(2)
   write(rev,'(I6)')  gosamrevision

   msg = new_line('C')//'Please cite the following references when using this program:'//&
        &new_line('C')//'Peraro:2014cba, Mastrolia:2012bu, '//&
        &'Mastrolia:2010nb, Guillet:2013msa, Cullen:2011kv, Cullen:2014yla'

   call strncpy(olp_name, c_char_'GoSam-'//ver1//'.'//ver2//C_NULL_CHAR, &
        len(c_char_'GoSam-'//ver1//'.'//ver2//C_NULL_CHAR,kind=c_size_t))

   call strncpy(olp_version, c_char_'svn rev-'//trim(adjustl(rev))//C_NULL_CHAR, &
        len(c_char_'svn rev-'//trim(adjustl(rev))//C_NULL_CHAR,kind=c_size_t))

   call strncpy(message, c_char_'GoSam:'//trim(adjustl(msg))//C_NULL_CHAR, &
        len(c_char_'GoSam:'//trim(adjustl(msg))//C_NULL_CHAR,kind=c_size_t))

   end subroutine OLP_Info


   subroutine OLP_SetParameter(variable_name, real_part, imag_part, success)&
   & bind(C,name="olp_setparameter_")
      use, intrinsic :: iso_c_binding
      use p0_dbard_epnemumnmubarg_model, only: p0_dbard_epnemumnmubarg_set_parameter => set_parameter
      use p4_ubaru_epnemumnmubarg_model, only: p4_ubaru_epnemumnmubarg_set_parameter => set_parameter
      use p8_cbarc_epnemumnmubarg_model, only: p8_cbarc_epnemumnmubarg_set_parameter => set_parameter
      use p12_sbars_epnemumnmubarg_model, only: p12_sbars_epnemumnmubarg_set_parameter => set_parameter
      implicit none
      character(kind=c_char,len=1), intent(in) :: variable_name
      real(kind=c_double), intent(in) :: real_part, imag_part
      integer(kind=c_int), intent(out) :: success

      interface
         function strlen(s) bind(C,name='strlen')
            use, intrinsic :: iso_c_binding
            implicit none
            character(kind=c_char,len=1), intent(in) :: s
            integer(kind=c_int) :: strlen
         end function strlen
      end interface

      integer :: l;

      l = strlen(variable_name)
      call p0_dbard_epnemumnmubarg_set_parameter(variable_name(1:l),real_part,imag_part,success)
      if(success==0) then ! return immediately on error
          return
      end if
      call p4_ubaru_epnemumnmubarg_set_parameter(variable_name(1:l),real_part,imag_part,success)
      if(success==0) then ! return immediately on error
          return
      end if
      call p8_cbarc_epnemumnmubarg_set_parameter(variable_name(1:l),real_part,imag_part,success)
      if(success==0) then ! return immediately on error
          return
      end if
      call p12_sbars_epnemumnmubarg_set_parameter(variable_name(1:l),real_part,imag_part,success)
      if(success==0) then ! return immediately on error
          return
      end if
   end subroutine


   ! BLHA1 interface
   subroutine     OLP_EvalSubProcess(label, momenta, mu,  parameters, res) &
   & bind(C,name="olp_evalsubprocess_")
      use, intrinsic :: iso_c_binding
      implicit none
      integer(kind=c_int), intent(in) :: label
      real(kind=c_double), intent(in) :: mu
      real(kind=c_double), dimension(50), intent(in) :: momenta
      real(kind=c_double), dimension(10), intent(in) :: parameters
      real(kind=c_double), dimension(60), intent(out) :: res
      integer(kind=c_int) :: succ
      real(kind=c_double) :: alpha_s
      real(kind=c_double), parameter :: one_over_2pi = 0.15915494309189533577d0

      alpha_s = parameters(1)

      select case(label)
      case(0)
              call eval0(momenta(1:35), mu, parameters, res, blha1_mode=.true.)
              res(1:3) = alpha_s * one_over_2pi * res(1:3)
      case(1)
              call eval1(momenta(1:35), mu, parameters, res, blha1_mode=.true.)
              res(1:3) = alpha_s * one_over_2pi * res(1:3)
      case(2)
              call eval2(momenta(1:35), mu, parameters, res, blha1_mode=.true.)
              res(1:3) = alpha_s * one_over_2pi * res(1:3)
      case(3)
              call eval3(momenta(1:35), mu, parameters, res, blha1_mode=.true.)
              res(1:3) = alpha_s * one_over_2pi * res(1:3)
      case(4)
              call eval16(momenta(1:35), mu, parameters, res, blha1_mode=.true.)
              res(1:3) = alpha_s * one_over_2pi * res(1:3)
      case(5)
              call eval17(momenta(1:35), mu, parameters, res, blha1_mode=.true.)
              res(1:3) = alpha_s * one_over_2pi * res(1:3)
      case(6)
              call eval4(momenta(1:35), mu, parameters, res, blha1_mode=.true.)
              res(1:3) = alpha_s * one_over_2pi * res(1:3)
      case(7)
              call eval5(momenta(1:35), mu, parameters, res, blha1_mode=.true.)
              res(1:3) = alpha_s * one_over_2pi * res(1:3)
      case(8)
              call eval6(momenta(1:35), mu, parameters, res, blha1_mode=.true.)
              res(1:3) = alpha_s * one_over_2pi * res(1:3)
      case(9)
              call eval7(momenta(1:35), mu, parameters, res, blha1_mode=.true.)
              res(1:3) = alpha_s * one_over_2pi * res(1:3)
      case(10)
              call eval18(momenta(1:35), mu, parameters, res, blha1_mode=.true.)
              res(1:3) = alpha_s * one_over_2pi * res(1:3)
      case(11)
              call eval19(momenta(1:35), mu, parameters, res, blha1_mode=.true.)
              res(1:3) = alpha_s * one_over_2pi * res(1:3)
      case(12)
              call eval8(momenta(1:35), mu, parameters, res, blha1_mode=.true.)
              res(1:3) = alpha_s * one_over_2pi * res(1:3)
      case(13)
              call eval9(momenta(1:35), mu, parameters, res, blha1_mode=.true.)
              res(1:3) = alpha_s * one_over_2pi * res(1:3)
      case(14)
              call eval10(momenta(1:35), mu, parameters, res, blha1_mode=.true.)
              res(1:3) = alpha_s * one_over_2pi * res(1:3)
      case(15)
              call eval11(momenta(1:35), mu, parameters, res, blha1_mode=.true.)
              res(1:3) = alpha_s * one_over_2pi * res(1:3)
      case(16)
              call eval20(momenta(1:35), mu, parameters, res, blha1_mode=.true.)
              res(1:3) = alpha_s * one_over_2pi * res(1:3)
      case(17)
              call eval21(momenta(1:35), mu, parameters, res, blha1_mode=.true.)
              res(1:3) = alpha_s * one_over_2pi * res(1:3)
      case(18)
              call eval12(momenta(1:35), mu, parameters, res, blha1_mode=.true.)
              res(1:3) = alpha_s * one_over_2pi * res(1:3)
      case(19)
              call eval13(momenta(1:35), mu, parameters, res, blha1_mode=.true.)
              res(1:3) = alpha_s * one_over_2pi * res(1:3)
      case(20)
              call eval14(momenta(1:35), mu, parameters, res, blha1_mode=.true.)
              res(1:3) = alpha_s * one_over_2pi * res(1:3)
      case(21)
              call eval15(momenta(1:35), mu, parameters, res, blha1_mode=.true.)
              res(1:3) = alpha_s * one_over_2pi * res(1:3)
      case(22)
              call eval22(momenta(1:35), mu, parameters, res, blha1_mode=.true.)
              res(1:3) = alpha_s * one_over_2pi * res(1:3)
      case(23)
              call eval23(momenta(1:35), mu, parameters, res, blha1_mode=.true.)
              res(1:3) = alpha_s * one_over_2pi * res(1:3)
      case default
         res(:) = 0.0d0
      end select

   end subroutine OLP_EvalSubProcess

   ! BLHA2 interface
   subroutine     OLP_EvalSubProcess2(label, momenta, mu, res, acc) &
   & bind(C,name="olp_evalsubprocess2_")
      use, intrinsic :: iso_c_binding
      implicit none
      integer(kind=c_int), intent(in) :: label
      real(kind=c_double), intent(in) :: mu
      real(kind=c_double), dimension(50), intent(in) :: momenta
      real(kind=c_double), dimension(60), intent(out) :: res
      real(kind=c_double), intent(out) :: acc

      real(kind=c_double), dimension(10) :: parameters

      real(kind=c_double), parameter :: one_over_2pi = 0.15915494309189533577d0

      select case(label)
      case(0)
              call eval0(momenta(1:35), mu, parameters, res, acc)
      case(1)
              call eval1(momenta(1:35), mu, parameters, res, acc)
      case(2)
              call eval2(momenta(1:35), mu, parameters, res, acc)
      case(3)
              call eval3(momenta(1:35), mu, parameters, res, acc)
      case(4)
              call eval16(momenta(1:35), mu, parameters, res, acc)
      case(5)
              call eval17(momenta(1:35), mu, parameters, res, acc)
      case(6)
              call eval4(momenta(1:35), mu, parameters, res, acc)
      case(7)
              call eval5(momenta(1:35), mu, parameters, res, acc)
      case(8)
              call eval6(momenta(1:35), mu, parameters, res, acc)
      case(9)
              call eval7(momenta(1:35), mu, parameters, res, acc)
      case(10)
              call eval18(momenta(1:35), mu, parameters, res, acc)
      case(11)
              call eval19(momenta(1:35), mu, parameters, res, acc)
      case(12)
              call eval8(momenta(1:35), mu, parameters, res, acc)
      case(13)
              call eval9(momenta(1:35), mu, parameters, res, acc)
      case(14)
              call eval10(momenta(1:35), mu, parameters, res, acc)
      case(15)
              call eval11(momenta(1:35), mu, parameters, res, acc)
      case(16)
              call eval20(momenta(1:35), mu, parameters, res, acc)
      case(17)
              call eval21(momenta(1:35), mu, parameters, res, acc)
      case(18)
              call eval12(momenta(1:35), mu, parameters, res, acc)
      case(19)
              call eval13(momenta(1:35), mu, parameters, res, acc)
      case(20)
              call eval14(momenta(1:35), mu, parameters, res, acc)
      case(21)
              call eval15(momenta(1:35), mu, parameters, res, acc)
      case(22)
              call eval22(momenta(1:35), mu, parameters, res, acc)
      case(23)
              call eval23(momenta(1:35), mu, parameters, res, acc)
      case default
         res(:) = 0.0d0
      end select
   end subroutine OLP_EvalSubProcess2

   subroutine     OLP_Finalize() &
   & bind(C,name="olp_finalize_")
      use, intrinsic :: iso_c_binding
      use p0_dbard_epnemumnmubarg_matrix, only: p0_dbard_epnemumnmubarg_exitgolem => exitgolem
      use p4_ubaru_epnemumnmubarg_matrix, only: p4_ubaru_epnemumnmubarg_exitgolem => exitgolem
      use p8_cbarc_epnemumnmubarg_matrix, only: p8_cbarc_epnemumnmubarg_exitgolem => exitgolem
      use p12_sbars_epnemumnmubarg_matrix, only: p12_sbars_epnemumnmubarg_exitgolem => exitgolem
      implicit none
      call p0_dbard_epnemumnmubarg_exitgolem(.false.)
      call p4_ubaru_epnemumnmubarg_exitgolem(.false.)
      call p8_cbarc_epnemumnmubarg_exitgolem(.false.)
      call p12_sbars_epnemumnmubarg_exitgolem(.true.)
   end subroutine OLP_Finalize

   subroutine     OLP_Option(line,stat) &
   & bind(C,name="olp_option_")
      use, intrinsic :: iso_c_binding
      use p0_dbard_epnemumnmubarg_model, only: p0_dbard_epnemumnmubarg_parseline => parseline
      use p4_ubaru_epnemumnmubarg_model, only: p4_ubaru_epnemumnmubarg_parseline => parseline
      use p8_cbarc_epnemumnmubarg_model, only: p8_cbarc_epnemumnmubarg_parseline => parseline
      use p12_sbars_epnemumnmubarg_model, only: p12_sbars_epnemumnmubarg_parseline => parseline
      implicit none
      character(kind=c_char,len=1), intent(in) :: line
      integer(kind=c_int), intent(out) :: stat
      integer :: l, ios

      interface
         function strlen(s) bind(C,name='strlen')
            use, intrinsic :: iso_c_binding
            implicit none
            character(kind=c_char,len=1), intent(in) :: s
            integer(kind=c_int) :: strlen
         end function strlen
      end interface

      l = strlen(line)
      call p0_dbard_epnemumnmubarg_parseline(line(1:l),ios)
      if (ios .ne. 0) then
         stat = 0
         return
      end if
      call p4_ubaru_epnemumnmubarg_parseline(line(1:l),ios)
      if (ios .ne. 0) then
         stat = 0
         return
      end if
      call p8_cbarc_epnemumnmubarg_parseline(line(1:l),ios)
      if (ios .ne. 0) then
         stat = 0
         return
      end if
      call p12_sbars_epnemumnmubarg_parseline(line(1:l),ios)
      if (ios .ne. 0) then
         stat = 0
         return
      end if
      stat = 1
   end subroutine OLP_Option
   !---#[ init_event_parameters :
   subroutine     init_event_parameters(sp, parameters)
      use, intrinsic :: iso_c_binding
      implicit none
      integer, intent(in) :: sp
      real(kind=c_double), dimension(10), intent(in) :: parameters
      !
      ! User hook for propagating scale dependent parameters to the
      ! model parameters in the subprocesses.
      !
      ! sp specifies the subprocess
      !
   end subroutine init_event_parameters
   !---#] init_event_parameters :

   !---#[ subroutine eval0 :
   subroutine     eval0(momenta, mu, parameters, res, acc, blha1_mode)
      use, intrinsic :: iso_c_binding
      use p0_dbard_epnemumnmubarg_config, only: ki, PSP_chk_th3, nlo_prefactors
      use p0_dbard_epnemumnmubarg_model, only: parseline
      use p0_dbard_epnemumnmubarg_kinematics, only: boost_to_cms
      use p0_dbard_epnemumnmubarg_matrix, only: samplitude, OLP_spin_correlated_lo2, OLP_color_correlated
      use p0_dbard_epnemumnmubarg_groups, only: tear_down_golem95
      use p0_dbard_epnemumnmubarg_groups, only: ninja_exit

      implicit none
      real(kind=c_double), dimension(35), intent(in) :: momenta
      real(kind=c_double), intent(in) :: mu
      real(kind=c_double), dimension(10), intent(in) :: parameters
      real(kind=c_double), dimension(60), intent(out) :: res

      real(kind=ki), dimension(7,4) :: vecs
      real(kind=ki), dimension(4) :: amp
      real(kind=c_double), optional :: acc
      logical, optional :: blha1_mode
      real(kind=ki) :: zero
      integer :: i, prec, orig_nlo_prefactors
      logical :: ok

      call init_event_parameters(0, parameters)

      if(present(blha1_mode)) then
         if(blha1_mode) then
            ! save nlo_prefactors and restore later
            orig_nlo_prefactors=nlo_prefactors
            nlo_prefactors=0
         end if
     end if

      vecs(:,1) = real(momenta(1::5),ki)
      vecs(:,2) = real(momenta(2::5),ki)
      vecs(:,3) = real(momenta(3::5),ki)
      vecs(:,4) = real(momenta(4::5),ki)

      call boost_to_cms(vecs)

      call samplitude(vecs, real(mu,ki)*real(mu,ki), amp, prec, ok)
      call tear_down_golem95()
      call ninja_exit()
      if (ok) then
         !
      else
         !
      end if
      if(present(acc)) then
         acc=10.0_ki**(-prec) ! point accuracy
      else
         if(prec.lt.PSP_chk_th3) then
            ! Give back a Nan so that point is discarded
            zero = log(1.0_ki)
            amp(2)= 1.0_ki/zero
        end if
        ! Cannot be assigned if present(acc)=F --> commented out!
        ! acc=1E5_ki ! dummy accuracy which is not used
      end if

      
      res(1) = real(amp(4), c_double)
      res(2) = real(amp(3), c_double)
      res(3) = real(amp(2), c_double)
      res(4) = real(amp(1), c_double)

      if(present(blha1_mode)) then
         if(blha1_mode) then
            ! restore nlo_prefactors
            nlo_prefactors = orig_nlo_prefactors
         end if
     end if

   end subroutine eval0
   !---#] subroutine eval0 :
   !---#[ subroutine eval1 :
   subroutine     eval1(momenta, mu, parameters, res, acc, blha1_mode)
      use, intrinsic :: iso_c_binding
      use p0_dbard_epnemumnmubarg_config, only: ki, PSP_chk_th3, nlo_prefactors
      use p0_dbard_epnemumnmubarg_model, only: parseline
      use p0_dbard_epnemumnmubarg_kinematics, only: boost_to_cms
      use p1_dbarg_epnemumnmubardbar_matrix, only: samplitude, OLP_spin_correlated_lo2, OLP_color_correlated
      use p0_dbard_epnemumnmubarg_groups, only: tear_down_golem95
      use p0_dbard_epnemumnmubarg_groups, only: ninja_exit

      implicit none
      real(kind=c_double), dimension(35), intent(in) :: momenta
      real(kind=c_double), intent(in) :: mu
      real(kind=c_double), dimension(10), intent(in) :: parameters
      real(kind=c_double), dimension(60), intent(out) :: res

      real(kind=ki), dimension(7,4) :: vecs
      real(kind=ki), dimension(4) :: amp
      real(kind=c_double), optional :: acc
      logical, optional :: blha1_mode
      real(kind=ki) :: zero
      integer :: i, prec, orig_nlo_prefactors
      logical :: ok

      call init_event_parameters(1, parameters)

      if(present(blha1_mode)) then
         if(blha1_mode) then
            ! save nlo_prefactors and restore later
            orig_nlo_prefactors=nlo_prefactors
            nlo_prefactors=0
         end if
     end if

      vecs(:,1) = real(momenta(1::5),ki)
      vecs(:,2) = real(momenta(2::5),ki)
      vecs(:,3) = real(momenta(3::5),ki)
      vecs(:,4) = real(momenta(4::5),ki)

      call boost_to_cms(vecs)

      call samplitude(vecs, real(mu,ki)*real(mu,ki), amp, prec, ok)
      call tear_down_golem95()
      call ninja_exit()
      if (ok) then
         !
      else
         !
      end if
      if(present(acc)) then
         acc=10.0_ki**(-prec) ! point accuracy
      else
         if(prec.lt.PSP_chk_th3) then
            ! Give back a Nan so that point is discarded
            zero = log(1.0_ki)
            amp(2)= 1.0_ki/zero
        end if
        ! Cannot be assigned if present(acc)=F --> commented out!
        ! acc=1E5_ki ! dummy accuracy which is not used
      end if

      
      res(1) = real(amp(4), c_double)
      res(2) = real(amp(3), c_double)
      res(3) = real(amp(2), c_double)
      res(4) = real(amp(1), c_double)

      if(present(blha1_mode)) then
         if(blha1_mode) then
            ! restore nlo_prefactors
            nlo_prefactors = orig_nlo_prefactors
         end if
     end if

   end subroutine eval1
   !---#] subroutine eval1 :
   !---#[ subroutine eval2 :
   subroutine     eval2(momenta, mu, parameters, res, acc, blha1_mode)
      use, intrinsic :: iso_c_binding
      use p0_dbard_epnemumnmubarg_config, only: ki, PSP_chk_th3, nlo_prefactors
      use p0_dbard_epnemumnmubarg_model, only: parseline
      use p0_dbard_epnemumnmubarg_kinematics, only: boost_to_cms
      use p2_ddbar_epnemumnmubarg_matrix, only: samplitude, OLP_spin_correlated_lo2, OLP_color_correlated
      use p0_dbard_epnemumnmubarg_groups, only: tear_down_golem95
      use p0_dbard_epnemumnmubarg_groups, only: ninja_exit

      implicit none
      real(kind=c_double), dimension(35), intent(in) :: momenta
      real(kind=c_double), intent(in) :: mu
      real(kind=c_double), dimension(10), intent(in) :: parameters
      real(kind=c_double), dimension(60), intent(out) :: res

      real(kind=ki), dimension(7,4) :: vecs
      real(kind=ki), dimension(4) :: amp
      real(kind=c_double), optional :: acc
      logical, optional :: blha1_mode
      real(kind=ki) :: zero
      integer :: i, prec, orig_nlo_prefactors
      logical :: ok

      call init_event_parameters(2, parameters)

      if(present(blha1_mode)) then
         if(blha1_mode) then
            ! save nlo_prefactors and restore later
            orig_nlo_prefactors=nlo_prefactors
            nlo_prefactors=0
         end if
     end if

      vecs(:,1) = real(momenta(1::5),ki)
      vecs(:,2) = real(momenta(2::5),ki)
      vecs(:,3) = real(momenta(3::5),ki)
      vecs(:,4) = real(momenta(4::5),ki)

      call boost_to_cms(vecs)

      call samplitude(vecs, real(mu,ki)*real(mu,ki), amp, prec, ok)
      call tear_down_golem95()
      call ninja_exit()
      if (ok) then
         !
      else
         !
      end if
      if(present(acc)) then
         acc=10.0_ki**(-prec) ! point accuracy
      else
         if(prec.lt.PSP_chk_th3) then
            ! Give back a Nan so that point is discarded
            zero = log(1.0_ki)
            amp(2)= 1.0_ki/zero
        end if
        ! Cannot be assigned if present(acc)=F --> commented out!
        ! acc=1E5_ki ! dummy accuracy which is not used
      end if

      
      res(1) = real(amp(4), c_double)
      res(2) = real(amp(3), c_double)
      res(3) = real(amp(2), c_double)
      res(4) = real(amp(1), c_double)

      if(present(blha1_mode)) then
         if(blha1_mode) then
            ! restore nlo_prefactors
            nlo_prefactors = orig_nlo_prefactors
         end if
     end if

   end subroutine eval2
   !---#] subroutine eval2 :
   !---#[ subroutine eval3 :
   subroutine     eval3(momenta, mu, parameters, res, acc, blha1_mode)
      use, intrinsic :: iso_c_binding
      use p0_dbard_epnemumnmubarg_config, only: ki, PSP_chk_th3, nlo_prefactors
      use p0_dbard_epnemumnmubarg_model, only: parseline
      use p0_dbard_epnemumnmubarg_kinematics, only: boost_to_cms
      use p3_dg_epnemumnmubard_matrix, only: samplitude, OLP_spin_correlated_lo2, OLP_color_correlated
      use p0_dbard_epnemumnmubarg_groups, only: tear_down_golem95
      use p0_dbard_epnemumnmubarg_groups, only: ninja_exit

      implicit none
      real(kind=c_double), dimension(35), intent(in) :: momenta
      real(kind=c_double), intent(in) :: mu
      real(kind=c_double), dimension(10), intent(in) :: parameters
      real(kind=c_double), dimension(60), intent(out) :: res

      real(kind=ki), dimension(7,4) :: vecs
      real(kind=ki), dimension(4) :: amp
      real(kind=c_double), optional :: acc
      logical, optional :: blha1_mode
      real(kind=ki) :: zero
      integer :: i, prec, orig_nlo_prefactors
      logical :: ok

      call init_event_parameters(3, parameters)

      if(present(blha1_mode)) then
         if(blha1_mode) then
            ! save nlo_prefactors and restore later
            orig_nlo_prefactors=nlo_prefactors
            nlo_prefactors=0
         end if
     end if

      vecs(:,1) = real(momenta(1::5),ki)
      vecs(:,2) = real(momenta(2::5),ki)
      vecs(:,3) = real(momenta(3::5),ki)
      vecs(:,4) = real(momenta(4::5),ki)

      call boost_to_cms(vecs)

      call samplitude(vecs, real(mu,ki)*real(mu,ki), amp, prec, ok)
      call tear_down_golem95()
      call ninja_exit()
      if (ok) then
         !
      else
         !
      end if
      if(present(acc)) then
         acc=10.0_ki**(-prec) ! point accuracy
      else
         if(prec.lt.PSP_chk_th3) then
            ! Give back a Nan so that point is discarded
            zero = log(1.0_ki)
            amp(2)= 1.0_ki/zero
        end if
        ! Cannot be assigned if present(acc)=F --> commented out!
        ! acc=1E5_ki ! dummy accuracy which is not used
      end if

      
      res(1) = real(amp(4), c_double)
      res(2) = real(amp(3), c_double)
      res(3) = real(amp(2), c_double)
      res(4) = real(amp(1), c_double)

      if(present(blha1_mode)) then
         if(blha1_mode) then
            ! restore nlo_prefactors
            nlo_prefactors = orig_nlo_prefactors
         end if
     end if

   end subroutine eval3
   !---#] subroutine eval3 :
   !---#[ subroutine eval16 :
   subroutine     eval16(momenta, mu, parameters, res, acc, blha1_mode)
      use, intrinsic :: iso_c_binding
      use p0_dbard_epnemumnmubarg_config, only: ki, PSP_chk_th3, nlo_prefactors
      use p0_dbard_epnemumnmubarg_model, only: parseline
      use p0_dbard_epnemumnmubarg_kinematics, only: boost_to_cms
      use p16_gdbar_epnemumnmubardbar_matrix, only: samplitude, OLP_spin_correlated_lo2, OLP_color_correlated
      use p0_dbard_epnemumnmubarg_groups, only: tear_down_golem95
      use p0_dbard_epnemumnmubarg_groups, only: ninja_exit

      implicit none
      real(kind=c_double), dimension(35), intent(in) :: momenta
      real(kind=c_double), intent(in) :: mu
      real(kind=c_double), dimension(10), intent(in) :: parameters
      real(kind=c_double), dimension(60), intent(out) :: res

      real(kind=ki), dimension(7,4) :: vecs
      real(kind=ki), dimension(4) :: amp
      real(kind=c_double), optional :: acc
      logical, optional :: blha1_mode
      real(kind=ki) :: zero
      integer :: i, prec, orig_nlo_prefactors
      logical :: ok

      call init_event_parameters(16, parameters)

      if(present(blha1_mode)) then
         if(blha1_mode) then
            ! save nlo_prefactors and restore later
            orig_nlo_prefactors=nlo_prefactors
            nlo_prefactors=0
         end if
     end if

      vecs(:,1) = real(momenta(1::5),ki)
      vecs(:,2) = real(momenta(2::5),ki)
      vecs(:,3) = real(momenta(3::5),ki)
      vecs(:,4) = real(momenta(4::5),ki)

      call boost_to_cms(vecs)

      call samplitude(vecs, real(mu,ki)*real(mu,ki), amp, prec, ok)
      call tear_down_golem95()
      call ninja_exit()
      if (ok) then
         !
      else
         !
      end if
      if(present(acc)) then
         acc=10.0_ki**(-prec) ! point accuracy
      else
         if(prec.lt.PSP_chk_th3) then
            ! Give back a Nan so that point is discarded
            zero = log(1.0_ki)
            amp(2)= 1.0_ki/zero
        end if
        ! Cannot be assigned if present(acc)=F --> commented out!
        ! acc=1E5_ki ! dummy accuracy which is not used
      end if

      
      res(1) = real(amp(4), c_double)
      res(2) = real(amp(3), c_double)
      res(3) = real(amp(2), c_double)
      res(4) = real(amp(1), c_double)

      if(present(blha1_mode)) then
         if(blha1_mode) then
            ! restore nlo_prefactors
            nlo_prefactors = orig_nlo_prefactors
         end if
     end if

   end subroutine eval16
   !---#] subroutine eval16 :
   !---#[ subroutine eval17 :
   subroutine     eval17(momenta, mu, parameters, res, acc, blha1_mode)
      use, intrinsic :: iso_c_binding
      use p0_dbard_epnemumnmubarg_config, only: ki, PSP_chk_th3, nlo_prefactors
      use p0_dbard_epnemumnmubarg_model, only: parseline
      use p0_dbard_epnemumnmubarg_kinematics, only: boost_to_cms
      use p17_gd_epnemumnmubard_matrix, only: samplitude, OLP_spin_correlated_lo2, OLP_color_correlated
      use p0_dbard_epnemumnmubarg_groups, only: tear_down_golem95
      use p0_dbard_epnemumnmubarg_groups, only: ninja_exit

      implicit none
      real(kind=c_double), dimension(35), intent(in) :: momenta
      real(kind=c_double), intent(in) :: mu
      real(kind=c_double), dimension(10), intent(in) :: parameters
      real(kind=c_double), dimension(60), intent(out) :: res

      real(kind=ki), dimension(7,4) :: vecs
      real(kind=ki), dimension(4) :: amp
      real(kind=c_double), optional :: acc
      logical, optional :: blha1_mode
      real(kind=ki) :: zero
      integer :: i, prec, orig_nlo_prefactors
      logical :: ok

      call init_event_parameters(17, parameters)

      if(present(blha1_mode)) then
         if(blha1_mode) then
            ! save nlo_prefactors and restore later
            orig_nlo_prefactors=nlo_prefactors
            nlo_prefactors=0
         end if
     end if

      vecs(:,1) = real(momenta(1::5),ki)
      vecs(:,2) = real(momenta(2::5),ki)
      vecs(:,3) = real(momenta(3::5),ki)
      vecs(:,4) = real(momenta(4::5),ki)

      call boost_to_cms(vecs)

      call samplitude(vecs, real(mu,ki)*real(mu,ki), amp, prec, ok)
      call tear_down_golem95()
      call ninja_exit()
      if (ok) then
         !
      else
         !
      end if
      if(present(acc)) then
         acc=10.0_ki**(-prec) ! point accuracy
      else
         if(prec.lt.PSP_chk_th3) then
            ! Give back a Nan so that point is discarded
            zero = log(1.0_ki)
            amp(2)= 1.0_ki/zero
        end if
        ! Cannot be assigned if present(acc)=F --> commented out!
        ! acc=1E5_ki ! dummy accuracy which is not used
      end if

      
      res(1) = real(amp(4), c_double)
      res(2) = real(amp(3), c_double)
      res(3) = real(amp(2), c_double)
      res(4) = real(amp(1), c_double)

      if(present(blha1_mode)) then
         if(blha1_mode) then
            ! restore nlo_prefactors
            nlo_prefactors = orig_nlo_prefactors
         end if
     end if

   end subroutine eval17
   !---#] subroutine eval17 :
   !---#[ subroutine eval4 :
   subroutine     eval4(momenta, mu, parameters, res, acc, blha1_mode)
      use, intrinsic :: iso_c_binding
      use p4_ubaru_epnemumnmubarg_config, only: ki, PSP_chk_th3, nlo_prefactors
      use p4_ubaru_epnemumnmubarg_model, only: parseline
      use p4_ubaru_epnemumnmubarg_kinematics, only: boost_to_cms
      use p4_ubaru_epnemumnmubarg_matrix, only: samplitude, OLP_spin_correlated_lo2, OLP_color_correlated
      use p4_ubaru_epnemumnmubarg_groups, only: tear_down_golem95
      use p4_ubaru_epnemumnmubarg_groups, only: ninja_exit

      implicit none
      real(kind=c_double), dimension(35), intent(in) :: momenta
      real(kind=c_double), intent(in) :: mu
      real(kind=c_double), dimension(10), intent(in) :: parameters
      real(kind=c_double), dimension(60), intent(out) :: res

      real(kind=ki), dimension(7,4) :: vecs
      real(kind=ki), dimension(4) :: amp
      real(kind=c_double), optional :: acc
      logical, optional :: blha1_mode
      real(kind=ki) :: zero
      integer :: i, prec, orig_nlo_prefactors
      logical :: ok

      call init_event_parameters(4, parameters)

      if(present(blha1_mode)) then
         if(blha1_mode) then
            ! save nlo_prefactors and restore later
            orig_nlo_prefactors=nlo_prefactors
            nlo_prefactors=0
         end if
     end if

      vecs(:,1) = real(momenta(1::5),ki)
      vecs(:,2) = real(momenta(2::5),ki)
      vecs(:,3) = real(momenta(3::5),ki)
      vecs(:,4) = real(momenta(4::5),ki)

      call boost_to_cms(vecs)

      call samplitude(vecs, real(mu,ki)*real(mu,ki), amp, prec, ok)
      call tear_down_golem95()
      call ninja_exit()
      if (ok) then
         !
      else
         !
      end if
      if(present(acc)) then
         acc=10.0_ki**(-prec) ! point accuracy
      else
         if(prec.lt.PSP_chk_th3) then
            ! Give back a Nan so that point is discarded
            zero = log(1.0_ki)
            amp(2)= 1.0_ki/zero
        end if
        ! Cannot be assigned if present(acc)=F --> commented out!
        ! acc=1E5_ki ! dummy accuracy which is not used
      end if

      
      res(1) = real(amp(4), c_double)
      res(2) = real(amp(3), c_double)
      res(3) = real(amp(2), c_double)
      res(4) = real(amp(1), c_double)

      if(present(blha1_mode)) then
         if(blha1_mode) then
            ! restore nlo_prefactors
            nlo_prefactors = orig_nlo_prefactors
         end if
     end if

   end subroutine eval4
   !---#] subroutine eval4 :
   !---#[ subroutine eval5 :
   subroutine     eval5(momenta, mu, parameters, res, acc, blha1_mode)
      use, intrinsic :: iso_c_binding
      use p4_ubaru_epnemumnmubarg_config, only: ki, PSP_chk_th3, nlo_prefactors
      use p4_ubaru_epnemumnmubarg_model, only: parseline
      use p4_ubaru_epnemumnmubarg_kinematics, only: boost_to_cms
      use p5_ubarg_epnemumnmubarubar_matrix, only: samplitude, OLP_spin_correlated_lo2, OLP_color_correlated
      use p4_ubaru_epnemumnmubarg_groups, only: tear_down_golem95
      use p4_ubaru_epnemumnmubarg_groups, only: ninja_exit

      implicit none
      real(kind=c_double), dimension(35), intent(in) :: momenta
      real(kind=c_double), intent(in) :: mu
      real(kind=c_double), dimension(10), intent(in) :: parameters
      real(kind=c_double), dimension(60), intent(out) :: res

      real(kind=ki), dimension(7,4) :: vecs
      real(kind=ki), dimension(4) :: amp
      real(kind=c_double), optional :: acc
      logical, optional :: blha1_mode
      real(kind=ki) :: zero
      integer :: i, prec, orig_nlo_prefactors
      logical :: ok

      call init_event_parameters(5, parameters)

      if(present(blha1_mode)) then
         if(blha1_mode) then
            ! save nlo_prefactors and restore later
            orig_nlo_prefactors=nlo_prefactors
            nlo_prefactors=0
         end if
     end if

      vecs(:,1) = real(momenta(1::5),ki)
      vecs(:,2) = real(momenta(2::5),ki)
      vecs(:,3) = real(momenta(3::5),ki)
      vecs(:,4) = real(momenta(4::5),ki)

      call boost_to_cms(vecs)

      call samplitude(vecs, real(mu,ki)*real(mu,ki), amp, prec, ok)
      call tear_down_golem95()
      call ninja_exit()
      if (ok) then
         !
      else
         !
      end if
      if(present(acc)) then
         acc=10.0_ki**(-prec) ! point accuracy
      else
         if(prec.lt.PSP_chk_th3) then
            ! Give back a Nan so that point is discarded
            zero = log(1.0_ki)
            amp(2)= 1.0_ki/zero
        end if
        ! Cannot be assigned if present(acc)=F --> commented out!
        ! acc=1E5_ki ! dummy accuracy which is not used
      end if

      
      res(1) = real(amp(4), c_double)
      res(2) = real(amp(3), c_double)
      res(3) = real(amp(2), c_double)
      res(4) = real(amp(1), c_double)

      if(present(blha1_mode)) then
         if(blha1_mode) then
            ! restore nlo_prefactors
            nlo_prefactors = orig_nlo_prefactors
         end if
     end if

   end subroutine eval5
   !---#] subroutine eval5 :
   !---#[ subroutine eval6 :
   subroutine     eval6(momenta, mu, parameters, res, acc, blha1_mode)
      use, intrinsic :: iso_c_binding
      use p4_ubaru_epnemumnmubarg_config, only: ki, PSP_chk_th3, nlo_prefactors
      use p4_ubaru_epnemumnmubarg_model, only: parseline
      use p4_ubaru_epnemumnmubarg_kinematics, only: boost_to_cms
      use p6_uubar_epnemumnmubarg_matrix, only: samplitude, OLP_spin_correlated_lo2, OLP_color_correlated
      use p4_ubaru_epnemumnmubarg_groups, only: tear_down_golem95
      use p4_ubaru_epnemumnmubarg_groups, only: ninja_exit

      implicit none
      real(kind=c_double), dimension(35), intent(in) :: momenta
      real(kind=c_double), intent(in) :: mu
      real(kind=c_double), dimension(10), intent(in) :: parameters
      real(kind=c_double), dimension(60), intent(out) :: res

      real(kind=ki), dimension(7,4) :: vecs
      real(kind=ki), dimension(4) :: amp
      real(kind=c_double), optional :: acc
      logical, optional :: blha1_mode
      real(kind=ki) :: zero
      integer :: i, prec, orig_nlo_prefactors
      logical :: ok

      call init_event_parameters(6, parameters)

      if(present(blha1_mode)) then
         if(blha1_mode) then
            ! save nlo_prefactors and restore later
            orig_nlo_prefactors=nlo_prefactors
            nlo_prefactors=0
         end if
     end if

      vecs(:,1) = real(momenta(1::5),ki)
      vecs(:,2) = real(momenta(2::5),ki)
      vecs(:,3) = real(momenta(3::5),ki)
      vecs(:,4) = real(momenta(4::5),ki)

      call boost_to_cms(vecs)

      call samplitude(vecs, real(mu,ki)*real(mu,ki), amp, prec, ok)
      call tear_down_golem95()
      call ninja_exit()
      if (ok) then
         !
      else
         !
      end if
      if(present(acc)) then
         acc=10.0_ki**(-prec) ! point accuracy
      else
         if(prec.lt.PSP_chk_th3) then
            ! Give back a Nan so that point is discarded
            zero = log(1.0_ki)
            amp(2)= 1.0_ki/zero
        end if
        ! Cannot be assigned if present(acc)=F --> commented out!
        ! acc=1E5_ki ! dummy accuracy which is not used
      end if

      
      res(1) = real(amp(4), c_double)
      res(2) = real(amp(3), c_double)
      res(3) = real(amp(2), c_double)
      res(4) = real(amp(1), c_double)

      if(present(blha1_mode)) then
         if(blha1_mode) then
            ! restore nlo_prefactors
            nlo_prefactors = orig_nlo_prefactors
         end if
     end if

   end subroutine eval6
   !---#] subroutine eval6 :
   !---#[ subroutine eval7 :
   subroutine     eval7(momenta, mu, parameters, res, acc, blha1_mode)
      use, intrinsic :: iso_c_binding
      use p4_ubaru_epnemumnmubarg_config, only: ki, PSP_chk_th3, nlo_prefactors
      use p4_ubaru_epnemumnmubarg_model, only: parseline
      use p4_ubaru_epnemumnmubarg_kinematics, only: boost_to_cms
      use p7_ug_epnemumnmubaru_matrix, only: samplitude, OLP_spin_correlated_lo2, OLP_color_correlated
      use p4_ubaru_epnemumnmubarg_groups, only: tear_down_golem95
      use p4_ubaru_epnemumnmubarg_groups, only: ninja_exit

      implicit none
      real(kind=c_double), dimension(35), intent(in) :: momenta
      real(kind=c_double), intent(in) :: mu
      real(kind=c_double), dimension(10), intent(in) :: parameters
      real(kind=c_double), dimension(60), intent(out) :: res

      real(kind=ki), dimension(7,4) :: vecs
      real(kind=ki), dimension(4) :: amp
      real(kind=c_double), optional :: acc
      logical, optional :: blha1_mode
      real(kind=ki) :: zero
      integer :: i, prec, orig_nlo_prefactors
      logical :: ok

      call init_event_parameters(7, parameters)

      if(present(blha1_mode)) then
         if(blha1_mode) then
            ! save nlo_prefactors and restore later
            orig_nlo_prefactors=nlo_prefactors
            nlo_prefactors=0
         end if
     end if

      vecs(:,1) = real(momenta(1::5),ki)
      vecs(:,2) = real(momenta(2::5),ki)
      vecs(:,3) = real(momenta(3::5),ki)
      vecs(:,4) = real(momenta(4::5),ki)

      call boost_to_cms(vecs)

      call samplitude(vecs, real(mu,ki)*real(mu,ki), amp, prec, ok)
      call tear_down_golem95()
      call ninja_exit()
      if (ok) then
         !
      else
         !
      end if
      if(present(acc)) then
         acc=10.0_ki**(-prec) ! point accuracy
      else
         if(prec.lt.PSP_chk_th3) then
            ! Give back a Nan so that point is discarded
            zero = log(1.0_ki)
            amp(2)= 1.0_ki/zero
        end if
        ! Cannot be assigned if present(acc)=F --> commented out!
        ! acc=1E5_ki ! dummy accuracy which is not used
      end if

      
      res(1) = real(amp(4), c_double)
      res(2) = real(amp(3), c_double)
      res(3) = real(amp(2), c_double)
      res(4) = real(amp(1), c_double)

      if(present(blha1_mode)) then
         if(blha1_mode) then
            ! restore nlo_prefactors
            nlo_prefactors = orig_nlo_prefactors
         end if
     end if

   end subroutine eval7
   !---#] subroutine eval7 :
   !---#[ subroutine eval18 :
   subroutine     eval18(momenta, mu, parameters, res, acc, blha1_mode)
      use, intrinsic :: iso_c_binding
      use p4_ubaru_epnemumnmubarg_config, only: ki, PSP_chk_th3, nlo_prefactors
      use p4_ubaru_epnemumnmubarg_model, only: parseline
      use p4_ubaru_epnemumnmubarg_kinematics, only: boost_to_cms
      use p18_gubar_epnemumnmubarubar_matrix, only: samplitude, OLP_spin_correlated_lo2, OLP_color_correlated
      use p4_ubaru_epnemumnmubarg_groups, only: tear_down_golem95
      use p4_ubaru_epnemumnmubarg_groups, only: ninja_exit

      implicit none
      real(kind=c_double), dimension(35), intent(in) :: momenta
      real(kind=c_double), intent(in) :: mu
      real(kind=c_double), dimension(10), intent(in) :: parameters
      real(kind=c_double), dimension(60), intent(out) :: res

      real(kind=ki), dimension(7,4) :: vecs
      real(kind=ki), dimension(4) :: amp
      real(kind=c_double), optional :: acc
      logical, optional :: blha1_mode
      real(kind=ki) :: zero
      integer :: i, prec, orig_nlo_prefactors
      logical :: ok

      call init_event_parameters(18, parameters)

      if(present(blha1_mode)) then
         if(blha1_mode) then
            ! save nlo_prefactors and restore later
            orig_nlo_prefactors=nlo_prefactors
            nlo_prefactors=0
         end if
     end if

      vecs(:,1) = real(momenta(1::5),ki)
      vecs(:,2) = real(momenta(2::5),ki)
      vecs(:,3) = real(momenta(3::5),ki)
      vecs(:,4) = real(momenta(4::5),ki)

      call boost_to_cms(vecs)

      call samplitude(vecs, real(mu,ki)*real(mu,ki), amp, prec, ok)
      call tear_down_golem95()
      call ninja_exit()
      if (ok) then
         !
      else
         !
      end if
      if(present(acc)) then
         acc=10.0_ki**(-prec) ! point accuracy
      else
         if(prec.lt.PSP_chk_th3) then
            ! Give back a Nan so that point is discarded
            zero = log(1.0_ki)
            amp(2)= 1.0_ki/zero
        end if
        ! Cannot be assigned if present(acc)=F --> commented out!
        ! acc=1E5_ki ! dummy accuracy which is not used
      end if

      
      res(1) = real(amp(4), c_double)
      res(2) = real(amp(3), c_double)
      res(3) = real(amp(2), c_double)
      res(4) = real(amp(1), c_double)

      if(present(blha1_mode)) then
         if(blha1_mode) then
            ! restore nlo_prefactors
            nlo_prefactors = orig_nlo_prefactors
         end if
     end if

   end subroutine eval18
   !---#] subroutine eval18 :
   !---#[ subroutine eval19 :
   subroutine     eval19(momenta, mu, parameters, res, acc, blha1_mode)
      use, intrinsic :: iso_c_binding
      use p4_ubaru_epnemumnmubarg_config, only: ki, PSP_chk_th3, nlo_prefactors
      use p4_ubaru_epnemumnmubarg_model, only: parseline
      use p4_ubaru_epnemumnmubarg_kinematics, only: boost_to_cms
      use p19_gu_epnemumnmubaru_matrix, only: samplitude, OLP_spin_correlated_lo2, OLP_color_correlated
      use p4_ubaru_epnemumnmubarg_groups, only: tear_down_golem95
      use p4_ubaru_epnemumnmubarg_groups, only: ninja_exit

      implicit none
      real(kind=c_double), dimension(35), intent(in) :: momenta
      real(kind=c_double), intent(in) :: mu
      real(kind=c_double), dimension(10), intent(in) :: parameters
      real(kind=c_double), dimension(60), intent(out) :: res

      real(kind=ki), dimension(7,4) :: vecs
      real(kind=ki), dimension(4) :: amp
      real(kind=c_double), optional :: acc
      logical, optional :: blha1_mode
      real(kind=ki) :: zero
      integer :: i, prec, orig_nlo_prefactors
      logical :: ok

      call init_event_parameters(19, parameters)

      if(present(blha1_mode)) then
         if(blha1_mode) then
            ! save nlo_prefactors and restore later
            orig_nlo_prefactors=nlo_prefactors
            nlo_prefactors=0
         end if
     end if

      vecs(:,1) = real(momenta(1::5),ki)
      vecs(:,2) = real(momenta(2::5),ki)
      vecs(:,3) = real(momenta(3::5),ki)
      vecs(:,4) = real(momenta(4::5),ki)

      call boost_to_cms(vecs)

      call samplitude(vecs, real(mu,ki)*real(mu,ki), amp, prec, ok)
      call tear_down_golem95()
      call ninja_exit()
      if (ok) then
         !
      else
         !
      end if
      if(present(acc)) then
         acc=10.0_ki**(-prec) ! point accuracy
      else
         if(prec.lt.PSP_chk_th3) then
            ! Give back a Nan so that point is discarded
            zero = log(1.0_ki)
            amp(2)= 1.0_ki/zero
        end if
        ! Cannot be assigned if present(acc)=F --> commented out!
        ! acc=1E5_ki ! dummy accuracy which is not used
      end if

      
      res(1) = real(amp(4), c_double)
      res(2) = real(amp(3), c_double)
      res(3) = real(amp(2), c_double)
      res(4) = real(amp(1), c_double)

      if(present(blha1_mode)) then
         if(blha1_mode) then
            ! restore nlo_prefactors
            nlo_prefactors = orig_nlo_prefactors
         end if
     end if

   end subroutine eval19
   !---#] subroutine eval19 :
   !---#[ subroutine eval8 :
   subroutine     eval8(momenta, mu, parameters, res, acc, blha1_mode)
      use, intrinsic :: iso_c_binding
      use p8_cbarc_epnemumnmubarg_config, only: ki, PSP_chk_th3, nlo_prefactors
      use p8_cbarc_epnemumnmubarg_model, only: parseline
      use p8_cbarc_epnemumnmubarg_kinematics, only: boost_to_cms
      use p8_cbarc_epnemumnmubarg_matrix, only: samplitude, OLP_spin_correlated_lo2, OLP_color_correlated
      use p8_cbarc_epnemumnmubarg_groups, only: tear_down_golem95
      use p8_cbarc_epnemumnmubarg_groups, only: ninja_exit

      implicit none
      real(kind=c_double), dimension(35), intent(in) :: momenta
      real(kind=c_double), intent(in) :: mu
      real(kind=c_double), dimension(10), intent(in) :: parameters
      real(kind=c_double), dimension(60), intent(out) :: res

      real(kind=ki), dimension(7,4) :: vecs
      real(kind=ki), dimension(4) :: amp
      real(kind=c_double), optional :: acc
      logical, optional :: blha1_mode
      real(kind=ki) :: zero
      integer :: i, prec, orig_nlo_prefactors
      logical :: ok

      call init_event_parameters(8, parameters)

      if(present(blha1_mode)) then
         if(blha1_mode) then
            ! save nlo_prefactors and restore later
            orig_nlo_prefactors=nlo_prefactors
            nlo_prefactors=0
         end if
     end if

      vecs(:,1) = real(momenta(1::5),ki)
      vecs(:,2) = real(momenta(2::5),ki)
      vecs(:,3) = real(momenta(3::5),ki)
      vecs(:,4) = real(momenta(4::5),ki)

      call boost_to_cms(vecs)

      call samplitude(vecs, real(mu,ki)*real(mu,ki), amp, prec, ok)
      call tear_down_golem95()
      call ninja_exit()
      if (ok) then
         !
      else
         !
      end if
      if(present(acc)) then
         acc=10.0_ki**(-prec) ! point accuracy
      else
         if(prec.lt.PSP_chk_th3) then
            ! Give back a Nan so that point is discarded
            zero = log(1.0_ki)
            amp(2)= 1.0_ki/zero
        end if
        ! Cannot be assigned if present(acc)=F --> commented out!
        ! acc=1E5_ki ! dummy accuracy which is not used
      end if

      
      res(1) = real(amp(4), c_double)
      res(2) = real(amp(3), c_double)
      res(3) = real(amp(2), c_double)
      res(4) = real(amp(1), c_double)

      if(present(blha1_mode)) then
         if(blha1_mode) then
            ! restore nlo_prefactors
            nlo_prefactors = orig_nlo_prefactors
         end if
     end if

   end subroutine eval8
   !---#] subroutine eval8 :
   !---#[ subroutine eval9 :
   subroutine     eval9(momenta, mu, parameters, res, acc, blha1_mode)
      use, intrinsic :: iso_c_binding
      use p8_cbarc_epnemumnmubarg_config, only: ki, PSP_chk_th3, nlo_prefactors
      use p8_cbarc_epnemumnmubarg_model, only: parseline
      use p8_cbarc_epnemumnmubarg_kinematics, only: boost_to_cms
      use p9_cbarg_epnemumnmubarcbar_matrix, only: samplitude, OLP_spin_correlated_lo2, OLP_color_correlated
      use p8_cbarc_epnemumnmubarg_groups, only: tear_down_golem95
      use p8_cbarc_epnemumnmubarg_groups, only: ninja_exit

      implicit none
      real(kind=c_double), dimension(35), intent(in) :: momenta
      real(kind=c_double), intent(in) :: mu
      real(kind=c_double), dimension(10), intent(in) :: parameters
      real(kind=c_double), dimension(60), intent(out) :: res

      real(kind=ki), dimension(7,4) :: vecs
      real(kind=ki), dimension(4) :: amp
      real(kind=c_double), optional :: acc
      logical, optional :: blha1_mode
      real(kind=ki) :: zero
      integer :: i, prec, orig_nlo_prefactors
      logical :: ok

      call init_event_parameters(9, parameters)

      if(present(blha1_mode)) then
         if(blha1_mode) then
            ! save nlo_prefactors and restore later
            orig_nlo_prefactors=nlo_prefactors
            nlo_prefactors=0
         end if
     end if

      vecs(:,1) = real(momenta(1::5),ki)
      vecs(:,2) = real(momenta(2::5),ki)
      vecs(:,3) = real(momenta(3::5),ki)
      vecs(:,4) = real(momenta(4::5),ki)

      call boost_to_cms(vecs)

      call samplitude(vecs, real(mu,ki)*real(mu,ki), amp, prec, ok)
      call tear_down_golem95()
      call ninja_exit()
      if (ok) then
         !
      else
         !
      end if
      if(present(acc)) then
         acc=10.0_ki**(-prec) ! point accuracy
      else
         if(prec.lt.PSP_chk_th3) then
            ! Give back a Nan so that point is discarded
            zero = log(1.0_ki)
            amp(2)= 1.0_ki/zero
        end if
        ! Cannot be assigned if present(acc)=F --> commented out!
        ! acc=1E5_ki ! dummy accuracy which is not used
      end if

      
      res(1) = real(amp(4), c_double)
      res(2) = real(amp(3), c_double)
      res(3) = real(amp(2), c_double)
      res(4) = real(amp(1), c_double)

      if(present(blha1_mode)) then
         if(blha1_mode) then
            ! restore nlo_prefactors
            nlo_prefactors = orig_nlo_prefactors
         end if
     end if

   end subroutine eval9
   !---#] subroutine eval9 :
   !---#[ subroutine eval10 :
   subroutine     eval10(momenta, mu, parameters, res, acc, blha1_mode)
      use, intrinsic :: iso_c_binding
      use p8_cbarc_epnemumnmubarg_config, only: ki, PSP_chk_th3, nlo_prefactors
      use p8_cbarc_epnemumnmubarg_model, only: parseline
      use p8_cbarc_epnemumnmubarg_kinematics, only: boost_to_cms
      use p10_ccbar_epnemumnmubarg_matrix, only: samplitude, OLP_spin_correlated_lo2, OLP_color_correlated
      use p8_cbarc_epnemumnmubarg_groups, only: tear_down_golem95
      use p8_cbarc_epnemumnmubarg_groups, only: ninja_exit

      implicit none
      real(kind=c_double), dimension(35), intent(in) :: momenta
      real(kind=c_double), intent(in) :: mu
      real(kind=c_double), dimension(10), intent(in) :: parameters
      real(kind=c_double), dimension(60), intent(out) :: res

      real(kind=ki), dimension(7,4) :: vecs
      real(kind=ki), dimension(4) :: amp
      real(kind=c_double), optional :: acc
      logical, optional :: blha1_mode
      real(kind=ki) :: zero
      integer :: i, prec, orig_nlo_prefactors
      logical :: ok

      call init_event_parameters(10, parameters)

      if(present(blha1_mode)) then
         if(blha1_mode) then
            ! save nlo_prefactors and restore later
            orig_nlo_prefactors=nlo_prefactors
            nlo_prefactors=0
         end if
     end if

      vecs(:,1) = real(momenta(1::5),ki)
      vecs(:,2) = real(momenta(2::5),ki)
      vecs(:,3) = real(momenta(3::5),ki)
      vecs(:,4) = real(momenta(4::5),ki)

      call boost_to_cms(vecs)

      call samplitude(vecs, real(mu,ki)*real(mu,ki), amp, prec, ok)
      call tear_down_golem95()
      call ninja_exit()
      if (ok) then
         !
      else
         !
      end if
      if(present(acc)) then
         acc=10.0_ki**(-prec) ! point accuracy
      else
         if(prec.lt.PSP_chk_th3) then
            ! Give back a Nan so that point is discarded
            zero = log(1.0_ki)
            amp(2)= 1.0_ki/zero
        end if
        ! Cannot be assigned if present(acc)=F --> commented out!
        ! acc=1E5_ki ! dummy accuracy which is not used
      end if

      
      res(1) = real(amp(4), c_double)
      res(2) = real(amp(3), c_double)
      res(3) = real(amp(2), c_double)
      res(4) = real(amp(1), c_double)

      if(present(blha1_mode)) then
         if(blha1_mode) then
            ! restore nlo_prefactors
            nlo_prefactors = orig_nlo_prefactors
         end if
     end if

   end subroutine eval10
   !---#] subroutine eval10 :
   !---#[ subroutine eval11 :
   subroutine     eval11(momenta, mu, parameters, res, acc, blha1_mode)
      use, intrinsic :: iso_c_binding
      use p8_cbarc_epnemumnmubarg_config, only: ki, PSP_chk_th3, nlo_prefactors
      use p8_cbarc_epnemumnmubarg_model, only: parseline
      use p8_cbarc_epnemumnmubarg_kinematics, only: boost_to_cms
      use p11_cg_epnemumnmubarc_matrix, only: samplitude, OLP_spin_correlated_lo2, OLP_color_correlated
      use p8_cbarc_epnemumnmubarg_groups, only: tear_down_golem95
      use p8_cbarc_epnemumnmubarg_groups, only: ninja_exit

      implicit none
      real(kind=c_double), dimension(35), intent(in) :: momenta
      real(kind=c_double), intent(in) :: mu
      real(kind=c_double), dimension(10), intent(in) :: parameters
      real(kind=c_double), dimension(60), intent(out) :: res

      real(kind=ki), dimension(7,4) :: vecs
      real(kind=ki), dimension(4) :: amp
      real(kind=c_double), optional :: acc
      logical, optional :: blha1_mode
      real(kind=ki) :: zero
      integer :: i, prec, orig_nlo_prefactors
      logical :: ok

      call init_event_parameters(11, parameters)

      if(present(blha1_mode)) then
         if(blha1_mode) then
            ! save nlo_prefactors and restore later
            orig_nlo_prefactors=nlo_prefactors
            nlo_prefactors=0
         end if
     end if

      vecs(:,1) = real(momenta(1::5),ki)
      vecs(:,2) = real(momenta(2::5),ki)
      vecs(:,3) = real(momenta(3::5),ki)
      vecs(:,4) = real(momenta(4::5),ki)

      call boost_to_cms(vecs)

      call samplitude(vecs, real(mu,ki)*real(mu,ki), amp, prec, ok)
      call tear_down_golem95()
      call ninja_exit()
      if (ok) then
         !
      else
         !
      end if
      if(present(acc)) then
         acc=10.0_ki**(-prec) ! point accuracy
      else
         if(prec.lt.PSP_chk_th3) then
            ! Give back a Nan so that point is discarded
            zero = log(1.0_ki)
            amp(2)= 1.0_ki/zero
        end if
        ! Cannot be assigned if present(acc)=F --> commented out!
        ! acc=1E5_ki ! dummy accuracy which is not used
      end if

      
      res(1) = real(amp(4), c_double)
      res(2) = real(amp(3), c_double)
      res(3) = real(amp(2), c_double)
      res(4) = real(amp(1), c_double)

      if(present(blha1_mode)) then
         if(blha1_mode) then
            ! restore nlo_prefactors
            nlo_prefactors = orig_nlo_prefactors
         end if
     end if

   end subroutine eval11
   !---#] subroutine eval11 :
   !---#[ subroutine eval20 :
   subroutine     eval20(momenta, mu, parameters, res, acc, blha1_mode)
      use, intrinsic :: iso_c_binding
      use p8_cbarc_epnemumnmubarg_config, only: ki, PSP_chk_th3, nlo_prefactors
      use p8_cbarc_epnemumnmubarg_model, only: parseline
      use p8_cbarc_epnemumnmubarg_kinematics, only: boost_to_cms
      use p20_gcbar_epnemumnmubarcbar_matrix, only: samplitude, OLP_spin_correlated_lo2, OLP_color_correlated
      use p8_cbarc_epnemumnmubarg_groups, only: tear_down_golem95
      use p8_cbarc_epnemumnmubarg_groups, only: ninja_exit

      implicit none
      real(kind=c_double), dimension(35), intent(in) :: momenta
      real(kind=c_double), intent(in) :: mu
      real(kind=c_double), dimension(10), intent(in) :: parameters
      real(kind=c_double), dimension(60), intent(out) :: res

      real(kind=ki), dimension(7,4) :: vecs
      real(kind=ki), dimension(4) :: amp
      real(kind=c_double), optional :: acc
      logical, optional :: blha1_mode
      real(kind=ki) :: zero
      integer :: i, prec, orig_nlo_prefactors
      logical :: ok

      call init_event_parameters(20, parameters)

      if(present(blha1_mode)) then
         if(blha1_mode) then
            ! save nlo_prefactors and restore later
            orig_nlo_prefactors=nlo_prefactors
            nlo_prefactors=0
         end if
     end if

      vecs(:,1) = real(momenta(1::5),ki)
      vecs(:,2) = real(momenta(2::5),ki)
      vecs(:,3) = real(momenta(3::5),ki)
      vecs(:,4) = real(momenta(4::5),ki)

      call boost_to_cms(vecs)

      call samplitude(vecs, real(mu,ki)*real(mu,ki), amp, prec, ok)
      call tear_down_golem95()
      call ninja_exit()
      if (ok) then
         !
      else
         !
      end if
      if(present(acc)) then
         acc=10.0_ki**(-prec) ! point accuracy
      else
         if(prec.lt.PSP_chk_th3) then
            ! Give back a Nan so that point is discarded
            zero = log(1.0_ki)
            amp(2)= 1.0_ki/zero
        end if
        ! Cannot be assigned if present(acc)=F --> commented out!
        ! acc=1E5_ki ! dummy accuracy which is not used
      end if

      
      res(1) = real(amp(4), c_double)
      res(2) = real(amp(3), c_double)
      res(3) = real(amp(2), c_double)
      res(4) = real(amp(1), c_double)

      if(present(blha1_mode)) then
         if(blha1_mode) then
            ! restore nlo_prefactors
            nlo_prefactors = orig_nlo_prefactors
         end if
     end if

   end subroutine eval20
   !---#] subroutine eval20 :
   !---#[ subroutine eval21 :
   subroutine     eval21(momenta, mu, parameters, res, acc, blha1_mode)
      use, intrinsic :: iso_c_binding
      use p8_cbarc_epnemumnmubarg_config, only: ki, PSP_chk_th3, nlo_prefactors
      use p8_cbarc_epnemumnmubarg_model, only: parseline
      use p8_cbarc_epnemumnmubarg_kinematics, only: boost_to_cms
      use p21_gc_epnemumnmubarc_matrix, only: samplitude, OLP_spin_correlated_lo2, OLP_color_correlated
      use p8_cbarc_epnemumnmubarg_groups, only: tear_down_golem95
      use p8_cbarc_epnemumnmubarg_groups, only: ninja_exit

      implicit none
      real(kind=c_double), dimension(35), intent(in) :: momenta
      real(kind=c_double), intent(in) :: mu
      real(kind=c_double), dimension(10), intent(in) :: parameters
      real(kind=c_double), dimension(60), intent(out) :: res

      real(kind=ki), dimension(7,4) :: vecs
      real(kind=ki), dimension(4) :: amp
      real(kind=c_double), optional :: acc
      logical, optional :: blha1_mode
      real(kind=ki) :: zero
      integer :: i, prec, orig_nlo_prefactors
      logical :: ok

      call init_event_parameters(21, parameters)

      if(present(blha1_mode)) then
         if(blha1_mode) then
            ! save nlo_prefactors and restore later
            orig_nlo_prefactors=nlo_prefactors
            nlo_prefactors=0
         end if
     end if

      vecs(:,1) = real(momenta(1::5),ki)
      vecs(:,2) = real(momenta(2::5),ki)
      vecs(:,3) = real(momenta(3::5),ki)
      vecs(:,4) = real(momenta(4::5),ki)

      call boost_to_cms(vecs)

      call samplitude(vecs, real(mu,ki)*real(mu,ki), amp, prec, ok)
      call tear_down_golem95()
      call ninja_exit()
      if (ok) then
         !
      else
         !
      end if
      if(present(acc)) then
         acc=10.0_ki**(-prec) ! point accuracy
      else
         if(prec.lt.PSP_chk_th3) then
            ! Give back a Nan so that point is discarded
            zero = log(1.0_ki)
            amp(2)= 1.0_ki/zero
        end if
        ! Cannot be assigned if present(acc)=F --> commented out!
        ! acc=1E5_ki ! dummy accuracy which is not used
      end if

      
      res(1) = real(amp(4), c_double)
      res(2) = real(amp(3), c_double)
      res(3) = real(amp(2), c_double)
      res(4) = real(amp(1), c_double)

      if(present(blha1_mode)) then
         if(blha1_mode) then
            ! restore nlo_prefactors
            nlo_prefactors = orig_nlo_prefactors
         end if
     end if

   end subroutine eval21
   !---#] subroutine eval21 :
   !---#[ subroutine eval12 :
   subroutine     eval12(momenta, mu, parameters, res, acc, blha1_mode)
      use, intrinsic :: iso_c_binding
      use p12_sbars_epnemumnmubarg_config, only: ki, PSP_chk_th3, nlo_prefactors
      use p12_sbars_epnemumnmubarg_model, only: parseline
      use p12_sbars_epnemumnmubarg_kinematics, only: boost_to_cms
      use p12_sbars_epnemumnmubarg_matrix, only: samplitude, OLP_spin_correlated_lo2, OLP_color_correlated
      use p12_sbars_epnemumnmubarg_groups, only: tear_down_golem95
      use p12_sbars_epnemumnmubarg_groups, only: ninja_exit

      implicit none
      real(kind=c_double), dimension(35), intent(in) :: momenta
      real(kind=c_double), intent(in) :: mu
      real(kind=c_double), dimension(10), intent(in) :: parameters
      real(kind=c_double), dimension(60), intent(out) :: res

      real(kind=ki), dimension(7,4) :: vecs
      real(kind=ki), dimension(4) :: amp
      real(kind=c_double), optional :: acc
      logical, optional :: blha1_mode
      real(kind=ki) :: zero
      integer :: i, prec, orig_nlo_prefactors
      logical :: ok

      call init_event_parameters(12, parameters)

      if(present(blha1_mode)) then
         if(blha1_mode) then
            ! save nlo_prefactors and restore later
            orig_nlo_prefactors=nlo_prefactors
            nlo_prefactors=0
         end if
     end if

      vecs(:,1) = real(momenta(1::5),ki)
      vecs(:,2) = real(momenta(2::5),ki)
      vecs(:,3) = real(momenta(3::5),ki)
      vecs(:,4) = real(momenta(4::5),ki)

      call boost_to_cms(vecs)

      call samplitude(vecs, real(mu,ki)*real(mu,ki), amp, prec, ok)
      call tear_down_golem95()
      call ninja_exit()
      if (ok) then
         !
      else
         !
      end if
      if(present(acc)) then
         acc=10.0_ki**(-prec) ! point accuracy
      else
         if(prec.lt.PSP_chk_th3) then
            ! Give back a Nan so that point is discarded
            zero = log(1.0_ki)
            amp(2)= 1.0_ki/zero
        end if
        ! Cannot be assigned if present(acc)=F --> commented out!
        ! acc=1E5_ki ! dummy accuracy which is not used
      end if

      
      res(1) = real(amp(4), c_double)
      res(2) = real(amp(3), c_double)
      res(3) = real(amp(2), c_double)
      res(4) = real(amp(1), c_double)

      if(present(blha1_mode)) then
         if(blha1_mode) then
            ! restore nlo_prefactors
            nlo_prefactors = orig_nlo_prefactors
         end if
     end if

   end subroutine eval12
   !---#] subroutine eval12 :
   !---#[ subroutine eval13 :
   subroutine     eval13(momenta, mu, parameters, res, acc, blha1_mode)
      use, intrinsic :: iso_c_binding
      use p12_sbars_epnemumnmubarg_config, only: ki, PSP_chk_th3, nlo_prefactors
      use p12_sbars_epnemumnmubarg_model, only: parseline
      use p12_sbars_epnemumnmubarg_kinematics, only: boost_to_cms
      use p13_sbarg_epnemumnmubarsbar_matrix, only: samplitude, OLP_spin_correlated_lo2, OLP_color_correlated
      use p12_sbars_epnemumnmubarg_groups, only: tear_down_golem95
      use p12_sbars_epnemumnmubarg_groups, only: ninja_exit

      implicit none
      real(kind=c_double), dimension(35), intent(in) :: momenta
      real(kind=c_double), intent(in) :: mu
      real(kind=c_double), dimension(10), intent(in) :: parameters
      real(kind=c_double), dimension(60), intent(out) :: res

      real(kind=ki), dimension(7,4) :: vecs
      real(kind=ki), dimension(4) :: amp
      real(kind=c_double), optional :: acc
      logical, optional :: blha1_mode
      real(kind=ki) :: zero
      integer :: i, prec, orig_nlo_prefactors
      logical :: ok

      call init_event_parameters(13, parameters)

      if(present(blha1_mode)) then
         if(blha1_mode) then
            ! save nlo_prefactors and restore later
            orig_nlo_prefactors=nlo_prefactors
            nlo_prefactors=0
         end if
     end if

      vecs(:,1) = real(momenta(1::5),ki)
      vecs(:,2) = real(momenta(2::5),ki)
      vecs(:,3) = real(momenta(3::5),ki)
      vecs(:,4) = real(momenta(4::5),ki)

      call boost_to_cms(vecs)

      call samplitude(vecs, real(mu,ki)*real(mu,ki), amp, prec, ok)
      call tear_down_golem95()
      call ninja_exit()
      if (ok) then
         !
      else
         !
      end if
      if(present(acc)) then
         acc=10.0_ki**(-prec) ! point accuracy
      else
         if(prec.lt.PSP_chk_th3) then
            ! Give back a Nan so that point is discarded
            zero = log(1.0_ki)
            amp(2)= 1.0_ki/zero
        end if
        ! Cannot be assigned if present(acc)=F --> commented out!
        ! acc=1E5_ki ! dummy accuracy which is not used
      end if

      
      res(1) = real(amp(4), c_double)
      res(2) = real(amp(3), c_double)
      res(3) = real(amp(2), c_double)
      res(4) = real(amp(1), c_double)

      if(present(blha1_mode)) then
         if(blha1_mode) then
            ! restore nlo_prefactors
            nlo_prefactors = orig_nlo_prefactors
         end if
     end if

   end subroutine eval13
   !---#] subroutine eval13 :
   !---#[ subroutine eval14 :
   subroutine     eval14(momenta, mu, parameters, res, acc, blha1_mode)
      use, intrinsic :: iso_c_binding
      use p12_sbars_epnemumnmubarg_config, only: ki, PSP_chk_th3, nlo_prefactors
      use p12_sbars_epnemumnmubarg_model, only: parseline
      use p12_sbars_epnemumnmubarg_kinematics, only: boost_to_cms
      use p14_ssbar_epnemumnmubarg_matrix, only: samplitude, OLP_spin_correlated_lo2, OLP_color_correlated
      use p12_sbars_epnemumnmubarg_groups, only: tear_down_golem95
      use p12_sbars_epnemumnmubarg_groups, only: ninja_exit

      implicit none
      real(kind=c_double), dimension(35), intent(in) :: momenta
      real(kind=c_double), intent(in) :: mu
      real(kind=c_double), dimension(10), intent(in) :: parameters
      real(kind=c_double), dimension(60), intent(out) :: res

      real(kind=ki), dimension(7,4) :: vecs
      real(kind=ki), dimension(4) :: amp
      real(kind=c_double), optional :: acc
      logical, optional :: blha1_mode
      real(kind=ki) :: zero
      integer :: i, prec, orig_nlo_prefactors
      logical :: ok

      call init_event_parameters(14, parameters)

      if(present(blha1_mode)) then
         if(blha1_mode) then
            ! save nlo_prefactors and restore later
            orig_nlo_prefactors=nlo_prefactors
            nlo_prefactors=0
         end if
     end if

      vecs(:,1) = real(momenta(1::5),ki)
      vecs(:,2) = real(momenta(2::5),ki)
      vecs(:,3) = real(momenta(3::5),ki)
      vecs(:,4) = real(momenta(4::5),ki)

      call boost_to_cms(vecs)

      call samplitude(vecs, real(mu,ki)*real(mu,ki), amp, prec, ok)
      call tear_down_golem95()
      call ninja_exit()
      if (ok) then
         !
      else
         !
      end if
      if(present(acc)) then
         acc=10.0_ki**(-prec) ! point accuracy
      else
         if(prec.lt.PSP_chk_th3) then
            ! Give back a Nan so that point is discarded
            zero = log(1.0_ki)
            amp(2)= 1.0_ki/zero
        end if
        ! Cannot be assigned if present(acc)=F --> commented out!
        ! acc=1E5_ki ! dummy accuracy which is not used
      end if

      
      res(1) = real(amp(4), c_double)
      res(2) = real(amp(3), c_double)
      res(3) = real(amp(2), c_double)
      res(4) = real(amp(1), c_double)

      if(present(blha1_mode)) then
         if(blha1_mode) then
            ! restore nlo_prefactors
            nlo_prefactors = orig_nlo_prefactors
         end if
     end if

   end subroutine eval14
   !---#] subroutine eval14 :
   !---#[ subroutine eval15 :
   subroutine     eval15(momenta, mu, parameters, res, acc, blha1_mode)
      use, intrinsic :: iso_c_binding
      use p12_sbars_epnemumnmubarg_config, only: ki, PSP_chk_th3, nlo_prefactors
      use p12_sbars_epnemumnmubarg_model, only: parseline
      use p12_sbars_epnemumnmubarg_kinematics, only: boost_to_cms
      use p15_sg_epnemumnmubars_matrix, only: samplitude, OLP_spin_correlated_lo2, OLP_color_correlated
      use p12_sbars_epnemumnmubarg_groups, only: tear_down_golem95
      use p12_sbars_epnemumnmubarg_groups, only: ninja_exit

      implicit none
      real(kind=c_double), dimension(35), intent(in) :: momenta
      real(kind=c_double), intent(in) :: mu
      real(kind=c_double), dimension(10), intent(in) :: parameters
      real(kind=c_double), dimension(60), intent(out) :: res

      real(kind=ki), dimension(7,4) :: vecs
      real(kind=ki), dimension(4) :: amp
      real(kind=c_double), optional :: acc
      logical, optional :: blha1_mode
      real(kind=ki) :: zero
      integer :: i, prec, orig_nlo_prefactors
      logical :: ok

      call init_event_parameters(15, parameters)

      if(present(blha1_mode)) then
         if(blha1_mode) then
            ! save nlo_prefactors and restore later
            orig_nlo_prefactors=nlo_prefactors
            nlo_prefactors=0
         end if
     end if

      vecs(:,1) = real(momenta(1::5),ki)
      vecs(:,2) = real(momenta(2::5),ki)
      vecs(:,3) = real(momenta(3::5),ki)
      vecs(:,4) = real(momenta(4::5),ki)

      call boost_to_cms(vecs)

      call samplitude(vecs, real(mu,ki)*real(mu,ki), amp, prec, ok)
      call tear_down_golem95()
      call ninja_exit()
      if (ok) then
         !
      else
         !
      end if
      if(present(acc)) then
         acc=10.0_ki**(-prec) ! point accuracy
      else
         if(prec.lt.PSP_chk_th3) then
            ! Give back a Nan so that point is discarded
            zero = log(1.0_ki)
            amp(2)= 1.0_ki/zero
        end if
        ! Cannot be assigned if present(acc)=F --> commented out!
        ! acc=1E5_ki ! dummy accuracy which is not used
      end if

      
      res(1) = real(amp(4), c_double)
      res(2) = real(amp(3), c_double)
      res(3) = real(amp(2), c_double)
      res(4) = real(amp(1), c_double)

      if(present(blha1_mode)) then
         if(blha1_mode) then
            ! restore nlo_prefactors
            nlo_prefactors = orig_nlo_prefactors
         end if
     end if

   end subroutine eval15
   !---#] subroutine eval15 :
   !---#[ subroutine eval22 :
   subroutine     eval22(momenta, mu, parameters, res, acc, blha1_mode)
      use, intrinsic :: iso_c_binding
      use p12_sbars_epnemumnmubarg_config, only: ki, PSP_chk_th3, nlo_prefactors
      use p12_sbars_epnemumnmubarg_model, only: parseline
      use p12_sbars_epnemumnmubarg_kinematics, only: boost_to_cms
      use p22_gsbar_epnemumnmubarsbar_matrix, only: samplitude, OLP_spin_correlated_lo2, OLP_color_correlated
      use p12_sbars_epnemumnmubarg_groups, only: tear_down_golem95
      use p12_sbars_epnemumnmubarg_groups, only: ninja_exit

      implicit none
      real(kind=c_double), dimension(35), intent(in) :: momenta
      real(kind=c_double), intent(in) :: mu
      real(kind=c_double), dimension(10), intent(in) :: parameters
      real(kind=c_double), dimension(60), intent(out) :: res

      real(kind=ki), dimension(7,4) :: vecs
      real(kind=ki), dimension(4) :: amp
      real(kind=c_double), optional :: acc
      logical, optional :: blha1_mode
      real(kind=ki) :: zero
      integer :: i, prec, orig_nlo_prefactors
      logical :: ok

      call init_event_parameters(22, parameters)

      if(present(blha1_mode)) then
         if(blha1_mode) then
            ! save nlo_prefactors and restore later
            orig_nlo_prefactors=nlo_prefactors
            nlo_prefactors=0
         end if
     end if

      vecs(:,1) = real(momenta(1::5),ki)
      vecs(:,2) = real(momenta(2::5),ki)
      vecs(:,3) = real(momenta(3::5),ki)
      vecs(:,4) = real(momenta(4::5),ki)

      call boost_to_cms(vecs)

      call samplitude(vecs, real(mu,ki)*real(mu,ki), amp, prec, ok)
      call tear_down_golem95()
      call ninja_exit()
      if (ok) then
         !
      else
         !
      end if
      if(present(acc)) then
         acc=10.0_ki**(-prec) ! point accuracy
      else
         if(prec.lt.PSP_chk_th3) then
            ! Give back a Nan so that point is discarded
            zero = log(1.0_ki)
            amp(2)= 1.0_ki/zero
        end if
        ! Cannot be assigned if present(acc)=F --> commented out!
        ! acc=1E5_ki ! dummy accuracy which is not used
      end if

      
      res(1) = real(amp(4), c_double)
      res(2) = real(amp(3), c_double)
      res(3) = real(amp(2), c_double)
      res(4) = real(amp(1), c_double)

      if(present(blha1_mode)) then
         if(blha1_mode) then
            ! restore nlo_prefactors
            nlo_prefactors = orig_nlo_prefactors
         end if
     end if

   end subroutine eval22
   !---#] subroutine eval22 :
   !---#[ subroutine eval23 :
   subroutine     eval23(momenta, mu, parameters, res, acc, blha1_mode)
      use, intrinsic :: iso_c_binding
      use p12_sbars_epnemumnmubarg_config, only: ki, PSP_chk_th3, nlo_prefactors
      use p12_sbars_epnemumnmubarg_model, only: parseline
      use p12_sbars_epnemumnmubarg_kinematics, only: boost_to_cms
      use p23_gs_epnemumnmubars_matrix, only: samplitude, OLP_spin_correlated_lo2, OLP_color_correlated
      use p12_sbars_epnemumnmubarg_groups, only: tear_down_golem95
      use p12_sbars_epnemumnmubarg_groups, only: ninja_exit

      implicit none
      real(kind=c_double), dimension(35), intent(in) :: momenta
      real(kind=c_double), intent(in) :: mu
      real(kind=c_double), dimension(10), intent(in) :: parameters
      real(kind=c_double), dimension(60), intent(out) :: res

      real(kind=ki), dimension(7,4) :: vecs
      real(kind=ki), dimension(4) :: amp
      real(kind=c_double), optional :: acc
      logical, optional :: blha1_mode
      real(kind=ki) :: zero
      integer :: i, prec, orig_nlo_prefactors
      logical :: ok

      call init_event_parameters(23, parameters)

      if(present(blha1_mode)) then
         if(blha1_mode) then
            ! save nlo_prefactors and restore later
            orig_nlo_prefactors=nlo_prefactors
            nlo_prefactors=0
         end if
     end if

      vecs(:,1) = real(momenta(1::5),ki)
      vecs(:,2) = real(momenta(2::5),ki)
      vecs(:,3) = real(momenta(3::5),ki)
      vecs(:,4) = real(momenta(4::5),ki)

      call boost_to_cms(vecs)

      call samplitude(vecs, real(mu,ki)*real(mu,ki), amp, prec, ok)
      call tear_down_golem95()
      call ninja_exit()
      if (ok) then
         !
      else
         !
      end if
      if(present(acc)) then
         acc=10.0_ki**(-prec) ! point accuracy
      else
         if(prec.lt.PSP_chk_th3) then
            ! Give back a Nan so that point is discarded
            zero = log(1.0_ki)
            amp(2)= 1.0_ki/zero
        end if
        ! Cannot be assigned if present(acc)=F --> commented out!
        ! acc=1E5_ki ! dummy accuracy which is not used
      end if

      
      res(1) = real(amp(4), c_double)
      res(2) = real(amp(3), c_double)
      res(3) = real(amp(2), c_double)
      res(4) = real(amp(1), c_double)

      if(present(blha1_mode)) then
         if(blha1_mode) then
            ! restore nlo_prefactors
            nlo_prefactors = orig_nlo_prefactors
         end if
     end if

   end subroutine eval23
   !---#] subroutine eval23 :

   !---#[ OLP Polarization vector:
   subroutine OLP_Polvec(p,q,eps) &
       & bind(C,name="olp_polvec_")
      use, intrinsic :: iso_c_binding
      use p0_dbard_epnemumnmubarg_config , only:ki
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics, only: Spab3, Spaa     
      implicit none
      real(kind=c_double), dimension(0:3), intent(in) :: p,q
      real(kind=c_double), dimension(0:7), intent(out) :: eps
      complex(kind=ki), dimension(4) :: eps_complex
      complex(kind=ki), dimension(0:3) :: Sp

      Sp=Spab3(real(q,ki), real(p,ki))

      eps_complex(:)=Sp(:)/Spaa(real(q,ki),real(p,ki))/sqrt2
      eps(0)=real(eps_complex(1),c_double)
      eps(1)=real(aimag(eps_complex(1)),c_double)
      eps(2)=real(eps_complex(2),c_double)
      eps(3)=real(aimag(eps_complex(2)),c_double)
      eps(4)=real(eps_complex(3),c_double)
      eps(5)=real(aimag(eps_complex(3)),c_double)
      eps(6)=real(eps_complex(4),c_double)
      eps(7)=real(aimag(eps_complex(4)),c_double)

   end subroutine OLP_Polvec
   !---#] OLP Polarization vector:

   !---#[ OLP_PrintParameter
   subroutine OLP_PrintParameter(filename) &
       & bind(C,name="olp_printparameter_")

      use, intrinsic :: iso_c_binding
      use p0_dbard_epnemumnmubarg_model, only: p0_dbard_epnemumnmubarg_print_parameter => print_parameter
      use p4_ubaru_epnemumnmubarg_model, only: p4_ubaru_epnemumnmubarg_print_parameter => print_parameter
      use p8_cbarc_epnemumnmubarg_model, only: p8_cbarc_epnemumnmubarg_print_parameter => print_parameter
      use p12_sbars_epnemumnmubarg_model, only: p12_sbars_epnemumnmubarg_print_parameter => print_parameter
      implicit none
      character(kind=c_char,len=1), intent(in) :: filename
      integer :: ierr, l
      logical :: exists

      interface
         function strlen(s) bind(C,name='strlen')
            use, intrinsic :: iso_c_binding
            implicit none
            character(kind=c_char,len=1), intent(in) :: s
            integer(kind=c_int) :: strlen
         end function strlen
      end interface

      l = strlen(filename)

      inquire(file=filename(1:l), exist=exists)
      if (exists) then
         open(unit=27,file=filename(1:l),status="old", position="append", action="write",iostat=ierr)
      else
         open(unit=27,file=filename(1:l),status="new",iostat=ierr)
      end if
      if (ierr .ne. 0) then
         write(7,*) "OLP_PrintParameter: Could not open/create:", filename(1:l), "!"
         ierr = -1
      end if
      write (27, "(A)") "####### Setup of SubProcess p0_dbard_epnemumnmubarg #######"
      call p0_dbard_epnemumnmubarg_print_parameter(.true.,27)
      write (27, *)
      write (27, "(A)") "####### Setup of SubProcess p4_ubaru_epnemumnmubarg #######"
      call p4_ubaru_epnemumnmubarg_print_parameter(.true.,27)
      write (27, *)
      write (27, "(A)") "####### Setup of SubProcess p8_cbarc_epnemumnmubarg #######"
      call p8_cbarc_epnemumnmubarg_print_parameter(.true.,27)
      write (27, *)
      write (27, "(A)") "####### Setup of SubProcess p12_sbars_epnemumnmubarg #######"
      call p12_sbars_epnemumnmubarg_print_parameter(.true.,27)
      write (27, *)

      close(27)

   end subroutine OLP_PrintParameter
   !---#] OLP_PrintParameter

   subroutine     read_slha_file(line)
      use p0_dbard_epnemumnmubarg_model, only: p0_dbard_epnemumnmubarg_read_slha => read_slha
      use p4_ubaru_epnemumnmubarg_model, only: p4_ubaru_epnemumnmubarg_read_slha => read_slha
      use p8_cbarc_epnemumnmubarg_model, only: p8_cbarc_epnemumnmubarg_read_slha => read_slha
      use p12_sbars_epnemumnmubarg_model, only: p12_sbars_epnemumnmubarg_read_slha => read_slha
      implicit none
      character(len=*), intent(in) :: line
      character(len=512) :: file_name
      integer :: ierr

      call unescape_file_name(line, file_name)
      open(unit=27,file=file_name,status='old',iostat=ierr)
      if(ierr.ne.0) then
         print*, "Could not find SLHA model file"
      else
         call p0_dbard_epnemumnmubarg_read_slha(27)
         rewind(unit=27)
         call p4_ubaru_epnemumnmubarg_read_slha(27)
         rewind(unit=27)
         call p8_cbarc_epnemumnmubarg_read_slha(27)
         rewind(unit=27)
         call p12_sbars_epnemumnmubarg_read_slha(27)
         close(27)
      end if
   end subroutine read_slha_file

   subroutine     unescape_file_name(source, dest)
      implicit none
      character(len=*), intent(in) :: source
      character(len=512), intent(out) :: dest
      integer :: is, id, l, hex, hexdigit, hexpos
      character(len=512) :: buf
      logical :: special

      is = scan(source, "|")

      if (is > 1) then
         buf = trim(source(1:is-1))
      else
         buf = trim(source)
      end if

      l = len(buf)
      id = 1
      special = .false.
      hexpos = 0
      if (buf(1:1) .eq. '"') then
         ! double quoted string
         do is = 2, l - 1
            if (special) then
               ! after a backslash or in \x.. escape
               if (hexpos == 1 .or. hexpos == 2) then
                  ! interpret hex digit
                  if ("0" .le. buf(is:is) .and. buf(is:is) .le. "9") then
                     hexdigit = ichar(buf(is:is)) - ichar("0")
                  elseif ("A" .le. buf(is:is) .and. buf(is:is) .le. "F") then
                     hexdigit = ichar(buf(is:is)) - ichar("A") + 10
                  elseif ("a" .le. buf(is:is) .and. buf(is:is) .le. "f") then
                     hexdigit = ichar(buf(is:is)) - ichar("a") + 10
                  else
                     print*, "Invalid hex escape sequence in file name"
                     stop
                  end if

                  if (hexpos == 1) then
                     hex = 16 * hexdigit
                     hexpos = 2
                  else
                     hex = hex + hexdigit
                     hexpos = 0
                     special = .false.
                     dest(id:id) = achar(hex)
                     id = id + 1
                  end if
               elseif (buf(is:is) .eq. "n") then
                  dest(id:id) = achar(10)
                  id = id + 1
                  special = .false.
               elseif (buf(is:is) .eq. "r") then
                  dest(id:id) = achar(13)
                  id = id + 1
                  special = .false.
               elseif (buf(is:is) .eq. "f") then
                  dest(id:id) = achar(12)
                  id = id + 1
                  special = .false.
               elseif (buf(is:is) .eq. "t") then
                  dest(id:id) = achar(9)
                  id = id + 1
                  special = .false.
               elseif (buf(is:is) .eq. "x") then
                  hexpos = 1
               else
                  dest(id:id) = buf(is:is)
                  id = id + 1
                  special = .false.
               end if
            else
               if(buf(is:is) .eq. "\") then
                  special = .true.
               else
                  dest(id:id) = source(is:is)
                  id = id + 1
               end if
            end if
         end do
      elseif (buf(1:1) .eq. '"') then
         ! single quoted string
         do is = 2, l - 1
            if (special) then
               dest(id:id) = buf(is:is)
               id = id + 1
               special = .false.
            elseif (buf(is:is) .eq. "'") then
               special = .true.
            else
               dest(id:id) = buf(is:is)
               id = id + 1
            end if
         end do
      else
         ! assume backslash escaped string
         do is = 1, l
            if (special) then
               dest(id:id) = buf(is:is)
               id = id + 1
               special = .false.
            elseif (buf(is:is) .eq. "\") then
               special = .true.
            else
               dest(id:id) = buf(is:is)
               id = id + 1
            end if
         end do
      end if
   end subroutine unescape_file_name
end module olp_module
