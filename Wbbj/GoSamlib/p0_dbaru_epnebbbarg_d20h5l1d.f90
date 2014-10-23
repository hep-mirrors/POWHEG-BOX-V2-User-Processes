module     p0_dbaru_epnebbbarg_d20h5l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d20h5l1d.f90
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
   public :: derivative , reconstruct_d20
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd20h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(18) :: acd20
      complex(ki) :: brack
      acd20(1)=dotproduct(k2,qshift)
      acd20(2)=dotproduct(qshift,spvak4k3)
      acd20(3)=abb20(26)
      acd20(4)=dotproduct(k3,qshift)
      acd20(5)=abb20(41)
      acd20(6)=dotproduct(qshift,qshift)
      acd20(7)=abb20(20)
      acd20(8)=dotproduct(qshift,spvak3k2)
      acd20(9)=abb20(19)
      acd20(10)=dotproduct(qshift,spvak4k2)
      acd20(11)=abb20(18)
      acd20(12)=abb20(21)
      acd20(13)=dotproduct(qshift,spvak2k3)
      acd20(14)=abb20(16)
      acd20(15)=acd20(3)*acd20(1)
      acd20(16)=acd20(9)*acd20(8)
      acd20(17)=acd20(11)*acd20(10)
      acd20(15)=-acd20(12)+acd20(17)+acd20(16)+acd20(15)
      acd20(15)=acd20(2)*acd20(15)
      acd20(16)=-acd20(5)*acd20(4)
      acd20(17)=acd20(7)*acd20(6)
      acd20(18)=-acd20(14)*acd20(13)
      brack=acd20(15)+acd20(16)+acd20(17)+acd20(18)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd20h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(23) :: acd20
      complex(ki) :: brack
      acd20(1)=k2(iv1)
      acd20(2)=dotproduct(qshift,spvak4k3)
      acd20(3)=abb20(26)
      acd20(4)=k3(iv1)
      acd20(5)=abb20(41)
      acd20(6)=qshift(iv1)
      acd20(7)=abb20(20)
      acd20(8)=spvak4k3(iv1)
      acd20(9)=dotproduct(k2,qshift)
      acd20(10)=dotproduct(qshift,spvak3k2)
      acd20(11)=abb20(19)
      acd20(12)=dotproduct(qshift,spvak4k2)
      acd20(13)=abb20(18)
      acd20(14)=abb20(21)
      acd20(15)=spvak2k3(iv1)
      acd20(16)=abb20(16)
      acd20(17)=spvak3k2(iv1)
      acd20(18)=spvak4k2(iv1)
      acd20(19)=acd20(1)*acd20(3)
      acd20(20)=acd20(17)*acd20(11)
      acd20(21)=acd20(18)*acd20(13)
      acd20(19)=acd20(21)+acd20(20)+acd20(19)
      acd20(19)=acd20(2)*acd20(19)
      acd20(20)=acd20(9)*acd20(3)
      acd20(21)=acd20(10)*acd20(11)
      acd20(22)=acd20(12)*acd20(13)
      acd20(20)=-acd20(14)+acd20(22)+acd20(21)+acd20(20)
      acd20(20)=acd20(8)*acd20(20)
      acd20(21)=-acd20(5)*acd20(4)
      acd20(22)=acd20(7)*acd20(6)
      acd20(23)=-acd20(16)*acd20(15)
      brack=acd20(19)+acd20(20)+acd20(21)+2.0_ki*acd20(22)+acd20(23)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd20h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(17) :: acd20
      complex(ki) :: brack
      acd20(1)=d(iv1,iv2)
      acd20(2)=abb20(20)
      acd20(3)=k2(iv1)
      acd20(4)=spvak4k3(iv2)
      acd20(5)=abb20(26)
      acd20(6)=k2(iv2)
      acd20(7)=spvak4k3(iv1)
      acd20(8)=spvak3k2(iv2)
      acd20(9)=abb20(19)
      acd20(10)=spvak4k2(iv2)
      acd20(11)=abb20(18)
      acd20(12)=spvak3k2(iv1)
      acd20(13)=spvak4k2(iv1)
      acd20(14)=acd20(3)*acd20(5)
      acd20(15)=acd20(12)*acd20(9)
      acd20(16)=acd20(13)*acd20(11)
      acd20(14)=acd20(16)+acd20(15)+acd20(14)
      acd20(14)=acd20(4)*acd20(14)
      acd20(15)=acd20(6)*acd20(5)
      acd20(16)=acd20(8)*acd20(9)
      acd20(17)=acd20(10)*acd20(11)
      acd20(15)=acd20(17)+acd20(16)+acd20(15)
      acd20(15)=acd20(7)*acd20(15)
      acd20(16)=acd20(2)*acd20(1)
      brack=acd20(14)+acd20(15)+2.0_ki*acd20(16)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd20h5
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
!---#[ subroutine reconstruct_d20:
   subroutine     reconstruct_d20(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group18
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group18), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_20:
      coeffs%coeffs_20%c0 = derivative(czip)
      coeffs%coeffs_20%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_20%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_20%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_20%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_20%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_20%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_20%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_20%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_20%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_20%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_20%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_20%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_20%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_20%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_20:
   end subroutine reconstruct_d20
!---#] subroutine reconstruct_d20:
end module     p0_dbaru_epnebbbarg_d20h5l1d
