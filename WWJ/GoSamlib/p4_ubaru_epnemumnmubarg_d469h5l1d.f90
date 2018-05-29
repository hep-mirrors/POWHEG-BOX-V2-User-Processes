module     p4_ubaru_epnemumnmubarg_d469h5l1d
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p4_ubaru_epnemumnmubarg/helicity5d469h5l1d.f90
   ! generator: buildfortran_d.py
   use p4_ubaru_epnemumnmubarg_config, only: ki
   use p4_ubaru_epnemumnmubarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d469
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd469h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(36) :: acd469
      complex(ki) :: brack
      acd469(1)=dotproduct(k1,qshift)
      acd469(2)=abb469(17)
      acd469(3)=dotproduct(k2,qshift)
      acd469(4)=abb469(23)
      acd469(5)=dotproduct(k3,qshift)
      acd469(6)=dotproduct(k4,qshift)
      acd469(7)=dotproduct(k5,qshift)
      acd469(8)=abb469(19)
      acd469(9)=dotproduct(k6,qshift)
      acd469(10)=abb469(11)
      acd469(11)=dotproduct(qshift,spvak1k5)
      acd469(12)=abb469(12)
      acd469(13)=dotproduct(qshift,spvak1k6)
      acd469(14)=abb469(16)
      acd469(15)=dotproduct(qshift,spvak4k2)
      acd469(16)=abb469(8)
      acd469(17)=dotproduct(qshift,spvak4k3)
      acd469(18)=abb469(10)
      acd469(19)=dotproduct(qshift,spvak5k1)
      acd469(20)=abb469(14)
      acd469(21)=dotproduct(qshift,spvak5k6)
      acd469(22)=abb469(15)
      acd469(23)=dotproduct(qshift,spvak7k2)
      acd469(24)=abb469(13)
      acd469(25)=abb469(9)
      acd469(26)=acd469(6)+acd469(5)-acd469(3)
      acd469(26)=acd469(4)*acd469(26)
      acd469(27)=-acd469(2)*acd469(1)
      acd469(28)=-acd469(8)*acd469(7)
      acd469(29)=-acd469(10)*acd469(9)
      acd469(30)=-acd469(12)*acd469(11)
      acd469(31)=-acd469(14)*acd469(13)
      acd469(32)=-acd469(16)*acd469(15)
      acd469(33)=-acd469(18)*acd469(17)
      acd469(34)=-acd469(20)*acd469(19)
      acd469(35)=-acd469(22)*acd469(21)
      acd469(36)=-acd469(24)*acd469(23)
      brack=acd469(25)+acd469(26)+acd469(27)+acd469(28)+acd469(29)+acd469(30)+a&
      &cd469(31)+acd469(32)+acd469(33)+acd469(34)+acd469(35)+acd469(36)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd469h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(35) :: acd469
      complex(ki) :: brack
      acd469(1)=k1(iv1)
      acd469(2)=abb469(17)
      acd469(3)=k2(iv1)
      acd469(4)=abb469(23)
      acd469(5)=k3(iv1)
      acd469(6)=k4(iv1)
      acd469(7)=k5(iv1)
      acd469(8)=abb469(19)
      acd469(9)=k6(iv1)
      acd469(10)=abb469(11)
      acd469(11)=spvak1k5(iv1)
      acd469(12)=abb469(12)
      acd469(13)=spvak1k6(iv1)
      acd469(14)=abb469(16)
      acd469(15)=spvak4k2(iv1)
      acd469(16)=abb469(8)
      acd469(17)=spvak4k3(iv1)
      acd469(18)=abb469(10)
      acd469(19)=spvak5k1(iv1)
      acd469(20)=abb469(14)
      acd469(21)=spvak5k6(iv1)
      acd469(22)=abb469(15)
      acd469(23)=spvak7k2(iv1)
      acd469(24)=abb469(13)
      acd469(25)=acd469(6)+acd469(5)-acd469(3)
      acd469(25)=acd469(4)*acd469(25)
      acd469(26)=-acd469(2)*acd469(1)
      acd469(27)=-acd469(8)*acd469(7)
      acd469(28)=-acd469(10)*acd469(9)
      acd469(29)=-acd469(12)*acd469(11)
      acd469(30)=-acd469(14)*acd469(13)
      acd469(31)=-acd469(16)*acd469(15)
      acd469(32)=-acd469(18)*acd469(17)
      acd469(33)=-acd469(20)*acd469(19)
      acd469(34)=-acd469(22)*acd469(21)
      acd469(35)=-acd469(24)*acd469(23)
      brack=acd469(25)+acd469(26)+acd469(27)+acd469(28)+acd469(29)+acd469(30)+a&
      &cd469(31)+acd469(32)+acd469(33)+acd469(34)+acd469(35)
   end function brack_2
!---#] function brack_2:
!---#[ function derivative:
   function derivative(mu2,i1) result(numerator)
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd469h5
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      complex(ki) :: numerator
      complex(ki) :: loc
      integer :: t1
      integer :: deg
      complex(ki), dimension(4), parameter :: Q = (/ (0.0_ki,0.0_ki),(0.0_ki,0.&
      &0_ki),(0.0_ki,0.0_ki),(0.0_ki,0.0_ki)/)
      qshift = -k3-k7-k4
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
!---#[ subroutine reconstruct_d469:
   subroutine     reconstruct_d469(coeffs)
      use p4_ubaru_epnemumnmubarg_groups, only: tensrec_info_group1
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group1), intent(out) :: coeffs
      ! rank 1 case :
      !---[# reconstruct coeffs%coeffs_469:
      coeffs%coeffs_469%c0 = derivative(czip)
      coeffs%coeffs_469%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_469%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_469%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_469%c1(4,1) = -derivative(czip,4)
      !---#] reconstruct coeffs%coeffs_469:
   end subroutine reconstruct_d469
!---#] subroutine reconstruct_d469:
end module     p4_ubaru_epnemumnmubarg_d469h5l1d
