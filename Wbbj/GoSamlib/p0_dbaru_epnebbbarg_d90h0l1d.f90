module     p0_dbaru_epnebbbarg_d90h0l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity0d90h0l1d.f90
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
   public :: derivative , reconstruct_d90
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd90h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd90
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd90h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(3) :: acd90
      complex(ki) :: brack
      acd90(1)=spval5k2(iv1)
      acd90(2)=abb90(13)
      brack=-acd90(2)*acd90(1)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd90h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(12) :: acd90
      complex(ki) :: brack
      acd90(1)=k2(iv1)
      acd90(2)=spval5k2(iv2)
      acd90(3)=abb90(14)
      acd90(4)=k2(iv2)
      acd90(5)=spval5k2(iv1)
      acd90(6)=abb90(11)
      acd90(7)=spval6k2(iv2)
      acd90(8)=abb90(12)
      acd90(9)=spval6k2(iv1)
      acd90(10)=acd90(4)*acd90(3)
      acd90(11)=acd90(6)*acd90(2)
      acd90(12)=acd90(7)*acd90(8)
      acd90(10)=acd90(12)+2.0_ki*acd90(11)+acd90(10)
      acd90(10)=acd90(5)*acd90(10)
      acd90(11)=acd90(1)*acd90(3)
      acd90(12)=acd90(9)*acd90(8)
      acd90(11)=acd90(12)+acd90(11)
      acd90(11)=acd90(2)*acd90(11)
      brack=acd90(10)+acd90(11)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd90h0
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
!---#[ subroutine reconstruct_d90:
   subroutine     reconstruct_d90(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group13
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group13), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_90:
      coeffs%coeffs_90%c0 = derivative(czip)
      coeffs%coeffs_90%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_90%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_90%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_90%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_90%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_90%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_90%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_90%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_90%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_90%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_90%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_90%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_90%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_90%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_90:
   end subroutine reconstruct_d90
!---#] subroutine reconstruct_d90:
end module     p0_dbaru_epnebbbarg_d90h0l1d
