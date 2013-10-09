module     p0_dbaru_epnebbbarg_d292h0l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity0d292h0l1d.f90
   ! generator: buildfortran_d.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   integer, private :: iv4
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d292
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd292h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd292
      complex(ki) :: brack
      acd292(1)=abb292(32)
      brack=acd292(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd292h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(33) :: acd292
      complex(ki) :: brack
      acd292(1)=k2(iv1)
      acd292(2)=abb292(72)
      acd292(3)=l5(iv1)
      acd292(4)=abb292(54)
      acd292(5)=k7(iv1)
      acd292(6)=abb292(52)
      acd292(7)=e7(iv1)
      acd292(8)=abb292(40)
      acd292(9)=spvak1k2(iv1)
      acd292(10)=abb292(34)
      acd292(11)=spvak4k3(iv1)
      acd292(12)=abb292(20)
      acd292(13)=spval5k1(iv1)
      acd292(14)=abb292(69)
      acd292(15)=spval5k2(iv1)
      acd292(16)=abb292(16)
      acd292(17)=spval5l6(iv1)
      acd292(18)=abb292(81)
      acd292(19)=spvak7k2(iv1)
      acd292(20)=abb292(64)
      acd292(21)=spvae7k2(iv1)
      acd292(22)=abb292(23)
      acd292(23)=-acd292(2)*acd292(1)
      acd292(24)=-acd292(4)*acd292(3)
      acd292(25)=-acd292(6)*acd292(5)
      acd292(26)=-acd292(8)*acd292(7)
      acd292(27)=-acd292(10)*acd292(9)
      acd292(28)=-acd292(12)*acd292(11)
      acd292(29)=-acd292(14)*acd292(13)
      acd292(30)=-acd292(16)*acd292(15)
      acd292(31)=-acd292(18)*acd292(17)
      acd292(32)=-acd292(20)*acd292(19)
      acd292(33)=-acd292(22)*acd292(21)
      brack=acd292(23)+acd292(24)+acd292(25)+acd292(26)+acd292(27)+acd292(28)+a&
      &cd292(29)+acd292(30)+acd292(31)+acd292(32)+acd292(33)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd292h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(77) :: acd292
      complex(ki) :: brack
      acd292(1)=d(iv1,iv2)
      acd292(2)=abb292(19)
      acd292(3)=k2(iv1)
      acd292(4)=l5(iv2)
      acd292(5)=abb292(62)
      acd292(6)=e7(iv2)
      acd292(7)=abb292(66)
      acd292(8)=spvak1k2(iv2)
      acd292(9)=abb292(39)
      acd292(10)=spvak4k2(iv2)
      acd292(11)=abb292(41)
      acd292(12)=spvak4k3(iv2)
      acd292(13)=abb292(89)
      acd292(14)=spval5k2(iv2)
      acd292(15)=abb292(55)
      acd292(16)=spval5k3(iv2)
      acd292(17)=abb292(86)
      acd292(18)=spvae7k2(iv2)
      acd292(19)=abb292(48)
      acd292(20)=k2(iv2)
      acd292(21)=l5(iv1)
      acd292(22)=e7(iv1)
      acd292(23)=spvak1k2(iv1)
      acd292(24)=spvak4k2(iv1)
      acd292(25)=spvak4k3(iv1)
      acd292(26)=spval5k2(iv1)
      acd292(27)=spval5k3(iv1)
      acd292(28)=spvae7k2(iv1)
      acd292(29)=k7(iv2)
      acd292(30)=abb292(58)
      acd292(31)=abb292(35)
      acd292(32)=abb292(80)
      acd292(33)=k7(iv1)
      acd292(34)=abb292(30)
      acd292(35)=abb292(33)
      acd292(36)=abb292(25)
      acd292(37)=abb292(24)
      acd292(38)=abb292(11)
      acd292(39)=abb292(84)
      acd292(40)=spval5k1(iv2)
      acd292(41)=abb292(44)
      acd292(42)=spval5l6(iv2)
      acd292(43)=abb292(83)
      acd292(44)=spval6k2(iv2)
      acd292(45)=abb292(65)
      acd292(46)=spvak7k2(iv2)
      acd292(47)=abb292(71)
      acd292(48)=spval5k1(iv1)
      acd292(49)=spval5l6(iv1)
      acd292(50)=spval6k2(iv1)
      acd292(51)=spvak7k2(iv1)
      acd292(52)=abb292(53)
      acd292(53)=abb292(9)
      acd292(54)=abb292(22)
      acd292(55)=abb292(36)
      acd292(56)=abb292(60)
      acd292(57)=abb292(27)
      acd292(58)=abb292(79)
      acd292(59)=spval5k7(iv2)
      acd292(60)=abb292(26)
      acd292(61)=spval5k7(iv1)
      acd292(62)=abb292(15)
      acd292(63)=abb292(10)
      acd292(64)=acd292(45)*acd292(44)
      acd292(65)=acd292(42)*acd292(43)
      acd292(66)=acd292(40)*acd292(41)
      acd292(67)=acd292(46)*acd292(47)
      acd292(68)=acd292(16)*acd292(39)
      acd292(69)=acd292(10)*acd292(37)
      acd292(70)=acd292(4)*acd292(30)
      acd292(71)=acd292(14)*acd292(38)
      acd292(72)=acd292(20)*acd292(7)
      acd292(73)=acd292(8)*acd292(36)
      acd292(64)=acd292(73)+acd292(72)+acd292(71)+acd292(70)+acd292(69)+acd292(&
      &68)+acd292(67)+acd292(66)+acd292(64)+acd292(65)
      acd292(64)=acd292(22)*acd292(64)
      acd292(65)=acd292(45)*acd292(50)
      acd292(66)=acd292(43)*acd292(49)
      acd292(67)=acd292(41)*acd292(48)
      acd292(68)=acd292(51)*acd292(47)
      acd292(69)=acd292(27)*acd292(39)
      acd292(70)=acd292(24)*acd292(37)
      acd292(71)=acd292(21)*acd292(30)
      acd292(72)=acd292(26)*acd292(38)
      acd292(73)=acd292(23)*acd292(36)
      acd292(74)=acd292(3)*acd292(7)
      acd292(65)=acd292(74)+acd292(73)+acd292(72)+acd292(71)+acd292(70)+acd292(&
      &69)+acd292(68)+acd292(67)+acd292(65)+acd292(66)
      acd292(65)=acd292(6)*acd292(65)
      acd292(66)=acd292(42)*acd292(55)
      acd292(67)=acd292(40)*acd292(54)
      acd292(68)=acd292(4)*acd292(31)
      acd292(69)=acd292(29)*acd292(34)
      acd292(70)=acd292(14)*acd292(53)
      acd292(71)=acd292(12)*acd292(52)
      acd292(66)=acd292(71)+acd292(70)+acd292(69)+acd292(68)+acd292(66)+acd292(&
      &67)
      acd292(66)=acd292(23)*acd292(66)
      acd292(67)=acd292(49)*acd292(55)
      acd292(68)=acd292(48)*acd292(54)
      acd292(69)=acd292(21)*acd292(31)
      acd292(70)=acd292(33)*acd292(34)
      acd292(71)=acd292(26)*acd292(53)
      acd292(72)=acd292(25)*acd292(52)
      acd292(67)=acd292(72)+acd292(71)+acd292(70)+acd292(69)+acd292(67)+acd292(&
      &68)
      acd292(67)=acd292(8)*acd292(67)
      acd292(68)=acd292(60)*acd292(61)
      acd292(69)=acd292(51)*acd292(58)
      acd292(70)=acd292(28)*acd292(57)
      acd292(71)=acd292(21)*acd292(32)
      acd292(72)=acd292(26)*acd292(56)
      acd292(68)=acd292(72)+acd292(71)+acd292(70)+acd292(68)+acd292(69)
      acd292(68)=acd292(12)*acd292(68)
      acd292(69)=acd292(18)*acd292(19)
      acd292(70)=acd292(17)*acd292(16)
      acd292(71)=acd292(11)*acd292(10)
      acd292(72)=acd292(4)*acd292(5)
      acd292(69)=acd292(69)-acd292(70)+acd292(71)-acd292(72)
      acd292(70)=-acd292(33)*acd292(69)
      acd292(71)=acd292(19)*acd292(28)
      acd292(72)=acd292(17)*acd292(27)
      acd292(73)=acd292(11)*acd292(24)
      acd292(74)=acd292(21)*acd292(5)
      acd292(71)=acd292(71)-acd292(72)+acd292(73)-acd292(74)
      acd292(72)=-acd292(29)*acd292(71)
      acd292(73)=acd292(60)*acd292(59)
      acd292(74)=acd292(46)*acd292(58)
      acd292(75)=acd292(18)*acd292(57)
      acd292(76)=acd292(4)*acd292(32)
      acd292(73)=acd292(76)+acd292(75)+acd292(73)+acd292(74)
      acd292(73)=acd292(25)*acd292(73)
      acd292(74)=acd292(51)*acd292(63)
      acd292(75)=acd292(28)*acd292(62)
      acd292(76)=acd292(33)*acd292(35)
      acd292(77)=acd292(25)*acd292(56)
      acd292(74)=acd292(77)+acd292(76)+acd292(74)+acd292(75)
      acd292(74)=acd292(14)*acd292(74)
      acd292(75)=acd292(26)*acd292(15)
      acd292(76)=acd292(25)*acd292(13)
      acd292(77)=acd292(23)*acd292(9)
      acd292(71)=acd292(77)+acd292(76)+acd292(75)+acd292(71)
      acd292(71)=acd292(20)*acd292(71)
      acd292(75)=acd292(14)*acd292(15)
      acd292(76)=acd292(12)*acd292(13)
      acd292(77)=acd292(8)*acd292(9)
      acd292(69)=acd292(77)+acd292(76)+acd292(75)+acd292(69)
      acd292(69)=acd292(3)*acd292(69)
      acd292(75)=acd292(46)*acd292(63)
      acd292(76)=acd292(18)*acd292(62)
      acd292(77)=acd292(29)*acd292(35)
      acd292(75)=acd292(77)+acd292(75)+acd292(76)
      acd292(75)=acd292(26)*acd292(75)
      acd292(76)=acd292(1)*acd292(2)
      brack=acd292(64)+acd292(65)+acd292(66)+acd292(67)+acd292(68)+acd292(69)+a&
      &cd292(70)+acd292(71)+acd292(72)+acd292(73)+acd292(74)+acd292(75)+2.0_ki*&
      &acd292(76)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd292h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(91) :: acd292
      complex(ki) :: brack
      acd292(1)=d(iv1,iv2)
      acd292(2)=l5(iv3)
      acd292(3)=abb292(77)
      acd292(4)=spvak1k2(iv3)
      acd292(5)=abb292(29)
      acd292(6)=spvak4k2(iv3)
      acd292(7)=abb292(45)
      acd292(8)=spvak4k3(iv3)
      acd292(9)=abb292(78)
      acd292(10)=spval5k2(iv3)
      acd292(11)=abb292(21)
      acd292(12)=spval5k3(iv3)
      acd292(13)=abb292(87)
      acd292(14)=spvae7k2(iv3)
      acd292(15)=abb292(50)
      acd292(16)=d(iv1,iv3)
      acd292(17)=l5(iv2)
      acd292(18)=spvak1k2(iv2)
      acd292(19)=spvak4k2(iv2)
      acd292(20)=spvak4k3(iv2)
      acd292(21)=spval5k2(iv2)
      acd292(22)=spval5k3(iv2)
      acd292(23)=spvae7k2(iv2)
      acd292(24)=d(iv2,iv3)
      acd292(25)=l5(iv1)
      acd292(26)=spvak1k2(iv1)
      acd292(27)=spvak4k2(iv1)
      acd292(28)=spvak4k3(iv1)
      acd292(29)=spval5k2(iv1)
      acd292(30)=spval5k3(iv1)
      acd292(31)=spvae7k2(iv1)
      acd292(32)=k2(iv1)
      acd292(33)=e7(iv2)
      acd292(34)=abb292(49)
      acd292(35)=e7(iv3)
      acd292(36)=abb292(61)
      acd292(37)=abb292(13)
      acd292(38)=abb292(63)
      acd292(39)=abb292(74)
      acd292(40)=abb292(28)
      acd292(41)=k2(iv2)
      acd292(42)=e7(iv1)
      acd292(43)=k2(iv3)
      acd292(44)=abb292(38)
      acd292(45)=k7(iv1)
      acd292(46)=k7(iv2)
      acd292(47)=k7(iv3)
      acd292(48)=abb292(14)
      acd292(49)=abb292(46)
      acd292(50)=spval5k1(iv3)
      acd292(51)=abb292(31)
      acd292(52)=spval5l6(iv3)
      acd292(53)=abb292(59)
      acd292(54)=spval5k1(iv2)
      acd292(55)=spval5l6(iv2)
      acd292(56)=abb292(42)
      acd292(57)=abb292(18)
      acd292(58)=abb292(47)
      acd292(59)=spval6k2(iv3)
      acd292(60)=abb292(57)
      acd292(61)=spvak7k2(iv3)
      acd292(62)=abb292(56)
      acd292(63)=spval6k2(iv2)
      acd292(64)=spvak7k2(iv2)
      acd292(65)=spval5k1(iv1)
      acd292(66)=spval5l6(iv1)
      acd292(67)=spval6k2(iv1)
      acd292(68)=spvak7k2(iv1)
      acd292(69)=spval5k7(iv3)
      acd292(70)=abb292(37)
      acd292(71)=spval5k7(iv2)
      acd292(72)=spval5k7(iv1)
      acd292(73)=abb292(88)
      acd292(74)=abb292(90)
      acd292(75)=acd292(62)*acd292(64)
      acd292(76)=acd292(60)*acd292(63)
      acd292(77)=acd292(19)*acd292(56)
      acd292(78)=acd292(41)*acd292(34)
      acd292(79)=acd292(20)*acd292(57)
      acd292(80)=acd292(18)*acd292(48)
      acd292(75)=acd292(80)+acd292(75)+acd292(78)+acd292(79)+acd292(76)+acd292(&
      &77)
      acd292(76)=-acd292(42)*acd292(75)
      acd292(77)=acd292(62)*acd292(68)
      acd292(78)=acd292(60)*acd292(67)
      acd292(79)=acd292(27)*acd292(56)
      acd292(80)=acd292(32)*acd292(34)
      acd292(81)=acd292(28)*acd292(57)
      acd292(82)=acd292(26)*acd292(48)
      acd292(77)=acd292(82)+acd292(77)+acd292(80)+acd292(81)+acd292(78)+acd292(&
      &79)
      acd292(78)=-acd292(33)*acd292(77)
      acd292(79)=acd292(74)*acd292(64)
      acd292(80)=acd292(23)*acd292(73)
      acd292(81)=acd292(41)*acd292(39)
      acd292(79)=acd292(81)+acd292(79)+acd292(80)
      acd292(80)=-acd292(28)*acd292(79)
      acd292(81)=acd292(74)*acd292(68)
      acd292(82)=acd292(31)*acd292(73)
      acd292(83)=acd292(32)*acd292(39)
      acd292(81)=acd292(83)+acd292(81)+acd292(82)
      acd292(82)=-acd292(20)*acd292(81)
      acd292(83)=-acd292(29)*acd292(33)
      acd292(84)=-acd292(21)*acd292(42)
      acd292(83)=acd292(84)+acd292(83)
      acd292(84)=2.0_ki*acd292(58)
      acd292(83)=acd292(84)*acd292(83)
      acd292(85)=acd292(41)-acd292(46)
      acd292(86)=acd292(31)*acd292(85)
      acd292(87)=-acd292(23)*acd292(45)
      acd292(86)=acd292(87)+acd292(86)
      acd292(86)=acd292(40)*acd292(86)
      acd292(87)=-acd292(27)*acd292(85)
      acd292(88)=acd292(19)*acd292(45)
      acd292(87)=acd292(88)+acd292(87)
      acd292(87)=acd292(38)*acd292(87)
      acd292(88)=acd292(40)*acd292(23)
      acd292(89)=-acd292(38)*acd292(19)
      acd292(88)=acd292(88)+acd292(89)
      acd292(88)=acd292(32)*acd292(88)
      acd292(89)=2.0_ki*acd292(11)
      acd292(90)=-acd292(1)*acd292(89)
      acd292(76)=acd292(78)+acd292(76)+acd292(82)+acd292(80)+acd292(88)+acd292(&
      &87)+acd292(90)+acd292(86)+acd292(83)
      acd292(76)=acd292(10)*acd292(76)
      acd292(78)=-acd292(29)*acd292(84)
      acd292(77)=acd292(78)-acd292(77)
      acd292(77)=acd292(35)*acd292(77)
      acd292(78)=acd292(62)*acd292(61)
      acd292(80)=acd292(60)*acd292(59)
      acd292(82)=acd292(6)*acd292(56)
      acd292(83)=acd292(43)*acd292(34)
      acd292(84)=acd292(8)*acd292(57)
      acd292(86)=acd292(4)*acd292(48)
      acd292(78)=acd292(86)+acd292(78)+acd292(83)+acd292(84)+acd292(80)+acd292(&
      &82)
      acd292(80)=-acd292(42)*acd292(78)
      acd292(82)=acd292(74)*acd292(61)
      acd292(83)=acd292(14)*acd292(73)
      acd292(84)=acd292(43)*acd292(39)
      acd292(82)=acd292(84)+acd292(82)+acd292(83)
      acd292(83)=-acd292(28)*acd292(82)
      acd292(81)=-acd292(8)*acd292(81)
      acd292(84)=acd292(43)-acd292(47)
      acd292(86)=acd292(31)*acd292(84)
      acd292(87)=-acd292(14)*acd292(45)
      acd292(86)=acd292(87)+acd292(86)
      acd292(86)=acd292(40)*acd292(86)
      acd292(87)=-acd292(27)*acd292(84)
      acd292(88)=acd292(6)*acd292(45)
      acd292(87)=acd292(88)+acd292(87)
      acd292(87)=acd292(38)*acd292(87)
      acd292(88)=acd292(40)*acd292(14)
      acd292(90)=-acd292(38)*acd292(6)
      acd292(88)=acd292(88)+acd292(90)
      acd292(88)=acd292(32)*acd292(88)
      acd292(90)=-acd292(16)*acd292(89)
      acd292(77)=acd292(80)+acd292(81)+acd292(83)+acd292(88)+acd292(87)+acd292(&
      &90)+acd292(86)+acd292(77)
      acd292(77)=acd292(21)*acd292(77)
      acd292(75)=-acd292(35)*acd292(75)
      acd292(78)=-acd292(33)*acd292(78)
      acd292(80)=-acd292(20)*acd292(82)
      acd292(79)=-acd292(8)*acd292(79)
      acd292(81)=acd292(23)*acd292(84)
      acd292(82)=acd292(14)*acd292(85)
      acd292(81)=acd292(82)+acd292(81)
      acd292(81)=acd292(40)*acd292(81)
      acd292(82)=-acd292(19)*acd292(84)
      acd292(83)=-acd292(6)*acd292(85)
      acd292(82)=acd292(83)+acd292(82)
      acd292(82)=acd292(38)*acd292(82)
      acd292(83)=-acd292(24)*acd292(89)
      acd292(75)=acd292(78)+acd292(75)+acd292(79)+acd292(80)+acd292(82)+acd292(&
      &83)+acd292(81)
      acd292(75)=acd292(29)*acd292(75)
      acd292(78)=-acd292(3)*acd292(25)
      acd292(79)=-acd292(31)*acd292(15)
      acd292(80)=-acd292(30)*acd292(13)
      acd292(81)=-acd292(27)*acd292(7)
      acd292(78)=acd292(81)+acd292(80)+acd292(78)+acd292(79)
      acd292(78)=acd292(24)*acd292(78)
      acd292(79)=-acd292(3)*acd292(17)
      acd292(80)=-acd292(23)*acd292(15)
      acd292(81)=-acd292(22)*acd292(13)
      acd292(82)=-acd292(19)*acd292(7)
      acd292(79)=acd292(82)+acd292(81)+acd292(79)+acd292(80)
      acd292(79)=acd292(16)*acd292(79)
      acd292(80)=-acd292(2)*acd292(3)
      acd292(81)=-acd292(14)*acd292(15)
      acd292(82)=-acd292(12)*acd292(13)
      acd292(83)=-acd292(6)*acd292(7)
      acd292(80)=acd292(83)+acd292(82)+acd292(80)+acd292(81)
      acd292(80)=acd292(1)*acd292(80)
      acd292(81)=-acd292(28)*acd292(24)
      acd292(82)=-acd292(20)*acd292(16)
      acd292(83)=-acd292(8)*acd292(1)
      acd292(81)=acd292(83)+acd292(82)+acd292(81)
      acd292(81)=acd292(9)*acd292(81)
      acd292(78)=acd292(80)+acd292(78)+acd292(79)+acd292(81)
      acd292(79)=acd292(53)*acd292(52)
      acd292(80)=acd292(51)*acd292(50)
      acd292(81)=acd292(44)*acd292(2)
      acd292(82)=acd292(12)*acd292(49)
      acd292(79)=acd292(79)+acd292(80)+acd292(81)+acd292(82)
      acd292(80)=-acd292(18)*acd292(79)
      acd292(81)=acd292(53)*acd292(55)
      acd292(82)=acd292(51)*acd292(54)
      acd292(83)=acd292(44)*acd292(17)
      acd292(86)=acd292(22)*acd292(49)
      acd292(81)=acd292(81)+acd292(82)+acd292(83)+acd292(86)
      acd292(82)=-acd292(4)*acd292(81)
      acd292(80)=acd292(80)+acd292(82)
      acd292(80)=acd292(42)*acd292(80)
      acd292(81)=-acd292(26)*acd292(81)
      acd292(82)=acd292(53)*acd292(66)
      acd292(83)=acd292(51)*acd292(65)
      acd292(86)=acd292(44)*acd292(25)
      acd292(87)=acd292(30)*acd292(49)
      acd292(82)=acd292(82)+acd292(83)+acd292(86)+acd292(87)
      acd292(83)=-acd292(18)*acd292(82)
      acd292(81)=acd292(81)+acd292(83)
      acd292(81)=acd292(35)*acd292(81)
      acd292(79)=-acd292(26)*acd292(79)
      acd292(82)=-acd292(4)*acd292(82)
      acd292(79)=acd292(79)+acd292(82)
      acd292(79)=acd292(33)*acd292(79)
      acd292(82)=acd292(22)*acd292(84)
      acd292(83)=acd292(12)*acd292(85)
      acd292(82)=acd292(83)+acd292(82)
      acd292(82)=acd292(37)*acd292(82)
      acd292(83)=acd292(70)*acd292(69)
      acd292(86)=acd292(43)*acd292(36)
      acd292(83)=acd292(83)+acd292(86)
      acd292(86)=-acd292(20)*acd292(83)
      acd292(87)=acd292(70)*acd292(71)
      acd292(88)=acd292(41)*acd292(36)
      acd292(87)=acd292(87)+acd292(88)
      acd292(88)=-acd292(8)*acd292(87)
      acd292(89)=2.0_ki*acd292(5)
      acd292(90)=-acd292(24)*acd292(89)
      acd292(82)=acd292(88)+acd292(86)+acd292(90)+acd292(82)
      acd292(82)=acd292(26)*acd292(82)
      acd292(86)=acd292(32)-acd292(45)
      acd292(88)=acd292(12)*acd292(86)
      acd292(84)=acd292(30)*acd292(84)
      acd292(84)=acd292(84)+acd292(88)
      acd292(84)=acd292(37)*acd292(84)
      acd292(83)=-acd292(28)*acd292(83)
      acd292(88)=acd292(70)*acd292(72)
      acd292(90)=acd292(32)*acd292(36)
      acd292(88)=acd292(88)+acd292(90)
      acd292(90)=-acd292(8)*acd292(88)
      acd292(91)=-acd292(16)*acd292(89)
      acd292(83)=acd292(90)+acd292(83)+acd292(91)+acd292(84)
      acd292(83)=acd292(18)*acd292(83)
      acd292(84)=acd292(22)*acd292(86)
      acd292(85)=acd292(30)*acd292(85)
      acd292(84)=acd292(85)+acd292(84)
      acd292(84)=acd292(37)*acd292(84)
      acd292(85)=-acd292(28)*acd292(87)
      acd292(86)=-acd292(20)*acd292(88)
      acd292(87)=-acd292(1)*acd292(89)
      acd292(84)=acd292(86)+acd292(85)+acd292(87)+acd292(84)
      acd292(84)=acd292(4)*acd292(84)
      brack=acd292(75)+acd292(76)+acd292(77)+2.0_ki*acd292(78)+acd292(79)+acd29&
      &2(80)+acd292(81)+acd292(82)+acd292(83)+acd292(84)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd292h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(57) :: acd292
      complex(ki) :: brack
      acd292(1)=d(iv1,iv2)
      acd292(2)=spvak1k2(iv3)
      acd292(3)=spvak4k3(iv4)
      acd292(4)=abb292(43)
      acd292(5)=spval5k3(iv4)
      acd292(6)=abb292(51)
      acd292(7)=spvak1k2(iv4)
      acd292(8)=spvak4k3(iv3)
      acd292(9)=spval5k3(iv3)
      acd292(10)=spvak4k2(iv3)
      acd292(11)=spval5k2(iv4)
      acd292(12)=abb292(12)
      acd292(13)=spvak4k2(iv4)
      acd292(14)=spval5k2(iv3)
      acd292(15)=spvae7k2(iv4)
      acd292(16)=abb292(17)
      acd292(17)=spvae7k2(iv3)
      acd292(18)=d(iv1,iv3)
      acd292(19)=spvak1k2(iv2)
      acd292(20)=spvak4k3(iv2)
      acd292(21)=spval5k3(iv2)
      acd292(22)=spvak4k2(iv2)
      acd292(23)=spval5k2(iv2)
      acd292(24)=spvae7k2(iv2)
      acd292(25)=d(iv1,iv4)
      acd292(26)=d(iv2,iv3)
      acd292(27)=spvak1k2(iv1)
      acd292(28)=spvak4k3(iv1)
      acd292(29)=spval5k3(iv1)
      acd292(30)=spvak4k2(iv1)
      acd292(31)=spval5k2(iv1)
      acd292(32)=spvae7k2(iv1)
      acd292(33)=d(iv2,iv4)
      acd292(34)=d(iv3,iv4)
      acd292(35)=e7(iv1)
      acd292(36)=abb292(8)
      acd292(37)=e7(iv2)
      acd292(38)=e7(iv3)
      acd292(39)=e7(iv4)
      acd292(40)=acd292(18)*acd292(11)
      acd292(41)=acd292(25)*acd292(14)
      acd292(42)=acd292(34)*acd292(31)
      acd292(40)=acd292(42)+acd292(40)+acd292(41)
      acd292(41)=acd292(22)*acd292(12)
      acd292(42)=acd292(24)*acd292(16)
      acd292(41)=acd292(41)+acd292(42)
      acd292(40)=acd292(40)*acd292(41)
      acd292(41)=acd292(1)*acd292(14)
      acd292(42)=acd292(18)*acd292(23)
      acd292(43)=acd292(26)*acd292(31)
      acd292(41)=acd292(43)+acd292(41)+acd292(42)
      acd292(42)=acd292(13)*acd292(12)
      acd292(43)=acd292(15)*acd292(16)
      acd292(42)=acd292(42)+acd292(43)
      acd292(41)=acd292(41)*acd292(42)
      acd292(42)=acd292(1)*acd292(2)
      acd292(43)=acd292(18)*acd292(19)
      acd292(44)=acd292(26)*acd292(27)
      acd292(42)=acd292(44)+acd292(42)+acd292(43)
      acd292(42)=acd292(5)*acd292(6)*acd292(42)
      acd292(43)=acd292(1)*acd292(7)
      acd292(44)=acd292(25)*acd292(19)
      acd292(45)=acd292(33)*acd292(27)
      acd292(43)=acd292(45)+acd292(43)+acd292(44)
      acd292(43)=acd292(9)*acd292(6)*acd292(43)
      acd292(44)=acd292(1)*acd292(11)
      acd292(45)=acd292(25)*acd292(23)
      acd292(46)=acd292(33)*acd292(31)
      acd292(44)=acd292(46)+acd292(44)+acd292(45)
      acd292(45)=acd292(10)*acd292(12)*acd292(44)
      acd292(44)=acd292(17)*acd292(16)*acd292(44)
      acd292(46)=acd292(18)*acd292(7)
      acd292(47)=acd292(25)*acd292(2)
      acd292(48)=acd292(34)*acd292(27)
      acd292(46)=acd292(48)+acd292(46)+acd292(47)
      acd292(46)=acd292(21)*acd292(6)*acd292(46)
      acd292(47)=acd292(26)*acd292(7)
      acd292(48)=acd292(33)*acd292(2)
      acd292(49)=acd292(34)*acd292(19)
      acd292(47)=acd292(49)+acd292(47)+acd292(48)
      acd292(47)=acd292(29)*acd292(6)*acd292(47)
      acd292(48)=acd292(26)*acd292(11)
      acd292(49)=acd292(33)*acd292(14)
      acd292(50)=acd292(34)*acd292(23)
      acd292(48)=acd292(50)+acd292(48)+acd292(49)
      acd292(49)=acd292(30)*acd292(12)*acd292(48)
      acd292(48)=acd292(32)*acd292(16)*acd292(48)
      acd292(50)=acd292(3)*acd292(4)
      acd292(51)=acd292(2)*acd292(50)
      acd292(52)=acd292(8)*acd292(4)
      acd292(53)=acd292(7)*acd292(52)
      acd292(51)=acd292(51)+acd292(53)
      acd292(51)=acd292(1)*acd292(51)
      acd292(53)=acd292(19)*acd292(50)
      acd292(54)=acd292(20)*acd292(4)
      acd292(55)=acd292(7)*acd292(54)
      acd292(53)=acd292(53)+acd292(55)
      acd292(53)=acd292(18)*acd292(53)
      acd292(55)=acd292(19)*acd292(52)
      acd292(56)=acd292(2)*acd292(54)
      acd292(55)=acd292(55)+acd292(56)
      acd292(55)=acd292(25)*acd292(55)
      acd292(50)=acd292(27)*acd292(50)
      acd292(56)=acd292(28)*acd292(4)
      acd292(57)=acd292(7)*acd292(56)
      acd292(50)=acd292(50)+acd292(57)
      acd292(50)=acd292(26)*acd292(50)
      acd292(52)=acd292(27)*acd292(52)
      acd292(57)=acd292(2)*acd292(56)
      acd292(52)=acd292(52)+acd292(57)
      acd292(52)=acd292(33)*acd292(52)
      acd292(54)=acd292(27)*acd292(54)
      acd292(56)=acd292(19)*acd292(56)
      acd292(54)=acd292(54)+acd292(56)
      acd292(54)=acd292(34)*acd292(54)
      acd292(40)=acd292(41)+acd292(44)+acd292(46)+acd292(42)+acd292(54)+acd292(&
      &52)+acd292(50)+acd292(55)+acd292(51)+acd292(53)+acd292(43)+acd292(45)+ac&
      &d292(48)+acd292(40)+acd292(47)+acd292(49)
      acd292(41)=acd292(23)*acd292(36)
      acd292(42)=acd292(41)*acd292(2)
      acd292(43)=acd292(19)*acd292(36)
      acd292(44)=acd292(43)*acd292(14)
      acd292(42)=acd292(42)+acd292(44)
      acd292(44)=-acd292(3)*acd292(42)
      acd292(41)=acd292(41)*acd292(7)
      acd292(43)=acd292(43)*acd292(11)
      acd292(41)=acd292(41)+acd292(43)
      acd292(43)=-acd292(8)*acd292(41)
      acd292(45)=acd292(7)*acd292(14)
      acd292(46)=acd292(2)*acd292(11)
      acd292(45)=acd292(45)+acd292(46)
      acd292(45)=acd292(36)*acd292(45)
      acd292(46)=-acd292(20)*acd292(45)
      acd292(43)=acd292(46)+acd292(44)+acd292(43)
      acd292(43)=acd292(35)*acd292(43)
      acd292(44)=acd292(31)*acd292(36)
      acd292(46)=acd292(44)*acd292(2)
      acd292(47)=acd292(27)*acd292(36)
      acd292(48)=acd292(47)*acd292(14)
      acd292(46)=acd292(46)+acd292(48)
      acd292(48)=-acd292(3)*acd292(46)
      acd292(49)=acd292(44)*acd292(7)
      acd292(50)=acd292(47)*acd292(11)
      acd292(49)=acd292(49)+acd292(50)
      acd292(50)=-acd292(8)*acd292(49)
      acd292(45)=-acd292(28)*acd292(45)
      acd292(45)=acd292(45)+acd292(48)+acd292(50)
      acd292(45)=acd292(37)*acd292(45)
      acd292(44)=acd292(44)*acd292(19)
      acd292(47)=acd292(47)*acd292(23)
      acd292(44)=acd292(44)+acd292(47)
      acd292(47)=-acd292(3)*acd292(44)
      acd292(48)=-acd292(20)*acd292(49)
      acd292(41)=-acd292(28)*acd292(41)
      acd292(41)=acd292(41)+acd292(47)+acd292(48)
      acd292(41)=acd292(38)*acd292(41)
      acd292(44)=-acd292(8)*acd292(44)
      acd292(46)=-acd292(20)*acd292(46)
      acd292(42)=-acd292(28)*acd292(42)
      acd292(42)=acd292(42)+acd292(44)+acd292(46)
      acd292(42)=acd292(39)*acd292(42)
      brack=2.0_ki*acd292(40)+acd292(41)+acd292(42)+acd292(43)+acd292(45)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd292h0
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
!---#[ subroutine reconstruct_d292:
   subroutine     reconstruct_d292(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group11
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group11), intent(out) :: coeffs
      ! rank 4 case :
      !---[# reconstruct coeffs%coeffs_292:
      coeffs%coeffs_292%c0 = derivative(czip)
      coeffs%coeffs_292%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_292%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_292%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_292%c1(1,4) = derivative(czip,1,1,1,1)/ 24.0_ki
      coeffs%coeffs_292%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_292%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_292%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_292%c1(2,4) = derivative(czip,2,2,2,2)/ 24.0_ki
      coeffs%coeffs_292%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_292%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_292%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_292%c1(3,4) = derivative(czip,3,3,3,3)/ 24.0_ki
      coeffs%coeffs_292%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_292%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_292%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_292%c1(4,4) = derivative(czip,4,4,4,4)/ 24.0_ki
      coeffs%coeffs_292%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_292%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_292%c2(1,3) = -derivative(czip,1,2,2,2)/ 6.0_ki
      coeffs%coeffs_292%c2(1,4) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_292%c2(1,5) = derivative(czip,1,1,2,2)/ 4.0_ki
      coeffs%coeffs_292%c2(1,6) = -derivative(czip,1,1,1,2)/ 6.0_ki
      coeffs%coeffs_292%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_292%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_292%c2(2,3) = -derivative(czip,1,3,3,3)/ 6.0_ki
      coeffs%coeffs_292%c2(2,4) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_292%c2(2,5) = derivative(czip,1,1,3,3)/ 4.0_ki
      coeffs%coeffs_292%c2(2,6) = -derivative(czip,1,1,1,3)/ 6.0_ki
      coeffs%coeffs_292%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_292%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_292%c2(3,3) = -derivative(czip,1,4,4,4)/ 6.0_ki
      coeffs%coeffs_292%c2(3,4) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_292%c2(3,5) = derivative(czip,1,1,4,4)/ 4.0_ki
      coeffs%coeffs_292%c2(3,6) = -derivative(czip,1,1,1,4)/ 6.0_ki
      coeffs%coeffs_292%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_292%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_292%c2(4,3) = derivative(czip,2,3,3,3)/ 6.0_ki
      coeffs%coeffs_292%c2(4,4) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_292%c2(4,5) = derivative(czip,2,2,3,3)/ 4.0_ki
      coeffs%coeffs_292%c2(4,6) = derivative(czip,2,2,2,3)/ 6.0_ki
      coeffs%coeffs_292%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_292%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_292%c2(5,3) = derivative(czip,2,4,4,4)/ 6.0_ki
      coeffs%coeffs_292%c2(5,4) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_292%c2(5,5) = derivative(czip,2,2,4,4)/ 4.0_ki
      coeffs%coeffs_292%c2(5,6) = derivative(czip,2,2,2,4)/ 6.0_ki
      coeffs%coeffs_292%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_292%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_292%c2(6,3) = derivative(czip,3,4,4,4)/ 6.0_ki
      coeffs%coeffs_292%c2(6,4) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_292%c2(6,5) = derivative(czip,3,3,4,4)/ 4.0_ki
      coeffs%coeffs_292%c2(6,6) = derivative(czip,3,3,3,4)/ 6.0_ki
      coeffs%coeffs_292%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_292%c3(1,2) = -derivative(czip,1,2,3,3)/ 2.0_ki
      coeffs%coeffs_292%c3(1,3) = -derivative(czip,1,2,2,3)/ 2.0_ki
      coeffs%coeffs_292%c3(1,4) = derivative(czip,1,1,2,3)/ 2.0_ki
      coeffs%coeffs_292%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_292%c3(2,2) = -derivative(czip,1,2,4,4)/ 2.0_ki
      coeffs%coeffs_292%c3(2,3) = -derivative(czip,1,2,2,4)/ 2.0_ki
      coeffs%coeffs_292%c3(2,4) = derivative(czip,1,1,2,4)/ 2.0_ki
      coeffs%coeffs_292%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_292%c3(3,2) = -derivative(czip,1,3,4,4)/ 2.0_ki
      coeffs%coeffs_292%c3(3,3) = -derivative(czip,1,3,3,4)/ 2.0_ki
      coeffs%coeffs_292%c3(3,4) = derivative(czip,1,1,3,4)/ 2.0_ki
      coeffs%coeffs_292%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_292%c3(4,2) = derivative(czip,2,3,4,4)/ 2.0_ki
      coeffs%coeffs_292%c3(4,3) = derivative(czip,2,3,3,4)/ 2.0_ki
      coeffs%coeffs_292%c3(4,4) = derivative(czip,2,2,3,4)/ 2.0_ki
      coeffs%coeffs_292%c4(1,1) = -derivative(czip,1,2,3,4)
      !---#] reconstruct coeffs%coeffs_292:
   end subroutine reconstruct_d292
!---#] subroutine reconstruct_d292:
end module     p0_dbaru_epnebbbarg_d292h0l1d
