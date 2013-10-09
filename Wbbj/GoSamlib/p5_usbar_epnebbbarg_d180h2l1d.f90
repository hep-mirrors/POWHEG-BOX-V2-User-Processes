module     p5_usbar_epnebbbarg_d180h2l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity2d180h2l1d.f90
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
   public :: derivative , reconstruct_d180
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd180h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd180
      complex(ki) :: brack
      acd180(1)=abb180(29)
      brack=acd180(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd180h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(40) :: acd180
      complex(ki) :: brack
      acd180(1)=k2(iv1)
      acd180(2)=abb180(14)
      acd180(3)=l5(iv1)
      acd180(4)=abb180(20)
      acd180(5)=l6(iv1)
      acd180(6)=abb180(18)
      acd180(7)=k7(iv1)
      acd180(8)=e7(iv1)
      acd180(9)=abb180(13)
      acd180(10)=spvak2k1(iv1)
      acd180(11)=abb180(27)
      acd180(12)=spvak2k3(iv1)
      acd180(13)=abb180(41)
      acd180(14)=spvak4k1(iv1)
      acd180(15)=abb180(28)
      acd180(16)=spvak4k2(iv1)
      acd180(17)=abb180(25)
      acd180(18)=spval5k1(iv1)
      acd180(19)=abb180(12)
      acd180(20)=spval5k2(iv1)
      acd180(21)=abb180(31)
      acd180(22)=spval5k3(iv1)
      acd180(23)=abb180(19)
      acd180(24)=spvak2e7(iv1)
      acd180(25)=abb180(24)
      acd180(26)=spvae7l6(iv1)
      acd180(27)=abb180(15)
      acd180(28)=acd180(7)+acd180(5)
      acd180(28)=acd180(6)*acd180(28)
      acd180(29)=-acd180(2)*acd180(1)
      acd180(30)=-acd180(4)*acd180(3)
      acd180(31)=-acd180(9)*acd180(8)
      acd180(32)=-acd180(11)*acd180(10)
      acd180(33)=-acd180(13)*acd180(12)
      acd180(34)=-acd180(15)*acd180(14)
      acd180(35)=-acd180(17)*acd180(16)
      acd180(36)=-acd180(19)*acd180(18)
      acd180(37)=-acd180(21)*acd180(20)
      acd180(38)=-acd180(23)*acd180(22)
      acd180(39)=-acd180(25)*acd180(24)
      acd180(40)=-acd180(27)*acd180(26)
      brack=acd180(28)+acd180(29)+acd180(30)+acd180(31)+acd180(32)+acd180(33)+a&
      &cd180(34)+acd180(35)+acd180(36)+acd180(37)+acd180(38)+acd180(39)+acd180(&
      &40)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd180h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(87) :: acd180
      complex(ki) :: brack
      acd180(1)=d(iv1,iv2)
      acd180(2)=abb180(16)
      acd180(3)=k2(iv1)
      acd180(4)=spvak2k1(iv2)
      acd180(5)=abb180(34)
      acd180(6)=spvak2k3(iv2)
      acd180(7)=abb180(60)
      acd180(8)=spvak4k1(iv2)
      acd180(9)=abb180(38)
      acd180(10)=k2(iv2)
      acd180(11)=spvak2k1(iv1)
      acd180(12)=spvak2k3(iv1)
      acd180(13)=spvak4k1(iv1)
      acd180(14)=l6(iv1)
      acd180(15)=abb180(30)
      acd180(16)=abb180(56)
      acd180(17)=abb180(37)
      acd180(18)=l6(iv2)
      acd180(19)=k7(iv1)
      acd180(20)=k7(iv2)
      acd180(21)=e7(iv1)
      acd180(22)=abb180(17)
      acd180(23)=abb180(33)
      acd180(24)=abb180(32)
      acd180(25)=e7(iv2)
      acd180(26)=spval5k2(iv2)
      acd180(27)=abb180(26)
      acd180(28)=spval5l6(iv2)
      acd180(29)=abb180(23)
      acd180(30)=spval5k7(iv2)
      acd180(31)=abb180(50)
      acd180(32)=spval6k2(iv2)
      acd180(33)=abb180(46)
      acd180(34)=spvak7k2(iv2)
      acd180(35)=abb180(45)
      acd180(36)=spvak2e7(iv2)
      acd180(37)=abb180(43)
      acd180(38)=spvae7k2(iv2)
      acd180(39)=abb180(22)
      acd180(40)=spval5e7(iv2)
      acd180(41)=abb180(36)
      acd180(42)=spvae7l6(iv2)
      acd180(43)=abb180(35)
      acd180(44)=spval5k2(iv1)
      acd180(45)=spval5l6(iv1)
      acd180(46)=spval5k7(iv1)
      acd180(47)=spval6k2(iv1)
      acd180(48)=spvak7k2(iv1)
      acd180(49)=spvak2e7(iv1)
      acd180(50)=spvae7k2(iv1)
      acd180(51)=spval5e7(iv1)
      acd180(52)=spvae7l6(iv1)
      acd180(53)=abb180(65)
      acd180(54)=abb180(64)
      acd180(55)=abb180(63)
      acd180(56)=abb180(62)
      acd180(57)=abb180(61)
      acd180(58)=abb180(21)
      acd180(59)=abb180(59)
      acd180(60)=abb180(49)
      acd180(61)=abb180(58)
      acd180(62)=abb180(54)
      acd180(63)=abb180(53)
      acd180(64)=abb180(51)
      acd180(65)=abb180(48)
      acd180(66)=abb180(47)
      acd180(67)=abb180(40)
      acd180(68)=abb180(44)
      acd180(69)=abb180(42)
      acd180(70)=abb180(39)
      acd180(71)=acd180(42)*acd180(70)
      acd180(72)=acd180(40)*acd180(69)
      acd180(73)=acd180(38)*acd180(68)
      acd180(74)=acd180(36)*acd180(67)
      acd180(75)=acd180(34)*acd180(66)
      acd180(76)=acd180(32)*acd180(65)
      acd180(77)=acd180(30)*acd180(64)
      acd180(78)=acd180(28)*acd180(63)
      acd180(79)=acd180(26)*acd180(62)
      acd180(80)=acd180(25)*acd180(24)
      acd180(81)=acd180(10)*acd180(9)
      acd180(82)=acd180(18)+acd180(20)
      acd180(83)=acd180(17)*acd180(82)
      acd180(71)=acd180(83)+acd180(81)+acd180(80)+acd180(79)+acd180(78)+acd180(&
      &77)+acd180(76)+acd180(75)+acd180(74)+acd180(73)+acd180(71)+acd180(72)
      acd180(71)=acd180(13)*acd180(71)
      acd180(72)=acd180(42)*acd180(61)
      acd180(73)=acd180(40)*acd180(60)
      acd180(74)=acd180(38)*acd180(59)
      acd180(75)=acd180(36)*acd180(58)
      acd180(76)=acd180(34)*acd180(57)
      acd180(77)=acd180(32)*acd180(56)
      acd180(78)=acd180(30)*acd180(55)
      acd180(79)=acd180(28)*acd180(54)
      acd180(80)=acd180(26)*acd180(53)
      acd180(81)=acd180(25)*acd180(23)
      acd180(83)=acd180(10)*acd180(7)
      acd180(84)=acd180(16)*acd180(82)
      acd180(72)=acd180(84)+acd180(83)+acd180(81)+acd180(80)+acd180(79)+acd180(&
      &78)+acd180(77)+acd180(76)+acd180(75)+acd180(74)+acd180(72)+acd180(73)
      acd180(72)=acd180(12)*acd180(72)
      acd180(73)=acd180(42)*acd180(43)
      acd180(74)=acd180(40)*acd180(41)
      acd180(75)=acd180(38)*acd180(39)
      acd180(76)=acd180(36)*acd180(37)
      acd180(77)=acd180(34)*acd180(35)
      acd180(78)=acd180(32)*acd180(33)
      acd180(79)=acd180(30)*acd180(31)
      acd180(80)=acd180(28)*acd180(29)
      acd180(81)=acd180(26)*acd180(27)
      acd180(83)=acd180(25)*acd180(22)
      acd180(84)=acd180(10)*acd180(5)
      acd180(82)=-acd180(15)*acd180(82)
      acd180(73)=acd180(82)+acd180(84)+acd180(83)+acd180(81)+acd180(80)+acd180(&
      &79)+acd180(78)+acd180(77)+acd180(76)+acd180(75)+acd180(73)+acd180(74)
      acd180(73)=acd180(11)*acd180(73)
      acd180(74)=acd180(52)*acd180(70)
      acd180(75)=acd180(51)*acd180(69)
      acd180(76)=acd180(50)*acd180(68)
      acd180(77)=acd180(49)*acd180(67)
      acd180(78)=acd180(48)*acd180(66)
      acd180(79)=acd180(47)*acd180(65)
      acd180(80)=acd180(46)*acd180(64)
      acd180(81)=acd180(45)*acd180(63)
      acd180(82)=acd180(44)*acd180(62)
      acd180(83)=acd180(21)*acd180(24)
      acd180(84)=acd180(3)*acd180(9)
      acd180(85)=acd180(14)+acd180(19)
      acd180(86)=acd180(17)*acd180(85)
      acd180(74)=acd180(86)+acd180(84)+acd180(83)+acd180(82)+acd180(81)+acd180(&
      &80)+acd180(79)+acd180(78)+acd180(77)+acd180(76)+acd180(74)+acd180(75)
      acd180(74)=acd180(8)*acd180(74)
      acd180(75)=acd180(52)*acd180(61)
      acd180(76)=acd180(51)*acd180(60)
      acd180(77)=acd180(50)*acd180(59)
      acd180(78)=acd180(49)*acd180(58)
      acd180(79)=acd180(48)*acd180(57)
      acd180(80)=acd180(47)*acd180(56)
      acd180(81)=acd180(46)*acd180(55)
      acd180(82)=acd180(45)*acd180(54)
      acd180(83)=acd180(44)*acd180(53)
      acd180(84)=acd180(21)*acd180(23)
      acd180(86)=acd180(3)*acd180(7)
      acd180(87)=acd180(16)*acd180(85)
      acd180(75)=acd180(87)+acd180(86)+acd180(84)+acd180(83)+acd180(82)+acd180(&
      &81)+acd180(80)+acd180(79)+acd180(78)+acd180(77)+acd180(75)+acd180(76)
      acd180(75)=acd180(6)*acd180(75)
      acd180(76)=acd180(52)*acd180(43)
      acd180(77)=acd180(51)*acd180(41)
      acd180(78)=acd180(50)*acd180(39)
      acd180(79)=acd180(49)*acd180(37)
      acd180(80)=acd180(48)*acd180(35)
      acd180(81)=acd180(47)*acd180(33)
      acd180(82)=acd180(46)*acd180(31)
      acd180(83)=acd180(45)*acd180(29)
      acd180(84)=acd180(44)*acd180(27)
      acd180(86)=acd180(21)*acd180(22)
      acd180(87)=acd180(3)*acd180(5)
      acd180(85)=-acd180(15)*acd180(85)
      acd180(76)=acd180(85)+acd180(87)+acd180(86)+acd180(84)+acd180(83)+acd180(&
      &82)+acd180(81)+acd180(80)+acd180(79)+acd180(78)+acd180(76)+acd180(77)
      acd180(76)=acd180(4)*acd180(76)
      acd180(77)=acd180(1)*acd180(2)
      brack=acd180(71)+acd180(72)+acd180(73)+acd180(74)+acd180(75)+acd180(76)+2&
      &.0_ki*acd180(77)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd180h2
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
!---#[ subroutine reconstruct_d180:
   subroutine     reconstruct_d180(coeffs)
      use p5_usbar_epnebbbarg_groups, only: tensrec_info_group2
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group2), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_180:
      coeffs%coeffs_180%c0 = derivative(czip)
      coeffs%coeffs_180%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_180%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_180%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_180%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_180%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_180%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_180%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_180%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_180%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_180%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_180%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_180%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_180%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_180%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_180:
   end subroutine reconstruct_d180
!---#] subroutine reconstruct_d180:
end module     p5_usbar_epnebbbarg_d180h2l1d
