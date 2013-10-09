module     p0_dbaru_epnebbbarg_d58h2l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity2d58h2l1d.f90
   ! generator: buildfortran_d.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d58
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd58h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(36) :: acd58
      complex(ki) :: brack
      acd58(1)=dotproduct(k1,qshift)
      acd58(2)=abb58(18)
      acd58(3)=dotproduct(k2,qshift)
      acd58(4)=abb58(17)
      acd58(5)=dotproduct(k3,qshift)
      acd58(6)=abb58(62)
      acd58(7)=dotproduct(k4,qshift)
      acd58(8)=dotproduct(l5,qshift)
      acd58(9)=abb58(56)
      acd58(10)=dotproduct(l6,qshift)
      acd58(11)=dotproduct(k7,qshift)
      acd58(12)=abb58(42)
      acd58(13)=dotproduct(qshift,spvak1k7)
      acd58(14)=abb58(12)
      acd58(15)=dotproduct(qshift,spvak4k2)
      acd58(16)=abb58(10)
      acd58(17)=dotproduct(qshift,spvak4k3)
      acd58(18)=abb58(13)
      acd58(19)=dotproduct(qshift,spval5k2)
      acd58(20)=abb58(25)
      acd58(21)=dotproduct(qshift,spval5l6)
      acd58(22)=abb58(19)
      acd58(23)=dotproduct(qshift,spvak7k1)
      acd58(24)=abb58(15)
      acd58(25)=abb58(11)
      acd58(26)=acd58(7)+acd58(5)
      acd58(26)=acd58(6)*acd58(26)
      acd58(27)=-acd58(10)-acd58(8)
      acd58(27)=acd58(9)*acd58(27)
      acd58(28)=-acd58(2)*acd58(1)
      acd58(29)=-acd58(4)*acd58(3)
      acd58(30)=-acd58(12)*acd58(11)
      acd58(31)=-acd58(14)*acd58(13)
      acd58(32)=-acd58(16)*acd58(15)
      acd58(33)=-acd58(18)*acd58(17)
      acd58(34)=-acd58(20)*acd58(19)
      acd58(35)=-acd58(22)*acd58(21)
      acd58(36)=-acd58(24)*acd58(23)
      brack=acd58(25)+acd58(26)+acd58(27)+acd58(28)+acd58(29)+acd58(30)+acd58(3&
      &1)+acd58(32)+acd58(33)+acd58(34)+acd58(35)+acd58(36)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd58h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(35) :: acd58
      complex(ki) :: brack
      acd58(1)=k1(iv1)
      acd58(2)=abb58(18)
      acd58(3)=k2(iv1)
      acd58(4)=abb58(17)
      acd58(5)=k3(iv1)
      acd58(6)=abb58(62)
      acd58(7)=k4(iv1)
      acd58(8)=l5(iv1)
      acd58(9)=abb58(56)
      acd58(10)=l6(iv1)
      acd58(11)=k7(iv1)
      acd58(12)=abb58(42)
      acd58(13)=spvak1k7(iv1)
      acd58(14)=abb58(12)
      acd58(15)=spvak4k2(iv1)
      acd58(16)=abb58(10)
      acd58(17)=spvak4k3(iv1)
      acd58(18)=abb58(13)
      acd58(19)=spval5k2(iv1)
      acd58(20)=abb58(25)
      acd58(21)=spval5l6(iv1)
      acd58(22)=abb58(19)
      acd58(23)=spvak7k1(iv1)
      acd58(24)=abb58(15)
      acd58(25)=acd58(7)+acd58(5)
      acd58(25)=acd58(6)*acd58(25)
      acd58(26)=-acd58(10)-acd58(8)
      acd58(26)=acd58(9)*acd58(26)
      acd58(27)=-acd58(2)*acd58(1)
      acd58(28)=-acd58(4)*acd58(3)
      acd58(29)=-acd58(12)*acd58(11)
      acd58(30)=-acd58(14)*acd58(13)
      acd58(31)=-acd58(16)*acd58(15)
      acd58(32)=-acd58(18)*acd58(17)
      acd58(33)=-acd58(20)*acd58(19)
      acd58(34)=-acd58(22)*acd58(21)
      acd58(35)=-acd58(24)*acd58(23)
      brack=acd58(25)+acd58(26)+acd58(27)+acd58(28)+acd58(29)+acd58(30)+acd58(3&
      &1)+acd58(32)+acd58(33)+acd58(34)+acd58(35)
   end function brack_2
!---#] function brack_2:
!---#[ function derivative:
   function derivative(mu2,i1) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd58h2
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      complex(ki) :: numerator
      complex(ki) :: loc
      integer :: t1
      integer :: deg
      complex(ki), dimension(4), parameter :: Q = (/ (0.0_ki,0.0_ki),(0.0_ki,0.&
      &0_ki),(0.0_ki,0.0_ki),(0.0_ki,0.0_ki)/)
      qshift = -k6-k5
      numerator = 0.0_ki
      deg = 0
      if(present(i1)) then
          iv1=i1
          deg=1
      else
          iv1=1
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
   end function derivative
!---#] function derivative:
!---#[ subroutine reconstruct_d58:
   subroutine     reconstruct_d58(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group13
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group13), intent(out) :: coeffs
      ! rank 1 case :
      !---[# reconstruct coeffs%coeffs_58:
      coeffs%coeffs_58%c0 = derivative(czip)
      coeffs%coeffs_58%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_58%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_58%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_58%c1(4,1) = -derivative(czip,4)
      !---#] reconstruct coeffs%coeffs_58:
   end subroutine reconstruct_d58
!---#] subroutine reconstruct_d58:
end module     p0_dbaru_epnebbbarg_d58h2l1d
