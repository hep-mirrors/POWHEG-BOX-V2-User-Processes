module     p1_dbarc_epnebbbarg_d121h1l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity1d121h1l1d.f90
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
   public :: derivative , reconstruct_d121
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd121h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd121
      complex(ki) :: brack
      acd121(1)=abb121(23)
      brack=acd121(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd121h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(34) :: acd121
      complex(ki) :: brack
      acd121(1)=k2(iv1)
      acd121(2)=abb121(11)
      acd121(3)=l5(iv1)
      acd121(4)=abb121(21)
      acd121(5)=l6(iv1)
      acd121(6)=abb121(57)
      acd121(7)=k7(iv1)
      acd121(8)=e7(iv1)
      acd121(9)=abb121(55)
      acd121(10)=spvak1k2(iv1)
      acd121(11)=abb121(19)
      acd121(12)=spvak1l5(iv1)
      acd121(13)=abb121(42)
      acd121(14)=spvak2l5(iv1)
      acd121(15)=abb121(45)
      acd121(16)=spvak4k2(iv1)
      acd121(17)=abb121(24)
      acd121(18)=spvak4l5(iv1)
      acd121(19)=abb121(34)
      acd121(20)=spvae7k2(iv1)
      acd121(21)=abb121(44)
      acd121(22)=spval6e7(iv1)
      acd121(23)=abb121(43)
      acd121(24)=-acd121(7)-acd121(5)
      acd121(24)=acd121(6)*acd121(24)
      acd121(25)=-acd121(2)*acd121(1)
      acd121(26)=-acd121(4)*acd121(3)
      acd121(27)=-acd121(9)*acd121(8)
      acd121(28)=-acd121(11)*acd121(10)
      acd121(29)=-acd121(13)*acd121(12)
      acd121(30)=-acd121(15)*acd121(14)
      acd121(31)=-acd121(17)*acd121(16)
      acd121(32)=-acd121(19)*acd121(18)
      acd121(33)=-acd121(21)*acd121(20)
      acd121(34)=-acd121(23)*acd121(22)
      brack=acd121(24)+acd121(25)+acd121(26)+acd121(27)+acd121(28)+acd121(29)+a&
      &cd121(30)+acd121(31)+acd121(32)+acd121(33)+acd121(34)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd121h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(113) :: acd121
      complex(ki) :: brack
      acd121(1)=k2(iv1)
      acd121(2)=k2(iv2)
      acd121(3)=abb121(40)
      acd121(4)=l6(iv2)
      acd121(5)=abb121(30)
      acd121(6)=k7(iv2)
      acd121(7)=e7(iv2)
      acd121(8)=abb121(10)
      acd121(9)=spvak1k2(iv2)
      acd121(10)=abb121(14)
      acd121(11)=spvak1l5(iv2)
      acd121(12)=abb121(63)
      acd121(13)=spvak1l6(iv2)
      acd121(14)=abb121(53)
      acd121(15)=spvak1k7(iv2)
      acd121(16)=abb121(52)
      acd121(17)=spvak4k2(iv2)
      acd121(18)=abb121(74)
      acd121(19)=spvak4l5(iv2)
      acd121(20)=abb121(50)
      acd121(21)=spvak4l6(iv2)
      acd121(22)=abb121(26)
      acd121(23)=spvak4k7(iv2)
      acd121(24)=abb121(25)
      acd121(25)=spvak1e7(iv2)
      acd121(26)=abb121(15)
      acd121(27)=spvae7k2(iv2)
      acd121(28)=abb121(12)
      acd121(29)=spvak4e7(iv2)
      acd121(30)=abb121(49)
      acd121(31)=spval6e7(iv2)
      acd121(32)=abb121(48)
      acd121(33)=l6(iv1)
      acd121(34)=k7(iv1)
      acd121(35)=e7(iv1)
      acd121(36)=spvak1k2(iv1)
      acd121(37)=spvak1l5(iv1)
      acd121(38)=spvak1l6(iv1)
      acd121(39)=spvak1k7(iv1)
      acd121(40)=spvak4k2(iv1)
      acd121(41)=spvak4l5(iv1)
      acd121(42)=spvak4l6(iv1)
      acd121(43)=spvak4k7(iv1)
      acd121(44)=spvak1e7(iv1)
      acd121(45)=spvae7k2(iv1)
      acd121(46)=spvak4e7(iv1)
      acd121(47)=spval6e7(iv1)
      acd121(48)=abb121(22)
      acd121(49)=abb121(58)
      acd121(50)=abb121(67)
      acd121(51)=abb121(46)
      acd121(52)=abb121(9)
      acd121(53)=abb121(54)
      acd121(54)=abb121(20)
      acd121(55)=abb121(35)
      acd121(56)=abb121(13)
      acd121(57)=abb121(29)
      acd121(58)=spvak2l5(iv2)
      acd121(59)=abb121(33)
      acd121(60)=spvak2l6(iv2)
      acd121(61)=abb121(36)
      acd121(62)=spvak2k7(iv2)
      acd121(63)=abb121(32)
      acd121(64)=spval6l5(iv2)
      acd121(65)=abb121(75)
      acd121(66)=spvak7l5(iv2)
      acd121(67)=abb121(70)
      acd121(68)=spvak2e7(iv2)
      acd121(69)=abb121(27)
      acd121(70)=spvae7l5(iv2)
      acd121(71)=abb121(16)
      acd121(72)=spvak2l5(iv1)
      acd121(73)=spvak2l6(iv1)
      acd121(74)=spvak2k7(iv1)
      acd121(75)=spval6l5(iv1)
      acd121(76)=spvak7l5(iv1)
      acd121(77)=spvak2e7(iv1)
      acd121(78)=spvae7l5(iv1)
      acd121(79)=abb121(66)
      acd121(80)=abb121(47)
      acd121(81)=spval6k2(iv2)
      acd121(82)=spvak7k2(iv2)
      acd121(83)=spval6k2(iv1)
      acd121(84)=spvak7k2(iv1)
      acd121(85)=abb121(28)
      acd121(86)=abb121(18)
      acd121(87)=abb121(31)
      acd121(88)=abb121(73)
      acd121(89)=abb121(17)
      acd121(90)=abb121(61)
      acd121(91)=abb121(60)
      acd121(92)=abb121(65)
      acd121(93)=abb121(39)
      acd121(94)=abb121(59)
      acd121(95)=abb121(56)
      acd121(96)=acd121(4)+acd121(6)
      acd121(97)=-acd121(5)*acd121(96)
      acd121(98)=acd121(30)*acd121(29)
      acd121(99)=acd121(26)*acd121(25)
      acd121(100)=acd121(24)*acd121(23)
      acd121(101)=acd121(22)*acd121(21)
      acd121(102)=acd121(16)*acd121(15)
      acd121(103)=acd121(14)*acd121(13)
      acd121(104)=acd121(31)*acd121(32)
      acd121(105)=acd121(27)*acd121(28)
      acd121(106)=acd121(7)*acd121(8)
      acd121(107)=acd121(19)*acd121(20)
      acd121(108)=acd121(11)*acd121(12)
      acd121(109)=acd121(17)*acd121(18)
      acd121(110)=acd121(9)*acd121(10)
      acd121(111)=acd121(2)*acd121(3)
      acd121(97)=2.0_ki*acd121(111)+acd121(110)+acd121(109)+acd121(108)+acd121(&
      &107)+acd121(106)+acd121(105)+acd121(104)+acd121(103)+acd121(102)+acd121(&
      &101)+acd121(100)+acd121(98)+acd121(99)+acd121(97)
      acd121(97)=acd121(1)*acd121(97)
      acd121(98)=acd121(33)+acd121(34)
      acd121(99)=-acd121(5)*acd121(98)
      acd121(100)=acd121(30)*acd121(46)
      acd121(101)=acd121(26)*acd121(44)
      acd121(102)=acd121(24)*acd121(43)
      acd121(103)=acd121(22)*acd121(42)
      acd121(104)=acd121(16)*acd121(39)
      acd121(105)=acd121(14)*acd121(38)
      acd121(106)=acd121(47)*acd121(32)
      acd121(107)=acd121(45)*acd121(28)
      acd121(108)=acd121(35)*acd121(8)
      acd121(109)=acd121(41)*acd121(20)
      acd121(110)=acd121(37)*acd121(12)
      acd121(111)=acd121(40)*acd121(18)
      acd121(112)=acd121(36)*acd121(10)
      acd121(99)=acd121(112)+acd121(111)+acd121(110)+acd121(109)+acd121(108)+ac&
      &d121(107)+acd121(106)+acd121(105)+acd121(104)+acd121(103)+acd121(102)+ac&
      &d121(100)+acd121(101)+acd121(99)
      acd121(99)=acd121(2)*acd121(99)
      acd121(100)=-acd121(50)*acd121(96)
      acd121(101)=acd121(70)*acd121(93)
      acd121(102)=acd121(68)*acd121(92)
      acd121(103)=acd121(62)*acd121(89)
      acd121(104)=acd121(60)*acd121(88)
      acd121(105)=acd121(58)*acd121(87)
      acd121(106)=acd121(91)*acd121(66)
      acd121(107)=-acd121(90)*acd121(64)
      acd121(108)=acd121(31)*acd121(86)
      acd121(109)=acd121(27)*acd121(85)
      acd121(110)=acd121(7)*acd121(54)
      acd121(100)=acd121(110)+acd121(109)+acd121(108)+acd121(107)+acd121(106)+a&
      &cd121(105)+acd121(104)+acd121(103)+acd121(101)+acd121(102)+acd121(100)
      acd121(100)=acd121(40)*acd121(100)
      acd121(101)=-acd121(48)*acd121(96)
      acd121(102)=acd121(70)*acd121(71)
      acd121(103)=acd121(68)*acd121(69)
      acd121(104)=acd121(62)*acd121(63)
      acd121(105)=acd121(60)*acd121(61)
      acd121(106)=acd121(58)*acd121(59)
      acd121(107)=acd121(67)*acd121(66)
      acd121(108)=-acd121(65)*acd121(64)
      acd121(109)=acd121(31)*acd121(57)
      acd121(110)=acd121(27)*acd121(56)
      acd121(111)=acd121(7)*acd121(52)
      acd121(101)=acd121(111)+acd121(110)+acd121(109)+acd121(108)+acd121(107)+a&
      &cd121(106)+acd121(105)+acd121(104)+acd121(102)+acd121(103)+acd121(101)
      acd121(101)=acd121(36)*acd121(101)
      acd121(102)=-acd121(50)*acd121(98)
      acd121(103)=acd121(78)*acd121(93)
      acd121(104)=acd121(77)*acd121(92)
      acd121(105)=acd121(74)*acd121(89)
      acd121(106)=acd121(73)*acd121(88)
      acd121(107)=acd121(72)*acd121(87)
      acd121(108)=acd121(91)*acd121(76)
      acd121(109)=-acd121(90)*acd121(75)
      acd121(110)=acd121(47)*acd121(86)
      acd121(111)=acd121(45)*acd121(85)
      acd121(112)=acd121(35)*acd121(54)
      acd121(102)=acd121(112)+acd121(111)+acd121(110)+acd121(109)+acd121(108)+a&
      &cd121(107)+acd121(106)+acd121(105)+acd121(103)+acd121(104)+acd121(102)
      acd121(102)=acd121(17)*acd121(102)
      acd121(103)=-acd121(48)*acd121(98)
      acd121(104)=acd121(71)*acd121(78)
      acd121(105)=acd121(69)*acd121(77)
      acd121(106)=acd121(63)*acd121(74)
      acd121(107)=acd121(61)*acd121(73)
      acd121(108)=acd121(59)*acd121(72)
      acd121(109)=acd121(67)*acd121(76)
      acd121(110)=-acd121(65)*acd121(75)
      acd121(111)=acd121(47)*acd121(57)
      acd121(112)=acd121(45)*acd121(56)
      acd121(113)=acd121(35)*acd121(52)
      acd121(103)=acd121(113)+acd121(112)+acd121(111)+acd121(110)+acd121(109)+a&
      &cd121(108)+acd121(107)+acd121(106)+acd121(104)+acd121(105)+acd121(103)
      acd121(103)=acd121(9)*acd121(103)
      acd121(104)=acd121(51)*acd121(96)
      acd121(105)=-acd121(91)*acd121(82)
      acd121(106)=acd121(90)*acd121(81)
      acd121(107)=acd121(31)*acd121(95)
      acd121(108)=acd121(27)*acd121(94)
      acd121(109)=acd121(7)*acd121(55)
      acd121(104)=acd121(109)+acd121(108)+acd121(107)+acd121(105)+acd121(106)+a&
      &cd121(104)
      acd121(104)=acd121(41)*acd121(104)
      acd121(96)=acd121(49)*acd121(96)
      acd121(105)=-acd121(67)*acd121(82)
      acd121(106)=acd121(65)*acd121(81)
      acd121(107)=acd121(31)*acd121(80)
      acd121(108)=acd121(27)*acd121(79)
      acd121(109)=acd121(7)*acd121(53)
      acd121(96)=acd121(109)+acd121(108)+acd121(107)+acd121(105)+acd121(106)+ac&
      &d121(96)
      acd121(96)=acd121(37)*acd121(96)
      acd121(105)=acd121(51)*acd121(98)
      acd121(106)=-acd121(91)*acd121(84)
      acd121(107)=acd121(90)*acd121(83)
      acd121(108)=acd121(47)*acd121(95)
      acd121(109)=acd121(45)*acd121(94)
      acd121(110)=acd121(35)*acd121(55)
      acd121(105)=acd121(110)+acd121(109)+acd121(108)+acd121(106)+acd121(107)+a&
      &cd121(105)
      acd121(105)=acd121(19)*acd121(105)
      acd121(98)=acd121(49)*acd121(98)
      acd121(106)=-acd121(67)*acd121(84)
      acd121(107)=acd121(65)*acd121(83)
      acd121(108)=acd121(47)*acd121(80)
      acd121(109)=acd121(45)*acd121(79)
      acd121(110)=acd121(35)*acd121(53)
      acd121(98)=acd121(110)+acd121(109)+acd121(108)+acd121(106)+acd121(107)+ac&
      &d121(98)
      acd121(98)=acd121(11)*acd121(98)
      brack=acd121(96)+acd121(97)+acd121(98)+acd121(99)+acd121(100)+acd121(101)&
      &+acd121(102)+acd121(103)+acd121(104)+acd121(105)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd121h1
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
      use p1_dbarc_epnebbbarg_groups, only: tensrec_info_group14
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
end module     p1_dbarc_epnebbbarg_d121h1l1d
