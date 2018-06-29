module     p0_dbard_epnemumnmubarg_d285h1l1d
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p0_dbard_epnemumnmubarg/helicity1d285h1l1d.f90
   ! generator: buildfortran_d.py
   use p0_dbard_epnemumnmubarg_config, only: ki
   use p0_dbard_epnemumnmubarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d285
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd285h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(26) :: acd285
      complex(ki) :: brack
      acd285(1)=dotproduct(k2,qshift)
      acd285(2)=dotproduct(qshift,spvak4k3)
      acd285(3)=abb285(16)
      acd285(4)=dotproduct(k3,qshift)
      acd285(5)=abb285(14)
      acd285(6)=dotproduct(k4,qshift)
      acd285(7)=dotproduct(k5,qshift)
      acd285(8)=dotproduct(k6,qshift)
      acd285(9)=dotproduct(qshift,qshift)
      acd285(10)=abb285(12)
      acd285(11)=dotproduct(qshift,spvak1k2)
      acd285(12)=abb285(10)
      acd285(13)=dotproduct(qshift,spvak1k6)
      acd285(14)=abb285(11)
      acd285(15)=dotproduct(qshift,spvak5k2)
      acd285(16)=abb285(9)
      acd285(17)=dotproduct(qshift,spvak5k6)
      acd285(18)=abb285(17)
      acd285(19)=abb285(15)
      acd285(20)=dotproduct(qshift,spvak1k3)
      acd285(21)=abb285(8)
      acd285(22)=-acd285(8)-acd285(7)+acd285(1)
      acd285(22)=acd285(22)*acd285(3)
      acd285(23)=acd285(12)*acd285(11)
      acd285(24)=acd285(14)*acd285(13)
      acd285(25)=acd285(16)*acd285(15)
      acd285(26)=acd285(18)*acd285(17)
      acd285(22)=acd285(22)-acd285(19)+acd285(26)+acd285(25)+acd285(24)+acd285(&
      &23)
      acd285(22)=acd285(2)*acd285(22)
      acd285(23)=-acd285(6)-acd285(4)
      acd285(23)=acd285(5)*acd285(23)
      acd285(24)=acd285(10)*acd285(9)
      acd285(25)=-acd285(21)*acd285(20)
      brack=acd285(22)+acd285(23)+acd285(24)+acd285(25)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd285h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(35) :: acd285
      complex(ki) :: brack
      acd285(1)=k2(iv1)
      acd285(2)=dotproduct(qshift,spvak4k3)
      acd285(3)=abb285(16)
      acd285(4)=k3(iv1)
      acd285(5)=abb285(14)
      acd285(6)=k4(iv1)
      acd285(7)=k5(iv1)
      acd285(8)=k6(iv1)
      acd285(9)=qshift(iv1)
      acd285(10)=abb285(12)
      acd285(11)=spvak4k3(iv1)
      acd285(12)=dotproduct(k2,qshift)
      acd285(13)=dotproduct(k5,qshift)
      acd285(14)=dotproduct(k6,qshift)
      acd285(15)=dotproduct(qshift,spvak1k2)
      acd285(16)=abb285(10)
      acd285(17)=dotproduct(qshift,spvak1k6)
      acd285(18)=abb285(11)
      acd285(19)=dotproduct(qshift,spvak5k2)
      acd285(20)=abb285(9)
      acd285(21)=dotproduct(qshift,spvak5k6)
      acd285(22)=abb285(17)
      acd285(23)=abb285(15)
      acd285(24)=spvak1k2(iv1)
      acd285(25)=spvak1k3(iv1)
      acd285(26)=abb285(8)
      acd285(27)=spvak1k6(iv1)
      acd285(28)=spvak5k2(iv1)
      acd285(29)=spvak5k6(iv1)
      acd285(30)=acd285(22)*acd285(29)
      acd285(31)=acd285(20)*acd285(28)
      acd285(32)=acd285(18)*acd285(27)
      acd285(33)=acd285(16)*acd285(24)
      acd285(34)=acd285(1)-acd285(8)-acd285(7)
      acd285(34)=acd285(3)*acd285(34)
      acd285(30)=acd285(34)+acd285(33)+acd285(32)+acd285(30)+acd285(31)
      acd285(30)=acd285(2)*acd285(30)
      acd285(31)=acd285(22)*acd285(21)
      acd285(32)=acd285(20)*acd285(19)
      acd285(33)=acd285(18)*acd285(17)
      acd285(34)=acd285(16)*acd285(15)
      acd285(35)=acd285(12)-acd285(14)-acd285(13)
      acd285(35)=acd285(3)*acd285(35)
      acd285(31)=acd285(35)+acd285(34)+acd285(33)+acd285(32)-acd285(23)+acd285(&
      &31)
      acd285(31)=acd285(11)*acd285(31)
      acd285(32)=-acd285(25)*acd285(26)
      acd285(33)=acd285(9)*acd285(10)
      acd285(34)=-acd285(6)-acd285(4)
      acd285(34)=acd285(5)*acd285(34)
      brack=acd285(30)+acd285(31)+acd285(32)+2.0_ki*acd285(33)+acd285(34)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd285h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(29) :: acd285
      complex(ki) :: brack
      acd285(1)=d(iv1,iv2)
      acd285(2)=abb285(12)
      acd285(3)=k2(iv1)
      acd285(4)=spvak4k3(iv2)
      acd285(5)=abb285(16)
      acd285(6)=k2(iv2)
      acd285(7)=spvak4k3(iv1)
      acd285(8)=k5(iv1)
      acd285(9)=k5(iv2)
      acd285(10)=k6(iv1)
      acd285(11)=k6(iv2)
      acd285(12)=spvak1k2(iv2)
      acd285(13)=abb285(10)
      acd285(14)=spvak1k6(iv2)
      acd285(15)=abb285(11)
      acd285(16)=spvak5k2(iv2)
      acd285(17)=abb285(9)
      acd285(18)=spvak5k6(iv2)
      acd285(19)=abb285(17)
      acd285(20)=spvak1k2(iv1)
      acd285(21)=spvak1k6(iv1)
      acd285(22)=spvak5k2(iv1)
      acd285(23)=spvak5k6(iv1)
      acd285(24)=acd285(19)*acd285(18)
      acd285(25)=acd285(17)*acd285(16)
      acd285(26)=acd285(15)*acd285(14)
      acd285(27)=acd285(13)*acd285(12)
      acd285(28)=acd285(6)-acd285(11)-acd285(9)
      acd285(28)=acd285(5)*acd285(28)
      acd285(24)=acd285(28)+acd285(27)+acd285(26)+acd285(24)+acd285(25)
      acd285(24)=acd285(7)*acd285(24)
      acd285(25)=acd285(19)*acd285(23)
      acd285(26)=acd285(17)*acd285(22)
      acd285(27)=acd285(15)*acd285(21)
      acd285(28)=acd285(13)*acd285(20)
      acd285(29)=acd285(3)-acd285(10)-acd285(8)
      acd285(29)=acd285(5)*acd285(29)
      acd285(25)=acd285(29)+acd285(28)+acd285(27)+acd285(25)+acd285(26)
      acd285(25)=acd285(4)*acd285(25)
      acd285(26)=acd285(1)*acd285(2)
      brack=acd285(24)+acd285(25)+2.0_ki*acd285(26)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd285h1
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
      qshift = -k3-k6-k5-k4
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
!---#[ subroutine reconstruct_d285:
   subroutine     reconstruct_d285(coeffs)
      use p0_dbard_epnemumnmubarg_groups, only: tensrec_info_group3
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group3), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_285:
      coeffs%coeffs_285%c0 = derivative(czip)
      coeffs%coeffs_285%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_285%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_285%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_285%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_285%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_285%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_285%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_285%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_285%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_285%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_285%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_285%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_285%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_285%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_285:
   end subroutine reconstruct_d285
!---#] subroutine reconstruct_d285:
end module     p0_dbard_epnemumnmubarg_d285h1l1d
