module     p5_usbar_epnebbbarg_d64h1l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity1d64h1l1d.f90
   ! generator: buildfortran_d.py
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d64
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd64h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(44) :: acd64
      complex(ki) :: brack
      acd64(1)=dotproduct(k1,qshift)
      acd64(2)=abb64(19)
      acd64(3)=dotproduct(k2,qshift)
      acd64(4)=abb64(18)
      acd64(5)=dotproduct(k3,qshift)
      acd64(6)=abb64(79)
      acd64(7)=dotproduct(k4,qshift)
      acd64(8)=dotproduct(l5,qshift)
      acd64(9)=abb64(81)
      acd64(10)=dotproduct(l6,qshift)
      acd64(11)=abb64(106)
      acd64(12)=dotproduct(k7,qshift)
      acd64(13)=abb64(88)
      acd64(14)=dotproduct(e7,qshift)
      acd64(15)=abb64(15)
      acd64(16)=dotproduct(qshift,spvak2l5)
      acd64(17)=abb64(14)
      acd64(18)=dotproduct(qshift,spvak2l6)
      acd64(19)=abb64(16)
      acd64(20)=dotproduct(qshift,spvak4k1)
      acd64(21)=abb64(11)
      acd64(22)=dotproduct(qshift,spvak4k3)
      acd64(23)=abb64(13)
      acd64(24)=dotproduct(qshift,spval6k2)
      acd64(25)=abb64(17)
      acd64(26)=dotproduct(qshift,spval6l5)
      acd64(27)=abb64(22)
      acd64(28)=dotproduct(qshift,spvae7k1)
      acd64(29)=abb64(12)
      acd64(30)=abb64(20)
      acd64(31)=acd64(7)+acd64(5)
      acd64(31)=acd64(6)*acd64(31)
      acd64(32)=-acd64(2)*acd64(1)
      acd64(33)=-acd64(4)*acd64(3)
      acd64(34)=-acd64(9)*acd64(8)
      acd64(35)=-acd64(11)*acd64(10)
      acd64(36)=-acd64(13)*acd64(12)
      acd64(37)=-acd64(15)*acd64(14)
      acd64(38)=-acd64(17)*acd64(16)
      acd64(39)=-acd64(19)*acd64(18)
      acd64(40)=-acd64(21)*acd64(20)
      acd64(41)=-acd64(23)*acd64(22)
      acd64(42)=-acd64(25)*acd64(24)
      acd64(43)=-acd64(27)*acd64(26)
      acd64(44)=-acd64(29)*acd64(28)
      brack=acd64(30)+acd64(31)+acd64(32)+acd64(33)+acd64(34)+acd64(35)+acd64(3&
      &6)+acd64(37)+acd64(38)+acd64(39)+acd64(40)+acd64(41)+acd64(42)+acd64(43)&
      &+acd64(44)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd64h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(43) :: acd64
      complex(ki) :: brack
      acd64(1)=k1(iv1)
      acd64(2)=abb64(19)
      acd64(3)=k2(iv1)
      acd64(4)=abb64(18)
      acd64(5)=k3(iv1)
      acd64(6)=abb64(79)
      acd64(7)=k4(iv1)
      acd64(8)=l5(iv1)
      acd64(9)=abb64(81)
      acd64(10)=l6(iv1)
      acd64(11)=abb64(106)
      acd64(12)=k7(iv1)
      acd64(13)=abb64(88)
      acd64(14)=e7(iv1)
      acd64(15)=abb64(15)
      acd64(16)=spvak2l5(iv1)
      acd64(17)=abb64(14)
      acd64(18)=spvak2l6(iv1)
      acd64(19)=abb64(16)
      acd64(20)=spvak4k1(iv1)
      acd64(21)=abb64(11)
      acd64(22)=spvak4k3(iv1)
      acd64(23)=abb64(13)
      acd64(24)=spval6k2(iv1)
      acd64(25)=abb64(17)
      acd64(26)=spval6l5(iv1)
      acd64(27)=abb64(22)
      acd64(28)=spvae7k1(iv1)
      acd64(29)=abb64(12)
      acd64(30)=-acd64(7)-acd64(5)
      acd64(30)=acd64(6)*acd64(30)
      acd64(31)=acd64(2)*acd64(1)
      acd64(32)=acd64(4)*acd64(3)
      acd64(33)=acd64(9)*acd64(8)
      acd64(34)=acd64(11)*acd64(10)
      acd64(35)=acd64(13)*acd64(12)
      acd64(36)=acd64(15)*acd64(14)
      acd64(37)=acd64(17)*acd64(16)
      acd64(38)=acd64(19)*acd64(18)
      acd64(39)=acd64(21)*acd64(20)
      acd64(40)=acd64(23)*acd64(22)
      acd64(41)=acd64(25)*acd64(24)
      acd64(42)=acd64(27)*acd64(26)
      acd64(43)=acd64(29)*acd64(28)
      brack=acd64(30)+acd64(31)+acd64(32)+acd64(33)+acd64(34)+acd64(35)+acd64(3&
      &6)+acd64(37)+acd64(38)+acd64(39)+acd64(40)+acd64(41)+acd64(42)+acd64(43)
   end function brack_2
!---#] function brack_2:
!---#[ function derivative:
   function derivative(mu2,i1) result(numerator)
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd64h1
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      complex(ki) :: numerator
      complex(ki) :: loc
      integer :: t1
      integer :: deg
      complex(ki), dimension(4), parameter :: Q = (/ (0.0_ki,0.0_ki),(0.0_ki,0.&
      &0_ki),(0.0_ki,0.0_ki),(0.0_ki,0.0_ki)/)
      qshift = k6+k5
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
!---#[ subroutine reconstruct_d64:
   subroutine     reconstruct_d64(coeffs)
      use p5_usbar_epnebbbarg_groups, only: tensrec_info_group15
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group15), intent(out) :: coeffs
      ! rank 1 case :
      !---[# reconstruct coeffs%coeffs_64:
      coeffs%coeffs_64%c0 = derivative(czip)
      coeffs%coeffs_64%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_64%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_64%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_64%c1(4,1) = -derivative(czip,4)
      !---#] reconstruct coeffs%coeffs_64:
   end subroutine reconstruct_d64
!---#] subroutine reconstruct_d64:
end module     p5_usbar_epnebbbarg_d64h1l1d
