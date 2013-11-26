module     p5_usbar_epnebbbarg_d336h0l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity0d336h0l1d.f90
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
   public :: derivative , reconstruct_d336
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd336h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(55) :: acd336
      complex(ki) :: brack
      acd336(1)=dotproduct(k2,qshift)
      acd336(2)=dotproduct(e7,qshift)
      acd336(3)=abb336(14)
      acd336(4)=abb336(11)
      acd336(5)=dotproduct(l5,qshift)
      acd336(6)=abb336(20)
      acd336(7)=abb336(33)
      acd336(8)=dotproduct(k7,qshift)
      acd336(9)=abb336(62)
      acd336(10)=dotproduct(qshift,spvak2k1)
      acd336(11)=abb336(12)
      acd336(12)=dotproduct(qshift,spvak2k3)
      acd336(13)=abb336(22)
      acd336(14)=dotproduct(qshift,spvak4k1)
      acd336(15)=abb336(27)
      acd336(16)=dotproduct(qshift,spvak4k2)
      acd336(17)=abb336(36)
      acd336(18)=dotproduct(qshift,spval5k1)
      acd336(19)=abb336(31)
      acd336(20)=dotproduct(qshift,spval5k2)
      acd336(21)=abb336(38)
      acd336(22)=dotproduct(qshift,spval5k3)
      acd336(23)=abb336(46)
      acd336(24)=dotproduct(qshift,spval5k7)
      acd336(25)=abb336(34)
      acd336(26)=dotproduct(qshift,spval6k1)
      acd336(27)=abb336(28)
      acd336(28)=dotproduct(qshift,spval6k3)
      acd336(29)=abb336(55)
      acd336(30)=dotproduct(qshift,spvak7k2)
      acd336(31)=abb336(42)
      acd336(32)=abb336(15)
      acd336(33)=dotproduct(qshift,qshift)
      acd336(34)=abb336(21)
      acd336(35)=abb336(10)
      acd336(36)=abb336(19)
      acd336(37)=abb336(16)
      acd336(38)=abb336(29)
      acd336(39)=abb336(24)
      acd336(40)=abb336(52)
      acd336(41)=abb336(13)
      acd336(42)=acd336(3)*acd336(1)
      acd336(43)=acd336(6)*acd336(5)
      acd336(44)=acd336(9)*acd336(8)
      acd336(45)=acd336(11)*acd336(10)
      acd336(46)=acd336(13)*acd336(12)
      acd336(47)=acd336(15)*acd336(14)
      acd336(48)=acd336(17)*acd336(16)
      acd336(49)=acd336(19)*acd336(18)
      acd336(50)=acd336(21)*acd336(20)
      acd336(51)=acd336(23)*acd336(22)
      acd336(52)=acd336(25)*acd336(24)
      acd336(53)=acd336(27)*acd336(26)
      acd336(54)=acd336(29)*acd336(28)
      acd336(55)=acd336(31)*acd336(30)
      acd336(42)=-acd336(32)+acd336(55)+acd336(54)+acd336(53)+acd336(52)+acd336&
      &(51)+acd336(50)+acd336(49)+acd336(48)+acd336(47)+acd336(46)+acd336(45)+a&
      &cd336(44)+acd336(43)+acd336(42)
      acd336(42)=acd336(2)*acd336(42)
      acd336(43)=acd336(5)+acd336(8)
      acd336(43)=acd336(7)*acd336(43)
      acd336(44)=-acd336(4)*acd336(1)
      acd336(45)=acd336(34)*acd336(33)
      acd336(46)=-acd336(35)*acd336(10)
      acd336(47)=-acd336(36)*acd336(12)
      acd336(48)=-acd336(37)*acd336(14)
      acd336(49)=-acd336(38)*acd336(16)
      acd336(50)=-acd336(39)*acd336(26)
      acd336(51)=-acd336(40)*acd336(28)
      brack=acd336(41)+acd336(42)+acd336(43)+acd336(44)+acd336(45)+acd336(46)+a&
      &cd336(47)+acd336(48)+acd336(49)+acd336(50)+acd336(51)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd336h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(70) :: acd336
      complex(ki) :: brack
      acd336(1)=k2(iv1)
      acd336(2)=dotproduct(e7,qshift)
      acd336(3)=abb336(14)
      acd336(4)=abb336(11)
      acd336(5)=l5(iv1)
      acd336(6)=abb336(20)
      acd336(7)=abb336(33)
      acd336(8)=k7(iv1)
      acd336(9)=abb336(62)
      acd336(10)=e7(iv1)
      acd336(11)=dotproduct(k2,qshift)
      acd336(12)=dotproduct(l5,qshift)
      acd336(13)=dotproduct(k7,qshift)
      acd336(14)=dotproduct(qshift,spvak2k1)
      acd336(15)=abb336(12)
      acd336(16)=dotproduct(qshift,spvak2k3)
      acd336(17)=abb336(22)
      acd336(18)=dotproduct(qshift,spvak4k1)
      acd336(19)=abb336(27)
      acd336(20)=dotproduct(qshift,spvak4k2)
      acd336(21)=abb336(36)
      acd336(22)=dotproduct(qshift,spval5k1)
      acd336(23)=abb336(31)
      acd336(24)=dotproduct(qshift,spval5k2)
      acd336(25)=abb336(38)
      acd336(26)=dotproduct(qshift,spval5k3)
      acd336(27)=abb336(46)
      acd336(28)=dotproduct(qshift,spval5k7)
      acd336(29)=abb336(34)
      acd336(30)=dotproduct(qshift,spval6k1)
      acd336(31)=abb336(28)
      acd336(32)=dotproduct(qshift,spval6k3)
      acd336(33)=abb336(55)
      acd336(34)=dotproduct(qshift,spvak7k2)
      acd336(35)=abb336(42)
      acd336(36)=abb336(15)
      acd336(37)=qshift(iv1)
      acd336(38)=abb336(21)
      acd336(39)=spvak2k1(iv1)
      acd336(40)=abb336(10)
      acd336(41)=spvak2k3(iv1)
      acd336(42)=abb336(19)
      acd336(43)=spvak4k1(iv1)
      acd336(44)=abb336(16)
      acd336(45)=spvak4k2(iv1)
      acd336(46)=abb336(29)
      acd336(47)=spval5k1(iv1)
      acd336(48)=spval5k2(iv1)
      acd336(49)=spval5k3(iv1)
      acd336(50)=spval5k7(iv1)
      acd336(51)=spval6k1(iv1)
      acd336(52)=abb336(24)
      acd336(53)=spval6k3(iv1)
      acd336(54)=abb336(52)
      acd336(55)=spvak7k2(iv1)
      acd336(56)=-acd336(3)*acd336(1)
      acd336(57)=-acd336(6)*acd336(5)
      acd336(58)=-acd336(9)*acd336(8)
      acd336(59)=-acd336(39)*acd336(15)
      acd336(60)=-acd336(41)*acd336(17)
      acd336(61)=-acd336(43)*acd336(19)
      acd336(62)=-acd336(45)*acd336(21)
      acd336(63)=-acd336(51)*acd336(31)
      acd336(64)=-acd336(53)*acd336(33)
      acd336(65)=-acd336(47)*acd336(23)
      acd336(66)=-acd336(48)*acd336(25)
      acd336(67)=-acd336(49)*acd336(27)
      acd336(68)=-acd336(50)*acd336(29)
      acd336(69)=-acd336(55)*acd336(35)
      acd336(56)=acd336(69)+acd336(68)+acd336(67)+acd336(66)+acd336(65)+acd336(&
      &64)+acd336(63)+acd336(62)+acd336(61)+acd336(60)+acd336(59)+acd336(58)+ac&
      &d336(56)+acd336(57)
      acd336(56)=acd336(2)*acd336(56)
      acd336(57)=-acd336(11)*acd336(3)
      acd336(58)=-acd336(12)*acd336(6)
      acd336(59)=-acd336(13)*acd336(9)
      acd336(60)=-acd336(14)*acd336(15)
      acd336(61)=-acd336(16)*acd336(17)
      acd336(62)=-acd336(18)*acd336(19)
      acd336(63)=-acd336(20)*acd336(21)
      acd336(64)=-acd336(22)*acd336(23)
      acd336(65)=-acd336(24)*acd336(25)
      acd336(66)=-acd336(26)*acd336(27)
      acd336(67)=-acd336(28)*acd336(29)
      acd336(68)=-acd336(30)*acd336(31)
      acd336(69)=-acd336(32)*acd336(33)
      acd336(70)=-acd336(34)*acd336(35)
      acd336(57)=acd336(36)+acd336(70)+acd336(69)+acd336(68)+acd336(67)+acd336(&
      &66)+acd336(65)+acd336(64)+acd336(63)+acd336(62)+acd336(61)+acd336(60)+ac&
      &d336(59)+acd336(58)+acd336(57)
      acd336(57)=acd336(10)*acd336(57)
      acd336(58)=-acd336(8)-acd336(5)
      acd336(58)=acd336(7)*acd336(58)
      acd336(59)=acd336(4)*acd336(1)
      acd336(60)=acd336(38)*acd336(37)
      acd336(61)=acd336(40)*acd336(39)
      acd336(62)=acd336(42)*acd336(41)
      acd336(63)=acd336(44)*acd336(43)
      acd336(64)=acd336(46)*acd336(45)
      acd336(65)=acd336(52)*acd336(51)
      acd336(66)=acd336(54)*acd336(53)
      brack=acd336(56)+acd336(57)+acd336(58)+acd336(59)-2.0_ki*acd336(60)+acd33&
      &6(61)+acd336(62)+acd336(63)+acd336(64)+acd336(65)+acd336(66)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd336h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(61) :: acd336
      complex(ki) :: brack
      acd336(1)=d(iv1,iv2)
      acd336(2)=abb336(21)
      acd336(3)=k2(iv1)
      acd336(4)=e7(iv2)
      acd336(5)=abb336(14)
      acd336(6)=k2(iv2)
      acd336(7)=e7(iv1)
      acd336(8)=l5(iv1)
      acd336(9)=abb336(20)
      acd336(10)=l5(iv2)
      acd336(11)=k7(iv1)
      acd336(12)=abb336(62)
      acd336(13)=k7(iv2)
      acd336(14)=spvak2k1(iv2)
      acd336(15)=abb336(12)
      acd336(16)=spvak2k3(iv2)
      acd336(17)=abb336(22)
      acd336(18)=spvak4k1(iv2)
      acd336(19)=abb336(27)
      acd336(20)=spvak4k2(iv2)
      acd336(21)=abb336(36)
      acd336(22)=spval5k1(iv2)
      acd336(23)=abb336(31)
      acd336(24)=spval5k2(iv2)
      acd336(25)=abb336(38)
      acd336(26)=spval5k3(iv2)
      acd336(27)=abb336(46)
      acd336(28)=spval5k7(iv2)
      acd336(29)=abb336(34)
      acd336(30)=spval6k1(iv2)
      acd336(31)=abb336(28)
      acd336(32)=spval6k3(iv2)
      acd336(33)=abb336(55)
      acd336(34)=spvak7k2(iv2)
      acd336(35)=abb336(42)
      acd336(36)=spvak2k1(iv1)
      acd336(37)=spvak2k3(iv1)
      acd336(38)=spvak4k1(iv1)
      acd336(39)=spvak4k2(iv1)
      acd336(40)=spval5k1(iv1)
      acd336(41)=spval5k2(iv1)
      acd336(42)=spval5k3(iv1)
      acd336(43)=spval5k7(iv1)
      acd336(44)=spval6k1(iv1)
      acd336(45)=spval6k3(iv1)
      acd336(46)=spvak7k2(iv1)
      acd336(47)=acd336(3)*acd336(5)
      acd336(48)=acd336(8)*acd336(9)
      acd336(49)=acd336(11)*acd336(12)
      acd336(50)=acd336(36)*acd336(15)
      acd336(51)=acd336(37)*acd336(17)
      acd336(52)=acd336(38)*acd336(19)
      acd336(53)=acd336(39)*acd336(21)
      acd336(54)=acd336(40)*acd336(23)
      acd336(55)=acd336(41)*acd336(25)
      acd336(56)=acd336(42)*acd336(27)
      acd336(57)=acd336(43)*acd336(29)
      acd336(58)=acd336(44)*acd336(31)
      acd336(59)=acd336(45)*acd336(33)
      acd336(60)=acd336(46)*acd336(35)
      acd336(47)=acd336(60)+acd336(59)+acd336(58)+acd336(57)+acd336(56)+acd336(&
      &55)+acd336(54)+acd336(53)+acd336(52)+acd336(51)+acd336(50)+acd336(49)+ac&
      &d336(48)+acd336(47)
      acd336(47)=acd336(4)*acd336(47)
      acd336(48)=acd336(6)*acd336(5)
      acd336(49)=acd336(10)*acd336(9)
      acd336(50)=acd336(13)*acd336(12)
      acd336(51)=acd336(14)*acd336(15)
      acd336(52)=acd336(16)*acd336(17)
      acd336(53)=acd336(18)*acd336(19)
      acd336(54)=acd336(20)*acd336(21)
      acd336(55)=acd336(22)*acd336(23)
      acd336(56)=acd336(24)*acd336(25)
      acd336(57)=acd336(26)*acd336(27)
      acd336(58)=acd336(28)*acd336(29)
      acd336(59)=acd336(30)*acd336(31)
      acd336(60)=acd336(32)*acd336(33)
      acd336(61)=acd336(34)*acd336(35)
      acd336(48)=acd336(61)+acd336(60)+acd336(59)+acd336(58)+acd336(57)+acd336(&
      &56)+acd336(55)+acd336(54)+acd336(53)+acd336(52)+acd336(51)+acd336(50)+ac&
      &d336(49)+acd336(48)
      acd336(48)=acd336(7)*acd336(48)
      acd336(49)=acd336(2)*acd336(1)
      brack=acd336(47)+acd336(48)+2.0_ki*acd336(49)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd336h0
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
      qshift = k6+k5
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
!---#[ subroutine reconstruct_d336:
   subroutine     reconstruct_d336(coeffs)
      use p5_usbar_epnebbbarg_groups, only: tensrec_info_group16
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group16), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_336:
      coeffs%coeffs_336%c0 = derivative(czip)
      coeffs%coeffs_336%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_336%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_336%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_336%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_336%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_336%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_336%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_336%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_336%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_336%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_336%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_336%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_336%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_336%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_336:
   end subroutine reconstruct_d336
!---#] subroutine reconstruct_d336:
end module     p5_usbar_epnebbbarg_d336h0l1d
