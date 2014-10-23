module     p0_dbaru_epnebbbarg_d62h1l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d62h1l1d.f90
   ! generator: buildfortran_d.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d62
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd62h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd62
      complex(ki) :: brack
      acd62(1)=abb62(24)
      brack=acd62(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd62h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(21) :: acd62
      complex(ki) :: brack
      acd62(1)=k2(iv1)
      acd62(2)=abb62(57)
      acd62(3)=k3(iv1)
      acd62(4)=abb62(82)
      acd62(5)=k4(iv1)
      acd62(6)=abb62(70)
      acd62(7)=spvak2k3(iv1)
      acd62(8)=abb62(19)
      acd62(9)=spvak3k2(iv1)
      acd62(10)=abb62(18)
      acd62(11)=spvak4k2(iv1)
      acd62(12)=abb62(16)
      acd62(13)=spvak4k3(iv1)
      acd62(14)=abb62(17)
      acd62(15)=acd62(2)*acd62(1)
      acd62(16)=acd62(4)*acd62(3)
      acd62(17)=acd62(6)*acd62(5)
      acd62(18)=acd62(8)*acd62(7)
      acd62(19)=acd62(10)*acd62(9)
      acd62(20)=acd62(12)*acd62(11)
      acd62(21)=acd62(14)*acd62(13)
      brack=acd62(15)+acd62(16)+acd62(17)+acd62(18)+acd62(19)+acd62(20)+acd62(2&
      &1)
   end function brack_2
!---#] function brack_2:
!---#[ function derivative:
   function derivative(mu2,i1) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd62h1
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
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
!---#[ subroutine reconstruct_d62:
   subroutine     reconstruct_d62(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group18
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group18), intent(out) :: coeffs
      ! rank 1 case :
      !---[# reconstruct coeffs%coeffs_62:
      coeffs%coeffs_62%c0 = derivative(czip)
      coeffs%coeffs_62%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_62%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_62%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_62%c1(4,1) = -derivative(czip,4)
      !---#] reconstruct coeffs%coeffs_62:
   end subroutine reconstruct_d62
!---#] subroutine reconstruct_d62:
end module     p0_dbaru_epnebbbarg_d62h1l1d
