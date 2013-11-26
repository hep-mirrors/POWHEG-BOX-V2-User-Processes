module     p5_usbar_epnebbbarg_d63h2l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity2d63h2l1d.f90
   ! generator: buildfortran_d.py
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d63
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd63h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(22) :: acd63
      complex(ki) :: brack
      acd63(1)=dotproduct(k1,qshift)
      acd63(2)=abb63(33)
      acd63(3)=dotproduct(k3,qshift)
      acd63(4)=abb63(35)
      acd63(5)=dotproduct(k4,qshift)
      acd63(6)=abb63(37)
      acd63(7)=dotproduct(qshift,spvak1k3)
      acd63(8)=abb63(17)
      acd63(9)=dotproduct(qshift,spvak3k1)
      acd63(10)=abb63(15)
      acd63(11)=dotproduct(qshift,spvak4k1)
      acd63(12)=abb63(14)
      acd63(13)=dotproduct(qshift,spvak4k3)
      acd63(14)=abb63(16)
      acd63(15)=abb63(22)
      acd63(16)=-acd63(2)*acd63(1)
      acd63(17)=-acd63(4)*acd63(3)
      acd63(18)=-acd63(6)*acd63(5)
      acd63(19)=-acd63(8)*acd63(7)
      acd63(20)=-acd63(10)*acd63(9)
      acd63(21)=-acd63(12)*acd63(11)
      acd63(22)=-acd63(14)*acd63(13)
      brack=acd63(15)+acd63(16)+acd63(17)+acd63(18)+acd63(19)+acd63(20)+acd63(2&
      &1)+acd63(22)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd63h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(21) :: acd63
      complex(ki) :: brack
      acd63(1)=k1(iv1)
      acd63(2)=abb63(33)
      acd63(3)=k3(iv1)
      acd63(4)=abb63(35)
      acd63(5)=k4(iv1)
      acd63(6)=abb63(37)
      acd63(7)=spvak1k3(iv1)
      acd63(8)=abb63(17)
      acd63(9)=spvak3k1(iv1)
      acd63(10)=abb63(15)
      acd63(11)=spvak4k1(iv1)
      acd63(12)=abb63(14)
      acd63(13)=spvak4k3(iv1)
      acd63(14)=abb63(16)
      acd63(15)=acd63(2)*acd63(1)
      acd63(16)=acd63(4)*acd63(3)
      acd63(17)=acd63(6)*acd63(5)
      acd63(18)=acd63(8)*acd63(7)
      acd63(19)=acd63(10)*acd63(9)
      acd63(20)=acd63(12)*acd63(11)
      acd63(21)=acd63(14)*acd63(13)
      brack=acd63(15)+acd63(16)+acd63(17)+acd63(18)+acd63(19)+acd63(20)+acd63(2&
      &1)
   end function brack_2
!---#] function brack_2:
!---#[ function derivative:
   function derivative(mu2,i1) result(numerator)
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd63h2
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      complex(ki) :: numerator
      complex(ki) :: loc
      integer :: t1
      integer :: deg
      complex(ki), dimension(4), parameter :: Q = (/ (0.0_ki,0.0_ki),(0.0_ki,0.&
      &0_ki),(0.0_ki,0.0_ki),(0.0_ki,0.0_ki)/)
      qshift = k2
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
!---#[ subroutine reconstruct_d63:
   subroutine     reconstruct_d63(coeffs)
      use p5_usbar_epnebbbarg_groups, only: tensrec_info_group18
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group18), intent(out) :: coeffs
      ! rank 1 case :
      !---[# reconstruct coeffs%coeffs_63:
      coeffs%coeffs_63%c0 = derivative(czip)
      coeffs%coeffs_63%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_63%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_63%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_63%c1(4,1) = -derivative(czip,4)
      !---#] reconstruct coeffs%coeffs_63:
   end subroutine reconstruct_d63
!---#] subroutine reconstruct_d63:
end module     p5_usbar_epnebbbarg_d63h2l1d
