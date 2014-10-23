module     p0_dbaru_epnebbbarg_d91h7l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d91h7l1d.f90
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
   public :: derivative , reconstruct_d91
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd91h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd91
      complex(ki) :: brack
      acd91(1)=abb91(15)
      brack=acd91(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd91h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(18) :: acd91
      complex(ki) :: brack
      acd91(1)=k2(iv1)
      acd91(2)=abb91(25)
      acd91(3)=l6(iv1)
      acd91(4)=abb91(20)
      acd91(5)=spvak2l6(iv1)
      acd91(6)=abb91(13)
      acd91(7)=spval5k2(iv1)
      acd91(8)=abb91(16)
      acd91(9)=spval5l6(iv1)
      acd91(10)=abb91(24)
      acd91(11)=spval6k2(iv1)
      acd91(12)=abb91(21)
      acd91(13)=-acd91(2)*acd91(1)
      acd91(14)=-acd91(4)*acd91(3)
      acd91(15)=-acd91(6)*acd91(5)
      acd91(16)=-acd91(8)*acd91(7)
      acd91(17)=-acd91(10)*acd91(9)
      acd91(18)=-acd91(12)*acd91(11)
      brack=acd91(13)+acd91(14)+acd91(15)+acd91(16)+acd91(17)+acd91(18)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd91h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(17) :: acd91
      complex(ki) :: brack
      acd91(1)=d(iv1,iv2)
      acd91(2)=abb91(14)
      acd91(3)=k2(iv1)
      acd91(4)=spvak2l5(iv2)
      acd91(5)=abb91(17)
      acd91(6)=k2(iv2)
      acd91(7)=spvak2l5(iv1)
      acd91(8)=spval5k2(iv2)
      acd91(9)=abb91(19)
      acd91(10)=spval6k2(iv2)
      acd91(11)=abb91(18)
      acd91(12)=spval5k2(iv1)
      acd91(13)=spval6k2(iv1)
      acd91(14)=acd91(3)*acd91(5)
      acd91(15)=acd91(12)*acd91(9)
      acd91(16)=acd91(13)*acd91(11)
      acd91(14)=acd91(16)+acd91(15)+acd91(14)
      acd91(14)=acd91(4)*acd91(14)
      acd91(15)=acd91(6)*acd91(5)
      acd91(16)=acd91(8)*acd91(9)
      acd91(17)=acd91(10)*acd91(11)
      acd91(15)=acd91(17)+acd91(16)+acd91(15)
      acd91(15)=acd91(7)*acd91(15)
      acd91(16)=acd91(2)*acd91(1)
      brack=acd91(14)+acd91(15)+2.0_ki*acd91(16)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd91h7
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
!---#[ subroutine reconstruct_d91:
   subroutine     reconstruct_d91(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group15
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group15), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_91:
      coeffs%coeffs_91%c0 = derivative(czip)
      coeffs%coeffs_91%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_91%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_91%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_91%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_91%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_91%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_91%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_91%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_91%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_91%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_91%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_91%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_91%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_91%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_91:
   end subroutine reconstruct_d91
!---#] subroutine reconstruct_d91:
end module     p0_dbaru_epnebbbarg_d91h7l1d
