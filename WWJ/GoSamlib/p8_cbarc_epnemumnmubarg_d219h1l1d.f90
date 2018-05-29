module     p8_cbarc_epnemumnmubarg_d219h1l1d
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p8_cbarc_epnemumnmubarg/helicity1d219h1l1d.f90
   ! generator: buildfortran_d.py
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d219
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd219h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(7) :: acd219
      complex(ki) :: brack
      acd219(1)=dotproduct(k7,qshift)
      acd219(2)=abb219(16)
      acd219(3)=dotproduct(qshift,spvak2k7)
      acd219(4)=abb219(14)
      acd219(5)=abb219(15)
      acd219(6)=-acd219(2)*acd219(1)
      acd219(7)=-acd219(4)*acd219(3)
      brack=acd219(5)+acd219(6)+acd219(7)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd219h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(6) :: acd219
      complex(ki) :: brack
      acd219(1)=k7(iv1)
      acd219(2)=abb219(16)
      acd219(3)=spvak2k7(iv1)
      acd219(4)=abb219(14)
      acd219(5)=-acd219(2)*acd219(1)
      acd219(6)=-acd219(4)*acd219(3)
      brack=acd219(5)+acd219(6)
   end function brack_2
!---#] function brack_2:
!---#[ function derivative:
   function derivative(mu2,i1) result(numerator)
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_abbrevd219h1
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      complex(ki) :: numerator
      complex(ki) :: loc
      integer :: t1
      integer :: deg
      complex(ki), dimension(4), parameter :: Q = (/ (0.0_ki,0.0_ki),(0.0_ki,0.&
      &0_ki),(0.0_ki,0.0_ki),(0.0_ki,0.0_ki)/)
      qshift = -k2
      numerator = 0.0_ki
      deg = 0
      if(present(i1)) then
          iv1=i1
          deg=1
      else
          iv1=1
      end if
      t1 = 0
      if(deg.eq.0) then
         numerator = cond(epspow.eq.t1,brack_1,Q,mu2)
         return
      end if
      if(deg.eq.1) then
         numerator = cond(epspow.eq.t1,brack_2,Q,mu2)
         return
      end if
   end function derivative
!---#] function derivative:
!---#[ subroutine reconstruct_d219:
   subroutine     reconstruct_d219(coeffs)
      use p8_cbarc_epnemumnmubarg_groups, only: tensrec_info_group1
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group1), intent(out) :: coeffs
      ! rank 1 case :
      !---[# reconstruct coeffs%coeffs_219:
      coeffs%coeffs_219%c0 = derivative(czip)
      coeffs%coeffs_219%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_219%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_219%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_219%c1(4,1) = -derivative(czip,4)
      !---#] reconstruct coeffs%coeffs_219:
   end subroutine reconstruct_d219
!---#] subroutine reconstruct_d219:
end module     p8_cbarc_epnemumnmubarg_d219h1l1d
