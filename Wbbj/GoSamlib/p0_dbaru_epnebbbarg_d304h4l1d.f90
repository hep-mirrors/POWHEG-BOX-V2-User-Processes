module     p0_dbaru_epnebbbarg_d304h4l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d304h4l1d.f90
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
   public :: derivative , reconstruct_d304
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd304h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(16) :: acd304
      complex(ki) :: brack
      acd304(1)=dotproduct(qshift,spvak1k2)
      acd304(2)=dotproduct(qshift,spval6k2)
      acd304(3)=dotproduct(qshift,spvak7k2)
      acd304(4)=abb304(12)
      acd304(5)=abb304(8)
      acd304(6)=dotproduct(qshift,spvak4k2)
      acd304(7)=abb304(13)
      acd304(8)=abb304(9)
      acd304(9)=abb304(10)
      acd304(10)=dotproduct(qshift,spval5k2)
      acd304(11)=abb304(11)
      acd304(12)=abb304(17)
      acd304(13)=-acd304(4)*acd304(1)
      acd304(14)=-acd304(7)*acd304(6)
      acd304(13)=acd304(8)+acd304(14)+acd304(13)
      acd304(13)=acd304(13)*acd304(3)
      acd304(14)=acd304(5)*acd304(1)
      acd304(15)=acd304(9)*acd304(6)
      acd304(16)=acd304(11)*acd304(10)
      acd304(13)=acd304(15)+acd304(14)+acd304(13)-acd304(12)+acd304(16)
      brack=acd304(13)*acd304(2)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd304h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(23) :: acd304
      complex(ki) :: brack
      acd304(1)=spvak1k2(iv1)
      acd304(2)=dotproduct(qshift,spval6k2)
      acd304(3)=dotproduct(qshift,spvak7k2)
      acd304(4)=abb304(12)
      acd304(5)=abb304(8)
      acd304(6)=spval6k2(iv1)
      acd304(7)=dotproduct(qshift,spvak1k2)
      acd304(8)=dotproduct(qshift,spvak4k2)
      acd304(9)=abb304(13)
      acd304(10)=abb304(9)
      acd304(11)=abb304(10)
      acd304(12)=dotproduct(qshift,spval5k2)
      acd304(13)=abb304(11)
      acd304(14)=abb304(17)
      acd304(15)=spvak7k2(iv1)
      acd304(16)=spvak4k2(iv1)
      acd304(17)=spval5k2(iv1)
      acd304(18)=acd304(8)*acd304(9)
      acd304(19)=acd304(4)*acd304(7)
      acd304(18)=-acd304(10)+acd304(18)+acd304(19)
      acd304(19)=-acd304(15)*acd304(18)
      acd304(20)=-acd304(9)*acd304(16)
      acd304(21)=-acd304(4)*acd304(1)
      acd304(20)=acd304(20)+acd304(21)
      acd304(20)=acd304(3)*acd304(20)
      acd304(21)=acd304(13)*acd304(17)
      acd304(22)=acd304(11)*acd304(16)
      acd304(23)=acd304(1)*acd304(5)
      acd304(19)=acd304(20)+acd304(23)+acd304(21)+acd304(22)+acd304(19)
      acd304(19)=acd304(2)*acd304(19)
      acd304(18)=-acd304(3)*acd304(18)
      acd304(20)=acd304(13)*acd304(12)
      acd304(21)=acd304(8)*acd304(11)
      acd304(22)=acd304(7)*acd304(5)
      acd304(18)=acd304(18)+acd304(22)+acd304(21)-acd304(14)+acd304(20)
      acd304(18)=acd304(6)*acd304(18)
      brack=acd304(18)+acd304(19)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd304h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(29) :: acd304
      complex(ki) :: brack
      acd304(1)=spvak1k2(iv1)
      acd304(2)=spval6k2(iv2)
      acd304(3)=dotproduct(qshift,spvak7k2)
      acd304(4)=abb304(12)
      acd304(5)=abb304(8)
      acd304(6)=spvak7k2(iv2)
      acd304(7)=dotproduct(qshift,spval6k2)
      acd304(8)=spvak1k2(iv2)
      acd304(9)=spval6k2(iv1)
      acd304(10)=spvak7k2(iv1)
      acd304(11)=dotproduct(qshift,spvak1k2)
      acd304(12)=dotproduct(qshift,spvak4k2)
      acd304(13)=abb304(13)
      acd304(14)=abb304(9)
      acd304(15)=spvak4k2(iv2)
      acd304(16)=abb304(10)
      acd304(17)=spval5k2(iv2)
      acd304(18)=abb304(11)
      acd304(19)=spvak4k2(iv1)
      acd304(20)=spval5k2(iv1)
      acd304(21)=-acd304(11)*acd304(4)
      acd304(22)=-acd304(12)*acd304(13)
      acd304(21)=acd304(14)+acd304(22)+acd304(21)
      acd304(22)=acd304(6)*acd304(9)
      acd304(23)=acd304(10)*acd304(2)
      acd304(22)=acd304(22)+acd304(23)
      acd304(21)=acd304(22)*acd304(21)
      acd304(22)=acd304(17)*acd304(9)
      acd304(23)=acd304(20)*acd304(2)
      acd304(22)=acd304(23)+acd304(22)
      acd304(22)=acd304(18)*acd304(22)
      acd304(23)=acd304(3)*acd304(4)
      acd304(24)=-acd304(2)*acd304(23)
      acd304(25)=acd304(7)*acd304(6)
      acd304(26)=-acd304(4)*acd304(25)
      acd304(24)=acd304(24)+acd304(26)
      acd304(24)=acd304(1)*acd304(24)
      acd304(23)=-acd304(9)*acd304(23)
      acd304(26)=acd304(7)*acd304(10)
      acd304(27)=-acd304(4)*acd304(26)
      acd304(23)=acd304(23)+acd304(27)
      acd304(23)=acd304(8)*acd304(23)
      acd304(27)=acd304(3)*acd304(13)
      acd304(28)=-acd304(9)*acd304(27)
      acd304(26)=-acd304(13)*acd304(26)
      acd304(26)=acd304(28)+acd304(26)
      acd304(26)=acd304(15)*acd304(26)
      acd304(27)=-acd304(2)*acd304(27)
      acd304(25)=-acd304(13)*acd304(25)
      acd304(25)=acd304(27)+acd304(25)
      acd304(25)=acd304(19)*acd304(25)
      acd304(27)=acd304(1)*acd304(2)
      acd304(28)=acd304(8)*acd304(9)
      acd304(27)=acd304(27)+acd304(28)
      acd304(27)=acd304(5)*acd304(27)
      acd304(28)=acd304(15)*acd304(9)
      acd304(29)=acd304(19)*acd304(2)
      acd304(28)=acd304(28)+acd304(29)
      acd304(28)=acd304(16)*acd304(28)
      brack=acd304(21)+acd304(22)+acd304(23)+acd304(24)+acd304(25)+acd304(26)+a&
      &cd304(27)+acd304(28)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd304h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(20) :: acd304
      complex(ki) :: brack
      acd304(1)=spvak1k2(iv1)
      acd304(2)=spval6k2(iv2)
      acd304(3)=spvak7k2(iv3)
      acd304(4)=abb304(12)
      acd304(5)=spval6k2(iv3)
      acd304(6)=spvak7k2(iv2)
      acd304(7)=spvak1k2(iv2)
      acd304(8)=spval6k2(iv1)
      acd304(9)=spvak7k2(iv1)
      acd304(10)=spvak1k2(iv3)
      acd304(11)=spvak4k2(iv3)
      acd304(12)=abb304(13)
      acd304(13)=spvak4k2(iv2)
      acd304(14)=spvak4k2(iv1)
      acd304(15)=acd304(3)*acd304(2)
      acd304(16)=acd304(6)*acd304(5)
      acd304(15)=acd304(15)+acd304(16)
      acd304(16)=-acd304(1)*acd304(15)
      acd304(17)=acd304(8)*acd304(3)
      acd304(18)=acd304(9)*acd304(5)
      acd304(17)=acd304(17)+acd304(18)
      acd304(18)=-acd304(7)*acd304(17)
      acd304(19)=acd304(8)*acd304(6)
      acd304(20)=acd304(9)*acd304(2)
      acd304(19)=acd304(19)+acd304(20)
      acd304(20)=-acd304(10)*acd304(19)
      acd304(16)=acd304(20)+acd304(16)+acd304(18)
      acd304(16)=acd304(4)*acd304(16)
      acd304(18)=-acd304(11)*acd304(19)
      acd304(17)=-acd304(13)*acd304(17)
      acd304(15)=-acd304(14)*acd304(15)
      acd304(15)=acd304(15)+acd304(17)+acd304(18)
      acd304(15)=acd304(12)*acd304(15)
      brack=acd304(15)+acd304(16)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd304h4
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
      qshift = -k6
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
!---#[ subroutine reconstruct_d304:
   subroutine     reconstruct_d304(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group16
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group16), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_304:
      coeffs%coeffs_304%c0 = derivative(czip)
      coeffs%coeffs_304%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_304%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_304%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_304%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_304%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_304%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_304%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_304%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_304%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_304%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_304%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_304%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_304%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_304%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_304%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_304%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_304%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_304%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_304%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_304%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_304%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_304%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_304%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_304%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_304%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_304%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_304%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_304%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_304%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_304%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_304%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_304%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_304%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_304%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_304:
   end subroutine reconstruct_d304
!---#] subroutine reconstruct_d304:
end module     p0_dbaru_epnebbbarg_d304h4l1d
