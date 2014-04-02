module     p5_csbar_epnebbbar_d26h1l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p5_csbar_epnebbbar/helicity1d26h1l1d.f90
   ! generator: buildfortran_d.py
   use p5_csbar_epnebbbar_config, only: ki
   use p5_csbar_epnebbbar_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d26
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p5_csbar_epnebbbar_model
      use p5_csbar_epnebbbar_kinematics
      use p5_csbar_epnebbbar_color
      use p5_csbar_epnebbbar_abbrevd26h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(77) :: acd26
      complex(ki) :: brack
      acd26(1)=dotproduct(k1,qshift)
      acd26(2)=dotproduct(qshift,spvak2k3)
      acd26(3)=abb26(29)
      acd26(4)=dotproduct(qshift,spval6k3)
      acd26(5)=abb26(59)
      acd26(6)=abb26(42)
      acd26(7)=dotproduct(k2,qshift)
      acd26(8)=abb26(53)
      acd26(9)=dotproduct(l5,qshift)
      acd26(10)=abb26(51)
      acd26(11)=dotproduct(qshift,qshift)
      acd26(12)=abb26(33)
      acd26(13)=abb26(34)
      acd26(14)=abb26(27)
      acd26(15)=dotproduct(qshift,spvak2k1)
      acd26(16)=dotproduct(qshift,spvak4k3)
      acd26(17)=abb26(11)
      acd26(18)=abb26(28)
      acd26(19)=abb26(14)
      acd26(20)=dotproduct(qshift,spvak4k1)
      acd26(21)=abb26(43)
      acd26(22)=dotproduct(qshift,spval5k1)
      acd26(23)=abb26(61)
      acd26(24)=dotproduct(qshift,spval6k1)
      acd26(25)=abb26(55)
      acd26(26)=dotproduct(qshift,spval6l5)
      acd26(27)=abb26(58)
      acd26(28)=abb26(24)
      acd26(29)=abb26(45)
      acd26(30)=dotproduct(l6,qshift)
      acd26(31)=abb26(17)
      acd26(32)=dotproduct(qshift,spvak2l5)
      acd26(33)=abb26(23)
      acd26(34)=abb26(22)
      acd26(35)=abb26(26)
      acd26(36)=abb26(9)
      acd26(37)=abb26(37)
      acd26(38)=abb26(19)
      acd26(39)=abb26(16)
      acd26(40)=abb26(50)
      acd26(41)=abb26(18)
      acd26(42)=abb26(15)
      acd26(43)=abb26(8)
      acd26(44)=dotproduct(qshift,spvak2l6)
      acd26(45)=abb26(32)
      acd26(46)=dotproduct(qshift,spval6k2)
      acd26(47)=abb26(30)
      acd26(48)=abb26(12)
      acd26(49)=abb26(20)
      acd26(50)=abb26(62)
      acd26(51)=abb26(10)
      acd26(52)=abb26(13)
      acd26(53)=abb26(36)
      acd26(54)=abb26(56)
      acd26(55)=abb26(48)
      acd26(56)=abb26(60)
      acd26(57)=abb26(65)
      acd26(58)=abb26(57)
      acd26(59)=abb26(40)
      acd26(60)=abb26(21)
      acd26(61)=abb26(31)
      acd26(62)=abb26(25)
      acd26(63)=acd26(22)*acd26(23)
      acd26(64)=acd26(20)*acd26(21)
      acd26(65)=-acd26(11)*acd26(12)
      acd26(66)=acd26(9)*acd26(10)
      acd26(67)=acd26(26)*acd26(27)
      acd26(68)=acd26(24)*acd26(25)
      acd26(69)=acd26(4)*acd26(14)
      acd26(70)=acd26(2)*acd26(13)
      acd26(71)=acd26(16)*acd26(19)
      acd26(72)=-acd26(16)*acd26(17)
      acd26(72)=acd26(18)+acd26(72)
      acd26(72)=acd26(15)*acd26(72)
      acd26(73)=acd26(7)*acd26(8)
      acd26(63)=acd26(73)+acd26(72)+acd26(71)+acd26(70)+acd26(69)+acd26(68)+acd&
      &26(67)+acd26(66)+acd26(65)+acd26(64)-acd26(28)+acd26(63)
      acd26(63)=acd26(7)*acd26(63)
      acd26(64)=acd26(46)*acd26(47)
      acd26(65)=acd26(30)*acd26(31)
      acd26(66)=acd26(44)*acd26(45)
      acd26(67)=-acd26(4)*acd26(39)
      acd26(68)=acd26(2)*acd26(38)
      acd26(69)=acd26(26)*acd26(42)
      acd26(69)=acd26(43)+acd26(69)
      acd26(69)=acd26(16)*acd26(69)
      acd26(64)=acd26(69)+acd26(68)+acd26(67)+acd26(66)+acd26(65)-acd26(48)+acd&
      &26(64)
      acd26(64)=acd26(15)*acd26(64)
      acd26(65)=acd26(9)-acd26(1)
      acd26(66)=-acd26(3)*acd26(65)
      acd26(67)=-acd26(11)*acd26(35)
      acd26(68)=-acd26(26)*acd26(40)
      acd26(69)=acd26(24)*acd26(39)
      acd26(66)=acd26(69)+acd26(68)+acd26(67)-acd26(41)+acd26(66)
      acd26(66)=acd26(2)*acd26(66)
      acd26(65)=-acd26(5)*acd26(65)
      acd26(67)=-acd26(11)*acd26(36)
      acd26(68)=acd26(32)*acd26(40)
      acd26(65)=acd26(68)+acd26(67)+acd26(65)
      acd26(65)=acd26(4)*acd26(65)
      acd26(67)=acd26(26)*acd26(50)
      acd26(68)=acd26(32)*acd26(51)
      acd26(69)=-acd26(32)*acd26(42)
      acd26(69)=acd26(49)+acd26(69)
      acd26(69)=acd26(24)*acd26(69)
      acd26(67)=acd26(69)+acd26(68)-acd26(52)+acd26(67)
      acd26(67)=acd26(16)*acd26(67)
      acd26(68)=acd26(46)*acd26(58)
      acd26(69)=acd26(30)*acd26(33)
      acd26(68)=acd26(69)-acd26(59)+acd26(68)
      acd26(68)=acd26(32)*acd26(68)
      acd26(69)=acd26(26)*acd26(57)
      acd26(69)=acd26(69)-acd26(60)
      acd26(69)=acd26(44)*acd26(69)
      acd26(70)=-acd26(22)*acd26(54)
      acd26(71)=-acd26(20)*acd26(53)
      acd26(72)=-acd26(46)*acd26(61)
      acd26(73)=-acd26(30)*acd26(34)
      acd26(74)=-acd26(1)*acd26(6)
      acd26(75)=acd26(11)*acd26(37)
      acd26(76)=-acd26(9)*acd26(29)
      acd26(77)=acd26(44)*acd26(55)
      acd26(77)=-acd26(56)+acd26(77)
      acd26(77)=acd26(24)*acd26(77)
      brack=acd26(62)+acd26(63)+acd26(64)+acd26(65)+acd26(66)+acd26(67)+acd26(6&
      &8)+acd26(69)+acd26(70)+acd26(71)+acd26(72)+acd26(73)+acd26(74)+acd26(75)&
      &+acd26(76)+acd26(77)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p5_csbar_epnebbbar_model
      use p5_csbar_epnebbbar_kinematics
      use p5_csbar_epnebbbar_color
      use p5_csbar_epnebbbar_abbrevd26h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(99) :: acd26
      complex(ki) :: brack
      acd26(1)=k1(iv1)
      acd26(2)=dotproduct(qshift,spvak2k3)
      acd26(3)=abb26(29)
      acd26(4)=dotproduct(qshift,spval6k3)
      acd26(5)=abb26(59)
      acd26(6)=abb26(42)
      acd26(7)=k2(iv1)
      acd26(8)=dotproduct(k2,qshift)
      acd26(9)=abb26(53)
      acd26(10)=dotproduct(l5,qshift)
      acd26(11)=abb26(51)
      acd26(12)=dotproduct(qshift,qshift)
      acd26(13)=abb26(33)
      acd26(14)=abb26(34)
      acd26(15)=abb26(27)
      acd26(16)=dotproduct(qshift,spvak2k1)
      acd26(17)=dotproduct(qshift,spvak4k3)
      acd26(18)=abb26(11)
      acd26(19)=abb26(28)
      acd26(20)=abb26(14)
      acd26(21)=dotproduct(qshift,spvak4k1)
      acd26(22)=abb26(43)
      acd26(23)=dotproduct(qshift,spval5k1)
      acd26(24)=abb26(61)
      acd26(25)=dotproduct(qshift,spval6k1)
      acd26(26)=abb26(55)
      acd26(27)=dotproduct(qshift,spval6l5)
      acd26(28)=abb26(58)
      acd26(29)=abb26(24)
      acd26(30)=l5(iv1)
      acd26(31)=abb26(45)
      acd26(32)=l6(iv1)
      acd26(33)=abb26(17)
      acd26(34)=dotproduct(qshift,spvak2l5)
      acd26(35)=abb26(23)
      acd26(36)=abb26(22)
      acd26(37)=qshift(iv1)
      acd26(38)=abb26(26)
      acd26(39)=abb26(9)
      acd26(40)=abb26(37)
      acd26(41)=spvak2k3(iv1)
      acd26(42)=dotproduct(k1,qshift)
      acd26(43)=abb26(19)
      acd26(44)=abb26(16)
      acd26(45)=abb26(50)
      acd26(46)=abb26(18)
      acd26(47)=spval6k3(iv1)
      acd26(48)=spvak2k1(iv1)
      acd26(49)=dotproduct(l6,qshift)
      acd26(50)=abb26(15)
      acd26(51)=abb26(8)
      acd26(52)=dotproduct(qshift,spvak2l6)
      acd26(53)=abb26(32)
      acd26(54)=dotproduct(qshift,spval6k2)
      acd26(55)=abb26(30)
      acd26(56)=abb26(12)
      acd26(57)=spvak4k3(iv1)
      acd26(58)=abb26(20)
      acd26(59)=abb26(62)
      acd26(60)=abb26(10)
      acd26(61)=abb26(13)
      acd26(62)=spvak4k1(iv1)
      acd26(63)=abb26(36)
      acd26(64)=spval5k1(iv1)
      acd26(65)=abb26(56)
      acd26(66)=spval6k1(iv1)
      acd26(67)=abb26(48)
      acd26(68)=abb26(60)
      acd26(69)=spval6l5(iv1)
      acd26(70)=abb26(65)
      acd26(71)=spvak2l5(iv1)
      acd26(72)=abb26(57)
      acd26(73)=abb26(40)
      acd26(74)=spvak2l6(iv1)
      acd26(75)=abb26(21)
      acd26(76)=spval6k2(iv1)
      acd26(77)=abb26(31)
      acd26(78)=acd26(24)*acd26(23)
      acd26(79)=acd26(22)*acd26(21)
      acd26(80)=-acd26(12)*acd26(13)
      acd26(81)=acd26(10)*acd26(11)
      acd26(82)=acd26(27)*acd26(28)
      acd26(83)=acd26(25)*acd26(26)
      acd26(84)=acd26(4)*acd26(15)
      acd26(85)=acd26(2)*acd26(14)
      acd26(86)=acd26(17)*acd26(20)
      acd26(87)=acd26(17)*acd26(18)
      acd26(87)=acd26(87)-acd26(19)
      acd26(88)=-acd26(16)*acd26(87)
      acd26(89)=acd26(8)*acd26(9)
      acd26(78)=2.0_ki*acd26(89)+acd26(88)+acd26(86)+acd26(85)+acd26(84)+acd26(&
      &83)+acd26(82)+acd26(81)+acd26(80)+acd26(79)-acd26(29)+acd26(78)
      acd26(78)=acd26(7)*acd26(78)
      acd26(79)=-acd26(16)*acd26(18)
      acd26(79)=acd26(79)+acd26(20)
      acd26(79)=acd26(57)*acd26(79)
      acd26(80)=-acd26(48)*acd26(87)
      acd26(81)=acd26(24)*acd26(64)
      acd26(82)=acd26(22)*acd26(62)
      acd26(83)=2.0_ki*acd26(37)
      acd26(84)=-acd26(13)*acd26(83)
      acd26(85)=acd26(30)*acd26(11)
      acd26(86)=acd26(69)*acd26(28)
      acd26(87)=acd26(66)*acd26(26)
      acd26(88)=acd26(47)*acd26(15)
      acd26(89)=acd26(41)*acd26(14)
      acd26(79)=acd26(89)+acd26(88)+acd26(87)+acd26(86)+acd26(85)+acd26(84)+acd&
      &26(81)+acd26(82)+acd26(80)+acd26(79)
      acd26(79)=acd26(8)*acd26(79)
      acd26(80)=acd26(76)*acd26(55)
      acd26(81)=acd26(32)*acd26(33)
      acd26(82)=acd26(74)*acd26(53)
      acd26(84)=-acd26(47)*acd26(44)
      acd26(85)=acd26(41)*acd26(43)
      acd26(86)=acd26(27)*acd26(50)
      acd26(86)=acd26(86)+acd26(51)
      acd26(87)=acd26(57)*acd26(86)
      acd26(88)=acd26(17)*acd26(50)*acd26(69)
      acd26(80)=acd26(88)+acd26(87)+acd26(85)+acd26(84)+acd26(82)+acd26(80)+acd&
      &26(81)
      acd26(80)=acd26(16)*acd26(80)
      acd26(81)=acd26(54)*acd26(55)
      acd26(82)=acd26(33)*acd26(49)
      acd26(84)=acd26(52)*acd26(53)
      acd26(85)=-acd26(4)*acd26(44)
      acd26(87)=acd26(2)*acd26(43)
      acd26(81)=acd26(87)+acd26(85)+acd26(84)+acd26(82)-acd26(56)+acd26(81)
      acd26(81)=acd26(48)*acd26(81)
      acd26(82)=-acd26(38)*acd26(83)
      acd26(84)=acd26(30)-acd26(1)
      acd26(85)=-acd26(3)*acd26(84)
      acd26(87)=-acd26(69)*acd26(45)
      acd26(88)=acd26(66)*acd26(44)
      acd26(82)=acd26(88)+acd26(87)+acd26(82)+acd26(85)
      acd26(82)=acd26(2)*acd26(82)
      acd26(85)=-acd26(12)*acd26(38)
      acd26(87)=acd26(10)-acd26(42)
      acd26(88)=-acd26(3)*acd26(87)
      acd26(89)=-acd26(27)*acd26(45)
      acd26(90)=acd26(25)*acd26(44)
      acd26(85)=acd26(90)+acd26(89)+acd26(88)-acd26(46)+acd26(85)
      acd26(85)=acd26(41)*acd26(85)
      acd26(88)=-acd26(25)*acd26(50)
      acd26(88)=acd26(88)+acd26(60)
      acd26(88)=acd26(71)*acd26(88)
      acd26(89)=acd26(34)*acd26(50)
      acd26(89)=acd26(89)-acd26(58)
      acd26(90)=-acd26(66)*acd26(89)
      acd26(91)=acd26(69)*acd26(59)
      acd26(86)=acd26(48)*acd26(86)
      acd26(86)=acd26(86)+acd26(91)+acd26(90)+acd26(88)
      acd26(86)=acd26(17)*acd26(86)
      acd26(88)=acd26(76)*acd26(72)
      acd26(90)=acd26(32)*acd26(35)
      acd26(91)=acd26(47)*acd26(45)
      acd26(88)=acd26(91)+acd26(88)+acd26(90)
      acd26(88)=acd26(34)*acd26(88)
      acd26(90)=-acd26(39)*acd26(83)
      acd26(84)=-acd26(5)*acd26(84)
      acd26(91)=acd26(71)*acd26(45)
      acd26(84)=acd26(91)+acd26(90)+acd26(84)
      acd26(84)=acd26(4)*acd26(84)
      acd26(90)=acd26(34)*acd26(60)
      acd26(91)=acd26(27)*acd26(59)
      acd26(89)=-acd26(25)*acd26(89)
      acd26(89)=acd26(89)+acd26(91)-acd26(61)+acd26(90)
      acd26(89)=acd26(57)*acd26(89)
      acd26(90)=acd26(27)*acd26(70)
      acd26(91)=acd26(25)*acd26(67)
      acd26(90)=acd26(91)+acd26(90)-acd26(75)
      acd26(90)=acd26(74)*acd26(90)
      acd26(91)=acd26(54)*acd26(72)
      acd26(92)=acd26(35)*acd26(49)
      acd26(91)=acd26(92)-acd26(73)+acd26(91)
      acd26(91)=acd26(71)*acd26(91)
      acd26(92)=-acd26(12)*acd26(39)
      acd26(87)=-acd26(5)*acd26(87)
      acd26(87)=acd26(92)+acd26(87)
      acd26(87)=acd26(47)*acd26(87)
      acd26(92)=-acd26(64)*acd26(65)
      acd26(93)=-acd26(62)*acd26(63)
      acd26(94)=-acd26(76)*acd26(77)
      acd26(95)=-acd26(32)*acd26(36)
      acd26(96)=-acd26(1)*acd26(6)
      acd26(83)=acd26(40)*acd26(83)
      acd26(97)=-acd26(30)*acd26(31)
      acd26(98)=acd26(69)*acd26(52)*acd26(70)
      acd26(99)=acd26(52)*acd26(67)
      acd26(99)=-acd26(68)+acd26(99)
      acd26(99)=acd26(66)*acd26(99)
      brack=acd26(78)+acd26(79)+acd26(80)+acd26(81)+acd26(82)+acd26(83)+acd26(8&
      &4)+acd26(85)+acd26(86)+acd26(87)+acd26(88)+acd26(89)+acd26(90)+acd26(91)&
      &+acd26(92)+acd26(93)+acd26(94)+acd26(95)+acd26(96)+acd26(97)+acd26(98)+a&
      &cd26(99)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p5_csbar_epnebbbar_model
      use p5_csbar_epnebbbar_kinematics
      use p5_csbar_epnebbbar_color
      use p5_csbar_epnebbbar_abbrevd26h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(90) :: acd26
      complex(ki) :: brack
      acd26(1)=d(iv1,iv2)
      acd26(2)=dotproduct(k2,qshift)
      acd26(3)=abb26(33)
      acd26(4)=dotproduct(qshift,spvak2k3)
      acd26(5)=abb26(26)
      acd26(6)=dotproduct(qshift,spval6k3)
      acd26(7)=abb26(9)
      acd26(8)=abb26(37)
      acd26(9)=k1(iv1)
      acd26(10)=spvak2k3(iv2)
      acd26(11)=abb26(29)
      acd26(12)=spval6k3(iv2)
      acd26(13)=abb26(59)
      acd26(14)=k1(iv2)
      acd26(15)=spvak2k3(iv1)
      acd26(16)=spval6k3(iv1)
      acd26(17)=k2(iv1)
      acd26(18)=k2(iv2)
      acd26(19)=abb26(53)
      acd26(20)=l5(iv2)
      acd26(21)=abb26(51)
      acd26(22)=qshift(iv2)
      acd26(23)=abb26(34)
      acd26(24)=abb26(27)
      acd26(25)=spvak2k1(iv2)
      acd26(26)=dotproduct(qshift,spvak4k3)
      acd26(27)=abb26(11)
      acd26(28)=abb26(28)
      acd26(29)=spvak4k3(iv2)
      acd26(30)=dotproduct(qshift,spvak2k1)
      acd26(31)=abb26(14)
      acd26(32)=spvak4k1(iv2)
      acd26(33)=abb26(43)
      acd26(34)=spval5k1(iv2)
      acd26(35)=abb26(61)
      acd26(36)=spval6k1(iv2)
      acd26(37)=abb26(55)
      acd26(38)=spval6l5(iv2)
      acd26(39)=abb26(58)
      acd26(40)=l5(iv1)
      acd26(41)=qshift(iv1)
      acd26(42)=spvak2k1(iv1)
      acd26(43)=spvak4k3(iv1)
      acd26(44)=spvak4k1(iv1)
      acd26(45)=spval5k1(iv1)
      acd26(46)=spval6k1(iv1)
      acd26(47)=spval6l5(iv1)
      acd26(48)=l6(iv1)
      acd26(49)=abb26(17)
      acd26(50)=spvak2l5(iv2)
      acd26(51)=abb26(23)
      acd26(52)=l6(iv2)
      acd26(53)=spvak2l5(iv1)
      acd26(54)=abb26(19)
      acd26(55)=abb26(16)
      acd26(56)=abb26(50)
      acd26(57)=dotproduct(qshift,spval6l5)
      acd26(58)=abb26(15)
      acd26(59)=abb26(8)
      acd26(60)=spvak2l6(iv2)
      acd26(61)=abb26(32)
      acd26(62)=spval6k2(iv2)
      acd26(63)=abb26(30)
      acd26(64)=spvak2l6(iv1)
      acd26(65)=spval6k2(iv1)
      acd26(66)=dotproduct(qshift,spvak2l5)
      acd26(67)=abb26(20)
      acd26(68)=abb26(62)
      acd26(69)=dotproduct(qshift,spval6k1)
      acd26(70)=abb26(10)
      acd26(71)=abb26(48)
      acd26(72)=abb26(65)
      acd26(73)=abb26(57)
      acd26(74)=acd26(35)*acd26(34)
      acd26(75)=acd26(33)*acd26(32)
      acd26(76)=acd26(20)*acd26(21)
      acd26(77)=2.0_ki*acd26(22)
      acd26(78)=-acd26(3)*acd26(77)
      acd26(79)=acd26(38)*acd26(39)
      acd26(80)=acd26(36)*acd26(37)
      acd26(81)=acd26(12)*acd26(24)
      acd26(82)=acd26(10)*acd26(23)
      acd26(83)=acd26(27)*acd26(30)
      acd26(83)=acd26(83)-acd26(31)
      acd26(84)=-acd26(29)*acd26(83)
      acd26(85)=acd26(26)*acd26(27)
      acd26(85)=acd26(85)-acd26(28)
      acd26(86)=-acd26(25)*acd26(85)
      acd26(87)=acd26(18)*acd26(19)
      acd26(74)=2.0_ki*acd26(87)+acd26(86)+acd26(84)+acd26(82)+acd26(81)+acd26(&
      &80)+acd26(79)+acd26(78)+acd26(76)+acd26(74)+acd26(75)
      acd26(74)=acd26(17)*acd26(74)
      acd26(75)=acd26(35)*acd26(45)
      acd26(76)=acd26(33)*acd26(44)
      acd26(78)=acd26(40)*acd26(21)
      acd26(79)=2.0_ki*acd26(41)
      acd26(80)=-acd26(3)*acd26(79)
      acd26(81)=acd26(47)*acd26(39)
      acd26(82)=acd26(46)*acd26(37)
      acd26(84)=acd26(16)*acd26(24)
      acd26(86)=acd26(15)*acd26(23)
      acd26(83)=-acd26(43)*acd26(83)
      acd26(85)=-acd26(42)*acd26(85)
      acd26(75)=acd26(85)+acd26(83)+acd26(86)+acd26(84)+acd26(82)+acd26(81)+acd&
      &26(80)+acd26(78)+acd26(75)+acd26(76)
      acd26(75)=acd26(18)*acd26(75)
      acd26(76)=acd26(63)*acd26(65)
      acd26(78)=acd26(48)*acd26(49)
      acd26(80)=acd26(64)*acd26(61)
      acd26(81)=-acd26(16)*acd26(55)
      acd26(82)=acd26(15)*acd26(54)
      acd26(83)=acd26(27)*acd26(2)
      acd26(83)=acd26(83)-acd26(59)
      acd26(84)=-acd26(43)*acd26(83)
      acd26(76)=acd26(84)+acd26(82)+acd26(81)+acd26(80)+acd26(76)+acd26(78)
      acd26(76)=acd26(25)*acd26(76)
      acd26(78)=acd26(62)*acd26(63)
      acd26(80)=acd26(49)*acd26(52)
      acd26(81)=acd26(60)*acd26(61)
      acd26(82)=-acd26(12)*acd26(55)
      acd26(84)=acd26(10)*acd26(54)
      acd26(78)=acd26(84)+acd26(82)+acd26(81)+acd26(78)+acd26(80)
      acd26(78)=acd26(42)*acd26(78)
      acd26(80)=-acd26(53)*acd26(69)
      acd26(81)=acd26(47)*acd26(30)
      acd26(82)=-acd26(46)*acd26(66)
      acd26(84)=acd26(42)*acd26(57)
      acd26(80)=acd26(84)+acd26(82)+acd26(80)+acd26(81)
      acd26(80)=acd26(29)*acd26(80)
      acd26(81)=-acd26(46)*acd26(50)
      acd26(82)=-acd26(36)*acd26(53)
      acd26(84)=acd26(42)*acd26(38)
      acd26(81)=acd26(84)+acd26(81)+acd26(82)
      acd26(81)=acd26(26)*acd26(81)
      acd26(82)=-acd26(50)*acd26(69)
      acd26(84)=acd26(38)*acd26(30)
      acd26(85)=-acd26(36)*acd26(66)
      acd26(82)=acd26(85)+acd26(82)+acd26(84)
      acd26(82)=acd26(43)*acd26(82)
      acd26(84)=acd26(26)*acd26(47)
      acd26(85)=acd26(43)*acd26(57)
      acd26(84)=acd26(84)+acd26(85)
      acd26(84)=acd26(25)*acd26(84)
      acd26(80)=acd26(84)+acd26(80)+acd26(82)+acd26(81)
      acd26(80)=acd26(58)*acd26(80)
      acd26(81)=-acd26(5)*acd26(77)
      acd26(82)=acd26(20)-acd26(14)
      acd26(84)=-acd26(11)*acd26(82)
      acd26(85)=-acd26(38)*acd26(56)
      acd26(86)=acd26(36)*acd26(55)
      acd26(81)=acd26(86)+acd26(85)+acd26(81)+acd26(84)
      acd26(81)=acd26(15)*acd26(81)
      acd26(84)=-acd26(5)*acd26(79)
      acd26(85)=acd26(40)-acd26(9)
      acd26(86)=-acd26(11)*acd26(85)
      acd26(87)=-acd26(47)*acd26(56)
      acd26(88)=acd26(46)*acd26(55)
      acd26(84)=acd26(88)+acd26(87)+acd26(84)+acd26(86)
      acd26(84)=acd26(10)*acd26(84)
      acd26(86)=acd26(53)*acd26(70)
      acd26(87)=acd26(47)*acd26(68)
      acd26(88)=acd26(46)*acd26(67)
      acd26(83)=-acd26(42)*acd26(83)
      acd26(83)=acd26(83)+acd26(88)+acd26(86)+acd26(87)
      acd26(83)=acd26(29)*acd26(83)
      acd26(86)=-acd26(7)*acd26(6)
      acd26(87)=-acd26(5)*acd26(4)
      acd26(88)=-acd26(2)*acd26(3)
      acd26(86)=acd26(88)+acd26(87)+acd26(8)+acd26(86)
      acd26(86)=acd26(1)*acd26(86)
      acd26(77)=-acd26(7)*acd26(77)
      acd26(82)=-acd26(13)*acd26(82)
      acd26(87)=acd26(50)*acd26(56)
      acd26(77)=acd26(87)+acd26(77)+acd26(82)
      acd26(77)=acd26(16)*acd26(77)
      acd26(79)=-acd26(7)*acd26(79)
      acd26(82)=-acd26(13)*acd26(85)
      acd26(85)=acd26(53)*acd26(56)
      acd26(79)=acd26(85)+acd26(79)+acd26(82)
      acd26(79)=acd26(12)*acd26(79)
      acd26(82)=acd26(50)*acd26(70)
      acd26(85)=acd26(38)*acd26(68)
      acd26(87)=acd26(36)*acd26(67)
      acd26(82)=acd26(87)+acd26(82)+acd26(85)
      acd26(82)=acd26(43)*acd26(82)
      acd26(85)=acd26(38)*acd26(72)
      acd26(87)=acd26(36)*acd26(71)
      acd26(85)=acd26(87)+acd26(85)
      acd26(85)=acd26(64)*acd26(85)
      acd26(87)=acd26(47)*acd26(72)
      acd26(88)=acd26(46)*acd26(71)
      acd26(87)=acd26(88)+acd26(87)
      acd26(87)=acd26(60)*acd26(87)
      acd26(88)=acd26(62)*acd26(73)
      acd26(89)=acd26(51)*acd26(52)
      acd26(88)=acd26(88)+acd26(89)
      acd26(88)=acd26(53)*acd26(88)
      acd26(89)=acd26(65)*acd26(73)
      acd26(90)=acd26(48)*acd26(51)
      acd26(89)=acd26(89)+acd26(90)
      acd26(89)=acd26(50)*acd26(89)
      brack=acd26(74)+acd26(75)+acd26(76)+acd26(77)+acd26(78)+acd26(79)+acd26(8&
      &0)+acd26(81)+acd26(82)+acd26(83)+acd26(84)+acd26(85)+2.0_ki*acd26(86)+ac&
      &d26(87)+acd26(88)+acd26(89)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p5_csbar_epnebbbar_model
      use p5_csbar_epnebbbar_kinematics
      use p5_csbar_epnebbbar_color
      use p5_csbar_epnebbbar_abbrevd26h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(38) :: acd26
      complex(ki) :: brack
      acd26(1)=d(iv1,iv2)
      acd26(2)=k2(iv3)
      acd26(3)=abb26(33)
      acd26(4)=spvak2k3(iv3)
      acd26(5)=abb26(26)
      acd26(6)=spval6k3(iv3)
      acd26(7)=abb26(9)
      acd26(8)=d(iv1,iv3)
      acd26(9)=k2(iv2)
      acd26(10)=spvak2k3(iv2)
      acd26(11)=spval6k3(iv2)
      acd26(12)=d(iv2,iv3)
      acd26(13)=k2(iv1)
      acd26(14)=spvak2k3(iv1)
      acd26(15)=spval6k3(iv1)
      acd26(16)=spvak2k1(iv2)
      acd26(17)=spvak4k3(iv3)
      acd26(18)=abb26(11)
      acd26(19)=spvak2k1(iv3)
      acd26(20)=spvak4k3(iv2)
      acd26(21)=spvak2k1(iv1)
      acd26(22)=spvak4k3(iv1)
      acd26(23)=spval6l5(iv3)
      acd26(24)=abb26(15)
      acd26(25)=spval6l5(iv2)
      acd26(26)=spval6l5(iv1)
      acd26(27)=spvak2l5(iv2)
      acd26(28)=spval6k1(iv3)
      acd26(29)=spvak2l5(iv3)
      acd26(30)=spval6k1(iv2)
      acd26(31)=spvak2l5(iv1)
      acd26(32)=spval6k1(iv1)
      acd26(33)=-acd26(29)*acd26(30)
      acd26(34)=-acd26(27)*acd26(28)
      acd26(35)=acd26(19)*acd26(25)
      acd26(36)=acd26(16)*acd26(23)
      acd26(33)=acd26(36)+acd26(35)+acd26(33)+acd26(34)
      acd26(33)=acd26(22)*acd26(33)
      acd26(34)=-acd26(29)*acd26(32)
      acd26(35)=-acd26(28)*acd26(31)
      acd26(36)=acd26(21)*acd26(23)
      acd26(37)=acd26(19)*acd26(26)
      acd26(34)=acd26(37)+acd26(36)+acd26(34)+acd26(35)
      acd26(34)=acd26(20)*acd26(34)
      acd26(35)=-acd26(30)*acd26(31)
      acd26(36)=-acd26(27)*acd26(32)
      acd26(37)=acd26(21)*acd26(25)
      acd26(38)=acd26(16)*acd26(26)
      acd26(35)=acd26(38)+acd26(37)+acd26(35)+acd26(36)
      acd26(35)=acd26(17)*acd26(35)
      acd26(33)=acd26(35)+acd26(33)+acd26(34)
      acd26(33)=acd26(24)*acd26(33)
      acd26(34)=-acd26(7)*acd26(6)
      acd26(35)=-acd26(5)*acd26(4)
      acd26(36)=-acd26(2)*acd26(3)
      acd26(34)=acd26(36)+acd26(34)+acd26(35)
      acd26(34)=acd26(1)*acd26(34)
      acd26(35)=-acd26(12)*acd26(15)
      acd26(36)=-acd26(8)*acd26(11)
      acd26(35)=acd26(35)+acd26(36)
      acd26(35)=acd26(7)*acd26(35)
      acd26(36)=-acd26(12)*acd26(14)
      acd26(37)=-acd26(8)*acd26(10)
      acd26(36)=acd26(36)+acd26(37)
      acd26(36)=acd26(5)*acd26(36)
      acd26(37)=-acd26(12)*acd26(13)
      acd26(38)=-acd26(8)*acd26(9)
      acd26(37)=acd26(37)+acd26(38)
      acd26(37)=acd26(3)*acd26(37)
      acd26(34)=acd26(34)+acd26(37)+acd26(35)+acd26(36)
      acd26(35)=-acd26(19)*acd26(9)
      acd26(36)=-acd26(16)*acd26(2)
      acd26(35)=acd26(35)+acd26(36)
      acd26(35)=acd26(22)*acd26(35)
      acd26(36)=-acd26(21)*acd26(2)
      acd26(37)=-acd26(19)*acd26(13)
      acd26(36)=acd26(36)+acd26(37)
      acd26(36)=acd26(20)*acd26(36)
      acd26(37)=-acd26(21)*acd26(9)
      acd26(38)=-acd26(16)*acd26(13)
      acd26(37)=acd26(37)+acd26(38)
      acd26(37)=acd26(17)*acd26(37)
      acd26(35)=acd26(37)+acd26(35)+acd26(36)
      acd26(35)=acd26(18)*acd26(35)
      brack=acd26(33)+2.0_ki*acd26(34)+acd26(35)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p5_csbar_epnebbbar_globalsl1, only: epspow
      use p5_csbar_epnebbbar_kinematics
      use p5_csbar_epnebbbar_abbrevd26h1
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
!---#[ subroutine reconstruct_d26:
   subroutine     reconstruct_d26(coeffs)
      use p5_csbar_epnebbbar_groups, only: tensrec_info_group4
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group4), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_26:
      coeffs%coeffs_26%c0 = derivative(czip)
      coeffs%coeffs_26%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_26%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_26%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_26%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_26%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_26%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_26%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_26%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_26%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_26%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_26%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_26%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_26%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_26%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_26%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_26%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_26%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_26%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_26%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_26%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_26%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_26%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_26%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_26%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_26%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_26%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_26%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_26%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_26%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_26%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_26%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_26%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_26%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_26%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_26:
   end subroutine reconstruct_d26
!---#] subroutine reconstruct_d26:
end module     p5_csbar_epnebbbar_d26h1l1d
