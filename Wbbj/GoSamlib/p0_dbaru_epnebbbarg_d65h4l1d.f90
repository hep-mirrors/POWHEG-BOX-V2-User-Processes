module     p0_dbaru_epnebbbarg_d65h4l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d65h4l1d.f90
   ! generator: buildfortran_d.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d65
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd65h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(43) :: acd65
      complex(ki) :: brack
      acd65(1)=dotproduct(k1,qshift)
      acd65(2)=abb65(19)
      acd65(3)=dotproduct(k2,qshift)
      acd65(4)=abb65(31)
      acd65(5)=dotproduct(l5,qshift)
      acd65(6)=abb65(30)
      acd65(7)=dotproduct(l6,qshift)
      acd65(8)=abb65(29)
      acd65(9)=dotproduct(qshift,spvak1k2)
      acd65(10)=abb65(15)
      acd65(11)=dotproduct(qshift,spvak1l5)
      acd65(12)=abb65(21)
      acd65(13)=dotproduct(qshift,spvak1l6)
      acd65(14)=abb65(26)
      acd65(15)=dotproduct(qshift,spval5k1)
      acd65(16)=abb65(25)
      acd65(17)=dotproduct(qshift,spval5k2)
      acd65(18)=abb65(20)
      acd65(19)=dotproduct(qshift,spval5l6)
      acd65(20)=abb65(22)
      acd65(21)=dotproduct(qshift,spval6k1)
      acd65(22)=abb65(18)
      acd65(23)=dotproduct(qshift,spval6k2)
      acd65(24)=abb65(13)
      acd65(25)=dotproduct(qshift,spval6l5)
      acd65(26)=abb65(16)
      acd65(27)=dotproduct(qshift,spvak7k2)
      acd65(28)=abb65(12)
      acd65(29)=abb65(14)
      acd65(30)=-acd65(2)*acd65(1)
      acd65(31)=-acd65(4)*acd65(3)
      acd65(32)=-acd65(6)*acd65(5)
      acd65(33)=-acd65(8)*acd65(7)
      acd65(34)=-acd65(10)*acd65(9)
      acd65(35)=-acd65(12)*acd65(11)
      acd65(36)=-acd65(14)*acd65(13)
      acd65(37)=-acd65(16)*acd65(15)
      acd65(38)=-acd65(18)*acd65(17)
      acd65(39)=-acd65(20)*acd65(19)
      acd65(40)=-acd65(22)*acd65(21)
      acd65(41)=-acd65(24)*acd65(23)
      acd65(42)=-acd65(26)*acd65(25)
      acd65(43)=-acd65(28)*acd65(27)
      brack=acd65(29)+acd65(30)+acd65(31)+acd65(32)+acd65(33)+acd65(34)+acd65(3&
      &5)+acd65(36)+acd65(37)+acd65(38)+acd65(39)+acd65(40)+acd65(41)+acd65(42)&
      &+acd65(43)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd65h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(42) :: acd65
      complex(ki) :: brack
      acd65(1)=k1(iv1)
      acd65(2)=abb65(19)
      acd65(3)=k2(iv1)
      acd65(4)=abb65(31)
      acd65(5)=l5(iv1)
      acd65(6)=abb65(30)
      acd65(7)=l6(iv1)
      acd65(8)=abb65(29)
      acd65(9)=spvak1k2(iv1)
      acd65(10)=abb65(15)
      acd65(11)=spvak1l5(iv1)
      acd65(12)=abb65(21)
      acd65(13)=spvak1l6(iv1)
      acd65(14)=abb65(26)
      acd65(15)=spval5k1(iv1)
      acd65(16)=abb65(25)
      acd65(17)=spval5k2(iv1)
      acd65(18)=abb65(20)
      acd65(19)=spval5l6(iv1)
      acd65(20)=abb65(22)
      acd65(21)=spval6k1(iv1)
      acd65(22)=abb65(18)
      acd65(23)=spval6k2(iv1)
      acd65(24)=abb65(13)
      acd65(25)=spval6l5(iv1)
      acd65(26)=abb65(16)
      acd65(27)=spvak7k2(iv1)
      acd65(28)=abb65(12)
      acd65(29)=acd65(2)*acd65(1)
      acd65(30)=acd65(4)*acd65(3)
      acd65(31)=acd65(6)*acd65(5)
      acd65(32)=acd65(8)*acd65(7)
      acd65(33)=acd65(10)*acd65(9)
      acd65(34)=acd65(12)*acd65(11)
      acd65(35)=acd65(14)*acd65(13)
      acd65(36)=acd65(16)*acd65(15)
      acd65(37)=acd65(18)*acd65(17)
      acd65(38)=acd65(20)*acd65(19)
      acd65(39)=acd65(22)*acd65(21)
      acd65(40)=acd65(24)*acd65(23)
      acd65(41)=acd65(26)*acd65(25)
      acd65(42)=acd65(28)*acd65(27)
      brack=acd65(29)+acd65(30)+acd65(31)+acd65(32)+acd65(33)+acd65(34)+acd65(3&
      &5)+acd65(36)+acd65(37)+acd65(38)+acd65(39)+acd65(40)+acd65(41)+acd65(42)
   end function brack_2
!---#] function brack_2:
!---#[ function derivative:
   function derivative(mu2,i1) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd65h4
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      complex(ki) :: numerator
      complex(ki) :: loc
      integer :: t1
      integer :: deg
      complex(ki), dimension(4), parameter :: Q = (/ (0.0_ki,0.0_ki),(0.0_ki,0.&
      &0_ki),(0.0_ki,0.0_ki),(0.0_ki,0.0_ki)/)
      qshift = -k3+k2-k7-k4
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
!---#[ subroutine reconstruct_d65:
   subroutine     reconstruct_d65(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group15
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group15), intent(out) :: coeffs
      ! rank 1 case :
      !---[# reconstruct coeffs%coeffs_65:
      coeffs%coeffs_65%c0 = derivative(czip)
      coeffs%coeffs_65%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_65%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_65%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_65%c1(4,1) = -derivative(czip,4)
      !---#] reconstruct coeffs%coeffs_65:
   end subroutine reconstruct_d65
!---#] subroutine reconstruct_d65:
end module     p0_dbaru_epnebbbarg_d65h4l1d
