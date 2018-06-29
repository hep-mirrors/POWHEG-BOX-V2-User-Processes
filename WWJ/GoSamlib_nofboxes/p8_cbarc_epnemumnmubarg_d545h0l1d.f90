module     p8_cbarc_epnemumnmubarg_d545h0l1d
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p8_cbarc_epnemumnmubarg/helicity0d545h0l1d.f90
   ! generator: buildfortran_d.py
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d545
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd545h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(26) :: acd545
      complex(ki) :: brack
      acd545(1)=dotproduct(k1,qshift)
      acd545(2)=dotproduct(k2,qshift)
      acd545(3)=abb545(7)
      acd545(4)=dotproduct(qshift,spvak2k1)
      acd545(5)=abb545(13)
      acd545(6)=dotproduct(qshift,spvak2k7)
      acd545(7)=abb545(17)
      acd545(8)=abb545(9)
      acd545(9)=dotproduct(k7,qshift)
      acd545(10)=dotproduct(qshift,qshift)
      acd545(11)=abb545(14)
      acd545(12)=abb545(15)
      acd545(13)=abb545(16)
      acd545(14)=dotproduct(qshift,spvak7k1)
      acd545(15)=dotproduct(qshift,spvak7k2)
      acd545(16)=abb545(10)
      acd545(17)=abb545(11)
      acd545(18)=dotproduct(qshift,spvak1k2)
      acd545(19)=abb545(8)
      acd545(20)=abb545(12)
      acd545(21)=acd545(10)-acd545(2)
      acd545(22)=acd545(1)+acd545(21)
      acd545(22)=acd545(7)*acd545(22)
      acd545(23)=acd545(14)*acd545(13)
      acd545(24)=-acd545(16)*acd545(15)
      acd545(22)=acd545(22)-acd545(17)+acd545(24)+acd545(23)
      acd545(22)=acd545(6)*acd545(22)
      acd545(23)=acd545(13)*acd545(4)
      acd545(24)=-acd545(11)*acd545(2)
      acd545(23)=acd545(24)+acd545(23)
      acd545(23)=acd545(10)*acd545(23)
      acd545(24)=acd545(3)*acd545(2)
      acd545(25)=acd545(5)*acd545(4)
      acd545(24)=acd545(24)-acd545(25)
      acd545(25)=-acd545(8)-acd545(24)
      acd545(25)=acd545(1)*acd545(25)
      acd545(24)=acd545(9)*acd545(24)
      acd545(21)=acd545(12)*acd545(21)
      acd545(26)=-acd545(19)*acd545(18)
      brack=acd545(20)+acd545(21)+acd545(22)+acd545(23)+acd545(24)+acd545(25)+a&
      &cd545(26)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd545h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(37) :: acd545
      complex(ki) :: brack
      acd545(1)=k1(iv1)
      acd545(2)=dotproduct(k2,qshift)
      acd545(3)=abb545(7)
      acd545(4)=dotproduct(qshift,spvak2k1)
      acd545(5)=abb545(13)
      acd545(6)=dotproduct(qshift,spvak2k7)
      acd545(7)=abb545(17)
      acd545(8)=abb545(9)
      acd545(9)=k2(iv1)
      acd545(10)=dotproduct(k1,qshift)
      acd545(11)=dotproduct(k7,qshift)
      acd545(12)=dotproduct(qshift,qshift)
      acd545(13)=abb545(14)
      acd545(14)=abb545(15)
      acd545(15)=k7(iv1)
      acd545(16)=qshift(iv1)
      acd545(17)=abb545(16)
      acd545(18)=spvak2k1(iv1)
      acd545(19)=spvak2k7(iv1)
      acd545(20)=dotproduct(qshift,spvak7k1)
      acd545(21)=dotproduct(qshift,spvak7k2)
      acd545(22)=abb545(10)
      acd545(23)=abb545(11)
      acd545(24)=spvak1k2(iv1)
      acd545(25)=abb545(8)
      acd545(26)=spvak7k1(iv1)
      acd545(27)=spvak7k2(iv1)
      acd545(28)=2.0_ki*acd545(16)
      acd545(29)=-acd545(17)*acd545(4)
      acd545(29)=-acd545(14)+acd545(29)
      acd545(29)=acd545(29)*acd545(28)
      acd545(30)=acd545(10)-acd545(11)
      acd545(31)=-acd545(18)*acd545(30)
      acd545(32)=acd545(4)*acd545(15)
      acd545(31)=acd545(32)+acd545(31)
      acd545(31)=acd545(5)*acd545(31)
      acd545(32)=acd545(13)*acd545(28)
      acd545(33)=-acd545(3)*acd545(15)
      acd545(32)=acd545(32)+acd545(33)
      acd545(32)=acd545(2)*acd545(32)
      acd545(33)=-acd545(5)*acd545(4)
      acd545(34)=acd545(2)*acd545(3)
      acd545(33)=acd545(34)+acd545(8)+acd545(33)
      acd545(33)=acd545(1)*acd545(33)
      acd545(34)=acd545(12)*acd545(13)
      acd545(30)=acd545(3)*acd545(30)
      acd545(30)=acd545(30)+acd545(14)+acd545(34)
      acd545(30)=acd545(9)*acd545(30)
      acd545(34)=acd545(22)*acd545(27)
      acd545(35)=-acd545(17)*acd545(26)
      acd545(34)=acd545(34)+acd545(35)
      acd545(34)=acd545(6)*acd545(34)
      acd545(35)=acd545(22)*acd545(21)
      acd545(36)=-acd545(17)*acd545(20)
      acd545(35)=acd545(36)+acd545(23)+acd545(35)
      acd545(35)=acd545(19)*acd545(35)
      acd545(28)=acd545(9)-acd545(28)-acd545(1)
      acd545(28)=acd545(6)*acd545(28)
      acd545(36)=acd545(2)-acd545(12)-acd545(10)
      acd545(36)=acd545(19)*acd545(36)
      acd545(28)=acd545(28)+acd545(36)
      acd545(28)=acd545(7)*acd545(28)
      acd545(36)=acd545(24)*acd545(25)
      acd545(37)=-acd545(17)*acd545(12)*acd545(18)
      brack=acd545(28)+acd545(29)+acd545(30)+acd545(31)+acd545(32)+acd545(33)+a&
      &cd545(34)+acd545(35)+acd545(36)+acd545(37)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd545h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(36) :: acd545
      complex(ki) :: brack
      acd545(1)=d(iv1,iv2)
      acd545(2)=dotproduct(k2,qshift)
      acd545(3)=abb545(14)
      acd545(4)=dotproduct(qshift,spvak2k1)
      acd545(5)=abb545(16)
      acd545(6)=dotproduct(qshift,spvak2k7)
      acd545(7)=abb545(17)
      acd545(8)=abb545(15)
      acd545(9)=k1(iv1)
      acd545(10)=k2(iv2)
      acd545(11)=abb545(7)
      acd545(12)=spvak2k1(iv2)
      acd545(13)=abb545(13)
      acd545(14)=spvak2k7(iv2)
      acd545(15)=k1(iv2)
      acd545(16)=k2(iv1)
      acd545(17)=spvak2k1(iv1)
      acd545(18)=spvak2k7(iv1)
      acd545(19)=k7(iv2)
      acd545(20)=qshift(iv2)
      acd545(21)=k7(iv1)
      acd545(22)=qshift(iv1)
      acd545(23)=spvak7k1(iv2)
      acd545(24)=spvak7k2(iv2)
      acd545(25)=abb545(10)
      acd545(26)=spvak7k1(iv1)
      acd545(27)=spvak7k2(iv1)
      acd545(28)=acd545(17)*acd545(20)
      acd545(29)=acd545(12)*acd545(22)
      acd545(30)=acd545(1)*acd545(4)
      acd545(28)=acd545(30)+acd545(28)+acd545(29)
      acd545(29)=acd545(18)*acd545(23)
      acd545(30)=acd545(14)*acd545(26)
      acd545(28)=acd545(30)+2.0_ki*acd545(28)+acd545(29)
      acd545(28)=acd545(5)*acd545(28)
      acd545(29)=2.0_ki*acd545(1)
      acd545(30)=acd545(6)*acd545(29)
      acd545(31)=-acd545(10)+acd545(15)+2.0_ki*acd545(20)
      acd545(31)=acd545(18)*acd545(31)
      acd545(32)=-acd545(16)+acd545(9)+2.0_ki*acd545(22)
      acd545(32)=acd545(14)*acd545(32)
      acd545(30)=acd545(32)+acd545(30)+acd545(31)
      acd545(30)=acd545(7)*acd545(30)
      acd545(31)=-acd545(18)*acd545(24)
      acd545(32)=-acd545(14)*acd545(27)
      acd545(31)=acd545(32)+acd545(31)
      acd545(31)=acd545(25)*acd545(31)
      acd545(32)=2.0_ki*acd545(3)
      acd545(33)=-acd545(20)*acd545(32)
      acd545(34)=acd545(15)-acd545(19)
      acd545(35)=-acd545(11)*acd545(34)
      acd545(33)=acd545(35)+acd545(33)
      acd545(33)=acd545(16)*acd545(33)
      acd545(34)=acd545(17)*acd545(34)
      acd545(35)=acd545(9)-acd545(21)
      acd545(36)=acd545(12)*acd545(35)
      acd545(34)=acd545(36)+acd545(34)
      acd545(34)=acd545(13)*acd545(34)
      acd545(32)=-acd545(22)*acd545(32)
      acd545(35)=-acd545(11)*acd545(35)
      acd545(32)=acd545(32)+acd545(35)
      acd545(32)=acd545(10)*acd545(32)
      acd545(35)=-acd545(3)*acd545(2)
      acd545(35)=acd545(8)+acd545(35)
      acd545(29)=acd545(35)*acd545(29)
      brack=acd545(28)+acd545(29)+acd545(30)+acd545(31)+acd545(32)+acd545(33)+a&
      &cd545(34)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd545h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(20) :: acd545
      complex(ki) :: brack
      acd545(1)=d(iv1,iv2)
      acd545(2)=k2(iv3)
      acd545(3)=abb545(14)
      acd545(4)=spvak2k1(iv3)
      acd545(5)=abb545(16)
      acd545(6)=spvak2k7(iv3)
      acd545(7)=abb545(17)
      acd545(8)=d(iv1,iv3)
      acd545(9)=k2(iv2)
      acd545(10)=spvak2k1(iv2)
      acd545(11)=spvak2k7(iv2)
      acd545(12)=d(iv2,iv3)
      acd545(13)=k2(iv1)
      acd545(14)=spvak2k1(iv1)
      acd545(15)=spvak2k7(iv1)
      acd545(16)=acd545(2)*acd545(3)
      acd545(17)=-acd545(4)*acd545(5)
      acd545(18)=-acd545(6)*acd545(7)
      acd545(16)=acd545(18)+acd545(16)+acd545(17)
      acd545(16)=acd545(1)*acd545(16)
      acd545(17)=acd545(9)*acd545(3)
      acd545(18)=-acd545(10)*acd545(5)
      acd545(19)=-acd545(11)*acd545(7)
      acd545(17)=acd545(19)+acd545(18)+acd545(17)
      acd545(17)=acd545(8)*acd545(17)
      acd545(18)=acd545(13)*acd545(3)
      acd545(19)=-acd545(14)*acd545(5)
      acd545(20)=-acd545(15)*acd545(7)
      acd545(18)=acd545(20)+acd545(19)+acd545(18)
      acd545(18)=acd545(12)*acd545(18)
      acd545(16)=acd545(18)+acd545(17)+acd545(16)
      brack=2.0_ki*acd545(16)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_abbrevd545h0
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
!---#[ subroutine reconstruct_d545:
   subroutine     reconstruct_d545(coeffs)
      use p8_cbarc_epnemumnmubarg_groups, only: tensrec_info_group3
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group3), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_545:
      coeffs%coeffs_545%c0 = derivative(czip)
      coeffs%coeffs_545%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_545%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_545%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_545%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_545%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_545%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_545%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_545%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_545%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_545%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_545%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_545%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_545%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_545%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_545%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_545%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_545%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_545%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_545%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_545%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_545%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_545%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_545%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_545%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_545%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_545%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_545%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_545%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_545%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_545%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_545%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_545%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_545%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_545%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_545:
   end subroutine reconstruct_d545
!---#] subroutine reconstruct_d545:
end module     p8_cbarc_epnemumnmubarg_d545h0l1d
