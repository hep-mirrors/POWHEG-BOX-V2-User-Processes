module     p9_csbar_epnebbbarg_d79h1l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity1d79h1l1d.f90
   ! generator: buildfortran_d.py
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d79
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd79h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(68) :: acd79
      complex(ki) :: brack
      acd79(1)=dotproduct(k1,qshift)
      acd79(2)=dotproduct(qshift,spvak4k1)
      acd79(3)=abb79(44)
      acd79(4)=dotproduct(qshift,spvak4k2)
      acd79(5)=abb79(23)
      acd79(6)=dotproduct(qshift,spvak4k3)
      acd79(7)=abb79(47)
      acd79(8)=dotproduct(qshift,spval6k1)
      acd79(9)=abb79(18)
      acd79(10)=abb79(31)
      acd79(11)=dotproduct(k2,qshift)
      acd79(12)=abb79(54)
      acd79(13)=abb79(28)
      acd79(14)=abb79(32)
      acd79(15)=abb79(22)
      acd79(16)=abb79(42)
      acd79(17)=dotproduct(l6,qshift)
      acd79(18)=dotproduct(qshift,spvak7k1)
      acd79(19)=abb79(72)
      acd79(20)=abb79(49)
      acd79(21)=dotproduct(qshift,qshift)
      acd79(22)=abb79(33)
      acd79(23)=abb79(29)
      acd79(24)=abb79(39)
      acd79(25)=abb79(14)
      acd79(26)=abb79(36)
      acd79(27)=abb79(12)
      acd79(28)=dotproduct(qshift,spval6l5)
      acd79(29)=abb79(46)
      acd79(30)=abb79(48)
      acd79(31)=dotproduct(qshift,spvak2k1)
      acd79(32)=abb79(17)
      acd79(33)=dotproduct(qshift,spval6k2)
      acd79(34)=abb79(55)
      acd79(35)=dotproduct(qshift,spvak7k2)
      acd79(36)=abb79(52)
      acd79(37)=abb79(25)
      acd79(38)=abb79(24)
      acd79(39)=abb79(11)
      acd79(40)=abb79(26)
      acd79(41)=dotproduct(qshift,spval6k3)
      acd79(42)=abb79(66)
      acd79(43)=abb79(15)
      acd79(44)=dotproduct(qshift,spvak1k2)
      acd79(45)=abb79(10)
      acd79(46)=abb79(9)
      acd79(47)=abb79(13)
      acd79(48)=abb79(34)
      acd79(49)=abb79(20)
      acd79(50)=abb79(40)
      acd79(51)=dotproduct(qshift,spval6k7)
      acd79(52)=abb79(38)
      acd79(53)=abb79(16)
      acd79(54)=acd79(7)*acd79(1)
      acd79(55)=acd79(14)*acd79(11)
      acd79(56)=-acd79(24)*acd79(21)
      acd79(57)=acd79(27)*acd79(8)
      acd79(58)=acd79(32)*acd79(31)
      acd79(59)=acd79(34)*acd79(33)
      acd79(60)=acd79(36)*acd79(35)
      acd79(54)=-acd79(37)+acd79(60)+acd79(59)+acd79(58)+acd79(57)+acd79(56)+ac&
      &d79(55)+acd79(54)
      acd79(54)=acd79(6)*acd79(54)
      acd79(55)=-acd79(29)*acd79(28)
      acd79(55)=acd79(30)+acd79(55)
      acd79(55)=acd79(55)*acd79(6)
      acd79(56)=acd79(19)*acd79(17)
      acd79(57)=acd79(38)*acd79(8)
      acd79(58)=acd79(40)*acd79(33)
      acd79(59)=acd79(42)*acd79(41)
      acd79(55)=acd79(55)-acd79(43)+acd79(59)+acd79(58)+acd79(57)+acd79(56)
      acd79(55)=acd79(18)*acd79(55)
      acd79(56)=-acd79(3)*acd79(2)
      acd79(57)=acd79(5)*acd79(4)
      acd79(58)=acd79(9)*acd79(8)
      acd79(56)=acd79(58)+acd79(56)+acd79(57)
      acd79(57)=acd79(17)-acd79(1)
      acd79(56)=acd79(57)*acd79(56)
      acd79(57)=acd79(12)*acd79(2)
      acd79(58)=acd79(13)*acd79(4)
      acd79(59)=acd79(15)*acd79(8)
      acd79(57)=-acd79(16)+acd79(59)+acd79(58)+acd79(57)
      acd79(57)=acd79(11)*acd79(57)
      acd79(58)=-acd79(22)*acd79(2)
      acd79(59)=-acd79(23)*acd79(4)
      acd79(60)=-acd79(25)*acd79(8)
      acd79(58)=acd79(26)+acd79(60)+acd79(59)+acd79(58)
      acd79(58)=acd79(21)*acd79(58)
      acd79(59)=-acd79(10)*acd79(1)
      acd79(60)=-acd79(20)*acd79(17)
      acd79(61)=-acd79(39)*acd79(8)
      acd79(62)=-acd79(45)*acd79(44)
      acd79(63)=-acd79(46)*acd79(31)
      acd79(64)=-acd79(47)*acd79(33)
      acd79(65)=-acd79(48)*acd79(28)
      acd79(66)=-acd79(49)*acd79(35)
      acd79(67)=-acd79(50)*acd79(41)
      acd79(68)=-acd79(52)*acd79(51)
      brack=acd79(53)+acd79(54)+acd79(55)+acd79(56)+acd79(57)+acd79(58)+acd79(5&
      &9)+acd79(60)+acd79(61)+acd79(62)+acd79(63)+acd79(64)+acd79(65)+acd79(66)&
      &+acd79(67)+acd79(68)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd79h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(85) :: acd79
      complex(ki) :: brack
      acd79(1)=k1(iv1)
      acd79(2)=dotproduct(qshift,spvak4k1)
      acd79(3)=abb79(44)
      acd79(4)=dotproduct(qshift,spvak4k2)
      acd79(5)=abb79(23)
      acd79(6)=dotproduct(qshift,spvak4k3)
      acd79(7)=abb79(47)
      acd79(8)=dotproduct(qshift,spval6k1)
      acd79(9)=abb79(18)
      acd79(10)=abb79(31)
      acd79(11)=k2(iv1)
      acd79(12)=abb79(54)
      acd79(13)=abb79(28)
      acd79(14)=abb79(32)
      acd79(15)=abb79(22)
      acd79(16)=abb79(42)
      acd79(17)=l6(iv1)
      acd79(18)=dotproduct(qshift,spvak7k1)
      acd79(19)=abb79(72)
      acd79(20)=abb79(49)
      acd79(21)=qshift(iv1)
      acd79(22)=abb79(33)
      acd79(23)=abb79(29)
      acd79(24)=abb79(39)
      acd79(25)=abb79(14)
      acd79(26)=abb79(36)
      acd79(27)=spvak4k1(iv1)
      acd79(28)=dotproduct(k1,qshift)
      acd79(29)=dotproduct(k2,qshift)
      acd79(30)=dotproduct(l6,qshift)
      acd79(31)=dotproduct(qshift,qshift)
      acd79(32)=spvak4k2(iv1)
      acd79(33)=spvak4k3(iv1)
      acd79(34)=abb79(12)
      acd79(35)=dotproduct(qshift,spval6l5)
      acd79(36)=abb79(46)
      acd79(37)=abb79(48)
      acd79(38)=dotproduct(qshift,spvak2k1)
      acd79(39)=abb79(17)
      acd79(40)=dotproduct(qshift,spval6k2)
      acd79(41)=abb79(55)
      acd79(42)=dotproduct(qshift,spvak7k2)
      acd79(43)=abb79(52)
      acd79(44)=abb79(25)
      acd79(45)=spval6k1(iv1)
      acd79(46)=abb79(24)
      acd79(47)=abb79(11)
      acd79(48)=spvak7k1(iv1)
      acd79(49)=abb79(26)
      acd79(50)=dotproduct(qshift,spval6k3)
      acd79(51)=abb79(66)
      acd79(52)=abb79(15)
      acd79(53)=spvak1k2(iv1)
      acd79(54)=abb79(10)
      acd79(55)=spvak2k1(iv1)
      acd79(56)=abb79(9)
      acd79(57)=spval6k2(iv1)
      acd79(58)=abb79(13)
      acd79(59)=spval6l5(iv1)
      acd79(60)=abb79(34)
      acd79(61)=spvak7k2(iv1)
      acd79(62)=abb79(20)
      acd79(63)=spval6k3(iv1)
      acd79(64)=abb79(40)
      acd79(65)=spval6k7(iv1)
      acd79(66)=abb79(38)
      acd79(67)=acd79(43)*acd79(61)
      acd79(68)=acd79(39)*acd79(55)
      acd79(69)=acd79(57)*acd79(41)
      acd79(70)=2.0_ki*acd79(21)
      acd79(71)=-acd79(24)*acd79(70)
      acd79(72)=acd79(11)*acd79(14)
      acd79(73)=acd79(1)*acd79(7)
      acd79(74)=acd79(36)*acd79(35)
      acd79(74)=acd79(74)-acd79(37)
      acd79(75)=-acd79(48)*acd79(74)
      acd79(76)=acd79(45)*acd79(34)
      acd79(77)=-acd79(18)*acd79(36)*acd79(59)
      acd79(67)=acd79(77)+acd79(76)+acd79(75)+acd79(73)+acd79(72)+acd79(71)+acd&
      &79(69)+acd79(67)+acd79(68)
      acd79(67)=acd79(6)*acd79(67)
      acd79(68)=acd79(43)*acd79(42)
      acd79(69)=acd79(40)*acd79(41)
      acd79(71)=acd79(39)*acd79(38)
      acd79(72)=-acd79(31)*acd79(24)
      acd79(73)=acd79(29)*acd79(14)
      acd79(75)=acd79(28)*acd79(7)
      acd79(76)=acd79(8)*acd79(34)
      acd79(74)=-acd79(18)*acd79(74)
      acd79(68)=acd79(74)+acd79(76)+acd79(75)+acd79(73)+acd79(72)+acd79(71)+acd&
      &79(69)-acd79(44)+acd79(68)
      acd79(68)=acd79(33)*acd79(68)
      acd79(69)=acd79(51)*acd79(50)
      acd79(71)=acd79(40)*acd79(49)
      acd79(72)=acd79(30)*acd79(19)
      acd79(73)=acd79(8)*acd79(46)
      acd79(69)=acd79(73)+acd79(72)+acd79(71)-acd79(52)+acd79(69)
      acd79(69)=acd79(48)*acd79(69)
      acd79(71)=acd79(51)*acd79(63)
      acd79(72)=acd79(57)*acd79(49)
      acd79(73)=acd79(17)*acd79(19)
      acd79(74)=acd79(45)*acd79(46)
      acd79(71)=acd79(74)+acd79(73)+acd79(71)+acd79(72)
      acd79(71)=acd79(18)*acd79(71)
      acd79(72)=-acd79(31)*acd79(23)
      acd79(73)=acd79(29)*acd79(13)
      acd79(74)=acd79(28)-acd79(30)
      acd79(75)=-acd79(5)*acd79(74)
      acd79(72)=acd79(75)+acd79(73)+acd79(72)
      acd79(72)=acd79(32)*acd79(72)
      acd79(73)=-acd79(31)*acd79(22)
      acd79(75)=acd79(29)*acd79(12)
      acd79(76)=acd79(3)*acd79(74)
      acd79(73)=acd79(76)+acd79(73)+acd79(75)
      acd79(73)=acd79(27)*acd79(73)
      acd79(75)=-acd79(1)+acd79(17)
      acd79(75)=acd79(9)*acd79(75)
      acd79(76)=-acd79(25)*acd79(70)
      acd79(77)=acd79(11)*acd79(15)
      acd79(75)=acd79(77)+acd79(76)+acd79(75)
      acd79(75)=acd79(8)*acd79(75)
      acd79(76)=-acd79(31)*acd79(25)
      acd79(77)=acd79(29)*acd79(15)
      acd79(74)=-acd79(9)*acd79(74)
      acd79(74)=acd79(74)+acd79(77)-acd79(47)+acd79(76)
      acd79(74)=acd79(45)*acd79(74)
      acd79(76)=-acd79(4)*acd79(23)
      acd79(77)=-acd79(2)*acd79(22)
      acd79(76)=acd79(77)+acd79(26)+acd79(76)
      acd79(70)=acd79(76)*acd79(70)
      acd79(76)=acd79(4)*acd79(5)
      acd79(77)=acd79(2)*acd79(3)
      acd79(76)=acd79(76)-acd79(77)
      acd79(77)=-acd79(20)+acd79(76)
      acd79(77)=acd79(17)*acd79(77)
      acd79(78)=acd79(4)*acd79(13)
      acd79(79)=acd79(2)*acd79(12)
      acd79(78)=acd79(79)-acd79(16)+acd79(78)
      acd79(78)=acd79(11)*acd79(78)
      acd79(76)=-acd79(10)-acd79(76)
      acd79(76)=acd79(1)*acd79(76)
      acd79(79)=-acd79(65)*acd79(66)
      acd79(80)=-acd79(53)*acd79(54)
      acd79(81)=-acd79(63)*acd79(64)
      acd79(82)=-acd79(61)*acd79(62)
      acd79(83)=-acd79(59)*acd79(60)
      acd79(84)=-acd79(55)*acd79(56)
      acd79(85)=-acd79(57)*acd79(58)
      brack=acd79(67)+acd79(68)+acd79(69)+acd79(70)+acd79(71)+acd79(72)+acd79(7&
      &3)+acd79(74)+acd79(75)+acd79(76)+acd79(77)+acd79(78)+acd79(79)+acd79(80)&
      &+acd79(81)+acd79(82)+acd79(83)+acd79(84)+acd79(85)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd79h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(72) :: acd79
      complex(ki) :: brack
      acd79(1)=d(iv1,iv2)
      acd79(2)=dotproduct(qshift,spvak4k1)
      acd79(3)=abb79(33)
      acd79(4)=dotproduct(qshift,spvak4k2)
      acd79(5)=abb79(29)
      acd79(6)=dotproduct(qshift,spvak4k3)
      acd79(7)=abb79(39)
      acd79(8)=dotproduct(qshift,spval6k1)
      acd79(9)=abb79(14)
      acd79(10)=abb79(36)
      acd79(11)=k1(iv1)
      acd79(12)=spvak4k1(iv2)
      acd79(13)=abb79(44)
      acd79(14)=spvak4k2(iv2)
      acd79(15)=abb79(23)
      acd79(16)=spvak4k3(iv2)
      acd79(17)=abb79(47)
      acd79(18)=spval6k1(iv2)
      acd79(19)=abb79(18)
      acd79(20)=k1(iv2)
      acd79(21)=spvak4k1(iv1)
      acd79(22)=spvak4k2(iv1)
      acd79(23)=spvak4k3(iv1)
      acd79(24)=spval6k1(iv1)
      acd79(25)=k2(iv1)
      acd79(26)=abb79(54)
      acd79(27)=abb79(28)
      acd79(28)=abb79(32)
      acd79(29)=abb79(22)
      acd79(30)=k2(iv2)
      acd79(31)=l6(iv1)
      acd79(32)=spvak7k1(iv2)
      acd79(33)=abb79(72)
      acd79(34)=l6(iv2)
      acd79(35)=spvak7k1(iv1)
      acd79(36)=qshift(iv1)
      acd79(37)=qshift(iv2)
      acd79(38)=abb79(12)
      acd79(39)=dotproduct(qshift,spval6l5)
      acd79(40)=abb79(46)
      acd79(41)=abb79(48)
      acd79(42)=spvak2k1(iv2)
      acd79(43)=abb79(17)
      acd79(44)=spval6k2(iv2)
      acd79(45)=abb79(55)
      acd79(46)=spval6l5(iv2)
      acd79(47)=dotproduct(qshift,spvak7k1)
      acd79(48)=spvak7k2(iv2)
      acd79(49)=abb79(52)
      acd79(50)=spvak2k1(iv1)
      acd79(51)=spval6k2(iv1)
      acd79(52)=spval6l5(iv1)
      acd79(53)=spvak7k2(iv1)
      acd79(54)=abb79(24)
      acd79(55)=abb79(26)
      acd79(56)=spval6k3(iv2)
      acd79(57)=abb79(66)
      acd79(58)=spval6k3(iv1)
      acd79(59)=acd79(49)*acd79(48)
      acd79(60)=acd79(44)*acd79(45)
      acd79(61)=acd79(43)*acd79(42)
      acd79(62)=2.0_ki*acd79(37)
      acd79(63)=-acd79(7)*acd79(62)
      acd79(64)=acd79(30)*acd79(28)
      acd79(65)=acd79(20)*acd79(17)
      acd79(66)=acd79(40)*acd79(47)
      acd79(67)=-acd79(46)*acd79(66)
      acd79(68)=acd79(18)*acd79(38)
      acd79(69)=acd79(40)*acd79(39)
      acd79(69)=acd79(69)-acd79(41)
      acd79(70)=-acd79(32)*acd79(69)
      acd79(59)=acd79(70)+acd79(68)+acd79(67)+acd79(65)+acd79(64)+acd79(63)+acd&
      &79(61)+acd79(59)+acd79(60)
      acd79(59)=acd79(23)*acd79(59)
      acd79(60)=acd79(49)*acd79(53)
      acd79(61)=acd79(45)*acd79(51)
      acd79(63)=acd79(43)*acd79(50)
      acd79(64)=2.0_ki*acd79(36)
      acd79(65)=-acd79(7)*acd79(64)
      acd79(67)=acd79(25)*acd79(28)
      acd79(68)=acd79(11)*acd79(17)
      acd79(66)=-acd79(52)*acd79(66)
      acd79(70)=acd79(24)*acd79(38)
      acd79(69)=-acd79(35)*acd79(69)
      acd79(60)=acd79(69)+acd79(70)+acd79(66)+acd79(68)+acd79(67)+acd79(65)+acd&
      &79(63)+acd79(60)+acd79(61)
      acd79(60)=acd79(16)*acd79(60)
      acd79(61)=acd79(57)*acd79(56)
      acd79(63)=acd79(44)*acd79(55)
      acd79(65)=acd79(34)*acd79(33)
      acd79(66)=acd79(40)*acd79(6)
      acd79(67)=-acd79(46)*acd79(66)
      acd79(68)=acd79(18)*acd79(54)
      acd79(61)=acd79(68)+acd79(67)+acd79(65)+acd79(61)+acd79(63)
      acd79(61)=acd79(35)*acd79(61)
      acd79(63)=acd79(57)*acd79(58)
      acd79(65)=acd79(51)*acd79(55)
      acd79(67)=acd79(31)*acd79(33)
      acd79(66)=-acd79(52)*acd79(66)
      acd79(68)=acd79(24)*acd79(54)
      acd79(63)=acd79(68)+acd79(66)+acd79(67)+acd79(63)+acd79(65)
      acd79(63)=acd79(32)*acd79(63)
      acd79(65)=-acd79(9)*acd79(8)
      acd79(66)=-acd79(6)*acd79(7)
      acd79(67)=-acd79(5)*acd79(4)
      acd79(68)=-acd79(3)*acd79(2)
      acd79(65)=acd79(68)+acd79(67)+acd79(66)+acd79(10)+acd79(65)
      acd79(65)=acd79(1)*acd79(65)
      acd79(66)=-acd79(5)*acd79(64)
      acd79(67)=acd79(25)*acd79(27)
      acd79(68)=acd79(15)*acd79(31)
      acd79(66)=acd79(68)+acd79(66)+acd79(67)
      acd79(66)=acd79(14)*acd79(66)
      acd79(67)=-acd79(3)*acd79(64)
      acd79(68)=acd79(25)*acd79(26)
      acd79(69)=-acd79(13)*acd79(31)
      acd79(67)=acd79(69)+acd79(67)+acd79(68)
      acd79(67)=acd79(12)*acd79(67)
      acd79(68)=-acd79(9)*acd79(62)
      acd79(69)=acd79(30)*acd79(29)
      acd79(70)=acd79(20)-acd79(34)
      acd79(71)=-acd79(19)*acd79(70)
      acd79(68)=acd79(71)+acd79(68)+acd79(69)
      acd79(68)=acd79(24)*acd79(68)
      acd79(69)=-acd79(11)+acd79(31)
      acd79(69)=acd79(19)*acd79(69)
      acd79(64)=-acd79(9)*acd79(64)
      acd79(71)=acd79(25)*acd79(29)
      acd79(64)=acd79(64)+acd79(71)+acd79(69)
      acd79(64)=acd79(18)*acd79(64)
      acd79(69)=-acd79(15)*acd79(22)
      acd79(71)=acd79(13)*acd79(21)
      acd79(69)=acd79(71)+acd79(69)
      acd79(69)=acd79(70)*acd79(69)
      acd79(70)=-acd79(5)*acd79(62)
      acd79(71)=acd79(30)*acd79(27)
      acd79(70)=acd79(70)+acd79(71)
      acd79(70)=acd79(22)*acd79(70)
      acd79(62)=-acd79(3)*acd79(62)
      acd79(71)=acd79(30)*acd79(26)
      acd79(62)=acd79(62)+acd79(71)
      acd79(62)=acd79(21)*acd79(62)
      acd79(71)=-acd79(14)*acd79(15)
      acd79(72)=acd79(12)*acd79(13)
      acd79(71)=acd79(71)+acd79(72)
      acd79(71)=acd79(11)*acd79(71)
      brack=acd79(59)+acd79(60)+acd79(61)+acd79(62)+acd79(63)+acd79(64)+2.0_ki*&
      &acd79(65)+acd79(66)+acd79(67)+acd79(68)+acd79(69)+acd79(70)+acd79(71)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd79h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(32) :: acd79
      complex(ki) :: brack
      acd79(1)=d(iv1,iv2)
      acd79(2)=spvak4k1(iv3)
      acd79(3)=abb79(33)
      acd79(4)=spvak4k2(iv3)
      acd79(5)=abb79(29)
      acd79(6)=spvak4k3(iv3)
      acd79(7)=abb79(39)
      acd79(8)=spval6k1(iv3)
      acd79(9)=abb79(14)
      acd79(10)=d(iv1,iv3)
      acd79(11)=spvak4k1(iv2)
      acd79(12)=spvak4k2(iv2)
      acd79(13)=spvak4k3(iv2)
      acd79(14)=spval6k1(iv2)
      acd79(15)=d(iv2,iv3)
      acd79(16)=spvak4k1(iv1)
      acd79(17)=spvak4k2(iv1)
      acd79(18)=spvak4k3(iv1)
      acd79(19)=spval6k1(iv1)
      acd79(20)=spval6l5(iv2)
      acd79(21)=spvak7k1(iv3)
      acd79(22)=abb79(46)
      acd79(23)=spval6l5(iv3)
      acd79(24)=spvak7k1(iv2)
      acd79(25)=spval6l5(iv1)
      acd79(26)=spvak7k1(iv1)
      acd79(27)=-acd79(9)*acd79(19)
      acd79(28)=-acd79(7)*acd79(18)
      acd79(29)=-acd79(5)*acd79(17)
      acd79(30)=-acd79(3)*acd79(16)
      acd79(27)=acd79(30)+acd79(29)+acd79(27)+acd79(28)
      acd79(27)=acd79(15)*acd79(27)
      acd79(28)=-acd79(9)*acd79(14)
      acd79(29)=-acd79(7)*acd79(13)
      acd79(30)=-acd79(5)*acd79(12)
      acd79(31)=-acd79(3)*acd79(11)
      acd79(28)=acd79(31)+acd79(30)+acd79(28)+acd79(29)
      acd79(28)=acd79(10)*acd79(28)
      acd79(29)=-acd79(9)*acd79(8)
      acd79(30)=-acd79(6)*acd79(7)
      acd79(31)=-acd79(5)*acd79(4)
      acd79(32)=-acd79(3)*acd79(2)
      acd79(29)=acd79(32)+acd79(31)+acd79(29)+acd79(30)
      acd79(29)=acd79(1)*acd79(29)
      acd79(27)=acd79(29)+acd79(27)+acd79(28)
      acd79(28)=-acd79(23)*acd79(24)
      acd79(29)=-acd79(20)*acd79(21)
      acd79(28)=acd79(28)+acd79(29)
      acd79(28)=acd79(18)*acd79(28)
      acd79(29)=-acd79(23)*acd79(26)
      acd79(30)=-acd79(21)*acd79(25)
      acd79(29)=acd79(29)+acd79(30)
      acd79(29)=acd79(13)*acd79(29)
      acd79(30)=-acd79(24)*acd79(25)
      acd79(31)=-acd79(20)*acd79(26)
      acd79(30)=acd79(30)+acd79(31)
      acd79(30)=acd79(6)*acd79(30)
      acd79(28)=acd79(30)+acd79(28)+acd79(29)
      acd79(28)=acd79(22)*acd79(28)
      brack=2.0_ki*acd79(27)+acd79(28)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd79h1
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
      qshift = -k5
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
!---#[ subroutine reconstruct_d79:
   subroutine     reconstruct_d79(coeffs)
      use p9_csbar_epnebbbarg_groups, only: tensrec_info_group11
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group11), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_79:
      coeffs%coeffs_79%c0 = derivative(czip)
      coeffs%coeffs_79%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_79%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_79%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_79%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_79%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_79%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_79%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_79%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_79%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_79%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_79%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_79%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_79%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_79%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_79%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_79%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_79%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_79%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_79%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_79%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_79%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_79%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_79%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_79%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_79%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_79%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_79%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_79%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_79%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_79%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_79%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_79%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_79%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_79%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_79:
   end subroutine reconstruct_d79
!---#] subroutine reconstruct_d79:
end module     p9_csbar_epnebbbarg_d79h1l1d
