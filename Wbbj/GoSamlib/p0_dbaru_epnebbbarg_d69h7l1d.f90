module     p0_dbaru_epnebbbarg_d69h7l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d69h7l1d.f90
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
   public :: derivative , reconstruct_d69
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd69h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd69
      complex(ki) :: brack
      acd69(1)=abb69(34)
      brack=acd69(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd69h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(22) :: acd69
      complex(ki) :: brack
      acd69(1)=k2(iv1)
      acd69(2)=abb69(26)
      acd69(3)=k3(iv1)
      acd69(4)=abb69(64)
      acd69(5)=k4(iv1)
      acd69(6)=k7(iv1)
      acd69(7)=abb69(25)
      acd69(8)=spvak2l5(iv1)
      acd69(9)=abb69(31)
      acd69(10)=spvak2l6(iv1)
      acd69(11)=abb69(65)
      acd69(12)=spvak4k3(iv1)
      acd69(13)=abb69(60)
      acd69(14)=spvak7k2(iv1)
      acd69(15)=abb69(35)
      acd69(16)=acd69(5)+acd69(3)
      acd69(16)=acd69(4)*acd69(16)
      acd69(17)=acd69(2)*acd69(1)
      acd69(18)=acd69(7)*acd69(6)
      acd69(19)=acd69(9)*acd69(8)
      acd69(20)=acd69(11)*acd69(10)
      acd69(21)=acd69(13)*acd69(12)
      acd69(22)=acd69(15)*acd69(14)
      brack=acd69(16)+acd69(17)+acd69(18)+acd69(19)+acd69(20)+acd69(21)+acd69(2&
      &2)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd69h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(66) :: acd69
      complex(ki) :: brack
      acd69(1)=d(iv1,iv2)
      acd69(2)=abb69(24)
      acd69(3)=k2(iv1)
      acd69(4)=k2(iv2)
      acd69(5)=abb69(29)
      acd69(6)=k3(iv2)
      acd69(7)=k4(iv2)
      acd69(8)=k7(iv2)
      acd69(9)=abb69(71)
      acd69(10)=spvak2l5(iv2)
      acd69(11)=abb69(70)
      acd69(12)=spvak2l6(iv2)
      acd69(13)=abb69(74)
      acd69(14)=spvak4k2(iv2)
      acd69(15)=abb69(33)
      acd69(16)=spvak4k3(iv2)
      acd69(17)=abb69(63)
      acd69(18)=spvak7k2(iv2)
      acd69(19)=abb69(50)
      acd69(20)=k3(iv1)
      acd69(21)=k4(iv1)
      acd69(22)=k7(iv1)
      acd69(23)=spvak2l5(iv1)
      acd69(24)=spvak2l6(iv1)
      acd69(25)=spvak4k2(iv1)
      acd69(26)=spvak4k3(iv1)
      acd69(27)=spvak7k2(iv1)
      acd69(28)=abb69(66)
      acd69(29)=l5(iv1)
      acd69(30)=abb69(61)
      acd69(31)=l5(iv2)
      acd69(32)=l6(iv1)
      acd69(33)=l6(iv2)
      acd69(34)=abb69(72)
      acd69(35)=abb69(67)
      acd69(36)=abb69(45)
      acd69(37)=abb69(9)
      acd69(38)=abb69(10)
      acd69(39)=abb69(19)
      acd69(40)=abb69(11)
      acd69(41)=spvak1k2(iv2)
      acd69(42)=abb69(42)
      acd69(43)=spvak1k3(iv2)
      acd69(44)=abb69(47)
      acd69(45)=spval5k2(iv2)
      acd69(46)=abb69(56)
      acd69(47)=spval6k2(iv2)
      acd69(48)=abb69(82)
      acd69(49)=spvak1k2(iv1)
      acd69(50)=spvak1k3(iv1)
      acd69(51)=spval5k2(iv1)
      acd69(52)=spval6k2(iv1)
      acd69(53)=acd69(48)*acd69(47)
      acd69(54)=acd69(46)*acd69(45)
      acd69(55)=acd69(44)*acd69(43)
      acd69(56)=acd69(42)*acd69(41)
      acd69(57)=acd69(14)*acd69(39)
      acd69(58)=acd69(16)*acd69(40)
      acd69(59)=acd69(12)*acd69(38)
      acd69(60)=acd69(10)*acd69(37)
      acd69(61)=acd69(33)+acd69(31)
      acd69(61)=acd69(30)*acd69(61)
      acd69(62)=acd69(6)+acd69(7)
      acd69(63)=-acd69(28)*acd69(62)
      acd69(64)=acd69(4)*acd69(19)
      acd69(53)=acd69(64)+acd69(63)+acd69(61)+acd69(60)+acd69(59)+acd69(58)+acd&
      &69(57)+acd69(56)+acd69(55)+acd69(53)+acd69(54)
      acd69(53)=acd69(27)*acd69(53)
      acd69(54)=acd69(48)*acd69(52)
      acd69(55)=acd69(46)*acd69(51)
      acd69(56)=acd69(44)*acd69(50)
      acd69(57)=acd69(42)*acd69(49)
      acd69(58)=acd69(25)*acd69(39)
      acd69(59)=acd69(26)*acd69(40)
      acd69(60)=acd69(24)*acd69(38)
      acd69(61)=acd69(23)*acd69(37)
      acd69(63)=acd69(32)+acd69(29)
      acd69(63)=acd69(30)*acd69(63)
      acd69(64)=acd69(20)+acd69(21)
      acd69(65)=-acd69(28)*acd69(64)
      acd69(66)=acd69(3)*acd69(19)
      acd69(54)=acd69(66)+acd69(65)+acd69(63)+acd69(61)+acd69(60)+acd69(59)+acd&
      &69(58)+acd69(57)+acd69(56)+acd69(54)+acd69(55)
      acd69(54)=acd69(18)*acd69(54)
      acd69(55)=acd69(9)*acd69(22)
      acd69(56)=acd69(15)*acd69(25)
      acd69(57)=acd69(26)*acd69(17)
      acd69(58)=acd69(24)*acd69(13)
      acd69(59)=acd69(23)*acd69(11)
      acd69(60)=-acd69(5)*acd69(64)
      acd69(56)=acd69(55)+acd69(60)+acd69(59)+acd69(58)+acd69(56)+acd69(57)
      acd69(56)=acd69(4)*acd69(56)
      acd69(57)=2.0_ki*acd69(4)-acd69(62)
      acd69(57)=acd69(5)*acd69(57)
      acd69(58)=acd69(14)*acd69(15)
      acd69(59)=acd69(16)*acd69(17)
      acd69(60)=acd69(12)*acd69(13)
      acd69(61)=acd69(10)*acd69(11)
      acd69(63)=acd69(8)*acd69(9)
      acd69(57)=acd69(63)+acd69(61)+acd69(60)+acd69(58)+acd69(59)+acd69(57)
      acd69(57)=acd69(3)*acd69(57)
      acd69(58)=acd69(26)*acd69(36)
      acd69(59)=acd69(24)*acd69(35)
      acd69(60)=acd69(23)*acd69(34)
      acd69(61)=-acd69(9)*acd69(64)
      acd69(58)=acd69(61)+acd69(60)+acd69(58)+acd69(59)
      acd69(58)=acd69(8)*acd69(58)
      acd69(59)=acd69(16)*acd69(36)
      acd69(60)=acd69(12)*acd69(35)
      acd69(61)=acd69(10)*acd69(34)
      acd69(59)=acd69(61)+acd69(59)+acd69(60)
      acd69(59)=acd69(22)*acd69(59)
      acd69(55)=-acd69(62)*acd69(55)
      acd69(60)=acd69(1)*acd69(2)
      brack=acd69(53)+acd69(54)+acd69(55)+acd69(56)+acd69(57)+acd69(58)+acd69(5&
      &9)+2.0_ki*acd69(60)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd69h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(100) :: acd69
      complex(ki) :: brack
      acd69(1)=d(iv1,iv2)
      acd69(2)=k2(iv3)
      acd69(3)=abb69(29)
      acd69(4)=k3(iv3)
      acd69(5)=abb69(39)
      acd69(6)=k4(iv3)
      acd69(7)=k7(iv3)
      acd69(8)=spvak2l5(iv3)
      acd69(9)=abb69(23)
      acd69(10)=spvak2l6(iv3)
      acd69(11)=abb69(55)
      acd69(12)=spvak4k2(iv3)
      acd69(13)=abb69(30)
      acd69(14)=spvak4k3(iv3)
      acd69(15)=abb69(22)
      acd69(16)=spvak7k2(iv3)
      acd69(17)=abb69(18)
      acd69(18)=d(iv1,iv3)
      acd69(19)=k2(iv2)
      acd69(20)=k3(iv2)
      acd69(21)=k4(iv2)
      acd69(22)=k7(iv2)
      acd69(23)=spvak2l5(iv2)
      acd69(24)=spvak2l6(iv2)
      acd69(25)=spvak4k2(iv2)
      acd69(26)=spvak4k3(iv2)
      acd69(27)=spvak7k2(iv2)
      acd69(28)=d(iv2,iv3)
      acd69(29)=k2(iv1)
      acd69(30)=k3(iv1)
      acd69(31)=k4(iv1)
      acd69(32)=k7(iv1)
      acd69(33)=spvak2l5(iv1)
      acd69(34)=spvak2l6(iv1)
      acd69(35)=spvak4k2(iv1)
      acd69(36)=spvak4k3(iv1)
      acd69(37)=spvak7k2(iv1)
      acd69(38)=abb69(78)
      acd69(39)=abb69(32)
      acd69(40)=abb69(16)
      acd69(41)=abb69(68)
      acd69(42)=abb69(28)
      acd69(43)=abb69(46)
      acd69(44)=abb69(48)
      acd69(45)=abb69(17)
      acd69(46)=abb69(14)
      acd69(47)=l5(iv1)
      acd69(48)=abb69(49)
      acd69(49)=l5(iv2)
      acd69(50)=l5(iv3)
      acd69(51)=l6(iv1)
      acd69(52)=l6(iv2)
      acd69(53)=l6(iv3)
      acd69(54)=abb69(38)
      acd69(55)=abb69(27)
      acd69(56)=spvak1k2(iv3)
      acd69(57)=abb69(51)
      acd69(58)=spvak1k3(iv3)
      acd69(59)=abb69(59)
      acd69(60)=spvak1k2(iv2)
      acd69(61)=spvak1k3(iv2)
      acd69(62)=spvak1k2(iv1)
      acd69(63)=spvak1k3(iv1)
      acd69(64)=abb69(37)
      acd69(65)=abb69(13)
      acd69(66)=abb69(15)
      acd69(67)=abb69(53)
      acd69(68)=abb69(12)
      acd69(69)=spval5k2(iv3)
      acd69(70)=abb69(52)
      acd69(71)=spval6k2(iv3)
      acd69(72)=abb69(54)
      acd69(73)=spval5k2(iv2)
      acd69(74)=spval6k2(iv2)
      acd69(75)=spval5k2(iv1)
      acd69(76)=spval6k2(iv1)
      acd69(77)=acd69(12)*acd69(43)
      acd69(78)=acd69(14)*acd69(44)
      acd69(79)=acd69(10)*acd69(42)
      acd69(80)=acd69(4)+acd69(6)
      acd69(81)=acd69(80)*acd69(38)
      acd69(82)=acd69(8)*acd69(40)
      acd69(77)=acd69(82)+acd69(77)+acd69(78)+acd69(79)-acd69(81)
      acd69(78)=acd69(19)*acd69(77)
      acd69(79)=acd69(25)*acd69(43)
      acd69(81)=acd69(26)*acd69(44)
      acd69(82)=acd69(24)*acd69(42)
      acd69(83)=acd69(23)*acd69(40)
      acd69(84)=acd69(20)+acd69(21)
      acd69(85)=acd69(84)*acd69(38)
      acd69(79)=-acd69(85)+acd69(79)+acd69(81)+acd69(82)+acd69(83)
      acd69(81)=2.0_ki*acd69(38)
      acd69(82)=acd69(19)*acd69(81)
      acd69(82)=acd69(82)+acd69(79)
      acd69(82)=acd69(2)*acd69(82)
      acd69(83)=acd69(50)+acd69(53)
      acd69(83)=acd69(83)*acd69(48)
      acd69(85)=acd69(72)*acd69(71)
      acd69(86)=acd69(70)*acd69(69)
      acd69(87)=acd69(56)*acd69(68)
      acd69(83)=acd69(87)+acd69(83)+acd69(85)+acd69(86)
      acd69(85)=acd69(26)*acd69(83)
      acd69(86)=acd69(67)*acd69(58)
      acd69(87)=acd69(56)*acd69(66)
      acd69(88)=acd69(12)*acd69(64)
      acd69(89)=acd69(80)*acd69(46)
      acd69(86)=acd69(86)+acd69(87)+acd69(88)-acd69(89)
      acd69(87)=acd69(24)*acd69(86)
      acd69(88)=acd69(59)*acd69(58)
      acd69(89)=acd69(56)*acd69(57)
      acd69(90)=acd69(12)*acd69(54)
      acd69(91)=acd69(80)*acd69(45)
      acd69(88)=acd69(88)+acd69(89)+acd69(90)-acd69(91)
      acd69(89)=acd69(23)*acd69(88)
      acd69(90)=acd69(49)+acd69(52)
      acd69(90)=acd69(90)*acd69(48)
      acd69(91)=acd69(72)*acd69(74)
      acd69(92)=acd69(70)*acd69(73)
      acd69(93)=acd69(60)*acd69(68)
      acd69(90)=acd69(93)+acd69(90)+acd69(91)+acd69(92)
      acd69(91)=acd69(24)*acd69(65)
      acd69(92)=acd69(23)*acd69(55)
      acd69(91)=acd69(92)+acd69(91)+acd69(90)
      acd69(91)=acd69(14)*acd69(91)
      acd69(92)=acd69(67)*acd69(61)
      acd69(93)=acd69(60)*acd69(66)
      acd69(94)=acd69(25)*acd69(64)
      acd69(95)=acd69(84)*acd69(46)
      acd69(92)=acd69(92)+acd69(93)+acd69(94)-acd69(95)
      acd69(93)=acd69(26)*acd69(65)
      acd69(93)=acd69(93)+acd69(92)
      acd69(93)=acd69(10)*acd69(93)
      acd69(94)=acd69(59)*acd69(61)
      acd69(95)=acd69(57)*acd69(60)
      acd69(96)=acd69(25)*acd69(54)
      acd69(97)=acd69(84)*acd69(45)
      acd69(94)=acd69(94)+acd69(95)+acd69(96)-acd69(97)
      acd69(95)=acd69(26)*acd69(55)
      acd69(95)=acd69(95)+acd69(94)
      acd69(95)=acd69(8)*acd69(95)
      acd69(96)=2.0_ki*acd69(17)
      acd69(97)=acd69(28)*acd69(96)
      acd69(78)=acd69(82)+acd69(78)+acd69(95)+acd69(93)+acd69(91)+acd69(89)+acd&
      &69(87)+acd69(97)+acd69(85)
      acd69(78)=acd69(37)*acd69(78)
      acd69(82)=acd69(47)+acd69(51)
      acd69(82)=acd69(82)*acd69(48)
      acd69(85)=acd69(72)*acd69(76)
      acd69(87)=acd69(70)*acd69(75)
      acd69(89)=acd69(62)*acd69(68)
      acd69(91)=acd69(34)*acd69(65)
      acd69(93)=acd69(33)*acd69(55)
      acd69(82)=acd69(85)+acd69(87)+acd69(89)+acd69(91)+acd69(82)+acd69(93)
      acd69(85)=acd69(14)*acd69(82)
      acd69(87)=acd69(35)*acd69(43)
      acd69(89)=acd69(36)*acd69(44)
      acd69(91)=acd69(34)*acd69(42)
      acd69(93)=acd69(33)*acd69(40)
      acd69(95)=acd69(30)+acd69(31)
      acd69(97)=acd69(95)*acd69(38)
      acd69(81)=acd69(81)*acd69(29)
      acd69(81)=-acd69(87)-acd69(89)-acd69(91)-acd69(93)+acd69(97)-acd69(81)
      acd69(87)=-acd69(2)*acd69(81)
      acd69(89)=acd69(67)*acd69(63)
      acd69(91)=acd69(62)*acd69(66)
      acd69(93)=acd69(35)*acd69(64)
      acd69(97)=acd69(36)*acd69(65)
      acd69(98)=acd69(95)*acd69(46)
      acd69(89)=-acd69(98)+acd69(89)+acd69(91)+acd69(93)+acd69(97)
      acd69(91)=acd69(10)*acd69(89)
      acd69(93)=acd69(59)*acd69(63)
      acd69(97)=acd69(57)*acd69(62)
      acd69(98)=acd69(35)*acd69(54)
      acd69(99)=acd69(36)*acd69(55)
      acd69(100)=acd69(95)*acd69(45)
      acd69(93)=-acd69(100)+acd69(93)+acd69(97)+acd69(98)+acd69(99)
      acd69(97)=acd69(8)*acd69(93)
      acd69(77)=acd69(29)*acd69(77)
      acd69(83)=acd69(36)*acd69(83)
      acd69(86)=acd69(34)*acd69(86)
      acd69(88)=acd69(33)*acd69(88)
      acd69(98)=acd69(18)*acd69(96)
      acd69(77)=acd69(87)+acd69(77)+acd69(97)+acd69(91)+acd69(85)+acd69(88)+acd&
      &69(86)+acd69(98)+acd69(83)
      acd69(77)=acd69(27)*acd69(77)
      acd69(82)=acd69(26)*acd69(82)
      acd69(81)=-acd69(19)*acd69(81)
      acd69(83)=acd69(24)*acd69(89)
      acd69(85)=acd69(23)*acd69(93)
      acd69(79)=acd69(29)*acd69(79)
      acd69(86)=acd69(36)*acd69(90)
      acd69(87)=acd69(34)*acd69(92)
      acd69(88)=acd69(33)*acd69(94)
      acd69(89)=acd69(1)*acd69(96)
      acd69(79)=acd69(81)+acd69(79)+acd69(85)+acd69(83)+acd69(82)+acd69(88)+acd&
      &69(87)+acd69(89)+acd69(86)
      acd69(79)=acd69(16)*acd69(79)
      acd69(81)=acd69(5)*acd69(95)
      acd69(82)=-acd69(3)*acd69(32)
      acd69(83)=acd69(35)*acd69(13)
      acd69(85)=acd69(36)*acd69(15)
      acd69(86)=acd69(34)*acd69(11)
      acd69(87)=acd69(33)*acd69(9)
      acd69(81)=acd69(87)+acd69(86)+acd69(85)+acd69(83)+acd69(82)+acd69(81)
      acd69(81)=acd69(28)*acd69(81)
      acd69(82)=acd69(5)*acd69(84)
      acd69(83)=-acd69(3)*acd69(22)
      acd69(84)=acd69(25)*acd69(13)
      acd69(85)=acd69(26)*acd69(15)
      acd69(86)=acd69(24)*acd69(11)
      acd69(87)=acd69(23)*acd69(9)
      acd69(82)=acd69(87)+acd69(86)+acd69(85)+acd69(84)+acd69(83)+acd69(82)
      acd69(82)=acd69(18)*acd69(82)
      acd69(80)=acd69(5)*acd69(80)
      acd69(83)=-acd69(3)*acd69(7)
      acd69(84)=acd69(12)*acd69(13)
      acd69(85)=acd69(14)*acd69(15)
      acd69(86)=acd69(10)*acd69(11)
      acd69(87)=acd69(8)*acd69(9)
      acd69(80)=acd69(87)+acd69(86)+acd69(85)+acd69(84)+acd69(83)+acd69(80)
      acd69(80)=acd69(1)*acd69(80)
      acd69(80)=acd69(80)+acd69(82)+acd69(81)
      acd69(81)=acd69(10)*acd69(41)
      acd69(82)=acd69(8)*acd69(39)
      acd69(81)=acd69(81)+acd69(82)
      acd69(82)=acd69(25)*acd69(81)
      acd69(83)=acd69(24)*acd69(41)
      acd69(84)=acd69(23)*acd69(39)
      acd69(83)=acd69(83)+acd69(84)
      acd69(84)=acd69(12)*acd69(83)
      acd69(85)=2.0_ki*acd69(3)
      acd69(86)=-acd69(28)*acd69(85)
      acd69(82)=acd69(86)+acd69(84)+acd69(82)
      acd69(82)=acd69(29)*acd69(82)
      acd69(81)=acd69(35)*acd69(81)
      acd69(84)=acd69(34)*acd69(41)
      acd69(86)=acd69(33)*acd69(39)
      acd69(84)=acd69(84)+acd69(86)
      acd69(86)=acd69(12)*acd69(84)
      acd69(87)=-acd69(18)*acd69(85)
      acd69(81)=acd69(87)+acd69(86)+acd69(81)
      acd69(81)=acd69(19)*acd69(81)
      acd69(83)=acd69(35)*acd69(83)
      acd69(84)=acd69(25)*acd69(84)
      acd69(85)=-acd69(1)*acd69(85)
      acd69(83)=acd69(85)+acd69(84)+acd69(83)
      acd69(83)=acd69(2)*acd69(83)
      brack=acd69(77)+acd69(78)+acd69(79)+2.0_ki*acd69(80)+acd69(81)+acd69(82)+&
      &acd69(83)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd69h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(63) :: acd69
      complex(ki) :: brack
      acd69(1)=d(iv1,iv2)
      acd69(2)=d(iv3,iv4)
      acd69(3)=abb69(40)
      acd69(4)=k2(iv3)
      acd69(5)=spvak7k2(iv4)
      acd69(6)=abb69(43)
      acd69(7)=k2(iv4)
      acd69(8)=spvak7k2(iv3)
      acd69(9)=spvak2l5(iv4)
      acd69(10)=abb69(20)
      acd69(11)=spvak4k2(iv4)
      acd69(12)=abb69(44)
      acd69(13)=spvak2l6(iv4)
      acd69(14)=abb69(57)
      acd69(15)=spvak4k3(iv4)
      acd69(16)=abb69(41)
      acd69(17)=spvak2l5(iv3)
      acd69(18)=spvak4k2(iv3)
      acd69(19)=spvak2l6(iv3)
      acd69(20)=spvak4k3(iv3)
      acd69(21)=abb69(36)
      acd69(22)=abb69(69)
      acd69(23)=d(iv1,iv3)
      acd69(24)=d(iv2,iv4)
      acd69(25)=k2(iv2)
      acd69(26)=spvak7k2(iv2)
      acd69(27)=spvak2l5(iv2)
      acd69(28)=spvak4k2(iv2)
      acd69(29)=spvak2l6(iv2)
      acd69(30)=spvak4k3(iv2)
      acd69(31)=d(iv1,iv4)
      acd69(32)=d(iv2,iv3)
      acd69(33)=k2(iv1)
      acd69(34)=spvak7k2(iv1)
      acd69(35)=spvak2l5(iv1)
      acd69(36)=spvak4k2(iv1)
      acd69(37)=spvak2l6(iv1)
      acd69(38)=spvak4k3(iv1)
      acd69(39)=spvak1k2(iv4)
      acd69(40)=abb69(58)
      acd69(41)=spvak1k2(iv3)
      acd69(42)=spvak1k2(iv2)
      acd69(43)=abb69(21)
      acd69(44)=spvak1k2(iv1)
      acd69(45)=acd69(13)*acd69(22)
      acd69(46)=acd69(9)*acd69(21)
      acd69(45)=acd69(45)+acd69(46)
      acd69(46)=acd69(28)*acd69(45)
      acd69(47)=acd69(22)*acd69(11)
      acd69(48)=acd69(29)*acd69(47)
      acd69(49)=acd69(21)*acd69(11)
      acd69(50)=acd69(27)*acd69(49)
      acd69(51)=4.0_ki*acd69(3)
      acd69(52)=acd69(24)*acd69(51)
      acd69(46)=acd69(52)+acd69(48)+acd69(50)+acd69(46)
      acd69(46)=acd69(23)*acd69(46)
      acd69(48)=acd69(36)*acd69(45)
      acd69(47)=acd69(37)*acd69(47)
      acd69(49)=acd69(35)*acd69(49)
      acd69(47)=acd69(47)+acd69(49)+acd69(48)
      acd69(47)=acd69(32)*acd69(47)
      acd69(48)=acd69(19)*acd69(22)
      acd69(49)=acd69(17)*acd69(21)
      acd69(48)=acd69(48)+acd69(49)
      acd69(49)=acd69(28)*acd69(48)
      acd69(50)=acd69(22)*acd69(29)
      acd69(52)=acd69(21)*acd69(27)
      acd69(50)=acd69(50)+acd69(52)
      acd69(50)=acd69(18)*acd69(50)
      acd69(52)=acd69(32)*acd69(51)
      acd69(49)=acd69(52)+acd69(50)+acd69(49)
      acd69(49)=acd69(31)*acd69(49)
      acd69(50)=acd69(36)*acd69(48)
      acd69(52)=acd69(22)*acd69(37)
      acd69(53)=acd69(21)*acd69(35)
      acd69(52)=acd69(52)+acd69(53)
      acd69(52)=acd69(18)*acd69(52)
      acd69(50)=acd69(52)+acd69(50)
      acd69(50)=acd69(24)*acd69(50)
      acd69(52)=acd69(37)*acd69(28)
      acd69(53)=acd69(29)*acd69(36)
      acd69(52)=acd69(52)+acd69(53)
      acd69(52)=acd69(22)*acd69(52)
      acd69(53)=acd69(35)*acd69(28)
      acd69(54)=acd69(27)*acd69(36)
      acd69(53)=acd69(53)+acd69(54)
      acd69(53)=acd69(21)*acd69(53)
      acd69(52)=acd69(52)+acd69(53)
      acd69(52)=acd69(2)*acd69(52)
      acd69(45)=acd69(18)*acd69(45)
      acd69(48)=acd69(11)*acd69(48)
      acd69(51)=acd69(2)*acd69(51)
      acd69(45)=acd69(51)+acd69(48)+acd69(45)
      acd69(45)=acd69(1)*acd69(45)
      acd69(45)=acd69(45)+acd69(52)+acd69(46)+acd69(50)+acd69(47)+acd69(49)
      acd69(46)=acd69(13)*acd69(14)
      acd69(47)=acd69(12)*acd69(11)
      acd69(48)=acd69(9)*acd69(10)
      acd69(49)=acd69(6)*acd69(7)
      acd69(50)=acd69(15)*acd69(16)
      acd69(46)=acd69(50)+acd69(49)+acd69(48)+acd69(46)+acd69(47)
      acd69(47)=acd69(32)*acd69(46)
      acd69(48)=acd69(14)*acd69(19)
      acd69(49)=acd69(12)*acd69(18)
      acd69(50)=acd69(10)*acd69(17)
      acd69(51)=acd69(6)*acd69(4)
      acd69(52)=acd69(20)*acd69(16)
      acd69(48)=acd69(52)+acd69(51)+acd69(50)+acd69(48)+acd69(49)
      acd69(49)=acd69(24)*acd69(48)
      acd69(50)=acd69(14)*acd69(29)
      acd69(51)=acd69(12)*acd69(28)
      acd69(52)=acd69(10)*acd69(27)
      acd69(53)=acd69(6)*acd69(25)
      acd69(54)=acd69(30)*acd69(16)
      acd69(50)=acd69(54)+acd69(53)+acd69(52)+acd69(50)+acd69(51)
      acd69(51)=acd69(2)*acd69(50)
      acd69(47)=acd69(51)+acd69(49)+acd69(47)
      acd69(49)=acd69(19)*acd69(39)
      acd69(51)=acd69(13)*acd69(41)
      acd69(49)=acd69(49)+acd69(51)
      acd69(51)=acd69(30)*acd69(49)
      acd69(52)=acd69(29)*acd69(39)
      acd69(53)=acd69(13)*acd69(42)
      acd69(52)=acd69(52)+acd69(53)
      acd69(53)=acd69(20)*acd69(52)
      acd69(54)=acd69(29)*acd69(41)
      acd69(55)=acd69(19)*acd69(42)
      acd69(54)=acd69(54)+acd69(55)
      acd69(55)=acd69(15)*acd69(54)
      acd69(51)=acd69(55)+acd69(51)+acd69(53)
      acd69(51)=acd69(43)*acd69(51)
      acd69(53)=acd69(17)*acd69(39)
      acd69(55)=acd69(9)*acd69(41)
      acd69(53)=acd69(53)+acd69(55)
      acd69(55)=acd69(30)*acd69(53)
      acd69(56)=acd69(27)*acd69(39)
      acd69(57)=acd69(9)*acd69(42)
      acd69(56)=acd69(56)+acd69(57)
      acd69(57)=acd69(20)*acd69(56)
      acd69(58)=acd69(27)*acd69(41)
      acd69(59)=acd69(17)*acd69(42)
      acd69(58)=acd69(58)+acd69(59)
      acd69(59)=acd69(15)*acd69(58)
      acd69(55)=acd69(59)+acd69(55)+acd69(57)
      acd69(55)=acd69(40)*acd69(55)
      acd69(47)=acd69(55)+2.0_ki*acd69(47)+acd69(51)
      acd69(47)=acd69(34)*acd69(47)
      acd69(51)=acd69(31)*acd69(48)
      acd69(55)=acd69(23)*acd69(46)
      acd69(57)=acd69(14)*acd69(37)
      acd69(59)=acd69(12)*acd69(36)
      acd69(60)=acd69(10)*acd69(35)
      acd69(61)=acd69(6)*acd69(33)
      acd69(62)=acd69(38)*acd69(16)
      acd69(57)=acd69(62)+acd69(61)+acd69(60)+acd69(57)+acd69(59)
      acd69(59)=acd69(2)*acd69(57)
      acd69(51)=acd69(59)+acd69(55)+acd69(51)
      acd69(49)=acd69(38)*acd69(49)
      acd69(55)=acd69(37)*acd69(39)
      acd69(59)=acd69(13)*acd69(44)
      acd69(55)=acd69(55)+acd69(59)
      acd69(59)=acd69(20)*acd69(55)
      acd69(60)=acd69(37)*acd69(41)
      acd69(61)=acd69(19)*acd69(44)
      acd69(60)=acd69(60)+acd69(61)
      acd69(61)=acd69(15)*acd69(60)
      acd69(49)=acd69(61)+acd69(49)+acd69(59)
      acd69(49)=acd69(43)*acd69(49)
      acd69(53)=acd69(38)*acd69(53)
      acd69(59)=acd69(35)*acd69(39)
      acd69(61)=acd69(9)*acd69(44)
      acd69(59)=acd69(59)+acd69(61)
      acd69(61)=acd69(20)*acd69(59)
      acd69(62)=acd69(35)*acd69(41)
      acd69(63)=acd69(17)*acd69(44)
      acd69(62)=acd69(62)+acd69(63)
      acd69(63)=acd69(15)*acd69(62)
      acd69(53)=acd69(63)+acd69(53)+acd69(61)
      acd69(53)=acd69(40)*acd69(53)
      acd69(49)=acd69(53)+2.0_ki*acd69(51)+acd69(49)
      acd69(49)=acd69(26)*acd69(49)
      acd69(51)=acd69(31)*acd69(50)
      acd69(53)=acd69(24)*acd69(57)
      acd69(46)=acd69(1)*acd69(46)
      acd69(46)=acd69(46)+acd69(53)+acd69(51)
      acd69(51)=acd69(38)*acd69(52)
      acd69(52)=acd69(30)*acd69(55)
      acd69(53)=acd69(37)*acd69(42)
      acd69(55)=acd69(29)*acd69(44)
      acd69(53)=acd69(53)+acd69(55)
      acd69(55)=acd69(15)*acd69(53)
      acd69(51)=acd69(55)+acd69(51)+acd69(52)
      acd69(51)=acd69(43)*acd69(51)
      acd69(52)=acd69(38)*acd69(56)
      acd69(55)=acd69(30)*acd69(59)
      acd69(56)=acd69(35)*acd69(42)
      acd69(59)=acd69(27)*acd69(44)
      acd69(56)=acd69(56)+acd69(59)
      acd69(59)=acd69(15)*acd69(56)
      acd69(52)=acd69(59)+acd69(52)+acd69(55)
      acd69(52)=acd69(40)*acd69(52)
      acd69(46)=acd69(52)+2.0_ki*acd69(46)+acd69(51)
      acd69(46)=acd69(8)*acd69(46)
      acd69(51)=acd69(32)*acd69(57)
      acd69(50)=acd69(23)*acd69(50)
      acd69(48)=acd69(1)*acd69(48)
      acd69(48)=acd69(48)+acd69(51)+acd69(50)
      acd69(50)=acd69(38)*acd69(54)
      acd69(51)=acd69(30)*acd69(60)
      acd69(52)=acd69(20)*acd69(53)
      acd69(50)=acd69(52)+acd69(50)+acd69(51)
      acd69(50)=acd69(43)*acd69(50)
      acd69(51)=acd69(38)*acd69(58)
      acd69(52)=acd69(30)*acd69(62)
      acd69(53)=acd69(20)*acd69(56)
      acd69(51)=acd69(53)+acd69(51)+acd69(52)
      acd69(51)=acd69(40)*acd69(51)
      acd69(48)=acd69(51)+2.0_ki*acd69(48)+acd69(50)
      acd69(48)=acd69(5)*acd69(48)
      brack=2.0_ki*acd69(45)+acd69(46)+acd69(47)+acd69(48)+acd69(49)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd69h7
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
!---#[ subroutine reconstruct_d69:
   subroutine     reconstruct_d69(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group20
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group20), intent(out) :: coeffs
      ! rank 4 case :
      !---[# reconstruct coeffs%coeffs_69:
      coeffs%coeffs_69%c0 = derivative(czip)
      coeffs%coeffs_69%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_69%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_69%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_69%c1(1,4) = derivative(czip,1,1,1,1)/24.0_ki
      coeffs%coeffs_69%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_69%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_69%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_69%c1(2,4) = derivative(czip,2,2,2,2)/24.0_ki
      coeffs%coeffs_69%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_69%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_69%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_69%c1(3,4) = derivative(czip,3,3,3,3)/24.0_ki
      coeffs%coeffs_69%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_69%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_69%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_69%c1(4,4) = derivative(czip,4,4,4,4)/24.0_ki
      coeffs%coeffs_69%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_69%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_69%c2(1,3) = -derivative(czip,1,2,2,2)/6.0_ki
      coeffs%coeffs_69%c2(1,4) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_69%c2(1,5) = derivative(czip,1,1,2,2)/4.0_ki
      coeffs%coeffs_69%c2(1,6) = -derivative(czip,1,1,1,2)/6.0_ki
      coeffs%coeffs_69%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_69%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_69%c2(2,3) = -derivative(czip,1,3,3,3)/6.0_ki
      coeffs%coeffs_69%c2(2,4) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_69%c2(2,5) = derivative(czip,1,1,3,3)/4.0_ki
      coeffs%coeffs_69%c2(2,6) = -derivative(czip,1,1,1,3)/6.0_ki
      coeffs%coeffs_69%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_69%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_69%c2(3,3) = -derivative(czip,1,4,4,4)/6.0_ki
      coeffs%coeffs_69%c2(3,4) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_69%c2(3,5) = derivative(czip,1,1,4,4)/4.0_ki
      coeffs%coeffs_69%c2(3,6) = -derivative(czip,1,1,1,4)/6.0_ki
      coeffs%coeffs_69%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_69%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_69%c2(4,3) = derivative(czip,2,3,3,3)/6.0_ki
      coeffs%coeffs_69%c2(4,4) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_69%c2(4,5) = derivative(czip,2,2,3,3)/4.0_ki
      coeffs%coeffs_69%c2(4,6) = derivative(czip,2,2,2,3)/6.0_ki
      coeffs%coeffs_69%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_69%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_69%c2(5,3) = derivative(czip,2,4,4,4)/6.0_ki
      coeffs%coeffs_69%c2(5,4) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_69%c2(5,5) = derivative(czip,2,2,4,4)/4.0_ki
      coeffs%coeffs_69%c2(5,6) = derivative(czip,2,2,2,4)/6.0_ki
      coeffs%coeffs_69%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_69%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_69%c2(6,3) = derivative(czip,3,4,4,4)/6.0_ki
      coeffs%coeffs_69%c2(6,4) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_69%c2(6,5) = derivative(czip,3,3,4,4)/4.0_ki
      coeffs%coeffs_69%c2(6,6) = derivative(czip,3,3,3,4)/6.0_ki
      coeffs%coeffs_69%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_69%c3(1,2) = -derivative(czip,1,2,3,3)/2.0_ki
      coeffs%coeffs_69%c3(1,3) = -derivative(czip,1,2,2,3)/2.0_ki
      coeffs%coeffs_69%c3(1,4) = derivative(czip,1,1,2,3)/2.0_ki
      coeffs%coeffs_69%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_69%c3(2,2) = -derivative(czip,1,2,4,4)/2.0_ki
      coeffs%coeffs_69%c3(2,3) = -derivative(czip,1,2,2,4)/2.0_ki
      coeffs%coeffs_69%c3(2,4) = derivative(czip,1,1,2,4)/2.0_ki
      coeffs%coeffs_69%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_69%c3(3,2) = -derivative(czip,1,3,4,4)/2.0_ki
      coeffs%coeffs_69%c3(3,3) = -derivative(czip,1,3,3,4)/2.0_ki
      coeffs%coeffs_69%c3(3,4) = derivative(czip,1,1,3,4)/2.0_ki
      coeffs%coeffs_69%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_69%c3(4,2) = derivative(czip,2,3,4,4)/2.0_ki
      coeffs%coeffs_69%c3(4,3) = derivative(czip,2,3,3,4)/2.0_ki
      coeffs%coeffs_69%c3(4,4) = derivative(czip,2,2,3,4)/2.0_ki
      coeffs%coeffs_69%c4(1,1) = -derivative(czip,1,2,3,4)
      !---#] reconstruct coeffs%coeffs_69:
   end subroutine reconstruct_d69
!---#] subroutine reconstruct_d69:
end module     p0_dbaru_epnebbbarg_d69h7l1d
