module     p5_usbar_epnebbbarg_d126h0l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity0d126h0l1d.f90
   ! generator: buildfortran_d.py
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d126
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd126h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(51) :: acd126
      complex(ki) :: brack
      acd126(1)=dotproduct(k7,qshift)
      acd126(2)=dotproduct(qshift,spvak4k1)
      acd126(3)=abb126(14)
      acd126(4)=dotproduct(qshift,spval5k3)
      acd126(5)=abb126(30)
      acd126(6)=dotproduct(qshift,spval6k3)
      acd126(7)=abb126(31)
      acd126(8)=dotproduct(qshift,spvae7k1)
      acd126(9)=abb126(19)
      acd126(10)=dotproduct(e7,qshift)
      acd126(11)=abb126(7)
      acd126(12)=abb126(17)
      acd126(13)=abb126(11)
      acd126(14)=dotproduct(qshift,spvak4k3)
      acd126(15)=dotproduct(qshift,spval5k1)
      acd126(16)=abb126(28)
      acd126(17)=dotproduct(qshift,spval6k1)
      acd126(18)=abb126(29)
      acd126(19)=dotproduct(qshift,spval5k7)
      acd126(20)=abb126(24)
      acd126(21)=dotproduct(qshift,spval6k7)
      acd126(22)=abb126(25)
      acd126(23)=dotproduct(qshift,spvak7k1)
      acd126(24)=abb126(9)
      acd126(25)=dotproduct(qshift,qshift)
      acd126(26)=abb126(18)
      acd126(27)=abb126(21)
      acd126(28)=abb126(32)
      acd126(29)=abb126(13)
      acd126(30)=abb126(34)
      acd126(31)=abb126(12)
      acd126(32)=abb126(26)
      acd126(33)=abb126(27)
      acd126(34)=abb126(35)
      acd126(35)=abb126(20)
      acd126(36)=abb126(16)
      acd126(37)=abb126(10)
      acd126(38)=abb126(33)
      acd126(39)=abb126(15)
      acd126(40)=abb126(22)
      acd126(41)=abb126(8)
      acd126(42)=acd126(11)*acd126(2)
      acd126(43)=acd126(12)*acd126(4)
      acd126(44)=acd126(13)*acd126(6)
      acd126(45)=acd126(20)*acd126(19)
      acd126(46)=acd126(22)*acd126(21)
      acd126(47)=acd126(24)*acd126(23)
      acd126(42)=acd126(47)+acd126(46)+acd126(45)+acd126(44)+acd126(43)+acd126(&
      &42)
      acd126(42)=acd126(10)*acd126(42)
      acd126(43)=acd126(16)*acd126(15)
      acd126(44)=acd126(18)*acd126(17)
      acd126(43)=acd126(44)+acd126(43)
      acd126(43)=acd126(43)*acd126(10)
      acd126(44)=acd126(34)*acd126(8)
      acd126(45)=acd126(36)*acd126(19)
      acd126(46)=acd126(37)*acd126(21)
      acd126(47)=acd126(38)*acd126(23)
      acd126(43)=acd126(43)+acd126(47)+acd126(46)+acd126(45)+acd126(44)
      acd126(43)=acd126(14)*acd126(43)
      acd126(44)=-acd126(26)*acd126(2)
      acd126(45)=-acd126(27)*acd126(4)
      acd126(46)=-acd126(28)*acd126(6)
      acd126(47)=-acd126(29)*acd126(8)
      acd126(48)=-acd126(30)*acd126(14)
      acd126(44)=acd126(31)+acd126(48)+acd126(47)+acd126(46)+acd126(45)+acd126(&
      &44)
      acd126(44)=acd126(25)*acd126(44)
      acd126(45)=acd126(3)*acd126(2)
      acd126(46)=acd126(5)*acd126(4)
      acd126(47)=acd126(7)*acd126(6)
      acd126(48)=acd126(9)*acd126(8)
      acd126(45)=acd126(48)+acd126(47)+acd126(45)+acd126(46)
      acd126(45)=acd126(1)*acd126(45)
      acd126(46)=-acd126(32)*acd126(4)
      acd126(47)=-acd126(33)*acd126(6)
      acd126(48)=-acd126(35)*acd126(8)
      acd126(49)=-acd126(39)*acd126(19)
      acd126(50)=-acd126(40)*acd126(21)
      acd126(51)=-acd126(41)*acd126(23)
      brack=acd126(42)+acd126(43)+acd126(44)+acd126(45)+acd126(46)+acd126(47)+a&
      &cd126(48)+acd126(49)+acd126(50)+acd126(51)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd126h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(68) :: acd126
      complex(ki) :: brack
      acd126(1)=k7(iv1)
      acd126(2)=dotproduct(qshift,spvak4k1)
      acd126(3)=abb126(14)
      acd126(4)=dotproduct(qshift,spval5k3)
      acd126(5)=abb126(30)
      acd126(6)=dotproduct(qshift,spval6k3)
      acd126(7)=abb126(31)
      acd126(8)=dotproduct(qshift,spvae7k1)
      acd126(9)=abb126(19)
      acd126(10)=e7(iv1)
      acd126(11)=abb126(7)
      acd126(12)=abb126(17)
      acd126(13)=abb126(11)
      acd126(14)=dotproduct(qshift,spvak4k3)
      acd126(15)=dotproduct(qshift,spval5k1)
      acd126(16)=abb126(28)
      acd126(17)=dotproduct(qshift,spval6k1)
      acd126(18)=abb126(29)
      acd126(19)=dotproduct(qshift,spval5k7)
      acd126(20)=abb126(24)
      acd126(21)=dotproduct(qshift,spval6k7)
      acd126(22)=abb126(25)
      acd126(23)=dotproduct(qshift,spvak7k1)
      acd126(24)=abb126(9)
      acd126(25)=qshift(iv1)
      acd126(26)=abb126(18)
      acd126(27)=abb126(21)
      acd126(28)=abb126(32)
      acd126(29)=abb126(13)
      acd126(30)=abb126(34)
      acd126(31)=abb126(12)
      acd126(32)=spvak4k1(iv1)
      acd126(33)=dotproduct(k7,qshift)
      acd126(34)=dotproduct(e7,qshift)
      acd126(35)=dotproduct(qshift,qshift)
      acd126(36)=spval5k3(iv1)
      acd126(37)=abb126(26)
      acd126(38)=spval6k3(iv1)
      acd126(39)=abb126(27)
      acd126(40)=spvae7k1(iv1)
      acd126(41)=abb126(35)
      acd126(42)=abb126(20)
      acd126(43)=spvak4k3(iv1)
      acd126(44)=abb126(16)
      acd126(45)=abb126(10)
      acd126(46)=abb126(33)
      acd126(47)=spval5k1(iv1)
      acd126(48)=spval6k1(iv1)
      acd126(49)=spval5k7(iv1)
      acd126(50)=abb126(15)
      acd126(51)=spval6k7(iv1)
      acd126(52)=abb126(22)
      acd126(53)=spvak7k1(iv1)
      acd126(54)=abb126(8)
      acd126(55)=acd126(18)*acd126(17)
      acd126(56)=acd126(16)*acd126(15)
      acd126(55)=acd126(55)+acd126(56)
      acd126(56)=acd126(43)*acd126(55)
      acd126(57)=acd126(18)*acd126(48)
      acd126(58)=acd126(16)*acd126(47)
      acd126(57)=acd126(57)+acd126(58)
      acd126(57)=acd126(14)*acd126(57)
      acd126(58)=acd126(53)*acd126(24)
      acd126(59)=acd126(51)*acd126(22)
      acd126(60)=acd126(49)*acd126(20)
      acd126(61)=acd126(32)*acd126(11)
      acd126(62)=acd126(38)*acd126(13)
      acd126(63)=acd126(36)*acd126(12)
      acd126(56)=acd126(57)+acd126(56)+acd126(63)+acd126(62)+acd126(61)+acd126(&
      &60)+acd126(58)+acd126(59)
      acd126(56)=acd126(34)*acd126(56)
      acd126(57)=acd126(23)*acd126(24)
      acd126(58)=acd126(21)*acd126(22)
      acd126(59)=acd126(19)*acd126(20)
      acd126(60)=acd126(6)*acd126(13)
      acd126(61)=acd126(4)*acd126(12)
      acd126(62)=acd126(2)*acd126(11)
      acd126(57)=acd126(62)+acd126(61)+acd126(60)+acd126(59)+acd126(57)+acd126(&
      &58)
      acd126(57)=acd126(10)*acd126(57)
      acd126(55)=acd126(10)*acd126(55)
      acd126(58)=acd126(53)*acd126(46)
      acd126(59)=acd126(51)*acd126(45)
      acd126(60)=acd126(49)*acd126(44)
      acd126(61)=acd126(40)*acd126(41)
      acd126(62)=2.0_ki*acd126(25)
      acd126(63)=-acd126(30)*acd126(62)
      acd126(55)=acd126(55)+acd126(63)+acd126(61)+acd126(60)+acd126(58)+acd126(&
      &59)
      acd126(55)=acd126(14)*acd126(55)
      acd126(58)=acd126(23)*acd126(46)
      acd126(59)=acd126(21)*acd126(45)
      acd126(60)=acd126(19)*acd126(44)
      acd126(61)=acd126(8)*acd126(41)
      acd126(63)=-acd126(35)*acd126(30)
      acd126(58)=acd126(63)+acd126(61)+acd126(60)+acd126(58)+acd126(59)
      acd126(58)=acd126(43)*acd126(58)
      acd126(59)=acd126(32)*acd126(3)
      acd126(60)=acd126(40)*acd126(9)
      acd126(61)=acd126(38)*acd126(7)
      acd126(63)=acd126(36)*acd126(5)
      acd126(59)=acd126(63)+acd126(61)+acd126(59)+acd126(60)
      acd126(59)=acd126(33)*acd126(59)
      acd126(60)=acd126(8)*acd126(9)
      acd126(61)=acd126(6)*acd126(7)
      acd126(63)=acd126(4)*acd126(5)
      acd126(64)=acd126(2)*acd126(3)
      acd126(60)=acd126(64)+acd126(63)+acd126(60)+acd126(61)
      acd126(60)=acd126(1)*acd126(60)
      acd126(61)=-acd126(32)*acd126(26)
      acd126(63)=-acd126(40)*acd126(29)
      acd126(64)=-acd126(38)*acd126(28)
      acd126(65)=-acd126(36)*acd126(27)
      acd126(61)=acd126(65)+acd126(64)+acd126(61)+acd126(63)
      acd126(61)=acd126(35)*acd126(61)
      acd126(63)=-acd126(8)*acd126(29)
      acd126(64)=-acd126(6)*acd126(28)
      acd126(65)=-acd126(4)*acd126(27)
      acd126(66)=-acd126(2)*acd126(26)
      acd126(63)=acd126(66)+acd126(65)+acd126(64)+acd126(31)+acd126(63)
      acd126(62)=acd126(63)*acd126(62)
      acd126(63)=-acd126(53)*acd126(54)
      acd126(64)=-acd126(51)*acd126(52)
      acd126(65)=-acd126(49)*acd126(50)
      acd126(66)=-acd126(40)*acd126(42)
      acd126(67)=-acd126(38)*acd126(39)
      acd126(68)=-acd126(36)*acd126(37)
      brack=acd126(55)+acd126(56)+acd126(57)+acd126(58)+acd126(59)+acd126(60)+a&
      &cd126(61)+acd126(62)+acd126(63)+acd126(64)+acd126(65)+acd126(66)+acd126(&
      &67)+acd126(68)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd126h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(70) :: acd126
      complex(ki) :: brack
      acd126(1)=d(iv1,iv2)
      acd126(2)=dotproduct(qshift,spvak4k1)
      acd126(3)=abb126(18)
      acd126(4)=dotproduct(qshift,spvak4k3)
      acd126(5)=abb126(34)
      acd126(6)=dotproduct(qshift,spval5k3)
      acd126(7)=abb126(21)
      acd126(8)=dotproduct(qshift,spval6k3)
      acd126(9)=abb126(32)
      acd126(10)=dotproduct(qshift,spvae7k1)
      acd126(11)=abb126(13)
      acd126(12)=abb126(12)
      acd126(13)=k7(iv1)
      acd126(14)=spvak4k1(iv2)
      acd126(15)=abb126(14)
      acd126(16)=spval5k3(iv2)
      acd126(17)=abb126(30)
      acd126(18)=spval6k3(iv2)
      acd126(19)=abb126(31)
      acd126(20)=spvae7k1(iv2)
      acd126(21)=abb126(19)
      acd126(22)=k7(iv2)
      acd126(23)=spvak4k1(iv1)
      acd126(24)=spval5k3(iv1)
      acd126(25)=spval6k3(iv1)
      acd126(26)=spvae7k1(iv1)
      acd126(27)=e7(iv1)
      acd126(28)=abb126(7)
      acd126(29)=spvak4k3(iv2)
      acd126(30)=dotproduct(qshift,spval5k1)
      acd126(31)=abb126(28)
      acd126(32)=dotproduct(qshift,spval6k1)
      acd126(33)=abb126(29)
      acd126(34)=abb126(17)
      acd126(35)=abb126(11)
      acd126(36)=spval5k1(iv2)
      acd126(37)=spval6k1(iv2)
      acd126(38)=spval5k7(iv2)
      acd126(39)=abb126(24)
      acd126(40)=spval6k7(iv2)
      acd126(41)=abb126(25)
      acd126(42)=spvak7k1(iv2)
      acd126(43)=abb126(9)
      acd126(44)=e7(iv2)
      acd126(45)=spvak4k3(iv1)
      acd126(46)=spval5k1(iv1)
      acd126(47)=spval6k1(iv1)
      acd126(48)=spval5k7(iv1)
      acd126(49)=spval6k7(iv1)
      acd126(50)=spvak7k1(iv1)
      acd126(51)=qshift(iv1)
      acd126(52)=qshift(iv2)
      acd126(53)=abb126(35)
      acd126(54)=dotproduct(e7,qshift)
      acd126(55)=abb126(16)
      acd126(56)=abb126(10)
      acd126(57)=abb126(33)
      acd126(58)=acd126(33)*acd126(32)
      acd126(59)=acd126(31)*acd126(30)
      acd126(58)=acd126(58)+acd126(59)
      acd126(59)=acd126(45)*acd126(58)
      acd126(60)=acd126(43)*acd126(50)
      acd126(61)=acd126(41)*acd126(49)
      acd126(62)=acd126(39)*acd126(48)
      acd126(63)=acd126(25)*acd126(35)
      acd126(64)=acd126(24)*acd126(34)
      acd126(65)=acd126(23)*acd126(28)
      acd126(66)=acd126(33)*acd126(4)
      acd126(67)=acd126(47)*acd126(66)
      acd126(68)=acd126(31)*acd126(4)
      acd126(69)=acd126(46)*acd126(68)
      acd126(59)=acd126(59)+acd126(69)+acd126(67)+acd126(65)+acd126(64)+acd126(&
      &63)+acd126(62)+acd126(60)+acd126(61)
      acd126(59)=acd126(44)*acd126(59)
      acd126(58)=acd126(29)*acd126(58)
      acd126(60)=acd126(42)*acd126(43)
      acd126(61)=acd126(40)*acd126(41)
      acd126(62)=acd126(38)*acd126(39)
      acd126(63)=acd126(18)*acd126(35)
      acd126(64)=acd126(16)*acd126(34)
      acd126(65)=acd126(14)*acd126(28)
      acd126(66)=acd126(37)*acd126(66)
      acd126(67)=acd126(36)*acd126(68)
      acd126(58)=acd126(58)+acd126(67)+acd126(66)+acd126(65)+acd126(64)+acd126(&
      &63)+acd126(62)+acd126(60)+acd126(61)
      acd126(58)=acd126(27)*acd126(58)
      acd126(60)=acd126(42)*acd126(57)
      acd126(61)=acd126(40)*acd126(56)
      acd126(62)=acd126(38)*acd126(55)
      acd126(63)=acd126(20)*acd126(53)
      acd126(64)=2.0_ki*acd126(52)
      acd126(65)=-acd126(5)*acd126(64)
      acd126(66)=acd126(33)*acd126(54)
      acd126(67)=acd126(37)*acd126(66)
      acd126(68)=acd126(31)*acd126(54)
      acd126(69)=acd126(36)*acd126(68)
      acd126(60)=acd126(69)+acd126(67)+acd126(65)+acd126(63)+acd126(62)+acd126(&
      &60)+acd126(61)
      acd126(60)=acd126(45)*acd126(60)
      acd126(61)=acd126(50)*acd126(57)
      acd126(62)=acd126(49)*acd126(56)
      acd126(63)=acd126(48)*acd126(55)
      acd126(65)=acd126(26)*acd126(53)
      acd126(67)=2.0_ki*acd126(51)
      acd126(69)=-acd126(5)*acd126(67)
      acd126(66)=acd126(47)*acd126(66)
      acd126(68)=acd126(46)*acd126(68)
      acd126(61)=acd126(68)+acd126(66)+acd126(69)+acd126(65)+acd126(63)+acd126(&
      &61)+acd126(62)
      acd126(61)=acd126(29)*acd126(61)
      acd126(62)=-acd126(11)*acd126(10)
      acd126(63)=-acd126(9)*acd126(8)
      acd126(65)=-acd126(7)*acd126(6)
      acd126(66)=-acd126(3)*acd126(2)
      acd126(68)=-acd126(4)*acd126(5)
      acd126(62)=acd126(68)+acd126(66)+acd126(65)+acd126(63)+acd126(12)+acd126(&
      &62)
      acd126(62)=acd126(1)*acd126(62)
      acd126(63)=acd126(26)*acd126(21)
      acd126(65)=acd126(25)*acd126(19)
      acd126(66)=acd126(24)*acd126(17)
      acd126(68)=acd126(23)*acd126(15)
      acd126(63)=acd126(68)+acd126(66)+acd126(63)+acd126(65)
      acd126(63)=acd126(22)*acd126(63)
      acd126(65)=acd126(20)*acd126(21)
      acd126(66)=acd126(18)*acd126(19)
      acd126(68)=acd126(16)*acd126(17)
      acd126(69)=acd126(14)*acd126(15)
      acd126(65)=acd126(69)+acd126(68)+acd126(65)+acd126(66)
      acd126(65)=acd126(13)*acd126(65)
      acd126(66)=-acd126(11)*acd126(26)
      acd126(68)=-acd126(9)*acd126(25)
      acd126(69)=-acd126(7)*acd126(24)
      acd126(70)=-acd126(3)*acd126(23)
      acd126(66)=acd126(70)+acd126(69)+acd126(66)+acd126(68)
      acd126(64)=acd126(66)*acd126(64)
      acd126(66)=-acd126(11)*acd126(20)
      acd126(68)=-acd126(9)*acd126(18)
      acd126(69)=-acd126(7)*acd126(16)
      acd126(70)=-acd126(3)*acd126(14)
      acd126(66)=acd126(70)+acd126(69)+acd126(66)+acd126(68)
      acd126(66)=acd126(66)*acd126(67)
      brack=acd126(58)+acd126(59)+acd126(60)+acd126(61)+2.0_ki*acd126(62)+acd12&
      &6(63)+acd126(64)+acd126(65)+acd126(66)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd126h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(42) :: acd126
      complex(ki) :: brack
      acd126(1)=d(iv1,iv2)
      acd126(2)=spvak4k1(iv3)
      acd126(3)=abb126(18)
      acd126(4)=spvak4k3(iv3)
      acd126(5)=abb126(34)
      acd126(6)=spval5k3(iv3)
      acd126(7)=abb126(21)
      acd126(8)=spval6k3(iv3)
      acd126(9)=abb126(32)
      acd126(10)=spvae7k1(iv3)
      acd126(11)=abb126(13)
      acd126(12)=d(iv1,iv3)
      acd126(13)=spvak4k1(iv2)
      acd126(14)=spvak4k3(iv2)
      acd126(15)=spval5k3(iv2)
      acd126(16)=spval6k3(iv2)
      acd126(17)=spvae7k1(iv2)
      acd126(18)=d(iv2,iv3)
      acd126(19)=spvak4k1(iv1)
      acd126(20)=spvak4k3(iv1)
      acd126(21)=spval5k3(iv1)
      acd126(22)=spval6k3(iv1)
      acd126(23)=spvae7k1(iv1)
      acd126(24)=e7(iv1)
      acd126(25)=spval5k1(iv3)
      acd126(26)=abb126(28)
      acd126(27)=spval6k1(iv3)
      acd126(28)=abb126(29)
      acd126(29)=spval5k1(iv2)
      acd126(30)=spval6k1(iv2)
      acd126(31)=e7(iv2)
      acd126(32)=spval5k1(iv1)
      acd126(33)=spval6k1(iv1)
      acd126(34)=e7(iv3)
      acd126(35)=acd126(24)*acd126(14)
      acd126(36)=acd126(31)*acd126(20)
      acd126(35)=acd126(35)+acd126(36)
      acd126(36)=acd126(25)*acd126(35)
      acd126(37)=acd126(24)*acd126(4)
      acd126(38)=acd126(34)*acd126(20)
      acd126(37)=acd126(37)+acd126(38)
      acd126(38)=acd126(29)*acd126(37)
      acd126(39)=acd126(31)*acd126(4)
      acd126(40)=acd126(34)*acd126(14)
      acd126(39)=acd126(39)+acd126(40)
      acd126(40)=acd126(32)*acd126(39)
      acd126(36)=acd126(40)+acd126(38)+acd126(36)
      acd126(36)=acd126(26)*acd126(36)
      acd126(35)=acd126(27)*acd126(35)
      acd126(37)=acd126(30)*acd126(37)
      acd126(38)=acd126(33)*acd126(39)
      acd126(35)=acd126(38)+acd126(37)+acd126(35)
      acd126(35)=acd126(28)*acd126(35)
      acd126(37)=-acd126(19)*acd126(3)
      acd126(38)=-acd126(21)*acd126(7)
      acd126(39)=-acd126(22)*acd126(9)
      acd126(40)=-acd126(23)*acd126(11)
      acd126(37)=acd126(40)+acd126(39)+acd126(38)+acd126(37)
      acd126(38)=2.0_ki*acd126(18)
      acd126(37)=acd126(38)*acd126(37)
      acd126(38)=-acd126(13)*acd126(3)
      acd126(39)=-acd126(15)*acd126(7)
      acd126(40)=-acd126(16)*acd126(9)
      acd126(41)=-acd126(17)*acd126(11)
      acd126(38)=acd126(41)+acd126(40)+acd126(39)+acd126(38)
      acd126(39)=2.0_ki*acd126(12)
      acd126(38)=acd126(39)*acd126(38)
      acd126(39)=-acd126(2)*acd126(3)
      acd126(40)=-acd126(6)*acd126(7)
      acd126(41)=-acd126(8)*acd126(9)
      acd126(42)=-acd126(10)*acd126(11)
      acd126(39)=acd126(42)+acd126(41)+acd126(40)+acd126(39)
      acd126(40)=2.0_ki*acd126(1)
      acd126(39)=acd126(40)*acd126(39)
      acd126(40)=-acd126(4)*acd126(1)
      acd126(41)=-acd126(14)*acd126(12)
      acd126(42)=-acd126(20)*acd126(18)
      acd126(40)=acd126(42)+acd126(40)+acd126(41)
      acd126(40)=acd126(5)*acd126(40)
      brack=acd126(35)+acd126(36)+acd126(37)+acd126(38)+acd126(39)+2.0_ki*acd12&
      &6(40)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd126h0
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      integer, intent(in), optional :: i2
      integer, intent(in), optional :: i3
      complex(ki) :: numerator
      complex(ki) :: loc
      integer :: t1
      integer :: deg
      complex(ki), dimension(4), parameter :: Q = (/ (0.0_ki,0.0_ki),(0.0_ki,0.&
      &0_ki),(0.0_ki,0.0_ki),(0.0_ki,0.0_ki)/)
      qshift = k3-k2+k7+k4
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
      if(present(i3)) then
          iv3=i3
          deg=3
      else
          iv3=1
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
      if(deg.eq.3) then
         numerator = cond(epspow.eq.t1,brack_4,Q,mu2)
         return
      end if
   end function derivative
!---#] function derivative:
!---#[ subroutine reconstruct_d126:
   subroutine     reconstruct_d126(coeffs)
      use p5_usbar_epnebbbarg_groups, only: tensrec_info_group13
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group13), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_126:
      coeffs%coeffs_126%c0 = derivative(czip)
      coeffs%coeffs_126%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_126%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_126%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_126%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_126%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_126%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_126%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_126%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_126%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_126%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_126%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_126%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_126%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_126%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_126%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_126%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_126%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_126%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_126%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_126%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_126%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_126%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_126%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_126%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_126%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_126%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_126%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_126%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_126%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_126%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_126%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_126%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_126%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_126%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_126:
   end subroutine reconstruct_d126
!---#] subroutine reconstruct_d126:
end module     p5_usbar_epnebbbarg_d126h0l1d
