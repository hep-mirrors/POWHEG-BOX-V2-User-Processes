module     p12_sbars_epnemumnmubarg_d573h4l1d
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p12_sbars_epnemumnmubarg/helicity4d573h4l1d.f90
   ! generator: buildfortran_d.py
   use p12_sbars_epnemumnmubarg_config, only: ki
   use p12_sbars_epnemumnmubarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d573
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd573h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(22) :: acd573
      complex(ki) :: brack
      acd573(1)=dotproduct(k1,qshift)
      acd573(2)=dotproduct(qshift,spvak7k2)
      acd573(3)=abb573(15)
      acd573(4)=dotproduct(k2,qshift)
      acd573(5)=abb573(14)
      acd573(6)=abb573(8)
      acd573(7)=dotproduct(k7,qshift)
      acd573(8)=abb573(13)
      acd573(9)=dotproduct(qshift,qshift)
      acd573(10)=abb573(12)
      acd573(11)=abb573(9)
      acd573(12)=abb573(7)
      acd573(13)=dotproduct(qshift,spvak7k1)
      acd573(14)=abb573(6)
      acd573(15)=abb573(10)
      acd573(16)=abb573(11)
      acd573(17)=acd573(13)*acd573(14)
      acd573(18)=acd573(1)*acd573(3)
      acd573(19)=-acd573(9)*acd573(10)
      acd573(20)=acd573(7)*acd573(8)
      acd573(21)=acd573(4)*acd573(5)
      acd573(22)=acd573(2)*acd573(12)
      acd573(17)=acd573(22)+acd573(21)+acd573(20)+acd573(19)+acd573(18)-acd573(&
      &15)+acd573(17)
      acd573(17)=acd573(2)*acd573(17)
      acd573(18)=-acd573(4)-acd573(7)
      acd573(18)=acd573(6)*acd573(18)
      acd573(19)=-acd573(9)*acd573(11)
      brack=acd573(16)+acd573(17)+acd573(18)+acd573(19)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd573h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(28) :: acd573
      complex(ki) :: brack
      acd573(1)=k1(iv1)
      acd573(2)=dotproduct(qshift,spvak7k2)
      acd573(3)=abb573(15)
      acd573(4)=k2(iv1)
      acd573(5)=abb573(14)
      acd573(6)=abb573(8)
      acd573(7)=k7(iv1)
      acd573(8)=abb573(13)
      acd573(9)=qshift(iv1)
      acd573(10)=abb573(12)
      acd573(11)=abb573(9)
      acd573(12)=spvak7k2(iv1)
      acd573(13)=dotproduct(k1,qshift)
      acd573(14)=dotproduct(k2,qshift)
      acd573(15)=dotproduct(k7,qshift)
      acd573(16)=dotproduct(qshift,qshift)
      acd573(17)=abb573(7)
      acd573(18)=dotproduct(qshift,spvak7k1)
      acd573(19)=abb573(6)
      acd573(20)=abb573(10)
      acd573(21)=spvak7k1(iv1)
      acd573(22)=-acd573(13)*acd573(3)
      acd573(23)=-acd573(14)*acd573(5)
      acd573(24)=-acd573(15)*acd573(8)
      acd573(25)=acd573(16)*acd573(10)
      acd573(26)=2.0_ki*acd573(2)
      acd573(26)=-acd573(17)*acd573(26)
      acd573(27)=-acd573(18)*acd573(19)
      acd573(22)=acd573(20)+acd573(27)+acd573(26)+acd573(25)+acd573(24)+acd573(&
      &23)+acd573(22)
      acd573(22)=acd573(12)*acd573(22)
      acd573(23)=-acd573(5)*acd573(4)
      acd573(24)=-acd573(8)*acd573(7)
      acd573(25)=2.0_ki*acd573(9)
      acd573(26)=acd573(10)*acd573(25)
      acd573(27)=-acd573(1)*acd573(3)
      acd573(28)=-acd573(21)*acd573(19)
      acd573(23)=acd573(28)+acd573(27)+acd573(26)+acd573(24)+acd573(23)
      acd573(23)=acd573(2)*acd573(23)
      acd573(24)=acd573(7)+acd573(4)
      acd573(24)=acd573(6)*acd573(24)
      acd573(25)=acd573(11)*acd573(25)
      brack=acd573(22)+acd573(23)+acd573(24)+acd573(25)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd573h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(28) :: acd573
      complex(ki) :: brack
      acd573(1)=d(iv1,iv2)
      acd573(2)=dotproduct(qshift,spvak7k2)
      acd573(3)=abb573(12)
      acd573(4)=abb573(9)
      acd573(5)=k1(iv1)
      acd573(6)=spvak7k2(iv2)
      acd573(7)=abb573(15)
      acd573(8)=k1(iv2)
      acd573(9)=spvak7k2(iv1)
      acd573(10)=k2(iv1)
      acd573(11)=abb573(14)
      acd573(12)=k2(iv2)
      acd573(13)=k7(iv1)
      acd573(14)=abb573(13)
      acd573(15)=k7(iv2)
      acd573(16)=qshift(iv1)
      acd573(17)=qshift(iv2)
      acd573(18)=abb573(7)
      acd573(19)=spvak7k1(iv2)
      acd573(20)=abb573(6)
      acd573(21)=spvak7k1(iv1)
      acd573(22)=acd573(5)*acd573(7)
      acd573(23)=acd573(10)*acd573(11)
      acd573(24)=acd573(13)*acd573(14)
      acd573(25)=2.0_ki*acd573(3)
      acd573(26)=-acd573(16)*acd573(25)
      acd573(27)=2.0_ki*acd573(9)
      acd573(27)=acd573(18)*acd573(27)
      acd573(28)=acd573(21)*acd573(20)
      acd573(22)=acd573(28)+acd573(27)+acd573(26)+acd573(24)+acd573(23)+acd573(&
      &22)
      acd573(22)=acd573(6)*acd573(22)
      acd573(23)=acd573(8)*acd573(7)
      acd573(24)=acd573(12)*acd573(11)
      acd573(26)=acd573(15)*acd573(14)
      acd573(25)=-acd573(17)*acd573(25)
      acd573(27)=acd573(19)*acd573(20)
      acd573(23)=acd573(27)+acd573(25)+acd573(26)+acd573(24)+acd573(23)
      acd573(23)=acd573(9)*acd573(23)
      acd573(24)=-acd573(2)*acd573(3)
      acd573(24)=acd573(24)-acd573(4)
      acd573(24)=acd573(1)*acd573(24)
      brack=acd573(22)+acd573(23)+2.0_ki*acd573(24)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd573h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(10) :: acd573
      complex(ki) :: brack
      acd573(1)=d(iv1,iv2)
      acd573(2)=spvak7k2(iv3)
      acd573(3)=abb573(12)
      acd573(4)=d(iv1,iv3)
      acd573(5)=spvak7k2(iv2)
      acd573(6)=d(iv2,iv3)
      acd573(7)=spvak7k2(iv1)
      acd573(8)=acd573(2)*acd573(1)
      acd573(9)=acd573(5)*acd573(4)
      acd573(10)=acd573(7)*acd573(6)
      acd573(8)=acd573(10)+acd573(8)+acd573(9)
      brack=2.0_ki*acd573(8)*acd573(3)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd573h4
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      integer, intent(in), optional :: i2
      integer, intent(in), optional :: i3
      complex(ki) :: numerator
      complex(ki) :: loc
      integer :: t1
      integer :: deg
      complex(ki), dimension(4), parameter :: Q = (/ (0.0_ki,0.0_ki),(0.0_ki,0.&
      &0_ki),(0.0_ki,0.0_ki),(0.0_ki,0.0_ki)/)
      qshift = k7
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
      if(present(i3)) then
          iv3=i3
          deg=3
      else
          iv3=1
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
      if(deg.eq.3) then
         numerator = cond(epspow.eq.t1,brack_4,Q,mu2)
         return
      end if
   end function derivative
!---#] function derivative:
!---#[ subroutine reconstruct_d573:
   subroutine     reconstruct_d573(coeffs)
      use p12_sbars_epnemumnmubarg_groups, only: tensrec_info_group0
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group0), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_573:
      coeffs%coeffs_573%c0 = derivative(czip)
      coeffs%coeffs_573%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_573%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_573%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_573%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_573%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_573%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_573%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_573%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_573%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_573%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_573%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_573%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_573%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_573%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_573%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_573%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_573%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_573%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_573%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_573%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_573%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_573%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_573%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_573%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_573%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_573%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_573%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_573%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_573%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_573%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_573%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_573%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_573%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_573%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_573:
   end subroutine reconstruct_d573
!---#] subroutine reconstruct_d573:
end module     p12_sbars_epnemumnmubarg_d573h4l1d
