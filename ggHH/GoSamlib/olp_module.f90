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
      use pb_gg_hh_matrix, only: pb_gg_hh_initgolem => initgolem
      use pb_gg_hh_config, only: pb_gg_hh_PSP_rescue => PSP_rescue, &
           & pb_gg_hh_PSP_verbosity => PSP_verbosity, &
           & pb_gg_hh_PSP_chk_th1 => PSP_chk_th1, &
           & pb_gg_hh_PSP_chk_th2 => PSP_chk_th2, &
           & pb_gg_hh_PSP_chk_th3 => PSP_chk_th3, &
           & pb_gg_hh_PSP_chk_kfactor => PSP_chk_kfactor
      use p0_gg_hhg_matrix, only: p0_gg_hhg_initgolem => initgolem
      use p0_gg_hhg_config, only: p0_gg_hhg_PSP_rescue => PSP_rescue, &
           & p0_gg_hhg_PSP_verbosity => PSP_verbosity, &
           & p0_gg_hhg_PSP_chk_li1 => PSP_chk_li1, &
           & p0_gg_hhg_PSP_chk_li2 => PSP_chk_li2, &
           & p0_gg_hhg_PSP_chk_li3 => PSP_chk_li3, &
           & p0_gg_hhg_PSP_chk_kfactor => PSP_chk_kfactor
      use p1_dg_hhd_matrix, only: p1_dg_hhd_initgolem => initgolem
      use p1_dg_hhd_config, only: p1_dg_hhd_PSP_rescue => PSP_rescue, &
           & p1_dg_hhd_PSP_verbosity => PSP_verbosity, &
           & p1_dg_hhd_PSP_chk_li1 => PSP_chk_li1, &
           & p1_dg_hhd_PSP_chk_li2 => PSP_chk_li2, &
           & p1_dg_hhd_PSP_chk_li3 => PSP_chk_li3, &
           & p1_dg_hhd_PSP_chk_kfactor => PSP_chk_kfactor
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
      ! PSP_chk_th1 = 8
      ! PSP_chk_th2 = 3
      ! PSP_chk_th3 = 5
      ! PSP_chk_kfactor = 1000
      ! pb_gg_hh_PSP_rescue = PSP_rescue
      ! pb_gg_hh_PSP_verbosity =  PSP_verbosity
      ! pb_gg_hh_PSP_chk_th1 = PSP_chk_th1
      ! pb_gg_hh_PSP_chk_th2 = PSP_chk_th2
      ! pb_gg_hh_PSP_chk_th3 = PSP_chk_th3
      ! pb_gg_hh_PSP_chk_kfactor = PSP_chk_kfactor
      ! p0_gg_hhg_PSP_rescue = PSP_rescue
      ! p0_gg_hhg_PSP_verbosity =  PSP_verbosity
      ! p0_gg_hhg_PSP_chk_th1 = PSP_chk_li1
      ! p0_gg_hhg_PSP_chk_th2 = PSP_chk_li2
      ! p0_gg_hhg_PSP_chk_th3 = PSP_chk_li3
      ! p0_gg_hhg_PSP_chk_kfactor = PSP_chk_kfactor
      ! p1_dg_hhd_PSP_rescue = PSP_rescue
      ! p1_dg_hhd_PSP_verbosity =  PSP_verbosity
      ! p1_dg_hhd_PSP_chk_th1 = PSP_chk_li1
      ! p1_dg_hhd_PSP_chk_th2 = PSP_chk_li2
      ! p1_dg_hhd_PSP_chk_th3 = PSP_chk_li3
      ! p1_dg_hhd_PSP_chk_kfactor = PSP_chk_kfactor
      if(stage.lt.0) then
         call pb_gg_hh_initgolem(.true.)
         call p0_gg_hhg_initgolem(.false.)
         call p1_dg_hhd_initgolem(.false.)
      else
         call pb_gg_hh_initgolem(.true.,stage,rndseed)
         call p0_gg_hhg_initgolem(.false.,stage,rndseed)
         call p1_dg_hhd_initgolem(.false.,stage,rndseed)
      end if

   end subroutine OLP_Start

   subroutine OLP_Info(olp_name, olp_version, message)&
   & bind(C,name="olp_info_")
   use, intrinsic :: iso_c_binding, only: C_CHAR, C_NULL_CHAR
   use p0_gg_hhg_version, only: gosamversion, gosamrevision

   implicit none
   character(kind=c_char), intent(inout), dimension(20)  :: olp_name
   character(kind=c_char), intent(inout), dimension(20)  :: olp_version
   character(kind=c_char), intent(inout), dimension(255) :: message
   character(len=254) :: msg
   character(len=7)   :: rev
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
   write(rev,'(Z7)')  gosamrevision

   msg = new_line('C')//'Please cite the following references when using this program:'//&
        &new_line('C')//'Peraro:2014cba, Mastrolia:2012bu, '//&
        &'Mastrolia:2010nb, Guillet:2013msa, Cullen:2011kv, Cullen:2014yla'

   call strncpy(olp_name, c_char_'GoSam-'//ver1//'.'//ver2//C_NULL_CHAR, &
        len(c_char_'GoSam-'//ver1//'.'//ver2//C_NULL_CHAR,kind=c_size_t))

   call strncpy(olp_version, c_char_'git rev-'//trim(adjustl(rev))//C_NULL_CHAR, &
        len(c_char_'git rev-'//trim(adjustl(rev))//C_NULL_CHAR,kind=c_size_t))

   call strncpy(message, c_char_'GoSam:'//trim(adjustl(msg))//C_NULL_CHAR, &
        len(c_char_'GoSam:'//trim(adjustl(msg))//C_NULL_CHAR,kind=c_size_t))

   end subroutine OLP_Info


   subroutine OLP_SetParameter(variable_name, real_part, imag_part, success)&
   & bind(C,name="olp_setparameter_")
      use, intrinsic :: iso_c_binding
      use pb_gg_hh_model, only: pb_gg_hh_set_parameter => set_parameter
      use p0_gg_hhg_model, only: p0_gg_hhg_set_parameter => set_parameter
      use p1_dg_hhd_model, only: p1_dg_hhd_set_parameter => set_parameter
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
      call pb_gg_hh_set_parameter(variable_name(1:l),real_part,imag_part,success)
      if(success==0) then ! return immediately on error
          return
      end if
      call p0_gg_hhg_set_parameter(variable_name(1:l),real_part,imag_part,success)
      if(success==0) then ! return immediately on error
          return
      end if
      call p1_dg_hhd_set_parameter(variable_name(1:l),real_part,imag_part,success)
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
              call eval0(momenta(1:25), mu, parameters, res, blha1_mode=.true.)
              res(1:3) = alpha_s * one_over_2pi * res(1:3)
      case(1)
              call eval1(momenta(1:25), mu, parameters, res, blha1_mode=.true.)
              res(1:3) = alpha_s * one_over_2pi * res(1:3)
      case(2)
              call eval2(momenta(1:25), mu, parameters, res, blha1_mode=.true.)
              res(1:3) = alpha_s * one_over_2pi * res(1:3)
      case(3)
              call eval3(momenta(1:25), mu, parameters, res, blha1_mode=.true.)
              res(1:3) = alpha_s * one_over_2pi * res(1:3)
      case(4)
              call eval4(momenta(1:25), mu, parameters, res, blha1_mode=.true.)
              res(1:3) = alpha_s * one_over_2pi * res(1:3)
      case(5)
              call eval5(momenta(1:25), mu, parameters, res, blha1_mode=.true.)
              res(1:3) = alpha_s * one_over_2pi * res(1:3)
      case(6)
              call eval6(momenta(1:25), mu, parameters, res, blha1_mode=.true.)
              res(1:3) = alpha_s * one_over_2pi * res(1:3)
      case(7)
              call eval7(momenta(1:25), mu, parameters, res, blha1_mode=.true.)
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
              call eval0(momenta(1:25), mu, parameters, res, acc)
      case(1)
              call eval1(momenta(1:25), mu, parameters, res, acc)
      case(2)
              call eval2(momenta(1:25), mu, parameters, res, acc)
      case(3)
              call eval3(momenta(1:25), mu, parameters, res, acc)
      case(4)
              call eval4(momenta(1:25), mu, parameters, res, acc)
      case(5)
              call eval5(momenta(1:25), mu, parameters, res, acc)
      case(6)
              call eval6(momenta(1:25), mu, parameters, res, acc)
      case(7)
              call eval7(momenta(1:25), mu, parameters, res, acc)
      case default
         res(:) = 0.0d0
      end select
   end subroutine OLP_EvalSubProcess2

   subroutine     OLP_Finalize() &
   & bind(C,name="olp_finalize_")
      use, intrinsic :: iso_c_binding
      use pb_gg_hh_matrix, only: pb_gg_hh_exitgolem => exitgolem
      use p0_gg_hhg_matrix, only: p0_gg_hhg_exitgolem => exitgolem
      use p1_dg_hhd_matrix, only: p1_dg_hhd_exitgolem => exitgolem
      implicit none
      call pb_gg_hh_exitgolem(.false.)
      call p0_gg_hhg_exitgolem(.true.)
      call p1_dg_hhd_exitgolem(.true.)
   end subroutine OLP_Finalize

   subroutine     OLP_Option(line,stat) &
   & bind(C,name="olp_option_")
      use, intrinsic :: iso_c_binding
      use pb_gg_hh_model, only: pb_gg_hh_parseline => parseline
      use p0_gg_hhg_model, only: p0_gg_hhg_parseline => parseline
      use p0_gg_hhg_model_qp, only: p0_gg_hhg_parseline_qp => parseline
      use p1_dg_hhd_model, only: p1_dg_hhd_parseline => parseline
      use p1_dg_hhd_model_qp, only: p1_dg_hhd_parseline_qp => parseline
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
      call pb_gg_hh_parseline(line(1:l),ios)
      if (ios .ne. 0) then
         stat = 0
         return
      end if
      call p0_gg_hhg_parseline(line(1:l),ios)
      call p0_gg_hhg_parseline_qp(line(1:l),ios)
      if (ios .ne. 0) then
         stat = 0
         return
      end if
      call p1_dg_hhd_parseline(line(1:l),ios)
      call p1_dg_hhd_parseline_qp(line(1:l),ios)
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
      use p0_gg_hhg_config, only: ki, PSP_chk_li3, nlo_prefactors, PSP_check
      use p0_gg_hhg_model, only: parseline
      use p0_gg_hhg_kinematics, only: boost_to_cms
      use p0_gg_hhg_matrix, only: samplitude, OLP_spin_correlated_lo2, OLP_color_correlated
      use p0_gg_hhg_groups, only: ninja_exit, quadninja_exit

      implicit none
      real(kind=c_double), dimension(25), intent(in) :: momenta
      real(kind=c_double), intent(in) :: mu
      real(kind=c_double), dimension(10), intent(in) :: parameters
      real(kind=c_double), dimension(60), intent(out) :: res

      real(kind=ki), dimension(5,4) :: vecs
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
      call ninja_exit()
      call quadninja_exit()
      if (ok) then
         !
      else
         !
      end if
      if(present(acc)) then
         acc=10.0_ki**(-prec) ! point accuracy
      else
         if(prec.lt.PSP_chk_li3 .and. PSP_check) then
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
      use p1_dg_hhd_config, only: ki, PSP_chk_li3, nlo_prefactors, PSP_check
      use p1_dg_hhd_model, only: parseline
      use p1_dg_hhd_kinematics, only: boost_to_cms
      use p1_dg_hhd_matrix, only: samplitude, OLP_spin_correlated_lo2, OLP_color_correlated
      use p1_dg_hhd_groups, only: ninja_exit, quadninja_exit

      implicit none
      real(kind=c_double), dimension(25), intent(in) :: momenta
      real(kind=c_double), intent(in) :: mu
      real(kind=c_double), dimension(10), intent(in) :: parameters
      real(kind=c_double), dimension(60), intent(out) :: res

      real(kind=ki), dimension(5,4) :: vecs
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
      call ninja_exit()
      call quadninja_exit()
      if (ok) then
         !
      else
         !
      end if
      if(present(acc)) then
         acc=10.0_ki**(-prec) ! point accuracy
      else
         if(prec.lt.PSP_chk_li3 .and. PSP_check) then
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
      use p1_dg_hhd_config, only: ki, PSP_chk_li3, nlo_prefactors, PSP_check
      use p1_dg_hhd_model, only: parseline
      use p1_dg_hhd_kinematics, only: boost_to_cms
      use p2_gd_hhd_matrix, only: samplitude, OLP_spin_correlated_lo2, OLP_color_correlated
      use p1_dg_hhd_groups, only: ninja_exit, quadninja_exit

      implicit none
      real(kind=c_double), dimension(25), intent(in) :: momenta
      real(kind=c_double), intent(in) :: mu
      real(kind=c_double), dimension(10), intent(in) :: parameters
      real(kind=c_double), dimension(60), intent(out) :: res

      real(kind=ki), dimension(5,4) :: vecs
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
      call ninja_exit()
      call quadninja_exit()
      if (ok) then
         !
      else
         !
      end if
      if(present(acc)) then
         acc=10.0_ki**(-prec) ! point accuracy
      else
         if(prec.lt.PSP_chk_li3 .and. PSP_check) then
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
      use p1_dg_hhd_config, only: ki, PSP_chk_li3, nlo_prefactors, PSP_check
      use p1_dg_hhd_model, only: parseline
      use p1_dg_hhd_kinematics, only: boost_to_cms
      use p3_dbarg_hhdbar_matrix, only: samplitude, OLP_spin_correlated_lo2, OLP_color_correlated
      use p1_dg_hhd_groups, only: ninja_exit, quadninja_exit

      implicit none
      real(kind=c_double), dimension(25), intent(in) :: momenta
      real(kind=c_double), intent(in) :: mu
      real(kind=c_double), dimension(10), intent(in) :: parameters
      real(kind=c_double), dimension(60), intent(out) :: res

      real(kind=ki), dimension(5,4) :: vecs
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
      call ninja_exit()
      call quadninja_exit()
      if (ok) then
         !
      else
         !
      end if
      if(present(acc)) then
         acc=10.0_ki**(-prec) ! point accuracy
      else
         if(prec.lt.PSP_chk_li3 .and. PSP_check) then
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
   !---#[ subroutine eval4 :
   subroutine     eval4(momenta, mu, parameters, res, acc, blha1_mode)
      use, intrinsic :: iso_c_binding
      use p1_dg_hhd_config, only: ki, PSP_chk_li3, nlo_prefactors, PSP_check
      use p1_dg_hhd_model, only: parseline
      use p1_dg_hhd_kinematics, only: boost_to_cms
      use p4_gdbar_hhdbar_matrix, only: samplitude, OLP_spin_correlated_lo2, OLP_color_correlated
      use p1_dg_hhd_groups, only: ninja_exit, quadninja_exit

      implicit none
      real(kind=c_double), dimension(25), intent(in) :: momenta
      real(kind=c_double), intent(in) :: mu
      real(kind=c_double), dimension(10), intent(in) :: parameters
      real(kind=c_double), dimension(60), intent(out) :: res

      real(kind=ki), dimension(5,4) :: vecs
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
      call ninja_exit()
      call quadninja_exit()
      if (ok) then
         !
      else
         !
      end if
      if(present(acc)) then
         acc=10.0_ki**(-prec) ! point accuracy
      else
         if(prec.lt.PSP_chk_li3 .and. PSP_check) then
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
      use p1_dg_hhd_config, only: ki, PSP_chk_li3, nlo_prefactors, PSP_check
      use p1_dg_hhd_model, only: parseline
      use p1_dg_hhd_kinematics, only: boost_to_cms
      use p5_ddbar_hhg_matrix, only: samplitude, OLP_spin_correlated_lo2, OLP_color_correlated
      use p1_dg_hhd_groups, only: ninja_exit, quadninja_exit

      implicit none
      real(kind=c_double), dimension(25), intent(in) :: momenta
      real(kind=c_double), intent(in) :: mu
      real(kind=c_double), dimension(10), intent(in) :: parameters
      real(kind=c_double), dimension(60), intent(out) :: res

      real(kind=ki), dimension(5,4) :: vecs
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
      call ninja_exit()
      call quadninja_exit()
      if (ok) then
         !
      else
         !
      end if
      if(present(acc)) then
         acc=10.0_ki**(-prec) ! point accuracy
      else
         if(prec.lt.PSP_chk_li3 .and. PSP_check) then
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
      use p1_dg_hhd_config, only: ki, PSP_chk_li3, nlo_prefactors, PSP_check
      use p1_dg_hhd_model, only: parseline
      use p1_dg_hhd_kinematics, only: boost_to_cms
      use p5_ddbar_hhg_matrix, only: samplitude, OLP_spin_correlated_lo2, OLP_color_correlated
      use p1_dg_hhd_groups, only: ninja_exit, quadninja_exit

      implicit none
      real(kind=c_double), dimension(25), intent(in) :: momenta
      real(kind=c_double), intent(in) :: mu
      real(kind=c_double), dimension(10), intent(in) :: parameters
      real(kind=c_double), dimension(60), intent(out) :: res

      real(kind=ki), dimension(5,4) :: vecs,tmpvecs
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

      tmpvecs(:,1) = real(momenta(1::5),ki)
      tmpvecs(:,2) = real(momenta(2::5),ki)
      tmpvecs(:,3) = real(momenta(3::5),ki)
      tmpvecs(:,4) = real(momenta(4::5),ki)

      vecs(1,:) = tmpvecs(2,:)
      vecs(2,:) = tmpvecs(1,:)
      vecs(3,:) = tmpvecs(3,:)
      vecs(4,:) = tmpvecs(4,:)
      vecs(5,:) = tmpvecs(5,:)

      call boost_to_cms(vecs)

      call samplitude(vecs, real(mu,ki)*real(mu,ki), amp, prec, ok)
      call ninja_exit()
      call quadninja_exit()
      if (ok) then
         !
      else
         !
      end if
      if(present(acc)) then
         acc=10.0_ki**(-prec) ! point accuracy
      else
         if(prec.lt.PSP_chk_li3 .and. PSP_check) then
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
      use pb_gg_hh_config, only: ki, PSP_chk_li3, nlo_prefactors, PSP_check
      use pb_gg_hh_model, only: parseline
      use pb_gg_hh_kinematics, only: boost_to_cms
      use pb_gg_hh_matrix, only: samplitude, OLP_spin_correlated_lo2, OLP_color_correlated
      use pb_gg_hh_groups, only: tear_down_golem95
      use pb_gg_hh_groups, only: ninja_exit

      implicit none
      real(kind=c_double), dimension(25), intent(in) :: momenta
      real(kind=c_double), intent(in) :: mu
      real(kind=c_double), dimension(10), intent(in) :: parameters
      real(kind=c_double), dimension(60), intent(out) :: res

      real(kind=ki), dimension(5,4) :: vecsr
      real(kind=ki), dimension(4,4) :: vecs
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

      vecsr(:,1) = real(momenta(1::5),ki)
      vecsr(:,2) = real(momenta(2::5),ki)
      vecsr(:,3) = real(momenta(3::5),ki)
      vecsr(:,4) = real(momenta(4::5),ki)

      vecs(1,:) = vecsr(1,:)
      vecs(2,:) = vecsr(2,:)
      vecs(3,:) = vecsr(3,:)
      vecs(4,:) = vecsr(4,:)

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
         if(prec.lt.PSP_chk_li3 .and. PSP_check) then
            ! Give back a single pole equal to one, so that point is recomputed in quad precision
            ! zero = log(1.0_ki)
            amp(3)= 1.0_ki !/zero
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
   !---#[ OLP Polarization vector:
   subroutine OLP_Polvec(p,q,eps) &
       & bind(C,name="olp_polvec_")
      use, intrinsic :: iso_c_binding
      use p0_gg_hhg_config , only:ki
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics, only: Spab3, Spaa   
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
      use p0_gg_hhg_model, only: p0_gg_hhg_print_parameter => print_parameter
      use p1_dg_hhd_model, only: p1_dg_hhd_print_parameter => print_parameter
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
      write (27, "(A)") "####### Setup of SubProcess p0_gg_hhg #######"
      call p0_gg_hhg_print_parameter(.true.,27)
      write (27, *)
      write (27, "(A)") "####### Setup of SubProcess p1_dg_hhd #######"
      call p1_dg_hhd_print_parameter(.true.,27)
      write (27, *)

      close(27)

   end subroutine OLP_PrintParameter
   !---#] OLP_PrintParameter

   subroutine     read_slha_file(line)
      use pb_gg_hh_model, only: pb_gg_hh_read_slha => read_slha
      use p0_gg_hhg_model, only: p0_gg_hhg_read_slha => read_slha
      use p0_gg_hhg_model_qp, only: p0_gg_hhg_read_slha_qp => read_slha
      use p1_dg_hhd_model, only: p1_dg_hhd_read_slha => read_slha
      use p1_dg_hhd_model_qp, only: p1_dg_hhd_read_slha_qp => read_slha
      implicit none
      character(len=*), intent(in) :: line
      character(len=512) :: file_name
      integer :: ierr

      call unescape_file_name(line, file_name)
      open(unit=27,file=file_name,status='old',iostat=ierr)
      if(ierr.ne.0) then
         print*, "Could not find SLHA model file"
      else
         call p0_gg_hhg_read_slha(27)
         call p0_gg_hhg_read_slha_qp(27)
         rewind(unit=27)
         call p1_dg_hhd_read_slha(27)
         call p1_dg_hhd_read_slha_qp(27)
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
