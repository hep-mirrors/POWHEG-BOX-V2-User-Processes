module     p5_usbar_epnebbbarg_d59h2l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity2d59h2l1d.f90
   ! generator: buildfortran_d.py
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d59
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd59h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd59
      complex(ki) :: brack
      acd59(1)=abb59(19)
      brack=acd59(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd59h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(35) :: acd59
      complex(ki) :: brack
      acd59(1)=k1(iv1)
      acd59(2)=abb59(17)
      acd59(3)=k2(iv1)
      acd59(4)=abb59(16)
      acd59(5)=k3(iv1)
      acd59(6)=abb59(37)
      acd59(7)=k4(iv1)
      acd59(8)=l5(iv1)
      acd59(9)=abb59(34)
      acd59(10)=l6(iv1)
      acd59(11)=k7(iv1)
      acd59(12)=abb59(11)
      acd59(13)=spvak2k1(iv1)
      acd59(14)=abb59(20)
      acd59(15)=spvak4k1(iv1)
      acd59(16)=abb59(12)
      acd59(17)=spvak4k3(iv1)
      acd59(18)=abb59(14)
      acd59(19)=spval5k1(iv1)
      acd59(20)=abb59(15)
      acd59(21)=spval5l6(iv1)
      acd59(22)=abb59(13)
      acd59(23)=spvak7k2(iv1)
      acd59(24)=abb59(18)
      acd59(25)=-acd59(7)-acd59(5)
      acd59(25)=acd59(6)*acd59(25)
      acd59(26)=acd59(10)+acd59(8)
      acd59(26)=acd59(9)*acd59(26)
      acd59(27)=acd59(2)*acd59(1)
      acd59(28)=acd59(4)*acd59(3)
      acd59(29)=acd59(12)*acd59(11)
      acd59(30)=acd59(14)*acd59(13)
      acd59(31)=acd59(16)*acd59(15)
      acd59(32)=acd59(18)*acd59(17)
      acd59(33)=acd59(20)*acd59(19)
      acd59(34)=acd59(22)*acd59(21)
      acd59(35)=acd59(24)*acd59(23)
      brack=acd59(25)+acd59(26)+acd59(27)+acd59(28)+acd59(29)+acd59(30)+acd59(3&
      &1)+acd59(32)+acd59(33)+acd59(34)+acd59(35)
   end function brack_2
!---#] function brack_2:
!---#[ function derivative:
   function derivative(mu2,i1) result(numerator)
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd59h2
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
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
!---#[ subroutine reconstruct_d59:
   subroutine     reconstruct_d59(coeffs)
      use p5_usbar_epnebbbarg_groups, only: tensrec_info_group15
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group15), intent(out) :: coeffs
      ! rank 1 case :
      !---[# reconstruct coeffs%coeffs_59:
      coeffs%coeffs_59%c0 = derivative(czip)
      coeffs%coeffs_59%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_59%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_59%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_59%c1(4,1) = -derivative(czip,4)
      !---#] reconstruct coeffs%coeffs_59:
   end subroutine reconstruct_d59
!---#] subroutine reconstruct_d59:
end module     p5_usbar_epnebbbarg_d59h2l1d
