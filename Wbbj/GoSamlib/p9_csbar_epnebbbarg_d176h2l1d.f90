module     p9_csbar_epnebbbarg_d176h2l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity2d176h2l1d.f90
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
   public :: derivative , reconstruct_d176
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd176h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd176
      complex(ki) :: brack
      acd176(1)=abb176(15)
      brack=acd176(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd176h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(87) :: acd176
      complex(ki) :: brack
      acd176(1)=k2(iv1)
      acd176(2)=abb176(42)
      acd176(3)=l5(iv1)
      acd176(4)=abb176(31)
      acd176(5)=l6(iv1)
      acd176(6)=abb176(27)
      acd176(7)=k7(iv1)
      acd176(8)=abb176(21)
      acd176(9)=spvak2k1(iv1)
      acd176(10)=abb176(14)
      acd176(11)=spvak2k3(iv1)
      acd176(12)=abb176(44)
      acd176(13)=spvak2l5(iv1)
      acd176(14)=abb176(28)
      acd176(15)=spvak2l6(iv1)
      acd176(16)=abb176(16)
      acd176(17)=spvak2k7(iv1)
      acd176(18)=abb176(60)
      acd176(19)=spvak4k1(iv1)
      acd176(20)=abb176(23)
      acd176(21)=spvak4l5(iv1)
      acd176(22)=abb176(78)
      acd176(23)=spvak4l6(iv1)
      acd176(24)=abb176(72)
      acd176(25)=spvak4k7(iv1)
      acd176(26)=abb176(75)
      acd176(27)=spval5k1(iv1)
      acd176(28)=abb176(12)
      acd176(29)=spval5k2(iv1)
      acd176(30)=abb176(69)
      acd176(31)=spval5l6(iv1)
      acd176(32)=abb176(46)
      acd176(33)=spval5k7(iv1)
      acd176(34)=abb176(30)
      acd176(35)=spvak7k1(iv1)
      acd176(36)=abb176(25)
      acd176(37)=spvak7k2(iv1)
      acd176(38)=abb176(74)
      acd176(39)=spvak7l5(iv1)
      acd176(40)=abb176(22)
      acd176(41)=spvak7l6(iv1)
      acd176(42)=abb176(73)
      acd176(43)=spvae7k1(iv1)
      acd176(44)=abb176(70)
      acd176(45)=spvak2e7(iv1)
      acd176(46)=abb176(40)
      acd176(47)=spvae7k2(iv1)
      acd176(48)=abb176(66)
      acd176(49)=spvak4e7(iv1)
      acd176(50)=abb176(65)
      acd176(51)=spval5e7(iv1)
      acd176(52)=abb176(41)
      acd176(53)=spvae7l5(iv1)
      acd176(54)=abb176(63)
      acd176(55)=spvak7e7(iv1)
      acd176(56)=abb176(53)
      acd176(57)=spvae7k7(iv1)
      acd176(58)=abb176(50)
      acd176(59)=acd176(2)*acd176(1)
      acd176(60)=acd176(4)*acd176(3)
      acd176(61)=acd176(6)*acd176(5)
      acd176(62)=acd176(8)*acd176(7)
      acd176(63)=acd176(10)*acd176(9)
      acd176(64)=acd176(12)*acd176(11)
      acd176(65)=acd176(14)*acd176(13)
      acd176(66)=acd176(16)*acd176(15)
      acd176(67)=acd176(18)*acd176(17)
      acd176(68)=acd176(20)*acd176(19)
      acd176(69)=acd176(22)*acd176(21)
      acd176(70)=acd176(24)*acd176(23)
      acd176(71)=acd176(26)*acd176(25)
      acd176(72)=acd176(28)*acd176(27)
      acd176(73)=acd176(30)*acd176(29)
      acd176(74)=acd176(32)*acd176(31)
      acd176(75)=acd176(34)*acd176(33)
      acd176(76)=acd176(36)*acd176(35)
      acd176(77)=acd176(38)*acd176(37)
      acd176(78)=acd176(40)*acd176(39)
      acd176(79)=acd176(42)*acd176(41)
      acd176(80)=acd176(44)*acd176(43)
      acd176(81)=acd176(46)*acd176(45)
      acd176(82)=acd176(48)*acd176(47)
      acd176(83)=acd176(50)*acd176(49)
      acd176(84)=acd176(52)*acd176(51)
      acd176(85)=acd176(54)*acd176(53)
      acd176(86)=acd176(56)*acd176(55)
      acd176(87)=acd176(58)*acd176(57)
      brack=acd176(59)+acd176(60)+acd176(61)+acd176(62)+acd176(63)+acd176(64)+a&
      &cd176(65)+acd176(66)+acd176(67)+acd176(68)+acd176(69)+acd176(70)+acd176(&
      &71)+acd176(72)+acd176(73)+acd176(74)+acd176(75)+acd176(76)+acd176(77)+ac&
      &d176(78)+acd176(79)+acd176(80)+acd176(81)+acd176(82)+acd176(83)+acd176(8&
      &4)+acd176(85)+acd176(86)+acd176(87)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd176h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(55) :: acd176
      complex(ki) :: brack
      acd176(1)=d(iv1,iv2)
      acd176(2)=abb176(45)
      acd176(3)=spvak2k1(iv1)
      acd176(4)=spvak2l5(iv2)
      acd176(5)=abb176(13)
      acd176(6)=spvak2l6(iv2)
      acd176(7)=abb176(29)
      acd176(8)=spvak2k7(iv2)
      acd176(9)=abb176(20)
      acd176(10)=spval5l6(iv2)
      acd176(11)=abb176(26)
      acd176(12)=spvak7l6(iv2)
      acd176(13)=abb176(24)
      acd176(14)=spvak2e7(iv2)
      acd176(15)=abb176(18)
      acd176(16)=spvae7l6(iv2)
      acd176(17)=abb176(17)
      acd176(18)=spvak2k1(iv2)
      acd176(19)=spvak2l5(iv1)
      acd176(20)=spvak2l6(iv1)
      acd176(21)=spvak2k7(iv1)
      acd176(22)=spval5l6(iv1)
      acd176(23)=spvak7l6(iv1)
      acd176(24)=spvak2e7(iv1)
      acd176(25)=spvae7l6(iv1)
      acd176(26)=spvak2k3(iv2)
      acd176(27)=abb176(49)
      acd176(28)=spvak4k1(iv2)
      acd176(29)=abb176(37)
      acd176(30)=spvak2k3(iv1)
      acd176(31)=spvak4k1(iv1)
      acd176(32)=abb176(64)
      acd176(33)=abb176(19)
      acd176(34)=abb176(61)
      acd176(35)=abb176(80)
      acd176(36)=abb176(58)
      acd176(37)=abb176(82)
      acd176(38)=abb176(57)
      acd176(39)=abb176(81)
      acd176(40)=abb176(56)
      acd176(41)=abb176(79)
      acd176(42)=abb176(51)
      acd176(43)=abb176(55)
      acd176(44)=acd176(16)*acd176(43)
      acd176(45)=acd176(14)*acd176(41)
      acd176(46)=acd176(12)*acd176(39)
      acd176(47)=acd176(10)*acd176(37)
      acd176(48)=acd176(8)*acd176(35)
      acd176(49)=acd176(6)*acd176(33)
      acd176(50)=acd176(4)*acd176(29)
      acd176(44)=acd176(50)+acd176(49)+acd176(48)+acd176(47)+acd176(46)+acd176(&
      &44)+acd176(45)
      acd176(44)=acd176(31)*acd176(44)
      acd176(45)=acd176(16)*acd176(42)
      acd176(46)=acd176(14)*acd176(40)
      acd176(47)=acd176(12)*acd176(38)
      acd176(48)=acd176(10)*acd176(36)
      acd176(49)=acd176(8)*acd176(34)
      acd176(50)=acd176(6)*acd176(32)
      acd176(51)=acd176(4)*acd176(27)
      acd176(45)=acd176(51)+acd176(50)+acd176(49)+acd176(48)+acd176(47)+acd176(&
      &45)+acd176(46)
      acd176(45)=acd176(30)*acd176(45)
      acd176(46)=acd176(25)*acd176(43)
      acd176(47)=acd176(24)*acd176(41)
      acd176(48)=acd176(23)*acd176(39)
      acd176(49)=acd176(22)*acd176(37)
      acd176(50)=acd176(21)*acd176(35)
      acd176(51)=acd176(20)*acd176(33)
      acd176(52)=acd176(19)*acd176(29)
      acd176(46)=acd176(52)+acd176(51)+acd176(50)+acd176(49)+acd176(48)+acd176(&
      &46)+acd176(47)
      acd176(46)=acd176(28)*acd176(46)
      acd176(47)=acd176(25)*acd176(42)
      acd176(48)=acd176(24)*acd176(40)
      acd176(49)=acd176(23)*acd176(38)
      acd176(50)=acd176(22)*acd176(36)
      acd176(51)=acd176(21)*acd176(34)
      acd176(52)=acd176(20)*acd176(32)
      acd176(53)=acd176(19)*acd176(27)
      acd176(47)=acd176(53)+acd176(52)+acd176(51)+acd176(50)+acd176(49)+acd176(&
      &47)+acd176(48)
      acd176(47)=acd176(26)*acd176(47)
      acd176(48)=acd176(25)*acd176(17)
      acd176(49)=acd176(24)*acd176(15)
      acd176(50)=acd176(23)*acd176(13)
      acd176(51)=acd176(22)*acd176(11)
      acd176(52)=acd176(21)*acd176(9)
      acd176(53)=acd176(20)*acd176(7)
      acd176(54)=acd176(19)*acd176(5)
      acd176(48)=acd176(54)+acd176(53)+acd176(52)+acd176(51)+acd176(50)+acd176(&
      &48)+acd176(49)
      acd176(48)=acd176(18)*acd176(48)
      acd176(49)=acd176(16)*acd176(17)
      acd176(50)=acd176(14)*acd176(15)
      acd176(51)=acd176(12)*acd176(13)
      acd176(52)=acd176(10)*acd176(11)
      acd176(53)=acd176(8)*acd176(9)
      acd176(54)=acd176(6)*acd176(7)
      acd176(55)=acd176(4)*acd176(5)
      acd176(49)=acd176(55)+acd176(54)+acd176(53)+acd176(52)+acd176(51)+acd176(&
      &49)+acd176(50)
      acd176(49)=acd176(3)*acd176(49)
      acd176(50)=acd176(1)*acd176(2)
      brack=acd176(44)+acd176(45)+acd176(46)+acd176(47)+acd176(48)+acd176(49)+2&
      &.0_ki*acd176(50)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd176h2
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
!---#[ subroutine reconstruct_d176:
   subroutine     reconstruct_d176(coeffs)
      use p9_csbar_epnebbbarg_groups, only: tensrec_info_group1
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group1), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_176:
      coeffs%coeffs_176%c0 = derivative(czip)
      coeffs%coeffs_176%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_176%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_176%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_176%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_176%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_176%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_176%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_176%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_176%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_176%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_176%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_176%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_176%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_176%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_176:
   end subroutine reconstruct_d176
!---#] subroutine reconstruct_d176:
end module     p9_csbar_epnebbbarg_d176h2l1d
