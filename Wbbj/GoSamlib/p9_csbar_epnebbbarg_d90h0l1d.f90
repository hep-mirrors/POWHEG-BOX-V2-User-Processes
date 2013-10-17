module     p9_csbar_epnebbbarg_d90h0l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity0d90h0l1d.f90
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
   public :: derivative , reconstruct_d90
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd90h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd90
      complex(ki) :: brack
      acd90(1)=abb90(23)
      brack=acd90(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd90h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(40) :: acd90
      complex(ki) :: brack
      acd90(1)=k1(iv1)
      acd90(2)=abb90(29)
      acd90(3)=k2(iv1)
      acd90(4)=abb90(15)
      acd90(5)=k3(iv1)
      acd90(6)=abb90(70)
      acd90(7)=k4(iv1)
      acd90(8)=l5(iv1)
      acd90(9)=abb90(37)
      acd90(10)=l6(iv1)
      acd90(11)=abb90(109)
      acd90(12)=k7(iv1)
      acd90(13)=abb90(104)
      acd90(14)=e7(iv1)
      acd90(15)=abb90(64)
      acd90(16)=spvak4k1(iv1)
      acd90(17)=abb90(13)
      acd90(18)=spvak4k3(iv1)
      acd90(19)=abb90(14)
      acd90(20)=spval5k2(iv1)
      acd90(21)=abb90(28)
      acd90(22)=spval6k2(iv1)
      acd90(23)=abb90(22)
      acd90(24)=spval6l5(iv1)
      acd90(25)=abb90(55)
      acd90(26)=spvae7k1(iv1)
      acd90(27)=abb90(31)
      acd90(28)=acd90(7)+acd90(5)
      acd90(28)=acd90(6)*acd90(28)
      acd90(29)=-acd90(2)*acd90(1)
      acd90(30)=-acd90(4)*acd90(3)
      acd90(31)=-acd90(9)*acd90(8)
      acd90(32)=-acd90(11)*acd90(10)
      acd90(33)=-acd90(13)*acd90(12)
      acd90(34)=-acd90(15)*acd90(14)
      acd90(35)=-acd90(17)*acd90(16)
      acd90(36)=-acd90(19)*acd90(18)
      acd90(37)=-acd90(21)*acd90(20)
      acd90(38)=-acd90(23)*acd90(22)
      acd90(39)=-acd90(25)*acd90(24)
      acd90(40)=-acd90(27)*acd90(26)
      brack=acd90(28)+acd90(29)+acd90(30)+acd90(31)+acd90(32)+acd90(33)+acd90(3&
      &4)+acd90(35)+acd90(36)+acd90(37)+acd90(38)+acd90(39)+acd90(40)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd90h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(74) :: acd90
      complex(ki) :: brack
      acd90(1)=d(iv1,iv2)
      acd90(2)=abb90(42)
      acd90(3)=k1(iv1)
      acd90(4)=k2(iv2)
      acd90(5)=abb90(21)
      acd90(6)=spval5k2(iv2)
      acd90(7)=abb90(45)
      acd90(8)=spval6k2(iv2)
      acd90(9)=abb90(24)
      acd90(10)=k1(iv2)
      acd90(11)=k2(iv1)
      acd90(12)=spval5k2(iv1)
      acd90(13)=spval6k2(iv1)
      acd90(14)=k3(iv2)
      acd90(15)=abb90(127)
      acd90(16)=k4(iv2)
      acd90(17)=k7(iv2)
      acd90(18)=abb90(126)
      acd90(19)=e7(iv2)
      acd90(20)=abb90(47)
      acd90(21)=abb90(16)
      acd90(22)=spvak4k1(iv2)
      acd90(23)=abb90(20)
      acd90(24)=spvak4k2(iv2)
      acd90(25)=abb90(32)
      acd90(26)=spvak4k3(iv2)
      acd90(27)=abb90(25)
      acd90(28)=spvae7k1(iv2)
      acd90(29)=abb90(41)
      acd90(30)=spvae7k2(iv2)
      acd90(31)=abb90(59)
      acd90(32)=k3(iv1)
      acd90(33)=k4(iv1)
      acd90(34)=k7(iv1)
      acd90(35)=e7(iv1)
      acd90(36)=spvak4k1(iv1)
      acd90(37)=spvak4k2(iv1)
      acd90(38)=spvak4k3(iv1)
      acd90(39)=spvae7k1(iv1)
      acd90(40)=spvae7k2(iv1)
      acd90(41)=abb90(51)
      acd90(42)=abb90(91)
      acd90(43)=l5(iv1)
      acd90(44)=abb90(72)
      acd90(45)=abb90(30)
      acd90(46)=abb90(49)
      acd90(47)=l5(iv2)
      acd90(48)=l6(iv1)
      acd90(49)=l6(iv2)
      acd90(50)=abb90(46)
      acd90(51)=abb90(63)
      acd90(52)=abb90(36)
      acd90(53)=abb90(40)
      acd90(54)=abb90(12)
      acd90(55)=abb90(18)
      acd90(56)=abb90(17)
      acd90(57)=abb90(11)
      acd90(58)=abb90(26)
      acd90(59)=abb90(38)
      acd90(60)=acd90(40)*acd90(31)
      acd90(61)=acd90(39)*acd90(29)
      acd90(62)=acd90(38)*acd90(27)
      acd90(63)=acd90(37)*acd90(25)
      acd90(64)=acd90(36)*acd90(23)
      acd90(65)=acd90(35)*acd90(20)
      acd90(66)=acd90(34)*acd90(18)
      acd90(67)=acd90(3)*acd90(5)
      acd90(68)=acd90(32)+acd90(33)
      acd90(69)=-acd90(15)*acd90(68)
      acd90(70)=acd90(13)*acd90(21)
      acd90(60)=acd90(70)+acd90(69)+acd90(67)+acd90(66)+acd90(65)+acd90(64)+acd&
      &90(63)+acd90(62)+acd90(60)+acd90(61)
      acd90(60)=acd90(4)*acd90(60)
      acd90(61)=acd90(30)*acd90(31)
      acd90(62)=acd90(28)*acd90(29)
      acd90(63)=acd90(26)*acd90(27)
      acd90(64)=acd90(24)*acd90(25)
      acd90(65)=acd90(22)*acd90(23)
      acd90(66)=acd90(19)*acd90(20)
      acd90(67)=acd90(17)*acd90(18)
      acd90(69)=acd90(10)*acd90(5)
      acd90(70)=acd90(14)+acd90(16)
      acd90(71)=-acd90(15)*acd90(70)
      acd90(61)=acd90(71)+acd90(69)+acd90(67)+acd90(66)+acd90(65)+acd90(64)+acd&
      &90(63)+acd90(61)+acd90(62)
      acd90(61)=acd90(11)*acd90(61)
      acd90(62)=acd90(39)*acd90(59)
      acd90(63)=acd90(38)*acd90(58)
      acd90(64)=acd90(36)*acd90(57)
      acd90(65)=acd90(35)*acd90(53)
      acd90(66)=acd90(34)*acd90(51)
      acd90(67)=acd90(3)*acd90(9)
      acd90(69)=acd90(43)+acd90(48)
      acd90(71)=-acd90(44)*acd90(69)
      acd90(72)=acd90(42)*acd90(68)
      acd90(73)=acd90(11)*acd90(21)
      acd90(62)=acd90(73)+acd90(72)+acd90(71)+acd90(67)+acd90(66)+acd90(65)+acd&
      &90(64)+acd90(62)+acd90(63)
      acd90(62)=acd90(8)*acd90(62)
      acd90(63)=acd90(28)*acd90(59)
      acd90(64)=acd90(26)*acd90(58)
      acd90(65)=acd90(22)*acd90(57)
      acd90(66)=acd90(19)*acd90(53)
      acd90(67)=acd90(17)*acd90(51)
      acd90(71)=acd90(10)*acd90(9)
      acd90(72)=acd90(47)+acd90(49)
      acd90(73)=-acd90(44)*acd90(72)
      acd90(74)=acd90(42)*acd90(70)
      acd90(63)=acd90(74)+acd90(73)+acd90(71)+acd90(67)+acd90(66)+acd90(65)+acd&
      &90(63)+acd90(64)
      acd90(63)=acd90(13)*acd90(63)
      acd90(64)=acd90(28)*acd90(56)
      acd90(65)=acd90(26)*acd90(55)
      acd90(66)=acd90(22)*acd90(54)
      acd90(67)=acd90(19)*acd90(52)
      acd90(71)=acd90(17)*acd90(50)
      acd90(73)=acd90(10)*acd90(7)
      acd90(70)=acd90(41)*acd90(70)
      acd90(64)=acd90(70)+acd90(73)+acd90(71)+acd90(67)+acd90(66)+acd90(64)+acd&
      &90(65)
      acd90(64)=acd90(12)*acd90(64)
      acd90(65)=acd90(39)*acd90(56)
      acd90(66)=acd90(38)*acd90(55)
      acd90(67)=acd90(36)*acd90(54)
      acd90(70)=acd90(35)*acd90(52)
      acd90(71)=acd90(34)*acd90(50)
      acd90(73)=acd90(3)*acd90(7)
      acd90(68)=acd90(41)*acd90(68)
      acd90(65)=acd90(68)+acd90(73)+acd90(71)+acd90(70)+acd90(67)+acd90(65)+acd&
      &90(66)
      acd90(65)=acd90(6)*acd90(65)
      acd90(66)=acd90(40)*acd90(72)
      acd90(67)=acd90(30)*acd90(69)
      acd90(66)=acd90(66)+acd90(67)
      acd90(66)=acd90(46)*acd90(66)
      acd90(67)=acd90(37)*acd90(72)
      acd90(68)=acd90(24)*acd90(69)
      acd90(67)=acd90(67)+acd90(68)
      acd90(67)=acd90(45)*acd90(67)
      acd90(68)=acd90(1)*acd90(2)
      brack=acd90(60)+acd90(61)+acd90(62)+acd90(63)+acd90(64)+acd90(65)+acd90(6&
      &6)+acd90(67)+2.0_ki*acd90(68)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd90h0
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
!---#[ subroutine reconstruct_d90:
   subroutine     reconstruct_d90(coeffs)
      use p9_csbar_epnebbbarg_groups, only: tensrec_info_group13
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group13), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_90:
      coeffs%coeffs_90%c0 = derivative(czip)
      coeffs%coeffs_90%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_90%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_90%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_90%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_90%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_90%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_90%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_90%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_90%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_90%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_90%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_90%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_90%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_90%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_90:
   end subroutine reconstruct_d90
!---#] subroutine reconstruct_d90:
end module     p9_csbar_epnebbbarg_d90h0l1d