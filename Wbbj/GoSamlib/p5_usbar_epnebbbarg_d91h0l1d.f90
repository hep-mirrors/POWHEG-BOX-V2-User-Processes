module     p5_usbar_epnebbbarg_d91h0l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity0d91h0l1d.f90
   ! generator: buildfortran_d.py
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_util, only: cond, d => metric_tensor
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
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd91h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd91
      complex(ki) :: brack
      acd91(1)=abb91(33)
      brack=acd91(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd91h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(40) :: acd91
      complex(ki) :: brack
      acd91(1)=k1(iv1)
      acd91(2)=abb91(38)
      acd91(3)=k2(iv1)
      acd91(4)=abb91(30)
      acd91(5)=k3(iv1)
      acd91(6)=abb91(87)
      acd91(7)=k4(iv1)
      acd91(8)=l5(iv1)
      acd91(9)=abb91(119)
      acd91(10)=l6(iv1)
      acd91(11)=abb91(124)
      acd91(12)=k7(iv1)
      acd91(13)=abb91(115)
      acd91(14)=e7(iv1)
      acd91(15)=abb91(83)
      acd91(16)=spvak4k1(iv1)
      acd91(17)=abb91(12)
      acd91(18)=spvak4k3(iv1)
      acd91(19)=abb91(24)
      acd91(20)=spval5k2(iv1)
      acd91(21)=abb91(13)
      acd91(22)=spval5l6(iv1)
      acd91(23)=abb91(35)
      acd91(24)=spval6k2(iv1)
      acd91(25)=abb91(18)
      acd91(26)=spvae7k1(iv1)
      acd91(27)=abb91(20)
      acd91(28)=-acd91(7)-acd91(5)
      acd91(28)=acd91(6)*acd91(28)
      acd91(29)=-acd91(2)*acd91(1)
      acd91(30)=-acd91(4)*acd91(3)
      acd91(31)=-acd91(9)*acd91(8)
      acd91(32)=-acd91(11)*acd91(10)
      acd91(33)=-acd91(13)*acd91(12)
      acd91(34)=-acd91(15)*acd91(14)
      acd91(35)=-acd91(17)*acd91(16)
      acd91(36)=-acd91(19)*acd91(18)
      acd91(37)=-acd91(21)*acd91(20)
      acd91(38)=-acd91(23)*acd91(22)
      acd91(39)=-acd91(25)*acd91(24)
      acd91(40)=-acd91(27)*acd91(26)
      brack=acd91(28)+acd91(29)+acd91(30)+acd91(31)+acd91(32)+acd91(33)+acd91(3&
      &4)+acd91(35)+acd91(36)+acd91(37)+acd91(38)+acd91(39)+acd91(40)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd91h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(74) :: acd91
      complex(ki) :: brack
      acd91(1)=k1(iv1)
      acd91(2)=k2(iv2)
      acd91(3)=abb91(29)
      acd91(4)=spval6k2(iv2)
      acd91(5)=abb91(21)
      acd91(6)=k1(iv2)
      acd91(7)=k2(iv1)
      acd91(8)=spval6k2(iv1)
      acd91(9)=abb91(16)
      acd91(10)=k3(iv2)
      acd91(11)=abb91(34)
      acd91(12)=k4(iv2)
      acd91(13)=l5(iv2)
      acd91(14)=abb91(155)
      acd91(15)=l6(iv2)
      acd91(16)=abb91(154)
      acd91(17)=k7(iv2)
      acd91(18)=abb91(143)
      acd91(19)=e7(iv2)
      acd91(20)=abb91(92)
      acd91(21)=abb91(14)
      acd91(22)=spvak4k1(iv2)
      acd91(23)=abb91(11)
      acd91(24)=spvak4k3(iv2)
      acd91(25)=abb91(17)
      acd91(26)=spval5l6(iv2)
      acd91(27)=abb91(52)
      acd91(28)=spval6l5(iv2)
      acd91(29)=abb91(51)
      acd91(30)=spvae7k1(iv2)
      acd91(31)=abb91(48)
      acd91(32)=k3(iv1)
      acd91(33)=k4(iv1)
      acd91(34)=l5(iv1)
      acd91(35)=l6(iv1)
      acd91(36)=k7(iv1)
      acd91(37)=e7(iv1)
      acd91(38)=spvak4k1(iv1)
      acd91(39)=spvak4k3(iv1)
      acd91(40)=spval5l6(iv1)
      acd91(41)=spval6l5(iv1)
      acd91(42)=spvae7k1(iv1)
      acd91(43)=abb91(62)
      acd91(44)=abb91(60)
      acd91(45)=abb91(59)
      acd91(46)=abb91(27)
      acd91(47)=abb91(15)
      acd91(48)=abb91(22)
      acd91(49)=abb91(32)
      acd91(50)=spvak2l5(iv2)
      acd91(51)=abb91(25)
      acd91(52)=spvak2l6(iv2)
      acd91(53)=abb91(19)
      acd91(54)=spvak2l5(iv1)
      acd91(55)=spvak2l6(iv1)
      acd91(56)=spval5k2(iv2)
      acd91(57)=abb91(26)
      acd91(58)=spval5k2(iv1)
      acd91(59)=abb91(23)
      acd91(60)=acd91(31)*acd91(42)
      acd91(61)=acd91(29)*acd91(41)
      acd91(62)=acd91(27)*acd91(40)
      acd91(63)=acd91(25)*acd91(39)
      acd91(64)=acd91(23)*acd91(38)
      acd91(65)=acd91(20)*acd91(37)
      acd91(66)=acd91(18)*acd91(36)
      acd91(67)=acd91(16)*acd91(35)
      acd91(68)=acd91(14)*acd91(34)
      acd91(69)=acd91(1)*acd91(3)
      acd91(70)=acd91(32)+acd91(33)
      acd91(71)=acd91(11)*acd91(70)
      acd91(72)=acd91(8)*acd91(21)
      acd91(73)=acd91(7)*acd91(9)
      acd91(60)=2.0_ki*acd91(73)+acd91(72)+acd91(71)+acd91(69)+acd91(68)+acd91(&
      &67)+acd91(66)+acd91(65)+acd91(64)+acd91(63)+acd91(62)+acd91(60)+acd91(61)
      acd91(60)=acd91(2)*acd91(60)
      acd91(61)=acd91(30)*acd91(31)
      acd91(62)=acd91(29)*acd91(28)
      acd91(63)=acd91(27)*acd91(26)
      acd91(64)=acd91(24)*acd91(25)
      acd91(65)=acd91(22)*acd91(23)
      acd91(66)=acd91(19)*acd91(20)
      acd91(67)=acd91(17)*acd91(18)
      acd91(68)=acd91(15)*acd91(16)
      acd91(69)=acd91(13)*acd91(14)
      acd91(71)=acd91(3)*acd91(6)
      acd91(72)=acd91(10)+acd91(12)
      acd91(73)=acd91(11)*acd91(72)
      acd91(74)=acd91(4)*acd91(21)
      acd91(61)=acd91(74)+acd91(73)+acd91(71)+acd91(69)+acd91(68)+acd91(67)+acd&
      &91(66)+acd91(65)+acd91(64)+acd91(63)+acd91(61)+acd91(62)
      acd91(61)=acd91(7)*acd91(61)
      acd91(62)=acd91(52)*acd91(53)
      acd91(63)=acd91(50)*acd91(51)
      acd91(64)=acd91(30)*acd91(49)
      acd91(65)=acd91(24)*acd91(48)
      acd91(66)=acd91(22)*acd91(47)
      acd91(67)=acd91(19)*acd91(46)
      acd91(68)=acd91(17)*acd91(45)
      acd91(69)=acd91(5)*acd91(6)
      acd91(71)=acd91(15)+acd91(13)
      acd91(71)=acd91(44)*acd91(71)
      acd91(72)=acd91(43)*acd91(72)
      acd91(62)=acd91(72)+acd91(71)+acd91(69)+acd91(68)+acd91(67)+acd91(66)+acd&
      &91(65)+acd91(64)+acd91(62)+acd91(63)
      acd91(62)=acd91(8)*acd91(62)
      acd91(63)=acd91(53)*acd91(55)
      acd91(64)=acd91(51)*acd91(54)
      acd91(65)=acd91(42)*acd91(49)
      acd91(66)=acd91(39)*acd91(48)
      acd91(67)=acd91(38)*acd91(47)
      acd91(68)=acd91(37)*acd91(46)
      acd91(69)=acd91(36)*acd91(45)
      acd91(71)=acd91(1)*acd91(5)
      acd91(72)=acd91(35)+acd91(34)
      acd91(72)=acd91(44)*acd91(72)
      acd91(70)=acd91(43)*acd91(70)
      acd91(63)=acd91(70)+acd91(72)+acd91(71)+acd91(69)+acd91(68)+acd91(67)+acd&
      &91(66)+acd91(65)+acd91(63)+acd91(64)
      acd91(63)=acd91(4)*acd91(63)
      acd91(64)=acd91(52)*acd91(59)
      acd91(65)=acd91(50)*acd91(57)
      acd91(64)=acd91(65)+acd91(64)
      acd91(64)=acd91(58)*acd91(64)
      acd91(65)=acd91(55)*acd91(59)
      acd91(66)=acd91(54)*acd91(57)
      acd91(65)=acd91(65)+acd91(66)
      acd91(65)=acd91(56)*acd91(65)
      brack=acd91(60)+acd91(61)+acd91(62)+acd91(63)+acd91(64)+acd91(65)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd91h0
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
      use p5_usbar_epnebbbarg_groups, only: tensrec_info_group15
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group15), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_91:
      coeffs%coeffs_91%c0 = derivative(czip)
      coeffs%coeffs_91%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_91%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_91%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_91%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_91%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_91%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_91%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_91%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_91%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_91%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_91%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_91%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_91%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_91%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_91:
   end subroutine reconstruct_d91
!---#] subroutine reconstruct_d91:
end module     p5_usbar_epnebbbarg_d91h0l1d
