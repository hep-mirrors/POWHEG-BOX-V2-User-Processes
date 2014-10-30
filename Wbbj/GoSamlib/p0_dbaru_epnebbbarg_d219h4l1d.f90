module     p0_dbaru_epnebbbarg_d219h4l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d219h4l1d.f90
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
   public :: derivative , reconstruct_d219
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd219h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(31) :: acd219
      complex(ki) :: brack
      acd219(1)=dotproduct(k2,qshift)
      acd219(2)=abb219(23)
      acd219(3)=dotproduct(l5,qshift)
      acd219(4)=abb219(19)
      acd219(5)=dotproduct(k7,qshift)
      acd219(6)=abb219(48)
      acd219(7)=dotproduct(qshift,spvak1k2)
      acd219(8)=abb219(14)
      acd219(9)=dotproduct(qshift,spval5k2)
      acd219(10)=abb219(26)
      acd219(11)=dotproduct(qshift,spval5k3)
      acd219(12)=abb219(25)
      acd219(13)=dotproduct(qshift,spval5k7)
      acd219(14)=abb219(24)
      acd219(15)=dotproduct(qshift,spvak7k2)
      acd219(16)=abb219(38)
      acd219(17)=dotproduct(qshift,spvak7k3)
      acd219(18)=abb219(31)
      acd219(19)=dotproduct(qshift,spvak7l5)
      acd219(20)=abb219(16)
      acd219(21)=abb219(17)
      acd219(22)=-acd219(2)*acd219(1)
      acd219(23)=-acd219(4)*acd219(3)
      acd219(24)=-acd219(6)*acd219(5)
      acd219(25)=-acd219(8)*acd219(7)
      acd219(26)=-acd219(10)*acd219(9)
      acd219(27)=-acd219(12)*acd219(11)
      acd219(28)=-acd219(14)*acd219(13)
      acd219(29)=-acd219(16)*acd219(15)
      acd219(30)=-acd219(18)*acd219(17)
      acd219(31)=-acd219(20)*acd219(19)
      brack=acd219(21)+acd219(22)+acd219(23)+acd219(24)+acd219(25)+acd219(26)+a&
      &cd219(27)+acd219(28)+acd219(29)+acd219(30)+acd219(31)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd219h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(30) :: acd219
      complex(ki) :: brack
      acd219(1)=k2(iv1)
      acd219(2)=abb219(23)
      acd219(3)=l5(iv1)
      acd219(4)=abb219(19)
      acd219(5)=k7(iv1)
      acd219(6)=abb219(48)
      acd219(7)=spvak1k2(iv1)
      acd219(8)=abb219(14)
      acd219(9)=spval5k2(iv1)
      acd219(10)=abb219(26)
      acd219(11)=spval5k3(iv1)
      acd219(12)=abb219(25)
      acd219(13)=spval5k7(iv1)
      acd219(14)=abb219(24)
      acd219(15)=spvak7k2(iv1)
      acd219(16)=abb219(38)
      acd219(17)=spvak7k3(iv1)
      acd219(18)=abb219(31)
      acd219(19)=spvak7l5(iv1)
      acd219(20)=abb219(16)
      acd219(21)=acd219(2)*acd219(1)
      acd219(22)=acd219(4)*acd219(3)
      acd219(23)=acd219(6)*acd219(5)
      acd219(24)=acd219(8)*acd219(7)
      acd219(25)=acd219(10)*acd219(9)
      acd219(26)=acd219(12)*acd219(11)
      acd219(27)=acd219(14)*acd219(13)
      acd219(28)=acd219(16)*acd219(15)
      acd219(29)=acd219(18)*acd219(17)
      acd219(30)=acd219(20)*acd219(19)
      brack=acd219(21)+acd219(22)+acd219(23)+acd219(24)+acd219(25)+acd219(26)+a&
      &cd219(27)+acd219(28)+acd219(29)+acd219(30)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd219h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd219
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd219h4
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
      qshift = k7+k6+k5
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
!---#[ subroutine reconstruct_d219:
   subroutine     reconstruct_d219(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group18
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group18), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_219:
      coeffs%coeffs_219%c0 = derivative(czip)
      coeffs%coeffs_219%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_219%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_219%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_219%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_219%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_219%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_219%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_219%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_219%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_219%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_219%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_219%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_219%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_219%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_219:
   end subroutine reconstruct_d219
!---#] subroutine reconstruct_d219:
end module     p0_dbaru_epnebbbarg_d219h4l1d