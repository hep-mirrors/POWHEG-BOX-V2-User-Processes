module     p1_dbarc_epnebbbarg_d322h0l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity0d322h0l1d.f90
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
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d322
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd322h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd322
      complex(ki) :: brack
      acd322(1)=abb322(22)
      brack=acd322(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd322h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(42) :: acd322
      complex(ki) :: brack
      acd322(1)=k2(iv1)
      acd322(2)=abb322(13)
      acd322(3)=l5(iv1)
      acd322(4)=abb322(76)
      acd322(5)=l6(iv1)
      acd322(6)=abb322(57)
      acd322(7)=k7(iv1)
      acd322(8)=abb322(53)
      acd322(9)=e7(iv1)
      acd322(10)=abb322(44)
      acd322(11)=spvak1k2(iv1)
      acd322(12)=abb322(15)
      acd322(13)=spvak1k3(iv1)
      acd322(14)=abb322(12)
      acd322(15)=spvak4k2(iv1)
      acd322(16)=abb322(25)
      acd322(17)=spval6k2(iv1)
      acd322(18)=abb322(17)
      acd322(19)=spval6k3(iv1)
      acd322(20)=abb322(31)
      acd322(21)=spval6k7(iv1)
      acd322(22)=abb322(75)
      acd322(23)=spvak7k2(iv1)
      acd322(24)=abb322(27)
      acd322(25)=spvae7k2(iv1)
      acd322(26)=abb322(18)
      acd322(27)=spval6e7(iv1)
      acd322(28)=abb322(14)
      acd322(29)=acd322(2)*acd322(1)
      acd322(30)=acd322(4)*acd322(3)
      acd322(31)=acd322(6)*acd322(5)
      acd322(32)=acd322(8)*acd322(7)
      acd322(33)=acd322(10)*acd322(9)
      acd322(34)=acd322(12)*acd322(11)
      acd322(35)=acd322(14)*acd322(13)
      acd322(36)=acd322(16)*acd322(15)
      acd322(37)=acd322(18)*acd322(17)
      acd322(38)=acd322(20)*acd322(19)
      acd322(39)=acd322(22)*acd322(21)
      acd322(40)=acd322(24)*acd322(23)
      acd322(41)=acd322(26)*acd322(25)
      acd322(42)=acd322(28)*acd322(27)
      brack=acd322(29)+acd322(30)+acd322(31)+acd322(32)+acd322(33)+acd322(34)+a&
      &cd322(35)+acd322(36)+acd322(37)+acd322(38)+acd322(39)+acd322(40)+acd322(&
      &41)+acd322(42)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd322h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(96) :: acd322
      complex(ki) :: brack
      acd322(1)=d(iv1,iv2)
      acd322(2)=abb322(73)
      acd322(3)=k2(iv1)
      acd322(4)=e7(iv2)
      acd322(5)=abb322(84)
      acd322(6)=spvak1k2(iv2)
      acd322(7)=abb322(21)
      acd322(8)=spvak1k3(iv2)
      acd322(9)=abb322(46)
      acd322(10)=spval6k2(iv2)
      acd322(11)=abb322(89)
      acd322(12)=spval6k3(iv2)
      acd322(13)=abb322(69)
      acd322(14)=spvae7k2(iv2)
      acd322(15)=abb322(71)
      acd322(16)=spval6e7(iv2)
      acd322(17)=abb322(121)
      acd322(18)=k2(iv2)
      acd322(19)=e7(iv1)
      acd322(20)=spvak1k2(iv1)
      acd322(21)=spvak1k3(iv1)
      acd322(22)=spval6k2(iv1)
      acd322(23)=spval6k3(iv1)
      acd322(24)=spvae7k2(iv1)
      acd322(25)=spval6e7(iv1)
      acd322(26)=l5(iv1)
      acd322(27)=abb322(125)
      acd322(28)=abb322(24)
      acd322(29)=abb322(104)
      acd322(30)=l5(iv2)
      acd322(31)=l6(iv1)
      acd322(32)=abb322(68)
      acd322(33)=abb322(20)
      acd322(34)=abb322(42)
      acd322(35)=abb322(83)
      acd322(36)=abb322(64)
      acd322(37)=spvak4k2(iv2)
      acd322(38)=abb322(108)
      acd322(39)=l6(iv2)
      acd322(40)=spvak4k2(iv1)
      acd322(41)=k7(iv1)
      acd322(42)=abb322(201)
      acd322(43)=abb322(26)
      acd322(44)=abb322(45)
      acd322(45)=abb322(110)
      acd322(46)=k7(iv2)
      acd322(47)=abb322(16)
      acd322(48)=abb322(19)
      acd322(49)=abb322(43)
      acd322(50)=abb322(59)
      acd322(51)=abb322(39)
      acd322(52)=spval5k2(iv2)
      acd322(53)=abb322(91)
      acd322(54)=spval5k3(iv2)
      acd322(55)=abb322(100)
      acd322(56)=spval6l5(iv2)
      acd322(57)=abb322(77)
      acd322(58)=spval6k7(iv2)
      acd322(59)=abb322(81)
      acd322(60)=spvak7k2(iv2)
      acd322(61)=abb322(88)
      acd322(62)=spval5k2(iv1)
      acd322(63)=spval5k3(iv1)
      acd322(64)=spval6l5(iv1)
      acd322(65)=spval6k7(iv1)
      acd322(66)=spvak7k2(iv1)
      acd322(67)=abb322(30)
      acd322(68)=abb322(29)
      acd322(69)=abb322(10)
      acd322(70)=abb322(35)
      acd322(71)=abb322(34)
      acd322(72)=abb322(60)
      acd322(73)=abb322(54)
      acd322(74)=abb322(51)
      acd322(75)=abb322(55)
      acd322(76)=abb322(56)
      acd322(77)=abb322(118)
      acd322(78)=abb322(28)
      acd322(79)=abb322(117)
      acd322(80)=abb322(47)
      acd322(81)=abb322(123)
      acd322(82)=acd322(57)*acd322(56)
      acd322(83)=acd322(55)*acd322(54)
      acd322(84)=acd322(53)*acd322(52)
      acd322(85)=acd322(30)*acd322(27)
      acd322(86)=acd322(60)*acd322(61)
      acd322(87)=acd322(58)*acd322(59)
      acd322(88)=acd322(12)*acd322(50)
      acd322(89)=acd322(46)*acd322(42)
      acd322(90)=acd322(39)*acd322(32)
      acd322(91)=acd322(18)*acd322(5)
      acd322(92)=acd322(10)*acd322(49)
      acd322(93)=acd322(37)*acd322(51)
      acd322(94)=acd322(8)*acd322(48)
      acd322(95)=acd322(6)*acd322(47)
      acd322(82)=acd322(95)+acd322(94)+acd322(93)+acd322(92)+acd322(91)+acd322(&
      &90)+acd322(89)+acd322(88)+acd322(87)+acd322(86)+acd322(85)+acd322(84)+ac&
      &d322(82)+acd322(83)
      acd322(82)=acd322(19)*acd322(82)
      acd322(83)=acd322(57)*acd322(64)
      acd322(84)=acd322(55)*acd322(63)
      acd322(85)=acd322(53)*acd322(62)
      acd322(86)=acd322(26)*acd322(27)
      acd322(87)=acd322(66)*acd322(61)
      acd322(88)=acd322(65)*acd322(59)
      acd322(89)=acd322(23)*acd322(50)
      acd322(90)=acd322(41)*acd322(42)
      acd322(91)=acd322(31)*acd322(32)
      acd322(92)=acd322(22)*acd322(49)
      acd322(93)=acd322(3)*acd322(5)
      acd322(94)=acd322(40)*acd322(51)
      acd322(95)=acd322(21)*acd322(48)
      acd322(96)=acd322(20)*acd322(47)
      acd322(83)=acd322(96)+acd322(95)+acd322(94)+acd322(93)+acd322(92)+acd322(&
      &91)+acd322(90)+acd322(89)+acd322(88)+acd322(87)+acd322(86)+acd322(85)+ac&
      &d322(83)+acd322(84)
      acd322(83)=acd322(4)*acd322(83)
      acd322(84)=acd322(60)*acd322(76)
      acd322(85)=acd322(58)*acd322(75)
      acd322(86)=acd322(16)*acd322(74)
      acd322(87)=acd322(14)*acd322(73)
      acd322(88)=acd322(46)*acd322(44)
      acd322(89)=acd322(39)*acd322(34)
      acd322(90)=acd322(18)*acd322(9)
      acd322(91)=acd322(10)*acd322(72)
      acd322(84)=acd322(91)+acd322(90)+acd322(89)+acd322(88)+acd322(87)+acd322(&
      &86)+acd322(84)+acd322(85)
      acd322(84)=acd322(21)*acd322(84)
      acd322(85)=acd322(60)*acd322(71)
      acd322(86)=acd322(58)*acd322(70)
      acd322(87)=acd322(16)*acd322(69)
      acd322(88)=acd322(14)*acd322(68)
      acd322(89)=acd322(46)*acd322(43)
      acd322(90)=acd322(39)*acd322(33)
      acd322(91)=acd322(18)*acd322(7)
      acd322(92)=acd322(10)*acd322(67)
      acd322(85)=acd322(92)+acd322(91)+acd322(90)+acd322(89)+acd322(88)+acd322(&
      &87)+acd322(85)+acd322(86)
      acd322(85)=acd322(20)*acd322(85)
      acd322(86)=acd322(66)*acd322(76)
      acd322(87)=acd322(65)*acd322(75)
      acd322(88)=acd322(25)*acd322(74)
      acd322(89)=acd322(24)*acd322(73)
      acd322(90)=acd322(41)*acd322(44)
      acd322(91)=acd322(31)*acd322(34)
      acd322(92)=acd322(22)*acd322(72)
      acd322(93)=acd322(3)*acd322(9)
      acd322(86)=acd322(93)+acd322(92)+acd322(91)+acd322(90)+acd322(89)+acd322(&
      &88)+acd322(86)+acd322(87)
      acd322(86)=acd322(8)*acd322(86)
      acd322(87)=acd322(66)*acd322(71)
      acd322(88)=acd322(65)*acd322(70)
      acd322(89)=acd322(25)*acd322(69)
      acd322(90)=acd322(24)*acd322(68)
      acd322(91)=acd322(41)*acd322(43)
      acd322(92)=acd322(31)*acd322(33)
      acd322(93)=acd322(22)*acd322(67)
      acd322(94)=acd322(3)*acd322(7)
      acd322(87)=acd322(94)+acd322(93)+acd322(92)+acd322(91)+acd322(90)+acd322(&
      &89)+acd322(87)+acd322(88)
      acd322(87)=acd322(6)*acd322(87)
      acd322(88)=acd322(60)*acd322(81)
      acd322(89)=acd322(58)*acd322(80)
      acd322(90)=acd322(16)*acd322(79)
      acd322(91)=acd322(14)*acd322(78)
      acd322(92)=acd322(46)*acd322(45)
      acd322(93)=acd322(39)*acd322(38)
      acd322(94)=acd322(10)*acd322(77)
      acd322(88)=acd322(94)+acd322(93)+acd322(92)+acd322(91)+acd322(90)+acd322(&
      &88)+acd322(89)
      acd322(88)=acd322(40)*acd322(88)
      acd322(89)=acd322(66)*acd322(81)
      acd322(90)=acd322(65)*acd322(80)
      acd322(91)=acd322(25)*acd322(79)
      acd322(92)=acd322(24)*acd322(78)
      acd322(93)=acd322(41)*acd322(45)
      acd322(94)=acd322(31)*acd322(38)
      acd322(95)=acd322(22)*acd322(77)
      acd322(89)=acd322(95)+acd322(94)+acd322(93)+acd322(92)+acd322(91)+acd322(&
      &89)+acd322(90)
      acd322(89)=acd322(37)*acd322(89)
      acd322(90)=acd322(23)*acd322(13)
      acd322(91)=acd322(25)*acd322(17)
      acd322(92)=acd322(24)*acd322(15)
      acd322(93)=acd322(22)*acd322(11)
      acd322(90)=acd322(93)+acd322(92)+acd322(90)+acd322(91)
      acd322(90)=acd322(18)*acd322(90)
      acd322(91)=acd322(12)*acd322(13)
      acd322(92)=acd322(16)*acd322(17)
      acd322(93)=acd322(14)*acd322(15)
      acd322(94)=acd322(10)*acd322(11)
      acd322(91)=acd322(94)+acd322(93)+acd322(91)+acd322(92)
      acd322(91)=acd322(3)*acd322(91)
      acd322(92)=acd322(12)*acd322(36)
      acd322(93)=acd322(10)*acd322(35)
      acd322(92)=acd322(93)+acd322(92)
      acd322(93)=acd322(31)+acd322(41)
      acd322(92)=acd322(93)*acd322(92)
      acd322(93)=acd322(23)*acd322(36)
      acd322(94)=acd322(22)*acd322(35)
      acd322(93)=acd322(94)+acd322(93)
      acd322(94)=acd322(39)+acd322(46)
      acd322(93)=acd322(94)*acd322(93)
      acd322(94)=acd322(25)*acd322(29)
      acd322(95)=acd322(24)*acd322(28)
      acd322(94)=acd322(95)+acd322(94)
      acd322(94)=acd322(30)*acd322(94)
      acd322(95)=acd322(16)*acd322(29)
      acd322(96)=acd322(14)*acd322(28)
      acd322(95)=acd322(96)+acd322(95)
      acd322(95)=acd322(26)*acd322(95)
      acd322(96)=acd322(1)*acd322(2)
      brack=acd322(82)+acd322(83)+acd322(84)+acd322(85)+acd322(86)+acd322(87)+a&
      &cd322(88)+acd322(89)+acd322(90)+acd322(91)+acd322(92)+acd322(93)+acd322(&
      &94)+acd322(95)+2.0_ki*acd322(96)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd322h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(58) :: acd322
      complex(ki) :: brack
      acd322(1)=d(iv1,iv2)
      acd322(2)=e7(iv3)
      acd322(3)=abb322(78)
      acd322(4)=spvak1k2(iv3)
      acd322(5)=abb322(23)
      acd322(6)=spvak1k3(iv3)
      acd322(7)=abb322(32)
      acd322(8)=spvak4k2(iv3)
      acd322(9)=abb322(114)
      acd322(10)=spval6k2(iv3)
      acd322(11)=abb322(65)
      acd322(12)=spval6k3(iv3)
      acd322(13)=abb322(80)
      acd322(14)=spvae7k2(iv3)
      acd322(15)=abb322(86)
      acd322(16)=spval6e7(iv3)
      acd322(17)=abb322(122)
      acd322(18)=d(iv1,iv3)
      acd322(19)=e7(iv2)
      acd322(20)=spvak1k2(iv2)
      acd322(21)=spvak1k3(iv2)
      acd322(22)=spvak4k2(iv2)
      acd322(23)=spval6k2(iv2)
      acd322(24)=spval6k3(iv2)
      acd322(25)=spvae7k2(iv2)
      acd322(26)=spval6e7(iv2)
      acd322(27)=d(iv2,iv3)
      acd322(28)=e7(iv1)
      acd322(29)=spvak1k2(iv1)
      acd322(30)=spvak1k3(iv1)
      acd322(31)=spvak4k2(iv1)
      acd322(32)=spval6k2(iv1)
      acd322(33)=spval6k3(iv1)
      acd322(34)=spvae7k2(iv1)
      acd322(35)=spval6e7(iv1)
      acd322(36)=abb322(36)
      acd322(37)=spval5k2(iv3)
      acd322(38)=abb322(37)
      acd322(39)=spval5k2(iv2)
      acd322(40)=abb322(61)
      acd322(41)=abb322(66)
      acd322(42)=abb322(33)
      acd322(43)=abb322(11)
      acd322(44)=spval5k2(iv1)
      acd322(45)=acd322(17)*acd322(35)
      acd322(46)=acd322(15)*acd322(34)
      acd322(47)=acd322(13)*acd322(33)
      acd322(48)=acd322(31)*acd322(9)
      acd322(49)=acd322(30)*acd322(7)
      acd322(50)=acd322(29)*acd322(5)
      acd322(51)=acd322(32)*acd322(11)
      acd322(45)=acd322(51)+acd322(50)+acd322(49)+acd322(48)+acd322(47)+acd322(&
      &45)+acd322(46)
      acd322(45)=acd322(27)*acd322(45)
      acd322(46)=acd322(17)*acd322(26)
      acd322(47)=acd322(15)*acd322(25)
      acd322(48)=acd322(13)*acd322(24)
      acd322(49)=acd322(22)*acd322(9)
      acd322(50)=acd322(21)*acd322(7)
      acd322(51)=acd322(20)*acd322(5)
      acd322(52)=acd322(23)*acd322(11)
      acd322(46)=acd322(52)+acd322(51)+acd322(50)+acd322(49)+acd322(48)+acd322(&
      &46)+acd322(47)
      acd322(46)=acd322(18)*acd322(46)
      acd322(47)=acd322(17)*acd322(16)
      acd322(48)=acd322(15)*acd322(14)
      acd322(49)=acd322(13)*acd322(12)
      acd322(50)=acd322(8)*acd322(9)
      acd322(51)=acd322(6)*acd322(7)
      acd322(52)=acd322(4)*acd322(5)
      acd322(53)=acd322(10)*acd322(11)
      acd322(47)=acd322(53)+acd322(52)+acd322(51)+acd322(50)+acd322(49)+acd322(&
      &47)+acd322(48)
      acd322(47)=acd322(1)*acd322(47)
      acd322(45)=acd322(47)+acd322(45)+acd322(46)
      acd322(46)=acd322(42)*acd322(22)
      acd322(47)=acd322(40)*acd322(21)
      acd322(48)=acd322(36)*acd322(20)
      acd322(46)=acd322(46)+acd322(47)+acd322(48)
      acd322(47)=acd322(32)*acd322(46)
      acd322(48)=acd322(42)*acd322(31)
      acd322(49)=acd322(40)*acd322(30)
      acd322(50)=acd322(36)*acd322(29)
      acd322(48)=acd322(48)+acd322(49)+acd322(50)
      acd322(49)=acd322(23)*acd322(48)
      acd322(50)=acd322(43)*acd322(31)
      acd322(51)=acd322(41)*acd322(30)
      acd322(50)=acd322(50)+acd322(51)
      acd322(51)=acd322(39)*acd322(50)
      acd322(52)=acd322(44)*acd322(20)
      acd322(53)=acd322(39)*acd322(29)
      acd322(52)=acd322(52)+acd322(53)
      acd322(52)=acd322(38)*acd322(52)
      acd322(53)=acd322(43)*acd322(22)
      acd322(54)=acd322(44)*acd322(53)
      acd322(55)=acd322(41)*acd322(44)
      acd322(56)=acd322(21)*acd322(55)
      acd322(57)=2.0_ki*acd322(3)
      acd322(58)=acd322(1)*acd322(57)
      acd322(47)=acd322(58)+acd322(49)+acd322(47)+acd322(52)+acd322(51)+acd322(&
      &54)+acd322(56)
      acd322(47)=acd322(2)*acd322(47)
      acd322(49)=acd322(42)*acd322(8)
      acd322(51)=acd322(40)*acd322(6)
      acd322(52)=acd322(36)*acd322(4)
      acd322(49)=acd322(49)+acd322(51)+acd322(52)
      acd322(51)=acd322(32)*acd322(49)
      acd322(48)=acd322(10)*acd322(48)
      acd322(52)=acd322(43)*acd322(8)
      acd322(54)=acd322(38)*acd322(4)
      acd322(52)=acd322(52)+acd322(54)
      acd322(54)=acd322(44)*acd322(52)
      acd322(56)=acd322(38)*acd322(29)
      acd322(50)=acd322(56)+acd322(50)
      acd322(50)=acd322(37)*acd322(50)
      acd322(55)=acd322(6)*acd322(55)
      acd322(56)=acd322(18)*acd322(57)
      acd322(48)=acd322(56)+acd322(48)+acd322(51)+acd322(50)+acd322(55)+acd322(&
      &54)
      acd322(48)=acd322(19)*acd322(48)
      acd322(50)=acd322(41)*acd322(21)
      acd322(51)=acd322(38)*acd322(20)
      acd322(50)=acd322(51)+acd322(53)+acd322(50)
      acd322(50)=acd322(37)*acd322(50)
      acd322(49)=acd322(23)*acd322(49)
      acd322(46)=acd322(10)*acd322(46)
      acd322(51)=acd322(41)*acd322(6)
      acd322(51)=acd322(51)+acd322(52)
      acd322(51)=acd322(39)*acd322(51)
      acd322(52)=acd322(27)*acd322(57)
      acd322(46)=acd322(52)+acd322(46)+acd322(49)+acd322(50)+acd322(51)
      acd322(46)=acd322(28)*acd322(46)
      brack=2.0_ki*acd322(45)+acd322(46)+acd322(47)+acd322(48)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd322h0
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
!---#[ subroutine reconstruct_d322:
   subroutine     reconstruct_d322(coeffs)
      use p1_dbarc_epnebbbarg_groups, only: tensrec_info_group0
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group0), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_322:
      coeffs%coeffs_322%c0 = derivative(czip)
      coeffs%coeffs_322%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_322%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_322%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_322%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_322%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_322%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_322%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_322%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_322%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_322%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_322%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_322%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_322%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_322%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_322%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_322%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_322%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_322%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_322%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_322%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_322%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_322%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_322%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_322%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_322%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_322%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_322%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_322%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_322%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_322%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_322%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_322%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_322%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_322%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_322:
   end subroutine reconstruct_d322
!---#] subroutine reconstruct_d322:
end module     p1_dbarc_epnebbbarg_d322h0l1d