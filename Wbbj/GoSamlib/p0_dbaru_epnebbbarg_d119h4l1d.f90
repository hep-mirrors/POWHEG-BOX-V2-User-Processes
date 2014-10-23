module     p0_dbaru_epnebbbarg_d119h4l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d119h4l1d.f90
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
   public :: derivative , reconstruct_d119
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd119h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd119
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd119h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(3) :: acd119
      complex(ki) :: brack
      acd119(1)=spval6k2(iv1)
      acd119(2)=abb119(8)
      brack=-acd119(2)*acd119(1)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd119h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(11) :: acd119
      complex(ki) :: brack
      acd119(1)=spvak1k2(iv1)
      acd119(2)=spval6k2(iv2)
      acd119(3)=abb119(10)
      acd119(4)=spvak1k2(iv2)
      acd119(5)=spval6k2(iv1)
      acd119(6)=spvak4k2(iv2)
      acd119(7)=abb119(9)
      acd119(8)=spvak4k2(iv1)
      acd119(9)=acd119(1)*acd119(2)
      acd119(10)=acd119(4)*acd119(5)
      acd119(9)=acd119(9)+acd119(10)
      acd119(9)=acd119(3)*acd119(9)
      acd119(10)=acd119(6)*acd119(5)
      acd119(11)=acd119(8)*acd119(2)
      acd119(10)=acd119(11)+acd119(10)
      acd119(10)=acd119(7)*acd119(10)
      brack=acd119(9)+acd119(10)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd119h4
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
!---#[ subroutine reconstruct_d119:
   subroutine     reconstruct_d119(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group18
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group18), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_119:
      coeffs%coeffs_119%c0 = derivative(czip)
      coeffs%coeffs_119%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_119%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_119%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_119%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_119%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_119%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_119%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_119%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_119%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_119%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_119%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_119%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_119%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_119%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_119:
   end subroutine reconstruct_d119
!---#] subroutine reconstruct_d119:
end module     p0_dbaru_epnebbbarg_d119h4l1d
