module     p0_dbaru_epnebbbarg_d8h4l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d8h4l1d.f90
   ! generator: buildfortran_d.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d8
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd8h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(13) :: acd8
      complex(ki) :: brack
      acd8(1)=dotproduct(qshift,spvak1k2)
      acd8(2)=abb8(11)
      acd8(3)=dotproduct(qshift,spval5k2)
      acd8(4)=abb8(15)
      acd8(5)=dotproduct(qshift,spval6k2)
      acd8(6)=abb8(14)
      acd8(7)=dotproduct(qshift,spvak7k2)
      acd8(8)=abb8(9)
      acd8(9)=abb8(10)
      acd8(10)=-acd8(2)*acd8(1)
      acd8(11)=-acd8(4)*acd8(3)
      acd8(12)=-acd8(6)*acd8(5)
      acd8(13)=-acd8(8)*acd8(7)
      brack=acd8(9)+acd8(10)+acd8(11)+acd8(12)+acd8(13)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd8h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(12) :: acd8
      complex(ki) :: brack
      acd8(1)=spvak1k2(iv1)
      acd8(2)=abb8(11)
      acd8(3)=spval5k2(iv1)
      acd8(4)=abb8(15)
      acd8(5)=spval6k2(iv1)
      acd8(6)=abb8(14)
      acd8(7)=spvak7k2(iv1)
      acd8(8)=abb8(9)
      acd8(9)=-acd8(2)*acd8(1)
      acd8(10)=-acd8(4)*acd8(3)
      acd8(11)=-acd8(6)*acd8(5)
      acd8(12)=-acd8(8)*acd8(7)
      brack=acd8(9)+acd8(10)+acd8(11)+acd8(12)
   end function brack_2
!---#] function brack_2:
!---#[ function derivative:
   function derivative(mu2,i1) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd8h4
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      complex(ki) :: numerator
      complex(ki) :: loc
      integer :: t1
      integer :: deg
      complex(ki), dimension(4), parameter :: Q = (/ (0.0_ki,0.0_ki),(0.0_ki,0.&
      &0_ki),(0.0_ki,0.0_ki),(0.0_ki,0.0_ki)/)
      qshift = -k6
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
!---#[ subroutine reconstruct_d8:
   subroutine     reconstruct_d8(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group15
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group15), intent(out) :: coeffs
      ! rank 1 case :
      !---[# reconstruct coeffs%coeffs_8:
      coeffs%coeffs_8%c0 = derivative(czip)
      coeffs%coeffs_8%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_8%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_8%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_8%c1(4,1) = -derivative(czip,4)
      !---#] reconstruct coeffs%coeffs_8:
   end subroutine reconstruct_d8
!---#] subroutine reconstruct_d8:
end module     p0_dbaru_epnebbbarg_d8h4l1d
