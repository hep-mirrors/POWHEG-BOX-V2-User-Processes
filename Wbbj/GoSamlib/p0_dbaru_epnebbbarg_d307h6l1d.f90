module     p0_dbaru_epnebbbarg_d307h6l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity6d307h6l1d.f90
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
   public :: derivative , reconstruct_d307
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd307h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(26) :: acd307
      complex(ki) :: brack
      acd307(1)=dotproduct(k2,qshift)
      acd307(2)=dotproduct(qshift,spvak1k2)
      acd307(3)=dotproduct(qshift,spvak7k2)
      acd307(4)=abb307(20)
      acd307(5)=dotproduct(qshift,spvak4k2)
      acd307(6)=abb307(12)
      acd307(7)=abb307(14)
      acd307(8)=abb307(33)
      acd307(9)=dotproduct(l6,qshift)
      acd307(10)=abb307(15)
      acd307(11)=dotproduct(qshift,qshift)
      acd307(12)=abb307(13)
      acd307(13)=abb307(16)
      acd307(14)=abb307(11)
      acd307(15)=abb307(17)
      acd307(16)=dotproduct(qshift,spval6k2)
      acd307(17)=abb307(19)
      acd307(18)=abb307(10)
      acd307(19)=abb307(18)
      acd307(20)=abb307(9)
      acd307(21)=-acd307(4)*acd307(2)
      acd307(22)=-acd307(6)*acd307(5)
      acd307(21)=acd307(7)+acd307(21)+acd307(22)
      acd307(21)=acd307(21)*acd307(1)
      acd307(22)=acd307(10)*acd307(9)
      acd307(23)=-acd307(12)*acd307(11)
      acd307(24)=acd307(14)*acd307(2)
      acd307(25)=acd307(15)*acd307(5)
      acd307(26)=acd307(17)*acd307(16)
      acd307(21)=acd307(25)+acd307(24)+acd307(21)-acd307(18)+acd307(26)+acd307(&
      &23)+acd307(22)
      acd307(21)=acd307(3)*acd307(21)
      acd307(22)=-acd307(8)*acd307(1)
      acd307(23)=acd307(13)*acd307(11)
      acd307(24)=-acd307(19)*acd307(16)
      brack=acd307(20)+acd307(21)+acd307(22)+acd307(23)+acd307(24)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd307h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(35) :: acd307
      complex(ki) :: brack
      acd307(1)=k2(iv1)
      acd307(2)=dotproduct(qshift,spvak1k2)
      acd307(3)=dotproduct(qshift,spvak7k2)
      acd307(4)=abb307(20)
      acd307(5)=dotproduct(qshift,spvak4k2)
      acd307(6)=abb307(12)
      acd307(7)=abb307(14)
      acd307(8)=abb307(33)
      acd307(9)=l6(iv1)
      acd307(10)=abb307(15)
      acd307(11)=qshift(iv1)
      acd307(12)=abb307(13)
      acd307(13)=abb307(16)
      acd307(14)=spvak1k2(iv1)
      acd307(15)=dotproduct(k2,qshift)
      acd307(16)=abb307(11)
      acd307(17)=spvak7k2(iv1)
      acd307(18)=dotproduct(l6,qshift)
      acd307(19)=dotproduct(qshift,qshift)
      acd307(20)=abb307(17)
      acd307(21)=dotproduct(qshift,spval6k2)
      acd307(22)=abb307(19)
      acd307(23)=abb307(10)
      acd307(24)=spvak4k2(iv1)
      acd307(25)=spval6k2(iv1)
      acd307(26)=abb307(18)
      acd307(27)=acd307(5)*acd307(6)
      acd307(28)=acd307(2)*acd307(4)
      acd307(27)=-acd307(7)+acd307(27)+acd307(28)
      acd307(28)=acd307(1)*acd307(27)
      acd307(29)=acd307(6)*acd307(24)
      acd307(30)=acd307(4)*acd307(14)
      acd307(29)=acd307(29)+acd307(30)
      acd307(29)=acd307(15)*acd307(29)
      acd307(30)=-acd307(22)*acd307(25)
      acd307(31)=-acd307(20)*acd307(24)
      acd307(32)=-acd307(14)*acd307(16)
      acd307(33)=2.0_ki*acd307(11)
      acd307(34)=acd307(12)*acd307(33)
      acd307(35)=-acd307(10)*acd307(9)
      acd307(28)=acd307(29)+acd307(28)+acd307(35)+acd307(34)+acd307(32)+acd307(&
      &30)+acd307(31)
      acd307(28)=acd307(3)*acd307(28)
      acd307(27)=acd307(15)*acd307(27)
      acd307(29)=-acd307(22)*acd307(21)
      acd307(30)=acd307(12)*acd307(19)
      acd307(31)=-acd307(10)*acd307(18)
      acd307(32)=-acd307(5)*acd307(20)
      acd307(34)=-acd307(2)*acd307(16)
      acd307(27)=acd307(27)+acd307(34)+acd307(32)+acd307(31)+acd307(30)+acd307(&
      &23)+acd307(29)
      acd307(27)=acd307(17)*acd307(27)
      acd307(29)=acd307(25)*acd307(26)
      acd307(30)=-acd307(13)*acd307(33)
      acd307(31)=acd307(1)*acd307(8)
      brack=acd307(27)+acd307(28)+acd307(29)+acd307(30)+acd307(31)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd307h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(37) :: acd307
      complex(ki) :: brack
      acd307(1)=d(iv1,iv2)
      acd307(2)=dotproduct(qshift,spvak7k2)
      acd307(3)=abb307(13)
      acd307(4)=abb307(16)
      acd307(5)=k2(iv1)
      acd307(6)=spvak7k2(iv2)
      acd307(7)=dotproduct(qshift,spvak1k2)
      acd307(8)=abb307(20)
      acd307(9)=dotproduct(qshift,spvak4k2)
      acd307(10)=abb307(12)
      acd307(11)=abb307(14)
      acd307(12)=spvak1k2(iv2)
      acd307(13)=spvak4k2(iv2)
      acd307(14)=k2(iv2)
      acd307(15)=spvak7k2(iv1)
      acd307(16)=spvak1k2(iv1)
      acd307(17)=spvak4k2(iv1)
      acd307(18)=l6(iv1)
      acd307(19)=abb307(15)
      acd307(20)=l6(iv2)
      acd307(21)=qshift(iv1)
      acd307(22)=qshift(iv2)
      acd307(23)=dotproduct(k2,qshift)
      acd307(24)=abb307(11)
      acd307(25)=abb307(17)
      acd307(26)=spval6k2(iv2)
      acd307(27)=abb307(19)
      acd307(28)=spval6k2(iv1)
      acd307(29)=-acd307(23)*acd307(13)
      acd307(30)=-acd307(14)*acd307(9)
      acd307(29)=acd307(29)+acd307(30)
      acd307(29)=acd307(10)*acd307(29)
      acd307(30)=-acd307(23)*acd307(12)
      acd307(31)=-acd307(14)*acd307(7)
      acd307(30)=acd307(30)+acd307(31)
      acd307(30)=acd307(8)*acd307(30)
      acd307(31)=acd307(27)*acd307(26)
      acd307(32)=acd307(19)*acd307(20)
      acd307(33)=acd307(13)*acd307(25)
      acd307(34)=acd307(12)*acd307(24)
      acd307(35)=2.0_ki*acd307(3)
      acd307(36)=-acd307(22)*acd307(35)
      acd307(37)=acd307(14)*acd307(11)
      acd307(29)=acd307(30)+acd307(29)+acd307(37)+acd307(36)+acd307(34)+acd307(&
      &33)+acd307(31)+acd307(32)
      acd307(29)=acd307(15)*acd307(29)
      acd307(30)=-acd307(23)*acd307(17)
      acd307(31)=-acd307(5)*acd307(9)
      acd307(30)=acd307(30)+acd307(31)
      acd307(30)=acd307(10)*acd307(30)
      acd307(31)=-acd307(23)*acd307(16)
      acd307(32)=-acd307(5)*acd307(7)
      acd307(31)=acd307(31)+acd307(32)
      acd307(31)=acd307(8)*acd307(31)
      acd307(32)=acd307(27)*acd307(28)
      acd307(33)=acd307(19)*acd307(18)
      acd307(34)=acd307(17)*acd307(25)
      acd307(36)=acd307(16)*acd307(24)
      acd307(35)=-acd307(21)*acd307(35)
      acd307(37)=acd307(5)*acd307(11)
      acd307(30)=acd307(31)+acd307(30)+acd307(37)+acd307(35)+acd307(36)+acd307(&
      &34)+acd307(32)+acd307(33)
      acd307(30)=acd307(6)*acd307(30)
      acd307(31)=-acd307(14)*acd307(17)
      acd307(32)=-acd307(5)*acd307(13)
      acd307(31)=acd307(31)+acd307(32)
      acd307(31)=acd307(10)*acd307(31)
      acd307(32)=-acd307(14)*acd307(16)
      acd307(33)=-acd307(5)*acd307(12)
      acd307(32)=acd307(32)+acd307(33)
      acd307(32)=acd307(8)*acd307(32)
      acd307(31)=acd307(32)+acd307(31)
      acd307(31)=acd307(2)*acd307(31)
      acd307(32)=-acd307(2)*acd307(3)
      acd307(32)=acd307(4)+acd307(32)
      acd307(32)=acd307(1)*acd307(32)
      brack=acd307(29)+acd307(30)+acd307(31)+2.0_ki*acd307(32)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd307h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(24) :: acd307
      complex(ki) :: brack
      acd307(1)=d(iv1,iv2)
      acd307(2)=spvak7k2(iv3)
      acd307(3)=abb307(13)
      acd307(4)=d(iv1,iv3)
      acd307(5)=spvak7k2(iv2)
      acd307(6)=d(iv2,iv3)
      acd307(7)=spvak7k2(iv1)
      acd307(8)=k2(iv1)
      acd307(9)=spvak1k2(iv3)
      acd307(10)=abb307(20)
      acd307(11)=spvak4k2(iv3)
      acd307(12)=abb307(12)
      acd307(13)=spvak1k2(iv2)
      acd307(14)=spvak4k2(iv2)
      acd307(15)=k2(iv2)
      acd307(16)=spvak1k2(iv1)
      acd307(17)=spvak4k2(iv1)
      acd307(18)=k2(iv3)
      acd307(19)=acd307(8)*acd307(5)
      acd307(20)=acd307(15)*acd307(7)
      acd307(19)=acd307(19)+acd307(20)
      acd307(20)=acd307(9)*acd307(19)
      acd307(21)=acd307(8)*acd307(2)
      acd307(22)=acd307(18)*acd307(7)
      acd307(21)=acd307(21)+acd307(22)
      acd307(22)=acd307(13)*acd307(21)
      acd307(23)=acd307(15)*acd307(2)
      acd307(24)=acd307(18)*acd307(5)
      acd307(23)=acd307(23)+acd307(24)
      acd307(24)=acd307(16)*acd307(23)
      acd307(20)=acd307(24)+acd307(22)+acd307(20)
      acd307(20)=acd307(10)*acd307(20)
      acd307(19)=acd307(11)*acd307(19)
      acd307(21)=acd307(14)*acd307(21)
      acd307(22)=acd307(17)*acd307(23)
      acd307(19)=acd307(22)+acd307(21)+acd307(19)
      acd307(19)=acd307(12)*acd307(19)
      acd307(21)=acd307(1)*acd307(2)
      acd307(22)=acd307(4)*acd307(5)
      acd307(23)=acd307(6)*acd307(7)
      acd307(21)=acd307(23)+acd307(22)+acd307(21)
      acd307(22)=2.0_ki*acd307(3)
      acd307(21)=acd307(22)*acd307(21)
      brack=acd307(19)+acd307(20)+acd307(21)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd307h6
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
      qshift = k6
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
!---#[ subroutine reconstruct_d307:
   subroutine     reconstruct_d307(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group18
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group18), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_307:
      coeffs%coeffs_307%c0 = derivative(czip)
      coeffs%coeffs_307%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_307%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_307%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_307%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_307%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_307%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_307%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_307%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_307%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_307%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_307%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_307%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_307%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_307%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_307%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_307%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_307%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_307%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_307%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_307%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_307%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_307%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_307%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_307%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_307%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_307%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_307%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_307%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_307%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_307%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_307%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_307%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_307%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_307%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_307:
   end subroutine reconstruct_d307
!---#] subroutine reconstruct_d307:
end module     p0_dbaru_epnebbbarg_d307h6l1d
