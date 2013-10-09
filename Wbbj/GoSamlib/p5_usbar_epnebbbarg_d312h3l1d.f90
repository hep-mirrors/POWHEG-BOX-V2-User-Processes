module     p5_usbar_epnebbbarg_d312h3l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity3d312h3l1d.f90
   ! generator: buildfortran_d.py
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d312
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd312h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(86) :: acd312
      complex(ki) :: brack
      acd312(1)=dotproduct(k1,qshift)
      acd312(2)=dotproduct(e7,qshift)
      acd312(3)=abb312(108)
      acd312(4)=dotproduct(qshift,spvak2k1)
      acd312(5)=abb312(10)
      acd312(6)=dotproduct(qshift,spvak2l6)
      acd312(7)=abb312(42)
      acd312(8)=dotproduct(qshift,spvak4k1)
      acd312(9)=abb312(88)
      acd312(10)=dotproduct(qshift,spvak4l6)
      acd312(11)=abb312(80)
      acd312(12)=abb312(40)
      acd312(13)=dotproduct(k2,qshift)
      acd312(14)=abb312(13)
      acd312(15)=abb312(39)
      acd312(16)=abb312(78)
      acd312(17)=abb312(85)
      acd312(18)=dotproduct(qshift,spvae7k1)
      acd312(19)=abb312(55)
      acd312(20)=abb312(28)
      acd312(21)=dotproduct(l6,qshift)
      acd312(22)=abb312(112)
      acd312(23)=abb312(106)
      acd312(24)=dotproduct(qshift,qshift)
      acd312(25)=dotproduct(qshift,spvak2l5)
      acd312(26)=abb312(15)
      acd312(27)=abb312(9)
      acd312(28)=abb312(30)
      acd312(29)=abb312(103)
      acd312(30)=abb312(75)
      acd312(31)=abb312(79)
      acd312(32)=dotproduct(qshift,spval6k1)
      acd312(33)=abb312(72)
      acd312(34)=abb312(24)
      acd312(35)=abb312(16)
      acd312(36)=abb312(56)
      acd312(37)=abb312(90)
      acd312(38)=abb312(87)
      acd312(39)=abb312(32)
      acd312(40)=abb312(11)
      acd312(41)=abb312(14)
      acd312(42)=abb312(18)
      acd312(43)=dotproduct(qshift,spvak2e7)
      acd312(44)=abb312(17)
      acd312(45)=abb312(12)
      acd312(46)=abb312(47)
      acd312(47)=abb312(48)
      acd312(48)=abb312(62)
      acd312(49)=abb312(73)
      acd312(50)=abb312(77)
      acd312(51)=abb312(58)
      acd312(52)=dotproduct(qshift,spvak2k7)
      acd312(53)=abb312(43)
      acd312(54)=abb312(54)
      acd312(55)=abb312(23)
      acd312(56)=abb312(63)
      acd312(57)=dotproduct(qshift,spvak1l6)
      acd312(58)=abb312(20)
      acd312(59)=dotproduct(qshift,spvak7k1)
      acd312(60)=abb312(64)
      acd312(61)=abb312(52)
      acd312(62)=abb312(41)
      acd312(63)=abb312(67)
      acd312(64)=dotproduct(qshift,spvak7l6)
      acd312(65)=abb312(60)
      acd312(66)=dotproduct(qshift,spvae7l6)
      acd312(67)=abb312(26)
      acd312(68)=abb312(19)
      acd312(69)=-acd312(24)-acd312(21)
      acd312(69)=acd312(22)*acd312(69)
      acd312(70)=acd312(32)*acd312(33)
      acd312(71)=acd312(10)*acd312(31)
      acd312(72)=acd312(1)*acd312(3)
      acd312(73)=acd312(6)*acd312(28)
      acd312(74)=-acd312(25)*acd312(29)
      acd312(74)=acd312(30)+acd312(74)
      acd312(74)=acd312(8)*acd312(74)
      acd312(75)=-acd312(25)*acd312(26)
      acd312(75)=acd312(27)+acd312(75)
      acd312(75)=acd312(4)*acd312(75)
      acd312(69)=acd312(75)+acd312(74)+acd312(73)+acd312(72)+acd312(71)-acd312(&
      &34)+acd312(70)+acd312(69)
      acd312(69)=acd312(2)*acd312(69)
      acd312(70)=acd312(1)-acd312(21)
      acd312(71)=acd312(5)*acd312(70)
      acd312(72)=acd312(43)*acd312(44)
      acd312(73)=acd312(18)*acd312(41)
      acd312(74)=acd312(13)*acd312(14)
      acd312(75)=acd312(25)*acd312(42)
      acd312(76)=-acd312(24)*acd312(35)
      acd312(71)=acd312(76)+acd312(75)+acd312(74)+acd312(73)-acd312(45)+acd312(&
      &72)+acd312(71)
      acd312(71)=acd312(4)*acd312(71)
      acd312(72)=-acd312(7)*acd312(70)
      acd312(73)=acd312(18)*acd312(46)
      acd312(74)=acd312(13)*acd312(15)
      acd312(75)=-acd312(24)*acd312(36)
      acd312(72)=acd312(75)+acd312(74)+acd312(73)-acd312(47)+acd312(72)
      acd312(72)=acd312(6)*acd312(72)
      acd312(70)=acd312(9)*acd312(70)
      acd312(73)=acd312(13)*acd312(16)
      acd312(74)=acd312(25)*acd312(48)
      acd312(75)=-acd312(24)*acd312(37)
      acd312(70)=acd312(75)+acd312(74)+acd312(73)-acd312(49)+acd312(70)
      acd312(70)=acd312(8)*acd312(70)
      acd312(73)=acd312(21)*acd312(11)
      acd312(74)=acd312(13)*acd312(17)
      acd312(73)=acd312(74)-acd312(50)+acd312(73)
      acd312(73)=acd312(10)*acd312(73)
      acd312(74)=-acd312(10)*acd312(38)
      acd312(75)=-acd312(25)*acd312(39)
      acd312(74)=acd312(75)+acd312(40)+acd312(74)
      acd312(74)=acd312(24)*acd312(74)
      acd312(75)=-acd312(66)*acd312(67)
      acd312(76)=-acd312(64)*acd312(65)
      acd312(77)=-acd312(57)*acd312(58)
      acd312(78)=-acd312(59)*acd312(63)
      acd312(79)=-acd312(52)*acd312(62)
      acd312(80)=-acd312(32)*acd312(56)
      acd312(81)=acd312(59)*acd312(60)
      acd312(81)=-acd312(61)+acd312(81)
      acd312(81)=acd312(43)*acd312(81)
      acd312(82)=-acd312(21)*acd312(23)
      acd312(83)=acd312(52)*acd312(53)
      acd312(83)=-acd312(54)+acd312(83)
      acd312(83)=acd312(18)*acd312(83)
      acd312(84)=acd312(18)*acd312(19)
      acd312(84)=-acd312(20)+acd312(84)
      acd312(84)=acd312(13)*acd312(84)
      acd312(85)=-acd312(10)*acd312(11)
      acd312(85)=-acd312(12)+acd312(85)
      acd312(85)=acd312(1)*acd312(85)
      acd312(86)=acd312(18)*acd312(51)
      acd312(86)=-acd312(55)+acd312(86)
      acd312(86)=acd312(25)*acd312(86)
      brack=acd312(68)+acd312(69)+acd312(70)+acd312(71)+acd312(72)+acd312(73)+a&
      &cd312(74)+acd312(75)+acd312(76)+acd312(77)+acd312(78)+acd312(79)+acd312(&
      &80)+acd312(81)+acd312(82)+acd312(83)+acd312(84)+acd312(85)+acd312(86)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd312h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(105) :: acd312
      complex(ki) :: brack
      acd312(1)=k1(iv1)
      acd312(2)=dotproduct(e7,qshift)
      acd312(3)=abb312(108)
      acd312(4)=dotproduct(qshift,spvak2k1)
      acd312(5)=abb312(10)
      acd312(6)=dotproduct(qshift,spvak2l6)
      acd312(7)=abb312(42)
      acd312(8)=dotproduct(qshift,spvak4k1)
      acd312(9)=abb312(88)
      acd312(10)=dotproduct(qshift,spvak4l6)
      acd312(11)=abb312(80)
      acd312(12)=abb312(40)
      acd312(13)=k2(iv1)
      acd312(14)=abb312(13)
      acd312(15)=abb312(39)
      acd312(16)=abb312(78)
      acd312(17)=abb312(85)
      acd312(18)=dotproduct(qshift,spvae7k1)
      acd312(19)=abb312(55)
      acd312(20)=abb312(28)
      acd312(21)=l6(iv1)
      acd312(22)=abb312(112)
      acd312(23)=abb312(106)
      acd312(24)=e7(iv1)
      acd312(25)=dotproduct(k1,qshift)
      acd312(26)=dotproduct(l6,qshift)
      acd312(27)=dotproduct(qshift,qshift)
      acd312(28)=dotproduct(qshift,spvak2l5)
      acd312(29)=abb312(15)
      acd312(30)=abb312(9)
      acd312(31)=abb312(30)
      acd312(32)=abb312(103)
      acd312(33)=abb312(75)
      acd312(34)=abb312(79)
      acd312(35)=dotproduct(qshift,spval6k1)
      acd312(36)=abb312(72)
      acd312(37)=abb312(24)
      acd312(38)=qshift(iv1)
      acd312(39)=abb312(16)
      acd312(40)=abb312(56)
      acd312(41)=abb312(90)
      acd312(42)=abb312(87)
      acd312(43)=abb312(32)
      acd312(44)=abb312(11)
      acd312(45)=spvak2k1(iv1)
      acd312(46)=dotproduct(k2,qshift)
      acd312(47)=abb312(14)
      acd312(48)=abb312(18)
      acd312(49)=dotproduct(qshift,spvak2e7)
      acd312(50)=abb312(17)
      acd312(51)=abb312(12)
      acd312(52)=spvak2l6(iv1)
      acd312(53)=abb312(47)
      acd312(54)=abb312(48)
      acd312(55)=spvak4k1(iv1)
      acd312(56)=abb312(62)
      acd312(57)=abb312(73)
      acd312(58)=spvak4l6(iv1)
      acd312(59)=abb312(77)
      acd312(60)=spvae7k1(iv1)
      acd312(61)=abb312(58)
      acd312(62)=dotproduct(qshift,spvak2k7)
      acd312(63)=abb312(43)
      acd312(64)=abb312(54)
      acd312(65)=spvak2l5(iv1)
      acd312(66)=abb312(23)
      acd312(67)=spval6k1(iv1)
      acd312(68)=abb312(63)
      acd312(69)=spvak1l6(iv1)
      acd312(70)=abb312(20)
      acd312(71)=spvak2e7(iv1)
      acd312(72)=dotproduct(qshift,spvak7k1)
      acd312(73)=abb312(64)
      acd312(74)=abb312(52)
      acd312(75)=spvak2k7(iv1)
      acd312(76)=abb312(41)
      acd312(77)=spvak7k1(iv1)
      acd312(78)=abb312(67)
      acd312(79)=spvak7l6(iv1)
      acd312(80)=abb312(60)
      acd312(81)=spvae7l6(iv1)
      acd312(82)=abb312(26)
      acd312(83)=acd312(8)*acd312(32)
      acd312(84)=acd312(4)*acd312(29)
      acd312(83)=acd312(84)+acd312(83)
      acd312(83)=acd312(65)*acd312(83)
      acd312(84)=2.0_ki*acd312(38)
      acd312(85)=acd312(84)+acd312(21)
      acd312(85)=acd312(22)*acd312(85)
      acd312(86)=acd312(28)*acd312(32)
      acd312(86)=acd312(86)-acd312(33)
      acd312(87)=acd312(55)*acd312(86)
      acd312(88)=-acd312(36)*acd312(67)
      acd312(89)=-acd312(58)*acd312(34)
      acd312(90)=-acd312(1)*acd312(3)
      acd312(91)=-acd312(52)*acd312(31)
      acd312(92)=acd312(28)*acd312(29)
      acd312(92)=acd312(92)-acd312(30)
      acd312(93)=acd312(45)*acd312(92)
      acd312(83)=acd312(93)+acd312(91)+acd312(90)+acd312(88)+acd312(89)+acd312(&
      &87)+acd312(83)+acd312(85)
      acd312(83)=acd312(2)*acd312(83)
      acd312(85)=acd312(27)+acd312(26)
      acd312(85)=acd312(22)*acd312(85)
      acd312(87)=-acd312(36)*acd312(35)
      acd312(88)=-acd312(25)*acd312(3)
      acd312(89)=-acd312(10)*acd312(34)
      acd312(90)=-acd312(6)*acd312(31)
      acd312(86)=acd312(8)*acd312(86)
      acd312(91)=acd312(4)*acd312(92)
      acd312(85)=acd312(91)+acd312(86)+acd312(90)+acd312(89)+acd312(88)+acd312(&
      &37)+acd312(87)+acd312(85)
      acd312(85)=acd312(24)*acd312(85)
      acd312(86)=acd312(25)-acd312(26)
      acd312(87)=-acd312(5)*acd312(86)
      acd312(88)=-acd312(49)*acd312(50)
      acd312(89)=-acd312(46)*acd312(14)
      acd312(90)=-acd312(18)*acd312(47)
      acd312(91)=acd312(27)*acd312(39)
      acd312(92)=-acd312(28)*acd312(48)
      acd312(87)=acd312(92)+acd312(91)+acd312(90)+acd312(89)+acd312(51)+acd312(&
      &88)+acd312(87)
      acd312(87)=acd312(45)*acd312(87)
      acd312(88)=acd312(1)-acd312(21)
      acd312(89)=-acd312(5)*acd312(88)
      acd312(90)=-acd312(71)*acd312(50)
      acd312(91)=-acd312(60)*acd312(47)
      acd312(92)=-acd312(13)*acd312(14)
      acd312(93)=-acd312(65)*acd312(48)
      acd312(94)=acd312(39)*acd312(84)
      acd312(89)=acd312(94)+acd312(93)+acd312(92)+acd312(90)+acd312(91)+acd312(&
      &89)
      acd312(89)=acd312(4)*acd312(89)
      acd312(90)=acd312(7)*acd312(86)
      acd312(91)=-acd312(46)*acd312(15)
      acd312(92)=-acd312(18)*acd312(53)
      acd312(93)=acd312(27)*acd312(40)
      acd312(90)=acd312(93)+acd312(92)+acd312(54)+acd312(91)+acd312(90)
      acd312(90)=acd312(52)*acd312(90)
      acd312(88)=-acd312(9)*acd312(88)
      acd312(91)=-acd312(13)*acd312(16)
      acd312(92)=-acd312(65)*acd312(56)
      acd312(93)=acd312(41)*acd312(84)
      acd312(88)=acd312(93)+acd312(92)+acd312(91)+acd312(88)
      acd312(88)=acd312(8)*acd312(88)
      acd312(91)=acd312(11)*acd312(86)
      acd312(92)=-acd312(46)*acd312(17)
      acd312(93)=acd312(27)*acd312(42)
      acd312(91)=acd312(93)+acd312(59)+acd312(92)+acd312(91)
      acd312(91)=acd312(58)*acd312(91)
      acd312(92)=-acd312(60)*acd312(53)
      acd312(93)=-acd312(21)*acd312(7)
      acd312(94)=-acd312(13)*acd312(15)
      acd312(92)=acd312(94)+acd312(92)+acd312(93)
      acd312(92)=acd312(6)*acd312(92)
      acd312(86)=-acd312(9)*acd312(86)
      acd312(93)=-acd312(46)*acd312(16)
      acd312(94)=acd312(27)*acd312(41)
      acd312(86)=acd312(94)+acd312(57)+acd312(93)+acd312(86)
      acd312(86)=acd312(55)*acd312(86)
      acd312(93)=-acd312(60)*acd312(61)
      acd312(94)=acd312(43)*acd312(84)
      acd312(95)=-acd312(55)*acd312(56)
      acd312(93)=acd312(95)+acd312(93)+acd312(94)
      acd312(93)=acd312(28)*acd312(93)
      acd312(94)=-acd312(63)*acd312(62)
      acd312(95)=-acd312(46)*acd312(19)
      acd312(94)=acd312(95)+acd312(64)+acd312(94)
      acd312(94)=acd312(60)*acd312(94)
      acd312(95)=-acd312(18)*acd312(19)
      acd312(96)=-acd312(10)*acd312(17)
      acd312(95)=acd312(96)+acd312(20)+acd312(95)
      acd312(95)=acd312(13)*acd312(95)
      acd312(96)=acd312(10)*acd312(11)
      acd312(97)=acd312(6)*acd312(7)
      acd312(97)=acd312(97)+acd312(12)+acd312(96)
      acd312(97)=acd312(1)*acd312(97)
      acd312(98)=-acd312(18)*acd312(61)
      acd312(99)=acd312(27)*acd312(43)
      acd312(98)=acd312(99)+acd312(66)+acd312(98)
      acd312(98)=acd312(65)*acd312(98)
      acd312(99)=acd312(10)*acd312(42)
      acd312(100)=acd312(6)*acd312(40)
      acd312(99)=acd312(100)-acd312(44)+acd312(99)
      acd312(84)=acd312(99)*acd312(84)
      acd312(99)=-acd312(49)*acd312(73)
      acd312(99)=acd312(99)+acd312(78)
      acd312(99)=acd312(77)*acd312(99)
      acd312(100)=-acd312(18)*acd312(63)
      acd312(100)=acd312(100)+acd312(76)
      acd312(100)=acd312(75)*acd312(100)
      acd312(101)=acd312(81)*acd312(82)
      acd312(102)=acd312(79)*acd312(80)
      acd312(103)=acd312(69)*acd312(70)
      acd312(104)=acd312(67)*acd312(68)
      acd312(105)=-acd312(73)*acd312(72)
      acd312(105)=acd312(74)+acd312(105)
      acd312(105)=acd312(71)*acd312(105)
      acd312(96)=acd312(23)-acd312(96)
      acd312(96)=acd312(21)*acd312(96)
      brack=acd312(83)+acd312(84)+acd312(85)+acd312(86)+acd312(87)+acd312(88)+a&
      &cd312(89)+acd312(90)+acd312(91)+acd312(92)+acd312(93)+acd312(94)+acd312(&
      &95)+acd312(96)+acd312(97)+acd312(98)+acd312(99)+acd312(100)+acd312(101)+&
      &acd312(102)+acd312(103)+acd312(104)+acd312(105)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd312h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(86) :: acd312
      complex(ki) :: brack
      acd312(1)=d(iv1,iv2)
      acd312(2)=dotproduct(e7,qshift)
      acd312(3)=abb312(112)
      acd312(4)=dotproduct(qshift,spvak2k1)
      acd312(5)=abb312(16)
      acd312(6)=dotproduct(qshift,spvak2l5)
      acd312(7)=abb312(32)
      acd312(8)=dotproduct(qshift,spvak2l6)
      acd312(9)=abb312(56)
      acd312(10)=dotproduct(qshift,spvak4k1)
      acd312(11)=abb312(90)
      acd312(12)=dotproduct(qshift,spvak4l6)
      acd312(13)=abb312(87)
      acd312(14)=abb312(11)
      acd312(15)=k1(iv1)
      acd312(16)=e7(iv2)
      acd312(17)=abb312(108)
      acd312(18)=spvak2k1(iv2)
      acd312(19)=abb312(10)
      acd312(20)=spvak2l6(iv2)
      acd312(21)=abb312(42)
      acd312(22)=spvak4k1(iv2)
      acd312(23)=abb312(88)
      acd312(24)=spvak4l6(iv2)
      acd312(25)=abb312(80)
      acd312(26)=k1(iv2)
      acd312(27)=e7(iv1)
      acd312(28)=spvak2k1(iv1)
      acd312(29)=spvak2l6(iv1)
      acd312(30)=spvak4k1(iv1)
      acd312(31)=spvak4l6(iv1)
      acd312(32)=k2(iv1)
      acd312(33)=abb312(13)
      acd312(34)=abb312(39)
      acd312(35)=abb312(78)
      acd312(36)=abb312(85)
      acd312(37)=spvae7k1(iv2)
      acd312(38)=abb312(55)
      acd312(39)=k2(iv2)
      acd312(40)=spvae7k1(iv1)
      acd312(41)=l6(iv1)
      acd312(42)=l6(iv2)
      acd312(43)=qshift(iv2)
      acd312(44)=abb312(15)
      acd312(45)=abb312(9)
      acd312(46)=spvak2l5(iv2)
      acd312(47)=abb312(103)
      acd312(48)=abb312(30)
      acd312(49)=abb312(75)
      acd312(50)=abb312(79)
      acd312(51)=spval6k1(iv2)
      acd312(52)=abb312(72)
      acd312(53)=qshift(iv1)
      acd312(54)=spvak2l5(iv1)
      acd312(55)=spval6k1(iv1)
      acd312(56)=abb312(18)
      acd312(57)=abb312(14)
      acd312(58)=spvak2e7(iv2)
      acd312(59)=abb312(17)
      acd312(60)=spvak2e7(iv1)
      acd312(61)=abb312(62)
      acd312(62)=abb312(58)
      acd312(63)=abb312(47)
      acd312(64)=spvak2k7(iv2)
      acd312(65)=abb312(43)
      acd312(66)=spvak2k7(iv1)
      acd312(67)=spvak7k1(iv2)
      acd312(68)=abb312(64)
      acd312(69)=spvak7k1(iv1)
      acd312(70)=acd312(47)*acd312(10)
      acd312(71)=acd312(44)*acd312(4)
      acd312(70)=acd312(70)+acd312(71)
      acd312(71)=-acd312(46)*acd312(70)
      acd312(72)=2.0_ki*acd312(43)
      acd312(73)=-acd312(72)-acd312(42)
      acd312(73)=acd312(3)*acd312(73)
      acd312(74)=acd312(52)*acd312(51)
      acd312(75)=acd312(26)*acd312(17)
      acd312(76)=acd312(24)*acd312(50)
      acd312(77)=acd312(20)*acd312(48)
      acd312(78)=acd312(47)*acd312(6)
      acd312(78)=acd312(78)-acd312(49)
      acd312(79)=-acd312(22)*acd312(78)
      acd312(80)=acd312(44)*acd312(6)
      acd312(80)=acd312(80)-acd312(45)
      acd312(81)=-acd312(18)*acd312(80)
      acd312(71)=acd312(81)+acd312(79)+acd312(71)+acd312(77)+acd312(76)+acd312(&
      &74)+acd312(75)+acd312(73)
      acd312(71)=acd312(27)*acd312(71)
      acd312(70)=-acd312(54)*acd312(70)
      acd312(73)=2.0_ki*acd312(53)
      acd312(74)=-acd312(73)-acd312(41)
      acd312(74)=acd312(3)*acd312(74)
      acd312(75)=acd312(52)*acd312(55)
      acd312(76)=acd312(31)*acd312(50)
      acd312(77)=acd312(15)*acd312(17)
      acd312(79)=acd312(29)*acd312(48)
      acd312(78)=-acd312(30)*acd312(78)
      acd312(80)=-acd312(28)*acd312(80)
      acd312(70)=acd312(80)+acd312(78)+acd312(70)+acd312(79)+acd312(77)+acd312(&
      &75)+acd312(76)+acd312(74)
      acd312(70)=acd312(16)*acd312(70)
      acd312(74)=-acd312(13)*acd312(12)
      acd312(75)=-acd312(10)*acd312(11)
      acd312(76)=-acd312(9)*acd312(8)
      acd312(77)=-acd312(4)*acd312(5)
      acd312(78)=-acd312(6)*acd312(7)
      acd312(79)=-acd312(2)*acd312(3)
      acd312(74)=acd312(79)+acd312(78)+acd312(77)+acd312(76)+acd312(75)+acd312(&
      &14)+acd312(74)
      acd312(74)=acd312(1)*acd312(74)
      acd312(75)=acd312(26)-acd312(42)
      acd312(76)=acd312(19)*acd312(75)
      acd312(77)=acd312(58)*acd312(59)
      acd312(78)=acd312(39)*acd312(33)
      acd312(79)=acd312(37)*acd312(57)
      acd312(80)=-acd312(5)*acd312(72)
      acd312(81)=acd312(44)*acd312(2)
      acd312(81)=acd312(81)-acd312(56)
      acd312(82)=-acd312(46)*acd312(81)
      acd312(76)=acd312(82)+acd312(80)+acd312(79)+acd312(78)+acd312(77)+acd312(&
      &76)
      acd312(76)=acd312(28)*acd312(76)
      acd312(77)=acd312(15)-acd312(41)
      acd312(78)=acd312(19)*acd312(77)
      acd312(79)=acd312(59)*acd312(60)
      acd312(80)=acd312(40)*acd312(57)
      acd312(82)=acd312(32)*acd312(33)
      acd312(83)=-acd312(5)*acd312(73)
      acd312(81)=-acd312(54)*acd312(81)
      acd312(78)=acd312(81)+acd312(83)+acd312(82)+acd312(80)+acd312(79)+acd312(&
      &78)
      acd312(78)=acd312(18)*acd312(78)
      acd312(79)=-acd312(21)*acd312(75)
      acd312(80)=acd312(39)*acd312(34)
      acd312(81)=acd312(37)*acd312(63)
      acd312(82)=-acd312(9)*acd312(72)
      acd312(79)=acd312(82)+acd312(81)+acd312(80)+acd312(79)
      acd312(79)=acd312(29)*acd312(79)
      acd312(80)=-acd312(21)*acd312(77)
      acd312(81)=acd312(40)*acd312(63)
      acd312(82)=acd312(32)*acd312(34)
      acd312(83)=-acd312(9)*acd312(73)
      acd312(80)=acd312(83)+acd312(82)+acd312(81)+acd312(80)
      acd312(80)=acd312(20)*acd312(80)
      acd312(81)=acd312(23)*acd312(75)
      acd312(82)=acd312(39)*acd312(35)
      acd312(83)=-acd312(11)*acd312(72)
      acd312(84)=acd312(47)*acd312(2)
      acd312(84)=acd312(84)-acd312(61)
      acd312(85)=-acd312(46)*acd312(84)
      acd312(81)=acd312(85)+acd312(83)+acd312(82)+acd312(81)
      acd312(81)=acd312(30)*acd312(81)
      acd312(82)=acd312(23)*acd312(77)
      acd312(83)=acd312(32)*acd312(35)
      acd312(85)=-acd312(11)*acd312(73)
      acd312(84)=-acd312(54)*acd312(84)
      acd312(82)=acd312(84)+acd312(85)+acd312(83)+acd312(82)
      acd312(82)=acd312(22)*acd312(82)
      acd312(75)=-acd312(25)*acd312(75)
      acd312(83)=acd312(39)*acd312(36)
      acd312(84)=-acd312(13)*acd312(72)
      acd312(75)=acd312(84)+acd312(83)+acd312(75)
      acd312(75)=acd312(31)*acd312(75)
      acd312(77)=-acd312(25)*acd312(77)
      acd312(83)=acd312(32)*acd312(36)
      acd312(84)=-acd312(13)*acd312(73)
      acd312(77)=acd312(84)+acd312(83)+acd312(77)
      acd312(77)=acd312(24)*acd312(77)
      acd312(83)=acd312(60)*acd312(67)
      acd312(84)=acd312(58)*acd312(69)
      acd312(83)=acd312(83)+acd312(84)
      acd312(83)=acd312(68)*acd312(83)
      acd312(84)=acd312(65)*acd312(64)
      acd312(85)=acd312(39)*acd312(38)
      acd312(84)=acd312(85)+acd312(84)
      acd312(84)=acd312(40)*acd312(84)
      acd312(85)=acd312(65)*acd312(66)
      acd312(86)=acd312(32)*acd312(38)
      acd312(85)=acd312(86)+acd312(85)
      acd312(85)=acd312(37)*acd312(85)
      acd312(86)=acd312(37)*acd312(62)
      acd312(72)=-acd312(7)*acd312(72)
      acd312(72)=acd312(86)+acd312(72)
      acd312(72)=acd312(54)*acd312(72)
      acd312(86)=acd312(40)*acd312(62)
      acd312(73)=-acd312(7)*acd312(73)
      acd312(73)=acd312(86)+acd312(73)
      acd312(73)=acd312(46)*acd312(73)
      brack=acd312(70)+acd312(71)+acd312(72)+acd312(73)+2.0_ki*acd312(74)+acd31&
      &2(75)+acd312(76)+acd312(77)+acd312(78)+acd312(79)+acd312(80)+acd312(81)+&
      &acd312(82)+acd312(83)+acd312(84)+acd312(85)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd312h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(37) :: acd312
      complex(ki) :: brack
      acd312(1)=d(iv1,iv2)
      acd312(2)=e7(iv3)
      acd312(3)=abb312(112)
      acd312(4)=spvak2k1(iv3)
      acd312(5)=abb312(16)
      acd312(6)=spvak2l5(iv3)
      acd312(7)=abb312(32)
      acd312(8)=spvak2l6(iv3)
      acd312(9)=abb312(56)
      acd312(10)=spvak4k1(iv3)
      acd312(11)=abb312(90)
      acd312(12)=spvak4l6(iv3)
      acd312(13)=abb312(87)
      acd312(14)=d(iv1,iv3)
      acd312(15)=e7(iv2)
      acd312(16)=spvak2k1(iv2)
      acd312(17)=spvak2l5(iv2)
      acd312(18)=spvak2l6(iv2)
      acd312(19)=spvak4k1(iv2)
      acd312(20)=spvak4l6(iv2)
      acd312(21)=d(iv2,iv3)
      acd312(22)=e7(iv1)
      acd312(23)=spvak2k1(iv1)
      acd312(24)=spvak2l5(iv1)
      acd312(25)=spvak2l6(iv1)
      acd312(26)=spvak4k1(iv1)
      acd312(27)=spvak4l6(iv1)
      acd312(28)=abb312(15)
      acd312(29)=abb312(103)
      acd312(30)=acd312(13)*acd312(27)
      acd312(31)=acd312(11)*acd312(26)
      acd312(32)=acd312(9)*acd312(25)
      acd312(33)=acd312(5)*acd312(23)
      acd312(34)=acd312(24)*acd312(7)
      acd312(35)=acd312(22)*acd312(3)
      acd312(30)=acd312(35)+acd312(34)+acd312(33)+acd312(32)+acd312(30)+acd312(&
      &31)
      acd312(30)=acd312(21)*acd312(30)
      acd312(31)=acd312(13)*acd312(20)
      acd312(32)=acd312(11)*acd312(19)
      acd312(33)=acd312(9)*acd312(18)
      acd312(34)=acd312(5)*acd312(16)
      acd312(35)=acd312(17)*acd312(7)
      acd312(36)=acd312(15)*acd312(3)
      acd312(31)=acd312(36)+acd312(35)+acd312(34)+acd312(33)+acd312(31)+acd312(&
      &32)
      acd312(31)=acd312(14)*acd312(31)
      acd312(32)=acd312(13)*acd312(12)
      acd312(33)=acd312(10)*acd312(11)
      acd312(34)=acd312(9)*acd312(8)
      acd312(35)=acd312(4)*acd312(5)
      acd312(36)=acd312(6)*acd312(7)
      acd312(37)=acd312(2)*acd312(3)
      acd312(32)=acd312(37)+acd312(36)+acd312(35)+acd312(34)+acd312(32)+acd312(&
      &33)
      acd312(32)=acd312(1)*acd312(32)
      acd312(30)=acd312(32)+acd312(30)+acd312(31)
      acd312(31)=acd312(17)*acd312(22)
      acd312(32)=acd312(15)*acd312(24)
      acd312(31)=acd312(31)+acd312(32)
      acd312(32)=acd312(10)*acd312(31)
      acd312(33)=acd312(22)*acd312(19)
      acd312(34)=acd312(15)*acd312(26)
      acd312(33)=acd312(33)+acd312(34)
      acd312(33)=acd312(6)*acd312(33)
      acd312(34)=acd312(24)*acd312(19)
      acd312(35)=acd312(17)*acd312(26)
      acd312(34)=acd312(34)+acd312(35)
      acd312(34)=acd312(2)*acd312(34)
      acd312(32)=acd312(34)+acd312(33)+acd312(32)
      acd312(32)=acd312(29)*acd312(32)
      acd312(31)=acd312(4)*acd312(31)
      acd312(33)=acd312(22)*acd312(16)
      acd312(34)=acd312(15)*acd312(23)
      acd312(33)=acd312(33)+acd312(34)
      acd312(33)=acd312(6)*acd312(33)
      acd312(34)=acd312(24)*acd312(16)
      acd312(35)=acd312(17)*acd312(23)
      acd312(34)=acd312(34)+acd312(35)
      acd312(34)=acd312(2)*acd312(34)
      acd312(31)=acd312(34)+acd312(33)+acd312(31)
      acd312(31)=acd312(28)*acd312(31)
      brack=2.0_ki*acd312(30)+acd312(31)+acd312(32)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd312h3
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
      qshift = k7+k5
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
!---#[ subroutine reconstruct_d312:
   subroutine     reconstruct_d312(coeffs)
      use p5_usbar_epnebbbarg_groups, only: tensrec_info_group19
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group19), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_312:
      coeffs%coeffs_312%c0 = derivative(czip)
      coeffs%coeffs_312%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_312%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_312%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_312%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_312%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_312%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_312%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_312%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_312%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_312%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_312%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_312%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_312%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_312%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_312%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_312%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_312%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_312%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_312%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_312%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_312%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_312%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_312%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_312%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_312%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_312%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_312%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_312%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_312%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_312%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_312%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_312%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_312%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_312%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_312:
   end subroutine reconstruct_d312
!---#] subroutine reconstruct_d312:
end module     p5_usbar_epnebbbarg_d312h3l1d
