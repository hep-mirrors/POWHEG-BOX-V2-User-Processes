module     p0_dbaru_epnebbbarg_d75h4l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d75h4l1d.f90
   ! generator: buildfortran_d.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d75
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd75h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd75
      complex(ki) :: brack
      acd75(1)=abb75(15)
      brack=acd75(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd75h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(21) :: acd75
      complex(ki) :: brack
      acd75(1)=k2(iv1)
      acd75(2)=abb75(28)
      acd75(3)=l5(iv1)
      acd75(4)=abb75(19)
      acd75(5)=spvak4k2(iv1)
      acd75(6)=abb75(16)
      acd75(7)=spval5k2(iv1)
      acd75(8)=abb75(21)
      acd75(9)=spval5k3(iv1)
      acd75(10)=abb75(32)
      acd75(11)=spval6k2(iv1)
      acd75(12)=abb75(14)
      acd75(13)=spvak7k2(iv1)
      acd75(14)=abb75(17)
      acd75(15)=acd75(2)*acd75(1)
      acd75(16)=acd75(4)*acd75(3)
      acd75(17)=acd75(6)*acd75(5)
      acd75(18)=acd75(8)*acd75(7)
      acd75(19)=acd75(10)*acd75(9)
      acd75(20)=acd75(12)*acd75(11)
      acd75(21)=acd75(14)*acd75(13)
      brack=acd75(15)+acd75(16)+acd75(17)+acd75(18)+acd75(19)+acd75(20)+acd75(2&
      &1)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd75h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(32) :: acd75
      complex(ki) :: brack
      acd75(1)=d(iv1,iv2)
      acd75(2)=abb75(24)
      acd75(3)=k2(iv1)
      acd75(4)=spval6k2(iv2)
      acd75(5)=abb75(9)
      acd75(6)=spvak7k2(iv2)
      acd75(7)=abb75(30)
      acd75(8)=k2(iv2)
      acd75(9)=spval6k2(iv1)
      acd75(10)=spvak7k2(iv1)
      acd75(11)=spvak4k2(iv2)
      acd75(12)=abb75(8)
      acd75(13)=spval5k2(iv2)
      acd75(14)=abb75(7)
      acd75(15)=spval5k3(iv2)
      acd75(16)=abb75(34)
      acd75(17)=spvak4k2(iv1)
      acd75(18)=spval5k2(iv1)
      acd75(19)=spval5k3(iv1)
      acd75(20)=abb75(20)
      acd75(21)=abb75(11)
      acd75(22)=abb75(33)
      acd75(23)=spvak4k3(iv1)
      acd75(24)=abb75(10)
      acd75(25)=spvak4k3(iv2)
      acd75(26)=acd75(15)*acd75(22)
      acd75(27)=acd75(11)*acd75(20)
      acd75(28)=acd75(7)*acd75(8)
      acd75(29)=acd75(13)*acd75(21)
      acd75(26)=acd75(29)+acd75(28)+acd75(26)+acd75(27)
      acd75(26)=acd75(10)*acd75(26)
      acd75(27)=acd75(15)*acd75(16)
      acd75(28)=acd75(11)*acd75(12)
      acd75(29)=acd75(5)*acd75(8)
      acd75(30)=acd75(13)*acd75(14)
      acd75(27)=acd75(30)+acd75(29)+acd75(27)+acd75(28)
      acd75(27)=acd75(9)*acd75(27)
      acd75(28)=acd75(19)*acd75(22)
      acd75(29)=acd75(17)*acd75(20)
      acd75(30)=acd75(3)*acd75(7)
      acd75(31)=acd75(18)*acd75(21)
      acd75(28)=acd75(31)+acd75(30)+acd75(28)+acd75(29)
      acd75(28)=acd75(6)*acd75(28)
      acd75(29)=acd75(16)*acd75(19)
      acd75(30)=acd75(12)*acd75(17)
      acd75(31)=acd75(3)*acd75(5)
      acd75(32)=acd75(18)*acd75(14)
      acd75(29)=acd75(32)+acd75(31)+acd75(29)+acd75(30)
      acd75(29)=acd75(4)*acd75(29)
      acd75(30)=acd75(18)*acd75(25)
      acd75(31)=acd75(13)*acd75(23)
      acd75(30)=acd75(31)+acd75(30)
      acd75(30)=acd75(24)*acd75(30)
      acd75(31)=acd75(1)*acd75(2)
      brack=acd75(26)+acd75(27)+acd75(28)+acd75(29)+acd75(30)+2.0_ki*acd75(31)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd75h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(26) :: acd75
      complex(ki) :: brack
      acd75(1)=d(iv1,iv2)
      acd75(2)=spval6k2(iv3)
      acd75(3)=abb75(18)
      acd75(4)=spvak7k2(iv3)
      acd75(5)=abb75(31)
      acd75(6)=d(iv1,iv3)
      acd75(7)=spval6k2(iv2)
      acd75(8)=spvak7k2(iv2)
      acd75(9)=d(iv2,iv3)
      acd75(10)=spval6k2(iv1)
      acd75(11)=spvak7k2(iv1)
      acd75(12)=spvak4k3(iv2)
      acd75(13)=spval5k2(iv3)
      acd75(14)=abb75(12)
      acd75(15)=spvak4k3(iv3)
      acd75(16)=spval5k2(iv2)
      acd75(17)=spvak4k3(iv1)
      acd75(18)=spval5k2(iv1)
      acd75(19)=abb75(13)
      acd75(20)=acd75(3)*acd75(2)
      acd75(21)=acd75(5)*acd75(4)
      acd75(20)=acd75(20)+acd75(21)
      acd75(20)=acd75(1)*acd75(20)
      acd75(21)=acd75(7)*acd75(3)
      acd75(22)=acd75(8)*acd75(5)
      acd75(21)=acd75(21)+acd75(22)
      acd75(21)=acd75(6)*acd75(21)
      acd75(22)=acd75(10)*acd75(3)
      acd75(23)=acd75(11)*acd75(5)
      acd75(22)=acd75(22)+acd75(23)
      acd75(22)=acd75(9)*acd75(22)
      acd75(20)=acd75(22)+acd75(20)+acd75(21)
      acd75(21)=acd75(17)*acd75(16)
      acd75(22)=acd75(18)*acd75(12)
      acd75(21)=acd75(21)+acd75(22)
      acd75(22)=acd75(2)*acd75(21)
      acd75(23)=acd75(17)*acd75(13)
      acd75(24)=acd75(18)*acd75(15)
      acd75(23)=acd75(23)+acd75(24)
      acd75(24)=acd75(7)*acd75(23)
      acd75(25)=acd75(13)*acd75(12)
      acd75(26)=acd75(16)*acd75(15)
      acd75(25)=acd75(25)+acd75(26)
      acd75(26)=acd75(10)*acd75(25)
      acd75(22)=acd75(26)+acd75(24)+acd75(22)
      acd75(22)=acd75(14)*acd75(22)
      acd75(21)=acd75(4)*acd75(21)
      acd75(23)=acd75(8)*acd75(23)
      acd75(24)=acd75(11)*acd75(25)
      acd75(21)=acd75(24)+acd75(23)+acd75(21)
      acd75(21)=acd75(19)*acd75(21)
      brack=2.0_ki*acd75(20)+acd75(21)+acd75(22)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd75h4
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
!---#[ subroutine reconstruct_d75:
   subroutine     reconstruct_d75(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group14
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group14), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_75:
      coeffs%coeffs_75%c0 = derivative(czip)
      coeffs%coeffs_75%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_75%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_75%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_75%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_75%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_75%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_75%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_75%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_75%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_75%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_75%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_75%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_75%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_75%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_75%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_75%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_75%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_75%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_75%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_75%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_75%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_75%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_75%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_75%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_75%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_75%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_75%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_75%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_75%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_75%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_75%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_75%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_75%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_75%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_75:
   end subroutine reconstruct_d75
!---#] subroutine reconstruct_d75:
end module     p0_dbaru_epnebbbarg_d75h4l1d
