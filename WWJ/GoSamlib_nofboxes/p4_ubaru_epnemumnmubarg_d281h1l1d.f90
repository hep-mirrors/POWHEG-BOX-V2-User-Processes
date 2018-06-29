module     p4_ubaru_epnemumnmubarg_d281h1l1d
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p4_ubaru_epnemumnmubarg/helicity1d281h1l1d.f90
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
   public :: derivative , reconstruct_d281
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd281h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(26) :: acd281
      complex(ki) :: brack
      acd281(1)=dotproduct(k2,qshift)
      acd281(2)=dotproduct(qshift,spvak5k6)
      acd281(3)=abb281(16)
      acd281(4)=dotproduct(k3,qshift)
      acd281(5)=dotproduct(k4,qshift)
      acd281(6)=dotproduct(k5,qshift)
      acd281(7)=abb281(14)
      acd281(8)=dotproduct(k6,qshift)
      acd281(9)=dotproduct(qshift,qshift)
      acd281(10)=abb281(12)
      acd281(11)=dotproduct(qshift,spvak1k2)
      acd281(12)=abb281(10)
      acd281(13)=dotproduct(qshift,spvak1k3)
      acd281(14)=abb281(11)
      acd281(15)=dotproduct(qshift,spvak4k2)
      acd281(16)=abb281(9)
      acd281(17)=dotproduct(qshift,spvak4k3)
      acd281(18)=abb281(17)
      acd281(19)=abb281(15)
      acd281(20)=dotproduct(qshift,spvak1k6)
      acd281(21)=abb281(8)
      acd281(22)=-acd281(5)+acd281(1)-acd281(4)
      acd281(22)=acd281(22)*acd281(3)
      acd281(23)=acd281(12)*acd281(11)
      acd281(24)=acd281(14)*acd281(13)
      acd281(25)=acd281(16)*acd281(15)
      acd281(26)=acd281(18)*acd281(17)
      acd281(22)=acd281(22)-acd281(19)+acd281(26)+acd281(25)+acd281(24)+acd281(&
      &23)
      acd281(22)=acd281(2)*acd281(22)
      acd281(23)=-acd281(8)-acd281(6)
      acd281(23)=acd281(7)*acd281(23)
      acd281(24)=acd281(10)*acd281(9)
      acd281(25)=-acd281(21)*acd281(20)
      brack=acd281(22)+acd281(23)+acd281(24)+acd281(25)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd281h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(35) :: acd281
      complex(ki) :: brack
      acd281(1)=k2(iv1)
      acd281(2)=dotproduct(qshift,spvak5k6)
      acd281(3)=abb281(16)
      acd281(4)=k3(iv1)
      acd281(5)=k4(iv1)
      acd281(6)=k5(iv1)
      acd281(7)=abb281(14)
      acd281(8)=k6(iv1)
      acd281(9)=qshift(iv1)
      acd281(10)=abb281(12)
      acd281(11)=spvak5k6(iv1)
      acd281(12)=dotproduct(k2,qshift)
      acd281(13)=dotproduct(k3,qshift)
      acd281(14)=dotproduct(k4,qshift)
      acd281(15)=dotproduct(qshift,spvak1k2)
      acd281(16)=abb281(10)
      acd281(17)=dotproduct(qshift,spvak1k3)
      acd281(18)=abb281(11)
      acd281(19)=dotproduct(qshift,spvak4k2)
      acd281(20)=abb281(9)
      acd281(21)=dotproduct(qshift,spvak4k3)
      acd281(22)=abb281(17)
      acd281(23)=abb281(15)
      acd281(24)=spvak1k2(iv1)
      acd281(25)=spvak1k3(iv1)
      acd281(26)=spvak1k6(iv1)
      acd281(27)=abb281(8)
      acd281(28)=spvak4k2(iv1)
      acd281(29)=spvak4k3(iv1)
      acd281(30)=-acd281(22)*acd281(29)
      acd281(31)=-acd281(20)*acd281(28)
      acd281(32)=-acd281(18)*acd281(25)
      acd281(33)=-acd281(16)*acd281(24)
      acd281(34)=-acd281(1)+acd281(5)+acd281(4)
      acd281(34)=acd281(3)*acd281(34)
      acd281(30)=acd281(34)+acd281(33)+acd281(32)+acd281(30)+acd281(31)
      acd281(30)=acd281(2)*acd281(30)
      acd281(31)=-acd281(22)*acd281(21)
      acd281(32)=-acd281(20)*acd281(19)
      acd281(33)=-acd281(18)*acd281(17)
      acd281(34)=-acd281(16)*acd281(15)
      acd281(35)=-acd281(12)+acd281(14)+acd281(13)
      acd281(35)=acd281(3)*acd281(35)
      acd281(31)=acd281(35)+acd281(34)+acd281(33)+acd281(32)+acd281(23)+acd281(&
      &31)
      acd281(31)=acd281(11)*acd281(31)
      acd281(32)=acd281(26)*acd281(27)
      acd281(33)=acd281(9)*acd281(10)
      acd281(34)=acd281(8)+acd281(6)
      acd281(34)=acd281(7)*acd281(34)
      brack=acd281(30)+acd281(31)+acd281(32)-2.0_ki*acd281(33)+acd281(34)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd281h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(29) :: acd281
      complex(ki) :: brack
      acd281(1)=d(iv1,iv2)
      acd281(2)=abb281(12)
      acd281(3)=k2(iv1)
      acd281(4)=spvak5k6(iv2)
      acd281(5)=abb281(16)
      acd281(6)=k2(iv2)
      acd281(7)=spvak5k6(iv1)
      acd281(8)=k3(iv1)
      acd281(9)=k3(iv2)
      acd281(10)=k4(iv1)
      acd281(11)=k4(iv2)
      acd281(12)=spvak1k2(iv2)
      acd281(13)=abb281(10)
      acd281(14)=spvak1k3(iv2)
      acd281(15)=abb281(11)
      acd281(16)=spvak4k2(iv2)
      acd281(17)=abb281(9)
      acd281(18)=spvak4k3(iv2)
      acd281(19)=abb281(17)
      acd281(20)=spvak1k2(iv1)
      acd281(21)=spvak1k3(iv1)
      acd281(22)=spvak4k2(iv1)
      acd281(23)=spvak4k3(iv1)
      acd281(24)=acd281(19)*acd281(18)
      acd281(25)=acd281(17)*acd281(16)
      acd281(26)=acd281(15)*acd281(14)
      acd281(27)=acd281(13)*acd281(12)
      acd281(28)=acd281(6)-acd281(11)-acd281(9)
      acd281(28)=acd281(5)*acd281(28)
      acd281(24)=acd281(28)+acd281(27)+acd281(26)+acd281(24)+acd281(25)
      acd281(24)=acd281(7)*acd281(24)
      acd281(25)=acd281(19)*acd281(23)
      acd281(26)=acd281(17)*acd281(22)
      acd281(27)=acd281(15)*acd281(21)
      acd281(28)=acd281(13)*acd281(20)
      acd281(29)=acd281(3)-acd281(10)-acd281(8)
      acd281(29)=acd281(5)*acd281(29)
      acd281(25)=acd281(29)+acd281(28)+acd281(27)+acd281(25)+acd281(26)
      acd281(25)=acd281(4)*acd281(25)
      acd281(26)=acd281(1)*acd281(2)
      brack=acd281(24)+acd281(25)+2.0_ki*acd281(26)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd281h1
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
      qshift = -k3+k2-k6-k5-k4
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
!---#[ subroutine reconstruct_d281:
   subroutine     reconstruct_d281(coeffs)
      use p4_ubaru_epnemumnmubarg_groups, only: tensrec_info_group0
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group0), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_281:
      coeffs%coeffs_281%c0 = derivative(czip)
      coeffs%coeffs_281%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_281%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_281%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_281%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_281%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_281%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_281%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_281%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_281%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_281%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_281%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_281%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_281%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_281%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_281:
   end subroutine reconstruct_d281
!---#] subroutine reconstruct_d281:
end module     p4_ubaru_epnemumnmubarg_d281h1l1d
