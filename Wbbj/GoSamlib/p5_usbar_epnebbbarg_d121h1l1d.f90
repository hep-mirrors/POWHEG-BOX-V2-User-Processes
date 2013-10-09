module     p5_usbar_epnebbbarg_d121h1l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity1d121h1l1d.f90
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
   public :: derivative , reconstruct_d121
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd121h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd121
      complex(ki) :: brack
      acd121(1)=abb121(19)
      brack=acd121(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd121h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(38) :: acd121
      complex(ki) :: brack
      acd121(1)=k1(iv1)
      acd121(2)=abb121(25)
      acd121(3)=k3(iv1)
      acd121(4)=k4(iv1)
      acd121(5)=spvak2k1(iv1)
      acd121(6)=abb121(18)
      acd121(7)=spvak2k3(iv1)
      acd121(8)=abb121(22)
      acd121(9)=spvak2l5(iv1)
      acd121(10)=abb121(14)
      acd121(11)=spvak2l6(iv1)
      acd121(12)=abb121(20)
      acd121(13)=spvak2k7(iv1)
      acd121(14)=abb121(36)
      acd121(15)=spvak4k1(iv1)
      acd121(16)=abb121(21)
      acd121(17)=spvak4k3(iv1)
      acd121(18)=abb121(24)
      acd121(19)=spval6l5(iv1)
      acd121(20)=abb121(15)
      acd121(21)=spvak7l5(iv1)
      acd121(22)=abb121(50)
      acd121(23)=spvak2e7(iv1)
      acd121(24)=abb121(27)
      acd121(25)=spvae7l5(iv1)
      acd121(26)=abb121(46)
      acd121(27)=acd121(4)-acd121(1)+acd121(3)
      acd121(27)=acd121(2)*acd121(27)
      acd121(28)=-acd121(6)*acd121(5)
      acd121(29)=-acd121(8)*acd121(7)
      acd121(30)=-acd121(10)*acd121(9)
      acd121(31)=-acd121(12)*acd121(11)
      acd121(32)=-acd121(14)*acd121(13)
      acd121(33)=-acd121(16)*acd121(15)
      acd121(34)=-acd121(18)*acd121(17)
      acd121(35)=-acd121(20)*acd121(19)
      acd121(36)=-acd121(22)*acd121(21)
      acd121(37)=-acd121(24)*acd121(23)
      acd121(38)=-acd121(26)*acd121(25)
      brack=acd121(27)+acd121(28)+acd121(29)+acd121(30)+acd121(31)+acd121(32)+a&
      &cd121(33)+acd121(34)+acd121(35)+acd121(36)+acd121(37)+acd121(38)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd121h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(81) :: acd121
      complex(ki) :: brack
      acd121(1)=d(iv1,iv2)
      acd121(2)=abb121(17)
      acd121(3)=k1(iv1)
      acd121(4)=k2(iv2)
      acd121(5)=abb121(37)
      acd121(6)=l6(iv2)
      acd121(7)=abb121(38)
      acd121(8)=k7(iv2)
      acd121(9)=e7(iv2)
      acd121(10)=abb121(34)
      acd121(11)=spvak4l5(iv2)
      acd121(12)=abb121(52)
      acd121(13)=spvae7k2(iv2)
      acd121(14)=abb121(11)
      acd121(15)=spval6e7(iv2)
      acd121(16)=abb121(26)
      acd121(17)=k1(iv2)
      acd121(18)=k2(iv1)
      acd121(19)=l6(iv1)
      acd121(20)=k7(iv1)
      acd121(21)=e7(iv1)
      acd121(22)=spvak4l5(iv1)
      acd121(23)=spvae7k2(iv1)
      acd121(24)=spval6e7(iv1)
      acd121(25)=k3(iv2)
      acd121(26)=k4(iv2)
      acd121(27)=abb121(43)
      acd121(28)=abb121(35)
      acd121(29)=spvak4k1(iv2)
      acd121(30)=abb121(31)
      acd121(31)=spvak4k3(iv2)
      acd121(32)=abb121(57)
      acd121(33)=spvak2e7(iv2)
      acd121(34)=abb121(33)
      acd121(35)=k3(iv1)
      acd121(36)=k4(iv1)
      acd121(37)=spvak4k1(iv1)
      acd121(38)=spvak4k3(iv1)
      acd121(39)=spvak2e7(iv1)
      acd121(40)=abb121(23)
      acd121(41)=abb121(55)
      acd121(42)=abb121(48)
      acd121(43)=abb121(8)
      acd121(44)=abb121(40)
      acd121(45)=spvak2k7(iv2)
      acd121(46)=abb121(39)
      acd121(47)=spvak2k7(iv1)
      acd121(48)=abb121(12)
      acd121(49)=abb121(16)
      acd121(50)=abb121(9)
      acd121(51)=abb121(44)
      acd121(52)=abb121(49)
      acd121(53)=abb121(13)
      acd121(54)=abb121(30)
      acd121(55)=abb121(10)
      acd121(56)=spvak2l6(iv2)
      acd121(57)=abb121(47)
      acd121(58)=spvak2l6(iv1)
      acd121(59)=spvak1l5(iv2)
      acd121(60)=abb121(28)
      acd121(61)=spvak1l5(iv1)
      acd121(62)=spvak3l5(iv2)
      acd121(63)=spvak3l5(iv1)
      acd121(64)=acd121(35)+acd121(36)
      acd121(65)=acd121(64)-acd121(3)
      acd121(66)=acd121(16)*acd121(65)
      acd121(67)=-acd121(57)*acd121(58)
      acd121(68)=acd121(47)*acd121(55)
      acd121(69)=acd121(38)*acd121(54)
      acd121(70)=acd121(37)*acd121(53)
      acd121(71)=acd121(18)*acd121(28)
      acd121(66)=acd121(71)+acd121(70)+acd121(69)+acd121(67)+acd121(68)+acd121(&
      &66)
      acd121(66)=acd121(15)*acd121(66)
      acd121(67)=acd121(5)*acd121(65)
      acd121(68)=acd121(39)*acd121(34)
      acd121(69)=acd121(21)*acd121(27)
      acd121(70)=acd121(38)*acd121(32)
      acd121(71)=acd121(37)*acd121(30)
      acd121(72)=acd121(24)*acd121(28)
      acd121(67)=acd121(72)+acd121(71)+acd121(70)+acd121(69)+acd121(68)+acd121(&
      &67)
      acd121(67)=acd121(4)*acd121(67)
      acd121(68)=acd121(6)+acd121(8)
      acd121(69)=acd121(41)*acd121(68)
      acd121(70)=-acd121(60)*acd121(62)
      acd121(71)=acd121(11)*acd121(49)
      acd121(72)=acd121(13)*acd121(51)
      acd121(73)=acd121(9)*acd121(44)
      acd121(69)=acd121(73)+acd121(72)+acd121(70)+acd121(71)+acd121(69)
      acd121(69)=acd121(38)*acd121(69)
      acd121(70)=-acd121(40)*acd121(68)
      acd121(71)=acd121(60)*acd121(59)
      acd121(72)=acd121(11)*acd121(48)
      acd121(73)=acd121(13)*acd121(50)
      acd121(74)=acd121(9)*acd121(43)
      acd121(70)=acd121(74)+acd121(73)+acd121(71)+acd121(72)+acd121(70)
      acd121(70)=acd121(37)*acd121(70)
      acd121(71)=acd121(19)+acd121(20)
      acd121(72)=acd121(41)*acd121(71)
      acd121(73)=-acd121(60)*acd121(63)
      acd121(74)=acd121(22)*acd121(49)
      acd121(75)=acd121(23)*acd121(51)
      acd121(76)=acd121(21)*acd121(44)
      acd121(72)=acd121(76)+acd121(75)+acd121(73)+acd121(74)+acd121(72)
      acd121(72)=acd121(31)*acd121(72)
      acd121(73)=-acd121(40)*acd121(71)
      acd121(74)=acd121(60)*acd121(61)
      acd121(75)=acd121(22)*acd121(48)
      acd121(76)=acd121(23)*acd121(50)
      acd121(77)=acd121(21)*acd121(43)
      acd121(73)=acd121(77)+acd121(76)+acd121(74)+acd121(75)+acd121(73)
      acd121(73)=acd121(29)*acd121(73)
      acd121(74)=acd121(25)+acd121(26)
      acd121(75)=acd121(74)-acd121(17)
      acd121(76)=acd121(16)*acd121(75)
      acd121(77)=-acd121(57)*acd121(56)
      acd121(78)=acd121(45)*acd121(55)
      acd121(79)=acd121(31)*acd121(54)
      acd121(80)=acd121(29)*acd121(53)
      acd121(76)=acd121(80)+acd121(79)+acd121(77)+acd121(78)+acd121(76)
      acd121(76)=acd121(24)*acd121(76)
      acd121(77)=acd121(5)*acd121(75)
      acd121(78)=acd121(33)*acd121(34)
      acd121(79)=acd121(9)*acd121(27)
      acd121(80)=acd121(31)*acd121(32)
      acd121(81)=acd121(29)*acd121(30)
      acd121(77)=acd121(81)+acd121(80)+acd121(79)+acd121(78)+acd121(77)
      acd121(77)=acd121(18)*acd121(77)
      acd121(65)=acd121(68)*acd121(65)
      acd121(75)=acd121(71)*acd121(75)
      acd121(65)=acd121(75)+acd121(65)
      acd121(65)=acd121(7)*acd121(65)
      acd121(71)=acd121(71)*acd121(33)
      acd121(68)=acd121(68)*acd121(39)
      acd121(68)=acd121(68)+acd121(71)
      acd121(68)=acd121(42)*acd121(68)
      acd121(71)=acd121(14)*acd121(23)
      acd121(75)=acd121(12)*acd121(22)
      acd121(71)=acd121(71)+acd121(75)
      acd121(75)=acd121(71)*acd121(74)
      acd121(78)=acd121(13)*acd121(14)
      acd121(79)=acd121(12)*acd121(11)
      acd121(78)=acd121(78)+acd121(79)
      acd121(79)=acd121(78)*acd121(64)
      acd121(80)=acd121(23)*acd121(33)
      acd121(81)=acd121(13)*acd121(39)
      acd121(80)=acd121(81)+acd121(80)
      acd121(80)=acd121(52)*acd121(80)
      acd121(74)=-acd121(10)*acd121(74)
      acd121(81)=acd121(45)*acd121(46)
      acd121(74)=acd121(81)+acd121(74)
      acd121(74)=acd121(21)*acd121(74)
      acd121(81)=acd121(21)*acd121(10)
      acd121(71)=acd121(81)-acd121(71)
      acd121(71)=acd121(17)*acd121(71)
      acd121(64)=-acd121(10)*acd121(64)
      acd121(81)=acd121(46)*acd121(47)
      acd121(64)=acd121(81)+acd121(64)
      acd121(64)=acd121(9)*acd121(64)
      acd121(81)=acd121(9)*acd121(10)
      acd121(78)=acd121(81)-acd121(78)
      acd121(78)=acd121(3)*acd121(78)
      acd121(81)=acd121(1)*acd121(2)
      brack=acd121(64)+acd121(65)+acd121(66)+acd121(67)+acd121(68)+acd121(69)+a&
      &cd121(70)+acd121(71)+acd121(72)+acd121(73)+acd121(74)+acd121(75)+acd121(&
      &76)+acd121(77)+acd121(78)+acd121(79)+acd121(80)+2.0_ki*acd121(81)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd121h1
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
!---#[ subroutine reconstruct_d121:
   subroutine     reconstruct_d121(coeffs)
      use p5_usbar_epnebbbarg_groups, only: tensrec_info_group14
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group14), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_121:
      coeffs%coeffs_121%c0 = derivative(czip)
      coeffs%coeffs_121%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_121%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_121%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_121%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_121%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_121%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_121%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_121%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_121%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_121%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_121%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_121%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_121%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_121%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_121:
   end subroutine reconstruct_d121
!---#] subroutine reconstruct_d121:
end module     p5_usbar_epnebbbarg_d121h1l1d
