module     p0_dbaru_epnebbbarg_d100h5l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d100h5l1d.f90
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
   public :: derivative , reconstruct_d100
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd100h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd100
      complex(ki) :: brack
      acd100(1)=abb100(25)
      brack=acd100(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd100h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(21) :: acd100
      complex(ki) :: brack
      acd100(1)=k2(iv1)
      acd100(2)=abb100(26)
      acd100(3)=l6(iv1)
      acd100(4)=abb100(12)
      acd100(5)=k7(iv1)
      acd100(6)=abb100(16)
      acd100(7)=spval6k2(iv1)
      acd100(8)=abb100(9)
      acd100(9)=spval6k7(iv1)
      acd100(10)=abb100(17)
      acd100(11)=spvak7k2(iv1)
      acd100(12)=abb100(14)
      acd100(13)=spvak7l6(iv1)
      acd100(14)=abb100(28)
      acd100(15)=acd100(2)*acd100(1)
      acd100(16)=acd100(4)*acd100(3)
      acd100(17)=acd100(6)*acd100(5)
      acd100(18)=acd100(8)*acd100(7)
      acd100(19)=acd100(10)*acd100(9)
      acd100(20)=acd100(12)*acd100(11)
      acd100(21)=acd100(14)*acd100(13)
      brack=acd100(15)+acd100(16)+acd100(17)+acd100(18)+acd100(19)+acd100(20)+a&
      &cd100(21)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd100h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(31) :: acd100
      complex(ki) :: brack
      acd100(1)=d(iv1,iv2)
      acd100(2)=abb100(23)
      acd100(3)=spvak1k2(iv1)
      acd100(4)=spval6k2(iv2)
      acd100(5)=abb100(13)
      acd100(6)=spvak7k2(iv2)
      acd100(7)=abb100(15)
      acd100(8)=spvak1k2(iv2)
      acd100(9)=spval6k2(iv1)
      acd100(10)=spvak7k2(iv1)
      acd100(11)=spvak1l6(iv2)
      acd100(12)=abb100(20)
      acd100(13)=spvak4k2(iv2)
      acd100(14)=abb100(10)
      acd100(15)=spvak4l6(iv2)
      acd100(16)=abb100(11)
      acd100(17)=spvak1l6(iv1)
      acd100(18)=spvak4k2(iv1)
      acd100(19)=spvak4l6(iv1)
      acd100(20)=spvak1k7(iv2)
      acd100(21)=abb100(18)
      acd100(22)=spvak4k7(iv2)
      acd100(23)=spvak1k7(iv1)
      acd100(24)=spvak4k7(iv1)
      acd100(25)=acd100(13)*acd100(21)
      acd100(26)=acd100(7)*acd100(8)
      acd100(27)=acd100(16)*acd100(22)
      acd100(28)=acd100(12)*acd100(20)
      acd100(25)=acd100(28)+acd100(27)+acd100(25)+acd100(26)
      acd100(25)=acd100(10)*acd100(25)
      acd100(26)=acd100(13)*acd100(14)
      acd100(27)=acd100(5)*acd100(8)
      acd100(28)=acd100(16)*acd100(15)
      acd100(29)=acd100(12)*acd100(11)
      acd100(26)=acd100(29)+acd100(28)+acd100(26)+acd100(27)
      acd100(26)=acd100(9)*acd100(26)
      acd100(27)=acd100(18)*acd100(21)
      acd100(28)=acd100(3)*acd100(7)
      acd100(29)=acd100(16)*acd100(24)
      acd100(30)=acd100(12)*acd100(23)
      acd100(27)=acd100(30)+acd100(29)+acd100(27)+acd100(28)
      acd100(27)=acd100(6)*acd100(27)
      acd100(28)=acd100(14)*acd100(18)
      acd100(29)=acd100(3)*acd100(5)
      acd100(30)=acd100(16)*acd100(19)
      acd100(31)=acd100(12)*acd100(17)
      acd100(28)=acd100(31)+acd100(30)+acd100(28)+acd100(29)
      acd100(28)=acd100(4)*acd100(28)
      acd100(29)=acd100(1)*acd100(2)
      brack=acd100(25)+acd100(26)+acd100(27)+acd100(28)+2.0_ki*acd100(29)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd100h5
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
!---#[ subroutine reconstruct_d100:
   subroutine     reconstruct_d100(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group18
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group18), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_100:
      coeffs%coeffs_100%c0 = derivative(czip)
      coeffs%coeffs_100%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_100%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_100%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_100%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_100%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_100%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_100%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_100%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_100%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_100%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_100%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_100%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_100%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_100%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_100:
   end subroutine reconstruct_d100
!---#] subroutine reconstruct_d100:
end module     p0_dbaru_epnebbbarg_d100h5l1d
