module     p8_cbarc_epnemumnmubarg_d465h5l1d
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p8_cbarc_epnemumnmubarg/helicity5d465h5l1d.f90
   ! generator: buildfortran_d.py
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d465
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd465h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(22) :: acd465
      complex(ki) :: brack
      acd465(1)=dotproduct(k2,qshift)
      acd465(2)=abb465(27)
      acd465(3)=dotproduct(k3,qshift)
      acd465(4)=abb465(33)
      acd465(5)=dotproduct(k4,qshift)
      acd465(6)=abb465(34)
      acd465(7)=dotproduct(qshift,spvak2k3)
      acd465(8)=abb465(12)
      acd465(9)=dotproduct(qshift,spvak3k2)
      acd465(10)=abb465(11)
      acd465(11)=dotproduct(qshift,spvak4k2)
      acd465(12)=abb465(9)
      acd465(13)=dotproduct(qshift,spvak4k3)
      acd465(14)=abb465(10)
      acd465(15)=abb465(16)
      acd465(16)=-acd465(2)*acd465(1)
      acd465(17)=-acd465(4)*acd465(3)
      acd465(18)=-acd465(6)*acd465(5)
      acd465(19)=-acd465(8)*acd465(7)
      acd465(20)=-acd465(10)*acd465(9)
      acd465(21)=-acd465(12)*acd465(11)
      acd465(22)=-acd465(14)*acd465(13)
      brack=acd465(15)+acd465(16)+acd465(17)+acd465(18)+acd465(19)+acd465(20)+a&
      &cd465(21)+acd465(22)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd465h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(21) :: acd465
      complex(ki) :: brack
      acd465(1)=k2(iv1)
      acd465(2)=abb465(27)
      acd465(3)=k3(iv1)
      acd465(4)=abb465(33)
      acd465(5)=k4(iv1)
      acd465(6)=abb465(34)
      acd465(7)=spvak2k3(iv1)
      acd465(8)=abb465(12)
      acd465(9)=spvak3k2(iv1)
      acd465(10)=abb465(11)
      acd465(11)=spvak4k2(iv1)
      acd465(12)=abb465(9)
      acd465(13)=spvak4k3(iv1)
      acd465(14)=abb465(10)
      acd465(15)=-acd465(2)*acd465(1)
      acd465(16)=-acd465(4)*acd465(3)
      acd465(17)=-acd465(6)*acd465(5)
      acd465(18)=-acd465(8)*acd465(7)
      acd465(19)=-acd465(10)*acd465(9)
      acd465(20)=-acd465(12)*acd465(11)
      acd465(21)=-acd465(14)*acd465(13)
      brack=acd465(15)+acd465(16)+acd465(17)+acd465(18)+acd465(19)+acd465(20)+a&
      &cd465(21)
   end function brack_2
!---#] function brack_2:
!---#[ function derivative:
   function derivative(mu2,i1) result(numerator)
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_abbrevd465h5
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      complex(ki) :: numerator
      complex(ki) :: loc
      integer :: t1
      integer :: deg
      complex(ki), dimension(4), parameter :: Q = (/ (0.0_ki,0.0_ki),(0.0_ki,0.&
      &0_ki),(0.0_ki,0.0_ki),(0.0_ki,0.0_ki)/)
      qshift = k3-k2+k4
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
!---#[ subroutine reconstruct_d465:
   subroutine     reconstruct_d465(coeffs)
      use p8_cbarc_epnemumnmubarg_groups, only: tensrec_info_group0
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group0), intent(out) :: coeffs
      ! rank 1 case :
      !---[# reconstruct coeffs%coeffs_465:
      coeffs%coeffs_465%c0 = derivative(czip)
      coeffs%coeffs_465%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_465%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_465%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_465%c1(4,1) = -derivative(czip,4)
      !---#] reconstruct coeffs%coeffs_465:
   end subroutine reconstruct_d465
!---#] subroutine reconstruct_d465:
end module     p8_cbarc_epnemumnmubarg_d465h5l1d
