module     p5_usbar_epnebbbarg_d62h0l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity0d62h0l1d.f90
   ! generator: buildfortran_d.py
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d62
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd62h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd62
      complex(ki) :: brack
      acd62(1)=abb62(16)
      brack=acd62(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd62h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(79) :: acd62
      complex(ki) :: brack
      acd62(1)=k1(iv1)
      acd62(2)=abb62(62)
      acd62(3)=k2(iv1)
      acd62(4)=abb62(33)
      acd62(5)=k3(iv1)
      acd62(6)=abb62(158)
      acd62(7)=k4(iv1)
      acd62(8)=abb62(169)
      acd62(9)=l5(iv1)
      acd62(10)=abb62(82)
      acd62(11)=l6(iv1)
      acd62(12)=k7(iv1)
      acd62(13)=abb62(86)
      acd62(14)=e7(iv1)
      acd62(15)=abb62(36)
      acd62(16)=spvak2k1(iv1)
      acd62(17)=abb62(18)
      acd62(18)=spvak2k3(iv1)
      acd62(19)=abb62(27)
      acd62(20)=spvak2k4(iv1)
      acd62(21)=abb62(28)
      acd62(22)=spvak4k2(iv1)
      acd62(23)=abb62(26)
      acd62(24)=spvak4k3(iv1)
      acd62(25)=abb62(20)
      acd62(26)=spval5k1(iv1)
      acd62(27)=abb62(15)
      acd62(28)=spval5k2(iv1)
      acd62(29)=abb62(19)
      acd62(30)=spval5l6(iv1)
      acd62(31)=abb62(17)
      acd62(32)=spval5k7(iv1)
      acd62(33)=abb62(24)
      acd62(34)=spval6k1(iv1)
      acd62(35)=abb62(23)
      acd62(36)=spval6k2(iv1)
      acd62(37)=abb62(21)
      acd62(38)=spval6l5(iv1)
      acd62(39)=abb62(107)
      acd62(40)=spval6k7(iv1)
      acd62(41)=abb62(124)
      acd62(42)=spvak7k1(iv1)
      acd62(43)=abb62(91)
      acd62(44)=spvak7k2(iv1)
      acd62(45)=abb62(22)
      acd62(46)=spvae7k1(iv1)
      acd62(47)=abb62(85)
      acd62(48)=spvae7k2(iv1)
      acd62(49)=abb62(113)
      acd62(50)=spval5e7(iv1)
      acd62(51)=abb62(72)
      acd62(52)=spval6e7(iv1)
      acd62(53)=abb62(83)
      acd62(54)=acd62(11)+acd62(9)
      acd62(54)=acd62(10)*acd62(54)
      acd62(55)=acd62(2)*acd62(1)
      acd62(56)=acd62(4)*acd62(3)
      acd62(57)=acd62(6)*acd62(5)
      acd62(58)=acd62(8)*acd62(7)
      acd62(59)=acd62(13)*acd62(12)
      acd62(60)=acd62(15)*acd62(14)
      acd62(61)=acd62(17)*acd62(16)
      acd62(62)=acd62(19)*acd62(18)
      acd62(63)=acd62(21)*acd62(20)
      acd62(64)=acd62(23)*acd62(22)
      acd62(65)=acd62(25)*acd62(24)
      acd62(66)=acd62(27)*acd62(26)
      acd62(67)=acd62(29)*acd62(28)
      acd62(68)=acd62(31)*acd62(30)
      acd62(69)=acd62(33)*acd62(32)
      acd62(70)=acd62(35)*acd62(34)
      acd62(71)=acd62(37)*acd62(36)
      acd62(72)=acd62(39)*acd62(38)
      acd62(73)=acd62(41)*acd62(40)
      acd62(74)=acd62(43)*acd62(42)
      acd62(75)=acd62(45)*acd62(44)
      acd62(76)=acd62(47)*acd62(46)
      acd62(77)=acd62(49)*acd62(48)
      acd62(78)=acd62(51)*acd62(50)
      acd62(79)=acd62(53)*acd62(52)
      brack=acd62(54)+acd62(55)+acd62(56)+acd62(57)+acd62(58)+acd62(59)+acd62(6&
      &0)+acd62(61)+acd62(62)+acd62(63)+acd62(64)+acd62(65)+acd62(66)+acd62(67)&
      &+acd62(68)+acd62(69)+acd62(70)+acd62(71)+acd62(72)+acd62(73)+acd62(74)+a&
      &cd62(75)+acd62(76)+acd62(77)+acd62(78)+acd62(79)
   end function brack_2
!---#] function brack_2:
!---#[ function derivative:
   function derivative(mu2,i1) result(numerator)
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd62h0
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
!---#[ subroutine reconstruct_d62:
   subroutine     reconstruct_d62(coeffs)
      use p5_usbar_epnebbbarg_groups, only: tensrec_info_group18
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group18), intent(out) :: coeffs
      ! rank 1 case :
      !---[# reconstruct coeffs%coeffs_62:
      coeffs%coeffs_62%c0 = derivative(czip)
      coeffs%coeffs_62%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_62%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_62%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_62%c1(4,1) = -derivative(czip,4)
      !---#] reconstruct coeffs%coeffs_62:
   end subroutine reconstruct_d62
!---#] subroutine reconstruct_d62:
end module     p5_usbar_epnebbbarg_d62h0l1d
