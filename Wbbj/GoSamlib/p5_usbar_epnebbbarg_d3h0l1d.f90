module     p5_usbar_epnebbbarg_d3h0l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity0d3h0l1d.f90
   ! generator: buildfortran_d.py
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d3
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd3h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(24) :: acd3
      complex(ki) :: brack
      acd3(1)=dotproduct(e7,qshift)
      acd3(2)=abb3(7)
      acd3(3)=dotproduct(qshift,spvak2k1)
      acd3(4)=abb3(9)
      acd3(5)=dotproduct(qshift,spvak4k1)
      acd3(6)=abb3(14)
      acd3(7)=dotproduct(qshift,spval5k1)
      acd3(8)=abb3(13)
      acd3(9)=dotproduct(qshift,spval5k2)
      acd3(10)=abb3(8)
      acd3(11)=dotproduct(qshift,spval6k1)
      acd3(12)=abb3(15)
      acd3(13)=dotproduct(qshift,spval6k2)
      acd3(14)=abb3(12)
      acd3(15)=dotproduct(qshift,spvae7k1)
      acd3(16)=abb3(6)
      acd3(17)=-acd3(2)*acd3(1)
      acd3(18)=-acd3(4)*acd3(3)
      acd3(19)=-acd3(6)*acd3(5)
      acd3(20)=-acd3(8)*acd3(7)
      acd3(21)=-acd3(10)*acd3(9)
      acd3(22)=-acd3(12)*acd3(11)
      acd3(23)=-acd3(14)*acd3(13)
      acd3(24)=-acd3(16)*acd3(15)
      brack=acd3(17)+acd3(18)+acd3(19)+acd3(20)+acd3(21)+acd3(22)+acd3(23)+acd3&
      &(24)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd3h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(24) :: acd3
      complex(ki) :: brack
      acd3(1)=e7(iv1)
      acd3(2)=abb3(7)
      acd3(3)=spvak2k1(iv1)
      acd3(4)=abb3(9)
      acd3(5)=spvak4k1(iv1)
      acd3(6)=abb3(14)
      acd3(7)=spval5k1(iv1)
      acd3(8)=abb3(13)
      acd3(9)=spval5k2(iv1)
      acd3(10)=abb3(8)
      acd3(11)=spval6k1(iv1)
      acd3(12)=abb3(15)
      acd3(13)=spval6k2(iv1)
      acd3(14)=abb3(12)
      acd3(15)=spvae7k1(iv1)
      acd3(16)=abb3(6)
      acd3(17)=acd3(2)*acd3(1)
      acd3(18)=acd3(4)*acd3(3)
      acd3(19)=acd3(6)*acd3(5)
      acd3(20)=acd3(8)*acd3(7)
      acd3(21)=acd3(10)*acd3(9)
      acd3(22)=acd3(12)*acd3(11)
      acd3(23)=acd3(14)*acd3(13)
      acd3(24)=acd3(16)*acd3(15)
      brack=acd3(17)+acd3(18)+acd3(19)+acd3(20)+acd3(21)+acd3(22)+acd3(23)+acd3&
      &(24)
   end function brack_2
!---#] function brack_2:
!---#[ function derivative:
   function derivative(mu2,i1) result(numerator)
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd3h0
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
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
!---#[ subroutine reconstruct_d3:
   subroutine     reconstruct_d3(coeffs)
      use p5_usbar_epnebbbarg_groups, only: tensrec_info_group18
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group18), intent(out) :: coeffs
      ! rank 1 case :
      !---[# reconstruct coeffs%coeffs_3:
      coeffs%coeffs_3%c0 = derivative(czip)
      coeffs%coeffs_3%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_3%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_3%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_3%c1(4,1) = -derivative(czip,4)
      !---#] reconstruct coeffs%coeffs_3:
   end subroutine reconstruct_d3
!---#] subroutine reconstruct_d3:
end module     p5_usbar_epnebbbarg_d3h0l1d
