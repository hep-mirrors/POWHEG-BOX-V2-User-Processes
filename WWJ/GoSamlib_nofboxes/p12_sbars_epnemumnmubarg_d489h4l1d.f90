module     p12_sbars_epnemumnmubarg_d489h4l1d
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p12_sbars_epnemumnmubarg/helicity4d489h4l1d.f90
   ! generator: buildfortran_d.py
   use p12_sbars_epnemumnmubarg_config, only: ki
   use p12_sbars_epnemumnmubarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d489
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd489h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(20) :: acd489
      complex(ki) :: brack
      acd489(1)=dotproduct(k1,qshift)
      acd489(2)=dotproduct(qshift,spvak7k2)
      acd489(3)=abb489(20)
      acd489(4)=abb489(9)
      acd489(5)=dotproduct(k7,qshift)
      acd489(6)=abb489(19)
      acd489(7)=abb489(17)
      acd489(8)=dotproduct(qshift,qshift)
      acd489(9)=abb489(10)
      acd489(10)=abb489(12)
      acd489(11)=dotproduct(qshift,spvak7k1)
      acd489(12)=abb489(11)
      acd489(13)=abb489(16)
      acd489(14)=abb489(8)
      acd489(15)=abb489(13)
      acd489(16)=acd489(11)*acd489(12)
      acd489(17)=acd489(5)*acd489(6)
      acd489(18)=acd489(1)*acd489(3)
      acd489(19)=acd489(2)*acd489(10)
      acd489(16)=acd489(19)+acd489(18)+acd489(17)-acd489(13)+acd489(16)
      acd489(16)=acd489(2)*acd489(16)
      acd489(17)=acd489(8)*acd489(9)
      acd489(18)=-acd489(11)*acd489(14)
      acd489(19)=-acd489(5)*acd489(7)
      acd489(20)=-acd489(1)*acd489(4)
      brack=acd489(15)+acd489(16)+acd489(17)+acd489(18)+acd489(19)+acd489(20)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd489h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(24) :: acd489
      complex(ki) :: brack
      acd489(1)=k1(iv1)
      acd489(2)=dotproduct(qshift,spvak7k2)
      acd489(3)=abb489(20)
      acd489(4)=abb489(9)
      acd489(5)=k7(iv1)
      acd489(6)=abb489(19)
      acd489(7)=abb489(17)
      acd489(8)=qshift(iv1)
      acd489(9)=abb489(10)
      acd489(10)=spvak7k2(iv1)
      acd489(11)=dotproduct(k1,qshift)
      acd489(12)=dotproduct(k7,qshift)
      acd489(13)=abb489(12)
      acd489(14)=dotproduct(qshift,spvak7k1)
      acd489(15)=abb489(11)
      acd489(16)=abb489(16)
      acd489(17)=spvak7k1(iv1)
      acd489(18)=abb489(8)
      acd489(19)=acd489(11)*acd489(3)
      acd489(20)=acd489(12)*acd489(6)
      acd489(21)=acd489(13)*acd489(2)
      acd489(22)=acd489(14)*acd489(15)
      acd489(19)=-acd489(16)+acd489(22)+2.0_ki*acd489(21)+acd489(20)+acd489(19)
      acd489(19)=acd489(10)*acd489(19)
      acd489(20)=acd489(3)*acd489(1)
      acd489(21)=acd489(6)*acd489(5)
      acd489(22)=acd489(17)*acd489(15)
      acd489(20)=acd489(22)+acd489(20)+acd489(21)
      acd489(20)=acd489(2)*acd489(20)
      acd489(21)=-acd489(4)*acd489(1)
      acd489(22)=-acd489(7)*acd489(5)
      acd489(23)=acd489(9)*acd489(8)
      acd489(24)=-acd489(18)*acd489(17)
      brack=acd489(19)+acd489(20)+acd489(21)+acd489(22)+2.0_ki*acd489(23)+acd48&
      &9(24)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd489h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(18) :: acd489
      complex(ki) :: brack
      acd489(1)=d(iv1,iv2)
      acd489(2)=abb489(10)
      acd489(3)=k1(iv1)
      acd489(4)=spvak7k2(iv2)
      acd489(5)=abb489(20)
      acd489(6)=k1(iv2)
      acd489(7)=spvak7k2(iv1)
      acd489(8)=k7(iv1)
      acd489(9)=abb489(19)
      acd489(10)=k7(iv2)
      acd489(11)=abb489(12)
      acd489(12)=spvak7k1(iv2)
      acd489(13)=abb489(11)
      acd489(14)=spvak7k1(iv1)
      acd489(15)=acd489(6)*acd489(5)
      acd489(16)=acd489(10)*acd489(9)
      acd489(17)=acd489(11)*acd489(4)
      acd489(18)=acd489(12)*acd489(13)
      acd489(15)=acd489(18)+2.0_ki*acd489(17)+acd489(16)+acd489(15)
      acd489(15)=acd489(7)*acd489(15)
      acd489(16)=acd489(3)*acd489(5)
      acd489(17)=acd489(8)*acd489(9)
      acd489(18)=acd489(14)*acd489(13)
      acd489(16)=acd489(18)+acd489(17)+acd489(16)
      acd489(16)=acd489(4)*acd489(16)
      acd489(17)=acd489(2)*acd489(1)
      brack=acd489(15)+acd489(16)+2.0_ki*acd489(17)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd489h4
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
      qshift = -k3-k7-k6-k5-k4
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
!---#[ subroutine reconstruct_d489:
   subroutine     reconstruct_d489(coeffs)
      use p12_sbars_epnemumnmubarg_groups, only: tensrec_info_group3
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group3), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_489:
      coeffs%coeffs_489%c0 = derivative(czip)
      coeffs%coeffs_489%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_489%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_489%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_489%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_489%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_489%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_489%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_489%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_489%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_489%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_489%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_489%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_489%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_489%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_489:
   end subroutine reconstruct_d489
!---#] subroutine reconstruct_d489:
end module     p12_sbars_epnemumnmubarg_d489h4l1d
