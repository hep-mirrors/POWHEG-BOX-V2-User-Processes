module     p0_dbaru_epnebbbarg_d69h2l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d69h2l1d.f90
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
      use p0_dbaru_epnebbbarg_abbrevd69h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd69
      complex(ki) :: brack
      acd69(1)=abb69(61)
      brack=acd69(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd69h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(22) :: acd69
      complex(ki) :: brack
      acd69(1)=k2(iv1)
      acd69(2)=abb69(37)
      acd69(3)=k3(iv1)
      acd69(4)=abb69(71)
      acd69(5)=k4(iv1)
      acd69(6)=k7(iv1)
      acd69(7)=abb69(21)
      acd69(8)=spvak2k7(iv1)
      acd69(9)=abb69(34)
      acd69(10)=spvak4k3(iv1)
      acd69(11)=abb69(55)
      acd69(12)=spval5l6(iv1)
      acd69(13)=abb69(111)
      acd69(14)=spvak7k2(iv1)
      acd69(15)=abb69(58)
      acd69(16)=-acd69(5)-acd69(3)
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
      use p0_dbaru_epnebbbarg_abbrevd69h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(72) :: acd69
      complex(ki) :: brack
      acd69(1)=d(iv1,iv2)
      acd69(2)=abb69(20)
      acd69(3)=k2(iv1)
      acd69(4)=k2(iv2)
      acd69(5)=abb69(77)
      acd69(6)=k3(iv2)
      acd69(7)=abb69(125)
      acd69(8)=k4(iv2)
      acd69(9)=l5(iv2)
      acd69(10)=abb69(59)
      acd69(11)=l6(iv2)
      acd69(12)=k7(iv2)
      acd69(13)=abb69(43)
      acd69(14)=spvak2k7(iv2)
      acd69(15)=abb69(14)
      acd69(16)=spvak4k2(iv2)
      acd69(17)=abb69(32)
      acd69(18)=spvak4k3(iv2)
      acd69(19)=abb69(12)
      acd69(20)=spval5l6(iv2)
      acd69(21)=abb69(9)
      acd69(22)=spvak7k2(iv2)
      acd69(23)=abb69(69)
      acd69(24)=k3(iv1)
      acd69(25)=k4(iv1)
      acd69(26)=l5(iv1)
      acd69(27)=l6(iv1)
      acd69(28)=k7(iv1)
      acd69(29)=spvak2k7(iv1)
      acd69(30)=spvak4k2(iv1)
      acd69(31)=spvak4k3(iv1)
      acd69(32)=spval5l6(iv1)
      acd69(33)=spvak7k2(iv1)
      acd69(34)=abb69(76)
      acd69(35)=abb69(65)
      acd69(36)=abb69(70)
      acd69(37)=abb69(46)
      acd69(38)=abb69(79)
      acd69(39)=abb69(114)
      acd69(40)=abb69(16)
      acd69(41)=abb69(18)
      acd69(42)=abb69(13)
      acd69(43)=spvak1k2(iv2)
      acd69(44)=abb69(54)
      acd69(45)=spvak1k3(iv2)
      acd69(46)=abb69(40)
      acd69(47)=spval5k2(iv2)
      acd69(48)=abb69(11)
      acd69(49)=spval6k2(iv2)
      acd69(50)=abb69(44)
      acd69(51)=spvak1k2(iv1)
      acd69(52)=spvak1k3(iv1)
      acd69(53)=spval5k2(iv1)
      acd69(54)=spval6k2(iv1)
      acd69(55)=abb69(78)
      acd69(56)=abb69(41)
      acd69(57)=abb69(88)
      acd69(58)=acd69(6)+acd69(8)
      acd69(59)=-acd69(35)*acd69(58)
      acd69(60)=acd69(50)*acd69(49)
      acd69(61)=acd69(48)*acd69(47)
      acd69(62)=acd69(46)*acd69(45)
      acd69(63)=acd69(44)*acd69(43)
      acd69(64)=acd69(16)*acd69(40)
      acd69(65)=acd69(9)+acd69(11)
      acd69(66)=acd69(37)*acd69(65)
      acd69(67)=acd69(20)*acd69(42)
      acd69(68)=acd69(18)*acd69(41)
      acd69(69)=acd69(4)*acd69(15)
      acd69(59)=acd69(69)+acd69(68)+acd69(67)+acd69(66)+acd69(64)+acd69(63)+acd&
      &69(62)+acd69(60)+acd69(61)+acd69(59)
      acd69(59)=acd69(29)*acd69(59)
      acd69(60)=acd69(24)+acd69(25)
      acd69(61)=-acd69(35)*acd69(60)
      acd69(62)=acd69(50)*acd69(54)
      acd69(63)=acd69(48)*acd69(53)
      acd69(64)=acd69(46)*acd69(52)
      acd69(66)=acd69(44)*acd69(51)
      acd69(67)=acd69(30)*acd69(40)
      acd69(68)=acd69(26)+acd69(27)
      acd69(69)=acd69(37)*acd69(68)
      acd69(70)=acd69(32)*acd69(42)
      acd69(71)=acd69(31)*acd69(41)
      acd69(72)=acd69(3)*acd69(15)
      acd69(61)=acd69(72)+acd69(71)+acd69(70)+acd69(69)+acd69(67)+acd69(66)+acd&
      &69(64)+acd69(62)+acd69(63)+acd69(61)
      acd69(61)=acd69(14)*acd69(61)
      acd69(62)=-acd69(7)*acd69(58)
      acd69(63)=acd69(16)*acd69(17)
      acd69(64)=-acd69(10)*acd69(65)
      acd69(65)=acd69(22)*acd69(23)
      acd69(66)=acd69(20)*acd69(21)
      acd69(67)=acd69(18)*acd69(19)
      acd69(69)=acd69(12)*acd69(13)
      acd69(70)=acd69(4)*acd69(5)
      acd69(62)=2.0_ki*acd69(70)+acd69(69)+acd69(67)+acd69(66)+acd69(65)+acd69(&
      &63)+acd69(64)+acd69(62)
      acd69(62)=acd69(3)*acd69(62)
      acd69(63)=acd69(17)*acd69(30)
      acd69(64)=-acd69(10)*acd69(68)
      acd69(65)=-acd69(7)*acd69(60)
      acd69(66)=acd69(33)*acd69(23)
      acd69(67)=acd69(32)*acd69(21)
      acd69(68)=acd69(31)*acd69(19)
      acd69(69)=acd69(28)*acd69(13)
      acd69(63)=acd69(69)+acd69(68)+acd69(67)+acd69(66)+acd69(65)+acd69(63)+acd&
      &69(64)
      acd69(63)=acd69(4)*acd69(63)
      acd69(64)=acd69(36)*acd69(60)
      acd69(65)=acd69(32)*acd69(57)
      acd69(66)=acd69(31)*acd69(56)
      acd69(64)=acd69(66)+acd69(65)+acd69(64)
      acd69(64)=acd69(22)*acd69(64)
      acd69(65)=acd69(33)*acd69(57)
      acd69(66)=acd69(31)*acd69(55)
      acd69(67)=acd69(28)*acd69(39)
      acd69(65)=acd69(67)+acd69(65)+acd69(66)
      acd69(65)=acd69(20)*acd69(65)
      acd69(66)=acd69(33)*acd69(56)
      acd69(67)=acd69(32)*acd69(55)
      acd69(68)=acd69(28)*acd69(38)
      acd69(66)=acd69(68)+acd69(66)+acd69(67)
      acd69(66)=acd69(18)*acd69(66)
      acd69(60)=acd69(34)*acd69(60)
      acd69(67)=acd69(32)*acd69(39)
      acd69(68)=acd69(31)*acd69(38)
      acd69(60)=acd69(68)+acd69(67)+acd69(60)
      acd69(60)=acd69(12)*acd69(60)
      acd69(67)=acd69(33)*acd69(36)
      acd69(68)=acd69(28)*acd69(34)
      acd69(67)=acd69(68)+acd69(67)
      acd69(58)=acd69(58)*acd69(67)
      acd69(67)=acd69(1)*acd69(2)
      brack=acd69(58)+acd69(59)+acd69(60)+acd69(61)+acd69(62)+acd69(63)+acd69(6&
      &4)+acd69(65)+acd69(66)+2.0_ki*acd69(67)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd69h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(110) :: acd69
      complex(ki) :: brack
      acd69(1)=d(iv1,iv2)
      acd69(2)=k2(iv3)
      acd69(3)=abb69(36)
      acd69(4)=k3(iv3)
      acd69(5)=abb69(35)
      acd69(6)=k4(iv3)
      acd69(7)=l5(iv3)
      acd69(8)=abb69(31)
      acd69(9)=l6(iv3)
      acd69(10)=k7(iv3)
      acd69(11)=abb69(25)
      acd69(12)=spvak2k7(iv3)
      acd69(13)=abb69(28)
      acd69(14)=spvak4k2(iv3)
      acd69(15)=abb69(27)
      acd69(16)=spvak4k3(iv3)
      acd69(17)=abb69(38)
      acd69(18)=spval5l6(iv3)
      acd69(19)=abb69(10)
      acd69(20)=spvak7k2(iv3)
      acd69(21)=abb69(96)
      acd69(22)=d(iv1,iv3)
      acd69(23)=k2(iv2)
      acd69(24)=k3(iv2)
      acd69(25)=k4(iv2)
      acd69(26)=l5(iv2)
      acd69(27)=l6(iv2)
      acd69(28)=k7(iv2)
      acd69(29)=spvak2k7(iv2)
      acd69(30)=spvak4k2(iv2)
      acd69(31)=spvak4k3(iv2)
      acd69(32)=spval5l6(iv2)
      acd69(33)=spvak7k2(iv2)
      acd69(34)=d(iv2,iv3)
      acd69(35)=k2(iv1)
      acd69(36)=k3(iv1)
      acd69(37)=k4(iv1)
      acd69(38)=l5(iv1)
      acd69(39)=l6(iv1)
      acd69(40)=k7(iv1)
      acd69(41)=spvak2k7(iv1)
      acd69(42)=spvak4k2(iv1)
      acd69(43)=spvak4k3(iv1)
      acd69(44)=spval5l6(iv1)
      acd69(45)=spvak7k2(iv1)
      acd69(46)=abb69(119)
      acd69(47)=abb69(17)
      acd69(48)=abb69(67)
      acd69(49)=abb69(73)
      acd69(50)=abb69(124)
      acd69(51)=abb69(15)
      acd69(52)=abb69(82)
      acd69(53)=abb69(19)
      acd69(54)=abb69(52)
      acd69(55)=abb69(29)
      acd69(56)=abb69(45)
      acd69(57)=spvak1k2(iv3)
      acd69(58)=abb69(51)
      acd69(59)=spvak1k3(iv3)
      acd69(60)=abb69(62)
      acd69(61)=spval5k2(iv3)
      acd69(62)=abb69(23)
      acd69(63)=spvak1k2(iv2)
      acd69(64)=spvak1k3(iv2)
      acd69(65)=spval5k2(iv2)
      acd69(66)=abb69(68)
      acd69(67)=abb69(100)
      acd69(68)=spvak1k2(iv1)
      acd69(69)=spvak1k3(iv1)
      acd69(70)=spval5k2(iv1)
      acd69(71)=abb69(42)
      acd69(72)=abb69(30)
      acd69(73)=abb69(84)
      acd69(74)=abb69(57)
      acd69(75)=abb69(49)
      acd69(76)=abb69(64)
      acd69(77)=abb69(50)
      acd69(78)=spval6k2(iv3)
      acd69(79)=abb69(33)
      acd69(80)=spval6k2(iv2)
      acd69(81)=abb69(47)
      acd69(82)=abb69(63)
      acd69(83)=spval6k2(iv1)
      acd69(84)=acd69(60)*acd69(69)
      acd69(85)=acd69(58)*acd69(68)
      acd69(86)=acd69(42)*acd69(54)
      acd69(87)=acd69(62)*acd69(70)
      acd69(88)=acd69(44)*acd69(56)
      acd69(89)=acd69(43)*acd69(55)
      acd69(90)=acd69(36)+acd69(37)
      acd69(91)=acd69(90)*acd69(51)
      acd69(92)=2.0_ki*acd69(35)
      acd69(93)=acd69(92)*acd69(47)
      acd69(84)=acd69(88)+acd69(89)+acd69(91)+acd69(93)+acd69(84)+acd69(85)+acd&
      &69(86)-acd69(87)
      acd69(85)=acd69(23)*acd69(84)
      acd69(86)=acd69(60)*acd69(64)
      acd69(87)=acd69(58)*acd69(63)
      acd69(88)=acd69(30)*acd69(54)
      acd69(89)=acd69(62)*acd69(65)
      acd69(91)=acd69(32)*acd69(56)
      acd69(93)=acd69(31)*acd69(55)
      acd69(94)=acd69(24)+acd69(25)
      acd69(95)=acd69(94)*acd69(51)
      acd69(86)=acd69(88)-acd69(89)+acd69(91)+acd69(93)+acd69(95)+acd69(86)+acd&
      &69(87)
      acd69(87)=acd69(35)*acd69(86)
      acd69(88)=acd69(82)*acd69(69)
      acd69(89)=acd69(68)*acd69(81)
      acd69(91)=acd69(42)*acd69(74)
      acd69(93)=acd69(43)*acd69(75)
      acd69(95)=acd69(90)*acd69(71)
      acd69(88)=acd69(91)+acd69(88)+acd69(89)+acd69(93)-acd69(95)
      acd69(89)=acd69(32)*acd69(88)
      acd69(91)=acd69(79)*acd69(83)
      acd69(93)=acd69(68)*acd69(76)
      acd69(95)=acd69(70)*acd69(77)
      acd69(96)=acd69(44)*acd69(75)
      acd69(97)=acd69(38)+acd69(39)
      acd69(98)=acd69(97)*acd69(72)
      acd69(91)=-acd69(98)+acd69(91)+acd69(93)+acd69(95)+acd69(96)
      acd69(93)=acd69(31)*acd69(91)
      acd69(95)=acd69(82)*acd69(64)
      acd69(96)=acd69(63)*acd69(81)
      acd69(98)=acd69(30)*acd69(74)
      acd69(99)=acd69(94)*acd69(71)
      acd69(95)=-acd69(99)+acd69(98)+acd69(95)+acd69(96)
      acd69(96)=acd69(44)*acd69(95)
      acd69(98)=acd69(79)*acd69(80)
      acd69(99)=acd69(63)*acd69(76)
      acd69(100)=acd69(65)*acd69(77)
      acd69(101)=acd69(26)+acd69(27)
      acd69(102)=acd69(101)*acd69(72)
      acd69(98)=acd69(98)+acd69(99)+acd69(100)-acd69(102)
      acd69(99)=acd69(43)*acd69(98)
      acd69(100)=acd69(70)*acd69(94)
      acd69(102)=acd69(65)*acd69(90)
      acd69(100)=acd69(102)+acd69(100)
      acd69(100)=acd69(62)*acd69(100)
      acd69(102)=2.0_ki*acd69(1)
      acd69(103)=acd69(13)*acd69(102)
      acd69(85)=acd69(85)+acd69(87)+acd69(93)+acd69(89)+acd69(99)+acd69(96)+acd&
      &69(103)+acd69(100)
      acd69(85)=acd69(12)*acd69(85)
      acd69(84)=acd69(29)*acd69(84)
      acd69(86)=acd69(41)*acd69(86)
      acd69(87)=-3.0_ki*acd69(35)+acd69(90)
      acd69(87)=acd69(46)*acd69(87)
      acd69(89)=acd69(42)*acd69(48)
      acd69(93)=-acd69(44)*acd69(50)
      acd69(96)=acd69(43)*acd69(49)
      acd69(99)=acd69(41)*acd69(47)
      acd69(87)=acd69(99)+acd69(96)+acd69(93)+acd69(89)+acd69(87)
      acd69(87)=acd69(23)*acd69(87)
      acd69(89)=acd69(46)*acd69(94)
      acd69(93)=acd69(30)*acd69(48)
      acd69(96)=-acd69(32)*acd69(50)
      acd69(99)=acd69(31)*acd69(49)
      acd69(89)=acd69(99)+acd69(96)+acd69(93)+acd69(89)
      acd69(89)=acd69(89)*acd69(92)
      acd69(93)=acd69(42)*acd69(66)
      acd69(96)=acd69(43)*acd69(67)
      acd69(99)=acd69(90)*acd69(50)
      acd69(93)=acd69(99)+acd69(93)+acd69(96)
      acd69(96)=acd69(32)*acd69(93)
      acd69(99)=acd69(53)*acd69(40)
      acd69(100)=acd69(44)*acd69(67)
      acd69(103)=acd69(97)*acd69(52)
      acd69(99)=-acd69(103)+acd69(99)+acd69(100)
      acd69(100)=acd69(31)*acd69(99)
      acd69(103)=acd69(30)*acd69(66)
      acd69(104)=acd69(94)*acd69(50)
      acd69(103)=acd69(103)+acd69(104)
      acd69(104)=acd69(44)*acd69(103)
      acd69(105)=acd69(53)*acd69(28)
      acd69(106)=acd69(101)*acd69(52)
      acd69(105)=acd69(105)-acd69(106)
      acd69(106)=acd69(43)*acd69(105)
      acd69(107)=acd69(3)*acd69(102)
      acd69(84)=2.0_ki*acd69(87)+acd69(84)+acd69(89)+acd69(86)+acd69(100)+acd69&
      &(96)+acd69(106)+acd69(107)+acd69(104)
      acd69(84)=acd69(2)*acd69(84)
      acd69(86)=acd69(60)*acd69(59)
      acd69(87)=acd69(57)*acd69(58)
      acd69(89)=acd69(14)*acd69(54)
      acd69(96)=acd69(62)*acd69(61)
      acd69(100)=acd69(18)*acd69(56)
      acd69(104)=acd69(16)*acd69(55)
      acd69(106)=acd69(4)+acd69(6)
      acd69(107)=acd69(106)*acd69(51)
      acd69(86)=acd69(89)-acd69(96)+acd69(100)+acd69(104)+acd69(107)+acd69(86)+&
      &acd69(87)
      acd69(87)=acd69(35)*acd69(86)
      acd69(88)=acd69(18)*acd69(88)
      acd69(89)=acd69(16)*acd69(91)
      acd69(91)=acd69(82)*acd69(59)
      acd69(96)=acd69(57)*acd69(81)
      acd69(100)=acd69(14)*acd69(74)
      acd69(104)=acd69(106)*acd69(71)
      acd69(91)=acd69(91)+acd69(96)+acd69(100)-acd69(104)
      acd69(96)=acd69(44)*acd69(91)
      acd69(100)=acd69(79)*acd69(78)
      acd69(104)=acd69(57)*acd69(76)
      acd69(107)=acd69(61)*acd69(77)
      acd69(108)=acd69(7)+acd69(9)
      acd69(109)=acd69(108)*acd69(72)
      acd69(100)=acd69(100)+acd69(104)+acd69(107)-acd69(109)
      acd69(104)=acd69(43)*acd69(100)
      acd69(107)=acd69(70)*acd69(106)
      acd69(109)=acd69(61)*acd69(90)
      acd69(107)=acd69(109)+acd69(107)
      acd69(107)=acd69(62)*acd69(107)
      acd69(109)=2.0_ki*acd69(22)
      acd69(110)=acd69(13)*acd69(109)
      acd69(87)=acd69(87)+acd69(89)+acd69(88)+acd69(104)+acd69(96)+acd69(110)+a&
      &cd69(107)
      acd69(87)=acd69(29)*acd69(87)
      acd69(88)=-acd69(5)*acd69(90)
      acd69(89)=acd69(21)*acd69(45)
      acd69(90)=acd69(40)*acd69(11)
      acd69(96)=acd69(8)*acd69(97)
      acd69(97)=acd69(42)*acd69(15)
      acd69(104)=acd69(44)*acd69(19)
      acd69(107)=acd69(43)*acd69(17)
      acd69(88)=acd69(107)+acd69(104)+acd69(97)+acd69(96)+acd69(89)+acd69(90)+a&
      &cd69(88)
      acd69(88)=acd69(34)*acd69(88)
      acd69(89)=-acd69(5)*acd69(94)
      acd69(90)=acd69(21)*acd69(33)
      acd69(96)=acd69(28)*acd69(11)
      acd69(97)=acd69(8)*acd69(101)
      acd69(101)=acd69(30)*acd69(15)
      acd69(89)=acd69(101)+acd69(97)+acd69(90)+acd69(96)+acd69(89)
      acd69(89)=acd69(22)*acd69(89)
      acd69(90)=-acd69(5)*acd69(106)
      acd69(96)=acd69(21)*acd69(20)
      acd69(97)=acd69(10)*acd69(11)
      acd69(101)=acd69(8)*acd69(108)
      acd69(104)=acd69(14)*acd69(15)
      acd69(90)=acd69(104)+acd69(101)+acd69(96)+acd69(97)+acd69(90)
      acd69(90)=acd69(1)*acd69(90)
      acd69(88)=acd69(90)+acd69(89)+acd69(88)
      acd69(89)=acd69(32)*acd69(91)
      acd69(90)=acd69(31)*acd69(100)
      acd69(91)=acd69(31)*acd69(75)
      acd69(91)=acd69(91)+acd69(95)
      acd69(91)=acd69(18)*acd69(91)
      acd69(95)=acd69(32)*acd69(75)
      acd69(95)=acd69(95)+acd69(98)
      acd69(95)=acd69(16)*acd69(95)
      acd69(96)=acd69(65)*acd69(106)
      acd69(94)=acd69(61)*acd69(94)
      acd69(94)=acd69(94)+acd69(96)
      acd69(94)=acd69(62)*acd69(94)
      acd69(96)=acd69(34)*acd69(13)
      acd69(89)=acd69(95)+acd69(91)+acd69(90)+acd69(89)+2.0_ki*acd69(96)+acd69(&
      &94)
      acd69(89)=acd69(41)*acd69(89)
      acd69(86)=acd69(41)*acd69(86)
      acd69(90)=acd69(46)*acd69(106)
      acd69(91)=acd69(14)*acd69(48)
      acd69(94)=-acd69(18)*acd69(50)
      acd69(95)=acd69(16)*acd69(49)
      acd69(90)=acd69(95)+acd69(94)+acd69(91)+acd69(90)
      acd69(90)=acd69(90)*acd69(92)
      acd69(91)=acd69(18)*acd69(93)
      acd69(92)=acd69(16)*acd69(99)
      acd69(93)=acd69(14)*acd69(66)
      acd69(94)=acd69(106)*acd69(50)
      acd69(93)=acd69(93)+acd69(94)
      acd69(94)=acd69(44)*acd69(93)
      acd69(95)=acd69(53)*acd69(10)
      acd69(96)=acd69(108)*acd69(52)
      acd69(95)=acd69(95)-acd69(96)
      acd69(96)=acd69(43)*acd69(95)
      acd69(97)=acd69(3)*acd69(109)
      acd69(86)=acd69(90)+acd69(86)+acd69(92)+acd69(91)+acd69(96)+acd69(97)+acd&
      &69(94)
      acd69(86)=acd69(23)*acd69(86)
      acd69(90)=acd69(32)*acd69(93)
      acd69(91)=acd69(31)*acd69(95)
      acd69(92)=acd69(31)*acd69(67)
      acd69(92)=acd69(92)+acd69(103)
      acd69(92)=acd69(18)*acd69(92)
      acd69(93)=acd69(32)*acd69(67)
      acd69(93)=acd69(93)+acd69(105)
      acd69(93)=acd69(16)*acd69(93)
      acd69(94)=2.0_ki*acd69(3)
      acd69(94)=acd69(34)*acd69(94)
      acd69(90)=acd69(93)+acd69(92)+acd69(91)+acd69(94)+acd69(90)
      acd69(90)=acd69(35)*acd69(90)
      acd69(91)=acd69(19)*acd69(102)
      acd69(92)=acd69(43)*acd69(73)
      acd69(93)=acd69(28)*acd69(92)
      acd69(94)=acd69(73)*acd69(40)
      acd69(95)=acd69(31)*acd69(94)
      acd69(91)=acd69(95)+acd69(91)+acd69(93)
      acd69(91)=acd69(18)*acd69(91)
      acd69(93)=acd69(17)*acd69(102)
      acd69(95)=acd69(44)*acd69(73)
      acd69(96)=acd69(28)*acd69(95)
      acd69(94)=acd69(32)*acd69(94)
      acd69(93)=acd69(94)+acd69(93)+acd69(96)
      acd69(93)=acd69(16)*acd69(93)
      acd69(94)=acd69(19)*acd69(109)
      acd69(92)=acd69(10)*acd69(92)
      acd69(92)=acd69(94)+acd69(92)
      acd69(92)=acd69(32)*acd69(92)
      acd69(94)=acd69(17)*acd69(109)
      acd69(95)=acd69(10)*acd69(95)
      acd69(94)=acd69(94)+acd69(95)
      acd69(94)=acd69(31)*acd69(94)
      brack=acd69(84)+acd69(85)+acd69(86)+acd69(87)+2.0_ki*acd69(88)+acd69(89)+&
      &acd69(90)+acd69(91)+acd69(92)+acd69(93)+acd69(94)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd69h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(66) :: acd69
      complex(ki) :: brack
      acd69(1)=d(iv1,iv2)
      acd69(2)=d(iv3,iv4)
      acd69(3)=abb69(60)
      acd69(4)=k2(iv3)
      acd69(5)=k2(iv4)
      acd69(6)=abb69(53)
      acd69(7)=spvak2k7(iv4)
      acd69(8)=abb69(39)
      acd69(9)=spvak4k2(iv4)
      acd69(10)=abb69(89)
      acd69(11)=spvak4k3(iv4)
      acd69(12)=abb69(83)
      acd69(13)=spval5l6(iv4)
      acd69(14)=abb69(98)
      acd69(15)=spvak2k7(iv3)
      acd69(16)=spvak4k2(iv3)
      acd69(17)=spvak4k3(iv3)
      acd69(18)=spval5l6(iv3)
      acd69(19)=abb69(56)
      acd69(20)=abb69(48)
      acd69(21)=abb69(24)
      acd69(22)=spval5k2(iv4)
      acd69(23)=abb69(22)
      acd69(24)=spval5k2(iv3)
      acd69(25)=abb69(94)
      acd69(26)=abb69(108)
      acd69(27)=d(iv1,iv3)
      acd69(28)=d(iv2,iv4)
      acd69(29)=k2(iv2)
      acd69(30)=spvak2k7(iv2)
      acd69(31)=spvak4k2(iv2)
      acd69(32)=spvak4k3(iv2)
      acd69(33)=spval5l6(iv2)
      acd69(34)=spval5k2(iv2)
      acd69(35)=d(iv1,iv4)
      acd69(36)=d(iv2,iv3)
      acd69(37)=k2(iv1)
      acd69(38)=spvak2k7(iv1)
      acd69(39)=spvak4k2(iv1)
      acd69(40)=spvak4k3(iv1)
      acd69(41)=spval5l6(iv1)
      acd69(42)=spval5k2(iv1)
      acd69(43)=spvak1k2(iv4)
      acd69(44)=abb69(26)
      acd69(45)=spvak1k2(iv3)
      acd69(46)=spvak1k2(iv2)
      acd69(47)=spvak1k2(iv1)
      acd69(48)=abb69(66)
      acd69(49)=acd69(10)*acd69(31)
      acd69(50)=acd69(33)*acd69(14)
      acd69(49)=acd69(49)+acd69(50)
      acd69(50)=acd69(32)*acd69(12)
      acd69(51)=2.0_ki*acd69(6)
      acd69(52)=acd69(51)*acd69(29)
      acd69(50)=acd69(50)+acd69(52)+acd69(49)
      acd69(52)=acd69(4)*acd69(50)
      acd69(53)=acd69(10)*acd69(16)
      acd69(54)=acd69(18)*acd69(14)
      acd69(53)=acd69(53)+acd69(54)
      acd69(54)=acd69(29)*acd69(53)
      acd69(55)=acd69(33)*acd69(26)
      acd69(56)=acd69(29)*acd69(12)
      acd69(55)=acd69(55)+acd69(56)
      acd69(56)=acd69(17)*acd69(55)
      acd69(57)=acd69(33)*acd69(25)
      acd69(58)=acd69(16)*acd69(57)
      acd69(59)=acd69(18)*acd69(25)
      acd69(60)=acd69(31)*acd69(59)
      acd69(61)=acd69(18)*acd69(26)
      acd69(62)=acd69(32)*acd69(61)
      acd69(63)=4.0_ki*acd69(3)
      acd69(64)=acd69(36)*acd69(63)
      acd69(52)=acd69(64)+acd69(52)+acd69(56)+acd69(54)+acd69(62)+acd69(58)+acd&
      &69(60)
      acd69(52)=acd69(35)*acd69(52)
      acd69(50)=acd69(5)*acd69(50)
      acd69(54)=acd69(10)*acd69(9)
      acd69(56)=acd69(13)*acd69(14)
      acd69(54)=acd69(54)+acd69(56)
      acd69(56)=acd69(29)*acd69(54)
      acd69(55)=acd69(11)*acd69(55)
      acd69(58)=acd69(9)*acd69(57)
      acd69(60)=acd69(13)*acd69(25)
      acd69(62)=acd69(31)*acd69(60)
      acd69(64)=acd69(13)*acd69(26)
      acd69(65)=acd69(32)*acd69(64)
      acd69(66)=acd69(28)*acd69(63)
      acd69(50)=acd69(66)+acd69(50)+acd69(55)+acd69(56)+acd69(65)+acd69(58)+acd&
      &69(62)
      acd69(50)=acd69(27)*acd69(50)
      acd69(55)=acd69(11)*acd69(12)
      acd69(56)=acd69(5)*acd69(51)
      acd69(55)=acd69(56)+acd69(55)+acd69(54)
      acd69(55)=acd69(4)*acd69(55)
      acd69(56)=acd69(17)*acd69(12)
      acd69(56)=acd69(56)+acd69(53)
      acd69(56)=acd69(5)*acd69(56)
      acd69(58)=acd69(9)*acd69(59)
      acd69(62)=acd69(16)*acd69(60)
      acd69(64)=acd69(17)*acd69(64)
      acd69(61)=acd69(11)*acd69(61)
      acd69(63)=acd69(2)*acd69(63)
      acd69(55)=acd69(63)+acd69(55)+acd69(56)+acd69(61)+acd69(64)+acd69(58)+acd&
      &69(62)
      acd69(55)=acd69(1)*acd69(55)
      acd69(56)=acd69(10)*acd69(39)
      acd69(58)=acd69(41)*acd69(14)
      acd69(61)=acd69(40)*acd69(12)
      acd69(51)=acd69(51)*acd69(37)
      acd69(51)=acd69(51)+acd69(61)+acd69(56)+acd69(58)
      acd69(56)=acd69(5)*acd69(51)
      acd69(54)=acd69(37)*acd69(54)
      acd69(58)=acd69(41)*acd69(26)
      acd69(61)=acd69(37)*acd69(12)
      acd69(58)=acd69(58)+acd69(61)
      acd69(61)=acd69(11)*acd69(58)
      acd69(62)=acd69(41)*acd69(25)
      acd69(63)=acd69(9)*acd69(62)
      acd69(60)=acd69(39)*acd69(60)
      acd69(64)=acd69(40)*acd69(26)
      acd69(65)=acd69(13)*acd69(64)
      acd69(54)=acd69(56)+acd69(61)+acd69(54)+acd69(65)+acd69(63)+acd69(60)
      acd69(54)=acd69(36)*acd69(54)
      acd69(56)=acd69(4)*acd69(51)
      acd69(53)=acd69(37)*acd69(53)
      acd69(60)=acd69(17)*acd69(58)
      acd69(61)=acd69(16)*acd69(62)
      acd69(59)=acd69(39)*acd69(59)
      acd69(63)=acd69(18)*acd69(64)
      acd69(53)=acd69(56)+acd69(60)+acd69(53)+acd69(63)+acd69(61)+acd69(59)
      acd69(53)=acd69(28)*acd69(53)
      acd69(51)=acd69(29)*acd69(51)
      acd69(49)=acd69(37)*acd69(49)
      acd69(56)=acd69(32)*acd69(58)
      acd69(58)=acd69(31)*acd69(62)
      acd69(57)=acd69(39)*acd69(57)
      acd69(59)=acd69(33)*acd69(64)
      acd69(49)=acd69(51)+acd69(56)+acd69(49)+acd69(59)+acd69(58)+acd69(57)
      acd69(49)=acd69(2)*acd69(49)
      acd69(49)=acd69(55)+acd69(49)+acd69(50)+acd69(53)+acd69(54)+acd69(52)
      acd69(50)=acd69(23)*acd69(22)
      acd69(51)=acd69(19)*acd69(9)
      acd69(52)=acd69(13)*acd69(21)
      acd69(53)=acd69(11)*acd69(20)
      acd69(54)=acd69(5)*acd69(8)
      acd69(50)=acd69(54)+acd69(53)+acd69(52)+acd69(50)+acd69(51)
      acd69(51)=acd69(36)*acd69(50)
      acd69(52)=acd69(23)*acd69(24)
      acd69(53)=acd69(19)*acd69(16)
      acd69(54)=acd69(18)*acd69(21)
      acd69(55)=acd69(17)*acd69(20)
      acd69(56)=acd69(4)*acd69(8)
      acd69(52)=acd69(56)+acd69(55)+acd69(54)+acd69(52)+acd69(53)
      acd69(53)=acd69(28)*acd69(52)
      acd69(54)=acd69(23)*acd69(34)
      acd69(55)=acd69(19)*acd69(31)
      acd69(56)=acd69(33)*acd69(21)
      acd69(57)=acd69(32)*acd69(20)
      acd69(58)=acd69(29)*acd69(8)
      acd69(54)=acd69(58)+acd69(57)+acd69(56)+acd69(54)+acd69(55)
      acd69(55)=acd69(2)*acd69(54)
      acd69(51)=acd69(55)+acd69(51)+acd69(53)
      acd69(53)=acd69(18)*acd69(43)
      acd69(55)=acd69(13)*acd69(45)
      acd69(53)=acd69(53)+acd69(55)
      acd69(55)=acd69(32)*acd69(53)
      acd69(56)=acd69(33)*acd69(43)
      acd69(57)=acd69(13)*acd69(46)
      acd69(56)=acd69(56)+acd69(57)
      acd69(57)=acd69(17)*acd69(56)
      acd69(58)=acd69(33)*acd69(45)
      acd69(59)=acd69(18)*acd69(46)
      acd69(58)=acd69(58)+acd69(59)
      acd69(59)=acd69(11)*acd69(58)
      acd69(55)=acd69(59)+acd69(55)+acd69(57)
      acd69(55)=acd69(48)*acd69(55)
      acd69(57)=acd69(17)*acd69(43)
      acd69(59)=acd69(11)*acd69(45)
      acd69(57)=acd69(57)+acd69(59)
      acd69(59)=acd69(29)*acd69(57)
      acd69(60)=acd69(32)*acd69(45)
      acd69(61)=acd69(17)*acd69(46)
      acd69(60)=acd69(60)+acd69(61)
      acd69(60)=acd69(5)*acd69(60)
      acd69(61)=acd69(32)*acd69(43)
      acd69(62)=acd69(11)*acd69(46)
      acd69(61)=acd69(61)+acd69(62)
      acd69(61)=acd69(4)*acd69(61)
      acd69(59)=acd69(61)+acd69(60)+acd69(59)
      acd69(59)=acd69(44)*acd69(59)
      acd69(51)=acd69(59)+2.0_ki*acd69(51)+acd69(55)
      acd69(51)=acd69(38)*acd69(51)
      acd69(55)=acd69(35)*acd69(52)
      acd69(59)=acd69(27)*acd69(50)
      acd69(60)=acd69(23)*acd69(42)
      acd69(61)=acd69(19)*acd69(39)
      acd69(62)=acd69(41)*acd69(21)
      acd69(63)=acd69(40)*acd69(20)
      acd69(64)=acd69(37)*acd69(8)
      acd69(60)=acd69(64)+acd69(63)+acd69(62)+acd69(60)+acd69(61)
      acd69(61)=acd69(2)*acd69(60)
      acd69(55)=acd69(61)+acd69(55)+acd69(59)
      acd69(53)=acd69(40)*acd69(53)
      acd69(59)=acd69(41)*acd69(43)
      acd69(61)=acd69(13)*acd69(47)
      acd69(59)=acd69(59)+acd69(61)
      acd69(61)=acd69(17)*acd69(59)
      acd69(62)=acd69(41)*acd69(45)
      acd69(63)=acd69(18)*acd69(47)
      acd69(62)=acd69(62)+acd69(63)
      acd69(63)=acd69(11)*acd69(62)
      acd69(53)=acd69(63)+acd69(53)+acd69(61)
      acd69(53)=acd69(48)*acd69(53)
      acd69(57)=acd69(37)*acd69(57)
      acd69(61)=acd69(40)*acd69(45)
      acd69(63)=acd69(17)*acd69(47)
      acd69(61)=acd69(61)+acd69(63)
      acd69(61)=acd69(5)*acd69(61)
      acd69(63)=acd69(40)*acd69(43)
      acd69(64)=acd69(11)*acd69(47)
      acd69(63)=acd69(63)+acd69(64)
      acd69(63)=acd69(4)*acd69(63)
      acd69(57)=acd69(63)+acd69(61)+acd69(57)
      acd69(57)=acd69(44)*acd69(57)
      acd69(53)=acd69(57)+2.0_ki*acd69(55)+acd69(53)
      acd69(53)=acd69(30)*acd69(53)
      acd69(55)=acd69(35)*acd69(54)
      acd69(57)=acd69(28)*acd69(60)
      acd69(50)=acd69(1)*acd69(50)
      acd69(50)=acd69(50)+acd69(55)+acd69(57)
      acd69(55)=acd69(40)*acd69(56)
      acd69(56)=acd69(32)*acd69(59)
      acd69(57)=acd69(41)*acd69(46)
      acd69(59)=acd69(33)*acd69(47)
      acd69(57)=acd69(57)+acd69(59)
      acd69(59)=acd69(11)*acd69(57)
      acd69(55)=acd69(59)+acd69(55)+acd69(56)
      acd69(55)=acd69(48)*acd69(55)
      acd69(56)=acd69(32)*acd69(37)
      acd69(59)=acd69(29)*acd69(40)
      acd69(56)=acd69(56)+acd69(59)
      acd69(59)=acd69(43)*acd69(56)
      acd69(61)=acd69(37)*acd69(46)
      acd69(63)=acd69(29)*acd69(47)
      acd69(61)=acd69(61)+acd69(63)
      acd69(63)=acd69(11)*acd69(61)
      acd69(64)=acd69(40)*acd69(46)
      acd69(65)=acd69(32)*acd69(47)
      acd69(64)=acd69(64)+acd69(65)
      acd69(65)=acd69(5)*acd69(64)
      acd69(59)=acd69(65)+acd69(63)+acd69(59)
      acd69(59)=acd69(44)*acd69(59)
      acd69(50)=acd69(59)+2.0_ki*acd69(50)+acd69(55)
      acd69(50)=acd69(15)*acd69(50)
      acd69(55)=acd69(36)*acd69(60)
      acd69(54)=acd69(27)*acd69(54)
      acd69(52)=acd69(1)*acd69(52)
      acd69(52)=acd69(52)+acd69(55)+acd69(54)
      acd69(54)=acd69(40)*acd69(58)
      acd69(55)=acd69(32)*acd69(62)
      acd69(57)=acd69(17)*acd69(57)
      acd69(54)=acd69(57)+acd69(54)+acd69(55)
      acd69(54)=acd69(48)*acd69(54)
      acd69(55)=acd69(45)*acd69(56)
      acd69(56)=acd69(17)*acd69(61)
      acd69(57)=acd69(4)*acd69(64)
      acd69(55)=acd69(57)+acd69(56)+acd69(55)
      acd69(55)=acd69(44)*acd69(55)
      acd69(52)=acd69(55)+2.0_ki*acd69(52)+acd69(54)
      acd69(52)=acd69(7)*acd69(52)
      brack=2.0_ki*acd69(49)+acd69(50)+acd69(51)+acd69(52)+acd69(53)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd69h2
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
end module     p0_dbaru_epnebbbarg_d69h2l1d
