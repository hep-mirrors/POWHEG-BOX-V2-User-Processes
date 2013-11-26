module     p1_dbarc_epnebbbarg_d87h2l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity2d87h2l1d.f90
   ! generator: buildfortran_d.py
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_util, only: cond, d => metric_tensor
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
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd87h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd87
      complex(ki) :: brack
      acd87(1)=abb87(25)
      brack=acd87(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd87h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(96) :: acd87
      complex(ki) :: brack
      acd87(1)=k1(iv1)
      acd87(2)=abb87(35)
      acd87(3)=k2(iv1)
      acd87(4)=abb87(38)
      acd87(5)=l5(iv1)
      acd87(6)=abb87(32)
      acd87(7)=l6(iv1)
      acd87(8)=abb87(22)
      acd87(9)=k7(iv1)
      acd87(10)=abb87(171)
      acd87(11)=e7(iv1)
      acd87(12)=abb87(39)
      acd87(13)=spvak1k2(iv1)
      acd87(14)=abb87(36)
      acd87(15)=spvak1k3(iv1)
      acd87(16)=abb87(53)
      acd87(17)=spvak1l5(iv1)
      acd87(18)=abb87(34)
      acd87(19)=spvak1l6(iv1)
      acd87(20)=abb87(24)
      acd87(21)=spvak1k7(iv1)
      acd87(22)=abb87(41)
      acd87(23)=spvak2k1(iv1)
      acd87(24)=abb87(43)
      acd87(25)=spvak2k3(iv1)
      acd87(26)=abb87(29)
      acd87(27)=spvak2l5(iv1)
      acd87(28)=abb87(20)
      acd87(29)=spvak2l6(iv1)
      acd87(30)=abb87(17)
      acd87(31)=spvak2k7(iv1)
      acd87(32)=abb87(37)
      acd87(33)=spvak4k2(iv1)
      acd87(34)=abb87(74)
      acd87(35)=spvak4l6(iv1)
      acd87(36)=abb87(71)
      acd87(37)=spvak4k7(iv1)
      acd87(38)=abb87(48)
      acd87(39)=spval5k1(iv1)
      acd87(40)=abb87(40)
      acd87(41)=spval5k2(iv1)
      acd87(42)=abb87(16)
      acd87(43)=spval5k3(iv1)
      acd87(44)=abb87(95)
      acd87(45)=spval5l6(iv1)
      acd87(46)=abb87(19)
      acd87(47)=spval5k7(iv1)
      acd87(48)=abb87(252)
      acd87(49)=spval6k2(iv1)
      acd87(50)=abb87(135)
      acd87(51)=spvak7k2(iv1)
      acd87(52)=abb87(218)
      acd87(53)=spvak7k3(iv1)
      acd87(54)=abb87(132)
      acd87(55)=spvak7l6(iv1)
      acd87(56)=abb87(102)
      acd87(57)=spvak2e7(iv1)
      acd87(58)=abb87(75)
      acd87(59)=spvae7k2(iv1)
      acd87(60)=abb87(56)
      acd87(61)=spval5e7(iv1)
      acd87(62)=abb87(42)
      acd87(63)=spvae7l6(iv1)
      acd87(64)=abb87(98)
      acd87(65)=-acd87(2)*acd87(1)
      acd87(66)=-acd87(4)*acd87(3)
      acd87(67)=-acd87(6)*acd87(5)
      acd87(68)=-acd87(8)*acd87(7)
      acd87(69)=-acd87(10)*acd87(9)
      acd87(70)=-acd87(12)*acd87(11)
      acd87(71)=-acd87(14)*acd87(13)
      acd87(72)=-acd87(16)*acd87(15)
      acd87(73)=-acd87(18)*acd87(17)
      acd87(74)=-acd87(20)*acd87(19)
      acd87(75)=-acd87(22)*acd87(21)
      acd87(76)=-acd87(24)*acd87(23)
      acd87(77)=-acd87(26)*acd87(25)
      acd87(78)=-acd87(28)*acd87(27)
      acd87(79)=-acd87(30)*acd87(29)
      acd87(80)=-acd87(32)*acd87(31)
      acd87(81)=-acd87(34)*acd87(33)
      acd87(82)=-acd87(36)*acd87(35)
      acd87(83)=-acd87(38)*acd87(37)
      acd87(84)=-acd87(40)*acd87(39)
      acd87(85)=-acd87(42)*acd87(41)
      acd87(86)=-acd87(44)*acd87(43)
      acd87(87)=-acd87(46)*acd87(45)
      acd87(88)=-acd87(48)*acd87(47)
      acd87(89)=-acd87(50)*acd87(49)
      acd87(90)=-acd87(52)*acd87(51)
      acd87(91)=-acd87(54)*acd87(53)
      acd87(92)=-acd87(56)*acd87(55)
      acd87(93)=-acd87(58)*acd87(57)
      acd87(94)=-acd87(60)*acd87(59)
      acd87(95)=-acd87(62)*acd87(61)
      acd87(96)=-acd87(64)*acd87(63)
      brack=acd87(65)+acd87(66)+acd87(67)+acd87(68)+acd87(69)+acd87(70)+acd87(7&
      &1)+acd87(72)+acd87(73)+acd87(74)+acd87(75)+acd87(76)+acd87(77)+acd87(78)&
      &+acd87(79)+acd87(80)+acd87(81)+acd87(82)+acd87(83)+acd87(84)+acd87(85)+a&
      &cd87(86)+acd87(87)+acd87(88)+acd87(89)+acd87(90)+acd87(91)+acd87(92)+acd&
      &87(93)+acd87(94)+acd87(95)+acd87(96)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd87h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(89) :: acd87
      complex(ki) :: brack
      acd87(1)=d(iv1,iv2)
      acd87(2)=abb87(107)
      acd87(3)=k1(iv1)
      acd87(4)=k2(iv2)
      acd87(5)=abb87(96)
      acd87(6)=spval5l6(iv2)
      acd87(7)=abb87(64)
      acd87(8)=k1(iv2)
      acd87(9)=k2(iv1)
      acd87(10)=spval5l6(iv1)
      acd87(11)=abb87(18)
      acd87(12)=l5(iv2)
      acd87(13)=abb87(168)
      acd87(14)=l6(iv2)
      acd87(15)=k7(iv2)
      acd87(16)=abb87(165)
      acd87(17)=e7(iv2)
      acd87(18)=abb87(141)
      acd87(19)=abb87(55)
      acd87(20)=spvak1k2(iv2)
      acd87(21)=abb87(49)
      acd87(22)=spvak1k3(iv2)
      acd87(23)=abb87(54)
      acd87(24)=spvak1l5(iv2)
      acd87(25)=abb87(45)
      acd87(26)=spvak1l6(iv2)
      acd87(27)=abb87(28)
      acd87(28)=spvak1k7(iv2)
      acd87(29)=abb87(44)
      acd87(30)=spvak4k2(iv2)
      acd87(31)=abb87(85)
      acd87(32)=spvak4k7(iv2)
      acd87(33)=abb87(50)
      acd87(34)=spval5k2(iv2)
      acd87(35)=abb87(21)
      acd87(36)=spval6k2(iv2)
      acd87(37)=abb87(214)
      acd87(38)=spvak7k2(iv2)
      acd87(39)=abb87(230)
      acd87(40)=spvak7k3(iv2)
      acd87(41)=abb87(212)
      acd87(42)=l5(iv1)
      acd87(43)=l6(iv1)
      acd87(44)=k7(iv1)
      acd87(45)=e7(iv1)
      acd87(46)=spvak1k2(iv1)
      acd87(47)=spvak1k3(iv1)
      acd87(48)=spvak1l5(iv1)
      acd87(49)=spvak1l6(iv1)
      acd87(50)=spvak1k7(iv1)
      acd87(51)=spvak4k2(iv1)
      acd87(52)=spvak4k7(iv1)
      acd87(53)=spval5k2(iv1)
      acd87(54)=spval6k2(iv1)
      acd87(55)=spvak7k2(iv1)
      acd87(56)=spvak7k3(iv1)
      acd87(57)=abb87(31)
      acd87(58)=abb87(27)
      acd87(59)=abb87(23)
      acd87(60)=abb87(51)
      acd87(61)=abb87(26)
      acd87(62)=abb87(47)
      acd87(63)=abb87(30)
      acd87(64)=abb87(46)
      acd87(65)=abb87(86)
      acd87(66)=abb87(66)
      acd87(67)=abb87(33)
      acd87(68)=abb87(94)
      acd87(69)=abb87(92)
      acd87(70)=abb87(67)
      acd87(71)=acd87(41)*acd87(56)
      acd87(72)=acd87(39)*acd87(55)
      acd87(73)=acd87(37)*acd87(54)
      acd87(74)=acd87(35)*acd87(53)
      acd87(75)=acd87(33)*acd87(52)
      acd87(76)=acd87(31)*acd87(51)
      acd87(77)=acd87(29)*acd87(50)
      acd87(78)=acd87(27)*acd87(49)
      acd87(79)=acd87(25)*acd87(48)
      acd87(80)=acd87(23)*acd87(47)
      acd87(81)=acd87(21)*acd87(46)
      acd87(82)=acd87(18)*acd87(45)
      acd87(83)=acd87(16)*acd87(44)
      acd87(84)=acd87(3)*acd87(5)
      acd87(85)=acd87(42)+acd87(43)
      acd87(86)=-acd87(13)*acd87(85)
      acd87(87)=acd87(10)*acd87(19)
      acd87(88)=acd87(9)*acd87(11)
      acd87(71)=2.0_ki*acd87(88)+acd87(87)+acd87(86)+acd87(84)+acd87(83)+acd87(&
      &82)+acd87(81)+acd87(80)+acd87(79)+acd87(78)+acd87(77)+acd87(76)+acd87(75&
      &)+acd87(74)+acd87(73)+acd87(71)+acd87(72)
      acd87(71)=acd87(4)*acd87(71)
      acd87(72)=acd87(40)*acd87(41)
      acd87(73)=acd87(38)*acd87(39)
      acd87(74)=acd87(36)*acd87(37)
      acd87(75)=acd87(34)*acd87(35)
      acd87(76)=acd87(32)*acd87(33)
      acd87(77)=acd87(30)*acd87(31)
      acd87(78)=acd87(28)*acd87(29)
      acd87(79)=acd87(26)*acd87(27)
      acd87(80)=acd87(24)*acd87(25)
      acd87(81)=acd87(22)*acd87(23)
      acd87(82)=acd87(20)*acd87(21)
      acd87(83)=acd87(17)*acd87(18)
      acd87(84)=acd87(15)*acd87(16)
      acd87(86)=acd87(5)*acd87(8)
      acd87(87)=acd87(12)+acd87(14)
      acd87(88)=-acd87(13)*acd87(87)
      acd87(89)=acd87(6)*acd87(19)
      acd87(72)=acd87(89)+acd87(88)+acd87(86)+acd87(84)+acd87(83)+acd87(82)+acd&
      &87(81)+acd87(80)+acd87(79)+acd87(78)+acd87(77)+acd87(76)+acd87(75)+acd87&
      &(74)+acd87(72)+acd87(73)
      acd87(72)=acd87(9)*acd87(72)
      acd87(73)=acd87(40)*acd87(70)
      acd87(74)=acd87(38)*acd87(69)
      acd87(75)=acd87(36)*acd87(68)
      acd87(76)=acd87(34)*acd87(67)
      acd87(77)=acd87(32)*acd87(66)
      acd87(78)=acd87(30)*acd87(65)
      acd87(79)=acd87(28)*acd87(64)
      acd87(80)=acd87(26)*acd87(63)
      acd87(81)=acd87(24)*acd87(62)
      acd87(82)=acd87(22)*acd87(61)
      acd87(83)=acd87(20)*acd87(60)
      acd87(84)=acd87(17)*acd87(59)
      acd87(86)=acd87(15)*acd87(58)
      acd87(88)=acd87(7)*acd87(8)
      acd87(87)=acd87(57)*acd87(87)
      acd87(73)=acd87(87)+acd87(88)+acd87(86)+acd87(84)+acd87(83)+acd87(82)+acd&
      &87(81)+acd87(80)+acd87(79)+acd87(78)+acd87(77)+acd87(76)+acd87(75)+acd87&
      &(73)+acd87(74)
      acd87(73)=acd87(10)*acd87(73)
      acd87(74)=acd87(56)*acd87(70)
      acd87(75)=acd87(55)*acd87(69)
      acd87(76)=acd87(54)*acd87(68)
      acd87(77)=acd87(53)*acd87(67)
      acd87(78)=acd87(52)*acd87(66)
      acd87(79)=acd87(51)*acd87(65)
      acd87(80)=acd87(50)*acd87(64)
      acd87(81)=acd87(49)*acd87(63)
      acd87(82)=acd87(48)*acd87(62)
      acd87(83)=acd87(47)*acd87(61)
      acd87(84)=acd87(46)*acd87(60)
      acd87(86)=acd87(45)*acd87(59)
      acd87(87)=acd87(44)*acd87(58)
      acd87(88)=acd87(3)*acd87(7)
      acd87(85)=acd87(57)*acd87(85)
      acd87(74)=acd87(85)+acd87(88)+acd87(87)+acd87(86)+acd87(84)+acd87(83)+acd&
      &87(82)+acd87(81)+acd87(80)+acd87(79)+acd87(78)+acd87(77)+acd87(76)+acd87&
      &(74)+acd87(75)
      acd87(74)=acd87(6)*acd87(74)
      acd87(75)=acd87(1)*acd87(2)
      brack=acd87(71)+acd87(72)+acd87(73)+acd87(74)+2.0_ki*acd87(75)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd87h2
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
      use p1_dbarc_epnebbbarg_groups, only: tensrec_info_group2
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
end module     p1_dbarc_epnebbbarg_d87h2l1d
