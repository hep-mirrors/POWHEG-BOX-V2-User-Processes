module     p0_dbaru_epnebbbarg_d110h3l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d110h3l1d.f90
   ! generator: buildfortran_d.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d110
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd110h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(32) :: acd110
      complex(ki) :: brack
      acd110(1)=dotproduct(l6,qshift)
      acd110(2)=abb110(18)
      acd110(3)=dotproduct(k7,qshift)
      acd110(4)=dotproduct(qshift,spvak2l6)
      acd110(5)=abb110(13)
      acd110(6)=abb110(28)
      acd110(7)=dotproduct(qshift,qshift)
      acd110(8)=abb110(20)
      acd110(9)=abb110(12)
      acd110(10)=dotproduct(qshift,spvak1l6)
      acd110(11)=abb110(15)
      acd110(12)=dotproduct(qshift,spvak2l5)
      acd110(13)=dotproduct(qshift,spvak2k7)
      acd110(14)=abb110(14)
      acd110(15)=dotproduct(qshift,spvak7l5)
      acd110(16)=abb110(25)
      acd110(17)=dotproduct(qshift,spvak7l6)
      acd110(18)=abb110(30)
      acd110(19)=abb110(16)
      acd110(20)=dotproduct(qshift,spvak4l6)
      acd110(21)=abb110(36)
      acd110(22)=dotproduct(qshift,spval6k7)
      acd110(23)=abb110(32)
      acd110(24)=abb110(11)
      acd110(25)=acd110(14)*acd110(12)
      acd110(26)=acd110(16)*acd110(15)
      acd110(27)=acd110(18)*acd110(17)
      acd110(25)=-acd110(19)+acd110(27)+acd110(26)+acd110(25)
      acd110(25)=acd110(13)*acd110(25)
      acd110(26)=acd110(5)*acd110(3)
      acd110(26)=-acd110(9)+acd110(26)
      acd110(26)=acd110(4)*acd110(26)
      acd110(27)=-acd110(2)*acd110(1)
      acd110(28)=-acd110(6)*acd110(3)
      acd110(29)=acd110(8)*acd110(7)
      acd110(30)=-acd110(11)*acd110(10)
      acd110(31)=-acd110(21)*acd110(20)
      acd110(32)=-acd110(23)*acd110(22)
      brack=acd110(24)+acd110(25)+acd110(26)+acd110(27)+acd110(28)+acd110(29)+a&
      &cd110(30)+acd110(31)+acd110(32)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd110h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(38) :: acd110
      complex(ki) :: brack
      acd110(1)=l6(iv1)
      acd110(2)=abb110(18)
      acd110(3)=k7(iv1)
      acd110(4)=dotproduct(qshift,spvak2l6)
      acd110(5)=abb110(13)
      acd110(6)=abb110(28)
      acd110(7)=qshift(iv1)
      acd110(8)=abb110(20)
      acd110(9)=spvak2l6(iv1)
      acd110(10)=dotproduct(k7,qshift)
      acd110(11)=abb110(12)
      acd110(12)=spvak1l6(iv1)
      acd110(13)=abb110(15)
      acd110(14)=spvak2l5(iv1)
      acd110(15)=dotproduct(qshift,spvak2k7)
      acd110(16)=abb110(14)
      acd110(17)=spvak2k7(iv1)
      acd110(18)=dotproduct(qshift,spvak2l5)
      acd110(19)=dotproduct(qshift,spvak7l5)
      acd110(20)=abb110(25)
      acd110(21)=dotproduct(qshift,spvak7l6)
      acd110(22)=abb110(30)
      acd110(23)=abb110(16)
      acd110(24)=spvak7l5(iv1)
      acd110(25)=spvak7l6(iv1)
      acd110(26)=spvak4l6(iv1)
      acd110(27)=abb110(36)
      acd110(28)=spval6k7(iv1)
      acd110(29)=abb110(32)
      acd110(30)=-acd110(14)*acd110(16)
      acd110(31)=-acd110(24)*acd110(20)
      acd110(32)=-acd110(25)*acd110(22)
      acd110(30)=acd110(32)+acd110(31)+acd110(30)
      acd110(30)=acd110(15)*acd110(30)
      acd110(31)=-acd110(18)*acd110(16)
      acd110(32)=-acd110(19)*acd110(20)
      acd110(33)=-acd110(21)*acd110(22)
      acd110(31)=acd110(23)+acd110(33)+acd110(32)+acd110(31)
      acd110(31)=acd110(17)*acd110(31)
      acd110(32)=-acd110(4)*acd110(5)
      acd110(32)=acd110(6)+acd110(32)
      acd110(32)=acd110(3)*acd110(32)
      acd110(33)=-acd110(10)*acd110(5)
      acd110(33)=acd110(11)+acd110(33)
      acd110(33)=acd110(9)*acd110(33)
      acd110(34)=acd110(2)*acd110(1)
      acd110(35)=acd110(8)*acd110(7)
      acd110(36)=acd110(13)*acd110(12)
      acd110(37)=acd110(27)*acd110(26)
      acd110(38)=acd110(29)*acd110(28)
      brack=acd110(30)+acd110(31)+acd110(32)+acd110(33)+acd110(34)-2.0_ki*acd11&
      &0(35)+acd110(36)+acd110(37)+acd110(38)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd110h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(22) :: acd110
      complex(ki) :: brack
      acd110(1)=d(iv1,iv2)
      acd110(2)=abb110(20)
      acd110(3)=k7(iv1)
      acd110(4)=spvak2l6(iv2)
      acd110(5)=abb110(13)
      acd110(6)=k7(iv2)
      acd110(7)=spvak2l6(iv1)
      acd110(8)=spvak2l5(iv1)
      acd110(9)=spvak2k7(iv2)
      acd110(10)=abb110(14)
      acd110(11)=spvak2l5(iv2)
      acd110(12)=spvak2k7(iv1)
      acd110(13)=spvak7l5(iv2)
      acd110(14)=abb110(25)
      acd110(15)=spvak7l6(iv2)
      acd110(16)=abb110(30)
      acd110(17)=spvak7l5(iv1)
      acd110(18)=spvak7l6(iv1)
      acd110(19)=acd110(8)*acd110(10)
      acd110(20)=acd110(17)*acd110(14)
      acd110(21)=acd110(18)*acd110(16)
      acd110(19)=acd110(21)+acd110(20)+acd110(19)
      acd110(19)=acd110(9)*acd110(19)
      acd110(20)=acd110(11)*acd110(10)
      acd110(21)=acd110(13)*acd110(14)
      acd110(22)=acd110(15)*acd110(16)
      acd110(20)=acd110(22)+acd110(21)+acd110(20)
      acd110(20)=acd110(12)*acd110(20)
      acd110(21)=acd110(4)*acd110(3)
      acd110(22)=acd110(7)*acd110(6)
      acd110(21)=acd110(22)+acd110(21)
      acd110(21)=acd110(5)*acd110(21)
      acd110(22)=acd110(2)*acd110(1)
      brack=acd110(19)+acd110(20)+acd110(21)+2.0_ki*acd110(22)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd110h3
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
      qshift = k6
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
!---#[ subroutine reconstruct_d110:
   subroutine     reconstruct_d110(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group15
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group15), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_110:
      coeffs%coeffs_110%c0 = derivative(czip)
      coeffs%coeffs_110%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_110%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_110%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_110%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_110%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_110%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_110%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_110%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_110%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_110%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_110%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_110%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_110%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_110%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_110:
   end subroutine reconstruct_d110
!---#] subroutine reconstruct_d110:
end module     p0_dbaru_epnebbbarg_d110h3l1d
