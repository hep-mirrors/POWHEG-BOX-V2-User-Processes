module     p0_dbaru_epnebbbarg_d320h0l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d320h0l1d.f90
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
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d320
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd320h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd320
      complex(ki) :: brack
      acd320(1)=abb320(29)
      brack=acd320(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd320h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(42) :: acd320
      complex(ki) :: brack
      acd320(1)=k2(iv1)
      acd320(2)=abb320(30)
      acd320(3)=l5(iv1)
      acd320(4)=abb320(108)
      acd320(5)=l6(iv1)
      acd320(6)=abb320(54)
      acd320(7)=k7(iv1)
      acd320(8)=abb320(80)
      acd320(9)=spvak1k2(iv1)
      acd320(10)=abb320(25)
      acd320(11)=spvak1k3(iv1)
      acd320(12)=abb320(71)
      acd320(13)=spvak2k7(iv1)
      acd320(14)=abb320(16)
      acd320(15)=spvak4k2(iv1)
      acd320(16)=abb320(82)
      acd320(17)=spval5k2(iv1)
      acd320(18)=abb320(36)
      acd320(19)=spval5k3(iv1)
      acd320(20)=abb320(34)
      acd320(21)=spval6k2(iv1)
      acd320(22)=abb320(15)
      acd320(23)=spval6k3(iv1)
      acd320(24)=abb320(26)
      acd320(25)=spval6k7(iv1)
      acd320(26)=abb320(14)
      acd320(27)=spvak7k2(iv1)
      acd320(28)=abb320(17)
      acd320(29)=acd320(2)*acd320(1)
      acd320(30)=acd320(4)*acd320(3)
      acd320(31)=acd320(6)*acd320(5)
      acd320(32)=acd320(8)*acd320(7)
      acd320(33)=acd320(10)*acd320(9)
      acd320(34)=acd320(12)*acd320(11)
      acd320(35)=acd320(14)*acd320(13)
      acd320(36)=acd320(16)*acd320(15)
      acd320(37)=acd320(18)*acd320(17)
      acd320(38)=acd320(20)*acd320(19)
      acd320(39)=acd320(22)*acd320(21)
      acd320(40)=acd320(24)*acd320(23)
      acd320(41)=acd320(26)*acd320(25)
      acd320(42)=acd320(28)*acd320(27)
      brack=acd320(29)+acd320(30)+acd320(31)+acd320(32)+acd320(33)+acd320(34)+a&
      &cd320(35)+acd320(36)+acd320(37)+acd320(38)+acd320(39)+acd320(40)+acd320(&
      &41)+acd320(42)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd320h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(98) :: acd320
      complex(ki) :: brack
      acd320(1)=d(iv1,iv2)
      acd320(2)=abb320(55)
      acd320(3)=k2(iv1)
      acd320(4)=k2(iv2)
      acd320(5)=abb320(44)
      acd320(6)=l6(iv2)
      acd320(7)=abb320(33)
      acd320(8)=k7(iv2)
      acd320(9)=spvak1k2(iv2)
      acd320(10)=abb320(42)
      acd320(11)=spvak1k3(iv2)
      acd320(12)=abb320(41)
      acd320(13)=spvak2k7(iv2)
      acd320(14)=abb320(39)
      acd320(15)=spvak4k2(iv2)
      acd320(16)=abb320(104)
      acd320(17)=spval5k2(iv2)
      acd320(18)=abb320(35)
      acd320(19)=spval5k3(iv2)
      acd320(20)=abb320(46)
      acd320(21)=spval6k2(iv2)
      acd320(22)=abb320(58)
      acd320(23)=spval6k3(iv2)
      acd320(24)=abb320(126)
      acd320(25)=spval6k7(iv2)
      acd320(26)=abb320(98)
      acd320(27)=l6(iv1)
      acd320(28)=k7(iv1)
      acd320(29)=spvak1k2(iv1)
      acd320(30)=spvak1k3(iv1)
      acd320(31)=spvak2k7(iv1)
      acd320(32)=spvak4k2(iv1)
      acd320(33)=spval5k2(iv1)
      acd320(34)=spval5k3(iv1)
      acd320(35)=spval6k2(iv1)
      acd320(36)=spval6k3(iv1)
      acd320(37)=spval6k7(iv1)
      acd320(38)=l5(iv1)
      acd320(39)=abb320(37)
      acd320(40)=l5(iv2)
      acd320(41)=abb320(28)
      acd320(42)=abb320(76)
      acd320(43)=abb320(27)
      acd320(44)=abb320(88)
      acd320(45)=abb320(91)
      acd320(46)=abb320(67)
      acd320(47)=abb320(57)
      acd320(48)=abb320(124)
      acd320(49)=abb320(72)
      acd320(50)=abb320(32)
      acd320(51)=abb320(95)
      acd320(52)=abb320(13)
      acd320(53)=abb320(51)
      acd320(54)=abb320(48)
      acd320(55)=spval5l6(iv2)
      acd320(56)=abb320(62)
      acd320(57)=spval5k7(iv2)
      acd320(58)=abb320(60)
      acd320(59)=spval5l6(iv1)
      acd320(60)=spval5k7(iv1)
      acd320(61)=abb320(31)
      acd320(62)=abb320(84)
      acd320(63)=abb320(74)
      acd320(64)=abb320(49)
      acd320(65)=abb320(86)
      acd320(66)=abb320(61)
      acd320(67)=abb320(59)
      acd320(68)=abb320(53)
      acd320(69)=abb320(22)
      acd320(70)=abb320(52)
      acd320(71)=abb320(45)
      acd320(72)=spval6l5(iv2)
      acd320(73)=abb320(19)
      acd320(74)=spvak7k2(iv2)
      acd320(75)=abb320(40)
      acd320(76)=spval6l5(iv1)
      acd320(77)=spvak7k2(iv1)
      acd320(78)=abb320(68)
      acd320(79)=abb320(63)
      acd320(80)=abb320(112)
      acd320(81)=abb320(99)
      acd320(82)=acd320(75)*acd320(74)
      acd320(83)=acd320(73)*acd320(72)
      acd320(84)=acd320(39)*acd320(40)
      acd320(85)=acd320(23)*acd320(70)
      acd320(86)=acd320(19)*acd320(68)
      acd320(87)=acd320(17)*acd320(67)
      acd320(88)=acd320(25)*acd320(71)
      acd320(89)=acd320(21)*acd320(69)
      acd320(90)=acd320(11)*acd320(61)
      acd320(91)=acd320(15)*acd320(66)
      acd320(92)=acd320(9)*acd320(52)
      acd320(93)=acd320(6)*acd320(43)
      acd320(94)=acd320(4)*acd320(14)
      acd320(82)=acd320(94)+acd320(93)+acd320(92)+acd320(91)+acd320(90)+acd320(&
      &89)+acd320(88)+acd320(87)+acd320(86)+acd320(85)+acd320(84)+acd320(82)+ac&
      &d320(83)
      acd320(82)=acd320(31)*acd320(82)
      acd320(83)=acd320(75)*acd320(77)
      acd320(84)=acd320(73)*acd320(76)
      acd320(85)=acd320(39)*acd320(38)
      acd320(86)=acd320(36)*acd320(70)
      acd320(87)=acd320(34)*acd320(68)
      acd320(88)=acd320(33)*acd320(67)
      acd320(89)=acd320(37)*acd320(71)
      acd320(90)=acd320(35)*acd320(69)
      acd320(91)=acd320(30)*acd320(61)
      acd320(92)=acd320(32)*acd320(66)
      acd320(93)=acd320(29)*acd320(52)
      acd320(94)=acd320(27)*acd320(43)
      acd320(95)=acd320(3)*acd320(14)
      acd320(83)=acd320(95)+acd320(94)+acd320(93)+acd320(92)+acd320(91)+acd320(&
      &90)+acd320(89)+acd320(88)+acd320(87)+acd320(86)+acd320(85)+acd320(83)+ac&
      &d320(84)
      acd320(83)=acd320(13)*acd320(83)
      acd320(84)=acd320(6)+acd320(8)
      acd320(84)=acd320(7)*acd320(84)
      acd320(85)=acd320(23)*acd320(24)
      acd320(86)=acd320(19)*acd320(20)
      acd320(87)=acd320(17)*acd320(18)
      acd320(88)=acd320(25)*acd320(26)
      acd320(89)=acd320(21)*acd320(22)
      acd320(90)=acd320(11)*acd320(12)
      acd320(91)=acd320(15)*acd320(16)
      acd320(92)=acd320(9)*acd320(10)
      acd320(93)=acd320(4)*acd320(5)
      acd320(84)=2.0_ki*acd320(93)+acd320(92)+acd320(91)+acd320(90)+acd320(89)+&
      &acd320(88)+acd320(87)+acd320(85)+acd320(86)+acd320(84)
      acd320(84)=acd320(3)*acd320(84)
      acd320(85)=acd320(27)+acd320(28)
      acd320(85)=acd320(7)*acd320(85)
      acd320(86)=acd320(36)*acd320(24)
      acd320(87)=acd320(34)*acd320(20)
      acd320(88)=acd320(33)*acd320(18)
      acd320(89)=acd320(37)*acd320(26)
      acd320(90)=acd320(35)*acd320(22)
      acd320(91)=acd320(30)*acd320(12)
      acd320(92)=acd320(32)*acd320(16)
      acd320(93)=acd320(29)*acd320(10)
      acd320(85)=acd320(93)+acd320(92)+acd320(91)+acd320(90)+acd320(89)+acd320(&
      &88)+acd320(86)+acd320(87)+acd320(85)
      acd320(85)=acd320(4)*acd320(85)
      acd320(86)=acd320(23)*acd320(48)
      acd320(87)=acd320(19)*acd320(46)
      acd320(88)=acd320(17)*acd320(45)
      acd320(89)=acd320(25)*acd320(49)
      acd320(90)=acd320(21)*acd320(47)
      acd320(86)=acd320(90)-acd320(86)+acd320(87)+acd320(88)+acd320(89)
      acd320(87)=acd320(28)*acd320(86)
      acd320(88)=acd320(60)*acd320(81)
      acd320(89)=acd320(59)*acd320(80)
      acd320(90)=acd320(37)*acd320(79)
      acd320(91)=acd320(35)*acd320(78)
      acd320(92)=acd320(28)*acd320(51)
      acd320(88)=acd320(92)+acd320(91)+acd320(90)+acd320(88)+acd320(89)
      acd320(88)=acd320(15)*acd320(88)
      acd320(89)=acd320(60)*acd320(58)
      acd320(90)=acd320(59)*acd320(56)
      acd320(91)=acd320(37)*acd320(54)
      acd320(92)=acd320(35)*acd320(53)
      acd320(93)=acd320(28)*acd320(50)
      acd320(89)=acd320(93)+acd320(92)+acd320(91)+acd320(89)+acd320(90)
      acd320(89)=acd320(9)*acd320(89)
      acd320(90)=acd320(36)*acd320(48)
      acd320(91)=acd320(34)*acd320(46)
      acd320(92)=acd320(33)*acd320(45)
      acd320(93)=acd320(37)*acd320(49)
      acd320(94)=acd320(35)*acd320(47)
      acd320(90)=acd320(94)-acd320(90)+acd320(91)+acd320(92)+acd320(93)
      acd320(91)=acd320(32)*acd320(51)
      acd320(92)=acd320(29)*acd320(50)
      acd320(91)=acd320(92)+acd320(91)+acd320(90)
      acd320(91)=acd320(8)*acd320(91)
      acd320(92)=acd320(11)*acd320(42)
      acd320(93)=acd320(15)*acd320(44)
      acd320(94)=acd320(9)*acd320(41)
      acd320(86)=acd320(94)+acd320(93)+acd320(92)+acd320(86)
      acd320(86)=acd320(27)*acd320(86)
      acd320(92)=acd320(30)*acd320(42)
      acd320(93)=acd320(32)*acd320(44)
      acd320(94)=acd320(29)*acd320(41)
      acd320(90)=acd320(94)+acd320(93)+acd320(92)+acd320(90)
      acd320(90)=acd320(6)*acd320(90)
      acd320(92)=acd320(57)*acd320(65)
      acd320(93)=acd320(55)*acd320(64)
      acd320(94)=acd320(25)*acd320(63)
      acd320(95)=acd320(21)*acd320(62)
      acd320(92)=acd320(95)+acd320(94)+acd320(92)+acd320(93)
      acd320(92)=acd320(30)*acd320(92)
      acd320(93)=acd320(60)*acd320(65)
      acd320(94)=acd320(59)*acd320(64)
      acd320(95)=acd320(37)*acd320(63)
      acd320(96)=acd320(35)*acd320(62)
      acd320(93)=acd320(96)+acd320(95)+acd320(93)+acd320(94)
      acd320(93)=acd320(11)*acd320(93)
      acd320(94)=acd320(57)*acd320(81)
      acd320(95)=acd320(55)*acd320(80)
      acd320(96)=acd320(25)*acd320(79)
      acd320(97)=acd320(21)*acd320(78)
      acd320(94)=acd320(97)+acd320(96)+acd320(94)+acd320(95)
      acd320(94)=acd320(32)*acd320(94)
      acd320(95)=acd320(57)*acd320(58)
      acd320(96)=acd320(55)*acd320(56)
      acd320(97)=acd320(25)*acd320(54)
      acd320(98)=acd320(21)*acd320(53)
      acd320(95)=acd320(98)+acd320(97)+acd320(95)+acd320(96)
      acd320(95)=acd320(29)*acd320(95)
      acd320(96)=acd320(1)*acd320(2)
      brack=acd320(82)+acd320(83)+acd320(84)+acd320(85)+acd320(86)+acd320(87)+a&
      &cd320(88)+acd320(89)+acd320(90)+acd320(91)+acd320(92)+acd320(93)+acd320(&
      &94)+acd320(95)+2.0_ki*acd320(96)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd320h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(59) :: acd320
      complex(ki) :: brack
      acd320(1)=d(iv1,iv2)
      acd320(2)=k2(iv3)
      acd320(3)=abb320(56)
      acd320(4)=spvak1k2(iv3)
      acd320(5)=abb320(47)
      acd320(6)=spvak1k3(iv3)
      acd320(7)=abb320(24)
      acd320(8)=spvak4k2(iv3)
      acd320(9)=abb320(94)
      acd320(10)=spval5k2(iv3)
      acd320(11)=abb320(70)
      acd320(12)=spval5k3(iv3)
      acd320(13)=abb320(87)
      acd320(14)=spval6k2(iv3)
      acd320(15)=abb320(21)
      acd320(16)=spval6k3(iv3)
      acd320(17)=abb320(131)
      acd320(18)=spval6k7(iv3)
      acd320(19)=abb320(122)
      acd320(20)=d(iv1,iv3)
      acd320(21)=k2(iv2)
      acd320(22)=spvak1k2(iv2)
      acd320(23)=spvak1k3(iv2)
      acd320(24)=spvak4k2(iv2)
      acd320(25)=spval5k2(iv2)
      acd320(26)=spval5k3(iv2)
      acd320(27)=spval6k2(iv2)
      acd320(28)=spval6k3(iv2)
      acd320(29)=spval6k7(iv2)
      acd320(30)=d(iv2,iv3)
      acd320(31)=k2(iv1)
      acd320(32)=spvak1k2(iv1)
      acd320(33)=spvak1k3(iv1)
      acd320(34)=spvak4k2(iv1)
      acd320(35)=spval5k2(iv1)
      acd320(36)=spval5k3(iv1)
      acd320(37)=spval6k2(iv1)
      acd320(38)=spval6k3(iv1)
      acd320(39)=spval6k7(iv1)
      acd320(40)=spvak2k7(iv3)
      acd320(41)=abb320(23)
      acd320(42)=spvak2k7(iv2)
      acd320(43)=abb320(20)
      acd320(44)=spvak2k7(iv1)
      acd320(45)=abb320(93)
      acd320(46)=abb320(92)
      acd320(47)=abb320(64)
      acd320(48)=abb320(18)
      acd320(49)=acd320(19)*acd320(39)
      acd320(50)=acd320(17)*acd320(38)
      acd320(51)=acd320(13)*acd320(36)
      acd320(52)=acd320(3)*acd320(31)
      acd320(53)=acd320(34)*acd320(9)
      acd320(54)=acd320(33)*acd320(7)
      acd320(55)=acd320(32)*acd320(5)
      acd320(56)=acd320(37)*acd320(15)
      acd320(57)=acd320(35)*acd320(11)
      acd320(49)=acd320(57)+acd320(56)+acd320(55)+acd320(54)+acd320(53)+acd320(&
      &52)+acd320(51)+acd320(49)+acd320(50)
      acd320(49)=acd320(30)*acd320(49)
      acd320(50)=acd320(19)*acd320(29)
      acd320(51)=acd320(17)*acd320(28)
      acd320(52)=acd320(13)*acd320(26)
      acd320(53)=acd320(3)*acd320(21)
      acd320(54)=acd320(24)*acd320(9)
      acd320(55)=acd320(23)*acd320(7)
      acd320(56)=acd320(22)*acd320(5)
      acd320(57)=acd320(27)*acd320(15)
      acd320(58)=acd320(25)*acd320(11)
      acd320(50)=acd320(58)+acd320(57)+acd320(56)+acd320(55)+acd320(54)+acd320(&
      &53)+acd320(52)+acd320(50)+acd320(51)
      acd320(50)=acd320(20)*acd320(50)
      acd320(51)=acd320(19)*acd320(18)
      acd320(52)=acd320(17)*acd320(16)
      acd320(53)=acd320(13)*acd320(12)
      acd320(54)=acd320(3)*acd320(2)
      acd320(55)=acd320(8)*acd320(9)
      acd320(56)=acd320(6)*acd320(7)
      acd320(57)=acd320(4)*acd320(5)
      acd320(58)=acd320(14)*acd320(15)
      acd320(59)=acd320(10)*acd320(11)
      acd320(51)=acd320(59)+acd320(58)+acd320(57)+acd320(56)+acd320(55)+acd320(&
      &54)+acd320(53)+acd320(51)+acd320(52)
      acd320(51)=acd320(1)*acd320(51)
      acd320(49)=acd320(51)+acd320(49)+acd320(50)
      acd320(50)=acd320(48)*acd320(8)
      acd320(51)=acd320(46)*acd320(6)
      acd320(52)=acd320(43)*acd320(4)
      acd320(50)=acd320(52)+acd320(50)+acd320(51)
      acd320(51)=acd320(27)*acd320(50)
      acd320(52)=acd320(47)*acd320(8)
      acd320(53)=acd320(45)*acd320(6)
      acd320(54)=acd320(41)*acd320(4)
      acd320(52)=acd320(54)+acd320(52)+acd320(53)
      acd320(53)=acd320(25)*acd320(52)
      acd320(54)=acd320(48)*acd320(24)
      acd320(55)=acd320(46)*acd320(23)
      acd320(56)=acd320(43)*acd320(22)
      acd320(54)=acd320(56)+acd320(54)+acd320(55)
      acd320(55)=acd320(14)*acd320(54)
      acd320(56)=acd320(47)*acd320(24)
      acd320(57)=acd320(45)*acd320(23)
      acd320(58)=acd320(41)*acd320(22)
      acd320(56)=acd320(58)+acd320(56)+acd320(57)
      acd320(57)=acd320(10)*acd320(56)
      acd320(51)=acd320(57)+acd320(55)+acd320(51)+acd320(53)
      acd320(51)=acd320(44)*acd320(51)
      acd320(50)=acd320(37)*acd320(50)
      acd320(52)=acd320(35)*acd320(52)
      acd320(53)=acd320(48)*acd320(34)
      acd320(55)=acd320(46)*acd320(33)
      acd320(57)=acd320(43)*acd320(32)
      acd320(53)=acd320(57)+acd320(53)+acd320(55)
      acd320(55)=acd320(14)*acd320(53)
      acd320(57)=acd320(47)*acd320(34)
      acd320(58)=acd320(45)*acd320(33)
      acd320(59)=acd320(41)*acd320(32)
      acd320(57)=acd320(59)+acd320(57)+acd320(58)
      acd320(58)=acd320(10)*acd320(57)
      acd320(50)=acd320(58)+acd320(55)+acd320(50)+acd320(52)
      acd320(50)=acd320(42)*acd320(50)
      acd320(52)=acd320(37)*acd320(54)
      acd320(54)=acd320(35)*acd320(56)
      acd320(53)=acd320(27)*acd320(53)
      acd320(55)=acd320(25)*acd320(57)
      acd320(52)=acd320(55)+acd320(53)+acd320(52)+acd320(54)
      acd320(52)=acd320(40)*acd320(52)
      brack=2.0_ki*acd320(49)+acd320(50)+acd320(51)+acd320(52)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd320h0
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
!---#[ subroutine reconstruct_d320:
   subroutine     reconstruct_d320(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group2
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group2), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_320:
      coeffs%coeffs_320%c0 = derivative(czip)
      coeffs%coeffs_320%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_320%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_320%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_320%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_320%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_320%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_320%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_320%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_320%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_320%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_320%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_320%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_320%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_320%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_320%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_320%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_320%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_320%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_320%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_320%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_320%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_320%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_320%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_320%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_320%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_320%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_320%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_320%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_320%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_320%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_320%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_320%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_320%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_320%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_320:
   end subroutine reconstruct_d320
!---#] subroutine reconstruct_d320:
end module     p0_dbaru_epnebbbarg_d320h0l1d
