module     p8_cbarc_epnemumnmubarg_d481h1l1d
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p8_cbarc_epnemumnmubarg/helicity1d481h1l1d.f90
   ! generator: buildfortran_d.py
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   integer, private :: iv4
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d481
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd481h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd481
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd481h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(12) :: acd481
      complex(ki) :: brack
      acd481(1)=k1(iv1)
      acd481(2)=abb481(31)
      acd481(3)=k2(iv1)
      acd481(4)=abb481(14)
      acd481(5)=spvak1k2(iv1)
      acd481(6)=abb481(6)
      acd481(7)=spvak7k2(iv1)
      acd481(8)=abb481(8)
      acd481(9)=acd481(2)*acd481(1)
      acd481(10)=acd481(4)*acd481(3)
      acd481(11)=acd481(6)*acd481(5)
      acd481(12)=acd481(8)*acd481(7)
      brack=acd481(9)+acd481(10)+acd481(11)+acd481(12)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd481h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(70) :: acd481
      complex(ki) :: brack
      acd481(1)=d(iv1,iv2)
      acd481(2)=abb481(36)
      acd481(3)=k1(iv1)
      acd481(4)=k7(iv2)
      acd481(5)=abb481(35)
      acd481(6)=spvak2k7(iv2)
      acd481(7)=abb481(33)
      acd481(8)=spvak4k3(iv2)
      acd481(9)=abb481(16)
      acd481(10)=k1(iv2)
      acd481(11)=k7(iv1)
      acd481(12)=spvak2k7(iv1)
      acd481(13)=spvak4k3(iv1)
      acd481(14)=k2(iv1)
      acd481(15)=k3(iv2)
      acd481(16)=abb481(26)
      acd481(17)=k4(iv2)
      acd481(18)=abb481(24)
      acd481(19)=abb481(9)
      acd481(20)=spvak5k6(iv2)
      acd481(21)=abb481(48)
      acd481(22)=k2(iv2)
      acd481(23)=k3(iv1)
      acd481(24)=k4(iv1)
      acd481(25)=spvak5k6(iv1)
      acd481(26)=spvak1k6(iv2)
      acd481(27)=abb481(70)
      acd481(28)=spvak7k2(iv2)
      acd481(29)=abb481(40)
      acd481(30)=spvak1k6(iv1)
      acd481(31)=spvak7k2(iv1)
      acd481(32)=abb481(68)
      acd481(33)=spvak1k2(iv2)
      acd481(34)=abb481(18)
      acd481(35)=spvak4k2(iv2)
      acd481(36)=abb481(22)
      acd481(37)=spvak1k2(iv1)
      acd481(38)=spvak4k2(iv1)
      acd481(39)=abb481(21)
      acd481(40)=abb481(15)
      acd481(41)=abb481(7)
      acd481(42)=abb481(25)
      acd481(43)=spvak3k2(iv2)
      acd481(44)=abb481(56)
      acd481(45)=spvak3k2(iv1)
      acd481(46)=abb481(66)
      acd481(47)=abb481(54)
      acd481(48)=abb481(29)
      acd481(49)=abb481(47)
      acd481(50)=spvak1k3(iv2)
      acd481(51)=abb481(30)
      acd481(52)=spvak1k7(iv2)
      acd481(53)=abb481(58)
      acd481(54)=spvak1k3(iv1)
      acd481(55)=spvak1k7(iv1)
      acd481(56)=acd481(44)*acd481(43)
      acd481(57)=acd481(35)*acd481(42)
      acd481(58)=acd481(33)*acd481(41)
      acd481(59)=acd481(10)*acd481(7)
      acd481(60)=acd481(26)*acd481(39)
      acd481(61)=acd481(28)*acd481(40)
      acd481(56)=acd481(61)+acd481(60)+acd481(59)+acd481(58)+acd481(56)+acd481(&
      &57)
      acd481(56)=acd481(12)*acd481(56)
      acd481(57)=acd481(35)*acd481(36)
      acd481(58)=acd481(33)*acd481(34)
      acd481(59)=acd481(10)*acd481(5)
      acd481(60)=acd481(26)*acd481(32)
      acd481(61)=acd481(22)*acd481(18)
      acd481(62)=acd481(28)*acd481(29)
      acd481(57)=acd481(62)+acd481(61)+acd481(60)+acd481(59)+acd481(57)+acd481(&
      &58)
      acd481(57)=acd481(11)*acd481(57)
      acd481(58)=acd481(44)*acd481(45)
      acd481(59)=acd481(38)*acd481(42)
      acd481(60)=acd481(37)*acd481(41)
      acd481(61)=acd481(3)*acd481(7)
      acd481(62)=acd481(30)*acd481(39)
      acd481(63)=acd481(31)*acd481(40)
      acd481(58)=acd481(63)+acd481(62)+acd481(61)+acd481(60)+acd481(58)+acd481(&
      &59)
      acd481(58)=acd481(6)*acd481(58)
      acd481(59)=acd481(29)*acd481(31)
      acd481(60)=acd481(36)*acd481(38)
      acd481(61)=acd481(37)*acd481(34)
      acd481(62)=acd481(3)*acd481(5)
      acd481(63)=acd481(30)*acd481(32)
      acd481(64)=acd481(14)*acd481(18)
      acd481(60)=acd481(59)+acd481(64)+acd481(63)+acd481(62)+acd481(60)+acd481(&
      &61)
      acd481(60)=acd481(4)*acd481(60)
      acd481(61)=acd481(33)*acd481(48)
      acd481(62)=acd481(10)*acd481(9)
      acd481(63)=acd481(26)*acd481(46)
      acd481(64)=acd481(22)*acd481(19)
      acd481(61)=acd481(64)+acd481(63)+acd481(61)+acd481(62)
      acd481(61)=acd481(13)*acd481(61)
      acd481(62)=acd481(37)*acd481(48)
      acd481(63)=acd481(3)*acd481(9)
      acd481(64)=acd481(30)*acd481(46)
      acd481(65)=acd481(14)*acd481(19)
      acd481(62)=acd481(65)+acd481(64)+acd481(62)+acd481(63)
      acd481(62)=acd481(8)*acd481(62)
      acd481(63)=acd481(25)*acd481(49)
      acd481(64)=acd481(13)*acd481(47)
      acd481(65)=acd481(23)+acd481(24)
      acd481(66)=acd481(29)*acd481(65)
      acd481(63)=acd481(66)+acd481(63)+acd481(64)
      acd481(63)=acd481(28)*acd481(63)
      acd481(64)=acd481(30)*acd481(27)
      acd481(59)=acd481(59)+acd481(64)
      acd481(64)=acd481(15)+acd481(17)
      acd481(59)=acd481(64)*acd481(59)
      acd481(66)=acd481(53)*acd481(52)
      acd481(67)=acd481(51)*acd481(50)
      acd481(66)=acd481(66)+acd481(67)
      acd481(66)=acd481(25)*acd481(66)
      acd481(67)=acd481(53)*acd481(55)
      acd481(68)=acd481(51)*acd481(54)
      acd481(67)=acd481(67)+acd481(68)
      acd481(67)=acd481(20)*acd481(67)
      acd481(68)=acd481(25)*acd481(21)
      acd481(69)=-acd481(16)*acd481(65)
      acd481(68)=acd481(68)+acd481(69)
      acd481(68)=acd481(22)*acd481(68)
      acd481(69)=acd481(20)*acd481(21)
      acd481(64)=-acd481(16)*acd481(64)
      acd481(64)=acd481(69)+acd481(64)
      acd481(64)=acd481(14)*acd481(64)
      acd481(69)=acd481(20)*acd481(49)
      acd481(70)=acd481(8)*acd481(47)
      acd481(69)=acd481(69)+acd481(70)
      acd481(69)=acd481(31)*acd481(69)
      acd481(70)=acd481(1)*acd481(2)
      acd481(65)=acd481(26)*acd481(27)*acd481(65)
      brack=acd481(56)+acd481(57)+acd481(58)+acd481(59)+acd481(60)+acd481(61)+a&
      &cd481(62)+acd481(63)+acd481(64)+acd481(65)+acd481(66)+acd481(67)+acd481(&
      &68)+acd481(69)+2.0_ki*acd481(70)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd481h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(94) :: acd481
      complex(ki) :: brack
      acd481(1)=d(iv1,iv2)
      acd481(2)=k1(iv3)
      acd481(3)=abb481(43)
      acd481(4)=k2(iv3)
      acd481(5)=abb481(17)
      acd481(6)=k3(iv3)
      acd481(7)=abb481(41)
      acd481(8)=k4(iv3)
      acd481(9)=k7(iv3)
      acd481(10)=spvak1k2(iv3)
      acd481(11)=abb481(10)
      acd481(12)=spvak1k6(iv3)
      acd481(13)=abb481(67)
      acd481(14)=spvak4k2(iv3)
      acd481(15)=abb481(19)
      acd481(16)=spvak4k3(iv3)
      acd481(17)=abb481(55)
      acd481(18)=spvak5k6(iv3)
      acd481(19)=abb481(51)
      acd481(20)=spvak7k2(iv3)
      acd481(21)=abb481(45)
      acd481(22)=d(iv1,iv3)
      acd481(23)=k1(iv2)
      acd481(24)=k2(iv2)
      acd481(25)=k3(iv2)
      acd481(26)=k4(iv2)
      acd481(27)=k7(iv2)
      acd481(28)=spvak1k2(iv2)
      acd481(29)=spvak1k6(iv2)
      acd481(30)=spvak4k2(iv2)
      acd481(31)=spvak4k3(iv2)
      acd481(32)=spvak5k6(iv2)
      acd481(33)=spvak7k2(iv2)
      acd481(34)=d(iv2,iv3)
      acd481(35)=k1(iv1)
      acd481(36)=k2(iv1)
      acd481(37)=k3(iv1)
      acd481(38)=k4(iv1)
      acd481(39)=k7(iv1)
      acd481(40)=spvak1k2(iv1)
      acd481(41)=spvak1k6(iv1)
      acd481(42)=spvak4k2(iv1)
      acd481(43)=spvak4k3(iv1)
      acd481(44)=spvak5k6(iv1)
      acd481(45)=spvak7k2(iv1)
      acd481(46)=spvak2k7(iv3)
      acd481(47)=abb481(61)
      acd481(48)=spvak2k7(iv2)
      acd481(49)=spvak2k7(iv1)
      acd481(50)=abb481(23)
      acd481(51)=abb481(38)
      acd481(52)=abb481(42)
      acd481(53)=spvak5k2(iv3)
      acd481(54)=abb481(20)
      acd481(55)=spvak5k2(iv2)
      acd481(56)=spvak5k2(iv1)
      acd481(57)=abb481(39)
      acd481(58)=spvak1k3(iv3)
      acd481(59)=abb481(12)
      acd481(60)=spvak1k3(iv2)
      acd481(61)=spvak1k3(iv1)
      acd481(62)=abb481(37)
      acd481(63)=abb481(64)
      acd481(64)=abb481(28)
      acd481(65)=abb481(13)
      acd481(66)=spvak1k7(iv3)
      acd481(67)=abb481(63)
      acd481(68)=spvak1k7(iv2)
      acd481(69)=abb481(32)
      acd481(70)=abb481(62)
      acd481(71)=spvak3k2(iv3)
      acd481(72)=abb481(27)
      acd481(73)=spvak3k2(iv2)
      acd481(74)=spvak1k7(iv1)
      acd481(75)=spvak3k2(iv1)
      acd481(76)=abb481(52)
      acd481(77)=abb481(69)
      acd481(78)=abb481(65)
      acd481(79)=acd481(39)+acd481(37)+acd481(38)
      acd481(80)=acd481(7)*acd481(79)
      acd481(81)=acd481(11)*acd481(40)
      acd481(82)=acd481(3)*acd481(35)
      acd481(83)=acd481(45)*acd481(21)
      acd481(84)=acd481(36)*acd481(5)
      acd481(85)=acd481(41)*acd481(13)
      acd481(86)=acd481(42)*acd481(15)
      acd481(80)=acd481(86)+acd481(85)+acd481(84)+acd481(83)+acd481(81)+acd481(&
      &82)+acd481(80)
      acd481(80)=acd481(34)*acd481(80)
      acd481(81)=acd481(27)+acd481(25)+acd481(26)
      acd481(82)=acd481(7)*acd481(81)
      acd481(83)=acd481(11)*acd481(28)
      acd481(84)=acd481(3)*acd481(23)
      acd481(85)=acd481(33)*acd481(21)
      acd481(86)=acd481(24)*acd481(5)
      acd481(87)=acd481(29)*acd481(13)
      acd481(88)=acd481(30)*acd481(15)
      acd481(82)=acd481(88)+acd481(87)+acd481(86)+acd481(85)+acd481(83)+acd481(&
      &84)+acd481(82)
      acd481(82)=acd481(22)*acd481(82)
      acd481(83)=acd481(9)+acd481(6)+acd481(8)
      acd481(84)=acd481(7)*acd481(83)
      acd481(85)=acd481(10)*acd481(11)
      acd481(86)=acd481(2)*acd481(3)
      acd481(87)=acd481(20)*acd481(21)
      acd481(88)=acd481(4)*acd481(5)
      acd481(89)=acd481(12)*acd481(13)
      acd481(90)=acd481(14)*acd481(15)
      acd481(84)=acd481(90)+acd481(89)+acd481(88)+acd481(87)+acd481(85)+acd481(&
      &86)+acd481(84)
      acd481(84)=acd481(1)*acd481(84)
      acd481(80)=acd481(84)+acd481(82)+acd481(80)
      acd481(82)=acd481(4)-acd481(2)
      acd481(82)=acd481(82)*acd481(47)
      acd481(84)=acd481(72)*acd481(71)
      acd481(85)=acd481(69)*acd481(20)
      acd481(86)=acd481(62)*acd481(10)
      acd481(87)=acd481(53)*acd481(70)
      acd481(88)=acd481(12)*acd481(63)
      acd481(89)=acd481(14)*acd481(64)
      acd481(82)=acd481(86)+acd481(87)+acd481(88)+acd481(89)+acd481(82)+acd481(&
      &84)+acd481(85)
      acd481(84)=acd481(31)*acd481(82)
      acd481(85)=acd481(24)-acd481(23)
      acd481(85)=acd481(85)*acd481(47)
      acd481(86)=acd481(72)*acd481(73)
      acd481(87)=acd481(69)*acd481(33)
      acd481(88)=acd481(62)*acd481(28)
      acd481(89)=acd481(55)*acd481(70)
      acd481(90)=acd481(29)*acd481(63)
      acd481(91)=acd481(30)*acd481(64)
      acd481(85)=acd481(88)+acd481(89)+acd481(90)+acd481(91)+acd481(85)+acd481(&
      &86)+acd481(87)
      acd481(86)=acd481(16)*acd481(85)
      acd481(87)=acd481(78)*acd481(66)
      acd481(88)=acd481(77)*acd481(58)
      acd481(89)=acd481(76)*acd481(20)
      acd481(90)=acd481(14)*acd481(65)
      acd481(87)=-acd481(87)-acd481(88)+acd481(89)-acd481(90)
      acd481(88)=-acd481(32)*acd481(87)
      acd481(89)=acd481(78)*acd481(68)
      acd481(90)=acd481(77)*acd481(60)
      acd481(91)=acd481(76)*acd481(33)
      acd481(92)=acd481(30)*acd481(65)
      acd481(89)=-acd481(89)-acd481(90)+acd481(91)-acd481(92)
      acd481(90)=-acd481(18)*acd481(89)
      acd481(91)=acd481(55)*acd481(83)
      acd481(92)=acd481(53)*acd481(81)
      acd481(91)=acd481(92)+acd481(91)
      acd481(91)=acd481(54)*acd481(91)
      acd481(92)=-acd481(30)*acd481(83)
      acd481(93)=-acd481(14)*acd481(81)
      acd481(92)=acd481(93)+acd481(92)
      acd481(92)=acd481(52)*acd481(92)
      acd481(93)=-acd481(29)*acd481(83)
      acd481(94)=-acd481(12)*acd481(81)
      acd481(93)=acd481(94)+acd481(93)
      acd481(93)=acd481(51)*acd481(93)
      acd481(84)=acd481(86)+acd481(84)+acd481(93)+acd481(92)+acd481(91)+acd481(&
      &88)+acd481(90)
      acd481(84)=acd481(49)*acd481(84)
      acd481(82)=acd481(43)*acd481(82)
      acd481(86)=acd481(36)-acd481(35)
      acd481(86)=acd481(86)*acd481(47)
      acd481(88)=acd481(72)*acd481(75)
      acd481(90)=acd481(69)*acd481(45)
      acd481(91)=acd481(62)*acd481(40)
      acd481(92)=acd481(56)*acd481(70)
      acd481(93)=acd481(41)*acd481(63)
      acd481(94)=acd481(42)*acd481(64)
      acd481(86)=acd481(91)+acd481(92)+acd481(93)+acd481(94)+acd481(86)+acd481(&
      &88)+acd481(90)
      acd481(88)=acd481(16)*acd481(86)
      acd481(87)=-acd481(44)*acd481(87)
      acd481(90)=acd481(78)*acd481(74)
      acd481(91)=acd481(77)*acd481(61)
      acd481(92)=acd481(76)*acd481(45)
      acd481(93)=acd481(42)*acd481(65)
      acd481(90)=-acd481(90)-acd481(91)+acd481(92)-acd481(93)
      acd481(91)=-acd481(18)*acd481(90)
      acd481(92)=acd481(56)*acd481(83)
      acd481(93)=acd481(53)*acd481(79)
      acd481(92)=acd481(93)+acd481(92)
      acd481(92)=acd481(54)*acd481(92)
      acd481(93)=-acd481(42)*acd481(83)
      acd481(94)=-acd481(14)*acd481(79)
      acd481(93)=acd481(94)+acd481(93)
      acd481(93)=acd481(52)*acd481(93)
      acd481(83)=-acd481(41)*acd481(83)
      acd481(94)=-acd481(12)*acd481(79)
      acd481(83)=acd481(94)+acd481(83)
      acd481(83)=acd481(51)*acd481(83)
      acd481(82)=acd481(88)+acd481(82)+acd481(83)+acd481(93)+acd481(92)+acd481(&
      &87)+acd481(91)
      acd481(82)=acd481(48)*acd481(82)
      acd481(83)=acd481(43)*acd481(85)
      acd481(85)=acd481(31)*acd481(86)
      acd481(86)=-acd481(44)*acd481(89)
      acd481(87)=-acd481(32)*acd481(90)
      acd481(88)=acd481(56)*acd481(81)
      acd481(89)=acd481(55)*acd481(79)
      acd481(88)=acd481(89)+acd481(88)
      acd481(88)=acd481(54)*acd481(88)
      acd481(89)=-acd481(42)*acd481(81)
      acd481(90)=-acd481(30)*acd481(79)
      acd481(89)=acd481(90)+acd481(89)
      acd481(89)=acd481(52)*acd481(89)
      acd481(81)=-acd481(41)*acd481(81)
      acd481(79)=-acd481(29)*acd481(79)
      acd481(79)=acd481(79)+acd481(81)
      acd481(79)=acd481(51)*acd481(79)
      acd481(79)=acd481(85)+acd481(83)+acd481(79)+acd481(89)+acd481(88)+acd481(&
      &86)+acd481(87)
      acd481(79)=acd481(46)*acd481(79)
      acd481(81)=acd481(59)*acd481(58)
      acd481(83)=acd481(50)*acd481(4)
      acd481(85)=acd481(14)*acd481(57)
      acd481(81)=-acd481(85)+acd481(81)+acd481(83)
      acd481(83)=acd481(27)*acd481(81)
      acd481(85)=acd481(59)*acd481(60)
      acd481(86)=acd481(50)*acd481(24)
      acd481(87)=acd481(30)*acd481(57)
      acd481(85)=-acd481(87)+acd481(85)+acd481(86)
      acd481(86)=acd481(9)*acd481(85)
      acd481(87)=2.0_ki*acd481(19)
      acd481(88)=acd481(34)*acd481(87)
      acd481(83)=acd481(86)+acd481(88)+acd481(83)
      acd481(83)=acd481(44)*acd481(83)
      acd481(81)=acd481(39)*acd481(81)
      acd481(86)=acd481(59)*acd481(61)
      acd481(88)=acd481(50)*acd481(36)
      acd481(89)=acd481(42)*acd481(57)
      acd481(86)=-acd481(89)+acd481(86)+acd481(88)
      acd481(88)=acd481(9)*acd481(86)
      acd481(89)=acd481(22)*acd481(87)
      acd481(81)=acd481(88)+acd481(89)+acd481(81)
      acd481(81)=acd481(32)*acd481(81)
      acd481(85)=acd481(39)*acd481(85)
      acd481(86)=acd481(27)*acd481(86)
      acd481(87)=acd481(1)*acd481(87)
      acd481(85)=acd481(86)+acd481(87)+acd481(85)
      acd481(85)=acd481(18)*acd481(85)
      acd481(86)=2.0_ki*acd481(17)
      acd481(87)=acd481(34)*acd481(86)
      acd481(88)=acd481(32)*acd481(67)
      acd481(89)=acd481(66)*acd481(88)
      acd481(90)=acd481(18)*acd481(67)
      acd481(91)=acd481(68)*acd481(90)
      acd481(87)=acd481(91)+acd481(87)+acd481(89)
      acd481(87)=acd481(43)*acd481(87)
      acd481(89)=acd481(22)*acd481(86)
      acd481(91)=acd481(44)*acd481(67)
      acd481(92)=acd481(66)*acd481(91)
      acd481(90)=acd481(74)*acd481(90)
      acd481(89)=acd481(90)+acd481(89)+acd481(92)
      acd481(89)=acd481(31)*acd481(89)
      acd481(86)=acd481(1)*acd481(86)
      acd481(90)=acd481(68)*acd481(91)
      acd481(88)=acd481(74)*acd481(88)
      acd481(86)=acd481(88)+acd481(86)+acd481(90)
      acd481(86)=acd481(16)*acd481(86)
      brack=acd481(79)+2.0_ki*acd481(80)+acd481(81)+acd481(82)+acd481(83)+acd48&
      &1(84)+acd481(85)+acd481(86)+acd481(87)+acd481(89)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd481h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(65) :: acd481
      complex(ki) :: brack
      acd481(1)=d(iv1,iv2)
      acd481(2)=d(iv3,iv4)
      acd481(3)=abb481(46)
      acd481(4)=k2(iv3)
      acd481(5)=spvak5k6(iv4)
      acd481(6)=abb481(52)
      acd481(7)=k2(iv4)
      acd481(8)=spvak5k6(iv3)
      acd481(9)=spvak1k3(iv4)
      acd481(10)=abb481(34)
      acd481(11)=spvak4k2(iv4)
      acd481(12)=abb481(44)
      acd481(13)=spvak4k3(iv4)
      acd481(14)=abb481(53)
      acd481(15)=spvak1k3(iv3)
      acd481(16)=spvak4k2(iv3)
      acd481(17)=spvak4k3(iv3)
      acd481(18)=spvak1k6(iv3)
      acd481(19)=spvak2k7(iv4)
      acd481(20)=abb481(50)
      acd481(21)=spvak1k6(iv4)
      acd481(22)=spvak2k7(iv3)
      acd481(23)=abb481(27)
      acd481(24)=spvak5k2(iv4)
      acd481(25)=abb481(60)
      acd481(26)=spvak5k2(iv3)
      acd481(27)=d(iv1,iv3)
      acd481(28)=d(iv2,iv4)
      acd481(29)=k2(iv2)
      acd481(30)=spvak5k6(iv2)
      acd481(31)=spvak1k3(iv2)
      acd481(32)=spvak4k2(iv2)
      acd481(33)=spvak4k3(iv2)
      acd481(34)=spvak1k6(iv2)
      acd481(35)=spvak2k7(iv2)
      acd481(36)=spvak5k2(iv2)
      acd481(37)=d(iv1,iv4)
      acd481(38)=d(iv2,iv3)
      acd481(39)=k2(iv1)
      acd481(40)=spvak5k6(iv1)
      acd481(41)=spvak1k3(iv1)
      acd481(42)=spvak4k2(iv1)
      acd481(43)=spvak4k3(iv1)
      acd481(44)=spvak1k6(iv1)
      acd481(45)=spvak2k7(iv1)
      acd481(46)=spvak5k2(iv1)
      acd481(47)=spvak1k2(iv4)
      acd481(48)=abb481(11)
      acd481(49)=spvak1k2(iv3)
      acd481(50)=spvak1k2(iv2)
      acd481(51)=spvak1k2(iv1)
      acd481(52)=acd481(14)*acd481(13)
      acd481(53)=acd481(12)*acd481(11)
      acd481(54)=acd481(10)*acd481(9)
      acd481(55)=acd481(6)*acd481(7)
      acd481(52)=-acd481(55)+acd481(54)+acd481(52)+acd481(53)
      acd481(53)=acd481(38)*acd481(52)
      acd481(54)=acd481(14)*acd481(17)
      acd481(55)=acd481(12)*acd481(16)
      acd481(56)=acd481(10)*acd481(15)
      acd481(57)=acd481(6)*acd481(4)
      acd481(54)=-acd481(57)+acd481(56)+acd481(54)+acd481(55)
      acd481(55)=acd481(28)*acd481(54)
      acd481(56)=acd481(14)*acd481(33)
      acd481(57)=acd481(12)*acd481(32)
      acd481(58)=acd481(10)*acd481(31)
      acd481(59)=acd481(6)*acd481(29)
      acd481(56)=-acd481(59)+acd481(58)+acd481(56)+acd481(57)
      acd481(57)=acd481(2)*acd481(56)
      acd481(53)=acd481(57)+acd481(53)+acd481(55)
      acd481(53)=acd481(40)*acd481(53)
      acd481(55)=acd481(37)*acd481(54)
      acd481(57)=acd481(27)*acd481(52)
      acd481(58)=acd481(14)*acd481(43)
      acd481(59)=acd481(12)*acd481(42)
      acd481(60)=acd481(10)*acd481(41)
      acd481(61)=acd481(6)*acd481(39)
      acd481(58)=-acd481(61)+acd481(60)+acd481(58)+acd481(59)
      acd481(59)=acd481(2)*acd481(58)
      acd481(55)=acd481(59)+acd481(55)+acd481(57)
      acd481(55)=acd481(30)*acd481(55)
      acd481(57)=acd481(37)*acd481(56)
      acd481(59)=acd481(28)*acd481(58)
      acd481(52)=acd481(1)*acd481(52)
      acd481(52)=acd481(52)+acd481(57)+acd481(59)
      acd481(52)=acd481(8)*acd481(52)
      acd481(57)=acd481(38)*acd481(58)
      acd481(56)=acd481(27)*acd481(56)
      acd481(54)=acd481(1)*acd481(54)
      acd481(54)=acd481(54)+acd481(57)+acd481(56)
      acd481(54)=acd481(5)*acd481(54)
      acd481(56)=acd481(25)*acd481(36)
      acd481(57)=acd481(23)*acd481(32)
      acd481(58)=acd481(20)*acd481(34)
      acd481(56)=-acd481(58)+acd481(56)-acd481(57)
      acd481(57)=-acd481(37)*acd481(56)
      acd481(58)=acd481(25)*acd481(46)
      acd481(59)=acd481(23)*acd481(42)
      acd481(60)=acd481(20)*acd481(44)
      acd481(58)=-acd481(60)+acd481(58)-acd481(59)
      acd481(59)=-acd481(28)*acd481(58)
      acd481(57)=acd481(57)+acd481(59)
      acd481(57)=acd481(22)*acd481(57)
      acd481(59)=-acd481(38)*acd481(58)
      acd481(60)=-acd481(27)*acd481(56)
      acd481(59)=acd481(59)+acd481(60)
      acd481(59)=acd481(19)*acd481(59)
      acd481(56)=-acd481(45)*acd481(56)
      acd481(58)=-acd481(35)*acd481(58)
      acd481(56)=acd481(56)+acd481(58)
      acd481(56)=acd481(2)*acd481(56)
      acd481(58)=acd481(25)*acd481(24)
      acd481(60)=acd481(23)*acd481(11)
      acd481(61)=acd481(20)*acd481(21)
      acd481(58)=-acd481(61)+acd481(58)-acd481(60)
      acd481(60)=-acd481(22)*acd481(58)
      acd481(61)=acd481(25)*acd481(26)
      acd481(62)=acd481(23)*acd481(16)
      acd481(63)=acd481(20)*acd481(18)
      acd481(61)=-acd481(63)+acd481(61)-acd481(62)
      acd481(62)=-acd481(19)*acd481(61)
      acd481(63)=4.0_ki*acd481(3)
      acd481(64)=acd481(2)*acd481(63)
      acd481(60)=acd481(64)+acd481(60)+acd481(62)
      acd481(60)=acd481(1)*acd481(60)
      acd481(62)=-acd481(45)*acd481(58)
      acd481(64)=acd481(37)*acd481(63)
      acd481(62)=acd481(62)+acd481(64)
      acd481(62)=acd481(38)*acd481(62)
      acd481(64)=-acd481(35)*acd481(37)
      acd481(65)=-acd481(28)*acd481(45)
      acd481(64)=acd481(65)+acd481(64)
      acd481(61)=acd481(61)*acd481(64)
      acd481(58)=-acd481(35)*acd481(58)
      acd481(63)=acd481(28)*acd481(63)
      acd481(58)=acd481(58)+acd481(63)
      acd481(58)=acd481(27)*acd481(58)
      acd481(52)=acd481(54)+acd481(52)+acd481(55)+acd481(53)+acd481(60)+acd481(&
      &56)+acd481(59)+acd481(57)+acd481(58)+acd481(61)+acd481(62)
      acd481(53)=acd481(17)*acd481(47)
      acd481(54)=acd481(13)*acd481(49)
      acd481(53)=acd481(53)+acd481(54)
      acd481(54)=-acd481(35)*acd481(53)
      acd481(55)=acd481(33)*acd481(47)
      acd481(56)=acd481(13)*acd481(50)
      acd481(55)=acd481(55)+acd481(56)
      acd481(56)=-acd481(22)*acd481(55)
      acd481(57)=acd481(33)*acd481(49)
      acd481(58)=acd481(17)*acd481(50)
      acd481(57)=acd481(57)+acd481(58)
      acd481(58)=-acd481(19)*acd481(57)
      acd481(54)=acd481(58)+acd481(54)+acd481(56)
      acd481(54)=acd481(40)*acd481(54)
      acd481(53)=-acd481(45)*acd481(53)
      acd481(56)=acd481(43)*acd481(47)
      acd481(58)=acd481(13)*acd481(51)
      acd481(56)=acd481(56)+acd481(58)
      acd481(58)=-acd481(22)*acd481(56)
      acd481(59)=acd481(43)*acd481(49)
      acd481(60)=acd481(17)*acd481(51)
      acd481(59)=acd481(59)+acd481(60)
      acd481(60)=-acd481(19)*acd481(59)
      acd481(53)=acd481(60)+acd481(53)+acd481(58)
      acd481(53)=acd481(30)*acd481(53)
      acd481(55)=-acd481(45)*acd481(55)
      acd481(56)=-acd481(35)*acd481(56)
      acd481(58)=acd481(43)*acd481(50)
      acd481(60)=acd481(33)*acd481(51)
      acd481(58)=acd481(58)+acd481(60)
      acd481(60)=-acd481(19)*acd481(58)
      acd481(55)=acd481(60)+acd481(55)+acd481(56)
      acd481(55)=acd481(8)*acd481(55)
      acd481(56)=-acd481(45)*acd481(57)
      acd481(57)=-acd481(35)*acd481(59)
      acd481(58)=-acd481(22)*acd481(58)
      acd481(56)=acd481(58)+acd481(56)+acd481(57)
      acd481(56)=acd481(5)*acd481(56)
      acd481(53)=acd481(56)+acd481(55)+acd481(54)+acd481(53)
      acd481(53)=acd481(48)*acd481(53)
      brack=2.0_ki*acd481(52)+acd481(53)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_abbrevd481h1
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
!---#[ subroutine reconstruct_d481:
   subroutine     reconstruct_d481(coeffs)
      use p8_cbarc_epnemumnmubarg_groups, only: tensrec_info_group1
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group1), intent(out) :: coeffs
      ! rank 4 case :
      !---[# reconstruct coeffs%coeffs_481:
      coeffs%coeffs_481%c0 = derivative(czip)
      coeffs%coeffs_481%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_481%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_481%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_481%c1(1,4) = derivative(czip,1,1,1,1)/24.0_ki
      coeffs%coeffs_481%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_481%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_481%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_481%c1(2,4) = derivative(czip,2,2,2,2)/24.0_ki
      coeffs%coeffs_481%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_481%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_481%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_481%c1(3,4) = derivative(czip,3,3,3,3)/24.0_ki
      coeffs%coeffs_481%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_481%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_481%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_481%c1(4,4) = derivative(czip,4,4,4,4)/24.0_ki
      coeffs%coeffs_481%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_481%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_481%c2(1,3) = -derivative(czip,1,2,2,2)/6.0_ki
      coeffs%coeffs_481%c2(1,4) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_481%c2(1,5) = derivative(czip,1,1,2,2)/4.0_ki
      coeffs%coeffs_481%c2(1,6) = -derivative(czip,1,1,1,2)/6.0_ki
      coeffs%coeffs_481%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_481%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_481%c2(2,3) = -derivative(czip,1,3,3,3)/6.0_ki
      coeffs%coeffs_481%c2(2,4) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_481%c2(2,5) = derivative(czip,1,1,3,3)/4.0_ki
      coeffs%coeffs_481%c2(2,6) = -derivative(czip,1,1,1,3)/6.0_ki
      coeffs%coeffs_481%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_481%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_481%c2(3,3) = -derivative(czip,1,4,4,4)/6.0_ki
      coeffs%coeffs_481%c2(3,4) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_481%c2(3,5) = derivative(czip,1,1,4,4)/4.0_ki
      coeffs%coeffs_481%c2(3,6) = -derivative(czip,1,1,1,4)/6.0_ki
      coeffs%coeffs_481%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_481%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_481%c2(4,3) = derivative(czip,2,3,3,3)/6.0_ki
      coeffs%coeffs_481%c2(4,4) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_481%c2(4,5) = derivative(czip,2,2,3,3)/4.0_ki
      coeffs%coeffs_481%c2(4,6) = derivative(czip,2,2,2,3)/6.0_ki
      coeffs%coeffs_481%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_481%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_481%c2(5,3) = derivative(czip,2,4,4,4)/6.0_ki
      coeffs%coeffs_481%c2(5,4) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_481%c2(5,5) = derivative(czip,2,2,4,4)/4.0_ki
      coeffs%coeffs_481%c2(5,6) = derivative(czip,2,2,2,4)/6.0_ki
      coeffs%coeffs_481%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_481%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_481%c2(6,3) = derivative(czip,3,4,4,4)/6.0_ki
      coeffs%coeffs_481%c2(6,4) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_481%c2(6,5) = derivative(czip,3,3,4,4)/4.0_ki
      coeffs%coeffs_481%c2(6,6) = derivative(czip,3,3,3,4)/6.0_ki
      coeffs%coeffs_481%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_481%c3(1,2) = -derivative(czip,1,2,3,3)/2.0_ki
      coeffs%coeffs_481%c3(1,3) = -derivative(czip,1,2,2,3)/2.0_ki
      coeffs%coeffs_481%c3(1,4) = derivative(czip,1,1,2,3)/2.0_ki
      coeffs%coeffs_481%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_481%c3(2,2) = -derivative(czip,1,2,4,4)/2.0_ki
      coeffs%coeffs_481%c3(2,3) = -derivative(czip,1,2,2,4)/2.0_ki
      coeffs%coeffs_481%c3(2,4) = derivative(czip,1,1,2,4)/2.0_ki
      coeffs%coeffs_481%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_481%c3(3,2) = -derivative(czip,1,3,4,4)/2.0_ki
      coeffs%coeffs_481%c3(3,3) = -derivative(czip,1,3,3,4)/2.0_ki
      coeffs%coeffs_481%c3(3,4) = derivative(czip,1,1,3,4)/2.0_ki
      coeffs%coeffs_481%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_481%c3(4,2) = derivative(czip,2,3,4,4)/2.0_ki
      coeffs%coeffs_481%c3(4,3) = derivative(czip,2,3,3,4)/2.0_ki
      coeffs%coeffs_481%c3(4,4) = derivative(czip,2,2,3,4)/2.0_ki
      coeffs%coeffs_481%c4(1,1) = -derivative(czip,1,2,3,4)
      !---#] reconstruct coeffs%coeffs_481:
   end subroutine reconstruct_d481
!---#] subroutine reconstruct_d481:
end module     p8_cbarc_epnemumnmubarg_d481h1l1d
