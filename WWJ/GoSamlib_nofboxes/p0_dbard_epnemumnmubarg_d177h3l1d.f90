module     p0_dbard_epnemumnmubarg_d177h3l1d
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p0_dbard_epnemumnmubarg/helicity3d177h3l1d.f90
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
   public :: derivative , reconstruct_d177
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd177h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(12) :: acd177
      complex(ki) :: brack
      acd177(1)=dotproduct(k1,qshift)
      acd177(2)=abb177(12)
      acd177(3)=dotproduct(k2,qshift)
      acd177(4)=dotproduct(qshift,qshift)
      acd177(5)=dotproduct(qshift,spvak1k7)
      acd177(6)=abb177(8)
      acd177(7)=dotproduct(qshift,spvak2k7)
      acd177(8)=abb177(9)
      acd177(9)=abb177(10)
      acd177(10)=acd177(4)-acd177(1)+acd177(3)
      acd177(10)=acd177(2)*acd177(10)
      acd177(11)=-acd177(6)*acd177(5)
      acd177(12)=-acd177(8)*acd177(7)
      brack=acd177(9)+acd177(10)+acd177(11)+acd177(12)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd177h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(11) :: acd177
      complex(ki) :: brack
      acd177(1)=k1(iv1)
      acd177(2)=abb177(12)
      acd177(3)=k2(iv1)
      acd177(4)=qshift(iv1)
      acd177(5)=spvak1k7(iv1)
      acd177(6)=abb177(8)
      acd177(7)=spvak2k7(iv1)
      acd177(8)=abb177(9)
      acd177(9)=2.0_ki*acd177(4)-acd177(1)+acd177(3)
      acd177(9)=acd177(2)*acd177(9)
      acd177(10)=-acd177(6)*acd177(5)
      acd177(11)=-acd177(8)*acd177(7)
      brack=acd177(9)+acd177(10)+acd177(11)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd177h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(3) :: acd177
      complex(ki) :: brack
      acd177(1)=d(iv1,iv2)
      acd177(2)=abb177(12)
      brack=2.0_ki*acd177(2)*acd177(1)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd177h3
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
      qshift = -k2
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
!---#[ subroutine reconstruct_d177:
   subroutine     reconstruct_d177(coeffs)
      use p0_dbard_epnemumnmubarg_groups, only: tensrec_info_group3
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group3), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_177:
      coeffs%coeffs_177%c0 = derivative(czip)
      coeffs%coeffs_177%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_177%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_177%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_177%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_177%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_177%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_177%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_177%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_177%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_177%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_177%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_177%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_177%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_177%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_177:
   end subroutine reconstruct_d177
!---#] subroutine reconstruct_d177:
end module     p0_dbard_epnemumnmubarg_d177h3l1d
