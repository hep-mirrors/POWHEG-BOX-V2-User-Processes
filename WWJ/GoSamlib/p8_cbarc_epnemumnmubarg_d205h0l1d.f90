module     p8_cbarc_epnemumnmubarg_d205h0l1d
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p8_cbarc_epnemumnmubarg/helicity0d205h0l1d.f90
   ! generator: buildfortran_d.py
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d205
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd205h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(19) :: acd205
      complex(ki) :: brack
      acd205(1)=dotproduct(k1,qshift)
      acd205(2)=abb205(10)
      acd205(3)=dotproduct(k7,qshift)
      acd205(4)=abb205(15)
      acd205(5)=dotproduct(qshift,spvak1k2)
      acd205(6)=abb205(8)
      acd205(7)=dotproduct(qshift,spvak1k7)
      acd205(8)=abb205(13)
      acd205(9)=dotproduct(qshift,spvak7k1)
      acd205(10)=abb205(9)
      acd205(11)=dotproduct(qshift,spvak7k2)
      acd205(12)=abb205(16)
      acd205(13)=abb205(11)
      acd205(14)=-acd205(2)*acd205(1)
      acd205(15)=-acd205(4)*acd205(3)
      acd205(16)=-acd205(6)*acd205(5)
      acd205(17)=-acd205(8)*acd205(7)
      acd205(18)=-acd205(10)*acd205(9)
      acd205(19)=-acd205(12)*acd205(11)
      brack=acd205(13)+acd205(14)+acd205(15)+acd205(16)+acd205(17)+acd205(18)+a&
      &cd205(19)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd205h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(18) :: acd205
      complex(ki) :: brack
      acd205(1)=k1(iv1)
      acd205(2)=abb205(10)
      acd205(3)=k7(iv1)
      acd205(4)=abb205(15)
      acd205(5)=spvak1k2(iv1)
      acd205(6)=abb205(8)
      acd205(7)=spvak1k7(iv1)
      acd205(8)=abb205(13)
      acd205(9)=spvak7k1(iv1)
      acd205(10)=abb205(9)
      acd205(11)=spvak7k2(iv1)
      acd205(12)=abb205(16)
      acd205(13)=acd205(2)*acd205(1)
      acd205(14)=acd205(4)*acd205(3)
      acd205(15)=acd205(6)*acd205(5)
      acd205(16)=acd205(8)*acd205(7)
      acd205(17)=acd205(10)*acd205(9)
      acd205(18)=acd205(12)*acd205(11)
      brack=acd205(13)+acd205(14)+acd205(15)+acd205(16)+acd205(17)+acd205(18)
   end function brack_2
!---#] function brack_2:
!---#[ function derivative:
   function derivative(mu2,i1) result(numerator)
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_abbrevd205h0
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      complex(ki) :: numerator
      complex(ki) :: loc
      integer :: t1
      integer :: deg
      complex(ki), dimension(4), parameter :: Q = (/ (0.0_ki,0.0_ki),(0.0_ki,0.&
      &0_ki),(0.0_ki,0.0_ki),(0.0_ki,0.0_ki)/)
      qshift = -k3+k2-k6-k5-k4
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
!---#[ subroutine reconstruct_d205:
   subroutine     reconstruct_d205(coeffs)
      use p8_cbarc_epnemumnmubarg_groups, only: tensrec_info_group0
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group0), intent(out) :: coeffs
      ! rank 1 case :
      !---[# reconstruct coeffs%coeffs_205:
      coeffs%coeffs_205%c0 = derivative(czip)
      coeffs%coeffs_205%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_205%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_205%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_205%c1(4,1) = -derivative(czip,4)
      !---#] reconstruct coeffs%coeffs_205:
   end subroutine reconstruct_d205
!---#] subroutine reconstruct_d205:
end module     p8_cbarc_epnemumnmubarg_d205h0l1d
