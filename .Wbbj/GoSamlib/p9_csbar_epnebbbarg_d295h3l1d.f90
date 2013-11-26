module     p9_csbar_epnebbbarg_d295h3l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity3d295h3l1d.f90
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
   integer, private :: iv4
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d295
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd295h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(52) :: acd295
      complex(ki) :: brack
      acd295(1)=dotproduct(k1,qshift)
      acd295(2)=dotproduct(qshift,spvak2k1)
      acd295(3)=dotproduct(qshift,spvak4k3)
      acd295(4)=abb295(16)
      acd295(5)=dotproduct(qshift,spvak2e7)
      acd295(6)=abb295(20)
      acd295(7)=abb295(27)
      acd295(8)=abb295(66)
      acd295(9)=dotproduct(qshift,spvak2l6)
      acd295(10)=abb295(74)
      acd295(11)=abb295(59)
      acd295(12)=dotproduct(k7,qshift)
      acd295(13)=abb295(21)
      acd295(14)=abb295(60)
      acd295(15)=dotproduct(e7,qshift)
      acd295(16)=abb295(10)
      acd295(17)=dotproduct(qshift,spvak2l5)
      acd295(18)=abb295(17)
      acd295(19)=abb295(7)
      acd295(20)=dotproduct(qshift,spvak2k3)
      acd295(21)=abb295(23)
      acd295(22)=dotproduct(qshift,spvak2k7)
      acd295(23)=abb295(31)
      acd295(24)=abb295(13)
      acd295(25)=abb295(56)
      acd295(26)=abb295(50)
      acd295(27)=abb295(40)
      acd295(28)=abb295(48)
      acd295(29)=dotproduct(qshift,qshift)
      acd295(30)=abb295(24)
      acd295(31)=abb295(28)
      acd295(32)=abb295(15)
      acd295(33)=abb295(64)
      acd295(34)=abb295(70)
      acd295(35)=abb295(29)
      acd295(36)=abb295(18)
      acd295(37)=abb295(9)
      acd295(38)=abb295(30)
      acd295(39)=abb295(14)
      acd295(40)=abb295(11)
      acd295(41)=abb295(12)
      acd295(42)=abb295(8)
      acd295(43)=abb295(43)
      acd295(44)=abb295(22)
      acd295(45)=abb295(25)
      acd295(46)=-acd295(5)*acd295(38)
      acd295(47)=acd295(29)*acd295(30)
      acd295(48)=-acd295(1)*acd295(4)
      acd295(49)=-acd295(17)*acd295(18)
      acd295(49)=-acd295(19)+acd295(49)
      acd295(49)=acd295(15)*acd295(49)
      acd295(46)=acd295(49)+acd295(48)+acd295(47)+acd295(39)+acd295(46)
      acd295(46)=acd295(3)*acd295(46)
      acd295(47)=-acd295(22)*acd295(23)
      acd295(48)=-acd295(20)*acd295(21)
      acd295(47)=acd295(48)+acd295(24)+acd295(47)
      acd295(47)=acd295(15)*acd295(47)
      acd295(48)=-acd295(15)*acd295(16)
      acd295(49)=-acd295(3)*acd295(36)
      acd295(48)=acd295(49)+acd295(37)+acd295(48)
      acd295(48)=acd295(2)*acd295(48)
      acd295(49)=acd295(12)*acd295(13)
      acd295(50)=acd295(12)*acd295(6)
      acd295(50)=acd295(40)+acd295(50)
      acd295(50)=acd295(5)*acd295(50)
      acd295(51)=acd295(5)*acd295(31)
      acd295(51)=-acd295(32)+acd295(51)
      acd295(51)=acd295(29)*acd295(51)
      acd295(52)=-acd295(5)*acd295(6)
      acd295(52)=acd295(7)+acd295(52)
      acd295(52)=acd295(1)*acd295(52)
      acd295(46)=acd295(48)+acd295(46)+acd295(47)+acd295(52)+acd295(51)+acd295(&
      &50)-acd295(41)+acd295(49)
      acd295(46)=acd295(2)*acd295(46)
      acd295(47)=-acd295(29)*acd295(33)
      acd295(48)=acd295(1)*acd295(8)
      acd295(49)=acd295(9)*acd295(42)
      acd295(50)=-acd295(9)*acd295(25)
      acd295(50)=acd295(26)+acd295(50)
      acd295(50)=acd295(15)*acd295(50)
      acd295(47)=acd295(50)+acd295(49)+acd295(48)-acd295(43)+acd295(47)
      acd295(47)=acd295(3)*acd295(47)
      acd295(48)=acd295(1)-acd295(12)
      acd295(48)=acd295(10)*acd295(48)
      acd295(49)=-acd295(29)*acd295(34)
      acd295(48)=acd295(49)-acd295(44)+acd295(48)
      acd295(48)=acd295(9)*acd295(48)
      acd295(49)=-acd295(12)*acd295(14)
      acd295(50)=acd295(29)*acd295(35)
      acd295(51)=-acd295(1)*acd295(11)
      acd295(52)=acd295(9)*acd295(27)
      acd295(52)=-acd295(28)+acd295(52)
      acd295(52)=acd295(15)*acd295(52)
      brack=acd295(45)+acd295(46)+acd295(47)+acd295(48)+acd295(49)+acd295(50)+a&
      &cd295(51)+acd295(52)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd295h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(72) :: acd295
      complex(ki) :: brack
      acd295(1)=k1(iv1)
      acd295(2)=dotproduct(qshift,spvak2k1)
      acd295(3)=dotproduct(qshift,spvak4k3)
      acd295(4)=abb295(16)
      acd295(5)=dotproduct(qshift,spvak2e7)
      acd295(6)=abb295(20)
      acd295(7)=abb295(27)
      acd295(8)=abb295(66)
      acd295(9)=dotproduct(qshift,spvak2l6)
      acd295(10)=abb295(74)
      acd295(11)=abb295(59)
      acd295(12)=k7(iv1)
      acd295(13)=abb295(21)
      acd295(14)=abb295(60)
      acd295(15)=e7(iv1)
      acd295(16)=abb295(10)
      acd295(17)=dotproduct(qshift,spvak2l5)
      acd295(18)=abb295(17)
      acd295(19)=abb295(7)
      acd295(20)=dotproduct(qshift,spvak2k3)
      acd295(21)=abb295(23)
      acd295(22)=dotproduct(qshift,spvak2k7)
      acd295(23)=abb295(31)
      acd295(24)=abb295(13)
      acd295(25)=abb295(56)
      acd295(26)=abb295(50)
      acd295(27)=abb295(40)
      acd295(28)=abb295(48)
      acd295(29)=qshift(iv1)
      acd295(30)=abb295(24)
      acd295(31)=abb295(28)
      acd295(32)=abb295(15)
      acd295(33)=abb295(64)
      acd295(34)=abb295(70)
      acd295(35)=abb295(29)
      acd295(36)=spvak2k1(iv1)
      acd295(37)=dotproduct(k1,qshift)
      acd295(38)=dotproduct(k7,qshift)
      acd295(39)=dotproduct(e7,qshift)
      acd295(40)=dotproduct(qshift,qshift)
      acd295(41)=abb295(18)
      acd295(42)=abb295(9)
      acd295(43)=abb295(30)
      acd295(44)=abb295(14)
      acd295(45)=abb295(11)
      acd295(46)=abb295(12)
      acd295(47)=spvak4k3(iv1)
      acd295(48)=abb295(8)
      acd295(49)=abb295(43)
      acd295(50)=spvak2e7(iv1)
      acd295(51)=spvak2l6(iv1)
      acd295(52)=abb295(22)
      acd295(53)=spvak2k3(iv1)
      acd295(54)=spvak2l5(iv1)
      acd295(55)=spvak2k7(iv1)
      acd295(56)=acd295(50)*acd295(43)
      acd295(57)=2.0_ki*acd295(29)
      acd295(58)=-acd295(30)*acd295(57)
      acd295(59)=acd295(1)*acd295(4)
      acd295(60)=acd295(18)*acd295(17)
      acd295(60)=acd295(60)+acd295(19)
      acd295(61)=acd295(15)*acd295(60)
      acd295(62)=acd295(39)*acd295(18)*acd295(54)
      acd295(56)=acd295(62)+acd295(61)+acd295(59)+acd295(56)+acd295(58)
      acd295(56)=acd295(3)*acd295(56)
      acd295(58)=acd295(6)*acd295(38)
      acd295(59)=acd295(40)*acd295(31)
      acd295(61)=acd295(37)*acd295(6)
      acd295(58)=acd295(58)+acd295(45)+acd295(59)-acd295(61)
      acd295(59)=-acd295(50)*acd295(58)
      acd295(61)=acd295(40)*acd295(30)
      acd295(62)=acd295(37)*acd295(4)
      acd295(63)=acd295(5)*acd295(43)
      acd295(61)=acd295(44)-acd295(63)+acd295(61)-acd295(62)
      acd295(62)=-acd295(47)*acd295(61)
      acd295(63)=acd295(23)*acd295(55)
      acd295(64)=acd295(21)*acd295(53)
      acd295(65)=acd295(47)*acd295(60)
      acd295(63)=acd295(65)+acd295(63)+acd295(64)
      acd295(63)=acd295(39)*acd295(63)
      acd295(64)=acd295(1)-acd295(12)
      acd295(65)=acd295(6)*acd295(64)
      acd295(66)=-acd295(31)*acd295(57)
      acd295(65)=acd295(66)+acd295(65)
      acd295(65)=acd295(5)*acd295(65)
      acd295(66)=acd295(23)*acd295(22)
      acd295(67)=acd295(21)*acd295(20)
      acd295(66)=-acd295(24)+acd295(66)+acd295(67)
      acd295(67)=acd295(15)*acd295(66)
      acd295(68)=acd295(39)*acd295(16)
      acd295(69)=acd295(3)*acd295(41)
      acd295(68)=acd295(69)-acd295(42)+acd295(68)
      acd295(68)=acd295(36)*acd295(68)
      acd295(69)=acd295(15)*acd295(16)
      acd295(70)=acd295(47)*acd295(41)
      acd295(69)=acd295(69)+acd295(70)
      acd295(69)=acd295(2)*acd295(69)
      acd295(70)=-acd295(12)*acd295(13)
      acd295(71)=acd295(32)*acd295(57)
      acd295(72)=-acd295(1)*acd295(7)
      acd295(56)=acd295(69)+2.0_ki*acd295(68)+acd295(56)+acd295(63)+acd295(62)+&
      &acd295(67)+acd295(65)+acd295(72)+acd295(71)+acd295(70)+acd295(59)
      acd295(56)=acd295(2)*acd295(56)
      acd295(58)=-acd295(5)*acd295(58)
      acd295(59)=acd295(39)*acd295(60)
      acd295(59)=acd295(59)-acd295(61)
      acd295(59)=acd295(3)*acd295(59)
      acd295(60)=acd295(39)*acd295(66)
      acd295(61)=-acd295(38)*acd295(13)
      acd295(62)=acd295(40)*acd295(32)
      acd295(63)=-acd295(37)*acd295(7)
      acd295(58)=acd295(59)+acd295(60)+acd295(58)+acd295(63)+acd295(62)+acd295(&
      &46)+acd295(61)
      acd295(58)=acd295(36)*acd295(58)
      acd295(59)=acd295(39)*acd295(25)
      acd295(59)=acd295(59)-acd295(48)
      acd295(59)=acd295(51)*acd295(59)
      acd295(60)=acd295(33)*acd295(57)
      acd295(61)=-acd295(1)*acd295(8)
      acd295(62)=acd295(9)*acd295(25)
      acd295(62)=acd295(62)-acd295(26)
      acd295(63)=acd295(15)*acd295(62)
      acd295(59)=acd295(63)+acd295(60)+acd295(61)+acd295(59)
      acd295(59)=acd295(3)*acd295(59)
      acd295(60)=acd295(40)*acd295(33)
      acd295(61)=-acd295(37)*acd295(8)
      acd295(63)=-acd295(9)*acd295(48)
      acd295(60)=acd295(63)+acd295(61)+acd295(49)+acd295(60)
      acd295(60)=acd295(47)*acd295(60)
      acd295(61)=-acd295(37)+acd295(38)
      acd295(61)=acd295(10)*acd295(61)
      acd295(63)=acd295(40)*acd295(34)
      acd295(61)=acd295(63)+acd295(52)+acd295(61)
      acd295(61)=acd295(51)*acd295(61)
      acd295(63)=-acd295(10)*acd295(64)
      acd295(64)=acd295(34)*acd295(57)
      acd295(63)=acd295(64)+acd295(63)
      acd295(63)=acd295(9)*acd295(63)
      acd295(64)=-acd295(51)*acd295(27)
      acd295(62)=acd295(47)*acd295(62)
      acd295(62)=acd295(64)+acd295(62)
      acd295(62)=acd295(39)*acd295(62)
      acd295(64)=acd295(12)*acd295(14)
      acd295(57)=-acd295(35)*acd295(57)
      acd295(65)=acd295(1)*acd295(11)
      acd295(66)=-acd295(9)*acd295(27)
      acd295(66)=acd295(28)+acd295(66)
      acd295(66)=acd295(15)*acd295(66)
      brack=acd295(56)+acd295(57)+acd295(58)+acd295(59)+acd295(60)+acd295(61)+a&
      &cd295(62)+acd295(63)+acd295(64)+acd295(65)+acd295(66)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd295h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(84) :: acd295
      complex(ki) :: brack
      acd295(1)=d(iv1,iv2)
      acd295(2)=dotproduct(qshift,spvak2k1)
      acd295(3)=dotproduct(qshift,spvak4k3)
      acd295(4)=abb295(24)
      acd295(5)=dotproduct(qshift,spvak2e7)
      acd295(6)=abb295(28)
      acd295(7)=abb295(15)
      acd295(8)=abb295(64)
      acd295(9)=dotproduct(qshift,spvak2l6)
      acd295(10)=abb295(70)
      acd295(11)=abb295(29)
      acd295(12)=k1(iv1)
      acd295(13)=spvak2k1(iv2)
      acd295(14)=abb295(16)
      acd295(15)=abb295(20)
      acd295(16)=abb295(27)
      acd295(17)=spvak4k3(iv2)
      acd295(18)=abb295(66)
      acd295(19)=spvak2e7(iv2)
      acd295(20)=spvak2l6(iv2)
      acd295(21)=abb295(74)
      acd295(22)=k1(iv2)
      acd295(23)=spvak2k1(iv1)
      acd295(24)=spvak4k3(iv1)
      acd295(25)=spvak2e7(iv1)
      acd295(26)=spvak2l6(iv1)
      acd295(27)=k7(iv1)
      acd295(28)=abb295(21)
      acd295(29)=k7(iv2)
      acd295(30)=e7(iv1)
      acd295(31)=abb295(10)
      acd295(32)=dotproduct(qshift,spvak2l5)
      acd295(33)=abb295(17)
      acd295(34)=abb295(7)
      acd295(35)=dotproduct(qshift,spvak2k3)
      acd295(36)=abb295(23)
      acd295(37)=dotproduct(qshift,spvak2k7)
      acd295(38)=abb295(31)
      acd295(39)=abb295(13)
      acd295(40)=abb295(56)
      acd295(41)=abb295(50)
      acd295(42)=abb295(40)
      acd295(43)=spvak2k3(iv2)
      acd295(44)=spvak2l5(iv2)
      acd295(45)=spvak2k7(iv2)
      acd295(46)=e7(iv2)
      acd295(47)=spvak2k3(iv1)
      acd295(48)=spvak2l5(iv1)
      acd295(49)=spvak2k7(iv1)
      acd295(50)=qshift(iv1)
      acd295(51)=qshift(iv2)
      acd295(52)=dotproduct(e7,qshift)
      acd295(53)=abb295(18)
      acd295(54)=abb295(9)
      acd295(55)=dotproduct(k1,qshift)
      acd295(56)=dotproduct(qshift,qshift)
      acd295(57)=abb295(30)
      acd295(58)=abb295(14)
      acd295(59)=dotproduct(k7,qshift)
      acd295(60)=abb295(11)
      acd295(61)=abb295(8)
      acd295(62)=acd295(12)*acd295(14)
      acd295(63)=acd295(33)*acd295(32)
      acd295(63)=acd295(63)+acd295(34)
      acd295(64)=acd295(63)*acd295(30)
      acd295(65)=acd295(25)*acd295(57)
      acd295(66)=2.0_ki*acd295(50)
      acd295(67)=acd295(66)*acd295(4)
      acd295(68)=acd295(52)*acd295(33)
      acd295(69)=acd295(68)*acd295(48)
      acd295(62)=acd295(69)+acd295(62)+acd295(64)+acd295(65)-acd295(67)
      acd295(64)=-acd295(3)*acd295(62)
      acd295(65)=acd295(14)*acd295(55)
      acd295(67)=acd295(63)*acd295(52)
      acd295(69)=acd295(4)*acd295(56)
      acd295(70)=acd295(5)*acd295(57)
      acd295(65)=acd295(58)-acd295(65)-acd295(67)+acd295(69)-acd295(70)
      acd295(67)=acd295(24)*acd295(65)
      acd295(69)=acd295(5)*acd295(6)
      acd295(69)=acd295(69)-acd295(7)
      acd295(70)=acd295(66)*acd295(69)
      acd295(71)=acd295(55)-acd295(59)
      acd295(72)=-acd295(25)*acd295(71)
      acd295(73)=acd295(12)-acd295(27)
      acd295(74)=-acd295(5)*acd295(73)
      acd295(72)=acd295(72)+acd295(74)
      acd295(72)=acd295(15)*acd295(72)
      acd295(74)=acd295(38)*acd295(49)
      acd295(75)=acd295(36)*acd295(47)
      acd295(74)=acd295(74)+acd295(75)
      acd295(75)=-acd295(52)*acd295(74)
      acd295(76)=acd295(38)*acd295(37)
      acd295(77)=acd295(36)*acd295(35)
      acd295(76)=acd295(76)+acd295(77)-acd295(39)
      acd295(77)=-acd295(30)*acd295(76)
      acd295(78)=-acd295(30)*acd295(31)
      acd295(79)=-acd295(24)*acd295(53)
      acd295(78)=acd295(78)+acd295(79)
      acd295(79)=2.0_ki*acd295(2)
      acd295(78)=acd295(78)*acd295(79)
      acd295(80)=-acd295(52)*acd295(31)
      acd295(81)=-acd295(3)*acd295(53)
      acd295(80)=acd295(81)+acd295(54)+acd295(80)
      acd295(80)=acd295(23)*acd295(80)
      acd295(81)=acd295(27)*acd295(28)
      acd295(82)=acd295(12)*acd295(16)
      acd295(83)=acd295(6)*acd295(56)
      acd295(83)=acd295(83)+acd295(60)
      acd295(84)=acd295(25)*acd295(83)
      acd295(64)=2.0_ki*acd295(80)+acd295(78)+acd295(64)+acd295(67)+acd295(77)+&
      &acd295(75)+acd295(72)+acd295(84)+acd295(82)+acd295(81)+acd295(70)
      acd295(64)=acd295(13)*acd295(64)
      acd295(67)=acd295(22)*acd295(14)
      acd295(63)=acd295(63)*acd295(46)
      acd295(70)=acd295(19)*acd295(57)
      acd295(72)=2.0_ki*acd295(51)
      acd295(75)=acd295(72)*acd295(4)
      acd295(68)=acd295(68)*acd295(44)
      acd295(63)=acd295(68)+acd295(67)+acd295(63)+acd295(70)-acd295(75)
      acd295(67)=-acd295(3)*acd295(63)
      acd295(65)=acd295(17)*acd295(65)
      acd295(68)=acd295(72)*acd295(69)
      acd295(70)=-acd295(19)*acd295(71)
      acd295(71)=acd295(22)-acd295(29)
      acd295(75)=-acd295(5)*acd295(71)
      acd295(70)=acd295(70)+acd295(75)
      acd295(70)=acd295(15)*acd295(70)
      acd295(75)=acd295(38)*acd295(45)
      acd295(77)=acd295(36)*acd295(43)
      acd295(75)=acd295(75)+acd295(77)
      acd295(77)=-acd295(52)*acd295(75)
      acd295(76)=-acd295(46)*acd295(76)
      acd295(78)=-acd295(46)*acd295(31)
      acd295(80)=-acd295(17)*acd295(53)
      acd295(78)=acd295(78)+acd295(80)
      acd295(78)=acd295(78)*acd295(79)
      acd295(79)=acd295(29)*acd295(28)
      acd295(80)=acd295(22)*acd295(16)
      acd295(81)=acd295(19)*acd295(83)
      acd295(65)=acd295(78)+acd295(67)+acd295(65)+acd295(76)+acd295(77)+acd295(&
      &70)+acd295(81)+acd295(80)+acd295(79)+acd295(68)
      acd295(65)=acd295(23)*acd295(65)
      acd295(63)=-acd295(24)*acd295(63)
      acd295(62)=-acd295(17)*acd295(62)
      acd295(67)=acd295(25)*acd295(51)
      acd295(68)=acd295(19)*acd295(50)
      acd295(67)=acd295(68)+acd295(67)
      acd295(67)=acd295(6)*acd295(67)
      acd295(68)=acd295(1)*acd295(69)
      acd295(67)=acd295(67)+acd295(68)
      acd295(68)=-acd295(25)*acd295(71)
      acd295(69)=-acd295(19)*acd295(73)
      acd295(68)=acd295(68)+acd295(69)
      acd295(68)=acd295(15)*acd295(68)
      acd295(69)=-acd295(46)*acd295(74)
      acd295(70)=-acd295(30)*acd295(75)
      acd295(74)=-acd295(46)*acd295(48)
      acd295(75)=-acd295(30)*acd295(44)
      acd295(74)=acd295(75)+acd295(74)
      acd295(74)=acd295(33)*acd295(74)
      acd295(75)=2.0_ki*acd295(4)
      acd295(75)=acd295(1)*acd295(75)
      acd295(74)=acd295(75)+acd295(74)
      acd295(74)=acd295(3)*acd295(74)
      acd295(62)=acd295(74)+acd295(62)+acd295(63)+acd295(70)+acd295(69)+2.0_ki*&
      &acd295(67)+acd295(68)
      acd295(62)=acd295(2)*acd295(62)
      acd295(63)=acd295(52)*acd295(40)
      acd295(63)=acd295(63)-acd295(61)
      acd295(67)=-acd295(20)*acd295(63)
      acd295(68)=-acd295(8)*acd295(72)
      acd295(69)=acd295(22)*acd295(18)
      acd295(70)=acd295(40)*acd295(9)
      acd295(70)=acd295(70)-acd295(41)
      acd295(74)=-acd295(46)*acd295(70)
      acd295(67)=acd295(74)+acd295(68)+acd295(69)+acd295(67)
      acd295(67)=acd295(24)*acd295(67)
      acd295(63)=-acd295(26)*acd295(63)
      acd295(68)=-acd295(8)*acd295(66)
      acd295(69)=acd295(12)*acd295(18)
      acd295(70)=-acd295(30)*acd295(70)
      acd295(63)=acd295(70)+acd295(69)+acd295(68)+acd295(63)
      acd295(63)=acd295(17)*acd295(63)
      acd295(68)=acd295(21)*acd295(71)
      acd295(69)=-acd295(10)*acd295(72)
      acd295(70)=acd295(46)*acd295(42)
      acd295(68)=acd295(70)+acd295(69)+acd295(68)
      acd295(68)=acd295(26)*acd295(68)
      acd295(69)=acd295(21)*acd295(73)
      acd295(66)=-acd295(10)*acd295(66)
      acd295(70)=acd295(30)*acd295(42)
      acd295(66)=acd295(70)+acd295(66)+acd295(69)
      acd295(66)=acd295(20)*acd295(66)
      acd295(69)=2.0_ki*acd295(1)
      acd295(70)=-acd295(9)*acd295(10)
      acd295(70)=acd295(11)+acd295(70)
      acd295(70)=acd295(70)*acd295(69)
      acd295(71)=-acd295(46)*acd295(26)
      acd295(72)=-acd295(30)*acd295(20)
      acd295(71)=acd295(72)+acd295(71)
      acd295(71)=acd295(40)*acd295(71)
      acd295(69)=-acd295(8)*acd295(69)
      acd295(69)=acd295(69)+acd295(71)
      acd295(69)=acd295(3)*acd295(69)
      brack=acd295(62)+acd295(63)+acd295(64)+acd295(65)+acd295(66)+acd295(67)+a&
      &cd295(68)+acd295(69)+acd295(70)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd295h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(80) :: acd295
      complex(ki) :: brack
      acd295(1)=d(iv1,iv2)
      acd295(2)=spvak2k1(iv3)
      acd295(3)=dotproduct(qshift,spvak4k3)
      acd295(4)=abb295(24)
      acd295(5)=dotproduct(qshift,spvak2e7)
      acd295(6)=abb295(28)
      acd295(7)=abb295(15)
      acd295(8)=spvak4k3(iv3)
      acd295(9)=dotproduct(qshift,spvak2k1)
      acd295(10)=abb295(64)
      acd295(11)=spvak2e7(iv3)
      acd295(12)=spvak2l6(iv3)
      acd295(13)=abb295(70)
      acd295(14)=d(iv1,iv3)
      acd295(15)=spvak2k1(iv2)
      acd295(16)=spvak4k3(iv2)
      acd295(17)=spvak2e7(iv2)
      acd295(18)=spvak2l6(iv2)
      acd295(19)=d(iv2,iv3)
      acd295(20)=spvak2k1(iv1)
      acd295(21)=spvak4k3(iv1)
      acd295(22)=spvak2e7(iv1)
      acd295(23)=spvak2l6(iv1)
      acd295(24)=k1(iv1)
      acd295(25)=abb295(16)
      acd295(26)=abb295(20)
      acd295(27)=k1(iv2)
      acd295(28)=k1(iv3)
      acd295(29)=k7(iv1)
      acd295(30)=k7(iv2)
      acd295(31)=k7(iv3)
      acd295(32)=e7(iv1)
      acd295(33)=abb295(10)
      acd295(34)=dotproduct(qshift,spvak2l5)
      acd295(35)=abb295(17)
      acd295(36)=abb295(7)
      acd295(37)=spvak2k3(iv3)
      acd295(38)=abb295(23)
      acd295(39)=spvak2l5(iv3)
      acd295(40)=spvak2k7(iv3)
      acd295(41)=abb295(31)
      acd295(42)=spvak2k3(iv2)
      acd295(43)=spvak2l5(iv2)
      acd295(44)=spvak2k7(iv2)
      acd295(45)=abb295(56)
      acd295(46)=e7(iv2)
      acd295(47)=spvak2k3(iv1)
      acd295(48)=spvak2l5(iv1)
      acd295(49)=spvak2k7(iv1)
      acd295(50)=e7(iv3)
      acd295(51)=qshift(iv1)
      acd295(52)=qshift(iv2)
      acd295(53)=qshift(iv3)
      acd295(54)=abb295(18)
      acd295(55)=abb295(30)
      acd295(56)=dotproduct(e7,qshift)
      acd295(57)=acd295(25)*acd295(27)
      acd295(58)=acd295(17)*acd295(55)
      acd295(59)=acd295(46)*acd295(36)
      acd295(60)=2.0_ki*acd295(4)
      acd295(61)=acd295(60)*acd295(52)
      acd295(57)=acd295(57)+acd295(58)+acd295(59)-acd295(61)
      acd295(58)=acd295(21)*acd295(57)
      acd295(59)=acd295(25)*acd295(24)
      acd295(61)=acd295(22)*acd295(55)
      acd295(62)=acd295(60)*acd295(51)
      acd295(63)=acd295(32)*acd295(36)
      acd295(59)=-acd295(59)-acd295(61)+acd295(62)-acd295(63)
      acd295(61)=-acd295(16)*acd295(59)
      acd295(62)=acd295(43)*acd295(56)
      acd295(63)=acd295(46)*acd295(34)
      acd295(62)=acd295(62)+acd295(63)
      acd295(63)=acd295(21)*acd295(62)
      acd295(64)=acd295(48)*acd295(56)
      acd295(65)=acd295(32)*acd295(34)
      acd295(64)=acd295(64)+acd295(65)
      acd295(65)=acd295(16)*acd295(64)
      acd295(66)=acd295(46)*acd295(48)
      acd295(67)=acd295(3)*acd295(66)
      acd295(68)=acd295(32)*acd295(3)
      acd295(69)=acd295(43)*acd295(68)
      acd295(63)=acd295(65)+acd295(63)+acd295(67)+acd295(69)
      acd295(63)=acd295(35)*acd295(63)
      acd295(65)=-acd295(1)*acd295(5)
      acd295(67)=-acd295(22)*acd295(52)
      acd295(69)=-acd295(17)*acd295(51)
      acd295(65)=acd295(69)+acd295(65)+acd295(67)
      acd295(67)=2.0_ki*acd295(6)
      acd295(65)=acd295(65)*acd295(67)
      acd295(69)=acd295(27)-acd295(30)
      acd295(70)=acd295(22)*acd295(69)
      acd295(71)=acd295(24)-acd295(29)
      acd295(72)=acd295(17)*acd295(71)
      acd295(70)=acd295(70)+acd295(72)
      acd295(70)=acd295(26)*acd295(70)
      acd295(72)=acd295(41)*acd295(49)
      acd295(73)=acd295(38)*acd295(47)
      acd295(72)=acd295(72)+acd295(73)
      acd295(73)=acd295(46)*acd295(72)
      acd295(74)=acd295(41)*acd295(44)
      acd295(75)=acd295(38)*acd295(42)
      acd295(74)=acd295(74)+acd295(75)
      acd295(75)=acd295(32)*acd295(74)
      acd295(76)=acd295(46)*acd295(33)
      acd295(77)=acd295(16)*acd295(54)
      acd295(76)=acd295(76)+acd295(77)
      acd295(77)=2.0_ki*acd295(20)
      acd295(76)=acd295(76)*acd295(77)
      acd295(78)=acd295(32)*acd295(33)
      acd295(79)=acd295(21)*acd295(54)
      acd295(78)=acd295(78)+acd295(79)
      acd295(78)=acd295(15)*acd295(78)
      acd295(79)=acd295(60)*acd295(3)
      acd295(79)=acd295(79)-2.0_ki*acd295(7)
      acd295(80)=-acd295(1)*acd295(79)
      acd295(58)=2.0_ki*acd295(78)+acd295(76)+acd295(63)+acd295(61)+acd295(58)+&
      &acd295(75)+acd295(73)+acd295(65)+acd295(70)+acd295(80)
      acd295(58)=acd295(2)*acd295(58)
      acd295(61)=acd295(25)*acd295(28)
      acd295(63)=acd295(11)*acd295(55)
      acd295(65)=acd295(50)*acd295(36)
      acd295(60)=acd295(60)*acd295(53)
      acd295(60)=acd295(61)+acd295(63)+acd295(65)-acd295(60)
      acd295(61)=acd295(21)*acd295(60)
      acd295(59)=-acd295(8)*acd295(59)
      acd295(63)=acd295(39)*acd295(56)
      acd295(65)=acd295(50)*acd295(34)
      acd295(63)=acd295(63)+acd295(65)
      acd295(65)=acd295(21)*acd295(63)
      acd295(64)=acd295(8)*acd295(64)
      acd295(70)=acd295(50)*acd295(48)
      acd295(73)=acd295(3)*acd295(70)
      acd295(68)=acd295(39)*acd295(68)
      acd295(64)=acd295(64)+acd295(65)+acd295(73)+acd295(68)
      acd295(64)=acd295(35)*acd295(64)
      acd295(65)=-acd295(14)*acd295(5)
      acd295(68)=-acd295(22)*acd295(53)
      acd295(73)=-acd295(11)*acd295(51)
      acd295(65)=acd295(73)+acd295(65)+acd295(68)
      acd295(65)=acd295(65)*acd295(67)
      acd295(68)=acd295(28)-acd295(31)
      acd295(73)=acd295(22)*acd295(68)
      acd295(71)=acd295(11)*acd295(71)
      acd295(71)=acd295(73)+acd295(71)
      acd295(71)=acd295(26)*acd295(71)
      acd295(72)=acd295(50)*acd295(72)
      acd295(73)=acd295(41)*acd295(40)
      acd295(75)=acd295(38)*acd295(37)
      acd295(73)=acd295(73)+acd295(75)
      acd295(75)=acd295(32)*acd295(73)
      acd295(76)=acd295(50)*acd295(33)
      acd295(78)=acd295(8)*acd295(54)
      acd295(76)=acd295(76)+acd295(78)
      acd295(76)=acd295(76)*acd295(77)
      acd295(77)=-acd295(14)*acd295(79)
      acd295(59)=acd295(76)+acd295(64)+acd295(59)+acd295(61)+acd295(75)+acd295(&
      &72)+acd295(65)+acd295(71)+acd295(77)
      acd295(59)=acd295(15)*acd295(59)
      acd295(60)=acd295(16)*acd295(60)
      acd295(57)=acd295(8)*acd295(57)
      acd295(61)=acd295(50)*acd295(43)
      acd295(64)=acd295(46)*acd295(39)
      acd295(61)=acd295(61)+acd295(64)
      acd295(64)=acd295(3)*acd295(61)
      acd295(63)=acd295(16)*acd295(63)
      acd295(62)=acd295(8)*acd295(62)
      acd295(62)=acd295(62)+acd295(63)+acd295(64)
      acd295(62)=acd295(35)*acd295(62)
      acd295(63)=-acd295(19)*acd295(5)
      acd295(64)=-acd295(17)*acd295(53)
      acd295(65)=-acd295(11)*acd295(52)
      acd295(63)=acd295(65)+acd295(63)+acd295(64)
      acd295(63)=acd295(63)*acd295(67)
      acd295(64)=acd295(17)*acd295(68)
      acd295(65)=acd295(11)*acd295(69)
      acd295(64)=acd295(64)+acd295(65)
      acd295(64)=acd295(26)*acd295(64)
      acd295(65)=acd295(50)*acd295(74)
      acd295(67)=acd295(46)*acd295(73)
      acd295(68)=-acd295(19)*acd295(79)
      acd295(57)=acd295(62)+acd295(57)+acd295(60)+acd295(67)+acd295(65)+acd295(&
      &63)+acd295(64)+acd295(68)
      acd295(57)=acd295(20)*acd295(57)
      acd295(60)=acd295(19)*acd295(23)
      acd295(62)=acd295(14)*acd295(18)
      acd295(63)=acd295(1)*acd295(12)
      acd295(60)=acd295(63)+acd295(60)+acd295(62)
      acd295(60)=acd295(13)*acd295(60)
      acd295(62)=-acd295(22)*acd295(19)
      acd295(63)=-acd295(17)*acd295(14)
      acd295(64)=-acd295(11)*acd295(1)
      acd295(62)=acd295(64)+acd295(62)+acd295(63)
      acd295(62)=acd295(6)*acd295(9)*acd295(62)
      acd295(60)=acd295(62)+acd295(60)
      acd295(61)=acd295(21)*acd295(9)*acd295(61)
      acd295(62)=acd295(9)*acd295(70)
      acd295(63)=acd295(32)*acd295(9)
      acd295(64)=acd295(39)*acd295(63)
      acd295(62)=acd295(62)+acd295(64)
      acd295(62)=acd295(16)*acd295(62)
      acd295(64)=acd295(9)*acd295(66)
      acd295(63)=acd295(43)*acd295(63)
      acd295(63)=acd295(64)+acd295(63)
      acd295(63)=acd295(8)*acd295(63)
      acd295(61)=acd295(63)+acd295(61)+acd295(62)
      acd295(61)=acd295(35)*acd295(61)
      acd295(62)=acd295(50)*acd295(18)
      acd295(63)=acd295(46)*acd295(12)
      acd295(62)=acd295(63)+acd295(62)
      acd295(62)=acd295(45)*acd295(62)
      acd295(63)=acd295(4)*acd295(9)
      acd295(63)=acd295(63)-acd295(10)
      acd295(64)=-acd295(19)*acd295(63)
      acd295(62)=2.0_ki*acd295(64)+acd295(62)
      acd295(62)=acd295(21)*acd295(62)
      acd295(64)=acd295(50)*acd295(23)
      acd295(65)=acd295(32)*acd295(12)
      acd295(64)=acd295(65)+acd295(64)
      acd295(64)=acd295(45)*acd295(64)
      acd295(65)=-acd295(14)*acd295(63)
      acd295(64)=2.0_ki*acd295(65)+acd295(64)
      acd295(64)=acd295(16)*acd295(64)
      acd295(65)=acd295(46)*acd295(23)
      acd295(66)=acd295(32)*acd295(18)
      acd295(65)=acd295(66)+acd295(65)
      acd295(65)=acd295(45)*acd295(65)
      acd295(63)=-acd295(1)*acd295(63)
      acd295(63)=2.0_ki*acd295(63)+acd295(65)
      acd295(63)=acd295(8)*acd295(63)
      brack=acd295(57)+acd295(58)+acd295(59)+2.0_ki*acd295(60)+acd295(61)+acd29&
      &5(62)+acd295(63)+acd295(64)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd295h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(37) :: acd295
      complex(ki) :: brack
      acd295(1)=d(iv1,iv2)
      acd295(2)=spvak2k1(iv3)
      acd295(3)=spvak4k3(iv4)
      acd295(4)=abb295(24)
      acd295(5)=spvak2e7(iv4)
      acd295(6)=abb295(28)
      acd295(7)=spvak2k1(iv4)
      acd295(8)=spvak4k3(iv3)
      acd295(9)=spvak2e7(iv3)
      acd295(10)=d(iv1,iv3)
      acd295(11)=spvak2k1(iv2)
      acd295(12)=spvak4k3(iv2)
      acd295(13)=spvak2e7(iv2)
      acd295(14)=d(iv1,iv4)
      acd295(15)=d(iv2,iv3)
      acd295(16)=spvak2k1(iv1)
      acd295(17)=spvak4k3(iv1)
      acd295(18)=spvak2e7(iv1)
      acd295(19)=d(iv2,iv4)
      acd295(20)=d(iv3,iv4)
      acd295(21)=e7(iv1)
      acd295(22)=spvak2l5(iv4)
      acd295(23)=abb295(17)
      acd295(24)=spvak2l5(iv3)
      acd295(25)=spvak2l5(iv2)
      acd295(26)=e7(iv2)
      acd295(27)=spvak2l5(iv1)
      acd295(28)=e7(iv3)
      acd295(29)=e7(iv4)
      acd295(30)=acd295(24)*acd295(29)
      acd295(31)=acd295(22)*acd295(28)
      acd295(30)=acd295(30)+acd295(31)
      acd295(31)=-acd295(12)*acd295(30)
      acd295(32)=acd295(25)*acd295(29)
      acd295(33)=acd295(22)*acd295(26)
      acd295(32)=acd295(32)+acd295(33)
      acd295(33)=-acd295(8)*acd295(32)
      acd295(34)=acd295(25)*acd295(28)
      acd295(35)=acd295(24)*acd295(26)
      acd295(34)=acd295(34)+acd295(35)
      acd295(35)=-acd295(3)*acd295(34)
      acd295(31)=acd295(35)+acd295(31)+acd295(33)
      acd295(31)=acd295(16)*acd295(31)
      acd295(30)=-acd295(17)*acd295(30)
      acd295(33)=acd295(27)*acd295(29)
      acd295(35)=acd295(21)*acd295(22)
      acd295(33)=acd295(33)+acd295(35)
      acd295(35)=-acd295(8)*acd295(33)
      acd295(36)=acd295(27)*acd295(28)
      acd295(37)=acd295(21)*acd295(24)
      acd295(36)=acd295(36)+acd295(37)
      acd295(37)=-acd295(3)*acd295(36)
      acd295(30)=acd295(37)+acd295(30)+acd295(35)
      acd295(30)=acd295(11)*acd295(30)
      acd295(34)=-acd295(17)*acd295(34)
      acd295(35)=-acd295(12)*acd295(36)
      acd295(36)=acd295(26)*acd295(27)
      acd295(37)=acd295(21)*acd295(25)
      acd295(36)=acd295(36)+acd295(37)
      acd295(37)=-acd295(8)*acd295(36)
      acd295(34)=acd295(37)+acd295(34)+acd295(35)
      acd295(34)=acd295(7)*acd295(34)
      acd295(32)=-acd295(17)*acd295(32)
      acd295(33)=-acd295(12)*acd295(33)
      acd295(35)=-acd295(3)*acd295(36)
      acd295(32)=acd295(35)+acd295(32)+acd295(33)
      acd295(32)=acd295(2)*acd295(32)
      acd295(30)=acd295(32)+acd295(34)+acd295(31)+acd295(30)
      acd295(30)=acd295(23)*acd295(30)
      acd295(31)=acd295(20)*acd295(13)
      acd295(32)=acd295(19)*acd295(9)
      acd295(33)=acd295(15)*acd295(5)
      acd295(31)=acd295(33)+acd295(31)+acd295(32)
      acd295(31)=acd295(16)*acd295(31)
      acd295(32)=acd295(20)*acd295(18)
      acd295(33)=acd295(14)*acd295(9)
      acd295(34)=acd295(10)*acd295(5)
      acd295(32)=acd295(34)+acd295(32)+acd295(33)
      acd295(32)=acd295(11)*acd295(32)
      acd295(33)=acd295(15)*acd295(18)
      acd295(34)=acd295(10)*acd295(13)
      acd295(35)=acd295(1)*acd295(9)
      acd295(33)=acd295(35)+acd295(33)+acd295(34)
      acd295(33)=acd295(7)*acd295(33)
      acd295(31)=acd295(33)+acd295(31)+acd295(32)
      acd295(31)=acd295(6)*acd295(31)
      acd295(32)=acd295(12)*acd295(20)
      acd295(33)=acd295(8)*acd295(19)
      acd295(34)=acd295(3)*acd295(15)
      acd295(32)=acd295(34)+acd295(32)+acd295(33)
      acd295(32)=acd295(16)*acd295(32)
      acd295(33)=acd295(17)*acd295(20)
      acd295(34)=acd295(8)*acd295(14)
      acd295(35)=acd295(3)*acd295(10)
      acd295(33)=acd295(35)+acd295(33)+acd295(34)
      acd295(33)=acd295(11)*acd295(33)
      acd295(34)=acd295(17)*acd295(15)
      acd295(35)=acd295(12)*acd295(10)
      acd295(36)=acd295(8)*acd295(1)
      acd295(34)=acd295(36)+acd295(34)+acd295(35)
      acd295(34)=acd295(7)*acd295(34)
      acd295(32)=acd295(34)+acd295(32)+acd295(33)
      acd295(32)=acd295(4)*acd295(32)
      acd295(33)=acd295(19)*acd295(18)
      acd295(34)=acd295(14)*acd295(13)
      acd295(35)=acd295(1)*acd295(5)
      acd295(33)=acd295(35)+acd295(33)+acd295(34)
      acd295(33)=acd295(6)*acd295(33)
      acd295(34)=acd295(17)*acd295(19)
      acd295(35)=acd295(12)*acd295(14)
      acd295(36)=acd295(3)*acd295(1)
      acd295(34)=acd295(36)+acd295(34)+acd295(35)
      acd295(34)=acd295(4)*acd295(34)
      acd295(33)=acd295(33)+acd295(34)
      acd295(33)=acd295(2)*acd295(33)
      acd295(31)=acd295(33)+acd295(31)+acd295(32)
      brack=acd295(30)+2.0_ki*acd295(31)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd295h3
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      integer, intent(in), optional :: i2
      integer, intent(in), optional :: i3
      integer, intent(in), optional :: i4
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
      if(present(i3)) then
          iv3=i3
          deg=3
      else
          iv3=1
      end if
      if(present(i4)) then
          iv4=i4
          deg=4
      else
          iv4=1
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
      if(deg.eq.4) then
         numerator = cond(epspow.eq.t1,brack_5,Q,mu2)
         return
      end if
   end function derivative
