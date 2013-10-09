module     p5_usbar_epnebbbarg_d303h3l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity3d303h3l1d.f90
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
   public :: derivative , reconstruct_d303
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd303h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(58) :: acd303
      complex(ki) :: brack
      acd303(1)=dotproduct(k1,qshift)
      acd303(2)=dotproduct(e7,qshift)
      acd303(3)=dotproduct(qshift,spvak2l5)
      acd303(4)=abb303(24)
      acd303(5)=abb303(37)
      acd303(6)=abb303(23)
      acd303(7)=dotproduct(qshift,spvak2l6)
      acd303(8)=abb303(26)
      acd303(9)=dotproduct(qshift,spvak2k7)
      acd303(10)=abb303(18)
      acd303(11)=dotproduct(qshift,spvak2e7)
      acd303(12)=abb303(52)
      acd303(13)=abb303(35)
      acd303(14)=dotproduct(k2,qshift)
      acd303(15)=abb303(42)
      acd303(16)=abb303(45)
      acd303(17)=dotproduct(k3,qshift)
      acd303(18)=dotproduct(k4,qshift)
      acd303(19)=dotproduct(l6,qshift)
      acd303(20)=abb303(21)
      acd303(21)=abb303(32)
      acd303(22)=dotproduct(k7,qshift)
      acd303(23)=dotproduct(qshift,spvak4k1)
      acd303(24)=abb303(8)
      acd303(25)=dotproduct(qshift,spvak4k3)
      acd303(26)=abb303(41)
      acd303(27)=abb303(25)
      acd303(28)=abb303(15)
      acd303(29)=abb303(17)
      acd303(30)=abb303(38)
      acd303(31)=abb303(30)
      acd303(32)=dotproduct(qshift,qshift)
      acd303(33)=abb303(20)
      acd303(34)=abb303(31)
      acd303(35)=abb303(28)
      acd303(36)=abb303(36)
      acd303(37)=abb303(9)
      acd303(38)=abb303(22)
      acd303(39)=abb303(10)
      acd303(40)=abb303(27)
      acd303(41)=abb303(29)
      acd303(42)=abb303(12)
      acd303(43)=abb303(11)
      acd303(44)=abb303(33)
      acd303(45)=abb303(19)
      acd303(46)=abb303(14)
      acd303(47)=abb303(34)
      acd303(48)=abb303(16)
      acd303(49)=acd303(3)*acd303(2)
      acd303(50)=-acd303(24)*acd303(49)
      acd303(51)=acd303(29)*acd303(2)
      acd303(52)=acd303(35)*acd303(3)
      acd303(53)=acd303(37)*acd303(7)
      acd303(54)=acd303(40)*acd303(9)
      acd303(55)=acd303(43)*acd303(11)
      acd303(50)=acd303(52)+acd303(51)-acd303(46)+acd303(55)+acd303(54)+acd303(&
      &53)+acd303(50)
      acd303(50)=acd303(23)*acd303(50)
      acd303(51)=-acd303(26)*acd303(49)
      acd303(52)=acd303(30)*acd303(2)
      acd303(53)=acd303(36)*acd303(3)
      acd303(54)=acd303(38)*acd303(7)
      acd303(55)=acd303(41)*acd303(9)
      acd303(56)=acd303(44)*acd303(11)
      acd303(51)=acd303(53)+acd303(52)-acd303(47)+acd303(56)+acd303(55)+acd303(&
      &54)+acd303(51)
      acd303(51)=acd303(25)*acd303(51)
      acd303(49)=acd303(4)*acd303(49)
      acd303(52)=acd303(5)*acd303(2)
      acd303(53)=acd303(6)*acd303(3)
      acd303(54)=acd303(8)*acd303(7)
      acd303(55)=-acd303(10)*acd303(9)
      acd303(56)=-acd303(12)*acd303(11)
      acd303(49)=-acd303(13)+acd303(56)+acd303(55)+acd303(54)+acd303(53)+acd303&
      &(49)+acd303(52)
      acd303(52)=-acd303(1)+acd303(18)+acd303(17)
      acd303(49)=acd303(52)*acd303(49)
      acd303(52)=-acd303(22)+acd303(19)
      acd303(53)=acd303(20)*acd303(11)
      acd303(53)=acd303(53)+acd303(21)
      acd303(52)=acd303(53)*acd303(52)
      acd303(53)=acd303(27)*acd303(7)
      acd303(54)=acd303(28)*acd303(9)
      acd303(53)=-acd303(31)+acd303(54)+acd303(53)
      acd303(53)=acd303(2)*acd303(53)
      acd303(54)=acd303(15)*acd303(14)
      acd303(55)=-acd303(33)*acd303(32)
      acd303(54)=-acd303(45)+acd303(55)+acd303(54)
      acd303(54)=acd303(11)*acd303(54)
      acd303(55)=-acd303(16)*acd303(14)
      acd303(56)=acd303(34)*acd303(32)
      acd303(57)=-acd303(39)*acd303(7)
      acd303(58)=-acd303(42)*acd303(9)
      brack=acd303(48)+acd303(49)+acd303(50)+acd303(51)+acd303(52)+acd303(53)+a&
      &cd303(54)+acd303(55)+acd303(56)+acd303(57)+acd303(58)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd303h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(78) :: acd303
      complex(ki) :: brack
      acd303(1)=k1(iv1)
      acd303(2)=dotproduct(e7,qshift)
      acd303(3)=dotproduct(qshift,spvak2l5)
      acd303(4)=abb303(24)
      acd303(5)=abb303(37)
      acd303(6)=abb303(23)
      acd303(7)=dotproduct(qshift,spvak2l6)
      acd303(8)=abb303(26)
      acd303(9)=dotproduct(qshift,spvak2k7)
      acd303(10)=abb303(18)
      acd303(11)=dotproduct(qshift,spvak2e7)
      acd303(12)=abb303(52)
      acd303(13)=abb303(35)
      acd303(14)=k2(iv1)
      acd303(15)=abb303(42)
      acd303(16)=abb303(45)
      acd303(17)=k3(iv1)
      acd303(18)=k4(iv1)
      acd303(19)=l6(iv1)
      acd303(20)=abb303(21)
      acd303(21)=abb303(32)
      acd303(22)=k7(iv1)
      acd303(23)=e7(iv1)
      acd303(24)=dotproduct(k1,qshift)
      acd303(25)=dotproduct(k3,qshift)
      acd303(26)=dotproduct(k4,qshift)
      acd303(27)=dotproduct(qshift,spvak4k1)
      acd303(28)=abb303(8)
      acd303(29)=dotproduct(qshift,spvak4k3)
      acd303(30)=abb303(41)
      acd303(31)=abb303(25)
      acd303(32)=abb303(15)
      acd303(33)=abb303(17)
      acd303(34)=abb303(38)
      acd303(35)=abb303(30)
      acd303(36)=qshift(iv1)
      acd303(37)=abb303(20)
      acd303(38)=abb303(31)
      acd303(39)=spvak2l5(iv1)
      acd303(40)=abb303(28)
      acd303(41)=abb303(36)
      acd303(42)=spvak2l6(iv1)
      acd303(43)=abb303(9)
      acd303(44)=abb303(22)
      acd303(45)=abb303(10)
      acd303(46)=spvak2k7(iv1)
      acd303(47)=abb303(27)
      acd303(48)=abb303(29)
      acd303(49)=abb303(12)
      acd303(50)=spvak2e7(iv1)
      acd303(51)=dotproduct(k2,qshift)
      acd303(52)=dotproduct(l6,qshift)
      acd303(53)=dotproduct(k7,qshift)
      acd303(54)=dotproduct(qshift,qshift)
      acd303(55)=abb303(11)
      acd303(56)=abb303(33)
      acd303(57)=abb303(19)
      acd303(58)=spvak4k1(iv1)
      acd303(59)=abb303(14)
      acd303(60)=spvak4k3(iv1)
      acd303(61)=abb303(34)
      acd303(62)=-acd303(26)+acd303(24)-acd303(25)
      acd303(63)=acd303(62)*acd303(4)
      acd303(64)=acd303(29)*acd303(30)
      acd303(65)=acd303(27)*acd303(28)
      acd303(63)=acd303(63)+acd303(64)+acd303(65)
      acd303(64)=acd303(39)*acd303(63)
      acd303(65)=acd303(60)*acd303(30)
      acd303(66)=acd303(58)*acd303(28)
      acd303(67)=-acd303(18)+acd303(1)-acd303(17)
      acd303(68)=acd303(4)*acd303(67)
      acd303(65)=acd303(68)+acd303(65)+acd303(66)
      acd303(65)=acd303(3)*acd303(65)
      acd303(66)=acd303(5)*acd303(67)
      acd303(68)=-acd303(60)*acd303(34)
      acd303(69)=-acd303(58)*acd303(33)
      acd303(70)=-acd303(46)*acd303(32)
      acd303(71)=-acd303(42)*acd303(31)
      acd303(64)=acd303(65)+acd303(64)+acd303(71)+acd303(70)+acd303(68)+acd303(&
      &69)+acd303(66)
      acd303(64)=acd303(2)*acd303(64)
      acd303(65)=-acd303(12)*acd303(67)
      acd303(66)=2.0_ki*acd303(36)
      acd303(68)=acd303(37)*acd303(66)
      acd303(69)=-acd303(14)*acd303(15)
      acd303(70)=acd303(19)-acd303(22)
      acd303(71)=-acd303(20)*acd303(70)
      acd303(72)=-acd303(60)*acd303(56)
      acd303(73)=-acd303(58)*acd303(55)
      acd303(65)=acd303(73)+acd303(72)+acd303(71)+acd303(68)+acd303(69)+acd303(&
      &65)
      acd303(65)=acd303(11)*acd303(65)
      acd303(68)=-acd303(12)*acd303(62)
      acd303(69)=acd303(37)*acd303(54)
      acd303(71)=-acd303(15)*acd303(51)
      acd303(72)=acd303(53)-acd303(52)
      acd303(72)=acd303(20)*acd303(72)
      acd303(73)=-acd303(29)*acd303(56)
      acd303(74)=-acd303(27)*acd303(55)
      acd303(68)=acd303(74)+acd303(73)+acd303(72)+acd303(71)+acd303(57)+acd303(&
      &69)+acd303(68)
      acd303(68)=acd303(50)*acd303(68)
      acd303(69)=acd303(5)*acd303(62)
      acd303(71)=-acd303(9)*acd303(32)
      acd303(72)=-acd303(7)*acd303(31)
      acd303(73)=-acd303(29)*acd303(34)
      acd303(74)=-acd303(27)*acd303(33)
      acd303(69)=acd303(74)+acd303(73)+acd303(72)+acd303(35)+acd303(71)+acd303(&
      &69)
      acd303(69)=acd303(23)*acd303(69)
      acd303(63)=acd303(23)*acd303(63)
      acd303(71)=acd303(6)*acd303(67)
      acd303(72)=-acd303(60)*acd303(41)
      acd303(73)=-acd303(58)*acd303(40)
      acd303(63)=acd303(63)+acd303(72)+acd303(73)+acd303(71)
      acd303(63)=acd303(3)*acd303(63)
      acd303(71)=acd303(6)*acd303(62)
      acd303(72)=-acd303(29)*acd303(41)
      acd303(73)=-acd303(27)*acd303(40)
      acd303(71)=acd303(72)+acd303(73)+acd303(71)
      acd303(71)=acd303(39)*acd303(71)
      acd303(72)=acd303(9)*acd303(10)
      acd303(73)=acd303(7)*acd303(8)
      acd303(72)=acd303(13)+acd303(72)-acd303(73)
      acd303(67)=-acd303(72)*acd303(67)
      acd303(72)=acd303(46)*acd303(10)
      acd303(73)=acd303(42)*acd303(8)
      acd303(72)=acd303(72)-acd303(73)
      acd303(62)=-acd303(72)*acd303(62)
      acd303(72)=-acd303(9)*acd303(48)
      acd303(73)=-acd303(7)*acd303(44)
      acd303(72)=acd303(73)+acd303(61)+acd303(72)
      acd303(72)=acd303(60)*acd303(72)
      acd303(73)=-acd303(9)*acd303(47)
      acd303(74)=-acd303(7)*acd303(43)
      acd303(73)=acd303(74)+acd303(59)+acd303(73)
      acd303(73)=acd303(58)*acd303(73)
      acd303(74)=-acd303(46)*acd303(48)
      acd303(75)=-acd303(42)*acd303(44)
      acd303(74)=acd303(74)+acd303(75)
      acd303(74)=acd303(29)*acd303(74)
      acd303(75)=-acd303(46)*acd303(47)
      acd303(76)=-acd303(42)*acd303(43)
      acd303(75)=acd303(75)+acd303(76)
      acd303(75)=acd303(27)*acd303(75)
      acd303(70)=-acd303(21)*acd303(70)
      acd303(66)=-acd303(38)*acd303(66)
      acd303(76)=acd303(14)*acd303(16)
      acd303(77)=acd303(46)*acd303(49)
      acd303(78)=acd303(42)*acd303(45)
      brack=acd303(62)+acd303(63)+acd303(64)+acd303(65)+acd303(66)+acd303(67)+a&
      &cd303(68)+acd303(69)+acd303(70)+acd303(71)+acd303(72)+acd303(73)+acd303(&
      &74)+acd303(75)+acd303(76)+acd303(77)+acd303(78)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd303h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(75) :: acd303
      complex(ki) :: brack
      acd303(1)=d(iv1,iv2)
      acd303(2)=dotproduct(qshift,spvak2e7)
      acd303(3)=abb303(20)
      acd303(4)=abb303(31)
      acd303(5)=k1(iv1)
      acd303(6)=e7(iv2)
      acd303(7)=dotproduct(qshift,spvak2l5)
      acd303(8)=abb303(24)
      acd303(9)=abb303(37)
      acd303(10)=spvak2e7(iv2)
      acd303(11)=abb303(52)
      acd303(12)=spvak2l5(iv2)
      acd303(13)=dotproduct(e7,qshift)
      acd303(14)=abb303(23)
      acd303(15)=spvak2l6(iv2)
      acd303(16)=abb303(26)
      acd303(17)=spvak2k7(iv2)
      acd303(18)=abb303(18)
      acd303(19)=k1(iv2)
      acd303(20)=e7(iv1)
      acd303(21)=spvak2e7(iv1)
      acd303(22)=spvak2l5(iv1)
      acd303(23)=spvak2l6(iv1)
      acd303(24)=spvak2k7(iv1)
      acd303(25)=k2(iv1)
      acd303(26)=abb303(42)
      acd303(27)=k2(iv2)
      acd303(28)=k3(iv1)
      acd303(29)=k3(iv2)
      acd303(30)=k4(iv1)
      acd303(31)=k4(iv2)
      acd303(32)=l6(iv1)
      acd303(33)=abb303(21)
      acd303(34)=l6(iv2)
      acd303(35)=k7(iv1)
      acd303(36)=k7(iv2)
      acd303(37)=dotproduct(k1,qshift)
      acd303(38)=dotproduct(k3,qshift)
      acd303(39)=dotproduct(k4,qshift)
      acd303(40)=dotproduct(qshift,spvak4k1)
      acd303(41)=abb303(8)
      acd303(42)=dotproduct(qshift,spvak4k3)
      acd303(43)=abb303(41)
      acd303(44)=abb303(25)
      acd303(45)=abb303(15)
      acd303(46)=spvak4k1(iv2)
      acd303(47)=abb303(17)
      acd303(48)=spvak4k3(iv2)
      acd303(49)=abb303(38)
      acd303(50)=spvak4k1(iv1)
      acd303(51)=spvak4k3(iv1)
      acd303(52)=qshift(iv1)
      acd303(53)=qshift(iv2)
      acd303(54)=abb303(11)
      acd303(55)=abb303(33)
      acd303(56)=abb303(28)
      acd303(57)=abb303(36)
      acd303(58)=abb303(9)
      acd303(59)=abb303(22)
      acd303(60)=abb303(27)
      acd303(61)=abb303(29)
      acd303(62)=acd303(48)*acd303(43)
      acd303(63)=acd303(46)*acd303(41)
      acd303(62)=acd303(62)+acd303(63)
      acd303(63)=-acd303(7)*acd303(62)
      acd303(64)=acd303(43)*acd303(42)
      acd303(65)=acd303(41)*acd303(40)
      acd303(64)=acd303(64)+acd303(65)
      acd303(65)=-acd303(12)*acd303(64)
      acd303(66)=-acd303(31)+acd303(19)-acd303(29)
      acd303(67)=-acd303(9)*acd303(66)
      acd303(68)=acd303(17)*acd303(45)
      acd303(69)=acd303(15)*acd303(44)
      acd303(70)=acd303(48)*acd303(49)
      acd303(71)=acd303(46)*acd303(47)
      acd303(63)=acd303(65)+acd303(63)+acd303(71)+acd303(70)+acd303(68)+acd303(&
      &69)+acd303(67)
      acd303(63)=acd303(20)*acd303(63)
      acd303(65)=acd303(51)*acd303(43)
      acd303(67)=acd303(50)*acd303(41)
      acd303(65)=acd303(65)+acd303(67)
      acd303(67)=-acd303(7)*acd303(65)
      acd303(64)=-acd303(22)*acd303(64)
      acd303(68)=-acd303(30)+acd303(5)-acd303(28)
      acd303(69)=-acd303(9)*acd303(68)
      acd303(70)=acd303(24)*acd303(45)
      acd303(71)=acd303(23)*acd303(44)
      acd303(72)=acd303(51)*acd303(49)
      acd303(73)=acd303(50)*acd303(47)
      acd303(64)=acd303(64)+acd303(67)+acd303(73)+acd303(72)+acd303(70)+acd303(&
      &71)+acd303(69)
      acd303(64)=acd303(6)*acd303(64)
      acd303(67)=acd303(11)*acd303(66)
      acd303(69)=acd303(26)*acd303(27)
      acd303(70)=2.0_ki*acd303(3)
      acd303(71)=-acd303(53)*acd303(70)
      acd303(72)=-acd303(36)+acd303(34)
      acd303(72)=acd303(33)*acd303(72)
      acd303(73)=acd303(48)*acd303(55)
      acd303(74)=acd303(46)*acd303(54)
      acd303(67)=acd303(74)+acd303(73)+acd303(72)+acd303(69)+acd303(71)+acd303(&
      &67)
      acd303(67)=acd303(21)*acd303(67)
      acd303(69)=acd303(11)*acd303(68)
      acd303(71)=acd303(26)*acd303(25)
      acd303(70)=-acd303(52)*acd303(70)
      acd303(72)=-acd303(35)+acd303(32)
      acd303(72)=acd303(33)*acd303(72)
      acd303(73)=acd303(51)*acd303(55)
      acd303(74)=acd303(50)*acd303(54)
      acd303(69)=acd303(74)+acd303(73)+acd303(72)+acd303(71)+acd303(70)+acd303(&
      &69)
      acd303(69)=acd303(10)*acd303(69)
      acd303(62)=-acd303(13)*acd303(62)
      acd303(70)=-acd303(14)*acd303(66)
      acd303(71)=acd303(48)*acd303(57)
      acd303(72)=acd303(46)*acd303(56)
      acd303(62)=acd303(62)+acd303(71)+acd303(72)+acd303(70)
      acd303(62)=acd303(22)*acd303(62)
      acd303(65)=-acd303(13)*acd303(65)
      acd303(70)=-acd303(14)*acd303(68)
      acd303(71)=acd303(51)*acd303(57)
      acd303(72)=acd303(50)*acd303(56)
      acd303(65)=acd303(65)+acd303(71)+acd303(72)+acd303(70)
      acd303(65)=acd303(12)*acd303(65)
      acd303(70)=-acd303(22)*acd303(66)
      acd303(71)=-acd303(12)*acd303(68)
      acd303(70)=acd303(70)+acd303(71)
      acd303(70)=acd303(13)*acd303(70)
      acd303(71)=-acd303(7)*acd303(66)
      acd303(72)=-acd303(39)+acd303(37)-acd303(38)
      acd303(73)=-acd303(12)*acd303(72)
      acd303(71)=acd303(71)+acd303(73)
      acd303(71)=acd303(20)*acd303(71)
      acd303(73)=-acd303(7)*acd303(68)
      acd303(72)=-acd303(22)*acd303(72)
      acd303(72)=acd303(73)+acd303(72)
      acd303(72)=acd303(6)*acd303(72)
      acd303(70)=acd303(72)+acd303(71)+acd303(70)
      acd303(70)=acd303(8)*acd303(70)
      acd303(71)=acd303(18)*acd303(24)
      acd303(72)=acd303(16)*acd303(23)
      acd303(71)=acd303(71)-acd303(72)
      acd303(66)=acd303(71)*acd303(66)
      acd303(71)=acd303(17)*acd303(18)
      acd303(72)=acd303(15)*acd303(16)
      acd303(71)=acd303(71)-acd303(72)
      acd303(68)=acd303(71)*acd303(68)
      acd303(71)=acd303(17)*acd303(61)
      acd303(72)=acd303(15)*acd303(59)
      acd303(71)=acd303(71)+acd303(72)
      acd303(71)=acd303(51)*acd303(71)
      acd303(72)=acd303(17)*acd303(60)
      acd303(73)=acd303(15)*acd303(58)
      acd303(72)=acd303(72)+acd303(73)
      acd303(72)=acd303(50)*acd303(72)
      acd303(73)=acd303(24)*acd303(61)
      acd303(74)=acd303(23)*acd303(59)
      acd303(73)=acd303(73)+acd303(74)
      acd303(73)=acd303(48)*acd303(73)
      acd303(74)=acd303(24)*acd303(60)
      acd303(75)=acd303(23)*acd303(58)
      acd303(74)=acd303(74)+acd303(75)
      acd303(74)=acd303(46)*acd303(74)
      acd303(75)=-acd303(3)*acd303(2)
      acd303(75)=acd303(4)+acd303(75)
      acd303(75)=acd303(1)*acd303(75)
      brack=acd303(62)+acd303(63)+acd303(64)+acd303(65)+acd303(66)+acd303(67)+a&
      &cd303(68)+acd303(69)+acd303(70)+acd303(71)+acd303(72)+acd303(73)+acd303(&
      &74)+2.0_ki*acd303(75)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd303h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(39) :: acd303
      complex(ki) :: brack
      acd303(1)=d(iv1,iv2)
      acd303(2)=spvak2e7(iv3)
      acd303(3)=abb303(20)
      acd303(4)=d(iv1,iv3)
      acd303(5)=spvak2e7(iv2)
      acd303(6)=d(iv2,iv3)
      acd303(7)=spvak2e7(iv1)
      acd303(8)=k1(iv1)
      acd303(9)=e7(iv2)
      acd303(10)=spvak2l5(iv3)
      acd303(11)=abb303(24)
      acd303(12)=e7(iv3)
      acd303(13)=spvak2l5(iv2)
      acd303(14)=k1(iv2)
      acd303(15)=e7(iv1)
      acd303(16)=spvak2l5(iv1)
      acd303(17)=k1(iv3)
      acd303(18)=k3(iv1)
      acd303(19)=k3(iv2)
      acd303(20)=k3(iv3)
      acd303(21)=k4(iv1)
      acd303(22)=k4(iv2)
      acd303(23)=k4(iv3)
      acd303(24)=spvak4k1(iv3)
      acd303(25)=abb303(8)
      acd303(26)=spvak4k3(iv3)
      acd303(27)=abb303(41)
      acd303(28)=spvak4k1(iv2)
      acd303(29)=spvak4k3(iv2)
      acd303(30)=spvak4k1(iv1)
      acd303(31)=spvak4k3(iv1)
      acd303(32)=acd303(15)*acd303(13)
      acd303(33)=acd303(16)*acd303(9)
      acd303(32)=acd303(32)+acd303(33)
      acd303(33)=acd303(24)*acd303(32)
      acd303(34)=acd303(15)*acd303(10)
      acd303(35)=acd303(16)*acd303(12)
      acd303(34)=acd303(34)+acd303(35)
      acd303(35)=acd303(28)*acd303(34)
      acd303(36)=acd303(10)*acd303(9)
      acd303(37)=acd303(13)*acd303(12)
      acd303(36)=acd303(36)+acd303(37)
      acd303(37)=acd303(30)*acd303(36)
      acd303(33)=acd303(37)+acd303(35)+acd303(33)
      acd303(33)=acd303(25)*acd303(33)
      acd303(32)=acd303(26)*acd303(32)
      acd303(34)=acd303(29)*acd303(34)
      acd303(35)=acd303(31)*acd303(36)
      acd303(32)=acd303(35)+acd303(34)+acd303(32)
      acd303(32)=acd303(27)*acd303(32)
      acd303(34)=acd303(2)*acd303(1)
      acd303(35)=acd303(5)*acd303(4)
      acd303(37)=acd303(7)*acd303(6)
      acd303(34)=acd303(37)+acd303(35)+acd303(34)
      acd303(35)=2.0_ki*acd303(3)
      acd303(34)=acd303(35)*acd303(34)
      acd303(35)=acd303(16)*acd303(11)
      acd303(37)=acd303(35)*acd303(9)
      acd303(38)=acd303(15)*acd303(11)
      acd303(39)=acd303(38)*acd303(13)
      acd303(37)=acd303(37)+acd303(39)
      acd303(39)=-acd303(23)-acd303(20)+acd303(17)
      acd303(37)=acd303(37)*acd303(39)
      acd303(35)=acd303(35)*acd303(12)
      acd303(38)=acd303(38)*acd303(10)
      acd303(35)=acd303(35)+acd303(38)
      acd303(38)=-acd303(22)-acd303(19)+acd303(14)
      acd303(35)=acd303(35)*acd303(38)
      acd303(38)=-acd303(21)-acd303(18)+acd303(8)
      acd303(36)=acd303(38)*acd303(11)*acd303(36)
      brack=acd303(32)+acd303(33)+acd303(34)+acd303(35)+acd303(36)+acd303(37)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd303h3
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
      qshift = k5
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
!---#[ subroutine reconstruct_d303:
   subroutine     reconstruct_d303(coeffs)
      use p5_usbar_epnebbbarg_groups, only: tensrec_info_group12
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group12), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_303:
      coeffs%coeffs_303%c0 = derivative(czip)
      coeffs%coeffs_303%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_303%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_303%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_303%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_303%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_303%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_303%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_303%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_303%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_303%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_303%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_303%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_303%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_303%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_303%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_303%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_303%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_303%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_303%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_303%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_303%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_303%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_303%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_303%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_303%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_303%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_303%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_303%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_303%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_303%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_303%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_303%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_303%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_303%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_303:
   end subroutine reconstruct_d303
!---#] subroutine reconstruct_d303:
end module     p5_usbar_epnebbbarg_d303h3l1d
