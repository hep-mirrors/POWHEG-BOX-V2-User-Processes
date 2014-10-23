module     p0_dbaru_epnebbbarg_d113h4l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d113h4l1d.f90
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
   public :: derivative , reconstruct_d113
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd113h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd113
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd113h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(3) :: acd113
      complex(ki) :: brack
      acd113(1)=spvak7k2(iv1)
      acd113(2)=abb113(16)
      brack=-acd113(2)*acd113(1)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd113h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(20) :: acd113
      complex(ki) :: brack
      acd113(1)=spvak1k2(iv1)
      acd113(2)=spvak7k2(iv2)
      acd113(3)=abb113(17)
      acd113(4)=spvak1k2(iv2)
      acd113(5)=spvak7k2(iv1)
      acd113(6)=abb113(26)
      acd113(7)=spvak4k2(iv2)
      acd113(8)=abb113(14)
      acd113(9)=spval5k2(iv2)
      acd113(10)=abb113(9)
      acd113(11)=spval6k2(iv2)
      acd113(12)=abb113(21)
      acd113(13)=spvak4k2(iv1)
      acd113(14)=spval5k2(iv1)
      acd113(15)=spval6k2(iv1)
      acd113(16)=acd113(4)*acd113(3)
      acd113(17)=acd113(6)*acd113(2)
      acd113(18)=acd113(7)*acd113(8)
      acd113(19)=acd113(9)*acd113(10)
      acd113(20)=acd113(11)*acd113(12)
      acd113(16)=acd113(20)+acd113(19)+acd113(18)+2.0_ki*acd113(17)+acd113(16)
      acd113(16)=acd113(5)*acd113(16)
      acd113(17)=acd113(1)*acd113(3)
      acd113(18)=acd113(13)*acd113(8)
      acd113(19)=acd113(14)*acd113(10)
      acd113(20)=acd113(15)*acd113(12)
      acd113(17)=acd113(20)+acd113(19)+acd113(18)+acd113(17)
      acd113(17)=acd113(2)*acd113(17)
      brack=acd113(16)+acd113(17)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd113h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(27) :: acd113
      complex(ki) :: brack
      acd113(1)=spvak1k2(iv1)
      acd113(2)=spval5k2(iv2)
      acd113(3)=spvak7k2(iv3)
      acd113(4)=abb113(10)
      acd113(5)=spval5k2(iv3)
      acd113(6)=spvak7k2(iv2)
      acd113(7)=spval6k2(iv3)
      acd113(8)=abb113(18)
      acd113(9)=spval6k2(iv2)
      acd113(10)=spvak1k2(iv2)
      acd113(11)=spval5k2(iv1)
      acd113(12)=spvak7k2(iv1)
      acd113(13)=spval6k2(iv1)
      acd113(14)=spvak1k2(iv3)
      acd113(15)=spvak4k2(iv3)
      acd113(16)=abb113(12)
      acd113(17)=spvak4k2(iv2)
      acd113(18)=spvak4k2(iv1)
      acd113(19)=abb113(13)
      acd113(20)=acd113(11)*acd113(4)
      acd113(21)=acd113(13)*acd113(8)
      acd113(20)=acd113(20)+acd113(21)
      acd113(21)=-acd113(20)*acd113(10)
      acd113(22)=acd113(2)*acd113(4)
      acd113(23)=acd113(9)*acd113(8)
      acd113(22)=acd113(22)+acd113(23)
      acd113(23)=-acd113(22)*acd113(1)
      acd113(21)=acd113(23)+acd113(21)
      acd113(21)=acd113(3)*acd113(21)
      acd113(23)=-acd113(1)*acd113(6)
      acd113(24)=-acd113(10)*acd113(12)
      acd113(23)=acd113(24)+acd113(23)
      acd113(24)=acd113(5)*acd113(4)
      acd113(25)=acd113(7)*acd113(8)
      acd113(24)=acd113(24)+acd113(25)
      acd113(23)=acd113(24)*acd113(23)
      acd113(20)=-acd113(6)*acd113(20)
      acd113(22)=-acd113(12)*acd113(22)
      acd113(20)=acd113(22)+acd113(20)
      acd113(20)=acd113(14)*acd113(20)
      acd113(22)=acd113(11)*acd113(16)
      acd113(24)=acd113(13)*acd113(19)
      acd113(22)=acd113(22)+acd113(24)
      acd113(24)=-acd113(6)*acd113(22)
      acd113(25)=acd113(2)*acd113(16)
      acd113(26)=acd113(9)*acd113(19)
      acd113(25)=acd113(25)+acd113(26)
      acd113(26)=-acd113(12)*acd113(25)
      acd113(24)=acd113(26)+acd113(24)
      acd113(24)=acd113(15)*acd113(24)
      acd113(22)=-acd113(3)*acd113(22)
      acd113(26)=acd113(5)*acd113(16)
      acd113(27)=acd113(7)*acd113(19)
      acd113(26)=acd113(26)+acd113(27)
      acd113(27)=-acd113(12)*acd113(26)
      acd113(22)=acd113(27)+acd113(22)
      acd113(22)=acd113(17)*acd113(22)
      acd113(25)=-acd113(3)*acd113(25)
      acd113(26)=-acd113(6)*acd113(26)
      acd113(25)=acd113(26)+acd113(25)
      acd113(25)=acd113(18)*acd113(25)
      brack=acd113(20)+acd113(21)+acd113(22)+acd113(23)+acd113(24)+acd113(25)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd113h4
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
!---#[ subroutine reconstruct_d113:
   subroutine     reconstruct_d113(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group20
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group20), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_113:
      coeffs%coeffs_113%c0 = derivative(czip)
      coeffs%coeffs_113%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_113%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_113%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_113%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_113%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_113%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_113%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_113%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_113%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_113%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_113%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_113%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_113%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_113%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_113%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_113%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_113%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_113%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_113%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_113%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_113%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_113%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_113%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_113%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_113%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_113%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_113%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_113%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_113%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_113%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_113%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_113%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_113%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_113%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_113:
   end subroutine reconstruct_d113
!---#] subroutine reconstruct_d113:
end module     p0_dbaru_epnebbbarg_d113h4l1d
