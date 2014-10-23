module     p0_dbaru_epnebbbarg_d78h3l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d78h3l1d.f90
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
   public :: derivative , reconstruct_d78
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd78h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(75) :: acd78
      complex(ki) :: brack
      acd78(1)=dotproduct(k2,qshift)
      acd78(2)=dotproduct(k7,qshift)
      acd78(3)=abb78(71)
      acd78(4)=dotproduct(qshift,spvak2k7)
      acd78(5)=abb78(32)
      acd78(6)=dotproduct(qshift,spvak4l6)
      acd78(7)=abb78(97)
      acd78(8)=dotproduct(qshift,spvak4k7)
      acd78(9)=abb78(15)
      acd78(10)=abb78(40)
      acd78(11)=dotproduct(l6,qshift)
      acd78(12)=abb78(25)
      acd78(13)=abb78(91)
      acd78(14)=abb78(84)
      acd78(15)=dotproduct(qshift,spvak4k3)
      acd78(16)=abb78(100)
      acd78(17)=abb78(33)
      acd78(18)=abb78(14)
      acd78(19)=dotproduct(qshift,spvak2l6)
      acd78(20)=abb78(34)
      acd78(21)=abb78(49)
      acd78(22)=dotproduct(qshift,spvak2k3)
      acd78(23)=abb78(27)
      acd78(24)=abb78(20)
      acd78(25)=abb78(18)
      acd78(26)=dotproduct(qshift,qshift)
      acd78(27)=abb78(12)
      acd78(28)=abb78(80)
      acd78(29)=abb78(74)
      acd78(30)=abb78(62)
      acd78(31)=abb78(63)
      acd78(32)=abb78(19)
      acd78(33)=dotproduct(qshift,spvak2l5)
      acd78(34)=abb78(42)
      acd78(35)=dotproduct(qshift,spvak7l5)
      acd78(36)=abb78(48)
      acd78(37)=dotproduct(qshift,spvak7l6)
      acd78(38)=abb78(46)
      acd78(39)=abb78(24)
      acd78(40)=abb78(21)
      acd78(41)=abb78(28)
      acd78(42)=abb78(36)
      acd78(43)=dotproduct(qshift,spvak7k2)
      acd78(44)=abb78(45)
      acd78(45)=dotproduct(qshift,spvak7k3)
      acd78(46)=abb78(41)
      acd78(47)=abb78(11)
      acd78(48)=abb78(26)
      acd78(49)=dotproduct(qshift,spvak1l6)
      acd78(50)=abb78(17)
      acd78(51)=dotproduct(qshift,spval6k7)
      acd78(52)=abb78(77)
      acd78(53)=abb78(31)
      acd78(54)=abb78(22)
      acd78(55)=abb78(16)
      acd78(56)=abb78(13)
      acd78(57)=dotproduct(qshift,spvak2k1)
      acd78(58)=abb78(35)
      acd78(59)=abb78(39)
      acd78(60)=abb78(83)
      acd78(61)=abb78(23)
      acd78(62)=abb78(29)
      acd78(63)=-acd78(35)*acd78(36)
      acd78(64)=-acd78(33)*acd78(34)
      acd78(65)=-acd78(37)*acd78(38)
      acd78(63)=acd78(65)+acd78(64)+acd78(39)+acd78(63)
      acd78(63)=acd78(15)*acd78(63)
      acd78(64)=acd78(45)*acd78(46)
      acd78(65)=acd78(43)*acd78(44)
      acd78(66)=acd78(37)*acd78(42)
      acd78(67)=acd78(22)*acd78(40)
      acd78(68)=-acd78(26)*acd78(27)
      acd78(69)=acd78(19)*acd78(41)
      acd78(70)=acd78(11)*acd78(12)
      acd78(71)=acd78(1)*acd78(5)
      acd78(72)=acd78(2)*acd78(18)
      acd78(73)=acd78(4)*acd78(32)
      acd78(63)=acd78(73)+acd78(63)+acd78(72)+acd78(71)+acd78(70)+acd78(69)+acd&
      &78(68)+acd78(67)+acd78(66)+acd78(65)-acd78(47)+acd78(64)
      acd78(63)=acd78(4)*acd78(63)
      acd78(64)=acd78(51)*acd78(52)
      acd78(65)=acd78(49)*acd78(50)
      acd78(66)=-acd78(26)*acd78(30)
      acd78(67)=acd78(19)*acd78(48)
      acd78(68)=acd78(11)*acd78(16)
      acd78(69)=-acd78(19)*acd78(20)
      acd78(69)=acd78(21)+acd78(69)
      acd78(69)=acd78(2)*acd78(69)
      acd78(64)=acd78(69)+acd78(68)+acd78(67)+acd78(66)+acd78(65)-acd78(53)+acd&
      &78(64)
      acd78(64)=acd78(15)*acd78(64)
      acd78(65)=acd78(8)*acd78(14)
      acd78(66)=acd78(6)*acd78(13)
      acd78(65)=acd78(65)-acd78(66)
      acd78(66)=acd78(22)*acd78(23)
      acd78(67)=acd78(19)*acd78(24)
      acd78(68)=acd78(1)*acd78(3)
      acd78(66)=acd78(68)+acd78(67)-acd78(25)+acd78(66)-acd78(65)
      acd78(66)=acd78(2)*acd78(66)
      acd78(67)=-acd78(8)*acd78(29)
      acd78(68)=-acd78(6)*acd78(28)
      acd78(67)=acd78(68)+acd78(31)+acd78(67)
      acd78(67)=acd78(26)*acd78(67)
      acd78(65)=-acd78(17)-acd78(65)
      acd78(65)=acd78(11)*acd78(65)
      acd78(68)=acd78(8)*acd78(9)
      acd78(69)=acd78(6)*acd78(7)
      acd78(68)=acd78(69)-acd78(10)+acd78(68)
      acd78(68)=acd78(1)*acd78(68)
      acd78(69)=-acd78(57)*acd78(58)
      acd78(70)=-acd78(51)*acd78(61)
      acd78(71)=-acd78(49)*acd78(56)
      acd78(72)=-acd78(33)*acd78(59)
      acd78(73)=-acd78(37)*acd78(60)
      acd78(74)=-acd78(22)*acd78(54)
      acd78(75)=-acd78(19)*acd78(55)
      brack=acd78(62)+acd78(63)+acd78(64)+acd78(65)+acd78(66)+acd78(67)+acd78(6&
      &8)+acd78(69)+acd78(70)+acd78(71)+acd78(72)+acd78(73)+acd78(74)+acd78(75)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd78h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(97) :: acd78
      complex(ki) :: brack
      acd78(1)=k2(iv1)
      acd78(2)=dotproduct(k7,qshift)
      acd78(3)=abb78(71)
      acd78(4)=dotproduct(qshift,spvak2k7)
      acd78(5)=abb78(32)
      acd78(6)=dotproduct(qshift,spvak4l6)
      acd78(7)=abb78(97)
      acd78(8)=dotproduct(qshift,spvak4k7)
      acd78(9)=abb78(15)
      acd78(10)=abb78(40)
      acd78(11)=l6(iv1)
      acd78(12)=abb78(25)
      acd78(13)=abb78(91)
      acd78(14)=abb78(84)
      acd78(15)=dotproduct(qshift,spvak4k3)
      acd78(16)=abb78(100)
      acd78(17)=abb78(33)
      acd78(18)=k7(iv1)
      acd78(19)=dotproduct(k2,qshift)
      acd78(20)=abb78(14)
      acd78(21)=dotproduct(qshift,spvak2l6)
      acd78(22)=abb78(34)
      acd78(23)=abb78(49)
      acd78(24)=dotproduct(qshift,spvak2k3)
      acd78(25)=abb78(27)
      acd78(26)=abb78(20)
      acd78(27)=abb78(18)
      acd78(28)=qshift(iv1)
      acd78(29)=abb78(12)
      acd78(30)=abb78(80)
      acd78(31)=abb78(74)
      acd78(32)=abb78(62)
      acd78(33)=abb78(63)
      acd78(34)=spvak2k7(iv1)
      acd78(35)=dotproduct(l6,qshift)
      acd78(36)=dotproduct(qshift,qshift)
      acd78(37)=abb78(19)
      acd78(38)=dotproduct(qshift,spvak2l5)
      acd78(39)=abb78(42)
      acd78(40)=dotproduct(qshift,spvak7l5)
      acd78(41)=abb78(48)
      acd78(42)=dotproduct(qshift,spvak7l6)
      acd78(43)=abb78(46)
      acd78(44)=abb78(24)
      acd78(45)=abb78(21)
      acd78(46)=abb78(28)
      acd78(47)=abb78(36)
      acd78(48)=dotproduct(qshift,spvak7k2)
      acd78(49)=abb78(45)
      acd78(50)=dotproduct(qshift,spvak7k3)
      acd78(51)=abb78(41)
      acd78(52)=abb78(11)
      acd78(53)=spvak4l6(iv1)
      acd78(54)=spvak4k7(iv1)
      acd78(55)=spvak4k3(iv1)
      acd78(56)=abb78(26)
      acd78(57)=dotproduct(qshift,spvak1l6)
      acd78(58)=abb78(17)
      acd78(59)=dotproduct(qshift,spval6k7)
      acd78(60)=abb78(77)
      acd78(61)=abb78(31)
      acd78(62)=spvak2k3(iv1)
      acd78(63)=abb78(22)
      acd78(64)=spvak2l6(iv1)
      acd78(65)=abb78(16)
      acd78(66)=spvak1l6(iv1)
      acd78(67)=abb78(13)
      acd78(68)=spvak2k1(iv1)
      acd78(69)=abb78(35)
      acd78(70)=spvak2l5(iv1)
      acd78(71)=abb78(39)
      acd78(72)=spvak7l5(iv1)
      acd78(73)=spvak7l6(iv1)
      acd78(74)=abb78(83)
      acd78(75)=spvak7k2(iv1)
      acd78(76)=spvak7k3(iv1)
      acd78(77)=spval6k7(iv1)
      acd78(78)=abb78(23)
      acd78(79)=acd78(42)*acd78(43)
      acd78(80)=acd78(41)*acd78(40)
      acd78(81)=acd78(39)*acd78(38)
      acd78(79)=acd78(79)+acd78(80)+acd78(81)-acd78(44)
      acd78(80)=-acd78(55)*acd78(79)
      acd78(81)=-acd78(43)*acd78(73)
      acd78(82)=-acd78(41)*acd78(72)
      acd78(83)=-acd78(39)*acd78(70)
      acd78(81)=acd78(83)+acd78(81)+acd78(82)
      acd78(81)=acd78(15)*acd78(81)
      acd78(82)=acd78(51)*acd78(76)
      acd78(83)=acd78(49)*acd78(75)
      acd78(84)=acd78(73)*acd78(47)
      acd78(85)=acd78(62)*acd78(45)
      acd78(86)=acd78(64)*acd78(46)
      acd78(87)=2.0_ki*acd78(28)
      acd78(88)=-acd78(29)*acd78(87)
      acd78(89)=acd78(11)*acd78(12)
      acd78(90)=acd78(1)*acd78(5)
      acd78(91)=acd78(18)*acd78(20)
      acd78(92)=acd78(34)*acd78(37)
      acd78(80)=acd78(81)+2.0_ki*acd78(92)+acd78(80)+acd78(91)+acd78(90)+acd78(&
      &89)+acd78(88)+acd78(86)+acd78(85)+acd78(84)+acd78(82)+acd78(83)
      acd78(80)=acd78(4)*acd78(80)
      acd78(81)=acd78(51)*acd78(50)
      acd78(82)=acd78(49)*acd78(48)
      acd78(83)=acd78(24)*acd78(45)
      acd78(84)=acd78(42)*acd78(47)
      acd78(85)=-acd78(36)*acd78(29)
      acd78(86)=acd78(35)*acd78(12)
      acd78(88)=acd78(19)*acd78(5)
      acd78(89)=acd78(21)*acd78(46)
      acd78(90)=acd78(2)*acd78(20)
      acd78(81)=acd78(90)+acd78(89)+acd78(88)+acd78(86)+acd78(85)+acd78(84)+acd&
      &78(83)+acd78(82)-acd78(52)+acd78(81)
      acd78(81)=acd78(34)*acd78(81)
      acd78(79)=-acd78(34)*acd78(79)
      acd78(82)=-acd78(2)*acd78(22)
      acd78(82)=acd78(82)+acd78(56)
      acd78(82)=acd78(64)*acd78(82)
      acd78(83)=acd78(60)*acd78(77)
      acd78(84)=acd78(58)*acd78(66)
      acd78(85)=-acd78(32)*acd78(87)
      acd78(86)=acd78(11)*acd78(16)
      acd78(88)=acd78(21)*acd78(22)
      acd78(88)=acd78(88)-acd78(23)
      acd78(89)=-acd78(18)*acd78(88)
      acd78(79)=acd78(79)+acd78(89)+acd78(86)+acd78(85)+acd78(83)+acd78(84)+acd&
      &78(82)
      acd78(79)=acd78(15)*acd78(79)
      acd78(82)=acd78(60)*acd78(59)
      acd78(83)=acd78(58)*acd78(57)
      acd78(84)=-acd78(36)*acd78(32)
      acd78(85)=acd78(35)*acd78(16)
      acd78(86)=acd78(21)*acd78(56)
      acd78(88)=-acd78(2)*acd78(88)
      acd78(82)=acd78(88)+acd78(86)+acd78(85)+acd78(84)+acd78(83)-acd78(61)+acd&
      &78(82)
      acd78(82)=acd78(55)*acd78(82)
      acd78(83)=acd78(8)*acd78(14)
      acd78(84)=acd78(6)*acd78(13)
      acd78(83)=acd78(83)-acd78(84)
      acd78(84)=acd78(24)*acd78(25)
      acd78(85)=acd78(19)*acd78(3)
      acd78(86)=acd78(21)*acd78(26)
      acd78(84)=acd78(86)+acd78(85)-acd78(27)+acd78(84)-acd78(83)
      acd78(84)=acd78(18)*acd78(84)
      acd78(85)=acd78(14)*acd78(54)
      acd78(86)=acd78(13)*acd78(53)
      acd78(85)=acd78(85)-acd78(86)
      acd78(86)=acd78(62)*acd78(25)
      acd78(88)=acd78(64)*acd78(26)
      acd78(89)=acd78(1)*acd78(3)
      acd78(86)=acd78(89)+acd78(88)+acd78(86)-acd78(85)
      acd78(86)=acd78(2)*acd78(86)
      acd78(85)=-acd78(35)*acd78(85)
      acd78(88)=-acd78(54)*acd78(31)
      acd78(89)=-acd78(53)*acd78(30)
      acd78(88)=acd78(88)+acd78(89)
      acd78(88)=acd78(36)*acd78(88)
      acd78(89)=acd78(54)*acd78(9)
      acd78(90)=acd78(53)*acd78(7)
      acd78(89)=acd78(89)+acd78(90)
      acd78(89)=acd78(19)*acd78(89)
      acd78(90)=-acd78(8)*acd78(31)
      acd78(91)=-acd78(6)*acd78(30)
      acd78(90)=acd78(91)+acd78(33)+acd78(90)
      acd78(87)=acd78(90)*acd78(87)
      acd78(83)=-acd78(17)-acd78(83)
      acd78(83)=acd78(11)*acd78(83)
      acd78(90)=acd78(8)*acd78(9)
      acd78(91)=acd78(6)*acd78(7)
      acd78(90)=acd78(91)-acd78(10)+acd78(90)
      acd78(90)=acd78(1)*acd78(90)
      acd78(91)=-acd78(68)*acd78(69)
      acd78(92)=-acd78(77)*acd78(78)
      acd78(93)=-acd78(70)*acd78(71)
      acd78(94)=-acd78(66)*acd78(67)
      acd78(95)=-acd78(73)*acd78(74)
      acd78(96)=-acd78(62)*acd78(63)
      acd78(97)=-acd78(64)*acd78(65)
      brack=acd78(79)+acd78(80)+acd78(81)+acd78(82)+acd78(83)+acd78(84)+acd78(8&
      &5)+acd78(86)+acd78(87)+acd78(88)+acd78(89)+acd78(90)+acd78(91)+acd78(92)&
      &+acd78(93)+acd78(94)+acd78(95)+acd78(96)+acd78(97)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd78h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(91) :: acd78
      complex(ki) :: brack
      acd78(1)=d(iv1,iv2)
      acd78(2)=dotproduct(qshift,spvak2k7)
      acd78(3)=abb78(12)
      acd78(4)=dotproduct(qshift,spvak4k3)
      acd78(5)=abb78(62)
      acd78(6)=dotproduct(qshift,spvak4l6)
      acd78(7)=abb78(80)
      acd78(8)=dotproduct(qshift,spvak4k7)
      acd78(9)=abb78(74)
      acd78(10)=abb78(63)
      acd78(11)=k2(iv1)
      acd78(12)=k7(iv2)
      acd78(13)=abb78(71)
      acd78(14)=spvak2k7(iv2)
      acd78(15)=abb78(32)
      acd78(16)=spvak4l6(iv2)
      acd78(17)=abb78(97)
      acd78(18)=spvak4k7(iv2)
      acd78(19)=abb78(15)
      acd78(20)=k2(iv2)
      acd78(21)=k7(iv1)
      acd78(22)=spvak2k7(iv1)
      acd78(23)=spvak4l6(iv1)
      acd78(24)=spvak4k7(iv1)
      acd78(25)=l6(iv1)
      acd78(26)=abb78(25)
      acd78(27)=spvak4k3(iv2)
      acd78(28)=abb78(100)
      acd78(29)=abb78(91)
      acd78(30)=abb78(84)
      acd78(31)=l6(iv2)
      acd78(32)=spvak4k3(iv1)
      acd78(33)=abb78(14)
      acd78(34)=dotproduct(qshift,spvak2l6)
      acd78(35)=abb78(34)
      acd78(36)=abb78(49)
      acd78(37)=spvak2k3(iv2)
      acd78(38)=abb78(27)
      acd78(39)=spvak2l6(iv2)
      acd78(40)=abb78(20)
      acd78(41)=spvak2k3(iv1)
      acd78(42)=spvak2l6(iv1)
      acd78(43)=qshift(iv1)
      acd78(44)=qshift(iv2)
      acd78(45)=abb78(19)
      acd78(46)=dotproduct(qshift,spvak2l5)
      acd78(47)=abb78(42)
      acd78(48)=dotproduct(qshift,spvak7l5)
      acd78(49)=abb78(48)
      acd78(50)=dotproduct(qshift,spvak7l6)
      acd78(51)=abb78(46)
      acd78(52)=abb78(24)
      acd78(53)=abb78(21)
      acd78(54)=abb78(28)
      acd78(55)=spvak2l5(iv2)
      acd78(56)=spvak7l5(iv2)
      acd78(57)=spvak7l6(iv2)
      acd78(58)=abb78(36)
      acd78(59)=spvak7k2(iv2)
      acd78(60)=abb78(45)
      acd78(61)=spvak7k3(iv2)
      acd78(62)=abb78(41)
      acd78(63)=spvak2l5(iv1)
      acd78(64)=spvak7l5(iv1)
      acd78(65)=spvak7l6(iv1)
      acd78(66)=spvak7k2(iv1)
      acd78(67)=spvak7k3(iv1)
      acd78(68)=dotproduct(k7,qshift)
      acd78(69)=abb78(26)
      acd78(70)=spvak1l6(iv2)
      acd78(71)=abb78(17)
      acd78(72)=spval6k7(iv2)
      acd78(73)=abb78(77)
      acd78(74)=spvak1l6(iv1)
      acd78(75)=spval6k7(iv1)
      acd78(76)=acd78(51)*acd78(65)
      acd78(77)=acd78(49)*acd78(64)
      acd78(78)=acd78(47)*acd78(63)
      acd78(76)=acd78(78)+acd78(76)+acd78(77)
      acd78(77)=-acd78(4)*acd78(76)
      acd78(78)=acd78(51)*acd78(50)
      acd78(79)=acd78(49)*acd78(48)
      acd78(80)=acd78(47)*acd78(46)
      acd78(78)=acd78(79)+acd78(78)+acd78(80)-acd78(52)
      acd78(79)=-acd78(32)*acd78(78)
      acd78(80)=acd78(62)*acd78(67)
      acd78(81)=acd78(60)*acd78(66)
      acd78(82)=acd78(41)*acd78(53)
      acd78(83)=acd78(65)*acd78(58)
      acd78(84)=2.0_ki*acd78(43)
      acd78(85)=-acd78(3)*acd78(84)
      acd78(86)=acd78(25)*acd78(26)
      acd78(87)=acd78(11)*acd78(15)
      acd78(88)=acd78(42)*acd78(54)
      acd78(89)=acd78(21)*acd78(33)
      acd78(90)=acd78(22)*acd78(45)
      acd78(77)=2.0_ki*acd78(90)+acd78(79)+acd78(77)+acd78(89)+acd78(88)+acd78(&
      &87)+acd78(86)+acd78(85)+acd78(83)+acd78(82)+acd78(80)+acd78(81)
      acd78(77)=acd78(14)*acd78(77)
      acd78(79)=acd78(51)*acd78(57)
      acd78(80)=acd78(49)*acd78(56)
      acd78(81)=acd78(47)*acd78(55)
      acd78(79)=acd78(81)+acd78(79)+acd78(80)
      acd78(80)=-acd78(4)*acd78(79)
      acd78(78)=-acd78(27)*acd78(78)
      acd78(81)=acd78(62)*acd78(61)
      acd78(82)=acd78(60)*acd78(59)
      acd78(83)=acd78(37)*acd78(53)
      acd78(85)=acd78(57)*acd78(58)
      acd78(86)=2.0_ki*acd78(44)
      acd78(87)=-acd78(3)*acd78(86)
      acd78(88)=acd78(31)*acd78(26)
      acd78(89)=acd78(20)*acd78(15)
      acd78(90)=acd78(39)*acd78(54)
      acd78(91)=acd78(12)*acd78(33)
      acd78(78)=acd78(78)+acd78(80)+acd78(91)+acd78(90)+acd78(89)+acd78(88)+acd&
      &78(87)+acd78(85)+acd78(83)+acd78(81)+acd78(82)
      acd78(78)=acd78(22)*acd78(78)
      acd78(79)=-acd78(2)*acd78(79)
      acd78(80)=acd78(73)*acd78(72)
      acd78(81)=acd78(71)*acd78(70)
      acd78(82)=-acd78(5)*acd78(86)
      acd78(83)=acd78(31)*acd78(28)
      acd78(85)=acd78(39)*acd78(69)
      acd78(87)=acd78(35)*acd78(39)
      acd78(88)=-acd78(68)*acd78(87)
      acd78(89)=acd78(35)*acd78(34)
      acd78(89)=acd78(89)-acd78(36)
      acd78(90)=-acd78(12)*acd78(89)
      acd78(79)=acd78(90)+acd78(79)+acd78(88)+acd78(85)+acd78(83)+acd78(82)+acd&
      &78(80)+acd78(81)
      acd78(79)=acd78(32)*acd78(79)
      acd78(76)=-acd78(2)*acd78(76)
      acd78(80)=acd78(73)*acd78(75)
      acd78(81)=acd78(71)*acd78(74)
      acd78(82)=-acd78(5)*acd78(84)
      acd78(83)=acd78(25)*acd78(28)
      acd78(85)=acd78(42)*acd78(69)
      acd78(88)=acd78(35)*acd78(42)
      acd78(90)=-acd78(68)*acd78(88)
      acd78(89)=-acd78(21)*acd78(89)
      acd78(76)=acd78(89)+acd78(76)+acd78(90)+acd78(85)+acd78(83)+acd78(82)+acd&
      &78(80)+acd78(81)
      acd78(76)=acd78(27)*acd78(76)
      acd78(80)=acd78(37)*acd78(38)
      acd78(81)=acd78(20)*acd78(13)
      acd78(82)=-acd78(18)*acd78(30)
      acd78(83)=acd78(16)*acd78(29)
      acd78(85)=acd78(39)*acd78(40)
      acd78(80)=acd78(85)+acd78(83)+acd78(82)+acd78(80)+acd78(81)
      acd78(80)=acd78(21)*acd78(80)
      acd78(81)=acd78(38)*acd78(41)
      acd78(82)=-acd78(24)*acd78(30)
      acd78(83)=acd78(23)*acd78(29)
      acd78(85)=acd78(11)*acd78(13)
      acd78(89)=acd78(42)*acd78(40)
      acd78(81)=acd78(89)+acd78(85)+acd78(83)+acd78(81)+acd78(82)
      acd78(81)=acd78(12)*acd78(81)
      acd78(82)=-acd78(9)*acd78(8)
      acd78(83)=-acd78(7)*acd78(6)
      acd78(85)=-acd78(2)*acd78(3)
      acd78(82)=acd78(85)+acd78(83)+acd78(10)+acd78(82)
      acd78(83)=2.0_ki*acd78(1)
      acd78(82)=acd78(83)*acd78(82)
      acd78(83)=-acd78(5)*acd78(83)
      acd78(85)=-acd78(21)*acd78(87)
      acd78(87)=-acd78(12)*acd78(88)
      acd78(83)=acd78(87)+acd78(83)+acd78(85)
      acd78(83)=acd78(4)*acd78(83)
      acd78(85)=-acd78(9)*acd78(86)
      acd78(87)=-acd78(30)*acd78(31)
      acd78(85)=acd78(85)+acd78(87)
      acd78(85)=acd78(24)*acd78(85)
      acd78(86)=-acd78(7)*acd78(86)
      acd78(87)=acd78(29)*acd78(31)
      acd78(86)=acd78(86)+acd78(87)
      acd78(86)=acd78(23)*acd78(86)
      acd78(87)=acd78(24)*acd78(19)
      acd78(88)=acd78(23)*acd78(17)
      acd78(87)=acd78(87)+acd78(88)
      acd78(87)=acd78(20)*acd78(87)
      acd78(88)=-acd78(9)*acd78(84)
      acd78(89)=-acd78(25)*acd78(30)
      acd78(88)=acd78(88)+acd78(89)
      acd78(88)=acd78(18)*acd78(88)
      acd78(84)=-acd78(7)*acd78(84)
      acd78(89)=acd78(25)*acd78(29)
      acd78(84)=acd78(84)+acd78(89)
      acd78(84)=acd78(16)*acd78(84)
      acd78(89)=acd78(18)*acd78(19)
      acd78(90)=acd78(16)*acd78(17)
      acd78(89)=acd78(89)+acd78(90)
      acd78(89)=acd78(11)*acd78(89)
      brack=acd78(76)+acd78(77)+acd78(78)+acd78(79)+acd78(80)+acd78(81)+acd78(8&
      &2)+acd78(83)+acd78(84)+acd78(85)+acd78(86)+acd78(87)+acd78(88)+acd78(89)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd78h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(47) :: acd78
      complex(ki) :: brack
      acd78(1)=d(iv1,iv2)
      acd78(2)=spvak2k7(iv3)
      acd78(3)=abb78(12)
      acd78(4)=spvak4k3(iv3)
      acd78(5)=abb78(62)
      acd78(6)=spvak4l6(iv3)
      acd78(7)=abb78(80)
      acd78(8)=spvak4k7(iv3)
      acd78(9)=abb78(74)
      acd78(10)=d(iv1,iv3)
      acd78(11)=spvak2k7(iv2)
      acd78(12)=spvak4k3(iv2)
      acd78(13)=spvak4l6(iv2)
      acd78(14)=spvak4k7(iv2)
      acd78(15)=d(iv2,iv3)
      acd78(16)=spvak2k7(iv1)
      acd78(17)=spvak4k3(iv1)
      acd78(18)=spvak4l6(iv1)
      acd78(19)=spvak4k7(iv1)
      acd78(20)=k7(iv1)
      acd78(21)=spvak2l6(iv3)
      acd78(22)=abb78(34)
      acd78(23)=spvak2l6(iv2)
      acd78(24)=k7(iv2)
      acd78(25)=spvak2l6(iv1)
      acd78(26)=k7(iv3)
      acd78(27)=spvak2l5(iv3)
      acd78(28)=abb78(42)
      acd78(29)=spvak7l5(iv3)
      acd78(30)=abb78(48)
      acd78(31)=spvak7l6(iv3)
      acd78(32)=abb78(46)
      acd78(33)=spvak2l5(iv2)
      acd78(34)=spvak7l5(iv2)
      acd78(35)=spvak7l6(iv2)
      acd78(36)=spvak2l5(iv1)
      acd78(37)=spvak7l5(iv1)
      acd78(38)=spvak7l6(iv1)
      acd78(39)=-acd78(16)*acd78(15)
      acd78(40)=-acd78(11)*acd78(10)
      acd78(41)=-acd78(2)*acd78(1)
      acd78(39)=acd78(41)+acd78(40)+acd78(39)
      acd78(39)=acd78(3)*acd78(39)
      acd78(40)=-acd78(9)*acd78(19)
      acd78(41)=-acd78(7)*acd78(18)
      acd78(40)=acd78(40)+acd78(41)
      acd78(40)=acd78(15)*acd78(40)
      acd78(41)=-acd78(9)*acd78(14)
      acd78(42)=-acd78(7)*acd78(13)
      acd78(41)=acd78(41)+acd78(42)
      acd78(41)=acd78(10)*acd78(41)
      acd78(42)=-acd78(9)*acd78(8)
      acd78(43)=-acd78(7)*acd78(6)
      acd78(42)=acd78(42)+acd78(43)
      acd78(42)=acd78(1)*acd78(42)
      acd78(39)=acd78(42)+acd78(40)+acd78(41)+acd78(39)
      acd78(40)=acd78(32)*acd78(31)
      acd78(41)=acd78(30)*acd78(29)
      acd78(42)=acd78(28)*acd78(27)
      acd78(40)=acd78(42)+acd78(40)+acd78(41)
      acd78(41)=-acd78(11)*acd78(40)
      acd78(42)=acd78(32)*acd78(35)
      acd78(43)=acd78(30)*acd78(34)
      acd78(44)=acd78(28)*acd78(33)
      acd78(42)=acd78(44)+acd78(42)+acd78(43)
      acd78(43)=-acd78(2)*acd78(42)
      acd78(44)=-acd78(23)*acd78(26)
      acd78(45)=-acd78(21)*acd78(24)
      acd78(44)=acd78(44)+acd78(45)
      acd78(44)=acd78(22)*acd78(44)
      acd78(45)=2.0_ki*acd78(5)
      acd78(46)=-acd78(15)*acd78(45)
      acd78(41)=acd78(43)+acd78(41)+acd78(46)+acd78(44)
      acd78(41)=acd78(17)*acd78(41)
      acd78(40)=-acd78(16)*acd78(40)
      acd78(43)=acd78(32)*acd78(38)
      acd78(44)=acd78(30)*acd78(37)
      acd78(46)=acd78(28)*acd78(36)
      acd78(43)=acd78(46)+acd78(43)+acd78(44)
      acd78(44)=-acd78(2)*acd78(43)
      acd78(46)=-acd78(25)*acd78(26)
      acd78(47)=-acd78(20)*acd78(21)
      acd78(46)=acd78(46)+acd78(47)
      acd78(46)=acd78(22)*acd78(46)
      acd78(47)=-acd78(10)*acd78(45)
      acd78(40)=acd78(44)+acd78(40)+acd78(47)+acd78(46)
      acd78(40)=acd78(12)*acd78(40)
      acd78(42)=-acd78(16)*acd78(42)
      acd78(43)=-acd78(11)*acd78(43)
      acd78(44)=-acd78(24)*acd78(25)
      acd78(46)=-acd78(20)*acd78(23)
      acd78(44)=acd78(44)+acd78(46)
      acd78(44)=acd78(22)*acd78(44)
      acd78(45)=-acd78(1)*acd78(45)
      acd78(42)=acd78(43)+acd78(42)+acd78(45)+acd78(44)
      acd78(42)=acd78(4)*acd78(42)
      brack=2.0_ki*acd78(39)+acd78(40)+acd78(41)+acd78(42)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd78h3
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
      qshift = -k6
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
!---#[ subroutine reconstruct_d78:
   subroutine     reconstruct_d78(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group15
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group15), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_78:
      coeffs%coeffs_78%c0 = derivative(czip)
      coeffs%coeffs_78%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_78%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_78%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_78%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_78%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_78%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_78%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_78%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_78%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_78%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_78%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_78%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_78%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_78%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_78%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_78%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_78%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_78%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_78%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_78%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_78%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_78%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_78%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_78%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_78%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_78%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_78%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_78%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_78%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_78%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_78%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_78%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_78%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_78%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_78:
   end subroutine reconstruct_d78
!---#] subroutine reconstruct_d78:
end module     p0_dbaru_epnebbbarg_d78h3l1d
