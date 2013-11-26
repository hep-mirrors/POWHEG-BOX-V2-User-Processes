module     p9_csbar_epnebbbarg_d87h0l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity0d87h0l1d.f90
   ! generator: buildfortran_d.py
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d87
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd87h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd87
      complex(ki) :: brack
      acd87(1)=abb87(16)
      brack=acd87(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd87h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(93) :: acd87
      complex(ki) :: brack
      acd87(1)=k1(iv1)
      acd87(2)=abb87(42)
      acd87(3)=k2(iv1)
      acd87(4)=abb87(33)
      acd87(5)=l5(iv1)
      acd87(6)=abb87(57)
      acd87(7)=l6(iv1)
      acd87(8)=abb87(151)
      acd87(9)=k7(iv1)
      acd87(10)=abb87(164)
      acd87(11)=e7(iv1)
      acd87(12)=abb87(122)
      acd87(13)=spvak1k2(iv1)
      acd87(14)=abb87(41)
      acd87(15)=spvak2k1(iv1)
      acd87(16)=abb87(24)
      acd87(17)=spvak2k3(iv1)
      acd87(18)=abb87(78)
      acd87(19)=spvak2l5(iv1)
      acd87(20)=abb87(64)
      acd87(21)=spvak2l6(iv1)
      acd87(22)=abb87(66)
      acd87(23)=spvak2k7(iv1)
      acd87(24)=abb87(61)
      acd87(25)=spvak4k1(iv1)
      acd87(26)=abb87(45)
      acd87(27)=spvak4k2(iv1)
      acd87(28)=abb87(56)
      acd87(29)=spvak4k7(iv1)
      acd87(30)=abb87(49)
      acd87(31)=spval5k1(iv1)
      acd87(32)=abb87(35)
      acd87(33)=spval5k2(iv1)
      acd87(34)=abb87(17)
      acd87(35)=spval5k3(iv1)
      acd87(36)=abb87(30)
      acd87(37)=spval5l6(iv1)
      acd87(38)=abb87(103)
      acd87(39)=spval5k7(iv1)
      acd87(40)=abb87(20)
      acd87(41)=spval6k1(iv1)
      acd87(42)=abb87(19)
      acd87(43)=spval6k2(iv1)
      acd87(44)=abb87(38)
      acd87(45)=spval6k3(iv1)
      acd87(46)=abb87(90)
      acd87(47)=spval6l5(iv1)
      acd87(48)=abb87(25)
      acd87(49)=spval6k7(iv1)
      acd87(50)=abb87(127)
      acd87(51)=spvak7k1(iv1)
      acd87(52)=abb87(133)
      acd87(53)=spvak7k2(iv1)
      acd87(54)=abb87(160)
      acd87(55)=spvak7k3(iv1)
      acd87(56)=abb87(156)
      acd87(57)=spvae7k2(iv1)
      acd87(58)=abb87(77)
      acd87(59)=spval5e7(iv1)
      acd87(60)=abb87(75)
      acd87(61)=spval6e7(iv1)
      acd87(62)=abb87(63)
      acd87(63)=-acd87(2)*acd87(1)
      acd87(64)=-acd87(4)*acd87(3)
      acd87(65)=-acd87(6)*acd87(5)
      acd87(66)=-acd87(8)*acd87(7)
      acd87(67)=-acd87(10)*acd87(9)
      acd87(68)=-acd87(12)*acd87(11)
      acd87(69)=-acd87(14)*acd87(13)
      acd87(70)=-acd87(16)*acd87(15)
      acd87(71)=-acd87(18)*acd87(17)
      acd87(72)=-acd87(20)*acd87(19)
      acd87(73)=-acd87(22)*acd87(21)
      acd87(74)=-acd87(24)*acd87(23)
      acd87(75)=-acd87(26)*acd87(25)
      acd87(76)=-acd87(28)*acd87(27)
      acd87(77)=-acd87(30)*acd87(29)
      acd87(78)=-acd87(32)*acd87(31)
      acd87(79)=-acd87(34)*acd87(33)
      acd87(80)=-acd87(36)*acd87(35)
      acd87(81)=-acd87(38)*acd87(37)
      acd87(82)=-acd87(40)*acd87(39)
      acd87(83)=-acd87(42)*acd87(41)
      acd87(84)=-acd87(44)*acd87(43)
      acd87(85)=-acd87(46)*acd87(45)
      acd87(86)=-acd87(48)*acd87(47)
      acd87(87)=-acd87(50)*acd87(49)
      acd87(88)=-acd87(52)*acd87(51)
      acd87(89)=-acd87(54)*acd87(53)
      acd87(90)=-acd87(56)*acd87(55)
      acd87(91)=-acd87(58)*acd87(57)
      acd87(92)=-acd87(60)*acd87(59)
      acd87(93)=-acd87(62)*acd87(61)
      brack=acd87(63)+acd87(64)+acd87(65)+acd87(66)+acd87(67)+acd87(68)+acd87(6&
      &9)+acd87(70)+acd87(71)+acd87(72)+acd87(73)+acd87(74)+acd87(75)+acd87(76)&
      &+acd87(77)+acd87(78)+acd87(79)+acd87(80)+acd87(81)+acd87(82)+acd87(83)+a&
      &cd87(84)+acd87(85)+acd87(86)+acd87(87)+acd87(88)+acd87(89)+acd87(90)+acd&
      &87(91)+acd87(92)+acd87(93)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd87h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(91) :: acd87
      complex(ki) :: brack
      acd87(1)=d(iv1,iv2)
      acd87(2)=abb87(48)
      acd87(3)=k1(iv1)
      acd87(4)=spval5k2(iv2)
      acd87(5)=abb87(36)
      acd87(6)=spval6k2(iv2)
      acd87(7)=abb87(68)
      acd87(8)=k1(iv2)
      acd87(9)=spval5k2(iv1)
      acd87(10)=spval6k2(iv1)
      acd87(11)=k2(iv1)
      acd87(12)=abb87(21)
      acd87(13)=abb87(27)
      acd87(14)=k2(iv2)
      acd87(15)=l5(iv1)
      acd87(16)=abb87(32)
      acd87(17)=abb87(51)
      acd87(18)=l5(iv2)
      acd87(19)=l6(iv1)
      acd87(20)=l6(iv2)
      acd87(21)=k7(iv1)
      acd87(22)=abb87(31)
      acd87(23)=abb87(34)
      acd87(24)=k7(iv2)
      acd87(25)=e7(iv1)
      acd87(26)=abb87(28)
      acd87(27)=abb87(18)
      acd87(28)=e7(iv2)
      acd87(29)=spvak2k1(iv2)
      acd87(30)=abb87(39)
      acd87(31)=spvak2k3(iv2)
      acd87(32)=abb87(22)
      acd87(33)=spvak2l5(iv2)
      acd87(34)=abb87(73)
      acd87(35)=spvak2l6(iv2)
      acd87(36)=abb87(74)
      acd87(37)=spvak2k7(iv2)
      acd87(38)=abb87(47)
      acd87(39)=spvak4k1(iv2)
      acd87(40)=abb87(60)
      acd87(41)=spvak4k7(iv2)
      acd87(42)=abb87(54)
      acd87(43)=spval5k1(iv2)
      acd87(44)=abb87(43)
      acd87(45)=spval6k1(iv2)
      acd87(46)=abb87(52)
      acd87(47)=spvak7k1(iv2)
      acd87(48)=abb87(50)
      acd87(49)=spvak7k3(iv2)
      acd87(50)=abb87(37)
      acd87(51)=spvak2k1(iv1)
      acd87(52)=spvak2k3(iv1)
      acd87(53)=spvak2l5(iv1)
      acd87(54)=spvak2l6(iv1)
      acd87(55)=spvak2k7(iv1)
      acd87(56)=spvak4k1(iv1)
      acd87(57)=spvak4k7(iv1)
      acd87(58)=spval5k1(iv1)
      acd87(59)=spval6k1(iv1)
      acd87(60)=spvak7k1(iv1)
      acd87(61)=spvak7k3(iv1)
      acd87(62)=abb87(29)
      acd87(63)=abb87(23)
      acd87(64)=abb87(67)
      acd87(65)=abb87(71)
      acd87(66)=abb87(62)
      acd87(67)=abb87(59)
      acd87(68)=abb87(53)
      acd87(69)=abb87(40)
      acd87(70)=abb87(76)
      acd87(71)=abb87(116)
      acd87(72)=abb87(112)
      acd87(73)=acd87(49)*acd87(72)
      acd87(74)=acd87(47)*acd87(71)
      acd87(75)=acd87(45)*acd87(70)
      acd87(76)=acd87(43)*acd87(69)
      acd87(77)=acd87(41)*acd87(68)
      acd87(78)=acd87(39)*acd87(67)
      acd87(79)=acd87(37)*acd87(66)
      acd87(80)=acd87(35)*acd87(65)
      acd87(81)=acd87(33)*acd87(64)
      acd87(82)=acd87(31)*acd87(63)
      acd87(83)=acd87(29)*acd87(62)
      acd87(84)=acd87(27)*acd87(28)
      acd87(85)=acd87(23)*acd87(24)
      acd87(86)=acd87(13)*acd87(14)
      acd87(87)=acd87(7)*acd87(8)
      acd87(88)=acd87(18)+acd87(20)
      acd87(89)=acd87(17)*acd87(88)
      acd87(73)=acd87(89)+acd87(87)+acd87(86)+acd87(85)+acd87(84)+acd87(83)+acd&
      &87(82)+acd87(81)+acd87(80)+acd87(79)+acd87(78)+acd87(77)+acd87(76)+acd87&
      &(75)+acd87(73)+acd87(74)
      acd87(73)=acd87(10)*acd87(73)
      acd87(74)=acd87(49)*acd87(50)
      acd87(75)=acd87(47)*acd87(48)
      acd87(76)=acd87(45)*acd87(46)
      acd87(77)=acd87(43)*acd87(44)
      acd87(78)=acd87(41)*acd87(42)
      acd87(79)=acd87(39)*acd87(40)
      acd87(80)=acd87(37)*acd87(38)
      acd87(81)=acd87(35)*acd87(36)
      acd87(82)=acd87(33)*acd87(34)
      acd87(83)=acd87(31)*acd87(32)
      acd87(84)=acd87(29)*acd87(30)
      acd87(85)=acd87(26)*acd87(28)
      acd87(86)=acd87(22)*acd87(24)
      acd87(87)=acd87(12)*acd87(14)
      acd87(89)=acd87(5)*acd87(8)
      acd87(88)=acd87(16)*acd87(88)
      acd87(74)=acd87(88)+acd87(89)+acd87(87)+acd87(86)+acd87(85)+acd87(84)+acd&
      &87(83)+acd87(82)+acd87(81)+acd87(80)+acd87(79)+acd87(78)+acd87(77)+acd87&
      &(76)+acd87(74)+acd87(75)
      acd87(74)=acd87(9)*acd87(74)
      acd87(75)=acd87(61)*acd87(72)
      acd87(76)=acd87(60)*acd87(71)
      acd87(77)=acd87(59)*acd87(70)
      acd87(78)=acd87(58)*acd87(69)
      acd87(79)=acd87(57)*acd87(68)
      acd87(80)=acd87(56)*acd87(67)
      acd87(81)=acd87(55)*acd87(66)
      acd87(82)=acd87(54)*acd87(65)
      acd87(83)=acd87(53)*acd87(64)
      acd87(84)=acd87(52)*acd87(63)
      acd87(85)=acd87(51)*acd87(62)
      acd87(86)=acd87(25)*acd87(27)
      acd87(87)=acd87(21)*acd87(23)
      acd87(88)=acd87(11)*acd87(13)
      acd87(89)=acd87(3)*acd87(7)
      acd87(90)=acd87(15)+acd87(19)
      acd87(91)=acd87(17)*acd87(90)
      acd87(75)=acd87(91)+acd87(89)+acd87(88)+acd87(87)+acd87(86)+acd87(85)+acd&
      &87(84)+acd87(83)+acd87(82)+acd87(81)+acd87(80)+acd87(79)+acd87(78)+acd87&
      &(77)+acd87(75)+acd87(76)
      acd87(75)=acd87(6)*acd87(75)
      acd87(76)=acd87(50)*acd87(61)
      acd87(77)=acd87(48)*acd87(60)
      acd87(78)=acd87(46)*acd87(59)
      acd87(79)=acd87(44)*acd87(58)
      acd87(80)=acd87(42)*acd87(57)
      acd87(81)=acd87(40)*acd87(56)
      acd87(82)=acd87(38)*acd87(55)
      acd87(83)=acd87(36)*acd87(54)
      acd87(84)=acd87(34)*acd87(53)
      acd87(85)=acd87(32)*acd87(52)
      acd87(86)=acd87(30)*acd87(51)
      acd87(87)=acd87(25)*acd87(26)
      acd87(88)=acd87(21)*acd87(22)
      acd87(89)=acd87(11)*acd87(12)
      acd87(91)=acd87(3)*acd87(5)
      acd87(90)=acd87(16)*acd87(90)
      acd87(76)=acd87(90)+acd87(91)+acd87(89)+acd87(88)+acd87(87)+acd87(86)+acd&
      &87(85)+acd87(84)+acd87(83)+acd87(82)+acd87(81)+acd87(80)+acd87(79)+acd87&
      &(78)+acd87(76)+acd87(77)
      acd87(76)=acd87(4)*acd87(76)
      acd87(77)=acd87(1)*acd87(2)
      brack=acd87(73)+acd87(74)+acd87(75)+acd87(76)+2.0_ki*acd87(77)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd87h0
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
!---#[ subroutine reconstruct_d87:
   subroutine     reconstruct_d87(coeffs)
      use p9_csbar_epnebbbarg_groups, only: tensrec_info_group2
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group2), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_87:
      coeffs%coeffs_87%c0 = derivative(czip)
      coeffs%coeffs_87%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_87%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_87%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_87%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_87%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_87%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_87%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_87%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_87%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_87%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_87%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_87%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_87%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_87%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_87:
   end subroutine reconstruct_d87
!---#] subroutine reconstruct_d87:
end module     p9_csbar_epnebbbarg_d87h0l1d