!---#] function derivative:
!---#[ subroutine reconstruct_d295:
   subroutine     reconstruct_d295(coeffs)
      use p9_csbar_epnebbbarg_groups, only: tensrec_info_group13
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group13), intent(out) :: coeffs
      ! rank 4 case :
      !---[# reconstruct coeffs%coeffs_295:
      coeffs%coeffs_295%c0 = derivative(czip)
      coeffs%coeffs_295%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_295%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_295%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_295%c1(1,4) = derivative(czip,1,1,1,1)/ 24.0_ki
      coeffs%coeffs_295%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_295%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_295%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_295%c1(2,4) = derivative(czip,2,2,2,2)/ 24.0_ki
      coeffs%coeffs_295%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_295%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_295%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_295%c1(3,4) = derivative(czip,3,3,3,3)/ 24.0_ki
      coeffs%coeffs_295%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_295%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_295%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_295%c1(4,4) = derivative(czip,4,4,4,4)/ 24.0_ki
      coeffs%coeffs_295%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_295%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_295%c2(1,3) = -derivative(czip,1,2,2,2)/ 6.0_ki
      coeffs%coeffs_295%c2(1,4) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_295%c2(1,5) = derivative(czip,1,1,2,2)/ 4.0_ki
      coeffs%coeffs_295%c2(1,6) = -derivative(czip,1,1,1,2)/ 6.0_ki
      coeffs%coeffs_295%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_295%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_295%c2(2,3) = -derivative(czip,1,3,3,3)/ 6.0_ki
      coeffs%coeffs_295%c2(2,4) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_295%c2(2,5) = derivative(czip,1,1,3,3)/ 4.0_ki
      coeffs%coeffs_295%c2(2,6) = -derivative(czip,1,1,1,3)/ 6.0_ki
      coeffs%coeffs_295%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_295%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_295%c2(3,3) = -derivative(czip,1,4,4,4)/ 6.0_ki
      coeffs%coeffs_295%c2(3,4) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_295%c2(3,5) = derivative(czip,1,1,4,4)/ 4.0_ki
      coeffs%coeffs_295%c2(3,6) = -derivative(czip,1,1,1,4)/ 6.0_ki
      coeffs%coeffs_295%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_295%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_295%c2(4,3) = derivative(czip,2,3,3,3)/ 6.0_ki
      coeffs%coeffs_295%c2(4,4) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_295%c2(4,5) = derivative(czip,2,2,3,3)/ 4.0_ki
      coeffs%coeffs_295%c2(4,6) = derivative(czip,2,2,2,3)/ 6.0_ki
      coeffs%coeffs_295%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_295%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_295%c2(5,3) = derivative(czip,2,4,4,4)/ 6.0_ki
      coeffs%coeffs_295%c2(5,4) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_295%c2(5,5) = derivative(czip,2,2,4,4)/ 4.0_ki
      coeffs%coeffs_295%c2(5,6) = derivative(czip,2,2,2,4)/ 6.0_ki
      coeffs%coeffs_295%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_295%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_295%c2(6,3) = derivative(czip,3,4,4,4)/ 6.0_ki
      coeffs%coeffs_295%c2(6,4) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_295%c2(6,5) = derivative(czip,3,3,4,4)/ 4.0_ki
      coeffs%coeffs_295%c2(6,6) = derivative(czip,3,3,3,4)/ 6.0_ki
      coeffs%coeffs_295%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_295%c3(1,2) = -derivative(czip,1,2,3,3)/ 2.0_ki
      coeffs%coeffs_295%c3(1,3) = -derivative(czip,1,2,2,3)/ 2.0_ki
      coeffs%coeffs_295%c3(1,4) = derivative(czip,1,1,2,3)/ 2.0_ki
      coeffs%coeffs_295%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_295%c3(2,2) = -derivative(czip,1,2,4,4)/ 2.0_ki
      coeffs%coeffs_295%c3(2,3) = -derivative(czip,1,2,2,4)/ 2.0_ki
      coeffs%coeffs_295%c3(2,4) = derivative(czip,1,1,2,4)/ 2.0_ki
      coeffs%coeffs_295%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_295%c3(3,2) = -derivative(czip,1,3,4,4)/ 2.0_ki
      coeffs%coeffs_295%c3(3,3) = -derivative(czip,1,3,3,4)/ 2.0_ki
      coeffs%coeffs_295%c3(3,4) = derivative(czip,1,1,3,4)/ 2.0_ki
      coeffs%coeffs_295%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_295%c3(4,2) = derivative(czip,2,3,4,4)/ 2.0_ki
      coeffs%coeffs_295%c3(4,3) = derivative(czip,2,3,3,4)/ 2.0_ki
      coeffs%coeffs_295%c3(4,4) = derivative(czip,2,2,3,4)/ 2.0_ki
      coeffs%coeffs_295%c4(1,1) = -derivative(czip,1,2,3,4)
      !---#] reconstruct coeffs%coeffs_295:
   end subroutine reconstruct_d295
!---#] subroutine reconstruct_d295:
end module     p9_csbar_epnebbbarg_d295h3l1d
