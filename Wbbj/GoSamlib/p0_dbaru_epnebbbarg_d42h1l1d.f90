module     p0_dbaru_epnebbbarg_d42h1l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d42h1l1d.f90
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
   public :: derivative , reconstruct_d42
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd42h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(28) :: acd42
      complex(ki) :: brack
      acd42(1)=dotproduct(k2,qshift)
      acd42(2)=dotproduct(qshift,spvak4k3)
      acd42(3)=abb42(27)
      acd42(4)=dotproduct(k3,qshift)
      acd42(5)=abb42(25)
      acd42(6)=dotproduct(k4,qshift)
      acd42(7)=dotproduct(l5,qshift)
      acd42(8)=abb42(21)
      acd42(9)=dotproduct(l6,qshift)
      acd42(10)=dotproduct(qshift,qshift)
      acd42(11)=abb42(17)
      acd42(12)=dotproduct(qshift,spvak1k2)
      acd42(13)=abb42(14)
      acd42(14)=dotproduct(qshift,spvak1l5)
      acd42(15)=abb42(12)
      acd42(16)=dotproduct(qshift,spval6k2)
      acd42(17)=abb42(11)
      acd42(18)=dotproduct(qshift,spval6l5)
      acd42(19)=abb42(28)
      acd42(20)=abb42(15)
      acd42(21)=dotproduct(qshift,spvak1k3)
      acd42(22)=abb42(13)
      acd42(23)=acd42(9)+acd42(7)
      acd42(23)=acd42(23)*acd42(8)
      acd42(24)=acd42(3)*acd42(1)
      acd42(25)=acd42(13)*acd42(12)
      acd42(26)=acd42(15)*acd42(14)
      acd42(27)=acd42(17)*acd42(16)
      acd42(28)=acd42(19)*acd42(18)
      acd42(23)=acd42(23)-acd42(20)+acd42(28)+acd42(27)+acd42(26)+acd42(25)+acd&
      &42(24)
      acd42(23)=acd42(2)*acd42(23)
      acd42(24)=acd42(6)+acd42(4)
      acd42(24)=acd42(5)*acd42(24)
      acd42(25)=acd42(11)*acd42(10)
      acd42(26)=-acd42(22)*acd42(21)
      brack=acd42(23)+acd42(24)+acd42(25)+acd42(26)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd42h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(37) :: acd42
      complex(ki) :: brack
      acd42(1)=k2(iv1)
      acd42(2)=dotproduct(qshift,spvak4k3)
      acd42(3)=abb42(27)
      acd42(4)=k3(iv1)
      acd42(5)=abb42(25)
      acd42(6)=k4(iv1)
      acd42(7)=l5(iv1)
      acd42(8)=abb42(21)
      acd42(9)=l6(iv1)
      acd42(10)=qshift(iv1)
      acd42(11)=abb42(17)
      acd42(12)=spvak4k3(iv1)
      acd42(13)=dotproduct(k2,qshift)
      acd42(14)=dotproduct(l5,qshift)
      acd42(15)=dotproduct(l6,qshift)
      acd42(16)=dotproduct(qshift,spvak1k2)
      acd42(17)=abb42(14)
      acd42(18)=dotproduct(qshift,spvak1l5)
      acd42(19)=abb42(12)
      acd42(20)=dotproduct(qshift,spval6k2)
      acd42(21)=abb42(11)
      acd42(22)=dotproduct(qshift,spval6l5)
      acd42(23)=abb42(28)
      acd42(24)=abb42(15)
      acd42(25)=spvak1k2(iv1)
      acd42(26)=spvak1k3(iv1)
      acd42(27)=abb42(13)
      acd42(28)=spvak1l5(iv1)
      acd42(29)=spval6k2(iv1)
      acd42(30)=spval6l5(iv1)
      acd42(31)=-acd42(23)*acd42(30)
      acd42(32)=-acd42(21)*acd42(29)
      acd42(33)=-acd42(19)*acd42(28)
      acd42(34)=-acd42(17)*acd42(25)
      acd42(35)=-acd42(3)*acd42(1)
      acd42(36)=-acd42(9)-acd42(7)
      acd42(36)=acd42(8)*acd42(36)
      acd42(31)=acd42(36)+acd42(35)+acd42(34)+acd42(33)+acd42(31)+acd42(32)
      acd42(31)=acd42(2)*acd42(31)
      acd42(32)=-acd42(23)*acd42(22)
      acd42(33)=-acd42(21)*acd42(20)
      acd42(34)=-acd42(19)*acd42(18)
      acd42(35)=-acd42(17)*acd42(16)
      acd42(36)=-acd42(3)*acd42(13)
      acd42(37)=-acd42(15)-acd42(14)
      acd42(37)=acd42(8)*acd42(37)
      acd42(32)=acd42(37)+acd42(36)+acd42(35)+acd42(34)+acd42(33)+acd42(24)+acd&
      &42(32)
      acd42(32)=acd42(12)*acd42(32)
      acd42(33)=acd42(26)*acd42(27)
      acd42(34)=acd42(10)*acd42(11)
      acd42(35)=-acd42(6)-acd42(4)
      acd42(35)=acd42(5)*acd42(35)
      brack=acd42(31)+acd42(32)+acd42(33)-2.0_ki*acd42(34)+acd42(35)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd42h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(31) :: acd42
      complex(ki) :: brack
      acd42(1)=d(iv1,iv2)
      acd42(2)=abb42(17)
      acd42(3)=k2(iv1)
      acd42(4)=spvak4k3(iv2)
      acd42(5)=abb42(27)
      acd42(6)=k2(iv2)
      acd42(7)=spvak4k3(iv1)
      acd42(8)=l5(iv1)
      acd42(9)=abb42(21)
      acd42(10)=l5(iv2)
      acd42(11)=l6(iv1)
      acd42(12)=l6(iv2)
      acd42(13)=spvak1k2(iv2)
      acd42(14)=abb42(14)
      acd42(15)=spvak1l5(iv2)
      acd42(16)=abb42(12)
      acd42(17)=spval6k2(iv2)
      acd42(18)=abb42(11)
      acd42(19)=spval6l5(iv2)
      acd42(20)=abb42(28)
      acd42(21)=spvak1k2(iv1)
      acd42(22)=spvak1l5(iv1)
      acd42(23)=spval6k2(iv1)
      acd42(24)=spval6l5(iv1)
      acd42(25)=acd42(20)*acd42(19)
      acd42(26)=acd42(18)*acd42(17)
      acd42(27)=acd42(16)*acd42(15)
      acd42(28)=acd42(14)*acd42(13)
      acd42(29)=acd42(5)*acd42(6)
      acd42(30)=acd42(12)+acd42(10)
      acd42(30)=acd42(9)*acd42(30)
      acd42(25)=acd42(30)+acd42(29)+acd42(28)+acd42(27)+acd42(25)+acd42(26)
      acd42(25)=acd42(7)*acd42(25)
      acd42(26)=acd42(20)*acd42(24)
      acd42(27)=acd42(18)*acd42(23)
      acd42(28)=acd42(16)*acd42(22)
      acd42(29)=acd42(14)*acd42(21)
      acd42(30)=acd42(5)*acd42(3)
      acd42(31)=acd42(11)+acd42(8)
      acd42(31)=acd42(9)*acd42(31)
      acd42(26)=acd42(31)+acd42(30)+acd42(29)+acd42(28)+acd42(26)+acd42(27)
      acd42(26)=acd42(4)*acd42(26)
      acd42(27)=acd42(1)*acd42(2)
      brack=acd42(25)+acd42(26)+2.0_ki*acd42(27)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd42h1
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
      qshift = -k3+k2-k4
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
!---#[ subroutine reconstruct_d42:
   subroutine     reconstruct_d42(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group13
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group13), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_42:
      coeffs%coeffs_42%c0 = derivative(czip)
      coeffs%coeffs_42%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_42%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_42%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_42%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_42%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_42%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_42%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_42%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_42%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_42%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_42%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_42%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_42%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_42%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_42:
   end subroutine reconstruct_d42
!---#] subroutine reconstruct_d42:
end module     p0_dbaru_epnebbbarg_d42h1l1d
