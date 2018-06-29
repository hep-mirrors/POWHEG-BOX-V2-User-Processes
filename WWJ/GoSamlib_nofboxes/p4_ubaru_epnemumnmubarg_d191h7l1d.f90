module     p4_ubaru_epnemumnmubarg_d191h7l1d
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p4_ubaru_epnemumnmubarg/helicity7d191h7l1d.f90
   ! generator: buildfortran_d.py
   use p4_ubaru_epnemumnmubarg_config, only: ki
   use p4_ubaru_epnemumnmubarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d191
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd191h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(15) :: acd191
      complex(ki) :: brack
      acd191(1)=dotproduct(k1,qshift)
      acd191(2)=abb191(11)
      acd191(3)=dotproduct(k2,qshift)
      acd191(4)=abb191(9)
      acd191(5)=dotproduct(k7,qshift)
      acd191(6)=dotproduct(qshift,qshift)
      acd191(7)=dotproduct(qshift,spvak1k2)
      acd191(8)=abb191(10)
      acd191(9)=dotproduct(qshift,spvak7k2)
      acd191(10)=abb191(12)
      acd191(11)=abb191(8)
      acd191(12)=-acd191(6)-acd191(5)-acd191(1)
      acd191(12)=acd191(2)*acd191(12)
      acd191(13)=-acd191(4)*acd191(3)
      acd191(14)=-acd191(8)*acd191(7)
      acd191(15)=-acd191(10)*acd191(9)
      brack=acd191(11)+acd191(12)+acd191(13)+acd191(14)+acd191(15)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd191h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(14) :: acd191
      complex(ki) :: brack
      acd191(1)=k1(iv1)
      acd191(2)=abb191(11)
      acd191(3)=k2(iv1)
      acd191(4)=abb191(9)
      acd191(5)=k7(iv1)
      acd191(6)=qshift(iv1)
      acd191(7)=spvak1k2(iv1)
      acd191(8)=abb191(10)
      acd191(9)=spvak7k2(iv1)
      acd191(10)=abb191(12)
      acd191(11)=2.0_ki*acd191(6)+acd191(5)+acd191(1)
      acd191(11)=acd191(2)*acd191(11)
      acd191(12)=acd191(4)*acd191(3)
      acd191(13)=acd191(8)*acd191(7)
      acd191(14)=acd191(10)*acd191(9)
      brack=acd191(11)+acd191(12)+acd191(13)+acd191(14)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd191h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(3) :: acd191
      complex(ki) :: brack
      acd191(1)=d(iv1,iv2)
      acd191(2)=abb191(11)
      brack=-2.0_ki*acd191(2)*acd191(1)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd191h7
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      integer, intent(in), optional :: i2
      complex(ki) :: numerator
      complex(ki) :: loc
      integer :: t1
      integer :: deg
      complex(ki), dimension(4), parameter :: Q = (/ (0.0_ki,0.0_ki),(0.0_ki,0.&
      &0_ki),(0.0_ki,0.0_ki),(0.0_ki,0.0_ki)/)
      qshift = k2
      numerator = 0.0_ki
      deg = 0
      if(present(i1)) then
          iv1=i1
          deg=1
      else
          iv1=1
      end if
      if(present(i2)) then
          iv2=i2
          deg=2
      else
          iv2=1
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
      if(deg.eq.2) then
         numerator = cond(epspow.eq.t1,brack_3,Q,mu2)
         return
      end if
   end function derivative
!---#] function derivative:
!---#[ subroutine reconstruct_d191:
   subroutine     reconstruct_d191(coeffs)
      use p4_ubaru_epnemumnmubarg_groups, only: tensrec_info_group1
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group1), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_191:
      coeffs%coeffs_191%c0 = derivative(czip)
      coeffs%coeffs_191%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_191%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_191%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_191%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_191%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_191%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_191%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_191%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_191%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_191%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_191%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_191%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_191%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_191%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_191:
   end subroutine reconstruct_d191
!---#] subroutine reconstruct_d191:
end module     p4_ubaru_epnemumnmubarg_d191h7l1d
