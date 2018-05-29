module     p8_cbarc_epnemumnmubarg_d559h0l1d
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p8_cbarc_epnemumnmubarg/helicity0d559h0l1d.f90
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
   public :: derivative , reconstruct_d559
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd559h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(27) :: acd559
      complex(ki) :: brack
      acd559(1)=dotproduct(k1,qshift)
      acd559(2)=dotproduct(qshift,spvak2k7)
      acd559(3)=abb559(17)
      acd559(4)=abb559(8)
      acd559(5)=dotproduct(k2,qshift)
      acd559(6)=abb559(15)
      acd559(7)=dotproduct(k7,qshift)
      acd559(8)=dotproduct(qshift,qshift)
      acd559(9)=abb559(16)
      acd559(10)=dotproduct(qshift,spvak2k1)
      acd559(11)=abb559(10)
      acd559(12)=abb559(12)
      acd559(13)=abb559(18)
      acd559(14)=abb559(13)
      acd559(15)=dotproduct(qshift,spvak7k1)
      acd559(16)=dotproduct(qshift,spvak7k2)
      acd559(17)=abb559(11)
      acd559(18)=abb559(7)
      acd559(19)=dotproduct(qshift,spvak1k2)
      acd559(20)=abb559(9)
      acd559(21)=abb559(14)
      acd559(22)=-acd559(5)+acd559(7)
      acd559(22)=acd559(6)*acd559(22)
      acd559(23)=acd559(10)*acd559(11)
      acd559(24)=-acd559(8)*acd559(9)
      acd559(25)=acd559(2)*acd559(3)
      acd559(22)=acd559(25)+acd559(24)+acd559(23)-acd559(12)+acd559(22)
      acd559(22)=acd559(5)*acd559(22)
      acd559(24)=-acd559(16)*acd559(17)
      acd559(25)=acd559(13)*acd559(15)
      acd559(26)=acd559(1)*acd559(3)
      acd559(24)=acd559(26)+acd559(25)-acd559(18)+acd559(24)
      acd559(24)=acd559(2)*acd559(24)
      acd559(25)=-acd559(19)*acd559(20)
      acd559(26)=-acd559(1)*acd559(4)
      acd559(23)=-acd559(7)*acd559(23)
      acd559(27)=acd559(10)*acd559(13)
      acd559(27)=-acd559(14)+acd559(27)
      acd559(27)=acd559(8)*acd559(27)
      brack=acd559(21)+acd559(22)+acd559(23)+acd559(24)+acd559(25)+acd559(26)+a&
      &cd559(27)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd559h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(40) :: acd559
      complex(ki) :: brack
      acd559(1)=k1(iv1)
      acd559(2)=dotproduct(qshift,spvak2k7)
      acd559(3)=abb559(17)
      acd559(4)=abb559(8)
      acd559(5)=k2(iv1)
      acd559(6)=dotproduct(k2,qshift)
      acd559(7)=abb559(15)
      acd559(8)=dotproduct(k7,qshift)
      acd559(9)=dotproduct(qshift,qshift)
      acd559(10)=abb559(16)
      acd559(11)=dotproduct(qshift,spvak2k1)
      acd559(12)=abb559(10)
      acd559(13)=abb559(12)
      acd559(14)=k7(iv1)
      acd559(15)=qshift(iv1)
      acd559(16)=abb559(18)
      acd559(17)=abb559(13)
      acd559(18)=spvak2k7(iv1)
      acd559(19)=dotproduct(k1,qshift)
      acd559(20)=dotproduct(qshift,spvak7k1)
      acd559(21)=dotproduct(qshift,spvak7k2)
      acd559(22)=abb559(11)
      acd559(23)=abb559(7)
      acd559(24)=spvak2k1(iv1)
      acd559(25)=spvak1k2(iv1)
      acd559(26)=abb559(9)
      acd559(27)=spvak7k1(iv1)
      acd559(28)=spvak7k2(iv1)
      acd559(29)=2.0_ki*acd559(15)
      acd559(30)=acd559(11)*acd559(29)
      acd559(31)=acd559(9)*acd559(24)
      acd559(32)=acd559(20)*acd559(18)
      acd559(33)=acd559(27)*acd559(2)
      acd559(30)=acd559(33)+acd559(32)+acd559(31)+acd559(30)
      acd559(30)=acd559(16)*acd559(30)
      acd559(31)=-acd559(21)*acd559(18)
      acd559(32)=-acd559(28)*acd559(2)
      acd559(31)=acd559(32)+acd559(31)
      acd559(31)=acd559(22)*acd559(31)
      acd559(32)=acd559(7)*acd559(6)
      acd559(33)=acd559(11)*acd559(12)
      acd559(34)=-acd559(13)+acd559(33)-2.0_ki*acd559(32)
      acd559(34)=acd559(5)*acd559(34)
      acd559(35)=acd559(19)+acd559(6)
      acd559(35)=acd559(18)*acd559(35)
      acd559(36)=acd559(1)+acd559(5)
      acd559(36)=acd559(2)*acd559(36)
      acd559(35)=acd559(36)+acd559(35)
      acd559(35)=acd559(3)*acd559(35)
      acd559(36)=acd559(7)*acd559(5)
      acd559(37)=acd559(24)*acd559(12)
      acd559(36)=acd559(36)-acd559(37)
      acd559(36)=acd559(8)*acd559(36)
      acd559(38)=-acd559(6)*acd559(29)
      acd559(39)=-acd559(9)*acd559(5)
      acd559(38)=acd559(38)+acd559(39)
      acd559(38)=acd559(10)*acd559(38)
      acd559(32)=acd559(32)-acd559(33)
      acd559(32)=acd559(14)*acd559(32)
      acd559(33)=acd559(6)*acd559(37)
      acd559(37)=-acd559(4)*acd559(1)
      acd559(29)=-acd559(17)*acd559(29)
      acd559(39)=-acd559(23)*acd559(18)
      acd559(40)=-acd559(26)*acd559(25)
      brack=acd559(29)+acd559(30)+acd559(31)+acd559(32)+acd559(33)+acd559(34)+a&
      &cd559(35)+acd559(36)+acd559(37)+acd559(38)+acd559(39)+acd559(40)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd559h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(36) :: acd559
      complex(ki) :: brack
      acd559(1)=d(iv1,iv2)
      acd559(2)=dotproduct(k2,qshift)
      acd559(3)=abb559(16)
      acd559(4)=dotproduct(qshift,spvak2k1)
      acd559(5)=abb559(18)
      acd559(6)=abb559(13)
      acd559(7)=k1(iv1)
      acd559(8)=spvak2k7(iv2)
      acd559(9)=abb559(17)
      acd559(10)=k1(iv2)
      acd559(11)=spvak2k7(iv1)
      acd559(12)=k2(iv1)
      acd559(13)=k2(iv2)
      acd559(14)=abb559(15)
      acd559(15)=k7(iv2)
      acd559(16)=qshift(iv2)
      acd559(17)=spvak2k1(iv2)
      acd559(18)=abb559(10)
      acd559(19)=k7(iv1)
      acd559(20)=qshift(iv1)
      acd559(21)=spvak2k1(iv1)
      acd559(22)=spvak7k1(iv2)
      acd559(23)=spvak7k2(iv2)
      acd559(24)=abb559(11)
      acd559(25)=spvak7k1(iv1)
      acd559(26)=spvak7k2(iv1)
      acd559(27)=-acd559(3)*acd559(12)
      acd559(28)=acd559(21)*acd559(5)
      acd559(27)=acd559(27)+acd559(28)
      acd559(27)=acd559(16)*acd559(27)
      acd559(28)=-acd559(3)*acd559(13)
      acd559(29)=acd559(17)*acd559(5)
      acd559(28)=acd559(28)+acd559(29)
      acd559(28)=acd559(20)*acd559(28)
      acd559(27)=acd559(27)+acd559(28)
      acd559(28)=acd559(9)*acd559(8)
      acd559(29)=acd559(14)*acd559(13)
      acd559(30)=acd559(17)*acd559(18)
      acd559(31)=acd559(30)-2.0_ki*acd559(29)+acd559(28)
      acd559(31)=acd559(12)*acd559(31)
      acd559(32)=acd559(22)*acd559(11)
      acd559(33)=acd559(25)*acd559(8)
      acd559(32)=acd559(33)+acd559(32)
      acd559(32)=acd559(5)*acd559(32)
      acd559(33)=-acd559(23)*acd559(11)
      acd559(34)=-acd559(26)*acd559(8)
      acd559(33)=acd559(34)+acd559(33)
      acd559(33)=acd559(24)*acd559(33)
      acd559(34)=-acd559(2)*acd559(3)
      acd559(35)=acd559(4)*acd559(5)
      acd559(34)=-acd559(6)+acd559(35)+acd559(34)
      acd559(35)=2.0_ki*acd559(1)
      acd559(34)=acd559(35)*acd559(34)
      acd559(35)=acd559(14)*acd559(12)
      acd559(36)=acd559(21)*acd559(18)
      acd559(35)=acd559(35)-acd559(36)
      acd559(35)=acd559(15)*acd559(35)
      acd559(29)=acd559(29)-acd559(30)
      acd559(29)=acd559(19)*acd559(29)
      acd559(30)=acd559(10)+acd559(13)
      acd559(30)=acd559(30)*acd559(11)*acd559(9)
      acd559(36)=acd559(13)*acd559(36)
      acd559(28)=acd559(7)*acd559(28)
      brack=2.0_ki*acd559(27)+acd559(28)+acd559(29)+acd559(30)+acd559(31)+acd55&
      &9(32)+acd559(33)+acd559(34)+acd559(35)+acd559(36)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd559h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(15) :: acd559
      complex(ki) :: brack
      acd559(1)=d(iv1,iv2)
      acd559(2)=k2(iv3)
      acd559(3)=abb559(16)
      acd559(4)=spvak2k1(iv3)
      acd559(5)=abb559(18)
      acd559(6)=d(iv1,iv3)
      acd559(7)=k2(iv2)
      acd559(8)=spvak2k1(iv2)
      acd559(9)=d(iv2,iv3)
      acd559(10)=k2(iv1)
      acd559(11)=spvak2k1(iv1)
      acd559(12)=-acd559(2)*acd559(1)
      acd559(13)=-acd559(7)*acd559(6)
      acd559(14)=-acd559(10)*acd559(9)
      acd559(12)=acd559(14)+acd559(13)+acd559(12)
      acd559(12)=acd559(3)*acd559(12)
      acd559(13)=acd559(4)*acd559(1)
      acd559(14)=acd559(8)*acd559(6)
      acd559(15)=acd559(11)*acd559(9)
      acd559(13)=acd559(15)+acd559(14)+acd559(13)
      acd559(13)=acd559(5)*acd559(13)
      acd559(12)=acd559(13)+acd559(12)
      brack=2.0_ki*acd559(12)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_abbrevd559h0
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
!---#[ subroutine reconstruct_d559:
   subroutine     reconstruct_d559(coeffs)
      use p8_cbarc_epnemumnmubarg_groups, only: tensrec_info_group1
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group1), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_559:
      coeffs%coeffs_559%c0 = derivative(czip)
      coeffs%coeffs_559%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_559%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_559%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_559%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_559%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_559%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_559%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_559%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_559%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_559%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_559%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_559%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_559%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_559%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_559%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_559%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_559%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_559%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_559%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_559%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_559%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_559%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_559%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_559%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_559%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_559%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_559%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_559%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_559%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_559%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_559%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_559%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_559%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_559%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_559:
   end subroutine reconstruct_d559
!---#] subroutine reconstruct_d559:
end module     p8_cbarc_epnemumnmubarg_d559h0l1d
