module     p9_csbar_epnebbbarg_d219h3l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity3d219h3l1d.f90
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
   public :: derivative , reconstruct_d219
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd219h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(82) :: acd219
      complex(ki) :: brack
      acd219(1)=dotproduct(k2,qshift)
      acd219(2)=abb219(26)
      acd219(3)=dotproduct(l5,qshift)
      acd219(4)=abb219(27)
      acd219(5)=dotproduct(k7,qshift)
      acd219(6)=abb219(36)
      acd219(7)=dotproduct(qshift,spvak2k1)
      acd219(8)=abb219(13)
      acd219(9)=dotproduct(qshift,spvak2k3)
      acd219(10)=abb219(14)
      acd219(11)=dotproduct(qshift,spvak2l5)
      acd219(12)=abb219(16)
      acd219(13)=dotproduct(qshift,spvak2l6)
      acd219(14)=abb219(17)
      acd219(15)=dotproduct(qshift,spvak2k7)
      acd219(16)=abb219(33)
      acd219(17)=dotproduct(qshift,spvak4k1)
      acd219(18)=abb219(28)
      acd219(19)=dotproduct(qshift,spvak4k2)
      acd219(20)=abb219(31)
      acd219(21)=dotproduct(qshift,spvak4l5)
      acd219(22)=abb219(32)
      acd219(23)=dotproduct(qshift,spvak4l6)
      acd219(24)=abb219(65)
      acd219(25)=dotproduct(qshift,spvak4k7)
      acd219(26)=abb219(50)
      acd219(27)=dotproduct(qshift,spval5k1)
      acd219(28)=abb219(43)
      acd219(29)=dotproduct(qshift,spval5k2)
      acd219(30)=abb219(30)
      acd219(31)=dotproduct(qshift,spval5k7)
      acd219(32)=abb219(18)
      acd219(33)=dotproduct(qshift,spvak7k1)
      acd219(34)=abb219(66)
      acd219(35)=dotproduct(qshift,spvak7k2)
      acd219(36)=abb219(51)
      acd219(37)=dotproduct(qshift,spvak7l5)
      acd219(38)=abb219(46)
      acd219(39)=dotproduct(qshift,spvae7k1)
      acd219(40)=abb219(62)
      acd219(41)=dotproduct(qshift,spvak2e7)
      acd219(42)=abb219(39)
      acd219(43)=dotproduct(qshift,spvae7k2)
      acd219(44)=abb219(61)
      acd219(45)=dotproduct(qshift,spvak4e7)
      acd219(46)=abb219(57)
      acd219(47)=dotproduct(qshift,spval5e7)
      acd219(48)=abb219(52)
      acd219(49)=dotproduct(qshift,spvae7l5)
      acd219(50)=abb219(48)
      acd219(51)=dotproduct(qshift,spvak7e7)
      acd219(52)=abb219(45)
      acd219(53)=dotproduct(qshift,spvae7k7)
      acd219(54)=abb219(38)
      acd219(55)=abb219(19)
      acd219(56)=-acd219(2)*acd219(1)
      acd219(57)=-acd219(4)*acd219(3)
      acd219(58)=-acd219(6)*acd219(5)
      acd219(59)=-acd219(8)*acd219(7)
      acd219(60)=-acd219(10)*acd219(9)
      acd219(61)=-acd219(12)*acd219(11)
      acd219(62)=-acd219(14)*acd219(13)
      acd219(63)=-acd219(16)*acd219(15)
      acd219(64)=-acd219(18)*acd219(17)
      acd219(65)=-acd219(20)*acd219(19)
      acd219(66)=-acd219(22)*acd219(21)
      acd219(67)=-acd219(24)*acd219(23)
      acd219(68)=-acd219(26)*acd219(25)
      acd219(69)=-acd219(28)*acd219(27)
      acd219(70)=-acd219(30)*acd219(29)
      acd219(71)=-acd219(32)*acd219(31)
      acd219(72)=-acd219(34)*acd219(33)
      acd219(73)=-acd219(36)*acd219(35)
      acd219(74)=-acd219(38)*acd219(37)
      acd219(75)=-acd219(40)*acd219(39)
      acd219(76)=-acd219(42)*acd219(41)
      acd219(77)=-acd219(44)*acd219(43)
      acd219(78)=-acd219(46)*acd219(45)
      acd219(79)=-acd219(48)*acd219(47)
      acd219(80)=-acd219(50)*acd219(49)
      acd219(81)=-acd219(52)*acd219(51)
      acd219(82)=-acd219(54)*acd219(53)
      brack=acd219(55)+acd219(56)+acd219(57)+acd219(58)+acd219(59)+acd219(60)+a&
      &cd219(61)+acd219(62)+acd219(63)+acd219(64)+acd219(65)+acd219(66)+acd219(&
      &67)+acd219(68)+acd219(69)+acd219(70)+acd219(71)+acd219(72)+acd219(73)+ac&
      &d219(74)+acd219(75)+acd219(76)+acd219(77)+acd219(78)+acd219(79)+acd219(8&
      &0)+acd219(81)+acd219(82)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd219h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(81) :: acd219
      complex(ki) :: brack
      acd219(1)=k2(iv1)
      acd219(2)=abb219(26)
      acd219(3)=l5(iv1)
      acd219(4)=abb219(27)
      acd219(5)=k7(iv1)
      acd219(6)=abb219(36)
      acd219(7)=spvak2k1(iv1)
      acd219(8)=abb219(13)
      acd219(9)=spvak2k3(iv1)
      acd219(10)=abb219(14)
      acd219(11)=spvak2l5(iv1)
      acd219(12)=abb219(16)
      acd219(13)=spvak2l6(iv1)
      acd219(14)=abb219(17)
      acd219(15)=spvak2k7(iv1)
      acd219(16)=abb219(33)
      acd219(17)=spvak4k1(iv1)
      acd219(18)=abb219(28)
      acd219(19)=spvak4k2(iv1)
      acd219(20)=abb219(31)
      acd219(21)=spvak4l5(iv1)
      acd219(22)=abb219(32)
      acd219(23)=spvak4l6(iv1)
      acd219(24)=abb219(65)
      acd219(25)=spvak4k7(iv1)
      acd219(26)=abb219(50)
      acd219(27)=spval5k1(iv1)
      acd219(28)=abb219(43)
      acd219(29)=spval5k2(iv1)
      acd219(30)=abb219(30)
      acd219(31)=spval5k7(iv1)
      acd219(32)=abb219(18)
      acd219(33)=spvak7k1(iv1)
      acd219(34)=abb219(66)
      acd219(35)=spvak7k2(iv1)
      acd219(36)=abb219(51)
      acd219(37)=spvak7l5(iv1)
      acd219(38)=abb219(46)
      acd219(39)=spvae7k1(iv1)
      acd219(40)=abb219(62)
      acd219(41)=spvak2e7(iv1)
      acd219(42)=abb219(39)
      acd219(43)=spvae7k2(iv1)
      acd219(44)=abb219(61)
      acd219(45)=spvak4e7(iv1)
      acd219(46)=abb219(57)
      acd219(47)=spval5e7(iv1)
      acd219(48)=abb219(52)
      acd219(49)=spvae7l5(iv1)
      acd219(50)=abb219(48)
      acd219(51)=spvak7e7(iv1)
      acd219(52)=abb219(45)
      acd219(53)=spvae7k7(iv1)
      acd219(54)=abb219(38)
      acd219(55)=acd219(2)*acd219(1)
      acd219(56)=acd219(4)*acd219(3)
      acd219(57)=acd219(6)*acd219(5)
      acd219(58)=acd219(8)*acd219(7)
      acd219(59)=acd219(10)*acd219(9)
      acd219(60)=acd219(12)*acd219(11)
      acd219(61)=acd219(14)*acd219(13)
      acd219(62)=acd219(16)*acd219(15)
      acd219(63)=acd219(18)*acd219(17)
      acd219(64)=acd219(20)*acd219(19)
      acd219(65)=acd219(22)*acd219(21)
      acd219(66)=acd219(24)*acd219(23)
      acd219(67)=acd219(26)*acd219(25)
      acd219(68)=acd219(28)*acd219(27)
      acd219(69)=acd219(30)*acd219(29)
      acd219(70)=acd219(32)*acd219(31)
      acd219(71)=acd219(34)*acd219(33)
      acd219(72)=acd219(36)*acd219(35)
      acd219(73)=acd219(38)*acd219(37)
      acd219(74)=acd219(40)*acd219(39)
      acd219(75)=acd219(42)*acd219(41)
      acd219(76)=acd219(44)*acd219(43)
      acd219(77)=acd219(46)*acd219(45)
      acd219(78)=acd219(48)*acd219(47)
      acd219(79)=acd219(50)*acd219(49)
      acd219(80)=acd219(52)*acd219(51)
      acd219(81)=acd219(54)*acd219(53)
      brack=acd219(55)+acd219(56)+acd219(57)+acd219(58)+acd219(59)+acd219(60)+a&
      &cd219(61)+acd219(62)+acd219(63)+acd219(64)+acd219(65)+acd219(66)+acd219(&
      &67)+acd219(68)+acd219(69)+acd219(70)+acd219(71)+acd219(72)+acd219(73)+ac&
      &d219(74)+acd219(75)+acd219(76)+acd219(77)+acd219(78)+acd219(79)+acd219(8&
      &0)+acd219(81)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd219h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd219
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd219h3
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
      qshift = k7+k6+k5
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
!---#[ subroutine reconstruct_d219:
   subroutine     reconstruct_d219(coeffs)
      use p9_csbar_epnebbbarg_groups, only: tensrec_info_group18
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group18), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_219:
      coeffs%coeffs_219%c0 = derivative(czip)
      coeffs%coeffs_219%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_219%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_219%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_219%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_219%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_219%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_219%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_219%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_219%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_219%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_219%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_219%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_219%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_219%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_219:
   end subroutine reconstruct_d219
!---#] subroutine reconstruct_d219:
end module     p9_csbar_epnebbbarg_d219h3l1d
