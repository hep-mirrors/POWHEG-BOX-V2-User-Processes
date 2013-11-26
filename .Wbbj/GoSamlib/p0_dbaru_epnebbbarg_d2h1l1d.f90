module     p0_dbaru_epnebbbarg_d2h1l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity1d2h1l1d.f90
   ! generator: buildfortran_d.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d2
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd2h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(18) :: acd2
      complex(ki) :: brack
      acd2(1)=dotproduct(e7,qshift)
      acd2(2)=abb2(9)
      acd2(3)=dotproduct(qshift,spvak1k2)
      acd2(4)=abb2(7)
      acd2(5)=dotproduct(qshift,spvak4k2)
      acd2(6)=abb2(8)
      acd2(7)=dotproduct(qshift,spval6k2)
      acd2(8)=abb2(10)
      acd2(9)=dotproduct(qshift,spval6l5)
      acd2(10)=abb2(11)
      acd2(11)=dotproduct(qshift,spvae7k2)
      acd2(12)=abb2(6)
      acd2(13)=-acd2(2)*acd2(1)
      acd2(14)=-acd2(4)*acd2(3)
      acd2(15)=-acd2(6)*acd2(5)
      acd2(16)=-acd2(8)*acd2(7)
      acd2(17)=-acd2(10)*acd2(9)
      acd2(18)=-acd2(12)*acd2(11)
      brack=acd2(13)+acd2(14)+acd2(15)+acd2(16)+acd2(17)+acd2(18)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd2h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(18) :: acd2
      complex(ki) :: brack
      acd2(1)=e7(iv1)
      acd2(2)=abb2(9)
      acd2(3)=spvak1k2(iv1)
      acd2(4)=abb2(7)
      acd2(5)=spvak4k2(iv1)
      acd2(6)=abb2(8)
      acd2(7)=spval6k2(iv1)
      acd2(8)=abb2(10)
      acd2(9)=spval6l5(iv1)
      acd2(10)=abb2(11)
      acd2(11)=spvae7k2(iv1)
      acd2(12)=abb2(6)
      acd2(13)=-acd2(2)*acd2(1)
      acd2(14)=-acd2(4)*acd2(3)
      acd2(15)=-acd2(6)*acd2(5)
      acd2(16)=-acd2(8)*acd2(7)
      acd2(17)=-acd2(10)*acd2(9)
      acd2(18)=-acd2(12)*acd2(11)
      brack=acd2(13)+acd2(14)+acd2(15)+acd2(16)+acd2(17)+acd2(18)
   end function brack_2
!---#] function brack_2:
!---#[ function derivative:
   function derivative(mu2,i1) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd2h1
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
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
!---#[ subroutine reconstruct_d2:
   subroutine     reconstruct_d2(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group18
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group18), intent(out) :: coeffs
      ! rank 1 case :
      !---[# reconstruct coeffs%coeffs_2:
      coeffs%coeffs_2%c0 = derivative(czip)
      coeffs%coeffs_2%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_2%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_2%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_2%c1(4,1) = -derivative(czip,4)
      !---#] reconstruct coeffs%coeffs_2:
   end subroutine reconstruct_d2
!---#] subroutine reconstruct_d2:
end module     p0_dbaru_epnebbbarg_d2h1l1d
