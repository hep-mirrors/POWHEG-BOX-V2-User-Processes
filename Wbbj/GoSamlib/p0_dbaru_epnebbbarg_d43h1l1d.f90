module     p0_dbaru_epnebbbarg_d43h1l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d43h1l1d.f90
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
   public :: derivative , reconstruct_d43
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd43h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(27) :: acd43
      complex(ki) :: brack
      acd43(1)=dotproduct(k7,qshift)
      acd43(2)=dotproduct(qshift,spvak4k3)
      acd43(3)=abb43(11)
      acd43(4)=dotproduct(qshift,qshift)
      acd43(5)=abb43(21)
      acd43(6)=dotproduct(qshift,spvak1k7)
      acd43(7)=abb43(15)
      acd43(8)=dotproduct(qshift,spvak2k7)
      acd43(9)=abb43(14)
      acd43(10)=dotproduct(qshift,spval5k7)
      acd43(11)=abb43(34)
      acd43(12)=dotproduct(qshift,spval6k7)
      acd43(13)=abb43(30)
      acd43(14)=dotproduct(qshift,spvak1k3)
      acd43(15)=abb43(17)
      acd43(16)=dotproduct(qshift,spvak2k3)
      acd43(17)=abb43(13)
      acd43(18)=dotproduct(qshift,spval5k3)
      acd43(19)=abb43(12)
      acd43(20)=dotproduct(qshift,spval6k3)
      acd43(21)=abb43(16)
      acd43(22)=acd43(3)*acd43(1)
      acd43(23)=acd43(7)*acd43(6)
      acd43(24)=acd43(9)*acd43(8)
      acd43(25)=acd43(11)*acd43(10)
      acd43(26)=acd43(13)*acd43(12)
      acd43(22)=acd43(26)+acd43(25)+acd43(24)+acd43(23)+acd43(22)
      acd43(22)=acd43(2)*acd43(22)
      acd43(23)=acd43(5)*acd43(4)
      acd43(24)=-acd43(15)*acd43(14)
      acd43(25)=-acd43(17)*acd43(16)
      acd43(26)=-acd43(19)*acd43(18)
      acd43(27)=-acd43(21)*acd43(20)
      brack=acd43(22)+acd43(23)+acd43(24)+acd43(25)+acd43(26)+acd43(27)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd43h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(34) :: acd43
      complex(ki) :: brack
      acd43(1)=k7(iv1)
      acd43(2)=dotproduct(qshift,spvak4k3)
      acd43(3)=abb43(11)
      acd43(4)=qshift(iv1)
      acd43(5)=abb43(21)
      acd43(6)=spvak4k3(iv1)
      acd43(7)=dotproduct(k7,qshift)
      acd43(8)=dotproduct(qshift,spvak1k7)
      acd43(9)=abb43(15)
      acd43(10)=dotproduct(qshift,spvak2k7)
      acd43(11)=abb43(14)
      acd43(12)=dotproduct(qshift,spval5k7)
      acd43(13)=abb43(34)
      acd43(14)=dotproduct(qshift,spval6k7)
      acd43(15)=abb43(30)
      acd43(16)=spvak1k3(iv1)
      acd43(17)=abb43(17)
      acd43(18)=spvak1k7(iv1)
      acd43(19)=spvak2k3(iv1)
      acd43(20)=abb43(13)
      acd43(21)=spvak2k7(iv1)
      acd43(22)=spval5k7(iv1)
      acd43(23)=spval6k7(iv1)
      acd43(24)=spval5k3(iv1)
      acd43(25)=abb43(12)
      acd43(26)=spval6k3(iv1)
      acd43(27)=abb43(16)
      acd43(28)=acd43(1)*acd43(3)
      acd43(29)=acd43(18)*acd43(9)
      acd43(30)=acd43(21)*acd43(11)
      acd43(31)=acd43(22)*acd43(13)
      acd43(32)=acd43(23)*acd43(15)
      acd43(28)=acd43(32)+acd43(31)+acd43(30)+acd43(29)+acd43(28)
      acd43(28)=acd43(2)*acd43(28)
      acd43(29)=acd43(7)*acd43(3)
      acd43(30)=acd43(8)*acd43(9)
      acd43(31)=acd43(10)*acd43(11)
      acd43(32)=acd43(12)*acd43(13)
      acd43(33)=acd43(14)*acd43(15)
      acd43(29)=acd43(33)+acd43(32)+acd43(31)+acd43(30)+acd43(29)
      acd43(29)=acd43(6)*acd43(29)
      acd43(30)=acd43(5)*acd43(4)
      acd43(31)=-acd43(17)*acd43(16)
      acd43(32)=-acd43(20)*acd43(19)
      acd43(33)=-acd43(25)*acd43(24)
      acd43(34)=-acd43(27)*acd43(26)
      brack=acd43(28)+acd43(29)+2.0_ki*acd43(30)+acd43(31)+acd43(32)+acd43(33)+&
      &acd43(34)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd43h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(25) :: acd43
      complex(ki) :: brack
      acd43(1)=d(iv1,iv2)
      acd43(2)=abb43(21)
      acd43(3)=k7(iv1)
      acd43(4)=spvak4k3(iv2)
      acd43(5)=abb43(11)
      acd43(6)=k7(iv2)
      acd43(7)=spvak4k3(iv1)
      acd43(8)=spvak1k7(iv2)
      acd43(9)=abb43(15)
      acd43(10)=spvak2k7(iv2)
      acd43(11)=abb43(14)
      acd43(12)=spval5k7(iv2)
      acd43(13)=abb43(34)
      acd43(14)=spval6k7(iv2)
      acd43(15)=abb43(30)
      acd43(16)=spvak1k7(iv1)
      acd43(17)=spvak2k7(iv1)
      acd43(18)=spval5k7(iv1)
      acd43(19)=spval6k7(iv1)
      acd43(20)=acd43(3)*acd43(5)
      acd43(21)=acd43(16)*acd43(9)
      acd43(22)=acd43(17)*acd43(11)
      acd43(23)=acd43(18)*acd43(13)
      acd43(24)=acd43(19)*acd43(15)
      acd43(20)=acd43(24)+acd43(23)+acd43(22)+acd43(21)+acd43(20)
      acd43(20)=acd43(4)*acd43(20)
      acd43(21)=acd43(6)*acd43(5)
      acd43(22)=acd43(8)*acd43(9)
      acd43(23)=acd43(10)*acd43(11)
      acd43(24)=acd43(12)*acd43(13)
      acd43(25)=acd43(14)*acd43(15)
      acd43(21)=acd43(25)+acd43(24)+acd43(23)+acd43(22)+acd43(21)
      acd43(21)=acd43(7)*acd43(21)
      acd43(22)=acd43(2)*acd43(1)
      brack=acd43(20)+acd43(21)+2.0_ki*acd43(22)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd43h1
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
      qshift = -k2+k7
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
!---#[ subroutine reconstruct_d43:
   subroutine     reconstruct_d43(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group15
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group15), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_43:
      coeffs%coeffs_43%c0 = derivative(czip)
      coeffs%coeffs_43%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_43%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_43%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_43%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_43%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_43%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_43%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_43%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_43%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_43%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_43%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_43%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_43%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_43%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_43:
   end subroutine reconstruct_d43
!---#] subroutine reconstruct_d43:
end module     p0_dbaru_epnebbbarg_d43h1l1d
