module     p0_dbaru_epnebbbarg_d121h6l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity6d121h6l1d.f90
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
   public :: derivative , reconstruct_d121
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd121h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd121
      complex(ki) :: brack
      acd121(1)=abb121(24)
      brack=acd121(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd121h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(12) :: acd121
      complex(ki) :: brack
      acd121(1)=l5(iv1)
      acd121(2)=abb121(22)
      acd121(3)=spvak1k2(iv1)
      acd121(4)=abb121(12)
      acd121(5)=spvak4k2(iv1)
      acd121(6)=abb121(17)
      acd121(7)=spval5k2(iv1)
      acd121(8)=abb121(13)
      acd121(9)=-acd121(2)*acd121(1)
      acd121(10)=-acd121(4)*acd121(3)
      acd121(11)=-acd121(6)*acd121(5)
      acd121(12)=-acd121(8)*acd121(7)
      brack=acd121(9)+acd121(10)+acd121(11)+acd121(12)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd121h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(35) :: acd121
      complex(ki) :: brack
      acd121(1)=k2(iv1)
      acd121(2)=spval5k2(iv2)
      acd121(3)=abb121(20)
      acd121(4)=k2(iv2)
      acd121(5)=spval5k2(iv1)
      acd121(6)=l6(iv1)
      acd121(7)=abb121(16)
      acd121(8)=l6(iv2)
      acd121(9)=k7(iv1)
      acd121(10)=k7(iv2)
      acd121(11)=spvak1l6(iv2)
      acd121(12)=abb121(10)
      acd121(13)=spvak4l6(iv2)
      acd121(14)=abb121(14)
      acd121(15)=spvak7k2(iv2)
      acd121(16)=abb121(11)
      acd121(17)=spvak7l6(iv2)
      acd121(18)=abb121(9)
      acd121(19)=spvak1l6(iv1)
      acd121(20)=spvak4l6(iv1)
      acd121(21)=spvak7k2(iv1)
      acd121(22)=spvak7l6(iv1)
      acd121(23)=spvak1k2(iv1)
      acd121(24)=spval5l6(iv2)
      acd121(25)=spvak1k2(iv2)
      acd121(26)=spval5l6(iv1)
      acd121(27)=spvak4k2(iv2)
      acd121(28)=spvak4k2(iv1)
      acd121(29)=acd121(18)*acd121(17)
      acd121(30)=acd121(16)*acd121(15)
      acd121(31)=acd121(3)*acd121(4)
      acd121(32)=-acd121(14)*acd121(13)
      acd121(33)=-acd121(12)*acd121(11)
      acd121(34)=acd121(10)+acd121(8)
      acd121(34)=acd121(7)*acd121(34)
      acd121(29)=acd121(34)+acd121(33)+acd121(32)+acd121(31)+acd121(29)+acd121(&
      &30)
      acd121(29)=acd121(5)*acd121(29)
      acd121(30)=acd121(18)*acd121(22)
      acd121(31)=acd121(16)*acd121(21)
      acd121(32)=acd121(3)*acd121(1)
      acd121(33)=-acd121(14)*acd121(20)
      acd121(34)=-acd121(12)*acd121(19)
      acd121(35)=acd121(9)+acd121(6)
      acd121(35)=acd121(7)*acd121(35)
      acd121(30)=acd121(35)+acd121(34)+acd121(33)+acd121(32)+acd121(30)+acd121(&
      &31)
      acd121(30)=acd121(2)*acd121(30)
      acd121(31)=acd121(26)*acd121(27)
      acd121(32)=acd121(24)*acd121(28)
      acd121(31)=acd121(31)+acd121(32)
      acd121(31)=acd121(14)*acd121(31)
      acd121(32)=acd121(26)*acd121(25)
      acd121(33)=acd121(24)*acd121(23)
      acd121(32)=acd121(32)+acd121(33)
      acd121(32)=acd121(12)*acd121(32)
      brack=acd121(29)+acd121(30)+acd121(31)+acd121(32)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd121h6
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
!---#[ subroutine reconstruct_d121:
   subroutine     reconstruct_d121(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group14
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group14), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_121:
      coeffs%coeffs_121%c0 = derivative(czip)
      coeffs%coeffs_121%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_121%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_121%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_121%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_121%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_121%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_121%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_121%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_121%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_121%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_121%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_121%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_121%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_121%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_121:
   end subroutine reconstruct_d121
!---#] subroutine reconstruct_d121:
end module     p0_dbaru_epnebbbarg_d121h6l1d
