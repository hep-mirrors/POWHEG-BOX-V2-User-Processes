module     p0_dbard_epnemumnmubarg_d465h5l1d
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p0_dbard_epnemumnmubarg/helicity5d465h5l1d.f90
   ! generator: buildfortran_d.py
   use p0_dbard_epnemumnmubarg_config, only: ki
   use p0_dbard_epnemumnmubarg_util, only: cond, d => metric_tensor
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
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd465h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(36) :: acd465
      complex(ki) :: brack
      acd465(1)=dotproduct(k1,qshift)
      acd465(2)=abb465(13)
      acd465(3)=dotproduct(k2,qshift)
      acd465(4)=abb465(21)
      acd465(5)=dotproduct(k3,qshift)
      acd465(6)=abb465(16)
      acd465(7)=dotproduct(k4,qshift)
      acd465(8)=abb465(25)
      acd465(9)=dotproduct(k5,qshift)
      acd465(10)=dotproduct(k6,qshift)
      acd465(11)=dotproduct(qshift,spvak1k3)
      acd465(12)=abb465(10)
      acd465(13)=dotproduct(qshift,spvak1k4)
      acd465(14)=abb465(15)
      acd465(15)=dotproduct(qshift,spvak4k1)
      acd465(16)=abb465(12)
      acd465(17)=dotproduct(qshift,spvak4k3)
      acd465(18)=abb465(14)
      acd465(19)=dotproduct(qshift,spvak5k2)
      acd465(20)=abb465(8)
      acd465(21)=dotproduct(qshift,spvak5k6)
      acd465(22)=abb465(9)
      acd465(23)=dotproduct(qshift,spvak7k2)
      acd465(24)=abb465(11)
      acd465(25)=abb465(18)
      acd465(26)=acd465(10)+acd465(9)-acd465(3)
      acd465(26)=acd465(4)*acd465(26)
      acd465(27)=-acd465(2)*acd465(1)
      acd465(28)=-acd465(6)*acd465(5)
      acd465(29)=-acd465(8)*acd465(7)
      acd465(30)=-acd465(12)*acd465(11)
      acd465(31)=-acd465(14)*acd465(13)
      acd465(32)=-acd465(16)*acd465(15)
      acd465(33)=-acd465(18)*acd465(17)
      acd465(34)=-acd465(20)*acd465(19)
      acd465(35)=-acd465(22)*acd465(21)
      acd465(36)=-acd465(24)*acd465(23)
      brack=acd465(25)+acd465(26)+acd465(27)+acd465(28)+acd465(29)+acd465(30)+a&
      &cd465(31)+acd465(32)+acd465(33)+acd465(34)+acd465(35)+acd465(36)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd465h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(35) :: acd465
      complex(ki) :: brack
      acd465(1)=k1(iv1)
      acd465(2)=abb465(13)
      acd465(3)=k2(iv1)
      acd465(4)=abb465(21)
      acd465(5)=k3(iv1)
      acd465(6)=abb465(16)
      acd465(7)=k4(iv1)
      acd465(8)=abb465(25)
      acd465(9)=k5(iv1)
      acd465(10)=k6(iv1)
      acd465(11)=spvak1k3(iv1)
      acd465(12)=abb465(10)
      acd465(13)=spvak1k4(iv1)
      acd465(14)=abb465(15)
      acd465(15)=spvak4k1(iv1)
      acd465(16)=abb465(12)
      acd465(17)=spvak4k3(iv1)
      acd465(18)=abb465(14)
      acd465(19)=spvak5k2(iv1)
      acd465(20)=abb465(8)
      acd465(21)=spvak5k6(iv1)
      acd465(22)=abb465(9)
      acd465(23)=spvak7k2(iv1)
      acd465(24)=abb465(11)
      acd465(25)=acd465(10)+acd465(9)-acd465(3)
      acd465(25)=acd465(4)*acd465(25)
      acd465(26)=-acd465(2)*acd465(1)
      acd465(27)=-acd465(6)*acd465(5)
      acd465(28)=-acd465(8)*acd465(7)
      acd465(29)=-acd465(12)*acd465(11)
      acd465(30)=-acd465(14)*acd465(13)
      acd465(31)=-acd465(16)*acd465(15)
      acd465(32)=-acd465(18)*acd465(17)
      acd465(33)=-acd465(20)*acd465(19)
      acd465(34)=-acd465(22)*acd465(21)
      acd465(35)=-acd465(24)*acd465(23)
      brack=acd465(25)+acd465(26)+acd465(27)+acd465(28)+acd465(29)+acd465(30)+a&
      &cd465(31)+acd465(32)+acd465(33)+acd465(34)+acd465(35)
   end function brack_2
!---#] function brack_2:
!---#[ function derivative:
   function derivative(mu2,i1) result(numerator)
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd465h5
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      complex(ki) :: numerator
      complex(ki) :: loc
      integer :: t1
      integer :: deg
      complex(ki), dimension(4), parameter :: Q = (/ (0.0_ki,0.0_ki),(0.0_ki,0.&
      &0_ki),(0.0_ki,0.0_ki),(0.0_ki,0.0_ki)/)
      qshift = -k7-k6-k5
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
      use p0_dbard_epnemumnmubarg_groups, only: tensrec_info_group2
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group2), intent(out) :: coeffs
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
end module     p0_dbard_epnemumnmubarg_d465h5l1d
