module     p1_dbarc_epnebbbarg_d83h0l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity0d83h0l1d.f90
   ! generator: buildfortran_d.py
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   integer, private :: iv4
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d83
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd83h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd83
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd83h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(12) :: acd83
      complex(ki) :: brack
      acd83(1)=k1(iv1)
      acd83(2)=abb83(13)
      acd83(3)=spvak1k2(iv1)
      acd83(4)=abb83(9)
      acd83(5)=spvak7k2(iv1)
      acd83(6)=abb83(10)
      acd83(7)=spvae7k2(iv1)
      acd83(8)=abb83(40)
      acd83(9)=acd83(2)*acd83(1)
      acd83(10)=acd83(4)*acd83(3)
      acd83(11)=acd83(6)*acd83(5)
      acd83(12)=acd83(8)*acd83(7)
      brack=acd83(9)+acd83(10)+acd83(11)+acd83(12)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd83h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(72) :: acd83
      complex(ki) :: brack
      acd83(1)=d(iv1,iv2)
      acd83(2)=abb83(33)
      acd83(3)=k1(iv1)
      acd83(4)=k7(iv2)
      acd83(5)=abb83(28)
      acd83(6)=e7(iv2)
      acd83(7)=abb83(22)
      acd83(8)=spvak4k3(iv2)
      acd83(9)=abb83(15)
      acd83(10)=k1(iv2)
      acd83(11)=k7(iv1)
      acd83(12)=e7(iv1)
      acd83(13)=spvak4k3(iv1)
      acd83(14)=k3(iv1)
      acd83(15)=spvak1k2(iv2)
      acd83(16)=abb83(17)
      acd83(17)=spvak7k2(iv2)
      acd83(18)=abb83(55)
      acd83(19)=spvae7k2(iv2)
      acd83(20)=abb83(48)
      acd83(21)=k3(iv2)
      acd83(22)=spvak1k2(iv1)
      acd83(23)=spvak7k2(iv1)
      acd83(24)=spvae7k2(iv1)
      acd83(25)=k4(iv1)
      acd83(26)=k4(iv2)
      acd83(27)=abb83(18)
      acd83(28)=abb83(46)
      acd83(29)=spvak4k2(iv2)
      acd83(30)=abb83(27)
      acd83(31)=spvak4k2(iv1)
      acd83(32)=abb83(12)
      acd83(33)=abb83(53)
      acd83(34)=abb83(21)
      acd83(35)=spvak3k2(iv2)
      acd83(36)=abb83(45)
      acd83(37)=spvak3k2(iv1)
      acd83(38)=abb83(41)
      acd83(39)=abb83(32)
      acd83(40)=abb83(75)
      acd83(41)=spval5k2(iv2)
      acd83(42)=abb83(68)
      acd83(43)=spval6k2(iv2)
      acd83(44)=abb83(69)
      acd83(45)=spval5k2(iv1)
      acd83(46)=spval6k2(iv1)
      acd83(47)=abb83(36)
      acd83(48)=abb83(44)
      acd83(49)=spvak1k3(iv1)
      acd83(50)=abb83(91)
      acd83(51)=abb83(87)
      acd83(52)=spvak1k3(iv2)
      acd83(53)=spvak1k7(iv2)
      acd83(54)=abb83(92)
      acd83(55)=spvak1k7(iv1)
      acd83(56)=abb83(88)
      acd83(57)=acd83(43)*acd83(48)
      acd83(58)=acd83(41)*acd83(47)
      acd83(59)=acd83(21)+acd83(26)
      acd83(60)=-acd83(20)*acd83(59)
      acd83(61)=acd83(8)*acd83(40)
      acd83(62)=acd83(4)*acd83(28)
      acd83(57)=acd83(62)+acd83(61)+acd83(60)+acd83(57)+acd83(58)
      acd83(57)=acd83(24)*acd83(57)
      acd83(58)=acd83(46)*acd83(48)
      acd83(60)=acd83(45)*acd83(47)
      acd83(61)=acd83(14)+acd83(25)
      acd83(62)=-acd83(20)*acd83(61)
      acd83(63)=acd83(13)*acd83(40)
      acd83(64)=acd83(11)*acd83(28)
      acd83(58)=acd83(64)+acd83(63)+acd83(62)+acd83(58)+acd83(60)
      acd83(58)=acd83(19)*acd83(58)
      acd83(60)=acd83(43)*acd83(44)
      acd83(62)=acd83(41)*acd83(42)
      acd83(63)=acd83(8)*acd83(39)
      acd83(64)=acd83(6)*acd83(33)
      acd83(65)=acd83(4)+acd83(59)
      acd83(65)=acd83(18)*acd83(65)
      acd83(60)=acd83(65)+acd83(64)+acd83(63)+acd83(60)+acd83(62)
      acd83(60)=acd83(23)*acd83(60)
      acd83(62)=acd83(46)*acd83(44)
      acd83(63)=acd83(45)*acd83(42)
      acd83(64)=acd83(13)*acd83(39)
      acd83(65)=acd83(12)*acd83(33)
      acd83(66)=acd83(11)+acd83(61)
      acd83(66)=acd83(18)*acd83(66)
      acd83(62)=acd83(66)+acd83(65)+acd83(64)+acd83(62)+acd83(63)
      acd83(62)=acd83(17)*acd83(62)
      acd83(63)=acd83(36)*acd83(35)
      acd83(64)=acd83(29)*acd83(34)
      acd83(65)=acd83(10)*acd83(7)
      acd83(66)=acd83(15)*acd83(32)
      acd83(63)=acd83(66)+acd83(65)+acd83(63)+acd83(64)
      acd83(63)=acd83(12)*acd83(63)
      acd83(64)=acd83(36)*acd83(37)
      acd83(65)=acd83(31)*acd83(34)
      acd83(66)=acd83(3)*acd83(7)
      acd83(67)=acd83(22)*acd83(32)
      acd83(64)=acd83(67)+acd83(66)+acd83(64)+acd83(65)
      acd83(64)=acd83(6)*acd83(64)
      acd83(65)=acd83(29)*acd83(30)
      acd83(66)=acd83(10)*acd83(5)
      acd83(67)=acd83(15)*acd83(27)
      acd83(65)=acd83(67)+acd83(65)+acd83(66)
      acd83(65)=acd83(11)*acd83(65)
      acd83(66)=acd83(30)*acd83(31)
      acd83(67)=acd83(3)*acd83(5)
      acd83(68)=acd83(22)*acd83(27)
      acd83(66)=acd83(68)+acd83(66)+acd83(67)
      acd83(66)=acd83(4)*acd83(66)
      acd83(67)=acd83(13)*acd83(10)
      acd83(68)=acd83(8)*acd83(3)
      acd83(67)=acd83(68)+acd83(67)
      acd83(67)=acd83(9)*acd83(67)
      acd83(68)=acd83(53)*acd83(56)
      acd83(69)=acd83(51)*acd83(52)
      acd83(68)=acd83(68)+acd83(69)
      acd83(68)=acd83(46)*acd83(68)
      acd83(69)=acd83(53)*acd83(54)
      acd83(70)=acd83(50)*acd83(52)
      acd83(69)=acd83(69)+acd83(70)
      acd83(69)=acd83(45)*acd83(69)
      acd83(70)=acd83(55)*acd83(56)
      acd83(71)=acd83(49)*acd83(51)
      acd83(70)=acd83(70)+acd83(71)
      acd83(70)=acd83(43)*acd83(70)
      acd83(71)=acd83(54)*acd83(55)
      acd83(72)=acd83(49)*acd83(50)
      acd83(71)=acd83(71)+acd83(72)
      acd83(71)=acd83(41)*acd83(71)
      acd83(59)=acd83(16)*acd83(59)
      acd83(72)=acd83(8)*acd83(38)
      acd83(59)=acd83(59)+acd83(72)
      acd83(59)=acd83(22)*acd83(59)
      acd83(61)=acd83(16)*acd83(61)
      acd83(72)=acd83(13)*acd83(38)
      acd83(61)=acd83(61)+acd83(72)
      acd83(61)=acd83(15)*acd83(61)
      acd83(72)=acd83(1)*acd83(2)
      brack=acd83(57)+acd83(58)+acd83(59)+acd83(60)+acd83(61)+acd83(62)+acd83(6&
      &3)+acd83(64)+acd83(65)+acd83(66)+acd83(67)+acd83(68)+acd83(69)+acd83(70)&
      &+acd83(71)+2.0_ki*acd83(72)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd83h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(108) :: acd83
      complex(ki) :: brack
      acd83(1)=d(iv1,iv2)
      acd83(2)=k1(iv3)
      acd83(3)=abb83(26)
      acd83(4)=spvak1k2(iv3)
      acd83(5)=abb83(14)
      acd83(6)=spvak4k2(iv3)
      acd83(7)=abb83(25)
      acd83(8)=spvak4k3(iv3)
      acd83(9)=abb83(37)
      acd83(10)=spval5k2(iv3)
      acd83(11)=abb83(50)
      acd83(12)=spval6k2(iv3)
      acd83(13)=abb83(58)
      acd83(14)=spvak7k2(iv3)
      acd83(15)=abb83(54)
      acd83(16)=spvae7k2(iv3)
      acd83(17)=abb83(43)
      acd83(18)=d(iv1,iv3)
      acd83(19)=k1(iv2)
      acd83(20)=spvak1k2(iv2)
      acd83(21)=spvak4k2(iv2)
      acd83(22)=spvak4k3(iv2)
      acd83(23)=spval5k2(iv2)
      acd83(24)=spval6k2(iv2)
      acd83(25)=spvak7k2(iv2)
      acd83(26)=spvae7k2(iv2)
      acd83(27)=d(iv2,iv3)
      acd83(28)=k1(iv1)
      acd83(29)=spvak1k2(iv1)
      acd83(30)=spvak4k2(iv1)
      acd83(31)=spvak4k3(iv1)
      acd83(32)=spval5k2(iv1)
      acd83(33)=spval6k2(iv1)
      acd83(34)=spvak7k2(iv1)
      acd83(35)=spvae7k2(iv1)
      acd83(36)=k3(iv1)
      acd83(37)=e7(iv2)
      acd83(38)=abb83(23)
      acd83(39)=abb83(35)
      acd83(40)=abb83(71)
      acd83(41)=abb83(57)
      acd83(42)=e7(iv3)
      acd83(43)=k3(iv2)
      acd83(44)=e7(iv1)
      acd83(45)=k3(iv3)
      acd83(46)=k4(iv1)
      acd83(47)=k4(iv2)
      acd83(48)=k4(iv3)
      acd83(49)=k7(iv1)
      acd83(50)=abb83(39)
      acd83(51)=abb83(78)
      acd83(52)=abb83(60)
      acd83(53)=spvak1k3(iv3)
      acd83(54)=abb83(38)
      acd83(55)=spvak1k3(iv2)
      acd83(56)=abb83(64)
      acd83(57)=abb83(95)
      acd83(58)=k7(iv2)
      acd83(59)=spvak1k3(iv1)
      acd83(60)=k7(iv3)
      acd83(61)=abb83(7)
      acd83(62)=abb83(79)
      acd83(63)=abb83(8)
      acd83(64)=abb83(11)
      acd83(65)=abb83(49)
      acd83(66)=abb83(77)
      acd83(67)=abb83(30)
      acd83(68)=spvak3k2(iv3)
      acd83(69)=abb83(34)
      acd83(70)=spvak3k2(iv2)
      acd83(71)=abb83(56)
      acd83(72)=abb83(97)
      acd83(73)=spvak1k7(iv3)
      acd83(74)=abb83(89)
      acd83(75)=spvak1k7(iv2)
      acd83(76)=abb83(70)
      acd83(77)=abb83(94)
      acd83(78)=abb83(90)
      acd83(79)=spvak3k2(iv1)
      acd83(80)=spvak1k7(iv1)
      acd83(81)=abb83(85)
      acd83(82)=abb83(83)
      acd83(83)=abb83(80)
      acd83(84)=abb83(86)
      acd83(85)=abb83(84)
      acd83(86)=abb83(93)
      acd83(87)=acd83(73)*acd83(78)
      acd83(88)=acd83(53)*acd83(77)
      acd83(89)=acd83(14)*acd83(76)
      acd83(90)=acd83(6)*acd83(64)
      acd83(91)=acd83(45)+acd83(48)
      acd83(92)=acd83(91)+acd83(60)
      acd83(93)=acd83(92)*acd83(41)
      acd83(94)=acd83(8)*acd83(66)
      acd83(87)=-acd83(87)-acd83(88)-acd83(89)-acd83(90)+acd83(93)-acd83(94)
      acd83(88)=-acd83(24)*acd83(87)
      acd83(89)=acd83(73)*acd83(74)
      acd83(90)=acd83(53)*acd83(72)
      acd83(93)=acd83(14)*acd83(71)
      acd83(94)=acd83(6)*acd83(63)
      acd83(92)=acd83(92)*acd83(40)
      acd83(95)=acd83(8)*acd83(65)
      acd83(89)=-acd83(89)-acd83(90)-acd83(93)-acd83(94)+acd83(92)-acd83(95)
      acd83(90)=-acd83(23)*acd83(89)
      acd83(92)=acd83(75)*acd83(78)
      acd83(93)=acd83(55)*acd83(77)
      acd83(94)=acd83(25)*acd83(76)
      acd83(95)=acd83(21)*acd83(64)
      acd83(96)=acd83(43)+acd83(47)
      acd83(97)=acd83(96)+acd83(58)
      acd83(98)=acd83(97)*acd83(41)
      acd83(99)=acd83(22)*acd83(66)
      acd83(92)=-acd83(92)-acd83(93)-acd83(94)-acd83(95)+acd83(98)-acd83(99)
      acd83(93)=-acd83(12)*acd83(92)
      acd83(94)=acd83(75)*acd83(74)
      acd83(95)=acd83(55)*acd83(72)
      acd83(98)=acd83(25)*acd83(71)
      acd83(99)=acd83(21)*acd83(63)
      acd83(97)=acd83(97)*acd83(40)
      acd83(100)=acd83(22)*acd83(65)
      acd83(94)=-acd83(94)-acd83(95)-acd83(98)-acd83(99)+acd83(97)-acd83(100)
      acd83(95)=-acd83(10)*acd83(94)
      acd83(97)=acd83(69)*acd83(68)
      acd83(98)=acd83(4)*acd83(61)
      acd83(99)=acd83(14)*acd83(67)
      acd83(100)=acd83(6)*acd83(62)
      acd83(97)=-acd83(97)+acd83(98)+acd83(99)+acd83(100)
      acd83(98)=acd83(22)*acd83(97)
      acd83(99)=acd83(69)*acd83(70)
      acd83(100)=acd83(20)*acd83(61)
      acd83(101)=acd83(25)*acd83(67)
      acd83(102)=acd83(21)*acd83(62)
      acd83(99)=-acd83(99)+acd83(100)+acd83(101)+acd83(102)
      acd83(100)=acd83(8)*acd83(99)
      acd83(101)=acd83(21)*acd83(91)
      acd83(102)=acd83(6)*acd83(96)
      acd83(101)=acd83(101)+acd83(102)
      acd83(101)=acd83(39)*acd83(101)
      acd83(102)=-acd83(20)*acd83(91)
      acd83(103)=-acd83(4)*acd83(96)
      acd83(102)=acd83(102)+acd83(103)
      acd83(102)=acd83(38)*acd83(102)
      acd83(103)=acd83(39)*acd83(21)
      acd83(104)=acd83(38)*acd83(20)
      acd83(103)=acd83(103)-acd83(104)
      acd83(104)=acd83(60)*acd83(103)
      acd83(105)=acd83(39)*acd83(6)
      acd83(106)=acd83(38)*acd83(4)
      acd83(105)=acd83(105)-acd83(106)
      acd83(106)=acd83(58)*acd83(105)
      acd83(88)=acd83(95)+acd83(93)+acd83(90)+acd83(88)+acd83(100)+acd83(98)+ac&
      &d83(106)+acd83(104)+acd83(101)+acd83(102)
      acd83(88)=acd83(44)*acd83(88)
      acd83(90)=-acd83(33)*acd83(92)
      acd83(92)=-acd83(32)*acd83(94)
      acd83(93)=acd83(80)*acd83(78)
      acd83(94)=acd83(59)*acd83(77)
      acd83(95)=acd83(34)*acd83(76)
      acd83(98)=acd83(30)*acd83(64)
      acd83(100)=acd83(36)+acd83(46)
      acd83(101)=acd83(100)+acd83(49)
      acd83(102)=acd83(101)*acd83(41)
      acd83(104)=acd83(31)*acd83(66)
      acd83(93)=-acd83(93)-acd83(94)-acd83(95)-acd83(98)+acd83(102)-acd83(104)
      acd83(94)=-acd83(24)*acd83(93)
      acd83(95)=acd83(80)*acd83(74)
      acd83(98)=acd83(59)*acd83(72)
      acd83(102)=acd83(34)*acd83(71)
      acd83(104)=acd83(30)*acd83(63)
      acd83(101)=acd83(101)*acd83(40)
      acd83(106)=acd83(31)*acd83(65)
      acd83(95)=-acd83(95)-acd83(98)-acd83(102)-acd83(104)+acd83(101)-acd83(106)
      acd83(98)=-acd83(23)*acd83(95)
      acd83(99)=acd83(31)*acd83(99)
      acd83(101)=acd83(69)*acd83(79)
      acd83(102)=acd83(29)*acd83(61)
      acd83(104)=acd83(34)*acd83(67)
      acd83(106)=acd83(30)*acd83(62)
      acd83(101)=-acd83(101)+acd83(102)+acd83(104)+acd83(106)
      acd83(102)=acd83(22)*acd83(101)
      acd83(104)=acd83(30)*acd83(96)
      acd83(106)=acd83(21)*acd83(100)
      acd83(104)=acd83(104)+acd83(106)
      acd83(104)=acd83(39)*acd83(104)
      acd83(96)=-acd83(29)*acd83(96)
      acd83(106)=-acd83(20)*acd83(100)
      acd83(96)=acd83(96)+acd83(106)
      acd83(96)=acd83(38)*acd83(96)
      acd83(106)=acd83(39)*acd83(30)
      acd83(107)=acd83(38)*acd83(29)
      acd83(106)=acd83(106)-acd83(107)
      acd83(107)=acd83(58)*acd83(106)
      acd83(103)=acd83(49)*acd83(103)
      acd83(90)=acd83(98)+acd83(94)+acd83(92)+acd83(90)+acd83(102)+acd83(99)+ac&
      &d83(103)+acd83(107)+acd83(104)+acd83(96)
      acd83(90)=acd83(42)*acd83(90)
      acd83(87)=-acd83(33)*acd83(87)
      acd83(89)=-acd83(32)*acd83(89)
      acd83(92)=-acd83(12)*acd83(93)
      acd83(93)=-acd83(10)*acd83(95)
      acd83(94)=acd83(31)*acd83(97)
      acd83(95)=acd83(8)*acd83(101)
      acd83(96)=acd83(30)*acd83(91)
      acd83(97)=acd83(6)*acd83(100)
      acd83(96)=acd83(96)+acd83(97)
      acd83(96)=acd83(39)*acd83(96)
      acd83(91)=-acd83(29)*acd83(91)
      acd83(97)=-acd83(4)*acd83(100)
      acd83(91)=acd83(91)+acd83(97)
      acd83(91)=acd83(38)*acd83(91)
      acd83(97)=acd83(60)*acd83(106)
      acd83(98)=acd83(49)*acd83(105)
      acd83(87)=acd83(93)+acd83(92)+acd83(89)+acd83(87)+acd83(95)+acd83(94)+acd&
      &83(98)+acd83(97)+acd83(96)+acd83(91)
      acd83(87)=acd83(37)*acd83(87)
      acd83(89)=acd83(3)*acd83(28)
      acd83(91)=acd83(35)*acd83(17)
      acd83(92)=acd83(29)*acd83(5)
      acd83(93)=acd83(34)*acd83(15)
      acd83(94)=acd83(30)*acd83(7)
      acd83(95)=acd83(31)*acd83(9)
      acd83(89)=acd83(95)+acd83(94)+acd83(93)+acd83(92)+acd83(91)+acd83(89)
      acd83(89)=acd83(27)*acd83(89)
      acd83(91)=acd83(3)*acd83(19)
      acd83(92)=acd83(26)*acd83(17)
      acd83(93)=acd83(20)*acd83(5)
      acd83(94)=acd83(25)*acd83(15)
      acd83(95)=acd83(21)*acd83(7)
      acd83(96)=acd83(22)*acd83(9)
      acd83(91)=acd83(96)+acd83(95)+acd83(94)+acd83(93)+acd83(92)+acd83(91)
      acd83(91)=acd83(18)*acd83(91)
      acd83(92)=acd83(3)*acd83(2)
      acd83(93)=acd83(16)*acd83(17)
      acd83(94)=acd83(4)*acd83(5)
      acd83(95)=acd83(14)*acd83(15)
      acd83(96)=acd83(6)*acd83(7)
      acd83(97)=acd83(8)*acd83(9)
      acd83(92)=acd83(97)+acd83(96)+acd83(95)+acd83(94)+acd83(93)+acd83(92)
      acd83(92)=acd83(1)*acd83(92)
      acd83(89)=acd83(92)+acd83(91)+acd83(89)
      acd83(91)=acd83(55)*acd83(57)
      acd83(92)=acd83(26)*acd83(56)
      acd83(93)=acd83(21)*acd83(51)
      acd83(91)=acd83(93)+acd83(91)+acd83(92)
      acd83(92)=acd83(60)*acd83(91)
      acd83(93)=acd83(53)*acd83(57)
      acd83(94)=acd83(16)*acd83(56)
      acd83(95)=acd83(6)*acd83(51)
      acd83(93)=acd83(95)+acd83(93)+acd83(94)
      acd83(94)=acd83(58)*acd83(93)
      acd83(95)=acd83(73)*acd83(86)
      acd83(96)=acd83(16)*acd83(85)
      acd83(97)=acd83(14)*acd83(84)
      acd83(95)=acd83(97)+acd83(95)+acd83(96)
      acd83(96)=acd83(22)*acd83(95)
      acd83(97)=acd83(75)*acd83(86)
      acd83(98)=acd83(26)*acd83(85)
      acd83(99)=acd83(25)*acd83(84)
      acd83(97)=acd83(99)+acd83(97)+acd83(98)
      acd83(98)=acd83(8)*acd83(97)
      acd83(99)=2.0_ki*acd83(13)
      acd83(100)=acd83(27)*acd83(99)
      acd83(92)=acd83(98)+acd83(96)+acd83(94)+acd83(100)+acd83(92)
      acd83(92)=acd83(33)*acd83(92)
      acd83(94)=acd83(55)*acd83(54)
      acd83(96)=acd83(26)*acd83(52)
      acd83(98)=acd83(21)*acd83(50)
      acd83(94)=acd83(98)+acd83(94)+acd83(96)
      acd83(96)=acd83(60)*acd83(94)
      acd83(98)=acd83(53)*acd83(54)
      acd83(100)=acd83(16)*acd83(52)
      acd83(101)=acd83(6)*acd83(50)
      acd83(98)=acd83(101)+acd83(98)+acd83(100)
      acd83(100)=acd83(58)*acd83(98)
      acd83(101)=acd83(73)*acd83(83)
      acd83(102)=acd83(16)*acd83(82)
      acd83(103)=acd83(14)*acd83(81)
      acd83(101)=acd83(103)+acd83(101)+acd83(102)
      acd83(102)=acd83(22)*acd83(101)
      acd83(103)=acd83(75)*acd83(83)
      acd83(104)=acd83(26)*acd83(82)
      acd83(105)=acd83(25)*acd83(81)
      acd83(103)=acd83(105)+acd83(103)+acd83(104)
      acd83(104)=acd83(8)*acd83(103)
      acd83(105)=2.0_ki*acd83(11)
      acd83(106)=acd83(27)*acd83(105)
      acd83(96)=acd83(104)+acd83(102)+acd83(100)+acd83(106)+acd83(96)
      acd83(96)=acd83(32)*acd83(96)
      acd83(100)=acd83(59)*acd83(57)
      acd83(102)=acd83(35)*acd83(56)
      acd83(104)=acd83(30)*acd83(51)
      acd83(100)=acd83(104)+acd83(100)+acd83(102)
      acd83(102)=acd83(60)*acd83(100)
      acd83(93)=acd83(49)*acd83(93)
      acd83(95)=acd83(31)*acd83(95)
      acd83(104)=acd83(80)*acd83(86)
      acd83(106)=acd83(35)*acd83(85)
      acd83(107)=acd83(34)*acd83(84)
      acd83(104)=acd83(107)+acd83(104)+acd83(106)
      acd83(106)=acd83(8)*acd83(104)
      acd83(107)=acd83(18)*acd83(99)
      acd83(93)=acd83(106)+acd83(95)+acd83(93)+acd83(107)+acd83(102)
      acd83(93)=acd83(24)*acd83(93)
      acd83(95)=acd83(59)*acd83(54)
      acd83(102)=acd83(35)*acd83(52)
      acd83(106)=acd83(30)*acd83(50)
      acd83(95)=acd83(106)+acd83(95)+acd83(102)
      acd83(102)=acd83(60)*acd83(95)
      acd83(98)=acd83(49)*acd83(98)
      acd83(101)=acd83(31)*acd83(101)
      acd83(106)=acd83(80)*acd83(83)
      acd83(107)=acd83(35)*acd83(82)
      acd83(108)=acd83(34)*acd83(81)
      acd83(106)=acd83(108)+acd83(106)+acd83(107)
      acd83(107)=acd83(8)*acd83(106)
      acd83(108)=acd83(18)*acd83(105)
      acd83(98)=acd83(107)+acd83(101)+acd83(98)+acd83(108)+acd83(102)
      acd83(98)=acd83(23)*acd83(98)
      acd83(100)=acd83(58)*acd83(100)
      acd83(91)=acd83(49)*acd83(91)
      acd83(97)=acd83(31)*acd83(97)
      acd83(101)=acd83(22)*acd83(104)
      acd83(99)=acd83(1)*acd83(99)
      acd83(91)=acd83(101)+acd83(97)+acd83(91)+acd83(99)+acd83(100)
      acd83(91)=acd83(12)*acd83(91)
      acd83(95)=acd83(58)*acd83(95)
      acd83(94)=acd83(49)*acd83(94)
      acd83(97)=acd83(31)*acd83(103)
      acd83(99)=acd83(22)*acd83(106)
      acd83(100)=acd83(1)*acd83(105)
      acd83(94)=acd83(99)+acd83(97)+acd83(94)+acd83(100)+acd83(95)
      acd83(94)=acd83(10)*acd83(94)
      brack=acd83(87)+acd83(88)+2.0_ki*acd83(89)+acd83(90)+acd83(91)+acd83(92)+&
      &acd83(93)+acd83(94)+acd83(96)+acd83(98)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd83h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(73) :: acd83
      complex(ki) :: brack
      acd83(1)=d(iv1,iv2)
      acd83(2)=e7(iv3)
      acd83(3)=spvak1k2(iv4)
      acd83(4)=abb83(20)
      acd83(5)=spvak4k2(iv4)
      acd83(6)=abb83(34)
      acd83(7)=spval5k2(iv4)
      acd83(8)=abb83(52)
      acd83(9)=spval6k2(iv4)
      acd83(10)=abb83(61)
      acd83(11)=e7(iv4)
      acd83(12)=spvak1k2(iv3)
      acd83(13)=spvak4k2(iv3)
      acd83(14)=spval5k2(iv3)
      acd83(15)=spval6k2(iv3)
      acd83(16)=abb83(67)
      acd83(17)=abb83(65)
      acd83(18)=spvak1k3(iv4)
      acd83(19)=abb83(24)
      acd83(20)=spvak4k3(iv4)
      acd83(21)=abb83(81)
      acd83(22)=spvae7k2(iv4)
      acd83(23)=abb83(63)
      acd83(24)=spvak1k3(iv3)
      acd83(25)=spvak4k3(iv3)
      acd83(26)=spvae7k2(iv3)
      acd83(27)=abb83(6)
      acd83(28)=abb83(82)
      acd83(29)=abb83(66)
      acd83(30)=d(iv1,iv3)
      acd83(31)=e7(iv2)
      acd83(32)=spvak1k2(iv2)
      acd83(33)=spvak4k2(iv2)
      acd83(34)=spval5k2(iv2)
      acd83(35)=spval6k2(iv2)
      acd83(36)=spvak1k3(iv2)
      acd83(37)=spvak4k3(iv2)
      acd83(38)=spvae7k2(iv2)
      acd83(39)=d(iv1,iv4)
      acd83(40)=d(iv2,iv3)
      acd83(41)=e7(iv1)
      acd83(42)=spvak1k2(iv1)
      acd83(43)=spvak4k2(iv1)
      acd83(44)=spval5k2(iv1)
      acd83(45)=spval6k2(iv1)
      acd83(46)=spvak1k3(iv1)
      acd83(47)=spvak4k3(iv1)
      acd83(48)=spvae7k2(iv1)
      acd83(49)=d(iv2,iv4)
      acd83(50)=d(iv3,iv4)
      acd83(51)=abb83(59)
      acd83(52)=abb83(62)
      acd83(53)=acd83(2)*acd83(1)
      acd83(54)=acd83(31)*acd83(30)
      acd83(55)=acd83(41)*acd83(40)
      acd83(53)=acd83(55)+acd83(53)+acd83(54)
      acd83(54)=acd83(3)*acd83(53)
      acd83(55)=acd83(11)*acd83(1)
      acd83(56)=acd83(39)*acd83(31)
      acd83(57)=acd83(49)*acd83(41)
      acd83(55)=acd83(57)+acd83(55)+acd83(56)
      acd83(56)=acd83(12)*acd83(55)
      acd83(57)=acd83(30)*acd83(11)
      acd83(58)=acd83(39)*acd83(2)
      acd83(59)=acd83(50)*acd83(41)
      acd83(57)=acd83(59)+acd83(57)+acd83(58)
      acd83(58)=acd83(32)*acd83(57)
      acd83(59)=acd83(40)*acd83(11)
      acd83(60)=acd83(49)*acd83(2)
      acd83(61)=acd83(50)*acd83(31)
      acd83(59)=acd83(61)+acd83(59)+acd83(60)
      acd83(60)=acd83(42)*acd83(59)
      acd83(54)=acd83(60)+acd83(58)+acd83(54)+acd83(56)
      acd83(54)=acd83(4)*acd83(54)
      acd83(56)=acd83(7)*acd83(53)
      acd83(58)=acd83(14)*acd83(55)
      acd83(60)=acd83(34)*acd83(57)
      acd83(61)=acd83(44)*acd83(59)
      acd83(56)=acd83(61)+acd83(60)+acd83(56)+acd83(58)
      acd83(56)=acd83(8)*acd83(56)
      acd83(58)=acd83(9)*acd83(53)
      acd83(60)=acd83(15)*acd83(55)
      acd83(61)=acd83(35)*acd83(57)
      acd83(62)=acd83(45)*acd83(59)
      acd83(58)=acd83(62)+acd83(61)+acd83(58)+acd83(60)
      acd83(58)=acd83(10)*acd83(58)
      acd83(60)=acd83(14)*acd83(1)
      acd83(61)=acd83(34)*acd83(30)
      acd83(62)=acd83(44)*acd83(40)
      acd83(60)=acd83(62)+acd83(60)+acd83(61)
      acd83(61)=acd83(20)*acd83(60)
      acd83(62)=acd83(7)*acd83(1)
      acd83(63)=acd83(34)*acd83(39)
      acd83(64)=acd83(44)*acd83(49)
      acd83(62)=acd83(64)+acd83(62)+acd83(63)
      acd83(63)=acd83(25)*acd83(62)
      acd83(64)=acd83(7)*acd83(30)
      acd83(65)=acd83(14)*acd83(39)
      acd83(66)=acd83(44)*acd83(50)
      acd83(64)=acd83(66)+acd83(64)+acd83(65)
      acd83(65)=acd83(37)*acd83(64)
      acd83(66)=acd83(7)*acd83(40)
      acd83(67)=acd83(14)*acd83(49)
      acd83(68)=acd83(34)*acd83(50)
      acd83(66)=acd83(68)+acd83(66)+acd83(67)
      acd83(67)=acd83(47)*acd83(66)
      acd83(61)=acd83(67)+acd83(65)+acd83(61)+acd83(63)
      acd83(61)=acd83(21)*acd83(61)
      acd83(63)=acd83(15)*acd83(1)
      acd83(65)=acd83(35)*acd83(30)
      acd83(67)=acd83(45)*acd83(40)
      acd83(63)=acd83(67)+acd83(63)+acd83(65)
      acd83(65)=acd83(20)*acd83(63)
      acd83(67)=acd83(9)*acd83(1)
      acd83(68)=acd83(35)*acd83(39)
      acd83(69)=acd83(45)*acd83(49)
      acd83(67)=acd83(69)+acd83(67)+acd83(68)
      acd83(68)=acd83(25)*acd83(67)
      acd83(69)=acd83(9)*acd83(30)
      acd83(70)=acd83(15)*acd83(39)
      acd83(71)=acd83(45)*acd83(50)
      acd83(69)=acd83(71)+acd83(69)+acd83(70)
      acd83(70)=acd83(37)*acd83(69)
      acd83(71)=acd83(9)*acd83(40)
      acd83(72)=acd83(15)*acd83(49)
      acd83(73)=acd83(35)*acd83(50)
      acd83(71)=acd83(73)+acd83(71)+acd83(72)
      acd83(72)=acd83(47)*acd83(71)
      acd83(65)=acd83(72)+acd83(70)+acd83(65)+acd83(68)
      acd83(65)=acd83(28)*acd83(65)
      acd83(53)=-acd83(6)*acd83(53)
      acd83(68)=acd83(16)*acd83(60)
      acd83(70)=acd83(17)*acd83(63)
      acd83(53)=acd83(70)+acd83(53)+acd83(68)
      acd83(53)=acd83(5)*acd83(53)
      acd83(55)=-acd83(6)*acd83(55)
      acd83(68)=acd83(16)*acd83(62)
      acd83(70)=acd83(17)*acd83(67)
      acd83(55)=acd83(70)+acd83(55)+acd83(68)
      acd83(55)=acd83(13)*acd83(55)
      acd83(57)=-acd83(6)*acd83(57)
      acd83(68)=acd83(16)*acd83(64)
      acd83(70)=acd83(17)*acd83(69)
      acd83(57)=acd83(70)+acd83(57)+acd83(68)
      acd83(57)=acd83(33)*acd83(57)
      acd83(59)=-acd83(6)*acd83(59)
      acd83(68)=acd83(16)*acd83(66)
      acd83(70)=acd83(17)*acd83(71)
      acd83(59)=acd83(70)+acd83(59)+acd83(68)
      acd83(59)=acd83(43)*acd83(59)
      acd83(68)=acd83(19)*acd83(60)
      acd83(70)=acd83(27)*acd83(63)
      acd83(68)=acd83(68)+acd83(70)
      acd83(68)=acd83(18)*acd83(68)
      acd83(60)=acd83(23)*acd83(60)
      acd83(63)=acd83(29)*acd83(63)
      acd83(60)=acd83(60)+acd83(63)
      acd83(60)=acd83(22)*acd83(60)
      acd83(63)=acd83(19)*acd83(62)
      acd83(70)=acd83(27)*acd83(67)
      acd83(63)=acd83(63)+acd83(70)
      acd83(63)=acd83(24)*acd83(63)
      acd83(62)=acd83(23)*acd83(62)
      acd83(67)=acd83(29)*acd83(67)
      acd83(62)=acd83(62)+acd83(67)
      acd83(62)=acd83(26)*acd83(62)
      acd83(67)=acd83(19)*acd83(64)
      acd83(70)=acd83(27)*acd83(69)
      acd83(67)=acd83(67)+acd83(70)
      acd83(67)=acd83(36)*acd83(67)
      acd83(64)=acd83(23)*acd83(64)
      acd83(69)=acd83(29)*acd83(69)
      acd83(64)=acd83(64)+acd83(69)
      acd83(64)=acd83(38)*acd83(64)
      acd83(69)=acd83(19)*acd83(66)
      acd83(70)=acd83(27)*acd83(71)
      acd83(69)=acd83(69)+acd83(70)
      acd83(69)=acd83(46)*acd83(69)
      acd83(66)=acd83(23)*acd83(66)
      acd83(70)=acd83(29)*acd83(71)
      acd83(66)=acd83(66)+acd83(70)
      acd83(66)=acd83(48)*acd83(66)
      acd83(53)=acd83(66)+acd83(65)+acd83(53)+acd83(55)+acd83(57)+acd83(54)+acd&
      &83(56)+acd83(58)+acd83(61)+acd83(62)+acd83(67)+acd83(64)+acd83(69)+acd83&
      &(59)+acd83(68)+acd83(60)+acd83(63)
      acd83(54)=acd83(34)*acd83(51)
      acd83(55)=acd83(35)*acd83(52)
      acd83(54)=acd83(54)+acd83(55)
      acd83(55)=acd83(54)*acd83(41)
      acd83(56)=acd83(44)*acd83(51)
      acd83(57)=acd83(45)*acd83(52)
      acd83(56)=acd83(56)+acd83(57)
      acd83(57)=acd83(56)*acd83(31)
      acd83(55)=acd83(55)+acd83(57)
      acd83(57)=-acd83(25)*acd83(55)
      acd83(58)=acd83(14)*acd83(51)
      acd83(59)=acd83(15)*acd83(52)
      acd83(58)=acd83(58)+acd83(59)
      acd83(59)=acd83(41)*acd83(58)
      acd83(60)=acd83(56)*acd83(2)
      acd83(59)=acd83(59)+acd83(60)
      acd83(60)=-acd83(37)*acd83(59)
      acd83(61)=acd83(54)*acd83(2)
      acd83(62)=acd83(58)*acd83(31)
      acd83(61)=acd83(61)+acd83(62)
      acd83(62)=-acd83(47)*acd83(61)
      acd83(57)=acd83(62)+acd83(57)+acd83(60)
      acd83(57)=acd83(3)*acd83(57)
      acd83(55)=-acd83(20)*acd83(55)
      acd83(56)=acd83(56)*acd83(11)
      acd83(60)=acd83(7)*acd83(51)
      acd83(62)=acd83(9)*acd83(52)
      acd83(60)=acd83(60)+acd83(62)
      acd83(62)=acd83(41)*acd83(60)
      acd83(56)=acd83(56)+acd83(62)
      acd83(62)=-acd83(37)*acd83(56)
      acd83(54)=acd83(54)*acd83(11)
      acd83(63)=acd83(31)*acd83(60)
      acd83(54)=acd83(54)+acd83(63)
      acd83(63)=-acd83(47)*acd83(54)
      acd83(55)=acd83(63)+acd83(55)+acd83(62)
      acd83(55)=acd83(12)*acd83(55)
      acd83(59)=-acd83(20)*acd83(59)
      acd83(56)=-acd83(25)*acd83(56)
      acd83(58)=acd83(58)*acd83(11)
      acd83(60)=acd83(2)*acd83(60)
      acd83(58)=acd83(58)+acd83(60)
      acd83(60)=-acd83(47)*acd83(58)
      acd83(56)=acd83(60)+acd83(59)+acd83(56)
      acd83(56)=acd83(32)*acd83(56)
      acd83(59)=-acd83(20)*acd83(61)
      acd83(54)=-acd83(25)*acd83(54)
      acd83(58)=-acd83(37)*acd83(58)
      acd83(54)=acd83(58)+acd83(59)+acd83(54)
      acd83(54)=acd83(42)*acd83(54)
      brack=2.0_ki*acd83(53)+acd83(54)+acd83(55)+acd83(56)+acd83(57)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd83h0
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
!---#[ subroutine reconstruct_d83:
   subroutine     reconstruct_d83(coeffs)
      use p1_dbarc_epnebbbarg_groups, only: tensrec_info_group5
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group5), intent(out) :: coeffs
      ! rank 4 case :
      !---[# reconstruct coeffs%coeffs_83:
      coeffs%coeffs_83%c0 = derivative(czip)
      coeffs%coeffs_83%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_83%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_83%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_83%c1(1,4) = derivative(czip,1,1,1,1)/ 24.0_ki
      coeffs%coeffs_83%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_83%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_83%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_83%c1(2,4) = derivative(czip,2,2,2,2)/ 24.0_ki
      coeffs%coeffs_83%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_83%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_83%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_83%c1(3,4) = derivative(czip,3,3,3,3)/ 24.0_ki
      coeffs%coeffs_83%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_83%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_83%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_83%c1(4,4) = derivative(czip,4,4,4,4)/ 24.0_ki
      coeffs%coeffs_83%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_83%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_83%c2(1,3) = -derivative(czip,1,2,2,2)/ 6.0_ki
      coeffs%coeffs_83%c2(1,4) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_83%c2(1,5) = derivative(czip,1,1,2,2)/ 4.0_ki
      coeffs%coeffs_83%c2(1,6) = -derivative(czip,1,1,1,2)/ 6.0_ki
      coeffs%coeffs_83%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_83%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_83%c2(2,3) = -derivative(czip,1,3,3,3)/ 6.0_ki
      coeffs%coeffs_83%c2(2,4) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_83%c2(2,5) = derivative(czip,1,1,3,3)/ 4.0_ki
      coeffs%coeffs_83%c2(2,6) = -derivative(czip,1,1,1,3)/ 6.0_ki
      coeffs%coeffs_83%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_83%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_83%c2(3,3) = -derivative(czip,1,4,4,4)/ 6.0_ki
      coeffs%coeffs_83%c2(3,4) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_83%c2(3,5) = derivative(czip,1,1,4,4)/ 4.0_ki
      coeffs%coeffs_83%c2(3,6) = -derivative(czip,1,1,1,4)/ 6.0_ki
      coeffs%coeffs_83%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_83%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_83%c2(4,3) = derivative(czip,2,3,3,3)/ 6.0_ki
      coeffs%coeffs_83%c2(4,4) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_83%c2(4,5) = derivative(czip,2,2,3,3)/ 4.0_ki
      coeffs%coeffs_83%c2(4,6) = derivative(czip,2,2,2,3)/ 6.0_ki
      coeffs%coeffs_83%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_83%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_83%c2(5,3) = derivative(czip,2,4,4,4)/ 6.0_ki
      coeffs%coeffs_83%c2(5,4) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_83%c2(5,5) = derivative(czip,2,2,4,4)/ 4.0_ki
      coeffs%coeffs_83%c2(5,6) = derivative(czip,2,2,2,4)/ 6.0_ki
      coeffs%coeffs_83%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_83%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_83%c2(6,3) = derivative(czip,3,4,4,4)/ 6.0_ki
      coeffs%coeffs_83%c2(6,4) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_83%c2(6,5) = derivative(czip,3,3,4,4)/ 4.0_ki
      coeffs%coeffs_83%c2(6,6) = derivative(czip,3,3,3,4)/ 6.0_ki
      coeffs%coeffs_83%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_83%c3(1,2) = -derivative(czip,1,2,3,3)/ 2.0_ki
      coeffs%coeffs_83%c3(1,3) = -derivative(czip,1,2,2,3)/ 2.0_ki
      coeffs%coeffs_83%c3(1,4) = derivative(czip,1,1,2,3)/ 2.0_ki
      coeffs%coeffs_83%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_83%c3(2,2) = -derivative(czip,1,2,4,4)/ 2.0_ki
      coeffs%coeffs_83%c3(2,3) = -derivative(czip,1,2,2,4)/ 2.0_ki
      coeffs%coeffs_83%c3(2,4) = derivative(czip,1,1,2,4)/ 2.0_ki
      coeffs%coeffs_83%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_83%c3(3,2) = -derivative(czip,1,3,4,4)/ 2.0_ki
      coeffs%coeffs_83%c3(3,3) = -derivative(czip,1,3,3,4)/ 2.0_ki
      coeffs%coeffs_83%c3(3,4) = derivative(czip,1,1,3,4)/ 2.0_ki
      coeffs%coeffs_83%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_83%c3(4,2) = derivative(czip,2,3,4,4)/ 2.0_ki
      coeffs%coeffs_83%c3(4,3) = derivative(czip,2,3,3,4)/ 2.0_ki
      coeffs%coeffs_83%c3(4,4) = derivative(czip,2,2,3,4)/ 2.0_ki
      coeffs%coeffs_83%c4(1,1) = -derivative(czip,1,2,3,4)
      !---#] reconstruct coeffs%coeffs_83:
   end subroutine reconstruct_d83
!---#] subroutine reconstruct_d83:
end module     p1_dbarc_epnebbbarg_d83h0l1d
