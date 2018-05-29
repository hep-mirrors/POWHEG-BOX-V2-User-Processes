module     p4_ubaru_epnemumnmubarg_d177h5l1d
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p4_ubaru_epnemumnmubarg/helicity5d177h5l1d.f90
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
   public :: derivative , reconstruct_d177
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd177h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd177
      complex(ki) :: brack
      acd177(1)=abb177(14)
      brack=acd177(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd177h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(30) :: acd177
      complex(ki) :: brack
      acd177(1)=k1(iv1)
      acd177(2)=abb177(18)
      acd177(3)=k7(iv1)
      acd177(4)=abb177(28)
      acd177(5)=spvak1k2(iv1)
      acd177(6)=abb177(15)
      acd177(7)=spvak1k7(iv1)
      acd177(8)=abb177(29)
      acd177(9)=spvak3k2(iv1)
      acd177(10)=abb177(23)
      acd177(11)=spvak4k2(iv1)
      acd177(12)=abb177(22)
      acd177(13)=spvak5k2(iv1)
      acd177(14)=abb177(33)
      acd177(15)=spvak6k2(iv1)
      acd177(16)=abb177(16)
      acd177(17)=spvak7k1(iv1)
      acd177(18)=abb177(13)
      acd177(19)=spvak7k2(iv1)
      acd177(20)=abb177(27)
      acd177(21)=acd177(2)*acd177(1)
      acd177(22)=acd177(4)*acd177(3)
      acd177(23)=acd177(6)*acd177(5)
      acd177(24)=acd177(8)*acd177(7)
      acd177(25)=acd177(10)*acd177(9)
      acd177(26)=acd177(12)*acd177(11)
      acd177(27)=acd177(14)*acd177(13)
      acd177(28)=acd177(16)*acd177(15)
      acd177(29)=acd177(18)*acd177(17)
      acd177(30)=acd177(20)*acd177(19)
      brack=acd177(21)+acd177(22)+acd177(23)+acd177(24)+acd177(25)+acd177(26)+a&
      &cd177(27)+acd177(28)+acd177(29)+acd177(30)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd177h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(40) :: acd177
      complex(ki) :: brack
      acd177(1)=d(iv1,iv2)
      acd177(2)=abb177(42)
      acd177(3)=k3(iv1)
      acd177(4)=spvak1k2(iv2)
      acd177(5)=abb177(20)
      acd177(6)=spvak7k2(iv2)
      acd177(7)=abb177(126)
      acd177(8)=k3(iv2)
      acd177(9)=spvak1k2(iv1)
      acd177(10)=spvak7k2(iv1)
      acd177(11)=k4(iv1)
      acd177(12)=k4(iv2)
      acd177(13)=k5(iv1)
      acd177(14)=k5(iv2)
      acd177(15)=k6(iv1)
      acd177(16)=k6(iv2)
      acd177(17)=spvak4k3(iv2)
      acd177(18)=abb177(17)
      acd177(19)=spvak4k6(iv2)
      acd177(20)=abb177(25)
      acd177(21)=spvak5k3(iv2)
      acd177(22)=abb177(24)
      acd177(23)=spvak5k6(iv2)
      acd177(24)=abb177(19)
      acd177(25)=spvak4k3(iv1)
      acd177(26)=spvak4k6(iv1)
      acd177(27)=spvak5k3(iv1)
      acd177(28)=spvak5k6(iv1)
      acd177(29)=abb177(21)
      acd177(30)=abb177(37)
      acd177(31)=abb177(137)
      acd177(32)=abb177(115)
      acd177(33)=acd177(23)*acd177(32)
      acd177(34)=acd177(21)*acd177(31)
      acd177(35)=acd177(19)*acd177(30)
      acd177(36)=acd177(17)*acd177(29)
      acd177(37)=-acd177(8)-acd177(12)+acd177(14)+acd177(16)
      acd177(38)=-acd177(7)*acd177(37)
      acd177(33)=acd177(38)+acd177(36)+acd177(35)+acd177(33)+acd177(34)
      acd177(33)=acd177(10)*acd177(33)
      acd177(34)=acd177(23)*acd177(24)
      acd177(35)=acd177(21)*acd177(22)
      acd177(36)=acd177(19)*acd177(20)
      acd177(38)=acd177(17)*acd177(18)
      acd177(37)=-acd177(5)*acd177(37)
      acd177(34)=acd177(37)+acd177(38)+acd177(36)+acd177(34)+acd177(35)
      acd177(34)=acd177(9)*acd177(34)
      acd177(35)=acd177(28)*acd177(32)
      acd177(36)=acd177(27)*acd177(31)
      acd177(37)=acd177(26)*acd177(30)
      acd177(38)=acd177(25)*acd177(29)
      acd177(39)=-acd177(3)-acd177(11)+acd177(13)+acd177(15)
      acd177(40)=-acd177(7)*acd177(39)
      acd177(35)=acd177(40)+acd177(38)+acd177(37)+acd177(35)+acd177(36)
      acd177(35)=acd177(6)*acd177(35)
      acd177(36)=acd177(24)*acd177(28)
      acd177(37)=acd177(22)*acd177(27)
      acd177(38)=acd177(20)*acd177(26)
      acd177(40)=acd177(18)*acd177(25)
      acd177(39)=-acd177(5)*acd177(39)
      acd177(36)=acd177(39)+acd177(40)+acd177(38)+acd177(36)+acd177(37)
      acd177(36)=acd177(4)*acd177(36)
      acd177(37)=acd177(1)*acd177(2)
      brack=acd177(33)+acd177(34)+acd177(35)+acd177(36)+2.0_ki*acd177(37)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd177h5
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
      qshift = 0
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
      use p4_ubaru_epnemumnmubarg_groups, only: tensrec_info_group0
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group0), intent(out) :: coeffs
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
end module     p4_ubaru_epnemumnmubarg_d177h5l1d
