module     p0_dbaru_epnebbbarg_d225h4l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d225h4l1d.f90
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
   public :: derivative , reconstruct_d225
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd225h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(24) :: acd225
      complex(ki) :: brack
      acd225(1)=dotproduct(qshift,spvak1k2)
      acd225(2)=dotproduct(qshift,spval5k2)
      acd225(3)=abb225(16)
      acd225(4)=dotproduct(qshift,spval6k2)
      acd225(5)=abb225(19)
      acd225(6)=dotproduct(qshift,spvak7k2)
      acd225(7)=abb225(15)
      acd225(8)=abb225(13)
      acd225(9)=dotproduct(qshift,spvak4k2)
      acd225(10)=abb225(39)
      acd225(11)=abb225(14)
      acd225(12)=abb225(79)
      acd225(13)=abb225(25)
      acd225(14)=abb225(40)
      acd225(15)=abb225(17)
      acd225(16)=dotproduct(qshift,spvak3k2)
      acd225(17)=abb225(18)
      acd225(18)=abb225(27)
      acd225(19)=acd225(3)*acd225(2)
      acd225(20)=acd225(5)*acd225(4)
      acd225(21)=acd225(7)*acd225(6)
      acd225(19)=-acd225(8)+acd225(21)+acd225(19)+acd225(20)
      acd225(19)=acd225(1)*acd225(19)
      acd225(20)=acd225(10)*acd225(2)
      acd225(21)=acd225(12)*acd225(4)
      acd225(22)=acd225(14)*acd225(6)
      acd225(20)=-acd225(18)+acd225(22)+acd225(21)+acd225(20)
      acd225(20)=acd225(9)*acd225(20)
      acd225(21)=-acd225(11)*acd225(2)
      acd225(22)=-acd225(13)*acd225(4)
      acd225(23)=-acd225(15)*acd225(6)
      acd225(24)=-acd225(17)*acd225(16)
      brack=acd225(19)+acd225(20)+acd225(21)+acd225(22)+acd225(23)+acd225(24)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd225h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(31) :: acd225
      complex(ki) :: brack
      acd225(1)=spvak1k2(iv1)
      acd225(2)=dotproduct(qshift,spval5k2)
      acd225(3)=abb225(16)
      acd225(4)=dotproduct(qshift,spval6k2)
      acd225(5)=abb225(19)
      acd225(6)=dotproduct(qshift,spvak7k2)
      acd225(7)=abb225(15)
      acd225(8)=abb225(13)
      acd225(9)=spval5k2(iv1)
      acd225(10)=dotproduct(qshift,spvak1k2)
      acd225(11)=dotproduct(qshift,spvak4k2)
      acd225(12)=abb225(39)
      acd225(13)=abb225(14)
      acd225(14)=spval6k2(iv1)
      acd225(15)=abb225(79)
      acd225(16)=abb225(25)
      acd225(17)=spvak7k2(iv1)
      acd225(18)=abb225(40)
      acd225(19)=abb225(17)
      acd225(20)=spvak3k2(iv1)
      acd225(21)=abb225(18)
      acd225(22)=spvak4k2(iv1)
      acd225(23)=abb225(27)
      acd225(24)=acd225(6)*acd225(18)
      acd225(25)=acd225(4)*acd225(15)
      acd225(26)=acd225(2)*acd225(12)
      acd225(24)=acd225(26)+acd225(25)-acd225(23)+acd225(24)
      acd225(24)=acd225(22)*acd225(24)
      acd225(25)=acd225(6)*acd225(7)
      acd225(26)=acd225(4)*acd225(5)
      acd225(27)=acd225(2)*acd225(3)
      acd225(25)=acd225(27)+acd225(26)-acd225(8)+acd225(25)
      acd225(25)=acd225(1)*acd225(25)
      acd225(26)=acd225(17)*acd225(18)
      acd225(27)=acd225(14)*acd225(15)
      acd225(26)=acd225(26)+acd225(27)
      acd225(26)=acd225(11)*acd225(26)
      acd225(27)=acd225(17)*acd225(7)
      acd225(28)=acd225(14)*acd225(5)
      acd225(27)=acd225(27)+acd225(28)
      acd225(27)=acd225(10)*acd225(27)
      acd225(28)=acd225(11)*acd225(12)
      acd225(29)=acd225(10)*acd225(3)
      acd225(28)=acd225(29)-acd225(13)+acd225(28)
      acd225(28)=acd225(9)*acd225(28)
      acd225(29)=-acd225(20)*acd225(21)
      acd225(30)=-acd225(17)*acd225(19)
      acd225(31)=-acd225(14)*acd225(16)
      brack=acd225(24)+acd225(25)+acd225(26)+acd225(27)+acd225(28)+acd225(29)+a&
      &cd225(30)+acd225(31)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd225h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(22) :: acd225
      complex(ki) :: brack
      acd225(1)=spvak1k2(iv1)
      acd225(2)=spval5k2(iv2)
      acd225(3)=abb225(16)
      acd225(4)=spval6k2(iv2)
      acd225(5)=abb225(19)
      acd225(6)=spvak7k2(iv2)
      acd225(7)=abb225(15)
      acd225(8)=spvak1k2(iv2)
      acd225(9)=spval5k2(iv1)
      acd225(10)=spval6k2(iv1)
      acd225(11)=spvak7k2(iv1)
      acd225(12)=spvak4k2(iv2)
      acd225(13)=abb225(39)
      acd225(14)=spvak4k2(iv1)
      acd225(15)=abb225(79)
      acd225(16)=abb225(40)
      acd225(17)=acd225(6)*acd225(16)
      acd225(18)=acd225(4)*acd225(15)
      acd225(19)=acd225(2)*acd225(13)
      acd225(17)=acd225(19)+acd225(17)+acd225(18)
      acd225(17)=acd225(14)*acd225(17)
      acd225(18)=acd225(11)*acd225(16)
      acd225(19)=acd225(10)*acd225(15)
      acd225(20)=acd225(9)*acd225(13)
      acd225(18)=acd225(20)+acd225(18)+acd225(19)
      acd225(18)=acd225(12)*acd225(18)
      acd225(19)=acd225(7)*acd225(11)
      acd225(20)=acd225(5)*acd225(10)
      acd225(21)=acd225(3)*acd225(9)
      acd225(19)=acd225(21)+acd225(19)+acd225(20)
      acd225(19)=acd225(8)*acd225(19)
      acd225(20)=acd225(6)*acd225(7)
      acd225(21)=acd225(4)*acd225(5)
      acd225(22)=acd225(2)*acd225(3)
      acd225(20)=acd225(22)+acd225(20)+acd225(21)
      acd225(20)=acd225(1)*acd225(20)
      brack=acd225(17)+acd225(18)+acd225(19)+acd225(20)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd225h4
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
      qshift = -k2
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
!---#[ subroutine reconstruct_d225:
   subroutine     reconstruct_d225(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group18
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group18), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_225:
      coeffs%coeffs_225%c0 = derivative(czip)
      coeffs%coeffs_225%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_225%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_225%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_225%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_225%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_225%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_225%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_225%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_225%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_225%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_225%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_225%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_225%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_225%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_225:
   end subroutine reconstruct_d225
!---#] subroutine reconstruct_d225:
end module     p0_dbaru_epnebbbarg_d225h4l1d
